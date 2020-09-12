/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/testing/src/styling.ts
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
 * Returns element classes in form of a stable (sorted) string.
 *
 * @param {?} element HTML Element.
 * @return {?} Returns element classes in form of a stable (sorted) string.
 */
export function getSortedClassName(element) {
    /** @type {?} */
    const names = Object.keys(getElementClasses(element));
    names.sort();
    return names.join(' ');
}
/**
 * Returns element classes in form of a map.
 *
 * @param {?} element HTML Element.
 * @return {?} Map of class values.
 */
export function getElementClasses(element) {
    /** @type {?} */
    const classes = {};
    if (element.nodeType === Node.ELEMENT_NODE) {
        /** @type {?} */
        const classList = element.classList;
        for (let i = 0; i < classList.length; i++) {
            /** @type {?} */
            const key = classList[i];
            classes[key] = true;
        }
    }
    return classes;
}
/**
 * Returns element styles in form of a stable (sorted) string.
 *
 * @param {?} element HTML Element.
 * @return {?} Returns element styles in form of a stable (sorted) string.
 */
export function getSortedStyle(element) {
    /** @type {?} */
    const styles = getElementStyles(element);
    /** @type {?} */
    const names = Object.keys(styles);
    names.sort();
    /** @type {?} */
    let sorted = '';
    names.forEach((/**
     * @param {?} key
     * @return {?}
     */
    key => {
        /** @type {?} */
        const value = styles[key];
        if (value != null && value !== '') {
            if (sorted !== '')
                sorted += ' ';
            sorted += key + ': ' + value + ';';
        }
    }));
    return sorted;
}
/**
 * Returns element styles in form of a map.
 *
 * @param {?} element HTML Element.
 * @return {?} Map of style values.
 */
export function getElementStyles(element) {
    /** @type {?} */
    const styles = {};
    if (element.nodeType === Node.ELEMENT_NODE) {
        /** @type {?} */
        const style = ((/** @type {?} */ (element))).style;
        // reading `style.color` is a work around for a bug in Domino. The issue is that Domino has
        // stale value for `style.length`. It seems that reading a property from the element causes the
        // stale value to be updated. (As of Domino v 2.1.3)
        style.color;
        for (let i = 0; i < style.length; i++) {
            /** @type {?} */
            const key = style.item(i);
            /** @type {?} */
            const value = style.getPropertyValue(key);
            if (value !== '') {
                // Workaround for IE not clearing properties, instead it just sets them to blank value.
                styles[key] = value;
            }
        }
    }
    return styles;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic3R5bGluZy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvdGVzdGluZy9zcmMvc3R5bGluZy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFjQSxNQUFNLFVBQVUsa0JBQWtCLENBQUMsT0FBZ0I7O1VBQzNDLEtBQUssR0FBYSxNQUFNLENBQUMsSUFBSSxDQUFDLGlCQUFpQixDQUFDLE9BQU8sQ0FBQyxDQUFDO0lBQy9ELEtBQUssQ0FBQyxJQUFJLEVBQUUsQ0FBQztJQUNiLE9BQU8sS0FBSyxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQztBQUN6QixDQUFDOzs7Ozs7O0FBUUQsTUFBTSxVQUFVLGlCQUFpQixDQUFDLE9BQWdCOztVQUMxQyxPQUFPLEdBQTBCLEVBQUU7SUFDekMsSUFBSSxPQUFPLENBQUMsUUFBUSxLQUFLLElBQUksQ0FBQyxZQUFZLEVBQUU7O2NBQ3BDLFNBQVMsR0FBRyxPQUFPLENBQUMsU0FBUztRQUNuQyxLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsU0FBUyxDQUFDLE1BQU0sRUFBRSxDQUFDLEVBQUUsRUFBRTs7a0JBQ25DLEdBQUcsR0FBRyxTQUFTLENBQUMsQ0FBQyxDQUFDO1lBQ3hCLE9BQU8sQ0FBQyxHQUFHLENBQUMsR0FBRyxJQUFJLENBQUM7U0FDckI7S0FDRjtJQUNELE9BQU8sT0FBTyxDQUFDO0FBQ2pCLENBQUM7Ozs7Ozs7QUFRRCxNQUFNLFVBQVUsY0FBYyxDQUFDLE9BQWdCOztVQUN2QyxNQUFNLEdBQUcsZ0JBQWdCLENBQUMsT0FBTyxDQUFDOztVQUNsQyxLQUFLLEdBQWEsTUFBTSxDQUFDLElBQUksQ0FBQyxNQUFNLENBQUM7SUFDM0MsS0FBSyxDQUFDLElBQUksRUFBRSxDQUFDOztRQUNULE1BQU0sR0FBRyxFQUFFO0lBQ2YsS0FBSyxDQUFDLE9BQU87Ozs7SUFBQyxHQUFHLENBQUMsRUFBRTs7Y0FDWixLQUFLLEdBQUcsTUFBTSxDQUFDLEdBQUcsQ0FBQztRQUN6QixJQUFJLEtBQUssSUFBSSxJQUFJLElBQUksS0FBSyxLQUFLLEVBQUUsRUFBRTtZQUNqQyxJQUFJLE1BQU0sS0FBSyxFQUFFO2dCQUFFLE1BQU0sSUFBSSxHQUFHLENBQUM7WUFDakMsTUFBTSxJQUFJLEdBQUcsR0FBRyxJQUFJLEdBQUcsS0FBSyxHQUFHLEdBQUcsQ0FBQztTQUNwQztJQUNILENBQUMsRUFBQyxDQUFDO0lBQ0gsT0FBTyxNQUFNLENBQUM7QUFDaEIsQ0FBQzs7Ozs7OztBQVFELE1BQU0sVUFBVSxnQkFBZ0IsQ0FBQyxPQUFnQjs7VUFDekMsTUFBTSxHQUE0QixFQUFFO0lBQzFDLElBQUksT0FBTyxDQUFDLFFBQVEsS0FBSyxJQUFJLENBQUMsWUFBWSxFQUFFOztjQUNwQyxLQUFLLEdBQUcsQ0FBQyxtQkFBQSxPQUFPLEVBQWUsQ0FBQyxDQUFDLEtBQUs7UUFDNUMsMkZBQTJGO1FBQzNGLCtGQUErRjtRQUMvRixvREFBb0Q7UUFDcEQsS0FBSyxDQUFDLEtBQUssQ0FBQztRQUNaLEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxLQUFLLENBQUMsTUFBTSxFQUFFLENBQUMsRUFBRSxFQUFFOztrQkFDL0IsR0FBRyxHQUFHLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDOztrQkFDbkIsS0FBSyxHQUFHLEtBQUssQ0FBQyxnQkFBZ0IsQ0FBQyxHQUFHLENBQUM7WUFDekMsSUFBSSxLQUFLLEtBQUssRUFBRSxFQUFFO2dCQUNoQix1RkFBdUY7Z0JBQ3ZGLE1BQU0sQ0FBQyxHQUFHLENBQUMsR0FBRyxLQUFLLENBQUM7YUFDckI7U0FDRjtLQUNGO0lBQ0QsT0FBTyxNQUFNLENBQUM7QUFDaEIsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuLyoqXG4gICogUmV0dXJucyBlbGVtZW50IGNsYXNzZXMgaW4gZm9ybSBvZiBhIHN0YWJsZSAoc29ydGVkKSBzdHJpbmcuXG4gICpcbiAgKiBAcGFyYW0gZWxlbWVudCBIVE1MIEVsZW1lbnQuXG4gICogQHJldHVybnMgUmV0dXJucyBlbGVtZW50IGNsYXNzZXMgaW4gZm9ybSBvZiBhIHN0YWJsZSAoc29ydGVkKSBzdHJpbmcuXG4gICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0U29ydGVkQ2xhc3NOYW1lKGVsZW1lbnQ6IEVsZW1lbnQpOiBzdHJpbmcge1xuICBjb25zdCBuYW1lczogc3RyaW5nW10gPSBPYmplY3Qua2V5cyhnZXRFbGVtZW50Q2xhc3NlcyhlbGVtZW50KSk7XG4gIG5hbWVzLnNvcnQoKTtcbiAgcmV0dXJuIG5hbWVzLmpvaW4oJyAnKTtcbn1cblxuLyoqXG4gKiBSZXR1cm5zIGVsZW1lbnQgY2xhc3NlcyBpbiBmb3JtIG9mIGEgbWFwLlxuICpcbiAqIEBwYXJhbSBlbGVtZW50IEhUTUwgRWxlbWVudC5cbiAqIEByZXR1cm5zIE1hcCBvZiBjbGFzcyB2YWx1ZXMuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRFbGVtZW50Q2xhc3NlcyhlbGVtZW50OiBFbGVtZW50KToge1trZXk6IHN0cmluZ106IHRydWV9IHtcbiAgY29uc3QgY2xhc3Nlczoge1trZXk6IHN0cmluZ106IHRydWV9ID0ge307XG4gIGlmIChlbGVtZW50Lm5vZGVUeXBlID09PSBOb2RlLkVMRU1FTlRfTk9ERSkge1xuICAgIGNvbnN0IGNsYXNzTGlzdCA9IGVsZW1lbnQuY2xhc3NMaXN0O1xuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgY2xhc3NMaXN0Lmxlbmd0aDsgaSsrKSB7XG4gICAgICBjb25zdCBrZXkgPSBjbGFzc0xpc3RbaV07XG4gICAgICBjbGFzc2VzW2tleV0gPSB0cnVlO1xuICAgIH1cbiAgfVxuICByZXR1cm4gY2xhc3Nlcztcbn1cblxuLyoqXG4gKiBSZXR1cm5zIGVsZW1lbnQgc3R5bGVzIGluIGZvcm0gb2YgYSBzdGFibGUgKHNvcnRlZCkgc3RyaW5nLlxuICpcbiAqIEBwYXJhbSBlbGVtZW50IEhUTUwgRWxlbWVudC5cbiAqIEByZXR1cm5zIFJldHVybnMgZWxlbWVudCBzdHlsZXMgaW4gZm9ybSBvZiBhIHN0YWJsZSAoc29ydGVkKSBzdHJpbmcuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRTb3J0ZWRTdHlsZShlbGVtZW50OiBFbGVtZW50KTogc3RyaW5nIHtcbiAgY29uc3Qgc3R5bGVzID0gZ2V0RWxlbWVudFN0eWxlcyhlbGVtZW50KTtcbiAgY29uc3QgbmFtZXM6IHN0cmluZ1tdID0gT2JqZWN0LmtleXMoc3R5bGVzKTtcbiAgbmFtZXMuc29ydCgpO1xuICBsZXQgc29ydGVkID0gJyc7XG4gIG5hbWVzLmZvckVhY2goa2V5ID0+IHtcbiAgICBjb25zdCB2YWx1ZSA9IHN0eWxlc1trZXldO1xuICAgIGlmICh2YWx1ZSAhPSBudWxsICYmIHZhbHVlICE9PSAnJykge1xuICAgICAgaWYgKHNvcnRlZCAhPT0gJycpIHNvcnRlZCArPSAnICc7XG4gICAgICBzb3J0ZWQgKz0ga2V5ICsgJzogJyArIHZhbHVlICsgJzsnO1xuICAgIH1cbiAgfSk7XG4gIHJldHVybiBzb3J0ZWQ7XG59XG5cbi8qKlxuICogUmV0dXJucyBlbGVtZW50IHN0eWxlcyBpbiBmb3JtIG9mIGEgbWFwLlxuICpcbiAqIEBwYXJhbSBlbGVtZW50IEhUTUwgRWxlbWVudC5cbiAqIEByZXR1cm5zIE1hcCBvZiBzdHlsZSB2YWx1ZXMuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRFbGVtZW50U3R5bGVzKGVsZW1lbnQ6IEVsZW1lbnQpOiB7W2tleTogc3RyaW5nXTogc3RyaW5nfSB7XG4gIGNvbnN0IHN0eWxlczoge1trZXk6IHN0cmluZ106IHN0cmluZ30gPSB7fTtcbiAgaWYgKGVsZW1lbnQubm9kZVR5cGUgPT09IE5vZGUuRUxFTUVOVF9OT0RFKSB7XG4gICAgY29uc3Qgc3R5bGUgPSAoZWxlbWVudCBhcyBIVE1MRWxlbWVudCkuc3R5bGU7XG4gICAgLy8gcmVhZGluZyBgc3R5bGUuY29sb3JgIGlzIGEgd29yayBhcm91bmQgZm9yIGEgYnVnIGluIERvbWluby4gVGhlIGlzc3VlIGlzIHRoYXQgRG9taW5vIGhhc1xuICAgIC8vIHN0YWxlIHZhbHVlIGZvciBgc3R5bGUubGVuZ3RoYC4gSXQgc2VlbXMgdGhhdCByZWFkaW5nIGEgcHJvcGVydHkgZnJvbSB0aGUgZWxlbWVudCBjYXVzZXMgdGhlXG4gICAgLy8gc3RhbGUgdmFsdWUgdG8gYmUgdXBkYXRlZC4gKEFzIG9mIERvbWlubyB2IDIuMS4zKVxuICAgIHN0eWxlLmNvbG9yO1xuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgc3R5bGUubGVuZ3RoOyBpKyspIHtcbiAgICAgIGNvbnN0IGtleSA9IHN0eWxlLml0ZW0oaSk7XG4gICAgICBjb25zdCB2YWx1ZSA9IHN0eWxlLmdldFByb3BlcnR5VmFsdWUoa2V5KTtcbiAgICAgIGlmICh2YWx1ZSAhPT0gJycpIHtcbiAgICAgICAgLy8gV29ya2Fyb3VuZCBmb3IgSUUgbm90IGNsZWFyaW5nIHByb3BlcnRpZXMsIGluc3RlYWQgaXQganVzdCBzZXRzIHRoZW0gdG8gYmxhbmsgdmFsdWUuXG4gICAgICAgIHN0eWxlc1trZXldID0gdmFsdWU7XG4gICAgICB9XG4gICAgfVxuICB9XG4gIHJldHVybiBzdHlsZXM7XG59Il19