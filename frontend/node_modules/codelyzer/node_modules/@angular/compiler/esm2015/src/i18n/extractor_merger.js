/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import * as html from '../ml_parser/ast';
import { ParseTreeResult } from '../ml_parser/parser';
import * as i18n from './i18n_ast';
import { createI18nMessageFactory } from './i18n_parser';
import { I18nError } from './parse_util';
const _I18N_ATTR = 'i18n';
const _I18N_ATTR_PREFIX = 'i18n-';
const _I18N_COMMENT_PREFIX_REGEXP = /^i18n:?/;
const MEANING_SEPARATOR = '|';
const ID_SEPARATOR = '@@';
let i18nCommentsWarned = false;
/**
 * Extract translatable messages from an html AST
 */
export function extractMessages(nodes, interpolationConfig, implicitTags, implicitAttrs) {
    const visitor = new _Visitor(implicitTags, implicitAttrs);
    return visitor.extract(nodes, interpolationConfig);
}
export function mergeTranslations(nodes, translations, interpolationConfig, implicitTags, implicitAttrs) {
    const visitor = new _Visitor(implicitTags, implicitAttrs);
    return visitor.merge(nodes, translations, interpolationConfig);
}
export class ExtractionResult {
    constructor(messages, errors) {
        this.messages = messages;
        this.errors = errors;
    }
}
var _VisitorMode;
(function (_VisitorMode) {
    _VisitorMode[_VisitorMode["Extract"] = 0] = "Extract";
    _VisitorMode[_VisitorMode["Merge"] = 1] = "Merge";
})(_VisitorMode || (_VisitorMode = {}));
/**
 * This Visitor is used:
 * 1. to extract all the translatable strings from an html AST (see `extract()`),
 * 2. to replace the translatable strings with the actual translations (see `merge()`)
 *
 * @internal
 */
class _Visitor {
    constructor(_implicitTags, _implicitAttrs) {
        this._implicitTags = _implicitTags;
        this._implicitAttrs = _implicitAttrs;
    }
    /**
     * Extracts the messages from the tree
     */
    extract(nodes, interpolationConfig) {
        this._init(_VisitorMode.Extract, interpolationConfig);
        nodes.forEach(node => node.visit(this, null));
        if (this._inI18nBlock) {
            this._reportError(nodes[nodes.length - 1], 'Unclosed block');
        }
        return new ExtractionResult(this._messages, this._errors);
    }
    /**
     * Returns a tree where all translatable nodes are translated
     */
    merge(nodes, translations, interpolationConfig) {
        this._init(_VisitorMode.Merge, interpolationConfig);
        this._translations = translations;
        // Construct a single fake root element
        const wrapper = new html.Element('wrapper', [], nodes, undefined, undefined, undefined);
        const translatedNode = wrapper.visit(this, null);
        if (this._inI18nBlock) {
            this._reportError(nodes[nodes.length - 1], 'Unclosed block');
        }
        return new ParseTreeResult(translatedNode.children, this._errors);
    }
    visitExpansionCase(icuCase, context) {
        // Parse cases for translatable html attributes
        const expression = html.visitAll(this, icuCase.expression, context);
        if (this._mode === _VisitorMode.Merge) {
            return new html.ExpansionCase(icuCase.value, expression, icuCase.sourceSpan, icuCase.valueSourceSpan, icuCase.expSourceSpan);
        }
    }
    visitExpansion(icu, context) {
        this._mayBeAddBlockChildren(icu);
        const wasInIcu = this._inIcu;
        if (!this._inIcu) {
            // nested ICU messages should not be extracted but top-level translated as a whole
            if (this._isInTranslatableSection) {
                this._addMessage([icu]);
            }
            this._inIcu = true;
        }
        const cases = html.visitAll(this, icu.cases, context);
        if (this._mode === _VisitorMode.Merge) {
            icu = new html.Expansion(icu.switchValue, icu.type, cases, icu.sourceSpan, icu.switchValueSourceSpan);
        }
        this._inIcu = wasInIcu;
        return icu;
    }
    visitComment(comment, context) {
        const isOpening = _isOpeningComment(comment);
        if (isOpening && this._isInTranslatableSection) {
            this._reportError(comment, 'Could not start a block inside a translatable section');
            return;
        }
        const isClosing = _isClosingComment(comment);
        if (isClosing && !this._inI18nBlock) {
            this._reportError(comment, 'Trying to close an unopened block');
            return;
        }
        if (!this._inI18nNode && !this._inIcu) {
            if (!this._inI18nBlock) {
                if (isOpening) {
                    // deprecated from v5 you should use <ng-container i18n> instead of i18n comments
                    if (!i18nCommentsWarned && console && console.warn) {
                        i18nCommentsWarned = true;
                        const details = comment.sourceSpan.details ? `, ${comment.sourceSpan.details}` : '';
                        // TODO(ocombe): use a log service once there is a public one available
                        console.warn(`I18n comments are deprecated, use an <ng-container> element instead (${comment.sourceSpan.start}${details})`);
                    }
                    this._inI18nBlock = true;
                    this._blockStartDepth = this._depth;
                    this._blockChildren = [];
                    this._blockMeaningAndDesc =
                        comment.value.replace(_I18N_COMMENT_PREFIX_REGEXP, '').trim();
                    this._openTranslatableSection(comment);
                }
            }
            else {
                if (isClosing) {
                    if (this._depth == this._blockStartDepth) {
                        this._closeTranslatableSection(comment, this._blockChildren);
                        this._inI18nBlock = false;
                        const message = this._addMessage(this._blockChildren, this._blockMeaningAndDesc);
                        // merge attributes in sections
                        const nodes = this._translateMessage(comment, message);
                        return html.visitAll(this, nodes);
                    }
                    else {
                        this._reportError(comment, 'I18N blocks should not cross element boundaries');
                        return;
                    }
                }
            }
        }
    }
    visitText(text, context) {
        if (this._isInTranslatableSection) {
            this._mayBeAddBlockChildren(text);
        }
        return text;
    }
    visitElement(el, context) {
        this._mayBeAddBlockChildren(el);
        this._depth++;
        const wasInI18nNode = this._inI18nNode;
        const wasInImplicitNode = this._inImplicitNode;
        let childNodes = [];
        let translatedChildNodes = undefined;
        // Extract:
        // - top level nodes with the (implicit) "i18n" attribute if not already in a section
        // - ICU messages
        const i18nAttr = _getI18nAttr(el);
        const i18nMeta = i18nAttr ? i18nAttr.value : '';
        const isImplicit = this._implicitTags.some(tag => el.name === tag) && !this._inIcu &&
            !this._isInTranslatableSection;
        const isTopLevelImplicit = !wasInImplicitNode && isImplicit;
        this._inImplicitNode = wasInImplicitNode || isImplicit;
        if (!this._isInTranslatableSection && !this._inIcu) {
            if (i18nAttr || isTopLevelImplicit) {
                this._inI18nNode = true;
                const message = this._addMessage(el.children, i18nMeta);
                translatedChildNodes = this._translateMessage(el, message);
            }
            if (this._mode == _VisitorMode.Extract) {
                const isTranslatable = i18nAttr || isTopLevelImplicit;
                if (isTranslatable)
                    this._openTranslatableSection(el);
                html.visitAll(this, el.children);
                if (isTranslatable)
                    this._closeTranslatableSection(el, el.children);
            }
        }
        else {
            if (i18nAttr || isTopLevelImplicit) {
                this._reportError(el, 'Could not mark an element as translatable inside a translatable section');
            }
            if (this._mode == _VisitorMode.Extract) {
                // Descend into child nodes for extraction
                html.visitAll(this, el.children);
            }
        }
        if (this._mode === _VisitorMode.Merge) {
            const visitNodes = translatedChildNodes || el.children;
            visitNodes.forEach(child => {
                const visited = child.visit(this, context);
                if (visited && !this._isInTranslatableSection) {
                    // Do not add the children from translatable sections (= i18n blocks here)
                    // They will be added later in this loop when the block closes (i.e. on `<!-- /i18n -->`)
                    childNodes = childNodes.concat(visited);
                }
            });
        }
        this._visitAttributesOf(el);
        this._depth--;
        this._inI18nNode = wasInI18nNode;
        this._inImplicitNode = wasInImplicitNode;
        if (this._mode === _VisitorMode.Merge) {
            const translatedAttrs = this._translateAttributes(el);
            return new html.Element(el.name, translatedAttrs, childNodes, el.sourceSpan, el.startSourceSpan, el.endSourceSpan);
        }
        return null;
    }
    visitAttribute(attribute, context) {
        throw new Error('unreachable code');
    }
    _init(mode, interpolationConfig) {
        this._mode = mode;
        this._inI18nBlock = false;
        this._inI18nNode = false;
        this._depth = 0;
        this._inIcu = false;
        this._msgCountAtSectionStart = undefined;
        this._errors = [];
        this._messages = [];
        this._inImplicitNode = false;
        this._createI18nMessage = createI18nMessageFactory(interpolationConfig);
    }
    // looks for translatable attributes
    _visitAttributesOf(el) {
        const explicitAttrNameToValue = {};
        const implicitAttrNames = this._implicitAttrs[el.name] || [];
        el.attrs.filter(attr => attr.name.startsWith(_I18N_ATTR_PREFIX))
            .forEach(attr => explicitAttrNameToValue[attr.name.slice(_I18N_ATTR_PREFIX.length)] =
            attr.value);
        el.attrs.forEach(attr => {
            if (attr.name in explicitAttrNameToValue) {
                this._addMessage([attr], explicitAttrNameToValue[attr.name]);
            }
            else if (implicitAttrNames.some(name => attr.name === name)) {
                this._addMessage([attr]);
            }
        });
    }
    // add a translatable message
    _addMessage(ast, msgMeta) {
        if (ast.length == 0 ||
            ast.length == 1 && ast[0] instanceof html.Attribute && !ast[0].value) {
            // Do not create empty messages
            return null;
        }
        const { meaning, description, id } = _parseMessageMeta(msgMeta);
        const message = this._createI18nMessage(ast, meaning, description, id);
        this._messages.push(message);
        return message;
    }
    // Translates the given message given the `TranslationBundle`
    // This is used for translating elements / blocks - see `_translateAttributes` for attributes
    // no-op when called in extraction mode (returns [])
    _translateMessage(el, message) {
        if (message && this._mode === _VisitorMode.Merge) {
            const nodes = this._translations.get(message);
            if (nodes) {
                return nodes;
            }
            this._reportError(el, `Translation unavailable for message id="${this._translations.digest(message)}"`);
        }
        return [];
    }
    // translate the attributes of an element and remove i18n specific attributes
    _translateAttributes(el) {
        const attributes = el.attrs;
        const i18nParsedMessageMeta = {};
        attributes.forEach(attr => {
            if (attr.name.startsWith(_I18N_ATTR_PREFIX)) {
                i18nParsedMessageMeta[attr.name.slice(_I18N_ATTR_PREFIX.length)] =
                    _parseMessageMeta(attr.value);
            }
        });
        const translatedAttributes = [];
        attributes.forEach((attr) => {
            if (attr.name === _I18N_ATTR || attr.name.startsWith(_I18N_ATTR_PREFIX)) {
                // strip i18n specific attributes
                return;
            }
            if (attr.value && attr.value != '' && i18nParsedMessageMeta.hasOwnProperty(attr.name)) {
                const { meaning, description, id } = i18nParsedMessageMeta[attr.name];
                const message = this._createI18nMessage([attr], meaning, description, id);
                const nodes = this._translations.get(message);
                if (nodes) {
                    if (nodes.length == 0) {
                        translatedAttributes.push(new html.Attribute(attr.name, '', attr.sourceSpan));
                    }
                    else if (nodes[0] instanceof html.Text) {
                        const value = nodes[0].value;
                        translatedAttributes.push(new html.Attribute(attr.name, value, attr.sourceSpan));
                    }
                    else {
                        this._reportError(el, `Unexpected translation for attribute "${attr.name}" (id="${id || this._translations.digest(message)}")`);
                    }
                }
                else {
                    this._reportError(el, `Translation unavailable for attribute "${attr.name}" (id="${id || this._translations.digest(message)}")`);
                }
            }
            else {
                translatedAttributes.push(attr);
            }
        });
        return translatedAttributes;
    }
    /**
     * Add the node as a child of the block when:
     * - we are in a block,
     * - we are not inside a ICU message (those are handled separately),
     * - the node is a "direct child" of the block
     */
    _mayBeAddBlockChildren(node) {
        if (this._inI18nBlock && !this._inIcu && this._depth == this._blockStartDepth) {
            this._blockChildren.push(node);
        }
    }
    /**
     * Marks the start of a section, see `_closeTranslatableSection`
     */
    _openTranslatableSection(node) {
        if (this._isInTranslatableSection) {
            this._reportError(node, 'Unexpected section start');
        }
        else {
            this._msgCountAtSectionStart = this._messages.length;
        }
    }
    /**
     * A translatable section could be:
     * - the content of translatable element,
     * - nodes between `<!-- i18n -->` and `<!-- /i18n -->` comments
     */
    get _isInTranslatableSection() {
        return this._msgCountAtSectionStart !== void 0;
    }
    /**
     * Terminates a section.
     *
     * If a section has only one significant children (comments not significant) then we should not
     * keep the message from this children:
     *
     * `<p i18n="meaning|description">{ICU message}</p>` would produce two messages:
     * - one for the <p> content with meaning and description,
     * - another one for the ICU message.
     *
     * In this case the last message is discarded as it contains less information (the AST is
     * otherwise identical).
     *
     * Note that we should still keep messages extracted from attributes inside the section (ie in the
     * ICU message here)
     */
    _closeTranslatableSection(node, directChildren) {
        if (!this._isInTranslatableSection) {
            this._reportError(node, 'Unexpected section end');
            return;
        }
        const startIndex = this._msgCountAtSectionStart;
        const significantChildren = directChildren.reduce((count, node) => count + (node instanceof html.Comment ? 0 : 1), 0);
        if (significantChildren == 1) {
            for (let i = this._messages.length - 1; i >= startIndex; i--) {
                const ast = this._messages[i].nodes;
                if (!(ast.length == 1 && ast[0] instanceof i18n.Text)) {
                    this._messages.splice(i, 1);
                    break;
                }
            }
        }
        this._msgCountAtSectionStart = undefined;
    }
    _reportError(node, msg) {
        this._errors.push(new I18nError(node.sourceSpan, msg));
    }
}
function _isOpeningComment(n) {
    return !!(n instanceof html.Comment && n.value && n.value.startsWith('i18n'));
}
function _isClosingComment(n) {
    return !!(n instanceof html.Comment && n.value && n.value === '/i18n');
}
function _getI18nAttr(p) {
    return p.attrs.find(attr => attr.name === _I18N_ATTR) || null;
}
function _parseMessageMeta(i18n) {
    if (!i18n)
        return { meaning: '', description: '', id: '' };
    const idIndex = i18n.indexOf(ID_SEPARATOR);
    const descIndex = i18n.indexOf(MEANING_SEPARATOR);
    const [meaningAndDesc, id] = (idIndex > -1) ? [i18n.slice(0, idIndex), i18n.slice(idIndex + 2)] : [i18n, ''];
    const [meaning, description] = (descIndex > -1) ?
        [meaningAndDesc.slice(0, descIndex), meaningAndDesc.slice(descIndex + 1)] :
        ['', meaningAndDesc];
    return { meaning, description, id: id.trim() };
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXh0cmFjdG9yX21lcmdlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9pMThuL2V4dHJhY3Rvcl9tZXJnZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxLQUFLLElBQUksTUFBTSxrQkFBa0IsQ0FBQztBQUV6QyxPQUFPLEVBQUMsZUFBZSxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFDcEQsT0FBTyxLQUFLLElBQUksTUFBTSxZQUFZLENBQUM7QUFDbkMsT0FBTyxFQUFxQix3QkFBd0IsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUMzRSxPQUFPLEVBQUMsU0FBUyxFQUFDLE1BQU0sY0FBYyxDQUFDO0FBR3ZDLE1BQU0sVUFBVSxHQUFHLE1BQU0sQ0FBQztBQUMxQixNQUFNLGlCQUFpQixHQUFHLE9BQU8sQ0FBQztBQUNsQyxNQUFNLDJCQUEyQixHQUFHLFNBQVMsQ0FBQztBQUM5QyxNQUFNLGlCQUFpQixHQUFHLEdBQUcsQ0FBQztBQUM5QixNQUFNLFlBQVksR0FBRyxJQUFJLENBQUM7QUFDMUIsSUFBSSxrQkFBa0IsR0FBRyxLQUFLLENBQUM7QUFFL0I7O0dBRUc7QUFDSCxNQUFNLFVBQVUsZUFBZSxDQUMzQixLQUFrQixFQUFFLG1CQUF3QyxFQUFFLFlBQXNCLEVBQ3BGLGFBQXNDO0lBQ3hDLE1BQU0sT0FBTyxHQUFHLElBQUksUUFBUSxDQUFDLFlBQVksRUFBRSxhQUFhLENBQUMsQ0FBQztJQUMxRCxPQUFPLE9BQU8sQ0FBQyxPQUFPLENBQUMsS0FBSyxFQUFFLG1CQUFtQixDQUFDLENBQUM7QUFDckQsQ0FBQztBQUVELE1BQU0sVUFBVSxpQkFBaUIsQ0FDN0IsS0FBa0IsRUFBRSxZQUErQixFQUFFLG1CQUF3QyxFQUM3RixZQUFzQixFQUFFLGFBQXNDO0lBQ2hFLE1BQU0sT0FBTyxHQUFHLElBQUksUUFBUSxDQUFDLFlB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QUssQ0FBQyxPQUFPLEdBQUcsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxJQUFJLEVBQUUsRUFBRSxDQUFDLENBQUM7SUFDcEYsTUFBTSxDQUFDLE9BQU8sRUFBRSxXQUFXLENBQUMsR0FBRyxDQUFDLFNBQVMsR0FBRyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDN0MsQ0FBQyxjQUFjLENBQUMsS0FBSyxDQUFDLENBQUMsRUFBRSxTQUFTLENBQUMsRUFBRSxjQUFjLENBQUMsS0FBSyxDQUFDLFNBQVMsR0FBRyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDM0UsQ0FBQyxFQUFFLEVBQUUsY0FBYyxDQUFDLENBQUM7SUFFekIsT0FBTyxFQUFDLE9BQU8sRUFBRSxXQUFXLEVBQUUsRUFBRSxFQUFFLEVBQUUsQ0FBQyxJQUFJLEVBQUUsRUFBQyxDQUFDO0FBQy9DLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCAqIGFzIGh0bWwgZnJvbSAnLi4vbWxfcGFyc2VyL2FzdCc7XG5pbXBvcnQge0ludGVycG9sYXRpb25Db25maWd9IGZyb20gJy4uL21sX3BhcnNlci9pbnRlcnBvbGF0aW9uX2NvbmZpZyc7XG5pbXBvcnQge1BhcnNlVHJlZVJlc3VsdH0gZnJvbSAnLi4vbWxfcGFyc2VyL3BhcnNlcic7XG5pbXBvcnQgKiBhcyBpMThuIGZyb20gJy4vaTE4bl9hc3QnO1xuaW1wb3J0IHtJMThuTWVzc2FnZUZhY3RvcnksIGNyZWF0ZUkxOG5NZXNzYWdlRmFjdG9yeX0gZnJvbSAnLi9pMThuX3BhcnNlcic7XG5pbXBvcnQge0kxOG5FcnJvcn0gZnJvbSAnLi9wYXJzZV91dGlsJztcbmltcG9ydCB7VHJhbnNsYXRpb25CdW5kbGV9IGZyb20gJy4vdHJhbnNsYXRpb25fYnVuZGxlJztcblxuY29uc3QgX0kxOE5fQVRUUiA9ICdpMThuJztcbmNvbnN0IF9JMThOX0FUVFJfUFJFRklYID0gJ2kxOG4tJztcbmNvbnN0IF9JMThOX0NPTU1FTlRfUFJFRklYX1JFR0VYUCA9IC9eaTE4bjo/LztcbmNvbnN0IE1FQU5JTkdfU0VQQVJBVE9SID0gJ3wnO1xuY29uc3QgSURfU0VQQVJBVE9SID0gJ0BAJztcbmxldCBpMThuQ29tbWVudHNXYXJuZWQgPSBmYWxzZTtcblxuLyoqXG4gKiBFeHRyYWN0IHRyYW5zbGF0YWJsZSBtZXNzYWdlcyBmcm9tIGFuIGh0bWwgQVNUXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBleHRyYWN0TWVzc2FnZXMoXG4gICAgbm9kZXM6IGh0bWwuTm9kZVtdLCBpbnRlcnBvbGF0aW9uQ29uZmlnOiBJbnRlcnBvbGF0aW9uQ29uZmlnLCBpbXBsaWNpdFRhZ3M6IHN0cmluZ1tdLFxuICAgIGltcGxpY2l0QXR0cnM6IHtbazogc3RyaW5nXTogc3RyaW5nW119KTogRXh0cmFjdGlvblJlc3VsdCB7XG4gIGNvbnN0IHZpc2l0b3IgPSBuZXcgX1Zpc2l0b3IoaW1wbGljaXRUYWdzLCBpbXBsaWNpdEF0dHJzKTtcbiAgcmV0dXJuIHZpc2l0b3IuZXh0cmFjdChub2RlcywgaW50ZXJwb2xhdGlvbkNvbmZpZyk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBtZXJnZVRyYW5zbGF0aW9ucyhcbiAgICBub2RlczogaHRtbC5Ob2RlW10sIHRyYW5zbGF0aW9uczogVHJhbnNsYXRpb25CdW5kbGUsIGludGVycG9sYXRpb25Db25maWc6IEludGVycG9sYXRpb25Db25maWcsXG4gICAgaW1wbGljaXRUYWdzOiBzdHJpbmdbXSwgaW1wbGljaXRBdHRyczoge1trOiBzdHJpbmddOiBzdHJpbmdbXX0pOiBQYXJzZVRyZWVSZXN1bHQge1xuICBjb25zdCB2aXNpdG9yID0gbmV3IF9WaXNpdG9yKGltcGxpY2l0VGFncywgaW1wbGljaXRBdHRycyk7XG4gIHJldHVybiB2aXNpdG9yLm1lcmdlKG5vZGVzLCB0cmFuc2xhdGlvbnMsIGludGVycG9sYXRpb25Db25maWcpO1xufVxuXG5leHBvcnQgY2xhc3MgRXh0cmFjdGlvblJlc3VsdCB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBtZXNzYWdlczogaTE4bi5NZXNzYWdlW10sIHB1YmxpYyBlcnJvcnM6IEkxOG5FcnJvcltdKSB7fVxufVxuXG5lbnVtIF9WaXNpdG9yTW9kZSB7XG4gIEV4dHJhY3QsXG4gIE1lcmdlXG59XG5cbi8qKlxuICogVGhpcyBWaXNpdG9yIGlzIHVzZWQ6XG4gKiAxLiB0byBleHRyYWN0IGFsbCB0aGUgdHJhbnNsYXRhYmxlIHN0cmluZ3MgZnJvbSBhbiBodG1sIEFTVCAoc2VlIGBleHRyYWN0KClgKSxcbiAqIDIuIHRvIHJlcGxhY2UgdGhlIHRyYW5zbGF0YWJsZSBzdHJpbmdzIHdpdGggdGhlIGFjdHVhbCB0cmFuc2xhdGlvbnMgKHNlZSBgbWVyZ2UoKWApXG4gKlxuICogQGludGVybmFsXG4gKi9cbmNsYXNzIF9WaXNpdG9yIGltcGxlbWVudHMgaHRtbC5WaXNpdG9yIHtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIHByaXZhdGUgX2RlcHRoICE6IG51bWJlcjtcblxuICAvLyA8ZWwgaTE4bj4uLi48L2VsPlxuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfaW5JMThuTm9kZSAhOiBib29sZWFuO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfaW5JbXBsaWNpdE5vZGUgITogYm9vbGVhbjtcblxuICAvLyA8IS0taTE4bi0tPi4uLjwhLS0vaTE4bi0tPlxuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfaW5JMThuQmxvY2sgITogYm9vbGVhbjtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIHByaXZhdGUgX2Jsb2NrTWVhbmluZ0FuZERlc2MgITogc3RyaW5nO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfYmxvY2tDaGlsZHJlbiAhOiBodG1sLk5vZGVbXTtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIHByaXZhdGUgX2Jsb2NrU3RhcnREZXB0aCAhOiBudW1iZXI7XG5cbiAgLy8gezxpY3UgbWVzc2FnZT59XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9pbkljdSAhOiBib29sZWFuO1xuXG4gIC8vIHNldCB0byB2b2lkIDAgd2hlbiBub3QgaW4gYSBzZWN0aW9uXG4gIHByaXZhdGUgX21zZ0NvdW50QXRTZWN0aW9uU3RhcnQ6IG51bWJlcnx1bmRlZmluZWQ7XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9lcnJvcnMgITogSTE4bkVycm9yW107XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9tb2RlICE6IF9WaXNpdG9yTW9kZTtcblxuICAvLyBfVmlzaXRvck1vZGUuRXh0cmFjdCBvbmx5XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9tZXNzYWdlcyAhOiBpMThuLk1lc3NhZ2VbXTtcblxuICAvLyBfVmlzaXRvck1vZGUuTWVyZ2Ugb25seVxuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfdHJhbnNsYXRpb25zICE6IFRyYW5zbGF0aW9uQnVuZGxlO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfY3JlYXRlSTE4bk1lc3NhZ2UgITogSTE4bk1lc3NhZ2VGYWN0b3J5O1xuXG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSBfaW1wbGljaXRUYWdzOiBzdHJpbmdbXSwgcHJpdmF0ZSBfaW1wbGljaXRBdHRyczoge1trOiBzdHJpbmddOiBzdHJpbmdbXX0pIHt9XG5cbiAgLyoqXG4gICAqIEV4dHJhY3RzIHRoZSBtZXNzYWdlcyBmcm9tIHRoZSB0cmVlXG4gICAqL1xuICBleHRyYWN0KG5vZGVzOiBodG1sLk5vZGVbXSwgaW50ZXJwb2xhdGlvbkNvbmZpZzogSW50ZXJwb2xhdGlvbkNvbmZpZyk6IEV4dHJhY3Rpb25SZXN1bHQge1xuICAgIHRoaXMuX2luaXQoX1Zpc2l0b3JNb2RlLkV4dHJhY3QsIGludGVycG9sYXRpb25Db25maWcpO1xuXG4gICAgbm9kZXMuZm9yRWFjaChub2RlID0+IG5vZGUudmlzaXQodGhpcywgbnVsbCkpO1xuXG4gICAgaWYgKHRoaXMuX2luSTE4bkJsb2NrKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihub2Rlc1tub2Rlcy5sZW5ndGggLSAxXSwgJ1VuY2xvc2VkIGJsb2NrJyk7XG4gICAgfVxuXG4gICAgcmV0dXJuIG5ldyBFeHRyYWN0aW9uUmVzdWx0KHRoaXMuX21lc3NhZ2VzLCB0aGlzLl9lcnJvcnMpO1xuICB9XG5cbiAgLyoqXG4gICAqIFJldHVybnMgYSB0cmVlIHdoZXJlIGFsbCB0cmFuc2xhdGFibGUgbm9kZXMgYXJlIHRyYW5zbGF0ZWRcbiAgICovXG4gIG1lcmdlKFxuICAgICAgbm9kZXM6IGh0bWwuTm9kZVtdLCB0cmFuc2xhdGlvbnM6IFRyYW5zbGF0aW9uQnVuZGxlLFxuICAgICAgaW50ZXJwb2xhdGlvbkNvbmZpZzogSW50ZXJwb2xhdGlvbkNvbmZpZyk6IFBhcnNlVHJlZVJlc3VsdCB7XG4gICAgdGhpcy5faW5pdChfVmlzaXRvck1vZGUuTWVyZ2UsIGludGVycG9sYXRpb25Db25maWcpO1xuICAgIHRoaXMuX3RyYW5zbGF0aW9ucyA9IHRyYW5zbGF0aW9ucztcblxuICAgIC8vIENvbnN0cnVjdCBhIHNpbmdsZSBmYWtlIHJvb3QgZWxlbWVudFxuICAgIGNvbnN0IHdyYXBwZXIgPSBuZXcgaHRtbC5FbGVtZW50KCd3cmFwcGVyJywgW10sIG5vZGVzLCB1bmRlZmluZWQgISwgdW5kZWZpbmVkLCB1bmRlZmluZWQpO1xuXG4gICAgY29uc3QgdHJhbnNsYXRlZE5vZGUgPSB3cmFwcGVyLnZpc2l0KHRoaXMsIG51bGwpO1xuXG4gICAgaWYgKHRoaXMuX2luSTE4bkJsb2NrKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihub2Rlc1tub2Rlcy5sZW5ndGggLSAxXSwgJ1VuY2xvc2VkIGJsb2NrJyk7XG4gICAgfVxuXG4gICAgcmV0dXJuIG5ldyBQYXJzZVRyZWVSZXN1bHQodHJhbnNsYXRlZE5vZGUuY2hpbGRyZW4sIHRoaXMuX2Vycm9ycyk7XG4gIH1cblxuICB2aXNpdEV4cGFuc2lvbkNhc2UoaWN1Q2FzZTogaHRtbC5FeHBhbnNpb25DYXNlLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIC8vIFBhcnNlIGNhc2VzIGZvciB0cmFuc2xhdGFibGUgaHRtbCBhdHRyaWJ1dGVzXG4gICAgY29uc3QgZXhwcmVzc2lvbiA9IGh0bWwudmlzaXRBbGwodGhpcywgaWN1Q2FzZS5leHByZXNzaW9uLCBjb250ZXh0KTtcblxuICAgIGlmICh0aGlzLl9tb2RlID09PSBfVmlzaXRvck1vZGUuTWVyZ2UpIHtcbiAgICAgIHJldHVybiBuZXcgaHRtbC5FeHBhbnNpb25DYXNlKFxuICAgICAgICAgIGljdUNhc2UudmFsdWUsIGV4cHJlc3Npb24sIGljdUNhc2Uuc291cmNlU3BhbiwgaWN1Q2FzZS52YWx1ZVNvdXJjZVNwYW4sXG4gICAgICAgICAgaWN1Q2FzZS5leHBTb3VyY2VTcGFuKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdEV4cGFuc2lvbihpY3U6IGh0bWwuRXhwYW5zaW9uLCBjb250ZXh0OiBhbnkpOiBodG1sLkV4cGFuc2lvbiB7XG4gICAgdGhpcy5fbWF5QmVBZGRCbG9ja0NoaWxkcmVuKGljdSk7XG5cbiAgICBjb25zdCB3YXNJbkljdSA9IHRoaXMuX2luSWN1O1xuXG4gICAgaWYgKCF0aGlzLl9pbkljdSkge1xuICAgICAgLy8gbmVzdGVkIElDVSBtZXNzYWdlcyBzaG91bGQgbm90IGJlIGV4dHJhY3RlZCBidXQgdG9wLWxldmVsIHRyYW5zbGF0ZWQgYXMgYSB3aG9sZVxuICAgICAgaWYgKHRoaXMuX2lzSW5UcmFuc2xhdGFibGVTZWN0aW9uKSB7XG4gICAgICAgIHRoaXMuX2FkZE1lc3NhZ2UoW2ljdV0pO1xuICAgICAgfVxuICAgICAgdGhpcy5faW5JY3UgPSB0cnVlO1xuICAgIH1cblxuICAgIGNvbnN0IGNhc2VzID0gaHRtbC52aXNpdEFsbCh0aGlzLCBpY3UuY2FzZXMsIGNvbnRleHQpO1xuXG4gICAgaWYgKHRoaXMuX21vZGUgPT09IF9WaXNpdG9yTW9kZS5NZXJnZSkge1xuICAgICAgaWN1ID0gbmV3IGh0bWwuRXhwYW5zaW9uKFxuICAgICAgICAgIGljdS5zd2l0Y2hWYWx1ZSwgaWN1LnR5cGUsIGNhc2VzLCBpY3Uuc291cmNlU3BhbiwgaWN1LnN3aXRjaFZhbHVlU291cmNlU3Bhbik7XG4gICAgfVxuXG4gICAgdGhpcy5faW5JY3UgPSB3YXNJbkljdTtcblxuICAgIHJldHVybiBpY3U7XG4gIH1cblxuICB2aXNpdENvbW1lbnQoY29tbWVudDogaHRtbC5Db21tZW50LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGNvbnN0IGlzT3BlbmluZyA9IF9pc09wZW5pbmdDb21tZW50KGNvbW1lbnQpO1xuXG4gICAgaWYgKGlzT3BlbmluZyAmJiB0aGlzLl9pc0luVHJhbnNsYXRhYmxlU2VjdGlvbikge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoY29tbWVudCwgJ0NvdWxkIG5vdCBzdGFydCBhIGJsb2NrIGluc2lkZSBhIHRyYW5zbGF0YWJsZSBzZWN0aW9uJyk7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3QgaXNDbG9zaW5nID0gX2lzQ2xvc2luZ0NvbW1lbnQoY29tbWVudCk7XG5cbiAgICBpZiAoaXNDbG9zaW5nICYmICF0aGlzLl9pbkkxOG5CbG9jaykge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoY29tbWVudCwgJ1RyeWluZyB0byBjbG9zZSBhbiB1bm9wZW5lZCBibG9jaycpO1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIGlmICghdGhpcy5faW5JMThuTm9kZSAmJiAhdGhpcy5faW5JY3UpIHtcbiAgICAgIGlmICghdGhpcy5faW5JMThuQmxvY2spIHtcbiAgICAgICAgaWYgKGlzT3BlbmluZykge1xuICAgICAgICAgIC8vIGRlcHJlY2F0ZWQgZnJvbSB2NSB5b3Ugc2hvdWxkIHVzZSA8bmctY29udGFpbmVyIGkxOG4+IGluc3RlYWQgb2YgaTE4biBjb21tZW50c1xuICAgICAgICAgIGlmICghaTE4bkNvbW1lbnRzV2FybmVkICYmIDxhbnk+Y29uc29sZSAmJiA8YW55PmNvbnNvbGUud2Fybikge1xuICAgICAgICAgICAgaTE4bkNvbW1lbnRzV2FybmVkID0gdHJ1ZTtcbiAgICAgICAgICAgIGNvbnN0IGRldGFpbHMgPSBjb21tZW50LnNvdXJjZVNwYW4uZGV0YWlscyA/IGAsICR7Y29tbWVudC5zb3VyY2VTcGFuLmRldGFpbHN9YCA6ICcnO1xuICAgICAgICAgICAgLy8gVE9ETyhvY29tYmUpOiB1c2UgYSBsb2cgc2VydmljZSBvbmNlIHRoZXJlIGlzIGEgcHVibGljIG9uZSBhdmFpbGFibGVcbiAgICAgICAgICAgIGNvbnNvbGUud2FybihcbiAgICAgICAgICAgICAgICBgSTE4biBjb21tZW50cyBhcmUgZGVwcmVjYXRlZCwgdXNlIGFuIDxuZy1jb250YWluZXI+IGVsZW1lbnQgaW5zdGVhZCAoJHtjb21tZW50LnNvdXJjZVNwYW4uc3RhcnR9JHtkZXRhaWxzfSlgKTtcbiAgICAgICAgICB9XG4gICAgICAgICAgdGhpcy5faW5JMThuQmxvY2sgPSB0cnVlO1xuICAgICAgICAgIHRoaXMuX2Jsb2NrU3RhcnREZXB0aCA9IHRoaXMuX2RlcHRoO1xuICAgICAgICAgIHRoaXMuX2Jsb2NrQ2hpbGRyZW4gPSBbXTtcbiAgICAgICAgICB0aGlzLl9ibG9ja01lYW5pbmdBbmREZXNjID1cbiAgICAgICAgICAgICAgY29tbWVudC52YWx1ZSAhLnJlcGxhY2UoX0kxOE5fQ09NTUVOVF9QUkVGSVhfUkVHRVhQLCAnJykudHJpbSgpO1xuICAgICAgICAgIHRoaXMuX29wZW5UcmFuc2xhdGFibGVTZWN0aW9uKGNvbW1lbnQpO1xuICAgICAgICB9XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBpZiAoaXNDbG9zaW5nKSB7XG4gICAgICAgICAgaWYgKHRoaXMuX2RlcHRoID09IHRoaXMuX2Jsb2NrU3RhcnREZXB0aCkge1xuICAgICAgICAgICAgdGhpcy5fY2xvc2VUcmFuc2xhdGFibGVTZWN0aW9uKGNvbW1lbnQsIHRoaXMuX2Jsb2NrQ2hpbGRyZW4pO1xuICAgICAgICAgICAgdGhpcy5faW5JMThuQmxvY2sgPSBmYWxzZTtcbiAgICAgICAgICAgIGNvbnN0IG1lc3NhZ2UgPSB0aGlzLl9hZGRNZXNzYWdlKHRoaXMuX2Jsb2NrQ2hpbGRyZW4sIHRoaXMuX2Jsb2NrTWVhbmluZ0FuZERlc2MpICE7XG4gICAgICAgICAgICAvLyBtZXJnZSBhdHRyaWJ1dGVzIGluIHNlY3Rpb25zXG4gICAgICAgICAgICBjb25zdCBub2RlcyA9IHRoaXMuX3RyYW5zbGF0ZU1lc3NhZ2UoY29tbWVudCwgbWVzc2FnZSk7XG4gICAgICAgICAgICByZXR1cm4gaHRtbC52aXNpdEFsbCh0aGlzLCBub2Rlcyk7XG4gICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKGNvbW1lbnQsICdJMThOIGJsb2NrcyBzaG91bGQgbm90IGNyb3NzIGVsZW1lbnQgYm91bmRhcmllcycpO1xuICAgICAgICAgICAgcmV0dXJuO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHZpc2l0VGV4dCh0ZXh0OiBodG1sLlRleHQsIGNvbnRleHQ6IGFueSk6IGh0bWwuVGV4dCB7XG4gICAgaWYgKHRoaXMuX2lzSW5UcmFuc2xhdGFibGVTZWN0aW9uKSB7XG4gICAgICB0aGlzLl9tYXlCZUFkZEJsb2NrQ2hpbGRyZW4odGV4dCk7XG4gICAgfVxuICAgIHJldHVybiB0ZXh0O1xuICB9XG5cbiAgdmlzaXRFbGVtZW50KGVsOiBodG1sLkVsZW1lbnQsIGNvbnRleHQ6IGFueSk6IGh0bWwuRWxlbWVudHxudWxsIHtcbiAgICB0aGlzLl9tYXlCZUFkZEJsb2NrQ2hpbGRyZW4oZWwpO1xuICAgIHRoaXMuX2RlcHRoKys7XG4gICAgY29uc3Qgd2FzSW5JMThuTm9kZSA9IHRoaXMuX2luSTE4bk5vZGU7XG4gICAgY29uc3Qgd2FzSW5JbXBsaWNpdE5vZGUgPSB0aGlzLl9pbkltcGxpY2l0Tm9kZTtcbiAgICBsZXQgY2hpbGROb2RlczogaHRtbC5Ob2RlW10gPSBbXTtcbiAgICBsZXQgdHJhbnNsYXRlZENoaWxkTm9kZXM6IGh0bWwuTm9kZVtdID0gdW5kZWZpbmVkICE7XG5cbiAgICAvLyBFeHRyYWN0OlxuICAgIC8vIC0gdG9wIGxldmVsIG5vZGVzIHdpdGggdGhlIChpbXBsaWNpdCkgXCJpMThuXCIgYXR0cmlidXRlIGlmIG5vdCBhbHJlYWR5IGluIGEgc2VjdGlvblxuICAgIC8vIC0gSUNVIG1lc3NhZ2VzXG4gICAgY29uc3QgaTE4bkF0dHIgPSBfZ2V0STE4bkF0dHIoZWwpO1xuICAgIGNvbnN0IGkxOG5NZXRhID0gaTE4bkF0dHIgPyBpMThuQXR0ci52YWx1ZSA6ICcnO1xuICAgIGNvbnN0IGlzSW1wbGljaXQgPSB0aGlzLl9pbXBsaWNpdFRhZ3Muc29tZSh0YWcgPT4gZWwubmFtZSA9PT0gdGFnKSAmJiAhdGhpcy5faW5JY3UgJiZcbiAgICAgICAgIXRoaXMuX2lzSW5UcmFuc2xhdGFibGVTZWN0aW9uO1xuICAgIGNvbnN0IGlzVG9wTGV2ZWxJbXBsaWNpdCA9ICF3YXNJbkltcGxpY2l0Tm9kZSAmJiBpc0ltcGxpY2l0O1xuICAgIHRoaXMuX2luSW1wbGljaXROb2RlID0gd2FzSW5JbXBsaWNpdE5vZGUgfHwgaXNJbXBsaWNpdDtcblxuICAgIGlmICghdGhpcy5faXNJblRyYW5zbGF0YWJsZVNlY3Rpb24gJiYgIXRoaXMuX2luSWN1KSB7XG4gICAgICBpZiAoaTE4bkF0dHIgfHwgaXNUb3BMZXZlbEltcGxpY2l0KSB7XG4gICAgICAgIHRoaXMuX2luSTE4bk5vZGUgPSB0cnVlO1xuICAgICAgICBjb25zdCBtZXNzYWdlID0gdGhpcy5fYWRkTWVzc2FnZShlbC5jaGlsZHJlbiwgaTE4bk1ldGEpICE7XG4gICAgICAgIHRyYW5zbGF0ZWRDaGlsZE5vZGVzID0gdGhpcy5fdHJhbnNsYXRlTWVzc2FnZShlbCwgbWVzc2FnZSk7XG4gICAgICB9XG5cbiAgICAgIGlmICh0aGlzLl9tb2RlID09IF9WaXNpdG9yTW9kZS5FeHRyYWN0KSB7XG4gICAgICAgIGNvbnN0IGlzVHJhbnNsYXRhYmxlID0gaTE4bkF0dHIgfHwgaXNUb3BMZXZlbEltcGxpY2l0O1xuICAgICAgICBpZiAoaXNUcmFuc2xhdGFibGUpIHRoaXMuX29wZW5UcmFuc2xhdGFibGVTZWN0aW9uKGVsKTtcbiAgICAgICAgaHRtbC52aXNpdEFsbCh0aGlzLCBlbC5jaGlsZHJlbik7XG4gICAgICAgIGlmIChpc1RyYW5zbGF0YWJsZSkgdGhpcy5fY2xvc2VUcmFuc2xhdGFibGVTZWN0aW9uKGVsLCBlbC5jaGlsZHJlbik7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIGlmIChpMThuQXR0ciB8fCBpc1RvcExldmVsSW1wbGljaXQpIHtcbiAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICBlbCwgJ0NvdWxkIG5vdCBtYXJrIGFuIGVsZW1lbnQgYXMgdHJhbnNsYXRhYmxlIGluc2lkZSBhIHRyYW5zbGF0YWJsZSBzZWN0aW9uJyk7XG4gICAgICB9XG5cbiAgICAgIGlmICh0aGlzLl9tb2RlID09IF9WaXNpdG9yTW9kZS5FeHRyYWN0KSB7XG4gICAgICAgIC8vIERlc2NlbmQgaW50byBjaGlsZCBub2RlcyBmb3IgZXh0cmFjdGlvblxuICAgICAgICBodG1sLnZpc2l0QWxsKHRoaXMsIGVsLmNoaWxkcmVuKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICBpZiAodGhpcy5fbW9kZSA9PT0gX1Zpc2l0b3JNb2RlLk1lcmdlKSB7XG4gICAgICBjb25zdCB2aXNpdE5vZGVzID0gdHJhbnNsYXRlZENoaWxkTm9kZXMgfHwgZWwuY2hpbGRyZW47XG4gICAgICB2aXNpdE5vZGVzLmZvckVhY2goY2hpbGQgPT4ge1xuICAgICAgICBjb25zdCB2aXNpdGVkID0gY2hpbGQudmlzaXQodGhpcywgY29udGV4dCk7XG4gICAgICAgIGlmICh2aXNpdGVkICYmICF0aGlzLl9pc0luVHJhbnNsYXRhYmxlU2VjdGlvbikge1xuICAgICAgICAgIC8vIERvIG5vdCBhZGQgdGhlIGNoaWxkcmVuIGZyb20gdHJhbnNsYXRhYmxlIHNlY3Rpb25zICg9IGkxOG4gYmxvY2tzIGhlcmUpXG4gICAgICAgICAgLy8gVGhleSB3aWxsIGJlIGFkZGVkIGxhdGVyIGluIHRoaXMgbG9vcCB3aGVuIHRoZSBibG9jayBjbG9zZXMgKGkuZS4gb24gYDwhLS0gL2kxOG4gLS0+YClcbiAgICAgICAgICBjaGlsZE5vZGVzID0gY2hpbGROb2Rlcy5jb25jYXQodmlzaXRlZCk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgIH1cblxuICAgIHRoaXMuX3Zpc2l0QXR0cmlidXRlc09mKGVsKTtcblxuICAgIHRoaXMuX2RlcHRoLS07XG4gICAgdGhpcy5faW5JMThuTm9kZSA9IHdhc0luSTE4bk5vZGU7XG4gICAgdGhpcy5faW5JbXBsaWNpdE5vZGUgPSB3YXNJbkltcGxpY2l0Tm9kZTtcblxuICAgIGlmICh0aGlzLl9tb2RlID09PSBfVmlzaXRvck1vZGUuTWVyZ2UpIHtcbiAgICAgIGNvbnN0IHRyYW5zbGF0ZWRBdHRycyA9IHRoaXMuX3RyYW5zbGF0ZUF0dHJpYnV0ZXMoZWwpO1xuICAgICAgcmV0dXJuIG5ldyBodG1sLkVsZW1lbnQoXG4gICAgICAgICAgZWwubmFtZSwgdHJhbnNsYXRlZEF0dHJzLCBjaGlsZE5vZGVzLCBlbC5zb3VyY2VTcGFuLCBlbC5zdGFydFNvdXJjZVNwYW4sXG4gICAgICAgICAgZWwuZW5kU291cmNlU3Bhbik7XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgdmlzaXRBdHRyaWJ1dGUoYXR0cmlidXRlOiBodG1sLkF0dHJpYnV0ZSwgY29udGV4dDogYW55KTogYW55IHtcbiAgICB0aHJvdyBuZXcgRXJyb3IoJ3VucmVhY2hhYmxlIGNvZGUnKTtcbiAgfVxuXG4gIHByaXZhdGUgX2luaXQobW9kZTogX1Zpc2l0b3JNb2RlLCBpbnRlcnBvbGF0aW9uQ29uZmlnOiBJbnRlcnBvbGF0aW9uQ29uZmlnKTogdm9pZCB7XG4gICAgdGhpcy5fbW9kZSA9IG1vZGU7XG4gICAgdGhpcy5faW5JMThuQmxvY2sgPSBmYWxzZTtcbiAgICB0aGlzLl9pbkkxOG5Ob2RlID0gZmFsc2U7XG4gICAgdGhpcy5fZGVwdGggPSAwO1xuICAgIHRoaXMuX2luSWN1ID0gZmFsc2U7XG4gICAgdGhpcy5fbXNnQ291bnRBdFNlY3Rpb25TdGFydCA9IHVuZGVmaW5lZDtcbiAgICB0aGlzLl9lcnJvcnMgPSBbXTtcbiAgICB0aGlzLl9tZXNzYWdlcyA9IFtdO1xuICAgIHRoaXMuX2luSW1wbGljaXROb2RlID0gZmFsc2U7XG4gICAgdGhpcy5fY3JlYXRlSTE4bk1lc3NhZ2UgPSBjcmVhdGVJMThuTWVzc2FnZUZhY3RvcnkoaW50ZXJwb2xhdGlvbkNvbmZpZyk7XG4gIH1cblxuICAvLyBsb29rcyBmb3IgdHJhbnNsYXRhYmxlIGF0dHJpYnV0ZXNcbiAgcHJpdmF0ZSBfdmlzaXRBdHRyaWJ1dGVzT2YoZWw6IGh0bWwuRWxlbWVudCk6IHZvaWQge1xuICAgIGNvbnN0IGV4cGxpY2l0QXR0ck5hbWVUb1ZhbHVlOiB7W2s6IHN0cmluZ106IHN0cmluZ30gPSB7fTtcbiAgICBjb25zdCBpbXBsaWNpdEF0dHJOYW1lczogc3RyaW5nW10gPSB0aGlzLl9pbXBsaWNpdEF0dHJzW2VsLm5hbWVdIHx8IFtdO1xuXG4gICAgZWwuYXR0cnMuZmlsdGVyKGF0dHIgPT4gYXR0ci5uYW1lLnN0YXJ0c1dpdGgoX0kxOE5fQVRUUl9QUkVGSVgpKVxuICAgICAgICAuZm9yRWFjaChcbiAgICAgICAgICAgIGF0dHIgPT4gZXhwbGljaXRBdHRyTmFtZVRvVmFsdWVbYXR0ci5uYW1lLnNsaWNlKF9JMThOX0FUVFJfUFJFRklYLmxlbmd0aCldID1cbiAgICAgICAgICAgICAgICBhdHRyLnZhbHVlKTtcblxuICAgIGVsLmF0dHJzLmZvckVhY2goYXR0ciA9PiB7XG4gICAgICBpZiAoYXR0ci5uYW1lIGluIGV4cGxpY2l0QXR0ck5hbWVUb1ZhbHVlKSB7XG4gICAgICAgIHRoaXMuX2FkZE1lc3NhZ2UoW2F0dHJdLCBleHBsaWNpdEF0dHJOYW1lVG9WYWx1ZVthdHRyLm5hbWVdKTtcbiAgICAgIH0gZWxzZSBpZiAoaW1wbGljaXRBdHRyTmFtZXMuc29tZShuYW1lID0+IGF0dHIubmFtZSA9PT0gbmFtZSkpIHtcbiAgICAgICAgdGhpcy5fYWRkTWVzc2FnZShbYXR0cl0pO1xuICAgICAgfVxuICAgIH0pO1xuICB9XG5cbiAgLy8gYWRkIGEgdHJhbnNsYXRhYmxlIG1lc3NhZ2VcbiAgcHJpdmF0ZSBfYWRkTWVzc2FnZShhc3Q6IGh0bWwuTm9kZVtdLCBtc2dNZXRhPzogc3RyaW5nKTogaTE4bi5NZXNzYWdlfG51bGwge1xuICAgIGlmIChhc3QubGVuZ3RoID09IDAgfHxcbiAgICAgICAgYXN0Lmxlbmd0aCA9PSAxICYmIGFzdFswXSBpbnN0YW5jZW9mIGh0bWwuQXR0cmlidXRlICYmICEoPGh0bWwuQXR0cmlidXRlPmFzdFswXSkudmFsdWUpIHtcbiAgICAgIC8vIERvIG5vdCBjcmVhdGUgZW1wdHkgbWVzc2FnZXNcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIGNvbnN0IHttZWFuaW5nLCBkZXNjcmlwdGlvbiwgaWR9ID0gX3BhcnNlTWVzc2FnZU1ldGEobXNnTWV0YSk7XG4gICAgY29uc3QgbWVzc2FnZSA9IHRoaXMuX2NyZWF0ZUkxOG5NZXNzYWdlKGFzdCwgbWVhbmluZywgZGVzY3JpcHRpb24sIGlkKTtcbiAgICB0aGlzLl9tZXNzYWdlcy5wdXNoKG1lc3NhZ2UpO1xuICAgIHJldHVybiBtZXNzYWdlO1xuICB9XG5cbiAgLy8gVHJhbnNsYXRlcyB0aGUgZ2l2ZW4gbWVzc2FnZSBnaXZlbiB0aGUgYFRyYW5zbGF0aW9uQnVuZGxlYFxuICAvLyBUaGlzIGlzIHVzZWQgZm9yIHRyYW5zbGF0aW5nIGVsZW1lbnRzIC8gYmxvY2tzIC0gc2VlIGBfdHJhbnNsYXRlQXR0cmlidXRlc2AgZm9yIGF0dHJpYnV0ZXNcbiAgLy8gbm8tb3Agd2hlbiBjYWxsZWQgaW4gZXh0cmFjdGlvbiBtb2RlIChyZXR1cm5zIFtdKVxuICBwcml2YXRlIF90cmFuc2xhdGVNZXNzYWdlKGVsOiBodG1sLk5vZGUsIG1lc3NhZ2U6IGkxOG4uTWVzc2FnZSk6IGh0bWwuTm9kZVtdIHtcbiAgICBpZiAobWVzc2FnZSAmJiB0aGlzLl9tb2RlID09PSBfVmlzaXRvck1vZGUuTWVyZ2UpIHtcbiAgICAgIGNvbnN0IG5vZGVzID0gdGhpcy5fdHJhbnNsYXRpb25zLmdldChtZXNzYWdlKTtcblxuICAgICAgaWYgKG5vZGVzKSB7XG4gICAgICAgIHJldHVybiBub2RlcztcbiAgICAgIH1cblxuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgZWwsIGBUcmFuc2xhdGlvbiB1bmF2YWlsYWJsZSBmb3IgbWVzc2FnZSBpZD1cIiR7dGhpcy5fdHJhbnNsYXRpb25zLmRpZ2VzdChtZXNzYWdlKX1cImApO1xuICAgIH1cblxuICAgIHJldHVybiBbXTtcbiAgfVxuXG4gIC8vIHRyYW5zbGF0ZSB0aGUgYXR0cmlidXRlcyBvZiBhbiBlbGVtZW50IGFuZCByZW1vdmUgaTE4biBzcGVjaWZpYyBhdHRyaWJ1dGVzXG4gIHByaXZhdGUgX3RyYW5zbGF0ZUF0dHJpYnV0ZXMoZWw6IGh0bWwuRWxlbWVudCk6IGh0bWwuQXR0cmlidXRlW10ge1xuICAgIGNvbnN0IGF0dHJpYnV0ZXMgPSBlbC5hdHRycztcbiAgICBjb25zdCBpMThuUGFyc2VkTWVzc2FnZU1ldGE6XG4gICAgICAgIHtbbmFtZTogc3RyaW5nXToge21lYW5pbmc6IHN0cmluZywgZGVzY3JpcHRpb246IHN0cmluZywgaWQ6IHN0cmluZ319ID0ge307XG5cbiAgICBhdHRyaWJ1dGVzLmZvckVhY2goYXR0ciA9PiB7XG4gICAgICBpZiAoYXR0ci5uYW1lLnN0YXJ0c1dpdGgoX0kxOE5fQVRUUl9QUkVGSVgpKSB7XG4gICAgICAgIGkxOG5QYXJzZWRNZXNzYWdlTWV0YVthdHRyLm5hbWUuc2xpY2UoX0kxOE5fQVRUUl9QUkVGSVgubGVuZ3RoKV0gPVxuICAgICAgICAgICAgX3BhcnNlTWVzc2FnZU1ldGEoYXR0ci52YWx1ZSk7XG4gICAgICB9XG4gICAgfSk7XG5cbiAgICBjb25zdCB0cmFuc2xhdGVkQXR0cmlidXRlczogaHRtbC5BdHRyaWJ1dGVbXSA9IFtdO1xuXG4gICAgYXR0cmlidXRlcy5mb3JFYWNoKChhdHRyKSA9PiB7XG4gICAgICBpZiAoYXR0ci5uYW1lID09PSBfSTE4Tl9BVFRSIHx8IGF0dHIubmFtZS5zdGFydHNXaXRoKF9JMThOX0FUVFJfUFJFRklYKSkge1xuICAgICAgICAvLyBzdHJpcCBpMThuIHNwZWNpZmljIGF0dHJpYnV0ZXNcbiAgICAgICAgcmV0dXJuO1xuICAgICAgfVxuXG4gICAgICBpZiAoYXR0ci52YWx1ZSAmJiBhdHRyLnZhbHVlICE9ICcnICYmIGkxOG5QYXJzZWRNZXNzYWdlTWV0YS5oYXNPd25Qcm9wZXJ0eShhdHRyLm5hbWUpKSB7XG4gICAgICAgIGNvbnN0IHttZWFuaW5nLCBkZXNjcmlwdGlvbiwgaWR9ID0gaTE4blBhcnNlZE1lc3NhZ2VNZXRhW2F0dHIubmFtZV07XG4gICAgICAgIGNvbnN0IG1lc3NhZ2U6IGkxOG4uTWVzc2FnZSA9IHRoaXMuX2NyZWF0ZUkxOG5NZXNzYWdlKFthdHRyXSwgbWVhbmluZywgZGVzY3JpcHRpb24sIGlkKTtcbiAgICAgICAgY29uc3Qgbm9kZXMgPSB0aGlzLl90cmFuc2xhdGlvbnMuZ2V0KG1lc3NhZ2UpO1xuICAgICAgICBpZiAobm9kZXMpIHtcbiAgICAgICAgICBpZiAobm9kZXMubGVuZ3RoID09IDApIHtcbiAgICAgICAgICAgIHRyYW5zbGF0ZWRBdHRyaWJ1dGVzLnB1c2gobmV3IGh0bWwuQXR0cmlidXRlKGF0dHIubmFtZSwgJycsIGF0dHIuc291cmNlU3BhbikpO1xuICAgICAgICAgIH0gZWxzZSBpZiAobm9kZXNbMF0gaW5zdGFuY2VvZiBodG1sLlRleHQpIHtcbiAgICAgICAgICAgIGNvbnN0IHZhbHVlID0gKG5vZGVzWzBdIGFzIGh0bWwuVGV4dCkudmFsdWU7XG4gICAgICAgICAgICB0cmFuc2xhdGVkQXR0cmlidXRlcy5wdXNoKG5ldyBodG1sLkF0dHJpYnV0ZShhdHRyLm5hbWUsIHZhbHVlLCBhdHRyLnNvdXJjZVNwYW4pKTtcbiAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgICAgZWwsXG4gICAgICAgICAgICAgICAgYFVuZXhwZWN0ZWQgdHJhbnNsYXRpb24gZm9yIGF0dHJpYnV0ZSBcIiR7YXR0ci5uYW1lfVwiIChpZD1cIiR7aWQgfHwgdGhpcy5fdHJhbnNsYXRpb25zLmRpZ2VzdChtZXNzYWdlKX1cIilgKTtcbiAgICAgICAgICB9XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgIGVsLFxuICAgICAgICAgICAgICBgVHJhbnNsYXRpb24gdW5hdmFpbGFibGUgZm9yIGF0dHJpYnV0ZSBcIiR7YXR0ci5uYW1lfVwiIChpZD1cIiR7aWQgfHwgdGhpcy5fdHJhbnNsYXRpb25zLmRpZ2VzdChtZXNzYWdlKX1cIilgKTtcbiAgICAgICAgfVxuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdHJhbnNsYXRlZEF0dHJpYnV0ZXMucHVzaChhdHRyKTtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIHJldHVybiB0cmFuc2xhdGVkQXR0cmlidXRlcztcbiAgfVxuXG5cbiAgLyoqXG4gICAqIEFkZCB0aGUgbm9kZSBhcyBhIGNoaWxkIG9mIHRoZSBibG9jayB3aGVuOlxuICAgKiAtIHdlIGFyZSBpbiBhIGJsb2NrLFxuICAgKiAtIHdlIGFyZSBub3QgaW5zaWRlIGEgSUNVIG1lc3NhZ2UgKHRob3NlIGFyZSBoYW5kbGVkIHNlcGFyYXRlbHkpLFxuICAgKiAtIHRoZSBub2RlIGlzIGEgXCJkaXJlY3QgY2hpbGRcIiBvZiB0aGUgYmxvY2tcbiAgICovXG4gIHByaXZhdGUgX21heUJlQWRkQmxvY2tDaGlsZHJlbihub2RlOiBodG1sLk5vZGUpOiB2b2lkIHtcbiAgICBpZiAodGhpcy5faW5JMThuQmxvY2sgJiYgIXRoaXMuX2luSWN1ICYmIHRoaXMuX2RlcHRoID09IHRoaXMuX2Jsb2NrU3RhcnREZXB0aCkge1xuICAgICAgdGhpcy5fYmxvY2tDaGlsZHJlbi5wdXNoKG5vZGUpO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBNYXJrcyB0aGUgc3RhcnQgb2YgYSBzZWN0aW9uLCBzZWUgYF9jbG9zZVRyYW5zbGF0YWJsZVNlY3Rpb25gXG4gICAqL1xuICBwcml2YXRlIF9vcGVuVHJhbnNsYXRhYmxlU2VjdGlvbihub2RlOiBodG1sLk5vZGUpOiB2b2lkIHtcbiAgICBpZiAodGhpcy5faXNJblRyYW5zbGF0YWJsZVNlY3Rpb24pIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKG5vZGUsICdVbmV4cGVjdGVkIHNlY3Rpb24gc3RhcnQnKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5fbXNnQ291bnRBdFNlY3Rpb25TdGFydCA9IHRoaXMuX21lc3NhZ2VzLmxlbmd0aDtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogQSB0cmFuc2xhdGFibGUgc2VjdGlvbiBjb3VsZCBiZTpcbiAgICogLSB0aGUgY29udGVudCBvZiB0cmFuc2xhdGFibGUgZWxlbWVudCxcbiAgICogLSBub2RlcyBiZXR3ZWVuIGA8IS0tIGkxOG4gLS0+YCBhbmQgYDwhLS0gL2kxOG4gLS0+YCBjb21tZW50c1xuICAgKi9cbiAgcHJpdmF0ZSBnZXQgX2lzSW5UcmFuc2xhdGFibGVTZWN0aW9uKCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiB0aGlzLl9tc2dDb3VudEF0U2VjdGlvblN0YXJ0ICE9PSB2b2lkIDA7XG4gIH1cblxuICAvKipcbiAgICogVGVybWluYXRlcyBhIHNlY3Rpb24uXG4gICAqXG4gICAqIElmIGEgc2VjdGlvbiBoYXMgb25seSBvbmUgc2lnbmlmaWNhbnQgY2hpbGRyZW4gKGNvbW1lbnRzIG5vdCBzaWduaWZpY2FudCkgdGhlbiB3ZSBzaG91bGQgbm90XG4gICAqIGtlZXAgdGhlIG1lc3NhZ2UgZnJvbSB0aGlzIGNoaWxkcmVuOlxuICAgKlxuICAgKiBgPHAgaTE4bj1cIm1lYW5pbmd8ZGVzY3JpcHRpb25cIj57SUNVIG1lc3NhZ2V9PC9wPmAgd291bGQgcHJvZHVjZSB0d28gbWVzc2FnZXM6XG4gICAqIC0gb25lIGZvciB0aGUgPHA+IGNvbnRlbnQgd2l0aCBtZWFuaW5nIGFuZCBkZXNjcmlwdGlvbixcbiAgICogLSBhbm90aGVyIG9uZSBmb3IgdGhlIElDVSBtZXNzYWdlLlxuICAgKlxuICAgKiBJbiB0aGlzIGNhc2UgdGhlIGxhc3QgbWVzc2FnZSBpcyBkaXNjYXJkZWQgYXMgaXQgY29udGFpbnMgbGVzcyBpbmZvcm1hdGlvbiAodGhlIEFTVCBpc1xuICAgKiBvdGhlcndpc2UgaWRlbnRpY2FsKS5cbiAgICpcbiAgICogTm90ZSB0aGF0IHdlIHNob3VsZCBzdGlsbCBrZWVwIG1lc3NhZ2VzIGV4dHJhY3RlZCBmcm9tIGF0dHJpYnV0ZXMgaW5zaWRlIHRoZSBzZWN0aW9uIChpZSBpbiB0aGVcbiAgICogSUNVIG1lc3NhZ2UgaGVyZSlcbiAgICovXG4gIHByaXZhdGUgX2Nsb3NlVHJhbnNsYXRhYmxlU2VjdGlvbihub2RlOiBodG1sLk5vZGUsIGRpcmVjdENoaWxkcmVuOiBodG1sLk5vZGVbXSk6IHZvaWQge1xuICAgIGlmICghdGhpcy5faXNJblRyYW5zbGF0YWJsZVNlY3Rpb24pIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKG5vZGUsICdVbmV4cGVjdGVkIHNlY3Rpb24gZW5kJyk7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3Qgc3RhcnRJbmRleCA9IHRoaXMuX21zZ0NvdW50QXRTZWN0aW9uU3RhcnQ7XG4gICAgY29uc3Qgc2lnbmlmaWNhbnRDaGlsZHJlbjogbnVtYmVyID0gZGlyZWN0Q2hpbGRyZW4ucmVkdWNlKFxuICAgICAgICAoY291bnQ6IG51bWJlciwgbm9kZTogaHRtbC5Ob2RlKTogbnVtYmVyID0+IGNvdW50ICsgKG5vZGUgaW5zdGFuY2VvZiBodG1sLkNvbW1lbnQgPyAwIDogMSksXG4gICAgICAgIDApO1xuXG4gICAgaWYgKHNpZ25pZmljYW50Q2hpbGRyZW4gPT0gMSkge1xuICAgICAgZm9yIChsZXQgaSA9IHRoaXMuX21lc3NhZ2VzLmxlbmd0aCAtIDE7IGkgPj0gc3RhcnRJbmRleCAhOyBpLS0pIHtcbiAgICAgICAgY29uc3QgYXN0ID0gdGhpcy5fbWVzc2FnZXNbaV0ubm9kZXM7XG4gICAgICAgIGlmICghKGFzdC5sZW5ndGggPT0gMSAmJiBhc3RbMF0gaW5zdGFuY2VvZiBpMThuLlRleHQpKSB7XG4gICAgICAgICAgdGhpcy5fbWVzc2FnZXMuc3BsaWNlKGksIDEpO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgdGhpcy5fbXNnQ291bnRBdFNlY3Rpb25TdGFydCA9IHVuZGVmaW5lZDtcbiAgfVxuXG4gIHByaXZhdGUgX3JlcG9ydEVycm9yKG5vZGU6IGh0bWwuTm9kZSwgbXNnOiBzdHJpbmcpOiB2b2lkIHtcbiAgICB0aGlzLl9lcnJvcnMucHVzaChuZXcgSTE4bkVycm9yKG5vZGUuc291cmNlU3BhbiAhLCBtc2cpKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBfaXNPcGVuaW5nQ29tbWVudChuOiBodG1sLk5vZGUpOiBib29sZWFuIHtcbiAgcmV0dXJuICEhKG4gaW5zdGFuY2VvZiBodG1sLkNvbW1lbnQgJiYgbi52YWx1ZSAmJiBuLnZhbHVlLnN0YXJ0c1dpdGgoJ2kxOG4nKSk7XG59XG5cbmZ1bmN0aW9uIF9pc0Nsb3NpbmdDb21tZW50KG46IGh0bWwuTm9kZSk6IGJvb2xlYW4ge1xuICByZXR1cm4gISEobiBpbnN0YW5jZW9mIGh0bWwuQ29tbWVudCAmJiBuLnZhbHVlICYmIG4udmFsdWUgPT09ICcvaTE4bicpO1xufVxuXG5mdW5jdGlvbiBfZ2V0STE4bkF0dHIocDogaHRtbC5FbGVtZW50KTogaHRtbC5BdHRyaWJ1dGV8bnVsbCB7XG4gIHJldHVybiBwLmF0dHJzLmZpbmQoYXR0ciA9PiBhdHRyLm5hbWUgPT09IF9JMThOX0FUVFIpIHx8IG51bGw7XG59XG5cbmZ1bmN0aW9uIF9wYXJzZU1lc3NhZ2VNZXRhKGkxOG4/OiBzdHJpbmcpOiB7bWVhbmluZzogc3RyaW5nLCBkZXNjcmlwdGlvbjogc3RyaW5nLCBpZDogc3RyaW5nfSB7XG4gIGlmICghaTE4bikgcmV0dXJuIHttZWFuaW5nOiAnJywgZGVzY3JpcHRpb246ICcnLCBpZDogJyd9O1xuXG4gIGNvbnN0IGlkSW5kZXggPSBpMThuLmluZGV4T2YoSURfU0VQQVJBVE9SKTtcbiAgY29uc3QgZGVzY0luZGV4ID0gaTE4bi5pbmRleE9mKE1FQU5JTkdfU0VQQVJBVE9SKTtcbiAgY29uc3QgW21lYW5pbmdBbmREZXNjLCBpZF0gPVxuICAgICAgKGlkSW5kZXggPiAtMSkgPyBbaTE4bi5zbGljZSgwLCBpZEluZGV4KSwgaTE4bi5zbGljZShpZEluZGV4ICsgMildIDogW2kxOG4sICcnXTtcbiAgY29uc3QgW21lYW5pbmcsIGRlc2NyaXB0aW9uXSA9IChkZXNjSW5kZXggPiAtMSkgP1xuICAgICAgW21lYW5pbmdBbmREZXNjLnNsaWNlKDAsIGRlc2NJbmRleCksIG1lYW5pbmdBbmREZXNjLnNsaWNlKGRlc2NJbmRleCArIDEpXSA6XG4gICAgICBbJycsIG1lYW5pbmdBbmREZXNjXTtcblxuICByZXR1cm4ge21lYW5pbmcsIGRlc2NyaXB0aW9uLCBpZDogaWQudHJpbSgpfTtcbn1cbiJdfQ==