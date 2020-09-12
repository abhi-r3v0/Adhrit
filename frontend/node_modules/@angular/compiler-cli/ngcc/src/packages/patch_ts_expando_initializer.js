(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/packages/patch_ts_expando_initializer", ["require", "exports", "typescript", "@angular/compiler-cli/ngcc/src/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.restoreGetExpandoInitializer = exports.patchTsGetExpandoInitializer = void 0;
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var ts = require("typescript");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/utils");
    /**
     * Consider the following ES5 code that may have been generated for a class:
     *
     * ```
     * var A = (function(){
     *   function A() {}
     *   return A;
     * }());
     * A.staticProp = true;
     * ```
     *
     * Here, TypeScript marks the symbol for "A" as a so-called "expando symbol", which causes
     * "staticProp" to be added as an export of the "A" symbol.
     *
     * In the example above, symbol "A" has been assigned some flags to indicate that it represents a
     * class. Due to this flag, the symbol is considered an expando symbol and as such, "staticProp" is
     * stored in `ts.Symbol.exports`.
     *
     * A problem arises when "A" is not at the top-level, i.e. in UMD bundles. In that case, the symbol
     * does not have the flag that marks the symbol as a class. Therefore, TypeScript inspects "A"'s
     * initializer expression, which is an IIFE in the above example. Unfortunately however, only IIFEs
     * of the form `(function(){})()` qualify as initializer for an "expando symbol"; the slightly
     * different form seen in the example above, `(function(){}())`, does not. This prevents the "A"
     * symbol from being considered an expando symbol, in turn preventing "staticProp" from being stored
     * in `ts.Symbol.exports`.
     *
     * The logic for identifying symbols as "expando symbols" can be found here:
     * https://github.com/microsoft/TypeScript/blob/v3.4.5/src/compiler/binder.ts#L2656-L2685
     *
     * Notice how the `getExpandoInitializer` function is available on the "ts" namespace in the
     * compiled bundle, so we are able to override this function to accommodate for the alternative
     * IIFE notation. The original implementation can be found at:
     * https://github.com/Microsoft/TypeScript/blob/v3.4.5/src/compiler/utilities.ts#L1864-L1887
     *
     * Issue tracked in https://github.com/microsoft/TypeScript/issues/31778
     *
     * @returns the function to pass to `restoreGetExpandoInitializer` to undo the patch, or null if
     * the issue is known to have been fixed.
     */
    function patchTsGetExpandoInitializer() {
        if (isTs31778GetExpandoInitializerFixed()) {
            return null;
        }
        var originalGetExpandoInitializer = ts.getExpandoInitializer;
        if (originalGetExpandoInitializer === undefined) {
            throw makeUnsupportedTypeScriptError();
        }
        // Override the function to add support for recognizing the IIFE structure used in ES5 bundles.
        ts.getExpandoInitializer = function (initializer, isPrototypeAssignment) {
            // If the initializer is a call expression within parenthesis, unwrap the parenthesis
            // upfront such that unsupported IIFE syntax `(function(){}())` becomes `function(){}()`,
            // which is supported.
            if (ts.isParenthesizedExpression(initializer) && ts.isCallExpression(initializer.expression)) {
                initializer = initializer.expression;
            }
            return originalGetExpandoInitializer(initializer, isPrototypeAssignment);
        };
        return originalGetExpandoInitializer;
    }
    exports.patchTsGetExpandoInitializer = patchTsGetExpandoInitializer;
    function restoreGetExpandoInitializer(originalGetExpandoInitializer) {
        if (originalGetExpandoInitializer !== null) {
            ts.getExpandoInitializer = originalGetExpandoInitializer;
        }
    }
    exports.restoreGetExpandoInitializer = restoreGetExpandoInitializer;
    var ts31778FixedResult = null;
    function isTs31778GetExpandoInitializerFixed() {
        // If the result has already been computed, return early.
        if (ts31778FixedResult !== null) {
            return ts31778FixedResult;
        }
        // Determine if the issue has been fixed by checking if an expando property is present in a
        // minimum reproduction using unpatched TypeScript.
        ts31778FixedResult = checkIfExpandoPropertyIsPresent();
        // If the issue does not appear to have been fixed, verify that applying the patch has the desired
        // effect.
        if (!ts31778FixedResult) {
            var originalGetExpandoInitializer = patchTsGetExpandoInitializer();
            try {
                var patchIsSuccessful = checkIfExpandoPropertyIsPresent();
                if (!patchIsSuccessful) {
                    throw makeUnsupportedTypeScriptError();
                }
            }
            finally {
                restoreGetExpandoInitializer(originalGetExpandoInitializer);
            }
        }
        return ts31778FixedResult;
    }
    /**
     * Verifies whether TS issue 31778 has been fixed by inspecting a symbol from a minimum
     * reproduction. If the symbol does in fact have the "expando" as export, the issue has been fixed.
     *
     * See https://github.com/microsoft/TypeScript/issues/31778 for details.
     */
    function checkIfExpandoPropertyIsPresent() {
        var sourceText = "\n    (function() {\n      var A = (function() {\n        function A() {}\n        return A;\n      }());\n      A.expando = true;\n    }());";
        var sourceFile = ts.createSourceFile('test.js', sourceText, ts.ScriptTarget.ES5, true, ts.ScriptKind.JS);
        var host = {
            getSourceFile: function () {
                return sourceFile;
            },
            fileExists: function () {
                return true;
            },
            readFile: function () {
                return '';
            },
            writeFile: function () { },
            getDefaultLibFileName: function () {
                return '';
            },
            getCurrentDirectory: function () {
                return '';
            },
            getDirectories: function () {
                return [];
            },
            getCanonicalFileName: function (fileName) {
                return fileName;
            },
            useCaseSensitiveFileNames: function () {
                return true;
            },
            getNewLine: function () {
                return '\n';
            },
        };
        var options = { noResolve: true, noLib: true, noEmit: true, allowJs: true };
        var program = ts.createProgram(['test.js'], options, host);
        function visitor(node) {
            if (ts.isVariableDeclaration(node) && utils_1.hasNameIdentifier(node) && node.name.text === 'A') {
                return node;
            }
            return ts.forEachChild(node, visitor);
        }
        var declaration = ts.forEachChild(sourceFile, visitor);
        if (declaration === undefined) {
            throw new Error('Unable to find declaration of outer A');
        }
        var symbol = program.getTypeChecker().getSymbolAtLocation(declaration.name);
        if (symbol === undefined) {
            throw new Error('Unable to resolve symbol of outer A');
        }
        return symbol.exports !== undefined && symbol.exports.has('expando');
    }
    function makeUnsupportedTypeScriptError() {
        return new Error('The TypeScript version used is not supported by ngcc.');
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicGF0Y2hfdHNfZXhwYW5kb19pbml0aWFsaXplci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9uZ2NjL3NyYy9wYWNrYWdlcy9wYXRjaF90c19leHBhbmRvX2luaXRpYWxpemVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztJQUFBOzs7Ozs7T0FNRztJQUNILCtCQUFpQztJQUNqQyw4REFBMkM7SUFFM0M7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O09Bc0NHO0lBQ0gsU0FBZ0IsNEJBQTRCO1FBQzFDLElBQUksbUNBQW1DLEVBQUUsRUFBRTtZQUN6QyxPQUFPLElBQUksQ0FBQztTQUNiO1FBRUQsSUFBTSw2QkFBNkIsR0FBSSxFQUFVLENBQUMscUJBQXFCLENBQUM7UUFDeEUsSUFBSSw2QkFBNkIsS0FBSyxTQUFTLEVBQUU7WUFDL0MsTUFBTSw4QkFBOEIsRUFBRSxDQUFDO1NBQ3hDO1FBRUQsK0ZBQStGO1FBQzlGLEVBQVUsQ0FBQyxxQkFBcUIsR0FBRyxVQUFDLFdBQW9CLEVBQ3BCLHFCQUE4QjtZQUNqRSxxRkFBcUY7WUFDckYseUZBQXlGO1lBQ3pGLHNCQUFzQjtZQUN0QixJQUFJLEVBQUUsQ0FBQyx5QkFBeUIsQ0FBQyxXQUFXLENBQUMsSUFBSSxFQUFFLENBQUMsZ0JBQWdCLENBQUMsV0FBVyxDQUFDLFVBQVUsQ0FBQyxFQUFFO2dCQUM1RixXQUFXLEdBQUcsV0FBVyxDQUFDLFVBQVUsQ0FBQzthQUN0QztZQUNELE9BQU8sNkJBQTZCLENBQUMsV0FBVyxFQUFFLHFCQUFxQixDQUFDLENBQUM7UUFDM0UsQ0FBQyxDQUFDO1FBQ0YsT0FBTyw2QkFBNkIsQ0FBQztJQUN2QyxDQUFDO0lBdEJELG9FQXNCQztJQUVELFNBQWdCLDRCQUE0QixDQUFDLDZCQUFzQztRQUNqRixJQUFJLDZCQUE2QixLQUFLLElBQUksRUFB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Q0FBdUMsQ0FBQyxDQUFDO1NBQzFEO1FBRUQsSUFBTSxNQUFNLEdBQUcsT0FBTyxDQUFDLGNBQWMsRUFBRSxDQUFDLG1CQUFtQixDQUFDLFdBQVcsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUM5RSxJQUFJLE1BQU0sS0FBSyxTQUFTLEVBQUU7WUFDeEIsTUFBTSxJQUFJLEtBQUssQ0FBQyxxQ0FBcUMsQ0FBQyxDQUFDO1NBQ3hEO1FBQ0QsT0FBTyxNQUFNLENBQUMsT0FBTyxLQUFLLFNBQVMsSUFBSSxNQUFNLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxTQUF3QixDQUFDLENBQUM7SUFDdEYsQ0FBQztJQUVELFNBQVMsOEJBQThCO1FBQ3JDLE9BQU8sSUFBSSxLQUFLLENBQUMsdURBQXVELENBQUMsQ0FBQztJQUM1RSxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcbmltcG9ydCB7aGFzTmFtZUlkZW50aWZpZXJ9IGZyb20gJy4uL3V0aWxzJztcblxuLyoqXG4gKiBDb25zaWRlciB0aGUgZm9sbG93aW5nIEVTNSBjb2RlIHRoYXQgbWF5IGhhdmUgYmVlbiBnZW5lcmF0ZWQgZm9yIGEgY2xhc3M6XG4gKlxuICogYGBgXG4gKiB2YXIgQSA9IChmdW5jdGlvbigpe1xuICogICBmdW5jdGlvbiBBKCkge31cbiAqICAgcmV0dXJuIEE7XG4gKiB9KCkpO1xuICogQS5zdGF0aWNQcm9wID0gdHJ1ZTtcbiAqIGBgYFxuICpcbiAqIEhlcmUsIFR5cGVTY3JpcHQgbWFya3MgdGhlIHN5bWJvbCBmb3IgXCJBXCIgYXMgYSBzby1jYWxsZWQgXCJleHBhbmRvIHN5bWJvbFwiLCB3aGljaCBjYXVzZXNcbiAqIFwic3RhdGljUHJvcFwiIHRvIGJlIGFkZGVkIGFzIGFuIGV4cG9ydCBvZiB0aGUgXCJBXCIgc3ltYm9sLlxuICpcbiAqIEluIHRoZSBleGFtcGxlIGFib3ZlLCBzeW1ib2wgXCJBXCIgaGFzIGJlZW4gYXNzaWduZWQgc29tZSBmbGFncyB0byBpbmRpY2F0ZSB0aGF0IGl0IHJlcHJlc2VudHMgYVxuICogY2xhc3MuIER1ZSB0byB0aGlzIGZsYWcsIHRoZSBzeW1ib2wgaXMgY29uc2lkZXJlZCBhbiBleHBhbmRvIHN5bWJvbCBhbmQgYXMgc3VjaCwgXCJzdGF0aWNQcm9wXCIgaXNcbiAqIHN0b3JlZCBpbiBgdHMuU3ltYm9sLmV4cG9ydHNgLlxuICpcbiAqIEEgcHJvYmxlbSBhcmlzZXMgd2hlbiBcIkFcIiBpcyBub3QgYXQgdGhlIHRvcC1sZXZlbCwgaS5lLiBpbiBVTUQgYnVuZGxlcy4gSW4gdGhhdCBjYXNlLCB0aGUgc3ltYm9sXG4gKiBkb2VzIG5vdCBoYXZlIHRoZSBmbGFnIHRoYXQgbWFya3MgdGhlIHN5bWJvbCBhcyBhIGNsYXNzLiBUaGVyZWZvcmUsIFR5cGVTY3JpcHQgaW5zcGVjdHMgXCJBXCInc1xuICogaW5pdGlhbGl6ZXIgZXhwcmVzc2lvbiwgd2hpY2ggaXMgYW4gSUlGRSBpbiB0aGUgYWJvdmUgZXhhbXBsZS4gVW5mb3J0dW5hdGVseSBob3dldmVyLCBvbmx5IElJRkVzXG4gKiBvZiB0aGUgZm9ybSBgKGZ1bmN0aW9uKCl7fSkoKWAgcXVhbGlmeSBhcyBpbml0aWFsaXplciBmb3IgYW4gXCJleHBhbmRvIHN5bWJvbFwiOyB0aGUgc2xpZ2h0bHlcbiAqIGRpZmZlcmVudCBmb3JtIHNlZW4gaW4gdGhlIGV4YW1wbGUgYWJvdmUsIGAoZnVuY3Rpb24oKXt9KCkpYCwgZG9lcyBub3QuIFRoaXMgcHJldmVudHMgdGhlIFwiQVwiXG4gKiBzeW1ib2wgZnJvbSBiZWluZyBjb25zaWRlcmVkIGFuIGV4cGFuZG8gc3ltYm9sLCBpbiB0dXJuIHByZXZlbnRpbmcgXCJzdGF0aWNQcm9wXCIgZnJvbSBiZWluZyBzdG9yZWRcbiAqIGluIGB0cy5TeW1ib2wuZXhwb3J0c2AuXG4gKlxuICogVGhlIGxvZ2ljIGZvciBpZGVudGlmeWluZyBzeW1ib2xzIGFzIFwiZXhwYW5kbyBzeW1ib2xzXCIgY2FuIGJlIGZvdW5kIGhlcmU6XG4gKiBodHRwczovL2dpdGh1Yi5jb20vbWljcm9zb2Z0L1R5cGVTY3JpcHQvYmxvYi92My40LjUvc3JjL2NvbXBpbGVyL2JpbmRlci50cyNMMjY1Ni1MMjY4NVxuICpcbiAqIE5vdGljZSBob3cgdGhlIGBnZXRFeHBhbmRvSW5pdGlhbGl6ZXJgIGZ1bmN0aW9uIGlzIGF2YWlsYWJsZSBvbiB0aGUgXCJ0c1wiIG5hbWVzcGFjZSBpbiB0aGVcbiAqIGNvbXBpbGVkIGJ1bmRsZSwgc28gd2UgYXJlIGFibGUgdG8gb3ZlcnJpZGUgdGhpcyBmdW5jdGlvbiB0byBhY2NvbW1vZGF0ZSBmb3IgdGhlIGFsdGVybmF0aXZlXG4gKiBJSUZFIG5vdGF0aW9uLiBUaGUgb3JpZ2luYWwgaW1wbGVtZW50YXRpb24gY2FuIGJlIGZvdW5kIGF0OlxuICogaHR0cHM6Ly9naXRodWIuY29tL01pY3Jvc29mdC9UeXBlU2NyaXB0L2Jsb2IvdjMuNC41L3NyYy9jb21waWxlci91dGlsaXRpZXMudHMjTDE4NjQtTDE4ODdcbiAqXG4gKiBJc3N1ZSB0cmFja2VkIGluIGh0dHBzOi8vZ2l0aHViLmNvbS9taWNyb3NvZnQvVHlwZVNjcmlwdC9pc3N1ZXMvMzE3NzhcbiAqXG4gKiBAcmV0dXJucyB0aGUgZnVuY3Rpb24gdG8gcGFzcyB0byBgcmVzdG9yZUdldEV4cGFuZG9Jbml0aWFsaXplcmAgdG8gdW5kbyB0aGUgcGF0Y2gsIG9yIG51bGwgaWZcbiAqIHRoZSBpc3N1ZSBpcyBrbm93biB0byBoYXZlIGJlZW4gZml4ZWQuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBwYXRjaFRzR2V0RXhwYW5kb0luaXRpYWxpemVyKCk6IHVua25vd24ge1xuICBpZiAoaXNUczMxNzc4R2V0RXhwYW5kb0luaXRpYWxpemVyRml4ZWQoKSkge1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgY29uc3Qgb3JpZ2luYWxHZXRFeHBhbmRvSW5pdGlhbGl6ZXIgPSAodHMgYXMgYW55KS5nZXRFeHBhbmRvSW5pdGlhbGl6ZXI7XG4gIGlmIChvcmlnaW5hbEdldEV4cGFuZG9Jbml0aWFsaXplciA9PT0gdW5kZWZpbmVkKSB7XG4gICAgdGhyb3cgbWFrZVVuc3VwcG9ydGVkVHlwZVNjcmlwdEVycm9yKCk7XG4gIH1cblxuICAvLyBPdmVycmlkZSB0aGUgZnVuY3Rpb24gdG8gYWRkIHN1cHBvcnQgZm9yIHJlY29nbml6aW5nIHRoZSBJSUZFIHN0cnVjdHVyZSB1c2VkIGluIEVTNSBidW5kbGVzLlxuICAodHMgYXMgYW55KS5nZXRFeHBhbmRvSW5pdGlhbGl6ZXIgPSAoaW5pdGlhbGl6ZXI6IHRzLk5vZGUsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpc1Byb3RvdHlwZUFzc2lnbm1lbnQ6IGJvb2xlYW4pOiB0cy5FeHByZXNzaW9ufHVuZGVmaW5lZCA9PiB7XG4gICAgLy8gSWYgdGhlIGluaXRpYWxpemVyIGlzIGEgY2FsbCBleHByZXNzaW9uIHdpdGhpbiBwYXJlbnRoZXNpcywgdW53cmFwIHRoZSBwYXJlbnRoZXNpc1xuICAgIC8vIHVwZnJvbnQgc3VjaCB0aGF0IHVuc3VwcG9ydGVkIElJRkUgc3ludGF4IGAoZnVuY3Rpb24oKXt9KCkpYCBiZWNvbWVzIGBmdW5jdGlvbigpe30oKWAsXG4gICAgLy8gd2hpY2ggaXMgc3VwcG9ydGVkLlxuICAgIGlmICh0cy5pc1BhcmVudGhlc2l6ZWRFeHByZXNzaW9uKGluaXRpYWxpemVyKSAmJiB0cy5pc0NhbGxFeHByZXNzaW9uKGluaXRpYWxpemVyLmV4cHJlc3Npb24pKSB7XG4gICAgICBpbml0aWFsaXplciA9IGluaXRpYWxpemVyLmV4cHJlc3Npb247XG4gICAgfVxuICAgIHJldHVybiBvcmlnaW5hbEdldEV4cGFuZG9Jbml0aWFsaXplcihpbml0aWFsaXplciwgaXNQcm90b3R5cGVBc3NpZ25tZW50KTtcbiAgfTtcbiAgcmV0dXJuIG9yaWdpbmFsR2V0RXhwYW5kb0luaXRpYWxpemVyO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gcmVzdG9yZUdldEV4cGFuZG9Jbml0aWFsaXplcihvcmlnaW5hbEdldEV4cGFuZG9Jbml0aWFsaXplcjogdW5rbm93bik6IHZvaWQge1xuICBpZiAob3JpZ2luYWxHZXRFeHBhbmRvSW5pdGlhbGl6ZXIgIT09IG51bGwpIHtcbiAgICAodHMgYXMgYW55KS5nZXRFeHBhbmRvSW5pdGlhbGl6ZXIgPSBvcmlnaW5hbEdldEV4cGFuZG9Jbml0aWFsaXplcjtcbiAgfVxufVxuXG5sZXQgdHMzMTc3OEZpeGVkUmVzdWx0OiBib29sZWFufG51bGwgPSBudWxsO1xuXG5mdW5jdGlvbiBpc1RzMzE3NzhHZXRFeHBhbmRvSW5pdGlhbGl6ZXJGaXhlZCgpOiBib29sZWFuIHtcbiAgLy8gSWYgdGhlIHJlc3VsdCBoYXMgYWxyZWFkeSBiZWVuIGNvbXB1dGVkLCByZXR1cm4gZWFybHkuXG4gIGlmICh0czMxNzc4Rml4ZWRSZXN1bHQgIT09IG51bGwpIHtcbiAgICByZXR1cm4gdHMzMTc3OEZpeGVkUmVzdWx0O1xuICB9XG5cbiAgLy8gRGV0ZXJtaW5lIGlmIHRoZSBpc3N1ZSBoYXMgYmVlbiBmaXhlZCBieSBjaGVja2luZyBpZiBhbiBleHBhbmRvIHByb3BlcnR5IGlzIHByZXNlbnQgaW4gYVxuICAvLyBtaW5pbXVtIHJlcHJvZHVjdGlvbiB1c2luZyB1bnBhdGNoZWQgVHlwZVNjcmlwdC5cbiAgdHMzMTc3OEZpeGVkUmVzdWx0ID0gY2hlY2tJZkV4cGFuZG9Qcm9wZXJ0eUlzUHJlc2VudCgpO1xuXG4gIC8vIElmIHRoZSBpc3N1ZSBkb2VzIG5vdCBhcHBlYXIgdG8gaGF2ZSBiZWVuIGZpeGVkLCB2ZXJpZnkgdGhhdCBhcHBseWluZyB0aGUgcGF0Y2ggaGFzIHRoZSBkZXNpcmVkXG4gIC8vIGVmZmVjdC5cbiAgaWYgKCF0czMxNzc4Rml4ZWRSZXN1bHQpIHtcbiAgICBjb25zdCBvcmlnaW5hbEdldEV4cGFuZG9Jbml0aWFsaXplciA9IHBhdGNoVHNHZXRFeHBhbmRvSW5pdGlhbGl6ZXIoKTtcbiAgICB0cnkge1xuICAgICAgY29uc3QgcGF0Y2hJc1N1Y2Nlc3NmdWwgPSBjaGVja0lmRXhwYW5kb1Byb3BlcnR5SXNQcmVzZW50KCk7XG4gICAgICBpZiAoIXBhdGNoSXNTdWNjZXNzZnVsKSB7XG4gICAgICAgIHRocm93IG1ha2VVbnN1cHBvcnRlZFR5cGVTY3JpcHRFcnJvcigpO1xuICAgICAgfVxuICAgIH0gZmluYWxseSB7XG4gICAgICByZXN0b3JlR2V0RXhwYW5kb0luaXRpYWxpemVyKG9yaWdpbmFsR2V0RXhwYW5kb0luaXRpYWxpemVyKTtcbiAgICB9XG4gIH1cblxuICByZXR1cm4gdHMzMTc3OEZpeGVkUmVzdWx0O1xufVxuXG4vKipcbiAqIFZlcmlmaWVzIHdoZXRoZXIgVFMgaXNzdWUgMzE3NzggaGFzIGJlZW4gZml4ZWQgYnkgaW5zcGVjdGluZyBhIHN5bWJvbCBmcm9tIGEgbWluaW11bVxuICogcmVwcm9kdWN0aW9uLiBJZiB0aGUgc3ltYm9sIGRvZXMgaW4gZmFjdCBoYXZlIHRoZSBcImV4cGFuZG9cIiBhcyBleHBvcnQsIHRoZSBpc3N1ZSBoYXMgYmVlbiBmaXhlZC5cbiAqXG4gKiBTZWUgaHR0cHM6Ly9naXRodWIuY29tL21pY3Jvc29mdC9UeXBlU2NyaXB0L2lzc3Vlcy8zMTc3OCBmb3IgZGV0YWlscy5cbiAqL1xuZnVuY3Rpb24gY2hlY2tJZkV4cGFuZG9Qcm9wZXJ0eUlzUHJlc2VudCgpOiBib29sZWFuIHtcbiAgY29uc3Qgc291cmNlVGV4dCA9IGBcbiAgICAoZnVuY3Rpb24oKSB7XG4gICAgICB2YXIgQSA9IChmdW5jdGlvbigpIHtcbiAgICAgICAgZnVuY3Rpb24gQSgpIHt9XG4gICAgICAgIHJldHVybiBBO1xuICAgICAgfSgpKTtcbiAgICAgIEEuZXhwYW5kbyA9IHRydWU7XG4gICAgfSgpKTtgO1xuICBjb25zdCBzb3VyY2VGaWxlID1cbiAgICAgIHRzLmNyZWF0ZVNvdXJjZUZpbGUoJ3Rlc3QuanMnLCBzb3VyY2VUZXh0LCB0cy5TY3JpcHRUYXJnZXQuRVM1LCB0cnVlLCB0cy5TY3JpcHRLaW5kLkpTKTtcbiAgY29uc3QgaG9zdDogdHMuQ29tcGlsZXJIb3N0ID0ge1xuICAgIGdldFNvdXJjZUZpbGUoKTogdHMuU291cmNlRmlsZSB8XG4gICAgICAgIHVuZGVmaW5lZCB7XG4gICAgICAgICAgcmV0dXJuIHNvdXJjZUZpbGU7XG4gICAgICAgIH0sXG4gICAgZmlsZUV4aXN0cygpOiBib29sZWFuIHtcbiAgICAgIHJldHVybiB0cnVlO1xuICAgIH0sXG4gICAgcmVhZEZpbGUoKTogc3RyaW5nIHxcbiAgICAgICAgdW5kZWZpbmVkIHtcbiAgICAgICAgICByZXR1cm4gJyc7XG4gICAgICAgIH0sXG4gICAgd3JpdGVGaWxlKCkge30sXG4gICAgZ2V0RGVmYXVsdExpYkZpbGVOYW1lKCk6IHN0cmluZyB7XG4gICAgICByZXR1cm4gJyc7XG4gICAgfSxcbiAgICBnZXRDdXJyZW50RGlyZWN0b3J5KCk6IHN0cmluZyB7XG4gICAgICByZXR1cm4gJyc7XG4gICAgfSxcbiAgICBnZXREaXJlY3RvcmllcygpOiBzdHJpbmdbXSB7XG4gICAgICByZXR1cm4gW107XG4gICAgfSxcbiAgICBnZXRDYW5vbmljYWxGaWxlTmFtZShmaWxlTmFtZTogc3RyaW5nKTogc3RyaW5nIHtcbiAgICAgIHJldHVybiBmaWxlTmFtZTtcbiAgICB9LFxuICAgIHVzZUNhc2VTZW5zaXRpdmVGaWxlTmFtZXMoKTogYm9vbGVhbiB7XG4gICAgICByZXR1cm4gdHJ1ZTtcbiAgICB9LFxuICAgIGdldE5ld0xpbmUoKTogc3RyaW5nIHtcbiAgICAgIHJldHVybiAnXFxuJztcbiAgICB9LFxuICB9O1xuICBjb25zdCBvcHRpb25zID0ge25vUmVzb2x2ZTogdHJ1ZSwgbm9MaWI6IHRydWUsIG5vRW1pdDogdHJ1ZSwgYWxsb3dKczogdHJ1ZX07XG4gIGNvbnN0IHByb2dyYW0gPSB0cy5jcmVhdGVQcm9ncmFtKFsndGVzdC5qcyddLCBvcHRpb25zLCBob3N0KTtcblxuICBmdW5jdGlvbiB2aXNpdG9yKG5vZGU6IHRzLk5vZGUpOiB0cy5WYXJpYWJsZURlY2xhcmF0aW9ufHVuZGVmaW5lZCB7XG4gICAgaWYgKHRzLmlzVmFyaWFibGVEZWNsYXJhdGlvbihub2RlKSAmJiBoYXNOYW1lSWRlbnRpZmllcihub2RlKSAmJiBub2RlLm5hbWUudGV4dCA9PT0gJ0EnKSB7XG4gICAgICByZXR1cm4gbm9kZTtcbiAgICB9XG4gICAgcmV0dXJuIHRzLmZvckVhY2hDaGlsZChub2RlLCB2aXNpdG9yKTtcbiAgfVxuXG4gIGNvbnN0IGRlY2xhcmF0aW9uID0gdHMuZm9yRWFjaENoaWxkKHNvdXJjZUZpbGUsIHZpc2l0b3IpO1xuICBpZiAoZGVjbGFyYXRpb24gPT09IHVuZGVmaW5lZCkge1xuICAgIHRocm93IG5ldyBFcnJvcignVW5hYmxlIHRvIGZpbmQgZGVjbGFyYXRpb24gb2Ygb3V0ZXIgQScpO1xuICB9XG5cbiAgY29uc3Qgc3ltYm9sID0gcHJvZ3JhbS5nZXRUeXBlQ2hlY2tlcigpLmdldFN5bWJvbEF0TG9jYXRpb24oZGVjbGFyYXRpb24ubmFtZSk7XG4gIGlmIChzeW1ib2wgPT09IHVuZGVmaW5lZCkge1xuICAgIHRocm93IG5ldyBFcnJvcignVW5hYmxlIHRvIHJlc29sdmUgc3ltYm9sIG9mIG91dGVyIEEnKTtcbiAgfVxuICByZXR1cm4gc3ltYm9sLmV4cG9ydHMgIT09IHVuZGVmaW5lZCAmJiBzeW1ib2wuZXhwb3J0cy5oYXMoJ2V4cGFuZG8nIGFzIHRzLl9fU3RyaW5nKTtcbn1cblxuZnVuY3Rpb24gbWFrZVVuc3VwcG9ydGVkVHlwZVNjcmlwdEVycm9yKCk6IEVycm9yIHtcbiAgcmV0dXJuIG5ldyBFcnJvcignVGhlIFR5cGVTY3JpcHQgdmVyc2lvbiB1c2VkIGlzIG5vdCBzdXBwb3J0ZWQgYnkgbmdjYy4nKTtcbn1cbiJdfQ==