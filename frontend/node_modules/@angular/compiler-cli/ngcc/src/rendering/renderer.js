(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/rendering/renderer", ["require", "exports", "tslib", "@angular/compiler", "magic-string", "@angular/compiler-cli/src/ngtsc/translator", "@angular/compiler-cli/ngcc/src/constants", "@angular/compiler-cli/ngcc/src/rendering/rendering_formatter", "@angular/compiler-cli/ngcc/src/rendering/source_maps", "@angular/compiler-cli/ngcc/src/rendering/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.renderConstantPool = exports.Renderer = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var compiler_1 = require("@angular/compiler");
    var magic_string_1 = require("magic-string");
    var translator_1 = require("@angular/compiler-cli/src/ngtsc/translator");
    var constants_1 = require("@angular/compiler-cli/ngcc/src/constants");
    var rendering_formatter_1 = require("@angular/compiler-cli/ngcc/src/rendering/rendering_formatter");
    var source_maps_1 = require("@angular/compiler-cli/ngcc/src/rendering/source_maps");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/rendering/utils");
    /**
     * A base-class for rendering an `AnalyzedFile`.
     *
     * Package formats have output files that must be rendered differently. Concrete sub-classes must
     * implement the `addImports`, `addDefinitions` and `removeDecorators` abstract methods.
     */
    var Renderer = /** @class */ (function () {
        function Renderer(host, srcFormatter, fs, logger, bundle, tsConfig) {
            if (tsConfig === void 0) { tsConfig = null; }
            this.host = host;
            this.srcFormatter = srcFormatter;
            this.fs = fs;
            this.logger = logger;
            this.bundle = bundle;
            this.tsConfig = tsConfig;
        }
        Renderer.prototype.renderProgram = function (decorationAnalyses, switchMarkerAnalyses, privateDeclarationsAnalyses) {
            var _this = this;
            var renderedFiles = [];
            // Transform the source files.
            this.bundle.src.program.getSourceFiles().forEach(function (sourceFile) {
                if (decorationAnalyses.has(sourceFile) || switchMarkerAnalyses.has(sourceFile) ||
                    sourceFile === _this.bundle.src.file) {
                    var compiledFile = decorationAnalyses.get(sourceFile);
                    var switchMarkerAnalysis = switchMarkerAnalyses.get(sourceFile);
                    renderedFiles.push.apply(renderedFiles, tslib_1.__spread(_this.renderFile(sourceFile, compiledFile, switchMarkerAnalysis, privateDeclarationsAnalyses)));
                }
            });
            return renderedFiles;
        };
        /**
         * Render the source code and source-map for an Analyzed file.
         * @param compiledFile The analyzed file to render.
         * @param targetPath The absolute path where the rendered file will be written.
         */
        Renderer.prototype.renderFile = function (sourceFile, compiledFile, switchMarkerAnalysis, privateDeclarationsAnalyses) {
            var _this = this;
            var isEntryPoint = sourceFile === this.bundle.src.file;
            var outputText = new magic_string_1.default(sourceFile.text);
            if (switchMarkerAnalysis) {
                this.srcFormatter.rewriteSwitchableDeclarations(outputText, switchMarkerAnalysis.sourceFile, switchMarkerAnalysis.declarations);
            }
            var importManager = new translator_1.ImportManager(utils_1.getImportRewriter(this.bundle.src.r3SymbolsFile, this.bundle.isCore, this.bundle.isFlatCore), constants_1.IMPORT_PREFIX);
            if (compiledFile) {
                // TODO: remove constructor param metadata and property decorators (we need info from the
                // handlers to do this)
                var decoratorsToRemove = this.computeDecoratorsToRemove(compiledFile.compiledClasses);
                this.srcFormatter.removeDecorators(outputText, decoratorsToRemove);
                compiledFile.compiledClasses.forEach(function (clazz) {
                    var _a;
                    var renderedDefinition = _this.renderDefinitions(compiledFile.sourceFile, clazz, importManager, !!((_a = _this.tsConfig) === null || _a === void 0 ? void 0 : _a.options.annotateForClosureCompiler));
                    _this.srcFormatter.addDefinitions(outputText, clazz, renderedDefinition);
                    var renderedStatements = _this.renderAdjacentStatements(compiledFile.sourceFile, clazz, importManager);
                    _this.srcFormatter.addAdjacentStatements(outputText, clazz, renderedStatements);
                });
                if (!isEntryPoint && compiledFile.reexports.length > 0) {
                    this.srcFormatter.addDirectExports(outputText, compiledFile.reexports, importManager, compiledFile.sourceFile);
                }
                this.srcFormatter.addConstants(outputText, renderConstantPool(this.srcFormatter, compiledFile.sourceFile, compiledFile.constantPool, importManager), compiledFile.sourceFile);
            }
            // Add exports to the entry-point file
            if (isEntryPoint) {
                var entryPointBasePath = utils_1.stripExtension(this.bundle.src.path);
                this.srcFormatter.addExports(outputText, entryPointBasePath, privateDeclarationsAnalyses, importManager, sourceFile);
            }
            if (isEntryPoint || compiledFile) {
                this.srcFormatter.addImports(outputText, importManager.getAllImports(sourceFile.fileName), sourceFile);
            }
            if (compiledFile || switchMarkerAnalysis || isEntryPoint) {
                return source_maps_1.renderSourceAndMap(this.logger, this.fs, sourceFile, outputText);
            }
            else {
                return [];
            }
        };
        /**
         * From the given list of classes, computes a map of decorators that should be removed.
         * The decorators to remove are keyed by their container node, such that we can tell if
         * we should remove the entire decorator property.
         * @param classes The list of classes that may have decorators to remove.
         * @returns A map of decorators to remove, keyed by their container node.
         */
        Renderer.prototype.computeDecoratorsToRemove = function (classes) {
            var decoratorsToRemove = new rendering_formatter_1.RedundantDecoratorMap();
            classes.forEach(function (clazz) {
                if (clazz.decorators === null) {
                    return;
                }
                clazz.decorators.forEach(function (dec) {
                    if (dec.node === null) {
                        return;
                    }
                    var decoratorArray = dec.node.parent;
                    if (!decoratorsToRemove.has(decoratorArray)) {
                        decoratorsToRemove.set(decoratorArray, [dec.node]);
                    }
                    else {
                        decoratorsToRemove.get(decoratorArray).push(dec.node);
                    }
                });
            });
            return decoratorsToRemove;
        };
        /**
         * Render the definitions as source code for the given class.
         * @param sourceFile The file containing the class to process.
         * @param clazz The class whose definitions are to be rendered.
         * @param compilation The results of analyzing the class - this is used to generate the rendered
         * definitions.
         * @param imports An object that tracks the imports that are needed by the rendered definitions.
         */
        Renderer.prototype.renderDefinitions = function (sourceFile, compiledClass, imports, annotateForClosureCompiler) {
            var name = this.host.getInternalNameOfClass(compiledClass.declaration);
            var statements = compiledClass.compilation.map(function (c) {
                return createAssignmentStatements(name, c.name, c.initializer, annotateForClosureCompiler ? '* @nocollapse ' : undefined);
            });
            return this.renderStatements(sourceFile, Array.prototype.concat.apply([], statements), imports);
        };
        /**
         * Render the adjacent statements as source code for the given class.
         * @param sourceFile The file containing the class to process.
         * @param clazz The class whose statements are to be rendered.
         * @param compilation The results of analyzing the class - this is used to generate the rendered
         * definitions.
         * @param imports An object that tracks the imports that are needed by the rendered definitions.
         */
        Renderer.prototype.renderAdjacentStatements = function (sourceFile, compiledClass, imports) {
            var e_1, _a;
            var statements = [];
            try {
                for (var _b = tslib_1.__values(compiledClass.compilation), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var c = _c.value;
                    statements.push.apply(statements, tslib_1.__spread(c.statements));
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
            return this.renderStatements(sourceFile, statements, imports);
        };
        Renderer.prototype.renderStatements = function (sourceFile, statements, imports) {
            var _this = this;
            var printStatement = function (stmt) {
                return _this.srcFormatter.printStatement(stmt, sourceFile, imports);
            };
            return statements.map(printStatement).join('\n');
        };
        return Renderer;
    }());
    exports.Renderer = Renderer;
    /**
     * Render the constant pool as source code for the given class.
     */
    function renderConstantPool(formatter, sourceFile, constantPool, imports) {
        var printStatement = function (stmt) { return formatter.printStatement(stmt, sourceFile, imports); };
        return constantPool.statements.map(printStatement).join('\n');
    }
    exports.renderConstantPool = renderConstantPool;
    /**
     * Create an Angular AST statement node that contains the assignment of the
     * compiled decorator to be applied to the class.
     * @param analyzedClass The info about the class whose statement we want to create.
     */
    function createAssignmentStatements(receiverName, propName, initializer, leadingComment) {
        var receiver = new compiler_1.WrappedNodeExpr(receiverName);
        var statements = [new compiler_1.WritePropExpr(receiver, propName, initializer, /* type */ undefined, /* sourceSpan */ undefined)
                .toStmt()];
        if (leadingComment !== undefined) {
            statements.unshift(new compiler_1.CommentStmt(leadingComment, true));
        }
        return statements;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicmVuZGVyZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvcmVuZGVyaW5nL3JlbmRlcmVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7SUFBQTs7Ozs7O09BTUc7SUFDSCw4Q0FBbUg7SUFDbkgsNkNBQXVDO0lBSXZDLHlFQUE0RDtJQUs1RCxzRUFBMkM7SUFLM0Msb0dBQWdGO0lBQ2hGLG9GQUFpRDtJQUNqRCx3RUFBdUU7SUFFdkU7Ozs7O09BS0c7SUFDSDtRQUNFLGtCQUNZLElBQXdCLEVBQVUsWUFBZ0MsRUFDbEUsRUFBYyxFQUFVLE1BQWMsRUFBVSxNQUF3QixFQUN4RSxRQUF5QztZQUF6Qyx5QkFBQSxFQUFBLGVBQXlDO1lBRnpDLFNBQUksR0FBSixJQUFJLENBQW9CO1lBQVUsaUJBQVksR0FBWixZQUFZLENBQW9CO1lBQ2xFLE9BQUUsR0FBRixFQUFFLENBQVk7WUFBVSxXQUFNLEdBQU4sTUFBTSxDQUFRO1lBQVUsV0FBTSxHQUFOLE1BQU0sQ0FBa0I7WUFDeEUsYUFBUSxHQUFSLFFBQVEsQ0FBaUM7UUFBRyxDQUFDO1FBRXpELGdDQUFhLEdBQWIsVUFDSSxrQkFBc0MsRUFBRSxvQkFBMEMsRUFDbEYsMkJBQXdEO1lBRjVELGlCQWlCQztZQWRDLElBQU0sYUFBYSxHQUFrQixFQUFFLENBQUM7WUFFeEMsOEJBQThCO1lBQzlCLElBQUksQ0FBQyxNQUFNLENBQUMsR0FBRyxDQUFDLE9BQU8sQ0FBQyxjQUFjLEVBQUUsQ0FBQyxPQUFPLENBQUMsVUFBQSxVQUFVO2dCQUN6RCxJQUFJLGtCQUFrQixDQUFDLEdBQUcsQ0FBQyxVQUFVLENBQUMsSUFBSSxvQkFBb0IsQ0FBQyxHQUFHLENBQUMsVUFBVSxDQUFDO29CQUMxRSxVQUFVLEtBQUssS0FBSSxDQUFDLE1BQU0sQ0FBQyxHQUFHLENBQUMsSUFBSSxFQUFFO29CQUN2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QUFNLFFBQVEsR0FBRyxJQUFJLDBCQUFlLENBQUMsWUFBWSxDQUFDLENBQUM7UUFDbkQsSUFBTSxVQUFVLEdBQ1osQ0FBQyxJQUFJLHdCQUFhLENBQ2IsUUFBUSxFQUFFLFFBQVEsRUFBRSxXQUFXLEVBQUUsVUFBVSxDQUFDLFNBQVMsRUFBRSxnQkFBZ0IsQ0FBQyxTQUFTLENBQUM7aUJBQ2pGLE1BQU0sRUFBRSxDQUFDLENBQUM7UUFDcEIsSUFBSSxjQUFjLEtBQUssU0FBUyxFQUFFO1lBQ2hDLFVBQVUsQ0FBQyxPQUFPLENBQUMsSUFBSSxzQkFBVyxDQUFDLGNBQWMsRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDO1NBQzNEO1FBQ0QsT0FBTyxVQUFVLENBQUM7SUFDcEIsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IHtDb21tZW50U3RtdCwgQ29uc3RhbnRQb29sLCBFeHByZXNzaW9uLCBTdGF0ZW1lbnQsIFdyYXBwZWROb2RlRXhwciwgV3JpdGVQcm9wRXhwcn0gZnJvbSAnQGFuZ3VsYXIvY29tcGlsZXInO1xuaW1wb3J0IE1hZ2ljU3RyaW5nIGZyb20gJ21hZ2ljLXN0cmluZyc7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtGaWxlU3lzdGVtfSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvZmlsZV9zeXN0ZW0nO1xuaW1wb3J0IHtJbXBvcnRNYW5hZ2VyfSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvdHJhbnNsYXRvcic7XG5pbXBvcnQge1BhcnNlZENvbmZpZ3VyYXRpb259IGZyb20gJy4uLy4uLy4uL3NyYy9wZXJmb3JtX2NvbXBpbGUnO1xuaW1wb3J0IHtQcml2YXRlRGVjbGFyYXRpb25zQW5hbHlzZXN9IGZyb20gJy4uL2FuYWx5c2lzL3ByaXZhdGVfZGVjbGFyYXRpb25zX2FuYWx5emVyJztcbmltcG9ydCB7U3dpdGNoTWFya2VyQW5hbHlzZXMsIFN3aXRjaE1hcmtlckFuYWx5c2lzfSBmcm9tICcuLi9hbmFseXNpcy9zd2l0Y2hfbWFya2VyX2FuYWx5emVyJztcbmltcG9ydCB7Q29tcGlsZWRDbGFzcywgQ29tcGlsZWRGaWxlLCBEZWNvcmF0aW9uQW5hbHlzZXN9IGZyb20gJy4uL2FuYWx5c2lzL3R5cGVzJztcbmltcG9ydCB7SU1QT1JUX1BSRUZJWH0gZnJvbSAnLi4vY29uc3RhbnRzJztcbmltcG9ydCB7TmdjY1JlZmxlY3Rpb25Ib3N0fSBmcm9tICcuLi9ob3N0L25nY2NfaG9zdCc7XG5pbXBvcnQge0xvZ2dlcn0gZnJvbSAnLi4vbG9nZ2luZy9sb2dnZXInO1xuaW1wb3J0IHtFbnRyeVBvaW50QnVuZGxlfSBmcm9tICcuLi9wYWNrYWdlcy9lbnRyeV9wb2ludF9idW5kbGUnO1xuXG5pbXBvcnQge1JlZHVuZGFudERlY29yYXRvck1hcCwgUmVuZGVyaW5nRm9ybWF0dGVyfSBmcm9tICcuL3JlbmRlcmluZ19mb3JtYXR0ZXInO1xuaW1wb3J0IHtyZW5kZXJTb3VyY2VBbmRNYXB9IGZyb20gJy4vc291cmNlX21hcHMnO1xuaW1wb3J0IHtGaWxlVG9Xcml0ZSwgZ2V0SW1wb3J0UmV3cml0ZXIsIHN0cmlwRXh0ZW5zaW9ufSBmcm9tICcuL3V0aWxzJztcblxuLyoqXG4gKiBBIGJhc2UtY2xhc3MgZm9yIHJlbmRlcmluZyBhbiBgQW5hbHl6ZWRGaWxlYC5cbiAqXG4gKiBQYWNrYWdlIGZvcm1hdHMgaGF2ZSBvdXRwdXQgZmlsZXMgdGhhdCBtdXN0IGJlIHJlbmRlcmVkIGRpZmZlcmVudGx5LiBDb25jcmV0ZSBzdWItY2xhc3NlcyBtdXN0XG4gKiBpbXBsZW1lbnQgdGhlIGBhZGRJbXBvcnRzYCwgYGFkZERlZmluaXRpb25zYCBhbmQgYHJlbW92ZURlY29yYXRvcnNgIGFic3RyYWN0IG1ldGhvZHMuXG4gKi9cbmV4cG9ydCBjbGFzcyBSZW5kZXJlciB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSBob3N0OiBOZ2NjUmVmbGVjdGlvbkhvc3QsIHByaXZhdGUgc3JjRm9ybWF0dGVyOiBSZW5kZXJpbmdGb3JtYXR0ZXIsXG4gICAgICBwcml2YXRlIGZzOiBGaWxlU3lzdGVtLCBwcml2YXRlIGxvZ2dlcjogTG9nZ2VyLCBwcml2YXRlIGJ1bmRsZTogRW50cnlQb2ludEJ1bmRsZSxcbiAgICAgIHByaXZhdGUgdHNDb25maWc6IFBhcnNlZENvbmZpZ3VyYXRpb258bnVsbCA9IG51bGwpIHt9XG5cbiAgcmVuZGVyUHJvZ3JhbShcbiAgICAgIGRlY29yYXRpb25BbmFseXNlczogRGVjb3JhdGlvbkFuYWx5c2VzLCBzd2l0Y2hNYXJrZXJBbmFseXNlczogU3dpdGNoTWFya2VyQW5hbHlzZXMsXG4gICAgICBwcml2YXRlRGVjbGFyYXRpb25zQW5hbHlzZXM6IFByaXZhdGVEZWNsYXJhdGlvbnNBbmFseXNlcyk6IEZpbGVUb1dyaXRlW10ge1xuICAgIGNvbnN0IHJlbmRlcmVkRmlsZXM6IEZpbGVUb1dyaXRlW10gPSBbXTtcblxuICAgIC8vIFRyYW5zZm9ybSB0aGUgc291cmNlIGZpbGVzLlxuICAgIHRoaXMuYnVuZGxlLnNyYy5wcm9ncmFtLmdldFNvdXJjZUZpbGVzKCkuZm9yRWFjaChzb3VyY2VGaWxlID0+IHtcbiAgICAgIGlmIChkZWNvcmF0aW9uQW5hbHlzZXMuaGFzKHNvdXJjZUZpbGUpIHx8IHN3aXRjaE1hcmtlckFuYWx5c2VzLmhhcyhzb3VyY2VGaWxlKSB8fFxuICAgICAgICAgIHNvdXJjZUZpbGUgPT09IHRoaXMuYnVuZGxlLnNyYy5maWxlKSB7XG4gICAgICAgIGNvbnN0IGNvbXBpbGVkRmlsZSA9IGRlY29yYXRpb25BbmFseXNlcy5nZXQoc291cmNlRmlsZSk7XG4gICAgICAgIGNvbnN0IHN3aXRjaE1hcmtlckFuYWx5c2lzID0gc3dpdGNoTWFya2VyQW5hbHlzZXMuZ2V0KHNvdXJjZUZpbGUpO1xuICAgICAgICByZW5kZXJlZEZpbGVzLnB1c2goLi4udGhpcy5yZW5kZXJGaWxlKFxuICAgICAgICAgICAgc291cmNlRmlsZSwgY29tcGlsZWRGaWxlLCBzd2l0Y2hNYXJrZXJBbmFseXNpcywgcHJpdmF0ZURlY2xhcmF0aW9uc0FuYWx5c2VzKSk7XG4gICAgICB9XG4gICAgfSk7XG5cbiAgICByZXR1cm4gcmVuZGVyZWRGaWxlcztcbiAgfVxuXG4gIC8qKlxuICAgKiBSZW5kZXIgdGhlIHNvdXJjZSBjb2RlIGFuZCBzb3VyY2UtbWFwIGZvciBhbiBBbmFseXplZCBmaWxlLlxuICAgKiBAcGFyYW0gY29tcGlsZWRGaWxlIFRoZSBhbmFseXplZCBmaWxlIHRvIHJlbmRlci5cbiAgICogQHBhcmFtIHRhcmdldFBhdGggVGhlIGFic29sdXRlIHBhdGggd2hlcmUgdGhlIHJlbmRlcmVkIGZpbGUgd2lsbCBiZSB3cml0dGVuLlxuICAgKi9cbiAgcmVuZGVyRmlsZShcbiAgICAgIHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUsIGNvbXBpbGVkRmlsZTogQ29tcGlsZWRGaWxlfHVuZGVmaW5lZCxcbiAgICAgIHN3aXRjaE1hcmtlckFuYWx5c2lzOiBTd2l0Y2hNYXJrZXJBbmFseXNpc3x1bmRlZmluZWQsXG4gICAgICBwcml2YXRlRGVjbGFyYXRpb25zQW5hbHlzZXM6IFByaXZhdGVEZWNsYXJhdGlvbnNBbmFseXNlcyk6IEZpbGVUb1dyaXRlW10ge1xuICAgIGNvbnN0IGlzRW50cnlQb2ludCA9IHNvdXJjZUZpbGUgPT09IHRoaXMuYnVuZGxlLnNyYy5maWxlO1xuICAgIGNvbnN0IG91dHB1dFRleHQgPSBuZXcgTWFnaWNTdHJpbmcoc291cmNlRmlsZS50ZXh0KTtcblxuICAgIGlmIChzd2l0Y2hNYXJrZXJBbmFseXNpcykge1xuICAgICAgdGhpcy5zcmNGb3JtYXR0ZXIucmV3cml0ZVN3aXRjaGFibGVEZWNsYXJhdGlvbnMoXG4gICAgICAgICAgb3V0cHV0VGV4dCwgc3dpdGNoTWFya2VyQW5hbHlzaXMuc291cmNlRmlsZSwgc3dpdGNoTWFya2VyQW5hbHlzaXMuZGVjbGFyYXRpb25zKTtcbiAgICB9XG5cbiAgICBjb25zdCBpbXBvcnRNYW5hZ2VyID0gbmV3IEltcG9ydE1hbmFnZXIoXG4gICAgICAgIGdldEltcG9ydFJld3JpdGVyKFxuICAgICAgICAgICAgdGhpcy5idW5kbGUuc3JjLnIzU3ltYm9sc0ZpbGUsIHRoaXMuYnVuZGxlLmlzQ29yZSwgdGhpcy5idW5kbGUuaXNGbGF0Q29yZSksXG4gICAgICAgIElNUE9SVF9QUkVGSVgpO1xuXG4gICAgaWYgKGNvbXBpbGVkRmlsZSkge1xuICAgICAgLy8gVE9ETzogcmVtb3ZlIGNvbnN0cnVjdG9yIHBhcmFtIG1ldGFkYXRhIGFuZCBwcm9wZXJ0eSBkZWNvcmF0b3JzICh3ZSBuZWVkIGluZm8gZnJvbSB0aGVcbiAgICAgIC8vIGhhbmRsZXJzIHRvIGRvIHRoaXMpXG4gICAgICBjb25zdCBkZWNvcmF0b3JzVG9SZW1vdmUgPSB0aGlzLmNvbXB1dGVEZWNvcmF0b3JzVG9SZW1vdmUoY29tcGlsZWRGaWxlLmNvbXBpbGVkQ2xhc3Nlcyk7XG4gICAgICB0aGlzLnNyY0Zvcm1hdHRlci5yZW1vdmVEZWNvcmF0b3JzKG91dHB1dFRleHQsIGRlY29yYXRvcnNUb1JlbW92ZSk7XG5cbiAgICAgIGNvbXBpbGVkRmlsZS5jb21waWxlZENsYXNzZXMuZm9yRWFjaChjbGF6eiA9PiB7XG4gICAgICAgIGNvbnN0IHJlbmRlcmVkRGVmaW5pdGlvbiA9IHRoaXMucmVuZGVyRGVmaW5pdGlvbnMoXG4gICAgICAgICAgICBjb21waWxlZEZpbGUuc291cmNlRmlsZSwgY2xhenosIGltcG9ydE1hbmFnZXIsXG4gICAgICAgICAgICAhIXRoaXMudHNDb25maWc/Lm9wdGlvbnMuYW5ub3RhdGVGb3JDbG9zdXJlQ29tcGlsZXIpO1xuICAgICAgICB0aGlzLnNyY0Zvcm1hdHRlci5hZGREZWZpbml0aW9ucyhvdXRwdXRUZXh0LCBjbGF6eiwgcmVuZGVyZWREZWZpbml0aW9uKTtcblxuICAgICAgICBjb25zdCByZW5kZXJlZFN0YXRlbWVudHMgPVxuICAgICAgICAgICAgdGhpcy5yZW5kZXJBZGphY2VudFN0YXRlbWVudHMoY29tcGlsZWRGaWxlLnNvdXJjZUZpbGUsIGNsYXp6LCBpbXBvcnRNYW5hZ2VyKTtcbiAgICAgICAgdGhpcy5zcmNGb3JtYXR0ZXIuYWRkQWRqYWNlbnRTdGF0ZW1lbnRzKG91dHB1dFRleHQsIGNsYXp6LCByZW5kZXJlZFN0YXRlbWVudHMpO1xuICAgICAgfSk7XG5cbiAgICAgIGlmICghaXNFbnRyeVBvaW50ICYmIGNvbXBpbGVkRmlsZS5yZWV4cG9ydHMubGVuZ3RoID4gMCkge1xuICAgICAgICB0aGlzLnNyY0Zvcm1hdHRlci5hZGREaXJlY3RFeHBvcnRzKFxuICAgICAgICAgICAgb3V0cHV0VGV4dCwgY29tcGlsZWRGaWxlLnJlZXhwb3J0cywgaW1wb3J0TWFuYWdlciwgY29tcGlsZWRGaWxlLnNvdXJjZUZpbGUpO1xuICAgICAgfVxuXG4gICAgICB0aGlzLnNyY0Zvcm1hdHRlci5hZGRDb25zdGFudHMoXG4gICAgICAgICAgb3V0cHV0VGV4dCxcbiAgICAgICAgICByZW5kZXJDb25zdGFudFBvb2woXG4gICAgICAgICAgICAgIHRoaXMuc3JjRm9ybWF0dGVyLCBjb21waWxlZEZpbGUuc291cmNlRmlsZSwgY29tcGlsZWRGaWxlLmNvbnN0YW50UG9vbCwgaW1wb3J0TWFuYWdlciksXG4gICAgICAgICAgY29tcGlsZWRGaWxlLnNvdXJjZUZpbGUpO1xuICAgIH1cblxuICAgIC8vIEFkZCBleHBvcnRzIHRvIHRoZSBlbnRyeS1wb2ludCBmaWxlXG4gICAgaWYgKGlzRW50cnlQb2ludCkge1xuICAgICAgY29uc3QgZW50cnlQb2ludEJhc2VQYXRoID0gc3RyaXBFeHRlbnNpb24odGhpcy5idW5kbGUuc3JjLnBhdGgpO1xuICAgICAgdGhpcy5zcmNGb3JtYXR0ZXIuYWRkRXhwb3J0cyhcbiAgICAgICAgICBvdXRwdXRUZXh0LCBlbnRyeVBvaW50QmFzZVBhdGgsIHByaXZhdGVEZWNsYXJhdGlvbnNBbmFseXNlcywgaW1wb3J0TWFuYWdlciwgc291cmNlRmlsZSk7XG4gICAgfVxuXG4gICAgaWYgKGlzRW50cnlQb2ludCB8fCBjb21waWxlZEZpbGUpIHtcbiAgICAgIHRoaXMuc3JjRm9ybWF0dGVyLmFkZEltcG9ydHMoXG4gICAgICAgICAgb3V0cHV0VGV4dCwgaW1wb3J0TWFuYWdlci5nZXRBbGxJbXBvcnRzKHNvdXJjZUZpbGUuZmlsZU5hbWUpLCBzb3VyY2VGaWxlKTtcbiAgICB9XG5cbiAgICBpZiAoY29tcGlsZWRGaWxlIHx8IHN3aXRjaE1hcmtlckFuYWx5c2lzIHx8IGlzRW50cnlQb2ludCkge1xuICAgICAgcmV0dXJuIHJlbmRlclNvdXJjZUFuZE1hcCh0aGlzLmxvZ2dlciwgdGhpcy5mcywgc291cmNlRmlsZSwgb3V0cHV0VGV4dCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHJldHVybiBbXTtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogRnJvbSB0aGUgZ2l2ZW4gbGlzdCBvZiBjbGFzc2VzLCBjb21wdXRlcyBhIG1hcCBvZiBkZWNvcmF0b3JzIHRoYXQgc2hvdWxkIGJlIHJlbW92ZWQuXG4gICAqIFRoZSBkZWNvcmF0b3JzIHRvIHJlbW92ZSBhcmUga2V5ZWQgYnkgdGhlaXIgY29udGFpbmVyIG5vZGUsIHN1Y2ggdGhhdCB3ZSBjYW4gdGVsbCBpZlxuICAgKiB3ZSBzaG91bGQgcmVtb3ZlIHRoZSBlbnRpcmUgZGVjb3JhdG9yIHByb3BlcnR5LlxuICAgKiBAcGFyYW0gY2xhc3NlcyBUaGUgbGlzdCBvZiBjbGFzc2VzIHRoYXQgbWF5IGhhdmUgZGVjb3JhdG9ycyB0byByZW1vdmUuXG4gICAqIEByZXR1cm5zIEEgbWFwIG9mIGRlY29yYXRvcnMgdG8gcmVtb3ZlLCBrZXllZCBieSB0aGVpciBjb250YWluZXIgbm9kZS5cbiAgICovXG4gIHByaXZhdGUgY29tcHV0ZURlY29yYXRvcnNUb1JlbW92ZShjbGFzc2VzOiBDb21waWxlZENsYXNzW10pOiBSZWR1bmRhbnREZWNvcmF0b3JNYXAge1xuICAgIGNvbnN0IGRlY29yYXRvcnNUb1JlbW92ZSA9IG5ldyBSZWR1bmRhbnREZWNvcmF0b3JNYXAoKTtcbiAgICBjbGFzc2VzLmZvckVhY2goY2xhenogPT4ge1xuICAgICAgaWYgKGNsYXp6LmRlY29yYXRvcnMgPT09IG51bGwpIHtcbiAgICAgICAgcmV0dXJuO1xuICAgICAgfVxuXG4gICAgICBjbGF6ei5kZWNvcmF0b3JzLmZvckVhY2goZGVjID0+IHtcbiAgICAgICAgaWYgKGRlYy5ub2RlID09PSBudWxsKSB7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9XG4gICAgICAgIGNvbnN0IGRlY29yYXRvckFycmF5ID0gZGVjLm5vZGUucGFyZW50ITtcbiAgICAgICAgaWYgKCFkZWNvcmF0b3JzVG9SZW1vdmUuaGFzKGRlY29yYXRvckFycmF5KSkge1xuICAgICAgICAgIGRlY29yYXRvcnNUb1JlbW92ZS5zZXQoZGVjb3JhdG9yQXJyYXksIFtkZWMubm9kZV0pO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIGRlY29yYXRvcnNUb1JlbW92ZS5nZXQoZGVjb3JhdG9yQXJyYXkpIS5wdXNoKGRlYy5ub2RlKTtcbiAgICAgICAgfVxuICAgICAgfSk7XG4gICAgfSk7XG4gICAgcmV0dXJuIGRlY29yYXRvcnNUb1JlbW92ZTtcbiAgfVxuXG4gIC8qKlxuICAgKiBSZW5kZXIgdGhlIGRlZmluaXRpb25zIGFzIHNvdXJjZSBjb2RlIGZvciB0aGUgZ2l2ZW4gY2xhc3MuXG4gICAqIEBwYXJhbSBzb3VyY2VGaWxlIFRoZSBmaWxlIGNvbnRhaW5pbmcgdGhlIGNsYXNzIHRvIHByb2Nlc3MuXG4gICAqIEBwYXJhbSBjbGF6eiBUaGUgY2xhc3Mgd2hvc2UgZGVmaW5pdGlvbnMgYXJlIHRvIGJlIHJlbmRlcmVkLlxuICAgKiBAcGFyYW0gY29tcGlsYXRpb24gVGhlIHJlc3VsdHMgb2YgYW5hbHl6aW5nIHRoZSBjbGFzcyAtIHRoaXMgaXMgdXNlZCB0byBnZW5lcmF0ZSB0aGUgcmVuZGVyZWRcbiAgICogZGVmaW5pdGlvbnMuXG4gICAqIEBwYXJhbSBpbXBvcnRzIEFuIG9iamVjdCB0aGF0IHRyYWNrcyB0aGUgaW1wb3J0cyB0aGF0IGFyZSBuZWVkZWQgYnkgdGhlIHJlbmRlcmVkIGRlZmluaXRpb25zLlxuICAgKi9cbiAgcHJpdmF0ZSByZW5kZXJEZWZpbml0aW9ucyhcbiAgICAgIHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUsIGNvbXBpbGVkQ2xhc3M6IENvbXBpbGVkQ2xhc3MsIGltcG9ydHM6IEltcG9ydE1hbmFnZXIsXG4gICAgICBhbm5vdGF0ZUZvckNsb3N1cmVDb21waWxlcjogYm9vbGVhbik6IHN0cmluZyB7XG4gICAgY29uc3QgbmFtZSA9IHRoaXMuaG9zdC5nZXRJbnRlcm5hbE5hbWVPZkNsYXNzKGNvbXBpbGVkQ2xhc3MuZGVjbGFyYXRpb24pO1xuICAgIGNvbnN0IHN0YXRlbWVudHM6IFN0YXRlbWVudFtdW10gPSBjb21waWxlZENsYXNzLmNvbXBpbGF0aW9uLm1hcChjID0+IHtcbiAgICAgIHJldHVybiBjcmVhdGVBc3NpZ25tZW50U3RhdGVtZW50cyhcbiAgICAgICAgICBuYW1lLCBjLm5hbWUsIGMuaW5pdGlhbGl6ZXIsIGFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyID8gJyogQG5vY29sbGFwc2UgJyA6IHVuZGVmaW5lZCk7XG4gICAgfSk7XG4gICAgcmV0dXJuIHRoaXMucmVuZGVyU3RhdGVtZW50cyhzb3VyY2VGaWxlLCBBcnJheS5wcm90b3R5cGUuY29uY2F0LmFwcGx5KFtdLCBzdGF0ZW1lbnRzKSwgaW1wb3J0cyk7XG4gIH1cblxuICAvKipcbiAgICogUmVuZGVyIHRoZSBhZGphY2VudCBzdGF0ZW1lbnRzIGFzIHNvdXJjZSBjb2RlIGZvciB0aGUgZ2l2ZW4gY2xhc3MuXG4gICAqIEBwYXJhbSBzb3VyY2VGaWxlIFRoZSBmaWxlIGNvbnRhaW5pbmcgdGhlIGNsYXNzIHRvIHByb2Nlc3MuXG4gICAqIEBwYXJhbSBjbGF6eiBUaGUgY2xhc3Mgd2hvc2Ugc3RhdGVtZW50cyBhcmUgdG8gYmUgcmVuZGVyZWQuXG4gICAqIEBwYXJhbSBjb21waWxhdGlvbiBUaGUgcmVzdWx0cyBvZiBhbmFseXppbmcgdGhlIGNsYXNzIC0gdGhpcyBpcyB1c2VkIHRvIGdlbmVyYXRlIHRoZSByZW5kZXJlZFxuICAgKiBkZWZpbml0aW9ucy5cbiAgICogQHBhcmFtIGltcG9ydHMgQW4gb2JqZWN0IHRoYXQgdHJhY2tzIHRoZSBpbXBvcnRzIHRoYXQgYXJlIG5lZWRlZCBieSB0aGUgcmVuZGVyZWQgZGVmaW5pdGlvbnMuXG4gICAqL1xuICBwcml2YXRlIHJlbmRlckFkamFjZW50U3RhdGVtZW50cyhcbiAgICAgIHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUsIGNvbXBpbGVkQ2xhc3M6IENvbXBpbGVkQ2xhc3MsIGltcG9ydHM6IEltcG9ydE1hbmFnZXIpOiBzdHJpbmcge1xuICAgIGNvbnN0IHN0YXRlbWVudHM6IFN0YXRlbWVudFtdID0gW107XG4gICAgZm9yIChjb25zdCBjIG9mIGNvbXBpbGVkQ2xhc3MuY29tcGlsYXRpb24pIHtcbiAgICAgIHN0YXRlbWVudHMucHVzaCguLi5jLnN0YXRlbWVudHMpO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5yZW5kZXJTdGF0ZW1lbnRzKHNvdXJjZUZpbGUsIHN0YXRlbWVudHMsIGltcG9ydHMpO1xuICB9XG5cbiAgcHJpdmF0ZSByZW5kZXJTdGF0ZW1lbnRzKFxuICAgICAgc291cmNlRmlsZTogdHMuU291cmNlRmlsZSwgc3RhdGVtZW50czogU3RhdGVtZW50W10sIGltcG9ydHM6IEltcG9ydE1hbmFnZXIpOiBzdHJpbmcge1xuICAgIGNvbnN0IHByaW50U3RhdGVtZW50ID0gKHN0bXQ6IFN0YXRlbWVudCkgPT5cbiAgICAgICAgdGhpcy5zcmNGb3JtYXR0ZXIucHJpbnRTdGF0ZW1lbnQoc3RtdCwgc291cmNlRmlsZSwgaW1wb3J0cyk7XG4gICAgcmV0dXJuIHN0YXRlbWVudHMubWFwKHByaW50U3RhdGVtZW50KS5qb2luKCdcXG4nKTtcbiAgfVxufVxuXG4vKipcbiAqIFJlbmRlciB0aGUgY29uc3RhbnQgcG9vbCBhcyBzb3VyY2UgY29kZSBmb3IgdGhlIGdpdmVuIGNsYXNzLlxuICovXG5leHBvcnQgZnVuY3Rpb24gcmVuZGVyQ29uc3RhbnRQb29sKFxuICAgIGZvcm1hdHRlcjogUmVuZGVyaW5nRm9ybWF0dGVyLCBzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlLCBjb25zdGFudFBvb2w6IENvbnN0YW50UG9vbCxcbiAgICBpbXBvcnRzOiBJbXBvcnRNYW5hZ2VyKTogc3RyaW5nIHtcbiAgY29uc3QgcHJpbnRTdGF0ZW1lbnQgPSAoc3RtdDogU3RhdGVtZW50KSA9PiBmb3JtYXR0ZXIucHJpbnRTdGF0ZW1lbnQoc3RtdCwgc291cmNlRmlsZSwgaW1wb3J0cyk7XG4gIHJldHVybiBjb25zdGFudFBvb2wuc3RhdGVtZW50cy5tYXAocHJpbnRTdGF0ZW1lbnQpLmpvaW4oJ1xcbicpO1xufVxuXG4vKipcbiAqIENyZWF0ZSBhbiBBbmd1bGFyIEFTVCBzdGF0ZW1lbnQgbm9kZSB0aGF0IGNvbnRhaW5zIHRoZSBhc3NpZ25tZW50IG9mIHRoZVxuICogY29tcGlsZWQgZGVjb3JhdG9yIHRvIGJlIGFwcGxpZWQgdG8gdGhlIGNsYXNzLlxuICogQHBhcmFtIGFuYWx5emVkQ2xhc3MgVGhlIGluZm8gYWJvdXQgdGhlIGNsYXNzIHdob3NlIHN0YXRlbWVudCB3ZSB3YW50IHRvIGNyZWF0ZS5cbiAqL1xuZnVuY3Rpb24gY3JlYXRlQXNzaWdubWVudFN0YXRlbWVudHMoXG4gICAgcmVjZWl2ZXJOYW1lOiB0cy5EZWNsYXJhdGlvbk5hbWUsIHByb3BOYW1lOiBzdHJpbmcsIGluaXRpYWxpemVyOiBFeHByZXNzaW9uLFxuICAgIGxlYWRpbmdDb21tZW50Pzogc3RyaW5nKTogU3RhdGVtZW50W10ge1xuICBjb25zdCByZWNlaXZlciA9IG5ldyBXcmFwcGVkTm9kZUV4cHIocmVjZWl2ZXJOYW1lKTtcbiAgY29uc3Qgc3RhdGVtZW50cyA9XG4gICAgICBbbmV3IFdyaXRlUHJvcEV4cHIoXG4gICAgICAgICAgIHJlY2VpdmVyLCBwcm9wTmFtZSwgaW5pdGlhbGl6ZXIsIC8qIHR5cGUgKi8gdW5kZWZpbmVkLCAvKiBzb3VyY2VTcGFuICovIHVuZGVmaW5lZClcbiAgICAgICAgICAgLnRvU3RtdCgpXTtcbiAgaWYgKGxlYWRpbmdDb21tZW50ICE9PSB1bmRlZmluZWQpIHtcbiAgICBzdGF0ZW1lbnRzLnVuc2hpZnQobmV3IENvbW1lbnRTdG10KGxlYWRpbmdDb21tZW50LCB0cnVlKSk7XG4gIH1cbiAgcmV0dXJuIHN0YXRlbWVudHM7XG59XG4iXX0=