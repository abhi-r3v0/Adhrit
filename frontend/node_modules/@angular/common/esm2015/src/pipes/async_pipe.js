/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ChangeDetectorRef, Pipe, ɵisObservable, ɵisPromise } from '@angular/core';
import { invalidPipeArgumentError } from './invalid_pipe_argument_error';
class ObservableStrategy {
    createSubscription(async, updateLatestValue) {
        return async.subscribe({
            next: updateLatestValue,
            error: (e) => {
                throw e;
            }
        });
    }
    dispose(subscription) {
        subscription.unsubscribe();
    }
    onDestroy(subscription) {
        subscription.unsubscribe();
    }
}
class PromiseStrategy {
    createSubscription(async, updateLatestValue) {
        return async.then(updateLatestValue, e => {
            throw e;
        });
    }
    dispose(subscription) { }
    onDestroy(subscription) { }
}
const _promiseStrategy = new PromiseStrategy();
const _observableStrategy = new ObservableStrategy();
/**
 * @ngModule CommonModule
 * @description
 *
 * Unwraps a value from an asynchronous primitive.
 *
 * The `async` pipe subscribes to an `Observable` or `Promise` and returns the latest value it has
 * emitted. When a new value is emitted, the `async` pipe marks the component to be checked for
 * changes. When the component gets destroyed, the `async` pipe unsubscribes automatically to avoid
 * potential memory leaks.
 *
 * @usageNotes
 *
 * ### Examples
 *
 * This example binds a `Promise` to the view. Clicking the `Resolve` button resolves the
 * promise.
 *
 * {@example common/pipes/ts/async_pipe.ts region='AsyncPipePromise'}
 *
 * It's also possible to use `async` with Observables. The example below binds the `time` Observable
 * to the view. The Observable continuously updates the view with the current time.
 *
 * {@example common/pipes/ts/async_pipe.ts region='AsyncPipeObservable'}
 *
 * @publicApi
 */
export class AsyncPipe {
    constructor(_ref) {
        this._ref = _ref;
        this._latestValue = null;
        this._subscription = null;
        this._obj = null;
        this._strategy = null;
    }
    ngOnDestroy() {
        if (this._subscription) {
            this._dispose();
        }
    }
    transform(obj) {
        if (!this._obj) {
            if (obj) {
                this._subscribe(obj);
            }
            return this._latestValue;
        }
        if (obj !== this._obj) {
            this._dispose();
            return this.transform(obj);
        }
        return this._latestValue;
    }
    _subscribe(obj) {
        this._obj = obj;
        this._strategy = this._selectStrategy(obj);
        this._subscription = this._strategy.createSubscription(obj, (value) => this._updateLatestValue(obj, value));
    }
    _selectStrategy(obj) {
        if (ɵisPromise(obj)) {
            return _promiseStrategy;
        }
        if (ɵisObservable(obj)) {
            return _observableStrategy;
        }
        throw invalidPipeArgumentError(AsyncPipe, obj);
    }
    _dispose() {
        this._strategy.dispose(this._subscription);
        this._latestValue = null;
        this._subscription = null;
        this._obj = null;
    }
    _updateLatestValue(async, value) {
        if (async === this._obj) {
            this._latestValue = value;
            this._ref.markForCheck();
        }
    }
}
AsyncPipe.decorators = [
    { type: Pipe, args: [{ name: 'async', pure: false },] }
];
AsyncPipe.ctorParameters = () => [
    { type: ChangeDetectorRef }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXN5bmNfcGlwZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbW1vbi9zcmMvcGlwZXMvYXN5bmNfcGlwZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsaUJBQWlCLEVBQTJCLElBQUksRUFBaUIsYUFBYSxFQUFFLFVBQVUsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUV6SCxPQUFPLEVBQUMsd0JBQXdCLEVBQUMsTUFBTSwrQkFBK0IsQ0FBQztBQVN2RSxNQUFNLGtCQUFrQjtJQUN0QixrQkFBa0IsQ0FBQyxLQUFzQixFQUFFLGlCQUFzQjtRQUMvRCxPQUFPLEtBQUssQ0FBQyxTQUFTLENBQUM7WUFDckIsSUFBSSxFQUFFLGlCQUFpQjtZQUN2QixLQUFLLEVBQUUsQ0FBQyxDQUFNLEVBQUUsRUFBRTtnQkFDaEIsTUFBTSxDQUFDLENBQUM7WUFDVixDQUFDO1NBQ0YsQ0FBQyxDQUFDO0lBQ0wsQ0FBQztJQUVELE9BQU8sQ0FBQyxZQUE4QjtRQUNwQyxZQUFZLENBQUMsV0FBVyxFQUFFLENBQUM7SUFDN0IsQ0FBQztJQUVELFNBQVMsQ0FBQyxZQUE4QjtRQUN0QyxZQUFZLENBQUMsV0FBVyxFQUFFLENBQUM7SUFDN0IsQ0FBQztDQUNGO0FBRUQsTUFBTSxlQUFlO0lBQ25CLGtCQUFrQixDQUFDLEtBQW1CLEVBQUUsaUJBQWtDO1FBQ3hFLE9BQU8sS0FBSyxDQUFDLElBQUksQ0FBQyxpQkFBaUIsRUFBRSxDQUFDLENBQUMsRUFBRTtZQUN2QyxNQUFNLENBQUMsQ0FBQztRQUNWLENBQUMsQ0FBQyxDQUFDO0lBQ0wsQ0FBQztJQUVELE9BQU8sQ0FBQyxZQUEwQixJQUFTLENBQUM7SUFFNUMsU0FBUyxDQUFDLFlBQTBCLElBQVMsQ0FBQztDQUMvQztBQUVELE1BQU0sZ0JBQWdCLEdBQUcsSUFBSSxlQUFlLEVBQUUsQ0FBQztBQUMvQyxNQUFNLG1CQUFtQixHQUFHLElBQUksa0JBQWtCLEVBQUUsQ0FBQztBQUVyRDs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7R0EwQkc7QUFFSCxNQUFNLE9BQU8sU0FBUztJQU9wQixZQUFvQixJQUF1QjtRQUF2QixTQUFJLEdBQUosSUFBSSxDQUFtQjtRQU5uQyxpQkFBWSxHQUFRLElBQUksQ0FBQztRQUV6QixrQkFBYSxHQUF1QyxJQUFJLENBQUM7UUFDekQsU0FBSSxHQUF3RCxJQUFJLENBQUM7UUFDakUsY0FBUyxHQUF5QixJQUFLLENBQUM7SUFFRixDQUFDO0lBRS9DLFdBQVc7UUFDVCxJQUFJLElBQUksQ0FBQyxhQUFhLEVBQUU7WUFDdEIsSUFBSSxDQUFDLFFBQVEsRUFBRSxDQUFDO1NBQ2pCO0lBQ0gsQ0FBQztJQU1ELFNBQVMsQ0FBQyxHQUFnRDtRQUN4RCxJQUFJLENBQUMsSUFBSSxDQUFDLElBQUksRUFBRTtZQUNkLElBQUksR0FBRyxFQUFFO2dCQUNQLElBQUksQ0FBQyxVQUFVLENBQUMsR0FBRyxDQUFDLENBQUM7YUFDdEI7WUFDRCxPQUFPLElBQUksQ0FBQyxZQUFZLENBQUM7U0FDMUI7UUFFRCxJQUFJLEdBQUcsS0FBSyxJQUFJLENBQUMsSUFBSSxFQUFFO1lBQ3JCLElBQUksQ0FBQyxRQUFRLEVBQUUsQ0FBQztZQUNoQixPQUFPLElBQUksQ0FBQyxTQUFTLENBQUMsR0FBVSxDQUFDLENBQUM7U0FDbkM7UUFFRCxPQUFPLElBQUksQ0FBQyxZQUFZLENBQUM7SUFDM0IsQ0FBQztJQUVPLFVBQVUsQ0FBQyxHQUFtRDtRQUNwRSxJQUFJLENBQUMsSUFBSSxHQUFHLEdBQUcsQ0FBQztRQUNoQixJQUFJLENBQUMsU0FBUyxHQUFHLElBQUksQ0FBQyxlQUFlLENBQUMsR0FBRyxDQUFDLENBQUM7UUFDM0MsSUFBSSxDQUFDLGFBQWEsR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDLGtCQUFrQixDQUNsRCxHQUFHLEVBQUUsQ0FBQyxLQUFhLEVBQUUsRUFBRSxDQUFDLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxHQUFHLEVBQUUsS0FBSyxDQUFDLENBQUMsQ0FBQztJQUNuRSxDQUFDO0lBRU8sZUFBZSxDQUFDLEdBQW1EO1FBQ3pFLElBQUksVUFBVSxDQUFDLEdBQUcsQ0FBQyxFQUFFO1lBQ25CLE9BQU8sZ0JBQWdCLENBQUM7U0FDekI7UUFFRCxJQUFJLGFBQWEsQ0FBQyxHQUFHLENBQUMsRUFBRTtZQUN0QixPQUFPLG1CQUFtQixDQUFDO1NBQzVCO1FBRUQsTUFBTSx3QkFBd0IsQ0FBQyxTQUFTLEVBQUUsR0FBRyxDQUFDLENBQUM7SUFDakQsQ0FBQztJQUVPLFFBQVE7UUFDZCxJQUFJLENBQUMsU0FBUyxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsYUFBYyxDQUFDLENBQUM7UUFDNUMsSUFBSSxDQUFDLFlBQVksR0FBRyxJQUFJLENBQUM7UUFDekIsSUFBSSxDQUFDLGFBQWEsR0FBRyxJQUFJLENBQUM7UUFDMUIsSUFBSSxDQUFDLElBQUksR0FBRyxJQUFJLENBQUM7SUFDbkIsQ0FBQztJQUVPLGtCQUFrQixDQUFDLEtBQVUsRUFBRSxLQUFhO1FBQ2xELElBQUksS0FBSyxLQUFLLElBQUksQ0FBQyxJQUFJLEVBQUU7WUFDdkIsSUFBSSxDQUFDLFlBQVksR0FBRyxLQUFLLENBQUM7WUFDMUIsSUFBSSxDQUFDLElBQUksQ0FBQyxZQUFZLEVBQUUsQ0FBQztTQUMxQjtJQUNILENBQUM7OztZQW5FRixJQUFJLFNBQUMsRUFBQyxJQUFJLEVBQUUsT0FBTyxFQUFFLElBQUksRUFBRSxLQUFLLEVBQUM7OztZQXhFMUIsaUJBQWlCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Q2hhbmdlRGV0ZWN0b3JSZWYsIEV2ZW50RW1pdHRlciwgT25EZXN0cm95LCBQaXBlLCBQaXBlVHJhbnNmb3JtLCDJtWlzT2JzZXJ2YWJsZSwgybVpc1Byb21pc2V9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHtPYnNlcnZhYmxlLCBTdWJzY3JpcHRpb25MaWtlfSBmcm9tICdyeGpzJztcbmltcG9ydCB7aW52YWxpZFBpcGVBcmd1bWVudEVycm9yfSBmcm9tICcuL2ludmFsaWRfcGlwZV9hcmd1bWVudF9lcnJvcic7XG5cbmludGVyZmFjZSBTdWJzY3JpcHRpb25TdHJhdGVneSB7XG4gIGNyZWF0ZVN1YnNjcmlwdGlvbihhc3luYzogT2JzZXJ2YWJsZTxhbnk+fFByb21pc2U8YW55PiwgdXBkYXRlTGF0ZXN0VmFsdWU6IGFueSk6IFN1YnNjcmlwdGlvbkxpa2VcbiAgICAgIHxQcm9taXNlPGFueT47XG4gIGRpc3Bvc2Uoc3Vic2NyaXB0aW9uOiBTdWJzY3JpcHRpb25MaWtlfFByb21pc2U8YW55Pik6IHZvaWQ7XG4gIG9uRGVzdHJveShzdWJzY3JpcHRpb246IFN1YnNjcmlwdGlvbkxpa2V8UHJvbWlzZTxhbnk+KTogdm9pZDtcbn1cblxuY2xhc3MgT2JzZXJ2YWJsZVN0cmF0ZWd5IGltcGxlbWVudHMgU3Vic2NyaXB0aW9uU3RyYXRlZ3kge1xuICBjcmVhdGVTdWJzY3JpcHRpb24oYXN5bmM6IE9ic2VydmFibGU8YW55PiwgdXBkYXRlTGF0ZXN0VmFsdWU6IGFueSk6IFN1YnNjcmlwdGlvbkxpa2Uge1xuICAgIHJldHVybiBhc3luYy5zdWJzY3JpYmUoe1xuICAgICAgbmV4dDogdXBkYXRlTGF0ZXN0VmFsdWUsXG4gICAgICBlcnJvcjogKGU6IGFueSkgPT4ge1xuICAgICAgICB0aHJvdyBlO1xuICAgICAgfVxuICAgIH0pO1xuICB9XG5cbiAgZGlzcG9zZShzdWJzY3JpcHRpb246IFN1YnNjcmlwdGlvbkxpa2UpOiB2b2lkIHtcbiAgICBzdWJzY3JpcHRpb24udW5zdWJzY3JpYmUoKTtcbiAgfVxuXG4gIG9uRGVzdHJveShzdWJzY3JpcHRpb246IFN1YnNjcmlwdGlvbkxpa2UpOiB2b2lkIHtcbiAgICBzdWJzY3JpcHRpb24udW5zdWJzY3JpYmUoKTtcbiAgfVxufVxuXG5jbGFzcyBQcm9taXNlU3RyYXRlZ3kgaW1wbGVtZW50cyBTdWJzY3JpcHRpb25TdHJhdGVneSB7XG4gIGNyZWF0ZVN1YnNjcmlwdGlvbihhc3luYzogUHJvbWlzZTxhbnk+LCB1cGRhdGVMYXRlc3RWYWx1ZTogKHY6IGFueSkgPT4gYW55KTogUHJvbWlzZTxhbnk+IHtcbiAgICByZXR1cm4gYXN5bmMudGhlbih1cGRhdGVMYXRlc3RWYWx1ZSwgZSA9PiB7XG4gICAgICB0aHJvdyBlO1xuICAgIH0pO1xuICB9XG5cbiAgZGlzcG9zZShzdWJzY3JpcHRpb246IFByb21pc2U8YW55Pik6IHZvaWQge31cblxuICBvbkRlc3Ryb3koc3Vic2NyaXB0aW9uOiBQcm9taXNlPGFueT4pOiB2b2lkIHt9XG59XG5cbmNvbnN0IF9wcm9taXNlU3RyYXRlZ3kgPSBuZXcgUHJvbWlzZVN0cmF0ZWd5KCk7XG5jb25zdCBfb2JzZXJ2YWJsZVN0cmF0ZWd5ID0gbmV3IE9ic2VydmFibGVTdHJhdGVneSgpO1xuXG4vKipcbiAqIEBuZ01vZHVsZSBDb21tb25Nb2R1bGVcbiAqIEBkZXNjcmlwdGlvblxuICpcbiAqIFVud3JhcHMgYSB2YWx1ZSBmcm9tIGFuIGFzeW5jaHJvbm91cyBwcmltaXRpdmUuXG4gKlxuICogVGhlIGBhc3luY2AgcGlwZSBzdWJzY3JpYmVzIHRvIGFuIGBPYnNlcnZhYmxlYCBvciBgUHJvbWlzZWAgYW5kIHJldHVybnMgdGhlIGxhdGVzdCB2YWx1ZSBpdCBoYXNcbiAqIGVtaXR0ZWQuIFdoZW4gYSBuZXcgdmFsdWUgaXMgZW1pdHRlZCwgdGhlIGBhc3luY2AgcGlwZSBtYXJrcyB0aGUgY29tcG9uZW50IHRvIGJlIGNoZWNrZWQgZm9yXG4gKiBjaGFuZ2VzLiBXaGVuIHRoZSBjb21wb25lbnQgZ2V0cyBkZXN0cm95ZWQsIHRoZSBgYXN5bmNgIHBpcGUgdW5zdWJzY3JpYmVzIGF1dG9tYXRpY2FsbHkgdG8gYXZvaWRcbiAqIHBvdGVudGlhbCBtZW1vcnkgbGVha3MuXG4gKlxuICogQHVzYWdlTm90ZXNcbiAqXG4gKiAjIyMgRXhhbXBsZXNcbiAqXG4gKiBUaGlzIGV4YW1wbGUgYmluZHMgYSBgUHJvbWlzZWAgdG8gdGhlIHZpZXcuIENsaWNraW5nIHRoZSBgUmVzb2x2ZWAgYnV0dG9uIHJlc29sdmVzIHRoZVxuICogcHJvbWlzZS5cbiAqXG4gKiB7QGV4YW1wbGUgY29tbW9uL3BpcGVzL3RzL2FzeW5jX3BpcGUudHMgcmVnaW9uPSdBc3luY1BpcGVQcm9taXNlJ31cbiAqXG4gKiBJdCdzIGFsc28gcG9zc2libGUgdG8gdXNlIGBhc3luY2Agd2l0aCBPYnNlcnZhYmxlcy4gVGhlIGV4YW1wbGUgYmVsb3cgYmluZHMgdGhlIGB0aW1lYCBPYnNlcnZhYmxlXG4gKiB0byB0aGUgdmlldy4gVGhlIE9ic2VydmFibGUgY29udGludW91c2x5IHVwZGF0ZXMgdGhlIHZpZXcgd2l0aCB0aGUgY3VycmVudCB0aW1lLlxuICpcbiAqIHtAZXhhbXBsZSBjb21tb24vcGlwZXMvdHMvYXN5bmNfcGlwZS50cyByZWdpb249J0FzeW5jUGlwZU9ic2VydmFibGUnfVxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuQFBpcGUoe25hbWU6ICdhc3luYycsIHB1cmU6IGZhbHNlfSlcbmV4cG9ydCBjbGFzcyBBc3luY1BpcGUgaW1wbGVtZW50cyBPbkRlc3Ryb3ksIFBpcGVUcmFuc2Zvcm0ge1xuICBwcml2YXRlIF9sYXRlc3RWYWx1ZTogYW55ID0gbnVsbDtcblxuICBwcml2YXRlIF9zdWJzY3JpcHRpb246IFN1YnNjcmlwdGlvbkxpa2V8UHJvbWlzZTxhbnk+fG51bGwgPSBudWxsO1xuICBwcml2YXRlIF9vYmo6IE9ic2VydmFibGU8YW55PnxQcm9taXNlPGFueT58RXZlbnRFbWl0dGVyPGFueT58bnVsbCA9IG51bGw7XG4gIHByaXZhdGUgX3N0cmF0ZWd5OiBTdWJzY3JpcHRpb25TdHJhdGVneSA9IG51bGwhO1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgX3JlZjogQ2hhbmdlRGV0ZWN0b3JSZWYpIHt9XG5cbiAgbmdPbkRlc3Ryb3koKTogdm9pZCB7XG4gICAgaWYgKHRoaXMuX3N1YnNjcmlwdGlvbikge1xuICAgICAgdGhpcy5fZGlzcG9zZSgpO1xuICAgIH1cbiAgfVxuXG4gIHRyYW5zZm9ybTxUPihvYmo6IG51bGwpOiBudWxsO1xuICB0cmFuc2Zvcm08VD4ob2JqOiB1bmRlZmluZWQpOiB1bmRlZmluZWQ7XG4gIHRyYW5zZm9ybTxUPihvYmo6IE9ic2VydmFibGU8VD58bnVsbHx1bmRlZmluZWQpOiBUfG51bGw7XG4gIHRyYW5zZm9ybTxUPihvYmo6IFByb21pc2U8VD58bnVsbHx1bmRlZmluZWQpOiBUfG51bGw7XG4gIHRyYW5zZm9ybShvYmo6IE9ic2VydmFibGU8YW55PnxQcm9taXNlPGFueT58bnVsbHx1bmRlZmluZWQpOiBhbnkge1xuICAgIGlmICghdGhpcy5fb2JqKSB7XG4gICAgICBpZiAob2JqKSB7XG4gICAgICAgIHRoaXMuX3N1YnNjcmliZShvYmopO1xuICAgICAgfVxuICAgICAgcmV0dXJuIHRoaXMuX2xhdGVzdFZhbHVlO1xuICAgIH1cblxuICAgIGlmIChvYmogIT09IHRoaXMuX29iaikge1xuICAgICAgdGhpcy5fZGlzcG9zZSgpO1xuICAgICAgcmV0dXJuIHRoaXMudHJhbnNmb3JtKG9iaiBhcyBhbnkpO1xuICAgIH1cblxuICAgIHJldHVybiB0aGlzLl9sYXRlc3RWYWx1ZTtcbiAgfVxuXG4gIHByaXZhdGUgX3N1YnNjcmliZShvYmo6IE9ic2VydmFibGU8YW55PnxQcm9taXNlPGFueT58RXZlbnRFbWl0dGVyPGFueT4pOiB2b2lkIHtcbiAgICB0aGlzLl9vYmogPSBvYmo7XG4gICAgdGhpcy5fc3RyYXRlZ3kgPSB0aGlzLl9zZWxlY3RTdHJhdGVneShvYmopO1xuICAgIHRoaXMuX3N1YnNjcmlwdGlvbiA9IHRoaXMuX3N0cmF0ZWd5LmNyZWF0ZVN1YnNjcmlwdGlvbihcbiAgICAgICAgb2JqLCAodmFsdWU6IE9iamVjdCkgPT4gdGhpcy5fdXBkYXRlTGF0ZXN0VmFsdWUob2JqLCB2YWx1ZSkpO1xuICB9XG5cbiAgcHJpdmF0ZSBfc2VsZWN0U3RyYXRlZ3kob2JqOiBPYnNlcnZhYmxlPGFueT58UHJvbWlzZTxhbnk+fEV2ZW50RW1pdHRlcjxhbnk+KTogYW55IHtcbiAgICBpZiAoybVpc1Byb21pc2Uob2JqKSkge1xuICAgICAgcmV0dXJuIF9wcm9taXNlU3RyYXRlZ3k7XG4gICAgfVxuXG4gICAgaWYgKMm1aXNPYnNlcnZhYmxlKG9iaikpIHtcbiAgICAgIHJldHVybiBfb2JzZXJ2YWJsZVN0cmF0ZWd5O1xuICAgIH1cblxuICAgIHRocm93IGludmFsaWRQaXBlQXJndW1lbnRFcnJvcihBc3luY1BpcGUsIG9iaik7XG4gIH1cblxuICBwcml2YXRlIF9kaXNwb3NlKCk6IHZvaWQge1xuICAgIHRoaXMuX3N0cmF0ZWd5LmRpc3Bvc2UodGhpcy5fc3Vic2NyaXB0aW9uISk7XG4gICAgdGhpcy5fbGF0ZXN0VmFsdWUgPSBudWxsO1xuICAgIHRoaXMuX3N1YnNjcmlwdGlvbiA9IG51bGw7XG4gICAgdGhpcy5fb2JqID0gbnVsbDtcbiAgfVxuXG4gIHByaXZhdGUgX3VwZGF0ZUxhdGVzdFZhbHVlKGFzeW5jOiBhbnksIHZhbHVlOiBPYmplY3QpOiB2b2lkIHtcbiAgICBpZiAoYXN5bmMgPT09IHRoaXMuX29iaikge1xuICAgICAgdGhpcy5fbGF0ZXN0VmFsdWUgPSB2YWx1ZTtcbiAgICAgIHRoaXMuX3JlZi5tYXJrRm9yQ2hlY2soKTtcbiAgICB9XG4gIH1cbn1cbiJdfQ==