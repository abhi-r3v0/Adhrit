/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/interfaces/styling.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
* @license
* Copyright Google Inc. All Rights Reserved.
*
* Use of this source code is governed by an MIT-style license that can be
* found in the LICENSE file at https://angular.io/license
*/
import { assertNumber, assertNumberInRange } from '../../util/assert';
/**
 * Store the static values for the styling binding.
 *
 * The `TStylingStatic` is just `KeyValueArray` where key `""` (stored at location 0) contains the
 * `TStylingKey` (stored at location 1). In other words this wraps the `TStylingKey` such that the
 * `""` contains the wrapped value.
 *
 * When instructions are resolving styling they may need to look forward or backwards in the linked
 * list to resolve the value. For this reason we have to make sure that he linked list also contains
 * the static values. However the list only has space for one item per styling instruction. For this
 * reason we store the static values here as part of the `TStylingKey`. This means that the
 * resolution function when looking for a value needs to first look at the binding value, and than
 * at `TStylingKey` (if it exists).
 *
 * Imagine we have:
 *
 * ```
 * <div class="TEMPLATE" my-dir>
 *
 * \@Directive({
 *   host: {
 *     class: 'DIR',
 *     '[class.dynamic]': 'exp' // ɵɵclassProp('dynamic', ctx.exp);
 *   }
 * })
 * ```
 *
 * In the above case the linked list will contain one item:
 *
 * ```
 *   // assume binding location: 10 for `ɵɵclassProp('dynamic', ctx.exp);`
 *   tData[10] = <TStylingStatic>[
 *     '': 'dynamic', // This is the wrapped value of `TStylingKey`
 *     'DIR': true,   // This is the default static value of directive binding.
 *   ];
 *   tData[10 + 1] = 0; // We don't have prev/next.
 *
 *   lView[10] = undefined;     // assume `ctx.exp` is `undefined`
 *   lView[10 + 1] = undefined; // Just normalized `lView[10]`
 * ```
 *
 * So when the function is resolving styling value, it first needs to look into the linked list
 * (there is none) and than into the static `TStylingStatic` too see if there is a default value for
 * `dynamic` (there is not). Therefore it is safe to remove it.
 *
 * If setting `true` case:
 * ```
 *   lView[10] = true;     // assume `ctx.exp` is `true`
 *   lView[10 + 1] = true; // Just normalized `lView[10]`
 * ```
 * So when the function is resolving styling value, it first needs to look into the linked list
 * (there is none) and than into `TNode.residualClass` (TNode.residualStyle) which contains
 * ```
 *   tNode.residualClass = [
 *     'TEMPLATE': true,
 *   ];
 * ```
 *
 * This means that it is safe to add class.
 * @record
 */
export function TStylingStatic() { }
/**
 * This is a branded number which contains previous and next index.
 *
 * When we come across styling instructions we need to store the `TStylingKey` in the correct
 * order so that we can re-concatenate the styling value in the desired priority.
 *
 * The insertion can happen either at the:
 * - end of template as in the case of coming across additional styling instruction in the template
 * - in front of the template in the case of coming across additional instruction in the
 *   `hostBindings`.
 *
 * We use `TStylingRange` to store the previous and next index into the `TData` where the template
 * bindings can be found.
 *
 * - bit 0 is used to mark that the previous index has a duplicate for current value.
 * - bit 1 is used to mark that the next index has a duplicate for the current value.
 * - bits 2-16 are used to encode the next/tail of the template.
 * - bits 17-32 are used to encode the previous/head of template.
 *
 * NODE: *duplicate* false implies that it is statically known that this binding will not collide
 * with other bindings and therefore there is no need to check other bindings. For example the
 * bindings in `<div [style.color]="exp" [style.width]="exp">` will never collide and will have
 * their bits set accordingly. Previous duplicate means that we may need to check previous if the
 * current binding is `null`. Next duplicate means that we may need to check next bindings if the
 * current binding is not `null`.
 *
 * NOTE: `0` has special significance and represents `null` as in no additional pointer.
 * @record
 */
export function TStylingRange() { }
if (false) {
    /** @type {?} */
    TStylingRange.prototype.__brand__;
}
/** @enum {number} */
const StylingRange = {
    /// Number of bits to shift for the previous pointer
    PREV_SHIFT: 17,
    /// Previous pointer mask.
    PREV_MASK: 4294836224,
    /// Number of bits to shift for the next pointer
    NEXT_SHIFT: 2,
    /// Next pointer mask.
    NEXT_MASK: 131068,
    // Mask to remove nagative bit. (interpret number as positive)
    UNSIGNED_MASK: 32767,
    /**
     * This bit is set if the previous bindings contains a binding which could possibly cause a
     * duplicate. For example: `<div [style]="map" [style.width]="width">`, the `width` binding will
     * have previous duplicate set. The implication is that if `width` binding becomes `null`, it is
     * necessary to defer the value to `map.width`. (Because `width` overwrites `map.width`.)
     */
    PREV_DUPLICATE: 2,
    /**
     * This bit is set to if the next binding contains a binding which could possibly cause a
     * duplicate. For example: `<div [style]="map" [style.width]="width">`, the `map` binding will
     * have next duplicate set. The implication is that if `map.width` binding becomes not `null`, it
     * is necessary to defer the value to `width`. (Because `width` overwrites `map.width`.)
     */
    NEXT_DUPLICATE: 1,
};
export { StylingRange };
/**
 * @param {?} prev
 * @param {?} next
 * @return {?}
 */
export function toTStylingRange(prev, next) {
    ngDevMode && assertNumberInRange(prev, 0, 32767 /* UNSIGNED_MASK */);
    ngDevMode && assertNumberInRange(next, 0, 32767 /* UNSIGNED_MASK */);
    return (/** @type {?} */ ((prev << 17 /* PREV_SHIFT */ | next << 2 /* NEXT_SHIFT */)));
}
/**
 * @param {?} tStylingRange
 * @return {?}
 */
export function getTStylingRangePrev(tStylingRange) {
    ngDevMode && assertNumber(tStylingRange, 'expected number');
    return (((/** @type {?} */ ((/** @type {?} */ (tStylingRange))))) >> 17 /* PREV_SHIFT */) & 32767 /* UNSIGNED_MASK */;
}
/**
 * @param {?} tStylingRange
 * @return {?}
 */
export function getTStylingRangePrevDuplicate(tStylingRange) {
    ngDevMode && assertNumber(tStylingRange, 'expected number');
    return (((/** @type {?} */ ((/** @type {?} */ (tStylingRange))))) & 2 /* PREV_DUPLICATE */) ==
        2 /* PREV_DUPLICATE */;
}
/**
 * @param {?} tStylingRange
 * @param {?} previous
 * @return {?}
 */
export function setTStylingRangePrev(tStylingRange, previous) {
    ngDevMode && assertNumber(tStylingRange, 'expected number');
    ngDevMode && assertNumberInRange(previous, 0, 32767 /* UNSIGNED_MASK */);
    return (/** @type {?} */ (((((/** @type {?} */ ((/** @type {?} */ (tStylingRange))))) & ~4294836224 /* PREV_MASK */) |
        (previous << 17 /* PREV_SHIFT */))));
}
/**
 * @param {?} tStylingRange
 * @return {?}
 */
export function setTStylingRangePrevDuplicate(tStylingRange) {
    ngDevMode && assertNumber(tStylingRange, 'expected number');
    return (/** @type {?} */ ((((/** @type {?} */ ((/** @type {?} */ (tStylingRange))))) | 2 /* PREV_DUPLICATE */)));
}
/**
 * @param {?} tStylingRange
 * @return {?}
 */
export function getTStylingRangeNext(tStylingRange) {
    ngDevMode && assertNumber(tStylingRange, 'expected number');
    return (((/** @type {?} */ ((/** @type {?} */ (tStylingRange))))) & 131068 /* NEXT_MASK */) >> 2 /* NEXT_SHIFT */;
}
/**
 * @param {?} tStylingRange
 * @param {?} next
 * @return {?}
 */
export function setTStylingRangeNext(tStylingRange, next) {
    ngDevMode && assertNumber(tStylingRange, 'expected number');
    ngDevMode && assertNumberInRange(next, 0, 32767 /* UNSIGNED_MASK */);
    return (/** @type {?} */ (((((/** @type {?} */ ((/** @type {?} */ (tStylingRange))))) & ~131068 /* NEXT_MASK */) | //
        next << 2 /* NEXT_SHIFT */)));
}
/**
 * @param {?} tStylingRange
 * @return {?}
 */
export function getTStylingRangeNextDuplicate(tStylingRange) {
    ngDevMode && assertNumber(tStylingRange, 'expected number');
    return (((/** @type {?} */ ((/** @type {?} */ (tStylingRange))))) & 1 /* NEXT_DUPLICATE */) ===
        1 /* NEXT_DUPLICATE */;
}
/**
 * @param {?} tStylingRange
 * @return {?}
 */
export function setTStylingRangeNextDuplicate(tStylingRange) {
    ngDevMode && assertNumber(tStylingRange, 'expected number');
    return (/** @type {?} */ ((((/** @type {?} */ ((/** @type {?} */ (tStylingRange))))) | 1 /* NEXT_DUPLICATE */)));
}
/**
 * @param {?} tStylingRange
 * @return {?}
 */
export function getTStylingRangeTail(tStylingRange) {
    ngDevMode && assertNumber(tStylingRange, 'expected number');
    /** @type {?} */
    const next = getTStylingRangeNext(tStylingRange);
    return next === 0 ? getTStylingRangePrev(tStylingRange) : next;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic3R5bGluZy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3JlbmRlcjMvaW50ZXJmYWNlcy9zdHlsaW5nLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQVNBLE9BQU8sRUFBQyxZQUFZLEVBQUUsbUJBQW1CLEVBQUMsTUFBTSxtQkFBbUIsQ0FBQzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFrRnBFLG9DQUE2RDs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBOEI3RCxtQ0FBOEQ7OztJQUE3QixrQ0FBMkI7OztBQUs1RCxNQUFrQixZQUFZO0lBQzVCLG9EQUFvRDtJQUNwRCxVQUFVLElBQUs7SUFDZiwwQkFBMEI7SUFDMUIsU0FBUyxZQUFhO0lBRXRCLGdEQUFnRDtJQUNoRCxVQUFVLEdBQUk7SUFDZCxzQkFBc0I7SUFDdEIsU0FBUyxRQUFZO0lBRXJCLDhEQUE4RDtJQUM5RCxhQUFhLE9BQVM7SUFFdEI7Ozs7O09BS0c7SUFDSCxjQUFjLEdBQU87SUFFckI7Ozs7O09BS0c7SUFDSCxjQUFjLEdBQU87RUFDdEI7Ozs7Ozs7QUFHRCxNQUFNLFVBQVUsZUFBZSxDQUFDLElBQVksRUFBRSxJQUFZO0lBQ3hELFNBQVMsSUFBSSxtQkFBbUIsQ0FBQyxJQUFJLEVBQUUsQ0FBQyw0QkFBNkIsQ0FBQztJQUN0RSxTQUFTLElBQUksbUJBQW1CLENBQUMsSUFBSSxFQUFFLENBQUMsNEJBQTZCLENBQUM7SUFDdEUsT0FBTyxtQkFBQSxDQUFDLElBQUksdUJBQTJCLEdBQUcsSUFBSSxzQkFBMkIsQ0FBQyxFQUFPLENBQUM7QUFDcEYsQ0FBQzs7Ozs7QUFFRCxNQUFNLFVBQVUsb0JBQW9CLENBQUMsYUFBNEI7SUFDL0QsU0FBUyxJQUFJLFlBQVksQ0FBQyxhQUFhLEVBQUUsaUJBQWlCLENB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LENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiogQGxpY2Vuc2VcbiogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4qXG4qIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4qIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiovXG5cbmltcG9ydCB7S2V5VmFsdWVBcnJheX0gZnJvbSAnLi4vLi4vdXRpbC9hcnJheV91dGlscyc7XG5pbXBvcnQge2Fzc2VydE51bWJlciwgYXNzZXJ0TnVtYmVySW5SYW5nZX0gZnJvbSAnLi4vLi4vdXRpbC9hc3NlcnQnO1xuXG4vKipcbiAqIFZhbHVlIHN0b3JlZCBpbiB0aGUgYFREYXRhYCB3aGljaCBpcyBuZWVkZWQgdG8gcmUtY29uY2F0ZW5hdGUgdGhlIHN0eWxpbmcuXG4gKlxuICogU2VlOiBgVFN0eWxpbmdLZXlQcmltaXRpdmVgIGFuZCBgVFN0eWxpbmdTdGF0aWNgXG4gKi9cbmV4cG9ydCB0eXBlIFRTdHlsaW5nS2V5ID0gVFN0eWxpbmdLZXlQcmltaXRpdmUgfCBUU3R5bGluZ1N0YXRpYztcblxuXG4vKipcbiAqIFRoZSBwcmltaXRpdmUgcG9ydGlvbiAoYFRTdHlsaW5nU3RhdGljYCByZW1vdmVkKSBvZiB0aGUgdmFsdWUgc3RvcmVkIGluIHRoZSBgVERhdGFgIHdoaWNoIGlzXG4gKiBuZWVkZWQgdG8gcmUtY29uY2F0ZW5hdGUgdGhlIHN0eWxpbmcuXG4gKlxuICogLSBgc3RyaW5nYDogU3RvcmVzIHRoZSBwcm9wZXJ0eSBuYW1lLiBVc2VkIHdpdGggYMm1ybVzdHlsZVByb3BgL2DJtcm1Y2xhc3NQcm9wYCBpbnN0cnVjdGlvbi5cbiAqIC0gYG51bGxgOiBSZXByZXNlbnRzIG1hcCwgc28gdGhlcmUgaXMgbm8gbmFtZS4gVXNlZCB3aXRoIGDJtcm1c3R5bGVNYXBgL2DJtcm1Y2xhc3NNYXBgLlxuICogLSBgZmFsc2VgOiBSZXByZXNlbnRzIGFuIGlnbm9yZSBjYXNlLiBUaGlzIGhhcHBlbnMgd2hlbiBgybXJtXN0eWxlUHJvcGAvYMm1ybVjbGFzc1Byb3BgIGluc3RydWN0aW9uXG4gKiAgIGlzIGNvbWJpbmVkIHdpdGggZGlyZWN0aXZlIHdoaWNoIHNoYWRvd3MgaXRzIGlucHV0IGBASW5wdXQoJ2NsYXNzJylgLiBUaGF0IHdheSB0aGUgYmluZGluZ1xuICogICBzaG91bGQgbm90IHBhcnRpY2lwYXRlIGluIHRoZSBzdHlsaW5nIHJlc29sdXRpb24uXG4gKi9cbmV4cG9ydCB0eXBlIFRTdHlsaW5nS2V5UHJpbWl0aXZlID0gc3RyaW5nIHwgbnVsbCB8IGZhbHNlO1xuXG4vKipcbiAqIFN0b3JlIHRoZSBzdGF0aWMgdmFsdWVzIGZvciB0aGUgc3R5bGluZyBiaW5kaW5nLlxuICpcbiAqIFRoZSBgVFN0eWxpbmdTdGF0aWNgIGlzIGp1c3QgYEtleVZhbHVlQXJyYXlgIHdoZXJlIGtleSBgXCJcImAgKHN0b3JlZCBhdCBsb2NhdGlvbiAwKSBjb250YWlucyB0aGVcbiAqIGBUU3R5bGluZ0tleWAgKHN0b3JlZCBhdCBsb2NhdGlvbiAxKS4gSW4gb3RoZXIgd29yZHMgdGhpcyB3cmFwcyB0aGUgYFRTdHlsaW5nS2V5YCBzdWNoIHRoYXQgdGhlXG4gKiBgXCJcImAgY29udGFpbnMgdGhlIHdyYXBwZWQgdmFsdWUuXG4gKlxuICogV2hlbiBpbnN0cnVjdGlvbnMgYXJlIHJlc29sdmluZyBzdHlsaW5nIHRoZXkgbWF5IG5lZWQgdG8gbG9vayBmb3J3YXJkIG9yIGJhY2t3YXJkcyBpbiB0aGUgbGlua2VkXG4gKiBsaXN0IHRvIHJlc29sdmUgdGhlIHZhbHVlLiBGb3IgdGhpcyByZWFzb24gd2UgaGF2ZSB0byBtYWtlIHN1cmUgdGhhdCBoZSBsaW5rZWQgbGlzdCBhbHNvIGNvbnRhaW5zXG4gKiB0aGUgc3RhdGljIHZhbHVlcy4gSG93ZXZlciB0aGUgbGlzdCBvbmx5IGhhcyBzcGFjZSBmb3Igb25lIGl0ZW0gcGVyIHN0eWxpbmcgaW5zdHJ1Y3Rpb24uIEZvciB0aGlzXG4gKiByZWFzb24gd2Ugc3RvcmUgdGhlIHN0YXRpYyB2YWx1ZXMgaGVyZSBhcyBwYXJ0IG9mIHRoZSBgVFN0eWxpbmdLZXlgLiBUaGlzIG1lYW5zIHRoYXQgdGhlXG4gKiByZXNvbHV0aW9uIGZ1bmN0aW9uIHdoZW4gbG9va2luZyBmb3IgYSB2YWx1ZSBuZWVkcyB0byBmaXJzdCBsb29rIGF0IHRoZSBiaW5kaW5nIHZhbHVlLCBhbmQgdGhhblxuICogYXQgYFRTdHlsaW5nS2V5YCAoaWYgaXQgZXhpc3RzKS5cbiAqXG4gKiBJbWFnaW5lIHdlIGhhdmU6XG4gKlxuICogYGBgXG4gKiA8ZGl2IGNsYXNzPVwiVEVNUExBVEVcIiBteS1kaXI+XG4gKlxuICogQERpcmVjdGl2ZSh7XG4gKiAgIGhvc3Q6IHtcbiAqICAgICBjbGFzczogJ0RJUicsXG4gKiAgICAgJ1tjbGFzcy5keW5hbWljXSc6ICdleHAnIC8vIMm1ybVjbGFzc1Byb3AoJ2R5bmFtaWMnLCBjdHguZXhwKTtcbiAqICAgfVxuICogfSlcbiAqIGBgYFxuICpcbiAqIEluIHRoZSBhYm92ZSBjYXNlIHRoZSBsaW5rZWQgbGlzdCB3aWxsIGNvbnRhaW4gb25lIGl0ZW06XG4gKlxuICogYGBgXG4gKiAgIC8vIGFzc3VtZSBiaW5kaW5nIGxvY2F0aW9uOiAxMCBmb3IgYMm1ybVjbGFzc1Byb3AoJ2R5bmFtaWMnLCBjdHguZXhwKTtgXG4gKiAgIHREYXRhWzEwXSA9IDxUU3R5bGluZ1N0YXRpYz5bXG4gKiAgICAgJyc6ICdkeW5hbWljJywgLy8gVGhpcyBpcyB0aGUgd3JhcHBlZCB2YWx1ZSBvZiBgVFN0eWxpbmdLZXlgXG4gKiAgICAgJ0RJUic6IHRydWUsICAgLy8gVGhpcyBpcyB0aGUgZGVmYXVsdCBzdGF0aWMgdmFsdWUgb2YgZGlyZWN0aXZlIGJpbmRpbmcuXG4gKiAgIF07XG4gKiAgIHREYXRhWzEwICsgMV0gPSAwOyAvLyBXZSBkb24ndCBoYXZlIHByZXYvbmV4dC5cbiAqXG4gKiAgIGxWaWV3WzEwXSA9IHVuZGVmaW5lZDsgICAgIC8vIGFzc3VtZSBgY3R4LmV4cGAgaXMgYHVuZGVmaW5lZGBcbiAqICAgbFZpZXdbMTAgKyAxXSA9IHVuZGVmaW5lZDsgLy8gSnVzdCBub3JtYWxpemVkIGBsVmlld1sxMF1gXG4gKiBgYGBcbiAqXG4gKiBTbyB3aGVuIHRoZSBmdW5jdGlvbiBpcyByZXNvbHZpbmcgc3R5bGluZyB2YWx1ZSwgaXQgZmlyc3QgbmVlZHMgdG8gbG9vayBpbnRvIHRoZSBsaW5rZWQgbGlzdFxuICogKHRoZXJlIGlzIG5vbmUpIGFuZCB0aGFuIGludG8gdGhlIHN0YXRpYyBgVFN0eWxpbmdTdGF0aWNgIHRvbyBzZWUgaWYgdGhlcmUgaXMgYSBkZWZhdWx0IHZhbHVlIGZvclxuICogYGR5bmFtaWNgICh0aGVyZSBpcyBub3QpLiBUaGVyZWZvcmUgaXQgaXMgc2FmZSB0byByZW1vdmUgaXQuXG4gKlxuICogSWYgc2V0dGluZyBgdHJ1ZWAgY2FzZTpcbiAqIGBgYFxuICogICBsVmlld1sxMF0gPSB0cnVlOyAgICAgLy8gYXNzdW1lIGBjdHguZXhwYCBpcyBgdHJ1ZWBcbiAqICAgbFZpZXdbMTAgKyAxXSA9IHRydWU7IC8vIEp1c3Qgbm9ybWFsaXplZCBgbFZpZXdbMTBdYFxuICogYGBgXG4gKiBTbyB3aGVuIHRoZSBmdW5jdGlvbiBpcyByZXNvbHZpbmcgc3R5bGluZyB2YWx1ZSwgaXQgZmlyc3QgbmVlZHMgdG8gbG9vayBpbnRvIHRoZSBsaW5rZWQgbGlzdFxuICogKHRoZXJlIGlzIG5vbmUpIGFuZCB0aGFuIGludG8gYFROb2RlLnJlc2lkdWFsQ2xhc3NgIChUTm9kZS5yZXNpZHVhbFN0eWxlKSB3aGljaCBjb250YWluc1xuICogYGBgXG4gKiAgIHROb2RlLnJlc2lkdWFsQ2xhc3MgPSBbXG4gKiAgICAgJ1RFTVBMQVRFJzogdHJ1ZSxcbiAqICAgXTtcbiAqIGBgYFxuICpcbiAqIFRoaXMgbWVhbnMgdGhhdCBpdCBpcyBzYWZlIHRvIGFkZCBjbGFzcy5cbiAqL1xuZXhwb3J0IGludGVyZmFjZSBUU3R5bGluZ1N0YXRpYyBleHRlbmRzIEtleVZhbHVlQXJyYXk8YW55PiB7fVxuXG4vKipcbiAqIFRoaXMgaXMgYSBicmFuZGVkIG51bWJlciB3aGljaCBjb250YWlucyBwcmV2aW91cyBhbmQgbmV4dCBpbmRleC5cbiAqXG4gKiBXaGVuIHdlIGNvbWUgYWNyb3NzIHN0eWxpbmcgaW5zdHJ1Y3Rpb25zIHdlIG5lZWQgdG8gc3RvcmUgdGhlIGBUU3R5bGluZ0tleWAgaW4gdGhlIGNvcnJlY3RcbiAqIG9yZGVyIHNvIHRoYXQgd2UgY2FuIHJlLWNvbmNhdGVuYXRlIHRoZSBzdHlsaW5nIHZhbHVlIGluIHRoZSBkZXNpcmVkIHByaW9yaXR5LlxuICpcbiAqIFRoZSBpbnNlcnRpb24gY2FuIGhhcHBlbiBlaXRoZXIgYXQgdGhlOlxuICogLSBlbmQgb2YgdGVtcGxhdGUgYXMgaW4gdGhlIGNhc2Ugb2YgY29taW5nIGFjcm9zcyBhZGRpdGlvbmFsIHN0eWxpbmcgaW5zdHJ1Y3Rpb24gaW4gdGhlIHRlbXBsYXRlXG4gKiAtIGluIGZyb250IG9mIHRoZSB0ZW1wbGF0ZSBpbiB0aGUgY2FzZSBvZiBjb21pbmcgYWNyb3NzIGFkZGl0aW9uYWwgaW5zdHJ1Y3Rpb24gaW4gdGhlXG4gKiAgIGBob3N0QmluZGluZ3NgLlxuICpcbiAqIFdlIHVzZSBgVFN0eWxpbmdSYW5nZWAgdG8gc3RvcmUgdGhlIHByZXZpb3VzIGFuZCBuZXh0IGluZGV4IGludG8gdGhlIGBURGF0YWAgd2hlcmUgdGhlIHRlbXBsYXRlXG4gKiBiaW5kaW5ncyBjYW4gYmUgZm91bmQuXG4gKlxuICogLSBiaXQgMCBpcyB1c2VkIHRvIG1hcmsgdGhhdCB0aGUgcHJldmlvdXMgaW5kZXggaGFzIGEgZHVwbGljYXRlIGZvciBjdXJyZW50IHZhbHVlLlxuICogLSBiaXQgMSBpcyB1c2VkIHRvIG1hcmsgdGhhdCB0aGUgbmV4dCBpbmRleCBoYXMgYSBkdXBsaWNhdGUgZm9yIHRoZSBjdXJyZW50IHZhbHVlLlxuICogLSBiaXRzIDItMTYgYXJlIHVzZWQgdG8gZW5jb2RlIHRoZSBuZXh0L3RhaWwgb2YgdGhlIHRlbXBsYXRlLlxuICogLSBiaXRzIDE3LTMyIGFyZSB1c2VkIHRvIGVuY29kZSB0aGUgcHJldmlvdXMvaGVhZCBvZiB0ZW1wbGF0ZS5cbiAqXG4gKiBOT0RFOiAqZHVwbGljYXRlKiBmYWxzZSBpbXBsaWVzIHRoYXQgaXQgaXMgc3RhdGljYWxseSBrbm93biB0aGF0IHRoaXMgYmluZGluZyB3aWxsIG5vdCBjb2xsaWRlXG4gKiB3aXRoIG90aGVyIGJpbmRpbmdzIGFuZCB0aGVyZWZvcmUgdGhlcmUgaXMgbm8gbmVlZCB0byBjaGVjayBvdGhlciBiaW5kaW5ncy4gRm9yIGV4YW1wbGUgdGhlXG4gKiBiaW5kaW5ncyBpbiBgPGRpdiBbc3R5bGUuY29sb3JdPVwiZXhwXCIgW3N0eWxlLndpZHRoXT1cImV4cFwiPmAgd2lsbCBuZXZlciBjb2xsaWRlIGFuZCB3aWxsIGhhdmVcbiAqIHRoZWlyIGJpdHMgc2V0IGFjY29yZGluZ2x5LiBQcmV2aW91cyBkdXBsaWNhdGUgbWVhbnMgdGhhdCB3ZSBtYXkgbmVlZCB0byBjaGVjayBwcmV2aW91cyBpZiB0aGVcbiAqIGN1cnJlbnQgYmluZGluZyBpcyBgbnVsbGAuIE5leHQgZHVwbGljYXRlIG1lYW5zIHRoYXQgd2UgbWF5IG5lZWQgdG8gY2hlY2sgbmV4dCBiaW5kaW5ncyBpZiB0aGVcbiAqIGN1cnJlbnQgYmluZGluZyBpcyBub3QgYG51bGxgLlxuICpcbiAqIE5PVEU6IGAwYCBoYXMgc3BlY2lhbCBzaWduaWZpY2FuY2UgYW5kIHJlcHJlc2VudHMgYG51bGxgIGFzIGluIG5vIGFkZGl0aW9uYWwgcG9pbnRlci5cbiAqL1xuZXhwb3J0IGludGVyZmFjZSBUU3R5bGluZ1JhbmdlIHsgX19icmFuZF9fOiAnVFN0eWxpbmdSYW5nZSc7IH1cblxuLyoqXG4gKiBTaGlmdCBhbmQgbWFza3MgY29uc3RhbnRzIGZvciBlbmNvZGluZyB0d28gbnVtYmVycyBpbnRvIGFuZCBkdXBsaWNhdGUgaW5mbyBpbnRvIGEgc2luZ2xlIG51bWJlci5cbiAqL1xuZXhwb3J0IGNvbnN0IGVudW0gU3R5bGluZ1JhbmdlIHtcbiAgLy8vIE51bWJlciBvZiBiaXRzIHRvIHNoaWZ0IGZvciB0aGUgcHJldmlvdXMgcG9pbnRlclxuICBQUkVWX1NISUZUID0gMTcsXG4gIC8vLyBQcmV2aW91cyBwb2ludGVyIG1hc2suXG4gIFBSRVZfTUFTSyA9IDB4RkZGRTAwMDAsXG5cbiAgLy8vIE51bWJlciBvZiBiaXRzIHRvIHNoaWZ0IGZvciB0aGUgbmV4dCBwb2ludGVyXG4gIE5FWFRfU0hJRlQgPSAyLFxuICAvLy8gTmV4dCBwb2ludGVyIG1hc2suXG4gIE5FWFRfTUFTSyA9IDB4MDAxRkZGQyxcblxuICAvLyBNYXNrIHRvIHJlbW92ZSBuYWdhdGl2ZSBiaXQuIChpbnRlcnByZXQgbnVtYmVyIGFzIHBvc2l0aXZlKVxuICBVTlNJR05FRF9NQVNLID0gMHg3RkZGLFxuXG4gIC8qKlxuICAgKiBUaGlzIGJpdCBpcyBzZXQgaWYgdGhlIHByZXZpb3VzIGJpbmRpbmdzIGNvbnRhaW5zIGEgYmluZGluZyB3aGljaCBjb3VsZCBwb3NzaWJseSBjYXVzZSBhXG4gICAqIGR1cGxpY2F0ZS4gRm9yIGV4YW1wbGU6IGA8ZGl2IFtzdHlsZV09XCJtYXBcIiBbc3R5bGUud2lkdGhdPVwid2lkdGhcIj5gLCB0aGUgYHdpZHRoYCBiaW5kaW5nIHdpbGxcbiAgICogaGF2ZSBwcmV2aW91cyBkdXBsaWNhdGUgc2V0LiBUaGUgaW1wbGljYXRpb24gaXMgdGhhdCBpZiBgd2lkdGhgIGJpbmRpbmcgYmVjb21lcyBgbnVsbGAsIGl0IGlzXG4gICAqIG5lY2Vzc2FyeSB0byBkZWZlciB0aGUgdmFsdWUgdG8gYG1hcC53aWR0aGAuIChCZWNhdXNlIGB3aWR0aGAgb3ZlcndyaXRlcyBgbWFwLndpZHRoYC4pXG4gICAqL1xuICBQUkVWX0RVUExJQ0FURSA9IDB4MDIsXG5cbiAgLyoqXG4gICAqIFRoaXMgYml0IGlzIHNldCB0byBpZiB0aGUgbmV4dCBiaW5kaW5nIGNvbnRhaW5zIGEgYmluZGluZyB3aGljaCBjb3VsZCBwb3NzaWJseSBjYXVzZSBhXG4gICAqIGR1cGxpY2F0ZS4gRm9yIGV4YW1wbGU6IGA8ZGl2IFtzdHlsZV09XCJtYXBcIiBbc3R5bGUud2lkdGhdPVwid2lkdGhcIj5gLCB0aGUgYG1hcGAgYmluZGluZyB3aWxsXG4gICAqIGhhdmUgbmV4dCBkdXBsaWNhdGUgc2V0LiBUaGUgaW1wbGljYXRpb24gaXMgdGhhdCBpZiBgbWFwLndpZHRoYCBiaW5kaW5nIGJlY29tZXMgbm90IGBudWxsYCwgaXRcbiAgICogaXMgbmVjZXNzYXJ5IHRvIGRlZmVyIHRoZSB2YWx1ZSB0byBgd2lkdGhgLiAoQmVjYXVzZSBgd2lkdGhgIG92ZXJ3cml0ZXMgYG1hcC53aWR0aGAuKVxuICAgKi9cbiAgTkVYVF9EVVBMSUNBVEUgPSAweDAxLFxufVxuXG5cbmV4cG9ydCBmdW5jdGlvbiB0b1RTdHlsaW5nUmFuZ2UocHJldjogbnVtYmVyLCBuZXh0OiBudW1iZXIpOiBUU3R5bGluZ1JhbmdlIHtcbiAgbmdEZXZNb2RlICYmIGFzc2VydE51bWJlckluUmFuZ2UocHJldiwgMCwgU3R5bGluZ1JhbmdlLlVOU0lHTkVEX01BU0spO1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0TnVtYmVySW5SYW5nZShuZXh0LCAwLCBTdHlsaW5nUmFuZ2UuVU5TSUdORURfTUFTSyk7XG4gIHJldHVybiAocHJldiA8PCBTdHlsaW5nUmFuZ2UuUFJFVl9TSElGVCB8IG5leHQgPDwgU3R5bGluZ1JhbmdlLk5FWFRfU0hJRlQpIGFzIGFueTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdldFRTdHlsaW5nUmFuZ2VQcmV2KHRTdHlsaW5nUmFuZ2U6IFRTdHlsaW5nUmFuZ2UpOiBudW1iZXIge1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0TnVtYmVyKHRTdHlsaW5nUmFuZ2UsICdleHBlY3RlZCBudW1iZXInKTtcbiAgcmV0dXJuICgodFN0eWxpbmdSYW5nZSBhcyBhbnkgYXMgbnVtYmVyKSA+PiBTdHlsaW5nUmFuZ2UuUFJFVl9TSElGVCkgJiBTdHlsaW5nUmFuZ2UuVU5TSUdORURfTUFTSztcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdldFRTdHlsaW5nUmFuZ2VQcmV2RHVwbGljYXRlKHRTdHlsaW5nUmFuZ2U6IFRTdHlsaW5nUmFuZ2UpOiBib29sZWFuIHtcbiAgbmdEZXZNb2RlICYmIGFzc2VydE51bWJlcih0U3R5bGluZ1JhbmdlLCAnZXhwZWN0ZWQgbnVtYmVyJyk7XG4gIHJldHVybiAoKHRTdHlsaW5nUmFuZ2UgYXMgYW55IGFzIG51bWJlcikgJiBTdHlsaW5nUmFuZ2UuUFJFVl9EVVBMSUNBVEUpID09XG4gICAgICBTdHlsaW5nUmFuZ2UuUFJFVl9EVVBMSUNBVEU7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBzZXRUU3R5bGluZ1JhbmdlUHJldihcbiAgICB0U3R5bGluZ1JhbmdlOiBUU3R5bGluZ1JhbmdlLCBwcmV2aW91czogbnVtYmVyKTogVFN0eWxpbmdSYW5nZSB7XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnROdW1iZXIodFN0eWxpbmdSYW5nZSwgJ2V4cGVjdGVkIG51bWJlcicpO1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0TnVtYmVySW5SYW5nZShwcmV2aW91cywgMCwgU3R5bGluZ1JhbmdlLlVOU0lHTkVEX01BU0spO1xuICByZXR1cm4gKFxuICAgICAgKCh0U3R5bGluZ1JhbmdlIGFzIGFueSBhcyBudW1iZXIpICYgflN0eWxpbmdSYW5nZS5QUkVWX01BU0spIHxcbiAgICAgIChwcmV2aW91cyA8PCBTdHlsaW5nUmFuZ2UuUFJFVl9TSElGVCkpIGFzIGFueTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHNldFRTdHlsaW5nUmFuZ2VQcmV2RHVwbGljYXRlKHRTdHlsaW5nUmFuZ2U6IFRTdHlsaW5nUmFuZ2UpOiBUU3R5bGluZ1JhbmdlIHtcbiAgbmdEZXZNb2RlICYmIGFzc2VydE51bWJlcih0U3R5bGluZ1JhbmdlLCAnZXhwZWN0ZWQgbnVtYmVyJyk7XG4gIHJldHVybiAoKHRTdHlsaW5nUmFuZ2UgYXMgYW55IGFzIG51bWJlcikgfCBTdHlsaW5nUmFuZ2UuUFJFVl9EVVBMSUNBVEUpIGFzIGFueTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdldFRTdHlsaW5nUmFuZ2VOZXh0KHRTdHlsaW5nUmFuZ2U6IFRTdHlsaW5nUmFuZ2UpOiBudW1iZXIge1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0TnVtYmVyKHRTdHlsaW5nUmFuZ2UsICdleHBlY3RlZCBudW1iZXInKTtcbiAgcmV0dXJuICgodFN0eWxpbmdSYW5nZSBhcyBhbnkgYXMgbnVtYmVyKSAmIFN0eWxpbmdSYW5nZS5ORVhUX01BU0spID4+IFN0eWxpbmdSYW5nZS5ORVhUX1NISUZUO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gc2V0VFN0eWxpbmdSYW5nZU5leHQodFN0eWxpbmdSYW5nZTogVFN0eWxpbmdSYW5nZSwgbmV4dDogbnVtYmVyKTogVFN0eWxpbmdSYW5nZSB7XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnROdW1iZXIodFN0eWxpbmdSYW5nZSwgJ2V4cGVjdGVkIG51bWJlcicpO1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0TnVtYmVySW5SYW5nZShuZXh0LCAwLCBTdHlsaW5nUmFuZ2UuVU5TSUdORURfTUFTSyk7XG4gIHJldHVybiAoXG4gICAgICAoKHRTdHlsaW5nUmFuZ2UgYXMgYW55IGFzIG51bWJlcikgJiB+U3R5bGluZ1JhbmdlLk5FWFRfTUFTSykgfCAgLy9cbiAgICAgIG5leHQgPDwgU3R5bGluZ1JhbmdlLk5FWFRfU0hJRlQpIGFzIGFueTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdldFRTdHlsaW5nUmFuZ2VOZXh0RHVwbGljYXRlKHRTdHlsaW5nUmFuZ2U6IFRTdHlsaW5nUmFuZ2UpOiBib29sZWFuIHtcbiAgbmdEZXZNb2RlICYmIGFzc2VydE51bWJlcih0U3R5bGluZ1JhbmdlLCAnZXhwZWN0ZWQgbnVtYmVyJyk7XG4gIHJldHVybiAoKHRTdHlsaW5nUmFuZ2UgYXMgYW55IGFzIG51bWJlcikgJiBTdHlsaW5nUmFuZ2UuTkVYVF9EVVBMSUNBVEUpID09PVxuICAgICAgU3R5bGluZ1JhbmdlLk5FWFRfRFVQTElDQVRFO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gc2V0VFN0eWxpbmdSYW5nZU5leHREdXBsaWNhdGUodFN0eWxpbmdSYW5nZTogVFN0eWxpbmdSYW5nZSk6IFRTdHlsaW5nUmFuZ2Uge1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0TnVtYmVyKHRTdHlsaW5nUmFuZ2UsICdleHBlY3RlZCBudW1iZXInKTtcbiAgcmV0dXJuICgodFN0eWxpbmdSYW5nZSBhcyBhbnkgYXMgbnVtYmVyKSB8IFN0eWxpbmdSYW5nZS5ORVhUX0RVUExJQ0FURSkgYXMgYW55O1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0VFN0eWxpbmdSYW5nZVRhaWwodFN0eWxpbmdSYW5nZTogVFN0eWxpbmdSYW5nZSk6IG51bWJlciB7XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnROdW1iZXIodFN0eWxpbmdSYW5nZSwgJ2V4cGVjdGVkIG51bWJlcicpO1xuICBjb25zdCBuZXh0ID0gZ2V0VFN0eWxpbmdSYW5nZU5leHQodFN0eWxpbmdSYW5nZSk7XG4gIHJldHVybiBuZXh0ID09PSAwID8gZ2V0VFN0eWxpbmdSYW5nZVByZXYodFN0eWxpbmdSYW5nZSkgOiBuZXh0O1xufSJdfQ==