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
        define("@angular/compiler-cli/src/ngtsc/incremental", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/incremental/src/noop", "@angular/compiler-cli/src/ngtsc/incremental/src/state", "@angular/compiler-cli/src/ngtsc/incremental/src/strategy"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    var noop_1 = require("@angular/compiler-cli/src/ngtsc/incremental/src/noop");
    Object.defineProperty(exports, "NOOP_INCREMENTAL_BUILD", { enumerable: true, get: function () { return noop_1.NOOP_INCREMENTAL_BUILD; } });
    var state_1 = require("@angular/compiler-cli/src/ngtsc/incremental/src/state");
    Object.defineProperty(exports, "IncrementalDriver", { enumerable: true, get: function () { return state_1.IncrementalDriver; } });
    tslib_1.__exportStar(require("@angular/compiler-cli/src/ngtsc/incremental/src/strategy"), exports);
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL2luY3JlbWVudGFsL2luZGV4LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQUVILDZFQUFrRDtJQUExQyw4R0FBQSxzQkFBc0IsT0FBQTtJQUM5QiwrRUFBOEM7SUFBdEMsMEdBQUEsaUJBQWlCLE9BQUE7SUFDekIsbUdBQStCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmV4cG9ydCB7Tk9PUF9JTkNSRU1FTlRBTF9CVUlMRH0gZnJvbSAnLi9zcmMvbm9vcCc7XG5leHBvcnQge0luY3JlbWVudGFsRHJpdmVyfSBmcm9tICcuL3NyYy9zdGF0ZSc7XG5leHBvcnQgKiBmcm9tICcuL3NyYy9zdHJhdGVneSc7XG4iXX0=