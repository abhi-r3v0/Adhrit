/**
 * @fileoverview added by tsickle
 * Generated from: packages/compiler/testing/src/ng_module_resolver_mock.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { NgModuleResolver } from '@angular/compiler';
export class MockNgModuleResolver extends NgModuleResolver {
    /**
     * @param {?} reflector
     */
    constructor(reflector) {
        super(reflector);
        this._ngModules = new Map();
    }
    /**
     * Overrides the {\@link NgModule} for a module.
     * @param {?} type
     * @param {?} metadata
     * @return {?}
     */
    setNgModule(type, metadata) {
        this._ngModules.set(type, metadata);
    }
    /**
     * Returns the {\@link NgModule} for a module:
     * - Set the {\@link NgModule} to the overridden view when it exists or fallback to the
     * default
     * `NgModuleResolver`, see `setNgModule`.
     * @param {?} type
     * @param {?=} throwIfNotFound
     * @return {?}
     */
    resolve(type, throwIfNotFound = true) {
        return this._ngModules.get(type) || (/** @type {?} */ (super.resolve(type, throwIfNotFound)));
    }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    MockNgModuleResolver.prototype._ngModules;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmdfbW9kdWxlX3Jlc29sdmVyX21vY2suanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci90ZXN0aW5nL3NyYy9uZ19tb2R1bGVfcmVzb2x2ZXJfbW9jay50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7QUFRQSxPQUFPLEVBQW1CLGdCQUFnQixFQUFPLE1BQU0sbUJBQW1CLENBQUM7QUFFM0UsTUFBTSxPQUFPLG9CQUFxQixTQUFRLGdCQUFnQjs7OztJQUd4RCxZQUFZLFNBQTJCO1FBQUksS0FBSyxDQUFDLFNBQVMsQ0FBQyxDQUFDO1FBRnBELGVBQVUsR0FBRyxJQUFJLEdBQUcsRUFBNEIsQ0FBQztJQUVJLENBQUM7Ozs7Ozs7SUFLOUQsV0FBVyxDQUFDLElBQWUsRUFBRSxRQUF1QjtRQUNsRCxJQUFJLENBQUMsVUFBVSxDQUFDLEdBQUcsQ0FBQyxJQUFJLEVBQUUsUUFBUSxDQUFDLENBQUM7SUFDdEMsQ0FBQzs7Ozs7Ozs7OztJQVFELE9BQU8sQ0FBQyxJQUFlLEVBQUUsZUFBZSxHQUFHLElBQUk7UUFDN0MsT0FBTyxJQUFJLENBQUMsVUFBVSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsSUFBSSxtQkFBQSxLQUFLLENBQUMsT0FBTyxDQUFDLElBQUksRUFBRSxlQUFlLENBQUMsRUFBRSxDQUFDO0lBQzdFLENBQUM7Q0FDRjs7Ozs7O0lBcEJDLDBDQUF5RCIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtDb21waWxlUmVmbGVjdG9yLCBOZ01vZHVsZVJlc29sdmVyLCBjb3JlfSBmcm9tICdAYW5ndWxhci9jb21waWxlcic7XG5cbmV4cG9ydCBjbGFzcyBNb2NrTmdNb2R1bGVSZXNvbHZlciBleHRlbmRzIE5nTW9kdWxlUmVzb2x2ZXIge1xuICBwcml2YXRlIF9uZ01vZHVsZXMgPSBuZXcgTWFwPGNvcmUuVHlwZSwgY29yZS5OZ01vZHVsZT4oKTtcblxuICBjb25zdHJ1Y3RvcihyZWZsZWN0b3I6IENvbXBpbGVSZWZsZWN0b3IpIHsgc3VwZXIocmVmbGVjdG9yKTsgfVxuXG4gIC8qKlxuICAgKiBPdmVycmlkZXMgdGhlIHtAbGluayBOZ01vZHVsZX0gZm9yIGEgbW9kdWxlLlxuICAgKi9cbiAgc2V0TmdNb2R1bGUodHlwZTogY29yZS5UeXBlLCBtZXRhZGF0YTogY29yZS5OZ01vZHVsZSk6IHZvaWQge1xuICAgIHRoaXMuX25nTW9kdWxlcy5zZXQodHlwZSwgbWV0YWRhdGEpO1xuICB9XG5cbiAgLyoqXG4gICAqIFJldHVybnMgdGhlIHtAbGluayBOZ01vZHVsZX0gZm9yIGEgbW9kdWxlOlxuICAgKiAtIFNldCB0aGUge0BsaW5rIE5nTW9kdWxlfSB0byB0aGUgb3ZlcnJpZGRlbiB2aWV3IHdoZW4gaXQgZXhpc3RzIG9yIGZhbGxiYWNrIHRvIHRoZVxuICAgKiBkZWZhdWx0XG4gICAqIGBOZ01vZHVsZVJlc29sdmVyYCwgc2VlIGBzZXROZ01vZHVsZWAuXG4gICAqL1xuICByZXNvbHZlKHR5cGU6IGNvcmUuVHlwZSwgdGhyb3dJZk5vdEZvdW5kID0gdHJ1ZSk6IGNvcmUuTmdNb2R1bGUge1xuICAgIHJldHVybiB0aGlzLl9uZ01vZHVsZXMuZ2V0KHR5cGUpIHx8IHN1cGVyLnJlc29sdmUodHlwZSwgdGhyb3dJZk5vdEZvdW5kKSAhO1xuICB9XG59XG4iXX0=