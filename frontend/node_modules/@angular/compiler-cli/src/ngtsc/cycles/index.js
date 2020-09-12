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
        define("@angular/compiler-cli/src/ngtsc/cycles", ["require", "exports", "@angular/compiler-cli/src/ngtsc/cycles/src/analyzer", "@angular/compiler-cli/src/ngtsc/cycles/src/imports"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var analyzer_1 = require("@angular/compiler-cli/src/ngtsc/cycles/src/analyzer");
    Object.defineProperty(exports, "CycleAnalyzer", { enumerable: true, get: function () { return analyzer_1.CycleAnalyzer; } });
    var imports_1 = require("@angular/compiler-cli/src/ngtsc/cycles/src/imports");
    Object.defineProperty(exports, "ImportGraph", { enumerable: true, get: function () { return imports_1.ImportGraph; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL2N5Y2xlcy9pbmRleC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7OztJQUVILGdGQUE2QztJQUFyQyx5R0FBQSxhQUFhLE9BQUE7SUFDckIsOEVBQTBDO0lBQWxDLHNHQUFBLFdBQVcsT0FBQSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5leHBvcnQge0N5Y2xlQW5hbHl6ZXJ9IGZyb20gJy4vc3JjL2FuYWx5emVyJztcbmV4cG9ydCB7SW1wb3J0R3JhcGh9IGZyb20gJy4vc3JjL2ltcG9ydHMnO1xuIl19