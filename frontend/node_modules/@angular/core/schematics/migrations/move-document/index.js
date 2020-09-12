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
        define("@angular/core/schematics/migrations/move-document", ["require", "exports", "@angular-devkit/schematics", "path", "@angular/core/schematics/utils/project_tsconfig_paths", "@angular/core/schematics/utils/typescript/compiler_host", "@angular/core/schematics/migrations/move-document/document_import_visitor", "@angular/core/schematics/migrations/move-document/move-import"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const schematics_1 = require("@angular-devkit/schematics");
    const path_1 = require("path");
    const project_tsconfig_paths_1 = require("@angular/core/schematics/utils/project_tsconfig_paths");
    const compiler_host_1 = require("@angular/core/schematics/utils/typescript/compiler_host");
    const document_import_visitor_1 = require("@angular/core/schematics/migrations/move-document/document_import_visitor");
    const move_import_1 = require("@angular/core/schematics/migrations/move-document/move-import");
    /** Entry point for the V8 move-document migration. */
    function default_1() {
        return (tree) => {
            const { buildPaths, testPaths } = project_tsconfig_paths_1.getProjectTsConfigPaths(tree);
            const basePath = process.cwd();
            if (!buildPaths.length && !testPaths.length) {
                throw new schematics_1.SchematicsException(`Could not find any tsconfig file. Cannot migrate DOCUMENT
          to new import source.`);
            }
            for (const tsconfigPath of [...buildPaths, ...testPaths]) {
                runMoveDocumentMigration(tree, tsconfigPath, basePath);
            }
        };
    }
    exports.default = default_1;
    /**
     * Runs the DOCUMENT InjectionToken import migration for the given TypeScript project. The
     * schematic analyzes the imports within the project and moves the deprecated symbol to the
     * new import source.
     */
    function runMoveDocumentMigration(tree, tsconfigPath, basePath) {
        const { program } = compiler_host_1.createMigrationProgram(tree, tsconfigPath, basePath);
        const typeChecker = program.getTypeChecker();
        const visitor = new document_import_visitor_1.DocumentImportVisitor(typeChecker);
        const sourceFiles = program.getSourceFiles().filter(f => !f.isDeclarationFile && !program.isSourceFileFromExternalLibrary(f));
        // Analyze source files by finding imports.
        sourceFiles.forEach(sourceFile => visitor.visitNode(sourceFile));
        const { importsMap } = visitor;
        // Walk through all source files that contain resolved queries and update
        // the source files if needed. Note that we need to update multiple queries
        // within a source file within the same recorder in order to not throw off
        // the TypeScript node offsets.
        importsMap.forEach((resolvedImport, sourceFile) => {
            const { platformBrowserImport, commonImport, documentElement } = resolvedImport;
            if (!documentElement || !platformBrowserImport) {
                return;
            }
            const update = tree.beginUpdate(path_1.relative(basePath, sourceFile.fileName));
            const platformBrowserDeclaration = platformBrowserImport.parent.parent;
            const newPlatformBrowserText = move_import_1.removeFromImport(platformBrowserImport, sourceFile, document_import_visitor_1.DOCUMENT_TOKEN_NAME);
            const newCommonText = commonImport ?
                move_import_1.addToImport(commonImport, sourceFile, documentElement.name, documentElement.propertyName) :
                move_import_1.createImport(document_import_visitor_1.COMMON_IMPORT, sourceFile, documentElement.name, documentElement.propertyName);
            // Replace the existing query decorator call expression with the updated
            // call expression node.
            update.remove(platformBrowserDeclaration.getStart(), platformBrowserDeclaration.getWidth());
            update.insertRight(platformBrowserDeclaration.getStart(), newPlatformBrowserText);
            if (commonImport) {
                const commonDeclaration = commonImport.parent.parent;
                update.remove(commonDeclaration.getStart(), commonDeclaration.getWidth());
                update.insertRight(commonDeclaration.getStart(), newCommonText);
            }
            else {
                update.insertRight(platformBrowserDeclaration.getStart(), newCommonText);
            }
            tree.commitUpdate(update);
        });
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NjaGVtYXRpY3MvbWlncmF0aW9ucy9tb3ZlLWRvY3VtZW50L2luZGV4LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7O0lBRUgsMkRBQTJFO0lBQzNFLCtCQUE4QjtJQUc5QixrR0FBMkU7SUFDM0UsMkZBQTRFO0lBRTVFLHVIQUE0SDtJQUM1SCwrRkFBMEU7SUFHMUUsc0RBQXNEO0lBQ3REO1FBQ0UsT0FBTyxDQUFDLElBQVUsRUFBRSxFQUFFO1lBQ3BCLE1BQU0sRUFBQyxVQUFVLEVBQUUsU0FBUyxFQUFDLEdBQUcsZ0RBQXVCLENBQUMsSUFBSSxDQUFDLENBQUM7WUFDOUQsTUFBTSxRQUFRLEdBQUcsT0FBTyxDQUFDLEdBQUcsRUFBRSxDQUFDO1lBRS9CLElBQUksQ0FBQyxVQUFVLENBQUMsTUFBTSxJQUFJLENBQUMsU0FBUyxDQUFDLE1BQU0sRUFBRTtnQkFDM0MsTUFBTSxJQUFJLGdDQUFtQixDQUFDO2dDQUNKLENBQUMsQ0FBQzthQUM3QjtZQUVELEtBQUssTUFBTSxZQUFZLElBQUksQ0FBQyxHQUFHLFVBQVUsRUFBRSxHQUFHLFNBQVMsQ0FBQyxFQUFFO2dCQUN4RCx3QkFBd0IsQ0FBQyxJQUFJLEVBQUUsWUFBWSxFQUFFLFFBQVEsQ0FBQyxDQUFDO2FBQ3hEO1FBQ0gsQ0FBQyxDQUFDO0lBQ0osQ0FBQztJQWRELDRCQWNDO0lBRUQ7Ozs7T0FJRztJQUNILFNBQVMsd0JBQXdCLENBQUMsSUFBVSxFQUFFLFlBQW9CLEVBQUUsUUFBZ0I7UUFDbEYsTUFBTSxFQUFDLE9BQU8sRUFBQyxHQUFHLHNDQUFzQixDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsUUFBUSxDQUFDLENBQUM7UUFDdkUsTUFBTSxXQUFXLEdBQUcsT0FBTyxDQUFDLGNBQWMsRUFBRSxDQUFDO1FBQzdDLE1BQU0sT0FBTyxHQUFHLElBQUksK0NBQXFCLENBQUMsV0FBVyxDQUFDLENBQUM7UUFDdkQsTUFBTSxXQUFXLEdBQUcsT0FBTyxDQUFDLGNBQWMsRUFBRSxDQUFDLE1BQU0sQ0FDL0MsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxpQkFBaUIsSUFBSSxDQUFDLE9BQU8sQ0FBQywrQkFBK0IsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBRTlFLDJDQUEyQztRQUMzQyxXQUFXLENBQUMsT0FBTyxDQUFDLFVBQVUsQ0FBQyxFQUFFLENBQUMsT0FBTyxDQUFDLFNBQVMsQ0FBQyxVQUFVLENBQUMsQ0FBQyxDQUFDO1FBRWpFLE1BQU0sRUFBQyxVQUFVLEVBQUMsR0FBRyxPQUFPLENBQUM7UUFFN0IseUVBQXlFO1FBQ3pFLDJFQUEyRTtRQUMzRSwwRUFBMEU7UUFDMUUsK0JBQStCO1FBQy9CLFVBQVUsQ0FBQyxPQUFPLENBQUMsQ0FBQyxjQUFzQyxFQUFFLFVBQXlCLEVBQUUsRUFBRTtZQUN2RixNQUFNLEVBQUMscUJBQXFCLEVBQUUsWUFBWSxFQUFFLGVBQWUsRUFBQyxHQUFHLGNBQWMsQ0FBQztZQUM5RSxJQUFJLENBQUMsZUFBZSxJQUFJLENBQUMscUJBQXFCLEVBQUU7Z0JBQzlDLE9BQU87YUFDUjtZQUNELE1BQU0sTUFBTSxHQUFHLElBQUksQ0FBQyxXQUFXLENBQUMsZUFBUSxDQUFDLFFBQVEsRUFBRSxVQUFVLENBQUMsUUFBUSxDQUFDLENBQUMsQ0FBQztZQUV6RSxNQUFNLDBCQUEwQixHQUFHLHFCQUFxQixDQUFDLE1BQU0sQ0FBQyxNQUFNLENBQUM7WUFDdkUsTUFBTSxzQkFBc0IsR0FDeEIsOEJBQWdCLENBQUMscUJBQXFCLEVBQUUsVUFBVSxFQUFFLDZDQUFtQixDQUFDLENBQUM7WUFDN0UsTUFBTSxhQUFhLEdBQUcsWUFBWSxDQUFDLENBQUM7Z0JBQ2hDLHlCQUFXLENBQUMsWUFBWSxFQUFFLFVBQVUsRUFBRSxlQUFlLENBQUMsSUFBSSxFQUFFLGVBQWUsQ0FBQyxZQUFZLENBQUMsQ0FBQyxDQUFDO2dCQUMzRiwwQkFBWSxDQUFDLHVDQUFhLEVBQUUsVUFBVSxFQUFFLGVBQWUsQ0FBQyxJQUFJLEVBQUUsZUFBZSxDQUFDLFlBQVksQ0FBQyxDQUFDO1lBRWhHLHdFQUF3RTtZQUN4RSx3QkFBd0I7WUFDeEIsTUFBTSxDQUFDLE1BQU0sQ0FBQywwQkFBMEIsQ0FBQyxRQUFRLEVBQUUsRUFBRSwwQkFBMEIsQ0FBQyxRQUFRLEVBQUUsQ0FBQyxDQUFDO1lBQzVGLE1BQU0sQ0FBQyxXQUFXLENBQUMsMEJBQTBCLENBQUMsUUFBUSxFQUFFLEVBQUUsc0JBQXNCLENBQUMsQ0FBQztZQUVsRixJQUFJLFlBQVksRUFBRTtnQkFDaEIsTUFBTSxpQkFBaUIsR0FBRyxZQUFZLENBQUMsTUFBTSxDQUFDLE1BQU0sQ0FBQztnQkFDckQsTUFBTSxDQUFDLE1BQU0sQ0FBQyxpQkFBaUIsQ0FBQyxRQUFRLEVBQUUsRUFBRSxpQkFBaUIsQ0FBQyxRQUFRLEVBQUUsQ0FBQyxDQUFDO2dCQUMxRSxNQUFNLENBQUMsV0FBVyxDQUFDLGlCQUFpQixDQUFDLFFBQVEsRUFBRSxFQUFFLGFBQWEsQ0FBQyxDQUFDO2FBQ2pFO2lCQUFNO2dCQUNMLE1BQU0sQ0FBQyxXQUFXLENBQUMsMEJBQTBCLENBQUMsUUFBUSxFQUFFLEVBQUUsYUFBYSxDQUFDLENBQUM7YUFDMUU7WUFFRCxJQUFJLENBQUMsWUFBWSxDQUFDLE1BQU0sQ0FBQyxDQUFDO1FBQzVCLENBQUMsQ0FBQyxDQUFDO0lBQ0wsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1J1bGUsIFNjaGVtYXRpY3NFeGNlcHRpb24sIFRyZWV9IGZyb20gJ0Bhbmd1bGFyLWRldmtpdC9zY2hlbWF0aWNzJztcbmltcG9ydCB7cmVsYXRpdmV9IGZyb20gJ3BhdGgnO1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7Z2V0UHJvamVjdFRzQ29uZmlnUGF0aHN9IGZyb20gJy4uLy4uL3V0aWxzL3Byb2plY3RfdHNjb25maWdfcGF0aHMnO1xuaW1wb3J0IHtjcmVhdGVNaWdyYXRpb25Qcm9ncmFtfSBmcm9tICcuLi8uLi91dGlscy90eXBlc2NyaXB0L2NvbXBpbGVyX2hvc3QnO1xuXG5pbXBvcnQge0NPTU1PTl9JTVBPUlQsIERPQ1VNRU5UX1RPS0VOX05BTUUsIERvY3VtZW50SW1wb3J0VmlzaXRvciwgUmVzb2x2ZWREb2N1bWVudEltcG9ydH0gZnJvbSAnLi9kb2N1bWVudF9pbXBvcnRfdmlzaXRvcic7XG5pbXBvcnQge2FkZFRvSW1wb3J0LCBjcmVhdGVJbXBvcnQsIHJlbW92ZUZyb21JbXBvcnR9IGZyb20gJy4vbW92ZS1pbXBvcnQnO1xuXG5cbi8qKiBFbnRyeSBwb2ludCBmb3IgdGhlIFY4IG1vdmUtZG9jdW1lbnQgbWlncmF0aW9uLiAqL1xuZXhwb3J0IGRlZmF1bHQgZnVuY3Rpb24oKTogUnVsZSB7XG4gIHJldHVybiAodHJlZTogVHJlZSkgPT4ge1xuICAgIGNvbnN0IHtidWlsZFBhdGhzLCB0ZXN0UGF0aHN9ID0gZ2V0UHJvamVjdFRzQ29uZmlnUGF0aHModHJlZSk7XG4gICAgY29uc3QgYmFzZVBhdGggPSBwcm9jZXNzLmN3ZCgpO1xuXG4gICAgaWYgKCFidWlsZFBhdGhzLmxlbmd0aCAmJiAhdGVzdFBhdGhzLmxlbmd0aCkge1xuICAgICAgdGhyb3cgbmV3IFNjaGVtYXRpY3NFeGNlcHRpb24oYENvdWxkIG5vdCBmaW5kIGFueSB0c2NvbmZpZyBmaWxlLiBDYW5ub3QgbWlncmF0ZSBET0NVTUVOVFxuICAgICAgICAgIHRvIG5ldyBpbXBvcnQgc291cmNlLmApO1xuICAgIH1cblxuICAgIGZvciAoY29uc3QgdHNjb25maWdQYXRoIG9mIFsuLi5idWlsZFBhdGhzLCAuLi50ZXN0UGF0aHNdKSB7XG4gICAgICBydW5Nb3ZlRG9jdW1lbnRNaWdyYXRpb24odHJlZSwgdHNjb25maWdQYXRoLCBiYXNlUGF0aCk7XG4gICAgfVxuICB9O1xufVxuXG4vKipcbiAqIFJ1bnMgdGhlIERPQ1VNRU5UIEluamVjdGlvblRva2VuIGltcG9ydCBtaWdyYXRpb24gZm9yIHRoZSBnaXZlbiBUeXBlU2NyaXB0IHByb2plY3QuIFRoZVxuICogc2NoZW1hdGljIGFuYWx5emVzIHRoZSBpbXBvcnRzIHdpdGhpbiB0aGUgcHJvamVjdCBhbmQgbW92ZXMgdGhlIGRlcHJlY2F0ZWQgc3ltYm9sIHRvIHRoZVxuICogbmV3IGltcG9ydCBzb3VyY2UuXG4gKi9cbmZ1bmN0aW9uIHJ1bk1vdmVEb2N1bWVudE1pZ3JhdGlvbih0cmVlOiBUcmVlLCB0c2NvbmZpZ1BhdGg6IHN0cmluZywgYmFzZVBhdGg6IHN0cmluZykge1xuICBjb25zdCB7cHJvZ3JhbX0gPSBjcmVhdGVNaWdyYXRpb25Qcm9ncmFtKHRyZWUsIHRzY29uZmlnUGF0aCwgYmFzZVBhdGgpO1xuICBjb25zdCB0eXBlQ2hlY2tlciA9IHByb2dyYW0uZ2V0VHlwZUNoZWNrZXIoKTtcbiAgY29uc3QgdmlzaXRvciA9IG5ldyBEb2N1bWVudEltcG9ydFZpc2l0b3IodHlwZUNoZWNrZXIpO1xuICBjb25zdCBzb3VyY2VGaWxlcyA9IHByb2dyYW0uZ2V0U291cmNlRmlsZXMoKS5maWx0ZXIoXG4gICAgICBmID0+ICFmLmlzRGVjbGFyYXRpb25GaWxlICYmICFwcm9ncmFtLmlzU291cmNlRmlsZUZyb21FeHRlcm5hbExpYnJhcnkoZikpO1xuXG4gIC8vIEFuYWx5emUgc291cmNlIGZpbGVzIGJ5IGZpbmRpbmcgaW1wb3J0cy5cbiAgc291cmNlRmlsZXMuZm9yRWFjaChzb3VyY2VGaWxlID0+IHZpc2l0b3IudmlzaXROb2RlKHNvdXJjZUZpbGUpKTtcblxuICBjb25zdCB7aW1wb3J0c01hcH0gPSB2aXNpdG9yO1xuXG4gIC8vIFdhbGsgdGhyb3VnaCBhbGwgc291cmNlIGZpbGVzIHRoYXQgY29udGFpbiByZXNvbHZlZCBxdWVyaWVzIGFuZCB1cGRhdGVcbiAgLy8gdGhlIHNvdXJjZSBmaWxlcyBpZiBuZWVkZWQuIE5vdGUgdGhhdCB3ZSBuZWVkIHRvIHVwZGF0ZSBtdWx0aXBsZSBxdWVyaWVzXG4gIC8vIHdpdGhpbiBhIHNvdXJjZSBmaWxlIHdpdGhpbiB0aGUgc2FtZSByZWNvcmRlciBpbiBvcmRlciB0byBub3QgdGhyb3cgb2ZmXG4gIC8vIHRoZSBUeXBlU2NyaXB0IG5vZGUgb2Zmc2V0cy5cbiAgaW1wb3J0c01hcC5mb3JFYWNoKChyZXNvbHZlZEltcG9ydDogUmVzb2x2ZWREb2N1bWVudEltcG9ydCwgc291cmNlRmlsZTogdHMuU291cmNlRmlsZSkgPT4ge1xuICAgIGNvbnN0IHtwbGF0Zm9ybUJyb3dzZXJJbXBvcnQsIGNvbW1vbkltcG9ydCwgZG9jdW1lbnRFbGVtZW50fSA9IHJlc29sdmVkSW1wb3J0O1xuICAgIGlmICghZG9jdW1lbnRFbGVtZW50IHx8ICFwbGF0Zm9ybUJyb3dzZXJJbXBvcnQpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgY29uc3QgdXBkYXRlID0gdHJlZS5iZWdpblVwZGF0ZShyZWxhdGl2ZShiYXNlUGF0aCwgc291cmNlRmlsZS5maWxlTmFtZSkpO1xuXG4gICAgY29uc3QgcGxhdGZvcm1Ccm93c2VyRGVjbGFyYXRpb24gPSBwbGF0Zm9ybUJyb3dzZXJJbXBvcnQucGFyZW50LnBhcmVudDtcbiAgICBjb25zdCBuZXdQbGF0Zm9ybUJyb3dzZXJUZXh0ID1cbiAgICAgICAgcmVtb3ZlRnJvbUltcG9ydChwbGF0Zm9ybUJyb3dzZXJJbXBvcnQsIHNvdXJjZUZpbGUsIERPQ1VNRU5UX1RPS0VOX05BTUUpO1xuICAgIGNvbnN0IG5ld0NvbW1vblRleHQgPSBjb21tb25JbXBvcnQgP1xuICAgICAgICBhZGRUb0ltcG9ydChjb21tb25JbXBvcnQsIHNvdXJjZUZpbGUsIGRvY3VtZW50RWxlbWVudC5uYW1lLCBkb2N1bWVudEVsZW1lbnQucHJvcGVydHlOYW1lKSA6XG4gICAgICAgIGNyZWF0ZUltcG9ydChDT01NT05fSU1QT1JULCBzb3VyY2VGaWxlLCBkb2N1bWVudEVsZW1lbnQubmFtZSwgZG9jdW1lbnRFbGVtZW50LnByb3BlcnR5TmFtZSk7XG5cbiAgICAvLyBSZXBsYWNlIHRoZSBleGlzdGluZyBxdWVyeSBkZWNvcmF0b3IgY2FsbCBleHByZXNzaW9uIHdpdGggdGhlIHVwZGF0ZWRcbiAgICAvLyBjYWxsIGV4cHJlc3Npb24gbm9kZS5cbiAgICB1cGRhdGUucmVtb3ZlKHBsYXRmb3JtQnJvd3NlckRlY2xhcmF0aW9uLmdldFN0YXJ0KCksIHBsYXRmb3JtQnJvd3NlckRlY2xhcmF0aW9uLmdldFdpZHRoKCkpO1xuICAgIHVwZGF0ZS5pbnNlcnRSaWdodChwbGF0Zm9ybUJyb3dzZXJEZWNsYXJhdGlvbi5nZXRTdGFydCgpLCBuZXdQbGF0Zm9ybUJyb3dzZXJUZXh0KTtcblxuICAgIGlmIChjb21tb25JbXBvcnQpIHtcbiAgICAgIGNvbnN0IGNvbW1vbkRlY2xhcmF0aW9uID0gY29tbW9uSW1wb3J0LnBhcmVudC5wYXJlbnQ7XG4gICAgICB1cGRhdGUucmVtb3ZlKGNvbW1vbkRlY2xhcmF0aW9uLmdldFN0YXJ0KCksIGNvbW1vbkRlY2xhcmF0aW9uLmdldFdpZHRoKCkpO1xuICAgICAgdXBkYXRlLmluc2VydFJpZ2h0KGNvbW1vbkRlY2xhcmF0aW9uLmdldFN0YXJ0KCksIG5ld0NvbW1vblRleHQpO1xuICAgIH0gZWxzZSB7XG4gICAgICB1cGRhdGUuaW5zZXJ0UmlnaHQocGxhdGZvcm1Ccm93c2VyRGVjbGFyYXRpb24uZ2V0U3RhcnQoKSwgbmV3Q29tbW9uVGV4dCk7XG4gICAgfVxuXG4gICAgdHJlZS5jb21taXRVcGRhdGUodXBkYXRlKTtcbiAgfSk7XG59XG4iXX0=