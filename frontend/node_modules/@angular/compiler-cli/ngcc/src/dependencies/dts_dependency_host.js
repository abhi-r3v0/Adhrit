(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/dependencies/dts_dependency_host", ["require", "exports", "tslib", "@angular/compiler-cli/ngcc/src/dependencies/esm_dependency_host", "@angular/compiler-cli/ngcc/src/dependencies/module_resolver"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.DtsDependencyHost = void 0;
    var tslib_1 = require("tslib");
    var esm_dependency_host_1 = require("@angular/compiler-cli/ngcc/src/dependencies/esm_dependency_host");
    var module_resolver_1 = require("@angular/compiler-cli/ngcc/src/dependencies/module_resolver");
    /**
     * Helper functions for computing dependencies via typings files.
     */
    var DtsDependencyHost = /** @class */ (function (_super) {
        tslib_1.__extends(DtsDependencyHost, _super);
        function DtsDependencyHost(fs, pathMappings) {
            return _super.call(this, fs, new module_resolver_1.ModuleResolver(fs, pathMappings, ['', '.d.ts', '/index.d.ts', '.js', '/index.js']), false) || this;
        }
        /**
         * Attempts to process the `importPath` directly and also inside `@types/...`.
         */
        DtsDependencyHost.prototype.processImport = function (importPath, file, dependencies, missing, deepImports, alreadySeen) {
            return _super.prototype.processImport.call(this, importPath, file, dependencies, missing, deepImports, alreadySeen) ||
                _super.prototype.processImport.call(this, "@types/" + importPath, file, dependencies, missing, deepImports, alreadySeen);
        };
        return DtsDependencyHost;
    }(esm_dependency_host_1.EsmDependencyHost));
    exports.DtsDependencyHost = DtsDependencyHost;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZHRzX2RlcGVuZGVuY3lfaG9zdC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9uZ2NjL3NyYy9kZXBlbmRlbmNpZXMvZHRzX2RlcGVuZGVuY3lfaG9zdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7O0lBU0EsdUdBQXdEO0lBQ3hELCtGQUFpRDtJQUVqRDs7T0FFRztJQUNIO1FBQXVDLDZDQUFpQjtRQUN0RCwyQkFBWSxFQUFjLEVBQUUsWUFBMkI7bUJBQ3JELGtCQUNJLEVBQUUsRUFBRSxJQUFJLGdDQUFjLENBQUMsRUFBRSxFQUFFLFlBQVksRUFBRSxDQUFDLEVBQUUsRUFBRSxPQUFPLEVBQUUsYUFBYSxFQUFFLEtBQUssRUFBRSxXQUFXLENBQUMsQ0FBQyxFQUMxRixLQUFLLENBQUM7UUFDWixDQUFDO1FBRUQ7O1dBRUc7UUFDTyx5Q0FBYSxHQUF2QixVQUNJLFVBQWtCLEVBQUUsSUFBb0IsRUFBRSxZQUFpQyxFQUMzRSxPQUFvQixFQUFFLFdBQXdCLEVBQUUsV0FBZ0M7WUFDbEYsT0FBTyxpQkFBTSxhQUFhLFlBQUMsVUFBVSxFQUFFLElBQUksRUFBRSxZQUFZLEVBQUUsT0FBTyxFQUFFLFdBQVcsRUFBRSxXQUFXLENBQUM7Z0JBQ3pGLGlCQUFNLGFBQWEsWUFDZixZQUFVLFVBQVksRUFBRSxJQUFJLEVBQUUsWUFBWSxFQUFFLE9BQU8sRUFBRSxXQUFXLEVBQUUsV0FBVyxDQUFDLENBQUM7UUFDekYsQ0FBQztRQUNILHdCQUFDO0lBQUQsQ0FBQyxBQWpCRCxDQUF1Qyx1Q0FBaUIsR0FpQnZEO0lBakJZLDhDQUFpQiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IHtBYnNvbHV0ZUZzUGF0aCwgRmlsZVN5c3RlbX0gZnJvbSAnLi4vLi4vLi4vc3JjL25ndHNjL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7UGF0aE1hcHBpbmdzfSBmcm9tICcuLi9wYXRoX21hcHBpbmdzJztcbmltcG9ydCB7RXNtRGVwZW5kZW5jeUhvc3R9IGZyb20gJy4vZXNtX2RlcGVuZGVuY3lfaG9zdCc7XG5pbXBvcnQge01vZHVsZVJlc29sdmVyfSBmcm9tICcuL21vZHVsZV9yZXNvbHZlcic7XG5cbi8qKlxuICogSGVscGVyIGZ1bmN0aW9ucyBmb3IgY29tcHV0aW5nIGRlcGVuZGVuY2llcyB2aWEgdHlwaW5ncyBmaWxlcy5cbiAqL1xuZXhwb3J0IGNsYXNzIER0c0RlcGVuZGVuY3lIb3N0IGV4dGVuZHMgRXNtRGVwZW5kZW5jeUhvc3Qge1xuICBjb25zdHJ1Y3RvcihmczogRmlsZVN5c3RlbSwgcGF0aE1hcHBpbmdzPzogUGF0aE1hcHBpbmdzKSB7XG4gICAgc3VwZXIoXG4gICAgICAgIGZzLCBuZXcgTW9kdWxlUmVzb2x2ZXIoZnMsIHBhdGhNYXBwaW5ncywgWycnLCAnLmQudHMnLCAnL2luZGV4LmQudHMnLCAnLmpzJywgJy9pbmRleC5qcyddKSxcbiAgICAgICAgZmFsc2UpO1xuICB9XG5cbiAgLyoqXG4gICAqIEF0dGVtcHRzIHRvIHByb2Nlc3MgdGhlIGBpbXBvcnRQYXRoYCBkaXJlY3RseSBhbmQgYWxzbyBpbnNpZGUgYEB0eXBlcy8uLi5gLlxuICAgKi9cbiAgcHJvdGVjdGVkIHByb2Nlc3NJbXBvcnQoXG4gICAgICBpbXBvcnRQYXRoOiBzdHJpbmcsIGZpbGU6IEFic29sdXRlRnNQYXRoLCBkZXBlbmRlbmNpZXM6IFNldDxBYnNvbHV0ZUZzUGF0aD4sXG4gICAgICBtaXNzaW5nOiBTZXQ8c3RyaW5nPiwgZGVlcEltcG9ydHM6IFNldDxzdHJpbmc+LCBhbHJlYWR5U2VlbjogU2V0PEFic29sdXRlRnNQYXRoPik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBzdXBlci5wcm9jZXNzSW1wb3J0KGltcG9ydFBhdGgsIGZpbGUsIGRlcGVuZGVuY2llcywgbWlzc2luZywgZGVlcEltcG9ydHMsIGFscmVhZHlTZWVuKSB8fFxuICAgICAgICBzdXBlci5wcm9jZXNzSW1wb3J0KFxuICAgICAgICAgICAgYEB0eXBlcy8ke2ltcG9ydFBhdGh9YCwgZmlsZSwgZGVwZW5kZW5jaWVzLCBtaXNzaW5nLCBkZWVwSW1wb3J0cywgYWxyZWFkeVNlZW4pO1xuICB9XG59XG4iXX0=