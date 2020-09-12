(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/rendering/esm5_rendering_formatter", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/ngtsc/imports", "@angular/compiler-cli/src/ngtsc/translator", "@angular/compiler-cli/ngcc/src/host/esm2015_host", "@angular/compiler-cli/ngcc/src/rendering/esm_rendering_formatter"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.Esm5RenderingFormatter = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    var imports_1 = require("@angular/compiler-cli/src/ngtsc/imports");
    var translator_1 = require("@angular/compiler-cli/src/ngtsc/translator");
    var esm2015_host_1 = require("@angular/compiler-cli/ngcc/src/host/esm2015_host");
    var esm_rendering_formatter_1 = require("@angular/compiler-cli/ngcc/src/rendering/esm_rendering_formatter");
    /**
     * A RenderingFormatter that works with files that use ECMAScript Module `import` and `export`
     * statements, but instead of `class` declarations it uses ES5 `function` wrappers for classes.
     */
    var Esm5RenderingFormatter = /** @class */ (function (_super) {
        tslib_1.__extends(Esm5RenderingFormatter, _super);
        function Esm5RenderingFormatter() {
            return _super !== null && _super.apply(this, arguments) || this;
        }
        /**
         * Add the definitions, directly before the return statement, inside the IIFE of each decorated
         * class.
         */
        Esm5RenderingFormatter.prototype.addDefinitions = function (output, compiledClass, definitions) {
            var classSymbol = this.host.getClassSymbol(compiledClass.declaration);
            if (!classSymbol) {
                throw new Error("Compiled class \"" + compiledClass.name + "\" in \"" + compiledClass.declaration.getSourceFile()
                    .fileName + "\" does not have a valid syntax.\n" +
                    "Expected an ES5 IIFE wrapped function. But got:\n" +
                    compiledClass.declaration.getText());
            }
            var declarationStatement = esm2015_host_1.getContainingStatement(classSymbol.implementation.valueDeclaration);
            var iifeBody = declarationStatement.parent;
            if (!iifeBody || !ts.isBlock(iifeBody)) {
                throw new Error("Compiled class declaration is not inside an IIFE: " + compiledClass.name + " in " + compiledClass.declaration.getSourceFile().fileName);
            }
            var returnStatement = iifeBody.statements.find(ts.isReturnStatement);
            if (!returnStatement) {
                throw new Error("Compiled class wrapper IIFE does not have a return statement: " + compiledClass.name + " in " + compiledClass.declaration.getSourceFile().fileName);
            }
            var insertionPoint = returnStatement.getFullStart();
            output.appendLeft(insertionPoint, '\n' + definitions);
        };
        /**
         * Convert a `Statement` to JavaScript code in a format suitable for rendering by this formatter.
         *
         * @param stmt The `Statement` to print.
         * @param sourceFile A `ts.SourceFile` that provides context for the statement. See
         *     `ts.Printer#printNode()` for more info.
         * @param importManager The `ImportManager` to use for managing imports.
         *
         * @return The JavaScript code corresponding to `stmt` (in the appropriate format).
         */
        Esm5RenderingFormatter.prototype.printStatement = function (stmt, sourceFile, importManager) {
            var node = translator_1.translateStatement(stmt, importManager, imports_1.NOOP_DEFAULT_IMPORT_RECORDER, ts.ScriptTarget.ES5);
            var code = this.printer.printNode(ts.EmitHint.Unspecified, node, sourceFile);
            return code;
        };
        return Esm5RenderingFormatter;
    }(esm_rendering_formatter_1.EsmRenderingFormatter));
    exports.Esm5RenderingFormatter = Esm5RenderingFormatter;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXNtNV9yZW5kZXJpbmdfZm9ybWF0dGVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL25nY2Mvc3JjL3JlbmRlcmluZy9lc201X3JlbmRlcmluZ19mb3JtYXR0ZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztJQVNBLCtCQUFpQztJQUVqQyxtRUFBd0U7SUFDeEUseUVBQWdGO0lBRWhGLGlGQUE0RDtJQUU1RCw0R0FBZ0U7SUFFaEU7OztPQUdHO0lBQ0g7UUFBNEMsa0RBQXFCO1FBQWpFOztRQW1EQSxDQUFDO1FBbERDOzs7V0FHRztRQUNILCtDQUFjLEdBQWQsVUFBZSxNQUFtQixFQUFFLGFBQTRCLEVBQUUsV0FBbUI7WUFDbkYsSUFBTSxXQUFXLEdBQUcsSUFBSSxDQUFDLElBQUksQ0FBQyxjQUFjLENBQUMsYUFBYSxDQUFDLFdBQVcsQ0FBQyxDQUFDO1lBQ3hFLElBQUksQ0FBQyxXQUFXLEVBQUU7Z0JBQ2hCLE1BQU0sSUFBSSxLQUFLLENBQ1gsc0JBQW1CLGFBQWEsQ0FBQyxJQUFJLGdCQUNqQyxhQUFhLENBQUMsV0FBVyxDQUFDLGFBQWEsRUFBRTtxQkFDcEMsUUFBUSx1Q0FBbUM7b0JBQ3BELG1EQUFtRDtvQkFDbkQsYUFBYSxDQUFDLFdBQVcsQ0FBQyxPQUFPLEVBQUUsQ0FBQyxDQUFDO2FBQzFDO1lBQ0QsSUFBTSxvQkFBb0IsR0FDdEIscUNBQXNCLENBQUMsV0FBVyxDQUFDLGNBQWMsQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDO1lBRXhFLElBQU0sUUFBUSxHQUFHLG9CQUFvQixDQUFDLE1BQU0sQ0FBQztZQUM3QyxJQUFJLENBQUMsUUFBUSxJQUFJLENBQUMsRUFBRSxDQUFDLE9BQU8sQ0FBQyxRQUFRLENBQUMsRUFBRTtnQkFDdEMsTUFBTSxJQUFJLEtBQUssQ0FBQyx1REFBcUQsYUFBYSxDQUFDLElBQUksWUFDbkYsYUFBYSxDQUFDLFdBQVcsQ0FBQyxhQUFhLEVBQUUsQ0FBQyxRQUFVLENBQUMsQ0FBQzthQUMzRDtZQUVELElBQU0sZUFBZSxHQUFHLFFBQVEsQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxpQkFBaUIsQ0FBQyxDQUFDO1lBQ3ZFLElBQUksQ0FBQyxlQUFlLEVBQUU7Z0JBQ3BCLE1BQU0sSUFBSSxLQUFLLENBQUMsbUVBQ1osYUFBYSxDQUFDLElBQUksWUFBTyxhQUFhLENBQUMsV0FBVyxDQUFDLGFBQWEsRUFBRSxDQUFDLFFBQVUsQ0FBQyxDQUFDO2FBQ3BGO1lBRUQsSUFBTSxjQUFjLEdBQUcsZUFBZSxDQUFDLFlBQVksRUFBRSxDQUFDO1lBQ3RELE1BQU0sQ0FBQyxVQUFVLENBQUMsY0FBYyxFQUFFLElBQUksR0FBRyxXQUFXLENBQUMsQ0FBQztRQUN4RCxDQUFDO1FBRUQ7Ozs7Ozs7OztXQVNHO1FBQ0gsK0NBQWMsR0FBZCxVQUFlLElBQWUsRUFBRSxVQUF5QixFQUFFLGFBQTRCO1lBQ3JGLElBQU0sSUFBSSxHQUNOLCtCQUFrQixDQUFDLElBQUksRUFBRSxhQUFhLEVBQUUsc0NBQTRCLEVBQUUsRUFBRSxDQUFDLFlBQVksQ0FBQyxHQUFHLENBQUMsQ0FBQztZQUMvRixJQUFNLElBQUksR0FBRyxJQUFJLENBQUMsT0FBTyxDQUFDLFNBQVMsQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLFdBQVcsRUFBRSxJQUFJLEVBQUUsVUFBVSxDQUFDLENBQUM7WUFFL0UsT0FBTyxJQUFJLENBQUM7UUFDZCxDQUFDO1FBQ0gsNkJBQUM7SUFBRCxDQUFDLEFBbkRELENBQTRDLCtDQUFxQixHQW1EaEU7SUFuRFksd0RBQXNCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQge1N0YXRlbWVudH0gZnJvbSAnQGFuZ3VsYXIvY29tcGlsZXInO1xuaW1wb3J0IE1hZ2ljU3RyaW5nIGZyb20gJ21hZ2ljLXN0cmluZyc7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtOT09QX0RFRkFVTFRfSU1QT1JUX1JFQ09SREVSfSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvaW1wb3J0cyc7XG5pbXBvcnQge0ltcG9ydE1hbmFnZXIsIHRyYW5zbGF0ZVN0YXRlbWVudH0gZnJvbSAnLi4vLi4vLi4vc3JjL25ndHNjL3RyYW5zbGF0b3InO1xuaW1wb3J0IHtDb21waWxlZENsYXNzfSBmcm9tICcuLi9hbmFseXNpcy90eXBlcyc7XG5pbXBvcnQge2dldENvbnRhaW5pbmdTdGF0ZW1lbnR9IGZyb20gJy4uL2hvc3QvZXNtMjAxNV9ob3N0JztcblxuaW1wb3J0IHtFc21SZW5kZXJpbmdGb3JtYXR0ZXJ9IGZyb20gJy4vZXNtX3JlbmRlcmluZ19mb3JtYXR0ZXInO1xuXG4vKipcbiAqIEEgUmVuZGVyaW5nRm9ybWF0dGVyIHRoYXQgd29ya3Mgd2l0aCBmaWxlcyB0aGF0IHVzZSBFQ01BU2NyaXB0IE1vZHVsZSBgaW1wb3J0YCBhbmQgYGV4cG9ydGBcbiAqIHN0YXRlbWVudHMsIGJ1dCBpbnN0ZWFkIG9mIGBjbGFzc2AgZGVjbGFyYXRpb25zIGl0IHVzZXMgRVM1IGBmdW5jdGlvbmAgd3JhcHBlcnMgZm9yIGNsYXNzZXMuXG4gKi9cbmV4cG9ydCBjbGFzcyBFc201UmVuZGVyaW5nRm9ybWF0dGVyIGV4dGVuZHMgRXNtUmVuZGVyaW5nRm9ybWF0dGVyIHtcbiAgLyoqXG4gICAqIEFkZCB0aGUgZGVmaW5pdGlvbnMsIGRpcmVjdGx5IGJlZm9yZSB0aGUgcmV0dXJuIHN0YXRlbWVudCwgaW5zaWRlIHRoZSBJSUZFIG9mIGVhY2ggZGVjb3JhdGVkXG4gICAqIGNsYXNzLlxuICAgKi9cbiAgYWRkRGVmaW5pdGlvbnMob3V0cHV0OiBNYWdpY1N0cmluZywgY29tcGlsZWRDbGFzczogQ29tcGlsZWRDbGFzcywgZGVmaW5pdGlvbnM6IHN0cmluZyk6IHZvaWQge1xuICAgIGNvbnN0IGNsYXNzU3ltYm9sID0gdGhpcy5ob3N0LmdldENsYXNzU3ltYm9sKGNvbXBpbGVkQ2xhc3MuZGVjbGFyYXRpb24pO1xuICAgIGlmICghY2xhc3NTeW1ib2wpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICBgQ29tcGlsZWQgY2xhc3MgXCIke2NvbXBpbGVkQ2xhc3MubmFtZX1cIiBpbiBcIiR7XG4gICAgICAgICAgICAgIGNvbXBpbGVkQ2xhc3MuZGVjbGFyYXRpb24uZ2V0U291cmNlRmlsZSgpXG4gICAgICAgICAgICAgICAgICAuZmlsZU5hbWV9XCIgZG9lcyBub3QgaGF2ZSBhIHZhbGlkIHN5bnRheC5cXG5gICtcbiAgICAgICAgICBgRXhwZWN0ZWQgYW4gRVM1IElJRkUgd3JhcHBlZCBmdW5jdGlvbi4gQnV0IGdvdDpcXG5gICtcbiAgICAgICAgICBjb21waWxlZENsYXNzLmRlY2xhcmF0aW9uLmdldFRleHQoKSk7XG4gICAgfVxuICAgIGNvbnN0IGRlY2xhcmF0aW9uU3RhdGVtZW50ID1cbiAgICAgICAgZ2V0Q29udGFpbmluZ1N0YXRlbWVudChjbGFzc1N5bWJvbC5pbXBsZW1lbnRhdGlvbi52YWx1ZURlY2xhcmF0aW9uKTtcblxuICAgIGNvbnN0IGlpZmVCb2R5ID0gZGVjbGFyYXRpb25TdGF0ZW1lbnQucGFyZW50O1xuICAgIGlmICghaWlmZUJvZHkgfHwgIXRzLmlzQmxvY2soaWlmZUJvZHkpKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoYENvbXBpbGVkIGNsYXNzIGRlY2xhcmF0aW9uIGlzIG5vdCBpbnNpZGUgYW4gSUlGRTogJHtjb21waWxlZENsYXNzLm5hbWV9IGluICR7XG4gICAgICAgICAgY29tcGlsZWRDbGFzcy5kZWNsYXJhdGlvbi5nZXRTb3VyY2VGaWxlKCkuZmlsZU5hbWV9YCk7XG4gICAgfVxuXG4gICAgY29uc3QgcmV0dXJuU3RhdGVtZW50ID0gaWlmZUJvZHkuc3RhdGVtZW50cy5maW5kKHRzLmlzUmV0dXJuU3RhdGVtZW50KTtcbiAgICBpZiAoIXJldHVyblN0YXRlbWVudCkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGBDb21waWxlZCBjbGFzcyB3cmFwcGVyIElJRkUgZG9lcyBub3QgaGF2ZSBhIHJldHVybiBzdGF0ZW1lbnQ6ICR7XG4gICAgICAgICAgY29tcGlsZWRDbGFzcy5uYW1lfSBpbiAke2NvbXBpbGVkQ2xhc3MuZGVjbGFyYXRpb24uZ2V0U291cmNlRmlsZSgpLmZpbGVOYW1lfWApO1xuICAgIH1cblxuICAgIGNvbnN0IGluc2VydGlvblBvaW50ID0gcmV0dXJuU3RhdGVtZW50LmdldEZ1bGxTdGFydCgpO1xuICAgIG91dHB1dC5hcHBlbmRMZWZ0KGluc2VydGlvblBvaW50LCAnXFxuJyArIGRlZmluaXRpb25zKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBDb252ZXJ0IGEgYFN0YXRlbWVudGAgdG8gSmF2YVNjcmlwdCBjb2RlIGluIGEgZm9ybWF0IHN1aXRhYmxlIGZvciByZW5kZXJpbmcgYnkgdGhpcyBmb3JtYXR0ZXIuXG4gICAqXG4gICAqIEBwYXJhbSBzdG10IFRoZSBgU3RhdGVtZW50YCB0byBwcmludC5cbiAgICogQHBhcmFtIHNvdXJjZUZpbGUgQSBgdHMuU291cmNlRmlsZWAgdGhhdCBwcm92aWRlcyBjb250ZXh0IGZvciB0aGUgc3RhdGVtZW50LiBTZWVcbiAgICogICAgIGB0cy5QcmludGVyI3ByaW50Tm9kZSgpYCBmb3IgbW9yZSBpbmZvLlxuICAgKiBAcGFyYW0gaW1wb3J0TWFuYWdlciBUaGUgYEltcG9ydE1hbmFnZXJgIHRvIHVzZSBmb3IgbWFuYWdpbmcgaW1wb3J0cy5cbiAgICpcbiAgICogQHJldHVybiBUaGUgSmF2YVNjcmlwdCBjb2RlIGNvcnJlc3BvbmRpbmcgdG8gYHN0bXRgIChpbiB0aGUgYXBwcm9wcmlhdGUgZm9ybWF0KS5cbiAgICovXG4gIHByaW50U3RhdGVtZW50KHN0bXQ6IFN0YXRlbWVudCwgc291cmNlRmlsZTogdHMuU291cmNlRmlsZSwgaW1wb3J0TWFuYWdlcjogSW1wb3J0TWFuYWdlcik6IHN0cmluZyB7XG4gICAgY29uc3Qgbm9kZSA9XG4gICAgICAgIHRyYW5zbGF0ZVN0YXRlbWVudChzdG10LCBpbXBvcnRNYW5hZ2VyLCBOT09QX0RFRkFVTFRfSU1QT1JUX1JFQ09SREVSLCB0cy5TY3JpcHRUYXJnZXQuRVM1KTtcbiAgICBjb25zdCBjb2RlID0gdGhpcy5wcmludGVyLnByaW50Tm9kZSh0cy5FbWl0SGludC5VbnNwZWNpZmllZCwgbm9kZSwgc291cmNlRmlsZSk7XG5cbiAgICByZXR1cm4gY29kZTtcbiAgfVxufVxuIl19