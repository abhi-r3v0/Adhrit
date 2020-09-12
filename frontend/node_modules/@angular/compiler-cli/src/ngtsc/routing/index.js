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
        define("@angular/compiler-cli/src/ngtsc/routing", ["require", "exports", "@angular/compiler-cli/src/ngtsc/routing/src/analyzer", "@angular/compiler-cli/src/ngtsc/routing/src/route"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    /// <reference types="node" />
    var analyzer_1 = require("@angular/compiler-cli/src/ngtsc/routing/src/analyzer");
    Object.defineProperty(exports, "NgModuleRouteAnalyzer", { enumerable: true, get: function () { return analyzer_1.NgModuleRouteAnalyzer; } });
    var route_1 = require("@angular/compiler-cli/src/ngtsc/routing/src/route");
    Object.defineProperty(exports, "entryPointKeyFor", { enumerable: true, get: function () { return route_1.entryPointKeyFor; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3JvdXRpbmcvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7SUFFSCw4QkFBOEI7SUFFOUIsaUZBQWdFO0lBQTdDLGlIQUFBLHFCQUFxQixPQUFBO0lBQ3hDLDJFQUE2QztJQUFyQyx5R0FBQSxnQkFBZ0IsT0FBQSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG4vLy8gPHJlZmVyZW5jZSB0eXBlcz1cIm5vZGVcIiAvPlxuXG5leHBvcnQge0xhenlSb3V0ZSwgTmdNb2R1bGVSb3V0ZUFuYWx5emVyfSBmcm9tICcuL3NyYy9hbmFseXplcic7XG5leHBvcnQge2VudHJ5UG9pbnRLZXlGb3J9IGZyb20gJy4vc3JjL3JvdXRlJztcbiJdfQ==