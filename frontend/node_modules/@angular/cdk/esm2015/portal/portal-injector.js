/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/**
 * Custom injector to be used when providing custom
 * injection tokens to components inside a portal.
 * @docs-private
 * @deprecated Use `Injector.create` instead.
 * @breaking-change 11.0.0
 */
export class PortalInjector {
    constructor(_parentInjector, _customTokens) {
        this._parentInjector = _parentInjector;
        this._customTokens = _customTokens;
    }
    get(token, notFoundValue) {
        const value = this._customTokens.get(token);
        if (typeof value !== 'undefined') {
            return value;
        }
        return this._parentInjector.get(token, notFoundValue);
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicG9ydGFsLWluamVjdG9yLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9wb3J0YWwvcG9ydGFsLWluamVjdG9yLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUlIOzs7Ozs7R0FNRztBQUNILE1BQU0sT0FBTyxjQUFjO0lBQ3pCLFlBQ1UsZUFBeUIsRUFDekIsYUFBZ0M7UUFEaEMsb0JBQWUsR0FBZixlQUFlLENBQVU7UUFDekIsa0JBQWEsR0FBYixhQUFhLENBQW1CO0lBQUksQ0FBQztJQUUvQyxHQUFHLENBQUMsS0FBVSxFQUFFLGFBQW1CO1FBQ2pDLE1BQU0sS0FBSyxHQUFHLElBQUksQ0FBQyxhQUFhLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBQyxDQUFDO1FBRTVDLElBQUksT0FBTyxLQUFLLEtBQUssV0FBVyxFQUFFO1lBQ2hDLE9BQU8sS0FBSyxDQUFDO1NBQ2Q7UUFFRCxPQUFPLElBQUksQ0FBQyxlQUFlLENBQUMsR0FBRyxDQUFNLEtBQUssRUFBRSxhQUFhLENBQUMsQ0FBQztJQUM3RCxDQUFDO0NBQ0YiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtJbmplY3Rvcn0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbi8qKlxuICogQ3VzdG9tIGluamVjdG9yIHRvIGJlIHVzZWQgd2hlbiBwcm92aWRpbmcgY3VzdG9tXG4gKiBpbmplY3Rpb24gdG9rZW5zIHRvIGNvbXBvbmVudHMgaW5zaWRlIGEgcG9ydGFsLlxuICogQGRvY3MtcHJpdmF0ZVxuICogQGRlcHJlY2F0ZWQgVXNlIGBJbmplY3Rvci5jcmVhdGVgIGluc3RlYWQuXG4gKiBAYnJlYWtpbmctY2hhbmdlIDExLjAuMFxuICovXG5leHBvcnQgY2xhc3MgUG9ydGFsSW5qZWN0b3IgaW1wbGVtZW50cyBJbmplY3RvciB7XG4gIGNvbnN0cnVjdG9yKFxuICAgIHByaXZhdGUgX3BhcmVudEluamVjdG9yOiBJbmplY3RvcixcbiAgICBwcml2YXRlIF9jdXN0b21Ub2tlbnM6IFdlYWtNYXA8YW55LCBhbnk+KSB7IH1cblxuICBnZXQodG9rZW46IGFueSwgbm90Rm91bmRWYWx1ZT86IGFueSk6IGFueSB7XG4gICAgY29uc3QgdmFsdWUgPSB0aGlzLl9jdXN0b21Ub2tlbnMuZ2V0KHRva2VuKTtcblxuICAgIGlmICh0eXBlb2YgdmFsdWUgIT09ICd1bmRlZmluZWQnKSB7XG4gICAgICByZXR1cm4gdmFsdWU7XG4gICAgfVxuXG4gICAgcmV0dXJuIHRoaXMuX3BhcmVudEluamVjdG9yLmdldDxhbnk+KHRva2VuLCBub3RGb3VuZFZhbHVlKTtcbiAgfVxufVxuIl19