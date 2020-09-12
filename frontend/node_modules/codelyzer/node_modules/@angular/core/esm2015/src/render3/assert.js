/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/assert.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { assertDefined, assertEqual, throwError } from '../util/assert';
import { getComponentDef, getNgModuleDef } from './definition';
import { isLContainer, isLView } from './interfaces/type_checks';
import { TVIEW } from './interfaces/view';
/**
 * @param {?} tNode
 * @param {?} lView
 * @return {?}
 */
export function assertTNodeForLView(tNode, lView) {
    tNode.hasOwnProperty('tView_') && assertEqual(((/** @type {?} */ ((/** @type {?} */ (tNode))))).tView_, lView[TVIEW], 'This TNode does not belong to this LView.');
}
/**
 * @param {?} actual
 * @param {?=} msg
 * @return {?}
 */
export function assertComponentType(actual, msg = 'Type passed in is not ComponentType, it does not have \'ɵcmp\' property.') {
    if (!getComponentDef(actual)) {
        throwError(msg);
    }
}
/**
 * @param {?} actual
 * @param {?=} msg
 * @return {?}
 */
export function assertNgModuleType(actual, msg = 'Type passed in is not NgModuleType, it does not have \'ɵmod\' property.') {
    if (!getNgModuleDef(actual)) {
        throwError(msg);
    }
}
/**
 * @param {?} isParent
 * @return {?}
 */
export function assertPreviousIsParent(isParent) {
    assertEqual(isParent, true, 'previousOrParentTNode should be a parent');
}
/**
 * @param {?} tNode
 * @return {?}
 */
export function assertHasParent(tNode) {
    assertDefined(tNode, 'previousOrParentTNode should exist!');
    assertDefined((/** @type {?} */ (tNode)).parent, 'previousOrParentTNode should have a parent');
}
/**
 * @param {?} lView
 * @param {?} index
 * @param {?=} arr
 * @return {?}
 */
export function assertDataNext(lView, index, arr) {
    if (arr == null)
        arr = lView;
    assertEqual(arr.length, index, `index ${index} expected to be at the end of arr (length ${arr.length})`);
}
/**
 * @param {?} value
 * @return {?}
 */
export function assertLContainerOrUndefined(value) {
    value && assertEqual(isLContainer(value), true, 'Expecting LContainer or undefined or null');
}
/**
 * @param {?} value
 * @return {?}
 */
export function assertLContainer(value) {
    assertDefined(value, 'LContainer must be defined');
    assertEqual(isLContainer(value), true, 'Expecting LContainer');
}
/**
 * @param {?} value
 * @return {?}
 */
export function assertLViewOrUndefined(value) {
    value && assertEqual(isLView(value), true, 'Expecting LView or undefined or null');
}
/**
 * @param {?} value
 * @return {?}
 */
export function assertLView(value) {
    assertDefined(value, 'LView must be defined');
    assertEqual(isLView(value), true, 'Expecting LView');
}
/**
 * @param {?} tView
 * @param {?=} errMessage
 * @return {?}
 */
export function assertFirstCreatePass(tView, errMessage) {
    assertEqual(tView.firstCreatePass, true, errMessage || 'Should only be called in first create pass.');
}
/**
 * @param {?} tView
 * @param {?=} errMessage
 * @return {?}
 */
export function assertFirstUpdatePass(tView, errMessage) {
    assertEqual(tView.firstUpdatePass, true, errMessage || 'Should only be called in first update pass.');
}
/**
 * This is a basic sanity check that an object is probably a directive def. DirectiveDef is
 * an interface, so we can't do a direct instanceof check.
 * @param {?} obj
 * @return {?}
 */
export function assertDirectiveDef(obj) {
    if (obj.type === undefined || obj.selectors == undefined || obj.inputs === undefined) {
        throwError(`Expected a DirectiveDef/ComponentDef and this object does not seem to have the expected shape.`);
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXNzZXJ0LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvcmVuZGVyMy9hc3NlcnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBUUEsT0FBTyxFQUFDLGFBQWEsRUFBRSxXQUFXLEVBQUUsVUFBVSxFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFFdEUsT0FBTyxFQUFDLGVBQWUsRUFBRSxjQUFjLEVBQUMsTUFBTSxjQUFjLENBQUM7QUFFN0QsT0FBTyxFQUFDLFlBQVksRUFBRSxPQUFPLEVBQUMsTUFBTSwwQkFBMEIsQ0FBQztBQUMvRCxPQUFPLEVBQVEsS0FBSyxFQUFRLE1BQU0sbUJBQW1CLENBQUM7Ozs7OztBQUV0RCxNQUFNLFVBQVUsbUJBQW1CLENBQUMsS0FBWSxFQUFFLEtBQVk7SUFDNUQsS0FBSyxDQUFDLGNBQWMsQ0FBQyxRQUFRLENBQUMsSUFBSSxXQUFXLENBQ1AsQ0FBQyxtQkFBQSxtQkFBQSxLQUFLLEVBQU8sRUFBa0IsQ0FBQyxDQUFDLE1BQU0sRUFBRSxLQUFLLENBQUMsS0FBSyxDQUFDLEVBQ3JELDJDQUEyQyxDQUFDLENBQUM7QUFDckYsQ0FBQzs7Ozs7O0FBRUQsTUFBTSxVQUFVLG1CQUFtQixDQUMvQixNQUFXLEVBQ1gsTUFBYywwRUFBMEU7SUFDMUYsSUFBSSxDQUFDLGVBQWUsQ0FBQyxNQUFNLENBQUMsRUFBRTtRQUM1QixVQUFVLENBQUMsR0FBRyxDQUFDLENBQUM7S0FDakI7QUFDSCxDQUFDOzs7Ozs7QUFFRCxNQUFNLFVBQVUsa0JBQWtCLENBQzlCLE1BQVcsRUFDWCxNQUFjLHlFQUF5RTtJQUN6RixJQUFJLENBQUMsY0FBYyxDQUFDLE1BQU0sQ0FBQyxFQUFFO1FBQzNCLFVBQVUsQ0FBQyxHQUFHLENBQUMsQ0FBQztLQUNqQjtBQUNILENBQUM7Ozs7O0FBRUQsTUFBTSxVQUFVLHNCQUFzQixDQUFDLFFBQWlCO0lBQ3RELFdBQVcsQ0FBQyxRQUFRLEVBQUUsSUFBSSxFQUFFLDBDQUEwQyxDQUFDLENBQUM7QUFDMUUsQ0FBQzs7Ozs7QUFFRCxNQUFNLFVBQVUsZUFBZSxDQUFDLEtBQW1CO0lBQ2pELGFBQWEsQ0FBQyxLQUFLLEVBQUUscUNBQXFDLENBQUMsQ0FBQztJQUM1RCxhQUFhLENBQUMsbUJBQUEsS0FBSyxFQUFFLENBQUMsTUFBTSxFQUFFLDRDQUE0QyxDQUFDLENBQUM7QUFDOUUsQ0FBQzs7Ozs7OztBQUVELE1BQU0sVUFBVSxjQUFjLENBQUMsS0FBWSxFQUFFLEtBQWEsRUFBRSxHQUFXO0lBQ3JFLElBQUksR0FBRyxJQUFJLElBQUk7UUFBRSxHQUFHLEdBQUcsS0FBSyxDQUFDO0lBQzdCLFdBQVcsQ0FDUCxHQUFHLENBQUMsTUFBTSxFQUFFLEtBQUssRUFBRSxTQUFTLEtBQUssNkNBQTZDLEdBQUcsQ0FBQyxNQUFNLEdBQUcsQ0FBQyxDQUFDO0FBQ25HLENBQUM7Ozs7O0FBRUQsTUFBTSxVQUFVLDJCQUEyQixDQUFDLEtBQVU7SUFDcEQsS0FBSyxJQUFJLFdBQVcsQ0FBQyxZQUFZLENBQUMsS0FBSyxDQUFDLEVBQUUsSUFBSSxFQUFFLDJDQUEyQyxDQUFDLENBQUM7QUFDL0YsQ0FBQzs7Ozs7QUFFRCxNQUFNLFVBQVUsZ0JBQWdCLENBQUMsS0FBVTtJQUN6QyxhQUFhLENBQUMsS0FBSyxFQUFFLDRCQUE0QixDQUFDLENBQUM7SUFDbkQsV0FBVyxDQUFDLFlBQVksQ0FBQyxLQUFLLENBQUMsRUFBRSxJQUFJLEVBQUUsc0JBQXNCLENBQUMsQ0FBQztBQUNqRSxDQUFDOzs7OztBQUVELE1BQU0sVUFBVSxzQkFBc0IsQ0FBQyxLQUFVO0lBQy9DLEtBQUssSUFBSSxXQUFXLENBQUMsT0FBTyxDQUFDLEtBQUssQ0FBQyxFQUFFLElBQUksRUFBRSxzQ0FBc0MsQ0FBQyxDQUFDO0FBQ3JGLENBQUM7Ozs7O0FBRUQsTUFBTSxVQUFVLFdBQVcsQ0FBQyxLQUFVO0lBQ3BDLGFBQWEsQ0FBQyxLQUFLLEVBQUUsdUJBQXVCLENBQUMsQ0FBQztJQUM5QyxXQUFXLENBQUMsT0FBTyxDQUFDLEtBQUssQ0FBQyxFQUFFLElBQUksRUFBRSxpQkFBaUIsQ0FBQyxDQUFDO0FBQ3ZELENBQUM7Ozs7OztBQUVELE1BQU0sVUFBVSxxQkFBcUIsQ0FBQyxLQUFZLEVBQUUsVUFBbUI7SUFDckUsV0FBVyxDQUNQLEtBQUssQ0FBQyxlQUFlLEVBQUUsSUFBSSxFQUFFLFVBQVUsSUFBSSw2Q0FBNkMsQ0FBQyxDQUFDO0FBQ2hHLENBQUM7Ozs7OztBQUVELE1BQU0sVUFBVSxxQkFBcUIsQ0FBQyxLQUFZLEVBQUUsVUFBbUI7SUFDckUsV0FBVyxDQUNQLEtBQUssQ0FBQyxlQUFlLEVBQUUsSUFBSSxFQUFFLFVBQVUsSUFBSSw2Q0FBNkMsQ0FBQyxDQUFDO0FBQ2hHLENBQUM7Ozs7Ozs7QUFNRCxNQUFNLFVBQVUsa0JBQWtCLENBQUMsR0FBUTtJQUN6QyxJQUFJLEdBQUcsQ0FBQyxJQUFJLEtBQUssU0FBUyxJQUFJLEdBQUcsQ0FBQyxTQUFTLElBQUksU0FBUyxJQUFJLEdBQUcsQ0FBQyxNQUFNLEtBQUssU0FBUyxFQUFFO1FBQ3BGLFVBQVUsQ0FDTixnR0FBZ0csQ0FBQyxDQUFDO0tBQ3ZHO0FBQ0gsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHthc3NlcnREZWZpbmVkLCBhc3NlcnRFcXVhbCwgdGhyb3dFcnJvcn0gZnJvbSAnLi4vdXRpbC9hc3NlcnQnO1xuXG5pbXBvcnQge2dldENvbXBvbmVudERlZiwgZ2V0TmdNb2R1bGVEZWZ9IGZyb20gJy4vZGVmaW5pdGlvbic7XG5pbXBvcnQge1ROb2RlfSBmcm9tICcuL2ludGVyZmFjZXMvbm9kZSc7XG5pbXBvcnQge2lzTENvbnRhaW5lciwgaXNMVmlld30gZnJvbSAnLi9pbnRlcmZhY2VzL3R5cGVfY2hlY2tzJztcbmltcG9ydCB7TFZpZXcsIFRWSUVXLCBUVmlld30gZnJvbSAnLi9pbnRlcmZhY2VzL3ZpZXcnO1xuXG5leHBvcnQgZnVuY3Rpb24gYXNzZXJ0VE5vZGVGb3JMVmlldyh0Tm9kZTogVE5vZGUsIGxWaWV3OiBMVmlldykge1xuICB0Tm9kZS5oYXNPd25Qcm9wZXJ0eSgndFZpZXdfJykgJiYgYXNzZXJ0RXF1YWwoXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKHROb2RlIGFzIGFueSBhc3t0Vmlld186IFRWaWV3fSkudFZpZXdfLCBsVmlld1tUVklFV10sXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJ1RoaXMgVE5vZGUgZG9lcyBub3QgYmVsb25nIHRvIHRoaXMgTFZpZXcuJyk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBhc3NlcnRDb21wb25lbnRUeXBlKFxuICAgIGFjdHVhbDogYW55LFxuICAgIG1zZzogc3RyaW5nID0gJ1R5cGUgcGFzc2VkIGluIGlzIG5vdCBDb21wb25lbnRUeXBlLCBpdCBkb2VzIG5vdCBoYXZlIFxcJ8m1Y21wXFwnIHByb3BlcnR5LicpIHtcbiAgaWYgKCFnZXRDb21wb25lbnREZWYoYWN0dWFsKSkge1xuICAgIHRocm93RXJyb3IobXNnKTtcbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gYXNzZXJ0TmdNb2R1bGVUeXBlKFxuICAgIGFjdHVhbDogYW55LFxuICAgIG1zZzogc3RyaW5nID0gJ1R5cGUgcGFzc2VkIGluIGlzIG5vdCBOZ01vZHVsZVR5cGUsIGl0IGRvZXMgbm90IGhhdmUgXFwnybVtb2RcXCcgcHJvcGVydHkuJykge1xuICBpZiAoIWdldE5nTW9kdWxlRGVmKGFjdHVhbCkpIHtcbiAgICB0aHJvd0Vycm9yKG1zZyk7XG4gIH1cbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGFzc2VydFByZXZpb3VzSXNQYXJlbnQoaXNQYXJlbnQ6IGJvb2xlYW4pIHtcbiAgYXNzZXJ0RXF1YWwoaXNQYXJlbnQsIHRydWUsICdwcmV2aW91c09yUGFyZW50VE5vZGUgc2hvdWxkIGJlIGEgcGFyZW50Jyk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBhc3NlcnRIYXNQYXJlbnQodE5vZGU6IFROb2RlIHwgbnVsbCkge1xuICBhc3NlcnREZWZpbmVkKHROb2RlLCAncHJldmlvdXNPclBhcmVudFROb2RlIHNob3VsZCBleGlzdCEnKTtcbiAgYXNzZXJ0RGVmaW5lZCh0Tm9kZSAhLnBhcmVudCwgJ3ByZXZpb3VzT3JQYXJlbnRUTm9kZSBzaG91bGQgaGF2ZSBhIHBhcmVudCcpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gYXNzZXJ0RGF0YU5leHQobFZpZXc6IExWaWV3LCBpbmRleDogbnVtYmVyLCBhcnI/OiBhbnlbXSkge1xuICBpZiAoYXJyID09IG51bGwpIGFyciA9IGxWaWV3O1xuICBhc3NlcnRFcXVhbChcbiAgICAgIGFyci5sZW5ndGgsIGluZGV4LCBgaW5kZXggJHtpbmRleH0gZXhwZWN0ZWQgdG8gYmUgYXQgdGhlIGVuZCBvZiBhcnIgKGxlbmd0aCAke2Fyci5sZW5ndGh9KWApO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gYXNzZXJ0TENvbnRhaW5lck9yVW5kZWZpbmVkKHZhbHVlOiBhbnkpOiB2b2lkIHtcbiAgdmFsdWUgJiYgYXNzZXJ0RXF1YWwoaXNMQ29udGFpbmVyKHZhbHVlKSwgdHJ1ZSwgJ0V4cGVjdGluZyBMQ29udGFpbmVyIG9yIHVuZGVmaW5lZCBvciBudWxsJyk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBhc3NlcnRMQ29udGFpbmVyKHZhbHVlOiBhbnkpOiB2b2lkIHtcbiAgYXNzZXJ0RGVmaW5lZCh2YWx1ZSwgJ0xDb250YWluZXIgbXVzdCBiZSBkZWZpbmVkJyk7XG4gIGFzc2VydEVxdWFsKGlzTENvbnRhaW5lcih2YWx1ZSksIHRydWUsICdFeHBlY3RpbmcgTENvbnRhaW5lcicpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gYXNzZXJ0TFZpZXdPclVuZGVmaW5lZCh2YWx1ZTogYW55KTogdm9pZCB7XG4gIHZhbHVlICYmIGFzc2VydEVxdWFsKGlzTFZpZXcodmFsdWUpLCB0cnVlLCAnRXhwZWN0aW5nIExWaWV3IG9yIHVuZGVmaW5lZCBvciBudWxsJyk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBhc3NlcnRMVmlldyh2YWx1ZTogYW55KSB7XG4gIGFzc2VydERlZmluZWQodmFsdWUsICdMVmlldyBtdXN0IGJlIGRlZmluZWQnKTtcbiAgYXNzZXJ0RXF1YWwoaXNMVmlldyh2YWx1ZSksIHRydWUsICdFeHBlY3RpbmcgTFZpZXcnKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGFzc2VydEZpcnN0Q3JlYXRlUGFzcyh0VmlldzogVFZpZXcsIGVyck1lc3NhZ2U/OiBzdHJpbmcpIHtcbiAgYXNzZXJ0RXF1YWwoXG4gICAgICB0Vmlldy5maXJzdENyZWF0ZVBhc3MsIHRydWUsIGVyck1lc3NhZ2UgfHwgJ1Nob3VsZCBvbmx5IGJlIGNhbGxlZCBpbiBmaXJzdCBjcmVhdGUgcGFzcy4nKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGFzc2VydEZpcnN0VXBkYXRlUGFzcyh0VmlldzogVFZpZXcsIGVyck1lc3NhZ2U/OiBzdHJpbmcpIHtcbiAgYXNzZXJ0RXF1YWwoXG4gICAgICB0Vmlldy5maXJzdFVwZGF0ZVBhc3MsIHRydWUsIGVyck1lc3NhZ2UgfHwgJ1Nob3VsZCBvbmx5IGJlIGNhbGxlZCBpbiBmaXJzdCB1cGRhdGUgcGFzcy4nKTtcbn1cblxuLyoqXG4gKiBUaGlzIGlzIGEgYmFzaWMgc2FuaXR5IGNoZWNrIHRoYXQgYW4gb2JqZWN0IGlzIHByb2JhYmx5IGEgZGlyZWN0aXZlIGRlZi4gRGlyZWN0aXZlRGVmIGlzXG4gKiBhbiBpbnRlcmZhY2UsIHNvIHdlIGNhbid0IGRvIGEgZGlyZWN0IGluc3RhbmNlb2YgY2hlY2suXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBhc3NlcnREaXJlY3RpdmVEZWYob2JqOiBhbnkpIHtcbiAgaWYgKG9iai50eXBlID09PSB1bmRlZmluZWQgfHwgb2JqLnNlbGVjdG9ycyA9PSB1bmRlZmluZWQgfHwgb2JqLmlucHV0cyA9PT0gdW5kZWZpbmVkKSB7XG4gICAgdGhyb3dFcnJvcihcbiAgICAgICAgYEV4cGVjdGVkIGEgRGlyZWN0aXZlRGVmL0NvbXBvbmVudERlZiBhbmQgdGhpcyBvYmplY3QgZG9lcyBub3Qgc2VlbSB0byBoYXZlIHRoZSBleHBlY3RlZCBzaGFwZS5gKTtcbiAgfVxufVxuIl19