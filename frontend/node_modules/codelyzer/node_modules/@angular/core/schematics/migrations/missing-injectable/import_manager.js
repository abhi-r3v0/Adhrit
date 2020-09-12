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
        define("@angular/core/schematics/migrations/missing-injectable/import_manager", ["require", "exports", "path", "typescript"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const path_1 = require("path");
    const ts = require("typescript");
    /**
     * Import manager that can be used to add TypeScript imports to given source
     * files. The manager ensures that multiple transformations are applied properly
     * without shifted offsets and that similar existing import declarations are re-used.
     */
    class ImportManager {
        constructor(getUpdateRecorder, printer) {
            this.getUpdateRecorder = getUpdateRecorder;
            this.printer = printer;
            /** Map of import declarations that need to be updated to include the given symbols. */
            this.updatedImports = new Map();
            /** Map of source-files and their previously used identifier names. */
            this.usedIdentifierNames = new Map();
            /**
             * Array of previously resolved symbol imports. Cache can be re-used to return
             * the same identifier without checking the source-file again.
             */
            this.importCache = [];
        }
        /**
         * Adds an import to the given source-file and returns the TypeScript
         * identifier that can be used to access the newly imported symbol.
         */
        addImportToSourceFile(sourceFile, symbolName, moduleName, typeImport = false) {
            const sourceDir = path_1.dirname(sourceFile.fileName);
            let importStartIndex = 0;
            let existingImport = null;
            // In case the given import has been already generated previously, we just return
            // the previous generated identifier in order to avoid duplicate generated imports.
            const cachedImport = this.importCache.find(c => c.sourceFile === sourceFile && c.symbolName === symbolName &&
                c.moduleName === moduleName);
            if (cachedImport) {
                return cachedImport.identifier;
            }
            // Walk through all source-file top-level statements and search for import declarations
            // that already match the specified "moduleName" and can be updated to import the
            // given symbol. If no matching import can be found, the last import in the source-file
            // will be used as starting point for a new import that will be generated.
            for (let i = sourceFile.statements.length - 1; i >= 0; i--) {
                const statement = sourceFile.statements[i];
                if (!ts.isImportDeclaration(statement) || !ts.isStringLiteral(statement.moduleSpecifier) ||
                    !statement.importClause) {
                    continue;
                }
                if (importStartIndex === 0) {
                    importStartIndex = this._getEndPositionOfNode(statement);
                }
                const moduleSpecifier = statement.moduleSpecifier.text;
                if (moduleSpecifier.startsWith('.') &&
                    path_1.resolve(sourceDir, moduleSpecifier) !== path_1.resolve(sourceDir, moduleName) ||
                    moduleSpecifier !== moduleName) {
                    continue;
                }
                if (statement.importClause.namedBindings) {
                    const namedBindings = statement.importClause.namedBindings;
                    // In case a "Type" symbol is imported, we can't use namespace imports
                    // because these only export symbols available at runtime (no types)
                    if (ts.isNamespaceImport(namedBindings) && !typeImport) {
                        return ts.createPropertyAccess(ts.createIdentifier(namedBindings.name.text), ts.createIdentifier(symbolName || 'default'));
                    }
                    else if (ts.isNamedImports(namedBindings) && symbolName) {
                        const existingElement = namedBindings.elements.find(e => e.propertyName ? e.propertyName.text === symbolName : e.name.text === symbolName);
                        if (existingElement) {
                            return ts.createIdentifier(existingElement.name.text);
                        }
                        // In case the symbol could not be found in an existing import, we
                        // keep track of the import declaration as it can be updated to include
                        // the specified symbol name without having to create a new import.
                        existingImport = statement;
                    }
                }
                else if (statement.importClause.name && !symbolName) {
                    return ts.createIdentifier(statement.importClause.name.text);
                }
            }
            if (existingImport) {
                const propertyIdentifier = ts.createIdentifier(symbolName);
                const generatedUniqueIdentifier = this._getUniqueIdentifier(sourceFile, symbolName);
                const needsGeneratedUniqueName = generatedUniqueIdentifier.text !== symbolName;
                const importName = needsGeneratedUniqueName ? generatedUniqueIdentifier : propertyIdentifier;
                // Since it can happen that multiple classes need to be imported within the
                // specified source file and we want to add the identifiers to the existing
                // import declaration, we need to keep track of the updated import declarations.
                // We can't directly update the import declaration for each identifier as this
                // would throw off the recorder offsets. We need to keep track of the new identifiers
                // for the import and perform the import transformation as batches per source-file.
                this.updatedImports.set(existingImport, (this.updatedImports.get(existingImport) || []).concat({
                    propertyName: needsGeneratedUniqueName ? propertyIdentifier : undefined,
                    importName: importName,
                }));
                // Keep track of all updated imports so that we don't generate duplicate
                // similar imports as these can't be statically analyzed in the source-file yet.
                this.importCache.push({ sourceFile, moduleName, symbolName, identifier: importName });
                return importName;
            }
            let identifier = null;
            let newImport = null;
            if (symbolName) {
                const propertyIdentifier = ts.createIdentifier(symbolName);
                const generatedUniqueIdentifier = this._getUniqueIdentifier(sourceFile, symbolName);
                const needsGeneratedUniqueName = generatedUniqueIdentifier.text !== symbolName;
                identifier = needsGeneratedUniqueName ? generatedUniqueIdentifier : propertyIdentifier;
                newImport = ts.createImportDeclaration(undefined, undefined, ts.createImportClause(undefined, ts.createNamedImports([ts.createImportSpecifier(needsGeneratedUniqueName ? propertyIdentifier : undefined, identifier)])), ts.createStringLiteral(moduleName));
            }
            else {
                identifier = this._getUniqueIdentifier(sourceFile, 'defaultExport');
                newImport = ts.createImportDeclaration(undefined, undefined, ts.createImportClause(identifier, undefined), ts.createStringLiteral(moduleName));
            }
            const newImportText = this.printer.printNode(ts.EmitHint.Unspecified, newImport, sourceFile);
            // If the import is generated at the start of the source file, we want to add
            // a new-line after the import. Otherwise if the import is generated after an
            // existing import, we need to prepend a new-line so that the import is not on
            // the same line as the existing import anchor.
            this.getUpdateRecorder(sourceFile)
                .addNewImport(importStartIndex, importStartIndex === 0 ? `${newImportText}\n` : `\n${newImportText}`);
            // Keep track of all generated imports so that we don't generate duplicate
            // similar imports as these can't be statically analyzed in the source-file yet.
            this.importCache.push({ sourceFile, symbolName, moduleName, identifier });
            return identifier;
        }
        /**
         * Stores the collected import changes within the appropriate update recorders. The
         * updated imports can only be updated *once* per source-file because previous updates
         * could otherwise shift the source-file offsets.
         */
        recordChanges() {
            this.updatedImports.forEach((expressions, importDecl) => {
                const sourceFile = importDecl.getSourceFile();
                const recorder = this.getUpdateRecorder(sourceFile);
                const namedBindings = importDecl.importClause.namedBindings;
                const newNamedBindings = ts.updateNamedImports(namedBindings, namedBindings.elements.concat(expressions.map(({ propertyName, importName }) => ts.createImportSpecifier(propertyName, importName))));
                const newNamedBindingsText = this.printer.printNode(ts.EmitHint.Unspecified, newNamedBindings, sourceFile);
                recorder.updateExistingImport(namedBindings, newNamedBindingsText);
            });
        }
        /** Gets an unique identifier with a base name for the given source file. */
        _getUniqueIdentifier(sourceFile, baseName) {
            if (this.isUniqueIdentifierName(sourceFile, baseName)) {
                this._recordUsedIdentifier(sourceFile, baseName);
                return ts.createIdentifier(baseName);
            }
            let name = null;
            let counter = 1;
            do {
                name = `${baseName}_${counter++}`;
            } while (!this.isUniqueIdentifierName(sourceFile, name));
            this._recordUsedIdentifier(sourceFile, name);
            return ts.createIdentifier(name);
        }
        /**
         * Checks whether the specified identifier name is used within the given
         * source file.
         */
        isUniqueIdentifierName(sourceFile, name) {
            if (this.usedIdentifierNames.has(sourceFile) &&
                this.usedIdentifierNames.get(sourceFile).indexOf(name) !== -1) {
                return false;
            }
            // Walk through the source file and search for an identifier matching
            // the given name. In that case, it's not guaranteed that this name
            // is unique in the given declaration scope and we just return false.
            const nodeQueue = [sourceFile];
            while (nodeQueue.length) {
                const node = nodeQueue.shift();
                if (ts.isIdentifier(node) && node.text === name) {
                    return false;
                }
                nodeQueue.push(...node.getChildren());
            }
            return true;
        }
        _recordUsedIdentifier(sourceFile, identifierName) {
            this.usedIdentifierNames.set(sourceFile, (this.usedIdentifierNames.get(sourceFile) || []).concat(identifierName));
        }
        /**
         * Determines the full end of a given node. By default the end position of a node is
         * before all trailing comments. This could mean that generated imports shift comments.
         */
        _getEndPositionOfNode(node) {
            const nodeEndPos = node.getEnd();
            const commentRanges = ts.getTrailingCommentRanges(node.getSourceFile().text, nodeEndPos);
            if (!commentRanges || !commentRanges.length) {
                return nodeEndPos;
            }
            return commentRanges[commentRanges.length - 1].end;
        }
    }
    exports.ImportManager = ImportManager;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW1wb3J0X21hbmFnZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NjaGVtYXRpY3MvbWlncmF0aW9ucy9taXNzaW5nLWluamVjdGFibGUvaW1wb3J0X21hbmFnZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7SUFFSCwrQkFBc0M7SUFDdEMsaUNBQWlDO0lBR2pDOzs7O09BSUc7SUFDSCxNQUFhLGFBQWE7UUFpQnhCLFlBQ1ksaUJBQXdELEVBQ3hELE9BQW1CO1lBRG5CLHNCQUFpQixHQUFqQixpQkFBaUIsQ0FBdUM7WUFDeEQsWUFBTyxHQUFQLE9BQU8sQ0FBWTtZQWxCL0IsdUZBQXVGO1lBQy9FLG1CQUFjLEdBQ2xCLElBQUksR0FBRyxFQUFxRixDQUFDO1lBQ2pHLHNFQUFzRTtZQUM5RCx3QkFBbUIsR0FBRyxJQUFJLEdBQUcsRUFBMkIsQ0FBQztZQUNqRTs7O2VBR0c7WUFDSyxnQkFBVyxHQUtiLEVBQUUsQ0FBQztRQUl5QixDQUFDO1FBRW5DOzs7V0FHRztRQUNILHFCQUFxQixDQUNqQixVQUF5QixFQUFFLFVBQXVCLEVBQUUsVUFBa0IsRUFDdEUsVUFBVSxHQUFHLEtBQUs7WUFDcEIsTUFBTSxTQUFTLEdBQUcsY0FBTyxDQUFDLFVBQVUsQ0FBQyxRQUFRLENBQUMsQ0FBQztZQUMvQyxJQUFJLGdCQUFnQixHQUFHLENBQUMsQ0FBQztZQUN6QixJQUFJLGNBQWMsR0FBOEIsSUFBSSxDQUFDO1lBRXJELGlGQUFpRjtZQUNqRixtRkFBbUY7WUFDbkYsTUFBTSxZQUFZLEdBQUcsSUFBSSxDQUFDLFdBQVcsQ0FBQyxJQUFJLENBQ3RDLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLFVBQVUsS0FBSyxVQUFVLElBQUksQ0FBQyxDQUFDLFVBQVUsS0FBSyxVQUFVO2dCQUMzRCxDQUFDLENBQUMsVUFBVSxLQUFLLFVBQVUs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LElBQUksQ0FBQyxXQUFXLEVBQUUsQ0FBQyxDQUFDO2FBQ3ZDO1lBQ0QsT0FBTyxJQUFJLENBQUM7UUFDZCxDQUFDO1FBRU8scUJBQXFCLENBQUMsVUFBeUIsRUFBRSxjQUFzQjtZQUM3RSxJQUFJLENBQUMsbUJBQW1CLENBQUMsR0FBRyxDQUN4QixVQUFVLEVBQUUsQ0FBQyxJQUFJLENBQUMsbUJBQW1CLENBQUMsR0FBRyxDQUFDLFVBQVUsQ0FBQyxJQUFJLEVBQUUsQ0FBQyxDQUFDLE1BQU0sQ0FBQyxjQUFjLENBQUMsQ0FBQyxDQUFDO1FBQzNGLENBQUM7UUFFRDs7O1dBR0c7UUFDSyxxQkFBcUIsQ0FBQyxJQUFhO1lBQ3pDLE1BQU0sVUFBVSxHQUFHLElBQUksQ0FBQyxNQUFNLEVBQUUsQ0FBQztZQUNqQyxNQUFNLGFBQWEsR0FBRyxFQUFFLENBQUMsd0JBQXdCLENBQUMsSUFBSSxDQUFDLGFBQWEsRUFBRSxDQUFDLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztZQUN6RixJQUFJLENBQUMsYUFBYSxJQUFJLENBQUMsYUFBYSxDQUFDLE1BQU0sRUFBRTtnQkFDM0MsT0FBTyxVQUFVLENBQUM7YUFDbkI7WUFDRCxPQUFPLGFBQWEsQ0FBQyxhQUFhLENBQUMsTUFBTSxHQUFHLENBQUMsQ0FBRyxDQUFDLEdBQUcsQ0FBQztRQUN2RCxDQUFDO0tBQ0Y7SUE1T0Qsc0NBNE9DIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge2Rpcm5hbWUsIHJlc29sdmV9IGZyb20gJ3BhdGgnO1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5pbXBvcnQge1VwZGF0ZVJlY29yZGVyfSBmcm9tICcuL3VwZGF0ZV9yZWNvcmRlcic7XG5cbi8qKlxuICogSW1wb3J0IG1hbmFnZXIgdGhhdCBjYW4gYmUgdXNlZCB0byBhZGQgVHlwZVNjcmlwdCBpbXBvcnRzIHRvIGdpdmVuIHNvdXJjZVxuICogZmlsZXMuIFRoZSBtYW5hZ2VyIGVuc3VyZXMgdGhhdCBtdWx0aXBsZSB0cmFuc2Zvcm1hdGlvbnMgYXJlIGFwcGxpZWQgcHJvcGVybHlcbiAqIHdpdGhvdXQgc2hpZnRlZCBvZmZzZXRzIGFuZCB0aGF0IHNpbWlsYXIgZXhpc3RpbmcgaW1wb3J0IGRlY2xhcmF0aW9ucyBhcmUgcmUtdXNlZC5cbiAqL1xuZXhwb3J0IGNsYXNzIEltcG9ydE1hbmFnZXIge1xuICAvKiogTWFwIG9mIGltcG9ydCBkZWNsYXJhdGlvbnMgdGhhdCBuZWVkIHRvIGJlIHVwZGF0ZWQgdG8gaW5jbHVkZSB0aGUgZ2l2ZW4gc3ltYm9scy4gKi9cbiAgcHJpdmF0ZSB1cGRhdGVkSW1wb3J0cyA9XG4gICAgICBuZXcgTWFwPHRzLkltcG9ydERlY2xhcmF0aW9uLCB7cHJvcGVydHlOYW1lPzogdHMuSWRlbnRpZmllciwgaW1wb3J0TmFtZTogdHMuSWRlbnRpZmllcn1bXT4oKTtcbiAgLyoqIE1hcCBvZiBzb3VyY2UtZmlsZXMgYW5kIHRoZWlyIHByZXZpb3VzbHkgdXNlZCBpZGVudGlmaWVyIG5hbWVzLiAqL1xuICBwcml2YXRlIHVzZWRJZGVudGlmaWVyTmFtZXMgPSBuZXcgTWFwPHRzLlNvdXJjZUZpbGUsIHN0cmluZ1tdPigpO1xuICAvKipcbiAgICogQXJyYXkgb2YgcHJldmlvdXNseSByZXNvbHZlZCBzeW1ib2wgaW1wb3J0cy4gQ2FjaGUgY2FuIGJlIHJlLXVzZWQgdG8gcmV0dXJuXG4gICAqIHRoZSBzYW1lIGlkZW50aWZpZXIgd2l0aG91dCBjaGVja2luZyB0aGUgc291cmNlLWZpbGUgYWdhaW4uXG4gICAqL1xuICBwcml2YXRlIGltcG9ydENhY2hlOiB7XG4gICAgc291cmNlRmlsZTogdHMuU291cmNlRmlsZSxcbiAgICBzeW1ib2xOYW1lOiBzdHJpbmd8bnVsbCxcbiAgICBtb2R1bGVOYW1lOiBzdHJpbmcsXG4gICAgaWRlbnRpZmllcjogdHMuSWRlbnRpZmllclxuICB9W10gPSBbXTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgZ2V0VXBkYXRlUmVjb3JkZXI6IChzZjogdHMuU291cmNlRmlsZSkgPT4gVXBkYXRlUmVjb3JkZXIsXG4gICAgICBwcml2YXRlIHByaW50ZXI6IHRzLlByaW50ZXIpIHt9XG5cbiAgLyoqXG4gICAqIEFkZHMgYW4gaW1wb3J0IHRvIHRoZSBnaXZlbiBzb3VyY2UtZmlsZSBhbmQgcmV0dXJucyB0aGUgVHlwZVNjcmlwdFxuICAgKiBpZGVudGlmaWVyIHRoYXQgY2FuIGJlIHVzZWQgdG8gYWNjZXNzIHRoZSBuZXdseSBpbXBvcnRlZCBzeW1ib2wuXG4gICAqL1xuICBhZGRJbXBvcnRUb1NvdXJjZUZpbGUoXG4gICAgICBzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlLCBzeW1ib2xOYW1lOiBzdHJpbmd8bnVsbCwgbW9kdWxlTmFtZTogc3RyaW5nLFxuICAgICAgdHlwZUltcG9ydCA9IGZhbHNlKTogdHMuRXhwcmVzc2lvbiB7XG4gICAgY29uc3Qgc291cmNlRGlyID0gZGlybmFtZShzb3VyY2VGaWxlLmZpbGVOYW1lKTtcbiAgICBsZXQgaW1wb3J0U3RhcnRJbmRleCA9IDA7XG4gICAgbGV0IGV4aXN0aW5nSW1wb3J0OiB0cy5JbXBvcnREZWNsYXJhdGlvbnxudWxsID0gbnVsbDtcblxuICAgIC8vIEluIGNhc2UgdGhlIGdpdmVuIGltcG9ydCBoYXMgYmVlbiBhbHJlYWR5IGdlbmVyYXRlZCBwcmV2aW91c2x5LCB3ZSBqdXN0IHJldHVyblxuICAgIC8vIHRoZSBwcmV2aW91cyBnZW5lcmF0ZWQgaWRlbnRpZmllciBpbiBvcmRlciB0byBhdm9pZCBkdXBsaWNhdGUgZ2VuZXJhdGVkIGltcG9ydHMuXG4gICAgY29uc3QgY2FjaGVkSW1wb3J0ID0gdGhpcy5pbXBvcnRDYWNoZS5maW5kKFxuICAgICAgICBjID0+IGMuc291cmNlRmlsZSA9PT0gc291cmNlRmlsZSAmJiBjLnN5bWJvbE5hbWUgPT09IHN5bWJvbE5hbWUgJiZcbiAgICAgICAgICAgIGMubW9kdWxlTmFtZSA9PT0gbW9kdWxlTmFtZSk7XG4gICAgaWYgKGNhY2hlZEltcG9ydCkge1xuICAgICAgcmV0dXJuIGNhY2hlZEltcG9ydC5pZGVudGlmaWVyO1xuICAgIH1cblxuICAgIC8vIFdhbGsgdGhyb3VnaCBhbGwgc291cmNlLWZpbGUgdG9wLWxldmVsIHN0YXRlbWVudHMgYW5kIHNlYXJjaCBmb3IgaW1wb3J0IGRlY2xhcmF0aW9uc1xuICAgIC8vIHRoYXQgYWxyZWFkeSBtYXRjaCB0aGUgc3BlY2lmaWVkIFwibW9kdWxlTmFtZVwiIGFuZCBjYW4gYmUgdXBkYXRlZCB0byBpbXBvcnQgdGhlXG4gICAgLy8gZ2l2ZW4gc3ltYm9sLiBJZiBubyBtYXRjaGluZyBpbXBvcnQgY2FuIGJlIGZvdW5kLCB0aGUgbGFzdCBpbXBvcnQgaW4gdGhlIHNvdXJjZS1maWxlXG4gICAgLy8gd2lsbCBiZSB1c2VkIGFzIHN0YXJ0aW5nIHBvaW50IGZvciBhIG5ldyBpbXBvcnQgdGhhdCB3aWxsIGJlIGdlbmVyYXRlZC5cbiAgICBmb3IgKGxldCBpID0gc291cmNlRmlsZS5zdGF0ZW1lbnRzLmxlbmd0aCAtIDE7IGkgPj0gMDsgaS0tKSB7XG4gICAgICBjb25zdCBzdGF0ZW1lbnQgPSBzb3VyY2VGaWxlLnN0YXRlbWVudHNbaV07XG5cbiAgICAgIGlmICghdHMuaXNJbXBvcnREZWNsYXJhdGlvbihzdGF0ZW1lbnQpIHx8ICF0cy5pc1N0cmluZ0xpdGVyYWwoc3RhdGVtZW50Lm1vZHVsZVNwZWNpZmllcikgfHxcbiAgICAgICAgICAhc3RhdGVtZW50LmltcG9ydENsYXVzZSkge1xuICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cblxuICAgICAgaWYgKGltcG9ydFN0YXJ0SW5kZXggPT09IDApIHtcbiAgICAgICAgaW1wb3J0U3RhcnRJbmRleCA9IHRoaXMuX2dldEVuZFBvc2l0aW9uT2ZOb2RlKHN0YXRlbWVudCk7XG4gICAgICB9XG5cbiAgICAgIGNvbnN0IG1vZHVsZVNwZWNpZmllciA9IHN0YXRlbWVudC5tb2R1bGVTcGVjaWZpZXIudGV4dDtcblxuICAgICAgaWYgKG1vZHVsZVNwZWNpZmllci5zdGFydHNXaXRoKCcuJykgJiZcbiAgICAgICAgICAgICAgcmVzb2x2ZShzb3VyY2VEaXIsIG1vZHVsZVNwZWNpZmllcikgIT09IHJlc29sdmUoc291cmNlRGlyLCBtb2R1bGVOYW1lKSB8fFxuICAgICAgICAgIG1vZHVsZVNwZWNpZmllciAhPT0gbW9kdWxlTmFtZSkge1xuICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cblxuICAgICAgaWYgKHN0YXRlbWVudC5pbXBvcnRDbGF1c2UubmFtZWRCaW5kaW5ncykge1xuICAgICAgICBjb25zdCBuYW1lZEJpbmRpbmdzID0gc3RhdGVtZW50LmltcG9ydENsYXVzZS5uYW1lZEJpbmRpbmdzO1xuXG4gICAgICAgIC8vIEluIGNhc2UgYSBcIlR5cGVcIiBzeW1ib2wgaXMgaW1wb3J0ZWQsIHdlIGNhbid0IHVzZSBuYW1lc3BhY2UgaW1wb3J0c1xuICAgICAgICAvLyBiZWNhdXNlIHRoZXNlIG9ubHkgZXhwb3J0IHN5bWJvbHMgYXZhaWxhYmxlIGF0IHJ1bnRpbWUgKG5vIHR5cGVzKVxuICAgICAgICBpZiAodHMuaXNOYW1lc3BhY2VJbXBvcnQobmFtZWRCaW5kaW5ncykgJiYgIXR5cGVJbXBvcnQpIHtcbiAgICAgICAgICByZXR1cm4gdHMuY3JlYXRlUHJvcGVydHlBY2Nlc3MoXG4gICAgICAgICAgICAgIHRzLmNyZWF0ZUlkZW50aWZpZXIobmFtZWRCaW5kaW5ncy5uYW1lLnRleHQpLFxuICAgICAgICAgICAgICB0cy5jcmVhdGVJZGVudGlmaWVyKHN5bWJvbE5hbWUgfHwgJ2RlZmF1bHQnKSk7XG4gICAgICAgIH0gZWxzZSBpZiAodHMuaXNOYW1lZEltcG9ydHMobmFtZWRCaW5kaW5ncykgJiYgc3ltYm9sTmFtZSkge1xuICAgICAgICAgIGNvbnN0IGV4aXN0aW5nRWxlbWVudCA9IG5hbWVkQmluZGluZ3MuZWxlbWVudHMuZmluZChcbiAgICAgICAgICAgICAgZSA9PlxuICAgICAgICAgICAgICAgICAgZS5wcm9wZXJ0eU5hbWUgPyBlLnByb3BlcnR5TmFtZS50ZXh0ID09PSBzeW1ib2xOYW1lIDogZS5uYW1lLnRleHQgPT09IHN5bWJvbE5hbWUpO1xuXG4gICAgICAgICAgaWYgKGV4aXN0aW5nRWxlbWVudCkge1xuICAgICAgICAgICAgcmV0dXJuIHRzLmNyZWF0ZUlkZW50aWZpZXIoZXhpc3RpbmdFbGVtZW50Lm5hbWUudGV4dCk7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgLy8gSW4gY2FzZSB0aGUgc3ltYm9sIGNvdWxkIG5vdCBiZSBmb3VuZCBpbiBhbiBleGlzdGluZyBpbXBvcnQsIHdlXG4gICAgICAgICAgLy8ga2VlcCB0cmFjayBvZiB0aGUgaW1wb3J0IGRlY2xhcmF0aW9uIGFzIGl0IGNhbiBiZSB1cGRhdGVkIHRvIGluY2x1ZGVcbiAgICAgICAgICAvLyB0aGUgc3BlY2lmaWVkIHN5bWJvbCBuYW1lIHdpdGhvdXQgaGF2aW5nIHRvIGNyZWF0ZSBhIG5ldyBpbXBvcnQuXG4gICAgICAgICAgZXhpc3RpbmdJbXBvcnQgPSBzdGF0ZW1lbnQ7XG4gICAgICAgIH1cbiAgICAgIH0gZWxzZSBpZiAoc3RhdGVtZW50LmltcG9ydENsYXVzZS5uYW1lICYmICFzeW1ib2xOYW1lKSB7XG4gICAgICAgIHJldHVybiB0cy5jcmVhdGVJZGVudGlmaWVyKHN0YXRlbWVudC5pbXBvcnRDbGF1c2UubmFtZS50ZXh0KTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICBpZiAoZXhpc3RpbmdJbXBvcnQpIHtcbiAgICAgIGNvbnN0IHByb3BlcnR5SWRlbnRpZmllciA9IHRzLmNyZWF0ZUlkZW50aWZpZXIoc3ltYm9sTmFtZSAhKTtcbiAgICAgIGNvbnN0IGdlbmVyYXRlZFVuaXF1ZUlkZW50aWZpZXIgPSB0aGlzLl9nZXRVbmlxdWVJZGVudGlmaWVyKHNvdXJjZUZpbGUsIHN5bWJvbE5hbWUgISk7XG4gICAgICBjb25zdCBuZWVkc0dlbmVyYXRlZFVuaXF1ZU5hbWUgPSBnZW5lcmF0ZWRVbmlxdWVJZGVudGlmaWVyLnRleHQgIT09IHN5bWJvbE5hbWU7XG4gICAgICBjb25zdCBpbXBvcnROYW1lID0gbmVlZHNHZW5lcmF0ZWRVbmlxdWVOYW1lID8gZ2VuZXJhdGVkVW5pcXVlSWRlbnRpZmllciA6IHByb3BlcnR5SWRlbnRpZmllcjtcblxuICAgICAgLy8gU2luY2UgaXQgY2FuIGhhcHBlbiB0aGF0IG11bHRpcGxlIGNsYXNzZXMgbmVlZCB0byBiZSBpbXBvcnRlZCB3aXRoaW4gdGhlXG4gICAgICAvLyBzcGVjaWZpZWQgc291cmNlIGZpbGUgYW5kIHdlIHdhbnQgdG8gYWRkIHRoZSBpZGVudGlmaWVycyB0byB0aGUgZXhpc3RpbmdcbiAgICAgIC8vIGltcG9ydCBkZWNsYXJhdGlvbiwgd2UgbmVlZCB0byBrZWVwIHRyYWNrIG9mIHRoZSB1cGRhdGVkIGltcG9ydCBkZWNsYXJhdGlvbnMuXG4gICAgICAvLyBXZSBjYW4ndCBkaXJlY3RseSB1cGRhdGUgdGhlIGltcG9ydCBkZWNsYXJhdGlvbiBmb3IgZWFjaCBpZGVudGlmaWVyIGFzIHRoaXNcbiAgICAgIC8vIHdvdWxkIHRocm93IG9mZiB0aGUgcmVjb3JkZXIgb2Zmc2V0cy4gV2UgbmVlZCB0byBrZWVwIHRyYWNrIG9mIHRoZSBuZXcgaWRlbnRpZmllcnNcbiAgICAgIC8vIGZvciB0aGUgaW1wb3J0IGFuZCBwZXJmb3JtIHRoZSBpbXBvcnQgdHJhbnNmb3JtYXRpb24gYXMgYmF0Y2hlcyBwZXIgc291cmNlLWZpbGUuXG4gICAgICB0aGlzLnVwZGF0ZWRJbXBvcnRzLnNldChcbiAgICAgICAgICBleGlzdGluZ0ltcG9ydCwgKHRoaXMudXBkYXRlZEltcG9ydHMuZ2V0KGV4aXN0aW5nSW1wb3J0KSB8fCBbXSkuY29uY2F0KHtcbiAgICAgICAgICAgIHByb3BlcnR5TmFtZTogbmVlZHNHZW5lcmF0ZWRVbmlxdWVOYW1lID8gcHJvcGVydHlJZGVudGlmaWVyIDogdW5kZWZpbmVkLFxuICAgICAgICAgICAgaW1wb3J0TmFtZTogaW1wb3J0TmFtZSxcbiAgICAgICAgICB9KSk7XG5cbiAgICAgIC8vIEtlZXAgdHJhY2sgb2YgYWxsIHVwZGF0ZWQgaW1wb3J0cyBzbyB0aGF0IHdlIGRvbid0IGdlbmVyYXRlIGR1cGxpY2F0ZVxuICAgICAgLy8gc2ltaWxhciBpbXBvcnRzIGFzIHRoZXNlIGNhbid0IGJlIHN0YXRpY2FsbHkgYW5hbHl6ZWQgaW4gdGhlIHNvdXJjZS1maWxlIHlldC5cbiAgICAgIHRoaXMuaW1wb3J0Q2FjaGUucHVzaCh7c291cmNlRmlsZSwgbW9kdWxlTmFtZSwgc3ltYm9sTmFtZSwgaWRlbnRpZmllcjogaW1wb3J0TmFtZX0pO1xuXG4gICAgICByZXR1cm4gaW1wb3J0TmFtZTtcbiAgICB9XG5cbiAgICBsZXQgaWRlbnRpZmllcjogdHMuSWRlbnRpZmllcnxudWxsID0gbnVsbDtcbiAgICBsZXQgbmV3SW1wb3J0OiB0cy5JbXBvcnREZWNsYXJhdGlvbnxudWxsID0gbnVsbDtcblxuICAgIGlmIChzeW1ib2xOYW1lKSB7XG4gICAgICBjb25zdCBwcm9wZXJ0eUlkZW50aWZpZXIgPSB0cy5jcmVhdGVJZGVudGlmaWVyKHN5bWJvbE5hbWUpO1xuICAgICAgY29uc3QgZ2VuZXJhdGVkVW5pcXVlSWRlbnRpZmllciA9IHRoaXMuX2dldFVuaXF1ZUlkZW50aWZpZXIoc291cmNlRmlsZSwgc3ltYm9sTmFtZSk7XG4gICAgICBjb25zdCBuZWVkc0dlbmVyYXRlZFVuaXF1ZU5hbWUgPSBnZW5lcmF0ZWRVbmlxdWVJZGVudGlmaWVyLnRleHQgIT09IHN5bWJvbE5hbWU7XG4gICAgICBpZGVudGlmaWVyID0gbmVlZHNHZW5lcmF0ZWRVbmlxdWVOYW1lID8gZ2VuZXJhdGVkVW5pcXVlSWRlbnRpZmllciA6IHByb3BlcnR5SWRlbnRpZmllcjtcblxuICAgICAgbmV3SW1wb3J0ID0gdHMuY3JlYXRlSW1wb3J0RGVjbGFyYXRpb24oXG4gICAgICAgICAgdW5kZWZpbmVkLCB1bmRlZmluZWQsXG4gICAgICAgICAgdHMuY3JlYXRlSW1wb3J0Q2xhdXNlKFxuICAgICAgICAgICAgICB1bmRlZmluZWQsXG4gICAgICAgICAgICAgIHRzLmNyZWF0ZU5hbWVkSW1wb3J0cyhbdHMuY3JlYXRlSW1wb3J0U3BlY2lmaWVyKFxuICAgICAgICAgICAgICAgICAgbmVlZHNHZW5lcmF0ZWRVbmlxdWVOYW1lID8gcHJvcGVydHlJZGVudGlmaWVyIDogdW5kZWZpbmVkLCBpZGVudGlmaWVyKV0pKSxcbiAgICAgICAgICB0cy5jcmVhdGVTdHJpbmdMaXRlcmFsKG1vZHVsZU5hbWUpKTtcbiAgICB9IGVsc2Uge1xuICAgICAgaWRlbnRpZmllciA9IHRoaXMuX2dldFVuaXF1ZUlkZW50aWZpZXIoc291cmNlRmlsZSwgJ2RlZmF1bHRFeHBvcnQnKTtcbiAgICAgIG5ld0ltcG9ydCA9IHRzLmNyZWF0ZUltcG9ydERlY2xhcmF0aW9uKFxuICAgICAgICAgIHVuZGVmaW5lZCwgdW5kZWZpbmVkLCB0cy5jcmVhdGVJbXBvcnRDbGF1c2UoaWRlbnRpZmllciwgdW5kZWZpbmVkKSxcbiAgICAgICAgICB0cy5jcmVhdGVTdHJpbmdMaXRlcmFsKG1vZHVsZU5hbWUpKTtcbiAgICB9XG5cbiAgICBjb25zdCBuZXdJbXBvcnRUZXh0ID0gdGhpcy5wcmludGVyLnByaW50Tm9kZSh0cy5FbWl0SGludC5VbnNwZWNpZmllZCwgbmV3SW1wb3J0LCBzb3VyY2VGaWxlKTtcbiAgICAvLyBJZiB0aGUgaW1wb3J0IGlzIGdlbmVyYXRlZCBhdCB0aGUgc3RhcnQgb2YgdGhlIHNvdXJjZSBmaWxlLCB3ZSB3YW50IHRvIGFkZFxuICAgIC8vIGEgbmV3LWxpbmUgYWZ0ZXIgdGhlIGltcG9ydC4gT3RoZXJ3aXNlIGlmIHRoZSBpbXBvcnQgaXMgZ2VuZXJhdGVkIGFmdGVyIGFuXG4gICAgLy8gZXhpc3RpbmcgaW1wb3J0LCB3ZSBuZWVkIHRvIHByZXBlbmQgYSBuZXctbGluZSBzbyB0aGF0IHRoZSBpbXBvcnQgaXMgbm90IG9uXG4gICAgLy8gdGhlIHNhbWUgbGluZSBhcyB0aGUgZXhpc3RpbmcgaW1wb3J0IGFuY2hvci5cbiAgICB0aGlzLmdldFVwZGF0ZVJlY29yZGVyKHNvdXJjZUZpbGUpXG4gICAgICAgIC5hZGROZXdJbXBvcnQoXG4gICAgICAgICAgICBpbXBvcnRTdGFydEluZGV4LCBpbXBvcnRTdGFydEluZGV4ID09PSAwID8gYCR7bmV3SW1wb3J0VGV4dH1cXG5gIDogYFxcbiR7bmV3SW1wb3J0VGV4dH1gKTtcblxuICAgIC8vIEtlZXAgdHJhY2sgb2YgYWxsIGdlbmVyYXRlZCBpbXBvcnRzIHNvIHRoYXQgd2UgZG9uJ3QgZ2VuZXJhdGUgZHVwbGljYXRlXG4gICAgLy8gc2ltaWxhciBpbXBvcnRzIGFzIHRoZXNlIGNhbid0IGJlIHN0YXRpY2FsbHkgYW5hbHl6ZWQgaW4gdGhlIHNvdXJjZS1maWxlIHlldC5cbiAgICB0aGlzLmltcG9ydENhY2hlLnB1c2goe3NvdXJjZUZpbGUsIHN5bWJvbE5hbWUsIG1vZHVsZU5hbWUsIGlkZW50aWZpZXJ9KTtcblxuICAgIHJldHVybiBpZGVudGlmaWVyO1xuICB9XG5cbiAgLyoqXG4gICAqIFN0b3JlcyB0aGUgY29sbGVjdGVkIGltcG9ydCBjaGFuZ2VzIHdpdGhpbiB0aGUgYXBwcm9wcmlhdGUgdXBkYXRlIHJlY29yZGVycy4gVGhlXG4gICAqIHVwZGF0ZWQgaW1wb3J0cyBjYW4gb25seSBiZSB1cGRhdGVkICpvbmNlKiBwZXIgc291cmNlLWZpbGUgYmVjYXVzZSBwcmV2aW91cyB1cGRhdGVzXG4gICAqIGNvdWxkIG90aGVyd2lzZSBzaGlmdCB0aGUgc291cmNlLWZpbGUgb2Zmc2V0cy5cbiAgICovXG4gIHJlY29yZENoYW5nZXMoKSB7XG4gICAgdGhpcy51cGRhdGVkSW1wb3J0cy5mb3JFYWNoKChleHByZXNzaW9ucywgaW1wb3J0RGVjbCkgPT4ge1xuICAgICAgY29uc3Qgc291cmNlRmlsZSA9IGltcG9ydERlY2wuZ2V0U291cmNlRmlsZSgpO1xuICAgICAgY29uc3QgcmVjb3JkZXIgPSB0aGlzLmdldFVwZGF0ZVJlY29yZGVyKHNvdXJjZUZpbGUpO1xuICAgICAgY29uc3QgbmFtZWRCaW5kaW5ncyA9IGltcG9ydERlY2wuaW1wb3J0Q2xhdXNlICEubmFtZWRCaW5kaW5ncyBhcyB0cy5OYW1lZEltcG9ydHM7XG4gICAgICBjb25zdCBuZXdOYW1lZEJpbmRpbmdzID0gdHMudXBkYXRlTmFtZWRJbXBvcnRzKFxuICAgICAgICAgIG5hbWVkQmluZGluZ3MsXG4gICAgICAgICAgbmFtZWRCaW5kaW5ncy5lbGVtZW50cy5jb25jYXQoZXhwcmVzc2lvbnMubWFwKFxuICAgICAgICAgICAgICAoe3Byb3BlcnR5TmFtZSwgaW1wb3J0TmFtZX0pID0+IHRzLmNyZWF0ZUltcG9ydFNwZWNpZmllcihwcm9wZXJ0eU5hbWUsIGltcG9ydE5hbWUpKSkpO1xuXG4gICAgICBjb25zdCBuZXdOYW1lZEJpbmRpbmdzVGV4dCA9XG4gICAgICAgICAgdGhpcy5wcmludGVyLnByaW50Tm9kZSh0cy5FbWl0SGludC5VbnNwZWNpZmllZCwgbmV3TmFtZWRCaW5kaW5ncywgc291cmNlRmlsZSk7XG4gICAgICByZWNvcmRlci51cGRhdGVFeGlzdGluZ0ltcG9ydChuYW1lZEJpbmRpbmdzLCBuZXdOYW1lZEJpbmRpbmdzVGV4dCk7XG4gICAgfSk7XG4gIH1cblxuICAvKiogR2V0cyBhbiB1bmlxdWUgaWRlbnRpZmllciB3aXRoIGEgYmFzZSBuYW1lIGZvciB0aGUgZ2l2ZW4gc291cmNlIGZpbGUuICovXG4gIHByaXZhdGUgX2dldFVuaXF1ZUlkZW50aWZpZXIoc291cmNlRmlsZTogdHMuU291cmNlRmlsZSwgYmFzZU5hbWU6IHN0cmluZyk6IHRzLklkZW50aWZpZXIge1xuICAgIGlmICh0aGlzLmlzVW5pcXVlSWRlbnRpZmllck5hbWUoc291cmNlRmlsZSwgYmFzZU5hbWUpKSB7XG4gICAgICB0aGlzLl9yZWNvcmRVc2VkSWRlbnRpZmllcihzb3VyY2VGaWxlLCBiYXNlTmFtZSk7XG4gICAgICByZXR1cm4gdHMuY3JlYXRlSWRlbnRpZmllcihiYXNlTmFtZSk7XG4gICAgfVxuXG4gICAgbGV0IG5hbWUgPSBudWxsO1xuICAgIGxldCBjb3VudGVyID0gMTtcbiAgICBkbyB7XG4gICAgICBuYW1lID0gYCR7YmFzZU5hbWV9XyR7Y291bnRlcisrfWA7XG4gICAgfSB3aGlsZSAoIXRoaXMuaXNVbmlxdWVJZGVudGlmaWVyTmFtZShzb3VyY2VGaWxlLCBuYW1lKSk7XG5cbiAgICB0aGlzLl9yZWNvcmRVc2VkSWRlbnRpZmllcihzb3VyY2VGaWxlLCBuYW1lICEpO1xuICAgIHJldHVybiB0cy5jcmVhdGVJZGVudGlmaWVyKG5hbWUgISk7XG4gIH1cblxuICAvKipcbiAgICogQ2hlY2tzIHdoZXRoZXIgdGhlIHNwZWNpZmllZCBpZGVudGlmaWVyIG5hbWUgaXMgdXNlZCB3aXRoaW4gdGhlIGdpdmVuXG4gICAqIHNvdXJjZSBmaWxlLlxuICAgKi9cbiAgcHJpdmF0ZSBpc1VuaXF1ZUlkZW50aWZpZXJOYW1lKHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUsIG5hbWU6IHN0cmluZykge1xuICAgIGlmICh0aGlzLnVzZWRJZGVudGlmaWVyTmFtZXMuaGFzKHNvdXJjZUZpbGUpICYmXG4gICAgICAgIHRoaXMudXNlZElkZW50aWZpZXJOYW1lcy5nZXQoc291cmNlRmlsZSkgIS5pbmRleE9mKG5hbWUpICE9PSAtMSkge1xuICAgICAgcmV0dXJuIGZhbHNlO1xuICAgIH1cblxuICAgIC8vIFdhbGsgdGhyb3VnaCB0aGUgc291cmNlIGZpbGUgYW5kIHNlYXJjaCBmb3IgYW4gaWRlbnRpZmllciBtYXRjaGluZ1xuICAgIC8vIHRoZSBnaXZlbiBuYW1lLiBJbiB0aGF0IGNhc2UsIGl0J3Mgbm90IGd1YXJhbnRlZWQgdGhhdCB0aGlzIG5hbWVcbiAgICAvLyBpcyB1bmlxdWUgaW4gdGhlIGdpdmVuIGRlY2xhcmF0aW9uIHNjb3BlIGFuZCB3ZSBqdXN0IHJldHVybiBmYWxzZS5cbiAgICBjb25zdCBub2RlUXVldWU6IHRzLk5vZGVbXSA9IFtzb3VyY2VGaWxlXTtcbiAgICB3aGlsZSAobm9kZVF1ZXVlLmxlbmd0aCkge1xuICAgICAgY29uc3Qgbm9kZSA9IG5vZGVRdWV1ZS5zaGlmdCgpICE7XG4gICAgICBpZiAodHMuaXNJZGVudGlmaWVyKG5vZGUpICYmIG5vZGUudGV4dCA9PT0gbmFtZSkge1xuICAgICAgICByZXR1cm4gZmFsc2U7XG4gICAgICB9XG4gICAgICBub2RlUXVldWUucHVzaCguLi5ub2RlLmdldENoaWxkcmVuKCkpO1xuICAgIH1cbiAgICByZXR1cm4gdHJ1ZTtcbiAgfVxuXG4gIHByaXZhdGUgX3JlY29yZFVzZWRJZGVudGlmaWVyKHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUsIGlkZW50aWZpZXJOYW1lOiBzdHJpbmcpIHtcbiAgICB0aGlzLnVzZWRJZGVudGlmaWVyTmFtZXMuc2V0KFxuICAgICAgICBzb3VyY2VGaWxlLCAodGhpcy51c2VkSWRlbnRpZmllck5hbWVzLmdldChzb3VyY2VGaWxlKSB8fCBbXSkuY29uY2F0KGlkZW50aWZpZXJOYW1lKSk7XG4gIH1cblxuICAvKipcbiAgICogRGV0ZXJtaW5lcyB0aGUgZnVsbCBlbmQgb2YgYSBnaXZlbiBub2RlLiBCeSBkZWZhdWx0IHRoZSBlbmQgcG9zaXRpb24gb2YgYSBub2RlIGlzXG4gICAqIGJlZm9yZSBhbGwgdHJhaWxpbmcgY29tbWVudHMuIFRoaXMgY291bGQgbWVhbiB0aGF0IGdlbmVyYXRlZCBpbXBvcnRzIHNoaWZ0IGNvbW1lbnRzLlxuICAgKi9cbiAgcHJpdmF0ZSBfZ2V0RW5kUG9zaXRpb25PZk5vZGUobm9kZTogdHMuTm9kZSkge1xuICAgIGNvbnN0IG5vZGVFbmRQb3MgPSBub2RlLmdldEVuZCgpO1xuICAgIGNvbnN0IGNvbW1lbnRSYW5nZXMgPSB0cy5nZXRUcmFpbGluZ0NvbW1lbnRSYW5nZXMobm9kZS5nZXRTb3VyY2VGaWxlKCkudGV4dCwgbm9kZUVuZFBvcyk7XG4gICAgaWYgKCFjb21tZW50UmFuZ2VzIHx8ICFjb21tZW50UmFuZ2VzLmxlbmd0aCkge1xuICAgICAgcmV0dXJuIG5vZGVFbmRQb3M7XG4gICAgfVxuICAgIHJldHVybiBjb21tZW50UmFuZ2VzW2NvbW1lbnRSYW5nZXMubGVuZ3RoIC0gMV0gIS5lbmQ7XG4gIH1cbn1cbiJdfQ==