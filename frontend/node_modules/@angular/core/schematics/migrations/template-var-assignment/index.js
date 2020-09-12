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
        define("@angular/core/schematics/migrations/template-var-assignment", ["require", "exports", "@angular-devkit/core", "@angular-devkit/schematics", "path", "@angular/core/schematics/utils/ng_component_template", "@angular/core/schematics/utils/project_tsconfig_paths", "@angular/core/schematics/utils/typescript/compiler_host", "@angular/core/schematics/migrations/template-var-assignment/analyze_template"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const core_1 = require("@angular-devkit/core");
    const schematics_1 = require("@angular-devkit/schematics");
    const path_1 = require("path");
    const ng_component_template_1 = require("@angular/core/schematics/utils/ng_component_template");
    const project_tsconfig_paths_1 = require("@angular/core/schematics/utils/project_tsconfig_paths");
    const compiler_host_1 = require("@angular/core/schematics/utils/typescript/compiler_host");
    const analyze_template_1 = require("@angular/core/schematics/migrations/template-var-assignment/analyze_template");
    const README_URL = 'https://v8.angular.io/guide/deprecations#cannot-assign-to-template-variables';
    const FAILURE_MESSAGE = `Found assignment to template variable.`;
    /** Entry point for the V8 template variable assignment schematic. */
    function default_1() {
        return (tree, context) => {
            const { buildPaths, testPaths } = project_tsconfig_paths_1.getProjectTsConfigPaths(tree);
            const basePath = process.cwd();
            if (!buildPaths.length && !testPaths.length) {
                throw new schematics_1.SchematicsException('Could not find any tsconfig file. Cannot check templates for template variable ' +
                    'assignments.');
            }
            for (const tsconfigPath of [...buildPaths, ...testPaths]) {
                runTemplateVariableAssignmentCheck(tree, tsconfigPath, basePath, context.logger);
            }
        };
    }
    exports.default = default_1;
    /**
     * Runs the template variable assignment check. Warns developers
     * if values are assigned to template variables within output bindings.
     */
    function runTemplateVariableAssignmentCheck(tree, tsconfigPath, basePath, logger) {
        const { program } = compiler_host_1.createMigrationProgram(tree, tsconfigPath, basePath);
        const typeChecker = program.getTypeChecker();
        const templateVisitor = new ng_component_template_1.NgComponentTemplateVisitor(typeChecker);
        const sourceFiles = program.getSourceFiles().filter(f => !f.isDeclarationFile && !program.isSourceFileFromExternalLibrary(f));
        // Analyze source files by detecting HTML templates.
        sourceFiles.forEach(sourceFile => templateVisitor.visitNode(sourceFile));
        const { resolvedTemplates } = templateVisitor;
        const collectedFailures = [];
        // Analyze each resolved template and print a warning for property writes to
        // template variables.
        resolvedTemplates.forEach(template => {
            const filePath = template.filePath;
            const nodes = analyze_template_1.analyzeResolvedTemplate(template);
            if (!nodes) {
                return;
            }
            const displayFilePath = core_1.normalize(path_1.relative(basePath, filePath));
            nodes.forEach(n => {
                const { line, character } = template.getCharacterAndLineOfPosition(n.start);
                collectedFailures.push(`${displayFilePath}@${line + 1}:${character + 1}: ${FAILURE_MESSAGE}`);
            });
        });
        if (collectedFailures.length) {
            logger.info('---- Template Variable Assignment schematic ----');
            logger.info('Assignments to template variables will no longer work with Ivy as');
            logger.info('template variables are effectively constants in Ivy. Read more about');
            logger.info(`this change here: ${README_URL}`);
            logger.info('');
            logger.info('The following template assignments were found:');
            collectedFailures.forEach(failure => logger.warn(`⮑   ${failure}`));
        }
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NjaGVtYXRpY3MvbWlncmF0aW9ucy90ZW1wbGF0ZS12YXItYXNzaWdubWVudC9pbmRleC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7OztJQUVILCtDQUF3RDtJQUN4RCwyREFBNkY7SUFDN0YsK0JBQThCO0lBRTlCLGdHQUE2RTtJQUM3RSxrR0FBMkU7SUFDM0UsMkZBQTRFO0lBRTVFLG1IQUEyRDtJQUkzRCxNQUFNLFVBQVUsR0FBRyw4RUFBOEUsQ0FBQztJQUNsRyxNQUFNLGVBQWUsR0FBRyx3Q0FBd0MsQ0FBQztJQUVqRSxxRUFBcUU7SUFDckU7UUFDRSxPQUFPLENBQUMsSUFBVSxFQUFFLE9BQXlCLEVBQUUsRUFBRTtZQUMvQyxNQUFNLEVBQUMsVUFBVSxFQUFFLFNBQVMsRUFBQyxHQUFHLGdEQUF1QixDQUFDLElBQUksQ0FBQyxDQUFDO1lBQzlELE1BQU0sUUFBUSxHQUFHLE9BQU8sQ0FBQyxHQUFHLEVBQUUsQ0FBQztZQUUvQixJQUFJLENBQUMsVUFBVSxDQUFDLE1BQU0sSUFBSSxDQUFDLFNBQVMsQ0FBQyxNQUFNLEVBQUU7Z0JBQzNDLE1BQU0sSUFBSSxnQ0FBbUIsQ0FDekIsaUZBQWlGO29CQUNqRixjQUFjLENBQUMsQ0FBQzthQUNyQjtZQUVELEtBQUssTUFBTSxZQUFZLElBQUksQ0FBQyxHQUFHLFVBQVUsRUFBRSxHQUFHLFNBQVMsQ0FBQyxFQUFFO2dCQUN4RCxrQ0FBa0MsQ0FBQyxJQUFJLEVBQUUsWUFBWSxFQUFFLFFBQVEsRUFBRSxPQUFPLENBQUMsTUFBTSxDQUFDLENBQUM7YUFDbEY7UUFDSCxDQUFDLENBQUM7SUFDSixDQUFDO0lBZkQsNEJBZUM7SUFFRDs7O09BR0c7SUFDSCxTQUFTLGtDQUFrQyxDQUN2QyxJQUFVLEVBQUUsWUFBb0IsRUFBRSxRQUFnQixFQUFFLE1BQWM7UUFDcEUsTUFBTSxFQUFDLE9BQU8sRUFBQyxHQUFHLHNDQUFzQixDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsUUFBUSxDQUFDLENBQUM7UUFDdkUsTUFBTSxXQUFXLEdBQUcsT0FBTyxDQUFDLGNBQWMsRUFBRSxDQUFDO1FBQzdDLE1BQU0sZUFBZSxHQUFHLElBQUksa0RBQTBCLENBQUMsV0FBVyxDQUFDLENBQUM7UUFDcEUsTUFBTSxXQUFXLEdBQUcsT0FBTyxDQUFDLGNBQWMsRUFBRSxDQUFDLE1BQU0sQ0FDL0MsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxpQkFBaUIsSUFBSSxDQUFDLE9BQU8sQ0FBQywrQkFBK0IsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBRTlFLG9EQUFvRDtRQUNwRCxXQUFXLENBQUMsT0FBTyxDQUFDLFVBQVUsQ0FBQyxFQUFFLENBQUMsZUFBZSxDQUFDLFNBQVMsQ0FBQyxVQUFVLENBQUMsQ0FBQyxDQUFDO1FBRXpFLE1BQU0sRUFBQyxpQkFBaUIsRUFBQyxHQUFHLGVBQWUsQ0FBQztRQUM1QyxNQUFNLGlCQUFpQixHQUFhLEVBQUUsQ0FBQztRQUV2Qyw0RUFBNEU7UUFDNUUsc0JBQXNCO1FBQ3RCLGlCQUFpQixDQUFDLE9BQU8sQ0FBQyxRQUFRLENBQUMsRUFBRTtZQUNuQyxNQUFNLFFBQVEsR0FBRyxRQUFRLENBQUMsUUFBUSxDQUFDO1lBQ25DLE1BQU0sS0FBSyxHQUFHLDBDQUF1QixDQUFDLFFBQVEsQ0FBQyxDQUFDO1lBRWhELElBQUksQ0FBQyxLQUFLLEVBQUU7Z0JBQ1YsT0FBTzthQUNSO1lBRUQsTUFBTSxlQUFlLEdBQUcsZ0JBQVMsQ0FBQyxlQUFRLENBQUMsUUFBUSxFQUFFLFFBQVEsQ0FBQyxDQUFDLENBQUM7WUFFaEUsS0FBSyxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUMsRUFBRTtnQkFDaEIsTUFBTSxFQUFDLElBQUksRUFBRSxTQUFTLEVBQUMsR0FBRyxRQUFRLENBQUMsNkJBQTZCLENBQUMsQ0FBQyxDQUFDLEtBQUssQ0FBQyxDQUFDO2dCQUMxRSxpQkFBaUIsQ0FBQyxJQUFJLENBQUMsR0FBRyxlQUFlLElBQUksSUFBSSxHQUFHLENBQUMsSUFBSSxTQUFTLEdBQUcsQ0FBQyxLQUFLLGVBQWUsRUFBRSxDQUFDLENBQUM7WUFDaEcsQ0FBQyxDQUFDLENBQUM7UUFDTCxDQUFDLENBQUMsQ0FBQztRQUVILElBQUksaUJBQWlCLENBQUMsTUFBTSxFQUFFO1lBQzVCLE1BQU0sQ0FBQyxJQUFJLENBQUMsa0RBQWtELENBQUMsQ0FBQztZQUNoRSxNQUFNLENBQUMsSUFBSSxDQUFDLG1FQUFtRSxDQUFDLENBQUM7WUFDakYsTUFBTSxDQUFDLElBQUksQ0FBQyxzRUFBc0UsQ0FBQyxDQUFDO1lBQ3BGLE1BQU0sQ0FBQyxJQUFJLENBQUMscUJBQXFCLFVBQVUsRUFBRSxDQUFDLENBQUM7WUFDL0MsTUFBTSxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsQ0FBQztZQUNoQixNQUFNLENBQUMsSUFBSSxDQUFDLGdEQUFnRCxDQUFDLENBQUM7WUFDOUQsaUJBQWlCLENBQUMsT0FBTyxDQUFDLE9BQU8sQ0FBQyxFQUFFLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxPQUFPLE9BQU8sRUFBRSxDQUFDLENBQUMsQ0FBQztTQUNyRTtJQUNILENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtsb2dnaW5nLCBub3JtYWxpemV9IGZyb20gJ0Bhbmd1bGFyLWRldmtpdC9jb3JlJztcbmltcG9ydCB7UnVsZSwgU2NoZW1hdGljQ29udGV4dCwgU2NoZW1hdGljc0V4Y2VwdGlvbiwgVHJlZX0gZnJvbSAnQGFuZ3VsYXItZGV2a2l0L3NjaGVtYXRpY3MnO1xuaW1wb3J0IHtyZWxhdGl2ZX0gZnJvbSAncGF0aCc7XG5cbmltcG9ydCB7TmdDb21wb25lbnRUZW1wbGF0ZVZpc2l0b3J9IGZyb20gJy4uLy4uL3V0aWxzL25nX2NvbXBvbmVudF90ZW1wbGF0ZSc7XG5pbXBvcnQge2dldFByb2plY3RUc0NvbmZpZ1BhdGhzfSBmcm9tICcuLi8uLi91dGlscy9wcm9qZWN0X3RzY29uZmlnX3BhdGhzJztcbmltcG9ydCB7Y3JlYXRlTWlncmF0aW9uUHJvZ3JhbX0gZnJvbSAnLi4vLi4vdXRpbHMvdHlwZXNjcmlwdC9jb21waWxlcl9ob3N0JztcblxuaW1wb3J0IHthbmFseXplUmVzb2x2ZWRUZW1wbGF0ZX0gZnJvbSAnLi9hbmFseXplX3RlbXBsYXRlJztcblxudHlwZSBMb2dnZXIgPSBsb2dnaW5nLkxvZ2dlckFwaTtcblxuY29uc3QgUkVBRE1FX1VSTCA9ICdodHRwczovL3Y4LmFuZ3VsYXIuaW8vZ3VpZGUvZGVwcmVjYXRpb25zI2Nhbm5vdC1hc3NpZ24tdG8tdGVtcGxhdGUtdmFyaWFibGVzJztcbmNvbnN0IEZBSUxVUkVfTUVTU0FHRSA9IGBGb3VuZCBhc3NpZ25tZW50IHRvIHRlbXBsYXRlIHZhcmlhYmxlLmA7XG5cbi8qKiBFbnRyeSBwb2ludCBmb3IgdGhlIFY4IHRlbXBsYXRlIHZhcmlhYmxlIGFzc2lnbm1lbnQgc2NoZW1hdGljLiAqL1xuZXhwb3J0IGRlZmF1bHQgZnVuY3Rpb24oKTogUnVsZSB7XG4gIHJldHVybiAodHJlZTogVHJlZSwgY29udGV4dDogU2NoZW1hdGljQ29udGV4dCkgPT4ge1xuICAgIGNvbnN0IHtidWlsZFBhdGhzLCB0ZXN0UGF0aHN9ID0gZ2V0UHJvamVjdFRzQ29uZmlnUGF0aHModHJlZSk7XG4gICAgY29uc3QgYmFzZVBhdGggPSBwcm9jZXNzLmN3ZCgpO1xuXG4gICAgaWYgKCFidWlsZFBhdGhzLmxlbmd0aCAmJiAhdGVzdFBhdGhzLmxlbmd0aCkge1xuICAgICAgdGhyb3cgbmV3IFNjaGVtYXRpY3NFeGNlcHRpb24oXG4gICAgICAgICAgJ0NvdWxkIG5vdCBmaW5kIGFueSB0c2NvbmZpZyBmaWxlLiBDYW5ub3QgY2hlY2sgdGVtcGxhdGVzIGZvciB0ZW1wbGF0ZSB2YXJpYWJsZSAnICtcbiAgICAgICAgICAnYXNzaWdubWVudHMuJyk7XG4gICAgfVxuXG4gICAgZm9yIChjb25zdCB0c2NvbmZpZ1BhdGggb2YgWy4uLmJ1aWxkUGF0aHMsIC4uLnRlc3RQYXRoc10pIHtcbiAgICAgIHJ1blRlbXBsYXRlVmFyaWFibGVBc3NpZ25tZW50Q2hlY2sodHJlZSwgdHNjb25maWdQYXRoLCBiYXNlUGF0aCwgY29udGV4dC5sb2dnZXIpO1xuICAgIH1cbiAgfTtcbn1cblxuLyoqXG4gKiBSdW5zIHRoZSB0ZW1wbGF0ZSB2YXJpYWJsZSBhc3NpZ25tZW50IGNoZWNrLiBXYXJucyBkZXZlbG9wZXJzXG4gKiBpZiB2YWx1ZXMgYXJlIGFzc2lnbmVkIHRvIHRlbXBsYXRlIHZhcmlhYmxlcyB3aXRoaW4gb3V0cHV0IGJpbmRpbmdzLlxuICovXG5mdW5jdGlvbiBydW5UZW1wbGF0ZVZhcmlhYmxlQXNzaWdubWVudENoZWNrKFxuICAgIHRyZWU6IFRyZWUsIHRzY29uZmlnUGF0aDogc3RyaW5nLCBiYXNlUGF0aDogc3RyaW5nLCBsb2dnZXI6IExvZ2dlcikge1xuICBjb25zdCB7cHJvZ3JhbX0gPSBjcmVhdGVNaWdyYXRpb25Qcm9ncmFtKHRyZWUsIHRzY29uZmlnUGF0aCwgYmFzZVBhdGgpO1xuICBjb25zdCB0eXBlQ2hlY2tlciA9IHByb2dyYW0uZ2V0VHlwZUNoZWNrZXIoKTtcbiAgY29uc3QgdGVtcGxhdGVWaXNpdG9yID0gbmV3IE5nQ29tcG9uZW50VGVtcGxhdGVWaXNpdG9yKHR5cGVDaGVja2VyKTtcbiAgY29uc3Qgc291cmNlRmlsZXMgPSBwcm9ncmFtLmdldFNvdXJjZUZpbGVzKCkuZmlsdGVyKFxuICAgICAgZiA9PiAhZi5pc0RlY2xhcmF0aW9uRmlsZSAmJiAhcHJvZ3JhbS5pc1NvdXJjZUZpbGVGcm9tRXh0ZXJuYWxMaWJyYXJ5KGYpKTtcblxuICAvLyBBbmFseXplIHNvdXJjZSBmaWxlcyBieSBkZXRlY3RpbmcgSFRNTCB0ZW1wbGF0ZXMuXG4gIHNvdXJjZUZpbGVzLmZvckVhY2goc291cmNlRmlsZSA9PiB0ZW1wbGF0ZVZpc2l0b3IudmlzaXROb2RlKHNvdXJjZUZpbGUpKTtcblxuICBjb25zdCB7cmVzb2x2ZWRUZW1wbGF0ZXN9ID0gdGVtcGxhdGVWaXNpdG9yO1xuICBjb25zdCBjb2xsZWN0ZWRGYWlsdXJlczogc3RyaW5nW10gPSBbXTtcblxuICAvLyBBbmFseXplIGVhY2ggcmVzb2x2ZWQgdGVtcGxhdGUgYW5kIHByaW50IGEgd2FybmluZyBmb3IgcHJvcGVydHkgd3JpdGVzIHRvXG4gIC8vIHRlbXBsYXRlIHZhcmlhYmxlcy5cbiAgcmVzb2x2ZWRUZW1wbGF0ZXMuZm9yRWFjaCh0ZW1wbGF0ZSA9PiB7XG4gICAgY29uc3QgZmlsZVBhdGggPSB0ZW1wbGF0ZS5maWxlUGF0aDtcbiAgICBjb25zdCBub2RlcyA9IGFuYWx5emVSZXNvbHZlZFRlbXBsYXRlKHRlbXBsYXRlKTtcblxuICAgIGlmICghbm9kZXMpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG5cbiAgICBjb25zdCBkaXNwbGF5RmlsZVBhdGggPSBub3JtYWxpemUocmVsYXRpdmUoYmFzZVBhdGgsIGZpbGVQYXRoKSk7XG5cbiAgICBub2Rlcy5mb3JFYWNoKG4gPT4ge1xuICAgICAgY29uc3Qge2xpbmUsIGNoYXJhY3Rlcn0gPSB0ZW1wbGF0ZS5nZXRDaGFyYWN0ZXJBbmRMaW5lT2ZQb3NpdGlvbihuLnN0YXJ0KTtcbiAgICAgIGNvbGxlY3RlZEZhaWx1cmVzLnB1c2goYCR7ZGlzcGxheUZpbGVQYXRofUAke2xpbmUgKyAxfToke2NoYXJhY3RlciArIDF9OiAke0ZBSUxVUkVfTUVTU0FHRX1gKTtcbiAgICB9KTtcbiAgfSk7XG5cbiAgaWYgKGNvbGxlY3RlZEZhaWx1cmVzLmxlbmd0aCkge1xuICAgIGxvZ2dlci5pbmZvKCctLS0tIFRlbXBsYXRlIFZhcmlhYmxlIEFzc2lnbm1lbnQgc2NoZW1hdGljIC0tLS0nKTtcbiAgICBsb2dnZXIuaW5mbygnQXNzaWdubWVudHMgdG8gdGVtcGxhdGUgdmFyaWFibGVzIHdpbGwgbm8gbG9uZ2VyIHdvcmsgd2l0aCBJdnkgYXMnKTtcbiAgICBsb2dnZXIuaW5mbygndGVtcGxhdGUgdmFyaWFibGVzIGFyZSBlZmZlY3RpdmVseSBjb25zdGFudHMgaW4gSXZ5LiBSZWFkIG1vcmUgYWJvdXQnKTtcbiAgICBsb2dnZXIuaW5mbyhgdGhpcyBjaGFuZ2UgaGVyZTogJHtSRUFETUVfVVJMfWApO1xuICAgIGxvZ2dlci5pbmZvKCcnKTtcbiAgICBsb2dnZXIuaW5mbygnVGhlIGZvbGxvd2luZyB0ZW1wbGF0ZSBhc3NpZ25tZW50cyB3ZXJlIGZvdW5kOicpO1xuICAgIGNvbGxlY3RlZEZhaWx1cmVzLmZvckVhY2goZmFpbHVyZSA9PiBsb2dnZXIud2Fybihg4q6RICAgJHtmYWlsdXJlfWApKTtcbiAgfVxufVxuIl19