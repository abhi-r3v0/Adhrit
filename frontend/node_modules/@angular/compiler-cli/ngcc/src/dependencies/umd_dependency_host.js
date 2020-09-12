(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/dependencies/umd_dependency_host", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/ngcc/src/host/umd_host", "@angular/compiler-cli/ngcc/src/dependencies/commonjs_dependency_host", "@angular/compiler-cli/ngcc/src/dependencies/dependency_host"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.UmdDependencyHost = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var ts = require("typescript");
    var umd_host_1 = require("@angular/compiler-cli/ngcc/src/host/umd_host");
    var commonjs_dependency_host_1 = require("@angular/compiler-cli/ngcc/src/dependencies/commonjs_dependency_host");
    var dependency_host_1 = require("@angular/compiler-cli/ngcc/src/dependencies/dependency_host");
    /**
     * Helper functions for computing dependencies.
     */
    var UmdDependencyHost = /** @class */ (function (_super) {
        tslib_1.__extends(UmdDependencyHost, _super);
        function UmdDependencyHost() {
            return _super !== null && _super.apply(this, arguments) || this;
        }
        UmdDependencyHost.prototype.canSkipFile = function (fileContents) {
            return !commonjs_dependency_host_1.hasRequireCalls(fileContents);
        };
        UmdDependencyHost.prototype.extractImports = function (file, fileContents) {
            // Parse the source into a TypeScript AST and then walk it looking for imports and re-exports.
            var sf = ts.createSourceFile(file, fileContents, ts.ScriptTarget.ES2015, false, ts.ScriptKind.JS);
            if (sf.statements.length !== 1) {
                return new Set();
            }
            var umdModule = umd_host_1.parseStatementForUmdModule(sf.statements[0]);
            var umdImports = umdModule && umd_host_1.getImportsOfUmdModule(umdModule);
            if (umdImports === null) {
                return new Set();
            }
            return new Set(umdImports.map(function (i) { return i.path; }));
        };
        return UmdDependencyHost;
    }(dependency_host_1.DependencyHostBase));
    exports.UmdDependencyHost = UmdDependencyHost;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidW1kX2RlcGVuZGVuY3lfaG9zdC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9uZ2NjL3NyYy9kZXBlbmRlbmNpZXMvdW1kX2RlcGVuZGVuY3lfaG9zdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7O0lBQUE7Ozs7OztPQU1HO0lBQ0gsK0JBQWlDO0lBR2pDLHlFQUFtRjtJQUVuRixpSEFBMkQ7SUFDM0QsK0ZBQXFEO0lBRXJEOztPQUVHO0lBQ0g7UUFBdUMsNkNBQWtCO1FBQXpEOztRQXNCQSxDQUFDO1FBckJXLHVDQUFXLEdBQXJCLFVBQXNCLFlBQW9CO1lBQ3hDLE9BQU8sQ0FBQywwQ0FBZSxDQUFDLFlBQVksQ0FBQyxDQUFDO1FBQ3hDLENBQUM7UUFFUywwQ0FBYyxHQUF4QixVQUF5QixJQUFvQixFQUFFLFlBQW9CO1lBQ2pFLDhGQUE4RjtZQUM5RixJQUFNLEVBQUUsR0FDSixFQUFFLENBQUMsZ0JBQWdCLENBQUMsSUFBSSxFQUFFLFlBQVksRUFBRSxFQUFFLENBQUMsWUFBWSxDQUFDLE1BQU0sRUFBRSxLQUFLLEVBQUUsRUFBRSxDQUFDLFVBQVUsQ0FBQyxFQUFFLENBQUMsQ0FBQztZQUU3RixJQUFJLEVBQUUsQ0FBQyxVQUFVLENBQUMsTUFBTSxLQUFLLENBQUMsRUFBRTtnQkFDOUIsT0FBTyxJQUFJLEdBQUcsRUFBRSxDQUFDO2FBQ2xCO1lBRUQsSUFBTSxTQUFTLEdBQUcscUNBQTBCLENBQUMsRUFBRSxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1lBQy9ELElBQU0sVUFBVSxHQUFHLFNBQVMsSUFBSSxnQ0FBcUIsQ0FBQyxTQUFTLENBQUMsQ0FBQztZQUNqRSxJQUFJLFVBQVUsS0FBSyxJQUFJLEVBQUU7Z0JBQ3ZCLE9BQU8sSUFBSSxHQUFHLEVBQUUsQ0FBQzthQUNsQjtZQUVELE9BQU8sSUFBSSxHQUFHLENBQUMsVUFBVSxDQUFDLEdBQUcsQ0FBQyxVQUFBLENBQUMsSUFBSSxPQUFBLENBQUMsQ0FBQyxJQUFJLEVBQU4sQ0FBTSxDQUFDLENBQUMsQ0FBQztRQUM5QyxDQUFDO1FBQ0gsd0JBQUM7SUFBRCxDQUFDLEFBdEJELENBQXVDLG9DQUFrQixHQXNCeEQ7SUF0QlksOENBQWlCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtBYnNvbHV0ZUZzUGF0aH0gZnJvbSAnLi4vLi4vLi4vc3JjL25ndHNjL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7Z2V0SW1wb3J0c09mVW1kTW9kdWxlLCBwYXJzZVN0YXRlbWVudEZvclVtZE1vZHVsZX0gZnJvbSAnLi4vaG9zdC91bWRfaG9zdCc7XG5cbmltcG9ydCB7aGFzUmVxdWlyZUNhbGxzfSBmcm9tICcuL2NvbW1vbmpzX2RlcGVuZGVuY3lfaG9zdCc7XG5pbXBvcnQge0RlcGVuZGVuY3lIb3N0QmFzZX0gZnJvbSAnLi9kZXBlbmRlbmN5X2hvc3QnO1xuXG4vKipcbiAqIEhlbHBlciBmdW5jdGlvbnMgZm9yIGNvbXB1dGluZyBkZXBlbmRlbmNpZXMuXG4gKi9cbmV4cG9ydCBjbGFzcyBVbWREZXBlbmRlbmN5SG9zdCBleHRlbmRzIERlcGVuZGVuY3lIb3N0QmFzZSB7XG4gIHByb3RlY3RlZCBjYW5Ta2lwRmlsZShmaWxlQ29udGVudHM6IHN0cmluZyk6IGJvb2xlYW4ge1xuICAgIHJldHVybiAhaGFzUmVxdWlyZUNhbGxzKGZpbGVDb250ZW50cyk7XG4gIH1cblxuICBwcm90ZWN0ZWQgZXh0cmFjdEltcG9ydHMoZmlsZTogQWJzb2x1dGVGc1BhdGgsIGZpbGVDb250ZW50czogc3RyaW5nKTogU2V0PHN0cmluZz4ge1xuICAgIC8vIFBhcnNlIHRoZSBzb3VyY2UgaW50byBhIFR5cGVTY3JpcHQgQVNUIGFuZCB0aGVuIHdhbGsgaXQgbG9va2luZyBmb3IgaW1wb3J0cyBhbmQgcmUtZXhwb3J0cy5cbiAgICBjb25zdCBzZiA9XG4gICAgICAgIHRzLmNyZWF0ZVNvdXJjZUZpbGUoZmlsZSwgZmlsZUNvbnRlbnRzLCB0cy5TY3JpcHRUYXJnZXQuRVMyMDE1LCBmYWxzZSwgdHMuU2NyaXB0S2luZC5KUyk7XG5cbiAgICBpZiAoc2Yuc3RhdGVtZW50cy5sZW5ndGggIT09IDEpIHtcbiAgICAgIHJldHVybiBuZXcgU2V0KCk7XG4gICAgfVxuXG4gICAgY29uc3QgdW1kTW9kdWxlID0gcGFyc2VTdGF0ZW1lbnRGb3JVbWRNb2R1bGUoc2Yuc3RhdGVtZW50c1swXSk7XG4gICAgY29uc3QgdW1kSW1wb3J0cyA9IHVtZE1vZHVsZSAmJiBnZXRJbXBvcnRzT2ZVbWRNb2R1bGUodW1kTW9kdWxlKTtcbiAgICBpZiAodW1kSW1wb3J0cyA9PT0gbnVsbCkge1xuICAgICAgcmV0dXJuIG5ldyBTZXQoKTtcbiAgICB9XG5cbiAgICByZXR1cm4gbmV3IFNldCh1bWRJbXBvcnRzLm1hcChpID0+IGkucGF0aCkpO1xuICB9XG59XG4iXX0=