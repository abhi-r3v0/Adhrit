/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/interfaces/document.ts
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
 * Most of the use of `document` in Angular is from within the DI system so it is possible to simply
 * inject the `DOCUMENT` token and are done.
 *
 * Ivy is special because it does not rely upon the DI and must get hold of the document some other
 * way.
 *
 * The solution is to define `getDocument()` and `setDocument()` top-level functions for ivy.
 * Wherever ivy needs the global document, it calls `getDocument()` instead.
 *
 * When running ivy outside of a browser environment, it is necessary to call `setDocument()` to
 * tell ivy what the global `document` is.
 *
 * Angular does this for us in each of the standard platforms (`Browser`, `Server`, and `WebWorker`)
 * by calling `setDocument()` when providing the `DOCUMENT` token.
 * @type {?}
 */
let DOCUMENT = undefined;
/**
 * Tell ivy what the `document` is for this platform.
 *
 * It is only necessary to call this if the current platform is not a browser.
 *
 * @param {?} document The object representing the global `document` in this environment.
 * @return {?}
 */
export function setDocument(document) {
    DOCUMENT = document;
}
/**
 * Access the object that represents the `document` for this platform.
 *
 * Ivy calls this whenever it needs to access the `document` object.
 * For example to create the renderer or to do sanitization.
 * @return {?}
 */
export function getDocument() {
    if (DOCUMENT !== undefined) {
        return DOCUMENT;
    }
    else if (typeof document !== 'undefined') {
        return document;
    }
    // No "document" can be found. This should only happen if we are running ivy outside Angular and
    // the current platform is not a browser. Since this is not a supported scenario at the moment
    // this should not happen in Angular apps.
    // Once we support running ivy outside of Angular we will need to publish `setDocument()` as a
    // public API. Meanwhile we just return `undefined` and let the application fail.
    return (/** @type {?} */ (undefined));
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZG9jdW1lbnQuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL2ludGVyZmFjZXMvZG9jdW1lbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7SUF3QkksUUFBUSxHQUF1QixTQUFTOzs7Ozs7Ozs7QUFTNUMsTUFBTSxVQUFVLFdBQVcsQ0FBQyxRQUE4QjtJQUN4RCxRQUFRLEdBQUcsUUFBUSxDQUFDO0FBQ3RCLENBQUM7Ozs7Ozs7O0FBUUQsTUFBTSxVQUFVLFdBQVc7SUFDekIsSUFBSSxRQUFRLEtBQUssU0FBUyxFQUFFO1FBQzFCLE9BQU8sUUFBUSxDQUFDO0tBQ2pCO1NBQU0sSUFBSSxPQUFPLFFBQVEsS0FBSyxXQUFXLEVBQUU7UUFDMUMsT0FBTyxRQUFRLENBQUM7S0FDakI7SUFDRCxnR0FBZ0c7SUFDaEcsOEZBQThGO0lBQzlGLDBDQUEwQztJQUMxQyw4RkFBOEY7SUFDOUYsaUZBQWlGO0lBQ2pGLE9BQU8sbUJBQUEsU0FBUyxFQUFFLENBQUM7QUFDckIsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuLyoqXG4gKiBNb3N0IG9mIHRoZSB1c2Ugb2YgYGRvY3VtZW50YCBpbiBBbmd1bGFyIGlzIGZyb20gd2l0aGluIHRoZSBESSBzeXN0ZW0gc28gaXQgaXMgcG9zc2libGUgdG8gc2ltcGx5XG4gKiBpbmplY3QgdGhlIGBET0NVTUVOVGAgdG9rZW4gYW5kIGFyZSBkb25lLlxuICpcbiAqIEl2eSBpcyBzcGVjaWFsIGJlY2F1c2UgaXQgZG9lcyBub3QgcmVseSB1cG9uIHRoZSBESSBhbmQgbXVzdCBnZXQgaG9sZCBvZiB0aGUgZG9jdW1lbnQgc29tZSBvdGhlclxuICogd2F5LlxuICpcbiAqIFRoZSBzb2x1dGlvbiBpcyB0byBkZWZpbmUgYGdldERvY3VtZW50KClgIGFuZCBgc2V0RG9jdW1lbnQoKWAgdG9wLWxldmVsIGZ1bmN0aW9ucyBmb3IgaXZ5LlxuICogV2hlcmV2ZXIgaXZ5IG5lZWRzIHRoZSBnbG9iYWwgZG9jdW1lbnQsIGl0IGNhbGxzIGBnZXREb2N1bWVudCgpYCBpbnN0ZWFkLlxuICpcbiAqIFdoZW4gcnVubmluZyBpdnkgb3V0c2lkZSBvZiBhIGJyb3dzZXIgZW52aXJvbm1lbnQsIGl0IGlzIG5lY2Vzc2FyeSB0byBjYWxsIGBzZXREb2N1bWVudCgpYCB0b1xuICogdGVsbCBpdnkgd2hhdCB0aGUgZ2xvYmFsIGBkb2N1bWVudGAgaXMuXG4gKlxuICogQW5ndWxhciBkb2VzIHRoaXMgZm9yIHVzIGluIGVhY2ggb2YgdGhlIHN0YW5kYXJkIHBsYXRmb3JtcyAoYEJyb3dzZXJgLCBgU2VydmVyYCwgYW5kIGBXZWJXb3JrZXJgKVxuICogYnkgY2FsbGluZyBgc2V0RG9jdW1lbnQoKWAgd2hlbiBwcm92aWRpbmcgdGhlIGBET0NVTUVOVGAgdG9rZW4uXG4gKi9cbmxldCBET0NVTUVOVDogRG9jdW1lbnR8dW5kZWZpbmVkID0gdW5kZWZpbmVkO1xuXG4vKipcbiAqIFRlbGwgaXZ5IHdoYXQgdGhlIGBkb2N1bWVudGAgaXMgZm9yIHRoaXMgcGxhdGZvcm0uXG4gKlxuICogSXQgaXMgb25seSBuZWNlc3NhcnkgdG8gY2FsbCB0aGlzIGlmIHRoZSBjdXJyZW50IHBsYXRmb3JtIGlzIG5vdCBhIGJyb3dzZXIuXG4gKlxuICogQHBhcmFtIGRvY3VtZW50IFRoZSBvYmplY3QgcmVwcmVzZW50aW5nIHRoZSBnbG9iYWwgYGRvY3VtZW50YCBpbiB0aGlzIGVudmlyb25tZW50LlxuICovXG5leHBvcnQgZnVuY3Rpb24gc2V0RG9jdW1lbnQoZG9jdW1lbnQ6IERvY3VtZW50IHwgdW5kZWZpbmVkKTogdm9pZCB7XG4gIERPQ1VNRU5UID0gZG9jdW1lbnQ7XG59XG5cbi8qKlxuICogQWNjZXNzIHRoZSBvYmplY3QgdGhhdCByZXByZXNlbnRzIHRoZSBgZG9jdW1lbnRgIGZvciB0aGlzIHBsYXRmb3JtLlxuICpcbiAqIEl2eSBjYWxscyB0aGlzIHdoZW5ldmVyIGl0IG5lZWRzIHRvIGFjY2VzcyB0aGUgYGRvY3VtZW50YCBvYmplY3QuXG4gKiBGb3IgZXhhbXBsZSB0byBjcmVhdGUgdGhlIHJlbmRlcmVyIG9yIHRvIGRvIHNhbml0aXphdGlvbi5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldERvY3VtZW50KCk6IERvY3VtZW50IHtcbiAgaWYgKERPQ1VNRU5UICE9PSB1bmRlZmluZWQpIHtcbiAgICByZXR1cm4gRE9DVU1FTlQ7XG4gIH0gZWxzZSBpZiAodHlwZW9mIGRvY3VtZW50ICE9PSAndW5kZWZpbmVkJykge1xuICAgIHJldHVybiBkb2N1bWVudDtcbiAgfVxuICAvLyBObyBcImRvY3VtZW50XCIgY2FuIGJlIGZvdW5kLiBUaGlzIHNob3VsZCBvbmx5IGhhcHBlbiBpZiB3ZSBhcmUgcnVubmluZyBpdnkgb3V0c2lkZSBBbmd1bGFyIGFuZFxuICAvLyB0aGUgY3VycmVudCBwbGF0Zm9ybSBpcyBub3QgYSBicm93c2VyLiBTaW5jZSB0aGlzIGlzIG5vdCBhIHN1cHBvcnRlZCBzY2VuYXJpbyBhdCB0aGUgbW9tZW50XG4gIC8vIHRoaXMgc2hvdWxkIG5vdCBoYXBwZW4gaW4gQW5ndWxhciBhcHBzLlxuICAvLyBPbmNlIHdlIHN1cHBvcnQgcnVubmluZyBpdnkgb3V0c2lkZSBvZiBBbmd1bGFyIHdlIHdpbGwgbmVlZCB0byBwdWJsaXNoIGBzZXREb2N1bWVudCgpYCBhcyBhXG4gIC8vIHB1YmxpYyBBUEkuIE1lYW53aGlsZSB3ZSBqdXN0IHJldHVybiBgdW5kZWZpbmVkYCBhbmQgbGV0IHRoZSBhcHBsaWNhdGlvbiBmYWlsLlxuICByZXR1cm4gdW5kZWZpbmVkICE7XG59XG4iXX0=