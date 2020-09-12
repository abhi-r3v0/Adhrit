/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/interfaces/type_checks.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { TYPE } from './container';
import { FLAGS } from './view';
/**
 * True if `value` is `LView`.
 * @param {?} value wrapped value of `RNode`, `LView`, `LContainer`
 * @return {?}
 */
export function isLView(value) {
    return Array.isArray(value) && typeof value[TYPE] === 'object';
}
/**
 * True if `value` is `LContainer`.
 * @param {?} value wrapped value of `RNode`, `LView`, `LContainer`
 * @return {?}
 */
export function isLContainer(value) {
    return Array.isArray(value) && value[TYPE] === true;
}
/**
 * @param {?} tNode
 * @return {?}
 */
export function isContentQueryHost(tNode) {
    return (tNode.flags & 8 /* hasContentQuery */) !== 0;
}
/**
 * @param {?} tNode
 * @return {?}
 */
export function isComponentHost(tNode) {
    return (tNode.flags & 2 /* isComponentHost */) === 2 /* isComponentHost */;
}
/**
 * @param {?} tNode
 * @return {?}
 */
export function isDirectiveHost(tNode) {
    return (tNode.flags & 1 /* isDirectiveHost */) === 1 /* isDirectiveHost */;
}
/**
 * @template T
 * @param {?} def
 * @return {?}
 */
export function isComponentDef(def) {
    return ((/** @type {?} */ (def))).template !== null;
}
/**
 * @param {?} target
 * @return {?}
 */
export function isRootView(target) {
    return (target[FLAGS] & 512 /* IsRoot */) !== 0;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHlwZV9jaGVja3MuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL2ludGVyZmFjZXMvdHlwZV9jaGVja3MudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBVUEsT0FBTyxFQUFhLElBQUksRUFBQyxNQUFNLGFBQWEsQ0FBQztBQUc3QyxPQUFPLEVBQUMsS0FBSyxFQUFvQixNQUFNLFFBQVEsQ0FBQzs7Ozs7O0FBT2hELE1BQU0sVUFBVSxPQUFPLENBQUMsS0FBNkM7SUFDbkUsT0FBTyxLQUFLLENBQUMsT0FBTyxDQUFDLEtBQUssQ0FBQyxJQUFJLE9BQU8sS0FBSyxDQUFDLElBQUksQ0FBQyxLQUFLLFFBQVEsQ0FBQztBQUNqRSxDQUFDOzs7Ozs7QUFNRCxNQUFNLFVBQVUsWUFBWSxDQUFDLEtBQTZDO0lBQ3hFLE9BQU8sS0FBSyxDQUFDLE9BQU8sQ0FBQyxLQUFLLENBQUMsSUFBSSxLQUFLLENBQUMsSUFBSSxDQUFDLEtBQUssSUFBSSxDQUFDO0FBQ3RELENBQUM7Ozs7O0FBRUQsTUFBTSxVQUFVLGtCQUFrQixDQUFDLEtBQVk7SUFDN0MsT0FBTyxDQUFDLEtBQUssQ0FBQyxLQUFLLDBCQUE2QixDQUFDLEtBQUssQ0FBQyxDQUFDO0FBQzFELENBQUM7Ozs7O0FBRUQsTUFBTSxVQUFVLGVBQWUsQ0FBQyxLQUFZO0lBQzFDLE9BQU8sQ0FBQyxLQUFLLENBQUMsS0FBSywwQkFBNkIsQ0FBQyw0QkFBK0IsQ0FBQztBQUNuRixDQUFDOzs7OztBQUVELE1BQU0sVUFBVSxlQUFlLENBQUMsS0FBWTtJQUMxQyxPQUFPLENBQUMsS0FBSyxDQUFDLEtBQUssMEJBQTZCLENBQUMsNEJBQStCLENBQUM7QUFDbkYsQ0FBQzs7Ozs7O0FBRUQsTUFBTSxVQUFVLGNBQWMsQ0FBSSxHQUFvQjtJQUNwRCxPQUFPLENBQUMsbUJBQUEsR0FBRyxFQUFtQixDQUFDLENBQUMsUUFBUSxLQUFLLElBQUksQ0FBQztBQUNwRCxDQUFDOzs7OztBQUVELE1BQU0sVUFBVSxVQUFVLENBQUMsTUFBYTtJQUN0QyxPQUFPLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyxtQkFBb0IsQ0FBQyxLQUFLLENBQUMsQ0FBQztBQUNuRCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0NvbXBvbmVudERlZiwgRGlyZWN0aXZlRGVmfSBmcm9tICcuLic7XG5cbmltcG9ydCB7TENvbnRhaW5lciwgVFlQRX0gZnJvbSAnLi9jb250YWluZXInO1xuaW1wb3J0IHtUTm9kZSwgVE5vZGVGbGFnc30gZnJvbSAnLi9ub2RlJztcbmltcG9ydCB7Uk5vZGV9IGZyb20gJy4vcmVuZGVyZXInO1xuaW1wb3J0IHtGTEFHUywgTFZpZXcsIExWaWV3RmxhZ3N9IGZyb20gJy4vdmlldyc7XG5cblxuLyoqXG4qIFRydWUgaWYgYHZhbHVlYCBpcyBgTFZpZXdgLlxuKiBAcGFyYW0gdmFsdWUgd3JhcHBlZCB2YWx1ZSBvZiBgUk5vZGVgLCBgTFZpZXdgLCBgTENvbnRhaW5lcmBcbiovXG5leHBvcnQgZnVuY3Rpb24gaXNMVmlldyh2YWx1ZTogUk5vZGUgfCBMVmlldyB8IExDb250YWluZXIgfCB7fSB8IG51bGwpOiB2YWx1ZSBpcyBMVmlldyB7XG4gIHJldHVybiBBcnJheS5pc0FycmF5KHZhbHVlKSAmJiB0eXBlb2YgdmFsdWVbVFlQRV0gPT09ICdvYmplY3QnO1xufVxuXG4vKipcbiAqIFRydWUgaWYgYHZhbHVlYCBpcyBgTENvbnRhaW5lcmAuXG4gKiBAcGFyYW0gdmFsdWUgd3JhcHBlZCB2YWx1ZSBvZiBgUk5vZGVgLCBgTFZpZXdgLCBgTENvbnRhaW5lcmBcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGlzTENvbnRhaW5lcih2YWx1ZTogUk5vZGUgfCBMVmlldyB8IExDb250YWluZXIgfCB7fSB8IG51bGwpOiB2YWx1ZSBpcyBMQ29udGFpbmVyIHtcbiAgcmV0dXJuIEFycmF5LmlzQXJyYXkodmFsdWUpICYmIHZhbHVlW1RZUEVdID09PSB0cnVlO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaXNDb250ZW50UXVlcnlIb3N0KHROb2RlOiBUTm9kZSk6IGJvb2xlYW4ge1xuICByZXR1cm4gKHROb2RlLmZsYWdzICYgVE5vZGVGbGFncy5oYXNDb250ZW50UXVlcnkpICE9PSAwO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaXNDb21wb25lbnRIb3N0KHROb2RlOiBUTm9kZSk6IGJvb2xlYW4ge1xuICByZXR1cm4gKHROb2RlLmZsYWdzICYgVE5vZGVGbGFncy5pc0NvbXBvbmVudEhvc3QpID09PSBUTm9kZUZsYWdzLmlzQ29tcG9uZW50SG9zdDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGlzRGlyZWN0aXZlSG9zdCh0Tm9kZTogVE5vZGUpOiBib29sZWFuIHtcbiAgcmV0dXJuICh0Tm9kZS5mbGFncyAmIFROb2RlRmxhZ3MuaXNEaXJlY3RpdmVIb3N0KSA9PT0gVE5vZGVGbGFncy5pc0RpcmVjdGl2ZUhvc3Q7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpc0NvbXBvbmVudERlZjxUPihkZWY6IERpcmVjdGl2ZURlZjxUPik6IGRlZiBpcyBDb21wb25lbnREZWY8VD4ge1xuICByZXR1cm4gKGRlZiBhcyBDb21wb25lbnREZWY8VD4pLnRlbXBsYXRlICE9PSBudWxsO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaXNSb290Vmlldyh0YXJnZXQ6IExWaWV3KTogYm9vbGVhbiB7XG4gIHJldHVybiAodGFyZ2V0W0ZMQUdTXSAmIExWaWV3RmxhZ3MuSXNSb290KSAhPT0gMDtcbn1cbiJdfQ==