/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
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
        define("@angular/core/schematics/migrations/undecorated-classes-with-di/decorator_rewrite/source_file_exports", ["require", "exports", "typescript", "@angular/core/schematics/utils/typescript/symbol"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const ts = require("typescript");
    const symbol_1 = require("@angular/core/schematics/utils/typescript/symbol");
    /** Computes the resolved exports of a given source file. */
    function getExportSymbolsOfFile(sf, typeChecker) {
        const exports = [];
        const resolvedExports = [];
        ts.forEachChild(sf, function visitNode(node) {
            if (ts.isClassDeclaration(node) || ts.isFunctionDeclaration(node) ||
                ts.isInterfaceDeclaration(node) &&
                    (ts.getCombinedModifierFlags(node) & ts.ModifierFlags.Export) !== 0) {
                if (node.name) {
                    exports.push({ exportName: node.name.text, identifier: node.name });
                }
            }
            else if (ts.isVariableStatement(node)) {
                for (const decl of node.declarationList.declarations) {
                    visitNode(decl);
                }
            }
            else if (ts.isVariableDeclaration(node)) {
                if ((ts.getCombinedModifierFlags(node) & ts.ModifierFlags.Export) != 0 &&
                    ts.isIdentifier(node.name)) {
                    exports.push({ exportName: node.name.text, identifier: node.name });
                }
            }
            else if (ts.isExportDeclaration(node)) {
                const { moduleSpecifier, exportClause } = node;
                if (!moduleSpecifier && exportClause) {
                    exportClause.elements.forEach(el => exports.push({
                        exportName: el.name.text,
                        identifier: el.propertyName ? el.propertyName : el.name
                    }));
                }
            }
        });
        exports.forEach(({ identifier, exportName }) => {
            const symbol = symbol_1.getValueSymbolOfDeclaration(identifier, typeChecker);
            if (symbol) {
                resolvedExports.push({ symbol, identifier, exportName });
            }
        });
        return resolvedExports;
    }
    exports.getExportSymbolsOfFile = getExportSymbolsOfFile;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic291cmNlX2ZpbGVfZXhwb3J0cy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc2NoZW1hdGljcy9taWdyYXRpb25zL3VuZGVjb3JhdGVkLWNsYXNzZXMtd2l0aC1kaS9kZWNvcmF0b3JfcmV3cml0ZS9zb3VyY2VfZmlsZV9leHBvcnRzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7O0lBRUgsaUNBQWlDO0lBQ2pDLDZFQUE2RTtJQVE3RSw0REFBNEQ7SUFDNUQsU0FBZ0Isc0JBQXNCLENBQ2xDLEVBQWlCLEVBQUUsV0FBMkI7UUFDaEQsTUFBTSxPQUFPLEdBQXNELEVBQUUsQ0FBQztRQUN0RSxNQUFNLGVBQWUsR0FBcUIsRUFBRSxDQUFDO1FBRTdDLEVBQUUsQ0FBQyxZQUFZLENBQUMsRUFBRSxFQUFFLFNBQVMsU0FBUyxDQUFDLElBQUk7WUFDekMsSUFBSSxFQUFFLENBQUMsa0JBQWtCLENBQUMsSUFBSSxDQUFDLElBQUksRUFBRSxDQUFDLHFCQUFxQixDQUFDLElBQUksQ0FBQztnQkFDN0QsRUFBRSxDQUFDLHNCQUFzQixDQUFDLElBQUksQ0FBQztvQkFDM0IsQ0FBQyxFQUFFLENBQUMsd0JBQXdCLENBQUMsSUFBc0IsQ0FBQyxHQUFHLEVBQUUsQ0FBQyxhQUFhLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyxFQUFFO2dCQUM3RixJQUFJLElBQUksQ0FBQyxJQUFJLEVBQUU7b0JBQ2IsT0FBTyxDQUFDLElBQUksQ0FBQyxFQUFDLFVBQVUsRUFBRSxJQUFJLENBQUMsSUFBSSxDQUFDLElBQUksRUFBRSxVQUFVLEVBQUUsSUFBSSxDQUFDLElBQUksRUFBQyxDQUFDLENBQUM7aUJBQ25FO2FBQ0Y7aUJBQU0sSUFBSSxFQUFFLENBQUMsbUJBQW1CLENBQUMsSUFBSSxDQUFDLEVBQUU7Z0JBQ3ZDLEtBQUssTUFBTSxJQUFJLElBQUksSUFBSSxDQUFDLGVBQWUsQ0FBQyxZQUFZLEVBQUU7b0JBQ3BELFNBQVMsQ0FBQyxJQUFJLENBQUMsQ0FBQztpQkFDakI7YUFDRjtpQkFBTSxJQUFJLEVBQUUsQ0FBQyxxQkFBcUIsQ0FBQyxJQUFJLENBQUMsRUFBRTtnQkFDekMsSUFBSSxDQUFDLEVBQUUsQ0FBQyx3QkFBd0IsQ0FBQyxJQUFJLENBQUMsR0FBRyxFQUFFLENBQUMsYUFBYSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUM7b0JBQ2xFLEVBQUUsQ0FBQyxZQUFZLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxFQUFFO29CQUM5QixPQUFPLENBQUMsSUFBSSxDQUFDLEVBQUMsVUFBVSxFQUFFLElBQUksQ0FBQyxJQUFJLENBQUMsSUFBSSxFQUFFLFVBQVUsRUFBRSxJQUFJLENBQUMsSUFBSSxFQUFDLENBQUMsQ0FBQztpQkFDbkU7YUFDRjtpQkFBTSxJQUFJLEVBQUUsQ0FBQyxtQkFBbUIsQ0FBQyxJQUFJLENBQUMsRUFBRTtnQkFDdkMsTUFBTSxFQUFDLGVBQWUsRUFBRSxZQUFZLEVBQUMsR0FBRyxJQUFJLENBQUM7Z0JBQzdDLElBQUksQ0FBQyxlQUFlLElBQUksWUFBWSxFQUFFO29CQUNwQyxZQUFZLENBQUMsUUFBUSxDQUFDLE9BQU8sQ0FBQyxFQUFFLENBQUMsRUFBRSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUM7d0JBQy9DLFVBQVUsRUFBRSxFQUFFLENBQUMsSUFBSSxDQUFDLElBQUk7d0JBQ3hCLFVBQVUsRUFBRSxFQUFFLENBQUMsWUFBWSxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsWUFBWSxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsSUFBSTtxQkFDeEQsQ0FBQyxDQUFDLENBQUM7aUJBQ0w7YUFDRjtRQUNILENBQUMsQ0FBQyxDQUFDO1FBRUgsT0FBTyxDQUFDLE9BQU8sQ0FBQyxDQUFDLEVBQUMsVUFBVSxFQUFFLFVBQVUsRUFBQyxFQUFFLEVBQUU7WUFDM0MsTUFBTSxNQUFNLEdBQUcsb0NBQTJCLENBQUMsVUFBVSxFQUFFLFdBQVcsQ0FBQyxDQUFDO1lBQ3BFLElBQUksTUFBTSxFQUFFO2dCQUNWLGVBQWUsQ0FBQyxJQUFJLENBQUMsRUFBQyxNQUFNLEVBQUUsVUFBVSxFQUFFLFVBQVUsRUFBQyxDQUFDLENBQUM7YUFDeEQ7UUFDSCxDQUFDLENBQUMsQ0FBQztRQUVILE9BQU8sZUFBZSxDQUFDO0lBQ3pCLENBQUM7SUF4Q0Qsd0RBd0NDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcbmltcG9ydCB7Z2V0VmFsdWVTeW1ib2xPZkRlY2xhcmF0aW9ufSBmcm9tICcuLi8uLi8uLi91dGlscy90eXBlc2NyaXB0L3N5bWJvbCc7XG5cbmV4cG9ydCBpbnRlcmZhY2UgUmVzb2x2ZWRFeHBvcnQge1xuICBzeW1ib2w6IHRzLlN5bWJvbDtcbiAgZXhwb3J0TmFtZTogc3RyaW5nO1xuICBpZGVudGlmaWVyOiB0cy5JZGVudGlmaWVyO1xufVxuXG4vKiogQ29tcHV0ZXMgdGhlIHJlc29sdmVkIGV4cG9ydHMgb2YgYSBnaXZlbiBzb3VyY2UgZmlsZS4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRFeHBvcnRTeW1ib2xzT2ZGaWxlKFxuICAgIHNmOiB0cy5Tb3VyY2VGaWxlLCB0eXBlQ2hlY2tlcjogdHMuVHlwZUNoZWNrZXIpOiBSZXNvbHZlZEV4cG9ydFtdIHtcbiAgY29uc3QgZXhwb3J0czoge2V4cG9ydE5hbWU6IHN0cmluZywgaWRlbnRpZmllcjogdHMuSWRlbnRpZmllcn1bXSA9IFtdO1xuICBjb25zdCByZXNvbHZlZEV4cG9ydHM6IFJlc29sdmVkRXhwb3J0W10gPSBbXTtcblxuICB0cy5mb3JFYWNoQ2hpbGQoc2YsIGZ1bmN0aW9uIHZpc2l0Tm9kZShub2RlKSB7XG4gICAgaWYgKHRzLmlzQ2xhc3NEZWNsYXJhdGlvbihub2RlKSB8fCB0cy5pc0Z1bmN0aW9uRGVjbGFyYXRpb24obm9kZSkgfHxcbiAgICAgICAgdHMuaXNJbnRlcmZhY2VEZWNsYXJhdGlvbihub2RlKSAmJlxuICAgICAgICAgICAgKHRzLmdldENvbWJpbmVkTW9kaWZpZXJGbGFncyhub2RlIGFzIHRzLkRlY2xhcmF0aW9uKSAmIHRzLk1vZGlmaWVyRmxhZ3MuRXhwb3J0KSAhPT0gMCkge1xuICAgICAgaWYgKG5vZGUubmFtZSkge1xuICAgICAgICBleHBvcnRzLnB1c2goe2V4cG9ydE5hbWU6IG5vZGUubmFtZS50ZXh0LCBpZGVudGlmaWVyOiBub2RlLm5hbWV9KTtcbiAgICAgIH1cbiAgICB9IGVsc2UgaWYgKHRzLmlzVmFyaWFibGVTdGF0ZW1lbnQobm9kZSkpIHtcbiAgICAgIGZvciAoY29uc3QgZGVjbCBvZiBub2RlLmRlY2xhcmF0aW9uTGlzdC5kZWNsYXJhdGlvbnMpIHtcbiAgICAgICAgdmlzaXROb2RlKGRlY2wpO1xuICAgICAgfVxuICAgIH0gZWxzZSBpZiAodHMuaXNWYXJpYWJsZURlY2xhcmF0aW9uKG5vZGUpKSB7XG4gICAgICBpZiAoKHRzLmdldENvbWJpbmVkTW9kaWZpZXJGbGFncyhub2RlKSAmIHRzLk1vZGlmaWVyRmxhZ3MuRXhwb3J0KSAhPSAwICYmXG4gICAgICAgICAgdHMuaXNJZGVudGlmaWVyKG5vZGUubmFtZSkpIHtcbiAgICAgICAgZXhwb3J0cy5wdXNoKHtleHBvcnROYW1lOiBub2RlLm5hbWUudGV4dCwgaWRlbnRpZmllcjogbm9kZS5uYW1lfSk7XG4gICAgICB9XG4gICAgfSBlbHNlIGlmICh0cy5pc0V4cG9ydERlY2xhcmF0aW9uKG5vZGUpKSB7XG4gICAgICBjb25zdCB7bW9kdWxlU3BlY2lmaWVyLCBleHBvcnRDbGF1c2V9ID0gbm9kZTtcbiAgICAgIGlmICghbW9kdWxlU3BlY2lmaWVyICYmIGV4cG9ydENsYXVzZSkge1xuICAgICAgICBleHBvcnRDbGF1c2UuZWxlbWVudHMuZm9yRWFjaChlbCA9PiBleHBvcnRzLnB1c2goe1xuICAgICAgICAgIGV4cG9ydE5hbWU6IGVsLm5hbWUudGV4dCxcbiAgICAgICAgICBpZGVudGlmaWVyOiBlbC5wcm9wZXJ0eU5hbWUgPyBlbC5wcm9wZXJ0eU5hbWUgOiBlbC5uYW1lXG4gICAgICAgIH0pKTtcbiAgICAgIH1cbiAgICB9XG4gIH0pO1xuXG4gIGV4cG9ydHMuZm9yRWFjaCgoe2lkZW50aWZpZXIsIGV4cG9ydE5hbWV9KSA9PiB7XG4gICAgY29uc3Qgc3ltYm9sID0gZ2V0VmFsdWVTeW1ib2xPZkRlY2xhcmF0aW9uKGlkZW50aWZpZXIsIHR5cGVDaGVja2VyKTtcbiAgICBpZiAoc3ltYm9sKSB7XG4gICAgICByZXNvbHZlZEV4cG9ydHMucHVzaCh7c3ltYm9sLCBpZGVudGlmaWVyLCBleHBvcnROYW1lfSk7XG4gICAgfVxuICB9KTtcblxuICByZXR1cm4gcmVzb2x2ZWRFeHBvcnRzO1xufVxuIl19