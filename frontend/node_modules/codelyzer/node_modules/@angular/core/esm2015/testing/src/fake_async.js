/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/testing/src/fake_async.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { discardPeriodicTasksFallback, fakeAsyncFallback, flushFallback, flushMicrotasksFallback, resetFakeAsyncZoneFallback, tickFallback } from './fake_async_fallback';
/** @type {?} */
const _Zone = typeof Zone !== 'undefined' ? Zone : null;
/** @type {?} */
const fakeAsyncTestModule = _Zone && _Zone[_Zone.__symbol__('fakeAsyncTest')];
/**
 * Clears out the shared fake async zone for a test.
 * To be called in a global `beforeEach`.
 *
 * \@publicApi
 * @return {?}
 */
export function resetFakeAsyncZone() {
    if (fakeAsyncTestModule) {
        return fakeAsyncTestModule.resetFakeAsyncZone();
    }
    else {
        return resetFakeAsyncZoneFallback();
    }
}
/**
 * Wraps a function to be executed in the fakeAsync zone:
 * - microtasks are manually executed by calling `flushMicrotasks()`,
 * - timers are synchronous, `tick()` simulates the asynchronous passage of time.
 *
 * If there are any pending timers at the end of the function, an exception will be thrown.
 *
 * Can be used to wrap inject() calls.
 *
 * \@usageNotes
 * ### Example
 *
 * {\@example core/testing/ts/fake_async.ts region='basic'}
 *
 * \@publicApi
 * @param {?} fn
 * @return {?} The function wrapped to be executed in the fakeAsync zone
 *
 */
export function fakeAsync(fn) {
    if (fakeAsyncTestModule) {
        return fakeAsyncTestModule.fakeAsync(fn);
    }
    else {
        return fakeAsyncFallback(fn);
    }
}
/**
 * Simulates the asynchronous passage of time for the timers in the fakeAsync zone.
 *
 * The microtasks queue is drained at the very start of this function and after any timer callback
 * has been executed.
 *
 * \@usageNotes
 * ### Example
 *
 * {\@example core/testing/ts/fake_async.ts region='basic'}
 *
 * \@publicApi
 * @param {?=} millis
 * @return {?}
 */
export function tick(millis = 0) {
    if (fakeAsyncTestModule) {
        return fakeAsyncTestModule.tick(millis);
    }
    else {
        return tickFallback(millis);
    }
}
/**
 * Simulates the asynchronous passage of time for the timers in the fakeAsync zone by
 * draining the macrotask queue until it is empty. The returned value is the milliseconds
 * of time that would have been elapsed.
 *
 * \@publicApi
 * @param {?=} maxTurns
 * @return {?} The simulated time elapsed, in millis.
 *
 */
export function flush(maxTurns) {
    if (fakeAsyncTestModule) {
        return fakeAsyncTestModule.flush(maxTurns);
    }
    else {
        return flushFallback(maxTurns);
    }
}
/**
 * Discard all remaining periodic tasks.
 *
 * \@publicApi
 * @return {?}
 */
export function discardPeriodicTasks() {
    if (fakeAsyncTestModule) {
        return fakeAsyncTestModule.discardPeriodicTasks();
    }
    else {
        discardPeriodicTasksFallback();
    }
}
/**
 * Flush any pending microtasks.
 *
 * \@publicApi
 * @return {?}
 */
export function flushMicrotasks() {
    if (fakeAsyncTestModule) {
        return fakeAsyncTestModule.flushMicrotasks();
    }
    else {
        return flushMicrotasksFallback();
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZmFrZV9hc3luYy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvdGVzdGluZy9zcmMvZmFrZV9hc3luYy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7QUFPQSxPQUFPLEVBQUMsNEJBQTRCLEVBQUUsaUJBQWlCLEVBQUUsYUFBYSxFQUFFLHVCQUF1QixFQUFFLDBCQUEwQixFQUFFLFlBQVksRUFBQyxNQUFNLHVCQUF1QixDQUFDOztNQUVsSyxLQUFLLEdBQVEsT0FBTyxJQUFJLEtBQUssV0FBVyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLElBQUk7O01BQ3RELG1CQUFtQixHQUFHLEtBQUssSUFBSSxLQUFLLENBQUMsS0FBSyxDQUFDLFVBQVUsQ0FBQyxlQUFlLENBQUMsQ0FBQzs7Ozs7Ozs7QUFRN0UsTUFBTSxVQUFVLGtCQUFrQjtJQUNoQyxJQUFJLG1CQUFtQixFQUFFO1FBQ3ZCLE9BQU8sbUJBQW1CLENBQUMsa0JBQWtCLEVBQUUsQ0FBQztLQUNqRDtTQUFNO1FBQ0wsT0FBTywwQkFBMEIsRUFBRSxDQUFDO0tBQ3JDO0FBQ0gsQ0FBQzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFxQkQsTUFBTSxVQUFVLFNBQVMsQ0FBQyxFQUFZO0lBQ3BDLElBQUksbUJBQW1CLEVBQUU7UUFDdkIsT0FBTyxtQkFBbUIsQ0FBQyxTQUFTLENBQUMsRUFBRSxDQUFDLENBQUM7S0FDMUM7U0FBTTtRQUNMLE9BQU8saUJBQWlCLENBQUMsRUFBRSxDQUFDLENBQUM7S0FDOUI7QUFDSCxDQUFDOzs7Ozs7Ozs7Ozs7Ozs7O0FBZUQsTUFBTSxVQUFVLElBQUksQ0FBQyxTQUFpQixDQUFDO0lBQ3JDLElBQUksbUJBQW1CLEVBQUU7UUFDdkIsT0FBTyxtQkFBbUIsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUM7S0FDekM7U0FBTTtRQUNMLE9BQU8sWUFBWSxDQUFDLE1BQU0sQ0FBQyxDQUFDO0tBQzdCO0FBQ0gsQ0FBQzs7Ozs7Ozs7Ozs7QUFZRCxNQUFNLFVBQVUsS0FBSyxDQUFDLFFBQWlCO0lBQ3JDLElBQUksbUJBQW1CLEVBQUU7UUFDdkIsT0FBTyxtQkFBbUIsQ0FBQyxLQUFLLENBQUMsUUFBUSxDQUFDLENBQUM7S0FDNUM7U0FBTTtRQUNMLE9BQU8sYUFBYSxDQUFDLFFBQVEsQ0FBQyxDQUFDO0tBQ2hDO0FBQ0gsQ0FBQzs7Ozs7OztBQU9ELE1BQU0sVUFBVSxvQkFBb0I7SUFDbEMsSUFBSSxtQkFBbUIsRUFBRTtRQUN2QixPQUFPLG1CQUFtQixDQUFDLG9CQUFvQixFQUFFLENBQUM7S0FDbkQ7U0FBTTtRQUNMLDRCQUE0QixFQUFFLENBQUM7S0FDaEM7QUFDSCxDQUFDOzs7Ozs7O0FBT0QsTUFBTSxVQUFVLGVBQWU7SUFDN0IsSUFBSSxtQkFBbUIsRUFBRTtRQUN2QixPQUFPLG1CQUFtQixDQUFDLGVBQWUsRUFBRSxDQUFDO0tBQzlDO1NBQU07UUFDTCxPQUFPLHVCQUF1QixFQUFFLENBQUM7S0FDbEM7QUFDSCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IHtkaXNjYXJkUGVyaW9kaWNUYXNrc0ZhbGxiYWNrLCBmYWtlQXN5bmNGYWxsYmFjaywgZmx1c2hGYWxsYmFjaywgZmx1c2hNaWNyb3Rhc2tzRmFsbGJhY2ssIHJlc2V0RmFrZUFzeW5jWm9uZUZhbGxiYWNrLCB0aWNrRmFsbGJhY2t9IGZyb20gJy4vZmFrZV9hc3luY19mYWxsYmFjayc7XG5cbmNvbnN0IF9ab25lOiBhbnkgPSB0eXBlb2YgWm9uZSAhPT0gJ3VuZGVmaW5lZCcgPyBab25lIDogbnVsbDtcbmNvbnN0IGZha2VBc3luY1Rlc3RNb2R1bGUgPSBfWm9uZSAmJiBfWm9uZVtfWm9uZS5fX3N5bWJvbF9fKCdmYWtlQXN5bmNUZXN0JyldO1xuXG4vKipcbiAqIENsZWFycyBvdXQgdGhlIHNoYXJlZCBmYWtlIGFzeW5jIHpvbmUgZm9yIGEgdGVzdC5cbiAqIFRvIGJlIGNhbGxlZCBpbiBhIGdsb2JhbCBgYmVmb3JlRWFjaGAuXG4gKlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgZnVuY3Rpb24gcmVzZXRGYWtlQXN5bmNab25lKCk6IHZvaWQge1xuICBpZiAoZmFrZUFzeW5jVGVzdE1vZHVsZSkge1xuICAgIHJldHVybiBmYWtlQXN5bmNUZXN0TW9kdWxlLnJlc2V0RmFrZUFzeW5jWm9uZSgpO1xuICB9IGVsc2Uge1xuICAgIHJldHVybiByZXNldEZha2VBc3luY1pvbmVGYWxsYmFjaygpO1xuICB9XG59XG5cbi8qKlxuICogV3JhcHMgYSBmdW5jdGlvbiB0byBiZSBleGVjdXRlZCBpbiB0aGUgZmFrZUFzeW5jIHpvbmU6XG4gKiAtIG1pY3JvdGFza3MgYXJlIG1hbnVhbGx5IGV4ZWN1dGVkIGJ5IGNhbGxpbmcgYGZsdXNoTWljcm90YXNrcygpYCxcbiAqIC0gdGltZXJzIGFyZSBzeW5jaHJvbm91cywgYHRpY2soKWAgc2ltdWxhdGVzIHRoZSBhc3luY2hyb25vdXMgcGFzc2FnZSBvZiB0aW1lLlxuICpcbiAqIElmIHRoZXJlIGFyZSBhbnkgcGVuZGluZyB0aW1lcnMgYXQgdGhlIGVuZCBvZiB0aGUgZnVuY3Rpb24sIGFuIGV4Y2VwdGlvbiB3aWxsIGJlIHRocm93bi5cbiAqXG4gKiBDYW4gYmUgdXNlZCB0byB3cmFwIGluamVjdCgpIGNhbGxzLlxuICpcbiAqIEB1c2FnZU5vdGVzXG4gKiAjIyMgRXhhbXBsZVxuICpcbiAqIHtAZXhhbXBsZSBjb3JlL3Rlc3RpbmcvdHMvZmFrZV9hc3luYy50cyByZWdpb249J2Jhc2ljJ31cbiAqXG4gKiBAcGFyYW0gZm5cbiAqIEByZXR1cm5zIFRoZSBmdW5jdGlvbiB3cmFwcGVkIHRvIGJlIGV4ZWN1dGVkIGluIHRoZSBmYWtlQXN5bmMgem9uZVxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGZha2VBc3luYyhmbjogRnVuY3Rpb24pOiAoLi4uYXJnczogYW55W10pID0+IGFueSB7XG4gIGlmIChmYWtlQXN5bmNUZXN0TW9kdWxlKSB7XG4gICAgcmV0dXJuIGZha2VBc3luY1Rlc3RNb2R1bGUuZmFrZUFzeW5jKGZuKTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gZmFrZUFzeW5jRmFsbGJhY2soZm4pO1xuICB9XG59XG5cbi8qKlxuICogU2ltdWxhdGVzIHRoZSBhc3luY2hyb25vdXMgcGFzc2FnZSBvZiB0aW1lIGZvciB0aGUgdGltZXJzIGluIHRoZSBmYWtlQXN5bmMgem9uZS5cbiAqXG4gKiBUaGUgbWljcm90YXNrcyBxdWV1ZSBpcyBkcmFpbmVkIGF0IHRoZSB2ZXJ5IHN0YXJ0IG9mIHRoaXMgZnVuY3Rpb24gYW5kIGFmdGVyIGFueSB0aW1lciBjYWxsYmFja1xuICogaGFzIGJlZW4gZXhlY3V0ZWQuXG4gKlxuICogQHVzYWdlTm90ZXNcbiAqICMjIyBFeGFtcGxlXG4gKlxuICoge0BleGFtcGxlIGNvcmUvdGVzdGluZy90cy9mYWtlX2FzeW5jLnRzIHJlZ2lvbj0nYmFzaWMnfVxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHRpY2sobWlsbGlzOiBudW1iZXIgPSAwKTogdm9pZCB7XG4gIGlmIChmYWtlQXN5bmNUZXN0TW9kdWxlKSB7XG4gICAgcmV0dXJuIGZha2VBc3luY1Rlc3RNb2R1bGUudGljayhtaWxsaXMpO1xuICB9IGVsc2Uge1xuICAgIHJldHVybiB0aWNrRmFsbGJhY2sobWlsbGlzKTtcbiAgfVxufVxuXG4vKipcbiAqIFNpbXVsYXRlcyB0aGUgYXN5bmNocm9ub3VzIHBhc3NhZ2Ugb2YgdGltZSBmb3IgdGhlIHRpbWVycyBpbiB0aGUgZmFrZUFzeW5jIHpvbmUgYnlcbiAqIGRyYWluaW5nIHRoZSBtYWNyb3Rhc2sgcXVldWUgdW50aWwgaXQgaXMgZW1wdHkuIFRoZSByZXR1cm5lZCB2YWx1ZSBpcyB0aGUgbWlsbGlzZWNvbmRzXG4gKiBvZiB0aW1lIHRoYXQgd291bGQgaGF2ZSBiZWVuIGVsYXBzZWQuXG4gKlxuICogQHBhcmFtIG1heFR1cm5zXG4gKiBAcmV0dXJucyBUaGUgc2ltdWxhdGVkIHRpbWUgZWxhcHNlZCwgaW4gbWlsbGlzLlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGZsdXNoKG1heFR1cm5zPzogbnVtYmVyKTogbnVtYmVyIHtcbiAgaWYgKGZha2VBc3luY1Rlc3RNb2R1bGUpIHtcbiAgICByZXR1cm4gZmFrZUFzeW5jVGVzdE1vZHVsZS5mbHVzaChtYXhUdXJucyk7XG4gIH0gZWxzZSB7XG4gICAgcmV0dXJuIGZsdXNoRmFsbGJhY2sobWF4VHVybnMpO1xuICB9XG59XG5cbi8qKlxuICogRGlzY2FyZCBhbGwgcmVtYWluaW5nIHBlcmlvZGljIHRhc2tzLlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGRpc2NhcmRQZXJpb2RpY1Rhc2tzKCk6IHZvaWQge1xuICBpZiAoZmFrZUFzeW5jVGVzdE1vZHVsZSkge1xuICAgIHJldHVybiBmYWtlQXN5bmNUZXN0TW9kdWxlLmRpc2NhcmRQZXJpb2RpY1Rhc2tzKCk7XG4gIH0gZWxzZSB7XG4gICAgZGlzY2FyZFBlcmlvZGljVGFza3NGYWxsYmFjaygpO1xuICB9XG59XG5cbi8qKlxuICogRmx1c2ggYW55IHBlbmRpbmcgbWljcm90YXNrcy5cbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBmbHVzaE1pY3JvdGFza3MoKTogdm9pZCB7XG4gIGlmIChmYWtlQXN5bmNUZXN0TW9kdWxlKSB7XG4gICAgcmV0dXJuIGZha2VBc3luY1Rlc3RNb2R1bGUuZmx1c2hNaWNyb3Rhc2tzKCk7XG4gIH0gZWxzZSB7XG4gICAgcmV0dXJuIGZsdXNoTWljcm90YXNrc0ZhbGxiYWNrKCk7XG4gIH1cbn1cbiJdfQ==