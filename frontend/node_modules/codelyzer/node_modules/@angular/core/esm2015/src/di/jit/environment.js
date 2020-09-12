/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/di/jit/environment.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { isForwardRef, resolveForwardRef } from '../forward_ref';
import { ɵɵinject, ɵɵinvalidFactoryDep } from '../injector_compatibility';
import { getInjectableDef, getInjectorDef, ɵɵdefineInjectable, ɵɵdefineInjector } from '../interface/defs';
/**
 * A mapping of the \@angular/core API surface used in generated expressions to the actual symbols.
 *
 * This should be kept up to date with the public exports of \@angular/core.
 * @type {?}
 */
export const angularCoreDiEnv = {
    'ɵɵdefineInjectable': ɵɵdefineInjectable,
    'ɵɵdefineInjector': ɵɵdefineInjector,
    'ɵɵinject': ɵɵinject,
    'ɵɵgetFactoryOf': getFactoryOf,
    'ɵɵinvalidFactoryDep': ɵɵinvalidFactoryDep,
};
/**
 * @template T
 * @param {?} type
 * @return {?}
 */
function getFactoryOf(type) {
    /** @type {?} */
    const typeAny = (/** @type {?} */ (type));
    if (isForwardRef(type)) {
        return (/** @type {?} */ (((/**
         * @return {?}
         */
        () => {
            /** @type {?} */
            const factory = getFactoryOf(resolveForwardRef(typeAny));
            return factory ? factory() : null;
        }))));
    }
    /** @type {?} */
    const def = getInjectableDef(typeAny) || getInjectorDef(typeAny);
    if (!def || def.factory === undefined) {
        return null;
    }
    return def.factory;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZW52aXJvbm1lbnQuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9kaS9qaXQvZW52aXJvbm1lbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBU0EsT0FBTyxFQUFDLFlBQVksRUFBRSxpQkFBaUIsRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBQy9ELE9BQU8sRUFBQyxRQUFRLEVBQUUsbUJBQW1CLEVBQUMsTUFBTSwyQkFBMkIsQ0FBQztBQUN4RSxPQUFPLEVBQUMsZ0JBQWdCLEVBQUUsY0FBYyxFQUFFLGtCQUFrQixFQUFFLGdCQUFnQixFQUFDLE1BQU0sbUJBQW1CLENBQUM7Ozs7Ozs7QUFTekcsTUFBTSxPQUFPLGdCQUFnQixHQUErQjtJQUMxRCxvQkFBb0IsRUFBRSxrQkFBa0I7SUFDeEMsa0JBQWtCLEVBQUUsZ0JBQWdCO0lBQ3BDLFVBQVUsRUFBRSxRQUFRO0lBQ3BCLGdCQUFnQixFQUFFLFlBQVk7SUFDOUIscUJBQXFCLEVBQUUsbUJBQW1CO0NBQzNDOzs7Ozs7QUFFRCxTQUFTLFlBQVksQ0FBSSxJQUFlOztVQUNoQyxPQUFPLEdBQUcsbUJBQUEsSUFBSSxFQUFPO0lBRTNCLElBQUksWUFBWSxDQUFDLElBQUksQ0FBQyxFQUFFO1FBQ3RCLE9BQU8sbUJBQUE7OztRQUFDLEdBQUcsRUFBRTs7a0JBQ0wsT0FBTyxHQUFHLFlBQVksQ0FBSSxpQkFBaUIsQ0FBQyxPQUFPLENBQUMsQ0FBQztZQUMzRCxPQUFPLE9BQU8sQ0FBQyxDQUFDLENBQUMsT0FBTyxFQUFFLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQztRQUNwQyxDQUFDLEVBQUMsRUFBTyxDQUFDO0tBQ1g7O1VBRUssR0FBRyxHQUFHLGdCQUFnQixDQUFJLE9BQU8sQ0FBQyxJQUFJLGNBQWMsQ0FBSSxPQUFPLENBQUM7SUFDdEUsSUFBSSxDQUFDLEdBQUcsSUFBSSxHQUFHLENBQUMsT0FBTyxLQUFLLFNBQVMsRUFBRTtRQUNyQyxPQUFPLElBQUksQ0FBQztLQUNiO0lBQ0QsT0FBTyxHQUFHLENBQUMsT0FBTyxDQUFDO0FBQ3JCLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7VHlwZX0gZnJvbSAnLi4vLi4vaW50ZXJmYWNlL3R5cGUnO1xuaW1wb3J0IHtpc0ZvcndhcmRSZWYsIHJlc29sdmVGb3J3YXJkUmVmfSBmcm9tICcuLi9mb3J3YXJkX3JlZic7XG5pbXBvcnQge8m1ybVpbmplY3QsIMm1ybVpbnZhbGlkRmFjdG9yeURlcH0gZnJvbSAnLi4vaW5qZWN0b3JfY29tcGF0aWJpbGl0eSc7XG5pbXBvcnQge2dldEluamVjdGFibGVEZWYsIGdldEluamVjdG9yRGVmLCDJtcm1ZGVmaW5lSW5qZWN0YWJsZSwgybXJtWRlZmluZUluamVjdG9yfSBmcm9tICcuLi9pbnRlcmZhY2UvZGVmcyc7XG5cblxuXG4vKipcbiAqIEEgbWFwcGluZyBvZiB0aGUgQGFuZ3VsYXIvY29yZSBBUEkgc3VyZmFjZSB1c2VkIGluIGdlbmVyYXRlZCBleHByZXNzaW9ucyB0byB0aGUgYWN0dWFsIHN5bWJvbHMuXG4gKlxuICogVGhpcyBzaG91bGQgYmUga2VwdCB1cCB0byBkYXRlIHdpdGggdGhlIHB1YmxpYyBleHBvcnRzIG9mIEBhbmd1bGFyL2NvcmUuXG4gKi9cbmV4cG9ydCBjb25zdCBhbmd1bGFyQ29yZURpRW52OiB7W25hbWU6IHN0cmluZ106IEZ1bmN0aW9ufSA9IHtcbiAgJ8m1ybVkZWZpbmVJbmplY3RhYmxlJzogybXJtWRlZmluZUluamVjdGFibGUsXG4gICfJtcm1ZGVmaW5lSW5qZWN0b3InOiDJtcm1ZGVmaW5lSW5qZWN0b3IsXG4gICfJtcm1aW5qZWN0JzogybXJtWluamVjdCxcbiAgJ8m1ybVnZXRGYWN0b3J5T2YnOiBnZXRGYWN0b3J5T2YsXG4gICfJtcm1aW52YWxpZEZhY3RvcnlEZXAnOiDJtcm1aW52YWxpZEZhY3RvcnlEZXAsXG59O1xuXG5mdW5jdGlvbiBnZXRGYWN0b3J5T2Y8VD4odHlwZTogVHlwZTxhbnk+KTogKCh0eXBlPzogVHlwZTxUPikgPT4gVCl8bnVsbCB7XG4gIGNvbnN0IHR5cGVBbnkgPSB0eXBlIGFzIGFueTtcblxuICBpZiAoaXNGb3J3YXJkUmVmKHR5cGUpKSB7XG4gICAgcmV0dXJuICgoKSA9PiB7XG4gICAgICBjb25zdCBmYWN0b3J5ID0gZ2V0RmFjdG9yeU9mPFQ+KHJlc29sdmVGb3J3YXJkUmVmKHR5cGVBbnkpKTtcbiAgICAgIHJldHVybiBmYWN0b3J5ID8gZmFjdG9yeSgpIDogbnVsbDtcbiAgICB9KSBhcyBhbnk7XG4gIH1cblxuICBjb25zdCBkZWYgPSBnZXRJbmplY3RhYmxlRGVmPFQ+KHR5cGVBbnkpIHx8IGdldEluamVjdG9yRGVmPFQ+KHR5cGVBbnkpO1xuICBpZiAoIWRlZiB8fCBkZWYuZmFjdG9yeSA9PT0gdW5kZWZpbmVkKSB7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgcmV0dXJuIGRlZi5mYWN0b3J5O1xufVxuIl19