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
        define("@angular/core/schematics/migrations/undecorated-classes-with-di", ["require", "exports", "@angular-devkit/schematics", "@angular/compiler-cli/src/ngtsc/partial_evaluator", "@angular/compiler-cli/src/ngtsc/reflection", "path", "typescript", "@angular/core/schematics/utils/project_tsconfig_paths", "@angular/core/schematics/utils/typescript/compiler_host", "@angular/core/schematics/migrations/undecorated-classes-with-di/create_ngc_program", "@angular/core/schematics/migrations/undecorated-classes-with-di/ng_declaration_collector", "@angular/core/schematics/migrations/undecorated-classes-with-di/transform"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const schematics_1 = require("@angular-devkit/schematics");
    const partial_evaluator_1 = require("@angular/compiler-cli/src/ngtsc/partial_evaluator");
    const reflection_1 = require("@angular/compiler-cli/src/ngtsc/reflection");
    const path_1 = require("path");
    const ts = require("typescript");
    const project_tsconfig_paths_1 = require("@angular/core/schematics/utils/project_tsconfig_paths");
    const compiler_host_1 = require("@angular/core/schematics/utils/typescript/compiler_host");
    const create_ngc_program_1 = require("@angular/core/schematics/migrations/undecorated-classes-with-di/create_ngc_program");
    const ng_declaration_collector_1 = require("@angular/core/schematics/migrations/undecorated-classes-with-di/ng_declaration_collector");
    const transform_1 = require("@angular/core/schematics/migrations/undecorated-classes-with-di/transform");
    const MIGRATION_RERUN_MESSAGE = 'Migration can be rerun with: "ng update @angular/core ' +
        '--migrate-only migration-v9-undecorated-classes-with-di"';
    const MIGRATION_AOT_FAILURE = 'This migration uses the Angular compiler internally and ' +
        'therefore projects that no longer build successfully after the update cannot run ' +
        'the migration. Please ensure there are no AOT compilation errors and rerun the migration.';
    /** Entry point for the V9 "undecorated-classes-with-di" migration. */
    function default_1() {
        return (tree, ctx) => {
            const { buildPaths } = project_tsconfig_paths_1.getProjectTsConfigPaths(tree);
            const basePath = process.cwd();
            const failures = [];
            let programError = false;
            if (!buildPaths.length) {
                throw new schematics_1.SchematicsException('Could not find any tsconfig file. Cannot migrate undecorated derived classes and ' +
                    'undecorated base classes which use DI.');
            }
            for (const tsconfigPath of buildPaths) {
                const result = runUndecoratedClassesMigration(tree, tsconfigPath, basePath, ctx.logger);
                failures.push(...result.failures);
                programError = programError || !!result.programError;
            }
            if (programError) {
                ctx.logger.info('Could not migrate all undecorated classes that use dependency');
                ctx.logger.info('injection. Some project targets could not be analyzed due to');
                ctx.logger.info('TypeScript program failures.\n');
                ctx.logger.info(`${MIGRATION_RERUN_MESSAGE}\n`);
                if (failures.length) {
                    ctx.logger.info('Please manually fix the following failures and re-run the');
                    ctx.logger.info('migration once the TypeScript program failures are resolved.');
                    failures.forEach(message => ctx.logger.warn(`⮑   ${message}`));
                }
            }
            else if (failures.length) {
                ctx.logger.info('Could not migrate all undecorated classes that use dependency');
                ctx.logger.info('injection. Please manually fix the following failures:');
                failures.forEach(message => ctx.logger.warn(`⮑   ${message}`));
            }
        };
    }
    exports.default = default_1;
    function runUndecoratedClassesMigration(tree, tsconfigPath, basePath, logger) {
        const failures = [];
        const programData = gracefullyCreateProgram(tree, basePath, tsconfigPath, logger);
        // Gracefully exit if the program could not be created.
        if (programData === null) {
            return { failures: [], programError: true };
        }
        const { program, compiler } = programData;
        const typeChecker = program.getTypeChecker();
        const partialEvaluator = new partial_evaluator_1.PartialEvaluator(new reflection_1.TypeScriptReflectionHost(typeChecker), typeChecker, /* dependencyTracker */ null);
        const declarationCollector = new ng_declaration_collector_1.NgDeclarationCollector(typeChecker, partialEvaluator);
        const sourceFiles = program.getSourceFiles().filter(s => !s.isDeclarationFile && !program.isSourceFileFromExternalLibrary(s));
        // Analyze source files by detecting all directives, components and providers.
        sourceFiles.forEach(sourceFile => declarationCollector.visitNode(sourceFile));
        const { decoratedDirectives, decoratedProviders, undecoratedDeclarations } = declarationCollector;
        const transform = new transform_1.UndecoratedClassesTransform(typeChecker, compiler, partialEvaluator, getUpdateRecorder);
        const updateRecorders = new Map();
        // Run the migrations for decorated providers and both decorated and undecorated
        // directives. The transform failures are collected and converted into human-readable
        // failures which can be printed to the console.
        [...transform.migrateDecoratedDirectives(decoratedDirectives),
            ...transform.migrateDecoratedProviders(decoratedProviders),
            ...transform.migrateUndecoratedDeclarations(Array.from(undecoratedDeclarations))]
            .forEach(({ node, message }) => {
            const nodeSourceFile = node.getSourceFile();
            const relativeFilePath = path_1.relative(basePath, nodeSourceFile.fileName);
            const { line, character } = ts.getLineAndCharacterOfPosition(node.getSourceFile(), node.getStart());
            failures.push(`${relativeFilePath}@${line + 1}:${character + 1}: ${message}`);
        });
        // Record the changes collected in the import manager and transformer.
        transform.recordChanges();
        // Walk through each update recorder and commit the update. We need to commit the
        // updates in batches per source file as there can be only one recorder per source
        // file in order to avoid shifted character offsets.
        updateRecorders.forEach(recorder => recorder.commitUpdate());
        return { failures };
        /** Gets the update recorder for the specified source file. */
        function getUpdateRecorder(sourceFile) {
            if (updateRecorders.has(sourceFile)) {
                return updateRecorders.get(sourceFile);
            }
            const treeRecorder = tree.beginUpdate(path_1.relative(basePath, sourceFile.fileName));
            const recorder = {
                addClassComment(node, text) {
                    treeRecorder.insertLeft(node.members.pos, `\n  // ${text}\n`);
                },
                addClassDecorator(node, text) {
                    // New imports should be inserted at the left while decorators should be inserted
                    // at the right in order to ensure that imports are inserted before the decorator
                    // if the start position of import and decorator is the source file start.
                    treeRecorder.insertRight(node.getStart(), `${text}\n`);
                },
                addNewImport(start, importText) {
                    // New imports should be inserted at the left while decorators should be inserted
                    // at the right in order to ensure that imports are inserted before the decorator
                    // if the start position of import and decorator is the source file start.
                    treeRecorder.insertLeft(start, importText);
                },
                updateExistingImport(namedBindings, newNamedBindings) {
                    treeRecorder.remove(namedBindings.getStart(), namedBindings.getWidth());
                    treeRecorder.insertRight(namedBindings.getStart(), newNamedBindings);
                },
                commitUpdate() {
                    tree.commitUpdate(treeRecorder);
                }
            };
            updateRecorders.set(sourceFile, recorder);
            return recorder;
        }
    }
    function getErrorDiagnostics(diagnostics) {
        return diagnostics.filter(d => d.category === ts.DiagnosticCategory.Error);
    }
    function gracefullyCreateProgram(tree, basePath, tsconfigPath, logger) {
        try {
            const { ngcProgram, host, program, compiler } = create_ngc_program_1.createNgcProgram((options) => compiler_host_1.createMigrationCompilerHost(tree, options, basePath), tsconfigPath);
            const syntacticDiagnostics = getErrorDiagnostics(ngcProgram.getTsSyntacticDiagnostics());
            const structuralDiagnostics = getErrorDiagnostics(ngcProgram.getNgStructuralDiagnostics());
            const configDiagnostics = getErrorDiagnostics([...program.getOptionsDiagnostics(), ...ngcProgram.getNgOptionDiagnostics()]);
            if (configDiagnostics.length) {
                logger.warn(`\nTypeScript project "${tsconfigPath}" has configuration errors. This could cause ` +
                    `an incomplete migration. Please fix the following failures and rerun the migration:`);
                logger.error(ts.formatDiagnostics(configDiagnostics, host));
                return null;
            }
            // Syntactic TypeScript errors can throw off the query analysis and therefore we want
            // to notify the developer that we couldn't analyze parts of the project. Developers
            // can just re-run the migration after fixing these failures.
            if (syntacticDiagnostics.length) {
                logger.warn(`\nTypeScript project "${tsconfigPath}" has syntactical errors which could cause ` +
                    `an incomplete migration. Please fix the following failures and rerun the migration:`);
                logger.error(ts.formatDiagnostics(syntacticDiagnostics, host));
                return null;
            }
            if (structuralDiagnostics.length) {
                throw new Error(ts.formatDiagnostics(structuralDiagnostics, host));
            }
            return { program, compiler };
        }
        catch (e) {
            logger.warn(`\n${MIGRATION_AOT_FAILURE} The following project failed: ${tsconfigPath}\n`);
            logger.error(`${e.toString()}\n`);
            return null;
        }
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NjaGVtYXRpY3MvbWlncmF0aW9ucy91bmRlY29yYXRlZC1jbGFzc2VzLXdpdGgtZGkvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7SUFHSCwyREFBNkY7SUFHN0YseUZBQW1GO0lBQ25GLDJFQUFvRjtJQUNwRiwrQkFBOEI7SUFDOUIsaUNBQWlDO0lBRWpDLGtHQUEyRTtJQUMzRSwyRkFBaUY7SUFFakYsMkhBQXNEO0lBQ3RELHVJQUFrRTtJQUNsRSx5R0FBd0Q7SUFHeEQsTUFBTSx1QkFBdUIsR0FBRyx3REFBd0Q7UUFDcEYsMERBQTBELENBQUM7SUFFL0QsTUFBTSxxQkFBcUIsR0FBRywwREFBMEQ7UUFDcEYsbUZBQW1GO1FBQ25GLDJGQUEyRixDQUFDO0lBRWhHLHNFQUFzRTtJQUN0RTtRQUNFLE9BQU8sQ0FBQyxJQUFVLEVBQUUsR0FBcUIsRUFBRSxFQUFFO1lBQzNDLE1BQU0sRUFBQyxVQUFVLEVBQUMsR0FBRyxnREFBdUIsQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUNuRCxNQUFNLFFBQVEsR0FBRyxPQUFPLENBQUMsR0FBRyxFQUFFLENBQUM7WUFDL0IsTUFBTSxRQUFRLEdBQWEsRUFBRSxDQUFDO1lBQzlCLElBQUksWUFBWSxHQUFHLEtBQUssQ0FBQztZQUV6QixJQUFJLENBQUMsVUFBVSxDQUFDLE1BQU0sRUFBRTtnQkFDdEIsTUFBTSxJQUFJLGdDQUFtQixDQUN6QixtRkFBbUY7b0JBQ25GLHdDQUF3QyxDQUFDLENBQUM7YUFDL0M7WUFFRCxLQUFLLE1BQU0sWUFBWSxJQUFJLFVBQVUsRUFBRTtnQkFDckMsTUFBTSxNQUFNLEdBQUcsOEJBQThCLENBQUMsSUFBSSxFQUFFLFlBQVksRUFBRSxRQUFRLEVBQUUsR0FBRyxDQUFDLE1BQU0sQ0FBQyxDQUFDO2dC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Q0FBQyxDQUFDO2dCQUMzRixNQUFNLENBQUMsS0FBSyxDQUFDLEVBQUUsQ0FBQyxpQkFBaUIsQ0FBQyxpQkFBaUIsRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDO2dCQUM1RCxPQUFPLElBQUksQ0FBQzthQUNiO1lBRUQscUZBQXFGO1lBQ3JGLG9GQUFvRjtZQUNwRiw2REFBNkQ7WUFDN0QsSUFBSSxvQkFBb0IsQ0FBQyxNQUFNLEVBQUU7Z0JBQy9CLE1BQU0sQ0FBQyxJQUFJLENBQ1AseUJBQXlCLFlBQVksNkNBQTZDO29CQUNsRixxRkFBcUYsQ0FBQyxDQUFDO2dCQUMzRixNQUFNLENBQUMsS0FBSyxDQUFDLEVBQUUsQ0FBQyxpQkFBaUIsQ0FBQyxvQkFBb0IsRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDO2dCQUMvRCxPQUFPLElBQUksQ0FBQzthQUNiO1lBRUQsSUFBSSxxQkFBcUIsQ0FBQyxNQUFNLEVBQUU7Z0JBQ2hDLE1BQU0sSUFBSSxLQUFLLENBQUMsRUFBRSxDQUFDLGlCQUFpQixDQUFrQixxQkFBcUIsRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDO2FBQ3JGO1lBRUQsT0FBTyxFQUFDLE9BQU8sRUFBRSxRQUFRLEVBQUMsQ0FBQztTQUM1QjtRQUFDLE9BQU8sQ0FBQyxFQUFFO1lBQ1YsTUFBTSxDQUFDLElBQUksQ0FBQyxLQUFLLHFCQUFxQixrQ0FBa0MsWUFBWSxJQUFJLENBQUMsQ0FBQztZQUMxRixNQUFNLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxDQUFDLFFBQVEsRUFBRSxJQUFJLENBQUMsQ0FBQztZQUNsQyxPQUFPLElBQUksQ0FBQztTQUNiO0lBQ0gsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge2xvZ2dpbmd9IGZyb20gJ0Bhbmd1bGFyLWRldmtpdC9jb3JlJztcbmltcG9ydCB7UnVsZSwgU2NoZW1hdGljQ29udGV4dCwgU2NoZW1hdGljc0V4Y2VwdGlvbiwgVHJlZX0gZnJvbSAnQGFuZ3VsYXItZGV2a2l0L3NjaGVtYXRpY3MnO1xuaW1wb3J0IHtBb3RDb21waWxlcn0gZnJvbSAnQGFuZ3VsYXIvY29tcGlsZXInO1xuaW1wb3J0IHtEaWFnbm9zdGljIGFzIE5nRGlhZ25vc3RpY30gZnJvbSAnQGFuZ3VsYXIvY29tcGlsZXItY2xpJztcbmltcG9ydCB7UGFydGlhbEV2YWx1YXRvcn0gZnJvbSAnQGFuZ3VsYXIvY29tcGlsZXItY2xpL3NyYy9uZ3RzYy9wYXJ0aWFsX2V2YWx1YXRvcic7XG5pbXBvcnQge1R5cGVTY3JpcHRSZWZsZWN0aW9uSG9zdH0gZnJvbSAnQGFuZ3VsYXIvY29tcGlsZXItY2xpL3NyYy9uZ3RzYy9yZWZsZWN0aW9uJztcbmltcG9ydCB7cmVsYXRpdmV9IGZyb20gJ3BhdGgnO1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7Z2V0UHJvamVjdFRzQ29uZmlnUGF0aHN9IGZyb20gJy4uLy4uL3V0aWxzL3Byb2plY3RfdHNjb25maWdfcGF0aHMnO1xuaW1wb3J0IHtjcmVhdGVNaWdyYXRpb25Db21waWxlckhvc3R9IGZyb20gJy4uLy4uL3V0aWxzL3R5cGVzY3JpcHQvY29tcGlsZXJfaG9zdCc7XG5cbmltcG9ydCB7Y3JlYXRlTmdjUHJvZ3JhbX0gZnJvbSAnLi9jcmVhdGVfbmdjX3Byb2dyYW0nO1xuaW1wb3J0IHtOZ0RlY2xhcmF0aW9uQ29sbGVjdG9yfSBmcm9tICcuL25nX2RlY2xhcmF0aW9uX2NvbGxlY3Rvcic7XG5pbXBvcnQge1VuZGVjb3JhdGVkQ2xhc3Nlc1RyYW5zZm9ybX0gZnJvbSAnLi90cmFuc2Zvcm0nO1xuaW1wb3J0IHtVcGRhdGVSZWNvcmRlcn0gZnJvbSAnLi91cGRhdGVfcmVjb3JkZXInO1xuXG5jb25zdCBNSUdSQVRJT05fUkVSVU5fTUVTU0FHRSA9ICdNaWdyYXRpb24gY2FuIGJlIHJlcnVuIHdpdGg6IFwibmcgdXBkYXRlIEBhbmd1bGFyL2NvcmUgJyArXG4gICAgJy0tbWlncmF0ZS1vbmx5IG1pZ3JhdGlvbi12OS11bmRlY29yYXRlZC1jbGFzc2VzLXdpdGgtZGlcIic7XG5cbmNvbnN0IE1JR1JBVElPTl9BT1RfRkFJTFVSRSA9ICdUaGlzIG1pZ3JhdGlvbiB1c2VzIHRoZSBBbmd1bGFyIGNvbXBpbGVyIGludGVybmFsbHkgYW5kICcgK1xuICAgICd0aGVyZWZvcmUgcHJvamVjdHMgdGhhdCBubyBsb25nZXIgYnVpbGQgc3VjY2Vzc2Z1bGx5IGFmdGVyIHRoZSB1cGRhdGUgY2Fubm90IHJ1biAnICtcbiAgICAndGhlIG1pZ3JhdGlvbi4gUGxlYXNlIGVuc3VyZSB0aGVyZSBhcmUgbm8gQU9UIGNvbXBpbGF0aW9uIGVycm9ycyBhbmQgcmVydW4gdGhlIG1pZ3JhdGlvbi4nO1xuXG4vKiogRW50cnkgcG9pbnQgZm9yIHRoZSBWOSBcInVuZGVjb3JhdGVkLWNsYXNzZXMtd2l0aC1kaVwiIG1pZ3JhdGlvbi4gKi9cbmV4cG9ydCBkZWZhdWx0IGZ1bmN0aW9uKCk6IFJ1bGUge1xuICByZXR1cm4gKHRyZWU6IFRyZWUsIGN0eDogU2NoZW1hdGljQ29udGV4dCkgPT4ge1xuICAgIGNvbnN0IHtidWlsZFBhdGhzfSA9IGdldFByb2plY3RUc0NvbmZpZ1BhdGhzKHRyZWUpO1xuICAgIGNvbnN0IGJhc2VQYXRoID0gcHJvY2Vzcy5jd2QoKTtcbiAgICBjb25zdCBmYWlsdXJlczogc3RyaW5nW10gPSBbXTtcbiAgICBsZXQgcHJvZ3JhbUVycm9yID0gZmFsc2U7XG5cbiAgICBpZiAoIWJ1aWxkUGF0aHMubGVuZ3RoKSB7XG4gICAgICB0aHJvdyBuZXcgU2NoZW1hdGljc0V4Y2VwdGlvbihcbiAgICAgICAgICAnQ291bGQgbm90IGZpbmQgYW55IHRzY29uZmlnIGZpbGUuIENhbm5vdCBtaWdyYXRlIHVuZGVjb3JhdGVkIGRlcml2ZWQgY2xhc3NlcyBhbmQgJyArXG4gICAgICAgICAgJ3VuZGVjb3JhdGVkIGJhc2UgY2xhc3NlcyB3aGljaCB1c2UgREkuJyk7XG4gICAgfVxuXG4gICAgZm9yIChjb25zdCB0c2NvbmZpZ1BhdGggb2YgYnVpbGRQYXRocykge1xuICAgICAgY29uc3QgcmVzdWx0ID0gcnVuVW5kZWNvcmF0ZWRDbGFzc2VzTWlncmF0aW9uKHRyZWUsIHRzY29uZmlnUGF0aCwgYmFzZVBhdGgsIGN0eC5sb2dnZXIpO1xuICAgICAgZmFpbHVyZXMucHVzaCguLi5yZXN1bHQuZmFpbHVyZXMpO1xuICAgICAgcHJvZ3JhbUVycm9yID0gcHJvZ3JhbUVycm9yIHx8ICEhcmVzdWx0LnByb2dyYW1FcnJvcjtcbiAgICB9XG5cbiAgICBpZiAocHJvZ3JhbUVycm9yKSB7XG4gICAgICBjdHgubG9nZ2VyLmluZm8oJ0NvdWxkIG5vdCBtaWdyYXRlIGFsbCB1bmRlY29yYXRlZCBjbGFzc2VzIHRoYXQgdXNlIGRlcGVuZGVuY3knKTtcbiAgICAgIGN0eC5sb2dnZXIuaW5mbygnaW5qZWN0aW9uLiBTb21lIHByb2plY3QgdGFyZ2V0cyBjb3VsZCBub3QgYmUgYW5hbHl6ZWQgZHVlIHRvJyk7XG4gICAgICBjdHgubG9nZ2VyLmluZm8oJ1R5cGVTY3JpcHQgcHJvZ3JhbSBmYWlsdXJlcy5cXG4nKTtcbiAgICAgIGN0eC5sb2dnZXIuaW5mbyhgJHtNSUdSQVRJT05fUkVSVU5fTUVTU0FHRX1cXG5gKTtcblxuICAgICAgaWYgKGZhaWx1cmVzLmxlbmd0aCkge1xuICAgICAgICBjdHgubG9nZ2VyLmluZm8oJ1BsZWFzZSBtYW51YWxseSBmaXggdGhlIGZvbGxvd2luZyBmYWlsdXJlcyBhbmQgcmUtcnVuIHRoZScpO1xuICAgICAgICBjdHgubG9nZ2VyLmluZm8oJ21pZ3JhdGlvbiBvbmNlIHRoZSBUeXBlU2NyaXB0IHByb2dyYW0gZmFpbHVyZXMgYXJlIHJlc29sdmVkLicpO1xuICAgICAgICBmYWlsdXJlcy5mb3JFYWNoKG1lc3NhZ2UgPT4gY3R4LmxvZ2dlci53YXJuKGDirpEgICAke21lc3NhZ2V9YCkpO1xuICAgICAgfVxuICAgIH0gZWxzZSBpZiAoZmFpbHVyZXMubGVuZ3RoKSB7XG4gICAgICBjdHgubG9nZ2VyLmluZm8oJ0NvdWxkIG5vdCBtaWdyYXRlIGFsbCB1bmRlY29yYXRlZCBjbGFzc2VzIHRoYXQgdXNlIGRlcGVuZGVuY3knKTtcbiAgICAgIGN0eC5sb2dnZXIuaW5mbygnaW5qZWN0aW9uLiBQbGVhc2UgbWFudWFsbHkgZml4IHRoZSBmb2xsb3dpbmcgZmFpbHVyZXM6Jyk7XG4gICAgICBmYWlsdXJlcy5mb3JFYWNoKG1lc3NhZ2UgPT4gY3R4LmxvZ2dlci53YXJuKGDirpEgICAke21lc3NhZ2V9YCkpO1xuICAgIH1cbiAgfTtcbn1cblxuZnVuY3Rpb24gcnVuVW5kZWNvcmF0ZWRDbGFzc2VzTWlncmF0aW9uKFxuICAgIHRyZWU6IFRyZWUsIHRzY29uZmlnUGF0aDogc3RyaW5nLCBiYXNlUGF0aDogc3RyaW5nLFxuICAgIGxvZ2dlcjogbG9nZ2luZy5Mb2dnZXJBcGkpOiB7ZmFpbHVyZXM6IHN0cmluZ1tdLCBwcm9ncmFtRXJyb3I/OiBib29sZWFufSB7XG4gIGNvbnN0IGZhaWx1cmVzOiBzdHJpbmdbXSA9IFtdO1xuICBjb25zdCBwcm9ncmFtRGF0YSA9IGdyYWNlZnVsbHlDcmVhdGVQcm9ncmFtKHRyZWUsIGJhc2VQYXRoLCB0c2NvbmZpZ1BhdGgsIGxvZ2dlcik7XG5cbiAgLy8gR3JhY2VmdWxseSBleGl0IGlmIHRoZSBwcm9ncmFtIGNvdWxkIG5vdCBiZSBjcmVhdGVkLlxuICBpZiAocHJvZ3JhbURhdGEgPT09IG51bGwpIHtcbiAgICByZXR1cm4ge2ZhaWx1cmVzOiBbXSwgcHJvZ3JhbUVycm9yOiB0cnVlfTtcbiAgfVxuXG4gIGNvbnN0IHtwcm9ncmFtLCBjb21waWxlcn0gPSBwcm9ncmFtRGF0YTtcbiAgY29uc3QgdHlwZUNoZWNrZXIgPSBwcm9ncmFtLmdldFR5cGVDaGVja2VyKCk7XG4gIGNvbnN0IHBhcnRpYWxFdmFsdWF0b3IgPSBuZXcgUGFydGlhbEV2YWx1YXRvcihcbiAgICAgIG5ldyBUeXBlU2NyaXB0UmVmbGVjdGlvbkhvc3QodHlwZUNoZWNrZXIpLCB0eXBlQ2hlY2tlciwgLyogZGVwZW5kZW5jeVRyYWNrZXIgKi8gbnVsbCk7XG4gIGNvbnN0IGRlY2xhcmF0aW9uQ29sbGVjdG9yID0gbmV3IE5nRGVjbGFyYXRpb25Db2xsZWN0b3IodHlwZUNoZWNrZXIsIHBhcnRpYWxFdmFsdWF0b3IpO1xuICBjb25zdCBzb3VyY2VGaWxlcyA9IHByb2dyYW0uZ2V0U291cmNlRmlsZXMoKS5maWx0ZXIoXG4gICAgICBzID0+ICFzLmlzRGVjbGFyYXRpb25GaWxlICYmICFwcm9ncmFtLmlzU291cmNlRmlsZUZyb21FeHRlcm5hbExpYnJhcnkocykpO1xuXG4gIC8vIEFuYWx5emUgc291cmNlIGZpbGVzIGJ5IGRldGVjdGluZyBhbGwgZGlyZWN0aXZlcywgY29tcG9uZW50cyBhbmQgcHJvdmlkZXJzLlxuICBzb3VyY2VGaWxlcy5mb3JFYWNoKHNvdXJjZUZpbGUgPT4gZGVjbGFyYXRpb25Db2xsZWN0b3IudmlzaXROb2RlKHNvdXJjZUZpbGUpKTtcblxuICBjb25zdCB7ZGVjb3JhdGVkRGlyZWN0aXZlcywgZGVjb3JhdGVkUHJvdmlkZXJzLCB1bmRlY29yYXRlZERlY2xhcmF0aW9uc30gPSBkZWNsYXJhdGlvbkNvbGxlY3RvcjtcbiAgY29uc3QgdHJhbnNmb3JtID1cbiAgICAgIG5ldyBVbmRlY29yYXRlZENsYXNzZXNUcmFuc2Zvcm0odHlwZUNoZWNrZXIsIGNvbXBpbGVyLCBwYXJ0aWFsRXZhbHVhdG9yLCBnZXRVcGRhdGVSZWNvcmRlcik7XG4gIGNvbnN0IHVwZGF0ZVJlY29yZGVycyA9IG5ldyBNYXA8dHMuU291cmNlRmlsZSwgVXBkYXRlUmVjb3JkZXI+KCk7XG5cbiAgLy8gUnVuIHRoZSBtaWdyYXRpb25zIGZvciBkZWNvcmF0ZWQgcHJvdmlkZXJzIGFuZCBib3RoIGRlY29yYXRlZCBhbmQgdW5kZWNvcmF0ZWRcbiAgLy8gZGlyZWN0aXZlcy4gVGhlIHRyYW5zZm9ybSBmYWlsdXJlcyBhcmUgY29sbGVjdGVkIGFuZCBjb252ZXJ0ZWQgaW50byBodW1hbi1yZWFkYWJsZVxuICAvLyBmYWlsdXJlcyB3aGljaCBjYW4gYmUgcHJpbnRlZCB0byB0aGUgY29uc29sZS5cbiAgWy4uLnRyYW5zZm9ybS5taWdyYXRlRGVjb3JhdGVkRGlyZWN0aXZlcyhkZWNvcmF0ZWREaXJlY3RpdmVzKSxcbiAgIC4uLnRyYW5zZm9ybS5taWdyYXRlRGVjb3JhdGVkUHJvdmlkZXJzKGRlY29yYXRlZFByb3ZpZGVycyksXG4gICAuLi50cmFuc2Zvcm0ubWlncmF0ZVVuZGVjb3JhdGVkRGVjbGFyYXRpb25zKEFycmF5LmZyb20odW5kZWNvcmF0ZWREZWNsYXJhdGlvbnMpKV1cbiAgICAgIC5mb3JFYWNoKCh7bm9kZSwgbWVzc2FnZX0pID0+IHtcbiAgICAgICAgY29uc3Qgbm9kZVNvdXJjZUZpbGUgPSBub2RlLmdldFNvdXJjZUZpbGUoKTtcbiAgICAgICAgY29uc3QgcmVsYXRpdmVGaWxlUGF0aCA9IHJlbGF0aXZlKGJhc2VQYXRoLCBub2RlU291cmNlRmlsZS5maWxlTmFtZSk7XG4gICAgICAgIGNvbnN0IHtsaW5lLCBjaGFyYWN0ZXJ9ID1cbiAgICAgICAgICAgIHRzLmdldExpbmVBbmRDaGFyYWN0ZXJPZlBvc2l0aW9uKG5vZGUuZ2V0U291cmNlRmlsZSgpLCBub2RlLmdldFN0YXJ0KCkpO1xuICAgICAgICBmYWlsdXJlcy5wdXNoKGAke3JlbGF0aXZlRmlsZVBhdGh9QCR7bGluZSArIDF9OiR7Y2hhcmFjdGVyICsgMX06ICR7bWVzc2FnZX1gKTtcbiAgICAgIH0pO1xuXG4gIC8vIFJlY29yZCB0aGUgY2hhbmdlcyBjb2xsZWN0ZWQgaW4gdGhlIGltcG9ydCBtYW5hZ2VyIGFuZCB0cmFuc2Zvcm1lci5cbiAgdHJhbnNmb3JtLnJlY29yZENoYW5nZXMoKTtcblxuICAvLyBXYWxrIHRocm91Z2ggZWFjaCB1cGRhdGUgcmVjb3JkZXIgYW5kIGNvbW1pdCB0aGUgdXBkYXRlLiBXZSBuZWVkIHRvIGNvbW1pdCB0aGVcbiAgLy8gdXBkYXRlcyBpbiBiYXRjaGVzIHBlciBzb3VyY2UgZmlsZSBhcyB0aGVyZSBjYW4gYmUgb25seSBvbmUgcmVjb3JkZXIgcGVyIHNvdXJjZVxuICAvLyBmaWxlIGluIG9yZGVyIHRvIGF2b2lkIHNoaWZ0ZWQgY2hhcmFjdGVyIG9mZnNldHMuXG4gIHVwZGF0ZVJlY29yZGVycy5mb3JFYWNoKHJlY29yZGVyID0+IHJlY29yZGVyLmNvbW1pdFVwZGF0ZSgpKTtcblxuICByZXR1cm4ge2ZhaWx1cmVzfTtcblxuICAvKiogR2V0cyB0aGUgdXBkYXRlIHJlY29yZGVyIGZvciB0aGUgc3BlY2lmaWVkIHNvdXJjZSBmaWxlLiAqL1xuICBmdW5jdGlvbiBnZXRVcGRhdGVSZWNvcmRlcihzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlKTogVXBkYXRlUmVjb3JkZXIge1xuICAgIGlmICh1cGRhdGVSZWNvcmRlcnMuaGFzKHNvdXJjZUZpbGUpKSB7XG4gICAgICByZXR1cm4gdXBkYXRlUmVjb3JkZXJzLmdldChzb3VyY2VGaWxlKSE7XG4gICAgfVxuICAgIGNvbnN0IHRyZWVSZWNvcmRlciA9IHRyZWUuYmVnaW5VcGRhdGUocmVsYXRpdmUoYmFzZVBhdGgsIHNvdXJjZUZpbGUuZmlsZU5hbWUpKTtcbiAgICBjb25zdCByZWNvcmRlcjogVXBkYXRlUmVjb3JkZXIgPSB7XG4gICAgICBhZGRDbGFzc0NvbW1lbnQobm9kZTogdHMuQ2xhc3NEZWNsYXJhdGlvbiwgdGV4dDogc3RyaW5nKSB7XG4gICAgICAgIHRyZWVSZWNvcmRlci5pbnNlcnRMZWZ0KG5vZGUubWVtYmVycy5wb3MsIGBcXG4gIC8vICR7dGV4dH1cXG5gKTtcbiAgICAgIH0sXG4gICAgICBhZGRDbGFzc0RlY29yYXRvcihub2RlOiB0cy5DbGFzc0RlY2xhcmF0aW9uLCB0ZXh0OiBzdHJpbmcpIHtcbiAgICAgICAgLy8gTmV3IGltcG9ydHMgc2hvdWxkIGJlIGluc2VydGVkIGF0IHRoZSBsZWZ0IHdoaWxlIGRlY29yYXRvcnMgc2hvdWxkIGJlIGluc2VydGVkXG4gICAgICAgIC8vIGF0IHRoZSByaWdodCBpbiBvcmRlciB0byBlbnN1cmUgdGhhdCBpbXBvcnRzIGFyZSBpbnNlcnRlZCBiZWZvcmUgdGhlIGRlY29yYXRvclxuICAgICAgICAvLyBpZiB0aGUgc3RhcnQgcG9zaXRpb24gb2YgaW1wb3J0IGFuZCBkZWNvcmF0b3IgaXMgdGhlIHNvdXJjZSBmaWxlIHN0YXJ0LlxuICAgICAgICB0cmVlUmVjb3JkZXIuaW5zZXJ0UmlnaHQobm9kZS5nZXRTdGFydCgpLCBgJHt0ZXh0fVxcbmApO1xuICAgICAgfSxcbiAgICAgIGFkZE5ld0ltcG9ydChzdGFydDogbnVtYmVyLCBpbXBvcnRUZXh0OiBzdHJpbmcpIHtcbiAgICAgICAgLy8gTmV3IGltcG9ydHMgc2hvdWxkIGJlIGluc2VydGVkIGF0IHRoZSBsZWZ0IHdoaWxlIGRlY29yYXRvcnMgc2hvdWxkIGJlIGluc2VydGVkXG4gICAgICAgIC8vIGF0IHRoZSByaWdodCBpbiBvcmRlciB0byBlbnN1cmUgdGhhdCBpbXBvcnRzIGFyZSBpbnNlcnRlZCBiZWZvcmUgdGhlIGRlY29yYXRvclxuICAgICAgICAvLyBpZiB0aGUgc3RhcnQgcG9zaXRpb24gb2YgaW1wb3J0IGFuZCBkZWNvcmF0b3IgaXMgdGhlIHNvdXJjZSBmaWxlIHN0YXJ0LlxuICAgICAgICB0cmVlUmVjb3JkZXIuaW5zZXJ0TGVmdChzdGFydCwgaW1wb3J0VGV4dCk7XG4gICAgICB9LFxuICAgICAgdXBkYXRlRXhpc3RpbmdJbXBvcnQobmFtZWRCaW5kaW5nczogdHMuTmFtZWRJbXBvcnRzLCBuZXdOYW1lZEJpbmRpbmdzOiBzdHJpbmcpIHtcbiAgICAgICAgdHJlZVJlY29yZGVyLnJlbW92ZShuYW1lZEJpbmRpbmdzLmdldFN0YXJ0KCksIG5hbWVkQmluZGluZ3MuZ2V0V2lkdGgoKSk7XG4gICAgICAgIHRyZWVSZWNvcmRlci5pbnNlcnRSaWdodChuYW1lZEJpbmRpbmdzLmdldFN0YXJ0KCksIG5ld05hbWVkQmluZGluZ3MpO1xuICAgICAgfSxcbiAgICAgIGNvbW1pdFVwZGF0ZSgpIHtcbiAgICAgICAgdHJlZS5jb21taXRVcGRhdGUodHJlZVJlY29yZGVyKTtcbiAgICAgIH1cbiAgICB9O1xuICAgIHVwZGF0ZVJlY29yZGVycy5zZXQoc291cmNlRmlsZSwgcmVjb3JkZXIpO1xuICAgIHJldHVybiByZWNvcmRlcjtcbiAgfVxufVxuXG5mdW5jdGlvbiBnZXRFcnJvckRpYWdub3N0aWNzKGRpYWdub3N0aWNzOiBSZWFkb25seUFycmF5PHRzLkRpYWdub3N0aWN8TmdEaWFnbm9zdGljPikge1xuICByZXR1cm4gPHRzLkRpYWdub3N0aWNbXT5kaWFnbm9zdGljcy5maWx0ZXIoZCA9PiBkLmNhdGVnb3J5ID09PSB0cy5EaWFnbm9zdGljQ2F0ZWdvcnkuRXJyb3IpO1xufVxuXG5mdW5jdGlvbiBncmFjZWZ1bGx5Q3JlYXRlUHJvZ3JhbShcbiAgICB0cmVlOiBUcmVlLCBiYXNlUGF0aDogc3RyaW5nLCB0c2NvbmZpZ1BhdGg6IHN0cmluZyxcbiAgICBsb2dnZXI6IGxvZ2dpbmcuTG9nZ2VyQXBpKToge2NvbXBpbGVyOiBBb3RDb21waWxlciwgcHJvZ3JhbTogdHMuUHJvZ3JhbX18bnVsbCB7XG4gIHRyeSB7XG4gICAgY29uc3Qge25nY1Byb2dyYW0sIGhvc3QsIHByb2dyYW0sIGNvbXBpbGVyfSA9IGNyZWF0ZU5nY1Byb2dyYW0oXG4gICAgICAgIChvcHRpb25zKSA9PiBjcmVhdGVNaWdyYXRpb25Db21waWxlckhvc3QodHJlZSwgb3B0aW9ucywgYmFzZVBhdGgpLCB0c2NvbmZpZ1BhdGgpO1xuICAgIGNvbnN0IHN5bnRhY3RpY0RpYWdub3N0aWNzID0gZ2V0RXJyb3JEaWFnbm9zdGljcyhuZ2NQcm9ncmFtLmdldFRzU3ludGFjdGljRGlhZ25vc3RpY3MoKSk7XG4gICAgY29uc3Qgc3RydWN0dXJhbERpYWdub3N0aWNzID0gZ2V0RXJyb3JEaWFnbm9zdGljcyhuZ2NQcm9ncmFtLmdldE5nU3RydWN0dXJhbERpYWdub3N0aWNzKCkpO1xuICAgIGNvbnN0IGNvbmZpZ0RpYWdub3N0aWNzID0gZ2V0RXJyb3JEaWFnbm9zdGljcyhcbiAgICAgICAgWy4uLnByb2dyYW0uZ2V0T3B0aW9uc0RpYWdub3N0aWNzKCksIC4uLm5nY1Byb2dyYW0uZ2V0TmdPcHRpb25EaWFnbm9zdGljcygpXSk7XG5cbiAgICBpZiAoY29uZmlnRGlhZ25vc3RpY3MubGVuZ3RoKSB7XG4gICAgICBsb2dnZXIud2FybihcbiAgICAgICAgICBgXFxuVHlwZVNjcmlwdCBwcm9qZWN0IFwiJHt0c2NvbmZpZ1BhdGh9XCIgaGFzIGNvbmZpZ3VyYXRpb24gZXJyb3JzLiBUaGlzIGNvdWxkIGNhdXNlIGAgK1xuICAgICAgICAgIGBhbiBpbmNvbXBsZXRlIG1pZ3JhdGlvbi4gUGxlYXNlIGZpeCB0aGUgZm9sbG93aW5nIGZhaWx1cmVzIGFuZCByZXJ1biB0aGUgbWlncmF0aW9uOmApO1xuICAgICAgbG9nZ2VyLmVycm9yKHRzLmZvcm1hdERpYWdub3N0aWNzKGNvbmZpZ0RpYWdub3N0aWNzLCBob3N0KSk7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICAvLyBTeW50YWN0aWMgVHlwZVNjcmlwdCBlcnJvcnMgY2FuIHRocm93IG9mZiB0aGUgcXVlcnkgYW5hbHlzaXMgYW5kIHRoZXJlZm9yZSB3ZSB3YW50XG4gICAgLy8gdG8gbm90aWZ5IHRoZSBkZXZlbG9wZXIgdGhhdCB3ZSBjb3VsZG4ndCBhbmFseXplIHBhcnRzIG9mIHRoZSBwcm9qZWN0LiBEZXZlbG9wZXJzXG4gICAgLy8gY2FuIGp1c3QgcmUtcnVuIHRoZSBtaWdyYXRpb24gYWZ0ZXIgZml4aW5nIHRoZXNlIGZhaWx1cmVzLlxuICAgIGlmIChzeW50YWN0aWNEaWFnbm9zdGljcy5sZW5ndGgpIHtcbiAgICAgIGxvZ2dlci53YXJuKFxuICAgICAgICAgIGBcXG5UeXBlU2NyaXB0IHByb2plY3QgXCIke3RzY29uZmlnUGF0aH1cIiBoYXMgc3ludGFjdGljYWwgZXJyb3JzIHdoaWNoIGNvdWxkIGNhdXNlIGAgK1xuICAgICAgICAgIGBhbiBpbmNvbXBsZXRlIG1pZ3JhdGlvbi4gUGxlYXNlIGZpeCB0aGUgZm9sbG93aW5nIGZhaWx1cmVzIGFuZCByZXJ1biB0aGUgbWlncmF0aW9uOmApO1xuICAgICAgbG9nZ2VyLmVycm9yKHRzLmZvcm1hdERpYWdub3N0aWNzKHN5bnRhY3RpY0RpYWdub3N0aWNzLCBob3N0KSk7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICBpZiAoc3RydWN0dXJhbERpYWdub3N0aWNzLmxlbmd0aCkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKHRzLmZvcm1hdERpYWdub3N0aWNzKDx0cy5EaWFnbm9zdGljW10+c3RydWN0dXJhbERpYWdub3N0aWNzLCBob3N0KSk7XG4gICAgfVxuXG4gICAgcmV0dXJuIHtwcm9ncmFtLCBjb21waWxlcn07XG4gIH0gY2F0Y2ggKGUpIHtcbiAgICBsb2dnZXIud2FybihgXFxuJHtNSUdSQVRJT05fQU9UX0ZBSUxVUkV9IFRoZSBmb2xsb3dpbmcgcHJvamVjdCBmYWlsZWQ6ICR7dHNjb25maWdQYXRofVxcbmApO1xuICAgIGxvZ2dlci5lcnJvcihgJHtlLnRvU3RyaW5nKCl9XFxuYCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbn1cbiJdfQ==