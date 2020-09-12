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
        define("@angular/compiler-cli/src/ngtsc/perf", ["require", "exports", "@angular/compiler-cli/src/ngtsc/perf/src/noop", "@angular/compiler-cli/src/ngtsc/perf/src/tracking"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var noop_1 = require("@angular/compiler-cli/src/ngtsc/perf/src/noop");
    Object.defineProperty(exports, "NOOP_PERF_RECORDER", { enumerable: true, get: function () { return noop_1.NOOP_PERF_RECORDER; } });
    var tracking_1 = require("@angular/compiler-cli/src/ngtsc/perf/src/tracking");
    Object.defineProperty(exports, "PerfTracker", { enumerable: true, get: function () { return tracking_1.PerfTracker; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3BlcmYvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7SUFHSCxzRUFBOEM7SUFBdEMsMEdBQUEsa0JBQWtCLE9BQUE7SUFDMUIsOEVBQTJDO0lBQW5DLHVHQUFBLFdBQVcsT0FBQSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5leHBvcnQge1BlcmZSZWNvcmRlcn0gZnJvbSAnLi9zcmMvYXBpJztcbmV4cG9ydCB7Tk9PUF9QRVJGX1JFQ09SREVSfSBmcm9tICcuL3NyYy9ub29wJztcbmV4cG9ydCB7UGVyZlRyYWNrZXJ9IGZyb20gJy4vc3JjL3RyYWNraW5nJztcbiJdfQ==