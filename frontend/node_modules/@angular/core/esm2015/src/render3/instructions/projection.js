/**
 * @license
 * Copyright Google LLC All Rights Reserved.
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
 */
export function matchingProjectionSlotIndex(tNode, projectionSlots) {
    let wildcardNgContentIndex = null;
    const ngProjectAsAttrVal = getProjectAsAttrValue(tNode);
    for (let i = 0; i < projectionSlots.length; i++) {
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
 * @param projectionSlots? A collection of projection slots. A projection slot can be based
 *        on a parsed CSS selectors or set to the wildcard selector ("*") in order to match
 *        all nodes which do not match any selector. If not specified, a single wildcard
 *        selector projection slot will be defined.
 *
 * @codeGenApi
 */
export function ɵɵprojectionDef(projectionSlots) {
    const componentNode = getLView()[DECLARATION_COMPONENT_VIEW][T_HOST];
    if (!componentNode.projection) {
        // If no explicit projection slots are defined, fall back to a single
        // projection slot with the wildcard selector.
        const numProjectionSlots = projectionSlots ? projectionSlots.length : 1;
        const projectionHeads = componentNode.projection =
            newArray(numProjectionSlots, null);
        const tails = projectionHeads.slice();
        let componentChild = componentNode.child;
        while (componentChild !== null) {
            const slotIndex = projectionSlots ? matchingProjectionSlotIndex(componentChild, projectionSlots) : 0;
            if (slotIndex !== null) {
                if (tails[slotIndex]) {
                    tails[slotIndex].projectionNext = componentChild;
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
let delayProjection = false;
export function setDelayProjection(value) {
    delayProjection = value;
}
/**
 * Inserts previously re-distributed projected nodes. This instruction must be preceded by a call
 * to the projectionDef instruction.
 *
 * @param nodeIndex
 * @param selectorIndex:
 *        - 0 when the selector is `*` (or unspecified as this is the default value),
 *        - 1 based index of the selector from the {@link projectionDef}
 *
 * @codeGenApi
 */
export function ɵɵprojection(nodeIndex, selectorIndex = 0, attrs) {
    const lView = getLView();
    const tView = getTView();
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicHJvamVjdGlvbi5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3JlbmRlcjMvaW5zdHJ1Y3Rpb25zL3Byb2plY3Rpb24udHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBQ0gsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLHdCQUF3QixDQUFDO0FBR2hELE9BQU8sRUFBQywwQkFBMEIsRUFBRSxNQUFNLEVBQUMsTUFBTSxvQkFBb0IsQ0FBQztBQUN0RSxPQUFPLEVBQUMsZUFBZSxFQUFDLE1BQU0sc0JBQXNCLENBQUM7QUFDckQsT0FBTyxFQUFDLHFCQUFxQixFQUFFLDBCQUEwQixFQUFFLHdCQUF3QixFQUFDLE1BQU0sMEJBQTBCLENBQUM7QUFDckgsT0FBTyxFQUFDLFFBQVEsRUFBRSxRQUFRLEVBQUUsY0FBYyxFQUFDLE1BQU0sVUFBVSxDQUFDO0FBQzVELE9BQU8sRUFBQyxnQkFBZ0IsRUFBQyxNQUFNLFVBQVUsQ0FBQztBQUkxQzs7Ozs7OztHQU9HO0FBQ0gsTUFBTSxVQUFVLDJCQUEyQixDQUFDLEtBQVksRUFBRSxlQUFnQztJQUV4RixJQUFJLHNCQUFzQixHQUFHLElBQUksQ0FBQztJQUNsQyxNQUFNLGtCQUFrQixHQUFHLHFCQUFxQixDQUFDLEtBQUssQ0FBQyxDQUFDO0lBQ3hELEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxlQUFlLENBQUMsTUFBTSxFQUFFLENBQUMsRUFBRSxFQUFFO1FBQy9DLE1BQU0sU0FBUyxHQUFHLGVBQWUsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNyQyxpRkFBaUY7UUFDakYsK0VBQStFO1FBQy9FLElBQUksU0FBUyxLQUFLLEdBQUcsRUFBRTtZQUNyQixzQkFBc0IsR0FBRyxDQUFDLENBQUM7WUFDM0IsU0FBUztTQUNWO1FBQ0QsaUZBQWlGO1FBQ2pGLGlGQUFpRjtRQUNqRixJQUFJLGtCQUFrQixLQUFLLElBQUksQ0FBQyxDQUFDO1lBQ3pCLDBCQUEwQixDQUFDLEtBQUssRUFBRSxTQUFTLEVBQUUsc0JBQXNCLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQztZQUMzRSx3QkFBd0IsQ0FBQyxrQkFBa0IsRUFBRSxTQUFTLENBQUMsRUFBRTtZQUMvRCxPQUFPLENBQUMsQ0FBQyxDQUFFLGtEQUFrRDtTQUM5RDtLQUNGO0lBQ0QsT0FBTyxzQkFBc0IsQ0FBQztBQUNoQyxDQUFDO0FBRUQ7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztHQXdCRztBQUNILE1BQU0sVUFBVSxlQUFlLENBQUMsZUFBaUM7SUFDL0QsTUFBTSxhQUFhLEdBQUcsUUFBUSxFQUFFLENBQUMsMEJBQTBCLENBQUMsQ0FBQyxNQUFNLENBQWlCLENBQUM7SUFFckYsSUFBSSxDQUFDLGFBQWEsQ0FBQyxVQUFVLEVBQUU7UUFDN0IscUVBQXFFO1FBQ3JFLDhDQUE4QztRQUM5QyxNQUFNLGtCQUFrQixHQUFHLGVBQWUsQ0FBQyxDQUFDLENBQUMsZUFBZSxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQ3hFLE1BQU0sZUFBZSxHQUFtQixhQUFhLENBQUMsVUFBVTtZQUM1RCxRQUFRLENBQUMsa0JBQWtCLEVBQUUsSUFBYyxDQUFDLENBQUM7UUFDakQsTUFBTSxLQUFLLEdBQW1CLGVBQWUsQ0FBQyxLQUFLLEVBQUUsQ0FBQztRQUV0RCxJQUFJLGNBQWMsR0FBZSxhQUFhLENBQUMsS0FBSyxDQUFDO1FBRXJELE9BQU8sY0FBYyxLQUFLLElBQUksRUFBRTtZQUM5QixNQUFNLFNBQVMsR0FDWCxlQUFlLENBQUMsQ0FBQyxDQUFDLDJCQUEyQixDQUFDLGNBQWMsRUFBRSxlQUFlLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1lBRXZGLElBQUksU0FBUyxLQUFLLElBQUksRUFBRTtnQkFDdEIsSUFBSSxLQUFLLENBQUMsU0FBUyxDQUFDLEVBQUU7b0JBQ3BCLEtBQUssQ0FBQyxTQUFTLENBQUUsQ0FBQyxjQUFjLEdBQUcsY0FBYyxDQUFDO2lCQUNuRDtxQkFBTTtvQkFDTCxlQUFlLENBQUMsU0FBUyxDQUFDLEdBQUcsY0FBYyxDQUFDO2lCQUM3QztnQkFDRCxLQUFLLENBQUMsU0FBUyxDQUFDLEdBQUcsY0FBYyxDQUFDO2FBQ25DO1lBRUQsY0FBYyxHQUFHLGNBQWMsQ0FBQyxJQUFJLENBQUM7U0FDdEM7S0FDRjtBQUNILENBQUM7QUFFRCxJQUFJLGVBQWUsR0FBRyxLQUFLLENBQUM7QUFDNUIsTUFBTSxVQUFVLGtCQUFrQixDQUFDLEtBQWM7SUFDL0MsZUFBZSxHQUFHLEtBQUssQ0FBQztBQUMxQixDQUFDO0FBR0Q7Ozs7Ozs7Ozs7R0FVRztBQUNILE1BQU0sVUFBVSxZQUFZLENBQ3hCLFNBQWlCLEVBQUUsZ0JBQXdCLENBQUMsRUFBRSxLQUFtQjtJQUNuRSxNQUFNLEtBQUssR0FBRyxRQUFRLEVBQUUsQ0FBQztJQUN6QixNQUFNLEtBQUssR0FBRyxRQUFRLEVBQUUsQ0FBQztJQUN6QixNQUFNLGVBQWUsR0FDakIsZ0JBQWdCLENBQUMsS0FBSyxFQUFFLEtBQUssQ0FBQyxNQUFNLENBQUMsRUFBRSxTQUFTLHNCQUF3QixJQUFJLEVBQUUsS0FBSyxJQUFJLElBQUksQ0FBQyxDQUFDO0lBRWpHLDZGQUE2RjtJQUM3RixJQUFJLGVBQWUsQ0FBQyxVQUFVLEtBQUssSUFBSTtRQUFFLGVBQWUsQ0FBQyxVQUFVLEdBQUcsYUFBYSxDQUFDO0lBRXBGLGdDQUFnQztJQUNoQyxjQUFjLEVBQUUsQ0FBQztJQUVqQiw0RkFBNEY7SUFDNUYsSUFBSSxDQUFDLGVBQWUsRUFBRTtRQUNwQiw2RUFBNkU7UUFDN0UsZUFBZSxDQUFDLEtBQUssRUFBRSxLQUFLLEVBQUUsZUFBZSxDQUFDLENBQUM7S0FDaEQ7QUFDSCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQge25ld0FycmF5fSBmcm9tICcuLi8uLi91dGlsL2FycmF5X3V0aWxzJztcbmltcG9ydCB7VEF0dHJpYnV0ZXMsIFRFbGVtZW50Tm9kZSwgVE5vZGUsIFROb2RlVHlwZX0gZnJvbSAnLi4vaW50ZXJmYWNlcy9ub2RlJztcbmltcG9ydCB7UHJvamVjdGlvblNsb3RzfSBmcm9tICcuLi9pbnRlcmZhY2VzL3Byb2plY3Rpb24nO1xuaW1wb3J0IHtERUNMQVJBVElPTl9DT01QT05FTlRfVklFVywgVF9IT1NUfSBmcm9tICcuLi9pbnRlcmZhY2VzL3ZpZXcnO1xuaW1wb3J0IHthcHBseVByb2plY3Rpb259IGZyb20gJy4uL25vZGVfbWFuaXB1bGF0aW9uJztcbmltcG9ydCB7Z2V0UHJvamVjdEFzQXR0clZhbHVlLCBpc05vZGVNYXRjaGluZ1NlbGVjdG9yTGlzdCwgaXNTZWxlY3RvckluU2VsZWN0b3JMaXN0fSBmcm9tICcuLi9ub2RlX3NlbGVjdG9yX21hdGNoZXInO1xuaW1wb3J0IHtnZXRMVmlldywgZ2V0VFZpZXcsIHNldElzTm90UGFyZW50fSBmcm9tICcuLi9zdGF0ZSc7XG5pbXBvcnQge2dldE9yQ3JlYXRlVE5vZGV9IGZyb20gJy4vc2hhcmVkJztcblxuXG5cbi8qKlxuICogQ2hlY2tzIGEgZ2l2ZW4gbm9kZSBhZ2FpbnN0IG1hdGNoaW5nIHByb2plY3Rpb24gc2xvdHMgYW5kIHJldHVybnMgdGhlXG4gKiBkZXRlcm1pbmVkIHNsb3QgaW5kZXguIFJldHVybnMgXCJudWxsXCIgaWYgbm8gc2xvdCBtYXRjaGVkIHRoZSBnaXZlbiBub2RlLlxuICpcbiAqIFRoaXMgZnVuY3Rpb24gdGFrZXMgaW50byBhY2NvdW50IHRoZSBwYXJzZWQgbmdQcm9qZWN0QXMgc2VsZWN0b3IgZnJvbSB0aGVcbiAqIG5vZGUncyBhdHRyaWJ1dGVzLiBJZiBwcmVzZW50LCBpdCB3aWxsIGNoZWNrIHdoZXRoZXIgdGhlIG5nUHJvamVjdEFzIHNlbGVjdG9yXG4gKiBtYXRjaGVzIGFueSBvZiB0aGUgcHJvamVjdGlvbiBzbG90IHNlbGVjdG9ycy5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIG1hdGNoaW5nUHJvamVjdGlvblNsb3RJbmRleCh0Tm9kZTogVE5vZGUsIHByb2plY3Rpb25TbG90czogUHJvamVjdGlvblNsb3RzKTogbnVtYmVyfFxuICAgIG51bGwge1xuICBsZXQgd2lsZGNhcmROZ0NvbnRlbnRJbmRleCA9IG51bGw7XG4gIGNvbnN0IG5nUHJvamVjdEFzQXR0clZhbCA9IGdldFByb2plY3RBc0F0dHJWYWx1ZSh0Tm9kZSk7XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgcHJvamVjdGlvblNsb3RzLmxlbmd0aDsgaSsrKSB7XG4gICAgY29uc3Qgc2xvdFZhbHVlID0gcHJvamVjdGlvblNsb3RzW2ldO1xuICAgIC8vIFRoZSBsYXN0IHdpbGRjYXJkIHByb2plY3Rpb24gc2xvdCBzaG91bGQgbWF0Y2ggYWxsIG5vZGVzIHdoaWNoIGFyZW4ndCBtYXRjaGluZ1xuICAgIC8vIGFueSBzZWxlY3Rvci4gVGhpcyBpcyBuZWNlc3NhcnkgdG8gYmUgYmFja3dhcmRzIGNvbXBhdGlibGUgd2l0aCB2aWV3IGVuZ2luZS5cbiAgICBpZiAoc2xvdFZhbHVlID09PSAnKicpIHtcbiAgICAgIHdpbGRjYXJkTmdDb250ZW50SW5kZXggPSBpO1xuICAgICAgY29udGludWU7XG4gICAgfVxuICAgIC8vIElmIHdlIHJhbiBpbnRvIGFuIGBuZ1Byb2plY3RBc2AgYXR0cmlidXRlLCB3ZSBzaG91bGQgbWF0Y2ggaXRzIHBhcnNlZCBzZWxlY3RvclxuICAgIC8vIHRvIHRoZSBsaXN0IG9mIHNlbGVjdG9ycywgb3RoZXJ3aXNlIHdlIGZhbGwgYmFjayB0byBtYXRjaGluZyBhZ2FpbnN0IHRoZSBub2RlLlxuICAgIGlmIChuZ1Byb2plY3RBc0F0dHJWYWwgPT09IG51bGwgP1xuICAgICAgICAgICAgaXNOb2RlTWF0Y2hpbmdTZWxlY3Rvckxpc3QodE5vZGUsIHNsb3RWYWx1ZSwgLyogaXNQcm9qZWN0aW9uTW9kZSAqLyB0cnVlKSA6XG4gICAgICAgICAgICBpc1NlbGVjdG9ySW5TZWxlY3Rvckxpc3QobmdQcm9qZWN0QXNBdHRyVmFsLCBzbG90VmFsdWUpKSB7XG4gICAgICByZXR1cm4gaTsgIC8vIGZpcnN0IG1hdGNoaW5nIHNlbGVjdG9yIFwiY2FwdHVyZXNcIiBhIGdpdmVuIG5vZGVcbiAgICB9XG4gIH1cbiAgcmV0dXJuIHdpbGRjYXJkTmdDb250ZW50SW5kZXg7XG59XG5cbi8qKlxuICogSW5zdHJ1Y3Rpb24gdG8gZGlzdHJpYnV0ZSBwcm9qZWN0YWJsZSBub2RlcyBhbW9uZyA8bmctY29udGVudD4gb2NjdXJyZW5jZXMgaW4gYSBnaXZlbiB0ZW1wbGF0ZS5cbiAqIEl0IHRha2VzIGFsbCB0aGUgc2VsZWN0b3JzIGZyb20gdGhlIGVudGlyZSBjb21wb25lbnQncyB0ZW1wbGF0ZSBhbmQgZGVjaWRlcyB3aGVyZVxuICogZWFjaCBwcm9qZWN0ZWQgbm9kZSBiZWxvbmdzIChpdCByZS1kaXN0cmlidXRlcyBub2RlcyBhbW9uZyBcImJ1Y2tldHNcIiB3aGVyZSBlYWNoIFwiYnVja2V0XCIgaXNcbiAqIGJhY2tlZCBieSBhIHNlbGVjdG9yKS5cbiAqXG4gKiBUaGlzIGZ1bmN0aW9uIHJlcXVpcmVzIENTUyBzZWxlY3RvcnMgdG8gYmUgcHJvdmlkZWQgaW4gMiBmb3JtczogcGFyc2VkIChieSBhIGNvbXBpbGVyKSBhbmQgdGV4dCxcbiAqIHVuLXBhcnNlZCBmb3JtLlxuICpcbiAqIFRoZSBwYXJzZWQgZm9ybSBpcyBuZWVkZWQgZm9yIGVmZmljaWVudCBtYXRjaGluZyBvZiBhIG5vZGUgYWdhaW5zdCBhIGdpdmVuIENTUyBzZWxlY3Rvci5cbiAqIFRoZSB1bi1wYXJzZWQsIHRleHR1YWwgZm9ybSBpcyBuZWVkZWQgZm9yIHN1cHBvcnQgb2YgdGhlIG5nUHJvamVjdEFzIGF0dHJpYnV0ZS5cbiAqXG4gKiBIYXZpbmcgYSBDU1Mgc2VsZWN0b3IgaW4gMiBkaWZmZXJlbnQgZm9ybWF0cyBpcyBub3QgaWRlYWwsIGJ1dCBhbHRlcm5hdGl2ZXMgaGF2ZSBldmVuIG1vcmVcbiAqIGRyYXdiYWNrczpcbiAqIC0gaGF2aW5nIG9ubHkgYSB0ZXh0dWFsIGZvcm0gd291bGQgcmVxdWlyZSBydW50aW1lIHBhcnNpbmcgb2YgQ1NTIHNlbGVjdG9ycztcbiAqIC0gd2UgY2FuJ3QgaGF2ZSBvbmx5IGEgcGFyc2VkIGFzIHdlIGNhbid0IHJlLWNvbnN0cnVjdCB0ZXh0dWFsIGZvcm0gZnJvbSBpdCAoYXMgZW50ZXJlZCBieSBhXG4gKiB0ZW1wbGF0ZSBhdXRob3IpLlxuICpcbiAqIEBwYXJhbSBwcm9qZWN0aW9uU2xvdHM/IEEgY29sbGVjdGlvbiBvZiBwcm9qZWN0aW9uIHNsb3RzLiBBIHByb2plY3Rpb24gc2xvdCBjYW4gYmUgYmFzZWRcbiAqICAgICAgICBvbiBhIHBhcnNlZCBDU1Mgc2VsZWN0b3JzIG9yIHNldCB0byB0aGUgd2lsZGNhcmQgc2VsZWN0b3IgKFwiKlwiKSBpbiBvcmRlciB0byBtYXRjaFxuICogICAgICAgIGFsbCBub2RlcyB3aGljaCBkbyBub3QgbWF0Y2ggYW55IHNlbGVjdG9yLiBJZiBub3Qgc3BlY2lmaWVkLCBhIHNpbmdsZSB3aWxkY2FyZFxuICogICAgICAgIHNlbGVjdG9yIHByb2plY3Rpb24gc2xvdCB3aWxsIGJlIGRlZmluZWQuXG4gKlxuICogQGNvZGVHZW5BcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIMm1ybVwcm9qZWN0aW9uRGVmKHByb2plY3Rpb25TbG90cz86IFByb2plY3Rpb25TbG90cyk6IHZvaWQge1xuICBjb25zdCBjb21wb25lbnROb2RlID0gZ2V0TFZpZXcoKVtERUNMQVJBVElPTl9DT01QT05FTlRfVklFV11bVF9IT1NUXSBhcyBURWxlbWVudE5vZGU7XG5cbiAgaWYgKCFjb21wb25lbnROb2RlLnByb2plY3Rpb24pIHtcbiAgICAvLyBJZiBubyBleHBsaWNpdCBwcm9qZWN0aW9uIHNsb3RzIGFyZSBkZWZpbmVkLCBmYWxsIGJhY2sgdG8gYSBzaW5nbGVcbiAgICAvLyBwcm9qZWN0aW9uIHNsb3Qgd2l0aCB0aGUgd2lsZGNhcmQgc2VsZWN0b3IuXG4gICAgY29uc3QgbnVtUHJvamVjdGlvblNsb3RzID0gcHJvamVjdGlvblNsb3RzID8gcHJvamVjdGlvblNsb3RzLmxlbmd0aCA6IDE7XG4gICAgY29uc3QgcHJvamVjdGlvbkhlYWRzOiAoVE5vZGV8bnVsbClbXSA9IGNvbXBvbmVudE5vZGUucHJvamVjdGlvbiA9XG4gICAgICAgIG5ld0FycmF5KG51bVByb2plY3Rpb25TbG90cywgbnVsbCEgYXMgVE5vZGUpO1xuICAgIGNvbnN0IHRhaWxzOiAoVE5vZGV8bnVsbClbXSA9IHByb2plY3Rpb25IZWFkcy5zbGljZSgpO1xuXG4gICAgbGV0IGNvbXBvbmVudENoaWxkOiBUTm9kZXxudWxsID0gY29tcG9uZW50Tm9kZS5jaGlsZDtcblxuICAgIHdoaWxlIChjb21wb25lbnRDaGlsZCAhPT0gbnVsbCkge1xuICAgICAgY29uc3Qgc2xvdEluZGV4ID1cbiAgICAgICAgICBwcm9qZWN0aW9uU2xvdHMgPyBtYXRjaGluZ1Byb2plY3Rpb25TbG90SW5kZXgoY29tcG9uZW50Q2hpbGQsIHByb2plY3Rpb25TbG90cykgOiAwO1xuXG4gICAgICBpZiAoc2xvdEluZGV4ICE9PSBudWxsKSB7XG4gICAgICAgIGlmICh0YWlsc1tzbG90SW5kZXhdKSB7XG4gICAgICAgICAgdGFpbHNbc2xvdEluZGV4XSEucHJvamVjdGlvbk5leHQgPSBjb21wb25lbnRDaGlsZDtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICBwcm9qZWN0aW9uSGVhZHNbc2xvdEluZGV4XSA9IGNvbXBvbmVudENoaWxkO1xuICAgICAgICB9XG4gICAgICAgIHRhaWxzW3Nsb3RJbmRleF0gPSBjb21wb25lbnRDaGlsZDtcbiAgICAgIH1cblxuICAgICAgY29tcG9uZW50Q2hpbGQgPSBjb21wb25lbnRDaGlsZC5uZXh0O1xuICAgIH1cbiAgfVxufVxuXG5sZXQgZGVsYXlQcm9qZWN0aW9uID0gZmFsc2U7XG5leHBvcnQgZnVuY3Rpb24gc2V0RGVsYXlQcm9qZWN0aW9uKHZhbHVlOiBib29sZWFuKSB7XG4gIGRlbGF5UHJvamVjdGlvbiA9IHZhbHVlO1xufVxuXG5cbi8qKlxuICogSW5zZXJ0cyBwcmV2aW91c2x5IHJlLWRpc3RyaWJ1dGVkIHByb2plY3RlZCBub2Rlcy4gVGhpcyBpbnN0cnVjdGlvbiBtdXN0IGJlIHByZWNlZGVkIGJ5IGEgY2FsbFxuICogdG8gdGhlIHByb2plY3Rpb25EZWYgaW5zdHJ1Y3Rpb24uXG4gKlxuICogQHBhcmFtIG5vZGVJbmRleFxuICogQHBhcmFtIHNlbGVjdG9ySW5kZXg6XG4gKiAgICAgICAgLSAwIHdoZW4gdGhlIHNlbGVjdG9yIGlzIGAqYCAob3IgdW5zcGVjaWZpZWQgYXMgdGhpcyBpcyB0aGUgZGVmYXVsdCB2YWx1ZSksXG4gKiAgICAgICAgLSAxIGJhc2VkIGluZGV4IG9mIHRoZSBzZWxlY3RvciBmcm9tIHRoZSB7QGxpbmsgcHJvamVjdGlvbkRlZn1cbiAqXG4gKiBAY29kZUdlbkFwaVxuICovXG5leHBvcnQgZnVuY3Rpb24gybXJtXByb2plY3Rpb24oXG4gICAgbm9kZUluZGV4OiBudW1iZXIsIHNlbGVjdG9ySW5kZXg6IG51bWJlciA9IDAsIGF0dHJzPzogVEF0dHJpYnV0ZXMpOiB2b2lkIHtcbiAgY29uc3QgbFZpZXcgPSBnZXRMVmlldygpO1xuICBjb25zdCB0VmlldyA9IGdldFRWaWV3KCk7XG4gIGNvbnN0IHRQcm9qZWN0aW9uTm9kZSA9XG4gICAgICBnZXRPckNyZWF0ZVROb2RlKHRWaWV3LCBsVmlld1tUX0hPU1RdLCBub2RlSW5kZXgsIFROb2RlVHlwZS5Qcm9qZWN0aW9uLCBudWxsLCBhdHRycyB8fCBudWxsKTtcblxuICAvLyBXZSBjYW4ndCB1c2Ugdmlld0RhdGFbSE9TVF9OT0RFXSBiZWNhdXNlIHByb2plY3Rpb24gbm9kZXMgY2FuIGJlIG5lc3RlZCBpbiBlbWJlZGRlZCB2aWV3cy5cbiAgaWYgKHRQcm9qZWN0aW9uTm9kZS5wcm9qZWN0aW9uID09PSBudWxsKSB0UHJvamVjdGlvbk5vZGUucHJvamVjdGlvbiA9IHNlbGVjdG9ySW5kZXg7XG5cbiAgLy8gYDxuZy1jb250ZW50PmAgaGFzIG5vIGNvbnRlbnRcbiAgc2V0SXNOb3RQYXJlbnQoKTtcblxuICAvLyBXZSBtaWdodCBuZWVkIHRvIGRlbGF5IHRoZSBwcm9qZWN0aW9uIG9mIG5vZGVzIGlmIHRoZXkgYXJlIGluIHRoZSBtaWRkbGUgb2YgYW4gaTE4biBibG9ja1xuICBpZiAoIWRlbGF5UHJvamVjdGlvbikge1xuICAgIC8vIHJlLWRpc3RyaWJ1dGlvbiBvZiBwcm9qZWN0YWJsZSBub2RlcyBpcyBzdG9yZWQgb24gYSBjb21wb25lbnQncyB2aWV3IGxldmVsXG4gICAgYXBwbHlQcm9qZWN0aW9uKHRWaWV3LCBsVmlldywgdFByb2plY3Rpb25Ob2RlKTtcbiAgfVxufVxuIl19