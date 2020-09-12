/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __decorate, __metadata, __param } from "tslib";
import { isPromise } from '../src/util/lang';
import { Inject, Injectable, InjectionToken, Optional } from './di';
/**
 * An injection token that allows you to provide one or more initialization functions.
 * These function are injected at application startup and executed during
 * app initialization. If any of these functions returns a Promise, initialization
 * does not complete until the Promise is resolved.
 *
 * You can, for example, create a factory function that loads language data
 * or an external configuration, and provide that function to the `APP_INITIALIZER` token.
 * That way, the function is executed during the application bootstrap process,
 * and the needed data is available on startup.
 *
 * @publicApi
 */
export var APP_INITIALIZER = new InjectionToken('Application Initializer');
/**
 * A class that reflects the state of running {@link APP_INITIALIZER}s.
 *
 * @publicApi
 */
var ApplicationInitStatus = /** @class */ (function () {
    function ApplicationInitStatus(appInits) {
        var _this = this;
        this.appInits = appInits;
        this.initialized = false;
        this.done = false;
        this.donePromise = new Promise(function (res, rej) {
            _this.resolve = res;
            _this.reject = rej;
        });
    }
    /** @internal */
    ApplicationInitStatus.prototype.runInitializers = function () {
        var _this = this;
        if (this.initialized) {
            return;
        }
        var asyncInitPromises = [];
        var complete = function () {
            _this.done = true;
            _this.resolve();
        };
        if (this.appInits) {
            for (var i = 0; i < this.appInits.length; i++) {
                var initResult = this.appInits[i]();
                if (isPromise(initResult)) {
                    asyncInitPromises.push(initResult);
                }
            }
        }
        Promise.all(asyncInitPromises).then(function () { complete(); }).catch(function (e) { _this.reject(e); });
        if (asyncInitPromises.length === 0) {
            complete();
        }
        this.initialized = true;
    };
    ApplicationInitStatus = __decorate([
        Injectable(),
        __param(0, Inject(APP_INITIALIZER)), __param(0, Optional()),
        __metadata("design:paramtypes", [Array])
    ], ApplicationInitStatus);
    return ApplicationInitStatus;
}());
export { ApplicationInitStatus };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXBwbGljYXRpb25faW5pdC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL2FwcGxpY2F0aW9uX2luaXQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOztBQUVILE9BQU8sRUFBQyxTQUFTLEVBQUMsTUFBTSxrQkFBa0IsQ0FBQztBQUUzQyxPQUFPLEVBQUMsTUFBTSxFQUFFLFVBQVUsRUFBRSxjQUFjLEVBQUUsUUFBUSxFQUFDLE1BQU0sTUFBTSxDQUFDO0FBR2xFOzs7Ozs7Ozs7Ozs7R0FZRztBQUNILE1BQU0sQ0FBQyxJQUFNLGVBQWUsR0FBRyxJQUFJLGNBQWMsQ0FBb0IseUJBQXlCLENBQUMsQ0FBQztBQUVoRzs7OztHQUlHO0FBRUg7SUFTRSwrQkFBeUQsUUFBdUI7UUFBaEYsaUJBS0M7UUFMd0QsYUFBUSxHQUFSLFFBQVEsQ0FBZTtRQUp4RSxnQkFBVyxHQUFHLEtBQUssQ0FBQztRQUVaLFNBQUksR0FBRyxLQUFLLENBQUM7UUFHM0IsSUFBSSxDQUFDLFdBQVcsR0FBRyxJQUFJLE9BQU8sQ0FBQyxVQUFDLEdBQUcsRUFBRSxHQUFHO1lBQ3RDLEtBQUksQ0FBQyxPQUFPLEdBQUcsR0FBRyxDQUFDO1lBQ25CLEtBQUksQ0FBQyxNQUFNLEdBQUcsR0FBRyxDQUFDO1FBQ3BCLENBQUMsQ0FBQyxDQUFDO0lBQ0wsQ0FBQztJQUVELGdCQUFnQjtJQUNoQiwrQ0FBZSxHQUFmO1FBQUEsaUJBMkJDO1FBMUJDLElBQUksSUFBSSxDQUFDLFdBQVcsRUFBRTtZQUNwQixPQUFPO1NBQ1I7UUFFRCxJQUFNLGlCQUFpQixHQUFtQixFQUFFLENBQUM7UUFFN0MsSUFBTSxRQUFRLEdBQUc7WUFDZCxLQUF1QixDQUFDLElBQUksR0FBRyxJQUFJLENBQUM7WUFDckMsS0FBSSxDQUFDLE9BQU8sRUFBRSxDQUFDO1FBQ2pCLENBQUMsQ0FBQztRQUVGLElBQUksSUFBSSxDQUFDLFFBQVEsRUFBRTtZQUNqQixLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsSUFBSSxDQUFDLFFBQVEsQ0FBQyxNQUFNLEVBQUUsQ0FBQyxFQUFFLEVBQUU7Z0JBQzdDLElBQU0sVUFBVSxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQztnQkFDdEMsSUFBSSxTQUFTLENBQUMsVUFBVSxDQUFDLEVBQUU7b0JBQ3pCLGlCQUFpQixDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsQ0FBQztpQkFDcEM7YUFDRjtTQUNGO1FBRUQsT0FBTyxDQUFDLEdBQUcsQ0FBQyxpQkFBaUIsQ0FBQyxDQUFDLElBQUksQ0FBQyxjQUFRLFFBQVEsRUFBRSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsS0FBSyxDQUFDLFVBQUEsQ0FBQyxJQUFNLEtBQUksQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUUzRixJQUFJLGlCQUFpQixDQUFDLE1BQU0sS0FBSyxDQUFDLEVBQUU7WUFDbEMsUUFBUSxFQUFFLENBQUM7U0FDWjtRQUNELElBQUksQ0FBQyxXQUFXLEdBQUcsSUFBSSxDQUFDO0lBQzFCLENBQUM7SUE1Q1UscUJBQXFCO1FBRGpDLFVBQVUsRUFBRTtRQVVFLFdBQUEsTUFBTSxDQUFDLGVBQWUsQ0FBQyxDQUFBLEVBQUUsV0FBQSxRQUFRLEVBQUUsQ0FBQTs7T0FUckMscUJBQXFCLENBNkNqQztJQUFELDRCQUFDO0NBQUEsQUE3Q0QsSUE2Q0M7U0E3Q1kscUJBQXFCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge2lzUHJvbWlzZX0gZnJvbSAnLi4vc3JjL3V0aWwvbGFuZyc7XG5cbmltcG9ydCB7SW5qZWN0LCBJbmplY3RhYmxlLCBJbmplY3Rpb25Ub2tlbiwgT3B0aW9uYWx9IGZyb20gJy4vZGknO1xuXG5cbi8qKlxuICogQW4gaW5qZWN0aW9uIHRva2VuIHRoYXQgYWxsb3dzIHlvdSB0byBwcm92aWRlIG9uZSBvciBtb3JlIGluaXRpYWxpemF0aW9uIGZ1bmN0aW9ucy5cbiAqIFRoZXNlIGZ1bmN0aW9uIGFyZSBpbmplY3RlZCBhdCBhcHBsaWNhdGlvbiBzdGFydHVwIGFuZCBleGVjdXRlZCBkdXJpbmdcbiAqIGFwcCBpbml0aWFsaXphdGlvbi4gSWYgYW55IG9mIHRoZXNlIGZ1bmN0aW9ucyByZXR1cm5zIGEgUHJvbWlzZSwgaW5pdGlhbGl6YXRpb25cbiAqIGRvZXMgbm90IGNvbXBsZXRlIHVudGlsIHRoZSBQcm9taXNlIGlzIHJlc29sdmVkLlxuICpcbiAqIFlvdSBjYW4sIGZvciBleGFtcGxlLCBjcmVhdGUgYSBmYWN0b3J5IGZ1bmN0aW9uIHRoYXQgbG9hZHMgbGFuZ3VhZ2UgZGF0YVxuICogb3IgYW4gZXh0ZXJuYWwgY29uZmlndXJhdGlvbiwgYW5kIHByb3ZpZGUgdGhhdCBmdW5jdGlvbiB0byB0aGUgYEFQUF9JTklUSUFMSVpFUmAgdG9rZW4uXG4gKiBUaGF0IHdheSwgdGhlIGZ1bmN0aW9uIGlzIGV4ZWN1dGVkIGR1cmluZyB0aGUgYXBwbGljYXRpb24gYm9vdHN0cmFwIHByb2Nlc3MsXG4gKiBhbmQgdGhlIG5lZWRlZCBkYXRhIGlzIGF2YWlsYWJsZSBvbiBzdGFydHVwLlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGNvbnN0IEFQUF9JTklUSUFMSVpFUiA9IG5ldyBJbmplY3Rpb25Ub2tlbjxBcnJheTwoKSA9PiB2b2lkPj4oJ0FwcGxpY2F0aW9uIEluaXRpYWxpemVyJyk7XG5cbi8qKlxuICogQSBjbGFzcyB0aGF0IHJlZmxlY3RzIHRoZSBzdGF0ZSBvZiBydW5uaW5nIHtAbGluayBBUFBfSU5JVElBTElaRVJ9cy5cbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbkBJbmplY3RhYmxlKClcbmV4cG9ydCBjbGFzcyBBcHBsaWNhdGlvbkluaXRTdGF0dXMge1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSByZXNvbHZlICE6IEZ1bmN0aW9uO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSByZWplY3QgITogRnVuY3Rpb247XG4gIHByaXZhdGUgaW5pdGlhbGl6ZWQgPSBmYWxzZTtcbiAgcHVibGljIHJlYWRvbmx5IGRvbmVQcm9taXNlOiBQcm9taXNlPGFueT47XG4gIHB1YmxpYyByZWFkb25seSBkb25lID0gZmFsc2U7XG5cbiAgY29uc3RydWN0b3IoQEluamVjdChBUFBfSU5JVElBTElaRVIpIEBPcHRpb25hbCgpIHByaXZhdGUgYXBwSW5pdHM6ICgoKSA9PiBhbnkpW10pIHtcbiAgICB0aGlzLmRvbmVQcm9taXNlID0gbmV3IFByb21pc2UoKHJlcywgcmVqKSA9PiB7XG4gICAgICB0aGlzLnJlc29sdmUgPSByZXM7XG4gICAgICB0aGlzLnJlamVjdCA9IHJlajtcbiAgICB9KTtcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgcnVuSW5pdGlhbGl6ZXJzKCkge1xuICAgIGlmICh0aGlzLmluaXRpYWxpemVkKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3QgYXN5bmNJbml0UHJvbWlzZXM6IFByb21pc2U8YW55PltdID0gW107XG5cbiAgICBjb25zdCBjb21wbGV0ZSA9ICgpID0+IHtcbiAgICAgICh0aGlzIGFze2RvbmU6IGJvb2xlYW59KS5kb25lID0gdHJ1ZTtcbiAgICAgIHRoaXMucmVzb2x2ZSgpO1xuICAgIH07XG5cbiAgICBpZiAodGhpcy5hcHBJbml0cykge1xuICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCB0aGlzLmFwcEluaXRzLmxlbmd0aDsgaSsrKSB7XG4gICAgICAgIGNvbnN0IGluaXRSZXN1bHQgPSB0aGlzLmFwcEluaXRzW2ldKCk7XG4gICAgICAgIGlmIChpc1Byb21pc2UoaW5pdFJlc3VsdCkpIHtcbiAgICAgICAgICBhc3luY0luaXRQcm9taXNlcy5wdXNoKGluaXRSZXN1bHQpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgUHJvbWlzZS5hbGwoYXN5bmNJbml0UHJvbWlzZXMpLnRoZW4oKCkgPT4geyBjb21wbGV0ZSgpOyB9KS5jYXRjaChlID0+IHsgdGhpcy5yZWplY3QoZSk7IH0pO1xuXG4gICAgaWYgKGFzeW5jSW5pdFByb21pc2VzLmxlbmd0aCA9PT0gMCkge1xuICAgICAgY29tcGxldGUoKTtcbiAgICB9XG4gICAgdGhpcy5pbml0aWFsaXplZCA9IHRydWU7XG4gIH1cbn1cbiJdfQ==