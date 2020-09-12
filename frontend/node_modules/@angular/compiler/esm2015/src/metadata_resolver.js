/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { StaticSymbol } from './aot/static_symbol';
import { ngfactoryFilePath } from './aot/util';
import { assertArrayOfStrings, assertInterpolationSymbols } from './assertions';
import * as cpl from './compile_metadata';
import { ChangeDetectionStrategy, createAttribute, createComponent, createHost, createInject, createInjectable, createInjectionToken, createNgModule, createOptional, createSelf, createSkipSelf, Type, ViewEncapsulation } from './core';
import { findLast } from './directive_resolver';
import { Identifiers } from './identifiers';
import { getAllLifecycleHooks } from './lifecycle_reflector';
import { CssSelector } from './selector';
import { isPromise, noUndefined, resolveForwardRef, stringify, SyncAsync, syntaxError, ValueTransformer, visitValue } from './util';
export const ERROR_COMPONENT_TYPE = 'ngComponentType';
// Design notes:
// - don't lazily create metadata:
//   For some metadata, we need to do async work sometimes,
//   so the user has to kick off this loading.
//   But we want to report errors even when the async work is
//   not required to check that the user would have been able
//   to wait correctly.
export class CompileMetadataResolver {
    constructor(_config, _htmlParser, _ngModuleResolver, _directiveResolver, _pipeResolver, _summaryResolver, _schemaRegistry, _directiveNormalizer, _console, _staticSymbolCache, _reflector, _errorCollector) {
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
    getReflector() {
        return this._reflector;
    }
    clearCacheFor(type) {
        const dirMeta = this._directiveCache.get(type);
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
    }
    clearCache() {
        this._directiveCache.clear();
        this._nonNormalizedDirectiveCache.clear();
        this._summaryCache.clear();
        this._pipeCache.clear();
        this._ngModuleCache.clear();
        this._ngModuleOfTypes.clear();
        this._directiveNormalizer.clearCache();
    }
    _createProxyClass(baseType, name) {
        let delegate = null;
        const proxyClass = function () {
            if (!delegate) {
                throw new Error(`Illegal state: Class ${name} for type ${stringify(baseType)} is not compiled yet!`);
            }
            return delegate.apply(this, arguments);
        };
        proxyClass.setDelegate = (d) => {
            delegate = d;
            proxyClass.prototype = d.prototype;
        };
        // Make stringify work correctly
        proxyClass.overriddenName = name;
        return proxyClass;
    }
    getGeneratedClass(dirType, name) {
        if (dirType instanceof StaticSymbol) {
            return this._staticSymbolCache.get(ngfactoryFilePath(dirType.filePath), name);
        }
        else {
            return this._createProxyClass(dirType, name);
        }
    }
    getComponentViewClass(dirType) {
        return this.getGeneratedClass(dirType, cpl.viewClassName(dirType, 0));
    }
    getHostComponentViewClass(dirType) {
        return this.getGeneratedClass(dirType, cpl.hostViewClassName(dirType));
    }
    getHostComponentType(dirType) {
        const name = `${cpl.identifierName({ reference: dirType })}_Host`;
        if (dirType instanceof StaticSymbol) {
            return this._staticSymbolCache.get(dirType.filePath, name);
        }
        return this._createProxyClass(dirType, name);
    }
    getRendererType(dirType) {
        if (dirType instanceof StaticSymbol) {
            return this._staticSymbolCache.get(ngfactoryFilePath(dirType.filePath), cpl.rendererTypeName(dirType));
        }
        else {
            // returning an object as proxy,
            // that we fill later during runtime compilation.
            return {};
        }
    }
    getComponentFactory(selector, dirType, inputs, outputs) {
        if (dirType instanceof StaticSymbol) {
            return this._staticSymbolCache.get(ngfactoryFilePath(dirType.filePath), cpl.componentFactoryName(dirType));
        }
        else {
            const hostView = this.getHostComponentViewClass(dirType);
            // Note: ngContentSelectors will be filled later once the template is
            // loaded.
            const createComponentFactory = this._reflector.resolveExternalReference(Identifiers.createComponentFactory);
            return createComponentFactory(selector, dirType, hostView, inputs, outputs, []);
        }
    }
    initComponentFactory(factory, ngContentSelectors) {
        if (!(factory instanceof StaticSymbol)) {
            factory.ngContentSelectors.push(...ngContentSelectors);
        }
    }
    _loadSummary(type, kind) {
        let typeSummary = this._summaryCache.get(type);
        if (!typeSummary) {
            const summary = this._summaryResolver.resolveSummary(type);
            typeSummary = summary ? summary.type : null;
            this._summaryCache.set(type, typeSummary || null);
        }
        return typeSummary && typeSummary.summaryKind === kind ? typeSummary : null;
    }
    getHostComponentMetadata(compMeta, hostViewType) {
        const hostType = this.getHostComponentType(compMeta.type.reference);
        if (!hostViewType) {
            hostViewType = this.getHostComponentViewClass(hostType);
        }
        // Note: ! is ok here as this method should only be called with normalized directive
        // metadata, which always fills in the selector.
        const template = CssSelector.parse(compMeta.selector)[0].getMatchingElementTemplate();
        const templateUrl = '';
        const htmlAst = this._htmlParser.parse(template, templateUrl);
        return cpl.CompileDirectiveMetadata.create({
            isHost: true,
            type: { reference: hostType, diDeps: [], lifecycleHooks: [] },
            template: new cpl.CompileTemplateMetadata({
                encapsulation: ViewEncapsulation.None,
                template,
                templateUrl,
                htmlAst,
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
    }
    loadDirectiveMetadata(ngModuleType, directiveType, isSync) {
        if (this._directiveCache.has(directiveType)) {
            return null;
        }
        directiveType = resolveForwardRef(directiveType);
        const { annotation, metadata } = this.getNonNormalizedDirectiveMetadata(directiveType);
        const createDirectiveMetadata = (templateMetadata) => {
            const normalizedDirMeta = new cpl.CompileDirectiveMetadata({
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
                this.initComponentFactory(metadata.componentFactory, templateMetadata.ngContentSelectors);
            }
            this._directiveCache.set(directiveType, normalizedDirMeta);
            this._summaryCache.set(directiveType, normalizedDirMeta.toSummary());
            return null;
        };
        if (metadata.isComponent) {
            const template = metadata.template;
            const templateMeta = this._directiveNormalizer.normalizeTemplate({
                ngModuleType,
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
    }
    getNonNormalizedDirectiveMetadata(directiveType) {
        directiveType = resolveForwardRef(directiveType);
        if (!directiveType) {
            return null;
        }
        let cacheEntry = this._nonNormalizedDirectiveCache.get(directiveType);
        if (cacheEntry) {
            return cacheEntry;
        }
        const dirMeta = this._directiveResolver.resolve(directiveType, false);
        if (!dirMeta) {
            return null;
        }
        let nonNormalizedTemplateMetadata = undefined;
        if (createComponent.isTypeOf(dirMeta)) {
            // component
            const compMeta = dirMeta;
            assertArrayOfStrings('styles', compMeta.styles);
            assertArrayOfStrings('styleUrls', compMeta.styleUrls);
            assertInterpolationSymbols('interpolation', compMeta.interpolation);
            const animations = compMeta.animations;
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
        let changeDetectionStrategy = null;
        let viewProviders = [];
        let entryComponentMetadata = [];
        let selector = dirMeta.selector;
        if (createComponent.isTypeOf(dirMeta)) {
            // Component
            const compMeta = dirMeta;
            changeDetectionStrategy = compMeta.changeDetection;
            if (compMeta.viewProviders) {
                viewProviders = this._getProvidersMetadata(compMeta.viewProviders, entryComponentMetadata, `viewProviders for "${stringifyType(directiveType)}"`, [], directiveType);
            }
            if (compMeta.entryComponents) {
                entryComponentMetadata = flattenAndDedupeArray(compMeta.entryComponents)
                    .map((type) => this._getEntryComponentMetadata(type))
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
        let providers = [];
        if (dirMeta.providers != null) {
            providers = this._getProvidersMetadata(dirMeta.providers, entryComponentMetadata, `providers for "${stringifyType(directiveType)}"`, [], directiveType);
        }
        let queries = [];
        let viewQueries = [];
        if (dirMeta.queries != null) {
            queries = this._getQueriesMetadata(dirMeta.queries, false, directiveType);
            viewQueries = this._getQueriesMetadata(dirMeta.queries, true, directiveType);
        }
        const metadata = cpl.CompileDirectiveMetadata.create({
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
        cacheEntry = { metadata, annotation: dirMeta };
        this._nonNormalizedDirectiveCache.set(directiveType, cacheEntry);
        return cacheEntry;
    }
    /**
     * Gets the metadata for the given directive.
     * This assumes `loadNgModuleDirectiveAndPipeMetadata` has been called first.
     */
    getDirectiveMetadata(directiveType) {
        const dirMeta = this._directiveCache.get(directiveType);
        if (!dirMeta) {
            this._reportError(syntaxError(`Illegal state: getDirectiveMetadata can only be called after loadNgModuleDirectiveAndPipeMetadata for a module that declares it. Directive ${stringifyType(directiveType)}.`), directiveType);
        }
        return dirMeta;
    }
    getDirectiveSummary(dirType) {
        const dirSummary = this._loadSummary(dirType, cpl.CompileSummaryKind.Directive);
        if (!dirSummary) {
            this._reportError(syntaxError(`Illegal state: Could not load the summary for directive ${stringifyType(dirType)}.`), dirType);
        }
        return dirSummary;
    }
    isDirective(type) {
        return !!this._loadSummary(type, cpl.CompileSummaryKind.Directive) ||
            this._directiveResolver.isDirective(type);
    }
    isAbstractDirective(type) {
        const summary = this._loadSummary(type, cpl.CompileSummaryKind.Directive);
        if (summary && !summary.isComponent) {
            return !summary.selector;
        }
        const meta = this._directiveResolver.resolve(type, false);
        if (meta && !createComponent.isTypeOf(meta)) {
            return !meta.selector;
        }
        return false;
    }
    isPipe(type) {
        return !!this._loadSummary(type, cpl.CompileSummaryKind.Pipe) ||
            this._pipeResolver.isPipe(type);
    }
    isNgModule(type) {
        return !!this._loadSummary(type, cpl.CompileSummaryKind.NgModule) ||
            this._ngModuleResolver.isNgModule(type);
    }
    getNgModuleSummary(moduleType, alreadyCollecting = null) {
        let moduleSummary = this._loadSummary(moduleType, cpl.CompileSummaryKind.NgModule);
        if (!moduleSummary) {
            const moduleMeta = this.getNgModuleMetadata(moduleType, false, alreadyCollecting);
            moduleSummary = moduleMeta ? moduleMeta.toSummary() : null;
            if (moduleSummary) {
                this._summaryCache.set(moduleType, moduleSummary);
            }
        }
        return moduleSummary;
    }
    /**
     * Loads the declared directives and pipes of an NgModule.
     */
    loadNgModuleDirectiveAndPipeMetadata(moduleType, isSync, throwIfNotFound = true) {
        const ngModule = this.getNgModuleMetadata(moduleType, throwIfNotFound);
        const loading = [];
        if (ngModule) {
            ngModule.declaredDirectives.forEach((id) => {
                const promise = this.loadDirectiveMetadata(moduleType, id.reference, isSync);
                if (promise) {
                    loading.push(promise);
                }
            });
            ngModule.declaredPipes.forEach((id) => this._loadPipeMetadata(id.reference));
        }
        return Promise.all(loading);
    }
    getShallowModuleMetadata(moduleType) {
        let compileMeta = this._shallowModuleCache.get(moduleType);
        if (compileMeta) {
            return compileMeta;
        }
        const ngModuleMeta = findLast(this._reflector.shallowAnnotations(moduleType), createNgModule.isTypeOf);
        compileMeta = {
            type: this._getTypeMetadata(moduleType),
            rawExports: ngModuleMeta.exports,
            rawImports: ngModuleMeta.imports,
            rawProviders: ngModuleMeta.providers,
        };
        this._shallowModuleCache.set(moduleType, compileMeta);
        return compileMeta;
    }
    getNgModuleMetadata(moduleType, throwIfNotFound = true, alreadyCollecting = null) {
        moduleType = resolveForwardRef(moduleType);
        let compileMeta = this._ngModuleCache.get(moduleType);
        if (compileMeta) {
            return compileMeta;
        }
        const meta = this._ngModuleResolver.resolve(moduleType, throwIfNotFound);
        if (!meta) {
            return null;
        }
        const declaredDirectives = [];
        const exportedNonModuleIdentifiers = [];
        const declaredPipes = [];
        const importedModules = [];
        const exportedModules = [];
        const providers = [];
        const entryComponents = [];
        const bootstrapComponents = [];
        const schemas = [];
        if (meta.imports) {
            flattenAndDedupeArray(meta.imports).forEach((importedType) => {
                let importedModuleType = undefined;
                if (isValidType(importedType)) {
                    importedModuleType = importedType;
                }
                else if (importedType && importedType.ngModule) {
                    const moduleWithProviders = importedType;
                    importedModuleType = moduleWithProviders.ngModule;
                    if (moduleWithProviders.providers) {
                        providers.push(...this._getProvidersMetadata(moduleWithProviders.providers, entryComponents, `provider for the NgModule '${stringifyType(importedModuleType)}'`, [], importedType));
                    }
                }
                if (importedModuleType) {
                    if (this._checkSelfImport(moduleType, importedModuleType))
                        return;
                    if (!alreadyCollecting)
                        alreadyCollecting = new Set();
                    if (alreadyCollecting.has(importedModuleType)) {
                        this._reportError(syntaxError(`${this._getTypeDescriptor(importedModuleType)} '${stringifyType(importedType)}' is imported recursively by the module '${stringifyType(moduleType)}'.`), moduleType);
                        return;
                    }
                    alreadyCollecting.add(importedModuleType);
                    const importedModuleSummary = this.getNgModuleSummary(importedModuleType, alreadyCollecting);
                    alreadyCollecting.delete(importedModuleType);
                    if (!importedModuleSummary) {
                        this._reportError(syntaxError(`Unexpected ${this._getTypeDescriptor(importedType)} '${stringifyType(importedType)}' imported by the module '${stringifyType(moduleType)}'. Please add a @NgModule annotation.`), moduleType);
                        return;
                    }
                    importedModules.push(importedModuleSummary);
                }
                else {
                    this._reportError(syntaxError(`Unexpected value '${stringifyType(importedType)}' imported by the module '${stringifyType(moduleType)}'`), moduleType);
                    return;
                }
            });
        }
        if (meta.exports) {
            flattenAndDedupeArray(meta.exports).forEach((exportedType) => {
                if (!isValidType(exportedType)) {
                    this._reportError(syntaxError(`Unexpected value '${stringifyType(exportedType)}' exported by the module '${stringifyType(moduleType)}'`), moduleType);
                    return;
                }
                if (!alreadyCollecting)
                    alreadyCollecting = new Set();
                if (alreadyCollecting.has(exportedType)) {
                    this._reportError(syntaxError(`${this._getTypeDescriptor(exportedType)} '${stringify(exportedType)}' is exported recursively by the module '${stringifyType(moduleType)}'`), moduleType);
                    return;
                }
                alreadyCollecting.add(exportedType);
                const exportedModuleSummary = this.getNgModuleSummary(exportedType, alreadyCollecting);
                alreadyCollecting.delete(exportedType);
                if (exportedModuleSummary) {
                    exportedModules.push(exportedModuleSummary);
                }
                else {
                    exportedNonModuleIdentifiers.push(this._getIdentifierMetadata(exportedType));
                }
            });
        }
        // Note: This will be modified later, so we rely on
        // getting a new instance every time!
        const transitiveModule = this._getTransitiveNgModuleMetadata(importedModules, exportedModules);
        if (meta.declarations) {
            flattenAndDedupeArray(meta.declarations).forEach((declaredType) => {
                if (!isValidType(declaredType)) {
                    this._reportError(syntaxError(`Unexpected value '${stringifyType(declaredType)}' declared by the module '${stringifyType(moduleType)}'`), moduleType);
                    return;
                }
                const declaredIdentifier = this._getIdentifierMetadata(declaredType);
                if (this.isDirective(declaredType)) {
                    if (this.isAbstractDirective(declaredType)) {
                        this._reportError(syntaxError(`Directive ${stringifyType(declaredType)} has no selector, please add it!`), declaredType);
                    }
                    transitiveModule.addDirective(declaredIdentifier);
                    declaredDirectives.push(declaredIdentifier);
                    this._addTypeToModule(declaredType, moduleType);
                }
                else if (this.isPipe(declaredType)) {
                    transitiveModule.addPipe(declaredIdentifier);
                    transitiveModule.pipes.push(declaredIdentifier);
                    declaredPipes.push(declaredIdentifier);
                    this._addTypeToModule(declaredType, moduleType);
                }
                else {
                    this._reportError(syntaxError(`Unexpected ${this._getTypeDescriptor(declaredType)} '${stringifyType(declaredType)}' declared by the module '${stringifyType(moduleType)}'. Please add a @Pipe/@Directive/@Component annotation.`), moduleType);
                    return;
                }
            });
        }
        const exportedDirectives = [];
        const exportedPipes = [];
        exportedNonModuleIdentifiers.forEach((exportedId) => {
            if (transitiveModule.directivesSet.has(exportedId.reference)) {
                exportedDirectives.push(exportedId);
                transitiveModule.addExportedDirective(exportedId);
            }
            else if (transitiveModule.pipesSet.has(exportedId.reference)) {
                exportedPipes.push(exportedId);
                transitiveModule.addExportedPipe(exportedId);
            }
            else {
                this._reportError(syntaxError(`Can't export ${this._getTypeDescriptor(exportedId.reference)} ${stringifyType(exportedId.reference)} from ${stringifyType(moduleType)} as it was neither declared nor imported!`), moduleType);
                return;
            }
        });
        // The providers of the module have to go last
        // so that they overwrite any other provider we already added.
        if (meta.providers) {
            providers.push(...this._getProvidersMetadata(meta.providers, entryComponents, `provider for the NgModule '${stringifyType(moduleType)}'`, [], moduleType));
        }
        if (meta.entryComponents) {
            entryComponents.push(...flattenAndDedupeArray(meta.entryComponents)
                .map(type => this._getEntryComponentMetadata(type)));
        }
        if (meta.bootstrap) {
            flattenAndDedupeArray(meta.bootstrap).forEach(type => {
                if (!isValidType(type)) {
                    this._reportError(syntaxError(`Unexpected value '${stringifyType(type)}' used in the bootstrap property of module '${stringifyType(moduleType)}'`), moduleType);
                    return;
                }
                bootstrapComponents.push(this._getIdentifierMetadata(type));
            });
        }
        entryComponents.push(...bootstrapComponents.map(type => this._getEntryComponentMetadata(type.reference)));
        if (meta.schemas) {
            schemas.push(...flattenAndDedupeArray(meta.schemas));
        }
        compileMeta = new cpl.CompileNgModuleMetadata({
            type: this._getTypeMetadata(moduleType),
            providers,
            entryComponents,
            bootstrapComponents,
            schemas,
            declaredDirectives,
            exportedDirectives,
            declaredPipes,
            exportedPipes,
            importedModules,
            exportedModules,
            transitiveModule,
            id: meta.id || null,
        });
        entryComponents.forEach((id) => transitiveModule.addEntryComponent(id));
        providers.forEach((provider) => transitiveModule.addProvider(provider, compileMeta.type));
        transitiveModule.addModule(compileMeta.type);
        this._ngModuleCache.set(moduleType, compileMeta);
        return compileMeta;
    }
    _checkSelfImport(moduleType, importedModuleType) {
        if (moduleType === importedModuleType) {
            this._reportError(syntaxError(`'${stringifyType(moduleType)}' module can't import itself`), moduleType);
            return true;
        }
        return false;
    }
    _getTypeDescriptor(type) {
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
    }
    _addTypeToModule(type, moduleType) {
        const oldModule = this._ngModuleOfTypes.get(type);
        if (oldModule && oldModule !== moduleType) {
            this._reportError(syntaxError(`Type ${stringifyType(type)} is part of the declarations of 2 modules: ${stringifyType(oldModule)} and ${stringifyType(moduleType)}! ` +
                `Please consider moving ${stringifyType(type)} to a higher module that imports ${stringifyType(oldModule)} and ${stringifyType(moduleType)}. ` +
                `You can also create a new NgModule that exports and includes ${stringifyType(type)} then import that NgModule in ${stringifyType(oldModule)} and ${stringifyType(moduleType)}.`), moduleType);
            return;
        }
        this._ngModuleOfTypes.set(type, moduleType);
    }
    _getTransitiveNgModuleMetadata(importedModules, exportedModules) {
        // collect `providers` / `entryComponents` from all imported and all exported modules
        const result = new cpl.TransitiveCompileNgModuleMetadata();
        const modulesByToken = new Map();
        importedModules.concat(exportedModules).forEach((modSummary) => {
            modSummary.modules.forEach((mod) => result.addModule(mod));
            modSummary.entryComponents.forEach((comp) => result.addEntryComponent(comp));
            const addedTokens = new Set();
            modSummary.providers.forEach((entry) => {
                const tokenRef = cpl.tokenReference(entry.provider.token);
                let prevModules = modulesByToken.get(tokenRef);
                if (!prevModules) {
                    prevModules = new Set();
                    modulesByToken.set(tokenRef, prevModules);
                }
                const moduleRef = entry.module.reference;
                // Note: the providers of one module may still contain multiple providers
                // per token (e.g. for multi providers), and we need to preserve these.
                if (addedTokens.has(tokenRef) || !prevModules.has(moduleRef)) {
                    prevModules.add(moduleRef);
                    addedTokens.add(tokenRef);
                    result.addProvider(entry.provider, entry.module);
                }
            });
        });
        exportedModules.forEach((modSummary) => {
            modSummary.exportedDirectives.forEach((id) => result.addExportedDirective(id));
            modSummary.exportedPipes.forEach((id) => result.addExportedPipe(id));
        });
        importedModules.forEach((modSummary) => {
            modSummary.exportedDirectives.forEach((id) => result.addDirective(id));
            modSummary.exportedPipes.forEach((id) => result.addPipe(id));
        });
        return result;
    }
    _getIdentifierMetadata(type) {
        type = resolveForwardRef(type);
        return { reference: type };
    }
    isInjectable(type) {
        const annotations = this._reflector.tryAnnotations(type);
        return annotations.some(ann => createInjectable.isTypeOf(ann));
    }
    getInjectableSummary(type) {
        return {
            summaryKind: cpl.CompileSummaryKind.Injectable,
            type: this._getTypeMetadata(type, null, false)
        };
    }
    getInjectableMetadata(type, dependencies = null, throwOnUnknownDeps = true) {
        const typeSummary = this._loadSummary(type, cpl.CompileSummaryKind.Injectable);
        const typeMetadata = typeSummary ?
            typeSummary.type :
            this._getTypeMetadata(type, dependencies, throwOnUnknownDeps);
        const annotations = this._reflector.annotations(type).filter(ann => createInjectable.isTypeOf(ann));
        if (annotations.length === 0) {
            return null;
        }
        const meta = annotations[annotations.length - 1];
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
    }
    _getTypeMetadata(type, dependencies = null, throwOnUnknownDeps = true) {
        const identifier = this._getIdentifierMetadata(type);
        return {
            reference: identifier.reference,
            diDeps: this._getDependenciesMetadata(identifier.reference, dependencies, throwOnUnknownDeps),
            lifecycleHooks: getAllLifecycleHooks(this._reflector, identifier.reference),
        };
    }
    _getFactoryMetadata(factory, dependencies = null) {
        factory = resolveForwardRef(factory);
        return { reference: factory, diDeps: this._getDependenciesMetadata(factory, dependencies) };
    }
    /**
     * Gets the metadata for the given pipe.
     * This assumes `loadNgModuleDirectiveAndPipeMetadata` has been called first.
     */
    getPipeMetadata(pipeType) {
        const pipeMeta = this._pipeCache.get(pipeType);
        if (!pipeMeta) {
            this._reportError(syntaxError(`Illegal state: getPipeMetadata can only be called after loadNgModuleDirectiveAndPipeMetadata for a module that declares it. Pipe ${stringifyType(pipeType)}.`), pipeType);
        }
        return pipeMeta || null;
    }
    getPipeSummary(pipeType) {
        const pipeSummary = this._loadSummary(pipeType, cpl.CompileSummaryKind.Pipe);
        if (!pipeSummary) {
            this._reportError(syntaxError(`Illegal state: Could not load the summary for pipe ${stringifyType(pipeType)}.`), pipeType);
        }
        return pipeSummary;
    }
    getOrLoadPipeMetadata(pipeType) {
        let pipeMeta = this._pipeCache.get(pipeType);
        if (!pipeMeta) {
            pipeMeta = this._loadPipeMetadata(pipeType);
        }
        return pipeMeta;
    }
    _loadPipeMetadata(pipeType) {
        pipeType = resolveForwardRef(pipeType);
        const pipeAnnotation = this._pipeResolver.resolve(pipeType);
        const pipeMeta = new cpl.CompilePipeMetadata({
            type: this._getTypeMetadata(pipeType),
            name: pipeAnnotation.name,
            pure: !!pipeAnnotation.pure
        });
        this._pipeCache.set(pipeType, pipeMeta);
        this._summaryCache.set(pipeType, pipeMeta.toSummary());
        return pipeMeta;
    }
    _getDependenciesMetadata(typeOrFunc, dependencies, throwOnUnknownDeps = true) {
        let hasUnknownDeps = false;
        const params = dependencies || this._reflector.parameters(typeOrFunc) || [];
        const dependenciesMetadata = params.map((param) => {
            let isAttribute = false;
            let isHost = false;
            let isSelf = false;
            let isSkipSelf = false;
            let isOptional = false;
            let token = null;
            if (Array.isArray(param)) {
                param.forEach((paramEntry) => {
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
                isAttribute,
                isHost,
                isSelf,
                isSkipSelf,
                isOptional,
                token: this._getTokenMetadata(token)
            };
        });
        if (hasUnknownDeps) {
            const depsTokens = dependenciesMetadata.map((dep) => dep.token ? stringifyType(dep.token) : '?').join(', ');
            const message = `Can't resolve all parameters for ${stringifyType(typeOrFunc)}: (${depsTokens}).`;
            if (throwOnUnknownDeps || this._config.strictInjectionParameters) {
                this._reportError(syntaxError(message), typeOrFunc);
            }
        }
        return dependenciesMetadata;
    }
    _getTokenMetadata(token) {
        token = resolveForwardRef(token);
        let compileToken;
        if (typeof token === 'string') {
            compileToken = { value: token };
        }
        else {
            compileToken = { identifier: { reference: token } };
        }
        return compileToken;
    }
    _getProvidersMetadata(providers, targetEntryComponents, debugInfo, compileProviders = [], type) {
        providers.forEach((provider, providerIdx) => {
            if (Array.isArray(provider)) {
                this._getProvidersMetadata(provider, targetEntryComponents, debugInfo, compileProviders);
            }
            else {
                provider = resolveForwardRef(provider);
                let providerMeta = undefined;
                if (provider && typeof provider === 'object' && provider.hasOwnProperty('provide')) {
                    this._validateProvider(provider);
                    providerMeta = new cpl.ProviderMeta(provider.provide, provider);
                }
                else if (isValidType(provider)) {
                    providerMeta = new cpl.ProviderMeta(provider, { useClass: provider });
                }
                else if (provider === void 0) {
                    this._reportError(syntaxError(`Encountered undefined provider! Usually this means you have a circular dependencies. This might be caused by using 'barrel' index.ts files.`));
                    return;
                }
                else {
                    const providersInfo = providers
                        .reduce((soFar, seenProvider, seenProviderIdx) => {
                        if (seenProviderIdx < providerIdx) {
                            soFar.push(`${stringifyType(seenProvider)}`);
                        }
                        else if (seenProviderIdx == providerIdx) {
                            soFar.push(`?${stringifyType(seenProvider)}?`);
                        }
                        else if (seenProviderIdx == providerIdx + 1) {
                            soFar.push('...');
                        }
                        return soFar;
                    }, [])
                        .join(', ');
                    this._reportError(syntaxError(`Invalid ${debugInfo ?
                        debugInfo :
                        'provider'} - only instances of Provider and Type are allowed, got: [${providersInfo}]`), type);
                    return;
                }
                if (providerMeta.token ===
                    this._reflector.resolveExternalReference(Identifiers.ANALYZE_FOR_ENTRY_COMPONENTS)) {
                    targetEntryComponents.push(...this._getEntryComponentsFromProvider(providerMeta, type));
                }
                else {
                    compileProviders.push(this.getProviderMetadata(providerMeta));
                }
            }
        });
        return compileProviders;
    }
    _validateProvider(provider) {
        if (provider.hasOwnProperty('useClass') && provider.useClass == null) {
            this._reportError(syntaxError(`Invalid provider for ${stringifyType(provider.provide)}. useClass cannot be ${provider.useClass}.
           Usually it happens when:
           1. There's a circular dependency (might be caused by using index.ts (barrel) files).
           2. Class was used before it was declared. Use forwardRef in this case.`));
        }
    }
    _getEntryComponentsFromProvider(provider, type) {
        const components = [];
        const collectedIdentifiers = [];
        if (provider.useFactory || provider.useExisting || provider.useClass) {
            this._reportError(syntaxError(`The ANALYZE_FOR_ENTRY_COMPONENTS token only supports useValue!`), type);
            return [];
        }
        if (!provider.multi) {
            this._reportError(syntaxError(`The ANALYZE_FOR_ENTRY_COMPONENTS token only supports 'multi = true'!`), type);
            return [];
        }
        extractIdentifiers(provider.useValue, collectedIdentifiers);
        collectedIdentifiers.forEach((identifier) => {
            const entry = this._getEntryComponentMetadata(identifier.reference, false);
            if (entry) {
                components.push(entry);
            }
        });
        return components;
    }
    _getEntryComponentMetadata(dirType, throwIfNotFound = true) {
        const dirMeta = this.getNonNormalizedDirectiveMetadata(dirType);
        if (dirMeta && dirMeta.metadata.isComponent) {
            return { componentType: dirType, componentFactory: dirMeta.metadata.componentFactory };
        }
        const dirSummary = this._loadSummary(dirType, cpl.CompileSummaryKind.Directive);
        if (dirSummary && dirSummary.isComponent) {
            return { componentType: dirType, componentFactory: dirSummary.componentFactory };
        }
        if (throwIfNotFound) {
            throw syntaxError(`${dirType.name} cannot be used as an entry component.`);
        }
        return null;
    }
    _getInjectableTypeMetadata(type, dependencies = null) {
        const typeSummary = this._loadSummary(type, cpl.CompileSummaryKind.Injectable);
        if (typeSummary) {
            return typeSummary.type;
        }
        return this._getTypeMetadata(type, dependencies);
    }
    getProviderMetadata(provider) {
        let compileDeps = undefined;
        let compileTypeMetadata = null;
        let compileFactoryMetadata = null;
        let token = this._getTokenMetadata(provider.token);
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
    }
    _getQueriesMetadata(queries, isViewQuery, directiveType) {
        const res = [];
        Object.keys(queries).forEach((propertyName) => {
            const query = queries[propertyName];
            if (query.isViewQuery === isViewQuery) {
                res.push(this._getQueryMetadata(query, propertyName, directiveType));
            }
        });
        return res;
    }
    _queryVarBindings(selector) {
        return selector.split(/\s*,\s*/);
    }
    _getQueryMetadata(q, propertyName, typeOrFunc) {
        let selectors;
        if (typeof q.selector === 'string') {
            selectors =
                this._queryVarBindings(q.selector).map(varName => this._getTokenMetadata(varName));
        }
        else {
            if (!q.selector) {
                this._reportError(syntaxError(`Can't construct a query for the property "${propertyName}" of "${stringifyType(typeOrFunc)}" since the query selector wasn't defined.`), typeOrFunc);
                selectors = [];
            }
            else {
                selectors = [this._getTokenMetadata(q.selector)];
            }
        }
        return {
            selectors,
            first: q.first,
            descendants: q.descendants,
            propertyName,
            read: q.read ? this._getTokenMetadata(q.read) : null,
            static: q.static
        };
    }
    _reportError(error, type, otherType) {
        if (this._errorCollector) {
            this._errorCollector(error, type);
            if (otherType) {
                this._errorCollector(error, otherType);
            }
        }
        else {
            throw error;
        }
    }
}
function flattenArray(tree, out = []) {
    if (tree) {
        for (let i = 0; i < tree.length; i++) {
            const item = resolveForwardRef(tree[i]);
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
class _CompileValueConverter extends ValueTransformer {
    visitOther(value, targetIdentifiers) {
        targetIdentifiers.push({ reference: value });
    }
}
function stringifyType(type) {
    if (type instanceof StaticSymbol) {
        return `${type.name} in ${type.filePath}`;
    }
    else {
        return stringify(type);
    }
}
/**
 * Indicates that a component is still being loaded in a synchronous compile.
 */
function componentStillLoadingError(compType) {
    const error = Error(`Can't compile synchronously as ${stringify(compType)} is still being loaded!`);
    error[ERROR_COMPONENT_TYPE] = compType;
    return error;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWV0YWRhdGFfcmVzb2x2ZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci9zcmMvbWV0YWRhdGFfcmVzb2x2ZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFDLFlBQVksRUFBb0IsTUFBTSxxQkFBcUIsQ0FBQztBQUNwRSxPQUFPLEVBQUMsaUJBQWlCLEVBQUMsTUFBTSxZQUFZLENBQUM7QUFDN0MsT0FBTyxFQUFDLG9CQUFvQixFQUFFLDBCQUEwQixFQUFDLE1BQU0sY0FBYyxDQUFDO0FBQzlFLE9BQU8sS0FBSyxHQUFHLE1BQU0sb0JBQW9CLENBQUM7QUFHMUMsT0FBTyxFQUFDLHVCQUF1QixFQUFhLGVBQWUsRUFBRSxlQUFlLEVBQUUsVUFBVSxFQUFFLFlBQVksRUFBRSxnQkFBZ0IsRUFBRSxvQkFBb0IsRUFBRSxjQUFjLEVBQUUsY0FBYyxFQUFFLFVBQVUsRUFBRSxjQUFjLEVBQStFLElBQUksRUFBRSxpQkFBaUIsRUFBQyxNQUFNLFFBQVEsQ0FBQztBQUVoVSxPQUFPLEVBQW9CLFFBQVEsRUFBQyxNQUFNLHNCQUFzQixDQUFDO0FBQ2pFLE9BQU8sRUFBQyxXQUFXLEVBQUMsTUFBTSxlQUFlLENBQUM7QUFDMUMsT0FBTyxFQUFDLG9CQUFvQixFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFLM0QsT0FBTyxFQUFDLFdBQVcsRUFBQyxNQUFNLFlBQVksQ0FBQztBQUV2QyxPQUFPLEVBQVUsU0FBUyxFQUFFLFdBQVcsRUFBRSxpQkFBaUIsRUFBRSxTQUFTLEVBQUUsU0FBUyxFQUFFLFdBQVcsRUFBRSxnQkFBZ0IsRUFBRSxVQUFVLEVBQUMsTUFBTSxRQUFRLENBQUM7QUFJM0ksTUFBTSxDQUFDLE1BQU0sb0JBQW9CLEdBQUcsaUJBQWlCLENBQUM7QUFFdEQsZ0JBQWdCO0FBQ2hCLGtDQUFrQztBQUNsQywyREFBMkQ7QUFDM0QsOENB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UUFDTCxPQUFPLFNBQVMsQ0FBQyxJQUFJLENBQUMsQ0FBQztLQUN4QjtBQUNILENBQUM7QUFFRDs7R0FFRztBQUNILFNBQVMsMEJBQTBCLENBQUMsUUFBYztJQUNoRCxNQUFNLEtBQUssR0FDUCxLQUFLLENBQUMsa0NBQWtDLFNBQVMsQ0FBQyxRQUFRLENBQUMseUJBQXlCLENBQUMsQ0FBQztJQUN6RixLQUFhLENBQUMsb0JBQW9CLENBQUMsR0FBRyxRQUFRLENBQUM7SUFDaEQsT0FBTyxLQUFLLENBQUM7QUFDZixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7U3RhdGljU3ltYm9sLCBTdGF0aWNTeW1ib2xDYWNoZX0gZnJvbSAnLi9hb3Qvc3RhdGljX3N5bWJvbCc7XG5pbXBvcnQge25nZmFjdG9yeUZpbGVQYXRofSBmcm9tICcuL2FvdC91dGlsJztcbmltcG9ydCB7YXNzZXJ0QXJyYXlPZlN0cmluZ3MsIGFzc2VydEludGVycG9sYXRpb25TeW1ib2xzfSBmcm9tICcuL2Fzc2VydGlvbnMnO1xuaW1wb3J0ICogYXMgY3BsIGZyb20gJy4vY29tcGlsZV9tZXRhZGF0YSc7XG5pbXBvcnQge0NvbXBpbGVSZWZsZWN0b3J9IGZyb20gJy4vY29tcGlsZV9yZWZsZWN0b3InO1xuaW1wb3J0IHtDb21waWxlckNvbmZpZ30gZnJvbSAnLi9jb25maWcnO1xuaW1wb3J0IHtDaGFuZ2VEZXRlY3Rpb25TdHJhdGVneSwgQ29tcG9uZW50LCBjcmVhdGVBdHRyaWJ1dGUsIGNyZWF0ZUNvbXBvbmVudCwgY3JlYXRlSG9zdCwgY3JlYXRlSW5qZWN0LCBjcmVhdGVJbmplY3RhYmxlLCBjcmVhdGVJbmplY3Rpb25Ub2tlbiwgY3JlYXRlTmdNb2R1bGUsIGNyZWF0ZU9wdGlvbmFsLCBjcmVhdGVTZWxmLCBjcmVhdGVTa2lwU2VsZiwgRGlyZWN0aXZlLCBJbmplY3RhYmxlLCBNb2R1bGVXaXRoUHJvdmlkZXJzLCBQcm92aWRlciwgUXVlcnksIFNjaGVtYU1ldGFkYXRhLCBUeXBlLCBWaWV3RW5jYXBzdWxhdGlvbn0gZnJvbSAnLi9jb3JlJztcbmltcG9ydCB7RGlyZWN0aXZlTm9ybWFsaXplcn0gZnJvbSAnLi9kaXJlY3RpdmVfbm9ybWFsaXplcic7XG5pbXBvcnQge0RpcmVjdGl2ZVJlc29sdmVyLCBmaW5kTGFzdH0gZnJvbSAnLi9kaXJlY3RpdmVfcmVzb2x2ZXInO1xuaW1wb3J0IHtJZGVudGlmaWVyc30gZnJvbSAnLi9pZGVudGlmaWVycyc7XG5pbXBvcnQge2dldEFsbExpZmVjeWNsZUhvb2tzfSBmcm9tICcuL2xpZmVjeWNsZV9yZWZsZWN0b3InO1xuaW1wb3J0IHtIdG1sUGFyc2VyfSBmcm9tICcuL21sX3BhcnNlci9odG1sX3BhcnNlcic7XG5pbXBvcnQge05nTW9kdWxlUmVzb2x2ZXJ9IGZyb20gJy4vbmdfbW9kdWxlX3Jlc29sdmVyJztcbmltcG9ydCB7UGlwZVJlc29sdmVyfSBmcm9tICcuL3BpcGVfcmVzb2x2ZXInO1xuaW1wb3J0IHtFbGVtZW50U2NoZW1hUmVnaXN0cnl9IGZyb20gJy4vc2NoZW1hL2VsZW1lbnRfc2NoZW1hX3JlZ2lzdHJ5JztcbmltcG9ydCB7Q3NzU2VsZWN0b3J9IGZyb20gJy4vc2VsZWN0b3InO1xuaW1wb3J0IHtTdW1tYXJ5UmVzb2x2ZXJ9IGZyb20gJy4vc3VtbWFyeV9yZXNvbHZlcic7XG5pbXBvcnQge0NvbnNvbGUsIGlzUHJvbWlzZSwgbm9VbmRlZmluZWQsIHJlc29sdmVGb3J3YXJkUmVmLCBzdHJpbmdpZnksIFN5bmNBc3luYywgc3ludGF4RXJyb3IsIFZhbHVlVHJhbnNmb3JtZXIsIHZpc2l0VmFsdWV9IGZyb20gJy4vdXRpbCc7XG5cbmV4cG9ydCB0eXBlIEVycm9yQ29sbGVjdG9yID0gKGVycm9yOiBhbnksIHR5cGU/OiBhbnkpID0+IHZvaWQ7XG5cbmV4cG9ydCBjb25zdCBFUlJPUl9DT01QT05FTlRfVFlQRSA9ICduZ0NvbXBvbmVudFR5cGUnO1xuXG4vLyBEZXNpZ24gbm90ZXM6XG4vLyAtIGRvbid0IGxhemlseSBjcmVhdGUgbWV0YWRhdGE6XG4vLyAgIEZvciBzb21lIG1ldGFkYXRhLCB3ZSBuZWVkIHRvIGRvIGFzeW5jIHdvcmsgc29tZXRpbWVzLFxuLy8gICBzbyB0aGUgdXNlciBoYXMgdG8ga2ljayBvZmYgdGhpcyBsb2FkaW5nLlxuLy8gICBCdXQgd2Ugd2FudCB0byByZXBvcnQgZXJyb3JzIGV2ZW4gd2hlbiB0aGUgYXN5bmMgd29yayBpc1xuLy8gICBub3QgcmVxdWlyZWQgdG8gY2hlY2sgdGhhdCB0aGUgdXNlciB3b3VsZCBoYXZlIGJlZW4gYWJsZVxuLy8gICB0byB3YWl0IGNvcnJlY3RseS5cbmV4cG9ydCBjbGFzcyBDb21waWxlTWV0YWRhdGFSZXNvbHZlciB7XG4gIHByaXZhdGUgX25vbk5vcm1hbGl6ZWREaXJlY3RpdmVDYWNoZSA9XG4gICAgICBuZXcgTWFwPFR5cGUsIHthbm5vdGF0aW9uOiBEaXJlY3RpdmUsIG1ldGFkYXRhOiBjcGwuQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhfT4oKTtcbiAgcHJpdmF0ZSBfZGlyZWN0aXZlQ2FjaGUgPSBuZXcgTWFwPFR5cGUsIGNwbC5Db21waWxlRGlyZWN0aXZlTWV0YWRhdGE+KCk7XG4gIHByaXZhdGUgX3N1bW1hcnlDYWNoZSA9IG5ldyBNYXA8VHlwZSwgY3BsLkNvbXBpbGVUeXBlU3VtbWFyeXxudWxsPigpO1xuICBwcml2YXRlIF9waXBlQ2FjaGUgPSBuZXcgTWFwPFR5cGUsIGNwbC5Db21waWxlUGlwZU1ldGFkYXRhPigpO1xuICBwcml2YXRlIF9uZ01vZHVsZUNhY2hlID0gbmV3IE1hcDxUeXBlLCBjcGwuQ29tcGlsZU5nTW9kdWxlTWV0YWRhdGE+KCk7XG4gIHByaXZhdGUgX25nTW9kdWxlT2ZUeXBlcyA9IG5ldyBNYXA8VHlwZSwgVHlwZT4oKTtcbiAgcHJpdmF0ZSBfc2hhbGxvd01vZHVsZUNhY2hlID0gbmV3IE1hcDxUeXBlLCBjcGwuQ29tcGlsZVNoYWxsb3dNb2R1bGVNZXRhZGF0YT4oKTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgX2NvbmZpZzogQ29tcGlsZXJDb25maWcsIHByaXZhdGUgX2h0bWxQYXJzZXI6IEh0bWxQYXJzZXIsXG4gICAgICBwcml2YXRlIF9uZ01vZHVsZVJlc29sdmVyOiBOZ01vZHVsZVJlc29sdmVyLCBwcml2YXRlIF9kaXJlY3RpdmVSZXNvbHZlcjogRGlyZWN0aXZlUmVzb2x2ZXIsXG4gICAgICBwcml2YXRlIF9waXBlUmVzb2x2ZXI6IFBpcGVSZXNvbHZlciwgcHJpdmF0ZSBfc3VtbWFyeVJlc29sdmVyOiBTdW1tYXJ5UmVzb2x2ZXI8YW55PixcbiAgICAgIHByaXZhdGUgX3NjaGVtYVJlZ2lzdHJ5OiBFbGVtZW50U2NoZW1hUmVnaXN0cnksXG4gICAgICBwcml2YXRlIF9kaXJlY3RpdmVOb3JtYWxpemVyOiBEaXJlY3RpdmVOb3JtYWxpemVyLCBwcml2YXRlIF9jb25zb2xlOiBDb25zb2xlLFxuICAgICAgcHJpdmF0ZSBfc3RhdGljU3ltYm9sQ2FjaGU6IFN0YXRpY1N5bWJvbENhY2hlLCBwcml2YXRlIF9yZWZsZWN0b3I6IENvbXBpbGVSZWZsZWN0b3IsXG4gICAgICBwcml2YXRlIF9lcnJvckNvbGxlY3Rvcj86IEVycm9yQ29sbGVjdG9yKSB7fVxuXG4gIGdldFJlZmxlY3RvcigpOiBDb21waWxlUmVmbGVjdG9yIHtcbiAgICByZXR1cm4gdGhpcy5fcmVmbGVjdG9yO1xuICB9XG5cbiAgY2xlYXJDYWNoZUZvcih0eXBlOiBUeXBlKSB7XG4gICAgY29uc3QgZGlyTWV0YSA9IHRoaXMuX2RpcmVjdGl2ZUNhY2hlLmdldCh0eXBlKTtcbiAgICB0aGlzLl9kaXJlY3RpdmVDYWNoZS5kZWxldGUodHlwZSk7XG4gICAgdGhpcy5fbm9uTm9ybWFsaXplZERpcmVjdGl2ZUNhY2hlLmRlbGV0ZSh0eXBlKTtcbiAgICB0aGlzLl9zdW1tYXJ5Q2FjaGUuZGVsZXRlKHR5cGUpO1xuICAgIHRoaXMuX3BpcGVDYWNoZS5kZWxldGUodHlwZSk7XG4gICAgdGhpcy5fbmdNb2R1bGVPZlR5cGVzLmRlbGV0ZSh0eXBlKTtcbiAgICAvLyBDbGVhciBhbGwgb2YgdGhlIE5nTW9kdWxlIGFzIHRoZXkgY29udGFpbiB0cmFuc2l0aXZlIGluZm9ybWF0aW9uIVxuICAgIHRoaXMuX25nTW9kdWxlQ2FjaGUuY2xlYXIoKTtcbiAgICBpZiAoZGlyTWV0YSkge1xuICAgICAgdGhpcy5fZGlyZWN0aXZlTm9ybWFsaXplci5jbGVhckNhY2hlRm9yKGRpck1ldGEpO1xuICAgIH1cbiAgfVxuXG4gIGNsZWFyQ2FjaGUoKTogdm9pZCB7XG4gICAgdGhpcy5fZGlyZWN0aXZlQ2FjaGUuY2xlYXIoKTtcbiAgICB0aGlzLl9ub25Ob3JtYWxpemVkRGlyZWN0aXZlQ2FjaGUuY2xlYXIoKTtcbiAgICB0aGlzLl9zdW1tYXJ5Q2FjaGUuY2xlYXIoKTtcbiAgICB0aGlzLl9waXBlQ2FjaGUuY2xlYXIoKTtcbiAgICB0aGlzLl9uZ01vZHVsZUNhY2hlLmNsZWFyKCk7XG4gICAgdGhpcy5fbmdNb2R1bGVPZlR5cGVzLmNsZWFyKCk7XG4gICAgdGhpcy5fZGlyZWN0aXZlTm9ybWFsaXplci5jbGVhckNhY2hlKCk7XG4gIH1cblxuICBwcml2YXRlIF9jcmVhdGVQcm94eUNsYXNzKGJhc2VUeXBlOiBhbnksIG5hbWU6IHN0cmluZyk6IGNwbC5Qcm94eUNsYXNzIHtcbiAgICBsZXQgZGVsZWdhdGU6IGFueSA9IG51bGw7XG4gICAgY29uc3QgcHJveHlDbGFzczogY3BsLlByb3h5Q2xhc3MgPSA8YW55PmZ1bmN0aW9uKHRoaXM6IHVua25vd24pIHtcbiAgICAgIGlmICghZGVsZWdhdGUpIHtcbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKFxuICAgICAgICAgICAgYElsbGVnYWwgc3RhdGU6IENsYXNzICR7bmFtZX0gZm9yIHR5cGUgJHtzdHJpbmdpZnkoYmFzZVR5cGUpfSBpcyBub3QgY29tcGlsZWQgeWV0IWApO1xuICAgICAgfVxuICAgICAgcmV0dXJuIGRlbGVnYXRlLmFwcGx5KHRoaXMsIGFyZ3VtZW50cyk7XG4gICAgfTtcbiAgICBwcm94eUNsYXNzLnNldERlbGVnYXRlID0gKGQpID0+IHtcbiAgICAgIGRlbGVnYXRlID0gZDtcbiAgICAgICg8YW55PnByb3h5Q2xhc3MpLnByb3RvdHlwZSA9IGQucHJvdG90eXBlO1xuICAgIH07XG4gICAgLy8gTWFrZSBzdHJpbmdpZnkgd29yayBjb3JyZWN0bHlcbiAgICAoPGFueT5wcm94eUNsYXNzKS5vdmVycmlkZGVuTmFtZSA9IG5hbWU7XG4gICAgcmV0dXJuIHByb3h5Q2xhc3M7XG4gIH1cblxuICBwcml2YXRlIGdldEdlbmVyYXRlZENsYXNzKGRpclR5cGU6IGFueSwgbmFtZTogc3RyaW5nKTogU3RhdGljU3ltYm9sfGNwbC5Qcm94eUNsYXNzIHtcbiAgICBpZiAoZGlyVHlwZSBpbnN0YW5jZW9mIFN0YXRpY1N5bWJvbCkge1xuICAgICAgcmV0dXJuIHRoaXMuX3N0YXRpY1N5bWJvbENhY2hlLmdldChuZ2ZhY3RvcnlGaWxlUGF0aChkaXJUeXBlLmZpbGVQYXRoKSwgbmFtZSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHJldHVybiB0aGlzLl9jcmVhdGVQcm94eUNsYXNzKGRpclR5cGUsIG5hbWUpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgZ2V0Q29tcG9uZW50Vmlld0NsYXNzKGRpclR5cGU6IGFueSk6IFN0YXRpY1N5bWJvbHxjcGwuUHJveHlDbGFzcyB7XG4gICAgcmV0dXJuIHRoaXMuZ2V0R2VuZXJhdGVkQ2xhc3MoZGlyVHlwZSwgY3BsLnZpZXdDbGFzc05hbWUoZGlyVHlwZSwgMCkpO1xuICB9XG5cbiAgZ2V0SG9zdENvbXBvbmVudFZpZXdDbGFzcyhkaXJUeXBlOiBhbnkpOiBTdGF0aWNTeW1ib2x8Y3BsLlByb3h5Q2xhc3Mge1xuICAgIHJldHVybiB0aGlzLmdldEdlbmVyYXRlZENsYXNzKGRpclR5cGUsIGNwbC5ob3N0Vmlld0NsYXNzTmFtZShkaXJUeXBlKSk7XG4gIH1cblxuICBnZXRIb3N0Q29tcG9uZW50VHlwZShkaXJUeXBlOiBhbnkpOiBTdGF0aWNTeW1ib2x8Y3BsLlByb3h5Q2xhc3Mge1xuICAgIGNvbnN0IG5hbWUgPSBgJHtjcGwuaWRlbnRpZmllck5hbWUoe3JlZmVyZW5jZTogZGlyVHlwZX0pfV9Ib3N0YDtcbiAgICBpZiAoZGlyVHlwZSBpbnN0YW5jZW9mIFN0YXRpY1N5bWJvbCkge1xuICAgICAgcmV0dXJuIHRoaXMuX3N0YXRpY1N5bWJvbENhY2hlLmdldChkaXJUeXBlLmZpbGVQYXRoLCBuYW1lKTtcbiAgICB9XG5cbiAgICByZXR1cm4gdGhpcy5fY3JlYXRlUHJveHlDbGFzcyhkaXJUeXBlLCBuYW1lKTtcbiAgfVxuXG4gIHByaXZhdGUgZ2V0UmVuZGVyZXJUeXBlKGRpclR5cGU6IGFueSk6IFN0YXRpY1N5bWJvbHxvYmplY3Qge1xuICAgIGlmIChkaXJUeXBlIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB7XG4gICAgICByZXR1cm4gdGhpcy5fc3RhdGljU3ltYm9sQ2FjaGUuZ2V0KFxuICAgICAgICAgIG5nZmFjdG9yeUZpbGVQYXRoKGRpclR5cGUuZmlsZVBhdGgpLCBjcGwucmVuZGVyZXJUeXBlTmFtZShkaXJUeXBlKSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIHJldHVybmluZyBhbiBvYmplY3QgYXMgcHJveHksXG4gICAgICAvLyB0aGF0IHdlIGZpbGwgbGF0ZXIgZHVyaW5nIHJ1bnRpbWUgY29tcGlsYXRpb24uXG4gICAgICByZXR1cm4gPGFueT57fTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIGdldENvbXBvbmVudEZhY3RvcnkoXG4gICAgICBzZWxlY3Rvcjogc3RyaW5nLCBkaXJUeXBlOiBhbnksIGlucHV0czoge1trZXk6IHN0cmluZ106IHN0cmluZ318bnVsbCxcbiAgICAgIG91dHB1dHM6IHtba2V5OiBzdHJpbmddOiBzdHJpbmd9KTogU3RhdGljU3ltYm9sfG9iamVjdCB7XG4gICAgaWYgKGRpclR5cGUgaW5zdGFuY2VvZiBTdGF0aWNTeW1ib2wpIHtcbiAgICAgIHJldHVybiB0aGlzLl9zdGF0aWNTeW1ib2xDYWNoZS5nZXQoXG4gICAgICAgICAgbmdmYWN0b3J5RmlsZVBhdGgoZGlyVHlwZS5maWxlUGF0aCksIGNwbC5jb21wb25lbnRGYWN0b3J5TmFtZShkaXJUeXBlKSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIGNvbnN0IGhvc3RWaWV3ID0gdGhpcy5nZXRIb3N0Q29tcG9uZW50Vmlld0NsYXNzKGRpclR5cGUpO1xuICAgICAgLy8gTm90ZTogbmdDb250ZW50U2VsZWN0b3JzIHdpbGwgYmUgZmlsbGVkIGxhdGVyIG9uY2UgdGhlIHRlbXBsYXRlIGlzXG4gICAgICAvLyBsb2FkZWQuXG4gICAgICBjb25zdCBjcmVhdGVDb21wb25lbnRGYWN0b3J5ID1cbiAgICAgICAgICB0aGlzLl9yZWZsZWN0b3IucmVzb2x2ZUV4dGVybmFsUmVmZXJlbmNlKElkZW50aWZpZXJzLmNyZWF0ZUNvbXBvbmVudEZhY3RvcnkpO1xuICAgICAgcmV0dXJuIGNyZWF0ZUNvbXBvbmVudEZhY3Rvcnkoc2VsZWN0b3IsIGRpclR5cGUsIDxhbnk+aG9zdFZpZXcsIGlucHV0cywgb3V0cHV0cywgW10pO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgaW5pdENvbXBvbmVudEZhY3RvcnkoZmFjdG9yeTogU3RhdGljU3ltYm9sfG9iamVjdCwgbmdDb250ZW50U2VsZWN0b3JzOiBzdHJpbmdbXSkge1xuICAgIGlmICghKGZhY3RvcnkgaW5zdGFuY2VvZiBTdGF0aWNTeW1ib2wpKSB7XG4gICAgICAoZmFjdG9yeSBhcyBhbnkpLm5nQ29udGVudFNlbGVjdG9ycy5wdXNoKC4uLm5nQ29udGVudFNlbGVjdG9ycyk7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBfbG9hZFN1bW1hcnkodHlwZTogYW55LCBraW5kOiBjcGwuQ29tcGlsZVN1bW1hcnlLaW5kKTogY3BsLkNvbXBpbGVUeXBlU3VtbWFyeXxudWxsIHtcbiAgICBsZXQgdHlwZVN1bW1hcnkgPSB0aGlzLl9zdW1tYXJ5Q2FjaGUuZ2V0KHR5cGUpO1xuICAgIGlmICghdHlwZVN1bW1hcnkpIHtcbiAgICAgIGNvbnN0IHN1bW1hcnkgPSB0aGlzLl9zdW1tYXJ5UmVzb2x2ZXIucmVzb2x2ZVN1bW1hcnkodHlwZSk7XG4gICAgICB0eXBlU3VtbWFyeSA9IHN1bW1hcnkgPyBzdW1tYXJ5LnR5cGUgOiBudWxsO1xuICAgICAgdGhpcy5fc3VtbWFyeUNhY2hlLnNldCh0eXBlLCB0eXBlU3VtbWFyeSB8fCBudWxsKTtcbiAgICB9XG4gICAgcmV0dXJuIHR5cGVTdW1tYXJ5ICYmIHR5cGVTdW1tYXJ5LnN1bW1hcnlLaW5kID09PSBraW5kID8gdHlwZVN1bW1hcnkgOiBudWxsO1xuICB9XG5cbiAgZ2V0SG9zdENvbXBvbmVudE1ldGFkYXRhKFxuICAgICAgY29tcE1ldGE6IGNwbC5Db21waWxlRGlyZWN0aXZlTWV0YWRhdGEsXG4gICAgICBob3N0Vmlld1R5cGU/OiBTdGF0aWNTeW1ib2x8Y3BsLlByb3h5Q2xhc3MpOiBjcGwuQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhIHtcbiAgICBjb25zdCBob3N0VHlwZSA9IHRoaXMuZ2V0SG9zdENvbXBvbmVudFR5cGUoY29tcE1ldGEudHlwZS5yZWZlcmVuY2UpO1xuICAgIGlmICghaG9zdFZpZXdUeXBlKSB7XG4gICAgICBob3N0Vmlld1R5cGUgPSB0aGlzLmdldEhvc3RDb21wb25lbnRWaWV3Q2xhc3MoaG9zdFR5cGUpO1xuICAgIH1cbiAgICAvLyBOb3RlOiAhIGlzIG9rIGhlcmUgYXMgdGhpcyBtZXRob2Qgc2hvdWxkIG9ubHkgYmUgY2FsbGVkIHdpdGggbm9ybWFsaXplZCBkaXJlY3RpdmVcbiAgICAvLyBtZXRhZGF0YSwgd2hpY2ggYWx3YXlzIGZpbGxzIGluIHRoZSBzZWxlY3Rvci5cbiAgICBjb25zdCB0ZW1wbGF0ZSA9IENzc1NlbGVjdG9yLnBhcnNlKGNvbXBNZXRhLnNlbGVjdG9yISlbMF0uZ2V0TWF0Y2hpbmdFbGVtZW50VGVtcGxhdGUoKTtcbiAgICBjb25zdCB0ZW1wbGF0ZVVybCA9ICcnO1xuICAgIGNvbnN0IGh0bWxBc3QgPSB0aGlzLl9odG1sUGFyc2VyLnBhcnNlKHRlbXBsYXRlLCB0ZW1wbGF0ZVVybCk7XG4gICAgcmV0dXJuIGNwbC5Db21waWxlRGlyZWN0aXZlTWV0YWRhdGEuY3JlYXRlKHtcbiAgICAgIGlzSG9zdDogdHJ1ZSxcbiAgICAgIHR5cGU6IHtyZWZlcmVuY2U6IGhvc3RUeXBlLCBkaURlcHM6IFtdLCBsaWZlY3ljbGVIb29rczogW119LFxuICAgICAgdGVtcGxhdGU6IG5ldyBjcGwuQ29tcGlsZVRlbXBsYXRlTWV0YWRhdGEoe1xuICAgICAgICBlbmNhcHN1bGF0aW9uOiBWaWV3RW5jYXBzdWxhdGlvbi5Ob25lLFxuICAgICAgICB0ZW1wbGF0ZSxcbiAgICAgICAgdGVtcGxhdGVVcmwsXG4gICAgICAgIGh0bWxBc3QsXG4gICAgICAgIHN0eWxlczogW10sXG4gICAgICAgIHN0eWxlVXJsczogW10sXG4gICAgICAgIG5nQ29udGVudFNlbGVjdG9yczogW10sXG4gICAgICAgIGFuaW1hdGlvbnM6IFtdLFxuICAgICAgICBpc0lubGluZTogdHJ1ZSxcbiAgICAgICAgZXh0ZXJuYWxTdHlsZXNoZWV0czogW10sXG4gICAgICAgIGludGVycG9sYXRpb246IG51bGwsXG4gICAgICAgIHByZXNlcnZlV2hpdGVzcGFjZXM6IGZhbHNlLFxuICAgICAgfSksXG4gICAgICBleHBvcnRBczogbnVsbCxcbiAgICAgIGNoYW5nZURldGVjdGlvbjogQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kuRGVmYXVsdCxcbiAgICAgIGlucHV0czogW10sXG4gICAgICBvdXRwdXRzOiBbXSxcbiAgICAgIGhvc3Q6IHt9LFxuICAgICAgaXNDb21wb25lbnQ6IHRydWUsXG4gICAgICBzZWxlY3RvcjogJyonLFxuICAgICAgcHJvdmlkZXJzOiBbXSxcbiAgICAgIHZpZXdQcm92aWRlcnM6IFtdLFxuICAgICAgcXVlcmllczogW10sXG4gICAgICBndWFyZHM6IHt9LFxuICAgICAgdmlld1F1ZXJpZXM6IFtdLFxuICAgICAgY29tcG9uZW50Vmlld1R5cGU6IGhvc3RWaWV3VHlwZSxcbiAgICAgIHJlbmRlcmVyVHlwZToge2lkOiAnX19Ib3N0X18nLCBlbmNhcHN1bGF0aW9uOiBWaWV3RW5jYXBzdWxhdGlvbi5Ob25lLCBzdHlsZXM6IFtdLCBkYXRhOiB7fX0gYXNcbiAgICAgICAgICBvYmplY3QsXG4gICAgICBlbnRyeUNvbXBvbmVudHM6IFtdLFxuICAgICAgY29tcG9uZW50RmFjdG9yeTogbnVsbFxuICAgIH0pO1xuICB9XG5cbiAgbG9hZERpcmVjdGl2ZU1ldGFkYXRhKG5nTW9kdWxlVHlwZTogYW55LCBkaXJlY3RpdmVUeXBlOiBhbnksIGlzU3luYzogYm9vbGVhbik6IFN5bmNBc3luYzxudWxsPiB7XG4gICAgaWYgKHRoaXMuX2RpcmVjdGl2ZUNhY2hlLmhhcyhkaXJlY3RpdmVUeXBlKSkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIGRpcmVjdGl2ZVR5cGUgPSByZXNvbHZlRm9yd2FyZFJlZihkaXJlY3RpdmVUeXBlKTtcbiAgICBjb25zdCB7YW5ub3RhdGlvbiwgbWV0YWRhdGF9ID0gdGhpcy5nZXROb25Ob3JtYWxpemVkRGlyZWN0aXZlTWV0YWRhdGEoZGlyZWN0aXZlVHlwZSkhO1xuXG4gICAgY29uc3QgY3JlYXRlRGlyZWN0aXZlTWV0YWRhdGEgPSAodGVtcGxhdGVNZXRhZGF0YTogY3BsLkNvbXBpbGVUZW1wbGF0ZU1ldGFkYXRhfG51bGwpID0+IHtcbiAgICAgIGNvbnN0IG5vcm1hbGl6ZWREaXJNZXRhID0gbmV3IGNwbC5Db21waWxlRGlyZWN0aXZlTWV0YWRhdGEoe1xuICAgICAgICBpc0hvc3Q6IGZhbHNlLFxuICAgICAgICB0eXBlOiBtZXRhZGF0YS50eXBlLFxuICAgICAgICBpc0NvbXBvbmVudDogbWV0YWRhdGEuaXNDb21wb25lbnQsXG4gICAgICAgIHNlbGVjdG9yOiBtZXRhZGF0YS5zZWxlY3RvcixcbiAgICAgICAgZXhwb3J0QXM6IG1ldGFkYXRhLmV4cG9ydEFzLFxuICAgICAgICBjaGFuZ2VEZXRlY3Rpb246IG1ldGFkYXRhLmNoYW5nZURldGVjdGlvbixcbiAgICAgICAgaW5wdXRzOiBtZXRhZGF0YS5pbnB1dHMsXG4gICAgICAgIG91dHB1dHM6IG1ldGFkYXRhLm91dHB1dHMsXG4gICAgICAgIGhvc3RMaXN0ZW5lcnM6IG1ldGFkYXRhLmhvc3RMaXN0ZW5lcnMsXG4gICAgICAgIGhvc3RQcm9wZXJ0aWVzOiBtZXRhZGF0YS5ob3N0UHJvcGVydGllcyxcbiAgICAgICAgaG9zdEF0dHJpYnV0ZXM6IG1ldGFkYXRhLmhvc3RBdHRyaWJ1dGVzLFxuICAgICAgICBwcm92aWRlcnM6IG1ldGFkYXRhLnByb3ZpZGVycyxcbiAgICAgICAgdmlld1Byb3ZpZGVyczogbWV0YWRhdGEudmlld1Byb3ZpZGVycyxcbiAgICAgICAgcXVlcmllczogbWV0YWRhdGEucXVlcmllcyxcbiAgICAgICAgZ3VhcmRzOiBtZXRhZGF0YS5ndWFyZHMsXG4gICAgICAgIHZpZXdRdWVyaWVzOiBtZXRhZGF0YS52aWV3UXVlcmllcyxcbiAgICAgICAgZW50cnlDb21wb25lbnRzOiBtZXRhZGF0YS5lbnRyeUNvbXBvbmVudHMsXG4gICAgICAgIGNvbXBvbmVudFZpZXdUeXBlOiBtZXRhZGF0YS5jb21wb25lbnRWaWV3VHlwZSxcbiAgICAgICAgcmVuZGVyZXJUeXBlOiBtZXRhZGF0YS5yZW5kZXJlclR5cGUsXG4gICAgICAgIGNvbXBvbmVudEZhY3Rvcnk6IG1ldGFkYXRhLmNvbXBvbmVudEZhY3RvcnksXG4gICAgICAgIHRlbXBsYXRlOiB0ZW1wbGF0ZU1ldGFkYXRhXG4gICAgICB9KTtcbiAgICAgIGlmICh0ZW1wbGF0ZU1ldGFkYXRhKSB7XG4gICAgICAgIHRoaXMuaW5pdENvbXBvbmVudEZhY3RvcnkobWV0YWRhdGEuY29tcG9uZW50RmFjdG9yeSEsIHRlbXBsYXRlTWV0YWRhdGEubmdDb250ZW50U2VsZWN0b3JzKTtcbiAgICAgIH1cbiAgICAgIHRoaXMuX2RpcmVjdGl2ZUNhY2hlLnNldChkaXJlY3RpdmVUeXBlLCBub3JtYWxpemVkRGlyTWV0YSk7XG4gICAgICB0aGlzLl9zdW1tYXJ5Q2FjaGUuc2V0KGRpcmVjdGl2ZVR5cGUsIG5vcm1hbGl6ZWREaXJNZXRhLnRvU3VtbWFyeSgpKTtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH07XG5cbiAgICBpZiAobWV0YWRhdGEuaXNDb21wb25lbnQpIHtcbiAgICAgIGNvbnN0IHRlbXBsYXRlID0gbWV0YWRhdGEudGVtcGxhdGUgITtcbiAgICAgIGNvbnN0IHRlbXBsYXRlTWV0YSA9IHRoaXMuX2RpcmVjdGl2ZU5vcm1hbGl6ZXIubm9ybWFsaXplVGVtcGxhdGUoe1xuICAgICAgICBuZ01vZHVsZVR5cGUsXG4gICAgICAgIGNvbXBvbmVudFR5cGU6IGRpcmVjdGl2ZVR5cGUsXG4gICAgICAgIG1vZHVsZVVybDogdGhpcy5fcmVmbGVjdG9yLmNvbXBvbmVudE1vZHVsZVVybChkaXJlY3RpdmVUeXBlLCBhbm5vdGF0aW9uKSxcbiAgICAgICAgZW5jYXBzdWxhdGlvbjogdGVtcGxhdGUuZW5jYXBzdWxhdGlvbixcbiAgICAgICAgdGVtcGxhdGU6IHRlbXBsYXRlLnRlbXBsYXRlLFxuICAgICAgICB0ZW1wbGF0ZVVybDogdGVtcGxhdGUudGVtcGxhdGVVcmwsXG4gICAgICAgIHN0eWxlczogdGVtcGxhdGUuc3R5bGVzLFxuICAgICAgICBzdHlsZVVybHM6IHRlbXBsYXRlLnN0eWxlVXJscyxcbiAgICAgICAgYW5pbWF0aW9uczogdGVtcGxhdGUuYW5pbWF0aW9ucyxcbiAgICAgICAgaW50ZXJwb2xhdGlvbjogdGVtcGxhdGUuaW50ZXJwb2xhdGlvbixcbiAgICAgICAgcHJlc2VydmVXaGl0ZXNwYWNlczogdGVtcGxhdGUucHJlc2VydmVXaGl0ZXNwYWNlc1xuICAgICAgfSk7XG4gICAgICBpZiAoaXNQcm9taXNlKHRlbXBsYXRlTWV0YSkgJiYgaXNTeW5jKSB7XG4gICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKGNvbXBvbmVudFN0aWxsTG9hZGluZ0Vycm9yKGRpcmVjdGl2ZVR5cGUpLCBkaXJlY3RpdmVUeXBlKTtcbiAgICAgICAgcmV0dXJuIG51bGw7XG4gICAgICB9XG4gICAgICByZXR1cm4gU3luY0FzeW5jLnRoZW4odGVtcGxhdGVNZXRhLCBjcmVhdGVEaXJlY3RpdmVNZXRhZGF0YSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIGRpcmVjdGl2ZVxuICAgICAgY3JlYXRlRGlyZWN0aXZlTWV0YWRhdGEobnVsbCk7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gIH1cblxuICBnZXROb25Ob3JtYWxpemVkRGlyZWN0aXZlTWV0YWRhdGEoZGlyZWN0aXZlVHlwZTogYW55KTpcbiAgICAgIHthbm5vdGF0aW9uOiBEaXJlY3RpdmUsIG1ldGFkYXRhOiBjcGwuQ29tcGlsZURpcmVjdGl2ZU1ldGFkYXRhfXxudWxsIHtcbiAgICBkaXJlY3RpdmVUeXBlID0gcmVzb2x2ZUZvcndhcmRSZWYoZGlyZWN0aXZlVHlwZSk7XG4gICAgaWYgKCFkaXJlY3RpdmVUeXBlKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gICAgbGV0IGNhY2hlRW50cnkgPSB0aGlzLl9ub25Ob3JtYWxpemVkRGlyZWN0aXZlQ2FjaGUuZ2V0KGRpcmVjdGl2ZVR5cGUpO1xuICAgIGlmIChjYWNoZUVudHJ5KSB7XG4gICAgICByZXR1cm4gY2FjaGVFbnRyeTtcbiAgICB9XG4gICAgY29uc3QgZGlyTWV0YSA9IHRoaXMuX2RpcmVjdGl2ZVJlc29sdmVyLnJlc29sdmUoZGlyZWN0aXZlVHlwZSwgZmFsc2UpO1xuICAgIGlmICghZGlyTWV0YSkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIGxldCBub25Ob3JtYWxpemVkVGVtcGxhdGVNZXRhZGF0YTogY3BsLkNvbXBpbGVUZW1wbGF0ZU1ldGFkYXRhID0gdW5kZWZpbmVkITtcblxuICAgIGlmIChjcmVhdGVDb21wb25lbnQuaXNUeXBlT2YoZGlyTWV0YSkpIHtcbiAgICAgIC8vIGNvbXBvbmVudFxuICAgICAgY29uc3QgY29tcE1ldGEgPSBkaXJNZXRhIGFzIENvbXBvbmVudDtcbiAgICAgIGFzc2VydEFycmF5T2ZTdHJpbmdzKCdzdHlsZXMnLCBjb21wTWV0YS5zdHlsZXMpO1xuICAgICAgYXNzZXJ0QXJyYXlPZlN0cmluZ3MoJ3N0eWxlVXJscycsIGNvbXBNZXRhLnN0eWxlVXJscyk7XG4gICAgICBhc3NlcnRJbnRlcnBvbGF0aW9uU3ltYm9scygnaW50ZXJwb2xhdGlvbicsIGNvbXBNZXRhLmludGVycG9sYXRpb24pO1xuXG4gICAgICBjb25zdCBhbmltYXRpb25zID0gY29tcE1ldGEuYW5pbWF0aW9ucztcblxuICAgICAgbm9uTm9ybWFsaXplZFRlbXBsYXRlTWV0YWRhdGEgPSBuZXcgY3BsLkNvbXBpbGVUZW1wbGF0ZU1ldGFkYXRhKHtcbiAgICAgICAgZW5jYXBzdWxhdGlvbjogbm9VbmRlZmluZWQoY29tcE1ldGEuZW5jYXBzdWxhdGlvbiksXG4gICAgICAgIHRlbXBsYXRlOiBub1VuZGVmaW5lZChjb21wTWV0YS50ZW1wbGF0ZSksXG4gICAgICAgIHRlbXBsYXRlVXJsOiBub1VuZGVmaW5lZChjb21wTWV0YS50ZW1wbGF0ZVVybCksXG4gICAgICAgIGh0bWxBc3Q6IG51bGwsXG4gICAgICAgIHN0eWxlczogY29tcE1ldGEuc3R5bGVzIHx8IFtdLFxuICAgICAgICBzdHlsZVVybHM6IGNvbXBNZXRhLnN0eWxlVXJscyB8fCBbXSxcbiAgICAgICAgYW5pbWF0aW9uczogYW5pbWF0aW9ucyB8fCBbXSxcbiAgICAgICAgaW50ZXJwb2xhdGlvbjogbm9VbmRlZmluZWQoY29tcE1ldGEuaW50ZXJwb2xhdGlvbiksXG4gICAgICAgIGlzSW5saW5lOiAhIWNvbXBNZXRhLnRlbXBsYXRlLFxuICAgICAgICBleHRlcm5hbFN0eWxlc2hlZXRzOiBbXSxcbiAgICAgICAgbmdDb250ZW50U2VsZWN0b3JzOiBbXSxcbiAgICAgICAgcHJlc2VydmVXaGl0ZXNwYWNlczogbm9VbmRlZmluZWQoZGlyTWV0YS5wcmVzZXJ2ZVdoaXRlc3BhY2VzKSxcbiAgICAgIH0pO1xuICAgIH1cblxuICAgIGxldCBjaGFuZ2VEZXRlY3Rpb25TdHJhdGVneTogQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kgPSBudWxsITtcbiAgICBsZXQgdmlld1Byb3ZpZGVyczogY3BsLkNvbXBpbGVQcm92aWRlck1ldGFkYXRhW10gPSBbXTtcbiAgICBsZXQgZW50cnlDb21wb25lbnRNZXRhZGF0YTogY3BsLkNvbXBpbGVFbnRyeUNvbXBvbmVudE1ldGFkYXRhW10gPSBbXTtcbiAgICBsZXQgc2VsZWN0b3IgPSBkaXJNZXRhLnNlbGVjdG9yO1xuXG4gICAgaWYgKGNyZWF0ZUNvbXBvbmVudC5pc1R5cGVPZihkaXJNZXRhKSkge1xuICAgICAgLy8gQ29tcG9uZW50XG4gICAgICBjb25zdCBjb21wTWV0YSA9IGRpck1ldGEgYXMgQ29tcG9uZW50O1xuICAgICAgY2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kgPSBjb21wTWV0YS5jaGFuZ2VEZXRlY3Rpb24hO1xuICAgICAgaWYgKGNvbXBNZXRhLnZpZXdQcm92aWRlcnMpIHtcbiAgICAgICAgdmlld1Byb3ZpZGVycyA9IHRoaXMuX2dldFByb3ZpZGVyc01ldGFkYXRhKFxuICAgICAgICAgICAgY29tcE1ldGEudmlld1Byb3ZpZGVycywgZW50cnlDb21wb25lbnRNZXRhZGF0YSxcbiAgICAgICAgICAgIGB2aWV3UHJvdmlkZXJzIGZvciBcIiR7c3RyaW5naWZ5VHlwZShkaXJlY3RpdmVUeXBlKX1cImAsIFtdLCBkaXJlY3RpdmVUeXBlKTtcbiAgICAgIH1cbiAgICAgIGlmIChjb21wTWV0YS5lbnRyeUNvbXBvbmVudHMpIHtcbiAgICAgICAgZW50cnlDb21wb25lbnRNZXRhZGF0YSA9IGZsYXR0ZW5BbmREZWR1cGVBcnJheShjb21wTWV0YS5lbnRyeUNvbXBvbmVudHMpXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLm1hcCgodHlwZSkgPT4gdGhpcy5fZ2V0RW50cnlDb21wb25lbnRNZXRhZGF0YSh0eXBlKSEpXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLmNvbmNhdChlbnRyeUNvbXBvbmVudE1ldGFkYXRhKTtcbiAgICAgIH1cbiAgICAgIGlmICghc2VsZWN0b3IpIHtcbiAgICAgICAgc2VsZWN0b3IgPSB0aGlzLl9zY2hlbWFSZWdpc3RyeS5nZXREZWZhdWx0Q29tcG9uZW50RWxlbWVudE5hbWUoKTtcbiAgICAgIH1cbiAgICB9IGVsc2Uge1xuICAgICAgLy8gRGlyZWN0aXZlXG4gICAgICBpZiAoIXNlbGVjdG9yKSB7XG4gICAgICAgIHNlbGVjdG9yID0gbnVsbCE7XG4gICAgICB9XG4gICAgfVxuXG4gICAgbGV0IHByb3ZpZGVyczogY3BsLkNvbXBpbGVQcm92aWRlck1ldGFkYXRhW10gPSBbXTtcbiAgICBpZiAoZGlyTWV0YS5wcm92aWRlcnMgIT0gbnVsbCkge1xuICAgICAgcHJvdmlkZXJzID0gdGhpcy5fZ2V0UHJvdmlkZXJzTWV0YWRhdGEoXG4gICAgICAgICAgZGlyTWV0YS5wcm92aWRlcnMsIGVudHJ5Q29tcG9uZW50TWV0YWRhdGEsXG4gICAgICAgICAgYHByb3ZpZGVycyBmb3IgXCIke3N0cmluZ2lmeVR5cGUoZGlyZWN0aXZlVHlwZSl9XCJgLCBbXSwgZGlyZWN0aXZlVHlwZSk7XG4gICAgfVxuICAgIGxldCBxdWVyaWVzOiBjcGwuQ29tcGlsZVF1ZXJ5TWV0YWRhdGFbXSA9IFtdO1xuICAgIGxldCB2aWV3UXVlcmllczogY3BsLkNvbXBpbGVRdWVyeU1ldGFkYXRhW10gPSBbXTtcbiAgICBpZiAoZGlyTWV0YS5xdWVyaWVzICE9IG51bGwpIHtcbiAgICAgIHF1ZXJpZXMgPSB0aGlzLl9nZXRRdWVyaWVzTWV0YWRhdGEoZGlyTWV0YS5xdWVyaWVzLCBmYWxzZSwgZGlyZWN0aXZlVHlwZSk7XG4gICAgICB2aWV3UXVlcmllcyA9IHRoaXMuX2dldFF1ZXJpZXNNZXRhZGF0YShkaXJNZXRhLnF1ZXJpZXMsIHRydWUsIGRpcmVjdGl2ZVR5cGUpO1xuICAgIH1cblxuICAgIGNvbnN0IG1ldGFkYXRhID0gY3BsLkNvbXBpbGVEaXJlY3RpdmVNZXRhZGF0YS5jcmVhdGUoe1xuICAgICAgaXNIb3N0OiBmYWxzZSxcbiAgICAgIHNlbGVjdG9yOiBzZWxlY3RvcixcbiAgICAgIGV4cG9ydEFzOiBub1VuZGVmaW5lZChkaXJNZXRhLmV4cG9ydEFzKSxcbiAgICAgIGlzQ29tcG9uZW50OiAhIW5vbk5vcm1hbGl6ZWRUZW1wbGF0ZU1ldGFkYXRhLFxuICAgICAgdHlwZTogdGhpcy5fZ2V0VHlwZU1ldGFkYXRhKGRpcmVjdGl2ZVR5cGUpLFxuICAgICAgdGVtcGxhdGU6IG5vbk5vcm1hbGl6ZWRUZW1wbGF0ZU1ldGFkYXRhLFxuICAgICAgY2hhbmdlRGV0ZWN0aW9uOiBjaGFuZ2VEZXRlY3Rpb25TdHJhdGVneSxcbiAgICAgIGlucHV0czogZGlyTWV0YS5pbnB1dHMgfHwgW10sXG4gICAgICBvdXRwdXRzOiBkaXJNZXRhLm91dHB1dHMgfHwgW10sXG4gICAgICBob3N0OiBkaXJNZXRhLmhvc3QgfHwge30sXG4gICAgICBwcm92aWRlcnM6IHByb3ZpZGVycyB8fCBbXSxcbiAgICAgIHZpZXdQcm92aWRlcnM6IHZpZXdQcm92aWRlcnMgfHwgW10sXG4gICAgICBxdWVyaWVzOiBxdWVyaWVzIHx8IFtdLFxuICAgICAgZ3VhcmRzOiBkaXJNZXRhLmd1YXJkcyB8fCB7fSxcbiAgICAgIHZpZXdRdWVyaWVzOiB2aWV3UXVlcmllcyB8fCBbXSxcbiAgICAgIGVudHJ5Q29tcG9uZW50czogZW50cnlDb21wb25lbnRNZXRhZGF0YSxcbiAgICAgIGNvbXBvbmVudFZpZXdUeXBlOiBub25Ob3JtYWxpemVkVGVtcGxhdGVNZXRhZGF0YSA/IHRoaXMuZ2V0Q29tcG9uZW50Vmlld0NsYXNzKGRpcmVjdGl2ZVR5cGUpIDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG51bGwsXG4gICAgICByZW5kZXJlclR5cGU6IG5vbk5vcm1hbGl6ZWRUZW1wbGF0ZU1ldGFkYXRhID8gdGhpcy5nZXRSZW5kZXJlclR5cGUoZGlyZWN0aXZlVHlwZSkgOiBudWxsLFxuICAgICAgY29tcG9uZW50RmFjdG9yeTogbnVsbFxuICAgIH0pO1xuICAgIGlmIChub25Ob3JtYWxpemVkVGVtcGxhdGVNZXRhZGF0YSkge1xuICAgICAgbWV0YWRhdGEuY29tcG9uZW50RmFjdG9yeSA9XG4gICAgICAgICAgdGhpcy5nZXRDb21wb25lbnRGYWN0b3J5KHNlbGVjdG9yLCBkaXJlY3RpdmVUeXBlLCBtZXRhZGF0YS5pbnB1dHMsIG1ldGFkYXRhLm91dHB1dHMpO1xuICAgIH1cbiAgICBjYWNoZUVudHJ5ID0ge21ldGFkYXRhLCBhbm5vdGF0aW9uOiBkaXJNZXRhfTtcbiAgICB0aGlzLl9ub25Ob3JtYWxpemVkRGlyZWN0aXZlQ2FjaGUuc2V0KGRpcmVjdGl2ZVR5cGUsIGNhY2hlRW50cnkpO1xuICAgIHJldHVybiBjYWNoZUVudHJ5O1xuICB9XG5cbiAgLyoqXG4gICAqIEdldHMgdGhlIG1ldGFkYXRhIGZvciB0aGUgZ2l2ZW4gZGlyZWN0aXZlLlxuICAgKiBUaGlzIGFzc3VtZXMgYGxvYWROZ01vZHVsZURpcmVjdGl2ZUFuZFBpcGVNZXRhZGF0YWAgaGFzIGJlZW4gY2FsbGVkIGZpcnN0LlxuICAgKi9cbiAgZ2V0RGlyZWN0aXZlTWV0YWRhdGEoZGlyZWN0aXZlVHlwZTogYW55KTogY3BsLkNvbXBpbGVEaXJlY3RpdmVNZXRhZGF0YSB7XG4gICAgY29uc3QgZGlyTWV0YSA9IHRoaXMuX2RpcmVjdGl2ZUNhY2hlLmdldChkaXJlY3RpdmVUeXBlKSE7XG4gICAgaWYgKCFkaXJNZXRhKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICBzeW50YXhFcnJvcihcbiAgICAgICAgICAgICAgYElsbGVnYWwgc3RhdGU6IGdldERpcmVjdGl2ZU1ldGFkYXRhIGNhbiBvbmx5IGJlIGNhbGxlZCBhZnRlciBsb2FkTmdNb2R1bGVEaXJlY3RpdmVBbmRQaXBlTWV0YWRhdGEgZm9yIGEgbW9kdWxlIHRoYXQgZGVjbGFyZXMgaXQuIERpcmVjdGl2ZSAke1xuICAgICAgICAgICAgICAgICAgc3RyaW5naWZ5VHlwZShkaXJlY3RpdmVUeXBlKX0uYCksXG4gICAgICAgICAgZGlyZWN0aXZlVHlwZSk7XG4gICAgfVxuICAgIHJldHVybiBkaXJNZXRhO1xuICB9XG5cbiAgZ2V0RGlyZWN0aXZlU3VtbWFyeShkaXJUeXBlOiBhbnkpOiBjcGwuQ29tcGlsZURpcmVjdGl2ZVN1bW1hcnkge1xuICAgIGNvbnN0IGRpclN1bW1hcnkgPVxuICAgICAgICA8Y3BsLkNvbXBpbGVEaXJlY3RpdmVTdW1tYXJ5PnRoaXMuX2xvYWRTdW1tYXJ5KGRpclR5cGUsIGNwbC5Db21waWxlU3VtbWFyeUtpbmQuRGlyZWN0aXZlKTtcbiAgICBpZiAoIWRpclN1bW1hcnkpIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICBgSWxsZWdhbCBzdGF0ZTogQ291bGQgbm90IGxvYWQgdGhlIHN1bW1hcnkgZm9yIGRpcmVjdGl2ZSAke3N0cmluZ2lmeVR5cGUoZGlyVHlwZSl9LmApLFxuICAgICAgICAgIGRpclR5cGUpO1xuICAgIH1cbiAgICByZXR1cm4gZGlyU3VtbWFyeTtcbiAgfVxuXG4gIGlzRGlyZWN0aXZlKHR5cGU6IGFueSkge1xuICAgIHJldHVybiAhIXRoaXMuX2xvYWRTdW1tYXJ5KHR5cGUsIGNwbC5Db21waWxlU3VtbWFyeUtpbmQuRGlyZWN0aXZlKSB8fFxuICAgICAgICB0aGlzLl9kaXJlY3RpdmVSZXNvbHZlci5pc0RpcmVjdGl2ZSh0eXBlKTtcbiAgfVxuXG4gIGlzQWJzdHJhY3REaXJlY3RpdmUodHlwZTogYW55KTogYm9vbGVhbiB7XG4gICAgY29uc3Qgc3VtbWFyeSA9XG4gICAgICAgIHRoaXMuX2xvYWRTdW1tYXJ5KHR5cGUsIGNwbC5Db21waWxlU3VtbWFyeUtpbmQuRGlyZWN0aXZlKSBhcyBjcGwuQ29tcGlsZURpcmVjdGl2ZVN1bW1hcnk7XG4gICAgaWYgKHN1bW1hcnkgJiYgIXN1bW1hcnkuaXNDb21wb25lbnQpIHtcbiAgICAgIHJldHVybiAhc3VtbWFyeS5zZWxlY3RvcjtcbiAgICB9XG5cbiAgICBjb25zdCBtZXRhID0gdGhpcy5fZGlyZWN0aXZlUmVzb2x2ZXIucmVzb2x2ZSh0eXBlLCBmYWxzZSk7XG4gICAgaWYgKG1ldGEgJiYgIWNyZWF0ZUNvbXBvbmVudC5pc1R5cGVPZihtZXRhKSkge1xuICAgICAgcmV0dXJuICFtZXRhLnNlbGVjdG9yO1xuICAgIH1cblxuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIGlzUGlwZSh0eXBlOiBhbnkpIHtcbiAgICByZXR1cm4gISF0aGlzLl9sb2FkU3VtbWFyeSh0eXBlLCBjcGwuQ29tcGlsZVN1bW1hcnlLaW5kLlBpcGUpIHx8XG4gICAgICAgIHRoaXMuX3BpcGVSZXNvbHZlci5pc1BpcGUodHlwZSk7XG4gIH1cblxuICBpc05nTW9kdWxlKHR5cGU6IGFueSkge1xuICAgIHJldHVybiAhIXRoaXMuX2xvYWRTdW1tYXJ5KHR5cGUsIGNwbC5Db21waWxlU3VtbWFyeUtpbmQuTmdNb2R1bGUpIHx8XG4gICAgICAgIHRoaXMuX25nTW9kdWxlUmVzb2x2ZXIuaXNOZ01vZHVsZSh0eXBlKTtcbiAgfVxuXG4gIGdldE5nTW9kdWxlU3VtbWFyeShtb2R1bGVUeXBlOiBhbnksIGFscmVhZHlDb2xsZWN0aW5nOiBTZXQ8YW55PnxudWxsID0gbnVsbCk6XG4gICAgICBjcGwuQ29tcGlsZU5nTW9kdWxlU3VtbWFyeXxudWxsIHtcbiAgICBsZXQgbW9kdWxlU3VtbWFyeTogY3BsLkNvbXBpbGVOZ01vZHVsZVN1bW1hcnl8bnVsbCA9XG4gICAgICAgIDxjcGwuQ29tcGlsZU5nTW9kdWxlU3VtbWFyeT50aGlzLl9sb2FkU3VtbWFyeShtb2R1bGVUeXBlLCBjcGwuQ29tcGlsZVN1bW1hcnlLaW5kLk5nTW9kdWxlKTtcbiAgICBpZiAoIW1vZHVsZVN1bW1hcnkpIHtcbiAgICAgIGNvbnN0IG1vZHVsZU1ldGEgPSB0aGlzLmdldE5nTW9kdWxlTWV0YWRhdGEobW9kdWxlVHlwZSwgZmFsc2UsIGFscmVhZHlDb2xsZWN0aW5nKTtcbiAgICAgIG1vZHVsZVN1bW1hcnkgPSBtb2R1bGVNZXRhID8gbW9kdWxlTWV0YS50b1N1bW1hcnkoKSA6IG51bGw7XG4gICAgICBpZiAobW9kdWxlU3VtbWFyeSkge1xuICAgICAgICB0aGlzLl9zdW1tYXJ5Q2FjaGUuc2V0KG1vZHVsZVR5cGUsIG1vZHVsZVN1bW1hcnkpO1xuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4gbW9kdWxlU3VtbWFyeTtcbiAgfVxuXG4gIC8qKlxuICAgKiBMb2FkcyB0aGUgZGVjbGFyZWQgZGlyZWN0aXZlcyBhbmQgcGlwZXMgb2YgYW4gTmdNb2R1bGUuXG4gICAqL1xuICBsb2FkTmdNb2R1bGVEaXJlY3RpdmVBbmRQaXBlTWV0YWRhdGEobW9kdWxlVHlwZTogYW55LCBpc1N5bmM6IGJvb2xlYW4sIHRocm93SWZOb3RGb3VuZCA9IHRydWUpOlxuICAgICAgUHJvbWlzZTxhbnk+IHtcbiAgICBjb25zdCBuZ01vZHVsZSA9IHRoaXMuZ2V0TmdNb2R1bGVNZXRhZGF0YShtb2R1bGVUeXBlLCB0aHJvd0lmTm90Rm91bmQpO1xuICAgIGNvbnN0IGxvYWRpbmc6IFByb21pc2U8YW55PltdID0gW107XG4gICAgaWYgKG5nTW9kdWxlKSB7XG4gICAgICBuZ01vZHVsZS5kZWNsYXJlZERpcmVjdGl2ZXMuZm9yRWFjaCgoaWQpID0+IHtcbiAgICAgICAgY29uc3QgcHJvbWlzZSA9IHRoaXMubG9hZERpcmVjdGl2ZU1ldGFkYXRhKG1vZHVsZVR5cGUsIGlkLnJlZmVyZW5jZSwgaXNTeW5jKTtcbiAgICAgICAgaWYgKHByb21pc2UpIHtcbiAgICAgICAgICBsb2FkaW5nLnB1c2gocHJvbWlzZSk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgICAgbmdNb2R1bGUuZGVjbGFyZWRQaXBlcy5mb3JFYWNoKChpZCkgPT4gdGhpcy5fbG9hZFBpcGVNZXRhZGF0YShpZC5yZWZlcmVuY2UpKTtcbiAgICB9XG4gICAgcmV0dXJuIFByb21pc2UuYWxsKGxvYWRpbmcpO1xuICB9XG5cbiAgZ2V0U2hhbGxvd01vZHVsZU1ldGFkYXRhKG1vZHVsZVR5cGU6IGFueSk6IGNwbC5Db21waWxlU2hhbGxvd01vZHVsZU1ldGFkYXRhfG51bGwge1xuICAgIGxldCBjb21waWxlTWV0YSA9IHRoaXMuX3NoYWxsb3dNb2R1bGVDYWNoZS5nZXQobW9kdWxlVHlwZSk7XG4gICAgaWYgKGNvbXBpbGVNZXRhKSB7XG4gICAgICByZXR1cm4gY29tcGlsZU1ldGE7XG4gICAgfVxuXG4gICAgY29uc3QgbmdNb2R1bGVNZXRhID1cbiAgICAgICAgZmluZExhc3QodGhpcy5fcmVmbGVjdG9yLnNoYWxsb3dBbm5vdGF0aW9ucyhtb2R1bGVUeXBlKSwgY3JlYXRlTmdNb2R1bGUuaXNUeXBlT2YpO1xuXG4gICAgY29tcGlsZU1ldGEgPSB7XG4gICAgICB0eXBlOiB0aGlzLl9nZXRUeXBlTWV0YWRhdGEobW9kdWxlVHlwZSksXG4gICAgICByYXdFeHBvcnRzOiBuZ01vZHVsZU1ldGEuZXhwb3J0cyxcbiAgICAgIHJhd0ltcG9ydHM6IG5nTW9kdWxlTWV0YS5pbXBvcnRzLFxuICAgICAgcmF3UHJvdmlkZXJzOiBuZ01vZHVsZU1ldGEucHJvdmlkZXJzLFxuICAgIH07XG5cbiAgICB0aGlzLl9zaGFsbG93TW9kdWxlQ2FjaGUuc2V0KG1vZHVsZVR5cGUsIGNvbXBpbGVNZXRhKTtcbiAgICByZXR1cm4gY29tcGlsZU1ldGE7XG4gIH1cblxuICBnZXROZ01vZHVsZU1ldGFkYXRhKFxuICAgICAgbW9kdWxlVHlwZTogYW55LCB0aHJvd0lmTm90Rm91bmQgPSB0cnVlLFxuICAgICAgYWxyZWFkeUNvbGxlY3Rpbmc6IFNldDxhbnk+fG51bGwgPSBudWxsKTogY3BsLkNvbXBpbGVOZ01vZHVsZU1ldGFkYXRhfG51bGwge1xuICAgIG1vZHVsZVR5cGUgPSByZXNvbHZlRm9yd2FyZFJlZihtb2R1bGVUeXBlKTtcbiAgICBsZXQgY29tcGlsZU1ldGEgPSB0aGlzLl9uZ01vZHVsZUNhY2hlLmdldChtb2R1bGVUeXBlKTtcbiAgICBpZiAoY29tcGlsZU1ldGEpIHtcbiAgICAgIHJldHVybiBjb21waWxlTWV0YTtcbiAgICB9XG4gICAgY29uc3QgbWV0YSA9IHRoaXMuX25nTW9kdWxlUmVzb2x2ZXIucmVzb2x2ZShtb2R1bGVUeXBlLCB0aHJvd0lmTm90Rm91bmQpO1xuICAgIGlmICghbWV0YSkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIGNvbnN0IGRlY2xhcmVkRGlyZWN0aXZlczogY3BsLkNvbXBpbGVJZGVudGlmaWVyTWV0YWRhdGFbXSA9IFtdO1xuICAgIGNvbnN0IGV4cG9ydGVkTm9uTW9kdWxlSWRlbnRpZmllcnM6IGNwbC5Db21waWxlSWRlbnRpZmllck1ldGFkYXRhW10gPSBbXTtcbiAgICBjb25zdCBkZWNsYXJlZFBpcGVzOiBjcGwuQ29tcGlsZUlkZW50aWZpZXJNZXRhZGF0YVtdID0gW107XG4gICAgY29uc3QgaW1wb3J0ZWRNb2R1bGVzOiBjcGwuQ29tcGlsZU5nTW9kdWxlU3VtbWFyeVtdID0gW107XG4gICAgY29uc3QgZXhwb3J0ZWRNb2R1bGVzOiBjcGwuQ29tcGlsZU5nTW9kdWxlU3VtbWFyeVtdID0gW107XG4gICAgY29uc3QgcHJvdmlkZXJzOiBjcGwuQ29tcGlsZVByb3ZpZGVyTWV0YWRhdGFbXSA9IFtdO1xuICAgIGNvbnN0IGVudHJ5Q29tcG9uZW50czogY3BsLkNvbXBpbGVFbnRyeUNvbXBvbmVudE1ldGFkYXRhW10gPSBbXTtcbiAgICBjb25zdCBib290c3RyYXBDb21wb25lbnRzOiBjcGwuQ29tcGlsZUlkZW50aWZpZXJNZXRhZGF0YVtdID0gW107XG4gICAgY29uc3Qgc2NoZW1hczogU2NoZW1hTWV0YWRhdGFbXSA9IFtdO1xuXG4gICAgaWYgKG1ldGEuaW1wb3J0cykge1xuICAgICAgZmxhdHRlbkFuZERlZHVwZUFycmF5KG1ldGEuaW1wb3J0cykuZm9yRWFjaCgoaW1wb3J0ZWRUeXBlKSA9PiB7XG4gICAgICAgIGxldCBpbXBvcnRlZE1vZHVsZVR5cGU6IFR5cGUgPSB1bmRlZmluZWQhO1xuICAgICAgICBpZiAoaXNWYWxpZFR5cGUoaW1wb3J0ZWRUeXBlKSkge1xuICAgICAgICAgIGltcG9ydGVkTW9kdWxlVHlwZSA9IGltcG9ydGVkVHlwZTtcbiAgICAgICAgfSBlbHNlIGlmIChpbXBvcnRlZFR5cGUgJiYgaW1wb3J0ZWRUeXBlLm5nTW9kdWxlKSB7XG4gICAgICAgICAgY29uc3QgbW9kdWxlV2l0aFByb3ZpZGVyczogTW9kdWxlV2l0aFByb3ZpZGVycyA9IGltcG9ydGVkVHlwZTtcbiAgICAgICAgICBpbXBvcnRlZE1vZHVsZVR5cGUgPSBtb2R1bGVXaXRoUHJvdmlkZXJzLm5nTW9kdWxlO1xuICAgICAgICAgIGlmIChtb2R1bGVXaXRoUHJvdmlkZXJzLnByb3ZpZGVycykge1xuICAgICAgICAgICAgcHJvdmlkZXJzLnB1c2goLi4udGhpcy5fZ2V0UHJvdmlkZXJzTWV0YWRhdGEoXG4gICAgICAgICAgICAgICAgbW9kdWxlV2l0aFByb3ZpZGVycy5wcm92aWRlcnMsIGVudHJ5Q29tcG9uZW50cyxcbiAgICAgICAgICAgICAgICBgcHJvdmlkZXIgZm9yIHRoZSBOZ01vZHVsZSAnJHtzdHJpbmdpZnlUeXBlKGltcG9ydGVkTW9kdWxlVHlwZSl9J2AsIFtdLFxuICAgICAgICAgICAgICAgIGltcG9ydGVkVHlwZSkpO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIGlmIChpbXBvcnRlZE1vZHVsZVR5cGUpIHtcbiAgICAgICAgICBpZiAodGhpcy5fY2hlY2tTZWxmSW1wb3J0KG1vZHVsZVR5cGUsIGltcG9ydGVkTW9kdWxlVHlwZSkpIHJldHVybjtcbiAgICAgICAgICBpZiAoIWFscmVhZHlDb2xsZWN0aW5nKSBhbHJlYWR5Q29sbGVjdGluZyA9IG5ldyBTZXQoKTtcbiAgICAgICAgICBpZiAoYWxyZWFkeUNvbGxlY3RpbmcuaGFzKGltcG9ydGVkTW9kdWxlVHlwZSkpIHtcbiAgICAgICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgICAgICAgIHN5bnRheEVycm9yKGAke3RoaXMuX2dldFR5cGVEZXNjcmlwdG9yKGltcG9ydGVkTW9kdWxlVHlwZSl9ICcke1xuICAgICAgICAgICAgICAgICAgICBzdHJpbmdpZnlUeXBlKGltcG9ydGVkVHlwZSl9JyBpcyBpbXBvcnRlZCByZWN1cnNpdmVseSBieSB0aGUgbW9kdWxlICcke1xuICAgICAgICAgICAgICAgICAgICBzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfScuYCksXG4gICAgICAgICAgICAgICAgbW9kdWxlVHlwZSk7XG4gICAgICAgICAgICByZXR1cm47XG4gICAgICAgICAgfVxuICAgICAgICAgIGFscmVhZHlDb2xsZWN0aW5nLmFkZChpbXBvcnRlZE1vZHVsZVR5cGUpO1xuICAgICAgICAgIGNvbnN0IGltcG9ydGVkTW9kdWxlU3VtbWFyeSA9XG4gICAgICAgICAgICAgIHRoaXMuZ2V0TmdNb2R1bGVTdW1tYXJ5KGltcG9ydGVkTW9kdWxlVHlwZSwgYWxyZWFkeUNvbGxlY3RpbmcpO1xuICAgICAgICAgIGFscmVhZHlDb2xsZWN0aW5nLmRlbGV0ZShpbXBvcnRlZE1vZHVsZVR5cGUpO1xuICAgICAgICAgIGlmICghaW1wb3J0ZWRNb2R1bGVTdW1tYXJ5KSB7XG4gICAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICAgICBzeW50YXhFcnJvcihgVW5leHBlY3RlZCAke3RoaXMuX2dldFR5cGVEZXNjcmlwdG9yKGltcG9ydGVkVHlwZSl9ICcke1xuICAgICAgICAgICAgICAgICAgICBzdHJpbmdpZnlUeXBlKGltcG9ydGVkVHlwZSl9JyBpbXBvcnRlZCBieSB0aGUgbW9kdWxlICcke1xuICAgICAgICAgICAgICAgICAgICBzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfScuIFBsZWFzZSBhZGQgYSBATmdNb2R1bGUgYW5ub3RhdGlvbi5gKSxcbiAgICAgICAgICAgICAgICBtb2R1bGVUeXBlKTtcbiAgICAgICAgICAgIHJldHVybjtcbiAgICAgICAgICB9XG4gICAgICAgICAgaW1wb3J0ZWRNb2R1bGVzLnB1c2goaW1wb3J0ZWRNb2R1bGVTdW1tYXJ5KTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgICAgICBgVW5leHBlY3RlZCB2YWx1ZSAnJHtzdHJpbmdpZnlUeXBlKGltcG9ydGVkVHlwZSl9JyBpbXBvcnRlZCBieSB0aGUgbW9kdWxlICcke1xuICAgICAgICAgICAgICAgICAgICAgIHN0cmluZ2lmeVR5cGUobW9kdWxlVHlwZSl9J2ApLFxuICAgICAgICAgICAgICBtb2R1bGVUeXBlKTtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgIH1cblxuICAgIGlmIChtZXRhLmV4cG9ydHMpIHtcbiAgICAgIGZsYXR0ZW5BbmREZWR1cGVBcnJheShtZXRhLmV4cG9ydHMpLmZvckVhY2goKGV4cG9ydGVkVHlwZSkgPT4ge1xuICAgICAgICBpZiAoIWlzVmFsaWRUeXBlKGV4cG9ydGVkVHlwZSkpIHtcbiAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgICAgICBgVW5leHBlY3RlZCB2YWx1ZSAnJHtzdHJpbmdpZnlUeXBlKGV4cG9ydGVkVHlwZSl9JyBleHBvcnRlZCBieSB0aGUgbW9kdWxlICcke1xuICAgICAgICAgICAgICAgICAgICAgIHN0cmluZ2lmeVR5cGUobW9kdWxlVHlwZSl9J2ApLFxuICAgICAgICAgICAgICBtb2R1bGVUeXBlKTtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cbiAgICAgICAgaWYgKCFhbHJlYWR5Q29sbGVjdGluZykgYWxyZWFkeUNvbGxlY3RpbmcgPSBuZXcgU2V0KCk7XG4gICAgICAgIGlmIChhbHJlYWR5Q29sbGVjdGluZy5oYXMoZXhwb3J0ZWRUeXBlKSkge1xuICAgICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgICAgICBzeW50YXhFcnJvcihgJHt0aGlzLl9nZXRUeXBlRGVzY3JpcHRvcihleHBvcnRlZFR5cGUpfSAnJHtcbiAgICAgICAgICAgICAgICAgIHN0cmluZ2lmeShleHBvcnRlZFR5cGUpfScgaXMgZXhwb3J0ZWQgcmVjdXJzaXZlbHkgYnkgdGhlIG1vZHVsZSAnJHtcbiAgICAgICAgICAgICAgICAgIHN0cmluZ2lmeVR5cGUobW9kdWxlVHlwZSl9J2ApLFxuICAgICAgICAgICAgICBtb2R1bGVUeXBlKTtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cbiAgICAgICAgYWxyZWFkeUNvbGxlY3RpbmcuYWRkKGV4cG9ydGVkVHlwZSk7XG4gICAgICAgIGNvbnN0IGV4cG9ydGVkTW9kdWxlU3VtbWFyeSA9IHRoaXMuZ2V0TmdNb2R1bGVTdW1tYXJ5KGV4cG9ydGVkVHlwZSwgYWxyZWFkeUNvbGxlY3RpbmcpO1xuICAgICAgICBhbHJlYWR5Q29sbGVjdGluZy5kZWxldGUoZXhwb3J0ZWRUeXBlKTtcbiAgICAgICAgaWYgKGV4cG9ydGVkTW9kdWxlU3VtbWFyeSkge1xuICAgICAgICAgIGV4cG9ydGVkTW9kdWxlcy5wdXNoKGV4cG9ydGVkTW9kdWxlU3VtbWFyeSk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgZXhwb3J0ZWROb25Nb2R1bGVJZGVudGlmaWVycy5wdXNoKHRoaXMuX2dldElkZW50aWZpZXJNZXRhZGF0YShleHBvcnRlZFR5cGUpKTtcbiAgICAgICAgfVxuICAgICAgfSk7XG4gICAgfVxuXG4gICAgLy8gTm90ZTogVGhpcyB3aWxsIGJlIG1vZGlmaWVkIGxhdGVyLCBzbyB3ZSByZWx5IG9uXG4gICAgLy8gZ2V0dGluZyBhIG5ldyBpbnN0YW5jZSBldmVyeSB0aW1lIVxuICAgIGNvbnN0IHRyYW5zaXRpdmVNb2R1bGUgPSB0aGlzLl9nZXRUcmFuc2l0aXZlTmdNb2R1bGVNZXRhZGF0YShpbXBvcnRlZE1vZHVsZXMsIGV4cG9ydGVkTW9kdWxlcyk7XG4gICAgaWYgKG1ldGEuZGVjbGFyYXRpb25zKSB7XG4gICAgICBmbGF0dGVuQW5kRGVkdXBlQXJyYXkobWV0YS5kZWNsYXJhdGlvbnMpLmZvckVhY2goKGRlY2xhcmVkVHlwZSkgPT4ge1xuICAgICAgICBpZiAoIWlzVmFsaWRUeXBlKGRlY2xhcmVkVHlwZSkpIHtcbiAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgICAgICBgVW5leHBlY3RlZCB2YWx1ZSAnJHtzdHJpbmdpZnlUeXBlKGRlY2xhcmVkVHlwZSl9JyBkZWNsYXJlZCBieSB0aGUgbW9kdWxlICcke1xuICAgICAgICAgICAgICAgICAgICAgIHN0cmluZ2lmeVR5cGUobW9kdWxlVHlwZSl9J2ApLFxuICAgICAgICAgICAgICBtb2R1bGVUeXBlKTtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cbiAgICAgICAgY29uc3QgZGVjbGFyZWRJZGVudGlmaWVyID0gdGhpcy5fZ2V0SWRlbnRpZmllck1ldGFkYXRhKGRlY2xhcmVkVHlwZSk7XG4gICAgICAgIGlmICh0aGlzLmlzRGlyZWN0aXZlKGRlY2xhcmVkVHlwZSkpIHtcbiAgICAgICAgICBpZiAodGhpcy5pc0Fic3RyYWN0RGlyZWN0aXZlKGRlY2xhcmVkVHlwZSkpIHtcbiAgICAgICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICAgICAgICBgRGlyZWN0aXZlICR7c3RyaW5naWZ5VHlwZShkZWNsYXJlZFR5cGUpfSBoYXMgbm8gc2VsZWN0b3IsIHBsZWFzZSBhZGQgaXQhYCksXG4gICAgICAgICAgICAgICAgZGVjbGFyZWRUeXBlKTtcbiAgICAgICAgICB9XG4gICAgICAgICAgdHJhbnNpdGl2ZU1vZHVsZS5hZGREaXJlY3RpdmUoZGVjbGFyZWRJZGVudGlmaWVyKTtcbiAgICAgICAgICBkZWNsYXJlZERpcmVjdGl2ZXMucHVzaChkZWNsYXJlZElkZW50aWZpZXIpO1xuICAgICAgICAgIHRoaXMuX2FkZFR5cGVUb01vZHVsZShkZWNsYXJlZFR5cGUsIG1vZHVsZVR5cGUpO1xuICAgICAgICB9IGVsc2UgaWYgKHRoaXMuaXNQaXBlKGRlY2xhcmVkVHlwZSkpIHtcbiAgICAgICAgICB0cmFuc2l0aXZlTW9kdWxlLmFkZFBpcGUoZGVjbGFyZWRJZGVudGlmaWVyKTtcbiAgICAgICAgICB0cmFuc2l0aXZlTW9kdWxlLnBpcGVzLnB1c2goZGVjbGFyZWRJZGVudGlmaWVyKTtcbiAgICAgICAgICBkZWNsYXJlZFBpcGVzLnB1c2goZGVjbGFyZWRJZGVudGlmaWVyKTtcbiAgICAgICAgICB0aGlzLl9hZGRUeXBlVG9Nb2R1bGUoZGVjbGFyZWRUeXBlLCBtb2R1bGVUeXBlKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICAgc3ludGF4RXJyb3IoYFVuZXhwZWN0ZWQgJHt0aGlzLl9nZXRUeXBlRGVzY3JpcHRvcihkZWNsYXJlZFR5cGUpfSAnJHtcbiAgICAgICAgICAgICAgICAgIHN0cmluZ2lmeVR5cGUoZGVjbGFyZWRUeXBlKX0nIGRlY2xhcmVkIGJ5IHRoZSBtb2R1bGUgJyR7XG4gICAgICAgICAgICAgICAgICBzdHJpbmdpZnlUeXBlKFxuICAgICAgICAgICAgICAgICAgICAgIG1vZHVsZVR5cGUpfScuIFBsZWFzZSBhZGQgYSBAUGlwZS9ARGlyZWN0aXZlL0BDb21wb25lbnQgYW5ub3RhdGlvbi5gKSxcbiAgICAgICAgICAgICAgbW9kdWxlVHlwZSk7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICB9XG5cbiAgICBjb25zdCBleHBvcnRlZERpcmVjdGl2ZXM6IGNwbC5Db21waWxlSWRlbnRpZmllck1ldGFkYXRhW10gPSBbXTtcbiAgICBjb25zdCBleHBvcnRlZFBpcGVzOiBjcGwuQ29tcGlsZUlkZW50aWZpZXJNZXRhZGF0YVtdID0gW107XG4gICAgZXhwb3J0ZWROb25Nb2R1bGVJZGVudGlmaWVycy5mb3JFYWNoKChleHBvcnRlZElkKSA9PiB7XG4gICAgICBpZiAodHJhbnNpdGl2ZU1vZHVsZS5kaXJlY3RpdmVzU2V0LmhhcyhleHBvcnRlZElkLnJlZmVyZW5jZSkpIHtcbiAgICAgICAgZXhwb3J0ZWREaXJlY3RpdmVzLnB1c2goZXhwb3J0ZWRJZCk7XG4gICAgICAgIHRyYW5zaXRpdmVNb2R1bGUuYWRkRXhwb3J0ZWREaXJlY3RpdmUoZXhwb3J0ZWRJZCk7XG4gICAgICB9IGVsc2UgaWYgKHRyYW5zaXRpdmVNb2R1bGUucGlwZXNTZXQuaGFzKGV4cG9ydGVkSWQucmVmZXJlbmNlKSkge1xuICAgICAgICBleHBvcnRlZFBpcGVzLnB1c2goZXhwb3J0ZWRJZCk7XG4gICAgICAgIHRyYW5zaXRpdmVNb2R1bGUuYWRkRXhwb3J0ZWRQaXBlKGV4cG9ydGVkSWQpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICBzeW50YXhFcnJvcihgQ2FuJ3QgZXhwb3J0ICR7dGhpcy5fZ2V0VHlwZURlc2NyaXB0b3IoZXhwb3J0ZWRJZC5yZWZlcmVuY2UpfSAke1xuICAgICAgICAgICAgICAgIHN0cmluZ2lmeVR5cGUoZXhwb3J0ZWRJZC5yZWZlcmVuY2UpfSBmcm9tICR7XG4gICAgICAgICAgICAgICAgc3RyaW5naWZ5VHlwZShtb2R1bGVUeXBlKX0gYXMgaXQgd2FzIG5laXRoZXIgZGVjbGFyZWQgbm9yIGltcG9ydGVkIWApLFxuICAgICAgICAgICAgbW9kdWxlVHlwZSk7XG4gICAgICAgIHJldHVybjtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIC8vIFRoZSBwcm92aWRlcnMgb2YgdGhlIG1vZHVsZSBoYXZlIHRvIGdvIGxhc3RcbiAgICAvLyBzbyB0aGF0IHRoZXkgb3ZlcndyaXRlIGFueSBvdGhlciBwcm92aWRlciB3ZSBhbHJlYWR5IGFkZGVkLlxuICAgIGlmIChtZXRhLnByb3ZpZGVycykge1xuICAgICAgcHJvdmlkZXJzLnB1c2goLi4udGhpcy5fZ2V0UHJvdmlkZXJzTWV0YWRhdGEoXG4gICAgICAgICAgbWV0YS5wcm92aWRlcnMsIGVudHJ5Q29tcG9uZW50cyxcbiAgICAgICAgICBgcHJvdmlkZXIgZm9yIHRoZSBOZ01vZHVsZSAnJHtzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfSdgLCBbXSwgbW9kdWxlVHlwZSkpO1xuICAgIH1cblxuICAgIGlmIChtZXRhLmVudHJ5Q29tcG9uZW50cykge1xuICAgICAgZW50cnlDb21wb25lbnRzLnB1c2goLi4uZmxhdHRlbkFuZERlZHVwZUFycmF5KG1ldGEuZW50cnlDb21wb25lbnRzKVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5tYXAodHlwZSA9PiB0aGlzLl9nZXRFbnRyeUNvbXBvbmVudE1ldGFkYXRhKHR5cGUpISkpO1xuICAgIH1cblxuICAgIGlmIChtZXRhLmJvb3RzdHJhcCkge1xuICAgICAgZmxhdHRlbkFuZERlZHVwZUFycmF5KG1ldGEuYm9vdHN0cmFwKS5mb3JFYWNoKHR5cGUgPT4ge1xuICAgICAgICBpZiAoIWlzVmFsaWRUeXBlKHR5cGUpKSB7XG4gICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgIHN5bnRheEVycm9yKGBVbmV4cGVjdGVkIHZhbHVlICcke1xuICAgICAgICAgICAgICAgICAgc3RyaW5naWZ5VHlwZSh0eXBlKX0nIHVzZWQgaW4gdGhlIGJvb3RzdHJhcCBwcm9wZXJ0eSBvZiBtb2R1bGUgJyR7XG4gICAgICAgICAgICAgICAgICBzdHJpbmdpZnlUeXBlKG1vZHVsZVR5cGUpfSdgKSxcbiAgICAgICAgICAgICAgbW9kdWxlVHlwZSk7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9XG4gICAgICAgIGJvb3RzdHJhcENvbXBvbmVudHMucHVzaCh0aGlzLl9nZXRJZGVudGlmaWVyTWV0YWRhdGEodHlwZSkpO1xuICAgICAgfSk7XG4gICAgfVxuXG4gICAgZW50cnlDb21wb25lbnRzLnB1c2goXG4gICAgICAgIC4uLmJvb3RzdHJhcENvbXBvbmVudHMubWFwKHR5cGUgPT4gdGhpcy5fZ2V0RW50cnlDb21wb25lbnRNZXRhZGF0YSh0eXBlLnJlZmVyZW5jZSkhKSk7XG5cbiAgICBpZiAobWV0YS5zY2hlbWFzKSB7XG4gICAgICBzY2hlbWFzLnB1c2goLi4uZmxhdHRlbkFuZERlZHVwZUFycmF5KG1ldGEuc2NoZW1hcykpO1xuICAgIH1cblxuICAgIGNvbXBpbGVNZXRhID0gbmV3IGNwbC5Db21waWxlTmdNb2R1bGVNZXRhZGF0YSh7XG4gICAgICB0eXBlOiB0aGlzLl9nZXRUeXBlTWV0YWRhdGEobW9kdWxlVHlwZSksXG4gICAgICBwcm92aWRlcnMsXG4gICAgICBlbnRyeUNvbXBvbmVudHMsXG4gICAgICBib290c3RyYXBDb21wb25lbnRzLFxuICAgICAgc2NoZW1hcyxcbiAgICAgIGRlY2xhcmVkRGlyZWN0aXZlcyxcbiAgICAgIGV4cG9ydGVkRGlyZWN0aXZlcyxcbiAgICAgIGRlY2xhcmVkUGlwZXMsXG4gICAgICBleHBvcnRlZFBpcGVzLFxuICAgICAgaW1wb3J0ZWRNb2R1bGVzLFxuICAgICAgZXhwb3J0ZWRNb2R1bGVzLFxuICAgICAgdHJhbnNpdGl2ZU1vZHVsZSxcbiAgICAgIGlkOiBtZXRhLmlkIHx8IG51bGwsXG4gICAgfSk7XG5cbiAgICBlbnRyeUNvbXBvbmVudHMuZm9yRWFjaCgoaWQpID0+IHRyYW5zaXRpdmVNb2R1bGUuYWRkRW50cnlDb21wb25lbnQoaWQpKTtcbiAgICBwcm92aWRlcnMuZm9yRWFjaCgocHJvdmlkZXIpID0+IHRyYW5zaXRpdmVNb2R1bGUuYWRkUHJvdmlkZXIocHJvdmlkZXIsIGNvbXBpbGVNZXRhIS50eXBlKSk7XG4gICAgdHJhbnNpdGl2ZU1vZHVsZS5hZGRNb2R1bGUoY29tcGlsZU1ldGEudHlwZSk7XG4gICAgdGhpcy5fbmdNb2R1bGVDYWNoZS5zZXQobW9kdWxlVHlwZSwgY29tcGlsZU1ldGEpO1xuICAgIHJldHVybiBjb21waWxlTWV0YTtcbiAgfVxuXG4gIHByaXZhdGUgX2NoZWNrU2VsZkltcG9ydChtb2R1bGVUeXBlOiBUeXBlLCBpbXBvcnRlZE1vZHVsZVR5cGU6IFR5cGUpOiBib29sZWFuIHtcbiAgICBpZiAobW9kdWxlVHlwZSA9PT0gaW1wb3J0ZWRNb2R1bGVUeXBlKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICBzeW50YXhFcnJvcihgJyR7c3RyaW5naWZ5VHlwZShtb2R1bGVUeXBlKX0nIG1vZHVsZSBjYW4ndCBpbXBvcnQgaXRzZWxmYCksIG1vZHVsZVR5cGUpO1xuICAgICAgcmV0dXJuIHRydWU7XG4gICAgfVxuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHByaXZhdGUgX2dldFR5cGVEZXNjcmlwdG9yKHR5cGU6IFR5cGUpOiBzdHJpbmcge1xuICAgIGlmIChpc1ZhbGlkVHlwZSh0eXBlKSkge1xuICAgICAgaWYgKHRoaXMuaXNEaXJlY3RpdmUodHlwZSkpIHtcbiAgICAgICAgcmV0dXJuICdkaXJlY3RpdmUnO1xuICAgICAgfVxuXG4gICAgICBpZiAodGhpcy5pc1BpcGUodHlwZSkpIHtcbiAgICAgICAgcmV0dXJuICdwaXBlJztcbiAgICAgIH1cblxuICAgICAgaWYgKHRoaXMuaXNOZ01vZHVsZSh0eXBlKSkge1xuICAgICAgICByZXR1cm4gJ21vZHVsZSc7XG4gICAgICB9XG4gICAgfVxuXG4gICAgaWYgKCh0eXBlIGFzIGFueSkucHJvdmlkZSkge1xuICAgICAgcmV0dXJuICdwcm92aWRlcic7XG4gICAgfVxuXG4gICAgcmV0dXJuICd2YWx1ZSc7XG4gIH1cblxuXG4gIHByaXZhdGUgX2FkZFR5cGVUb01vZHVsZSh0eXBlOiBUeXBlLCBtb2R1bGVUeXBlOiBUeXBlKSB7XG4gICAgY29uc3Qgb2xkTW9kdWxlID0gdGhpcy5fbmdNb2R1bGVPZlR5cGVzLmdldCh0eXBlKTtcbiAgICBpZiAob2xkTW9kdWxlICYmIG9sZE1vZHVsZSAhPT0gbW9kdWxlVHlwZSkge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgc3ludGF4RXJyb3IoXG4gICAgICAgICAgICAgIGBUeXBlICR7c3RyaW5naWZ5VHlwZSh0eXBlKX0gaXMgcGFydCBvZiB0aGUgZGVjbGFyYXRpb25zIG9mIDIgbW9kdWxlczogJHtcbiAgICAgICAgICAgICAgICAgIHN0cmluZ2lmeVR5cGUob2xkTW9kdWxlKX0gYW5kICR7c3RyaW5naWZ5VHlwZShtb2R1bGVUeXBlKX0hIGAgK1xuICAgICAgICAgICAgICBgUGxlYXNlIGNvbnNpZGVyIG1vdmluZyAke3N0cmluZ2lmeVR5cGUodHlwZSl9IHRvIGEgaGlnaGVyIG1vZHVsZSB0aGF0IGltcG9ydHMgJHtcbiAgICAgICAgICAgICAgICAgIHN0cmluZ2lmeVR5cGUob2xkTW9kdWxlKX0gYW5kICR7c3RyaW5naWZ5VHlwZShtb2R1bGVUeXBlKX0uIGAgK1xuICAgICAgICAgICAgICBgWW91IGNhbiBhbHNvIGNyZWF0ZSBhIG5ldyBOZ01vZHVsZSB0aGF0IGV4cG9ydHMgYW5kIGluY2x1ZGVzICR7XG4gICAgICAgICAgICAgICAgICBzdHJpbmdpZnlUeXBlKHR5cGUpfSB0aGVuIGltcG9ydCB0aGF0IE5nTW9kdWxlIGluICR7XG4gICAgICAgICAgICAgICAgICBzdHJpbmdpZnlUeXBlKG9sZE1vZHVsZSl9IGFuZCAke3N0cmluZ2lmeVR5cGUobW9kdWxlVHlwZSl9LmApLFxuICAgICAgICAgIG1vZHVsZVR5cGUpO1xuICAgICAgcmV0dXJuO1xuICAgIH1cbiAgICB0aGlzLl9uZ01vZHVsZU9mVHlwZXMuc2V0KHR5cGUsIG1vZHVsZVR5cGUpO1xuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0VHJhbnNpdGl2ZU5nTW9kdWxlTWV0YWRhdGEoXG4gICAgICBpbXBvcnRlZE1vZHVsZXM6IGNwbC5Db21waWxlTmdNb2R1bGVTdW1tYXJ5W10sXG4gICAgICBleHBvcnRlZE1vZHVsZXM6IGNwbC5Db21waWxlTmdNb2R1bGVTdW1tYXJ5W10pOiBjcGwuVHJhbnNpdGl2ZUNvbXBpbGVOZ01vZHVsZU1ldGFkYXRhIHtcbiAgICAvLyBjb2xsZWN0IGBwcm92aWRlcnNgIC8gYGVudHJ5Q29tcG9uZW50c2AgZnJvbSBhbGwgaW1wb3J0ZWQgYW5kIGFsbCBleHBvcnRlZCBtb2R1bGVzXG4gICAgY29uc3QgcmVzdWx0ID0gbmV3IGNwbC5UcmFuc2l0aXZlQ29tcGlsZU5nTW9kdWxlTWV0YWRhdGEoKTtcbiAgICBjb25zdCBtb2R1bGVzQnlUb2tlbiA9IG5ldyBNYXA8YW55LCBTZXQ8YW55Pj4oKTtcbiAgICBpbXBvcnRlZE1vZHVsZXMuY29uY2F0KGV4cG9ydGVkTW9kdWxlcykuZm9yRWFjaCgobW9kU3VtbWFyeSkgPT4ge1xuICAgICAgbW9kU3VtbWFyeS5tb2R1bGVzLmZvckVhY2goKG1vZCkgPT4gcmVzdWx0LmFkZE1vZHVsZShtb2QpKTtcbiAgICAgIG1vZFN1bW1hcnkuZW50cnlDb21wb25lbnRzLmZvckVhY2goKGNvbXApID0+IHJlc3VsdC5hZGRFbnRyeUNvbXBvbmVudChjb21wKSk7XG4gICAgICBjb25zdCBhZGRlZFRva2VucyA9IG5ldyBTZXQ8YW55PigpO1xuICAgICAgbW9kU3VtbWFyeS5wcm92aWRlcnMuZm9yRWFjaCgoZW50cnkpID0+IHtcbiAgICAgICAgY29uc3QgdG9rZW5SZWYgPSBjcGwudG9rZW5SZWZlcmVuY2UoZW50cnkucHJvdmlkZXIudG9rZW4pO1xuICAgICAgICBsZXQgcHJldk1vZHVsZXMgPSBtb2R1bGVzQnlUb2tlbi5nZXQodG9rZW5SZWYpO1xuICAgICAgICBpZiAoIXByZXZNb2R1bGVzKSB7XG4gICAgICAgICAgcHJldk1vZHVsZXMgPSBuZXcgU2V0PGFueT4oKTtcbiAgICAgICAgICBtb2R1bGVzQnlUb2tlbi5zZXQodG9rZW5SZWYsIHByZXZNb2R1bGVzKTtcbiAgICAgICAgfVxuICAgICAgICBjb25zdCBtb2R1bGVSZWYgPSBlbnRyeS5tb2R1bGUucmVmZXJlbmNlO1xuICAgICAgICAvLyBOb3RlOiB0aGUgcHJvdmlkZXJzIG9mIG9uZSBtb2R1bGUgbWF5IHN0aWxsIGNvbnRhaW4gbXVsdGlwbGUgcHJvdmlkZXJzXG4gICAgICAgIC8vIHBlciB0b2tlbiAoZS5nLiBmb3IgbXVsdGkgcHJvdmlkZXJzKSwgYW5kIHdlIG5lZWQgdG8gcHJlc2VydmUgdGhlc2UuXG4gICAgICAgIGlmIChhZGRlZFRva2Vucy5oYXModG9rZW5SZWYpIHx8ICFwcmV2TW9kdWxlcy5oYXMobW9kdWxlUmVmKSkge1xuICAgICAgICAgIHByZXZNb2R1bGVzLmFkZChtb2R1bGVSZWYpO1xuICAgICAgICAgIGFkZGVkVG9rZW5zLmFkZCh0b2tlblJlZik7XG4gICAgICAgICAgcmVzdWx0LmFkZFByb3ZpZGVyKGVudHJ5LnByb3ZpZGVyLCBlbnRyeS5tb2R1bGUpO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICB9KTtcbiAgICBleHBvcnRlZE1vZHVsZXMuZm9yRWFjaCgobW9kU3VtbWFyeSkgPT4ge1xuICAgICAgbW9kU3VtbWFyeS5leHBvcnRlZERpcmVjdGl2ZXMuZm9yRWFjaCgoaWQpID0+IHJlc3VsdC5hZGRFeHBvcnRlZERpcmVjdGl2ZShpZCkpO1xuICAgICAgbW9kU3VtbWFyeS5leHBvcnRlZFBpcGVzLmZvckVhY2goKGlkKSA9PiByZXN1bHQuYWRkRXhwb3J0ZWRQaXBlKGlkKSk7XG4gICAgfSk7XG4gICAgaW1wb3J0ZWRNb2R1bGVzLmZvckVhY2goKG1vZFN1bW1hcnkpID0+IHtcbiAgICAgIG1vZFN1bW1hcnkuZXhwb3J0ZWREaXJlY3RpdmVzLmZvckVhY2goKGlkKSA9PiByZXN1bHQuYWRkRGlyZWN0aXZlKGlkKSk7XG4gICAgICBtb2RTdW1tYXJ5LmV4cG9ydGVkUGlwZXMuZm9yRWFjaCgoaWQpID0+IHJlc3VsdC5hZGRQaXBlKGlkKSk7XG4gICAgfSk7XG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIHByaXZhdGUgX2dldElkZW50aWZpZXJNZXRhZGF0YSh0eXBlOiBUeXBlKTogY3BsLkNvbXBpbGVJZGVudGlmaWVyTWV0YWRhdGEge1xuICAgIHR5cGUgPSByZXNvbHZlRm9yd2FyZFJlZih0eXBlKTtcbiAgICByZXR1cm4ge3JlZmVyZW5jZTogdHlwZX07XG4gIH1cblxuICBpc0luamVjdGFibGUodHlwZTogYW55KTogYm9vbGVhbiB7XG4gICAgY29uc3QgYW5ub3RhdGlvbnMgPSB0aGlzLl9yZWZsZWN0b3IudHJ5QW5ub3RhdGlvbnModHlwZSk7XG4gICAgcmV0dXJuIGFubm90YXRpb25zLnNvbWUoYW5uID0+IGNyZWF0ZUluamVjdGFibGUuaXNUeXBlT2YoYW5uKSk7XG4gIH1cblxuICBnZXRJbmplY3RhYmxlU3VtbWFyeSh0eXBlOiBhbnkpOiBjcGwuQ29tcGlsZVR5cGVTdW1tYXJ5IHtcbiAgICByZXR1cm4ge1xuICAgICAgc3VtbWFyeUtpbmQ6IGNwbC5Db21waWxlU3VtbWFyeUtpbmQuSW5qZWN0YWJsZSxcbiAgICAgIHR5cGU6IHRoaXMuX2dldFR5cGVNZXRhZGF0YSh0eXBlLCBudWxsLCBmYWxzZSlcbiAgICB9O1xuICB9XG5cbiAgZ2V0SW5qZWN0YWJsZU1ldGFkYXRhKFxuICAgICAgdHlwZTogYW55LCBkZXBlbmRlbmNpZXM6IGFueVtdfG51bGwgPSBudWxsLFxuICAgICAgdGhyb3dPblVua25vd25EZXBzOiBib29sZWFuID0gdHJ1ZSk6IGNwbC5Db21waWxlSW5qZWN0YWJsZU1ldGFkYXRhfG51bGwge1xuICAgIGNvbnN0IHR5cGVTdW1tYXJ5ID0gdGhpcy5fbG9hZFN1bW1hcnkodHlwZSwgY3BsLkNvbXBpbGVTdW1tYXJ5S2luZC5JbmplY3RhYmxlKTtcbiAgICBjb25zdCB0eXBlTWV0YWRhdGEgPSB0eXBlU3VtbWFyeSA/XG4gICAgICAgIHR5cGVTdW1tYXJ5LnR5cGUgOlxuICAgICAgICB0aGlzLl9nZXRUeXBlTWV0YWRhdGEodHlwZSwgZGVwZW5kZW5jaWVzLCB0aHJvd09uVW5rbm93bkRlcHMpO1xuXG4gICAgY29uc3QgYW5ub3RhdGlvbnM6IEluamVjdGFibGVbXSA9XG4gICAgICAgIHRoaXMuX3JlZmxlY3Rvci5hbm5vdGF0aW9ucyh0eXBlKS5maWx0ZXIoYW5uID0+IGNyZWF0ZUluamVjdGFibGUuaXNUeXBlT2YoYW5uKSk7XG5cbiAgICBpZiAoYW5ub3RhdGlvbnMubGVuZ3RoID09PSAwKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICBjb25zdCBtZXRhID0gYW5ub3RhdGlvbnNbYW5ub3RhdGlvbnMubGVuZ3RoIC0gMV07XG4gICAgcmV0dXJuIHtcbiAgICAgIHN5bWJvbDogdHlwZSxcbiAgICAgIHR5cGU6IHR5cGVNZXRhZGF0YSxcbiAgICAgIHByb3ZpZGVkSW46IG1ldGEucHJvdmlkZWRJbixcbiAgICAgIHVzZVZhbHVlOiBtZXRhLnVzZVZhbHVlLFxuICAgICAgdXNlQ2xhc3M6IG1ldGEudXNlQ2xhc3MsXG4gICAgICB1c2VFeGlzdGluZzogbWV0YS51c2VFeGlzdGluZyxcbiAgICAgIHVzZUZhY3Rvcnk6IG1ldGEudXNlRmFjdG9yeSxcbiAgICAgIGRlcHM6IG1ldGEuZGVwcyxcbiAgICB9O1xuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0VHlwZU1ldGFkYXRhKHR5cGU6IFR5cGUsIGRlcGVuZGVuY2llczogYW55W118bnVsbCA9IG51bGwsIHRocm93T25Vbmtub3duRGVwcyA9IHRydWUpOlxuICAgICAgY3BsLkNvbXBpbGVUeXBlTWV0YWRhdGEge1xuICAgIGNvbnN0IGlkZW50aWZpZXIgPSB0aGlzLl9nZXRJZGVudGlmaWVyTWV0YWRhdGEodHlwZSk7XG4gICAgcmV0dXJuIHtcbiAgICAgIHJlZmVyZW5jZTogaWRlbnRpZmllci5yZWZlcmVuY2UsXG4gICAgICBkaURlcHM6IHRoaXMuX2dldERlcGVuZGVuY2llc01ldGFkYXRhKGlkZW50aWZpZXIucmVmZXJlbmNlLCBkZXBlbmRlbmNpZXMsIHRocm93T25Vbmtub3duRGVwcyksXG4gICAgICBsaWZlY3ljbGVIb29rczogZ2V0QWxsTGlmZWN5Y2xlSG9va3ModGhpcy5fcmVmbGVjdG9yLCBpZGVudGlmaWVyLnJlZmVyZW5jZSksXG4gICAgfTtcbiAgfVxuXG4gIHByaXZhdGUgX2dldEZhY3RvcnlNZXRhZGF0YShmYWN0b3J5OiBGdW5jdGlvbiwgZGVwZW5kZW5jaWVzOiBhbnlbXXxudWxsID0gbnVsbCk6XG4gICAgICBjcGwuQ29tcGlsZUZhY3RvcnlNZXRhZGF0YSB7XG4gICAgZmFjdG9yeSA9IHJlc29sdmVGb3J3YXJkUmVmKGZhY3RvcnkpO1xuICAgIHJldHVybiB7cmVmZXJlbmNlOiBmYWN0b3J5LCBkaURlcHM6IHRoaXMuX2dldERlcGVuZGVuY2llc01ldGFkYXRhKGZhY3RvcnksIGRlcGVuZGVuY2llcyl9O1xuICB9XG5cbiAgLyoqXG4gICAqIEdldHMgdGhlIG1ldGFkYXRhIGZvciB0aGUgZ2l2ZW4gcGlwZS5cbiAgICogVGhpcyBhc3N1bWVzIGBsb2FkTmdNb2R1bGVEaXJlY3RpdmVBbmRQaXBlTWV0YWRhdGFgIGhhcyBiZWVuIGNhbGxlZCBmaXJzdC5cbiAgICovXG4gIGdldFBpcGVNZXRhZGF0YShwaXBlVHlwZTogYW55KTogY3BsLkNvbXBpbGVQaXBlTWV0YWRhdGF8bnVsbCB7XG4gICAgY29uc3QgcGlwZU1ldGEgPSB0aGlzLl9waXBlQ2FjaGUuZ2V0KHBpcGVUeXBlKTtcbiAgICBpZiAoIXBpcGVNZXRhKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICBzeW50YXhFcnJvcihcbiAgICAgICAgICAgICAgYElsbGVnYWwgc3RhdGU6IGdldFBpcGVNZXRhZGF0YSBjYW4gb25seSBiZSBjYWxsZWQgYWZ0ZXIgbG9hZE5nTW9kdWxlRGlyZWN0aXZlQW5kUGlwZU1ldGFkYXRhIGZvciBhIG1vZHVsZSB0aGF0IGRlY2xhcmVzIGl0LiBQaXBlICR7XG4gICAgICAgICAgICAgICAgICBzdHJpbmdpZnlUeXBlKHBpcGVUeXBlKX0uYCksXG4gICAgICAgICAgcGlwZVR5cGUpO1xuICAgIH1cbiAgICByZXR1cm4gcGlwZU1ldGEgfHwgbnVsbDtcbiAgfVxuXG4gIGdldFBpcGVTdW1tYXJ5KHBpcGVUeXBlOiBhbnkpOiBjcGwuQ29tcGlsZVBpcGVTdW1tYXJ5IHtcbiAgICBjb25zdCBwaXBlU3VtbWFyeSA9XG4gICAgICAgIDxjcGwuQ29tcGlsZVBpcGVTdW1tYXJ5PnRoaXMuX2xvYWRTdW1tYXJ5KHBpcGVUeXBlLCBjcGwuQ29tcGlsZVN1bW1hcnlLaW5kLlBpcGUpO1xuICAgIGlmICghcGlwZVN1bW1hcnkpIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgIHN5bnRheEVycm9yKFxuICAgICAgICAgICAgICBgSWxsZWdhbCBzdGF0ZTogQ291bGQgbm90IGxvYWQgdGhlIHN1bW1hcnkgZm9yIHBpcGUgJHtzdHJpbmdpZnlUeXBlKHBpcGVUeXBlKX0uYCksXG4gICAgICAgICAgcGlwZVR5cGUpO1xuICAgIH1cbiAgICByZXR1cm4gcGlwZVN1bW1hcnk7XG4gIH1cblxuICBnZXRPckxvYWRQaXBlTWV0YWRhdGEocGlwZVR5cGU6IGFueSk6IGNwbC5Db21waWxlUGlwZU1ldGFkYXRhIHtcbiAgICBsZXQgcGlwZU1ldGEgPSB0aGlzLl9waXBlQ2FjaGUuZ2V0KHBpcGVUeXBlKTtcbiAgICBpZiAoIXBpcGVNZXRhKSB7XG4gICAgICBwaXBlTWV0YSA9IHRoaXMuX2xvYWRQaXBlTWV0YWRhdGEocGlwZVR5cGUpO1xuICAgIH1cbiAgICByZXR1cm4gcGlwZU1ldGE7XG4gIH1cblxuICBwcml2YXRlIF9sb2FkUGlwZU1ldGFkYXRhKHBpcGVUeXBlOiBhbnkpOiBjcGwuQ29tcGlsZVBpcGVNZXRhZGF0YSB7XG4gICAgcGlwZVR5cGUgPSByZXNvbHZlRm9yd2FyZFJlZihwaXBlVHlwZSk7XG4gICAgY29uc3QgcGlwZUFubm90YXRpb24gPSB0aGlzLl9waXBlUmVzb2x2ZXIucmVzb2x2ZShwaXBlVHlwZSkhO1xuXG4gICAgY29uc3QgcGlwZU1ldGEgPSBuZXcgY3BsLkNvbXBpbGVQaXBlTWV0YWRhdGEoe1xuICAgICAgdHlwZTogdGhpcy5fZ2V0VHlwZU1ldGFkYXRhKHBpcGVUeXBlKSxcbiAgICAgIG5hbWU6IHBpcGVBbm5vdGF0aW9uLm5hbWUsXG4gICAgICBwdXJlOiAhIXBpcGVBbm5vdGF0aW9uLnB1cmVcbiAgICB9KTtcbiAgICB0aGlzLl9waXBlQ2FjaGUuc2V0KHBpcGVUeXBlLCBwaXBlTWV0YSk7XG4gICAgdGhpcy5fc3VtbWFyeUNhY2hlLnNldChwaXBlVHlwZSwgcGlwZU1ldGEudG9TdW1tYXJ5KCkpO1xuICAgIHJldHVybiBwaXBlTWV0YTtcbiAgfVxuXG4gIHByaXZhdGUgX2dldERlcGVuZGVuY2llc01ldGFkYXRhKFxuICAgICAgdHlwZU9yRnVuYzogVHlwZXxGdW5jdGlvbiwgZGVwZW5kZW5jaWVzOiBhbnlbXXxudWxsLFxuICAgICAgdGhyb3dPblVua25vd25EZXBzID0gdHJ1ZSk6IGNwbC5Db21waWxlRGlEZXBlbmRlbmN5TWV0YWRhdGFbXSB7XG4gICAgbGV0IGhhc1Vua25vd25EZXBzID0gZmFsc2U7XG4gICAgY29uc3QgcGFyYW1zID0gZGVwZW5kZW5jaWVzIHx8IHRoaXMuX3JlZmxlY3Rvci5wYXJhbWV0ZXJzKHR5cGVPckZ1bmMpIHx8IFtdO1xuXG4gICAgY29uc3QgZGVwZW5kZW5jaWVzTWV0YWRhdGE6IGNwbC5Db21waWxlRGlEZXBlbmRlbmN5TWV0YWRhdGFbXSA9IHBhcmFtcy5tYXAoKHBhcmFtKSA9PiB7XG4gICAgICBsZXQgaXNBdHRyaWJ1dGUgPSBmYWxzZTtcbiAgICAgIGxldCBpc0hvc3QgPSBmYWxzZTtcbiAgICAgIGxldCBpc1NlbGYgPSBmYWxzZTtcbiAgICAgIGxldCBpc1NraXBTZWxmID0gZmFsc2U7XG4gICAgICBsZXQgaXNPcHRpb25hbCA9IGZhbHNlO1xuICAgICAgbGV0IHRva2VuOiBhbnkgPSBudWxsO1xuICAgICAgaWYgKEFycmF5LmlzQXJyYXkocGFyYW0pKSB7XG4gICAgICAgIHBhcmFtLmZvckVhY2goKHBhcmFtRW50cnk6IGFueSkgPT4ge1xuICAgICAgICAgIGlmIChjcmVhdGVIb3N0LmlzVHlwZU9mKHBhcmFtRW50cnkpKSB7XG4gICAgICAgICAgICBpc0hvc3QgPSB0cnVlO1xuICAgICAgICAgIH0gZWxzZSBpZiAoY3JlYXRlU2VsZi5pc1R5cGVPZihwYXJhbUVudHJ5KSkge1xuICAgICAgICAgICAgaXNTZWxmID0gdHJ1ZTtcbiAgICAgICAgICB9IGVsc2UgaWYgKGNyZWF0ZVNraXBTZWxmLmlzVHlwZU9mKHBhcmFtRW50cnkpKSB7XG4gICAgICAgICAgICBpc1NraXBTZWxmID0gdHJ1ZTtcbiAgICAgICAgICB9IGVsc2UgaWYgKGNyZWF0ZU9wdGlvbmFsLmlzVHlwZU9mKHBhcmFtRW50cnkpKSB7XG4gICAgICAgICAgICBpc09wdGlvbmFsID0gdHJ1ZTtcbiAgICAgICAgICB9IGVsc2UgaWYgKGNyZWF0ZUF0dHJpYnV0ZS5pc1R5cGVPZihwYXJhbUVudHJ5KSkge1xuICAgICAgICAgICAgaXNBdHRyaWJ1dGUgPSB0cnVlO1xuICAgICAgICAgICAgdG9rZW4gPSAocGFyYW1FbnRyeSBhcyBhbnkpLmF0dHJpYnV0ZU5hbWU7XG4gICAgICAgICAgfSBlbHNlIGlmIChjcmVhdGVJbmplY3QuaXNUeXBlT2YocGFyYW1FbnRyeSkpIHtcbiAgICAgICAgICAgIHRva2VuID0gKHBhcmFtRW50cnkgYXMgYW55KS50b2tlbjtcbiAgICAgICAgICB9IGVsc2UgaWYgKFxuICAgICAgICAgICAgICBjcmVhdGVJbmplY3Rpb25Ub2tlbi5pc1R5cGVPZihwYXJhbUVudHJ5KSB8fFxuICAgICAgICAgICAgICAocGFyYW1FbnRyeSBhcyBhbnkpIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB7XG4gICAgICAgICAgICB0b2tlbiA9IHBhcmFtRW50cnk7XG4gICAgICAgICAgfSBlbHNlIGlmIChpc1ZhbGlkVHlwZShwYXJhbUVudHJ5KSAmJiB0b2tlbiA9PSBudWxsKSB7XG4gICAgICAgICAgICB0b2tlbiA9IHBhcmFtRW50cnk7XG4gICAgICAgICAgfVxuICAgICAgICB9KTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHRva2VuID0gcGFyYW07XG4gICAgICB9XG4gICAgICBpZiAodG9rZW4gPT0gbnVsbCkge1xuICAgICAgICBoYXNVbmtub3duRGVwcyA9IHRydWU7XG4gICAgICAgIHJldHVybiB7fTtcbiAgICAgIH1cblxuICAgICAgcmV0dXJuIHtcbiAgICAgICAgaXNBdHRyaWJ1dGUsXG4gICAgICAgIGlzSG9zdCxcbiAgICAgICAgaXNTZWxmLFxuICAgICAgICBpc1NraXBTZWxmLFxuICAgICAgICBpc09wdGlvbmFsLFxuICAgICAgICB0b2tlbjogdGhpcy5fZ2V0VG9rZW5NZXRhZGF0YSh0b2tlbilcbiAgICAgIH07XG4gICAgfSk7XG5cbiAgICBpZiAoaGFzVW5rbm93bkRlcHMpIHtcbiAgICAgIGNvbnN0IGRlcHNUb2tlbnMgPVxuICAgICAgICAgIGRlcGVuZGVuY2llc01ldGFkYXRhLm1hcCgoZGVwKSA9PiBkZXAudG9rZW4gPyBzdHJpbmdpZnlUeXBlKGRlcC50b2tlbikgOiAnPycpLmpvaW4oJywgJyk7XG4gICAgICBjb25zdCBtZXNzYWdlID1cbiAgICAgICAgICBgQ2FuJ3QgcmVzb2x2ZSBhbGwgcGFyYW1ldGVycyBmb3IgJHtzdHJpbmdpZnlUeXBlKHR5cGVPckZ1bmMpfTogKCR7ZGVwc1Rva2Vuc30pLmA7XG4gICAgICBpZiAodGhyb3dPblVua25vd25EZXBzIHx8IHRoaXMuX2NvbmZpZy5zdHJpY3RJbmplY3Rpb25QYXJhbWV0ZXJzKSB7XG4gICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKHN5bnRheEVycm9yKG1lc3NhZ2UpLCB0eXBlT3JGdW5jKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gZGVwZW5kZW5jaWVzTWV0YWRhdGE7XG4gIH1cblxuICBwcml2YXRlIF9nZXRUb2tlbk1ldGFkYXRhKHRva2VuOiBhbnkpOiBjcGwuQ29tcGlsZVRva2VuTWV0YWRhdGEge1xuICAgIHRva2VuID0gcmVzb2x2ZUZvcndhcmRSZWYodG9rZW4pO1xuICAgIGxldCBjb21waWxlVG9rZW46IGNwbC5Db21waWxlVG9rZW5NZXRhZGF0YTtcbiAgICBpZiAodHlwZW9mIHRva2VuID09PSAnc3RyaW5nJykge1xuICAgICAgY29tcGlsZVRva2VuID0ge3ZhbHVlOiB0b2tlbn07XG4gICAgfSBlbHNlIHtcbiAgICAgIGNvbXBpbGVUb2tlbiA9IHtpZGVudGlmaWVyOiB7cmVmZXJlbmNlOiB0b2tlbn19O1xuICAgIH1cbiAgICByZXR1cm4gY29tcGlsZVRva2VuO1xuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0UHJvdmlkZXJzTWV0YWRhdGEoXG4gICAgICBwcm92aWRlcnM6IFByb3ZpZGVyW10sIHRhcmdldEVudHJ5Q29tcG9uZW50czogY3BsLkNvbXBpbGVFbnRyeUNvbXBvbmVudE1ldGFkYXRhW10sXG4gICAgICBkZWJ1Z0luZm8/OiBzdHJpbmcsIGNvbXBpbGVQcm92aWRlcnM6IGNwbC5Db21waWxlUHJvdmlkZXJNZXRhZGF0YVtdID0gW10sXG4gICAgICB0eXBlPzogYW55KTogY3BsLkNvbXBpbGVQcm92aWRlck1ldGFkYXRhW10ge1xuICAgIHByb3ZpZGVycy5mb3JFYWNoKChwcm92aWRlcjogYW55LCBwcm92aWRlcklkeDogbnVtYmVyKSA9PiB7XG4gICAgICBpZiAoQXJyYXkuaXNBcnJheShwcm92aWRlcikpIHtcbiAgICAgICAgdGhpcy5fZ2V0UHJvdmlkZXJzTWV0YWRhdGEocHJvdmlkZXIsIHRhcmdldEVudHJ5Q29tcG9uZW50cywgZGVidWdJbmZvLCBjb21waWxlUHJvdmlkZXJzKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHByb3ZpZGVyID0gcmVzb2x2ZUZvcndhcmRSZWYocHJvdmlkZXIpO1xuICAgICAgICBsZXQgcHJvdmlkZXJNZXRhOiBjcGwuUHJvdmlkZXJNZXRhID0gdW5kZWZpbmVkITtcbiAgICAgICAgaWYgKHByb3ZpZGVyICYmIHR5cGVvZiBwcm92aWRlciA9PT0gJ29iamVjdCcgJiYgcHJvdmlkZXIuaGFzT3duUHJvcGVydHkoJ3Byb3ZpZGUnKSkge1xuICAgICAgICAgIHRoaXMuX3ZhbGlkYXRlUHJvdmlkZXIocHJvdmlkZXIpO1xuICAgICAgICAgIHByb3ZpZGVyTWV0YSA9IG5ldyBjcGwuUHJvdmlkZXJNZXRhKHByb3ZpZGVyLnByb3ZpZGUsIHByb3ZpZGVyKTtcbiAgICAgICAgfSBlbHNlIGlmIChpc1ZhbGlkVHlwZShwcm92aWRlcikpIHtcbiAgICAgICAgICBwcm92aWRlck1ldGEgPSBuZXcgY3BsLlByb3ZpZGVyTWV0YShwcm92aWRlciwge3VzZUNsYXNzOiBwcm92aWRlcn0pO1xuICAgICAgICB9IGVsc2UgaWYgKHByb3ZpZGVyID09PSB2b2lkIDApIHtcbiAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihzeW50YXhFcnJvcihcbiAgICAgICAgICAgICAgYEVuY291bnRlcmVkIHVuZGVmaW5lZCBwcm92aWRlciEgVXN1YWxseSB0aGlzIG1lYW5zIHlvdSBoYXZlIGEgY2lyY3VsYXIgZGVwZW5kZW5jaWVzLiBUaGlzIG1pZ2h0IGJlIGNhdXNlZCBieSB1c2luZyAnYmFycmVsJyBpbmRleC50cyBmaWxlcy5gKSk7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIGNvbnN0IHByb3ZpZGVyc0luZm8gPVxuICAgICAgICAgICAgICBwcm92aWRlcnNcbiAgICAgICAgICAgICAgICAgIC5yZWR1Y2UoXG4gICAgICAgICAgICAgICAgICAgICAgKHNvRmFyOiBzdHJpbmdbXSwgc2VlblByb3ZpZGVyOiBhbnksIHNlZW5Qcm92aWRlcklkeDogbnVtYmVyKSA9PiB7XG4gICAgICAgICAgICAgICAgICAgICAgICBpZiAoc2VlblByb3ZpZGVySWR4IDwgcHJvdmlkZXJJZHgpIHtcbiAgICAgICAgICAgICAgICAgICAgICAgICAgc29GYXIucHVzaChgJHtzdHJpbmdpZnlUeXBlKHNlZW5Qcm92aWRlcil9YCk7XG4gICAgICAgICAgICAgICAgICAgICAgICB9IGVsc2UgaWYgKHNlZW5Qcm92aWRlcklkeCA9PSBwcm92aWRlcklkeCkge1xuICAgICAgICAgICAgICAgICAgICAgICAgICBzb0Zhci5wdXNoKGA/JHtzdHJpbmdpZnlUeXBlKHNlZW5Qcm92aWRlcil9P2ApO1xuICAgICAgICAgICAgICAgICAgICAgICAgfSBlbHNlIGlmIChzZWVuUHJvdmlkZXJJZHggPT0gcHJvdmlkZXJJZHggKyAxKSB7XG4gICAgICAgICAgICAgICAgICAgICAgICAgIHNvRmFyLnB1c2goJy4uLicpO1xuICAgICAgICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHNvRmFyO1xuICAgICAgICAgICAgICAgICAgICAgIH0sXG4gICAgICAgICAgICAgICAgICAgICAgW10pXG4gICAgICAgICAgICAgICAgICAuam9pbignLCAnKTtcbiAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICAgc3ludGF4RXJyb3IoYEludmFsaWQgJHtcbiAgICAgICAgICAgICAgICAgIGRlYnVnSW5mbyA/XG4gICAgICAgICAgICAgICAgICAgICAgZGVidWdJbmZvIDpcbiAgICAgICAgICAgICAgICAgICAgICAncHJvdmlkZXInfSAtIG9ubHkgaW5zdGFuY2VzIG9mIFByb3ZpZGVyIGFuZCBUeXBlIGFyZSBhbGxvd2VkLCBnb3Q6IFske1xuICAgICAgICAgICAgICAgICAgcHJvdmlkZXJzSW5mb31dYCksXG4gICAgICAgICAgICAgIHR5cGUpO1xuICAgICAgICAgIHJldHVybjtcbiAgICAgICAgfVxuICAgICAgICBpZiAocHJvdmlkZXJNZXRhLnRva2VuID09PVxuICAgICAgICAgICAgdGhpcy5fcmVmbGVjdG9yLnJlc29sdmVFeHRlcm5hbFJlZmVyZW5jZShJZGVudGlmaWVycy5BTkFMWVpFX0ZPUl9FTlRSWV9DT01QT05FTlRTKSkge1xuICAgICAgICAgIHRhcmdldEVudHJ5Q29tcG9uZW50cy5wdXNoKC4uLnRoaXMuX2dldEVudHJ5Q29tcG9uZW50c0Zyb21Qcm92aWRlcihwcm92aWRlck1ldGEsIHR5cGUpKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICBjb21waWxlUHJvdmlkZXJzLnB1c2godGhpcy5nZXRQcm92aWRlck1ldGFkYXRhKHByb3ZpZGVyTWV0YSkpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfSk7XG4gICAgcmV0dXJuIGNvbXBpbGVQcm92aWRlcnM7XG4gIH1cblxuICBwcml2YXRlIF92YWxpZGF0ZVByb3ZpZGVyKHByb3ZpZGVyOiBhbnkpOiB2b2lkIHtcbiAgICBpZiAocHJvdmlkZXIuaGFzT3duUHJvcGVydHkoJ3VzZUNsYXNzJykgJiYgcHJvdmlkZXIudXNlQ2xhc3MgPT0gbnVsbCkge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3Ioc3ludGF4RXJyb3IoYEludmFsaWQgcHJvdmlkZXIgZm9yICR7XG4gICAgICAgICAgc3RyaW5naWZ5VHlwZShwcm92aWRlci5wcm92aWRlKX0uIHVzZUNsYXNzIGNhbm5vdCBiZSAke3Byb3ZpZGVyLnVzZUNsYXNzfS5cbiAgICAgICAgICAgVXN1YWxseSBpdCBoYXBwZW5zIHdoZW46XG4gICAgICAgICAgIDEuIFRoZXJlJ3MgYSBjaXJjdWxhciBkZXBlbmRlbmN5IChtaWdodCBiZSBjYXVzZWQgYnkgdXNpbmcgaW5kZXgudHMgKGJhcnJlbCkgZmlsZXMpLlxuICAgICAgICAgICAyLiBDbGFzcyB3YXMgdXNlZCBiZWZvcmUgaXQgd2FzIGRlY2xhcmVkLiBVc2UgZm9yd2FyZFJlZiBpbiB0aGlzIGNhc2UuYCkpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX2dldEVudHJ5Q29tcG9uZW50c0Zyb21Qcm92aWRlcihwcm92aWRlcjogY3BsLlByb3ZpZGVyTWV0YSwgdHlwZT86IGFueSk6XG4gICAgICBjcGwuQ29tcGlsZUVudHJ5Q29tcG9uZW50TWV0YWRhdGFbXSB7XG4gICAgY29uc3QgY29tcG9uZW50czogY3BsLkNvbXBpbGVFbnRyeUNvbXBvbmVudE1ldGFkYXRhW10gPSBbXTtcbiAgICBjb25zdCBjb2xsZWN0ZWRJZGVudGlmaWVyczogY3BsLkNvbXBpbGVJZGVudGlmaWVyTWV0YWRhdGFbXSA9IFtdO1xuXG4gICAgaWYgKHByb3ZpZGVyLnVzZUZhY3RvcnkgfHwgcHJvdmlkZXIudXNlRXhpc3RpbmcgfHwgcHJvdmlkZXIudXNlQ2xhc3MpIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgIHN5bnRheEVycm9yKGBUaGUgQU5BTFlaRV9GT1JfRU5UUllfQ09NUE9ORU5UUyB0b2tlbiBvbmx5IHN1cHBvcnRzIHVzZVZhbHVlIWApLCB0eXBlKTtcbiAgICAgIHJldHVybiBbXTtcbiAgICB9XG5cbiAgICBpZiAoIXByb3ZpZGVyLm11bHRpKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICBzeW50YXhFcnJvcihgVGhlIEFOQUxZWkVfRk9SX0VOVFJZX0NPTVBPTkVOVFMgdG9rZW4gb25seSBzdXBwb3J0cyAnbXVsdGkgPSB0cnVlJyFgKSxcbiAgICAgICAgICB0eXBlKTtcbiAgICAgIHJldHVybiBbXTtcbiAgICB9XG5cbiAgICBleHRyYWN0SWRlbnRpZmllcnMocHJvdmlkZXIudXNlVmFsdWUsIGNvbGxlY3RlZElkZW50aWZpZXJzKTtcbiAgICBjb2xsZWN0ZWRJZGVudGlmaWVycy5mb3JFYWNoKChpZGVudGlmaWVyKSA9PiB7XG4gICAgICBjb25zdCBlbnRyeSA9IHRoaXMuX2dldEVudHJ5Q29tcG9uZW50TWV0YWRhdGEoaWRlbnRpZmllci5yZWZlcmVuY2UsIGZhbHNlKTtcbiAgICAgIGlmIChlbnRyeSkge1xuICAgICAgICBjb21wb25lbnRzLnB1c2goZW50cnkpO1xuICAgICAgfVxuICAgIH0pO1xuICAgIHJldHVybiBjb21wb25lbnRzO1xuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0RW50cnlDb21wb25lbnRNZXRhZGF0YShkaXJUeXBlOiBhbnksIHRocm93SWZOb3RGb3VuZCA9IHRydWUpOlxuICAgICAgY3BsLkNvbXBpbGVFbnRyeUNvbXBvbmVudE1ldGFkYXRhfG51bGwge1xuICAgIGNvbnN0IGRpck1ldGEgPSB0aGlzLmdldE5vbk5vcm1hbGl6ZWREaXJlY3RpdmVNZXRhZGF0YShkaXJUeXBlKTtcbiAgICBpZiAoZGlyTWV0YSAmJiBkaXJNZXRhLm1ldGFkYXRhLmlzQ29tcG9uZW50KSB7XG4gICAgICByZXR1cm4ge2NvbXBvbmVudFR5cGU6IGRpclR5cGUsIGNvbXBvbmVudEZhY3Rvcnk6IGRpck1ldGEubWV0YWRhdGEuY29tcG9uZW50RmFjdG9yeSF9O1xuICAgIH1cbiAgICBjb25zdCBkaXJTdW1tYXJ5ID1cbiAgICAgICAgPGNwbC5Db21waWxlRGlyZWN0aXZlU3VtbWFyeT50aGlzLl9sb2FkU3VtbWFyeShkaXJUeXBlLCBjcGwuQ29tcGlsZVN1bW1hcnlLaW5kLkRpcmVjdGl2ZSk7XG4gICAgaWYgKGRpclN1bW1hcnkgJiYgZGlyU3VtbWFyeS5pc0NvbXBvbmVudCkge1xuICAgICAgcmV0dXJuIHtjb21wb25lbnRUeXBlOiBkaXJUeXBlLCBjb21wb25lbnRGYWN0b3J5OiBkaXJTdW1tYXJ5LmNvbXBvbmVudEZhY3RvcnkhfTtcbiAgICB9XG4gICAgaWYgKHRocm93SWZOb3RGb3VuZCkge1xuICAgICAgdGhyb3cgc3ludGF4RXJyb3IoYCR7ZGlyVHlwZS5uYW1lfSBjYW5ub3QgYmUgdXNlZCBhcyBhbiBlbnRyeSBjb21wb25lbnQuYCk7XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0SW5qZWN0YWJsZVR5cGVNZXRhZGF0YSh0eXBlOiBUeXBlLCBkZXBlbmRlbmNpZXM6IGFueVtdfG51bGwgPSBudWxsKTpcbiAgICAgIGNwbC5Db21waWxlVHlwZU1ldGFkYXRhIHtcbiAgICBjb25zdCB0eXBlU3VtbWFyeSA9IHRoaXMuX2xvYWRTdW1tYXJ5KHR5cGUsIGNwbC5Db21waWxlU3VtbWFyeUtpbmQuSW5qZWN0YWJsZSk7XG4gICAgaWYgKHR5cGVTdW1tYXJ5KSB7XG4gICAgICByZXR1cm4gdHlwZVN1bW1hcnkudHlwZTtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMuX2dldFR5cGVNZXRhZGF0YSh0eXBlLCBkZXBlbmRlbmNpZXMpO1xuICB9XG5cbiAgZ2V0UHJvdmlkZXJNZXRhZGF0YShwcm92aWRlcjogY3BsLlByb3ZpZGVyTWV0YSk6IGNwbC5Db21waWxlUHJvdmlkZXJNZXRhZGF0YSB7XG4gICAgbGV0IGNvbXBpbGVEZXBzOiBjcGwuQ29tcGlsZURpRGVwZW5kZW5jeU1ldGFkYXRhW10gPSB1bmRlZmluZWQhO1xuICAgIGxldCBjb21waWxlVHlwZU1ldGFkYXRhOiBjcGwuQ29tcGlsZVR5cGVNZXRhZGF0YSA9IG51bGwhO1xuICAgIGxldCBjb21waWxlRmFjdG9yeU1ldGFkYXRhOiBjcGwuQ29tcGlsZUZhY3RvcnlNZXRhZGF0YSA9IG51bGwhO1xuICAgIGxldCB0b2tlbjogY3BsLkNvbXBpbGVUb2tlbk1ldGFkYXRhID0gdGhpcy5fZ2V0VG9rZW5NZXRhZGF0YShwcm92aWRlci50b2tlbik7XG5cbiAgICBpZiAocHJvdmlkZXIudXNlQ2xhc3MpIHtcbiAgICAgIGNvbXBpbGVUeXBlTWV0YWRhdGEgPVxuICAgICAgICAgIHRoaXMuX2dldEluamVjdGFibGVUeXBlTWV0YWRhdGEocHJvdmlkZXIudXNlQ2xhc3MsIHByb3ZpZGVyLmRlcGVuZGVuY2llcyk7XG4gICAgICBjb21waWxlRGVwcyA9IGNvbXBpbGVUeXBlTWV0YWRhdGEuZGlEZXBzO1xuICAgICAgaWYgKHByb3ZpZGVyLnRva2VuID09PSBwcm92aWRlci51c2VDbGFzcykge1xuICAgICAgICAvLyB1c2UgdGhlIGNvbXBpbGVUeXBlTWV0YWRhdGEgYXMgaXQgY29udGFpbnMgaW5mb3JtYXRpb24gYWJvdXQgbGlmZWN5Y2xlSG9va3MuLi5cbiAgICAgICAgdG9rZW4gPSB7aWRlbnRpZmllcjogY29tcGlsZVR5cGVNZXRhZGF0YX07XG4gICAgICB9XG4gICAgfSBlbHNlIGlmIChwcm92aWRlci51c2VGYWN0b3J5KSB7XG4gICAgICBjb21waWxlRmFjdG9yeU1ldGFkYXRhID0gdGhpcy5fZ2V0RmFjdG9yeU1ldGFkYXRhKHByb3ZpZGVyLnVzZUZhY3RvcnksIHByb3ZpZGVyLmRlcGVuZGVuY2llcyk7XG4gICAgICBjb21waWxlRGVwcyA9IGNvbXBpbGVGYWN0b3J5TWV0YWRhdGEuZGlEZXBzO1xuICAgIH1cblxuICAgIHJldHVybiB7XG4gICAgICB0b2tlbjogdG9rZW4sXG4gICAgICB1c2VDbGFzczogY29tcGlsZVR5cGVNZXRhZGF0YSxcbiAgICAgIHVzZVZhbHVlOiBwcm92aWRlci51c2VWYWx1ZSxcbiAgICAgIHVzZUZhY3Rvcnk6IGNvbXBpbGVGYWN0b3J5TWV0YWRhdGEsXG4gICAgICB1c2VFeGlzdGluZzogcHJvdmlkZXIudXNlRXhpc3RpbmcgPyB0aGlzLl9nZXRUb2tlbk1ldGFkYXRhKHByb3ZpZGVyLnVzZUV4aXN0aW5nKSA6IHVuZGVmaW5lZCxcbiAgICAgIGRlcHM6IGNvbXBpbGVEZXBzLFxuICAgICAgbXVsdGk6IHByb3ZpZGVyLm11bHRpXG4gICAgfTtcbiAgfVxuXG4gIHByaXZhdGUgX2dldFF1ZXJpZXNNZXRhZGF0YShcbiAgICAgIHF1ZXJpZXM6IHtba2V5OiBzdHJpbmddOiBRdWVyeX0sIGlzVmlld1F1ZXJ5OiBib29sZWFuLFxuICAgICAgZGlyZWN0aXZlVHlwZTogVHlwZSk6IGNwbC5Db21waWxlUXVlcnlNZXRhZGF0YVtdIHtcbiAgICBjb25zdCByZXM6IGNwbC5Db21waWxlUXVlcnlNZXRhZGF0YVtdID0gW107XG5cbiAgICBPYmplY3Qua2V5cyhxdWVyaWVzKS5mb3JFYWNoKChwcm9wZXJ0eU5hbWU6IHN0cmluZykgPT4ge1xuICAgICAgY29uc3QgcXVlcnkgPSBxdWVyaWVzW3Byb3BlcnR5TmFtZV07XG4gICAgICBpZiAocXVlcnkuaXNWaWV3UXVlcnkgPT09IGlzVmlld1F1ZXJ5KSB7XG4gICAgICAgIHJlcy5wdXNoKHRoaXMuX2dldFF1ZXJ5TWV0YWRhdGEocXVlcnksIHByb3BlcnR5TmFtZSwgZGlyZWN0aXZlVHlwZSkpO1xuICAgICAgfVxuICAgIH0pO1xuXG4gICAgcmV0dXJuIHJlcztcbiAgfVxuXG4gIHByaXZhdGUgX3F1ZXJ5VmFyQmluZGluZ3Moc2VsZWN0b3I6IGFueSk6IHN0cmluZ1tdIHtcbiAgICByZXR1cm4gc2VsZWN0b3Iuc3BsaXQoL1xccyosXFxzKi8pO1xuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0UXVlcnlNZXRhZGF0YShxOiBRdWVyeSwgcHJvcGVydHlOYW1lOiBzdHJpbmcsIHR5cGVPckZ1bmM6IFR5cGV8RnVuY3Rpb24pOlxuICAgICAgY3BsLkNvbXBpbGVRdWVyeU1ldGFkYXRhIHtcbiAgICBsZXQgc2VsZWN0b3JzOiBjcGwuQ29tcGlsZVRva2VuTWV0YWRhdGFbXTtcbiAgICBpZiAodHlwZW9mIHEuc2VsZWN0b3IgPT09ICdzdHJpbmcnKSB7XG4gICAgICBzZWxlY3RvcnMgPVxuICAgICAgICAgIHRoaXMuX3F1ZXJ5VmFyQmluZGluZ3MocS5zZWxlY3RvcikubWFwKHZhck5hbWUgPT4gdGhpcy5fZ2V0VG9rZW5NZXRhZGF0YSh2YXJOYW1lKSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIGlmICghcS5zZWxlY3Rvcikge1xuICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgIHN5bnRheEVycm9yKGBDYW4ndCBjb25zdHJ1Y3QgYSBxdWVyeSBmb3IgdGhlIHByb3BlcnR5IFwiJHtwcm9wZXJ0eU5hbWV9XCIgb2YgXCIke1xuICAgICAgICAgICAgICAgIHN0cmluZ2lmeVR5cGUodHlwZU9yRnVuYyl9XCIgc2luY2UgdGhlIHF1ZXJ5IHNlbGVjdG9yIHdhc24ndCBkZWZpbmVkLmApLFxuICAgICAgICAgICAgdHlwZU9yRnVuYyk7XG4gICAgICAgIHNlbGVjdG9ycyA9IFtdO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgc2VsZWN0b3JzID0gW3RoaXMuX2dldFRva2VuTWV0YWRhdGEocS5zZWxlY3RvcildO1xuICAgICAgfVxuICAgIH1cblxuICAgIHJldHVybiB7XG4gICAgICBzZWxlY3RvcnMsXG4gICAgICBmaXJzdDogcS5maXJzdCxcbiAgICAgIGRlc2NlbmRhbnRzOiBxLmRlc2NlbmRhbnRzLFxuICAgICAgcHJvcGVydHlOYW1lLFxuICAgICAgcmVhZDogcS5yZWFkID8gdGhpcy5fZ2V0VG9rZW5NZXRhZGF0YShxLnJlYWQpIDogbnVsbCEsXG4gICAgICBzdGF0aWM6IHEuc3RhdGljXG4gICAgfTtcbiAgfVxuXG4gIHByaXZhdGUgX3JlcG9ydEVycm9yKGVycm9yOiBhbnksIHR5cGU/OiBhbnksIG90aGVyVHlwZT86IGFueSkge1xuICAgIGlmICh0aGlzLl9lcnJvckNvbGxlY3Rvcikge1xuICAgICAgdGhpcy5fZXJyb3JDb2xsZWN0b3IoZXJyb3IsIHR5cGUpO1xuICAgICAgaWYgKG90aGVyVHlwZSkge1xuICAgICAgICB0aGlzLl9lcnJvckNvbGxlY3RvcihlcnJvciwgb3RoZXJUeXBlKTtcbiAgICAgIH1cbiAgICB9IGVsc2Uge1xuICAgICAgdGhyb3cgZXJyb3I7XG4gICAgfVxuICB9XG59XG5cbmZ1bmN0aW9uIGZsYXR0ZW5BcnJheSh0cmVlOiBhbnlbXSwgb3V0OiBBcnJheTxhbnk+ID0gW10pOiBBcnJheTxhbnk+IHtcbiAgaWYgKHRyZWUpIHtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IHRyZWUubGVuZ3RoOyBpKyspIHtcbiAgICAgIGNvbnN0IGl0ZW0gPSByZXNvbHZlRm9yd2FyZFJlZih0cmVlW2ldKTtcbiAgICAgIGlmIChBcnJheS5pc0FycmF5KGl0ZW0pKSB7XG4gICAgICAgIGZsYXR0ZW5BcnJheShpdGVtLCBvdXQpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgb3V0LnB1c2goaXRlbSk7XG4gICAgICB9XG4gICAgfVxuICB9XG4gIHJldHVybiBvdXQ7XG59XG5cbmZ1bmN0aW9uIGRlZHVwZUFycmF5KGFycmF5OiBhbnlbXSk6IEFycmF5PGFueT4ge1xuICBpZiAoYXJyYXkpIHtcbiAgICByZXR1cm4gQXJyYXkuZnJvbShuZXcgU2V0KGFycmF5KSk7XG4gIH1cbiAgcmV0dXJuIFtdO1xufVxuXG5mdW5jdGlvbiBmbGF0dGVuQW5kRGVkdXBlQXJyYXkodHJlZTogYW55W10pOiBBcnJheTxhbnk+IHtcbiAgcmV0dXJuIGRlZHVwZUFycmF5KGZsYXR0ZW5BcnJheSh0cmVlKSk7XG59XG5cbmZ1bmN0aW9uIGlzVmFsaWRUeXBlKHZhbHVlOiBhbnkpOiBib29sZWFuIHtcbiAgcmV0dXJuICh2YWx1ZSBpbnN0YW5jZW9mIFN0YXRpY1N5bWJvbCkgfHwgKHZhbHVlIGluc3RhbmNlb2YgVHlwZSk7XG59XG5cbmZ1bmN0aW9uIGV4dHJhY3RJZGVudGlmaWVycyh2YWx1ZTogYW55LCB0YXJnZXRJZGVudGlmaWVyczogY3BsLkNvbXBpbGVJZGVudGlmaWVyTWV0YWRhdGFbXSkge1xuICB2aXNpdFZhbHVlKHZhbHVlLCBuZXcgX0NvbXBpbGVWYWx1ZUNvbnZlcnRlcigpLCB0YXJnZXRJZGVudGlmaWVycyk7XG59XG5cbmNsYXNzIF9Db21waWxlVmFsdWVDb252ZXJ0ZXIgZXh0ZW5kcyBWYWx1ZVRyYW5zZm9ybWVyIHtcbiAgdmlzaXRPdGhlcih2YWx1ZTogYW55LCB0YXJnZXRJZGVudGlmaWVyczogY3BsLkNvbXBpbGVJZGVudGlmaWVyTWV0YWRhdGFbXSk6IGFueSB7XG4gICAgdGFyZ2V0SWRlbnRpZmllcnMucHVzaCh7cmVmZXJlbmNlOiB2YWx1ZX0pO1xuICB9XG59XG5cbmZ1bmN0aW9uIHN0cmluZ2lmeVR5cGUodHlwZTogYW55KTogc3RyaW5nIHtcbiAgaWYgKHR5cGUgaW5zdGFuY2VvZiBTdGF0aWNTeW1ib2wpIHtcbiAgICByZXR1cm4gYCR7dHlwZS5uYW1lfSBpbiAke3R5cGUuZmlsZVBhdGh9YDtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gc3RyaW5naWZ5KHR5cGUpO1xuICB9XG59XG5cbi8qKlxuICogSW5kaWNhdGVzIHRoYXQgYSBjb21wb25lbnQgaXMgc3RpbGwgYmVpbmcgbG9hZGVkIGluIGEgc3luY2hyb25vdXMgY29tcGlsZS5cbiAqL1xuZnVuY3Rpb24gY29tcG9uZW50U3RpbGxMb2FkaW5nRXJyb3IoY29tcFR5cGU6IFR5cGUpIHtcbiAgY29uc3QgZXJyb3IgPVxuICAgICAgRXJyb3IoYENhbid0IGNvbXBpbGUgc3luY2hyb25vdXNseSBhcyAke3N0cmluZ2lmeShjb21wVHlwZSl9IGlzIHN0aWxsIGJlaW5nIGxvYWRlZCFgKTtcbiAgKGVycm9yIGFzIGFueSlbRVJST1JfQ09NUE9ORU5UX1RZUEVdID0gY29tcFR5cGU7XG4gIHJldHVybiBlcnJvcjtcbn1cbiJdfQ==