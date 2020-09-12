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
        define("@angular/compiler-cli/src/ngtsc/entry_point/src/generator", ["require", "exports", "typescript", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/src/ngtsc/util/src/path"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.FlatIndexGenerator = void 0;
    /// <reference types="node" />
    var ts = require("typescript");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var path_1 = require("@angular/compiler-cli/src/ngtsc/util/src/path");
    var FlatIndexGenerator = /** @class */ (function () {
        function FlatIndexGenerator(entryPoint, relativeFlatIndexPath, moduleName) {
            this.entryPoint = entryPoint;
            this.moduleName = moduleName;
            this.shouldEmit = true;
            this.flatIndexPath =
                file_system_1.join(file_system_1.dirname(entryPoint), relativeFlatIndexPath).replace(/\.js$/, '') + '.ts';
        }
        FlatIndexGenerator.prototype.makeTopLevelShim = function () {
            var relativeEntryPoint = path_1.relativePathBetween(this.flatIndexPath, this.entryPoint);
            var contents = "/**\n * Generated bundle index. Do not edit.\n */\n\nexport * from '" + relativeEntryPoint + "';\n";
            var genFile = ts.createSourceFile(this.flatIndexPath, contents, ts.ScriptTarget.ES2015, true, ts.ScriptKind.TS);
            if (this.moduleName !== null) {
                genFile.moduleName = this.moduleName;
            }
            return genFile;
        };
        return FlatIndexGenerator;
    }());
    exports.FlatIndexGenerator = FlatIndexGenerator;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZ2VuZXJhdG9yLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy9uZ3RzYy9lbnRyeV9wb2ludC9zcmMvZ2VuZXJhdG9yLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQUVILDhCQUE4QjtJQUU5QiwrQkFBaUM7SUFFakMsMkVBQWdFO0lBRWhFLHNFQUF3RDtJQUV4RDtRQUlFLDRCQUNhLFVBQTBCLEVBQUUscUJBQTZCLEVBQ3pELFVBQXVCO1lBRHZCLGVBQVUsR0FBVixVQUFVLENBQWdCO1lBQzFCLGVBQVUsR0FBVixVQUFVLENBQWE7WUFKM0IsZUFBVSxHQUFHLElBQUksQ0FBQztZQUt6QixJQUFJLENBQUMsYUFBYTtnQkFDZCxrQkFBSSxDQUFDLHFCQUFPLENBQUMsVUFBVSxDQUFDLEVBQUUscUJBQXFCLENBQUMsQ0FBQyxPQUFPLENBQUMsT0FBTyxFQUFFLEVBQUUsQ0FBQyxHQUFHLEtBQUssQ0FBQztRQUNwRixDQUFDO1FBRUQsNkNBQWdCLEdBQWhCO1lBQ0UsSUFBTSxrQkFBa0IsR0FBRywwQkFBbUIsQ0FBQyxJQUFJLENBQUMsYUFBYSxFQUFFLElBQUksQ0FBQyxVQUFVLENBQUMsQ0FBQztZQUNwRixJQUFNLFFBQVEsR0FBRyx5RUFJSixrQkFBa0IsU0FDbEMsQ0FBQztZQUNFLElBQU0sT0FBTyxHQUFHLEVBQUUsQ0FBQyxnQkFBZ0IsQ0FDL0IsSUFBSSxDQUFDLGFBQWEsRUFBRSxRQUFRLEVBQUUsRUFBRSxDQUFDLFlBQVksQ0FBQyxNQUFNLEVBQUUsSUFBSSxFQUFFLEVBQUUsQ0FBQyxVQUFVLENBQUMsRUFBRSxDQUFDLENBQUM7WUFDbEYsSUFBSSxJQUFJLENBQUMsVUFBVSxLQUFLLElBQUksRUFBRTtnQkFDNUIsT0FBTyxDQUFDLFVBQVUsR0FBRyxJQUFJLENBQUMsVUFBVSxDQUFDO2FBQ3RDO1lBQ0QsT0FBTyxPQUFPLENBQUM7UUFDakIsQ0FBQztRQUNILHlCQUFDO0lBQUQsQ0FBQyxBQTFCRCxJQTBCQztJQTFCWSxnREFBa0IiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuLy8vIDxyZWZlcmVuY2UgdHlwZXM9XCJub2RlXCIgLz5cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7QWJzb2x1dGVGc1BhdGgsIGRpcm5hbWUsIGpvaW59IGZyb20gJy4uLy4uL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7VG9wTGV2ZWxTaGltR2VuZXJhdG9yfSBmcm9tICcuLi8uLi9zaGltcy9hcGknO1xuaW1wb3J0IHtyZWxhdGl2ZVBhdGhCZXR3ZWVufSBmcm9tICcuLi8uLi91dGlsL3NyYy9wYXRoJztcblxuZXhwb3J0IGNsYXNzIEZsYXRJbmRleEdlbmVyYXRvciBpbXBsZW1lbnRzIFRvcExldmVsU2hpbUdlbmVyYXRvciB7XG4gIHJlYWRvbmx5IGZsYXRJbmRleFBhdGg6IHN0cmluZztcbiAgcmVhZG9ubHkgc2hvdWxkRW1pdCA9IHRydWU7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICByZWFkb25seSBlbnRyeVBvaW50OiBBYnNvbHV0ZUZzUGF0aCwgcmVsYXRpdmVGbGF0SW5kZXhQYXRoOiBzdHJpbmcsXG4gICAgICByZWFkb25seSBtb2R1bGVOYW1lOiBzdHJpbmd8bnVsbCkge1xuICAgIHRoaXMuZmxhdEluZGV4UGF0aCA9XG4gICAgICAgIGpvaW4oZGlybmFtZShlbnRyeVBvaW50KSwgcmVsYXRpdmVGbGF0SW5kZXhQYXRoKS5yZXBsYWNlKC9cXC5qcyQvLCAnJykgKyAnLnRzJztcbiAgfVxuXG4gIG1ha2VUb3BMZXZlbFNoaW0oKTogdHMuU291cmNlRmlsZSB7XG4gICAgY29uc3QgcmVsYXRpdmVFbnRyeVBvaW50ID0gcmVsYXRpdmVQYXRoQmV0d2Vlbih0aGlzLmZsYXRJbmRleFBhdGgsIHRoaXMuZW50cnlQb2ludCk7XG4gICAgY29uc3QgY29udGVudHMgPSBgLyoqXG4gKiBHZW5lcmF0ZWQgYnVuZGxlIGluZGV4LiBEbyBub3QgZWRpdC5cbiAqL1xuXG5leHBvcnQgKiBmcm9tICcke3JlbGF0aXZlRW50cnlQb2ludH0nO1xuYDtcbiAgICBjb25zdCBnZW5GaWxlID0gdHMuY3JlYXRlU291cmNlRmlsZShcbiAgICAgICAgdGhpcy5mbGF0SW5kZXhQYXRoLCBjb250ZW50cywgdHMuU2NyaXB0VGFyZ2V0LkVTMjAxNSwgdHJ1ZSwgdHMuU2NyaXB0S2luZC5UUyk7XG4gICAgaWYgKHRoaXMubW9kdWxlTmFtZSAhPT0gbnVsbCkge1xuICAgICAgZ2VuRmlsZS5tb2R1bGVOYW1lID0gdGhpcy5tb2R1bGVOYW1lO1xuICAgIH1cbiAgICByZXR1cm4gZ2VuRmlsZTtcbiAgfVxufVxuIl19