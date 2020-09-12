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
        define("@angular/core/schematics/migrations/renderer-to-renderer2", ["require", "exports", "@angular-devkit/schematics", "path", "typescript", "@angular/core/schematics/utils/project_tsconfig_paths", "@angular/core/schematics/utils/typescript/compiler_host", "@angular/core/schematics/utils/typescript/parse_tsconfig", "@angular/core/schematics/migrations/renderer-to-renderer2/helpers", "@angular/core/schematics/migrations/renderer-to-renderer2/migration", "@angular/core/schematics/migrations/renderer-to-renderer2/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const schematics_1 = require("@angular-devkit/schematics");
    const path_1 = require("path");
    const ts = require("typescript");
    const project_tsconfig_paths_1 = require("@angular/core/schematics/utils/project_tsconfig_paths");
    const compiler_host_1 = require("@angular/core/schematics/utils/typescript/compiler_host");
    const parse_tsconfig_1 = require("@angular/core/schematics/utils/typescript/parse_tsconfig");
    const helpers_1 = require("@angular/core/schematics/migrations/renderer-to-renderer2/helpers");
    const migration_1 = require("@angular/core/schematics/migrations/renderer-to-renderer2/migration");
    const util_1 = require("@angular/core/schematics/migrations/renderer-to-renderer2/util");
    const MODULE_AUGMENTATION_FILENAME = 'ɵɵRENDERER_MIGRATION_CORE_AUGMENTATION.d.ts';
    /**
     * Migration that switches from `Renderer` to `Renderer2`. More information on how it works:
     * https://hackmd.angular.io/UTzUZTnPRA-cSa_4mHyfYw
     */
    function default_1() {
        return (tree) => {
            const { buildPaths, testPaths } = project_tsconfig_paths_1.getProjectTsConfigPaths(tree);
            const basePath = process.cwd();
            const allPaths = [...buildPaths, ...testPaths];
            if (!allPaths.length) {
                throw new schematics_1.SchematicsException('Could not find any tsconfig file. Cannot migrate Renderer usages to Renderer2.');
            }
            for (const tsconfigPath of allPaths) {
                runRendererToRenderer2Migration(tree, tsconfigPath, basePath);
            }
        };
    }
    exports.default = default_1;
    function runRendererToRenderer2Migration(tree, tsconfigPath, basePath) {
        const parsed = parse_tsconfig_1.parseTsconfigFile(tsconfigPath, path_1.dirname(tsconfigPath));
        const host = compiler_host_1.createMigrationCompilerHost(tree, parsed.options, basePath, fileName => {
            // In case the module augmentation file has been requested, we return a source file that
            // augments "@angular/core" to include a named export called "Renderer". This ensures that
            // we can rely on the type checker for this migration in v9 where "Renderer" has been removed.
            if (fileName === MODULE_AUGMENTATION_FILENAME) {
                return `
        import '@angular/core';
        declare module "@angular/core" {
          class Renderer {}
        }
      `;
            }
            return null;
        });
        const program = ts.createProgram(parsed.fileNames.concat(MODULE_AUGMENTATION_FILENAME), parsed.options, host);
        const typeChecker = program.getTypeChecker();
        const printer = ts.createPrinter();
        const sourceFiles = program.getSourceFiles().filter(f => !f.isDeclarationFile && !program.isSourceFileFromExternalLibrary(f));
        sourceFiles.forEach(sourceFile => {
            const rendererImport = util_1.findCoreImport(sourceFile, 'Renderer');
            // If there are no imports for the `Renderer`, we can exit early.
            if (!rendererImport) {
                return;
            }
            const { typedNodes, methodCalls, forwardRefs } = util_1.findRendererReferences(sourceFile, typeChecker, rendererImport);
            const update = tree.beginUpdate(path_1.relative(basePath, sourceFile.fileName));
            const helpersToAdd = new Set();
            // Change the `Renderer` import to `Renderer2`.
            update.remove(rendererImport.getStart(), rendererImport.getWidth());
            update.insertRight(rendererImport.getStart(), printer.printNode(ts.EmitHint.Unspecified, migration_1.replaceImport(rendererImport, 'Renderer', 'Renderer2'), sourceFile));
            // Change the method parameter and property types to `Renderer2`.
            typedNodes.forEach(node => {
                const type = node.type;
                if (type) {
                    update.remove(type.getStart(), type.getWidth());
                    update.insertRight(type.getStart(), 'Renderer2');
                }
            });
            // Change all identifiers inside `forwardRef` referring to the `Renderer`.
            forwardRefs.forEach(identifier => {
                update.remove(identifier.getStart(), identifier.getWidth());
                update.insertRight(identifier.getStart(), 'Renderer2');
            });
            // Migrate all of the method calls.
            methodCalls.forEach(call => {
                const { node, requiredHelpers } = migration_1.migrateExpression(call, typeChecker);
                if (node) {
                    // If we migrated the node to a new expression, replace only the call expression.
                    update.remove(call.getStart(), call.getWidth());
                    update.insertRight(call.getStart(), printer.printNode(ts.EmitHint.Unspecified, node, sourceFile));
                }
                else if (call.parent && ts.isExpressionStatement(call.parent)) {
                    // Otherwise if the call is inside an expression statement, drop the entire statement.
                    // This takes care of any trailing semicolons. We only need to drop nodes for cases like
                    // `setBindingDebugInfo` which have been noop for a while so they can be removed safely.
                    update.remove(call.parent.getStart(), call.parent.getWidth());
                }
                if (requiredHelpers) {
                    requiredHelpers.forEach(helperName => helpersToAdd.add(helperName));
                }
            });
            // Some of the methods can't be mapped directly to `Renderer2` and need extra logic around them.
            // The safest way to do so is to declare helper functions similar to the ones emitted by TS
            // which encapsulate the extra "glue" logic. We should only emit these functions once per file.
            helpersToAdd.forEach(helperName => {
                update.insertLeft(sourceFile.endOfFileToken.getStart(), helpers_1.getHelper(helperName, sourceFile, printer));
            });
            tree.commitUpdate(update);
        });
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NjaGVtYXRpY3MvbWlncmF0aW9ucy9yZW5kZXJlci10by1yZW5kZXJlcjIvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7SUFFSCwyREFBNkY7SUFDN0YsK0JBQXVDO0lBQ3ZDLGlDQUFpQztJQUVqQyxrR0FBMkU7SUFDM0UsMkZBQWlGO0lBQ2pGLDZGQUF3RTtJQUV4RSwrRkFBb0Q7SUFDcEQsbUdBQTZEO0lBQzdELHlGQUE4RDtJQUU5RCxNQUFNLDRCQUE0QixHQUFHLDZDQUE2QyxDQUFDO0lBRW5GOzs7T0FHRztJQUNIO1FBQ0UsT0FBTyxDQUFDLElBQVUsRUFBRSxFQUFFO1lBQ3BCLE1BQU0sRUFBQyxVQUFVLEVBQUUsU0FBUyxFQUFDLEdBQUcsZ0RBQXVCLENBQUMsSUFBSSxDQUFDLENBQUM7WUFDOUQsTUFBTSxRQUFRLEdBQUcsT0FBTyxDQUFDLEdBQUcsRUFBRSxDQUFDO1lBQy9CLE1BQU0sUUFBUSxHQUFHLENBQUMsR0FBRyxVQUFVLEVBQUUsR0FBRyxTQUFTLENBQUMsQ0FBQztZQUUvQyxJQUFJLENBQUMsUUFBUSxDQUFDLE1BQU0sRUFBRTtnQkFDcEIsTUFBTSxJQUFJLGdDQUFtQixDQUN6QixnRkFBZ0YsQ0FBQyxDQUFDO2FBQ3ZGO1lBRUQsS0FBSyxNQUFNLFlBQVksSUFBSSxRQUFRLEVBQUU7Z0JBQ25DLCtCQUErQixDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsUUFBUSxDQUFDLENBQUM7YUFDL0Q7UUFDSCxDQUFDLENBQUM7SUFDSixDQUFDO0lBZkQsNEJBZUM7SUFFRCxTQUFTLCtCQUErQixDQUFDLElBQVUsRUFBRSxZQUFvQixFQUFFLFFBQWdCO1FBQ3pGLE1BQU0sTUFBTSxHQUFHLGtDQUFpQixDQUFDLFlBQVksRUFBRSxjQUFPLENBQUMsWUFB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LE9BQU8sQ0FBQyxDQUFDLENBQUM7WUFDeEYsQ0FBQyxDQUFDLENBQUM7WUFFSCxJQUFJLENBQUMsWUFBWSxDQUFDLE1BQU0sQ0FBQyxDQUFDO1FBQzVCLENBQUMsQ0FBQyxDQUFDO0lBQ0wsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtSdWxlLCBTY2hlbWF0aWNDb250ZXh0LCBTY2hlbWF0aWNzRXhjZXB0aW9uLCBUcmVlfSBmcm9tICdAYW5ndWxhci1kZXZraXQvc2NoZW1hdGljcyc7XG5pbXBvcnQge2Rpcm5hbWUsIHJlbGF0aXZlfSBmcm9tICdwYXRoJztcbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge2dldFByb2plY3RUc0NvbmZpZ1BhdGhzfSBmcm9tICcuLi8uLi91dGlscy9wcm9qZWN0X3RzY29uZmlnX3BhdGhzJztcbmltcG9ydCB7Y3JlYXRlTWlncmF0aW9uQ29tcGlsZXJIb3N0fSBmcm9tICcuLi8uLi91dGlscy90eXBlc2NyaXB0L2NvbXBpbGVyX2hvc3QnO1xuaW1wb3J0IHtwYXJzZVRzY29uZmlnRmlsZX0gZnJvbSAnLi4vLi4vdXRpbHMvdHlwZXNjcmlwdC9wYXJzZV90c2NvbmZpZyc7XG5cbmltcG9ydCB7SGVscGVyRnVuY3Rpb24sIGdldEhlbHBlcn0gZnJvbSAnLi9oZWxwZXJzJztcbmltcG9ydCB7bWlncmF0ZUV4cHJlc3Npb24sIHJlcGxhY2VJbXBvcnR9IGZyb20gJy4vbWlncmF0aW9uJztcbmltcG9ydCB7ZmluZENvcmVJbXBvcnQsIGZpbmRSZW5kZXJlclJlZmVyZW5jZXN9IGZyb20gJy4vdXRpbCc7XG5cbmNvbnN0IE1PRFVMRV9BVUdNRU5UQVRJT05fRklMRU5BTUUgPSAnybXJtVJFTkRFUkVSX01JR1JBVElPTl9DT1JFX0FVR01FTlRBVElPTi5kLnRzJztcblxuLyoqXG4gKiBNaWdyYXRpb24gdGhhdCBzd2l0Y2hlcyBmcm9tIGBSZW5kZXJlcmAgdG8gYFJlbmRlcmVyMmAuIE1vcmUgaW5mb3JtYXRpb24gb24gaG93IGl0IHdvcmtzOlxuICogaHR0cHM6Ly9oYWNrbWQuYW5ndWxhci5pby9VVHpVWlRuUFJBLWNTYV80bUh5Zll3XG4gKi9cbmV4cG9ydCBkZWZhdWx0IGZ1bmN0aW9uKCk6IFJ1bGUge1xuICByZXR1cm4gKHRyZWU6IFRyZWUpID0+IHtcbiAgICBjb25zdCB7YnVpbGRQYXRocywgdGVzdFBhdGhzfSA9IGdldFByb2plY3RUc0NvbmZpZ1BhdGhzKHRyZWUpO1xuICAgIGNvbnN0IGJhc2VQYXRoID0gcHJvY2Vzcy5jd2QoKTtcbiAgICBjb25zdCBhbGxQYXRocyA9IFsuLi5idWlsZFBhdGhzLCAuLi50ZXN0UGF0aHNdO1xuXG4gICAgaWYgKCFhbGxQYXRocy5sZW5ndGgpIHtcbiAgICAgIHRocm93IG5ldyBTY2hlbWF0aWNzRXhjZXB0aW9uKFxuICAgICAgICAgICdDb3VsZCBub3QgZmluZCBhbnkgdHNjb25maWcgZmlsZS4gQ2Fubm90IG1pZ3JhdGUgUmVuZGVyZXIgdXNhZ2VzIHRvIFJlbmRlcmVyMi4nKTtcbiAgICB9XG5cbiAgICBmb3IgKGNvbnN0IHRzY29uZmlnUGF0aCBvZiBhbGxQYXRocykge1xuICAgICAgcnVuUmVuZGVyZXJUb1JlbmRlcmVyMk1pZ3JhdGlvbih0cmVlLCB0c2NvbmZpZ1BhdGgsIGJhc2VQYXRoKTtcbiAgICB9XG4gIH07XG59XG5cbmZ1bmN0aW9uIHJ1blJlbmRlcmVyVG9SZW5kZXJlcjJNaWdyYXRpb24odHJlZTogVHJlZSwgdHNjb25maWdQYXRoOiBzdHJpbmcsIGJhc2VQYXRoOiBzdHJpbmcpIHtcbiAgY29uc3QgcGFyc2VkID0gcGFyc2VUc2NvbmZpZ0ZpbGUodHNjb25maWdQYXRoLCBkaXJuYW1lKHRzY29uZmlnUGF0aCkpO1xuICBjb25zdCBob3N0ID0gY3JlYXRlTWlncmF0aW9uQ29tcGlsZXJIb3N0KHRyZWUsIHBhcnNlZC5vcHRpb25zLCBiYXNlUGF0aCwgZmlsZU5hbWUgPT4ge1xuICAgIC8vIEluIGNhc2UgdGhlIG1vZHVsZSBhdWdtZW50YXRpb24gZmlsZSBoYXMgYmVlbiByZXF1ZXN0ZWQsIHdlIHJldHVybiBhIHNvdXJjZSBmaWxlIHRoYXRcbiAgICAvLyBhdWdtZW50cyBcIkBhbmd1bGFyL2NvcmVcIiB0byBpbmNsdWRlIGEgbmFtZWQgZXhwb3J0IGNhbGxlZCBcIlJlbmRlcmVyXCIuIFRoaXMgZW5zdXJlcyB0aGF0XG4gICAgLy8gd2UgY2FuIHJlbHkgb24gdGhlIHR5cGUgY2hlY2tlciBmb3IgdGhpcyBtaWdyYXRpb24gaW4gdjkgd2hlcmUgXCJSZW5kZXJlclwiIGhhcyBiZWVuIHJlbW92ZWQuXG4gICAgaWYgKGZpbGVOYW1lID09PSBNT0RVTEVfQVVHTUVOVEFUSU9OX0ZJTEVOQU1FKSB7XG4gICAgICByZXR1cm4gYFxuICAgICAgICBpbXBvcnQgJ0Bhbmd1bGFyL2NvcmUnO1xuICAgICAgICBkZWNsYXJlIG1vZHVsZSBcIkBhbmd1bGFyL2NvcmVcIiB7XG4gICAgICAgICAgY2xhc3MgUmVuZGVyZXIge31cbiAgICAgICAgfVxuICAgICAgYDtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH0pO1xuXG4gIGNvbnN0IHByb2dyYW0gPVxuICAgICAgdHMuY3JlYXRlUHJvZ3JhbShwYXJzZWQuZmlsZU5hbWVzLmNvbmNhdChNT0RVTEVfQVVHTUVOVEFUSU9OX0ZJTEVOQU1FKSwgcGFyc2VkLm9wdGlvbnMsIGhvc3QpO1xuICBjb25zdCB0eXBlQ2hlY2tlciA9IHByb2dyYW0uZ2V0VHlwZUNoZWNrZXIoKTtcbiAgY29uc3QgcHJpbnRlciA9IHRzLmNyZWF0ZVByaW50ZXIoKTtcbiAgY29uc3Qgc291cmNlRmlsZXMgPSBwcm9ncmFtLmdldFNvdXJjZUZpbGVzKCkuZmlsdGVyKFxuICAgICAgZiA9PiAhZi5pc0RlY2xhcmF0aW9uRmlsZSAmJiAhcHJvZ3JhbS5pc1NvdXJjZUZpbGVGcm9tRXh0ZXJuYWxMaWJyYXJ5KGYpKTtcblxuICBzb3VyY2VGaWxlcy5mb3JFYWNoKHNvdXJjZUZpbGUgPT4ge1xuICAgIGNvbnN0IHJlbmRlcmVySW1wb3J0ID0gZmluZENvcmVJbXBvcnQoc291cmNlRmlsZSwgJ1JlbmRlcmVyJyk7XG5cbiAgICAvLyBJZiB0aGVyZSBhcmUgbm8gaW1wb3J0cyBmb3IgdGhlIGBSZW5kZXJlcmAsIHdlIGNhbiBleGl0IGVhcmx5LlxuICAgIGlmICghcmVuZGVyZXJJbXBvcnQpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG5cbiAgICBjb25zdCB7dHlwZWROb2RlcywgbWV0aG9kQ2FsbHMsIGZvcndhcmRSZWZzfSA9XG4gICAgICAgIGZpbmRSZW5kZXJlclJlZmVyZW5jZXMoc291cmNlRmlsZSwgdHlwZUNoZWNrZXIsIHJlbmRlcmVySW1wb3J0KTtcbiAgICBjb25zdCB1cGRhdGUgPSB0cmVlLmJlZ2luVXBkYXRlKHJlbGF0aXZlKGJhc2VQYXRoLCBzb3VyY2VGaWxlLmZpbGVOYW1lKSk7XG4gICAgY29uc3QgaGVscGVyc1RvQWRkID0gbmV3IFNldDxIZWxwZXJGdW5jdGlvbj4oKTtcblxuICAgIC8vIENoYW5nZSB0aGUgYFJlbmRlcmVyYCBpbXBvcnQgdG8gYFJlbmRlcmVyMmAuXG4gICAgdXBkYXRlLnJlbW92ZShyZW5kZXJlckltcG9ydC5nZXRTdGFydCgpLCByZW5kZXJlckltcG9ydC5nZXRXaWR0aCgpKTtcbiAgICB1cGRhdGUuaW5zZXJ0UmlnaHQoXG4gICAgICAgIHJlbmRlcmVySW1wb3J0LmdldFN0YXJ0KCksXG4gICAgICAgIHByaW50ZXIucHJpbnROb2RlKFxuICAgICAgICAgICAgdHMuRW1pdEhpbnQuVW5zcGVjaWZpZWQsIHJlcGxhY2VJbXBvcnQocmVuZGVyZXJJbXBvcnQsICdSZW5kZXJlcicsICdSZW5kZXJlcjInKSxcbiAgICAgICAgICAgIHNvdXJjZUZpbGUpKTtcblxuICAgIC8vIENoYW5nZSB0aGUgbWV0aG9kIHBhcmFtZXRlciBhbmQgcHJvcGVydHkgdHlwZXMgdG8gYFJlbmRlcmVyMmAuXG4gICAgdHlwZWROb2Rlcy5mb3JFYWNoKG5vZGUgPT4ge1xuICAgICAgY29uc3QgdHlwZSA9IG5vZGUudHlwZTtcblxuICAgICAgaWYgKHR5cGUpIHtcbiAgICAgICAgdXBkYXRlLnJlbW92ZSh0eXBlLmdldFN0YXJ0KCksIHR5cGUuZ2V0V2lkdGgoKSk7XG4gICAgICAgIHVwZGF0ZS5pbnNlcnRSaWdodCh0eXBlLmdldFN0YXJ0KCksICdSZW5kZXJlcjInKTtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIC8vIENoYW5nZSBhbGwgaWRlbnRpZmllcnMgaW5zaWRlIGBmb3J3YXJkUmVmYCByZWZlcnJpbmcgdG8gdGhlIGBSZW5kZXJlcmAuXG4gICAgZm9yd2FyZFJlZnMuZm9yRWFjaChpZGVudGlmaWVyID0+IHtcbiAgICAgIHVwZGF0ZS5yZW1vdmUoaWRlbnRpZmllci5nZXRTdGFydCgpLCBpZGVudGlmaWVyLmdldFdpZHRoKCkpO1xuICAgICAgdXBkYXRlLmluc2VydFJpZ2h0KGlkZW50aWZpZXIuZ2V0U3RhcnQoKSwgJ1JlbmRlcmVyMicpO1xuICAgIH0pO1xuXG4gICAgLy8gTWlncmF0ZSBhbGwgb2YgdGhlIG1ldGhvZCBjYWxscy5cbiAgICBtZXRob2RDYWxscy5mb3JFYWNoKGNhbGwgPT4ge1xuICAgICAgY29uc3Qge25vZGUsIHJlcXVpcmVkSGVscGVyc30gPSBtaWdyYXRlRXhwcmVzc2lvbihjYWxsLCB0eXBlQ2hlY2tlcik7XG5cbiAgICAgIGlmIChub2RlKSB7XG4gICAgICAgIC8vIElmIHdlIG1pZ3JhdGVkIHRoZSBub2RlIHRvIGEgbmV3IGV4cHJlc3Npb24sIHJlcGxhY2Ugb25seSB0aGUgY2FsbCBleHByZXNzaW9uLlxuICAgICAgICB1cGRhdGUucmVtb3ZlKGNhbGwuZ2V0U3RhcnQoKSwgY2FsbC5nZXRXaWR0aCgpKTtcbiAgICAgICAgdXBkYXRlLmluc2VydFJpZ2h0KFxuICAgICAgICAgICAgY2FsbC5nZXRTdGFydCgpLCBwcmludGVyLnByaW50Tm9kZSh0cy5FbWl0SGludC5VbnNwZWNpZmllZCwgbm9kZSwgc291cmNlRmlsZSkpO1xuICAgICAgfSBlbHNlIGlmIChjYWxsLnBhcmVudCAmJiB0cy5pc0V4cHJlc3Npb25TdGF0ZW1lbnQoY2FsbC5wYXJlbnQpKSB7XG4gICAgICAgIC8vIE90aGVyd2lzZSBpZiB0aGUgY2FsbCBpcyBpbnNpZGUgYW4gZXhwcmVzc2lvbiBzdGF0ZW1lbnQsIGRyb3AgdGhlIGVudGlyZSBzdGF0ZW1lbnQuXG4gICAgICAgIC8vIFRoaXMgdGFrZXMgY2FyZSBvZiBhbnkgdHJhaWxpbmcgc2VtaWNvbG9ucy4gV2Ugb25seSBuZWVkIHRvIGRyb3Agbm9kZXMgZm9yIGNhc2VzIGxpa2VcbiAgICAgICAgLy8gYHNldEJpbmRpbmdEZWJ1Z0luZm9gIHdoaWNoIGhhdmUgYmVlbiBub29wIGZvciBhIHdoaWxlIHNvIHRoZXkgY2FuIGJlIHJlbW92ZWQgc2FmZWx5LlxuICAgICAgICB1cGRhdGUucmVtb3ZlKGNhbGwucGFyZW50LmdldFN0YXJ0KCksIGNhbGwucGFyZW50LmdldFdpZHRoKCkpO1xuICAgICAgfVxuXG4gICAgICBpZiAocmVxdWlyZWRIZWxwZXJzKSB7XG4gICAgICAgIHJlcXVpcmVkSGVscGVycy5mb3JFYWNoKGhlbHBlck5hbWUgPT4gaGVscGVyc1RvQWRkLmFkZChoZWxwZXJOYW1lKSk7XG4gICAgICB9XG4gICAgfSk7XG5cbiAgICAvLyBTb21lIG9mIHRoZSBtZXRob2RzIGNhbid0IGJlIG1hcHBlZCBkaXJlY3RseSB0byBgUmVuZGVyZXIyYCBhbmQgbmVlZCBleHRyYSBsb2dpYyBhcm91bmQgdGhlbS5cbiAgICAvLyBUaGUgc2FmZXN0IHdheSB0byBkbyBzbyBpcyB0byBkZWNsYXJlIGhlbHBlciBmdW5jdGlvbnMgc2ltaWxhciB0byB0aGUgb25lcyBlbWl0dGVkIGJ5IFRTXG4gICAgLy8gd2hpY2ggZW5jYXBzdWxhdGUgdGhlIGV4dHJhIFwiZ2x1ZVwiIGxvZ2ljLiBXZSBzaG91bGQgb25seSBlbWl0IHRoZXNlIGZ1bmN0aW9ucyBvbmNlIHBlciBmaWxlLlxuICAgIGhlbHBlcnNUb0FkZC5mb3JFYWNoKGhlbHBlck5hbWUgPT4ge1xuICAgICAgdXBkYXRlLmluc2VydExlZnQoXG4gICAgICAgICAgc291cmNlRmlsZS5lbmRPZkZpbGVUb2tlbi5nZXRTdGFydCgpLCBnZXRIZWxwZXIoaGVscGVyTmFtZSwgc291cmNlRmlsZSwgcHJpbnRlcikpO1xuICAgIH0pO1xuXG4gICAgdHJlZS5jb21taXRVcGRhdGUodXBkYXRlKTtcbiAgfSk7XG59XG4iXX0=