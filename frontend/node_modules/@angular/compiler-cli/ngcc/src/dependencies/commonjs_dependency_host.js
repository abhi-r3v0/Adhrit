(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/dependencies/commonjs_dependency_host", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/ngcc/src/host/commonjs_umd_utils", "@angular/compiler-cli/ngcc/src/dependencies/dependency_host"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.hasRequireCalls = exports.CommonJsDependencyHost = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var ts = require("typescript");
    var commonjs_umd_utils_1 = require("@angular/compiler-cli/ngcc/src/host/commonjs_umd_utils");
    var dependency_host_1 = require("@angular/compiler-cli/ngcc/src/dependencies/dependency_host");
    /**
     * Helper functions for computing dependencies.
     */
    var CommonJsDependencyHost = /** @class */ (function (_super) {
        tslib_1.__extends(CommonJsDependencyHost, _super);
        function CommonJsDependencyHost() {
            return _super !== null && _super.apply(this, arguments) || this;
        }
        CommonJsDependencyHost.prototype.canSkipFile = function (fileContents) {
            return !hasRequireCalls(fileContents);
        };
        CommonJsDependencyHost.prototype.extractImports = function (file, fileContents) {
            var e_1, _a, e_2, _b;
            // Parse the source into a TypeScript AST and then walk it looking for imports and re-exports.
            var sf = ts.createSourceFile(file, fileContents, ts.ScriptTarget.ES2015, false, ts.ScriptKind.JS);
            var requireCalls = [];
            try {
                for (var _c = tslib_1.__values(sf.statements), _d = _c.next(); !_d.done; _d = _c.next()) {
                    var stmt = _d.value;
                    if (ts.isVariableStatement(stmt)) {
                        // Regular import(s):
                        // `var foo = require('...')` or `var foo = require('...'), bar = require('...')`
                        var declarations = stmt.declarationList.declarations;
                        try {
                            for (var declarations_1 = (e_2 = void 0, tslib_1.__values(declarations)), declarations_1_1 = declarations_1.next(); !declarations_1_1.done; declarations_1_1 = declarations_1.next()) {
                                var declaration = declarations_1_1.value;
                                if ((declaration.initializer !== undefined) && commonjs_umd_utils_1.isRequireCall(declaration.initializer)) {
                                    requireCalls.push(declaration.initializer);
                                }
                            }
                        }
                        catch (e_2_1) { e_2 = { error: e_2_1 }; }
                        finally {
                            try {
                                if (declarations_1_1 && !declarations_1_1.done && (_b = declarations_1.return)) _b.call(declarations_1);
                            }
                            finally { if (e_2) throw e_2.error; }
                        }
                    }
                    else if (ts.isExpressionStatement(stmt)) {
                        if (commonjs_umd_utils_1.isRequireCall(stmt.expression)) {
                            // Import for the side-effects only:
                            // `require('...')`
                            requireCalls.push(stmt.expression);
                        }
                        else if (commonjs_umd_utils_1.isWildcardReexportStatement(stmt)) {
                            // Re-export in one of the following formats:
                            // - `__export(require('...'))`
                            // - `__export(<identifier>)`
                            // - `tslib_1.__exportStar(require('...'), exports)`
                            // - `tslib_1.__exportStar(<identifier>, exports)`
                            var firstExportArg = stmt.expression.arguments[0];
                            if (commonjs_umd_utils_1.isRequireCall(firstExportArg)) {
                                // Re-export with `require()` call:
                                // `__export(require('...'))` or `tslib_1.__exportStar(require('...'), exports)`
                                requireCalls.push(firstExportArg);
                            }
                        }
                        else if (ts.isBinaryExpression(stmt.expression) &&
                            (stmt.expression.operatorToken.kind === ts.SyntaxKind.EqualsToken)) {
                            if (commonjs_umd_utils_1.isRequireCall(stmt.expression.right)) {
                                // Import with assignment. E.g.:
                                // `exports.foo = require('...')`
                                requireCalls.push(stmt.expression.right);
                            }
                            else if (ts.isObjectLiteralExpression(stmt.expression.right)) {
                                // Import in object literal. E.g.:
                                // `module.exports = {foo: require('...')}`
                                stmt.expression.right.properties.forEach(function (prop) {
                                    if (ts.isPropertyAssignment(prop) && commonjs_umd_utils_1.isRequireCall(prop.initializer)) {
                                        requireCalls.push(prop.initializer);
                                    }
                                });
                            }
                        }
                    }
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
                }
                finally { if (e_1) throw e_1.error; }
            }
            return new Set(requireCalls.map(function (call) { return call.arguments[0].text; }));
        };
        return CommonJsDependencyHost;
    }(dependency_host_1.DependencyHostBase));
    exports.CommonJsDependencyHost = CommonJsDependencyHost;
    /**
     * Check whether a source file needs to be parsed for imports.
     * This is a performance short-circuit, which saves us from creating
     * a TypeScript AST unnecessarily.
     *
     * @param source The content of the source file to check.
     *
     * @returns false if there are definitely no require calls
     * in this file, true otherwise.
     */
    function hasRequireCalls(source) {
        return /require\(['"]/.test(source);
    }
    exports.hasRequireCalls = hasRequireCalls;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29tbW9uanNfZGVwZW5kZW5jeV9ob3N0LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL25nY2Mvc3JjL2RlcGVuZGVuY2llcy9jb21tb25qc19kZXBlbmRlbmN5X2hvc3QudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztJQUFBOzs7Ozs7T0FNRztJQUNILCtCQUFpQztJQUdqQyw2RkFBbUc7SUFHbkcsK0ZBQXFEO0lBRXJEOztPQUVHO0lBQ0g7UUFBNEMsa0RBQWtCO1FBQTlEOztRQTZEQSxDQUFDO1FBNURXLDRDQUFXLEdBQXJCLFVBQXNCLFlBQW9CO1lBQ3hDLE9BQU8sQ0FBQyxlQUFlLENBQUMsWUFBWSxDQUFDLENBQUM7UUFDeEMsQ0FBQztRQUVTLCtDQUFjLEdBQXhCLFVBQXlCLElBQW9CLEVBQUUsWUFBb0I7O1lBQ2pFLDhGQUE4RjtZQUM5RixJQUFNLEVBQUUsR0FDSixFQUFFLENBQUMsZ0JBQWdCLENBQUMsSUFBSSxFQUFFLFlBQVksRUFBRSxFQUFFLENBQUMsWUFBWSxDQUFDLE1BQU0sRUFBRSxLQUFLLEVBQUUsRUFBRSxDQUFDLFVBQVUsQ0FBQyxFQUFFLENBQUMsQ0FBQztZQUM3RixJQUFNLFlBQVksR0FBa0IsRUFBRSxDQUFDOztnQkFFdkMsS0FBbUIsSUFBQSxLQUFBLGlCQUFBLEVBQUUsQ0FBQyxVQUFVLENBQUEsZ0JBQUEsNEJBQUU7b0JBQTdCLElBQU0sSUFBSSxXQUFBO29CQUNiLElBQUksRUFBRSxDQUFDLG1CQUFtQixDQUFDLElBQUksQ0FBQyxFQUFFO3dCQUNoQyxxQkFBcUI7d0JBQ3JCLGlGQUFpRjt3QkFDakYsSUFBTSxZQUFZLEdBQUcsSUFBSSxDQUFDLGVBQWUsQ0FBQyxZQUFZLENBQUM7OzRCQUN2RCxLQUEwQixJQUFBLGdDQUFBLGlCQUFBLFlBQVksQ0FBQSxDQUFBLDBDQUFBLG9FQUFFO2dDQUFuQyxJQUFNLFdBQVcseUJBQUE7Z0NBQ3BCLElBQUksQ0FBQyxXQUFXLENBQUMsV0FBVyxLQUFLLFNBQVMsQ0FBQyxJQUFJLGtDQUFhLENBQUMsV0FBVyxDQUFDLFdBQVcsQ0FBQyxFQUFFO29DQUNyRixZQUFZLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxXQUFXLENBQUMsQ0FBQztpQ0FDNUM7NkJBQ0Y7Ozs7Ozs7OztxQkFDRjt5QkFBTSxJQUFJLEVBQUUsQ0FBQyxxQkFBcUIsQ0FBQyxJQUFJLENBQUMsRUFBRTt3QkFDekMsSUFBSSxrQ0FBYSxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsRUFBRTs0QkFDbEMsb0NBQW9DOzRCQUNwQyxtQkFBbUI7NEJBQ25CLFlBQVksQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxDQUFDO3lCQUNwQzs2QkFBTSxJQUFJLGdEQUEyQixDQUFDLElBQUksQ0FBQyxFQUFFOzRCQUM1Qyw2Q0FBNkM7NEJBQzdDLCtCQUErQjs0QkFDL0IsNkJBQTZCOzRCQUM3QixvREFBb0Q7NEJBQ3BELGtEQUFrRDs0QkFDbEQsSUFBTSxjQUFjLEdBQUcsSUFBSSxDQUFDLFVBQVUsQ0FBQyxTQUFTLENBQUMsQ0FBQyxDQUFDLENBQUM7NEJBRXBELElBQUksa0NBQWEsQ0FBQyxjQUFjLENBQUMsRUFBRTtnQ0FDakMsbUNBQW1DO2dDQUNuQyxnRkFBZ0Y7Z0NBQ2hGLFlBQVksQ0FBQyxJQUFJLENBQUMsY0FBYyxDQUFDLENBQUM7NkJBQ25DO3lCQUNGOzZCQUFNLElBQ0gsRUFBRSxDQUFDLGtCQUFrQixDQUFDLElBQUksQ0FBQyxVQUFVLENBQUM7NEJBQ3RDLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxhQUFhLENBQUMsSUFBSSxLQUFLLEVBQUUsQ0FBQyxVQUFVLENBQUMsV0FBVyxDQUFDLEVBQUU7NEJBQ3RFLElBQUksa0NBQWEsQ0FBQyxJQUFJLENBQUMsVUFBVSxDQUFDLEtBQUssQ0FBQyxFQUFFO2dDQUN4QyxnQ0FBZ0M7Z0NBQ2hDLGlDQUFpQztnQ0FDakMsWUFBWSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsVUFBVSxDQUFDLEtBQUssQ0FBQyxDQUFDOzZCQUMxQztpQ0FBTSxJQUFJLEVBQUUsQ0FBQyx5QkFBeUIsQ0FBQyxJQUFJLENBQUMsVUFBVSxDQUFDLEtBQUssQ0FBQyxFQUFFO2dDQUM5RCxrQ0FBa0M7Z0NBQ2xDLDJDQUEyQztnQ0FDM0MsSUFBSSxDQUFDLFVBQVUsQ0FBQyxLQUFLLENBQUMsVUFBVSxDQUFDLE9BQU8sQ0FBQyxVQUFBLElBQUk7b0NBQzNDLElBQUksRUFBRSxDQUFDLG9CQUFvQixDQUFDLElBQUksQ0FBQyxJQUFJLGtDQUFhLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxFQUFFO3dDQUNwRSxZQUFZLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxXQUFXLENBQUMsQ0FBQztxQ0FDckM7Z0NBQ0gsQ0FBQyxDQUFDLENBQUM7NkJBQ0o7eUJBQ0Y7cUJBQ0Y7aUJBQ0Y7Ozs7Ozs7OztZQUVELE9BQU8sSUFBSSxHQUFHLENBQUMsWUFBWSxDQUFDLEdBQUcsQ0FBQyxVQUFBLElBQUksSUFBSSxPQUFBLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQyxDQUFDLENBQUMsSUFBSSxFQUF0QixDQUFzQixDQUFDLENBQUMsQ0FBQztRQUNuRSxDQUFDO1FBQ0gsNkJBQUM7SUFBRCxDQUFDLEFBN0RELENBQTRDLG9DQUFrQixHQTZEN0Q7SUE3RFksd0RBQXNCO0lBK0RuQzs7Ozs7Ozs7O09BU0c7SUFDSCxTQUFnQixlQUFlLENBQUMsTUFBYztRQUM1QyxPQUFPLGVBQWUsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUM7SUFDdEMsQ0FBQztJQUZELDBDQUVDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtBYnNvbHV0ZUZzUGF0aH0gZnJvbSAnLi4vLi4vLi4vc3JjL25ndHNjL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7aXNSZXF1aXJlQ2FsbCwgaXNXaWxkY2FyZFJlZXhwb3J0U3RhdGVtZW50LCBSZXF1aXJlQ2FsbH0gZnJvbSAnLi4vaG9zdC9jb21tb25qc191bWRfdXRpbHMnO1xuaW1wb3J0IHtpc0Fzc2lnbm1lbnQsIGlzQXNzaWdubWVudFN0YXRlbWVudH0gZnJvbSAnLi4vaG9zdC9lc20yMDE1X2hvc3QnO1xuXG5pbXBvcnQge0RlcGVuZGVuY3lIb3N0QmFzZX0gZnJvbSAnLi9kZXBlbmRlbmN5X2hvc3QnO1xuXG4vKipcbiAqIEhlbHBlciBmdW5jdGlvbnMgZm9yIGNvbXB1dGluZyBkZXBlbmRlbmNpZXMuXG4gKi9cbmV4cG9ydCBjbGFzcyBDb21tb25Kc0RlcGVuZGVuY3lIb3N0IGV4dGVuZHMgRGVwZW5kZW5jeUhvc3RCYXNlIHtcbiAgcHJvdGVjdGVkIGNhblNraXBGaWxlKGZpbGVDb250ZW50czogc3RyaW5nKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuICFoYXNSZXF1aXJlQ2FsbHMoZmlsZUNvbnRlbnRzKTtcbiAgfVxuXG4gIHByb3RlY3RlZCBleHRyYWN0SW1wb3J0cyhmaWxlOiBBYnNvbHV0ZUZzUGF0aCwgZmlsZUNvbnRlbnRzOiBzdHJpbmcpOiBTZXQ8c3RyaW5nPiB7XG4gICAgLy8gUGFyc2UgdGhlIHNvdXJjZSBpbnRvIGEgVHlwZVNjcmlwdCBBU1QgYW5kIHRoZW4gd2FsayBpdCBsb29raW5nIGZvciBpbXBvcnRzIGFuZCByZS1leHBvcnRzLlxuICAgIGNvbnN0IHNmID1cbiAgICAgICAgdHMuY3JlYXRlU291cmNlRmlsZShmaWxlLCBmaWxlQ29udGVudHMsIHRzLlNjcmlwdFRhcmdldC5FUzIwMTUsIGZhbHNlLCB0cy5TY3JpcHRLaW5kLkpTKTtcbiAgICBjb25zdCByZXF1aXJlQ2FsbHM6IFJlcXVpcmVDYWxsW10gPSBbXTtcblxuICAgIGZvciAoY29uc3Qgc3RtdCBvZiBzZi5zdGF0ZW1lbnRzKSB7XG4gICAgICBpZiAodHMuaXNWYXJpYWJsZVN0YXRlbWVudChzdG10KSkge1xuICAgICAgICAvLyBSZWd1bGFyIGltcG9ydChzKTpcbiAgICAgICAgLy8gYHZhciBmb28gPSByZXF1aXJlKCcuLi4nKWAgb3IgYHZhciBmb28gPSByZXF1aXJlKCcuLi4nKSwgYmFyID0gcmVxdWlyZSgnLi4uJylgXG4gICAgICAgIGNvbnN0IGRlY2xhcmF0aW9ucyA9IHN0bXQuZGVjbGFyYXRpb25MaXN0LmRlY2xhcmF0aW9ucztcbiAgICAgICAgZm9yIChjb25zdCBkZWNsYXJhdGlvbiBvZiBkZWNsYXJhdGlvbnMpIHtcbiAgICAgICAgICBpZiAoKGRlY2xhcmF0aW9uLmluaXRpYWxpemVyICE9PSB1bmRlZmluZWQpICYmIGlzUmVxdWlyZUNhbGwoZGVjbGFyYXRpb24uaW5pdGlhbGl6ZXIpKSB7XG4gICAgICAgICAgICByZXF1aXJlQ2FsbHMucHVzaChkZWNsYXJhdGlvbi5pbml0aWFsaXplcik7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9IGVsc2UgaWYgKHRzLmlzRXhwcmVzc2lvblN0YXRlbWVudChzdG10KSkge1xuICAgICAgICBpZiAoaXNSZXF1aXJlQ2FsbChzdG10LmV4cHJlc3Npb24pKSB7XG4gICAgICAgICAgLy8gSW1wb3J0IGZvciB0aGUgc2lkZS1lZmZlY3RzIG9ubHk6XG4gICAgICAgICAgLy8gYHJlcXVpcmUoJy4uLicpYFxuICAgICAgICAgIHJlcXVpcmVDYWxscy5wdXNoKHN0bXQuZXhwcmVzc2lvbik7XG4gICAgICAgIH0gZWxzZSBpZiAoaXNXaWxkY2FyZFJlZXhwb3J0U3RhdGVtZW50KHN0bXQpKSB7XG4gICAgICAgICAgLy8gUmUtZXhwb3J0IGluIG9uZSBvZiB0aGUgZm9sbG93aW5nIGZvcm1hdHM6XG4gICAgICAgICAgLy8gLSBgX19leHBvcnQocmVxdWlyZSgnLi4uJykpYFxuICAgICAgICAgIC8vIC0gYF9fZXhwb3J0KDxpZGVudGlmaWVyPilgXG4gICAgICAgICAgLy8gLSBgdHNsaWJfMS5fX2V4cG9ydFN0YXIocmVxdWlyZSgnLi4uJyksIGV4cG9ydHMpYFxuICAgICAgICAgIC8vIC0gYHRzbGliXzEuX19leHBvcnRTdGFyKDxpZGVudGlmaWVyPiwgZXhwb3J0cylgXG4gICAgICAgICAgY29uc3QgZmlyc3RFeHBvcnRBcmcgPSBzdG10LmV4cHJlc3Npb24uYXJndW1lbnRzWzBdO1xuXG4gICAgICAgICAgaWYgKGlzUmVxdWlyZUNhbGwoZmlyc3RFeHBvcnRBcmcpKSB7XG4gICAgICAgICAgICAvLyBSZS1leHBvcnQgd2l0aCBgcmVxdWlyZSgpYCBjYWxsOlxuICAgICAgICAgICAgLy8gYF9fZXhwb3J0KHJlcXVpcmUoJy4uLicpKWAgb3IgYHRzbGliXzEuX19leHBvcnRTdGFyKHJlcXVpcmUoJy4uLicpLCBleHBvcnRzKWBcbiAgICAgICAgICAgIHJlcXVpcmVDYWxscy5wdXNoKGZpcnN0RXhwb3J0QXJnKTtcbiAgICAgICAgICB9XG4gICAgICAgIH0gZWxzZSBpZiAoXG4gICAgICAgICAgICB0cy5pc0JpbmFyeUV4cHJlc3Npb24oc3RtdC5leHByZXNzaW9uKSAmJlxuICAgICAgICAgICAgKHN0bXQuZXhwcmVzc2lvbi5vcGVyYXRvclRva2VuLmtpbmQgPT09IHRzLlN5bnRheEtpbmQuRXF1YWxzVG9rZW4pKSB7XG4gICAgICAgICAgaWYgKGlzUmVxdWlyZUNhbGwoc3RtdC5leHByZXNzaW9uLnJpZ2h0KSkge1xuICAgICAgICAgICAgLy8gSW1wb3J0IHdpdGggYXNzaWdubWVudC4gRS5nLjpcbiAgICAgICAgICAgIC8vIGBleHBvcnRzLmZvbyA9IHJlcXVpcmUoJy4uLicpYFxuICAgICAgICAgICAgcmVxdWlyZUNhbGxzLnB1c2goc3RtdC5leHByZXNzaW9uLnJpZ2h0KTtcbiAgICAgICAgICB9IGVsc2UgaWYgKHRzLmlzT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24oc3RtdC5leHByZXNzaW9uLnJpZ2h0KSkge1xuICAgICAgICAgICAgLy8gSW1wb3J0IGluIG9iamVjdCBsaXRlcmFsLiBFLmcuOlxuICAgICAgICAgICAgLy8gYG1vZHVsZS5leHBvcnRzID0ge2ZvbzogcmVxdWlyZSgnLi4uJyl9YFxuICAgICAgICAgICAgc3RtdC5leHByZXNzaW9uLnJpZ2h0LnByb3BlcnRpZXMuZm9yRWFjaChwcm9wID0+IHtcbiAgICAgICAgICAgICAgaWYgKHRzLmlzUHJvcGVydHlBc3NpZ25tZW50KHByb3ApICYmIGlzUmVxdWlyZUNhbGwocHJvcC5pbml0aWFsaXplcikpIHtcbiAgICAgICAgICAgICAgICByZXF1aXJlQ2FsbHMucHVzaChwcm9wLmluaXRpYWxpemVyKTtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfSk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgcmV0dXJuIG5ldyBTZXQocmVxdWlyZUNhbGxzLm1hcChjYWxsID0+IGNhbGwuYXJndW1lbnRzWzBdLnRleHQpKTtcbiAgfVxufVxuXG4vKipcbiAqIENoZWNrIHdoZXRoZXIgYSBzb3VyY2UgZmlsZSBuZWVkcyB0byBiZSBwYXJzZWQgZm9yIGltcG9ydHMuXG4gKiBUaGlzIGlzIGEgcGVyZm9ybWFuY2Ugc2hvcnQtY2lyY3VpdCwgd2hpY2ggc2F2ZXMgdXMgZnJvbSBjcmVhdGluZ1xuICogYSBUeXBlU2NyaXB0IEFTVCB1bm5lY2Vzc2FyaWx5LlxuICpcbiAqIEBwYXJhbSBzb3VyY2UgVGhlIGNvbnRlbnQgb2YgdGhlIHNvdXJjZSBmaWxlIHRvIGNoZWNrLlxuICpcbiAqIEByZXR1cm5zIGZhbHNlIGlmIHRoZXJlIGFyZSBkZWZpbml0ZWx5IG5vIHJlcXVpcmUgY2FsbHNcbiAqIGluIHRoaXMgZmlsZSwgdHJ1ZSBvdGhlcndpc2UuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBoYXNSZXF1aXJlQ2FsbHMoc291cmNlOiBzdHJpbmcpOiBib29sZWFuIHtcbiAgcmV0dXJuIC9yZXF1aXJlXFwoWydcIl0vLnRlc3Qoc291cmNlKTtcbn1cbiJdfQ==