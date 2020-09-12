/**
 * @fileoverview added by tsickle
 * Generated from: packages/compiler/testing/src/directive_resolver_mock.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { DirectiveResolver } from '@angular/compiler';
/**
 * An implementation of {\@link DirectiveResolver} that allows overriding
 * various properties of directives.
 */
export class MockDirectiveResolver extends DirectiveResolver {
    /**
     * @param {?} reflector
     */
    constructor(reflector) {
        super(reflector);
        this._directives = new Map();
    }
    /**
     * @param {?} type
     * @param {?=} throwIfNotFound
     * @return {?}
     */
    resolve(type, throwIfNotFound = true) {
        return this._directives.get(type) || super.resolve(type, throwIfNotFound);
    }
    /**
     * Overrides the {\@link core.Directive} for a directive.
     * @param {?} type
     * @param {?} metadata
     * @return {?}
     */
    setDirective(type, metadata) {
        this._directives.set(type, metadata);
    }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    MockDirectiveResolver.prototype._directives;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGlyZWN0aXZlX3Jlc29sdmVyX21vY2suanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci90ZXN0aW5nL3NyYy9kaXJlY3RpdmVfcmVzb2x2ZXJfbW9jay50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7QUFPQSxPQUFPLEVBQW1CLGlCQUFpQixFQUFPLE1BQU0sbUJBQW1CLENBQUM7Ozs7O0FBTTVFLE1BQU0sT0FBTyxxQkFBc0IsU0FBUSxpQkFBaUI7Ozs7SUFHMUQsWUFBWSxTQUEyQjtRQUFJLEtBQUssQ0FBQyxTQUFTLENBQUMsQ0FBQztRQUZwRCxnQkFBVyxHQUFHLElBQUksR0FBRyxFQUE2QixDQUFDO0lBRUUsQ0FBQzs7Ozs7O0lBSzlELE9BQU8sQ0FBQyxJQUFlLEVBQUUsZUFBZSxHQUFHLElBQUk7UUFDN0MsT0FBTyxJQUFJLENBQUMsV0FBVyxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsSUFBSSxLQUFLLENBQUMsT0FBTyxDQUFDLElBQUksRUFBRSxlQUFlLENBQUMsQ0FBQztJQUM1RSxDQUFDOzs7Ozs7O0lBS0QsWUFBWSxDQUFDLElBQWUsRUFBRSxRQUF3QjtRQUNwRCxJQUFJLENBQUMsV0FBVyxDQUFDLEdBQUcsQ0FBQyxJQUFJLEVBQUUsUUFBUSxDQUFDLENBQUM7SUFDdkMsQ0FBQztDQUNGOzs7Ozs7SUFqQkMsNENBQTJEIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IHtDb21waWxlUmVmbGVjdG9yLCBEaXJlY3RpdmVSZXNvbHZlciwgY29yZX0gZnJvbSAnQGFuZ3VsYXIvY29tcGlsZXInO1xuXG4vKipcbiAqIEFuIGltcGxlbWVudGF0aW9uIG9mIHtAbGluayBEaXJlY3RpdmVSZXNvbHZlcn0gdGhhdCBhbGxvd3Mgb3ZlcnJpZGluZ1xuICogdmFyaW91cyBwcm9wZXJ0aWVzIG9mIGRpcmVjdGl2ZXMuXG4gKi9cbmV4cG9ydCBjbGFzcyBNb2NrRGlyZWN0aXZlUmVzb2x2ZXIgZXh0ZW5kcyBEaXJlY3RpdmVSZXNvbHZlciB7XG4gIHByaXZhdGUgX2RpcmVjdGl2ZXMgPSBuZXcgTWFwPGNvcmUuVHlwZSwgY29yZS5EaXJlY3RpdmU+KCk7XG5cbiAgY29uc3RydWN0b3IocmVmbGVjdG9yOiBDb21waWxlUmVmbGVjdG9yKSB7IHN1cGVyKHJlZmxlY3Rvcik7IH1cblxuICByZXNvbHZlKHR5cGU6IGNvcmUuVHlwZSk6IGNvcmUuRGlyZWN0aXZlO1xuICByZXNvbHZlKHR5cGU6IGNvcmUuVHlwZSwgdGhyb3dJZk5vdEZvdW5kOiB0cnVlKTogY29yZS5EaXJlY3RpdmU7XG4gIHJlc29sdmUodHlwZTogY29yZS5UeXBlLCB0aHJvd0lmTm90Rm91bmQ6IGJvb2xlYW4pOiBjb3JlLkRpcmVjdGl2ZXxudWxsO1xuICByZXNvbHZlKHR5cGU6IGNvcmUuVHlwZSwgdGhyb3dJZk5vdEZvdW5kID0gdHJ1ZSk6IGNvcmUuRGlyZWN0aXZlfG51bGwge1xuICAgIHJldHVybiB0aGlzLl9kaXJlY3RpdmVzLmdldCh0eXBlKSB8fCBzdXBlci5yZXNvbHZlKHR5cGUsIHRocm93SWZOb3RGb3VuZCk7XG4gIH1cblxuICAvKipcbiAgICogT3ZlcnJpZGVzIHRoZSB7QGxpbmsgY29yZS5EaXJlY3RpdmV9IGZvciBhIGRpcmVjdGl2ZS5cbiAgICovXG4gIHNldERpcmVjdGl2ZSh0eXBlOiBjb3JlLlR5cGUsIG1ldGFkYXRhOiBjb3JlLkRpcmVjdGl2ZSk6IHZvaWQge1xuICAgIHRoaXMuX2RpcmVjdGl2ZXMuc2V0KHR5cGUsIG1ldGFkYXRhKTtcbiAgfVxufVxuIl19