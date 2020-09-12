/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/instructions/element.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { assertDataInRange, assertDefined, assertEqual } from '../../util/assert';
import { assertFirstCreatePass, assertHasParent } from '../assert';
import { attachPatchData } from '../context_discovery';
import { registerPostOrderHooks } from '../hooks';
import { hasClassInput, hasStyleInput } from '../interfaces/node';
import { isContentQueryHost, isDirectiveHost } from '../interfaces/type_checks';
import { HEADER_OFFSET, RENDERER, T_HOST } from '../interfaces/view';
import { assertNodeType } from '../node_assert';
import { appendChild, writeDirectClass, writeDirectStyle } from '../node_manipulation';
import { decreaseElementDepthCount, getBindingIndex, getElementDepthCount, getIsParent, getLView, getNamespace, getPreviousOrParentTNode, getTView, increaseElementDepthCount, setIsNotParent, setPreviousOrParentTNode } from '../state';
import { computeStaticStyling } from '../styling/static_styling';
import { setUpAttributes } from '../util/attrs_utils';
import { getConstant } from '../util/view_utils';
import { setDirectiveInputsWhichShadowsStyling } from './property';
import { createDirectivesInstances, elementCreate, executeContentQueries, getOrCreateTNode, matchingSchemas, resolveDirectives, saveResolvedLocalsInData } from './shared';
/**
 * @param {?} index
 * @param {?} tView
 * @param {?} lView
 * @param {?} native
 * @param {?} name
 * @param {?=} attrsIndex
 * @param {?=} localRefsIndex
 * @return {?}
 */
function elementStartFirstCreatePass(index, tView, lView, native, name, attrsIndex, localRefsIndex) {
    ngDevMode && assertFirstCreatePass(tView);
    ngDevMode && ngDevMode.firstCreatePass++;
    /** @type {?} */
    const tViewConsts = tView.consts;
    /** @type {?} */
    const attrs = getConstant(tViewConsts, attrsIndex);
    /** @type {?} */
    const tNode = getOrCreateTNode(tView, lView[T_HOST], index, 3 /* Element */, name, attrs);
    /** @type {?} */
    const hasDirectives = resolveDirectives(tView, lView, tNode, getConstant(tViewConsts, localRefsIndex));
    ngDevMode && warnAboutUnknownElement(tView, lView, native, tNode, hasDirectives);
    if (tNode.mergedAttrs !== null) {
        computeStaticStyling(tNode, tNode.mergedAttrs);
    }
    if (tView.queries !== null) {
        tView.queries.elementStart(tView, tNode);
    }
    return tNode;
}
/**
 * Create DOM element. The instruction must later be followed by `elementEnd()` call.
 *
 * \@codeGenApi
 * @param {?} index Index of the element in the LView array
 * @param {?} name Name of the DOM Node
 * @param {?=} attrsIndex Index of the element's attributes in the `consts` array.
 * @param {?=} localRefsIndex Index of the element's local references in the `consts` array.
 *
 * Attributes and localRefs are passed as an array of strings where elements with an even index
 * hold an attribute name and elements with an odd index hold an attribute value, ex.:
 * ['id', 'warning5', 'class', 'alert']
 *
 * @return {?}
 */
export function ɵɵelementStart(index, name, attrsIndex, localRefsIndex) {
    /** @type {?} */
    const lView = getLView();
    /** @type {?} */
    const tView = getTView();
    /** @type {?} */
    const adjustedIndex = HEADER_OFFSET + index;
    ngDevMode && assertEqual(getBindingIndex(), tView.bindingStartIndex, 'elements should be created before any bindings');
    ngDevMode && ngDevMode.rendererCreateElement++;
    ngDevMode && assertDataInRange(lView, adjustedIndex);
    /** @type {?} */
    const renderer = lView[RENDERER];
    /** @type {?} */
    const native = lView[adjustedIndex] = elementCreate(name, renderer, getNamespace());
    /** @type {?} */
    const tNode = tView.firstCreatePass ?
        elementStartFirstCreatePass(index, tView, lView, native, name, attrsIndex, localRefsIndex) :
        (/** @type {?} */ (tView.data[adjustedIndex]));
    setPreviousOrParentTNode(tNode, true);
    /** @type {?} */
    const mergedAttrs = tNode.mergedAttrs;
    if (mergedAttrs !== null) {
        setUpAttributes(renderer, native, mergedAttrs);
    }
    /** @type {?} */
    const classes = tNode.classes;
    if (classes !== null) {
        writeDirectClass(renderer, native, classes);
    }
    /** @type {?} */
    const styles = tNode.styles;
    if (styles !== null) {
        writeDirectStyle(renderer, native, styles);
    }
    appendChild(tView, lView, native, tNode);
    // any immediate children of a component or template container must be pre-emptively
    // monkey-patched with the component view data so that the element can be inspected
    // later on using any element discovery utility methods (see `element_discovery.ts`)
    if (getElementDepthCount() === 0) {
        attachPatchData(native, lView);
    }
    increaseElementDepthCount();
    if (isDirectiveHost(tNode)) {
        createDirectivesInstances(tView, lView, tNode);
        executeContentQueries(tView, tNode, lView);
    }
    if (localRefsIndex !== null) {
        saveResolvedLocalsInData(lView, tNode);
    }
}
/**
 * Mark the end of the element.
 *
 * \@codeGenApi
 * @return {?}
 */
export function ɵɵelementEnd() {
    /** @type {?} */
    let previousOrParentTNode = getPreviousOrParentTNode();
    ngDevMode && assertDefined(previousOrParentTNode, 'No parent node to close.');
    if (getIsParent()) {
        setIsNotParent();
    }
    else {
        ngDevMode && assertHasParent(getPreviousOrParentTNode());
        previousOrParentTNode = (/** @type {?} */ (previousOrParentTNode.parent));
        setPreviousOrParentTNode(previousOrParentTNode, false);
    }
    /** @type {?} */
    const tNode = previousOrParentTNode;
    ngDevMode && assertNodeType(tNode, 3 /* Element */);
    decreaseElementDepthCount();
    /** @type {?} */
    const tView = getTView();
    if (tView.firstCreatePass) {
        registerPostOrderHooks(tView, previousOrParentTNode);
        if (isContentQueryHost(previousOrParentTNode)) {
            (/** @type {?} */ (tView.queries)).elementEnd(previousOrParentTNode);
        }
    }
    if (tNode.classes !== null && hasClassInput(tNode)) {
        setDirectiveInputsWhichShadowsStyling(tView, tNode, getLView(), tNode.classes, true);
    }
    if (tNode.styles !== null && hasStyleInput(tNode)) {
        setDirectiveInputsWhichShadowsStyling(tView, tNode, getLView(), tNode.styles, false);
    }
}
/**
 * Creates an empty element using {\@link elementStart} and {\@link elementEnd}
 *
 * \@codeGenApi
 * @param {?} index Index of the element in the data array
 * @param {?} name Name of the DOM Node
 * @param {?=} attrsIndex Index of the element's attributes in the `consts` array.
 * @param {?=} localRefsIndex Index of the element's local references in the `consts` array.
 *
 * @return {?}
 */
export function ɵɵelement(index, name, attrsIndex, localRefsIndex) {
    ɵɵelementStart(index, name, attrsIndex, localRefsIndex);
    ɵɵelementEnd();
}
/**
 * @param {?} tView
 * @param {?} lView
 * @param {?} element
 * @param {?} tNode
 * @param {?} hasDirectives
 * @return {?}
 */
function warnAboutUnknownElement(tView, lView, element, tNode, hasDirectives) {
    /** @type {?} */
    const schemas = tView.schemas;
    // If `schemas` is set to `null`, that's an indication that this Component was compiled in AOT
    // mode where this check happens at compile time. In JIT mode, `schemas` is always present and
    // defined as an array (as an empty array in case `schemas` field is not defined) and we should
    // execute the check below.
    if (schemas === null)
        return;
    /** @type {?} */
    const tagName = tNode.tagName;
    // If the element matches any directive, it's considered as valid.
    if (!hasDirectives && tagName !== null) {
        // The element is unknown if it's an instance of HTMLUnknownElement or it isn't registered
        // as a custom element. Note that unknown elements with a dash in their name won't be instances
        // of HTMLUnknownElement in browsers that support web components.
        /** @type {?} */
        const isUnknown = 
        // Note that we can't check for `typeof HTMLUnknownElement === 'function'`,
        // because while most browsers return 'function', IE returns 'object'.
        (typeof HTMLUnknownElement !== 'undefined' && HTMLUnknownElement &&
            element instanceof HTMLUnknownElement) ||
            (typeof customElements !== 'undefined' && tagName.indexOf('-') > -1 &&
                !customElements.get(tagName));
        if (isUnknown && !matchingSchemas(tView, lView, tagName)) {
            /** @type {?} */
            let warning = `'${tagName}' is not a known element:\n`;
            warning +=
                `1. If '${tagName}' is an Angular component, then verify that it is part of this module.\n`;
            if (tagName && tagName.indexOf('-') > -1) {
                warning +=
                    `2. If '${tagName}' is a Web Component then add 'CUSTOM_ELEMENTS_SCHEMA' to the '@NgModule.schemas' of this component to suppress this message.`;
            }
            else {
                warning +=
                    `2. To allow any element add 'NO_ERRORS_SCHEMA' to the '@NgModule.schemas' of this component.`;
            }
            console.warn(warning);
        }
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZWxlbWVudC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3JlbmRlcjMvaW5zdHJ1Y3Rpb25zL2VsZW1lbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBUUEsT0FBTyxFQUFDLGlCQUFpQixFQUFFLGFBQWEsRUFBRSxXQUFXLEVBQUMsTUFBTSxtQkFBbUIsQ0FBQztBQUNoRixPQUFPLEVBQUMscUJBQXFCLEVBQUUsZUFBZSxFQUFDLE1BQU0sV0FBVyxDQUFDO0FBQ2pFLE9BQU8sRUFBQyxlQUFlLEVBQUMsTUFBTSxzQkFBc0IsQ0FBQztBQUNyRCxPQUFPLEVBQUMsc0JBQXNCLEVBQUMsTUFBTSxVQUFVLENBQUM7QUFDaEQsT0FBTyxFQUE4QyxhQUFhLEVBQUUsYUFBYSxFQUFDLE1BQU0sb0JBQW9CLENBQUM7QUFFN0csT0FBTyxFQUFDLGtCQUFrQixFQUFFLGVBQWUsRUFBQyxNQUFNLDJCQUEyQixDQUFDO0FBQzlFLE9BQU8sRUFBQyxhQUFhLEVBQVMsUUFBUSxFQUFnQixNQUFNLEVBQUMsTUFBTSxvQkFBb0IsQ0FBQztBQUN4RixPQUFPLEVBQUMsY0FBYyxFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFDOUMsT0FBTyxFQUFDLFdBQVcsRUFBRSxnQkFBZ0IsRUFBRSxnQkFBZ0IsRUFBQyxNQUFNLHNCQUFzQixDQUFDO0FBQ3JGLE9BQU8sRUFBQyx5QkFBeUIsRUFBRSxlQUFlLEVBQUUsb0JBQW9CLEVBQUUsV0FBVyxFQUFFLFFBQVEsRUFBRSxZQUFZLEVBQUUsd0JBQXdCLEVBQUUsUUFBUSxFQUFFLHlCQUF5QixFQUFFLGNBQWMsRUFBRSx3QkFBd0IsRUFBQyxNQUFNLFVBQVUsQ0FBQztBQUN4TyxPQUFPLEVBQUMsb0JBQW9CLEVBQUMsTUFBTSwyQkFBMkIsQ0FBQztBQUMvRCxPQUFPLEVBQUMsZUFBZSxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFD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ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHthc3NlcnREYXRhSW5SYW5nZSwgYXNzZXJ0RGVmaW5lZCwgYXNzZXJ0RXF1YWx9IGZyb20gJy4uLy4uL3V0aWwvYXNzZXJ0JztcbmltcG9ydCB7YXNzZXJ0Rmlyc3RDcmVhdGVQYXNzLCBhc3NlcnRIYXNQYXJlbnR9IGZyb20gJy4uL2Fzc2VydCc7XG5pbXBvcnQge2F0dGFjaFBhdGNoRGF0YX0gZnJvbSAnLi4vY29udGV4dF9kaXNjb3ZlcnknO1xuaW1wb3J0IHtyZWdpc3RlclBvc3RPcmRlckhvb2tzfSBmcm9tICcuLi9ob29rcyc7XG5pbXBvcnQge1RBdHRyaWJ1dGVzLCBURWxlbWVudE5vZGUsIFROb2RlLCBUTm9kZVR5cGUsIGhhc0NsYXNzSW5wdXQsIGhhc1N0eWxlSW5wdXR9IGZyb20gJy4uL2ludGVyZmFjZXMvbm9kZSc7XG5pbXBvcnQge1JFbGVtZW50fSBmcm9tICcuLi9pbnRlcmZhY2VzL3JlbmRlcmVyJztcbmltcG9ydCB7aXNDb250ZW50UXVlcnlIb3N0LCBpc0RpcmVjdGl2ZUhvc3R9IGZyb20gJy4uL2ludGVyZmFjZXMvdHlwZV9jaGVja3MnO1xuaW1wb3J0IHtIRUFERVJfT0ZGU0VULCBMVmlldywgUkVOREVSRVIsIFRWSUVXLCBUVmlldywgVF9IT1NUfSBmcm9tICcuLi9pbnRlcmZhY2VzL3ZpZXcnO1xuaW1wb3J0IHthc3NlcnROb2RlVHlwZX0gZnJvbSAnLi4vbm9kZV9hc3NlcnQnO1xuaW1wb3J0IHthcHBlbmRDaGlsZCwgd3JpdGVEaXJlY3RDbGFzcywgd3JpdGVEaXJlY3RTdHlsZX0gZnJvbSAnLi4vbm9kZV9tYW5pcHVsYXRpb24nO1xuaW1wb3J0IHtkZWNyZWFzZUVsZW1lbnREZXB0aENvdW50LCBnZXRCaW5kaW5nSW5kZXgsIGdldEVsZW1lbnREZXB0aENvdW50LCBnZXRJc1BhcmVudCwgZ2V0TFZpZXcsIGdldE5hbWVzcGFjZSwgZ2V0UHJldmlvdXNPclBhcmVudFROb2RlLCBnZXRUVmlldywgaW5jcmVhc2VFbGVtZW50RGVwdGhDb3VudCwgc2V0SXNOb3RQYXJlbnQsIHNldFByZXZpb3VzT3JQYXJlbnRUTm9kZX0gZnJvbSAnLi4vc3RhdGUnO1xuaW1wb3J0IHtjb21wdXRlU3RhdGljU3R5bGluZ30gZnJvbSAnLi4vc3R5bGluZy9zdGF0aWNfc3R5bGluZyc7XG5pbXBvcnQge3NldFVwQXR0cmlidXRlc30gZnJvbSAnLi4vdXRpbC9hdHRyc191dGlscyc7XG5pbXBvcnQge2dldENvbnN0YW50fSBmcm9tICcuLi91dGlsL3ZpZXdfdXRpbHMnO1xuaW1wb3J0IHtzZXREaXJlY3RpdmVJbnB1dHNXaGljaFNoYWRvd3NTdHlsaW5nfSBmcm9tICcuL3Byb3BlcnR5JztcbmltcG9ydCB7Y3JlYXRlRGlyZWN0aXZlc0luc3RhbmNlcywgZWxlbWVudENyZWF0ZSwgZXhlY3V0ZUNvbnRlbnRRdWVyaWVzLCBnZXRPckNyZWF0ZVROb2RlLCBtYXRjaGluZ1NjaGVtYXMsIHJlc29sdmVEaXJlY3RpdmVzLCBzYXZlUmVzb2x2ZWRMb2NhbHNJbkRhdGF9IGZyb20gJy4vc2hhcmVkJztcblxuXG5mdW5jdGlvbiBlbGVtZW50U3RhcnRGaXJzdENyZWF0ZVBhc3MoXG4gICAgaW5kZXg6IG51bWJlciwgdFZpZXc6IFRWaWV3LCBsVmlldzogTFZpZXcsIG5hdGl2ZTogUkVsZW1lbnQsIG5hbWU6IHN0cmluZyxcbiAgICBhdHRyc0luZGV4PzogbnVtYmVyIHwgbnVsbCwgbG9jYWxSZWZzSW5kZXg/OiBudW1iZXIpOiBURWxlbWVudE5vZGUge1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0Rmlyc3RDcmVhdGVQYXNzKHRWaWV3KTtcbiAgbmdEZXZNb2RlICYmIG5nRGV2TW9kZS5maXJzdENyZWF0ZVBhc3MrKztcblxuICBjb25zdCB0Vmlld0NvbnN0cyA9IHRWaWV3LmNvbnN0cztcbiAgY29uc3QgYXR0cnMgPSBnZXRDb25zdGFudDxUQXR0cmlidXRlcz4odFZpZXdDb25zdHMsIGF0dHJzSW5kZXgpO1xuICBjb25zdCB0Tm9kZSA9IGdldE9yQ3JlYXRlVE5vZGUodFZpZXcsIGxWaWV3W1RfSE9TVF0sIGluZGV4LCBUTm9kZVR5cGUuRWxlbWVudCwgbmFtZSwgYXR0cnMpO1xuXG4gIGNvbnN0IGhhc0RpcmVjdGl2ZXMgPVxuICAgICAgcmVzb2x2ZURpcmVjdGl2ZXModFZpZXcsIGxWaWV3LCB0Tm9kZSwgZ2V0Q29uc3RhbnQ8c3RyaW5nW10+KHRWaWV3Q29uc3RzLCBsb2NhbFJlZnNJbmRleCkpO1xuICBuZ0Rldk1vZGUgJiYgd2FybkFib3V0VW5rbm93bkVsZW1lbnQodFZpZXcsIGxWaWV3LCBuYXRpdmUsIHROb2RlLCBoYXNEaXJlY3RpdmVzKTtcblxuICBpZiAodE5vZGUubWVyZ2VkQXR0cnMgIT09IG51bGwpIHtcbiAgICBjb21wdXRlU3RhdGljU3R5bGluZyh0Tm9kZSwgdE5vZGUubWVyZ2VkQXR0cnMpO1xuICB9XG5cbiAgaWYgKHRWaWV3LnF1ZXJpZXMgIT09IG51bGwpIHtcbiAgICB0Vmlldy5xdWVyaWVzLmVsZW1lbnRTdGFydCh0VmlldywgdE5vZGUpO1xuICB9XG5cbiAgcmV0dXJuIHROb2RlO1xufVxuXG4vKipcbiAqIENyZWF0ZSBET00gZWxlbWVudC4gVGhlIGluc3RydWN0aW9uIG11c3QgbGF0ZXIgYmUgZm9sbG93ZWQgYnkgYGVsZW1lbnRFbmQoKWAgY2FsbC5cbiAqXG4gKiBAcGFyYW0gaW5kZXggSW5kZXggb2YgdGhlIGVsZW1lbnQgaW4gdGhlIExWaWV3IGFycmF5XG4gKiBAcGFyYW0gbmFtZSBOYW1lIG9mIHRoZSBET00gTm9kZVxuICogQHBhcmFtIGF0dHJzSW5kZXggSW5kZXggb2YgdGhlIGVsZW1lbnQncyBhdHRyaWJ1dGVzIGluIHRoZSBgY29uc3RzYCBhcnJheS5cbiAqIEBwYXJhbSBsb2NhbFJlZnNJbmRleCBJbmRleCBvZiB0aGUgZWxlbWVudCdzIGxvY2FsIHJlZmVyZW5jZXMgaW4gdGhlIGBjb25zdHNgIGFycmF5LlxuICpcbiAqIEF0dHJpYnV0ZXMgYW5kIGxvY2FsUmVmcyBhcmUgcGFzc2VkIGFzIGFuIGFycmF5IG9mIHN0cmluZ3Mgd2hlcmUgZWxlbWVudHMgd2l0aCBhbiBldmVuIGluZGV4XG4gKiBob2xkIGFuIGF0dHJpYnV0ZSBuYW1lIGFuZCBlbGVtZW50cyB3aXRoIGFuIG9kZCBpbmRleCBob2xkIGFuIGF0dHJpYnV0ZSB2YWx1ZSwgZXguOlxuICogWydpZCcsICd3YXJuaW5nNScsICdjbGFzcycsICdhbGVydCddXG4gKlxuICogQGNvZGVHZW5BcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIMm1ybVlbGVtZW50U3RhcnQoXG4gICAgaW5kZXg6IG51bWJlciwgbmFtZTogc3RyaW5nLCBhdHRyc0luZGV4PzogbnVtYmVyIHwgbnVsbCwgbG9jYWxSZWZzSW5kZXg/OiBudW1iZXIpOiB2b2lkIHtcbiAgY29uc3QgbFZpZXcgPSBnZXRMVmlldygpO1xuICBjb25zdCB0VmlldyA9IGdldFRWaWV3KCk7XG4gIGNvbnN0IGFkanVzdGVkSW5kZXggPSBIRUFERVJfT0ZGU0VUICsgaW5kZXg7XG5cbiAgbmdEZXZNb2RlICYmIGFzc2VydEVxdWFsKFxuICAgICAgICAgICAgICAgICAgIGdldEJpbmRpbmdJbmRleCgpLCB0Vmlldy5iaW5kaW5nU3RhcnRJbmRleCxcbiAgICAgICAgICAgICAgICAgICAnZWxlbWVudHMgc2hvdWxkIGJlIGNyZWF0ZWQgYmVmb3JlIGFueSBiaW5kaW5ncycpO1xuICBuZ0Rldk1vZGUgJiYgbmdEZXZNb2RlLnJlbmRlcmVyQ3JlYXRlRWxlbWVudCsrO1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0RGF0YUluUmFuZ2UobFZpZXcsIGFkanVzdGVkSW5kZXgpO1xuXG4gIGNvbnN0IHJlbmRlcmVyID0gbFZpZXdbUkVOREVSRVJdO1xuICBjb25zdCBuYXRpdmUgPSBsVmlld1thZGp1c3RlZEluZGV4XSA9IGVsZW1lbnRDcmVhdGUobmFtZSwgcmVuZGVyZXIsIGdldE5hbWVzcGFjZSgpKTtcblxuICBjb25zdCB0Tm9kZSA9IHRWaWV3LmZpcnN0Q3JlYXRlUGFzcyA/XG4gICAgICBlbGVtZW50U3RhcnRGaXJzdENyZWF0ZVBhc3MoaW5kZXgsIHRWaWV3LCBsVmlldywgbmF0aXZlLCBuYW1lLCBhdHRyc0luZGV4LCBsb2NhbFJlZnNJbmRleCkgOlxuICAgICAgdFZpZXcuZGF0YVthZGp1c3RlZEluZGV4XSBhcyBURWxlbWVudE5vZGU7XG4gIHNldFByZXZpb3VzT3JQYXJlbnRUTm9kZSh0Tm9kZSwgdHJ1ZSk7XG5cbiAgY29uc3QgbWVyZ2VkQXR0cnMgPSB0Tm9kZS5tZXJnZWRBdHRycztcbiAgaWYgKG1lcmdlZEF0dHJzICE9PSBudWxsKSB7XG4gICAgc2V0VXBBdHRyaWJ1dGVzKHJlbmRlcmVyLCBuYXRpdmUsIG1lcmdlZEF0dHJzKTtcbiAgfVxuICBjb25zdCBjbGFzc2VzID0gdE5vZGUuY2xhc3NlcztcbiAgaWYgKGNsYXNzZXMgIT09IG51bGwpIHtcbiAgICB3cml0ZURpcmVjdENsYXNzKHJlbmRlcmVyLCBuYXRpdmUsIGNsYXNzZXMpO1xuICB9XG4gIGNvbnN0IHN0eWxlcyA9IHROb2RlLnN0eWxlcztcbiAgaWYgKHN0eWxlcyAhPT0gbnVsbCkge1xuICAgIHdyaXRlRGlyZWN0U3R5bGUocmVuZGVyZXIsIG5hdGl2ZSwgc3R5bGVzKTtcbiAgfVxuXG4gIGFwcGVuZENoaWxkKHRWaWV3LCBsVmlldywgbmF0aXZlLCB0Tm9kZSk7XG5cbiAgLy8gYW55IGltbWVkaWF0ZSBjaGlsZHJlbiBvZiBhIGNvbXBvbmVudCBvciB0ZW1wbGF0ZSBjb250YWluZXIgbXVzdCBiZSBwcmUtZW1wdGl2ZWx5XG4gIC8vIG1vbmtleS1wYXRjaGVkIHdpdGggdGhlIGNvbXBvbmVudCB2aWV3IGRhdGEgc28gdGhhdCB0aGUgZWxlbWVudCBjYW4gYmUgaW5zcGVjdGVkXG4gIC8vIGxhdGVyIG9uIHVzaW5nIGFueSBlbGVtZW50IGRpc2NvdmVyeSB1dGlsaXR5IG1ldGhvZHMgKHNlZSBgZWxlbWVudF9kaXNjb3ZlcnkudHNgKVxuICBpZiAoZ2V0RWxlbWVudERlcHRoQ291bnQoKSA9PT0gMCkge1xuICAgIGF0dGFjaFBhdGNoRGF0YShuYXRpdmUsIGxWaWV3KTtcbiAgfVxuICBpbmNyZWFzZUVsZW1lbnREZXB0aENvdW50KCk7XG5cblxuICBpZiAoaXNEaXJlY3RpdmVIb3N0KHROb2RlKSkge1xuICAgIGNyZWF0ZURpcmVjdGl2ZXNJbnN0YW5jZXModFZpZXcsIGxWaWV3LCB0Tm9kZSk7XG4gICAgZXhlY3V0ZUNvbnRlbnRRdWVyaWVzKHRWaWV3LCB0Tm9kZSwgbFZpZXcpO1xuICB9XG4gIGlmIChsb2NhbFJlZnNJbmRleCAhPT0gbnVsbCkge1xuICAgIHNhdmVSZXNvbHZlZExvY2Fsc0luRGF0YShsVmlldywgdE5vZGUpO1xuICB9XG59XG5cbi8qKlxuICogTWFyayB0aGUgZW5kIG9mIHRoZSBlbGVtZW50LlxuICpcbiAqIEBjb2RlR2VuQXBpXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiDJtcm1ZWxlbWVudEVuZCgpOiB2b2lkIHtcbiAgbGV0IHByZXZpb3VzT3JQYXJlbnRUTm9kZSA9IGdldFByZXZpb3VzT3JQYXJlbnRUTm9kZSgpO1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0RGVmaW5lZChwcmV2aW91c09yUGFyZW50VE5vZGUsICdObyBwYXJlbnQgbm9kZSB0byBjbG9zZS4nKTtcbiAgaWYgKGdldElzUGFyZW50KCkpIHtcbiAgICBzZXRJc05vdFBhcmVudCgpO1xuICB9IGVsc2Uge1xuICAgIG5nRGV2TW9kZSAmJiBhc3NlcnRIYXNQYXJlbnQoZ2V0UHJldmlvdXNPclBhcmVudFROb2RlKCkpO1xuICAgIHByZXZpb3VzT3JQYXJlbnRUTm9kZSA9IHByZXZpb3VzT3JQYXJlbnRUTm9kZS5wYXJlbnQgITtcbiAgICBzZXRQcmV2aW91c09yUGFyZW50VE5vZGUocHJldmlvdXNPclBhcmVudFROb2RlLCBmYWxzZSk7XG4gIH1cblxuICBjb25zdCB0Tm9kZSA9IHByZXZpb3VzT3JQYXJlbnRUTm9kZTtcbiAgbmdEZXZNb2RlICYmIGFzc2VydE5vZGVUeXBlKHROb2RlLCBUTm9kZVR5cGUuRWxlbWVudCk7XG5cblxuICBkZWNyZWFzZUVsZW1lbnREZXB0aENvdW50KCk7XG5cbiAgY29uc3QgdFZpZXcgPSBnZXRUVmlldygpO1xuICBpZiAodFZpZXcuZmlyc3RDcmVhdGVQYXNzKSB7XG4gICAgcmVnaXN0ZXJQb3N0T3JkZXJIb29rcyh0VmlldywgcHJldmlvdXNPclBhcmVudFROb2RlKTtcbiAgICBpZiAoaXNDb250ZW50UXVlcnlIb3N0KHByZXZpb3VzT3JQYXJlbnRUTm9kZSkpIHtcbiAgICAgIHRWaWV3LnF1ZXJpZXMgIS5lbGVtZW50RW5kKHByZXZpb3VzT3JQYXJlbnRUTm9kZSk7XG4gICAgfVxuICB9XG5cbiAgaWYgKHROb2RlLmNsYXNzZXMgIT09IG51bGwgJiYgaGFzQ2xhc3NJbnB1dCh0Tm9kZSkpIHtcbiAgICBzZXREaXJlY3RpdmVJbnB1dHNXaGljaFNoYWRvd3NTdHlsaW5nKHRWaWV3LCB0Tm9kZSwgZ2V0TFZpZXcoKSwgdE5vZGUuY2xhc3NlcywgdHJ1ZSk7XG4gIH1cblxuICBpZiAodE5vZGUuc3R5bGVzICE9PSBudWxsICYmIGhhc1N0eWxlSW5wdXQodE5vZGUpKSB7XG4gICAgc2V0RGlyZWN0aXZlSW5wdXRzV2hpY2hTaGFkb3dzU3R5bGluZyh0VmlldywgdE5vZGUsIGdldExWaWV3KCksIHROb2RlLnN0eWxlcywgZmFsc2UpO1xuICB9XG59XG5cbi8qKlxuICogQ3JlYXRlcyBhbiBlbXB0eSBlbGVtZW50IHVzaW5nIHtAbGluayBlbGVtZW50U3RhcnR9IGFuZCB7QGxpbmsgZWxlbWVudEVuZH1cbiAqXG4gKiBAcGFyYW0gaW5kZXggSW5kZXggb2YgdGhlIGVsZW1lbnQgaW4gdGhlIGRhdGEgYXJyYXlcbiAqIEBwYXJhbSBuYW1lIE5hbWUgb2YgdGhlIERPTSBOb2RlXG4gKiBAcGFyYW0gYXR0cnNJbmRleCBJbmRleCBvZiB0aGUgZWxlbWVudCdzIGF0dHJpYnV0ZXMgaW4gdGhlIGBjb25zdHNgIGFycmF5LlxuICogQHBhcmFtIGxvY2FsUmVmc0luZGV4IEluZGV4IG9mIHRoZSBlbGVtZW50J3MgbG9jYWwgcmVmZXJlbmNlcyBpbiB0aGUgYGNvbnN0c2AgYXJyYXkuXG4gKlxuICogQGNvZGVHZW5BcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIMm1ybVlbGVtZW50KFxuICAgIGluZGV4OiBudW1iZXIsIG5hbWU6IHN0cmluZywgYXR0cnNJbmRleD86IG51bWJlciB8IG51bGwsIGxvY2FsUmVmc0luZGV4PzogbnVtYmVyKTogdm9pZCB7XG4gIMm1ybVlbGVtZW50U3RhcnQoaW5kZXgsIG5hbWUsIGF0dHJzSW5kZXgsIGxvY2FsUmVmc0luZGV4KTtcbiAgybXJtWVsZW1lbnRFbmQoKTtcbn1cblxuZnVuY3Rpb24gd2FybkFib3V0VW5rbm93bkVsZW1lbnQoXG4gICAgdFZpZXc6IFRWaWV3LCBsVmlldzogTFZpZXcsIGVsZW1lbnQ6IFJFbGVtZW50LCB0Tm9kZTogVE5vZGUsIGhhc0RpcmVjdGl2ZXM6IGJvb2xlYW4pOiB2b2lkIHtcbiAgY29uc3Qgc2NoZW1hcyA9IHRWaWV3LnNjaGVtYXM7XG5cbiAgLy8gSWYgYHNjaGVtYXNgIGlzIHNldCB0byBgbnVsbGAsIHRoYXQncyBhbiBpbmRpY2F0aW9uIHRoYXQgdGhpcyBDb21wb25lbnQgd2FzIGNvbXBpbGVkIGluIEFPVFxuICAvLyBtb2RlIHdoZXJlIHRoaXMgY2hlY2sgaGFwcGVucyBhdCBjb21waWxlIHRpbWUuIEluIEpJVCBtb2RlLCBgc2NoZW1hc2AgaXMgYWx3YXlzIHByZXNlbnQgYW5kXG4gIC8vIGRlZmluZWQgYXMgYW4gYXJyYXkgKGFzIGFuIGVtcHR5IGFycmF5IGluIGNhc2UgYHNjaGVtYXNgIGZpZWxkIGlzIG5vdCBkZWZpbmVkKSBhbmQgd2Ugc2hvdWxkXG4gIC8vIGV4ZWN1dGUgdGhlIGNoZWNrIGJlbG93LlxuICBpZiAoc2NoZW1hcyA9PT0gbnVsbCkgcmV0dXJuO1xuXG4gIGNvbnN0IHRhZ05hbWUgPSB0Tm9kZS50YWdOYW1lO1xuXG4gIC8vIElmIHRoZSBlbGVtZW50IG1hdGNoZXMgYW55IGRpcmVjdGl2ZSwgaXQncyBjb25zaWRlcmVkIGFzIHZhbGlkLlxuICBpZiAoIWhhc0RpcmVjdGl2ZXMgJiYgdGFnTmFtZSAhPT0gbnVsbCkge1xuICAgIC8vIFRoZSBlbGVtZW50IGlzIHVua25vd24gaWYgaXQncyBhbiBpbnN0YW5jZSBvZiBIVE1MVW5rbm93bkVsZW1lbnQgb3IgaXQgaXNuJ3QgcmVnaXN0ZXJlZFxuICAgIC8vIGFzIGEgY3VzdG9tIGVsZW1lbnQuIE5vdGUgdGhhdCB1bmtub3duIGVsZW1lbnRzIHdpdGggYSBkYXNoIGluIHRoZWlyIG5hbWUgd29uJ3QgYmUgaW5zdGFuY2VzXG4gICAgLy8gb2YgSFRNTFVua25vd25FbGVtZW50IGluIGJyb3dzZXJzIHRoYXQgc3VwcG9ydCB3ZWIgY29tcG9uZW50cy5cbiAgICBjb25zdCBpc1Vua25vd24gPVxuICAgICAgICAvLyBOb3RlIHRoYXQgd2UgY2FuJ3QgY2hlY2sgZm9yIGB0eXBlb2YgSFRNTFVua25vd25FbGVtZW50ID09PSAnZnVuY3Rpb24nYCxcbiAgICAgICAgLy8gYmVjYXVzZSB3aGlsZSBtb3N0IGJyb3dzZXJzIHJldHVybiAnZnVuY3Rpb24nLCBJRSByZXR1cm5zICdvYmplY3QnLlxuICAgICAgICAodHlwZW9mIEhUTUxVbmtub3duRWxlbWVudCAhPT0gJ3VuZGVmaW5lZCcgJiYgSFRNTFVua25vd25FbGVtZW50ICYmXG4gICAgICAgICBlbGVtZW50IGluc3RhbmNlb2YgSFRNTFVua25vd25FbGVtZW50KSB8fFxuICAgICAgICAodHlwZW9mIGN1c3RvbUVsZW1lbnRzICE9PSAndW5kZWZpbmVkJyAmJiB0YWdOYW1lLmluZGV4T2YoJy0nKSA+IC0xICYmXG4gICAgICAgICAhY3VzdG9tRWxlbWVudHMuZ2V0KHRhZ05hbWUpKTtcblxuICAgIGlmIChpc1Vua25vd24gJiYgIW1hdGNoaW5nU2NoZW1hcyh0VmlldywgbFZpZXcsIHRhZ05hbWUpKSB7XG4gICAgICBsZXQgd2FybmluZyA9IGAnJHt0YWdOYW1lfScgaXMgbm90IGEga25vd24gZWxlbWVudDpcXG5gO1xuICAgICAgd2FybmluZyArPVxuICAgICAgICAgIGAxLiBJZiAnJHt0YWdOYW1lfScgaXMgYW4gQW5ndWxhciBjb21wb25lbnQsIHRoZW4gdmVyaWZ5IHRoYXQgaXQgaXMgcGFydCBvZiB0aGlzIG1vZHVsZS5cXG5gO1xuICAgICAgaWYgKHRhZ05hbWUgJiYgdGFnTmFtZS5pbmRleE9mKCctJykgPiAtMSkge1xuICAgICAgICB3YXJuaW5nICs9XG4gICAgICAgICAgICBgMi4gSWYgJyR7dGFnTmFtZX0nIGlzIGEgV2ViIENvbXBvbmVudCB0aGVuIGFkZCAnQ1VTVE9NX0VMRU1FTlRTX1NDSEVNQScgdG8gdGhlICdATmdNb2R1bGUuc2NoZW1hcycgb2YgdGhpcyBjb21wb25lbnQgdG8gc3VwcHJlc3MgdGhpcyBtZXNzYWdlLmA7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICB3YXJuaW5nICs9XG4gICAgICAgICAgICBgMi4gVG8gYWxsb3cgYW55IGVsZW1lbnQgYWRkICdOT19FUlJPUlNfU0NIRU1BJyB0byB0aGUgJ0BOZ01vZHVsZS5zY2hlbWFzJyBvZiB0aGlzIGNvbXBvbmVudC5gO1xuICAgICAgfVxuICAgICAgY29uc29sZS53YXJuKHdhcm5pbmcpO1xuICAgIH1cbiAgfVxufVxuIl19