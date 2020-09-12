(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/src/ngtsc/shims/src/factory_generator", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/src/ngtsc/shims/src/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.generatedFactoryTransform = exports.FactoryGenerator = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var ts = require("typescript");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var util_1 = require("@angular/compiler-cli/src/ngtsc/shims/src/util");
    var TS_DTS_SUFFIX = /(\.d)?\.ts$/;
    var STRIP_NG_FACTORY = /(.*)NgFactory$/;
    /**
     * Generates ts.SourceFiles which contain variable declarations for NgFactories for every exported
     * class of an input ts.SourceFile.
     */
    var FactoryGenerator = /** @class */ (function () {
        function FactoryGenerator() {
            this.sourceInfo = new Map();
            this.sourceToFactorySymbols = new Map();
            this.shouldEmit = true;
            this.extensionPrefix = 'ngfactory';
        }
        FactoryGenerator.prototype.generateShimForFile = function (sf, genFilePath) {
            var absoluteSfPath = file_system_1.absoluteFromSourceFile(sf);
            var relativePathToSource = './' + file_system_1.basename(sf.fileName).replace(TS_DTS_SUFFIX, '');
            // Collect a list of classes that need to have factory types emitted for them. This list is
            // overly broad as at this point the ts.TypeChecker hasn't been created, and can't be used to
            // semantically understand which decorated types are actually decorated with Angular decorators.
            //
            // The exports generated here are pruned in the factory transform during emit.
            var symbolNames = sf.statements
                // Pick out top level class declarations...
                .filter(ts.isClassDeclaration)
                // which are named, exported, and have decorators.
                .filter(function (decl) { return isExported(decl) && decl.decorators !== undefined &&
                decl.name !== undefined; })
                // Grab the symbol name.
                .map(function (decl) { return decl.name.text; });
            var sourceText = '';
            // If there is a top-level comment in the original file, copy it over at the top of the
            // generated factory file. This is important for preserving any load-bearing jsdoc comments.
            var leadingComment = getFileoverviewComment(sf);
            if (leadingComment !== null) {
                // Leading comments must be separated from the rest of the contents by a blank line.
                sourceText = leadingComment + '\n\n';
            }
            if (symbolNames.length > 0) {
                // For each symbol name, generate a constant export of the corresponding NgFactory.
                // This will encompass a lot of symbols which don't need factories, but that's okay
                // because it won't miss any that do.
                var varLines = symbolNames.map(function (name) { return "export const " + name + "NgFactory: i0.\u0275NgModuleFactory<any> = new i0.\u0275NgModuleFactory(" + name + ");"; });
                sourceText += tslib_1.__spread([
                    // This might be incorrect if the current package being compiled is Angular core, but it's
                    // okay to leave in at type checking time. TypeScript can handle this reference via its path
                    // mapping, but downstream bundlers can't. If the current package is core itself, this will
                    // be replaced in the factory transformer before emit.
                    "import * as i0 from '@angular/core';",
                    "import {" + symbolNames.join(', ') + "} from '" + relativePathToSource + "';"
                ], varLines).join('\n');
            }
            // Add an extra export to ensure this module has at least one. It'll be removed later in the
            // factory transformer if it ends up not being needed.
            sourceText += '\nexport const ɵNonEmptyModule = true;';
            var genFile = ts.createSourceFile(genFilePath, sourceText, sf.languageVersion, true, ts.ScriptKind.TS);
            if (sf.moduleName !== undefined) {
                genFile.moduleName = util_1.generatedModuleName(sf.moduleName, sf.fileName, '.ngfactory');
            }
            var moduleSymbols = new Map();
            this.sourceToFactorySymbols.set(absoluteSfPath, moduleSymbols);
            this.sourceInfo.set(genFilePath, {
                sourceFilePath: absoluteSfPath,
                moduleSymbols: moduleSymbols,
            });
            return genFile;
        };
        FactoryGenerator.prototype.track = function (sf, moduleInfo) {
            if (this.sourceToFactorySymbols.has(sf.fileName)) {
                this.sourceToFactorySymbols.get(sf.fileName).set(moduleInfo.name, moduleInfo);
            }
        };
        return FactoryGenerator;
    }());
    exports.FactoryGenerator = FactoryGenerator;
    function isExported(decl) {
        return decl.modifiers !== undefined &&
            decl.modifiers.some(function (mod) { return mod.kind == ts.SyntaxKind.ExportKeyword; });
    }
    function generatedFactoryTransform(factoryMap, importRewriter) {
        return function (context) {
            return function (file) {
                return transformFactorySourceFile(factoryMap, context, importRewriter, file);
            };
        };
    }
    exports.generatedFactoryTransform = generatedFactoryTransform;
    function transformFactorySourceFile(factoryMap, context, importRewriter, file) {
        var e_1, _a;
        // If this is not a generated file, it won't have factory info associated with it.
        if (!factoryMap.has(file.fileName)) {
            // Don't transform non-generated code.
            return file;
        }
        var _b = factoryMap.get(file.fileName), moduleSymbols = _b.moduleSymbols, sourceFilePath = _b.sourceFilePath;
        file = ts.getMutableClone(file);
        // Not every exported factory statement is valid. They were generated before the program was
        // analyzed, and before ngtsc knew which symbols were actually NgModules. factoryMap contains
        // that knowledge now, so this transform filters the statement list and removes exported factories
        // that aren't actually factories.
        //
        // This could leave the generated factory file empty. To prevent this (it causes issues with
        // closure compiler) a 'ɵNonEmptyModule' export was added when the factory shim was created.
        // Preserve that export if needed, and remove it otherwise.
        //
        // Additionally, an import to @angular/core is generated, but the current compilation unit could
        // actually be @angular/core, in which case such an import is invalid and should be replaced with
        // the proper path to access Ivy symbols in core.
        // The filtered set of statements.
        var transformedStatements = [];
        // The statement identified as the ɵNonEmptyModule export.
        var nonEmptyExport = null;
        // Extracted identifiers which refer to import statements from @angular/core.
        var coreImportIdentifiers = new Set();
        try {
            // Consider all the statements.
            for (var _c = tslib_1.__values(file.statements), _d = _c.next(); !_d.done; _d = _c.next()) {
                var stmt = _d.value;
                // Look for imports to @angular/core.
                if (ts.isImportDeclaration(stmt) && ts.isStringLiteral(stmt.moduleSpecifier) &&
                    stmt.moduleSpecifier.text === '@angular/core') {
                    // Update the import path to point to the correct file using the ImportRewriter.
                    var rewrittenModuleSpecifier = importRewriter.rewriteSpecifier('@angular/core', sourceFilePath);
                    if (rewrittenModuleSpecifier !== stmt.moduleSpecifier.text) {
                        transformedStatements.push(ts.updateImportDeclaration(stmt, stmt.decorators, stmt.modifiers, stmt.importClause, ts.createStringLiteral(rewrittenModuleSpecifier)));
                        // Record the identifier by which this imported module goes, so references to its symbols
                        // can be discovered later.
                        if (stmt.importClause !== undefined && stmt.importClause.namedBindings !== undefined &&
                            ts.isNamespaceImport(stmt.importClause.namedBindings)) {
                            coreImportIdentifiers.add(stmt.importClause.namedBindings.name.text);
                        }
                    }
                    else {
                        transformedStatements.push(stmt);
                    }
                }
                else if (ts.isVariableStatement(stmt) && stmt.declarationList.declarations.length === 1) {
                    var decl = stmt.declarationList.declarations[0];
                    // If this is the ɵNonEmptyModule export, then save it for later.
                    if (ts.isIdentifier(decl.name)) {
                        if (decl.name.text === 'ɵNonEmptyModule') {
                            nonEmptyExport = stmt;
                            continue;
                        }
                        // Otherwise, check if this export is a factory for a known NgModule, and retain it if so.
                        var match = STRIP_NG_FACTORY.exec(decl.name.text);
                        var module_1 = match ? moduleSymbols.get(match[1]) : null;
                        if (module_1) {
                            // If the module can be tree shaken, then the factory should be wrapped in a
                            // `noSideEffects()` call which tells Closure to treat the expression as pure, allowing
                            // it to be removed if the result is not used.
                            //
                            // `NgModule`s with an `id` property will be lazy loaded. Google-internal lazy loading
                            // infra relies on a side effect from the `new NgModuleFactory()` call, which registers
                            // the module globally. Because of this, we **cannot** tree shake any module which has
                            // an `id` property. Doing so would cause lazy loaded modules to never be registered.
                            var moduleIsTreeShakable = !module_1.hasId;
                            var newStmt = !moduleIsTreeShakable ?
                                stmt :
                                updateInitializers(stmt, function (init) { return init ? wrapInNoSideEffects(init) : undefined; });
                            transformedStatements.push(newStmt);
                        }
                    }
                    else {
                        // Leave the statement alone, as it can't be understood.
                        transformedStatements.push(stmt);
                    }
                }
                else {
                    // Include non-variable statements (imports, etc).
                    transformedStatements.push(stmt);
                }
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
            }
            finally { if (e_1) throw e_1.error; }
        }
        // Check whether the empty module export is still needed.
        if (!transformedStatements.some(ts.isVariableStatement) && nonEmptyExport !== null) {
            // If the resulting file has no factories, include an empty export to
            // satisfy closure compiler.
            transformedStatements.push(nonEmptyExport);
        }
        file.statements = ts.createNodeArray(transformedStatements);
        // If any imports to @angular/core were detected and rewritten (which happens when compiling
        // @angular/core), go through the SourceFile and rewrite references to symbols imported from core.
        if (coreImportIdentifiers.size > 0) {
            var visit_1 = function (node) {
                node = ts.visitEachChild(node, function (child) { return visit_1(child); }, context);
                // Look for expressions of the form "i.s" where 'i' is a detected name for an @angular/core
                // import that was changed above. Rewrite 's' using the ImportResolver.
                if (ts.isPropertyAccessExpression(node) && ts.isIdentifier(node.expression) &&
                    coreImportIdentifiers.has(node.expression.text)) {
                    // This is an import of a symbol from @angular/core. Transform it with the importRewriter.
                    var rewrittenSymbol = importRewriter.rewriteSymbol(node.name.text, '@angular/core');
                    if (rewrittenSymbol !== node.name.text) {
                        var updated = ts.updatePropertyAccess(node, node.expression, ts.createIdentifier(rewrittenSymbol));
                        node = updated;
                    }
                }
                return node;
            };
            file = visit_1(file);
        }
        return file;
    }
    /**
     * Parses and returns the comment text of a \@fileoverview comment in the given source file.
     */
    function getFileoverviewComment(sourceFile) {
        var text = sourceFile.getFullText();
        var trivia = text.substring(0, sourceFile.getStart());
        var leadingComments = ts.getLeadingCommentRanges(trivia, 0);
        if (!leadingComments || leadingComments.length === 0) {
            return null;
        }
        var comment = leadingComments[0];
        if (comment.kind !== ts.SyntaxKind.MultiLineCommentTrivia) {
            return null;
        }
        // Only comments separated with a \n\n from the file contents are considered file-level comments
        // in TypeScript.
        if (text.substring(comment.end, comment.end + 2) !== '\n\n') {
            return null;
        }
        var commentText = text.substring(comment.pos, comment.end);
        // Closure Compiler ignores @suppress and similar if the comment contains @license.
        if (commentText.indexOf('@license') !== -1) {
            return null;
        }
        return commentText;
    }
    /**
     * Wraps the given expression in a call to `ɵnoSideEffects()`, which tells
     * Closure we don't care about the side effects of this expression and it should
     * be treated as "pure". Closure is free to tree shake this expression if its
     * result is not used.
     *
     * Example: Takes `1 + 2` and returns `i0.ɵnoSideEffects(() => 1 + 2)`.
     */
    function wrapInNoSideEffects(expr) {
        var noSideEffects = ts.createPropertyAccess(ts.createIdentifier('i0'), 'ɵnoSideEffects');
        return ts.createCall(noSideEffects, 
        /* typeArguments */ [], 
        /* arguments */
        [
            ts.createFunctionExpression(
            /* modifiers */ [], 
            /* asteriskToken */ undefined, 
            /* name */ undefined, 
            /* typeParameters */ [], 
            /* parameters */ [], 
            /* type */ undefined, 
            /* body */ ts.createBlock([
                ts.createReturn(expr),
            ])),
        ]);
    }
    /**
     * Clones and updates the initializers for a given statement to use the new
     * expression provided. Does not mutate the input statement.
     */
    function updateInitializers(stmt, update) {
        return ts.updateVariableStatement(stmt, stmt.modifiers, ts.updateVariableDeclarationList(stmt.declarationList, stmt.declarationList.declarations.map(function (decl) { return ts.updateVariableDeclaration(decl, decl.name, decl.type, update(decl.initializer)); })));
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZmFjdG9yeV9nZW5lcmF0b3IuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3NoaW1zL3NyYy9mYWN0b3J5X2dlbmVyYXRvci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7O0lBQUE7Ozs7OztPQU1HO0lBQ0gsK0JBQWlDO0lBRWpDLDJFQUFtRjtJQUluRix1RUFBMkM7SUFFM0MsSUFBTSxhQUFhLEdBQUcsYUFBYSxDQUFDO0lBQ3BDLElBQU0sZ0JBQWdCLEdBQUcsZ0JBQWdCLENBQUM7SUFFMUM7OztPQUdHO0lBQ0g7UUFBQTtZQUNXLGVBQVUsR0FBRyxJQUFJLEdBQUcsRUFBdUIsQ0FBQztZQUM3QywyQkFBc0IsR0FBRyxJQUFJLEdBQUcsRUFBbUMsQ0FBQztZQUVuRSxlQUFVLEdBQUcsSUFBSSxDQUFDO1lBQ2xCLG9CQUFlLEdBQUcsV0FBVyxDQUFDO1FBMkV6QyxDQUFDO1FBekVDLDhDQUFtQixHQUFuQixVQUFvQixFQUFpQixFQUFFLFdBQTJCO1lBQ2hFLElBQU0sY0FBYyxHQUFHLG9DQUFzQixDQUFDLEVBQUUsQ0FBQyxDQUFDO1lBRWxELElBQU0sb0JBQW9CLEdBQUcsSUFBSSxHQUFHLHNCQUFRLENBQUMsRUFBRSxDQUFDLFFBQVEsQ0FBQyxDQUFDLE9BQU8sQ0FBQyxhQUFhLEVBQUUsRUFBRSxDQUFDLENBQUM7WUFDckYsMkZBQTJGO1lBQzNGLDZGQUE2RjtZQUM3RixnR0FBZ0c7WUFDaEcsRUFBRTtZQUNGLDhFQUE4RTtZQUM5RSxJQUFNLFdBQVcsR0FBRyxFQUFFLENBQUMsVUFBVTtnQkFDVCwyQ0FBMkM7aUJBQzFDLE1BQU0sQ0FBQyxFQUFFLENBQUMsa0JBQWtCLENBQUM7Z0JBQzlCLGtEQUFrRDtpQkFDakQsTUFBTSxDQUNILFVBQUEsSUFBSSxJQUFJLE9BQUEsVUFBVSxDQUFDLElBQUksQ0FBQyxJQUFJ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T0FBQSxFQUFFLENBQUMseUJBQXlCLENBQ2xDLElBQUksRUFDSixJQUFJLENBQUMsSUFBSSxFQUNULElBQUksQ0FBQyxJQUFJLEVBQ1QsTUFBTSxDQUFDLElBQUksQ0FBQyxXQUFXLENBQUMsQ0FDdkIsRUFMSyxDQUtMLENBQ0osQ0FDSixDQUNSLENBQUM7SUFDSixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHthYnNvbHV0ZUZyb21Tb3VyY2VGaWxlLCBBYnNvbHV0ZUZzUGF0aCwgYmFzZW5hbWV9IGZyb20gJy4uLy4uL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7SW1wb3J0UmV3cml0ZXJ9IGZyb20gJy4uLy4uL2ltcG9ydHMnO1xuaW1wb3J0IHtGYWN0b3J5SW5mbywgRmFjdG9yeVRyYWNrZXIsIE1vZHVsZUluZm8sIFBlckZpbGVTaGltR2VuZXJhdG9yfSBmcm9tICcuLi9hcGknO1xuXG5pbXBvcnQge2dlbmVyYXRlZE1vZHVsZU5hbWV9IGZyb20gJy4vdXRpbCc7XG5cbmNvbnN0IFRTX0RUU19TVUZGSVggPSAvKFxcLmQpP1xcLnRzJC87XG5jb25zdCBTVFJJUF9OR19GQUNUT1JZID0gLyguKilOZ0ZhY3RvcnkkLztcblxuLyoqXG4gKiBHZW5lcmF0ZXMgdHMuU291cmNlRmlsZXMgd2hpY2ggY29udGFpbiB2YXJpYWJsZSBkZWNsYXJhdGlvbnMgZm9yIE5nRmFjdG9yaWVzIGZvciBldmVyeSBleHBvcnRlZFxuICogY2xhc3Mgb2YgYW4gaW5wdXQgdHMuU291cmNlRmlsZS5cbiAqL1xuZXhwb3J0IGNsYXNzIEZhY3RvcnlHZW5lcmF0b3IgaW1wbGVtZW50cyBQZXJGaWxlU2hpbUdlbmVyYXRvciwgRmFjdG9yeVRyYWNrZXIge1xuICByZWFkb25seSBzb3VyY2VJbmZvID0gbmV3IE1hcDxzdHJpbmcsIEZhY3RvcnlJbmZvPigpO1xuICBwcml2YXRlIHNvdXJjZVRvRmFjdG9yeVN5bWJvbHMgPSBuZXcgTWFwPHN0cmluZywgTWFwPHN0cmluZywgTW9kdWxlSW5mbz4+KCk7XG5cbiAgcmVhZG9ubHkgc2hvdWxkRW1pdCA9IHRydWU7XG4gIHJlYWRvbmx5IGV4dGVuc2lvblByZWZpeCA9ICduZ2ZhY3RvcnknO1xuXG4gIGdlbmVyYXRlU2hpbUZvckZpbGUoc2Y6IHRzLlNvdXJjZUZpbGUsIGdlbkZpbGVQYXRoOiBBYnNvbHV0ZUZzUGF0aCk6IHRzLlNvdXJjZUZpbGUge1xuICAgIGNvbnN0IGFic29sdXRlU2ZQYXRoID0gYWJzb2x1dGVGcm9tU291cmNlRmlsZShzZik7XG5cbiAgICBjb25zdCByZWxhdGl2ZVBhdGhUb1NvdXJjZSA9ICcuLycgKyBiYXNlbmFtZShzZi5maWxlTmFtZSkucmVwbGFjZShUU19EVFNfU1VGRklYLCAnJyk7XG4gICAgLy8gQ29sbGVjdCBhIGxpc3Qgb2YgY2xhc3NlcyB0aGF0IG5lZWQgdG8gaGF2ZSBmYWN0b3J5IHR5cGVzIGVtaXR0ZWQgZm9yIHRoZW0uIFRoaXMgbGlzdCBpc1xuICAgIC8vIG92ZXJseSBicm9hZCBhcyBhdCB0aGlzIHBvaW50IHRoZSB0cy5UeXBlQ2hlY2tlciBoYXNuJ3QgYmVlbiBjcmVhdGVkLCBhbmQgY2FuJ3QgYmUgdXNlZCB0b1xuICAgIC8vIHNlbWFudGljYWxseSB1bmRlcnN0YW5kIHdoaWNoIGRlY29yYXRlZCB0eXBlcyBhcmUgYWN0dWFsbHkgZGVjb3JhdGVkIHdpdGggQW5ndWxhciBkZWNvcmF0b3JzLlxuICAgIC8vXG4gICAgLy8gVGhlIGV4cG9ydHMgZ2VuZXJhdGVkIGhlcmUgYXJlIHBydW5lZCBpbiB0aGUgZmFjdG9yeSB0cmFuc2Zvcm0gZHVyaW5nIGVtaXQuXG4gICAgY29uc3Qgc3ltYm9sTmFtZXMgPSBzZi5zdGF0ZW1lbnRzXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gUGljayBvdXQgdG9wIGxldmVsIGNsYXNzIGRlY2xhcmF0aW9ucy4uLlxuICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5maWx0ZXIodHMuaXNDbGFzc0RlY2xhcmF0aW9uKVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIHdoaWNoIGFyZSBuYW1lZCwgZXhwb3J0ZWQsIGFuZCBoYXZlIGRlY29yYXRvcnMuXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgLmZpbHRlcihcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGVjbCA9PiBpc0V4cG9ydGVkKGRlY2wpICYmIGRlY2wuZGVjb3JhdG9ycyAhPT0gdW5kZWZpbmVkICYmXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkZWNsLm5hbWUgIT09IHVuZGVmaW5lZClcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBHcmFiIHRoZSBzeW1ib2wgbmFtZS5cbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAubWFwKGRlY2wgPT4gZGVjbC5uYW1lIS50ZXh0KTtcblxuXG4gICAgbGV0IHNvdXJjZVRleHQgPSAnJztcblxuICAgIC8vIElmIHRoZXJlIGlzIGEgdG9wLWxldmVsIGNvbW1lbnQgaW4gdGhlIG9yaWdpbmFsIGZpbGUsIGNvcHkgaXQgb3ZlciBhdCB0aGUgdG9wIG9mIHRoZVxuICAgIC8vIGdlbmVyYXRlZCBmYWN0b3J5IGZpbGUuIFRoaXMgaXMgaW1wb3J0YW50IGZvciBwcmVzZXJ2aW5nIGFueSBsb2FkLWJlYXJpbmcganNkb2MgY29tbWVudHMuXG4gICAgY29uc3QgbGVhZGluZ0NvbW1lbnQgPSBnZXRGaWxlb3ZlcnZpZXdDb21tZW50KHNmKTtcbiAgICBpZiAobGVhZGluZ0NvbW1lbnQgIT09IG51bGwpIHtcbiAgICAgIC8vIExlYWRpbmcgY29tbWVudHMgbXVzdCBiZSBzZXBhcmF0ZWQgZnJvbSB0aGUgcmVzdCBvZiB0aGUgY29udGVudHMgYnkgYSBibGFuayBsaW5lLlxuICAgICAgc291cmNlVGV4dCA9IGxlYWRpbmdDb21tZW50ICsgJ1xcblxcbic7XG4gICAgfVxuXG4gICAgaWYgKHN5bWJvbE5hbWVzLmxlbmd0aCA+IDApIHtcbiAgICAgIC8vIEZvciBlYWNoIHN5bWJvbCBuYW1lLCBnZW5lcmF0ZSBhIGNvbnN0YW50IGV4cG9ydCBvZiB0aGUgY29ycmVzcG9uZGluZyBOZ0ZhY3RvcnkuXG4gICAgICAvLyBUaGlzIHdpbGwgZW5jb21wYXNzIGEgbG90IG9mIHN5bWJvbHMgd2hpY2ggZG9uJ3QgbmVlZCBmYWN0b3JpZXMsIGJ1dCB0aGF0J3Mgb2theVxuICAgICAgLy8gYmVjYXVzZSBpdCB3b24ndCBtaXNzIGFueSB0aGF0IGRvLlxuICAgICAgY29uc3QgdmFyTGluZXMgPSBzeW1ib2xOYW1lcy5tYXAoXG4gICAgICAgICAgbmFtZSA9PiBgZXhwb3J0IGNvbnN0ICR7XG4gICAgICAgICAgICAgIG5hbWV9TmdGYWN0b3J5OiBpMC7JtU5nTW9kdWxlRmFjdG9yeTxhbnk+ID0gbmV3IGkwLsm1TmdNb2R1bGVGYWN0b3J5KCR7bmFtZX0pO2ApO1xuICAgICAgc291cmNlVGV4dCArPSBbXG4gICAgICAgIC8vIFRoaXMgbWlnaHQgYmUgaW5jb3JyZWN0IGlmIHRoZSBjdXJyZW50IHBhY2thZ2UgYmVpbmcgY29tcGlsZWQgaXMgQW5ndWxhciBjb3JlLCBidXQgaXQnc1xuICAgICAgICAvLyBva2F5IHRvIGxlYXZlIGluIGF0IHR5cGUgY2hlY2tpbmcgdGltZS4gVHlwZVNjcmlwdCBjYW4gaGFuZGxlIHRoaXMgcmVmZXJlbmNlIHZpYSBpdHMgcGF0aFxuICAgICAgICAvLyBtYXBwaW5nLCBidXQgZG93bnN0cmVhbSBidW5kbGVycyBjYW4ndC4gSWYgdGhlIGN1cnJlbnQgcGFja2FnZSBpcyBjb3JlIGl0c2VsZiwgdGhpcyB3aWxsXG4gICAgICAgIC8vIGJlIHJlcGxhY2VkIGluIHRoZSBmYWN0b3J5IHRyYW5zZm9ybWVyIGJlZm9yZSBlbWl0LlxuICAgICAgICBgaW1wb3J0ICogYXMgaTAgZnJvbSAnQGFuZ3VsYXIvY29yZSc7YCxcbiAgICAgICAgYGltcG9ydCB7JHtzeW1ib2xOYW1lcy5qb2luKCcsICcpfX0gZnJvbSAnJHtyZWxhdGl2ZVBhdGhUb1NvdXJjZX0nO2AsXG4gICAgICAgIC4uLnZhckxpbmVzLFxuICAgICAgXS5qb2luKCdcXG4nKTtcbiAgICB9XG5cbiAgICAvLyBBZGQgYW4gZXh0cmEgZXhwb3J0IHRvIGVuc3VyZSB0aGlzIG1vZHVsZSBoYXMgYXQgbGVhc3Qgb25lLiBJdCdsbCBiZSByZW1vdmVkIGxhdGVyIGluIHRoZVxuICAgIC8vIGZhY3RvcnkgdHJhbnNmb3JtZXIgaWYgaXQgZW5kcyB1cCBub3QgYmVpbmcgbmVlZGVkLlxuICAgIHNvdXJjZVRleHQgKz0gJ1xcbmV4cG9ydCBjb25zdCDJtU5vbkVtcHR5TW9kdWxlID0gdHJ1ZTsnO1xuXG4gICAgY29uc3QgZ2VuRmlsZSA9XG4gICAgICAgIHRzLmNyZWF0ZVNvdXJjZUZpbGUoZ2VuRmlsZVBhdGgsIHNvdXJjZVRleHQsIHNmLmxhbmd1YWdlVmVyc2lvbiwgdHJ1ZSwgdHMuU2NyaXB0S2luZC5UUyk7XG4gICAgaWYgKHNmLm1vZHVsZU5hbWUgIT09IHVuZGVmaW5lZCkge1xuICAgICAgZ2VuRmlsZS5tb2R1bGVOYW1lID0gZ2VuZXJhdGVkTW9kdWxlTmFtZShzZi5tb2R1bGVOYW1lLCBzZi5maWxlTmFtZSwgJy5uZ2ZhY3RvcnknKTtcbiAgICB9XG5cbiAgICBjb25zdCBtb2R1bGVTeW1ib2xzID0gbmV3IE1hcDxzdHJpbmcsIE1vZHVsZUluZm8+KCk7XG4gICAgdGhpcy5zb3VyY2VUb0ZhY3RvcnlTeW1ib2xzLnNldChhYnNvbHV0ZVNmUGF0aCwgbW9kdWxlU3ltYm9scyk7XG4gICAgdGhpcy5zb3VyY2VJbmZvLnNldChnZW5GaWxlUGF0aCwge1xuICAgICAgc291cmNlRmlsZVBhdGg6IGFic29sdXRlU2ZQYXRoLFxuICAgICAgbW9kdWxlU3ltYm9scyxcbiAgICB9KTtcblxuICAgIHJldHVybiBnZW5GaWxlO1xuICB9XG5cbiAgdHJhY2soc2Y6IHRzLlNvdXJjZUZpbGUsIG1vZHVsZUluZm86IE1vZHVsZUluZm8pOiB2b2lkIHtcbiAgICBpZiAodGhpcy5zb3VyY2VUb0ZhY3RvcnlTeW1ib2xzLmhhcyhzZi5maWxlTmFtZSkpIHtcbiAgICAgIHRoaXMuc291cmNlVG9GYWN0b3J5U3ltYm9scy5nZXQoc2YuZmlsZU5hbWUpIS5zZXQobW9kdWxlSW5mby5uYW1lLCBtb2R1bGVJbmZvKTtcbiAgICB9XG4gIH1cbn1cblxuZnVuY3Rpb24gaXNFeHBvcnRlZChkZWNsOiB0cy5EZWNsYXJhdGlvbik6IGJvb2xlYW4ge1xuICByZXR1cm4gZGVjbC5tb2RpZmllcnMgIT09IHVuZGVmaW5lZCAmJlxuICAgICAgZGVjbC5tb2RpZmllcnMuc29tZShtb2QgPT4gbW9kLmtpbmQgPT0gdHMuU3ludGF4S2luZC5FeHBvcnRLZXl3b3JkKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdlbmVyYXRlZEZhY3RvcnlUcmFuc2Zvcm0oXG4gICAgZmFjdG9yeU1hcDogTWFwPHN0cmluZywgRmFjdG9yeUluZm8+LFxuICAgIGltcG9ydFJld3JpdGVyOiBJbXBvcnRSZXdyaXRlcik6IHRzLlRyYW5zZm9ybWVyRmFjdG9yeTx0cy5Tb3VyY2VGaWxlPiB7XG4gIHJldHVybiAoY29udGV4dDogdHMuVHJhbnNmb3JtYXRpb25Db250ZXh0KTogdHMuVHJhbnNmb3JtZXI8dHMuU291cmNlRmlsZT4gPT4ge1xuICAgIHJldHVybiAoZmlsZTogdHMuU291cmNlRmlsZSk6IHRzLlNvdXJjZUZpbGUgPT4ge1xuICAgICAgcmV0dXJuIHRyYW5zZm9ybUZhY3RvcnlTb3VyY2VGaWxlKGZhY3RvcnlNYXAsIGNvbnRleHQsIGltcG9ydFJld3JpdGVyLCBmaWxlKTtcbiAgICB9O1xuICB9O1xufVxuXG5mdW5jdGlvbiB0cmFuc2Zvcm1GYWN0b3J5U291cmNlRmlsZShcbiAgICBmYWN0b3J5TWFwOiBNYXA8c3RyaW5nLCBGYWN0b3J5SW5mbz4sIGNvbnRleHQ6IHRzLlRyYW5zZm9ybWF0aW9uQ29udGV4dCxcbiAgICBpbXBvcnRSZXdyaXRlcjogSW1wb3J0UmV3cml0ZXIsIGZpbGU6IHRzLlNvdXJjZUZpbGUpOiB0cy5Tb3VyY2VGaWxlIHtcbiAgLy8gSWYgdGhpcyBpcyBub3QgYSBnZW5lcmF0ZWQgZmlsZSwgaXQgd29uJ3QgaGF2ZSBmYWN0b3J5IGluZm8gYXNzb2NpYXRlZCB3aXRoIGl0LlxuICBpZiAoIWZhY3RvcnlNYXAuaGFzKGZpbGUuZmlsZU5hbWUpKSB7XG4gICAgLy8gRG9uJ3QgdHJhbnNmb3JtIG5vbi1nZW5lcmF0ZWQgY29kZS5cbiAgICByZXR1cm4gZmlsZTtcbiAgfVxuXG4gIGNvbnN0IHttb2R1bGVTeW1ib2xzLCBzb3VyY2VGaWxlUGF0aH0gPSBmYWN0b3J5TWFwLmdldChmaWxlLmZpbGVOYW1lKSE7XG5cbiAgZmlsZSA9IHRzLmdldE11dGFibGVDbG9uZShmaWxlKTtcblxuICAvLyBOb3QgZXZlcnkgZXhwb3J0ZWQgZmFjdG9yeSBzdGF0ZW1lbnQgaXMgdmFsaWQuIFRoZXkgd2VyZSBnZW5lcmF0ZWQgYmVmb3JlIHRoZSBwcm9ncmFtIHdhc1xuICAvLyBhbmFseXplZCwgYW5kIGJlZm9yZSBuZ3RzYyBrbmV3IHdoaWNoIHN5bWJvbHMgd2VyZSBhY3R1YWxseSBOZ01vZHVsZXMuIGZhY3RvcnlNYXAgY29udGFpbnNcbiAgLy8gdGhhdCBrbm93bGVkZ2Ugbm93LCBzbyB0aGlzIHRyYW5zZm9ybSBmaWx0ZXJzIHRoZSBzdGF0ZW1lbnQgbGlzdCBhbmQgcmVtb3ZlcyBleHBvcnRlZCBmYWN0b3JpZXNcbiAgLy8gdGhhdCBhcmVuJ3QgYWN0dWFsbHkgZmFjdG9yaWVzLlxuICAvL1xuICAvLyBUaGlzIGNvdWxkIGxlYXZlIHRoZSBnZW5lcmF0ZWQgZmFjdG9yeSBmaWxlIGVtcHR5LiBUbyBwcmV2ZW50IHRoaXMgKGl0IGNhdXNlcyBpc3N1ZXMgd2l0aFxuICAvLyBjbG9zdXJlIGNvbXBpbGVyKSBhICfJtU5vbkVtcHR5TW9kdWxlJyBleHBvcnQgd2FzIGFkZGVkIHdoZW4gdGhlIGZhY3Rvcnkgc2hpbSB3YXMgY3JlYXRlZC5cbiAgLy8gUHJlc2VydmUgdGhhdCBleHBvcnQgaWYgbmVlZGVkLCBhbmQgcmVtb3ZlIGl0IG90aGVyd2lzZS5cbiAgLy9cbiAgLy8gQWRkaXRpb25hbGx5LCBhbiBpbXBvcnQgdG8gQGFuZ3VsYXIvY29yZSBpcyBnZW5lcmF0ZWQsIGJ1dCB0aGUgY3VycmVudCBjb21waWxhdGlvbiB1bml0IGNvdWxkXG4gIC8vIGFjdHVhbGx5IGJlIEBhbmd1bGFyL2NvcmUsIGluIHdoaWNoIGNhc2Ugc3VjaCBhbiBpbXBvcnQgaXMgaW52YWxpZCBhbmQgc2hvdWxkIGJlIHJlcGxhY2VkIHdpdGhcbiAgLy8gdGhlIHByb3BlciBwYXRoIHRvIGFjY2VzcyBJdnkgc3ltYm9scyBpbiBjb3JlLlxuXG4gIC8vIFRoZSBmaWx0ZXJlZCBzZXQgb2Ygc3RhdGVtZW50cy5cbiAgY29uc3QgdHJhbnNmb3JtZWRTdGF0ZW1lbnRzOiB0cy5TdGF0ZW1lbnRbXSA9IFtdO1xuXG4gIC8vIFRoZSBzdGF0ZW1lbnQgaWRlbnRpZmllZCBhcyB0aGUgybVOb25FbXB0eU1vZHVsZSBleHBvcnQuXG4gIGxldCBub25FbXB0eUV4cG9ydDogdHMuU3RhdGVtZW50fG51bGwgPSBudWxsO1xuXG4gIC8vIEV4dHJhY3RlZCBpZGVudGlmaWVycyB3aGljaCByZWZlciB0byBpbXBvcnQgc3RhdGVtZW50cyBmcm9tIEBhbmd1bGFyL2NvcmUuXG4gIGNvbnN0IGNvcmVJbXBvcnRJZGVudGlmaWVycyA9IG5ldyBTZXQ8c3RyaW5nPigpO1xuXG4gIC8vIENvbnNpZGVyIGFsbCB0aGUgc3RhdGVtZW50cy5cbiAgZm9yIChjb25zdCBzdG10IG9mIGZpbGUuc3RhdGVtZW50cykge1xuICAgIC8vIExvb2sgZm9yIGltcG9ydHMgdG8gQGFuZ3VsYXIvY29yZS5cbiAgICBpZiAodHMuaXNJbXBvcnREZWNsYXJhdGlvbihzdG10KSAmJiB0cy5pc1N0cmluZ0xpdGVyYWwoc3RtdC5tb2R1bGVTcGVjaWZpZXIpICYmXG4gICAgICAgIHN0bXQubW9kdWxlU3BlY2lmaWVyLnRleHQgPT09ICdAYW5ndWxhci9jb3JlJykge1xuICAgICAgLy8gVXBkYXRlIHRoZSBpbXBvcnQgcGF0aCB0byBwb2ludCB0byB0aGUgY29ycmVjdCBmaWxlIHVzaW5nIHRoZSBJbXBvcnRSZXdyaXRlci5cbiAgICAgIGNvbnN0IHJld3JpdHRlbk1vZHVsZVNwZWNpZmllciA9XG4gICAgICAgICAgaW1wb3J0UmV3cml0ZXIucmV3cml0ZVNwZWNpZmllcignQGFuZ3VsYXIvY29yZScsIHNvdXJjZUZpbGVQYXRoKTtcbiAgICAgIGlmIChyZXdyaXR0ZW5Nb2R1bGVTcGVjaWZpZXIgIT09IHN0bXQubW9kdWxlU3BlY2lmaWVyLnRleHQpIHtcbiAgICAgICAgdHJhbnNmb3JtZWRTdGF0ZW1lbnRzLnB1c2godHMudXBkYXRlSW1wb3J0RGVjbGFyYXRpb24oXG4gICAgICAgICAgICBzdG10LCBzdG10LmRlY29yYXRvcnMsIHN0bXQubW9kaWZpZXJzLCBzdG10LmltcG9ydENsYXVzZSxcbiAgICAgICAgICAgIHRzLmNyZWF0ZVN0cmluZ0xpdGVyYWwocmV3cml0dGVuTW9kdWxlU3BlY2lmaWVyKSkpO1xuXG4gICAgICAgIC8vIFJlY29yZCB0aGUgaWRlbnRpZmllciBieSB3aGljaCB0aGlzIGltcG9ydGVkIG1vZHVsZSBnb2VzLCBzbyByZWZlcmVuY2VzIHRvIGl0cyBzeW1ib2xzXG4gICAgICAgIC8vIGNhbiBiZSBkaXNjb3ZlcmVkIGxhdGVyLlxuICAgICAgICBpZiAoc3RtdC5pbXBvcnRDbGF1c2UgIT09IHVuZGVmaW5lZCAmJiBzdG10LmltcG9ydENsYXVzZS5uYW1lZEJpbmRpbmdzICE9PSB1bmRlZmluZWQgJiZcbiAgICAgICAgICAgIHRzLmlzTmFtZXNwYWNlSW1wb3J0KHN0bXQuaW1wb3J0Q2xhdXNlLm5hbWVkQmluZGluZ3MpKSB7XG4gICAgICAgICAgY29yZUltcG9ydElkZW50aWZpZXJzLmFkZChzdG10LmltcG9ydENsYXVzZS5uYW1lZEJpbmRpbmdzLm5hbWUudGV4dCk7XG4gICAgICAgIH1cbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHRyYW5zZm9ybWVkU3RhdGVtZW50cy5wdXNoKHN0bXQpO1xuICAgICAgfVxuICAgIH0gZWxzZSBpZiAodHMuaXNWYXJpYWJsZVN0YXRlbWVudChzdG10KSAmJiBzdG10LmRlY2xhcmF0aW9uTGlzdC5kZWNsYXJhdGlvbnMubGVuZ3RoID09PSAxKSB7XG4gICAgICBjb25zdCBkZWNsID0gc3RtdC5kZWNsYXJhdGlvbkxpc3QuZGVjbGFyYXRpb25zWzBdO1xuXG4gICAgICAvLyBJZiB0aGlzIGlzIHRoZSDJtU5vbkVtcHR5TW9kdWxlIGV4cG9ydCwgdGhlbiBzYXZlIGl0IGZvciBsYXRlci5cbiAgICAgIGlmICh0cy5pc0lkZW50aWZpZXIoZGVjbC5uYW1lKSkge1xuICAgICAgICBpZiAoZGVjbC5uYW1lLnRleHQgPT09ICfJtU5vbkVtcHR5TW9kdWxlJykge1xuICAgICAgICAgIG5vbkVtcHR5RXhwb3J0ID0gc3RtdDtcbiAgICAgICAgICBjb250aW51ZTtcbiAgICAgICAgfVxuXG4gICAgICAgIC8vIE90aGVyd2lzZSwgY2hlY2sgaWYgdGhpcyBleHBvcnQgaXMgYSBmYWN0b3J5IGZvciBhIGtub3duIE5nTW9kdWxlLCBhbmQgcmV0YWluIGl0IGlmIHNvLlxuICAgICAgICBjb25zdCBtYXRjaCA9IFNUUklQX05HX0ZBQ1RPUlkuZXhlYyhkZWNsLm5hbWUudGV4dCk7XG4gICAgICAgIGNvbnN0IG1vZHVsZSA9IG1hdGNoID8gbW9kdWxlU3ltYm9scy5nZXQobWF0Y2hbMV0pIDogbnVsbDtcbiAgICAgICAgaWYgKG1vZHVsZSkge1xuICAgICAgICAgIC8vIElmIHRoZSBtb2R1bGUgY2FuIGJlIHRyZWUgc2hha2VuLCB0aGVuIHRoZSBmYWN0b3J5IHNob3VsZCBiZSB3cmFwcGVkIGluIGFcbiAgICAgICAgICAvLyBgbm9TaWRlRWZmZWN0cygpYCBjYWxsIHdoaWNoIHRlbGxzIENsb3N1cmUgdG8gdHJlYXQgdGhlIGV4cHJlc3Npb24gYXMgcHVyZSwgYWxsb3dpbmdcbiAgICAgICAgICAvLyBpdCB0byBiZSByZW1vdmVkIGlmIHRoZSByZXN1bHQgaXMgbm90IHVzZWQuXG4gICAgICAgICAgLy9cbiAgICAgICAgICAvLyBgTmdNb2R1bGVgcyB3aXRoIGFuIGBpZGAgcHJvcGVydHkgd2lsbCBiZSBsYXp5IGxvYWRlZC4gR29vZ2xlLWludGVybmFsIGxhenkgbG9hZGluZ1xuICAgICAgICAgIC8vIGluZnJhIHJlbGllcyBvbiBhIHNpZGUgZWZmZWN0IGZyb20gdGhlIGBuZXcgTmdNb2R1bGVGYWN0b3J5KClgIGNhbGwsIHdoaWNoIHJlZ2lzdGVyc1xuICAgICAgICAgIC8vIHRoZSBtb2R1bGUgZ2xvYmFsbHkuIEJlY2F1c2Ugb2YgdGhpcywgd2UgKipjYW5ub3QqKiB0cmVlIHNoYWtlIGFueSBtb2R1bGUgd2hpY2ggaGFzXG4gICAgICAgICAgLy8gYW4gYGlkYCBwcm9wZXJ0eS4gRG9pbmcgc28gd291bGQgY2F1c2UgbGF6eSBsb2FkZWQgbW9kdWxlcyB0byBuZXZlciBiZSByZWdpc3RlcmVkLlxuICAgICAgICAgIGNvbnN0IG1vZHVsZUlzVHJlZVNoYWthYmxlID0gIW1vZHVsZS5oYXNJZDtcbiAgICAgICAgICBjb25zdCBuZXdTdG10ID0gIW1vZHVsZUlzVHJlZVNoYWthYmxlID9cbiAgICAgICAgICAgICAgc3RtdCA6XG4gICAgICAgICAgICAgIHVwZGF0ZUluaXRpYWxpemVycyhcbiAgICAgICAgICAgICAgICAgIHN0bXQsXG4gICAgICAgICAgICAgICAgICAoaW5pdCkgPT4gaW5pdCA/IHdyYXBJbk5vU2lkZUVmZmVjdHMoaW5pdCkgOiB1bmRlZmluZWQsXG4gICAgICAgICAgICAgICk7XG4gICAgICAgICAgdHJhbnNmb3JtZWRTdGF0ZW1lbnRzLnB1c2gobmV3U3RtdCk7XG4gICAgICAgIH1cbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIC8vIExlYXZlIHRoZSBzdGF0ZW1lbnQgYWxvbmUsIGFzIGl0IGNhbid0IGJlIHVuZGVyc3Rvb2QuXG4gICAgICAgIHRyYW5zZm9ybWVkU3RhdGVtZW50cy5wdXNoKHN0bXQpO1xuICAgICAgfVxuICAgIH0gZWxzZSB7XG4gICAgICAvLyBJbmNsdWRlIG5vbi12YXJpYWJsZSBzdGF0ZW1lbnRzIChpbXBvcnRzLCBldGMpLlxuICAgICAgdHJhbnNmb3JtZWRTdGF0ZW1lbnRzLnB1c2goc3RtdCk7XG4gICAgfVxuICB9XG5cbiAgLy8gQ2hlY2sgd2hldGhlciB0aGUgZW1wdHkgbW9kdWxlIGV4cG9ydCBpcyBzdGlsbCBuZWVkZWQuXG4gIGlmICghdHJhbnNmb3JtZWRTdGF0ZW1lbnRzLnNvbWUodHMuaXNWYXJpYWJsZVN0YXRlbWVudCkgJiYgbm9uRW1wdHlFeHBvcnQgIT09IG51bGwpIHtcbiAgICAvLyBJZiB0aGUgcmVzdWx0aW5nIGZpbGUgaGFzIG5vIGZhY3RvcmllcywgaW5jbHVkZSBhbiBlbXB0eSBleHBvcnQgdG9cbiAgICAvLyBzYXRpc2Z5IGNsb3N1cmUgY29tcGlsZXIuXG4gICAgdHJhbnNmb3JtZWRTdGF0ZW1lbnRzLnB1c2gobm9uRW1wdHlFeHBvcnQpO1xuICB9XG4gIGZpbGUuc3RhdGVtZW50cyA9IHRzLmNyZWF0ZU5vZGVBcnJheSh0cmFuc2Zvcm1lZFN0YXRlbWVudHMpO1xuXG4gIC8vIElmIGFueSBpbXBvcnRzIHRvIEBhbmd1bGFyL2NvcmUgd2VyZSBkZXRlY3RlZCBhbmQgcmV3cml0dGVuICh3aGljaCBoYXBwZW5zIHdoZW4gY29tcGlsaW5nXG4gIC8vIEBhbmd1bGFyL2NvcmUpLCBnbyB0aHJvdWdoIHRoZSBTb3VyY2VGaWxlIGFuZCByZXdyaXRlIHJlZmVyZW5jZXMgdG8gc3ltYm9scyBpbXBvcnRlZCBmcm9tIGNvcmUuXG4gIGlmIChjb3JlSW1wb3J0SWRlbnRpZmllcnMuc2l6ZSA+IDApIHtcbiAgICBjb25zdCB2aXNpdCA9IDxUIGV4dGVuZHMgdHMuTm9kZT4obm9kZTogVCk6IFQgPT4ge1xuICAgICAgbm9kZSA9IHRzLnZpc2l0RWFjaENoaWxkKG5vZGUsIGNoaWxkID0+IHZpc2l0KGNoaWxkKSwgY29udGV4dCk7XG5cbiAgICAgIC8vIExvb2sgZm9yIGV4cHJlc3Npb25zIG9mIHRoZSBmb3JtIFwiaS5zXCIgd2hlcmUgJ2knIGlzIGEgZGV0ZWN0ZWQgbmFtZSBmb3IgYW4gQGFuZ3VsYXIvY29yZVxuICAgICAgLy8gaW1wb3J0IHRoYXQgd2FzIGNoYW5nZWQgYWJvdmUuIFJld3JpdGUgJ3MnIHVzaW5nIHRoZSBJbXBvcnRSZXNvbHZlci5cbiAgICAgIGlmICh0cy5pc1Byb3BlcnR5QWNjZXNzRXhwcmVzc2lvbihub2RlKSAmJiB0cy5pc0lkZW50aWZpZXIobm9kZS5leHByZXNzaW9uKSAmJlxuICAgICAgICAgIGNvcmVJbXBvcnRJZGVudGlmaWVycy5oYXMobm9kZS5leHByZXNzaW9uLnRleHQpKSB7XG4gICAgICAgIC8vIFRoaXMgaXMgYW4gaW1wb3J0IG9mIGEgc3ltYm9sIGZyb20gQGFuZ3VsYXIvY29yZS4gVHJhbnNmb3JtIGl0IHdpdGggdGhlIGltcG9ydFJld3JpdGVyLlxuICAgICAgICBjb25zdCByZXdyaXR0ZW5TeW1ib2wgPSBpbXBvcnRSZXdyaXRlci5yZXdyaXRlU3ltYm9sKG5vZGUubmFtZS50ZXh0LCAnQGFuZ3VsYXIvY29yZScpO1xuICAgICAgICBpZiAocmV3cml0dGVuU3ltYm9sICE9PSBub2RlLm5hbWUudGV4dCkge1xuICAgICAgICAgIGNvbnN0IHVwZGF0ZWQgPVxuICAgICAgICAgICAgICB0cy51cGRhdGVQcm9wZXJ0eUFjY2Vzcyhub2RlLCBub2RlLmV4cHJlc3Npb24sIHRzLmNyZWF0ZUlkZW50aWZpZXIocmV3cml0dGVuU3ltYm9sKSk7XG4gICAgICAgICAgbm9kZSA9IHVwZGF0ZWQgYXMgVCAmIHRzLlByb3BlcnR5QWNjZXNzRXhwcmVzc2lvbjtcbiAgICAgICAgfVxuICAgICAgfVxuICAgICAgcmV0dXJuIG5vZGU7XG4gICAgfTtcblxuICAgIGZpbGUgPSB2aXNpdChmaWxlKTtcbiAgfVxuXG4gIHJldHVybiBmaWxlO1xufVxuXG5cbi8qKlxuICogUGFyc2VzIGFuZCByZXR1cm5zIHRoZSBjb21tZW50IHRleHQgb2YgYSBcXEBmaWxlb3ZlcnZpZXcgY29tbWVudCBpbiB0aGUgZ2l2ZW4gc291cmNlIGZpbGUuXG4gKi9cbmZ1bmN0aW9uIGdldEZpbGVvdmVydmlld0NvbW1lbnQoc291cmNlRmlsZTogdHMuU291cmNlRmlsZSk6IHN0cmluZ3xudWxsIHtcbiAgY29uc3QgdGV4dCA9IHNvdXJjZUZpbGUuZ2V0RnVsbFRleHQoKTtcbiAgY29uc3QgdHJpdmlhID0gdGV4dC5zdWJzdHJpbmcoMCwgc291cmNlRmlsZS5nZXRTdGFydCgpKTtcblxuICBjb25zdCBsZWFkaW5nQ29tbWVudHMgPSB0cy5nZXRMZWFkaW5nQ29tbWVudFJhbmdlcyh0cml2aWEsIDApO1xuICBpZiAoIWxlYWRpbmdDb21tZW50cyB8fCBsZWFkaW5nQ29tbWVudHMubGVuZ3RoID09PSAwKSB7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBjb25zdCBjb21tZW50ID0gbGVhZGluZ0NvbW1lbnRzWzBdO1xuICBpZiAoY29tbWVudC5raW5kICE9PSB0cy5TeW50YXhLaW5kLk11bHRpTGluZUNvbW1lbnRUcml2aWEpIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIC8vIE9ubHkgY29tbWVudHMgc2VwYXJhdGVkIHdpdGggYSBcXG5cXG4gZnJvbSB0aGUgZmlsZSBjb250ZW50cyBhcmUgY29uc2lkZXJlZCBmaWxlLWxldmVsIGNvbW1lbnRzXG4gIC8vIGluIFR5cGVTY3JpcHQuXG4gIGlmICh0ZXh0LnN1YnN0cmluZyhjb21tZW50LmVuZCwgY29tbWVudC5lbmQgKyAyKSAhPT0gJ1xcblxcbicpIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIGNvbnN0IGNvbW1lbnRUZXh0ID0gdGV4dC5zdWJzdHJpbmcoY29tbWVudC5wb3MsIGNvbW1lbnQuZW5kKTtcbiAgLy8gQ2xvc3VyZSBDb21waWxlciBpZ25vcmVzIEBzdXBwcmVzcyBhbmQgc2ltaWxhciBpZiB0aGUgY29tbWVudCBjb250YWlucyBAbGljZW5zZS5cbiAgaWYgKGNvbW1lbnRUZXh0LmluZGV4T2YoJ0BsaWNlbnNlJykgIT09IC0xKSB7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICByZXR1cm4gY29tbWVudFRleHQ7XG59XG5cbi8qKlxuICogV3JhcHMgdGhlIGdpdmVuIGV4cHJlc3Npb24gaW4gYSBjYWxsIHRvIGDJtW5vU2lkZUVmZmVjdHMoKWAsIHdoaWNoIHRlbGxzXG4gKiBDbG9zdXJlIHdlIGRvbid0IGNhcmUgYWJvdXQgdGhlIHNpZGUgZWZmZWN0cyBvZiB0aGlzIGV4cHJlc3Npb24gYW5kIGl0IHNob3VsZFxuICogYmUgdHJlYXRlZCBhcyBcInB1cmVcIi4gQ2xvc3VyZSBpcyBmcmVlIHRvIHRyZWUgc2hha2UgdGhpcyBleHByZXNzaW9uIGlmIGl0c1xuICogcmVzdWx0IGlzIG5vdCB1c2VkLlxuICpcbiAqIEV4YW1wbGU6IFRha2VzIGAxICsgMmAgYW5kIHJldHVybnMgYGkwLsm1bm9TaWRlRWZmZWN0cygoKSA9PiAxICsgMilgLlxuICovXG5mdW5jdGlvbiB3cmFwSW5Ob1NpZGVFZmZlY3RzKGV4cHI6IHRzLkV4cHJlc3Npb24pOiB0cy5FeHByZXNzaW9uIHtcbiAgY29uc3Qgbm9TaWRlRWZmZWN0cyA9IHRzLmNyZWF0ZVByb3BlcnR5QWNjZXNzKFxuICAgICAgdHMuY3JlYXRlSWRlbnRpZmllcignaTAnKSxcbiAgICAgICfJtW5vU2lkZUVmZmVjdHMnLFxuICApO1xuXG4gIHJldHVybiB0cy5jcmVhdGVDYWxsKFxuICAgICAgbm9TaWRlRWZmZWN0cyxcbiAgICAgIC8qIHR5cGVBcmd1bWVudHMgKi9bXSxcbiAgICAgIC8qIGFyZ3VtZW50cyAqL1xuICAgICAgW1xuICAgICAgICB0cy5jcmVhdGVGdW5jdGlvbkV4cHJlc3Npb24oXG4gICAgICAgICAgICAvKiBtb2RpZmllcnMgKi9bXSxcbiAgICAgICAgICAgIC8qIGFzdGVyaXNrVG9rZW4gKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgLyogbmFtZSAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICAvKiB0eXBlUGFyYW1ldGVycyAqL1tdLFxuICAgICAgICAgICAgLyogcGFyYW1ldGVycyAqL1tdLFxuICAgICAgICAgICAgLyogdHlwZSAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICAvKiBib2R5ICovIHRzLmNyZWF0ZUJsb2NrKFtcbiAgICAgICAgICAgICAgdHMuY3JlYXRlUmV0dXJuKGV4cHIpLFxuICAgICAgICAgICAgXSksXG4gICAgICAgICAgICApLFxuICAgICAgXSxcbiAgKTtcbn1cblxuLyoqXG4gKiBDbG9uZXMgYW5kIHVwZGF0ZXMgdGhlIGluaXRpYWxpemVycyBmb3IgYSBnaXZlbiBzdGF0ZW1lbnQgdG8gdXNlIHRoZSBuZXdcbiAqIGV4cHJlc3Npb24gcHJvdmlkZWQuIERvZXMgbm90IG11dGF0ZSB0aGUgaW5wdXQgc3RhdGVtZW50LlxuICovXG5mdW5jdGlvbiB1cGRhdGVJbml0aWFsaXplcnMoXG4gICAgc3RtdDogdHMuVmFyaWFibGVTdGF0ZW1lbnQsXG4gICAgdXBkYXRlOiAoaW5pdGlhbGl6ZXI/OiB0cy5FeHByZXNzaW9uKSA9PiB0cy5FeHByZXNzaW9uIHwgdW5kZWZpbmVkLFxuICAgICk6IHRzLlZhcmlhYmxlU3RhdGVtZW50IHtcbiAgcmV0dXJuIHRzLnVwZGF0ZVZhcmlhYmxlU3RhdGVtZW50KFxuICAgICAgc3RtdCxcbiAgICAgIHN0bXQubW9kaWZpZXJzLFxuICAgICAgdHMudXBkYXRlVmFyaWFibGVEZWNsYXJhdGlvbkxpc3QoXG4gICAgICAgICAgc3RtdC5kZWNsYXJhdGlvbkxpc3QsXG4gICAgICAgICAgc3RtdC5kZWNsYXJhdGlvbkxpc3QuZGVjbGFyYXRpb25zLm1hcChcbiAgICAgICAgICAgICAgKGRlY2wpID0+IHRzLnVwZGF0ZVZhcmlhYmxlRGVjbGFyYXRpb24oXG4gICAgICAgICAgICAgICAgICBkZWNsLFxuICAgICAgICAgICAgICAgICAgZGVjbC5uYW1lLFxuICAgICAgICAgICAgICAgICAgZGVjbC50eXBlLFxuICAgICAgICAgICAgICAgICAgdXBkYXRlKGRlY2wuaW5pdGlhbGl6ZXIpLFxuICAgICAgICAgICAgICAgICAgKSxcbiAgICAgICAgICAgICAgKSxcbiAgICAgICAgICApLFxuICApO1xufVxuIl19