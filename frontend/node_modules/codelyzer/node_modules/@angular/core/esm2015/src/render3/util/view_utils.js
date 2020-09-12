/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/util/view_utils.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { assertDataInRange, assertDefined, assertDomNode, assertGreaterThan, assertLessThan } from '../../util/assert';
import { assertTNodeForLView } from '../assert';
import { ACTIVE_INDEX, TYPE } from '../interfaces/container';
import { MONKEY_PATCH_KEY_NAME } from '../interfaces/context';
import { isProceduralRenderer } from '../interfaces/renderer';
import { isLContainer, isLView } from '../interfaces/type_checks';
import { FLAGS, HEADER_OFFSET, HOST, PARENT, PREORDER_HOOK_FLAGS, RENDERER } from '../interfaces/view';
/**
 * For efficiency reasons we often put several different data types (`RNode`, `LView`, `LContainer`)
 * in same location in `LView`. This is because we don't want to pre-allocate space for it
 * because the storage is sparse. This file contains utilities for dealing with such data types.
 *
 * How do we know what is stored at a given location in `LView`.
 * - `Array.isArray(value) === false` => `RNode` (The normal storage value)
 * - `Array.isArray(value) === true` => then the `value[0]` represents the wrapped value.
 *   - `typeof value[TYPE] === 'object'` => `LView`
 *      - This happens when we have a component at a given location
 *   - `typeof value[TYPE] === true` => `LContainer`
 *      - This happens when we have `LContainer` binding at a given location.
 *
 *
 * NOTE: it is assumed that `Array.isArray` and `typeof` operations are very efficient.
 */
/**
 * Returns `RNode`.
 * @param {?} value wrapped value of `RNode`, `LView`, `LContainer`
 * @return {?}
 */
export function unwrapRNode(value) {
    while (Array.isArray(value)) {
        value = (/** @type {?} */ (value[HOST]));
    }
    return (/** @type {?} */ (value));
}
/**
 * Returns `LView` or `null` if not found.
 * @param {?} value wrapped value of `RNode`, `LView`, `LContainer`
 * @return {?}
 */
export function unwrapLView(value) {
    while (Array.isArray(value)) {
        // This check is same as `isLView()` but we don't call at as we don't want to call
        // `Array.isArray()` twice and give JITer more work for inlining.
        if (typeof value[TYPE] === 'object')
            return (/** @type {?} */ (value));
        value = (/** @type {?} */ (value[HOST]));
    }
    return null;
}
/**
 * Returns `LContainer` or `null` if not found.
 * @param {?} value wrapped value of `RNode`, `LView`, `LContainer`
 * @return {?}
 */
export function unwrapLContainer(value) {
    while (Array.isArray(value)) {
        // This check is same as `isLContainer()` but we don't call at as we don't want to call
        // `Array.isArray()` twice and give JITer more work for inlining.
        if (value[TYPE] === true)
            return (/** @type {?} */ (value));
        value = (/** @type {?} */ (value[HOST]));
    }
    return null;
}
/**
 * Retrieves an element value from the provided `viewData`, by unwrapping
 * from any containers, component views, or style contexts.
 * @param {?} index
 * @param {?} lView
 * @return {?}
 */
export function getNativeByIndex(index, lView) {
    return unwrapRNode(lView[index + HEADER_OFFSET]);
}
/**
 * Retrieve an `RNode` for a given `TNode` and `LView`.
 *
 * This function guarantees in dev mode to retrieve a non-null `RNode`.
 *
 * @param {?} tNode
 * @param {?} lView
 * @return {?}
 */
export function getNativeByTNode(tNode, lView) {
    ngDevMode && assertTNodeForLView(tNode, lView);
    ngDevMode && assertDataInRange(lView, tNode.index);
    /** @type {?} */
    const node = unwrapRNode(lView[tNode.index]);
    ngDevMode && !isProceduralRenderer(lView[RENDERER]) && assertDomNode(node);
    return node;
}
/**
 * Retrieve an `RNode` or `null` for a given `TNode` and `LView`.
 *
 * Some `TNode`s don't have associated `RNode`s. For example `Projection`
 *
 * @param {?} tNode
 * @param {?} lView
 * @return {?}
 */
export function getNativeByTNodeOrNull(tNode, lView) {
    /** @type {?} */
    const index = tNode.index;
    if (index !== -1) {
        ngDevMode && assertTNodeForLView(tNode, lView);
        /** @type {?} */
        const node = unwrapRNode(lView[index]);
        ngDevMode && node !== null && !isProceduralRenderer(lView[RENDERER]) && assertDomNode(node);
        return node;
    }
    return null;
}
/**
 * @param {?} tView
 * @param {?} index
 * @return {?}
 */
export function getTNode(tView, index) {
    ngDevMode && assertGreaterThan(index, -1, 'wrong index for TNode');
    ngDevMode && assertLessThan(index, tView.data.length, 'wrong index for TNode');
    return (/** @type {?} */ (tView.data[index + HEADER_OFFSET]));
}
/**
 * Retrieves a value from any `LView` or `TData`.
 * @template T
 * @param {?} view
 * @param {?} index
 * @return {?}
 */
export function load(view, index) {
    ngDevMode && assertDataInRange(view, index + HEADER_OFFSET);
    return view[index + HEADER_OFFSET];
}
/**
 * @param {?} nodeIndex
 * @param {?} hostView
 * @return {?}
 */
export function getComponentLViewByIndex(nodeIndex, hostView) {
    // Could be an LView or an LContainer. If LContainer, unwrap to find LView.
    ngDevMode && assertDataInRange(hostView, nodeIndex);
    /** @type {?} */
    const slotValue = hostView[nodeIndex];
    /** @type {?} */
    const lView = isLView(slotValue) ? slotValue : slotValue[HOST];
    return lView;
}
/**
 * Returns the monkey-patch value data present on the target (which could be
 * a component, directive or a DOM node).
 * @param {?} target
 * @return {?}
 */
export function readPatchedData(target) {
    ngDevMode && assertDefined(target, 'Target expected');
    return target[MONKEY_PATCH_KEY_NAME] || null;
}
/**
 * @param {?} target
 * @return {?}
 */
export function readPatchedLView(target) {
    /** @type {?} */
    const value = readPatchedData(target);
    if (value) {
        return Array.isArray(value) ? value : ((/** @type {?} */ (value))).lView;
    }
    return null;
}
/**
 * Checks whether a given view is in creation mode
 * @param {?} view
 * @return {?}
 */
export function isCreationMode(view) {
    return (view[FLAGS] & 4 /* CreationMode */) === 4 /* CreationMode */;
}
/**
 * Returns a boolean for whether the view is attached to the change detection tree.
 *
 * Note: This determines whether a view should be checked, not whether it's inserted
 * into a container. For that, you'll want `viewAttachedToContainer` below.
 * @param {?} view
 * @return {?}
 */
export function viewAttachedToChangeDetector(view) {
    return (view[FLAGS] & 128 /* Attached */) === 128 /* Attached */;
}
/**
 * Returns a boolean for whether the view is attached to a container.
 * @param {?} view
 * @return {?}
 */
export function viewAttachedToContainer(view) {
    return isLContainer(view[PARENT]);
}
/**
 * Returns a constant from `TConstants` instance.
 * @template T
 * @param {?} consts
 * @param {?} index
 * @return {?}
 */
export function getConstant(consts, index) {
    return consts === null || index == null ? null : (/** @type {?} */ ((/** @type {?} */ (consts[index]))));
}
/**
 * Resets the pre-order hook flags of the view.
 * @param {?} lView the LView on which the flags are reset
 * @return {?}
 */
export function resetPreOrderHookFlags(lView) {
    lView[PREORDER_HOOK_FLAGS] = 0;
}
/**
 * @param {?} lContainer
 * @return {?}
 */
export function getLContainerActiveIndex(lContainer) {
    return lContainer[ACTIVE_INDEX] >> 1 /* SHIFT */;
}
/**
 * @param {?} lContainer
 * @param {?} index
 * @return {?}
 */
export function setLContainerActiveIndex(lContainer, index) {
    lContainer[ACTIVE_INDEX] = index << 1 /* SHIFT */;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlld191dGlscy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3JlbmRlcjMvdXRpbC92aWV3X3V0aWxzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQVFBLE9BQU8sRUFBQyxpQkFBaUIsRUFBRSxhQUFhLEVBQUUsYUFBYSxFQUFFLGlCQUFpQixFQUFFLGNBQWMsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBQ3JILE9BQU8sRUFBQyxtQkFBbUIsRUFBQyxNQUFNLFdBQVcsQ0FBQztBQUM5QyxPQUFPLEVBQUMsWUFBWSxFQUErQixJQUFJLEVBQUMsTUFBTSx5QkFBeUIsQ0FBQztBQUN4RixPQUFPLEVBQVcscUJBQXFCLEVBQUMsTUFBTSx1QkFBdUIsQ0FBQztBQUV0RSxPQUFPLEVBQVEsb0JBQW9CLEVBQUMsTUFBTSx3QkFBd0IsQ0FBQztBQUNuRSxPQUFPLEVBQUMsWUFBWSxFQUFFLE9BQU8sRUFBQyxNQUFNLDJCQUEyQixDQUFDO0FBQ2hFLE9BQU8sRUFBQyxLQUFLLEVBQUUsYUFBYSxFQUFFLElBQUksRUFBcUIsTUFBTSxFQUFFLG1CQUFtQixFQUFFLFFBQVEsRUFBZSxNQUFNLG9CQUFvQixDQUFDOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBeUJ0SSxNQUFNLFVBQVUsV0FBVyxDQUFDLEtBQWlDO0lBQzNELE9BQU8sS0FBSyxDQUFDLE9BQU8sQ0FBQyxLQUFLLENBQUMsRUFBRTtRQUMzQixLQUFLLEdBQUcsbUJBQUEsS0FBSyxDQUFDLElBQUksQ0FBQyxFQUFPLENBQUM7S0FDNUI7SUFDRCxPQUFPLG1CQUFBLEtBQUssRUFBUyxDQUFDO0FBQ3hCLENBQUM7Ozs7OztBQU1ELE1BQU0sVUFBVSxXQUFXLENBQUMsS0FBaUM7SUFDM0QsT0FBTyxLQUFLLENBQUMsT0FBTyxDQUFDLEtBQUssQ0FBQyxFQUFFO1FBQzNCLGtGQUFrRjtRQUNsRixpRUFBaUU7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QUFDLENBQUM7QUFDcEMsQ0FBQzs7Ozs7Ozs7QUFHRCxNQUFNLFVBQVUsV0FBVyxDQUFJLE1BQXlCLEVBQUUsS0FBZ0M7SUFFeEYsT0FBTyxNQUFNLEtBQUssSUFBSSxJQUFJLEtBQUssSUFBSSxJQUFJLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsbUJBQUEsbUJBQUEsTUFBTSxDQUFDLEtBQUssQ0FBQyxFQUFXLEVBQUssQ0FBQztBQUNqRixDQUFDOzs7Ozs7QUFNRCxNQUFNLFVBQVUsc0JBQXNCLENBQUMsS0FBWTtJQUNqRCxLQUFLLENBQUMsbUJBQW1CLENBQUMsR0FBRyxDQUFDLENBQUM7QUFDakMsQ0FBQzs7Ozs7QUFFRCxNQUFNLFVBQVUsd0JBQXdCLENBQUMsVUFBc0I7SUFDN0QsT0FBTyxVQUFVLENBQUMsWUFBWSxDQUFDLGlCQUF5QixDQUFDO0FBQzNELENBQUM7Ozs7OztBQUVELE1BQU0sVUFBVSx3QkFBd0IsQ0FBQyxVQUFzQixFQUFFLEtBQWE7SUFDNUUsVUFBVSxDQUFDLFlBQVksQ0FBQyxHQUFHLEtBQUssaUJBQXlCLENBQUM7QUFDNUQsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHthc3NlcnREYXRhSW5SYW5nZSwgYXNzZXJ0RGVmaW5lZCwgYXNzZXJ0RG9tTm9kZSwgYXNzZXJ0R3JlYXRlclRoYW4sIGFzc2VydExlc3NUaGFufSBmcm9tICcuLi8uLi91dGlsL2Fzc2VydCc7XG5pbXBvcnQge2Fzc2VydFROb2RlRm9yTFZpZXd9IGZyb20gJy4uL2Fzc2VydCc7XG5pbXBvcnQge0FDVElWRV9JTkRFWCwgQWN0aXZlSW5kZXhGbGFnLCBMQ29udGFpbmVyLCBUWVBFfSBmcm9tICcuLi9pbnRlcmZhY2VzL2NvbnRhaW5lcic7XG5pbXBvcnQge0xDb250ZXh0LCBNT05LRVlfUEFUQ0hfS0VZX05BTUV9IGZyb20gJy4uL2ludGVyZmFjZXMvY29udGV4dCc7XG5pbXBvcnQge1RDb25zdGFudHMsIFROb2RlfSBmcm9tICcuLi9pbnRlcmZhY2VzL25vZGUnO1xuaW1wb3J0IHtSTm9kZSwgaXNQcm9jZWR1cmFsUmVuZGVyZXJ9IGZyb20gJy4uL2ludGVyZmFjZXMvcmVuZGVyZXInO1xuaW1wb3J0IHtpc0xDb250YWluZXIsIGlzTFZpZXd9IGZyb20gJy4uL2ludGVyZmFjZXMvdHlwZV9jaGVja3MnO1xuaW1wb3J0IHtGTEFHUywgSEVBREVSX09GRlNFVCwgSE9TVCwgTFZpZXcsIExWaWV3RmxhZ3MsIFBBUkVOVCwgUFJFT1JERVJfSE9PS19GTEFHUywgUkVOREVSRVIsIFREYXRhLCBUVmlld30gZnJvbSAnLi4vaW50ZXJmYWNlcy92aWV3JztcblxuXG5cbi8qKlxuICogRm9yIGVmZmljaWVuY3kgcmVhc29ucyB3ZSBvZnRlbiBwdXQgc2V2ZXJhbCBkaWZmZXJlbnQgZGF0YSB0eXBlcyAoYFJOb2RlYCwgYExWaWV3YCwgYExDb250YWluZXJgKVxuICogaW4gc2FtZSBsb2NhdGlvbiBpbiBgTFZpZXdgLiBUaGlzIGlzIGJlY2F1c2Ugd2UgZG9uJ3Qgd2FudCB0byBwcmUtYWxsb2NhdGUgc3BhY2UgZm9yIGl0XG4gKiBiZWNhdXNlIHRoZSBzdG9yYWdlIGlzIHNwYXJzZS4gVGhpcyBmaWxlIGNvbnRhaW5zIHV0aWxpdGllcyBmb3IgZGVhbGluZyB3aXRoIHN1Y2ggZGF0YSB0eXBlcy5cbiAqXG4gKiBIb3cgZG8gd2Uga25vdyB3aGF0IGlzIHN0b3JlZCBhdCBhIGdpdmVuIGxvY2F0aW9uIGluIGBMVmlld2AuXG4gKiAtIGBBcnJheS5pc0FycmF5KHZhbHVlKSA9PT0gZmFsc2VgID0+IGBSTm9kZWAgKFRoZSBub3JtYWwgc3RvcmFnZSB2YWx1ZSlcbiAqIC0gYEFycmF5LmlzQXJyYXkodmFsdWUpID09PSB0cnVlYCA9PiB0aGVuIHRoZSBgdmFsdWVbMF1gIHJlcHJlc2VudHMgdGhlIHdyYXBwZWQgdmFsdWUuXG4gKiAgIC0gYHR5cGVvZiB2YWx1ZVtUWVBFXSA9PT0gJ29iamVjdCdgID0+IGBMVmlld2BcbiAqICAgICAgLSBUaGlzIGhhcHBlbnMgd2hlbiB3ZSBoYXZlIGEgY29tcG9uZW50IGF0IGEgZ2l2ZW4gbG9jYXRpb25cbiAqICAgLSBgdHlwZW9mIHZhbHVlW1RZUEVdID09PSB0cnVlYCA9PiBgTENvbnRhaW5lcmBcbiAqICAgICAgLSBUaGlzIGhhcHBlbnMgd2hlbiB3ZSBoYXZlIGBMQ29udGFpbmVyYCBiaW5kaW5nIGF0IGEgZ2l2ZW4gbG9jYXRpb24uXG4gKlxuICpcbiAqIE5PVEU6IGl0IGlzIGFzc3VtZWQgdGhhdCBgQXJyYXkuaXNBcnJheWAgYW5kIGB0eXBlb2ZgIG9wZXJhdGlvbnMgYXJlIHZlcnkgZWZmaWNpZW50LlxuICovXG5cbi8qKlxuICogUmV0dXJucyBgUk5vZGVgLlxuICogQHBhcmFtIHZhbHVlIHdyYXBwZWQgdmFsdWUgb2YgYFJOb2RlYCwgYExWaWV3YCwgYExDb250YWluZXJgXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiB1bndyYXBSTm9kZSh2YWx1ZTogUk5vZGUgfCBMVmlldyB8IExDb250YWluZXIpOiBSTm9kZSB7XG4gIHdoaWxlIChBcnJheS5pc0FycmF5KHZhbHVlKSkge1xuICAgIHZhbHVlID0gdmFsdWVbSE9TVF0gYXMgYW55O1xuICB9XG4gIHJldHVybiB2YWx1ZSBhcyBSTm9kZTtcbn1cblxuLyoqXG4gKiBSZXR1cm5zIGBMVmlld2Agb3IgYG51bGxgIGlmIG5vdCBmb3VuZC5cbiAqIEBwYXJhbSB2YWx1ZSB3cmFwcGVkIHZhbHVlIG9mIGBSTm9kZWAsIGBMVmlld2AsIGBMQ29udGFpbmVyYFxuICovXG5leHBvcnQgZnVuY3Rpb24gdW53cmFwTFZpZXcodmFsdWU6IFJOb2RlIHwgTFZpZXcgfCBMQ29udGFpbmVyKTogTFZpZXd8bnVsbCB7XG4gIHdoaWxlIChBcnJheS5pc0FycmF5KHZhbHVlKSkge1xuICAgIC8vIFRoaXMgY2hlY2sgaXMgc2FtZSBhcyBgaXNMVmlldygpYCBidXQgd2UgZG9uJ3QgY2FsbCBhdCBhcyB3ZSBkb24ndCB3YW50IHRvIGNhbGxcbiAgICAvLyBgQXJyYXkuaXNBcnJheSgpYCB0d2ljZSBhbmQgZ2l2ZSBKSVRlciBtb3JlIHdvcmsgZm9yIGlubGluaW5nLlxuICAgIGlmICh0eXBlb2YgdmFsdWVbVFlQRV0gPT09ICdvYmplY3QnKSByZXR1cm4gdmFsdWUgYXMgTFZpZXc7XG4gICAgdmFsdWUgPSB2YWx1ZVtIT1NUXSBhcyBhbnk7XG4gIH1cbiAgcmV0dXJuIG51bGw7XG59XG5cbi8qKlxuICogUmV0dXJucyBgTENvbnRhaW5lcmAgb3IgYG51bGxgIGlmIG5vdCBmb3VuZC5cbiAqIEBwYXJhbSB2YWx1ZSB3cmFwcGVkIHZhbHVlIG9mIGBSTm9kZWAsIGBMVmlld2AsIGBMQ29udGFpbmVyYFxuICovXG5leHBvcnQgZnVuY3Rpb24gdW53cmFwTENvbnRhaW5lcih2YWx1ZTogUk5vZGUgfCBMVmlldyB8IExDb250YWluZXIpOiBMQ29udGFpbmVyfG51bGwge1xuICB3aGlsZSAoQXJyYXkuaXNBcnJheSh2YWx1ZSkpIHtcbiAgICAvLyBUaGlzIGNoZWNrIGlzIHNhbWUgYXMgYGlzTENvbnRhaW5lcigpYCBidXQgd2UgZG9uJ3QgY2FsbCBhdCBhcyB3ZSBkb24ndCB3YW50IHRvIGNhbGxcbiAgICAvLyBgQXJyYXkuaXNBcnJheSgpYCB0d2ljZSBhbmQgZ2l2ZSBKSVRlciBtb3JlIHdvcmsgZm9yIGlubGluaW5nLlxuICAgIGlmICh2YWx1ZVtUWVBFXSA9PT0gdHJ1ZSkgcmV0dXJuIHZhbHVlIGFzIExDb250YWluZXI7XG4gICAgdmFsdWUgPSB2YWx1ZVtIT1NUXSBhcyBhbnk7XG4gIH1cbiAgcmV0dXJuIG51bGw7XG59XG5cbi8qKlxuICogUmV0cmlldmVzIGFuIGVsZW1lbnQgdmFsdWUgZnJvbSB0aGUgcHJvdmlkZWQgYHZpZXdEYXRhYCwgYnkgdW53cmFwcGluZ1xuICogZnJvbSBhbnkgY29udGFpbmVycywgY29tcG9uZW50IHZpZXdzLCBvciBzdHlsZSBjb250ZXh0cy5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldE5hdGl2ZUJ5SW5kZXgoaW5kZXg6IG51bWJlciwgbFZpZXc6IExWaWV3KTogUk5vZGUge1xuICByZXR1cm4gdW53cmFwUk5vZGUobFZpZXdbaW5kZXggKyBIRUFERVJfT0ZGU0VUXSk7XG59XG5cbi8qKlxuICogUmV0cmlldmUgYW4gYFJOb2RlYCBmb3IgYSBnaXZlbiBgVE5vZGVgIGFuZCBgTFZpZXdgLlxuICpcbiAqIFRoaXMgZnVuY3Rpb24gZ3VhcmFudGVlcyBpbiBkZXYgbW9kZSB0byByZXRyaWV2ZSBhIG5vbi1udWxsIGBSTm9kZWAuXG4gKlxuICogQHBhcmFtIHROb2RlXG4gKiBAcGFyYW0gbFZpZXdcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldE5hdGl2ZUJ5VE5vZGUodE5vZGU6IFROb2RlLCBsVmlldzogTFZpZXcpOiBSTm9kZSB7XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnRUTm9kZUZvckxWaWV3KHROb2RlLCBsVmlldyk7XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnREYXRhSW5SYW5nZShsVmlldywgdE5vZGUuaW5kZXgpO1xuICBjb25zdCBub2RlOiBSTm9kZSA9IHVud3JhcFJOb2RlKGxWaWV3W3ROb2RlLmluZGV4XSk7XG4gIG5nRGV2TW9kZSAmJiAhaXNQcm9jZWR1cmFsUmVuZGVyZXIobFZpZXdbUkVOREVSRVJdKSAmJiBhc3NlcnREb21Ob2RlKG5vZGUpO1xuICByZXR1cm4gbm9kZTtcbn1cblxuLyoqXG4gKiBSZXRyaWV2ZSBhbiBgUk5vZGVgIG9yIGBudWxsYCBmb3IgYSBnaXZlbiBgVE5vZGVgIGFuZCBgTFZpZXdgLlxuICpcbiAqIFNvbWUgYFROb2RlYHMgZG9uJ3QgaGF2ZSBhc3NvY2lhdGVkIGBSTm9kZWBzLiBGb3IgZXhhbXBsZSBgUHJvamVjdGlvbmBcbiAqXG4gKiBAcGFyYW0gdE5vZGVcbiAqIEBwYXJhbSBsVmlld1xuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0TmF0aXZlQnlUTm9kZU9yTnVsbCh0Tm9kZTogVE5vZGUsIGxWaWV3OiBMVmlldyk6IFJOb2RlfG51bGwge1xuICBjb25zdCBpbmRleCA9IHROb2RlLmluZGV4O1xuICBpZiAoaW5kZXggIT09IC0xKSB7XG4gICAgbmdEZXZNb2RlICYmIGFzc2VydFROb2RlRm9yTFZpZXcodE5vZGUsIGxWaWV3KTtcbiAgICBjb25zdCBub2RlOiBSTm9kZXxudWxsID0gdW53cmFwUk5vZGUobFZpZXdbaW5kZXhdKTtcbiAgICBuZ0Rldk1vZGUgJiYgbm9kZSAhPT0gbnVsbCAmJiAhaXNQcm9jZWR1cmFsUmVuZGVyZXIobFZpZXdbUkVOREVSRVJdKSAmJiBhc3NlcnREb21Ob2RlKG5vZGUpO1xuICAgIHJldHVybiBub2RlO1xuICB9XG4gIHJldHVybiBudWxsO1xufVxuXG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRUTm9kZSh0VmlldzogVFZpZXcsIGluZGV4OiBudW1iZXIpOiBUTm9kZSB7XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnRHcmVhdGVyVGhhbihpbmRleCwgLTEsICd3cm9uZyBpbmRleCBmb3IgVE5vZGUnKTtcbiAgbmdEZXZNb2RlICYmIGFzc2VydExlc3NUaGFuKGluZGV4LCB0Vmlldy5kYXRhLmxlbmd0aCwgJ3dyb25nIGluZGV4IGZvciBUTm9kZScpO1xuICByZXR1cm4gdFZpZXcuZGF0YVtpbmRleCArIEhFQURFUl9PRkZTRVRdIGFzIFROb2RlO1xufVxuXG4vKiogUmV0cmlldmVzIGEgdmFsdWUgZnJvbSBhbnkgYExWaWV3YCBvciBgVERhdGFgLiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGxvYWQ8VD4odmlldzogTFZpZXcgfCBURGF0YSwgaW5kZXg6IG51bWJlcik6IFQge1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0RGF0YUluUmFuZ2UodmlldywgaW5kZXggKyBIRUFERVJfT0ZGU0VUKTtcbiAgcmV0dXJuIHZpZXdbaW5kZXggKyBIRUFERVJfT0ZGU0VUXTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdldENvbXBvbmVudExWaWV3QnlJbmRleChub2RlSW5kZXg6IG51bWJlciwgaG9zdFZpZXc6IExWaWV3KTogTFZpZXcge1xuICAvLyBDb3VsZCBiZSBhbiBMVmlldyBvciBhbiBMQ29udGFpbmVyLiBJZiBMQ29udGFpbmVyLCB1bndyYXAgdG8gZmluZCBMVmlldy5cbiAgbmdEZXZNb2RlICYmIGFzc2VydERhdGFJblJhbmdlKGhvc3RWaWV3LCBub2RlSW5kZXgpO1xuICBjb25zdCBzbG90VmFsdWUgPSBob3N0Vmlld1tub2RlSW5kZXhdO1xuICBjb25zdCBsVmlldyA9IGlzTFZpZXcoc2xvdFZhbHVlKSA/IHNsb3RWYWx1ZSA6IHNsb3RWYWx1ZVtIT1NUXTtcbiAgcmV0dXJuIGxWaWV3O1xufVxuXG5cbi8qKlxuICogUmV0dXJucyB0aGUgbW9ua2V5LXBhdGNoIHZhbHVlIGRhdGEgcHJlc2VudCBvbiB0aGUgdGFyZ2V0ICh3aGljaCBjb3VsZCBiZVxuICogYSBjb21wb25lbnQsIGRpcmVjdGl2ZSBvciBhIERPTSBub2RlKS5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHJlYWRQYXRjaGVkRGF0YSh0YXJnZXQ6IGFueSk6IExWaWV3fExDb250ZXh0fG51bGwge1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0RGVmaW5lZCh0YXJnZXQsICdUYXJnZXQgZXhwZWN0ZWQnKTtcbiAgcmV0dXJuIHRhcmdldFtNT05LRVlfUEFUQ0hfS0VZX05BTUVdIHx8IG51bGw7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiByZWFkUGF0Y2hlZExWaWV3KHRhcmdldDogYW55KTogTFZpZXd8bnVsbCB7XG4gIGNvbnN0IHZhbHVlID0gcmVhZFBhdGNoZWREYXRhKHRhcmdldCk7XG4gIGlmICh2YWx1ZSkge1xuICAgIHJldHVybiBBcnJheS5pc0FycmF5KHZhbHVlKSA/IHZhbHVlIDogKHZhbHVlIGFzIExDb250ZXh0KS5sVmlldztcbiAgfVxuICByZXR1cm4gbnVsbDtcbn1cblxuLyoqIENoZWNrcyB3aGV0aGVyIGEgZ2l2ZW4gdmlldyBpcyBpbiBjcmVhdGlvbiBtb2RlICovXG5leHBvcnQgZnVuY3Rpb24gaXNDcmVhdGlvbk1vZGUodmlldzogTFZpZXcpOiBib29sZWFuIHtcbiAgcmV0dXJuICh2aWV3W0ZMQUdTXSAmIExWaWV3RmxhZ3MuQ3JlYXRpb25Nb2RlKSA9PT0gTFZpZXdGbGFncy5DcmVhdGlvbk1vZGU7XG59XG5cbi8qKlxuICogUmV0dXJucyBhIGJvb2xlYW4gZm9yIHdoZXRoZXIgdGhlIHZpZXcgaXMgYXR0YWNoZWQgdG8gdGhlIGNoYW5nZSBkZXRlY3Rpb24gdHJlZS5cbiAqXG4gKiBOb3RlOiBUaGlzIGRldGVybWluZXMgd2hldGhlciBhIHZpZXcgc2hvdWxkIGJlIGNoZWNrZWQsIG5vdCB3aGV0aGVyIGl0J3MgaW5zZXJ0ZWRcbiAqIGludG8gYSBjb250YWluZXIuIEZvciB0aGF0LCB5b3UnbGwgd2FudCBgdmlld0F0dGFjaGVkVG9Db250YWluZXJgIGJlbG93LlxuICovXG5leHBvcnQgZnVuY3Rpb24gdmlld0F0dGFjaGVkVG9DaGFuZ2VEZXRlY3Rvcih2aWV3OiBMVmlldyk6IGJvb2xlYW4ge1xuICByZXR1cm4gKHZpZXdbRkxBR1NdICYgTFZpZXdGbGFncy5BdHRhY2hlZCkgPT09IExWaWV3RmxhZ3MuQXR0YWNoZWQ7XG59XG5cbi8qKiBSZXR1cm5zIGEgYm9vbGVhbiBmb3Igd2hldGhlciB0aGUgdmlldyBpcyBhdHRhY2hlZCB0byBhIGNvbnRhaW5lci4gKi9cbmV4cG9ydCBmdW5jdGlvbiB2aWV3QXR0YWNoZWRUb0NvbnRhaW5lcih2aWV3OiBMVmlldyk6IGJvb2xlYW4ge1xuICByZXR1cm4gaXNMQ29udGFpbmVyKHZpZXdbUEFSRU5UXSk7XG59XG5cbi8qKiBSZXR1cm5zIGEgY29uc3RhbnQgZnJvbSBgVENvbnN0YW50c2AgaW5zdGFuY2UuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0Q29uc3RhbnQ8VD4oY29uc3RzOiBUQ29uc3RhbnRzIHwgbnVsbCwgaW5kZXg6IG51bWJlciB8IG51bGwgfCB1bmRlZmluZWQpOiBUfFxuICAgIG51bGwge1xuICByZXR1cm4gY29uc3RzID09PSBudWxsIHx8IGluZGV4ID09IG51bGwgPyBudWxsIDogY29uc3RzW2luZGV4XSBhcyB1bmtub3duIGFzIFQ7XG59XG5cbi8qKlxuICogUmVzZXRzIHRoZSBwcmUtb3JkZXIgaG9vayBmbGFncyBvZiB0aGUgdmlldy5cbiAqIEBwYXJhbSBsVmlldyB0aGUgTFZpZXcgb24gd2hpY2ggdGhlIGZsYWdzIGFyZSByZXNldFxuICovXG5leHBvcnQgZnVuY3Rpb24gcmVzZXRQcmVPcmRlckhvb2tGbGFncyhsVmlldzogTFZpZXcpIHtcbiAgbFZpZXdbUFJFT1JERVJfSE9PS19GTEFHU10gPSAwO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0TENvbnRhaW5lckFjdGl2ZUluZGV4KGxDb250YWluZXI6IExDb250YWluZXIpIHtcbiAgcmV0dXJuIGxDb250YWluZXJbQUNUSVZFX0lOREVYXSA+PiBBY3RpdmVJbmRleEZsYWcuU0hJRlQ7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBzZXRMQ29udGFpbmVyQWN0aXZlSW5kZXgobENvbnRhaW5lcjogTENvbnRhaW5lciwgaW5kZXg6IG51bWJlcikge1xuICBsQ29udGFpbmVyW0FDVElWRV9JTkRFWF0gPSBpbmRleCA8PCBBY3RpdmVJbmRleEZsYWcuU0hJRlQ7XG59Il19