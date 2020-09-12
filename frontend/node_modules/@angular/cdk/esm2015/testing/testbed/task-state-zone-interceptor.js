/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { BehaviorSubject } from 'rxjs';
/** Unique symbol that is used to patch a property to a proxy zone. */
const stateObservableSymbol = Symbol('ProxyZone_PATCHED#stateObservable');
/**
 * Interceptor that can be set up in a `ProxyZone` instance. The interceptor
 * will keep track of the task state and emit whenever the state changes.
 *
 * This serves as a workaround for https://github.com/angular/angular/issues/32896.
 */
export class TaskStateZoneInterceptor {
    constructor(_lastState) {
        this._lastState = _lastState;
        /** Subject that can be used to emit a new state change. */
        this._stateSubject = new BehaviorSubject(this._lastState ? this._getTaskStateFromInternalZoneState(this._lastState) : { stable: true });
        /** Public observable that emits whenever the task state changes. */
        this.state = this._stateSubject;
    }
    /** This will be called whenever the task state changes in the intercepted zone. */
    onHasTask(delegate, current, target, hasTaskState) {
        if (current === target) {
            this._stateSubject.next(this._getTaskStateFromInternalZoneState(hasTaskState));
        }
    }
    /** Gets the task state from the internal ZoneJS task state. */
    _getTaskStateFromInternalZoneState(state) {
        return { stable: !state.macroTask && !state.microTask };
    }
    /**
     * Sets up the custom task state Zone interceptor in the  `ProxyZone`. Throws if
     * no `ProxyZone` could be found.
     * @returns an observable that emits whenever the task state changes.
     */
    static setup() {
        if (Zone === undefined) {
            throw Error('Could not find ZoneJS. For test harnesses running in TestBed, ' +
                'ZoneJS needs to be installed.');
        }
        // tslint:disable-next-line:variable-name
        const ProxyZoneSpec = Zone['ProxyZoneSpec'];
        // If there is no "ProxyZoneSpec" installed, we throw an error and recommend
        // setting up the proxy zone by pulling in the testing bundle.
        if (!ProxyZoneSpec) {
            throw Error('ProxyZoneSpec is needed for the test harnesses but could not be found. ' +
                'Please make sure that your environment includes zone.js/dist/zone-testing.js');
        }
        // Ensure that there is a proxy zone instance set up, and get
        // a reference to the instance if present.
        const zoneSpec = ProxyZoneSpec.assertPresent();
        // If there already is a delegate registered in the proxy zone, and it
        // is type of the custom task state interceptor, we just use that state
        // observable. This allows us to only intercept Zone once per test
        // (similar to how `fakeAsync` or `async` work).
        if (zoneSpec[stateObservableSymbol]) {
            return zoneSpec[stateObservableSymbol];
        }
        // Since we intercept on environment creation and the fixture has been
        // created before, we might have missed tasks scheduled before. Fortunately
        // the proxy zone keeps track of the previous task state, so we can just pass
        // this as initial state to the task zone interceptor.
        const interceptor = new TaskStateZoneInterceptor(zoneSpec.lastTaskState);
        const zoneSpecOnHasTask = zoneSpec.onHasTask.bind(zoneSpec);
        // We setup the task state interceptor in the `ProxyZone`. Note that we cannot register
        // the interceptor as a new proxy zone delegate because it would mean that other zone
        // delegates (e.g. `FakeAsyncTestZone` or `AsyncTestZone`) can accidentally overwrite/disable
        // our interceptor. Since we just intend to monitor the task state of the proxy zone, it is
        // sufficient to just patch the proxy zone. This also avoids that we interfere with the task
        // queue scheduling logic.
        zoneSpec.onHasTask = function (...args) {
            zoneSpecOnHasTask(...args);
            interceptor.onHasTask(...args);
        };
        return zoneSpec[stateObservableSymbol] = interceptor.state;
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidGFzay1zdGF0ZS16b25lLWludGVyY2VwdG9yLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay90ZXN0aW5nL3Rlc3RiZWQvdGFzay1zdGF0ZS16b25lLWludGVyY2VwdG9yLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBQyxlQUFlLEVBQWEsTUFBTSxNQUFNLENBQUM7QUFTakQsc0VBQXNFO0FBQ3RFLE1BQU0scUJBQXFCLEdBQUcsTUFBTSxDQUFDLG1DQUFtQyxDQUFDLENBQUM7QUFPMUU7Ozs7O0dBS0c7QUFDSCxNQUFNLE9BQU8sd0JBQXdCO0lBUW5DLFlBQW9CLFVBQTZCO1FBQTdCLGVBQVUsR0FBVixVQUFVLENBQW1CO1FBUGpELDJEQUEyRDtRQUNuRCxrQkFBYSxHQUErQixJQUFJLGVBQWUsQ0FDbkUsSUFBSSxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDLGtDQUFrQyxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsQ0FBQyxDQUFDLENBQUMsRUFBQyxNQUFNLEVBQUUsSUFBSSxFQUFDLENBQUMsQ0FBQztRQUVqRyxvRUFBb0U7UUFDM0QsVUFBSyxHQUEwQixJQUFJLENBQUMsYUFBYSxDQUFDO0lBRVAsQ0FBQztJQUVyRCxtRkFBbUY7SUFDbkYsU0FBUyxDQUFDLFFBQXNCLEVBQUUsT0FBYSxFQUFFLE1BQVksRUFBRSxZQUEwQjtRQUN2RixJQUFJLE9BQU8sS0FBSyxNQUFNLEVBQUU7WUFDdEIsSUFBSSxDQUFDLGFBQWEsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLGtDQUFrQyxDQUFDLFlBQVksQ0FBQyxDQUFDLENBQUM7U0FDaEY7SUFDSCxDQUFDO0lBRUQsK0RBQStEO0lBQ3ZELGtDQUFrQyxDQUFDLEtBQW1CO1FBQzVELE9BQU8sRUFBQyxNQUFNLEVBQUUsQ0FBQyxLQUFLLENBQUMsU0FBUyxJQUFJLENBQUMsS0FBSyxDQUFDLFNBQVMsRUFBQyxDQUFDO0lBQ3hELENBQUM7SUFFRDs7OztPQUlHO0lBQ0gsTUFBTSxDQUFDLEtBQUs7UUFDVixJQUFJLElBQUksS0FBSyxTQUFTLEVBQUU7WUFDdEIsTUFBTSxLQUFLLENBQUMsZ0VBQWdFO2dCQUMxRSwrQkFBK0IsQ0FBQyxDQUFDO1NBQ3BDO1FBRUQseUNBQXlDO1FBQ3pDLE1BQU0sYUFBYSxHQUFJLElBQVksQ0FBQyxlQUFlLENBQThCLENBQUM7UUFFbEYsNEVBQTRFO1FBQzVFLDhEQUE4RDtRQUM5RCxJQUFJLENBQUMsYUFBYSxFQUFFO1lBQ2xCLE1BQU0sS0FBSyxDQUNULHlFQUF5RTtnQkFDekUsOEVBQThFLENBQUMsQ0FBQztTQUNuRjtRQUVELDZEQUE2RDtRQUM3RCwwQ0FBMEM7UUFDMUMsTUFBTSxRQUFRLEdBQUcsYUFBYSxDQUFDLGFBQWEsRUFBc0IsQ0FBQztRQUVuRSxzRUFBc0U7UUFDdEUsdUVBQXVFO1FBQ3ZFLGtFQUFrRTtRQUNsRSxnREFBZ0Q7UUFDaEQsSUFBSSxRQUFRLENBQUMscUJBQXFCLENBQUMsRUFBRTtZQUNuQyxPQUFPLFFBQVEsQ0FBQyxxQkFBcUIsQ0FBRSxDQUFDO1NBQ3pDO1FBRUQsc0VBQXNFO1FBQ3RFLDJFQUEyRTtRQUMzRSw2RUFBNkU7UUFDN0Usc0RBQXNEO1FBQ3RELE1BQU0sV0FBVyxHQUFHLElBQUksd0JBQXdCLENBQUMsUUFBUSxDQUFDLGFBQWEsQ0FBQyxDQUFDO1FBQ3pFLE1BQU0saUJBQWlCLEdBQUcsUUFBUSxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUM7UUFFNUQsdUZBQXVGO1FBQ3ZGLHFGQUFxRjtRQUNyRiw2RkFBNkY7UUFDN0YsMkZBQTJGO1FBQzNGLDRGQUE0RjtRQUM1RiwwQkFBMEI7UUFDMUIsUUFBUSxDQUFDLFNBQVMsR0FBRyxVQUFTLEdBQUcsSUFBOEM7WUFDN0UsaUJBQWlCLENBQUMsR0FBRyxJQUFJLENBQUMsQ0FBQztZQUMzQixXQUFXLENBQUMsU0FBUyxDQUFDLEdBQUcsSUFBSSxDQUFDLENBQUM7UUFDakMsQ0FBQyxDQUFDO1FBRUYsT0FBTyxRQUFRLENBQUMscUJBQXFCLENBQUMsR0FBRyxXQUFXLENBQUMsS0FBSyxDQUFDO0lBQzdELENBQUM7Q0FDRiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0JlaGF2aW9yU3ViamVjdCwgT2JzZXJ2YWJsZX0gZnJvbSAncnhqcyc7XG5pbXBvcnQge1Byb3h5Wm9uZSwgUHJveHlab25lU3RhdGljfSBmcm9tICcuL3Byb3h5LXpvbmUtdHlwZXMnO1xuXG4vKiogQ3VycmVudCBzdGF0ZSBvZiB0aGUgaW50ZXJjZXB0ZWQgem9uZS4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgVGFza1N0YXRlIHtcbiAgLyoqIFdoZXRoZXIgdGhlIHpvbmUgaXMgc3RhYmxlIChpLmUuIG5vIG1pY3JvdGFza3MgYW5kIG1hY3JvdGFza3MpLiAqL1xuICBzdGFibGU6IGJvb2xlYW47XG59XG5cbi8qKiBVbmlxdWUgc3ltYm9sIHRoYXQgaXMgdXNlZCB0byBwYXRjaCBhIHByb3BlcnR5IHRvIGEgcHJveHkgem9uZS4gKi9cbmNvbnN0IHN0YXRlT2JzZXJ2YWJsZVN5bWJvbCA9IFN5bWJvbCgnUHJveHlab25lX1BBVENIRUQjc3RhdGVPYnNlcnZhYmxlJyk7XG5cbi8qKiBUeXBlIHRoYXQgZGVzY3JpYmVzIGEgcG90ZW50aWFsbHkgcGF0Y2hlZCBwcm94eSB6b25lIGluc3RhbmNlLiAqL1xudHlwZSBQYXRjaGVkUHJveHlab25lID0gUHJveHlab25lICYge1xuICBbc3RhdGVPYnNlcnZhYmxlU3ltYm9sXTogdW5kZWZpbmVkfE9ic2VydmFibGU8VGFza1N0YXRlPjtcbn07XG5cbi8qKlxuICogSW50ZXJjZXB0b3IgdGhhdCBjYW4gYmUgc2V0IHVwIGluIGEgYFByb3h5Wm9uZWAgaW5zdGFuY2UuIFRoZSBpbnRlcmNlcHRvclxuICogd2lsbCBrZWVwIHRyYWNrIG9mIHRoZSB0YXNrIHN0YXRlIGFuZCBlbWl0IHdoZW5ldmVyIHRoZSBzdGF0ZSBjaGFuZ2VzLlxuICpcbiAqIFRoaXMgc2VydmVzIGFzIGEgd29ya2Fyb3VuZCBmb3IgaHR0cHM6Ly9naXRodWIuY29tL2FuZ3VsYXIvYW5ndWxhci9pc3N1ZXMvMzI4OTYuXG4gKi9cbmV4cG9ydCBjbGFzcyBUYXNrU3RhdGVab25lSW50ZXJjZXB0b3Ige1xuICAvKiogU3ViamVjdCB0aGF0IGNhbiBiZSB1c2VkIHRvIGVtaXQgYSBuZXcgc3RhdGUgY2hhbmdlLiAqL1xuICBwcml2YXRlIF9zdGF0ZVN1YmplY3Q6IEJlaGF2aW9yU3ViamVjdDxUYXNrU3RhdGU+ID0gbmV3IEJlaGF2aW9yU3ViamVjdDxUYXNrU3RhdGU+KFxuICAgICAgdGhpcy5fbGFzdFN0YXRlID8gdGhpcy5fZ2V0VGFza1N0YXRlRnJvbUludGVybmFsWm9uZVN0YXRlKHRoaXMuX2xhc3RTdGF0ZSkgOiB7c3RhYmxlOiB0cnVlfSk7XG5cbiAgLyoqIFB1YmxpYyBvYnNlcnZhYmxlIHRoYXQgZW1pdHMgd2hlbmV2ZXIgdGhlIHRhc2sgc3RhdGUgY2hhbmdlcy4gKi9cbiAgcmVhZG9ubHkgc3RhdGU6IE9ic2VydmFibGU8VGFza1N0YXRlPiA9IHRoaXMuX3N0YXRlU3ViamVjdDtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9sYXN0U3RhdGU6IEhhc1Rhc2tTdGF0ZXxudWxsKSB7fVxuXG4gIC8qKiBUaGlzIHdpbGwgYmUgY2FsbGVkIHdoZW5ldmVyIHRoZSB0YXNrIHN0YXRlIGNoYW5nZXMgaW4gdGhlIGludGVyY2VwdGVkIHpvbmUuICovXG4gIG9uSGFzVGFzayhkZWxlZ2F0ZTogWm9uZURlbGVnYXRlLCBjdXJyZW50OiBab25lLCB0YXJnZXQ6IFpvbmUsIGhhc1Rhc2tTdGF0ZTogSGFzVGFza1N0YXRlKSB7XG4gICAgaWYgKGN1cnJlbnQgPT09IHRhcmdldCkge1xuICAgICAgdGhpcy5fc3RhdGVTdWJqZWN0Lm5leHQodGhpcy5fZ2V0VGFza1N0YXRlRnJvbUludGVybmFsWm9uZVN0YXRlKGhhc1Rhc2tTdGF0ZSkpO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBHZXRzIHRoZSB0YXNrIHN0YXRlIGZyb20gdGhlIGludGVybmFsIFpvbmVKUyB0YXNrIHN0YXRlLiAqL1xuICBwcml2YXRlIF9nZXRUYXNrU3RhdGVGcm9tSW50ZXJuYWxab25lU3RhdGUoc3RhdGU6IEhhc1Rhc2tTdGF0ZSk6IFRhc2tTdGF0ZSB7XG4gICAgcmV0dXJuIHtzdGFibGU6ICFzdGF0ZS5tYWNyb1Rhc2sgJiYgIXN0YXRlLm1pY3JvVGFza307XG4gIH1cblxuICAvKipcbiAgICogU2V0cyB1cCB0aGUgY3VzdG9tIHRhc2sgc3RhdGUgWm9uZSBpbnRlcmNlcHRvciBpbiB0aGUgIGBQcm94eVpvbmVgLiBUaHJvd3MgaWZcbiAgICogbm8gYFByb3h5Wm9uZWAgY291bGQgYmUgZm91bmQuXG4gICAqIEByZXR1cm5zIGFuIG9ic2VydmFibGUgdGhhdCBlbWl0cyB3aGVuZXZlciB0aGUgdGFzayBzdGF0ZSBjaGFuZ2VzLlxuICAgKi9cbiAgc3RhdGljIHNldHVwKCk6IE9ic2VydmFibGU8VGFza1N0YXRlPiB7XG4gICAgaWYgKFpvbmUgPT09IHVuZGVmaW5lZCkge1xuICAgICAgdGhyb3cgRXJyb3IoJ0NvdWxkIG5vdCBmaW5kIFpvbmVKUy4gRm9yIHRlc3QgaGFybmVzc2VzIHJ1bm5pbmcgaW4gVGVzdEJlZCwgJyArXG4gICAgICAgICdab25lSlMgbmVlZHMgdG8gYmUgaW5zdGFsbGVkLicpO1xuICAgIH1cblxuICAgIC8vIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTp2YXJpYWJsZS1uYW1lXG4gICAgY29uc3QgUHJveHlab25lU3BlYyA9IChab25lIGFzIGFueSlbJ1Byb3h5Wm9uZVNwZWMnXSBhcyBQcm94eVpvbmVTdGF0aWN8dW5kZWZpbmVkO1xuXG4gICAgLy8gSWYgdGhlcmUgaXMgbm8gXCJQcm94eVpvbmVTcGVjXCIgaW5zdGFsbGVkLCB3ZSB0aHJvdyBhbiBlcnJvciBhbmQgcmVjb21tZW5kXG4gICAgLy8gc2V0dGluZyB1cCB0aGUgcHJveHkgem9uZSBieSBwdWxsaW5nIGluIHRoZSB0ZXN0aW5nIGJ1bmRsZS5cbiAgICBpZiAoIVByb3h5Wm9uZVNwZWMpIHtcbiAgICAgIHRocm93IEVycm9yKFxuICAgICAgICAnUHJveHlab25lU3BlYyBpcyBuZWVkZWQgZm9yIHRoZSB0ZXN0IGhhcm5lc3NlcyBidXQgY291bGQgbm90IGJlIGZvdW5kLiAnICtcbiAgICAgICAgJ1BsZWFzZSBtYWtlIHN1cmUgdGhhdCB5b3VyIGVudmlyb25tZW50IGluY2x1ZGVzIHpvbmUuanMvZGlzdC96b25lLXRlc3RpbmcuanMnKTtcbiAgICB9XG5cbiAgICAvLyBFbnN1cmUgdGhhdCB0aGVyZSBpcyBhIHByb3h5IHpvbmUgaW5zdGFuY2Ugc2V0IHVwLCBhbmQgZ2V0XG4gICAgLy8gYSByZWZlcmVuY2UgdG8gdGhlIGluc3RhbmNlIGlmIHByZXNlbnQuXG4gICAgY29uc3Qgem9uZVNwZWMgPSBQcm94eVpvbmVTcGVjLmFzc2VydFByZXNlbnQoKSBhcyBQYXRjaGVkUHJveHlab25lO1xuXG4gICAgLy8gSWYgdGhlcmUgYWxyZWFkeSBpcyBhIGRlbGVnYXRlIHJlZ2lzdGVyZWQgaW4gdGhlIHByb3h5IHpvbmUsIGFuZCBpdFxuICAgIC8vIGlzIHR5cGUgb2YgdGhlIGN1c3RvbSB0YXNrIHN0YXRlIGludGVyY2VwdG9yLCB3ZSBqdXN0IHVzZSB0aGF0IHN0YXRlXG4gICAgLy8gb2JzZXJ2YWJsZS4gVGhpcyBhbGxvd3MgdXMgdG8gb25seSBpbnRlcmNlcHQgWm9uZSBvbmNlIHBlciB0ZXN0XG4gICAgLy8gKHNpbWlsYXIgdG8gaG93IGBmYWtlQXN5bmNgIG9yIGBhc3luY2Agd29yaykuXG4gICAgaWYgKHpvbmVTcGVjW3N0YXRlT2JzZXJ2YWJsZVN5bWJvbF0pIHtcbiAgICAgIHJldHVybiB6b25lU3BlY1tzdGF0ZU9ic2VydmFibGVTeW1ib2xdITtcbiAgICB9XG5cbiAgICAvLyBTaW5jZSB3ZSBpbnRlcmNlcHQgb24gZW52aXJvbm1lbnQgY3JlYXRpb24gYW5kIHRoZSBmaXh0dXJlIGhhcyBiZWVuXG4gICAgLy8gY3JlYXRlZCBiZWZvcmUsIHdlIG1pZ2h0IGhhdmUgbWlzc2VkIHRhc2tzIHNjaGVkdWxlZCBiZWZvcmUuIEZvcnR1bmF0ZWx5XG4gICAgLy8gdGhlIHByb3h5IHpvbmUga2VlcHMgdHJhY2sgb2YgdGhlIHByZXZpb3VzIHRhc2sgc3RhdGUsIHNvIHdlIGNhbiBqdXN0IHBhc3NcbiAgICAvLyB0aGlzIGFzIGluaXRpYWwgc3RhdGUgdG8gdGhlIHRhc2sgem9uZSBpbnRlcmNlcHRvci5cbiAgICBjb25zdCBpbnRlcmNlcHRvciA9IG5ldyBUYXNrU3RhdGVab25lSW50ZXJjZXB0b3Ioem9uZVNwZWMubGFzdFRhc2tTdGF0ZSk7XG4gICAgY29uc3Qgem9uZVNwZWNPbkhhc1Rhc2sgPSB6b25lU3BlYy5vbkhhc1Rhc2suYmluZCh6b25lU3BlYyk7XG5cbiAgICAvLyBXZSBzZXR1cCB0aGUgdGFzayBzdGF0ZSBpbnRlcmNlcHRvciBpbiB0aGUgYFByb3h5Wm9uZWAuIE5vdGUgdGhhdCB3ZSBjYW5ub3QgcmVnaXN0ZXJcbiAgICAvLyB0aGUgaW50ZXJjZXB0b3IgYXMgYSBuZXcgcHJveHkgem9uZSBkZWxlZ2F0ZSBiZWNhdXNlIGl0IHdvdWxkIG1lYW4gdGhhdCBvdGhlciB6b25lXG4gICAgLy8gZGVsZWdhdGVzIChlLmcuIGBGYWtlQXN5bmNUZXN0Wm9uZWAgb3IgYEFzeW5jVGVzdFpvbmVgKSBjYW4gYWNjaWRlbnRhbGx5IG92ZXJ3cml0ZS9kaXNhYmxlXG4gICAgLy8gb3VyIGludGVyY2VwdG9yLiBTaW5jZSB3ZSBqdXN0IGludGVuZCB0byBtb25pdG9yIHRoZSB0YXNrIHN0YXRlIG9mIHRoZSBwcm94eSB6b25lLCBpdCBpc1xuICAgIC8vIHN1ZmZpY2llbnQgdG8ganVzdCBwYXRjaCB0aGUgcHJveHkgem9uZS4gVGhpcyBhbHNvIGF2b2lkcyB0aGF0IHdlIGludGVyZmVyZSB3aXRoIHRoZSB0YXNrXG4gICAgLy8gcXVldWUgc2NoZWR1bGluZyBsb2dpYy5cbiAgICB6b25lU3BlYy5vbkhhc1Rhc2sgPSBmdW5jdGlvbiguLi5hcmdzOiBbWm9uZURlbGVnYXRlLCBab25lLCBab25lLCBIYXNUYXNrU3RhdGVdKSB7XG4gICAgICB6b25lU3BlY09uSGFzVGFzayguLi5hcmdzKTtcbiAgICAgIGludGVyY2VwdG9yLm9uSGFzVGFzayguLi5hcmdzKTtcbiAgICB9O1xuXG4gICAgcmV0dXJuIHpvbmVTcGVjW3N0YXRlT2JzZXJ2YWJsZVN5bWJvbF0gPSBpbnRlcmNlcHRvci5zdGF0ZTtcbiAgfVxufVxuIl19