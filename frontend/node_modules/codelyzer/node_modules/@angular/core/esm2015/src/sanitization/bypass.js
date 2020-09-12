/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/sanitization/bypass.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/** @enum {string} */
const BypassType = {
    Url: "URL",
    Html: "HTML",
    ResourceUrl: "ResourceURL",
    Script: "Script",
    Style: "Style",
};
export { BypassType };
/**
 * Marker interface for a value that's safe to use in a particular context.
 *
 * \@publicApi
 * @record
 */
export function SafeValue() { }
/**
 * Marker interface for a value that's safe to use as HTML.
 *
 * \@publicApi
 * @record
 */
export function SafeHtml() { }
/**
 * Marker interface for a value that's safe to use as style (CSS).
 *
 * \@publicApi
 * @record
 */
export function SafeStyle() { }
/**
 * Marker interface for a value that's safe to use as JavaScript.
 *
 * \@publicApi
 * @record
 */
export function SafeScript() { }
/**
 * Marker interface for a value that's safe to use as a URL linking to a document.
 *
 * \@publicApi
 * @record
 */
export function SafeUrl() { }
/**
 * Marker interface for a value that's safe to use as a URL to load executable code from.
 *
 * \@publicApi
 * @record
 */
export function SafeResourceUrl() { }
/**
 * @abstract
 */
class SafeValueImpl {
    /**
     * @param {?} changingThisBreaksApplicationSecurity
     */
    constructor(changingThisBreaksApplicationSecurity) {
        this.changingThisBreaksApplicationSecurity = changingThisBreaksApplicationSecurity;
    }
    /**
     * @return {?}
     */
    toString() {
        return `SafeValue must use [property]=binding: ${this.changingThisBreaksApplicationSecurity}` +
            ` (see http://g.co/ng/security#xss)`;
    }
}
if (false) {
    /** @type {?} */
    SafeValueImpl.prototype.changingThisBreaksApplicationSecurity;
    /**
     * @abstract
     * @return {?}
     */
    SafeValueImpl.prototype.getTypeName = function () { };
}
class SafeHtmlImpl extends SafeValueImpl {
    /**
     * @return {?}
     */
    getTypeName() { return "HTML" /* Html */; }
}
class SafeStyleImpl extends SafeValueImpl {
    /**
     * @return {?}
     */
    getTypeName() { return "Style" /* Style */; }
}
class SafeScriptImpl extends SafeValueImpl {
    /**
     * @return {?}
     */
    getTypeName() { return "Script" /* Script */; }
}
class SafeUrlImpl extends SafeValueImpl {
    /**
     * @return {?}
     */
    getTypeName() { return "URL" /* Url */; }
}
class SafeResourceUrlImpl extends SafeValueImpl {
    /**
     * @return {?}
     */
    getTypeName() { return "ResourceURL" /* ResourceUrl */; }
}
/**
 * @template T
 * @param {?} value
 * @return {?}
 */
export function unwrapSafeValue(value) {
    return value instanceof SafeValueImpl ? (/** @type {?} */ ((/** @type {?} */ (value.changingThisBreaksApplicationSecurity)))) :
        (/** @type {?} */ ((/** @type {?} */ (value))));
}
/**
 * @param {?} value
 * @param {?} type
 * @return {?}
 */
export function allowSanitizationBypassAndThrow(value, type) {
    /** @type {?} */
    const actualType = getSanitizationBypassType(value);
    if (actualType != null && actualType !== type) {
        // Allow ResourceURLs in URL contexts, they are strictly more trusted.
        if (actualType === "ResourceURL" /* ResourceUrl */ && type === "URL" /* Url */)
            return true;
        throw new Error(`Required a safe ${type}, got a ${actualType} (see http://g.co/ng/security#xss)`);
    }
    return actualType === type;
}
/**
 * @param {?} value
 * @return {?}
 */
export function getSanitizationBypassType(value) {
    return value instanceof SafeValueImpl && (/** @type {?} */ (value.getTypeName())) || null;
}
/**
 * Mark `html` string as trusted.
 *
 * This function wraps the trusted string in `String` and brands it in a way which makes it
 * recognizable to {\@link htmlSanitizer} to be trusted implicitly.
 *
 * @param {?} trustedHtml `html` string which needs to be implicitly trusted.
 * @return {?} a `html` which has been branded to be implicitly trusted.
 */
export function bypassSanitizationTrustHtml(trustedHtml) {
    return new SafeHtmlImpl(trustedHtml);
}
/**
 * Mark `style` string as trusted.
 *
 * This function wraps the trusted string in `String` and brands it in a way which makes it
 * recognizable to {\@link styleSanitizer} to be trusted implicitly.
 *
 * @param {?} trustedStyle `style` string which needs to be implicitly trusted.
 * @return {?} a `style` hich has been branded to be implicitly trusted.
 */
export function bypassSanitizationTrustStyle(trustedStyle) {
    return new SafeStyleImpl(trustedStyle);
}
/**
 * Mark `script` string as trusted.
 *
 * This function wraps the trusted string in `String` and brands it in a way which makes it
 * recognizable to {\@link scriptSanitizer} to be trusted implicitly.
 *
 * @param {?} trustedScript `script` string which needs to be implicitly trusted.
 * @return {?} a `script` which has been branded to be implicitly trusted.
 */
export function bypassSanitizationTrustScript(trustedScript) {
    return new SafeScriptImpl(trustedScript);
}
/**
 * Mark `url` string as trusted.
 *
 * This function wraps the trusted string in `String` and brands it in a way which makes it
 * recognizable to {\@link urlSanitizer} to be trusted implicitly.
 *
 * @param {?} trustedUrl `url` string which needs to be implicitly trusted.
 * @return {?} a `url`  which has been branded to be implicitly trusted.
 */
export function bypassSanitizationTrustUrl(trustedUrl) {
    return new SafeUrlImpl(trustedUrl);
}
/**
 * Mark `url` string as trusted.
 *
 * This function wraps the trusted string in `String` and brands it in a way which makes it
 * recognizable to {\@link resourceUrlSanitizer} to be trusted implicitly.
 *
 * @param {?} trustedResourceUrl `url` string which needs to be implicitly trusted.
 * @return {?} a `url` which has been branded to be implicitly trusted.
 */
export function bypassSanitizationTrustResourceUrl(trustedResourceUrl) {
    return new SafeResourceUrlImpl(trustedResourceUrl);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYnlwYXNzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvc2FuaXRpemF0aW9uL2J5cGFzcy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7O0FBU0EsTUFBa0IsVUFBVTtJQUMxQixHQUFHLE9BQVE7SUFDWCxJQUFJLFFBQVM7SUFDYixXQUFXLGVBQWdCO0lBQzNCLE1BQU0sVUFBVztJQUNqQixLQUFLLFNBQVU7RUFDaEI7Ozs7Ozs7O0FBT0QsK0JBQTZCOzs7Ozs7O0FBTzdCLDhCQUE4Qzs7Ozs7OztBQU85QywrQkFBK0M7Ozs7Ozs7QUFPL0MsZ0NBQWdEOzs7Ozs7O0FBT2hELDZCQUE2Qzs7Ozs7OztBQU83QyxxQ0FBcUQ7Ozs7QUFHckQsTUFBZSxhQUFhOzs7O0lBQzFCLFlBQW1CLHFDQUE2QztRQUE3QywwQ0FBcUMsR0FBckMscUNBQXFDLENBQVE7SUFBRyxDQUFDOzs7O0lBSXBFLFFBQVE7UUFDTixPQUFPLDBDQUEwQyxJQUFJLENBQUMscUNBQXFDLEVBQUU7WUFDekYsb0NBQW9DLENBQUM7SUFDM0MsQ0FBQztDQUNGOzs7SUFSYSw4REFBb0Q7Ozs7O0lBRWhFLHNEQUErQjs7QUFRakMsTUFBTSxZQUFhLFNBQVEsYUFBYTs7OztJQUN0QyxXQUFXLEtBQUsseUJBQXVCLENBQUMsQ0FBQztDQUMxQztBQUNELE1BQU0sYUFBYyxTQUFRLGFBQWE7Ozs7SUFDdkMsV0FBVyxLQUFLLDJCQUF3QixDQUFDLENBQUM7Q0FDM0M7QUFDRCxNQUFNLGNBQWUsU0FBUSxhQUFhOzs7O0lBQ3hDLFdBQVcsS0FBSyw2QkFBeUIsQ0FBQyxDQUFDO0NBQzVDO0FBQ0QsTUFBTSxXQUFZLFNBQVEsYUFBYTs7OztJQUNyQyxXQUFXLEtBQUssdUJBQXNCLENBQUMsQ0FBQztDQUN6QztBQUNELE1BQU0sbUJBQW9CLFNBQVEsYUFBYTs7OztJQUM3QyxXQUFXLEtBQUssdUNBQThCLENBQUMsQ0FBQztDQUNqRDs7Ozs7O0FBSUQsTUFBTSxVQUFVLGVBQWUsQ0FBSSxLQUFvQjtJQUNyRCxPQUFPLEtBQUssWUFBWSxhQUFhLENBQUMsQ0FBQyxDQUFDLG1CQUFBLG1CQUFBLEtBQUssQ0FBQyxxQ0FBcUMsRUFBTyxFQUFLLENBQUMsQ0FBQztRQUN6RCxtQkFBQSxtQkFBQSxLQUFLLEVBQU8sRUFBSyxDQUFDO0FBQzVELENBQUM7Ozs7OztBQWFELE1BQU0sVUFBVSwrQkFBK0IsQ0FBQyxLQUFVLEVBQUUsSUFBZ0I7O1VBQ3BFLFVBQVUsR0FBRyx5QkFBeUIsQ0FBQyxLQUFLLENBQUM7SUFDbkQsSUFBSSxVQUFVLElBQUksSUFBSSxJQUFJLFVBQVUsS0FBSyxJQUFJLEVBQUU7UUFDN0Msc0VBQXNFO1FBQ3RFLElBQUksVUFBVSxvQ0FBMkIsSUFBSSxJQUFJLG9CQUFtQjtZQUFFLE9BQU8sSUFBSSxDQUFDO1FBQ2xGLE1BQU0sSUFBSSxLQUFLLENBQ1gsbUJBQW1CLElBQUksV0FBVyxVQUFVLG9DQUFvQyxDQUFDLENBQUM7S0FDdkY7SUFDRCxPQUFPLFVBQVUsS0FBSyxJQUFJLENBQUM7QUFDN0IsQ0FBQzs7Ozs7QUFFRCxNQUFNLFVBQVUseUJBQXlCLENBQUMsS0FBVTtJQUNsRCxPQUFPLEtBQUssWUFBWSxhQUFhLElBQUksbUJBQUEsS0FBSyxDQUFDLFdBQVcsRUFBRSxFQUFjLElBQUksSUFBSSxDQUFDO0FBQ3JGLENBQUM7Ozs7Ozs7Ozs7QUFXRCxNQUFNLFVBQVUsMkJBQTJCLENBQUMsV0FBbUI7SUFDN0QsT0FBTyxJQUFJLFlBQVksQ0FBQyxXQUFXLENBQUMsQ0FBQztBQUN2QyxDQUFDOzs7Ozs7Ozs7O0FBVUQsTUFBTSxVQUFVLDRCQUE0QixDQUFDLFlBQW9CO0lBQy9ELE9BQU8sSUFBSSxhQUFhLENBQUMsWUFBWSxDQUFDLENBQUM7QUFDekMsQ0FBQzs7Ozs7Ozs7OztBQVVELE1BQU0sVUFBVSw2QkFBNkIsQ0FBQyxhQUFxQjtJQUNqRSxPQUFPLElBQUksY0FBYyxDQUFDLGFBQWEsQ0FBQyxDQUFDO0FBQzNDLENBQUM7Ozs7Ozs7Ozs7QUFVRCxNQUFNLFVBQVUsMEJBQTBCLENBQUMsVUFBa0I7SUFDM0QsT0FBTyxJQUFJLFdBQVcsQ0FBQyxVQUFVLENBQUMsQ0FBQztBQUNyQyxDQUFDOzs7Ozs7Ozs7O0FBVUQsTUFBTSxVQUFVLGtDQUFrQyxDQUFDLGtCQUEwQjtJQUMzRSxPQUFPLElBQUksbUJBQW1CLENBQUMsa0JBQWtCLENBQUMsQ0FBQztBQUNyRCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5cbmV4cG9ydCBjb25zdCBlbnVtIEJ5cGFzc1R5cGUge1xuICBVcmwgPSAnVVJMJyxcbiAgSHRtbCA9ICdIVE1MJyxcbiAgUmVzb3VyY2VVcmwgPSAnUmVzb3VyY2VVUkwnLFxuICBTY3JpcHQgPSAnU2NyaXB0JyxcbiAgU3R5bGUgPSAnU3R5bGUnLFxufVxuXG4vKipcbiAqIE1hcmtlciBpbnRlcmZhY2UgZm9yIGEgdmFsdWUgdGhhdCdzIHNhZmUgdG8gdXNlIGluIGEgcGFydGljdWxhciBjb250ZXh0LlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGludGVyZmFjZSBTYWZlVmFsdWUge31cblxuLyoqXG4gKiBNYXJrZXIgaW50ZXJmYWNlIGZvciBhIHZhbHVlIHRoYXQncyBzYWZlIHRvIHVzZSBhcyBIVE1MLlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGludGVyZmFjZSBTYWZlSHRtbCBleHRlbmRzIFNhZmVWYWx1ZSB7fVxuXG4vKipcbiAqIE1hcmtlciBpbnRlcmZhY2UgZm9yIGEgdmFsdWUgdGhhdCdzIHNhZmUgdG8gdXNlIGFzIHN0eWxlIChDU1MpLlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGludGVyZmFjZSBTYWZlU3R5bGUgZXh0ZW5kcyBTYWZlVmFsdWUge31cblxuLyoqXG4gKiBNYXJrZXIgaW50ZXJmYWNlIGZvciBhIHZhbHVlIHRoYXQncyBzYWZlIHRvIHVzZSBhcyBKYXZhU2NyaXB0LlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGludGVyZmFjZSBTYWZlU2NyaXB0IGV4dGVuZHMgU2FmZVZhbHVlIHt9XG5cbi8qKlxuICogTWFya2VyIGludGVyZmFjZSBmb3IgYSB2YWx1ZSB0aGF0J3Mgc2FmZSB0byB1c2UgYXMgYSBVUkwgbGlua2luZyB0byBhIGRvY3VtZW50LlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGludGVyZmFjZSBTYWZlVXJsIGV4dGVuZHMgU2FmZVZhbHVlIHt9XG5cbi8qKlxuICogTWFya2VyIGludGVyZmFjZSBmb3IgYSB2YWx1ZSB0aGF0J3Mgc2FmZSB0byB1c2UgYXMgYSBVUkwgdG8gbG9hZCBleGVjdXRhYmxlIGNvZGUgZnJvbS5cbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgU2FmZVJlc291cmNlVXJsIGV4dGVuZHMgU2FmZVZhbHVlIHt9XG5cblxuYWJzdHJhY3QgY2xhc3MgU2FmZVZhbHVlSW1wbCBpbXBsZW1lbnRzIFNhZmVWYWx1ZSB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBjaGFuZ2luZ1RoaXNCcmVha3NBcHBsaWNhdGlvblNlY3VyaXR5OiBzdHJpbmcpIHt9XG5cbiAgYWJzdHJhY3QgZ2V0VHlwZU5hbWUoKTogc3RyaW5nO1xuXG4gIHRvU3RyaW5nKCkge1xuICAgIHJldHVybiBgU2FmZVZhbHVlIG11c3QgdXNlIFtwcm9wZXJ0eV09YmluZGluZzogJHt0aGlzLmNoYW5naW5nVGhpc0JyZWFrc0FwcGxpY2F0aW9uU2VjdXJpdHl9YCArXG4gICAgICAgIGAgKHNlZSBodHRwOi8vZy5jby9uZy9zZWN1cml0eSN4c3MpYDtcbiAgfVxufVxuXG5jbGFzcyBTYWZlSHRtbEltcGwgZXh0ZW5kcyBTYWZlVmFsdWVJbXBsIGltcGxlbWVudHMgU2FmZUh0bWwge1xuICBnZXRUeXBlTmFtZSgpIHsgcmV0dXJuIEJ5cGFzc1R5cGUuSHRtbDsgfVxufVxuY2xhc3MgU2FmZVN0eWxlSW1wbCBleHRlbmRzIFNhZmVWYWx1ZUltcGwgaW1wbGVtZW50cyBTYWZlU3R5bGUge1xuICBnZXRUeXBlTmFtZSgpIHsgcmV0dXJuIEJ5cGFzc1R5cGUuU3R5bGU7IH1cbn1cbmNsYXNzIFNhZmVTY3JpcHRJbXBsIGV4dGVuZHMgU2FmZVZhbHVlSW1wbCBpbXBsZW1lbnRzIFNhZmVTY3JpcHQge1xuICBnZXRUeXBlTmFtZSgpIHsgcmV0dXJuIEJ5cGFzc1R5cGUuU2NyaXB0OyB9XG59XG5jbGFzcyBTYWZlVXJsSW1wbCBleHRlbmRzIFNhZmVWYWx1ZUltcGwgaW1wbGVtZW50cyBTYWZlVXJsIHtcbiAgZ2V0VHlwZU5hbWUoKSB7IHJldHVybiBCeXBhc3NUeXBlLlVybDsgfVxufVxuY2xhc3MgU2FmZVJlc291cmNlVXJsSW1wbCBleHRlbmRzIFNhZmVWYWx1ZUltcGwgaW1wbGVtZW50cyBTYWZlUmVzb3VyY2VVcmwge1xuICBnZXRUeXBlTmFtZSgpIHsgcmV0dXJuIEJ5cGFzc1R5cGUuUmVzb3VyY2VVcmw7IH1cbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHVud3JhcFNhZmVWYWx1ZSh2YWx1ZTogU2FmZVZhbHVlKTogc3RyaW5nO1xuZXhwb3J0IGZ1bmN0aW9uIHVud3JhcFNhZmVWYWx1ZTxUPih2YWx1ZTogVCk6IFQ7XG5leHBvcnQgZnVuY3Rpb24gdW53cmFwU2FmZVZhbHVlPFQ+KHZhbHVlOiBUIHwgU2FmZVZhbHVlKTogVCB7XG4gIHJldHVybiB2YWx1ZSBpbnN0YW5jZW9mIFNhZmVWYWx1ZUltcGwgPyB2YWx1ZS5jaGFuZ2luZ1RoaXNCcmVha3NBcHBsaWNhdGlvblNlY3VyaXR5IGFzIGFueSBhcyBUIDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZhbHVlIGFzIGFueSBhcyBUO1xufVxuXG5cbmV4cG9ydCBmdW5jdGlvbiBhbGxvd1Nhbml0aXphdGlvbkJ5cGFzc0FuZFRocm93KFxuICAgIHZhbHVlOiBhbnksIHR5cGU6IEJ5cGFzc1R5cGUuSHRtbCk6IHZhbHVlIGlzIFNhZmVIdG1sO1xuZXhwb3J0IGZ1bmN0aW9uIGFsbG93U2FuaXRpemF0aW9uQnlwYXNzQW5kVGhyb3coXG4gICAgdmFsdWU6IGFueSwgdHlwZTogQnlwYXNzVHlwZS5SZXNvdXJjZVVybCk6IHZhbHVlIGlzIFNhZmVSZXNvdXJjZVVybDtcbmV4cG9ydCBmdW5jdGlvbiBhbGxvd1Nhbml0aXphdGlvbkJ5cGFzc0FuZFRocm93KFxuICAgIHZhbHVlOiBhbnksIHR5cGU6IEJ5cGFzc1R5cGUuU2NyaXB0KTogdmFsdWUgaXMgU2FmZVNjcmlwdDtcbmV4cG9ydCBmdW5jdGlvbiBhbGxvd1Nhbml0aXphdGlvbkJ5cGFzc0FuZFRocm93KFxuICAgIHZhbHVlOiBhbnksIHR5cGU6IEJ5cGFzc1R5cGUuU3R5bGUpOiB2YWx1ZSBpcyBTYWZlU3R5bGU7XG5leHBvcnQgZnVuY3Rpb24gYWxsb3dTYW5pdGl6YXRpb25CeXBhc3NBbmRUaHJvdyh2YWx1ZTogYW55LCB0eXBlOiBCeXBhc3NUeXBlLlVybCk6IHZhbHVlIGlzIFNhZmVVcmw7XG5leHBvcnQgZnVuY3Rpb24gYWxsb3dTYW5pdGl6YXRpb25CeXBhc3NBbmRUaHJvdyh2YWx1ZTogYW55LCB0eXBlOiBCeXBhc3NUeXBlKTogYm9vbGVhbjtcbmV4cG9ydCBmdW5jdGlvbiBhbGxvd1Nhbml0aXphdGlvbkJ5cGFzc0FuZFRocm93KHZhbHVlOiBhbnksIHR5cGU6IEJ5cGFzc1R5cGUpOiBib29sZWFuIHtcbiAgY29uc3QgYWN0dWFsVHlwZSA9IGdldFNhbml0aXphdGlvbkJ5cGFzc1R5cGUodmFsdWUpO1xuICBpZiAoYWN0dWFsVHlwZSAhPSBudWxsICYmIGFjdHVhbFR5cGUgIT09IHR5cGUpIHtcbiAgICAvLyBBbGxvdyBSZXNvdXJjZVVSTHMgaW4gVVJMIGNvbnRleHRzLCB0aGV5IGFyZSBzdHJpY3RseSBtb3JlIHRydXN0ZWQuXG4gICAgaWYgKGFjdHVhbFR5cGUgPT09IEJ5cGFzc1R5cGUuUmVzb3VyY2VVcmwgJiYgdHlwZSA9PT0gQnlwYXNzVHlwZS5VcmwpIHJldHVybiB0cnVlO1xuICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgYFJlcXVpcmVkIGEgc2FmZSAke3R5cGV9LCBnb3QgYSAke2FjdHVhbFR5cGV9IChzZWUgaHR0cDovL2cuY28vbmcvc2VjdXJpdHkjeHNzKWApO1xuICB9XG4gIHJldHVybiBhY3R1YWxUeXBlID09PSB0eXBlO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0U2FuaXRpemF0aW9uQnlwYXNzVHlwZSh2YWx1ZTogYW55KTogQnlwYXNzVHlwZXxudWxsIHtcbiAgcmV0dXJuIHZhbHVlIGluc3RhbmNlb2YgU2FmZVZhbHVlSW1wbCAmJiB2YWx1ZS5nZXRUeXBlTmFtZSgpIGFzIEJ5cGFzc1R5cGUgfHwgbnVsbDtcbn1cblxuLyoqXG4gKiBNYXJrIGBodG1sYCBzdHJpbmcgYXMgdHJ1c3RlZC5cbiAqXG4gKiBUaGlzIGZ1bmN0aW9uIHdyYXBzIHRoZSB0cnVzdGVkIHN0cmluZyBpbiBgU3RyaW5nYCBhbmQgYnJhbmRzIGl0IGluIGEgd2F5IHdoaWNoIG1ha2VzIGl0XG4gKiByZWNvZ25pemFibGUgdG8ge0BsaW5rIGh0bWxTYW5pdGl6ZXJ9IHRvIGJlIHRydXN0ZWQgaW1wbGljaXRseS5cbiAqXG4gKiBAcGFyYW0gdHJ1c3RlZEh0bWwgYGh0bWxgIHN0cmluZyB3aGljaCBuZWVkcyB0byBiZSBpbXBsaWNpdGx5IHRydXN0ZWQuXG4gKiBAcmV0dXJucyBhIGBodG1sYCB3aGljaCBoYXMgYmVlbiBicmFuZGVkIHRvIGJlIGltcGxpY2l0bHkgdHJ1c3RlZC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGJ5cGFzc1Nhbml0aXphdGlvblRydXN0SHRtbCh0cnVzdGVkSHRtbDogc3RyaW5nKTogU2FmZUh0bWwge1xuICByZXR1cm4gbmV3IFNhZmVIdG1sSW1wbCh0cnVzdGVkSHRtbCk7XG59XG4vKipcbiAqIE1hcmsgYHN0eWxlYCBzdHJpbmcgYXMgdHJ1c3RlZC5cbiAqXG4gKiBUaGlzIGZ1bmN0aW9uIHdyYXBzIHRoZSB0cnVzdGVkIHN0cmluZyBpbiBgU3RyaW5nYCBhbmQgYnJhbmRzIGl0IGluIGEgd2F5IHdoaWNoIG1ha2VzIGl0XG4gKiByZWNvZ25pemFibGUgdG8ge0BsaW5rIHN0eWxlU2FuaXRpemVyfSB0byBiZSB0cnVzdGVkIGltcGxpY2l0bHkuXG4gKlxuICogQHBhcmFtIHRydXN0ZWRTdHlsZSBgc3R5bGVgIHN0cmluZyB3aGljaCBuZWVkcyB0byBiZSBpbXBsaWNpdGx5IHRydXN0ZWQuXG4gKiBAcmV0dXJucyBhIGBzdHlsZWAgaGljaCBoYXMgYmVlbiBicmFuZGVkIHRvIGJlIGltcGxpY2l0bHkgdHJ1c3RlZC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGJ5cGFzc1Nhbml0aXphdGlvblRydXN0U3R5bGUodHJ1c3RlZFN0eWxlOiBzdHJpbmcpOiBTYWZlU3R5bGUge1xuICByZXR1cm4gbmV3IFNhZmVTdHlsZUltcGwodHJ1c3RlZFN0eWxlKTtcbn1cbi8qKlxuICogTWFyayBgc2NyaXB0YCBzdHJpbmcgYXMgdHJ1c3RlZC5cbiAqXG4gKiBUaGlzIGZ1bmN0aW9uIHdyYXBzIHRoZSB0cnVzdGVkIHN0cmluZyBpbiBgU3RyaW5nYCBhbmQgYnJhbmRzIGl0IGluIGEgd2F5IHdoaWNoIG1ha2VzIGl0XG4gKiByZWNvZ25pemFibGUgdG8ge0BsaW5rIHNjcmlwdFNhbml0aXplcn0gdG8gYmUgdHJ1c3RlZCBpbXBsaWNpdGx5LlxuICpcbiAqIEBwYXJhbSB0cnVzdGVkU2NyaXB0IGBzY3JpcHRgIHN0cmluZyB3aGljaCBuZWVkcyB0byBiZSBpbXBsaWNpdGx5IHRydXN0ZWQuXG4gKiBAcmV0dXJucyBhIGBzY3JpcHRgIHdoaWNoIGhhcyBiZWVuIGJyYW5kZWQgdG8gYmUgaW1wbGljaXRseSB0cnVzdGVkLlxuICovXG5leHBvcnQgZnVuY3Rpb24gYnlwYXNzU2FuaXRpemF0aW9uVHJ1c3RTY3JpcHQodHJ1c3RlZFNjcmlwdDogc3RyaW5nKTogU2FmZVNjcmlwdCB7XG4gIHJldHVybiBuZXcgU2FmZVNjcmlwdEltcGwodHJ1c3RlZFNjcmlwdCk7XG59XG4vKipcbiAqIE1hcmsgYHVybGAgc3RyaW5nIGFzIHRydXN0ZWQuXG4gKlxuICogVGhpcyBmdW5jdGlvbiB3cmFwcyB0aGUgdHJ1c3RlZCBzdHJpbmcgaW4gYFN0cmluZ2AgYW5kIGJyYW5kcyBpdCBpbiBhIHdheSB3aGljaCBtYWtlcyBpdFxuICogcmVjb2duaXphYmxlIHRvIHtAbGluayB1cmxTYW5pdGl6ZXJ9IHRvIGJlIHRydXN0ZWQgaW1wbGljaXRseS5cbiAqXG4gKiBAcGFyYW0gdHJ1c3RlZFVybCBgdXJsYCBzdHJpbmcgd2hpY2ggbmVlZHMgdG8gYmUgaW1wbGljaXRseSB0cnVzdGVkLlxuICogQHJldHVybnMgYSBgdXJsYCAgd2hpY2ggaGFzIGJlZW4gYnJhbmRlZCB0byBiZSBpbXBsaWNpdGx5IHRydXN0ZWQuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBieXBhc3NTYW5pdGl6YXRpb25UcnVzdFVybCh0cnVzdGVkVXJsOiBzdHJpbmcpOiBTYWZlVXJsIHtcbiAgcmV0dXJuIG5ldyBTYWZlVXJsSW1wbCh0cnVzdGVkVXJsKTtcbn1cbi8qKlxuICogTWFyayBgdXJsYCBzdHJpbmcgYXMgdHJ1c3RlZC5cbiAqXG4gKiBUaGlzIGZ1bmN0aW9uIHdyYXBzIHRoZSB0cnVzdGVkIHN0cmluZyBpbiBgU3RyaW5nYCBhbmQgYnJhbmRzIGl0IGluIGEgd2F5IHdoaWNoIG1ha2VzIGl0XG4gKiByZWNvZ25pemFibGUgdG8ge0BsaW5rIHJlc291cmNlVXJsU2FuaXRpemVyfSB0byBiZSB0cnVzdGVkIGltcGxpY2l0bHkuXG4gKlxuICogQHBhcmFtIHRydXN0ZWRSZXNvdXJjZVVybCBgdXJsYCBzdHJpbmcgd2hpY2ggbmVlZHMgdG8gYmUgaW1wbGljaXRseSB0cnVzdGVkLlxuICogQHJldHVybnMgYSBgdXJsYCB3aGljaCBoYXMgYmVlbiBicmFuZGVkIHRvIGJlIGltcGxpY2l0bHkgdHJ1c3RlZC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGJ5cGFzc1Nhbml0aXphdGlvblRydXN0UmVzb3VyY2VVcmwodHJ1c3RlZFJlc291cmNlVXJsOiBzdHJpbmcpOiBTYWZlUmVzb3VyY2VVcmwge1xuICByZXR1cm4gbmV3IFNhZmVSZXNvdXJjZVVybEltcGwodHJ1c3RlZFJlc291cmNlVXJsKTtcbn1cbiJdfQ==