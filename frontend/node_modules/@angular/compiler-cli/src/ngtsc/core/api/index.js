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
        define("@angular/compiler-cli/src/ngtsc/core/api/index", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/core/api/src/adapter", "@angular/compiler-cli/src/ngtsc/core/api/src/interfaces", "@angular/compiler-cli/src/ngtsc/core/api/src/options", "@angular/compiler-cli/src/ngtsc/core/api/src/public_options"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    tslib_1.__exportStar(require("@angular/compiler-cli/src/ngtsc/core/api/src/adapter"), exports);
    tslib_1.__exportStar(require("@angular/compiler-cli/src/ngtsc/core/api/src/interfaces"), exports);
    tslib_1.__exportStar(require("@angular/compiler-cli/src/ngtsc/core/api/src/options"), exports);
    tslib_1.__exportStar(require("@angular/compiler-cli/src/ngtsc/core/api/src/public_options"), exports);
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL2NvcmUvYXBpL2luZGV4LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQUVILCtGQUE4QjtJQUM5QixrR0FBaUM7SUFDakMsK0ZBQThCO0lBQzlCLHNHQUFxQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5leHBvcnQgKiBmcm9tICcuL3NyYy9hZGFwdGVyJztcbmV4cG9ydCAqIGZyb20gJy4vc3JjL2ludGVyZmFjZXMnO1xuZXhwb3J0ICogZnJvbSAnLi9zcmMvb3B0aW9ucyc7XG5leHBvcnQgKiBmcm9tICcuL3NyYy9wdWJsaWNfb3B0aW9ucyc7XG4iXX0=