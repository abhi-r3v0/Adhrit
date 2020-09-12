/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __extends, __read, __spread } from "tslib";
import { StaticSymbol } from './aot/static_symbol';
import { ngfactoryFilePath } from './aot/util';
import { assertArrayOfStrings, assertInterpolationSymbols } from './assertions';
import * as cpl from './compile_metadata';
import { ChangeDetectionStrategy, Type, ViewEncapsulation, createAttribute, createComponent, createHost, createInject, createInjectable, createInjectionToken, createNgModule, createOptional, createSelf, createSkipSelf } from './core';
import { findLast } from './directive_resolver';
import { Identifiers } from './identifiers';
import { getAllLifecycleHooks } from './lifecycle_reflector';
import { CssSelector } from './selector';
import { SyncAsync, ValueTransformer, isPromise, noUndefined, resolveForwardRef, stringify, syntaxError, visitValue } from './util';
export var ERROR_COMPONENT_TYPE = 'ngComponentType';
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
                throw new Error("Illegal state: Class " + name + " for type " + stringify(baseType) + " is not compiled yet!");
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
        if (dirType instanceof StaticSymbol) {
            return this._staticSymbolCache.get(ngfactoryFilePath(dirType.filePath), name);
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
        if (dirType instanceof StaticSymbol) {
            return this._staticSymbolCache.get(dirType.filePath, name);
        }
        return this._createProxyClass(dirType, name);
    };
    CompileMetadataResolver.prototype.getRendererType = function (dirType) {
        if (dirType instanceof StaticSymbol) {
            return this._staticSymbolCache.get(ngfactoryFilePath(dirType.filePath), cpl.rendererTypeName(dirType));
        }
        else {
            // returning an object as proxy,
            // that we fill later during runtime compilation.
            return {};
        }
    };
    CompileMetadataResolver.prototype.getComponentFactory = function (selector, dirType, inputs, outputs) {
        if (dirType instanceof StaticSymbol) {
            return this._staticSymbolCache.get(ngfactoryFilePath(dirType.filePath), cpl.componentFactoryName(dirType));
        }
        else {
            var hostView = this.getHostComponentViewClass(dirType);
            // Note: ngContentSelectors will be filled later once the template is
            // loaded.
            var createComponentFactory = this._reflector.resolveExternalReference(Identifiers.createComponentFactory);
            return createComponentFactory(selector, dirType, hostView, inputs, outputs, []);
        }
    };
    CompileMetadataResolver.prototype.initComponentFactory = function (factory, ngContentSelectors) {
        var _a;
        if (!(factory instanceof StaticSymbol)) {
            (_a = factory.ngContentSelectors).push.apply(_a, __spread(ngContentSelectors));
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
        var template = CssSelector.parse(compMeta.selector)[0].getMatchingElementTemplate();
        var templateUrl = '';
        var htmlAst = this._htmlParser.parse(template, templateUrl);
        return cpl.CompileDirectiveMetadata.create({
            isHost: true,
            type: { reference: hostType, diDeps: [], lifecycleHooks: [] },
            template: new cpl.CompileTemplateMetadata({
                encapsulation: ViewEncapsulation.None,
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
            changeDetection: ChangeDetectionStrategy.Default,
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
            rendererType: { id: '__Host__', encapsulation: ViewEncapsulation.None, styles: [], data: {} },
            entryComponents: [],
            componentFactory: null
        });
    };
    CompileMetadataResolver.prototype.loadDirectiveMetadata = function (ngModuleType, directiveType, isSync) {
        var _this = this;
        if (this._directiveCache.has(directiveType)) {
            return null;
        }
        directiveType = resolveForwardRef(directiveType);
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
            if (isPromise(templateMeta) && isSync) {
                this._reportError(componentStillLoadingError(directiveType), directiveType);
                return null;
            }
            return SyncAsync.then(templateMeta, createDirectiveMetadata);
        }
        else {
            // directive
            createDirectiveMetadata(null);
            return null;
        }
    };
    CompileMetadataResolver.prototype.getNonNormalizedDirectiveMetadata = function (directiveType) {
        var _this = this;
        directiveType = resolveForwardRef(directiveType);
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
        if (createComponent.isTypeOf(dirMeta)) {
            // component
            var compMeta = dirMeta;
            assertArrayOfStrings('styles', compMeta.styles);
            assertArrayOfStrings('styleUrls', compMeta.styleUrls);
            assertInterpolationSymbols('interpolation', compMeta.interpolation);
            var animations = compMeta.animations;
            nonNormalizedTemplateMetadata = new cpl.CompileTemplateMetadata({
                encapsulation: noUndefined(compMeta.encapsulation),
                template: noUndefined(compMeta.template),
                templateUrl: noUndefined(compMeta.templateUrl),
                htmlAst: null,
                styles: compMeta.styles || [],
                styleUrls: compMeta.styleUrls || [],
                animations: animations || [],
                interpolation: noUndefined(compMeta.interpolation),
                isInline: !!compMeta.template,
                externalStylesheets: [],
                ngContentSelectors: [],
                preserveWhitespaces: noUndefined(dirMeta.preserveWhitespaces),
            });
        }
        var changeDetectionStrategy = null;
        var viewProviders = [];
        var entryComponentMetadata = [];
        var selector = dirMeta.selector;
        if (createComponent.isTypeOf(dirMeta)) {
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
            exportAs: noUndefined(dirMeta.exportAs),
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
            this._reportError(syntaxError("Illegal state: getDirectiveMetadata can only be called after loadNgModuleDirectiveAndPipeMetadata for a module that declares it. Directive " + stringifyType(directiveType) + "."), directiveType);
        }
        return dirMeta;
    };
    CompileMetadataResolver.prototype.getDirectiveSummary = function (dirType) {
        var dirSummary = this._loadSummary(dirType, cpl.CompileSummaryKind.Directive);
        if (!dirSummary) {
            this._reportError(syntaxError("Illegal state: Could not load the summary for directive " + stringifyType(dirType) + "."), dirType);
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
        if (meta && !createComponent.isTypeOf(meta)) {
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
        var ngModuleMeta = findLast(this._reflector.shallowAnnotations(moduleType), createNgModule.isTypeOf);
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
        moduleType = resolveForwardRef(moduleType);
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
                        providers.push.apply(providers, __spread(_this._getProvidersMetadata(moduleWithProviders.providers, entryComponents, "provider for the NgModule '" + stringifyType(importedModuleType) + "'", [], importedType)));
                    }
                }
                if (importedModuleType) {
                    if (_this._checkSelfImport(moduleType, importedModuleType))
                        return;
                    if (!alreadyCollecting)
                        alreadyCollecting = new Set();
                    if (alreadyCollecting.has(importedModuleType)) {
                        _this._reportError(syntaxError(_this._getTypeDescriptor(importedModuleType) + " '" + stringifyType(importedType) + "' is imported recursively by the module '" + stringifyType(moduleType) + "'."), moduleType);
                        return;
                    }
                    alreadyCollecting.add(importedModuleType);
                    var importedModuleSummary = _this.getNgModuleSummary(importedModuleType, alreadyCollecting);
                    alreadyCollecting.delete(importedModuleType);
                    if (!importedModuleSummary) {
                        _this._reportError(syntaxError("Unexpected " + _this._getTypeDescriptor(importedType) + " '" + stringifyType(importedType) + "' imported by the module '" + stringifyType(moduleType) + "'. Please add a @NgModule annotation."), moduleType);
                        return;
                    }
                    importedModules.push(importedModuleSummary);
                }
                else {
                    _this._reportError(syntaxError("Unexpected value '" + stringifyType(importedType) + "' imported by the module '" + stringifyType(moduleType) + "'"), moduleType);
                    return;
                }
            });
        }
        if (meta.exports) {
            flattenAndDedupeArray(meta.exports).forEach(function (exportedType) {
                if (!isValidType(exportedType)) {
                    _this._reportError(syntaxError("Unexpected value '" + stringifyType(exportedType) + "' exported by the module '" + stringifyType(moduleType) + "'"), moduleType);
                    return;
                }
                if (!alreadyCollecting)
                    alreadyCollecting = new Set();
                if (alreadyCollecting.has(exportedType)) {
                    _this._reportError(syntaxError(_this._getTypeDescriptor(exportedType) + " '" + stringify(exportedType) + "' is exported recursively by the module '" + stringifyType(moduleType) + "'"), moduleType);
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
                    _this._reportError(syntaxError("Unexpected value '" + stringifyType(declaredType) + "' declared by the module '" + stringifyType(moduleType) + "'"), moduleType);
                    return;
                }
                var declaredIdentifier = _this._getIdentifierMetadata(declaredType);
                if (_this.isDirective(declaredType)) {
                    if (_this.isAbstractDirective(declaredType)) {
                        _this._reportError(syntaxError("Directive " + stringifyType(declaredType) + " has no selector, please add it!"), declaredType);
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
                    _this._reportError(syntaxError("Unexpected " + _this._getTypeDescriptor(declaredType) + " '" + stringifyType(declaredType) + "' declared by the module '" + stringifyType(moduleType) + "'. Please add a @Pipe/@Directive/@Component annotation."), moduleType);
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
                _this._reportError(syntaxError("Can't export " + _this._getTypeDescriptor(exportedId.reference) + " " + stringifyType(exportedId.reference) + " from " + stringifyType(moduleType) + " as it was neither declared nor imported!"), moduleType);
                return;
            }
        });
        // The providers of the module have to go last
        // so that they overwrite any other provider we already added.
        if (meta.providers) {
            providers.push.apply(providers, __spread(this._getProvidersMetadata(meta.providers, entryComponents, "provider for the NgModule '" + stringifyType(moduleType) + "'", [], moduleType)));
        }
        if (meta.entryComponents) {
            entryComponents.push.apply(entryComponents, __spread(flattenAndDedupeArray(meta.entryComponents)
                .map(function (type) { return _this._getEntryComponentMetadata(type); })));
        }
        if (meta.bootstrap) {
            flattenAndDedupeArray(meta.bootstrap).forEach(function (type) {
                if (!isValidType(type)) {
                    _this._reportError(syntaxError("Unexpected value '" + stringifyType(type) + "' used in the bootstrap property of module '" + stringifyType(moduleType) + "'"), moduleType);
                    return;
                }
                bootstrapComponents.push(_this._getIdentifierMetadata(type));
            });
        }
        entryComponents.push.apply(entryComponents, __spread(bootstrapComponents.map(function (type) { return _this._getEntryComponentMetadata(type.reference); })));
        if (meta.schemas) {
            schemas.push.apply(schemas, __spread(flattenAndDedupeArray(meta.schemas)));
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
            this._reportError(syntaxError("'" + stringifyType(moduleType) + "' module can't import itself"), moduleType);
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
            this._reportError(syntaxError("Type " + stringifyType(type) + " is part of the declarations of 2 modules: " + stringifyType(oldModule) + " and " + stringifyType(moduleType) + "! " +
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
        type = resolveForwardRef(type);
        return { reference: type };
    };
    CompileMetadataResolver.prototype.isInjectable = function (type) {
        var annotations = this._reflector.tryAnnotations(type);
        return annotations.some(function (ann) { return createInjectable.isTypeOf(ann); });
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
        var annotations = this._reflector.annotations(type).filter(function (ann) { return createInjectable.isTypeOf(ann); });
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
            lifecycleHooks: getAllLifecycleHooks(this._reflector, identifier.reference),
        };
    };
    CompileMetadataResolver.prototype._getFactoryMetadata = function (factory, dependencies) {
        if (dependencies === void 0) { dependencies = null; }
        factory = resolveForwardRef(factory);
        return { reference: factory, diDeps: this._getDependenciesMetadata(factory, dependencies) };
    };
    /**
     * Gets the metadata for the given pipe.
     * This assumes `loadNgModuleDirectiveAndPipeMetadata` has been called first.
     */
    CompileMetadataResolver.prototype.getPipeMetadata = function (pipeType) {
        var pipeMeta = this._pipeCache.get(pipeType);
        if (!pipeMeta) {
            this._reportError(syntaxError("Illegal state: getPipeMetadata can only be called after loadNgModuleDirectiveAndPipeMetadata for a module that declares it. Pipe " + stringifyType(pipeType) + "."), pipeType);
        }
        return pipeMeta || null;
    };
    CompileMetadataResolver.prototype.getPipeSummary = function (pipeType) {
        var pipeSummary = this._loadSummary(pipeType, cpl.CompileSummaryKind.Pipe);
        if (!pipeSummary) {
            this._reportError(syntaxError("Illegal state: Could not load the summary for pipe " + stringifyType(pipeType) + "."), pipeType);
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
        pipeType = resolveForwardRef(pipeType);
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
                    if (createHost.isTypeOf(paramEntry)) {
                        isHost = true;
                    }
                    else if (createSelf.isTypeOf(paramEntry)) {
                        isSelf = true;
                    }
                    else if (createSkipSelf.isTypeOf(paramEntry)) {
                        isSkipSelf = true;
                    }
                    else if (createOptional.isTypeOf(paramEntry)) {
                        isOptional = true;
                    }
                    else if (createAttribute.isTypeOf(paramEntry)) {
                        isAttribute = true;
                        token = paramEntry.attributeName;
                    }
                    else if (createInject.isTypeOf(paramEntry)) {
                        token = paramEntry.token;
                    }
                    else if (createInjectionToken.isTypeOf(paramEntry) ||
                        paramEntry instanceof StaticSymbol) {
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
                this._reportError(syntaxError(message), typeOrFunc);
            }
            else {
                this._console.warn("Warning: " + message + " This will become an error in Angular v6.x");
            }
        }
        return dependenciesMetadata;
    };
    CompileMetadataResolver.prototype._getTokenMetadata = function (token) {
        token = resolveForwardRef(token);
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
                provider = resolveForwardRef(provider);
                var providerMeta = undefined;
                if (provider && typeof provider === 'object' && provider.hasOwnProperty('provide')) {
                    _this._validateProvider(provider);
                    providerMeta = new cpl.ProviderMeta(provider.provide, provider);
                }
                else if (isValidType(provider)) {
                    providerMeta = new cpl.ProviderMeta(provider, { useClass: provider });
                }
                else if (provider === void 0) {
                    _this._reportError(syntaxError("Encountered undefined provider! Usually this means you have a circular dependencies. This might be caused by using 'barrel' index.ts files."));
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
                    _this._reportError(syntaxError("Invalid " + (debugInfo ? debugInfo : 'provider') + " - only instances of Provider and Type are allowed, got: [" + providersInfo + "]"), type);
                    return;
                }
                if (providerMeta.token ===
                    _this._reflector.resolveExternalReference(Identifiers.ANALYZE_FOR_ENTRY_COMPONENTS)) {
                    targetEntryComponents.push.apply(targetEntryComponents, __spread(_this._getEntryComponentsFromProvider(providerMeta, type)));
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
            this._reportError(syntaxError("Invalid provider for " + stringifyType(provider.provide) + ". useClass cannot be " + provider.useClass + ".\n           Usually it happens when:\n           1. There's a circular dependency (might be caused by using index.ts (barrel) files).\n           2. Class was used before it was declared. Use forwardRef in this case."));
        }
    };
    CompileMetadataResolver.prototype._getEntryComponentsFromProvider = function (provider, type) {
        var _this = this;
        var components = [];
        var collectedIdentifiers = [];
        if (provider.useFactory || provider.useExisting || provider.useClass) {
            this._reportError(syntaxError("The ANALYZE_FOR_ENTRY_COMPONENTS token only supports useValue!"), type);
            return [];
        }
        if (!provider.multi) {
            this._reportError(syntaxError("The ANALYZE_FOR_ENTRY_COMPONENTS token only supports 'multi = true'!"), type);
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
            throw syntaxError(dirType.name + " cannot be used as an entry component.");
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
                this._reportError(syntaxError("Can't construct a query for the property \"" + propertyName + "\" of \"" + stringifyType(typeOrFunc) + "\" since the query selector wasn't defined."), typeOrFunc);
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
export { CompileMetadataResolver };
function flattenArray(tree, out) {
    if (out === void 0) { out = []; }
    if (tree) {
        for (var i = 0; i < tree.length; i++) {
            var item = resolveForwardRef(tree[i]);
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
    return (value instanceof StaticSymbol) || (value instanceof Type);
}
function extractIdentifiers(value, targetIdentifiers) {
    visitValue(value, new _CompileValueConverter(), targetIdentifiers);
}
var _CompileValueConverter = /** @class */ (function (_super) {
    __extends(_CompileValueConverter, _super);
    function _CompileValueConverter() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    _CompileValueConverter.prototype.visitOther = function (value, targetIdentifiers) {
        targetIdentifiers.push({ reference: value });
    };
    return _CompileValueConverter;
}(ValueTransformer));
function stringifyType(type) {
    if (type instanceof StaticSymbol) {
        return type.name + " in " + type.filePath;
    }
    else {
        return stringify(type);
    }
}
/**
 * Indicates that a component is still being loaded in a synchronous compile.
 */
function componentStillLoadingError(compType) {
    var error = Error("Can't compile synchronously as " + stringify(compType) + " is still being loaded!");
    error[ERROR_COMPONENT_TYPE] = compType;
    return error;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWV0YWRhdGFfcmVzb2x2ZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci9zcmMvbWV0YWRhdGFfcmVzb2x2ZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOztBQUVILE9BQU8sRUFBQyxZQUFZLEVBQW9CLE1BQU0scUJBQXFCLENBQUM7QUFDcEUsT0FBTyxFQUFDLGlCQUFpQixFQUFDLE1BQU0sWUFBWSxDQUFDO0FBQzdDLE9BQU8sRUFBQyxvQkFBb0IsRUFBRSwwQkFBMEIsRUFBQyxNQUFNLGNBQWMsQ0FBQztBQUM5RSxPQUFPLEtBQUssR0FBRyxNQUFNLG9CQUFvQixDQUFDO0FBRzFDLE9BQU8sRUFBQyx1QkFBdUIsRUFBMEYsSUFBSSxFQUFFLGlCQUFpQixFQUFFLGVBQWUsRUFBRSxlQUFlLEVBQUUsVUFBVSxFQUFFLFlBQVksRUFBRSxnQkFBZ0IsRUFBRSxvQkFBb0IsRUFBRSxjQUFjLEVBQUUsY0FBYyxFQUFFLFVBQVUsRUFBRSxjQUFjLEVBQUMsTUFBTSxRQUFRLENBQUM7QUFFaFUsT0FBTyxFQUFvQixRQUFRLEVBQUMsTUFBTSxzQkFBc0IsQ0FBQztBQUNqRSxPQUFPLEVBQUMsV0FBVyxFQUFDLE1BQU0sZUFBZSxDQUFDO0FBQzFDLE9BQU8sRUFBQyxvQkFBb0IsRUFBQyxNQUFNLHVCQUF1QixDQUFDO0FBSzNELE9BQU8sRUFBQyxXQUFXLEVBQUMsTUFBTSxZQUFZLENBQUM7QUFFdkMsT0FBTyxFQUFVLFNBQVMsRUFBRSxnQkFBZ0IsRUFBRSxTQUFTLEVBQUUsV0FBVyxFQUFFLGlCQUFpQixFQUFFLFNBQVMsRUFBRSxXQUFXLEVBQUUsVUFBVSxFQUFDLE1BQU0sUUFBUSxDQUFDO0FBSTNJLE1BQU0sQ0FBQyxJQUFNLG9CQUFvQixHQUFHLGlCQUFpQixDQUFDO0FBRXRELGdCQUFnQjtBQUNoQixrQ0FBa0M7QUFDbEMsMkRBQTJE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QUFDLElBQUksQ0FBQyxDQUFDO0tBQ3hCO0FBQ0gsQ0FBQztBQUVEOztHQUVHO0FBQ0gsU0FBUywwQkFBMEIsQ0FBQyxRQUFjO0lBQ2hELElBQU0sS0FBSyxHQUNQLEtBQUssQ0FBQyxvQ0FBa0MsU0FBUyxDQUFDLFFBQVEsQ0FBQyw0QkFBeUIsQ0FBQyxDQUFDO0lBQ3pGLEtBQWEsQ0FBQyxvQkFBb0IsQ0FBQyxHQUFHLFFBQVEsQ0FBQztJQUNoRCxPQUFPLEtBQUssQ0FBQztBQUNmLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7U3RhdGljU3ltYm9sLCBTdGF0aWNTeW1ib2xDYWNoZX0gZnJvbSAnLi9hb3Qvc3RhdGljX3N5bWJvbCc7XG5pbXBvcnQge25nZmFjdG9yeUZpbGVQYXRofSBmcm9tICcuL2FvdC91dGlsJztcbmltcG9ydCB7YXNzZXJ0QXJyYXlPZlN0cmluZ3MsIGFzc2VydEludGVycG9sYXRpb25TeW1ib2xzfSBmcm9tICcuL2Fzc2VydGlvbnMnO1xuaW1wb3J0ICogYXMgY3BsIGZyb20gJy4vY29tcGlsZV9tZXRhZGF0YSc7XG5pbXBvcnQge0NvbXBpbGVSZWZsZWN0b3J9IGZyb20gJy4vY29tcGlsZV9yZWZsZWN0b3InO1xuaW1wb3J0IHtDb21waWxlckNvbmZpZ30gZnJvbSAnLi9jb25maWcnO1xuaW1wb3J0IHtDaGFuZ2VEZXRlY3Rpb25TdHJhdGVneSwgQ29tcG9uZW50LCBEaXJlY3RpdmUsIEluamVjdGFibGUsIE1vZHVsZVdpdGhQcm92aWRlcnMsIFByb3ZpZGVyLCBRdWVyeSwgU2NoZW1hTWV0YWRhdGEsIFR5cGUsIFZpZXdFbmNhcHN1bGF0aW9uLCBjcmVhdGVBdHRyaWJ1dGUsIGNyZWF0ZUNvbXBvbmVudCwgY3JlYXRlSG9zdCwgY3JlYXRlSW5qZWN0LCBjcmVhdGVJbmplY3RhYmxlLCBjcmVhdGVJbmplY3Rpb25Ub2tlbiwgY3JlYXRlTmdNb2R1bGUsIGNyZWF0ZU9wdGlvbmFsLCBjcmVhdGVTZWxmLCBjcmVhdGVTa2lwU2VsZn0gZnJvbSAnLi9jb3JlJztcbmltcG9ydCB7RGlyZWN0aXZlTm9ybWFsaXplcn0gZnJvbSAnLi9kaXJlY3RpdmVfbm9ybWFsaXplcic7XG5pbXBvcnQge0RpcmVjdGl2ZVJlc29sdmVyLCBmaW5kTGFzdH0gZnJvbSAnLi9kaXJlY3RpdmVfcmVzb2x2ZXInO1xuaW1wb3J0IHtJZGVudGlmaWVyc30gZnJvbSAnLi9pZGVudGlmaWVycyc7XG5pbXBvcnQge2dldEFsbExpZmVjeWNsZUhvb2tzfSBmcm9tICcuL2xpZmVjeWNsZV9yZWZsZWN0b3InO1xuaW1wb3J0IHtIdG1sUGFyc2VyfSBmcm9tICcuL21sX3BhcnNlci9odG1sX3BhcnNlcic7XG5pbXBvcnQge05nTW9kdWxlUmVzb2x2ZXJ9IGZyb20gJy4vbmdfbW9kdWxlX3Jlc29sdmVyJztcbmltcG9ydCB7UGlwZVJlc29sdmVyfSBmcm9tICcuL3BpcGVfcmVzb2x2ZXInO1xuaW1wb3J0IHtFbGVtZW50U2NoZW1hUmVnaXN0cnl9IGZyb20gJy4vc2NoZW1hL2VsZW1lbnRfc2NoZW1hX3JlZ2lzdHJ5JztcbmltcG9ydCB7Q3NzU2VsZWN0b3J9IGZyb20gJy4vc2VsZWN0b3InO1xuaW1wb3J0IHtTdW1tYXJ5UmVzb2x2ZXJ9IGZyb20gJy4vc3VtbWFyeV9yZXNvbHZlcic7XG5pbXBvcnQge0NvbnNvbGUsIFN5bmNBc3luYywgVmFsdWVUcmFuc2Zvcm1lciwgaXNQcm9taXNlLCBub1VuZGVmaW5lZCwgcmVzb2x2ZUZvcndhcmRSZWYsIHN0cmluZ2lmeSwgc3ludGF4RXJyb3IsIHZpc2l0VmFsdWV9IGZyb20gJy4vdXRpbCc7XG5cbmV4cG9ydCB0eXBlIEVycm9yQ29sbGVjdG9yID0gKGVycm9yOiBhbnksIHR5cGU/OiBhbnkpID0+IHZvaWQ7XG5cbmV4cG9ydCBjb25zdCBFUlJPUl9DT01QT05FTlRfVFlQRSA9ICduZ0NvbXBvbmVudFR5cGUnO1xuXG4vLyBEZXNpZ24gbm90ZXM6XG4vLyAtIGRvbid0IGxhemlseSBjcmVhdGUgbWV0YWRhdGE6XG4vLyAgIEZvciBzb21lIG1ldGFkYXRhLCB3ZSBuZWVkIHRvIGRvIGFzeW5jIHdvcmsgc29tZXRpbWVzLFxuLy8gICBzbyB0aGUgdXNlciBoYXMgdG8ga2ljayBvZmYgdGhpcyBsb2FkaW5nLlxuLy8gICBCdXQgd2Ugd2FudCB0byByZXBvcnQgZXJyb3JzIGV2ZW4gd2hlbiB0aGUgYXN5bmMgd29yayBpc1xuLy8gICBub3QgcmVxdWlyZWQgdG8gY2hlY2sgdGhhdCB0aGUgdXNlciB3b3VsZCBoYXZlIGJlZW4gYWJsZVxuLy8gICB0byB3YWl0IGNvcnJlY3RseS5cbmV4cG9ydCBjbGFzcyBDb21waWxlTWV0YWRhdGFSZXNvbHZlciB7XG4gIHByaXZhdGUgX25vbk5vcm1hbGl6ZWREaXJlY3RpdmVDYWNoZSA9XG4gICAgICBuZXcgTWFwPFR5cGUsIHthbm5vdGF0aW9uOiBEaXJlY3RpdmUsIG1ldGFkYXRhOiBjcGwuQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhfT4oKTtcbiAgcHJpdmF0ZSBfZGlyZWN0aXZlQ2FjaGUgPSBuZXcgTWFwPFR5cGUsIGNwbC5Db21waWxlRGlyZWN0aXZlTWV0YWRhdGE+KCk7XG4gIHByaXZhdGUgX3N1bW1hcnlDYWNoZSA9IG5ldyBNYXA8VHlwZSwgY3BsLkNvbXBpbGVUeXBlU3VtbWFyeXxudWxsPigpO1xuICBwcml2YXRlIF9waXBlQ2FjaGUgPSBuZXcgTWFwPFR5cGUsIGNwbC5Db21waWxlUGlwZU1ldGFkYXRhPigpO1xuICBwcml2YXRlIF9uZ01vZHVsZUNhY2hlID0gbmV3IE1hcDxUeXBlLCBjcGwuQ29tcGlsZU5nTW9kdWxlTWV0YWRhdGE+KCk7XG4gIHByaXZhdGUgX25nTW9kdWxlT2ZUeXBlcyA9IG5ldyBNYXA8VHlwZSwgVHlwZT4oKTtcbiAgcHJpdmF0ZSBfc2hhbGxvd01vZHVsZUNhY2hlID0gbmV3IE1hcDxUeXBlLCBjcGwuQ29tcGlsZVNoYWxsb3dNb2R1bGVNZXRhZGF0YT4oKTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgX2NvbmZpZzogQ29tcGlsZXJDb25maWcsIHByaXZhdGUgX2h0bWxQYXJzZXI6IEh0bWxQYXJzZXIsXG4gICAgICBwcml2YXRlIF9uZ01vZHVsZVJlc29sdmVyOiBOZ01vZHVsZVJlc29sdmVyLCBwcml2YXRlIF9kaXJlY3RpdmVSZXNvbHZlcjogRGlyZWN0aXZlUmVzb2x2ZXIsXG4gICAgICBwcml2YXRlIF9waXBlUmVzb2x2ZXI6IFBpcGVSZXNvbHZlciwgcHJpdmF0ZSBfc3VtbWFyeVJlc29sdmVyOiBTdW1tYXJ5UmVzb2x2ZXI8YW55PixcbiAgICAgIHByaXZhdGUgX3NjaGVtYVJlZ2lzdHJ5OiBFbGVtZW50U2NoZW1hUmVnaXN0cnksXG4gICAgICBwcml2YXRlIF9kaXJlY3RpdmVOb3JtYWxpemVyOiBEaXJlY3RpdmVOb3JtYWxpemVyLCBwcml2YXRlIF9jb25zb2xlOiBDb25zb2xlLFxuICAgICAgcHJpdmF0ZSBfc3RhdGljU3ltYm9sQ2FjaGU6IFN0YXRpY1N5bWJvbENhY2hlLCBwcml2YXRlIF9yZWZsZWN0b3I6IENvbXBpbGVSZWZsZWN0b3IsXG4gICAgICBwcml2YXRlIF9lcnJvckNvbGxlY3Rvcj86IEVycm9yQ29sbGVjdG9yKSB7fVxuXG4gIGdldFJlZmxlY3RvcigpOiBDb21waWxlUmVmbGVjdG9yIHsgcmV0dXJuIHRoaXMuX3JlZmxlY3RvcjsgfVxuXG4gIGNsZWFyQ2FjaGVGb3IodHlwZTogVHlwZSkge1xuICAgIGNvbnN0IGRpck1ldGEgPSB0aGlzLl9kaXJlY3RpdmVDYWNoZS5nZXQodHlwZSk7XG4gICAgdGhpcy5fZGlyZWN0aXZlQ2FjaGUuZGVsZXRlKHR5cGUpO1xuICAgIHRoaXMuX25vbk5vcm1hbGl6ZWREaXJlY3RpdmVDYWNoZS5kZWxldGUodHlwZSk7XG4gICAgdGhpcy5fc3VtbWFyeUNhY2hlLmRlbGV0ZSh0eXBlKTtcbiAgICB0aGlzLl9waXBlQ2FjaGUuZGVsZXRlKHR5cGUpO1xuICAgIHRoaXMuX25nTW9kdWxlT2ZUeXBlcy5kZWxldGUodHlwZSk7XG4gICAgLy8gQ2xlYXIgYWxsIG9mIHRoZSBOZ01vZHVsZSBhcyB0aGV5IGNvbnRhaW4gdHJhbnNpdGl2ZSBpbmZvcm1hdGlvbiFcbiAgICB0aGlzLl9uZ01vZHVsZUNhY2hlLmNsZWFyKCk7XG4gICAgaWYgKGRpck1ldGEpIHtcbiAgICAgIHRoaXMuX2RpcmVjdGl2ZU5vcm1hbGl6ZXIuY2xlYXJDYWNoZUZvcihkaXJNZXRhKTtcbiAgICB9XG4gIH1cblxuICBjbGVhckNhY2hlKCk6IHZvaWQge1xuICAgIHRoaXMuX2RpcmVjdGl2ZUNhY2hlLmNsZWFyKCk7XG4gICAgdGhpcy5fbm9uTm9ybWFsaXplZERpcmVjdGl2ZUNhY2hlLmNsZWFyKCk7XG4gICAgdGhpcy5fc3VtbWFyeUNhY2hlLmNsZWFyKCk7XG4gICAgdGhpcy5fcGlwZUNhY2hlLmNsZWFyKCk7XG4gICAgdGhpcy5fbmdNb2R1bGVDYWNoZS5jbGVhcigpO1xuICAgIHRoaXMuX25nTW9kdWxlT2ZUeXBlcy5jbGVhcigpO1xuICAgIHRoaXMuX2RpcmVjdGl2ZU5vcm1hbGl6ZXIuY2xlYXJDYWNoZSgpO1xuICB9XG5cbiAgcHJpdmF0ZSBfY3JlYXRlUHJveHlDbGFzcyhiYXNlVHlwZTogYW55LCBuYW1lOiBzdHJpbmcpOiBjcGwuUHJveHlDbGFzcyB7XG4gICAgbGV0IGRlbGVnYXRlOiBhbnkgPSBudWxsO1xuICAgIGNvbnN0IHByb3h5Q2xhc3M6IGNwbC5Qcm94eUNsYXNzID0gPGFueT5mdW5jdGlvbih0aGlzOiB1bmtub3duKSB7XG4gICAgICBpZiAoIWRlbGVnYXRlKSB7XG4gICAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICAgIGBJbGxlZ2FsIHN0YXRlOiBDbGFzcyAke25hbWV9IGZvciB0eXBlICR7c3RyaW5naWZ5KGJhc2VUeXBlKX0gaXMgbm90IGNvbXBpbGVkIHlldCFgKTtcbiAgICAgIH1cbiAgICAgIHJldHVybiBkZWxlZ2F0ZS5hcHBseSh0aGlzLCBhcmd1bWVudHMpO1xuICAgIH07XG4gICAgcHJveHlDbGFzcy5zZXREZWxlZ2F0ZSA9IChkKSA9PiB7XG4gICAgICBkZWxlZ2F0ZSA9IGQ7XG4gICAgICAoPGFueT5wcm94eUNsYXNzKS5wcm90b3R5cGUgPSBkLnByb3RvdHlwZTtcbiAgICB9O1xuICAgIC8vIE1ha2Ugc3RyaW5naWZ5IHdvcmsgY29ycmVjdGx5XG4gICAgKDxhbnk+cHJveHlDbGFzcykub3ZlcnJpZGRlbk5hbWUgPSBuYW1lO1xuICAgIHJldHVybiBwcm94eUNsYXNzO1xuICB9XG5cbiAgcHJpdmF0ZSBnZXRHZW5lcmF0ZWRDbGFzcyhkaXJUeXBlOiBhbnksIG5hbWU6IHN0cmluZyk6IFN0YXRpY1N5bWJvbHxjcGwuUHJveHlDbGFzcyB7XG4gICAgaWYgKGRpclR5cGUgaW5zdGFuY2VvZiBTdGF0aWNTeW1ib2wpIHtcbiAgICAgIHJldHVybiB0aGlzLl9zdGF0aWNTeW1ib2xDYWNoZS5nZXQobmdmYWN0b3J5RmlsZVBhdGgoZGlyVHlwZS5maWxlUGF0aCksIG5hbWUpO1xuICAgIH0gZWxzZSB7XG4gICAgICByZXR1cm4gdGhpcy5fY3JlYXRlUHJveHlDbGFzcyhkaXJUeXBlLCBuYW1lKTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIGdldENvbXBvbmVudFZpZXdDbGFzcyhkaXJUeXBlOiBhbnkpOiBTdGF0aWNTeW1ib2x8Y3BsLlByb3h5Q2xhc3Mge1xuICAgIHJldHVybiB0aGlzLmdldEdlbmVyYXRlZENsYXNzKGRpclR5cGUsIGNwbC52aWV3Q2xhc3NOYW1lKGRpclR5cGUsIDApKTtcbiAgfVxuXG4gIGdldEhvc3RDb21wb25lbnRWaWV3Q2xhc3MoZGlyVHlwZTogYW55KTogU3RhdGljU3ltYm9sfGNwbC5Qcm94eUNsYXNzIHtcbiAgICByZXR1cm4gdGhpcy5nZXRHZW5lcmF0ZWRDbGFzcyhkaXJUeXBlLCBjcGwuaG9zdFZpZXdDbGFzc05hbWUoZGlyVHlwZSkpO1xuICB9XG5cbiAgZ2V0SG9zdENvbXBvbmVudFR5cGUoZGlyVHlwZTogYW55KTogU3RhdGljU3ltYm9sfGNwbC5Qcm94eUNsYXNzIHtcbiAgICBjb25zdCBuYW1lID0gYCR7Y3BsLmlkZW50aWZpZXJOYW1lKHtyZWZlcmVuY2U6IGRpclR5cGV9KX1fSG9zdGA7XG4gICAgaWYgKGRpclR5cGUgaW5zdGFuY2VvZiBTdGF0aWNTeW1ib2wpIHtcbiAgICAgIHJldHVybiB0aGlzLl9zdGF0aWNTeW1ib2xDYWNoZS5nZXQoZGlyVHlwZS5maWxlUGF0aCwgbmFtZSk7XG4gICAgfVxuXG4gICAgcmV0dXJuIHRoaXMuX2NyZWF0ZVByb3h5Q2xhc3MoZGlyVHlwZSwgbmFtZSk7XG4gIH1cblxuICBwcml2YXRlIGdldFJlbmRlcmVyVHlwZShkaXJUeXBlOiBhbnkpOiBTdGF0aWNTeW1ib2x8b2JqZWN0IHtcbiAgICBpZiAoZGlyVHlwZSBpbnN0YW5jZW9mIFN0YXRpY1N5bWJvbCkge1xuICAgICAgcmV0dXJuIHRoaXMuX3N0YXRpY1N5bWJvbENhY2hlLmdldChcbiAgICAgICAgICBuZ2ZhY3RvcnlGaWxlUGF0aChkaXJUeXBlLmZpbGVQYXRoKSwgY3BsLnJlbmRlcmVyVHlwZU5hbWUoZGlyVHlwZSkpO1xuICAgIH0gZWxzZSB7XG4gICAgICAvLyByZXR1cm5pbmcgYW4gb2JqZWN0IGFzIHByb3h5LFxuICAgICAgLy8gdGhhdCB3ZSBmaWxsIGxhdGVyIGR1cmluZyBydW50aW1lIGNvbXBpbGF0aW9uLlxuICAgICAgcmV0dXJuIDxhbnk+e307XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBnZXRDb21wb25lbnRGYWN0b3J5KFxuICAgICAgc2VsZWN0b3I6IHN0cmluZywgZGlyVHlwZTogYW55LCBpbnB1dHM6IHtba2V5OiBzdHJpbmddOiBzdHJpbmd9fG51bGwsXG4gICAgICBvdXRwdXRzOiB7W2tleTogc3RyaW5nXTogc3RyaW5nfSk6IFN0YXRpY1N5bWJvbHxvYmplY3Qge1xuICAgIGlmIChkaXJUeXBlIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB7XG4gICAgICByZXR1cm4gdGhpcy5fc3RhdGljU3ltYm9sQ2FjaGUuZ2V0KFxuICAgICAgICAgIG5nZmFjdG9yeUZpbGVQYXRoKGRpclR5cGUuZmlsZVBhdGgpLCBjcGwuY29tcG9uZW50RmFjdG9yeU5hbWUoZGlyVHlwZSkpO1xuICAgIH0gZWxzZSB7XG4gICAgICBjb25zdCBob3N0VmlldyA9IHRoaXMuZ2V0SG9zdENvbXBvbmVudFZpZXdDbGFzcyhkaXJUeXBlKTtcbiAgICAgIC8vIE5vdGU6IG5nQ29udGVudFNlbGVjdG9ycyB3aWxsIGJlIGZpbGxlZCBsYXRlciBvbmNlIHRoZSB0ZW1wbGF0ZSBpc1xuICAgICAgLy8gbG9hZGVkLlxuICAgICAgY29uc3QgY3JlYXRlQ29tcG9uZW50RmFjdG9yeSA9XG4gICAgICAgICAgdGhpcy5fcmVmbGVjdG9yLnJlc29sdmVFeHRlcm5hbFJlZmVyZW5jZShJZGVudGlmaWVycy5jcmVhdGVDb21wb25lbnRGYWN0b3J5KTtcbiAgICAgIHJldHVybiBjcmVhdGVDb21wb25lbnRGYWN0b3J5KHNlbGVjdG9yLCBkaXJUeXBlLCA8YW55Pmhvc3RWaWV3LCBpbnB1dHMsIG91dHB1dHMsIFtdKTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIGluaXRDb21wb25lbnRGYWN0b3J5KGZhY3Rvcnk6IFN0YXRpY1N5bWJvbHxvYmplY3QsIG5nQ29udGVudFNlbGVjdG9yczogc3RyaW5nW10pIHtcbiAgICBpZiAoIShmYWN0b3J5IGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSkge1xuICAgICAgKGZhY3RvcnkgYXMgYW55KS5uZ0NvbnRlbnRTZWxlY3RvcnMucHVzaCguLi5uZ0NvbnRlbnRTZWxlY3RvcnMpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX2xvYWRTdW1tYXJ5KHR5cGU6IGFueSwga2luZDogY3BsLkNvbXBpbGVTdW1tYXJ5S2luZCk6IGNwbC5Db21waWxlVHlwZVN1bW1hcnl8bnVsbCB7XG4gICAgbGV0IHR5cGVTdW1tYXJ5ID0gdGhpcy5fc3VtbWFyeUNhY2hlLmdldCh0eXBlKTtcbiAgICBpZiAoIXR5cGVTdW1tYXJ5KSB7XG4gICAgICBjb25zdCBzdW1tYXJ5ID0gdGhpcy5fc3VtbWFyeVJlc29sdmVyLnJlc29sdmVTdW1tYXJ5KHR5cGUpO1xuICAgICAgdHlwZVN1bW1hcnkgPSBzdW1tYXJ5ID8gc3VtbWFyeS50eXBlIDogbnVsbDtcbiAgICAgIHRoaXMuX3N1bW1hcnlDYWNoZS5zZXQodHlwZSwgdHlwZVN1bW1hcnkgfHwgbnVsbCk7XG4gICAgfVxuICAgIHJldHVybiB0eXBlU3VtbWFyeSAmJiB0eXBlU3VtbWFyeS5zdW1tYXJ5S2luZCA9PT0ga2luZCA/IHR5cGVTdW1tYXJ5IDogbnVsbDtcbiAgfVxuXG4gIGdldEhvc3RDb21wb25lbnRNZXRhZGF0YShcbiAgICAgIGNvbXBNZXRhOiBjcGwuQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhLFxuICAgICAgaG9zdFZpZXdUeXBlPzogU3RhdGljU3ltYm9sfGNwbC5Qcm94eUNsYXNzKTogY3BsLkNvbXBpbGVEaXJlY3RpdmVNZXRhZGF0YSB7XG4gICAgY29uc3QgaG9zdFR5cGUgPSB0aGlzLmdldEhvc3RDb21wb25lbnRUeXBlKGNvbXBNZXRhLnR5cGUucmVmZXJlbmNlKTtcbiAgICBpZiAoIWhvc3RWaWV3VHlwZSkge1xuICAgICAgaG9zdFZpZXdUeXBlID0gdGhpcy5nZXRIb3N0Q29tcG9uZW50Vmlld0NsYXNzKGhvc3RUeXBlKTtcbiAgICB9XG4gICAgLy8gTm90ZTogISBpcyBvayBoZXJlIGFzIHRoaXMgbWV0aG9kIHNob3VsZCBvbmx5IGJlIGNhbGxlZCB3aXRoIG5vcm1hbGl6ZWQgZGlyZWN0aXZlXG4gICAgLy8gbWV0YWRhdGEsIHdoaWNoIGFsd2F5cyBmaWxscyBpbiB0aGUgc2VsZWN0b3IuXG4gICAgY29uc3QgdGVtcGxhdGUgPSBDc3NTZWxlY3Rvci5wYXJzZShjb21wTWV0YS5zZWxlY3RvciAhKVswXS5nZXRNYXRjaGluZ0VsZW1lbnRUZW1wbGF0ZSgpO1xuICAgIGNvbnN0IHRlbXBsYXRlVXJsID0gJyc7XG4gICAgY29uc3QgaHRtbEFzdCA9IHRoaXMuX2h0bWxQYXJzZXIucGFyc2UodGVtcGxhdGUsIHRlbXBsYXRlVXJsKTtcbiAgICByZXR1cm4gY3BsLkNvbXBpbGVEaXJlY3RpdmVNZXRhZGF0YS5jcmVhdGUoe1xuICAgICAgaXNIb3N0OiB0cnVlLFxuICAgICAgdHlwZToge3JlZmVyZW5jZTogaG9zdFR5cGUsIGRpRGVwczogW10sIGxpZmVjeWNsZUhvb2tzOiBbXX0sXG4gICAgICB0ZW1wbGF0ZTogbmV3IGNwbC5Db21waWxlVGVtcGxhdGVNZXRhZGF0YSh7XG4gICAgICAgIGVuY2Fwc3VsYXRpb246IFZpZXdFbmNhcHN1bGF0aW9uLk5vbmUsXG4gICAgICAgIHRlbXBsYXRlLFxuICAgICAgICB0ZW1wbGF0ZVVybCxcbiAgICAgICAgaHRtbEFzdCxcbiAgICAgICAgc3R5bGVzOiBbXSxcbiAgICAgICAgc3R5bGVVcmxzOiBbXSxcbiAgICAgICAgbmdDb250ZW50U2VsZWN0b3JzOiBbXSxcbiAgICAgICAgYW5pbWF0aW9uczogW10sXG4gICAgICAgIGlzSW5saW5lOiB0cnVlLFxuICAgICAgICBleHRlcm5hbFN0eWxlc2hlZXRzOiBbXSxcbiAgICAgICAgaW50ZXJwb2xhdGlvbjogbnVsbCxcbiAgICAgICAgcHJlc2VydmVXaGl0ZXNwYWNlczogZmFsc2UsXG4gICAgICB9KSxcbiAgICAgIGV4cG9ydEFzOiBudWxsLFxuICAgICAgY2hhbmdlRGV0ZWN0aW9uOiBDaGFuZ2VEZXRlY3Rpb25TdHJhdGVneS5EZWZhdWx0LFxuICAgICAgaW5wdXRzOiBbXSxcbiAgICAgIG91dHB1dHM6IFtdLFxuICAgICAgaG9zdDoge30sXG4gICAgICBpc0NvbXBvbmVudDogdHJ1ZSxcbiAgICAgIHNlbGVjdG9yOiAnKicsXG4gICAgICBwcm92aWRlcnM6IFtdLFxuICAgICAgdmlld1Byb3ZpZGVyczogW10sXG4gICAgICBxdWVyaWVzOiBbXSxcbiAgICAgIGd1YXJkczoge30sXG4gICAgICB2aWV3UXVlcmllczogW10sXG4gICAgICBjb21wb25lbnRWaWV3VHlwZTogaG9zdFZpZXdUeXBlLFxuICAgICAgcmVuZGVyZXJUeXBlOlxuICAgICAgICAgIHtpZDogJ19fSG9zdF9fJywgZW5jYXBzdWxhdGlvbjogVmlld0VuY2Fwc3VsYXRpb24uTm9uZSwgc3R5bGVzOiBbXSwgZGF0YToge319IGFzIG9iamVjdCxcbiAgICAgIGVudHJ5Q29tcG9uZW50czogW10sXG4gICAgICBjb21wb25lbnRGYWN0b3J5OiBudWxsXG4gICAgfSk7XG4gIH1cblxuICBsb2FkRGlyZWN0aXZlTWV0YWRhdGEobmdNb2R1bGVUeXBlOiBhbnksIGRpcmVjdGl2ZVR5cGU6IGFueSwgaXNTeW5jOiBib29sZWFuKTogU3luY0FzeW5jPG51bGw+IHtcbiAgICBpZiAodGhpcy5fZGlyZWN0aXZlQ2FjaGUuaGFzKGRpcmVjdGl2ZVR5cGUpKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gICAgZGlyZWN0aXZlVHlwZSA9IHJlc29sdmVGb3J3YXJkUmVmKGRpcmVjdGl2ZVR5cGUpO1xuICAgIGNvbnN0IHthbm5vdGF0aW9uLCBtZXRhZGF0YX0gPSB0aGlzLmdldE5vbk5vcm1hbGl6ZWREaXJlY3RpdmVNZXRhZGF0YShkaXJlY3RpdmVUeXBlKSAhO1xuXG4gICAgY29uc3QgY3JlYXRlRGlyZWN0aXZlTWV0YWRhdGEgPSAodGVtcGxhdGVNZXRhZGF0YTogY3BsLkNvbXBpbGVUZW1wbGF0ZU1ldGFkYXRhIHwgbnVsbCkgPT4ge1xuICAgICAgY29uc3Qgbm9ybWFsaXplZERpck1ldGEgPSBuZXcgY3BsLkNvbXBpbGVEaXJlY3RpdmVNZXRhZGF0YSh7XG4gICAgICAgIGlzSG9zdDogZmFsc2UsXG4gICAgICAgIHR5cGU6IG1ldGFkYXRhLnR5cGUsXG4gICAgICAgIGlzQ29tcG9uZW50OiBtZXRhZGF0YS5pc0NvbXBvbmVudCxcbiAgICAgICAgc2VsZWN0b3I6IG1ldGFkYXRhLnNlbGVjdG9yLFxuICAgICAgICBleHBvcnRBczogbWV0YWRhdGEuZXhwb3J0QXMsXG4gICAgICAgIGNoYW5nZURldGVjdGlvbjogbWV0YWRhdGEuY2hhbmdlRGV0ZWN0aW9uLFxuICAgICAgICBpbnB1dHM6IG1ldGFkYXRhLmlucHV0cyxcbiAgICAgICAgb3V0cHV0czogbWV0YWRhdGEub3V0cHV0cyxcbiAgICAgICAgaG9zdExpc3RlbmVyczogbWV0YWRhdGEuaG9zdExpc3RlbmVycyxcbiAgICAgICAgaG9zdFByb3BlcnRpZXM6IG1ldGFkYXRhLmhvc3RQcm9wZXJ0aWVzLFxuICAgICAgICBob3N0QXR0cmlidXRlczogbWV0YWRhdGEuaG9zdEF0dHJpYnV0ZXMsXG4gICAgICAgIHByb3ZpZGVyczogbWV0YWRhdGEucHJvdmlkZXJzLFxuICAgICAgICB2aWV3UHJvdmlkZXJzOiBtZXRhZGF0YS52aWV3UHJvdmlkZXJzLFxuICAgICAgICBxdWVyaWVzOiBtZXRhZGF0YS5xdWVyaWVzLFxuICAgICAgICBndWFyZHM6IG1ldGFkYXRhLmd1YXJkcyxcbiAgICAgICAgdmlld1F1ZXJpZXM6IG1ldGFkYXRhLnZpZXdRdWVyaWVzLFxuICAgICAgICBlbnRyeUNvbXBvbmVudHM6IG1ldGFkYXRhLmVudHJ5Q29tcG9uZW50cyxcbiAgICAgICAgY29tcG9uZW50Vmlld1R5cGU6IG1ldGFkYXRhLmNvbXBvbmVudFZpZXdUeXBlLFxuICAgICAgICByZW5kZXJlclR5cGU6IG1ldGFkYXRhLnJlbmRlcmVyVHlwZSxcbiAgICAgICAgY29tcG9uZW50RmFjdG9yeTogbWV0YWRhdGEuY29tcG9uZW50RmFjdG9yeSxcbiAgICAgICAgdGVtcGxhdGU6IHRlbXBsYXRlTWV0YWRhdGFcbiAgICAgIH0pO1xuICAgICAgaWYgKHRlbXBsYXRlTWV0YWRhdGEpIHtcbiAgICAgICAgdGhpcy5pbml0Q29tcG9uZW50RmFjdG9yeShtZXRhZGF0YS5jb21wb25lbnRGYWN0b3J5ICEsIHRlbXBsYXRlTWV0YWRhdGEubmdDb250ZW50U2VsZWN0b3JzKTtcbiAgICAgIH1cbiAgICAgIHRoaXMuX2RpcmVjdGl2ZUNhY2hlLnNldChkaXJlY3RpdmVUeXBlLCBub3JtYWxpemVkRGlyTWV0YSk7XG4gICAgICB0aGlzLl9zdW1tYXJ5Q2FjaGUuc2V0KGRpcmVjdGl2ZVR5cGUsIG5vcm1hbGl6ZWREaXJNZXRhLnRvU3VtbWFyeSgpKTtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH07XG5cbiAgICBpZiAobWV0YWRhdGEuaXNDb21wb25lbnQpIHtcbiAgICAgIGNvbnN0IHRlbXBsYXRlID0gbWV0YWRhdGEudGVtcGxhdGUgITtcbiAgICAgIGNvbnN0IHRlbXBsYXRlTWV0YSA9IHRoaXMuX2RpcmVjdGl2ZU5vcm1hbGl6ZXIubm9ybWFsaXplVGVtcGxhdGUoe1xuICAgICAgICBuZ01vZHVsZVR5cGUsXG4gICAgICAgIGNvbXBvbmVudFR5cGU6IGRpcmVjdGl2ZVR5cGUsXG4gICAgICAgIG1vZHVsZVVybDogdGhpcy5fcmVmbGVjdG9yLmNvbXBvbmVudE1vZHVsZVVybChkaXJlY3RpdmVUeXBlLCBhbm5vdGF0aW9uKSxcbiAgICAgICAgZW5jYXBzdWxhdGlvbjogdGVtcGxhdGUuZW5jYXBzdWxhdGlvbixcbiAgICAgICAgdGVtcGxhdGU6IHRlbXBsYXRlLnRlbXBsYXRlLFxuICAgICAgICB0ZW1wbGF0ZVVybDogdGVtcGxhdGUudGVtcGxhdGVVcmwsXG4gICAgICAgIHN0eWxlczogdGVtcGxhdGUuc3R5bGVzLFxuICAgICAgICBzdHlsZVVybHM6IHRlbXBsYXRlLnN0eWxlVXJscyxcbiAgICAgICAgYW5pbWF0aW9uczogdGVtcGxhdGUuYW5pbWF0aW9ucyxcbiAgICAgICAgaW50ZXJwb2xhdGlvbjogdGVtcGxhdGUuaW50ZXJwb2xhdGlvbixcbiAgICAgICAgcHJlc2VydmVXaGl0ZXNwYWNlczogdGVtcGxhdGUucHJlc2VydmVXaGl0ZXNwYWNlc1xuICAgICAgfSk7XG4gICAgICBpZiAoaXNQcm9taXNlKHRlbXBsYXRlTWV0YSkgJiYgaXNTeW5jKSB7XG4gICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKGNvbXBvbmVudFN0aWxsTG9hZGluZ0Vycm9yKGRpcmVjdGl2ZVR5cGUpLCBkaXJlY3RpdmVUeXBlKTtcbiAgICAgICAgcmV0dXJuIG51bGw7XG4gICAgICB9XG4gICAgICByZXR1cm4gU3luY0FzeW5jLnRoZW4odGVtcGxhdGVNZXRhLCBjcmVhdGVEaXJlY3RpdmVNZXRhZGF0YSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIGRpcmVjdGl2ZVxuICAgICAgY3JlYXRlRGlyZWN0aXZlTWV0YWRhdGEobnVsbCk7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gIH1cblxuICBnZXROb25Ob3JtYWxpemVkRGlyZWN0aXZlTWV0YWRhdGEoZGlyZWN0aXZlVHlwZTogYW55KTpcbiAgICAgIHthbm5vdGF0aW9uOiBEaXJlY3RpdmUsIG1ldGFkYXRhOiBjcGwuQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhfXxudWxsIHtcbiAgICBkaXJlY3RpdmVUeXBlID0gcmVzb2x2ZUZvcndhcmRSZWYoZGlyZWN0aXZlVHlwZSk7XG4gICAgaWYgKCFkaXJlY3RpdmVUeXBlKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gICAgbGV0IGNhY2hlRW50cnkgPSB0aGlzLl9ub25Ob3JtYWxpemVkRGlyZWN0aXZlQ2FjaGUuZ2V0KGRpcmVjdGl2ZVR5cGUpO1xuICAgIGlmIChjYWNoZUVudHJ5KSB7XG4gICAgICByZXR1cm4gY2FjaGVFbnRyeTtcbiAgICB9XG4gICAgY29uc3QgZGlyTWV0YSA9IHRoaXMuX2RpcmVjdGl2ZVJlc29sdmVyLnJlc29sdmUoZGlyZWN0aXZlVHlwZSwgZmFsc2UpO1xuICAgIGlmICghZGlyTWV0YSkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIGxldCBub25Ob3JtYWxpemVkVGVtcGxhdGVNZXRhZGF0YTogY3BsLkNvbXBpbGVUZW1wbGF0ZU1ldGFkYXRhID0gdW5kZWZpbmVkICE7XG5cbiAgICBpZiAoY3JlYXRlQ29tcG9uZW50LmlzVHlwZU9mKGRpck1ldGEpKSB7XG4gICAgICAvLyBjb21wb25lbnRcbiAgICAgIGNvbnN0IGNvbXBNZXRhID0gZGlyTWV0YSBhcyBDb21wb25lbnQ7XG4gICAgICBhc3NlcnRBcnJheU9mU3RyaW5ncygnc3R5bGVzJywgY29tcE1ldGEuc3R5bGVzKTtcbiAgICAgIGFzc2VydEFycmF5T2ZTdHJpbmdzKCdzdHlsZVVybHMnLCBjb21wTWV0YS5zdHlsZVVybHMpO1xuICAgICAgYXNzZXJ0SW50ZXJwb2xhdGlvblN5bWJvbHMoJ2ludGVycG9sYXRpb24nLCBjb21wTWV0YS5pbnRlcnBvbGF0aW9uKTtcblxuICAgICAgY29uc3QgYW5pbWF0aW9ucyA9IGNvbXBNZXRhLmFuaW1hdGlvbnM7XG5cbiAgICAgIG5vbk5vcm1hbGl6ZWRUZW1wbGF0ZU1ldGFkYXRhID0gbmV3IGNwbC5Db21waWxlVGVtcGxhdGVNZXRhZGF0YSh7XG4gICAgICAgIGVuY2Fwc3VsYXRpb246IG5vVW5kZWZpbmVkKGNvbXBNZXRhLmVuY2Fwc3VsYXRpb24pLFxuICAgICAgICB0ZW1wbGF0ZTogbm9VbmRlZmluZWQoY29tcE1ldGEudGVtcGxhdGUpLFxuICAgICAgICB0ZW1wbGF0ZVVybDogbm9VbmRlZmluZWQoY29tcE1ldGEudGVtcGxhdGVVcmwpLFxuICAgICAgICBodG1sQXN0OiBudWxsLFxuICAgICAgICBzdHlsZXM6IGNvbXBNZXRhLnN0eWxlcyB8fCBbXSxcbiAgICAgICAgc3R5bGVVcmxzOiBjb21wTWV0YS5zdHlsZVVybHMgfHwgW10sXG4gICAgICAgIGFuaW1hdGlvbnM6IGFuaW1hdGlvbnMgfHwgW10sXG4gICAgICAgIGludGVycG9sYXRpb246IG5vVW5kZWZpbmVkKGNvbXBNZXRhLmludGVycG9sYXRpb24pLFxuICAgICAgICBpc0lubGluZTogISFjb21wTWV0YS50ZW1wbGF0ZSxcbiAgICAgICAgZXh0ZXJuYWxTdHlsZXNoZWV0czogW10sXG4gICAgICAgIG5nQ29udGVudFNlbGVjdG9yczogW10sXG4gICAgICAgIHByZXNlcnZlV2hpdGVzcGFjZXM6IG5vVW5kZWZpbmVkKGRpck1ldGEucHJlc2VydmVXaGl0ZXNwYWNlcyksXG4gICAgICB9KTtcbiAgICB9XG5cbiAgICBsZXQgY2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3k6IENoYW5nZURldGVjdGlvblN0cmF0ZWd5ID0gbnVsbCAhO1xuICAgIGxldCB2aWV3UHJvdmlkZXJzOiBjcGwuQ29tcGlsZVByb3ZpZGVyTWV0YWRhdGFbXSA9IFtdO1xuICAgIGxldCBlbnRyeUNvbXBvbmVudE1ldGFkYXRhOiBjcGwuQ29tcGlsZUVudHJ5Q29tcG9uZW50TWV0YWRhdGFbXSA9IFtdO1xuICAgIGxldCBzZWxlY3RvciA9IGRpck1ldGEuc2VsZWN0b3I7XG5cbiAgICBpZiAoY3JlYXRlQ29tcG9uZW50LmlzVHlwZU9mKGRpck1ldGEpKSB7XG4gICAgICAvLyBDb21wb25lbnRcbiAgICAgIGNvbnN0IGNvbXBNZXRhID0gZGlyTWV0YSBhcyBDb21wb25lbnQ7XG4gICAgICBjaGFuZ2VEZXRlY3Rpb25TdHJhdGVneSA9IGNvbXBNZXRhLmNoYW5nZURldGVjdGlvbiAhO1xuICAgICAgaWYgKGNvbXBNZXRhLnZpZXdQcm92aWRlcnMpIHtcbiAgICAgICAgdmlld1Byb3ZpZGVycyA9IHRoaXMuX2dldFByb3ZpZGVyc01ldGFkYXRhKFxuICAgICAgICAgICAgY29tcE1ldGEudmlld1Byb3ZpZGVycywgZW50cnlDb21wb25lbnRNZXRhZGF0YSxcbiAgICAgICAgICAgIGB2aWV3UHJvdmlkZXJzIGZvciBcIiR7c3RyaW5naWZ5VHlwZShkaXJlY3RpdmVUeXBlKX1cImAsIFtdLCBkaXJlY3RpdmVUeXBlKTtcbiAgICAgIH1cbiAgICAgIGlmIChjb21wTWV0YS5lbnRyeUNvbXBvbmVudHMpIHtcbiAgICAgICAgZW50cnlDb21wb25lbnRNZXRhZGF0YSA9IGZsYXR0ZW5BbmREZWR1cGVBcnJheShjb21wTWV0YS5lbnRyeUNvbXBvbmVudHMpXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLm1hcCgodHlwZSkgPT4gdGhpcy5fZ2V0RW50cnlDb21wb25lbnRNZXRhZGF0YSh0eXBlKSAhKVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5jb25jYXQoZW50cnlDb21wb25lbnRNZXRhZGF0YSk7XG4gICAgICB9XG4gICAgICBpZiAoIXNlbGVjdG9yKSB7XG4gICAgICAgIHNlbGVjdG9yID0gdGhpcy5fc2NoZW1hUmVnaXN0cnkuZ2V0RGVmYXVsdENvbXBvbmVudEVsZW1lbnROYW1lKCk7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIERpcmVjdGl2ZVxuICAgICAgaWYgKCFzZWxlY3Rvcikge1xuICAgICAgICBzZWxlY3RvciA9IG51bGwgITtcbiAgICAgIH1cbiAgICB9XG5cbiAgICBsZXQgcHJvdmlkZXJzOiBjcGwuQ29tcGlsZVByb3ZpZGVyTWV0YWRhdGFbXSA9IFtdO1xuICAgIGlmIChkaXJNZXRhLnByb3ZpZGVycyAhPSBudWxsKSB7XG4gICAgICBwcm92aWRlcnMgPSB0aGlzLl9nZXRQcm92aWRlcnNNZXRhZGF0YShcbiAgICAgICAgICBkaXJNZXRhLnByb3ZpZGVycywgZW50cnlDb21wb25lbnRNZXRhZGF0YSxcbiAgICAgICAgICBgcHJvdmlkZXJzIGZvciBcIiR7c3RyaW5naWZ5VHlwZShkaXJlY3RpdmVUeXBlKX1cImAsIFtdLCBkaXJlY3RpdmVUeXBlKTtcbiAgICB9XG4gICAgbGV0IHF1ZXJpZXM6IGNwbC5Db21waWxlUXVlcnlNZXRhZGF0YVtdID0gW107XG4gICAgbGV0IHZpZXdRdWVyaWVzOiBjcGwuQ29tcGlsZVF1ZXJ5TWV0YWRhdGFbXSA9IFtdO1xuICAgIGlmIChkaXJNZXRhLnF1ZXJpZXMgIT0gbnVsbCkge1xuICAgICAgcXVlcmllcyA9IHRoaXMuX2dldFF1ZXJpZXNNZXRhZGF0YShkaXJNZXRhLnF1ZXJpZXMsIGZhbHNlLCBkaXJlY3RpdmVUeXBlKTtcbiAgICAgIHZpZXdRdWVyaWVzID0gdGhpcy5fZ2V0UXVlcmllc01ldGFkYXRhKGRpck1ldGEucXVlcmllcywgdHJ1ZSwgZGlyZWN0aXZlVHlwZSk7XG4gICAgfVxuXG4gICAgY29uc3QgbWV0YWRhdGEgPSBjcGwuQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhLmNyZWF0ZSh7XG4gICAgICBpc0hvc3Q6IGZhbHNlLFxuICAgICAgc2VsZWN0b3I6IHNlbGVjdG9yLFxuICAgICAgZXhwb3J0QXM6IG5vVW5kZWZpbmVkKGRpck1ldGEuZXhwb3J0QXMpLFxuICAgICAgaXNDb21wb25lbnQ6ICEhbm9uTm9ybWFsaXplZFRlbXBsYXRlTWV0YWRhdGEsXG4gICAgICB0eXBlOiB0aGlzLl9nZXRUeXBlTWV0YWRhdGEoZGlyZWN0aXZlVHlwZSksXG4gICAgICB0ZW1wbGF0ZTogbm9uTm9ybWFsaXplZFRlbXBsYXRlTWV0YWRhdGEsXG4gICAgICBjaGFuZ2VEZXRlY3Rpb246IGNoYW5nZURldGVjdGlvblN0cmF0ZWd5LFxuICAgICAgaW5wdXRzOiBkaXJNZXRhLmlucHV0cyB8fCBbXSxcbiAgICAgIG91dHB1dHM6IGRpck1ldGEub3V0cHV0cyB8fCBbXSxcbiAgICAgIGhvc3Q6IGRpck1ldGEuaG9zdCB8fCB7fSxcbiAgICAgIHByb3ZpZGVyczogcHJvdmlkZXJzIHx8IFtdLFxuICAgICAgdmlld1Byb3ZpZGVyczogdmlld1Byb3ZpZGVycyB8fCBbXSxcbiAgICAgIHF1ZXJpZXM6IHF1ZXJpZXMgfHwgW10sXG4gICAgICBndWFyZHM6IGRpck1ldGEuZ3VhcmRzIHx8IHt9LFxuICAgICAgdmlld1F1ZXJpZXM6IHZpZXdRdWVyaWVzIHx8IFtdLFxuICAgICAgZW50cnlDb21wb25lbnRzOiBlbnRyeUNvbXBvbmVudE1ldGFkYXRhLFxuICAgICAgY29tcG9uZW50Vmlld1R5cGU6IG5vbk5vcm1hbGl6ZWRUZW1wbGF0ZU1ldGFkYXRhID8gdGhpcy5nZXRDb21wb25lbnRWaWV3Q2xhc3MoZGlyZWN0aXZlVHlwZSkgOlxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbnVsbCxcbiAgICAgIHJlbmRlcmVyVHlwZTogbm9uTm9ybWFsaXplZFRlbXBsYXRlTWV0YWRhdGEgPyB0aGlzLmdldFJlbmRlcmVyVHlwZShkaXJlY3RpdmVUeXBlKSA6IG51bGwsXG4gICAgICBjb21wb25lbnRGYWN0b3J5OiBudWxsXG4gICAgfSk7XG4gICAgaWYgKG5vbk5vcm1hbGl6ZWRUZW1wbGF0ZU1ldGFkYXRhKSB7XG4gICAgICBtZXRhZGF0YS5jb21wb25lbnRGYWN0b3J5ID1cbiAgICAgICAgICB0aGlzLmdldENvbXBvbmVudEZhY3Rvcnkoc2VsZWN0b3IsIGRpcmVjdGl2ZVR5cGUsIG1ldGFkYXRhLmlucHV0cywgbWV0YWRhdGEub3V0cHV0cyk7XG4gICAgfVxuICAgIGNhY2hlRW50cnkgPSB7bWV0YWRhdGEsIGFubm90YXRpb246IGRpck1ldGF9O1xuICAgIHRoaXMuX25vbk5vcm1hbGl6ZWREaXJlY3RpdmVDYWNoZS5zZXQoZGlyZWN0aXZlVHlwZSwgY2FjaGVFbnRyeSk7XG4gICAgcmV0dXJuIGNhY2hlRW50cnk7XG4gIH1cblxuICAvKipcbiAgICogR2V0cyB0aGUgbWV0YWRhdGEgZm9yIHRoZSBnaXZlbiBkaXJlY3RpdmUuXG4gICAqIFRoaXMgYXNzdW1lcyBgbG9hZE5nTW9kdWxlRGlyZWN0aXZlQW5kUGlwZU1ldGFkYXRhYCBoYXMgYmVlbiBjYWxsZWQgZmlyc3QuXG4gICAqL1xuICBnZXREaXJlY3RpdmVNZXRhZGF0YShkaXJlY3RpdmVUeXBlOiBhbnkpOiBjcGwuQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhIHtcbiAgICBjb25zdCBkaXJNZXRhID0gdGhpcy5fZGlyZWN0aXZlQ2FjaGUuZ2V0KGRpcmVjdGl2ZVR5cGUpICE7XG4gICAgaWYgKCFkaXJNZXRhKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICBzeW50YXhFcnJvcihcbiAgICAgICAgICAgICAgYElsbGVnYWwgc3RhdGU6IGdldERpcmVjdGl2ZU1ldGFkYXRhIGNhbiBvbmx5IGJlIGNhbGxlZCBhZnRlciBsb2FkTmdNb2R1bGVEaXJlY3RpdmVBbmRQaXBlTWV0YWRhdGEgZm9yIGEgbW9kdWxlIHRoYXQgZGVjbGFyZXMgaXQuIERpcmVjdGl2ZSAke3N0cmluZ2lmeVR5cGUoZGlyZWN0aXZlVHlwZSl9LmApLFxuICAgICAgICAgIGRpcmVjdGl2ZVR5cGUpO1xuICAgIH1cbiAgICByZXR1cm4gZGlyTWV0YTtcbiAgfVxuXG4gIGdldERpcmVjdGl2ZVN1bW1hcnkoZGlyVHlwZTogYW55KTogY3BsLkNvbXBpbGVEaXJlY3RpdmVTdW1tYXJ5IHtcbiAgICBjb25zdCBkaXJTdW1tYXJ5ID1cbiAgICAgICAgPGNwbC5Db21waWxlRGlyZWN0aXZlU3VtbWFyeT50aGlzLl9sb2FkU3VtbWFyeShkaXJUeXBlLCBjcGwuQ29tcGlsZVN1bW1hcnlLaW5kLkRpcmVjdGl2ZSk7XG4gICAgaWYgKCFkaXJTdW1tYXJ5KSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICBzeW50YXhFcnJvcihcbiAgICAgICAgICAgICAgYElsbGVnYWwgc3RhdGU6IENvdWxkIG5vdCBsb2FkIHRoZSBzdW1tYXJ5IGZvciBkaXJlY3RpdmUgJHtzdHJpbmdpZnlUeXBlKGRpclR5cGUpfS5gKSxcbiAgICAgICAgICBkaXJUeXBlKTtcbiAgICB9XG4gICAgcmV0dXJuIGRpclN1bW1hcnk7XG4gIH1cblxuICBpc0RpcmVjdGl2ZSh0eXBlOiBhbnkpIHtcbiAgICByZXR1cm4gISF0aGlzLl9sb2FkU3VtbWFyeSh0eXBlLCBjcGwuQ29tcGlsZVN1bW1hcnlLaW5kLkRpcmVjdGl2ZSkgfHxcbiAgICAgICAgdGhpcy5fZGlyZWN0aXZlUmVzb2x2ZXIuaXNEaXJlY3RpdmUodHlwZSk7XG4gIH1cblxuICBpc0Fic3RyYWN0RGlyZWN0aXZlKHR5cGU6IGFueSk6IGJvb2xlYW4ge1xuICAgIGNvbnN0IHN1bW1hcnkgPVxuICAgICAgICB0aGlzLl9sb2FkU3VtbWFyeSh0eXBlLCBjcGwuQ29tcGlsZVN1bW1hcnlLaW5kLkRpcmVjdGl2ZSkgYXMgY3BsLkNvbXBpbGVEaXJlY3RpdmVTdW1tYXJ5O1xuICAgIGlmIChzdW1tYXJ5ICYmICFzdW1tYXJ5LmlzQ29tcG9uZW50KSB7XG4gICAgICByZXR1cm4gIXN1bW1hcnkuc2VsZWN0b3I7XG4gICAgfVxuXG4gICAgY29uc3QgbWV0YSA9IHRoaXMuX2RpcmVjdGl2ZVJlc29sdmVyLnJlc29sdmUodHlwZSwgZmFsc2UpO1xuICAgIGlmIChtZXRhICYmICFjcmVhdGVDb21wb25lbnQuaXNUeXBlT2YobWV0YSkpIHtcbiAgICAgIHJldHVybiAhbWV0YS5zZWxlY3RvcjtcbiAgICB9XG5cbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cblxuICBpc1BpcGUodHlwZTogYW55KSB7XG4gICAgcmV0dXJuICEhdGhpcy5fbG9hZFN1bW1hcnkodHlwZSwgY3BsLkNvbXBpbGVTdW1tYXJ5S2luZC5QaXBlKSB8fFxuICAgICAgICB0aGlzLl9waXBlUmVzb2x2ZXIuaXNQaXBlKHR5cGUpO1xuICB9XG5cbiAgaXNOZ01vZHVsZSh0eXBlOiBhbnkpIHtcbiAgICByZXR1cm4gISF0aGlzLl9sb2FkU3VtbWFyeSh0eXBlLCBjcGwuQ29tcGlsZVN1bW1hcnlLaW5kLk5nTW9kdWxlKSB8fFxuICAgICAgICB0aGlzLl9uZ01vZHVsZVJlc29sdmVyLmlzTmdNb2R1bGUodHlwZSk7XG4gIH1cblxuICBnZXROZ01vZHVsZVN1bW1hcnkobW9kdWxlVHlwZTogYW55LCBhbHJlYWR5Q29sbGVjdGluZzogU2V0PGFueT58bnVsbCA9IG51bGwpOlxuICAgICAgY3BsLkNvbXBpbGVOZ01vZHVsZVN1bW1hcnl8bnVsbCB7XG4gICAgbGV0IG1vZHVsZVN1bW1hcnk6IGNwbC5Db21waWxlTmdNb2R1bGVTdW1tYXJ5fG51bGwgPVxuICAgICAgICA8Y3BsLkNvbXBpbGVOZ01vZHVsZVN1bW1hcnk+dGhpcy5fbG9hZFN1bW1hcnkobW9kdWxlVHlwZSwgY3BsLkNvbXBpbGVTdW1tYXJ5S2luZC5OZ01vZHVsZSk7XG4gICAgaWYgKCFtb2R1bGVTdW1tYXJ5KSB7XG4gICAgICBjb25zdCBtb2R1bGVNZXRhID0gdGhpcy5nZXROZ01vZHVsZU1ldGFkYXRhKG1vZHVsZVR5cGUsIGZhbHNlLCBhbHJlYWR5Q29sbGVjdGluZyk7XG4gICAgICBtb2R1bGVTdW1tYXJ5ID0gbW9kdWxlTWV0YSA/IG1vZHVsZU1ldGEudG9TdW1tYXJ5KCkgOiBudWxsO1xuICAgICAgaWYgKG1vZHVsZVN1bW1hcnkpIHtcbiAgICAgICAgdGhpcy5fc3VtbWFyeUNhY2hlLnNldChtb2R1bGVUeXBlLCBtb2R1bGVTdW1tYXJ5KTtcbiAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIG1vZHVsZVN1bW1hcnk7XG4gIH1cblxuICAvKipcbiAgICogTG9hZHMgdGhlIGRlY2xhcmVkIGRpcmVjdGl2ZXMgYW5kIHBpcGVzIG9mIGFuIE5nTW9kdWxlLlxuICAgKi9cbiAgbG9hZE5nTW9kdWxlRGlyZWN0aXZlQW5kUGlwZU1ldGFkYXRhKG1vZHVsZVR5cGU6IGFueSwgaXNTeW5jOiBib29sZWFuLCB0aHJvd0lmTm90Rm91bmQgPSB0cnVlKTpcbiAgICAgIFByb21pc2U8YW55PiB7XG4gICAgY29uc3QgbmdNb2R1bGUgPSB0aGlzLmdldE5nTW9kdWxlTWV0YWRhdGEobW9kdWxlVHlwZSwgdGhyb3dJZk5vdEZvdW5kKTtcbiAgICBjb25zdCBsb2FkaW5nOiBQcm9taXNlPGFueT5bXSA9IFtdO1xuICAgIGlmIChuZ01vZHVsZSkge1xuICAgICAgbmdNb2R1bGUuZGVjbGFyZWREaXJlY3RpdmVzLmZvckVhY2goKGlkKSA9PiB7XG4gICAgICAgIGNvbnN0IHByb21pc2UgPSB0aGlzLmxvYWREaXJlY3RpdmVNZXRhZGF0YShtb2R1bGVUeXBlLCBpZC5yZWZlcmVuY2UsIGlzU3luYyk7XG4gICAgICAgIGlmIChwcm9taXNlKSB7XG4gICAgICAgICAgbG9hZGluZy5wdXNoKHByb21pc2UpO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICAgIG5nTW9kdWxlLmRlY2xhcmVkUGlwZXMuZm9yRWFjaCgoaWQpID0+IHRoaXMuX2xvYWRQaXBlTWV0YWRhdGEoaWQucmVmZXJlbmNlKSk7XG4gICAgfVxuICAgIHJldHVybiBQcm9taXNlLmFsbChsb2FkaW5nKTtcbiAgfVxuXG4gIGdldFNoYWxsb3dNb2R1bGVNZXRhZGF0YShtb2R1bGVUeXBlOiBhbnkpOiBjcGwuQ29tcGlsZVNoYWxsb3dNb2R1bGVNZXRhZGF0YXxudWxsIHtcbiAgICBsZXQgY29tcGlsZU1ldGEgPSB0aGlzLl9zaGFsbG93TW9kdWxlQ2FjaGUuZ2V0KG1vZHVsZVR5cGUpO1xuICAgIGlmIChjb21waWxlTWV0YSkge1xuICAgICAgcmV0dXJuIGNvbXBpbGVNZXRhO1xuICAgIH1cblxuICAgIGNvbnN0IG5nTW9kdWxlTWV0YSA9XG4gICAgICAgIGZpbmRMYXN0KHRoaXMuX3JlZmxlY3Rvci5zaGFsbG93QW5ub3RhdGlvbnMobW9kdWxlVHlwZSksIGNyZWF0ZU5nTW9kdWxlLmlzVHlwZU9mKTtcblxuICAgIGNvbXBpbGVNZXRhID0ge1xuICAgICAgdHlwZTogdGhpcy5fZ2V0VHlwZU1ldGFkYXRhKG1vZHVsZVR5cGUpLFxuICAgICAgcmF3RXhwb3J0czogbmdNb2R1bGVNZXRhLmV4cG9ydHMsXG4gICAgICByYXdJbXBvcnRzOiBuZ01vZHVsZU1ldGEuaW1wb3J0cyxcbiAgICAgIHJhd1Byb3ZpZGVyczogbmdNb2R1bGVNZXRhLnByb3ZpZGVycyxcbiAgICB9O1xuXG4gICAgdGhpcy5fc2hhbGxvd01vZHVsZUNhY2hlLnNldChtb2R1bGVUeXBlLCBjb21waWxlTWV0YSk7XG4gICAgcmV0dXJuIGNvbXBpbGVNZXRhO1xuICB9XG5cbiAgZ2V0TmdNb2R1bGVNZXRhZGF0YShcbiAgICAgIG1vZHVsZVR5cGU6IGFueSwgdGhyb3dJZk5vdEZvdW5kID0gdHJ1ZSxcbiAgICAgIGFscmVhZHlDb2xsZWN0aW5nOiBTZXQ8YW55PnxudWxsID0gbnVsbCk6IGNwbC5Db21waWxlTmdNb2R1bGVNZXRhZGF0YXxudWxsIHtcbiAgICBtb2R1bGVUeXBlID0gcmVzb2x2ZUZvcndhcmRSZWYobW9kdWxlVHlwZSk7XG4gICAgbGV0IGNvbXBpbGVNZXRhID0gdGhpcy5fbmdNb2R1bGVDYWNoZS5nZXQobW9kdWxlVHlwZSk7XG4gICAgaWYgKGNvbXBpbGVNZXRhKSB7XG4gICAgICByZXR1cm4gY29tcGlsZU1ldGE7XG4gICAgfVxuICAgIGNvbnN0IG1ldGEgPSB0aGlzLl9uZ01vZHVsZVJlc29sdmVyLnJlc29sdmUobW9kdWxlVHlwZSwgdGhyb3dJZk5vdEZvdW5kKTtcbiAgICBpZiAoIW1ldGEpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgICBjb25zdCBkZWNsYXJlZERpcmVjdGl2ZXM6IGNwbC5Db21waWxlSWRlbnRpZmllck1ldGFkYXRhW10gPSBbXTtcbiAgICBjb25zdCBleHBvcnRlZE5vbk1vZHVsZUlkZW50aWZpZXJzOiBjcGwuQ29tcGlsZUlkZW50aWZpZXJNZXRhZGF0YVtdID0gW107XG4gICAgY29uc3QgZGVjbGFyZWRQaXBlczogY3BsLkNvbXBpbGVJZGVudGlmaWVyTWV0YWRhdGFbXSA9IFtdO1xuICAgIGNvbnN0IGltcG9ydGVkTW9kdWxlczogY3BsLkNvbXBpbGVOZ01vZHVsZVN1bW1hcnlbXSA9IFtdO1xuICAgIGNvbnN0IGV4cG9ydGVkTW9kdWxlczogY3BsLkNvbXBpbGVOZ01vZHVsZVN1bW1hcnlbXSA9IFtdO1xuICAgIGNvbnN0IHByb3ZpZGVyczogY3BsLkNvbXBpbGVQcm92aWRlck1ldGFkYXRhW10gPSBbXTtcbiAgICBjb25zdCBlbnRyeUNvbXBvbmVudHM6IGNwbC5Db21waWxlRW50cnlDb21wb25lbnRNZXRhZGF0YVtdID0gW107XG4gICAgY29uc3QgYm9vdHN0cmFwQ29tcG9uZW50czogY3BsLkNvbXBpbGVJZGVudGlmaWVyTWV0YWRhdGFbXSA9IFtdO1xuICAgIGNvbnN0IHNjaGVtYXM6IFNjaGVtYU1ldGFkYXRhW10gPSBbXTtcblxuICAgIGlmIChtZXRhLmltcG9ydHMpIHtcbiAgICAgIGZsYXR0ZW5BbmREZWR1cGVBcnJheShtZXRhLmltcG9ydHMpLmZvckVhY2goKGltcG9ydGVkVHlwZSkgPT4ge1xuICAgICAgICBsZXQgaW1wb3J0ZWRNb2R1bGVUeXBlOiBUeXBlID0gdW5kZWZpbmVkICE7XG4gICAgICAgIGlmIChpc1ZhbGlkVHlwZShpbXBvcnRlZFR5cGUpKSB7XG4gICAgICAgICAgaW1wb3J0ZWRNb2R1bGVUeXBlID0gaW1wb3J0ZWRUeXBlO1xuICAgICAgICB9IGVsc2UgaWYgKGltcG9ydGVkVHlwZSAmJiBpbXBvcnRlZFR5cGUubmdNb2R1bGUpIHtcbiAgICAgICAgICBjb25zdCBtb2R1bGVXaXRoUHJvdmlkZXJzOiBNb2R1bGVXaXRoUHJvdmlkZXJzID0gaW1wb3J0ZWRUeXBlO1xuICAgICAgICAgIGltcG9ydGVkTW9kdWxlVHlwZSA9IG1vZHVsZVdpdGhQcm92aWRlcnMubmdNb2R1bGU7XG4gICAgICAgICAgaWYgKG1vZHVsZVdpdGhQcm92aWRlcnMucHJvdmlkZXJzKSB7XG4gICAgICAgICAgICBwcm92aWRlcnMucHVzaCguLi50aGlzLl9nZXRQcm92aWRlcnNNZXRhZGF0YShcbiAgICAgICAgICAgICAgICBtb2R1bGVXaXRoUHJvdmlkZXJzLnByb3ZpZGVycywgZW50cnlDb21wb25lbnRzLFxuICAgICAgICAgICAgICAgIGBwcm92aWRlciBmb3IgdGhlIE5nTW9kdWxlICcke3N0cmluZ2lmeVR5cGUoaW1wb3J0ZWRNb2R1bGVUeXBlKX0nYCwgW10sXG4gICAgICAgICAgICAgICAgaW1wb3J0ZWRUeXBlKSk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgaWYgKGltcG9ydGVkTW9kdWxlVHlwZSkge1xuICAgICAgICAgIGlmICh0aGlzLl9jaGVja1NlbGZJbXBvcnQobW9kdWxlVHlwZSwgaW1wb3J0ZWRNb2R1bGVUeXBlKSkgcmV0dXJuO1xuICAgICAgICAgIGlmICghYWxyZWFkeUNvbGxlY3RpbmcpIGFscmVhZHlDb2xsZWN0aW5nID0gbmV3IFNldCgpO1xuICAgICAgICAgIGlmIChhbHJlYWR5Q29sbGVjdGluZy5oYXMoaW1wb3J0ZWRNb2R1bGVUeXBlKSkge1xuICAgICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgICAgICAgIGAke3RoaXMuX2dldFR5cGVEZXNjcmlwdG9yKGltcG9ydGVkTW9kdWxlVHlwZSl9ICcke3N0cmluZ2lmeVR5cGUoaW1wb3J0ZWRUeXBlKX0nIGlzIGltcG9ydGVkIHJlY3Vyc2l2ZWx5IGJ5IHRoZSBtb2R1bGUgJyR7c3RyaW5naWZ5VHlwZShtb2R1bGVUeXBlKX0nLmApLFxuICAgICAgICAgICAgICAgIG1vZHVsZVR5cGUpO1xuICAgICAgICAgICAgcmV0dXJuO1xuICAgICAgICAgIH1cbiAgICAgICAgICBhbHJlYWR5Q29sbGVjdGluZy5hZGQoaW1wb3J0ZWRNb2R1bGVUeXBlKTtcbiAgICAgICAgICBjb25zdCBpbXBvcnRlZE1vZHVsZVN1bW1hcnkgPVxuICAgICAgICAgICAgICB0aGlzLmdldE5nTW9kdWxlU3VtbWFyeShpbXBvcnRlZE1vZHVsZVR5cGUsIGFscmVhZHlDb2xsZWN0aW5nKTtcbiAgICAgICAgICBhbHJlYWR5Q29sbGVjdGluZy5kZWxldGUoaW1wb3J0ZWRNb2R1bGVUeXBlKTtcbiAgICAgICAgICBpZiAoIWltcG9ydGVkTW9kdWxlU3VtbWFyeSkge1xuICAgICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgICAgICAgIGBVbmV4cGVjdGVkICR7dGhpcy5fZ2V0VHlwZURlc2NyaXB0b3IoaW1wb3J0ZWRUeXBlKX0gJyR7c3RyaW5naWZ5VHlwZShpbXBvcnRlZFR5cGUpfScgaW1wb3J0ZWQgYnkgdGhlIG1vZHVsZSAnJHtzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfScuIFBsZWFzZSBhZGQgYSBATmdNb2R1bGUgYW5ub3RhdGlvbi5gKSxcbiAgICAgICAgICAgICAgICBtb2R1bGVUeXBlKTtcbiAgICAgICAgICAgIHJldHVybjtcbiAgICAgICAgICB9XG4gICAgICAgICAgaW1wb3J0ZWRNb2R1bGVzLnB1c2goaW1wb3J0ZWRNb2R1bGVTdW1tYXJ5KTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgICAgICBgVW5leHBlY3RlZCB2YWx1ZSAnJHtzdHJpbmdpZnlUeXBlKGltcG9ydGVkVHlwZSl9JyBpbXBvcnRlZCBieSB0aGUgbW9kdWxlICcke3N0cmluZ2lmeVR5cGUobW9kdWxlVHlwZSl9J2ApLFxuICAgICAgICAgICAgICBtb2R1bGVUeXBlKTtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgIH1cblxuICAgIGlmIChtZXRhLmV4cG9ydHMpIHtcbiAgICAgIGZsYXR0ZW5BbmREZWR1cGVBcnJheShtZXRhLmV4cG9ydHMpLmZvckVhY2goKGV4cG9ydGVkVHlwZSkgPT4ge1xuICAgICAgICBpZiAoIWlzVmFsaWRUeXBlKGV4cG9ydGVkVHlwZSkpIHtcbiAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgICAgICBgVW5leHBlY3RlZCB2YWx1ZSAnJHtzdHJpbmdpZnlUeXBlKGV4cG9ydGVkVHlwZSl9JyBleHBvcnRlZCBieSB0aGUgbW9kdWxlICcke3N0cmluZ2lmeVR5cGUobW9kdWxlVHlwZSl9J2ApLFxuICAgICAgICAgICAgICBtb2R1bGVUeXBlKTtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cbiAgICAgICAgaWYgKCFhbHJlYWR5Q29sbGVjdGluZykgYWxyZWFkeUNvbGxlY3RpbmcgPSBuZXcgU2V0KCk7XG4gICAgICAgIGlmIChhbHJlYWR5Q29sbGVjdGluZy5oYXMoZXhwb3J0ZWRUeXBlKSkge1xuICAgICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgICAgICBzeW50YXhFcnJvcihcbiAgICAgICAgICAgICAgICAgIGAke3RoaXMuX2dldFR5cGVEZXNjcmlwdG9yKGV4cG9ydGVkVHlwZSl9ICcke3N0cmluZ2lmeShleHBvcnRlZFR5cGUpfScgaXMgZXhwb3J0ZWQgcmVjdXJzaXZlbHkgYnkgdGhlIG1vZHVsZSAnJHtzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfSdgKSxcbiAgICAgICAgICAgICAgbW9kdWxlVHlwZSk7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9XG4gICAgICAgIGFscmVhZHlDb2xsZWN0aW5nLmFkZChleHBvcnRlZFR5cGUpO1xuICAgICAgICBjb25zdCBleHBvcnRlZE1vZHVsZVN1bW1hcnkgPSB0aGlzLmdldE5nTW9kdWxlU3VtbWFyeShleHBvcnRlZFR5cGUsIGFscmVhZHlDb2xsZWN0aW5nKTtcbiAgICAgICAgYWxyZWFkeUNvbGxlY3RpbmcuZGVsZXRlKGV4cG9ydGVkVHlwZSk7XG4gICAgICAgIGlmIChleHBvcnRlZE1vZHVsZVN1bW1hcnkpIHtcbiAgICAgICAgICBleHBvcnRlZE1vZHVsZXMucHVzaChleHBvcnRlZE1vZHVsZVN1bW1hcnkpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIGV4cG9ydGVkTm9uTW9kdWxlSWRlbnRpZmllcnMucHVzaCh0aGlzLl9nZXRJZGVudGlmaWVyTWV0YWRhdGEoZXhwb3J0ZWRUeXBlKSk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgIH1cblxuICAgIC8vIE5vdGU6IFRoaXMgd2lsbCBiZSBtb2RpZmllZCBsYXRlciwgc28gd2UgcmVseSBvblxuICAgIC8vIGdldHRpbmcgYSBuZXcgaW5zdGFuY2UgZXZlcnkgdGltZSFcbiAgICBjb25zdCB0cmFuc2l0aXZlTW9kdWxlID0gdGhpcy5fZ2V0VHJhbnNpdGl2ZU5nTW9kdWxlTWV0YWRhdGEoaW1wb3J0ZWRNb2R1bGVzLCBleHBvcnRlZE1vZHVsZXMpO1xuICAgIGlmIChtZXRhLmRlY2xhcmF0aW9ucykge1xuICAgICAgZmxhdHRlbkFuZERlZHVwZUFycmF5KG1ldGEuZGVjbGFyYXRpb25zKS5mb3JFYWNoKChkZWNsYXJlZFR5cGUpID0+IHtcbiAgICAgICAgaWYgKCFpc1ZhbGlkVHlwZShkZWNsYXJlZFR5cGUpKSB7XG4gICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICAgICAgYFVuZXhwZWN0ZWQgdmFsdWUgJyR7c3RyaW5naWZ5VHlwZShkZWNsYXJlZFR5cGUpfScgZGVjbGFyZWQgYnkgdGhlIG1vZHVsZSAnJHtzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfSdgKSxcbiAgICAgICAgICAgICAgbW9kdWxlVHlwZSk7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9XG4gICAgICAgIGNvbnN0IGRlY2xhcmVkSWRlbnRpZmllciA9IHRoaXMuX2dldElkZW50aWZpZXJNZXRhZGF0YShkZWNsYXJlZFR5cGUpO1xuICAgICAgICBpZiAodGhpcy5pc0RpcmVjdGl2ZShkZWNsYXJlZFR5cGUpKSB7XG4gICAgICAgICAgaWYgKHRoaXMuaXNBYnN0cmFjdERpcmVjdGl2ZShkZWNsYXJlZFR5cGUpKSB7XG4gICAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICAgICBzeW50YXhFcnJvcihcbiAgICAgICAgICAgICAgICAgICAgYERpcmVjdGl2ZSAke3N0cmluZ2lmeVR5cGUoZGVjbGFyZWRUeXBlKX0gaGFzIG5vIHNlbGVjdG9yLCBwbGVhc2UgYWRkIGl0IWApLFxuICAgICAgICAgICAgICAgIGRlY2xhcmVkVHlwZSk7XG4gICAgICAgICAgfVxuICAgICAgICAgIHRyYW5zaXRpdmVNb2R1bGUuYWRkRGlyZWN0aXZlKGRlY2xhcmVkSWRlbnRpZmllcik7XG4gICAgICAgICAgZGVjbGFyZWREaXJlY3RpdmVzLnB1c2goZGVjbGFyZWRJZGVudGlmaWVyKTtcbiAgICAgICAgICB0aGlzLl9hZGRUeXBlVG9Nb2R1bGUoZGVjbGFyZWRUeXBlLCBtb2R1bGVUeXBlKTtcbiAgICAgICAgfSBlbHNlIGlmICh0aGlzLmlzUGlwZShkZWNsYXJlZFR5cGUpKSB7XG4gICAgICAgICAgdHJhbnNpdGl2ZU1vZHVsZS5hZGRQaXBlKGRlY2xhcmVkSWRlbnRpZmllcik7XG4gICAgICAgICAgdHJhbnNpdGl2ZU1vZHVsZS5waXBlcy5wdXNoKGRlY2xhcmVkSWRlbnRpZmllcik7XG4gICAgICAgICAgZGVjbGFyZWRQaXBlcy5wdXNoKGRlY2xhcmVkSWRlbnRpZmllcik7XG4gICAgICAgICAgdGhpcy5fYWRkVHlwZVRvTW9kdWxlKGRlY2xhcmVkVHlwZSwgbW9kdWxlVHlwZSk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICAgICAgYFVuZXhwZWN0ZWQgJHt0aGlzLl9nZXRUeXBlRGVzY3JpcHRvcihkZWNsYXJlZFR5cGUpfSAnJHtzdHJpbmdpZnlUeXBlKGRlY2xhcmVkVHlwZSl9JyBkZWNsYXJlZCBieSB0aGUgbW9kdWxlICcke3N0cmluZ2lmeVR5cGUobW9kdWxlVHlwZSl9Jy4gUGxlYXNlIGFkZCBhIEBQaXBlL0BEaXJlY3RpdmUvQENvbXBvbmVudCBhbm5vdGF0aW9uLmApLFxuICAgICAgICAgICAgICBtb2R1bGVUeXBlKTtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgIH1cblxuICAgIGNvbnN0IGV4cG9ydGVkRGlyZWN0aXZlczogY3BsLkNvbXBpbGVJZGVudGlmaWVyTWV0YWRhdGFbXSA9IFtdO1xuICAgIGNvbnN0IGV4cG9ydGVkUGlwZXM6IGNwbC5Db21waWxlSWRlbnRpZmllck1ldGFkYXRhW10gPSBbXTtcbiAgICBleHBvcnRlZE5vbk1vZHVsZUlkZW50aWZpZXJzLmZvckVhY2goKGV4cG9ydGVkSWQpID0+IHtcbiAgICAgIGlmICh0cmFuc2l0aXZlTW9kdWxlLmRpcmVjdGl2ZXNTZXQuaGFzKGV4cG9ydGVkSWQucmVmZXJlbmNlKSkge1xuICAgICAgICBleHBvcnRlZERpcmVjdGl2ZXMucHVzaChleHBvcnRlZElkKTtcbiAgICAgICAgdHJhbnNpdGl2ZU1vZHVsZS5hZGRFeHBvcnRlZERpcmVjdGl2ZShleHBvcnRlZElkKTtcbiAgICAgIH0gZWxzZSBpZiAodHJhbnNpdGl2ZU1vZHVsZS5waXBlc1NldC5oYXMoZXhwb3J0ZWRJZC5yZWZlcmVuY2UpKSB7XG4gICAgICAgIGV4cG9ydGVkUGlwZXMucHVzaChleHBvcnRlZElkKTtcbiAgICAgICAgdHJhbnNpdGl2ZU1vZHVsZS5hZGRFeHBvcnRlZFBpcGUoZXhwb3J0ZWRJZCk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICAgIGBDYW4ndCBleHBvcnQgJHt0aGlzLl9nZXRUeXBlRGVzY3JpcHRvcihleHBvcnRlZElkLnJlZmVyZW5jZSl9ICR7c3RyaW5naWZ5VHlwZShleHBvcnRlZElkLnJlZmVyZW5jZSl9IGZyb20gJHtzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfSBhcyBpdCB3YXMgbmVpdGhlciBkZWNsYXJlZCBub3IgaW1wb3J0ZWQhYCksXG4gICAgICAgICAgICBtb2R1bGVUeXBlKTtcbiAgICAgICAgcmV0dXJuO1xuICAgICAgfVxuICAgIH0pO1xuXG4gICAgLy8gVGhlIHByb3ZpZGVycyBvZiB0aGUgbW9kdWxlIGhhdmUgdG8gZ28gbGFzdFxuICAgIC8vIHNvIHRoYXQgdGhleSBvdmVyd3JpdGUgYW55IG90aGVyIHByb3ZpZGVyIHdlIGFscmVhZHkgYWRkZWQuXG4gICAgaWYgKG1ldGEucHJvdmlkZXJzKSB7XG4gICAgICBwcm92aWRlcnMucHVzaCguLi50aGlzLl9nZXRQcm92aWRlcnNNZXRhZGF0YShcbiAgICAgICAgICBtZXRhLnByb3ZpZGVycywgZW50cnlDb21wb25lbnRzLFxuICAgICAgICAgIGBwcm92aWRlciBmb3IgdGhlIE5nTW9kdWxlICcke3N0cmluZ2lmeVR5cGUobW9kdWxlVHlwZSl9J2AsIFtdLCBtb2R1bGVUeXBlKSk7XG4gICAgfVxuXG4gICAgaWYgKG1ldGEuZW50cnlDb21wb25lbnRzKSB7XG4gICAgICBlbnRyeUNvbXBvbmVudHMucHVzaCguLi5mbGF0dGVuQW5kRGVkdXBlQXJyYXkobWV0YS5lbnRyeUNvbXBvbmVudHMpXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLm1hcCh0eXBlID0+IHRoaXMuX2dldEVudHJ5Q29tcG9uZW50TWV0YWRhdGEodHlwZSkgISkpO1xuICAgIH1cblxuICAgIGlmIChtZXRhLmJvb3RzdHJhcCkge1xuICAgICAgZmxhdHRlbkFuZERlZHVwZUFycmF5KG1ldGEuYm9vdHN0cmFwKS5mb3JFYWNoKHR5cGUgPT4ge1xuICAgICAgICBpZiAoIWlzVmFsaWRUeXBlKHR5cGUpKSB7XG4gICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICAgICAgYFVuZXhwZWN0ZWQgdmFsdWUgJyR7c3RyaW5naWZ5VHlwZSh0eXBlKX0nIHVzZWQgaW4gdGhlIGJvb3RzdHJhcCBwcm9wZXJ0eSBvZiBtb2R1bGUgJyR7c3RyaW5naWZ5VHlwZShtb2R1bGVUeXBlKX0nYCksXG4gICAgICAgICAgICAgIG1vZHVsZVR5cGUpO1xuICAgICAgICAgIHJldHVybjtcbiAgICAgICAgfVxuICAgICAgICBib290c3RyYXBDb21wb25lbnRzLnB1c2godGhpcy5fZ2V0SWRlbnRpZmllck1ldGFkYXRhKHR5cGUpKTtcbiAgICAgIH0pO1xuICAgIH1cblxuICAgIGVudHJ5Q29tcG9uZW50cy5wdXNoKFxuICAgICAgICAuLi5ib290c3RyYXBDb21wb25lbnRzLm1hcCh0eXBlID0+IHRoaXMuX2dldEVudHJ5Q29tcG9uZW50TWV0YWRhdGEodHlwZS5yZWZlcmVuY2UpICEpKTtcblxuICAgIGlmIChtZXRhLnNjaGVtYXMpIHtcbiAgICAgIHNjaGVtYXMucHVzaCguLi5mbGF0dGVuQW5kRGVkdXBlQXJyYXkobWV0YS5zY2hlbWFzKSk7XG4gICAgfVxuXG4gICAgY29tcGlsZU1ldGEgPSBuZXcgY3BsLkNvbXBpbGVOZ01vZHVsZU1ldGFkYXRhKHtcbiAgICAgIHR5cGU6IHRoaXMuX2dldFR5cGVNZXRhZGF0YShtb2R1bGVUeXBlKSxcbiAgICAgIHByb3ZpZGVycyxcbiAgICAgIGVudHJ5Q29tcG9uZW50cyxcbiAgICAgIGJvb3RzdHJhcENvbXBvbmVudHMsXG4gICAgICBzY2hlbWFzLFxuICAgICAgZGVjbGFyZWREaXJlY3RpdmVzLFxuICAgICAgZXhwb3J0ZWREaXJlY3RpdmVzLFxuICAgICAgZGVjbGFyZWRQaXBlcyxcbiAgICAgIGV4cG9ydGVkUGlwZXMsXG4gICAgICBpbXBvcnRlZE1vZHVsZXMsXG4gICAgICBleHBvcnRlZE1vZHVsZXMsXG4gICAgICB0cmFuc2l0aXZlTW9kdWxlLFxuICAgICAgaWQ6IG1ldGEuaWQgfHwgbnVsbCxcbiAgICB9KTtcblxuICAgIGVudHJ5Q29tcG9uZW50cy5mb3JFYWNoKChpZCkgPT4gdHJhbnNpdGl2ZU1vZHVsZS5hZGRFbnRyeUNvbXBvbmVudChpZCkpO1xuICAgIHByb3ZpZGVycy5mb3JFYWNoKChwcm92aWRlcikgPT4gdHJhbnNpdGl2ZU1vZHVsZS5hZGRQcm92aWRlcihwcm92aWRlciwgY29tcGlsZU1ldGEgIS50eXBlKSk7XG4gICAgdHJhbnNpdGl2ZU1vZHVsZS5hZGRNb2R1bGUoY29tcGlsZU1ldGEudHlwZSk7XG4gICAgdGhpcy5fbmdNb2R1bGVDYWNoZS5zZXQobW9kdWxlVHlwZSwgY29tcGlsZU1ldGEpO1xuICAgIHJldHVybiBjb21waWxlTWV0YTtcbiAgfVxuXG4gIHByaXZhdGUgX2NoZWNrU2VsZkltcG9ydChtb2R1bGVUeXBlOiBUeXBlLCBpbXBvcnRlZE1vZHVsZVR5cGU6IFR5cGUpOiBib29sZWFuIHtcbiAgICBpZiAobW9kdWxlVHlwZSA9PT0gaW1wb3J0ZWRNb2R1bGVUeXBlKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICBzeW50YXhFcnJvcihgJyR7c3RyaW5naWZ5VHlwZShtb2R1bGVUeXBlKX0nIG1vZHVsZSBjYW4ndCBpbXBvcnQgaXRzZWxmYCksIG1vZHVsZVR5cGUpO1xuICAgICAgcmV0dXJuIHRydWU7XG4gICAgfVxuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHByaXZhdGUgX2dldFR5cGVEZXNjcmlwdG9yKHR5cGU6IFR5cGUpOiBzdHJpbmcge1xuICAgIGlmIChpc1ZhbGlkVHlwZSh0eXBlKSkge1xuICAgICAgaWYgKHRoaXMuaXNEaXJlY3RpdmUodHlwZSkpIHtcbiAgICAgICAgcmV0dXJuICdkaXJlY3RpdmUnO1xuICAgICAgfVxuXG4gICAgICBpZiAodGhpcy5pc1BpcGUodHlwZSkpIHtcbiAgICAgICAgcmV0dXJuICdwaXBlJztcbiAgICAgIH1cblxuICAgICAgaWYgKHRoaXMuaXNOZ01vZHVsZSh0eXBlKSkge1xuICAgICAgICByZXR1cm4gJ21vZHVsZSc7XG4gICAgICB9XG4gICAgfVxuXG4gICAgaWYgKCh0eXBlIGFzIGFueSkucHJvdmlkZSkge1xuICAgICAgcmV0dXJuICdwcm92aWRlcic7XG4gICAgfVxuXG4gICAgcmV0dXJuICd2YWx1ZSc7XG4gIH1cblxuXG4gIHByaXZhdGUgX2FkZFR5cGVUb01vZHVsZSh0eXBlOiBUeXBlLCBtb2R1bGVUeXBlOiBUeXBlKSB7XG4gICAgY29uc3Qgb2xkTW9kdWxlID0gdGhpcy5fbmdNb2R1bGVPZlR5cGVzLmdldCh0eXBlKTtcbiAgICBpZiAob2xkTW9kdWxlICYmIG9sZE1vZHVsZSAhPT0gbW9kdWxlVHlwZSkge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgIGBUeXBlICR7c3RyaW5naWZ5VHlwZSh0eXBlKX0gaXMgcGFydCBvZiB0aGUgZGVjbGFyYXRpb25zIG9mIDIgbW9kdWxlczogJHtzdHJpbmdpZnlUeXBlKG9sZE1vZHVsZSl9IGFuZCAke3N0cmluZ2lmeVR5cGUobW9kdWxlVHlwZSl9ISBgICtcbiAgICAgICAgICAgICAgYFBsZWFzZSBjb25zaWRlciBtb3ZpbmcgJHtzdHJpbmdpZnlUeXBlKHR5cGUpfSB0byBhIGhpZ2hlciBtb2R1bGUgdGhhdCBpbXBvcnRzICR7c3RyaW5naWZ5VHlwZShvbGRNb2R1bGUpfSBhbmQgJHtzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfS4gYCArXG4gICAgICAgICAgICAgIGBZb3UgY2FuIGFsc28gY3JlYXRlIGEgbmV3IE5nTW9kdWxlIHRoYXQgZXhwb3J0cyBhbmQgaW5jbHVkZXMgJHtzdHJpbmdpZnlUeXBlKHR5cGUpfSB0aGVuIGltcG9ydCB0aGF0IE5nTW9kdWxlIGluICR7c3RyaW5naWZ5VHlwZShvbGRNb2R1bGUpfSBhbmQgJHtzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfS5gKSxcbiAgICAgICAgICBtb2R1bGVUeXBlKTtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgdGhpcy5fbmdNb2R1bGVPZlR5cGVzLnNldCh0eXBlLCBtb2R1bGVUeXBlKTtcbiAgfVxuXG4gIHByaXZhdGUgX2dldFRyYW5zaXRpdmVOZ01vZHVsZU1ldGFkYXRhKFxuICAgICAgaW1wb3J0ZWRNb2R1bGVzOiBjcGwuQ29tcGlsZU5nTW9kdWxlU3VtbWFyeVtdLFxuICAgICAgZXhwb3J0ZWRNb2R1bGVzOiBjcGwuQ29tcGlsZU5nTW9kdWxlU3VtbWFyeVtdKTogY3BsLlRyYW5zaXRpdmVDb21waWxlTmdNb2R1bGVNZXRhZGF0YSB7XG4gICAgLy8gY29sbGVjdCBgcHJvdmlkZXJzYCAvIGBlbnRyeUNvbXBvbmVudHNgIGZyb20gYWxsIGltcG9ydGVkIGFuZCBhbGwgZXhwb3J0ZWQgbW9kdWxlc1xuICAgIGNvbnN0IHJlc3VsdCA9IG5ldyBjcGwuVHJhbnNpdGl2ZUNvbXBpbGVOZ01vZHVsZU1ldGFkYXRhKCk7XG4gICAgY29uc3QgbW9kdWxlc0J5VG9rZW4gPSBuZXcgTWFwPGFueSwgU2V0PGFueT4+KCk7XG4gICAgaW1wb3J0ZWRNb2R1bGVzLmNvbmNhdChleHBvcnRlZE1vZHVsZXMpLmZvckVhY2goKG1vZFN1bW1hcnkpID0+IHtcbiAgICAgIG1vZFN1bW1hcnkubW9kdWxlcy5mb3JFYWNoKChtb2QpID0+IHJlc3VsdC5hZGRNb2R1bGUobW9kKSk7XG4gICAgICBtb2RTdW1tYXJ5LmVudHJ5Q29tcG9uZW50cy5mb3JFYWNoKChjb21wKSA9PiByZXN1bHQuYWRkRW50cnlDb21wb25lbnQoY29tcCkpO1xuICAgICAgY29uc3QgYWRkZWRUb2tlbnMgPSBuZXcgU2V0PGFueT4oKTtcbiAgICAgIG1vZFN1bW1hcnkucHJvdmlkZXJzLmZvckVhY2goKGVudHJ5KSA9PiB7XG4gICAgICAgIGNvbnN0IHRva2VuUmVmID0gY3BsLnRva2VuUmVmZXJlbmNlKGVudHJ5LnByb3ZpZGVyLnRva2VuKTtcbiAgICAgICAgbGV0IHByZXZNb2R1bGVzID0gbW9kdWxlc0J5VG9rZW4uZ2V0KHRva2VuUmVmKTtcbiAgICAgICAgaWYgKCFwcmV2TW9kdWxlcykge1xuICAgICAgICAgIHByZXZNb2R1bGVzID0gbmV3IFNldDxhbnk+KCk7XG4gICAgICAgICAgbW9kdWxlc0J5VG9rZW4uc2V0KHRva2VuUmVmLCBwcmV2TW9kdWxlcyk7XG4gICAgICAgIH1cbiAgICAgICAgY29uc3QgbW9kdWxlUmVmID0gZW50cnkubW9kdWxlLnJlZmVyZW5jZTtcbiAgICAgICAgLy8gTm90ZTogdGhlIHByb3ZpZGVycyBvZiBvbmUgbW9kdWxlIG1heSBzdGlsbCBjb250YWluIG11bHRpcGxlIHByb3ZpZGVyc1xuICAgICAgICAvLyBwZXIgdG9rZW4gKGUuZy4gZm9yIG11bHRpIHByb3ZpZGVycyksIGFuZCB3ZSBuZWVkIHRvIHByZXNlcnZlIHRoZXNlLlxuICAgICAgICBpZiAoYWRkZWRUb2tlbnMuaGFzKHRva2VuUmVmKSB8fCAhcHJldk1vZHVsZXMuaGFzKG1vZHVsZVJlZikpIHtcbiAgICAgICAgICBwcmV2TW9kdWxlcy5hZGQobW9kdWxlUmVmKTtcbiAgICAgICAgICBhZGRlZFRva2Vucy5hZGQodG9rZW5SZWYpO1xuICAgICAgICAgIHJlc3VsdC5hZGRQcm92aWRlcihlbnRyeS5wcm92aWRlciwgZW50cnkubW9kdWxlKTtcbiAgICAgICAgfVxuICAgICAgfSk7XG4gICAgfSk7XG4gICAgZXhwb3J0ZWRNb2R1bGVzLmZvckVhY2goKG1vZFN1bW1hcnkpID0+IHtcbiAgICAgIG1vZFN1bW1hcnkuZXhwb3J0ZWREaXJlY3RpdmVzLmZvckVhY2goKGlkKSA9PiByZXN1bHQuYWRkRXhwb3J0ZWREaXJlY3RpdmUoaWQpKTtcbiAgICAgIG1vZFN1bW1hcnkuZXhwb3J0ZWRQaXBlcy5mb3JFYWNoKChpZCkgPT4gcmVzdWx0LmFkZEV4cG9ydGVkUGlwZShpZCkpO1xuICAgIH0pO1xuICAgIGltcG9ydGVkTW9kdWxlcy5mb3JFYWNoKChtb2RTdW1tYXJ5KSA9PiB7XG4gICAgICBtb2RTdW1tYXJ5LmV4cG9ydGVkRGlyZWN0aXZlcy5mb3JFYWNoKChpZCkgPT4gcmVzdWx0LmFkZERpcmVjdGl2ZShpZCkpO1xuICAgICAgbW9kU3VtbWFyeS5leHBvcnRlZFBpcGVzLmZvckVhY2goKGlkKSA9PiByZXN1bHQuYWRkUGlwZShpZCkpO1xuICAgIH0pO1xuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICBwcml2YXRlIF9nZXRJZGVudGlmaWVyTWV0YWRhdGEodHlwZTogVHlwZSk6IGNwbC5Db21waWxlSWRlbnRpZmllck1ldGFkYXRhIHtcbiAgICB0eXBlID0gcmVzb2x2ZUZvcndhcmRSZWYodHlwZSk7XG4gICAgcmV0dXJuIHtyZWZlcmVuY2U6IHR5cGV9O1xuICB9XG5cbiAgaXNJbmplY3RhYmxlKHR5cGU6IGFueSk6IGJvb2xlYW4ge1xuICAgIGNvbnN0IGFubm90YXRpb25zID0gdGhpcy5fcmVmbGVjdG9yLnRyeUFubm90YXRpb25zKHR5cGUpO1xuICAgIHJldHVybiBhbm5vdGF0aW9ucy5zb21lKGFubiA9PiBjcmVhdGVJbmplY3RhYmxlLmlzVHlwZU9mKGFubikpO1xuICB9XG5cbiAgZ2V0SW5qZWN0YWJsZVN1bW1hcnkodHlwZTogYW55KTogY3BsLkNvbXBpbGVUeXBlU3VtbWFyeSB7XG4gICAgcmV0dXJuIHtcbiAgICAgIHN1bW1hcnlLaW5kOiBjcGwuQ29tcGlsZVN1bW1hcnlLaW5kLkluamVjdGFibGUsXG4gICAgICB0eXBlOiB0aGlzLl9nZXRUeXBlTWV0YWRhdGEodHlwZSwgbnVsbCwgZmFsc2UpXG4gICAgfTtcbiAgfVxuXG4gIGdldEluamVjdGFibGVNZXRhZGF0YShcbiAgICAgIHR5cGU6IGFueSwgZGVwZW5kZW5jaWVzOiBhbnlbXXxudWxsID0gbnVsbCxcbiAgICAgIHRocm93T25Vbmtub3duRGVwczogYm9vbGVhbiA9IHRydWUpOiBjcGwuQ29tcGlsZUluamVjdGFibGVNZXRhZGF0YXxudWxsIHtcbiAgICBjb25zdCB0eXBlU3VtbWFyeSA9IHRoaXMuX2xvYWRTdW1tYXJ5KHR5cGUsIGNwbC5Db21waWxlU3VtbWFyeUtpbmQuSW5qZWN0YWJsZSk7XG4gICAgY29uc3QgdHlwZU1ldGFkYXRhID0gdHlwZVN1bW1hcnkgP1xuICAgICAgICB0eXBlU3VtbWFyeS50eXBlIDpcbiAgICAgICAgdGhpcy5fZ2V0VHlwZU1ldGFkYXRhKHR5cGUsIGRlcGVuZGVuY2llcywgdGhyb3dPblVua25vd25EZXBzKTtcblxuICAgIGNvbnN0IGFubm90YXRpb25zOiBJbmplY3RhYmxlW10gPVxuICAgICAgICB0aGlzLl9yZWZsZWN0b3IuYW5ub3RhdGlvbnModHlwZSkuZmlsdGVyKGFubiA9PiBjcmVhdGVJbmplY3RhYmxlLmlzVHlwZU9mKGFubikpO1xuXG4gICAgaWYgKGFubm90YXRpb25zLmxlbmd0aCA9PT0gMCkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuXG4gICAgY29uc3QgbWV0YSA9IGFubm90YXRpb25zW2Fubm90YXRpb25zLmxlbmd0aCAtIDFdO1xuICAgIHJldHVybiB7XG4gICAgICBzeW1ib2w6IHR5cGUsXG4gICAgICB0eXBlOiB0eXBlTWV0YWRhdGEsXG4gICAgICBwcm92aWRlZEluOiBtZXRhLnByb3ZpZGVkSW4sXG4gICAgICB1c2VWYWx1ZTogbWV0YS51c2VWYWx1ZSxcbiAgICAgIHVzZUNsYXNzOiBtZXRhLnVzZUNsYXNzLFxuICAgICAgdXNlRXhpc3Rpbmc6IG1ldGEudXNlRXhpc3RpbmcsXG4gICAgICB1c2VGYWN0b3J5OiBtZXRhLnVzZUZhY3RvcnksXG4gICAgICBkZXBzOiBtZXRhLmRlcHMsXG4gICAgfTtcbiAgfVxuXG4gIHByaXZhdGUgX2dldFR5cGVNZXRhZGF0YSh0eXBlOiBUeXBlLCBkZXBlbmRlbmNpZXM6IGFueVtdfG51bGwgPSBudWxsLCB0aHJvd09uVW5rbm93bkRlcHMgPSB0cnVlKTpcbiAgICAgIGNwbC5Db21waWxlVHlwZU1ldGFkYXRhIHtcbiAgICBjb25zdCBpZGVudGlmaWVyID0gdGhpcy5fZ2V0SWRlbnRpZmllck1ldGFkYXRhKHR5cGUpO1xuICAgIHJldHVybiB7XG4gICAgICByZWZlcmVuY2U6IGlkZW50aWZpZXIucmVmZXJlbmNlLFxuICAgICAgZGlEZXBzOiB0aGlzLl9nZXREZXBlbmRlbmNpZXNNZXRhZGF0YShpZGVudGlmaWVyLnJlZmVyZW5jZSwgZGVwZW5kZW5jaWVzLCB0aHJvd09uVW5rbm93bkRlcHMpLFxuICAgICAgbGlmZWN5Y2xlSG9va3M6IGdldEFsbExpZmVjeWNsZUhvb2tzKHRoaXMuX3JlZmxlY3RvciwgaWRlbnRpZmllci5yZWZlcmVuY2UpLFxuICAgIH07XG4gIH1cblxuICBwcml2YXRlIF9nZXRGYWN0b3J5TWV0YWRhdGEoZmFjdG9yeTogRnVuY3Rpb24sIGRlcGVuZGVuY2llczogYW55W118bnVsbCA9IG51bGwpOlxuICAgICAgY3BsLkNvbXBpbGVGYWN0b3J5TWV0YWRhdGEge1xuICAgIGZhY3RvcnkgPSByZXNvbHZlRm9yd2FyZFJlZihmYWN0b3J5KTtcbiAgICByZXR1cm4ge3JlZmVyZW5jZTogZmFjdG9yeSwgZGlEZXBzOiB0aGlzLl9nZXREZXBlbmRlbmNpZXNNZXRhZGF0YShmYWN0b3J5LCBkZXBlbmRlbmNpZXMpfTtcbiAgfVxuXG4gIC8qKlxuICAgKiBHZXRzIHRoZSBtZXRhZGF0YSBmb3IgdGhlIGdpdmVuIHBpcGUuXG4gICAqIFRoaXMgYXNzdW1lcyBgbG9hZE5nTW9kdWxlRGlyZWN0aXZlQW5kUGlwZU1ldGFkYXRhYCBoYXMgYmVlbiBjYWxsZWQgZmlyc3QuXG4gICAqL1xuICBnZXRQaXBlTWV0YWRhdGEocGlwZVR5cGU6IGFueSk6IGNwbC5Db21waWxlUGlwZU1ldGFkYXRhfG51bGwge1xuICAgIGNvbnN0IHBpcGVNZXRhID0gdGhpcy5fcGlwZUNhY2hlLmdldChwaXBlVHlwZSk7XG4gICAgaWYgKCFwaXBlTWV0YSkge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgIGBJbGxlZ2FsIHN0YXRlOiBnZXRQaXBlTWV0YWRhdGEgY2FuIG9ubHkgYmUgY2FsbGVkIGFmdGVyIGxvYWROZ01vZHVsZURpcmVjdGl2ZUFuZFBpcGVNZXRhZGF0YSBmb3IgYSBtb2R1bGUgdGhhdCBkZWNsYXJlcyBpdC4gUGlwZSAke3N0cmluZ2lmeVR5cGUocGlwZVR5cGUpfS5gKSxcbiAgICAgICAgICBwaXBlVHlwZSk7XG4gICAgfVxuICAgIHJldHVybiBwaXBlTWV0YSB8fCBudWxsO1xuICB9XG5cbiAgZ2V0UGlwZVN1bW1hcnkocGlwZVR5cGU6IGFueSk6IGNwbC5Db21waWxlUGlwZVN1bW1hcnkge1xuICAgIGNvbnN0IHBpcGVTdW1tYXJ5ID1cbiAgICAgICAgPGNwbC5Db21waWxlUGlwZVN1bW1hcnk+dGhpcy5fbG9hZFN1bW1hcnkocGlwZVR5cGUsIGNwbC5Db21waWxlU3VtbWFyeUtpbmQuUGlwZSk7XG4gICAgaWYgKCFwaXBlU3VtbWFyeSkge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgIGBJbGxlZ2FsIHN0YXRlOiBDb3VsZCBub3QgbG9hZCB0aGUgc3VtbWFyeSBmb3IgcGlwZSAke3N0cmluZ2lmeVR5cGUocGlwZVR5cGUpfS5gKSxcbiAgICAgICAgICBwaXBlVHlwZSk7XG4gICAgfVxuICAgIHJldHVybiBwaXBlU3VtbWFyeTtcbiAgfVxuXG4gIGdldE9yTG9hZFBpcGVNZXRhZGF0YShwaXBlVHlwZTogYW55KTogY3BsLkNvbXBpbGVQaXBlTWV0YWRhdGEge1xuICAgIGxldCBwaXBlTWV0YSA9IHRoaXMuX3BpcGVDYWNoZS5nZXQocGlwZVR5cGUpO1xuICAgIGlmICghcGlwZU1ldGEpIHtcbiAgICAgIHBpcGVNZXRhID0gdGhpcy5fbG9hZFBpcGVNZXRhZGF0YShwaXBlVHlwZSk7XG4gICAgfVxuICAgIHJldHVybiBwaXBlTWV0YTtcbiAgfVxuXG4gIHByaXZhdGUgX2xvYWRQaXBlTWV0YWRhdGEocGlwZVR5cGU6IGFueSk6IGNwbC5Db21waWxlUGlwZU1ldGFkYXRhIHtcbiAgICBwaXBlVHlwZSA9IHJlc29sdmVGb3J3YXJkUmVmKHBpcGVUeXBlKTtcbiAgICBjb25zdCBwaXBlQW5ub3RhdGlvbiA9IHRoaXMuX3BpcGVSZXNvbHZlci5yZXNvbHZlKHBpcGVUeXBlKSAhO1xuXG4gICAgY29uc3QgcGlwZU1ldGEgPSBuZXcgY3BsLkNvbXBpbGVQaXBlTWV0YWRhdGEoe1xuICAgICAgdHlwZTogdGhpcy5fZ2V0VHlwZU1ldGFkYXRhKHBpcGVUeXBlKSxcbiAgICAgIG5hbWU6IHBpcGVBbm5vdGF0aW9uLm5hbWUsXG4gICAgICBwdXJlOiAhIXBpcGVBbm5vdGF0aW9uLnB1cmVcbiAgICB9KTtcbiAgICB0aGlzLl9waXBlQ2FjaGUuc2V0KHBpcGVUeXBlLCBwaXBlTWV0YSk7XG4gICAgdGhpcy5fc3VtbWFyeUNhY2hlLnNldChwaXBlVHlwZSwgcGlwZU1ldGEudG9TdW1tYXJ5KCkpO1xuICAgIHJldHVybiBwaXBlTWV0YTtcbiAgfVxuXG4gIHByaXZhdGUgX2dldERlcGVuZGVuY2llc01ldGFkYXRhKFxuICAgICAgdHlwZU9yRnVuYzogVHlwZXxGdW5jdGlvbiwgZGVwZW5kZW5jaWVzOiBhbnlbXXxudWxsLFxuICAgICAgdGhyb3dPblVua25vd25EZXBzID0gdHJ1ZSk6IGNwbC5Db21waWxlRGlEZXBlbmRlbmN5TWV0YWRhdGFbXSB7XG4gICAgbGV0IGhhc1Vua25vd25EZXBzID0gZmFsc2U7XG4gICAgY29uc3QgcGFyYW1zID0gZGVwZW5kZW5jaWVzIHx8IHRoaXMuX3JlZmxlY3Rvci5wYXJhbWV0ZXJzKHR5cGVPckZ1bmMpIHx8IFtdO1xuXG4gICAgY29uc3QgZGVwZW5kZW5jaWVzTWV0YWRhdGE6IGNwbC5Db21waWxlRGlEZXBlbmRlbmN5TWV0YWRhdGFbXSA9IHBhcmFtcy5tYXAoKHBhcmFtKSA9PiB7XG4gICAgICBsZXQgaXNBdHRyaWJ1dGUgPSBmYWxzZTtcbiAgICAgIGxldCBpc0hvc3QgPSBmYWxzZTtcbiAgICAgIGxldCBpc1NlbGYgPSBmYWxzZTtcbiAgICAgIGxldCBpc1NraXBTZWxmID0gZmFsc2U7XG4gICAgICBsZXQgaXNPcHRpb25hbCA9IGZhbHNlO1xuICAgICAgbGV0IHRva2VuOiBhbnkgPSBudWxsO1xuICAgICAgaWYgKEFycmF5LmlzQXJyYXkocGFyYW0pKSB7XG4gICAgICAgIHBhcmFtLmZvckVhY2goKHBhcmFtRW50cnk6IGFueSkgPT4ge1xuICAgICAgICAgIGlmIChjcmVhdGVIb3N0LmlzVHlwZU9mKHBhcmFtRW50cnkpKSB7XG4gICAgICAgICAgICBpc0hvc3QgPSB0cnVlO1xuICAgICAgICAgIH0gZWxzZSBpZiAoY3JlYXRlU2VsZi5pc1R5cGVPZihwYXJhbUVudHJ5KSkge1xuICAgICAgICAgICAgaXNTZWxmID0gdHJ1ZTtcbiAgICAgICAgICB9IGVsc2UgaWYgKGNyZWF0ZVNraXBTZWxmLmlzVHlwZU9mKHBhcmFtRW50cnkpKSB7XG4gICAgICAgICAgICBpc1NraXBTZWxmID0gdHJ1ZTtcbiAgICAgICAgICB9IGVsc2UgaWYgKGNyZWF0ZU9wdGlvbmFsLmlzVHlwZU9mKHBhcmFtRW50cnkpKSB7XG4gICAgICAgICAgICBpc09wdGlvbmFsID0gdHJ1ZTtcbiAgICAgICAgICB9IGVsc2UgaWYgKGNyZWF0ZUF0dHJpYnV0ZS5pc1R5cGVPZihwYXJhbUVudHJ5KSkge1xuICAgICAgICAgICAgaXNBdHRyaWJ1dGUgPSB0cnVlO1xuICAgICAgICAgICAgdG9rZW4gPSAocGFyYW1FbnRyeSBhcyBhbnkpLmF0dHJpYnV0ZU5hbWU7XG4gICAgICAgICAgfSBlbHNlIGlmIChjcmVhdGVJbmplY3QuaXNUeXBlT2YocGFyYW1FbnRyeSkpIHtcbiAgICAgICAgICAgIHRva2VuID0gKHBhcmFtRW50cnkgYXMgYW55KS50b2tlbjtcbiAgICAgICAgICB9IGVsc2UgaWYgKFxuICAgICAgICAgICAgICBjcmVhdGVJbmplY3Rpb25Ub2tlbi5pc1R5cGVPZihwYXJhbUVudHJ5KSB8fFxuICAgICAgICAgICAgICAocGFyYW1FbnRyeSBhcyBhbnkpIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB7XG4gICAgICAgICAgICB0b2tlbiA9IHBhcmFtRW50cnk7XG4gICAgICAgICAgfSBlbHNlIGlmIChpc1ZhbGlkVHlwZShwYXJhbUVudHJ5KSAmJiB0b2tlbiA9PSBudWxsKSB7XG4gICAgICAgICAgICB0b2tlbiA9IHBhcmFtRW50cnk7XG4gICAgICAgICAgfVxuICAgICAgICB9KTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHRva2VuID0gcGFyYW07XG4gICAgICB9XG4gICAgICBpZiAodG9rZW4gPT0gbnVsbCkge1xuICAgICAgICBoYXNVbmtub3duRGVwcyA9IHRydWU7XG4gICAgICAgIHJldHVybiB7fTtcbiAgICAgIH1cblxuICAgICAgcmV0dXJuIHtcbiAgICAgICAgaXNBdHRyaWJ1dGUsXG4gICAgICAgIGlzSG9zdCxcbiAgICAgICAgaXNTZWxmLFxuICAgICAgICBpc1NraXBTZWxmLFxuICAgICAgICBpc09wdGlvbmFsLFxuICAgICAgICB0b2tlbjogdGhpcy5fZ2V0VG9rZW5NZXRhZGF0YSh0b2tlbilcbiAgICAgIH07XG5cbiAgICB9KTtcblxuICAgIGlmIChoYXNVbmtub3duRGVwcykge1xuICAgICAgY29uc3QgZGVwc1Rva2VucyA9XG4gICAgICAgICAgZGVwZW5kZW5jaWVzTWV0YWRhdGEubWFwKChkZXApID0+IGRlcC50b2tlbiA/IHN0cmluZ2lmeVR5cGUoZGVwLnRva2VuKSA6ICc/Jykuam9pbignLCAnKTtcbiAgICAgIGNvbnN0IG1lc3NhZ2UgPVxuICAgICAgICAgIGBDYW4ndCByZXNvbHZlIGFsbCBwYXJhbWV0ZXJzIGZvciAke3N0cmluZ2lmeVR5cGUodHlwZU9yRnVuYyl9OiAoJHtkZXBzVG9rZW5zfSkuYDtcbiAgICAgIGlmICh0aHJvd09uVW5rbm93bkRlcHMgfHwgdGhpcy5fY29uZmlnLnN0cmljdEluamVjdGlvblBhcmFtZXRlcnMpIHtcbiAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3Ioc3ludGF4RXJyb3IobWVzc2FnZSksIHR5cGVPckZ1bmMpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdGhpcy5fY29uc29sZS53YXJuKGBXYXJuaW5nOiAke21lc3NhZ2V9IFRoaXMgd2lsbCBiZWNvbWUgYW4gZXJyb3IgaW4gQW5ndWxhciB2Ni54YCk7XG4gICAgICB9XG4gICAgfVxuXG4gICAgcmV0dXJuIGRlcGVuZGVuY2llc01ldGFkYXRhO1xuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0VG9rZW5NZXRhZGF0YSh0b2tlbjogYW55KTogY3BsLkNvbXBpbGVUb2tlbk1ldGFkYXRhIHtcbiAgICB0b2tlbiA9IHJlc29sdmVGb3J3YXJkUmVmKHRva2VuKTtcbiAgICBsZXQgY29tcGlsZVRva2VuOiBjcGwuQ29tcGlsZVRva2VuTWV0YWRhdGE7XG4gICAgaWYgKHR5cGVvZiB0b2tlbiA9PT0gJ3N0cmluZycpIHtcbiAgICAgIGNvbXBpbGVUb2tlbiA9IHt2YWx1ZTogdG9rZW59O1xuICAgIH0gZWxzZSB7XG4gICAgICBjb21waWxlVG9rZW4gPSB7aWRlbnRpZmllcjoge3JlZmVyZW5jZTogdG9rZW59fTtcbiAgICB9XG4gICAgcmV0dXJuIGNvbXBpbGVUb2tlbjtcbiAgfVxuXG4gIHByaXZhdGUgX2dldFByb3ZpZGVyc01ldGFkYXRhKFxuICAgICAgcHJvdmlkZXJzOiBQcm92aWRlcltdLCB0YXJnZXRFbnRyeUNvbXBvbmVudHM6IGNwbC5Db21waWxlRW50cnlDb21wb25lbnRNZXRhZGF0YVtdLFxuICAgICAgZGVidWdJbmZvPzogc3RyaW5nLCBjb21waWxlUHJvdmlkZXJzOiBjcGwuQ29tcGlsZVByb3ZpZGVyTWV0YWRhdGFbXSA9IFtdLFxuICAgICAgdHlwZT86IGFueSk6IGNwbC5Db21waWxlUHJvdmlkZXJNZXRhZGF0YVtdIHtcbiAgICBwcm92aWRlcnMuZm9yRWFjaCgocHJvdmlkZXI6IGFueSwgcHJvdmlkZXJJZHg6IG51bWJlcikgPT4ge1xuICAgICAgaWYgKEFycmF5LmlzQXJyYXkocHJvdmlkZXIpKSB7XG4gICAgICAgIHRoaXMuX2dldFByb3ZpZGVyc01ldGFkYXRhKHByb3ZpZGVyLCB0YXJnZXRFbnRyeUNvbXBvbmVudHMsIGRlYnVnSW5mbywgY29tcGlsZVByb3ZpZGVycyk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBwcm92aWRlciA9IHJlc29sdmVGb3J3YXJkUmVmKHByb3ZpZGVyKTtcbiAgICAgICAgbGV0IHByb3ZpZGVyTWV0YTogY3BsLlByb3ZpZGVyTWV0YSA9IHVuZGVmaW5lZCAhO1xuICAgICAgICBpZiAocHJvdmlkZXIgJiYgdHlwZW9mIHByb3ZpZGVyID09PSAnb2JqZWN0JyAmJiBwcm92aWRlci5oYXNPd25Qcm9wZXJ0eSgncHJvdmlkZScpKSB7XG4gICAgICAgICAgdGhpcy5fdmFsaWRhdGVQcm92aWRlcihwcm92aWRlcik7XG4gICAgICAgICAgcHJvdmlkZXJNZXRhID0gbmV3IGNwbC5Qcm92aWRlck1ldGEocHJvdmlkZXIucHJvdmlkZSwgcHJvdmlkZXIpO1xuICAgICAgICB9IGVsc2UgaWYgKGlzVmFsaWRUeXBlKHByb3ZpZGVyKSkge1xuICAgICAgICAgIHByb3ZpZGVyTWV0YSA9IG5ldyBjcGwuUHJvdmlkZXJNZXRhKHByb3ZpZGVyLCB7dXNlQ2xhc3M6IHByb3ZpZGVyfSk7XG4gICAgICAgIH0gZWxzZSBpZiAocHJvdmlkZXIgPT09IHZvaWQgMCkge1xuICAgICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICBgRW5jb3VudGVyZWQgdW5kZWZpbmVkIHByb3ZpZGVyISBVc3VhbGx5IHRoaXMgbWVhbnMgeW91IGhhdmUgYSBjaXJjdWxhciBkZXBlbmRlbmNpZXMuIFRoaXMgbWlnaHQgYmUgY2F1c2VkIGJ5IHVzaW5nICdiYXJyZWwnIGluZGV4LnRzIGZpbGVzLmApKTtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgY29uc3QgcHJvdmlkZXJzSW5mbyA9XG4gICAgICAgICAgICAgIHByb3ZpZGVyc1xuICAgICAgICAgICAgICAgICAgLnJlZHVjZShcbiAgICAgICAgICAgICAgICAgICAgICAoc29GYXI6IHN0cmluZ1tdLCBzZWVuUHJvdmlkZXI6IGFueSwgc2VlblByb3ZpZGVySWR4OiBudW1iZXIpID0+IHtcbiAgICAgICAgICAgICAgICAgICAgICAgIGlmIChzZWVuUHJvdmlkZXJJZHggPCBwcm92aWRlcklkeCkge1xuICAgICAgICAgICAgICAgICAgICAgICAgICBzb0Zhci5wdXNoKGAke3N0cmluZ2lmeVR5cGUoc2VlblByb3ZpZGVyKX1gKTtcbiAgICAgICAgICAgICAgICAgICAgICAgIH0gZWxzZSBpZiAoc2VlblByb3ZpZGVySWR4ID09IHByb3ZpZGVySWR4KSB7XG4gICAgICAgICAgICAgICAgICAgICAgICAgIHNvRmFyLnB1c2goYD8ke3N0cmluZ2lmeVR5cGUoc2VlblByb3ZpZGVyKX0/YCk7XG4gICAgICAgICAgICAgICAgICAgICAgICB9IGVsc2UgaWYgKHNlZW5Qcm92aWRlcklkeCA9PSBwcm92aWRlcklkeCArIDEpIHtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgc29GYXIucHVzaCgnLi4uJyk7XG4gICAgICAgICAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gc29GYXI7XG4gICAgICAgICAgICAgICAgICAgICAgfSxcbiAgICAgICAgICAgICAgICAgICAgICBbXSlcbiAgICAgICAgICAgICAgICAgIC5qb2luKCcsICcpO1xuICAgICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgICAgICBzeW50YXhFcnJvcihcbiAgICAgICAgICAgICAgICAgIGBJbnZhbGlkICR7ZGVidWdJbmZvID8gZGVidWdJbmZvIDogJ3Byb3ZpZGVyJ30gLSBvbmx5IGluc3RhbmNlcyBvZiBQcm92aWRlciBhbmQgVHlwZSBhcmUgYWxsb3dlZCwgZ290OiBbJHtwcm92aWRlcnNJbmZvfV1gKSxcbiAgICAgICAgICAgICAgdHlwZSk7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9XG4gICAgICAgIGlmIChwcm92aWRlck1ldGEudG9rZW4gPT09XG4gICAgICAgICAgICB0aGlzLl9yZWZsZWN0b3IucmVzb2x2ZUV4dGVybmFsUmVmZXJlbmNlKElkZW50aWZpZXJzLkFOQUxZWkVfRk9SX0VOVFJZX0NPTVBPTkVOVFMpKSB7XG4gICAgICAgICAgdGFyZ2V0RW50cnlDb21wb25lbnRzLnB1c2goLi4udGhpcy5fZ2V0RW50cnlDb21wb25lbnRzRnJvbVByb3ZpZGVyKHByb3ZpZGVyTWV0YSwgdHlwZSkpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIGNvbXBpbGVQcm92aWRlcnMucHVzaCh0aGlzLmdldFByb3ZpZGVyTWV0YWRhdGEocHJvdmlkZXJNZXRhKSk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9KTtcbiAgICByZXR1cm4gY29tcGlsZVByb3ZpZGVycztcbiAgfVxuXG4gIHByaXZhdGUgX3ZhbGlkYXRlUHJvdmlkZXIocHJvdmlkZXI6IGFueSk6IHZvaWQge1xuICAgIGlmIChwcm92aWRlci5oYXNPd25Qcm9wZXJ0eSgndXNlQ2xhc3MnKSAmJiBwcm92aWRlci51c2VDbGFzcyA9PSBudWxsKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihzeW50YXhFcnJvcihcbiAgICAgICAgICBgSW52YWxpZCBwcm92aWRlciBmb3IgJHtzdHJpbmdpZnlUeXBlKHByb3ZpZGVyLnByb3ZpZGUpfS4gdXNlQ2xhc3MgY2Fubm90IGJlICR7cHJvdmlkZXIudXNlQ2xhc3N9LlxuICAgICAgICAgICBVc3VhbGx5IGl0IGhhcHBlbnMgd2hlbjpcbiAgICAgICAgICAgMS4gVGhlcmUncyBhIGNpcmN1bGFyIGRlcGVuZGVuY3kgKG1pZ2h0IGJlIGNhdXNlZCBieSB1c2luZyBpbmRleC50cyAoYmFycmVsKSBmaWxlcykuXG4gICAgICAgICAgIDIuIENsYXNzIHdhcyB1c2VkIGJlZm9yZSBpdCB3YXMgZGVjbGFyZWQuIFVzZSBmb3J3YXJkUmVmIGluIHRoaXMgY2FzZS5gKSk7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0RW50cnlDb21wb25lbnRzRnJvbVByb3ZpZGVyKHByb3ZpZGVyOiBjcGwuUHJvdmlkZXJNZXRhLCB0eXBlPzogYW55KTpcbiAgICAgIGNwbC5Db21waWxlRW50cnlDb21wb25lbnRNZXRhZGF0YVtdIHtcbiAgICBjb25zdCBjb21wb25lbnRzOiBjcGwuQ29tcGlsZUVudHJ5Q29tcG9uZW50TWV0YWRhdGFbXSA9IFtdO1xuICAgIGNvbnN0IGNvbGxlY3RlZElkZW50aWZpZXJzOiBjcGwuQ29tcGlsZUlkZW50aWZpZXJNZXRhZGF0YVtdID0gW107XG5cbiAgICBpZiAocHJvdmlkZXIudXNlRmFjdG9yeSB8fCBwcm92aWRlci51c2VFeGlzdGluZyB8fCBwcm92aWRlci51c2VDbGFzcykge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgc3ludGF4RXJyb3IoYFRoZSBBTkFMWVpFX0ZPUl9FTlRSWV9DT01QT05FTlRTIHRva2VuIG9ubHkgc3VwcG9ydHMgdXNlVmFsdWUhYCksIHR5cGUpO1xuICAgICAgcmV0dXJuIFtdO1xuICAgIH1cblxuICAgIGlmICghcHJvdmlkZXIubXVsdGkpIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgIHN5bnRheEVycm9yKGBUaGUgQU5BTFlaRV9GT1JfRU5UUllfQ09NUE9ORU5UUyB0b2tlbiBvbmx5IHN1cHBvcnRzICdtdWx0aSA9IHRydWUnIWApLFxuICAgICAgICAgIHR5cGUpO1xuICAgICAgcmV0dXJuIFtdO1xuICAgIH1cblxuICAgIGV4dHJhY3RJZGVudGlmaWVycyhwcm92aWRlci51c2VWYWx1ZSwgY29sbGVjdGVkSWRlbnRpZmllcnMpO1xuICAgIGNvbGxlY3RlZElkZW50aWZpZXJzLmZvckVhY2goKGlkZW50aWZpZXIpID0+IHtcbiAgICAgIGNvbnN0IGVudHJ5ID0gdGhpcy5fZ2V0RW50cnlDb21wb25lbnRNZXRhZGF0YShpZGVudGlmaWVyLnJlZmVyZW5jZSwgZmFsc2UpO1xuICAgICAgaWYgKGVudHJ5KSB7XG4gICAgICAgIGNvbXBvbmVudHMucHVzaChlbnRyeSk7XG4gICAgICB9XG4gICAgfSk7XG4gICAgcmV0dXJuIGNvbXBvbmVudHM7XG4gIH1cblxuICBwcml2YXRlIF9nZXRFbnRyeUNvbXBvbmVudE1ldGFkYXRhKGRpclR5cGU6IGFueSwgdGhyb3dJZk5vdEZvdW5kID0gdHJ1ZSk6XG4gICAgICBjcGwuQ29tcGlsZUVudHJ5Q29tcG9uZW50TWV0YWRhdGF8bnVsbCB7XG4gICAgY29uc3QgZGlyTWV0YSA9IHRoaXMuZ2V0Tm9uTm9ybWFsaXplZERpcmVjdGl2ZU1ldGFkYXRhKGRpclR5cGUpO1xuICAgIGlmIChkaXJNZXRhICYmIGRpck1ldGEubWV0YWRhdGEuaXNDb21wb25lbnQpIHtcbiAgICAgIHJldHVybiB7Y29tcG9uZW50VHlwZTogZGlyVHlwZSwgY29tcG9uZW50RmFjdG9yeTogZGlyTWV0YS5tZXRhZGF0YS5jb21wb25lbnRGYWN0b3J5ICF9O1xuICAgIH1cbiAgICBjb25zdCBkaXJTdW1tYXJ5ID1cbiAgICAgICAgPGNwbC5Db21waWxlRGlyZWN0aXZlU3VtbWFyeT50aGlzLl9sb2FkU3VtbWFyeShkaXJUeXBlLCBjcGwuQ29tcGlsZVN1bW1hcnlLaW5kLkRpcmVjdGl2ZSk7XG4gICAgaWYgKGRpclN1bW1hcnkgJiYgZGlyU3VtbWFyeS5pc0NvbXBvbmVudCkge1xuICAgICAgcmV0dXJuIHtjb21wb25lbnRUeXBlOiBkaXJUeXBlLCBjb21wb25lbnRGYWN0b3J5OiBkaXJTdW1tYXJ5LmNvbXBvbmVudEZhY3RvcnkgIX07XG4gICAgfVxuICAgIGlmICh0aHJvd0lmTm90Rm91bmQpIHtcbiAgICAgIHRocm93IHN5bnRheEVycm9yKGAke2RpclR5cGUubmFtZX0gY2Fubm90IGJlIHVzZWQgYXMgYW4gZW50cnkgY29tcG9uZW50LmApO1xuICAgIH1cbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIHByaXZhdGUgX2dldEluamVjdGFibGVUeXBlTWV0YWRhdGEodHlwZTogVHlwZSwgZGVwZW5kZW5jaWVzOiBhbnlbXXxudWxsID0gbnVsbCk6XG4gICAgICBjcGwuQ29tcGlsZVR5cGVNZXRhZGF0YSB7XG4gICAgY29uc3QgdHlwZVN1bW1hcnkgPSB0aGlzLl9sb2FkU3VtbWFyeSh0eXBlLCBjcGwuQ29tcGlsZVN1bW1hcnlLaW5kLkluamVjdGFibGUpO1xuICAgIGlmICh0eXBlU3VtbWFyeSkge1xuICAgICAgcmV0dXJuIHR5cGVTdW1tYXJ5LnR5cGU7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLl9nZXRUeXBlTWV0YWRhdGEodHlwZSwgZGVwZW5kZW5jaWVzKTtcbiAgfVxuXG4gIGdldFByb3ZpZGVyTWV0YWRhdGEocHJvdmlkZXI6IGNwbC5Qcm92aWRlck1ldGEpOiBjcGwuQ29tcGlsZVByb3ZpZGVyTWV0YWRhdGEge1xuICAgIGxldCBjb21waWxlRGVwczogY3BsLkNvbXBpbGVEaURlcGVuZGVuY3lNZXRhZGF0YVtdID0gdW5kZWZpbmVkICE7XG4gICAgbGV0IGNvbXBpbGVUeXBlTWV0YWRhdGE6IGNwbC5Db21waWxlVHlwZU1ldGFkYXRhID0gbnVsbCAhO1xuICAgIGxldCBjb21waWxlRmFjdG9yeU1ldGFkYXRhOiBjcGwuQ29tcGlsZUZhY3RvcnlNZXRhZGF0YSA9IG51bGwgITtcbiAgICBsZXQgdG9rZW46IGNwbC5Db21waWxlVG9rZW5NZXRhZGF0YSA9IHRoaXMuX2dldFRva2VuTWV0YWRhdGEocHJvdmlkZXIudG9rZW4pO1xuXG4gICAgaWYgKHByb3ZpZGVyLnVzZUNsYXNzKSB7XG4gICAgICBjb21waWxlVHlwZU1ldGFkYXRhID1cbiAgICAgICAgICB0aGlzLl9nZXRJbmplY3RhYmxlVHlwZU1ldGFkYXRhKHByb3ZpZGVyLnVzZUNsYXNzLCBwcm92aWRlci5kZXBlbmRlbmNpZXMpO1xuICAgICAgY29tcGlsZURlcHMgPSBjb21waWxlVHlwZU1ldGFkYXRhLmRpRGVwcztcbiAgICAgIGlmIChwcm92aWRlci50b2tlbiA9PT0gcHJvdmlkZXIudXNlQ2xhc3MpIHtcbiAgICAgICAgLy8gdXNlIHRoZSBjb21waWxlVHlwZU1ldGFkYXRhIGFzIGl0IGNvbnRhaW5zIGluZm9ybWF0aW9uIGFib3V0IGxpZmVjeWNsZUhvb2tzLi4uXG4gICAgICAgIHRva2VuID0ge2lkZW50aWZpZXI6IGNvbXBpbGVUeXBlTWV0YWRhdGF9O1xuICAgICAgfVxuICAgIH0gZWxzZSBpZiAocHJvdmlkZXIudXNlRmFjdG9yeSkge1xuICAgICAgY29tcGlsZUZhY3RvcnlNZXRhZGF0YSA9IHRoaXMuX2dldEZhY3RvcnlNZXRhZGF0YShwcm92aWRlci51c2VGYWN0b3J5LCBwcm92aWRlci5kZXBlbmRlbmNpZXMpO1xuICAgICAgY29tcGlsZURlcHMgPSBjb21waWxlRmFjdG9yeU1ldGFkYXRhLmRpRGVwcztcbiAgICB9XG5cbiAgICByZXR1cm4ge1xuICAgICAgdG9rZW46IHRva2VuLFxuICAgICAgdXNlQ2xhc3M6IGNvbXBpbGVUeXBlTWV0YWRhdGEsXG4gICAgICB1c2VWYWx1ZTogcHJvdmlkZXIudXNlVmFsdWUsXG4gICAgICB1c2VGYWN0b3J5OiBjb21waWxlRmFjdG9yeU1ldGFkYXRhLFxuICAgICAgdXNlRXhpc3Rpbmc6IHByb3ZpZGVyLnVzZUV4aXN0aW5nID8gdGhpcy5fZ2V0VG9rZW5NZXRhZGF0YShwcm92aWRlci51c2VFeGlzdGluZykgOiB1bmRlZmluZWQsXG4gICAgICBkZXBzOiBjb21waWxlRGVwcyxcbiAgICAgIG11bHRpOiBwcm92aWRlci5tdWx0aVxuICAgIH07XG4gIH1cblxuICBwcml2YXRlIF9nZXRRdWVyaWVzTWV0YWRhdGEoXG4gICAgICBxdWVyaWVzOiB7W2tleTogc3RyaW5nXTogUXVlcnl9LCBpc1ZpZXdRdWVyeTogYm9vbGVhbixcbiAgICAgIGRpcmVjdGl2ZVR5cGU6IFR5cGUpOiBjcGwuQ29tcGlsZVF1ZXJ5TWV0YWRhdGFbXSB7XG4gICAgY29uc3QgcmVzOiBjcGwuQ29tcGlsZVF1ZXJ5TWV0YWRhdGFbXSA9IFtdO1xuXG4gICAgT2JqZWN0LmtleXMocXVlcmllcykuZm9yRWFjaCgocHJvcGVydHlOYW1lOiBzdHJpbmcpID0+IHtcbiAgICAgIGNvbnN0IHF1ZXJ5ID0gcXVlcmllc1twcm9wZXJ0eU5hbWVdO1xuICAgICAgaWYgKHF1ZXJ5LmlzVmlld1F1ZXJ5ID09PSBpc1ZpZXdRdWVyeSkge1xuICAgICAgICByZXMucHVzaCh0aGlzLl9nZXRRdWVyeU1ldGFkYXRhKHF1ZXJ5LCBwcm9wZXJ0eU5hbWUsIGRpcmVjdGl2ZVR5cGUpKTtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIHJldHVybiByZXM7XG4gIH1cblxuICBwcml2YXRlIF9xdWVyeVZhckJpbmRpbmdzKHNlbGVjdG9yOiBhbnkpOiBzdHJpbmdbXSB7IHJldHVybiBzZWxlY3Rvci5zcGxpdCgvXFxzKixcXHMqLyk7IH1cblxuICBwcml2YXRlIF9nZXRRdWVyeU1ldGFkYXRhKHE6IFF1ZXJ5LCBwcm9wZXJ0eU5hbWU6IHN0cmluZywgdHlwZU9yRnVuYzogVHlwZXxGdW5jdGlvbik6XG4gICAgICBjcGwuQ29tcGlsZVF1ZXJ5TWV0YWRhdGEge1xuICAgIGxldCBzZWxlY3RvcnM6IGNwbC5Db21waWxlVG9rZW5NZXRhZGF0YVtdO1xuICAgIGlmICh0eXBlb2YgcS5zZWxlY3RvciA9PT0gJ3N0cmluZycpIHtcbiAgICAgIHNlbGVjdG9ycyA9XG4gICAgICAgICAgdGhpcy5fcXVlcnlWYXJCaW5kaW5ncyhxLnNlbGVjdG9yKS5tYXAodmFyTmFtZSA9PiB0aGlzLl9nZXRUb2tlbk1ldGFkYXRhKHZhck5hbWUpKTtcbiAgICB9IGVsc2Uge1xuICAgICAgaWYgKCFxLnNlbGVjdG9yKSB7XG4gICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgICAgYENhbid0IGNvbnN0cnVjdCBhIHF1ZXJ5IGZvciB0aGUgcHJvcGVydHkgXCIke3Byb3BlcnR5TmFtZX1cIiBvZiBcIiR7c3RyaW5naWZ5VHlwZSh0eXBlT3JGdW5jKX1cIiBzaW5jZSB0aGUgcXVlcnkgc2VsZWN0b3Igd2Fzbid0IGRlZmluZWQuYCksXG4gICAgICAgICAgICB0eXBlT3JGdW5jKTtcbiAgICAgICAgc2VsZWN0b3JzID0gW107XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBzZWxlY3RvcnMgPSBbdGhpcy5fZ2V0VG9rZW5NZXRhZGF0YShxLnNlbGVjdG9yKV07XG4gICAgICB9XG4gICAgfVxuXG4gICAgcmV0dXJuIHtcbiAgICAgIHNlbGVjdG9ycyxcbiAgICAgIGZpcnN0OiBxLmZpcnN0LFxuICAgICAgZGVzY2VuZGFudHM6IHEuZGVzY2VuZGFudHMsIHByb3BlcnR5TmFtZSxcbiAgICAgIHJlYWQ6IHEucmVhZCA/IHRoaXMuX2dldFRva2VuTWV0YWRhdGEocS5yZWFkKSA6IG51bGwgISxcbiAgICAgIHN0YXRpYzogcS5zdGF0aWNcbiAgICB9O1xuICB9XG5cbiAgcHJpdmF0ZSBfcmVwb3J0RXJyb3IoZXJyb3I6IGFueSwgdHlwZT86IGFueSwgb3RoZXJUeXBlPzogYW55KSB7XG4gICAgaWYgKHRoaXMuX2Vycm9yQ29sbGVjdG9yKSB7XG4gICAgICB0aGlzLl9lcnJvckNvbGxlY3RvcihlcnJvciwgdHlwZSk7XG4gICAgICBpZiAob3RoZXJUeXBlKSB7XG4gICAgICAgIHRoaXMuX2Vycm9yQ29sbGVjdG9yKGVycm9yLCBvdGhlclR5cGUpO1xuICAgICAgfVxuICAgIH0gZWxzZSB7XG4gICAgICB0aHJvdyBlcnJvcjtcbiAgICB9XG4gIH1cbn1cblxuZnVuY3Rpb24gZmxhdHRlbkFycmF5KHRyZWU6IGFueVtdLCBvdXQ6IEFycmF5PGFueT4gPSBbXSk6IEFycmF5PGFueT4ge1xuICBpZiAodHJlZSkge1xuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgdHJlZS5sZW5ndGg7IGkrKykge1xuICAgICAgY29uc3QgaXRlbSA9IHJlc29sdmVGb3J3YXJkUmVmKHRyZWVbaV0pO1xuICAgICAgaWYgKEFycmF5LmlzQXJyYXkoaXRlbSkpIHtcbiAgICAgICAgZmxhdHRlbkFycmF5KGl0ZW0sIG91dCk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBvdXQucHVzaChpdGVtKTtcbiAgICAgIH1cbiAgICB9XG4gIH1cbiAgcmV0dXJuIG91dDtcbn1cblxuZnVuY3Rpb24gZGVkdXBlQXJyYXkoYXJyYXk6IGFueVtdKTogQXJyYXk8YW55PiB7XG4gIGlmIChhcnJheSkge1xuICAgIHJldHVybiBBcnJheS5mcm9tKG5ldyBTZXQoYXJyYXkpKTtcbiAgfVxuICByZXR1cm4gW107XG59XG5cbmZ1bmN0aW9uIGZsYXR0ZW5BbmREZWR1cGVBcnJheSh0cmVlOiBhbnlbXSk6IEFycmF5PGFueT4ge1xuICByZXR1cm4gZGVkdXBlQXJyYXkoZmxhdHRlbkFycmF5KHRyZWUpKTtcbn1cblxuZnVuY3Rpb24gaXNWYWxpZFR5cGUodmFsdWU6IGFueSk6IGJvb2xlYW4ge1xuICByZXR1cm4gKHZhbHVlIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB8fCAodmFsdWUgaW5zdGFuY2VvZiBUeXBlKTtcbn1cblxuZnVuY3Rpb24gZXh0cmFjdElkZW50aWZpZXJzKHZhbHVlOiBhbnksIHRhcmdldElkZW50aWZpZXJzOiBjcGwuQ29tcGlsZUlkZW50aWZpZXJNZXRhZGF0YVtdKSB7XG4gIHZpc2l0VmFsdWUodmFsdWUsIG5ldyBfQ29tcGlsZVZhbHVlQ29udmVydGVyKCksIHRhcmdldElkZW50aWZpZXJzKTtcbn1cblxuY2xhc3MgX0NvbXBpbGVWYWx1ZUNvbnZlcnRlciBleHRlbmRzIFZhbHVlVHJhbnNmb3JtZXIge1xuICB2aXNpdE90aGVyKHZhbHVlOiBhbnksIHRhcmdldElkZW50aWZpZXJzOiBjcGwuQ29tcGlsZUlkZW50aWZpZXJNZXRhZGF0YVtdKTogYW55IHtcbiAgICB0YXJnZXRJZGVudGlmaWVycy5wdXNoKHtyZWZlcmVuY2U6IHZhbHVlfSk7XG4gIH1cbn1cblxuZnVuY3Rpb24gc3RyaW5naWZ5VHlwZSh0eXBlOiBhbnkpOiBzdHJpbmcge1xuICBpZiAodHlwZSBpbnN0YW5jZW9mIFN0YXRpY1N5bWJvbCkge1xuICAgIHJldHVybiBgJHt0eXBlLm5hbWV9IGluICR7dHlwZS5maWxlUGF0aH1gO1xuICB9IGVsc2Uge1xuICAgIHJldHVybiBzdHJpbmdpZnkodHlwZSk7XG4gIH1cbn1cblxuLyoqXG4gKiBJbmRpY2F0ZXMgdGhhdCBhIGNvbXBvbmVudCBpcyBzdGlsbCBiZWluZyBsb2FkZWQgaW4gYSBzeW5jaHJvbm91cyBjb21waWxlLlxuICovXG5mdW5jdGlvbiBjb21wb25lbnRTdGlsbExvYWRpbmdFcnJvcihjb21wVHlwZTogVHlwZSkge1xuICBjb25zdCBlcnJvciA9XG4gICAgICBFcnJvcihgQ2FuJ3QgY29tcGlsZSBzeW5jaHJvbm91c2x5IGFzICR7c3RyaW5naWZ5KGNvbXBUeXBlKX0gaXMgc3RpbGwgYmVpbmcgbG9hZGVkIWApO1xuICAoZXJyb3IgYXMgYW55KVtFUlJPUl9DT01QT05FTlRfVFlQRV0gPSBjb21wVHlwZTtcbiAgcmV0dXJuIGVycm9yO1xufVxuIl19