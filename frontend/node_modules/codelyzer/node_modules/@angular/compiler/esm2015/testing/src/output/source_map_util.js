/**
 * @fileoverview added by tsickle
 * Generated from: packages/compiler/testing/src/output/source_map_util.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/** @type {?} */
const b64 = require('base64-js');
/** @type {?} */
const SourceMapConsumer = require('source-map').SourceMapConsumer;
/**
 * @record
 */
export function SourceLocation() { }
if (false) {
    /** @type {?} */
    SourceLocation.prototype.line;
    /** @type {?} */
    SourceLocation.prototype.column;
    /** @type {?} */
    SourceLocation.prototype.source;
}
/**
 * @param {?} sourceMap
 * @param {?} genPosition
 * @return {?}
 */
export function originalPositionFor(sourceMap, genPosition) {
    /** @type {?} */
    const smc = new SourceMapConsumer(sourceMap);
    // Note: We don't return the original object as it also contains a `name` property
    // which is always null and we don't want to include that in our assertions...
    const { line, column, source } = smc.originalPositionFor(genPosition);
    return { line, column, source };
}
/**
 * @param {?} source
 * @return {?}
 */
export function extractSourceMap(source) {
    /** @type {?} */
    let idx = source.lastIndexOf('\n//#');
    if (idx == -1)
        return null;
    /** @type {?} */
    const smComment = source.slice(idx).split('\n', 2)[1].trim();
    /** @type {?} */
    const smB64 = smComment.split('sourceMappingURL=data:application/json;base64,')[1];
    return smB64 ? JSON.parse(decodeB64String(smB64)) : null;
}
/**
 * @param {?} s
 * @return {?}
 */
function decodeB64String(s) {
    return b64.toByteArray(s).reduce((/**
     * @param {?} s
     * @param {?} c
     * @return {?}
     */
    (s, c) => s + String.fromCharCode(c)), '');
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic291cmNlX21hcF91dGlsLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvdGVzdGluZy9zcmMvb3V0cHV0L3NvdXJjZV9tYXBfdXRpbC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7O01BU00sR0FBRyxHQUFHLE9BQU8sQ0FBQyxXQUFXLENBQUM7O01BQzFCLGlCQUFpQixHQUFHLE9BQU8sQ0FBQyxZQUFZLENBQUMsQ0FBQyxpQkFBaUI7Ozs7QUFFakUsb0NBSUM7OztJQUhDLDhCQUFhOztJQUNiLGdDQUFlOztJQUNmLGdDQUFlOzs7Ozs7O0FBR2pCLE1BQU0sVUFBVSxtQkFBbUIsQ0FDL0IsU0FBb0IsRUFDcEIsV0FBeUQ7O1VBQ3JELEdBQUcsR0FBRyxJQUFJLGlCQUFpQixDQUFDLFNBQVMsQ0FBQzs7O1VBR3RDLEVBQUMsSUFBSSxFQUFFLE1BQU0sRUFBRSxNQUFNLEVBQUMsR0FBRyxHQUFHLENBQUMsbUJBQW1CLENBQUMsV0FBVyxDQUFDO0lBQ25FLE9BQU8sRUFBQyxJQUFJLEVBQUUsTUFBTSxFQUFFLE1BQU0sRUFBQyxDQUFDO0FBQ2hDLENBQUM7Ozs7O0FBRUQsTUFBTSxVQUFVLGdCQUFnQixDQUFDLE1BQWM7O1FBQ3pDLEdBQUcsR0FBRyxNQUFNLENBQUMsV0FBVyxDQUFDLE9BQU8sQ0FBQztJQUNyQyxJQUFJLEdBQUcsSUFBSSxDQUFDLENBQUM7UUFBRSxPQUFPLElBQUksQ0FBQzs7VUFDckIsU0FBUyxHQUFHLE1BQU0sQ0FBQyxLQUFLLENBQUMsR0FBRyxDQUFDLENBQUMsS0FBSyxDQUFDLElBQUksRUFBRSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxJQUFJLEVBQUU7O1VBQ3RELEtBQUssR0FBRyxTQUFTLENBQUMsS0FBSyxDQUFDLGdEQUFnRCxDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQ2xGLE9BQU8sS0FBSyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLGVBQWUsQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUM7QUFDM0QsQ0FBQzs7Ozs7QUFFRCxTQUFTLGVBQWUsQ0FBQyxDQUFTO0lBQ2hDLE9BQU8sR0FBRyxDQUFDLFdBQVcsQ0FBQyxDQUFDLENBQUMsQ0FBQyxNQUFNOzs7OztJQUFDLENBQUMsQ0FBUyxFQUFFLENBQVMsRUFBRSxFQUFFLENBQUMsQ0FBQyxHQUFHLE1BQU0sQ0FBQyxZQUFZLENBQUMsQ0FBQyxDQUFDLEdBQUUsRUFBRSxDQUFDLENBQUM7QUFDN0YsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtTb3VyY2VNYXB9IGZyb20gJ0Bhbmd1bGFyL2NvbXBpbGVyJztcbmNvbnN0IGI2NCA9IHJlcXVpcmUoJ2Jhc2U2NC1qcycpO1xuY29uc3QgU291cmNlTWFwQ29uc3VtZXIgPSByZXF1aXJlKCdzb3VyY2UtbWFwJykuU291cmNlTWFwQ29uc3VtZXI7XG5cbmV4cG9ydCBpbnRlcmZhY2UgU291cmNlTG9jYXRpb24ge1xuICBsaW5lOiBudW1iZXI7XG4gIGNvbHVtbjogbnVtYmVyO1xuICBzb3VyY2U6IHN0cmluZztcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIG9yaWdpbmFsUG9zaXRpb25Gb3IoXG4gICAgc291cmNlTWFwOiBTb3VyY2VNYXAsXG4gICAgZ2VuUG9zaXRpb246IHtsaW5lOiBudW1iZXIgfCBudWxsLCBjb2x1bW46IG51bWJlciB8IG51bGx9KTogU291cmNlTG9jYXRpb24ge1xuICBjb25zdCBzbWMgPSBuZXcgU291cmNlTWFwQ29uc3VtZXIoc291cmNlTWFwKTtcbiAgLy8gTm90ZTogV2UgZG9uJ3QgcmV0dXJuIHRoZSBvcmlnaW5hbCBvYmplY3QgYXMgaXQgYWxzbyBjb250YWlucyBhIGBuYW1lYCBwcm9wZXJ0eVxuICAvLyB3aGljaCBpcyBhbHdheXMgbnVsbCBhbmQgd2UgZG9uJ3Qgd2FudCB0byBpbmNsdWRlIHRoYXQgaW4gb3VyIGFzc2VydGlvbnMuLi5cbiAgY29uc3Qge2xpbmUsIGNvbHVtbiwgc291cmNlfSA9IHNtYy5vcmlnaW5hbFBvc2l0aW9uRm9yKGdlblBvc2l0aW9uKTtcbiAgcmV0dXJuIHtsaW5lLCBjb2x1bW4sIHNvdXJjZX07XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBleHRyYWN0U291cmNlTWFwKHNvdXJjZTogc3RyaW5nKTogU291cmNlTWFwfG51bGwge1xuICBsZXQgaWR4ID0gc291cmNlLmxhc3RJbmRleE9mKCdcXG4vLyMnKTtcbiAgaWYgKGlkeCA9PSAtMSkgcmV0dXJuIG51bGw7XG4gIGNvbnN0IHNtQ29tbWVudCA9IHNvdXJjZS5zbGljZShpZHgpLnNwbGl0KCdcXG4nLCAyKVsxXS50cmltKCk7XG4gIGNvbnN0IHNtQjY0ID0gc21Db21tZW50LnNwbGl0KCdzb3VyY2VNYXBwaW5nVVJMPWRhdGE6YXBwbGljYXRpb24vanNvbjtiYXNlNjQsJylbMV07XG4gIHJldHVybiBzbUI2NCA/IEpTT04ucGFyc2UoZGVjb2RlQjY0U3RyaW5nKHNtQjY0KSkgOiBudWxsO1xufVxuXG5mdW5jdGlvbiBkZWNvZGVCNjRTdHJpbmcoczogc3RyaW5nKTogc3RyaW5nIHtcbiAgcmV0dXJuIGI2NC50b0J5dGVBcnJheShzKS5yZWR1Y2UoKHM6IHN0cmluZywgYzogbnVtYmVyKSA9PiBzICsgU3RyaW5nLmZyb21DaGFyQ29kZShjKSwgJycpO1xufVxuIl19