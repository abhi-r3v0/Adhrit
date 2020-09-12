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
        define("@angular/compiler-cli/src/ngtsc/partial_evaluator", ["require", "exports", "@angular/compiler-cli/src/ngtsc/partial_evaluator/src/dynamic", "@angular/compiler-cli/src/ngtsc/partial_evaluator/src/interface", "@angular/compiler-cli/src/ngtsc/partial_evaluator/src/result"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var dynamic_1 = require("@angular/compiler-cli/src/ngtsc/partial_evaluator/src/dynamic");
    Object.defineProperty(exports, "DynamicValue", { enumerable: true, get: function () { return dynamic_1.DynamicValue; } });
    var interface_1 = require("@angular/compiler-cli/src/ngtsc/partial_evaluator/src/interface");
    Object.defineProperty(exports, "PartialEvaluator", { enumerable: true, get: function () { return interface_1.PartialEvaluator; } });
    var result_1 = require("@angular/compiler-cli/src/ngtsc/partial_evaluator/src/result");
    Object.defineProperty(exports, "EnumValue", { enumerable: true, get: function () { return result_1.EnumValue; } });
    Object.defineProperty(exports, "KnownFn", { enumerable: true, get: function () { return result_1.KnownFn; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3BhcnRpYWxfZXZhbHVhdG9yL2luZGV4LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7O0lBRUgseUZBQTJDO0lBQW5DLHVHQUFBLFlBQVksT0FBQTtJQUNwQiw2RkFBMEU7SUFBekMsNkdBQUEsZ0JBQWdCLE9BQUE7SUFDakQsdUZBQXFHO0lBQTdGLG1HQUFBLFNBQVMsT0FBQTtJQUFFLGlHQUFBLE9BQU8sT0FBQSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5leHBvcnQge0R5bmFtaWNWYWx1ZX0gZnJvbSAnLi9zcmMvZHluYW1pYyc7XG5leHBvcnQge0ZvcmVpZ25GdW5jdGlvblJlc29sdmVyLCBQYXJ0aWFsRXZhbHVhdG9yfSBmcm9tICcuL3NyYy9pbnRlcmZhY2UnO1xuZXhwb3J0IHtFbnVtVmFsdWUsIEtub3duRm4sIFJlc29sdmVkVmFsdWUsIFJlc29sdmVkVmFsdWVBcnJheSwgUmVzb2x2ZWRWYWx1ZU1hcH0gZnJvbSAnLi9zcmMvcmVzdWx0JztcbiJdfQ==