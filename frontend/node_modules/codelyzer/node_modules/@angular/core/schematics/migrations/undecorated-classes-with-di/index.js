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
                commitUpdate() { tree.commitUpdate(treeRecorder); }
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NjaGVtYXRpY3MvbWlncmF0aW9ucy91bmRlY29yYXRlZC1jbGFzc2VzLXdpdGgtZGkvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7SUFHSCwyREFBNkY7SUFHN0YseUZBQW1GO0lBQ25GLDJFQUFvRjtJQUNwRiwrQkFBOEI7SUFDOUIsaUNBQWlDO0lBRWpDLGtHQUEyRTtJQUMzRSwyRkFBaUY7SUFFakYsMkhBQXNEO0lBQ3RELHVJQUFrRTtJQUNsRSx5R0FBd0Q7SUFHeEQsTUFBTSx1QkFBdUIsR0FBRyx3REFBd0Q7UUFDcEYsMERBQTBELENBQUM7SUFFL0QsTUFBTSxxQkFBcUIsR0FBRywwREFBMEQ7UUFDcEYsbUZBQW1GO1FBQ25GLDJGQUEyRixDQUFDO0lBRWhHLHNFQUFzRTtJQUN0RTtRQUNFLE9BQU8sQ0FBQyxJQUFVLEVBQUUsR0FBcUIsRUFBRSxFQUFFO1lBQzNDLE1BQU0sRUFBQyxVQUFVLEVBQUMsR0FBRyxnREFBdUIsQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUNuRCxNQUFNLFFBQVEsR0FBRyxPQUFPLENBQUMsR0FBRyxFQUFFLENBQUM7WUFDL0IsTUFBTSxRQUFRLEdBQWEsRUFBRSxDQUFDO1lBQzlCLElBQUksWUFBWSxHQUFHLEtBQUssQ0FBQztZQUV6QixJQUFJLENBQUMsVUFBVSxDQUFDLE1BQU0sRUFBRTtnQkFDdEIsTUFBTSxJQUFJLGdDQUFtQixDQUN6QixtRkFBbUY7b0JBQ25GLHdDQUF3QyxDQUFDLENBQUM7YUFDL0M7WUFFRCxLQUFLLE1BQU0sWUFBWSxJQUFJLFVBQVUsRUFBRTtnQkFDckMsTUFBTSxNQUFNLEdBQUcsOEJBQThCLENBQUMsSUFBSSxFQUFFLFlBQVksRUFBRSxRQUFRLEVBQUUsR0FBRyxDQUFDLE1BQU0sQ0FBQyxDQUFDO2dC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QUMsQ0FBQztnQkFDM0YsTUFBTSxDQUFDLEtBQUssQ0FBQyxFQUFFLENBQUMsaUJBQWlCLENBQUMsaUJBQWlCLEVBQUUsSUFBSSxDQUFDLENBQUMsQ0FBQztnQkFDNUQsT0FBTyxJQUFJLENBQUM7YUFDYjtZQUVELHFGQUFxRjtZQUNyRixvRkFBb0Y7WUFDcEYsNkRBQTZEO1lBQzdELElBQUksb0JBQW9CLENBQUMsTUFBTSxFQUFFO2dCQUMvQixNQUFNLENBQUMsSUFBSSxDQUNQLHlCQUF5QixZQUFZLDZDQUE2QztvQkFDbEYscUZBQXFGLENBQUMsQ0FBQztnQkFDM0YsTUFBTSxDQUFDLEtBQUssQ0FBQyxFQUFFLENBQUMsaUJBQWlCLENBQUMsb0JBQW9CLEVBQUUsSUFBSSxDQUFDLENBQUMsQ0FBQztnQkFDL0QsT0FBTyxJQUFJLENBQUM7YUFDYjtZQUVELElBQUkscUJBQXFCLENBQUMsTUFBTSxFQUFFO2dCQUNoQyxNQUFNLElBQUksS0FBSyxDQUFDLEVBQUUsQ0FBQyxpQkFBaUIsQ0FBa0IscUJBQXFCLEVBQUUsSUFBSSxDQUFDLENBQUMsQ0FBQzthQUNyRjtZQUVELE9BQU8sRUFBQyxPQUFPLEVBQUUsUUFBUSxFQUFDLENBQUM7U0FDNUI7UUFBQyxPQUFPLENBQUMsRUFBRTtZQUNWLE1BQU0sQ0FBQyxJQUFJLENBQUMsS0FBSyxxQkFBcUIsa0NBQWtDLFlBQVksSUFBSSxDQUFDLENBQUM7WUFDMUYsTUFBTSxDQUFDLEtBQUssQ0FBQyxHQUFHLENBQUMsQ0FBQyxRQUFRLEVBQUUsSUFBSSxDQUFDLENBQUM7WUFDbEMsT0FBTyxJQUFJLENBQUM7U0FDYjtJQUNILENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7bG9nZ2luZ30gZnJvbSAnQGFuZ3VsYXItZGV2a2l0L2NvcmUnO1xuaW1wb3J0IHtSdWxlLCBTY2hlbWF0aWNDb250ZXh0LCBTY2hlbWF0aWNzRXhjZXB0aW9uLCBUcmVlfSBmcm9tICdAYW5ndWxhci1kZXZraXQvc2NoZW1hdGljcyc7XG5pbXBvcnQge0FvdENvbXBpbGVyfSBmcm9tICdAYW5ndWxhci9jb21waWxlcic7XG5pbXBvcnQge0RpYWdub3N0aWMgYXMgTmdEaWFnbm9zdGljfSBmcm9tICdAYW5ndWxhci9jb21waWxlci1jbGknO1xuaW1wb3J0IHtQYXJ0aWFsRXZhbHVhdG9yfSBmcm9tICdAYW5ndWxhci9jb21waWxlci1jbGkvc3JjL25ndHNjL3BhcnRpYWxfZXZhbHVhdG9yJztcbmltcG9ydCB7VHlwZVNjcmlwdFJlZmxlY3Rpb25Ib3N0fSBmcm9tICdAYW5ndWxhci9jb21waWxlci1jbGkvc3JjL25ndHNjL3JlZmxlY3Rpb24nO1xuaW1wb3J0IHtyZWxhdGl2ZX0gZnJvbSAncGF0aCc7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtnZXRQcm9qZWN0VHNDb25maWdQYXRoc30gZnJvbSAnLi4vLi4vdXRpbHMvcHJvamVjdF90c2NvbmZpZ19wYXRocyc7XG5pbXBvcnQge2NyZWF0ZU1pZ3JhdGlvbkNvbXBpbGVySG9zdH0gZnJvbSAnLi4vLi4vdXRpbHMvdHlwZXNjcmlwdC9jb21waWxlcl9ob3N0JztcblxuaW1wb3J0IHtjcmVhdGVOZ2NQcm9ncmFtfSBmcm9tICcuL2NyZWF0ZV9uZ2NfcHJvZ3JhbSc7XG5pbXBvcnQge05nRGVjbGFyYXRpb25Db2xsZWN0b3J9IGZyb20gJy4vbmdfZGVjbGFyYXRpb25fY29sbGVjdG9yJztcbmltcG9ydCB7VW5kZWNvcmF0ZWRDbGFzc2VzVHJhbnNmb3JtfSBmcm9tICcuL3RyYW5zZm9ybSc7XG5pbXBvcnQge1VwZGF0ZVJlY29yZGVyfSBmcm9tICcuL3VwZGF0ZV9yZWNvcmRlcic7XG5cbmNvbnN0IE1JR1JBVElPTl9SRVJVTl9NRVNTQUdFID0gJ01pZ3JhdGlvbiBjYW4gYmUgcmVydW4gd2l0aDogXCJuZyB1cGRhdGUgQGFuZ3VsYXIvY29yZSAnICtcbiAgICAnLS1taWdyYXRlLW9ubHkgbWlncmF0aW9uLXY5LXVuZGVjb3JhdGVkLWNsYXNzZXMtd2l0aC1kaVwiJztcblxuY29uc3QgTUlHUkFUSU9OX0FPVF9GQUlMVVJFID0gJ1RoaXMgbWlncmF0aW9uIHVzZXMgdGhlIEFuZ3VsYXIgY29tcGlsZXIgaW50ZXJuYWxseSBhbmQgJyArXG4gICAgJ3RoZXJlZm9yZSBwcm9qZWN0cyB0aGF0IG5vIGxvbmdlciBidWlsZCBzdWNjZXNzZnVsbHkgYWZ0ZXIgdGhlIHVwZGF0ZSBjYW5ub3QgcnVuICcgK1xuICAgICd0aGUgbWlncmF0aW9uLiBQbGVhc2UgZW5zdXJlIHRoZXJlIGFyZSBubyBBT1QgY29tcGlsYXRpb24gZXJyb3JzIGFuZCByZXJ1biB0aGUgbWlncmF0aW9uLic7XG5cbi8qKiBFbnRyeSBwb2ludCBmb3IgdGhlIFY5IFwidW5kZWNvcmF0ZWQtY2xhc3Nlcy13aXRoLWRpXCIgbWlncmF0aW9uLiAqL1xuZXhwb3J0IGRlZmF1bHQgZnVuY3Rpb24oKTogUnVsZSB7XG4gIHJldHVybiAodHJlZTogVHJlZSwgY3R4OiBTY2hlbWF0aWNDb250ZXh0KSA9PiB7XG4gICAgY29uc3Qge2J1aWxkUGF0aHN9ID0gZ2V0UHJvamVjdFRzQ29uZmlnUGF0aHModHJlZSk7XG4gICAgY29uc3QgYmFzZVBhdGggPSBwcm9jZXNzLmN3ZCgpO1xuICAgIGNvbnN0IGZhaWx1cmVzOiBzdHJpbmdbXSA9IFtdO1xuICAgIGxldCBwcm9ncmFtRXJyb3IgPSBmYWxzZTtcblxuICAgIGlmICghYnVpbGRQYXRocy5sZW5ndGgpIHtcbiAgICAgIHRocm93IG5ldyBTY2hlbWF0aWNzRXhjZXB0aW9uKFxuICAgICAgICAgICdDb3VsZCBub3QgZmluZCBhbnkgdHNjb25maWcgZmlsZS4gQ2Fubm90IG1pZ3JhdGUgdW5kZWNvcmF0ZWQgZGVyaXZlZCBjbGFzc2VzIGFuZCAnICtcbiAgICAgICAgICAndW5kZWNvcmF0ZWQgYmFzZSBjbGFzc2VzIHdoaWNoIHVzZSBESS4nKTtcbiAgICB9XG5cbiAgICBmb3IgKGNvbnN0IHRzY29uZmlnUGF0aCBvZiBidWlsZFBhdGhzKSB7XG4gICAgICBjb25zdCByZXN1bHQgPSBydW5VbmRlY29yYXRlZENsYXNzZXNNaWdyYXRpb24odHJlZSwgdHNjb25maWdQYXRoLCBiYXNlUGF0aCwgY3R4LmxvZ2dlcik7XG4gICAgICBmYWlsdXJlcy5wdXNoKC4uLnJlc3VsdC5mYWlsdXJlcyk7XG4gICAgICBwcm9ncmFtRXJyb3IgPSBwcm9ncmFtRXJyb3IgfHwgISFyZXN1bHQucHJvZ3JhbUVycm9yO1xuICAgIH1cblxuICAgIGlmIChwcm9ncmFtRXJyb3IpIHtcbiAgICAgIGN0eC5sb2dnZXIuaW5mbygnQ291bGQgbm90IG1pZ3JhdGUgYWxsIHVuZGVjb3JhdGVkIGNsYXNzZXMgdGhhdCB1c2UgZGVwZW5kZW5jeScpO1xuICAgICAgY3R4LmxvZ2dlci5pbmZvKCdpbmplY3Rpb24uIFNvbWUgcHJvamVjdCB0YXJnZXRzIGNvdWxkIG5vdCBiZSBhbmFseXplZCBkdWUgdG8nKTtcbiAgICAgIGN0eC5sb2dnZXIuaW5mbygnVHlwZVNjcmlwdCBwcm9ncmFtIGZhaWx1cmVzLlxcbicpO1xuICAgICAgY3R4LmxvZ2dlci5pbmZvKGAke01JR1JBVElPTl9SRVJVTl9NRVNTQUdFfVxcbmApO1xuXG4gICAgICBpZiAoZmFpbHVyZXMubGVuZ3RoKSB7XG4gICAgICAgIGN0eC5sb2dnZXIuaW5mbygnUGxlYXNlIG1hbnVhbGx5IGZpeCB0aGUgZm9sbG93aW5nIGZhaWx1cmVzIGFuZCByZS1ydW4gdGhlJyk7XG4gICAgICAgIGN0eC5sb2dnZXIuaW5mbygnbWlncmF0aW9uIG9uY2UgdGhlIFR5cGVTY3JpcHQgcHJvZ3JhbSBmYWlsdXJlcyBhcmUgcmVzb2x2ZWQuJyk7XG4gICAgICAgIGZhaWx1cmVzLmZvckVhY2gobWVzc2FnZSA9PiBjdHgubG9nZ2VyLndhcm4oYOKukSAgICR7bWVzc2FnZX1gKSk7XG4gICAgICB9XG4gICAgfSBlbHNlIGlmIChmYWlsdXJlcy5sZW5ndGgpIHtcbiAgICAgIGN0eC5sb2dnZXIuaW5mbygnQ291bGQgbm90IG1pZ3JhdGUgYWxsIHVuZGVjb3JhdGVkIGNsYXNzZXMgdGhhdCB1c2UgZGVwZW5kZW5jeScpO1xuICAgICAgY3R4LmxvZ2dlci5pbmZvKCdpbmplY3Rpb24uIFBsZWFzZSBtYW51YWxseSBmaXggdGhlIGZvbGxvd2luZyBmYWlsdXJlczonKTtcbiAgICAgIGZhaWx1cmVzLmZvckVhY2gobWVzc2FnZSA9PiBjdHgubG9nZ2VyLndhcm4oYOKukSAgICR7bWVzc2FnZX1gKSk7XG4gICAgfVxuICB9O1xufVxuXG5mdW5jdGlvbiBydW5VbmRlY29yYXRlZENsYXNzZXNNaWdyYXRpb24oXG4gICAgdHJlZTogVHJlZSwgdHNjb25maWdQYXRoOiBzdHJpbmcsIGJhc2VQYXRoOiBzdHJpbmcsXG4gICAgbG9nZ2VyOiBsb2dnaW5nLkxvZ2dlckFwaSk6IHtmYWlsdXJlczogc3RyaW5nW10sIHByb2dyYW1FcnJvcj86IGJvb2xlYW59IHtcbiAgY29uc3QgZmFpbHVyZXM6IHN0cmluZ1tdID0gW107XG4gIGNvbnN0IHByb2dyYW1EYXRhID0gZ3JhY2VmdWxseUNyZWF0ZVByb2dyYW0odHJlZSwgYmFzZVBhdGgsIHRzY29uZmlnUGF0aCwgbG9nZ2VyKTtcblxuICAvLyBHcmFjZWZ1bGx5IGV4aXQgaWYgdGhlIHByb2dyYW0gY291bGQgbm90IGJlIGNyZWF0ZWQuXG4gIGlmIChwcm9ncmFtRGF0YSA9PT0gbnVsbCkge1xuICAgIHJldHVybiB7ZmFpbHVyZXM6IFtdLCBwcm9ncmFtRXJyb3I6IHRydWV9O1xuICB9XG5cbiAgY29uc3Qge3Byb2dyYW0sIGNvbXBpbGVyfSA9IHByb2dyYW1EYXRhO1xuICBjb25zdCB0eXBlQ2hlY2tlciA9IHByb2dyYW0uZ2V0VHlwZUNoZWNrZXIoKTtcbiAgY29uc3QgcGFydGlhbEV2YWx1YXRvciA9IG5ldyBQYXJ0aWFsRXZhbHVhdG9yKFxuICAgICAgbmV3IFR5cGVTY3JpcHRSZWZsZWN0aW9uSG9zdCh0eXBlQ2hlY2tlciksIHR5cGVDaGVja2VyLCAvKiBkZXBlbmRlbmN5VHJhY2tlciAqLyBudWxsKTtcbiAgY29uc3QgZGVjbGFyYXRpb25Db2xsZWN0b3IgPSBuZXcgTmdEZWNsYXJhdGlvbkNvbGxlY3Rvcih0eXBlQ2hlY2tlciwgcGFydGlhbEV2YWx1YXRvcik7XG4gIGNvbnN0IHNvdXJjZUZpbGVzID0gcHJvZ3JhbS5nZXRTb3VyY2VGaWxlcygpLmZpbHRlcihcbiAgICAgIHMgPT4gIXMuaXNEZWNsYXJhdGlvbkZpbGUgJiYgIXByb2dyYW0uaXNTb3VyY2VGaWxlRnJvbUV4dGVybmFsTGlicmFyeShzKSk7XG5cbiAgLy8gQW5hbHl6ZSBzb3VyY2UgZmlsZXMgYnkgZGV0ZWN0aW5nIGFsbCBkaXJlY3RpdmVzLCBjb21wb25lbnRzIGFuZCBwcm92aWRlcnMuXG4gIHNvdXJjZUZpbGVzLmZvckVhY2goc291cmNlRmlsZSA9PiBkZWNsYXJhdGlvbkNvbGxlY3Rvci52aXNpdE5vZGUoc291cmNlRmlsZSkpO1xuXG4gIGNvbnN0IHtkZWNvcmF0ZWREaXJlY3RpdmVzLCBkZWNvcmF0ZWRQcm92aWRlcnMsIHVuZGVjb3JhdGVkRGVjbGFyYXRpb25zfSA9IGRlY2xhcmF0aW9uQ29sbGVjdG9yO1xuICBjb25zdCB0cmFuc2Zvcm0gPVxuICAgICAgbmV3IFVuZGVjb3JhdGVkQ2xhc3Nlc1RyYW5zZm9ybSh0eXBlQ2hlY2tlciwgY29tcGlsZXIsIHBhcnRpYWxFdmFsdWF0b3IsIGdldFVwZGF0ZVJlY29yZGVyKTtcbiAgY29uc3QgdXBkYXRlUmVjb3JkZXJzID0gbmV3IE1hcDx0cy5Tb3VyY2VGaWxlLCBVcGRhdGVSZWNvcmRlcj4oKTtcblxuICAvLyBSdW4gdGhlIG1pZ3JhdGlvbnMgZm9yIGRlY29yYXRlZCBwcm92aWRlcnMgYW5kIGJvdGggZGVjb3JhdGVkIGFuZCB1bmRlY29yYXRlZFxuICAvLyBkaXJlY3RpdmVzLiBUaGUgdHJhbnNmb3JtIGZhaWx1cmVzIGFyZSBjb2xsZWN0ZWQgYW5kIGNvbnZlcnRlZCBpbnRvIGh1bWFuLXJlYWRhYmxlXG4gIC8vIGZhaWx1cmVzIHdoaWNoIGNhbiBiZSBwcmludGVkIHRvIHRoZSBjb25zb2xlLlxuICBbLi4udHJhbnNmb3JtLm1pZ3JhdGVEZWNvcmF0ZWREaXJlY3RpdmVzKGRlY29yYXRlZERpcmVjdGl2ZXMpLFxuICAgLi4udHJhbnNmb3JtLm1pZ3JhdGVEZWNvcmF0ZWRQcm92aWRlcnMoZGVjb3JhdGVkUHJvdmlkZXJzKSxcbiAgIC4uLnRyYW5zZm9ybS5taWdyYXRlVW5kZWNvcmF0ZWREZWNsYXJhdGlvbnMoQXJyYXkuZnJvbSh1bmRlY29yYXRlZERlY2xhcmF0aW9ucykpXVxuICAgICAgLmZvckVhY2goKHtub2RlLCBtZXNzYWdlfSkgPT4ge1xuICAgICAgICBjb25zdCBub2RlU291cmNlRmlsZSA9IG5vZGUuZ2V0U291cmNlRmlsZSgpO1xuICAgICAgICBjb25zdCByZWxhdGl2ZUZpbGVQYXRoID0gcmVsYXRpdmUoYmFzZVBhdGgsIG5vZGVTb3VyY2VGaWxlLmZpbGVOYW1lKTtcbiAgICAgICAgY29uc3Qge2xpbmUsIGNoYXJhY3Rlcn0gPVxuICAgICAgICAgICAgdHMuZ2V0TGluZUFuZENoYXJhY3Rlck9mUG9zaXRpb24obm9kZS5nZXRTb3VyY2VGaWxlKCksIG5vZGUuZ2V0U3RhcnQoKSk7XG4gICAgICAgIGZhaWx1cmVzLnB1c2goYCR7cmVsYXRpdmVGaWxlUGF0aH1AJHtsaW5lICsgMX06JHtjaGFyYWN0ZXIgKyAxfTogJHttZXNzYWdlfWApO1xuICAgICAgfSk7XG5cbiAgLy8gUmVjb3JkIHRoZSBjaGFuZ2VzIGNvbGxlY3RlZCBpbiB0aGUgaW1wb3J0IG1hbmFnZXIgYW5kIHRyYW5zZm9ybWVyLlxuICB0cmFuc2Zvcm0ucmVjb3JkQ2hhbmdlcygpO1xuXG4gIC8vIFdhbGsgdGhyb3VnaCBlYWNoIHVwZGF0ZSByZWNvcmRlciBhbmQgY29tbWl0IHRoZSB1cGRhdGUuIFdlIG5lZWQgdG8gY29tbWl0IHRoZVxuICAvLyB1cGRhdGVzIGluIGJhdGNoZXMgcGVyIHNvdXJjZSBmaWxlIGFzIHRoZXJlIGNhbiBiZSBvbmx5IG9uZSByZWNvcmRlciBwZXIgc291cmNlXG4gIC8vIGZpbGUgaW4gb3JkZXIgdG8gYXZvaWQgc2hpZnRlZCBjaGFyYWN0ZXIgb2Zmc2V0cy5cbiAgdXBkYXRlUmVjb3JkZXJzLmZvckVhY2gocmVjb3JkZXIgPT4gcmVjb3JkZXIuY29tbWl0VXBkYXRlKCkpO1xuXG4gIHJldHVybiB7ZmFpbHVyZXN9O1xuXG4gIC8qKiBHZXRzIHRoZSB1cGRhdGUgcmVjb3JkZXIgZm9yIHRoZSBzcGVjaWZpZWQgc291cmNlIGZpbGUuICovXG4gIGZ1bmN0aW9uIGdldFVwZGF0ZVJlY29yZGVyKHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUpOiBVcGRhdGVSZWNvcmRlciB7XG4gICAgaWYgKHVwZGF0ZVJlY29yZGVycy5oYXMoc291cmNlRmlsZSkpIHtcbiAgICAgIHJldHVybiB1cGRhdGVSZWNvcmRlcnMuZ2V0KHNvdXJjZUZpbGUpICE7XG4gICAgfVxuICAgIGNvbnN0IHRyZWVSZWNvcmRlciA9IHRyZWUuYmVnaW5VcGRhdGUocmVsYXRpdmUoYmFzZVBhdGgsIHNvdXJjZUZpbGUuZmlsZU5hbWUpKTtcbiAgICBjb25zdCByZWNvcmRlcjogVXBkYXRlUmVjb3JkZXIgPSB7XG4gICAgICBhZGRDbGFzc0NvbW1lbnQobm9kZTogdHMuQ2xhc3NEZWNsYXJhdGlvbiwgdGV4dDogc3RyaW5nKSB7XG4gICAgICAgIHRyZWVSZWNvcmRlci5pbnNlcnRMZWZ0KG5vZGUubWVtYmVycy5wb3MsIGBcXG4gIC8vICR7dGV4dH1cXG5gKTtcbiAgICAgIH0sXG4gICAgICBhZGRDbGFzc0RlY29yYXRvcihub2RlOiB0cy5DbGFzc0RlY2xhcmF0aW9uLCB0ZXh0OiBzdHJpbmcpIHtcbiAgICAgICAgLy8gTmV3IGltcG9ydHMgc2hvdWxkIGJlIGluc2VydGVkIGF0IHRoZSBsZWZ0IHdoaWxlIGRlY29yYXRvcnMgc2hvdWxkIGJlIGluc2VydGVkXG4gICAgICAgIC8vIGF0IHRoZSByaWdodCBpbiBvcmRlciB0byBlbnN1cmUgdGhhdCBpbXBvcnRzIGFyZSBpbnNlcnRlZCBiZWZvcmUgdGhlIGRlY29yYXRvclxuICAgICAgICAvLyBpZiB0aGUgc3RhcnQgcG9zaXRpb24gb2YgaW1wb3J0IGFuZCBkZWNvcmF0b3IgaXMgdGhlIHNvdXJjZSBmaWxlIHN0YXJ0LlxuICAgICAgICB0cmVlUmVjb3JkZXIuaW5zZXJ0UmlnaHQobm9kZS5nZXRTdGFydCgpLCBgJHt0ZXh0fVxcbmApO1xuICAgICAgfSxcbiAgICAgIGFkZE5ld0ltcG9ydChzdGFydDogbnVtYmVyLCBpbXBvcnRUZXh0OiBzdHJpbmcpIHtcbiAgICAgICAgLy8gTmV3IGltcG9ydHMgc2hvdWxkIGJlIGluc2VydGVkIGF0IHRoZSBsZWZ0IHdoaWxlIGRlY29yYXRvcnMgc2hvdWxkIGJlIGluc2VydGVkXG4gICAgICAgIC8vIGF0IHRoZSByaWdodCBpbiBvcmRlciB0byBlbnN1cmUgdGhhdCBpbXBvcnRzIGFyZSBpbnNlcnRlZCBiZWZvcmUgdGhlIGRlY29yYXRvclxuICAgICAgICAvLyBpZiB0aGUgc3RhcnQgcG9zaXRpb24gb2YgaW1wb3J0IGFuZCBkZWNvcmF0b3IgaXMgdGhlIHNvdXJjZSBmaWxlIHN0YXJ0LlxuICAgICAgICB0cmVlUmVjb3JkZXIuaW5zZXJ0TGVmdChzdGFydCwgaW1wb3J0VGV4dCk7XG4gICAgICB9LFxuICAgICAgdXBkYXRlRXhpc3RpbmdJbXBvcnQobmFtZWRCaW5kaW5nczogdHMuTmFtZWRJbXBvcnRzLCBuZXdOYW1lZEJpbmRpbmdzOiBzdHJpbmcpIHtcbiAgICAgICAgdHJlZVJlY29yZGVyLnJlbW92ZShuYW1lZEJpbmRpbmdzLmdldFN0YXJ0KCksIG5hbWVkQmluZGluZ3MuZ2V0V2lkdGgoKSk7XG4gICAgICAgIHRyZWVSZWNvcmRlci5pbnNlcnRSaWdodChuYW1lZEJpbmRpbmdzLmdldFN0YXJ0KCksIG5ld05hbWVkQmluZGluZ3MpO1xuICAgICAgfSxcbiAgICAgIGNvbW1pdFVwZGF0ZSgpIHsgdHJlZS5jb21taXRVcGRhdGUodHJlZVJlY29yZGVyKTsgfVxuICAgIH07XG4gICAgdXBkYXRlUmVjb3JkZXJzLnNldChzb3VyY2VGaWxlLCByZWNvcmRlcik7XG4gICAgcmV0dXJuIHJlY29yZGVyO1xuICB9XG59XG5cbmZ1bmN0aW9uIGdldEVycm9yRGlhZ25vc3RpY3MoZGlhZ25vc3RpY3M6IFJlYWRvbmx5QXJyYXk8dHMuRGlhZ25vc3RpY3xOZ0RpYWdub3N0aWM+KSB7XG4gIHJldHVybiA8dHMuRGlhZ25vc3RpY1tdPmRpYWdub3N0aWNzLmZpbHRlcihkID0+IGQuY2F0ZWdvcnkgPT09IHRzLkRpYWdub3N0aWNDYXRlZ29yeS5FcnJvcik7XG59XG5cbmZ1bmN0aW9uIGdyYWNlZnVsbHlDcmVhdGVQcm9ncmFtKFxuICAgIHRyZWU6IFRyZWUsIGJhc2VQYXRoOiBzdHJpbmcsIHRzY29uZmlnUGF0aDogc3RyaW5nLFxuICAgIGxvZ2dlcjogbG9nZ2luZy5Mb2dnZXJBcGkpOiB7Y29tcGlsZXI6IEFvdENvbXBpbGVyLCBwcm9ncmFtOiB0cy5Qcm9ncmFtfXxudWxsIHtcbiAgdHJ5IHtcbiAgICBjb25zdCB7bmdjUHJvZ3JhbSwgaG9zdCwgcHJvZ3JhbSwgY29tcGlsZXJ9ID0gY3JlYXRlTmdjUHJvZ3JhbShcbiAgICAgICAgKG9wdGlvbnMpID0+IGNyZWF0ZU1pZ3JhdGlvbkNvbXBpbGVySG9zdCh0cmVlLCBvcHRpb25zLCBiYXNlUGF0aCksIHRzY29uZmlnUGF0aCk7XG4gICAgY29uc3Qgc3ludGFjdGljRGlhZ25vc3RpY3MgPSBnZXRFcnJvckRpYWdub3N0aWNzKG5nY1Byb2dyYW0uZ2V0VHNTeW50YWN0aWNEaWFnbm9zdGljcygpKTtcbiAgICBjb25zdCBzdHJ1Y3R1cmFsRGlhZ25vc3RpY3MgPSBnZXRFcnJvckRpYWdub3N0aWNzKG5nY1Byb2dyYW0uZ2V0TmdTdHJ1Y3R1cmFsRGlhZ25vc3RpY3MoKSk7XG4gICAgY29uc3QgY29uZmlnRGlhZ25vc3RpY3MgPSBnZXRFcnJvckRpYWdub3N0aWNzKFxuICAgICAgICBbLi4ucHJvZ3JhbS5nZXRPcHRpb25zRGlhZ25vc3RpY3MoKSwgLi4ubmdjUHJvZ3JhbS5nZXROZ09wdGlvbkRpYWdub3N0aWNzKCldKTtcblxuICAgIGlmIChjb25maWdEaWFnbm9zdGljcy5sZW5ndGgpIHtcbiAgICAgIGxvZ2dlci53YXJuKFxuICAgICAgICAgIGBcXG5UeXBlU2NyaXB0IHByb2plY3QgXCIke3RzY29uZmlnUGF0aH1cIiBoYXMgY29uZmlndXJhdGlvbiBlcnJvcnMuIFRoaXMgY291bGQgY2F1c2UgYCArXG4gICAgICAgICAgYGFuIGluY29tcGxldGUgbWlncmF0aW9uLiBQbGVhc2UgZml4IHRoZSBmb2xsb3dpbmcgZmFpbHVyZXMgYW5kIHJlcnVuIHRoZSBtaWdyYXRpb246YCk7XG4gICAgICBsb2dnZXIuZXJyb3IodHMuZm9ybWF0RGlhZ25vc3RpY3MoY29uZmlnRGlhZ25vc3RpY3MsIGhvc3QpKTtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIC8vIFN5bnRhY3RpYyBUeXBlU2NyaXB0IGVycm9ycyBjYW4gdGhyb3cgb2ZmIHRoZSBxdWVyeSBhbmFseXNpcyBhbmQgdGhlcmVmb3JlIHdlIHdhbnRcbiAgICAvLyB0byBub3RpZnkgdGhlIGRldmVsb3BlciB0aGF0IHdlIGNvdWxkbid0IGFuYWx5emUgcGFydHMgb2YgdGhlIHByb2plY3QuIERldmVsb3BlcnNcbiAgICAvLyBjYW4ganVzdCByZS1ydW4gdGhlIG1pZ3JhdGlvbiBhZnRlciBmaXhpbmcgdGhlc2UgZmFpbHVyZXMuXG4gICAgaWYgKHN5bnRhY3RpY0RpYWdub3N0aWNzLmxlbmd0aCkge1xuICAgICAgbG9nZ2VyLndhcm4oXG4gICAgICAgICAgYFxcblR5cGVTY3JpcHQgcHJvamVjdCBcIiR7dHNjb25maWdQYXRofVwiIGhhcyBzeW50YWN0aWNhbCBlcnJvcnMgd2hpY2ggY291bGQgY2F1c2UgYCArXG4gICAgICAgICAgYGFuIGluY29tcGxldGUgbWlncmF0aW9uLiBQbGVhc2UgZml4IHRoZSBmb2xsb3dpbmcgZmFpbHVyZXMgYW5kIHJlcnVuIHRoZSBtaWdyYXRpb246YCk7XG4gICAgICBsb2dnZXIuZXJyb3IodHMuZm9ybWF0RGlhZ25vc3RpY3Moc3ludGFjdGljRGlhZ25vc3RpY3MsIGhvc3QpKTtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIGlmIChzdHJ1Y3R1cmFsRGlhZ25vc3RpY3MubGVuZ3RoKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IodHMuZm9ybWF0RGlhZ25vc3RpY3MoPHRzLkRpYWdub3N0aWNbXT5zdHJ1Y3R1cmFsRGlhZ25vc3RpY3MsIGhvc3QpKTtcbiAgICB9XG5cbiAgICByZXR1cm4ge3Byb2dyYW0sIGNvbXBpbGVyfTtcbiAgfSBjYXRjaCAoZSkge1xuICAgIGxvZ2dlci53YXJuKGBcXG4ke01JR1JBVElPTl9BT1RfRkFJTFVSRX0gVGhlIGZvbGxvd2luZyBwcm9qZWN0IGZhaWxlZDogJHt0c2NvbmZpZ1BhdGh9XFxuYCk7XG4gICAgbG9nZ2VyLmVycm9yKGAke2UudG9TdHJpbmcoKX1cXG5gKTtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxufVxuIl19