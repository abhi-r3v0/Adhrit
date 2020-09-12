/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/change_detection/pipe_transform.ts
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
 * An interface that is implemented by pipes in order to perform a transformation.
 * Angular invokes the `transform` method with the value of a binding
 * as the first argument, and any parameters as the second argument in list form.
 *
 * \@usageNotes
 *
 * In the following example, `RepeatPipe` repeats a given value a given number of times.
 *
 * ```ts
 * import {Pipe, PipeTransform} from '\@angular/core';
 *
 * \@Pipe({name: 'repeat'})
 * export class RepeatPipe implements PipeTransform {
 *   transform(value: any, times: number) {
 *     return value.repeat(times);
 *   }
 * }
 * ```
 *
 * Invoking `{{ 'ok' | repeat:3 }}` in a template produces `okokok`.
 *
 * \@publicApi
 * @record
 */
export function PipeTransform() { }
if (false) {
    /**
     * @param {?} value
     * @param {...?} args
     * @return {?}
     */
    PipeTransform.prototype.transform = function (value, args) { };
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicGlwZV90cmFuc2Zvcm0uanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9jaGFuZ2VfZGV0ZWN0aW9uL3BpcGVfdHJhbnNmb3JtLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFnQ0EsbUNBQThFOzs7Ozs7O0lBQTdDLCtEQUEyQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuLyoqXG4gKiBBbiBpbnRlcmZhY2UgdGhhdCBpcyBpbXBsZW1lbnRlZCBieSBwaXBlcyBpbiBvcmRlciB0byBwZXJmb3JtIGEgdHJhbnNmb3JtYXRpb24uXG4gKiBBbmd1bGFyIGludm9rZXMgdGhlIGB0cmFuc2Zvcm1gIG1ldGhvZCB3aXRoIHRoZSB2YWx1ZSBvZiBhIGJpbmRpbmdcbiAqIGFzIHRoZSBmaXJzdCBhcmd1bWVudCwgYW5kIGFueSBwYXJhbWV0ZXJzIGFzIHRoZSBzZWNvbmQgYXJndW1lbnQgaW4gbGlzdCBmb3JtLlxuICpcbiAqIEB1c2FnZU5vdGVzXG4gKlxuICogSW4gdGhlIGZvbGxvd2luZyBleGFtcGxlLCBgUmVwZWF0UGlwZWAgcmVwZWF0cyBhIGdpdmVuIHZhbHVlIGEgZ2l2ZW4gbnVtYmVyIG9mIHRpbWVzLlxuICpcbiAqIGBgYHRzXG4gKiBpbXBvcnQge1BpcGUsIFBpcGVUcmFuc2Zvcm19IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuICpcbiAqIEBQaXBlKHtuYW1lOiAncmVwZWF0J30pXG4gKiBleHBvcnQgY2xhc3MgUmVwZWF0UGlwZSBpbXBsZW1lbnRzIFBpcGVUcmFuc2Zvcm0ge1xuICogICB0cmFuc2Zvcm0odmFsdWU6IGFueSwgdGltZXM6IG51bWJlcikge1xuICogICAgIHJldHVybiB2YWx1ZS5yZXBlYXQodGltZXMpO1xuICogICB9XG4gKiB9XG4gKiBgYGBcbiAqXG4gKiBJbnZva2luZyBge3sgJ29rJyB8IHJlcGVhdDozIH19YCBpbiBhIHRlbXBsYXRlIHByb2R1Y2VzIGBva29rb2tgLlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGludGVyZmFjZSBQaXBlVHJhbnNmb3JtIHsgdHJhbnNmb3JtKHZhbHVlOiBhbnksIC4uLmFyZ3M6IGFueVtdKTogYW55OyB9XG4iXX0=