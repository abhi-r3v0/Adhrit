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
        define("@angular/compiler-cli/src/ngtsc/transform/src/alias", ["require", "exports", "tslib", "typescript"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.aliasTransformFactory = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    function aliasTransformFactory(exportStatements) {
        return function (context) {
            return function (file) {
                if (ts.isBundle(file) || !exportStatements.has(file.fileName)) {
                    return file;
                }
                var statements = tslib_1.__spread(file.statements);
                exportStatements.get(file.fileName).forEach(function (_a, aliasName) {
                    var _b = tslib_1.__read(_a, 2), moduleName = _b[0], symbolName = _b[1];
                    var stmt = ts.createExportDeclaration(
                    /* decorators */ undefined, 
                    /* modifiers */ undefined, 
                    /* exportClause */ ts.createNamedExports([ts.createExportSpecifier(
                        /* propertyName */ symbolName, 
                        /* name */ aliasName)]), 
                    /* moduleSpecifier */ ts.createStringLiteral(moduleName));
                    statements.push(stmt);
                });
                file = ts.getMutableClone(file);
                file.statements = ts.createNodeArray(statements);
                return file;
            };
        };
    }
    exports.aliasTransformFactory = aliasTransformFactory;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYWxpYXMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3RyYW5zZm9ybS9zcmMvYWxpYXMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUVILCtCQUFpQztJQUVqQyxTQUFnQixxQkFBcUIsQ0FBQyxnQkFBNEQ7UUFFaEcsT0FBTyxVQUFDLE9BQWlDO1lBQ3ZDLE9BQU8sVUFBQyxJQUFtQjtnQkFDekIsSUFBSSxFQUFFLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUMsRUFBRTtvQkFDN0QsT0FBTyxJQUFJLENBQUM7aUJBQ2I7Z0JBRUQsSUFBTSxVQUFVLG9CQUFPLElBQUksQ0FBQyxVQUFVLENBQUMsQ0FBQztnQkFDeEMsZ0JBQWdCLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUUsQ0FBQyxPQUFPLENBQUMsVUFBQyxFQUF3QixFQUFFLFNBQVM7d0JBQW5DLEtBQUEscUJBQXdCLEVBQXZCLFVBQVUsUUFBQSxFQUFFLFVBQVUsUUFBQTtvQkFDbkUsSUFBTSxJQUFJLEdBQUcsRUFBRSxDQUFDLHVCQUF1QjtvQkFDbkMsZ0JBQWdCLENBQUMsU0FBUztvQkFDMUIsZUFBZSxDQUFDLFNBQVM7b0JBQ3pCLGtCQUFrQixDQUFDLEVBQUUsQ0FBQyxrQkFBa0IsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxxQkFBcUI7d0JBQzlELGtCQUFrQixDQUFDLFVBQVU7d0JBQzdCLFVBQVUsQ0FBQyxTQUFTLENBQUMsQ0FBQyxDQUFDO29CQUMzQixxQkFBcUIsQ0FBQyxFQUFFLENBQUMsbUJBQW1CLENBQUMsVUFBVSxDQUFDLENBQUMsQ0FBQztvQkFDOUQsVUFBVSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztnQkFDeEIsQ0FBQyxDQUFDLENBQUM7Z0JBRUgsSUFBSSxHQUFHLEVBQUUsQ0FBQyxlQUFlLENBQUMsSUFBSSxDQUFDLENBQUM7Z0JBQ2hDLElBQUksQ0FBQyxVQUFVLEdBQUcsRUFBRSxDQUFDLGVBQWUsQ0FBQyxVQUFVLENBQUMsQ0FBQztnQkFDakQsT0FBTyxJQUFJLENBQUM7WUFDZCxDQUFDLENBQUM7UUFDSixDQUFDLENBQUM7SUFDSixDQUFDO0lBekJELHNEQXlCQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuZXhwb3J0IGZ1bmN0aW9uIGFsaWFzVHJhbnNmb3JtRmFjdG9yeShleHBvcnRTdGF0ZW1lbnRzOiBNYXA8c3RyaW5nLCBNYXA8c3RyaW5nLCBbc3RyaW5nLCBzdHJpbmddPj4pOlxuICAgIHRzLlRyYW5zZm9ybWVyRmFjdG9yeTx0cy5Tb3VyY2VGaWxlPiB7XG4gIHJldHVybiAoY29udGV4dDogdHMuVHJhbnNmb3JtYXRpb25Db250ZXh0KSA9PiB7XG4gICAgcmV0dXJuIChmaWxlOiB0cy5Tb3VyY2VGaWxlKSA9PiB7XG4gICAgICBpZiAodHMuaXNCdW5kbGUoZmlsZSkgfHwgIWV4cG9ydFN0YXRlbWVudHMuaGFzKGZpbGUuZmlsZU5hbWUpKSB7XG4gICAgICAgIHJldHVybiBmaWxlO1xuICAgICAgfVxuXG4gICAgICBjb25zdCBzdGF0ZW1lbnRzID0gWy4uLmZpbGUuc3RhdGVtZW50c107XG4gICAgICBleHBvcnRTdGF0ZW1lbnRzLmdldChmaWxlLmZpbGVOYW1lKSEuZm9yRWFjaCgoW21vZHVsZU5hbWUsIHN5bWJvbE5hbWVdLCBhbGlhc05hbWUpID0+IHtcbiAgICAgICAgY29uc3Qgc3RtdCA9IHRzLmNyZWF0ZUV4cG9ydERlY2xhcmF0aW9uKFxuICAgICAgICAgICAgLyogZGVjb3JhdG9ycyAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICAvKiBtb2RpZmllcnMgKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgLyogZXhwb3J0Q2xhdXNlICovIHRzLmNyZWF0ZU5hbWVkRXhwb3J0cyhbdHMuY3JlYXRlRXhwb3J0U3BlY2lmaWVyKFxuICAgICAgICAgICAgICAgIC8qIHByb3BlcnR5TmFtZSAqLyBzeW1ib2xOYW1lLFxuICAgICAgICAgICAgICAgIC8qIG5hbWUgKi8gYWxpYXNOYW1lKV0pLFxuICAgICAgICAgICAgLyogbW9kdWxlU3BlY2lmaWVyICovIHRzLmNyZWF0ZVN0cmluZ0xpdGVyYWwobW9kdWxlTmFtZSkpO1xuICAgICAgICBzdGF0ZW1lbnRzLnB1c2goc3RtdCk7XG4gICAgICB9KTtcblxuICAgICAgZmlsZSA9IHRzLmdldE11dGFibGVDbG9uZShmaWxlKTtcbiAgICAgIGZpbGUuc3RhdGVtZW50cyA9IHRzLmNyZWF0ZU5vZGVBcnJheShzdGF0ZW1lbnRzKTtcbiAgICAgIHJldHVybiBmaWxlO1xuICAgIH07XG4gIH07XG59XG4iXX0=