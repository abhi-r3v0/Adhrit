/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/interfaces/i18n.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/** @enum {number} */
const I18nMutateOpCode = {
    /**
     * Stores shift amount for bits 17-3 that contain reference index.
     */
    SHIFT_REF: 3,
    /**
     * Stores shift amount for bits 31-17 that contain parent index.
     */
    SHIFT_PARENT: 17,
    /**
     * Mask for OpCode
     */
    MASK_OPCODE: 7,
    /**
     * OpCode to select a node. (next OpCode will contain the operation.)
     */
    Select: 0,
    /**
     * OpCode to append the current node to `PARENT`.
     */
    AppendChild: 1,
    /**
     * OpCode to remove the `REF` node from `PARENT`.
     */
    Remove: 3,
    /**
     * OpCode to set the attribute of a node.
     */
    Attr: 4,
    /**
     * OpCode to simulate elementEnd()
     */
    ElementEnd: 5,
    /**
     * OpCode to read the remove OpCodes for the nested ICU
     */
    RemoveNestedIcu: 6,
};
export { I18nMutateOpCode };
/**
 * Marks that the next string is for element.
 *
 * See `I18nMutateOpCodes` documentation.
 * @type {?}
 */
export const ELEMENT_MARKER = {
    marker: 'element'
};
// WARNING: interface has both a type and a value, skipping emit
/**
 * Marks that the next string is for comment.
 *
 * See `I18nMutateOpCodes` documentation.
 * @type {?}
 */
export const COMMENT_MARKER = {
    marker: 'comment'
};
// WARNING: interface has both a type and a value, skipping emit
/**
 * Array storing OpCode for dynamically creating `i18n` blocks.
 *
 * Example:
 * ```ts
 * <I18nCreateOpCode>[
 *   // For adding text nodes
 *   // ---------------------
 *   // Equivalent to:
 *   //   const node = lView[index++] = document.createTextNode('abc');
 *   //   lView[1].insertBefore(node, lView[2]);
 *   'abc', 1 << SHIFT_PARENT | 2 << SHIFT_REF | InsertBefore,
 *
 *   // Equivalent to:
 *   //   const node = lView[index++] = document.createTextNode('xyz');
 *   //   lView[1].appendChild(node);
 *   'xyz', 1 << SHIFT_PARENT | AppendChild,
 *
 *   // For adding element nodes
 *   // ---------------------
 *   // Equivalent to:
 *   //   const node = lView[index++] = document.createElement('div');
 *   //   lView[1].insertBefore(node, lView[2]);
 *   ELEMENT_MARKER, 'div', 1 << SHIFT_PARENT | 2 << SHIFT_REF | InsertBefore,
 *
 *   // Equivalent to:
 *   //   const node = lView[index++] = document.createElement('div');
 *   //   lView[1].appendChild(node);
 *   ELEMENT_MARKER, 'div', 1 << SHIFT_PARENT | AppendChild,
 *
 *   // For adding comment nodes
 *   // ---------------------
 *   // Equivalent to:
 *   //   const node = lView[index++] = document.createComment('');
 *   //   lView[1].insertBefore(node, lView[2]);
 *   COMMENT_MARKER, '', 1 << SHIFT_PARENT | 2 << SHIFT_REF | InsertBefore,
 *
 *   // Equivalent to:
 *   //   const node = lView[index++] = document.createComment('');
 *   //   lView[1].appendChild(node);
 *   COMMENT_MARKER, '', 1 << SHIFT_PARENT | AppendChild,
 *
 *   // For moving existing nodes to a different location
 *   // --------------------------------------------------
 *   // Equivalent to:
 *   //   const node = lView[1];
 *   //   lView[2].insertBefore(node, lView[3]);
 *   1 << SHIFT_REF | Select, 2 << SHIFT_PARENT | 3 << SHIFT_REF | InsertBefore,
 *
 *   // Equivalent to:
 *   //   const node = lView[1];
 *   //   lView[2].appendChild(node);
 *   1 << SHIFT_REF | Select, 2 << SHIFT_PARENT | AppendChild,
 *
 *   // For removing existing nodes
 *   // --------------------------------------------------
 *   //   const node = lView[1];
 *   //   removeChild(tView.data(1), node, lView);
 *   1 << SHIFT_REF | Remove,
 *
 *   // For writing attributes
 *   // --------------------------------------------------
 *   //   const node = lView[1];
 *   //   node.setAttribute('attr', 'value');
 *   1 << SHIFT_REF | Select, 'attr', 'value'
 *            // NOTE: Select followed by two string (vs select followed by OpCode)
 * ];
 * ```
 * NOTE:
 *   - `index` is initial location where the extra nodes should be stored in the EXPANDO section of
 * `LVIewData`.
 *
 * See: `applyI18nCreateOpCodes`;
 * @record
 */
export function I18nMutateOpCodes() { }
/** @enum {number} */
const I18nUpdateOpCode = {
    /**
     * Stores shift amount for bits 17-2 that contain reference index.
     */
    SHIFT_REF: 2,
    /**
     * Mask for OpCode
     */
    MASK_OPCODE: 3,
    /**
     * OpCode to update a text node.
     */
    Text: 0,
    /**
     * OpCode to update a attribute of a node.
     */
    Attr: 1,
    /**
     * OpCode to switch the current ICU case.
     */
    IcuSwitch: 2,
    /**
     * OpCode to update the current ICU case.
     */
    IcuUpdate: 3,
};
export { I18nUpdateOpCode };
/**
 * Stores DOM operations which need to be applied to update DOM render tree due to changes in
 * expressions.
 *
 * The basic idea is that `i18nExp` OpCodes capture expression changes and update a change
 * mask bit. (Bit 1 for expression 1, bit 2 for expression 2 etc..., bit 32 for expression 32 and
 * higher.) The OpCodes then compare its own change mask against the expression change mask to
 * determine if the OpCodes should execute.
 *
 * These OpCodes can be used by both the i18n block as well as ICU sub-block.
 *
 * ## Example
 *
 * Assume
 * ```ts
 *   if (rf & RenderFlags.Update) {
 *    i18nExp(ctx.exp1); // If changed set mask bit 1
 *    i18nExp(ctx.exp2); // If changed set mask bit 2
 *    i18nExp(ctx.exp3); // If changed set mask bit 3
 *    i18nExp(ctx.exp4); // If changed set mask bit 4
 *    i18nApply(0);            // Apply all changes by executing the OpCodes.
 *  }
 * ```
 * We can assume that each call to `i18nExp` sets an internal `changeMask` bit depending on the
 * index of `i18nExp`.
 *
 * ### OpCodes
 * ```ts
 * <I18nUpdateOpCodes>[
 *   // The following OpCodes represent: `<div i18n-title="pre{{exp1}}in{{exp2}}post">`
 *   // If `changeMask & 0b11`
 *   //        has changed then execute update OpCodes.
 *   //        has NOT changed then skip `7` values and start processing next OpCodes.
 *   0b11, 7,
 *   // Concatenate `newValue = 'pre'+lView[bindIndex-4]+'in'+lView[bindIndex-3]+'post';`.
 *   'pre', -4, 'in', -3, 'post',
 *   // Update attribute: `elementAttribute(1, 'title', sanitizerFn(newValue));`
 *   1 << SHIFT_REF | Attr, 'title', sanitizerFn,
 *
 *   // The following OpCodes represent: `<div i18n>Hello {{exp3}}!">`
 *   // If `changeMask & 0b100`
 *   //        has changed then execute update OpCodes.
 *   //        has NOT changed then skip `4` values and start processing next OpCodes.
 *   0b100, 4,
 *   // Concatenate `newValue = 'Hello ' + lView[bindIndex -2] + '!';`.
 *   'Hello ', -2, '!',
 *   // Update text: `lView[1].textContent = newValue;`
 *   1 << SHIFT_REF | Text,
 *
 *   // The following OpCodes represent: `<div i18n>{exp4, plural, ... }">`
 *   // If `changeMask & 0b1000`
 *   //        has changed then execute update OpCodes.
 *   //        has NOT changed then skip `4` values and start processing next OpCodes.
 *   0b1000, 4,
 *   // Concatenate `newValue = lView[bindIndex -1];`.
 *   -1,
 *   // Switch ICU: `icuSwitchCase(lView[1], 0, newValue);`
 *   0 << SHIFT_ICU | 1 << SHIFT_REF | IcuSwitch,
 *
 *   // Note `changeMask & -1` is always true, so the IcuUpdate will always execute.
 *   -1, 1,
 *   // Update ICU: `icuUpdateCase(lView[1], 0);`
 *   0 << SHIFT_ICU | 1 << SHIFT_REF | IcuUpdate,
 *
 * ];
 * ```
 *
 * @record
 */
export function I18nUpdateOpCodes() { }
/**
 * Store information for the i18n translation block.
 * @record
 */
export function TI18n() { }
if (false) {
    /**
     * Number of slots to allocate in expando.
     *
     * This is the max number of DOM elements which will be created by this i18n + ICU blocks. When
     * the DOM elements are being created they are stored in the EXPANDO, so that update OpCodes can
     * write into them.
     * @type {?}
     */
    TI18n.prototype.vars;
    /**
     * A set of OpCodes which will create the Text Nodes and ICU anchors for the translation blocks.
     *
     * NOTE: The ICU anchors are filled in with ICU Update OpCode.
     * @type {?}
     */
    TI18n.prototype.create;
    /**
     * A set of OpCodes which will be executed on each change detection to determine if any changes to
     * DOM are required.
     * @type {?}
     */
    TI18n.prototype.update;
    /**
     * A list of ICUs in a translation block (or `null` if block has no ICUs).
     *
     * Example:
     * Given: `<div i18n>You have {count, plural, ...} and {state, switch, ...}</div>`
     * There would be 2 ICUs in this array.
     *   1. `{count, plural, ...}`
     *   2. `{state, switch, ...}`
     * @type {?}
     */
    TI18n.prototype.icus;
}
/** @enum {number} */
const IcuType = {
    select: 0,
    plural: 1,
};
export { IcuType };
/**
 * @record
 */
export function TIcu() { }
if (false) {
    /**
     * Defines the ICU type of `select` or `plural`
     * @type {?}
     */
    TIcu.prototype.type;
    /**
     * Number of slots to allocate in expando for each case.
     *
     * This is the max number of DOM elements which will be created by this i18n + ICU blocks. When
     * the DOM elements are being created they are stored in the EXPANDO, so that update OpCodes can
     * write into them.
     * @type {?}
     */
    TIcu.prototype.vars;
    /**
     * An optional array of child/sub ICUs.
     *
     * In case of nested ICUs such as:
     * ```
     * {�0�, plural,
     *   =0 {zero}
     *   other {�0� {�1�, select,
     *                     cat {cats}
     *                     dog {dogs}
     *                     other {animals}
     *                   }!
     *   }
     * }
     * ```
     * When the parent ICU is changing it must clean up child ICUs as well. For this reason it needs
     * to know which child ICUs to run clean up for as well.
     *
     * In the above example this would be:
     * ```ts
     * [
     *   [],   // `=0` has no sub ICUs
     *   [1],  // `other` has one subICU at `1`st index.
     * ]
     * ```
     *
     * The reason why it is Array of Arrays is because first array represents the case, and second
     * represents the child ICUs to clean up. There may be more than one child ICUs per case.
     * @type {?}
     */
    TIcu.prototype.childIcus;
    /**
     * A list of case values which the current ICU will try to match.
     *
     * The last value is `other`
     * @type {?}
     */
    TIcu.prototype.cases;
    /**
     * A set of OpCodes to apply in order to build up the DOM render tree for the ICU
     * @type {?}
     */
    TIcu.prototype.create;
    /**
     * A set of OpCodes to apply in order to destroy the DOM render tree for the ICU.
     * @type {?}
     */
    TIcu.prototype.remove;
    /**
     * A set of OpCodes to apply in order to update the DOM render tree for the ICU bindings.
     * @type {?}
     */
    TIcu.prototype.update;
}
// Note: This hack is necessary so we don't erroneously get a circular dependency
// failure based on types.
/** @type {?} */
export const unusedValueExportToPlacateAjd = 1;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaTE4bi5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3JlbmRlcjMvaW50ZXJmYWNlcy9pMThuLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7QUFvQkEsTUFBa0IsZ0JBQWdCO0lBQ2hDOztPQUVHO0lBQ0gsU0FBUyxHQUFJO0lBQ2I7O09BRUc7SUFDSCxZQUFZLElBQUs7SUFDakI7O09BRUc7SUFDSCxXQUFXLEdBQVE7SUFFbkI7O09BRUc7SUFDSCxNQUFNLEdBQVE7SUFDZDs7T0FFRztJQUNILFdBQVcsR0FBUTtJQUNuQjs7T0FFRztJQUNILE1BQU0sR0FBUTtJQUNkOztPQUVHO0lBQ0gsSUFBSSxHQUFRO0lBQ1o7O09BRUc7SUFDSCxVQUFVLEdBQVE7SUFDbEI7O09BRUc7SUFDSCxlQUFlLEdBQVE7RUFDeEI7Ozs7Ozs7O0FBT0QsTUFBTSxPQUFPLGNBQWMsR0FBbUI7SUFDNUMsTUFBTSxFQUFFLFNBQVM7Q0FDbEI7Ozs7Ozs7O0FBUUQsTUFBTSxPQUFPLGNBQWMsR0FBbUI7SUFDNUMsTUFBTSxFQUFFLFNBQVM7Q0FDbEI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBOEVELHVDQUNDOztBQUVELE1BQWtCLGdCQUFnQjtJQUNoQzs7T0FFRztJQUNILFNBQVMsR0FBSTtJQUNiOztPQUVHO0lBQ0gsV0FBVyxHQUFPO0lBRWxCOztPQUVHO0lBQ0gsSUFBSSxHQUFPO0lBQ1g7O09BRUc7SUFDSCxJQUFJLEdBQU87SUFDWDs7T0FFRztJQUNILFNBQVMsR0FBTztJQUNoQjs7T0FFRztJQUNILFNBQVMsR0FBTztFQUNqQjs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFzRUQsdUNBQW1GOzs7OztBQUtuRiwyQkFpQ0M7Ozs7Ozs7Ozs7SUF6QkMscUJBQWE7Ozs7Ozs7SUFPYix1QkFBMEI7Ozs7OztJQU0xQix1QkFBMEI7Ozs7Ozs7Ozs7O0lBVzFCLHFCQUFrQjs7O0FBTXBCLE1BQWtCLE9BQU87SUFDdkIsTUFBTSxHQUFJO0lBQ1YsTUFBTSxHQUFJO0VBQ1g7Ozs7O0FBRUQsMEJBbUVDOzs7Ozs7SUEvREMsb0JBQWM7Ozs7Ozs7OztJQVNkLG9CQUFlOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0lBK0JmLHlCQUFzQjs7Ozs7OztJQU90QixxQkFBYTs7Ozs7SUFLYixzQkFBNEI7Ozs7O0lBSzVCLHNCQUE0Qjs7Ozs7SUFLNUIsc0JBQTRCOzs7OztBQUs5QixNQUFNLE9BQU8sNkJBQTZCLEdBQUcsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuLyoqXG4gKiBgSTE4bk11dGF0ZU9wQ29kZWAgZGVmaW5lcyBPcENvZGVzIGZvciBgSTE4bk11dGF0ZU9wQ29kZXNgIGFycmF5LlxuICpcbiAqIE9wQ29kZXMgY29udGFpbiB0aHJlZSBwYXJ0czpcbiAqICAxKSBQYXJlbnQgbm9kZSBpbmRleCBvZmZzZXQuXG4gKiAgMikgUmVmZXJlbmNlIG5vZGUgaW5kZXggb2Zmc2V0LlxuICogIDMpIFRoZSBPcENvZGUgdG8gZXhlY3V0ZS5cbiAqXG4gKiBTZWU6IGBJMThuQ3JlYXRlT3BDb2Rlc2AgZm9yIGV4YW1wbGUgb2YgdXNhZ2UuXG4gKi9cbmltcG9ydCB7U2FuaXRpemVyRm59IGZyb20gJy4vc2FuaXRpemF0aW9uJztcblxuZXhwb3J0IGNvbnN0IGVudW0gSTE4bk11dGF0ZU9wQ29kZSB7XG4gIC8qKlxuICAgKiBTdG9yZXMgc2hpZnQgYW1vdW50IGZvciBiaXRzIDE3LTMgdGhhdCBjb250YWluIHJlZmVyZW5jZSBpbmRleC5cbiAgICovXG4gIFNISUZUX1JFRiA9IDMsXG4gIC8qKlxuICAgKiBTdG9yZXMgc2hpZnQgYW1vdW50IGZvciBiaXRzIDMxLTE3IHRoYXQgY29udGFpbiBwYXJlbnQgaW5kZXguXG4gICAqL1xuICBTSElGVF9QQVJFTlQgPSAxNyxcbiAgLyoqXG4gICAqIE1hc2sgZm9yIE9wQ29kZVxuICAgKi9cbiAgTUFTS19PUENPREUgPSAwYjExMSxcblxuICAvKipcbiAgICogT3BDb2RlIHRvIHNlbGVjdCBhIG5vZGUuIChuZXh0IE9wQ29kZSB3aWxsIGNvbnRhaW4gdGhlIG9wZXJhdGlvbi4pXG4gICAqL1xuICBTZWxlY3QgPSAwYjAwMCxcbiAgLyoqXG4gICAqIE9wQ29kZSB0byBhcHBlbmQgdGhlIGN1cnJlbnQgbm9kZSB0byBgUEFSRU5UYC5cbiAgICovXG4gIEFwcGVuZENoaWxkID0gMGIwMDEsXG4gIC8qKlxuICAgKiBPcENvZGUgdG8gcmVtb3ZlIHRoZSBgUkVGYCBub2RlIGZyb20gYFBBUkVOVGAuXG4gICAqL1xuICBSZW1vdmUgPSAwYjAxMSxcbiAgLyoqXG4gICAqIE9wQ29kZSB0byBzZXQgdGhlIGF0dHJpYnV0ZSBvZiBhIG5vZGUuXG4gICAqL1xuICBBdHRyID0gMGIxMDAsXG4gIC8qKlxuICAgKiBPcENvZGUgdG8gc2ltdWxhdGUgZWxlbWVudEVuZCgpXG4gICAqL1xuICBFbGVtZW50RW5kID0gMGIxMDEsXG4gIC8qKlxuICAgKiBPcENvZGUgdG8gcmVhZCB0aGUgcmVtb3ZlIE9wQ29kZXMgZm9yIHRoZSBuZXN0ZWQgSUNVXG4gICAqL1xuICBSZW1vdmVOZXN0ZWRJY3UgPSAwYjExMCxcbn1cblxuLyoqXG4gKiBNYXJrcyB0aGF0IHRoZSBuZXh0IHN0cmluZyBpcyBmb3IgZWxlbWVudC5cbiAqXG4gKiBTZWUgYEkxOG5NdXRhdGVPcENvZGVzYCBkb2N1bWVudGF0aW9uLlxuICovXG5leHBvcnQgY29uc3QgRUxFTUVOVF9NQVJLRVI6IEVMRU1FTlRfTUFSS0VSID0ge1xuICBtYXJrZXI6ICdlbGVtZW50J1xufTtcbmV4cG9ydCBpbnRlcmZhY2UgRUxFTUVOVF9NQVJLRVIgeyBtYXJrZXI6ICdlbGVtZW50JzsgfVxuXG4vKipcbiAqIE1hcmtzIHRoYXQgdGhlIG5leHQgc3RyaW5nIGlzIGZvciBjb21tZW50LlxuICpcbiAqIFNlZSBgSTE4bk11dGF0ZU9wQ29kZXNgIGRvY3VtZW50YXRpb24uXG4gKi9cbmV4cG9ydCBjb25zdCBDT01NRU5UX01BUktFUjogQ09NTUVOVF9NQVJLRVIgPSB7XG4gIG1hcmtlcjogJ2NvbW1lbnQnXG59O1xuXG5leHBvcnQgaW50ZXJmYWNlIENPTU1FTlRfTUFSS0VSIHsgbWFya2VyOiAnY29tbWVudCc7IH1cblxuLyoqXG4gKiBBcnJheSBzdG9yaW5nIE9wQ29kZSBmb3IgZHluYW1pY2FsbHkgY3JlYXRpbmcgYGkxOG5gIGJsb2Nrcy5cbiAqXG4gKiBFeGFtcGxlOlxuICogYGBgdHNcbiAqIDxJMThuQ3JlYXRlT3BDb2RlPltcbiAqICAgLy8gRm9yIGFkZGluZyB0ZXh0IG5vZGVzXG4gKiAgIC8vIC0tLS0tLS0tLS0tLS0tLS0tLS0tLVxuICogICAvLyBFcXVpdmFsZW50IHRvOlxuICogICAvLyAgIGNvbnN0IG5vZGUgPSBsVmlld1tpbmRleCsrXSA9IGRvY3VtZW50LmNyZWF0ZVRleHROb2RlKCdhYmMnKTtcbiAqICAgLy8gICBsVmlld1sxXS5pbnNlcnRCZWZvcmUobm9kZSwgbFZpZXdbMl0pO1xuICogICAnYWJjJywgMSA8PCBTSElGVF9QQVJFTlQgfCAyIDw8IFNISUZUX1JFRiB8IEluc2VydEJlZm9yZSxcbiAqXG4gKiAgIC8vIEVxdWl2YWxlbnQgdG86XG4gKiAgIC8vICAgY29uc3Qgbm9kZSA9IGxWaWV3W2luZGV4KytdID0gZG9jdW1lbnQuY3JlYXRlVGV4dE5vZGUoJ3h5eicpO1xuICogICAvLyAgIGxWaWV3WzFdLmFwcGVuZENoaWxkKG5vZGUpO1xuICogICAneHl6JywgMSA8PCBTSElGVF9QQVJFTlQgfCBBcHBlbmRDaGlsZCxcbiAqXG4gKiAgIC8vIEZvciBhZGRpbmcgZWxlbWVudCBub2Rlc1xuICogICAvLyAtLS0tLS0tLS0tLS0tLS0tLS0tLS1cbiAqICAgLy8gRXF1aXZhbGVudCB0bzpcbiAqICAgLy8gICBjb25zdCBub2RlID0gbFZpZXdbaW5kZXgrK10gPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50KCdkaXYnKTtcbiAqICAgLy8gICBsVmlld1sxXS5pbnNlcnRCZWZvcmUobm9kZSwgbFZpZXdbMl0pO1xuICogICBFTEVNRU5UX01BUktFUiwgJ2RpdicsIDEgPDwgU0hJRlRfUEFSRU5UIHwgMiA8PCBTSElGVF9SRUYgfCBJbnNlcnRCZWZvcmUsXG4gKlxuICogICAvLyBFcXVpdmFsZW50IHRvOlxuICogICAvLyAgIGNvbnN0IG5vZGUgPSBsVmlld1tpbmRleCsrXSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ2RpdicpO1xuICogICAvLyAgIGxWaWV3WzFdLmFwcGVuZENoaWxkKG5vZGUpO1xuICogICBFTEVNRU5UX01BUktFUiwgJ2RpdicsIDEgPDwgU0hJRlRfUEFSRU5UIHwgQXBwZW5kQ2hpbGQsXG4gKlxuICogICAvLyBGb3IgYWRkaW5nIGNvbW1lbnQgbm9kZXNcbiAqICAgLy8gLS0tLS0tLS0tLS0tLS0tLS0tLS0tXG4gKiAgIC8vIEVxdWl2YWxlbnQgdG86XG4gKiAgIC8vICAgY29uc3Qgbm9kZSA9IGxWaWV3W2luZGV4KytdID0gZG9jdW1lbnQuY3JlYXRlQ29tbWVudCgnJyk7XG4gKiAgIC8vICAgbFZpZXdbMV0uaW5zZXJ0QmVmb3JlKG5vZGUsIGxWaWV3WzJdKTtcbiAqICAgQ09NTUVOVF9NQVJLRVIsICcnLCAxIDw8IFNISUZUX1BBUkVOVCB8IDIgPDwgU0hJRlRfUkVGIHwgSW5zZXJ0QmVmb3JlLFxuICpcbiAqICAgLy8gRXF1aXZhbGVudCB0bzpcbiAqICAgLy8gICBjb25zdCBub2RlID0gbFZpZXdbaW5kZXgrK10gPSBkb2N1bWVudC5jcmVhdGVDb21tZW50KCcnKTtcbiAqICAgLy8gICBsVmlld1sxXS5hcHBlbmRDaGlsZChub2RlKTtcbiAqICAgQ09NTUVOVF9NQVJLRVIsICcnLCAxIDw8IFNISUZUX1BBUkVOVCB8IEFwcGVuZENoaWxkLFxuICpcbiAqICAgLy8gRm9yIG1vdmluZyBleGlzdGluZyBub2RlcyB0byBhIGRpZmZlcmVudCBsb2NhdGlvblxuICogICAvLyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLVxuICogICAvLyBFcXVpdmFsZW50IHRvOlxuICogICAvLyAgIGNvbnN0IG5vZGUgPSBsVmlld1sxXTtcbiAqICAgLy8gICBsVmlld1syXS5pbnNlcnRCZWZvcmUobm9kZSwgbFZpZXdbM10pO1xuICogICAxIDw8IFNISUZUX1JFRiB8IFNlbGVjdCwgMiA8PCBTSElGVF9QQVJFTlQgfCAzIDw8IFNISUZUX1JFRiB8IEluc2VydEJlZm9yZSxcbiAqXG4gKiAgIC8vIEVxdWl2YWxlbnQgdG86XG4gKiAgIC8vICAgY29uc3Qgbm9kZSA9IGxWaWV3WzFdO1xuICogICAvLyAgIGxWaWV3WzJdLmFwcGVuZENoaWxkKG5vZGUpO1xuICogICAxIDw8IFNISUZUX1JFRiB8IFNlbGVjdCwgMiA8PCBTSElGVF9QQVJFTlQgfCBBcHBlbmRDaGlsZCxcbiAqXG4gKiAgIC8vIEZvciByZW1vdmluZyBleGlzdGluZyBub2Rlc1xuICogICAvLyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLVxuICogICAvLyAgIGNvbnN0IG5vZGUgPSBsVmlld1sxXTtcbiAqICAgLy8gICByZW1vdmVDaGlsZCh0Vmlldy5kYXRhKDEpLCBub2RlLCBsVmlldyk7XG4gKiAgIDEgPDwgU0hJRlRfUkVGIHwgUmVtb3ZlLFxuICpcbiAqICAgLy8gRm9yIHdyaXRpbmcgYXR0cmlidXRlc1xuICogICAvLyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLVxuICogICAvLyAgIGNvbnN0IG5vZGUgPSBsVmlld1sxXTtcbiAqICAgLy8gICBub2RlLnNldEF0dHJpYnV0ZSgnYXR0cicsICd2YWx1ZScpO1xuICogICAxIDw8IFNISUZUX1JFRiB8IFNlbGVjdCwgJ2F0dHInLCAndmFsdWUnXG4gKiAgICAgICAgICAgIC8vIE5PVEU6IFNlbGVjdCBmb2xsb3dlZCBieSB0d28gc3RyaW5nICh2cyBzZWxlY3QgZm9sbG93ZWQgYnkgT3BDb2RlKVxuICogXTtcbiAqIGBgYFxuICogTk9URTpcbiAqICAgLSBgaW5kZXhgIGlzIGluaXRpYWwgbG9jYXRpb24gd2hlcmUgdGhlIGV4dHJhIG5vZGVzIHNob3VsZCBiZSBzdG9yZWQgaW4gdGhlIEVYUEFORE8gc2VjdGlvbiBvZlxuICogYExWSWV3RGF0YWAuXG4gKlxuICogU2VlOiBgYXBwbHlJMThuQ3JlYXRlT3BDb2Rlc2A7XG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgSTE4bk11dGF0ZU9wQ29kZXMgZXh0ZW5kcyBBcnJheTxudW1iZXJ8c3RyaW5nfEVMRU1FTlRfTUFSS0VSfENPTU1FTlRfTUFSS0VSfG51bGw+IHtcbn1cblxuZXhwb3J0IGNvbnN0IGVudW0gSTE4blVwZGF0ZU9wQ29kZSB7XG4gIC8qKlxuICAgKiBTdG9yZXMgc2hpZnQgYW1vdW50IGZvciBiaXRzIDE3LTIgdGhhdCBjb250YWluIHJlZmVyZW5jZSBpbmRleC5cbiAgICovXG4gIFNISUZUX1JFRiA9IDIsXG4gIC8qKlxuICAgKiBNYXNrIGZvciBPcENvZGVcbiAgICovXG4gIE1BU0tfT1BDT0RFID0gMGIxMSxcblxuICAvKipcbiAgICogT3BDb2RlIHRvIHVwZGF0ZSBhIHRleHQgbm9kZS5cbiAgICovXG4gIFRleHQgPSAwYjAwLFxuICAvKipcbiAgICogT3BDb2RlIHRvIHVwZGF0ZSBhIGF0dHJpYnV0ZSBvZiBhIG5vZGUuXG4gICAqL1xuICBBdHRyID0gMGIwMSxcbiAgLyoqXG4gICAqIE9wQ29kZSB0byBzd2l0Y2ggdGhlIGN1cnJlbnQgSUNVIGNhc2UuXG4gICAqL1xuICBJY3VTd2l0Y2ggPSAwYjEwLFxuICAvKipcbiAgICogT3BDb2RlIHRvIHVwZGF0ZSB0aGUgY3VycmVudCBJQ1UgY2FzZS5cbiAgICovXG4gIEljdVVwZGF0ZSA9IDBiMTEsXG59XG5cbi8qKlxuICogU3RvcmVzIERPTSBvcGVyYXRpb25zIHdoaWNoIG5lZWQgdG8gYmUgYXBwbGllZCB0byB1cGRhdGUgRE9NIHJlbmRlciB0cmVlIGR1ZSB0byBjaGFuZ2VzIGluXG4gKiBleHByZXNzaW9ucy5cbiAqXG4gKiBUaGUgYmFzaWMgaWRlYSBpcyB0aGF0IGBpMThuRXhwYCBPcENvZGVzIGNhcHR1cmUgZXhwcmVzc2lvbiBjaGFuZ2VzIGFuZCB1cGRhdGUgYSBjaGFuZ2VcbiAqIG1hc2sgYml0LiAoQml0IDEgZm9yIGV4cHJlc3Npb24gMSwgYml0IDIgZm9yIGV4cHJlc3Npb24gMiBldGMuLi4sIGJpdCAzMiBmb3IgZXhwcmVzc2lvbiAzMiBhbmRcbiAqIGhpZ2hlci4pIFRoZSBPcENvZGVzIHRoZW4gY29tcGFyZSBpdHMgb3duIGNoYW5nZSBtYXNrIGFnYWluc3QgdGhlIGV4cHJlc3Npb24gY2hhbmdlIG1hc2sgdG9cbiAqIGRldGVybWluZSBpZiB0aGUgT3BDb2RlcyBzaG91bGQgZXhlY3V0ZS5cbiAqXG4gKiBUaGVzZSBPcENvZGVzIGNhbiBiZSB1c2VkIGJ5IGJvdGggdGhlIGkxOG4gYmxvY2sgYXMgd2VsbCBhcyBJQ1Ugc3ViLWJsb2NrLlxuICpcbiAqICMjIEV4YW1wbGVcbiAqXG4gKiBBc3N1bWVcbiAqIGBgYHRzXG4gKiAgIGlmIChyZiAmIFJlbmRlckZsYWdzLlVwZGF0ZSkge1xuICogICAgaTE4bkV4cChjdHguZXhwMSk7IC8vIElmIGNoYW5nZWQgc2V0IG1hc2sgYml0IDFcbiAqICAgIGkxOG5FeHAoY3R4LmV4cDIpOyAvLyBJZiBjaGFuZ2VkIHNldCBtYXNrIGJpdCAyXG4gKiAgICBpMThuRXhwKGN0eC5leHAzKTsgLy8gSWYgY2hhbmdlZCBzZXQgbWFzayBiaXQgM1xuICogICAgaTE4bkV4cChjdHguZXhwNCk7IC8vIElmIGNoYW5nZWQgc2V0IG1hc2sgYml0IDRcbiAqICAgIGkxOG5BcHBseSgwKTsgICAgICAgICAgICAvLyBBcHBseSBhbGwgY2hhbmdlcyBieSBleGVjdXRpbmcgdGhlIE9wQ29kZXMuXG4gKiAgfVxuICogYGBgXG4gKiBXZSBjYW4gYXNzdW1lIHRoYXQgZWFjaCBjYWxsIHRvIGBpMThuRXhwYCBzZXRzIGFuIGludGVybmFsIGBjaGFuZ2VNYXNrYCBiaXQgZGVwZW5kaW5nIG9uIHRoZVxuICogaW5kZXggb2YgYGkxOG5FeHBgLlxuICpcbiAqICMjIyBPcENvZGVzXG4gKiBgYGB0c1xuICogPEkxOG5VcGRhdGVPcENvZGVzPltcbiAqICAgLy8gVGhlIGZvbGxvd2luZyBPcENvZGVzIHJlcHJlc2VudDogYDxkaXYgaTE4bi10aXRsZT1cInByZXt7ZXhwMX19aW57e2V4cDJ9fXBvc3RcIj5gXG4gKiAgIC8vIElmIGBjaGFuZ2VNYXNrICYgMGIxMWBcbiAqICAgLy8gICAgICAgIGhhcyBjaGFuZ2VkIHRoZW4gZXhlY3V0ZSB1cGRhdGUgT3BDb2Rlcy5cbiAqICAgLy8gICAgICAgIGhhcyBOT1QgY2hhbmdlZCB0aGVuIHNraXAgYDdgIHZhbHVlcyBhbmQgc3RhcnQgcHJvY2Vzc2luZyBuZXh0IE9wQ29kZXMuXG4gKiAgIDBiMTEsIDcsXG4gKiAgIC8vIENvbmNhdGVuYXRlIGBuZXdWYWx1ZSA9ICdwcmUnK2xWaWV3W2JpbmRJbmRleC00XSsnaW4nK2xWaWV3W2JpbmRJbmRleC0zXSsncG9zdCc7YC5cbiAqICAgJ3ByZScsIC00LCAnaW4nLCAtMywgJ3Bvc3QnLFxuICogICAvLyBVcGRhdGUgYXR0cmlidXRlOiBgZWxlbWVudEF0dHJpYnV0ZSgxLCAndGl0bGUnLCBzYW5pdGl6ZXJGbihuZXdWYWx1ZSkpO2BcbiAqICAgMSA8PCBTSElGVF9SRUYgfCBBdHRyLCAndGl0bGUnLCBzYW5pdGl6ZXJGbixcbiAqXG4gKiAgIC8vIFRoZSBmb2xsb3dpbmcgT3BDb2RlcyByZXByZXNlbnQ6IGA8ZGl2IGkxOG4+SGVsbG8ge3tleHAzfX0hXCI+YFxuICogICAvLyBJZiBgY2hhbmdlTWFzayAmIDBiMTAwYFxuICogICAvLyAgICAgICAgaGFzIGNoYW5nZWQgdGhlbiBleGVjdXRlIHVwZGF0ZSBPcENvZGVzLlxuICogICAvLyAgICAgICAgaGFzIE5PVCBjaGFuZ2VkIHRoZW4gc2tpcCBgNGAgdmFsdWVzIGFuZCBzdGFydCBwcm9jZXNzaW5nIG5leHQgT3BDb2Rlcy5cbiAqICAgMGIxMDAsIDQsXG4gKiAgIC8vIENvbmNhdGVuYXRlIGBuZXdWYWx1ZSA9ICdIZWxsbyAnICsgbFZpZXdbYmluZEluZGV4IC0yXSArICchJztgLlxuICogICAnSGVsbG8gJywgLTIsICchJyxcbiAqICAgLy8gVXBkYXRlIHRleHQ6IGBsVmlld1sxXS50ZXh0Q29udGVudCA9IG5ld1ZhbHVlO2BcbiAqICAgMSA8PCBTSElGVF9SRUYgfCBUZXh0LFxuICpcbiAqICAgLy8gVGhlIGZvbGxvd2luZyBPcENvZGVzIHJlcHJlc2VudDogYDxkaXYgaTE4bj57ZXhwNCwgcGx1cmFsLCAuLi4gfVwiPmBcbiAqICAgLy8gSWYgYGNoYW5nZU1hc2sgJiAwYjEwMDBgXG4gKiAgIC8vICAgICAgICBoYXMgY2hhbmdlZCB0aGVuIGV4ZWN1dGUgdXBkYXRlIE9wQ29kZXMuXG4gKiAgIC8vICAgICAgICBoYXMgTk9UIGNoYW5nZWQgdGhlbiBza2lwIGA0YCB2YWx1ZXMgYW5kIHN0YXJ0IHByb2Nlc3NpbmcgbmV4dCBPcENvZGVzLlxuICogICAwYjEwMDAsIDQsXG4gKiAgIC8vIENvbmNhdGVuYXRlIGBuZXdWYWx1ZSA9IGxWaWV3W2JpbmRJbmRleCAtMV07YC5cbiAqICAgLTEsXG4gKiAgIC8vIFN3aXRjaCBJQ1U6IGBpY3VTd2l0Y2hDYXNlKGxWaWV3WzFdLCAwLCBuZXdWYWx1ZSk7YFxuICogICAwIDw8IFNISUZUX0lDVSB8IDEgPDwgU0hJRlRfUkVGIHwgSWN1U3dpdGNoLFxuICpcbiAqICAgLy8gTm90ZSBgY2hhbmdlTWFzayAmIC0xYCBpcyBhbHdheXMgdHJ1ZSwgc28gdGhlIEljdVVwZGF0ZSB3aWxsIGFsd2F5cyBleGVjdXRlLlxuICogICAtMSwgMSxcbiAqICAgLy8gVXBkYXRlIElDVTogYGljdVVwZGF0ZUNhc2UobFZpZXdbMV0sIDApO2BcbiAqICAgMCA8PCBTSElGVF9JQ1UgfCAxIDw8IFNISUZUX1JFRiB8IEljdVVwZGF0ZSxcbiAqXG4gKiBdO1xuICogYGBgXG4gKlxuICovXG5leHBvcnQgaW50ZXJmYWNlIEkxOG5VcGRhdGVPcENvZGVzIGV4dGVuZHMgQXJyYXk8c3RyaW5nfG51bWJlcnxTYW5pdGl6ZXJGbnxudWxsPiB7fVxuXG4vKipcbiAqIFN0b3JlIGluZm9ybWF0aW9uIGZvciB0aGUgaTE4biB0cmFuc2xhdGlvbiBibG9jay5cbiAqL1xuZXhwb3J0IGludGVyZmFjZSBUSTE4biB7XG4gIC8qKlxuICAgKiBOdW1iZXIgb2Ygc2xvdHMgdG8gYWxsb2NhdGUgaW4gZXhwYW5kby5cbiAgICpcbiAgICogVGhpcyBpcyB0aGUgbWF4IG51bWJlciBvZiBET00gZWxlbWVudHMgd2hpY2ggd2lsbCBiZSBjcmVhdGVkIGJ5IHRoaXMgaTE4biArIElDVSBibG9ja3MuIFdoZW5cbiAgICogdGhlIERPTSBlbGVtZW50cyBhcmUgYmVpbmcgY3JlYXRlZCB0aGV5IGFyZSBzdG9yZWQgaW4gdGhlIEVYUEFORE8sIHNvIHRoYXQgdXBkYXRlIE9wQ29kZXMgY2FuXG4gICAqIHdyaXRlIGludG8gdGhlbS5cbiAgICovXG4gIHZhcnM6IG51bWJlcjtcblxuICAvKipcbiAgICogQSBzZXQgb2YgT3BDb2RlcyB3aGljaCB3aWxsIGNyZWF0ZSB0aGUgVGV4dCBOb2RlcyBhbmQgSUNVIGFuY2hvcnMgZm9yIHRoZSB0cmFuc2xhdGlvbiBibG9ja3MuXG4gICAqXG4gICAqIE5PVEU6IFRoZSBJQ1UgYW5jaG9ycyBhcmUgZmlsbGVkIGluIHdpdGggSUNVIFVwZGF0ZSBPcENvZGUuXG4gICAqL1xuICBjcmVhdGU6IEkxOG5NdXRhdGVPcENvZGVzO1xuXG4gIC8qKlxuICAgKiBBIHNldCBvZiBPcENvZGVzIHdoaWNoIHdpbGwgYmUgZXhlY3V0ZWQgb24gZWFjaCBjaGFuZ2UgZGV0ZWN0aW9uIHRvIGRldGVybWluZSBpZiBhbnkgY2hhbmdlcyB0b1xuICAgKiBET00gYXJlIHJlcXVpcmVkLlxuICAgKi9cbiAgdXBkYXRlOiBJMThuVXBkYXRlT3BDb2RlcztcblxuICAvKipcbiAgICogQSBsaXN0IG9mIElDVXMgaW4gYSB0cmFuc2xhdGlvbiBibG9jayAob3IgYG51bGxgIGlmIGJsb2NrIGhhcyBubyBJQ1VzKS5cbiAgICpcbiAgICogRXhhbXBsZTpcbiAgICogR2l2ZW46IGA8ZGl2IGkxOG4+WW91IGhhdmUge2NvdW50LCBwbHVyYWwsIC4uLn0gYW5kIHtzdGF0ZSwgc3dpdGNoLCAuLi59PC9kaXY+YFxuICAgKiBUaGVyZSB3b3VsZCBiZSAyIElDVXMgaW4gdGhpcyBhcnJheS5cbiAgICogICAxLiBge2NvdW50LCBwbHVyYWwsIC4uLn1gXG4gICAqICAgMi4gYHtzdGF0ZSwgc3dpdGNoLCAuLi59YFxuICAgKi9cbiAgaWN1czogVEljdVtdfG51bGw7XG59XG5cbi8qKlxuICogRGVmaW5lcyB0aGUgSUNVIHR5cGUgb2YgYHNlbGVjdGAgb3IgYHBsdXJhbGBcbiAqL1xuZXhwb3J0IGNvbnN0IGVudW0gSWN1VHlwZSB7XG4gIHNlbGVjdCA9IDAsXG4gIHBsdXJhbCA9IDEsXG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgVEljdSB7XG4gIC8qKlxuICAgKiBEZWZpbmVzIHRoZSBJQ1UgdHlwZSBvZiBgc2VsZWN0YCBvciBgcGx1cmFsYFxuICAgKi9cbiAgdHlwZTogSWN1VHlwZTtcblxuICAvKipcbiAgICogTnVtYmVyIG9mIHNsb3RzIHRvIGFsbG9jYXRlIGluIGV4cGFuZG8gZm9yIGVhY2ggY2FzZS5cbiAgICpcbiAgICogVGhpcyBpcyB0aGUgbWF4IG51bWJlciBvZiBET00gZWxlbWVudHMgd2hpY2ggd2lsbCBiZSBjcmVhdGVkIGJ5IHRoaXMgaTE4biArIElDVSBibG9ja3MuIFdoZW5cbiAgICogdGhlIERPTSBlbGVtZW50cyBhcmUgYmVpbmcgY3JlYXRlZCB0aGV5IGFyZSBzdG9yZWQgaW4gdGhlIEVYUEFORE8sIHNvIHRoYXQgdXBkYXRlIE9wQ29kZXMgY2FuXG4gICAqIHdyaXRlIGludG8gdGhlbS5cbiAgICovXG4gIHZhcnM6IG51bWJlcltdO1xuXG4gIC8qKlxuICAgKiBBbiBvcHRpb25hbCBhcnJheSBvZiBjaGlsZC9zdWIgSUNVcy5cbiAgICpcbiAgICogSW4gY2FzZSBvZiBuZXN0ZWQgSUNVcyBzdWNoIGFzOlxuICAgKiBgYGBcbiAgICoge++/vTDvv70sIHBsdXJhbCxcbiAgICogICA9MCB7emVyb31cbiAgICogICBvdGhlciB777+9MO+/vSB777+9Me+/vSwgc2VsZWN0LFxuICAgKiAgICAgICAgICAgICAgICAgICAgIGNhdCB7Y2F0c31cbiAgICogICAgICAgICAgICAgICAgICAgICBkb2cge2RvZ3N9XG4gICAqICAgICAgICAgICAgICAgICAgICAgb3RoZXIge2FuaW1hbHN9XG4gICAqICAgICAgICAgICAgICAgICAgIH0hXG4gICAqICAgfVxuICAgKiB9XG4gICAqIGBgYFxuICAgKiBXaGVuIHRoZSBwYXJlbnQgSUNVIGlzIGNoYW5naW5nIGl0IG11c3QgY2xlYW4gdXAgY2hpbGQgSUNVcyBhcyB3ZWxsLiBGb3IgdGhpcyByZWFzb24gaXQgbmVlZHNcbiAgICogdG8ga25vdyB3aGljaCBjaGlsZCBJQ1VzIHRvIHJ1biBjbGVhbiB1cCBmb3IgYXMgd2VsbC5cbiAgICpcbiAgICogSW4gdGhlIGFib3ZlIGV4YW1wbGUgdGhpcyB3b3VsZCBiZTpcbiAgICogYGBgdHNcbiAgICogW1xuICAgKiAgIFtdLCAgIC8vIGA9MGAgaGFzIG5vIHN1YiBJQ1VzXG4gICAqICAgWzFdLCAgLy8gYG90aGVyYCBoYXMgb25lIHN1YklDVSBhdCBgMWBzdCBpbmRleC5cbiAgICogXVxuICAgKiBgYGBcbiAgICpcbiAgICogVGhlIHJlYXNvbiB3aHkgaXQgaXMgQXJyYXkgb2YgQXJyYXlzIGlzIGJlY2F1c2UgZmlyc3QgYXJyYXkgcmVwcmVzZW50cyB0aGUgY2FzZSwgYW5kIHNlY29uZFxuICAgKiByZXByZXNlbnRzIHRoZSBjaGlsZCBJQ1VzIHRvIGNsZWFuIHVwLiBUaGVyZSBtYXkgYmUgbW9yZSB0aGFuIG9uZSBjaGlsZCBJQ1VzIHBlciBjYXNlLlxuICAgKi9cbiAgY2hpbGRJY3VzOiBudW1iZXJbXVtdO1xuXG4gIC8qKlxuICAgKiBBIGxpc3Qgb2YgY2FzZSB2YWx1ZXMgd2hpY2ggdGhlIGN1cnJlbnQgSUNVIHdpbGwgdHJ5IHRvIG1hdGNoLlxuICAgKlxuICAgKiBUaGUgbGFzdCB2YWx1ZSBpcyBgb3RoZXJgXG4gICAqL1xuICBjYXNlczogYW55W107XG5cbiAgLyoqXG4gICAqIEEgc2V0IG9mIE9wQ29kZXMgdG8gYXBwbHkgaW4gb3JkZXIgdG8gYnVpbGQgdXAgdGhlIERPTSByZW5kZXIgdHJlZSBmb3IgdGhlIElDVVxuICAgKi9cbiAgY3JlYXRlOiBJMThuTXV0YXRlT3BDb2Rlc1tdO1xuXG4gIC8qKlxuICAgKiBBIHNldCBvZiBPcENvZGVzIHRvIGFwcGx5IGluIG9yZGVyIHRvIGRlc3Ryb3kgdGhlIERPTSByZW5kZXIgdHJlZSBmb3IgdGhlIElDVS5cbiAgICovXG4gIHJlbW92ZTogSTE4bk11dGF0ZU9wQ29kZXNbXTtcblxuICAvKipcbiAgICogQSBzZXQgb2YgT3BDb2RlcyB0byBhcHBseSBpbiBvcmRlciB0byB1cGRhdGUgdGhlIERPTSByZW5kZXIgdHJlZSBmb3IgdGhlIElDVSBiaW5kaW5ncy5cbiAgICovXG4gIHVwZGF0ZTogSTE4blVwZGF0ZU9wQ29kZXNbXTtcbn1cblxuLy8gTm90ZTogVGhpcyBoYWNrIGlzIG5lY2Vzc2FyeSBzbyB3ZSBkb24ndCBlcnJvbmVvdXNseSBnZXQgYSBjaXJjdWxhciBkZXBlbmRlbmN5XG4vLyBmYWlsdXJlIGJhc2VkIG9uIHR5cGVzLlxuZXhwb3J0IGNvbnN0IHVudXNlZFZhbHVlRXhwb3J0VG9QbGFjYXRlQWpkID0gMTtcbiJdfQ==