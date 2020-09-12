/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/**
 * fakeAsync has been moved to zone.js
 * this file is for fallback in case old version of zone.js is used
 */
const _Zone = typeof Zone !== 'undefined' ? Zone : null;
const FakeAsyncTestZoneSpec = _Zone && _Zone['FakeAsyncTestZoneSpec'];
const ProxyZoneSpec = _Zone && _Zone['ProxyZoneSpec'];
let _fakeAsyncTestZoneSpec = null;
/**
 * Clears out the shared fake async zone for a test.
 * To be called in a global `beforeEach`.
 *
 * @publicApi
 */
export function resetFakeAsyncZoneFallback() {
    if (_fakeAsyncTestZoneSpec) {
        _fakeAsyncTestZoneSpec.unlockDatePatch();
    }
    _fakeAsyncTestZoneSpec = null;
    // in node.js testing we may not have ProxyZoneSpec in which case there is nothing to reset.
    ProxyZoneSpec && ProxyZoneSpec.assertPresent().resetDelegate();
}
let _inFakeAsyncCall = false;
/**
 * Wraps a function to be executed in the fakeAsync zone:
 * - microtasks are manually executed by calling `flushMicrotasks()`,
 * - timers are synchronous, `tick()` simulates the asynchronous passage of time.
 *
 * If there are any pending timers at the end of the function, an exception will be thrown.
 *
 * Can be used to wrap inject() calls.
 *
 * @usageNotes
 * ### Example
 *
 * {@example core/testing/ts/fake_async.ts region='basic'}
 *
 * @param fn
 * @returns The function wrapped to be executed in the fakeAsync zone
 *
 * @publicApi
 */
export function fakeAsyncFallback(fn) {
    // Not using an arrow function to preserve context passed from call site
    return function (...args) {
        const proxyZoneSpec = ProxyZoneSpec.assertPresent();
        if (_inFakeAsyncCall) {
            throw new Error('fakeAsync() calls can not be nested');
        }
        _inFakeAsyncCall = true;
        try {
            if (!_fakeAsyncTestZoneSpec) {
                if (proxyZoneSpec.getDelegate() instanceof FakeAsyncTestZoneSpec) {
                    throw new Error('fakeAsync() calls can not be nested');
                }
                _fakeAsyncTestZoneSpec = new FakeAsyncTestZoneSpec();
            }
            let res;
            const lastProxyZoneSpec = proxyZoneSpec.getDelegate();
            proxyZoneSpec.setDelegate(_fakeAsyncTestZoneSpec);
            _fakeAsyncTestZoneSpec.lockDatePatch();
            try {
                res = fn.apply(this, args);
                flushMicrotasksFallback();
            }
            finally {
                proxyZoneSpec.setDelegate(lastProxyZoneSpec);
            }
            if (_fakeAsyncTestZoneSpec.pendingPeriodicTimers.length > 0) {
                throw new Error(`${_fakeAsyncTestZoneSpec.pendingPeriodicTimers.length} ` +
                    `periodic timer(s) still in the queue.`);
            }
            if (_fakeAsyncTestZoneSpec.pendingTimers.length > 0) {
                throw new Error(`${_fakeAsyncTestZoneSpec.pendingTimers.length} timer(s) still in the queue.`);
            }
            return res;
        }
        finally {
            _inFakeAsyncCall = false;
            resetFakeAsyncZoneFallback();
        }
    };
}
function _getFakeAsyncZoneSpec() {
    if (_fakeAsyncTestZoneSpec == null) {
        throw new Error('The code should be running in the fakeAsync zone to call this function');
    }
    return _fakeAsyncTestZoneSpec;
}
/**
 * Simulates the asynchronous passage of time for the timers in the fakeAsync zone.
 *
 * The microtasks queue is drained at the very start of this function and after any timer callback
 * has been executed.
 *
 * @usageNotes
 * ### Example
 *
 * {@example core/testing/ts/fake_async.ts region='basic'}
 *
 * @publicApi
 */
export function tickFallback(millis = 0, tickOptions = {
    processNewMacroTasksSynchronously: true
}) {
    _getFakeAsyncZoneSpec().tick(millis, null, tickOptions);
}
/**
 * Simulates the asynchronous passage of time for the timers in the fakeAsync zone by
 * draining the macrotask queue until it is empty. The returned value is the milliseconds
 * of time that would have been elapsed.
 *
 * @param maxTurns
 * @returns The simulated time elapsed, in millis.
 *
 * @publicApi
 */
export function flushFallback(maxTurns) {
    return _getFakeAsyncZoneSpec().flush(maxTurns);
}
/**
 * Discard all remaining periodic tasks.
 *
 * @publicApi
 */
export function discardPeriodicTasksFallback() {
    const zoneSpec = _getFakeAsyncZoneSpec();
    zoneSpec.pendingPeriodicTimers.length = 0;
}
/**
 * Flush any pending microtasks.
 *
 * @publicApi
 */
export function flushMicrotasksFallback() {
    _getFakeAsyncZoneSpec().flushMicrotasks();
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZmFrZV9hc3luY19mYWxsYmFjay5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvdGVzdGluZy9zcmMvZmFrZV9hc3luY19mYWxsYmFjay50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSDs7O0dBR0c7QUFDSCxNQUFNLEtBQUssR0FBUSxPQUFPLElBQUksS0FBSyxXQUFXLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDO0FBQzdELE1BQU0scUJBQXFCLEdBQUcsS0FBSyxJQUFJLEtBQUssQ0FBQyx1QkFBdUIsQ0FBQyxDQUFDO0FBSXRFLE1BQU0sYUFBYSxHQUNmLEtBQUssSUFBSSxLQUFLLENBQUMsZUFBZSxDQUFDLENBQUM7QUFFcEMsSUFBSSxzQkFBc0IsR0FBUSxJQUFJLENBQUM7QUFFdkM7Ozs7O0dBS0c7QUFDSCxNQUFNLFVBQVUsMEJBQTBCO0lBQ3hDLElBQUksc0JBQXNCLEVBQUU7UUFDMUIsc0JBQXNCLENBQUMsZUFBZSxFQUFFLENBQUM7S0FDMUM7SUFDRCxzQkFBc0IsR0FBRyxJQUFJLENBQUM7SUFDOUIsNEZBQTRGO0lBQzVGLGFBQWEsSUFBSSxhQUFhLENBQUMsYUFBYSxFQUFFLENBQUMsYUFBYSxFQUFFLENBQUM7QUFDakUsQ0FBQztBQUVELElBQUksZ0JBQWdCLEdBQUcsS0FBSyxDQUFDO0FBRTdCOzs7Ozs7Ozs7Ozs7Ozs7Ozs7R0FrQkc7QUFDSCxNQUFNLFVBQVUsaUJBQWlCLENBQUMsRUFBWTtJQUM1Qyx3RUFBd0U7SUFDeEUsT0FBTyxVQUF3QixHQUFHLElBQVc7UUFDM0MsTUFBTSxhQUFhLEdBQUcsYUFBYSxDQUFDLGFBQWEsRUFBRSxDQUFDO1FBQ3BELElBQUksZ0JBQWdCLEVBQUU7WUFDcEIsTUFBTSxJQUFJLEtBQUssQ0FBQyxxQ0FBcUMsQ0FBQyxDQUFDO1NBQ3hEO1FBQ0QsZ0JBQWdCLEdBQUcsSUFBSSxDQUFDO1FBQ3hCLElBQUk7WUFDRixJQUFJLENBQUMsc0JBQXNCLEVBQUU7Z0JBQzNCLElBQUksYUFBYSxDQUFDLFdBQVcsRUFBRSxZQUFZLHFCQUFxQixFQUFFO29CQUNoRSxNQUFNLElBQUksS0FBSyxDQUFDLHFDQUFxQyxDQUFDLENBQUM7aUJBQ3hEO2dCQUVELHNCQUFzQixHQUFHLElBQUkscUJBQXFCLEVBQUUsQ0FBQzthQUN0RDtZQUVELElBQUksR0FBUSxDQUFDO1lBQ2IsTUFBTSxpQkFBaUIsR0FBRyxhQUFhLENBQUMsV0FBVyxFQUFFLENBQUM7WUFDdEQsYUFBYSxDQUFDLFdBQVcsQ0FBQyxzQkFBc0IsQ0FBQyxDQUFDO1lBQ2xELHNCQUFzQixDQUFDLGFBQWEsRUFBRSxDQUFDO1lBQ3ZDLElBQUk7Z0JBQ0YsR0FBRyxHQUFHLEVBQUUsQ0FBQyxLQUFLLENBQUMsSUFBSSxFQUFFLElBQUksQ0FBQyxDQUFDO2dCQUMzQix1QkFBdUIsRUFBRSxDQUFDO2FBQzNCO29CQUFTO2dCQUNSLGFBQWEsQ0FBQyxXQUFXLENBQUMsaUJBQWlCLENBQUMsQ0FBQzthQUM5QztZQUVELElBQUksc0JBQXNCLENBQUMscUJBQXFCLENBQUMsTUFBTSxHQUFHLENBQUMsRUFBRTtnQkFDM0QsTUFBTSxJQUFJLEtBQUssQ0FDWCxHQUFHLHNCQUFzQixDQUFDLHFCQUFxQixDQUFDLE1BQU0sR0FBRztvQkFDekQsdUNBQXVDLENBQUMsQ0FBQzthQUM5QztZQUVELElBQUksc0JBQXNCLENBQUMsYUFBYSxDQUFDLE1BQU0sR0FBRyxDQUFDLEVBQUU7Z0JBQ25ELE1BQU0sSUFBSSxLQUFLLENBQ1gsR0FBRyxzQkFBc0IsQ0FBQyxhQUFhLENBQUMsTUFBTSwrQkFBK0IsQ0FBQyxDQUFDO2FBQ3BGO1lBQ0QsT0FBTyxHQUFHLENBQUM7U0FDWjtnQkFBUztZQUNSLGdCQUFnQixHQUFHLEtBQUssQ0FBQztZQUN6QiwwQkFBMEIsRUFBRSxDQUFDO1NBQzlCO0lBQ0gsQ0FBQyxDQUFDO0FBQ0osQ0FBQztBQUVELFNBQVMscUJBQXFCO0lBQzVCLElBQUksc0JBQXNCLElBQUksSUFBSSxFQUFFO1FBQ2xDLE1BQU0sSUFBSSxLQUFLLENBQUMsd0VBQXdFLENBQUMsQ0FBQztLQUMzRjtJQUNELE9BQU8sc0JBQXNCLENBQUM7QUFDaEMsQ0FBQztBQUVEOzs7Ozs7Ozs7Ozs7R0FZRztBQUNILE1BQU0sVUFBVSxZQUFZLENBQ3hCLFNBQWlCLENBQUMsRUFBRSxjQUE0RDtJQUM5RSxpQ0FBaUMsRUFBRSxJQUFJO0NBQ3hDO0lBQ0gscUJBQXFCLEVBQUUsQ0FBQyxJQUFJLENBQUMsTUFBTSxFQUFFLElBQUksRUFBRSxXQUFXLENBQUMsQ0FBQztBQUMxRCxDQUFDO0FBRUQ7Ozs7Ozs7OztHQVNHO0FBQ0gsTUFBTSxVQUFVLGFBQWEsQ0FBQyxRQUFpQjtJQUM3QyxPQUFPLHFCQUFxQixFQUFFLENBQUMsS0FBSyxDQUFDLFFBQVEsQ0FBQyxDQUFDO0FBQ2pELENBQUM7QUFFRDs7OztHQUlHO0FBQ0gsTUFBTSxVQUFVLDRCQUE0QjtJQUMxQyxNQUFNLFFBQVEsR0FBRyxxQkFBcUIsRUFBRSxDQUFDO0lBQ3pDLFFBQVEsQ0FBQyxxQkFBcUIsQ0FBQyxNQUFNLEdBQUcsQ0FBQyxDQUFDO0FBQzVDLENBQUM7QUFFRDs7OztHQUlHO0FBQ0gsTUFBTSxVQUFVLHVCQUF1QjtJQUNyQyxxQkFBcUIsRUFBRSxDQUFDLGVBQWUsRUFBRSxDQUFDO0FBQzVDLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuLyoqXG4gKiBmYWtlQXN5bmMgaGFzIGJlZW4gbW92ZWQgdG8gem9uZS5qc1xuICogdGhpcyBmaWxlIGlzIGZvciBmYWxsYmFjayBpbiBjYXNlIG9sZCB2ZXJzaW9uIG9mIHpvbmUuanMgaXMgdXNlZFxuICovXG5jb25zdCBfWm9uZTogYW55ID0gdHlwZW9mIFpvbmUgIT09ICd1bmRlZmluZWQnID8gWm9uZSA6IG51bGw7XG5jb25zdCBGYWtlQXN5bmNUZXN0Wm9uZVNwZWMgPSBfWm9uZSAmJiBfWm9uZVsnRmFrZUFzeW5jVGVzdFpvbmVTcGVjJ107XG50eXBlIFByb3h5Wm9uZVNwZWMgPSB7XG4gIHNldERlbGVnYXRlKGRlbGVnYXRlU3BlYzogWm9uZVNwZWMpOiB2b2lkOyBnZXREZWxlZ2F0ZSgpOiBab25lU3BlYzsgcmVzZXREZWxlZ2F0ZSgpOiB2b2lkO1xufTtcbmNvbnN0IFByb3h5Wm9uZVNwZWM6IHtnZXQoKTogUHJveHlab25lU3BlYzsgYXNzZXJ0UHJlc2VudDogKCkgPT4gUHJveHlab25lU3BlY30gPVxuICAgIF9ab25lICYmIF9ab25lWydQcm94eVpvbmVTcGVjJ107XG5cbmxldCBfZmFrZUFzeW5jVGVzdFpvbmVTcGVjOiBhbnkgPSBudWxsO1xuXG4vKipcbiAqIENsZWFycyBvdXQgdGhlIHNoYXJlZCBmYWtlIGFzeW5jIHpvbmUgZm9yIGEgdGVzdC5cbiAqIFRvIGJlIGNhbGxlZCBpbiBhIGdsb2JhbCBgYmVmb3JlRWFjaGAuXG4gKlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgZnVuY3Rpb24gcmVzZXRGYWtlQXN5bmNab25lRmFsbGJhY2soKSB7XG4gIGlmIChfZmFrZUFzeW5jVGVzdFpvbmVTcGVjKSB7XG4gICAgX2Zha2VBc3luY1Rlc3Rab25lU3BlYy51bmxvY2tEYXRlUGF0Y2goKTtcbiAgfVxuICBfZmFrZUFzeW5jVGVzdFpvbmVTcGVjID0gbnVsbDtcbiAgLy8gaW4gbm9kZS5qcyB0ZXN0aW5nIHdlIG1heSBub3QgaGF2ZSBQcm94eVpvbmVTcGVjIGluIHdoaWNoIGNhc2UgdGhlcmUgaXMgbm90aGluZyB0byByZXNldC5cbiAgUHJveHlab25lU3BlYyAmJiBQcm94eVpvbmVTcGVjLmFzc2VydFByZXNlbnQoKS5yZXNldERlbGVnYXRlKCk7XG59XG5cbmxldCBfaW5GYWtlQXN5bmNDYWxsID0gZmFsc2U7XG5cbi8qKlxuICogV3JhcHMgYSBmdW5jdGlvbiB0byBiZSBleGVjdXRlZCBpbiB0aGUgZmFrZUFzeW5jIHpvbmU6XG4gKiAtIG1pY3JvdGFza3MgYXJlIG1hbnVhbGx5IGV4ZWN1dGVkIGJ5IGNhbGxpbmcgYGZsdXNoTWljcm90YXNrcygpYCxcbiAqIC0gdGltZXJzIGFyZSBzeW5jaHJvbm91cywgYHRpY2soKWAgc2ltdWxhdGVzIHRoZSBhc3luY2hyb25vdXMgcGFzc2FnZSBvZiB0aW1lLlxuICpcbiAqIElmIHRoZXJlIGFyZSBhbnkgcGVuZGluZyB0aW1lcnMgYXQgdGhlIGVuZCBvZiB0aGUgZnVuY3Rpb24sIGFuIGV4Y2VwdGlvbiB3aWxsIGJlIHRocm93bi5cbiAqXG4gKiBDYW4gYmUgdXNlZCB0byB3cmFwIGluamVjdCgpIGNhbGxzLlxuICpcbiAqIEB1c2FnZU5vdGVzXG4gKiAjIyMgRXhhbXBsZVxuICpcbiAqIHtAZXhhbXBsZSBjb3JlL3Rlc3RpbmcvdHMvZmFrZV9hc3luYy50cyByZWdpb249J2Jhc2ljJ31cbiAqXG4gKiBAcGFyYW0gZm5cbiAqIEByZXR1cm5zIFRoZSBmdW5jdGlvbiB3cmFwcGVkIHRvIGJlIGV4ZWN1dGVkIGluIHRoZSBmYWtlQXN5bmMgem9uZVxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGZha2VBc3luY0ZhbGxiYWNrKGZuOiBGdW5jdGlvbik6ICguLi5hcmdzOiBhbnlbXSkgPT4gYW55IHtcbiAgLy8gTm90IHVzaW5nIGFuIGFycm93IGZ1bmN0aW9uIHRvIHByZXNlcnZlIGNvbnRleHQgcGFzc2VkIGZyb20gY2FsbCBzaXRlXG4gIHJldHVybiBmdW5jdGlvbih0aGlzOiB1bmtub3duLCAuLi5hcmdzOiBhbnlbXSkge1xuICAgIGNvbnN0IHByb3h5Wm9uZVNwZWMgPSBQcm94eVpvbmVTcGVjLmFzc2VydFByZXNlbnQoKTtcbiAgICBpZiAoX2luRmFrZUFzeW5jQ2FsbCkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKCdmYWtlQXN5bmMoKSBjYWxscyBjYW4gbm90IGJlIG5lc3RlZCcpO1xuICAgIH1cbiAgICBfaW5GYWtlQXN5bmNDYWxsID0gdHJ1ZTtcbiAgICB0cnkge1xuICAgICAgaWYgKCFfZmFrZUFzeW5jVGVzdFpvbmVTcGVjKSB7XG4gICAgICAgIGlmIChwcm94eVpvbmVTcGVjLmdldERlbGVnYXRlKCkgaW5zdGFuY2VvZiBGYWtlQXN5bmNUZXN0Wm9uZVNwZWMpIHtcbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoJ2Zha2VBc3luYygpIGNhbGxzIGNhbiBub3QgYmUgbmVzdGVkJyk7XG4gICAgICAgIH1cblxuICAgICAgICBfZmFrZUFzeW5jVGVzdFpvbmVTcGVjID0gbmV3IEZha2VBc3luY1Rlc3Rab25lU3BlYygpO1xuICAgICAgfVxuXG4gICAgICBsZXQgcmVzOiBhbnk7XG4gICAgICBjb25zdCBsYXN0UHJveHlab25lU3BlYyA9IHByb3h5Wm9uZVNwZWMuZ2V0RGVsZWdhdGUoKTtcbiAgICAgIHByb3h5Wm9uZVNwZWMuc2V0RGVsZWdhdGUoX2Zha2VBc3luY1Rlc3Rab25lU3BlYyk7XG4gICAgICBfZmFrZUFzeW5jVGVzdFpvbmVTcGVjLmxvY2tEYXRlUGF0Y2goKTtcbiAgICAgIHRyeSB7XG4gICAgICAgIHJlcyA9IGZuLmFwcGx5KHRoaXMsIGFyZ3MpO1xuICAgICAgICBmbHVzaE1pY3JvdGFza3NGYWxsYmFjaygpO1xuICAgICAgfSBmaW5hbGx5IHtcbiAgICAgICAgcHJveHlab25lU3BlYy5zZXREZWxlZ2F0ZShsYXN0UHJveHlab25lU3BlYyk7XG4gICAgICB9XG5cbiAgICAgIGlmIChfZmFrZUFzeW5jVGVzdFpvbmVTcGVjLnBlbmRpbmdQZXJpb2RpY1RpbWVycy5sZW5ndGggPiAwKSB7XG4gICAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICAgIGAke19mYWtlQXN5bmNUZXN0Wm9uZVNwZWMucGVuZGluZ1BlcmlvZGljVGltZXJzLmxlbmd0aH0gYCArXG4gICAgICAgICAgICBgcGVyaW9kaWMgdGltZXIocykgc3RpbGwgaW4gdGhlIHF1ZXVlLmApO1xuICAgICAgfVxuXG4gICAgICBpZiAoX2Zha2VBc3luY1Rlc3Rab25lU3BlYy5wZW5kaW5nVGltZXJzLmxlbmd0aCA+IDApIHtcbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKFxuICAgICAgICAgICAgYCR7X2Zha2VBc3luY1Rlc3Rab25lU3BlYy5wZW5kaW5nVGltZXJzLmxlbmd0aH0gdGltZXIocykgc3RpbGwgaW4gdGhlIHF1ZXVlLmApO1xuICAgICAgfVxuICAgICAgcmV0dXJuIHJlcztcbiAgICB9IGZpbmFsbHkge1xuICAgICAgX2luRmFrZUFzeW5jQ2FsbCA9IGZhbHNlO1xuICAgICAgcmVzZXRGYWtlQXN5bmNab25lRmFsbGJhY2soKTtcbiAgICB9XG4gIH07XG59XG5cbmZ1bmN0aW9uIF9nZXRGYWtlQXN5bmNab25lU3BlYygpOiBhbnkge1xuICBpZiAoX2Zha2VBc3luY1Rlc3Rab25lU3BlYyA9PSBudWxsKSB7XG4gICAgdGhyb3cgbmV3IEVycm9yKCdUaGUgY29kZSBzaG91bGQgYmUgcnVubmluZyBpbiB0aGUgZmFrZUFzeW5jIHpvbmUgdG8gY2FsbCB0aGlzIGZ1bmN0aW9uJyk7XG4gIH1cbiAgcmV0dXJuIF9mYWtlQXN5bmNUZXN0Wm9uZVNwZWM7XG59XG5cbi8qKlxuICogU2ltdWxhdGVzIHRoZSBhc3luY2hyb25vdXMgcGFzc2FnZSBvZiB0aW1lIGZvciB0aGUgdGltZXJzIGluIHRoZSBmYWtlQXN5bmMgem9uZS5cbiAqXG4gKiBUaGUgbWljcm90YXNrcyBxdWV1ZSBpcyBkcmFpbmVkIGF0IHRoZSB2ZXJ5IHN0YXJ0IG9mIHRoaXMgZnVuY3Rpb24gYW5kIGFmdGVyIGFueSB0aW1lciBjYWxsYmFja1xuICogaGFzIGJlZW4gZXhlY3V0ZWQuXG4gKlxuICogQHVzYWdlTm90ZXNcbiAqICMjIyBFeGFtcGxlXG4gKlxuICoge0BleGFtcGxlIGNvcmUvdGVzdGluZy90cy9mYWtlX2FzeW5jLnRzIHJlZ2lvbj0nYmFzaWMnfVxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHRpY2tGYWxsYmFjayhcbiAgICBtaWxsaXM6IG51bWJlciA9IDAsIHRpY2tPcHRpb25zOiB7cHJvY2Vzc05ld01hY3JvVGFza3NTeW5jaHJvbm91c2x5OiBib29sZWFufSA9IHtcbiAgICAgIHByb2Nlc3NOZXdNYWNyb1Rhc2tzU3luY2hyb25vdXNseTogdHJ1ZVxuICAgIH0pOiB2b2lkIHtcbiAgX2dldEZha2VBc3luY1pvbmVTcGVjKCkudGljayhtaWxsaXMsIG51bGwsIHRpY2tPcHRpb25zKTtcbn1cblxuLyoqXG4gKiBTaW11bGF0ZXMgdGhlIGFzeW5jaHJvbm91cyBwYXNzYWdlIG9mIHRpbWUgZm9yIHRoZSB0aW1lcnMgaW4gdGhlIGZha2VBc3luYyB6b25lIGJ5XG4gKiBkcmFpbmluZyB0aGUgbWFjcm90YXNrIHF1ZXVlIHVudGlsIGl0IGlzIGVtcHR5LiBUaGUgcmV0dXJuZWQgdmFsdWUgaXMgdGhlIG1pbGxpc2Vjb25kc1xuICogb2YgdGltZSB0aGF0IHdvdWxkIGhhdmUgYmVlbiBlbGFwc2VkLlxuICpcbiAqIEBwYXJhbSBtYXhUdXJuc1xuICogQHJldHVybnMgVGhlIHNpbXVsYXRlZCB0aW1lIGVsYXBzZWQsIGluIG1pbGxpcy5cbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBmbHVzaEZhbGxiYWNrKG1heFR1cm5zPzogbnVtYmVyKTogbnVtYmVyIHtcbiAgcmV0dXJuIF9nZXRGYWtlQXN5bmNab25lU3BlYygpLmZsdXNoKG1heFR1cm5zKTtcbn1cblxuLyoqXG4gKiBEaXNjYXJkIGFsbCByZW1haW5pbmcgcGVyaW9kaWMgdGFza3MuXG4gKlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgZnVuY3Rpb24gZGlzY2FyZFBlcmlvZGljVGFza3NGYWxsYmFjaygpOiB2b2lkIHtcbiAgY29uc3Qgem9uZVNwZWMgPSBfZ2V0RmFrZUFzeW5jWm9uZVNwZWMoKTtcbiAgem9uZVNwZWMucGVuZGluZ1BlcmlvZGljVGltZXJzLmxlbmd0aCA9IDA7XG59XG5cbi8qKlxuICogRmx1c2ggYW55IHBlbmRpbmcgbWljcm90YXNrcy5cbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBmbHVzaE1pY3JvdGFza3NGYWxsYmFjaygpOiB2b2lkIHtcbiAgX2dldEZha2VBc3luY1pvbmVTcGVjKCkuZmx1c2hNaWNyb3Rhc2tzKCk7XG59XG4iXX0=