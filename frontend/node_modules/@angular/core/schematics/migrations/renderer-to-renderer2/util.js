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
        define("@angular/core/schematics/migrations/renderer-to-renderer2/util", ["require", "exports", "typescript"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.findImportSpecifier = exports.findCoreImport = exports.findRendererReferences = void 0;
    const ts = require("typescript");
    /**
     * Finds typed nodes (e.g. function parameters or class properties) that are referencing the old
     * `Renderer`, as well as calls to the `Renderer` methods.
     */
    function findRendererReferences(sourceFile, typeChecker, rendererImport) {
        const typedNodes = new Set();
        const methodCalls = new Set();
        const forwardRefs = new Set();
        const importSpecifier = findImportSpecifier(rendererImport.elements, 'Renderer');
        const forwardRefImport = findCoreImport(sourceFile, 'forwardRef');
        const forwardRefSpecifier = forwardRefImport ? findImportSpecifier(forwardRefImport.elements, 'forwardRef') : null;
        ts.forEachChild(sourceFile, function visitNode(node) {
            if ((ts.isParameter(node) || ts.isPropertyDeclaration(node)) &&
                isReferenceToImport(typeChecker, node.name, importSpecifier)) {
                typedNodes.add(node);
            }
            else if (ts.isAsExpression(node) && isReferenceToImport(typeChecker, node.type, importSpecifier)) {
                typedNodes.add(node);
            }
            else if (ts.isCallExpression(node)) {
                if (ts.isPropertyAccessExpression(node.expression) &&
                    isReferenceToImport(typeChecker, node.expression.expression, importSpecifier)) {
                    methodCalls.add(node);
                }
                else if (
                // If we're dealing with a forwardRef that's returning a Renderer.
                forwardRefSpecifier && ts.isIdentifier(node.expression) &&
                    isReferenceToImport(typeChecker, node.expression, forwardRefSpecifier) &&
                    node.arguments.length) {
                    const rendererIdentifier = findRendererIdentifierInForwardRef(typeChecker, node, importSpecifier);
                    if (rendererIdentifier) {
                        forwardRefs.add(rendererIdentifier);
                    }
                }
            }
            ts.forEachChild(node, visitNode);
        });
        return { typedNodes, methodCalls, forwardRefs };
    }
    exports.findRendererReferences = findRendererReferences;
    /** Finds the import from @angular/core that has a symbol with a particular name. */
    function findCoreImport(sourceFile, symbolName) {
        // Only look through the top-level imports.
        for (const node of sourceFile.statements) {
            if (!ts.isImportDeclaration(node) || !ts.isStringLiteral(node.moduleSpecifier) ||
                node.moduleSpecifier.text !== '@angular/core') {
                continue;
            }
            const namedBindings = node.importClause && node.importClause.namedBindings;
            if (!namedBindings || !ts.isNamedImports(namedBindings)) {
                continue;
            }
            if (findImportSpecifier(namedBindings.elements, symbolName)) {
                return namedBindings;
            }
        }
        return null;
    }
    exports.findCoreImport = findCoreImport;
    /** Finds an import specifier with a particular name, accounting for aliases. */
    function findImportSpecifier(elements, importName) {
        return elements.find(element => {
            const { name, propertyName } = element;
            return propertyName ? propertyName.text === importName : name.text === importName;
        }) ||
            null;
    }
    exports.findImportSpecifier = findImportSpecifier;
    /** Checks whether a node is referring to an import spcifier. */
    function isReferenceToImport(typeChecker, node, importSpecifier) {
        if (importSpecifier) {
            const nodeSymbol = typeChecker.getTypeAtLocation(node).getSymbol();
            const importSymbol = typeChecker.getTypeAtLocation(importSpecifier).getSymbol();
            return !!(nodeSymbol && importSymbol) &&
                nodeSymbol.valueDeclaration === importSymbol.valueDeclaration;
        }
        return false;
    }
    /** Finds the identifier referring to the `Renderer` inside a `forwardRef` call expression. */
    function findRendererIdentifierInForwardRef(typeChecker, node, rendererImport) {
        const firstArg = node.arguments[0];
        if (ts.isArrowFunction(firstArg)) {
            // Check if the function is `forwardRef(() => Renderer)`.
            if (ts.isIdentifier(firstArg.body) &&
                isReferenceToImport(typeChecker, firstArg.body, rendererImport)) {
                return firstArg.body;
            }
            else if (ts.isBlock(firstArg.body) && ts.isReturnStatement(firstArg.body.statements[0])) {
                // Otherwise check if the expression is `forwardRef(() => { return Renderer })`.
                const returnStatement = firstArg.body.statements[0];
                if (returnStatement.expression && ts.isIdentifier(returnStatement.expression) &&
                    isReferenceToImport(typeChecker, returnStatement.expression, rendererImport)) {
                    return returnStatement.expression;
                }
            }
        }
        return null;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc2NoZW1hdGljcy9taWdyYXRpb25zL3JlbmRlcmVyLXRvLXJlbmRlcmVyMi91dGlsLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQUVILGlDQUFpQztJQUVqQzs7O09BR0c7SUFDSCxTQUFnQixzQkFBc0IsQ0FDbEMsVUFBeUIsRUFBRSxXQUEyQixFQUFFLGNBQStCO1FBQ3pGLE1BQU0sVUFBVSxHQUFHLElBQUksR0FBRyxFQUFrRSxDQUFDO1FBQzdGLE1BQU0sV0FBVyxHQUFHLElBQUksR0FBRyxFQUFxQixDQUFDO1FBQ2pELE1BQU0sV0FBVyxHQUFHLElBQUksR0FBRyxFQUFpQixDQUFDO1FBQzdDLE1BQU0sZUFBZSxHQUFHLG1CQUFtQixDQUFDLGNBQWMsQ0FBQyxRQUFRLEVBQUUsVUFBVSxDQUFDLENBQUM7UUFDakYsTUFBTSxnQkFBZ0IsR0FBRyxjQUFjLENBQUMsVUFBVSxFQUFFLFlBQVksQ0FBQyxDQUFDO1FBQ2xFLE1BQU0sbUJBQW1CLEdBQ3JCLGdCQUFnQixDQUFDLENBQUMsQ0FBQyxtQkFBbUIsQ0FBQyxnQkFBZ0IsQ0FBQyxRQUFRLEVBQUUsWUFBWSxDQUFDLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQztRQUUzRixFQUFFLENBQUMsWUFBWSxDQUFDLFVBQVUsRUFBRSxTQUFTLFNBQVMsQ0FBQyxJQUFhO1lBQzFELElBQUksQ0FBQyxFQUFFLENBQUMsV0FBVyxDQUFDLElBQUksQ0FBQyxJQUFJLEVBQUUsQ0FBQyxxQkFBcUIsQ0FBQyxJQUFJLENBQUMsQ0FBQztnQkFDeEQsbUJBQW1CLENBQUMsV0FBVyxFQUFFLElBQUksQ0FBQyxJQUFJLEVBQUUsZUFBZSxDQUFDLEVBQUU7Z0JBQ2hFLFVBQVUsQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLENBQUM7YUFDdEI7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RSxtQkFBbUIsQ0FBQyxXQUFXLEVBQUUsZUFBZSxDQUFDLFVBQVUsRUFBRSxjQUFjLENBQUMsRUFBRTtvQkFDaEYsT0FBTyxlQUFlLENBQUMsVUFBVSxDQUFDO2lCQUNuQzthQUNGO1NBQ0Y7UUFFRCxPQUFPLElBQUksQ0FBQztJQUNkLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbi8qKlxuICogRmluZHMgdHlwZWQgbm9kZXMgKGUuZy4gZnVuY3Rpb24gcGFyYW1ldGVycyBvciBjbGFzcyBwcm9wZXJ0aWVzKSB0aGF0IGFyZSByZWZlcmVuY2luZyB0aGUgb2xkXG4gKiBgUmVuZGVyZXJgLCBhcyB3ZWxsIGFzIGNhbGxzIHRvIHRoZSBgUmVuZGVyZXJgIG1ldGhvZHMuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBmaW5kUmVuZGVyZXJSZWZlcmVuY2VzKFxuICAgIHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUsIHR5cGVDaGVja2VyOiB0cy5UeXBlQ2hlY2tlciwgcmVuZGVyZXJJbXBvcnQ6IHRzLk5hbWVkSW1wb3J0cykge1xuICBjb25zdCB0eXBlZE5vZGVzID0gbmV3IFNldDx0cy5QYXJhbWV0ZXJEZWNsYXJhdGlvbnx0cy5Qcm9wZXJ0eURlY2xhcmF0aW9ufHRzLkFzRXhwcmVzc2lvbj4oKTtcbiAgY29uc3QgbWV0aG9kQ2FsbHMgPSBuZXcgU2V0PHRzLkNhbGxFeHByZXNzaW9uPigpO1xuICBjb25zdCBmb3J3YXJkUmVmcyA9IG5ldyBTZXQ8dHMuSWRlbnRpZmllcj4oKTtcbiAgY29uc3QgaW1wb3J0U3BlY2lmaWVyID0gZmluZEltcG9ydFNwZWNpZmllcihyZW5kZXJlckltcG9ydC5lbGVtZW50cywgJ1JlbmRlcmVyJyk7XG4gIGNvbnN0IGZvcndhcmRSZWZJbXBvcnQgPSBmaW5kQ29yZUltcG9ydChzb3VyY2VGaWxlLCAnZm9yd2FyZFJlZicpO1xuICBjb25zdCBmb3J3YXJkUmVmU3BlY2lmaWVyID1cbiAgICAgIGZvcndhcmRSZWZJbXBvcnQgPyBmaW5kSW1wb3J0U3BlY2lmaWVyKGZvcndhcmRSZWZJbXBvcnQuZWxlbWVudHMsICdmb3J3YXJkUmVmJykgOiBudWxsO1xuXG4gIHRzLmZvckVhY2hDaGlsZChzb3VyY2VGaWxlLCBmdW5jdGlvbiB2aXNpdE5vZGUobm9kZTogdHMuTm9kZSkge1xuICAgIGlmICgodHMuaXNQYXJhbWV0ZXIobm9kZSkgfHwgdHMuaXNQcm9wZXJ0eURlY2xhcmF0aW9uKG5vZGUpKSAmJlxuICAgICAgICBpc1JlZmVyZW5jZVRvSW1wb3J0KHR5cGVDaGVja2VyLCBub2RlLm5hbWUsIGltcG9ydFNwZWNpZmllcikpIHtcbiAgICAgIHR5cGVkTm9kZXMuYWRkKG5vZGUpO1xuICAgIH0gZWxzZSBpZiAoXG4gICAgICAgIHRzLmlzQXNFeHByZXNzaW9uKG5vZGUpICYmIGlzUmVmZXJlbmNlVG9JbXBvcnQodHlwZUNoZWNrZXIsIG5vZGUudHlwZSwgaW1wb3J0U3BlY2lmaWVyKSkge1xuICAgICAgdHlwZWROb2Rlcy5hZGQobm9kZSk7XG4gICAgfSBlbHNlIGlmICh0cy5pc0NhbGxFeHByZXNzaW9uKG5vZGUpKSB7XG4gICAgICBpZiAodHMuaXNQcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24obm9kZS5leHByZXNzaW9uKSAmJlxuICAgICAgICAgIGlzUmVmZXJlbmNlVG9JbXBvcnQodHlwZUNoZWNrZXIsIG5vZGUuZXhwcmVzc2lvbi5leHByZXNzaW9uLCBpbXBvcnRTcGVjaWZpZXIpKSB7XG4gICAgICAgIG1ldGhvZENhbGxzLmFkZChub2RlKTtcbiAgICAgIH0gZWxzZSBpZiAoXG4gICAgICAgICAgLy8gSWYgd2UncmUgZGVhbGluZyB3aXRoIGEgZm9yd2FyZFJlZiB0aGF0J3MgcmV0dXJuaW5nIGEgUmVuZGVyZXIuXG4gICAgICAgICAgZm9yd2FyZFJlZlNwZWNpZmllciAmJiB0cy5pc0lkZW50aWZpZXIobm9kZS5leHByZXNzaW9uKSAmJlxuICAgICAgICAgIGlzUmVmZXJlbmNlVG9JbXBvcnQodHlwZUNoZWNrZXIsIG5vZGUuZXhwcmVzc2lvbiwgZm9yd2FyZFJlZlNwZWNpZmllcikgJiZcbiAgICAgICAgICBub2RlLmFyZ3VtZW50cy5sZW5ndGgpIHtcbiAgICAgICAgY29uc3QgcmVuZGVyZXJJZGVudGlmaWVyID1cbiAgICAgICAgICAgIGZpbmRSZW5kZXJlcklkZW50aWZpZXJJbkZvcndhcmRSZWYodHlwZUNoZWNrZXIsIG5vZGUsIGltcG9ydFNwZWNpZmllcik7XG4gICAgICAgIGlmIChyZW5kZXJlcklkZW50aWZpZXIpIHtcbiAgICAgICAgICBmb3J3YXJkUmVmcy5hZGQocmVuZGVyZXJJZGVudGlmaWVyKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICAgIHRzLmZvckVhY2hDaGlsZChub2RlLCB2aXNpdE5vZGUpO1xuICB9KTtcblxuICByZXR1cm4ge3R5cGVkTm9kZXMsIG1ldGhvZENhbGxzLCBmb3J3YXJkUmVmc307XG59XG5cbi8qKiBGaW5kcyB0aGUgaW1wb3J0IGZyb20gQGFuZ3VsYXIvY29yZSB0aGF0IGhhcyBhIHN5bWJvbCB3aXRoIGEgcGFydGljdWxhciBuYW1lLiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGZpbmRDb3JlSW1wb3J0KHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUsIHN5bWJvbE5hbWU6IHN0cmluZyk6IHRzLk5hbWVkSW1wb3J0c3xcbiAgICBudWxsIHtcbiAgLy8gT25seSBsb29rIHRocm91Z2ggdGhlIHRvcC1sZXZlbCBpbXBvcnRzLlxuICBmb3IgKGNvbnN0IG5vZGUgb2Ygc291cmNlRmlsZS5zdGF0ZW1lbnRzKSB7XG4gICAgaWYgKCF0cy5pc0ltcG9ydERlY2xhcmF0aW9uKG5vZGUpIHx8ICF0cy5pc1N0cmluZ0xpdGVyYWwobm9kZS5tb2R1bGVTcGVjaWZpZXIpIHx8XG4gICAgICAgIG5vZGUubW9kdWxlU3BlY2lmaWVyLnRleHQgIT09ICdAYW5ndWxhci9jb3JlJykge1xuICAgICAgY29udGludWU7XG4gICAgfVxuXG4gICAgY29uc3QgbmFtZWRCaW5kaW5ncyA9IG5vZGUuaW1wb3J0Q2xhdXNlICYmIG5vZGUuaW1wb3J0Q2xhdXNlLm5hbWVkQmluZGluZ3M7XG5cbiAgICBpZiAoIW5hbWVkQmluZGluZ3MgfHwgIXRzLmlzTmFtZWRJbXBvcnRzKG5hbWVkQmluZGluZ3MpKSB7XG4gICAgICBjb250aW51ZTtcbiAgICB9XG5cbiAgICBpZiAoZmluZEltcG9ydFNwZWNpZmllcihuYW1lZEJpbmRpbmdzLmVsZW1lbnRzLCBzeW1ib2xOYW1lKSkge1xuICAgICAgcmV0dXJuIG5hbWVkQmluZGluZ3M7XG4gICAgfVxuICB9XG5cbiAgcmV0dXJuIG51bGw7XG59XG5cbi8qKiBGaW5kcyBhbiBpbXBvcnQgc3BlY2lmaWVyIHdpdGggYSBwYXJ0aWN1bGFyIG5hbWUsIGFjY291bnRpbmcgZm9yIGFsaWFzZXMuICovXG5leHBvcnQgZnVuY3Rpb24gZmluZEltcG9ydFNwZWNpZmllcihcbiAgICBlbGVtZW50czogdHMuTm9kZUFycmF5PHRzLkltcG9ydFNwZWNpZmllcj4sIGltcG9ydE5hbWU6IHN0cmluZykge1xuICByZXR1cm4gZWxlbWVudHMuZmluZChlbGVtZW50ID0+IHtcbiAgICBjb25zdCB7bmFtZSwgcHJvcGVydHlOYW1lfSA9IGVsZW1lbnQ7XG4gICAgcmV0dXJuIHByb3BlcnR5TmFtZSA/IHByb3BlcnR5TmFtZS50ZXh0ID09PSBpbXBvcnROYW1lIDogbmFtZS50ZXh0ID09PSBpbXBvcnROYW1lO1xuICB9KSB8fFxuICAgICAgbnVsbDtcbn1cblxuLyoqIENoZWNrcyB3aGV0aGVyIGEgbm9kZSBpcyByZWZlcnJpbmcgdG8gYW4gaW1wb3J0IHNwY2lmaWVyLiAqL1xuZnVuY3Rpb24gaXNSZWZlcmVuY2VUb0ltcG9ydChcbiAgICB0eXBlQ2hlY2tlcjogdHMuVHlwZUNoZWNrZXIsIG5vZGU6IHRzLk5vZGUsIGltcG9ydFNwZWNpZmllcjogdHMuSW1wb3J0U3BlY2lmaWVyfG51bGwpOiBib29sZWFuIHtcbiAgaWYgKGltcG9ydFNwZWNpZmllcikge1xuICAgIGNvbnN0IG5vZGVTeW1ib2wgPSB0eXBlQ2hlY2tlci5nZXRUeXBlQXRMb2NhdGlvbihub2RlKS5nZXRTeW1ib2woKTtcbiAgICBjb25zdCBpbXBvcnRTeW1ib2wgPSB0eXBlQ2hlY2tlci5nZXRUeXBlQXRMb2NhdGlvbihpbXBvcnRTcGVjaWZpZXIpLmdldFN5bWJvbCgpO1xuICAgIHJldHVybiAhIShub2RlU3ltYm9sICYmIGltcG9ydFN5bWJvbCkgJiZcbiAgICAgICAgbm9kZVN5bWJvbC52YWx1ZURlY2xhcmF0aW9uID09PSBpbXBvcnRTeW1ib2wudmFsdWVEZWNsYXJhdGlvbjtcbiAgfVxuICByZXR1cm4gZmFsc2U7XG59XG5cbi8qKiBGaW5kcyB0aGUgaWRlbnRpZmllciByZWZlcnJpbmcgdG8gdGhlIGBSZW5kZXJlcmAgaW5zaWRlIGEgYGZvcndhcmRSZWZgIGNhbGwgZXhwcmVzc2lvbi4gKi9cbmZ1bmN0aW9uIGZpbmRSZW5kZXJlcklkZW50aWZpZXJJbkZvcndhcmRSZWYoXG4gICAgdHlwZUNoZWNrZXI6IHRzLlR5cGVDaGVja2VyLCBub2RlOiB0cy5DYWxsRXhwcmVzc2lvbixcbiAgICByZW5kZXJlckltcG9ydDogdHMuSW1wb3J0U3BlY2lmaWVyfG51bGwpOiB0cy5JZGVudGlmaWVyfG51bGwge1xuICBjb25zdCBmaXJzdEFyZyA9IG5vZGUuYXJndW1lbnRzWzBdO1xuXG4gIGlmICh0cy5pc0Fycm93RnVuY3Rpb24oZmlyc3RBcmcpKSB7XG4gICAgLy8gQ2hlY2sgaWYgdGhlIGZ1bmN0aW9uIGlzIGBmb3J3YXJkUmVmKCgpID0+IFJlbmRlcmVyKWAuXG4gICAgaWYgKHRzLmlzSWRlbnRpZmllcihmaXJzdEFyZy5ib2R5KSAmJlxuICAgICAgICBpc1JlZmVyZW5jZVRvSW1wb3J0KHR5cGVDaGVja2VyLCBmaXJzdEFyZy5ib2R5LCByZW5kZXJlckltcG9ydCkpIHtcbiAgICAgIHJldHVybiBmaXJzdEFyZy5ib2R5O1xuICAgIH0gZWxzZSBpZiAodHMuaXNCbG9jayhmaXJzdEFyZy5ib2R5KSAmJiB0cy5pc1JldHVyblN0YXRlbWVudChmaXJzdEFyZy5ib2R5LnN0YXRlbWVudHNbMF0pKSB7XG4gICAgICAvLyBPdGhlcndpc2UgY2hlY2sgaWYgdGhlIGV4cHJlc3Npb24gaXMgYGZvcndhcmRSZWYoKCkgPT4geyByZXR1cm4gUmVuZGVyZXIgfSlgLlxuICAgICAgY29uc3QgcmV0dXJuU3RhdGVtZW50ID0gZmlyc3RBcmcuYm9keS5zdGF0ZW1lbnRzWzBdIGFzIHRzLlJldHVyblN0YXRlbWVudDtcblxuICAgICAgaWYgKHJldHVyblN0YXRlbWVudC5leHByZXNzaW9uICYmIHRzLmlzSWRlbnRpZmllcihyZXR1cm5TdGF0ZW1lbnQuZXhwcmVzc2lvbikgJiZcbiAgICAgICAgICBpc1JlZmVyZW5jZVRvSW1wb3J0KHR5cGVDaGVja2VyLCByZXR1cm5TdGF0ZW1lbnQuZXhwcmVzc2lvbiwgcmVuZGVyZXJJbXBvcnQpKSB7XG4gICAgICAgIHJldHVybiByZXR1cm5TdGF0ZW1lbnQuZXhwcmVzc2lvbjtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICByZXR1cm4gbnVsbDtcbn1cbiJdfQ==