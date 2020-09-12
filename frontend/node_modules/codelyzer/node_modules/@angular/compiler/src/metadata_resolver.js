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
        define("@angular/compiler/src/metadata_resolver", ["require", "exports", "tslib", "@angular/compiler/src/aot/static_symbol", "@angular/compiler/src/aot/util", "@angular/compiler/src/assertions", "@angular/compiler/src/compile_metadata", "@angular/compiler/src/core", "@angular/compiler/src/directive_resolver", "@angular/compiler/src/identifiers", "@angular/compiler/src/lifecycle_reflector", "@angular/compiler/src/selector", "@angular/compiler/src/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    var static_symbol_1 = require("@angular/compiler/src/aot/static_symbol");
    var util_1 = require("@angular/compiler/src/aot/util");
    var assertions_1 = require("@angular/compiler/src/assertions");
    var cpl = require("@angular/compiler/src/compile_metadata");
    var core_1 = require("@angular/compiler/src/core");
    var directive_resolver_1 = require("@angular/compiler/src/directive_resolver");
    var identifiers_1 = require("@angular/compiler/src/identifiers");
    var lifecycle_reflector_1 = require("@angular/compiler/src/lifecycle_reflector");
    var selector_1 = require("@angular/compiler/src/selector");
    var util_2 = require("@angular/compiler/src/util");
    exports.ERROR_COMPONENT_TYPE = 'ngComponentType';
    // Design notes:
    // - don't lazily create metadata:
    //   For some metadata, we need to do async work sometimes,
    //   so the user has to kick off this loading.
    //   But we want to report errors even when the async work is
    //   not required to check that the user would have been able
    //   to wait correctly.
    var CompileMetadataResolver = /** @class */ (function () {
        function CompileMetadataResolver(_config, _htmlParser, _ngModuleResolver, _directiveResolver, _pipeResolver, _summaryResolver, _schemaRegistry, _directiveNormalizer, _console, _staticSymbolCache, _reflector, _errorCollector) {
            this._config = _config;
            this._htmlParser = _htmlParser;
            this._ngModuleResolver = _ngModuleResolver;
            this._directiveResolver = _directiveResolver;
            this._pipeResolver = _pipeResolver;
            this._summaryResolver = _summaryResolver;
            this._schemaRegistry = _schemaRegistry;
            this._directiveNormalizer = _directiveNormalizer;
            this._console = _console;
            this._staticSymbolCache = _staticSymbolCache;
            this._reflector = _reflector;
            this._errorCollector = _errorCollector;
            this._nonNormalizedDirectiveCache = new Map();
            this._directiveCache = new Map();
            this._summaryCache = new Map();
            this._pipeCache = new Map();
            this._ngModuleCache = new Map();
            this._ngModuleOfTypes = new Map();
            this._shallowModuleCache = new Map();
        }
        CompileMetadataResolver.prototype.getReflector = function () { return this._reflector; };
        CompileMetadataResolver.prototype.clearCacheFor = function (type) {
            var dirMeta = this._directiveCache.get(type);
            this._directiveCache.delete(type);
            this._nonNormalizedDirectiveCache.delete(type);
            this._summaryCache.delete(type);
            this._pipeCache.delete(type);
            this._ngModuleOfTypes.delete(type);
            // Clear all of the NgModule as they contain transitive information!
            this._ngModuleCache.clear();
            if (dirMeta) {
                this._directiveNormalizer.clearCacheFor(dirMeta);
            }
        };
        CompileMetadataResolver.prototype.clearCache = function () {
            this._directiveCache.clear();
            this._nonNormalizedDirectiveCache.clear();
            this._summaryCache.clear();
            this._pipeCache.clear();
            this._ngModuleCache.clear();
            this._ngModuleOfTypes.clear();
            this._directiveNormalizer.clearCache();
        };
        CompileMetadataResolver.prototype._createProxyClass = function (baseType, name) {
            var delegate = null;
            var proxyClass = function () {
                if (!delegate) {
                    throw new Error("Illegal state: Class " + name + " for type " + util_2.stringify(baseType) + " is not compiled yet!");
                }
                return delegate.apply(this, arguments);
            };
            proxyClass.setDelegate = function (d) {
                delegate = d;
                proxyClass.prototype = d.prototype;
            };
            // Make stringify work correctly
            proxyClass.overriddenName = name;
            return proxyClass;
        };
        CompileMetadataResolver.prototype.getGeneratedClass = function (dirType, name) {
            if (dirType instanceof static_symbol_1.StaticSymbol) {
                return this._staticSymbolCache.get(util_1.ngfactoryFilePath(dirType.filePath), name);
            }
            else {
                return this._createProxyClass(dirType, name);
            }
        };
        CompileMetadataResolver.prototype.getComponentViewClass = function (dirType) {
            return this.getGeneratedClass(dirType, cpl.viewClassName(dirType, 0));
        };
        CompileMetadataResolver.prototype.getHostComponentViewClass = function (dirType) {
            return this.getGeneratedClass(dirType, cpl.hostViewClassName(dirType));
        };
        CompileMetadataResolver.prototype.getHostComponentType = function (dirType) {
            var name = cpl.identifierName({ reference: dirType }) + "_Host";
            if (dirType instanceof static_symbol_1.StaticSymbol) {
                return this._staticSymbolCache.get(dirType.filePath, name);
            }
            return this._createProxyClass(dirType, name);
        };
        CompileMetadataResolver.prototype.getRendererType = function (dirType) {
            if (dirType instanceof static_symbol_1.StaticSymbol) {
                return this._staticSymbolCache.get(util_1.ngfactoryFilePath(dirType.filePath), cpl.rendererTypeName(dirType));
            }
            else {
                // returning an object as proxy,
                // that we fill later during runtime compilation.
                return {};
            }
        };
        CompileMetadataResolver.prototype.getComponentFactory = function (selector, dirType, inputs, outputs) {
            if (dirType instanceof static_symbol_1.StaticSymbol) {
                return this._staticSymbolCache.get(util_1.ngfactoryFilePath(dirType.filePath), cpl.componentFactoryName(dirType));
            }
            else {
                var hostView = this.getHostComponentViewClass(dirType);
                // Note: ngContentSelectors will be filled later once the template is
                // loaded.
                var createComponentFactory = this._reflector.resolveExternalReference(identifiers_1.Identifiers.createComponentFactory);
                return createComponentFactory(selector, dirType, hostView, inputs, outputs, []);
            }
        };
        CompileMetadataResolver.prototype.initComponentFactory = function (factory, ngContentSelectors) {
            var _a;
            if (!(factory instanceof static_symbol_1.StaticSymbol)) {
                (_a = factory.ngContentSelectors).push.apply(_a, tslib_1.__spread(ngContentSelectors));
            }
        };
        CompileMetadataResolver.prototype._loadSummary = function (type, kind) {
            var typeSummary = this._summaryCache.get(type);
            if (!typeSummary) {
                var summary = this._summaryResolver.resolveSummary(type);
                typeSummary = summary ? summary.type : null;
                this._summaryCache.set(type, typeSummary || null);
            }
            return typeSummary && typeSummary.summaryKind === kind ? typeSummary : null;
        };
        CompileMetadataResolver.prototype.getHostComponentMetadata = function (compMeta, hostViewType) {
            var hostType = this.getHostComponentType(compMeta.type.reference);
            if (!hostViewType) {
                hostViewType = this.getHostComponentViewClass(hostType);
            }
            // Note: ! is ok here as this method should only be called with normalized directive
            // metadata, which always fills in the selector.
            var template = selector_1.CssSelector.parse(compMeta.selector)[0].getMatchingElementTemplate();
            var templateUrl = '';
            var htmlAst = this._htmlParser.parse(template, templateUrl);
            return cpl.CompileDirectiveMetadata.create({
                isHost: true,
                type: { reference: hostType, diDeps: [], lifecycleHooks: [] },
                template: new cpl.CompileTemplateMetadata({
                    encapsulation: core_1.ViewEncapsulation.None,
                    template: template,
                    templateUrl: templateUrl,
                    htmlAst: htmlAst,
                    styles: [],
                    styleUrls: [],
                    ngContentSelectors: [],
                    animations: [],
                    isInline: true,
                    externalStylesheets: [],
                    interpolation: null,
                    preserveWhitespaces: false,
                }),
                exportAs: null,
                changeDetection: core_1.ChangeDetectionStrategy.Default,
                inputs: [],
                outputs: [],
                host: {},
                isComponent: true,
                selector: '*',
                providers: [],
                viewProviders: [],
                queries: [],
                guards: {},
                viewQueries: [],
                componentViewType: hostViewType,
                rendererType: { id: '__Host__', encapsulation: core_1.ViewEncapsulation.None, styles: [], data: {} },
                entryComponents: [],
                componentFactory: null
            });
        };
        CompileMetadataResolver.prototype.loadDirectiveMetadata = function (ngModuleType, directiveType, isSync) {
            var _this = this;
            if (this._directiveCache.has(directiveType)) {
                return null;
            }
            directiveType = util_2.resolveForwardRef(directiveType);
            var _a = this.getNonNormalizedDirectiveMetadata(directiveType), annotation = _a.annotation, metadata = _a.metadata;
            var createDirectiveMetadata = function (templateMetadata) {
                var normalizedDirMeta = new cpl.CompileDirectiveMetadata({
                    isHost: false,
                    type: metadata.type,
                    isComponent: metadata.isComponent,
                    selector: metadata.selector,
                    exportAs: metadata.exportAs,
                    changeDetection: metadata.changeDetection,
                    inputs: metadata.inputs,
                    outputs: metadata.outputs,
                    hostListeners: metadata.hostListeners,
                    hostProperties: metadata.hostProperties,
                    hostAttributes: metadata.hostAttributes,
                    providers: metadata.providers,
                    viewProviders: metadata.viewProviders,
                    queries: metadata.queries,
                    guards: metadata.guards,
                    viewQueries: metadata.viewQueries,
                    entryComponents: metadata.entryComponents,
                    componentViewType: metadata.componentViewType,
                    rendererType: metadata.rendererType,
                    componentFactory: metadata.componentFactory,
                    template: templateMetadata
                });
                if (templateMetadata) {
                    _this.initComponentFactory(metadata.componentFactory, templateMetadata.ngContentSelectors);
                }
                _this._directiveCache.set(directiveType, normalizedDirMeta);
                _this._summaryCache.set(directiveType, normalizedDirMeta.toSummary());
                return null;
            };
            if (metadata.isComponent) {
                var template = metadata.template;
                var templateMeta = this._directiveNormalizer.normalizeTemplate({
                    ngModuleType: ngModuleType,
                    componentType: directiveType,
                    moduleUrl: this._reflector.componentModuleUrl(directiveType, annotation),
                    encapsulation: template.encapsulation,
                    template: template.template,
                    templateUrl: template.templateUrl,
                    styles: template.styles,
                    styleUrls: template.styleUrls,
                    animations: template.animations,
                    interpolation: template.interpolation,
                    preserveWhitespaces: template.preserveWhitespaces
                });
                if (util_2.isPromise(templateMeta) && isSync) {
                    this._reportError(componentStillLoadingError(directiveType), directiveType);
                    return null;
                }
                return util_2.SyncAsync.then(templateMeta, createDirectiveMetadata);
            }
            else {
                // directive
                createDirectiveMetadata(null);
                return null;
            }
        };
        CompileMetadataResolver.prototype.getNonNormalizedDirectiveMetadata = function (directiveType) {
            var _this = this;
            directiveType = util_2.resolveForwardRef(directiveType);
            if (!directiveType) {
                return null;
            }
            var cacheEntry = this._nonNormalizedDirectiveCache.get(directiveType);
            if (cacheEntry) {
                return cacheEntry;
            }
            var dirMeta = this._directiveResolver.resolve(directiveType, false);
            if (!dirMeta) {
                return null;
            }
            var nonNormalizedTemplateMetadata = undefined;
            if (core_1.createComponent.isTypeOf(dirMeta)) {
                // component
                var compMeta = dirMeta;
                assertions_1.assertArrayOfStrings('styles', compMeta.styles);
                assertions_1.assertArrayOfStrings('styleUrls', compMeta.styleUrls);
                assertions_1.assertInterpolationSymbols('interpolation', compMeta.interpolation);
                var animations = compMeta.animations;
                nonNormalizedTemplateMetadata = new cpl.CompileTemplateMetadata({
                    encapsulation: util_2.noUndefined(compMeta.encapsulation),
                    template: util_2.noUndefined(compMeta.template),
                    templateUrl: util_2.noUndefined(compMeta.templateUrl),
                    htmlAst: null,
                    styles: compMeta.styles || [],
                    styleUrls: compMeta.styleUrls || [],
                    animations: animations || [],
                    interpolation: util_2.noUndefined(compMeta.interpolation),
                    isInline: !!compMeta.template,
                    externalStylesheets: [],
                    ngContentSelectors: [],
                    preserveWhitespaces: util_2.noUndefined(dirMeta.preserveWhitespaces),
                });
            }
            var changeDetectionStrategy = null;
            var viewProviders = [];
            var entryComponentMetadata = [];
            var selector = dirMeta.selector;
            if (core_1.createComponent.isTypeOf(dirMeta)) {
                // Component
                var compMeta = dirMeta;
                changeDetectionStrategy = compMeta.changeDetection;
                if (compMeta.viewProviders) {
                    viewProviders = this._getProvidersMetadata(compMeta.viewProviders, entryComponentMetadata, "viewProviders for \"" + stringifyType(directiveType) + "\"", [], directiveType);
                }
                if (compMeta.entryComponents) {
                    entryComponentMetadata = flattenAndDedupeArray(compMeta.entryComponents)
                        .map(function (type) { return _this._getEntryComponentMetadata(type); })
                        .concat(entryComponentMetadata);
                }
                if (!selector) {
                    selector = this._schemaRegistry.getDefaultComponentElementName();
                }
            }
            else {
                // Directive
                if (!selector) {
                    selector = null;
                }
            }
            var providers = [];
            if (dirMeta.providers != null) {
                providers = this._getProvidersMetadata(dirMeta.providers, entryComponentMetadata, "providers for \"" + stringifyType(directiveType) + "\"", [], directiveType);
            }
            var queries = [];
            var viewQueries = [];
            if (dirMeta.queries != null) {
                queries = this._getQueriesMetadata(dirMeta.queries, false, directiveType);
                viewQueries = this._getQueriesMetadata(dirMeta.queries, true, directiveType);
            }
            var metadata = cpl.CompileDirectiveMetadata.create({
                isHost: false,
                selector: selector,
                exportAs: util_2.noUndefined(dirMeta.exportAs),
                isComponent: !!nonNormalizedTemplateMetadata,
                type: this._getTypeMetadata(directiveType),
                template: nonNormalizedTemplateMetadata,
                changeDetection: changeDetectionStrategy,
                inputs: dirMeta.inputs || [],
                outputs: dirMeta.outputs || [],
                host: dirMeta.host || {},
                providers: providers || [],
                viewProviders: viewProviders || [],
                queries: queries || [],
                guards: dirMeta.guards || {},
                viewQueries: viewQueries || [],
                entryComponents: entryComponentMetadata,
                componentViewType: nonNormalizedTemplateMetadata ? this.getComponentViewClass(directiveType) :
                    null,
                rendererType: nonNormalizedTemplateMetadata ? this.getRendererType(directiveType) : null,
                componentFactory: null
            });
            if (nonNormalizedTemplateMetadata) {
                metadata.componentFactory =
                    this.getComponentFactory(selector, directiveType, metadata.inputs, metadata.outputs);
            }
            cacheEntry = { metadata: metadata, annotation: dirMeta };
            this._nonNormalizedDirectiveCache.set(directiveType, cacheEntry);
            return cacheEntry;
        };
        /**
         * Gets the metadata for the given directive.
         * This assumes `loadNgModuleDirectiveAndPipeMetadata` has been called first.
         */
        CompileMetadataResolver.prototype.getDirectiveMetadata = function (directiveType) {
            var dirMeta = this._directiveCache.get(directiveType);
            if (!dirMeta) {
                this._reportError(util_2.syntaxError("Illegal state: getDirectiveMetadata can only be called after loadNgModuleDirectiveAndPipeMetadata for a module that declares it. Directive " + stringifyType(directiveType) + "."), directiveType);
            }
            return dirMeta;
        };
        CompileMetadataResolver.prototype.getDirectiveSummary = function (dirType) {
            var dirSummary = this._loadSummary(dirType, cpl.CompileSummaryKind.Directive);
            if (!dirSummary) {
                this._reportError(util_2.syntaxError("Illegal state: Could not load the summary for directive " + stringifyType(dirType) + "."), dirType);
            }
            return dirSummary;
        };
        CompileMetadataResolver.prototype.isDirective = function (type) {
            return !!this._loadSummary(type, cpl.CompileSummaryKind.Directive) ||
                this._directiveResolver.isDirective(type);
        };
        CompileMetadataResolver.prototype.isAbstractDirective = function (type) {
            var summary = this._loadSummary(type, cpl.CompileSummaryKind.Directive);
            if (summary && !summary.isComponent) {
                return !summary.selector;
            }
            var meta = this._directiveResolver.resolve(type, false);
            if (meta && !core_1.createComponent.isTypeOf(meta)) {
                return !meta.selector;
            }
            return false;
        };
        CompileMetadataResolver.prototype.isPipe = function (type) {
            return !!this._loadSummary(type, cpl.CompileSummaryKind.Pipe) ||
                this._pipeResolver.isPipe(type);
        };
        CompileMetadataResolver.prototype.isNgModule = function (type) {
            return !!this._loadSummary(type, cpl.CompileSummaryKind.NgModule) ||
                this._ngModuleResolver.isNgModule(type);
        };
        CompileMetadataResolver.prototype.getNgModuleSummary = function (moduleType, alreadyCollecting) {
            if (alreadyCollecting === void 0) { alreadyCollecting = null; }
            var moduleSummary = this._loadSummary(moduleType, cpl.CompileSummaryKind.NgModule);
            if (!moduleSummary) {
                var moduleMeta = this.getNgModuleMetadata(moduleType, false, alreadyCollecting);
                moduleSummary = moduleMeta ? moduleMeta.toSummary() : null;
                if (moduleSummary) {
                    this._summaryCache.set(moduleType, moduleSummary);
                }
            }
            return moduleSummary;
        };
        /**
         * Loads the declared directives and pipes of an NgModule.
         */
        CompileMetadataResolver.prototype.loadNgModuleDirectiveAndPipeMetadata = function (moduleType, isSync, throwIfNotFound) {
            var _this = this;
            if (throwIfNotFound === void 0) { throwIfNotFound = true; }
            var ngModule = this.getNgModuleMetadata(moduleType, throwIfNotFound);
            var loading = [];
            if (ngModule) {
                ngModule.declaredDirectives.forEach(function (id) {
                    var promise = _this.loadDirectiveMetadata(moduleType, id.reference, isSync);
                    if (promise) {
                        loading.push(promise);
                    }
                });
                ngModule.declaredPipes.forEach(function (id) { return _this._loadPipeMetadata(id.reference); });
            }
            return Promise.all(loading);
        };
        CompileMetadataResolver.prototype.getShallowModuleMetadata = function (moduleType) {
            var compileMeta = this._shallowModuleCache.get(moduleType);
            if (compileMeta) {
                return compileMeta;
            }
            var ngModuleMeta = directive_resolver_1.findLast(this._reflector.shallowAnnotations(moduleType), core_1.createNgModule.isTypeOf);
            compileMeta = {
                type: this._getTypeMetadata(moduleType),
                rawExports: ngModuleMeta.exports,
                rawImports: ngModuleMeta.imports,
                rawProviders: ngModuleMeta.providers,
            };
            this._shallowModuleCache.set(moduleType, compileMeta);
            return compileMeta;
        };
        CompileMetadataResolver.prototype.getNgModuleMetadata = function (moduleType, throwIfNotFound, alreadyCollecting) {
            var _this = this;
            if (throwIfNotFound === void 0) { throwIfNotFound = true; }
            if (alreadyCollecting === void 0) { alreadyCollecting = null; }
            moduleType = util_2.resolveForwardRef(moduleType);
            var compileMeta = this._ngModuleCache.get(moduleType);
            if (compileMeta) {
                return compileMeta;
            }
            var meta = this._ngModuleResolver.resolve(moduleType, throwIfNotFound);
            if (!meta) {
                return null;
            }
            var declaredDirectives = [];
            var exportedNonModuleIdentifiers = [];
            var declaredPipes = [];
            var importedModules = [];
            var exportedModules = [];
            var providers = [];
            var entryComponents = [];
            var bootstrapComponents = [];
            var schemas = [];
            if (meta.imports) {
                flattenAndDedupeArray(meta.imports).forEach(function (importedType) {
                    var importedModuleType = undefined;
                    if (isValidType(importedType)) {
                        importedModuleType = importedType;
                    }
                    else if (importedType && importedType.ngModule) {
                        var moduleWithProviders = importedType;
                        importedModuleType = moduleWithProviders.ngModule;
                        if (moduleWithProviders.providers) {
                            providers.push.apply(providers, tslib_1.__spread(_this._getProvidersMetadata(moduleWithProviders.providers, entryComponents, "provider for the NgModule '" + stringifyType(importedModuleType) + "'", [], importedType)));
                        }
                    }
                    if (importedModuleType) {
                        if (_this._checkSelfImport(moduleType, importedModuleType))
                            return;
                        if (!alreadyCollecting)
                            alreadyCollecting = new Set();
                        if (alreadyCollecting.has(importedModuleType)) {
                            _this._reportError(util_2.syntaxError(_this._getTypeDescriptor(importedModuleType) + " '" + stringifyType(importedType) + "' is imported recursively by the module '" + stringifyType(moduleType) + "'."), moduleType);
                            return;
                        }
                        alreadyCollecting.add(importedModuleType);
                        var importedModuleSummary = _this.getNgModuleSummary(importedModuleType, alreadyCollecting);
                        alreadyCollecting.delete(importedModuleType);
                        if (!importedModuleSummary) {
                            _this._reportError(util_2.syntaxError("Unexpected " + _this._getTypeDescriptor(importedType) + " '" + stringifyType(importedType) + "' imported by the module '" + stringifyType(moduleType) + "'. Please add a @NgModule annotation."), moduleType);
                            return;
                        }
                        importedModules.push(importedModuleSummary);
                    }
                    else {
                        _this._reportError(util_2.syntaxError("Unexpected value '" + stringifyType(importedType) + "' imported by the module '" + stringifyType(moduleType) + "'"), moduleType);
                        return;
                    }
                });
            }
            if (meta.exports) {
                flattenAndDedupeArray(meta.exports).forEach(function (exportedType) {
                    if (!isValidType(exportedType)) {
                        _this._reportError(util_2.syntaxError("Unexpected value '" + stringifyType(exportedType) + "' exported by the module '" + stringifyType(moduleType) + "'"), moduleType);
                        return;
                    }
                    if (!alreadyCollecting)
                        alreadyCollecting = new Set();
                    if (alreadyCollecting.has(exportedType)) {
                        _this._reportError(util_2.syntaxError(_this._getTypeDescriptor(exportedType) + " '" + util_2.stringify(exportedType) + "' is exported recursively by the module '" + stringifyType(moduleType) + "'"), moduleType);
                        return;
                    }
                    alreadyCollecting.add(exportedType);
                    var exportedModuleSummary = _this.getNgModuleSummary(exportedType, alreadyCollecting);
                    alreadyCollecting.delete(exportedType);
                    if (exportedModuleSummary) {
                        exportedModules.push(exportedModuleSummary);
                    }
                    else {
                        exportedNonModuleIdentifiers.push(_this._getIdentifierMetadata(exportedType));
                    }
                });
            }
            // Note: This will be modified later, so we rely on
            // getting a new instance every time!
            var transitiveModule = this._getTransitiveNgModuleMetadata(importedModules, exportedModules);
            if (meta.declarations) {
                flattenAndDedupeArray(meta.declarations).forEach(function (declaredType) {
                    if (!isValidType(declaredType)) {
                        _this._reportError(util_2.syntaxError("Unexpected value '" + stringifyType(declaredType) + "' declared by the module '" + stringifyType(moduleType) + "'"), moduleType);
                        return;
                    }
                    var declaredIdentifier = _this._getIdentifierMetadata(declaredType);
                    if (_this.isDirective(declaredType)) {
                        if (_this.isAbstractDirective(declaredType)) {
                            _this._reportError(util_2.syntaxError("Directive " + stringifyType(declaredType) + " has no selector, please add it!"), declaredType);
                        }
                        transitiveModule.addDirective(declaredIdentifier);
                        declaredDirectives.push(declaredIdentifier);
                        _this._addTypeToModule(declaredType, moduleType);
                    }
                    else if (_this.isPipe(declaredType)) {
                        transitiveModule.addPipe(declaredIdentifier);
                        transitiveModule.pipes.push(declaredIdentifier);
                        declaredPipes.push(declaredIdentifier);
                        _this._addTypeToModule(declaredType, moduleType);
                    }
                    else {
                        _this._reportError(util_2.syntaxError("Unexpected " + _this._getTypeDescriptor(declaredType) + " '" + stringifyType(declaredType) + "' declared by the module '" + stringifyType(moduleType) + "'. Please add a @Pipe/@Directive/@Component annotation."), moduleType);
                        return;
                    }
                });
            }
            var exportedDirectives = [];
            var exportedPipes = [];
            exportedNonModuleIdentifiers.forEach(function (exportedId) {
                if (transitiveModule.directivesSet.has(exportedId.reference)) {
                    exportedDirectives.push(exportedId);
                    transitiveModule.addExportedDirective(exportedId);
                }
                else if (transitiveModule.pipesSet.has(exportedId.reference)) {
                    exportedPipes.push(exportedId);
                    transitiveModule.addExportedPipe(exportedId);
                }
                else {
                    _this._reportError(util_2.syntaxError("Can't export " + _this._getTypeDescriptor(exportedId.reference) + " " + stringifyType(exportedId.reference) + " from " + stringifyType(moduleType) + " as it was neither declared nor imported!"), moduleType);
                    return;
                }
            });
            // The providers of the module have to go last
            // so that they overwrite any other provider we already added.
            if (meta.providers) {
                providers.push.apply(providers, tslib_1.__spread(this._getProvidersMetadata(meta.providers, entryComponents, "provider for the NgModule '" + stringifyType(moduleType) + "'", [], moduleType)));
            }
            if (meta.entryComponents) {
                entryComponents.push.apply(entryComponents, tslib_1.__spread(flattenAndDedupeArray(meta.entryComponents)
                    .map(function (type) { return _this._getEntryComponentMetadata(type); })));
            }
            if (meta.bootstrap) {
                flattenAndDedupeArray(meta.bootstrap).forEach(function (type) {
                    if (!isValidType(type)) {
                        _this._reportError(util_2.syntaxError("Unexpected value '" + stringifyType(type) + "' used in the bootstrap property of module '" + stringifyType(moduleType) + "'"), moduleType);
                        return;
                    }
                    bootstrapComponents.push(_this._getIdentifierMetadata(type));
                });
            }
            entryComponents.push.apply(entryComponents, tslib_1.__spread(bootstrapComponents.map(function (type) { return _this._getEntryComponentMetadata(type.reference); })));
            if (meta.schemas) {
                schemas.push.apply(schemas, tslib_1.__spread(flattenAndDedupeArray(meta.schemas)));
            }
            compileMeta = new cpl.CompileNgModuleMetadata({
                type: this._getTypeMetadata(moduleType),
                providers: providers,
                entryComponents: entryComponents,
                bootstrapComponents: bootstrapComponents,
                schemas: schemas,
                declaredDirectives: declaredDirectives,
                exportedDirectives: exportedDirectives,
                declaredPipes: declaredPipes,
                exportedPipes: exportedPipes,
                importedModules: importedModules,
                exportedModules: exportedModules,
                transitiveModule: transitiveModule,
                id: meta.id || null,
            });
            entryComponents.forEach(function (id) { return transitiveModule.addEntryComponent(id); });
            providers.forEach(function (provider) { return transitiveModule.addProvider(provider, compileMeta.type); });
            transitiveModule.addModule(compileMeta.type);
            this._ngModuleCache.set(moduleType, compileMeta);
            return compileMeta;
        };
        CompileMetadataResolver.prototype._checkSelfImport = function (moduleType, importedModuleType) {
            if (moduleType === importedModuleType) {
                this._reportError(util_2.syntaxError("'" + stringifyType(moduleType) + "' module can't import itself"), moduleType);
                return true;
            }
            return false;
        };
        CompileMetadataResolver.prototype._getTypeDescriptor = function (type) {
            if (isValidType(type)) {
                if (this.isDirective(type)) {
                    return 'directive';
                }
                if (this.isPipe(type)) {
                    return 'pipe';
                }
                if (this.isNgModule(type)) {
                    return 'module';
                }
            }
            if (type.provide) {
                return 'provider';
            }
            return 'value';
        };
        CompileMetadataResolver.prototype._addTypeToModule = function (type, moduleType) {
            var oldModule = this._ngModuleOfTypes.get(type);
            if (oldModule && oldModule !== moduleType) {
                this._reportError(util_2.syntaxError("Type " + stringifyType(type) + " is part of the declarations of 2 modules: " + stringifyType(oldModule) + " and " + stringifyType(moduleType) + "! " +
                    ("Please consider moving " + stringifyType(type) + " to a higher module that imports " + stringifyType(oldModule) + " and " + stringifyType(moduleType) + ". ") +
                    ("You can also create a new NgModule that exports and includes " + stringifyType(type) + " then import that NgModule in " + stringifyType(oldModule) + " and " + stringifyType(moduleType) + ".")), moduleType);
                return;
            }
            this._ngModuleOfTypes.set(type, moduleType);
        };
        CompileMetadataResolver.prototype._getTransitiveNgModuleMetadata = function (importedModules, exportedModules) {
            // collect `providers` / `entryComponents` from all imported and all exported modules
            var result = new cpl.TransitiveCompileNgModuleMetadata();
            var modulesByToken = new Map();
            importedModules.concat(exportedModules).forEach(function (modSummary) {
                modSummary.modules.forEach(function (mod) { return result.addModule(mod); });
                modSummary.entryComponents.forEach(function (comp) { return result.addEntryComponent(comp); });
                var addedTokens = new Set();
                modSummary.providers.forEach(function (entry) {
                    var tokenRef = cpl.tokenReference(entry.provider.token);
                    var prevModules = modulesByToken.get(tokenRef);
                    if (!prevModules) {
                        prevModules = new Set();
                        modulesByToken.set(tokenRef, prevModules);
                    }
                    var moduleRef = entry.module.reference;
                    // Note: the providers of one module may still contain multiple providers
                    // per token (e.g. for multi providers), and we need to preserve these.
                    if (addedTokens.has(tokenRef) || !prevModules.has(moduleRef)) {
                        prevModules.add(moduleRef);
                        addedTokens.add(tokenRef);
                        result.addProvider(entry.provider, entry.module);
                    }
                });
            });
            exportedModules.forEach(function (modSummary) {
                modSummary.exportedDirectives.forEach(function (id) { return result.addExportedDirective(id); });
                modSummary.exportedPipes.forEach(function (id) { return result.addExportedPipe(id); });
            });
            importedModules.forEach(function (modSummary) {
                modSummary.exportedDirectives.forEach(function (id) { return result.addDirective(id); });
                modSummary.exportedPipes.forEach(function (id) { return result.addPipe(id); });
            });
            return result;
        };
        CompileMetadataResolver.prototype._getIdentifierMetadata = function (type) {
            type = util_2.resolveForwardRef(type);
            return { reference: type };
        };
        CompileMetadataResolver.prototype.isInjectable = function (type) {
            var annotations = this._reflector.tryAnnotations(type);
            return annotations.some(function (ann) { return core_1.createInjectable.isTypeOf(ann); });
        };
        CompileMetadataResolver.prototype.getInjectableSummary = function (type) {
            return {
                summaryKind: cpl.CompileSummaryKind.Injectable,
                type: this._getTypeMetadata(type, null, false)
            };
        };
        CompileMetadataResolver.prototype.getInjectableMetadata = function (type, dependencies, throwOnUnknownDeps) {
            if (dependencies === void 0) { dependencies = null; }
            if (throwOnUnknownDeps === void 0) { throwOnUnknownDeps = true; }
            var typeSummary = this._loadSummary(type, cpl.CompileSummaryKind.Injectable);
            var typeMetadata = typeSummary ?
                typeSummary.type :
                this._getTypeMetadata(type, dependencies, throwOnUnknownDeps);
            var annotations = this._reflector.annotations(type).filter(function (ann) { return core_1.createInjectable.isTypeOf(ann); });
            if (annotations.length === 0) {
                return null;
            }
            var meta = annotations[annotations.length - 1];
            return {
                symbol: type,
                type: typeMetadata,
                providedIn: meta.providedIn,
                useValue: meta.useValue,
                useClass: meta.useClass,
                useExisting: meta.useExisting,
                useFactory: meta.useFactory,
                deps: meta.deps,
            };
        };
        CompileMetadataResolver.prototype._getTypeMetadata = function (type, dependencies, throwOnUnknownDeps) {
            if (dependencies === void 0) { dependencies = null; }
            if (throwOnUnknownDeps === void 0) { throwOnUnknownDeps = true; }
            var identifier = this._getIdentifierMetadata(type);
            return {
                reference: identifier.reference,
                diDeps: this._getDependenciesMetadata(identifier.reference, dependencies, throwOnUnknownDeps),
                lifecycleHooks: lifecycle_reflector_1.getAllLifecycleHooks(this._reflector, identifier.reference),
            };
        };
        CompileMetadataResolver.prototype._getFactoryMetadata = function (factory, dependencies) {
            if (dependencies === void 0) { dependencies = null; }
            factory = util_2.resolveForwardRef(factory);
            return { reference: factory, diDeps: this._getDependenciesMetadata(factory, dependencies) };
        };
        /**
         * Gets the metadata for the given pipe.
         * This assumes `loadNgModuleDirectiveAndPipeMetadata` has been called first.
         */
        CompileMetadataResolver.prototype.getPipeMetadata = function (pipeType) {
            var pipeMeta = this._pipeCache.get(pipeType);
            if (!pipeMeta) {
                this._reportError(util_2.syntaxError("Illegal state: getPipeMetadata can only be called after loadNgModuleDirectiveAndPipeMetadata for a module that declares it. Pipe " + stringifyType(pipeType) + "."), pipeType);
            }
            return pipeMeta || null;
        };
        CompileMetadataResolver.prototype.getPipeSummary = function (pipeType) {
            var pipeSummary = this._loadSummary(pipeType, cpl.CompileSummaryKind.Pipe);
            if (!pipeSummary) {
                this._reportError(util_2.syntaxError("Illegal state: Could not load the summary for pipe " + stringifyType(pipeType) + "."), pipeType);
            }
            return pipeSummary;
        };
        CompileMetadataResolver.prototype.getOrLoadPipeMetadata = function (pipeType) {
            var pipeMeta = this._pipeCache.get(pipeType);
            if (!pipeMeta) {
                pipeMeta = this._loadPipeMetadata(pipeType);
            }
            return pipeMeta;
        };
        CompileMetadataResolver.prototype._loadPipeMetadata = function (pipeType) {
            pipeType = util_2.resolveForwardRef(pipeType);
            var pipeAnnotation = this._pipeResolver.resolve(pipeType);
            var pipeMeta = new cpl.CompilePipeMetadata({
                type: this._getTypeMetadata(pipeType),
                name: pipeAnnotation.name,
                pure: !!pipeAnnotation.pure
            });
            this._pipeCache.set(pipeType, pipeMeta);
            this._summaryCache.set(pipeType, pipeMeta.toSummary());
            return pipeMeta;
        };
        CompileMetadataResolver.prototype._getDependenciesMetadata = function (typeOrFunc, dependencies, throwOnUnknownDeps) {
            var _this = this;
            if (throwOnUnknownDeps === void 0) { throwOnUnknownDeps = true; }
            var hasUnknownDeps = false;
            var params = dependencies || this._reflector.parameters(typeOrFunc) || [];
            var dependenciesMetadata = params.map(function (param) {
                var isAttribute = false;
                var isHost = false;
                var isSelf = false;
                var isSkipSelf = false;
                var isOptional = false;
                var token = null;
                if (Array.isArray(param)) {
                    param.forEach(function (paramEntry) {
                        if (core_1.createHost.isTypeOf(paramEntry)) {
                            isHost = true;
                        }
                        else if (core_1.createSelf.isTypeOf(paramEntry)) {
                            isSelf = true;
                        }
                        else if (core_1.createSkipSelf.isTypeOf(paramEntry)) {
                            isSkipSelf = true;
                        }
                        else if (core_1.createOptional.isTypeOf(paramEntry)) {
                            isOptional = true;
                        }
                        else if (core_1.createAttribute.isTypeOf(paramEntry)) {
                            isAttribute = true;
                            token = paramEntry.attributeName;
                        }
                        else if (core_1.createInject.isTypeOf(paramEntry)) {
                            token = paramEntry.token;
                        }
                        else if (core_1.createInjectionToken.isTypeOf(paramEntry) ||
                            paramEntry instanceof static_symbol_1.StaticSymbol) {
                            token = paramEntry;
                        }
                        else if (isValidType(paramEntry) && token == null) {
                            token = paramEntry;
                        }
                    });
                }
                else {
                    token = param;
                }
                if (token == null) {
                    hasUnknownDeps = true;
                    return {};
                }
                return {
                    isAttribute: isAttribute,
                    isHost: isHost,
                    isSelf: isSelf,
                    isSkipSelf: isSkipSelf,
                    isOptional: isOptional,
                    token: _this._getTokenMetadata(token)
                };
            });
            if (hasUnknownDeps) {
                var depsTokens = dependenciesMetadata.map(function (dep) { return dep.token ? stringifyType(dep.token) : '?'; }).join(', ');
                var message = "Can't resolve all parameters for " + stringifyType(typeOrFunc) + ": (" + depsTokens + ").";
                if (throwOnUnknownDeps || this._config.strictInjectionParameters) {
                    this._reportError(util_2.syntaxError(message), typeOrFunc);
                }
                else {
                    this._console.warn("Warning: " + message + " This will become an error in Angular v6.x");
                }
            }
            return dependenciesMetadata;
        };
        CompileMetadataResolver.prototype._getTokenMetadata = function (token) {
            token = util_2.resolveForwardRef(token);
            var compileToken;
            if (typeof token === 'string') {
                compileToken = { value: token };
            }
            else {
                compileToken = { identifier: { reference: token } };
            }
            return compileToken;
        };
        CompileMetadataResolver.prototype._getProvidersMetadata = function (providers, targetEntryComponents, debugInfo, compileProviders, type) {
            var _this = this;
            if (compileProviders === void 0) { compileProviders = []; }
            providers.forEach(function (provider, providerIdx) {
                if (Array.isArray(provider)) {
                    _this._getProvidersMetadata(provider, targetEntryComponents, debugInfo, compileProviders);
                }
                else {
                    provider = util_2.resolveForwardRef(provider);
                    var providerMeta = undefined;
                    if (provider && typeof provider === 'object' && provider.hasOwnProperty('provide')) {
                        _this._validateProvider(provider);
                        providerMeta = new cpl.ProviderMeta(provider.provide, provider);
                    }
                    else if (isValidType(provider)) {
                        providerMeta = new cpl.ProviderMeta(provider, { useClass: provider });
                    }
                    else if (provider === void 0) {
                        _this._reportError(util_2.syntaxError("Encountered undefined provider! Usually this means you have a circular dependencies. This might be caused by using 'barrel' index.ts files."));
                        return;
                    }
                    else {
                        var providersInfo = providers
                            .reduce(function (soFar, seenProvider, seenProviderIdx) {
                            if (seenProviderIdx < providerIdx) {
                                soFar.push("" + stringifyType(seenProvider));
                            }
                            else if (seenProviderIdx == providerIdx) {
                                soFar.push("?" + stringifyType(seenProvider) + "?");
                            }
                            else if (seenProviderIdx == providerIdx + 1) {
                                soFar.push('...');
                            }
                            return soFar;
                        }, [])
                            .join(', ');
                        _this._reportError(util_2.syntaxError("Invalid " + (debugInfo ? debugInfo : 'provider') + " - only instances of Provider and Type are allowed, got: [" + providersInfo + "]"), type);
                        return;
                    }
                    if (providerMeta.token ===
                        _this._reflector.resolveExternalReference(identifiers_1.Identifiers.ANALYZE_FOR_ENTRY_COMPONENTS)) {
                        targetEntryComponents.push.apply(targetEntryComponents, tslib_1.__spread(_this._getEntryComponentsFromProvider(providerMeta, type)));
                    }
                    else {
                        compileProviders.push(_this.getProviderMetadata(providerMeta));
                    }
                }
            });
            return compileProviders;
        };
        CompileMetadataResolver.prototype._validateProvider = function (provider) {
            if (provider.hasOwnProperty('useClass') && provider.useClass == null) {
                this._reportError(util_2.syntaxError("Invalid provider for " + stringifyType(provider.provide) + ". useClass cannot be " + provider.useClass + ".\n           Usually it happens when:\n           1. There's a circular dependency (might be caused by using index.ts (barrel) files).\n           2. Class was used before it was declared. Use forwardRef in this case."));
            }
        };
        CompileMetadataResolver.prototype._getEntryComponentsFromProvider = function (provider, type) {
            var _this = this;
            var components = [];
            var collectedIdentifiers = [];
            if (provider.useFactory || provider.useExisting || provider.useClass) {
                this._reportError(util_2.syntaxError("The ANALYZE_FOR_ENTRY_COMPONENTS token only supports useValue!"), type);
                return [];
            }
            if (!provider.multi) {
                this._reportError(util_2.syntaxError("The ANALYZE_FOR_ENTRY_COMPONENTS token only supports 'multi = true'!"), type);
                return [];
            }
            extractIdentifiers(provider.useValue, collectedIdentifiers);
            collectedIdentifiers.forEach(function (identifier) {
                var entry = _this._getEntryComponentMetadata(identifier.reference, false);
                if (entry) {
                    components.push(entry);
                }
            });
            return components;
        };
        CompileMetadataResolver.prototype._getEntryComponentMetadata = function (dirType, throwIfNotFound) {
            if (throwIfNotFound === void 0) { throwIfNotFound = true; }
            var dirMeta = this.getNonNormalizedDirectiveMetadata(dirType);
            if (dirMeta && dirMeta.metadata.isComponent) {
                return { componentType: dirType, componentFactory: dirMeta.metadata.componentFactory };
            }
            var dirSummary = this._loadSummary(dirType, cpl.CompileSummaryKind.Directive);
            if (dirSummary && dirSummary.isComponent) {
                return { componentType: dirType, componentFactory: dirSummary.componentFactory };
            }
            if (throwIfNotFound) {
                throw util_2.syntaxError(dirType.name + " cannot be used as an entry component.");
            }
            return null;
        };
        CompileMetadataResolver.prototype._getInjectableTypeMetadata = function (type, dependencies) {
            if (dependencies === void 0) { dependencies = null; }
            var typeSummary = this._loadSummary(type, cpl.CompileSummaryKind.Injectable);
            if (typeSummary) {
                return typeSummary.type;
            }
            return this._getTypeMetadata(type, dependencies);
        };
        CompileMetadataResolver.prototype.getProviderMetadata = function (provider) {
            var compileDeps = undefined;
            var compileTypeMetadata = null;
            var compileFactoryMetadata = null;
            var token = this._getTokenMetadata(provider.token);
            if (provider.useClass) {
                compileTypeMetadata =
                    this._getInjectableTypeMetadata(provider.useClass, provider.dependencies);
                compileDeps = compileTypeMetadata.diDeps;
                if (provider.token === provider.useClass) {
                    // use the compileTypeMetadata as it contains information about lifecycleHooks...
                    token = { identifier: compileTypeMetadata };
                }
            }
            else if (provider.useFactory) {
                compileFactoryMetadata = this._getFactoryMetadata(provider.useFactory, provider.dependencies);
                compileDeps = compileFactoryMetadata.diDeps;
            }
            return {
                token: token,
                useClass: compileTypeMetadata,
                useValue: provider.useValue,
                useFactory: compileFactoryMetadata,
                useExisting: provider.useExisting ? this._getTokenMetadata(provider.useExisting) : undefined,
                deps: compileDeps,
                multi: provider.multi
            };
        };
        CompileMetadataResolver.prototype._getQueriesMetadata = function (queries, isViewQuery, directiveType) {
            var _this = this;
            var res = [];
            Object.keys(queries).forEach(function (propertyName) {
                var query = queries[propertyName];
                if (query.isViewQuery === isViewQuery) {
                    res.push(_this._getQueryMetadata(query, propertyName, directiveType));
                }
            });
            return res;
        };
        CompileMetadataResolver.prototype._queryVarBindings = function (selector) { return selector.split(/\s*,\s*/); };
        CompileMetadataResolver.prototype._getQueryMetadata = function (q, propertyName, typeOrFunc) {
            var _this = this;
            var selectors;
            if (typeof q.selector === 'string') {
                selectors =
                    this._queryVarBindings(q.selector).map(function (varName) { return _this._getTokenMetadata(varName); });
            }
            else {
                if (!q.selector) {
                    this._reportError(util_2.syntaxError("Can't construct a query for the property \"" + propertyName + "\" of \"" + stringifyType(typeOrFunc) + "\" since the query selector wasn't defined."), typeOrFunc);
                    selectors = [];
                }
                else {
                    selectors = [this._getTokenMetadata(q.selector)];
                }
            }
            return {
                selectors: selectors,
                first: q.first,
                descendants: q.descendants, propertyName: propertyName,
                read: q.read ? this._getTokenMetadata(q.read) : null,
                static: q.static
            };
        };
        CompileMetadataResolver.prototype._reportError = function (error, type, otherType) {
            if (this._errorCollector) {
                this._errorCollector(error, type);
                if (otherType) {
                    this._errorCollector(error, otherType);
                }
            }
            else {
                throw error;
            }
        };
        return CompileMetadataResolver;
    }());
    exports.CompileMetadataResolver = CompileMetadataResolver;
    function flattenArray(tree, out) {
        if (out === void 0) { out = []; }
        if (tree) {
            for (var i = 0; i < tree.length; i++) {
                var item = util_2.resolveForwardRef(tree[i]);
                if (Array.isArray(item)) {
                    flattenArray(item, out);
                }
                else {
                    out.push(item);
                }
            }
        }
        return out;
    }
    function dedupeArray(array) {
        if (array) {
            return Array.from(new Set(array));
        }
        return [];
    }
    function flattenAndDedupeArray(tree) {
        return dedupeArray(flattenArray(tree));
    }
    function isValidType(value) {
        return (value instanceof static_symbol_1.StaticSymbol) || (value instanceof core_1.Type);
    }
    function extractIdentifiers(value, targetIdentifiers) {
        util_2.visitValue(value, new _CompileValueConverter(), targetIdentifiers);
    }
    var _CompileValueConverter = /** @class */ (function (_super) {
        tslib_1.__extends(_CompileValueConverter, _super);
        function _CompileValueConverter() {
            return _super !== null && _super.apply(this, arguments) || this;
        }
        _CompileValueConverter.prototype.visitOther = function (value, targetIdentifiers) {
            targetIdentifiers.push({ reference: value });
        };
        return _CompileValueConverter;
    }(util_2.ValueTransformer));
    function stringifyType(type) {
        if (type instanceof static_symbol_1.StaticSymbol) {
            return type.name + " in " + type.filePath;
        }
        else {
            return util_2.stringify(type);
        }
    }
    /**
     * Indicates that a component is still being loaded in a synchronous compile.
     */
    function componentStillLoadingError(compType) {
        var error = Error("Can't compile synchronously as " + util_2.stringify(compType) + " is still being loaded!");
        error[exports.ERROR_COMPONENT_TYPE] = compType;
        return error;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWV0YWRhdGFfcmVzb2x2ZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci9zcmMvbWV0YWRhdGFfcmVzb2x2ZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7O0lBRUgseUVBQW9FO0lBQ3BFLHVEQUE2QztJQUM3QywrREFBOEU7SUFDOUUsNERBQTBDO0lBRzFDLG1EQUFnVTtJQUVoVSwrRUFBaUU7SUFDakUsaUVBQTBDO0lBQzFDLGlGQUEyRDtJQUszRCwyREFBdUM7SUFFdkMsbURBQTJJO0lBSTlILFFBQUEsb0JBQW9CLEdBQUcsaUJBQWlCLENBQUM7SUFFdEQsZ0JBQWdCO0lBQ2hCLGtDQUFrQztJQUNsQywyREFBMkQ7SUFDM0QsOENBQThDO0lBQzlDLDZEQUE2RDtJQUM3RCw2REFBNkQ7SUFDN0QsdUJBQXVCO0lBQ3ZCO1FBVUUsaUNBQ1ksT0FBdUIsRUFBVSxXQUF1QixFQUN4RCxpQkFBbUMsRUFBVSxrQkFBcUMsRUFDbEYsYUFBMkIsRUFBVSxnQkFBc0MsRUFDM0UsZUFBc0MsRUFDdEMsb0JBQXlDLEVBQVUsUUFBaUIsRUFDcEUsa0JBQXFDLEVBQVUsVUFBNEIsRUFDM0UsZUFBZ0M7WUFOaEMsWUFBTyxHQUFQLE9BQU8sQ0FBZ0I7WUFBVSxnQkFBVyxHQUFYLFdBQVcsQ0FBWTtZQUN4RCxzQkFBaUIsR0FBakIsaUJBQWlCLENBQWtCO1lBQVUsdUJBQWtCLEdBQWxCLGtCQUFrQixDQUFtQjtZQUNsRixrQkFBYSxHQUFiLGFBQWEsQ0FBYztZQUFVLHFCQUFnQixHQUFoQixnQkFBZ0IsQ0FBc0I7WUFDM0Usb0JBQWUsR0FBZixlQUFlLENBQXVCO1lBQ3RDLHlCQUFvQixHQUFwQixvQkFBb0IsQ0FBcUI7WUFBVSxhQUFRLEdBQVIsUUFBUSxDQUFTO1lBQ3BFLHVCQUFrQixHQUFsQixrQkFBa0IsQ0FBbUI7WUFBVSxlQUFVLEdBQVYs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LENBQUMsNEJBQW9CLENBQUMsR0FBRyxRQUFRLENBQUM7UUFDaEQsT0FBTyxLQUFLLENBQUM7SUFDZixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1N0YXRpY1N5bWJvbCwgU3RhdGljU3ltYm9sQ2FjaGV9IGZyb20gJy4vYW90L3N0YXRpY19zeW1ib2wnO1xuaW1wb3J0IHtuZ2ZhY3RvcnlGaWxlUGF0aH0gZnJvbSAnLi9hb3QvdXRpbCc7XG5pbXBvcnQge2Fzc2VydEFycmF5T2ZTdHJpbmdzLCBhc3NlcnRJbnRlcnBvbGF0aW9uU3ltYm9sc30gZnJvbSAnLi9hc3NlcnRpb25zJztcbmltcG9ydCAqIGFzIGNwbCBmcm9tICcuL2NvbXBpbGVfbWV0YWRhdGEnO1xuaW1wb3J0IHtDb21waWxlUmVmbGVjdG9yfSBmcm9tICcuL2NvbXBpbGVfcmVmbGVjdG9yJztcbmltcG9ydCB7Q29tcGlsZXJDb25maWd9IGZyb20gJy4vY29uZmlnJztcbmltcG9ydCB7Q2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3ksIENvbXBvbmVudCwgRGlyZWN0aXZlLCBJbmplY3RhYmxlLCBNb2R1bGVXaXRoUHJvdmlkZXJzLCBQcm92aWRlciwgUXVlcnksIFNjaGVtYU1ldGFkYXRhLCBUeXBlLCBWaWV3RW5jYXBzdWxhdGlvbiwgY3JlYXRlQXR0cmlidXRlLCBjcmVhdGVDb21wb25lbnQsIGNyZWF0ZUhvc3QsIGNyZWF0ZUluamVjdCwgY3JlYXRlSW5qZWN0YWJsZSwgY3JlYXRlSW5qZWN0aW9uVG9rZW4sIGNyZWF0ZU5nTW9kdWxlLCBjcmVhdGVPcHRpb25hbCwgY3JlYXRlU2VsZiwgY3JlYXRlU2tpcFNlbGZ9IGZyb20gJy4vY29yZSc7XG5pbXBvcnQge0RpcmVjdGl2ZU5vcm1hbGl6ZXJ9IGZyb20gJy4vZGlyZWN0aXZlX25vcm1hbGl6ZXInO1xuaW1wb3J0IHtEaXJlY3RpdmVSZXNvbHZlciwgZmluZExhc3R9IGZyb20gJy4vZGlyZWN0aXZlX3Jlc29sdmVyJztcbmltcG9ydCB7SWRlbnRpZmllcnN9IGZyb20gJy4vaWRlbnRpZmllcnMnO1xuaW1wb3J0IHtnZXRBbGxMaWZlY3ljbGVIb29rc30gZnJvbSAnLi9saWZlY3ljbGVfcmVmbGVjdG9yJztcbmltcG9ydCB7SHRtbFBhcnNlcn0gZnJvbSAnLi9tbF9wYXJzZXIvaHRtbF9wYXJzZXInO1xuaW1wb3J0IHtOZ01vZHVsZVJlc29sdmVyfSBmcm9tICcuL25nX21vZHVsZV9yZXNvbHZlcic7XG5pbXBvcnQge1BpcGVSZXNvbHZlcn0gZnJvbSAnLi9waXBlX3Jlc29sdmVyJztcbmltcG9ydCB7RWxlbWVudFNjaGVtYVJlZ2lzdHJ5fSBmcm9tICcuL3NjaGVtYS9lbGVtZW50X3NjaGVtYV9yZWdpc3RyeSc7XG5pbXBvcnQge0Nzc1NlbGVjdG9yfSBmcm9tICcuL3NlbGVjdG9yJztcbmltcG9ydCB7U3VtbWFyeVJlc29sdmVyfSBmcm9tICcuL3N1bW1hcnlfcmVzb2x2ZXInO1xuaW1wb3J0IHtDb25zb2xlLCBTeW5jQXN5bmMsIFZhbHVlVHJhbnNmb3JtZXIsIGlzUHJvbWlzZSwgbm9VbmRlZmluZWQsIHJlc29sdmVGb3J3YXJkUmVmLCBzdHJpbmdpZnksIHN5bnRheEVycm9yLCB2aXNpdFZhbHVlfSBmcm9tICcuL3V0aWwnO1xuXG5leHBvcnQgdHlwZSBFcnJvckNvbGxlY3RvciA9IChlcnJvcjogYW55LCB0eXBlPzogYW55KSA9PiB2b2lkO1xuXG5leHBvcnQgY29uc3QgRVJST1JfQ09NUE9ORU5UX1RZUEUgPSAnbmdDb21wb25lbnRUeXBlJztcblxuLy8gRGVzaWduIG5vdGVzOlxuLy8gLSBkb24ndCBsYXppbHkgY3JlYXRlIG1ldGFkYXRhOlxuLy8gICBGb3Igc29tZSBtZXRhZGF0YSwgd2UgbmVlZCB0byBkbyBhc3luYyB3b3JrIHNvbWV0aW1lcyxcbi8vICAgc28gdGhlIHVzZXIgaGFzIHRvIGtpY2sgb2ZmIHRoaXMgbG9hZGluZy5cbi8vICAgQnV0IHdlIHdhbnQgdG8gcmVwb3J0IGVycm9ycyBldmVuIHdoZW4gdGhlIGFzeW5jIHdvcmsgaXNcbi8vICAgbm90IHJlcXVpcmVkIHRvIGNoZWNrIHRoYXQgdGhlIHVzZXIgd291bGQgaGF2ZSBiZWVuIGFibGVcbi8vICAgdG8gd2FpdCBjb3JyZWN0bHkuXG5leHBvcnQgY2xhc3MgQ29tcGlsZU1ldGFkYXRhUmVzb2x2ZXIge1xuICBwcml2YXRlIF9ub25Ob3JtYWxpemVkRGlyZWN0aXZlQ2FjaGUgPVxuICAgICAgbmV3IE1hcDxUeXBlLCB7YW5ub3RhdGlvbjogRGlyZWN0aXZlLCBtZXRhZGF0YTogY3BsLkNvbXBpbGVEaXJlY3RpdmVNZXRhZGF0YX0+KCk7XG4gIHByaXZhdGUgX2RpcmVjdGl2ZUNhY2hlID0gbmV3IE1hcDxUeXBlLCBjcGwuQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhPigpO1xuICBwcml2YXRlIF9zdW1tYXJ5Q2FjaGUgPSBuZXcgTWFwPFR5cGUsIGNwbC5Db21waWxlVHlwZVN1bW1hcnl8bnVsbD4oKTtcbiAgcHJpdmF0ZSBfcGlwZUNhY2hlID0gbmV3IE1hcDxUeXBlLCBjcGwuQ29tcGlsZVBpcGVNZXRhZGF0YT4oKTtcbiAgcHJpdmF0ZSBfbmdNb2R1bGVDYWNoZSA9IG5ldyBNYXA8VHlwZSwgY3BsLkNvbXBpbGVOZ01vZHVsZU1ldGFkYXRhPigpO1xuICBwcml2YXRlIF9uZ01vZHVsZU9mVHlwZXMgPSBuZXcgTWFwPFR5cGUsIFR5cGU+KCk7XG4gIHByaXZhdGUgX3NoYWxsb3dNb2R1bGVDYWNoZSA9IG5ldyBNYXA8VHlwZSwgY3BsLkNvbXBpbGVTaGFsbG93TW9kdWxlTWV0YWRhdGE+KCk7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIF9jb25maWc6IENvbXBpbGVyQ29uZmlnLCBwcml2YXRlIF9odG1sUGFyc2VyOiBIdG1sUGFyc2VyLFxuICAgICAgcHJpdmF0ZSBfbmdNb2R1bGVSZXNvbHZlcjogTmdNb2R1bGVSZXNvbHZlciwgcHJpdmF0ZSBfZGlyZWN0aXZlUmVzb2x2ZXI6IERpcmVjdGl2ZVJlc29sdmVyLFxuICAgICAgcHJpdmF0ZSBfcGlwZVJlc29sdmVyOiBQaXBlUmVzb2x2ZXIsIHByaXZhdGUgX3N1bW1hcnlSZXNvbHZlcjogU3VtbWFyeVJlc29sdmVyPGFueT4sXG4gICAgICBwcml2YXRlIF9zY2hlbWFSZWdpc3RyeTogRWxlbWVudFNjaGVtYVJlZ2lzdHJ5LFxuICAgICAgcHJpdmF0ZSBfZGlyZWN0aXZlTm9ybWFsaXplcjogRGlyZWN0aXZlTm9ybWFsaXplciwgcHJpdmF0ZSBfY29uc29sZTogQ29uc29sZSxcbiAgICAgIHByaXZhdGUgX3N0YXRpY1N5bWJvbENhY2hlOiBTdGF0aWNTeW1ib2xDYWNoZSwgcHJpdmF0ZSBfcmVmbGVjdG9yOiBDb21waWxlUmVmbGVjdG9yLFxuICAgICAgcHJpdmF0ZSBfZXJyb3JDb2xsZWN0b3I/OiBFcnJvckNvbGxlY3Rvcikge31cblxuICBnZXRSZWZsZWN0b3IoKTogQ29tcGlsZVJlZmxlY3RvciB7IHJldHVybiB0aGlzLl9yZWZsZWN0b3I7IH1cblxuICBjbGVhckNhY2hlRm9yKHR5cGU6IFR5cGUpIHtcbiAgICBjb25zdCBkaXJNZXRhID0gdGhpcy5fZGlyZWN0aXZlQ2FjaGUuZ2V0KHR5cGUpO1xuICAgIHRoaXMuX2RpcmVjdGl2ZUNhY2hlLmRlbGV0ZSh0eXBlKTtcbiAgICB0aGlzLl9ub25Ob3JtYWxpemVkRGlyZWN0aXZlQ2FjaGUuZGVsZXRlKHR5cGUpO1xuICAgIHRoaXMuX3N1bW1hcnlDYWNoZS5kZWxldGUodHlwZSk7XG4gICAgdGhpcy5fcGlwZUNhY2hlLmRlbGV0ZSh0eXBlKTtcbiAgICB0aGlzLl9uZ01vZHVsZU9mVHlwZXMuZGVsZXRlKHR5cGUpO1xuICAgIC8vIENsZWFyIGFsbCBvZiB0aGUgTmdNb2R1bGUgYXMgdGhleSBjb250YWluIHRyYW5zaXRpdmUgaW5mb3JtYXRpb24hXG4gICAgdGhpcy5fbmdNb2R1bGVDYWNoZS5jbGVhcigpO1xuICAgIGlmIChkaXJNZXRhKSB7XG4gICAgICB0aGlzLl9kaXJlY3RpdmVOb3JtYWxpemVyLmNsZWFyQ2FjaGVGb3IoZGlyTWV0YSk7XG4gICAgfVxuICB9XG5cbiAgY2xlYXJDYWNoZSgpOiB2b2lkIHtcbiAgICB0aGlzLl9kaXJlY3RpdmVDYWNoZS5jbGVhcigpO1xuICAgIHRoaXMuX25vbk5vcm1hbGl6ZWREaXJlY3RpdmVDYWNoZS5jbGVhcigpO1xuICAgIHRoaXMuX3N1bW1hcnlDYWNoZS5jbGVhcigpO1xuICAgIHRoaXMuX3BpcGVDYWNoZS5jbGVhcigpO1xuICAgIHRoaXMuX25nTW9kdWxlQ2FjaGUuY2xlYXIoKTtcbiAgICB0aGlzLl9uZ01vZHVsZU9mVHlwZXMuY2xlYXIoKTtcbiAgICB0aGlzLl9kaXJlY3RpdmVOb3JtYWxpemVyLmNsZWFyQ2FjaGUoKTtcbiAgfVxuXG4gIHByaXZhdGUgX2NyZWF0ZVByb3h5Q2xhc3MoYmFzZVR5cGU6IGFueSwgbmFtZTogc3RyaW5nKTogY3BsLlByb3h5Q2xhc3Mge1xuICAgIGxldCBkZWxlZ2F0ZTogYW55ID0gbnVsbDtcbiAgICBjb25zdCBwcm94eUNsYXNzOiBjcGwuUHJveHlDbGFzcyA9IDxhbnk+ZnVuY3Rpb24odGhpczogdW5rbm93bikge1xuICAgICAgaWYgKCFkZWxlZ2F0ZSkge1xuICAgICAgICB0aHJvdyBuZXcgRXJyb3IoXG4gICAgICAgICAgICBgSWxsZWdhbCBzdGF0ZTogQ2xhc3MgJHtuYW1lfSBmb3IgdHlwZSAke3N0cmluZ2lmeShiYXNlVHlwZSl9IGlzIG5vdCBjb21waWxlZCB5ZXQhYCk7XG4gICAgICB9XG4gICAgICByZXR1cm4gZGVsZWdhdGUuYXBwbHkodGhpcywgYXJndW1lbnRzKTtcbiAgICB9O1xuICAgIHByb3h5Q2xhc3Muc2V0RGVsZWdhdGUgPSAoZCkgPT4ge1xuICAgICAgZGVsZWdhdGUgPSBkO1xuICAgICAgKDxhbnk+cHJveHlDbGFzcykucHJvdG90eXBlID0gZC5wcm90b3R5cGU7XG4gICAgfTtcbiAgICAvLyBNYWtlIHN0cmluZ2lmeSB3b3JrIGNvcnJlY3RseVxuICAgICg8YW55PnByb3h5Q2xhc3MpLm92ZXJyaWRkZW5OYW1lID0gbmFtZTtcbiAgICByZXR1cm4gcHJveHlDbGFzcztcbiAgfVxuXG4gIHByaXZhdGUgZ2V0R2VuZXJhdGVkQ2xhc3MoZGlyVHlwZTogYW55LCBuYW1lOiBzdHJpbmcpOiBTdGF0aWNTeW1ib2x8Y3BsLlByb3h5Q2xhc3Mge1xuICAgIGlmIChkaXJUeXBlIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB7XG4gICAgICByZXR1cm4gdGhpcy5fc3RhdGljU3ltYm9sQ2FjaGUuZ2V0KG5nZmFjdG9yeUZpbGVQYXRoKGRpclR5cGUuZmlsZVBhdGgpLCBuYW1lKTtcbiAgICB9IGVsc2Uge1xuICAgICAgcmV0dXJuIHRoaXMuX2NyZWF0ZVByb3h5Q2xhc3MoZGlyVHlwZSwgbmFtZSk7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBnZXRDb21wb25lbnRWaWV3Q2xhc3MoZGlyVHlwZTogYW55KTogU3RhdGljU3ltYm9sfGNwbC5Qcm94eUNsYXNzIHtcbiAgICByZXR1cm4gdGhpcy5nZXRHZW5lcmF0ZWRDbGFzcyhkaXJUeXBlLCBjcGwudmlld0NsYXNzTmFtZShkaXJUeXBlLCAwKSk7XG4gIH1cblxuICBnZXRIb3N0Q29tcG9uZW50Vmlld0NsYXNzKGRpclR5cGU6IGFueSk6IFN0YXRpY1N5bWJvbHxjcGwuUHJveHlDbGFzcyB7XG4gICAgcmV0dXJuIHRoaXMuZ2V0R2VuZXJhdGVkQ2xhc3MoZGlyVHlwZSwgY3BsLmhvc3RWaWV3Q2xhc3NOYW1lKGRpclR5cGUpKTtcbiAgfVxuXG4gIGdldEhvc3RDb21wb25lbnRUeXBlKGRpclR5cGU6IGFueSk6IFN0YXRpY1N5bWJvbHxjcGwuUHJveHlDbGFzcyB7XG4gICAgY29uc3QgbmFtZSA9IGAke2NwbC5pZGVudGlmaWVyTmFtZSh7cmVmZXJlbmNlOiBkaXJUeXBlfSl9X0hvc3RgO1xuICAgIGlmIChkaXJUeXBlIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB7XG4gICAgICByZXR1cm4gdGhpcy5fc3RhdGljU3ltYm9sQ2FjaGUuZ2V0KGRpclR5cGUuZmlsZVBhdGgsIG5hbWUpO1xuICAgIH1cblxuICAgIHJldHVybiB0aGlzLl9jcmVhdGVQcm94eUNsYXNzKGRpclR5cGUsIG5hbWUpO1xuICB9XG5cbiAgcHJpdmF0ZSBnZXRSZW5kZXJlclR5cGUoZGlyVHlwZTogYW55KTogU3RhdGljU3ltYm9sfG9iamVjdCB7XG4gICAgaWYgKGRpclR5cGUgaW5zdGFuY2VvZiBTdGF0aWNTeW1ib2wpIHtcbiAgICAgIHJldHVybiB0aGlzLl9zdGF0aWNTeW1ib2xDYWNoZS5nZXQoXG4gICAgICAgICAgbmdmYWN0b3J5RmlsZVBhdGgoZGlyVHlwZS5maWxlUGF0aCksIGNwbC5yZW5kZXJlclR5cGVOYW1lKGRpclR5cGUpKTtcbiAgICB9IGVsc2Uge1xuICAgICAgLy8gcmV0dXJuaW5nIGFuIG9iamVjdCBhcyBwcm94eSxcbiAgICAgIC8vIHRoYXQgd2UgZmlsbCBsYXRlciBkdXJpbmcgcnVudGltZSBjb21waWxhdGlvbi5cbiAgICAgIHJldHVybiA8YW55Pnt9O1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgZ2V0Q29tcG9uZW50RmFjdG9yeShcbiAgICAgIHNlbGVjdG9yOiBzdHJpbmcsIGRpclR5cGU6IGFueSwgaW5wdXRzOiB7W2tleTogc3RyaW5nXTogc3RyaW5nfXxudWxsLFxuICAgICAgb3V0cHV0czoge1trZXk6IHN0cmluZ106IHN0cmluZ30pOiBTdGF0aWNTeW1ib2x8b2JqZWN0IHtcbiAgICBpZiAoZGlyVHlwZSBpbnN0YW5jZW9mIFN0YXRpY1N5bWJvbCkge1xuICAgICAgcmV0dXJuIHRoaXMuX3N0YXRpY1N5bWJvbENhY2hlLmdldChcbiAgICAgICAgICBuZ2ZhY3RvcnlGaWxlUGF0aChkaXJUeXBlLmZpbGVQYXRoKSwgY3BsLmNvbXBvbmVudEZhY3RvcnlOYW1lKGRpclR5cGUpKTtcbiAgICB9IGVsc2Uge1xuICAgICAgY29uc3QgaG9zdFZpZXcgPSB0aGlzLmdldEhvc3RDb21wb25lbnRWaWV3Q2xhc3MoZGlyVHlwZSk7XG4gICAgICAvLyBOb3RlOiBuZ0NvbnRlbnRTZWxlY3RvcnMgd2lsbCBiZSBmaWxsZWQgbGF0ZXIgb25jZSB0aGUgdGVtcGxhdGUgaXNcbiAgICAgIC8vIGxvYWRlZC5cbiAgICAgIGNvbnN0IGNyZWF0ZUNvbXBvbmVudEZhY3RvcnkgPVxuICAgICAgICAgIHRoaXMuX3JlZmxlY3Rvci5yZXNvbHZlRXh0ZXJuYWxSZWZlcmVuY2UoSWRlbnRpZmllcnMuY3JlYXRlQ29tcG9uZW50RmFjdG9yeSk7XG4gICAgICByZXR1cm4gY3JlYXRlQ29tcG9uZW50RmFjdG9yeShzZWxlY3RvciwgZGlyVHlwZSwgPGFueT5ob3N0VmlldywgaW5wdXRzLCBvdXRwdXRzLCBbXSk7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBpbml0Q29tcG9uZW50RmFjdG9yeShmYWN0b3J5OiBTdGF0aWNTeW1ib2x8b2JqZWN0LCBuZ0NvbnRlbnRTZWxlY3RvcnM6IHN0cmluZ1tdKSB7XG4gICAgaWYgKCEoZmFjdG9yeSBpbnN0YW5jZW9mIFN0YXRpY1N5bWJvbCkpIHtcbiAgICAgIChmYWN0b3J5IGFzIGFueSkubmdDb250ZW50U2VsZWN0b3JzLnB1c2goLi4ubmdDb250ZW50U2VsZWN0b3JzKTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIF9sb2FkU3VtbWFyeSh0eXBlOiBhbnksIGtpbmQ6IGNwbC5Db21waWxlU3VtbWFyeUtpbmQpOiBjcGwuQ29tcGlsZVR5cGVTdW1tYXJ5fG51bGwge1xuICAgIGxldCB0eXBlU3VtbWFyeSA9IHRoaXMuX3N1bW1hcnlDYWNoZS5nZXQodHlwZSk7XG4gICAgaWYgKCF0eXBlU3VtbWFyeSkge1xuICAgICAgY29uc3Qgc3VtbWFyeSA9IHRoaXMuX3N1bW1hcnlSZXNvbHZlci5yZXNvbHZlU3VtbWFyeSh0eXBlKTtcbiAgICAgIHR5cGVTdW1tYXJ5ID0gc3VtbWFyeSA/IHN1bW1hcnkudHlwZSA6IG51bGw7XG4gICAgICB0aGlzLl9zdW1tYXJ5Q2FjaGUuc2V0KHR5cGUsIHR5cGVTdW1tYXJ5IHx8IG51bGwpO1xuICAgIH1cbiAgICByZXR1cm4gdHlwZVN1bW1hcnkgJiYgdHlwZVN1bW1hcnkuc3VtbWFyeUtpbmQgPT09IGtpbmQgPyB0eXBlU3VtbWFyeSA6IG51bGw7XG4gIH1cblxuICBnZXRIb3N0Q29tcG9uZW50TWV0YWRhdGEoXG4gICAgICBjb21wTWV0YTogY3BsLkNvbXBpbGVEaXJlY3RpdmVNZXRhZGF0YSxcbiAgICAgIGhvc3RWaWV3VHlwZT86IFN0YXRpY1N5bWJvbHxjcGwuUHJveHlDbGFzcyk6IGNwbC5Db21waWxlRGlyZWN0aXZlTWV0YWRhdGEge1xuICAgIGNvbnN0IGhvc3RUeXBlID0gdGhpcy5nZXRIb3N0Q29tcG9uZW50VHlwZShjb21wTWV0YS50eXBlLnJlZmVyZW5jZSk7XG4gICAgaWYgKCFob3N0Vmlld1R5cGUpIHtcbiAgICAgIGhvc3RWaWV3VHlwZSA9IHRoaXMuZ2V0SG9zdENvbXBvbmVudFZpZXdDbGFzcyhob3N0VHlwZSk7XG4gICAgfVxuICAgIC8vIE5vdGU6ICEgaXMgb2sgaGVyZSBhcyB0aGlzIG1ldGhvZCBzaG91bGQgb25seSBiZSBjYWxsZWQgd2l0aCBub3JtYWxpemVkIGRpcmVjdGl2ZVxuICAgIC8vIG1ldGFkYXRhLCB3aGljaCBhbHdheXMgZmlsbHMgaW4gdGhlIHNlbGVjdG9yLlxuICAgIGNvbnN0IHRlbXBsYXRlID0gQ3NzU2VsZWN0b3IucGFyc2UoY29tcE1ldGEuc2VsZWN0b3IgISlbMF0uZ2V0TWF0Y2hpbmdFbGVtZW50VGVtcGxhdGUoKTtcbiAgICBjb25zdCB0ZW1wbGF0ZVVybCA9ICcnO1xuICAgIGNvbnN0IGh0bWxBc3QgPSB0aGlzLl9odG1sUGFyc2VyLnBhcnNlKHRlbXBsYXRlLCB0ZW1wbGF0ZVVybCk7XG4gICAgcmV0dXJuIGNwbC5Db21waWxlRGlyZWN0aXZlTWV0YWRhdGEuY3JlYXRlKHtcbiAgICAgIGlzSG9zdDogdHJ1ZSxcbiAgICAgIHR5cGU6IHtyZWZlcmVuY2U6IGhvc3RUeXBlLCBkaURlcHM6IFtdLCBsaWZlY3ljbGVIb29rczogW119LFxuICAgICAgdGVtcGxhdGU6IG5ldyBjcGwuQ29tcGlsZVRlbXBsYXRlTWV0YWRhdGEoe1xuICAgICAgICBlbmNhcHN1bGF0aW9uOiBWaWV3RW5jYXBzdWxhdGlvbi5Ob25lLFxuICAgICAgICB0ZW1wbGF0ZSxcbiAgICAgICAgdGVtcGxhdGVVcmwsXG4gICAgICAgIGh0bWxBc3QsXG4gICAgICAgIHN0eWxlczogW10sXG4gICAgICAgIHN0eWxlVXJsczogW10sXG4gICAgICAgIG5nQ29udGVudFNlbGVjdG9yczogW10sXG4gICAgICAgIGFuaW1hdGlvbnM6IFtdLFxuICAgICAgICBpc0lubGluZTogdHJ1ZSxcbiAgICAgICAgZXh0ZXJuYWxTdHlsZXNoZWV0czogW10sXG4gICAgICAgIGludGVycG9sYXRpb246IG51bGwsXG4gICAgICAgIHByZXNlcnZlV2hpdGVzcGFjZXM6IGZhbHNlLFxuICAgICAgfSksXG4gICAgICBleHBvcnRBczogbnVsbCxcbiAgICAgIGNoYW5nZURldGVjdGlvbjogQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kuRGVmYXVsdCxcbiAgICAgIGlucHV0czogW10sXG4gICAgICBvdXRwdXRzOiBbXSxcbiAgICAgIGhvc3Q6IHt9LFxuICAgICAgaXNDb21wb25lbnQ6IHRydWUsXG4gICAgICBzZWxlY3RvcjogJyonLFxuICAgICAgcHJvdmlkZXJzOiBbXSxcbiAgICAgIHZpZXdQcm92aWRlcnM6IFtdLFxuICAgICAgcXVlcmllczogW10sXG4gICAgICBndWFyZHM6IHt9LFxuICAgICAgdmlld1F1ZXJpZXM6IFtdLFxuICAgICAgY29tcG9uZW50Vmlld1R5cGU6IGhvc3RWaWV3VHlwZSxcbiAgICAgIHJlbmRlcmVyVHlwZTpcbiAgICAgICAgICB7aWQ6ICdfX0hvc3RfXycsIGVuY2Fwc3VsYXRpb246IFZpZXdFbmNhcHN1bGF0aW9uLk5vbmUsIHN0eWxlczogW10sIGRhdGE6IHt9fSBhcyBvYmplY3QsXG4gICAgICBlbnRyeUNvbXBvbmVudHM6IFtdLFxuICAgICAgY29tcG9uZW50RmFjdG9yeTogbnVsbFxuICAgIH0pO1xuICB9XG5cbiAgbG9hZERpcmVjdGl2ZU1ldGFkYXRhKG5nTW9kdWxlVHlwZTogYW55LCBkaXJlY3RpdmVUeXBlOiBhbnksIGlzU3luYzogYm9vbGVhbik6IFN5bmNBc3luYzxudWxsPiB7XG4gICAgaWYgKHRoaXMuX2RpcmVjdGl2ZUNhY2hlLmhhcyhkaXJlY3RpdmVUeXBlKSkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIGRpcmVjdGl2ZVR5cGUgPSByZXNvbHZlRm9yd2FyZFJlZihkaXJlY3RpdmVUeXBlKTtcbiAgICBjb25zdCB7YW5ub3RhdGlvbiwgbWV0YWRhdGF9ID0gdGhpcy5nZXROb25Ob3JtYWxpemVkRGlyZWN0aXZlTWV0YWRhdGEoZGlyZWN0aXZlVHlwZSkgITtcblxuICAgIGNvbnN0IGNyZWF0ZURpcmVjdGl2ZU1ldGFkYXRhID0gKHRlbXBsYXRlTWV0YWRhdGE6IGNwbC5Db21waWxlVGVtcGxhdGVNZXRhZGF0YSB8IG51bGwpID0+IHtcbiAgICAgIGNvbnN0IG5vcm1hbGl6ZWREaXJNZXRhID0gbmV3IGNwbC5Db21waWxlRGlyZWN0aXZlTWV0YWRhdGEoe1xuICAgICAgICBpc0hvc3Q6IGZhbHNlLFxuICAgICAgICB0eXBlOiBtZXRhZGF0YS50eXBlLFxuICAgICAgICBpc0NvbXBvbmVudDogbWV0YWRhdGEuaXNDb21wb25lbnQsXG4gICAgICAgIHNlbGVjdG9yOiBtZXRhZGF0YS5zZWxlY3RvcixcbiAgICAgICAgZXhwb3J0QXM6IG1ldGFkYXRhLmV4cG9ydEFzLFxuICAgICAgICBjaGFuZ2VEZXRlY3Rpb246IG1ldGFkYXRhLmNoYW5nZURldGVjdGlvbixcbiAgICAgICAgaW5wdXRzOiBtZXRhZGF0YS5pbnB1dHMsXG4gICAgICAgIG91dHB1dHM6IG1ldGFkYXRhLm91dHB1dHMsXG4gICAgICAgIGhvc3RMaXN0ZW5lcnM6IG1ldGFkYXRhLmhvc3RMaXN0ZW5lcnMsXG4gICAgICAgIGhvc3RQcm9wZXJ0aWVzOiBtZXRhZGF0YS5ob3N0UHJvcGVydGllcyxcbiAgICAgICAgaG9zdEF0dHJpYnV0ZXM6IG1ldGFkYXRhLmhvc3RBdHRyaWJ1dGVzLFxuICAgICAgICBwcm92aWRlcnM6IG1ldGFkYXRhLnByb3ZpZGVycyxcbiAgICAgICAgdmlld1Byb3ZpZGVyczogbWV0YWRhdGEudmlld1Byb3ZpZGVycyxcbiAgICAgICAgcXVlcmllczogbWV0YWRhdGEucXVlcmllcyxcbiAgICAgICAgZ3VhcmRzOiBtZXRhZGF0YS5ndWFyZHMsXG4gICAgICAgIHZpZXdRdWVyaWVzOiBtZXRhZGF0YS52aWV3UXVlcmllcyxcbiAgICAgICAgZW50cnlDb21wb25lbnRzOiBtZXRhZGF0YS5lbnRyeUNvbXBvbmVudHMsXG4gICAgICAgIGNvbXBvbmVudFZpZXdUeXBlOiBtZXRhZGF0YS5jb21wb25lbnRWaWV3VHlwZSxcbiAgICAgICAgcmVuZGVyZXJUeXBlOiBtZXRhZGF0YS5yZW5kZXJlclR5cGUsXG4gICAgICAgIGNvbXBvbmVudEZhY3Rvcnk6IG1ldGFkYXRhLmNvbXBvbmVudEZhY3RvcnksXG4gICAgICAgIHRlbXBsYXRlOiB0ZW1wbGF0ZU1ldGFkYXRhXG4gICAgICB9KTtcbiAgICAgIGlmICh0ZW1wbGF0ZU1ldGFkYXRhKSB7XG4gICAgICAgIHRoaXMuaW5pdENvbXBvbmVudEZhY3RvcnkobWV0YWRhdGEuY29tcG9uZW50RmFjdG9yeSAhLCB0ZW1wbGF0ZU1ldGFkYXRhLm5nQ29udGVudFNlbGVjdG9ycyk7XG4gICAgICB9XG4gICAgICB0aGlzLl9kaXJlY3RpdmVDYWNoZS5zZXQoZGlyZWN0aXZlVHlwZSwgbm9ybWFsaXplZERpck1ldGEpO1xuICAgICAgdGhpcy5fc3VtbWFyeUNhY2hlLnNldChkaXJlY3RpdmVUeXBlLCBub3JtYWxpemVkRGlyTWV0YS50b1N1bW1hcnkoKSk7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9O1xuXG4gICAgaWYgKG1ldGFkYXRhLmlzQ29tcG9uZW50KSB7XG4gICAgICBjb25zdCB0ZW1wbGF0ZSA9IG1ldGFkYXRhLnRlbXBsYXRlICE7XG4gICAgICBjb25zdCB0ZW1wbGF0ZU1ldGEgPSB0aGlzLl9kaXJlY3RpdmVOb3JtYWxpemVyLm5vcm1hbGl6ZVRlbXBsYXRlKHtcbiAgICAgICAgbmdNb2R1bGVUeXBlLFxuICAgICAgICBjb21wb25lbnRUeXBlOiBkaXJlY3RpdmVUeXBlLFxuICAgICAgICBtb2R1bGVVcmw6IHRoaXMuX3JlZmxlY3Rvci5jb21wb25lbnRNb2R1bGVVcmwoZGlyZWN0aXZlVHlwZSwgYW5ub3RhdGlvbiksXG4gICAgICAgIGVuY2Fwc3VsYXRpb246IHRlbXBsYXRlLmVuY2Fwc3VsYXRpb24sXG4gICAgICAgIHRlbXBsYXRlOiB0ZW1wbGF0ZS50ZW1wbGF0ZSxcbiAgICAgICAgdGVtcGxhdGVVcmw6IHRlbXBsYXRlLnRlbXBsYXRlVXJsLFxuICAgICAgICBzdHlsZXM6IHRlbXBsYXRlLnN0eWxlcyxcbiAgICAgICAgc3R5bGVVcmxzOiB0ZW1wbGF0ZS5zdHlsZVVybHMsXG4gICAgICAgIGFuaW1hdGlvbnM6IHRlbXBsYXRlLmFuaW1hdGlvbnMsXG4gICAgICAgIGludGVycG9sYXRpb246IHRlbXBsYXRlLmludGVycG9sYXRpb24sXG4gICAgICAgIHByZXNlcnZlV2hpdGVzcGFjZXM6IHRlbXBsYXRlLnByZXNlcnZlV2hpdGVzcGFjZXNcbiAgICAgIH0pO1xuICAgICAgaWYgKGlzUHJvbWlzZSh0ZW1wbGF0ZU1ldGEpICYmIGlzU3luYykge1xuICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihjb21wb25lbnRTdGlsbExvYWRpbmdFcnJvcihkaXJlY3RpdmVUeXBlKSwgZGlyZWN0aXZlVHlwZSk7XG4gICAgICAgIHJldHVybiBudWxsO1xuICAgICAgfVxuICAgICAgcmV0dXJuIFN5bmNBc3luYy50aGVuKHRlbXBsYXRlTWV0YSwgY3JlYXRlRGlyZWN0aXZlTWV0YWRhdGEpO1xuICAgIH0gZWxzZSB7XG4gICAgICAvLyBkaXJlY3RpdmVcbiAgICAgIGNyZWF0ZURpcmVjdGl2ZU1ldGFkYXRhKG51bGwpO1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICB9XG5cbiAgZ2V0Tm9uTm9ybWFsaXplZERpcmVjdGl2ZU1ldGFkYXRhKGRpcmVjdGl2ZVR5cGU6IGFueSk6XG4gICAgICB7YW5ub3RhdGlvbjogRGlyZWN0aXZlLCBtZXRhZGF0YTogY3BsLkNvbXBpbGVEaXJlY3RpdmVNZXRhZGF0YX18bnVsbCB7XG4gICAgZGlyZWN0aXZlVHlwZSA9IHJlc29sdmVGb3J3YXJkUmVmKGRpcmVjdGl2ZVR5cGUpO1xuICAgIGlmICghZGlyZWN0aXZlVHlwZSkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIGxldCBjYWNoZUVudHJ5ID0gdGhpcy5fbm9uTm9ybWFsaXplZERpcmVjdGl2ZUNhY2hlLmdldChkaXJlY3RpdmVUeXBlKTtcbiAgICBpZiAoY2FjaGVFbnRyeSkge1xuICAgICAgcmV0dXJuIGNhY2hlRW50cnk7XG4gICAgfVxuICAgIGNvbnN0IGRpck1ldGEgPSB0aGlzLl9kaXJlY3RpdmVSZXNvbHZlci5yZXNvbHZlKGRpcmVjdGl2ZVR5cGUsIGZhbHNlKTtcbiAgICBpZiAoIWRpck1ldGEpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgICBsZXQgbm9uTm9ybWFsaXplZFRlbXBsYXRlTWV0YWRhdGE6IGNwbC5Db21waWxlVGVtcGxhdGVNZXRhZGF0YSA9IHVuZGVmaW5lZCAhO1xuXG4gICAgaWYgKGNyZWF0ZUNvbXBvbmVudC5pc1R5cGVPZihkaXJNZXRhKSkge1xuICAgICAgLy8gY29tcG9uZW50XG4gICAgICBjb25zdCBjb21wTWV0YSA9IGRpck1ldGEgYXMgQ29tcG9uZW50O1xuICAgICAgYXNzZXJ0QXJyYXlPZlN0cmluZ3MoJ3N0eWxlcycsIGNvbXBNZXRhLnN0eWxlcyk7XG4gICAgICBhc3NlcnRBcnJheU9mU3RyaW5ncygnc3R5bGVVcmxzJywgY29tcE1ldGEuc3R5bGVVcmxzKTtcbiAgICAgIGFzc2VydEludGVycG9sYXRpb25TeW1ib2xzKCdpbnRlcnBvbGF0aW9uJywgY29tcE1ldGEuaW50ZXJwb2xhdGlvbik7XG5cbiAgICAgIGNvbnN0IGFuaW1hdGlvbnMgPSBjb21wTWV0YS5hbmltYXRpb25zO1xuXG4gICAgICBub25Ob3JtYWxpemVkVGVtcGxhdGVNZXRhZGF0YSA9IG5ldyBjcGwuQ29tcGlsZVRlbXBsYXRlTWV0YWRhdGEoe1xuICAgICAgICBlbmNhcHN1bGF0aW9uOiBub1VuZGVmaW5lZChjb21wTWV0YS5lbmNhcHN1bGF0aW9uKSxcbiAgICAgICAgdGVtcGxhdGU6IG5vVW5kZWZpbmVkKGNvbXBNZXRhLnRlbXBsYXRlKSxcbiAgICAgICAgdGVtcGxhdGVVcmw6IG5vVW5kZWZpbmVkKGNvbXBNZXRhLnRlbXBsYXRlVXJsKSxcbiAgICAgICAgaHRtbEFzdDogbnVsbCxcbiAgICAgICAgc3R5bGVzOiBjb21wTWV0YS5zdHlsZXMgfHwgW10sXG4gICAgICAgIHN0eWxlVXJsczogY29tcE1ldGEuc3R5bGVVcmxzIHx8IFtdLFxuICAgICAgICBhbmltYXRpb25zOiBhbmltYXRpb25zIHx8IFtdLFxuICAgICAgICBpbnRlcnBvbGF0aW9uOiBub1VuZGVmaW5lZChjb21wTWV0YS5pbnRlcnBvbGF0aW9uKSxcbiAgICAgICAgaXNJbmxpbmU6ICEhY29tcE1ldGEudGVtcGxhdGUsXG4gICAgICAgIGV4dGVybmFsU3R5bGVzaGVldHM6IFtdLFxuICAgICAgICBuZ0NvbnRlbnRTZWxlY3RvcnM6IFtdLFxuICAgICAgICBwcmVzZXJ2ZVdoaXRlc3BhY2VzOiBub1VuZGVmaW5lZChkaXJNZXRhLnByZXNlcnZlV2hpdGVzcGFjZXMpLFxuICAgICAgfSk7XG4gICAgfVxuXG4gICAgbGV0IGNoYW5nZURldGVjdGlvblN0cmF0ZWd5OiBDaGFuZ2VEZXRlY3Rpb25TdHJhdGVneSA9IG51bGwgITtcbiAgICBsZXQgdmlld1Byb3ZpZGVyczogY3BsLkNvbXBpbGVQcm92aWRlck1ldGFkYXRhW10gPSBbXTtcbiAgICBsZXQgZW50cnlDb21wb25lbnRNZXRhZGF0YTogY3BsLkNvbXBpbGVFbnRyeUNvbXBvbmVudE1ldGFkYXRhW10gPSBbXTtcbiAgICBsZXQgc2VsZWN0b3IgPSBkaXJNZXRhLnNlbGVjdG9yO1xuXG4gICAgaWYgKGNyZWF0ZUNvbXBvbmVudC5pc1R5cGVPZihkaXJNZXRhKSkge1xuICAgICAgLy8gQ29tcG9uZW50XG4gICAgICBjb25zdCBjb21wTWV0YSA9IGRpck1ldGEgYXMgQ29tcG9uZW50O1xuICAgICAgY2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kgPSBjb21wTWV0YS5jaGFuZ2VEZXRlY3Rpb24gITtcbiAgICAgIGlmIChjb21wTWV0YS52aWV3UHJvdmlkZXJzKSB7XG4gICAgICAgIHZpZXdQcm92aWRlcnMgPSB0aGlzLl9nZXRQcm92aWRlcnNNZXRhZGF0YShcbiAgICAgICAgICAgIGNvbXBNZXRhLnZpZXdQcm92aWRlcnMsIGVudHJ5Q29tcG9uZW50TWV0YWRhdGEsXG4gICAgICAgICAgICBgdmlld1Byb3ZpZGVycyBmb3IgXCIke3N0cmluZ2lmeVR5cGUoZGlyZWN0aXZlVHlwZSl9XCJgLCBbXSwgZGlyZWN0aXZlVHlwZSk7XG4gICAgICB9XG4gICAgICBpZiAoY29tcE1ldGEuZW50cnlDb21wb25lbnRzKSB7XG4gICAgICAgIGVudHJ5Q29tcG9uZW50TWV0YWRhdGEgPSBmbGF0dGVuQW5kRGVkdXBlQXJyYXkoY29tcE1ldGEuZW50cnlDb21wb25lbnRzKVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5tYXAoKHR5cGUpID0+IHRoaXMuX2dldEVudHJ5Q29tcG9uZW50TWV0YWRhdGEodHlwZSkgISlcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAuY29uY2F0KGVudHJ5Q29tcG9uZW50TWV0YWRhdGEpO1xuICAgICAgfVxuICAgICAgaWYgKCFzZWxlY3Rvcikge1xuICAgICAgICBzZWxlY3RvciA9IHRoaXMuX3NjaGVtYVJlZ2lzdHJ5LmdldERlZmF1bHRDb21wb25lbnRFbGVtZW50TmFtZSgpO1xuICAgICAgfVxuICAgIH0gZWxzZSB7XG4gICAgICAvLyBEaXJlY3RpdmVcbiAgICAgIGlmICghc2VsZWN0b3IpIHtcbiAgICAgICAgc2VsZWN0b3IgPSBudWxsICE7XG4gICAgICB9XG4gICAgfVxuXG4gICAgbGV0IHByb3ZpZGVyczogY3BsLkNvbXBpbGVQcm92aWRlck1ldGFkYXRhW10gPSBbXTtcbiAgICBpZiAoZGlyTWV0YS5wcm92aWRlcnMgIT0gbnVsbCkge1xuICAgICAgcHJvdmlkZXJzID0gdGhpcy5fZ2V0UHJvdmlkZXJzTWV0YWRhdGEoXG4gICAgICAgICAgZGlyTWV0YS5wcm92aWRlcnMsIGVudHJ5Q29tcG9uZW50TWV0YWRhdGEsXG4gICAgICAgICAgYHByb3ZpZGVycyBmb3IgXCIke3N0cmluZ2lmeVR5cGUoZGlyZWN0aXZlVHlwZSl9XCJgLCBbXSwgZGlyZWN0aXZlVHlwZSk7XG4gICAgfVxuICAgIGxldCBxdWVyaWVzOiBjcGwuQ29tcGlsZVF1ZXJ5TWV0YWRhdGFbXSA9IFtdO1xuICAgIGxldCB2aWV3UXVlcmllczogY3BsLkNvbXBpbGVRdWVyeU1ldGFkYXRhW10gPSBbXTtcbiAgICBpZiAoZGlyTWV0YS5xdWVyaWVzICE9IG51bGwpIHtcbiAgICAgIHF1ZXJpZXMgPSB0aGlzLl9nZXRRdWVyaWVzTWV0YWRhdGEoZGlyTWV0YS5xdWVyaWVzLCBmYWxzZSwgZGlyZWN0aXZlVHlwZSk7XG4gICAgICB2aWV3UXVlcmllcyA9IHRoaXMuX2dldFF1ZXJpZXNNZXRhZGF0YShkaXJNZXRhLnF1ZXJpZXMsIHRydWUsIGRpcmVjdGl2ZVR5cGUpO1xuICAgIH1cblxuICAgIGNvbnN0IG1ldGFkYXRhID0gY3BsLkNvbXBpbGVEaXJlY3RpdmVNZXRhZGF0YS5jcmVhdGUoe1xuICAgICAgaXNIb3N0OiBmYWxzZSxcbiAgICAgIHNlbGVjdG9yOiBzZWxlY3RvcixcbiAgICAgIGV4cG9ydEFzOiBub1VuZGVmaW5lZChkaXJNZXRhLmV4cG9ydEFzKSxcbiAgICAgIGlzQ29tcG9uZW50OiAhIW5vbk5vcm1hbGl6ZWRUZW1wbGF0ZU1ldGFkYXRhLFxuICAgICAgdHlwZTogdGhpcy5fZ2V0VHlwZU1ldGFkYXRhKGRpcmVjdGl2ZVR5cGUpLFxuICAgICAgdGVtcGxhdGU6IG5vbk5vcm1hbGl6ZWRUZW1wbGF0ZU1ldGFkYXRhLFxuICAgICAgY2hhbmdlRGV0ZWN0aW9uOiBjaGFuZ2VEZXRlY3Rpb25TdHJhdGVneSxcbiAgICAgIGlucHV0czogZGlyTWV0YS5pbnB1dHMgfHwgW10sXG4gICAgICBvdXRwdXRzOiBkaXJNZXRhLm91dHB1dHMgfHwgW10sXG4gICAgICBob3N0OiBkaXJNZXRhLmhvc3QgfHwge30sXG4gICAgICBwcm92aWRlcnM6IHByb3ZpZGVycyB8fCBbXSxcbiAgICAgIHZpZXdQcm92aWRlcnM6IHZpZXdQcm92aWRlcnMgfHwgW10sXG4gICAgICBxdWVyaWVzOiBxdWVyaWVzIHx8IFtdLFxuICAgICAgZ3VhcmRzOiBkaXJNZXRhLmd1YXJkcyB8fCB7fSxcbiAgICAgIHZpZXdRdWVyaWVzOiB2aWV3UXVlcmllcyB8fCBbXSxcbiAgICAgIGVudHJ5Q29tcG9uZW50czogZW50cnlDb21wb25lbnRNZXRhZGF0YSxcbiAgICAgIGNvbXBvbmVudFZpZXdUeXBlOiBub25Ob3JtYWxpemVkVGVtcGxhdGVNZXRhZGF0YSA/IHRoaXMuZ2V0Q29tcG9uZW50Vmlld0NsYXNzKGRpcmVjdGl2ZVR5cGUpIDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG51bGwsXG4gICAgICByZW5kZXJlclR5cGU6IG5vbk5vcm1hbGl6ZWRUZW1wbGF0ZU1ldGFkYXRhID8gdGhpcy5nZXRSZW5kZXJlclR5cGUoZGlyZWN0aXZlVHlwZSkgOiBudWxsLFxuICAgICAgY29tcG9uZW50RmFjdG9yeTogbnVsbFxuICAgIH0pO1xuICAgIGlmIChub25Ob3JtYWxpemVkVGVtcGxhdGVNZXRhZGF0YSkge1xuICAgICAgbWV0YWRhdGEuY29tcG9uZW50RmFjdG9yeSA9XG4gICAgICAgICAgdGhpcy5nZXRDb21wb25lbnRGYWN0b3J5KHNlbGVjdG9yLCBkaXJlY3RpdmVUeXBlLCBtZXRhZGF0YS5pbnB1dHMsIG1ldGFkYXRhLm91dHB1dHMpO1xuICAgIH1cbiAgICBjYWNoZUVudHJ5ID0ge21ldGFkYXRhLCBhbm5vdGF0aW9uOiBkaXJNZXRhfTtcbiAgICB0aGlzLl9ub25Ob3JtYWxpemVkRGlyZWN0aXZlQ2FjaGUuc2V0KGRpcmVjdGl2ZVR5cGUsIGNhY2hlRW50cnkpO1xuICAgIHJldHVybiBjYWNoZUVudHJ5O1xuICB9XG5cbiAgLyoqXG4gICAqIEdldHMgdGhlIG1ldGFkYXRhIGZvciB0aGUgZ2l2ZW4gZGlyZWN0aXZlLlxuICAgKiBUaGlzIGFzc3VtZXMgYGxvYWROZ01vZHVsZURpcmVjdGl2ZUFuZFBpcGVNZXRhZGF0YWAgaGFzIGJlZW4gY2FsbGVkIGZpcnN0LlxuICAgKi9cbiAgZ2V0RGlyZWN0aXZlTWV0YWRhdGEoZGlyZWN0aXZlVHlwZTogYW55KTogY3BsLkNvbXBpbGVEaXJlY3RpdmVNZXRhZGF0YSB7XG4gICAgY29uc3QgZGlyTWV0YSA9IHRoaXMuX2RpcmVjdGl2ZUNhY2hlLmdldChkaXJlY3RpdmVUeXBlKSAhO1xuICAgIGlmICghZGlyTWV0YSkge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgIGBJbGxlZ2FsIHN0YXRlOiBnZXREaXJlY3RpdmVNZXRhZGF0YSBjYW4gb25seSBiZSBjYWxsZWQgYWZ0ZXIgbG9hZE5nTW9kdWxlRGlyZWN0aXZlQW5kUGlwZU1ldGFkYXRhIGZvciBhIG1vZHVsZSB0aGF0IGRlY2xhcmVzIGl0LiBEaXJlY3RpdmUgJHtzdHJpbmdpZnlUeXBlKGRpcmVjdGl2ZVR5cGUpfS5gKSxcbiAgICAgICAgICBkaXJlY3RpdmVUeXBlKTtcbiAgICB9XG4gICAgcmV0dXJuIGRpck1ldGE7XG4gIH1cblxuICBnZXREaXJlY3RpdmVTdW1tYXJ5KGRpclR5cGU6IGFueSk6IGNwbC5Db21waWxlRGlyZWN0aXZlU3VtbWFyeSB7XG4gICAgY29uc3QgZGlyU3VtbWFyeSA9XG4gICAgICAgIDxjcGwuQ29tcGlsZURpcmVjdGl2ZVN1bW1hcnk+dGhpcy5fbG9hZFN1bW1hcnkoZGlyVHlwZSwgY3BsLkNvbXBpbGVTdW1tYXJ5S2luZC5EaXJlY3RpdmUpO1xuICAgIGlmICghZGlyU3VtbWFyeSkge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgIGBJbGxlZ2FsIHN0YXRlOiBDb3VsZCBub3QgbG9hZCB0aGUgc3VtbWFyeSBmb3IgZGlyZWN0aXZlICR7c3RyaW5naWZ5VHlwZShkaXJUeXBlKX0uYCksXG4gICAgICAgICAgZGlyVHlwZSk7XG4gICAgfVxuICAgIHJldHVybiBkaXJTdW1tYXJ5O1xuICB9XG5cbiAgaXNEaXJlY3RpdmUodHlwZTogYW55KSB7XG4gICAgcmV0dXJuICEhdGhpcy5fbG9hZFN1bW1hcnkodHlwZSwgY3BsLkNvbXBpbGVTdW1tYXJ5S2luZC5EaXJlY3RpdmUpIHx8XG4gICAgICAgIHRoaXMuX2RpcmVjdGl2ZVJlc29sdmVyLmlzRGlyZWN0aXZlKHR5cGUpO1xuICB9XG5cbiAgaXNBYnN0cmFjdERpcmVjdGl2ZSh0eXBlOiBhbnkpOiBib29sZWFuIHtcbiAgICBjb25zdCBzdW1tYXJ5ID1cbiAgICAgICAgdGhpcy5fbG9hZFN1bW1hcnkodHlwZSwgY3BsLkNvbXBpbGVTdW1tYXJ5S2luZC5EaXJlY3RpdmUpIGFzIGNwbC5Db21waWxlRGlyZWN0aXZlU3VtbWFyeTtcbiAgICBpZiAoc3VtbWFyeSAmJiAhc3VtbWFyeS5pc0NvbXBvbmVudCkge1xuICAgICAgcmV0dXJuICFzdW1tYXJ5LnNlbGVjdG9yO1xuICAgIH1cblxuICAgIGNvbnN0IG1ldGEgPSB0aGlzLl9kaXJlY3RpdmVSZXNvbHZlci5yZXNvbHZlKHR5cGUsIGZhbHNlKTtcbiAgICBpZiAobWV0YSAmJiAhY3JlYXRlQ29tcG9uZW50LmlzVHlwZU9mKG1ldGEpKSB7XG4gICAgICByZXR1cm4gIW1ldGEuc2VsZWN0b3I7XG4gICAgfVxuXG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgaXNQaXBlKHR5cGU6IGFueSkge1xuICAgIHJldHVybiAhIXRoaXMuX2xvYWRTdW1tYXJ5KHR5cGUsIGNwbC5Db21waWxlU3VtbWFyeUtpbmQuUGlwZSkgfHxcbiAgICAgICAgdGhpcy5fcGlwZVJlc29sdmVyLmlzUGlwZSh0eXBlKTtcbiAgfVxuXG4gIGlzTmdNb2R1bGUodHlwZTogYW55KSB7XG4gICAgcmV0dXJuICEhdGhpcy5fbG9hZFN1bW1hcnkodHlwZSwgY3BsLkNvbXBpbGVTdW1tYXJ5S2luZC5OZ01vZHVsZSkgfHxcbiAgICAgICAgdGhpcy5fbmdNb2R1bGVSZXNvbHZlci5pc05nTW9kdWxlKHR5cGUpO1xuICB9XG5cbiAgZ2V0TmdNb2R1bGVTdW1tYXJ5KG1vZHVsZVR5cGU6IGFueSwgYWxyZWFkeUNvbGxlY3Rpbmc6IFNldDxhbnk+fG51bGwgPSBudWxsKTpcbiAgICAgIGNwbC5Db21waWxlTmdNb2R1bGVTdW1tYXJ5fG51bGwge1xuICAgIGxldCBtb2R1bGVTdW1tYXJ5OiBjcGwuQ29tcGlsZU5nTW9kdWxlU3VtbWFyeXxudWxsID1cbiAgICAgICAgPGNwbC5Db21waWxlTmdNb2R1bGVTdW1tYXJ5PnRoaXMuX2xvYWRTdW1tYXJ5KG1vZHVsZVR5cGUsIGNwbC5Db21waWxlU3VtbWFyeUtpbmQuTmdNb2R1bGUpO1xuICAgIGlmICghbW9kdWxlU3VtbWFyeSkge1xuICAgICAgY29uc3QgbW9kdWxlTWV0YSA9IHRoaXMuZ2V0TmdNb2R1bGVNZXRhZGF0YShtb2R1bGVUeXBlLCBmYWxzZSwgYWxyZWFkeUNvbGxlY3RpbmcpO1xuICAgICAgbW9kdWxlU3VtbWFyeSA9IG1vZHVsZU1ldGEgPyBtb2R1bGVNZXRhLnRvU3VtbWFyeSgpIDogbnVsbDtcbiAgICAgIGlmIChtb2R1bGVTdW1tYXJ5KSB7XG4gICAgICAgIHRoaXMuX3N1bW1hcnlDYWNoZS5zZXQobW9kdWxlVHlwZSwgbW9kdWxlU3VtbWFyeSk7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiBtb2R1bGVTdW1tYXJ5O1xuICB9XG5cbiAgLyoqXG4gICAqIExvYWRzIHRoZSBkZWNsYXJlZCBkaXJlY3RpdmVzIGFuZCBwaXBlcyBvZiBhbiBOZ01vZHVsZS5cbiAgICovXG4gIGxvYWROZ01vZHVsZURpcmVjdGl2ZUFuZFBpcGVNZXRhZGF0YShtb2R1bGVUeXBlOiBhbnksIGlzU3luYzogYm9vbGVhbiwgdGhyb3dJZk5vdEZvdW5kID0gdHJ1ZSk6XG4gICAgICBQcm9taXNlPGFueT4ge1xuICAgIGNvbnN0IG5nTW9kdWxlID0gdGhpcy5nZXROZ01vZHVsZU1ldGFkYXRhKG1vZHVsZVR5cGUsIHRocm93SWZOb3RGb3VuZCk7XG4gICAgY29uc3QgbG9hZGluZzogUHJvbWlzZTxhbnk+W10gPSBbXTtcbiAgICBpZiAobmdNb2R1bGUpIHtcbiAgICAgIG5nTW9kdWxlLmRlY2xhcmVkRGlyZWN0aXZlcy5mb3JFYWNoKChpZCkgPT4ge1xuICAgICAgICBjb25zdCBwcm9taXNlID0gdGhpcy5sb2FkRGlyZWN0aXZlTWV0YWRhdGEobW9kdWxlVHlwZSwgaWQucmVmZXJlbmNlLCBpc1N5bmMpO1xuICAgICAgICBpZiAocHJvbWlzZSkge1xuICAgICAgICAgIGxvYWRpbmcucHVzaChwcm9taXNlKTtcbiAgICAgICAgfVxuICAgICAgfSk7XG4gICAgICBuZ01vZHVsZS5kZWNsYXJlZFBpcGVzLmZvckVhY2goKGlkKSA9PiB0aGlzLl9sb2FkUGlwZU1ldGFkYXRhKGlkLnJlZmVyZW5jZSkpO1xuICAgIH1cbiAgICByZXR1cm4gUHJvbWlzZS5hbGwobG9hZGluZyk7XG4gIH1cblxuICBnZXRTaGFsbG93TW9kdWxlTWV0YWRhdGEobW9kdWxlVHlwZTogYW55KTogY3BsLkNvbXBpbGVTaGFsbG93TW9kdWxlTWV0YWRhdGF8bnVsbCB7XG4gICAgbGV0IGNvbXBpbGVNZXRhID0gdGhpcy5fc2hhbGxvd01vZHVsZUNhY2hlLmdldChtb2R1bGVUeXBlKTtcbiAgICBpZiAoY29tcGlsZU1ldGEpIHtcbiAgICAgIHJldHVybiBjb21waWxlTWV0YTtcbiAgICB9XG5cbiAgICBjb25zdCBuZ01vZHVsZU1ldGEgPVxuICAgICAgICBmaW5kTGFzdCh0aGlzLl9yZWZsZWN0b3Iuc2hhbGxvd0Fubm90YXRpb25zKG1vZHVsZVR5cGUpLCBjcmVhdGVOZ01vZHVsZS5pc1R5cGVPZik7XG5cbiAgICBjb21waWxlTWV0YSA9IHtcbiAgICAgIHR5cGU6IHRoaXMuX2dldFR5cGVNZXRhZGF0YShtb2R1bGVUeXBlKSxcbiAgICAgIHJhd0V4cG9ydHM6IG5nTW9kdWxlTWV0YS5leHBvcnRzLFxuICAgICAgcmF3SW1wb3J0czogbmdNb2R1bGVNZXRhLmltcG9ydHMsXG4gICAgICByYXdQcm92aWRlcnM6IG5nTW9kdWxlTWV0YS5wcm92aWRlcnMsXG4gICAgfTtcblxuICAgIHRoaXMuX3NoYWxsb3dNb2R1bGVDYWNoZS5zZXQobW9kdWxlVHlwZSwgY29tcGlsZU1ldGEpO1xuICAgIHJldHVybiBjb21waWxlTWV0YTtcbiAgfVxuXG4gIGdldE5nTW9kdWxlTWV0YWRhdGEoXG4gICAgICBtb2R1bGVUeXBlOiBhbnksIHRocm93SWZOb3RGb3VuZCA9IHRydWUsXG4gICAgICBhbHJlYWR5Q29sbGVjdGluZzogU2V0PGFueT58bnVsbCA9IG51bGwpOiBjcGwuQ29tcGlsZU5nTW9kdWxlTWV0YWRhdGF8bnVsbCB7XG4gICAgbW9kdWxlVHlwZSA9IHJlc29sdmVGb3J3YXJkUmVmKG1vZHVsZVR5cGUpO1xuICAgIGxldCBjb21waWxlTWV0YSA9IHRoaXMuX25nTW9kdWxlQ2FjaGUuZ2V0KG1vZHVsZVR5cGUpO1xuICAgIGlmIChjb21waWxlTWV0YSkge1xuICAgICAgcmV0dXJuIGNvbXBpbGVNZXRhO1xuICAgIH1cbiAgICBjb25zdCBtZXRhID0gdGhpcy5fbmdNb2R1bGVSZXNvbHZlci5yZXNvbHZlKG1vZHVsZVR5cGUsIHRocm93SWZOb3RGb3VuZCk7XG4gICAgaWYgKCFtZXRhKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gICAgY29uc3QgZGVjbGFyZWREaXJlY3RpdmVzOiBjcGwuQ29tcGlsZUlkZW50aWZpZXJNZXRhZGF0YVtdID0gW107XG4gICAgY29uc3QgZXhwb3J0ZWROb25Nb2R1bGVJZGVudGlmaWVyczogY3BsLkNvbXBpbGVJZGVudGlmaWVyTWV0YWRhdGFbXSA9IFtdO1xuICAgIGNvbnN0IGRlY2xhcmVkUGlwZXM6IGNwbC5Db21waWxlSWRlbnRpZmllck1ldGFkYXRhW10gPSBbXTtcbiAgICBjb25zdCBpbXBvcnRlZE1vZHVsZXM6IGNwbC5Db21waWxlTmdNb2R1bGVTdW1tYXJ5W10gPSBbXTtcbiAgICBjb25zdCBleHBvcnRlZE1vZHVsZXM6IGNwbC5Db21waWxlTmdNb2R1bGVTdW1tYXJ5W10gPSBbXTtcbiAgICBjb25zdCBwcm92aWRlcnM6IGNwbC5Db21waWxlUHJvdmlkZXJNZXRhZGF0YVtdID0gW107XG4gICAgY29uc3QgZW50cnlDb21wb25lbnRzOiBjcGwuQ29tcGlsZUVudHJ5Q29tcG9uZW50TWV0YWRhdGFbXSA9IFtdO1xuICAgIGNvbnN0IGJvb3RzdHJhcENvbXBvbmVudHM6IGNwbC5Db21waWxlSWRlbnRpZmllck1ldGFkYXRhW10gPSBbXTtcbiAgICBjb25zdCBzY2hlbWFzOiBTY2hlbWFNZXRhZGF0YVtdID0gW107XG5cbiAgICBpZiAobWV0YS5pbXBvcnRzKSB7XG4gICAgICBmbGF0dGVuQW5kRGVkdXBlQXJyYXkobWV0YS5pbXBvcnRzKS5mb3JFYWNoKChpbXBvcnRlZFR5cGUpID0+IHtcbiAgICAgICAgbGV0IGltcG9ydGVkTW9kdWxlVHlwZTogVHlwZSA9IHVuZGVmaW5lZCAhO1xuICAgICAgICBpZiAoaXNWYWxpZFR5cGUoaW1wb3J0ZWRUeXBlKSkge1xuICAgICAgICAgIGltcG9ydGVkTW9kdWxlVHlwZSA9IGltcG9ydGVkVHlwZTtcbiAgICAgICAgfSBlbHNlIGlmIChpbXBvcnRlZFR5cGUgJiYgaW1wb3J0ZWRUeXBlLm5nTW9kdWxlKSB7XG4gICAgICAgICAgY29uc3QgbW9kdWxlV2l0aFByb3ZpZGVyczogTW9kdWxlV2l0aFByb3ZpZGVycyA9IGltcG9ydGVkVHlwZTtcbiAgICAgICAgICBpbXBvcnRlZE1vZHVsZVR5cGUgPSBtb2R1bGVXaXRoUHJvdmlkZXJzLm5nTW9kdWxlO1xuICAgICAgICAgIGlmIChtb2R1bGVXaXRoUHJvdmlkZXJzLnByb3ZpZGVycykge1xuICAgICAgICAgICAgcHJvdmlkZXJzLnB1c2goLi4udGhpcy5fZ2V0UHJvdmlkZXJzTWV0YWRhdGEoXG4gICAgICAgICAgICAgICAgbW9kdWxlV2l0aFByb3ZpZGVycy5wcm92aWRlcnMsIGVudHJ5Q29tcG9uZW50cyxcbiAgICAgICAgICAgICAgICBgcHJvdmlkZXIgZm9yIHRoZSBOZ01vZHVsZSAnJHtzdHJpbmdpZnlUeXBlKGltcG9ydGVkTW9kdWxlVHlwZSl9J2AsIFtdLFxuICAgICAgICAgICAgICAgIGltcG9ydGVkVHlwZSkpO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIGlmIChpbXBvcnRlZE1vZHVsZVR5cGUpIHtcbiAgICAgICAgICBpZiAodGhpcy5fY2hlY2tTZWxmSW1wb3J0KG1vZHVsZVR5cGUsIGltcG9ydGVkTW9kdWxlVHlwZSkpIHJldHVybjtcbiAgICAgICAgICBpZiAoIWFscmVhZHlDb2xsZWN0aW5nKSBhbHJlYWR5Q29sbGVjdGluZyA9IG5ldyBTZXQoKTtcbiAgICAgICAgICBpZiAoYWxyZWFkeUNvbGxlY3RpbmcuaGFzKGltcG9ydGVkTW9kdWxlVHlwZSkpIHtcbiAgICAgICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICAgICAgICBgJHt0aGlzLl9nZXRUeXBlRGVzY3JpcHRvcihpbXBvcnRlZE1vZHVsZVR5cGUpfSAnJHtzdHJpbmdpZnlUeXBlKGltcG9ydGVkVHlwZSl9JyBpcyBpbXBvcnRlZCByZWN1cnNpdmVseSBieSB0aGUgbW9kdWxlICcke3N0cmluZ2lmeVR5cGUobW9kdWxlVHlwZSl9Jy5gKSxcbiAgICAgICAgICAgICAgICBtb2R1bGVUeXBlKTtcbiAgICAgICAgICAgIHJldHVybjtcbiAgICAgICAgICB9XG4gICAgICAgICAgYWxyZWFkeUNvbGxlY3RpbmcuYWRkKGltcG9ydGVkTW9kdWxlVHlwZSk7XG4gICAgICAgICAgY29uc3QgaW1wb3J0ZWRNb2R1bGVTdW1tYXJ5ID1cbiAgICAgICAgICAgICAgdGhpcy5nZXROZ01vZHVsZVN1bW1hcnkoaW1wb3J0ZWRNb2R1bGVUeXBlLCBhbHJlYWR5Q29sbGVjdGluZyk7XG4gICAgICAgICAgYWxyZWFkeUNvbGxlY3RpbmcuZGVsZXRlKGltcG9ydGVkTW9kdWxlVHlwZSk7XG4gICAgICAgICAgaWYgKCFpbXBvcnRlZE1vZHVsZVN1bW1hcnkpIHtcbiAgICAgICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICAgICAgICBgVW5leHBlY3RlZCAke3RoaXMuX2dldFR5cGVEZXNjcmlwdG9yKGltcG9ydGVkVHlwZSl9ICcke3N0cmluZ2lmeVR5cGUoaW1wb3J0ZWRUeXBlKX0nIGltcG9ydGVkIGJ5IHRoZSBtb2R1bGUgJyR7c3RyaW5naWZ5VHlwZShtb2R1bGVUeXBlKX0nLiBQbGVhc2UgYWRkIGEgQE5nTW9kdWxlIGFubm90YXRpb24uYCksXG4gICAgICAgICAgICAgICAgbW9kdWxlVHlwZSk7XG4gICAgICAgICAgICByZXR1cm47XG4gICAgICAgICAgfVxuICAgICAgICAgIGltcG9ydGVkTW9kdWxlcy5wdXNoKGltcG9ydGVkTW9kdWxlU3VtbWFyeSk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICAgICAgYFVuZXhwZWN0ZWQgdmFsdWUgJyR7c3RyaW5naWZ5VHlwZShpbXBvcnRlZFR5cGUpfScgaW1wb3J0ZWQgYnkgdGhlIG1vZHVsZSAnJHtzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfSdgKSxcbiAgICAgICAgICAgICAgbW9kdWxlVHlwZSk7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICB9XG5cbiAgICBpZiAobWV0YS5leHBvcnRzKSB7XG4gICAgICBmbGF0dGVuQW5kRGVkdXBlQXJyYXkobWV0YS5leHBvcnRzKS5mb3JFYWNoKChleHBvcnRlZFR5cGUpID0+IHtcbiAgICAgICAgaWYgKCFpc1ZhbGlkVHlwZShleHBvcnRlZFR5cGUpKSB7XG4gICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICAgICAgYFVuZXhwZWN0ZWQgdmFsdWUgJyR7c3RyaW5naWZ5VHlwZShleHBvcnRlZFR5cGUpfScgZXhwb3J0ZWQgYnkgdGhlIG1vZHVsZSAnJHtzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfSdgKSxcbiAgICAgICAgICAgICAgbW9kdWxlVHlwZSk7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9XG4gICAgICAgIGlmICghYWxyZWFkeUNvbGxlY3RpbmcpIGFscmVhZHlDb2xsZWN0aW5nID0gbmV3IFNldCgpO1xuICAgICAgICBpZiAoYWxyZWFkeUNvbGxlY3RpbmcuaGFzKGV4cG9ydGVkVHlwZSkpIHtcbiAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgICAgICBgJHt0aGlzLl9nZXRUeXBlRGVzY3JpcHRvcihleHBvcnRlZFR5cGUpfSAnJHtzdHJpbmdpZnkoZXhwb3J0ZWRUeXBlKX0nIGlzIGV4cG9ydGVkIHJlY3Vyc2l2ZWx5IGJ5IHRoZSBtb2R1bGUgJyR7c3RyaW5naWZ5VHlwZShtb2R1bGVUeXBlKX0nYCksXG4gICAgICAgICAgICAgIG1vZHVsZVR5cGUpO1xuICAgICAgICAgIHJldHVybjtcbiAgICAgICAgfVxuICAgICAgICBhbHJlYWR5Q29sbGVjdGluZy5hZGQoZXhwb3J0ZWRUeXBlKTtcbiAgICAgICAgY29uc3QgZXhwb3J0ZWRNb2R1bGVTdW1tYXJ5ID0gdGhpcy5nZXROZ01vZHVsZVN1bW1hcnkoZXhwb3J0ZWRUeXBlLCBhbHJlYWR5Q29sbGVjdGluZyk7XG4gICAgICAgIGFscmVhZHlDb2xsZWN0aW5nLmRlbGV0ZShleHBvcnRlZFR5cGUpO1xuICAgICAgICBpZiAoZXhwb3J0ZWRNb2R1bGVTdW1tYXJ5KSB7XG4gICAgICAgICAgZXhwb3J0ZWRNb2R1bGVzLnB1c2goZXhwb3J0ZWRNb2R1bGVTdW1tYXJ5KTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICBleHBvcnRlZE5vbk1vZHVsZUlkZW50aWZpZXJzLnB1c2godGhpcy5fZ2V0SWRlbnRpZmllck1ldGFkYXRhKGV4cG9ydGVkVHlwZSkpO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICB9XG5cbiAgICAvLyBOb3RlOiBUaGlzIHdpbGwgYmUgbW9kaWZpZWQgbGF0ZXIsIHNvIHdlIHJlbHkgb25cbiAgICAvLyBnZXR0aW5nIGEgbmV3IGluc3RhbmNlIGV2ZXJ5IHRpbWUhXG4gICAgY29uc3QgdHJhbnNpdGl2ZU1vZHVsZSA9IHRoaXMuX2dldFRyYW5zaXRpdmVOZ01vZHVsZU1ldGFkYXRhKGltcG9ydGVkTW9kdWxlcywgZXhwb3J0ZWRNb2R1bGVzKTtcbiAgICBpZiAobWV0YS5kZWNsYXJhdGlvbnMpIHtcbiAgICAgIGZsYXR0ZW5BbmREZWR1cGVBcnJheShtZXRhLmRlY2xhcmF0aW9ucykuZm9yRWFjaCgoZGVjbGFyZWRUeXBlKSA9PiB7XG4gICAgICAgIGlmICghaXNWYWxpZFR5cGUoZGVjbGFyZWRUeXBlKSkge1xuICAgICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgICAgICBzeW50YXhFcnJvcihcbiAgICAgICAgICAgICAgICAgIGBVbmV4cGVjdGVkIHZhbHVlICcke3N0cmluZ2lmeVR5cGUoZGVjbGFyZWRUeXBlKX0nIGRlY2xhcmVkIGJ5IHRoZSBtb2R1bGUgJyR7c3RyaW5naWZ5VHlwZShtb2R1bGVUeXBlKX0nYCksXG4gICAgICAgICAgICAgIG1vZHVsZVR5cGUpO1xuICAgICAgICAgIHJldHVybjtcbiAgICAgICAgfVxuICAgICAgICBjb25zdCBkZWNsYXJlZElkZW50aWZpZXIgPSB0aGlzLl9nZXRJZGVudGlmaWVyTWV0YWRhdGEoZGVjbGFyZWRUeXBlKTtcbiAgICAgICAgaWYgKHRoaXMuaXNEaXJlY3RpdmUoZGVjbGFyZWRUeXBlKSkge1xuICAgICAgICAgIGlmICh0aGlzLmlzQWJzdHJhY3REaXJlY3RpdmUoZGVjbGFyZWRUeXBlKSkge1xuICAgICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgICAgICAgIGBEaXJlY3RpdmUgJHtzdHJpbmdpZnlUeXBlKGRlY2xhcmVkVHlwZSl9IGhhcyBubyBzZWxlY3RvciwgcGxlYXNlIGFkZCBpdCFgKSxcbiAgICAgICAgICAgICAgICBkZWNsYXJlZFR5cGUpO1xuICAgICAgICAgIH1cbiAgICAgICAgICB0cmFuc2l0aXZlTW9kdWxlLmFkZERpcmVjdGl2ZShkZWNsYXJlZElkZW50aWZpZXIpO1xuICAgICAgICAgIGRlY2xhcmVkRGlyZWN0aXZlcy5wdXNoKGRlY2xhcmVkSWRlbnRpZmllcik7XG4gICAgICAgICAgdGhpcy5fYWRkVHlwZVRvTW9kdWxlKGRlY2xhcmVkVHlwZSwgbW9kdWxlVHlwZSk7XG4gICAgICAgIH0gZWxzZSBpZiAodGhpcy5pc1BpcGUoZGVjbGFyZWRUeXBlKSkge1xuICAgICAgICAgIHRyYW5zaXRpdmVNb2R1bGUuYWRkUGlwZShkZWNsYXJlZElkZW50aWZpZXIpO1xuICAgICAgICAgIHRyYW5zaXRpdmVNb2R1bGUucGlwZXMucHVzaChkZWNsYXJlZElkZW50aWZpZXIpO1xuICAgICAgICAgIGRlY2xhcmVkUGlwZXMucHVzaChkZWNsYXJlZElkZW50aWZpZXIpO1xuICAgICAgICAgIHRoaXMuX2FkZFR5cGVUb01vZHVsZShkZWNsYXJlZFR5cGUsIG1vZHVsZVR5cGUpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgICAgICBzeW50YXhFcnJvcihcbiAgICAgICAgICAgICAgICAgIGBVbmV4cGVjdGVkICR7dGhpcy5fZ2V0VHlwZURlc2NyaXB0b3IoZGVjbGFyZWRUeXBlKX0gJyR7c3RyaW5naWZ5VHlwZShkZWNsYXJlZFR5cGUpfScgZGVjbGFyZWQgYnkgdGhlIG1vZHVsZSAnJHtzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfScuIFBsZWFzZSBhZGQgYSBAUGlwZS9ARGlyZWN0aXZlL0BDb21wb25lbnQgYW5ub3RhdGlvbi5gKSxcbiAgICAgICAgICAgICAgbW9kdWxlVHlwZSk7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICB9XG5cbiAgICBjb25zdCBleHBvcnRlZERpcmVjdGl2ZXM6IGNwbC5Db21waWxlSWRlbnRpZmllck1ldGFkYXRhW10gPSBbXTtcbiAgICBjb25zdCBleHBvcnRlZFBpcGVzOiBjcGwuQ29tcGlsZUlkZW50aWZpZXJNZXRhZGF0YVtdID0gW107XG4gICAgZXhwb3J0ZWROb25Nb2R1bGVJZGVudGlmaWVycy5mb3JFYWNoKChleHBvcnRlZElkKSA9PiB7XG4gICAgICBpZiAodHJhbnNpdGl2ZU1vZHVsZS5kaXJlY3RpdmVzU2V0LmhhcyhleHBvcnRlZElkLnJlZmVyZW5jZSkpIHtcbiAgICAgICAgZXhwb3J0ZWREaXJlY3RpdmVzLnB1c2goZXhwb3J0ZWRJZCk7XG4gICAgICAgIHRyYW5zaXRpdmVNb2R1bGUuYWRkRXhwb3J0ZWREaXJlY3RpdmUoZXhwb3J0ZWRJZCk7XG4gICAgICB9IGVsc2UgaWYgKHRyYW5zaXRpdmVNb2R1bGUucGlwZXNTZXQuaGFzKGV4cG9ydGVkSWQucmVmZXJlbmNlKSkge1xuICAgICAgICBleHBvcnRlZFBpcGVzLnB1c2goZXhwb3J0ZWRJZCk7XG4gICAgICAgIHRyYW5zaXRpdmVNb2R1bGUuYWRkRXhwb3J0ZWRQaXBlKGV4cG9ydGVkSWQpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICBzeW50YXhFcnJvcihcbiAgICAgICAgICAgICAgICBgQ2FuJ3QgZXhwb3J0ICR7dGhpcy5fZ2V0VHlwZURlc2NyaXB0b3IoZXhwb3J0ZWRJZC5yZWZlcmVuY2UpfSAke3N0cmluZ2lmeVR5cGUoZXhwb3J0ZWRJZC5yZWZlcmVuY2UpfSBmcm9tICR7c3RyaW5naWZ5VHlwZShtb2R1bGVUeXBlKX0gYXMgaXQgd2FzIG5laXRoZXIgZGVjbGFyZWQgbm9yIGltcG9ydGVkIWApLFxuICAgICAgICAgICAgbW9kdWxlVHlwZSk7XG4gICAgICAgIHJldHVybjtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIC8vIFRoZSBwcm92aWRlcnMgb2YgdGhlIG1vZHVsZSBoYXZlIHRvIGdvIGxhc3RcbiAgICAvLyBzbyB0aGF0IHRoZXkgb3ZlcndyaXRlIGFueSBvdGhlciBwcm92aWRlciB3ZSBhbHJlYWR5IGFkZGVkLlxuICAgIGlmIChtZXRhLnByb3ZpZGVycykge1xuICAgICAgcHJvdmlkZXJzLnB1c2goLi4udGhpcy5fZ2V0UHJvdmlkZXJzTWV0YWRhdGEoXG4gICAgICAgICAgbWV0YS5wcm92aWRlcnMsIGVudHJ5Q29tcG9uZW50cyxcbiAgICAgICAgICBgcHJvdmlkZXIgZm9yIHRoZSBOZ01vZHVsZSAnJHtzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfSdgLCBbXSwgbW9kdWxlVHlwZSkpO1xuICAgIH1cblxuICAgIGlmIChtZXRhLmVudHJ5Q29tcG9uZW50cykge1xuICAgICAgZW50cnlDb21wb25lbnRzLnB1c2goLi4uZmxhdHRlbkFuZERlZHVwZUFycmF5KG1ldGEuZW50cnlDb21wb25lbnRzKVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5tYXAodHlwZSA9PiB0aGlzLl9nZXRFbnRyeUNvbXBvbmVudE1ldGFkYXRhKHR5cGUpICEpKTtcbiAgICB9XG5cbiAgICBpZiAobWV0YS5ib290c3RyYXApIHtcbiAgICAgIGZsYXR0ZW5BbmREZWR1cGVBcnJheShtZXRhLmJvb3RzdHJhcCkuZm9yRWFjaCh0eXBlID0+IHtcbiAgICAgICAgaWYgKCFpc1ZhbGlkVHlwZSh0eXBlKSkge1xuICAgICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgICAgICBzeW50YXhFcnJvcihcbiAgICAgICAgICAgICAgICAgIGBVbmV4cGVjdGVkIHZhbHVlICcke3N0cmluZ2lmeVR5cGUodHlwZSl9JyB1c2VkIGluIHRoZSBib290c3RyYXAgcHJvcGVydHkgb2YgbW9kdWxlICcke3N0cmluZ2lmeVR5cGUobW9kdWxlVHlwZSl9J2ApLFxuICAgICAgICAgICAgICBtb2R1bGVUeXBlKTtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cbiAgICAgICAgYm9vdHN0cmFwQ29tcG9uZW50cy5wdXNoKHRoaXMuX2dldElkZW50aWZpZXJNZXRhZGF0YSh0eXBlKSk7XG4gICAgICB9KTtcbiAgICB9XG5cbiAgICBlbnRyeUNvbXBvbmVudHMucHVzaChcbiAgICAgICAgLi4uYm9vdHN0cmFwQ29tcG9uZW50cy5tYXAodHlwZSA9PiB0aGlzLl9nZXRFbnRyeUNvbXBvbmVudE1ldGFkYXRhKHR5cGUucmVmZXJlbmNlKSAhKSk7XG5cbiAgICBpZiAobWV0YS5zY2hlbWFzKSB7XG4gICAgICBzY2hlbWFzLnB1c2goLi4uZmxhdHRlbkFuZERlZHVwZUFycmF5KG1ldGEuc2NoZW1hcykpO1xuICAgIH1cblxuICAgIGNvbXBpbGVNZXRhID0gbmV3IGNwbC5Db21waWxlTmdNb2R1bGVNZXRhZGF0YSh7XG4gICAgICB0eXBlOiB0aGlzLl9nZXRUeXBlTWV0YWRhdGEobW9kdWxlVHlwZSksXG4gICAgICBwcm92aWRlcnMsXG4gICAgICBlbnRyeUNvbXBvbmVudHMsXG4gICAgICBib290c3RyYXBDb21wb25lbnRzLFxuICAgICAgc2NoZW1hcyxcbiAgICAgIGRlY2xhcmVkRGlyZWN0aXZlcyxcbiAgICAgIGV4cG9ydGVkRGlyZWN0aXZlcyxcbiAgICAgIGRlY2xhcmVkUGlwZXMsXG4gICAgICBleHBvcnRlZFBpcGVzLFxuICAgICAgaW1wb3J0ZWRNb2R1bGVzLFxuICAgICAgZXhwb3J0ZWRNb2R1bGVzLFxuICAgICAgdHJhbnNpdGl2ZU1vZHVsZSxcbiAgICAgIGlkOiBtZXRhLmlkIHx8IG51bGwsXG4gICAgfSk7XG5cbiAgICBlbnRyeUNvbXBvbmVudHMuZm9yRWFjaCgoaWQpID0+IHRyYW5zaXRpdmVNb2R1bGUuYWRkRW50cnlDb21wb25lbnQoaWQpKTtcbiAgICBwcm92aWRlcnMuZm9yRWFjaCgocHJvdmlkZXIpID0+IHRyYW5zaXRpdmVNb2R1bGUuYWRkUHJvdmlkZXIocHJvdmlkZXIsIGNvbXBpbGVNZXRhICEudHlwZSkpO1xuICAgIHRyYW5zaXRpdmVNb2R1bGUuYWRkTW9kdWxlKGNvbXBpbGVNZXRhLnR5cGUpO1xuICAgIHRoaXMuX25nTW9kdWxlQ2FjaGUuc2V0KG1vZHVsZVR5cGUsIGNvbXBpbGVNZXRhKTtcbiAgICByZXR1cm4gY29tcGlsZU1ldGE7XG4gIH1cblxuICBwcml2YXRlIF9jaGVja1NlbGZJbXBvcnQobW9kdWxlVHlwZTogVHlwZSwgaW1wb3J0ZWRNb2R1bGVUeXBlOiBUeXBlKTogYm9vbGVhbiB7XG4gICAgaWYgKG1vZHVsZVR5cGUgPT09IGltcG9ydGVkTW9kdWxlVHlwZSkge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgc3ludGF4RXJyb3IoYCcke3N0cmluZ2lmeVR5cGUobW9kdWxlVHlwZSl9JyBtb2R1bGUgY2FuJ3QgaW1wb3J0IGl0c2VsZmApLCBtb2R1bGVUeXBlKTtcbiAgICAgIHJldHVybiB0cnVlO1xuICAgIH1cbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cblxuICBwcml2YXRlIF9nZXRUeXBlRGVzY3JpcHRvcih0eXBlOiBUeXBlKTogc3RyaW5nIHtcbiAgICBpZiAoaXNWYWxpZFR5cGUodHlwZSkpIHtcbiAgICAgIGlmICh0aGlzLmlzRGlyZWN0aXZlKHR5cGUpKSB7XG4gICAgICAgIHJldHVybiAnZGlyZWN0aXZlJztcbiAgICAgIH1cblxuICAgICAgaWYgKHRoaXMuaXNQaXBlKHR5cGUpKSB7XG4gICAgICAgIHJldHVybiAncGlwZSc7XG4gICAgICB9XG5cbiAgICAgIGlmICh0aGlzLmlzTmdNb2R1bGUodHlwZSkpIHtcbiAgICAgICAgcmV0dXJuICdtb2R1bGUnO1xuICAgICAgfVxuICAgIH1cblxuICAgIGlmICgodHlwZSBhcyBhbnkpLnByb3ZpZGUpIHtcbiAgICAgIHJldHVybiAncHJvdmlkZXInO1xuICAgIH1cblxuICAgIHJldHVybiAndmFsdWUnO1xuICB9XG5cblxuICBwcml2YXRlIF9hZGRUeXBlVG9Nb2R1bGUodHlwZTogVHlwZSwgbW9kdWxlVHlwZTogVHlwZSkge1xuICAgIGNvbnN0IG9sZE1vZHVsZSA9IHRoaXMuX25nTW9kdWxlT2ZUeXBlcy5nZXQodHlwZSk7XG4gICAgaWYgKG9sZE1vZHVsZSAmJiBvbGRNb2R1bGUgIT09IG1vZHVsZVR5cGUpIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICBgVHlwZSAke3N0cmluZ2lmeVR5cGUodHlwZSl9IGlzIHBhcnQgb2YgdGhlIGRlY2xhcmF0aW9ucyBvZiAyIG1vZHVsZXM6ICR7c3RyaW5naWZ5VHlwZShvbGRNb2R1bGUpfSBhbmQgJHtzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfSEgYCArXG4gICAgICAgICAgICAgIGBQbGVhc2UgY29uc2lkZXIgbW92aW5nICR7c3RyaW5naWZ5VHlwZSh0eXBlKX0gdG8gYSBoaWdoZXIgbW9kdWxlIHRoYXQgaW1wb3J0cyAke3N0cmluZ2lmeVR5cGUob2xkTW9kdWxlKX0gYW5kICR7c3RyaW5naWZ5VHlwZShtb2R1bGVUeXBlKX0uIGAgK1xuICAgICAgICAgICAgICBgWW91IGNhbiBhbHNvIGNyZWF0ZSBhIG5ldyBOZ01vZHVsZSB0aGF0IGV4cG9ydHMgYW5kIGluY2x1ZGVzICR7c3RyaW5naWZ5VHlwZSh0eXBlKX0gdGhlbiBpbXBvcnQgdGhhdCBOZ01vZHVsZSBpbiAke3N0cmluZ2lmeVR5cGUob2xkTW9kdWxlKX0gYW5kICR7c3RyaW5naWZ5VHlwZShtb2R1bGVUeXBlKX0uYCksXG4gICAgICAgICAgbW9kdWxlVHlwZSk7XG4gICAgICByZXR1cm47XG4gICAgfVxuICAgIHRoaXMuX25nTW9kdWxlT2ZUeXBlcy5zZXQodHlwZSwgbW9kdWxlVHlwZSk7XG4gIH1cblxuICBwcml2YXRlIF9nZXRUcmFuc2l0aXZlTmdNb2R1bGVNZXRhZGF0YShcbiAgICAgIGltcG9ydGVkTW9kdWxlczogY3BsLkNvbXBpbGVOZ01vZHVsZVN1bW1hcnlbXSxcbiAgICAgIGV4cG9ydGVkTW9kdWxlczogY3BsLkNvbXBpbGVOZ01vZHVsZVN1bW1hcnlbXSk6IGNwbC5UcmFuc2l0aXZlQ29tcGlsZU5nTW9kdWxlTWV0YWRhdGEge1xuICAgIC8vIGNvbGxlY3QgYHByb3ZpZGVyc2AgLyBgZW50cnlDb21wb25lbnRzYCBmcm9tIGFsbCBpbXBvcnRlZCBhbmQgYWxsIGV4cG9ydGVkIG1vZHVsZXNcbiAgICBjb25zdCByZXN1bHQgPSBuZXcgY3BsLlRyYW5zaXRpdmVDb21waWxlTmdNb2R1bGVNZXRhZGF0YSgpO1xuICAgIGNvbnN0IG1vZHVsZXNCeVRva2VuID0gbmV3IE1hcDxhbnksIFNldDxhbnk+PigpO1xuICAgIGltcG9ydGVkTW9kdWxlcy5jb25jYXQoZXhwb3J0ZWRNb2R1bGVzKS5mb3JFYWNoKChtb2RTdW1tYXJ5KSA9PiB7XG4gICAgICBtb2RTdW1tYXJ5Lm1vZHVsZXMuZm9yRWFjaCgobW9kKSA9PiByZXN1bHQuYWRkTW9kdWxlKG1vZCkpO1xuICAgICAgbW9kU3VtbWFyeS5lbnRyeUNvbXBvbmVudHMuZm9yRWFjaCgoY29tcCkgPT4gcmVzdWx0LmFkZEVudHJ5Q29tcG9uZW50KGNvbXApKTtcbiAgICAgIGNvbnN0IGFkZGVkVG9rZW5zID0gbmV3IFNldDxhbnk+KCk7XG4gICAgICBtb2RTdW1tYXJ5LnByb3ZpZGVycy5mb3JFYWNoKChlbnRyeSkgPT4ge1xuICAgICAgICBjb25zdCB0b2tlblJlZiA9IGNwbC50b2tlblJlZmVyZW5jZShlbnRyeS5wcm92aWRlci50b2tlbik7XG4gICAgICAgIGxldCBwcmV2TW9kdWxlcyA9IG1vZHVsZXNCeVRva2VuLmdldCh0b2tlblJlZik7XG4gICAgICAgIGlmICghcHJldk1vZHVsZXMpIHtcbiAgICAgICAgICBwcmV2TW9kdWxlcyA9IG5ldyBTZXQ8YW55PigpO1xuICAgICAgICAgIG1vZHVsZXNCeVRva2VuLnNldCh0b2tlblJlZiwgcHJldk1vZHVsZXMpO1xuICAgICAgICB9XG4gICAgICAgIGNvbnN0IG1vZHVsZVJlZiA9IGVudHJ5Lm1vZHVsZS5yZWZlcmVuY2U7XG4gICAgICAgIC8vIE5vdGU6IHRoZSBwcm92aWRlcnMgb2Ygb25lIG1vZHVsZSBtYXkgc3RpbGwgY29udGFpbiBtdWx0aXBsZSBwcm92aWRlcnNcbiAgICAgICAgLy8gcGVyIHRva2VuIChlLmcuIGZvciBtdWx0aSBwcm92aWRlcnMpLCBhbmQgd2UgbmVlZCB0byBwcmVzZXJ2ZSB0aGVzZS5cbiAgICAgICAgaWYgKGFkZGVkVG9rZW5zLmhhcyh0b2tlblJlZikgfHwgIXByZXZNb2R1bGVzLmhhcyhtb2R1bGVSZWYpKSB7XG4gICAgICAgICAgcHJldk1vZHVsZXMuYWRkKG1vZHVsZVJlZik7XG4gICAgICAgICAgYWRkZWRUb2tlbnMuYWRkKHRva2VuUmVmKTtcbiAgICAgICAgICByZXN1bHQuYWRkUHJvdmlkZXIoZW50cnkucHJvdmlkZXIsIGVudHJ5Lm1vZHVsZSk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgIH0pO1xuICAgIGV4cG9ydGVkTW9kdWxlcy5mb3JFYWNoKChtb2RTdW1tYXJ5KSA9PiB7XG4gICAgICBtb2RTdW1tYXJ5LmV4cG9ydGVkRGlyZWN0aXZlcy5mb3JFYWNoKChpZCkgPT4gcmVzdWx0LmFkZEV4cG9ydGVkRGlyZWN0aXZlKGlkKSk7XG4gICAgICBtb2RTdW1tYXJ5LmV4cG9ydGVkUGlwZXMuZm9yRWFjaCgoaWQpID0+IHJlc3VsdC5hZGRFeHBvcnRlZFBpcGUoaWQpKTtcbiAgICB9KTtcbiAgICBpbXBvcnRlZE1vZHVsZXMuZm9yRWFjaCgobW9kU3VtbWFyeSkgPT4ge1xuICAgICAgbW9kU3VtbWFyeS5leHBvcnRlZERpcmVjdGl2ZXMuZm9yRWFjaCgoaWQpID0+IHJlc3VsdC5hZGREaXJlY3RpdmUoaWQpKTtcbiAgICAgIG1vZFN1bW1hcnkuZXhwb3J0ZWRQaXBlcy5mb3JFYWNoKChpZCkgPT4gcmVzdWx0LmFkZFBpcGUoaWQpKTtcbiAgICB9KTtcbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0SWRlbnRpZmllck1ldGFkYXRhKHR5cGU6IFR5cGUpOiBjcGwuQ29tcGlsZUlkZW50aWZpZXJNZXRhZGF0YSB7XG4gICAgdHlwZSA9IHJlc29sdmVGb3J3YXJkUmVmKHR5cGUpO1xuICAgIHJldHVybiB7cmVmZXJlbmNlOiB0eXBlfTtcbiAgfVxuXG4gIGlzSW5qZWN0YWJsZSh0eXBlOiBhbnkpOiBib29sZWFuIHtcbiAgICBjb25zdCBhbm5vdGF0aW9ucyA9IHRoaXMuX3JlZmxlY3Rvci50cnlBbm5vdGF0aW9ucyh0eXBlKTtcbiAgICByZXR1cm4gYW5ub3RhdGlvbnMuc29tZShhbm4gPT4gY3JlYXRlSW5qZWN0YWJsZS5pc1R5cGVPZihhbm4pKTtcbiAgfVxuXG4gIGdldEluamVjdGFibGVTdW1tYXJ5KHR5cGU6IGFueSk6IGNwbC5Db21waWxlVHlwZVN1bW1hcnkge1xuICAgIHJldHVybiB7XG4gICAgICBzdW1tYXJ5S2luZDogY3BsLkNvbXBpbGVTdW1tYXJ5S2luZC5JbmplY3RhYmxlLFxuICAgICAgdHlwZTogdGhpcy5fZ2V0VHlwZU1ldGFkYXRhKHR5cGUsIG51bGwsIGZhbHNlKVxuICAgIH07XG4gIH1cblxuICBnZXRJbmplY3RhYmxlTWV0YWRhdGEoXG4gICAgICB0eXBlOiBhbnksIGRlcGVuZGVuY2llczogYW55W118bnVsbCA9IG51bGwsXG4gICAgICB0aHJvd09uVW5rbm93bkRlcHM6IGJvb2xlYW4gPSB0cnVlKTogY3BsLkNvbXBpbGVJbmplY3RhYmxlTWV0YWRhdGF8bnVsbCB7XG4gICAgY29uc3QgdHlwZVN1bW1hcnkgPSB0aGlzLl9sb2FkU3VtbWFyeSh0eXBlLCBjcGwuQ29tcGlsZVN1bW1hcnlLaW5kLkluamVjdGFibGUpO1xuICAgIGNvbnN0IHR5cGVNZXRhZGF0YSA9IHR5cGVTdW1tYXJ5ID9cbiAgICAgICAgdHlwZVN1bW1hcnkudHlwZSA6XG4gICAgICAgIHRoaXMuX2dldFR5cGVNZXRhZGF0YSh0eXBlLCBkZXBlbmRlbmNpZXMsIHRocm93T25Vbmtub3duRGVwcyk7XG5cbiAgICBjb25zdCBhbm5vdGF0aW9uczogSW5qZWN0YWJsZVtdID1cbiAgICAgICAgdGhpcy5fcmVmbGVjdG9yLmFubm90YXRpb25zKHR5cGUpLmZpbHRlcihhbm4gPT4gY3JlYXRlSW5qZWN0YWJsZS5pc1R5cGVPZihhbm4pKTtcblxuICAgIGlmIChhbm5vdGF0aW9ucy5sZW5ndGggPT09IDApIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIGNvbnN0IG1ldGEgPSBhbm5vdGF0aW9uc1thbm5vdGF0aW9ucy5sZW5ndGggLSAxXTtcbiAgICByZXR1cm4ge1xuICAgICAgc3ltYm9sOiB0eXBlLFxuICAgICAgdHlwZTogdHlwZU1ldGFkYXRhLFxuICAgICAgcHJvdmlkZWRJbjogbWV0YS5wcm92aWRlZEluLFxuICAgICAgdXNlVmFsdWU6IG1ldGEudXNlVmFsdWUsXG4gICAgICB1c2VDbGFzczogbWV0YS51c2VDbGFzcyxcbiAgICAgIHVzZUV4aXN0aW5nOiBtZXRhLnVzZUV4aXN0aW5nLFxuICAgICAgdXNlRmFjdG9yeTogbWV0YS51c2VGYWN0b3J5LFxuICAgICAgZGVwczogbWV0YS5kZXBzLFxuICAgIH07XG4gIH1cblxuICBwcml2YXRlIF9nZXRUeXBlTWV0YWRhdGEodHlwZTogVHlwZSwgZGVwZW5kZW5jaWVzOiBhbnlbXXxudWxsID0gbnVsbCwgdGhyb3dPblVua25vd25EZXBzID0gdHJ1ZSk6XG4gICAgICBjcGwuQ29tcGlsZVR5cGVNZXRhZGF0YSB7XG4gICAgY29uc3QgaWRlbnRpZmllciA9IHRoaXMuX2dldElkZW50aWZpZXJNZXRhZGF0YSh0eXBlKTtcbiAgICByZXR1cm4ge1xuICAgICAgcmVmZXJlbmNlOiBpZGVudGlmaWVyLnJlZmVyZW5jZSxcbiAgICAgIGRpRGVwczogdGhpcy5fZ2V0RGVwZW5kZW5jaWVzTWV0YWRhdGEoaWRlbnRpZmllci5yZWZlcmVuY2UsIGRlcGVuZGVuY2llcywgdGhyb3dPblVua25vd25EZXBzKSxcbiAgICAgIGxpZmVjeWNsZUhvb2tzOiBnZXRBbGxMaWZlY3ljbGVIb29rcyh0aGlzLl9yZWZsZWN0b3IsIGlkZW50aWZpZXIucmVmZXJlbmNlKSxcbiAgICB9O1xuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0RmFjdG9yeU1ldGFkYXRhKGZhY3Rvcnk6IEZ1bmN0aW9uLCBkZXBlbmRlbmNpZXM6IGFueVtdfG51bGwgPSBudWxsKTpcbiAgICAgIGNwbC5Db21waWxlRmFjdG9yeU1ldGFkYXRhIHtcbiAgICBmYWN0b3J5ID0gcmVzb2x2ZUZvcndhcmRSZWYoZmFjdG9yeSk7XG4gICAgcmV0dXJuIHtyZWZlcmVuY2U6IGZhY3RvcnksIGRpRGVwczogdGhpcy5fZ2V0RGVwZW5kZW5jaWVzTWV0YWRhdGEoZmFjdG9yeSwgZGVwZW5kZW5jaWVzKX07XG4gIH1cblxuICAvKipcbiAgICogR2V0cyB0aGUgbWV0YWRhdGEgZm9yIHRoZSBnaXZlbiBwaXBlLlxuICAgKiBUaGlzIGFzc3VtZXMgYGxvYWROZ01vZHVsZURpcmVjdGl2ZUFuZFBpcGVNZXRhZGF0YWAgaGFzIGJlZW4gY2FsbGVkIGZpcnN0LlxuICAgKi9cbiAgZ2V0UGlwZU1ldGFkYXRhKHBpcGVUeXBlOiBhbnkpOiBjcGwuQ29tcGlsZVBpcGVNZXRhZGF0YXxudWxsIHtcbiAgICBjb25zdCBwaXBlTWV0YSA9IHRoaXMuX3BpcGVDYWNoZS5nZXQocGlwZVR5cGUpO1xuICAgIGlmICghcGlwZU1ldGEpIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICBgSWxsZWdhbCBzdGF0ZTogZ2V0UGlwZU1ldGFkYXRhIGNhbiBvbmx5IGJlIGNhbGxlZCBhZnRlciBsb2FkTmdNb2R1bGVEaXJlY3RpdmVBbmRQaXBlTWV0YWRhdGEgZm9yIGEgbW9kdWxlIHRoYXQgZGVjbGFyZXMgaXQuIFBpcGUgJHtzdHJpbmdpZnlUeXBlKHBpcGVUeXBlKX0uYCksXG4gICAgICAgICAgcGlwZVR5cGUpO1xuICAgIH1cbiAgICByZXR1cm4gcGlwZU1ldGEgfHwgbnVsbDtcbiAgfVxuXG4gIGdldFBpcGVTdW1tYXJ5KHBpcGVUeXBlOiBhbnkpOiBjcGwuQ29tcGlsZVBpcGVTdW1tYXJ5IHtcbiAgICBjb25zdCBwaXBlU3VtbWFyeSA9XG4gICAgICAgIDxjcGwuQ29tcGlsZVBpcGVTdW1tYXJ5PnRoaXMuX2xvYWRTdW1tYXJ5KHBpcGVUeXBlLCBjcGwuQ29tcGlsZVN1bW1hcnlLaW5kLlBpcGUpO1xuICAgIGlmICghcGlwZVN1bW1hcnkpIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICBgSWxsZWdhbCBzdGF0ZTogQ291bGQgbm90IGxvYWQgdGhlIHN1bW1hcnkgZm9yIHBpcGUgJHtzdHJpbmdpZnlUeXBlKHBpcGVUeXBlKX0uYCksXG4gICAgICAgICAgcGlwZVR5cGUpO1xuICAgIH1cbiAgICByZXR1cm4gcGlwZVN1bW1hcnk7XG4gIH1cblxuICBnZXRPckxvYWRQaXBlTWV0YWRhdGEocGlwZVR5cGU6IGFueSk6IGNwbC5Db21waWxlUGlwZU1ldGFkYXRhIHtcbiAgICBsZXQgcGlwZU1ldGEgPSB0aGlzLl9waXBlQ2FjaGUuZ2V0KHBpcGVUeXBlKTtcbiAgICBpZiAoIXBpcGVNZXRhKSB7XG4gICAgICBwaXBlTWV0YSA9IHRoaXMuX2xvYWRQaXBlTWV0YWRhdGEocGlwZVR5cGUpO1xuICAgIH1cbiAgICByZXR1cm4gcGlwZU1ldGE7XG4gIH1cblxuICBwcml2YXRlIF9sb2FkUGlwZU1ldGFkYXRhKHBpcGVUeXBlOiBhbnkpOiBjcGwuQ29tcGlsZVBpcGVNZXRhZGF0YSB7XG4gICAgcGlwZVR5cGUgPSByZXNvbHZlRm9yd2FyZFJlZihwaXBlVHlwZSk7XG4gICAgY29uc3QgcGlwZUFubm90YXRpb24gPSB0aGlzLl9waXBlUmVzb2x2ZXIucmVzb2x2ZShwaXBlVHlwZSkgITtcblxuICAgIGNvbnN0IHBpcGVNZXRhID0gbmV3IGNwbC5Db21waWxlUGlwZU1ldGFkYXRhKHtcbiAgICAgIHR5cGU6IHRoaXMuX2dldFR5cGVNZXRhZGF0YShwaXBlVHlwZSksXG4gICAgICBuYW1lOiBwaXBlQW5ub3RhdGlvbi5uYW1lLFxuICAgICAgcHVyZTogISFwaXBlQW5ub3RhdGlvbi5wdXJlXG4gICAgfSk7XG4gICAgdGhpcy5fcGlwZUNhY2hlLnNldChwaXBlVHlwZSwgcGlwZU1ldGEpO1xuICAgIHRoaXMuX3N1bW1hcnlDYWNoZS5zZXQocGlwZVR5cGUsIHBpcGVNZXRhLnRvU3VtbWFyeSgpKTtcbiAgICByZXR1cm4gcGlwZU1ldGE7XG4gIH1cblxuICBwcml2YXRlIF9nZXREZXBlbmRlbmNpZXNNZXRhZGF0YShcbiAgICAgIHR5cGVPckZ1bmM6IFR5cGV8RnVuY3Rpb24sIGRlcGVuZGVuY2llczogYW55W118bnVsbCxcbiAgICAgIHRocm93T25Vbmtub3duRGVwcyA9IHRydWUpOiBjcGwuQ29tcGlsZURpRGVwZW5kZW5jeU1ldGFkYXRhW10ge1xuICAgIGxldCBoYXNVbmtub3duRGVwcyA9IGZhbHNlO1xuICAgIGNvbnN0IHBhcmFtcyA9IGRlcGVuZGVuY2llcyB8fCB0aGlzLl9yZWZsZWN0b3IucGFyYW1ldGVycyh0eXBlT3JGdW5jKSB8fCBbXTtcblxuICAgIGNvbnN0IGRlcGVuZGVuY2llc01ldGFkYXRhOiBjcGwuQ29tcGlsZURpRGVwZW5kZW5jeU1ldGFkYXRhW10gPSBwYXJhbXMubWFwKChwYXJhbSkgPT4ge1xuICAgICAgbGV0IGlzQXR0cmlidXRlID0gZmFsc2U7XG4gICAgICBsZXQgaXNIb3N0ID0gZmFsc2U7XG4gICAgICBsZXQgaXNTZWxmID0gZmFsc2U7XG4gICAgICBsZXQgaXNTa2lwU2VsZiA9IGZhbHNlO1xuICAgICAgbGV0IGlzT3B0aW9uYWwgPSBmYWxzZTtcbiAgICAgIGxldCB0b2tlbjogYW55ID0gbnVsbDtcbiAgICAgIGlmIChBcnJheS5pc0FycmF5KHBhcmFtKSkge1xuICAgICAgICBwYXJhbS5mb3JFYWNoKChwYXJhbUVudHJ5OiBhbnkpID0+IHtcbiAgICAgICAgICBpZiAoY3JlYXRlSG9zdC5pc1R5cGVPZihwYXJhbUVudHJ5KSkge1xuICAgICAgICAgICAgaXNIb3N0ID0gdHJ1ZTtcbiAgICAgICAgICB9IGVsc2UgaWYgKGNyZWF0ZVNlbGYuaXNUeXBlT2YocGFyYW1FbnRyeSkpIHtcbiAgICAgICAgICAgIGlzU2VsZiA9IHRydWU7XG4gICAgICAgICAgfSBlbHNlIGlmIChjcmVhdGVTa2lwU2VsZi5pc1R5cGVPZihwYXJhbUVudHJ5KSkge1xuICAgICAgICAgICAgaXNTa2lwU2VsZiA9IHRydWU7XG4gICAgICAgICAgfSBlbHNlIGlmIChjcmVhdGVPcHRpb25hbC5pc1R5cGVPZihwYXJhbUVudHJ5KSkge1xuICAgICAgICAgICAgaXNPcHRpb25hbCA9IHRydWU7XG4gICAgICAgICAgfSBlbHNlIGlmIChjcmVhdGVBdHRyaWJ1dGUuaXNUeXBlT2YocGFyYW1FbnRyeSkpIHtcbiAgICAgICAgICAgIGlzQXR0cmlidXRlID0gdHJ1ZTtcbiAgICAgICAgICAgIHRva2VuID0gKHBhcmFtRW50cnkgYXMgYW55KS5hdHRyaWJ1dGVOYW1lO1xuICAgICAgICAgIH0gZWxzZSBpZiAoY3JlYXRlSW5qZWN0LmlzVHlwZU9mKHBhcmFtRW50cnkpKSB7XG4gICAgICAgICAgICB0b2tlbiA9IChwYXJhbUVudHJ5IGFzIGFueSkudG9rZW47XG4gICAgICAgICAgfSBlbHNlIGlmIChcbiAgICAgICAgICAgICAgY3JlYXRlSW5qZWN0aW9uVG9rZW4uaXNUeXBlT2YocGFyYW1FbnRyeSkgfHxcbiAgICAgICAgICAgICAgKHBhcmFtRW50cnkgYXMgYW55KSBpbnN0YW5jZW9mIFN0YXRpY1N5bWJvbCkge1xuICAgICAgICAgICAgdG9rZW4gPSBwYXJhbUVudHJ5O1xuICAgICAgICAgIH0gZWxzZSBpZiAoaXNWYWxpZFR5cGUocGFyYW1FbnRyeSkgJiYgdG9rZW4gPT0gbnVsbCkge1xuICAgICAgICAgICAgdG9rZW4gPSBwYXJhbUVudHJ5O1xuICAgICAgICAgIH1cbiAgICAgICAgfSk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICB0b2tlbiA9IHBhcmFtO1xuICAgICAgfVxuICAgICAgaWYgKHRva2VuID09IG51bGwpIHtcbiAgICAgICAgaGFzVW5rbm93bkRlcHMgPSB0cnVlO1xuICAgICAgICByZXR1cm4ge307XG4gICAgICB9XG5cbiAgICAgIHJldHVybiB7XG4gICAgICAgIGlzQXR0cmlidXRlLFxuICAgICAgICBpc0hvc3QsXG4gICAgICAgIGlzU2VsZixcbiAgICAgICAgaXNTa2lwU2VsZixcbiAgICAgICAgaXNPcHRpb25hbCxcbiAgICAgICAgdG9rZW46IHRoaXMuX2dldFRva2VuTWV0YWRhdGEodG9rZW4pXG4gICAgICB9O1xuXG4gICAgfSk7XG5cbiAgICBpZiAoaGFzVW5rbm93bkRlcHMpIHtcbiAgICAgIGNvbnN0IGRlcHNUb2tlbnMgPVxuICAgICAgICAgIGRlcGVuZGVuY2llc01ldGFkYXRhLm1hcCgoZGVwKSA9PiBkZXAudG9rZW4gPyBzdHJpbmdpZnlUeXBlKGRlcC50b2tlbikgOiAnPycpLmpvaW4oJywgJyk7XG4gICAgICBjb25zdCBtZXNzYWdlID1cbiAgICAgICAgICBgQ2FuJ3QgcmVzb2x2ZSBhbGwgcGFyYW1ldGVycyBmb3IgJHtzdHJpbmdpZnlUeXBlKHR5cGVPckZ1bmMpfTogKCR7ZGVwc1Rva2Vuc30pLmA7XG4gICAgICBpZiAodGhyb3dPblVua25vd25EZXBzIHx8IHRoaXMuX2NvbmZpZy5zdHJpY3RJbmplY3Rpb25QYXJhbWV0ZXJzKSB7XG4gICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKHN5bnRheEVycm9yKG1lc3NhZ2UpLCB0eXBlT3JGdW5jKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHRoaXMuX2NvbnNvbGUud2FybihgV2FybmluZzogJHttZXNzYWdlfSBUaGlzIHdpbGwgYmVjb21lIGFuIGVycm9yIGluIEFuZ3VsYXIgdjYueGApO1xuICAgICAgfVxuICAgIH1cblxuICAgIHJldHVybiBkZXBlbmRlbmNpZXNNZXRhZGF0YTtcbiAgfVxuXG4gIHByaXZhdGUgX2dldFRva2VuTWV0YWRhdGEodG9rZW46IGFueSk6IGNwbC5Db21waWxlVG9rZW5NZXRhZGF0YSB7XG4gICAgdG9rZW4gPSByZXNvbHZlRm9yd2FyZFJlZih0b2tlbik7XG4gICAgbGV0IGNvbXBpbGVUb2tlbjogY3BsLkNvbXBpbGVUb2tlbk1ldGFkYXRhO1xuICAgIGlmICh0eXBlb2YgdG9rZW4gPT09ICdzdHJpbmcnKSB7XG4gICAgICBjb21waWxlVG9rZW4gPSB7dmFsdWU6IHRva2VufTtcbiAgICB9IGVsc2Uge1xuICAgICAgY29tcGlsZVRva2VuID0ge2lkZW50aWZpZXI6IHtyZWZlcmVuY2U6IHRva2VufX07XG4gICAgfVxuICAgIHJldHVybiBjb21waWxlVG9rZW47XG4gIH1cblxuICBwcml2YXRlIF9nZXRQcm92aWRlcnNNZXRhZGF0YShcbiAgICAgIHByb3ZpZGVyczogUHJvdmlkZXJbXSwgdGFyZ2V0RW50cnlDb21wb25lbnRzOiBjcGwuQ29tcGlsZUVudHJ5Q29tcG9uZW50TWV0YWRhdGFbXSxcbiAgICAgIGRlYnVnSW5mbz86IHN0cmluZywgY29tcGlsZVByb3ZpZGVyczogY3BsLkNvbXBpbGVQcm92aWRlck1ldGFkYXRhW10gPSBbXSxcbiAgICAgIHR5cGU/OiBhbnkpOiBjcGwuQ29tcGlsZVByb3ZpZGVyTWV0YWRhdGFbXSB7XG4gICAgcHJvdmlkZXJzLmZvckVhY2goKHByb3ZpZGVyOiBhbnksIHByb3ZpZGVySWR4OiBudW1iZXIpID0+IHtcbiAgICAgIGlmIChBcnJheS5pc0FycmF5KHByb3ZpZGVyKSkge1xuICAgICAgICB0aGlzLl9nZXRQcm92aWRlcnNNZXRhZGF0YShwcm92aWRlciwgdGFyZ2V0RW50cnlDb21wb25lbnRzLCBkZWJ1Z0luZm8sIGNvbXBpbGVQcm92aWRlcnMpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgcHJvdmlkZXIgPSByZXNvbHZlRm9yd2FyZFJlZihwcm92aWRlcik7XG4gICAgICAgIGxldCBwcm92aWRlck1ldGE6IGNwbC5Qcm92aWRlck1ldGEgPSB1bmRlZmluZWQgITtcbiAgICAgICAgaWYgKHByb3ZpZGVyICYmIHR5cGVvZiBwcm92aWRlciA9PT0gJ29iamVjdCcgJiYgcHJvdmlkZXIuaGFzT3duUHJvcGVydHkoJ3Byb3ZpZGUnKSkge1xuICAgICAgICAgIHRoaXMuX3ZhbGlkYXRlUHJvdmlkZXIocHJvdmlkZXIpO1xuICAgICAgICAgIHByb3ZpZGVyTWV0YSA9IG5ldyBjcGwuUHJvdmlkZXJNZXRhKHByb3ZpZGVyLnByb3ZpZGUsIHByb3ZpZGVyKTtcbiAgICAgICAgfSBlbHNlIGlmIChpc1ZhbGlkVHlwZShwcm92aWRlcikpIHtcbiAgICAgICAgICBwcm92aWRlck1ldGEgPSBuZXcgY3BsLlByb3ZpZGVyTWV0YShwcm92aWRlciwge3VzZUNsYXNzOiBwcm92aWRlcn0pO1xuICAgICAgICB9IGVsc2UgaWYgKHByb3ZpZGVyID09PSB2b2lkIDApIHtcbiAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihzeW50YXhFcnJvcihcbiAgICAgICAgICAgICAgYEVuY291bnRlcmVkIHVuZGVmaW5lZCBwcm92aWRlciEgVXN1YWxseSB0aGlzIG1lYW5zIHlvdSBoYXZlIGEgY2lyY3VsYXIgZGVwZW5kZW5jaWVzLiBUaGlzIG1pZ2h0IGJlIGNhdXNlZCBieSB1c2luZyAnYmFycmVsJyBpbmRleC50cyBmaWxlcy5gKSk7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIGNvbnN0IHByb3ZpZGVyc0luZm8gPVxuICAgICAgICAgICAgICBwcm92aWRlcnNcbiAgICAgICAgICAgICAgICAgIC5yZWR1Y2UoXG4gICAgICAgICAgICAgICAgICAgICAgKHNvRmFyOiBzdHJpbmdbXSwgc2VlblByb3ZpZGVyOiBhbnksIHNlZW5Qcm92aWRlcklkeDogbnVtYmVyKSA9PiB7XG4gICAgICAgICAgICAgICAgICAgICAgICBpZiAoc2VlblByb3ZpZGVySWR4IDwgcHJvdmlkZXJJZHgpIHtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgc29GYXIucHVzaChgJHtzdHJpbmdpZnlUeXBlKHNlZW5Qcm92aWRlcil9YCk7XG4gICAgICAgICAgICAgICAgICAgICAgICB9IGVsc2UgaWYgKHNlZW5Qcm92aWRlcklkeCA9PSBwcm92aWRlcklkeCkge1xuICAgICAgICAgICAgICAgICAgICAgICAgICBzb0Zhci5wdXNoKGA/JHtzdHJpbmdpZnlUeXBlKHNlZW5Qcm92aWRlcil9P2ApO1xuICAgICAgICAgICAgICAgICAgICAgICAgfSBlbHNlIGlmIChzZWVuUHJvdmlkZXJJZHggPT0gcHJvdmlkZXJJZHggKyAxKSB7XG4gICAgICAgICAgICAgICAgICAgICAgICAgIHNvRmFyLnB1c2goJy4uLicpO1xuICAgICAgICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHNvRmFyO1xuICAgICAgICAgICAgICAgICAgICAgIH0sXG4gICAgICAgICAgICAgICAgICAgICAgW10pXG4gICAgICAgICAgICAgICAgICAuam9pbignLCAnKTtcbiAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgICAgICBgSW52YWxpZCAke2RlYnVnSW5mbyA/IGRlYnVnSW5mbyA6ICdwcm92aWRlcid9IC0gb25seSBpbnN0YW5jZXMgb2YgUHJvdmlkZXIgYW5kIFR5cGUgYXJlIGFsbG93ZWQsIGdvdDogWyR7cHJvdmlkZXJzSW5mb31dYCksXG4gICAgICAgICAgICAgIHR5cGUpO1xuICAgICAgICAgIHJldHVybjtcbiAgICAgICAgfVxuICAgICAgICBpZiAocHJvdmlkZXJNZXRhLnRva2VuID09PVxuICAgICAgICAgICAgdGhpcy5fcmVmbGVjdG9yLnJlc29sdmVFeHRlcm5hbFJlZmVyZW5jZShJZGVudGlmaWVycy5BTkFMWVpFX0ZPUl9FTlRSWV9DT01QT05FTlRTKSkge1xuICAgICAgICAgIHRhcmdldEVudHJ5Q29tcG9uZW50cy5wdXNoKC4uLnRoaXMuX2dldEVudHJ5Q29tcG9uZW50c0Zyb21Qcm92aWRlcihwcm92aWRlck1ldGEsIHR5cGUpKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICBjb21waWxlUHJvdmlkZXJzLnB1c2godGhpcy5nZXRQcm92aWRlck1ldGFkYXRhKHByb3ZpZGVyTWV0YSkpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfSk7XG4gICAgcmV0dXJuIGNvbXBpbGVQcm92aWRlcnM7XG4gIH1cblxuICBwcml2YXRlIF92YWxpZGF0ZVByb3ZpZGVyKHByb3ZpZGVyOiBhbnkpOiB2b2lkIHtcbiAgICBpZiAocHJvdmlkZXIuaGFzT3duUHJvcGVydHkoJ3VzZUNsYXNzJykgJiYgcHJvdmlkZXIudXNlQ2xhc3MgPT0gbnVsbCkge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3Ioc3ludGF4RXJyb3IoXG4gICAgICAgICAgYEludmFsaWQgcHJvdmlkZXIgZm9yICR7c3RyaW5naWZ5VHlwZShwcm92aWRlci5wcm92aWRlKX0uIHVzZUNsYXNzIGNhbm5vdCBiZSAke3Byb3ZpZGVyLnVzZUNsYXNzfS5cbiAgICAgICAgICAgVXN1YWxseSBpdCBoYXBwZW5zIHdoZW46XG4gICAgICAgICAgIDEuIFRoZXJlJ3MgYSBjaXJjdWxhciBkZXBlbmRlbmN5IChtaWdodCBiZSBjYXVzZWQgYnkgdXNpbmcgaW5kZXgudHMgKGJhcnJlbCkgZmlsZXMpLlxuICAgICAgICAgICAyLiBDbGFzcyB3YXMgdXNlZCBiZWZvcmUgaXQgd2FzIGRlY2xhcmVkLiBVc2UgZm9yd2FyZFJlZiBpbiB0aGlzIGNhc2UuYCkpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX2dldEVudHJ5Q29tcG9uZW50c0Zyb21Qcm92aWRlcihwcm92aWRlcjogY3BsLlByb3ZpZGVyTWV0YSwgdHlwZT86IGFueSk6XG4gICAgICBjcGwuQ29tcGlsZUVudHJ5Q29tcG9uZW50TWV0YWRhdGFbXSB7XG4gICAgY29uc3QgY29tcG9uZW50czogY3BsLkNvbXBpbGVFbnRyeUNvbXBvbmVudE1ldGFkYXRhW10gPSBbXTtcbiAgICBjb25zdCBjb2xsZWN0ZWRJZGVudGlmaWVyczogY3BsLkNvbXBpbGVJZGVudGlmaWVyTWV0YWRhdGFbXSA9IFtdO1xuXG4gICAgaWYgKHByb3ZpZGVyLnVzZUZhY3RvcnkgfHwgcHJvdmlkZXIudXNlRXhpc3RpbmcgfHwgcHJvdmlkZXIudXNlQ2xhc3MpIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgIHN5bnRheEVycm9yKGBUaGUgQU5BTFlaRV9GT1JfRU5UUllfQ09NUE9ORU5UUyB0b2tlbiBvbmx5IHN1cHBvcnRzIHVzZVZhbHVlIWApLCB0eXBlKTtcbiAgICAgIHJldHVybiBbXTtcbiAgICB9XG5cbiAgICBpZiAoIXByb3ZpZGVyLm11bHRpKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICBzeW50YXhFcnJvcihgVGhlIEFOQUxZWkVfRk9SX0VOVFJZX0NPTVBPTkVOVFMgdG9rZW4gb25seSBzdXBwb3J0cyAnbXVsdGkgPSB0cnVlJyFgKSxcbiAgICAgICAgICB0eXBlKTtcbiAgICAgIHJldHVybiBbXTtcbiAgICB9XG5cbiAgICBleHRyYWN0SWRlbnRpZmllcnMocHJvdmlkZXIudXNlVmFsdWUsIGNvbGxlY3RlZElkZW50aWZpZXJzKTtcbiAgICBjb2xsZWN0ZWRJZGVudGlmaWVycy5mb3JFYWNoKChpZGVudGlmaWVyKSA9PiB7XG4gICAgICBjb25zdCBlbnRyeSA9IHRoaXMuX2dldEVudHJ5Q29tcG9uZW50TWV0YWRhdGEoaWRlbnRpZmllci5yZWZlcmVuY2UsIGZhbHNlKTtcbiAgICAgIGlmIChlbnRyeSkge1xuICAgICAgICBjb21wb25lbnRzLnB1c2goZW50cnkpO1xuICAgICAgfVxuICAgIH0pO1xuICAgIHJldHVybiBjb21wb25lbnRzO1xuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0RW50cnlDb21wb25lbnRNZXRhZGF0YShkaXJUeXBlOiBhbnksIHRocm93SWZOb3RGb3VuZCA9IHRydWUpOlxuICAgICAgY3BsLkNvbXBpbGVFbnRyeUNvbXBvbmVudE1ldGFkYXRhfG51bGwge1xuICAgIGNvbnN0IGRpck1ldGEgPSB0aGlzLmdldE5vbk5vcm1hbGl6ZWREaXJlY3RpdmVNZXRhZGF0YShkaXJUeXBlKTtcbiAgICBpZiAoZGlyTWV0YSAmJiBkaXJNZXRhLm1ldGFkYXRhLmlzQ29tcG9uZW50KSB7XG4gICAgICByZXR1cm4ge2NvbXBvbmVudFR5cGU6IGRpclR5cGUsIGNvbXBvbmVudEZhY3Rvcnk6IGRpck1ldGEubWV0YWRhdGEuY29tcG9uZW50RmFjdG9yeSAhfTtcbiAgICB9XG4gICAgY29uc3QgZGlyU3VtbWFyeSA9XG4gICAgICAgIDxjcGwuQ29tcGlsZURpcmVjdGl2ZVN1bW1hcnk+dGhpcy5fbG9hZFN1bW1hcnkoZGlyVHlwZSwgY3BsLkNvbXBpbGVTdW1tYXJ5S2luZC5EaXJlY3RpdmUpO1xuICAgIGlmIChkaXJTdW1tYXJ5ICYmIGRpclN1bW1hcnkuaXNDb21wb25lbnQpIHtcbiAgICAgIHJldHVybiB7Y29tcG9uZW50VHlwZTogZGlyVHlwZSwgY29tcG9uZW50RmFjdG9yeTogZGlyU3VtbWFyeS5jb21wb25lbnRGYWN0b3J5ICF9O1xuICAgIH1cbiAgICBpZiAodGhyb3dJZk5vdEZvdW5kKSB7XG4gICAgICB0aHJvdyBzeW50YXhFcnJvcihgJHtkaXJUeXBlLm5hbWV9IGNhbm5vdCBiZSB1c2VkIGFzIGFuIGVudHJ5IGNvbXBvbmVudC5gKTtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBwcml2YXRlIF9nZXRJbmplY3RhYmxlVHlwZU1ldGFkYXRhKHR5cGU6IFR5cGUsIGRlcGVuZGVuY2llczogYW55W118bnVsbCA9IG51bGwpOlxuICAgICAgY3BsLkNvbXBpbGVUeXBlTWV0YWRhdGEge1xuICAgIGNvbnN0IHR5cGVTdW1tYXJ5ID0gdGhpcy5fbG9hZFN1bW1hcnkodHlwZSwgY3BsLkNvbXBpbGVTdW1tYXJ5S2luZC5JbmplY3RhYmxlKTtcbiAgICBpZiAodHlwZVN1bW1hcnkpIHtcbiAgICAgIHJldHVybiB0eXBlU3VtbWFyeS50eXBlO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5fZ2V0VHlwZU1ldGFkYXRhKHR5cGUsIGRlcGVuZGVuY2llcyk7XG4gIH1cblxuICBnZXRQcm92aWRlck1ldGFkYXRhKHByb3ZpZGVyOiBjcGwuUHJvdmlkZXJNZXRhKTogY3BsLkNvbXBpbGVQcm92aWRlck1ldGFkYXRhIHtcbiAgICBsZXQgY29tcGlsZURlcHM6IGNwbC5Db21waWxlRGlEZXBlbmRlbmN5TWV0YWRhdGFbXSA9IHVuZGVmaW5lZCAhO1xuICAgIGxldCBjb21waWxlVHlwZU1ldGFkYXRhOiBjcGwuQ29tcGlsZVR5cGVNZXRhZGF0YSA9IG51bGwgITtcbiAgICBsZXQgY29tcGlsZUZhY3RvcnlNZXRhZGF0YTogY3BsLkNvbXBpbGVGYWN0b3J5TWV0YWRhdGEgPSBudWxsICE7XG4gICAgbGV0IHRva2VuOiBjcGwuQ29tcGlsZVRva2VuTWV0YWRhdGEgPSB0aGlzLl9nZXRUb2tlbk1ldGFkYXRhKHByb3ZpZGVyLnRva2VuKTtcblxuICAgIGlmIChwcm92aWRlci51c2VDbGFzcykge1xuICAgICAgY29tcGlsZVR5cGVNZXRhZGF0YSA9XG4gICAgICAgICAgdGhpcy5fZ2V0SW5qZWN0YWJsZVR5cGVNZXRhZGF0YShwcm92aWRlci51c2VDbGFzcywgcHJvdmlkZXIuZGVwZW5kZW5jaWVzKTtcbiAgICAgIGNvbXBpbGVEZXBzID0gY29tcGlsZVR5cGVNZXRhZGF0YS5kaURlcHM7XG4gICAgICBpZiAocHJvdmlkZXIudG9rZW4gPT09IHByb3ZpZGVyLnVzZUNsYXNzKSB7XG4gICAgICAgIC8vIHVzZSB0aGUgY29tcGlsZVR5cGVNZXRhZGF0YSBhcyBpdCBjb250YWlucyBpbmZvcm1hdGlvbiBhYm91dCBsaWZlY3ljbGVIb29rcy4uLlxuICAgICAgICB0b2tlbiA9IHtpZGVudGlmaWVyOiBjb21waWxlVHlwZU1ldGFkYXRhfTtcbiAgICAgIH1cbiAgICB9IGVsc2UgaWYgKHByb3ZpZGVyLnVzZUZhY3RvcnkpIHtcbiAgICAgIGNvbXBpbGVGYWN0b3J5TWV0YWRhdGEgPSB0aGlzLl9nZXRGYWN0b3J5TWV0YWRhdGEocHJvdmlkZXIudXNlRmFjdG9yeSwgcHJvdmlkZXIuZGVwZW5kZW5jaWVzKTtcbiAgICAgIGNvbXBpbGVEZXBzID0gY29tcGlsZUZhY3RvcnlNZXRhZGF0YS5kaURlcHM7XG4gICAgfVxuXG4gICAgcmV0dXJuIHtcbiAgICAgIHRva2VuOiB0b2tlbixcbiAgICAgIHVzZUNsYXNzOiBjb21waWxlVHlwZU1ldGFkYXRhLFxuICAgICAgdXNlVmFsdWU6IHByb3ZpZGVyLnVzZVZhbHVlLFxuICAgICAgdXNlRmFjdG9yeTogY29tcGlsZUZhY3RvcnlNZXRhZGF0YSxcbiAgICAgIHVzZUV4aXN0aW5nOiBwcm92aWRlci51c2VFeGlzdGluZyA/IHRoaXMuX2dldFRva2VuTWV0YWRhdGEocHJvdmlkZXIudXNlRXhpc3RpbmcpIDogdW5kZWZpbmVkLFxuICAgICAgZGVwczogY29tcGlsZURlcHMsXG4gICAgICBtdWx0aTogcHJvdmlkZXIubXVsdGlcbiAgICB9O1xuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0UXVlcmllc01ldGFkYXRhKFxuICAgICAgcXVlcmllczoge1trZXk6IHN0cmluZ106IFF1ZXJ5fSwgaXNWaWV3UXVlcnk6IGJvb2xlYW4sXG4gICAgICBkaXJlY3RpdmVUeXBlOiBUeXBlKTogY3BsLkNvbXBpbGVRdWVyeU1ldGFkYXRhW10ge1xuICAgIGNvbnN0IHJlczogY3BsLkNvbXBpbGVRdWVyeU1ldGFkYXRhW10gPSBbXTtcblxuICAgIE9iamVjdC5rZXlzKHF1ZXJpZXMpLmZvckVhY2goKHByb3BlcnR5TmFtZTogc3RyaW5nKSA9PiB7XG4gICAgICBjb25zdCBxdWVyeSA9IHF1ZXJpZXNbcHJvcGVydHlOYW1lXTtcbiAgICAgIGlmIChxdWVyeS5pc1ZpZXdRdWVyeSA9PT0gaXNWaWV3UXVlcnkpIHtcbiAgICAgICAgcmVzLnB1c2godGhpcy5fZ2V0UXVlcnlNZXRhZGF0YShxdWVyeSwgcHJvcGVydHlOYW1lLCBkaXJlY3RpdmVUeXBlKSk7XG4gICAgICB9XG4gICAgfSk7XG5cbiAgICByZXR1cm4gcmVzO1xuICB9XG5cbiAgcHJpdmF0ZSBfcXVlcnlWYXJCaW5kaW5ncyhzZWxlY3RvcjogYW55KTogc3RyaW5nW10geyByZXR1cm4gc2VsZWN0b3Iuc3BsaXQoL1xccyosXFxzKi8pOyB9XG5cbiAgcHJpdmF0ZSBfZ2V0UXVlcnlNZXRhZGF0YShxOiBRdWVyeSwgcHJvcGVydHlOYW1lOiBzdHJpbmcsIHR5cGVPckZ1bmM6IFR5cGV8RnVuY3Rpb24pOlxuICAgICAgY3BsLkNvbXBpbGVRdWVyeU1ldGFkYXRhIHtcbiAgICBsZXQgc2VsZWN0b3JzOiBjcGwuQ29tcGlsZVRva2VuTWV0YWRhdGFbXTtcbiAgICBpZiAodHlwZW9mIHEuc2VsZWN0b3IgPT09ICdzdHJpbmcnKSB7XG4gICAgICBzZWxlY3RvcnMgPVxuICAgICAgICAgIHRoaXMuX3F1ZXJ5VmFyQmluZGluZ3MocS5zZWxlY3RvcikubWFwKHZhck5hbWUgPT4gdGhpcy5fZ2V0VG9rZW5NZXRhZGF0YSh2YXJOYW1lKSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIGlmICghcS5zZWxlY3Rvcikge1xuICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICAgIGBDYW4ndCBjb25zdHJ1Y3QgYSBxdWVyeSBmb3IgdGhlIHByb3BlcnR5IFwiJHtwcm9wZXJ0eU5hbWV9XCIgb2YgXCIke3N0cmluZ2lmeVR5cGUodHlwZU9yRnVuYyl9XCIgc2luY2UgdGhlIHF1ZXJ5IHNlbGVjdG9yIHdhc24ndCBkZWZpbmVkLmApLFxuICAgICAgICAgICAgdHlwZU9yRnVuYyk7XG4gICAgICAgIHNlbGVjdG9ycyA9IFtdO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgc2VsZWN0b3JzID0gW3RoaXMuX2dldFRva2VuTWV0YWRhdGEocS5zZWxlY3RvcildO1xuICAgICAgfVxuICAgIH1cblxuICAgIHJldHVybiB7XG4gICAgICBzZWxlY3RvcnMsXG4gICAgICBmaXJzdDogcS5maXJzdCxcbiAgICAgIGRlc2NlbmRhbnRzOiBxLmRlc2NlbmRhbnRzLCBwcm9wZXJ0eU5hbWUsXG4gICAgICByZWFkOiBxLnJlYWQgPyB0aGlzLl9nZXRUb2tlbk1ldGFkYXRhKHEucmVhZCkgOiBudWxsICEsXG4gICAgICBzdGF0aWM6IHEuc3RhdGljXG4gICAgfTtcbiAgfVxuXG4gIHByaXZhdGUgX3JlcG9ydEVycm9yKGVycm9yOiBhbnksIHR5cGU/OiBhbnksIG90aGVyVHlwZT86IGFueSkge1xuICAgIGlmICh0aGlzLl9lcnJvckNvbGxlY3Rvcikge1xuICAgICAgdGhpcy5fZXJyb3JDb2xsZWN0b3IoZXJyb3IsIHR5cGUpO1xuICAgICAgaWYgKG90aGVyVHlwZSkge1xuICAgICAgICB0aGlzLl9lcnJvckNvbGxlY3RvcihlcnJvciwgb3RoZXJUeXBlKTtcbiAgICAgIH1cbiAgICB9IGVsc2Uge1xuICAgICAgdGhyb3cgZXJyb3I7XG4gICAgfVxuICB9XG59XG5cbmZ1bmN0aW9uIGZsYXR0ZW5BcnJheSh0cmVlOiBhbnlbXSwgb3V0OiBBcnJheTxhbnk+ID0gW10pOiBBcnJheTxhbnk+IHtcbiAgaWYgKHRyZWUpIHtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IHRyZWUubGVuZ3RoOyBpKyspIHtcbiAgICAgIGNvbnN0IGl0ZW0gPSByZXNvbHZlRm9yd2FyZFJlZih0cmVlW2ldKTtcbiAgICAgIGlmIChBcnJheS5pc0FycmF5KGl0ZW0pKSB7XG4gICAgICAgIGZsYXR0ZW5BcnJheShpdGVtLCBvdXQpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgb3V0LnB1c2goaXRlbSk7XG4gICAgICB9XG4gICAgfVxuICB9XG4gIHJldHVybiBvdXQ7XG59XG5cbmZ1bmN0aW9uIGRlZHVwZUFycmF5KGFycmF5OiBhbnlbXSk6IEFycmF5PGFueT4ge1xuICBpZiAoYXJyYXkpIHtcbiAgICByZXR1cm4gQXJyYXkuZnJvbShuZXcgU2V0KGFycmF5KSk7XG4gIH1cbiAgcmV0dXJuIFtdO1xufVxuXG5mdW5jdGlvbiBmbGF0dGVuQW5kRGVkdXBlQXJyYXkodHJlZTogYW55W10pOiBBcnJheTxhbnk+IHtcbiAgcmV0dXJuIGRlZHVwZUFycmF5KGZsYXR0ZW5BcnJheSh0cmVlKSk7XG59XG5cbmZ1bmN0aW9uIGlzVmFsaWRUeXBlKHZhbHVlOiBhbnkpOiBib29sZWFuIHtcbiAgcmV0dXJuICh2YWx1ZSBpbnN0YW5jZW9mIFN0YXRpY1N5bWJvbCkgfHwgKHZhbHVlIGluc3RhbmNlb2YgVHlwZSk7XG59XG5cbmZ1bmN0aW9uIGV4dHJhY3RJZGVudGlmaWVycyh2YWx1ZTogYW55LCB0YXJnZXRJZGVudGlmaWVyczogY3BsLkNvbXBpbGVJZGVudGlmaWVyTWV0YWRhdGFbXSkge1xuICB2aXNpdFZhbHVlKHZhbHVlLCBuZXcgX0NvbXBpbGVWYWx1ZUNvbnZlcnRlcigpLCB0YXJnZXRJZGVudGlmaWVycyk7XG59XG5cbmNsYXNzIF9Db21waWxlVmFsdWVDb252ZXJ0ZXIgZXh0ZW5kcyBWYWx1ZVRyYW5zZm9ybWVyIHtcbiAgdmlzaXRPdGhlcih2YWx1ZTogYW55LCB0YXJnZXRJZGVudGlmaWVyczogY3BsLkNvbXBpbGVJZGVudGlmaWVyTWV0YWRhdGFbXSk6IGFueSB7XG4gICAgdGFyZ2V0SWRlbnRpZmllcnMucHVzaCh7cmVmZXJlbmNlOiB2YWx1ZX0pO1xuICB9XG59XG5cbmZ1bmN0aW9uIHN0cmluZ2lmeVR5cGUodHlwZTogYW55KTogc3RyaW5nIHtcbiAgaWYgKHR5cGUgaW5zdGFuY2VvZiBTdGF0aWNTeW1ib2wpIHtcbiAgICByZXR1cm4gYCR7dHlwZS5uYW1lfSBpbiAke3R5cGUuZmlsZVBhdGh9YDtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gc3RyaW5naWZ5KHR5cGUpO1xuICB9XG59XG5cbi8qKlxuICogSW5kaWNhdGVzIHRoYXQgYSBjb21wb25lbnQgaXMgc3RpbGwgYmVpbmcgbG9hZGVkIGluIGEgc3luY2hyb25vdXMgY29tcGlsZS5cbiAqL1xuZnVuY3Rpb24gY29tcG9uZW50U3RpbGxMb2FkaW5nRXJyb3IoY29tcFR5cGU6IFR5cGUpIHtcbiAgY29uc3QgZXJyb3IgPVxuICAgICAgRXJyb3IoYENhbid0IGNvbXBpbGUgc3luY2hyb25vdXNseSBhcyAke3N0cmluZ2lmeShjb21wVHlwZSl9IGlzIHN0aWxsIGJlaW5nIGxvYWRlZCFgKTtcbiAgKGVycm9yIGFzIGFueSlbRVJST1JfQ09NUE9ORU5UX1RZUEVdID0gY29tcFR5cGU7XG4gIHJldHVybiBlcnJvcjtcbn1cbiJdfQ==