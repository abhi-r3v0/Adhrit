/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/src/ngtsc/diagnostics/src/error_code", ["require", "exports"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.ngErrorCode = exports.ErrorCode = void 0;
    /**
     * @publicApi
     */
    var ErrorCode;
    (function (ErrorCode) {
        ErrorCode[ErrorCode["DECORATOR_ARG_NOT_LITERAL"] = 1001] = "DECORATOR_ARG_NOT_LITERAL";
        ErrorCode[ErrorCode["DECORATOR_ARITY_WRONG"] = 1002] = "DECORATOR_ARITY_WRONG";
        ErrorCode[ErrorCode["DECORATOR_NOT_CALLED"] = 1003] = "DECORATOR_NOT_CALLED";
        ErrorCode[ErrorCode["DECORATOR_ON_ANONYMOUS_CLASS"] = 1004] = "DECORATOR_ON_ANONYMOUS_CLASS";
        ErrorCode[ErrorCode["DECORATOR_UNEXPECTED"] = 1005] = "DECORATOR_UNEXPECTED";
        /**
         * This error code indicates that there are incompatible decorators on a type or a class field.
         */
        ErrorCode[ErrorCode["DECORATOR_COLLISION"] = 1006] = "DECORATOR_COLLISION";
        ErrorCode[ErrorCode["VALUE_HAS_WRONG_TYPE"] = 1010] = "VALUE_HAS_WRONG_TYPE";
        ErrorCode[ErrorCode["VALUE_NOT_LITERAL"] = 1011] = "VALUE_NOT_LITERAL";
        ErrorCode[ErrorCode["COMPONENT_MISSING_TEMPLATE"] = 2001] = "COMPONENT_MISSING_TEMPLATE";
        ErrorCode[ErrorCode["PIPE_MISSING_NAME"] = 2002] = "PIPE_MISSING_NAME";
        ErrorCode[ErrorCode["PARAM_MISSING_TOKEN"] = 2003] = "PARAM_MISSING_TOKEN";
        ErrorCode[ErrorCode["DIRECTIVE_MISSING_SELECTOR"] = 2004] = "DIRECTIVE_MISSING_SELECTOR";
        /** Raised when an undecorated class is passed in as a provider to a module or a directive. */
        ErrorCode[ErrorCode["UNDECORATED_PROVIDER"] = 2005] = "UNDECORATED_PROVIDER";
        /**
         * Raised when a Directive inherits its constructor from a base class without an Angular
         * decorator.
         */
        ErrorCode[ErrorCode["DIRECTIVE_INHERITS_UNDECORATED_CTOR"] = 2006] = "DIRECTIVE_INHERITS_UNDECORATED_CTOR";
        /**
         * Raised when an undecorated class that is using Angular features
         * has been discovered.
         */
        ErrorCode[ErrorCode["UNDECORATED_CLASS_USING_ANGULAR_FEATURES"] = 2007] = "UNDECORATED_CLASS_USING_ANGULAR_FEATURES";
        ErrorCode[ErrorCode["SYMBOL_NOT_EXPORTED"] = 3001] = "SYMBOL_NOT_EXPORTED";
        ErrorCode[ErrorCode["SYMBOL_EXPORTED_UNDER_DIFFERENT_NAME"] = 3002] = "SYMBOL_EXPORTED_UNDER_DIFFERENT_NAME";
        ErrorCode[ErrorCode["CONFIG_FLAT_MODULE_NO_INDEX"] = 4001] = "CONFIG_FLAT_MODULE_NO_INDEX";
        ErrorCode[ErrorCode["CONFIG_STRICT_TEMPLATES_IMPLIES_FULL_TEMPLATE_TYPECHECK"] = 4002] = "CONFIG_STRICT_TEMPLATES_IMPLIES_FULL_TEMPLATE_TYPECHECK";
        /**
         * Raised when a host expression has a parse error, such as a host listener or host binding
         * expression containing a pipe.
         */
        ErrorCode[ErrorCode["HOST_BINDING_PARSE_ERROR"] = 5001] = "HOST_BINDING_PARSE_ERROR";
        /**
         * Raised when an NgModule contains an invalid reference in `declarations`.
         */
        ErrorCode[ErrorCode["NGMODULE_INVALID_DECLARATION"] = 6001] = "NGMODULE_INVALID_DECLARATION";
        /**
         * Raised when an NgModule contains an invalid type in `imports`.
         */
        ErrorCode[ErrorCode["NGMODULE_INVALID_IMPORT"] = 6002] = "NGMODULE_INVALID_IMPORT";
        /**
         * Raised when an NgModule contains an invalid type in `exports`.
         */
        ErrorCode[ErrorCode["NGMODULE_INVALID_EXPORT"] = 6003] = "NGMODULE_INVALID_EXPORT";
        /**
         * Raised when an NgModule contains a type in `exports` which is neither in `declarations` nor
         * otherwise imported.
         */
        ErrorCode[ErrorCode["NGMODULE_INVALID_REEXPORT"] = 6004] = "NGMODULE_INVALID_REEXPORT";
        /**
         * Raised when a `ModuleWithProviders` with a missing
         * generic type argument is passed into an `NgModule`.
         */
        ErrorCode[ErrorCode["NGMODULE_MODULE_WITH_PROVIDERS_MISSING_GENERIC"] = 6005] = "NGMODULE_MODULE_WITH_PROVIDERS_MISSING_GENERIC";
        /**
         * Raised when an NgModule exports multiple directives/pipes of the same name and the compiler
         * attempts to generate private re-exports within the NgModule file.
         */
        ErrorCode[ErrorCode["NGMODULE_REEXPORT_NAME_COLLISION"] = 6006] = "NGMODULE_REEXPORT_NAME_COLLISION";
        /**
         * Raised when a directive/pipe is part of the declarations of two or more NgModules.
         */
        ErrorCode[ErrorCode["NGMODULE_DECLARATION_NOT_UNIQUE"] = 6007] = "NGMODULE_DECLARATION_NOT_UNIQUE";
        /**
         * An element name failed validation against the DOM schema.
         */
        ErrorCode[ErrorCode["SCHEMA_INVALID_ELEMENT"] = 8001] = "SCHEMA_INVALID_ELEMENT";
        /**
         * An element's attribute name failed validation against the DOM schema.
         */
        ErrorCode[ErrorCode["SCHEMA_INVALID_ATTRIBUTE"] = 8002] = "SCHEMA_INVALID_ATTRIBUTE";
        /**
         * No matching directive was found for a `#ref="target"` expression.
         */
        ErrorCode[ErrorCode["MISSING_REFERENCE_TARGET"] = 8003] = "MISSING_REFERENCE_TARGET";
        /**
         * No matching pipe was found for a
         */
        ErrorCode[ErrorCode["MISSING_PIPE"] = 8004] = "MISSING_PIPE";
        /**
         * The left-hand side of an assignment expression was a template variable. Effectively, the
         * template looked like:
         *
         * ```
         * <ng-template let-something>
         *   <button (click)="something = ...">...</button>
         * </ng-template>
         * ```
         *
         * Template variables are read-only.
         */
        ErrorCode[ErrorCode["WRITE_TO_READ_ONLY_VARIABLE"] = 8005] = "WRITE_TO_READ_ONLY_VARIABLE";
        /**
         * A template variable was declared twice. For example:
         *
         * ```html
         * <div *ngFor="let i of items; let i = index">
         * </div>
         * ```
         */
        ErrorCode[ErrorCode["DUPLICATE_VARIABLE_DECLARATION"] = 8006] = "DUPLICATE_VARIABLE_DECLARATION";
        /**
         * The template type-checking engine would need to generate an inline type check block for a
         * component, but the current type-checking environment doesn't support it.
         */
        ErrorCode[ErrorCode["INLINE_TCB_REQUIRED"] = 8900] = "INLINE_TCB_REQUIRED";
        /**
         * The template type-checking engine would need to generate an inline type constructor for a
         * directive or component, but the current type-checking environment doesn't support it.
         */
        ErrorCode[ErrorCode["INLINE_TYPE_CTOR_REQUIRED"] = 8901] = "INLINE_TYPE_CTOR_REQUIRED";
        /**
         * An injectable already has a `ɵprov` property.
         */
        ErrorCode[ErrorCode["INJECTABLE_DUPLICATE_PROV"] = 9001] = "INJECTABLE_DUPLICATE_PROV";
    })(ErrorCode = exports.ErrorCode || (exports.ErrorCode = {}));
    /**
     * @internal
     */
    function ngErrorCode(code) {
        return parseInt('-99' + code);
    }
    exports.ngErrorCode = ngErrorCode;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXJyb3JfY29kZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvZGlhZ25vc3RpY3Mvc3JjL2Vycm9yX2NvZGUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7O0lBRUg7O09BRUc7SUFDSCxJQUFZLFNBaUpYO0lBakpELFdBQVksU0FBUztRQUNuQixzRkFBZ0MsQ0FBQTtRQUNoQyw4RUFBNEIsQ0FBQTtRQUM1Qiw0RUFBMkIsQ0FBQTtRQUMzQiw0RkFBbUMsQ0FBQTtRQUNuQyw0RUFBMkIsQ0FBQTtRQUUzQjs7V0FFRztRQUNILDBFQUEwQixDQUFBO1FBRTFCLDRFQUEyQixDQUFBO1FBQzNCLHNFQUF3QixDQUFBO1FBRXhCLHdGQUFpQyxDQUFBO1FBQ2pDLHNFQUF3QixDQUFBO1FBQ3hCLDBFQUEwQixDQUFBO1FBQzFCLHdGQUFpQyxDQUFBO1FBRWpDLDhGQUE4RjtRQUM5Riw0RUFBMkIsQ0FBQTtRQUUzQjs7O1dBR0c7UUFDSCwwR0FBMEMsQ0FBQTtRQUUxQzs7O1dBR0c7UUFDSCxvSEFBK0MsQ0FBQTtRQUUvQywwRUFBMEIsQ0FBQTtRQUMxQiw0R0FBMkMsQ0FBQTtRQUUzQywwRkFBa0MsQ0FBQTtRQUNsQyxrSkFBOEQsQ0FBQTtRQUU5RDs7O1dBR0c7UUFDSCxvRkFBK0IsQ0FBQTtRQUUvQjs7V0FFRztRQUNILDRGQUFtQyxDQUFBO1FBRW5DOztXQUVHO1FBQ0gsa0ZBQThCLENBQUE7UUFFOUI7O1dBRUc7UUFDSCxrRkFBOEIsQ0FBQTtRQUU5Qjs7O1dBR0c7UUFDSCxzRkFBZ0MsQ0FBQTtRQUVoQzs7O1dBR0c7UUFDSCxnSUFBcUQsQ0FBQTtRQUVyRDs7O1dBR0c7UUFDSCxvR0FBdUMsQ0FBQTtRQUV2Qzs7V0FFRztRQUNILGtHQUFzQyxDQUFBO1FBRXRDOztXQUVHO1FBQ0gsZ0ZBQTZCLENBQUE7UUFFN0I7O1dBRUc7UUFDSCxvRkFBK0IsQ0FBQTtRQUUvQjs7V0FFRztRQUNILG9GQUErQixDQUFBO1FBRS9COztXQUVHO1FBQ0gsNERBQW1CLENBQUE7UUFFbkI7Ozs7Ozs7Ozs7O1dBV0c7UUFDSCwwRkFBa0MsQ0FBQTtRQUVsQzs7Ozs7OztXQU9HO1FBQ0gsZ0dBQXFDLENBQUE7UUFFckM7OztXQUdHO1FBQ0gsMEVBQTBCLENBQUE7UUFFMUI7OztXQUdHO1FBQ0gsc0ZBQWdDLENBQUE7UUFFaEM7O1dBRUc7UUFDSCxzRkFBZ0MsQ0FBQTtJQUNsQyxDQUFDLEVBakpXLFNBQVMsR0FBVCxpQkFBUyxLQUFULGlCQUFTLFFBaUpwQjtJQUVEOztPQUVHO0lBQ0gsU0FBZ0IsV0FBVyxDQUFDLElBQWU7UUFDekMsT0FBTyxRQUFRLENBQUMsS0FBSyxHQUFHLElBQUksQ0FBQyxDQUFDO0lBQ2hDLENBQUM7SUFGRCxrQ0FFQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG4vKipcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGVudW0gRXJyb3JDb2RlIHtcbiAgREVDT1JBVE9SX0FSR19OT1RfTElURVJBTCA9IDEwMDEsXG4gIERFQ09SQVRPUl9BUklUWV9XUk9ORyA9IDEwMDIsXG4gIERFQ09SQVRPUl9OT1RfQ0FMTEVEID0gMTAwMyxcbiAgREVDT1JBVE9SX09OX0FOT05ZTU9VU19DTEFTUyA9IDEwMDQsXG4gIERFQ09SQVRPUl9VTkVYUEVDVEVEID0gMTAwNSxcblxuICAvKipcbiAgICogVGhpcyBlcnJvciBjb2RlIGluZGljYXRlcyB0aGF0IHRoZXJlIGFyZSBpbmNvbXBhdGlibGUgZGVjb3JhdG9ycyBvbiBhIHR5cGUgb3IgYSBjbGFzcyBmaWVsZC5cbiAgICovXG4gIERFQ09SQVRPUl9DT0xMSVNJT04gPSAxMDA2LFxuXG4gIFZBTFVFX0hBU19XUk9OR19UWVBFID0gMTAxMCxcbiAgVkFMVUVfTk9UX0xJVEVSQUwgPSAxMDExLFxuXG4gIENPTVBPTkVOVF9NSVNTSU5HX1RFTVBMQVRFID0gMjAwMSxcbiAgUElQRV9NSVNTSU5HX05BTUUgPSAyMDAyLFxuICBQQVJBTV9NSVNTSU5HX1RPS0VOID0gMjAwMyxcbiAgRElSRUNUSVZFX01JU1NJTkdfU0VMRUNUT1IgPSAyMDA0LFxuXG4gIC8qKiBSYWlzZWQgd2hlbiBhbiB1bmRlY29yYXRlZCBjbGFzcyBpcyBwYXNzZWQgaW4gYXMgYSBwcm92aWRlciB0byBhIG1vZHVsZSBvciBhIGRpcmVjdGl2ZS4gKi9cbiAgVU5ERUNPUkFURURfUFJPVklERVIgPSAyMDA1LFxuXG4gIC8qKlxuICAgKiBSYWlzZWQgd2hlbiBhIERpcmVjdGl2ZSBpbmhlcml0cyBpdHMgY29uc3RydWN0b3IgZnJvbSBhIGJhc2UgY2xhc3Mgd2l0aG91dCBhbiBBbmd1bGFyXG4gICAqIGRlY29yYXRvci5cbiAgICovXG4gIERJUkVDVElWRV9JTkhFUklUU19VTkRFQ09SQVRFRF9DVE9SID0gMjAwNixcblxuICAvKipcbiAgICogUmFpc2VkIHdoZW4gYW4gdW5kZWNvcmF0ZWQgY2xhc3MgdGhhdCBpcyB1c2luZyBBbmd1bGFyIGZlYXR1cmVzXG4gICAqIGhhcyBiZWVuIGRpc2NvdmVyZWQuXG4gICAqL1xuICBVTkRFQ09SQVRFRF9DTEFTU19VU0lOR19BTkdVTEFSX0ZFQVRVUkVTID0gMjAwNyxcblxuICBTWU1CT0xfTk9UX0VYUE9SVEVEID0gMzAwMSxcbiAgU1lNQk9MX0VYUE9SVEVEX1VOREVSX0RJRkZFUkVOVF9OQU1FID0gMzAwMixcblxuICBDT05GSUdfRkxBVF9NT0RVTEVfTk9fSU5ERVggPSA0MDAxLFxuICBDT05GSUdfU1RSSUNUX1RFTVBMQVRFU19JTVBMSUVTX0ZVTExfVEVNUExBVEVfVFlQRUNIRUNLID0gNDAwMixcblxuICAvKipcbiAgICogUmFpc2VkIHdoZW4gYSBob3N0IGV4cHJlc3Npb24gaGFzIGEgcGFyc2UgZXJyb3IsIHN1Y2ggYXMgYSBob3N0IGxpc3RlbmVyIG9yIGhvc3QgYmluZGluZ1xuICAgKiBleHByZXNzaW9uIGNvbnRhaW5pbmcgYSBwaXBlLlxuICAgKi9cbiAgSE9TVF9CSU5ESU5HX1BBUlNFX0VSUk9SID0gNTAwMSxcblxuICAvKipcbiAgICogUmFpc2VkIHdoZW4gYW4gTmdNb2R1bGUgY29udGFpbnMgYW4gaW52YWxpZCByZWZlcmVuY2UgaW4gYGRlY2xhcmF0aW9uc2AuXG4gICAqL1xuICBOR01PRFVMRV9JTlZBTElEX0RFQ0xBUkFUSU9OID0gNjAwMSxcblxuICAvKipcbiAgICogUmFpc2VkIHdoZW4gYW4gTmdNb2R1bGUgY29udGFpbnMgYW4gaW52YWxpZCB0eXBlIGluIGBpbXBvcnRzYC5cbiAgICovXG4gIE5HTU9EVUxFX0lOVkFMSURfSU1QT1JUID0gNjAwMixcblxuICAvKipcbiAgICogUmFpc2VkIHdoZW4gYW4gTmdNb2R1bGUgY29udGFpbnMgYW4gaW52YWxpZCB0eXBlIGluIGBleHBvcnRzYC5cbiAgICovXG4gIE5HTU9EVUxFX0lOVkFMSURfRVhQT1JUID0gNjAwMyxcblxuICAvKipcbiAgICogUmFpc2VkIHdoZW4gYW4gTmdNb2R1bGUgY29udGFpbnMgYSB0eXBlIGluIGBleHBvcnRzYCB3aGljaCBpcyBuZWl0aGVyIGluIGBkZWNsYXJhdGlvbnNgIG5vclxuICAgKiBvdGhlcndpc2UgaW1wb3J0ZWQuXG4gICAqL1xuICBOR01PRFVMRV9JTlZBTElEX1JFRVhQT1JUID0gNjAwNCxcblxuICAvKipcbiAgICogUmFpc2VkIHdoZW4gYSBgTW9kdWxlV2l0aFByb3ZpZGVyc2Agd2l0aCBhIG1pc3NpbmdcbiAgICogZ2VuZXJpYyB0eXBlIGFyZ3VtZW50IGlzIHBhc3NlZCBpbnRvIGFuIGBOZ01vZHVsZWAuXG4gICAqL1xuICBOR01PRFVMRV9NT0RVTEVfV0lUSF9QUk9WSURFUlNfTUlTU0lOR19HRU5FUklDID0gNjAwNSxcblxuICAvKipcbiAgICogUmFpc2VkIHdoZW4gYW4gTmdNb2R1bGUgZXhwb3J0cyBtdWx0aXBsZSBkaXJlY3RpdmVzL3BpcGVzIG9mIHRoZSBzYW1lIG5hbWUgYW5kIHRoZSBjb21waWxlclxuICAgKiBhdHRlbXB0cyB0byBnZW5lcmF0ZSBwcml2YXRlIHJlLWV4cG9ydHMgd2l0aGluIHRoZSBOZ01vZHVsZSBmaWxlLlxuICAgKi9cbiAgTkdNT0RVTEVfUkVFWFBPUlRfTkFNRV9DT0xMSVNJT04gPSA2MDA2LFxuXG4gIC8qKlxuICAgKiBSYWlzZWQgd2hlbiBhIGRpcmVjdGl2ZS9waXBlIGlzIHBhcnQgb2YgdGhlIGRlY2xhcmF0aW9ucyBvZiB0d28gb3IgbW9yZSBOZ01vZHVsZXMuXG4gICAqL1xuICBOR01PRFVMRV9ERUNMQVJBVElPTl9OT1RfVU5JUVVFID0gNjAwNyxcblxuICAvKipcbiAgICogQW4gZWxlbWVudCBuYW1lIGZhaWxlZCB2YWxpZGF0aW9uIGFnYWluc3QgdGhlIERPTSBzY2hlbWEuXG4gICAqL1xuICBTQ0hFTUFfSU5WQUxJRF9FTEVNRU5UID0gODAwMSxcblxuICAvKipcbiAgICogQW4gZWxlbWVudCdzIGF0dHJpYnV0ZSBuYW1lIGZhaWxlZCB2YWxpZGF0aW9uIGFnYWluc3QgdGhlIERPTSBzY2hlbWEuXG4gICAqL1xuICBTQ0hFTUFfSU5WQUxJRF9BVFRSSUJVVEUgPSA4MDAyLFxuXG4gIC8qKlxuICAgKiBObyBtYXRjaGluZyBkaXJlY3RpdmUgd2FzIGZvdW5kIGZvciBhIGAjcmVmPVwidGFyZ2V0XCJgIGV4cHJlc3Npb24uXG4gICAqL1xuICBNSVNTSU5HX1JFRkVSRU5DRV9UQVJHRVQgPSA4MDAzLFxuXG4gIC8qKlxuICAgKiBObyBtYXRjaGluZyBwaXBlIHdhcyBmb3VuZCBmb3IgYVxuICAgKi9cbiAgTUlTU0lOR19QSVBFID0gODAwNCxcblxuICAvKipcbiAgICogVGhlIGxlZnQtaGFuZCBzaWRlIG9mIGFuIGFzc2lnbm1lbnQgZXhwcmVzc2lvbiB3YXMgYSB0ZW1wbGF0ZSB2YXJpYWJsZS4gRWZmZWN0aXZlbHksIHRoZVxuICAgKiB0ZW1wbGF0ZSBsb29rZWQgbGlrZTpcbiAgICpcbiAgICogYGBgXG4gICAqIDxuZy10ZW1wbGF0ZSBsZXQtc29tZXRoaW5nPlxuICAgKiAgIDxidXR0b24gKGNsaWNrKT1cInNvbWV0aGluZyA9IC4uLlwiPi4uLjwvYnV0dG9uPlxuICAgKiA8L25nLXRlbXBsYXRlPlxuICAgKiBgYGBcbiAgICpcbiAgICogVGVtcGxhdGUgdmFyaWFibGVzIGFyZSByZWFkLW9ubHkuXG4gICAqL1xuICBXUklURV9UT19SRUFEX09OTFlfVkFSSUFCTEUgPSA4MDA1LFxuXG4gIC8qKlxuICAgKiBBIHRlbXBsYXRlIHZhcmlhYmxlIHdhcyBkZWNsYXJlZCB0d2ljZS4gRm9yIGV4YW1wbGU6XG4gICAqXG4gICAqIGBgYGh0bWxcbiAgICogPGRpdiAqbmdGb3I9XCJsZXQgaSBvZiBpdGVtczsgbGV0IGkgPSBpbmRleFwiPlxuICAgKiA8L2Rpdj5cbiAgICogYGBgXG4gICAqL1xuICBEVVBMSUNBVEVfVkFSSUFCTEVfREVDTEFSQVRJT04gPSA4MDA2LFxuXG4gIC8qKlxuICAgKiBUaGUgdGVtcGxhdGUgdHlwZS1jaGVja2luZyBlbmdpbmUgd291bGQgbmVlZCB0byBnZW5lcmF0ZSBhbiBpbmxpbmUgdHlwZSBjaGVjayBibG9jayBmb3IgYVxuICAgKiBjb21wb25lbnQsIGJ1dCB0aGUgY3VycmVudCB0eXBlLWNoZWNraW5nIGVudmlyb25tZW50IGRvZXNuJ3Qgc3VwcG9ydCBpdC5cbiAgICovXG4gIElOTElORV9UQ0JfUkVRVUlSRUQgPSA4OTAwLFxuXG4gIC8qKlxuICAgKiBUaGUgdGVtcGxhdGUgdHlwZS1jaGVja2luZyBlbmdpbmUgd291bGQgbmVlZCB0byBnZW5lcmF0ZSBhbiBpbmxpbmUgdHlwZSBjb25zdHJ1Y3RvciBmb3IgYVxuICAgKiBkaXJlY3RpdmUgb3IgY29tcG9uZW50LCBidXQgdGhlIGN1cnJlbnQgdHlwZS1jaGVja2luZyBlbnZpcm9ubWVudCBkb2Vzbid0IHN1cHBvcnQgaXQuXG4gICAqL1xuICBJTkxJTkVfVFlQRV9DVE9SX1JFUVVJUkVEID0gODkwMSxcblxuICAvKipcbiAgICogQW4gaW5qZWN0YWJsZSBhbHJlYWR5IGhhcyBhIGDJtXByb3ZgIHByb3BlcnR5LlxuICAgKi9cbiAgSU5KRUNUQUJMRV9EVVBMSUNBVEVfUFJPViA9IDkwMDEsXG59XG5cbi8qKlxuICogQGludGVybmFsXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBuZ0Vycm9yQ29kZShjb2RlOiBFcnJvckNvZGUpOiBudW1iZXIge1xuICByZXR1cm4gcGFyc2VJbnQoJy05OScgKyBjb2RlKTtcbn1cbiJdfQ==