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
        define("@angular/compiler-cli/src/ngtsc/shims/src/util", ["require", "exports", "@angular/compiler-cli/src/ngtsc/file_system"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.generatedModuleName = exports.makeShimFileName = void 0;
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var TS_EXTENSIONS = /\.tsx?$/i;
    /**
     * Replace the .ts or .tsx extension of a file with the shim filename suffix.
     */
    function makeShimFileName(fileName, suffix) {
        return file_system_1.absoluteFrom(fileName.replace(TS_EXTENSIONS, suffix));
    }
    exports.makeShimFileName = makeShimFileName;
    function generatedModuleName(originalModuleName, originalFileName, genSuffix) {
        var moduleName;
        if (originalFileName.endsWith('/index.ts')) {
            moduleName = originalModuleName + '/index' + genSuffix;
        }
        else {
            moduleName = originalModuleName + genSuffix;
        }
        return moduleName;
    }
    exports.generatedModuleName = generatedModuleName;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2Mvc2hpbXMvc3JjL3V0aWwudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7O0lBRUgsMkVBQStEO0lBRS9ELElBQU0sYUFBYSxHQUFHLFVBQVUsQ0FBQztJQUVqQzs7T0FFRztJQUNILFNBQWdCLGdCQUFnQixDQUFDLFFBQXdCLEVBQUUsTUFBYztRQUN2RSxPQUFPLDBCQUFZLENBQUMsUUFBUSxDQUFDLE9BQU8sQ0FBQyxhQUFhLEVBQUUsTUFBTSxDQUFDLENBQUMsQ0FBQztJQUMvRCxDQUFDO0lBRkQsNENBRUM7SUFFRCxTQUFnQixtQkFBbUIsQ0FDL0Isa0JBQTBCLEVBQUUsZ0JBQXdCLEVBQUUsU0FBaUI7UUFDekUsSUFBSSxVQUFrQixDQUFDO1FBQ3ZCLElBQUksZ0JBQWdCLENBQUMsUUFBUSxDQUFDLFdBQVcsQ0FBQyxFQUFFO1lBQzFDLFVBQVUsR0FBRyxrQkFBa0IsR0FBRyxRQUFRLEdBQUcsU0FBUyxDQUFDO1NBQ3hEO2FBQU07WUFDTCxVQUFVLEdBQUcsa0JBQWtCLEdBQUcsU0FBUyxDQUFDO1NBQzdDO1FBRUQsT0FBTyxVQUFVLENBQUM7SUFDcEIsQ0FBQztJQVZELGtEQVVDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7YWJzb2x1dGVGcm9tLCBBYnNvbHV0ZUZzUGF0aH0gZnJvbSAnLi4vLi4vZmlsZV9zeXN0ZW0nO1xuXG5jb25zdCBUU19FWFRFTlNJT05TID0gL1xcLnRzeD8kL2k7XG5cbi8qKlxuICogUmVwbGFjZSB0aGUgLnRzIG9yIC50c3ggZXh0ZW5zaW9uIG9mIGEgZmlsZSB3aXRoIHRoZSBzaGltIGZpbGVuYW1lIHN1ZmZpeC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIG1ha2VTaGltRmlsZU5hbWUoZmlsZU5hbWU6IEFic29sdXRlRnNQYXRoLCBzdWZmaXg6IHN0cmluZyk6IEFic29sdXRlRnNQYXRoIHtcbiAgcmV0dXJuIGFic29sdXRlRnJvbShmaWxlTmFtZS5yZXBsYWNlKFRTX0VYVEVOU0lPTlMsIHN1ZmZpeCkpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2VuZXJhdGVkTW9kdWxlTmFtZShcbiAgICBvcmlnaW5hbE1vZHVsZU5hbWU6IHN0cmluZywgb3JpZ2luYWxGaWxlTmFtZTogc3RyaW5nLCBnZW5TdWZmaXg6IHN0cmluZyk6IHN0cmluZyB7XG4gIGxldCBtb2R1bGVOYW1lOiBzdHJpbmc7XG4gIGlmIChvcmlnaW5hbEZpbGVOYW1lLmVuZHNXaXRoKCcvaW5kZXgudHMnKSkge1xuICAgIG1vZHVsZU5hbWUgPSBvcmlnaW5hbE1vZHVsZU5hbWUgKyAnL2luZGV4JyArIGdlblN1ZmZpeDtcbiAgfSBlbHNlIHtcbiAgICBtb2R1bGVOYW1lID0gb3JpZ2luYWxNb2R1bGVOYW1lICsgZ2VuU3VmZml4O1xuICB9XG5cbiAgcmV0dXJuIG1vZHVsZU5hbWU7XG59XG4iXX0=