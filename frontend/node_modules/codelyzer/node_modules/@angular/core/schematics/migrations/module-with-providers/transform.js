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
        define("@angular/core/schematics/migrations/module-with-providers/transform", ["require", "exports", "@angular/compiler-cli/src/ngtsc/imports", "@angular/compiler-cli/src/ngtsc/partial_evaluator", "@angular/compiler-cli/src/ngtsc/reflection", "typescript", "@angular/core/schematics/migrations/module-with-providers/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const imports_1 = require("@angular/compiler-cli/src/ngtsc/imports");
    const partial_evaluator_1 = require("@angular/compiler-cli/src/ngtsc/partial_evaluator");
    const reflection_1 = require("@angular/compiler-cli/src/ngtsc/reflection");
    const ts = require("typescript");
    const util_1 = require("@angular/core/schematics/migrations/module-with-providers/util");
    const TODO_COMMENT = 'TODO: The following node requires a generic type for `ModuleWithProviders';
    class ModuleWithProvidersTransform {
        constructor(typeChecker, getUpdateRecorder) {
            this.typeChecker = typeChecker;
            this.getUpdateRecorder = getUpdateRecorder;
            this.printer = ts.createPrinter();
            this.partialEvaluator = new partial_evaluator_1.PartialEvaluator(new reflection_1.TypeScriptReflectionHost(this.typeChecker), this.typeChecker, 
            /* dependencyTracker */ null);
        }
        /** Migrates a given NgModule by walking through the referenced providers and static methods. */
        migrateModule(module) {
            return module.staticMethodsWithoutType.map(this._migrateStaticNgModuleMethod.bind(this))
                .filter(v => v);
        }
        /** Migrates a ModuleWithProviders type definition that has no explicit generic type */
        migrateType(type) {
            const parent = type.parent;
            let moduleText;
            if ((ts.isFunctionDeclaration(parent) || ts.isMethodDeclaration(parent)) && parent.body) {
                const returnStatement = parent.body.statements.find(ts.isReturnStatement);
                // No return type found, exit
                if (!returnStatement || !returnStatement.expression) {
                    return [{ node: parent, message: `Return type is not statically analyzable.` }];
                }
                moduleText = this._getNgModuleTypeOfExpression(returnStatement.expression);
            }
            else if (ts.isPropertyDeclaration(parent) || ts.isVariableDeclaration(parent)) {
                if (!parent.initializer) {
                    addTodoToNode(type, TODO_COMMENT);
                    this._updateNode(type, type);
                    return [{ node: parent, message: `Unable to determine type for declaration.` }];
                }
                moduleText = this._getNgModuleTypeOfExpression(parent.initializer);
            }
            if (moduleText) {
                this._addGenericToTypeReference(type, moduleText);
                return [];
            }
            return [{ node: parent, message: `Type is not statically analyzable.` }];
        }
        /** Add a given generic to a type reference node */
        _addGenericToTypeReference(node, typeName) {
            const newGenericExpr = util_1.createModuleWithProvidersType(typeName, node);
            this._updateNode(node, newGenericExpr);
        }
        /**
         * Migrates a given static method if its ModuleWithProviders does not provide
         * a generic type.
         */
        _updateStaticMethodType(method, typeName) {
            const newGenericExpr = util_1.createModuleWithProvidersType(typeName, method.type);
            const newMethodDecl = ts.updateMethod(method, method.decorators, method.modifiers, method.asteriskToken, method.name, method.questionToken, method.typeParameters, method.parameters, newGenericExpr, method.body);
            this._updateNode(method, newMethodDecl);
        }
        /** Whether the resolved value map represents a ModuleWithProviders object */
        isModuleWithProvidersType(value) {
            const ngModule = value.get('ngModule') !== undefined;
            const providers = value.get('providers') !== undefined;
            return ngModule && (value.size === 1 || (providers && value.size === 2));
        }
        /** Determine the generic type of a suspected ModuleWithProviders return type and add it
         * explicitly */
        _migrateStaticNgModuleMethod(node) {
            const returnStatement = node.body &&
                node.body.statements.find(n => ts.isReturnStatement(n));
            // No return type found, exit
            if (!returnStatement || !returnStatement.expression) {
                return { node: node, message: `Return type is not statically analyzable.` };
            }
            const moduleText = this._getNgModuleTypeOfExpression(returnStatement.expression);
            if (moduleText) {
                this._updateStaticMethodType(node, moduleText);
                return null;
            }
            return { node: node, message: `Method type is not statically analyzable.` };
        }
        /** Evaluate and return the ngModule type from an expression */
        _getNgModuleTypeOfExpression(expr) {
            const evaluatedExpr = this.partialEvaluator.evaluate(expr);
            return this._getTypeOfResolvedValue(evaluatedExpr);
        }
        /**
         * Visits a given object literal expression to determine the ngModule type. If the expression
         * cannot be resolved, add a TODO to alert the user.
         */
        _getTypeOfResolvedValue(value) {
            if (value instanceof Map && this.isModuleWithProvidersType(value)) {
                const mapValue = value.get('ngModule');
                if (mapValue instanceof imports_1.Reference && ts.isClassDeclaration(mapValue.node) &&
                    mapValue.node.name) {
                    return mapValue.node.name.text;
                }
                else if (mapValue instanceof partial_evaluator_1.DynamicValue) {
                    addTodoToNode(mapValue.node, TODO_COMMENT);
                    this._updateNode(mapValue.node, mapValue.node);
                }
            }
            return undefined;
        }
        _updateNode(node, newNode) {
            const newText = this.printer.printNode(ts.EmitHint.Unspecified, newNode, node.getSourceFile());
            const recorder = this.getUpdateRecorder(node.getSourceFile());
            recorder.remove(node.getStart(), node.getWidth());
            recorder.insertRight(node.getStart(), newText);
        }
    }
    exports.ModuleWithProvidersTransform = ModuleWithProvidersTransform;
    /**
     * Adds a to-do to the given TypeScript node which alerts developers to fix
     * potential issues identified by the migration.
     */
    function addTodoToNode(node, text) {
        ts.setSyntheticLeadingComments(node, [{
                pos: -1,
                end: -1,
                hasTrailingNewLine: false,
                kind: ts.SyntaxKind.MultiLineCommentTrivia,
                text: ` ${text} `
            }]);
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNmb3JtLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zY2hlbWF0aWNzL21pZ3JhdGlvbnMvbW9kdWxlLXdpdGgtcHJvdmlkZXJzL3RyYW5zZm9ybS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7OztJQUdILHFFQUFrRTtJQUNsRSx5RkFBa0k7SUFDbEksMkVBQW9GO0lBQ3BGLGlDQUFpQztJQUdqQyx5RkFBcUQ7SUFPckQsTUFBTSxZQUFZLEdBQUcsMkVBQTJFLENBQUM7SUFFakcsTUFBYSw0QkFBNEI7UUFNdkMsWUFDWSxXQUEyQixFQUMzQixpQkFBd0Q7WUFEeEQsZ0JBQVcsR0FBWCxXQUFXLENBQWdCO1lBQzNCLHNCQUFpQixHQUFqQixpQkFBaUIsQ0FBdUM7WUFQNUQsWUFBTyxHQUFHLEVBQUUsQ0FBQyxhQUFhLEVBQUUsQ0FBQztZQUM3QixxQkFBZ0IsR0FBcUIsSUFBSSxvQ0FBZ0IsQ0FDN0QsSUFBSSxxQ0FBd0IsQ0FBQyxJQUFJLENBQUMsV0FBVyxDQUFDLEVBQUUsSUFBSSxDQUFDLFdBQVc7WUFDaEUsdUJBQXVCLENBQUMsSUFBSSxDQUFDLENBQUM7UUFJcUMsQ0FBQztRQUV4RSxnR0FBZ0c7UUFDaEcsYUFBYSxDQUFDLE1BQXdCO1lBQ3BDLE9BQU8sTUFBTSxDQUFDLHdCQUF3QixDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsNEJBQTRCLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO2lCQUNuRixNQUFNLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQXNCLENBQUM7UUFDM0MsQ0FBQztRQUVELHVGQUF1RjtRQUN2RixXQUFXLENBQUMsSUFBMEI7WUFDcEMsTUFBTSxNQUFNLEdBQUcsSUFBSSxDQUFDLE1BQU0sQ0FBQztZQUMzQixJQUFJLFVBQTRCLENBQUM7WUFDakMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxxQkFBcUIsQ0FBQyxNQUFNLENBQUMsSUFBSSxFQUFFLENBQUMsbUJBQW1CLENBQUMsTUFBTSxDQUFDLENBQUMsSUFBSSxNQUFNLENBQUMsSUFBSSxFQUFFO2dCQUN2RixNQUFNLGVBQWUsR0FBRyxNQUFNLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLGlCQUFpQixDQUFDLENBQUM7Z0JBRTFFLDZCQUE2QjtnQkFDN0IsSUFBSSxDQUFDLGVBQWUsSUFBSSxDQUFDLGVBQWUsQ0FBQyxVQUFVLEVBQUU7b0JBQ25ELE9BQU8sQ0FBQyxFQUFDLElBQUksRUFBRSxNQUFNLEVBQUUsT0FBTyxFQUFFLDJDQUEyQyxFQUFDLENBQUMsQ0FBQztpQkFDL0U7Z0JBRUQsVUFBVSxHQUFHLElBQUksQ0FBQyw0QkFBNEIsQ0FBQyxlQUFlLENBQUMsVUFBVSxDQUFDLENBQUM7YUFDNUU7aUJBQU0sSUFBSSxFQUFFLENBQUMscUJBQXFCLENBQUMsTUFBTSxDQUFDLElBQUksRUFBRSxDQUFDLHFCQUFxQixDQUFDLE1BQU0sQ0FBQyxFQUFFO2dCQUMvRSxJQUFJLENBQUMsTUFBTSxDQUFDLFdBQVcsRUFBRTtvQkFDdkIsYUFBYSxDQUFDLElBQUksRUFBRSxZQUFZLENBQUMsQ0FBQztvQkFDbEMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLENBQUM7b0JBQzdCLE9BQU8sQ0FBQyxFQUFDLElBQUksRUFBRSxNQUFNLEVBQUUsT0FBTyxFQUFFLDJDQUEyQyxFQUFDLENBQUMsQ0FBQztpQkFDL0U7Z0JBRUQsVUFBVSxHQUFHLElBQUksQ0FBQyw0QkFBNEIsQ0FBQyxNQUFNLENBQUMsV0FBVyxDQUFDLENBQUM7YUFDcEU7WUFFRCxJQUFJLFVBQVUsRUFBRTtnQkFDZCxJQUFJLENBQUMsMEJBQTBCLENBQUMsSUFBSSxFQUFFLFVBQVUsQ0FBQyxDQUFDO2dCQUNsRCxPQUFPLEVBQUUsQ0FBQzthQUNYO1lBRUQsT0FBTyxDQUFDLEVBQUMsSUFBSSxFQUFFLE1BQU0sRUFBRSxPQUFPLEVBQUUsb0NBQW9DLEVBQUMsQ0FBQyxDQUFDO1FBQ3pFLENBQUM7UUFFRCxtREFBbUQ7UUFDM0MsMEJBQTBCLENBQUMsSUFBMEIsRUFBRSxRQUFnQjtZQUM3RSxNQUFNLGNBQWMsR0FBRyxvQ0FBNkIsQ0FBQyxRQUFRLEVBQUUsSUFBSSxDQUFDLENBQUM7WUFDckUsSUFBSSxDQUFDLFdBQVcsQ0FBQyxJQUFJLEVBQUUsY0FBYyxDQUFDLENBQUM7UUFDekMsQ0FBQztRQUVEOzs7V0FHRztRQUNLLHVCQUF1QixDQUFDLE1BQTRCLEVBQUUsUUFBZ0I7WUFDNUUsTUFBTSxjQUFjLEdBQ2hCLG9DQUE2QixDQUFDLFFBQVEsRUFBRSxNQUFNLENBQUMsSUFBNEIsQ0FBQyxDQUFDO1lBQ2pGLE1BQU0sYUFBYSxHQUFHLEVBQUUsQ0FBQyxZQUFZLENBQ2pDLE1BQU0sRUFBRSxNQUFNLENBQUMsVUFBVSxFQUFFLE1BQU0sQ0FBQyxTQUFTLEVBQUUsTUFBTSxDQUFDLGFBQWEsRUFBRSxNQUFNLENBQUMsSUFBSSxFQUM5RSxNQUFNLENBQUMsYUFBYSxFQUFFLE1BQU0sQ0FBQyxjQUFjLEVBQUUsTUFBTSxDQUFDLFVBQVUsRUFBRSxjQUFjLEVBQzlFLE1BQU0sQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUVqQixJQUFJLENBQUMsV0FBVyxDQUFDLE1BQU0sRUFBRSxhQUFhLENBQUMsQ0FBQztRQUMxQyxDQUFDO1FBRUQsNkVBQTZFO1FBQzdFLHlCQUF5QixDQUFDLEtBQXVCO1lBQy9DLE1BQU0sUUFBUSxHQUFHLEtBQUssQ0FBQyxHQUFHLENBQUMsVUFBVSxDQUFDLEtBQUssU0FBUyxDQUFDO1lBQ3JELE1BQU0sU0FBUyxHQUFHLEtBQUssQ0FBQyxHQUFHLENBQUMsV0FBVyxDQUFDLEtBQUssU0FBUyxDQUFDO1lBRXZELE9BQU8sUUFBUSxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksS0FBSyxDQUFDLElBQUksQ0FBQyxTQUFTLElBQUksS0FBSyxDQUFDLElBQUksS0FBSyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQzNFLENBQUM7UUFFRDt3QkFDZ0I7UUFDUiw0QkFBNEIsQ0FBQyxJQUEwQjtZQUM3RCxNQUFNLGVBQWUsR0FBRyxJQUFJLENBQUMsSUFBSTtnQkFDN0IsSUFBSSxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsRUFBRSxDQUFDLGlCQUFpQixDQUFDLENBQUMsQ0FBQyxDQUFtQyxDQUFDO1lBRTlGLDZCQUE2QjtZQUM3QixJQUFJLENBQUMsZUFBZSxJQUFJLENBQUMsZUFBZSxDQUFDLFVBQVUsRUFBRTtnQkFDbkQsT0FBTyxFQUFDLElBQUksRUFBRSxJQUFJLEVBQUUsT0FBTyxFQUFFLDJDQUEyQyxFQUFDLENBQUM7YUFDM0U7WUFFRCxNQUFNLFVBQVUsR0FBRyxJQUFJLENBQUMsNEJBQTRCLENBQUMsZUFBZSxDQUFDLFVBQVUsQ0FBQyxDQUFDO1lBRWpGLElBQUksVUFBVSxFQUFFO2dCQUNkLElBQUksQ0FBQyx1QkFBdUIsQ0FBQyxJQUFJLEVBQUUsVUFBVSxDQUFDLENBQUM7Z0JBQy9DLE9BQU8sSUFBSSxDQUFDO2FBQ2I7WUFFRCxPQUFPLEVBQUMsSUFBSSxFQUFFLElBQUksRUFBRSxPQUFPLEVBQUUsMkNBQTJDLEVBQUMsQ0FBQztRQUM1RSxDQUFDO1FBRUQsK0RBQStEO1FBQ3ZELDRCQUE0QixDQUFDLElBQW1CO1lBQ3RELE1BQU0sYUFBYSxHQUFHLElBQUksQ0FBQyxnQkFBZ0IsQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLENBQUM7WUFDM0QsT0FBTyxJQUFJLENBQUMsdUJBQXVCLENBQUMsYUFBYSxDQUFDLENBQUM7UUFDckQsQ0FBQztRQUVEOzs7V0FHRztRQUNLLHVCQUF1QixDQUFDLEtBQW9CO1lBQ2xELElBQUksS0FBSyxZQUFZLEdBQUcsSUFBSSxJQUFJLENBQUMseUJBQXlCLENBQUMsS0FBSyxDQUFDLEVBQUU7Z0JBQ2pFLE1BQU0sUUFBUSxHQUFHLEtBQUssQ0FBQyxHQUFHLENBQUMsVUFBVSxDQUFHLENBQUM7Z0JBQ3pDLElBQUksUUFBUSxZQUFZLG1CQUFTLElBQUksRUFBRSxDQUFDLGtCQUFrQixDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUM7b0JBQ3JFLFFBQVEsQ0FBQyxJQUFJLENBQUMsSUFBSSxFQUFFO29CQUN0QixPQUFPLFFBQVEsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQztpQkFDaEM7cUJBQU0sSUFBSSxRQUFRLFlBQVksZ0NBQVksRUFBRTtvQkFDM0MsYUFBYSxDQUFDLFFBQVEsQ0FBQyxJQUFJLEVBQUUsWUFBWSxDQUFDLENBQUM7b0JBQzNDLElBQUksQ0FBQyxXQUFXLENBQUMsUUFBUSxDQUFDLElBQUksRUFBRSxRQUFRLENBQUMsSUFBSSxDQUFDLENBQUM7aUJBQ2hEO2FBQ0Y7WUFFRCxPQUFPLFNBQVMsQ0FBQztRQUNuQixDQUFDO1FBRU8sV0FBVyxDQUFDLElBQWEsRUFBRSxPQUFnQjtZQUNqRCxNQUFNLE9BQU8sR0FBRyxJQUFJLENBQUMsT0FBTyxDQUFDLFNBQVMsQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLFdBQVcsRUFBRSxPQUFPLEVBQUUsSUFBSSxDQUFDLGFBQWEsRUFBRSxDQUFDLENBQUM7WUFDL0YsTUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLGlCQUFpQixDQUFDLElBQUksQ0FBQyxhQUFhLEVBQUUsQ0FBQyxDQUFDO1lBRTlELFFBQVEsQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLFFBQVEsRUFBRSxFQUFFLElBQUksQ0FBQyxRQUFRLEVBQUUsQ0FBQyxDQUFDO1lBQ2xELFFBQVEsQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUFDLFFBQVEsRUFBRSxFQUFFLE9BQU8sQ0FBQyxDQUFDO1FBQ2pELENBQUM7S0FDRjtJQWpJRCxvRUFpSUM7SUFFRDs7O09BR0c7SUFDSCxTQUFTLGFBQWEsQ0FBQyxJQUFhLEVBQUUsSUFBWTtRQUNoRCxFQUFFLENBQUMsMkJBQTJCLENBQUMsSUFBSSxFQUFFLENBQUM7Z0JBQ0wsR0FBRyxFQUFFLENBQUMsQ0FBQztnQkFDUCxHQUFHLEVBQUUsQ0FBQyxDQUFDO2dCQUNQLGtCQUFrQixFQUFFLEtBQUs7Z0JBQ3pCLElBQUksRUFBRSxFQUFFLENBQUMsVUFBVSxDQUFDLHNCQUFzQjtnQkFDMUMsSUFBSSxFQUFFLElBQUksSUFBSSxHQUFHO2FBQ2xCLENBQUMsQ0FBQyxDQUFDO0lBQ3JDLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7VXBkYXRlUmVjb3JkZXJ9IGZyb20gJ0Bhbmd1bGFyLWRldmtpdC9zY2hlbWF0aWNzJztcbmltcG9ydCB7UmVmZXJlbmNlfSBmcm9tICdAYW5ndWxhci9jb21waWxlci1jbGkvc3JjL25ndHNjL2ltcG9ydHMnO1xuaW1wb3J0IHtEeW5hbWljVmFsdWUsIFBhcnRpYWxFdmFsdWF0b3IsIFJlc29sdmVkVmFsdWUsIFJlc29sdmVkVmFsdWVNYXB9IGZyb20gJ0Bhbmd1bGFyL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvcGFydGlhbF9ldmFsdWF0b3InO1xuaW1wb3J0IHtUeXBlU2NyaXB0UmVmbGVjdGlvbkhvc3R9IGZyb20gJ0Bhbmd1bGFyL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvcmVmbGVjdGlvbic7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtSZXNvbHZlZE5nTW9kdWxlfSBmcm9tICcuL2NvbGxlY3Rvcic7XG5pbXBvcnQge2NyZWF0ZU1vZHVsZVdpdGhQcm92aWRlcnNUeXBlfSBmcm9tICcuL3V0aWwnO1xuXG5leHBvcnQgaW50ZXJmYWNlIEFuYWx5c2lzRmFpbHVyZSB7XG4gIG5vZGU6IHRzLk5vZGU7XG4gIG1lc3NhZ2U6IHN0cmluZztcbn1cblxuY29uc3QgVE9ET19DT01NRU5UID0gJ1RPRE86IFRoZSBmb2xsb3dpbmcgbm9kZSByZXF1aXJlcyBhIGdlbmVyaWMgdHlwZSBmb3IgYE1vZHVsZVdpdGhQcm92aWRlcnMnO1xuXG5leHBvcnQgY2xhc3MgTW9kdWxlV2l0aFByb3ZpZGVyc1RyYW5zZm9ybSB7XG4gIHByaXZhdGUgcHJpbnRlciA9IHRzLmNyZWF0ZVByaW50ZXIoKTtcbiAgcHJpdmF0ZSBwYXJ0aWFsRXZhbHVhdG9yOiBQYXJ0aWFsRXZhbHVhdG9yID0gbmV3IFBhcnRpYWxFdmFsdWF0b3IoXG4gICAgICBuZXcgVHlwZVNjcmlwdFJlZmxlY3Rpb25Ib3N0KHRoaXMudHlwZUNoZWNrZXIpLCB0aGlzLnR5cGVDaGVja2VyLFxuICAgICAgLyogZGVwZW5kZW5jeVRyYWNrZXIgKi8gbnVsbCk7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHR5cGVDaGVja2VyOiB0cy5UeXBlQ2hlY2tlcixcbiAgICAgIHByaXZhdGUgZ2V0VXBkYXRlUmVjb3JkZXI6IChzZjogdHMuU291cmNlRmlsZSkgPT4gVXBkYXRlUmVjb3JkZXIpIHt9XG5cbiAgLyoqIE1pZ3JhdGVzIGEgZ2l2ZW4gTmdNb2R1bGUgYnkgd2Fsa2luZyB0aHJvdWdoIHRoZSByZWZlcmVuY2VkIHByb3ZpZGVycyBhbmQgc3RhdGljIG1ldGhvZHMuICovXG4gIG1pZ3JhdGVNb2R1bGUobW9kdWxlOiBSZXNvbHZlZE5nTW9kdWxlKTogQW5hbHlzaXNGYWlsdXJlW10ge1xuICAgIHJldHVybiBtb2R1bGUuc3RhdGljTWV0aG9kc1dpdGhvdXRUeXBlLm1hcCh0aGlzLl9taWdyYXRlU3RhdGljTmdNb2R1bGVNZXRob2QuYmluZCh0aGlzKSlcbiAgICAgICAgLmZpbHRlcih2ID0+IHYpIGFzIEFuYWx5c2lzRmFpbHVyZVtdO1xuICB9XG5cbiAgLyoqIE1pZ3JhdGVzIGEgTW9kdWxlV2l0aFByb3ZpZGVycyB0eXBlIGRlZmluaXRpb24gdGhhdCBoYXMgbm8gZXhwbGljaXQgZ2VuZXJpYyB0eXBlICovXG4gIG1pZ3JhdGVUeXBlKHR5cGU6IHRzLlR5cGVSZWZlcmVuY2VOb2RlKTogQW5hbHlzaXNGYWlsdXJlW10ge1xuICAgIGNvbnN0IHBhcmVudCA9IHR5cGUucGFyZW50O1xuICAgIGxldCBtb2R1bGVUZXh0OiBzdHJpbmd8dW5kZWZpbmVkO1xuICAgIGlmICgodHMuaXNGdW5jdGlvbkRlY2xhcmF0aW9uKHBhcmVudCkgfHwgdHMuaXNNZXRob2REZWNsYXJhdGlvbihwYXJlbnQpKSAmJiBwYXJlbnQuYm9keSkge1xuICAgICAgY29uc3QgcmV0dXJuU3RhdGVtZW50ID0gcGFyZW50LmJvZHkuc3RhdGVtZW50cy5maW5kKHRzLmlzUmV0dXJuU3RhdGVtZW50KTtcblxuICAgICAgLy8gTm8gcmV0dXJuIHR5cGUgZm91bmQsIGV4aXRcbiAgICAgIGlmICghcmV0dXJuU3RhdGVtZW50IHx8ICFyZXR1cm5TdGF0ZW1lbnQuZXhwcmVzc2lvbikge1xuICAgICAgICByZXR1cm4gW3tub2RlOiBwYXJlbnQsIG1lc3NhZ2U6IGBSZXR1cm4gdHlwZSBpcyBub3Qgc3RhdGljYWxseSBhbmFseXphYmxlLmB9XTtcbiAgICAgIH1cblxuICAgICAgbW9kdWxlVGV4dCA9IHRoaXMuX2dldE5nTW9kdWxlVHlwZU9mRXhwcmVzc2lvbihyZXR1cm5TdGF0ZW1lbnQuZXhwcmVzc2lvbik7XG4gICAgfSBlbHNlIGlmICh0cy5pc1Byb3BlcnR5RGVjbGFyYXRpb24ocGFyZW50KSB8fCB0cy5pc1ZhcmlhYmxlRGVjbGFyYXRpb24ocGFyZW50KSkge1xuICAgICAgaWYgKCFwYXJlbnQuaW5pdGlhbGl6ZXIpIHtcbiAgICAgICAgYWRkVG9kb1RvTm9kZSh0eXBlLCBUT0RPX0NPTU1FTlQpO1xuICAgICAgICB0aGlzLl91cGRhdGVOb2RlKHR5cGUsIHR5cGUpO1xuICAgICAgICByZXR1cm4gW3tub2RlOiBwYXJlbnQsIG1lc3NhZ2U6IGBVbmFibGUgdG8gZGV0ZXJtaW5lIHR5cGUgZm9yIGRlY2xhcmF0aW9uLmB9XTtcbiAgICAgIH1cblxuICAgICAgbW9kdWxlVGV4dCA9IHRoaXMuX2dldE5nTW9kdWxlVHlwZU9mRXhwcmVzc2lvbihwYXJlbnQuaW5pdGlhbGl6ZXIpO1xuICAgIH1cblxuICAgIGlmIChtb2R1bGVUZXh0KSB7XG4gICAgICB0aGlzLl9hZGRHZW5lcmljVG9UeXBlUmVmZXJlbmNlKHR5cGUsIG1vZHVsZVRleHQpO1xuICAgICAgcmV0dXJuIFtdO1xuICAgIH1cblxuICAgIHJldHVybiBbe25vZGU6IHBhcmVudCwgbWVzc2FnZTogYFR5cGUgaXMgbm90IHN0YXRpY2FsbHkgYW5hbHl6YWJsZS5gfV07XG4gIH1cblxuICAvKiogQWRkIGEgZ2l2ZW4gZ2VuZXJpYyB0byBhIHR5cGUgcmVmZXJlbmNlIG5vZGUgKi9cbiAgcHJpdmF0ZSBfYWRkR2VuZXJpY1RvVHlwZVJlZmVyZW5jZShub2RlOiB0cy5UeXBlUmVmZXJlbmNlTm9kZSwgdHlwZU5hbWU6IHN0cmluZykge1xuICAgIGNvbnN0IG5ld0dlbmVyaWNFeHByID0gY3JlYXRlTW9kdWxlV2l0aFByb3ZpZGVyc1R5cGUodHlwZU5hbWUsIG5vZGUpO1xuICAgIHRoaXMuX3VwZGF0ZU5vZGUobm9kZSwgbmV3R2VuZXJpY0V4cHIpO1xuICB9XG5cbiAgLyoqXG4gICAqIE1pZ3JhdGVzIGEgZ2l2ZW4gc3RhdGljIG1ldGhvZCBpZiBpdHMgTW9kdWxlV2l0aFByb3ZpZGVycyBkb2VzIG5vdCBwcm92aWRlXG4gICAqIGEgZ2VuZXJpYyB0eXBlLlxuICAgKi9cbiAgcHJpdmF0ZSBfdXBkYXRlU3RhdGljTWV0aG9kVHlwZShtZXRob2Q6IHRzLk1ldGhvZERlY2xhcmF0aW9uLCB0eXBlTmFtZTogc3RyaW5nKSB7XG4gICAgY29uc3QgbmV3R2VuZXJpY0V4cHIgPVxuICAgICAgICBjcmVhdGVNb2R1bGVXaXRoUHJvdmlkZXJzVHlwZSh0eXBlTmFtZSwgbWV0aG9kLnR5cGUgYXMgdHMuVHlwZVJlZmVyZW5jZU5vZGUpO1xuICAgIGNvbnN0IG5ld01ldGhvZERlY2wgPSB0cy51cGRhdGVNZXRob2QoXG4gICAgICAgIG1ldGhvZCwgbWV0aG9kLmRlY29yYXRvcnMsIG1ldGhvZC5tb2RpZmllcnMsIG1ldGhvZC5hc3Rlcmlza1Rva2VuLCBtZXRob2QubmFtZSxcbiAgICAgICAgbWV0aG9kLnF1ZXN0aW9uVG9rZW4sIG1ldGhvZC50eXBlUGFyYW1ldGVycywgbWV0aG9kLnBhcmFtZXRlcnMsIG5ld0dlbmVyaWNFeHByLFxuICAgICAgICBtZXRob2QuYm9keSk7XG5cbiAgICB0aGlzLl91cGRhdGVOb2RlKG1ldGhvZCwgbmV3TWV0aG9kRGVjbCk7XG4gIH1cblxuICAvKiogV2hldGhlciB0aGUgcmVzb2x2ZWQgdmFsdWUgbWFwIHJlcHJlc2VudHMgYSBNb2R1bGVXaXRoUHJvdmlkZXJzIG9iamVjdCAqL1xuICBpc01vZHVsZVdpdGhQcm92aWRlcnNUeXBlKHZhbHVlOiBSZXNvbHZlZFZhbHVlTWFwKTogYm9vbGVhbiB7XG4gICAgY29uc3QgbmdNb2R1bGUgPSB2YWx1ZS5nZXQoJ25nTW9kdWxlJykgIT09IHVuZGVmaW5lZDtcbiAgICBjb25zdCBwcm92aWRlcnMgPSB2YWx1ZS5nZXQoJ3Byb3ZpZGVycycpICE9PSB1bmRlZmluZWQ7XG5cbiAgICByZXR1cm4gbmdNb2R1bGUgJiYgKHZhbHVlLnNpemUgPT09IDEgfHwgKHByb3ZpZGVycyAmJiB2YWx1ZS5zaXplID09PSAyKSk7XG4gIH1cblxuICAvKiogRGV0ZXJtaW5lIHRoZSBnZW5lcmljIHR5cGUgb2YgYSBzdXNwZWN0ZWQgTW9kdWxlV2l0aFByb3ZpZGVycyByZXR1cm4gdHlwZSBhbmQgYWRkIGl0XG4gICAqIGV4cGxpY2l0bHkgKi9cbiAgcHJpdmF0ZSBfbWlncmF0ZVN0YXRpY05nTW9kdWxlTWV0aG9kKG5vZGU6IHRzLk1ldGhvZERlY2xhcmF0aW9uKTogQW5hbHlzaXNGYWlsdXJlfG51bGwge1xuICAgIGNvbnN0IHJldHVyblN0YXRlbWVudCA9IG5vZGUuYm9keSAmJlxuICAgICAgICBub2RlLmJvZHkuc3RhdGVtZW50cy5maW5kKG4gPT4gdHMuaXNSZXR1cm5TdGF0ZW1lbnQobikpIGFzIHRzLlJldHVyblN0YXRlbWVudCB8IHVuZGVmaW5lZDtcblxuICAgIC8vIE5vIHJldHVybiB0eXBlIGZvdW5kLCBleGl0XG4gICAgaWYgKCFyZXR1cm5TdGF0ZW1lbnQgfHwgIXJldHVyblN0YXRlbWVudC5leHByZXNzaW9uKSB7XG4gICAgICByZXR1cm4ge25vZGU6IG5vZGUsIG1lc3NhZ2U6IGBSZXR1cm4gdHlwZSBpcyBub3Qgc3RhdGljYWxseSBhbmFseXphYmxlLmB9O1xuICAgIH1cblxuICAgIGNvbnN0IG1vZHVsZVRleHQgPSB0aGlzLl9nZXROZ01vZHVsZVR5cGVPZkV4cHJlc3Npb24ocmV0dXJuU3RhdGVtZW50LmV4cHJlc3Npb24pO1xuXG4gICAgaWYgKG1vZHVsZVRleHQpIHtcbiAgICAgIHRoaXMuX3VwZGF0ZVN0YXRpY01ldGhvZFR5cGUobm9kZSwgbW9kdWxlVGV4dCk7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICByZXR1cm4ge25vZGU6IG5vZGUsIG1lc3NhZ2U6IGBNZXRob2QgdHlwZSBpcyBub3Qgc3RhdGljYWxseSBhbmFseXphYmxlLmB9O1xuICB9XG5cbiAgLyoqIEV2YWx1YXRlIGFuZCByZXR1cm4gdGhlIG5nTW9kdWxlIHR5cGUgZnJvbSBhbiBleHByZXNzaW9uICovXG4gIHByaXZhdGUgX2dldE5nTW9kdWxlVHlwZU9mRXhwcmVzc2lvbihleHByOiB0cy5FeHByZXNzaW9uKTogc3RyaW5nfHVuZGVmaW5lZCB7XG4gICAgY29uc3QgZXZhbHVhdGVkRXhwciA9IHRoaXMucGFydGlhbEV2YWx1YXRvci5ldmFsdWF0ZShleHByKTtcbiAgICByZXR1cm4gdGhpcy5fZ2V0VHlwZU9mUmVzb2x2ZWRWYWx1ZShldmFsdWF0ZWRFeHByKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBWaXNpdHMgYSBnaXZlbiBvYmplY3QgbGl0ZXJhbCBleHByZXNzaW9uIHRvIGRldGVybWluZSB0aGUgbmdNb2R1bGUgdHlwZS4gSWYgdGhlIGV4cHJlc3Npb25cbiAgICogY2Fubm90IGJlIHJlc29sdmVkLCBhZGQgYSBUT0RPIHRvIGFsZXJ0IHRoZSB1c2VyLlxuICAgKi9cbiAgcHJpdmF0ZSBfZ2V0VHlwZU9mUmVzb2x2ZWRWYWx1ZSh2YWx1ZTogUmVzb2x2ZWRWYWx1ZSk6IHN0cmluZ3x1bmRlZmluZWQge1xuICAgIGlmICh2YWx1ZSBpbnN0YW5jZW9mIE1hcCAmJiB0aGlzLmlzTW9kdWxlV2l0aFByb3ZpZGVyc1R5cGUodmFsdWUpKSB7XG4gICAgICBjb25zdCBtYXBWYWx1ZSA9IHZhbHVlLmdldCgnbmdNb2R1bGUnKSAhO1xuICAgICAgaWYgKG1hcFZhbHVlIGluc3RhbmNlb2YgUmVmZXJlbmNlICYmIHRzLmlzQ2xhc3NEZWNsYXJhdGlvbihtYXBWYWx1ZS5ub2RlKSAmJlxuICAgICAgICAgIG1hcFZhbHVlLm5vZGUubmFtZSkge1xuICAgICAgICByZXR1cm4gbWFwVmFsdWUubm9kZS5uYW1lLnRleHQ7XG4gICAgICB9IGVsc2UgaWYgKG1hcFZhbHVlIGluc3RhbmNlb2YgRHluYW1pY1ZhbHVlKSB7XG4gICAgICAgIGFkZFRvZG9Ub05vZGUobWFwVmFsdWUubm9kZSwgVE9ET19DT01NRU5UKTtcbiAgICAgICAgdGhpcy5fdXBkYXRlTm9kZShtYXBWYWx1ZS5ub2RlLCBtYXBWYWx1ZS5ub2RlKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gdW5kZWZpbmVkO1xuICB9XG5cbiAgcHJpdmF0ZSBfdXBkYXRlTm9kZShub2RlOiB0cy5Ob2RlLCBuZXdOb2RlOiB0cy5Ob2RlKSB7XG4gICAgY29uc3QgbmV3VGV4dCA9IHRoaXMucHJpbnRlci5wcmludE5vZGUodHMuRW1pdEhpbnQuVW5zcGVjaWZpZWQsIG5ld05vZGUsIG5vZGUuZ2V0U291cmNlRmlsZSgpKTtcbiAgICBjb25zdCByZWNvcmRlciA9IHRoaXMuZ2V0VXBkYXRlUmVjb3JkZXIobm9kZS5nZXRTb3VyY2VGaWxlKCkpO1xuXG4gICAgcmVjb3JkZXIucmVtb3ZlKG5vZGUuZ2V0U3RhcnQoKSwgbm9kZS5nZXRXaWR0aCgpKTtcbiAgICByZWNvcmRlci5pbnNlcnRSaWdodChub2RlLmdldFN0YXJ0KCksIG5ld1RleHQpO1xuICB9XG59XG5cbi8qKlxuICogQWRkcyBhIHRvLWRvIHRvIHRoZSBnaXZlbiBUeXBlU2NyaXB0IG5vZGUgd2hpY2ggYWxlcnRzIGRldmVsb3BlcnMgdG8gZml4XG4gKiBwb3RlbnRpYWwgaXNzdWVzIGlkZW50aWZpZWQgYnkgdGhlIG1pZ3JhdGlvbi5cbiAqL1xuZnVuY3Rpb24gYWRkVG9kb1RvTm9kZShub2RlOiB0cy5Ob2RlLCB0ZXh0OiBzdHJpbmcpIHtcbiAgdHMuc2V0U3ludGhldGljTGVhZGluZ0NvbW1lbnRzKG5vZGUsIFt7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBvczogLTEsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVuZDogLTEsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGhhc1RyYWlsaW5nTmV3TGluZTogZmFsc2UsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGtpbmQ6IHRzLlN5bnRheEtpbmQuTXVsdGlMaW5lQ29tbWVudFRyaXZpYSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGV4dDogYCAke3RleHR9IGBcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH1dKTtcbn1cbiJdfQ==