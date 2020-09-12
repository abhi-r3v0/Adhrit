/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/testing/src/async_test_completer.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/**
 * Injectable completer that allows signaling completion of an asynchronous test. Used internally.
 */
export class AsyncTestCompleter {
    constructor() {
        this._promise = new Promise((/**
         * @param {?} res
         * @param {?} rej
         * @return {?}
         */
        (res, rej) => {
            this._resolve = res;
            this._reject = rej;
        }));
    }
    /**
     * @param {?=} value
     * @return {?}
     */
    done(value) { this._resolve(value); }
    /**
     * @param {?=} error
     * @param {?=} stackTrace
     * @return {?}
     */
    fail(error, stackTrace) { this._reject(error); }
    /**
     * @return {?}
     */
    get promise() { return this._promise; }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    AsyncTestCompleter.prototype._resolve;
    /**
     * @type {?}
     * @private
     */
    AsyncTestCompleter.prototype._reject;
    /**
     * @type {?}
     * @private
     */
    AsyncTestCompleter.prototype._promise;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXN5bmNfdGVzdF9jb21wbGV0ZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3Rlc3Rpbmcvc3JjL2FzeW5jX3Rlc3RfY29tcGxldGVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7OztBQVdBLE1BQU0sT0FBTyxrQkFBa0I7SUFBL0I7UUFLVSxhQUFRLEdBQWlCLElBQUksT0FBTzs7Ozs7UUFBQyxDQUFDLEdBQUcsRUFBRSxHQUFHLEVBQUUsRUFBRTtZQUN4RCxJQUFJLENBQUMsUUFBUSxHQUFHLEdBQUcsQ0FBQztZQUNwQixJQUFJLENBQUMsT0FBTyxHQUFHLEdBQUcsQ0FBQztRQUNyQixDQUFDLEVBQUMsQ0FBQztJQU1MLENBQUM7Ozs7O0lBTEMsSUFBSSxDQUFDLEtBQVcsSUFBSSxJQUFJLENBQUMsUUFBUSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQzs7Ozs7O0lBRTNDLElBQUksQ0FBQyxLQUFXLEVBQUUsVUFBbUIsSUFBSSxJQUFJLENBQUMsT0FBTyxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQzs7OztJQUUvRCxJQUFJLE9BQU8sS0FBbUIsT0FBTyxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUMsQ0FBQztDQUN0RDs7Ozs7O0lBWkMsc0NBQTBDOzs7OztJQUUxQyxxQ0FBc0M7Ozs7O0lBQ3RDLHNDQUdHIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG4vKipcbiAqIEluamVjdGFibGUgY29tcGxldGVyIHRoYXQgYWxsb3dzIHNpZ25hbGluZyBjb21wbGV0aW9uIG9mIGFuIGFzeW5jaHJvbm91cyB0ZXN0LiBVc2VkIGludGVybmFsbHkuXG4gKi9cbmV4cG9ydCBjbGFzcyBBc3luY1Rlc3RDb21wbGV0ZXIge1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfcmVzb2x2ZSAhOiAocmVzdWx0OiBhbnkpID0+IHZvaWQ7XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9yZWplY3QgITogKGVycjogYW55KSA9PiB2b2lkO1xuICBwcml2YXRlIF9wcm9taXNlOiBQcm9taXNlPGFueT4gPSBuZXcgUHJvbWlzZSgocmVzLCByZWopID0+IHtcbiAgICB0aGlzLl9yZXNvbHZlID0gcmVzO1xuICAgIHRoaXMuX3JlamVjdCA9IHJlajtcbiAgfSk7XG4gIGRvbmUodmFsdWU/OiBhbnkpIHsgdGhpcy5fcmVzb2x2ZSh2YWx1ZSk7IH1cblxuICBmYWlsKGVycm9yPzogYW55LCBzdGFja1RyYWNlPzogc3RyaW5nKSB7IHRoaXMuX3JlamVjdChlcnJvcik7IH1cblxuICBnZXQgcHJvbWlzZSgpOiBQcm9taXNlPGFueT4geyByZXR1cm4gdGhpcy5fcHJvbWlzZTsgfVxufVxuIl19