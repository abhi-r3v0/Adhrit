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
        define("@angular/compiler-cli/ngcc/src/host/commonjs_umd_utils", ["require", "exports", "typescript"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.isExternalImport = exports.isRequireCall = exports.extractGetterFnExpression = exports.isDefinePropertyReexportStatement = exports.isWildcardReexportStatement = exports.isExportStatement = exports.findRequireCallReference = exports.findNamespaceOfIdentifier = void 0;
    var ts = require("typescript");
    /**
     * Return the "namespace" of the specified `ts.Identifier` if the identifier is the RHS of a
     * property access expression, i.e. an expression of the form `<namespace>.<id>` (in which case a
     * `ts.Identifier` corresponding to `<namespace>` will be returned). Otherwise return `null`.
     */
    function findNamespaceOfIdentifier(id) {
        return id.parent && ts.isPropertyAccessExpression(id.parent) && id.parent.name === id &&
            ts.isIdentifier(id.parent.expression) ?
            id.parent.expression :
            null;
    }
    exports.findNamespaceOfIdentifier = findNamespaceOfIdentifier;
    /**
     * Return the `RequireCall` that is used to initialize the specified `ts.Identifier`, if the
     * specified indentifier was indeed initialized with a require call in a declaration of the form:
     * `var <id> = require('...')`
     */
    function findRequireCallReference(id, checker) {
        var symbol = checker.getSymbolAtLocation(id) || null;
        var declaration = symbol && symbol.valueDeclaration;
        var initializer = declaration && ts.isVariableDeclaration(declaration) && declaration.initializer || null;
        return initializer && isRequireCall(initializer) ? initializer : null;
    }
    exports.findRequireCallReference = findRequireCallReference;
    /**
     * Check whether the specified `ts.Statement` is an export statement, i.e. an expression statement
     * of the form: `exports.<foo> = <bar>`
     */
    function isExportStatement(stmt) {
        return ts.isExpressionStatement(stmt) && ts.isBinaryExpression(stmt.expression) &&
            (stmt.expression.operatorToken.kind === ts.SyntaxKind.EqualsToken) &&
            ts.isPropertyAccessExpression(stmt.expression.left) &&
            ts.isIdentifier(stmt.expression.left.expression) &&
            stmt.expression.left.expression.text === 'exports';
    }
    exports.isExportStatement = isExportStatement;
    /**
     * Check whether the specified `ts.Statement` is a wildcard re-export statement.
     * I.E. an expression statement of one of the following forms:
     * - `__export(<foo>)`
     * - `__exportStar(<foo>)`
     * - `tslib.__export(<foo>, exports)`
     * - `tslib.__exportStar(<foo>, exports)`
     */
    function isWildcardReexportStatement(stmt) {
        // Ensure it is a call expression statement.
        if (!ts.isExpressionStatement(stmt) || !ts.isCallExpression(stmt.expression)) {
            return false;
        }
        // Get the called function identifier.
        // NOTE: Currently, it seems that `__export()` is used when emitting helpers inline and
        //       `__exportStar()` when importing them
        //       ([source](https://github.com/microsoft/TypeScript/blob/d7c83f023/src/compiler/transformers/module/module.ts#L1796-L1797)).
        //       So, theoretically, we only care about the formats `__export(<foo>)` and
        //       `tslib.__exportStar(<foo>, exports)`.
        //       The current implementation accepts the other two formats (`__exportStar(...)` and
        //       `tslib.__export(...)`) as well to be more future-proof (given that it is unlikely that
        //       they will introduce false positives).
        var fnName = null;
        if (ts.isIdentifier(stmt.expression.expression)) {
            // Statement of the form `someFn(...)`.
            fnName = stmt.expression.expression.text;
        }
        else if (ts.isPropertyAccessExpression(stmt.expression.expression) &&
            ts.isIdentifier(stmt.expression.expression.name)) {
            // Statement of the form `tslib.someFn(...)`.
            fnName = stmt.expression.expression.name.text;
        }
        // Ensure the called function is either `__export()` or `__exportStar()`.
        if ((fnName !== '__export') && (fnName !== '__exportStar')) {
            return false;
        }
        // Ensure there is at least one argument.
        // (The first argument is the exported thing and there will be a second `exports` argument in the
        // case of imported helpers).
        return stmt.expression.arguments.length > 0;
    }
    exports.isWildcardReexportStatement = isWildcardReexportStatement;
    /**
     * Check whether the statement is a re-export of the form:
     *
     * ```
     * Object.defineProperty(exports, "<export-name>",
     *     { enumerable: true, get: function () { return <import-name>; } });
     * ```
     */
    function isDefinePropertyReexportStatement(stmt) {
        if (!ts.isExpressionStatement(stmt) || !ts.isCallExpression(stmt.expression)) {
            return false;
        }
        // Check for Object.defineProperty
        if (!ts.isPropertyAccessExpression(stmt.expression.expression) ||
            !ts.isIdentifier(stmt.expression.expression.expression) ||
            stmt.expression.expression.expression.text !== 'Object' ||
            !ts.isIdentifier(stmt.expression.expression.name) ||
            stmt.expression.expression.name.text !== 'defineProperty') {
            return false;
        }
        var args = stmt.expression.arguments;
        if (args.length !== 3) {
            return false;
        }
        var exportsObject = args[0];
        if (!ts.isIdentifier(exportsObject) || exportsObject.text !== 'exports') {
            return false;
        }
        var propertyKey = args[1];
        if (!ts.isStringLiteral(propertyKey)) {
            return false;
        }
        var propertyDescriptor = args[2];
        if (!ts.isObjectLiteralExpression(propertyDescriptor)) {
            return false;
        }
        return (propertyDescriptor.properties.some(function (prop) { return prop.name !== undefined && ts.isIdentifier(prop.name) && prop.name.text === 'get'; }));
    }
    exports.isDefinePropertyReexportStatement = isDefinePropertyReexportStatement;
    function extractGetterFnExpression(statement) {
        var args = statement.expression.arguments;
        var getterFn = args[2].properties.find(function (prop) { return prop.name !== undefined && ts.isIdentifier(prop.name) && prop.name.text === 'get'; });
        if (getterFn === undefined || !ts.isPropertyAssignment(getterFn) ||
            !ts.isFunctionExpression(getterFn.initializer)) {
            return null;
        }
        var returnStatement = getterFn.initializer.body.statements[0];
        if (!ts.isReturnStatement(returnStatement) || returnStatement.expression === undefined) {
            return null;
        }
        return returnStatement.expression;
    }
    exports.extractGetterFnExpression = extractGetterFnExpression;
    /**
     * Check whether the specified `ts.Node` represents a `require()` call, i.e. an call expression of
     * the form: `require('<foo>')`
     */
    function isRequireCall(node) {
        return ts.isCallExpression(node) && ts.isIdentifier(node.expression) &&
            node.expression.text === 'require' && node.arguments.length === 1 &&
            ts.isStringLiteral(node.arguments[0]);
    }
    exports.isRequireCall = isRequireCall;
    function isExternalImport(path) {
        return !/^\.\.?(\/|$)/.test(path);
    }
    exports.isExternalImport = isExternalImport;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29tbW9uanNfdW1kX3V0aWxzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL25nY2Mvc3JjL2hvc3QvY29tbW9uanNfdW1kX3V0aWxzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQUVILCtCQUFpQztJQTBEakM7Ozs7T0FJRztJQUNILFNBQWdCLHlCQUF5QixDQUFDLEVBQWlCO1FBQ3pELE9BQU8sRUFBRSxDQUFDLE1BQU0sSUFBSSxFQUFFLENBQUMsMEJBQTBCLENBQUMsRUFBRSxDQUFDLE1BQU0sQ0FBQyxJQUFJLEVBQUUsQ0FBQyxNQUFNLENBQUMsSUFBSSxLQUFLLEVBQUU7WUFDN0UsRUFBRSxDQUFDLFlBQVksQ0FBQyxFQUFFLENBQUMsTUFBTSxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUM7WUFDM0MsRUFBRSxDQUFDLE1BQU0sQ0FBQyxVQUFVLENBQUMsQ0FBQztZQUN0QixJQUFJLENBQUM7SUFDWCxDQUFDO0lBTEQsOERBS0M7SUFFRDs7OztPQUlHO0lBQ0gsU0FBZ0Isd0JBQXdCLENBQUMsRUFBaUIsRUFBRSxPQUF1QjtRQUVqRixJQUFNLE1BQU0sR0FBRyxPQUFPLENBQUMsbUJBQW1CLENBQUMsRUFBRSxDQUFDLElBQUksSUFBSSxDQUFDO1FBQ3ZELElBQU0sV0FBVyxHQUFHLE1BQU0sSUFBSSxNQUFNLENBQUMsZ0JBQWdCLENBQUM7UUFDdEQsSUFBTSxXQUFXLEdBQ2IsV0FBVyxJQUFJLEVBQUUsQ0FBQyxxQkFBcUIsQ0FBQyxXQUFXLENBQUMsSUFBSSxXQUFXLENBQUMsV0FBVyxJQUFJLElBQUksQ0FBQztRQUM1RixPQUFPLFdBQVcsSUFBSSxhQUFhLENBQUMsV0FBVyxDQUFDLENBQUMsQ0FBQyxDQUFDLFdBQVcsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDO0lBQ3hFLENBQUM7SUFQRCw0REFPQztJ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QyxDQUFDLENBQUM7SUFDNUMsQ0FBQztJQUpELHNDQUlDO0lBRUQsU0FBZ0IsZ0JBQWdCLENBQUMsSUFBWTtRQUMzQyxPQUFPLENBQUMsY0FBYyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztJQUNwQyxDQUFDO0lBRkQsNENBRUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5pbXBvcnQge0RlY2xhcmF0aW9ufSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvcmVmbGVjdGlvbic7XG5cblxuZXhwb3J0IGludGVyZmFjZSBFeHBvcnREZWNsYXJhdGlvbiB7XG4gIG5hbWU6IHN0cmluZztcbiAgZGVjbGFyYXRpb246IERlY2xhcmF0aW9uO1xufVxuXG5leHBvcnQgaW50ZXJmYWNlIEV4cG9ydFN0YXRlbWVudCBleHRlbmRzIHRzLkV4cHJlc3Npb25TdGF0ZW1lbnQge1xuICBleHByZXNzaW9uOiB0cy5CaW5hcnlFeHByZXNzaW9uJntcbiAgICBsZWZ0OiB0cy5Qcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24gJlxuICAgICAgICB7XG4gICAgICAgICAgZXhwcmVzc2lvbjogdHMuSWRlbnRpZmllclxuICAgICAgICB9XG4gIH07XG59XG5cbi8qKlxuICogQSBDb21tb25KUyBvciBVTUQgd2lsZGNhcmQgcmUtZXhwb3J0IHN0YXRlbWVudC5cbiAqXG4gKiBUaGUgQ29tbW9uSlMgb3IgVU1EIHZlcnNpb24gb2YgYGV4cG9ydCAqIGZyb20gJ2JsYWgnO2AuXG4gKlxuICogVGhlc2Ugc3RhdGVtZW50cyBjYW4gaGF2ZSBzZXZlcmFsIGZvcm1zIChkZXBlbmRpbmcsIGZvciBleGFtcGxlLCBvbiB3aGV0aGVyXG4gKiB0aGUgVHlwZVNjcmlwdCBoZWxwZXJzIGFyZSBpbXBvcnRlZCBvciBlbWl0dGVkIGlubGluZSkuIFRoZSBleHByZXNzaW9uIGNhbiBoYXZlIG9uZSBvZiB0aGVcbiAqIGZvbGxvd2luZyBmb3JtczpcbiAqIC0gYF9fZXhwb3J0KGZpcnN0QXJnKWBcbiAqIC0gYF9fZXhwb3J0U3RhcihmaXJzdEFyZylgXG4gKiAtIGB0c2xpYi5fX2V4cG9ydChmaXJzdEFyZywgZXhwb3J0cylgXG4gKiAtIGB0c2xpYi5fX2V4cG9ydFN0YXIoZmlyc3RBcmcsIGV4cG9ydHMpYFxuICpcbiAqIEluIGFsbCBjYXNlcywgd2Ugb25seSBjYXJlIGFib3V0IGBmaXJzdEFyZ2AsIHdoaWNoIGlzIHRoZSBmaXJzdCBhcmd1bWVudCBvZiB0aGUgcmUtZXhwb3J0IGNhbGxcbiAqIGV4cHJlc3Npb24gYW5kIGNhbiBiZSBlaXRoZXIgYSBgcmVxdWlyZSgnLi4uJylgIGNhbGwgb3IgYW4gaWRlbnRpZmllciAoaW5pdGlhbGl6ZWQgdmlhIGFcbiAqIGByZXF1aXJlKCcuLi4nKWAgY2FsbCkuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgV2lsZGNhcmRSZWV4cG9ydFN0YXRlbWVudCBleHRlbmRzIHRzLkV4cHJlc3Npb25TdGF0ZW1lbnQge1xuICBleHByZXNzaW9uOiB0cy5DYWxsRXhwcmVzc2lvbjtcbn1cblxuLyoqXG4gKiBBIENvbW1vbkpTIG9yIFVNRCByZS1leHBvcnQgc3RhdGVtZW50IHVzaW5nIGFuIGBPYmplY3QuZGVmaW5lUHJvcGVydHkoKWAgY2FsbC5cbiAqIEZvciBleGFtcGxlOlxuICpcbiAqIGBgYFxuICogT2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsIFwiPGV4cG9ydGVkLWlkPlwiLFxuICogICAgIHsgZW51bWVyYWJsZTogdHJ1ZSwgZ2V0OiBmdW5jdGlvbiAoKSB7IHJldHVybiA8aW1wb3J0ZWQtaWQ+OyB9IH0pO1xuICogYGBgXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgRGVmaW5lUHJvcGVydHlSZWV4cG9ydFN0YXRlbWVudCBleHRlbmRzIHRzLkV4cHJlc3Npb25TdGF0ZW1lbnQge1xuICBleHByZXNzaW9uOiB0cy5DYWxsRXhwcmVzc2lvbiZcbiAgICAgIHthcmd1bWVudHM6IFt0cy5JZGVudGlmaWVyLCB0cy5TdHJpbmdMaXRlcmFsLCB0cy5PYmplY3RMaXRlcmFsRXhwcmVzc2lvbl19O1xufVxuXG5leHBvcnQgaW50ZXJmYWNlIFJlcXVpcmVDYWxsIGV4dGVuZHMgdHMuQ2FsbEV4cHJlc3Npb24ge1xuICBhcmd1bWVudHM6IHRzLkNhbGxFeHByZXNzaW9uWydhcmd1bWVudHMnXSZbdHMuU3RyaW5nTGl0ZXJhbF07XG59XG5cblxuLyoqXG4gKiBSZXR1cm4gdGhlIFwibmFtZXNwYWNlXCIgb2YgdGhlIHNwZWNpZmllZCBgdHMuSWRlbnRpZmllcmAgaWYgdGhlIGlkZW50aWZpZXIgaXMgdGhlIFJIUyBvZiBhXG4gKiBwcm9wZXJ0eSBhY2Nlc3MgZXhwcmVzc2lvbiwgaS5lLiBhbiBleHByZXNzaW9uIG9mIHRoZSBmb3JtIGA8bmFtZXNwYWNlPi48aWQ+YCAoaW4gd2hpY2ggY2FzZSBhXG4gKiBgdHMuSWRlbnRpZmllcmAgY29ycmVzcG9uZGluZyB0byBgPG5hbWVzcGFjZT5gIHdpbGwgYmUgcmV0dXJuZWQpLiBPdGhlcndpc2UgcmV0dXJuIGBudWxsYC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGZpbmROYW1lc3BhY2VPZklkZW50aWZpZXIoaWQ6IHRzLklkZW50aWZpZXIpOiB0cy5JZGVudGlmaWVyfG51bGwge1xuICByZXR1cm4gaWQucGFyZW50ICYmIHRzLmlzUHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uKGlkLnBhcmVudCkgJiYgaWQucGFyZW50Lm5hbWUgPT09IGlkICYmXG4gICAgICAgICAgdHMuaXNJZGVudGlmaWVyKGlkLnBhcmVudC5leHByZXNzaW9uKSA/XG4gICAgICBpZC5wYXJlbnQuZXhwcmVzc2lvbiA6XG4gICAgICBudWxsO1xufVxuXG4vKipcbiAqIFJldHVybiB0aGUgYFJlcXVpcmVDYWxsYCB0aGF0IGlzIHVzZWQgdG8gaW5pdGlhbGl6ZSB0aGUgc3BlY2lmaWVkIGB0cy5JZGVudGlmaWVyYCwgaWYgdGhlXG4gKiBzcGVjaWZpZWQgaW5kZW50aWZpZXIgd2FzIGluZGVlZCBpbml0aWFsaXplZCB3aXRoIGEgcmVxdWlyZSBjYWxsIGluIGEgZGVjbGFyYXRpb24gb2YgdGhlIGZvcm06XG4gKiBgdmFyIDxpZD4gPSByZXF1aXJlKCcuLi4nKWBcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGZpbmRSZXF1aXJlQ2FsbFJlZmVyZW5jZShpZDogdHMuSWRlbnRpZmllciwgY2hlY2tlcjogdHMuVHlwZUNoZWNrZXIpOiBSZXF1aXJlQ2FsbHxcbiAgICBudWxsIHtcbiAgY29uc3Qgc3ltYm9sID0gY2hlY2tlci5nZXRTeW1ib2xBdExvY2F0aW9uKGlkKSB8fCBudWxsO1xuICBjb25zdCBkZWNsYXJhdGlvbiA9IHN5bWJvbCAmJiBzeW1ib2wudmFsdWVEZWNsYXJhdGlvbjtcbiAgY29uc3QgaW5pdGlhbGl6ZXIgPVxuICAgICAgZGVjbGFyYXRpb24gJiYgdHMuaXNWYXJpYWJsZURlY2xhcmF0aW9uKGRlY2xhcmF0aW9uKSAmJiBkZWNsYXJhdGlvbi5pbml0aWFsaXplciB8fCBudWxsO1xuICByZXR1cm4gaW5pdGlhbGl6ZXIgJiYgaXNSZXF1aXJlQ2FsbChpbml0aWFsaXplcikgPyBpbml0aWFsaXplciA6IG51bGw7XG59XG5cbi8qKlxuICogQ2hlY2sgd2hldGhlciB0aGUgc3BlY2lmaWVkIGB0cy5TdGF0ZW1lbnRgIGlzIGFuIGV4cG9ydCBzdGF0ZW1lbnQsIGkuZS4gYW4gZXhwcmVzc2lvbiBzdGF0ZW1lbnRcbiAqIG9mIHRoZSBmb3JtOiBgZXhwb3J0cy48Zm9vPiA9IDxiYXI+YFxuICovXG5leHBvcnQgZnVuY3Rpb24gaXNFeHBvcnRTdGF0ZW1lbnQoc3RtdDogdHMuU3RhdGVtZW50KTogc3RtdCBpcyBFeHBvcnRTdGF0ZW1lbnQge1xuICByZXR1cm4gdHMuaXNFeHByZXNzaW9uU3RhdGVtZW50KHN0bXQpICYmIHRzLmlzQmluYXJ5RXhwcmVzc2lvbihzdG10LmV4cHJlc3Npb24pICYmXG4gICAgICAoc3RtdC5leHByZXNzaW9uLm9wZXJhdG9yVG9rZW4ua2luZCA9PT0gdHMuU3ludGF4S2luZC5FcXVhbHNUb2tlbikgJiZcbiAgICAgIHRzLmlzUHJvcGVydHlBY2Nlc3NFeHByZXNzaW9uKHN0bXQuZXhwcmVzc2lvbi5sZWZ0KSAmJlxuICAgICAgdHMuaXNJZGVudGlmaWVyKHN0bXQuZXhwcmVzc2lvbi5sZWZ0LmV4cHJlc3Npb24pICYmXG4gICAgICBzdG10LmV4cHJlc3Npb24ubGVmdC5leHByZXNzaW9uLnRleHQgPT09ICdleHBvcnRzJztcbn1cblxuLyoqXG4gKiBDaGVjayB3aGV0aGVyIHRoZSBzcGVjaWZpZWQgYHRzLlN0YXRlbWVudGAgaXMgYSB3aWxkY2FyZCByZS1leHBvcnQgc3RhdGVtZW50LlxuICogSS5FLiBhbiBleHByZXNzaW9uIHN0YXRlbWVudCBvZiBvbmUgb2YgdGhlIGZvbGxvd2luZyBmb3JtczpcbiAqIC0gYF9fZXhwb3J0KDxmb28+KWBcbiAqIC0gYF9fZXhwb3J0U3Rhcig8Zm9vPilgXG4gKiAtIGB0c2xpYi5fX2V4cG9ydCg8Zm9vPiwgZXhwb3J0cylgXG4gKiAtIGB0c2xpYi5fX2V4cG9ydFN0YXIoPGZvbz4sIGV4cG9ydHMpYFxuICovXG5leHBvcnQgZnVuY3Rpb24gaXNXaWxkY2FyZFJlZXhwb3J0U3RhdGVtZW50KHN0bXQ6IHRzLlN0YXRlbWVudCk6IHN0bXQgaXMgV2lsZGNhcmRSZWV4cG9ydFN0YXRlbWVudCB7XG4gIC8vIEVuc3VyZSBpdCBpcyBhIGNhbGwgZXhwcmVzc2lvbiBzdGF0ZW1lbnQuXG4gIGlmICghdHMuaXNFeHByZXNzaW9uU3RhdGVtZW50KHN0bXQpIHx8ICF0cy5pc0NhbGxFeHByZXNzaW9uKHN0bXQuZXhwcmVzc2lvbikpIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cblxuICAvLyBHZXQgdGhlIGNhbGxlZCBmdW5jdGlvbiBpZGVudGlmaWVyLlxuICAvLyBOT1RFOiBDdXJyZW50bHksIGl0IHNlZW1zIHRoYXQgYF9fZXhwb3J0KClgIGlzIHVzZWQgd2hlbiBlbWl0dGluZyBoZWxwZXJzIGlubGluZSBhbmRcbiAgLy8gICAgICAgYF9fZXhwb3J0U3RhcigpYCB3aGVuIGltcG9ydGluZyB0aGVtXG4gIC8vICAgICAgIChbc291cmNlXShodHRwczovL2dpdGh1Yi5jb20vbWljcm9zb2Z0L1R5cGVTY3JpcHQvYmxvYi9kN2M4M2YwMjMvc3JjL2NvbXBpbGVyL3RyYW5zZm9ybWVycy9tb2R1bGUvbW9kdWxlLnRzI0wxNzk2LUwxNzk3KSkuXG4gIC8vICAgICAgIFNvLCB0aGVvcmV0aWNhbGx5LCB3ZSBvbmx5IGNhcmUgYWJvdXQgdGhlIGZvcm1hdHMgYF9fZXhwb3J0KDxmb28+KWAgYW5kXG4gIC8vICAgICAgIGB0c2xpYi5fX2V4cG9ydFN0YXIoPGZvbz4sIGV4cG9ydHMpYC5cbiAgLy8gICAgICAgVGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gYWNjZXB0cyB0aGUgb3RoZXIgdHdvIGZvcm1hdHMgKGBfX2V4cG9ydFN0YXIoLi4uKWAgYW5kXG4gIC8vICAgICAgIGB0c2xpYi5fX2V4cG9ydCguLi4pYCkgYXMgd2VsbCB0byBiZSBtb3JlIGZ1dHVyZS1wcm9vZiAoZ2l2ZW4gdGhhdCBpdCBpcyB1bmxpa2VseSB0aGF0XG4gIC8vICAgICAgIHRoZXkgd2lsbCBpbnRyb2R1Y2UgZmFsc2UgcG9zaXRpdmVzKS5cbiAgbGV0IGZuTmFtZTogc3RyaW5nfG51bGwgPSBudWxsO1xuICBpZiAodHMuaXNJZGVudGlmaWVyKHN0bXQuZXhwcmVzc2lvbi5leHByZXNzaW9uKSkge1xuICAgIC8vIFN0YXRlbWVudCBvZiB0aGUgZm9ybSBgc29tZUZuKC4uLilgLlxuICAgIGZuTmFtZSA9IHN0bXQuZXhwcmVzc2lvbi5leHByZXNzaW9uLnRleHQ7XG4gIH0gZWxzZSBpZiAoXG4gICAgICB0cy5pc1Byb3BlcnR5QWNjZXNzRXhwcmVzc2lvbihzdG10LmV4cHJlc3Npb24uZXhwcmVzc2lvbikgJiZcbiAgICAgIHRzLmlzSWRlbnRpZmllcihzdG10LmV4cHJlc3Npb24uZXhwcmVzc2lvbi5uYW1lKSkge1xuICAgIC8vIFN0YXRlbWVudCBvZiB0aGUgZm9ybSBgdHNsaWIuc29tZUZuKC4uLilgLlxuICAgIGZuTmFtZSA9IHN0bXQuZXhwcmVzc2lvbi5leHByZXNzaW9uLm5hbWUudGV4dDtcbiAgfVxuXG4gIC8vIEVuc3VyZSB0aGUgY2FsbGVkIGZ1bmN0aW9uIGlzIGVpdGhlciBgX19leHBvcnQoKWAgb3IgYF9fZXhwb3J0U3RhcigpYC5cbiAgaWYgKChmbk5hbWUgIT09ICdfX2V4cG9ydCcpICYmIChmbk5hbWUgIT09ICdfX2V4cG9ydFN0YXInKSkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIC8vIEVuc3VyZSB0aGVyZSBpcyBhdCBsZWFzdCBvbmUgYXJndW1lbnQuXG4gIC8vIChUaGUgZmlyc3QgYXJndW1lbnQgaXMgdGhlIGV4cG9ydGVkIHRoaW5nIGFuZCB0aGVyZSB3aWxsIGJlIGEgc2Vjb25kIGBleHBvcnRzYCBhcmd1bWVudCBpbiB0aGVcbiAgLy8gY2FzZSBvZiBpbXBvcnRlZCBoZWxwZXJzKS5cbiAgcmV0dXJuIHN0bXQuZXhwcmVzc2lvbi5hcmd1bWVudHMubGVuZ3RoID4gMDtcbn1cblxuXG4vKipcbiAqIENoZWNrIHdoZXRoZXIgdGhlIHN0YXRlbWVudCBpcyBhIHJlLWV4cG9ydCBvZiB0aGUgZm9ybTpcbiAqXG4gKiBgYGBcbiAqIE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCBcIjxleHBvcnQtbmFtZT5cIixcbiAqICAgICB7IGVudW1lcmFibGU6IHRydWUsIGdldDogZnVuY3Rpb24gKCkgeyByZXR1cm4gPGltcG9ydC1uYW1lPjsgfSB9KTtcbiAqIGBgYFxuICovXG5leHBvcnQgZnVuY3Rpb24gaXNEZWZpbmVQcm9wZXJ0eVJlZXhwb3J0U3RhdGVtZW50KHN0bXQ6IHRzLlN0YXRlbWVudCk6XG4gICAgc3RtdCBpcyBEZWZpbmVQcm9wZXJ0eVJlZXhwb3J0U3RhdGVtZW50IHtcbiAgaWYgKCF0cy5pc0V4cHJlc3Npb25TdGF0ZW1lbnQoc3RtdCkgfHwgIXRzLmlzQ2FsbEV4cHJlc3Npb24oc3RtdC5leHByZXNzaW9uKSkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIC8vIENoZWNrIGZvciBPYmplY3QuZGVmaW5lUHJvcGVydHlcbiAgaWYgKCF0cy5pc1Byb3BlcnR5QWNjZXNzRXhwcmVzc2lvbihzdG10LmV4cHJlc3Npb24uZXhwcmVzc2lvbikgfHxcbiAgICAgICF0cy5pc0lkZW50aWZpZXIoc3RtdC5leHByZXNzaW9uLmV4cHJlc3Npb24uZXhwcmVzc2lvbikgfHxcbiAgICAgIHN0bXQuZXhwcmVzc2lvbi5leHByZXNzaW9uLmV4cHJlc3Npb24udGV4dCAhPT0gJ09iamVjdCcgfHxcbiAgICAgICF0cy5pc0lkZW50aWZpZXIoc3RtdC5leHByZXNzaW9uLmV4cHJlc3Npb24ubmFtZSkgfHxcbiAgICAgIHN0bXQuZXhwcmVzc2lvbi5leHByZXNzaW9uLm5hbWUudGV4dCAhPT0gJ2RlZmluZVByb3BlcnR5Jykge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIGNvbnN0IGFyZ3MgPSBzdG10LmV4cHJlc3Npb24uYXJndW1lbnRzO1xuICBpZiAoYXJncy5sZW5ndGggIT09IDMpIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cbiAgY29uc3QgZXhwb3J0c09iamVjdCA9IGFyZ3NbMF07XG4gIGlmICghdHMuaXNJZGVudGlmaWVyKGV4cG9ydHNPYmplY3QpIHx8IGV4cG9ydHNPYmplY3QudGV4dCAhPT0gJ2V4cG9ydHMnKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgY29uc3QgcHJvcGVydHlLZXkgPSBhcmdzWzFdO1xuICBpZiAoIXRzLmlzU3RyaW5nTGl0ZXJhbChwcm9wZXJ0eUtleSkpIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cblxuICBjb25zdCBwcm9wZXJ0eURlc2NyaXB0b3IgPSBhcmdzWzJdO1xuICBpZiAoIXRzLmlzT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24ocHJvcGVydHlEZXNjcmlwdG9yKSkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHJldHVybiAocHJvcGVydHlEZXNjcmlwdG9yLnByb3BlcnRpZXMuc29tZShcbiAgICAgIHByb3AgPT4gcHJvcC5uYW1lICE9PSB1bmRlZmluZWQgJiYgdHMuaXNJZGVudGlmaWVyKHByb3AubmFtZSkgJiYgcHJvcC5uYW1lLnRleHQgPT09ICdnZXQnKSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBleHRyYWN0R2V0dGVyRm5FeHByZXNzaW9uKHN0YXRlbWVudDogRGVmaW5lUHJvcGVydHlSZWV4cG9ydFN0YXRlbWVudCk6XG4gICAgdHMuRXhwcmVzc2lvbnxudWxsIHtcbiAgY29uc3QgYXJncyA9IHN0YXRlbWVudC5leHByZXNzaW9uLmFyZ3VtZW50cztcbiAgY29uc3QgZ2V0dGVyRm4gPSBhcmdzWzJdLnByb3BlcnRpZXMuZmluZChcbiAgICAgIHByb3AgPT4gcHJvcC5uYW1lICE9PSB1bmRlZmluZWQgJiYgdHMuaXNJZGVudGlmaWVyKHByb3AubmFtZSkgJiYgcHJvcC5uYW1lLnRleHQgPT09ICdnZXQnKTtcbiAgaWYgKGdldHRlckZuID09PSB1bmRlZmluZWQgfHwgIXRzLmlzUHJvcGVydHlBc3NpZ25tZW50KGdldHRlckZuKSB8fFxuICAgICAgIXRzLmlzRnVuY3Rpb25FeHByZXNzaW9uKGdldHRlckZuLmluaXRpYWxpemVyKSkge1xuICAgIHJldHVybiBudWxsO1xuICB9XG4gIGNvbnN0IHJldHVyblN0YXRlbWVudCA9IGdldHRlckZuLmluaXRpYWxpemVyLmJvZHkuc3RhdGVtZW50c1swXTtcbiAgaWYgKCF0cy5pc1JldHVyblN0YXRlbWVudChyZXR1cm5TdGF0ZW1lbnQpIHx8IHJldHVyblN0YXRlbWVudC5leHByZXNzaW9uID09PSB1bmRlZmluZWQpIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuICByZXR1cm4gcmV0dXJuU3RhdGVtZW50LmV4cHJlc3Npb247XG59XG5cbi8qKlxuICogQ2hlY2sgd2hldGhlciB0aGUgc3BlY2lmaWVkIGB0cy5Ob2RlYCByZXByZXNlbnRzIGEgYHJlcXVpcmUoKWAgY2FsbCwgaS5lLiBhbiBjYWxsIGV4cHJlc3Npb24gb2ZcbiAqIHRoZSBmb3JtOiBgcmVxdWlyZSgnPGZvbz4nKWBcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGlzUmVxdWlyZUNhbGwobm9kZTogdHMuTm9kZSk6IG5vZGUgaXMgUmVxdWlyZUNhbGwge1xuICByZXR1cm4gdHMuaXNDYWxsRXhwcmVzc2lvbihub2RlKSAmJiB0cy5pc0lkZW50aWZpZXIobm9kZS5leHByZXNzaW9uKSAmJlxuICAgICAgbm9kZS5leHByZXNzaW9uLnRleHQgPT09ICdyZXF1aXJlJyAmJiBub2RlLmFyZ3VtZW50cy5sZW5ndGggPT09IDEgJiZcbiAgICAgIHRzLmlzU3RyaW5nTGl0ZXJhbChub2RlLmFyZ3VtZW50c1swXSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpc0V4dGVybmFsSW1wb3J0KHBhdGg6IHN0cmluZyk6IGJvb2xlYW4ge1xuICByZXR1cm4gIS9eXFwuXFwuPyhcXC98JCkvLnRlc3QocGF0aCk7XG59XG4iXX0=