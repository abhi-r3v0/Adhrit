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
        define("@angular/core/schematics/migrations/move-document", ["require", "exports", "@angular-devkit/schematics", "path", "typescript", "@angular/core/schematics/utils/project_tsconfig_paths", "@angular/core/schematics/utils/typescript/compiler_host", "@angular/core/schematics/utils/typescript/parse_tsconfig", "@angular/core/schematics/migrations/move-document/document_import_visitor", "@angular/core/schematics/migrations/move-document/move-import"], factory);
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
        const parsed = parse_tsconfig_1.parseTsconfigFile(tsconfigPath, path_1.dirname(tsconfigPath));
        const host = compiler_host_1.createMigrationCompilerHost(tree, parsed.options, basePath);
        const program = ts.createProgram(parsed.fileNames, parsed.options, host);
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NjaGVtYXRpY3MvbWlncmF0aW9ucy9tb3ZlLWRvY3VtZW50L2luZGV4LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7O0lBRUgsMkRBQTJFO0lBQzNFLCtCQUF1QztJQUN2QyxpQ0FBaUM7SUFFakMsa0dBQTJFO0lBQzNFLDJGQUFpRjtJQUNqRiw2RkFBd0U7SUFFeEUsdUhBQTRIO0lBQzVILCtGQUEwRTtJQUkxRSxzREFBc0Q7SUFDdEQ7UUFDRSxPQUFPLENBQUMsSUFBVSxFQUFFLEVBQUU7WUFDcEIsTUFBTSxFQUFDLFVBQVUsRUFBRSxTQUFTLEVBQUMsR0FBRyxnREFBdUIsQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUM5RCxNQUFNLFFBQVEsR0FBRyxPQUFPLENBQUMsR0FBRyxFQUFFLENBQUM7WUFFL0IsSUFBSSxDQUFDLFVBQVUsQ0FBQyxNQUFNLElBQUksQ0FBQyxTQUFTLENBQUMsTUFBTSxFQUFFO2dCQUMzQyxNQUFNLElBQUksZ0NBQW1CLENBQUM7Z0NBQ0osQ0FBQyxDQUFDO2FBQzdCO1lBRUQsS0FBSyxNQUFNLFlBQVksSUFBSSxDQUFDLEdBQUcsVUFBVSxFQUFFLEdBQUcsU0FBUyxDQUFDLEVBQUU7Z0JBQ3hELHdCQUF3QixDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsUUFBUSxDQUFDLENBQUM7YUFDeEQ7UUFDSCxDQUFDLENBQUM7SUFDSixDQUFDO0lBZEQsNEJBY0M7SUFFRDs7OztPQUlHO0lBQ0gsU0FBUyx3QkFBd0IsQ0FBQyxJQUFVLEVBQUUsWUFBb0IsRUFBRSxRQUFnQjtRQUNsRixNQUFNLE1BQU0sR0FBRyxrQ0FBaUIsQ0FBQyxZQUFZLEVBQUUsY0FBTyxDQUFDLFlBQVksQ0FBQyxDQUFDLENBQUM7UUFDdEUsTUFBTSxJQUFJLEdBQUcsMkNBQTJCLENBQUMs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IENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtSdWxlLCBTY2hlbWF0aWNzRXhjZXB0aW9uLCBUcmVlfSBmcm9tICdAYW5ndWxhci1kZXZraXQvc2NoZW1hdGljcyc7XG5pbXBvcnQge2Rpcm5hbWUsIHJlbGF0aXZlfSBmcm9tICdwYXRoJztcbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge2dldFByb2plY3RUc0NvbmZpZ1BhdGhzfSBmcm9tICcuLi8uLi91dGlscy9wcm9qZWN0X3RzY29uZmlnX3BhdGhzJztcbmltcG9ydCB7Y3JlYXRlTWlncmF0aW9uQ29tcGlsZXJIb3N0fSBmcm9tICcuLi8uLi91dGlscy90eXBlc2NyaXB0L2NvbXBpbGVyX2hvc3QnO1xuaW1wb3J0IHtwYXJzZVRzY29uZmlnRmlsZX0gZnJvbSAnLi4vLi4vdXRpbHMvdHlwZXNjcmlwdC9wYXJzZV90c2NvbmZpZyc7XG5cbmltcG9ydCB7Q09NTU9OX0lNUE9SVCwgRE9DVU1FTlRfVE9LRU5fTkFNRSwgRG9jdW1lbnRJbXBvcnRWaXNpdG9yLCBSZXNvbHZlZERvY3VtZW50SW1wb3J0fSBmcm9tICcuL2RvY3VtZW50X2ltcG9ydF92aXNpdG9yJztcbmltcG9ydCB7YWRkVG9JbXBvcnQsIGNyZWF0ZUltcG9ydCwgcmVtb3ZlRnJvbUltcG9ydH0gZnJvbSAnLi9tb3ZlLWltcG9ydCc7XG5cblxuXG4vKiogRW50cnkgcG9pbnQgZm9yIHRoZSBWOCBtb3ZlLWRvY3VtZW50IG1pZ3JhdGlvbi4gKi9cbmV4cG9ydCBkZWZhdWx0IGZ1bmN0aW9uKCk6IFJ1bGUge1xuICByZXR1cm4gKHRyZWU6IFRyZWUpID0+IHtcbiAgICBjb25zdCB7YnVpbGRQYXRocywgdGVzdFBhdGhzfSA9IGdldFByb2plY3RUc0NvbmZpZ1BhdGhzKHRyZWUpO1xuICAgIGNvbnN0IGJhc2VQYXRoID0gcHJvY2Vzcy5jd2QoKTtcblxuICAgIGlmICghYnVpbGRQYXRocy5sZW5ndGggJiYgIXRlc3RQYXRocy5sZW5ndGgpIHtcbiAgICAgIHRocm93IG5ldyBTY2hlbWF0aWNzRXhjZXB0aW9uKGBDb3VsZCBub3QgZmluZCBhbnkgdHNjb25maWcgZmlsZS4gQ2Fubm90IG1pZ3JhdGUgRE9DVU1FTlQgXG4gICAgICAgICAgdG8gbmV3IGltcG9ydCBzb3VyY2UuYCk7XG4gICAgfVxuXG4gICAgZm9yIChjb25zdCB0c2NvbmZpZ1BhdGggb2YgWy4uLmJ1aWxkUGF0aHMsIC4uLnRlc3RQYXRoc10pIHtcbiAgICAgIHJ1bk1vdmVEb2N1bWVudE1pZ3JhdGlvbih0cmVlLCB0c2NvbmZpZ1BhdGgsIGJhc2VQYXRoKTtcbiAgICB9XG4gIH07XG59XG5cbi8qKlxuICogUnVucyB0aGUgRE9DVU1FTlQgSW5qZWN0aW9uVG9rZW4gaW1wb3J0IG1pZ3JhdGlvbiBmb3IgdGhlIGdpdmVuIFR5cGVTY3JpcHQgcHJvamVjdC4gVGhlXG4gKiBzY2hlbWF0aWMgYW5hbHl6ZXMgdGhlIGltcG9ydHMgd2l0aGluIHRoZSBwcm9qZWN0IGFuZCBtb3ZlcyB0aGUgZGVwcmVjYXRlZCBzeW1ib2wgdG8gdGhlXG4gKiBuZXcgaW1wb3J0IHNvdXJjZS5cbiAqL1xuZnVuY3Rpb24gcnVuTW92ZURvY3VtZW50TWlncmF0aW9uKHRyZWU6IFRyZWUsIHRzY29uZmlnUGF0aDogc3RyaW5nLCBiYXNlUGF0aDogc3RyaW5nKSB7XG4gIGNvbnN0IHBhcnNlZCA9IHBhcnNlVHNjb25maWdGaWxlKHRzY29uZmlnUGF0aCwgZGlybmFtZSh0c2NvbmZpZ1BhdGgpKTtcbiAgY29uc3QgaG9zdCA9IGNyZWF0ZU1pZ3JhdGlvbkNvbXBpbGVySG9zdCh0cmVlLCBwYXJzZWQub3B0aW9ucywgYmFzZVBhdGgpO1xuXG4gIGNvbnN0IHByb2dyYW0gPSB0cy5jcmVhdGVQcm9ncmFtKHBhcnNlZC5maWxlTmFtZXMsIHBhcnNlZC5vcHRpb25zLCBob3N0KTtcbiAgY29uc3QgdHlwZUNoZWNrZXIgPSBwcm9ncmFtLmdldFR5cGVDaGVja2VyKCk7XG4gIGNvbnN0IHZpc2l0b3IgPSBuZXcgRG9jdW1lbnRJbXBvcnRWaXNpdG9yKHR5cGVDaGVja2VyKTtcbiAgY29uc3Qgc291cmNlRmlsZXMgPSBwcm9ncmFtLmdldFNvdXJjZUZpbGVzKCkuZmlsdGVyKFxuICAgICAgZiA9PiAhZi5pc0RlY2xhcmF0aW9uRmlsZSAmJiAhcHJvZ3JhbS5pc1NvdXJjZUZpbGVGcm9tRXh0ZXJuYWxMaWJyYXJ5KGYpKTtcblxuICAvLyBBbmFseXplIHNvdXJjZSBmaWxlcyBieSBmaW5kaW5nIGltcG9ydHMuXG4gIHNvdXJjZUZpbGVzLmZvckVhY2goc291cmNlRmlsZSA9PiB2aXNpdG9yLnZpc2l0Tm9kZShzb3VyY2VGaWxlKSk7XG5cbiAgY29uc3Qge2ltcG9ydHNNYXB9ID0gdmlzaXRvcjtcblxuICAvLyBXYWxrIHRocm91Z2ggYWxsIHNvdXJjZSBmaWxlcyB0aGF0IGNvbnRhaW4gcmVzb2x2ZWQgcXVlcmllcyBhbmQgdXBkYXRlXG4gIC8vIHRoZSBzb3VyY2UgZmlsZXMgaWYgbmVlZGVkLiBOb3RlIHRoYXQgd2UgbmVlZCB0byB1cGRhdGUgbXVsdGlwbGUgcXVlcmllc1xuICAvLyB3aXRoaW4gYSBzb3VyY2UgZmlsZSB3aXRoaW4gdGhlIHNhbWUgcmVjb3JkZXIgaW4gb3JkZXIgdG8gbm90IHRocm93IG9mZlxuICAvLyB0aGUgVHlwZVNjcmlwdCBub2RlIG9mZnNldHMuXG4gIGltcG9ydHNNYXAuZm9yRWFjaCgocmVzb2x2ZWRJbXBvcnQ6IFJlc29sdmVkRG9jdW1lbnRJbXBvcnQsIHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUpID0+IHtcbiAgICBjb25zdCB7cGxhdGZvcm1Ccm93c2VySW1wb3J0LCBjb21tb25JbXBvcnQsIGRvY3VtZW50RWxlbWVudH0gPSByZXNvbHZlZEltcG9ydDtcbiAgICBpZiAoIWRvY3VtZW50RWxlbWVudCB8fCAhcGxhdGZvcm1Ccm93c2VySW1wb3J0KSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuICAgIGNvbnN0IHVwZGF0ZSA9IHRyZWUuYmVnaW5VcGRhdGUocmVsYXRpdmUoYmFzZVBhdGgsIHNvdXJjZUZpbGUuZmlsZU5hbWUpKTtcblxuICAgIGNvbnN0IHBsYXRmb3JtQnJvd3NlckRlY2xhcmF0aW9uID0gcGxhdGZvcm1Ccm93c2VySW1wb3J0LnBhcmVudC5wYXJlbnQ7XG4gICAgY29uc3QgbmV3UGxhdGZvcm1Ccm93c2VyVGV4dCA9XG4gICAgICAgIHJlbW92ZUZyb21JbXBvcnQocGxhdGZvcm1Ccm93c2VySW1wb3J0LCBzb3VyY2VGaWxlLCBET0NVTUVOVF9UT0tFTl9OQU1FKTtcbiAgICBjb25zdCBuZXdDb21tb25UZXh0ID0gY29tbW9uSW1wb3J0ID9cbiAgICAgICAgYWRkVG9JbXBvcnQoY29tbW9uSW1wb3J0LCBzb3VyY2VGaWxlLCBkb2N1bWVudEVsZW1lbnQubmFtZSwgZG9jdW1lbnRFbGVtZW50LnByb3BlcnR5TmFtZSkgOlxuICAgICAgICBjcmVhdGVJbXBvcnQoQ09NTU9OX0lNUE9SVCwgc291cmNlRmlsZSwgZG9jdW1lbnRFbGVtZW50Lm5hbWUsIGRvY3VtZW50RWxlbWVudC5wcm9wZXJ0eU5hbWUpO1xuXG4gICAgLy8gUmVwbGFjZSB0aGUgZXhpc3RpbmcgcXVlcnkgZGVjb3JhdG9yIGNhbGwgZXhwcmVzc2lvbiB3aXRoIHRoZSB1cGRhdGVkXG4gICAgLy8gY2FsbCBleHByZXNzaW9uIG5vZGUuXG4gICAgdXBkYXRlLnJlbW92ZShwbGF0Zm9ybUJyb3dzZXJEZWNsYXJhdGlvbi5nZXRTdGFydCgpLCBwbGF0Zm9ybUJyb3dzZXJEZWNsYXJhdGlvbi5nZXRXaWR0aCgpKTtcbiAgICB1cGRhdGUuaW5zZXJ0UmlnaHQocGxhdGZvcm1Ccm93c2VyRGVjbGFyYXRpb24uZ2V0U3RhcnQoKSwgbmV3UGxhdGZvcm1Ccm93c2VyVGV4dCk7XG5cbiAgICBpZiAoY29tbW9uSW1wb3J0KSB7XG4gICAgICBjb25zdCBjb21tb25EZWNsYXJhdGlvbiA9IGNvbW1vbkltcG9ydC5wYXJlbnQucGFyZW50O1xuICAgICAgdXBkYXRlLnJlbW92ZShjb21tb25EZWNsYXJhdGlvbi5nZXRTdGFydCgpLCBjb21tb25EZWNsYXJhdGlvbi5nZXRXaWR0aCgpKTtcbiAgICAgIHVwZGF0ZS5pbnNlcnRSaWdodChjb21tb25EZWNsYXJhdGlvbi5nZXRTdGFydCgpLCBuZXdDb21tb25UZXh0KTtcbiAgICB9IGVsc2Uge1xuICAgICAgdXBkYXRlLmluc2VydFJpZ2h0KHBsYXRmb3JtQnJvd3NlckRlY2xhcmF0aW9uLmdldFN0YXJ0KCksIG5ld0NvbW1vblRleHQpO1xuICAgIH1cblxuICAgIHRyZWUuY29tbWl0VXBkYXRlKHVwZGF0ZSk7XG4gIH0pO1xufVxuIl19