/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/core/schematics/migrations/static-queries", ["require", "exports", "@angular-devkit/schematics", "path", "rxjs", "typescript", "@angular/core/schematics/utils/ng_component_template", "@angular/core/schematics/utils/project_tsconfig_paths", "@angular/core/schematics/utils/typescript/compiler_host", "@angular/core/schematics/migrations/static-queries/angular/ng_query_visitor", "@angular/core/schematics/migrations/static-queries/strategies/template_strategy/template_strategy", "@angular/core/schematics/migrations/static-queries/strategies/test_strategy/test_strategy", "@angular/core/schematics/migrations/static-queries/strategies/usage_strategy/usage_strategy", "@angular/core/schematics/migrations/static-queries/transform"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const schematics_1 = require("@angular-devkit/schematics");
    const path_1 = require("path");
    const rxjs_1 = require("rxjs");
    const ts = require("typescript");
    const ng_component_template_1 = require("@angular/core/schematics/utils/ng_component_template");
    const project_tsconfig_paths_1 = require("@angular/core/schematics/utils/project_tsconfig_paths");
    const compiler_host_1 = require("@angular/core/schematics/utils/typescript/compiler_host");
    const ng_query_visitor_1 = require("@angular/core/schematics/migrations/static-queries/angular/ng_query_visitor");
    const template_strategy_1 = require("@angular/core/schematics/migrations/static-queries/strategies/template_strategy/template_strategy");
    const test_strategy_1 = require("@angular/core/schematics/migrations/static-queries/strategies/test_strategy/test_strategy");
    const usage_strategy_1 = require("@angular/core/schematics/migrations/static-queries/strategies/usage_strategy/usage_strategy");
    const transform_1 = require("@angular/core/schematics/migrations/static-queries/transform");
    var SELECTED_STRATEGY;
    (function (SELECTED_STRATEGY) {
        SELECTED_STRATEGY[SELECTED_STRATEGY["TEMPLATE"] = 0] = "TEMPLATE";
        SELECTED_STRATEGY[SELECTED_STRATEGY["USAGE"] = 1] = "USAGE";
        SELECTED_STRATEGY[SELECTED_STRATEGY["TESTS"] = 2] = "TESTS";
    })(SELECTED_STRATEGY || (SELECTED_STRATEGY = {}));
    /** Entry point for the V8 static-query migration. */
    function default_1() {
        return (tree, context) => {
            // We need to cast the returned "Observable" to "any" as there is a
            // RxJS version mismatch that breaks the TS compilation.
            return rxjs_1.from(runMigration(tree, context).then(() => tree));
        };
    }
    exports.default = default_1;
    /** Runs the V8 migration static-query migration for all determined TypeScript projects. */
    function runMigration(tree, context) {
        return __awaiter(this, void 0, void 0, function* () {
            const { buildPaths, testPaths } = project_tsconfig_paths_1.getProjectTsConfigPaths(tree);
            const basePath = process.cwd();
            const logger = context.logger;
            if (!buildPaths.length && !testPaths.length) {
                throw new schematics_1.SchematicsException('Could not find any tsconfig file. Cannot migrate queries ' +
                    'to add static flag.');
            }
            const analyzedFiles = new Set();
            const buildProjects = new Set();
            const failures = [];
            const strategy = process.env['NG_STATIC_QUERY_USAGE_STRATEGY'] === 'true' ?
                SELECTED_STRATEGY.USAGE :
                SELECTED_STRATEGY.TEMPLATE;
            for (const tsconfigPath of buildPaths) {
                const project = analyzeProject(tree, tsconfigPath, basePath, analyzedFiles, logger);
                if (project) {
                    buildProjects.add(project);
                }
            }
            if (buildProjects.size) {
                for (let project of Array.from(buildProjects.values())) {
                    failures.push(...yield runStaticQueryMigration(tree, project, strategy, logger));
                }
            }
            // For the "test" tsconfig projects we always want to use the test strategy as
            // we can't detect the proper timing within spec files.
            for (const tsconfigPath of testPaths) {
                const project = yield analyzeProject(tree, tsconfigPath, basePath, analyzedFiles, logger);
                if (project) {
                    failures.push(...yield runStaticQueryMigration(tree, project, SELECTED_STRATEGY.TESTS, logger));
                }
            }
            if (failures.length) {
                logger.info('');
                logger.info('Some queries could not be migrated automatically. Please go');
                logger.info('through these manually and apply the appropriate timing.');
                logger.info('For more info on how to choose a flag, please see: ');
                logger.info('https://v8.angular.io/guide/static-query-migration');
                failures.forEach(failure => logger.warn(`⮑   ${failure}`));
            }
        });
    }
    /**
     * Analyzes the given TypeScript project by looking for queries that need to be
     * migrated. In case there are no queries that can be migrated, null is returned.
     */
    function analyzeProject(tree, tsconfigPath, basePath, analyzedFiles, logger) {
        const { program, host } = compiler_host_1.createMigrationProgram(tree, tsconfigPath, basePath);
        const syntacticDiagnostics = program.getSyntacticDiagnostics();
        // Syntactic TypeScript errors can throw off the query analysis and therefore we want
        // to notify the developer that we couldn't analyze parts of the project. Developers
        // can just re-run the migration after fixing these failures.
        if (syntacticDiagnostics.length) {
            logger.warn(`\nTypeScript project "${tsconfigPath}" has syntactical errors which could cause ` +
                `an incomplete migration. Please fix the following failures and rerun the migration:`);
            logger.error(ts.formatDiagnostics(syntacticDiagnostics, host));
            logger.info('Migration can be rerun with: "ng update @angular/core --from 7 --to 8 --migrate-only"\n');
        }
        const typeChecker = program.getTypeChecker();
        const sourceFiles = program.getSourceFiles().filter(f => !f.isDeclarationFile && !program.isSourceFileFromExternalLibrary(f));
        const queryVisitor = new ng_query_visitor_1.NgQueryResolveVisitor(typeChecker);
        // Analyze all project source-files and collect all queries that
        // need to be migrated.
        sourceFiles.forEach(sourceFile => {
            const relativePath = path_1.relative(basePath, sourceFile.fileName);
            // Only look for queries within the current source files if the
            // file has not been analyzed before.
            if (!analyzedFiles.has(relativePath)) {
                analyzedFiles.add(relativePath);
                queryVisitor.visitNode(sourceFile);
            }
        });
        if (queryVisitor.resolvedQueries.size === 0) {
            return null;
        }
        return { program, host, tsconfigPath, typeChecker, basePath, queryVisitor, sourceFiles };
    }
    /**
     * Runs the static query migration for the given project. The schematic analyzes all
     * queries within the project and sets up the query timing based on the current usage
     * of the query property. e.g. a view query that is not used in any lifecycle hook does
     * not need to be static and can be set up with "static: false".
     */
    function runStaticQueryMigration(tree, project, selectedStrategy, logger) {
        return __awaiter(this, void 0, void 0, function* () {
            const { sourceFiles, typeChecker, host, queryVisitor, tsconfigPath, basePath } = project;
            const printer = ts.createPrinter();
            const failureMessages = [];
            const templateVisitor = new ng_component_template_1.NgComponentTemplateVisitor(typeChecker);
            // If the "usage" strategy is selected, we also need to add the query visitor
            // to the analysis visitors so that query usage in templates can be also checked.
            if (selectedStrategy === SELECTED_STRATEGY.USAGE) {
                sourceFiles.forEach(s => templateVisitor.visitNode(s));
            }
            const { resolvedQueries, classMetadata } = queryVisitor;
            const { resolvedTemplates } = templateVisitor;
            if (selectedStrategy === SELECTED_STRATEGY.USAGE) {
                // Add all resolved templates to the class metadata if the usage strategy is used. This
                // is necessary in order to be able to check component templates for static query usage.
                resolvedTemplates.forEach(template => {
                    if (classMetadata.has(template.container)) {
                        classMetadata.get(template.container).template = template;
                    }
                });
            }
            let strategy;
            if (selectedStrategy === SELECTED_STRATEGY.USAGE) {
                strategy = new usage_strategy_1.QueryUsageStrategy(classMetadata, typeChecker);
            }
            else if (selectedStrategy === SELECTED_STRATEGY.TESTS) {
                strategy = new test_strategy_1.QueryTestStrategy();
            }
            else {
                strategy = new template_strategy_1.QueryTemplateStrategy(tsconfigPath, classMetadata, host);
            }
            try {
                strategy.setup();
            }
            catch (e) {
                if (selectedStrategy === SELECTED_STRATEGY.TEMPLATE) {
                    logger.warn(`\nThe template migration strategy uses the Angular compiler ` +
                        `internally and therefore projects that no longer build successfully after ` +
                        `the update cannot use the template migration strategy. Please ensure ` +
                        `there are no AOT compilation errors.\n`);
                }
                // In case the strategy could not be set up properly, we just exit the
                // migration. We don't want to throw an exception as this could mean
                // that other migrations are interrupted.
                logger.warn(`Could not setup migration strategy for "${project.tsconfigPath}". The ` +
                    `following error has been reported:\n`);
                logger.error(`${e.toString()}\n`);
                logger.info('Migration can be rerun with: "ng update @angular/core --from 7 --to 8 --migrate-only"\n');
                return [];
            }
            // Walk through all source files that contain resolved queries and update
            // the source files if needed. Note that we need to update multiple queries
            // within a source file within the same recorder in order to not throw off
            // the TypeScript node offsets.
            resolvedQueries.forEach((queries, sourceFile) => {
                const relativePath = path_1.relative(basePath, sourceFile.fileName);
                const update = tree.beginUpdate(relativePath);
                // Compute the query timing for all resolved queries and update the
                // query definitions to explicitly set the determined query timing.
                queries.forEach(q => {
                    const queryExpr = q.decorator.node.expression;
                    const { timing, message } = strategy.detectTiming(q);
                    const result = transform_1.getTransformedQueryCallExpr(q, timing, !!message);
                    if (!result) {
                        return;
                    }
                    const newText = printer.printNode(ts.EmitHint.Unspecified, result.node, sourceFile);
                    // Replace the existing query decorator call expression with the updated
                    // call expression node.
                    update.remove(queryExpr.getStart(), queryExpr.getWidth());
                    update.insertRight(queryExpr.getStart(), newText);
                    if (result.failureMessage || message) {
                        const { line, character } = ts.getLineAndCharacterOfPosition(sourceFile, q.decorator.node.getStart());
                        failureMessages.push(`${relativePath}@${line + 1}:${character + 1}: ${result.failureMessage || message}`);
                    }
                });
                tree.commitUpdate(update);
            });
            return failureMessages;
        });
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NjaGVtYXRpY3MvbWlncmF0aW9ucy9zdGF0aWMtcXVlcmllcy9pbmRleC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztJQUdILDJEQUE2RjtJQUM3RiwrQkFBOEI7SUFDOUIsK0JBQTBCO0lBQzFCLGlDQUFpQztJQUVqQyxnR0FBNkU7SUFDN0Usa0dBQTJFO0lBQzNFLDJGQUE0RTtJQUU1RSxrSEFBaUU7SUFDakUseUlBQXVGO0lBQ3ZGLDZIQUEyRTtJQUUzRSxnSUFBOEU7SUFDOUUsNEZBQXdEO0lBRXhELElBQUssaUJBSUo7SUFKRCxXQUFLLGlCQUFpQjtRQUNwQixpRUFBUSxDQUFBO1FBQ1IsMkRBQUssQ0FBQTtRQUNMLDJEQUFLLENBQUE7SUFDUCxDQUFDLEVBSkksaUJBQWlCLEtBQWpCLGlCQUFpQixRQUlyQjtJQVlELHFEQUFxRDtJQUNyRDtRQUNFLE9BQU8sQ0FBQyxJQUFVLEVBQUUsT0FBeUIsRUFBRSxFQUFFO1lBQy9DLG1FQUFtRTtZQUNuRSx3REFBd0Q7WUFDeEQsT0FBTyxXQUFJLENBQUMsWUFBWSxDQUFDLElBQUksRUFBRSxPQUFPLENBQUMsQ0FBQyxJQUFJLENBQUMsR0FBRyxFQUFFLENBQUMsSUFBSSxDQUFDLENBQVEsQ0FBQztRQUNuRSxDQUFDLENBQUM7SUFDSixDQUFDO0lBTkQsNEJBTUM7SUFFRCwyRkFBMkY7SUFDM0YsU0FBZSxZQUFZLENBQUMsSUFBVSxFQUFFLE9BQXlCOztZQUMvRCxNQUFNLEVBQUMsVUFBVSxFQUFFLFNBQVMsRUFBQyxHQUFHLGdEQUF1QixDQUFDLElBQUksQ0FBQyxDQUFDO1lBQzlELE1BQU0sUUFBUSxHQUFHLE9BQU8sQ0FBQyxHQUFHLEVBQUUsQ0FBQztZQUMvQixNQUFNLE1BQU0sR0FBRyxPQUFPLENBQUMs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TSxDQUFDLGNBQWMsSUFBSSxPQUFPLEVBQUUsQ0FBQyxDQUFDO3FCQUMxRjtnQkFDSCxDQUFDLENBQUMsQ0FBQztnQkFFSCxJQUFJLENBQUMsWUFBWSxDQUFDLE1BQU0sQ0FBQyxDQUFDO1lBQzVCLENBQUMsQ0FBQyxDQUFDO1lBRUgsT0FBTyxlQUFlLENBQUM7UUFDekIsQ0FBQztLQUFBIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7bG9nZ2luZ30gZnJvbSAnQGFuZ3VsYXItZGV2a2l0L2NvcmUnO1xuaW1wb3J0IHtSdWxlLCBTY2hlbWF0aWNDb250ZXh0LCBTY2hlbWF0aWNzRXhjZXB0aW9uLCBUcmVlfSBmcm9tICdAYW5ndWxhci1kZXZraXQvc2NoZW1hdGljcyc7XG5pbXBvcnQge3JlbGF0aXZlfSBmcm9tICdwYXRoJztcbmltcG9ydCB7ZnJvbX0gZnJvbSAncnhqcyc7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtOZ0NvbXBvbmVudFRlbXBsYXRlVmlzaXRvcn0gZnJvbSAnLi4vLi4vdXRpbHMvbmdfY29tcG9uZW50X3RlbXBsYXRlJztcbmltcG9ydCB7Z2V0UHJvamVjdFRzQ29uZmlnUGF0aHN9IGZyb20gJy4uLy4uL3V0aWxzL3Byb2plY3RfdHNjb25maWdfcGF0aHMnO1xuaW1wb3J0IHtjcmVhdGVNaWdyYXRpb25Qcm9ncmFtfSBmcm9tICcuLi8uLi91dGlscy90eXBlc2NyaXB0L2NvbXBpbGVyX2hvc3QnO1xuXG5pbXBvcnQge05nUXVlcnlSZXNvbHZlVmlzaXRvcn0gZnJvbSAnLi9hbmd1bGFyL25nX3F1ZXJ5X3Zpc2l0b3InO1xuaW1wb3J0IHtRdWVyeVRlbXBsYXRlU3RyYXRlZ3l9IGZyb20gJy4vc3RyYXRlZ2llcy90ZW1wbGF0ZV9zdHJhdGVneS90ZW1wbGF0ZV9zdHJhdGVneSc7XG5pbXBvcnQge1F1ZXJ5VGVzdFN0cmF0ZWd5fSBmcm9tICcuL3N0cmF0ZWdpZXMvdGVzdF9zdHJhdGVneS90ZXN0X3N0cmF0ZWd5JztcbmltcG9ydCB7VGltaW5nU3RyYXRlZ3l9IGZyb20gJy4vc3RyYXRlZ2llcy90aW1pbmctc3RyYXRlZ3knO1xuaW1wb3J0IHtRdWVyeVVzYWdlU3RyYXRlZ3l9IGZyb20gJy4vc3RyYXRlZ2llcy91c2FnZV9zdHJhdGVneS91c2FnZV9zdHJhdGVneSc7XG5pbXBvcnQge2dldFRyYW5zZm9ybWVkUXVlcnlDYWxsRXhwcn0gZnJvbSAnLi90cmFuc2Zvcm0nO1xuXG5lbnVtIFNFTEVDVEVEX1NUUkFURUdZIHtcbiAgVEVNUExBVEUsXG4gIFVTQUdFLFxuICBURVNUUyxcbn1cblxuaW50ZXJmYWNlIEFuYWx5emVkUHJvamVjdCB7XG4gIHByb2dyYW06IHRzLlByb2dyYW07XG4gIGhvc3Q6IHRzLkNvbXBpbGVySG9zdDtcbiAgcXVlcnlWaXNpdG9yOiBOZ1F1ZXJ5UmVzb2x2ZVZpc2l0b3I7XG4gIHNvdXJjZUZpbGVzOiB0cy5Tb3VyY2VGaWxlW107XG4gIGJhc2VQYXRoOiBzdHJpbmc7XG4gIHR5cGVDaGVja2VyOiB0cy5UeXBlQ2hlY2tlcjtcbiAgdHNjb25maWdQYXRoOiBzdHJpbmc7XG59XG5cbi8qKiBFbnRyeSBwb2ludCBmb3IgdGhlIFY4IHN0YXRpYy1xdWVyeSBtaWdyYXRpb24uICovXG5leHBvcnQgZGVmYXVsdCBmdW5jdGlvbigpOiBSdWxlIHtcbiAgcmV0dXJuICh0cmVlOiBUcmVlLCBjb250ZXh0OiBTY2hlbWF0aWNDb250ZXh0KSA9PiB7XG4gICAgLy8gV2UgbmVlZCB0byBjYXN0IHRoZSByZXR1cm5lZCBcIk9ic2VydmFibGVcIiB0byBcImFueVwiIGFzIHRoZXJlIGlzIGFcbiAgICAvLyBSeEpTIHZlcnNpb24gbWlzbWF0Y2ggdGhhdCBicmVha3MgdGhlIFRTIGNvbXBpbGF0aW9uLlxuICAgIHJldHVybiBmcm9tKHJ1bk1pZ3JhdGlvbih0cmVlLCBjb250ZXh0KS50aGVuKCgpID0+IHRyZWUpKSBhcyBhbnk7XG4gIH07XG59XG5cbi8qKiBSdW5zIHRoZSBWOCBtaWdyYXRpb24gc3RhdGljLXF1ZXJ5IG1pZ3JhdGlvbiBmb3IgYWxsIGRldGVybWluZWQgVHlwZVNjcmlwdCBwcm9qZWN0cy4gKi9cbmFzeW5jIGZ1bmN0aW9uIHJ1bk1pZ3JhdGlvbih0cmVlOiBUcmVlLCBjb250ZXh0OiBTY2hlbWF0aWNDb250ZXh0KSB7XG4gIGNvbnN0IHtidWlsZFBhdGhzLCB0ZXN0UGF0aHN9ID0gZ2V0UHJvamVjdFRzQ29uZmlnUGF0aHModHJlZSk7XG4gIGNvbnN0IGJhc2VQYXRoID0gcHJvY2Vzcy5jd2QoKTtcbiAgY29uc3QgbG9nZ2VyID0gY29udGV4dC5sb2dnZXI7XG5cbiAgaWYgKCFidWlsZFBhdGhzLmxlbmd0aCAmJiAhdGVzdFBhdGhzLmxlbmd0aCkge1xuICAgIHRocm93IG5ldyBTY2hlbWF0aWNzRXhjZXB0aW9uKFxuICAgICAgICAnQ291bGQgbm90IGZpbmQgYW55IHRzY29uZmlnIGZpbGUuIENhbm5vdCBtaWdyYXRlIHF1ZXJpZXMgJyArXG4gICAgICAgICd0byBhZGQgc3RhdGljIGZsYWcuJyk7XG4gIH1cblxuICBjb25zdCBhbmFseXplZEZpbGVzID0gbmV3IFNldDxzdHJpbmc+KCk7XG4gIGNvbnN0IGJ1aWxkUHJvamVjdHMgPSBuZXcgU2V0PEFuYWx5emVkUHJvamVjdD4oKTtcbiAgY29uc3QgZmFpbHVyZXMgPSBbXTtcbiAgY29uc3Qgc3RyYXRlZ3kgPSBwcm9jZXNzLmVudlsnTkdfU1RBVElDX1FVRVJZX1VTQUdFX1NUUkFURUdZJ10gPT09ICd0cnVlJyA/XG4gICAgICBTRUxFQ1RFRF9TVFJBVEVHWS5VU0FHRSA6XG4gICAgICBTRUxFQ1RFRF9TVFJBVEVHWS5URU1QTEFURTtcblxuICBmb3IgKGNvbnN0IHRzY29uZmlnUGF0aCBvZiBidWlsZFBhdGhzKSB7XG4gICAgY29uc3QgcHJvamVjdCA9IGFuYWx5emVQcm9qZWN0KHRyZWUsIHRzY29uZmlnUGF0aCwgYmFzZVBhdGgsIGFuYWx5emVkRmlsZXMsIGxvZ2dlcik7XG4gICAgaWYgKHByb2plY3QpIHtcbiAgICAgIGJ1aWxkUHJvamVjdHMuYWRkKHByb2plY3QpO1xuICAgIH1cbiAgfVxuXG4gIGlmIChidWlsZFByb2plY3RzLnNpemUpIHtcbiAgICBmb3IgKGxldCBwcm9qZWN0IG9mIEFycmF5LmZyb20oYnVpbGRQcm9qZWN0cy52YWx1ZXMoKSkpIHtcbiAgICAgIGZhaWx1cmVzLnB1c2goLi4uYXdhaXQgcnVuU3RhdGljUXVlcnlNaWdyYXRpb24odHJlZSwgcHJvamVjdCwgc3RyYXRlZ3ksIGxvZ2dlcikpO1xuICAgIH1cbiAgfVxuXG4gIC8vIEZvciB0aGUgXCJ0ZXN0XCIgdHNjb25maWcgcHJvamVjdHMgd2UgYWx3YXlzIHdhbnQgdG8gdXNlIHRoZSB0ZXN0IHN0cmF0ZWd5IGFzXG4gIC8vIHdlIGNhbid0IGRldGVjdCB0aGUgcHJvcGVyIHRpbWluZyB3aXRoaW4gc3BlYyBmaWxlcy5cbiAgZm9yIChjb25zdCB0c2NvbmZpZ1BhdGggb2YgdGVzdFBhdGhzKSB7XG4gICAgY29uc3QgcHJvamVjdCA9IGF3YWl0IGFuYWx5emVQcm9qZWN0KHRyZWUsIHRzY29uZmlnUGF0aCwgYmFzZVBhdGgsIGFuYWx5emVkRmlsZXMsIGxvZ2dlcik7XG4gICAgaWYgKHByb2plY3QpIHtcbiAgICAgIGZhaWx1cmVzLnB1c2goXG4gICAgICAgICAgLi4uYXdhaXQgcnVuU3RhdGljUXVlcnlNaWdyYXRpb24odHJlZSwgcHJvamVjdCwgU0VMRUNURURfU1RSQVRFR1kuVEVTVFMsIGxvZ2dlcikpO1xuICAgIH1cbiAgfVxuXG4gIGlmIChmYWlsdXJlcy5sZW5ndGgpIHtcbiAgICBsb2dnZXIuaW5mbygnJyk7XG4gICAgbG9nZ2VyLmluZm8oJ1NvbWUgcXVlcmllcyBjb3VsZCBub3QgYmUgbWlncmF0ZWQgYXV0b21hdGljYWxseS4gUGxlYXNlIGdvJyk7XG4gICAgbG9nZ2VyLmluZm8oJ3Rocm91Z2ggdGhlc2UgbWFudWFsbHkgYW5kIGFwcGx5IHRoZSBhcHByb3ByaWF0ZSB0aW1pbmcuJyk7XG4gICAgbG9nZ2VyLmluZm8oJ0ZvciBtb3JlIGluZm8gb24gaG93IHRvIGNob29zZSBhIGZsYWcsIHBsZWFzZSBzZWU6ICcpO1xuICAgIGxvZ2dlci5pbmZvKCdodHRwczovL3Y4LmFuZ3VsYXIuaW8vZ3VpZGUvc3RhdGljLXF1ZXJ5LW1pZ3JhdGlvbicpO1xuICAgIGZhaWx1cmVzLmZvckVhY2goZmFpbHVyZSA9PiBsb2dnZXIud2Fybihg4q6RICAgJHtmYWlsdXJlfWApKTtcbiAgfVxufVxuXG4vKipcbiAqIEFuYWx5emVzIHRoZSBnaXZlbiBUeXBlU2NyaXB0IHByb2plY3QgYnkgbG9va2luZyBmb3IgcXVlcmllcyB0aGF0IG5lZWQgdG8gYmVcbiAqIG1pZ3JhdGVkLiBJbiBjYXNlIHRoZXJlIGFyZSBubyBxdWVyaWVzIHRoYXQgY2FuIGJlIG1pZ3JhdGVkLCBudWxsIGlzIHJldHVybmVkLlxuICovXG5mdW5jdGlvbiBhbmFseXplUHJvamVjdChcbiAgICB0cmVlOiBUcmVlLCB0c2NvbmZpZ1BhdGg6IHN0cmluZywgYmFzZVBhdGg6IHN0cmluZywgYW5hbHl6ZWRGaWxlczogU2V0PHN0cmluZz4sXG4gICAgbG9nZ2VyOiBsb2dnaW5nLkxvZ2dlckFwaSk6IEFuYWx5emVkUHJvamVjdHxudWxsIHtcbiAgY29uc3Qge3Byb2dyYW0sIGhvc3R9ID0gY3JlYXRlTWlncmF0aW9uUHJvZ3JhbSh0cmVlLCB0c2NvbmZpZ1BhdGgsIGJhc2VQYXRoKTtcbiAgY29uc3Qgc3ludGFjdGljRGlhZ25vc3RpY3MgPSBwcm9ncmFtLmdldFN5bnRhY3RpY0RpYWdub3N0aWNzKCk7XG5cbiAgLy8gU3ludGFjdGljIFR5cGVTY3JpcHQgZXJyb3JzIGNhbiB0aHJvdyBvZmYgdGhlIHF1ZXJ5IGFuYWx5c2lzIGFuZCB0aGVyZWZvcmUgd2Ugd2FudFxuICAvLyB0byBub3RpZnkgdGhlIGRldmVsb3BlciB0aGF0IHdlIGNvdWxkbid0IGFuYWx5emUgcGFydHMgb2YgdGhlIHByb2plY3QuIERldmVsb3BlcnNcbiAgLy8gY2FuIGp1c3QgcmUtcnVuIHRoZSBtaWdyYXRpb24gYWZ0ZXIgZml4aW5nIHRoZXNlIGZhaWx1cmVzLlxuICBpZiAoc3ludGFjdGljRGlhZ25vc3RpY3MubGVuZ3RoKSB7XG4gICAgbG9nZ2VyLndhcm4oXG4gICAgICAgIGBcXG5UeXBlU2NyaXB0IHByb2plY3QgXCIke3RzY29uZmlnUGF0aH1cIiBoYXMgc3ludGFjdGljYWwgZXJyb3JzIHdoaWNoIGNvdWxkIGNhdXNlIGAgK1xuICAgICAgICBgYW4gaW5jb21wbGV0ZSBtaWdyYXRpb24uIFBsZWFzZSBmaXggdGhlIGZvbGxvd2luZyBmYWlsdXJlcyBhbmQgcmVydW4gdGhlIG1pZ3JhdGlvbjpgKTtcbiAgICBsb2dnZXIuZXJyb3IodHMuZm9ybWF0RGlhZ25vc3RpY3Moc3ludGFjdGljRGlhZ25vc3RpY3MsIGhvc3QpKTtcbiAgICBsb2dnZXIuaW5mbyhcbiAgICAgICAgJ01pZ3JhdGlvbiBjYW4gYmUgcmVydW4gd2l0aDogXCJuZyB1cGRhdGUgQGFuZ3VsYXIvY29yZSAtLWZyb20gNyAtLXRvIDggLS1taWdyYXRlLW9ubHlcIlxcbicpO1xuICB9XG5cbiAgY29uc3QgdHlwZUNoZWNrZXIgPSBwcm9ncmFtLmdldFR5cGVDaGVja2VyKCk7XG4gIGNvbnN0IHNvdXJjZUZpbGVzID0gcHJvZ3JhbS5nZXRTb3VyY2VGaWxlcygpLmZpbHRlcihcbiAgICAgIGYgPT4gIWYuaXNEZWNsYXJhdGlvbkZpbGUgJiYgIXByb2dyYW0uaXNTb3VyY2VGaWxlRnJvbUV4dGVybmFsTGlicmFyeShmKSk7XG4gIGNvbnN0IHF1ZXJ5VmlzaXRvciA9IG5ldyBOZ1F1ZXJ5UmVzb2x2ZVZpc2l0b3IodHlwZUNoZWNrZXIpO1xuXG4gIC8vIEFuYWx5emUgYWxsIHByb2plY3Qgc291cmNlLWZpbGVzIGFuZCBjb2xsZWN0IGFsbCBxdWVyaWVzIHRoYXRcbiAgLy8gbmVlZCB0byBiZSBtaWdyYXRlZC5cbiAgc291cmNlRmlsZXMuZm9yRWFjaChzb3VyY2VGaWxlID0+IHtcbiAgICBjb25zdCByZWxhdGl2ZVBhdGggPSByZWxhdGl2ZShiYXNlUGF0aCwgc291cmNlRmlsZS5maWxlTmFtZSk7XG5cbiAgICAvLyBPbmx5IGxvb2sgZm9yIHF1ZXJpZXMgd2l0aGluIHRoZSBjdXJyZW50IHNvdXJjZSBmaWxlcyBpZiB0aGVcbiAgICAvLyBmaWxlIGhhcyBub3QgYmVlbiBhbmFseXplZCBiZWZvcmUuXG4gICAgaWYgKCFhbmFseXplZEZpbGVzLmhhcyhyZWxhdGl2ZVBhdGgpKSB7XG4gICAgICBhbmFseXplZEZpbGVzLmFkZChyZWxhdGl2ZVBhdGgpO1xuICAgICAgcXVlcnlWaXNpdG9yLnZpc2l0Tm9kZShzb3VyY2VGaWxlKTtcbiAgICB9XG4gIH0pO1xuXG4gIGlmIChxdWVyeVZpc2l0b3IucmVzb2x2ZWRRdWVyaWVzLnNpemUgPT09IDApIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIHJldHVybiB7cHJvZ3JhbSwgaG9zdCwgdHNjb25maWdQYXRoLCB0eXBlQ2hlY2tlciwgYmFzZVBhdGgsIHF1ZXJ5VmlzaXRvciwgc291cmNlRmlsZXN9O1xufVxuXG4vKipcbiAqIFJ1bnMgdGhlIHN0YXRpYyBxdWVyeSBtaWdyYXRpb24gZm9yIHRoZSBnaXZlbiBwcm9qZWN0LiBUaGUgc2NoZW1hdGljIGFuYWx5emVzIGFsbFxuICogcXVlcmllcyB3aXRoaW4gdGhlIHByb2plY3QgYW5kIHNldHMgdXAgdGhlIHF1ZXJ5IHRpbWluZyBiYXNlZCBvbiB0aGUgY3VycmVudCB1c2FnZVxuICogb2YgdGhlIHF1ZXJ5IHByb3BlcnR5LiBlLmcuIGEgdmlldyBxdWVyeSB0aGF0IGlzIG5vdCB1c2VkIGluIGFueSBsaWZlY3ljbGUgaG9vayBkb2VzXG4gKiBub3QgbmVlZCB0byBiZSBzdGF0aWMgYW5kIGNhbiBiZSBzZXQgdXAgd2l0aCBcInN0YXRpYzogZmFsc2VcIi5cbiAqL1xuYXN5bmMgZnVuY3Rpb24gcnVuU3RhdGljUXVlcnlNaWdyYXRpb24oXG4gICAgdHJlZTogVHJlZSwgcHJvamVjdDogQW5hbHl6ZWRQcm9qZWN0LCBzZWxlY3RlZFN0cmF0ZWd5OiBTRUxFQ1RFRF9TVFJBVEVHWSxcbiAgICBsb2dnZXI6IGxvZ2dpbmcuTG9nZ2VyQXBpKTogUHJvbWlzZTxzdHJpbmdbXT4ge1xuICBjb25zdCB7c291cmNlRmlsZXMsIHR5cGVDaGVja2VyLCBob3N0LCBxdWVyeVZpc2l0b3IsIHRzY29uZmlnUGF0aCwgYmFzZVBhdGh9ID0gcHJvamVjdDtcbiAgY29uc3QgcHJpbnRlciA9IHRzLmNyZWF0ZVByaW50ZXIoKTtcbiAgY29uc3QgZmFpbHVyZU1lc3NhZ2VzOiBzdHJpbmdbXSA9IFtdO1xuICBjb25zdCB0ZW1wbGF0ZVZpc2l0b3IgPSBuZXcgTmdDb21wb25lbnRUZW1wbGF0ZVZpc2l0b3IodHlwZUNoZWNrZXIpO1xuXG4gIC8vIElmIHRoZSBcInVzYWdlXCIgc3RyYXRlZ3kgaXMgc2VsZWN0ZWQsIHdlIGFsc28gbmVlZCB0byBhZGQgdGhlIHF1ZXJ5IHZpc2l0b3JcbiAgLy8gdG8gdGhlIGFuYWx5c2lzIHZpc2l0b3JzIHNvIHRoYXQgcXVlcnkgdXNhZ2UgaW4gdGVtcGxhdGVzIGNhbiBiZSBhbHNvIGNoZWNrZWQuXG4gIGlmIChzZWxlY3RlZFN0cmF0ZWd5ID09PSBTRUxFQ1RFRF9TVFJBVEVHWS5VU0FHRSkge1xuICAgIHNvdXJjZUZpbGVzLmZvckVhY2gocyA9PiB0ZW1wbGF0ZVZpc2l0b3IudmlzaXROb2RlKHMpKTtcbiAgfVxuXG4gIGNvbnN0IHtyZXNvbHZlZFF1ZXJpZXMsIGNsYXNzTWV0YWRhdGF9ID0gcXVlcnlWaXNpdG9yO1xuICBjb25zdCB7cmVzb2x2ZWRUZW1wbGF0ZXN9ID0gdGVtcGxhdGVWaXNpdG9yO1xuXG4gIGlmIChzZWxlY3RlZFN0cmF0ZWd5ID09PSBTRUxFQ1RFRF9TVFJBVEVHWS5VU0FHRSkge1xuICAgIC8vIEFkZCBhbGwgcmVzb2x2ZWQgdGVtcGxhdGVzIHRvIHRoZSBjbGFzcyBtZXRhZGF0YSBpZiB0aGUgdXNhZ2Ugc3RyYXRlZ3kgaXMgdXNlZC4gVGhpc1xuICAgIC8vIGlzIG5lY2Vzc2FyeSBpbiBvcmRlciB0byBiZSBhYmxlIHRvIGNoZWNrIGNvbXBvbmVudCB0ZW1wbGF0ZXMgZm9yIHN0YXRpYyBxdWVyeSB1c2FnZS5cbiAgICByZXNvbHZlZFRlbXBsYXRlcy5mb3JFYWNoKHRlbXBsYXRlID0+IHtcbiAgICAgIGlmIChjbGFzc01ldGFkYXRhLmhhcyh0ZW1wbGF0ZS5jb250YWluZXIpKSB7XG4gICAgICAgIGNsYXNzTWV0YWRhdGEuZ2V0KHRlbXBsYXRlLmNvbnRhaW5lcikhLnRlbXBsYXRlID0gdGVtcGxhdGU7XG4gICAgICB9XG4gICAgfSk7XG4gIH1cblxuICBsZXQgc3RyYXRlZ3k6IFRpbWluZ1N0cmF0ZWd5O1xuICBpZiAoc2VsZWN0ZWRTdHJhdGVneSA9PT0gU0VMRUNURURfU1RSQVRFR1kuVVNBR0UpIHtcbiAgICBzdHJhdGVneSA9IG5ldyBRdWVyeVVzYWdlU3RyYXRlZ3koY2xhc3NNZXRhZGF0YSwgdHlwZUNoZWNrZXIpO1xuICB9IGVsc2UgaWYgKHNlbGVjdGVkU3RyYXRlZ3kgPT09IFNFTEVDVEVEX1NUUkFURUdZLlRFU1RTKSB7XG4gICAgc3RyYXRlZ3kgPSBuZXcgUXVlcnlUZXN0U3RyYXRlZ3koKTtcbiAgfSBlbHNlIHtcbiAgICBzdHJhdGVneSA9IG5ldyBRdWVyeVRlbXBsYXRlU3RyYXRlZ3kodHNjb25maWdQYXRoLCBjbGFzc01ldGFkYXRhLCBob3N0KTtcbiAgfVxuXG4gIHRyeSB7XG4gICAgc3RyYXRlZ3kuc2V0dXAoKTtcbiAgfSBjYXRjaCAoZSkge1xuICAgIGlmIChzZWxlY3RlZFN0cmF0ZWd5ID09PSBTRUxFQ1RFRF9TVFJBVEVHWS5URU1QTEFURSkge1xuICAgICAgbG9nZ2VyLndhcm4oXG4gICAgICAgICAgYFxcblRoZSB0ZW1wbGF0ZSBtaWdyYXRpb24gc3RyYXRlZ3kgdXNlcyB0aGUgQW5ndWxhciBjb21waWxlciBgICtcbiAgICAgICAgICBgaW50ZXJuYWxseSBhbmQgdGhlcmVmb3JlIHByb2plY3RzIHRoYXQgbm8gbG9uZ2VyIGJ1aWxkIHN1Y2Nlc3NmdWxseSBhZnRlciBgICtcbiAgICAgICAgICBgdGhlIHVwZGF0ZSBjYW5ub3QgdXNlIHRoZSB0ZW1wbGF0ZSBtaWdyYXRpb24gc3RyYXRlZ3kuIFBsZWFzZSBlbnN1cmUgYCArXG4gICAgICAgICAgYHRoZXJlIGFyZSBubyBBT1QgY29tcGlsYXRpb24gZXJyb3JzLlxcbmApO1xuICAgIH1cbiAgICAvLyBJbiBjYXNlIHRoZSBzdHJhdGVneSBjb3VsZCBub3QgYmUgc2V0IHVwIHByb3Blcmx5LCB3ZSBqdXN0IGV4aXQgdGhlXG4gICAgLy8gbWlncmF0aW9uLiBXZSBkb24ndCB3YW50IHRvIHRocm93IGFuIGV4Y2VwdGlvbiBhcyB0aGlzIGNvdWxkIG1lYW5cbiAgICAvLyB0aGF0IG90aGVyIG1pZ3JhdGlvbnMgYXJlIGludGVycnVwdGVkLlxuICAgIGxvZ2dlci53YXJuKFxuICAgICAgICBgQ291bGQgbm90IHNldHVwIG1pZ3JhdGlvbiBzdHJhdGVneSBmb3IgXCIke3Byb2plY3QudHNjb25maWdQYXRofVwiLiBUaGUgYCArXG4gICAgICAgIGBmb2xsb3dpbmcgZXJyb3IgaGFzIGJlZW4gcmVwb3J0ZWQ6XFxuYCk7XG4gICAgbG9nZ2VyLmVycm9yKGAke2UudG9TdHJpbmcoKX1cXG5gKTtcbiAgICBsb2dnZXIuaW5mbyhcbiAgICAgICAgJ01pZ3JhdGlvbiBjYW4gYmUgcmVydW4gd2l0aDogXCJuZyB1cGRhdGUgQGFuZ3VsYXIvY29yZSAtLWZyb20gNyAtLXRvIDggLS1taWdyYXRlLW9ubHlcIlxcbicpO1xuICAgIHJldHVybiBbXTtcbiAgfVxuXG4gIC8vIFdhbGsgdGhyb3VnaCBhbGwgc291cmNlIGZpbGVzIHRoYXQgY29udGFpbiByZXNvbHZlZCBxdWVyaWVzIGFuZCB1cGRhdGVcbiAgLy8gdGhlIHNvdXJjZSBmaWxlcyBpZiBuZWVkZWQuIE5vdGUgdGhhdCB3ZSBuZWVkIHRvIHVwZGF0ZSBtdWx0aXBsZSBxdWVyaWVzXG4gIC8vIHdpdGhpbiBhIHNvdXJjZSBmaWxlIHdpdGhpbiB0aGUgc2FtZSByZWNvcmRlciBpbiBvcmRlciB0byBub3QgdGhyb3cgb2ZmXG4gIC8vIHRoZSBUeXBlU2NyaXB0IG5vZGUgb2Zmc2V0cy5cbiAgcmVzb2x2ZWRRdWVyaWVzLmZvckVhY2goKHF1ZXJpZXMsIHNvdXJjZUZpbGUpID0+IHtcbiAgICBjb25zdCByZWxhdGl2ZVBhdGggPSByZWxhdGl2ZShiYXNlUGF0aCwgc291cmNlRmlsZS5maWxlTmFtZSk7XG4gICAgY29uc3QgdXBkYXRlID0gdHJlZS5iZWdpblVwZGF0ZShyZWxhdGl2ZVBhdGgpO1xuXG4gICAgLy8gQ29tcHV0ZSB0aGUgcXVlcnkgdGltaW5nIGZvciBhbGwgcmVzb2x2ZWQgcXVlcmllcyBhbmQgdXBkYXRlIHRoZVxuICAgIC8vIHF1ZXJ5IGRlZmluaXRpb25zIHRvIGV4cGxpY2l0bHkgc2V0IHRoZSBkZXRlcm1pbmVkIHF1ZXJ5IHRpbWluZy5cbiAgICBxdWVyaWVzLmZvckVhY2gocSA9PiB7XG4gICAgICBjb25zdCBxdWVyeUV4cHIgPSBxLmRlY29yYXRvci5ub2RlLmV4cHJlc3Npb247XG4gICAgICBjb25zdCB7dGltaW5nLCBtZXNzYWdlfSA9IHN0cmF0ZWd5LmRldGVjdFRpbWluZyhxKTtcbiAgICAgIGNvbnN0IHJlc3VsdCA9IGdldFRyYW5zZm9ybWVkUXVlcnlDYWxsRXhwcihxLCB0aW1pbmcsICEhbWVzc2FnZSk7XG5cbiAgICAgIGlmICghcmVzdWx0KSB7XG4gICAgICAgIHJldHVybjtcbiAgICAgIH1cblxuICAgICAgY29uc3QgbmV3VGV4dCA9IHByaW50ZXIucHJpbnROb2RlKHRzLkVtaXRIaW50LlVuc3BlY2lmaWVkLCByZXN1bHQubm9kZSwgc291cmNlRmlsZSk7XG5cbiAgICAgIC8vIFJlcGxhY2UgdGhlIGV4aXN0aW5nIHF1ZXJ5IGRlY29yYXRvciBjYWxsIGV4cHJlc3Npb24gd2l0aCB0aGUgdXBkYXRlZFxuICAgICAgLy8gY2FsbCBleHByZXNzaW9uIG5vZGUuXG4gICAgICB1cGRhdGUucmVtb3ZlKHF1ZXJ5RXhwci5nZXRTdGFydCgpLCBxdWVyeUV4cHIuZ2V0V2lkdGgoKSk7XG4gICAgICB1cGRhdGUuaW5zZXJ0UmlnaHQocXVlcnlFeHByLmdldFN0YXJ0KCksIG5ld1RleHQpO1xuXG4gICAgICBpZiAocmVzdWx0LmZhaWx1cmVNZXNzYWdlIHx8IG1lc3NhZ2UpIHtcbiAgICAgICAgY29uc3Qge2xpbmUsIGNoYXJhY3Rlcn0gPVxuICAgICAgICAgICAgdHMuZ2V0TGluZUFuZENoYXJhY3Rlck9mUG9zaXRpb24oc291cmNlRmlsZSwgcS5kZWNvcmF0b3Iubm9kZS5nZXRTdGFydCgpKTtcbiAgICAgICAgZmFpbHVyZU1lc3NhZ2VzLnB1c2goXG4gICAgICAgICAgICBgJHtyZWxhdGl2ZVBhdGh9QCR7bGluZSArIDF9OiR7Y2hhcmFjdGVyICsgMX06ICR7cmVzdWx0LmZhaWx1cmVNZXNzYWdlIHx8IG1lc3NhZ2V9YCk7XG4gICAgICB9XG4gICAgfSk7XG5cbiAgICB0cmVlLmNvbW1pdFVwZGF0ZSh1cGRhdGUpO1xuICB9KTtcblxuICByZXR1cm4gZmFpbHVyZU1lc3NhZ2VzO1xufVxuIl19