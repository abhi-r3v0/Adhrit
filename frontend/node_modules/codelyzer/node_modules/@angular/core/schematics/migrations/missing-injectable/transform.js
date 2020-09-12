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
        define("@angular/core/schematics/migrations/missing-injectable/transform", ["require", "exports", "@angular/compiler-cli/src/ngtsc/imports", "@angular/compiler-cli/src/ngtsc/partial_evaluator", "@angular/compiler-cli/src/ngtsc/reflection", "typescript", "@angular/core/schematics/utils/ng_decorators", "@angular/core/schematics/migrations/missing-injectable/import_manager", "@angular/core/schematics/migrations/missing-injectable/providers_evaluator"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const imports_1 = require("@angular/compiler-cli/src/ngtsc/imports");
    const partial_evaluator_1 = require("@angular/compiler-cli/src/ngtsc/partial_evaluator");
    const reflection_1 = require("@angular/compiler-cli/src/ngtsc/reflection");
    const ts = require("typescript");
    const ng_decorators_1 = require("@angular/core/schematics/utils/ng_decorators");
    const import_manager_1 = require("@angular/core/schematics/migrations/missing-injectable/import_manager");
    const providers_evaluator_1 = require("@angular/core/schematics/migrations/missing-injectable/providers_evaluator");
    /** Name of decorators which imply that a given class does not need to be migrated. */
    const NO_MIGRATE_DECORATORS = ['Injectable', 'Directive', 'Component', 'Pipe'];
    class MissingInjectableTransform {
        constructor(typeChecker, getUpdateRecorder) {
            this.typeChecker = typeChecker;
            this.getUpdateRecorder = getUpdateRecorder;
            this.printer = ts.createPrinter();
            this.importManager = new import_manager_1.ImportManager(this.getUpdateRecorder, this.printer);
            /** Set of provider class declarations which were already checked or migrated. */
            this.visitedProviderClasses = new Set();
            /** Set of provider object literals which were already checked or migrated. */
            this.visitedProviderLiterals = new Set();
            this.providersEvaluator = new providers_evaluator_1.ProvidersEvaluator(new reflection_1.TypeScriptReflectionHost(typeChecker), typeChecker, /* dependencyTracker */ null);
        }
        recordChanges() { this.importManager.recordChanges(); }
        /**
         * Migrates all specified NgModule's by walking through referenced providers
         * and decorating them with "@Injectable" if needed.
         */
        migrateModules(modules) {
            return modules.reduce((failures, node) => failures.concat(this.migrateModule(node)), []);
        }
        /**
         * Migrates all specified directives by walking through referenced providers
         * and decorating them with "@Injectable" if needed.
         */
        migrateDirectives(directives) {
            return directives.reduce((failures, node) => failures.concat(this.migrateDirective(node)), []);
        }
        /** Migrates a given NgModule by walking through the referenced providers. */
        migrateModule(module) {
            if (module.providersExpr === null) {
                return [];
            }
            const { resolvedValue, literals } = this.providersEvaluator.evaluate(module.providersExpr);
            this._migrateLiteralProviders(literals);
            if (!Array.isArray(resolvedValue)) {
                return [{
                        node: module.providersExpr,
                        message: 'Providers of module are not statically analyzable.'
                    }];
            }
            return this._visitProviderResolvedValue(resolvedValue, module);
        }
        /**
         * Migrates a given directive by walking through defined providers. This method
         * also handles components with "viewProviders" defined.
         */
        migrateDirective(directive) {
            const failures = [];
            // Migrate "providers" on directives and components if defined.
            if (directive.providersExpr) {
                const { resolvedValue, literals } = this.providersEvaluator.evaluate(directive.providersExpr);
                this._migrateLiteralProviders(literals);
                if (!Array.isArray(resolvedValue)) {
                    return [
                        { node: directive.providersExpr, message: `Providers are not statically analyzable.` }
                    ];
                }
                failures.push(...this._visitProviderResolvedValue(resolvedValue, directive));
            }
            // Migrate "viewProviders" on components if defined.
            if (directive.viewProvidersExpr) {
                const { resolvedValue, literals } = this.providersEvaluator.evaluate(directive.viewProvidersExpr);
                this._migrateLiteralProviders(literals);
                if (!Array.isArray(resolvedValue)) {
                    return [
                        { node: directive.viewProvidersExpr, message: `Providers are not statically analyzable.` }
                    ];
                }
                failures.push(...this._visitProviderResolvedValue(resolvedValue, directive));
            }
            return failures;
        }
        /**
         * Migrates a given provider class if it is not decorated with
         * any Angular decorator.
         */
        migrateProviderClass(node, context) {
            if (this.visitedProviderClasses.has(node)) {
                return;
            }
            this.visitedProviderClasses.add(node);
            const sourceFile = node.getSourceFile();
            // We cannot migrate provider classes outside of source files. This is because the
            // migration for third-party library files should happen in "ngcc", and in general
            // would also involve metadata parsing.
            if (sourceFile.isDeclarationFile) {
                return;
            }
            const ngDecorators = node.decorators ? ng_decorators_1.getAngularDecorators(this.typeChecker, node.decorators) : null;
            if (ngDecorators !== null &&
                ngDecorators.some(d => NO_MIGRATE_DECORATORS.indexOf(d.name) !== -1)) {
                return;
            }
            const updateRecorder = this.getUpdateRecorder(sourceFile);
            const importExpr = this.importManager.addImportToSourceFile(sourceFile, 'Injectable', '@angular/core');
            const newDecoratorExpr = ts.createDecorator(ts.createCall(importExpr, undefined, undefined));
            const newDecoratorText = this.printer.printNode(ts.EmitHint.Unspecified, newDecoratorExpr, sourceFile);
            // In case the class is already decorated with "@Inject(..)", we replace the "@Inject"
            // decorator with "@Injectable()" since using "@Inject(..)" on a class is a noop and
            // most likely was meant to be "@Injectable()".
            const existingInjectDecorator = ngDecorators !== null ? ngDecorators.find(d => d.name === 'Inject') : null;
            if (existingInjectDecorator) {
                updateRecorder.replaceDecorator(existingInjectDecorator.node, newDecoratorText, context.name);
            }
            else {
                updateRecorder.addClassDecorator(node, newDecoratorText, context.name);
            }
        }
        /**
         * Migrates object literal providers which do not use "useValue", "useClass",
         * "useExisting" or "useFactory". These providers behave differently in Ivy. e.g.
         *
         * ```ts
         *   {provide: X} -> {provide: X, useValue: undefined} // this is how it behaves in VE
         *   {provide: X} -> {provide: X, useClass: X} // this is how it behaves in Ivy
         * ```
         *
         * To ensure forward compatibility, we migrate these empty object literal providers
         * to explicitly use `useValue: undefined`.
         */
        _migrateLiteralProviders(literals) {
            for (let { node, resolvedValue } of literals) {
                if (this.visitedProviderLiterals.has(node)) {
                    continue;
                }
                this.visitedProviderLiterals.add(node);
                if (!resolvedValue || !(resolvedValue instanceof Map) || !resolvedValue.has('provide') ||
                    resolvedValue.has('useClass') || resolvedValue.has('useValue') ||
                    resolvedValue.has('useExisting') || resolvedValue.has('useFactory')) {
                    continue;
                }
                const sourceFile = node.getSourceFile();
                const newObjectLiteral = ts.updateObjectLiteral(node, node.properties.concat(ts.createPropertyAssignment('useValue', ts.createIdentifier('undefined'))));
                this.getUpdateRecorder(sourceFile)
                    .updateObjectLiteral(node, this.printer.printNode(ts.EmitHint.Unspecified, newObjectLiteral, sourceFile));
            }
        }
        /**
         * Visits the given resolved value of a provider. Providers can be nested in
         * arrays and we need to recursively walk through the providers to be able to
         * migrate all referenced provider classes. e.g. "providers: [[A, [B]]]".
         */
        _visitProviderResolvedValue(value, module) {
            if (value instanceof imports_1.Reference && ts.isClassDeclaration(value.node)) {
                this.migrateProviderClass(value.node, module);
            }
            else if (value instanceof Map) {
                // If a "ClassProvider" has the "deps" property set, then we do not need to
                // decorate the class. This is because the class is instantiated through the
                // specified "deps" and the class does not need a factory definition.
                if (value.has('provide') && value.has('useClass') && value.get('deps') == null) {
                    return this._visitProviderResolvedValue(value.get('useClass'), module);
                }
            }
            else if (Array.isArray(value)) {
                return value.reduce((res, v) => res.concat(this._visitProviderResolvedValue(v, module)), []);
            }
            else if (value instanceof partial_evaluator_1.DynamicValue) {
                return [{ node: value.node, message: `Provider is not statically analyzable.` }];
            }
            return [];
        }
    }
    exports.MissingInjectableTransform = MissingInjectableTransform;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNmb3JtLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zY2hlbWF0aWNzL21pZ3JhdGlvbnMvbWlzc2luZy1pbmplY3RhYmxlL3RyYW5zZm9ybS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7OztJQUVILHFFQUFrRTtJQUNsRSx5RkFBOEY7SUFDOUYsMkVBQW9GO0lBQ3BGLGlDQUFpQztJQUVqQyxnRkFBK0Q7SUFHL0QsMEdBQStDO0lBQy9DLG9IQUEwRTtJQUkxRSxzRkFBc0Y7SUFDdEYsTUFBTSxxQkFBcUIsR0FBRyxDQUFDLFlBQVksRUFBRSxXQUFXLEVBQUUsV0FBVyxFQUFFLE1BQU0sQ0FBQyxDQUFDO0lBTy9FLE1BQWEsMEJBQTBCO1FBV3JDLFlBQ1ksV0FBMkIsRUFDM0IsaUJBQXdEO1lBRHhELGdCQUFXLEdBQVgsV0FBVyxDQUFnQjtZQUMzQixzQkFBaUIsR0FBakIsaUJBQWlCLENBQXVDO1lBWjVELFlBQU8sR0FBRyxFQUFFLENBQUMsYUFBYSxFQUFFLENBQUM7WUFDN0Isa0JBQWEsR0FBRyxJQUFJLDhCQUFhLENBQUMsSUFBSSxDQUFDLGlCQUFpQixFQUFFLElBQUksQ0FBQyxPQUFPLENBQUMsQ0FBQztZQUdoRixpRkFBaUY7WUFDekUsMkJBQXNCLEdBQUcsSUFBSSxHQUFHLEVBQXVCLENBQUM7WUFFaEUsOEVBQThFO1lBQ3RFLDRCQUF1QixHQUFHLElBQUksR0FBRyxFQUE4QixDQUFDO1lBS3RFLElBQUksQ0FBQyxrQkFBa0IsR0FBRyxJQUFJLHdDQUFrQixDQUM1QyxJQUFJLHFDQUF3QixDQUFDLFdBQVcsQ0FBQyxFQUFFLFdBQVcsRUFBRSx1QkFBdUIsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUM1RixDQUFDO1FBRUQsYUFBYSxLQUFLLElBQUksQ0FBQyxhQUFhLENBQUMsYUFBYSxFQUFFLENBQUMsQ0FBQyxDQUFDO1FBRXZEOzs7V0FHRztRQUNILGNBQWMsQ0FBQyxPQUEyQjtZQUN4QyxPQUFPLE9BQU8sQ0FBQyxNQUFNLENBQ2pCLENBQUMsUUFBUSxFQUFFLElBQUksRUFBRSxFQUFFLENBQUMsUUFBUSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsYUFBYSxDQUFDLElBQUksQ0FBQyxDQUFDLEVBQUUsRUFBdUIsQ0FBQyxDQUFDO1FBQzlGLENBQUM7UUFFRDs7O1dBR0c7UUFDSCxpQkFBaUIsQ0FBQyxVQUErQjtZQUMvQyxPQUFPLFVBQVUsQ0FBQyxNQUFNLENBQ3BCLENBQUMsUUFBUSxFQUFFLElBQUksRUFBRSxFQUFFLENBQUMsUUFBUSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsSUFBSSxDQUFDLENBQUMsRUFBRSxFQUF1QixDQUFDLENBQUM7UUFDakcsQ0FBQztRQUVELDZFQUE2RTtRQUM3RSxhQUFhLENBQUMsTUFBd0I7WUFDcEMsSUFBSSxNQUFNLENBQUMsYUFBYSxLQUFLLElBQUksRUFBRTtnQkFDakMsT0FBTyxFQUFFLENBQUM7YUFDWDtZQUVELE1BQU0sRUFBQyxhQUFhLEVBQUUsUUFBUSxFQUFDLEdBQUcsSUFBSSxDQUFDLGtCQUFrQixDQUFDLFFBQVEsQ0FBQyxNQUFNLENBQUMsYUFBYSxDQUFDLENBQUM7WUFDekYsSUFBSSxDQUFDLHdCQUF3QixDQUFDLFFBQVEsQ0FBQyxDQUFDO1lBRXhDLElBQUksQ0FBQyxLQUFLLENBQUMsT0FBTyxDQUFDLGFBQWEsQ0FBQyxFQUFFO2dCQUNqQyxPQUFPLENBQUM7d0JBQ04sSUFBSSxFQUFFLE1BQU0sQ0FBQyxhQUFhO3dCQUMxQixPQUFPLEVBQUUsb0RBQW9EO3FCQUM5RCxDQUFDLENBQUM7YUFDSjtZQUVELE9BQU8sSUFBSSxDQUFDLDJCQUEyQixDQUFDLGFBQWEsRUFBRSxNQUFNLENBQUMsQ0FBQztRQUNqRSxDQUFDO1FBR0Q7OztXQUdHO1FBQ0gsZ0JBQWdCLENBQUMsU0FBNEI7WUFDM0MsTUFBTSxRQUFRLEdBQXNCLEVBQUUsQ0FBQztZQUV2QywrREFBK0Q7WUFDL0QsSUFBSSxTQUFTLENBQUMsYUFBYSxFQUFFO2dCQUMzQixNQUFNLEVBQUMsYUFBYSxFQUFFLFFBQVEsRUFBQyxHQUFHLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxRQUFRLENBQUMsU0FBUyxDQUFDLGFBQWEsQ0FBQyxDQUFDO2dCQUM1RixJQUFJLENBQUMsd0JBQXdCLENBQUMsUUFBUSxDQUFDLENBQUM7Z0JBQ3hDLElBQUksQ0FBQyxLQUFLLENBQUMsT0FBTyxDQUFDLGFBQWEsQ0FBQyxFQUFFO29CQUNqQyxPQUFPO3dCQUNMLEVBQUMsSUFBSSxFQUFFLFNBQVMsQ0FBQyxhQUFhLEVBQUUsT0FBTyxFQUFFLDBDQUEwQyxFQUFDO3FCQUNyRixDQUFDO2lCQUNIO2dCQUNELFFBQVEsQ0FBQyxJQUFJLENBQUMsR0FBRyxJQUFJLENBQUMsMkJBQTJCLENBQUMsYUFBYSxFQUFFLFNBQVMsQ0FBQyxDQUFDLENBQUM7YUFDOUU7WUFFRCxvREFBb0Q7WUFDcEQsSUFBSSxTQUFTLENBQUMsaUJBQWlCLEVBQUU7Z0JBQy9CLE1BQU0sRUFBQyxhQUFhLEVBQUUsUUFBUSxFQUFDLEdBQzNCLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxRQUFRLENBQUMsU0FBUyxDQUFDLGlCQUFpQixDQUFDLENBQUM7Z0JBQ2xFLElBQUksQ0FBQyx3QkFBd0IsQ0FBQyxRQUFRLENBQUMsQ0FBQztnQkFDeEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxPQUFPLENBQUMsYUFBYSxDQUFDLEVBQUU7b0JBQ2pDLE9BQU87d0JBQ0wsRUFBQyxJQUFJLEVBQUUsU0FBUyxDQUFDLGlCQUFpQixFQUFFLE9BQU8sRUFBRSwwQ0FBMEMsRUFBQztxQkFDekYsQ0FBQztpQkFDSDtnQkFDRCxRQUFRLENBQUMsSUFBSSxDQUFDLEdBQUcsSUFBSSxDQUFDLDJCQUEyQixDQUFDLGFBQWEsRUFBRSxTQUFTLENBQUMsQ0FBQyxDQUFDO2FBQzlFO1lBQ0QsT0FBTyxRQUFRLENBQUM7UUFDbEIsQ0FBQztRQUVEOzs7V0FHRztRQUNILG9CQUFvQixDQUFDLElBQXlCLEVBQUUsT0FBMkM7WUFDekYsSUFBSSxJQUFJLENBQUMsc0JBQXNCLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxFQUFFO2dCQUN6QyxPQUFPO2FBQ1I7WUFDRCxJQUFJLENBQUMsc0JBQXNCLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxDQUFDO1lBRXRDLE1BQU0sVUFBVSxHQUFHLElBQUksQ0FBQyxhQUFhLEVBQUUsQ0FBQztZQUV4QyxrRkFBa0Y7WUFDbEYsa0ZBQWtGO1lBQ2xGLHVDQUF1QztZQUN2QyxJQUFJLFVBQVUsQ0FBQyxpQkFBaUIsRUFBRTtnQkFDaEMsT0FBTzthQUNSO1lBRUQsTUFBTSxZQUFZLEdBQ2QsSUFBSSxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUMsb0NBQW9CLENBQUMsSUFBSSxDQUFDLFdBQVcsRUFBRSxJQUFJLENBQUMsVUFBVSxDQUFDLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQztZQUVyRixJQUFJLFlBQVksS0FBSyxJQUFJO2dCQUNyQixZQUFZLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMscUJBQXFCLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUMsQ0FBQyxFQUFFO2dCQUN4RSxPQUFPO2FBQ1I7WUFFRCxNQUFNLGNBQWMsR0FBRyxJQUFJLENBQUMsaUJBQWlCLENBQUMsVUFBVSxDQUFDLENBQUM7WUFDMUQsTUFBTSxVQUFVLEdBQ1osSUFBSSxDQUFDLGFBQWEsQ0FBQyxxQkFBcUIsQ0FBQyxVQUFVLEVBQUUsWUFBWSxFQUFFLGVBQWUsQ0FBQyxDQUFDO1lBQ3hGLE1BQU0sZ0JBQWdCLEdBQUcsRUFBRSxDQUFDLGVBQWUsQ0FBQyxFQUFFLENBQUMsVUFBVSxDQUFDLFVBQVUsRUFBRSxTQUFTLEVBQUUsU0FBUyxDQUFDLENBQUMsQ0FBQztZQUM3RixNQUFNLGdCQUFnQixHQUNsQixJQUFJLENBQUMsT0FBTyxDQUFDLFNBQVMsQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLFdBQVcsRUFBRSxnQkFBZ0IsRUFBRSxVQUFVLENBQUMsQ0FBQztZQUdsRixzRkFBc0Y7WUFDdEYsb0ZBQW9GO1lBQ3BGLCtDQUErQztZQUMvQyxNQUFNLHVCQUF1QixHQUN6QixZQUFZLEtBQUssSUFBSSxDQUFDLENBQUMsQ0FBQyxZQUFZLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLElBQUksS0FBSyxRQUFRLENBQUMsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDO1lBQy9FLElBQUksdUJBQXVCLEVBQUU7Z0JBQzNCLGNBQWMsQ0FBQyxnQkFBZ0IsQ0FBQyx1QkFBdUIsQ0FBQyxJQUFJLEVBQUUsZ0JBQWdCLEVBQUUsT0FBTyxDQUFDLElBQUksQ0FBQyxDQUFDO2FBQy9GO2lCQUFNO2dCQUNMLGNBQWMsQ0FBQyxpQkFBaUIsQ0FBQyxJQUFJLEVBQUUsZ0JBQWdCLEVBQUUsT0FBTyxDQUFDLElBQUksQ0FBQyxDQUFDO2FBQ3hFO1FBQ0gsQ0FBQztRQUVEOzs7Ozs7Ozs7OztXQVdHO1FBQ0ssd0JBQXdCLENBQUMsUUFBMkI7WUFDMUQsS0FBSyxJQUFJLEVBQUMsSUFBSSxFQUFFLGFBQWEsRUFBQyxJQUFJLFFBQVEsRUFBRTtnQkFDMUMsSUFBSSxJQUFJLENBQUMsdUJBQXVCLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxFQUFFO29CQUMxQyxTQUFTO2lCQUNWO2dCQUNELElBQUksQ0FBQyx1QkFBdUIsQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLENBQUM7Z0JBRXZDLElBQUksQ0FBQyxhQUFhLElBQUksQ0FBQyxDQUFDLGFBQWEsWUFBWSxHQUFHLENBQUMsSUFBSSxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsU0FBUyxDQUFDO29CQUNsRixhQUFhLENBQUMsR0FBRyxDQUFDLFVBQVUsQ0FBQyxJQUFJLGFBQWEsQ0FBQyxHQUFHLENBQUMsVUFBVSxDQUFDO29CQUM5RCxhQUFhLENBQUMsR0FBRyxDQUFDLGFBQWEsQ0FBQyxJQUFJLGFBQWEsQ0FBQyxHQUFHLENBQUMsWUFBWSxDQUFDLEVBQUU7b0JBQ3ZFLFNBQVM7aUJBQ1Y7Z0JBRUQsTUFBTSxVQUFVLEdBQUcsSUFBSSxDQUFDLGFBQWEsRUFBRSxDQUFDO2dCQUN4QyxNQUFNLGdCQUFnQixHQUFHLEVBQUUsQ0FBQyxtQkFBbUIsQ0FDM0MsSUFBSSxFQUFFLElBQUksQ0FBQyxVQUFVLENBQUMsTUFBTSxDQUNsQixFQUFFLENBQUMsd0JBQXdCLENBQUMsVUFBVSxFQUFFLEVBQUUsQ0FBQyxnQkFBZ0IsQ0FBQyxXQUFXLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztnQkFFMUYsSUFBSSxDQUFDLGlCQUFpQixDQUFDLFVBQVUsQ0FBQztxQkFDN0IsbUJBQW1CLENBQ2hCLElBQUksRUFBRSxJQUFJLENBQUMsT0FBTyxDQUFDLFNBQVMsQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLFdBQVcsRUFBRSxnQkFBZ0IsRUFBRSxVQUFVLENBQUMsQ0FBQyxDQUFDO2FBQzlGO1FBQ0gsQ0FBQztRQUVEOzs7O1dBSUc7UUFDSywyQkFBMkIsQ0FBQyxLQUFvQixFQUFFLE1BQXdCO1lBRWhGLElBQUksS0FBSyxZQUFZLG1CQUFTLElBQUksRUFBRSxDQUFDLGtCQUFrQixDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsRUFBRTtnQkFDbkUsSUFBSSxDQUFDLG9CQUFvQixDQUFDLEtBQUssQ0FBQyxJQUFJLEVBQUUsTUFBTSxDQUFDLENBQUM7YUFDL0M7aUJBQU0sSUFBSSxLQUFLLFlBQVksR0FBRyxFQUFFO2dCQUMvQiwyRUFBMkU7Z0JBQzNFLDRFQUE0RTtnQkFDNUUscUVBQXFFO2dCQUNyRSxJQUFJLEtBQUssQ0FBQyxHQUFHLENBQUMsU0FBUyxDQUFDLElBQUksS0FBSyxDQUFDLEdBQUcsQ0FBQyxVQUFVLENBQUMsSUFBSSxLQUFLLENBQUMsR0FBRyxDQUFDLE1BQU0sQ0FBQyxJQUFJLElBQUksRUFBRTtvQkFDOUUsT0FBTyxJQUFJLENBQUMsMkJBQTJCLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxVQUFVLENBQUcsRUFBRSxNQUFNLENBQUMsQ0FBQztpQkFDMUU7YUFDRjtpQkFBTSxJQUFJLEtBQUssQ0FBQyxPQUFPLENBQUMsS0FBSyxDQUFDLEVBQUU7Z0JBQy9CLE9BQU8sS0FBSyxDQUFDLE1BQU0sQ0FBQyxDQUFDLEdBQUcsRUFBRSxDQUFDLEVBQUUsRUFBRSxDQUFDLEdBQUcsQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLDJCQUEyQixDQUFDLENBQUMsRUFBRSxNQUFNLENBQUMsQ0FBQyxFQUFFLEVBQ25FLENBQUMsQ0FBQzthQUN6QjtpQkFBTSxJQUFJLEtBQUssWUFBWSxnQ0FBWSxFQUFFO2dCQUN4QyxPQUFPLENBQUMsRUFBQyxJQUFJLEVBQUUsS0FBSyxDQUFDLElBQUksRUFBRSxPQUFPLEVBQUUsd0NBQXdDLEVBQUMsQ0FBQyxDQUFDO2FBQ2hGO1lBQ0QsT0FBTyxFQUFFLENBQUM7UUFDWixDQUFDO0tBQ0Y7SUF2TUQsZ0VBdU1DIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1JlZmVyZW5jZX0gZnJvbSAnQGFuZ3VsYXIvY29tcGlsZXItY2xpL3NyYy9uZ3RzYy9pbXBvcnRzJztcbmltcG9ydCB7RHluYW1pY1ZhbHVlLCBSZXNvbHZlZFZhbHVlfSBmcm9tICdAYW5ndWxhci9jb21waWxlci1jbGkvc3JjL25ndHNjL3BhcnRpYWxfZXZhbHVhdG9yJztcbmltcG9ydCB7VHlwZVNjcmlwdFJlZmxlY3Rpb25Ib3N0fSBmcm9tICdAYW5ndWxhci9jb21waWxlci1jbGkvc3JjL25ndHNjL3JlZmxlY3Rpb24nO1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7Z2V0QW5ndWxhckRlY29yYXRvcnN9IGZyb20gJy4uLy4uL3V0aWxzL25nX2RlY29yYXRvcnMnO1xuXG5pbXBvcnQge1Jlc29sdmVkRGlyZWN0aXZlLCBSZXNvbHZlZE5nTW9kdWxlfSBmcm9tICcuL2RlZmluaXRpb25fY29sbGVjdG9yJztcbmltcG9ydCB7SW1wb3J0TWFuYWdlcn0gZnJvbSAnLi9pbXBvcnRfbWFuYWdlcic7XG5pbXBvcnQge1Byb3ZpZGVyTGl0ZXJhbCwgUHJvdmlkZXJzRXZhbHVhdG9yfSBmcm9tICcuL3Byb3ZpZGVyc19ldmFsdWF0b3InO1xuaW1wb3J0IHtVcGRhdGVSZWNvcmRlcn0gZnJvbSAnLi91cGRhdGVfcmVjb3JkZXInO1xuXG5cbi8qKiBOYW1lIG9mIGRlY29yYXRvcnMgd2hpY2ggaW1wbHkgdGhhdCBhIGdpdmVuIGNsYXNzIGRvZXMgbm90IG5lZWQgdG8gYmUgbWlncmF0ZWQuICovXG5jb25zdCBOT19NSUdSQVRFX0RFQ09SQVRPUlMgPSBbJ0luamVjdGFibGUnLCAnRGlyZWN0aXZlJywgJ0NvbXBvbmVudCcsICdQaXBlJ107XG5cbmV4cG9ydCBpbnRlcmZhY2UgQW5hbHlzaXNGYWlsdXJlIHtcbiAgbm9kZTogdHMuTm9kZTtcbiAgbWVzc2FnZTogc3RyaW5nO1xufVxuXG5leHBvcnQgY2xhc3MgTWlzc2luZ0luamVjdGFibGVUcmFuc2Zvcm0ge1xuICBwcml2YXRlIHByaW50ZXIgPSB0cy5jcmVhdGVQcmludGVyKCk7XG4gIHByaXZhdGUgaW1wb3J0TWFuYWdlciA9IG5ldyBJbXBvcnRNYW5hZ2VyKHRoaXMuZ2V0VXBkYXRlUmVjb3JkZXIsIHRoaXMucHJpbnRlcik7XG4gIHByaXZhdGUgcHJvdmlkZXJzRXZhbHVhdG9yOiBQcm92aWRlcnNFdmFsdWF0b3I7XG5cbiAgLyoqIFNldCBvZiBwcm92aWRlciBjbGFzcyBkZWNsYXJhdGlvbnMgd2hpY2ggd2VyZSBhbHJlYWR5IGNoZWNrZWQgb3IgbWlncmF0ZWQuICovXG4gIHByaXZhdGUgdmlzaXRlZFByb3ZpZGVyQ2xhc3NlcyA9IG5ldyBTZXQ8dHMuQ2xhc3NEZWNsYXJhdGlvbj4oKTtcblxuICAvKiogU2V0IG9mIHByb3ZpZGVyIG9iamVjdCBsaXRlcmFscyB3aGljaCB3ZXJlIGFscmVhZHkgY2hlY2tlZCBvciBtaWdyYXRlZC4gKi9cbiAgcHJpdmF0ZSB2aXNpdGVkUHJvdmlkZXJMaXRlcmFscyA9IG5ldyBTZXQ8dHMuT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24+KCk7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHR5cGVDaGVja2VyOiB0cy5UeXBlQ2hlY2tlcixcbiAgICAgIHByaXZhdGUgZ2V0VXBkYXRlUmVjb3JkZXI6IChzZjogdHMuU291cmNlRmlsZSkgPT4gVXBkYXRlUmVjb3JkZXIpIHtcbiAgICB0aGlzLnByb3ZpZGVyc0V2YWx1YXRvciA9IG5ldyBQcm92aWRlcnNFdmFsdWF0b3IoXG4gICAgICAgIG5ldyBUeXBlU2NyaXB0UmVmbGVjdGlvbkhvc3QodHlwZUNoZWNrZXIpLCB0eXBlQ2hlY2tlciwgLyogZGVwZW5kZW5jeVRyYWNrZXIgKi8gbnVsbCk7XG4gIH1cblxuICByZWNvcmRDaGFuZ2VzKCkgeyB0aGlzLmltcG9ydE1hbmFnZXIucmVjb3JkQ2hhbmdlcygpOyB9XG5cbiAgLyoqXG4gICAqIE1pZ3JhdGVzIGFsbCBzcGVjaWZpZWQgTmdNb2R1bGUncyBieSB3YWxraW5nIHRocm91Z2ggcmVmZXJlbmNlZCBwcm92aWRlcnNcbiAgICogYW5kIGRlY29yYXRpbmcgdGhlbSB3aXRoIFwiQEluamVjdGFibGVcIiBpZiBuZWVkZWQuXG4gICAqL1xuICBtaWdyYXRlTW9kdWxlcyhtb2R1bGVzOiBSZXNvbHZlZE5nTW9kdWxlW10pOiBBbmFseXNpc0ZhaWx1cmVbXSB7XG4gICAgcmV0dXJuIG1vZHVsZXMucmVkdWNlKFxuICAgICAgICAoZmFpbHVyZXMsIG5vZGUpID0+IGZhaWx1cmVzLmNvbmNhdCh0aGlzLm1pZ3JhdGVNb2R1bGUobm9kZSkpLCBbXSBhcyBBbmFseXNpc0ZhaWx1cmVbXSk7XG4gIH1cblxuICAvKipcbiAgICogTWlncmF0ZXMgYWxsIHNwZWNpZmllZCBkaXJlY3RpdmVzIGJ5IHdhbGtpbmcgdGhyb3VnaCByZWZlcmVuY2VkIHByb3ZpZGVyc1xuICAgKiBhbmQgZGVjb3JhdGluZyB0aGVtIHdpdGggXCJASW5qZWN0YWJsZVwiIGlmIG5lZWRlZC5cbiAgICovXG4gIG1pZ3JhdGVEaXJlY3RpdmVzKGRpcmVjdGl2ZXM6IFJlc29sdmVkRGlyZWN0aXZlW10pOiBBbmFseXNpc0ZhaWx1cmVbXSB7XG4gICAgcmV0dXJuIGRpcmVjdGl2ZXMucmVkdWNlKFxuICAgICAgICAoZmFpbHVyZXMsIG5vZGUpID0+IGZhaWx1cmVzLmNvbmNhdCh0aGlzLm1pZ3JhdGVEaXJlY3RpdmUobm9kZSkpLCBbXSBhcyBBbmFseXNpc0ZhaWx1cmVbXSk7XG4gIH1cblxuICAvKiogTWlncmF0ZXMgYSBnaXZlbiBOZ01vZHVsZSBieSB3YWxraW5nIHRocm91Z2ggdGhlIHJlZmVyZW5jZWQgcHJvdmlkZXJzLiAqL1xuICBtaWdyYXRlTW9kdWxlKG1vZHVsZTogUmVzb2x2ZWROZ01vZHVsZSk6IEFuYWx5c2lzRmFpbHVyZVtdIHtcbiAgICBpZiAobW9kdWxlLnByb3ZpZGVyc0V4cHIgPT09IG51bGwpIHtcbiAgICAgIHJldHVybiBbXTtcbiAgICB9XG5cbiAgICBjb25zdCB7cmVzb2x2ZWRWYWx1ZSwgbGl0ZXJhbHN9ID0gdGhpcy5wcm92aWRlcnNFdmFsdWF0b3IuZXZhbHVhdGUobW9kdWxlLnByb3ZpZGVyc0V4cHIpO1xuICAgIHRoaXMuX21pZ3JhdGVMaXRlcmFsUHJvdmlkZXJzKGxpdGVyYWxzKTtcblxuICAgIGlmICghQXJyYXkuaXNBcnJheShyZXNvbHZlZFZhbHVlKSkge1xuICAgICAgcmV0dXJuIFt7XG4gICAgICAgIG5vZGU6IG1vZHVsZS5wcm92aWRlcnNFeHByLFxuICAgICAgICBtZXNzYWdlOiAnUHJvdmlkZXJzIG9mIG1vZHVsZSBhcmUgbm90IHN0YXRpY2FsbHkgYW5hbHl6YWJsZS4nXG4gICAgICB9XTtcbiAgICB9XG5cbiAgICByZXR1cm4gdGhpcy5fdmlzaXRQcm92aWRlclJlc29sdmVkVmFsdWUocmVzb2x2ZWRWYWx1ZSwgbW9kdWxlKTtcbiAgfVxuXG5cbiAgLyoqXG4gICAqIE1pZ3JhdGVzIGEgZ2l2ZW4gZGlyZWN0aXZlIGJ5IHdhbGtpbmcgdGhyb3VnaCBkZWZpbmVkIHByb3ZpZGVycy4gVGhpcyBtZXRob2RcbiAgICogYWxzbyBoYW5kbGVzIGNvbXBvbmVudHMgd2l0aCBcInZpZXdQcm92aWRlcnNcIiBkZWZpbmVkLlxuICAgKi9cbiAgbWlncmF0ZURpcmVjdGl2ZShkaXJlY3RpdmU6IFJlc29sdmVkRGlyZWN0aXZlKTogQW5hbHlzaXNGYWlsdXJlW10ge1xuICAgIGNvbnN0IGZhaWx1cmVzOiBBbmFseXNpc0ZhaWx1cmVbXSA9IFtdO1xuXG4gICAgLy8gTWlncmF0ZSBcInByb3ZpZGVyc1wiIG9uIGRpcmVjdGl2ZXMgYW5kIGNvbXBvbmVudHMgaWYgZGVmaW5lZC5cbiAgICBpZiAoZGlyZWN0aXZlLnByb3ZpZGVyc0V4cHIpIHtcbiAgICAgIGNvbnN0IHtyZXNvbHZlZFZhbHVlLCBsaXRlcmFsc30gPSB0aGlzLnByb3ZpZGVyc0V2YWx1YXRvci5ldmFsdWF0ZShkaXJlY3RpdmUucHJvdmlkZXJzRXhwcik7XG4gICAgICB0aGlzLl9taWdyYXRlTGl0ZXJhbFByb3ZpZGVycyhsaXRlcmFscyk7XG4gICAgICBpZiAoIUFycmF5LmlzQXJyYXkocmVzb2x2ZWRWYWx1ZSkpIHtcbiAgICAgICAgcmV0dXJuIFtcbiAgICAgICAgICB7bm9kZTogZGlyZWN0aXZlLnByb3ZpZGVyc0V4cHIsIG1lc3NhZ2U6IGBQcm92aWRlcnMgYXJlIG5vdCBzdGF0aWNhbGx5IGFuYWx5emFibGUuYH1cbiAgICAgICAgXTtcbiAgICAgIH1cbiAgICAgIGZhaWx1cmVzLnB1c2goLi4udGhpcy5fdmlzaXRQcm92aWRlclJlc29sdmVkVmFsdWUocmVzb2x2ZWRWYWx1ZSwgZGlyZWN0aXZlKSk7XG4gICAgfVxuXG4gICAgLy8gTWlncmF0ZSBcInZpZXdQcm92aWRlcnNcIiBvbiBjb21wb25lbnRzIGlmIGRlZmluZWQuXG4gICAgaWYgKGRpcmVjdGl2ZS52aWV3UHJvdmlkZXJzRXhwcikge1xuICAgICAgY29uc3Qge3Jlc29sdmVkVmFsdWUsIGxpdGVyYWxzfSA9XG4gICAgICAgICAgdGhpcy5wcm92aWRlcnNFdmFsdWF0b3IuZXZhbHVhdGUoZGlyZWN0aXZlLnZpZXdQcm92aWRlcnNFeHByKTtcbiAgICAgIHRoaXMuX21pZ3JhdGVMaXRlcmFsUHJvdmlkZXJzKGxpdGVyYWxzKTtcbiAgICAgIGlmICghQXJyYXkuaXNBcnJheShyZXNvbHZlZFZhbHVlKSkge1xuICAgICAgICByZXR1cm4gW1xuICAgICAgICAgIHtub2RlOiBkaXJlY3RpdmUudmlld1Byb3ZpZGVyc0V4cHIsIG1lc3NhZ2U6IGBQcm92aWRlcnMgYXJlIG5vdCBzdGF0aWNhbGx5IGFuYWx5emFibGUuYH1cbiAgICAgICAgXTtcbiAgICAgIH1cbiAgICAgIGZhaWx1cmVzLnB1c2goLi4udGhpcy5fdmlzaXRQcm92aWRlclJlc29sdmVkVmFsdWUocmVzb2x2ZWRWYWx1ZSwgZGlyZWN0aXZlKSk7XG4gICAgfVxuICAgIHJldHVybiBmYWlsdXJlcztcbiAgfVxuXG4gIC8qKlxuICAgKiBNaWdyYXRlcyBhIGdpdmVuIHByb3ZpZGVyIGNsYXNzIGlmIGl0IGlzIG5vdCBkZWNvcmF0ZWQgd2l0aFxuICAgKiBhbnkgQW5ndWxhciBkZWNvcmF0b3IuXG4gICAqL1xuICBtaWdyYXRlUHJvdmlkZXJDbGFzcyhub2RlOiB0cy5DbGFzc0RlY2xhcmF0aW9uLCBjb250ZXh0OiBSZXNvbHZlZE5nTW9kdWxlfFJlc29sdmVkRGlyZWN0aXZlKSB7XG4gICAgaWYgKHRoaXMudmlzaXRlZFByb3ZpZGVyQ2xhc3Nlcy5oYXMobm9kZSkpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgdGhpcy52aXNpdGVkUHJvdmlkZXJDbGFzc2VzLmFkZChub2RlKTtcblxuICAgIGNvbnN0IHNvdXJjZUZpbGUgPSBub2RlLmdldFNvdXJjZUZpbGUoKTtcblxuICAgIC8vIFdlIGNhbm5vdCBtaWdyYXRlIHByb3ZpZGVyIGNsYXNzZXMgb3V0c2lkZSBvZiBzb3VyY2UgZmlsZXMuIFRoaXMgaXMgYmVjYXVzZSB0aGVcbiAgICAvLyBtaWdyYXRpb24gZm9yIHRoaXJkLXBhcnR5IGxpYnJhcnkgZmlsZXMgc2hvdWxkIGhhcHBlbiBpbiBcIm5nY2NcIiwgYW5kIGluIGdlbmVyYWxcbiAgICAvLyB3b3VsZCBhbHNvIGludm9sdmUgbWV0YWRhdGEgcGFyc2luZy5cbiAgICBpZiAoc291cmNlRmlsZS5pc0RlY2xhcmF0aW9uRmlsZSkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIGNvbnN0IG5nRGVjb3JhdG9ycyA9XG4gICAgICAgIG5vZGUuZGVjb3JhdG9ycyA/IGdldEFuZ3VsYXJEZWNvcmF0b3JzKHRoaXMudHlwZUNoZWNrZXIsIG5vZGUuZGVjb3JhdG9ycykgOiBudWxsO1xuXG4gICAgaWYgKG5nRGVjb3JhdG9ycyAhPT0gbnVsbCAmJlxuICAgICAgICBuZ0RlY29yYXRvcnMuc29tZShkID0+IE5PX01JR1JBVEVfREVDT1JBVE9SUy5pbmRleE9mKGQubmFtZSkgIT09IC0xKSkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIGNvbnN0IHVwZGF0ZVJlY29yZGVyID0gdGhpcy5nZXRVcGRhdGVSZWNvcmRlcihzb3VyY2VGaWxlKTtcbiAgICBjb25zdCBpbXBvcnRFeHByID1cbiAgICAgICAgdGhpcy5pbXBvcnRNYW5hZ2VyLmFkZEltcG9ydFRvU291cmNlRmlsZShzb3VyY2VGaWxlLCAnSW5qZWN0YWJsZScsICdAYW5ndWxhci9jb3JlJyk7XG4gICAgY29uc3QgbmV3RGVjb3JhdG9yRXhwciA9IHRzLmNyZWF0ZURlY29yYXRvcih0cy5jcmVhdGVDYWxsKGltcG9ydEV4cHIsIHVuZGVmaW5lZCwgdW5kZWZpbmVkKSk7XG4gICAgY29uc3QgbmV3RGVjb3JhdG9yVGV4dCA9XG4gICAgICAgIHRoaXMucHJpbnRlci5wcmludE5vZGUodHMuRW1pdEhpbnQuVW5zcGVjaWZpZWQsIG5ld0RlY29yYXRvckV4cHIsIHNvdXJjZUZpbGUpO1xuXG5cbiAgICAvLyBJbiBjYXNlIHRoZSBjbGFzcyBpcyBhbHJlYWR5IGRlY29yYXRlZCB3aXRoIFwiQEluamVjdCguLilcIiwgd2UgcmVwbGFjZSB0aGUgXCJASW5qZWN0XCJcbiAgICAvLyBkZWNvcmF0b3Igd2l0aCBcIkBJbmplY3RhYmxlKClcIiBzaW5jZSB1c2luZyBcIkBJbmplY3QoLi4pXCIgb24gYSBjbGFzcyBpcyBhIG5vb3AgYW5kXG4gICAgLy8gbW9zdCBsaWtlbHkgd2FzIG1lYW50IHRvIGJlIFwiQEluamVjdGFibGUoKVwiLlxuICAgIGNvbnN0IGV4aXN0aW5nSW5qZWN0RGVjb3JhdG9yID1cbiAgICAgICAgbmdEZWNvcmF0b3JzICE9PSBudWxsID8gbmdEZWNvcmF0b3JzLmZpbmQoZCA9PiBkLm5hbWUgPT09ICdJbmplY3QnKSA6IG51bGw7XG4gICAgaWYgKGV4aXN0aW5nSW5qZWN0RGVjb3JhdG9yKSB7XG4gICAgICB1cGRhdGVSZWNvcmRlci5yZXBsYWNlRGVjb3JhdG9yKGV4aXN0aW5nSW5qZWN0RGVjb3JhdG9yLm5vZGUsIG5ld0RlY29yYXRvclRleHQsIGNvbnRleHQubmFtZSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHVwZGF0ZVJlY29yZGVyLmFkZENsYXNzRGVjb3JhdG9yKG5vZGUsIG5ld0RlY29yYXRvclRleHQsIGNvbnRleHQubmFtZSk7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIE1pZ3JhdGVzIG9iamVjdCBsaXRlcmFsIHByb3ZpZGVycyB3aGljaCBkbyBub3QgdXNlIFwidXNlVmFsdWVcIiwgXCJ1c2VDbGFzc1wiLFxuICAgKiBcInVzZUV4aXN0aW5nXCIgb3IgXCJ1c2VGYWN0b3J5XCIuIFRoZXNlIHByb3ZpZGVycyBiZWhhdmUgZGlmZmVyZW50bHkgaW4gSXZ5LiBlLmcuXG4gICAqXG4gICAqIGBgYHRzXG4gICAqICAge3Byb3ZpZGU6IFh9IC0+IHtwcm92aWRlOiBYLCB1c2VWYWx1ZTogdW5kZWZpbmVkfSAvLyB0aGlzIGlzIGhvdyBpdCBiZWhhdmVzIGluIFZFXG4gICAqICAge3Byb3ZpZGU6IFh9IC0+IHtwcm92aWRlOiBYLCB1c2VDbGFzczogWH0gLy8gdGhpcyBpcyBob3cgaXQgYmVoYXZlcyBpbiBJdnlcbiAgICogYGBgXG4gICAqXG4gICAqIFRvIGVuc3VyZSBmb3J3YXJkIGNvbXBhdGliaWxpdHksIHdlIG1pZ3JhdGUgdGhlc2UgZW1wdHkgb2JqZWN0IGxpdGVyYWwgcHJvdmlkZXJzXG4gICAqIHRvIGV4cGxpY2l0bHkgdXNlIGB1c2VWYWx1ZTogdW5kZWZpbmVkYC5cbiAgICovXG4gIHByaXZhdGUgX21pZ3JhdGVMaXRlcmFsUHJvdmlkZXJzKGxpdGVyYWxzOiBQcm92aWRlckxpdGVyYWxbXSkge1xuICAgIGZvciAobGV0IHtub2RlLCByZXNvbHZlZFZhbHVlfSBvZiBsaXRlcmFscykge1xuICAgICAgaWYgKHRoaXMudmlzaXRlZFByb3ZpZGVyTGl0ZXJhbHMuaGFzKG5vZGUpKSB7XG4gICAgICAgIGNvbnRpbnVlO1xuICAgICAgfVxuICAgICAgdGhpcy52aXNpdGVkUHJvdmlkZXJMaXRlcmFscy5hZGQobm9kZSk7XG5cbiAgICAgIGlmICghcmVzb2x2ZWRWYWx1ZSB8fCAhKHJlc29sdmVkVmFsdWUgaW5zdGFuY2VvZiBNYXApIHx8ICFyZXNvbHZlZFZhbHVlLmhhcygncHJvdmlkZScpIHx8XG4gICAgICAgICAgcmVzb2x2ZWRWYWx1ZS5oYXMoJ3VzZUNsYXNzJykgfHwgcmVzb2x2ZWRWYWx1ZS5oYXMoJ3VzZVZhbHVlJykgfHxcbiAgICAgICAgICByZXNvbHZlZFZhbHVlLmhhcygndXNlRXhpc3RpbmcnKSB8fCByZXNvbHZlZFZhbHVlLmhhcygndXNlRmFjdG9yeScpKSB7XG4gICAgICAgIGNvbnRpbnVlO1xuICAgICAgfVxuXG4gICAgICBjb25zdCBzb3VyY2VGaWxlID0gbm9kZS5nZXRTb3VyY2VGaWxlKCk7XG4gICAgICBjb25zdCBuZXdPYmplY3RMaXRlcmFsID0gdHMudXBkYXRlT2JqZWN0TGl0ZXJhbChcbiAgICAgICAgICBub2RlLCBub2RlLnByb3BlcnRpZXMuY29uY2F0KFxuICAgICAgICAgICAgICAgICAgICB0cy5jcmVhdGVQcm9wZXJ0eUFzc2lnbm1lbnQoJ3VzZVZhbHVlJywgdHMuY3JlYXRlSWRlbnRpZmllcigndW5kZWZpbmVkJykpKSk7XG5cbiAgICAgIHRoaXMuZ2V0VXBkYXRlUmVjb3JkZXIoc291cmNlRmlsZSlcbiAgICAgICAgICAudXBkYXRlT2JqZWN0TGl0ZXJhbChcbiAgICAgICAgICAgICAgbm9kZSwgdGhpcy5wcmludGVyLnByaW50Tm9kZSh0cy5FbWl0SGludC5VbnNwZWNpZmllZCwgbmV3T2JqZWN0TGl0ZXJhbCwgc291cmNlRmlsZSkpO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBWaXNpdHMgdGhlIGdpdmVuIHJlc29sdmVkIHZhbHVlIG9mIGEgcHJvdmlkZXIuIFByb3ZpZGVycyBjYW4gYmUgbmVzdGVkIGluXG4gICAqIGFycmF5cyBhbmQgd2UgbmVlZCB0byByZWN1cnNpdmVseSB3YWxrIHRocm91Z2ggdGhlIHByb3ZpZGVycyB0byBiZSBhYmxlIHRvXG4gICAqIG1pZ3JhdGUgYWxsIHJlZmVyZW5jZWQgcHJvdmlkZXIgY2xhc3Nlcy4gZS5nLiBcInByb3ZpZGVyczogW1tBLCBbQl1dXVwiLlxuICAgKi9cbiAgcHJpdmF0ZSBfdmlzaXRQcm92aWRlclJlc29sdmVkVmFsdWUodmFsdWU6IFJlc29sdmVkVmFsdWUsIG1vZHVsZTogUmVzb2x2ZWROZ01vZHVsZSk6XG4gICAgICBBbmFseXNpc0ZhaWx1cmVbXSB7XG4gICAgaWYgKHZhbHVlIGluc3RhbmNlb2YgUmVmZXJlbmNlICYmIHRzLmlzQ2xhc3NEZWNsYXJhdGlvbih2YWx1ZS5ub2RlKSkge1xuICAgICAgdGhpcy5taWdyYXRlUHJvdmlkZXJDbGFzcyh2YWx1ZS5ub2RlLCBtb2R1bGUpO1xuICAgIH0gZWxzZSBpZiAodmFsdWUgaW5zdGFuY2VvZiBNYXApIHtcbiAgICAgIC8vIElmIGEgXCJDbGFzc1Byb3ZpZGVyXCIgaGFzIHRoZSBcImRlcHNcIiBwcm9wZXJ0eSBzZXQsIHRoZW4gd2UgZG8gbm90IG5lZWQgdG9cbiAgICAgIC8vIGRlY29yYXRlIHRoZSBjbGFzcy4gVGhpcyBpcyBiZWNhdXNlIHRoZSBjbGFzcyBpcyBpbnN0YW50aWF0ZWQgdGhyb3VnaCB0aGVcbiAgICAgIC8vIHNwZWNpZmllZCBcImRlcHNcIiBhbmQgdGhlIGNsYXNzIGRvZXMgbm90IG5lZWQgYSBmYWN0b3J5IGRlZmluaXRpb24uXG4gICAgICBpZiAodmFsdWUuaGFzKCdwcm92aWRlJykgJiYgdmFsdWUuaGFzKCd1c2VDbGFzcycpICYmIHZhbHVlLmdldCgnZGVwcycpID09IG51bGwpIHtcbiAgICAgICAgcmV0dXJuIHRoaXMuX3Zpc2l0UHJvdmlkZXJSZXNvbHZlZFZhbHVlKHZhbHVlLmdldCgndXNlQ2xhc3MnKSAhLCBtb2R1bGUpO1xuICAgICAgfVxuICAgIH0gZWxzZSBpZiAoQXJyYXkuaXNBcnJheSh2YWx1ZSkpIHtcbiAgICAgIHJldHVybiB2YWx1ZS5yZWR1Y2UoKHJlcywgdikgPT4gcmVzLmNvbmNhdCh0aGlzLl92aXNpdFByb3ZpZGVyUmVzb2x2ZWRWYWx1ZSh2LCBtb2R1bGUpKSwgW1xuICAgICAgXSBhcyBBbmFseXNpc0ZhaWx1cmVbXSk7XG4gICAgfSBlbHNlIGlmICh2YWx1ZSBpbnN0YW5jZW9mIER5bmFtaWNWYWx1ZSkge1xuICAgICAgcmV0dXJuIFt7bm9kZTogdmFsdWUubm9kZSwgbWVzc2FnZTogYFByb3ZpZGVyIGlzIG5vdCBzdGF0aWNhbGx5IGFuYWx5emFibGUuYH1dO1xuICAgIH1cbiAgICByZXR1cm4gW107XG4gIH1cbn1cbiJdfQ==