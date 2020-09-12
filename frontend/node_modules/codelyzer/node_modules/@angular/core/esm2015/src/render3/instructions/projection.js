/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/instructions/projection.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { newArray } from '../../util/array_utils';
import { DECLARATION_COMPONENT_VIEW, T_HOST } from '../interfaces/view';
import { applyProjection } from '../node_manipulation';
import { getProjectAsAttrValue, isNodeMatchingSelectorList, isSelectorInSelectorList } from '../node_selector_matcher';
import { getLView, getTView, setIsNotParent } from '../state';
import { getOrCreateTNode } from './shared';
/**
 * Checks a given node against matching projection slots and returns the
 * determined slot index. Returns "null" if no slot matched the given node.
 *
 * This function takes into account the parsed ngProjectAs selector from the
 * node's attributes. If present, it will check whether the ngProjectAs selector
 * matches any of the projection slot selectors.
 * @param {?} tNode
 * @param {?} projectionSlots
 * @return {?}
 */
export function matchingProjectionSlotIndex(tNode, projectionSlots) {
    /** @type {?} */
    let wildcardNgContentIndex = null;
    /** @type {?} */
    const ngProjectAsAttrVal = getProjectAsAttrValue(tNode);
    for (let i = 0; i < projectionSlots.length; i++) {
        /** @type {?} */
        const slotValue = projectionSlots[i];
        // The last wildcard projection slot should match all nodes which aren't matching
        // any selector. This is necessary to be backwards compatible with view engine.
        if (slotValue === '*') {
            wildcardNgContentIndex = i;
            continue;
        }
        // If we ran into an `ngProjectAs` attribute, we should match its parsed selector
        // to the list of selectors, otherwise we fall back to matching against the node.
        if (ngProjectAsAttrVal === null ?
            isNodeMatchingSelectorList(tNode, slotValue, /* isProjectionMode */ true) :
            isSelectorInSelectorList(ngProjectAsAttrVal, slotValue)) {
            return i; // first matching selector "captures" a given node
        }
    }
    return wildcardNgContentIndex;
}
/**
 * Instruction to distribute projectable nodes among <ng-content> occurrences in a given template.
 * It takes all the selectors from the entire component's template and decides where
 * each projected node belongs (it re-distributes nodes among "buckets" where each "bucket" is
 * backed by a selector).
 *
 * This function requires CSS selectors to be provided in 2 forms: parsed (by a compiler) and text,
 * un-parsed form.
 *
 * The parsed form is needed for efficient matching of a node against a given CSS selector.
 * The un-parsed, textual form is needed for support of the ngProjectAs attribute.
 *
 * Having a CSS selector in 2 different formats is not ideal, but alternatives have even more
 * drawbacks:
 * - having only a textual form would require runtime parsing of CSS selectors;
 * - we can't have only a parsed as we can't re-construct textual form from it (as entered by a
 * template author).
 *
 * \@codeGenApi
 * @param {?=} projectionSlots
 * @return {?}
 */
export function ɵɵprojectionDef(projectionSlots) {
    /** @type {?} */
    const componentNode = (/** @type {?} */ (getLView()[DECLARATION_COMPONENT_VIEW][T_HOST]));
    if (!componentNode.projection) {
        // If no explicit projection slots are defined, fall back to a single
        // projection slot with the wildcard selector.
        /** @type {?} */
        const numProjectionSlots = projectionSlots ? projectionSlots.length : 1;
        /** @type {?} */
        const projectionHeads = componentNode.projection =
            newArray(numProjectionSlots, (/** @type {?} */ ((/** @type {?} */ (null)))));
        /** @type {?} */
        const tails = projectionHeads.slice();
        /** @type {?} */
        let componentChild = componentNode.child;
        while (componentChild !== null) {
            /** @type {?} */
            const slotIndex = projectionSlots ? matchingProjectionSlotIndex(componentChild, projectionSlots) : 0;
            if (slotIndex !== null) {
                if (tails[slotIndex]) {
                    (/** @type {?} */ (tails[slotIndex])).projectionNext = componentChild;
                }
                else {
                    projectionHeads[slotIndex] = componentChild;
                }
                tails[slotIndex] = componentChild;
            }
            componentChild = componentChild.next;
        }
    }
}
/** @type {?} */
let delayProjection = false;
/**
 * @param {?} value
 * @return {?}
 */
export function setDelayProjection(value) {
    delayProjection = value;
}
/**
 * Inserts previously re-distributed projected nodes. This instruction must be preceded by a call
 * to the projectionDef instruction.
 *
 * \@codeGenApi
 * @param {?} nodeIndex
 * @param {?=} selectorIndex
 * @param {?=} attrs
 * @return {?}
 */
export function ɵɵprojection(nodeIndex, selectorIndex = 0, attrs) {
    /** @type {?} */
    const lView = getLView();
    /** @type {?} */
    const tView = getTView();
    /** @type {?} */
    const tProjectionNode = getOrCreateTNode(tView, lView[T_HOST], nodeIndex, 1 /* Projection */, null, attrs || null);
    // We can't use viewData[HOST_NODE] because projection nodes can be nested in embedded views.
    if (tProjectionNode.projection === null)
        tProjectionNode.projection = selectorIndex;
    // `<ng-content>` has no content
    setIsNotParent();
    // We might need to delay the projection of nodes if they are in the middle of an i18n block
    if (!delayProjection) {
        // re-distribution of projectable nodes is stored on a component's view level
        applyProjection(tView, lView, tProjectionNode);
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicHJvamVjdGlvbi5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3JlbmRlcjMvaW5zdHJ1Y3Rpb25zL3Byb2plY3Rpb24udHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBT0EsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLHdCQUF3QixDQUFDO0FBR2hELE9BQU8sRUFBQywwQkFBMEIsRUFBRSxNQUFNLEVBQUMsTUFBTSxvQkFBb0IsQ0FBQztBQUN0RSxPQUFPLEVBQUMsZUFBZSxFQUFDLE1BQU0sc0JBQXNCLENBQUM7QUFDckQsT0FBTyxFQUFDLHFCQUFxQixFQUFFLDBCQUEwQixFQUFFLHdCQUF3QixFQUFDLE1BQU0sMEJBQTBCLENBQUM7QUFDckgsT0FBTyxFQUFDLFFBQVEsRUFBRSxRQUFRLEVBQUUsY0FBYyxFQUFDLE1BQU0sVUFBVSxDQUFDO0FBQzVELE9BQU8sRUFBQyxnQkFBZ0IsRUFBQyxNQUFNLFVBQVUsQ0FBQzs7Ozs7Ozs7Ozs7O0FBWTFDLE1BQU0sVUFBVSwyQkFBMkIsQ0FBQyxLQUFZLEVBQUUsZUFBZ0M7O1FBRXBGLHNCQUFzQixHQUFHLElBQUk7O1VBQzNCLGtCQUFrQixHQUFHLHFCQUFxQixDQUFDLEtBQUssQ0FBQztJQUN2RCxLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsZUFBZSxDQUFDLE1BQU0sRUFBRSxDQUFDLEVBQUUsRUFBRTs7Y0FDekMsU0FBUyxHQUFHLGVBQWUsQ0FBQyxDQUFDLENBQUM7UUFDcEMsaUZBQWlGO1FBQ2pGLCtFQUErRTtRQUMvRSxJQUFJLFNBQVMsS0FBSyxHQUFHLEVBQUU7WUFDckIsc0JBQXNCLEdBQUcsQ0FBQyxDQUFDO1lBQzNCLFNBQVM7U0FDVjtRQUNELGlGQUFpRjtRQUNqRixpRkFBaUY7UUFDakYsSUFBSSxrQkFBa0IsS0FBSyxJQUFJLENBQUMsQ0FBQztZQUN6QiwwQkFBMEIsQ0FBQyxLQUFLLEVBQUUsU0FBUyxFQUFFLHNCQUFzQixDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7WUFDM0Usd0JBQXdCLENBQUMsa0JBQWtCLEVBQUUsU0FBUyxDQUFDLEVBQUU7WUFDL0QsT0FBTyxDQUFDLENBQUMsQ0FBRSxrREFBa0Q7U0FDOUQ7S0FDRjtJQUNELE9BQU8sc0JBQXNCLENBQUM7QUFDaEMsQ0FBQzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUEyQkQsTUFBTSxVQUFVLGVBQWUsQ0FBQyxlQUFpQzs7VUFDekQsYUFBYSxHQUFHLG1CQUFBLFFBQVEsRUFBRSxDQUFDLDBCQUEwQixDQUFDLENBQUMsTUFBTSxDQUFDLEVBQWdCO0lBRXBGLElBQUksQ0FBQyxhQUFhLENBQUMsVUFBVSxFQUFFOzs7O2NBR3ZCLGtCQUFrQixHQUFHLGVBQWUsQ0FBQyxDQUFDLENBQUMsZUFBZSxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQzs7Y0FDakUsZUFBZSxHQUFxQixhQUFhLENBQUMsVUFBVTtZQUM5RCxRQUFRLENBQUMsa0JBQWtCLEVBQUUsbUJBQUEsbUJBQUEsSUFBSSxFQUFFLEVBQVEsQ0FBQzs7Y0FDMUMsS0FBSyxHQUFxQixlQUFlLENBQUMsS0FBSyxFQUFFOztZQUVuRCxjQUFjLEdBQWUsYUFBYSxDQUFDLEtBQUs7UUFFcEQsT0FBTyxjQUFjLEtBQUssSUFBSSxFQUFFOztrQkFDeEIsU0FBUyxHQUNYLGVBQWUsQ0FBQyxDQUFDLENBQUMsMkJBQTJCLENBQUMsY0FBYyxFQUFFLGVBQWUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1lBRXRGLElBQUksU0FBUyxLQUFLLElBQUksRUFBRTtnQkFDdEIsSUFBSSxLQUFLLENBQUMsU0FBUyxDQUFDLEVBQUU7b0JBQ3BCLG1CQUFBLEtBQUssQ0FBQyxTQUFTLENBQUMsRUFBRSxDQUFDLGNBQWMsR0FBRyxjQUFjLENBQUM7aUJBQ3BEO3FCQUFNO29CQUNMLGVBQWUsQ0FBQyxTQUFTLENBQUMsR0FBRyxjQUFjLENBQUM7aUJBQzdDO2dCQUNELEtBQUssQ0FBQyxTQUFTLENBQUMsR0FBRyxjQUFjLENBQUM7YUFDbkM7WUFFRCxjQUFjLEdBQUcsY0FBYyxDQUFDLElBQUksQ0FBQztTQUN0QztLQUNGO0FBQ0gsQ0FBQzs7SUFFRyxlQUFlLEdBQUcsS0FBSzs7Ozs7QUFDM0IsTUFBTSxVQUFVLGtCQUFrQixDQUFDLEtBQWM7SUFDL0MsZUFBZSxHQUFHLEtBQUssQ0FBQztBQUMxQixDQUFDOzs7Ozs7Ozs7OztBQWNELE1BQU0sVUFBVSxZQUFZLENBQ3hCLFNBQWlCLEVBQUUsZ0JBQXdCLENBQUMsRUFBRSxLQUFtQjs7VUFDN0QsS0FBSyxHQUFHLFFBQVEsRUFBRTs7VUFDbEIsS0FBSyxHQUFHLFFBQVEsRUFBRTs7VUFDbEIsZUFBZSxHQUNqQixnQkFBZ0IsQ0FBQyxLQUFLLEVBQUUsS0FBSyxDQUFDLE1BQU0sQ0FBQyxFQUFFLFNBQVMsc0JBQXdCLElBQUksRUFBRSxLQUFLLElBQUksSUFBSSxDQUFDO0lBRWhHLDZGQUE2RjtJQUM3RixJQUFJLGVBQWUsQ0FBQyxVQUFVLEtBQUssSUFBSTtRQUFFLGVBQWUsQ0FBQyxVQUFVLEdBQUcsYUFBYSxDQUFDO0lBRXBGLGdDQUFnQztJQUNoQyxjQUFjLEVBQUUsQ0FBQztJQUVqQiw0RkFBNEY7SUFDNUYsSUFBSSxDQUFDLGVBQWUsRUFBRTtRQUNwQiw2RUFBNkU7UUFDN0UsZUFBZSxDQUFDLEtBQUssRUFBRSxLQUFLLEVBQUUsZUFBZSxDQUFDLENBQUM7S0FDaEQ7QUFDSCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IHtuZXdBcnJheX0gZnJvbSAnLi4vLi4vdXRpbC9hcnJheV91dGlscyc7XG5pbXBvcnQge1RBdHRyaWJ1dGVzLCBURWxlbWVudE5vZGUsIFROb2RlLCBUTm9kZVR5cGV9IGZyb20gJy4uL2ludGVyZmFjZXMvbm9kZSc7XG5pbXBvcnQge1Byb2plY3Rpb25TbG90c30gZnJvbSAnLi4vaW50ZXJmYWNlcy9wcm9qZWN0aW9uJztcbmltcG9ydCB7REVDTEFSQVRJT05fQ09NUE9ORU5UX1ZJRVcsIFRfSE9TVH0gZnJvbSAnLi4vaW50ZXJmYWNlcy92aWV3JztcbmltcG9ydCB7YXBwbHlQcm9qZWN0aW9ufSBmcm9tICcuLi9ub2RlX21hbmlwdWxhdGlvbic7XG5pbXBvcnQge2dldFByb2plY3RBc0F0dHJWYWx1ZSwgaXNOb2RlTWF0Y2hpbmdTZWxlY3Rvckxpc3QsIGlzU2VsZWN0b3JJblNlbGVjdG9yTGlzdH0gZnJvbSAnLi4vbm9kZV9zZWxlY3Rvcl9tYXRjaGVyJztcbmltcG9ydCB7Z2V0TFZpZXcsIGdldFRWaWV3LCBzZXRJc05vdFBhcmVudH0gZnJvbSAnLi4vc3RhdGUnO1xuaW1wb3J0IHtnZXRPckNyZWF0ZVROb2RlfSBmcm9tICcuL3NoYXJlZCc7XG5cblxuXG4vKipcbiAqIENoZWNrcyBhIGdpdmVuIG5vZGUgYWdhaW5zdCBtYXRjaGluZyBwcm9qZWN0aW9uIHNsb3RzIGFuZCByZXR1cm5zIHRoZVxuICogZGV0ZXJtaW5lZCBzbG90IGluZGV4LiBSZXR1cm5zIFwibnVsbFwiIGlmIG5vIHNsb3QgbWF0Y2hlZCB0aGUgZ2l2ZW4gbm9kZS5cbiAqXG4gKiBUaGlzIGZ1bmN0aW9uIHRha2VzIGludG8gYWNjb3VudCB0aGUgcGFyc2VkIG5nUHJvamVjdEFzIHNlbGVjdG9yIGZyb20gdGhlXG4gKiBub2RlJ3MgYXR0cmlidXRlcy4gSWYgcHJlc2VudCwgaXQgd2lsbCBjaGVjayB3aGV0aGVyIHRoZSBuZ1Byb2plY3RBcyBzZWxlY3RvclxuICogbWF0Y2hlcyBhbnkgb2YgdGhlIHByb2plY3Rpb24gc2xvdCBzZWxlY3RvcnMuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBtYXRjaGluZ1Byb2plY3Rpb25TbG90SW5kZXgodE5vZGU6IFROb2RlLCBwcm9qZWN0aW9uU2xvdHM6IFByb2plY3Rpb25TbG90cyk6IG51bWJlcnxcbiAgICBudWxsIHtcbiAgbGV0IHdpbGRjYXJkTmdDb250ZW50SW5kZXggPSBudWxsO1xuICBjb25zdCBuZ1Byb2plY3RBc0F0dHJWYWwgPSBnZXRQcm9qZWN0QXNBdHRyVmFsdWUodE5vZGUpO1xuICBmb3IgKGxldCBpID0gMDsgaSA8IHByb2plY3Rpb25TbG90cy5sZW5ndGg7IGkrKykge1xuICAgIGNvbnN0IHNsb3RWYWx1ZSA9IHByb2plY3Rpb25TbG90c1tpXTtcbiAgICAvLyBUaGUgbGFzdCB3aWxkY2FyZCBwcm9qZWN0aW9uIHNsb3Qgc2hvdWxkIG1hdGNoIGFsbCBub2RlcyB3aGljaCBhcmVuJ3QgbWF0Y2hpbmdcbiAgICAvLyBhbnkgc2VsZWN0b3IuIFRoaXMgaXMgbmVjZXNzYXJ5IHRvIGJlIGJhY2t3YXJkcyBjb21wYXRpYmxlIHdpdGggdmlldyBlbmdpbmUuXG4gICAgaWYgKHNsb3RWYWx1ZSA9PT0gJyonKSB7XG4gICAgICB3aWxkY2FyZE5nQ29udGVudEluZGV4ID0gaTtcbiAgICAgIGNvbnRpbnVlO1xuICAgIH1cbiAgICAvLyBJZiB3ZSByYW4gaW50byBhbiBgbmdQcm9qZWN0QXNgIGF0dHJpYnV0ZSwgd2Ugc2hvdWxkIG1hdGNoIGl0cyBwYXJzZWQgc2VsZWN0b3JcbiAgICAvLyB0byB0aGUgbGlzdCBvZiBzZWxlY3RvcnMsIG90aGVyd2lzZSB3ZSBmYWxsIGJhY2sgdG8gbWF0Y2hpbmcgYWdhaW5zdCB0aGUgbm9kZS5cbiAgICBpZiAobmdQcm9qZWN0QXNBdHRyVmFsID09PSBudWxsID9cbiAgICAgICAgICAgIGlzTm9kZU1hdGNoaW5nU2VsZWN0b3JMaXN0KHROb2RlLCBzbG90VmFsdWUsIC8qIGlzUHJvamVjdGlvbk1vZGUgKi8gdHJ1ZSkgOlxuICAgICAgICAgICAgaXNTZWxlY3RvckluU2VsZWN0b3JMaXN0KG5nUHJvamVjdEFzQXR0clZhbCwgc2xvdFZhbHVlKSkge1xuICAgICAgcmV0dXJuIGk7ICAvLyBmaXJzdCBtYXRjaGluZyBzZWxlY3RvciBcImNhcHR1cmVzXCIgYSBnaXZlbiBub2RlXG4gICAgfVxuICB9XG4gIHJldHVybiB3aWxkY2FyZE5nQ29udGVudEluZGV4O1xufVxuXG4vKipcbiAqIEluc3RydWN0aW9uIHRvIGRpc3RyaWJ1dGUgcHJvamVjdGFibGUgbm9kZXMgYW1vbmcgPG5nLWNvbnRlbnQ+IG9jY3VycmVuY2VzIGluIGEgZ2l2ZW4gdGVtcGxhdGUuXG4gKiBJdCB0YWtlcyBhbGwgdGhlIHNlbGVjdG9ycyBmcm9tIHRoZSBlbnRpcmUgY29tcG9uZW50J3MgdGVtcGxhdGUgYW5kIGRlY2lkZXMgd2hlcmVcbiAqIGVhY2ggcHJvamVjdGVkIG5vZGUgYmVsb25ncyAoaXQgcmUtZGlzdHJpYnV0ZXMgbm9kZXMgYW1vbmcgXCJidWNrZXRzXCIgd2hlcmUgZWFjaCBcImJ1Y2tldFwiIGlzXG4gKiBiYWNrZWQgYnkgYSBzZWxlY3RvcikuXG4gKlxuICogVGhpcyBmdW5jdGlvbiByZXF1aXJlcyBDU1Mgc2VsZWN0b3JzIHRvIGJlIHByb3ZpZGVkIGluIDIgZm9ybXM6IHBhcnNlZCAoYnkgYSBjb21waWxlcikgYW5kIHRleHQsXG4gKiB1bi1wYXJzZWQgZm9ybS5cbiAqXG4gKiBUaGUgcGFyc2VkIGZvcm0gaXMgbmVlZGVkIGZvciBlZmZpY2llbnQgbWF0Y2hpbmcgb2YgYSBub2RlIGFnYWluc3QgYSBnaXZlbiBDU1Mgc2VsZWN0b3IuXG4gKiBUaGUgdW4tcGFyc2VkLCB0ZXh0dWFsIGZvcm0gaXMgbmVlZGVkIGZvciBzdXBwb3J0IG9mIHRoZSBuZ1Byb2plY3RBcyBhdHRyaWJ1dGUuXG4gKlxuICogSGF2aW5nIGEgQ1NTIHNlbGVjdG9yIGluIDIgZGlmZmVyZW50IGZvcm1hdHMgaXMgbm90IGlkZWFsLCBidXQgYWx0ZXJuYXRpdmVzIGhhdmUgZXZlbiBtb3JlXG4gKiBkcmF3YmFja3M6XG4gKiAtIGhhdmluZyBvbmx5IGEgdGV4dHVhbCBmb3JtIHdvdWxkIHJlcXVpcmUgcnVudGltZSBwYXJzaW5nIG9mIENTUyBzZWxlY3RvcnM7XG4gKiAtIHdlIGNhbid0IGhhdmUgb25seSBhIHBhcnNlZCBhcyB3ZSBjYW4ndCByZS1jb25zdHJ1Y3QgdGV4dHVhbCBmb3JtIGZyb20gaXQgKGFzIGVudGVyZWQgYnkgYVxuICogdGVtcGxhdGUgYXV0aG9yKS5cbiAqXG4gKiBAcGFyYW0gcHJvamVjdGlvblNsb3RzPyBBIGNvbGxlY3Rpb24gb2YgcHJvamVjdGlvbiBzbG90cy4gQSBwcm9qZWN0aW9uIHNsb3QgY2FuIGJlIGJhc2VkXG4gKiAgICAgICAgb24gYSBwYXJzZWQgQ1NTIHNlbGVjdG9ycyBvciBzZXQgdG8gdGhlIHdpbGRjYXJkIHNlbGVjdG9yIChcIipcIikgaW4gb3JkZXIgdG8gbWF0Y2hcbiAqICAgICAgICBhbGwgbm9kZXMgd2hpY2ggZG8gbm90IG1hdGNoIGFueSBzZWxlY3Rvci4gSWYgbm90IHNwZWNpZmllZCwgYSBzaW5nbGUgd2lsZGNhcmRcbiAqICAgICAgICBzZWxlY3RvciBwcm9qZWN0aW9uIHNsb3Qgd2lsbCBiZSBkZWZpbmVkLlxuICpcbiAqIEBjb2RlR2VuQXBpXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiDJtcm1cHJvamVjdGlvbkRlZihwcm9qZWN0aW9uU2xvdHM/OiBQcm9qZWN0aW9uU2xvdHMpOiB2b2lkIHtcbiAgY29uc3QgY29tcG9uZW50Tm9kZSA9IGdldExWaWV3KClbREVDTEFSQVRJT05fQ09NUE9ORU5UX1ZJRVddW1RfSE9TVF0gYXMgVEVsZW1lbnROb2RlO1xuXG4gIGlmICghY29tcG9uZW50Tm9kZS5wcm9qZWN0aW9uKSB7XG4gICAgLy8gSWYgbm8gZXhwbGljaXQgcHJvamVjdGlvbiBzbG90cyBhcmUgZGVmaW5lZCwgZmFsbCBiYWNrIHRvIGEgc2luZ2xlXG4gICAgLy8gcHJvamVjdGlvbiBzbG90IHdpdGggdGhlIHdpbGRjYXJkIHNlbGVjdG9yLlxuICAgIGNvbnN0IG51bVByb2plY3Rpb25TbG90cyA9IHByb2plY3Rpb25TbG90cyA/IHByb2plY3Rpb25TbG90cy5sZW5ndGggOiAxO1xuICAgIGNvbnN0IHByb2plY3Rpb25IZWFkczogKFROb2RlIHwgbnVsbClbXSA9IGNvbXBvbmVudE5vZGUucHJvamVjdGlvbiA9XG4gICAgICAgIG5ld0FycmF5KG51bVByb2plY3Rpb25TbG90cywgbnVsbCAhYXMgVE5vZGUpO1xuICAgIGNvbnN0IHRhaWxzOiAoVE5vZGUgfCBudWxsKVtdID0gcHJvamVjdGlvbkhlYWRzLnNsaWNlKCk7XG5cbiAgICBsZXQgY29tcG9uZW50Q2hpbGQ6IFROb2RlfG51bGwgPSBjb21wb25lbnROb2RlLmNoaWxkO1xuXG4gICAgd2hpbGUgKGNvbXBvbmVudENoaWxkICE9PSBudWxsKSB7XG4gICAgICBjb25zdCBzbG90SW5kZXggPVxuICAgICAgICAgIHByb2plY3Rpb25TbG90cyA/IG1hdGNoaW5nUHJvamVjdGlvblNsb3RJbmRleChjb21wb25lbnRDaGlsZCwgcHJvamVjdGlvblNsb3RzKSA6IDA7XG5cbiAgICAgIGlmIChzbG90SW5kZXggIT09IG51bGwpIHtcbiAgICAgICAgaWYgKHRhaWxzW3Nsb3RJbmRleF0pIHtcbiAgICAgICAgICB0YWlsc1tzbG90SW5kZXhdICEucHJvamVjdGlvbk5leHQgPSBjb21wb25lbnRDaGlsZDtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICBwcm9qZWN0aW9uSGVhZHNbc2xvdEluZGV4XSA9IGNvbXBvbmVudENoaWxkO1xuICAgICAgICB9XG4gICAgICAgIHRhaWxzW3Nsb3RJbmRleF0gPSBjb21wb25lbnRDaGlsZDtcbiAgICAgIH1cblxuICAgICAgY29tcG9uZW50Q2hpbGQgPSBjb21wb25lbnRDaGlsZC5uZXh0O1xuICAgIH1cbiAgfVxufVxuXG5sZXQgZGVsYXlQcm9qZWN0aW9uID0gZmFsc2U7XG5leHBvcnQgZnVuY3Rpb24gc2V0RGVsYXlQcm9qZWN0aW9uKHZhbHVlOiBib29sZWFuKSB7XG4gIGRlbGF5UHJvamVjdGlvbiA9IHZhbHVlO1xufVxuXG5cbi8qKlxuICogSW5zZXJ0cyBwcmV2aW91c2x5IHJlLWRpc3RyaWJ1dGVkIHByb2plY3RlZCBub2Rlcy4gVGhpcyBpbnN0cnVjdGlvbiBtdXN0IGJlIHByZWNlZGVkIGJ5IGEgY2FsbFxuICogdG8gdGhlIHByb2plY3Rpb25EZWYgaW5zdHJ1Y3Rpb24uXG4gKlxuICogQHBhcmFtIG5vZGVJbmRleFxuICogQHBhcmFtIHNlbGVjdG9ySW5kZXg6XG4gKiAgICAgICAgLSAwIHdoZW4gdGhlIHNlbGVjdG9yIGlzIGAqYCAob3IgdW5zcGVjaWZpZWQgYXMgdGhpcyBpcyB0aGUgZGVmYXVsdCB2YWx1ZSksXG4gKiAgICAgICAgLSAxIGJhc2VkIGluZGV4IG9mIHRoZSBzZWxlY3RvciBmcm9tIHRoZSB7QGxpbmsgcHJvamVjdGlvbkRlZn1cbiAqXG4gKiBAY29kZUdlbkFwaVxuKi9cbmV4cG9ydCBmdW5jdGlvbiDJtcm1cHJvamVjdGlvbihcbiAgICBub2RlSW5kZXg6IG51bWJlciwgc2VsZWN0b3JJbmRleDogbnVtYmVyID0gMCwgYXR0cnM/OiBUQXR0cmlidXRlcyk6IHZvaWQge1xuICBjb25zdCBsVmlldyA9IGdldExWaWV3KCk7XG4gIGNvbnN0IHRWaWV3ID0gZ2V0VFZpZXcoKTtcbiAgY29uc3QgdFByb2plY3Rpb25Ob2RlID1cbiAgICAgIGdldE9yQ3JlYXRlVE5vZGUodFZpZXcsIGxWaWV3W1RfSE9TVF0sIG5vZGVJbmRleCwgVE5vZGVUeXBlLlByb2plY3Rpb24sIG51bGwsIGF0dHJzIHx8IG51bGwpO1xuXG4gIC8vIFdlIGNhbid0IHVzZSB2aWV3RGF0YVtIT1NUX05PREVdIGJlY2F1c2UgcHJvamVjdGlvbiBub2RlcyBjYW4gYmUgbmVzdGVkIGluIGVtYmVkZGVkIHZpZXdzLlxuICBpZiAodFByb2plY3Rpb25Ob2RlLnByb2plY3Rpb24gPT09IG51bGwpIHRQcm9qZWN0aW9uTm9kZS5wcm9qZWN0aW9uID0gc2VsZWN0b3JJbmRleDtcblxuICAvLyBgPG5nLWNvbnRlbnQ+YCBoYXMgbm8gY29udGVudFxuICBzZXRJc05vdFBhcmVudCgpO1xuXG4gIC8vIFdlIG1pZ2h0IG5lZWQgdG8gZGVsYXkgdGhlIHByb2plY3Rpb24gb2Ygbm9kZXMgaWYgdGhleSBhcmUgaW4gdGhlIG1pZGRsZSBvZiBhbiBpMThuIGJsb2NrXG4gIGlmICghZGVsYXlQcm9qZWN0aW9uKSB7XG4gICAgLy8gcmUtZGlzdHJpYnV0aW9uIG9mIHByb2plY3RhYmxlIG5vZGVzIGlzIHN0b3JlZCBvbiBhIGNvbXBvbmVudCdzIHZpZXcgbGV2ZWxcbiAgICBhcHBseVByb2plY3Rpb24odFZpZXcsIGxWaWV3LCB0UHJvamVjdGlvbk5vZGUpO1xuICB9XG59XG4iXX0=