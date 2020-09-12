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
        define("@angular/compiler-cli/src/ngtsc/annotations/src/ng_module", ["require", "exports", "tslib", "@angular/compiler", "typescript", "@angular/compiler-cli/src/ngtsc/diagnostics", "@angular/compiler-cli/src/ngtsc/imports", "@angular/compiler-cli/src/ngtsc/reflection", "@angular/compiler-cli/src/ngtsc/transform", "@angular/compiler-cli/src/ngtsc/util/src/typescript", "@angular/compiler-cli/src/ngtsc/annotations/src/diagnostics", "@angular/compiler-cli/src/ngtsc/annotations/src/metadata", "@angular/compiler-cli/src/ngtsc/annotations/src/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.NgModuleDecoratorHandler = void 0;
    var tslib_1 = require("tslib");
    var compiler_1 = require("@angular/compiler");
    var ts = require("typescript");
    var diagnostics_1 = require("@angular/compiler-cli/src/ngtsc/diagnostics");
    var imports_1 = require("@angular/compiler-cli/src/ngtsc/imports");
    var reflection_1 = require("@angular/compiler-cli/src/ngtsc/reflection");
    var transform_1 = require("@angular/compiler-cli/src/ngtsc/transform");
    var typescript_1 = require("@angular/compiler-cli/src/ngtsc/util/src/typescript");
    var diagnostics_2 = require("@angular/compiler-cli/src/ngtsc/annotations/src/diagnostics");
    var metadata_1 = require("@angular/compiler-cli/src/ngtsc/annotations/src/metadata");
    var util_1 = require("@angular/compiler-cli/src/ngtsc/annotations/src/util");
    /**
     * Compiles @NgModule annotations to ngModuleDef fields.
     *
     * TODO(alxhub): handle injector side of things as well.
     */
    var NgModuleDecoratorHandler = /** @class */ (function () {
        function NgModuleDecoratorHandler(reflector, evaluator, metaReader, metaRegistry, scopeRegistry, referencesRegistry, isCore, routeAnalyzer, refEmitter, factoryTracker, defaultImportRecorder, annotateForClosureCompiler, injectableRegistry, localeId) {
            this.reflector = reflector;
            this.evaluator = evaluator;
            this.metaReader = metaReader;
            this.metaRegistry = metaRegistry;
            this.scopeRegistry = scopeRegistry;
            this.referencesRegistry = referencesRegistry;
            this.isCore = isCore;
            this.routeAnalyzer = routeAnalyzer;
            this.refEmitter = refEmitter;
            this.factoryTracker = factoryTracker;
            this.defaultImportRecorder = defaultImportRecorder;
            this.annotateForClosureCompiler = annotateForClosureCompiler;
            this.injectableRegistry = injectableRegistry;
            this.localeId = localeId;
            this.precedence = transform_1.HandlerPrecedence.PRIMARY;
            this.name = NgModuleDecoratorHandler.name;
        }
        NgModuleDecoratorHandler.prototype.detect = function (node, decorators) {
            if (!decorators) {
                return undefined;
            }
            var decorator = util_1.findAngularDecorator(decorators, 'NgModule', this.isCore);
            if (decorator !== undefined) {
                return {
                    trigger: decorator.node,
                    decorator: decorator,
                    metadata: decorator,
                };
            }
            else {
                return undefined;
            }
        };
        NgModuleDecoratorHandler.prototype.analyze = function (node, decorator) {
            var e_1, _a, _b, e_2, _c;
            var _this = this;
            var name = node.name.text;
            if (decorator.args === null || decorator.args.length > 1) {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DECORATOR_ARITY_WRONG, reflection_1.Decorator.nodeForError(decorator), "Incorrect number of arguments to @NgModule decorator");
            }
            // @NgModule can be invoked without arguments. In case it is, pretend as if a blank object
            // literal was specified. This simplifies the code below.
            var meta = decorator.args.length === 1 ? util_1.unwrapExpression(decorator.args[0]) :
                ts.createObjectLiteral([]);
            if (!ts.isObjectLiteralExpression(meta)) {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DECORATOR_ARG_NOT_LITERAL, meta, '@NgModule argument must be an object literal');
            }
            var ngModule = reflection_1.reflectObjectLiteral(meta);
            if (ngModule.has('jit')) {
                // The only allowed value is true, so there's no need to expand further.
                return {};
            }
            var moduleResolvers = util_1.combineResolvers([
                function (ref) { return _this._extractModuleFromModuleWithProvidersFn(ref.node); },
                util_1.forwardRefResolver,
            ]);
            var diagnostics = [];
            // Extract the module declarations, imports, and exports.
            var declarationRefs = [];
            var rawDeclarations = null;
            if (ngModule.has('declarations')) {
                rawDeclarations = ngModule.get('declarations');
                var declarationMeta = this.evaluator.evaluate(rawDeclarations, util_1.forwardRefResolver);
                declarationRefs =
                    this.resolveTypeList(rawDeclarations, declarationMeta, name, 'declarations');
                try {
                    // Look through the declarations to make sure they're all a part of the current compilation.
                    for (var declarationRefs_1 = tslib_1.__values(declarationRefs), declarationRefs_1_1 = declarationRefs_1.next(); !declarationRefs_1_1.done; declarationRefs_1_1 = declarationRefs_1.next()) {
                        var ref = declarationRefs_1_1.value;
                        if (ref.node.getSourceFile().isDeclarationFile) {
                            var errorNode = ref.getOriginForDiagnostics(rawDeclarations);
                            diagnostics.push(diagnostics_1.makeDiagnostic(diagnostics_1.ErrorCode.NGMODULE_INVALID_DECLARATION, errorNode, "Cannot declare '" + ref.node.name
                                .text + "' in an NgModule as it's not a part of the current compilation.", [diagnostics_1.makeRelatedInformation(ref.node.name, "'" + ref.node.name.text + "' is declared here.")]));
                        }
                    }
                }
                catch (e_1_1) { e_1 = { error: e_1_1 }; }
                finally {
                    try {
                        if (declarationRefs_1_1 && !declarationRefs_1_1.done && (_a = declarationRefs_1.return)) _a.call(declarationRefs_1);
                    }
                    finally { if (e_1) throw e_1.error; }
                }
            }
            if (diagnostics.length > 0) {
                return { diagnostics: diagnostics };
            }
            var importRefs = [];
            var rawImports = null;
            if (ngModule.has('imports')) {
                rawImports = ngModule.get('imports');
                var importsMeta = this.evaluator.evaluate(rawImports, moduleResolvers);
                importRefs = this.resolveTypeList(rawImports, importsMeta, name, 'imports');
            }
            var exportRefs = [];
            var rawExports = null;
            if (ngModule.has('exports')) {
                rawExports = ngModule.get('exports');
                var exportsMeta = this.evaluator.evaluate(rawExports, moduleResolvers);
                exportRefs = this.resolveTypeList(rawExports, exportsMeta, name, 'exports');
                (_b = this.referencesRegistry).add.apply(_b, tslib_1.__spread([node], exportRefs));
            }
            var bootstrapRefs = [];
            if (ngModule.has('bootstrap')) {
                var expr = ngModule.get('bootstrap');
                var bootstrapMeta = this.evaluator.evaluate(expr, util_1.forwardRefResolver);
                bootstrapRefs = this.resolveTypeList(expr, bootstrapMeta, name, 'bootstrap');
            }
            var schemas = [];
            if (ngModule.has('schemas')) {
                var rawExpr = ngModule.get('schemas');
                var result = this.evaluator.evaluate(rawExpr);
                if (!Array.isArray(result)) {
                    throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, rawExpr, "NgModule.schemas must be an array");
                }
                try {
                    for (var result_1 = tslib_1.__values(result), result_1_1 = result_1.next(); !result_1_1.done; result_1_1 = result_1.next()) {
                        var schemaRef = result_1_1.value;
                        if (!(schemaRef instanceof imports_1.Reference)) {
                            throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, rawExpr, 'NgModule.schemas must be an array of schemas');
                        }
                        var id_1 = schemaRef.getIdentityIn(schemaRef.node.getSourceFile());
                        if (id_1 === null || schemaRef.ownedByModuleGuess !== '@angular/core') {
                            throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, rawExpr, 'NgModule.schemas must be an array of schemas');
                        }
                        // Since `id` is the `ts.Identifer` within the schema ref's declaration file, it's safe to
                        // use `id.text` here to figure out which schema is in use. Even if the actual reference was
                        // renamed when the user imported it, these names will match.
                        switch (id_1.text) {
                            case 'CUSTOM_ELEMENTS_SCHEMA':
                                schemas.push(compiler_1.CUSTOM_ELEMENTS_SCHEMA);
                                break;
                            case 'NO_ERRORS_SCHEMA':
                                schemas.push(compiler_1.NO_ERRORS_SCHEMA);
                                break;
                            default:
                                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, rawExpr, "'" + schemaRef.debugName + "' is not a valid NgModule schema");
                        }
                    }
                }
                catch (e_2_1) { e_2 = { error: e_2_1 }; }
                finally {
                    try {
                        if (result_1_1 && !result_1_1.done && (_c = result_1.return)) _c.call(result_1);
                    }
                    finally { if (e_2) throw e_2.error; }
                }
            }
            var id = ngModule.has('id') ? new compiler_1.WrappedNodeExpr(ngModule.get('id')) : null;
            var valueContext = node.getSourceFile();
            var typeContext = valueContext;
            var typeNode = this.reflector.getDtsDeclaration(node);
            if (typeNode !== null) {
                typeContext = typeNode.getSourceFile();
            }
            var bootstrap = bootstrapRefs.map(function (bootstrap) { return _this._toR3Reference(bootstrap, valueContext, typeContext); });
            var declarations = declarationRefs.map(function (decl) { return _this._toR3Reference(decl, valueContext, typeContext); });
            var imports = importRefs.map(function (imp) { return _this._toR3Reference(imp, valueContext, typeContext); });
            var exports = exportRefs.map(function (exp) { return _this._toR3Reference(exp, valueContext, typeContext); });
            var isForwardReference = function (ref) {
                return util_1.isExpressionForwardReference(ref.value, node.name, valueContext);
            };
            var containsForwardDecls = bootstrap.some(isForwardReference) ||
                declarations.some(isForwardReference) || imports.some(isForwardReference) ||
                exports.some(isForwardReference);
            var type = util_1.wrapTypeReference(this.reflector, node);
            var internalType = new compiler_1.WrappedNodeExpr(this.reflector.getInternalNameOfClass(node));
            var adjacentType = new compiler_1.WrappedNodeExpr(this.reflector.getAdjacentNameOfClass(node));
            var ngModuleDef = {
                type: type,
                internalType: internalType,
                adjacentType: adjacentType,
                bootstrap: bootstrap,
                declarations: declarations,
                exports: exports,
                imports: imports,
                containsForwardDecls: containsForwardDecls,
                id: id,
                emitInline: false,
                // TODO: to be implemented as a part of FW-1004.
                schemas: [],
            };
            var rawProviders = ngModule.has('providers') ? ngModule.get('providers') : null;
            var wrapperProviders = rawProviders !== null ?
                new compiler_1.WrappedNodeExpr(this.annotateForClosureCompiler ? util_1.wrapFunctionExpressionsInParens(rawProviders) :
                    rawProviders) :
                null;
            // At this point, only add the module's imports as the injectors' imports. Any exported modules
            // are added during `resolve`, as we need scope information to be able to filter out directives
            // and pipes from the module exports.
            var injectorImports = [];
            if (ngModule.has('imports')) {
                injectorImports.push(new compiler_1.WrappedNodeExpr(ngModule.get('imports')));
            }
            if (this.routeAnalyzer !== null) {
                this.routeAnalyzer.add(node.getSourceFile(), name, rawImports, rawExports, rawProviders);
            }
            var ngInjectorDef = {
                name: name,
                type: type,
                internalType: internalType,
                deps: util_1.getValidConstructorDependencies(node, this.reflector, this.defaultImportRecorder, this.isCore),
                providers: wrapperProviders,
                imports: injectorImports,
            };
            return {
                analysis: {
                    id: id,
                    schemas: schemas,
                    mod: ngModuleDef,
                    inj: ngInjectorDef,
                    declarations: declarationRefs,
                    rawDeclarations: rawDeclarations,
                    imports: importRefs,
                    exports: exportRefs,
                    providers: rawProviders,
                    providersRequiringFactory: rawProviders ?
                        util_1.resolveProvidersRequiringFactory(rawProviders, this.reflector, this.evaluator) :
                        null,
                    metadataStmt: metadata_1.generateSetClassMetadataCall(node, this.reflector, this.defaultImportRecorder, this.isCore, this.annotateForClosureCompiler),
                    factorySymbolName: node.name.text,
                },
            };
        };
        NgModuleDecoratorHandler.prototype.register = function (node, analysis) {
            // Register this module's information with the LocalModuleScopeRegistry. This ensures that
            // during the compile() phase, the module's metadata is available for selector scope
            // computation.
            this.metaRegistry.registerNgModuleMetadata({
                ref: new imports_1.Reference(node),
                schemas: analysis.schemas,
                declarations: analysis.declarations,
                imports: analysis.imports,
                exports: analysis.exports,
                rawDeclarations: analysis.rawDeclarations,
            });
            if (this.factoryTracker !== null) {
                this.factoryTracker.track(node.getSourceFile(), {
                    name: analysis.factorySymbolName,
                    hasId: analysis.id !== null,
                });
            }
            this.injectableRegistry.registerInjectable(node);
        };
        NgModuleDecoratorHandler.prototype.resolve = function (node, analysis) {
            var e_3, _a, e_4, _b;
            var scope = this.scopeRegistry.getScopeOfModule(node);
            var diagnostics = [];
            var scopeDiagnostics = this.scopeRegistry.getDiagnosticsOfModule(node);
            if (scopeDiagnostics !== null) {
                diagnostics.push.apply(diagnostics, tslib_1.__spread(scopeDiagnostics));
            }
            if (analysis.providersRequiringFactory !== null) {
                var providerDiagnostics = diagnostics_2.getProviderDiagnostics(analysis.providersRequiringFactory, analysis.providers, this.injectableRegistry);
                diagnostics.push.apply(diagnostics, tslib_1.__spread(providerDiagnostics));
            }
            var data = {
                injectorImports: [],
            };
            if (scope !== null && scope !== 'error') {
                // Using the scope information, extend the injector's imports using the modules that are
                // specified as module exports.
                var context = typescript_1.getSourceFile(node);
                try {
                    for (var _c = tslib_1.__values(analysis.exports), _d = _c.next(); !_d.done; _d = _c.next()) {
                        var exportRef = _d.value;
                        if (isNgModule(exportRef.node, scope.compilation)) {
                            data.injectorImports.push(this.refEmitter.emit(exportRef, context));
                        }
                    }
                }
                catch (e_3_1) { e_3 = { error: e_3_1 }; }
                finally {
                    try {
                        if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
                    }
                    finally { if (e_3) throw e_3.error; }
                }
                try {
                    for (var _e = tslib_1.__values(analysis.declarations), _f = _e.next(); !_f.done; _f = _e.next()) {
                        var decl = _f.value;
                        var metadata = this.metaReader.getDirectiveMetadata(decl);
                        if (metadata !== null && metadata.selector === null) {
                            throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DIRECTIVE_MISSING_SELECTOR, decl.node, "Directive " + decl.node.name.text + " has no selector, please add it!");
                        }
                    }
                }
                catch (e_4_1) { e_4 = { error: e_4_1 }; }
                finally {
                    try {
                        if (_f && !_f.done && (_b = _e.return)) _b.call(_e);
                    }
                    finally { if (e_4) throw e_4.error; }
                }
            }
            if (diagnostics.length > 0) {
                return { diagnostics: diagnostics };
            }
            if (scope === null || scope === 'error' || scope.reexports === null) {
                return { data: data };
            }
            else {
                return {
                    data: data,
                    reexports: scope.reexports,
                };
            }
        };
        NgModuleDecoratorHandler.prototype.compile = function (node, analysis, resolution) {
            var e_5, _a;
            var _this = this;
            //  Merge the injector imports (which are 'exports' that were later found to be NgModules)
            //  computed during resolution with the ones from analysis.
            var ngInjectorDef = compiler_1.compileInjector(tslib_1.__assign(tslib_1.__assign({}, analysis.inj), { imports: tslib_1.__spread(analysis.inj.imports, resolution.injectorImports) }));
            var ngModuleDef = compiler_1.compileNgModule(analysis.mod);
            var ngModuleStatements = ngModuleDef.additionalStatements;
            if (analysis.metadataStmt !== null) {
                ngModuleStatements.push(analysis.metadataStmt);
            }
            var context = typescript_1.getSourceFile(node);
            try {
                for (var _b = tslib_1.__values(analysis.declarations), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var decl = _c.value;
                    if (this.scopeRegistry.getRequiresRemoteScope(decl.node)) {
                        var scope = this.scopeRegistry.getScopeOfModule(ts.getOriginalNode(node));
                        if (scope === null || scope === 'error') {
                            continue;
                        }
                        var directives = scope.compilation.directives.map(function (directive) { return _this.refEmitter.emit(directive.ref, context); });
                        var pipes = scope.compilation.pipes.map(function (pipe) { return _this.refEmitter.emit(pipe.ref, context); });
                        var directiveArray = new compiler_1.LiteralArrayExpr(directives);
                        var pipesArray = new compiler_1.LiteralArrayExpr(pipes);
                        var declExpr = this.refEmitter.emit(decl, context);
                        var setComponentScope = new compiler_1.ExternalExpr(compiler_1.R3Identifiers.setComponentScope);
                        var callExpr = new compiler_1.InvokeFunctionExpr(setComponentScope, [declExpr, directiveArray, pipesArray]);
                        ngModuleStatements.push(callExpr.toStmt());
                    }
                }
            }
            catch (e_5_1) { e_5 = { error: e_5_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_5) throw e_5.error; }
            }
            var res = [
                {
                    name: 'ɵmod',
                    initializer: ngModuleDef.expression,
                    statements: ngModuleStatements,
                    type: ngModuleDef.type,
                },
                {
                    name: 'ɵinj',
                    initializer: ngInjectorDef.expression,
                    statements: ngInjectorDef.statements,
                    type: ngInjectorDef.type,
                }
            ];
            if (this.localeId) {
                res.push({
                    name: 'ɵloc',
                    initializer: new compiler_1.LiteralExpr(this.localeId),
                    statements: [],
                    type: compiler_1.STRING_TYPE
                });
            }
            return res;
        };
        NgModuleDecoratorHandler.prototype._toR3Reference = function (valueRef, valueContext, typeContext) {
            if (valueRef.hasOwningModuleGuess) {
                return util_1.toR3Reference(valueRef, valueRef, valueContext, valueContext, this.refEmitter);
            }
            else {
                var typeRef = valueRef;
                var typeNode = this.reflector.getDtsDeclaration(typeRef.node);
                if (typeNode !== null && ts.isClassDeclaration(typeNode)) {
                    typeRef = new imports_1.Reference(typeNode);
                }
                return util_1.toR3Reference(valueRef, typeRef, valueContext, typeContext, this.refEmitter);
            }
        };
        /**
         * Given a `FunctionDeclaration`, `MethodDeclaration` or `FunctionExpression`, check if it is
         * typed as a `ModuleWithProviders` and return an expression referencing the module if available.
         */
        NgModuleDecoratorHandler.prototype._extractModuleFromModuleWithProvidersFn = function (node) {
            var type = node.type || null;
            return type &&
                (this._reflectModuleFromTypeParam(type, node) || this._reflectModuleFromLiteralType(type));
        };
        /**
         * Retrieve an `NgModule` identifier (T) from the specified `type`, if it is of the form:
         * `ModuleWithProviders<T>`
         * @param type The type to reflect on.
         * @returns the identifier of the NgModule type if found, or null otherwise.
         */
        NgModuleDecoratorHandler.prototype._reflectModuleFromTypeParam = function (type, node) {
            // Examine the type of the function to see if it's a ModuleWithProviders reference.
            if (!ts.isTypeReferenceNode(type)) {
                return null;
            }
            var typeName = type &&
                (ts.isIdentifier(type.typeName) && type.typeName ||
                    ts.isQualifiedName(type.typeName) && type.typeName.right) ||
                null;
            if (typeName === null) {
                return null;
            }
            // Look at the type itself to see where it comes from.
            var id = this.reflector.getImportOfIdentifier(typeName);
            // If it's not named ModuleWithProviders, bail.
            if (id === null || id.name !== 'ModuleWithProviders') {
                return null;
            }
            // If it's not from @angular/core, bail.
            if (!this.isCore && id.from !== '@angular/core') {
                return null;
            }
            // If there's no type parameter specified, bail.
            if (type.typeArguments === undefined || type.typeArguments.length !== 1) {
                var parent_1 = ts.isMethodDeclaration(node) && ts.isClassDeclaration(node.parent) ? node.parent : null;
                var symbolName = (parent_1 && parent_1.name ? parent_1.name.getText() + '.' : '') +
                    (node.name ? node.name.getText() : 'anonymous');
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.NGMODULE_MODULE_WITH_PROVIDERS_MISSING_GENERIC, type, symbolName + " returns a ModuleWithProviders type without a generic type argument. " +
                    "Please add a generic type argument to the ModuleWithProviders type. If this " +
                    "occurrence is in library code you don't control, please contact the library authors.");
            }
            var arg = type.typeArguments[0];
            return reflection_1.typeNodeToValueExpr(arg);
        };
        /**
         * Retrieve an `NgModule` identifier (T) from the specified `type`, if it is of the form:
         * `A|B|{ngModule: T}|C`.
         * @param type The type to reflect on.
         * @returns the identifier of the NgModule type if found, or null otherwise.
         */
        NgModuleDecoratorHandler.prototype._reflectModuleFromLiteralType = function (type) {
            var e_6, _a, e_7, _b;
            if (!ts.isIntersectionTypeNode(type)) {
                return null;
            }
            try {
                for (var _c = tslib_1.__values(type.types), _d = _c.next(); !_d.done; _d = _c.next()) {
                    var t = _d.value;
                    if (ts.isTypeLiteralNode(t)) {
                        try {
                            for (var _e = (e_7 = void 0, tslib_1.__values(t.members)), _f = _e.next(); !_f.done; _f = _e.next()) {
                                var m = _f.value;
                                var ngModuleType = ts.isPropertySignature(m) && ts.isIdentifier(m.name) &&
                                    m.name.text === 'ngModule' && m.type ||
                                    null;
                                var ngModuleExpression = ngModuleType && reflection_1.typeNodeToValueExpr(ngModuleType);
                                if (ngModuleExpression) {
                                    return ngModuleExpression;
                                }
                            }
                        }
                        catch (e_7_1) { e_7 = { error: e_7_1 }; }
                        finally {
                            try {
                                if (_f && !_f.done && (_b = _e.return)) _b.call(_e);
                            }
                            finally { if (e_7) throw e_7.error; }
                        }
                    }
                }
            }
            catch (e_6_1) { e_6 = { error: e_6_1 }; }
            finally {
                try {
                    if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
                }
                finally { if (e_6) throw e_6.error; }
            }
            return null;
        };
        // Verify that a `ts.Declaration` reference is a `ClassDeclaration` reference.
        NgModuleDecoratorHandler.prototype.isClassDeclarationReference = function (ref) {
            return this.reflector.isClass(ref.node);
        };
        /**
         * Compute a list of `Reference`s from a resolved metadata value.
         */
        NgModuleDecoratorHandler.prototype.resolveTypeList = function (expr, resolvedList, className, arrayName) {
            var _this = this;
            var refList = [];
            if (!Array.isArray(resolvedList)) {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, expr, "Expected array when reading the NgModule." + arrayName + " of " + className);
            }
            resolvedList.forEach(function (entry, idx) {
                // Unwrap ModuleWithProviders for modules that are locally declared (and thus static
                // resolution was able to descend into the function and return an object literal, a Map).
                if (entry instanceof Map && entry.has('ngModule')) {
                    entry = entry.get('ngModule');
                }
                if (Array.isArray(entry)) {
                    // Recurse into nested arrays.
                    refList.push.apply(refList, tslib_1.__spread(_this.resolveTypeList(expr, entry, className, arrayName)));
                }
                else if (isDeclarationReference(entry)) {
                    if (!_this.isClassDeclarationReference(entry)) {
                        throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, entry.node, "Value at position " + idx + " in the NgModule." + arrayName + " of " + className + " is not a class");
                    }
                    refList.push(entry);
                }
                else {
                    // TODO(alxhub): Produce a better diagnostic here - the array index may be an inner array.
                    throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, expr, "Value at position " + idx + " in the NgModule." + arrayName + " of " + className + " is not a reference: " + entry);
                }
            });
            return refList;
        };
        return NgModuleDecoratorHandler;
    }());
    exports.NgModuleDecoratorHandler = NgModuleDecoratorHandler;
    function isNgModule(node, compilation) {
        return !compilation.directives.some(function (directive) { return directive.ref.node === node; }) &&
            !compilation.pipes.some(function (pipe) { return pipe.ref.node === node; });
    }
    function isDeclarationReference(ref) {
        return ref instanceof imports_1.Reference &&
            (ts.isClassDeclaration(ref.node) || ts.isFunctionDeclaration(ref.node) ||
                ts.isVariableDeclaration(ref.node));
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmdfbW9kdWxlLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy9uZ3RzYy9hbm5vdGF0aW9ucy9zcmMvbmdfbW9kdWxlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFFSCw4Q0FBdVQ7SUFDdlQsK0JBQWlDO0lBRWpDLDJFQUEwRztJQUMxRyxtRUFBaUY7SUFHakYseUVBQXdIO0lBSXhILHVFQUFnSTtJQUNoSSxrRkFBd0Q7SUFFeEQsMkZBQXFEO0lBQ3JELHFGQUF3RDtJQUV4RCw2RUFBd1E7SUFxQnhROzs7O09BSUc7SUFDSDtRQUVFLGtDQUNZLFNBQXlCLEVBQVUsU0FBMkIsRUFDOUQsVUFBMEIsRUFBVSxZQUE4QixFQUNsRSxhQUF1QyxFQUN2QyxrQkFBc0MsRUFBVSxNQUFlLEVBQy9ELGFBQXlDLEVBQVUsVUFBNEIsRUFDL0UsY0FBbUMsRUFDbkMscUJBQTRDLEVBQzVDLDBCQUFtQyxFQUNuQyxrQkFBMkMsRUFBVSxRQUFpQjtZQVJ0RSxjQUFTLEdBQVQsU0FBUyxDQUFnQjtZQUFVLGNBQVMsR0FBVCxTQUFTLENBQWtCO1lBQzlELGVBQVUsR0FBVixVQUFVLENBQWdCO1lBQVUsaUJBQVksR0FBWixZQUFZLENBQWtCO1lBQ2xFLGtCQUFhLEdBQWIsYUFBYSxDQUEwQjtZQUN2Qyx1QkFBa0IsR0FBbEIsa0JBQWtCLENBQW9CO1lBQVUsV0FBTSxHQUFOLE1BQU0sQ0FBUztZQUMvRCxrQkFBYSxHQUFiLGFBQWEsQ0FBNEI7WUFBVSxlQUFVLEdBQVYsVUFBVSxDQUFrQjtZQUMvRSxtQkFBYyxHQUFkLGNBQWMsQ0FBcUI7WUFDbkMsMEJBQXFCLEdBQXJCLHFCQUFxQixDQUF1QjtZQUM1QywrQkFBMEIsR0FBMUIsMEJBQTBCLENBQVM7WUFDbkMsdUJBQWtCLEdBQWxCLGtCQUFrQixDQUF5QjtZQUFVLGFB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LENBQUMsQ0FBQztJQUM5RCxDQUFDO0lBRUQsU0FBUyxzQkFBc0IsQ0FBQyxHQUFRO1FBQ3RDLE9BQU8sR0FBRyxZQUFZLG1CQUFTO1lBQzNCLENBQUMsRUFBRSxDQUFDLGtCQUFrQixDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsSUFBSSxFQUFFLENBQUMscUJBQXFCLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQztnQkFDckUsRUFBRSxDQUFDLHFCQUFxQixDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDO0lBQzNDLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtjb21waWxlSW5qZWN0b3IsIGNvbXBpbGVOZ01vZHVsZSwgQ1VTVE9NX0VMRU1FTlRTX1NDSEVNQSwgRXhwcmVzc2lvbiwgRXh0ZXJuYWxFeHByLCBJbnZva2VGdW5jdGlvbkV4cHIsIExpdGVyYWxBcnJheUV4cHIsIExpdGVyYWxFeHByLCBOT19FUlJPUlNfU0NIRU1BLCBSM0lkZW50aWZpZXJzLCBSM0luamVjdG9yTWV0YWRhdGEsIFIzTmdNb2R1bGVNZXRhZGF0YSwgUjNSZWZlcmVuY2UsIFNjaGVtYU1ldGFkYXRhLCBTdGF0ZW1lbnQsIFNUUklOR19UWVBFLCBXcmFwcGVkTm9kZUV4cHJ9IGZyb20gJ0Bhbmd1bGFyL2NvbXBpbGVyJztcbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge0Vycm9yQ29kZSwgRmF0YWxEaWFnbm9zdGljRXJyb3IsIG1ha2VEaWFnbm9zdGljLCBtYWtlUmVsYXRlZEluZm9ybWF0aW9ufSBmcm9tICcuLi8uLi9kaWFnbm9zdGljcyc7XG5pbXBvcnQge0RlZmF1bHRJbXBvcnRSZWNvcmRlciwgUmVmZXJlbmNlLCBSZWZlcmVuY2VFbWl0dGVyfSBmcm9tICcuLi8uLi9pbXBvcnRzJztcbmltcG9ydCB7SW5qZWN0YWJsZUNsYXNzUmVnaXN0cnksIE1ldGFkYXRhUmVhZGVyLCBNZXRhZGF0YVJlZ2lzdHJ5fSBmcm9tICcuLi8uLi9tZXRhZGF0YSc7XG5pbXBvcnQge1BhcnRpYWxFdmFsdWF0b3IsIFJlc29sdmVkVmFsdWUsIFJlc29sdmVkVmFsdWVBcnJheX0gZnJvbSAnLi4vLi4vcGFydGlhbF9ldmFsdWF0b3InO1xuaW1wb3J0IHtDbGFzc0RlY2xhcmF0aW9uLCBEZWNvcmF0b3IsIFJlZmxlY3Rpb25Ib3N0LCByZWZsZWN0T2JqZWN0TGl0ZXJhbCwgdHlwZU5vZGVUb1ZhbHVlRXhwcn0gZnJvbSAnLi4vLi4vcmVmbGVjdGlvbic7XG5pbXBvcnQge05nTW9kdWxlUm91dGVBbmFseXplcn0gZnJvbSAnLi4vLi4vcm91dGluZyc7XG5pbXBvcnQge0xvY2FsTW9kdWxlU2NvcGVSZWdpc3RyeSwgU2NvcGVEYXRhfSBmcm9tICcuLi8uLi9zY29wZSc7XG5pbXBvcnQge0ZhY3RvcnlUcmFja2VyfSBmcm9tICcuLi8uLi9zaGltcy9hcGknO1xuaW1wb3J0IHtBbmFseXNpc091dHB1dCwgQ29tcGlsZVJlc3VsdCwgRGVjb3JhdG9ySGFuZGxlciwgRGV0ZWN0UmVzdWx0LCBIYW5kbGVyUHJlY2VkZW5jZSwgUmVzb2x2ZVJlc3VsdH0gZnJvbSAnLi4vLi4vdHJhbnNmb3JtJztcbmltcG9ydCB7Z2V0U291cmNlRmlsZX0gZnJvbSAnLi4vLi4vdXRpbC9zcmMvdHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7Z2V0UHJvdmlkZXJEaWFnbm9zdGljc30gZnJvbSAnLi9kaWFnbm9zdGljcyc7XG5pbXBvcnQge2dlbmVyYXRlU2V0Q2xhc3NNZXRhZGF0YUNhbGx9IGZyb20gJy4vbWV0YWRhdGEnO1xuaW1wb3J0IHtSZWZlcmVuY2VzUmVnaXN0cnl9IGZyb20gJy4vcmVmZXJlbmNlc19yZWdpc3RyeSc7XG5pbXBvcnQge2NvbWJpbmVSZXNvbHZlcnMsIGZpbmRBbmd1bGFyRGVjb3JhdG9yLCBmb3J3YXJkUmVmUmVzb2x2ZXIsIGdldFZhbGlkQ29uc3RydWN0b3JEZXBlbmRlbmNpZXMsIGlzRXhwcmVzc2lvbkZvcndhcmRSZWZlcmVuY2UsIHJlc29sdmVQcm92aWRlcnNSZXF1aXJpbmdGYWN0b3J5LCB0b1IzUmVmZXJlbmNlLCB1bndyYXBFeHByZXNzaW9uLCB3cmFwRnVuY3Rpb25FeHByZXNzaW9uc0luUGFyZW5zLCB3cmFwVHlwZVJlZmVyZW5jZX0gZnJvbSAnLi91dGlsJztcblxuZXhwb3J0IGludGVyZmFjZSBOZ01vZHVsZUFuYWx5c2lzIHtcbiAgbW9kOiBSM05nTW9kdWxlTWV0YWRhdGE7XG4gIGluajogUjNJbmplY3Rvck1ldGFkYXRhO1xuICBtZXRhZGF0YVN0bXQ6IFN0YXRlbWVudHxudWxsO1xuICBkZWNsYXJhdGlvbnM6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPltdO1xuICByYXdEZWNsYXJhdGlvbnM6IHRzLkV4cHJlc3Npb258bnVsbDtcbiAgc2NoZW1hczogU2NoZW1hTWV0YWRhdGFbXTtcbiAgaW1wb3J0czogUmVmZXJlbmNlPENsYXNzRGVjbGFyYXRpb24+W107XG4gIGV4cG9ydHM6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPltdO1xuICBpZDogRXhwcmVzc2lvbnxudWxsO1xuICBmYWN0b3J5U3ltYm9sTmFtZTogc3RyaW5nO1xuICBwcm92aWRlcnNSZXF1aXJpbmdGYWN0b3J5OiBTZXQ8UmVmZXJlbmNlPENsYXNzRGVjbGFyYXRpb24+PnxudWxsO1xuICBwcm92aWRlcnM6IHRzLkV4cHJlc3Npb258bnVsbDtcbn1cblxuZXhwb3J0IGludGVyZmFjZSBOZ01vZHVsZVJlc29sdXRpb24ge1xuICBpbmplY3RvckltcG9ydHM6IEV4cHJlc3Npb25bXTtcbn1cblxuLyoqXG4gKiBDb21waWxlcyBATmdNb2R1bGUgYW5ub3RhdGlvbnMgdG8gbmdNb2R1bGVEZWYgZmllbGRzLlxuICpcbiAqIFRPRE8oYWx4aHViKTogaGFuZGxlIGluamVjdG9yIHNpZGUgb2YgdGhpbmdzIGFzIHdlbGwuXG4gKi9cbmV4cG9ydCBjbGFzcyBOZ01vZHVsZURlY29yYXRvckhhbmRsZXIgaW1wbGVtZW50c1xuICAgIERlY29yYXRvckhhbmRsZXI8RGVjb3JhdG9yLCBOZ01vZHVsZUFuYWx5c2lzLCBOZ01vZHVsZVJlc29sdXRpb24+IHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHJlZmxlY3RvcjogUmVmbGVjdGlvbkhvc3QsIHByaXZhdGUgZXZhbHVhdG9yOiBQYXJ0aWFsRXZhbHVhdG9yLFxuICAgICAgcHJpdmF0ZSBtZXRhUmVhZGVyOiBNZXRhZGF0YVJlYWRlciwgcHJpdmF0ZSBtZXRhUmVnaXN0cnk6IE1ldGFkYXRhUmVnaXN0cnksXG4gICAgICBwcml2YXRlIHNjb3BlUmVnaXN0cnk6IExvY2FsTW9kdWxlU2NvcGVSZWdpc3RyeSxcbiAgICAgIHByaXZhdGUgcmVmZXJlbmNlc1JlZ2lzdHJ5OiBSZWZlcmVuY2VzUmVnaXN0cnksIHByaXZhdGUgaXNDb3JlOiBib29sZWFuLFxuICAgICAgcHJpdmF0ZSByb3V0ZUFuYWx5emVyOiBOZ01vZHVsZVJvdXRlQW5hbHl6ZXJ8bnVsbCwgcHJpdmF0ZSByZWZFbWl0dGVyOiBSZWZlcmVuY2VFbWl0dGVyLFxuICAgICAgcHJpdmF0ZSBmYWN0b3J5VHJhY2tlcjogRmFjdG9yeVRyYWNrZXJ8bnVsbCxcbiAgICAgIHByaXZhdGUgZGVmYXVsdEltcG9ydFJlY29yZGVyOiBEZWZhdWx0SW1wb3J0UmVjb3JkZXIsXG4gICAgICBwcml2YXRlIGFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyOiBib29sZWFuLFxuICAgICAgcHJpdmF0ZSBpbmplY3RhYmxlUmVnaXN0cnk6IEluamVjdGFibGVDbGFzc1JlZ2lzdHJ5LCBwcml2YXRlIGxvY2FsZUlkPzogc3RyaW5nKSB7fVxuXG4gIHJlYWRvbmx5IHByZWNlZGVuY2UgPSBIYW5kbGVyUHJlY2VkZW5jZS5QUklNQVJZO1xuICByZWFkb25seSBuYW1lID0gTmdNb2R1bGVEZWNvcmF0b3JIYW5kbGVyLm5hbWU7XG5cbiAgZGV0ZWN0KG5vZGU6IENsYXNzRGVjbGFyYXRpb24sIGRlY29yYXRvcnM6IERlY29yYXRvcltdfG51bGwpOiBEZXRlY3RSZXN1bHQ8RGVjb3JhdG9yPnx1bmRlZmluZWQge1xuICAgIGlmICghZGVjb3JhdG9ycykge1xuICAgICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgICB9XG4gICAgY29uc3QgZGVjb3JhdG9yID0gZmluZEFuZ3VsYXJEZWNvcmF0b3IoZGVjb3JhdG9ycywgJ05nTW9kdWxlJywgdGhpcy5pc0NvcmUpO1xuICAgIGlmIChkZWNvcmF0b3IgIT09IHVuZGVmaW5lZCkge1xuICAgICAgcmV0dXJuIHtcbiAgICAgICAgdHJpZ2dlcjogZGVjb3JhdG9yLm5vZGUsXG4gICAgICAgIGRlY29yYXRvcjogZGVjb3JhdG9yLFxuICAgICAgICBtZXRhZGF0YTogZGVjb3JhdG9yLFxuICAgICAgfTtcbiAgICB9IGVsc2Uge1xuICAgICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgICB9XG4gIH1cblxuICBhbmFseXplKG5vZGU6IENsYXNzRGVjbGFyYXRpb24sIGRlY29yYXRvcjogUmVhZG9ubHk8RGVjb3JhdG9yPik6XG4gICAgICBBbmFseXNpc091dHB1dDxOZ01vZHVsZUFuYWx5c2lzPiB7XG4gICAgY29uc3QgbmFtZSA9IG5vZGUubmFtZS50ZXh0O1xuICAgIGlmIChkZWNvcmF0b3IuYXJncyA9PT0gbnVsbCB8fCBkZWNvcmF0b3IuYXJncy5sZW5ndGggPiAxKSB7XG4gICAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgICAgRXJyb3JDb2RlLkRFQ09SQVRPUl9BUklUWV9XUk9ORywgRGVjb3JhdG9yLm5vZGVGb3JFcnJvcihkZWNvcmF0b3IpLFxuICAgICAgICAgIGBJbmNvcnJlY3QgbnVtYmVyIG9mIGFyZ3VtZW50cyB0byBATmdNb2R1bGUgZGVjb3JhdG9yYCk7XG4gICAgfVxuXG4gICAgLy8gQE5nTW9kdWxlIGNhbiBiZSBpbnZva2VkIHdpdGhvdXQgYXJndW1lbnRzLiBJbiBjYXNlIGl0IGlzLCBwcmV0ZW5kIGFzIGlmIGEgYmxhbmsgb2JqZWN0XG4gICAgLy8gbGl0ZXJhbCB3YXMgc3BlY2lmaWVkLiBUaGlzIHNpbXBsaWZpZXMgdGhlIGNvZGUgYmVsb3cuXG4gICAgY29uc3QgbWV0YSA9IGRlY29yYXRvci5hcmdzLmxlbmd0aCA9PT0gMSA/IHVud3JhcEV4cHJlc3Npb24oZGVjb3JhdG9yLmFyZ3NbMF0pIDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdHMuY3JlYXRlT2JqZWN0TGl0ZXJhbChbXSk7XG5cbiAgICBpZiAoIXRzLmlzT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24obWV0YSkpIHtcbiAgICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgICBFcnJvckNvZGUuREVDT1JBVE9SX0FSR19OT1RfTElURVJBTCwgbWV0YSxcbiAgICAgICAgICAnQE5nTW9kdWxlIGFyZ3VtZW50IG11c3QgYmUgYW4gb2JqZWN0IGxpdGVyYWwnKTtcbiAgICB9XG4gICAgY29uc3QgbmdNb2R1bGUgPSByZWZsZWN0T2JqZWN0TGl0ZXJhbChtZXRhKTtcblxuICAgIGlmIChuZ01vZHVsZS5oYXMoJ2ppdCcpKSB7XG4gICAgICAvLyBUaGUgb25seSBhbGxvd2VkIHZhbHVlIGlzIHRydWUsIHNvIHRoZXJlJ3Mgbm8gbmVlZCB0byBleHBhbmQgZnVydGhlci5cbiAgICAgIHJldHVybiB7fTtcbiAgICB9XG5cbiAgICBjb25zdCBtb2R1bGVSZXNvbHZlcnMgPSBjb21iaW5lUmVzb2x2ZXJzKFtcbiAgICAgIHJlZiA9PiB0aGlzLl9leHRyYWN0TW9kdWxlRnJvbU1vZHVsZVdpdGhQcm92aWRlcnNGbihyZWYubm9kZSksXG4gICAgICBmb3J3YXJkUmVmUmVzb2x2ZXIsXG4gICAgXSk7XG5cbiAgICBjb25zdCBkaWFnbm9zdGljczogdHMuRGlhZ25vc3RpY1tdID0gW107XG5cbiAgICAvLyBFeHRyYWN0IHRoZSBtb2R1bGUgZGVjbGFyYXRpb25zLCBpbXBvcnRzLCBhbmQgZXhwb3J0cy5cbiAgICBsZXQgZGVjbGFyYXRpb25SZWZzOiBSZWZlcmVuY2U8Q2xhc3NEZWNsYXJhdGlvbj5bXSA9IFtdO1xuICAgIGxldCByYXdEZWNsYXJhdGlvbnM6IHRzLkV4cHJlc3Npb258bnVsbCA9IG51bGw7XG4gICAgaWYgKG5nTW9kdWxlLmhhcygnZGVjbGFyYXRpb25zJykpIHtcbiAgICAgIHJhd0RlY2xhcmF0aW9ucyA9IG5nTW9kdWxlLmdldCgnZGVjbGFyYXRpb25zJykhO1xuICAgICAgY29uc3QgZGVjbGFyYXRpb25NZXRhID0gdGhpcy5ldmFsdWF0b3IuZXZhbHVhdGUocmF3RGVjbGFyYXRpb25zLCBmb3J3YXJkUmVmUmVzb2x2ZXIpO1xuICAgICAgZGVjbGFyYXRpb25SZWZzID1cbiAgICAgICAgICB0aGlzLnJlc29sdmVUeXBlTGlzdChyYXdEZWNsYXJhdGlvbnMsIGRlY2xhcmF0aW9uTWV0YSwgbmFtZSwgJ2RlY2xhcmF0aW9ucycpO1xuXG4gICAgICAvLyBMb29rIHRocm91Z2ggdGhlIGRlY2xhcmF0aW9ucyB0byBtYWtlIHN1cmUgdGhleSdyZSBhbGwgYSBwYXJ0IG9mIHRoZSBjdXJyZW50IGNvbXBpbGF0aW9uLlxuICAgICAgZm9yIChjb25zdCByZWYgb2YgZGVjbGFyYXRpb25SZWZzKSB7XG4gICAgICAgIGlmIChyZWYubm9kZS5nZXRTb3VyY2VGaWxlKCkuaXNEZWNsYXJhdGlvbkZpbGUpIHtcbiAgICAgICAgICBjb25zdCBlcnJvck5vZGU6IHRzLkV4cHJlc3Npb24gPSByZWYuZ2V0T3JpZ2luRm9yRGlhZ25vc3RpY3MocmF3RGVjbGFyYXRpb25zKTtcblxuICAgICAgICAgIGRpYWdub3N0aWNzLnB1c2gobWFrZURpYWdub3N0aWMoXG4gICAgICAgICAgICAgIEVycm9yQ29kZS5OR01PRFVMRV9JTlZBTElEX0RFQ0xBUkFUSU9OLCBlcnJvck5vZGUsXG4gICAgICAgICAgICAgIGBDYW5ub3QgZGVjbGFyZSAnJHtcbiAgICAgICAgICAgICAgICAgIHJlZi5ub2RlLm5hbWVcbiAgICAgICAgICAgICAgICAgICAgICAudGV4dH0nIGluIGFuIE5nTW9kdWxlIGFzIGl0J3Mgbm90IGEgcGFydCBvZiB0aGUgY3VycmVudCBjb21waWxhdGlvbi5gLFxuICAgICAgICAgICAgICBbbWFrZVJlbGF0ZWRJbmZvcm1hdGlvbihcbiAgICAgICAgICAgICAgICAgIHJlZi5ub2RlLm5hbWUsIGAnJHtyZWYubm9kZS5uYW1lLnRleHR9JyBpcyBkZWNsYXJlZCBoZXJlLmApXSkpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgaWYgKGRpYWdub3N0aWNzLmxlbmd0aCA+IDApIHtcbiAgICAgIHJldHVybiB7ZGlhZ25vc3RpY3N9O1xuICAgIH1cblxuICAgIGxldCBpbXBvcnRSZWZzOiBSZWZlcmVuY2U8Q2xhc3NEZWNsYXJhdGlvbj5bXSA9IFtdO1xuICAgIGxldCByYXdJbXBvcnRzOiB0cy5FeHByZXNzaW9ufG51bGwgPSBudWxsO1xuICAgIGlmIChuZ01vZHVsZS5oYXMoJ2ltcG9ydHMnKSkge1xuICAgICAgcmF3SW1wb3J0cyA9IG5nTW9kdWxlLmdldCgnaW1wb3J0cycpITtcbiAgICAgIGNvbnN0IGltcG9ydHNNZXRhID0gdGhpcy5ldmFsdWF0b3IuZXZhbHVhdGUocmF3SW1wb3J0cywgbW9kdWxlUmVzb2x2ZXJzKTtcbiAgICAgIGltcG9ydFJlZnMgPSB0aGlzLnJlc29sdmVUeXBlTGlzdChyYXdJbXBvcnRzLCBpbXBvcnRzTWV0YSwgbmFtZSwgJ2ltcG9ydHMnKTtcbiAgICB9XG4gICAgbGV0IGV4cG9ydFJlZnM6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPltdID0gW107XG4gICAgbGV0IHJhd0V4cG9ydHM6IHRzLkV4cHJlc3Npb258bnVsbCA9IG51bGw7XG4gICAgaWYgKG5nTW9kdWxlLmhhcygnZXhwb3J0cycpKSB7XG4gICAgICByYXdFeHBvcnRzID0gbmdNb2R1bGUuZ2V0KCdleHBvcnRzJykhO1xuICAgICAgY29uc3QgZXhwb3J0c01ldGEgPSB0aGlzLmV2YWx1YXRvci5ldmFsdWF0ZShyYXdFeHBvcnRzLCBtb2R1bGVSZXNvbHZlcnMpO1xuICAgICAgZXhwb3J0UmVmcyA9IHRoaXMucmVzb2x2ZVR5cGVMaXN0KHJhd0V4cG9ydHMsIGV4cG9ydHNNZXRhLCBuYW1lLCAnZXhwb3J0cycpO1xuICAgICAgdGhpcy5yZWZlcmVuY2VzUmVnaXN0cnkuYWRkKG5vZGUsIC4uLmV4cG9ydFJlZnMpO1xuICAgIH1cbiAgICBsZXQgYm9vdHN0cmFwUmVmczogUmVmZXJlbmNlPENsYXNzRGVjbGFyYXRpb24+W10gPSBbXTtcbiAgICBpZiAobmdNb2R1bGUuaGFzKCdib290c3RyYXAnKSkge1xuICAgICAgY29uc3QgZXhwciA9IG5nTW9kdWxlLmdldCgnYm9vdHN0cmFwJykhO1xuICAgICAgY29uc3QgYm9vdHN0cmFwTWV0YSA9IHRoaXMuZXZhbHVhdG9yLmV2YWx1YXRlKGV4cHIsIGZvcndhcmRSZWZSZXNvbHZlcik7XG4gICAgICBib290c3RyYXBSZWZzID0gdGhpcy5yZXNvbHZlVHlwZUxpc3QoZXhwciwgYm9vdHN0cmFwTWV0YSwgbmFtZSwgJ2Jvb3RzdHJhcCcpO1xuICAgIH1cblxuICAgIGNvbnN0IHNjaGVtYXM6IFNjaGVtYU1ldGFkYXRhW10gPSBbXTtcbiAgICBpZiAobmdNb2R1bGUuaGFzKCdzY2hlbWFzJykpIHtcbiAgICAgIGNvbnN0IHJhd0V4cHIgPSBuZ01vZHVsZS5nZXQoJ3NjaGVtYXMnKSE7XG4gICAgICBjb25zdCByZXN1bHQgPSB0aGlzLmV2YWx1YXRvci5ldmFsdWF0ZShyYXdFeHByKTtcbiAgICAgIGlmICghQXJyYXkuaXNBcnJheShyZXN1bHQpKSB7XG4gICAgICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgICAgIEVycm9yQ29kZS5WQUxVRV9IQVNfV1JPTkdfVFlQRSwgcmF3RXhwciwgYE5nTW9kdWxlLnNjaGVtYXMgbXVzdCBiZSBhbiBhcnJheWApO1xuICAgICAgfVxuXG4gICAgICBmb3IgKGNvbnN0IHNjaGVtYVJlZiBvZiByZXN1bHQpIHtcbiAgICAgICAgaWYgKCEoc2NoZW1hUmVmIGluc3RhbmNlb2YgUmVmZXJlbmNlKSkge1xuICAgICAgICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgICAgICAgRXJyb3JDb2RlLlZBTFVFX0hBU19XUk9OR19UWVBFLCByYXdFeHByLFxuICAgICAgICAgICAgICAnTmdNb2R1bGUuc2NoZW1hcyBtdXN0IGJlIGFuIGFycmF5IG9mIHNjaGVtYXMnKTtcbiAgICAgICAgfVxuICAgICAgICBjb25zdCBpZCA9IHNjaGVtYVJlZi5nZXRJZGVudGl0eUluKHNjaGVtYVJlZi5ub2RlLmdldFNvdXJjZUZpbGUoKSk7XG4gICAgICAgIGlmIChpZCA9PT0gbnVsbCB8fCBzY2hlbWFSZWYub3duZWRCeU1vZHVsZUd1ZXNzICE9PSAnQGFuZ3VsYXIvY29yZScpIHtcbiAgICAgICAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgICAgICAgIEVycm9yQ29kZS5WQUxVRV9IQVNfV1JPTkdfVFlQRSwgcmF3RXhwcixcbiAgICAgICAgICAgICAgJ05nTW9kdWxlLnNjaGVtYXMgbXVzdCBiZSBhbiBhcnJheSBvZiBzY2hlbWFzJyk7XG4gICAgICAgIH1cbiAgICAgICAgLy8gU2luY2UgYGlkYCBpcyB0aGUgYHRzLklkZW50aWZlcmAgd2l0aGluIHRoZSBzY2hlbWEgcmVmJ3MgZGVjbGFyYXRpb24gZmlsZSwgaXQncyBzYWZlIHRvXG4gICAgICAgIC8vIHVzZSBgaWQudGV4dGAgaGVyZSB0byBmaWd1cmUgb3V0IHdoaWNoIHNjaGVtYSBpcyBpbiB1c2UuIEV2ZW4gaWYgdGhlIGFjdHVhbCByZWZlcmVuY2Ugd2FzXG4gICAgICAgIC8vIHJlbmFtZWQgd2hlbiB0aGUgdXNlciBpbXBvcnRlZCBpdCwgdGhlc2UgbmFtZXMgd2lsbCBtYXRjaC5cbiAgICAgICAgc3dpdGNoIChpZC50ZXh0KSB7XG4gICAgICAgICAgY2FzZSAnQ1VTVE9NX0VMRU1FTlRTX1NDSEVNQSc6XG4gICAgICAgICAgICBzY2hlbWFzLnB1c2goQ1VTVE9NX0VMRU1FTlRTX1NDSEVNQSk7XG4gICAgICAgICAgICBicmVhaztcbiAgICAgICAgICBjYXNlICdOT19FUlJPUlNfU0NIRU1BJzpcbiAgICAgICAgICAgIHNjaGVtYXMucHVzaChOT19FUlJPUlNfU0NIRU1BKTtcbiAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgIGRlZmF1bHQ6XG4gICAgICAgICAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgICAgICAgICAgRXJyb3JDb2RlLlZBTFVFX0hBU19XUk9OR19UWVBFLCByYXdFeHByLFxuICAgICAgICAgICAgICAgIGAnJHtzY2hlbWFSZWYuZGVidWdOYW1lfScgaXMgbm90IGEgdmFsaWQgTmdNb2R1bGUgc2NoZW1hYCk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICBjb25zdCBpZDogRXhwcmVzc2lvbnxudWxsID1cbiAgICAgICAgbmdNb2R1bGUuaGFzKCdpZCcpID8gbmV3IFdyYXBwZWROb2RlRXhwcihuZ01vZHVsZS5nZXQoJ2lkJykhKSA6IG51bGw7XG4gICAgY29uc3QgdmFsdWVDb250ZXh0ID0gbm9kZS5nZXRTb3VyY2VGaWxlKCk7XG5cbiAgICBsZXQgdHlwZUNvbnRleHQgPSB2YWx1ZUNvbnRleHQ7XG4gICAgY29uc3QgdHlwZU5vZGUgPSB0aGlzLnJlZmxlY3Rvci5nZXREdHNEZWNsYXJhdGlvbihub2RlKTtcbiAgICBpZiAodHlwZU5vZGUgIT09IG51bGwpIHtcbiAgICAgIHR5cGVDb250ZXh0ID0gdHlwZU5vZGUuZ2V0U291cmNlRmlsZSgpO1xuICAgIH1cblxuICAgIGNvbnN0IGJvb3RzdHJhcCA9XG4gICAgICAgIGJvb3RzdHJhcFJlZnMubWFwKGJvb3RzdHJhcCA9PiB0aGlzLl90b1IzUmVmZXJlbmNlKGJvb3RzdHJhcCwgdmFsdWVDb250ZXh0LCB0eXBlQ29udGV4dCkpO1xuICAgIGNvbnN0IGRlY2xhcmF0aW9ucyA9XG4gICAgICAgIGRlY2xhcmF0aW9uUmVmcy5tYXAoZGVjbCA9PiB0aGlzLl90b1IzUmVmZXJlbmNlKGRlY2wsIHZhbHVlQ29udGV4dCwgdHlwZUNvbnRleHQpKTtcbiAgICBjb25zdCBpbXBvcnRzID0gaW1wb3J0UmVmcy5tYXAoaW1wID0+IHRoaXMuX3RvUjNSZWZlcmVuY2UoaW1wLCB2YWx1ZUNvbnRleHQsIHR5cGVDb250ZXh0KSk7XG4gICAgY29uc3QgZXhwb3J0cyA9IGV4cG9ydFJlZnMubWFwKGV4cCA9PiB0aGlzLl90b1IzUmVmZXJlbmNlKGV4cCwgdmFsdWVDb250ZXh0LCB0eXBlQ29udGV4dCkpO1xuXG4gICAgY29uc3QgaXNGb3J3YXJkUmVmZXJlbmNlID0gKHJlZjogUjNSZWZlcmVuY2UpID0+XG4gICAgICAgIGlzRXhwcmVzc2lvbkZvcndhcmRSZWZlcmVuY2UocmVmLnZhbHVlLCBub2RlLm5hbWUhLCB2YWx1ZUNvbnRleHQpO1xuICAgIGNvbnN0IGNvbnRhaW5zRm9yd2FyZERlY2xzID0gYm9vdHN0cmFwLnNvbWUoaXNGb3J3YXJkUmVmZXJlbmNlKSB8fFxuICAgICAgICBkZWNsYXJhdGlvbnMuc29tZShpc0ZvcndhcmRSZWZlcmVuY2UpIHx8IGltcG9ydHMuc29tZShpc0ZvcndhcmRSZWZlcmVuY2UpIHx8XG4gICAgICAgIGV4cG9ydHMuc29tZShpc0ZvcndhcmRSZWZlcmVuY2UpO1xuXG4gICAgY29uc3QgdHlwZSA9IHdyYXBUeXBlUmVmZXJlbmNlKHRoaXMucmVmbGVjdG9yLCBub2RlKTtcbiAgICBjb25zdCBpbnRlcm5hbFR5cGUgPSBuZXcgV3JhcHBlZE5vZGVFeHByKHRoaXMucmVmbGVjdG9yLmdldEludGVybmFsTmFtZU9mQ2xhc3Mobm9kZSkpO1xuICAgIGNvbnN0IGFkamFjZW50VHlwZSA9IG5ldyBXcmFwcGVkTm9kZUV4cHIodGhpcy5yZWZsZWN0b3IuZ2V0QWRqYWNlbnROYW1lT2ZDbGFzcyhub2RlKSk7XG5cbiAgICBjb25zdCBuZ01vZHVsZURlZjogUjNOZ01vZHVsZU1ldGFkYXRhID0ge1xuICAgICAgdHlwZSxcbiAgICAgIGludGVybmFsVHlwZSxcbiAgICAgIGFkamFjZW50VHlwZSxcbiAgICAgIGJvb3RzdHJhcCxcbiAgICAgIGRlY2xhcmF0aW9ucyxcbiAgICAgIGV4cG9ydHMsXG4gICAgICBpbXBvcnRzLFxuICAgICAgY29udGFpbnNGb3J3YXJkRGVjbHMsXG4gICAgICBpZCxcbiAgICAgIGVtaXRJbmxpbmU6IGZhbHNlLFxuICAgICAgLy8gVE9ETzogdG8gYmUgaW1wbGVtZW50ZWQgYXMgYSBwYXJ0IG9mIEZXLTEwMDQuXG4gICAgICBzY2hlbWFzOiBbXSxcbiAgICB9O1xuXG4gICAgY29uc3QgcmF3UHJvdmlkZXJzID0gbmdNb2R1bGUuaGFzKCdwcm92aWRlcnMnKSA/IG5nTW9kdWxlLmdldCgncHJvdmlkZXJzJykhIDogbnVsbDtcbiAgICBjb25zdCB3cmFwcGVyUHJvdmlkZXJzID0gcmF3UHJvdmlkZXJzICE9PSBudWxsID9cbiAgICAgICAgbmV3IFdyYXBwZWROb2RlRXhwcihcbiAgICAgICAgICAgIHRoaXMuYW5ub3RhdGVGb3JDbG9zdXJlQ29tcGlsZXIgPyB3cmFwRnVuY3Rpb25FeHByZXNzaW9uc0luUGFyZW5zKHJhd1Byb3ZpZGVycykgOlxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJhd1Byb3ZpZGVycykgOlxuICAgICAgICBudWxsO1xuXG4gICAgLy8gQXQgdGhpcyBwb2ludCwgb25seSBhZGQgdGhlIG1vZHVsZSdzIGltcG9ydHMgYXMgdGhlIGluamVjdG9ycycgaW1wb3J0cy4gQW55IGV4cG9ydGVkIG1vZHVsZXNcbiAgICAvLyBhcmUgYWRkZWQgZHVyaW5nIGByZXNvbHZlYCwgYXMgd2UgbmVlZCBzY29wZSBpbmZvcm1hdGlvbiB0byBiZSBhYmxlIHRvIGZpbHRlciBvdXQgZGlyZWN0aXZlc1xuICAgIC8vIGFuZCBwaXBlcyBmcm9tIHRoZSBtb2R1bGUgZXhwb3J0cy5cbiAgICBjb25zdCBpbmplY3RvckltcG9ydHM6IFdyYXBwZWROb2RlRXhwcjx0cy5FeHByZXNzaW9uPltdID0gW107XG4gICAgaWYgKG5nTW9kdWxlLmhhcygnaW1wb3J0cycpKSB7XG4gICAgICBpbmplY3RvckltcG9ydHMucHVzaChuZXcgV3JhcHBlZE5vZGVFeHByKG5nTW9kdWxlLmdldCgnaW1wb3J0cycpISkpO1xuICAgIH1cblxuICAgIGlmICh0aGlzLnJvdXRlQW5hbHl6ZXIgIT09IG51bGwpIHtcbiAgICAgIHRoaXMucm91dGVBbmFseXplci5hZGQobm9kZS5nZXRTb3VyY2VGaWxlKCksIG5hbWUsIHJhd0ltcG9ydHMsIHJhd0V4cG9ydHMsIHJhd1Byb3ZpZGVycyk7XG4gICAgfVxuXG4gICAgY29uc3QgbmdJbmplY3RvckRlZjogUjNJbmplY3Rvck1ldGFkYXRhID0ge1xuICAgICAgbmFtZSxcbiAgICAgIHR5cGUsXG4gICAgICBpbnRlcm5hbFR5cGUsXG4gICAgICBkZXBzOiBnZXRWYWxpZENvbnN0cnVjdG9yRGVwZW5kZW5jaWVzKFxuICAgICAgICAgIG5vZGUsIHRoaXMucmVmbGVjdG9yLCB0aGlzLmRlZmF1bHRJbXBvcnRSZWNvcmRlciwgdGhpcy5pc0NvcmUpLFxuICAgICAgcHJvdmlkZXJzOiB3cmFwcGVyUHJvdmlkZXJzLFxuICAgICAgaW1wb3J0czogaW5qZWN0b3JJbXBvcnRzLFxuICAgIH07XG5cbiAgICByZXR1cm4ge1xuICAgICAgYW5hbHlzaXM6IHtcbiAgICAgICAgaWQsXG4gICAgICAgIHNjaGVtYXM6IHNjaGVtYXMsXG4gICAgICAgIG1vZDogbmdNb2R1bGVEZWYsXG4gICAgICAgIGluajogbmdJbmplY3RvckRlZixcbiAgICAgICAgZGVjbGFyYXRpb25zOiBkZWNsYXJhdGlvblJlZnMsXG4gICAgICAgIHJhd0RlY2xhcmF0aW9ucyxcbiAgICAgICAgaW1wb3J0czogaW1wb3J0UmVmcyxcbiAgICAgICAgZXhwb3J0czogZXhwb3J0UmVmcyxcbiAgICAgICAgcHJvdmlkZXJzOiByYXdQcm92aWRlcnMsXG4gICAgICAgIHByb3ZpZGVyc1JlcXVpcmluZ0ZhY3Rvcnk6IHJhd1Byb3ZpZGVycyA/XG4gICAgICAgICAgICByZXNvbHZlUHJvdmlkZXJzUmVxdWlyaW5nRmFjdG9yeShyYXdQcm92aWRlcnMsIHRoaXMucmVmbGVjdG9yLCB0aGlzLmV2YWx1YXRvcikgOlxuICAgICAgICAgICAgbnVsbCxcbiAgICAgICAgbWV0YWRhdGFTdG10OiBnZW5lcmF0ZVNldENsYXNzTWV0YWRhdGFDYWxsKFxuICAgICAgICAgICAgbm9kZSwgdGhpcy5yZWZsZWN0b3IsIHRoaXMuZGVmYXVsdEltcG9ydFJlY29yZGVyLCB0aGlzLmlzQ29yZSxcbiAgICAgICAgICAgIHRoaXMuYW5ub3RhdGVGb3JDbG9zdXJlQ29tcGlsZXIpLFxuICAgICAgICBmYWN0b3J5U3ltYm9sTmFtZTogbm9kZS5uYW1lLnRleHQsXG4gICAgICB9LFxuICAgIH07XG4gIH1cblxuICByZWdpc3Rlcihub2RlOiBDbGFzc0RlY2xhcmF0aW9uLCBhbmFseXNpczogTmdNb2R1bGVBbmFseXNpcyk6IHZvaWQge1xuICAgIC8vIFJlZ2lzdGVyIHRoaXMgbW9kdWxlJ3MgaW5mb3JtYXRpb24gd2l0aCB0aGUgTG9jYWxNb2R1bGVTY29wZVJlZ2lzdHJ5LiBUaGlzIGVuc3VyZXMgdGhhdFxuICAgIC8vIGR1cmluZyB0aGUgY29tcGlsZSgpIHBoYXNlLCB0aGUgbW9kdWxlJ3MgbWV0YWRhdGEgaXMgYXZhaWxhYmxlIGZvciBzZWxlY3RvciBzY29wZVxuICAgIC8vIGNvbXB1dGF0aW9uLlxuICAgIHRoaXMubWV0YVJlZ2lzdHJ5LnJlZ2lzdGVyTmdNb2R1bGVNZXRhZGF0YSh7XG4gICAgICByZWY6IG5ldyBSZWZlcmVuY2Uobm9kZSksXG4gICAgICBzY2hlbWFzOiBhbmFseXNpcy5zY2hlbWFzLFxuICAgICAgZGVjbGFyYXRpb25zOiBhbmFseXNpcy5kZWNsYXJhdGlvbnMsXG4gICAgICBpbXBvcnRzOiBhbmFseXNpcy5pbXBvcnRzLFxuICAgICAgZXhwb3J0czogYW5hbHlzaXMuZXhwb3J0cyxcbiAgICAgIHJhd0RlY2xhcmF0aW9uczogYW5hbHlzaXMucmF3RGVjbGFyYXRpb25zLFxuICAgIH0pO1xuXG4gICAgaWYgKHRoaXMuZmFjdG9yeVRyYWNrZXIgIT09IG51bGwpIHtcbiAgICAgIHRoaXMuZmFjdG9yeVRyYWNrZXIudHJhY2sobm9kZS5nZXRTb3VyY2VGaWxlKCksIHtcbiAgICAgICAgbmFtZTogYW5hbHlzaXMuZmFjdG9yeVN5bWJvbE5hbWUsXG4gICAgICAgIGhhc0lkOiBhbmFseXNpcy5pZCAhPT0gbnVsbCxcbiAgICAgIH0pO1xuICAgIH1cblxuICAgIHRoaXMuaW5qZWN0YWJsZVJlZ2lzdHJ5LnJlZ2lzdGVySW5qZWN0YWJsZShub2RlKTtcbiAgfVxuXG4gIHJlc29sdmUobm9kZTogQ2xhc3NEZWNsYXJhdGlvbiwgYW5hbHlzaXM6IFJlYWRvbmx5PE5nTW9kdWxlQW5hbHlzaXM+KTpcbiAgICAgIFJlc29sdmVSZXN1bHQ8TmdNb2R1bGVSZXNvbHV0aW9uPiB7XG4gICAgY29uc3Qgc2NvcGUgPSB0aGlzLnNjb3BlUmVnaXN0cnkuZ2V0U2NvcGVPZk1vZHVsZShub2RlKTtcbiAgICBjb25zdCBkaWFnbm9zdGljczogdHMuRGlhZ25vc3RpY1tdID0gW107XG5cbiAgICBjb25zdCBzY29wZURpYWdub3N0aWNzID0gdGhpcy5zY29wZVJlZ2lzdHJ5LmdldERpYWdub3N0aWNzT2ZNb2R1bGUobm9kZSk7XG4gICAgaWYgKHNjb3BlRGlhZ25vc3RpY3MgIT09IG51bGwpIHtcbiAgICAgIGRpYWdub3N0aWNzLnB1c2goLi4uc2NvcGVEaWFnbm9zdGljcyk7XG4gICAgfVxuXG4gICAgaWYgKGFuYWx5c2lzLnByb3ZpZGVyc1JlcXVpcmluZ0ZhY3RvcnkgIT09IG51bGwpIHtcbiAgICAgIGNvbnN0IHByb3ZpZGVyRGlhZ25vc3RpY3MgPSBnZXRQcm92aWRlckRpYWdub3N0aWNzKFxuICAgICAgICAgIGFuYWx5c2lzLnByb3ZpZGVyc1JlcXVpcmluZ0ZhY3RvcnksIGFuYWx5c2lzLnByb3ZpZGVycyEsIHRoaXMuaW5qZWN0YWJsZVJlZ2lzdHJ5KTtcbiAgICAgIGRpYWdub3N0aWNzLnB1c2goLi4ucHJvdmlkZXJEaWFnbm9zdGljcyk7XG4gICAgfVxuXG4gICAgY29uc3QgZGF0YTogTmdNb2R1bGVSZXNvbHV0aW9uID0ge1xuICAgICAgaW5qZWN0b3JJbXBvcnRzOiBbXSxcbiAgICB9O1xuXG4gICAgaWYgKHNjb3BlICE9PSBudWxsICYmIHNjb3BlICE9PSAnZXJyb3InKSB7XG4gICAgICAvLyBVc2luZyB0aGUgc2NvcGUgaW5mb3JtYXRpb24sIGV4dGVuZCB0aGUgaW5qZWN0b3IncyBpbXBvcnRzIHVzaW5nIHRoZSBtb2R1bGVzIHRoYXQgYXJlXG4gICAgICAvLyBzcGVjaWZpZWQgYXMgbW9kdWxlIGV4cG9ydHMuXG4gICAgICBjb25zdCBjb250ZXh0ID0gZ2V0U291cmNlRmlsZShub2RlKTtcbiAgICAgIGZvciAoY29uc3QgZXhwb3J0UmVmIG9mIGFuYWx5c2lzLmV4cG9ydHMpIHtcbiAgICAgICAgaWYgKGlzTmdNb2R1bGUoZXhwb3J0UmVmLm5vZGUsIHNjb3BlLmNvbXBpbGF0aW9uKSkge1xuICAgICAgICAgIGRhdGEuaW5qZWN0b3JJbXBvcnRzLnB1c2godGhpcy5yZWZFbWl0dGVyLmVtaXQoZXhwb3J0UmVmLCBjb250ZXh0KSk7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgZm9yIChjb25zdCBkZWNsIG9mIGFuYWx5c2lzLmRlY2xhcmF0aW9ucykge1xuICAgICAgICBjb25zdCBtZXRhZGF0YSA9IHRoaXMubWV0YVJlYWRlci5nZXREaXJlY3RpdmVNZXRhZGF0YShkZWNsKTtcblxuICAgICAgICBpZiAobWV0YWRhdGEgIT09IG51bGwgJiYgbWV0YWRhdGEuc2VsZWN0b3IgPT09IG51bGwpIHtcbiAgICAgICAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgICAgICAgIEVycm9yQ29kZS5ESVJFQ1RJVkVfTUlTU0lOR19TRUxFQ1RPUiwgZGVjbC5ub2RlLFxuICAgICAgICAgICAgICBgRGlyZWN0aXZlICR7ZGVjbC5ub2RlLm5hbWUudGV4dH0gaGFzIG5vIHNlbGVjdG9yLCBwbGVhc2UgYWRkIGl0IWApO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgaWYgKGRpYWdub3N0aWNzLmxlbmd0aCA+IDApIHtcbiAgICAgIHJldHVybiB7ZGlhZ25vc3RpY3N9O1xuICAgIH1cblxuICAgIGlmIChzY29wZSA9PT0gbnVsbCB8fCBzY29wZSA9PT0gJ2Vycm9yJyB8fCBzY29wZS5yZWV4cG9ydHMgPT09IG51bGwpIHtcbiAgICAgIHJldHVybiB7ZGF0YX07XG4gICAgfSBlbHNlIHtcbiAgICAgIHJldHVybiB7XG4gICAgICAgIGRhdGEsXG4gICAgICAgIHJlZXhwb3J0czogc2NvcGUucmVleHBvcnRzLFxuICAgICAgfTtcbiAgICB9XG4gIH1cblxuICBjb21waWxlKFxuICAgICAgbm9kZTogQ2xhc3NEZWNsYXJhdGlvbiwgYW5hbHlzaXM6IFJlYWRvbmx5PE5nTW9kdWxlQW5hbHlzaXM+LFxuICAgICAgcmVzb2x1dGlvbjogUmVhZG9ubHk8TmdNb2R1bGVSZXNvbHV0aW9uPik6IENvbXBpbGVSZXN1bHRbXSB7XG4gICAgLy8gIE1lcmdlIHRoZSBpbmplY3RvciBpbXBvcnRzICh3aGljaCBhcmUgJ2V4cG9ydHMnIHRoYXQgd2VyZSBsYXRlciBmb3VuZCB0byBiZSBOZ01vZHVsZXMpXG4gICAgLy8gIGNvbXB1dGVkIGR1cmluZyByZXNvbHV0aW9uIHdpdGggdGhlIG9uZXMgZnJvbSBhbmFseXNpcy5cbiAgICBjb25zdCBuZ0luamVjdG9yRGVmID0gY29tcGlsZUluamVjdG9yKHtcbiAgICAgIC4uLmFuYWx5c2lzLmluaixcbiAgICAgIGltcG9ydHM6IFsuLi5hbmFseXNpcy5pbmouaW1wb3J0cywgLi4ucmVzb2x1dGlvbi5pbmplY3RvckltcG9ydHNdLFxuICAgIH0pO1xuICAgIGNvbnN0IG5nTW9kdWxlRGVmID0gY29tcGlsZU5nTW9kdWxlKGFuYWx5c2lzLm1vZCk7XG4gICAgY29uc3QgbmdNb2R1bGVTdGF0ZW1lbnRzID0gbmdNb2R1bGVEZWYuYWRkaXRpb25hbFN0YXRlbWVudHM7XG4gICAgaWYgKGFuYWx5c2lzLm1ldGFkYXRhU3RtdCAhPT0gbnVsbCkge1xuICAgICAgbmdNb2R1bGVTdGF0ZW1lbnRzLnB1c2goYW5hbHlzaXMubWV0YWRhdGFTdG10KTtcbiAgICB9XG4gICAgY29uc3QgY29udGV4dCA9IGdldFNvdXJjZUZpbGUobm9kZSk7XG4gICAgZm9yIChjb25zdCBkZWNsIG9mIGFuYWx5c2lzLmRlY2xhcmF0aW9ucykge1xuICAgICAgaWYgKHRoaXMuc2NvcGVSZWdpc3RyeS5nZXRSZXF1aXJlc1JlbW90ZVNjb3BlKGRlY2wubm9kZSkpIHtcbiAgICAgICAgY29uc3Qgc2NvcGUgPSB0aGlzLnNjb3BlUmVnaXN0cnkuZ2V0U2NvcGVPZk1vZHVsZSh0cy5nZXRPcmlnaW5hbE5vZGUobm9kZSkgYXMgdHlwZW9mIG5vZGUpO1xuICAgICAgICBpZiAoc2NvcGUgPT09IG51bGwgfHwgc2NvcGUgPT09ICdlcnJvcicpIHtcbiAgICAgICAgICBjb250aW51ZTtcbiAgICAgICAgfVxuXG4gICAgICAgIGNvbnN0IGRpcmVjdGl2ZXMgPSBzY29wZS5jb21waWxhdGlvbi5kaXJlY3RpdmVzLm1hcChcbiAgICAgICAgICAgIGRpcmVjdGl2ZSA9PiB0aGlzLnJlZkVtaXR0ZXIuZW1pdChkaXJlY3RpdmUucmVmLCBjb250ZXh0KSk7XG4gICAgICAgIGNvbnN0IHBpcGVzID0gc2NvcGUuY29tcGlsYXRpb24ucGlwZXMubWFwKHBpcGUgPT4gdGhpcy5yZWZFbWl0dGVyLmVtaXQocGlwZS5yZWYsIGNvbnRleHQpKTtcbiAgICAgICAgY29uc3QgZGlyZWN0aXZlQXJyYXkgPSBuZXcgTGl0ZXJhbEFycmF5RXhwcihkaXJlY3RpdmVzKTtcbiAgICAgICAgY29uc3QgcGlwZXNBcnJheSA9IG5ldyBMaXRlcmFsQXJyYXlFeHByKHBpcGVzKTtcbiAgICAgICAgY29uc3QgZGVjbEV4cHIgPSB0aGlzLnJlZkVtaXR0ZXIuZW1pdChkZWNsLCBjb250ZXh0KSE7XG4gICAgICAgIGNvbnN0IHNldENvbXBvbmVudFNjb3BlID0gbmV3IEV4dGVybmFsRXhwcihSM0lkZW50aWZpZXJzLnNldENvbXBvbmVudFNjb3BlKTtcbiAgICAgICAgY29uc3QgY2FsbEV4cHIgPVxuICAgICAgICAgICAgbmV3IEludm9rZUZ1bmN0aW9uRXhwcihzZXRDb21wb25lbnRTY29wZSwgW2RlY2xFeHByLCBkaXJlY3RpdmVBcnJheSwgcGlwZXNBcnJheV0pO1xuXG4gICAgICAgIG5nTW9kdWxlU3RhdGVtZW50cy5wdXNoKGNhbGxFeHByLnRvU3RtdCgpKTtcbiAgICAgIH1cbiAgICB9XG4gICAgY29uc3QgcmVzOiBDb21waWxlUmVzdWx0W10gPSBbXG4gICAgICB7XG4gICAgICAgIG5hbWU6ICfJtW1vZCcsXG4gICAgICAgIGluaXRpYWxpemVyOiBuZ01vZHVsZURlZi5leHByZXNzaW9uLFxuICAgICAgICBzdGF0ZW1lbnRzOiBuZ01vZHVsZVN0YXRlbWVudHMsXG4gICAgICAgIHR5cGU6IG5nTW9kdWxlRGVmLnR5cGUsXG4gICAgICB9LFxuICAgICAge1xuICAgICAgICBuYW1lOiAnybVpbmonLFxuICAgICAgICBpbml0aWFsaXplcjogbmdJbmplY3RvckRlZi5leHByZXNzaW9uLFxuICAgICAgICBzdGF0ZW1lbnRzOiBuZ0luamVjdG9yRGVmLnN0YXRlbWVudHMsXG4gICAgICAgIHR5cGU6IG5nSW5qZWN0b3JEZWYudHlwZSxcbiAgICAgIH1cbiAgICBdO1xuXG4gICAgaWYgKHRoaXMubG9jYWxlSWQpIHtcbiAgICAgIHJlcy5wdXNoKHtcbiAgICAgICAgbmFtZTogJ8m1bG9jJyxcbiAgICAgICAgaW5pdGlhbGl6ZXI6IG5ldyBMaXRlcmFsRXhwcih0aGlzLmxvY2FsZUlkKSxcbiAgICAgICAgc3RhdGVtZW50czogW10sXG4gICAgICAgIHR5cGU6IFNUUklOR19UWVBFXG4gICAgICB9KTtcbiAgICB9XG5cbiAgICByZXR1cm4gcmVzO1xuICB9XG5cbiAgcHJpdmF0ZSBfdG9SM1JlZmVyZW5jZShcbiAgICAgIHZhbHVlUmVmOiBSZWZlcmVuY2U8dHMuRGVjbGFyYXRpb24+LCB2YWx1ZUNvbnRleHQ6IHRzLlNvdXJjZUZpbGUsXG4gICAgICB0eXBlQ29udGV4dDogdHMuU291cmNlRmlsZSk6IFIzUmVmZXJlbmNlIHtcbiAgICBpZiAodmFsdWVSZWYuaGFzT3duaW5nTW9kdWxlR3Vlc3MpIHtcbiAgICAgIHJldHVybiB0b1IzUmVmZXJlbmNlKHZhbHVlUmVmLCB2YWx1ZVJlZiwgdmFsdWVDb250ZXh0LCB2YWx1ZUNvbnRleHQsIHRoaXMucmVmRW1pdHRlcik7XG4gICAgfSBlbHNlIHtcbiAgICAgIGxldCB0eXBlUmVmID0gdmFsdWVSZWY7XG4gICAgICBsZXQgdHlwZU5vZGUgPSB0aGlzLnJlZmxlY3Rvci5nZXREdHNEZWNsYXJhdGlvbih0eXBlUmVmLm5vZGUpO1xuICAgICAgaWYgKHR5cGVOb2RlICE9PSBudWxsICYmIHRzLmlzQ2xhc3NEZWNsYXJhdGlvbih0eXBlTm9kZSkpIHtcbiAgICAgICAgdHlwZVJlZiA9IG5ldyBSZWZlcmVuY2UodHlwZU5vZGUpO1xuICAgICAgfVxuICAgICAgcmV0dXJuIHRvUjNSZWZlcmVuY2UodmFsdWVSZWYsIHR5cGVSZWYsIHZhbHVlQ29udGV4dCwgdHlwZUNvbnRleHQsIHRoaXMucmVmRW1pdHRlcik7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIEdpdmVuIGEgYEZ1bmN0aW9uRGVjbGFyYXRpb25gLCBgTWV0aG9kRGVjbGFyYXRpb25gIG9yIGBGdW5jdGlvbkV4cHJlc3Npb25gLCBjaGVjayBpZiBpdCBpc1xuICAgKiB0eXBlZCBhcyBhIGBNb2R1bGVXaXRoUHJvdmlkZXJzYCBhbmQgcmV0dXJuIGFuIGV4cHJlc3Npb24gcmVmZXJlbmNpbmcgdGhlIG1vZHVsZSBpZiBhdmFpbGFibGUuXG4gICAqL1xuICBwcml2YXRlIF9leHRyYWN0TW9kdWxlRnJvbU1vZHVsZVdpdGhQcm92aWRlcnNGbihub2RlOiB0cy5GdW5jdGlvbkRlY2xhcmF0aW9ufFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0cy5NZXRob2REZWNsYXJhdGlvbnxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdHMuRnVuY3Rpb25FeHByZXNzaW9uKTogdHMuRXhwcmVzc2lvbnxudWxsIHtcbiAgICBjb25zdCB0eXBlID0gbm9kZS50eXBlIHx8IG51bGw7XG4gICAgcmV0dXJuIHR5cGUgJiZcbiAgICAgICAgKHRoaXMuX3JlZmxlY3RNb2R1bGVGcm9tVHlwZVBhcmFtKHR5cGUsIG5vZGUpIHx8IHRoaXMuX3JlZmxlY3RNb2R1bGVGcm9tTGl0ZXJhbFR5cGUodHlwZSkpO1xuICB9XG5cbiAgLyoqXG4gICAqIFJldHJpZXZlIGFuIGBOZ01vZHVsZWAgaWRlbnRpZmllciAoVCkgZnJvbSB0aGUgc3BlY2lmaWVkIGB0eXBlYCwgaWYgaXQgaXMgb2YgdGhlIGZvcm06XG4gICAqIGBNb2R1bGVXaXRoUHJvdmlkZXJzPFQ+YFxuICAgKiBAcGFyYW0gdHlwZSBUaGUgdHlwZSB0byByZWZsZWN0IG9uLlxuICAgKiBAcmV0dXJucyB0aGUgaWRlbnRpZmllciBvZiB0aGUgTmdNb2R1bGUgdHlwZSBpZiBmb3VuZCwgb3IgbnVsbCBvdGhlcndpc2UuXG4gICAqL1xuICBwcml2YXRlIF9yZWZsZWN0TW9kdWxlRnJvbVR5cGVQYXJhbShcbiAgICAgIHR5cGU6IHRzLlR5cGVOb2RlLFxuICAgICAgbm9kZTogdHMuRnVuY3Rpb25EZWNsYXJhdGlvbnx0cy5NZXRob2REZWNsYXJhdGlvbnx0cy5GdW5jdGlvbkV4cHJlc3Npb24pOiB0cy5FeHByZXNzaW9ufG51bGwge1xuICAgIC8vIEV4YW1pbmUgdGhlIHR5cGUgb2YgdGhlIGZ1bmN0aW9uIHRvIHNlZSBpZiBpdCdzIGEgTW9kdWxlV2l0aFByb3ZpZGVycyByZWZlcmVuY2UuXG4gICAgaWYgKCF0cy5pc1R5cGVSZWZlcmVuY2VOb2RlKHR5cGUpKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICBjb25zdCB0eXBlTmFtZSA9IHR5cGUgJiZcbiAgICAgICAgICAgICh0cy5pc0lkZW50aWZpZXIodHlwZS50eXBlTmFtZSkgJiYgdHlwZS50eXBlTmFtZSB8fFxuICAgICAgICAgICAgIHRzLmlzUXVhbGlmaWVkTmFtZSh0eXBlLnR5cGVOYW1lKSAmJiB0eXBlLnR5cGVOYW1lLnJpZ2h0KSB8fFxuICAgICAgICBudWxsO1xuICAgIGlmICh0eXBlTmFtZSA9PT0gbnVsbCkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuXG4gICAgLy8gTG9vayBhdCB0aGUgdHlwZSBpdHNlbGYgdG8gc2VlIHdoZXJlIGl0IGNvbWVzIGZyb20uXG4gICAgY29uc3QgaWQgPSB0aGlzLnJlZmxlY3Rvci5nZXRJbXBvcnRPZklkZW50aWZpZXIodHlwZU5hbWUpO1xuXG4gICAgLy8gSWYgaXQncyBub3QgbmFtZWQgTW9kdWxlV2l0aFByb3ZpZGVycywgYmFpbC5cbiAgICBpZiAoaWQgPT09IG51bGwgfHwgaWQubmFtZSAhPT0gJ01vZHVsZVdpdGhQcm92aWRlcnMnKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICAvLyBJZiBpdCdzIG5vdCBmcm9tIEBhbmd1bGFyL2NvcmUsIGJhaWwuXG4gICAgaWYgKCF0aGlzLmlzQ29yZSAmJiBpZC5mcm9tICE9PSAnQGFuZ3VsYXIvY29yZScpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIC8vIElmIHRoZXJlJ3Mgbm8gdHlwZSBwYXJhbWV0ZXIgc3BlY2lmaWVkLCBiYWlsLlxuICAgIGlmICh0eXBlLnR5cGVBcmd1bWVudHMgPT09IHVuZGVmaW5lZCB8fCB0eXBlLnR5cGVBcmd1bWVudHMubGVuZ3RoICE9PSAxKSB7XG4gICAgICBjb25zdCBwYXJlbnQgPVxuICAgICAgICAgIHRzLmlzTWV0aG9kRGVjbGFyYXRpb24obm9kZSkgJiYgdHMuaXNDbGFzc0RlY2xhcmF0aW9uKG5vZGUucGFyZW50KSA/IG5vZGUucGFyZW50IDogbnVsbDtcbiAgICAgIGNvbnN0IHN5bWJvbE5hbWUgPSAocGFyZW50ICYmIHBhcmVudC5uYW1lID8gcGFyZW50Lm5hbWUuZ2V0VGV4dCgpICsgJy4nIDogJycpICtcbiAgICAgICAgICAobm9kZS5uYW1lID8gbm9kZS5uYW1lLmdldFRleHQoKSA6ICdhbm9ueW1vdXMnKTtcbiAgICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgICBFcnJvckNvZGUuTkdNT0RVTEVfTU9EVUxFX1dJVEhfUFJPVklERVJTX01JU1NJTkdfR0VORVJJQywgdHlwZSxcbiAgICAgICAgICBgJHtzeW1ib2xOYW1lfSByZXR1cm5zIGEgTW9kdWxlV2l0aFByb3ZpZGVycyB0eXBlIHdpdGhvdXQgYSBnZW5lcmljIHR5cGUgYXJndW1lbnQuIGAgK1xuICAgICAgICAgICAgICBgUGxlYXNlIGFkZCBhIGdlbmVyaWMgdHlwZSBhcmd1bWVudCB0byB0aGUgTW9kdWxlV2l0aFByb3ZpZGVycyB0eXBlLiBJZiB0aGlzIGAgK1xuICAgICAgICAgICAgICBgb2NjdXJyZW5jZSBpcyBpbiBsaWJyYXJ5IGNvZGUgeW91IGRvbid0IGNvbnRyb2wsIHBsZWFzZSBjb250YWN0IHRoZSBsaWJyYXJ5IGF1dGhvcnMuYCk7XG4gICAgfVxuXG4gICAgY29uc3QgYXJnID0gdHlwZS50eXBlQXJndW1lbnRzWzBdO1xuXG4gICAgcmV0dXJuIHR5cGVOb2RlVG9WYWx1ZUV4cHIoYXJnKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBSZXRyaWV2ZSBhbiBgTmdNb2R1bGVgIGlkZW50aWZpZXIgKFQpIGZyb20gdGhlIHNwZWNpZmllZCBgdHlwZWAsIGlmIGl0IGlzIG9mIHRoZSBmb3JtOlxuICAgKiBgQXxCfHtuZ01vZHVsZTogVH18Q2AuXG4gICAqIEBwYXJhbSB0eXBlIFRoZSB0eXBlIHRvIHJlZmxlY3Qgb24uXG4gICAqIEByZXR1cm5zIHRoZSBpZGVudGlmaWVyIG9mIHRoZSBOZ01vZHVsZSB0eXBlIGlmIGZvdW5kLCBvciBudWxsIG90aGVyd2lzZS5cbiAgICovXG4gIHByaXZhdGUgX3JlZmxlY3RNb2R1bGVGcm9tTGl0ZXJhbFR5cGUodHlwZTogdHMuVHlwZU5vZGUpOiB0cy5FeHByZXNzaW9ufG51bGwge1xuICAgIGlmICghdHMuaXNJbnRlcnNlY3Rpb25UeXBlTm9kZSh0eXBlKSkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIGZvciAoY29uc3QgdCBvZiB0eXBlLnR5cGVzKSB7XG4gICAgICBpZiAodHMuaXNUeXBlTGl0ZXJhbE5vZGUodCkpIHtcbiAgICAgICAgZm9yIChjb25zdCBtIG9mIHQubWVtYmVycykge1xuICAgICAgICAgIGNvbnN0IG5nTW9kdWxlVHlwZSA9IHRzLmlzUHJvcGVydHlTaWduYXR1cmUobSkgJiYgdHMuaXNJZGVudGlmaWVyKG0ubmFtZSkgJiZcbiAgICAgICAgICAgICAgICAgIG0ubmFtZS50ZXh0ID09PSAnbmdNb2R1bGUnICYmIG0udHlwZSB8fFxuICAgICAgICAgICAgICBudWxsO1xuICAgICAgICAgIGNvbnN0IG5nTW9kdWxlRXhwcmVzc2lvbiA9IG5nTW9kdWxlVHlwZSAmJiB0eXBlTm9kZVRvVmFsdWVFeHByKG5nTW9kdWxlVHlwZSk7XG4gICAgICAgICAgaWYgKG5nTW9kdWxlRXhwcmVzc2lvbikge1xuICAgICAgICAgICAgcmV0dXJuIG5nTW9kdWxlRXhwcmVzc2lvbjtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICAvLyBWZXJpZnkgdGhhdCBhIGB0cy5EZWNsYXJhdGlvbmAgcmVmZXJlbmNlIGlzIGEgYENsYXNzRGVjbGFyYXRpb25gIHJlZmVyZW5jZS5cbiAgcHJpdmF0ZSBpc0NsYXNzRGVjbGFyYXRpb25SZWZlcmVuY2UocmVmOiBSZWZlcmVuY2U8dHMuRGVjbGFyYXRpb24+KTpcbiAgICAgIHJlZiBpcyBSZWZlcmVuY2U8Q2xhc3NEZWNsYXJhdGlvbj4ge1xuICAgIHJldHVybiB0aGlzLnJlZmxlY3Rvci5pc0NsYXNzKHJlZi5ub2RlKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBDb21wdXRlIGEgbGlzdCBvZiBgUmVmZXJlbmNlYHMgZnJvbSBhIHJlc29sdmVkIG1ldGFkYXRhIHZhbHVlLlxuICAgKi9cbiAgcHJpdmF0ZSByZXNvbHZlVHlwZUxpc3QoXG4gICAgICBleHByOiB0cy5Ob2RlLCByZXNvbHZlZExpc3Q6IFJlc29sdmVkVmFsdWUsIGNsYXNzTmFtZTogc3RyaW5nLFxuICAgICAgYXJyYXlOYW1lOiBzdHJpbmcpOiBSZWZlcmVuY2U8Q2xhc3NEZWNsYXJhdGlvbj5bXSB7XG4gICAgY29uc3QgcmVmTGlzdDogUmVmZXJlbmNlPENsYXNzRGVjbGFyYXRpb24+W10gPSBbXTtcbiAgICBpZiAoIUFycmF5LmlzQXJyYXkocmVzb2x2ZWRMaXN0KSkge1xuICAgICAgdGhyb3cgbmV3IEZhdGFsRGlhZ25vc3RpY0Vycm9yKFxuICAgICAgICAgIEVycm9yQ29kZS5WQUxVRV9IQVNfV1JPTkdfVFlQRSwgZXhwcixcbiAgICAgICAgICBgRXhwZWN0ZWQgYXJyYXkgd2hlbiByZWFkaW5nIHRoZSBOZ01vZHVsZS4ke2FycmF5TmFtZX0gb2YgJHtjbGFzc05hbWV9YCk7XG4gICAgfVxuXG4gICAgcmVzb2x2ZWRMaXN0LmZvckVhY2goKGVudHJ5LCBpZHgpID0+IHtcbiAgICAgIC8vIFVud3JhcCBNb2R1bGVXaXRoUHJvdmlkZXJzIGZvciBtb2R1bGVzIHRoYXQgYXJlIGxvY2FsbHkgZGVjbGFyZWQgKGFuZCB0aHVzIHN0YXRpY1xuICAgICAgLy8gcmVzb2x1dGlvbiB3YXMgYWJsZSB0byBkZXNjZW5kIGludG8gdGhlIGZ1bmN0aW9uIGFuZCByZXR1cm4gYW4gb2JqZWN0IGxpdGVyYWwsIGEgTWFwKS5cbiAgICAgIGlmIChlbnRyeSBpbnN0YW5jZW9mIE1hcCAmJiBlbnRyeS5oYXMoJ25nTW9kdWxlJykpIHtcbiAgICAgICAgZW50cnkgPSBlbnRyeS5nZXQoJ25nTW9kdWxlJykhO1xuICAgICAgfVxuXG4gICAgICBpZiAoQXJyYXkuaXNBcnJheShlbnRyeSkpIHtcbiAgICAgICAgLy8gUmVjdXJzZSBpbnRvIG5lc3RlZCBhcnJheXMuXG4gICAgICAgIHJlZkxpc3QucHVzaCguLi50aGlzLnJlc29sdmVUeXBlTGlzdChleHByLCBlbnRyeSwgY2xhc3NOYW1lLCBhcnJheU5hbWUpKTtcbiAgICAgIH0gZWxzZSBpZiAoaXNEZWNsYXJhdGlvblJlZmVyZW5jZShlbnRyeSkpIHtcbiAgICAgICAgaWYgKCF0aGlzLmlzQ2xhc3NEZWNsYXJhdGlvblJlZmVyZW5jZShlbnRyeSkpIHtcbiAgICAgICAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgICAgICAgIEVycm9yQ29kZS5WQUxVRV9IQVNfV1JPTkdfVFlQRSwgZW50cnkubm9kZSxcbiAgICAgICAgICAgICAgYFZhbHVlIGF0IHBvc2l0aW9uICR7aWR4fSBpbiB0aGUgTmdNb2R1bGUuJHthcnJheU5hbWV9IG9mICR7XG4gICAgICAgICAgICAgICAgICBjbGFzc05hbWV9IGlzIG5vdCBhIGNsYXNzYCk7XG4gICAgICAgIH1cbiAgICAgICAgcmVmTGlzdC5wdXNoKGVudHJ5KTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIC8vIFRPRE8oYWx4aHViKTogUHJvZHVjZSBhIGJldHRlciBkaWFnbm9zdGljIGhlcmUgLSB0aGUgYXJyYXkgaW5kZXggbWF5IGJlIGFuIGlubmVyIGFycmF5LlxuICAgICAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgICAgICBFcnJvckNvZGUuVkFMVUVfSEFTX1dST05HX1RZUEUsIGV4cHIsXG4gICAgICAgICAgICBgVmFsdWUgYXQgcG9zaXRpb24gJHtpZHh9IGluIHRoZSBOZ01vZHVsZS4ke2FycmF5TmFtZX0gb2YgJHtcbiAgICAgICAgICAgICAgICBjbGFzc05hbWV9IGlzIG5vdCBhIHJlZmVyZW5jZTogJHtlbnRyeX1gKTtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIHJldHVybiByZWZMaXN0O1xuICB9XG59XG5cbmZ1bmN0aW9uIGlzTmdNb2R1bGUobm9kZTogQ2xhc3NEZWNsYXJhdGlvbiwgY29tcGlsYXRpb246IFNjb3BlRGF0YSk6IGJvb2xlYW4ge1xuICByZXR1cm4gIWNvbXBpbGF0aW9uLmRpcmVjdGl2ZXMuc29tZShkaXJlY3RpdmUgPT4gZGlyZWN0aXZlLnJlZi5ub2RlID09PSBub2RlKSAmJlxuICAgICAgIWNvbXBpbGF0aW9uLnBpcGVzLnNvbWUocGlwZSA9PiBwaXBlLnJlZi5ub2RlID09PSBub2RlKTtcbn1cblxuZnVuY3Rpb24gaXNEZWNsYXJhdGlvblJlZmVyZW5jZShyZWY6IGFueSk6IHJlZiBpcyBSZWZlcmVuY2U8dHMuRGVjbGFyYXRpb24+IHtcbiAgcmV0dXJuIHJlZiBpbnN0YW5jZW9mIFJlZmVyZW5jZSAmJlxuICAgICAgKHRzLmlzQ2xhc3NEZWNsYXJhdGlvbihyZWYubm9kZSkgfHwgdHMuaXNGdW5jdGlvbkRlY2xhcmF0aW9uKHJlZi5ub2RlKSB8fFxuICAgICAgIHRzLmlzVmFyaWFibGVEZWNsYXJhdGlvbihyZWYubm9kZSkpO1xufVxuIl19