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
        define("@angular/core/schematics/migrations/undecorated-classes-with-decorated-fields", ["require", "exports", "@angular-devkit/schematics", "path", "typescript", "@angular/core/schematics/utils/project_tsconfig_paths", "@angular/core/schematics/utils/typescript/compiler_host", "@angular/core/schematics/utils/typescript/parse_tsconfig", "@angular/core/schematics/migrations/undecorated-classes-with-decorated-fields/utils"], factory);
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
    const utils_1 = require("@angular/core/schematics/migrations/undecorated-classes-with-decorated-fields/utils");
    /**
     * Migration that adds an Angular decorator to classes that have Angular field decorators.
     * https://hackmd.io/vuQfavzfRG6KUCtU7oK_EA
     */
    function default_1() {
        return (tree, context) => {
            const { buildPaths, testPaths } = project_tsconfig_paths_1.getProjectTsConfigPaths(tree);
            const basePath = process.cwd();
            const allPaths = [...buildPaths, ...testPaths];
            if (!allPaths.length) {
                throw new schematics_1.SchematicsException('Could not find any tsconfig file. Cannot add an Angular decorator to undecorated classes.');
            }
            for (const tsconfigPath of allPaths) {
                runUndecoratedClassesMigration(tree, tsconfigPath, basePath);
            }
        };
    }
    exports.default = default_1;
    function runUndecoratedClassesMigration(tree, tsconfigPath, basePath) {
        const parsed = parse_tsconfig_1.parseTsconfigFile(tsconfigPath, path_1.dirname(tsconfigPath));
        const host = compiler_host_1.createMigrationCompilerHost(tree, parsed.options, basePath);
        const program = ts.createProgram(parsed.fileNames, parsed.options, host);
        const typeChecker = program.getTypeChecker();
        const printer = ts.createPrinter();
        const sourceFiles = program.getSourceFiles().filter(file => !file.isDeclarationFile && !program.isSourceFileFromExternalLibrary(file));
        sourceFiles.forEach(sourceFile => {
            const classes = utils_1.getUndecoratedClassesWithDecoratedFields(sourceFile, typeChecker);
            if (classes.length === 0) {
                return;
            }
            const update = tree.beginUpdate(path_1.relative(basePath, sourceFile.fileName));
            classes.forEach((current, index) => {
                // If it's the first class that we're processing in this file, add `Directive` to the imports.
                if (index === 0 && !utils_1.hasNamedImport(current.importDeclaration, utils_1.FALLBACK_DECORATOR)) {
                    const namedImports = utils_1.getNamedImports(current.importDeclaration);
                    if (namedImports) {
                        update.remove(namedImports.getStart(), namedImports.getWidth());
                        update.insertRight(namedImports.getStart(), printer.printNode(ts.EmitHint.Unspecified, utils_1.addImport(namedImports, utils_1.FALLBACK_DECORATOR), sourceFile));
                    }
                }
                // We don't need to go through the AST to insert the decorator, because the change
                // is pretty basic. Also this has a better chance of preserving the user's formatting.
                update.insertLeft(current.classDeclaration.getStart(), `@${utils_1.FALLBACK_DECORATOR}()\n`);
            });
            tree.commitUpdate(update);
        });
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NjaGVtYXRpY3MvbWlncmF0aW9ucy91bmRlY29yYXRlZC1jbGFzc2VzLXdpdGgtZGVjb3JhdGVkLWZpZWxkcy9pbmRleC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7OztJQUVILDJEQUE2RjtJQUM3RiwrQkFBdUM7SUFDdkMsaUNBQWlDO0lBQ2pDLGtHQUEyRTtJQUMzRSwyRkFBaUY7SUFDakYsNkZBQXdFO0lBQ3hFLCtHQUFpSTtJQUdqSTs7O09BR0c7SUFDSDtRQUNFLE9BQU8sQ0FBQyxJQUFVLEVBQUUsT0FBeUIsRUFBRSxFQUFFO1lBQy9DLE1BQU0sRUFBQyxVQUFVLEVBQUUsU0FBUyxFQUFDLEdBQUcsZ0RBQXVCLENBQUMsSUFBSSxDQUFDLENBQUM7WUFDOUQsTUFBTSxRQUFRLEdBQUcsT0FBTyxDQUFDLEdBQUcsRUFBRSxDQUFDO1lBQy9CLE1BQU0sUUFBUSxHQUFHLENBQUMsR0FBRyxVQUFVLEVBQUUsR0FBRyxTQUFTLENBQUMsQ0FBQztZQUUvQyxJQUFJLENBQUMsUUFBUSxDQUFDLE1BQU0sRUFBRTtnQkFDcEIsTUFBTSxJQUFJLGdDQUFtQixDQUN6QiwyRkFBMkYsQ0FBQyxDQUFDO2FBQ2xHO1lBRUQsS0FBSyxNQUFNLFlBQVksSUFBSSxRQUFRLEVBQUU7Z0JBQ25DLDhCQUE4QixDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsUUFBUSxDQUFDLENBQUM7YUFDOUQ7UUFDSCxDQUFDLENBQUM7SUFDSixDQUFDO0lBZkQsNEJBZUM7SUFFRCxTQUFTLDhCQUE4QixDQUFDLElBQVUsRUFBRSxZQUFvQixFQUFFLFFBQWdCO1FBQ3hGLE1BQU0sTUFBTSxHQUFHLGtDQUFpQixDQUFDLFlBQVksRUFBRSxjQUFPLENBQUMsWUFBWSxDQUFDLENBQUMsQ0FBQztRQUN0RSxNQUFNLElBQUksR0FBRywyQ0FBMkIsQ0FBQyxJQUFJLEVBQUUsTUFBTSxDQUFDLE9BQU8sRUFBRSxRQUFRLENBQUMsQ0FBQztRQUN6RSxNQUFNLE9BQU8sR0FBRyxFQUFFLENBQUMsYUFBYSxDQUFDLE1BQU0sQ0FBQyxTQUFTLEVBQUUsTUFBTSxDQUFDLE9BQU8sRUFBRSxJQUFJLENBQUMsQ0FBQztRQUN6RSxNQUFNLFdBQVcsR0FBRyxPQUFPLENBQUMsY0FBYyxFQUFFLENBQUM7UUFDN0MsTUFBTSxPQUFPLEdBQUcsRUFBRSxDQUFDLGFBQWEsRUFBRSxDQUFDO1FBQ25DLE1BQU0sV0FBVyxHQUFHLE9BQU8sQ0FBQyxjQUFjLEVBQUUsQ0FBQyxNQUFNLENBQy9DLElBQUksQ0FBQyxFQUFFLENBQUMsQ0FBQyxJQUFJLENBQUMsaUJBQWlCLElBQUksQ0FBQyxPQUFPLENBQUMsK0JBQStCLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQztRQUV2RixXQUFXLENBQUMsT0FBTyxDQUFDLFVBQVUsQ0FBQyxFQUFFO1lBQy9CLE1BQU0sT0FBTyxHQUFHLGdEQUF3QyxDQUFDLFVBQVUsRUFBRSxXQUFXLENBQUMsQ0FBQztZQUVsRixJQUFJLE9BQU8sQ0FBQyxNQUFNLEtBQUssQ0FBQyxFQUFFO2dCQUN4QixPQUFPO2FBQ1I7WUFFRCxNQUFNLE1BQU0sR0FBRyxJQUFJLENBQUMsV0FBVyxDQUFDLGVBQVEsQ0FBQyxRQUFRLEVBQUUsVUFBVSxDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUM7WUFFekUsT0FBTyxDQUFDLE9BQU8sQ0FBQyxDQUFDLE9BQU8sRUFBRSxLQUFLLEVBQUUsRUFBRTtnQkFDakMsOEZBQThGO2dCQUM5RixJQUFJLEtBQUssS0FBSyxDQUFDLElBQUksQ0FBQyxzQkFBYyxDQUFDLE9BQU8sQ0FBQyxpQkFBaUIsRUFBRSwwQkFBa0IsQ0FBQyxFQUFFO29CQUNqRixNQUFNLFlBQVksR0FBRyx1QkFBZSxDQUFDLE9BQU8sQ0FBQyxpQkFBaUIsQ0FBQyxDQUFDO29CQUVoRSxJQUFJLFlBQVksRUFBRTt3QkFDaEIsTUFBTSxDQUFDLE1BQU0sQ0FBQyxZQUFZLENBQUMsUUFBUSxFQUFFLEVBQUUsWUFBWSxDQUFDLFFBQVEsRUFBRSxDQUFDLENBQUM7d0JBQ2hFLE1BQU0sQ0FBQyxXQUFXLENBQ2QsWUFBWSxDQUFDLFFBQVEsRUFBRSxFQUN2QixPQUFPLENBQUMsU0FBUyxDQUNiLEVBQUUsQ0FBQyxRQUFRLENBQUMsV0FBVyxFQUFFLGlCQUFTLENBQUMsWUFBWSxFQUFFLDBCQUFrQixDQUFDLEVBQ3BFLFVBQVUsQ0FBQyxDQUFDLENBQUM7cUJBQ3RCO2lCQUNGO2dCQUVELGtGQUFrRjtnQkFDbEYsc0ZBQXNGO2dCQUN0RixNQUFNLENBQUMsVUFBVSxDQUFDLE9BQU8sQ0FBQyxnQkFBZ0IsQ0FBQyxRQUFRLEVBQUUsRUFBRSxJQUFJLDBCQUFrQixNQUFNLENBQUMsQ0FBQztZQUN2RixDQUFDLENBQUMsQ0FBQztZQUVILElBQUksQ0FBQyxZQUFZLENBQUMsTUFBTSxDQUFDLENBQUM7UUFDNUIsQ0FBQyxDQUFDLENBQUM7SUFDTCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1J1bGUsIFNjaGVtYXRpY0NvbnRleHQsIFNjaGVtYXRpY3NFeGNlcHRpb24sIFRyZWV9IGZyb20gJ0Bhbmd1bGFyLWRldmtpdC9zY2hlbWF0aWNzJztcbmltcG9ydCB7ZGlybmFtZSwgcmVsYXRpdmV9IGZyb20gJ3BhdGgnO1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5pbXBvcnQge2dldFByb2plY3RUc0NvbmZpZ1BhdGhzfSBmcm9tICcuLi8uLi91dGlscy9wcm9qZWN0X3RzY29uZmlnX3BhdGhzJztcbmltcG9ydCB7Y3JlYXRlTWlncmF0aW9uQ29tcGlsZXJIb3N0fSBmcm9tICcuLi8uLi91dGlscy90eXBlc2NyaXB0L2NvbXBpbGVyX2hvc3QnO1xuaW1wb3J0IHtwYXJzZVRzY29uZmlnRmlsZX0gZnJvbSAnLi4vLi4vdXRpbHMvdHlwZXNjcmlwdC9wYXJzZV90c2NvbmZpZyc7XG5pbXBvcnQge0ZBTExCQUNLX0RFQ09SQVRPUiwgYWRkSW1wb3J0LCBnZXROYW1lZEltcG9ydHMsIGdldFVuZGVjb3JhdGVkQ2xhc3Nlc1dpdGhEZWNvcmF0ZWRGaWVsZHMsIGhhc05hbWVkSW1wb3J0fSBmcm9tICcuL3V0aWxzJztcblxuXG4vKipcbiAqIE1pZ3JhdGlvbiB0aGF0IGFkZHMgYW4gQW5ndWxhciBkZWNvcmF0b3IgdG8gY2xhc3NlcyB0aGF0IGhhdmUgQW5ndWxhciBmaWVsZCBkZWNvcmF0b3JzLlxuICogaHR0cHM6Ly9oYWNrbWQuaW8vdnVRZmF2emZSRzZLVUN0VTdvS19FQVxuICovXG5leHBvcnQgZGVmYXVsdCBmdW5jdGlvbigpOiBSdWxlIHtcbiAgcmV0dXJuICh0cmVlOiBUcmVlLCBjb250ZXh0OiBTY2hlbWF0aWNDb250ZXh0KSA9PiB7XG4gICAgY29uc3Qge2J1aWxkUGF0aHMsIHRlc3RQYXRoc30gPSBnZXRQcm9qZWN0VHNDb25maWdQYXRocyh0cmVlKTtcbiAgICBjb25zdCBiYXNlUGF0aCA9IHByb2Nlc3MuY3dkKCk7XG4gICAgY29uc3QgYWxsUGF0aHMgPSBbLi4uYnVpbGRQYXRocywgLi4udGVzdFBhdGhzXTtcblxuICAgIGlmICghYWxsUGF0aHMubGVuZ3RoKSB7XG4gICAgICB0aHJvdyBuZXcgU2NoZW1hdGljc0V4Y2VwdGlvbihcbiAgICAgICAgICAnQ291bGQgbm90IGZpbmQgYW55IHRzY29uZmlnIGZpbGUuIENhbm5vdCBhZGQgYW4gQW5ndWxhciBkZWNvcmF0b3IgdG8gdW5kZWNvcmF0ZWQgY2xhc3Nlcy4nKTtcbiAgICB9XG5cbiAgICBmb3IgKGNvbnN0IHRzY29uZmlnUGF0aCBvZiBhbGxQYXRocykge1xuICAgICAgcnVuVW5kZWNvcmF0ZWRDbGFzc2VzTWlncmF0aW9uKHRyZWUsIHRzY29uZmlnUGF0aCwgYmFzZVBhdGgpO1xuICAgIH1cbiAgfTtcbn1cblxuZnVuY3Rpb24gcnVuVW5kZWNvcmF0ZWRDbGFzc2VzTWlncmF0aW9uKHRyZWU6IFRyZWUsIHRzY29uZmlnUGF0aDogc3RyaW5nLCBiYXNlUGF0aDogc3RyaW5nKSB7XG4gIGNvbnN0IHBhcnNlZCA9IHBhcnNlVHNjb25maWdGaWxlKHRzY29uZmlnUGF0aCwgZGlybmFtZSh0c2NvbmZpZ1BhdGgpKTtcbiAgY29uc3QgaG9zdCA9IGNyZWF0ZU1pZ3JhdGlvbkNvbXBpbGVySG9zdCh0cmVlLCBwYXJzZWQub3B0aW9ucywgYmFzZVBhdGgpO1xuICBjb25zdCBwcm9ncmFtID0gdHMuY3JlYXRlUHJvZ3JhbShwYXJzZWQuZmlsZU5hbWVzLCBwYXJzZWQub3B0aW9ucywgaG9zdCk7XG4gIGNvbnN0IHR5cGVDaGVja2VyID0gcHJvZ3JhbS5nZXRUeXBlQ2hlY2tlcigpO1xuICBjb25zdCBwcmludGVyID0gdHMuY3JlYXRlUHJpbnRlcigpO1xuICBjb25zdCBzb3VyY2VGaWxlcyA9IHByb2dyYW0uZ2V0U291cmNlRmlsZXMoKS5maWx0ZXIoXG4gICAgICBmaWxlID0+ICFmaWxlLmlzRGVjbGFyYXRpb25GaWxlICYmICFwcm9ncmFtLmlzU291cmNlRmlsZUZyb21FeHRlcm5hbExpYnJhcnkoZmlsZSkpO1xuXG4gIHNvdXJjZUZpbGVzLmZvckVhY2goc291cmNlRmlsZSA9PiB7XG4gICAgY29uc3QgY2xhc3NlcyA9IGdldFVuZGVjb3JhdGVkQ2xhc3Nlc1dpdGhEZWNvcmF0ZWRGaWVsZHMoc291cmNlRmlsZSwgdHlwZUNoZWNrZXIpO1xuXG4gICAgaWYgKGNsYXNzZXMubGVuZ3RoID09PSAwKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3QgdXBkYXRlID0gdHJlZS5iZWdpblVwZGF0ZShyZWxhdGl2ZShiYXNlUGF0aCwgc291cmNlRmlsZS5maWxlTmFtZSkpO1xuXG4gICAgY2xhc3Nlcy5mb3JFYWNoKChjdXJyZW50LCBpbmRleCkgPT4ge1xuICAgICAgLy8gSWYgaXQncyB0aGUgZmlyc3QgY2xhc3MgdGhhdCB3ZSdyZSBwcm9jZXNzaW5nIGluIHRoaXMgZmlsZSwgYWRkIGBEaXJlY3RpdmVgIHRvIHRoZSBpbXBvcnRzLlxuICAgICAgaWYgKGluZGV4ID09PSAwICYmICFoYXNOYW1lZEltcG9ydChjdXJyZW50LmltcG9ydERlY2xhcmF0aW9uLCBGQUxMQkFDS19ERUNPUkFUT1IpKSB7XG4gICAgICAgIGNvbnN0IG5hbWVkSW1wb3J0cyA9IGdldE5hbWVkSW1wb3J0cyhjdXJyZW50LmltcG9ydERlY2xhcmF0aW9uKTtcblxuICAgICAgICBpZiAobmFtZWRJbXBvcnRzKSB7XG4gICAgICAgICAgdXBkYXRlLnJlbW92ZShuYW1lZEltcG9ydHMuZ2V0U3RhcnQoKSwgbmFtZWRJbXBvcnRzLmdldFdpZHRoKCkpO1xuICAgICAgICAgIHVwZGF0ZS5pbnNlcnRSaWdodChcbiAgICAgICAgICAgICAgbmFtZWRJbXBvcnRzLmdldFN0YXJ0KCksXG4gICAgICAgICAgICAgIHByaW50ZXIucHJpbnROb2RlKFxuICAgICAgICAgICAgICAgICAgdHMuRW1pdEhpbnQuVW5zcGVjaWZpZWQsIGFkZEltcG9ydChuYW1lZEltcG9ydHMsIEZBTExCQUNLX0RFQ09SQVRPUiksXG4gICAgICAgICAgICAgICAgICBzb3VyY2VGaWxlKSk7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgLy8gV2UgZG9uJ3QgbmVlZCB0byBnbyB0aHJvdWdoIHRoZSBBU1QgdG8gaW5zZXJ0IHRoZSBkZWNvcmF0b3IsIGJlY2F1c2UgdGhlIGNoYW5nZVxuICAgICAgLy8gaXMgcHJldHR5IGJhc2ljLiBBbHNvIHRoaXMgaGFzIGEgYmV0dGVyIGNoYW5jZSBvZiBwcmVzZXJ2aW5nIHRoZSB1c2VyJ3MgZm9ybWF0dGluZy5cbiAgICAgIHVwZGF0ZS5pbnNlcnRMZWZ0KGN1cnJlbnQuY2xhc3NEZWNsYXJhdGlvbi5nZXRTdGFydCgpLCBgQCR7RkFMTEJBQ0tfREVDT1JBVE9SfSgpXFxuYCk7XG4gICAgfSk7XG5cbiAgICB0cmVlLmNvbW1pdFVwZGF0ZSh1cGRhdGUpO1xuICB9KTtcbn1cbiJdfQ==