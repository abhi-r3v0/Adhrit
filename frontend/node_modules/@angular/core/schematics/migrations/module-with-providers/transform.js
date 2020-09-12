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
        define("@angular/core/schematics/migrations/module-with-providers/transform", ["require", "exports", "@angular/compiler-cli/src/ngtsc/imports", "@angular/compiler-cli/src/ngtsc/partial_evaluator", "@angular/compiler-cli/src/ngtsc/reflection", "typescript", "@angular/core/schematics/migrations/module-with-providers/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.ModuleWithProvidersTransform = void 0;
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
        /**
         * Determine the generic type of a suspected ModuleWithProviders return type and add it
         * explicitly
         */
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNmb3JtLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zY2hlbWF0aWNzL21pZ3JhdGlvbnMvbW9kdWxlLXdpdGgtcHJvdmlkZXJzL3RyYW5zZm9ybS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7SUFHSCxxRUFBa0U7SUFDbEUseUZBQWtJO0lBQ2xJLDJFQUFvRjtJQUNwRixpQ0FBaUM7SUFHakMseUZBQXFEO0lBT3JELE1BQU0sWUFBWSxHQUFHLDJFQUEyRSxDQUFDO0lBRWpHLE1BQWEsNEJBQTRCO1FBTXZDLFlBQ1ksV0FBMkIsRUFDM0IsaUJBQXdEO1lBRHhELGdCQUFXLEdBQVgsV0FBVyxDQUFnQjtZQUMzQixzQkFBaUIsR0FBakIsaUJBQWlCLENBQXVDO1lBUDVELFlBQU8sR0FBRyxFQUFFLENBQUMsYUFBYSxFQUFFLENBQUM7WUFDN0IscUJBQWdCLEdBQXFCLElBQUksb0NBQWdCLENBQzdELElBQUkscUNBQXdCLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxFQUFFLElBQUksQ0FBQyxXQUFXO1lBQ2hFLHVCQUF1QixDQUFDLElBQUksQ0FBQyxDQUFDO1FBSXFDLENBQUM7UUFFeEUsZ0dBQWdHO1FBQ2hHLGFBQWEsQ0FBQyxNQUF3QjtZQUNwQyxPQUFPLE1BQU0sQ0FBQyx3QkFBd0IsQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLDRCQUE0QixDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztpQkFDNUUsTUFBTSxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFzQixDQUFDO1FBQ2xELENBQUM7UUFFRCx1RkFBdUY7UUFDdkYsV0FBVyxDQUFDLElBQTBCO1lBQ3BDLE1BQU0sTUFBTSxHQUFHLElBQUksQ0FBQyxNQUFNLENBQUM7WUFDM0IsSUFBSSxVQUE0QixDQUFDO1lBQ2pDLElBQUksQ0FBQyxFQUFFLENBQUMscUJBQXFCLENBQUMsTUFBTSxDQUFDLElBQUksRUFBRSxDQUFDLG1CQUFtQixDQUFDLE1BQU0sQ0FBQyxDQUFDLElBQUksTUFBTSxDQUFDLElBQUksRUFBRTtnQkFDdkYsTUFBTSxlQUFlLEdBQUcsTUFBTSxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxpQkFBaUIsQ0FBQyxDQUFDO2dCQUUxRSw2QkFBNkI7Z0JBQzdCLElBQUksQ0FBQyxlQUFlLElBQUksQ0FBQyxlQUFlLENBQUMsVUFBVSxFQUFFO29CQUNuRCxPQUFPLENBQUMsRUFBQyxJQUFJLEVBQUUsTUFBTSxFQUFFLE9BQU8sRUFBRSwyQ0FBMkMsRUFBQyxDQUFDLENBQUM7aUJBQy9FO2dCQUVELFVBQVUsR0FBRyxJQUFJLENBQUMsNEJBQTRCLENBQUMsZUFBZSxDQUFDLFVBQVUsQ0FBQyxDQUFDO2FBQzVFO2lCQUFNLElBQUksRUFBRSxDQUFDLHFCQUFxQixDQUFDLE1BQU0sQ0FBQyxJQUFJLEVBQUUsQ0FBQyxxQkFBcUIsQ0FBQyxNQUFNLENBQUMsRUFBRTtnQkFDL0UsSUFBSSxDQUFDLE1BQU0sQ0FBQyxXQUFXLEVBQUU7b0JBQ3ZCLGFBQWEsQ0FBQyxJQUFJLEVBQUUsWUFBWSxDQUFDLENBQUM7b0JBQ2xDLElBQUksQ0FBQyxXQUFXLENBQUMsSUFBSSxFQUFFLElBQUksQ0FBQyxDQUFDO29CQUM3QixPQUFPLENBQUMsRUFBQyxJQUFJLEVBQUUsTUFBTSxFQUFFLE9BQU8sRUFBRSwyQ0FBMkMsRUFBQyxDQUFDLENBQUM7aUJBQy9FO2dCQUVELFVBQVUsR0FBRyxJQUFJLENBQUMsNEJBQTRCLENBQUMsTUFBTSxDQUFDLFdBQVcsQ0FBQyxDQUFDO2FBQ3BFO1lBRUQsSUFBSSxVQUFVLEVBQUU7Z0JBQ2QsSUFBSSxDQUFDLDBCQUEwQixDQUFDLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztnQkFDbEQsT0FBTyxFQUFFLENBQUM7YUFDWDtZQUVELE9BQU8sQ0FBQyxFQUFDLElBQUksRUFBRSxNQUFNLEVBQUUsT0FBTyxFQUFFLG9DQUFvQyxFQUFDLENBQUMsQ0FBQztRQUN6RSxDQUFDO1FBRUQsbURBQW1EO1FBQzNDLDBCQUEwQixDQUFDLElBQTBCLEVBQUUsUUFBZ0I7WUFDN0UsTUFBTSxjQUFjLEdBQUcsb0NBQTZCLENBQUMsUUFBUSxFQUFFLElBQUksQ0FBQyxDQUFDO1lBQ3JFLElBQUksQ0FBQyxXQUFXLENBQUMsSUFBSSxFQUFFLGNBQWMsQ0FBQyxDQUFDO1FBQ3pDLENBQUM7UUFFRDs7O1dBR0c7UUFDSyx1QkFBdUIsQ0FBQyxNQUE0QixFQUFFLFFBQWdCO1lBQzVFLE1BQU0sY0FBYyxHQUNoQixvQ0FBNkIsQ0FBQyxRQUFRLEVBQUUsTUFBTSxDQUFDLElBQTRCLENBQUMsQ0FBQztZQUNqRixNQUFNLGFBQWEsR0FBRyxFQUFFLENBQUMsWUFBWSxDQUNqQyxNQUFNLEVBQUUsTUFBTSxDQUFDLFVBQVUsRUFBRSxNQUFNLENBQUMsU0FBUyxFQUFFLE1BQU0sQ0FBQyxhQUFhLEVBQUUsTUFBTSxDQUFDLElBQUksRUFDOUUsTUFBTSxDQUFDLGFBQWEsRUFBRSxNQUFNLENBQUMsY0FBYyxFQUFFLE1BQU0sQ0FBQyxVQUFVLEVBQUUsY0FBYyxFQUM5RSxNQUFNLENBQUMsSUFBSSxDQUFDLENBQUM7WUFFakIsSUFBSSxDQUFDLFdBQVcsQ0FBQyxNQUFNLEVBQUUsYUFBYSxDQUFDLENBQUM7UUFDMUMsQ0FBQztRQUVELDZFQUE2RTtRQUM3RSx5QkFBeUIsQ0FBQyxLQUF1QjtZQUMvQyxNQUFNLFFBQVEsR0FBRyxLQUFLLENBQUMsR0FBRyxDQUFDLFVBQVUsQ0FBQyxLQUFLLFNBQVMsQ0FBQztZQUNyRCxNQUFNLFNBQVMsR0FBRyxLQUFLLENBQUMsR0FBRyxDQUFDLFdBQVcsQ0FBQyxLQUFLLFNBQVMsQ0FBQztZQUV2RCxPQUFPLFFBQVEsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLEtBQUssQ0FBQyxJQUFJLENBQUMsU0FBUyxJQUFJLEtBQUssQ0FBQyxJQUFJLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUMzRSxDQUFDO1FBRUQ7OztXQUdHO1FBQ0ssNEJBQTRCLENBQUMsSUFBMEI7WUFDN0QsTUFBTSxlQUFlLEdBQUcsSUFBSSxDQUFDLElBQUk7Z0JBQzdCLElBQUksQ0FBQyxJQUFJLENBQUMsVUFBVSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLEVBQUUsQ0FBQyxpQkFBaUIsQ0FBQyxDQUFDLENBQUMsQ0FBbUMsQ0FBQztZQUU5Riw2QkFBNkI7WUFDN0IsSUFBSSxDQUFDLGVBQWUsSUFBSSxDQUFDLGVBQWUsQ0FBQyxVQUFVLEVBQUU7Z0JBQ25ELE9BQU8sRUFBQyxJQUFJLEVBQUUsSUFBSSxFQUFFLE9BQU8sRUFBRSwyQ0FBMkMsRUFBQyxDQUFDO2FBQzNFO1lBRUQsTUFBTSxVQUFVLEdBQUcsSUFBSSxDQUFDLDRCQUE0QixDQUFDLGVBQWUsQ0FBQyxVQUFVLENBQUMsQ0FBQztZQUVqRixJQUFJLFVBQVUsRUFBRTtnQkFDZCxJQUFJLENBQUMsdUJBQXVCLENBQUMsSUFBSSxFQUFFLFVBQVUsQ0FBQyxDQUFDO2dCQUMvQyxPQUFPLElBQUksQ0FBQzthQUNiO1lBRUQsT0FBTyxFQUFDLElBQUksRUFBRSxJQUFJLEVBQUUsT0FBTyxFQUFFLDJDQUEyQyxFQUFDLENBQUM7UUFDNUUsQ0FBQztRQUVELCtEQUErRDtRQUN2RCw0QkFBNEIsQ0FBQyxJQUFtQjtZQUN0RCxNQUFNLGFBQWEsR0FBRyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxDQUFDO1lBQzNELE9BQU8sSUFBSSxDQUFDLHVCQUF1QixDQUFDLGFBQWEsQ0FBQyxDQUFDO1FBQ3JELENBQUM7UUFFRDs7O1dBR0c7UUFDSyx1QkFBdUIsQ0FBQyxLQUFvQjtZQUNsRCxJQUFJLEtBQUssWUFBWSxHQUFHLElBQUksSUFBSSxDQUFDLHlCQUF5QixDQUFDLEtBQUssQ0FBQyxFQUFFO2dCQUNqRSxNQUFNLFFBQVEsR0FBRyxLQUFLLENBQUMsR0FBRyxDQUFDLFVBQVUsQ0FBRSxDQUFDO2dCQUN4QyxJQUFJLFFBQVEsWUFBWSxtQkFBUyxJQUFJLEVBQUUsQ0FBQyxrQkFBa0IsQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDO29CQUNyRSxRQUFRLENBQUMsSUFBSSxDQUFDLElBQUksRUFBRTtvQkFDdEIsT0FBTyxRQUFRLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUM7aUJBQ2hDO3FCQUFNLElBQUksUUFBUSxZQUFZLGdDQUFZLEVBQUU7b0JBQzNDLGFBQWEsQ0FBQyxRQUFRLENBQUMsSUFBSSxFQUFFLFlBQVksQ0FBQyxDQUFDO29CQUMzQyxJQUFJLENBQUMsV0FBVyxDQUFDLFFBQVEsQ0FBQyxJQUFJLEVBQUUsUUFBUSxDQUFDLElBQUksQ0FBQyxDQUFDO2lCQUNoRDthQUNGO1lBRUQsT0FBTyxTQUFTLENBQUM7UUFDbkIsQ0FBQztRQUVPLFdBQVcsQ0FBQyxJQUFhLEVBQUUsT0FBZ0I7WUFDakQsTUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQyxTQUFTLENBQUMsRUFBRSxDQUFDLFFBQVEsQ0FBQyxXQUFXLEVBQUUsT0FBTyxFQUFFLElBQUksQ0FBQyxhQUFhLEVBQUUsQ0FBQyxDQUFDO1lBQy9GLE1BQU0sUUFBUSxHQUFHLElBQUksQ0FBQyxpQkFBaUIsQ0FBQyxJQUFJLENBQUMsYUFBYSxFQUFFLENBQUMsQ0FBQztZQUU5RCxRQUFRLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxRQUFRLEVBQUUsRUFBRSxJQUFJLENBQUMsUUFBUSxFQUFFLENBQUMsQ0FBQztZQUNsRCxRQUFRLENBQUMsV0FBVyxDQUFDLElBQUksQ0FBQyxRQUFRLEVBQUUsRUFBRSxPQUFPLENBQUMsQ0FBQztRQUNqRCxDQUFDO0tBQ0Y7SUFuSUQsb0VBbUlDO0lBRUQ7OztPQUdHO0lBQ0gsU0FBUyxhQUFhLENBQUMsSUFBYSxFQUFFLElBQVk7UUFDaEQsRUFBRSxDQUFDLDJCQUEyQixDQUFDLElBQUksRUFBRSxDQUFDO2dCQUNMLEdBQUcsRUFBRSxDQUFDLENBQUM7Z0JBQ1AsR0FBRyxFQUFFLENBQUMsQ0FBQztnQkFDUCxrQkFBa0IsRUFBRSxLQUFLO2dCQUN6QixJQUFJLEVBQUUsRUFBRSxDQUFDLFVBQVUsQ0FBQyxzQkFBc0I7Z0JBQzFDLElBQUksRUFBRSxJQUFJLElBQUksR0FBRzthQUNsQixDQUFDLENBQUMsQ0FBQztJQUNyQyxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7VXBkYXRlUmVjb3JkZXJ9IGZyb20gJ0Bhbmd1bGFyLWRldmtpdC9zY2hlbWF0aWNzJztcbmltcG9ydCB7UmVmZXJlbmNlfSBmcm9tICdAYW5ndWxhci9jb21waWxlci1jbGkvc3JjL25ndHNjL2ltcG9ydHMnO1xuaW1wb3J0IHtEeW5hbWljVmFsdWUsIFBhcnRpYWxFdmFsdWF0b3IsIFJlc29sdmVkVmFsdWUsIFJlc29sdmVkVmFsdWVNYXB9IGZyb20gJ0Bhbmd1bGFyL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvcGFydGlhbF9ldmFsdWF0b3InO1xuaW1wb3J0IHtUeXBlU2NyaXB0UmVmbGVjdGlvbkhvc3R9IGZyb20gJ0Bhbmd1bGFyL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvcmVmbGVjdGlvbic7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtSZXNvbHZlZE5nTW9kdWxlfSBmcm9tICcuL2NvbGxlY3Rvcic7XG5pbXBvcnQge2NyZWF0ZU1vZHVsZVdpdGhQcm92aWRlcnNUeXBlfSBmcm9tICcuL3V0aWwnO1xuXG5leHBvcnQgaW50ZXJmYWNlIEFuYWx5c2lzRmFpbHVyZSB7XG4gIG5vZGU6IHRzLk5vZGU7XG4gIG1lc3NhZ2U6IHN0cmluZztcbn1cblxuY29uc3QgVE9ET19DT01NRU5UID0gJ1RPRE86IFRoZSBmb2xsb3dpbmcgbm9kZSByZXF1aXJlcyBhIGdlbmVyaWMgdHlwZSBmb3IgYE1vZHVsZVdpdGhQcm92aWRlcnMnO1xuXG5leHBvcnQgY2xhc3MgTW9kdWxlV2l0aFByb3ZpZGVyc1RyYW5zZm9ybSB7XG4gIHByaXZhdGUgcHJpbnRlciA9IHRzLmNyZWF0ZVByaW50ZXIoKTtcbiAgcHJpdmF0ZSBwYXJ0aWFsRXZhbHVhdG9yOiBQYXJ0aWFsRXZhbHVhdG9yID0gbmV3IFBhcnRpYWxFdmFsdWF0b3IoXG4gICAgICBuZXcgVHlwZVNjcmlwdFJlZmxlY3Rpb25Ib3N0KHRoaXMudHlwZUNoZWNrZXIpLCB0aGlzLnR5cGVDaGVja2VyLFxuICAgICAgLyogZGVwZW5kZW5jeVRyYWNrZXIgKi8gbnVsbCk7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHR5cGVDaGVja2VyOiB0cy5UeXBlQ2hlY2tlcixcbiAgICAgIHByaXZhdGUgZ2V0VXBkYXRlUmVjb3JkZXI6IChzZjogdHMuU291cmNlRmlsZSkgPT4gVXBkYXRlUmVjb3JkZXIpIHt9XG5cbiAgLyoqIE1pZ3JhdGVzIGEgZ2l2ZW4gTmdNb2R1bGUgYnkgd2Fsa2luZyB0aHJvdWdoIHRoZSByZWZlcmVuY2VkIHByb3ZpZGVycyBhbmQgc3RhdGljIG1ldGhvZHMuICovXG4gIG1pZ3JhdGVNb2R1bGUobW9kdWxlOiBSZXNvbHZlZE5nTW9kdWxlKTogQW5hbHlzaXNGYWlsdXJlW10ge1xuICAgIHJldHVybiBtb2R1bGUuc3RhdGljTWV0aG9kc1dpdGhvdXRUeXBlLm1hcCh0aGlzLl9taWdyYXRlU3RhdGljTmdNb2R1bGVNZXRob2QuYmluZCh0aGlzKSlcbiAgICAgICAgICAgICAgIC5maWx0ZXIodiA9PiB2KSBhcyBBbmFseXNpc0ZhaWx1cmVbXTtcbiAgfVxuXG4gIC8qKiBNaWdyYXRlcyBhIE1vZHVsZVdpdGhQcm92aWRlcnMgdHlwZSBkZWZpbml0aW9uIHRoYXQgaGFzIG5vIGV4cGxpY2l0IGdlbmVyaWMgdHlwZSAqL1xuICBtaWdyYXRlVHlwZSh0eXBlOiB0cy5UeXBlUmVmZXJlbmNlTm9kZSk6IEFuYWx5c2lzRmFpbHVyZVtdIHtcbiAgICBjb25zdCBwYXJlbnQgPSB0eXBlLnBhcmVudDtcbiAgICBsZXQgbW9kdWxlVGV4dDogc3RyaW5nfHVuZGVmaW5lZDtcbiAgICBpZiAoKHRzLmlzRnVuY3Rpb25EZWNsYXJhdGlvbihwYXJlbnQpIHx8IHRzLmlzTWV0aG9kRGVjbGFyYXRpb24ocGFyZW50KSkgJiYgcGFyZW50LmJvZHkpIHtcbiAgICAgIGNvbnN0IHJldHVyblN0YXRlbWVudCA9IHBhcmVudC5ib2R5LnN0YXRlbWVudHMuZmluZCh0cy5pc1JldHVyblN0YXRlbWVudCk7XG5cbiAgICAgIC8vIE5vIHJldHVybiB0eXBlIGZvdW5kLCBleGl0XG4gICAgICBpZiAoIXJldHVyblN0YXRlbWVudCB8fCAhcmV0dXJuU3RhdGVtZW50LmV4cHJlc3Npb24pIHtcbiAgICAgICAgcmV0dXJuIFt7bm9kZTogcGFyZW50LCBtZXNzYWdlOiBgUmV0dXJuIHR5cGUgaXMgbm90IHN0YXRpY2FsbHkgYW5hbHl6YWJsZS5gfV07XG4gICAgICB9XG5cbiAgICAgIG1vZHVsZVRleHQgPSB0aGlzLl9nZXROZ01vZHVsZVR5cGVPZkV4cHJlc3Npb24ocmV0dXJuU3RhdGVtZW50LmV4cHJlc3Npb24pO1xuICAgIH0gZWxzZSBpZiAodHMuaXNQcm9wZXJ0eURlY2xhcmF0aW9uKHBhcmVudCkgfHwgdHMuaXNWYXJpYWJsZURlY2xhcmF0aW9uKHBhcmVudCkpIHtcbiAgICAgIGlmICghcGFyZW50LmluaXRpYWxpemVyKSB7XG4gICAgICAgIGFkZFRvZG9Ub05vZGUodHlwZSwgVE9ET19DT01NRU5UKTtcbiAgICAgICAgdGhpcy5fdXBkYXRlTm9kZSh0eXBlLCB0eXBlKTtcbiAgICAgICAgcmV0dXJuIFt7bm9kZTogcGFyZW50LCBtZXNzYWdlOiBgVW5hYmxlIHRvIGRldGVybWluZSB0eXBlIGZvciBkZWNsYXJhdGlvbi5gfV07XG4gICAgICB9XG5cbiAgICAgIG1vZHVsZVRleHQgPSB0aGlzLl9nZXROZ01vZHVsZVR5cGVPZkV4cHJlc3Npb24ocGFyZW50LmluaXRpYWxpemVyKTtcbiAgICB9XG5cbiAgICBpZiAobW9kdWxlVGV4dCkge1xuICAgICAgdGhpcy5fYWRkR2VuZXJpY1RvVHlwZVJlZmVyZW5jZSh0eXBlLCBtb2R1bGVUZXh0KTtcbiAgICAgIHJldHVybiBbXTtcbiAgICB9XG5cbiAgICByZXR1cm4gW3tub2RlOiBwYXJlbnQsIG1lc3NhZ2U6IGBUeXBlIGlzIG5vdCBzdGF0aWNhbGx5IGFuYWx5emFibGUuYH1dO1xuICB9XG5cbiAgLyoqIEFkZCBhIGdpdmVuIGdlbmVyaWMgdG8gYSB0eXBlIHJlZmVyZW5jZSBub2RlICovXG4gIHByaXZhdGUgX2FkZEdlbmVyaWNUb1R5cGVSZWZlcmVuY2Uobm9kZTogdHMuVHlwZVJlZmVyZW5jZU5vZGUsIHR5cGVOYW1lOiBzdHJpbmcpIHtcbiAgICBjb25zdCBuZXdHZW5lcmljRXhwciA9IGNyZWF0ZU1vZHVsZVdpdGhQcm92aWRlcnNUeXBlKHR5cGVOYW1lLCBub2RlKTtcbiAgICB0aGlzLl91cGRhdGVOb2RlKG5vZGUsIG5ld0dlbmVyaWNFeHByKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBNaWdyYXRlcyBhIGdpdmVuIHN0YXRpYyBtZXRob2QgaWYgaXRzIE1vZHVsZVdpdGhQcm92aWRlcnMgZG9lcyBub3QgcHJvdmlkZVxuICAgKiBhIGdlbmVyaWMgdHlwZS5cbiAgICovXG4gIHByaXZhdGUgX3VwZGF0ZVN0YXRpY01ldGhvZFR5cGUobWV0aG9kOiB0cy5NZXRob2REZWNsYXJhdGlvbiwgdHlwZU5hbWU6IHN0cmluZykge1xuICAgIGNvbnN0IG5ld0dlbmVyaWNFeHByID1cbiAgICAgICAgY3JlYXRlTW9kdWxlV2l0aFByb3ZpZGVyc1R5cGUodHlwZU5hbWUsIG1ldGhvZC50eXBlIGFzIHRzLlR5cGVSZWZlcmVuY2VOb2RlKTtcbiAgICBjb25zdCBuZXdNZXRob2REZWNsID0gdHMudXBkYXRlTWV0aG9kKFxuICAgICAgICBtZXRob2QsIG1ldGhvZC5kZWNvcmF0b3JzLCBtZXRob2QubW9kaWZpZXJzLCBtZXRob2QuYXN0ZXJpc2tUb2tlbiwgbWV0aG9kLm5hbWUsXG4gICAgICAgIG1ldGhvZC5xdWVzdGlvblRva2VuLCBtZXRob2QudHlwZVBhcmFtZXRlcnMsIG1ldGhvZC5wYXJhbWV0ZXJzLCBuZXdHZW5lcmljRXhwcixcbiAgICAgICAgbWV0aG9kLmJvZHkpO1xuXG4gICAgdGhpcy5fdXBkYXRlTm9kZShtZXRob2QsIG5ld01ldGhvZERlY2wpO1xuICB9XG5cbiAgLyoqIFdoZXRoZXIgdGhlIHJlc29sdmVkIHZhbHVlIG1hcCByZXByZXNlbnRzIGEgTW9kdWxlV2l0aFByb3ZpZGVycyBvYmplY3QgKi9cbiAgaXNNb2R1bGVXaXRoUHJvdmlkZXJzVHlwZSh2YWx1ZTogUmVzb2x2ZWRWYWx1ZU1hcCk6IGJvb2xlYW4ge1xuICAgIGNvbnN0IG5nTW9kdWxlID0gdmFsdWUuZ2V0KCduZ01vZHVsZScpICE9PSB1bmRlZmluZWQ7XG4gICAgY29uc3QgcHJvdmlkZXJzID0gdmFsdWUuZ2V0KCdwcm92aWRlcnMnKSAhPT0gdW5kZWZpbmVkO1xuXG4gICAgcmV0dXJuIG5nTW9kdWxlICYmICh2YWx1ZS5zaXplID09PSAxIHx8IChwcm92aWRlcnMgJiYgdmFsdWUuc2l6ZSA9PT0gMikpO1xuICB9XG5cbiAgLyoqXG4gICAqIERldGVybWluZSB0aGUgZ2VuZXJpYyB0eXBlIG9mIGEgc3VzcGVjdGVkIE1vZHVsZVdpdGhQcm92aWRlcnMgcmV0dXJuIHR5cGUgYW5kIGFkZCBpdFxuICAgKiBleHBsaWNpdGx5XG4gICAqL1xuICBwcml2YXRlIF9taWdyYXRlU3RhdGljTmdNb2R1bGVNZXRob2Qobm9kZTogdHMuTWV0aG9kRGVjbGFyYXRpb24pOiBBbmFseXNpc0ZhaWx1cmV8bnVsbCB7XG4gICAgY29uc3QgcmV0dXJuU3RhdGVtZW50ID0gbm9kZS5ib2R5ICYmXG4gICAgICAgIG5vZGUuYm9keS5zdGF0ZW1lbnRzLmZpbmQobiA9PiB0cy5pc1JldHVyblN0YXRlbWVudChuKSkgYXMgdHMuUmV0dXJuU3RhdGVtZW50IHwgdW5kZWZpbmVkO1xuXG4gICAgLy8gTm8gcmV0dXJuIHR5cGUgZm91bmQsIGV4aXRcbiAgICBpZiAoIXJldHVyblN0YXRlbWVudCB8fCAhcmV0dXJuU3RhdGVtZW50LmV4cHJlc3Npb24pIHtcbiAgICAgIHJldHVybiB7bm9kZTogbm9kZSwgbWVzc2FnZTogYFJldHVybiB0eXBlIGlzIG5vdCBzdGF0aWNhbGx5IGFuYWx5emFibGUuYH07XG4gICAgfVxuXG4gICAgY29uc3QgbW9kdWxlVGV4dCA9IHRoaXMuX2dldE5nTW9kdWxlVHlwZU9mRXhwcmVzc2lvbihyZXR1cm5TdGF0ZW1lbnQuZXhwcmVzc2lvbik7XG5cbiAgICBpZiAobW9kdWxlVGV4dCkge1xuICAgICAgdGhpcy5fdXBkYXRlU3RhdGljTWV0aG9kVHlwZShub2RlLCBtb2R1bGVUZXh0KTtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIHJldHVybiB7bm9kZTogbm9kZSwgbWVzc2FnZTogYE1ldGhvZCB0eXBlIGlzIG5vdCBzdGF0aWNhbGx5IGFuYWx5emFibGUuYH07XG4gIH1cblxuICAvKiogRXZhbHVhdGUgYW5kIHJldHVybiB0aGUgbmdNb2R1bGUgdHlwZSBmcm9tIGFuIGV4cHJlc3Npb24gKi9cbiAgcHJpdmF0ZSBfZ2V0TmdNb2R1bGVUeXBlT2ZFeHByZXNzaW9uKGV4cHI6IHRzLkV4cHJlc3Npb24pOiBzdHJpbmd8dW5kZWZpbmVkIHtcbiAgICBjb25zdCBldmFsdWF0ZWRFeHByID0gdGhpcy5wYXJ0aWFsRXZhbHVhdG9yLmV2YWx1YXRlKGV4cHIpO1xuICAgIHJldHVybiB0aGlzLl9nZXRUeXBlT2ZSZXNvbHZlZFZhbHVlKGV2YWx1YXRlZEV4cHIpO1xuICB9XG5cbiAgLyoqXG4gICAqIFZpc2l0cyBhIGdpdmVuIG9iamVjdCBsaXRlcmFsIGV4cHJlc3Npb24gdG8gZGV0ZXJtaW5lIHRoZSBuZ01vZHVsZSB0eXBlLiBJZiB0aGUgZXhwcmVzc2lvblxuICAgKiBjYW5ub3QgYmUgcmVzb2x2ZWQsIGFkZCBhIFRPRE8gdG8gYWxlcnQgdGhlIHVzZXIuXG4gICAqL1xuICBwcml2YXRlIF9nZXRUeXBlT2ZSZXNvbHZlZFZhbHVlKHZhbHVlOiBSZXNvbHZlZFZhbHVlKTogc3RyaW5nfHVuZGVmaW5lZCB7XG4gICAgaWYgKHZhbHVlIGluc3RhbmNlb2YgTWFwICYmIHRoaXMuaXNNb2R1bGVXaXRoUHJvdmlkZXJzVHlwZSh2YWx1ZSkpIHtcbiAgICAgIGNvbnN0IG1hcFZhbHVlID0gdmFsdWUuZ2V0KCduZ01vZHVsZScpITtcbiAgICAgIGlmIChtYXBWYWx1ZSBpbnN0YW5jZW9mIFJlZmVyZW5jZSAmJiB0cy5pc0NsYXNzRGVjbGFyYXRpb24obWFwVmFsdWUubm9kZSkgJiZcbiAgICAgICAgICBtYXBWYWx1ZS5ub2RlLm5hbWUpIHtcbiAgICAgICAgcmV0dXJuIG1hcFZhbHVlLm5vZGUubmFtZS50ZXh0O1xuICAgICAgfSBlbHNlIGlmIChtYXBWYWx1ZSBpbnN0YW5jZW9mIER5bmFtaWNWYWx1ZSkge1xuICAgICAgICBhZGRUb2RvVG9Ob2RlKG1hcFZhbHVlLm5vZGUsIFRPRE9fQ09NTUVOVCk7XG4gICAgICAgIHRoaXMuX3VwZGF0ZU5vZGUobWFwVmFsdWUubm9kZSwgbWFwVmFsdWUubm9kZSk7XG4gICAgICB9XG4gICAgfVxuXG4gICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgfVxuXG4gIHByaXZhdGUgX3VwZGF0ZU5vZGUobm9kZTogdHMuTm9kZSwgbmV3Tm9kZTogdHMuTm9kZSkge1xuICAgIGNvbnN0IG5ld1RleHQgPSB0aGlzLnByaW50ZXIucHJpbnROb2RlKHRzLkVtaXRIaW50LlVuc3BlY2lmaWVkLCBuZXdOb2RlLCBub2RlLmdldFNvdXJjZUZpbGUoKSk7XG4gICAgY29uc3QgcmVjb3JkZXIgPSB0aGlzLmdldFVwZGF0ZVJlY29yZGVyKG5vZGUuZ2V0U291cmNlRmlsZSgpKTtcblxuICAgIHJlY29yZGVyLnJlbW92ZShub2RlLmdldFN0YXJ0KCksIG5vZGUuZ2V0V2lkdGgoKSk7XG4gICAgcmVjb3JkZXIuaW5zZXJ0UmlnaHQobm9kZS5nZXRTdGFydCgpLCBuZXdUZXh0KTtcbiAgfVxufVxuXG4vKipcbiAqIEFkZHMgYSB0by1kbyB0byB0aGUgZ2l2ZW4gVHlwZVNjcmlwdCBub2RlIHdoaWNoIGFsZXJ0cyBkZXZlbG9wZXJzIHRvIGZpeFxuICogcG90ZW50aWFsIGlzc3VlcyBpZGVudGlmaWVkIGJ5IHRoZSBtaWdyYXRpb24uXG4gKi9cbmZ1bmN0aW9uIGFkZFRvZG9Ub05vZGUobm9kZTogdHMuTm9kZSwgdGV4dDogc3RyaW5nKSB7XG4gIHRzLnNldFN5bnRoZXRpY0xlYWRpbmdDb21tZW50cyhub2RlLCBbe1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwb3M6IC0xLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbmQ6IC0xLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBoYXNUcmFpbGluZ05ld0xpbmU6IGZhbHNlLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBraW5kOiB0cy5TeW50YXhLaW5kLk11bHRpTGluZUNvbW1lbnRUcml2aWEsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRleHQ6IGAgJHt0ZXh0fSBgXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9XSk7XG59XG4iXX0=