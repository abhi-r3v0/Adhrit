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
        define("@angular/core/schematics/migrations/renderer-to-renderer2", ["require", "exports", "@angular-devkit/schematics", "path", "typescript", "@angular/core/schematics/utils/project_tsconfig_paths", "@angular/core/schematics/utils/typescript/compiler_host", "@angular/core/schematics/migrations/renderer-to-renderer2/helpers", "@angular/core/schematics/migrations/renderer-to-renderer2/migration", "@angular/core/schematics/migrations/renderer-to-renderer2/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const schematics_1 = require("@angular-devkit/schematics");
    const path_1 = require("path");
    const ts = require("typescript");
    const project_tsconfig_paths_1 = require("@angular/core/schematics/utils/project_tsconfig_paths");
    const compiler_host_1 = require("@angular/core/schematics/utils/typescript/compiler_host");
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
        const { program } = compiler_host_1.createMigrationProgram(tree, tsconfigPath, basePath, fileName => {
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
        }, [MODULE_AUGMENTATION_FILENAME]);
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NjaGVtYXRpY3MvbWlncmF0aW9ucy9yZW5kZXJlci10by1yZW5kZXJlcjIvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7SUFFSCwyREFBMkU7SUFDM0UsK0JBQThCO0lBQzlCLGlDQUFpQztJQUVqQyxrR0FBMkU7SUFDM0UsMkZBQTRFO0lBRTVFLCtGQUFvRDtJQUNwRCxtR0FBNkQ7SUFDN0QseUZBQThEO0lBRTlELE1BQU0sNEJBQTRCLEdBQUcsNkNBQTZDLENBQUM7SUFFbkY7OztPQUdHO0lBQ0g7UUFDRSxPQUFPLENBQUMsSUFBVSxFQUFFLEVBQUU7WUFDcEIsTUFBTSxFQUFDLFVBQVUsRUFBRSxTQUFTLEVBQUMsR0FBRyxnREFBdUIsQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUM5RCxNQUFNLFFBQVEsR0FBRyxPQUFPLENBQUMsR0FBRyxFQUFFLENBQUM7WUFDL0IsTUFBTSxRQUFRLEdBQUcsQ0FBQyxHQUFHLFVBQVUsRUFBRSxHQUFHLFNBQVMsQ0FBQyxDQUFDO1lBRS9DLElBQUksQ0FBQyxRQUFRLENBQUMsTUFBTSxFQUFFO2dCQUNwQixNQUFNLElBQUksZ0NBQW1CLENBQ3pCLGdGQUFnRixDQUFDLENBQUM7YUFDdkY7WUFFRCxLQUFLLE1BQU0sWUFBWSxJQUFJLFFBQVEsRUFBRTtnQkFDbkMsK0JBQStCLENBQUMsSUFBSSxFQUFFLFlBQVksRUFBRSxRQUFRLENBQUMsQ0FBQzthQUMvRDtRQUNILENBQUMsQ0FBQztJQUNKLENBQUM7SUFmRCw0QkFlQztJQUVELFNBQVMsK0JBQStCLENBQUMsSUFBVSxFQUFFLFlBQW9CLEVBQUUsUUFBZ0I7UUFDekYsTUFBTSxFQUFDLE9BQU8sRUFBQyxHQUFHLHNDQUFzQixDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsUUFBUSxF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RUFBRSxFQUFFLElBQUksQ0FBQyxRQUFRLEVBQUUsQ0FBQyxDQUFDO29CQUNoRCxNQUFNLENBQUMsV0FBVyxDQUNkLElBQUksQ0FBQyxRQUFRLEVBQUUsRUFBRSxPQUFPLENBQUMsU0FBUyxDQUFDLEVBQUUsQ0FBQyxRQUFRLENBQUMsV0FBVyxFQUFFLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQyxDQUFDO2lCQUNwRjtxQkFBTSxJQUFJLElBQUksQ0FBQyxNQUFNLElBQUksRUFBRSxDQUFDLHFCQUFxQixDQUFDLElBQUksQ0FBQyxNQUFNLENBQUMsRUFBRTtvQkFDL0Qsc0ZBQXNGO29CQUN0Rix3RkFBd0Y7b0JBQ3hGLHdGQUF3RjtvQkFDeEYsTUFBTSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLFFBQVEsRUFBRSxFQUFFLElBQUksQ0FBQyxNQUFNLENBQUMsUUFBUSxFQUFFLENBQUMsQ0FBQztpQkFDL0Q7Z0JBRUQsSUFBSSxlQUFlLEVBQUU7b0JBQ25CLGVBQWUsQ0FBQyxPQUFPLENBQUMsVUFBVSxDQUFDLEVBQUUsQ0FBQyxZQUFZLENBQUMsR0FBRyxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUM7aUJBQ3JFO1lBQ0gsQ0FBQyxDQUFDLENBQUM7WUFFSCxnR0FBZ0c7WUFDaEcsMkZBQTJGO1lBQzNGLCtGQUErRjtZQUMvRixZQUFZLENBQUMsT0FBTyxDQUFDLFVBQVUsQ0FBQyxFQUFFO2dCQUNoQyxNQUFNLENBQUMsVUFBVSxDQUNiLFVBQVUsQ0FBQyxjQUFjLENBQUMsUUFBUSxFQUFFLEVBQUUsbUJBQVMsQ0FBQyxVQUFVLEVBQUUsVUFBVSxFQUFFLE9BQU8sQ0FBQyxDQUFDLENBQUM7WUFDeEYsQ0FBQyxDQUFDLENBQUM7WUFFSCxJQUFJLENBQUMsWUFBWSxDQUFDLE1BQU0sQ0FBQyxDQUFDO1FBQzVCLENBQUMsQ0FBQyxDQUFDO0lBQ0wsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1J1bGUsIFNjaGVtYXRpY3NFeGNlcHRpb24sIFRyZWV9IGZyb20gJ0Bhbmd1bGFyLWRldmtpdC9zY2hlbWF0aWNzJztcbmltcG9ydCB7cmVsYXRpdmV9IGZyb20gJ3BhdGgnO1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7Z2V0UHJvamVjdFRzQ29uZmlnUGF0aHN9IGZyb20gJy4uLy4uL3V0aWxzL3Byb2plY3RfdHNjb25maWdfcGF0aHMnO1xuaW1wb3J0IHtjcmVhdGVNaWdyYXRpb25Qcm9ncmFtfSBmcm9tICcuLi8uLi91dGlscy90eXBlc2NyaXB0L2NvbXBpbGVyX2hvc3QnO1xuXG5pbXBvcnQge2dldEhlbHBlciwgSGVscGVyRnVuY3Rpb259IGZyb20gJy4vaGVscGVycyc7XG5pbXBvcnQge21pZ3JhdGVFeHByZXNzaW9uLCByZXBsYWNlSW1wb3J0fSBmcm9tICcuL21pZ3JhdGlvbic7XG5pbXBvcnQge2ZpbmRDb3JlSW1wb3J0LCBmaW5kUmVuZGVyZXJSZWZlcmVuY2VzfSBmcm9tICcuL3V0aWwnO1xuXG5jb25zdCBNT0RVTEVfQVVHTUVOVEFUSU9OX0ZJTEVOQU1FID0gJ8m1ybVSRU5ERVJFUl9NSUdSQVRJT05fQ09SRV9BVUdNRU5UQVRJT04uZC50cyc7XG5cbi8qKlxuICogTWlncmF0aW9uIHRoYXQgc3dpdGNoZXMgZnJvbSBgUmVuZGVyZXJgIHRvIGBSZW5kZXJlcjJgLiBNb3JlIGluZm9ybWF0aW9uIG9uIGhvdyBpdCB3b3JrczpcbiAqIGh0dHBzOi8vaGFja21kLmFuZ3VsYXIuaW8vVVR6VVpUblBSQS1jU2FfNG1IeWZZd1xuICovXG5leHBvcnQgZGVmYXVsdCBmdW5jdGlvbigpOiBSdWxlIHtcbiAgcmV0dXJuICh0cmVlOiBUcmVlKSA9PiB7XG4gICAgY29uc3Qge2J1aWxkUGF0aHMsIHRlc3RQYXRoc30gPSBnZXRQcm9qZWN0VHNDb25maWdQYXRocyh0cmVlKTtcbiAgICBjb25zdCBiYXNlUGF0aCA9IHByb2Nlc3MuY3dkKCk7XG4gICAgY29uc3QgYWxsUGF0aHMgPSBbLi4uYnVpbGRQYXRocywgLi4udGVzdFBhdGhzXTtcblxuICAgIGlmICghYWxsUGF0aHMubGVuZ3RoKSB7XG4gICAgICB0aHJvdyBuZXcgU2NoZW1hdGljc0V4Y2VwdGlvbihcbiAgICAgICAgICAnQ291bGQgbm90IGZpbmQgYW55IHRzY29uZmlnIGZpbGUuIENhbm5vdCBtaWdyYXRlIFJlbmRlcmVyIHVzYWdlcyB0byBSZW5kZXJlcjIuJyk7XG4gICAgfVxuXG4gICAgZm9yIChjb25zdCB0c2NvbmZpZ1BhdGggb2YgYWxsUGF0aHMpIHtcbiAgICAgIHJ1blJlbmRlcmVyVG9SZW5kZXJlcjJNaWdyYXRpb24odHJlZSwgdHNjb25maWdQYXRoLCBiYXNlUGF0aCk7XG4gICAgfVxuICB9O1xufVxuXG5mdW5jdGlvbiBydW5SZW5kZXJlclRvUmVuZGVyZXIyTWlncmF0aW9uKHRyZWU6IFRyZWUsIHRzY29uZmlnUGF0aDogc3RyaW5nLCBiYXNlUGF0aDogc3RyaW5nKSB7XG4gIGNvbnN0IHtwcm9ncmFtfSA9IGNyZWF0ZU1pZ3JhdGlvblByb2dyYW0odHJlZSwgdHNjb25maWdQYXRoLCBiYXNlUGF0aCwgZmlsZU5hbWUgPT4ge1xuICAgIC8vIEluIGNhc2UgdGhlIG1vZHVsZSBhdWdtZW50YXRpb24gZmlsZSBoYXMgYmVlbiByZXF1ZXN0ZWQsIHdlIHJldHVybiBhIHNvdXJjZSBmaWxlIHRoYXRcbiAgICAvLyBhdWdtZW50cyBcIkBhbmd1bGFyL2NvcmVcIiB0byBpbmNsdWRlIGEgbmFtZWQgZXhwb3J0IGNhbGxlZCBcIlJlbmRlcmVyXCIuIFRoaXMgZW5zdXJlcyB0aGF0XG4gICAgLy8gd2UgY2FuIHJlbHkgb24gdGhlIHR5cGUgY2hlY2tlciBmb3IgdGhpcyBtaWdyYXRpb24gaW4gdjkgd2hlcmUgXCJSZW5kZXJlclwiIGhhcyBiZWVuIHJlbW92ZWQuXG4gICAgaWYgKGZpbGVOYW1lID09PSBNT0RVTEVfQVVHTUVOVEFUSU9OX0ZJTEVOQU1FKSB7XG4gICAgICByZXR1cm4gYFxuICAgICAgICBpbXBvcnQgJ0Bhbmd1bGFyL2NvcmUnO1xuICAgICAgICBkZWNsYXJlIG1vZHVsZSBcIkBhbmd1bGFyL2NvcmVcIiB7XG4gICAgICAgICAgY2xhc3MgUmVuZGVyZXIge31cbiAgICAgICAgfVxuICAgICAgYDtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH0sIFtNT0RVTEVfQVVHTUVOVEFUSU9OX0ZJTEVOQU1FXSk7XG4gIGNvbnN0IHR5cGVDaGVja2VyID0gcHJvZ3JhbS5nZXRUeXBlQ2hlY2tlcigpO1xuICBjb25zdCBwcmludGVyID0gdHMuY3JlYXRlUHJpbnRlcigpO1xuICBjb25zdCBzb3VyY2VGaWxlcyA9IHByb2dyYW0uZ2V0U291cmNlRmlsZXMoKS5maWx0ZXIoXG4gICAgICBmID0+ICFmLmlzRGVjbGFyYXRpb25GaWxlICYmICFwcm9ncmFtLmlzU291cmNlRmlsZUZyb21FeHRlcm5hbExpYnJhcnkoZikpO1xuXG4gIHNvdXJjZUZpbGVzLmZvckVhY2goc291cmNlRmlsZSA9PiB7XG4gICAgY29uc3QgcmVuZGVyZXJJbXBvcnQgPSBmaW5kQ29yZUltcG9ydChzb3VyY2VGaWxlLCAnUmVuZGVyZXInKTtcblxuICAgIC8vIElmIHRoZXJlIGFyZSBubyBpbXBvcnRzIGZvciB0aGUgYFJlbmRlcmVyYCwgd2UgY2FuIGV4aXQgZWFybHkuXG4gICAgaWYgKCFyZW5kZXJlckltcG9ydCkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIGNvbnN0IHt0eXBlZE5vZGVzLCBtZXRob2RDYWxscywgZm9yd2FyZFJlZnN9ID1cbiAgICAgICAgZmluZFJlbmRlcmVyUmVmZXJlbmNlcyhzb3VyY2VGaWxlLCB0eXBlQ2hlY2tlciwgcmVuZGVyZXJJbXBvcnQpO1xuICAgIGNvbnN0IHVwZGF0ZSA9IHRyZWUuYmVnaW5VcGRhdGUocmVsYXRpdmUoYmFzZVBhdGgsIHNvdXJjZUZpbGUuZmlsZU5hbWUpKTtcbiAgICBjb25zdCBoZWxwZXJzVG9BZGQgPSBuZXcgU2V0PEhlbHBlckZ1bmN0aW9uPigpO1xuXG4gICAgLy8gQ2hhbmdlIHRoZSBgUmVuZGVyZXJgIGltcG9ydCB0byBgUmVuZGVyZXIyYC5cbiAgICB1cGRhdGUucmVtb3ZlKHJlbmRlcmVySW1wb3J0LmdldFN0YXJ0KCksIHJlbmRlcmVySW1wb3J0LmdldFdpZHRoKCkpO1xuICAgIHVwZGF0ZS5pbnNlcnRSaWdodChcbiAgICAgICAgcmVuZGVyZXJJbXBvcnQuZ2V0U3RhcnQoKSxcbiAgICAgICAgcHJpbnRlci5wcmludE5vZGUoXG4gICAgICAgICAgICB0cy5FbWl0SGludC5VbnNwZWNpZmllZCwgcmVwbGFjZUltcG9ydChyZW5kZXJlckltcG9ydCwgJ1JlbmRlcmVyJywgJ1JlbmRlcmVyMicpLFxuICAgICAgICAgICAgc291cmNlRmlsZSkpO1xuXG4gICAgLy8gQ2hhbmdlIHRoZSBtZXRob2QgcGFyYW1ldGVyIGFuZCBwcm9wZXJ0eSB0eXBlcyB0byBgUmVuZGVyZXIyYC5cbiAgICB0eXBlZE5vZGVzLmZvckVhY2gobm9kZSA9PiB7XG4gICAgICBjb25zdCB0eXBlID0gbm9kZS50eXBlO1xuXG4gICAgICBpZiAodHlwZSkge1xuICAgICAgICB1cGRhdGUucmVtb3ZlKHR5cGUuZ2V0U3RhcnQoKSwgdHlwZS5nZXRXaWR0aCgpKTtcbiAgICAgICAgdXBkYXRlLmluc2VydFJpZ2h0KHR5cGUuZ2V0U3RhcnQoKSwgJ1JlbmRlcmVyMicpO1xuICAgICAgfVxuICAgIH0pO1xuXG4gICAgLy8gQ2hhbmdlIGFsbCBpZGVudGlmaWVycyBpbnNpZGUgYGZvcndhcmRSZWZgIHJlZmVycmluZyB0byB0aGUgYFJlbmRlcmVyYC5cbiAgICBmb3J3YXJkUmVmcy5mb3JFYWNoKGlkZW50aWZpZXIgPT4ge1xuICAgICAgdXBkYXRlLnJlbW92ZShpZGVudGlmaWVyLmdldFN0YXJ0KCksIGlkZW50aWZpZXIuZ2V0V2lkdGgoKSk7XG4gICAgICB1cGRhdGUuaW5zZXJ0UmlnaHQoaWRlbnRpZmllci5nZXRTdGFydCgpLCAnUmVuZGVyZXIyJyk7XG4gICAgfSk7XG5cbiAgICAvLyBNaWdyYXRlIGFsbCBvZiB0aGUgbWV0aG9kIGNhbGxzLlxuICAgIG1ldGhvZENhbGxzLmZvckVhY2goY2FsbCA9PiB7XG4gICAgICBjb25zdCB7bm9kZSwgcmVxdWlyZWRIZWxwZXJzfSA9IG1pZ3JhdGVFeHByZXNzaW9uKGNhbGwsIHR5cGVDaGVja2VyKTtcblxuICAgICAgaWYgKG5vZGUpIHtcbiAgICAgICAgLy8gSWYgd2UgbWlncmF0ZWQgdGhlIG5vZGUgdG8gYSBuZXcgZXhwcmVzc2lvbiwgcmVwbGFjZSBvbmx5IHRoZSBjYWxsIGV4cHJlc3Npb24uXG4gICAgICAgIHVwZGF0ZS5yZW1vdmUoY2FsbC5nZXRTdGFydCgpLCBjYWxsLmdldFdpZHRoKCkpO1xuICAgICAgICB1cGRhdGUuaW5zZXJ0UmlnaHQoXG4gICAgICAgICAgICBjYWxsLmdldFN0YXJ0KCksIHByaW50ZXIucHJpbnROb2RlKHRzLkVtaXRIaW50LlVuc3BlY2lmaWVkLCBub2RlLCBzb3VyY2VGaWxlKSk7XG4gICAgICB9IGVsc2UgaWYgKGNhbGwucGFyZW50ICYmIHRzLmlzRXhwcmVzc2lvblN0YXRlbWVudChjYWxsLnBhcmVudCkpIHtcbiAgICAgICAgLy8gT3RoZXJ3aXNlIGlmIHRoZSBjYWxsIGlzIGluc2lkZSBhbiBleHByZXNzaW9uIHN0YXRlbWVudCwgZHJvcCB0aGUgZW50aXJlIHN0YXRlbWVudC5cbiAgICAgICAgLy8gVGhpcyB0YWtlcyBjYXJlIG9mIGFueSB0cmFpbGluZyBzZW1pY29sb25zLiBXZSBvbmx5IG5lZWQgdG8gZHJvcCBub2RlcyBmb3IgY2FzZXMgbGlrZVxuICAgICAgICAvLyBgc2V0QmluZGluZ0RlYnVnSW5mb2Agd2hpY2ggaGF2ZSBiZWVuIG5vb3AgZm9yIGEgd2hpbGUgc28gdGhleSBjYW4gYmUgcmVtb3ZlZCBzYWZlbHkuXG4gICAgICAgIHVwZGF0ZS5yZW1vdmUoY2FsbC5wYXJlbnQuZ2V0U3RhcnQoKSwgY2FsbC5wYXJlbnQuZ2V0V2lkdGgoKSk7XG4gICAgICB9XG5cbiAgICAgIGlmIChyZXF1aXJlZEhlbHBlcnMpIHtcbiAgICAgICAgcmVxdWlyZWRIZWxwZXJzLmZvckVhY2goaGVscGVyTmFtZSA9PiBoZWxwZXJzVG9BZGQuYWRkKGhlbHBlck5hbWUpKTtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIC8vIFNvbWUgb2YgdGhlIG1ldGhvZHMgY2FuJ3QgYmUgbWFwcGVkIGRpcmVjdGx5IHRvIGBSZW5kZXJlcjJgIGFuZCBuZWVkIGV4dHJhIGxvZ2ljIGFyb3VuZCB0aGVtLlxuICAgIC8vIFRoZSBzYWZlc3Qgd2F5IHRvIGRvIHNvIGlzIHRvIGRlY2xhcmUgaGVscGVyIGZ1bmN0aW9ucyBzaW1pbGFyIHRvIHRoZSBvbmVzIGVtaXR0ZWQgYnkgVFNcbiAgICAvLyB3aGljaCBlbmNhcHN1bGF0ZSB0aGUgZXh0cmEgXCJnbHVlXCIgbG9naWMuIFdlIHNob3VsZCBvbmx5IGVtaXQgdGhlc2UgZnVuY3Rpb25zIG9uY2UgcGVyIGZpbGUuXG4gICAgaGVscGVyc1RvQWRkLmZvckVhY2goaGVscGVyTmFtZSA9PiB7XG4gICAgICB1cGRhdGUuaW5zZXJ0TGVmdChcbiAgICAgICAgICBzb3VyY2VGaWxlLmVuZE9mRmlsZVRva2VuLmdldFN0YXJ0KCksIGdldEhlbHBlcihoZWxwZXJOYW1lLCBzb3VyY2VGaWxlLCBwcmludGVyKSk7XG4gICAgfSk7XG5cbiAgICB0cmVlLmNvbW1pdFVwZGF0ZSh1cGRhdGUpO1xuICB9KTtcbn1cbiJdfQ==