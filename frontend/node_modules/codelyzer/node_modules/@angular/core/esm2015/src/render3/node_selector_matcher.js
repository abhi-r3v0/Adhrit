/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/node_selector_matcher.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import '../util/ng_dev_mode';
import { assertDefined, assertEqual, assertNotEqual } from '../util/assert';
import { unusedValueExportToPlacateAjd as unused1 } from './interfaces/node';
import { unusedValueExportToPlacateAjd as unused2 } from './interfaces/projection';
import { classIndexOf } from './styling/class_differ';
import { isNameOnlyAttributeMarker } from './util/attrs_utils';
/** @type {?} */
const unusedValueToPlacateAjd = unused1 + unused2;
/** @type {?} */
const NG_TEMPLATE_SELECTOR = 'ng-template';
/**
 * Search the `TAttributes` to see if it contains `cssClassToMatch` (case insensitive)
 *
 * @param {?} attrs `TAttributes` to search through.
 * @param {?} cssClassToMatch class to match (lowercase)
 * @param {?} isProjectionMode Whether or not class matching should look into the attribute `class` in
 *    addition to the `AttributeMarker.Classes`.
 * @return {?}
 */
function isCssClassMatching(attrs, cssClassToMatch, isProjectionMode) {
    // TODO(misko): The fact that this function needs to know about `isProjectionMode` seems suspect.
    // It is strange to me that sometimes the class information comes in form of `class` attribute
    // and sometimes in form of `AttributeMarker.Classes`. Some investigation is needed to determine
    // if that is the right behavior.
    ngDevMode &&
        assertEqual(cssClassToMatch, cssClassToMatch.toLowerCase(), 'Class name expected to be lowercase.');
    /** @type {?} */
    let i = 0;
    while (i < attrs.length) {
        /** @type {?} */
        let item = attrs[i++];
        if (isProjectionMode && item === 'class') {
            item = (/** @type {?} */ (attrs[i]));
            if (classIndexOf(item.toLowerCase(), cssClassToMatch, 0) !== -1) {
                return true;
            }
        }
        else if (item === 1 /* Classes */) {
            // We found the classes section. Start searching for the class.
            while (i < attrs.length && typeof (item = attrs[i++]) == 'string') {
                // while we have strings
                if (item.toLowerCase() === cssClassToMatch)
                    return true;
            }
            return false;
        }
    }
    return false;
}
/**
 * Function that checks whether a given tNode matches tag-based selector and has a valid type.
 *
 * Matching can be performed in 2 modes: projection mode (when we project nodes) and regular
 * directive matching mode:
 * - in the "directive matching" mode we do _not_ take TContainer's tagName into account if it is
 * different from NG_TEMPLATE_SELECTOR (value different from NG_TEMPLATE_SELECTOR indicates that a
 * tag name was extracted from * syntax so we would match the same directive twice);
 * - in the "projection" mode, we use a tag name potentially extracted from the * syntax processing
 * (applicable to TNodeType.Container only).
 * @param {?} tNode
 * @param {?} currentSelector
 * @param {?} isProjectionMode
 * @return {?}
 */
function hasTagAndTypeMatch(tNode, currentSelector, isProjectionMode) {
    /** @type {?} */
    const tagNameToCompare = tNode.type === 0 /* Container */ && !isProjectionMode ?
        NG_TEMPLATE_SELECTOR :
        tNode.tagName;
    return currentSelector === tagNameToCompare;
}
/**
 * A utility function to match an Ivy node static data against a simple CSS selector
 *
 * @param {?} tNode
 * @param {?} selector The selector to try matching against the node.
 * @param {?} isProjectionMode if `true` we are matching for content projection, otherwise we are doing
 * directive matching.
 * @return {?} true if node matches the selector.
 */
export function isNodeMatchingSelector(tNode, selector, isProjectionMode) {
    ngDevMode && assertDefined(selector[0], 'Selector should have a tag name');
    /** @type {?} */
    let mode = 4 /* ELEMENT */;
    /** @type {?} */
    const nodeAttrs = tNode.attrs || [];
    // Find the index of first attribute that has no value, only a name.
    /** @type {?} */
    const nameOnlyMarkerIdx = getNameOnlyMarkerIndex(nodeAttrs);
    // When processing ":not" selectors, we skip to the next ":not" if the
    // current one doesn't match
    /** @type {?} */
    let skipToNextSelector = false;
    for (let i = 0; i < selector.length; i++) {
        /** @type {?} */
        const current = selector[i];
        if (typeof current === 'number') {
            // If we finish processing a :not selector and it hasn't failed, return false
            if (!skipToNextSelector && !isPositive(mode) && !isPositive(current)) {
                return false;
            }
            // If we are skipping to the next :not() and this mode flag is positive,
            // it's a part of the current :not() selector, and we should keep skipping
            if (skipToNextSelector && isPositive(current))
                continue;
            skipToNextSelector = false;
            mode = ((/** @type {?} */ (current))) | (mode & 1 /* NOT */);
            continue;
        }
        if (skipToNextSelector)
            continue;
        if (mode & 4 /* ELEMENT */) {
            mode = 2 /* ATTRIBUTE */ | mode & 1 /* NOT */;
            if (current !== '' && !hasTagAndTypeMatch(tNode, current, isProjectionMode) ||
                current === '' && selector.length === 1) {
                if (isPositive(mode))
                    return false;
                skipToNextSelector = true;
            }
        }
        else {
            /** @type {?} */
            const selectorAttrValue = mode & 8 /* CLASS */ ? current : selector[++i];
            // special case for matching against classes when a tNode has been instantiated with
            // class and style values as separate attribute values (e.g. ['title', CLASS, 'foo'])
            if ((mode & 8 /* CLASS */) && tNode.attrs !== null) {
                if (!isCssClassMatching(tNode.attrs, (/** @type {?} */ (selectorAttrValue)), isProjectionMode)) {
                    if (isPositive(mode))
                        return false;
                    skipToNextSelector = true;
                }
                continue;
            }
            /** @type {?} */
            const isInlineTemplate = tNode.type == 0 /* Container */ && tNode.tagName !== NG_TEMPLATE_SELECTOR;
            /** @type {?} */
            const attrName = (mode & 8 /* CLASS */) ? 'class' : current;
            /** @type {?} */
            const attrIndexInNode = findAttrIndexInNode(attrName, nodeAttrs, isInlineTemplate, isProjectionMode);
            if (attrIndexInNode === -1) {
                if (isPositive(mode))
                    return false;
                skipToNextSelector = true;
                continue;
            }
            if (selectorAttrValue !== '') {
                /** @type {?} */
                let nodeAttrValue;
                if (attrIndexInNode > nameOnlyMarkerIdx) {
                    nodeAttrValue = '';
                }
                else {
                    ngDevMode && assertNotEqual(nodeAttrs[attrIndexInNode], 0 /* NamespaceURI */, 'We do not match directives on namespaced attributes');
                    // we lowercase the attribute value to be able to match
                    // selectors without case-sensitivity
                    // (selectors are already in lowercase when generated)
                    nodeAttrValue = ((/** @type {?} */ (nodeAttrs[attrIndexInNode + 1]))).toLowerCase();
                }
                /** @type {?} */
                const compareAgainstClassName = mode & 8 /* CLASS */ ? nodeAttrValue : null;
                if (compareAgainstClassName &&
                    classIndexOf(compareAgainstClassName, (/** @type {?} */ (selectorAttrValue)), 0) !== -1 ||
                    mode & 2 /* ATTRIBUTE */ && selectorAttrValue !== nodeAttrValue) {
                    if (isPositive(mode))
                        return false;
                    skipToNextSelector = true;
                }
            }
        }
    }
    return isPositive(mode) || skipToNextSelector;
}
/**
 * @param {?} mode
 * @return {?}
 */
function isPositive(mode) {
    return (mode & 1 /* NOT */) === 0;
}
/**
 * Examines the attribute's definition array for a node to find the index of the
 * attribute that matches the given `name`.
 *
 * NOTE: This will not match namespaced attributes.
 *
 * Attribute matching depends upon `isInlineTemplate` and `isProjectionMode`.
 * The following table summarizes which types of attributes we attempt to match:
 *
 * ===========================================================================================================
 * Modes                   | Normal Attributes | Bindings Attributes | Template Attributes | I18n
 * Attributes
 * ===========================================================================================================
 * Inline + Projection     | YES               | YES                 | NO                  | YES
 * -----------------------------------------------------------------------------------------------------------
 * Inline + Directive      | NO                | NO                  | YES                 | NO
 * -----------------------------------------------------------------------------------------------------------
 * Non-inline + Projection | YES               | YES                 | NO                  | YES
 * -----------------------------------------------------------------------------------------------------------
 * Non-inline + Directive  | YES               | YES                 | NO                  | YES
 * ===========================================================================================================
 *
 * @param {?} name the name of the attribute to find
 * @param {?} attrs the attribute array to examine
 * @param {?} isInlineTemplate true if the node being matched is an inline template (e.g. `*ngFor`)
 * rather than a manually expanded template node (e.g `<ng-template>`).
 * @param {?} isProjectionMode true if we are matching against content projection otherwise we are
 * matching against directives.
 * @return {?}
 */
function findAttrIndexInNode(name, attrs, isInlineTemplate, isProjectionMode) {
    if (attrs === null)
        return -1;
    /** @type {?} */
    let i = 0;
    if (isProjectionMode || !isInlineTemplate) {
        /** @type {?} */
        let bindingsMode = false;
        while (i < attrs.length) {
            /** @type {?} */
            const maybeAttrName = attrs[i];
            if (maybeAttrName === name) {
                return i;
            }
            else if (maybeAttrName === 3 /* Bindings */ || maybeAttrName === 6 /* I18n */) {
                bindingsMode = true;
            }
            else if (maybeAttrName === 1 /* Classes */ || maybeAttrName === 2 /* Styles */) {
                /** @type {?} */
                let value = attrs[++i];
                // We should skip classes here because we have a separate mechanism for
                // matching classes in projection mode.
                while (typeof value === 'string') {
                    value = attrs[++i];
                }
                continue;
            }
            else if (maybeAttrName === 4 /* Template */) {
                // We do not care about Template attributes in this scenario.
                break;
            }
            else if (maybeAttrName === 0 /* NamespaceURI */) {
                // Skip the whole namespaced attribute and value. This is by design.
                i += 4;
                continue;
            }
            // In binding mode there are only names, rather than name-value pairs.
            i += bindingsMode ? 1 : 2;
        }
        // We did not match the attribute
        return -1;
    }
    else {
        return matchTemplateAttribute(attrs, name);
    }
}
/**
 * @param {?} tNode
 * @param {?} selector
 * @param {?=} isProjectionMode
 * @return {?}
 */
export function isNodeMatchingSelectorList(tNode, selector, isProjectionMode = false) {
    for (let i = 0; i < selector.length; i++) {
        if (isNodeMatchingSelector(tNode, selector[i], isProjectionMode)) {
            return true;
        }
    }
    return false;
}
/**
 * @param {?} tNode
 * @return {?}
 */
export function getProjectAsAttrValue(tNode) {
    /** @type {?} */
    const nodeAttrs = tNode.attrs;
    if (nodeAttrs != null) {
        /** @type {?} */
        const ngProjectAsAttrIdx = nodeAttrs.indexOf(5 /* ProjectAs */);
        // only check for ngProjectAs in attribute names, don't accidentally match attribute's value
        // (attribute names are stored at even indexes)
        if ((ngProjectAsAttrIdx & 1) === 0) {
            return (/** @type {?} */ (nodeAttrs[ngProjectAsAttrIdx + 1]));
        }
    }
    return null;
}
/**
 * @param {?} nodeAttrs
 * @return {?}
 */
function getNameOnlyMarkerIndex(nodeAttrs) {
    for (let i = 0; i < nodeAttrs.length; i++) {
        /** @type {?} */
        const nodeAttr = nodeAttrs[i];
        if (isNameOnlyAttributeMarker(nodeAttr)) {
            return i;
        }
    }
    return nodeAttrs.length;
}
/**
 * @param {?} attrs
 * @param {?} name
 * @return {?}
 */
function matchTemplateAttribute(attrs, name) {
    /** @type {?} */
    let i = attrs.indexOf(4 /* Template */);
    if (i > -1) {
        i++;
        while (i < attrs.length) {
            if (attrs[i] === name)
                return i;
            i++;
        }
    }
    return -1;
}
/**
 * Checks whether a selector is inside a CssSelectorList
 * @param {?} selector Selector to be checked.
 * @param {?} list List in which to look for the selector.
 * @return {?}
 */
export function isSelectorInSelectorList(selector, list) {
    selectorListLoop: for (let i = 0; i < list.length; i++) {
        /** @type {?} */
        const currentSelectorInList = list[i];
        if (selector.length !== currentSelectorInList.length) {
            continue;
        }
        for (let j = 0; j < selector.length; j++) {
            if (selector[j] !== currentSelectorInList[j]) {
                continue selectorListLoop;
            }
        }
        return true;
    }
    return false;
}
/**
 * @param {?} isNegativeMode
 * @param {?} chunk
 * @return {?}
 */
function maybeWrapInNotSelector(isNegativeMode, chunk) {
    return isNegativeMode ? ':not(' + chunk.trim() + ')' : chunk;
}
/**
 * @param {?} selector
 * @return {?}
 */
function stringifyCSSSelector(selector) {
    /** @type {?} */
    let result = (/** @type {?} */ (selector[0]));
    /** @type {?} */
    let i = 1;
    /** @type {?} */
    let mode = 2 /* ATTRIBUTE */;
    /** @type {?} */
    let currentChunk = '';
    /** @type {?} */
    let isNegativeMode = false;
    while (i < selector.length) {
        /** @type {?} */
        let valueOrMarker = selector[i];
        if (typeof valueOrMarker === 'string') {
            if (mode & 2 /* ATTRIBUTE */) {
                /** @type {?} */
                const attrValue = (/** @type {?} */ (selector[++i]));
                currentChunk +=
                    '[' + valueOrMarker + (attrValue.length > 0 ? '="' + attrValue + '"' : '') + ']';
            }
            else if (mode & 8 /* CLASS */) {
                currentChunk += '.' + valueOrMarker;
            }
            else if (mode & 4 /* ELEMENT */) {
                currentChunk += ' ' + valueOrMarker;
            }
        }
        else {
            //
            // Append current chunk to the final result in case we come across SelectorFlag, which
            // indicates that the previous section of a selector is over. We need to accumulate content
            // between flags to make sure we wrap the chunk later in :not() selector if needed, e.g.
            // ```
            //  ['', Flags.CLASS, '.classA', Flags.CLASS | Flags.NOT, '.classB', '.classC']
            // ```
            // should be transformed to `.classA :not(.classB .classC)`.
            //
            // Note: for negative selector part, we accumulate content between flags until we find the
            // next negative flag. This is needed to support a case where `:not()` rule contains more than
            // one chunk, e.g. the following selector:
            // ```
            //  ['', Flags.ELEMENT | Flags.NOT, 'p', Flags.CLASS, 'foo', Flags.CLASS | Flags.NOT, 'bar']
            // ```
            // should be stringified to `:not(p.foo) :not(.bar)`
            //
            if (currentChunk !== '' && !isPositive(valueOrMarker)) {
                result += maybeWrapInNotSelector(isNegativeMode, currentChunk);
                currentChunk = '';
            }
            mode = valueOrMarker;
            // According to CssSelector spec, once we come across `SelectorFlags.NOT` flag, the negative
            // mode is maintained for remaining chunks of a selector.
            isNegativeMode = isNegativeMode || !isPositive(mode);
        }
        i++;
    }
    if (currentChunk !== '') {
        result += maybeWrapInNotSelector(isNegativeMode, currentChunk);
    }
    return result;
}
/**
 * Generates string representation of CSS selector in parsed form.
 *
 * ComponentDef and DirectiveDef are generated with the selector in parsed form to avoid doing
 * additional parsing at runtime (for example, for directive matching). However in some cases (for
 * example, while bootstrapping a component), a string version of the selector is required to query
 * for the host element on the page. This function takes the parsed form of a selector and returns
 * its string representation.
 *
 * @param {?} selectorList selector in parsed form
 * @return {?} string representation of a given selector
 */
export function stringifyCSSSelectorList(selectorList) {
    return selectorList.map(stringifyCSSSelector).join(',');
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibm9kZV9zZWxlY3Rvcl9tYXRjaGVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvcmVuZGVyMy9ub2RlX3NlbGVjdG9yX21hdGNoZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBUUEsT0FBTyxxQkFBcUIsQ0FBQztBQUU3QixPQUFPLEVBQUMsYUFBYSxFQUFFLFdBQVcsRUFBRSxjQUFjLEVBQUMsTUFBTSxnQkFBZ0IsQ0FBQztBQUUxRSxPQUFPLEVBQWlELDZCQUE2QixJQUFJLE9BQU8sRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBQzNILE9BQU8sRUFBOEMsNkJBQTZCLElBQUksT0FBTyxFQUFDLE1BQU0seUJBQXlCLENBQUM7QUFDOUgsT0FBTyxFQUFDLFlBQVksRUFBQyxNQUFNLHdCQUF3QixDQUFDO0FBQ3BELE9BQU8sRUFBQyx5QkFBeUIsRUFBQyxNQUFNLG9CQUFvQixDQUFDOztNQUV2RCx1QkFBdUIsR0FBRyxPQUFPLEdBQUcsT0FBTzs7TUFFM0Msb0JBQW9CLEdBQUcsYUFBYTs7Ozs7Ozs7OztBQVUxQyxTQUFTLGtCQUFrQixDQUN2QixLQUFrQixFQUFFLGVBQXVCLEVBQUUsZ0JBQXlCO0lBQ3hFLGlHQUFpRztJQUNqRyw4RkFBOEY7SUFDOUYsZ0dBQWdHO0lBQ2hHLGlDQUFpQztJQUNqQyxTQUFTO1FBQ0wsV0FBVyxDQUNQLGVBQWUsRUFBRSxlQUFlLENBQUMsV0FBVyxFQUFFLEVBQUUsc0NBQXNDLENBQUMsQ0FBQzs7UUFDNUYsQ0FBQyxHQUFHLENBQUM7SUFDVCxPQUFPLENBQUMsR0FBRyxLQUFLLENBQUMsTUFBTSxFQUFFOztZQUNuQixJQUFJLEdBQUcsS0FBSyxDQUFDLENBQUMsRUFBRSxDQUFDO1FBQ3JCLElBQUksZ0JBQWdCLElBQUksSUFBSSxLQUFLLE9BQU8sRUFBRTtZQUN4QyxJQUFJLEdBQUcsbUJBQUEsS0FBSyxDQUFDLENB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QUM7S0FDTDtJQUNELElBQUksWUFBWSxLQUFLLEVBQUUsRUFBRTtRQUN2QixNQUFNLElBQUksc0JBQXNCLENBQUMsY0FBYyxFQUFFLFlBQVksQ0FBQyxDQUFDO0tBQ2hFO0lBQ0QsT0FBTyxNQUFNLENBQUM7QUFDaEIsQ0FBQzs7Ozs7Ozs7Ozs7OztBQWNELE1BQU0sVUFBVSx3QkFBd0IsQ0FBQyxZQUE2QjtJQUNwRSxPQUFPLFlBQVksQ0FBQyxHQUFHLENBQUMsb0JBQW9CLENBQUMsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLENBQUM7QUFDMUQsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICcuLi91dGlsL25nX2Rldl9tb2RlJztcblxuaW1wb3J0IHthc3NlcnREZWZpbmVkLCBhc3NlcnRFcXVhbCwgYXNzZXJ0Tm90RXF1YWx9IGZyb20gJy4uL3V0aWwvYXNzZXJ0JztcblxuaW1wb3J0IHtBdHRyaWJ1dGVNYXJrZXIsIFRBdHRyaWJ1dGVzLCBUTm9kZSwgVE5vZGVUeXBlLCB1bnVzZWRWYWx1ZUV4cG9ydFRvUGxhY2F0ZUFqZCBhcyB1bnVzZWQxfSBmcm9tICcuL2ludGVyZmFjZXMvbm9kZSc7XG5pbXBvcnQge0Nzc1NlbGVjdG9yLCBDc3NTZWxlY3Rvckxpc3QsIFNlbGVjdG9yRmxhZ3MsIHVudXNlZFZhbHVlRXhwb3J0VG9QbGFjYXRlQWpkIGFzIHVudXNlZDJ9IGZyb20gJy4vaW50ZXJmYWNlcy9wcm9qZWN0aW9uJztcbmltcG9ydCB7Y2xhc3NJbmRleE9mfSBmcm9tICcuL3N0eWxpbmcvY2xhc3NfZGlmZmVyJztcbmltcG9ydCB7aXNOYW1lT25seUF0dHJpYnV0ZU1hcmtlcn0gZnJvbSAnLi91dGlsL2F0dHJzX3V0aWxzJztcblxuY29uc3QgdW51c2VkVmFsdWVUb1BsYWNhdGVBamQgPSB1bnVzZWQxICsgdW51c2VkMjtcblxuY29uc3QgTkdfVEVNUExBVEVfU0VMRUNUT1IgPSAnbmctdGVtcGxhdGUnO1xuXG4vKipcbiAqIFNlYXJjaCB0aGUgYFRBdHRyaWJ1dGVzYCB0byBzZWUgaWYgaXQgY29udGFpbnMgYGNzc0NsYXNzVG9NYXRjaGAgKGNhc2UgaW5zZW5zaXRpdmUpXG4gKlxuICogQHBhcmFtIGF0dHJzIGBUQXR0cmlidXRlc2AgdG8gc2VhcmNoIHRocm91Z2guXG4gKiBAcGFyYW0gY3NzQ2xhc3NUb01hdGNoIGNsYXNzIHRvIG1hdGNoIChsb3dlcmNhc2UpXG4gKiBAcGFyYW0gaXNQcm9qZWN0aW9uTW9kZSBXaGV0aGVyIG9yIG5vdCBjbGFzcyBtYXRjaGluZyBzaG91bGQgbG9vayBpbnRvIHRoZSBhdHRyaWJ1dGUgYGNsYXNzYCBpblxuICogICAgYWRkaXRpb24gdG8gdGhlIGBBdHRyaWJ1dGVNYXJrZXIuQ2xhc3Nlc2AuXG4gKi9cbmZ1bmN0aW9uIGlzQ3NzQ2xhc3NNYXRjaGluZyhcbiAgICBhdHRyczogVEF0dHJpYnV0ZXMsIGNzc0NsYXNzVG9NYXRjaDogc3RyaW5nLCBpc1Byb2plY3Rpb25Nb2RlOiBib29sZWFuKTogYm9vbGVhbiB7XG4gIC8vIFRPRE8obWlza28pOiBUaGUgZmFjdCB0aGF0IHRoaXMgZnVuY3Rpb24gbmVlZHMgdG8ga25vdyBhYm91dCBgaXNQcm9qZWN0aW9uTW9kZWAgc2VlbXMgc3VzcGVjdC5cbiAgLy8gSXQgaXMgc3RyYW5nZSB0byBtZSB0aGF0IHNvbWV0aW1lcyB0aGUgY2xhc3MgaW5mb3JtYXRpb24gY29tZXMgaW4gZm9ybSBvZiBgY2xhc3NgIGF0dHJpYnV0ZVxuICAvLyBhbmQgc29tZXRpbWVzIGluIGZvcm0gb2YgYEF0dHJpYnV0ZU1hcmtlci5DbGFzc2VzYC4gU29tZSBpbnZlc3RpZ2F0aW9uIGlzIG5lZWRlZCB0byBkZXRlcm1pbmVcbiAgLy8gaWYgdGhhdCBpcyB0aGUgcmlnaHQgYmVoYXZpb3IuXG4gIG5nRGV2TW9kZSAmJlxuICAgICAgYXNzZXJ0RXF1YWwoXG4gICAgICAgICAgY3NzQ2xhc3NUb01hdGNoLCBjc3NDbGFzc1RvTWF0Y2gudG9Mb3dlckNhc2UoKSwgJ0NsYXNzIG5hbWUgZXhwZWN0ZWQgdG8gYmUgbG93ZXJjYXNlLicpO1xuICBsZXQgaSA9IDA7XG4gIHdoaWxlIChpIDwgYXR0cnMubGVuZ3RoKSB7XG4gICAgbGV0IGl0ZW0gPSBhdHRyc1tpKytdO1xuICAgIGlmIChpc1Byb2plY3Rpb25Nb2RlICYmIGl0ZW0gPT09ICdjbGFzcycpIHtcbiAgICAgIGl0ZW0gPSBhdHRyc1tpXSBhcyBzdHJpbmc7XG4gICAgICBpZiAoY2xhc3NJbmRleE9mKGl0ZW0udG9Mb3dlckNhc2UoKSwgY3NzQ2xhc3NUb01hdGNoLCAwKSAhPT0gLTEpIHtcbiAgICAgICAgcmV0dXJuIHRydWU7XG4gICAgICB9XG4gICAgfSBlbHNlIGlmIChpdGVtID09PSBBdHRyaWJ1dGVNYXJrZXIuQ2xhc3Nlcykge1xuICAgICAgLy8gV2UgZm91bmQgdGhlIGNsYXNzZXMgc2VjdGlvbi4gU3RhcnQgc2VhcmNoaW5nIGZvciB0aGUgY2xhc3MuXG4gICAgICB3aGlsZSAoaSA8IGF0dHJzLmxlbmd0aCAmJiB0eXBlb2YoaXRlbSA9IGF0dHJzW2krK10pID09ICdzdHJpbmcnKSB7XG4gICAgICAgIC8vIHdoaWxlIHdlIGhhdmUgc3RyaW5nc1xuICAgICAgICBpZiAoaXRlbS50b0xvd2VyQ2FzZSgpID09PSBjc3NDbGFzc1RvTWF0Y2gpIHJldHVybiB0cnVlO1xuICAgICAgfVxuICAgICAgcmV0dXJuIGZhbHNlO1xuICAgIH1cbiAgfVxuICByZXR1cm4gZmFsc2U7XG59XG5cbi8qKlxuICogRnVuY3Rpb24gdGhhdCBjaGVja3Mgd2hldGhlciBhIGdpdmVuIHROb2RlIG1hdGNoZXMgdGFnLWJhc2VkIHNlbGVjdG9yIGFuZCBoYXMgYSB2YWxpZCB0eXBlLlxuICpcbiAqIE1hdGNoaW5nIGNhbiBiZSBwZXJmb3JtZWQgaW4gMiBtb2RlczogcHJvamVjdGlvbiBtb2RlICh3aGVuIHdlIHByb2plY3Qgbm9kZXMpIGFuZCByZWd1bGFyXG4gKiBkaXJlY3RpdmUgbWF0Y2hpbmcgbW9kZTpcbiAqIC0gaW4gdGhlIFwiZGlyZWN0aXZlIG1hdGNoaW5nXCIgbW9kZSB3ZSBkbyBfbm90XyB0YWtlIFRDb250YWluZXIncyB0YWdOYW1lIGludG8gYWNjb3VudCBpZiBpdCBpc1xuICogZGlmZmVyZW50IGZyb20gTkdfVEVNUExBVEVfU0VMRUNUT1IgKHZhbHVlIGRpZmZlcmVudCBmcm9tIE5HX1RFTVBMQVRFX1NFTEVDVE9SIGluZGljYXRlcyB0aGF0IGFcbiAqIHRhZyBuYW1lIHdhcyBleHRyYWN0ZWQgZnJvbSAqIHN5bnRheCBzbyB3ZSB3b3VsZCBtYXRjaCB0aGUgc2FtZSBkaXJlY3RpdmUgdHdpY2UpO1xuICogLSBpbiB0aGUgXCJwcm9qZWN0aW9uXCIgbW9kZSwgd2UgdXNlIGEgdGFnIG5hbWUgcG90ZW50aWFsbHkgZXh0cmFjdGVkIGZyb20gdGhlICogc3ludGF4IHByb2Nlc3NpbmdcbiAqIChhcHBsaWNhYmxlIHRvIFROb2RlVHlwZS5Db250YWluZXIgb25seSkuXG4gKi9cbmZ1bmN0aW9uIGhhc1RhZ0FuZFR5cGVNYXRjaChcbiAgICB0Tm9kZTogVE5vZGUsIGN1cnJlbnRTZWxlY3Rvcjogc3RyaW5nLCBpc1Byb2plY3Rpb25Nb2RlOiBib29sZWFuKTogYm9vbGVhbiB7XG4gIGNvbnN0IHRhZ05hbWVUb0NvbXBhcmUgPSB0Tm9kZS50eXBlID09PSBUTm9kZVR5cGUuQ29udGFpbmVyICYmICFpc1Byb2plY3Rpb25Nb2RlID9cbiAgICAgIE5HX1RFTVBMQVRFX1NFTEVDVE9SIDpcbiAgICAgIHROb2RlLnRhZ05hbWU7XG4gIHJldHVybiBjdXJyZW50U2VsZWN0b3IgPT09IHRhZ05hbWVUb0NvbXBhcmU7XG59XG5cbi8qKlxuICogQSB1dGlsaXR5IGZ1bmN0aW9uIHRvIG1hdGNoIGFuIEl2eSBub2RlIHN0YXRpYyBkYXRhIGFnYWluc3QgYSBzaW1wbGUgQ1NTIHNlbGVjdG9yXG4gKlxuICogQHBhcmFtIG5vZGUgc3RhdGljIGRhdGEgb2YgdGhlIG5vZGUgdG8gbWF0Y2hcbiAqIEBwYXJhbSBzZWxlY3RvciBUaGUgc2VsZWN0b3IgdG8gdHJ5IG1hdGNoaW5nIGFnYWluc3QgdGhlIG5vZGUuXG4gKiBAcGFyYW0gaXNQcm9qZWN0aW9uTW9kZSBpZiBgdHJ1ZWAgd2UgYXJlIG1hdGNoaW5nIGZvciBjb250ZW50IHByb2plY3Rpb24sIG90aGVyd2lzZSB3ZSBhcmUgZG9pbmdcbiAqIGRpcmVjdGl2ZSBtYXRjaGluZy5cbiAqIEByZXR1cm5zIHRydWUgaWYgbm9kZSBtYXRjaGVzIHRoZSBzZWxlY3Rvci5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGlzTm9kZU1hdGNoaW5nU2VsZWN0b3IoXG4gICAgdE5vZGU6IFROb2RlLCBzZWxlY3RvcjogQ3NzU2VsZWN0b3IsIGlzUHJvamVjdGlvbk1vZGU6IGJvb2xlYW4pOiBib29sZWFuIHtcbiAgbmdEZXZNb2RlICYmIGFzc2VydERlZmluZWQoc2VsZWN0b3JbMF0sICdTZWxlY3RvciBzaG91bGQgaGF2ZSBhIHRhZyBuYW1lJyk7XG4gIGxldCBtb2RlOiBTZWxlY3RvckZsYWdzID0gU2VsZWN0b3JGbGFncy5FTEVNRU5UO1xuICBjb25zdCBub2RlQXR0cnMgPSB0Tm9kZS5hdHRycyB8fCBbXTtcblxuICAvLyBGaW5kIHRoZSBpbmRleCBvZiBmaXJzdCBhdHRyaWJ1dGUgdGhhdCBoYXMgbm8gdmFsdWUsIG9ubHkgYSBuYW1lLlxuICBjb25zdCBuYW1lT25seU1hcmtlcklkeCA9IGdldE5hbWVPbmx5TWFya2VySW5kZXgobm9kZUF0dHJzKTtcblxuICAvLyBXaGVuIHByb2Nlc3NpbmcgXCI6bm90XCIgc2VsZWN0b3JzLCB3ZSBza2lwIHRvIHRoZSBuZXh0IFwiOm5vdFwiIGlmIHRoZVxuICAvLyBjdXJyZW50IG9uZSBkb2Vzbid0IG1hdGNoXG4gIGxldCBza2lwVG9OZXh0U2VsZWN0b3IgPSBmYWxzZTtcblxuICBmb3IgKGxldCBpID0gMDsgaSA8IHNlbGVjdG9yLmxlbmd0aDsgaSsrKSB7XG4gICAgY29uc3QgY3VycmVudCA9IHNlbGVjdG9yW2ldO1xuICAgIGlmICh0eXBlb2YgY3VycmVudCA9PT0gJ251bWJlcicpIHtcbiAgICAgIC8vIElmIHdlIGZpbmlzaCBwcm9jZXNzaW5nIGEgOm5vdCBzZWxlY3RvciBhbmQgaXQgaGFzbid0IGZhaWxlZCwgcmV0dXJuIGZhbHNlXG4gICAgICBpZiAoIXNraXBUb05leHRTZWxlY3RvciAmJiAhaXNQb3NpdGl2ZShtb2RlKSAmJiAhaXNQb3NpdGl2ZShjdXJyZW50KSkge1xuICAgICAgICByZXR1cm4gZmFsc2U7XG4gICAgICB9XG4gICAgICAvLyBJZiB3ZSBhcmUgc2tpcHBpbmcgdG8gdGhlIG5leHQgOm5vdCgpIGFuZCB0aGlzIG1vZGUgZmxhZyBpcyBwb3NpdGl2ZSxcbiAgICAgIC8vIGl0J3MgYSBwYXJ0IG9mIHRoZSBjdXJyZW50IDpub3QoKSBzZWxlY3RvciwgYW5kIHdlIHNob3VsZCBrZWVwIHNraXBwaW5nXG4gICAgICBpZiAoc2tpcFRvTmV4dFNlbGVjdG9yICYmIGlzUG9zaXRpdmUoY3VycmVudCkpIGNvbnRpbnVlO1xuICAgICAgc2tpcFRvTmV4dFNlbGVjdG9yID0gZmFsc2U7XG4gICAgICBtb2RlID0gKGN1cnJlbnQgYXMgbnVtYmVyKSB8IChtb2RlICYgU2VsZWN0b3JGbGFncy5OT1QpO1xuICAgICAgY29udGludWU7XG4gICAgfVxuXG4gICAgaWYgKHNraXBUb05leHRTZWxlY3RvcikgY29udGludWU7XG5cbiAgICBpZiAobW9kZSAmIFNlbGVjdG9yRmxhZ3MuRUxFTUVOVCkge1xuICAgICAgbW9kZSA9IFNlbGVjdG9yRmxhZ3MuQVRUUklCVVRFIHwgbW9kZSAmIFNlbGVjdG9yRmxhZ3MuTk9UO1xuICAgICAgaWYgKGN1cnJlbnQgIT09ICcnICYmICFoYXNUYWdBbmRUeXBlTWF0Y2godE5vZGUsIGN1cnJlbnQsIGlzUHJvamVjdGlvbk1vZGUpIHx8XG4gICAgICAgICAgY3VycmVudCA9PT0gJycgJiYgc2VsZWN0b3IubGVuZ3RoID09PSAxKSB7XG4gICAgICAgIGlmIChpc1Bvc2l0aXZlKG1vZGUpKSByZXR1cm4gZmFsc2U7XG4gICAgICAgIHNraXBUb05leHRTZWxlY3RvciA9IHRydWU7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIGNvbnN0IHNlbGVjdG9yQXR0clZhbHVlID0gbW9kZSAmIFNlbGVjdG9yRmxhZ3MuQ0xBU1MgPyBjdXJyZW50IDogc2VsZWN0b3JbKytpXTtcblxuICAgICAgLy8gc3BlY2lhbCBjYXNlIGZvciBtYXRjaGluZyBhZ2FpbnN0IGNsYXNzZXMgd2hlbiBhIHROb2RlIGhhcyBiZWVuIGluc3RhbnRpYXRlZCB3aXRoXG4gICAgICAvLyBjbGFzcyBhbmQgc3R5bGUgdmFsdWVzIGFzIHNlcGFyYXRlIGF0dHJpYnV0ZSB2YWx1ZXMgKGUuZy4gWyd0aXRsZScsIENMQVNTLCAnZm9vJ10pXG4gICAgICBpZiAoKG1vZGUgJiBTZWxlY3RvckZsYWdzLkNMQVNTKSAmJiB0Tm9kZS5hdHRycyAhPT0gbnVsbCkge1xuICAgICAgICBpZiAoIWlzQ3NzQ2xhc3NNYXRjaGluZyh0Tm9kZS5hdHRycywgc2VsZWN0b3JBdHRyVmFsdWUgYXMgc3RyaW5nLCBpc1Byb2plY3Rpb25Nb2RlKSkge1xuICAgICAgICAgIGlmIChpc1Bvc2l0aXZlKG1vZGUpKSByZXR1cm4gZmFsc2U7XG4gICAgICAgICAgc2tpcFRvTmV4dFNlbGVjdG9yID0gdHJ1ZTtcbiAgICAgICAgfVxuICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cblxuICAgICAgY29uc3QgaXNJbmxpbmVUZW1wbGF0ZSA9XG4gICAgICAgICAgdE5vZGUudHlwZSA9PSBUTm9kZVR5cGUuQ29udGFpbmVyICYmIHROb2RlLnRhZ05hbWUgIT09IE5HX1RFTVBMQVRFX1NFTEVDVE9SO1xuICAgICAgY29uc3QgYXR0ck5hbWUgPSAobW9kZSAmIFNlbGVjdG9yRmxhZ3MuQ0xBU1MpID8gJ2NsYXNzJyA6IGN1cnJlbnQ7XG4gICAgICBjb25zdCBhdHRySW5kZXhJbk5vZGUgPVxuICAgICAgICAgIGZpbmRBdHRySW5kZXhJbk5vZGUoYXR0ck5hbWUsIG5vZGVBdHRycywgaXNJbmxpbmVUZW1wbGF0ZSwgaXNQcm9qZWN0aW9uTW9kZSk7XG5cbiAgICAgIGlmIChhdHRySW5kZXhJbk5vZGUgPT09IC0xKSB7XG4gICAgICAgIGlmIChpc1Bvc2l0aXZlKG1vZGUpKSByZXR1cm4gZmFsc2U7XG4gICAgICAgIHNraXBUb05leHRTZWxlY3RvciA9IHRydWU7XG4gICAgICAgIGNvbnRpbnVlO1xuICAgICAgfVxuXG4gICAgICBpZiAoc2VsZWN0b3JBdHRyVmFsdWUgIT09ICcnKSB7XG4gICAgICAgIGxldCBub2RlQXR0clZhbHVlOiBzdHJpbmc7XG4gICAgICAgIGlmIChhdHRySW5kZXhJbk5vZGUgPiBuYW1lT25seU1hcmtlcklkeCkge1xuICAgICAgICAgIG5vZGVBdHRyVmFsdWUgPSAnJztcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICBuZ0Rldk1vZGUgJiYgYXNzZXJ0Tm90RXF1YWwoXG4gICAgICAgICAgICAgICAgICAgICAgICAgICBub2RlQXR0cnNbYXR0ckluZGV4SW5Ob2RlXSwgQXR0cmlidXRlTWFya2VyLk5hbWVzcGFjZVVSSSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICdXZSBkbyBub3QgbWF0Y2ggZGlyZWN0aXZlcyBvbiBuYW1lc3BhY2VkIGF0dHJpYnV0ZXMnKTtcbiAgICAgICAgICAvLyB3ZSBsb3dlcmNhc2UgdGhlIGF0dHJpYnV0ZSB2YWx1ZSB0byBiZSBhYmxlIHRvIG1hdGNoXG4gICAgICAgICAgLy8gc2VsZWN0b3JzIHdpdGhvdXQgY2FzZS1zZW5zaXRpdml0eVxuICAgICAgICAgIC8vIChzZWxlY3RvcnMgYXJlIGFscmVhZHkgaW4gbG93ZXJjYXNlIHdoZW4gZ2VuZXJhdGVkKVxuICAgICAgICAgIG5vZGVBdHRyVmFsdWUgPSAobm9kZUF0dHJzW2F0dHJJbmRleEluTm9kZSArIDFdIGFzIHN0cmluZykudG9Mb3dlckNhc2UoKTtcbiAgICAgICAgfVxuXG4gICAgICAgIGNvbnN0IGNvbXBhcmVBZ2FpbnN0Q2xhc3NOYW1lID0gbW9kZSAmIFNlbGVjdG9yRmxhZ3MuQ0xBU1MgPyBub2RlQXR0clZhbHVlIDogbnVsbDtcbiAgICAgICAgaWYgKGNvbXBhcmVBZ2FpbnN0Q2xhc3NOYW1lICYmXG4gICAgICAgICAgICAgICAgY2xhc3NJbmRleE9mKGNvbXBhcmVBZ2FpbnN0Q2xhc3NOYW1lLCBzZWxlY3RvckF0dHJWYWx1ZSBhcyBzdHJpbmcsIDApICE9PSAtMSB8fFxuICAgICAgICAgICAgbW9kZSAmIFNlbGVjdG9yRmxhZ3MuQVRUUklCVVRFICYmIHNlbGVjdG9yQXR0clZhbHVlICE9PSBub2RlQXR0clZhbHVlKSB7XG4gICAgICAgICAgaWYgKGlzUG9zaXRpdmUobW9kZSkpIHJldHVybiBmYWxzZTtcbiAgICAgICAgICBza2lwVG9OZXh0U2VsZWN0b3IgPSB0cnVlO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgcmV0dXJuIGlzUG9zaXRpdmUobW9kZSkgfHwgc2tpcFRvTmV4dFNlbGVjdG9yO1xufVxuXG5mdW5jdGlvbiBpc1Bvc2l0aXZlKG1vZGU6IFNlbGVjdG9yRmxhZ3MpOiBib29sZWFuIHtcbiAgcmV0dXJuIChtb2RlICYgU2VsZWN0b3JGbGFncy5OT1QpID09PSAwO1xufVxuXG4vKipcbiAqIEV4YW1pbmVzIHRoZSBhdHRyaWJ1dGUncyBkZWZpbml0aW9uIGFycmF5IGZvciBhIG5vZGUgdG8gZmluZCB0aGUgaW5kZXggb2YgdGhlXG4gKiBhdHRyaWJ1dGUgdGhhdCBtYXRjaGVzIHRoZSBnaXZlbiBgbmFtZWAuXG4gKlxuICogTk9URTogVGhpcyB3aWxsIG5vdCBtYXRjaCBuYW1lc3BhY2VkIGF0dHJpYnV0ZXMuXG4gKlxuICogQXR0cmlidXRlIG1hdGNoaW5nIGRlcGVuZHMgdXBvbiBgaXNJbmxpbmVUZW1wbGF0ZWAgYW5kIGBpc1Byb2plY3Rpb25Nb2RlYC5cbiAqIFRoZSBmb2xsb3dpbmcgdGFibGUgc3VtbWFyaXplcyB3aGljaCB0eXBlcyBvZiBhdHRyaWJ1dGVzIHdlIGF0dGVtcHQgdG8gbWF0Y2g6XG4gKlxuICogPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT1cbiAqIE1vZGVzICAgICAgICAgICAgICAgICAgIHwgTm9ybWFsIEF0dHJpYnV0ZXMgfCBCaW5kaW5ncyBBdHRyaWJ1dGVzIHwgVGVtcGxhdGUgQXR0cmlidXRlcyB8IEkxOG5cbiAqIEF0dHJpYnV0ZXNcbiAqID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09XG4gKiBJbmxpbmUgKyBQcm9qZWN0aW9uICAgICB8IFlFUyAgICAgICAgICAgICAgIHwgWUVTICAgICAgICAgICAgICAgICB8IE5PICAgICAgICAgICAgICAgICAgfCBZRVNcbiAqIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXG4gKiBJbmxpbmUgKyBEaXJlY3RpdmUgICAgICB8IE5PICAgICAgICAgICAgICAgIHwgTk8gICAgICAgICAgICAgICAgICB8IFlFUyAgICAgICAgICAgICAgICAgfCBOT1xuICogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS1cbiAqIE5vbi1pbmxpbmUgKyBQcm9qZWN0aW9uIHwgWUVTICAgICAgICAgICAgICAgfCBZRVMgICAgICAgICAgICAgICAgIHwgTk8gICAgICAgICAgICAgICAgICB8IFlFU1xuICogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS1cbiAqIE5vbi1pbmxpbmUgKyBEaXJlY3RpdmUgIHwgWUVTICAgICAgICAgICAgICAgfCBZRVMgICAgICAgICAgICAgICAgIHwgTk8gICAgICAgICAgICAgICAgICB8IFlFU1xuICogPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT1cbiAqXG4gKiBAcGFyYW0gbmFtZSB0aGUgbmFtZSBvZiB0aGUgYXR0cmlidXRlIHRvIGZpbmRcbiAqIEBwYXJhbSBhdHRycyB0aGUgYXR0cmlidXRlIGFycmF5IHRvIGV4YW1pbmVcbiAqIEBwYXJhbSBpc0lubGluZVRlbXBsYXRlIHRydWUgaWYgdGhlIG5vZGUgYmVpbmcgbWF0Y2hlZCBpcyBhbiBpbmxpbmUgdGVtcGxhdGUgKGUuZy4gYCpuZ0ZvcmApXG4gKiByYXRoZXIgdGhhbiBhIG1hbnVhbGx5IGV4cGFuZGVkIHRlbXBsYXRlIG5vZGUgKGUuZyBgPG5nLXRlbXBsYXRlPmApLlxuICogQHBhcmFtIGlzUHJvamVjdGlvbk1vZGUgdHJ1ZSBpZiB3ZSBhcmUgbWF0Y2hpbmcgYWdhaW5zdCBjb250ZW50IHByb2plY3Rpb24gb3RoZXJ3aXNlIHdlIGFyZVxuICogbWF0Y2hpbmcgYWdhaW5zdCBkaXJlY3RpdmVzLlxuICovXG5mdW5jdGlvbiBmaW5kQXR0ckluZGV4SW5Ob2RlKFxuICAgIG5hbWU6IHN0cmluZywgYXR0cnM6IFRBdHRyaWJ1dGVzIHwgbnVsbCwgaXNJbmxpbmVUZW1wbGF0ZTogYm9vbGVhbixcbiAgICBpc1Byb2plY3Rpb25Nb2RlOiBib29sZWFuKTogbnVtYmVyIHtcbiAgaWYgKGF0dHJzID09PSBudWxsKSByZXR1cm4gLTE7XG5cbiAgbGV0IGkgPSAwO1xuXG4gIGlmIChpc1Byb2plY3Rpb25Nb2RlIHx8ICFpc0lubGluZVRlbXBsYXRlKSB7XG4gICAgbGV0IGJpbmRpbmdzTW9kZSA9IGZhbHNlO1xuICAgIHdoaWxlIChpIDwgYXR0cnMubGVuZ3RoKSB7XG4gICAgICBjb25zdCBtYXliZUF0dHJOYW1lID0gYXR0cnNbaV07XG4gICAgICBpZiAobWF5YmVBdHRyTmFtZSA9PT0gbmFtZSkge1xuICAgICAgICByZXR1cm4gaTtcbiAgICAgIH0gZWxzZSBpZiAoXG4gICAgICAgICAgbWF5YmVBdHRyTmFtZSA9PT0gQXR0cmlidXRlTWFya2VyLkJpbmRpbmdzIHx8IG1heWJlQXR0ck5hbWUgPT09IEF0dHJpYnV0ZU1hcmtlci5JMThuKSB7XG4gICAgICAgIGJpbmRpbmdzTW9kZSA9IHRydWU7XG4gICAgICB9IGVsc2UgaWYgKFxuICAgICAgICAgIG1heWJlQXR0ck5hbWUgPT09IEF0dHJpYnV0ZU1hcmtlci5DbGFzc2VzIHx8IG1heWJlQXR0ck5hbWUgPT09IEF0dHJpYnV0ZU1hcmtlci5TdHlsZXMpIHtcbiAgICAgICAgbGV0IHZhbHVlID0gYXR0cnNbKytpXTtcbiAgICAgICAgLy8gV2Ugc2hvdWxkIHNraXAgY2xhc3NlcyBoZXJlIGJlY2F1c2Ugd2UgaGF2ZSBhIHNlcGFyYXRlIG1lY2hhbmlzbSBmb3JcbiAgICAgICAgLy8gbWF0Y2hpbmcgY2xhc3NlcyBpbiBwcm9qZWN0aW9uIG1vZGUuXG4gICAgICAgIHdoaWxlICh0eXBlb2YgdmFsdWUgPT09ICdzdHJpbmcnKSB7XG4gICAgICAgICAgdmFsdWUgPSBhdHRyc1srK2ldO1xuICAgICAgICB9XG4gICAgICAgIGNvbnRpbnVlO1xuICAgICAgfSBlbHNlIGlmIChtYXliZUF0dHJOYW1lID09PSBBdHRyaWJ1dGVNYXJrZXIuVGVtcGxhdGUpIHtcbiAgICAgICAgLy8gV2UgZG8gbm90IGNhcmUgYWJvdXQgVGVtcGxhdGUgYXR0cmlidXRlcyBpbiB0aGlzIHNjZW5hcmlvLlxuICAgICAgICBicmVhaztcbiAgICAgIH0gZWxzZSBpZiAobWF5YmVBdHRyTmFtZSA9PT0gQXR0cmlidXRlTWFya2VyLk5hbWVzcGFjZVVSSSkge1xuICAgICAgICAvLyBTa2lwIHRoZSB3aG9sZSBuYW1lc3BhY2VkIGF0dHJpYnV0ZSBhbmQgdmFsdWUuIFRoaXMgaXMgYnkgZGVzaWduLlxuICAgICAgICBpICs9IDQ7XG4gICAgICAgIGNvbnRpbnVlO1xuICAgICAgfVxuICAgICAgLy8gSW4gYmluZGluZyBtb2RlIHRoZXJlIGFyZSBvbmx5IG5hbWVzLCByYXRoZXIgdGhhbiBuYW1lLXZhbHVlIHBhaXJzLlxuICAgICAgaSArPSBiaW5kaW5nc01vZGUgPyAxIDogMjtcbiAgICB9XG4gICAgLy8gV2UgZGlkIG5vdCBtYXRjaCB0aGUgYXR0cmlidXRlXG4gICAgcmV0dXJuIC0xO1xuICB9IGVsc2Uge1xuICAgIHJldHVybiBtYXRjaFRlbXBsYXRlQXR0cmlidXRlKGF0dHJzLCBuYW1lKTtcbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gaXNOb2RlTWF0Y2hpbmdTZWxlY3Rvckxpc3QoXG4gICAgdE5vZGU6IFROb2RlLCBzZWxlY3RvcjogQ3NzU2VsZWN0b3JMaXN0LCBpc1Byb2plY3Rpb25Nb2RlOiBib29sZWFuID0gZmFsc2UpOiBib29sZWFuIHtcbiAgZm9yIChsZXQgaSA9IDA7IGkgPCBzZWxlY3Rvci5sZW5ndGg7IGkrKykge1xuICAgIGlmIChpc05vZGVNYXRjaGluZ1NlbGVjdG9yKHROb2RlLCBzZWxlY3RvcltpXSwgaXNQcm9qZWN0aW9uTW9kZSkpIHtcbiAgICAgIHJldHVybiB0cnVlO1xuICAgIH1cbiAgfVxuXG4gIHJldHVybiBmYWxzZTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdldFByb2plY3RBc0F0dHJWYWx1ZSh0Tm9kZTogVE5vZGUpOiBDc3NTZWxlY3RvcnxudWxsIHtcbiAgY29uc3Qgbm9kZUF0dHJzID0gdE5vZGUuYXR0cnM7XG4gIGlmIChub2RlQXR0cnMgIT0gbnVsbCkge1xuICAgIGNvbnN0IG5nUHJvamVjdEFzQXR0cklkeCA9IG5vZGVBdHRycy5pbmRleE9mKEF0dHJpYnV0ZU1hcmtlci5Qcm9qZWN0QXMpO1xuICAgIC8vIG9ubHkgY2hlY2sgZm9yIG5nUHJvamVjdEFzIGluIGF0dHJpYnV0ZSBuYW1lcywgZG9uJ3QgYWNjaWRlbnRhbGx5IG1hdGNoIGF0dHJpYnV0ZSdzIHZhbHVlXG4gICAgLy8gKGF0dHJpYnV0ZSBuYW1lcyBhcmUgc3RvcmVkIGF0IGV2ZW4gaW5kZXhlcylcbiAgICBpZiAoKG5nUHJvamVjdEFzQXR0cklkeCAmIDEpID09PSAwKSB7XG4gICAgICByZXR1cm4gbm9kZUF0dHJzW25nUHJvamVjdEFzQXR0cklkeCArIDFdIGFzIENzc1NlbGVjdG9yO1xuICAgIH1cbiAgfVxuICByZXR1cm4gbnVsbDtcbn1cblxuZnVuY3Rpb24gZ2V0TmFtZU9ubHlNYXJrZXJJbmRleChub2RlQXR0cnM6IFRBdHRyaWJ1dGVzKSB7XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgbm9kZUF0dHJzLmxlbmd0aDsgaSsrKSB7XG4gICAgY29uc3Qgbm9kZUF0dHIgPSBub2RlQXR0cnNbaV07XG4gICAgaWYgKGlzTmFtZU9ubHlBdHRyaWJ1dGVNYXJrZXIobm9kZUF0dHIpKSB7XG4gICAgICByZXR1cm4gaTtcbiAgICB9XG4gIH1cbiAgcmV0dXJuIG5vZGVBdHRycy5sZW5ndGg7XG59XG5cbmZ1bmN0aW9uIG1hdGNoVGVtcGxhdGVBdHRyaWJ1dGUoYXR0cnM6IFRBdHRyaWJ1dGVzLCBuYW1lOiBzdHJpbmcpOiBudW1iZXIge1xuICBsZXQgaSA9IGF0dHJzLmluZGV4T2YoQXR0cmlidXRlTWFya2VyLlRlbXBsYXRlKTtcbiAgaWYgKGkgPiAtMSkge1xuICAgIGkrKztcbiAgICB3aGlsZSAoaSA8IGF0dHJzLmxlbmd0aCkge1xuICAgICAgaWYgKGF0dHJzW2ldID09PSBuYW1lKSByZXR1cm4gaTtcbiAgICAgIGkrKztcbiAgICB9XG4gIH1cbiAgcmV0dXJuIC0xO1xufVxuXG4vKipcbiAqIENoZWNrcyB3aGV0aGVyIGEgc2VsZWN0b3IgaXMgaW5zaWRlIGEgQ3NzU2VsZWN0b3JMaXN0XG4gKiBAcGFyYW0gc2VsZWN0b3IgU2VsZWN0b3IgdG8gYmUgY2hlY2tlZC5cbiAqIEBwYXJhbSBsaXN0IExpc3QgaW4gd2hpY2ggdG8gbG9vayBmb3IgdGhlIHNlbGVjdG9yLlxuICovXG5leHBvcnQgZnVuY3Rpb24gaXNTZWxlY3RvckluU2VsZWN0b3JMaXN0KHNlbGVjdG9yOiBDc3NTZWxlY3RvciwgbGlzdDogQ3NzU2VsZWN0b3JMaXN0KTogYm9vbGVhbiB7XG4gIHNlbGVjdG9yTGlzdExvb3A6IGZvciAobGV0IGkgPSAwOyBpIDwgbGlzdC5sZW5ndGg7IGkrKykge1xuICAgIGNvbnN0IGN1cnJlbnRTZWxlY3RvckluTGlzdCA9IGxpc3RbaV07XG4gICAgaWYgKHNlbGVjdG9yLmxlbmd0aCAhPT0gY3VycmVudFNlbGVjdG9ySW5MaXN0Lmxlbmd0aCkge1xuICAgICAgY29udGludWU7XG4gICAgfVxuICAgIGZvciAobGV0IGogPSAwOyBqIDwgc2VsZWN0b3IubGVuZ3RoOyBqKyspIHtcbiAgICAgIGlmIChzZWxlY3RvcltqXSAhPT0gY3VycmVudFNlbGVjdG9ySW5MaXN0W2pdKSB7XG4gICAgICAgIGNvbnRpbnVlIHNlbGVjdG9yTGlzdExvb3A7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiB0cnVlO1xuICB9XG4gIHJldHVybiBmYWxzZTtcbn1cblxuZnVuY3Rpb24gbWF5YmVXcmFwSW5Ob3RTZWxlY3Rvcihpc05lZ2F0aXZlTW9kZTogYm9vbGVhbiwgY2h1bms6IHN0cmluZyk6IHN0cmluZyB7XG4gIHJldHVybiBpc05lZ2F0aXZlTW9kZSA/ICc6bm90KCcgKyBjaHVuay50cmltKCkgKyAnKScgOiBjaHVuaztcbn1cblxuZnVuY3Rpb24gc3RyaW5naWZ5Q1NTU2VsZWN0b3Ioc2VsZWN0b3I6IENzc1NlbGVjdG9yKTogc3RyaW5nIHtcbiAgbGV0IHJlc3VsdCA9IHNlbGVjdG9yWzBdIGFzIHN0cmluZztcbiAgbGV0IGkgPSAxO1xuICBsZXQgbW9kZSA9IFNlbGVjdG9yRmxhZ3MuQVRUUklCVVRFO1xuICBsZXQgY3VycmVudENodW5rID0gJyc7XG4gIGxldCBpc05lZ2F0aXZlTW9kZSA9IGZhbHNlO1xuICB3aGlsZSAoaSA8IHNlbGVjdG9yLmxlbmd0aCkge1xuICAgIGxldCB2YWx1ZU9yTWFya2VyID0gc2VsZWN0b3JbaV07XG4gICAgaWYgKHR5cGVvZiB2YWx1ZU9yTWFya2VyID09PSAnc3RyaW5nJykge1xuICAgICAgaWYgKG1vZGUgJiBTZWxlY3RvckZsYWdzLkFUVFJJQlVURSkge1xuICAgICAgICBjb25zdCBhdHRyVmFsdWUgPSBzZWxlY3RvclsrK2ldIGFzIHN0cmluZztcbiAgICAgICAgY3VycmVudENodW5rICs9XG4gICAgICAgICAgICAnWycgKyB2YWx1ZU9yTWFya2VyICsgKGF0dHJWYWx1ZS5sZW5ndGggPiAwID8gJz1cIicgKyBhdHRyVmFsdWUgKyAnXCInIDogJycpICsgJ10nO1xuICAgICAgfSBlbHNlIGlmIChtb2RlICYgU2VsZWN0b3JGbGFncy5DTEFTUykge1xuICAgICAgICBjdXJyZW50Q2h1bmsgKz0gJy4nICsgdmFsdWVPck1hcmtlcjtcbiAgICAgIH0gZWxzZSBpZiAobW9kZSAmIFNlbGVjdG9yRmxhZ3MuRUxFTUVOVCkge1xuICAgICAgICBjdXJyZW50Q2h1bmsgKz0gJyAnICsgdmFsdWVPck1hcmtlcjtcbiAgICAgIH1cbiAgICB9IGVsc2Uge1xuICAgICAgLy9cbiAgICAgIC8vIEFwcGVuZCBjdXJyZW50IGNodW5rIHRvIHRoZSBmaW5hbCByZXN1bHQgaW4gY2FzZSB3ZSBjb21lIGFjcm9zcyBTZWxlY3RvckZsYWcsIHdoaWNoXG4gICAgICAvLyBpbmRpY2F0ZXMgdGhhdCB0aGUgcHJldmlvdXMgc2VjdGlvbiBvZiBhIHNlbGVjdG9yIGlzIG92ZXIuIFdlIG5lZWQgdG8gYWNjdW11bGF0ZSBjb250ZW50XG4gICAgICAvLyBiZXR3ZWVuIGZsYWdzIHRvIG1ha2Ugc3VyZSB3ZSB3cmFwIHRoZSBjaHVuayBsYXRlciBpbiA6bm90KCkgc2VsZWN0b3IgaWYgbmVlZGVkLCBlLmcuXG4gICAgICAvLyBgYGBcbiAgICAgIC8vICBbJycsIEZsYWdzLkNMQVNTLCAnLmNsYXNzQScsIEZsYWdzLkNMQVNTIHwgRmxhZ3MuTk9ULCAnLmNsYXNzQicsICcuY2xhc3NDJ11cbiAgICAgIC8vIGBgYFxuICAgICAgLy8gc2hvdWxkIGJlIHRyYW5zZm9ybWVkIHRvIGAuY2xhc3NBIDpub3QoLmNsYXNzQiAuY2xhc3NDKWAuXG4gICAgICAvL1xuICAgICAgLy8gTm90ZTogZm9yIG5lZ2F0aXZlIHNlbGVjdG9yIHBhcnQsIHdlIGFjY3VtdWxhdGUgY29udGVudCBiZXR3ZWVuIGZsYWdzIHVudGlsIHdlIGZpbmQgdGhlXG4gICAgICAvLyBuZXh0IG5lZ2F0aXZlIGZsYWcuIFRoaXMgaXMgbmVlZGVkIHRvIHN1cHBvcnQgYSBjYXNlIHdoZXJlIGA6bm90KClgIHJ1bGUgY29udGFpbnMgbW9yZSB0aGFuXG4gICAgICAvLyBvbmUgY2h1bmssIGUuZy4gdGhlIGZvbGxvd2luZyBzZWxlY3RvcjpcbiAgICAgIC8vIGBgYFxuICAgICAgLy8gIFsnJywgRmxhZ3MuRUxFTUVOVCB8IEZsYWdzLk5PVCwgJ3AnLCBGbGFncy5DTEFTUywgJ2ZvbycsIEZsYWdzLkNMQVNTIHwgRmxhZ3MuTk9ULCAnYmFyJ11cbiAgICAgIC8vIGBgYFxuICAgICAgLy8gc2hvdWxkIGJlIHN0cmluZ2lmaWVkIHRvIGA6bm90KHAuZm9vKSA6bm90KC5iYXIpYFxuICAgICAgLy9cbiAgICAgIGlmIChjdXJyZW50Q2h1bmsgIT09ICcnICYmICFpc1Bvc2l0aXZlKHZhbHVlT3JNYXJrZXIpKSB7XG4gICAgICAgIHJlc3VsdCArPSBtYXliZVdyYXBJbk5vdFNlbGVjdG9yKGlzTmVnYXRpdmVNb2RlLCBjdXJyZW50Q2h1bmspO1xuICAgICAgICBjdXJyZW50Q2h1bmsgPSAnJztcbiAgICAgIH1cbiAgICAgIG1vZGUgPSB2YWx1ZU9yTWFya2VyO1xuICAgICAgLy8gQWNjb3JkaW5nIHRvIENzc1NlbGVjdG9yIHNwZWMsIG9uY2Ugd2UgY29tZSBhY3Jvc3MgYFNlbGVjdG9yRmxhZ3MuTk9UYCBmbGFnLCB0aGUgbmVnYXRpdmVcbiAgICAgIC8vIG1vZGUgaXMgbWFpbnRhaW5lZCBmb3IgcmVtYWluaW5nIGNodW5rcyBvZiBhIHNlbGVjdG9yLlxuICAgICAgaXNOZWdhdGl2ZU1vZGUgPSBpc05lZ2F0aXZlTW9kZSB8fCAhaXNQb3NpdGl2ZShtb2RlKTtcbiAgICB9XG4gICAgaSsrO1xuICB9XG4gIGlmIChjdXJyZW50Q2h1bmsgIT09ICcnKSB7XG4gICAgcmVzdWx0ICs9IG1heWJlV3JhcEluTm90U2VsZWN0b3IoaXNOZWdhdGl2ZU1vZGUsIGN1cnJlbnRDaHVuayk7XG4gIH1cbiAgcmV0dXJuIHJlc3VsdDtcbn1cblxuLyoqXG4gKiBHZW5lcmF0ZXMgc3RyaW5nIHJlcHJlc2VudGF0aW9uIG9mIENTUyBzZWxlY3RvciBpbiBwYXJzZWQgZm9ybS5cbiAqXG4gKiBDb21wb25lbnREZWYgYW5kIERpcmVjdGl2ZURlZiBhcmUgZ2VuZXJhdGVkIHdpdGggdGhlIHNlbGVjdG9yIGluIHBhcnNlZCBmb3JtIHRvIGF2b2lkIGRvaW5nXG4gKiBhZGRpdGlvbmFsIHBhcnNpbmcgYXQgcnVudGltZSAoZm9yIGV4YW1wbGUsIGZvciBkaXJlY3RpdmUgbWF0Y2hpbmcpLiBIb3dldmVyIGluIHNvbWUgY2FzZXMgKGZvclxuICogZXhhbXBsZSwgd2hpbGUgYm9vdHN0cmFwcGluZyBhIGNvbXBvbmVudCksIGEgc3RyaW5nIHZlcnNpb24gb2YgdGhlIHNlbGVjdG9yIGlzIHJlcXVpcmVkIHRvIHF1ZXJ5XG4gKiBmb3IgdGhlIGhvc3QgZWxlbWVudCBvbiB0aGUgcGFnZS4gVGhpcyBmdW5jdGlvbiB0YWtlcyB0aGUgcGFyc2VkIGZvcm0gb2YgYSBzZWxlY3RvciBhbmQgcmV0dXJuc1xuICogaXRzIHN0cmluZyByZXByZXNlbnRhdGlvbi5cbiAqXG4gKiBAcGFyYW0gc2VsZWN0b3JMaXN0IHNlbGVjdG9yIGluIHBhcnNlZCBmb3JtXG4gKiBAcmV0dXJucyBzdHJpbmcgcmVwcmVzZW50YXRpb24gb2YgYSBnaXZlbiBzZWxlY3RvclxuICovXG5leHBvcnQgZnVuY3Rpb24gc3RyaW5naWZ5Q1NTU2VsZWN0b3JMaXN0KHNlbGVjdG9yTGlzdDogQ3NzU2VsZWN0b3JMaXN0KTogc3RyaW5nIHtcbiAgcmV0dXJuIHNlbGVjdG9yTGlzdC5tYXAoc3RyaW5naWZ5Q1NTU2VsZWN0b3IpLmpvaW4oJywnKTtcbn0iXX0=