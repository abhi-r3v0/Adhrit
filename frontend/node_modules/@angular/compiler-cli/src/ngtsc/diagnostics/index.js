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
        define("@angular/compiler-cli/src/ngtsc/diagnostics", ["require", "exports", "@angular/compiler-cli/src/ngtsc/diagnostics/src/error", "@angular/compiler-cli/src/ngtsc/diagnostics/src/error_code", "@angular/compiler-cli/src/ngtsc/diagnostics/src/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var error_1 = require("@angular/compiler-cli/src/ngtsc/diagnostics/src/error");
    Object.defineProperty(exports, "FatalDiagnosticError", { enumerable: true, get: function () { return error_1.FatalDiagnosticError; } });
    Object.defineProperty(exports, "isFatalDiagnosticError", { enumerable: true, get: function () { return error_1.isFatalDiagnosticError; } });
    Object.defineProperty(exports, "makeDiagnostic", { enumerable: true, get: function () { return error_1.makeDiagnostic; } });
    Object.defineProperty(exports, "makeRelatedInformation", { enumerable: true, get: function () { return error_1.makeRelatedInformation; } });
    var error_code_1 = require("@angular/compiler-cli/src/ngtsc/diagnostics/src/error_code");
    Object.defineProperty(exports, "ErrorCode", { enumerable: true, get: function () { return error_code_1.ErrorCode; } });
    Object.defineProperty(exports, "ngErrorCode", { enumerable: true, get: function () { return error_code_1.ngErrorCode; } });
    var util_1 = require("@angular/compiler-cli/src/ngtsc/diagnostics/src/util");
    Object.defineProperty(exports, "replaceTsWithNgInErrors", { enumerable: true, get: function () { return util_1.replaceTsWithNgInErrors; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL2RpYWdub3N0aWNzL2luZGV4LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7O0lBRUgsK0VBQWlIO0lBQXpHLDZHQUFBLG9CQUFvQixPQUFBO0lBQUUsK0dBQUEsc0JBQXNCLE9BQUE7SUFBRSx1R0FBQSxjQUFjLE9BQUE7SUFBRSwrR0FBQSxzQkFBc0IsT0FBQTtJQUM1Rix5RkFBd0Q7SUFBaEQsdUdBQUEsU0FBUyxPQUFBO0lBQUUseUdBQUEsV0FBVyxPQUFBO0lBQzlCLDZFQUFtRDtJQUEzQywrR0FBQSx1QkFBdUIsT0FBQSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5leHBvcnQge0ZhdGFsRGlhZ25vc3RpY0Vycm9yLCBpc0ZhdGFsRGlhZ25vc3RpY0Vycm9yLCBtYWtlRGlhZ25vc3RpYywgbWFrZVJlbGF0ZWRJbmZvcm1hdGlvbn0gZnJvbSAnLi9zcmMvZXJyb3InO1xuZXhwb3J0IHtFcnJvckNvZGUsIG5nRXJyb3JDb2RlfSBmcm9tICcuL3NyYy9lcnJvcl9jb2RlJztcbmV4cG9ydCB7cmVwbGFjZVRzV2l0aE5nSW5FcnJvcnN9IGZyb20gJy4vc3JjL3V0aWwnO1xuIl19