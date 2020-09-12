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
        define("@angular/compiler-cli/src/ngtsc/reflection/src/type_to_value", ["require", "exports", "tslib", "typescript"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.typeNodeToValueExpr = exports.typeToValue = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    /**
     * Potentially convert a `ts.TypeNode` to a `TypeValueReference`, which indicates how to use the
     * type given in the `ts.TypeNode` in a value position.
     *
     * This can return `null` if the `typeNode` is `null`, if it does not refer to a symbol with a value
     * declaration, or if it is not possible to statically understand.
     */
    function typeToValue(typeNode, checker) {
        // It's not possible to get a value expression if the parameter doesn't even have a type.
        if (typeNode === null) {
            return missingType();
        }
        if (!ts.isTypeReferenceNode(typeNode)) {
            return unsupportedType(typeNode);
        }
        var symbols = resolveTypeSymbols(typeNode, checker);
        if (symbols === null) {
            return unknownReference(typeNode);
        }
        var local = symbols.local, decl = symbols.decl;
        // It's only valid to convert a type reference to a value reference if the type actually
        // has a value declaration associated with it. Note that const enums are an exception,
        // because while they do have a value declaration, they don't exist at runtime.
        if (decl.valueDeclaration === undefined || decl.flags & ts.SymbolFlags.ConstEnum) {
            return noValueDeclaration(typeNode, decl.declarations[0]);
        }
        // The type points to a valid value declaration. Rewrite the TypeReference into an
        // Expression which references the value pointed to by the TypeReference, if possible.
        // Look at the local `ts.Symbol`'s declarations and see if it comes from an import
        // statement. If so, extract the module specifier and the name of the imported type.
        var firstDecl = local.declarations && local.declarations[0];
        if (firstDecl !== undefined) {
            if (ts.isImportClause(firstDecl) && firstDecl.name !== undefined) {
                // This is a default import.
                //   import Foo from 'foo';
                if (firstDecl.isTypeOnly) {
                    // Type-only imports cannot be represented as value.
                    return typeOnlyImport(typeNode, firstDecl);
                }
                return {
                    kind: 0 /* LOCAL */,
                    // Copying the name here ensures the generated references will be correctly transformed
                    // along with the import.
                    expression: ts.updateIdentifier(firstDecl.name),
                    defaultImportStatement: firstDecl.parent,
                };
            }
            else if (ts.isImportSpecifier(firstDecl)) {
                // The symbol was imported by name
                //   import {Foo} from 'foo';
                // or
                //   import {Foo as Bar} from 'foo';
                if (firstDecl.parent.parent.isTypeOnly) {
                    // Type-only imports cannot be represented as value.
                    return typeOnlyImport(typeNode, firstDecl.parent.parent);
                }
                // Determine the name to import (`Foo`) from the import specifier, as the symbol names of
                // the imported type could refer to a local alias (like `Bar` in the example above).
                var importedName = (firstDecl.propertyName || firstDecl.name).text;
                // The first symbol name refers to the local name, which is replaced by `importedName` above.
                // Any remaining symbol names make up the complete path to the value.
                var _a = tslib_1.__read(symbols.symbolNames), _localName = _a[0], nestedPath = _a.slice(1);
                var moduleName = extractModuleName(firstDecl.parent.parent.parent);
                return {
                    kind: 1 /* IMPORTED */,
                    valueDeclaration: decl.valueDeclaration,
                    moduleName: moduleName,
                    importedName: importedName,
                    nestedPath: nestedPath
                };
            }
            else if (ts.isNamespaceImport(firstDecl)) {
                // The import is a namespace import
                //   import * as Foo from 'foo';
                if (firstDecl.parent.isTypeOnly) {
                    // Type-only imports cannot be represented as value.
                    return typeOnlyImport(typeNode, firstDecl.parent);
                }
                if (symbols.symbolNames.length === 1) {
                    // The type refers to the namespace itself, which cannot be represented as a value.
                    return namespaceImport(typeNode, firstDecl.parent);
                }
                // The first symbol name refers to the local name of the namespace, which is is discarded
                // as a new namespace import will be generated. This is followed by the symbol name that needs
                // to be imported and any remaining names that constitute the complete path to the value.
                var _b = tslib_1.__read(symbols.symbolNames), _ns = _b[0], importedName = _b[1], nestedPath = _b.slice(2);
                var moduleName = extractModuleName(firstDecl.parent.parent);
                return {
                    kind: 1 /* IMPORTED */,
                    valueDeclaration: decl.valueDeclaration,
                    moduleName: moduleName,
                    importedName: importedName,
                    nestedPath: nestedPath
                };
            }
        }
        // If the type is not imported, the type reference can be converted into an expression as is.
        var expression = typeNodeToValueExpr(typeNode);
        if (expression !== null) {
            return {
                kind: 0 /* LOCAL */,
                expression: expression,
                defaultImportStatement: null,
            };
        }
        else {
            return unsupportedType(typeNode);
        }
    }
    exports.typeToValue = typeToValue;
    function unsupportedType(typeNode) {
        return {
            kind: 2 /* UNAVAILABLE */,
            reason: { kind: 5 /* UNSUPPORTED */, typeNode: typeNode },
        };
    }
    function noValueDeclaration(typeNode, decl) {
        return {
            kind: 2 /* UNAVAILABLE */,
            reason: { kind: 1 /* NO_VALUE_DECLARATION */, typeNode: typeNode, decl: decl },
        };
    }
    function typeOnlyImport(typeNode, importClause) {
        return {
            kind: 2 /* UNAVAILABLE */,
            reason: { kind: 2 /* TYPE_ONLY_IMPORT */, typeNode: typeNode, importClause: importClause },
        };
    }
    function unknownReference(typeNode) {
        return {
            kind: 2 /* UNAVAILABLE */,
            reason: { kind: 3 /* UNKNOWN_REFERENCE */, typeNode: typeNode },
        };
    }
    function namespaceImport(typeNode, importClause) {
        return {
            kind: 2 /* UNAVAILABLE */,
            reason: { kind: 4 /* NAMESPACE */, typeNode: typeNode, importClause: importClause },
        };
    }
    function missingType() {
        return {
            kind: 2 /* UNAVAILABLE */,
            reason: { kind: 0 /* MISSING_TYPE */ },
        };
    }
    /**
     * Attempt to extract a `ts.Expression` that's equivalent to a `ts.TypeNode`, as the two have
     * different AST shapes but can reference the same symbols.
     *
     * This will return `null` if an equivalent expression cannot be constructed.
     */
    function typeNodeToValueExpr(node) {
        if (ts.isTypeReferenceNode(node)) {
            return entityNameToValue(node.typeName);
        }
        else {
            return null;
        }
    }
    exports.typeNodeToValueExpr = typeNodeToValueExpr;
    /**
     * Resolve a `TypeReference` node to the `ts.Symbol`s for both its declaration and its local source.
     *
     * In the event that the `TypeReference` refers to a locally declared symbol, these will be the
     * same. If the `TypeReference` refers to an imported symbol, then `decl` will be the fully resolved
     * `ts.Symbol` of the referenced symbol. `local` will be the `ts.Symbol` of the `ts.Identifier`
     * which points to the import statement by which the symbol was imported.
     *
     * All symbol names that make up the type reference are returned left-to-right into the
     * `symbolNames` array, which is guaranteed to include at least one entry.
     */
    function resolveTypeSymbols(typeRef, checker) {
        var typeName = typeRef.typeName;
        // typeRefSymbol is the ts.Symbol of the entire type reference.
        var typeRefSymbol = checker.getSymbolAtLocation(typeName);
        if (typeRefSymbol === undefined) {
            return null;
        }
        // `local` is the `ts.Symbol` for the local `ts.Identifier` for the type.
        // If the type is actually locally declared or is imported by name, for example:
        //   import {Foo} from './foo';
        // then it'll be the same as `typeRefSymbol`.
        //
        // If the type is imported via a namespace import, for example:
        //   import * as foo from './foo';
        // and then referenced as:
        //   constructor(f: foo.Foo)
        // then `local` will be the `ts.Symbol` of `foo`, whereas `typeRefSymbol` will be the `ts.Symbol`
        // of `foo.Foo`. This allows tracking of the import behind whatever type reference exists.
        var local = typeRefSymbol;
        // Destructure a name like `foo.X.Y.Z` as follows:
        // - in `leftMost`, the `ts.Identifier` of the left-most name (`foo`) in the qualified name.
        //   This identifier is used to resolve the `ts.Symbol` for `local`.
        // - in `symbolNames`, all names involved in the qualified path, or a single symbol name if the
        //   type is not qualified.
        var leftMost = typeName;
        var symbolNames = [];
        while (ts.isQualifiedName(leftMost)) {
            symbolNames.unshift(leftMost.right.text);
            leftMost = leftMost.left;
        }
        symbolNames.unshift(leftMost.text);
        if (leftMost !== typeName) {
            var localTmp = checker.getSymbolAtLocation(leftMost);
            if (localTmp !== undefined) {
                local = localTmp;
            }
        }
        // De-alias the top-level type reference symbol to get the symbol of the actual declaration.
        var decl = typeRefSymbol;
        if (typeRefSymbol.flags & ts.SymbolFlags.Alias) {
            decl = checker.getAliasedSymbol(typeRefSymbol);
        }
        return { local: local, decl: decl, symbolNames: symbolNames };
    }
    function entityNameToValue(node) {
        if (ts.isQualifiedName(node)) {
            var left = entityNameToValue(node.left);
            return left !== null ? ts.createPropertyAccess(left, node.right) : null;
        }
        else if (ts.isIdentifier(node)) {
            return ts.getMutableClone(node);
        }
        else {
            return null;
        }
    }
    function extractModuleName(node) {
        if (!ts.isStringLiteral(node.moduleSpecifier)) {
            throw new Error('not a module specifier');
        }
        return node.moduleSpecifier.text;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHlwZV90b192YWx1ZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvcmVmbGVjdGlvbi9zcmMvdHlwZV90b192YWx1ZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBRUgsK0JBQWlDO0lBSWpDOzs7Ozs7T0FNRztJQUNILFNBQWdCLFdBQVcsQ0FDdkIsUUFBMEIsRUFBRSxPQUF1QjtRQUNyRCx5RkFBeUY7UUFDekYsSUFBSSxRQUFRLEtBQUssSUFBSSxFQUFFO1lBQ3JCLE9BQU8sV0FBVyxFQUFFLENBQUM7U0FDdEI7UUFFRCxJQUFJLENBQUMsRUFBRSxDQUFDLG1CQUFtQixDQUFDLFFBQVEsQ0FBQyxFQUFFO1lBQ3JDLE9BQU8sZUFBZSxDQUFDLFFBQVEsQ0FBQyxDQUFDO1NBQ2xDO1FBRUQsSUFBTSxPQUFPLEdBQUcsa0JBQWtCLENBQUMsUUFBUSxFQUFFLE9BQU8sQ0FBQyxDQUFDO1FBQ3RELElBQUksT0FBTyxLQUFLLElBQUksRUFBRTtZQUNwQixPQUFPLGdCQUFnQixDQUFDLFFBQVEsQ0FBQyxDQUFDO1NBQ25DO1FBRU0sSUFBQSxLQUFLLEdBQVUsT0FBTyxNQUFqQixFQUFFLElBQUksR0FBSSxPQUFPLEtBQVgsQ0FBWTtRQUM5Qix3RkFBd0Y7UUFDeEYsc0ZBQXNGO1FBQ3RGLCtFQUErRTtRQUMvRSxJQUFJLElBQUksQ0FBQyxnQkFBZ0IsS0FBSyxTQUFTLElBQUksSUFBSSxDQUFDLEtBQUssR0FBRyxFQUFFLENBQUMsV0FBVyxDQUFDLFNBQVMsRUFBRTtZQUNoRixPQUFPLGtCQUFrQixDQUFDLFFBQVEsRUFBRSxJQUFJLENBQUMsWUFBWSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7U0FDM0Q7UUFFRCxrRkFBa0Y7UUFDbEYsc0ZBQXNGO1FBRXRGLGtGQUFrRjtRQUNsRixvRkFB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QUU7WUFDaEMsT0FBTyxFQUFFLENBQUMsZUFBZSxDQUFDLElBQUksQ0FBQyxDQUFDO1NBQ2pDO2FBQU07WUFDTCxPQUFPLElBQUksQ0FBQztTQUNiO0lBQ0gsQ0FBQztJQUVELFNBQVMsaUJBQWlCLENBQUMsSUFBMEI7UUFDbkQsSUFBSSxDQUFDLEVBQUUsQ0FBQyxlQUFlLENBQUMsSUFBSSxDQUFDLGVBQWUsQ0FBQyxFQUFFO1lBQzdDLE1BQU0sSUFBSSxLQUFLLENBQUMsd0JBQXdCLENBQUMsQ0FBQztTQUMzQztRQUNELE9BQU8sSUFBSSxDQUFDLGVBQWUsQ0FBQyxJQUFJLENBQUM7SUFDbkMsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtUeXBlVmFsdWVSZWZlcmVuY2UsIFR5cGVWYWx1ZVJlZmVyZW5jZUtpbmQsIFVuYXZhaWxhYmxlVHlwZVZhbHVlUmVmZXJlbmNlLCBWYWx1ZVVuYXZhaWxhYmxlS2luZH0gZnJvbSAnLi9ob3N0JztcblxuLyoqXG4gKiBQb3RlbnRpYWxseSBjb252ZXJ0IGEgYHRzLlR5cGVOb2RlYCB0byBhIGBUeXBlVmFsdWVSZWZlcmVuY2VgLCB3aGljaCBpbmRpY2F0ZXMgaG93IHRvIHVzZSB0aGVcbiAqIHR5cGUgZ2l2ZW4gaW4gdGhlIGB0cy5UeXBlTm9kZWAgaW4gYSB2YWx1ZSBwb3NpdGlvbi5cbiAqXG4gKiBUaGlzIGNhbiByZXR1cm4gYG51bGxgIGlmIHRoZSBgdHlwZU5vZGVgIGlzIGBudWxsYCwgaWYgaXQgZG9lcyBub3QgcmVmZXIgdG8gYSBzeW1ib2wgd2l0aCBhIHZhbHVlXG4gKiBkZWNsYXJhdGlvbiwgb3IgaWYgaXQgaXMgbm90IHBvc3NpYmxlIHRvIHN0YXRpY2FsbHkgdW5kZXJzdGFuZC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHR5cGVUb1ZhbHVlKFxuICAgIHR5cGVOb2RlOiB0cy5UeXBlTm9kZXxudWxsLCBjaGVja2VyOiB0cy5UeXBlQ2hlY2tlcik6IFR5cGVWYWx1ZVJlZmVyZW5jZSB7XG4gIC8vIEl0J3Mgbm90IHBvc3NpYmxlIHRvIGdldCBhIHZhbHVlIGV4cHJlc3Npb24gaWYgdGhlIHBhcmFtZXRlciBkb2Vzbid0IGV2ZW4gaGF2ZSBhIHR5cGUuXG4gIGlmICh0eXBlTm9kZSA9PT0gbnVsbCkge1xuICAgIHJldHVybiBtaXNzaW5nVHlwZSgpO1xuICB9XG5cbiAgaWYgKCF0cy5pc1R5cGVSZWZlcmVuY2VOb2RlKHR5cGVOb2RlKSkge1xuICAgIHJldHVybiB1bnN1cHBvcnRlZFR5cGUodHlwZU5vZGUpO1xuICB9XG5cbiAgY29uc3Qgc3ltYm9scyA9IHJlc29sdmVUeXBlU3ltYm9scyh0eXBlTm9kZSwgY2hlY2tlcik7XG4gIGlmIChzeW1ib2xzID09PSBudWxsKSB7XG4gICAgcmV0dXJuIHVua25vd25SZWZlcmVuY2UodHlwZU5vZGUpO1xuICB9XG5cbiAgY29uc3Qge2xvY2FsLCBkZWNsfSA9IHN5bWJvbHM7XG4gIC8vIEl0J3Mgb25seSB2YWxpZCB0byBjb252ZXJ0IGEgdHlwZSByZWZlcmVuY2UgdG8gYSB2YWx1ZSByZWZlcmVuY2UgaWYgdGhlIHR5cGUgYWN0dWFsbHlcbiAgLy8gaGFzIGEgdmFsdWUgZGVjbGFyYXRpb24gYXNzb2NpYXRlZCB3aXRoIGl0LiBOb3RlIHRoYXQgY29uc3QgZW51bXMgYXJlIGFuIGV4Y2VwdGlvbixcbiAgLy8gYmVjYXVzZSB3aGlsZSB0aGV5IGRvIGhhdmUgYSB2YWx1ZSBkZWNsYXJhdGlvbiwgdGhleSBkb24ndCBleGlzdCBhdCBydW50aW1lLlxuICBpZiAoZGVjbC52YWx1ZURlY2xhcmF0aW9uID09PSB1bmRlZmluZWQgfHwgZGVjbC5mbGFncyAmIHRzLlN5bWJvbEZsYWdzLkNvbnN0RW51bSkge1xuICAgIHJldHVybiBub1ZhbHVlRGVjbGFyYXRpb24odHlwZU5vZGUsIGRlY2wuZGVjbGFyYXRpb25zWzBdKTtcbiAgfVxuXG4gIC8vIFRoZSB0eXBlIHBvaW50cyB0byBhIHZhbGlkIHZhbHVlIGRlY2xhcmF0aW9uLiBSZXdyaXRlIHRoZSBUeXBlUmVmZXJlbmNlIGludG8gYW5cbiAgLy8gRXhwcmVzc2lvbiB3aGljaCByZWZlcmVuY2VzIHRoZSB2YWx1ZSBwb2ludGVkIHRvIGJ5IHRoZSBUeXBlUmVmZXJlbmNlLCBpZiBwb3NzaWJsZS5cblxuICAvLyBMb29rIGF0IHRoZSBsb2NhbCBgdHMuU3ltYm9sYCdzIGRlY2xhcmF0aW9ucyBhbmQgc2VlIGlmIGl0IGNvbWVzIGZyb20gYW4gaW1wb3J0XG4gIC8vIHN0YXRlbWVudC4gSWYgc28sIGV4dHJhY3QgdGhlIG1vZHVsZSBzcGVjaWZpZXIgYW5kIHRoZSBuYW1lIG9mIHRoZSBpbXBvcnRlZCB0eXBlLlxuICBjb25zdCBmaXJzdERlY2wgPSBsb2NhbC5kZWNsYXJhdGlvbnMgJiYgbG9jYWwuZGVjbGFyYXRpb25zWzBdO1xuICBpZiAoZmlyc3REZWNsICE9PSB1bmRlZmluZWQpIHtcbiAgICBpZiAodHMuaXNJbXBvcnRDbGF1c2UoZmlyc3REZWNsKSAmJiBmaXJzdERlY2wubmFtZSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICAvLyBUaGlzIGlzIGEgZGVmYXVsdCBpbXBvcnQuXG4gICAgICAvLyAgIGltcG9ydCBGb28gZnJvbSAnZm9vJztcblxuICAgICAgaWYgKGZpcnN0RGVjbC5pc1R5cGVPbmx5KSB7XG4gICAgICAgIC8vIFR5cGUtb25seSBpbXBvcnRzIGNhbm5vdCBiZSByZXByZXNlbnRlZCBhcyB2YWx1ZS5cbiAgICAgICAgcmV0dXJuIHR5cGVPbmx5SW1wb3J0KHR5cGVOb2RlLCBmaXJzdERlY2wpO1xuICAgICAgfVxuXG4gICAgICByZXR1cm4ge1xuICAgICAgICBraW5kOiBUeXBlVmFsdWVSZWZlcmVuY2VLaW5kLkxPQ0FMLFxuICAgICAgICAvLyBDb3B5aW5nIHRoZSBuYW1lIGhlcmUgZW5zdXJlcyB0aGUgZ2VuZXJhdGVkIHJlZmVyZW5jZXMgd2lsbCBiZSBjb3JyZWN0bHkgdHJhbnNmb3JtZWRcbiAgICAgICAgLy8gYWxvbmcgd2l0aCB0aGUgaW1wb3J0LlxuICAgICAgICBleHByZXNzaW9uOiB0cy51cGRhdGVJZGVudGlmaWVyKGZpcnN0RGVjbC5uYW1lKSxcbiAgICAgICAgZGVmYXVsdEltcG9ydFN0YXRlbWVudDogZmlyc3REZWNsLnBhcmVudCxcbiAgICAgIH07XG4gICAgfSBlbHNlIGlmICh0cy5pc0ltcG9ydFNwZWNpZmllcihmaXJzdERlY2wpKSB7XG4gICAgICAvLyBUaGUgc3ltYm9sIHdhcyBpbXBvcnRlZCBieSBuYW1lXG4gICAgICAvLyAgIGltcG9ydCB7Rm9vfSBmcm9tICdmb28nO1xuICAgICAgLy8gb3JcbiAgICAgIC8vICAgaW1wb3J0IHtGb28gYXMgQmFyfSBmcm9tICdmb28nO1xuXG4gICAgICBpZiAoZmlyc3REZWNsLnBhcmVudC5wYXJlbnQuaXNUeXBlT25seSkge1xuICAgICAgICAvLyBUeXBlLW9ubHkgaW1wb3J0cyBjYW5ub3QgYmUgcmVwcmVzZW50ZWQgYXMgdmFsdWUuXG4gICAgICAgIHJldHVybiB0eXBlT25seUltcG9ydCh0eXBlTm9kZSwgZmlyc3REZWNsLnBhcmVudC5wYXJlbnQpO1xuICAgICAgfVxuXG4gICAgICAvLyBEZXRlcm1pbmUgdGhlIG5hbWUgdG8gaW1wb3J0IChgRm9vYCkgZnJvbSB0aGUgaW1wb3J0IHNwZWNpZmllciwgYXMgdGhlIHN5bWJvbCBuYW1lcyBvZlxuICAgICAgLy8gdGhlIGltcG9ydGVkIHR5cGUgY291bGQgcmVmZXIgdG8gYSBsb2NhbCBhbGlhcyAobGlrZSBgQmFyYCBpbiB0aGUgZXhhbXBsZSBhYm92ZSkuXG4gICAgICBjb25zdCBpbXBvcnRlZE5hbWUgPSAoZmlyc3REZWNsLnByb3BlcnR5TmFtZSB8fCBmaXJzdERlY2wubmFtZSkudGV4dDtcblxuICAgICAgLy8gVGhlIGZpcnN0IHN5bWJvbCBuYW1lIHJlZmVycyB0byB0aGUgbG9jYWwgbmFtZSwgd2hpY2ggaXMgcmVwbGFjZWQgYnkgYGltcG9ydGVkTmFtZWAgYWJvdmUuXG4gICAgICAvLyBBbnkgcmVtYWluaW5nIHN5bWJvbCBuYW1lcyBtYWtlIHVwIHRoZSBjb21wbGV0ZSBwYXRoIHRvIHRoZSB2YWx1ZS5cbiAgICAgIGNvbnN0IFtfbG9jYWxOYW1lLCAuLi5uZXN0ZWRQYXRoXSA9IHN5bWJvbHMuc3ltYm9sTmFtZXM7XG5cbiAgICAgIGNvbnN0IG1vZHVsZU5hbWUgPSBleHRyYWN0TW9kdWxlTmFtZShmaXJzdERlY2wucGFyZW50LnBhcmVudC5wYXJlbnQpO1xuICAgICAgcmV0dXJuIHtcbiAgICAgICAga2luZDogVHlwZVZhbHVlUmVmZXJlbmNlS2luZC5JTVBPUlRFRCxcbiAgICAgICAgdmFsdWVEZWNsYXJhdGlvbjogZGVjbC52YWx1ZURlY2xhcmF0aW9uLFxuICAgICAgICBtb2R1bGVOYW1lLFxuICAgICAgICBpbXBvcnRlZE5hbWUsXG4gICAgICAgIG5lc3RlZFBhdGhcbiAgICAgIH07XG4gICAgfSBlbHNlIGlmICh0cy5pc05hbWVzcGFjZUltcG9ydChmaXJzdERlY2wpKSB7XG4gICAgICAvLyBUaGUgaW1wb3J0IGlzIGEgbmFtZXNwYWNlIGltcG9ydFxuICAgICAgLy8gICBpbXBvcnQgKiBhcyBGb28gZnJvbSAnZm9vJztcblxuICAgICAgaWYgKGZpcnN0RGVjbC5wYXJlbnQuaXNUeXBlT25seSkge1xuICAgICAgICAvLyBUeXBlLW9ubHkgaW1wb3J0cyBjYW5ub3QgYmUgcmVwcmVzZW50ZWQgYXMgdmFsdWUuXG4gICAgICAgIHJldHVybiB0eXBlT25seUltcG9ydCh0eXBlTm9kZSwgZmlyc3REZWNsLnBhcmVudCk7XG4gICAgICB9XG5cbiAgICAgIGlmIChzeW1ib2xzLnN5bWJvbE5hbWVzLmxlbmd0aCA9PT0gMSkge1xuICAgICAgICAvLyBUaGUgdHlwZSByZWZlcnMgdG8gdGhlIG5hbWVzcGFjZSBpdHNlbGYsIHdoaWNoIGNhbm5vdCBiZSByZXByZXNlbnRlZCBhcyBhIHZhbHVlLlxuICAgICAgICByZXR1cm4gbmFtZXNwYWNlSW1wb3J0KHR5cGVOb2RlLCBmaXJzdERlY2wucGFyZW50KTtcbiAgICAgIH1cblxuICAgICAgLy8gVGhlIGZpcnN0IHN5bWJvbCBuYW1lIHJlZmVycyB0byB0aGUgbG9jYWwgbmFtZSBvZiB0aGUgbmFtZXNwYWNlLCB3aGljaCBpcyBpcyBkaXNjYXJkZWRcbiAgICAgIC8vIGFzIGEgbmV3IG5hbWVzcGFjZSBpbXBvcnQgd2lsbCBiZSBnZW5lcmF0ZWQuIFRoaXMgaXMgZm9sbG93ZWQgYnkgdGhlIHN5bWJvbCBuYW1lIHRoYXQgbmVlZHNcbiAgICAgIC8vIHRvIGJlIGltcG9ydGVkIGFuZCBhbnkgcmVtYWluaW5nIG5hbWVzIHRoYXQgY29uc3RpdHV0ZSB0aGUgY29tcGxldGUgcGF0aCB0byB0aGUgdmFsdWUuXG4gICAgICBjb25zdCBbX25zLCBpbXBvcnRlZE5hbWUsIC4uLm5lc3RlZFBhdGhdID0gc3ltYm9scy5zeW1ib2xOYW1lcztcblxuICAgICAgY29uc3QgbW9kdWxlTmFtZSA9IGV4dHJhY3RNb2R1bGVOYW1lKGZpcnN0RGVjbC5wYXJlbnQucGFyZW50KTtcbiAgICAgIHJldHVybiB7XG4gICAgICAgIGtpbmQ6IFR5cGVWYWx1ZVJlZmVyZW5jZUtpbmQuSU1QT1JURUQsXG4gICAgICAgIHZhbHVlRGVjbGFyYXRpb246IGRlY2wudmFsdWVEZWNsYXJhdGlvbixcbiAgICAgICAgbW9kdWxlTmFtZSxcbiAgICAgICAgaW1wb3J0ZWROYW1lLFxuICAgICAgICBuZXN0ZWRQYXRoXG4gICAgICB9O1xuICAgIH1cbiAgfVxuXG4gIC8vIElmIHRoZSB0eXBlIGlzIG5vdCBpbXBvcnRlZCwgdGhlIHR5cGUgcmVmZXJlbmNlIGNhbiBiZSBjb252ZXJ0ZWQgaW50byBhbiBleHByZXNzaW9uIGFzIGlzLlxuICBjb25zdCBleHByZXNzaW9uID0gdHlwZU5vZGVUb1ZhbHVlRXhwcih0eXBlTm9kZSk7XG4gIGlmIChleHByZXNzaW9uICE9PSBudWxsKSB7XG4gICAgcmV0dXJuIHtcbiAgICAgIGtpbmQ6IFR5cGVWYWx1ZVJlZmVyZW5jZUtpbmQuTE9DQUwsXG4gICAgICBleHByZXNzaW9uLFxuICAgICAgZGVmYXVsdEltcG9ydFN0YXRlbWVudDogbnVsbCxcbiAgICB9O1xuICB9IGVsc2Uge1xuICAgIHJldHVybiB1bnN1cHBvcnRlZFR5cGUodHlwZU5vZGUpO1xuICB9XG59XG5cbmZ1bmN0aW9uIHVuc3VwcG9ydGVkVHlwZSh0eXBlTm9kZTogdHMuVHlwZU5vZGUpOiBVbmF2YWlsYWJsZVR5cGVWYWx1ZVJlZmVyZW5jZSB7XG4gIHJldHVybiB7XG4gICAga2luZDogVHlwZVZhbHVlUmVmZXJlbmNlS2luZC5VTkFWQUlMQUJMRSxcbiAgICByZWFzb246IHtraW5kOiBWYWx1ZVVuYXZhaWxhYmxlS2luZC5VTlNVUFBPUlRFRCwgdHlwZU5vZGV9LFxuICB9O1xufVxuXG5mdW5jdGlvbiBub1ZhbHVlRGVjbGFyYXRpb24oXG4gICAgdHlwZU5vZGU6IHRzLlR5cGVOb2RlLCBkZWNsOiB0cy5EZWNsYXJhdGlvbik6IFVuYXZhaWxhYmxlVHlwZVZhbHVlUmVmZXJlbmNlIHtcbiAgcmV0dXJuIHtcbiAgICBraW5kOiBUeXBlVmFsdWVSZWZlcmVuY2VLaW5kLlVOQVZBSUxBQkxFLFxuICAgIHJlYXNvbjoge2tpbmQ6IFZhbHVlVW5hdmFpbGFibGVLaW5kLk5PX1ZBTFVFX0RFQ0xBUkFUSU9OLCB0eXBlTm9kZSwgZGVjbH0sXG4gIH07XG59XG5cbmZ1bmN0aW9uIHR5cGVPbmx5SW1wb3J0KFxuICAgIHR5cGVOb2RlOiB0cy5UeXBlTm9kZSwgaW1wb3J0Q2xhdXNlOiB0cy5JbXBvcnRDbGF1c2UpOiBVbmF2YWlsYWJsZVR5cGVWYWx1ZVJlZmVyZW5jZSB7XG4gIHJldHVybiB7XG4gICAga2luZDogVHlwZVZhbHVlUmVmZXJlbmNlS2luZC5VTkFWQUlMQUJMRSxcbiAgICByZWFzb246IHtraW5kOiBWYWx1ZVVuYXZhaWxhYmxlS2luZC5UWVBFX09OTFlfSU1QT1JULCB0eXBlTm9kZSwgaW1wb3J0Q2xhdXNlfSxcbiAgfTtcbn1cblxuZnVuY3Rpb24gdW5rbm93blJlZmVyZW5jZSh0eXBlTm9kZTogdHMuVHlwZU5vZGUpOiBVbmF2YWlsYWJsZVR5cGVWYWx1ZVJlZmVyZW5jZSB7XG4gIHJldHVybiB7XG4gICAga2luZDogVHlwZVZhbHVlUmVmZXJlbmNlS2luZC5VTkFWQUlMQUJMRSxcbiAgICByZWFzb246IHtraW5kOiBWYWx1ZVVuYXZhaWxhYmxlS2luZC5VTktOT1dOX1JFRkVSRU5DRSwgdHlwZU5vZGV9LFxuICB9O1xufVxuXG5mdW5jdGlvbiBuYW1lc3BhY2VJbXBvcnQoXG4gICAgdHlwZU5vZGU6IHRzLlR5cGVOb2RlLCBpbXBvcnRDbGF1c2U6IHRzLkltcG9ydENsYXVzZSk6IFVuYXZhaWxhYmxlVHlwZVZhbHVlUmVmZXJlbmNlIHtcbiAgcmV0dXJuIHtcbiAgICBraW5kOiBUeXBlVmFsdWVSZWZlcmVuY2VLaW5kLlVOQVZBSUxBQkxFLFxuICAgIHJlYXNvbjoge2tpbmQ6IFZhbHVlVW5hdmFpbGFibGVLaW5kLk5BTUVTUEFDRSwgdHlwZU5vZGUsIGltcG9ydENsYXVzZX0sXG4gIH07XG59XG5cbmZ1bmN0aW9uIG1pc3NpbmdUeXBlKCk6IFVuYXZhaWxhYmxlVHlwZVZhbHVlUmVmZXJlbmNlIHtcbiAgcmV0dXJuIHtcbiAgICBraW5kOiBUeXBlVmFsdWVSZWZlcmVuY2VLaW5kLlVOQVZBSUxBQkxFLFxuICAgIHJlYXNvbjoge2tpbmQ6IFZhbHVlVW5hdmFpbGFibGVLaW5kLk1JU1NJTkdfVFlQRX0sXG4gIH07XG59XG5cbi8qKlxuICogQXR0ZW1wdCB0byBleHRyYWN0IGEgYHRzLkV4cHJlc3Npb25gIHRoYXQncyBlcXVpdmFsZW50IHRvIGEgYHRzLlR5cGVOb2RlYCwgYXMgdGhlIHR3byBoYXZlXG4gKiBkaWZmZXJlbnQgQVNUIHNoYXBlcyBidXQgY2FuIHJlZmVyZW5jZSB0aGUgc2FtZSBzeW1ib2xzLlxuICpcbiAqIFRoaXMgd2lsbCByZXR1cm4gYG51bGxgIGlmIGFuIGVxdWl2YWxlbnQgZXhwcmVzc2lvbiBjYW5ub3QgYmUgY29uc3RydWN0ZWQuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiB0eXBlTm9kZVRvVmFsdWVFeHByKG5vZGU6IHRzLlR5cGVOb2RlKTogdHMuRXhwcmVzc2lvbnxudWxsIHtcbiAgaWYgKHRzLmlzVHlwZVJlZmVyZW5jZU5vZGUobm9kZSkpIHtcbiAgICByZXR1cm4gZW50aXR5TmFtZVRvVmFsdWUobm9kZS50eXBlTmFtZSk7XG4gIH0gZWxzZSB7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbn1cblxuLyoqXG4gKiBSZXNvbHZlIGEgYFR5cGVSZWZlcmVuY2VgIG5vZGUgdG8gdGhlIGB0cy5TeW1ib2xgcyBmb3IgYm90aCBpdHMgZGVjbGFyYXRpb24gYW5kIGl0cyBsb2NhbCBzb3VyY2UuXG4gKlxuICogSW4gdGhlIGV2ZW50IHRoYXQgdGhlIGBUeXBlUmVmZXJlbmNlYCByZWZlcnMgdG8gYSBsb2NhbGx5IGRlY2xhcmVkIHN5bWJvbCwgdGhlc2Ugd2lsbCBiZSB0aGVcbiAqIHNhbWUuIElmIHRoZSBgVHlwZVJlZmVyZW5jZWAgcmVmZXJzIHRvIGFuIGltcG9ydGVkIHN5bWJvbCwgdGhlbiBgZGVjbGAgd2lsbCBiZSB0aGUgZnVsbHkgcmVzb2x2ZWRcbiAqIGB0cy5TeW1ib2xgIG9mIHRoZSByZWZlcmVuY2VkIHN5bWJvbC4gYGxvY2FsYCB3aWxsIGJlIHRoZSBgdHMuU3ltYm9sYCBvZiB0aGUgYHRzLklkZW50aWZpZXJgXG4gKiB3aGljaCBwb2ludHMgdG8gdGhlIGltcG9ydCBzdGF0ZW1lbnQgYnkgd2hpY2ggdGhlIHN5bWJvbCB3YXMgaW1wb3J0ZWQuXG4gKlxuICogQWxsIHN5bWJvbCBuYW1lcyB0aGF0IG1ha2UgdXAgdGhlIHR5cGUgcmVmZXJlbmNlIGFyZSByZXR1cm5lZCBsZWZ0LXRvLXJpZ2h0IGludG8gdGhlXG4gKiBgc3ltYm9sTmFtZXNgIGFycmF5LCB3aGljaCBpcyBndWFyYW50ZWVkIHRvIGluY2x1ZGUgYXQgbGVhc3Qgb25lIGVudHJ5LlxuICovXG5mdW5jdGlvbiByZXNvbHZlVHlwZVN5bWJvbHModHlwZVJlZjogdHMuVHlwZVJlZmVyZW5jZU5vZGUsIGNoZWNrZXI6IHRzLlR5cGVDaGVja2VyKTpcbiAgICB7bG9jYWw6IHRzLlN5bWJvbCwgZGVjbDogdHMuU3ltYm9sLCBzeW1ib2xOYW1lczogc3RyaW5nW119fG51bGwge1xuICBjb25zdCB0eXBlTmFtZSA9IHR5cGVSZWYudHlwZU5hbWU7XG4gIC8vIHR5cGVSZWZTeW1ib2wgaXMgdGhlIHRzLlN5bWJvbCBvZiB0aGUgZW50aXJlIHR5cGUgcmVmZXJlbmNlLlxuICBjb25zdCB0eXBlUmVmU3ltYm9sOiB0cy5TeW1ib2x8dW5kZWZpbmVkID0gY2hlY2tlci5nZXRTeW1ib2xBdExvY2F0aW9uKHR5cGVOYW1lKTtcbiAgaWYgKHR5cGVSZWZTeW1ib2wgPT09IHVuZGVmaW5lZCkge1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgLy8gYGxvY2FsYCBpcyB0aGUgYHRzLlN5bWJvbGAgZm9yIHRoZSBsb2NhbCBgdHMuSWRlbnRpZmllcmAgZm9yIHRoZSB0eXBlLlxuICAvLyBJZiB0aGUgdHlwZSBpcyBhY3R1YWxseSBsb2NhbGx5IGRlY2xhcmVkIG9yIGlzIGltcG9ydGVkIGJ5IG5hbWUsIGZvciBleGFtcGxlOlxuICAvLyAgIGltcG9ydCB7Rm9vfSBmcm9tICcuL2Zvbyc7XG4gIC8vIHRoZW4gaXQnbGwgYmUgdGhlIHNhbWUgYXMgYHR5cGVSZWZTeW1ib2xgLlxuICAvL1xuICAvLyBJZiB0aGUgdHlwZSBpcyBpbXBvcnRlZCB2aWEgYSBuYW1lc3BhY2UgaW1wb3J0LCBmb3IgZXhhbXBsZTpcbiAgLy8gICBpbXBvcnQgKiBhcyBmb28gZnJvbSAnLi9mb28nO1xuICAvLyBhbmQgdGhlbiByZWZlcmVuY2VkIGFzOlxuICAvLyAgIGNvbnN0cnVjdG9yKGY6IGZvby5Gb28pXG4gIC8vIHRoZW4gYGxvY2FsYCB3aWxsIGJlIHRoZSBgdHMuU3ltYm9sYCBvZiBgZm9vYCwgd2hlcmVhcyBgdHlwZVJlZlN5bWJvbGAgd2lsbCBiZSB0aGUgYHRzLlN5bWJvbGBcbiAgLy8gb2YgYGZvby5Gb29gLiBUaGlzIGFsbG93cyB0cmFja2luZyBvZiB0aGUgaW1wb3J0IGJlaGluZCB3aGF0ZXZlciB0eXBlIHJlZmVyZW5jZSBleGlzdHMuXG4gIGxldCBsb2NhbCA9IHR5cGVSZWZTeW1ib2w7XG5cbiAgLy8gRGVzdHJ1Y3R1cmUgYSBuYW1lIGxpa2UgYGZvby5YLlkuWmAgYXMgZm9sbG93czpcbiAgLy8gLSBpbiBgbGVmdE1vc3RgLCB0aGUgYHRzLklkZW50aWZpZXJgIG9mIHRoZSBsZWZ0LW1vc3QgbmFtZSAoYGZvb2ApIGluIHRoZSBxdWFsaWZpZWQgbmFtZS5cbiAgLy8gICBUaGlzIGlkZW50aWZpZXIgaXMgdXNlZCB0byByZXNvbHZlIHRoZSBgdHMuU3ltYm9sYCBmb3IgYGxvY2FsYC5cbiAgLy8gLSBpbiBgc3ltYm9sTmFtZXNgLCBhbGwgbmFtZXMgaW52b2x2ZWQgaW4gdGhlIHF1YWxpZmllZCBwYXRoLCBvciBhIHNpbmdsZSBzeW1ib2wgbmFtZSBpZiB0aGVcbiAgLy8gICB0eXBlIGlzIG5vdCBxdWFsaWZpZWQuXG4gIGxldCBsZWZ0TW9zdCA9IHR5cGVOYW1lO1xuICBjb25zdCBzeW1ib2xOYW1lczogc3RyaW5nW10gPSBbXTtcbiAgd2hpbGUgKHRzLmlzUXVhbGlmaWVkTmFtZShsZWZ0TW9zdCkpIHtcbiAgICBzeW1ib2xOYW1lcy51bnNoaWZ0KGxlZnRNb3N0LnJpZ2h0LnRleHQpO1xuICAgIGxlZnRNb3N0ID0gbGVmdE1vc3QubGVmdDtcbiAgfVxuICBzeW1ib2xOYW1lcy51bnNoaWZ0KGxlZnRNb3N0LnRleHQpO1xuXG4gIGlmIChsZWZ0TW9zdCAhPT0gdHlwZU5hbWUpIHtcbiAgICBjb25zdCBsb2NhbFRtcCA9IGNoZWNrZXIuZ2V0U3ltYm9sQXRMb2NhdGlvbihsZWZ0TW9zdCk7XG4gICAgaWYgKGxvY2FsVG1wICE9PSB1bmRlZmluZWQpIHtcbiAgICAgIGxvY2FsID0gbG9jYWxUbXA7XG4gICAgfVxuICB9XG5cbiAgLy8gRGUtYWxpYXMgdGhlIHRvcC1sZXZlbCB0eXBlIHJlZmVyZW5jZSBzeW1ib2wgdG8gZ2V0IHRoZSBzeW1ib2wgb2YgdGhlIGFjdHVhbCBkZWNsYXJhdGlvbi5cbiAgbGV0IGRlY2wgPSB0eXBlUmVmU3ltYm9sO1xuICBpZiAodHlwZVJlZlN5bWJvbC5mbGFncyAmIHRzLlN5bWJvbEZsYWdzLkFsaWFzKSB7XG4gICAgZGVjbCA9IGNoZWNrZXIuZ2V0QWxpYXNlZFN5bWJvbCh0eXBlUmVmU3ltYm9sKTtcbiAgfVxuICByZXR1cm4ge2xvY2FsLCBkZWNsLCBzeW1ib2xOYW1lc307XG59XG5cbmZ1bmN0aW9uIGVudGl0eU5hbWVUb1ZhbHVlKG5vZGU6IHRzLkVudGl0eU5hbWUpOiB0cy5FeHByZXNzaW9ufG51bGwge1xuICBpZiAodHMuaXNRdWFsaWZpZWROYW1lKG5vZGUpKSB7XG4gICAgY29uc3QgbGVmdCA9IGVudGl0eU5hbWVUb1ZhbHVlKG5vZGUubGVmdCk7XG4gICAgcmV0dXJuIGxlZnQgIT09IG51bGwgPyB0cy5jcmVhdGVQcm9wZXJ0eUFjY2VzcyhsZWZ0LCBub2RlLnJpZ2h0KSA6IG51bGw7XG4gIH0gZWxzZSBpZiAodHMuaXNJZGVudGlmaWVyKG5vZGUpKSB7XG4gICAgcmV0dXJuIHRzLmdldE11dGFibGVDbG9uZShub2RlKTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxufVxuXG5mdW5jdGlvbiBleHRyYWN0TW9kdWxlTmFtZShub2RlOiB0cy5JbXBvcnREZWNsYXJhdGlvbik6IHN0cmluZyB7XG4gIGlmICghdHMuaXNTdHJpbmdMaXRlcmFsKG5vZGUubW9kdWxlU3BlY2lmaWVyKSkge1xuICAgIHRocm93IG5ldyBFcnJvcignbm90IGEgbW9kdWxlIHNwZWNpZmllcicpO1xuICB9XG4gIHJldHVybiBub2RlLm1vZHVsZVNwZWNpZmllci50ZXh0O1xufVxuIl19