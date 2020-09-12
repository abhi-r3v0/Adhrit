(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler", "@angular/compiler-cli/src/version", "@angular/compiler-cli/src/metadata/index", "@angular/compiler-cli/src/transformers/api", "@angular/compiler-cli/src/transformers/entry_points", "@angular/compiler-cli/src/perform_compile", "@angular/compiler-cli/src/tooling", "@angular/compiler-cli/src/transformers/util", "@angular/compiler-cli/src/ngtsc/tsc_plugin"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var compiler_1 = require("@angular/compiler");
    Object.defineProperty(exports, "StaticReflector", { enumerable: true, get: function () { return compiler_1.StaticReflector; } });
    Object.defineProperty(exports, "StaticSymbol", { enumerable: true, get: function () { return compiler_1.StaticSymbol; } });
    var version_1 = require("@angular/compiler-cli/src/version");
    Object.defineProperty(exports, "VERSION", { enumerable: true, get: function () { return version_1.VERSION; } });
    tslib_1.__exportStar(require("@angular/compiler-cli/src/metadata/index"), exports);
    tslib_1.__exportStar(require("@angular/compiler-cli/src/transformers/api"), exports);
    tslib_1.__exportStar(require("@angular/compiler-cli/src/transformers/entry_points"), exports);
    tslib_1.__exportStar(require("@angular/compiler-cli/src/perform_compile"), exports);
    tslib_1.__exportStar(require("@angular/compiler-cli/src/tooling"), exports);
    var util_1 = require("@angular/compiler-cli/src/transformers/util");
    Object.defineProperty(exports, "ngToTsDiagnostic", { enumerable: true, get: function () { return util_1.ngToTsDiagnostic; } });
    var tsc_plugin_1 = require("@angular/compiler-cli/src/ngtsc/tsc_plugin");
    Object.defineProperty(exports, "NgTscPlugin", { enumerable: true, get: function () { return tsc_plugin_1.NgTscPlugin; } });
    file_system_1.setFileSystem(new file_system_1.NodeJSFileSystem());
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0lBQUE7Ozs7OztPQU1HO0lBQ0gsMkVBQXdFO0lBRXhFLDhDQUF5SDtJQUF4RCwyR0FBQSxlQUFlLE9BQUE7SUFBRSx3R0FBQSxZQUFZLE9BQUE7SUFDOUYsNkRBQXNDO0lBQTlCLGtHQUFBLE9BQU8sT0FBQTtJQUVmLG1GQUErQjtJQUMvQixxRkFBdUM7SUFDdkMsOEZBQWdEO0lBRWhELG9GQUFzQztJQUN0Qyw0RUFBOEI7SUFLOUIsb0VBQXlEO0lBQWpELHdHQUFBLGdCQUFnQixPQUFBO0lBQ3hCLHlFQUFtRDtJQUEzQyx5R0FBQSxXQUFXLE9BQUE7SUFFbkIsMkJBQWEsQ0FBQyxJQUFJLDhCQUFnQixFQUFFLENBQUMsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IHtOb2RlSlNGaWxlU3lzdGVtLCBzZXRGaWxlU3lzdGVtfSBmcm9tICcuL3NyYy9uZ3RzYy9maWxlX3N5c3RlbSc7XG5cbmV4cG9ydCB7QW90Q29tcGlsZXJIb3N0LCBBb3RDb21waWxlckhvc3QgYXMgU3RhdGljUmVmbGVjdG9ySG9zdCwgU3RhdGljUmVmbGVjdG9yLCBTdGF0aWNTeW1ib2x9IGZyb20gJ0Bhbmd1bGFyL2NvbXBpbGVyJztcbmV4cG9ydCB7VkVSU0lPTn0gZnJvbSAnLi9zcmMvdmVyc2lvbic7XG5cbmV4cG9ydCAqIGZyb20gJy4vc3JjL21ldGFkYXRhJztcbmV4cG9ydCAqIGZyb20gJy4vc3JjL3RyYW5zZm9ybWVycy9hcGknO1xuZXhwb3J0ICogZnJvbSAnLi9zcmMvdHJhbnNmb3JtZXJzL2VudHJ5X3BvaW50cyc7XG5cbmV4cG9ydCAqIGZyb20gJy4vc3JjL3BlcmZvcm1fY29tcGlsZSc7XG5leHBvcnQgKiBmcm9tICcuL3NyYy90b29saW5nJztcblxuLy8gVE9ETyh0Ym9zY2gpOiByZW1vdmUgdGhpcyBvbmNlIHVzYWdlcyBpbiBHMyBhcmUgY2hhbmdlZCB0byBgQ29tcGlsZXJPcHRpb25zYFxuZXhwb3J0IHtDb21waWxlck9wdGlvbnMgYXMgQW5ndWxhckNvbXBpbGVyT3B0aW9uc30gZnJvbSAnLi9zcmMvdHJhbnNmb3JtZXJzL2FwaSc7XG5cbmV4cG9ydCB7bmdUb1RzRGlhZ25vc3RpY30gZnJvbSAnLi9zcmMvdHJhbnNmb3JtZXJzL3V0aWwnO1xuZXhwb3J0IHtOZ1RzY1BsdWdpbn0gZnJvbSAnLi9zcmMvbmd0c2MvdHNjX3BsdWdpbic7XG5cbnNldEZpbGVTeXN0ZW0obmV3IE5vZGVKU0ZpbGVTeXN0ZW0oKSk7XG4iXX0=