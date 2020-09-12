/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import '../../util/ng_dev_mode';
import '../../util/ng_i18n_closure_mode';
import { getTemplateContent, SRCSET_ATTRS, URI_ATTRS, VALID_ATTRS, VALID_ELEMENTS } from '../../sanitization/html_sanitizer';
import { getInertBodyHelper } from '../../sanitization/inert_body';
import { _sanitizeUrl, sanitizeSrcset } from '../../sanitization/url_sanitizer';
import { addAllToArray } from '../../util/array_utils';
import { assertEqual } from '../../util/assert';
import { allocExpando, elementAttributeInternal, setInputsForProperty, setNgReflectProperties } from '../instructions/shared';
import { getDocument } from '../interfaces/document';
import { COMMENT_MARKER, ELEMENT_MARKER } from '../interfaces/i18n';
import { HEADER_OFFSET, T_HOST } from '../interfaces/view';
import { getIsParent, getPreviousOrParentTNode } from '../state';
import { attachDebugGetter } from '../util/debug_utils';
import { getNativeByIndex, getTNode } from '../util/view_utils';
import { i18nMutateOpCodesToString, i18nUpdateOpCodesToString } from './i18n_debug';
const BINDING_REGEXP = /�(\d+):?\d*�/gi;
const ICU_REGEXP = /({\s*�\d+:?\d*�\s*,\s*\S{6}\s*,[\s\S]*})/gi;
const NESTED_ICU = /�(\d+)�/;
const ICU_BLOCK_REGEXP = /^\s*(�\d+:?\d*�)\s*,\s*(select|plural)\s*,/;
// Count for the number of vars that will be allocated for each i18n block.
// It is global because this is used in multiple functions that include loops and recursive calls.
// This is reset to 0 when `i18nStartFirstPass` is called.
let i18nVarsCount;
const parentIndexStack = [];
const MARKER = `�`;
const SUBTEMPLATE_REGEXP = /�\/?\*(\d+:\d+)�/gi;
const PH_REGEXP = /�(\/?[#*!]\d+):?\d*�/gi;
/**
 * Angular Dart introduced &ngsp; as a placeholder for non-removable space, see:
 * https://github.com/dart-lang/angular/blob/0bb611387d29d65b5af7f9d2515ab571fd3fbee4/_tests/test/compiler/preserve_whitespace_test.dart#L25-L32
 * In Angular Dart &ngsp; is converted to the 0xE500 PUA (Private Use Areas) unicode character
 * and later on replaced by a space. We are re-implementing the same idea here, since translations
 * might contain this special character.
 */
const NGSP_UNICODE_REGEXP = /\uE500/g;
function replaceNgsp(value) {
    return value.replace(NGSP_UNICODE_REGEXP, ' ');
}
/**
 * See `i18nStart` above.
 */
export function i18nStartFirstPass(lView, tView, index, message, subTemplateIndex) {
    const startIndex = tView.blueprint.length - HEADER_OFFSET;
    i18nVarsCount = 0;
    const previousOrParentTNode = getPreviousOrParentTNode();
    const parentTNode = getIsParent() ? previousOrParentTNode : previousOrParentTNode && previousOrParentTNode.parent;
    let parentIndex = parentTNode && parentTNode !== lView[T_HOST] ? parentTNode.index - HEADER_OFFSET : index;
    let parentIndexPointer = 0;
    parentIndexStack[parentIndexPointer] = parentIndex;
    const createOpCodes = [];
    if (ngDevMode) {
        attachDebugGetter(createOpCodes, i18nMutateOpCodesToString);
    }
    // If the previous node wasn't the direct parent then we have a translation without top level
    // element and we need to keep a reference of the previous element if there is one. We should also
    // keep track whether an element was a parent node or not, so that the logic that consumes
    // the generated `I18nMutateOpCode`s can leverage this information to properly set TNode state
    // (whether it's a parent or sibling).
    if (index > 0 && previousOrParentTNode !== parentTNode) {
        let previousTNodeIndex = previousOrParentTNode.index - HEADER_OFFSET;
        // If current TNode is a sibling node, encode it using a negative index. This information is
        // required when the `Select` action is processed (see the `readCreateOpCodes` function).
        if (!getIsParent()) {
            previousTNodeIndex = ~previousTNodeIndex;
        }
        // Create an OpCode to select the previous TNode
        createOpCodes.push(previousTNodeIndex << 3 /* SHIFT_REF */ | 0 /* Select */);
    }
    const updateOpCodes = [];
    if (ngDevMode) {
        attachDebugGetter(updateOpCodes, i18nUpdateOpCodesToString);
    }
    const icuExpressions = [];
    if (message === '' && isRootTemplateMessage(subTemplateIndex)) {
        // If top level translation is an empty string, do not invoke additional processing
        // and just create op codes for empty text node instead.
        createOpCodes.push(message, allocNodeIndex(startIndex), parentIndex << 17 /* SHIFT_PARENT */ | 1 /* AppendChild */);
    }
    else {
        const templateTranslation = getTranslationForTemplate(message, subTemplateIndex);
        const msgParts = replaceNgsp(templateTranslation).split(PH_REGEXP);
        for (let i = 0; i < msgParts.length; i++) {
            let value = msgParts[i];
            if (i & 1) {
                // Odd indexes are placeholders (elements and sub-templates)
                if (value.charAt(0) === '/') {
                    // It is a closing tag
                    if (value.charAt(1) === "#" /* ELEMENT */) {
                        const phIndex = parseInt(value.substr(2), 10);
                        parentIndex = parentIndexStack[--parentIndexPointer];
                        createOpCodes.push(phIndex << 3 /* SHIFT_REF */ | 5 /* ElementEnd */);
                    }
                }
                else {
                    const phIndex = parseInt(value.substr(1), 10);
                    const isElement = value.charAt(0) === "#" /* ELEMENT */;
                    // The value represents a placeholder that we move to the designated index.
                    // Note: positive indicies indicate that a TNode with a given index should also be marked
                    // as parent while executing `Select` instruction.
                    createOpCodes.push((isElement ? phIndex : ~phIndex) << 3 /* SHIFT_REF */ |
                        0 /* Select */, parentIndex << 17 /* SHIFT_PARENT */ | 1 /* AppendChild */);
                    if (isElement) {
                        parentIndexStack[++parentIndexPointer] = parentIndex = phIndex;
                    }
                }
            }
            else {
                // Even indexes are text (including bindings & ICU expressions)
                const parts = extractParts(value);
                for (let j = 0; j < parts.length; j++) {
                    if (j & 1) {
                        // Odd indexes are ICU expressions
                        const icuExpression = parts[j];
                        // Verify that ICU expression has the right shape. Translations might contain invalid
                        // constructions (while original messages were correct), so ICU parsing at runtime may
                        // not succeed (thus `icuExpression` remains a string).
                        if (typeof icuExpression !== 'object') {
                            throw new Error(`Unable to parse ICU expression in "${templateTranslation}" message.`);
                        }
                        // Create the comment node that will anchor the ICU expression
                        const icuNodeIndex = allocNodeIndex(startIndex);
                        createOpCodes.push(COMMENT_MARKER, ngDevMode ? `ICU ${icuNodeIndex}` : '', icuNodeIndex, parentIndex << 17 /* SHIFT_PARENT */ | 1 /* AppendChild */);
                        // Update codes for the ICU expression
                        const mask = getBindingMask(icuExpression);
                        icuStart(icuExpressions, icuExpression, icuNodeIndex, icuNodeIndex);
                        // Since this is recursive, the last TIcu that was pushed is the one we want
                        const tIcuIndex = icuExpressions.length - 1;
                        updateOpCodes.push(toMaskBit(icuExpression.mainBinding), // mask of the main binding
                        3, // skip 3 opCodes if not changed
                        -1 - icuExpression.mainBinding, icuNodeIndex << 2 /* SHIFT_REF */ | 2 /* IcuSwitch */, tIcuIndex, mask, // mask of all the bindings of this ICU expression
                        2, // skip 2 opCodes if not changed
                        icuNodeIndex << 2 /* SHIFT_REF */ | 3 /* IcuUpdate */, tIcuIndex);
                    }
                    else if (parts[j] !== '') {
                        const text = parts[j];
                        // Even indexes are text (including bindings)
                        const hasBinding = text.match(BINDING_REGEXP);
                        // Create text nodes
                        const textNodeIndex = allocNodeIndex(startIndex);
                        createOpCodes.push(
                        // If there is a binding, the value will be set during update
                        hasBinding ? '' : text, textNodeIndex, parentIndex << 17 /* SHIFT_PARENT */ | 1 /* AppendChild */);
                        if (hasBinding) {
                            addAllToArray(generateBindingUpdateOpCodes(text, textNodeIndex), updateOpCodes);
                        }
                    }
                }
            }
        }
    }
    if (i18nVarsCount > 0) {
        allocExpando(tView, lView, i18nVarsCount);
    }
    // NOTE: local var needed to properly assert the type of `TI18n`.
    const tI18n = {
        vars: i18nVarsCount,
        create: createOpCodes,
        update: updateOpCodes,
        icus: icuExpressions.length ? icuExpressions : null,
    };
    tView.data[index + HEADER_OFFSET] = tI18n;
}
/**
 * See `i18nAttributes` above.
 */
export function i18nAttributesFirstPass(lView, tView, index, values) {
    const previousElement = getPreviousOrParentTNode();
    const previousElementIndex = previousElement.index - HEADER_OFFSET;
    const updateOpCodes = [];
    if (ngDevMode) {
        attachDebugGetter(updateOpCodes, i18nUpdateOpCodesToString);
    }
    for (let i = 0; i < values.length; i += 2) {
        const attrName = values[i];
        const message = values[i + 1];
        const parts = message.split(ICU_REGEXP);
        for (let j = 0; j < parts.length; j++) {
            const value = parts[j];
            if (j & 1) {
                // Odd indexes are ICU expressions
                // TODO(ocombe): support ICU expressions in attributes
                throw new Error('ICU expressions are not yet supported in attributes');
            }
            else if (value !== '') {
                // Even indexes are text (including bindings)
                const hasBinding = !!value.match(BINDING_REGEXP);
                if (hasBinding) {
                    if (tView.firstCreatePass && tView.data[index + HEADER_OFFSET] === null) {
                        addAllToArray(generateBindingUpdateOpCodes(value, previousElementIndex, attrName), updateOpCodes);
                    }
                }
                else {
                    const tNode = getTNode(tView, previousElementIndex);
                    // Set attributes for Elements only, for other types (like ElementContainer),
                    // only set inputs below
                    if (tNode.type === 3 /* Element */) {
                        elementAttributeInternal(tNode, lView, attrName, value, null, null);
                    }
                    // Check if that attribute is a directive input
                    const dataValue = tNode.inputs !== null && tNode.inputs[attrName];
                    if (dataValue) {
                        setInputsForProperty(tView, lView, dataValue, attrName, value);
                        if (ngDevMode) {
                            const element = getNativeByIndex(previousElementIndex, lView);
                            setNgReflectProperties(lView, element, tNode.type, dataValue, value);
                        }
                    }
                }
            }
        }
    }
    if (tView.firstCreatePass && tView.data[index + HEADER_OFFSET] === null) {
        tView.data[index + HEADER_OFFSET] = updateOpCodes;
    }
}
/**
 * Generate the OpCodes to update the bindings of a string.
 *
 * @param str The string containing the bindings.
 * @param destinationNode Index of the destination node which will receive the binding.
 * @param attrName Name of the attribute, if the string belongs to an attribute.
 * @param sanitizeFn Sanitization function used to sanitize the string after update, if necessary.
 */
export function generateBindingUpdateOpCodes(str, destinationNode, attrName, sanitizeFn = null) {
    const updateOpCodes = [null, null]; // Alloc space for mask and size
    if (ngDevMode) {
        attachDebugGetter(updateOpCodes, i18nUpdateOpCodesToString);
    }
    const textParts = str.split(BINDING_REGEXP);
    let mask = 0;
    for (let j = 0; j < textParts.length; j++) {
        const textValue = textParts[j];
        if (j & 1) {
            // Odd indexes are bindings
            const bindingIndex = parseInt(textValue, 10);
            updateOpCodes.push(-1 - bindingIndex);
            mask = mask | toMaskBit(bindingIndex);
        }
        else if (textValue !== '') {
            // Even indexes are text
            updateOpCodes.push(textValue);
        }
    }
    updateOpCodes.push(destinationNode << 2 /* SHIFT_REF */ |
        (attrName ? 1 /* Attr */ : 0 /* Text */));
    if (attrName) {
        updateOpCodes.push(attrName, sanitizeFn);
    }
    updateOpCodes[0] = mask;
    updateOpCodes[1] = updateOpCodes.length - 2;
    return updateOpCodes;
}
function getBindingMask(icuExpression, mask = 0) {
    mask = mask | toMaskBit(icuExpression.mainBinding);
    let match;
    for (let i = 0; i < icuExpression.values.length; i++) {
        const valueArr = icuExpression.values[i];
        for (let j = 0; j < valueArr.length; j++) {
            const value = valueArr[j];
            if (typeof value === 'string') {
                while (match = BINDING_REGEXP.exec(value)) {
                    mask = mask | toMaskBit(parseInt(match[1], 10));
                }
            }
            else {
                mask = getBindingMask(value, mask);
            }
        }
    }
    return mask;
}
function allocNodeIndex(startIndex) {
    return startIndex + i18nVarsCount++;
}
/**
 * Convert binding index to mask bit.
 *
 * Each index represents a single bit on the bit-mask. Because bit-mask only has 32 bits, we make
 * the 32nd bit share all masks for all bindings higher than 32. Since it is extremely rare to have
 * more than 32 bindings this will be hit very rarely. The downside of hitting this corner case is
 * that we will execute binding code more often than necessary. (penalty of performance)
 */
function toMaskBit(bindingIndex) {
    return 1 << Math.min(bindingIndex, 31);
}
export function isRootTemplateMessage(subTemplateIndex) {
    return subTemplateIndex === undefined;
}
/**
 * Removes everything inside the sub-templates of a message.
 */
function removeInnerTemplateTranslation(message) {
    let match;
    let res = '';
    let index = 0;
    let inTemplate = false;
    let tagMatched;
    while ((match = SUBTEMPLATE_REGEXP.exec(message)) !== null) {
        if (!inTemplate) {
            res += message.substring(index, match.index + match[0].length);
            tagMatched = match[1];
            inTemplate = true;
        }
        else {
            if (match[0] === `${MARKER}/*${tagMatched}${MARKER}`) {
                index = match.index;
                inTemplate = false;
            }
        }
    }
    ngDevMode &&
        assertEqual(inTemplate, false, `Tag mismatch: unable to find the end of the sub-template in the translation "${message}"`);
    res += message.substr(index);
    return res;
}
/**
 * Extracts a part of a message and removes the rest.
 *
 * This method is used for extracting a part of the message associated with a template. A translated
 * message can span multiple templates.
 *
 * Example:
 * ```
 * <div i18n>Translate <span *ngIf>me</span>!</div>
 * ```
 *
 * @param message The message to crop
 * @param subTemplateIndex Index of the sub-template to extract. If undefined it returns the
 * external template and removes all sub-templates.
 */
export function getTranslationForTemplate(message, subTemplateIndex) {
    if (isRootTemplateMessage(subTemplateIndex)) {
        // We want the root template message, ignore all sub-templates
        return removeInnerTemplateTranslation(message);
    }
    else {
        // We want a specific sub-template
        const start = message.indexOf(`:${subTemplateIndex}${MARKER}`) + 2 + subTemplateIndex.toString().length;
        const end = message.search(new RegExp(`${MARKER}\\/\\*\\d+:${subTemplateIndex}${MARKER}`));
        return removeInnerTemplateTranslation(message.substring(start, end));
    }
}
/**
 * Generate the OpCodes for ICU expressions.
 *
 * @param tIcus
 * @param icuExpression
 * @param startIndex
 * @param expandoStartIndex
 */
export function icuStart(tIcus, icuExpression, startIndex, expandoStartIndex) {
    const createCodes = [];
    const removeCodes = [];
    const updateCodes = [];
    const vars = [];
    const childIcus = [];
    const values = icuExpression.values;
    for (let i = 0; i < values.length; i++) {
        // Each value is an array of strings & other ICU expressions
        const valueArr = values[i];
        const nestedIcus = [];
        for (let j = 0; j < valueArr.length; j++) {
            const value = valueArr[j];
            if (typeof value !== 'string') {
                // It is an nested ICU expression
                const icuIndex = nestedIcus.push(value) - 1;
                // Replace nested ICU expression by a comment node
                valueArr[j] = `<!--�${icuIndex}�-->`;
            }
        }
        const icuCase = parseIcuCase(valueArr.join(''), startIndex, nestedIcus, tIcus, expandoStartIndex);
        createCodes.push(icuCase.create);
        removeCodes.push(icuCase.remove);
        updateCodes.push(icuCase.update);
        vars.push(icuCase.vars);
        childIcus.push(icuCase.childIcus);
    }
    const tIcu = {
        type: icuExpression.type,
        vars,
        currentCaseLViewIndex: HEADER_OFFSET +
            expandoStartIndex // expandoStartIndex does not include the header so add it.
            + 1,
        childIcus,
        cases: icuExpression.cases,
        create: createCodes,
        remove: removeCodes,
        update: updateCodes
    };
    tIcus.push(tIcu);
    // Adding the maximum possible of vars needed (based on the cases with the most vars)
    i18nVarsCount += Math.max(...vars);
}
/**
 * Parses text containing an ICU expression and produces a JSON object for it.
 * Original code from closure library, modified for Angular.
 *
 * @param pattern Text containing an ICU expression that needs to be parsed.
 *
 */
export function parseICUBlock(pattern) {
    const cases = [];
    const values = [];
    let icuType = 1 /* plural */;
    let mainBinding = 0;
    pattern = pattern.replace(ICU_BLOCK_REGEXP, function (str, binding, type) {
        if (type === 'select') {
            icuType = 0 /* select */;
        }
        else {
            icuType = 1 /* plural */;
        }
        mainBinding = parseInt(binding.substr(1), 10);
        return '';
    });
    const parts = extractParts(pattern);
    // Looking for (key block)+ sequence. One of the keys has to be "other".
    for (let pos = 0; pos < parts.length;) {
        let key = parts[pos++].trim();
        if (icuType === 1 /* plural */) {
            // Key can be "=x", we just want "x"
            key = key.replace(/\s*(?:=)?(\w+)\s*/, '$1');
        }
        if (key.length) {
            cases.push(key);
        }
        const blocks = extractParts(parts[pos++]);
        if (cases.length > values.length) {
            values.push(blocks);
        }
    }
    // TODO(ocombe): support ICU expressions in attributes, see #21615
    return { type: icuType, mainBinding: mainBinding, cases, values };
}
/**
 * Transforms a string template into an HTML template and a list of instructions used to update
 * attributes or nodes that contain bindings.
 *
 * @param unsafeHtml The string to parse
 * @param parentIndex
 * @param nestedIcus
 * @param tIcus
 * @param expandoStartIndex
 */
function parseIcuCase(unsafeHtml, parentIndex, nestedIcus, tIcus, expandoStartIndex) {
    const inertBodyHelper = getInertBodyHelper(getDocument());
    const inertBodyElement = inertBodyHelper.getInertBodyElement(unsafeHtml);
    if (!inertBodyElement) {
        throw new Error('Unable to generate inert body element');
    }
    const wrapper = getTemplateContent(inertBodyElement) || inertBodyElement;
    const opCodes = {
        vars: 1,
        childIcus: [],
        create: [],
        remove: [],
        update: []
    };
    if (ngDevMode) {
        attachDebugGetter(opCodes.create, i18nMutateOpCodesToString);
        attachDebugGetter(opCodes.remove, i18nMutateOpCodesToString);
        attachDebugGetter(opCodes.update, i18nUpdateOpCodesToString);
    }
    parseNodes(wrapper.firstChild, opCodes, parentIndex, nestedIcus, tIcus, expandoStartIndex);
    return opCodes;
}
/**
 * Breaks pattern into strings and top level {...} blocks.
 * Can be used to break a message into text and ICU expressions, or to break an ICU expression into
 * keys and cases.
 * Original code from closure library, modified for Angular.
 *
 * @param pattern (sub)Pattern to be broken.
 *
 */
function extractParts(pattern) {
    if (!pattern) {
        return [];
    }
    let prevPos = 0;
    const braceStack = [];
    const results = [];
    const braces = /[{}]/g;
    // lastIndex doesn't get set to 0 so we have to.
    braces.lastIndex = 0;
    let match;
    while (match = braces.exec(pattern)) {
        const pos = match.index;
        if (match[0] == '}') {
            braceStack.pop();
            if (braceStack.length == 0) {
                // End of the block.
                const block = pattern.substring(prevPos, pos);
                if (ICU_BLOCK_REGEXP.test(block)) {
                    results.push(parseICUBlock(block));
                }
                else {
                    results.push(block);
                }
                prevPos = pos + 1;
            }
        }
        else {
            if (braceStack.length == 0) {
                const substring = pattern.substring(prevPos, pos);
                results.push(substring);
                prevPos = pos + 1;
            }
            braceStack.push('{');
        }
    }
    const substring = pattern.substring(prevPos);
    results.push(substring);
    return results;
}
/**
 * Parses a node, its children and its siblings, and generates the mutate & update OpCodes.
 *
 * @param currentNode The first node to parse
 * @param icuCase The data for the ICU expression case that contains those nodes
 * @param parentIndex Index of the current node's parent
 * @param nestedIcus Data for the nested ICU expressions that this case contains
 * @param tIcus Data for all ICU expressions of the current message
 * @param expandoStartIndex Expando start index for the current ICU expression
 */
export function parseNodes(currentNode, icuCase, parentIndex, nestedIcus, tIcus, expandoStartIndex) {
    if (currentNode) {
        const nestedIcusToCreate = [];
        while (currentNode) {
            const nextNode = currentNode.nextSibling;
            const newIndex = expandoStartIndex + ++icuCase.vars;
            switch (currentNode.nodeType) {
                case Node.ELEMENT_NODE:
                    const element = currentNode;
                    const tagName = element.tagName.toLowerCase();
                    if (!VALID_ELEMENTS.hasOwnProperty(tagName)) {
                        // This isn't a valid element, we won't create an element for it
                        icuCase.vars--;
                    }
                    else {
                        icuCase.create.push(ELEMENT_MARKER, tagName, newIndex, parentIndex << 17 /* SHIFT_PARENT */ | 1 /* AppendChild */);
                        const elAttrs = element.attributes;
                        for (let i = 0; i < elAttrs.length; i++) {
                            const attr = elAttrs.item(i);
                            const lowerAttrName = attr.name.toLowerCase();
                            const hasBinding = !!attr.value.match(BINDING_REGEXP);
                            // we assume the input string is safe, unless it's using a binding
                            if (hasBinding) {
                                if (VALID_ATTRS.hasOwnProperty(lowerAttrName)) {
                                    if (URI_ATTRS[lowerAttrName]) {
                                        addAllToArray(generateBindingUpdateOpCodes(attr.value, newIndex, attr.name, _sanitizeUrl), icuCase.update);
                                    }
                                    else if (SRCSET_ATTRS[lowerAttrName]) {
                                        addAllToArray(generateBindingUpdateOpCodes(attr.value, newIndex, attr.name, sanitizeSrcset), icuCase.update);
                                    }
                                    else {
                                        addAllToArray(generateBindingUpdateOpCodes(attr.value, newIndex, attr.name), icuCase.update);
                                    }
                                }
                                else {
                                    ngDevMode &&
                                        console.warn(`WARNING: ignoring unsafe attribute value ${lowerAttrName} on element ${tagName} (see http://g.co/ng/security#xss)`);
                                }
                            }
                            else {
                                icuCase.create.push(newIndex << 3 /* SHIFT_REF */ | 4 /* Attr */, attr.name, attr.value);
                            }
                        }
                        // Parse the children of this node (if any)
                        parseNodes(currentNode.firstChild, icuCase, newIndex, nestedIcus, tIcus, expandoStartIndex);
                        // Remove the parent node after the children
                        icuCase.remove.push(newIndex << 3 /* SHIFT_REF */ | 3 /* Remove */);
                    }
                    break;
                case Node.TEXT_NODE:
                    const value = currentNode.textContent || '';
                    const hasBinding = value.match(BINDING_REGEXP);
                    icuCase.create.push(hasBinding ? '' : value, newIndex, parentIndex << 17 /* SHIFT_PARENT */ | 1 /* AppendChild */);
                    icuCase.remove.push(newIndex << 3 /* SHIFT_REF */ | 3 /* Remove */);
                    if (hasBinding) {
                        addAllToArray(generateBindingUpdateOpCodes(value, newIndex), icuCase.update);
                    }
                    break;
                case Node.COMMENT_NODE:
                    // Check if the comment node is a placeholder for a nested ICU
                    const match = NESTED_ICU.exec(currentNode.textContent || '');
                    if (match) {
                        const nestedIcuIndex = parseInt(match[1], 10);
                        const newLocal = ngDevMode ? `nested ICU ${nestedIcuIndex}` : '';
                        // Create the comment node that will anchor the ICU expression
                        icuCase.create.push(COMMENT_MARKER, newLocal, newIndex, parentIndex << 17 /* SHIFT_PARENT */ | 1 /* AppendChild */);
                        const nestedIcu = nestedIcus[nestedIcuIndex];
                        nestedIcusToCreate.push([nestedIcu, newIndex]);
                    }
                    else {
                        // We do not handle any other type of comment
                        icuCase.vars--;
                    }
                    break;
                default:
                    // We do not handle any other type of element
                    icuCase.vars--;
            }
            currentNode = nextNode;
        }
        for (let i = 0; i < nestedIcusToCreate.length; i++) {
            const nestedIcu = nestedIcusToCreate[i][0];
            const nestedIcuNodeIndex = nestedIcusToCreate[i][1];
            icuStart(tIcus, nestedIcu, nestedIcuNodeIndex, expandoStartIndex + icuCase.vars);
            // Since this is recursive, the last TIcu that was pushed is the one we want
            const nestTIcuIndex = tIcus.length - 1;
            icuCase.vars += Math.max(...tIcus[nestTIcuIndex].vars);
            icuCase.childIcus.push(nestTIcuIndex);
            const mask = getBindingMask(nestedIcu);
            icuCase.update.push(toMaskBit(nestedIcu.mainBinding), // mask of the main binding
            3, // skip 3 opCodes if not changed
            -1 - nestedIcu.mainBinding, nestedIcuNodeIndex << 2 /* SHIFT_REF */ | 2 /* IcuSwitch */, 
            // FIXME(misko): Index should be part of the opcode
            nestTIcuIndex, mask, // mask of all the bindings of this ICU expression
            2, // skip 2 opCodes if not changed
            nestedIcuNodeIndex << 2 /* SHIFT_REF */ | 3 /* IcuUpdate */, nestTIcuIndex);
            icuCase.remove.push(nestTIcuIndex << 3 /* SHIFT_REF */ | 6 /* RemoveNestedIcu */, 
            // FIXME(misko): Index should be part of the opcode
            nestedIcuNodeIndex << 3 /* SHIFT_REF */ | 3 /* Remove */);
        }
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaTE4bl9wYXJzZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3JlbmRlcjMvaTE4bi9pMThuX3BhcnNlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUNILE9BQU8sd0JBQXdCLENBQUM7QUFDaEMsT0FBTyxpQ0FBaUMsQ0FBQztBQUV6QyxPQUFPLEVBQUMsa0JBQWtCLEVBQUUsWUFBWSxFQUFFLFNBQVMsRUFBRSxXQUFXLEVBQUUsY0FBYyxFQUFDLE1BQU0sbUNBQW1DLENBQUM7QUFDM0gsT0FBTyxFQUFDLGtCQUFrQixFQUFDLE1BQU0sK0JBQStCLENBQUM7QUFDakUsT0FBTyxFQUFDLFlBQVksRUFBRSxjQUFjLEVBQUMsTUFBTSxrQ0FBa0MsQ0FBQztBQUM5RSxPQUFPLEVBQUMsYUFBYSxFQUFDLE1BQU0sd0JBQXdCLENBQUM7QUFDckQsT0FBTyxFQUFDLFdBQVcsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBQzlDLE9BQU8sRUFBQyxZQUFZLEVBQUUsd0JBQXdCLEVBQUUsb0JBQW9CLEVBQUUsc0JBQXNCLEVBQUMsTUFBTSx3QkFBd0IsQ0FBQztBQUM1SCxPQUFPLEVBQUMsV0FBVyxFQUFDLE1BQU0sd0JBQXdCLENBQUM7QUFDbkQsT0FBTyxFQUFDLGNBQWMsRUFBRSxjQUFjLEVBQXlILE1BQU0sb0JBQW9CLENBQUM7QUFJMUwsT0FBTyxFQUFDLGFBQWEsRUFBUyxNQUFNLEVBQVEsTUFBTSxvQkFBb0IsQ0FBQztBQUN2RSxPQUFPLEVBQUMsV0FBVyxFQUFFLHdCQUF3QixFQUFDLE1BQU0sVUFBVSxDQUFDO0FBQy9ELE9BQU8sRUFBQyxpQkFBaUIsRUFBQyxNQUFNLHFCQUFxQixDQUFDO0FBQ3RELE9BQU8sRUFBQyxnQkFBZ0IsRUFBRSxRQUFRLEVBQUMsTUFBTSxvQkFBb0IsQ0FBQztBQUU5RCxPQUFPLEVBQUMseUJBQXlCLEVBQUUseUJB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U0FBUyxDQUFDLFNBQVMsQ0FBQyxXQUFXLENBQUMsRUFBRywyQkFBMkI7WUFDOUQsQ0FBQyxFQUFrQyxnQ0FBZ0M7WUFDbkUsQ0FBQyxDQUFDLEdBQUcsU0FBUyxDQUFDLFdBQVcsRUFDMUIsa0JBQWtCLHFCQUE4QixvQkFBNkI7WUFDN0UsbURBQW1EO1lBQ25ELGFBQWEsRUFDYixJQUFJLEVBQUcsa0RBQWtEO1lBQ3pELENBQUMsRUFBTSxnQ0FBZ0M7WUFDdkMsa0JBQWtCLHFCQUE4QixvQkFBNkIsRUFDN0UsYUFBYSxDQUFDLENBQUM7WUFDbkIsT0FBTyxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQ2YsYUFBYSxxQkFBOEIsMEJBQW1DO1lBQzlFLG1EQUFtRDtZQUNuRCxrQkFBa0IscUJBQThCLGlCQUEwQixDQUFDLENBQUM7U0FDakY7S0FDRjtBQUNILENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCAnLi4vLi4vdXRpbC9uZ19kZXZfbW9kZSc7XG5pbXBvcnQgJy4uLy4uL3V0aWwvbmdfaTE4bl9jbG9zdXJlX21vZGUnO1xuXG5pbXBvcnQge2dldFRlbXBsYXRlQ29udGVudCwgU1JDU0VUX0FUVFJTLCBVUklfQVRUUlMsIFZBTElEX0FUVFJTLCBWQUxJRF9FTEVNRU5UU30gZnJvbSAnLi4vLi4vc2FuaXRpemF0aW9uL2h0bWxfc2FuaXRpemVyJztcbmltcG9ydCB7Z2V0SW5lcnRCb2R5SGVscGVyfSBmcm9tICcuLi8uLi9zYW5pdGl6YXRpb24vaW5lcnRfYm9keSc7XG5pbXBvcnQge19zYW5pdGl6ZVVybCwgc2FuaXRpemVTcmNzZXR9IGZyb20gJy4uLy4uL3Nhbml0aXphdGlvbi91cmxfc2FuaXRpemVyJztcbmltcG9ydCB7YWRkQWxsVG9BcnJheX0gZnJvbSAnLi4vLi4vdXRpbC9hcnJheV91dGlscyc7XG5pbXBvcnQge2Fzc2VydEVxdWFsfSBmcm9tICcuLi8uLi91dGlsL2Fzc2VydCc7XG5pbXBvcnQge2FsbG9jRXhwYW5kbywgZWxlbWVudEF0dHJpYnV0ZUludGVybmFsLCBzZXRJbnB1dHNGb3JQcm9wZXJ0eSwgc2V0TmdSZWZsZWN0UHJvcGVydGllc30gZnJvbSAnLi4vaW5zdHJ1Y3Rpb25zL3NoYXJlZCc7XG5pbXBvcnQge2dldERvY3VtZW50fSBmcm9tICcuLi9pbnRlcmZhY2VzL2RvY3VtZW50JztcbmltcG9ydCB7Q09NTUVOVF9NQVJLRVIsIEVMRU1FTlRfTUFSS0VSLCBJMThuTXV0YXRlT3BDb2RlLCBJMThuTXV0YXRlT3BDb2RlcywgSTE4blVwZGF0ZU9wQ29kZSwgSTE4blVwZGF0ZU9wQ29kZXMsIEljdUNhc2UsIEljdUV4cHJlc3Npb24sIEljdVR5cGUsIFRJMThuLCBUSWN1fSBmcm9tICcuLi9pbnRlcmZhY2VzL2kxOG4nO1xuaW1wb3J0IHtUTm9kZVR5cGV9IGZyb20gJy4uL2ludGVyZmFjZXMvbm9kZSc7XG5pbXBvcnQge1JDb21tZW50LCBSRWxlbWVudH0gZnJvbSAnLi4vaW50ZXJmYWNlcy9yZW5kZXJlcic7XG5pbXBvcnQge1Nhbml0aXplckZufSBmcm9tICcuLi9pbnRlcmZhY2VzL3Nhbml0aXphdGlvbic7XG5pbXBvcnQge0hFQURFUl9PRkZTRVQsIExWaWV3LCBUX0hPU1QsIFRWaWV3fSBmcm9tICcuLi9pbnRlcmZhY2VzL3ZpZXcnO1xuaW1wb3J0IHtnZXRJc1BhcmVudCwgZ2V0UHJldmlvdXNPclBhcmVudFROb2RlfSBmcm9tICcuLi9zdGF0ZSc7XG5pbXBvcnQge2F0dGFjaERlYnVnR2V0dGVyfSBmcm9tICcuLi91dGlsL2RlYnVnX3V0aWxzJztcbmltcG9ydCB7Z2V0TmF0aXZlQnlJbmRleCwgZ2V0VE5vZGV9IGZyb20gJy4uL3V0aWwvdmlld191dGlscyc7XG5cbmltcG9ydCB7aTE4bk11dGF0ZU9wQ29kZXNUb1N0cmluZywgaTE4blVwZGF0ZU9wQ29kZXNUb1N0cmluZ30gZnJvbSAnLi9pMThuX2RlYnVnJztcblxuXG5cbmNvbnN0IEJJTkRJTkdfUkVHRVhQID0gL++/vShcXGQrKTo/XFxkKu+/vS9naTtcbmNvbnN0IElDVV9SRUdFWFAgPSAvKHtcXHMq77+9XFxkKzo/XFxkKu+/vVxccyosXFxzKlxcU3s2fVxccyosW1xcc1xcU10qfSkvZ2k7XG5jb25zdCBORVNURURfSUNVID0gL++/vShcXGQrKe+/vS87XG5jb25zdCBJQ1VfQkxPQ0tfUkVHRVhQID0gL15cXHMqKO+/vVxcZCs6P1xcZCrvv70pXFxzKixcXHMqKHNlbGVjdHxwbHVyYWwpXFxzKiwvO1xuXG5cbi8vIENvdW50IGZvciB0aGUgbnVtYmVyIG9mIHZhcnMgdGhhdCB3aWxsIGJlIGFsbG9jYXRlZCBmb3IgZWFjaCBpMThuIGJsb2NrLlxuLy8gSXQgaXMgZ2xvYmFsIGJlY2F1c2UgdGhpcyBpcyB1c2VkIGluIG11bHRpcGxlIGZ1bmN0aW9ucyB0aGF0IGluY2x1ZGUgbG9vcHMgYW5kIHJlY3Vyc2l2ZSBjYWxscy5cbi8vIFRoaXMgaXMgcmVzZXQgdG8gMCB3aGVuIGBpMThuU3RhcnRGaXJzdFBhc3NgIGlzIGNhbGxlZC5cbmxldCBpMThuVmFyc0NvdW50OiBudW1iZXI7XG5cbmNvbnN0IHBhcmVudEluZGV4U3RhY2s6IG51bWJlcltdID0gW107XG5cbmNvbnN0IE1BUktFUiA9IGDvv71gO1xuY29uc3QgU1VCVEVNUExBVEVfUkVHRVhQID0gL++/vVxcLz9cXCooXFxkKzpcXGQrKe+/vS9naTtcbmNvbnN0IFBIX1JFR0VYUCA9IC/vv70oXFwvP1sjKiFdXFxkKyk6P1xcZCrvv70vZ2k7XG5jb25zdCBlbnVtIFRhZ1R5cGUge1xuICBFTEVNRU5UID0gJyMnLFxuICBURU1QTEFURSA9ICcqJyxcbiAgUFJPSkVDVElPTiA9ICchJyxcbn1cblxuLyoqXG4gKiBBbmd1bGFyIERhcnQgaW50cm9kdWNlZCAmbmdzcDsgYXMgYSBwbGFjZWhvbGRlciBmb3Igbm9uLXJlbW92YWJsZSBzcGFjZSwgc2VlOlxuICogaHR0cHM6Ly9naXRodWIuY29tL2RhcnQtbGFuZy9hbmd1bGFyL2Jsb2IvMGJiNjExMzg3ZDI5ZDY1YjVhZjdmOWQyNTE1YWI1NzFmZDNmYmVlNC9fdGVzdHMvdGVzdC9jb21waWxlci9wcmVzZXJ2ZV93aGl0ZXNwYWNlX3Rlc3QuZGFydCNMMjUtTDMyXG4gKiBJbiBBbmd1bGFyIERhcnQgJm5nc3A7IGlzIGNvbnZlcnRlZCB0byB0aGUgMHhFNTAwIFBVQSAoUHJpdmF0ZSBVc2UgQXJlYXMpIHVuaWNvZGUgY2hhcmFjdGVyXG4gKiBhbmQgbGF0ZXIgb24gcmVwbGFjZWQgYnkgYSBzcGFjZS4gV2UgYXJlIHJlLWltcGxlbWVudGluZyB0aGUgc2FtZSBpZGVhIGhlcmUsIHNpbmNlIHRyYW5zbGF0aW9uc1xuICogbWlnaHQgY29udGFpbiB0aGlzIHNwZWNpYWwgY2hhcmFjdGVyLlxuICovXG5jb25zdCBOR1NQX1VOSUNPREVfUkVHRVhQID0gL1xcdUU1MDAvZztcbmZ1bmN0aW9uIHJlcGxhY2VOZ3NwKHZhbHVlOiBzdHJpbmcpOiBzdHJpbmcge1xuICByZXR1cm4gdmFsdWUucmVwbGFjZShOR1NQX1VOSUNPREVfUkVHRVhQLCAnICcpO1xufVxuXG5cbi8qKlxuICogU2VlIGBpMThuU3RhcnRgIGFib3ZlLlxuICovXG5leHBvcnQgZnVuY3Rpb24gaTE4blN0YXJ0Rmlyc3RQYXNzKFxuICAgIGxWaWV3OiBMVmlldywgdFZpZXc6IFRWaWV3LCBpbmRleDogbnVtYmVyLCBtZXNzYWdlOiBzdHJpbmcsIHN1YlRlbXBsYXRlSW5kZXg/OiBudW1iZXIpIHtcbiAgY29uc3Qgc3RhcnRJbmRleCA9IHRWaWV3LmJsdWVwcmludC5sZW5ndGggLSBIRUFERVJfT0ZGU0VUO1xuICBpMThuVmFyc0NvdW50ID0gMDtcbiAgY29uc3QgcHJldmlvdXNPclBhcmVudFROb2RlID0gZ2V0UHJldmlvdXNPclBhcmVudFROb2RlKCk7XG4gIGNvbnN0IHBhcmVudFROb2RlID1cbiAgICAgIGdldElzUGFyZW50KCkgPyBwcmV2aW91c09yUGFyZW50VE5vZGUgOiBwcmV2aW91c09yUGFyZW50VE5vZGUgJiYgcHJldmlvdXNPclBhcmVudFROb2RlLnBhcmVudDtcbiAgbGV0IHBhcmVudEluZGV4ID1cbiAgICAgIHBhcmVudFROb2RlICYmIHBhcmVudFROb2RlICE9PSBsVmlld1tUX0hPU1RdID8gcGFyZW50VE5vZGUuaW5kZXggLSBIRUFERVJfT0ZGU0VUIDogaW5kZXg7XG4gIGxldCBwYXJlbnRJbmRleFBvaW50ZXIgPSAwO1xuICBwYXJlbnRJbmRleFN0YWNrW3BhcmVudEluZGV4UG9pbnRlcl0gPSBwYXJlbnRJbmRleDtcbiAgY29uc3QgY3JlYXRlT3BDb2RlczogSTE4bk11dGF0ZU9wQ29kZXMgPSBbXTtcbiAgaWYgKG5nRGV2TW9kZSkge1xuICAgIGF0dGFjaERlYnVnR2V0dGVyKGNyZWF0ZU9wQ29kZXMsIGkxOG5NdXRhdGVPcENvZGVzVG9TdHJpbmcpO1xuICB9XG4gIC8vIElmIHRoZSBwcmV2aW91cyBub2RlIHdhc24ndCB0aGUgZGlyZWN0IHBhcmVudCB0aGVuIHdlIGhhdmUgYSB0cmFuc2xhdGlvbiB3aXRob3V0IHRvcCBsZXZlbFxuICAvLyBlbGVtZW50IGFuZCB3ZSBuZWVkIHRvIGtlZXAgYSByZWZlcmVuY2Ugb2YgdGhlIHByZXZpb3VzIGVsZW1lbnQgaWYgdGhlcmUgaXMgb25lLiBXZSBzaG91bGQgYWxzb1xuICAvLyBrZWVwIHRyYWNrIHdoZXRoZXIgYW4gZWxlbWVudCB3YXMgYSBwYXJlbnQgbm9kZSBvciBub3QsIHNvIHRoYXQgdGhlIGxvZ2ljIHRoYXQgY29uc3VtZXNcbiAgLy8gdGhlIGdlbmVyYXRlZCBgSTE4bk11dGF0ZU9wQ29kZWBzIGNhbiBsZXZlcmFnZSB0aGlzIGluZm9ybWF0aW9uIHRvIHByb3Blcmx5IHNldCBUTm9kZSBzdGF0ZVxuICAvLyAod2hldGhlciBpdCdzIGEgcGFyZW50IG9yIHNpYmxpbmcpLlxuICBpZiAoaW5kZXggPiAwICYmIHByZXZpb3VzT3JQYXJlbnRUTm9kZSAhPT0gcGFyZW50VE5vZGUpIHtcbiAgICBsZXQgcHJldmlvdXNUTm9kZUluZGV4ID0gcHJldmlvdXNPclBhcmVudFROb2RlLmluZGV4IC0gSEVBREVSX09GRlNFVDtcbiAgICAvLyBJZiBjdXJyZW50IFROb2RlIGlzIGEgc2libGluZyBub2RlLCBlbmNvZGUgaXQgdXNpbmcgYSBuZWdhdGl2ZSBpbmRleC4gVGhpcyBpbmZvcm1hdGlvbiBpc1xuICAgIC8vIHJlcXVpcmVkIHdoZW4gdGhlIGBTZWxlY3RgIGFjdGlvbiBpcyBwcm9jZXNzZWQgKHNlZSB0aGUgYHJlYWRDcmVhdGVPcENvZGVzYCBmdW5jdGlvbikuXG4gICAgaWYgKCFnZXRJc1BhcmVudCgpKSB7XG4gICAgICBwcmV2aW91c1ROb2RlSW5kZXggPSB+cHJldmlvdXNUTm9kZUluZGV4O1xuICAgIH1cbiAgICAvLyBDcmVhdGUgYW4gT3BDb2RlIHRvIHNlbGVjdCB0aGUgcHJldmlvdXMgVE5vZGVcbiAgICBjcmVhdGVPcENvZGVzLnB1c2gocHJldmlvdXNUTm9kZUluZGV4IDw8IEkxOG5NdXRhdGVPcENvZGUuU0hJRlRfUkVGIHwgSTE4bk11dGF0ZU9wQ29kZS5TZWxlY3QpO1xuICB9XG4gIGNvbnN0IHVwZGF0ZU9wQ29kZXM6IEkxOG5VcGRhdGVPcENvZGVzID0gW107XG4gIGlmIChuZ0Rldk1vZGUpIHtcbiAgICBhdHRhY2hEZWJ1Z0dldHRlcih1cGRhdGVPcENvZGVzLCBpMThuVXBkYXRlT3BDb2Rlc1RvU3RyaW5nKTtcbiAgfVxuICBjb25zdCBpY3VFeHByZXNzaW9uczogVEljdVtdID0gW107XG5cbiAgaWYgKG1lc3NhZ2UgPT09ICcnICYmIGlzUm9vdFRlbXBsYXRlTWVzc2FnZShzdWJUZW1wbGF0ZUluZGV4KSkge1xuICAgIC8vIElmIHRvcCBsZXZlbCB0cmFuc2xhdGlvbiBpcyBhbiBlbXB0eSBzdHJpbmcsIGRvIG5vdCBpbnZva2UgYWRkaXRpb25hbCBwcm9jZXNzaW5nXG4gICAgLy8gYW5kIGp1c3QgY3JlYXRlIG9wIGNvZGVzIGZvciBlbXB0eSB0ZXh0IG5vZGUgaW5zdGVhZC5cbiAgICBjcmVhdGVPcENvZGVzLnB1c2goXG4gICAgICAgIG1lc3NhZ2UsIGFsbG9jTm9kZUluZGV4KHN0YXJ0SW5kZXgpLFxuICAgICAgICBwYXJlbnRJbmRleCA8PCBJMThuTXV0YXRlT3BDb2RlLlNISUZUX1BBUkVOVCB8IEkxOG5NdXRhdGVPcENvZGUuQXBwZW5kQ2hpbGQpO1xuICB9IGVsc2Uge1xuICAgIGNvbnN0IHRlbXBsYXRlVHJhbnNsYXRpb24gPSBnZXRUcmFuc2xhdGlvbkZvclRlbXBsYXRlKG1lc3NhZ2UsIHN1YlRlbXBsYXRlSW5kZXgpO1xuICAgIGNvbnN0IG1zZ1BhcnRzID0gcmVwbGFjZU5nc3AodGVtcGxhdGVUcmFuc2xhdGlvbikuc3BsaXQoUEhfUkVHRVhQKTtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IG1zZ1BhcnRzLmxlbmd0aDsgaSsrKSB7XG4gICAgICBsZXQgdmFsdWUgPSBtc2dQYXJ0c1tpXTtcbiAgICAgIGlmIChpICYgMSkge1xuICAgICAgICAvLyBPZGQgaW5kZXhlcyBhcmUgcGxhY2Vob2xkZXJzIChlbGVtZW50cyBhbmQgc3ViLXRlbXBsYXRlcylcbiAgICAgICAgaWYgKHZhbHVlLmNoYXJBdCgwKSA9PT0gJy8nKSB7XG4gICAgICAgICAgLy8gSXQgaXMgYSBjbG9zaW5nIHRhZ1xuICAgICAgICAgIGlmICh2YWx1ZS5jaGFyQXQoMSkgPT09IFRhZ1R5cGUuRUxFTUVOVCkge1xuICAgICAgICAgICAgY29uc3QgcGhJbmRleCA9IHBhcnNlSW50KHZhbHVlLnN1YnN0cigyKSwgMTApO1xuICAgICAgICAgICAgcGFyZW50SW5kZXggPSBwYXJlbnRJbmRleFN0YWNrWy0tcGFyZW50SW5kZXhQb2ludGVyXTtcbiAgICAgICAgICAgIGNyZWF0ZU9wQ29kZXMucHVzaChwaEluZGV4IDw8IEkxOG5NdXRhdGVPcENvZGUuU0hJRlRfUkVGIHwgSTE4bk11dGF0ZU9wQ29kZS5FbGVtZW50RW5kKTtcbiAgICAgICAgICB9XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgY29uc3QgcGhJbmRleCA9IHBhcnNlSW50KHZhbHVlLnN1YnN0cigxKSwgMTApO1xuICAgICAgICAgIGNvbnN0IGlzRWxlbWVudCA9IHZhbHVlLmNoYXJBdCgwKSA9PT0gVGFnVHlwZS5FTEVNRU5UO1xuICAgICAgICAgIC8vIFRoZSB2YWx1ZSByZXByZXNlbnRzIGEgcGxhY2Vob2xkZXIgdGhhdCB3ZSBtb3ZlIHRvIHRoZSBkZXNpZ25hdGVkIGluZGV4LlxuICAgICAgICAgIC8vIE5vdGU6IHBvc2l0aXZlIGluZGljaWVzIGluZGljYXRlIHRoYXQgYSBUTm9kZSB3aXRoIGEgZ2l2ZW4gaW5kZXggc2hvdWxkIGFsc28gYmUgbWFya2VkXG4gICAgICAgICAgLy8gYXMgcGFyZW50IHdoaWxlIGV4ZWN1dGluZyBgU2VsZWN0YCBpbnN0cnVjdGlvbi5cbiAgICAgICAgICBjcmVhdGVPcENvZGVzLnB1c2goXG4gICAgICAgICAgICAgIChpc0VsZW1lbnQgPyBwaEluZGV4IDogfnBoSW5kZXgpIDw8IEkxOG5NdXRhdGVPcENvZGUuU0hJRlRfUkVGIHxcbiAgICAgICAgICAgICAgICAgIEkxOG5NdXRhdGVPcENvZGUuU2VsZWN0LFxuICAgICAgICAgICAgICBwYXJlbnRJbmRleCA8PCBJMThuTXV0YXRlT3BDb2RlLlNISUZUX1BBUkVOVCB8IEkxOG5NdXRhdGVPcENvZGUuQXBwZW5kQ2hpbGQpO1xuXG4gICAgICAgICAgaWYgKGlzRWxlbWVudCkge1xuICAgICAgICAgICAgcGFyZW50SW5kZXhTdGFja1srK3BhcmVudEluZGV4UG9pbnRlcl0gPSBwYXJlbnRJbmRleCA9IHBoSW5kZXg7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9IGVsc2Uge1xuICAgICAgICAvLyBFdmVuIGluZGV4ZXMgYXJlIHRleHQgKGluY2x1ZGluZyBiaW5kaW5ncyAmIElDVSBleHByZXNzaW9ucylcbiAgICAgICAgY29uc3QgcGFydHMgPSBleHRyYWN0UGFydHModmFsdWUpO1xuICAgICAgICBmb3IgKGxldCBqID0gMDsgaiA8IHBhcnRzLmxlbmd0aDsgaisrKSB7XG4gICAgICAgICAgaWYgKGogJiAxKSB7XG4gICAgICAgICAgICAvLyBPZGQgaW5kZXhlcyBhcmUgSUNVIGV4cHJlc3Npb25zXG4gICAgICAgICAgICBjb25zdCBpY3VFeHByZXNzaW9uID0gcGFydHNbal0gYXMgSWN1RXhwcmVzc2lvbjtcblxuICAgICAgICAgICAgLy8gVmVyaWZ5IHRoYXQgSUNVIGV4cHJlc3Npb24gaGFzIHRoZSByaWdodCBzaGFwZS4gVHJhbnNsYXRpb25zIG1pZ2h0IGNvbnRhaW4gaW52YWxpZFxuICAgICAgICAgICAgLy8gY29uc3RydWN0aW9ucyAod2hpbGUgb3JpZ2luYWwgbWVzc2FnZXMgd2VyZSBjb3JyZWN0KSwgc28gSUNVIHBhcnNpbmcgYXQgcnVudGltZSBtYXlcbiAgICAgICAgICAgIC8vIG5vdCBzdWNjZWVkICh0aHVzIGBpY3VFeHByZXNzaW9uYCByZW1haW5zIGEgc3RyaW5nKS5cbiAgICAgICAgICAgIGlmICh0eXBlb2YgaWN1RXhwcmVzc2lvbiAhPT0gJ29iamVjdCcpIHtcbiAgICAgICAgICAgICAgdGhyb3cgbmV3IEVycm9yKFxuICAgICAgICAgICAgICAgICAgYFVuYWJsZSB0byBwYXJzZSBJQ1UgZXhwcmVzc2lvbiBpbiBcIiR7dGVtcGxhdGVUcmFuc2xhdGlvbn1cIiBtZXNzYWdlLmApO1xuICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICAvLyBDcmVhdGUgdGhlIGNvbW1lbnQgbm9kZSB0aGF0IHdpbGwgYW5jaG9yIHRoZSBJQ1UgZXhwcmVzc2lvblxuICAgICAgICAgICAgY29uc3QgaWN1Tm9kZUluZGV4ID0gYWxsb2NOb2RlSW5kZXgoc3RhcnRJbmRleCk7XG4gICAgICAgICAgICBjcmVhdGVPcENvZGVzLnB1c2goXG4gICAgICAgICAgICAgICAgQ09NTUVOVF9NQVJLRVIsIG5nRGV2TW9kZSA/IGBJQ1UgJHtpY3VOb2RlSW5kZXh9YCA6ICcnLCBpY3VOb2RlSW5kZXgsXG4gICAgICAgICAgICAgICAgcGFyZW50SW5kZXggPDwgSTE4bk11dGF0ZU9wQ29kZS5TSElGVF9QQVJFTlQgfCBJMThuTXV0YXRlT3BDb2RlLkFwcGVuZENoaWxkKTtcblxuICAgICAgICAgICAgLy8gVXBkYXRlIGNvZGVzIGZvciB0aGUgSUNVIGV4cHJlc3Npb25cbiAgICAgICAgICAgIGNvbnN0IG1hc2sgPSBnZXRCaW5kaW5nTWFzayhpY3VFeHByZXNzaW9uKTtcbiAgICAgICAgICAgIGljdVN0YXJ0KGljdUV4cHJlc3Npb25zLCBpY3VFeHByZXNzaW9uLCBpY3VOb2RlSW5kZXgsIGljdU5vZGVJbmRleCk7XG4gICAgICAgICAgICAvLyBTaW5jZSB0aGlzIGlzIHJlY3Vyc2l2ZSwgdGhlIGxhc3QgVEljdSB0aGF0IHdhcyBwdXNoZWQgaXMgdGhlIG9uZSB3ZSB3YW50XG4gICAgICAgICAgICBjb25zdCB0SWN1SW5kZXggPSBpY3VFeHByZXNzaW9ucy5sZW5ndGggLSAxO1xuICAgICAgICAgICAgdXBkYXRlT3BDb2Rlcy5wdXNoKFxuICAgICAgICAgICAgICAgIHRvTWFza0JpdChpY3VFeHByZXNzaW9uLm1haW5CaW5kaW5nKSwgIC8vIG1hc2sgb2YgdGhlIG1haW4gYmluZGluZ1xuICAgICAgICAgICAgICAgIDMsICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIHNraXAgMyBvcENvZGVzIGlmIG5vdCBjaGFuZ2VkXG4gICAgICAgICAgICAgICAgLTEgLSBpY3VFeHByZXNzaW9uLm1haW5CaW5kaW5nLFxuICAgICAgICAgICAgICAgIGljdU5vZGVJbmRleCA8PCBJMThuVXBkYXRlT3BDb2RlLlNISUZUX1JFRiB8IEkxOG5VcGRhdGVPcENvZGUuSWN1U3dpdGNoLCB0SWN1SW5kZXgsXG4gICAgICAgICAgICAgICAgbWFzaywgIC8vIG1hc2sgb2YgYWxsIHRoZSBiaW5kaW5ncyBvZiB0aGlzIElDVSBleHByZXNzaW9uXG4gICAgICAgICAgICAgICAgMiwgICAgIC8vIHNraXAgMiBvcENvZGVzIGlmIG5vdCBjaGFuZ2VkXG4gICAgICAgICAgICAgICAgaWN1Tm9kZUluZGV4IDw8IEkxOG5VcGRhdGVPcENvZGUuU0hJRlRfUkVGIHwgSTE4blVwZGF0ZU9wQ29kZS5JY3VVcGRhdGUsIHRJY3VJbmRleCk7XG4gICAgICAgICAgfSBlbHNlIGlmIChwYXJ0c1tqXSAhPT0gJycpIHtcbiAgICAgICAgICAgIGNvbnN0IHRleHQgPSBwYXJ0c1tqXSBhcyBzdHJpbmc7XG4gICAgICAgICAgICAvLyBFdmVuIGluZGV4ZXMgYXJlIHRleHQgKGluY2x1ZGluZyBiaW5kaW5ncylcbiAgICAgICAgICAgIGNvbnN0IGhhc0JpbmRpbmcgPSB0ZXh0Lm1hdGNoKEJJTkRJTkdfUkVHRVhQKTtcbiAgICAgICAgICAgIC8vIENyZWF0ZSB0ZXh0IG5vZGVzXG4gICAgICAgICAgICBjb25zdCB0ZXh0Tm9kZUluZGV4ID0gYWxsb2NOb2RlSW5kZXgoc3RhcnRJbmRleCk7XG4gICAgICAgICAgICBjcmVhdGVPcENvZGVzLnB1c2goXG4gICAgICAgICAgICAgICAgLy8gSWYgdGhlcmUgaXMgYSBiaW5kaW5nLCB0aGUgdmFsdWUgd2lsbCBiZSBzZXQgZHVyaW5nIHVwZGF0ZVxuICAgICAgICAgICAgICAgIGhhc0JpbmRpbmcgPyAnJyA6IHRleHQsIHRleHROb2RlSW5kZXgsXG4gICAgICAgICAgICAgICAgcGFyZW50SW5kZXggPDwgSTE4bk11dGF0ZU9wQ29kZS5TSElGVF9QQVJFTlQgfCBJMThuTXV0YXRlT3BDb2RlLkFwcGVuZENoaWxkKTtcblxuICAgICAgICAgICAgaWYgKGhhc0JpbmRpbmcpIHtcbiAgICAgICAgICAgICAgYWRkQWxsVG9BcnJheShnZW5lcmF0ZUJpbmRpbmdVcGRhdGVPcENvZGVzKHRleHQsIHRleHROb2RlSW5kZXgpLCB1cGRhdGVPcENvZGVzKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICBpZiAoaTE4blZhcnNDb3VudCA+IDApIHtcbiAgICBhbGxvY0V4cGFuZG8odFZpZXcsIGxWaWV3LCBpMThuVmFyc0NvdW50KTtcbiAgfVxuXG4gIC8vIE5PVEU6IGxvY2FsIHZhciBuZWVkZWQgdG8gcHJvcGVybHkgYXNzZXJ0IHRoZSB0eXBlIG9mIGBUSTE4bmAuXG4gIGNvbnN0IHRJMThuOiBUSTE4biA9IHtcbiAgICB2YXJzOiBpMThuVmFyc0NvdW50LFxuICAgIGNyZWF0ZTogY3JlYXRlT3BDb2RlcyxcbiAgICB1cGRhdGU6IHVwZGF0ZU9wQ29kZXMsXG4gICAgaWN1czogaWN1RXhwcmVzc2lvbnMubGVuZ3RoID8gaWN1RXhwcmVzc2lvbnMgOiBudWxsLFxuICB9O1xuXG4gIHRWaWV3LmRhdGFbaW5kZXggKyBIRUFERVJfT0ZGU0VUXSA9IHRJMThuO1xufVxuXG4vKipcbiAqIFNlZSBgaTE4bkF0dHJpYnV0ZXNgIGFib3ZlLlxuICovXG5leHBvcnQgZnVuY3Rpb24gaTE4bkF0dHJpYnV0ZXNGaXJzdFBhc3MoXG4gICAgbFZpZXc6IExWaWV3LCB0VmlldzogVFZpZXcsIGluZGV4OiBudW1iZXIsIHZhbHVlczogc3RyaW5nW10pIHtcbiAgY29uc3QgcHJldmlvdXNFbGVtZW50ID0gZ2V0UHJldmlvdXNPclBhcmVudFROb2RlKCk7XG4gIGNvbnN0IHByZXZpb3VzRWxlbWVudEluZGV4ID0gcHJldmlvdXNFbGVtZW50LmluZGV4IC0gSEVBREVSX09GRlNFVDtcbiAgY29uc3QgdXBkYXRlT3BDb2RlczogSTE4blVwZGF0ZU9wQ29kZXMgPSBbXTtcbiAgaWYgKG5nRGV2TW9kZSkge1xuICAgIGF0dGFjaERlYnVnR2V0dGVyKHVwZGF0ZU9wQ29kZXMsIGkxOG5VcGRhdGVPcENvZGVzVG9TdHJpbmcpO1xuICB9XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgdmFsdWVzLmxlbmd0aDsgaSArPSAyKSB7XG4gICAgY29uc3QgYXR0ck5hbWUgPSB2YWx1ZXNbaV07XG4gICAgY29uc3QgbWVzc2FnZSA9IHZhbHVlc1tpICsgMV07XG4gICAgY29uc3QgcGFydHMgPSBtZXNzYWdlLnNwbGl0KElDVV9SRUdFWFApO1xuICAgIGZvciAobGV0IGogPSAwOyBqIDwgcGFydHMubGVuZ3RoOyBqKyspIHtcbiAgICAgIGNvbnN0IHZhbHVlID0gcGFydHNbal07XG5cbiAgICAgIGlmIChqICYgMSkge1xuICAgICAgICAvLyBPZGQgaW5kZXhlcyBhcmUgSUNVIGV4cHJlc3Npb25zXG4gICAgICAgIC8vIFRPRE8ob2NvbWJlKTogc3VwcG9ydCBJQ1UgZXhwcmVzc2lvbnMgaW4gYXR0cmlidXRlc1xuICAgICAgICB0aHJvdyBuZXcgRXJyb3IoJ0lDVSBleHByZXNzaW9ucyBhcmUgbm90IHlldCBzdXBwb3J0ZWQgaW4gYXR0cmlidXRlcycpO1xuICAgICAgfSBlbHNlIGlmICh2YWx1ZSAhPT0gJycpIHtcbiAgICAgICAgLy8gRXZlbiBpbmRleGVzIGFyZSB0ZXh0IChpbmNsdWRpbmcgYmluZGluZ3MpXG4gICAgICAgIGNvbnN0IGhhc0JpbmRpbmcgPSAhIXZhbHVlLm1hdGNoKEJJTkRJTkdfUkVHRVhQKTtcbiAgICAgICAgaWYgKGhhc0JpbmRpbmcpIHtcbiAgICAgICAgICBpZiAodFZpZXcuZmlyc3RDcmVhdGVQYXNzICYmIHRWaWV3LmRhdGFbaW5kZXggKyBIRUFERVJfT0ZGU0VUXSA9PT0gbnVsbCkge1xuICAgICAgICAgICAgYWRkQWxsVG9BcnJheShcbiAgICAgICAgICAgICAgICBnZW5lcmF0ZUJpbmRpbmdVcGRhdGVPcENvZGVzKHZhbHVlLCBwcmV2aW91c0VsZW1lbnRJbmRleCwgYXR0ck5hbWUpLCB1cGRhdGVPcENvZGVzKTtcbiAgICAgICAgICB9XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgY29uc3QgdE5vZGUgPSBnZXRUTm9kZSh0VmlldywgcHJldmlvdXNFbGVtZW50SW5kZXgpO1xuICAgICAgICAgIC8vIFNldCBhdHRyaWJ1dGVzIGZvciBFbGVtZW50cyBvbmx5LCBmb3Igb3RoZXIgdHlwZXMgKGxpa2UgRWxlbWVudENvbnRhaW5lciksXG4gICAgICAgICAgLy8gb25seSBzZXQgaW5wdXRzIGJlbG93XG4gICAgICAgICAgaWYgKHROb2RlLnR5cGUgPT09IFROb2RlVHlwZS5FbGVtZW50KSB7XG4gICAgICAgICAgICBlbGVtZW50QXR0cmlidXRlSW50ZXJuYWwodE5vZGUsIGxWaWV3LCBhdHRyTmFtZSwgdmFsdWUsIG51bGwsIG51bGwpO1xuICAgICAgICAgIH1cbiAgICAgICAgICAvLyBDaGVjayBpZiB0aGF0IGF0dHJpYnV0ZSBpcyBhIGRpcmVjdGl2ZSBpbnB1dFxuICAgICAgICAgIGNvbnN0IGRhdGFWYWx1ZSA9IHROb2RlLmlucHV0cyAhPT0gbnVsbCAmJiB0Tm9kZS5pbnB1dHNbYXR0ck5hbWVdO1xuICAgICAgICAgIGlmIChkYXRhVmFsdWUpIHtcbiAgICAgICAgICAgIHNldElucHV0c0ZvclByb3BlcnR5KHRWaWV3LCBsVmlldywgZGF0YVZhbHVlLCBhdHRyTmFtZSwgdmFsdWUpO1xuICAgICAgICAgICAgaWYgKG5nRGV2TW9kZSkge1xuICAgICAgICAgICAgICBjb25zdCBlbGVtZW50ID0gZ2V0TmF0aXZlQnlJbmRleChwcmV2aW91c0VsZW1lbnRJbmRleCwgbFZpZXcpIGFzIFJFbGVtZW50IHwgUkNvbW1lbnQ7XG4gICAgICAgICAgICAgIHNldE5nUmVmbGVjdFByb3BlcnRpZXMobFZpZXcsIGVsZW1lbnQsIHROb2RlLnR5cGUsIGRhdGFWYWx1ZSwgdmFsdWUpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIGlmICh0Vmlldy5maXJzdENyZWF0ZVBhc3MgJiYgdFZpZXcuZGF0YVtpbmRleCArIEhFQURFUl9PRkZTRVRdID09PSBudWxsKSB7XG4gICAgdFZpZXcuZGF0YVtpbmRleCArIEhFQURFUl9PRkZTRVRdID0gdXBkYXRlT3BDb2RlcztcbiAgfVxufVxuXG5cbi8qKlxuICogR2VuZXJhdGUgdGhlIE9wQ29kZXMgdG8gdXBkYXRlIHRoZSBiaW5kaW5ncyBvZiBhIHN0cmluZy5cbiAqXG4gKiBAcGFyYW0gc3RyIFRoZSBzdHJpbmcgY29udGFpbmluZyB0aGUgYmluZGluZ3MuXG4gKiBAcGFyYW0gZGVzdGluYXRpb25Ob2RlIEluZGV4IG9mIHRoZSBkZXN0aW5hdGlvbiBub2RlIHdoaWNoIHdpbGwgcmVjZWl2ZSB0aGUgYmluZGluZy5cbiAqIEBwYXJhbSBhdHRyTmFtZSBOYW1lIG9mIHRoZSBhdHRyaWJ1dGUsIGlmIHRoZSBzdHJpbmcgYmVsb25ncyB0byBhbiBhdHRyaWJ1dGUuXG4gKiBAcGFyYW0gc2FuaXRpemVGbiBTYW5pdGl6YXRpb24gZnVuY3Rpb24gdXNlZCB0byBzYW5pdGl6ZSB0aGUgc3RyaW5nIGFmdGVyIHVwZGF0ZSwgaWYgbmVjZXNzYXJ5LlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2VuZXJhdGVCaW5kaW5nVXBkYXRlT3BDb2RlcyhcbiAgICBzdHI6IHN0cmluZywgZGVzdGluYXRpb25Ob2RlOiBudW1iZXIsIGF0dHJOYW1lPzogc3RyaW5nLFxuICAgIHNhbml0aXplRm46IFNhbml0aXplckZufG51bGwgPSBudWxsKTogSTE4blVwZGF0ZU9wQ29kZXMge1xuICBjb25zdCB1cGRhdGVPcENvZGVzOiBJMThuVXBkYXRlT3BDb2RlcyA9IFtudWxsLCBudWxsXTsgIC8vIEFsbG9jIHNwYWNlIGZvciBtYXNrIGFuZCBzaXplXG4gIGlmIChuZ0Rldk1vZGUpIHtcbiAgICBhdHRhY2hEZWJ1Z0dldHRlcih1cGRhdGVPcENvZGVzLCBpMThuVXBkYXRlT3BDb2Rlc1RvU3RyaW5nKTtcbiAgfVxuICBjb25zdCB0ZXh0UGFydHMgPSBzdHIuc3BsaXQoQklORElOR19SRUdFWFApO1xuICBsZXQgbWFzayA9IDA7XG5cbiAgZm9yIChsZXQgaiA9IDA7IGogPCB0ZXh0UGFydHMubGVuZ3RoOyBqKyspIHtcbiAgICBjb25zdCB0ZXh0VmFsdWUgPSB0ZXh0UGFydHNbal07XG5cbiAgICBpZiAoaiAmIDEpIHtcbiAgICAgIC8vIE9kZCBpbmRleGVzIGFyZSBiaW5kaW5nc1xuICAgICAgY29uc3QgYmluZGluZ0luZGV4ID0gcGFyc2VJbnQodGV4dFZhbHVlLCAxMCk7XG4gICAgICB1cGRhdGVPcENvZGVzLnB1c2goLTEgLSBiaW5kaW5nSW5kZXgpO1xuICAgICAgbWFzayA9IG1hc2sgfCB0b01hc2tCaXQoYmluZGluZ0luZGV4KTtcbiAgICB9IGVsc2UgaWYgKHRleHRWYWx1ZSAhPT0gJycpIHtcbiAgICAgIC8vIEV2ZW4gaW5kZXhlcyBhcmUgdGV4dFxuICAgICAgdXBkYXRlT3BDb2Rlcy5wdXNoKHRleHRWYWx1ZSk7XG4gICAgfVxuICB9XG5cbiAgdXBkYXRlT3BDb2Rlcy5wdXNoKFxuICAgICAgZGVzdGluYXRpb25Ob2RlIDw8IEkxOG5VcGRhdGVPcENvZGUuU0hJRlRfUkVGIHxcbiAgICAgIChhdHRyTmFtZSA/IEkxOG5VcGRhdGVPcENvZGUuQXR0ciA6IEkxOG5VcGRhdGVPcENvZGUuVGV4dCkpO1xuICBpZiAoYXR0ck5hbWUpIHtcbiAgICB1cGRhdGVPcENvZGVzLnB1c2goYXR0ck5hbWUsIHNhbml0aXplRm4pO1xuICB9XG4gIHVwZGF0ZU9wQ29kZXNbMF0gPSBtYXNrO1xuICB1cGRhdGVPcENvZGVzWzFdID0gdXBkYXRlT3BDb2Rlcy5sZW5ndGggLSAyO1xuICByZXR1cm4gdXBkYXRlT3BDb2Rlcztcbn1cblxuZnVuY3Rpb24gZ2V0QmluZGluZ01hc2soaWN1RXhwcmVzc2lvbjogSWN1RXhwcmVzc2lvbiwgbWFzayA9IDApOiBudW1iZXIge1xuICBtYXNrID0gbWFzayB8IHRvTWFza0JpdChpY3VFeHByZXNzaW9uLm1haW5CaW5kaW5nKTtcbiAgbGV0IG1hdGNoO1xuICBmb3IgKGxldCBpID0gMDsgaSA8IGljdUV4cHJlc3Npb24udmFsdWVzLmxlbmd0aDsgaSsrKSB7XG4gICAgY29uc3QgdmFsdWVBcnIgPSBpY3VFeHByZXNzaW9uLnZhbHVlc1tpXTtcbiAgICBmb3IgKGxldCBqID0gMDsgaiA8IHZhbHVlQXJyLmxlbmd0aDsgaisrKSB7XG4gICAgICBjb25zdCB2YWx1ZSA9IHZhbHVlQXJyW2pdO1xuICAgICAgaWYgKHR5cGVvZiB2YWx1ZSA9PT0gJ3N0cmluZycpIHtcbiAgICAgICAgd2hpbGUgKG1hdGNoID0gQklORElOR19SRUdFWFAuZXhlYyh2YWx1ZSkpIHtcbiAgICAgICAgICBtYXNrID0gbWFzayB8IHRvTWFza0JpdChwYXJzZUludChtYXRjaFsxXSwgMTApKTtcbiAgICAgICAgfVxuICAgICAgfSBlbHNlIHtcbiAgICAgICAgbWFzayA9IGdldEJpbmRpbmdNYXNrKHZhbHVlIGFzIEljdUV4cHJlc3Npb24sIG1hc2spO1xuICAgICAgfVxuICAgIH1cbiAgfVxuICByZXR1cm4gbWFzaztcbn1cblxuZnVuY3Rpb24gYWxsb2NOb2RlSW5kZXgoc3RhcnRJbmRleDogbnVtYmVyKTogbnVtYmVyIHtcbiAgcmV0dXJuIHN0YXJ0SW5kZXggKyBpMThuVmFyc0NvdW50Kys7XG59XG5cblxuLyoqXG4gKiBDb252ZXJ0IGJpbmRpbmcgaW5kZXggdG8gbWFzayBiaXQuXG4gKlxuICogRWFjaCBpbmRleCByZXByZXNlbnRzIGEgc2luZ2xlIGJpdCBvbiB0aGUgYml0LW1hc2suIEJlY2F1c2UgYml0LW1hc2sgb25seSBoYXMgMzIgYml0cywgd2UgbWFrZVxuICogdGhlIDMybmQgYml0IHNoYXJlIGFsbCBtYXNrcyBmb3IgYWxsIGJpbmRpbmdzIGhpZ2hlciB0aGFuIDMyLiBTaW5jZSBpdCBpcyBleHRyZW1lbHkgcmFyZSB0byBoYXZlXG4gKiBtb3JlIHRoYW4gMzIgYmluZGluZ3MgdGhpcyB3aWxsIGJlIGhpdCB2ZXJ5IHJhcmVseS4gVGhlIGRvd25zaWRlIG9mIGhpdHRpbmcgdGhpcyBjb3JuZXIgY2FzZSBpc1xuICogdGhhdCB3ZSB3aWxsIGV4ZWN1dGUgYmluZGluZyBjb2RlIG1vcmUgb2Z0ZW4gdGhhbiBuZWNlc3NhcnkuIChwZW5hbHR5IG9mIHBlcmZvcm1hbmNlKVxuICovXG5mdW5jdGlvbiB0b01hc2tCaXQoYmluZGluZ0luZGV4OiBudW1iZXIpOiBudW1iZXIge1xuICByZXR1cm4gMSA8PCBNYXRoLm1pbihiaW5kaW5nSW5kZXgsIDMxKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGlzUm9vdFRlbXBsYXRlTWVzc2FnZShzdWJUZW1wbGF0ZUluZGV4OiBudW1iZXJ8XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuZGVmaW5lZCk6IHN1YlRlbXBsYXRlSW5kZXggaXMgdW5kZWZpbmVkIHtcbiAgcmV0dXJuIHN1YlRlbXBsYXRlSW5kZXggPT09IHVuZGVmaW5lZDtcbn1cblxuXG4vKipcbiAqIFJlbW92ZXMgZXZlcnl0aGluZyBpbnNpZGUgdGhlIHN1Yi10ZW1wbGF0ZXMgb2YgYSBtZXNzYWdlLlxuICovXG5mdW5jdGlvbiByZW1vdmVJbm5lclRlbXBsYXRlVHJhbnNsYXRpb24obWVzc2FnZTogc3RyaW5nKTogc3RyaW5nIHtcbiAgbGV0IG1hdGNoO1xuICBsZXQgcmVzID0gJyc7XG4gIGxldCBpbmRleCA9IDA7XG4gIGxldCBpblRlbXBsYXRlID0gZmFsc2U7XG4gIGxldCB0YWdNYXRjaGVkO1xuXG4gIHdoaWxlICgobWF0Y2ggPSBTVUJURU1QTEFURV9SRUdFWFAuZXhlYyhtZXNzYWdlKSkgIT09IG51bGwpIHtcbiAgICBpZiAoIWluVGVtcGxhdGUpIHtcbiAgICAgIHJlcyArPSBtZXNzYWdlLnN1YnN0cmluZyhpbmRleCwgbWF0Y2guaW5kZXggKyBtYXRjaFswXS5sZW5ndGgpO1xuICAgICAgdGFnTWF0Y2hlZCA9IG1hdGNoWzFdO1xuICAgICAgaW5UZW1wbGF0ZSA9IHRydWU7XG4gICAgfSBlbHNlIHtcbiAgICAgIGlmIChtYXRjaFswXSA9PT0gYCR7TUFSS0VSfS8qJHt0YWdNYXRjaGVkfSR7TUFSS0VSfWApIHtcbiAgICAgICAgaW5kZXggPSBtYXRjaC5pbmRleDtcbiAgICAgICAgaW5UZW1wbGF0ZSA9IGZhbHNlO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIG5nRGV2TW9kZSAmJlxuICAgICAgYXNzZXJ0RXF1YWwoXG4gICAgICAgICAgaW5UZW1wbGF0ZSwgZmFsc2UsXG4gICAgICAgICAgYFRhZyBtaXNtYXRjaDogdW5hYmxlIHRvIGZpbmQgdGhlIGVuZCBvZiB0aGUgc3ViLXRlbXBsYXRlIGluIHRoZSB0cmFuc2xhdGlvbiBcIiR7XG4gICAgICAgICAgICAgIG1lc3NhZ2V9XCJgKTtcblxuICByZXMgKz0gbWVzc2FnZS5zdWJzdHIoaW5kZXgpO1xuICByZXR1cm4gcmVzO1xufVxuXG5cbi8qKlxuICogRXh0cmFjdHMgYSBwYXJ0IG9mIGEgbWVzc2FnZSBhbmQgcmVtb3ZlcyB0aGUgcmVzdC5cbiAqXG4gKiBUaGlzIG1ldGhvZCBpcyB1c2VkIGZvciBleHRyYWN0aW5nIGEgcGFydCBvZiB0aGUgbWVzc2FnZSBhc3NvY2lhdGVkIHdpdGggYSB0ZW1wbGF0ZS4gQSB0cmFuc2xhdGVkXG4gKiBtZXNzYWdlIGNhbiBzcGFuIG11bHRpcGxlIHRlbXBsYXRlcy5cbiAqXG4gKiBFeGFtcGxlOlxuICogYGBgXG4gKiA8ZGl2IGkxOG4+VHJhbnNsYXRlIDxzcGFuICpuZ0lmPm1lPC9zcGFuPiE8L2Rpdj5cbiAqIGBgYFxuICpcbiAqIEBwYXJhbSBtZXNzYWdlIFRoZSBtZXNzYWdlIHRvIGNyb3BcbiAqIEBwYXJhbSBzdWJUZW1wbGF0ZUluZGV4IEluZGV4IG9mIHRoZSBzdWItdGVtcGxhdGUgdG8gZXh0cmFjdC4gSWYgdW5kZWZpbmVkIGl0IHJldHVybnMgdGhlXG4gKiBleHRlcm5hbCB0ZW1wbGF0ZSBhbmQgcmVtb3ZlcyBhbGwgc3ViLXRlbXBsYXRlcy5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldFRyYW5zbGF0aW9uRm9yVGVtcGxhdGUobWVzc2FnZTogc3RyaW5nLCBzdWJUZW1wbGF0ZUluZGV4PzogbnVtYmVyKSB7XG4gIGlmIChpc1Jvb3RUZW1wbGF0ZU1lc3NhZ2Uoc3ViVGVtcGxhdGVJbmRleCkpIHtcbiAgICAvLyBXZSB3YW50IHRoZSByb290IHRlbXBsYXRlIG1lc3NhZ2UsIGlnbm9yZSBhbGwgc3ViLXRlbXBsYXRlc1xuICAgIHJldHVybiByZW1vdmVJbm5lclRlbXBsYXRlVHJhbnNsYXRpb24obWVzc2FnZSk7XG4gIH0gZWxzZSB7XG4gICAgLy8gV2Ugd2FudCBhIHNwZWNpZmljIHN1Yi10ZW1wbGF0ZVxuICAgIGNvbnN0IHN0YXJ0ID1cbiAgICAgICAgbWVzc2FnZS5pbmRleE9mKGA6JHtzdWJUZW1wbGF0ZUluZGV4fSR7TUFSS0VSfWApICsgMiArIHN1YlRlbXBsYXRlSW5kZXgudG9TdHJpbmcoKS5sZW5ndGg7XG4gICAgY29uc3QgZW5kID0gbWVzc2FnZS5zZWFyY2gobmV3IFJlZ0V4cChgJHtNQVJLRVJ9XFxcXC9cXFxcKlxcXFxkKzoke3N1YlRlbXBsYXRlSW5kZXh9JHtNQVJLRVJ9YCkpO1xuICAgIHJldHVybiByZW1vdmVJbm5lclRlbXBsYXRlVHJhbnNsYXRpb24obWVzc2FnZS5zdWJzdHJpbmcoc3RhcnQsIGVuZCkpO1xuICB9XG59XG5cbi8qKlxuICogR2VuZXJhdGUgdGhlIE9wQ29kZXMgZm9yIElDVSBleHByZXNzaW9ucy5cbiAqXG4gKiBAcGFyYW0gdEljdXNcbiAqIEBwYXJhbSBpY3VFeHByZXNzaW9uXG4gKiBAcGFyYW0gc3RhcnRJbmRleFxuICogQHBhcmFtIGV4cGFuZG9TdGFydEluZGV4XG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBpY3VTdGFydChcbiAgICB0SWN1czogVEljdVtdLCBpY3VFeHByZXNzaW9uOiBJY3VFeHByZXNzaW9uLCBzdGFydEluZGV4OiBudW1iZXIsXG4gICAgZXhwYW5kb1N0YXJ0SW5kZXg6IG51bWJlcik6IHZvaWQge1xuICBjb25zdCBjcmVhdGVDb2RlczogSTE4bk11dGF0ZU9wQ29kZXNbXSA9IFtdO1xuICBjb25zdCByZW1vdmVDb2RlczogSTE4bk11dGF0ZU9wQ29kZXNbXSA9IFtdO1xuICBjb25zdCB1cGRhdGVDb2RlczogSTE4blVwZGF0ZU9wQ29kZXNbXSA9IFtdO1xuICBjb25zdCB2YXJzID0gW107XG4gIGNvbnN0IGNoaWxkSWN1czogbnVtYmVyW11bXSA9IFtdO1xuICBjb25zdCB2YWx1ZXMgPSBpY3VFeHByZXNzaW9uLnZhbHVlcztcbiAgZm9yIChsZXQgaSA9IDA7IGkgPCB2YWx1ZXMubGVuZ3RoOyBpKyspIHtcbiAgICAvLyBFYWNoIHZhbHVlIGlzIGFuIGFycmF5IG9mIHN0cmluZ3MgJiBvdGhlciBJQ1UgZXhwcmVzc2lvbnNcbiAgICBjb25zdCB2YWx1ZUFyciA9IHZhbHVlc1tpXTtcbiAgICBjb25zdCBuZXN0ZWRJY3VzOiBJY3VFeHByZXNzaW9uW10gPSBbXTtcbiAgICBmb3IgKGxldCBqID0gMDsgaiA8IHZhbHVlQXJyLmxlbmd0aDsgaisrKSB7XG4gICAgICBjb25zdCB2YWx1ZSA9IHZhbHVlQXJyW2pdO1xuICAgICAgaWYgKHR5cGVvZiB2YWx1ZSAhPT0gJ3N0cmluZycpIHtcbiAgICAgICAgLy8gSXQgaXMgYW4gbmVzdGVkIElDVSBleHByZXNzaW9uXG4gICAgICAgIGNvbnN0IGljdUluZGV4ID0gbmVzdGVkSWN1cy5wdXNoKHZhbHVlIGFzIEljdUV4cHJlc3Npb24pIC0gMTtcbiAgICAgICAgLy8gUmVwbGFjZSBuZXN0ZWQgSUNVIGV4cHJlc3Npb24gYnkgYSBjb21tZW50IG5vZGVcbiAgICAgICAgdmFsdWVBcnJbal0gPSBgPCEtLe+/vSR7aWN1SW5kZXh977+9LS0+YDtcbiAgICAgIH1cbiAgICB9XG4gICAgY29uc3QgaWN1Q2FzZTogSWN1Q2FzZSA9XG4gICAgICAgIHBhcnNlSWN1Q2FzZSh2YWx1ZUFyci5qb2luKCcnKSwgc3RhcnRJbmRleCwgbmVzdGVkSWN1cywgdEljdXMsIGV4cGFuZG9TdGFydEluZGV4KTtcbiAgICBjcmVhdGVDb2Rlcy5wdXNoKGljdUNhc2UuY3JlYXRlKTtcbiAgICByZW1vdmVDb2Rlcy5wdXNoKGljdUNhc2UucmVtb3ZlKTtcbiAgICB1cGRhdGVDb2Rlcy5wdXNoKGljdUNhc2UudXBkYXRlKTtcbiAgICB2YXJzLnB1c2goaWN1Q2FzZS52YXJzKTtcbiAgICBjaGlsZEljdXMucHVzaChpY3VDYXNlLmNoaWxkSWN1cyk7XG4gIH1cbiAgY29uc3QgdEljdTogVEljdSA9IHtcbiAgICB0eXBlOiBpY3VFeHByZXNzaW9uLnR5cGUsXG4gICAgdmFycyxcbiAgICBjdXJyZW50Q2FzZUxWaWV3SW5kZXg6IEhFQURFUl9PRkZTRVQgK1xuICAgICAgICBleHBhbmRvU3RhcnRJbmRleCAgLy8gZXhwYW5kb1N0YXJ0SW5kZXggZG9lcyBub3QgaW5jbHVkZSB0aGUgaGVhZGVyIHNvIGFkZCBpdC5cbiAgICAgICAgKyAxLCAgICAgICAgICAgICAgIC8vIFRoZSBmaXJzdCBpdGVtIHN0b3JlZCBpcyB0aGUgYDwhLS1JQ1UgIy0tPmAgYW5jaG9yIHNvIHNraXAgaXQuXG4gICAgY2hpbGRJY3VzLFxuICAgIGNhc2VzOiBpY3VFeHByZXNzaW9uLmNhc2VzLFxuICAgIGNyZWF0ZTogY3JlYXRlQ29kZXMsXG4gICAgcmVtb3ZlOiByZW1vdmVDb2RlcyxcbiAgICB1cGRhdGU6IHVwZGF0ZUNvZGVzXG4gIH07XG4gIHRJY3VzLnB1c2godEljdSk7XG4gIC8vIEFkZGluZyB0aGUgbWF4aW11bSBwb3NzaWJsZSBvZiB2YXJzIG5lZWRlZCAoYmFzZWQgb24gdGhlIGNhc2VzIHdpdGggdGhlIG1vc3QgdmFycylcbiAgaTE4blZhcnNDb3VudCArPSBNYXRoLm1heCguLi52YXJzKTtcbn1cblxuLyoqXG4gKiBQYXJzZXMgdGV4dCBjb250YWluaW5nIGFuIElDVSBleHByZXNzaW9uIGFuZCBwcm9kdWNlcyBhIEpTT04gb2JqZWN0IGZvciBpdC5cbiAqIE9yaWdpbmFsIGNvZGUgZnJvbSBjbG9zdXJlIGxpYnJhcnksIG1vZGlmaWVkIGZvciBBbmd1bGFyLlxuICpcbiAqIEBwYXJhbSBwYXR0ZXJuIFRleHQgY29udGFpbmluZyBhbiBJQ1UgZXhwcmVzc2lvbiB0aGF0IG5lZWRzIHRvIGJlIHBhcnNlZC5cbiAqXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBwYXJzZUlDVUJsb2NrKHBhdHRlcm46IHN0cmluZyk6IEljdUV4cHJlc3Npb24ge1xuICBjb25zdCBjYXNlcyA9IFtdO1xuICBjb25zdCB2YWx1ZXM6IChzdHJpbmd8SWN1RXhwcmVzc2lvbilbXVtdID0gW107XG4gIGxldCBpY3VUeXBlID0gSWN1VHlwZS5wbHVyYWw7XG4gIGxldCBtYWluQmluZGluZyA9IDA7XG4gIHBhdHRlcm4gPSBwYXR0ZXJuLnJlcGxhY2UoSUNVX0JMT0NLX1JFR0VYUCwgZnVuY3Rpb24oc3RyOiBzdHJpbmcsIGJpbmRpbmc6IHN0cmluZywgdHlwZTogc3RyaW5nKSB7XG4gICAgaWYgKHR5cGUgPT09ICdzZWxlY3QnKSB7XG4gICAgICBpY3VUeXBlID0gSWN1VHlwZS5zZWxlY3Q7XG4gICAgfSBlbHNlIHtcbiAgICAgIGljdVR5cGUgPSBJY3VUeXBlLnBsdXJhbDtcbiAgICB9XG4gICAgbWFpbkJpbmRpbmcgPSBwYXJzZUludChiaW5kaW5nLnN1YnN0cigxKSwgMTApO1xuICAgIHJldHVybiAnJztcbiAgfSk7XG5cbiAgY29uc3QgcGFydHMgPSBleHRyYWN0UGFydHMocGF0dGVybikgYXMgc3RyaW5nW107XG4gIC8vIExvb2tpbmcgZm9yIChrZXkgYmxvY2spKyBzZXF1ZW5jZS4gT25lIG9mIHRoZSBrZXlzIGhhcyB0byBiZSBcIm90aGVyXCIuXG4gIGZvciAobGV0IHBvcyA9IDA7IHBvcyA8IHBhcnRzLmxlbmd0aDspIHtcbiAgICBsZXQga2V5ID0gcGFydHNbcG9zKytdLnRyaW0oKTtcbiAgICBpZiAoaWN1VHlwZSA9PT0gSWN1VHlwZS5wbHVyYWwpIHtcbiAgICAgIC8vIEtleSBjYW4gYmUgXCI9eFwiLCB3ZSBqdXN0IHdhbnQgXCJ4XCJcbiAgICAgIGtleSA9IGtleS5yZXBsYWNlKC9cXHMqKD86PSk/KFxcdyspXFxzKi8sICckMScpO1xuICAgIH1cbiAgICBpZiAoa2V5Lmxlbmd0aCkge1xuICAgICAgY2FzZXMucHVzaChrZXkpO1xuICAgIH1cblxuICAgIGNvbnN0IGJsb2NrcyA9IGV4dHJhY3RQYXJ0cyhwYXJ0c1twb3MrK10pIGFzIHN0cmluZ1tdO1xuICAgIGlmIChjYXNlcy5sZW5ndGggPiB2YWx1ZXMubGVuZ3RoKSB7XG4gICAgICB2YWx1ZXMucHVzaChibG9ja3MpO1xuICAgIH1cbiAgfVxuXG4gIC8vIFRPRE8ob2NvbWJlKTogc3VwcG9ydCBJQ1UgZXhwcmVzc2lvbnMgaW4gYXR0cmlidXRlcywgc2VlICMyMTYxNVxuICByZXR1cm4ge3R5cGU6IGljdVR5cGUsIG1haW5CaW5kaW5nOiBtYWluQmluZGluZywgY2FzZXMsIHZhbHVlc307XG59XG5cblxuLyoqXG4gKiBUcmFuc2Zvcm1zIGEgc3RyaW5nIHRlbXBsYXRlIGludG8gYW4gSFRNTCB0ZW1wbGF0ZSBhbmQgYSBsaXN0IG9mIGluc3RydWN0aW9ucyB1c2VkIHRvIHVwZGF0ZVxuICogYXR0cmlidXRlcyBvciBub2RlcyB0aGF0IGNvbnRhaW4gYmluZGluZ3MuXG4gKlxuICogQHBhcmFtIHVuc2FmZUh0bWwgVGhlIHN0cmluZyB0byBwYXJzZVxuICogQHBhcmFtIHBhcmVudEluZGV4XG4gKiBAcGFyYW0gbmVzdGVkSWN1c1xuICogQHBhcmFtIHRJY3VzXG4gKiBAcGFyYW0gZXhwYW5kb1N0YXJ0SW5kZXhcbiAqL1xuZnVuY3Rpb24gcGFyc2VJY3VDYXNlKFxuICAgIHVuc2FmZUh0bWw6IHN0cmluZywgcGFyZW50SW5kZXg6IG51bWJlciwgbmVzdGVkSWN1czogSWN1RXhwcmVzc2lvbltdLCB0SWN1czogVEljdVtdLFxuICAgIGV4cGFuZG9TdGFydEluZGV4OiBudW1iZXIpOiBJY3VDYXNlIHtcbiAgY29uc3QgaW5lcnRCb2R5SGVscGVyID0gZ2V0SW5lcnRCb2R5SGVscGVyKGdldERvY3VtZW50KCkpO1xuICBjb25zdCBpbmVydEJvZHlFbGVtZW50ID0gaW5lcnRCb2R5SGVscGVyLmdldEluZXJ0Qm9keUVsZW1lbnQodW5zYWZlSHRtbCk7XG4gIGlmICghaW5lcnRCb2R5RWxlbWVudCkge1xuICAgIHRocm93IG5ldyBFcnJvcignVW5hYmxlIHRvIGdlbmVyYXRlIGluZXJ0IGJvZHkgZWxlbWVudCcpO1xuICB9XG4gIGNvbnN0IHdyYXBwZXIgPSBnZXRUZW1wbGF0ZUNvbnRlbnQoaW5lcnRCb2R5RWxlbWVudCEpIGFzIEVsZW1lbnQgfHwgaW5lcnRCb2R5RWxlbWVudDtcbiAgY29uc3Qgb3BDb2RlczogSWN1Q2FzZSA9IHtcbiAgICB2YXJzOiAxLCAgLy8gYWxsb2NhdGUgc3BhY2UgZm9yIGBUSWN1LmN1cnJlbnRDYXNlTFZpZXdJbmRleGBcbiAgICBjaGlsZEljdXM6IFtdLFxuICAgIGNyZWF0ZTogW10sXG4gICAgcmVtb3ZlOiBbXSxcbiAgICB1cGRhdGU6IFtdXG4gIH07XG4gIGlmIChuZ0Rldk1vZGUpIHtcbiAgICBhdHRhY2hEZWJ1Z0dldHRlcihvcENvZGVzLmNyZWF0ZSwgaTE4bk11dGF0ZU9wQ29kZXNUb1N0cmluZyk7XG4gICAgYXR0YWNoRGVidWdHZXR0ZXIob3BDb2Rlcy5yZW1vdmUsIGkxOG5NdXRhdGVPcENvZGVzVG9TdHJpbmcpO1xuICAgIGF0dGFjaERlYnVnR2V0dGVyKG9wQ29kZXMudXBkYXRlLCBpMThuVXBkYXRlT3BDb2Rlc1RvU3RyaW5nKTtcbiAgfVxuICBwYXJzZU5vZGVzKHdyYXBwZXIuZmlyc3RDaGlsZCwgb3BDb2RlcywgcGFyZW50SW5kZXgsIG5lc3RlZEljdXMsIHRJY3VzLCBleHBhbmRvU3RhcnRJbmRleCk7XG4gIHJldHVybiBvcENvZGVzO1xufVxuXG4vKipcbiAqIEJyZWFrcyBwYXR0ZXJuIGludG8gc3RyaW5ncyBhbmQgdG9wIGxldmVsIHsuLi59IGJsb2Nrcy5cbiAqIENhbiBiZSB1c2VkIHRvIGJyZWFrIGEgbWVzc2FnZSBpbnRvIHRleHQgYW5kIElDVSBleHByZXNzaW9ucywgb3IgdG8gYnJlYWsgYW4gSUNVIGV4cHJlc3Npb24gaW50b1xuICoga2V5cyBhbmQgY2FzZXMuXG4gKiBPcmlnaW5hbCBjb2RlIGZyb20gY2xvc3VyZSBsaWJyYXJ5LCBtb2RpZmllZCBmb3IgQW5ndWxhci5cbiAqXG4gKiBAcGFyYW0gcGF0dGVybiAoc3ViKVBhdHRlcm4gdG8gYmUgYnJva2VuLlxuICpcbiAqL1xuZnVuY3Rpb24gZXh0cmFjdFBhcnRzKHBhdHRlcm46IHN0cmluZyk6IChzdHJpbmd8SWN1RXhwcmVzc2lvbilbXSB7XG4gIGlmICghcGF0dGVybikge1xuICAgIHJldHVybiBbXTtcbiAgfVxuXG4gIGxldCBwcmV2UG9zID0gMDtcbiAgY29uc3QgYnJhY2VTdGFjayA9IFtdO1xuICBjb25zdCByZXN1bHRzOiAoc3RyaW5nfEljdUV4cHJlc3Npb24pW10gPSBbXTtcbiAgY29uc3QgYnJhY2VzID0gL1t7fV0vZztcbiAgLy8gbGFzdEluZGV4IGRvZXNuJ3QgZ2V0IHNldCB0byAwIHNvIHdlIGhhdmUgdG8uXG4gIGJyYWNlcy5sYXN0SW5kZXggPSAwO1xuXG4gIGxldCBtYXRjaDtcbiAgd2hpbGUgKG1hdGNoID0gYnJhY2VzLmV4ZWMocGF0dGVybikpIHtcbiAgICBjb25zdCBwb3MgPSBtYXRjaC5pbmRleDtcbiAgICBpZiAobWF0Y2hbMF0gPT0gJ30nKSB7XG4gICAgICBicmFjZVN0YWNrLnBvcCgpO1xuXG4gICAgICBpZiAoYnJhY2VTdGFjay5sZW5ndGggPT0gMCkge1xuICAgICAgICAvLyBFbmQgb2YgdGhlIGJsb2NrLlxuICAgICAgICBjb25zdCBibG9jayA9IHBhdHRlcm4uc3Vic3RyaW5nKHByZXZQb3MsIHBvcyk7XG4gICAgICAgIGlmIChJQ1VfQkxPQ0tfUkVHRVhQLnRlc3QoYmxvY2spKSB7XG4gICAgICAgICAgcmVzdWx0cy5wdXNoKHBhcnNlSUNVQmxvY2soYmxvY2spKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICByZXN1bHRzLnB1c2goYmxvY2spO1xuICAgICAgICB9XG5cbiAgICAgICAgcHJldlBvcyA9IHBvcyArIDE7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIGlmIChicmFjZVN0YWNrLmxlbmd0aCA9PSAwKSB7XG4gICAgICAgIGNvbnN0IHN1YnN0cmluZyA9IHBhdHRlcm4uc3Vic3RyaW5nKHByZXZQb3MsIHBvcyk7XG4gICAgICAgIHJlc3VsdHMucHVzaChzdWJzdHJpbmcpO1xuICAgICAgICBwcmV2UG9zID0gcG9zICsgMTtcbiAgICAgIH1cbiAgICAgIGJyYWNlU3RhY2sucHVzaCgneycpO1xuICAgIH1cbiAgfVxuXG4gIGNvbnN0IHN1YnN0cmluZyA9IHBhdHRlcm4uc3Vic3RyaW5nKHByZXZQb3MpO1xuICByZXN1bHRzLnB1c2goc3Vic3RyaW5nKTtcbiAgcmV0dXJuIHJlc3VsdHM7XG59XG5cblxuLyoqXG4gKiBQYXJzZXMgYSBub2RlLCBpdHMgY2hpbGRyZW4gYW5kIGl0cyBzaWJsaW5ncywgYW5kIGdlbmVyYXRlcyB0aGUgbXV0YXRlICYgdXBkYXRlIE9wQ29kZXMuXG4gKlxuICogQHBhcmFtIGN1cnJlbnROb2RlIFRoZSBmaXJzdCBub2RlIHRvIHBhcnNlXG4gKiBAcGFyYW0gaWN1Q2FzZSBUaGUgZGF0YSBmb3IgdGhlIElDVSBleHByZXNzaW9uIGNhc2UgdGhhdCBjb250YWlucyB0aG9zZSBub2Rlc1xuICogQHBhcmFtIHBhcmVudEluZGV4IEluZGV4IG9mIHRoZSBjdXJyZW50IG5vZGUncyBwYXJlbnRcbiAqIEBwYXJhbSBuZXN0ZWRJY3VzIERhdGEgZm9yIHRoZSBuZXN0ZWQgSUNVIGV4cHJlc3Npb25zIHRoYXQgdGhpcyBjYXNlIGNvbnRhaW5zXG4gKiBAcGFyYW0gdEljdXMgRGF0YSBmb3IgYWxsIElDVSBleHByZXNzaW9ucyBvZiB0aGUgY3VycmVudCBtZXNzYWdlXG4gKiBAcGFyYW0gZXhwYW5kb1N0YXJ0SW5kZXggRXhwYW5kbyBzdGFydCBpbmRleCBmb3IgdGhlIGN1cnJlbnQgSUNVIGV4cHJlc3Npb25cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHBhcnNlTm9kZXMoXG4gICAgY3VycmVudE5vZGU6IE5vZGV8bnVsbCwgaWN1Q2FzZTogSWN1Q2FzZSwgcGFyZW50SW5kZXg6IG51bWJlciwgbmVzdGVkSWN1czogSWN1RXhwcmVzc2lvbltdLFxuICAgIHRJY3VzOiBUSWN1W10sIGV4cGFuZG9TdGFydEluZGV4OiBudW1iZXIpIHtcbiAgaWYgKGN1cnJlbnROb2RlKSB7XG4gICAgY29uc3QgbmVzdGVkSWN1c1RvQ3JlYXRlOiBbSWN1RXhwcmVzc2lvbiwgbnVtYmVyXVtdID0gW107XG4gICAgd2hpbGUgKGN1cnJlbnROb2RlKSB7XG4gICAgICBjb25zdCBuZXh0Tm9kZTogTm9kZXxudWxsID0gY3VycmVudE5vZGUubmV4dFNpYmxpbmc7XG4gICAgICBjb25zdCBuZXdJbmRleCA9IGV4cGFuZG9TdGFydEluZGV4ICsgKytpY3VDYXNlLnZhcnM7XG4gICAgICBzd2l0Y2ggKGN1cnJlbnROb2RlLm5vZGVUeXBlKSB7XG4gICAgICAgIGNhc2UgTm9kZS5FTEVNRU5UX05PREU6XG4gICAgICAgICAgY29uc3QgZWxlbWVudCA9IGN1cnJlbnROb2RlIGFzIEVsZW1lbnQ7XG4gICAgICAgICAgY29uc3QgdGFnTmFtZSA9IGVsZW1lbnQudGFnTmFtZS50b0xvd2VyQ2FzZSgpO1xuICAgICAgICAgIGlmICghVkFMSURfRUxFTUVOVFMuaGFzT3duUHJvcGVydHkodGFnTmFtZSkpIHtcbiAgICAgICAgICAgIC8vIFRoaXMgaXNuJ3QgYSB2YWxpZCBlbGVtZW50LCB3ZSB3b24ndCBjcmVhdGUgYW4gZWxlbWVudCBmb3IgaXRcbiAgICAgICAgICAgIGljdUNhc2UudmFycy0tO1xuICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICBpY3VDYXNlLmNyZWF0ZS5wdXNoKFxuICAgICAgICAgICAgICAgIEVMRU1FTlRfTUFSS0VSLCB0YWdOYW1lLCBuZXdJbmRleCxcbiAgICAgICAgICAgICAgICBwYXJlbnRJbmRleCA8PCBJMThuTXV0YXRlT3BDb2RlLlNISUZUX1BBUkVOVCB8IEkxOG5NdXRhdGVPcENvZGUuQXBwZW5kQ2hpbGQpO1xuICAgICAgICAgICAgY29uc3QgZWxBdHRycyA9IGVsZW1lbnQuYXR0cmlidXRlcztcbiAgICAgICAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgZWxBdHRycy5sZW5ndGg7IGkrKykge1xuICAgICAgICAgICAgICBjb25zdCBhdHRyID0gZWxBdHRycy5pdGVtKGkpITtcbiAgICAgICAgICAgICAgY29uc3QgbG93ZXJBdHRyTmFtZSA9IGF0dHIubmFtZS50b0xvd2VyQ2FzZSgpO1xuICAgICAgICAgICAgICBjb25zdCBoYXNCaW5kaW5nID0gISFhdHRyLnZhbHVlLm1hdGNoKEJJTkRJTkdfUkVHRVhQKTtcbiAgICAgICAgICAgICAgLy8gd2UgYXNzdW1lIHRoZSBpbnB1dCBzdHJpbmcgaXMgc2FmZSwgdW5sZXNzIGl0J3MgdXNpbmcgYSBiaW5kaW5nXG4gICAgICAgICAgICAgIGlmIChoYXNCaW5kaW5nKSB7XG4gICAgICAgICAgICAgICAgaWYgKFZBTElEX0FUVFJTLmhhc093blByb3BlcnR5KGxvd2VyQXR0ck5hbWUpKSB7XG4gICAgICAgICAgICAgICAgICBpZiAoVVJJX0FUVFJTW2xvd2VyQXR0ck5hbWVdKSB7XG4gICAgICAgICAgICAgICAgICAgIGFkZEFsbFRvQXJyYXkoXG4gICAgICAgICAgICAgICAgICAgICAgICBnZW5lcmF0ZUJpbmRpbmdVcGRhdGVPcENvZGVzKGF0dHIudmFsdWUsIG5ld0luZGV4LCBhdHRyLm5hbWUsIF9zYW5pdGl6ZVVybCksXG4gICAgICAgICAgICAgICAgICAgICAgICBpY3VDYXNlLnVwZGF0ZSk7XG4gICAgICAgICAgICAgICAgICB9IGVsc2UgaWYgKFNSQ1NFVF9BVFRSU1tsb3dlckF0dHJOYW1lXSkge1xuICAgICAgICAgICAgICAgICAgICBhZGRBbGxUb0FycmF5KFxuICAgICAgICAgICAgICAgICAgICAgICAgZ2VuZXJhdGVCaW5kaW5nVXBkYXRlT3BDb2RlcyhcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBhdHRyLnZhbHVlLCBuZXdJbmRleCwgYXR0ci5uYW1lLCBzYW5pdGl6ZVNyY3NldCksXG4gICAgICAgICAgICAgICAgICAgICAgICBpY3VDYXNlLnVwZGF0ZSk7XG4gICAgICAgICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgICAgICBhZGRBbGxUb0FycmF5KFxuICAgICAgICAgICAgICAgICAgICAgICAgZ2VuZXJhdGVCaW5kaW5nVXBkYXRlT3BDb2RlcyhhdHRyLnZhbHVlLCBuZXdJbmRleCwgYXR0ci5uYW1lKSxcbiAgICAgICAgICAgICAgICAgICAgICAgIGljdUNhc2UudXBkYXRlKTtcbiAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgICAgbmdEZXZNb2RlICYmXG4gICAgICAgICAgICAgICAgICAgICAgY29uc29sZS53YXJuKGBXQVJOSU5HOiBpZ25vcmluZyB1bnNhZmUgYXR0cmlidXRlIHZhbHVlICR7XG4gICAgICAgICAgICAgICAgICAgICAgICAgIGxvd2VyQXR0ck5hbWV9IG9uIGVsZW1lbnQgJHt0YWdOYW1lfSAoc2VlIGh0dHA6Ly9nLmNvL25nL3NlY3VyaXR5I3hzcylgKTtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICAgaWN1Q2FzZS5jcmVhdGUucHVzaChcbiAgICAgICAgICAgICAgICAgICAgbmV3SW5kZXggPDwgSTE4bk11dGF0ZU9wQ29kZS5TSElGVF9SRUYgfCBJMThuTXV0YXRlT3BDb2RlLkF0dHIsIGF0dHIubmFtZSxcbiAgICAgICAgICAgICAgICAgICAgYXR0ci52YWx1ZSk7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIC8vIFBhcnNlIHRoZSBjaGlsZHJlbiBvZiB0aGlzIG5vZGUgKGlmIGFueSlcbiAgICAgICAgICAgIHBhcnNlTm9kZXMoXG4gICAgICAgICAgICAgICAgY3VycmVudE5vZGUuZmlyc3RDaGlsZCwgaWN1Q2FzZSwgbmV3SW5kZXgsIG5lc3RlZEljdXMsIHRJY3VzLCBleHBhbmRvU3RhcnRJbmRleCk7XG4gICAgICAgICAgICAvLyBSZW1vdmUgdGhlIHBhcmVudCBub2RlIGFmdGVyIHRoZSBjaGlsZHJlblxuICAgICAgICAgICAgaWN1Q2FzZS5yZW1vdmUucHVzaChuZXdJbmRleCA8PCBJMThuTXV0YXRlT3BDb2RlLlNISUZUX1JFRiB8IEkxOG5NdXRhdGVPcENvZGUuUmVtb3ZlKTtcbiAgICAgICAgICB9XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIGNhc2UgTm9kZS5URVhUX05PREU6XG4gICAgICAgICAgY29uc3QgdmFsdWUgPSBjdXJyZW50Tm9kZS50ZXh0Q29udGVudCB8fCAnJztcbiAgICAgICAgICBjb25zdCBoYXNCaW5kaW5nID0gdmFsdWUubWF0Y2goQklORElOR19SRUdFWFApO1xuICAgICAgICAgIGljdUNhc2UuY3JlYXRlLnB1c2goXG4gICAgICAgICAgICAgIGhhc0JpbmRpbmcgPyAnJyA6IHZhbHVlLCBuZXdJbmRleCxcbiAgICAgICAgICAgICAgcGFyZW50SW5kZXggPDwgSTE4bk11dGF0ZU9wQ29kZS5TSElGVF9QQVJFTlQgfCBJMThuTXV0YXRlT3BDb2RlLkFwcGVuZENoaWxkKTtcbiAgICAgICAgICBpY3VDYXNlLnJlbW92ZS5wdXNoKG5ld0luZGV4IDw8IEkxOG5NdXRhdGVPcENvZGUuU0hJRlRfUkVGIHwgSTE4bk11dGF0ZU9wQ29kZS5SZW1vdmUpO1xuICAgICAgICAgIGlmIChoYXNCaW5kaW5nKSB7XG4gICAgICAgICAgICBhZGRBbGxUb0FycmF5KGdlbmVyYXRlQmluZGluZ1VwZGF0ZU9wQ29kZXModmFsdWUsIG5ld0luZGV4KSwgaWN1Q2FzZS51cGRhdGUpO1xuICAgICAgICAgIH1cbiAgICAgICAgICBicmVhaztcbiAgICAgICAgY2FzZSBOb2RlLkNPTU1FTlRfTk9ERTpcbiAgICAgICAgICAvLyBDaGVjayBpZiB0aGUgY29tbWVudCBub2RlIGlzIGEgcGxhY2Vob2xkZXIgZm9yIGEgbmVzdGVkIElDVVxuICAgICAgICAgIGNvbnN0IG1hdGNoID0gTkVTVEVEX0lDVS5leGVjKGN1cnJlbnROb2RlLnRleHRDb250ZW50IHx8ICcnKTtcbiAgICAgICAgICBpZiAobWF0Y2gpIHtcbiAgICAgICAgICAgIGNvbnN0IG5lc3RlZEljdUluZGV4ID0gcGFyc2VJbnQobWF0Y2hbMV0sIDEwKTtcbiAgICAgICAgICAgIGNvbnN0IG5ld0xvY2FsID0gbmdEZXZNb2RlID8gYG5lc3RlZCBJQ1UgJHtuZXN0ZWRJY3VJbmRleH1gIDogJyc7XG4gICAgICAgICAgICAvLyBDcmVhdGUgdGhlIGNvbW1lbnQgbm9kZSB0aGF0IHdpbGwgYW5jaG9yIHRoZSBJQ1UgZXhwcmVzc2lvblxuICAgICAgICAgICAgaWN1Q2FzZS5jcmVhdGUucHVzaChcbiAgICAgICAgICAgICAgICBDT01NRU5UX01BUktFUiwgbmV3TG9jYWwsIG5ld0luZGV4LFxuICAgICAgICAgICAgICAgIHBhcmVudEluZGV4IDw8IEkxOG5NdXRhdGVPcENvZGUuU0hJRlRfUEFSRU5UIHwgSTE4bk11dGF0ZU9wQ29kZS5BcHBlbmRDaGlsZCk7XG4gICAgICAgICAgICBjb25zdCBuZXN0ZWRJY3UgPSBuZXN0ZWRJY3VzW25lc3RlZEljdUluZGV4XTtcbiAgICAgICAgICAgIG5lc3RlZEljdXNUb0NyZWF0ZS5wdXNoKFtuZXN0ZWRJY3UsIG5ld0luZGV4XSk7XG4gICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIC8vIFdlIGRvIG5vdCBoYW5kbGUgYW55IG90aGVyIHR5cGUgb2YgY29tbWVudFxuICAgICAgICAgICAgaWN1Q2FzZS52YXJzLS07XG4gICAgICAgICAgfVxuICAgICAgICAgIGJyZWFrO1xuICAgICAgICBkZWZhdWx0OlxuICAgICAgICAgIC8vIFdlIGRvIG5vdCBoYW5kbGUgYW55IG90aGVyIHR5cGUgb2YgZWxlbWVudFxuICAgICAgICAgIGljdUNhc2UudmFycy0tO1xuICAgICAgfVxuICAgICAgY3VycmVudE5vZGUgPSBuZXh0Tm9kZSE7XG4gICAgfVxuXG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCBuZXN0ZWRJY3VzVG9DcmVhdGUubGVuZ3RoOyBpKyspIHtcbiAgICAgIGNvbnN0IG5lc3RlZEljdSA9IG5lc3RlZEljdXNUb0NyZWF0ZVtpXVswXTtcbiAgICAgIGNvbnN0IG5lc3RlZEljdU5vZGVJbmRleCA9IG5lc3RlZEljdXNUb0NyZWF0ZVtpXVsxXTtcbiAgICAgIGljdVN0YXJ0KHRJY3VzLCBuZXN0ZWRJY3UsIG5lc3RlZEljdU5vZGVJbmRleCwgZXhwYW5kb1N0YXJ0SW5kZXggKyBpY3VDYXNlLnZhcnMpO1xuICAgICAgLy8gU2luY2UgdGhpcyBpcyByZWN1cnNpdmUsIHRoZSBsYXN0IFRJY3UgdGhhdCB3YXMgcHVzaGVkIGlzIHRoZSBvbmUgd2Ugd2FudFxuICAgICAgY29uc3QgbmVzdFRJY3VJbmRleCA9IHRJY3VzLmxlbmd0aCAtIDE7XG4gICAgICBpY3VDYXNlLnZhcnMgKz0gTWF0aC5tYXgoLi4udEljdXNbbmVzdFRJY3VJbmRleF0udmFycyk7XG4gICAgICBpY3VDYXNlLmNoaWxkSWN1cy5wdXNoKG5lc3RUSWN1SW5kZXgpO1xuICAgICAgY29uc3QgbWFzayA9IGdldEJpbmRpbmdNYXNrKG5lc3RlZEljdSk7XG4gICAgICBpY3VDYXNlLnVwZGF0ZS5wdXNoKFxuICAgICAgICAgIHRvTWFza0JpdChuZXN0ZWRJY3UubWFpbkJpbmRpbmcpLCAgLy8gbWFzayBvZiB0aGUgbWFpbiBiaW5kaW5nXG4gICAgICAgICAgMywgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBza2lwIDMgb3BDb2RlcyBpZiBub3QgY2hhbmdlZFxuICAgICAgICAgIC0xIC0gbmVzdGVkSWN1Lm1haW5CaW5kaW5nLFxuICAgICAgICAgIG5lc3RlZEljdU5vZGVJbmRleCA8PCBJMThuVXBkYXRlT3BDb2RlLlNISUZUX1JFRiB8IEkxOG5VcGRhdGVPcENvZGUuSWN1U3dpdGNoLFxuICAgICAgICAgIC8vIEZJWE1FKG1pc2tvKTogSW5kZXggc2hvdWxkIGJlIHBhcnQgb2YgdGhlIG9wY29kZVxuICAgICAgICAgIG5lc3RUSWN1SW5kZXgsXG4gICAgICAgICAgbWFzaywgIC8vIG1hc2sgb2YgYWxsIHRoZSBiaW5kaW5ncyBvZiB0aGlzIElDVSBleHByZXNzaW9uXG4gICAgICAgICAgMiwgICAgIC8vIHNraXAgMiBvcENvZGVzIGlmIG5vdCBjaGFuZ2VkXG4gICAgICAgICAgbmVzdGVkSWN1Tm9kZUluZGV4IDw8IEkxOG5VcGRhdGVPcENvZGUuU0hJRlRfUkVGIHwgSTE4blVwZGF0ZU9wQ29kZS5JY3VVcGRhdGUsXG4gICAgICAgICAgbmVzdFRJY3VJbmRleCk7XG4gICAgICBpY3VDYXNlLnJlbW92ZS5wdXNoKFxuICAgICAgICAgIG5lc3RUSWN1SW5kZXggPDwgSTE4bk11dGF0ZU9wQ29kZS5TSElGVF9SRUYgfCBJMThuTXV0YXRlT3BDb2RlLlJlbW92ZU5lc3RlZEljdSxcbiAgICAgICAgICAvLyBGSVhNRShtaXNrbyk6IEluZGV4IHNob3VsZCBiZSBwYXJ0IG9mIHRoZSBvcGNvZGVcbiAgICAgICAgICBuZXN0ZWRJY3VOb2RlSW5kZXggPDwgSTE4bk11dGF0ZU9wQ29kZS5TSElGVF9SRUYgfCBJMThuTXV0YXRlT3BDb2RlLlJlbW92ZSk7XG4gICAgfVxuICB9XG59XG4iXX0=