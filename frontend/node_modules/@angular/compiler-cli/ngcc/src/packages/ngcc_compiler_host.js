(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/packages/ngcc_compiler_host", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/ngcc/src/analysis/util", "@angular/compiler-cli/ngcc/src/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.NgccSourcesCompilerHost = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var ts = require("typescript");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var util_1 = require("@angular/compiler-cli/ngcc/src/analysis/util");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/utils");
    /**
     * Represents a compiler host that resolves a module import as a JavaScript source file if
     * available, instead of the .d.ts typings file that would have been resolved by TypeScript. This
     * is necessary for packages that have their typings in the same directory as the sources, which
     * would otherwise let TypeScript prefer the .d.ts file instead of the JavaScript source file.
     */
    var NgccSourcesCompilerHost = /** @class */ (function (_super) {
        tslib_1.__extends(NgccSourcesCompilerHost, _super);
        function NgccSourcesCompilerHost(fs, options, packagePath) {
            var _this = _super.call(this, fs, options) || this;
            _this.packagePath = packagePath;
            _this.cache = ts.createModuleResolutionCache(_this.getCurrentDirectory(), function (file) { return _this.getCanonicalFileName(file); });
            return _this;
        }
        NgccSourcesCompilerHost.prototype.resolveModuleNames = function (moduleNames, containingFile, reusedNames, redirectedReference) {
            var _this = this;
            return moduleNames.map(function (moduleName) {
                var resolvedModule = ts.resolveModuleName(moduleName, containingFile, _this.options, _this, _this.cache, redirectedReference).resolvedModule;
                // If the module request originated from a relative import in a JavaScript source file,
                // TypeScript may have resolved the module to its .d.ts declaration file if the .js source
                // file was in the same directory. This is undesirable, as we need to have the actual
                // JavaScript being present in the program. This logic recognizes this scenario and rewrites
                // the resolved .d.ts declaration file to its .js counterpart, if it exists.
                if ((resolvedModule === null || resolvedModule === void 0 ? void 0 : resolvedModule.extension) === ts.Extension.Dts && containingFile.endsWith('.js') &&
                    utils_1.isRelativePath(moduleName)) {
                    var jsFile = resolvedModule.resolvedFileName.replace(/\.d\.ts$/, '.js');
                    if (_this.fileExists(jsFile)) {
                        return tslib_1.__assign(tslib_1.__assign({}, resolvedModule), { resolvedFileName: jsFile, extension: ts.Extension.Js });
                    }
                }
                // Prevent loading JavaScript source files outside of the package root, which would happen for
                // packages that don't have .d.ts files. As ngcc should only operate on the .js files
                // contained within the package, any files outside the package are simply discarded. This does
                // result in a partial program with error diagnostics, however ngcc won't gather diagnostics
                // for the program it creates so these diagnostics won't be reported.
                if ((resolvedModule === null || resolvedModule === void 0 ? void 0 : resolvedModule.extension) === ts.Extension.Js &&
                    !util_1.isWithinPackage(_this.packagePath, _this.fs.resolve(resolvedModule.resolvedFileName))) {
                    return undefined;
                }
                return resolvedModule;
            });
        };
        return NgccSourcesCompilerHost;
    }(file_system_1.NgtscCompilerHost));
    exports.NgccSourcesCompilerHost = NgccSourcesCompilerHost;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmdjY19jb21waWxlcl9ob3N0LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL25nY2Mvc3JjL3BhY2thZ2VzL25nY2NfY29tcGlsZXJfaG9zdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7O0lBQUE7Ozs7OztPQU1HO0lBQ0gsK0JBQWlDO0lBRWpDLDJFQUE2RjtJQUM3RixxRUFBaUQ7SUFDakQsOERBQXdDO0lBRXhDOzs7OztPQUtHO0lBQ0g7UUFBNkMsbURBQWlCO1FBSTVELGlDQUFZLEVBQWMsRUFBRSxPQUEyQixFQUFZLFdBQTJCO1lBQTlGLFlBQ0Usa0JBQU0sRUFBRSxFQUFFLE9BQU8sQ0FBQyxTQUNuQjtZQUZrRSxpQkFBVyxHQUFYLFdBQVcsQ0FBZ0I7WUFIdEYsV0FBSyxHQUFHLEVBQUUsQ0FBQywyQkFBMkIsQ0FDMUMsS0FBSSxDQUFDLG1CQUFtQixFQUFFLEVBQUUsVUFBQSxJQUFJLElBQUksT0FBQSxLQUFJLENBQUMsb0JBQW9CLENBQUMsSUFBSSxDQUFDLEVBQS9CLENBQStCLENBQUMsQ0FBQzs7UUFJekUsQ0FBQztRQUVELG9EQUFrQixHQUFsQixVQUNJLFdBQXFCLEVBQUUsY0FBc0IsRUFBRSxXQUFzQixFQUNyRSxtQkFBaUQ7WUFGckQsaUJBZ0NDO1lBN0JDLE9BQU8sV0FBVyxDQUFDLEdBQUcsQ0FBQyxVQUFBLFVBQVU7Z0JBQ3hCLElBQUEsY0FBYyxHQUFJLEVBQUUsQ0FBQyxpQkFBaUIsQ0FDekMsVUFBVSxFQUFFLGNBQWMsRUFBRSxLQUFJLENBQUMsT0FBTyxFQUFFLEtBQUksRUFBRSxLQUFJLENBQUMsS0FBSyxFQUFFLG1CQUFtQixDQUFDLGVBRC9ELENBQ2dFO2dCQUVyRix1RkFBdUY7Z0JBQ3ZGLDBGQUEwRjtnQkFDMUYscUZBQXFGO2dCQUNyRiw0RkFBNEY7Z0JBQzVGLDRFQUE0RTtnQkFDNUUsSUFBSSxDQUFBLGNBQWMsYUFBZCxjQUFjLHVCQUFkLGNBQWMsQ0FBRSxTQUFTLE1BQUssRUFBRSxDQUFDLFNBQVMsQ0FBQyxHQUFHLElBQUksY0FBYyxDQUFDLFFBQVEsQ0FBQyxLQUFLLENBQUM7b0JBQ2hGLHNCQUFjLENBQUMsVUFBVSxDQUFDLEVBQUU7b0JBQzlCLElBQU0sTUFBTSxHQUFHLGNBQWMsQ0FBQyxnQkFBZ0IsQ0FBQyxPQUFPLENBQUMsVUFBVSxFQUFFLEtBQUssQ0FBQyxDQUFDO29CQUMxRSxJQUFJLEtBQUksQ0FBQyxVQUFVLENBQUMsTUFBTSxDQUFDLEVBQUU7d0JBQzNCLDZDQUFXLGNBQWMsS0FBRSxnQkFBZ0IsRUFBRSxNQUFNLEVBQUUsU0FBUyxFQUFFLEVBQUUsQ0FBQyxTQUFTLENBQUMsRUFBRSxJQUFFO3FCQUNsRjtpQkFDRjtnQkFFRCw4RkFBOEY7Z0JBQzlGLHFGQUFxRjtnQkFDckYsOEZBQThGO2dCQUM5Riw0RkFBNEY7Z0JBQzVGLHFFQUFxRTtnQkFDckUsSUFBSSxDQUFBLGNBQWMsYUFBZCxjQUFjLHVCQUFkLGNBQWMsQ0FBRSxTQUFTLE1BQUssRUFBRSxDQUFDLFNBQVMsQ0FBQyxFQUFFO29CQUM3QyxDQUFDLHNCQUFlLENBQUMsS0FBSSxDQUFDLFdBQVcsRUFBRSxLQUFJLENBQUMsRUFBRSxDQUFDLE9BQU8sQ0FBQyxjQUFjLENBQUMsZ0JBQWdCLENBQUMsQ0FBQyxFQUFFO29CQUN4RixPQUFPLFNBQVMsQ0FBQztpQkFDbEI7Z0JBRUQsT0FBTyxjQUFjLENBQUM7WUFDeEIsQ0FBQyxDQUFDLENBQUM7UUFDTCxDQUFDO1FBQ0gsOEJBQUM7SUFBRCxDQUFDLEFBekNELENBQTZDLCtCQUFpQixHQXlDN0Q7SUF6Q1ksMERBQXVCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtBYnNvbHV0ZUZzUGF0aCwgRmlsZVN5c3RlbSwgTmd0c2NDb21waWxlckhvc3R9IGZyb20gJy4uLy4uLy4uL3NyYy9uZ3RzYy9maWxlX3N5c3RlbSc7XG5pbXBvcnQge2lzV2l0aGluUGFja2FnZX0gZnJvbSAnLi4vYW5hbHlzaXMvdXRpbCc7XG5pbXBvcnQge2lzUmVsYXRpdmVQYXRofSBmcm9tICcuLi91dGlscyc7XG5cbi8qKlxuICogUmVwcmVzZW50cyBhIGNvbXBpbGVyIGhvc3QgdGhhdCByZXNvbHZlcyBhIG1vZHVsZSBpbXBvcnQgYXMgYSBKYXZhU2NyaXB0IHNvdXJjZSBmaWxlIGlmXG4gKiBhdmFpbGFibGUsIGluc3RlYWQgb2YgdGhlIC5kLnRzIHR5cGluZ3MgZmlsZSB0aGF0IHdvdWxkIGhhdmUgYmVlbiByZXNvbHZlZCBieSBUeXBlU2NyaXB0LiBUaGlzXG4gKiBpcyBuZWNlc3NhcnkgZm9yIHBhY2thZ2VzIHRoYXQgaGF2ZSB0aGVpciB0eXBpbmdzIGluIHRoZSBzYW1lIGRpcmVjdG9yeSBhcyB0aGUgc291cmNlcywgd2hpY2hcbiAqIHdvdWxkIG90aGVyd2lzZSBsZXQgVHlwZVNjcmlwdCBwcmVmZXIgdGhlIC5kLnRzIGZpbGUgaW5zdGVhZCBvZiB0aGUgSmF2YVNjcmlwdCBzb3VyY2UgZmlsZS5cbiAqL1xuZXhwb3J0IGNsYXNzIE5nY2NTb3VyY2VzQ29tcGlsZXJIb3N0IGV4dGVuZHMgTmd0c2NDb21waWxlckhvc3Qge1xuICBwcml2YXRlIGNhY2hlID0gdHMuY3JlYXRlTW9kdWxlUmVzb2x1dGlvbkNhY2hlKFxuICAgICAgdGhpcy5nZXRDdXJyZW50RGlyZWN0b3J5KCksIGZpbGUgPT4gdGhpcy5nZXRDYW5vbmljYWxGaWxlTmFtZShmaWxlKSk7XG5cbiAgY29uc3RydWN0b3IoZnM6IEZpbGVTeXN0ZW0sIG9wdGlvbnM6IHRzLkNvbXBpbGVyT3B0aW9ucywgcHJvdGVjdGVkIHBhY2thZ2VQYXRoOiBBYnNvbHV0ZUZzUGF0aCkge1xuICAgIHN1cGVyKGZzLCBvcHRpb25zKTtcbiAgfVxuXG4gIHJlc29sdmVNb2R1bGVOYW1lcyhcbiAgICAgIG1vZHVsZU5hbWVzOiBzdHJpbmdbXSwgY29udGFpbmluZ0ZpbGU6IHN0cmluZywgcmV1c2VkTmFtZXM/OiBzdHJpbmdbXSxcbiAgICAgIHJlZGlyZWN0ZWRSZWZlcmVuY2U/OiB0cy5SZXNvbHZlZFByb2plY3RSZWZlcmVuY2UpOiBBcnJheTx0cy5SZXNvbHZlZE1vZHVsZXx1bmRlZmluZWQ+IHtcbiAgICByZXR1cm4gbW9kdWxlTmFtZXMubWFwKG1vZHVsZU5hbWUgPT4ge1xuICAgICAgY29uc3Qge3Jlc29sdmVkTW9kdWxlfSA9IHRzLnJlc29sdmVNb2R1bGVOYW1lKFxuICAgICAgICAgIG1vZHVsZU5hbWUsIGNvbnRhaW5pbmdGaWxlLCB0aGlzLm9wdGlvbnMsIHRoaXMsIHRoaXMuY2FjaGUsIHJlZGlyZWN0ZWRSZWZlcmVuY2UpO1xuXG4gICAgICAvLyBJZiB0aGUgbW9kdWxlIHJlcXVlc3Qgb3JpZ2luYXRlZCBmcm9tIGEgcmVsYXRpdmUgaW1wb3J0IGluIGEgSmF2YVNjcmlwdCBzb3VyY2UgZmlsZSxcbiAgICAgIC8vIFR5cGVTY3JpcHQgbWF5IGhhdmUgcmVzb2x2ZWQgdGhlIG1vZHVsZSB0byBpdHMgLmQudHMgZGVjbGFyYXRpb24gZmlsZSBpZiB0aGUgLmpzIHNvdXJjZVxuICAgICAgLy8gZmlsZSB3YXMgaW4gdGhlIHNhbWUgZGlyZWN0b3J5LiBUaGlzIGlzIHVuZGVzaXJhYmxlLCBhcyB3ZSBuZWVkIHRvIGhhdmUgdGhlIGFjdHVhbFxuICAgICAgLy8gSmF2YVNjcmlwdCBiZWluZyBwcmVzZW50IGluIHRoZSBwcm9ncmFtLiBUaGlzIGxvZ2ljIHJlY29nbml6ZXMgdGhpcyBzY2VuYXJpbyBhbmQgcmV3cml0ZXNcbiAgICAgIC8vIHRoZSByZXNvbHZlZCAuZC50cyBkZWNsYXJhdGlvbiBmaWxlIHRvIGl0cyAuanMgY291bnRlcnBhcnQsIGlmIGl0IGV4aXN0cy5cbiAgICAgIGlmIChyZXNvbHZlZE1vZHVsZT8uZXh0ZW5zaW9uID09PSB0cy5FeHRlbnNpb24uRHRzICYmIGNvbnRhaW5pbmdGaWxlLmVuZHNXaXRoKCcuanMnKSAmJlxuICAgICAgICAgIGlzUmVsYXRpdmVQYXRoKG1vZHVsZU5hbWUpKSB7XG4gICAgICAgIGNvbnN0IGpzRmlsZSA9IHJlc29sdmVkTW9kdWxlLnJlc29sdmVkRmlsZU5hbWUucmVwbGFjZSgvXFwuZFxcLnRzJC8sICcuanMnKTtcbiAgICAgICAgaWYgKHRoaXMuZmlsZUV4aXN0cyhqc0ZpbGUpKSB7XG4gICAgICAgICAgcmV0dXJuIHsuLi5yZXNvbHZlZE1vZHVsZSwgcmVzb2x2ZWRGaWxlTmFtZToganNGaWxlLCBleHRlbnNpb246IHRzLkV4dGVuc2lvbi5Kc307XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgLy8gUHJldmVudCBsb2FkaW5nIEphdmFTY3JpcHQgc291cmNlIGZpbGVzIG91dHNpZGUgb2YgdGhlIHBhY2thZ2Ugcm9vdCwgd2hpY2ggd291bGQgaGFwcGVuIGZvclxuICAgICAgLy8gcGFja2FnZXMgdGhhdCBkb24ndCBoYXZlIC5kLnRzIGZpbGVzLiBBcyBuZ2NjIHNob3VsZCBvbmx5IG9wZXJhdGUgb24gdGhlIC5qcyBmaWxlc1xuICAgICAgLy8gY29udGFpbmVkIHdpdGhpbiB0aGUgcGFja2FnZSwgYW55IGZpbGVzIG91dHNpZGUgdGhlIHBhY2thZ2UgYXJlIHNpbXBseSBkaXNjYXJkZWQuIFRoaXMgZG9lc1xuICAgICAgLy8gcmVzdWx0IGluIGEgcGFydGlhbCBwcm9ncmFtIHdpdGggZXJyb3IgZGlhZ25vc3RpY3MsIGhvd2V2ZXIgbmdjYyB3b24ndCBnYXRoZXIgZGlhZ25vc3RpY3NcbiAgICAgIC8vIGZvciB0aGUgcHJvZ3JhbSBpdCBjcmVhdGVzIHNvIHRoZXNlIGRpYWdub3N0aWNzIHdvbid0IGJlIHJlcG9ydGVkLlxuICAgICAgaWYgKHJlc29sdmVkTW9kdWxlPy5leHRlbnNpb24gPT09IHRzLkV4dGVuc2lvbi5KcyAmJlxuICAgICAgICAgICFpc1dpdGhpblBhY2thZ2UodGhpcy5wYWNrYWdlUGF0aCwgdGhpcy5mcy5yZXNvbHZlKHJlc29sdmVkTW9kdWxlLnJlc29sdmVkRmlsZU5hbWUpKSkge1xuICAgICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgICAgfVxuXG4gICAgICByZXR1cm4gcmVzb2x2ZWRNb2R1bGU7XG4gICAgfSk7XG4gIH1cbn1cbiJdfQ==