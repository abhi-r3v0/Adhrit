/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/testing/src/ng_zone_mock.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { EventEmitter, Injectable, NgZone } from '@angular/core';
/**
 * A mock implementation of {\@link NgZone}.
 */
export class MockNgZone extends NgZone {
    constructor() {
        super({ enableLongStackTrace: false, shouldCoalesceEventChangeDetection: false });
        this.onStable = new EventEmitter(false);
    }
    /**
     * @param {?} fn
     * @return {?}
     */
    run(fn) { return fn(); }
    /**
     * @param {?} fn
     * @return {?}
     */
    runOutsideAngular(fn) { return fn(); }
    /**
     * @return {?}
     */
    simulateZoneExit() { this.onStable.emit(null); }
}
MockNgZone.decorators = [
    { type: Injectable }
];
/** @nocollapse */
MockNgZone.ctorParameters = () => [];
if (false) {
    /** @type {?} */
    MockNgZone.prototype.onStable;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmdfem9uZV9tb2NrLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS90ZXN0aW5nL3NyYy9uZ196b25lX21vY2sudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBUUEsT0FBTyxFQUFDLFlBQVksRUFBRSxVQUFVLEVBQUUsTUFBTSxFQUFDLE1BQU0sZUFBZSxDQUFDOzs7O0FBTy9ELE1BQU0sT0FBTyxVQUFXLFNBQVEsTUFBTTtJQUdwQztRQUFnQixLQUFLLENBQUMsRUFBQyxvQkFBb0IsRUFBRSxLQUFLLEVBQUUsa0NBQWtDLEVBQUUsS0FBSyxFQUFDLENBQUMsQ0FBQztRQUZoRyxhQUFRLEdBQXNCLElBQUksWUFBWSxDQUFDLEtBQUssQ0FBQyxDQUFDO0lBRTJDLENBQUM7Ozs7O0lBRWxHLEdBQUcsQ0FBQyxFQUFZLElBQVMsT0FBTyxFQUFFLEVBQUUsQ0FBQyxDQUFDLENBQUM7Ozs7O0lBRXZDLGlCQUFpQixDQUFDLEVBQVksSUFBUyxPQUFPLEVBQUUsRUFBRSxDQUFDLENBQUMsQ0FBQzs7OztJQUVyRCxnQkFBZ0IsS0FBVyxJQUFJLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUM7OztZQVZ2RCxVQUFVOzs7Ozs7SUFFVCw4QkFBc0QiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7RXZlbnRFbWl0dGVyLCBJbmplY3RhYmxlLCBOZ1pvbmV9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG5cbi8qKlxuICogQSBtb2NrIGltcGxlbWVudGF0aW9uIG9mIHtAbGluayBOZ1pvbmV9LlxuICovXG5ASW5qZWN0YWJsZSgpXG5leHBvcnQgY2xhc3MgTW9ja05nWm9uZSBleHRlbmRzIE5nWm9uZSB7XG4gIG9uU3RhYmxlOiBFdmVudEVtaXR0ZXI8YW55PiA9IG5ldyBFdmVudEVtaXR0ZXIoZmFsc2UpO1xuXG4gIGNvbnN0cnVjdG9yKCkgeyBzdXBlcih7ZW5hYmxlTG9uZ1N0YWNrVHJhY2U6IGZhbHNlLCBzaG91bGRDb2FsZXNjZUV2ZW50Q2hhbmdlRGV0ZWN0aW9uOiBmYWxzZX0pOyB9XG5cbiAgcnVuKGZuOiBGdW5jdGlvbik6IGFueSB7IHJldHVybiBmbigpOyB9XG5cbiAgcnVuT3V0c2lkZUFuZ3VsYXIoZm46IEZ1bmN0aW9uKTogYW55IHsgcmV0dXJuIGZuKCk7IH1cblxuICBzaW11bGF0ZVpvbmVFeGl0KCk6IHZvaWQgeyB0aGlzLm9uU3RhYmxlLmVtaXQobnVsbCk7IH1cbn1cbiJdfQ==