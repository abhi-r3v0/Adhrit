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
        define("@angular/compiler-cli/src/ngtsc/typecheck", ["require", "exports", "@angular/compiler-cli/src/ngtsc/typecheck/src/augmented_program", "@angular/compiler-cli/src/ngtsc/typecheck/src/checker", "@angular/compiler-cli/src/ngtsc/typecheck/src/context", "@angular/compiler-cli/src/ngtsc/typecheck/src/diagnostics", "@angular/compiler-cli/src/ngtsc/typecheck/src/host", "@angular/compiler-cli/src/ngtsc/typecheck/src/shim", "@angular/compiler-cli/src/ngtsc/typecheck/src/type_check_file"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var augmented_program_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/augmented_program");
    Object.defineProperty(exports, "ReusedProgramStrategy", { enumerable: true, get: function () { return augmented_program_1.ReusedProgramStrategy; } });
    var checker_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/checker");
    Object.defineProperty(exports, "TemplateTypeCheckerImpl", { enumerable: true, get: function () { return checker_1.TemplateTypeCheckerImpl; } });
    var context_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/context");
    Object.defineProperty(exports, "TypeCheckContextImpl", { enumerable: true, get: function () { return context_1.TypeCheckContextImpl; } });
    var diagnostics_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/diagnostics");
    Object.defineProperty(exports, "isTemplateDiagnostic", { enumerable: true, get: function () { return diagnostics_1.isTemplateDiagnostic; } });
    var host_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/host");
    Object.defineProperty(exports, "TypeCheckProgramHost", { enumerable: true, get: function () { return host_1.TypeCheckProgramHost; } });
    var shim_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/shim");
    Object.defineProperty(exports, "TypeCheckShimGenerator", { enumerable: true, get: function () { return shim_1.TypeCheckShimGenerator; } });
    var type_check_file_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/type_check_file");
    Object.defineProperty(exports, "typeCheckFilePath", { enumerable: true, get: function () { return type_check_file_1.typeCheckFilePath; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3R5cGVjaGVjay9pbmRleC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7OztJQUVILHFHQUE4RDtJQUF0RCwwSEFBQSxxQkFBcUIsT0FBQTtJQUM3QixpRkFBNEU7SUFBOUMsa0hBQUEsdUJBQXVCLE9BQUE7SUFDckQsaUZBQW1EO0lBQTNDLCtHQUFBLG9CQUFvQixPQUFBO0lBQzVCLHlGQUEyRTtJQUFuRSxtSEFBQSxvQkFBb0IsT0FBQTtJQUM1QiwyRUFBZ0Q7SUFBeEMsNEdBQUEsb0JBQW9CLE9BQUE7SUFDNUIsMkVBQWtEO0lBQTFDLDhHQUFBLHNCQUFzQixPQUFBO0lBQzlCLGlHQUF3RDtJQUFoRCxvSEFBQSxpQkFBaUIsT0FBQSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5leHBvcnQge1JldXNlZFByb2dyYW1TdHJhdGVneX0gZnJvbSAnLi9zcmMvYXVnbWVudGVkX3Byb2dyYW0nO1xuZXhwb3J0IHtGaWxlVHlwZUNoZWNraW5nRGF0YSwgVGVtcGxhdGVUeXBlQ2hlY2tlckltcGx9IGZyb20gJy4vc3JjL2NoZWNrZXInO1xuZXhwb3J0IHtUeXBlQ2hlY2tDb250ZXh0SW1wbH0gZnJvbSAnLi9zcmMvY29udGV4dCc7XG5leHBvcnQge2lzVGVtcGxhdGVEaWFnbm9zdGljLCBUZW1wbGF0ZURpYWdub3N0aWN9IGZyb20gJy4vc3JjL2RpYWdub3N0aWNzJztcbmV4cG9ydCB7VHlwZUNoZWNrUHJvZ3JhbUhvc3R9IGZyb20gJy4vc3JjL2hvc3QnO1xuZXhwb3J0IHtUeXBlQ2hlY2tTaGltR2VuZXJhdG9yfSBmcm9tICcuL3NyYy9zaGltJztcbmV4cG9ydCB7dHlwZUNoZWNrRmlsZVBhdGh9IGZyb20gJy4vc3JjL3R5cGVfY2hlY2tfZmlsZSc7XG4iXX0=