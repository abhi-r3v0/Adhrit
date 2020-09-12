/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler/src/i18n/extractor_merger", ["require", "exports", "tslib", "@angular/compiler/src/ml_parser/ast", "@angular/compiler/src/ml_parser/parser", "@angular/compiler/src/i18n/i18n_ast", "@angular/compiler/src/i18n/i18n_parser", "@angular/compiler/src/i18n/parse_util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    var html = require("@angular/compiler/src/ml_parser/ast");
    var parser_1 = require("@angular/compiler/src/ml_parser/parser");
    var i18n = require("@angular/compiler/src/i18n/i18n_ast");
    var i18n_parser_1 = require("@angular/compiler/src/i18n/i18n_parser");
    var parse_util_1 = require("@angular/compiler/src/i18n/parse_util");
    var _I18N_ATTR = 'i18n';
    var _I18N_ATTR_PREFIX = 'i18n-';
    var _I18N_COMMENT_PREFIX_REGEXP = /^i18n:?/;
    var MEANING_SEPARATOR = '|';
    var ID_SEPARATOR = '@@';
    var i18nCommentsWarned = false;
    /**
     * Extract translatable messages from an html AST
     */
    function extractMessages(nodes, interpolationConfig, implicitTags, implicitAttrs) {
        var visitor = new _Visitor(implicitTags, implicitAttrs);
        return visitor.extract(nodes, interpolationConfig);
    }
    exports.extractMessages = extractMessages;
    function mergeTranslations(nodes, translations, interpolationConfig, implicitTags, implicitAttrs) {
        var visitor = new _Visitor(implicitTags, implicitAttrs);
        return visitor.merge(nodes, translations, interpolationConfig);
    }
    exports.mergeTranslations = mergeTranslations;
    var ExtractionResult = /** @class */ (function () {
        function ExtractionResult(messages, errors) {
            this.messages = messages;
            this.errors = errors;
        }
        return ExtractionResult;
    }());
    exports.ExtractionResult = ExtractionResult;
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
    var _Visitor = /** @class */ (function () {
        function _Visitor(_implicitTags, _implicitAttrs) {
            this._implicitTags = _implicitTags;
            this._implicitAttrs = _implicitAttrs;
        }
        /**
         * Extracts the messages from the tree
         */
        _Visitor.prototype.extract = function (nodes, interpolationConfig) {
            var _this = this;
            this._init(_VisitorMode.Extract, interpolationConfig);
            nodes.forEach(function (node) { return node.visit(_this, null); });
            if (this._inI18nBlock) {
                this._reportError(nodes[nodes.length - 1], 'Unclosed block');
            }
            return new ExtractionResult(this._messages, this._errors);
        };
        /**
         * Returns a tree where all translatable nodes are translated
         */
        _Visitor.prototype.merge = function (nodes, translations, interpolationConfig) {
            this._init(_VisitorMode.Merge, interpolationConfig);
            this._translations = translations;
            // Construct a single fake root element
            var wrapper = new html.Element('wrapper', [], nodes, undefined, undefined, undefined);
            var translatedNode = wrapper.visit(this, null);
            if (this._inI18nBlock) {
                this._reportError(nodes[nodes.length - 1], 'Unclosed block');
            }
            return new parser_1.ParseTreeResult(translatedNode.children, this._errors);
        };
        _Visitor.prototype.visitExpansionCase = function (icuCase, context) {
            // Parse cases for translatable html attributes
            var expression = html.visitAll(this, icuCase.expression, context);
            if (this._mode === _VisitorMode.Merge) {
                return new html.ExpansionCase(icuCase.value, expression, icuCase.sourceSpan, icuCase.valueSourceSpan, icuCase.expSourceSpan);
            }
        };
        _Visitor.prototype.visitExpansion = function (icu, context) {
            this._mayBeAddBlockChildren(icu);
            var wasInIcu = this._inIcu;
            if (!this._inIcu) {
                // nested ICU messages should not be extracted but top-level translated as a whole
                if (this._isInTranslatableSection) {
                    this._addMessage([icu]);
                }
                this._inIcu = true;
            }
            var cases = html.visitAll(this, icu.cases, context);
            if (this._mode === _VisitorMode.Merge) {
                icu = new html.Expansion(icu.switchValue, icu.type, cases, icu.sourceSpan, icu.switchValueSourceSpan);
            }
            this._inIcu = wasInIcu;
            return icu;
        };
        _Visitor.prototype.visitComment = function (comment, context) {
            var isOpening = _isOpeningComment(comment);
            if (isOpening && this._isInTranslatableSection) {
                this._reportError(comment, 'Could not start a block inside a translatable section');
                return;
            }
            var isClosing = _isClosingComment(comment);
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
                            var details = comment.sourceSpan.details ? ", " + comment.sourceSpan.details : '';
                            // TODO(ocombe): use a log service once there is a public one available
                            console.warn("I18n comments are deprecated, use an <ng-container> element instead (" + comment.sourceSpan.start + details + ")");
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
                            var message = this._addMessage(this._blockChildren, this._blockMeaningAndDesc);
                            // merge attributes in sections
                            var nodes = this._translateMessage(comment, message);
                            return html.visitAll(this, nodes);
                        }
                        else {
                            this._reportError(comment, 'I18N blocks should not cross element boundaries');
                            return;
                        }
                    }
                }
            }
        };
        _Visitor.prototype.visitText = function (text, context) {
            if (this._isInTranslatableSection) {
                this._mayBeAddBlockChildren(text);
            }
            return text;
        };
        _Visitor.prototype.visitElement = function (el, context) {
            var _this = this;
            this._mayBeAddBlockChildren(el);
            this._depth++;
            var wasInI18nNode = this._inI18nNode;
            var wasInImplicitNode = this._inImplicitNode;
            var childNodes = [];
            var translatedChildNodes = undefined;
            // Extract:
            // - top level nodes with the (implicit) "i18n" attribute if not already in a section
            // - ICU messages
            var i18nAttr = _getI18nAttr(el);
            var i18nMeta = i18nAttr ? i18nAttr.value : '';
            var isImplicit = this._implicitTags.some(function (tag) { return el.name === tag; }) && !this._inIcu &&
                !this._isInTranslatableSection;
            var isTopLevelImplicit = !wasInImplicitNode && isImplicit;
            this._inImplicitNode = wasInImplicitNode || isImplicit;
            if (!this._isInTranslatableSection && !this._inIcu) {
                if (i18nAttr || isTopLevelImplicit) {
                    this._inI18nNode = true;
                    var message = this._addMessage(el.children, i18nMeta);
                    translatedChildNodes = this._translateMessage(el, message);
                }
                if (this._mode == _VisitorMode.Extract) {
                    var isTranslatable = i18nAttr || isTopLevelImplicit;
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
                var visitNodes = translatedChildNodes || el.children;
                visitNodes.forEach(function (child) {
                    var visited = child.visit(_this, context);
                    if (visited && !_this._isInTranslatableSection) {
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
                var translatedAttrs = this._translateAttributes(el);
                return new html.Element(el.name, translatedAttrs, childNodes, el.sourceSpan, el.startSourceSpan, el.endSourceSpan);
            }
            return null;
        };
        _Visitor.prototype.visitAttribute = function (attribute, context) {
            throw new Error('unreachable code');
        };
        _Visitor.prototype._init = function (mode, interpolationConfig) {
            this._mode = mode;
            this._inI18nBlock = false;
            this._inI18nNode = false;
            this._depth = 0;
            this._inIcu = false;
            this._msgCountAtSectionStart = undefined;
            this._errors = [];
            this._messages = [];
            this._inImplicitNode = false;
            this._createI18nMessage = i18n_parser_1.createI18nMessageFactory(interpolationConfig);
        };
        // looks for translatable attributes
        _Visitor.prototype._visitAttributesOf = function (el) {
            var _this = this;
            var explicitAttrNameToValue = {};
            var implicitAttrNames = this._implicitAttrs[el.name] || [];
            el.attrs.filter(function (attr) { return attr.name.startsWith(_I18N_ATTR_PREFIX); })
                .forEach(function (attr) { return explicitAttrNameToValue[attr.name.slice(_I18N_ATTR_PREFIX.length)] =
                attr.value; });
            el.attrs.forEach(function (attr) {
                if (attr.name in explicitAttrNameToValue) {
                    _this._addMessage([attr], explicitAttrNameToValue[attr.name]);
                }
                else if (implicitAttrNames.some(function (name) { return attr.name === name; })) {
                    _this._addMessage([attr]);
                }
            });
        };
        // add a translatable message
        _Visitor.prototype._addMessage = function (ast, msgMeta) {
            if (ast.length == 0 ||
                ast.length == 1 && ast[0] instanceof html.Attribute && !ast[0].value) {
                // Do not create empty messages
                return null;
            }
            var _a = _parseMessageMeta(msgMeta), meaning = _a.meaning, description = _a.description, id = _a.id;
            var message = this._createI18nMessage(ast, meaning, description, id);
            this._messages.push(message);
            return message;
        };
        // Translates the given message given the `TranslationBundle`
        // This is used for translating elements / blocks - see `_translateAttributes` for attributes
        // no-op when called in extraction mode (returns [])
        _Visitor.prototype._translateMessage = function (el, message) {
            if (message && this._mode === _VisitorMode.Merge) {
                var nodes = this._translations.get(message);
                if (nodes) {
                    return nodes;
                }
                this._reportError(el, "Translation unavailable for message id=\"" + this._translations.digest(message) + "\"");
            }
            return [];
        };
        // translate the attributes of an element and remove i18n specific attributes
        _Visitor.prototype._translateAttributes = function (el) {
            var _this = this;
            var attributes = el.attrs;
            var i18nParsedMessageMeta = {};
            attributes.forEach(function (attr) {
                if (attr.name.startsWith(_I18N_ATTR_PREFIX)) {
                    i18nParsedMessageMeta[attr.name.slice(_I18N_ATTR_PREFIX.length)] =
                        _parseMessageMeta(attr.value);
                }
            });
            var translatedAttributes = [];
            attributes.forEach(function (attr) {
                if (attr.name === _I18N_ATTR || attr.name.startsWith(_I18N_ATTR_PREFIX)) {
                    // strip i18n specific attributes
                    return;
                }
                if (attr.value && attr.value != '' && i18nParsedMessageMeta.hasOwnProperty(attr.name)) {
                    var _a = i18nParsedMessageMeta[attr.name], meaning = _a.meaning, description = _a.description, id = _a.id;
                    var message = _this._createI18nMessage([attr], meaning, description, id);
                    var nodes = _this._translations.get(message);
                    if (nodes) {
                        if (nodes.length == 0) {
                            translatedAttributes.push(new html.Attribute(attr.name, '', attr.sourceSpan));
                        }
                        else if (nodes[0] instanceof html.Text) {
                            var value = nodes[0].value;
                            translatedAttributes.push(new html.Attribute(attr.name, value, attr.sourceSpan));
                        }
                        else {
                            _this._reportError(el, "Unexpected translation for attribute \"" + attr.name + "\" (id=\"" + (id || _this._translations.digest(message)) + "\")");
                        }
                    }
                    else {
                        _this._reportError(el, "Translation unavailable for attribute \"" + attr.name + "\" (id=\"" + (id || _this._translations.digest(message)) + "\")");
                    }
                }
                else {
                    translatedAttributes.push(attr);
                }
            });
            return translatedAttributes;
        };
        /**
         * Add the node as a child of the block when:
         * - we are in a block,
         * - we are not inside a ICU message (those are handled separately),
         * - the node is a "direct child" of the block
         */
        _Visitor.prototype._mayBeAddBlockChildren = function (node) {
            if (this._inI18nBlock && !this._inIcu && this._depth == this._blockStartDepth) {
                this._blockChildren.push(node);
            }
        };
        /**
         * Marks the start of a section, see `_closeTranslatableSection`
         */
        _Visitor.prototype._openTranslatableSection = function (node) {
            if (this._isInTranslatableSection) {
                this._reportError(node, 'Unexpected section start');
            }
            else {
                this._msgCountAtSectionStart = this._messages.length;
            }
        };
        Object.defineProperty(_Visitor.prototype, "_isInTranslatableSection", {
            /**
             * A translatable section could be:
             * - the content of translatable element,
             * - nodes between `<!-- i18n -->` and `<!-- /i18n -->` comments
             */
            get: function () {
                return this._msgCountAtSectionStart !== void 0;
            },
            enumerable: true,
            configurable: true
        });
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
        _Visitor.prototype._closeTranslatableSection = function (node, directChildren) {
            if (!this._isInTranslatableSection) {
                this._reportError(node, 'Unexpected section end');
                return;
            }
            var startIndex = this._msgCountAtSectionStart;
            var significantChildren = directChildren.reduce(function (count, node) { return count + (node instanceof html.Comment ? 0 : 1); }, 0);
            if (significantChildren == 1) {
                for (var i = this._messages.length - 1; i >= startIndex; i--) {
                    var ast = this._messages[i].nodes;
                    if (!(ast.length == 1 && ast[0] instanceof i18n.Text)) {
                        this._messages.splice(i, 1);
                        break;
                    }
                }
            }
            this._msgCountAtSectionStart = undefined;
        };
        _Visitor.prototype._reportError = function (node, msg) {
            this._errors.push(new parse_util_1.I18nError(node.sourceSpan, msg));
        };
        return _Visitor;
    }());
    function _isOpeningComment(n) {
        return !!(n instanceof html.Comment && n.value && n.value.startsWith('i18n'));
    }
    function _isClosingComment(n) {
        return !!(n instanceof html.Comment && n.value && n.value === '/i18n');
    }
    function _getI18nAttr(p) {
        return p.attrs.find(function (attr) { return attr.name === _I18N_ATTR; }) || null;
    }
    function _parseMessageMeta(i18n) {
        if (!i18n)
            return { meaning: '', description: '', id: '' };
        var idIndex = i18n.indexOf(ID_SEPARATOR);
        var descIndex = i18n.indexOf(MEANING_SEPARATOR);
        var _a = tslib_1.__read((idIndex > -1) ? [i18n.slice(0, idIndex), i18n.slice(idIndex + 2)] : [i18n, ''], 2), meaningAndDesc = _a[0], id = _a[1];
        var _b = tslib_1.__read((descIndex > -1) ?
            [meaningAndDesc.slice(0, descIndex), meaningAndDesc.slice(descIndex + 1)] :
            ['', meaningAndDesc], 2), meaning = _b[0], description = _b[1];
        return { meaning: meaning, description: description, id: id.trim() };
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXh0cmFjdG9yX21lcmdlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9pMThuL2V4dHJhY3Rvcl9tZXJnZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7O0lBRUgsMERBQXlDO0lBRXpDLGlFQUFvRDtJQUNwRCwwREFBbUM7SUFDbkMsc0VBQTJFO0lBQzNFLG9FQUF1QztJQUd2QyxJQUFNLFVBQVUsR0FBRyxNQUFNLENBQUM7SUFDMUIsSUFBTSxpQkFBaUIsR0FBRyxPQUFPLENBQUM7SUFDbEMsSUFBTSwyQkFBMkIsR0FBRyxTQUFTLENBQUM7SUFDOUMsSUFBTSxpQkFBaUIsR0FBRyxHQUFHLENBQUM7SUFDOUIsSUFBTSxZQUFZLEdBQUcsSUFBSSxDQUFDO0lBQzFCLElBQUksa0JBQWtCLEdBQUcsS0FBSyxDQUFDO0lBRS9COztPQUVHO0lBQ0gsU0FBZ0IsZUFBZSxDQUMzQixLQUFrQixFQUFFLG1CQUF3QyxFQUFFLFlBQXNCLEVBQ3BGLGFBQXNDO1FBQ3hDLElBQU0sT0FBTyxHQUFHLElBQUksUUFBUSxDQUFDLFlBQVksRUFBRSxhQUFhLENBQUMsQ0FBQztRQUMxRCxPQUFPLE9BQU8sQ0FBQyxPQUFPLENBQUMsS0FBSyxFQUFFLG1CQUFtQixDQUFDLENBQUM7SUFDckQsQ0FBQztJQUxELDBDQUtDO0lBRUQsU0FBZ0IsaUJBQWlCLENBQzdCLEtBQWtCLEVBQUUsWUFBK0IsRUFBRSxtQkFBd0MsRUFDN0YsWUFBc0IsRUFBRSxhQUFzQztRQUNoRSxJQUFNLE9BQU8sR0FBRyxJQUFJLFFBQVEsQ0FBQyxZQUFZLEVBQUUsYUFBYSxDQUFDLENBQUM7UUFDMUQsT0FBTyxPQUFPLENBQUMsS0FBSyxDQUFDLEtBQUssRUFBRSxZQUFZLEVBQUUsbUJBQW1CLENBQUMsQ0FBQztJQUNqRSxDQUFDO0lBTEQsOENBS0M7SUFFRDtRQUNF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QixDQUFDLENBQUM7UUFDNUMsSUFBQSx1R0FDNkUsRUFENUUsc0JBQWMsRUFBRSxVQUM0RCxDQUFDO1FBQzlFLElBQUE7O29DQUVrQixFQUZqQixlQUFPLEVBQUUsbUJBRVEsQ0FBQztRQUV6QixPQUFPLEVBQUMsT0FBTyxTQUFBLEVBQUUsV0FBVyxhQUFBLEVBQUUsRUFBRSxFQUFFLEVBQUUsQ0FBQyxJQUFJLEVBQUUsRUFBQyxDQUFDO0lBQy9DLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCAqIGFzIGh0bWwgZnJvbSAnLi4vbWxfcGFyc2VyL2FzdCc7XG5pbXBvcnQge0ludGVycG9sYXRpb25Db25maWd9IGZyb20gJy4uL21sX3BhcnNlci9pbnRlcnBvbGF0aW9uX2NvbmZpZyc7XG5pbXBvcnQge1BhcnNlVHJlZVJlc3VsdH0gZnJvbSAnLi4vbWxfcGFyc2VyL3BhcnNlcic7XG5pbXBvcnQgKiBhcyBpMThuIGZyb20gJy4vaTE4bl9hc3QnO1xuaW1wb3J0IHtJMThuTWVzc2FnZUZhY3RvcnksIGNyZWF0ZUkxOG5NZXNzYWdlRmFjdG9yeX0gZnJvbSAnLi9pMThuX3BhcnNlcic7XG5pbXBvcnQge0kxOG5FcnJvcn0gZnJvbSAnLi9wYXJzZV91dGlsJztcbmltcG9ydCB7VHJhbnNsYXRpb25CdW5kbGV9IGZyb20gJy4vdHJhbnNsYXRpb25fYnVuZGxlJztcblxuY29uc3QgX0kxOE5fQVRUUiA9ICdpMThuJztcbmNvbnN0IF9JMThOX0FUVFJfUFJFRklYID0gJ2kxOG4tJztcbmNvbnN0IF9JMThOX0NPTU1FTlRfUFJFRklYX1JFR0VYUCA9IC9eaTE4bjo/LztcbmNvbnN0IE1FQU5JTkdfU0VQQVJBVE9SID0gJ3wnO1xuY29uc3QgSURfU0VQQVJBVE9SID0gJ0BAJztcbmxldCBpMThuQ29tbWVudHNXYXJuZWQgPSBmYWxzZTtcblxuLyoqXG4gKiBFeHRyYWN0IHRyYW5zbGF0YWJsZSBtZXNzYWdlcyBmcm9tIGFuIGh0bWwgQVNUXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBleHRyYWN0TWVzc2FnZXMoXG4gICAgbm9kZXM6IGh0bWwuTm9kZVtdLCBpbnRlcnBvbGF0aW9uQ29uZmlnOiBJbnRlcnBvbGF0aW9uQ29uZmlnLCBpbXBsaWNpdFRhZ3M6IHN0cmluZ1tdLFxuICAgIGltcGxpY2l0QXR0cnM6IHtbazogc3RyaW5nXTogc3RyaW5nW119KTogRXh0cmFjdGlvblJlc3VsdCB7XG4gIGNvbnN0IHZpc2l0b3IgPSBuZXcgX1Zpc2l0b3IoaW1wbGljaXRUYWdzLCBpbXBsaWNpdEF0dHJzKTtcbiAgcmV0dXJuIHZpc2l0b3IuZXh0cmFjdChub2RlcywgaW50ZXJwb2xhdGlvbkNvbmZpZyk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBtZXJnZVRyYW5zbGF0aW9ucyhcbiAgICBub2RlczogaHRtbC5Ob2RlW10sIHRyYW5zbGF0aW9uczogVHJhbnNsYXRpb25CdW5kbGUsIGludGVycG9sYXRpb25Db25maWc6IEludGVycG9sYXRpb25Db25maWcsXG4gICAgaW1wbGljaXRUYWdzOiBzdHJpbmdbXSwgaW1wbGljaXRBdHRyczoge1trOiBzdHJpbmddOiBzdHJpbmdbXX0pOiBQYXJzZVRyZWVSZXN1bHQge1xuICBjb25zdCB2aXNpdG9yID0gbmV3IF9WaXNpdG9yKGltcGxpY2l0VGFncywgaW1wbGljaXRBdHRycyk7XG4gIHJldHVybiB2aXNpdG9yLm1lcmdlKG5vZGVzLCB0cmFuc2xhdGlvbnMsIGludGVycG9sYXRpb25Db25maWcpO1xufVxuXG5leHBvcnQgY2xhc3MgRXh0cmFjdGlvblJlc3VsdCB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBtZXNzYWdlczogaTE4bi5NZXNzYWdlW10sIHB1YmxpYyBlcnJvcnM6IEkxOG5FcnJvcltdKSB7fVxufVxuXG5lbnVtIF9WaXNpdG9yTW9kZSB7XG4gIEV4dHJhY3QsXG4gIE1lcmdlXG59XG5cbi8qKlxuICogVGhpcyBWaXNpdG9yIGlzIHVzZWQ6XG4gKiAxLiB0byBleHRyYWN0IGFsbCB0aGUgdHJhbnNsYXRhYmxlIHN0cmluZ3MgZnJvbSBhbiBodG1sIEFTVCAoc2VlIGBleHRyYWN0KClgKSxcbiAqIDIuIHRvIHJlcGxhY2UgdGhlIHRyYW5zbGF0YWJsZSBzdHJpbmdzIHdpdGggdGhlIGFjdHVhbCB0cmFuc2xhdGlvbnMgKHNlZSBgbWVyZ2UoKWApXG4gKlxuICogQGludGVybmFsXG4gKi9cbmNsYXNzIF9WaXNpdG9yIGltcGxlbWVudHMgaHRtbC5WaXNpdG9yIHtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIHByaXZhdGUgX2RlcHRoICE6IG51bWJlcjtcblxuICAvLyA8ZWwgaTE4bj4uLi48L2VsPlxuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfaW5JMThuTm9kZSAhOiBib29sZWFuO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfaW5JbXBsaWNpdE5vZGUgITogYm9vbGVhbjtcblxuICAvLyA8IS0taTE4bi0tPi4uLjwhLS0vaTE4bi0tPlxuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfaW5JMThuQmxvY2sgITogYm9vbGVhbjtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIHByaXZhdGUgX2Jsb2NrTWVhbmluZ0FuZERlc2MgITogc3RyaW5nO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfYmxvY2tDaGlsZHJlbiAhOiBodG1sLk5vZGVbXTtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIHByaXZhdGUgX2Jsb2NrU3RhcnREZXB0aCAhOiBudW1iZXI7XG5cbiAgLy8gezxpY3UgbWVzc2FnZT59XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9pbkljdSAhOiBib29sZWFuO1xuXG4gIC8vIHNldCB0byB2b2lkIDAgd2hlbiBub3QgaW4gYSBzZWN0aW9uXG4gIHByaXZhdGUgX21zZ0NvdW50QXRTZWN0aW9uU3RhcnQ6IG51bWJlcnx1bmRlZmluZWQ7XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9lcnJvcnMgITogSTE4bkVycm9yW107XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9tb2RlICE6IF9WaXNpdG9yTW9kZTtcblxuICAvLyBfVmlzaXRvck1vZGUuRXh0cmFjdCBvbmx5XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9tZXNzYWdlcyAhOiBpMThuLk1lc3NhZ2VbXTtcblxuICAvLyBfVmlzaXRvck1vZGUuTWVyZ2Ugb25seVxuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfdHJhbnNsYXRpb25zICE6IFRyYW5zbGF0aW9uQnVuZGxlO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfY3JlYXRlSTE4bk1lc3NhZ2UgITogSTE4bk1lc3NhZ2VGYWN0b3J5O1xuXG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSBfaW1wbGljaXRUYWdzOiBzdHJpbmdbXSwgcHJpdmF0ZSBfaW1wbGljaXRBdHRyczoge1trOiBzdHJpbmddOiBzdHJpbmdbXX0pIHt9XG5cbiAgLyoqXG4gICAqIEV4dHJhY3RzIHRoZSBtZXNzYWdlcyBmcm9tIHRoZSB0cmVlXG4gICAqL1xuICBleHRyYWN0KG5vZGVzOiBodG1sLk5vZGVbXSwgaW50ZXJwb2xhdGlvbkNvbmZpZzogSW50ZXJwb2xhdGlvbkNvbmZpZyk6IEV4dHJhY3Rpb25SZXN1bHQge1xuICAgIHRoaXMuX2luaXQoX1Zpc2l0b3JNb2RlLkV4dHJhY3QsIGludGVycG9sYXRpb25Db25maWcpO1xuXG4gICAgbm9kZXMuZm9yRWFjaChub2RlID0+IG5vZGUudmlzaXQodGhpcywgbnVsbCkpO1xuXG4gICAgaWYgKHRoaXMuX2luSTE4bkJsb2NrKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihub2Rlc1tub2Rlcy5sZW5ndGggLSAxXSwgJ1VuY2xvc2VkIGJsb2NrJyk7XG4gICAgfVxuXG4gICAgcmV0dXJuIG5ldyBFeHRyYWN0aW9uUmVzdWx0KHRoaXMuX21lc3NhZ2VzLCB0aGlzLl9lcnJvcnMpO1xuICB9XG5cbiAgLyoqXG4gICAqIFJldHVybnMgYSB0cmVlIHdoZXJlIGFsbCB0cmFuc2xhdGFibGUgbm9kZXMgYXJlIHRyYW5zbGF0ZWRcbiAgICovXG4gIG1lcmdlKFxuICAgICAgbm9kZXM6IGh0bWwuTm9kZVtdLCB0cmFuc2xhdGlvbnM6IFRyYW5zbGF0aW9uQnVuZGxlLFxuICAgICAgaW50ZXJwb2xhdGlvbkNvbmZpZzogSW50ZXJwb2xhdGlvbkNvbmZpZyk6IFBhcnNlVHJlZVJlc3VsdCB7XG4gICAgdGhpcy5faW5pdChfVmlzaXRvck1vZGUuTWVyZ2UsIGludGVycG9sYXRpb25Db25maWcpO1xuICAgIHRoaXMuX3RyYW5zbGF0aW9ucyA9IHRyYW5zbGF0aW9ucztcblxuICAgIC8vIENvbnN0cnVjdCBhIHNpbmdsZSBmYWtlIHJvb3QgZWxlbWVudFxuICAgIGNvbnN0IHdyYXBwZXIgPSBuZXcgaHRtbC5FbGVtZW50KCd3cmFwcGVyJywgW10sIG5vZGVzLCB1bmRlZmluZWQgISwgdW5kZWZpbmVkLCB1bmRlZmluZWQpO1xuXG4gICAgY29uc3QgdHJhbnNsYXRlZE5vZGUgPSB3cmFwcGVyLnZpc2l0KHRoaXMsIG51bGwpO1xuXG4gICAgaWYgKHRoaXMuX2luSTE4bkJsb2NrKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihub2Rlc1tub2Rlcy5sZW5ndGggLSAxXSwgJ1VuY2xvc2VkIGJsb2NrJyk7XG4gICAgfVxuXG4gICAgcmV0dXJuIG5ldyBQYXJzZVRyZWVSZXN1bHQodHJhbnNsYXRlZE5vZGUuY2hpbGRyZW4sIHRoaXMuX2Vycm9ycyk7XG4gIH1cblxuICB2aXNpdEV4cGFuc2lvbkNhc2UoaWN1Q2FzZTogaHRtbC5FeHBhbnNpb25DYXNlLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIC8vIFBhcnNlIGNhc2VzIGZvciB0cmFuc2xhdGFibGUgaHRtbCBhdHRyaWJ1dGVzXG4gICAgY29uc3QgZXhwcmVzc2lvbiA9IGh0bWwudmlzaXRBbGwodGhpcywgaWN1Q2FzZS5leHByZXNzaW9uLCBjb250ZXh0KTtcblxuICAgIGlmICh0aGlzLl9tb2RlID09PSBfVmlzaXRvck1vZGUuTWVyZ2UpIHtcbiAgICAgIHJldHVybiBuZXcgaHRtbC5FeHBhbnNpb25DYXNlKFxuICAgICAgICAgIGljdUNhc2UudmFsdWUsIGV4cHJlc3Npb24sIGljdUNhc2Uuc291cmNlU3BhbiwgaWN1Q2FzZS52YWx1ZVNvdXJjZVNwYW4sXG4gICAgICAgICAgaWN1Q2FzZS5leHBTb3VyY2VTcGFuKTtcbiAgICB9XG4gIH1cblxuICB2aXNpdEV4cGFuc2lvbihpY3U6IGh0bWwuRXhwYW5zaW9uLCBjb250ZXh0OiBhbnkpOiBodG1sLkV4cGFuc2lvbiB7XG4gICAgdGhpcy5fbWF5QmVBZGRCbG9ja0NoaWxkcmVuKGljdSk7XG5cbiAgICBjb25zdCB3YXNJbkljdSA9IHRoaXMuX2luSWN1O1xuXG4gICAgaWYgKCF0aGlzLl9pbkljdSkge1xuICAgICAgLy8gbmVzdGVkIElDVSBtZXNzYWdlcyBzaG91bGQgbm90IGJlIGV4dHJhY3RlZCBidXQgdG9wLWxldmVsIHRyYW5zbGF0ZWQgYXMgYSB3aG9sZVxuICAgICAgaWYgKHRoaXMuX2lzSW5UcmFuc2xhdGFibGVTZWN0aW9uKSB7XG4gICAgICAgIHRoaXMuX2FkZE1lc3NhZ2UoW2ljdV0pO1xuICAgICAgfVxuICAgICAgdGhpcy5faW5JY3UgPSB0cnVlO1xuICAgIH1cblxuICAgIGNvbnN0IGNhc2VzID0gaHRtbC52aXNpdEFsbCh0aGlzLCBpY3UuY2FzZXMsIGNvbnRleHQpO1xuXG4gICAgaWYgKHRoaXMuX21vZGUgPT09IF9WaXNpdG9yTW9kZS5NZXJnZSkge1xuICAgICAgaWN1ID0gbmV3IGh0bWwuRXhwYW5zaW9uKFxuICAgICAgICAgIGljdS5zd2l0Y2hWYWx1ZSwgaWN1LnR5cGUsIGNhc2VzLCBpY3Uuc291cmNlU3BhbiwgaWN1LnN3aXRjaFZhbHVlU291cmNlU3Bhbik7XG4gICAgfVxuXG4gICAgdGhpcy5faW5JY3UgPSB3YXNJbkljdTtcblxuICAgIHJldHVybiBpY3U7XG4gIH1cblxuICB2aXNpdENvbW1lbnQoY29tbWVudDogaHRtbC5Db21tZW50LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGNvbnN0IGlzT3BlbmluZyA9IF9pc09wZW5pbmdDb21tZW50KGNvbW1lbnQpO1xuXG4gICAgaWYgKGlzT3BlbmluZyAmJiB0aGlzLl9pc0luVHJhbnNsYXRhYmxlU2VjdGlvbikge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoY29tbWVudCwgJ0NvdWxkIG5vdCBzdGFydCBhIGJsb2NrIGluc2lkZSBhIHRyYW5zbGF0YWJsZSBzZWN0aW9uJyk7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3QgaXNDbG9zaW5nID0gX2lzQ2xvc2luZ0NvbW1lbnQoY29tbWVudCk7XG5cbiAgICBpZiAoaXNDbG9zaW5nICYmICF0aGlzLl9pbkkxOG5CbG9jaykge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoY29tbWVudCwgJ1RyeWluZyB0byBjbG9zZSBhbiB1bm9wZW5lZCBibG9jaycpO1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIGlmICghdGhpcy5faW5JMThuTm9kZSAmJiAhdGhpcy5faW5JY3UpIHtcbiAgICAgIGlmICghdGhpcy5faW5JMThuQmxvY2spIHtcbiAgICAgICAgaWYgKGlzT3BlbmluZykge1xuICAgICAgICAgIC8vIGRlcHJlY2F0ZWQgZnJvbSB2NSB5b3Ugc2hvdWxkIHVzZSA8bmctY29udGFpbmVyIGkxOG4+IGluc3RlYWQgb2YgaTE4biBjb21tZW50c1xuICAgICAgICAgIGlmICghaTE4bkNvbW1lbnRzV2FybmVkICYmIDxhbnk+Y29uc29sZSAmJiA8YW55PmNvbnNvbGUud2Fybikge1xuICAgICAgICAgICAgaTE4bkNvbW1lbnRzV2FybmVkID0gdHJ1ZTtcbiAgICAgICAgICAgIGNvbnN0IGRldGFpbHMgPSBjb21tZW50LnNvdXJjZVNwYW4uZGV0YWlscyA/IGAsICR7Y29tbWVudC5zb3VyY2VTcGFuLmRldGFpbHN9YCA6ICcnO1xuICAgICAgICAgICAgLy8gVE9ETyhvY29tYmUpOiB1c2UgYSBsb2cgc2VydmljZSBvbmNlIHRoZXJlIGlzIGEgcHVibGljIG9uZSBhdmFpbGFibGVcbiAgICAgICAgICAgIGNvbnNvbGUud2FybihcbiAgICAgICAgICAgICAgICBgSTE4biBjb21tZW50cyBhcmUgZGVwcmVjYXRlZCwgdXNlIGFuIDxuZy1jb250YWluZXI+IGVsZW1lbnQgaW5zdGVhZCAoJHtjb21tZW50LnNvdXJjZVNwYW4uc3RhcnR9JHtkZXRhaWxzfSlgKTtcbiAgICAgICAgICB9XG4gICAgICAgICAgdGhpcy5faW5JMThuQmxvY2sgPSB0cnVlO1xuICAgICAgICAgIHRoaXMuX2Jsb2NrU3RhcnREZXB0aCA9IHRoaXMuX2RlcHRoO1xuICAgICAgICAgIHRoaXMuX2Jsb2NrQ2hpbGRyZW4gPSBbXTtcbiAgICAgICAgICB0aGlzLl9ibG9ja01lYW5pbmdBbmREZXNjID1cbiAgICAgICAgICAgICAgY29tbWVudC52YWx1ZSAhLnJlcGxhY2UoX0kxOE5fQ09NTUVOVF9QUkVGSVhfUkVHRVhQLCAnJykudHJpbSgpO1xuICAgICAgICAgIHRoaXMuX29wZW5UcmFuc2xhdGFibGVTZWN0aW9uKGNvbW1lbnQpO1xuICAgICAgICB9XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBpZiAoaXNDbG9zaW5nKSB7XG4gICAgICAgICAgaWYgKHRoaXMuX2RlcHRoID09IHRoaXMuX2Jsb2NrU3RhcnREZXB0aCkge1xuICAgICAgICAgICAgdGhpcy5fY2xvc2VUcmFuc2xhdGFibGVTZWN0aW9uKGNvbW1lbnQsIHRoaXMuX2Jsb2NrQ2hpbGRyZW4pO1xuICAgICAgICAgICAgdGhpcy5faW5JMThuQmxvY2sgPSBmYWxzZTtcbiAgICAgICAgICAgIGNvbnN0IG1lc3NhZ2UgPSB0aGlzLl9hZGRNZXNzYWdlKHRoaXMuX2Jsb2NrQ2hpbGRyZW4sIHRoaXMuX2Jsb2NrTWVhbmluZ0FuZERlc2MpICE7XG4gICAgICAgICAgICAvLyBtZXJnZSBhdHRyaWJ1dGVzIGluIHNlY3Rpb25zXG4gICAgICAgICAgICBjb25zdCBub2RlcyA9IHRoaXMuX3RyYW5zbGF0ZU1lc3NhZ2UoY29tbWVudCwgbWVzc2FnZSk7XG4gICAgICAgICAgICByZXR1cm4gaHRtbC52aXNpdEFsbCh0aGlzLCBub2Rlcyk7XG4gICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKGNvbW1lbnQsICdJMThOIGJsb2NrcyBzaG91bGQgbm90IGNyb3NzIGVsZW1lbnQgYm91bmRhcmllcycpO1xuICAgICAgICAgICAgcmV0dXJuO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHZpc2l0VGV4dCh0ZXh0OiBodG1sLlRleHQsIGNvbnRleHQ6IGFueSk6IGh0bWwuVGV4dCB7XG4gICAgaWYgKHRoaXMuX2lzSW5UcmFuc2xhdGFibGVTZWN0aW9uKSB7XG4gICAgICB0aGlzLl9tYXlCZUFkZEJsb2NrQ2hpbGRyZW4odGV4dCk7XG4gICAgfVxuICAgIHJldHVybiB0ZXh0O1xuICB9XG5cbiAgdmlzaXRFbGVtZW50KGVsOiBodG1sLkVsZW1lbnQsIGNvbnRleHQ6IGFueSk6IGh0bWwuRWxlbWVudHxudWxsIHtcbiAgICB0aGlzLl9tYXlCZUFkZEJsb2NrQ2hpbGRyZW4oZWwpO1xuICAgIHRoaXMuX2RlcHRoKys7XG4gICAgY29uc3Qgd2FzSW5JMThuTm9kZSA9IHRoaXMuX2luSTE4bk5vZGU7XG4gICAgY29uc3Qgd2FzSW5JbXBsaWNpdE5vZGUgPSB0aGlzLl9pbkltcGxpY2l0Tm9kZTtcbiAgICBsZXQgY2hpbGROb2RlczogaHRtbC5Ob2RlW10gPSBbXTtcbiAgICBsZXQgdHJhbnNsYXRlZENoaWxkTm9kZXM6IGh0bWwuTm9kZVtdID0gdW5kZWZpbmVkICE7XG5cbiAgICAvLyBFeHRyYWN0OlxuICAgIC8vIC0gdG9wIGxldmVsIG5vZGVzIHdpdGggdGhlIChpbXBsaWNpdCkgXCJpMThuXCIgYXR0cmlidXRlIGlmIG5vdCBhbHJlYWR5IGluIGEgc2VjdGlvblxuICAgIC8vIC0gSUNVIG1lc3NhZ2VzXG4gICAgY29uc3QgaTE4bkF0dHIgPSBfZ2V0STE4bkF0dHIoZWwpO1xuICAgIGNvbnN0IGkxOG5NZXRhID0gaTE4bkF0dHIgPyBpMThuQXR0ci52YWx1ZSA6ICcnO1xuICAgIGNvbnN0IGlzSW1wbGljaXQgPSB0aGlzLl9pbXBsaWNpdFRhZ3Muc29tZSh0YWcgPT4gZWwubmFtZSA9PT0gdGFnKSAmJiAhdGhpcy5faW5JY3UgJiZcbiAgICAgICAgIXRoaXMuX2lzSW5UcmFuc2xhdGFibGVTZWN0aW9uO1xuICAgIGNvbnN0IGlzVG9wTGV2ZWxJbXBsaWNpdCA9ICF3YXNJbkltcGxpY2l0Tm9kZSAmJiBpc0ltcGxpY2l0O1xuICAgIHRoaXMuX2luSW1wbGljaXROb2RlID0gd2FzSW5JbXBsaWNpdE5vZGUgfHwgaXNJbXBsaWNpdDtcblxuICAgIGlmICghdGhpcy5faXNJblRyYW5zbGF0YWJsZVNlY3Rpb24gJiYgIXRoaXMuX2luSWN1KSB7XG4gICAgICBpZiAoaTE4bkF0dHIgfHwgaXNUb3BMZXZlbEltcGxpY2l0KSB7XG4gICAgICAgIHRoaXMuX2luSTE4bk5vZGUgPSB0cnVlO1xuICAgICAgICBjb25zdCBtZXNzYWdlID0gdGhpcy5fYWRkTWVzc2FnZShlbC5jaGlsZHJlbiwgaTE4bk1ldGEpICE7XG4gICAgICAgIHRyYW5zbGF0ZWRDaGlsZE5vZGVzID0gdGhpcy5fdHJhbnNsYXRlTWVzc2FnZShlbCwgbWVzc2FnZSk7XG4gICAgICB9XG5cbiAgICAgIGlmICh0aGlzLl9tb2RlID09IF9WaXNpdG9yTW9kZS5FeHRyYWN0KSB7XG4gICAgICAgIGNvbnN0IGlzVHJhbnNsYXRhYmxlID0gaTE4bkF0dHIgfHwgaXNUb3BMZXZlbEltcGxpY2l0O1xuICAgICAgICBpZiAoaXNUcmFuc2xhdGFibGUpIHRoaXMuX29wZW5UcmFuc2xhdGFibGVTZWN0aW9uKGVsKTtcbiAgICAgICAgaHRtbC52aXNpdEFsbCh0aGlzLCBlbC5jaGlsZHJlbik7XG4gICAgICAgIGlmIChpc1RyYW5zbGF0YWJsZSkgdGhpcy5fY2xvc2VUcmFuc2xhdGFibGVTZWN0aW9uKGVsLCBlbC5jaGlsZHJlbik7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIGlmIChpMThuQXR0ciB8fCBpc1RvcExldmVsSW1wbGljaXQpIHtcbiAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICBlbCwgJ0NvdWxkIG5vdCBtYXJrIGFuIGVsZW1lbnQgYXMgdHJhbnNsYXRhYmxlIGluc2lkZSBhIHRyYW5zbGF0YWJsZSBzZWN0aW9uJyk7XG4gICAgICB9XG5cbiAgICAgIGlmICh0aGlzLl9tb2RlID09IF9WaXNpdG9yTW9kZS5FeHRyYWN0KSB7XG4gICAgICAgIC8vIERlc2NlbmQgaW50byBjaGlsZCBub2RlcyBmb3IgZXh0cmFjdGlvblxuICAgICAgICBodG1sLnZpc2l0QWxsKHRoaXMsIGVsLmNoaWxkcmVuKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICBpZiAodGhpcy5fbW9kZSA9PT0gX1Zpc2l0b3JNb2RlLk1lcmdlKSB7XG4gICAgICBjb25zdCB2aXNpdE5vZGVzID0gdHJhbnNsYXRlZENoaWxkTm9kZXMgfHwgZWwuY2hpbGRyZW47XG4gICAgICB2aXNpdE5vZGVzLmZvckVhY2goY2hpbGQgPT4ge1xuICAgICAgICBjb25zdCB2aXNpdGVkID0gY2hpbGQudmlzaXQodGhpcywgY29udGV4dCk7XG4gICAgICAgIGlmICh2aXNpdGVkICYmICF0aGlzLl9pc0luVHJhbnNsYXRhYmxlU2VjdGlvbikge1xuICAgICAgICAgIC8vIERvIG5vdCBhZGQgdGhlIGNoaWxkcmVuIGZyb20gdHJhbnNsYXRhYmxlIHNlY3Rpb25zICg9IGkxOG4gYmxvY2tzIGhlcmUpXG4gICAgICAgICAgLy8gVGhleSB3aWxsIGJlIGFkZGVkIGxhdGVyIGluIHRoaXMgbG9vcCB3aGVuIHRoZSBibG9jayBjbG9zZXMgKGkuZS4gb24gYDwhLS0gL2kxOG4gLS0+YClcbiAgICAgICAgICBjaGlsZE5vZGVzID0gY2hpbGROb2Rlcy5jb25jYXQodmlzaXRlZCk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgIH1cblxuICAgIHRoaXMuX3Zpc2l0QXR0cmlidXRlc09mKGVsKTtcblxuICAgIHRoaXMuX2RlcHRoLS07XG4gICAgdGhpcy5faW5JMThuTm9kZSA9IHdhc0luSTE4bk5vZGU7XG4gICAgdGhpcy5faW5JbXBsaWNpdE5vZGUgPSB3YXNJbkltcGxpY2l0Tm9kZTtcblxuICAgIGlmICh0aGlzLl9tb2RlID09PSBfVmlzaXRvck1vZGUuTWVyZ2UpIHtcbiAgICAgIGNvbnN0IHRyYW5zbGF0ZWRBdHRycyA9IHRoaXMuX3RyYW5zbGF0ZUF0dHJpYnV0ZXMoZWwpO1xuICAgICAgcmV0dXJuIG5ldyBodG1sLkVsZW1lbnQoXG4gICAgICAgICAgZWwubmFtZSwgdHJhbnNsYXRlZEF0dHJzLCBjaGlsZE5vZGVzLCBlbC5zb3VyY2VTcGFuLCBlbC5zdGFydFNvdXJjZVNwYW4sXG4gICAgICAgICAgZWwuZW5kU291cmNlU3Bhbik7XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgdmlzaXRBdHRyaWJ1dGUoYXR0cmlidXRlOiBodG1sLkF0dHJpYnV0ZSwgY29udGV4dDogYW55KTogYW55IHtcbiAgICB0aHJvdyBuZXcgRXJyb3IoJ3VucmVhY2hhYmxlIGNvZGUnKTtcbiAgfVxuXG4gIHByaXZhdGUgX2luaXQobW9kZTogX1Zpc2l0b3JNb2RlLCBpbnRlcnBvbGF0aW9uQ29uZmlnOiBJbnRlcnBvbGF0aW9uQ29uZmlnKTogdm9pZCB7XG4gICAgdGhpcy5fbW9kZSA9IG1vZGU7XG4gICAgdGhpcy5faW5JMThuQmxvY2sgPSBmYWxzZTtcbiAgICB0aGlzLl9pbkkxOG5Ob2RlID0gZmFsc2U7XG4gICAgdGhpcy5fZGVwdGggPSAwO1xuICAgIHRoaXMuX2luSWN1ID0gZmFsc2U7XG4gICAgdGhpcy5fbXNnQ291bnRBdFNlY3Rpb25TdGFydCA9IHVuZGVmaW5lZDtcbiAgICB0aGlzLl9lcnJvcnMgPSBbXTtcbiAgICB0aGlzLl9tZXNzYWdlcyA9IFtdO1xuICAgIHRoaXMuX2luSW1wbGljaXROb2RlID0gZmFsc2U7XG4gICAgdGhpcy5fY3JlYXRlSTE4bk1lc3NhZ2UgPSBjcmVhdGVJMThuTWVzc2FnZUZhY3RvcnkoaW50ZXJwb2xhdGlvbkNvbmZpZyk7XG4gIH1cblxuICAvLyBsb29rcyBmb3IgdHJhbnNsYXRhYmxlIGF0dHJpYnV0ZXNcbiAgcHJpdmF0ZSBfdmlzaXRBdHRyaWJ1dGVzT2YoZWw6IGh0bWwuRWxlbWVudCk6IHZvaWQge1xuICAgIGNvbnN0IGV4cGxpY2l0QXR0ck5hbWVUb1ZhbHVlOiB7W2s6IHN0cmluZ106IHN0cmluZ30gPSB7fTtcbiAgICBjb25zdCBpbXBsaWNpdEF0dHJOYW1lczogc3RyaW5nW10gPSB0aGlzLl9pbXBsaWNpdEF0dHJzW2VsLm5hbWVdIHx8IFtdO1xuXG4gICAgZWwuYXR0cnMuZmlsdGVyKGF0dHIgPT4gYXR0ci5uYW1lLnN0YXJ0c1dpdGgoX0kxOE5fQVRUUl9QUkVGSVgpKVxuICAgICAgICAuZm9yRWFjaChcbiAgICAgICAgICAgIGF0dHIgPT4gZXhwbGljaXRBdHRyTmFtZVRvVmFsdWVbYXR0ci5uYW1lLnNsaWNlKF9JMThOX0FUVFJfUFJFRklYLmxlbmd0aCldID1cbiAgICAgICAgICAgICAgICBhdHRyLnZhbHVlKTtcblxuICAgIGVsLmF0dHJzLmZvckVhY2goYXR0ciA9PiB7XG4gICAgICBpZiAoYXR0ci5uYW1lIGluIGV4cGxpY2l0QXR0ck5hbWVUb1ZhbHVlKSB7XG4gICAgICAgIHRoaXMuX2FkZE1lc3NhZ2UoW2F0dHJdLCBleHBsaWNpdEF0dHJOYW1lVG9WYWx1ZVthdHRyLm5hbWVdKTtcbiAgICAgIH0gZWxzZSBpZiAoaW1wbGljaXRBdHRyTmFtZXMuc29tZShuYW1lID0+IGF0dHIubmFtZSA9PT0gbmFtZSkpIHtcbiAgICAgICAgdGhpcy5fYWRkTWVzc2FnZShbYXR0cl0pO1xuICAgICAgfVxuICAgIH0pO1xuICB9XG5cbiAgLy8gYWRkIGEgdHJhbnNsYXRhYmxlIG1lc3NhZ2VcbiAgcHJpdmF0ZSBfYWRkTWVzc2FnZShhc3Q6IGh0bWwuTm9kZVtdLCBtc2dNZXRhPzogc3RyaW5nKTogaTE4bi5NZXNzYWdlfG51bGwge1xuICAgIGlmIChhc3QubGVuZ3RoID09IDAgfHxcbiAgICAgICAgYXN0Lmxlbmd0aCA9PSAxICYmIGFzdFswXSBpbnN0YW5jZW9mIGh0bWwuQXR0cmlidXRlICYmICEoPGh0bWwuQXR0cmlidXRlPmFzdFswXSkudmFsdWUpIHtcbiAgICAgIC8vIERvIG5vdCBjcmVhdGUgZW1wdHkgbWVzc2FnZXNcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIGNvbnN0IHttZWFuaW5nLCBkZXNjcmlwdGlvbiwgaWR9ID0gX3BhcnNlTWVzc2FnZU1ldGEobXNnTWV0YSk7XG4gICAgY29uc3QgbWVzc2FnZSA9IHRoaXMuX2NyZWF0ZUkxOG5NZXNzYWdlKGFzdCwgbWVhbmluZywgZGVzY3JpcHRpb24sIGlkKTtcbiAgICB0aGlzLl9tZXNzYWdlcy5wdXNoKG1lc3NhZ2UpO1xuICAgIHJldHVybiBtZXNzYWdlO1xuICB9XG5cbiAgLy8gVHJhbnNsYXRlcyB0aGUgZ2l2ZW4gbWVzc2FnZSBnaXZlbiB0aGUgYFRyYW5zbGF0aW9uQnVuZGxlYFxuICAvLyBUaGlzIGlzIHVzZWQgZm9yIHRyYW5zbGF0aW5nIGVsZW1lbnRzIC8gYmxvY2tzIC0gc2VlIGBfdHJhbnNsYXRlQXR0cmlidXRlc2AgZm9yIGF0dHJpYnV0ZXNcbiAgLy8gbm8tb3Agd2hlbiBjYWxsZWQgaW4gZXh0cmFjdGlvbiBtb2RlIChyZXR1cm5zIFtdKVxuICBwcml2YXRlIF90cmFuc2xhdGVNZXNzYWdlKGVsOiBodG1sLk5vZGUsIG1lc3NhZ2U6IGkxOG4uTWVzc2FnZSk6IGh0bWwuTm9kZVtdIHtcbiAgICBpZiAobWVzc2FnZSAmJiB0aGlzLl9tb2RlID09PSBfVmlzaXRvck1vZGUuTWVyZ2UpIHtcbiAgICAgIGNvbnN0IG5vZGVzID0gdGhpcy5fdHJhbnNsYXRpb25zLmdldChtZXNzYWdlKTtcblxuICAgICAgaWYgKG5vZGVzKSB7XG4gICAgICAgIHJldHVybiBub2RlcztcbiAgICAgIH1cblxuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgZWwsIGBUcmFuc2xhdGlvbiB1bmF2YWlsYWJsZSBmb3IgbWVzc2FnZSBpZD1cIiR7dGhpcy5fdHJhbnNsYXRpb25zLmRpZ2VzdChtZXNzYWdlKX1cImApO1xuICAgIH1cblxuICAgIHJldHVybiBbXTtcbiAgfVxuXG4gIC8vIHRyYW5zbGF0ZSB0aGUgYXR0cmlidXRlcyBvZiBhbiBlbGVtZW50IGFuZCByZW1vdmUgaTE4biBzcGVjaWZpYyBhdHRyaWJ1dGVzXG4gIHByaXZhdGUgX3RyYW5zbGF0ZUF0dHJpYnV0ZXMoZWw6IGh0bWwuRWxlbWVudCk6IGh0bWwuQXR0cmlidXRlW10ge1xuICAgIGNvbnN0IGF0dHJpYnV0ZXMgPSBlbC5hdHRycztcbiAgICBjb25zdCBpMThuUGFyc2VkTWVzc2FnZU1ldGE6XG4gICAgICAgIHtbbmFtZTogc3RyaW5nXToge21lYW5pbmc6IHN0cmluZywgZGVzY3JpcHRpb246IHN0cmluZywgaWQ6IHN0cmluZ319ID0ge307XG5cbiAgICBhdHRyaWJ1dGVzLmZvckVhY2goYXR0ciA9PiB7XG4gICAgICBpZiAoYXR0ci5uYW1lLnN0YXJ0c1dpdGgoX0kxOE5fQVRUUl9QUkVGSVgpKSB7XG4gICAgICAgIGkxOG5QYXJzZWRNZXNzYWdlTWV0YVthdHRyLm5hbWUuc2xpY2UoX0kxOE5fQVRUUl9QUkVGSVgubGVuZ3RoKV0gPVxuICAgICAgICAgICAgX3BhcnNlTWVzc2FnZU1ldGEoYXR0ci52YWx1ZSk7XG4gICAgICB9XG4gICAgfSk7XG5cbiAgICBjb25zdCB0cmFuc2xhdGVkQXR0cmlidXRlczogaHRtbC5BdHRyaWJ1dGVbXSA9IFtdO1xuXG4gICAgYXR0cmlidXRlcy5mb3JFYWNoKChhdHRyKSA9PiB7XG4gICAgICBpZiAoYXR0ci5uYW1lID09PSBfSTE4Tl9BVFRSIHx8IGF0dHIubmFtZS5zdGFydHNXaXRoKF9JMThOX0FUVFJfUFJFRklYKSkge1xuICAgICAgICAvLyBzdHJpcCBpMThuIHNwZWNpZmljIGF0dHJpYnV0ZXNcbiAgICAgICAgcmV0dXJuO1xuICAgICAgfVxuXG4gICAgICBpZiAoYXR0ci52YWx1ZSAmJiBhdHRyLnZhbHVlICE9ICcnICYmIGkxOG5QYXJzZWRNZXNzYWdlTWV0YS5oYXNPd25Qcm9wZXJ0eShhdHRyLm5hbWUpKSB7XG4gICAgICAgIGNvbnN0IHttZWFuaW5nLCBkZXNjcmlwdGlvbiwgaWR9ID0gaTE4blBhcnNlZE1lc3NhZ2VNZXRhW2F0dHIubmFtZV07XG4gICAgICAgIGNvbnN0IG1lc3NhZ2U6IGkxOG4uTWVzc2FnZSA9IHRoaXMuX2NyZWF0ZUkxOG5NZXNzYWdlKFthdHRyXSwgbWVhbmluZywgZGVzY3JpcHRpb24sIGlkKTtcbiAgICAgICAgY29uc3Qgbm9kZXMgPSB0aGlzLl90cmFuc2xhdGlvbnMuZ2V0KG1lc3NhZ2UpO1xuICAgICAgICBpZiAobm9kZXMpIHtcbiAgICAgICAgICBpZiAobm9kZXMubGVuZ3RoID09IDApIHtcbiAgICAgICAgICAgIHRyYW5zbGF0ZWRBdHRyaWJ1dGVzLnB1c2gobmV3IGh0bWwuQXR0cmlidXRlKGF0dHIubmFtZSwgJycsIGF0dHIuc291cmNlU3BhbikpO1xuICAgICAgICAgIH0gZWxzZSBpZiAobm9kZXNbMF0gaW5zdGFuY2VvZiBodG1sLlRleHQpIHtcbiAgICAgICAgICAgIGNvbnN0IHZhbHVlID0gKG5vZGVzWzBdIGFzIGh0bWwuVGV4dCkudmFsdWU7XG4gICAgICAgICAgICB0cmFuc2xhdGVkQXR0cmlidXRlcy5wdXNoKG5ldyBodG1sLkF0dHJpYnV0ZShhdHRyLm5hbWUsIHZhbHVlLCBhdHRyLnNvdXJjZVNwYW4pKTtcbiAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgICAgZWwsXG4gICAgICAgICAgICAgICAgYFVuZXhwZWN0ZWQgdHJhbnNsYXRpb24gZm9yIGF0dHJpYnV0ZSBcIiR7YXR0ci5uYW1lfVwiIChpZD1cIiR7aWQgfHwgdGhpcy5fdHJhbnNsYXRpb25zLmRpZ2VzdChtZXNzYWdlKX1cIilgKTtcbiAgICAgICAgICB9XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgIGVsLFxuICAgICAgICAgICAgICBgVHJhbnNsYXRpb24gdW5hdmFpbGFibGUgZm9yIGF0dHJpYnV0ZSBcIiR7YXR0ci5uYW1lfVwiIChpZD1cIiR7aWQgfHwgdGhpcy5fdHJhbnNsYXRpb25zLmRpZ2VzdChtZXNzYWdlKX1cIilgKTtcbiAgICAgICAgfVxuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdHJhbnNsYXRlZEF0dHJpYnV0ZXMucHVzaChhdHRyKTtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIHJldHVybiB0cmFuc2xhdGVkQXR0cmlidXRlcztcbiAgfVxuXG5cbiAgLyoqXG4gICAqIEFkZCB0aGUgbm9kZSBhcyBhIGNoaWxkIG9mIHRoZSBibG9jayB3aGVuOlxuICAgKiAtIHdlIGFyZSBpbiBhIGJsb2NrLFxuICAgKiAtIHdlIGFyZSBub3QgaW5zaWRlIGEgSUNVIG1lc3NhZ2UgKHRob3NlIGFyZSBoYW5kbGVkIHNlcGFyYXRlbHkpLFxuICAgKiAtIHRoZSBub2RlIGlzIGEgXCJkaXJlY3QgY2hpbGRcIiBvZiB0aGUgYmxvY2tcbiAgICovXG4gIHByaXZhdGUgX21heUJlQWRkQmxvY2tDaGlsZHJlbihub2RlOiBodG1sLk5vZGUpOiB2b2lkIHtcbiAgICBpZiAodGhpcy5faW5JMThuQmxvY2sgJiYgIXRoaXMuX2luSWN1ICYmIHRoaXMuX2RlcHRoID09IHRoaXMuX2Jsb2NrU3RhcnREZXB0aCkge1xuICAgICAgdGhpcy5fYmxvY2tDaGlsZHJlbi5wdXNoKG5vZGUpO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBNYXJrcyB0aGUgc3RhcnQgb2YgYSBzZWN0aW9uLCBzZWUgYF9jbG9zZVRyYW5zbGF0YWJsZVNlY3Rpb25gXG4gICAqL1xuICBwcml2YXRlIF9vcGVuVHJhbnNsYXRhYmxlU2VjdGlvbihub2RlOiBodG1sLk5vZGUpOiB2b2lkIHtcbiAgICBpZiAodGhpcy5faXNJblRyYW5zbGF0YWJsZVNlY3Rpb24pIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKG5vZGUsICdVbmV4cGVjdGVkIHNlY3Rpb24gc3RhcnQnKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5fbXNnQ291bnRBdFNlY3Rpb25TdGFydCA9IHRoaXMuX21lc3NhZ2VzLmxlbmd0aDtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogQSB0cmFuc2xhdGFibGUgc2VjdGlvbiBjb3VsZCBiZTpcbiAgICogLSB0aGUgY29udGVudCBvZiB0cmFuc2xhdGFibGUgZWxlbWVudCxcbiAgICogLSBub2RlcyBiZXR3ZWVuIGA8IS0tIGkxOG4gLS0+YCBhbmQgYDwhLS0gL2kxOG4gLS0+YCBjb21tZW50c1xuICAgKi9cbiAgcHJpdmF0ZSBnZXQgX2lzSW5UcmFuc2xhdGFibGVTZWN0aW9uKCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiB0aGlzLl9tc2dDb3VudEF0U2VjdGlvblN0YXJ0ICE9PSB2b2lkIDA7XG4gIH1cblxuICAvKipcbiAgICogVGVybWluYXRlcyBhIHNlY3Rpb24uXG4gICAqXG4gICAqIElmIGEgc2VjdGlvbiBoYXMgb25seSBvbmUgc2lnbmlmaWNhbnQgY2hpbGRyZW4gKGNvbW1lbnRzIG5vdCBzaWduaWZpY2FudCkgdGhlbiB3ZSBzaG91bGQgbm90XG4gICAqIGtlZXAgdGhlIG1lc3NhZ2UgZnJvbSB0aGlzIGNoaWxkcmVuOlxuICAgKlxuICAgKiBgPHAgaTE4bj1cIm1lYW5pbmd8ZGVzY3JpcHRpb25cIj57SUNVIG1lc3NhZ2V9PC9wPmAgd291bGQgcHJvZHVjZSB0d28gbWVzc2FnZXM6XG4gICAqIC0gb25lIGZvciB0aGUgPHA+IGNvbnRlbnQgd2l0aCBtZWFuaW5nIGFuZCBkZXNjcmlwdGlvbixcbiAgICogLSBhbm90aGVyIG9uZSBmb3IgdGhlIElDVSBtZXNzYWdlLlxuICAgKlxuICAgKiBJbiB0aGlzIGNhc2UgdGhlIGxhc3QgbWVzc2FnZSBpcyBkaXNjYXJkZWQgYXMgaXQgY29udGFpbnMgbGVzcyBpbmZvcm1hdGlvbiAodGhlIEFTVCBpc1xuICAgKiBvdGhlcndpc2UgaWRlbnRpY2FsKS5cbiAgICpcbiAgICogTm90ZSB0aGF0IHdlIHNob3VsZCBzdGlsbCBrZWVwIG1lc3NhZ2VzIGV4dHJhY3RlZCBmcm9tIGF0dHJpYnV0ZXMgaW5zaWRlIHRoZSBzZWN0aW9uIChpZSBpbiB0aGVcbiAgICogSUNVIG1lc3NhZ2UgaGVyZSlcbiAgICovXG4gIHByaXZhdGUgX2Nsb3NlVHJhbnNsYXRhYmxlU2VjdGlvbihub2RlOiBodG1sLk5vZGUsIGRpcmVjdENoaWxkcmVuOiBodG1sLk5vZGVbXSk6IHZvaWQge1xuICAgIGlmICghdGhpcy5faXNJblRyYW5zbGF0YWJsZVNlY3Rpb24pIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKG5vZGUsICdVbmV4cGVjdGVkIHNlY3Rpb24gZW5kJyk7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3Qgc3RhcnRJbmRleCA9IHRoaXMuX21zZ0NvdW50QXRTZWN0aW9uU3RhcnQ7XG4gICAgY29uc3Qgc2lnbmlmaWNhbnRDaGlsZHJlbjogbnVtYmVyID0gZGlyZWN0Q2hpbGRyZW4ucmVkdWNlKFxuICAgICAgICAoY291bnQ6IG51bWJlciwgbm9kZTogaHRtbC5Ob2RlKTogbnVtYmVyID0+IGNvdW50ICsgKG5vZGUgaW5zdGFuY2VvZiBodG1sLkNvbW1lbnQgPyAwIDogMSksXG4gICAgICAgIDApO1xuXG4gICAgaWYgKHNpZ25pZmljYW50Q2hpbGRyZW4gPT0gMSkge1xuICAgICAgZm9yIChsZXQgaSA9IHRoaXMuX21lc3NhZ2VzLmxlbmd0aCAtIDE7IGkgPj0gc3RhcnRJbmRleCAhOyBpLS0pIHtcbiAgICAgICAgY29uc3QgYXN0ID0gdGhpcy5fbWVzc2FnZXNbaV0ubm9kZXM7XG4gICAgICAgIGlmICghKGFzdC5sZW5ndGggPT0gMSAmJiBhc3RbMF0gaW5zdGFuY2VvZiBpMThuLlRleHQpKSB7XG4gICAgICAgICAgdGhpcy5fbWVzc2FnZXMuc3BsaWNlKGksIDEpO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgdGhpcy5fbXNnQ291bnRBdFNlY3Rpb25TdGFydCA9IHVuZGVmaW5lZDtcbiAgfVxuXG4gIHByaXZhdGUgX3JlcG9ydEVycm9yKG5vZGU6IGh0bWwuTm9kZSwgbXNnOiBzdHJpbmcpOiB2b2lkIHtcbiAgICB0aGlzLl9lcnJvcnMucHVzaChuZXcgSTE4bkVycm9yKG5vZGUuc291cmNlU3BhbiAhLCBtc2cpKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBfaXNPcGVuaW5nQ29tbWVudChuOiBodG1sLk5vZGUpOiBib29sZWFuIHtcbiAgcmV0dXJuICEhKG4gaW5zdGFuY2VvZiBodG1sLkNvbW1lbnQgJiYgbi52YWx1ZSAmJiBuLnZhbHVlLnN0YXJ0c1dpdGgoJ2kxOG4nKSk7XG59XG5cbmZ1bmN0aW9uIF9pc0Nsb3NpbmdDb21tZW50KG46IGh0bWwuTm9kZSk6IGJvb2xlYW4ge1xuICByZXR1cm4gISEobiBpbnN0YW5jZW9mIGh0bWwuQ29tbWVudCAmJiBuLnZhbHVlICYmIG4udmFsdWUgPT09ICcvaTE4bicpO1xufVxuXG5mdW5jdGlvbiBfZ2V0STE4bkF0dHIocDogaHRtbC5FbGVtZW50KTogaHRtbC5BdHRyaWJ1dGV8bnVsbCB7XG4gIHJldHVybiBwLmF0dHJzLmZpbmQoYXR0ciA9PiBhdHRyLm5hbWUgPT09IF9JMThOX0FUVFIpIHx8IG51bGw7XG59XG5cbmZ1bmN0aW9uIF9wYXJzZU1lc3NhZ2VNZXRhKGkxOG4/OiBzdHJpbmcpOiB7bWVhbmluZzogc3RyaW5nLCBkZXNjcmlwdGlvbjogc3RyaW5nLCBpZDogc3RyaW5nfSB7XG4gIGlmICghaTE4bikgcmV0dXJuIHttZWFuaW5nOiAnJywgZGVzY3JpcHRpb246ICcnLCBpZDogJyd9O1xuXG4gIGNvbnN0IGlkSW5kZXggPSBpMThuLmluZGV4T2YoSURfU0VQQVJBVE9SKTtcbiAgY29uc3QgZGVzY0luZGV4ID0gaTE4bi5pbmRleE9mKE1FQU5JTkdfU0VQQVJBVE9SKTtcbiAgY29uc3QgW21lYW5pbmdBbmREZXNjLCBpZF0gPVxuICAgICAgKGlkSW5kZXggPiAtMSkgPyBbaTE4bi5zbGljZSgwLCBpZEluZGV4KSwgaTE4bi5zbGljZShpZEluZGV4ICsgMildIDogW2kxOG4sICcnXTtcbiAgY29uc3QgW21lYW5pbmcsIGRlc2NyaXB0aW9uXSA9IChkZXNjSW5kZXggPiAtMSkgP1xuICAgICAgW21lYW5pbmdBbmREZXNjLnNsaWNlKDAsIGRlc2NJbmRleCksIG1lYW5pbmdBbmREZXNjLnNsaWNlKGRlc2NJbmRleCArIDEpXSA6XG4gICAgICBbJycsIG1lYW5pbmdBbmREZXNjXTtcblxuICByZXR1cm4ge21lYW5pbmcsIGRlc2NyaXB0aW9uLCBpZDogaWQudHJpbSgpfTtcbn1cbiJdfQ==