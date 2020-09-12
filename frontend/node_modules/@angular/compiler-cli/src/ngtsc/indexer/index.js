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
        define("@angular/compiler-cli/src/ngtsc/indexer", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/indexer/src/api", "@angular/compiler-cli/src/ngtsc/indexer/src/context", "@angular/compiler-cli/src/ngtsc/indexer/src/transform"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    tslib_1.__exportStar(require("@angular/compiler-cli/src/ngtsc/indexer/src/api"), exports);
    var context_1 = require("@angular/compiler-cli/src/ngtsc/indexer/src/context");
    Object.defineProperty(exports, "IndexingContext", { enumerable: true, get: function () { return context_1.IndexingContext; } });
    var transform_1 = require("@angular/compiler-cli/src/ngtsc/indexer/src/transform");
    Object.defineProperty(exports, "generateAnalysis", { enumerable: true, get: function () { return transform_1.generateAnalysis; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL2luZGV4ZXIvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7O0lBRUgsMEZBQTBCO0lBQzFCLCtFQUE4QztJQUF0QywwR0FBQSxlQUFlLE9BQUE7SUFDdkIsbUZBQWlEO0lBQXpDLDZHQUFBLGdCQUFnQixPQUFBIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmV4cG9ydCAqIGZyb20gJy4vc3JjL2FwaSc7XG5leHBvcnQge0luZGV4aW5nQ29udGV4dH0gZnJvbSAnLi9zcmMvY29udGV4dCc7XG5leHBvcnQge2dlbmVyYXRlQW5hbHlzaXN9IGZyb20gJy4vc3JjL3RyYW5zZm9ybSc7XG4iXX0=