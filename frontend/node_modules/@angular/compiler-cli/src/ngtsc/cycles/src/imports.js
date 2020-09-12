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
        define("@angular/compiler-cli/src/ngtsc/cycles/src/imports", ["require", "exports", "typescript"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.ImportGraph = void 0;
    var ts = require("typescript");
    /**
     * A cached graph of imports in the `ts.Program`.
     *
     * The `ImportGraph` keeps track of dependencies (imports) of individual `ts.SourceFile`s. Only
     * dependencies within the same program are tracked; imports into packages on NPM are not.
     */
    var ImportGraph = /** @class */ (function () {
        function ImportGraph(resolver) {
            this.resolver = resolver;
            this.map = new Map();
        }
        /**
         * List the direct (not transitive) imports of a given `ts.SourceFile`.
         *
         * This operation is cached.
         */
        ImportGraph.prototype.importsOf = function (sf) {
            if (!this.map.has(sf)) {
                this.map.set(sf, this.scanImports(sf));
            }
            return this.map.get(sf);
        };
        /**
         * Lists the transitive imports of a given `ts.SourceFile`.
         */
        ImportGraph.prototype.transitiveImportsOf = function (sf) {
            var imports = new Set();
            this.transitiveImportsOfHelper(sf, imports);
            return imports;
        };
        ImportGraph.prototype.transitiveImportsOfHelper = function (sf, results) {
            var _this = this;
            if (results.has(sf)) {
                return;
            }
            results.add(sf);
            this.importsOf(sf).forEach(function (imported) {
                _this.transitiveImportsOfHelper(imported, results);
            });
        };
        /**
         * Add a record of an import from `sf` to `imported`, that's not present in the original
         * `ts.Program` but will be remembered by the `ImportGraph`.
         */
        ImportGraph.prototype.addSyntheticImport = function (sf, imported) {
            if (isLocalFile(imported)) {
                this.importsOf(sf).add(imported);
            }
        };
        ImportGraph.prototype.scanImports = function (sf) {
            var _this = this;
            var imports = new Set();
            // Look through the source file for import statements.
            sf.statements.forEach(function (stmt) {
                if ((ts.isImportDeclaration(stmt) || ts.isExportDeclaration(stmt)) &&
                    stmt.moduleSpecifier !== undefined && ts.isStringLiteral(stmt.moduleSpecifier)) {
                    // Resolve the module to a file, and check whether that file is in the ts.Program.
                    var moduleName = stmt.moduleSpecifier.text;
                    var moduleFile = _this.resolver.resolveModule(moduleName, sf.fileName);
                    if (moduleFile !== null && isLocalFile(moduleFile)) {
                        // Record this local import.
                        imports.add(moduleFile);
                    }
                }
            });
            return imports;
        };
        return ImportGraph;
    }());
    exports.ImportGraph = ImportGraph;
    function isLocalFile(sf) {
        return !sf.fileName.endsWith('.d.ts');
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW1wb3J0cy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvY3ljbGVzL3NyYy9pbXBvcnRzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQUVILCtCQUFpQztJQUlqQzs7Ozs7T0FLRztJQUNIO1FBR0UscUJBQW9CLFFBQXdCO1lBQXhCLGFBQVEsR0FBUixRQUFRLENBQWdCO1lBRnBDLFFBQUcsR0FBRyxJQUFJLEdBQUcsRUFBcUMsQ0FBQztRQUVaLENBQUM7UUFFaEQ7Ozs7V0FJRztRQUNILCtCQUFTLEdBQVQsVUFBVSxFQUFpQjtZQUN6QixJQUFJLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEVBQUU7Z0JBQ3JCLElBQUksQ0FBQyxHQUFHLENBQUMsR0FBRyxDQUFDLEVBQUUsRUFBRSxJQUFJLENBQUMsV0FBVyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUM7YUFDeEM7WUFDRCxPQUFPLElBQUksQ0FBQyxHQUFHLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBRSxDQUFDO1FBQzNCLENBQUM7UUFFRDs7V0FFRztRQUNILHlDQUFtQixHQUFuQixVQUFvQixFQUFpQjtZQUNuQyxJQUFNLE9BQU8sR0FBRyxJQUFJLEdBQUcsRUFBaUIsQ0FBQztZQUN6QyxJQUFJLENBQUMseUJBQXlCLENBQUMsRUFBRSxFQUFFLE9BQU8sQ0FBQyxDQUFDO1lBQzVDLE9BQU8sT0FBTyxDQUFDO1FBQ2pCLENBQUM7UUFFTywrQ0FBeUIsR0FBakMsVUFBa0MsRUFBaUIsRUFBRSxPQUEyQjtZQUFoRixpQkFRQztZQVBDLElBQUksT0FBTyxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsRUFBRTtnQkFDbkIsT0FBTzthQUNSO1lBQ0QsT0FBTyxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsQ0FBQztZQUNoQixJQUFJLENBQUMsU0FBUyxDQUFDLEVBQUUsQ0FBQyxDQUFDLE9BQU8sQ0FBQyxVQUFBLFFBQVE7Z0JBQ2pDLEtBQUksQ0FBQyx5QkFBeUIsQ0FBQyxRQUFRLEVBQUUsT0FBTyxDQUFDLENBQUM7WUFDcEQsQ0FBQyxDQUFDLENBQUM7UUFDTCxDQUFDO1FBRUQ7OztXQUdHO1FBQ0gsd0NBQWtCLEdBQWxCLFVBQW1CLEVBQWlCLEVBQUUsUUFBdUI7WUFDM0QsSUFBSSxXQUFXLENBQUMsUUFBUSxDQUFDLEVBQUU7Z0JBQ3pCLElBQUksQ0FBQyxTQUFTLENBQUMsRUFBRSxDQUFDLENBQUMsR0FBRyxDQUFDLFFBQVEsQ0FBQyxDQUFDO2FBQ2xDO1FBQ0gsQ0FBQztRQUVPLGlDQUFXLEdBQW5CLFVBQW9CLEVBQWlCO1lBQXJDLGlCQWdCQztZQWZDLElBQU0sT0FBTyxHQUFHLElBQUksR0FBRyxFQUFpQixDQUFDO1lBQ3pDLHNEQUFzRDtZQUN0RCxFQUFFLENBQUMsVUFBVSxDQUFDLE9BQU8sQ0FBQyxVQUFBLElBQUk7Z0JBQ3hCLElBQUksQ0FBQyxFQUFFLENBQUMsbUJBQW1CLENBQUMsSUFBSSxDQUFDLElBQUksRUFBRSxDQUFDLG1CQUFtQixDQUFDLElBQUksQ0FBQyxDQUFDO29CQUM5RCxJQUFJLENBQUMsZUFBZSxLQUFLLFNBQVMsSUFBSSxFQUFFLENBQUMsZUFBZSxDQUFDLElBQUksQ0FBQyxlQUFlLENBQUMsRUFBRTtvQkFDbEYsa0ZBQWtGO29CQUNsRixJQUFNLFVBQVUsR0FBRyxJQUFJLENBQUMsZUFBZSxDQUFDLElBQUksQ0FBQztvQkFDN0MsSUFBTSxVQUFVLEdBQUcsS0FBSSxDQUFDLFFBQVEsQ0FBQyxhQUFhLENBQUMsVUFBVSxFQUFFLEVBQUUsQ0FBQyxRQUFRLENBQUMsQ0FBQztvQkFDeEUsSUFBSSxVQUFVLEtBQUssSUFBSSxJQUFJLFdBQVcsQ0FBQyxVQUFVLENBQUMsRUFBRTt3QkFDbEQsNEJBQTRCO3dCQUM1QixPQUFPLENBQUMsR0FBRyxDQUFDLFVBQVUsQ0FBQyxDQUFDO3FCQUN6QjtpQkFDRjtZQUNILENBQUMsQ0FBQyxDQUFDO1lBQ0gsT0FBTyxPQUFPLENBQUM7UUFDakIsQ0FBQztRQUNILGtCQUFDO0lBQUQsQ0FBQyxBQS9ERCxJQStEQztJQS9EWSxrQ0FBVztJQWlFeEIsU0FBUyxXQUFXLENBQUMsRUFBaUI7UUFDcEMsT0FBTyxDQUFDLEVBQUUsQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLE9BQU8sQ0FBQyxDQUFDO0lBQ3hDLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7TW9kdWxlUmVzb2x2ZXJ9IGZyb20gJy4uLy4uL2ltcG9ydHMnO1xuXG4vKipcbiAqIEEgY2FjaGVkIGdyYXBoIG9mIGltcG9ydHMgaW4gdGhlIGB0cy5Qcm9ncmFtYC5cbiAqXG4gKiBUaGUgYEltcG9ydEdyYXBoYCBrZWVwcyB0cmFjayBvZiBkZXBlbmRlbmNpZXMgKGltcG9ydHMpIG9mIGluZGl2aWR1YWwgYHRzLlNvdXJjZUZpbGVgcy4gT25seVxuICogZGVwZW5kZW5jaWVzIHdpdGhpbiB0aGUgc2FtZSBwcm9ncmFtIGFyZSB0cmFja2VkOyBpbXBvcnRzIGludG8gcGFja2FnZXMgb24gTlBNIGFyZSBub3QuXG4gKi9cbmV4cG9ydCBjbGFzcyBJbXBvcnRHcmFwaCB7XG4gIHByaXZhdGUgbWFwID0gbmV3IE1hcDx0cy5Tb3VyY2VGaWxlLCBTZXQ8dHMuU291cmNlRmlsZT4+KCk7XG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSByZXNvbHZlcjogTW9kdWxlUmVzb2x2ZXIpIHt9XG5cbiAgLyoqXG4gICAqIExpc3QgdGhlIGRpcmVjdCAobm90IHRyYW5zaXRpdmUpIGltcG9ydHMgb2YgYSBnaXZlbiBgdHMuU291cmNlRmlsZWAuXG4gICAqXG4gICAqIFRoaXMgb3BlcmF0aW9uIGlzIGNhY2hlZC5cbiAgICovXG4gIGltcG9ydHNPZihzZjogdHMuU291cmNlRmlsZSk6IFNldDx0cy5Tb3VyY2VGaWxlPiB7XG4gICAgaWYgKCF0aGlzLm1hcC5oYXMoc2YpKSB7XG4gICAgICB0aGlzLm1hcC5zZXQoc2YsIHRoaXMuc2NhbkltcG9ydHMoc2YpKTtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMubWFwLmdldChzZikhO1xuICB9XG5cbiAgLyoqXG4gICAqIExpc3RzIHRoZSB0cmFuc2l0aXZlIGltcG9ydHMgb2YgYSBnaXZlbiBgdHMuU291cmNlRmlsZWAuXG4gICAqL1xuICB0cmFuc2l0aXZlSW1wb3J0c09mKHNmOiB0cy5Tb3VyY2VGaWxlKTogU2V0PHRzLlNvdXJjZUZpbGU+IHtcbiAgICBjb25zdCBpbXBvcnRzID0gbmV3IFNldDx0cy5Tb3VyY2VGaWxlPigpO1xuICAgIHRoaXMudHJhbnNpdGl2ZUltcG9ydHNPZkhlbHBlcihzZiwgaW1wb3J0cyk7XG4gICAgcmV0dXJuIGltcG9ydHM7XG4gIH1cblxuICBwcml2YXRlIHRyYW5zaXRpdmVJbXBvcnRzT2ZIZWxwZXIoc2Y6IHRzLlNvdXJjZUZpbGUsIHJlc3VsdHM6IFNldDx0cy5Tb3VyY2VGaWxlPik6IHZvaWQge1xuICAgIGlmIChyZXN1bHRzLmhhcyhzZikpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgcmVzdWx0cy5hZGQoc2YpO1xuICAgIHRoaXMuaW1wb3J0c09mKHNmKS5mb3JFYWNoKGltcG9ydGVkID0+IHtcbiAgICAgIHRoaXMudHJhbnNpdGl2ZUltcG9ydHNPZkhlbHBlcihpbXBvcnRlZCwgcmVzdWx0cyk7XG4gICAgfSk7XG4gIH1cblxuICAvKipcbiAgICogQWRkIGEgcmVjb3JkIG9mIGFuIGltcG9ydCBmcm9tIGBzZmAgdG8gYGltcG9ydGVkYCwgdGhhdCdzIG5vdCBwcmVzZW50IGluIHRoZSBvcmlnaW5hbFxuICAgKiBgdHMuUHJvZ3JhbWAgYnV0IHdpbGwgYmUgcmVtZW1iZXJlZCBieSB0aGUgYEltcG9ydEdyYXBoYC5cbiAgICovXG4gIGFkZFN5bnRoZXRpY0ltcG9ydChzZjogdHMuU291cmNlRmlsZSwgaW1wb3J0ZWQ6IHRzLlNvdXJjZUZpbGUpOiB2b2lkIHtcbiAgICBpZiAoaXNMb2NhbEZpbGUoaW1wb3J0ZWQpKSB7XG4gICAgICB0aGlzLmltcG9ydHNPZihzZikuYWRkKGltcG9ydGVkKTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIHNjYW5JbXBvcnRzKHNmOiB0cy5Tb3VyY2VGaWxlKTogU2V0PHRzLlNvdXJjZUZpbGU+IHtcbiAgICBjb25zdCBpbXBvcnRzID0gbmV3IFNldDx0cy5Tb3VyY2VGaWxlPigpO1xuICAgIC8vIExvb2sgdGhyb3VnaCB0aGUgc291cmNlIGZpbGUgZm9yIGltcG9ydCBzdGF0ZW1lbnRzLlxuICAgIHNmLnN0YXRlbWVudHMuZm9yRWFjaChzdG10ID0+IHtcbiAgICAgIGlmICgodHMuaXNJbXBvcnREZWNsYXJhdGlvbihzdG10KSB8fCB0cy5pc0V4cG9ydERlY2xhcmF0aW9uKHN0bXQpKSAmJlxuICAgICAgICAgIHN0bXQubW9kdWxlU3BlY2lmaWVyICE9PSB1bmRlZmluZWQgJiYgdHMuaXNTdHJpbmdMaXRlcmFsKHN0bXQubW9kdWxlU3BlY2lmaWVyKSkge1xuICAgICAgICAvLyBSZXNvbHZlIHRoZSBtb2R1bGUgdG8gYSBmaWxlLCBhbmQgY2hlY2sgd2hldGhlciB0aGF0IGZpbGUgaXMgaW4gdGhlIHRzLlByb2dyYW0uXG4gICAgICAgIGNvbnN0IG1vZHVsZU5hbWUgPSBzdG10Lm1vZHVsZVNwZWNpZmllci50ZXh0O1xuICAgICAgICBjb25zdCBtb2R1bGVGaWxlID0gdGhpcy5yZXNvbHZlci5yZXNvbHZlTW9kdWxlKG1vZHVsZU5hbWUsIHNmLmZpbGVOYW1lKTtcbiAgICAgICAgaWYgKG1vZHVsZUZpbGUgIT09IG51bGwgJiYgaXNMb2NhbEZpbGUobW9kdWxlRmlsZSkpIHtcbiAgICAgICAgICAvLyBSZWNvcmQgdGhpcyBsb2NhbCBpbXBvcnQuXG4gICAgICAgICAgaW1wb3J0cy5hZGQobW9kdWxlRmlsZSk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9KTtcbiAgICByZXR1cm4gaW1wb3J0cztcbiAgfVxufVxuXG5mdW5jdGlvbiBpc0xvY2FsRmlsZShzZjogdHMuU291cmNlRmlsZSk6IGJvb2xlYW4ge1xuICByZXR1cm4gIXNmLmZpbGVOYW1lLmVuZHNXaXRoKCcuZC50cycpO1xufVxuIl19