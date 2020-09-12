/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/metadata/schema.ts
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
 * A schema definition associated with an NgModule.
 *
 * @see `\@NgModule`, `CUSTOM_ELEMENTS_SCHEMA`, `NO_ERRORS_SCHEMA`
 *
 * @param name The name of a defined schema.
 *
 * \@publicApi
 * @record
 */
export function SchemaMetadata() { }
if (false) {
    /** @type {?} */
    SchemaMetadata.prototype.name;
}
/**
 * Defines a schema that allows an NgModule to contain the following:
 * - Non-Angular elements named with dash case (`-`).
 * - Element properties named with dash case (`-`).
 * Dash case is the naming convention for custom elements.
 *
 * \@publicApi
 * @type {?}
 */
export const CUSTOM_ELEMENTS_SCHEMA = {
    name: 'custom-elements'
};
/**
 * Defines a schema that allows any property on any element.
 *
 * \@publicApi
 * @type {?}
 */
export const NO_ERRORS_SCHEMA = {
    name: 'no-errors-schema'
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic2NoZW1hLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvbWV0YWRhdGEvc2NoZW1hLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFrQkEsb0NBQWlEOzs7SUFBZiw4QkFBYTs7Ozs7Ozs7Ozs7QUFVL0MsTUFBTSxPQUFPLHNCQUFzQixHQUFtQjtJQUNwRCxJQUFJLEVBQUUsaUJBQWlCO0NBQ3hCOzs7Ozs7O0FBT0QsTUFBTSxPQUFPLGdCQUFnQixHQUFtQjtJQUM5QyxJQUFJLEVBQUUsa0JBQWtCO0NBQ3pCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5cbi8qKlxuICogQSBzY2hlbWEgZGVmaW5pdGlvbiBhc3NvY2lhdGVkIHdpdGggYW4gTmdNb2R1bGUuXG4gKlxuICogQHNlZSBgQE5nTW9kdWxlYCwgYENVU1RPTV9FTEVNRU5UU19TQ0hFTUFgLCBgTk9fRVJST1JTX1NDSEVNQWBcbiAqXG4gKiBAcGFyYW0gbmFtZSBUaGUgbmFtZSBvZiBhIGRlZmluZWQgc2NoZW1hLlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGludGVyZmFjZSBTY2hlbWFNZXRhZGF0YSB7IG5hbWU6IHN0cmluZzsgfVxuXG4vKipcbiAqIERlZmluZXMgYSBzY2hlbWEgdGhhdCBhbGxvd3MgYW4gTmdNb2R1bGUgdG8gY29udGFpbiB0aGUgZm9sbG93aW5nOlxuICogLSBOb24tQW5ndWxhciBlbGVtZW50cyBuYW1lZCB3aXRoIGRhc2ggY2FzZSAoYC1gKS5cbiAqIC0gRWxlbWVudCBwcm9wZXJ0aWVzIG5hbWVkIHdpdGggZGFzaCBjYXNlIChgLWApLlxuICogRGFzaCBjYXNlIGlzIHRoZSBuYW1pbmcgY29udmVudGlvbiBmb3IgY3VzdG9tIGVsZW1lbnRzLlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGNvbnN0IENVU1RPTV9FTEVNRU5UU19TQ0hFTUE6IFNjaGVtYU1ldGFkYXRhID0ge1xuICBuYW1lOiAnY3VzdG9tLWVsZW1lbnRzJ1xufTtcblxuLyoqXG4gKiBEZWZpbmVzIGEgc2NoZW1hIHRoYXQgYWxsb3dzIGFueSBwcm9wZXJ0eSBvbiBhbnkgZWxlbWVudC5cbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBjb25zdCBOT19FUlJPUlNfU0NIRU1BOiBTY2hlbWFNZXRhZGF0YSA9IHtcbiAgbmFtZTogJ25vLWVycm9ycy1zY2hlbWEnXG59O1xuIl19