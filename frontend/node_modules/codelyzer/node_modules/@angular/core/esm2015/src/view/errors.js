/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/view/errors.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { getDebugContext } from '../errors';
import { ERROR_DEBUG_CONTEXT, ERROR_LOGGER } from '../util/errors';
/**
 * @param {?} context
 * @param {?} oldValue
 * @param {?} currValue
 * @param {?} isFirstCheck
 * @return {?}
 */
export function expressionChangedAfterItHasBeenCheckedError(context, oldValue, currValue, isFirstCheck) {
    /** @type {?} */
    let msg = `ExpressionChangedAfterItHasBeenCheckedError: Expression has changed after it was checked. Previous value: '${oldValue}'. Current value: '${currValue}'.`;
    if (isFirstCheck) {
        msg +=
            ` It seems like the view has been created after its parent and its children have been dirty checked.` +
                ` Has it been created in a change detection hook ?`;
    }
    return viewDebugError(msg, context);
}
/**
 * @param {?} err
 * @param {?} context
 * @return {?}
 */
export function viewWrappedDebugError(err, context) {
    if (!(err instanceof Error)) {
        // errors that are not Error instances don't have a stack,
        // so it is ok to wrap them into a new Error object...
        err = new Error(err.toString());
    }
    _addDebugContext(err, context);
    return err;
}
/**
 * @param {?} msg
 * @param {?} context
 * @return {?}
 */
export function viewDebugError(msg, context) {
    /** @type {?} */
    const err = new Error(msg);
    _addDebugContext(err, context);
    return err;
}
/**
 * @param {?} err
 * @param {?} context
 * @return {?}
 */
function _addDebugContext(err, context) {
    ((/** @type {?} */ (err)))[ERROR_DEBUG_CONTEXT] = context;
    ((/** @type {?} */ (err)))[ERROR_LOGGER] = context.logError.bind(context);
}
/**
 * @param {?} err
 * @return {?}
 */
export function isViewDebugError(err) {
    return !!getDebugContext(err);
}
/**
 * @param {?} action
 * @return {?}
 */
export function viewDestroyedError(action) {
    return new Error(`ViewDestroyedError: Attempt to use a destroyed view: ${action}`);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXJyb3JzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvdmlldy9lcnJvcnMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBUUEsT0FBTyxFQUFDLGVBQWUsRUFBQyxNQUFNLFdBQVcsQ0FBQztBQUMxQyxPQUFPLEVBQUMsbUJBQW1CLEVBQUUsWUFBWSxFQUFDLE1BQU0sZ0JBQWdCLENBQUM7Ozs7Ozs7O0FBSWpFLE1BQU0sVUFBVSwyQ0FBMkMsQ0FDdkQsT0FBcUIsRUFBRSxRQUFhLEVBQUUsU0FBYyxFQUFFLFlBQXFCOztRQUN6RSxHQUFHLEdBQ0gsOEdBQThHLFFBQVEsc0JBQXNCLFNBQVMsSUFBSTtJQUM3SixJQUFJLFlBQVksRUFBRTtRQUNoQixHQUFHO1lBQ0MscUdBQXFHO2dCQUNyRyxtREFBbUQsQ0FBQztLQUN6RDtJQUNELE9BQU8sY0FBYyxDQUFDLEdBQUcsRUFBRSxPQUFPLENBQUMsQ0FBQztBQUN0QyxDQUFDOzs7Ozs7QUFFRCxNQUFNLFVBQVUscUJBQXFCLENBQUMsR0FBUSxFQUFFLE9BQXFCO0lBQ25FLElBQUksQ0FBQyxDQUFDLEdBQUcsWUFBWSxLQUFLLENBQUMsRUFBRTtRQUMzQiwwREFBMEQ7UUFDMUQsc0RBQXNEO1FBQ3RELEdBQUcsR0FBRyxJQUFJLEtBQUssQ0FBQyxHQUFHLENBQUMsUUFBUSxFQUFFLENBQUMsQ0FBQztLQUNqQztJQUNELGdCQUFnQixDQUFDLEdBQUcsRUFBRSxPQUFPLENBQUMsQ0FBQztJQUMvQixPQUFPLEdBQUcsQ0FBQztBQUNiLENBQUM7Ozs7OztBQUVELE1BQU0sVUFBVSxjQUFjLENBQUMsR0FBVyxFQUFFLE9BQXFCOztVQUN6RCxHQUFHLEdBQUcsSUFBSSxLQUFLLENBQUMsR0FBRyxDQUFDO0lBQzFCLGdCQUFnQixDQUFDLEdBQUcsRUFBRSxPQUFPLENBQUMsQ0FBQztJQUMvQixPQUFPLEdBQUcsQ0FBQztBQUNiLENBQUM7Ozs7OztBQUVELFNBQVMsZ0JBQWdCLENBQUMsR0FBVSxFQUFFLE9BQXFCO0lBQ3pELENBQUMsbUJBQUEsR0FBRyxFQUFPLENBQUMsQ0FBQyxtQkFBbUIsQ0FBQyxHQUFHLE9BQU8sQ0FBQztJQUM1QyxDQUFDLG1CQUFBLEdBQUcsRUFBTyxDQUFDLENBQUMsWUFBWSxDQUFDLEdBQUcsT0FBTyxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUM7QUFDOUQsQ0FBQzs7Ozs7QUFFRCxNQUFNLFVBQVUsZ0JBQWdCLENBQUMsR0FBVTtJQUN6QyxPQUFPLENBQUMsQ0FBQyxlQUFlLENBQUMsR0FBRyxDQUFDLENBQUM7QUFDaEMsQ0FBQzs7Ozs7QUFFRCxNQUFNLFVBQVUsa0JBQWtCLENBQUMsTUFBYztJQUMvQyxPQUFPLElBQUksS0FBSyxDQUFDLHdEQUF3RCxNQUFNLEVBQUUsQ0FBQyxDQUFDO0FBQ3JGLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Z2V0RGVidWdDb250ZXh0fSBmcm9tICcuLi9lcnJvcnMnO1xuaW1wb3J0IHtFUlJPUl9ERUJVR19DT05URVhULCBFUlJPUl9MT0dHRVJ9IGZyb20gJy4uL3V0aWwvZXJyb3JzJztcblxuaW1wb3J0IHtEZWJ1Z0NvbnRleHR9IGZyb20gJy4vdHlwZXMnO1xuXG5leHBvcnQgZnVuY3Rpb24gZXhwcmVzc2lvbkNoYW5nZWRBZnRlckl0SGFzQmVlbkNoZWNrZWRFcnJvcihcbiAgICBjb250ZXh0OiBEZWJ1Z0NvbnRleHQsIG9sZFZhbHVlOiBhbnksIGN1cnJWYWx1ZTogYW55LCBpc0ZpcnN0Q2hlY2s6IGJvb2xlYW4pOiBFcnJvciB7XG4gIGxldCBtc2cgPVxuICAgICAgYEV4cHJlc3Npb25DaGFuZ2VkQWZ0ZXJJdEhhc0JlZW5DaGVja2VkRXJyb3I6IEV4cHJlc3Npb24gaGFzIGNoYW5nZWQgYWZ0ZXIgaXQgd2FzIGNoZWNrZWQuIFByZXZpb3VzIHZhbHVlOiAnJHtvbGRWYWx1ZX0nLiBDdXJyZW50IHZhbHVlOiAnJHtjdXJyVmFsdWV9Jy5gO1xuICBpZiAoaXNGaXJzdENoZWNrKSB7XG4gICAgbXNnICs9XG4gICAgICAgIGAgSXQgc2VlbXMgbGlrZSB0aGUgdmlldyBoYXMgYmVlbiBjcmVhdGVkIGFmdGVyIGl0cyBwYXJlbnQgYW5kIGl0cyBjaGlsZHJlbiBoYXZlIGJlZW4gZGlydHkgY2hlY2tlZC5gICtcbiAgICAgICAgYCBIYXMgaXQgYmVlbiBjcmVhdGVkIGluIGEgY2hhbmdlIGRldGVjdGlvbiBob29rID9gO1xuICB9XG4gIHJldHVybiB2aWV3RGVidWdFcnJvcihtc2csIGNvbnRleHQpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gdmlld1dyYXBwZWREZWJ1Z0Vycm9yKGVycjogYW55LCBjb250ZXh0OiBEZWJ1Z0NvbnRleHQpOiBFcnJvciB7XG4gIGlmICghKGVyciBpbnN0YW5jZW9mIEVycm9yKSkge1xuICAgIC8vIGVycm9ycyB0aGF0IGFyZSBub3QgRXJyb3IgaW5zdGFuY2VzIGRvbid0IGhhdmUgYSBzdGFjayxcbiAgICAvLyBzbyBpdCBpcyBvayB0byB3cmFwIHRoZW0gaW50byBhIG5ldyBFcnJvciBvYmplY3QuLi5cbiAgICBlcnIgPSBuZXcgRXJyb3IoZXJyLnRvU3RyaW5nKCkpO1xuICB9XG4gIF9hZGREZWJ1Z0NvbnRleHQoZXJyLCBjb250ZXh0KTtcbiAgcmV0dXJuIGVycjtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHZpZXdEZWJ1Z0Vycm9yKG1zZzogc3RyaW5nLCBjb250ZXh0OiBEZWJ1Z0NvbnRleHQpOiBFcnJvciB7XG4gIGNvbnN0IGVyciA9IG5ldyBFcnJvcihtc2cpO1xuICBfYWRkRGVidWdDb250ZXh0KGVyciwgY29udGV4dCk7XG4gIHJldHVybiBlcnI7XG59XG5cbmZ1bmN0aW9uIF9hZGREZWJ1Z0NvbnRleHQoZXJyOiBFcnJvciwgY29udGV4dDogRGVidWdDb250ZXh0KSB7XG4gIChlcnIgYXMgYW55KVtFUlJPUl9ERUJVR19DT05URVhUXSA9IGNvbnRleHQ7XG4gIChlcnIgYXMgYW55KVtFUlJPUl9MT0dHRVJdID0gY29udGV4dC5sb2dFcnJvci5iaW5kKGNvbnRleHQpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaXNWaWV3RGVidWdFcnJvcihlcnI6IEVycm9yKTogYm9vbGVhbiB7XG4gIHJldHVybiAhIWdldERlYnVnQ29udGV4dChlcnIpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gdmlld0Rlc3Ryb3llZEVycm9yKGFjdGlvbjogc3RyaW5nKTogRXJyb3Ige1xuICByZXR1cm4gbmV3IEVycm9yKGBWaWV3RGVzdHJveWVkRXJyb3I6IEF0dGVtcHQgdG8gdXNlIGEgZGVzdHJveWVkIHZpZXc6ICR7YWN0aW9ufWApO1xufVxuIl19