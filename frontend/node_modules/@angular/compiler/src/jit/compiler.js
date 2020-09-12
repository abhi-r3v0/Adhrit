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
        define("@angular/compiler/src/jit/compiler", ["require", "exports", "@angular/compiler/src/compile_metadata", "@angular/compiler/src/constant_pool", "@angular/compiler/src/output/output_ast", "@angular/compiler/src/output/output_interpreter", "@angular/compiler/src/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.JitCompiler = void 0;
    var compile_metadata_1 = require("@angular/compiler/src/compile_metadata");
    var constant_pool_1 = require("@angular/compiler/src/constant_pool");
    var ir = require("@angular/compiler/src/output/output_ast");
    var output_interpreter_1 = require("@angular/compiler/src/output/output_interpreter");
    var util_1 = require("@angular/compiler/src/util");
    /**
     * An internal module of the Angular compiler that begins with component types,
     * extracts templates, and eventually produces a compiled version of the component
     * ready for linking into an application.
     *
     * @security  When compiling templates at runtime, you must ensure that the entire template comes
     * from a trusted source. Attacker-controlled data introduced by a template could expose your
     * application to XSS risks.  For more detail, see the [Security Guide](http://g.co/ng/security).
     */
    var JitCompiler = /** @class */ (function () {
        function JitCompiler(_metadataResolver, _templateParser, _styleCompiler, _viewCompiler, _ngModuleCompiler, _summaryResolver, _reflector, _jitEvaluator, _compilerConfig, _console, getExtraNgModuleProviders) {
            this._metadataResolver = _metadataResolver;
            this._templateParser = _templateParser;
            this._styleCompiler = _styleCompiler;
            this._viewCompiler = _viewCompiler;
            this._ngModuleCompiler = _ngModuleCompiler;
            this._summaryResolver = _summaryResolver;
            this._reflector = _reflector;
            this._jitEvaluator = _jitEvaluator;
            this._compilerConfig = _compilerConfig;
            this._console = _console;
            this.getExtraNgModuleProviders = getExtraNgModuleProviders;
            this._compiledTemplateCache = new Map();
            this._compiledHostTemplateCache = new Map();
            this._compiledDirectiveWrapperCache = new Map();
            this._compiledNgModuleCache = new Map();
            this._sharedStylesheetCount = 0;
            this._addedAotSummaries = new Set();
        }
        JitCompiler.prototype.compileModuleSync = function (moduleType) {
            return util_1.SyncAsync.assertSync(this._compileModuleAndComponents(moduleType, true));
        };
        JitCompiler.prototype.compileModuleAsync = function (moduleType) {
            return Promise.resolve(this._compileModuleAndComponents(moduleType, false));
        };
        JitCompiler.prototype.compileModuleAndAllComponentsSync = function (moduleType) {
            return util_1.SyncAsync.assertSync(this._compileModuleAndAllComponents(moduleType, true));
        };
        JitCompiler.prototype.compileModuleAndAllComponentsAsync = function (moduleType) {
            return Promise.resolve(this._compileModuleAndAllComponents(moduleType, false));
        };
        JitCompiler.prototype.getComponentFactory = function (component) {
            var summary = this._metadataResolver.getDirectiveSummary(component);
            return summary.componentFactory;
        };
        JitCompiler.prototype.loadAotSummaries = function (summaries) {
            this.clearCache();
            this._addAotSummaries(summaries);
        };
        JitCompiler.prototype._addAotSummaries = function (fn) {
            if (this._addedAotSummaries.has(fn)) {
                return;
            }
            this._addedAotSummaries.add(fn);
            var summaries = fn();
            for (var i = 0; i < summaries.length; i++) {
                var entry = summaries[i];
                if (typeof entry === 'function') {
                    this._addAotSummaries(entry);
                }
                else {
                    var summary = entry;
                    this._summaryResolver.addSummary({ symbol: summary.type.reference, metadata: null, type: summary });
                }
            }
        };
        JitCompiler.prototype.hasAotSummary = function (ref) {
            return !!this._summaryResolver.resolveSummary(ref);
        };
        JitCompiler.prototype._filterJitIdentifiers = function (ids) {
            var _this = this;
            return ids.map(function (mod) { return mod.reference; }).filter(function (ref) { return !_this.hasAotSummary(ref); });
        };
        JitCompiler.prototype._compileModuleAndComponents = function (moduleType, isSync) {
            var _this = this;
            return util_1.SyncAsync.then(this._loadModules(moduleType, isSync), function () {
                _this._compileComponents(moduleType, null);
                return _this._compileModule(moduleType);
            });
        };
        JitCompiler.prototype._compileModuleAndAllComponents = function (moduleType, isSync) {
            var _this = this;
            return util_1.SyncAsync.then(this._loadModules(moduleType, isSync), function () {
                var componentFactories = [];
                _this._compileComponents(moduleType, componentFactories);
                return {
                    ngModuleFactory: _this._compileModule(moduleType),
                    componentFactories: componentFactories
                };
            });
        };
        JitCompiler.prototype._loadModules = function (mainModule, isSync) {
            var _this = this;
            var loading = [];
            var mainNgModule = this._metadataResolver.getNgModuleMetadata(mainModule);
            // Note: for runtime compilation, we want to transitively compile all modules,
            // so we also need to load the declared directives / pipes for all nested modules.
            this._filterJitIdentifiers(mainNgModule.transitiveModule.modules).forEach(function (nestedNgModule) {
                // getNgModuleMetadata only returns null if the value passed in is not an NgModule
                var moduleMeta = _this._metadataResolver.getNgModuleMetadata(nestedNgModule);
                _this._filterJitIdentifiers(moduleMeta.declaredDirectives).forEach(function (ref) {
                    var promise = _this._metadataResolver.loadDirectiveMetadata(moduleMeta.type.reference, ref, isSync);
                    if (promise) {
                        loading.push(promise);
                    }
                });
                _this._filterJitIdentifiers(moduleMeta.declaredPipes)
                    .forEach(function (ref) { return _this._metadataResolver.getOrLoadPipeMetadata(ref); });
            });
            return util_1.SyncAsync.all(loading);
        };
        JitCompiler.prototype._compileModule = function (moduleType) {
            var ngModuleFactory = this._compiledNgModuleCache.get(moduleType);
            if (!ngModuleFactory) {
                var moduleMeta = this._metadataResolver.getNgModuleMetadata(moduleType);
                // Always provide a bound Compiler
                var extraProviders = this.getExtraNgModuleProviders(moduleMeta.type.reference);
                var outputCtx = createOutputContext();
                var compileResult = this._ngModuleCompiler.compile(outputCtx, moduleMeta, extraProviders);
                ngModuleFactory = this._interpretOrJit(compile_metadata_1.ngModuleJitUrl(moduleMeta), outputCtx.statements)[compileResult.ngModuleFactoryVar];
                this._compiledNgModuleCache.set(moduleMeta.type.reference, ngModuleFactory);
            }
            return ngModuleFactory;
        };
        /**
         * @internal
         */
        JitCompiler.prototype._compileComponents = function (mainModule, allComponentFactories) {
            var _this = this;
            var ngModule = this._metadataResolver.getNgModuleMetadata(mainModule);
            var moduleByJitDirective = new Map();
            var templates = new Set();
            var transJitModules = this._filterJitIdentifiers(ngModule.transitiveModule.modules);
            transJitModules.forEach(function (localMod) {
                var localModuleMeta = _this._metadataResolver.getNgModuleMetadata(localMod);
                _this._filterJitIdentifiers(localModuleMeta.declaredDirectives).forEach(function (dirRef) {
                    moduleByJitDirective.set(dirRef, localModuleMeta);
                    var dirMeta = _this._metadataResolver.getDirectiveMetadata(dirRef);
                    if (dirMeta.isComponent) {
                        templates.add(_this._createCompiledTemplate(dirMeta, localModuleMeta));
                        if (allComponentFactories) {
                            var template = _this._createCompiledHostTemplate(dirMeta.type.reference, localModuleMeta);
                            templates.add(template);
                            allComponentFactories.push(dirMeta.componentFactory);
                        }
                    }
                });
            });
            transJitModules.forEach(function (localMod) {
                var localModuleMeta = _this._metadataResolver.getNgModuleMetadata(localMod);
                _this._filterJitIdentifiers(localModuleMeta.declaredDirectives).forEach(function (dirRef) {
                    var dirMeta = _this._metadataResolver.getDirectiveMetadata(dirRef);
                    if (dirMeta.isComponent) {
                        dirMeta.entryComponents.forEach(function (entryComponentType) {
                            var moduleMeta = moduleByJitDirective.get(entryComponentType.componentType);
                            templates.add(_this._createCompiledHostTemplate(entryComponentType.componentType, moduleMeta));
                        });
                    }
                });
                localModuleMeta.entryComponents.forEach(function (entryComponentType) {
                    if (!_this.hasAotSummary(entryComponentType.componentType)) {
                        var moduleMeta = moduleByJitDirective.get(entryComponentType.componentType);
                        templates.add(_this._createCompiledHostTemplate(entryComponentType.componentType, moduleMeta));
                    }
                });
            });
            templates.forEach(function (template) { return _this._compileTemplate(template); });
        };
        JitCompiler.prototype.clearCacheFor = function (type) {
            this._compiledNgModuleCache.delete(type);
            this._metadataResolver.clearCacheFor(type);
            this._compiledHostTemplateCache.delete(type);
            var compiledTemplate = this._compiledTemplateCache.get(type);
            if (compiledTemplate) {
                this._compiledTemplateCache.delete(type);
            }
        };
        JitCompiler.prototype.clearCache = function () {
            // Note: don't clear the _addedAotSummaries, as they don't change!
            this._metadataResolver.clearCache();
            this._compiledTemplateCache.clear();
            this._compiledHostTemplateCache.clear();
            this._compiledNgModuleCache.clear();
        };
        JitCompiler.prototype._createCompiledHostTemplate = function (compType, ngModule) {
            if (!ngModule) {
                throw new Error("Component " + util_1.stringify(compType) + " is not part of any NgModule or the module has not been imported into your module.");
            }
            var compiledTemplate = this._compiledHostTemplateCache.get(compType);
            if (!compiledTemplate) {
                var compMeta = this._metadataResolver.getDirectiveMetadata(compType);
                assertComponent(compMeta);
                var hostMeta = this._metadataResolver.getHostComponentMetadata(compMeta, compMeta.componentFactory.viewDefFactory);
                compiledTemplate =
                    new CompiledTemplate(true, compMeta.type, hostMeta, ngModule, [compMeta.type]);
                this._compiledHostTemplateCache.set(compType, compiledTemplate);
            }
            return compiledTemplate;
        };
        JitCompiler.prototype._createCompiledTemplate = function (compMeta, ngModule) {
            var compiledTemplate = this._compiledTemplateCache.get(compMeta.type.reference);
            if (!compiledTemplate) {
                assertComponent(compMeta);
                compiledTemplate = new CompiledTemplate(false, compMeta.type, compMeta, ngModule, ngModule.transitiveModule.directives);
                this._compiledTemplateCache.set(compMeta.type.reference, compiledTemplate);
            }
            return compiledTemplate;
        };
        JitCompiler.prototype._compileTemplate = function (template) {
            var _this = this;
            if (template.isCompiled) {
                return;
            }
            var compMeta = template.compMeta;
            var externalStylesheetsByModuleUrl = new Map();
            var outputContext = createOutputContext();
            var componentStylesheet = this._styleCompiler.compileComponent(outputContext, compMeta);
            compMeta.template.externalStylesheets.forEach(function (stylesheetMeta) {
                var compiledStylesheet = _this._styleCompiler.compileStyles(createOutputContext(), compMeta, stylesheetMeta);
                externalStylesheetsByModuleUrl.set(stylesheetMeta.moduleUrl, compiledStylesheet);
            });
            this._resolveStylesCompileResult(componentStylesheet, externalStylesheetsByModuleUrl);
            var pipes = template.ngModule.transitiveModule.pipes.map(function (pipe) { return _this._metadataResolver.getPipeSummary(pipe.reference); });
            var _a = this._parseTemplate(compMeta, template.ngModule, template.directives), parsedTemplate = _a.template, usedPipes = _a.pipes;
            var compileResult = this._viewCompiler.compileComponent(outputContext, compMeta, parsedTemplate, ir.variable(componentStylesheet.stylesVar), usedPipes);
            var evalResult = this._interpretOrJit(compile_metadata_1.templateJitUrl(template.ngModule.type, template.compMeta), outputContext.statements);
            var viewClass = evalResult[compileResult.viewClassVar];
            var rendererType = evalResult[compileResult.rendererTypeVar];
            template.compiled(viewClass, rendererType);
        };
        JitCompiler.prototype._parseTemplate = function (compMeta, ngModule, directiveIdentifiers) {
            var _this = this;
            // Note: ! is ok here as components always have a template.
            var preserveWhitespaces = compMeta.template.preserveWhitespaces;
            var directives = directiveIdentifiers.map(function (dir) { return _this._metadataResolver.getDirectiveSummary(dir.reference); });
            var pipes = ngModule.transitiveModule.pipes.map(function (pipe) { return _this._metadataResolver.getPipeSummary(pipe.reference); });
            return this._templateParser.parse(compMeta, compMeta.template.htmlAst, directives, pipes, ngModule.schemas, compile_metadata_1.templateSourceUrl(ngModule.type, compMeta, compMeta.template), preserveWhitespaces);
        };
        JitCompiler.prototype._resolveStylesCompileResult = function (result, externalStylesheetsByModuleUrl) {
            var _this = this;
            result.dependencies.forEach(function (dep, i) {
                var nestedCompileResult = externalStylesheetsByModuleUrl.get(dep.moduleUrl);
                var nestedStylesArr = _this._resolveAndEvalStylesCompileResult(nestedCompileResult, externalStylesheetsByModuleUrl);
                dep.setValue(nestedStylesArr);
            });
        };
        JitCompiler.prototype._resolveAndEvalStylesCompileResult = function (result, externalStylesheetsByModuleUrl) {
            this._resolveStylesCompileResult(result, externalStylesheetsByModuleUrl);
            return this._interpretOrJit(compile_metadata_1.sharedStylesheetJitUrl(result.meta, this._sharedStylesheetCount++), result.outputCtx.statements)[result.stylesVar];
        };
        JitCompiler.prototype._interpretOrJit = function (sourceUrl, statements) {
            if (!this._compilerConfig.useJit) {
                return output_interpreter_1.interpretStatements(statements, this._reflector);
            }
            else {
                return this._jitEvaluator.evaluateStatements(sourceUrl, statements, this._reflector, this._compilerConfig.jitDevMode);
            }
        };
        return JitCompiler;
    }());
    exports.JitCompiler = JitCompiler;
    var CompiledTemplate = /** @class */ (function () {
        function CompiledTemplate(isHost, compType, compMeta, ngModule, directives) {
            this.isHost = isHost;
            this.compType = compType;
            this.compMeta = compMeta;
            this.ngModule = ngModule;
            this.directives = directives;
            this._viewClass = null;
            this.isCompiled = false;
        }
        CompiledTemplate.prototype.compiled = function (viewClass, rendererType) {
            this._viewClass = viewClass;
            this.compMeta.componentViewType.setDelegate(viewClass);
            for (var prop in rendererType) {
                this.compMeta.rendererType[prop] = rendererType[prop];
            }
            this.isCompiled = true;
        };
        return CompiledTemplate;
    }());
    function assertComponent(meta) {
        if (!meta.isComponent) {
            throw new Error("Could not compile '" + compile_metadata_1.identifierName(meta.type) + "' because it is not a component.");
        }
    }
    function createOutputContext() {
        var importExpr = function (symbol) {
            return ir.importExpr({ name: compile_metadata_1.identifierName(symbol), moduleName: null, runtime: symbol });
        };
        return { statements: [], genFilePath: '', importExpr: importExpr, constantPool: new constant_pool_1.ConstantPool() };
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29tcGlsZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci9zcmMvaml0L2NvbXBpbGVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQUVILDJFQUFrVTtJQUdsVSxxRUFBOEM7SUFJOUMsNERBQTJDO0lBQzNDLHNGQUFpRTtJQU1qRSxtREFBcUU7SUFRckU7Ozs7Ozs7O09BUUc7SUFDSDtRQVFFLHFCQUNZLGlCQUEwQyxFQUFVLGVBQStCLEVBQ25GLGNBQTZCLEVBQVUsYUFBMkIsRUFDbEUsaUJBQW1DLEVBQVUsZ0JBQXVDLEVBQ3BGLFVBQTRCLEVBQVUsYUFBMkIsRUFDakUsZUFBK0IsRUFBVSxRQUFpQixFQUMxRCx5QkFBdUU7WUFMdkUsc0JBQWlCLEdBQWpCLGlCQUFpQixDQUF5QjtZQUFVLG9CQUFlLEdBQWYsZUFBZSxDQUFnQjtZQUNuRixtQkFBYyxHQUFkLGNBQWMsQ0FBZTtZQUFVLGtCQUFhLEdBQWIsYUFBYSxDQUFjO1lBQ2xFLHNCQUFpQixHQUFqQixpQkFBaUIsQ0FBa0I7WUFBVSxxQkFBZ0IsR0FBaEIsZ0JBQWdCLENBQXVCO1lBQ3BGLGVBQVUsR0FBVixVQUFVLENBQWtCO1lBQVUsa0JBQWEsR0FBYixhQUFhLENBQWM7WUFDakUsb0JBQWUsR0FBZixlQUFlLENBQWdCO1lBQVUsYUFBUSxHQUFSLFFBQVEsQ0FBUztZQUMxRCw4QkFBeUIsR0FBekIseUJBQXlCLENBQThDO1lBYjNFLDJCQUFzQixHQUFHLElBQUksR0FBRyxFQUEwQixDQUFDO1lBQzNELCtCQUEwQixHQUFHLElBQUksR0FBRyxFQUEwQixDQUFDO1lBQy9ELG1DQUE4QixHQUFHLElBQUksR0FBRyxFQUFjLENBQUM7WUFDdkQsMkJBQXNCLEdBQUcsSUFBSSxHQUFHLEVBQWdCLENBQUM7WUFDakQsMkJBQXNCLEdBQUcsQ0FBQyxDQUFDO1lBQzNCLHVC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SSxJQUFJLElBQUksWUFBWSxFQUFFO2dCQUN2QixJQUFJLENBQUMsUUFBUSxDQUFDLFlBQWEsQ0FBQyxJQUFJLENBQUMsR0FBRyxZQUFZLENBQUMsSUFBSSxDQUFDLENBQUM7YUFDOUQ7WUFDRCxJQUFJLENBQUMsVUFBVSxHQUFHLElBQUksQ0FBQztRQUN6QixDQUFDO1FBQ0gsdUJBQUM7SUFBRCxDQUFDLEFBakJELElBaUJDO0lBRUQsU0FBUyxlQUFlLENBQUMsSUFBOEI7UUFDckQsSUFBSSxDQUFDLElBQUksQ0FBQyxXQUFXLEVBQUU7WUFDckIsTUFBTSxJQUFJLEtBQUssQ0FDWCx3QkFBc0IsaUNBQWMsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLHFDQUFrQyxDQUFDLENBQUM7U0FDeEY7SUFDSCxDQUFDO0lBRUQsU0FBUyxtQkFBbUI7UUFDMUIsSUFBTSxVQUFVLEdBQUcsVUFBQyxNQUFXO1lBQzNCLE9BQUEsRUFBRSxDQUFDLFVBQVUsQ0FBQyxFQUFDLElBQUksRUFBRSxpQ0FBYyxDQUFDLE1BQU0sQ0FBQyxFQUFFLFVBQVUsRUFBRSxJQUFJLEVBQUUsT0FBTyxFQUFFLE1BQU0sRUFBQyxDQUFDO1FBQWhGLENBQWdGLENBQUM7UUFDckYsT0FBTyxFQUFDLFVBQVUsRUFBRSxFQUFFLEVBQUUsV0FBVyxFQUFFLEVBQUUsRUFBRSxVQUFVLFlBQUEsRUFBRSxZQUFZLEVBQUUsSUFBSSw0QkFBWSxFQUFFLEVBQUMsQ0FBQztJQUN6RixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Q29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhLCBDb21waWxlSWRlbnRpZmllck1ldGFkYXRhLCBDb21waWxlTmdNb2R1bGVNZXRhZGF0YSwgQ29tcGlsZVBpcGVTdW1tYXJ5LCBDb21waWxlUHJvdmlkZXJNZXRhZGF0YSwgQ29tcGlsZVN0eWxlc2hlZXRNZXRhZGF0YSwgQ29tcGlsZVR5cGVTdW1tYXJ5LCBpZGVudGlmaWVyTmFtZSwgbmdNb2R1bGVKaXRVcmwsIFByb3ZpZGVyTWV0YSwgUHJveHlDbGFzcywgc2hhcmVkU3R5bGVzaGVldEppdFVybCwgdGVtcGxhdGVKaXRVcmwsIHRlbXBsYXRlU291cmNlVXJsfSBmcm9tICcuLi9jb21waWxlX21ldGFkYXRhJztcbmltcG9ydCB7Q29tcGlsZVJlZmxlY3Rvcn0gZnJvbSAnLi4vY29tcGlsZV9yZWZsZWN0b3InO1xuaW1wb3J0IHtDb21waWxlckNvbmZpZ30gZnJvbSAnLi4vY29uZmlnJztcbmltcG9ydCB7Q29uc3RhbnRQb29sfSBmcm9tICcuLi9jb25zdGFudF9wb29sJztcbmltcG9ydCB7VHlwZX0gZnJvbSAnLi4vY29yZSc7XG5pbXBvcnQge0NvbXBpbGVNZXRhZGF0YVJlc29sdmVyfSBmcm9tICcuLi9tZXRhZGF0YV9yZXNvbHZlcic7XG5pbXBvcnQge05nTW9kdWxlQ29tcGlsZXJ9IGZyb20gJy4uL25nX21vZHVsZV9jb21waWxlcic7XG5pbXBvcnQgKiBhcyBpciBmcm9tICcuLi9vdXRwdXQvb3V0cHV0X2FzdCc7XG5pbXBvcnQge2ludGVycHJldFN0YXRlbWVudHN9IGZyb20gJy4uL291dHB1dC9vdXRwdXRfaW50ZXJwcmV0ZXInO1xuaW1wb3J0IHtKaXRFdmFsdWF0b3J9IGZyb20gJy4uL291dHB1dC9vdXRwdXRfaml0JztcbmltcG9ydCB7Q29tcGlsZWRTdHlsZXNoZWV0LCBTdHlsZUNvbXBpbGVyfSBmcm9tICcuLi9zdHlsZV9jb21waWxlcic7XG5pbXBvcnQge1N1bW1hcnlSZXNvbHZlcn0gZnJvbSAnLi4vc3VtbWFyeV9yZXNvbHZlcic7XG5pbXBvcnQge1RlbXBsYXRlQXN0fSBmcm9tICcuLi90ZW1wbGF0ZV9wYXJzZXIvdGVtcGxhdGVfYXN0JztcbmltcG9ydCB7VGVtcGxhdGVQYXJzZXJ9IGZyb20gJy4uL3RlbXBsYXRlX3BhcnNlci90ZW1wbGF0ZV9wYXJzZXInO1xuaW1wb3J0IHtDb25zb2xlLCBPdXRwdXRDb250ZXh0LCBzdHJpbmdpZnksIFN5bmNBc3luY30gZnJvbSAnLi4vdXRpbCc7XG5pbXBvcnQge1ZpZXdDb21waWxlcn0gZnJvbSAnLi4vdmlld19jb21waWxlci92aWV3X2NvbXBpbGVyJztcblxuZXhwb3J0IGludGVyZmFjZSBNb2R1bGVXaXRoQ29tcG9uZW50RmFjdG9yaWVzIHtcbiAgbmdNb2R1bGVGYWN0b3J5OiBvYmplY3Q7XG4gIGNvbXBvbmVudEZhY3Rvcmllczogb2JqZWN0W107XG59XG5cbi8qKlxuICogQW4gaW50ZXJuYWwgbW9kdWxlIG9mIHRoZSBBbmd1bGFyIGNvbXBpbGVyIHRoYXQgYmVnaW5zIHdpdGggY29tcG9uZW50IHR5cGVzLFxuICogZXh0cmFjdHMgdGVtcGxhdGVzLCBhbmQgZXZlbnR1YWxseSBwcm9kdWNlcyBhIGNvbXBpbGVkIHZlcnNpb24gb2YgdGhlIGNvbXBvbmVudFxuICogcmVhZHkgZm9yIGxpbmtpbmcgaW50byBhbiBhcHBsaWNhdGlvbi5cbiAqXG4gKiBAc2VjdXJpdHkgIFdoZW4gY29tcGlsaW5nIHRlbXBsYXRlcyBhdCBydW50aW1lLCB5b3UgbXVzdCBlbnN1cmUgdGhhdCB0aGUgZW50aXJlIHRlbXBsYXRlIGNvbWVzXG4gKiBmcm9tIGEgdHJ1c3RlZCBzb3VyY2UuIEF0dGFja2VyLWNvbnRyb2xsZWQgZGF0YSBpbnRyb2R1Y2VkIGJ5IGEgdGVtcGxhdGUgY291bGQgZXhwb3NlIHlvdXJcbiAqIGFwcGxpY2F0aW9uIHRvIFhTUyByaXNrcy4gIEZvciBtb3JlIGRldGFpbCwgc2VlIHRoZSBbU2VjdXJpdHkgR3VpZGVdKGh0dHA6Ly9nLmNvL25nL3NlY3VyaXR5KS5cbiAqL1xuZXhwb3J0IGNsYXNzIEppdENvbXBpbGVyIHtcbiAgcHJpdmF0ZSBfY29tcGlsZWRUZW1wbGF0ZUNhY2hlID0gbmV3IE1hcDxUeXBlLCBDb21waWxlZFRlbXBsYXRlPigpO1xuICBwcml2YXRlIF9jb21waWxlZEhvc3RUZW1wbGF0ZUNhY2hlID0gbmV3IE1hcDxUeXBlLCBDb21waWxlZFRlbXBsYXRlPigpO1xuICBwcml2YXRlIF9jb21waWxlZERpcmVjdGl2ZVdyYXBwZXJDYWNoZSA9IG5ldyBNYXA8VHlwZSwgVHlwZT4oKTtcbiAgcHJpdmF0ZSBfY29tcGlsZWROZ01vZHVsZUNhY2hlID0gbmV3IE1hcDxUeXBlLCBvYmplY3Q+KCk7XG4gIHByaXZhdGUgX3NoYXJlZFN0eWxlc2hlZXRDb3VudCA9IDA7XG4gIHByaXZhdGUgX2FkZGVkQW90U3VtbWFyaWVzID0gbmV3IFNldDwoKSA9PiBhbnlbXT4oKTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgX21ldGFkYXRhUmVzb2x2ZXI6IENvbXBpbGVNZXRhZGF0YVJlc29sdmVyLCBwcml2YXRlIF90ZW1wbGF0ZVBhcnNlcjogVGVtcGxhdGVQYXJzZXIsXG4gICAgICBwcml2YXRlIF9zdHlsZUNvbXBpbGVyOiBTdHlsZUNvbXBpbGVyLCBwcml2YXRlIF92aWV3Q29tcGlsZXI6IFZpZXdDb21waWxlcixcbiAgICAgIHByaXZhdGUgX25nTW9kdWxlQ29tcGlsZXI6IE5nTW9kdWxlQ29tcGlsZXIsIHByaXZhdGUgX3N1bW1hcnlSZXNvbHZlcjogU3VtbWFyeVJlc29sdmVyPFR5cGU+LFxuICAgICAgcHJpdmF0ZSBfcmVmbGVjdG9yOiBDb21waWxlUmVmbGVjdG9yLCBwcml2YXRlIF9qaXRFdmFsdWF0b3I6IEppdEV2YWx1YXRvcixcbiAgICAgIHByaXZhdGUgX2NvbXBpbGVyQ29uZmlnOiBDb21waWxlckNvbmZpZywgcHJpdmF0ZSBfY29uc29sZTogQ29uc29sZSxcbiAgICAgIHByaXZhdGUgZ2V0RXh0cmFOZ01vZHVsZVByb3ZpZGVyczogKG5nTW9kdWxlOiBhbnkpID0+IENvbXBpbGVQcm92aWRlck1ldGFkYXRhW10pIHt9XG5cbiAgY29tcGlsZU1vZHVsZVN5bmMobW9kdWxlVHlwZTogVHlwZSk6IG9iamVjdCB7XG4gICAgcmV0dXJuIFN5bmNBc3luYy5hc3NlcnRTeW5jKHRoaXMuX2NvbXBpbGVNb2R1bGVBbmRDb21wb25lbnRzKG1vZHVsZVR5cGUsIHRydWUpKTtcbiAgfVxuXG4gIGNvbXBpbGVNb2R1bGVBc3luYyhtb2R1bGVUeXBlOiBUeXBlKTogUHJvbWlzZTxvYmplY3Q+IHtcbiAgICByZXR1cm4gUHJvbWlzZS5yZXNvbHZlKHRoaXMuX2NvbXBpbGVNb2R1bGVBbmRDb21wb25lbnRzKG1vZHVsZVR5cGUsIGZhbHNlKSk7XG4gIH1cblxuICBjb21waWxlTW9kdWxlQW5kQWxsQ29tcG9uZW50c1N5bmMobW9kdWxlVHlwZTogVHlwZSk6IE1vZHVsZVdpdGhDb21wb25lbnRGYWN0b3JpZXMge1xuICAgIHJldHVybiBTeW5jQXN5bmMuYXNzZXJ0U3luYyh0aGlzLl9jb21waWxlTW9kdWxlQW5kQWxsQ29tcG9uZW50cyhtb2R1bGVUeXBlLCB0cnVlKSk7XG4gIH1cblxuICBjb21waWxlTW9kdWxlQW5kQWxsQ29tcG9uZW50c0FzeW5jKG1vZHVsZVR5cGU6IFR5cGUpOiBQcm9taXNlPE1vZHVsZVdpdGhDb21wb25lbnRGYWN0b3JpZXM+IHtcbiAgICByZXR1cm4gUHJvbWlzZS5yZXNvbHZlKHRoaXMuX2NvbXBpbGVNb2R1bGVBbmRBbGxDb21wb25lbnRzKG1vZHVsZVR5cGUsIGZhbHNlKSk7XG4gIH1cblxuICBnZXRDb21wb25lbnRGYWN0b3J5KGNvbXBvbmVudDogVHlwZSk6IG9iamVjdCB7XG4gICAgY29uc3Qgc3VtbWFyeSA9IHRoaXMuX21ldGFkYXRhUmVzb2x2ZXIuZ2V0RGlyZWN0aXZlU3VtbWFyeShjb21wb25lbnQpO1xuICAgIHJldHVybiBzdW1tYXJ5LmNvbXBvbmVudEZhY3RvcnkgYXMgb2JqZWN0O1xuICB9XG5cbiAgbG9hZEFvdFN1bW1hcmllcyhzdW1tYXJpZXM6ICgpID0+IGFueVtdKSB7XG4gICAgdGhpcy5jbGVhckNhY2hlKCk7XG4gICAgdGhpcy5fYWRkQW90U3VtbWFyaWVzKHN1bW1hcmllcyk7XG4gIH1cblxuICBwcml2YXRlIF9hZGRBb3RTdW1tYXJpZXMoZm46ICgpID0+IGFueVtdKSB7XG4gICAgaWYgKHRoaXMuX2FkZGVkQW90U3VtbWFyaWVzLmhhcyhmbikpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgdGhpcy5fYWRkZWRBb3RTdW1tYXJpZXMuYWRkKGZuKTtcbiAgICBjb25zdCBzdW1tYXJpZXMgPSBmbigpO1xuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgc3VtbWFyaWVzLmxlbmd0aDsgaSsrKSB7XG4gICAgICBjb25zdCBlbnRyeSA9IHN1bW1hcmllc1tpXTtcbiAgICAgIGlmICh0eXBlb2YgZW50cnkgPT09ICdmdW5jdGlvbicpIHtcbiAgICAgICAgdGhpcy5fYWRkQW90U3VtbWFyaWVzKGVudHJ5KTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIGNvbnN0IHN1bW1hcnkgPSBlbnRyeSBhcyBDb21waWxlVHlwZVN1bW1hcnk7XG4gICAgICAgIHRoaXMuX3N1bW1hcnlSZXNvbHZlci5hZGRTdW1tYXJ5KFxuICAgICAgICAgICAge3N5bWJvbDogc3VtbWFyeS50eXBlLnJlZmVyZW5jZSwgbWV0YWRhdGE6IG51bGwsIHR5cGU6IHN1bW1hcnl9KTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICBoYXNBb3RTdW1tYXJ5KHJlZjogVHlwZSkge1xuICAgIHJldHVybiAhIXRoaXMuX3N1bW1hcnlSZXNvbHZlci5yZXNvbHZlU3VtbWFyeShyZWYpO1xuICB9XG5cbiAgcHJpdmF0ZSBfZmlsdGVySml0SWRlbnRpZmllcnMoaWRzOiBDb21waWxlSWRlbnRpZmllck1ldGFkYXRhW10pOiBhbnlbXSB7XG4gICAgcmV0dXJuIGlkcy5tYXAobW9kID0+IG1vZC5yZWZlcmVuY2UpLmZpbHRlcigocmVmKSA9PiAhdGhpcy5oYXNBb3RTdW1tYXJ5KHJlZikpO1xuICB9XG5cbiAgcHJpdmF0ZSBfY29tcGlsZU1vZHVsZUFuZENvbXBvbmVudHMobW9kdWxlVHlwZTogVHlwZSwgaXNTeW5jOiBib29sZWFuKTogU3luY0FzeW5jPG9iamVjdD4ge1xuICAgIHJldHVybiBTeW5jQXN5bmMudGhlbih0aGlzLl9sb2FkTW9kdWxlcyhtb2R1bGVUeXBlLCBpc1N5bmMpLCAoKSA9PiB7XG4gICAgICB0aGlzLl9jb21waWxlQ29tcG9uZW50cyhtb2R1bGVUeXBlLCBudWxsKTtcbiAgICAgIHJldHVybiB0aGlzLl9jb21waWxlTW9kdWxlKG1vZHVsZVR5cGUpO1xuICAgIH0pO1xuICB9XG5cbiAgcHJpdmF0ZSBfY29tcGlsZU1vZHVsZUFuZEFsbENvbXBvbmVudHMobW9kdWxlVHlwZTogVHlwZSwgaXNTeW5jOiBib29sZWFuKTpcbiAgICAgIFN5bmNBc3luYzxNb2R1bGVXaXRoQ29tcG9uZW50RmFjdG9yaWVzPiB7XG4gICAgcmV0dXJuIFN5bmNBc3luYy50aGVuKHRoaXMuX2xvYWRNb2R1bGVzKG1vZHVsZVR5cGUsIGlzU3luYyksICgpID0+IHtcbiAgICAgIGNvbnN0IGNvbXBvbmVudEZhY3Rvcmllczogb2JqZWN0W10gPSBbXTtcbiAgICAgIHRoaXMuX2NvbXBpbGVDb21wb25lbnRzKG1vZHVsZVR5cGUsIGNvbXBvbmVudEZhY3Rvcmllcyk7XG4gICAgICByZXR1cm4ge1xuICAgICAgICBuZ01vZHVsZUZhY3Rvcnk6IHRoaXMuX2NvbXBpbGVNb2R1bGUobW9kdWxlVHlwZSksXG4gICAgICAgIGNvbXBvbmVudEZhY3RvcmllczogY29tcG9uZW50RmFjdG9yaWVzXG4gICAgICB9O1xuICAgIH0pO1xuICB9XG5cbiAgcHJpdmF0ZSBfbG9hZE1vZHVsZXMobWFpbk1vZHVsZTogYW55LCBpc1N5bmM6IGJvb2xlYW4pOiBTeW5jQXN5bmM8YW55PiB7XG4gICAgY29uc3QgbG9hZGluZzogUHJvbWlzZTxhbnk+W10gPSBbXTtcbiAgICBjb25zdCBtYWluTmdNb2R1bGUgPSB0aGlzLl9tZXRhZGF0YVJlc29sdmVyLmdldE5nTW9kdWxlTWV0YWRhdGEobWFpbk1vZHVsZSkhO1xuICAgIC8vIE5vdGU6IGZvciBydW50aW1lIGNvbXBpbGF0aW9uLCB3ZSB3YW50IHRvIHRyYW5zaXRpdmVseSBjb21waWxlIGFsbCBtb2R1bGVzLFxuICAgIC8vIHNvIHdlIGFsc28gbmVlZCB0byBsb2FkIHRoZSBkZWNsYXJlZCBkaXJlY3RpdmVzIC8gcGlwZXMgZm9yIGFsbCBuZXN0ZWQgbW9kdWxlcy5cbiAgICB0aGlzLl9maWx0ZXJKaXRJZGVudGlmaWVycyhtYWluTmdNb2R1bGUudHJhbnNpdGl2ZU1vZHVsZS5tb2R1bGVzKS5mb3JFYWNoKChuZXN0ZWROZ01vZHVsZSkgPT4ge1xuICAgICAgLy8gZ2V0TmdNb2R1bGVNZXRhZGF0YSBvbmx5IHJldHVybnMgbnVsbCBpZiB0aGUgdmFsdWUgcGFzc2VkIGluIGlzIG5vdCBhbiBOZ01vZHVsZVxuICAgICAgY29uc3QgbW9kdWxlTWV0YSA9IHRoaXMuX21ldGFkYXRhUmVzb2x2ZXIuZ2V0TmdNb2R1bGVNZXRhZGF0YShuZXN0ZWROZ01vZHVsZSkhO1xuICAgICAgdGhpcy5fZmlsdGVySml0SWRlbnRpZmllcnMobW9kdWxlTWV0YS5kZWNsYXJlZERpcmVjdGl2ZXMpLmZvckVhY2goKHJlZikgPT4ge1xuICAgICAgICBjb25zdCBwcm9taXNlID1cbiAgICAgICAgICAgIHRoaXMuX21ldGFkYXRhUmVzb2x2ZXIubG9hZERpcmVjdGl2ZU1ldGFkYXRhKG1vZHVsZU1ldGEudHlwZS5yZWZlcmVuY2UsIHJlZiwgaXNTeW5jKTtcbiAgICAgICAgaWYgKHByb21pc2UpIHtcbiAgICAgICAgICBsb2FkaW5nLnB1c2gocHJvbWlzZSk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgICAgdGhpcy5fZmlsdGVySml0SWRlbnRpZmllcnMobW9kdWxlTWV0YS5kZWNsYXJlZFBpcGVzKVxuICAgICAgICAgIC5mb3JFYWNoKChyZWYpID0+IHRoaXMuX21ldGFkYXRhUmVzb2x2ZXIuZ2V0T3JMb2FkUGlwZU1ldGFkYXRhKHJlZikpO1xuICAgIH0pO1xuICAgIHJldHVybiBTeW5jQXN5bmMuYWxsKGxvYWRpbmcpO1xuICB9XG5cbiAgcHJpdmF0ZSBfY29tcGlsZU1vZHVsZShtb2R1bGVUeXBlOiBUeXBlKTogb2JqZWN0IHtcbiAgICBsZXQgbmdNb2R1bGVGYWN0b3J5ID0gdGhpcy5fY29tcGlsZWROZ01vZHVsZUNhY2hlLmdldChtb2R1bGVUeXBlKSE7XG4gICAgaWYgKCFuZ01vZHVsZUZhY3RvcnkpIHtcbiAgICAgIGNvbnN0IG1vZHVsZU1ldGEgPSB0aGlzLl9tZXRhZGF0YVJlc29sdmVyLmdldE5nTW9kdWxlTWV0YWRhdGEobW9kdWxlVHlwZSkhO1xuICAgICAgLy8gQWx3YXlzIHByb3ZpZGUgYSBib3VuZCBDb21waWxlclxuICAgICAgY29uc3QgZXh0cmFQcm92aWRlcnMgPSB0aGlzLmdldEV4dHJhTmdNb2R1bGVQcm92aWRlcnMobW9kdWxlTWV0YS50eXBlLnJlZmVyZW5jZSk7XG4gICAgICBjb25zdCBvdXRwdXRDdHggPSBjcmVhdGVPdXRwdXRDb250ZXh0KCk7XG4gICAgICBjb25zdCBjb21waWxlUmVzdWx0ID0gdGhpcy5fbmdNb2R1bGVDb21waWxlci5jb21waWxlKG91dHB1dEN0eCwgbW9kdWxlTWV0YSwgZXh0cmFQcm92aWRlcnMpO1xuICAgICAgbmdNb2R1bGVGYWN0b3J5ID0gdGhpcy5faW50ZXJwcmV0T3JKaXQoXG4gICAgICAgICAgbmdNb2R1bGVKaXRVcmwobW9kdWxlTWV0YSksIG91dHB1dEN0eC5zdGF0ZW1lbnRzKVtjb21waWxlUmVzdWx0Lm5nTW9kdWxlRmFjdG9yeVZhcl07XG4gICAgICB0aGlzLl9jb21waWxlZE5nTW9kdWxlQ2FjaGUuc2V0KG1vZHVsZU1ldGEudHlwZS5yZWZlcmVuY2UsIG5nTW9kdWxlRmFjdG9yeSk7XG4gICAgfVxuICAgIHJldHVybiBuZ01vZHVsZUZhY3Rvcnk7XG4gIH1cblxuICAvKipcbiAgICogQGludGVybmFsXG4gICAqL1xuICBfY29tcGlsZUNvbXBvbmVudHMobWFpbk1vZHVsZTogVHlwZSwgYWxsQ29tcG9uZW50RmFjdG9yaWVzOiBvYmplY3RbXXxudWxsKSB7XG4gICAgY29uc3QgbmdNb2R1bGUgPSB0aGlzLl9tZXRhZGF0YVJlc29sdmVyLmdldE5nTW9kdWxlTWV0YWRhdGEobWFpbk1vZHVsZSkhO1xuICAgIGNvbnN0IG1vZHVsZUJ5Sml0RGlyZWN0aXZlID0gbmV3IE1hcDxhbnksIENvbXBpbGVOZ01vZHVsZU1ldGFkYXRhPigpO1xuICAgIGNvbnN0IHRlbXBsYXRlcyA9IG5ldyBTZXQ8Q29tcGlsZWRUZW1wbGF0ZT4oKTtcblxuICAgIGNvbnN0IHRyYW5zSml0TW9kdWxlcyA9IHRoaXMuX2ZpbHRlckppdElkZW50aWZpZXJzKG5nTW9kdWxlLnRyYW5zaXRpdmVNb2R1bGUubW9kdWxlcyk7XG4gICAgdHJhbnNKaXRNb2R1bGVzLmZvckVhY2goKGxvY2FsTW9kKSA9PiB7XG4gICAgICBjb25zdCBsb2NhbE1vZHVsZU1ldGEgPSB0aGlzLl9tZXRhZGF0YVJlc29sdmVyLmdldE5nTW9kdWxlTWV0YWRhdGEobG9jYWxNb2QpITtcbiAgICAgIHRoaXMuX2ZpbHRlckppdElkZW50aWZpZXJzKGxvY2FsTW9kdWxlTWV0YS5kZWNsYXJlZERpcmVjdGl2ZXMpLmZvckVhY2goKGRpclJlZikgPT4ge1xuICAgICAgICBtb2R1bGVCeUppdERpcmVjdGl2ZS5zZXQoZGlyUmVmLCBsb2NhbE1vZHVsZU1ldGEpO1xuICAgICAgICBjb25zdCBkaXJNZXRhID0gdGhpcy5fbWV0YWRhdGFSZXNvbHZlci5nZXREaXJlY3RpdmVNZXRhZGF0YShkaXJSZWYpO1xuICAgICAgICBpZiAoZGlyTWV0YS5pc0NvbXBvbmVudCkge1xuICAgICAgICAgIHRlbXBsYXRlcy5hZGQodGhpcy5fY3JlYXRlQ29tcGlsZWRUZW1wbGF0ZShkaXJNZXRhLCBsb2NhbE1vZHVsZU1ldGEpKTtcbiAgICAgICAgICBpZiAoYWxsQ29tcG9uZW50RmFjdG9yaWVzKSB7XG4gICAgICAgICAgICBjb25zdCB0ZW1wbGF0ZSA9XG4gICAgICAgICAgICAgICAgdGhpcy5fY3JlYXRlQ29tcGlsZWRIb3N0VGVtcGxhdGUoZGlyTWV0YS50eXBlLnJlZmVyZW5jZSwgbG9jYWxNb2R1bGVNZXRhKTtcbiAgICAgICAgICAgIHRlbXBsYXRlcy5hZGQodGVtcGxhdGUpO1xuICAgICAgICAgICAgYWxsQ29tcG9uZW50RmFjdG9yaWVzLnB1c2goZGlyTWV0YS5jb21wb25lbnRGYWN0b3J5IGFzIG9iamVjdCk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9KTtcbiAgICB9KTtcbiAgICB0cmFuc0ppdE1vZHVsZXMuZm9yRWFjaCgobG9jYWxNb2QpID0+IHtcbiAgICAgIGNvbnN0IGxvY2FsTW9kdWxlTWV0YSA9IHRoaXMuX21ldGFkYXRhUmVzb2x2ZXIuZ2V0TmdNb2R1bGVNZXRhZGF0YShsb2NhbE1vZCkhO1xuICAgICAgdGhpcy5fZmlsdGVySml0SWRlbnRpZmllcnMobG9jYWxNb2R1bGVNZXRhLmRlY2xhcmVkRGlyZWN0aXZlcykuZm9yRWFjaCgoZGlyUmVmKSA9PiB7XG4gICAgICAgIGNvbnN0IGRpck1ldGEgPSB0aGlzLl9tZXRhZGF0YVJlc29sdmVyLmdldERpcmVjdGl2ZU1ldGFkYXRhKGRpclJlZik7XG4gICAgICAgIGlmIChkaXJNZXRhLmlzQ29tcG9uZW50KSB7XG4gICAgICAgICAgZGlyTWV0YS5lbnRyeUNvbXBvbmVudHMuZm9yRWFjaCgoZW50cnlDb21wb25lbnRUeXBlKSA9PiB7XG4gICAgICAgICAgICBjb25zdCBtb2R1bGVNZXRhID0gbW9kdWxlQnlKaXREaXJlY3RpdmUuZ2V0KGVudHJ5Q29tcG9uZW50VHlwZS5jb21wb25lbnRUeXBlKSE7XG4gICAgICAgICAgICB0ZW1wbGF0ZXMuYWRkKFxuICAgICAgICAgICAgICAgIHRoaXMuX2NyZWF0ZUNvbXBpbGVkSG9zdFRlbXBsYXRlKGVudHJ5Q29tcG9uZW50VHlwZS5jb21wb25lbnRUeXBlLCBtb2R1bGVNZXRhKSk7XG4gICAgICAgICAgfSk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgICAgbG9jYWxNb2R1bGVNZXRhLmVudHJ5Q29tcG9uZW50cy5mb3JFYWNoKChlbnRyeUNvbXBvbmVudFR5cGUpID0+IHtcbiAgICAgICAgaWYgKCF0aGlzLmhhc0FvdFN1bW1hcnkoZW50cnlDb21wb25lbnRUeXBlLmNvbXBvbmVudFR5cGUpKSB7XG4gICAgICAgICAgY29uc3QgbW9kdWxlTWV0YSA9IG1vZHVsZUJ5Sml0RGlyZWN0aXZlLmdldChlbnRyeUNvbXBvbmVudFR5cGUuY29tcG9uZW50VHlwZSkhO1xuICAgICAgICAgIHRlbXBsYXRlcy5hZGQoXG4gICAgICAgICAgICAgIHRoaXMuX2NyZWF0ZUNvbXBpbGVkSG9zdFRlbXBsYXRlKGVudHJ5Q29tcG9uZW50VHlwZS5jb21wb25lbnRUeXBlLCBtb2R1bGVNZXRhKSk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgIH0pO1xuICAgIHRlbXBsYXRlcy5mb3JFYWNoKCh0ZW1wbGF0ZSkgPT4gdGhpcy5fY29tcGlsZVRlbXBsYXRlKHRlbXBsYXRlKSk7XG4gIH1cblxuICBjbGVhckNhY2hlRm9yKHR5cGU6IFR5cGUpIHtcbiAgICB0aGlzLl9jb21waWxlZE5nTW9kdWxlQ2FjaGUuZGVsZXRlKHR5cGUpO1xuICAgIHRoaXMuX21ldGFkYXRhUmVzb2x2ZXIuY2xlYXJDYWNoZUZvcih0eXBlKTtcbiAgICB0aGlzLl9jb21waWxlZEhvc3RUZW1wbGF0ZUNhY2hlLmRlbGV0ZSh0eXBlKTtcbiAgICBjb25zdCBjb21waWxlZFRlbXBsYXRlID0gdGhpcy5fY29tcGlsZWRUZW1wbGF0ZUNhY2hlLmdldCh0eXBlKTtcbiAgICBpZiAoY29tcGlsZWRUZW1wbGF0ZSkge1xuICAgICAgdGhpcy5fY29tcGlsZWRUZW1wbGF0ZUNhY2hlLmRlbGV0ZSh0eXBlKTtcbiAgICB9XG4gIH1cblxuICBjbGVhckNhY2hlKCk6IHZvaWQge1xuICAgIC8vIE5vdGU6IGRvbid0IGNsZWFyIHRoZSBfYWRkZWRBb3RTdW1tYXJpZXMsIGFzIHRoZXkgZG9uJ3QgY2hhbmdlIVxuICAgIHRoaXMuX21ldGFkYXRhUmVzb2x2ZXIuY2xlYXJDYWNoZSgpO1xuICAgIHRoaXMuX2NvbXBpbGVkVGVtcGxhdGVDYWNoZS5jbGVhcigpO1xuICAgIHRoaXMuX2NvbXBpbGVkSG9zdFRlbXBsYXRlQ2FjaGUuY2xlYXIoKTtcbiAgICB0aGlzLl9jb21waWxlZE5nTW9kdWxlQ2FjaGUuY2xlYXIoKTtcbiAgfVxuXG4gIHByaXZhdGUgX2NyZWF0ZUNvbXBpbGVkSG9zdFRlbXBsYXRlKGNvbXBUeXBlOiBUeXBlLCBuZ01vZHVsZTogQ29tcGlsZU5nTW9kdWxlTWV0YWRhdGEpOlxuICAgICAgQ29tcGlsZWRUZW1wbGF0ZSB7XG4gICAgaWYgKCFuZ01vZHVsZSkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGBDb21wb25lbnQgJHtcbiAgICAgICAgICBzdHJpbmdpZnkoXG4gICAgICAgICAgICAgIGNvbXBUeXBlKX0gaXMgbm90IHBhcnQgb2YgYW55IE5nTW9kdWxlIG9yIHRoZSBtb2R1bGUgaGFzIG5vdCBiZWVuIGltcG9ydGVkIGludG8geW91ciBtb2R1bGUuYCk7XG4gICAgfVxuICAgIGxldCBjb21waWxlZFRlbXBsYXRlID0gdGhpcy5fY29tcGlsZWRIb3N0VGVtcGxhdGVDYWNoZS5nZXQoY29tcFR5cGUpO1xuICAgIGlmICghY29tcGlsZWRUZW1wbGF0ZSkge1xuICAgICAgY29uc3QgY29tcE1ldGEgPSB0aGlzLl9tZXRhZGF0YVJlc29sdmVyLmdldERpcmVjdGl2ZU1ldGFkYXRhKGNvbXBUeXBlKTtcbiAgICAgIGFzc2VydENvbXBvbmVudChjb21wTWV0YSk7XG5cbiAgICAgIGNvbnN0IGhvc3RNZXRhID0gdGhpcy5fbWV0YWRhdGFSZXNvbHZlci5nZXRIb3N0Q29tcG9uZW50TWV0YWRhdGEoXG4gICAgICAgICAgY29tcE1ldGEsIChjb21wTWV0YS5jb21wb25lbnRGYWN0b3J5IGFzIGFueSkudmlld0RlZkZhY3RvcnkpO1xuICAgICAgY29tcGlsZWRUZW1wbGF0ZSA9XG4gICAgICAgICAgbmV3IENvbXBpbGVkVGVtcGxhdGUodHJ1ZSwgY29tcE1ldGEudHlwZSwgaG9zdE1ldGEsIG5nTW9kdWxlLCBbY29tcE1ldGEudHlwZV0pO1xuICAgICAgdGhpcy5fY29tcGlsZWRIb3N0VGVtcGxhdGVDYWNoZS5zZXQoY29tcFR5cGUsIGNvbXBpbGVkVGVtcGxhdGUpO1xuICAgIH1cbiAgICByZXR1cm4gY29tcGlsZWRUZW1wbGF0ZTtcbiAgfVxuXG4gIHByaXZhdGUgX2NyZWF0ZUNvbXBpbGVkVGVtcGxhdGUoXG4gICAgICBjb21wTWV0YTogQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhLCBuZ01vZHVsZTogQ29tcGlsZU5nTW9kdWxlTWV0YWRhdGEpOiBDb21waWxlZFRlbXBsYXRlIHtcbiAgICBsZXQgY29tcGlsZWRUZW1wbGF0ZSA9IHRoaXMuX2NvbXBpbGVkVGVtcGxhdGVDYWNoZS5nZXQoY29tcE1ldGEudHlwZS5yZWZlcmVuY2UpO1xuICAgIGlmICghY29tcGlsZWRUZW1wbGF0ZSkge1xuICAgICAgYXNzZXJ0Q29tcG9uZW50KGNvbXBNZXRhKTtcbiAgICAgIGNvbXBpbGVkVGVtcGxhdGUgPSBuZXcgQ29tcGlsZWRUZW1wbGF0ZShcbiAgICAgICAgICBmYWxzZSwgY29tcE1ldGEudHlwZSwgY29tcE1ldGEsIG5nTW9kdWxlLCBuZ01vZHVsZS50cmFuc2l0aXZlTW9kdWxlLmRpcmVjdGl2ZXMpO1xuICAgICAgdGhpcy5fY29tcGlsZWRUZW1wbGF0ZUNhY2hlLnNldChjb21wTWV0YS50eXBlLnJlZmVyZW5jZSwgY29tcGlsZWRUZW1wbGF0ZSk7XG4gICAgfVxuICAgIHJldHVybiBjb21waWxlZFRlbXBsYXRlO1xuICB9XG5cbiAgcHJpdmF0ZSBfY29tcGlsZVRlbXBsYXRlKHRlbXBsYXRlOiBDb21waWxlZFRlbXBsYXRlKSB7XG4gICAgaWYgKHRlbXBsYXRlLmlzQ29tcGlsZWQpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgY29uc3QgY29tcE1ldGEgPSB0ZW1wbGF0ZS5jb21wTWV0YTtcbiAgICBjb25zdCBleHRlcm5hbFN0eWxlc2hlZXRzQnlNb2R1bGVVcmwgPSBuZXcgTWFwPHN0cmluZywgQ29tcGlsZWRTdHlsZXNoZWV0PigpO1xuICAgIGNvbnN0IG91dHB1dENvbnRleHQgPSBjcmVhdGVPdXRwdXRDb250ZXh0KCk7XG4gICAgY29uc3QgY29tcG9uZW50U3R5bGVzaGVldCA9IHRoaXMuX3N0eWxlQ29tcGlsZXIuY29tcGlsZUNvbXBvbmVudChvdXRwdXRDb250ZXh0LCBjb21wTWV0YSk7XG4gICAgY29tcE1ldGEudGVtcGxhdGUgIS5leHRlcm5hbFN0eWxlc2hlZXRzLmZvckVhY2goKHN0eWxlc2hlZXRNZXRhKSA9PiB7XG4gICAgICBjb25zdCBjb21waWxlZFN0eWxlc2hlZXQgPVxuICAgICAgICAgIHRoaXMuX3N0eWxlQ29tcGlsZXIuY29tcGlsZVN0eWxlcyhjcmVhdGVPdXRwdXRDb250ZXh0KCksIGNvbXBNZXRhLCBzdHlsZXNoZWV0TWV0YSk7XG4gICAgICBleHRlcm5hbFN0eWxlc2hlZXRzQnlNb2R1bGVVcmwuc2V0KHN0eWxlc2hlZXRNZXRhLm1vZHVsZVVybCEsIGNvbXBpbGVkU3R5bGVzaGVldCk7XG4gICAgfSk7XG4gICAgdGhpcy5fcmVzb2x2ZVN0eWxlc0NvbXBpbGVSZXN1bHQoY29tcG9uZW50U3R5bGVzaGVldCwgZXh0ZXJuYWxTdHlsZXNoZWV0c0J5TW9kdWxlVXJsKTtcbiAgICBjb25zdCBwaXBlcyA9IHRlbXBsYXRlLm5nTW9kdWxlLnRyYW5zaXRpdmVNb2R1bGUucGlwZXMubWFwKFxuICAgICAgICBwaXBlID0+IHRoaXMuX21ldGFkYXRhUmVzb2x2ZXIuZ2V0UGlwZVN1bW1hcnkocGlwZS5yZWZlcmVuY2UpKTtcbiAgICBjb25zdCB7dGVtcGxhdGU6IHBhcnNlZFRlbXBsYXRlLCBwaXBlczogdXNlZFBpcGVzfSA9XG4gICAgICAgIHRoaXMuX3BhcnNlVGVtcGxhdGUoY29tcE1ldGEsIHRlbXBsYXRlLm5nTW9kdWxlLCB0ZW1wbGF0ZS5kaXJlY3RpdmVzKTtcbiAgICBjb25zdCBjb21waWxlUmVzdWx0ID0gdGhpcy5fdmlld0NvbXBpbGVyLmNvbXBpbGVDb21wb25lbnQoXG4gICAgICAgIG91dHB1dENvbnRleHQsIGNvbXBNZXRhLCBwYXJzZWRUZW1wbGF0ZSwgaXIudmFyaWFibGUoY29tcG9uZW50U3R5bGVzaGVldC5zdHlsZXNWYXIpLFxuICAgICAgICB1c2VkUGlwZXMpO1xuICAgIGNvbnN0IGV2YWxSZXN1bHQgPSB0aGlzLl9pbnRlcnByZXRPckppdChcbiAgICAgICAgdGVtcGxhdGVKaXRVcmwodGVtcGxhdGUubmdNb2R1bGUudHlwZSwgdGVtcGxhdGUuY29tcE1ldGEpLCBvdXRwdXRDb250ZXh0LnN0YXRlbWVudHMpO1xuICAgIGNvbnN0IHZpZXdDbGFzcyA9IGV2YWxSZXN1bHRbY29tcGlsZVJlc3VsdC52aWV3Q2xhc3NWYXJdO1xuICAgIGNvbnN0IHJlbmRlcmVyVHlwZSA9IGV2YWxSZXN1bHRbY29tcGlsZVJlc3VsdC5yZW5kZXJlclR5cGVWYXJdO1xuICAgIHRlbXBsYXRlLmNvbXBpbGVkKHZpZXdDbGFzcywgcmVuZGVyZXJUeXBlKTtcbiAgfVxuXG4gIHByaXZhdGUgX3BhcnNlVGVtcGxhdGUoXG4gICAgICBjb21wTWV0YTogQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhLCBuZ01vZHVsZTogQ29tcGlsZU5nTW9kdWxlTWV0YWRhdGEsXG4gICAgICBkaXJlY3RpdmVJZGVudGlmaWVyczogQ29tcGlsZUlkZW50aWZpZXJNZXRhZGF0YVtdKTpcbiAgICAgIHt0ZW1wbGF0ZTogVGVtcGxhdGVBc3RbXSwgcGlwZXM6IENvbXBpbGVQaXBlU3VtbWFyeVtdfSB7XG4gICAgLy8gTm90ZTogISBpcyBvayBoZXJlIGFzIGNvbXBvbmVudHMgYWx3YXlzIGhhdmUgYSB0ZW1wbGF0ZS5cbiAgICBjb25zdCBwcmVzZXJ2ZVdoaXRlc3BhY2VzID0gY29tcE1ldGEudGVtcGxhdGUgIS5wcmVzZXJ2ZVdoaXRlc3BhY2VzO1xuICAgIGNvbnN0IGRpcmVjdGl2ZXMgPVxuICAgICAgICBkaXJlY3RpdmVJZGVudGlmaWVycy5tYXAoZGlyID0+IHRoaXMuX21ldGFkYXRhUmVzb2x2ZXIuZ2V0RGlyZWN0aXZlU3VtbWFyeShkaXIucmVmZXJlbmNlKSk7XG4gICAgY29uc3QgcGlwZXMgPSBuZ01vZHVsZS50cmFuc2l0aXZlTW9kdWxlLnBpcGVzLm1hcChcbiAgICAgICAgcGlwZSA9PiB0aGlzLl9tZXRhZGF0YVJlc29sdmVyLmdldFBpcGVTdW1tYXJ5KHBpcGUucmVmZXJlbmNlKSk7XG4gICAgcmV0dXJuIHRoaXMuX3RlbXBsYXRlUGFyc2VyLnBhcnNlKFxuICAgICAgICBjb21wTWV0YSwgY29tcE1ldGEudGVtcGxhdGUgIS5odG1sQXN0ISwgZGlyZWN0aXZlcywgcGlwZXMsIG5nTW9kdWxlLnNjaGVtYXMsXG4gICAgICAgIHRlbXBsYXRlU291cmNlVXJsKG5nTW9kdWxlLnR5cGUsIGNvbXBNZXRhLCBjb21wTWV0YS50ZW1wbGF0ZSAhKSwgcHJlc2VydmVXaGl0ZXNwYWNlcyk7XG4gIH1cblxuICBwcml2YXRlIF9yZXNvbHZlU3R5bGVzQ29tcGlsZVJlc3VsdChcbiAgICAgIHJlc3VsdDogQ29tcGlsZWRTdHlsZXNoZWV0LCBleHRlcm5hbFN0eWxlc2hlZXRzQnlNb2R1bGVVcmw6IE1hcDxzdHJpbmcsIENvbXBpbGVkU3R5bGVzaGVldD4pIHtcbiAgICByZXN1bHQuZGVwZW5kZW5jaWVzLmZvckVhY2goKGRlcCwgaSkgPT4ge1xuICAgICAgY29uc3QgbmVzdGVkQ29tcGlsZVJlc3VsdCA9IGV4dGVybmFsU3R5bGVzaGVldHNCeU1vZHVsZVVybC5nZXQoZGVwLm1vZHVsZVVybCkhO1xuICAgICAgY29uc3QgbmVzdGVkU3R5bGVzQXJyID0gdGhpcy5fcmVzb2x2ZUFuZEV2YWxTdHlsZXNDb21waWxlUmVzdWx0KFxuICAgICAgICAgIG5lc3RlZENvbXBpbGVSZXN1bHQsIGV4dGVybmFsU3R5bGVzaGVldHNCeU1vZHVsZVVybCk7XG4gICAgICBkZXAuc2V0VmFsdWUobmVzdGVkU3R5bGVzQXJyKTtcbiAgICB9KTtcbiAgfVxuXG4gIHByaXZhdGUgX3Jlc29sdmVBbmRFdmFsU3R5bGVzQ29tcGlsZVJlc3VsdChcbiAgICAgIHJlc3VsdDogQ29tcGlsZWRTdHlsZXNoZWV0LFxuICAgICAgZXh0ZXJuYWxTdHlsZXNoZWV0c0J5TW9kdWxlVXJsOiBNYXA8c3RyaW5nLCBDb21waWxlZFN0eWxlc2hlZXQ+KTogc3RyaW5nW10ge1xuICAgIHRoaXMuX3Jlc29sdmVTdHlsZXNDb21waWxlUmVzdWx0KHJlc3VsdCwgZXh0ZXJuYWxTdHlsZXNoZWV0c0J5TW9kdWxlVXJsKTtcbiAgICByZXR1cm4gdGhpcy5faW50ZXJwcmV0T3JKaXQoXG4gICAgICAgIHNoYXJlZFN0eWxlc2hlZXRKaXRVcmwocmVzdWx0Lm1ldGEsIHRoaXMuX3NoYXJlZFN0eWxlc2hlZXRDb3VudCsrKSxcbiAgICAgICAgcmVzdWx0Lm91dHB1dEN0eC5zdGF0ZW1lbnRzKVtyZXN1bHQuc3R5bGVzVmFyXTtcbiAgfVxuXG4gIHByaXZhdGUgX2ludGVycHJldE9ySml0KHNvdXJjZVVybDogc3RyaW5nLCBzdGF0ZW1lbnRzOiBpci5TdGF0ZW1lbnRbXSk6IGFueSB7XG4gICAgaWYgKCF0aGlzLl9jb21waWxlckNvbmZpZy51c2VKaXQpIHtcbiAgICAgIHJldHVybiBpbnRlcnByZXRTdGF0ZW1lbnRzKHN0YXRlbWVudHMsIHRoaXMuX3JlZmxlY3Rvcik7XG4gICAgfSBlbHNlIHtcbiAgICAgIHJldHVybiB0aGlzLl9qaXRFdmFsdWF0b3IuZXZhbHVhdGVTdGF0ZW1lbnRzKFxuICAgICAgICAgIHNvdXJjZVVybCwgc3RhdGVtZW50cywgdGhpcy5fcmVmbGVjdG9yLCB0aGlzLl9jb21waWxlckNvbmZpZy5qaXREZXZNb2RlKTtcbiAgICB9XG4gIH1cbn1cblxuY2xhc3MgQ29tcGlsZWRUZW1wbGF0ZSB7XG4gIHByaXZhdGUgX3ZpZXdDbGFzczogRnVuY3Rpb24gPSBudWxsITtcbiAgaXNDb21waWxlZCA9IGZhbHNlO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIGlzSG9zdDogYm9vbGVhbiwgcHVibGljIGNvbXBUeXBlOiBDb21waWxlSWRlbnRpZmllck1ldGFkYXRhLFxuICAgICAgcHVibGljIGNvbXBNZXRhOiBDb21waWxlRGlyZWN0aXZlTWV0YWRhdGEsIHB1YmxpYyBuZ01vZHVsZTogQ29tcGlsZU5nTW9kdWxlTWV0YWRhdGEsXG4gICAgICBwdWJsaWMgZGlyZWN0aXZlczogQ29tcGlsZUlkZW50aWZpZXJNZXRhZGF0YVtdKSB7fVxuXG4gIGNvbXBpbGVkKHZpZXdDbGFzczogRnVuY3Rpb24sIHJlbmRlcmVyVHlwZTogYW55KSB7XG4gICAgdGhpcy5fdmlld0NsYXNzID0gdmlld0NsYXNzO1xuICAgICg8UHJveHlDbGFzcz50aGlzLmNvbXBNZXRhLmNvbXBvbmVudFZpZXdUeXBlKS5zZXREZWxlZ2F0ZSh2aWV3Q2xhc3MpO1xuICAgIGZvciAobGV0IHByb3AgaW4gcmVuZGVyZXJUeXBlKSB7XG4gICAgICAoPGFueT50aGlzLmNvbXBNZXRhLnJlbmRlcmVyVHlwZSlbcHJvcF0gPSByZW5kZXJlclR5cGVbcHJvcF07XG4gICAgfVxuICAgIHRoaXMuaXNDb21waWxlZCA9IHRydWU7XG4gIH1cbn1cblxuZnVuY3Rpb24gYXNzZXJ0Q29tcG9uZW50KG1ldGE6IENvbXBpbGVEaXJlY3RpdmVNZXRhZGF0YSkge1xuICBpZiAoIW1ldGEuaXNDb21wb25lbnQpIHtcbiAgICB0aHJvdyBuZXcgRXJyb3IoXG4gICAgICAgIGBDb3VsZCBub3QgY29tcGlsZSAnJHtpZGVudGlmaWVyTmFtZShtZXRhLnR5cGUpfScgYmVjYXVzZSBpdCBpcyBub3QgYSBjb21wb25lbnQuYCk7XG4gIH1cbn1cblxuZnVuY3Rpb24gY3JlYXRlT3V0cHV0Q29udGV4dCgpOiBPdXRwdXRDb250ZXh0IHtcbiAgY29uc3QgaW1wb3J0RXhwciA9IChzeW1ib2w6IGFueSkgPT5cbiAgICAgIGlyLmltcG9ydEV4cHIoe25hbWU6IGlkZW50aWZpZXJOYW1lKHN5bWJvbCksIG1vZHVsZU5hbWU6IG51bGwsIHJ1bnRpbWU6IHN5bWJvbH0pO1xuICByZXR1cm4ge3N0YXRlbWVudHM6IFtdLCBnZW5GaWxlUGF0aDogJycsIGltcG9ydEV4cHIsIGNvbnN0YW50UG9vbDogbmV3IENvbnN0YW50UG9vbCgpfTtcbn1cbiJdfQ==