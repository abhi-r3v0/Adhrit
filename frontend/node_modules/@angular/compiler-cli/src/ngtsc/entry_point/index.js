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
        define("@angular/compiler-cli/src/ngtsc/entry_point", ["require", "exports", "@angular/compiler-cli/src/ngtsc/entry_point/src/generator", "@angular/compiler-cli/src/ngtsc/entry_point/src/logic", "@angular/compiler-cli/src/ngtsc/entry_point/src/private_export_checker", "@angular/compiler-cli/src/ngtsc/entry_point/src/reference_graph"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var generator_1 = require("@angular/compiler-cli/src/ngtsc/entry_point/src/generator");
    Object.defineProperty(exports, "FlatIndexGenerator", { enumerable: true, get: function () { return generator_1.FlatIndexGenerator; } });
    var logic_1 = require("@angular/compiler-cli/src/ngtsc/entry_point/src/logic");
    Object.defineProperty(exports, "findFlatIndexEntryPoint", { enumerable: true, get: function () { return logic_1.findFlatIndexEntryPoint; } });
    var private_export_checker_1 = require("@angular/compiler-cli/src/ngtsc/entry_point/src/private_export_checker");
    Object.defineProperty(exports, "checkForPrivateExports", { enumerable: true, get: function () { return private_export_checker_1.checkForPrivateExports; } });
    var reference_graph_1 = require("@angular/compiler-cli/src/ngtsc/entry_point/src/reference_graph");
    Object.defineProperty(exports, "ReferenceGraph", { enumerable: true, get: function () { return reference_graph_1.ReferenceGraph; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL2VudHJ5X3BvaW50L2luZGV4LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7O0lBRUgsdUZBQW1EO0lBQTNDLCtHQUFBLGtCQUFrQixPQUFBO0lBQzFCLCtFQUFvRDtJQUE1QyxnSEFBQSx1QkFBdUIsT0FBQTtJQUMvQixpSEFBb0U7SUFBNUQsZ0lBQUEsc0JBQXNCLE9BQUE7SUFDOUIsbUdBQXFEO0lBQTdDLGlIQUFBLGNBQWMsT0FBQSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5leHBvcnQge0ZsYXRJbmRleEdlbmVyYXRvcn0gZnJvbSAnLi9zcmMvZ2VuZXJhdG9yJztcbmV4cG9ydCB7ZmluZEZsYXRJbmRleEVudHJ5UG9pbnR9IGZyb20gJy4vc3JjL2xvZ2ljJztcbmV4cG9ydCB7Y2hlY2tGb3JQcml2YXRlRXhwb3J0c30gZnJvbSAnLi9zcmMvcHJpdmF0ZV9leHBvcnRfY2hlY2tlcic7XG5leHBvcnQge1JlZmVyZW5jZUdyYXBofSBmcm9tICcuL3NyYy9yZWZlcmVuY2VfZ3JhcGgnO1xuIl19