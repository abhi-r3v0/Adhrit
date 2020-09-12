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
        define("@angular/compiler/src/aot/static_reflector", ["require", "exports", "tslib", "@angular/compiler/src/compile_metadata", "@angular/compiler/src/core", "@angular/compiler/src/util", "@angular/compiler/src/aot/formatted_error", "@angular/compiler/src/aot/static_symbol"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    var compile_metadata_1 = require("@angular/compiler/src/compile_metadata");
    var core_1 = require("@angular/compiler/src/core");
    var util_1 = require("@angular/compiler/src/util");
    var formatted_error_1 = require("@angular/compiler/src/aot/formatted_error");
    var static_symbol_1 = require("@angular/compiler/src/aot/static_symbol");
    var ANGULAR_CORE = '@angular/core';
    var ANGULAR_ROUTER = '@angular/router';
    var HIDDEN_KEY = /^\$.*\$$/;
    var IGNORE = {
        __symbolic: 'ignore'
    };
    var USE_VALUE = 'useValue';
    var PROVIDE = 'provide';
    var REFERENCE_SET = new Set([USE_VALUE, 'useFactory', 'data', 'id', 'loadChildren']);
    var TYPEGUARD_POSTFIX = 'TypeGuard';
    var USE_IF = 'UseIf';
    function shouldIgnore(value) {
        return value && value.__symbolic == 'ignore';
    }
    /**
     * A static reflector implements enough of the Reflector API that is necessary to compile
     * templates statically.
     */
    var StaticReflector = /** @class */ (function () {
        function StaticReflector(summaryResolver, symbolResolver, knownMetadataClasses, knownMetadataFunctions, errorRecorder) {
            var _this = this;
            if (knownMetadataClasses === void 0) { knownMetadataClasses = []; }
            if (knownMetadataFunctions === void 0) { knownMetadataFunctions = []; }
            this.summaryResolver = summaryResolver;
            this.symbolResolver = symbolResolver;
            this.errorRecorder = errorRecorder;
            this.annotationCache = new Map();
            this.shallowAnnotationCache = new Map();
            this.propertyCache = new Map();
            this.parameterCache = new Map();
            this.methodCache = new Map();
            this.staticCache = new Map();
            this.conversionMap = new Map();
            this.resolvedExternalReferences = new Map();
            this.annotationForParentClassWithSummaryKind = new Map();
            this.initializeConversionMap();
            knownMetadataClasses.forEach(function (kc) { return _this._registerDecoratorOrConstructor(_this.getStaticSymbol(kc.filePath, kc.name), kc.ctor); });
            knownMetadataFunctions.forEach(function (kf) { return _this._registerFunction(_this.getStaticSymbol(kf.filePath, kf.name), kf.fn); });
            this.annotationForParentClassWithSummaryKind.set(compile_metadata_1.CompileSummaryKind.Directive, [core_1.createDirective, core_1.createComponent]);
            this.annotationForParentClassWithSummaryKind.set(compile_metadata_1.CompileSummaryKind.Pipe, [core_1.createPipe]);
            this.annotationForParentClassWithSummaryKind.set(compile_metadata_1.CompileSummaryKind.NgModule, [core_1.createNgModule]);
            this.annotationForParentClassWithSummaryKind.set(compile_metadata_1.CompileSummaryKind.Injectable, [core_1.createInjectable, core_1.createPipe, core_1.createDirective, core_1.createComponent, core_1.createNgModule]);
        }
        StaticReflector.prototype.componentModuleUrl = function (typeOrFunc) {
            var staticSymbol = this.findSymbolDeclaration(typeOrFunc);
            return this.symbolResolver.getResourcePath(staticSymbol);
        };
        /**
         * Invalidate the specified `symbols` on program change.
         * @param symbols
         */
        StaticReflector.prototype.invalidateSymbols = function (symbols) {
            var e_1, _a;
            try {
                for (var symbols_1 = tslib_1.__values(symbols), symbols_1_1 = symbols_1.next(); !symbols_1_1.done; symbols_1_1 = symbols_1.next()) {
                    var symbol = symbols_1_1.value;
                    this.annotationCache.delete(symbol);
                    this.shallowAnnotationCache.delete(symbol);
                    this.propertyCache.delete(symbol);
                    this.parameterCache.delete(symbol);
                    this.methodCache.delete(symbol);
                    this.staticCache.delete(symbol);
                    this.conversionMap.delete(symbol);
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (symbols_1_1 && !symbols_1_1.done && (_a = symbols_1.return)) _a.call(symbols_1);
                }
                finally { if (e_1) throw e_1.error; }
            }
        };
        StaticReflector.prototype.resolveExternalReference = function (ref, containingFile) {
            var key = undefined;
            if (!containingFile) {
                key = ref.moduleName + ":" + ref.name;
                var declarationSymbol_1 = this.resolvedExternalReferences.get(key);
                if (declarationSymbol_1)
                    return declarationSymbol_1;
            }
            var refSymbol = this.symbolResolver.getSymbolByModule(ref.moduleName, ref.name, containingFile);
            var declarationSymbol = this.findSymbolDeclaration(refSymbol);
            if (!containingFile) {
                this.symbolResolver.recordModuleNameForFileName(refSymbol.filePath, ref.moduleName);
                this.symbolResolver.recordImportAs(declarationSymbol, refSymbol);
            }
            if (key) {
                this.resolvedExternalReferences.set(key, declarationSymbol);
            }
            return declarationSymbol;
        };
        StaticReflector.prototype.findDeclaration = function (moduleUrl, name, containingFile) {
            return this.findSymbolDeclaration(this.symbolResolver.getSymbolByModule(moduleUrl, name, containingFile));
        };
        StaticReflector.prototype.tryFindDeclaration = function (moduleUrl, name, containingFile) {
            var _this = this;
            return this.symbolResolver.ignoreErrorsFor(function () { return _this.findDeclaration(moduleUrl, name, containingFile); });
        };
        StaticReflector.prototype.findSymbolDeclaration = function (symbol) {
            var resolvedSymbol = this.symbolResolver.resolveSymbol(symbol);
            if (resolvedSymbol) {
                var resolvedMetadata = resolvedSymbol.metadata;
                if (resolvedMetadata && resolvedMetadata.__symbolic === 'resolved') {
                    resolvedMetadata = resolvedMetadata.symbol;
                }
                if (resolvedMetadata instanceof static_symbol_1.StaticSymbol) {
                    return this.findSymbolDeclaration(resolvedSymbol.metadata);
                }
            }
            return symbol;
        };
        StaticReflector.prototype.tryAnnotations = function (type) {
            var originalRecorder = this.errorRecorder;
            this.errorRecorder = function (error, fileName) { };
            try {
                return this.annotations(type);
            }
            finally {
                this.errorRecorder = originalRecorder;
            }
        };
        StaticReflector.prototype.annotations = function (type) {
            var _this = this;
            return this._annotations(type, function (type, decorators) { return _this.simplify(type, decorators); }, this.annotationCache);
        };
        StaticReflector.prototype.shallowAnnotations = function (type) {
            var _this = this;
            return this._annotations(type, function (type, decorators) { return _this.simplify(type, decorators, true); }, this.shallowAnnotationCache);
        };
        StaticReflector.prototype._annotations = function (type, simplify, annotationCache) {
            var annotations = annotationCache.get(type);
            if (!annotations) {
                annotations = [];
                var classMetadata = this.getTypeMetadata(type);
                var parentType = this.findParentType(type, classMetadata);
                if (parentType) {
                    var parentAnnotations = this.annotations(parentType);
                    annotations.push.apply(annotations, tslib_1.__spread(parentAnnotations));
                }
                var ownAnnotations_1 = [];
                if (classMetadata['decorators']) {
                    ownAnnotations_1 = simplify(type, classMetadata['decorators']);
                    if (ownAnnotations_1) {
                        annotations.push.apply(annotations, tslib_1.__spread(ownAnnotations_1));
                    }
                }
                if (parentType && !this.summaryResolver.isLibraryFile(type.filePath) &&
                    this.summaryResolver.isLibraryFile(parentType.filePath)) {
                    var summary = this.summaryResolver.resolveSummary(parentType);
                    if (summary && summary.type) {
                        var requiredAnnotationTypes = this.annotationForParentClassWithSummaryKind.get(summary.type.summaryKind);
                        var typeHasRequiredAnnotation = requiredAnnotationTypes.some(function (requiredType) { return ownAnnotations_1.some(function (ann) { return requiredType.isTypeOf(ann); }); });
                        if (!typeHasRequiredAnnotation) {
                            this.reportError(formatMetadataError(metadataError("Class " + type.name + " in " + type.filePath + " extends from a " + compile_metadata_1.CompileSummaryKind[summary.type.summaryKind] + " in another compilation unit without duplicating the decorator", 
                            /* summary */ undefined, "Please add a " + requiredAnnotationTypes.map(function (type) { return type.ngMetadataName; }).join(' or ') + " decorator to the class"), type), type);
                        }
                    }
                }
                annotationCache.set(type, annotations.filter(function (ann) { return !!ann; }));
            }
            return annotations;
        };
        StaticReflector.prototype.propMetadata = function (type) {
            var _this = this;
            var propMetadata = this.propertyCache.get(type);
            if (!propMetadata) {
                var classMetadata = this.getTypeMetadata(type);
                propMetadata = {};
                var parentType = this.findParentType(type, classMetadata);
                if (parentType) {
                    var parentPropMetadata_1 = this.propMetadata(parentType);
                    Object.keys(parentPropMetadata_1).forEach(function (parentProp) {
                        propMetadata[parentProp] = parentPropMetadata_1[parentProp];
                    });
                }
                var members_1 = classMetadata['members'] || {};
                Object.keys(members_1).forEach(function (propName) {
                    var propData = members_1[propName];
                    var prop = propData
                        .find(function (a) { return a['__symbolic'] == 'property' || a['__symbolic'] == 'method'; });
                    var decorators = [];
                    if (propMetadata[propName]) {
                        decorators.push.apply(decorators, tslib_1.__spread(propMetadata[propName]));
                    }
                    propMetadata[propName] = decorators;
                    if (prop && prop['decorators']) {
                        decorators.push.apply(decorators, tslib_1.__spread(_this.simplify(type, prop['decorators'])));
                    }
                });
                this.propertyCache.set(type, propMetadata);
            }
            return propMetadata;
        };
        StaticReflector.prototype.parameters = function (type) {
            var _this = this;
            if (!(type instanceof static_symbol_1.StaticSymbol)) {
                this.reportError(new Error("parameters received " + JSON.stringify(type) + " which is not a StaticSymbol"), type);
                return [];
            }
            try {
                var parameters_1 = this.parameterCache.get(type);
                if (!parameters_1) {
                    var classMetadata = this.getTypeMetadata(type);
                    var parentType = this.findParentType(type, classMetadata);
                    var members = classMetadata ? classMetadata['members'] : null;
                    var ctorData = members ? members['__ctor__'] : null;
                    if (ctorData) {
                        var ctor = ctorData.find(function (a) { return a['__symbolic'] == 'constructor'; });
                        var rawParameterTypes = ctor['parameters'] || [];
                        var parameterDecorators_1 = this.simplify(type, ctor['parameterDecorators'] || []);
                        parameters_1 = [];
                        rawParameterTypes.forEach(function (rawParamType, index) {
                            var nestedResult = [];
                            var paramType = _this.trySimplify(type, rawParamType);
                            if (paramType)
                                nestedResult.push(paramType);
                            var decorators = parameterDecorators_1 ? parameterDecorators_1[index] : null;
                            if (decorators) {
                                nestedResult.push.apply(nestedResult, tslib_1.__spread(decorators));
                            }
                            parameters_1.push(nestedResult);
                        });
                    }
                    else if (parentType) {
                        parameters_1 = this.parameters(parentType);
                    }
                    if (!parameters_1) {
                        parameters_1 = [];
                    }
                    this.parameterCache.set(type, parameters_1);
                }
                return parameters_1;
            }
            catch (e) {
                console.error("Failed on type " + JSON.stringify(type) + " with error " + e);
                throw e;
            }
        };
        StaticReflector.prototype._methodNames = function (type) {
            var methodNames = this.methodCache.get(type);
            if (!methodNames) {
                var classMetadata = this.getTypeMetadata(type);
                methodNames = {};
                var parentType = this.findParentType(type, classMetadata);
                if (parentType) {
                    var parentMethodNames_1 = this._methodNames(parentType);
                    Object.keys(parentMethodNames_1).forEach(function (parentProp) {
                        methodNames[parentProp] = parentMethodNames_1[parentProp];
                    });
                }
                var members_2 = classMetadata['members'] || {};
                Object.keys(members_2).forEach(function (propName) {
                    var propData = members_2[propName];
                    var isMethod = propData.some(function (a) { return a['__symbolic'] == 'method'; });
                    methodNames[propName] = methodNames[propName] || isMethod;
                });
                this.methodCache.set(type, methodNames);
            }
            return methodNames;
        };
        StaticReflector.prototype._staticMembers = function (type) {
            var staticMembers = this.staticCache.get(type);
            if (!staticMembers) {
                var classMetadata = this.getTypeMetadata(type);
                var staticMemberData = classMetadata['statics'] || {};
                staticMembers = Object.keys(staticMemberData);
                this.staticCache.set(type, staticMembers);
            }
            return staticMembers;
        };
        StaticReflector.prototype.findParentType = function (type, classMetadata) {
            var parentType = this.trySimplify(type, classMetadata['extends']);
            if (parentType instanceof static_symbol_1.StaticSymbol) {
                return parentType;
            }
        };
        StaticReflector.prototype.hasLifecycleHook = function (type, lcProperty) {
            if (!(type instanceof static_symbol_1.StaticSymbol)) {
                this.reportError(new Error("hasLifecycleHook received " + JSON.stringify(type) + " which is not a StaticSymbol"), type);
            }
            try {
                return !!this._methodNames(type)[lcProperty];
            }
            catch (e) {
                console.error("Failed on type " + JSON.stringify(type) + " with error " + e);
                throw e;
            }
        };
        StaticReflector.prototype.guards = function (type) {
            var e_2, _a;
            if (!(type instanceof static_symbol_1.StaticSymbol)) {
                this.reportError(new Error("guards received " + JSON.stringify(type) + " which is not a StaticSymbol"), type);
                return {};
            }
            var staticMembers = this._staticMembers(type);
            var result = {};
            try {
                for (var staticMembers_1 = tslib_1.__values(staticMembers), staticMembers_1_1 = staticMembers_1.next(); !staticMembers_1_1.done; staticMembers_1_1 = staticMembers_1.next()) {
                    var name_1 = staticMembers_1_1.value;
                    if (name_1.endsWith(TYPEGUARD_POSTFIX)) {
                        var property = name_1.substr(0, name_1.length - TYPEGUARD_POSTFIX.length);
                        var value = void 0;
                        if (property.endsWith(USE_IF)) {
                            property = name_1.substr(0, property.length - USE_IF.length);
                            value = USE_IF;
                        }
                        else {
                            value = this.getStaticSymbol(type.filePath, type.name, [name_1]);
                        }
                        result[property] = value;
                    }
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (staticMembers_1_1 && !staticMembers_1_1.done && (_a = staticMembers_1.return)) _a.call(staticMembers_1);
                }
                finally { if (e_2) throw e_2.error; }
            }
            return result;
        };
        StaticReflector.prototype._registerDecoratorOrConstructor = function (type, ctor) {
            this.conversionMap.set(type, function (context, args) { return new (ctor.bind.apply(ctor, tslib_1.__spread([void 0], args)))(); });
        };
        StaticReflector.prototype._registerFunction = function (type, fn) {
            this.conversionMap.set(type, function (context, args) { return fn.apply(undefined, args); });
        };
        StaticReflector.prototype.initializeConversionMap = function () {
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Injectable'), core_1.createInjectable);
            this.injectionToken = this.findDeclaration(ANGULAR_CORE, 'InjectionToken');
            this.opaqueToken = this.findDeclaration(ANGULAR_CORE, 'OpaqueToken');
            this.ROUTES = this.tryFindDeclaration(ANGULAR_ROUTER, 'ROUTES');
            this.ANALYZE_FOR_ENTRY_COMPONENTS =
                this.findDeclaration(ANGULAR_CORE, 'ANALYZE_FOR_ENTRY_COMPONENTS');
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Host'), core_1.createHost);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Self'), core_1.createSelf);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'SkipSelf'), core_1.createSkipSelf);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Inject'), core_1.createInject);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Optional'), core_1.createOptional);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Attribute'), core_1.createAttribute);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'ContentChild'), core_1.createContentChild);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'ContentChildren'), core_1.createContentChildren);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'ViewChild'), core_1.createViewChild);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'ViewChildren'), core_1.createViewChildren);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Input'), core_1.createInput);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Output'), core_1.createOutput);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Pipe'), core_1.createPipe);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'HostBinding'), core_1.createHostBinding);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'HostListener'), core_1.createHostListener);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Directive'), core_1.createDirective);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Component'), core_1.createComponent);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'NgModule'), core_1.createNgModule);
            // Note: Some metadata classes can be used directly with Provider.deps.
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Host'), core_1.createHost);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Self'), core_1.createSelf);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'SkipSelf'), core_1.createSkipSelf);
            this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Optional'), core_1.createOptional);
        };
        /**
         * getStaticSymbol produces a Type whose metadata is known but whose implementation is not loaded.
         * All types passed to the StaticResolver should be pseudo-types returned by this method.
         *
         * @param declarationFile the absolute path of the file where the symbol is declared
         * @param name the name of the type.
         */
        StaticReflector.prototype.getStaticSymbol = function (declarationFile, name, members) {
            return this.symbolResolver.getStaticSymbol(declarationFile, name, members);
        };
        /**
         * Simplify but discard any errors
         */
        StaticReflector.prototype.trySimplify = function (context, value) {
            var originalRecorder = this.errorRecorder;
            this.errorRecorder = function (error, fileName) { };
            var result = this.simplify(context, value);
            this.errorRecorder = originalRecorder;
            return result;
        };
        /** @internal */
        StaticReflector.prototype.simplify = function (context, value, lazy) {
            if (lazy === void 0) { lazy = false; }
            var self = this;
            var scope = BindingScope.empty;
            var calling = new Map();
            var rootContext = context;
            function simplifyInContext(context, value, depth, references) {
                function resolveReferenceValue(staticSymbol) {
                    var resolvedSymbol = self.symbolResolver.resolveSymbol(staticSymbol);
                    return resolvedSymbol ? resolvedSymbol.metadata : null;
                }
                function simplifyEagerly(value) {
                    return simplifyInContext(context, value, depth, 0);
                }
                function simplifyLazily(value) {
                    return simplifyInContext(context, value, depth, references + 1);
                }
                function simplifyNested(nestedContext, value) {
                    if (nestedContext === context) {
                        // If the context hasn't changed let the exception propagate unmodified.
                        return simplifyInContext(nestedContext, value, depth + 1, references);
                    }
                    try {
                        return simplifyInContext(nestedContext, value, depth + 1, references);
                    }
                    catch (e) {
                        if (isMetadataError(e)) {
                            // Propagate the message text up but add a message to the chain that explains how we got
                            // here.
                            // e.chain implies e.symbol
                            var summaryMsg = e.chain ? 'references \'' + e.symbol.name + '\'' : errorSummary(e);
                            var summary = "'" + nestedContext.name + "' " + summaryMsg;
                            var chain = { message: summary, position: e.position, next: e.chain };
                            // TODO(chuckj): retrieve the position information indirectly from the collectors node
                            // map if the metadata is from a .ts file.
                            self.error({
                                message: e.message,
                                advise: e.advise,
                                context: e.context, chain: chain,
                                symbol: nestedContext
                            }, context);
                        }
                        else {
                            // It is probably an internal error.
                            throw e;
                        }
                    }
                }
                function simplifyCall(functionSymbol, targetFunction, args, targetExpression) {
                    if (targetFunction && targetFunction['__symbolic'] == 'function') {
                        if (calling.get(functionSymbol)) {
                            self.error({
                                message: 'Recursion is not supported',
                                summary: "called '" + functionSymbol.name + "' recursively",
                                value: targetFunction
                            }, functionSymbol);
                        }
                        try {
                            var value_1 = targetFunction['value'];
                            if (value_1 && (depth != 0 || value_1.__symbolic != 'error')) {
                                var parameters = targetFunction['parameters'];
                                var defaults = targetFunction.defaults;
                                args = args.map(function (arg) { return simplifyNested(context, arg); })
                                    .map(function (arg) { return shouldIgnore(arg) ? undefined : arg; });
                                if (defaults && defaults.length > args.length) {
                                    args.push.apply(args, tslib_1.__spread(defaults.slice(args.length).map(function (value) { return simplify(value); })));
                                }
                                calling.set(functionSymbol, true);
                                var functionScope = BindingScope.build();
                                for (var i = 0; i < parameters.length; i++) {
                                    functionScope.define(parameters[i], args[i]);
                                }
                                var oldScope = scope;
                                var result_1;
                                try {
                                    scope = functionScope.done();
                                    result_1 = simplifyNested(functionSymbol, value_1);
                                }
                                finally {
                                    scope = oldScope;
                                }
                                return result_1;
                            }
                        }
                        finally {
                            calling.delete(functionSymbol);
                        }
                    }
                    if (depth === 0) {
                        // If depth is 0 we are evaluating the top level expression that is describing element
                        // decorator. In this case, it is a decorator we don't understand, such as a custom
                        // non-angular decorator, and we should just ignore it.
                        return IGNORE;
                    }
                    var position = undefined;
                    if (targetExpression && targetExpression.__symbolic == 'resolved') {
                        var line = targetExpression.line;
                        var character = targetExpression.character;
                        var fileName = targetExpression.fileName;
                        if (fileName != null && line != null && character != null) {
                            position = { fileName: fileName, line: line, column: character };
                        }
                    }
                    self.error({
                        message: FUNCTION_CALL_NOT_SUPPORTED,
                        context: functionSymbol,
                        value: targetFunction, position: position
                    }, context);
                }
                function simplify(expression) {
                    var e_3, _a, e_4, _b;
                    if (isPrimitive(expression)) {
                        return expression;
                    }
                    if (Array.isArray(expression)) {
                        var result_2 = [];
                        try {
                            for (var _c = tslib_1.__values(expression), _d = _c.next(); !_d.done; _d = _c.next()) {
                                var item = _d.value;
                                // Check for a spread expression
                                if (item && item.__symbolic === 'spread') {
                                    // We call with references as 0 because we require the actual value and cannot
                                    // tolerate a reference here.
                                    var spreadArray = simplifyEagerly(item.expression);
                                    if (Array.isArray(spreadArray)) {
                                        try {
                                            for (var spreadArray_1 = (e_4 = void 0, tslib_1.__values(spreadArray)), spreadArray_1_1 = spreadArray_1.next(); !spreadArray_1_1.done; spreadArray_1_1 = spreadArray_1.next()) {
                                                var spreadItem = spreadArray_1_1.value;
                                                result_2.push(spreadItem);
                                            }
                                        }
                                        catch (e_4_1) { e_4 = { error: e_4_1 }; }
                                        finally {
                                            try {
                                                if (spreadArray_1_1 && !spreadArray_1_1.done && (_b = spreadArray_1.return)) _b.call(spreadArray_1);
                                            }
                                            finally { if (e_4) throw e_4.error; }
                                        }
                                        continue;
                                    }
                                }
                                var value_2 = simplify(item);
                                if (shouldIgnore(value_2)) {
                                    continue;
                                }
                                result_2.push(value_2);
                            }
                        }
                        catch (e_3_1) { e_3 = { error: e_3_1 }; }
                        finally {
                            try {
                                if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
                            }
                            finally { if (e_3) throw e_3.error; }
                        }
                        return result_2;
                    }
                    if (expression instanceof static_symbol_1.StaticSymbol) {
                        // Stop simplification at builtin symbols or if we are in a reference context and
                        // the symbol doesn't have members.
                        if (expression === self.injectionToken || self.conversionMap.has(expression) ||
                            (references > 0 && !expression.members.length)) {
                            return expression;
                        }
                        else {
                            var staticSymbol = expression;
                            var declarationValue = resolveReferenceValue(staticSymbol);
                            if (declarationValue != null) {
                                return simplifyNested(staticSymbol, declarationValue);
                            }
                            else {
                                return staticSymbol;
                            }
                        }
                    }
                    if (expression) {
                        if (expression['__symbolic']) {
                            var staticSymbol = void 0;
                            switch (expression['__symbolic']) {
                                case 'binop':
                                    var left = simplify(expression['left']);
                                    if (shouldIgnore(left))
                                        return left;
                                    var right = simplify(expression['right']);
                                    if (shouldIgnore(right))
                                        return right;
                                    switch (expression['operator']) {
                                        case '&&':
                                            return left && right;
                                        case '||':
                                            return left || right;
                                        case '|':
                                            return left | right;
                                        case '^':
                                            return left ^ right;
                                        case '&':
                                            return left & right;
                                        case '==':
                                            return left == right;
                                        case '!=':
                                            return left != right;
                                        case '===':
                                            return left === right;
                                        case '!==':
                                            return left !== right;
                                        case '<':
                                            return left < right;
                                        case '>':
                                            return left > right;
                                        case '<=':
                                            return left <= right;
                                        case '>=':
                                            return left >= right;
                                        case '<<':
                                            return left << right;
                                        case '>>':
                                            return left >> right;
                                        case '+':
                                            return left + right;
                                        case '-':
                                            return left - right;
                                        case '*':
                                            return left * right;
                                        case '/':
                                            return left / right;
                                        case '%':
                                            return left % right;
                                    }
                                    return null;
                                case 'if':
                                    var condition = simplify(expression['condition']);
                                    return condition ? simplify(expression['thenExpression']) :
                                        simplify(expression['elseExpression']);
                                case 'pre':
                                    var operand = simplify(expression['operand']);
                                    if (shouldIgnore(operand))
                                        return operand;
                                    switch (expression['operator']) {
                                        case '+':
                                            return operand;
                                        case '-':
                                            return -operand;
                                        case '!':
                                            return !operand;
                                        case '~':
                                            return ~operand;
                                    }
                                    return null;
                                case 'index':
                                    var indexTarget = simplifyEagerly(expression['expression']);
                                    var index = simplifyEagerly(expression['index']);
                                    if (indexTarget && isPrimitive(index))
                                        return indexTarget[index];
                                    return null;
                                case 'select':
                                    var member = expression['member'];
                                    var selectContext = context;
                                    var selectTarget = simplify(expression['expression']);
                                    if (selectTarget instanceof static_symbol_1.StaticSymbol) {
                                        var members = selectTarget.members.concat(member);
                                        selectContext =
                                            self.getStaticSymbol(selectTarget.filePath, selectTarget.name, members);
                                        var declarationValue = resolveReferenceValue(selectContext);
                                        if (declarationValue != null) {
                                            return simplifyNested(selectContext, declarationValue);
                                        }
                                        else {
                                            return selectContext;
                                        }
                                    }
                                    if (selectTarget && isPrimitive(member))
                                        return simplifyNested(selectContext, selectTarget[member]);
                                    return null;
                                case 'reference':
                                    // Note: This only has to deal with variable references, as symbol references have
                                    // been converted into 'resolved'
                                    // in the StaticSymbolResolver.
                                    var name_2 = expression['name'];
                                    var localValue = scope.resolve(name_2);
                                    if (localValue != BindingScope.missing) {
                                        return localValue;
                                    }
                                    break;
                                case 'resolved':
                                    try {
                                        return simplify(expression.symbol);
                                    }
                                    catch (e) {
                                        // If an error is reported evaluating the symbol record the position of the
                                        // reference in the error so it can
                                        // be reported in the error message generated from the exception.
                                        if (isMetadataError(e) && expression.fileName != null &&
                                            expression.line != null && expression.character != null) {
                                            e.position = {
                                                fileName: expression.fileName,
                                                line: expression.line,
                                                column: expression.character
                                            };
                                        }
                                        throw e;
                                    }
                                case 'class':
                                    return context;
                                case 'function':
                                    return context;
                                case 'new':
                                case 'call':
                                    // Determine if the function is a built-in conversion
                                    staticSymbol = simplifyInContext(context, expression['expression'], depth + 1, /* references */ 0);
                                    if (staticSymbol instanceof static_symbol_1.StaticSymbol) {
                                        if (staticSymbol === self.injectionToken || staticSymbol === self.opaqueToken) {
                                            // if somebody calls new InjectionToken, don't create an InjectionToken,
                                            // but rather return the symbol to which the InjectionToken is assigned to.
                                            // OpaqueToken is supported too as it is required by the language service to
                                            // support v4 and prior versions of Angular.
                                            return context;
                                        }
                                        var argExpressions = expression['arguments'] || [];
                                        var converter = self.conversionMap.get(staticSymbol);
                                        if (converter) {
                                            var args = argExpressions.map(function (arg) { return simplifyNested(context, arg); })
                                                .map(function (arg) { return shouldIgnore(arg) ? undefined : arg; });
                                            return converter(context, args);
                                        }
                                        else {
                                            // Determine if the function is one we can simplify.
                                            var targetFunction = resolveReferenceValue(staticSymbol);
                                            return simplifyCall(staticSymbol, targetFunction, argExpressions, expression['expression']);
                                        }
                                    }
                                    return IGNORE;
                                case 'error':
                                    var message = expression.message;
                                    if (expression['line'] != null) {
                                        self.error({
                                            message: message,
                                            context: expression.context,
                                            value: expression,
                                            position: {
                                                fileName: expression['fileName'],
                                                line: expression['line'],
                                                column: expression['character']
                                            }
                                        }, context);
                                    }
                                    else {
                                        self.error({ message: message, context: expression.context }, context);
                                    }
                                    return IGNORE;
                                case 'ignore':
                                    return expression;
                            }
                            return null;
                        }
                        return mapStringMap(expression, function (value, name) {
                            if (REFERENCE_SET.has(name)) {
                                if (name === USE_VALUE && PROVIDE in expression) {
                                    // If this is a provider expression, check for special tokens that need the value
                                    // during analysis.
                                    var provide = simplify(expression.provide);
                                    if (provide === self.ROUTES || provide == self.ANALYZE_FOR_ENTRY_COMPONENTS) {
                                        return simplify(value);
                                    }
                                }
                                return simplifyLazily(value);
                            }
                            return simplify(value);
                        });
                    }
                    return IGNORE;
                }
                return simplify(value);
            }
            var result;
            try {
                result = simplifyInContext(context, value, 0, lazy ? 1 : 0);
            }
            catch (e) {
                if (this.errorRecorder) {
                    this.reportError(e, context);
                }
                else {
                    throw formatMetadataError(e, context);
                }
            }
            if (shouldIgnore(result)) {
                return undefined;
            }
            return result;
        };
        StaticReflector.prototype.getTypeMetadata = function (type) {
            var resolvedSymbol = this.symbolResolver.resolveSymbol(type);
            return resolvedSymbol && resolvedSymbol.metadata ? resolvedSymbol.metadata :
                { __symbolic: 'class' };
        };
        StaticReflector.prototype.reportError = function (error, context, path) {
            if (this.errorRecorder) {
                this.errorRecorder(formatMetadataError(error, context), (context && context.filePath) || path);
            }
            else {
                throw error;
            }
        };
        StaticReflector.prototype.error = function (_a, reportingContext) {
            var message = _a.message, summary = _a.summary, advise = _a.advise, position = _a.position, context = _a.context, value = _a.value, symbol = _a.symbol, chain = _a.chain;
            this.reportError(metadataError(message, summary, advise, position, symbol, context, chain), reportingContext);
        };
        return StaticReflector;
    }());
    exports.StaticReflector = StaticReflector;
    var METADATA_ERROR = 'ngMetadataError';
    function metadataError(message, summary, advise, position, symbol, context, chain) {
        var error = util_1.syntaxError(message);
        error[METADATA_ERROR] = true;
        if (advise)
            error.advise = advise;
        if (position)
            error.position = position;
        if (summary)
            error.summary = summary;
        if (context)
            error.context = context;
        if (chain)
            error.chain = chain;
        if (symbol)
            error.symbol = symbol;
        return error;
    }
    function isMetadataError(error) {
        return !!error[METADATA_ERROR];
    }
    var REFERENCE_TO_NONEXPORTED_CLASS = 'Reference to non-exported class';
    var VARIABLE_NOT_INITIALIZED = 'Variable not initialized';
    var DESTRUCTURE_NOT_SUPPORTED = 'Destructuring not supported';
    var COULD_NOT_RESOLVE_TYPE = 'Could not resolve type';
    var FUNCTION_CALL_NOT_SUPPORTED = 'Function call not supported';
    var REFERENCE_TO_LOCAL_SYMBOL = 'Reference to a local symbol';
    var LAMBDA_NOT_SUPPORTED = 'Lambda not supported';
    function expandedMessage(message, context) {
        switch (message) {
            case REFERENCE_TO_NONEXPORTED_CLASS:
                if (context && context.className) {
                    return "References to a non-exported class are not supported in decorators but " + context.className + " was referenced.";
                }
                break;
            case VARIABLE_NOT_INITIALIZED:
                return 'Only initialized variables and constants can be referenced in decorators because the value of this variable is needed by the template compiler';
            case DESTRUCTURE_NOT_SUPPORTED:
                return 'Referencing an exported destructured variable or constant is not supported in decorators and this value is needed by the template compiler';
            case COULD_NOT_RESOLVE_TYPE:
                if (context && context.typeName) {
                    return "Could not resolve type " + context.typeName;
                }
                break;
            case FUNCTION_CALL_NOT_SUPPORTED:
                if (context && context.name) {
                    return "Function calls are not supported in decorators but '" + context.name + "' was called";
                }
                return 'Function calls are not supported in decorators';
            case REFERENCE_TO_LOCAL_SYMBOL:
                if (context && context.name) {
                    return "Reference to a local (non-exported) symbols are not supported in decorators but '" + context.name + "' was referenced";
                }
                break;
            case LAMBDA_NOT_SUPPORTED:
                return "Function expressions are not supported in decorators";
        }
        return message;
    }
    function messageAdvise(message, context) {
        switch (message) {
            case REFERENCE_TO_NONEXPORTED_CLASS:
                if (context && context.className) {
                    return "Consider exporting '" + context.className + "'";
                }
                break;
            case DESTRUCTURE_NOT_SUPPORTED:
                return 'Consider simplifying to avoid destructuring';
            case REFERENCE_TO_LOCAL_SYMBOL:
                if (context && context.name) {
                    return "Consider exporting '" + context.name + "'";
                }
                break;
            case LAMBDA_NOT_SUPPORTED:
                return "Consider changing the function expression into an exported function";
        }
        return undefined;
    }
    function errorSummary(error) {
        if (error.summary) {
            return error.summary;
        }
        switch (error.message) {
            case REFERENCE_TO_NONEXPORTED_CLASS:
                if (error.context && error.context.className) {
                    return "references non-exported class " + error.context.className;
                }
                break;
            case VARIABLE_NOT_INITIALIZED:
                return 'is not initialized';
            case DESTRUCTURE_NOT_SUPPORTED:
                return 'is a destructured variable';
            case COULD_NOT_RESOLVE_TYPE:
                return 'could not be resolved';
            case FUNCTION_CALL_NOT_SUPPORTED:
                if (error.context && error.context.name) {
                    return "calls '" + error.context.name + "'";
                }
                return "calls a function";
            case REFERENCE_TO_LOCAL_SYMBOL:
                if (error.context && error.context.name) {
                    return "references local variable " + error.context.name;
                }
                return "references a local variable";
        }
        return 'contains the error';
    }
    function mapStringMap(input, transform) {
        if (!input)
            return {};
        var result = {};
        Object.keys(input).forEach(function (key) {
            var value = transform(input[key], key);
            if (!shouldIgnore(value)) {
                if (HIDDEN_KEY.test(key)) {
                    Object.defineProperty(result, key, { enumerable: false, configurable: true, value: value });
                }
                else {
                    result[key] = value;
                }
            }
        });
        return result;
    }
    function isPrimitive(o) {
        return o === null || (typeof o !== 'function' && typeof o !== 'object');
    }
    var BindingScope = /** @class */ (function () {
        function BindingScope() {
        }
        BindingScope.build = function () {
            var current = new Map();
            return {
                define: function (name, value) {
                    current.set(name, value);
                    return this;
                },
                done: function () {
                    return current.size > 0 ? new PopulatedScope(current) : BindingScope.empty;
                }
            };
        };
        BindingScope.missing = {};
        BindingScope.empty = { resolve: function (name) { return BindingScope.missing; } };
        return BindingScope;
    }());
    var PopulatedScope = /** @class */ (function (_super) {
        tslib_1.__extends(PopulatedScope, _super);
        function PopulatedScope(bindings) {
            var _this = _super.call(this) || this;
            _this.bindings = bindings;
            return _this;
        }
        PopulatedScope.prototype.resolve = function (name) {
            return this.bindings.has(name) ? this.bindings.get(name) : BindingScope.missing;
        };
        return PopulatedScope;
    }(BindingScope));
    function formatMetadataMessageChain(chain, advise) {
        var expanded = expandedMessage(chain.message, chain.context);
        var nesting = chain.symbol ? " in '" + chain.symbol.name + "'" : '';
        var message = "" + expanded + nesting;
        var position = chain.position;
        var next = chain.next ?
            formatMetadataMessageChain(chain.next, advise) :
            advise ? { message: advise } : undefined;
        return { message: message, position: position, next: next ? [next] : undefined };
    }
    function formatMetadataError(e, context) {
        if (isMetadataError(e)) {
            // Produce a formatted version of the and leaving enough information in the original error
            // to recover the formatting information to eventually produce a diagnostic error message.
            var position = e.position;
            var chain = {
                message: "Error during template compile of '" + context.name + "'",
                position: position,
                next: { message: e.message, next: e.chain, context: e.context, symbol: e.symbol }
            };
            var advise = e.advise || messageAdvise(e.message, e.context);
            return formatted_error_1.formattedError(formatMetadataMessageChain(chain, advise));
        }
        return e;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic3RhdGljX3JlZmxlY3Rvci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9hb3Qvc3RhdGljX3JlZmxlY3Rvci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7SUFFSCwyRUFBdUQ7SUFFdkQsbURBQWlXO0lBR2pXLG1EQUFvQztJQUVwQyw2RUFBd0U7SUFDeEUseUVBQTZDO0lBRzdDLElBQU0sWUFBWSxHQUFHLGVBQWUsQ0FBQztJQUNyQyxJQUFNLGNBQWMsR0FBRyxpQkFBaUIsQ0FBQztJQUV6QyxJQUFNLFVBQVUsR0FBRyxVQUFVLENBQUM7SUFFOUIsSUFBTSxNQUFNLEdBQUc7UUFDYixVQUFVLEVBQUUsUUFBUTtLQUNyQixDQUFDO0lBRUYsSUFBTSxTQUFTLEdBQUcsVUFBVSxDQUFDO0lBQzdCLElBQU0sT0FBTyxHQUFHLFNBQVMsQ0FBQztJQUMxQixJQUFNLGFBQWEsR0FBRyxJQUFJLEdBQUcsQ0FBQyxDQUFDLFNBQVMsRUFBRSxZQUFZLEVBQUUsTUFBTSxFQUFFLElBQUksRUFBRSxjQUFjLENBQUMsQ0FBQyxDQUFDO0lBQ3ZGLElBQU0saUJBQWlCLEdBQUcsV0FBVyxDQUFDO0lBQ3RDLElBQU0sTUFBTSxHQUFHLE9BQU8sQ0FBQztJQUV2QixTQUFTLFlBQVksQ0FBQyxLQUFVO1FBQzlCLE9BQU8sS0FBSyxJQUFJLEtBQUssQ0FBQyxVQUFVLElBQUksUUFBUSxDQUFDO0lBQy9DLENBQUM7SUFFRDs7O09BR0c7SUFDSDtRQW9CRSx5QkFDWSxlQUE4QyxFQUM5QyxjQUFvQyxFQUM1QyxvQkFBd0UsRUFDeEUsc0JBQXdFLEVBQ2hFLGFBQXVEO1lBTG5FLGlCQW1CQztZQWhCRyxxQ0FBQSxFQUFBLHlCQUF3RTtZQUN4RSx1Q0FBQSxFQUFBLDJCQUF3RTtZQUhoRSxvQkFBZSxHQUFmLGVBQWUsQ0FBK0I7WUFDOUMsbUJBQWMs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KipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Q29tcGlsZVN1bW1hcnlLaW5kfSBmcm9tICcuLi9jb21waWxlX21ldGFkYXRhJztcbmltcG9ydCB7Q29tcGlsZVJlZmxlY3Rvcn0gZnJvbSAnLi4vY29tcGlsZV9yZWZsZWN0b3InO1xuaW1wb3J0IHtNZXRhZGF0YUZhY3RvcnksIGNyZWF0ZUF0dHJpYnV0ZSwgY3JlYXRlQ29tcG9uZW50LCBjcmVhdGVDb250ZW50Q2hpbGQsIGNyZWF0ZUNvbnRlbnRDaGlsZHJlbiwgY3JlYXRlRGlyZWN0aXZlLCBjcmVhdGVIb3N0LCBjcmVhdGVIb3N0QmluZGluZywgY3JlYXRlSG9zdExpc3RlbmVyLCBjcmVhdGVJbmplY3QsIGNyZWF0ZUluamVjdGFibGUsIGNyZWF0ZUlucHV0LCBjcmVhdGVOZ01vZHVsZSwgY3JlYXRlT3B0aW9uYWwsIGNyZWF0ZU91dHB1dCwgY3JlYXRlUGlwZSwgY3JlYXRlU2VsZiwgY3JlYXRlU2tpcFNlbGYsIGNyZWF0ZVZpZXdDaGlsZCwgY3JlYXRlVmlld0NoaWxkcmVufSBmcm9tICcuLi9jb3JlJztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi4vb3V0cHV0L291dHB1dF9hc3QnO1xuaW1wb3J0IHtTdW1tYXJ5UmVzb2x2ZXJ9IGZyb20gJy4uL3N1bW1hcnlfcmVzb2x2ZXInO1xuaW1wb3J0IHtzeW50YXhFcnJvcn0gZnJvbSAnLi4vdXRpbCc7XG5cbmltcG9ydCB7Rm9ybWF0dGVkTWVzc2FnZUNoYWluLCBmb3JtYXR0ZWRFcnJvcn0gZnJvbSAnLi9mb3JtYXR0ZWRfZXJyb3InO1xuaW1wb3J0IHtTdGF0aWNTeW1ib2x9IGZyb20gJy4vc3RhdGljX3N5bWJvbCc7XG5pbXBvcnQge1N0YXRpY1N5bWJvbFJlc29sdmVyfSBmcm9tICcuL3N0YXRpY19zeW1ib2xfcmVzb2x2ZXInO1xuXG5jb25zdCBBTkdVTEFSX0NPUkUgPSAnQGFuZ3VsYXIvY29yZSc7XG5jb25zdCBBTkdVTEFSX1JPVVRFUiA9ICdAYW5ndWxhci9yb3V0ZXInO1xuXG5jb25zdCBISURERU5fS0VZID0gL15cXCQuKlxcJCQvO1xuXG5jb25zdCBJR05PUkUgPSB7XG4gIF9fc3ltYm9saWM6ICdpZ25vcmUnXG59O1xuXG5jb25zdCBVU0VfVkFMVUUgPSAndXNlVmFsdWUnO1xuY29uc3QgUFJPVklERSA9ICdwcm92aWRlJztcbmNvbnN0IFJFRkVSRU5DRV9TRVQgPSBuZXcgU2V0KFtVU0VfVkFMVUUsICd1c2VGYWN0b3J5JywgJ2RhdGEnLCAnaWQnLCAnbG9hZENoaWxkcmVuJ10pO1xuY29uc3QgVFlQRUdVQVJEX1BPU1RGSVggPSAnVHlwZUd1YXJkJztcbmNvbnN0IFVTRV9JRiA9ICdVc2VJZic7XG5cbmZ1bmN0aW9uIHNob3VsZElnbm9yZSh2YWx1ZTogYW55KTogYm9vbGVhbiB7XG4gIHJldHVybiB2YWx1ZSAmJiB2YWx1ZS5fX3N5bWJvbGljID09ICdpZ25vcmUnO1xufVxuXG4vKipcbiAqIEEgc3RhdGljIHJlZmxlY3RvciBpbXBsZW1lbnRzIGVub3VnaCBvZiB0aGUgUmVmbGVjdG9yIEFQSSB0aGF0IGlzIG5lY2Vzc2FyeSB0byBjb21waWxlXG4gKiB0ZW1wbGF0ZXMgc3RhdGljYWxseS5cbiAqL1xuZXhwb3J0IGNsYXNzIFN0YXRpY1JlZmxlY3RvciBpbXBsZW1lbnRzIENvbXBpbGVSZWZsZWN0b3Ige1xuICBwcml2YXRlIGFubm90YXRpb25DYWNoZSA9IG5ldyBNYXA8U3RhdGljU3ltYm9sLCBhbnlbXT4oKTtcbiAgcHJpdmF0ZSBzaGFsbG93QW5ub3RhdGlvbkNhY2hlID0gbmV3IE1hcDxTdGF0aWNTeW1ib2wsIGFueVtdPigpO1xuICBwcml2YXRlIHByb3BlcnR5Q2FjaGUgPSBuZXcgTWFwPFN0YXRpY1N5bWJvbCwge1trZXk6IHN0cmluZ106IGFueVtdfT4oKTtcbiAgcHJpdmF0ZSBwYXJhbWV0ZXJDYWNoZSA9IG5ldyBNYXA8U3RhdGljU3ltYm9sLCBhbnlbXT4oKTtcbiAgcHJpdmF0ZSBtZXRob2RDYWNoZSA9IG5ldyBNYXA8U3RhdGljU3ltYm9sLCB7W2tleTogc3RyaW5nXTogYm9vbGVhbn0+KCk7XG4gIHByaXZhdGUgc3RhdGljQ2FjaGUgPSBuZXcgTWFwPFN0YXRpY1N5bWJvbCwgc3RyaW5nW10+KCk7XG4gIHByaXZhdGUgY29udmVyc2lvbk1hcCA9IG5ldyBNYXA8U3RhdGljU3ltYm9sLCAoY29udGV4dDogU3RhdGljU3ltYm9sLCBhcmdzOiBhbnlbXSkgPT4gYW55PigpO1xuICBwcml2YXRlIHJlc29sdmVkRXh0ZXJuYWxSZWZlcmVuY2VzID0gbmV3IE1hcDxzdHJpbmcsIFN0YXRpY1N5bWJvbD4oKTtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIHByaXZhdGUgaW5qZWN0aW9uVG9rZW4gITogU3RhdGljU3ltYm9sO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBvcGFxdWVUb2tlbiAhOiBTdGF0aWNTeW1ib2w7XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBST1VURVMgITogU3RhdGljU3ltYm9sO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBBTkFMWVpFX0ZPUl9FTlRSWV9DT01QT05FTlRTICE6IFN0YXRpY1N5bWJvbDtcbiAgcHJpdmF0ZSBhbm5vdGF0aW9uRm9yUGFyZW50Q2xhc3NXaXRoU3VtbWFyeUtpbmQgPVxuICAgICAgbmV3IE1hcDxDb21waWxlU3VtbWFyeUtpbmQsIE1ldGFkYXRhRmFjdG9yeTxhbnk+W10+KCk7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHN1bW1hcnlSZXNvbHZlcjogU3VtbWFyeVJlc29sdmVyPFN0YXRpY1N5bWJvbD4sXG4gICAgICBwcml2YXRlIHN5bWJvbFJlc29sdmVyOiBTdGF0aWNTeW1ib2xSZXNvbHZlcixcbiAgICAgIGtub3duTWV0YWRhdGFDbGFzc2VzOiB7bmFtZTogc3RyaW5nLCBmaWxlUGF0aDogc3RyaW5nLCBjdG9yOiBhbnl9W10gPSBbXSxcbiAgICAgIGtub3duTWV0YWRhdGFGdW5jdGlvbnM6IHtuYW1lOiBzdHJpbmcsIGZpbGVQYXRoOiBzdHJpbmcsIGZuOiBhbnl9W10gPSBbXSxcbiAgICAgIHByaXZhdGUgZXJyb3JSZWNvcmRlcj86IChlcnJvcjogYW55LCBmaWxlTmFtZT86IHN0cmluZykgPT4gdm9pZCkge1xuICAgIHRoaXMuaW5pdGlhbGl6ZUNvbnZlcnNpb25NYXAoKTtcbiAgICBrbm93bk1ldGFkYXRhQ2xhc3Nlcy5mb3JFYWNoKFxuICAgICAgICAoa2MpID0+IHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3RvcihcbiAgICAgICAgICAgIHRoaXMuZ2V0U3RhdGljU3ltYm9sKGtjLmZpbGVQYXRoLCBrYy5uYW1lKSwga2MuY3RvcikpO1xuICAgIGtub3duTWV0YWRhdGFGdW5jdGlvbnMuZm9yRWFjaChcbiAgICAgICAgKGtmKSA9PiB0aGlzLl9yZWdpc3RlckZ1bmN0aW9uKHRoaXMuZ2V0U3RhdGljU3ltYm9sKGtmLmZpbGVQYXRoLCBrZi5uYW1lKSwga2YuZm4pKTtcbiAgICB0aGlzLmFubm90YXRpb25Gb3JQYXJlbnRDbGFzc1dpdGhTdW1tYXJ5S2luZC5zZXQoXG4gICAgICAgIENvbXBpbGVTdW1tYXJ5S2luZC5EaXJlY3RpdmUsIFtjcmVhdGVEaXJlY3RpdmUsIGNyZWF0ZUNvbXBvbmVudF0pO1xuICAgIHRoaXMuYW5ub3RhdGlvbkZvclBhcmVudENsYXNzV2l0aFN1bW1hcnlLaW5kLnNldChDb21waWxlU3VtbWFyeUtpbmQuUGlwZSwgW2NyZWF0ZVBpcGVdKTtcbiAgICB0aGlzLmFubm90YXRpb25Gb3JQYXJlbnRDbGFzc1dpdGhTdW1tYXJ5S2luZC5zZXQoQ29tcGlsZVN1bW1hcnlLaW5kLk5nTW9kdWxlLCBbY3JlYXRlTmdNb2R1bGVdKTtcbiAgICB0aGlzLmFubm90YXRpb25Gb3JQYXJlbnRDbGFzc1dpdGhTdW1tYXJ5S2luZC5zZXQoXG4gICAgICAgIENvbXBpbGVTdW1tYXJ5S2luZC5JbmplY3RhYmxlLFxuICAgICAgICBbY3JlYXRlSW5qZWN0YWJsZSwgY3JlYXRlUGlwZSwgY3JlYXRlRGlyZWN0aXZlLCBjcmVhdGVDb21wb25lbnQsIGNyZWF0ZU5nTW9kdWxlXSk7XG4gIH1cblxuICBjb21wb25lbnRNb2R1bGVVcmwodHlwZU9yRnVuYzogU3RhdGljU3ltYm9sKTogc3RyaW5nIHtcbiAgICBjb25zdCBzdGF0aWNTeW1ib2wgPSB0aGlzLmZpbmRTeW1ib2xEZWNsYXJhdGlvbih0eXBlT3JGdW5jKTtcbiAgICByZXR1cm4gdGhpcy5zeW1ib2xSZXNvbHZlci5nZXRSZXNvdXJjZVBhdGgoc3RhdGljU3ltYm9sKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBJbnZhbGlkYXRlIHRoZSBzcGVjaWZpZWQgYHN5bWJvbHNgIG9uIHByb2dyYW0gY2hhbmdlLlxuICAgKiBAcGFyYW0gc3ltYm9sc1xuICAgKi9cbiAgaW52YWxpZGF0ZVN5bWJvbHMoc3ltYm9sczogU3RhdGljU3ltYm9sW10pIHtcbiAgICBmb3IgKGNvbnN0IHN5bWJvbCBvZiBzeW1ib2xzKSB7XG4gICAgICB0aGlzLmFubm90YXRpb25DYWNoZS5kZWxldGUoc3ltYm9sKTtcbiAgICAgIHRoaXMuc2hhbGxvd0Fubm90YXRpb25DYWNoZS5kZWxldGUoc3ltYm9sKTtcbiAgICAgIHRoaXMucHJvcGVydHlDYWNoZS5kZWxldGUoc3ltYm9sKTtcbiAgICAgIHRoaXMucGFyYW1ldGVyQ2FjaGUuZGVsZXRlKHN5bWJvbCk7XG4gICAgICB0aGlzLm1ldGhvZENhY2hlLmRlbGV0ZShzeW1ib2wpO1xuICAgICAgdGhpcy5zdGF0aWNDYWNoZS5kZWxldGUoc3ltYm9sKTtcbiAgICAgIHRoaXMuY29udmVyc2lvbk1hcC5kZWxldGUoc3ltYm9sKTtcbiAgICB9XG4gIH1cblxuICByZXNvbHZlRXh0ZXJuYWxSZWZlcmVuY2UocmVmOiBvLkV4dGVybmFsUmVmZXJlbmNlLCBjb250YWluaW5nRmlsZT86IHN0cmluZyk6IFN0YXRpY1N5bWJvbCB7XG4gICAgbGV0IGtleTogc3RyaW5nfHVuZGVmaW5lZCA9IHVuZGVmaW5lZDtcbiAgICBpZiAoIWNvbnRhaW5pbmdGaWxlKSB7XG4gICAgICBrZXkgPSBgJHtyZWYubW9kdWxlTmFtZX06JHtyZWYubmFtZX1gO1xuICAgICAgY29uc3QgZGVjbGFyYXRpb25TeW1ib2wgPSB0aGlzLnJlc29sdmVkRXh0ZXJuYWxSZWZlcmVuY2VzLmdldChrZXkpO1xuICAgICAgaWYgKGRlY2xhcmF0aW9uU3ltYm9sKSByZXR1cm4gZGVjbGFyYXRpb25TeW1ib2w7XG4gICAgfVxuICAgIGNvbnN0IHJlZlN5bWJvbCA9XG4gICAgICAgIHRoaXMuc3ltYm9sUmVzb2x2ZXIuZ2V0U3ltYm9sQnlNb2R1bGUocmVmLm1vZHVsZU5hbWUgISwgcmVmLm5hbWUgISwgY29udGFpbmluZ0ZpbGUpO1xuICAgIGNvbnN0IGRlY2xhcmF0aW9uU3ltYm9sID0gdGhpcy5maW5kU3ltYm9sRGVjbGFyYXRpb24ocmVmU3ltYm9sKTtcbiAgICBpZiAoIWNvbnRhaW5pbmdGaWxlKSB7XG4gICAgICB0aGlzLnN5bWJvbFJlc29sdmVyLnJlY29yZE1vZHVsZU5hbWVGb3JGaWxlTmFtZShyZWZTeW1ib2wuZmlsZVBhdGgsIHJlZi5tb2R1bGVOYW1lICEpO1xuICAgICAgdGhpcy5zeW1ib2xSZXNvbHZlci5yZWNvcmRJbXBvcnRBcyhkZWNsYXJhdGlvblN5bWJvbCwgcmVmU3ltYm9sKTtcbiAgICB9XG4gICAgaWYgKGtleSkge1xuICAgICAgdGhpcy5yZXNvbHZlZEV4dGVybmFsUmVmZXJlbmNlcy5zZXQoa2V5LCBkZWNsYXJhdGlvblN5bWJvbCk7XG4gICAgfVxuICAgIHJldHVybiBkZWNsYXJhdGlvblN5bWJvbDtcbiAgfVxuXG4gIGZpbmREZWNsYXJhdGlvbihtb2R1bGVVcmw6IHN0cmluZywgbmFtZTogc3RyaW5nLCBjb250YWluaW5nRmlsZT86IHN0cmluZyk6IFN0YXRpY1N5bWJvbCB7XG4gICAgcmV0dXJuIHRoaXMuZmluZFN5bWJvbERlY2xhcmF0aW9uKFxuICAgICAgICB0aGlzLnN5bWJvbFJlc29sdmVyLmdldFN5bWJvbEJ5TW9kdWxlKG1vZHVsZVVybCwgbmFtZSwgY29udGFpbmluZ0ZpbGUpKTtcbiAgfVxuXG4gIHRyeUZpbmREZWNsYXJhdGlvbihtb2R1bGVVcmw6IHN0cmluZywgbmFtZTogc3RyaW5nLCBjb250YWluaW5nRmlsZT86IHN0cmluZyk6IFN0YXRpY1N5bWJvbCB7XG4gICAgcmV0dXJuIHRoaXMuc3ltYm9sUmVzb2x2ZXIuaWdub3JlRXJyb3JzRm9yKFxuICAgICAgICAoKSA9PiB0aGlzLmZpbmREZWNsYXJhdGlvbihtb2R1bGVVcmwsIG5hbWUsIGNvbnRhaW5pbmdGaWxlKSk7XG4gIH1cblxuICBmaW5kU3ltYm9sRGVjbGFyYXRpb24oc3ltYm9sOiBTdGF0aWNTeW1ib2wpOiBTdGF0aWNTeW1ib2wge1xuICAgIGNvbnN0IHJlc29sdmVkU3ltYm9sID0gdGhpcy5zeW1ib2xSZXNvbHZlci5yZXNvbHZlU3ltYm9sKHN5bWJvbCk7XG4gICAgaWYgKHJlc29sdmVkU3ltYm9sKSB7XG4gICAgICBsZXQgcmVzb2x2ZWRNZXRhZGF0YSA9IHJlc29sdmVkU3ltYm9sLm1ldGFkYXRhO1xuICAgICAgaWYgKHJlc29sdmVkTWV0YWRhdGEgJiYgcmVzb2x2ZWRNZXRhZGF0YS5fX3N5bWJvbGljID09PSAncmVzb2x2ZWQnKSB7XG4gICAgICAgIHJlc29sdmVkTWV0YWRhdGEgPSByZXNvbHZlZE1ldGFkYXRhLnN5bWJvbDtcbiAgICAgIH1cbiAgICAgIGlmIChyZXNvbHZlZE1ldGFkYXRhIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB7XG4gICAgICAgIHJldHVybiB0aGlzLmZpbmRTeW1ib2xEZWNsYXJhdGlvbihyZXNvbHZlZFN5bWJvbC5tZXRhZGF0YSk7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiBzeW1ib2w7XG4gIH1cblxuICBwdWJsaWMgdHJ5QW5ub3RhdGlvbnModHlwZTogU3RhdGljU3ltYm9sKTogYW55W10ge1xuICAgIGNvbnN0IG9yaWdpbmFsUmVjb3JkZXIgPSB0aGlzLmVycm9yUmVjb3JkZXI7XG4gICAgdGhpcy5lcnJvclJlY29yZGVyID0gKGVycm9yOiBhbnksIGZpbGVOYW1lPzogc3RyaW5nKSA9PiB7fTtcbiAgICB0cnkge1xuICAgICAgcmV0dXJuIHRoaXMuYW5ub3RhdGlvbnModHlwZSk7XG4gICAgfSBmaW5hbGx5IHtcbiAgICAgIHRoaXMuZXJyb3JSZWNvcmRlciA9IG9yaWdpbmFsUmVjb3JkZXI7XG4gICAgfVxuICB9XG5cbiAgcHVibGljIGFubm90YXRpb25zKHR5cGU6IFN0YXRpY1N5bWJvbCk6IGFueVtdIHtcbiAgICByZXR1cm4gdGhpcy5fYW5ub3RhdGlvbnMoXG4gICAgICAgIHR5cGUsICh0eXBlOiBTdGF0aWNTeW1ib2wsIGRlY29yYXRvcnM6IGFueSkgPT4gdGhpcy5zaW1wbGlmeSh0eXBlLCBkZWNvcmF0b3JzKSxcbiAgICAgICAgdGhpcy5hbm5vdGF0aW9uQ2FjaGUpO1xuICB9XG5cbiAgcHVibGljIHNoYWxsb3dBbm5vdGF0aW9ucyh0eXBlOiBTdGF0aWNTeW1ib2wpOiBhbnlbXSB7XG4gICAgcmV0dXJuIHRoaXMuX2Fubm90YXRpb25zKFxuICAgICAgICB0eXBlLCAodHlwZTogU3RhdGljU3ltYm9sLCBkZWNvcmF0b3JzOiBhbnkpID0+IHRoaXMuc2ltcGxpZnkodHlwZSwgZGVjb3JhdG9ycywgdHJ1ZSksXG4gICAgICAgIHRoaXMuc2hhbGxvd0Fubm90YXRpb25DYWNoZSk7XG4gIH1cblxuICBwcml2YXRlIF9hbm5vdGF0aW9ucyhcbiAgICAgIHR5cGU6IFN0YXRpY1N5bWJvbCwgc2ltcGxpZnk6ICh0eXBlOiBTdGF0aWNTeW1ib2wsIGRlY29yYXRvcnM6IGFueSkgPT4gYW55LFxuICAgICAgYW5ub3RhdGlvbkNhY2hlOiBNYXA8U3RhdGljU3ltYm9sLCBhbnlbXT4pOiBhbnlbXSB7XG4gICAgbGV0IGFubm90YXRpb25zID0gYW5ub3RhdGlvbkNhY2hlLmdldCh0eXBlKTtcbiAgICBpZiAoIWFubm90YXRpb25zKSB7XG4gICAgICBhbm5vdGF0aW9ucyA9IFtdO1xuICAgICAgY29uc3QgY2xhc3NNZXRhZGF0YSA9IHRoaXMuZ2V0VHlwZU1ldGFkYXRhKHR5cGUpO1xuICAgICAgY29uc3QgcGFyZW50VHlwZSA9IHRoaXMuZmluZFBhcmVudFR5cGUodHlwZSwgY2xhc3NNZXRhZGF0YSk7XG4gICAgICBpZiAocGFyZW50VHlwZSkge1xuICAgICAgICBjb25zdCBwYXJlbnRBbm5vdGF0aW9ucyA9IHRoaXMuYW5ub3RhdGlvbnMocGFyZW50VHlwZSk7XG4gICAgICAgIGFubm90YXRpb25zLnB1c2goLi4ucGFyZW50QW5ub3RhdGlvbnMpO1xuICAgICAgfVxuICAgICAgbGV0IG93bkFubm90YXRpb25zOiBhbnlbXSA9IFtdO1xuICAgICAgaWYgKGNsYXNzTWV0YWRhdGFbJ2RlY29yYXRvcnMnXSkge1xuICAgICAgICBvd25Bbm5vdGF0aW9ucyA9IHNpbXBsaWZ5KHR5cGUsIGNsYXNzTWV0YWRhdGFbJ2RlY29yYXRvcnMnXSk7XG4gICAgICAgIGlmIChvd25Bbm5vdGF0aW9ucykge1xuICAgICAgICAgIGFubm90YXRpb25zLnB1c2goLi4ub3duQW5ub3RhdGlvbnMpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgICBpZiAocGFyZW50VHlwZSAmJiAhdGhpcy5zdW1tYXJ5UmVzb2x2ZXIuaXNMaWJyYXJ5RmlsZSh0eXBlLmZpbGVQYXRoKSAmJlxuICAgICAgICAgIHRoaXMuc3VtbWFyeVJlc29sdmVyLmlzTGlicmFyeUZpbGUocGFyZW50VHlwZS5maWxlUGF0aCkpIHtcbiAgICAgICAgY29uc3Qgc3VtbWFyeSA9IHRoaXMuc3VtbWFyeVJlc29sdmVyLnJlc29sdmVTdW1tYXJ5KHBhcmVudFR5cGUpO1xuICAgICAgICBpZiAoc3VtbWFyeSAmJiBzdW1tYXJ5LnR5cGUpIHtcbiAgICAgICAgICBjb25zdCByZXF1aXJlZEFubm90YXRpb25UeXBlcyA9XG4gICAgICAgICAgICAgIHRoaXMuYW5ub3RhdGlvbkZvclBhcmVudENsYXNzV2l0aFN1bW1hcnlLaW5kLmdldChzdW1tYXJ5LnR5cGUuc3VtbWFyeUtpbmQgISkgITtcbiAgICAgICAgICBjb25zdCB0eXBlSGFzUmVxdWlyZWRBbm5vdGF0aW9uID0gcmVxdWlyZWRBbm5vdGF0aW9uVHlwZXMuc29tZShcbiAgICAgICAgICAgICAgKHJlcXVpcmVkVHlwZSkgPT4gb3duQW5ub3RhdGlvbnMuc29tZShhbm4gPT4gcmVxdWlyZWRUeXBlLmlzVHlwZU9mKGFubikpKTtcbiAgICAgICAgICBpZiAoIXR5cGVIYXNSZXF1aXJlZEFubm90YXRpb24pIHtcbiAgICAgICAgICAgIHRoaXMucmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgICAgZm9ybWF0TWV0YWRhdGFFcnJvcihcbiAgICAgICAgICAgICAgICAgICAgbWV0YWRhdGFFcnJvcihcbiAgICAgICAgICAgICAgICAgICAgICAgIGBDbGFzcyAke3R5cGUubmFtZX0gaW4gJHt0eXBlLmZpbGVQYXRofSBleHRlbmRzIGZyb20gYSAke0NvbXBpbGVTdW1tYXJ5S2luZFtzdW1tYXJ5LnR5cGUuc3VtbWFyeUtpbmQhXX0gaW4gYW5vdGhlciBjb21waWxhdGlvbiB1bml0IHdpdGhvdXQgZHVwbGljYXRpbmcgdGhlIGRlY29yYXRvcmAsXG4gICAgICAgICAgICAgICAgICAgICAgICAvKiBzdW1tYXJ5ICovIHVuZGVmaW5lZCxcbiAgICAgICAgICAgICAgICAgICAgICAgIGBQbGVhc2UgYWRkIGEgJHtyZXF1aXJlZEFubm90YXRpb25UeXBlcy5tYXAoKHR5cGUpID0+IHR5cGUubmdNZXRhZGF0YU5hbWUpLmpvaW4oJyBvciAnKX0gZGVjb3JhdG9yIHRvIHRoZSBjbGFzc2ApLFxuICAgICAgICAgICAgICAgICAgICB0eXBlKSxcbiAgICAgICAgICAgICAgICB0eXBlKTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIGFubm90YXRpb25DYWNoZS5zZXQodHlwZSwgYW5ub3RhdGlvbnMuZmlsdGVyKGFubiA9PiAhIWFubikpO1xuICAgIH1cbiAgICByZXR1cm4gYW5ub3RhdGlvbnM7XG4gIH1cblxuICBwdWJsaWMgcHJvcE1ldGFkYXRhKHR5cGU6IFN0YXRpY1N5bWJvbCk6IHtba2V5OiBzdHJpbmddOiBhbnlbXX0ge1xuICAgIGxldCBwcm9wTWV0YWRhdGEgPSB0aGlzLnByb3BlcnR5Q2FjaGUuZ2V0KHR5cGUpO1xuICAgIGlmICghcHJvcE1ldGFkYXRhKSB7XG4gICAgICBjb25zdCBjbGFzc01ldGFkYXRhID0gdGhpcy5nZXRUeXBlTWV0YWRhdGEodHlwZSk7XG4gICAgICBwcm9wTWV0YWRhdGEgPSB7fTtcbiAgICAgIGNvbnN0IHBhcmVudFR5cGUgPSB0aGlzLmZpbmRQYXJlbnRUeXBlKHR5cGUsIGNsYXNzTWV0YWRhdGEpO1xuICAgICAgaWYgKHBhcmVudFR5cGUpIHtcbiAgICAgICAgY29uc3QgcGFyZW50UHJvcE1ldGFkYXRhID0gdGhpcy5wcm9wTWV0YWRhdGEocGFyZW50VHlwZSk7XG4gICAgICAgIE9iamVjdC5rZXlzKHBhcmVudFByb3BNZXRhZGF0YSkuZm9yRWFjaCgocGFyZW50UHJvcCkgPT4ge1xuICAgICAgICAgIHByb3BNZXRhZGF0YSAhW3BhcmVudFByb3BdID0gcGFyZW50UHJvcE1ldGFkYXRhW3BhcmVudFByb3BdO1xuICAgICAgICB9KTtcbiAgICAgIH1cblxuICAgICAgY29uc3QgbWVtYmVycyA9IGNsYXNzTWV0YWRhdGFbJ21lbWJlcnMnXSB8fCB7fTtcbiAgICAgIE9iamVjdC5rZXlzKG1lbWJlcnMpLmZvckVhY2goKHByb3BOYW1lKSA9PiB7XG4gICAgICAgIGNvbnN0IHByb3BEYXRhID0gbWVtYmVyc1twcm9wTmFtZV07XG4gICAgICAgIGNvbnN0IHByb3AgPSAoPGFueVtdPnByb3BEYXRhKVxuICAgICAgICAgICAgICAgICAgICAgICAgIC5maW5kKGEgPT4gYVsnX19zeW1ib2xpYyddID09ICdwcm9wZXJ0eScgfHwgYVsnX19zeW1ib2xpYyddID09ICdtZXRob2QnKTtcbiAgICAgICAgY29uc3QgZGVjb3JhdG9yczogYW55W10gPSBbXTtcbiAgICAgICAgaWYgKHByb3BNZXRhZGF0YSAhW3Byb3BOYW1lXSkge1xuICAgICAgICAgIGRlY29yYXRvcnMucHVzaCguLi5wcm9wTWV0YWRhdGEgIVtwcm9wTmFtZV0pO1xuICAgICAgICB9XG4gICAgICAgIHByb3BNZXRhZGF0YSAhW3Byb3BOYW1lXSA9IGRlY29yYXRvcnM7XG4gICAgICAgIGlmIChwcm9wICYmIHByb3BbJ2RlY29yYXRvcnMnXSkge1xuICAgICAgICAgIGRlY29yYXRvcnMucHVzaCguLi50aGlzLnNpbXBsaWZ5KHR5cGUsIHByb3BbJ2RlY29yYXRvcnMnXSkpO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICAgIHRoaXMucHJvcGVydHlDYWNoZS5zZXQodHlwZSwgcHJvcE1ldGFkYXRhKTtcbiAgICB9XG4gICAgcmV0dXJuIHByb3BNZXRhZGF0YTtcbiAgfVxuXG4gIHB1YmxpYyBwYXJhbWV0ZXJzKHR5cGU6IFN0YXRpY1N5bWJvbCk6IGFueVtdIHtcbiAgICBpZiAoISh0eXBlIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSkge1xuICAgICAgdGhpcy5yZXBvcnRFcnJvcihcbiAgICAgICAgICBuZXcgRXJyb3IoYHBhcmFtZXRlcnMgcmVjZWl2ZWQgJHtKU09OLnN0cmluZ2lmeSh0eXBlKX0gd2hpY2ggaXMgbm90IGEgU3RhdGljU3ltYm9sYCksXG4gICAgICAgICAgdHlwZSk7XG4gICAgICByZXR1cm4gW107XG4gICAgfVxuICAgIHRyeSB7XG4gICAgICBsZXQgcGFyYW1ldGVycyA9IHRoaXMucGFyYW1ldGVyQ2FjaGUuZ2V0KHR5cGUpO1xuICAgICAgaWYgKCFwYXJhbWV0ZXJzKSB7XG4gICAgICAgIGNvbnN0IGNsYXNzTWV0YWRhdGEgPSB0aGlzLmdldFR5cGVNZXRhZGF0YSh0eXBlKTtcbiAgICAgICAgY29uc3QgcGFyZW50VHlwZSA9IHRoaXMuZmluZFBhcmVudFR5cGUodHlwZSwgY2xhc3NNZXRhZGF0YSk7XG4gICAgICAgIGNvbnN0IG1lbWJlcnMgPSBjbGFzc01ldGFkYXRhID8gY2xhc3NNZXRhZGF0YVsnbWVtYmVycyddIDogbnVsbDtcbiAgICAgICAgY29uc3QgY3RvckRhdGEgPSBtZW1iZXJzID8gbWVtYmVyc1snX19jdG9yX18nXSA6IG51bGw7XG4gICAgICAgIGlmIChjdG9yRGF0YSkge1xuICAgICAgICAgIGNvbnN0IGN0b3IgPSAoPGFueVtdPmN0b3JEYXRhKS5maW5kKGEgPT4gYVsnX19zeW1ib2xpYyddID09ICdjb25zdHJ1Y3RvcicpO1xuICAgICAgICAgIGNvbnN0IHJhd1BhcmFtZXRlclR5cGVzID0gPGFueVtdPmN0b3JbJ3BhcmFtZXRlcnMnXSB8fCBbXTtcbiAgICAgICAgICBjb25zdCBwYXJhbWV0ZXJEZWNvcmF0b3JzID0gPGFueVtdPnRoaXMuc2ltcGxpZnkodHlwZSwgY3RvclsncGFyYW1ldGVyRGVjb3JhdG9ycyddIHx8IFtdKTtcbiAgICAgICAgICBwYXJhbWV0ZXJzID0gW107XG4gICAgICAgICAgcmF3UGFyYW1ldGVyVHlwZXMuZm9yRWFjaCgocmF3UGFyYW1UeXBlLCBpbmRleCkgPT4ge1xuICAgICAgICAgICAgY29uc3QgbmVzdGVkUmVzdWx0OiBhbnlbXSA9IFtdO1xuICAgICAgICAgICAgY29uc3QgcGFyYW1UeXBlID0gdGhpcy50cnlTaW1wbGlmeSh0eXBlLCByYXdQYXJhbVR5cGUpO1xuICAgICAgICAgICAgaWYgKHBhcmFtVHlwZSkgbmVzdGVkUmVzdWx0LnB1c2gocGFyYW1UeXBlKTtcbiAgICAgICAgICAgIGNvbnN0IGRlY29yYXRvcnMgPSBwYXJhbWV0ZXJEZWNvcmF0b3JzID8gcGFyYW1ldGVyRGVjb3JhdG9yc1tpbmRleF0gOiBudWxsO1xuICAgICAgICAgICAgaWYgKGRlY29yYXRvcnMpIHtcbiAgICAgICAgICAgICAgbmVzdGVkUmVzdWx0LnB1c2goLi4uZGVjb3JhdG9ycyk7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICBwYXJhbWV0ZXJzICEucHVzaChuZXN0ZWRSZXN1bHQpO1xuICAgICAgICAgIH0pO1xuICAgICAgICB9IGVsc2UgaWYgKHBhcmVudFR5cGUpIHtcbiAgICAgICAgICBwYXJhbWV0ZXJzID0gdGhpcy5wYXJhbWV0ZXJzKHBhcmVudFR5cGUpO1xuICAgICAgICB9XG4gICAgICAgIGlmICghcGFyYW1ldGVycykge1xuICAgICAgICAgIHBhcmFtZXRlcnMgPSBbXTtcbiAgICAgICAgfVxuICAgICAgICB0aGlzLnBhcmFtZXRlckNhY2hlLnNldCh0eXBlLCBwYXJhbWV0ZXJzKTtcbiAgICAgIH1cbiAgICAgIHJldHVybiBwYXJhbWV0ZXJzO1xuICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgIGNvbnNvbGUuZXJyb3IoYEZhaWxlZCBvbiB0eXBlICR7SlNPTi5zdHJpbmdpZnkodHlwZSl9IHdpdGggZXJyb3IgJHtlfWApO1xuICAgICAgdGhyb3cgZTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIF9tZXRob2ROYW1lcyh0eXBlOiBhbnkpOiB7W2tleTogc3RyaW5nXTogYm9vbGVhbn0ge1xuICAgIGxldCBtZXRob2ROYW1lcyA9IHRoaXMubWV0aG9kQ2FjaGUuZ2V0KHR5cGUpO1xuICAgIGlmICghbWV0aG9kTmFtZXMpIHtcbiAgICAgIGNvbnN0IGNsYXNzTWV0YWRhdGEgPSB0aGlzLmdldFR5cGVNZXRhZGF0YSh0eXBlKTtcbiAgICAgIG1ldGhvZE5hbWVzID0ge307XG4gICAgICBjb25zdCBwYXJlbnRUeXBlID0gdGhpcy5maW5kUGFyZW50VHlwZSh0eXBlLCBjbGFzc01ldGFkYXRhKTtcbiAgICAgIGlmIChwYXJlbnRUeXBlKSB7XG4gICAgICAgIGNvbnN0IHBhcmVudE1ldGhvZE5hbWVzID0gdGhpcy5fbWV0aG9kTmFtZXMocGFyZW50VHlwZSk7XG4gICAgICAgIE9iamVjdC5rZXlzKHBhcmVudE1ldGhvZE5hbWVzKS5mb3JFYWNoKChwYXJlbnRQcm9wKSA9PiB7XG4gICAgICAgICAgbWV0aG9kTmFtZXMgIVtwYXJlbnRQcm9wXSA9IHBhcmVudE1ldGhvZE5hbWVzW3BhcmVudFByb3BdO1xuICAgICAgICB9KTtcbiAgICAgIH1cblxuICAgICAgY29uc3QgbWVtYmVycyA9IGNsYXNzTWV0YWRhdGFbJ21lbWJlcnMnXSB8fCB7fTtcbiAgICAgIE9iamVjdC5rZXlzKG1lbWJlcnMpLmZvckVhY2goKHByb3BOYW1lKSA9PiB7XG4gICAgICAgIGNvbnN0IHByb3BEYXRhID0gbWVtYmVyc1twcm9wTmFtZV07XG4gICAgICAgIGNvbnN0IGlzTWV0aG9kID0gKDxhbnlbXT5wcm9wRGF0YSkuc29tZShhID0+IGFbJ19fc3ltYm9saWMnXSA9PSAnbWV0aG9kJyk7XG4gICAgICAgIG1ldGhvZE5hbWVzICFbcHJvcE5hbWVdID0gbWV0aG9kTmFtZXMgIVtwcm9wTmFtZV0gfHwgaXNNZXRob2Q7XG4gICAgICB9KTtcbiAgICAgIHRoaXMubWV0aG9kQ2FjaGUuc2V0KHR5cGUsIG1ldGhvZE5hbWVzKTtcbiAgICB9XG4gICAgcmV0dXJuIG1ldGhvZE5hbWVzO1xuICB9XG5cbiAgcHJpdmF0ZSBfc3RhdGljTWVtYmVycyh0eXBlOiBTdGF0aWNTeW1ib2wpOiBzdHJpbmdbXSB7XG4gICAgbGV0IHN0YXRpY01lbWJlcnMgPSB0aGlzLnN0YXRpY0NhY2hlLmdldCh0eXBlKTtcbiAgICBpZiAoIXN0YXRpY01lbWJlcnMpIHtcbiAgICAgIGNvbnN0IGNsYXNzTWV0YWRhdGEgPSB0aGlzLmdldFR5cGVNZXRhZGF0YSh0eXBlKTtcbiAgICAgIGNvbnN0IHN0YXRpY01lbWJlckRhdGEgPSBjbGFzc01ldGFkYXRhWydzdGF0aWNzJ10gfHwge307XG4gICAgICBzdGF0aWNNZW1iZXJzID0gT2JqZWN0LmtleXMoc3RhdGljTWVtYmVyRGF0YSk7XG4gICAgICB0aGlzLnN0YXRpY0NhY2hlLnNldCh0eXBlLCBzdGF0aWNNZW1iZXJzKTtcbiAgICB9XG4gICAgcmV0dXJuIHN0YXRpY01lbWJlcnM7XG4gIH1cblxuXG4gIHByaXZhdGUgZmluZFBhcmVudFR5cGUodHlwZTogU3RhdGljU3ltYm9sLCBjbGFzc01ldGFkYXRhOiBhbnkpOiBTdGF0aWNTeW1ib2x8dW5kZWZpbmVkIHtcbiAgICBjb25zdCBwYXJlbnRUeXBlID0gdGhpcy50cnlTaW1wbGlmeSh0eXBlLCBjbGFzc01ldGFkYXRhWydleHRlbmRzJ10pO1xuICAgIGlmIChwYXJlbnRUeXBlIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB7XG4gICAgICByZXR1cm4gcGFyZW50VHlwZTtcbiAgICB9XG4gIH1cblxuICBoYXNMaWZlY3ljbGVIb29rKHR5cGU6IGFueSwgbGNQcm9wZXJ0eTogc3RyaW5nKTogYm9vbGVhbiB7XG4gICAgaWYgKCEodHlwZSBpbnN0YW5jZW9mIFN0YXRpY1N5bWJvbCkpIHtcbiAgICAgIHRoaXMucmVwb3J0RXJyb3IoXG4gICAgICAgICAgbmV3IEVycm9yKFxuICAgICAgICAgICAgICBgaGFzTGlmZWN5Y2xlSG9vayByZWNlaXZlZCAke0pTT04uc3RyaW5naWZ5KHR5cGUpfSB3aGljaCBpcyBub3QgYSBTdGF0aWNTeW1ib2xgKSxcbiAgICAgICAgICB0eXBlKTtcbiAgICB9XG4gICAgdHJ5IHtcbiAgICAgIHJldHVybiAhIXRoaXMuX21ldGhvZE5hbWVzKHR5cGUpW2xjUHJvcGVydHldO1xuICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgIGNvbnNvbGUuZXJyb3IoYEZhaWxlZCBvbiB0eXBlICR7SlNPTi5zdHJpbmdpZnkodHlwZSl9IHdpdGggZXJyb3IgJHtlfWApO1xuICAgICAgdGhyb3cgZTtcbiAgICB9XG4gIH1cblxuICBndWFyZHModHlwZTogYW55KToge1trZXk6IHN0cmluZ106IFN0YXRpY1N5bWJvbH0ge1xuICAgIGlmICghKHR5cGUgaW5zdGFuY2VvZiBTdGF0aWNTeW1ib2wpKSB7XG4gICAgICB0aGlzLnJlcG9ydEVycm9yKFxuICAgICAgICAgIG5ldyBFcnJvcihgZ3VhcmRzIHJlY2VpdmVkICR7SlNPTi5zdHJpbmdpZnkodHlwZSl9IHdoaWNoIGlzIG5vdCBhIFN0YXRpY1N5bWJvbGApLCB0eXBlKTtcbiAgICAgIHJldHVybiB7fTtcbiAgICB9XG4gICAgY29uc3Qgc3RhdGljTWVtYmVycyA9IHRoaXMuX3N0YXRpY01lbWJlcnModHlwZSk7XG4gICAgY29uc3QgcmVzdWx0OiB7W2tleTogc3RyaW5nXTogU3RhdGljU3ltYm9sfSA9IHt9O1xuICAgIGZvciAobGV0IG5hbWUgb2Ygc3RhdGljTWVtYmVycykge1xuICAgICAgaWYgKG5hbWUuZW5kc1dpdGgoVFlQRUdVQVJEX1BPU1RGSVgpKSB7XG4gICAgICAgIGxldCBwcm9wZXJ0eSA9IG5hbWUuc3Vic3RyKDAsIG5hbWUubGVuZ3RoIC0gVFlQRUdVQVJEX1BPU1RGSVgubGVuZ3RoKTtcbiAgICAgICAgbGV0IHZhbHVlOiBhbnk7XG4gICAgICAgIGlmIChwcm9wZXJ0eS5lbmRzV2l0aChVU0VfSUYpKSB7XG4gICAgICAgICAgcHJvcGVydHkgPSBuYW1lLnN1YnN0cigwLCBwcm9wZXJ0eS5sZW5ndGggLSBVU0VfSUYubGVuZ3RoKTtcbiAgICAgICAgICB2YWx1ZSA9IFVTRV9JRjtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICB2YWx1ZSA9IHRoaXMuZ2V0U3RhdGljU3ltYm9sKHR5cGUuZmlsZVBhdGgsIHR5cGUubmFtZSwgW25hbWVdKTtcbiAgICAgICAgfVxuICAgICAgICByZXN1bHRbcHJvcGVydHldID0gdmFsdWU7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICBwcml2YXRlIF9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IodHlwZTogU3RhdGljU3ltYm9sLCBjdG9yOiBhbnkpOiB2b2lkIHtcbiAgICB0aGlzLmNvbnZlcnNpb25NYXAuc2V0KHR5cGUsIChjb250ZXh0OiBTdGF0aWNTeW1ib2wsIGFyZ3M6IGFueVtdKSA9PiBuZXcgY3RvciguLi5hcmdzKSk7XG4gIH1cblxuICBwcml2YXRlIF9yZWdpc3RlckZ1bmN0aW9uKHR5cGU6IFN0YXRpY1N5bWJvbCwgZm46IGFueSk6IHZvaWQge1xuICAgIHRoaXMuY29udmVyc2lvbk1hcC5zZXQodHlwZSwgKGNvbnRleHQ6IFN0YXRpY1N5bWJvbCwgYXJnczogYW55W10pID0+IGZuLmFwcGx5KHVuZGVmaW5lZCwgYXJncykpO1xuICB9XG5cbiAgcHJpdmF0ZSBpbml0aWFsaXplQ29udmVyc2lvbk1hcCgpOiB2b2lkIHtcbiAgICB0aGlzLl9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IoXG4gICAgICAgIHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ0luamVjdGFibGUnKSwgY3JlYXRlSW5qZWN0YWJsZSk7XG4gICAgdGhpcy5pbmplY3Rpb25Ub2tlbiA9IHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ0luamVjdGlvblRva2VuJyk7XG4gICAgdGhpcy5vcGFxdWVUb2tlbiA9IHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ09wYXF1ZVRva2VuJyk7XG4gICAgdGhpcy5ST1VURVMgPSB0aGlzLnRyeUZpbmREZWNsYXJhdGlvbihBTkdVTEFSX1JPVVRFUiwgJ1JPVVRFUycpO1xuICAgIHRoaXMuQU5BTFlaRV9GT1JfRU5UUllfQ09NUE9ORU5UUyA9XG4gICAgICAgIHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ0FOQUxZWkVfRk9SX0VOVFJZX0NPTVBPTkVOVFMnKTtcblxuICAgIHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3Rvcih0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdIb3N0JyksIGNyZWF0ZUhvc3QpO1xuICAgIHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3Rvcih0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdTZWxmJyksIGNyZWF0ZVNlbGYpO1xuICAgIHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3RvcihcbiAgICAgICAgdGhpcy5maW5kRGVjbGFyYXRpb24oQU5HVUxBUl9DT1JFLCAnU2tpcFNlbGYnKSwgY3JlYXRlU2tpcFNlbGYpO1xuICAgIHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3RvcihcbiAgICAgICAgdGhpcy5maW5kRGVjbGFyYXRpb24oQU5HVUxBUl9DT1JFLCAnSW5qZWN0JyksIGNyZWF0ZUluamVjdCk7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKFxuICAgICAgICB0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdPcHRpb25hbCcpLCBjcmVhdGVPcHRpb25hbCk7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKFxuICAgICAgICB0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdBdHRyaWJ1dGUnKSwgY3JlYXRlQXR0cmlidXRlKTtcbiAgICB0aGlzLl9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IoXG4gICAgICAgIHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ0NvbnRlbnRDaGlsZCcpLCBjcmVhdGVDb250ZW50Q2hpbGQpO1xuICAgIHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3RvcihcbiAgICAgICAgdGhpcy5maW5kRGVjbGFyYXRpb24oQU5HVUxBUl9DT1JFLCAnQ29udGVudENoaWxkcmVuJyksIGNyZWF0ZUNvbnRlbnRDaGlsZHJlbik7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKFxuICAgICAgICB0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdWaWV3Q2hpbGQnKSwgY3JlYXRlVmlld0NoaWxkKTtcbiAgICB0aGlzLl9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IoXG4gICAgICAgIHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ1ZpZXdDaGlsZHJlbicpLCBjcmVhdGVWaWV3Q2hpbGRyZW4pO1xuICAgIHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3Rvcih0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdJbnB1dCcpLCBjcmVhdGVJbnB1dCk7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKFxuICAgICAgICB0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdPdXRwdXQnKSwgY3JlYXRlT3V0cHV0KTtcbiAgICB0aGlzLl9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IodGhpcy5maW5kRGVjbGFyYXRpb24oQU5HVUxBUl9DT1JFLCAnUGlwZScpLCBjcmVhdGVQaXBlKTtcbiAgICB0aGlzLl9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IoXG4gICAgICAgIHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ0hvc3RCaW5kaW5nJyksIGNyZWF0ZUhvc3RCaW5kaW5nKTtcbiAgICB0aGlzLl9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IoXG4gICAgICAgIHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ0hvc3RMaXN0ZW5lcicpLCBjcmVhdGVIb3N0TGlzdGVuZXIpO1xuICAgIHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3RvcihcbiAgICAgICAgdGhpcy5maW5kRGVjbGFyYXRpb24oQU5HVUxBUl9DT1JFLCAnRGlyZWN0aXZlJyksIGNyZWF0ZURpcmVjdGl2ZSk7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKFxuICAgICAgICB0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdDb21wb25lbnQnKSwgY3JlYXRlQ29tcG9uZW50KTtcbiAgICB0aGlzLl9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IoXG4gICAgICAgIHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ05nTW9kdWxlJyksIGNyZWF0ZU5nTW9kdWxlKTtcblxuICAgIC8vIE5vdGU6IFNvbWUgbWV0YWRhdGEgY2xhc3NlcyBjYW4gYmUgdXNlZCBkaXJlY3RseSB3aXRoIFByb3ZpZGVyLmRlcHMuXG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ0hvc3QnKSwgY3JlYXRlSG9zdCk7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ1NlbGYnKSwgY3JlYXRlU2VsZik7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKFxuICAgICAgICB0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdTa2lwU2VsZicpLCBjcmVhdGVTa2lwU2VsZik7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKFxuICAgICAgICB0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdPcHRpb25hbCcpLCBjcmVhdGVPcHRpb25hbCk7XG4gIH1cblxuICAvKipcbiAgICogZ2V0U3RhdGljU3ltYm9sIHByb2R1Y2VzIGEgVHlwZSB3aG9zZSBtZXRhZGF0YSBpcyBrbm93biBidXQgd2hvc2UgaW1wbGVtZW50YXRpb24gaXMgbm90IGxvYWRlZC5cbiAgICogQWxsIHR5cGVzIHBhc3NlZCB0byB0aGUgU3RhdGljUmVzb2x2ZXIgc2hvdWxkIGJlIHBzZXVkby10eXBlcyByZXR1cm5lZCBieSB0aGlzIG1ldGhvZC5cbiAgICpcbiAgICogQHBhcmFtIGRlY2xhcmF0aW9uRmlsZSB0aGUgYWJzb2x1dGUgcGF0aCBvZiB0aGUgZmlsZSB3aGVyZSB0aGUgc3ltYm9sIGlzIGRlY2xhcmVkXG4gICAqIEBwYXJhbSBuYW1lIHRoZSBuYW1lIG9mIHRoZSB0eXBlLlxuICAgKi9cbiAgZ2V0U3RhdGljU3ltYm9sKGRlY2xhcmF0aW9uRmlsZTogc3RyaW5nLCBuYW1lOiBzdHJpbmcsIG1lbWJlcnM/OiBzdHJpbmdbXSk6IFN0YXRpY1N5bWJvbCB7XG4gICAgcmV0dXJuIHRoaXMuc3ltYm9sUmVzb2x2ZXIuZ2V0U3RhdGljU3ltYm9sKGRlY2xhcmF0aW9uRmlsZSwgbmFtZSwgbWVtYmVycyk7XG4gIH1cblxuICAvKipcbiAgICogU2ltcGxpZnkgYnV0IGRpc2NhcmQgYW55IGVycm9yc1xuICAgKi9cbiAgcHJpdmF0ZSB0cnlTaW1wbGlmeShjb250ZXh0OiBTdGF0aWNTeW1ib2wsIHZhbHVlOiBhbnkpOiBhbnkge1xuICAgIGNvbnN0IG9yaWdpbmFsUmVjb3JkZXIgPSB0aGlzLmVycm9yUmVjb3JkZXI7XG4gICAgdGhpcy5lcnJvclJlY29yZGVyID0gKGVycm9yOiBhbnksIGZpbGVOYW1lPzogc3RyaW5nKSA9PiB7fTtcbiAgICBjb25zdCByZXN1bHQgPSB0aGlzLnNpbXBsaWZ5KGNvbnRleHQsIHZhbHVlKTtcbiAgICB0aGlzLmVycm9yUmVjb3JkZXIgPSBvcmlnaW5hbFJlY29yZGVyO1xuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIHB1YmxpYyBzaW1wbGlmeShjb250ZXh0OiBTdGF0aWNTeW1ib2wsIHZhbHVlOiBhbnksIGxhenk6IGJvb2xlYW4gPSBmYWxzZSk6IGFueSB7XG4gICAgY29uc3Qgc2VsZiA9IHRoaXM7XG4gICAgbGV0IHNjb3BlID0gQmluZGluZ1Njb3BlLmVtcHR5O1xuICAgIGNvbnN0IGNhbGxpbmcgPSBuZXcgTWFwPFN0YXRpY1N5bWJvbCwgYm9vbGVhbj4oKTtcbiAgICBjb25zdCByb290Q29udGV4dCA9IGNvbnRleHQ7XG5cbiAgICBmdW5jdGlvbiBzaW1wbGlmeUluQ29udGV4dChcbiAgICAgICAgY29udGV4dDogU3RhdGljU3ltYm9sLCB2YWx1ZTogYW55LCBkZXB0aDogbnVtYmVyLCByZWZlcmVuY2VzOiBudW1iZXIpOiBhbnkge1xuICAgICAgZnVuY3Rpb24gcmVzb2x2ZVJlZmVyZW5jZVZhbHVlKHN0YXRpY1N5bWJvbDogU3RhdGljU3ltYm9sKTogYW55IHtcbiAgICAgICAgY29uc3QgcmVzb2x2ZWRTeW1ib2wgPSBzZWxmLnN5bWJvbFJlc29sdmVyLnJlc29sdmVTeW1ib2woc3RhdGljU3ltYm9sKTtcbiAgICAgICAgcmV0dXJuIHJlc29sdmVkU3ltYm9sID8gcmVzb2x2ZWRTeW1ib2wubWV0YWRhdGEgOiBudWxsO1xuICAgICAgfVxuXG4gICAgICBmdW5jdGlvbiBzaW1wbGlmeUVhZ2VybHkodmFsdWU6IGFueSk6IGFueSB7XG4gICAgICAgIHJldHVybiBzaW1wbGlmeUluQ29udGV4dChjb250ZXh0LCB2YWx1ZSwgZGVwdGgsIDApO1xuICAgICAgfVxuXG4gICAgICBmdW5jdGlvbiBzaW1wbGlmeUxhemlseSh2YWx1ZTogYW55KTogYW55IHtcbiAgICAgICAgcmV0dXJuIHNpbXBsaWZ5SW5Db250ZXh0KGNvbnRleHQsIHZhbHVlLCBkZXB0aCwgcmVmZXJlbmNlcyArIDEpO1xuICAgICAgfVxuXG4gICAgICBmdW5jdGlvbiBzaW1wbGlmeU5lc3RlZChuZXN0ZWRDb250ZXh0OiBTdGF0aWNTeW1ib2wsIHZhbHVlOiBhbnkpOiBhbnkge1xuICAgICAgICBpZiAobmVzdGVkQ29udGV4dCA9PT0gY29udGV4dCkge1xuICAgICAgICAgIC8vIElmIHRoZSBjb250ZXh0IGhhc24ndCBjaGFuZ2VkIGxldCB0aGUgZXhjZXB0aW9uIHByb3BhZ2F0ZSB1bm1vZGlmaWVkLlxuICAgICAgICAgIHJldHVybiBzaW1wbGlmeUluQ29udGV4dChuZXN0ZWRDb250ZXh0LCB2YWx1ZSwgZGVwdGggKyAxLCByZWZlcmVuY2VzKTtcbiAgICAgICAgfVxuICAgICAgICB0cnkge1xuICAgICAgICAgIHJldHVybiBzaW1wbGlmeUluQ29udGV4dChuZXN0ZWRDb250ZXh0LCB2YWx1ZSwgZGVwdGggKyAxLCByZWZlcmVuY2VzKTtcbiAgICAgICAgfSBjYXRjaCAoZSkge1xuICAgICAgICAgIGlmIChpc01ldGFkYXRhRXJyb3IoZSkpIHtcbiAgICAgICAgICAgIC8vIFByb3BhZ2F0ZSB0aGUgbWVzc2FnZSB0ZXh0IHVwIGJ1dCBhZGQgYSBtZXNzYWdlIHRvIHRoZSBjaGFpbiB0aGF0IGV4cGxhaW5zIGhvdyB3ZSBnb3RcbiAgICAgICAgICAgIC8vIGhlcmUuXG4gICAgICAgICAgICAvLyBlLmNoYWluIGltcGxpZXMgZS5zeW1ib2xcbiAgICAgICAgICAgIGNvbnN0IHN1bW1hcnlNc2cgPSBlLmNoYWluID8gJ3JlZmVyZW5jZXMgXFwnJyArIGUuc3ltYm9sICEubmFtZSArICdcXCcnIDogZXJyb3JTdW1tYXJ5KGUpO1xuICAgICAgICAgICAgY29uc3Qgc3VtbWFyeSA9IGAnJHtuZXN0ZWRDb250ZXh0Lm5hbWV9JyAke3N1bW1hcnlNc2d9YDtcbiAgICAgICAgICAgIGNvbnN0IGNoYWluID0ge21lc3NhZ2U6IHN1bW1hcnksIHBvc2l0aW9uOiBlLnBvc2l0aW9uLCBuZXh0OiBlLmNoYWlufTtcbiAgICAgICAgICAgIC8vIFRPRE8oY2h1Y2tqKTogcmV0cmlldmUgdGhlIHBvc2l0aW9uIGluZm9ybWF0aW9uIGluZGlyZWN0bHkgZnJvbSB0aGUgY29sbGVjdG9ycyBub2RlXG4gICAgICAgICAgICAvLyBtYXAgaWYgdGhlIG1ldGFkYXRhIGlzIGZyb20gYSAudHMgZmlsZS5cbiAgICAgICAgICAgIHNlbGYuZXJyb3IoXG4gICAgICAgICAgICAgICAge1xuICAgICAgICAgICAgICAgICAgbWVzc2FnZTogZS5tZXNzYWdlLFxuICAgICAgICAgICAgICAgICAgYWR2aXNlOiBlLmFkdmlzZSxcbiAgICAgICAgICAgICAgICAgIGNvbnRleHQ6IGUuY29udGV4dCwgY2hhaW4sXG4gICAgICAgICAgICAgICAgICBzeW1ib2w6IG5lc3RlZENvbnRleHRcbiAgICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgICAgIGNvbnRleHQpO1xuICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAvLyBJdCBpcyBwcm9iYWJseSBhbiBpbnRlcm5hbCBlcnJvci5cbiAgICAgICAgICAgIHRocm93IGU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIGZ1bmN0aW9uIHNpbXBsaWZ5Q2FsbChcbiAgICAgICAgICBmdW5jdGlvblN5bWJvbDogU3RhdGljU3ltYm9sLCB0YXJnZXRGdW5jdGlvbjogYW55LCBhcmdzOiBhbnlbXSwgdGFyZ2V0RXhwcmVzc2lvbjogYW55KSB7XG4gICAgICAgIGlmICh0YXJnZXRGdW5jdGlvbiAmJiB0YXJnZXRGdW5jdGlvblsnX19zeW1ib2xpYyddID09ICdmdW5jdGlvbicpIHtcbiAgICAgICAgICBpZiAoY2FsbGluZy5nZXQoZnVuY3Rpb25TeW1ib2wpKSB7XG4gICAgICAgICAgICBzZWxmLmVycm9yKFxuICAgICAgICAgICAgICAgIHtcbiAgICAgICAgICAgICAgICAgIG1lc3NhZ2U6ICdSZWN1cnNpb24gaXMgbm90IHN1cHBvcnRlZCcsXG4gICAgICAgICAgICAgICAgICBzdW1tYXJ5OiBgY2FsbGVkICcke2Z1bmN0aW9uU3ltYm9sLm5hbWV9JyByZWN1cnNpdmVseWAsXG4gICAgICAgICAgICAgICAgICB2YWx1ZTogdGFyZ2V0RnVuY3Rpb25cbiAgICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgICAgIGZ1bmN0aW9uU3ltYm9sKTtcbiAgICAgICAgICB9XG4gICAgICAgICAgdHJ5IHtcbiAgICAgICAgICAgIGNvbnN0IHZhbHVlID0gdGFyZ2V0RnVuY3Rpb25bJ3ZhbHVlJ107XG4gICAgICAgICAgICBpZiAodmFsdWUgJiYgKGRlcHRoICE9IDAgfHwgdmFsdWUuX19zeW1ib2xpYyAhPSAnZXJyb3InKSkge1xuICAgICAgICAgICAgICBjb25zdCBwYXJhbWV0ZXJzOiBzdHJpbmdbXSA9IHRhcmdldEZ1bmN0aW9uWydwYXJhbWV0ZXJzJ107XG4gICAgICAgICAgICAgIGNvbnN0IGRlZmF1bHRzOiBhbnlbXSA9IHRhcmdldEZ1bmN0aW9uLmRlZmF1bHRzO1xuICAgICAgICAgICAgICBhcmdzID0gYXJncy5tYXAoYXJnID0+IHNpbXBsaWZ5TmVzdGVkKGNvbnRleHQsIGFyZykpXG4gICAgICAgICAgICAgICAgICAgICAgICAgLm1hcChhcmcgPT4gc2hvdWxkSWdub3JlKGFyZykgPyB1bmRlZmluZWQgOiBhcmcpO1xuICAgICAgICAgICAgICBpZiAoZGVmYXVsdHMgJiYgZGVmYXVsdHMubGVuZ3RoID4gYXJncy5sZW5ndGgpIHtcbiAgICAgICAgICAgICAgICBhcmdzLnB1c2goLi4uZGVmYXVsdHMuc2xpY2UoYXJncy5sZW5ndGgpLm1hcCgodmFsdWU6IGFueSkgPT4gc2ltcGxpZnkodmFsdWUpKSk7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgY2FsbGluZy5zZXQoZnVuY3Rpb25TeW1ib2wsIHRydWUpO1xuICAgICAgICAgICAgICBjb25zdCBmdW5jdGlvblNjb3BlID0gQmluZGluZ1Njb3BlLmJ1aWxkKCk7XG4gICAgICAgICAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgcGFyYW1ldGVycy5sZW5ndGg7IGkrKykge1xuICAgICAgICAgICAgICAgIGZ1bmN0aW9uU2NvcGUuZGVmaW5lKHBhcmFtZXRlcnNbaV0sIGFyZ3NbaV0pO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgIGNvbnN0IG9sZFNjb3BlID0gc2NvcGU7XG4gICAgICAgICAgICAgIGxldCByZXN1bHQ6IGFueTtcbiAgICAgICAgICAgICAgdHJ5IHtcbiAgICAgICAgICAgICAgICBzY29wZSA9IGZ1bmN0aW9uU2NvcGUuZG9uZSgpO1xuICAgICAgICAgICAgICAgIHJlc3VsdCA9IHNpbXBsaWZ5TmVzdGVkKGZ1bmN0aW9uU3ltYm9sLCB2YWx1ZSk7XG4gICAgICAgICAgICAgIH0gZmluYWxseSB7XG4gICAgICAgICAgICAgICAgc2NvcGUgPSBvbGRTY29wZTtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICByZXR1cm4gcmVzdWx0O1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH0gZmluYWxseSB7XG4gICAgICAgICAgICBjYWxsaW5nLmRlbGV0ZShmdW5jdGlvblN5bWJvbCk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgaWYgKGRlcHRoID09PSAwKSB7XG4gICAgICAgICAgLy8gSWYgZGVwdGggaXMgMCB3ZSBhcmUgZXZhbHVhdGluZyB0aGUgdG9wIGxldmVsIGV4cHJlc3Npb24gdGhhdCBpcyBkZXNjcmliaW5nIGVsZW1lbnRcbiAgICAgICAgICAvLyBkZWNvcmF0b3IuIEluIHRoaXMgY2FzZSwgaXQgaXMgYSBkZWNvcmF0b3Igd2UgZG9uJ3QgdW5kZXJzdGFuZCwgc3VjaCBhcyBhIGN1c3RvbVxuICAgICAgICAgIC8vIG5vbi1hbmd1bGFyIGRlY29yYXRvciwgYW5kIHdlIHNob3VsZCBqdXN0IGlnbm9yZSBpdC5cbiAgICAgICAgICByZXR1cm4gSUdOT1JFO1xuICAgICAgICB9XG4gICAgICAgIGxldCBwb3NpdGlvbjogUG9zaXRpb258dW5kZWZpbmVkID0gdW5kZWZpbmVkO1xuICAgICAgICBpZiAodGFyZ2V0RXhwcmVzc2lvbiAmJiB0YXJnZXRFeHByZXNzaW9uLl9fc3ltYm9saWMgPT0gJ3Jlc29sdmVkJykge1xuICAgICAgICAgIGNvbnN0IGxpbmUgPSB0YXJnZXRFeHByZXNzaW9uLmxpbmU7XG4gICAgICAgICAgY29uc3QgY2hhcmFjdGVyID0gdGFyZ2V0RXhwcmVzc2lvbi5jaGFyYWN0ZXI7XG4gICAgICAgICAgY29uc3QgZmlsZU5hbWUgPSB0YXJnZXRFeHByZXNzaW9uLmZpbGVOYW1lO1xuICAgICAgICAgIGlmIChmaWxlTmFtZSAhPSBudWxsICYmIGxpbmUgIT0gbnVsbCAmJiBjaGFyYWN0ZXIgIT0gbnVsbCkge1xuICAgICAgICAgICAgcG9zaXRpb24gPSB7ZmlsZU5hbWUsIGxpbmUsIGNvbHVtbjogY2hhcmFjdGVyfTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgICAgc2VsZi5lcnJvcihcbiAgICAgICAgICAgIHtcbiAgICAgICAgICAgICAgbWVzc2FnZTogRlVOQ1RJT05fQ0FMTF9OT1RfU1VQUE9SVEVELFxuICAgICAgICAgICAgICBjb250ZXh0OiBmdW5jdGlvblN5bWJvbCxcbiAgICAgICAgICAgICAgdmFsdWU6IHRhcmdldEZ1bmN0aW9uLCBwb3NpdGlvblxuICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIGNvbnRleHQpO1xuICAgICAgfVxuXG4gICAgICBmdW5jdGlvbiBzaW1wbGlmeShleHByZXNzaW9uOiBhbnkpOiBhbnkge1xuICAgICAgICBpZiAoaXNQcmltaXRpdmUoZXhwcmVzc2lvbikpIHtcbiAgICAgICAgICByZXR1cm4gZXhwcmVzc2lvbjtcbiAgICAgICAgfVxuICAgICAgICBpZiAoQXJyYXkuaXNBcnJheShleHByZXNzaW9uKSkge1xuICAgICAgICAgIGNvbnN0IHJlc3VsdDogYW55W10gPSBbXTtcbiAgICAgICAgICBmb3IgKGNvbnN0IGl0ZW0gb2YgKDxhbnk+ZXhwcmVzc2lvbikpIHtcbiAgICAgICAgICAgIC8vIENoZWNrIGZvciBhIHNwcmVhZCBleHByZXNzaW9uXG4gICAgICAgICAgICBpZiAoaXRlbSAmJiBpdGVtLl9fc3ltYm9saWMgPT09ICdzcHJlYWQnKSB7XG4gICAgICAgICAgICAgIC8vIFdlIGNhbGwgd2l0aCByZWZlcmVuY2VzIGFzIDAgYmVjYXVzZSB3ZSByZXF1aXJlIHRoZSBhY3R1YWwgdmFsdWUgYW5kIGNhbm5vdFxuICAgICAgICAgICAgICAvLyB0b2xlcmF0ZSBhIHJlZmVyZW5jZSBoZXJlLlxuICAgICAgICAgICAgICBjb25zdCBzcHJlYWRBcnJheSA9IHNpbXBsaWZ5RWFnZXJseShpdGVtLmV4cHJlc3Npb24pO1xuICAgICAgICAgICAgICBpZiAoQXJyYXkuaXNBcnJheShzcHJlYWRBcnJheSkpIHtcbiAgICAgICAgICAgICAgICBmb3IgKGNvbnN0IHNwcmVhZEl0ZW0gb2Ygc3ByZWFkQXJyYXkpIHtcbiAgICAgICAgICAgICAgICAgIHJlc3VsdC5wdXNoKHNwcmVhZEl0ZW0pO1xuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICBjb250aW51ZTtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfVxuICAgICAgICAgICAgY29uc3QgdmFsdWUgPSBzaW1wbGlmeShpdGVtKTtcbiAgICAgICAgICAgIGlmIChzaG91bGRJZ25vcmUodmFsdWUpKSB7XG4gICAgICAgICAgICAgIGNvbnRpbnVlO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgcmVzdWx0LnB1c2godmFsdWUpO1xuICAgICAgICAgIH1cbiAgICAgICAgICByZXR1cm4gcmVzdWx0O1xuICAgICAgICB9XG4gICAgICAgIGlmIChleHByZXNzaW9uIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB7XG4gICAgICAgICAgLy8gU3RvcCBzaW1wbGlmaWNhdGlvbiBhdCBidWlsdGluIHN5bWJvbHMgb3IgaWYgd2UgYXJlIGluIGEgcmVmZXJlbmNlIGNvbnRleHQgYW5kXG4gICAgICAgICAgLy8gdGhlIHN5bWJvbCBkb2Vzbid0IGhhdmUgbWVtYmVycy5cbiAgICAgICAgICBpZiAoZXhwcmVzc2lvbiA9PT0gc2VsZi5pbmplY3Rpb25Ub2tlbiB8fCBzZWxmLmNvbnZlcnNpb25NYXAuaGFzKGV4cHJlc3Npb24pIHx8XG4gICAgICAgICAgICAgIChyZWZlcmVuY2VzID4gMCAmJiAhZXhwcmVzc2lvbi5tZW1iZXJzLmxlbmd0aCkpIHtcbiAgICAgICAgICAgIHJldHVybiBleHByZXNzaW9uO1xuICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICBjb25zdCBzdGF0aWNTeW1ib2wgPSBleHByZXNzaW9uO1xuICAgICAgICAgICAgY29uc3QgZGVjbGFyYXRpb25WYWx1ZSA9IHJlc29sdmVSZWZlcmVuY2VWYWx1ZShzdGF0aWNTeW1ib2wpO1xuICAgICAgICAgICAgaWYgKGRlY2xhcmF0aW9uVmFsdWUgIT0gbnVsbCkge1xuICAgICAgICAgICAgICByZXR1cm4gc2ltcGxpZnlOZXN0ZWQoc3RhdGljU3ltYm9sLCBkZWNsYXJhdGlvblZhbHVlKTtcbiAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgIHJldHVybiBzdGF0aWNTeW1ib2w7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICAgIGlmIChleHByZXNzaW9uKSB7XG4gICAgICAgICAgaWYgKGV4cHJlc3Npb25bJ19fc3ltYm9saWMnXSkge1xuICAgICAgICAgICAgbGV0IHN0YXRpY1N5bWJvbDogU3RhdGljU3ltYm9sO1xuICAgICAgICAgICAgc3dpdGNoIChleHByZXNzaW9uWydfX3N5bWJvbGljJ10pIHtcbiAgICAgICAgICAgICAgY2FzZSAnYmlub3AnOlxuICAgICAgICAgICAgICAgIGxldCBsZWZ0ID0gc2ltcGxpZnkoZXhwcmVzc2lvblsnbGVmdCddKTtcbiAgICAgICAgICAgICAgICBpZiAoc2hvdWxkSWdub3JlKGxlZnQpKSByZXR1cm4gbGVmdDtcbiAgICAgICAgICAgICAgICBsZXQgcmlnaHQgPSBzaW1wbGlmeShleHByZXNzaW9uWydyaWdodCddKTtcbiAgICAgICAgICAgICAgICBpZiAoc2hvdWxkSWdub3JlKHJpZ2h0KSkgcmV0dXJuIHJpZ2h0O1xuICAgICAgICAgICAgICAgIHN3aXRjaCAoZXhwcmVzc2lvblsnb3BlcmF0b3InXSkge1xuICAgICAgICAgICAgICAgICAgY2FzZSAnJiYnOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gbGVmdCAmJiByaWdodDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJ3x8JzpcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGxlZnQgfHwgcmlnaHQ7XG4gICAgICAgICAgICAgICAgICBjYXNlICd8JzpcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGxlZnQgfCByaWdodDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJ14nOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gbGVmdCBeIHJpZ2h0O1xuICAgICAgICAgICAgICAgICAgY2FzZSAnJic6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0ICYgcmlnaHQ7XG4gICAgICAgICAgICAgICAgICBjYXNlICc9PSc6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0ID09IHJpZ2h0O1xuICAgICAgICAgICAgICAgICAgY2FzZSAnIT0nOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gbGVmdCAhPSByaWdodDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJz09PSc6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0ID09PSByaWdodDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJyE9PSc6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0ICE9PSByaWdodDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJzwnOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gbGVmdCA8IHJpZ2h0O1xuICAgICAgICAgICAgICAgICAgY2FzZSAnPic6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0ID4gcmlnaHQ7XG4gICAgICAgICAgICAgICAgICBjYXNlICc8PSc6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0IDw9IHJpZ2h0O1xuICAgICAgICAgICAgICAgICAgY2FzZSAnPj0nOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gbGVmdCA+PSByaWdodDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJzw8JzpcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGxlZnQgPDwgcmlnaHQ7XG4gICAgICAgICAgICAgICAgICBjYXNlICc+Pic6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0ID4+IHJpZ2h0O1xuICAgICAgICAgICAgICAgICAgY2FzZSAnKyc6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0ICsgcmlnaHQ7XG4gICAgICAgICAgICAgICAgICBjYXNlICctJzpcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGxlZnQgLSByaWdodDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJyonOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gbGVmdCAqIHJpZ2h0O1xuICAgICAgICAgICAgICAgICAgY2FzZSAnLyc6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0IC8gcmlnaHQ7XG4gICAgICAgICAgICAgICAgICBjYXNlICclJzpcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGxlZnQgJSByaWdodDtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgcmV0dXJuIG51bGw7XG4gICAgICAgICAgICAgIGNhc2UgJ2lmJzpcbiAgICAgICAgICAgICAgICBsZXQgY29uZGl0aW9uID0gc2ltcGxpZnkoZXhwcmVzc2lvblsnY29uZGl0aW9uJ10pO1xuICAgICAgICAgICAgICAgIHJldHVybiBjb25kaXRpb24gPyBzaW1wbGlmeShleHByZXNzaW9uWyd0aGVuRXhwcmVzc2lvbiddKSA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpbXBsaWZ5KGV4cHJlc3Npb25bJ2Vsc2VFeHByZXNzaW9uJ10pO1xuICAgICAgICAgICAgICBjYXNlICdwcmUnOlxuICAgICAgICAgICAgICAgIGxldCBvcGVyYW5kID0gc2ltcGxpZnkoZXhwcmVzc2lvblsnb3BlcmFuZCddKTtcbiAgICAgICAgICAgICAgICBpZiAoc2hvdWxkSWdub3JlKG9wZXJhbmQpKSByZXR1cm4gb3BlcmFuZDtcbiAgICAgICAgICAgICAgICBzd2l0Y2ggKGV4cHJlc3Npb25bJ29wZXJhdG9yJ10pIHtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJysnOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gb3BlcmFuZDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJy0nOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gLW9wZXJhbmQ7XG4gICAgICAgICAgICAgICAgICBjYXNlICchJzpcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuICFvcGVyYW5kO1xuICAgICAgICAgICAgICAgICAgY2FzZSAnfic6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiB+b3BlcmFuZDtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgcmV0dXJuIG51bGw7XG4gICAgICAgICAgICAgIGNhc2UgJ2luZGV4JzpcbiAgICAgICAgICAgICAgICBsZXQgaW5kZXhUYXJnZXQgPSBzaW1wbGlmeUVhZ2VybHkoZXhwcmVzc2lvblsnZXhwcmVzc2lvbiddKTtcbiAgICAgICAgICAgICAgICBsZXQgaW5kZXggPSBzaW1wbGlmeUVhZ2VybHkoZXhwcmVzc2lvblsnaW5kZXgnXSk7XG4gICAgICAgICAgICAgICAgaWYgKGluZGV4VGFyZ2V0ICYmIGlzUHJpbWl0aXZlKGluZGV4KSkgcmV0dXJuIGluZGV4VGFyZ2V0W2luZGV4XTtcbiAgICAgICAgICAgICAgICByZXR1cm4gbnVsbDtcbiAgICAgICAgICAgICAgY2FzZSAnc2VsZWN0JzpcbiAgICAgICAgICAgICAgICBjb25zdCBtZW1iZXIgPSBleHByZXNzaW9uWydtZW1iZXInXTtcbiAgICAgICAgICAgICAgICBsZXQgc2VsZWN0Q29udGV4dCA9IGNvbnRleHQ7XG4gICAgICAgICAgICAgICAgbGV0IHNlbGVjdFRhcmdldCA9IHNpbXBsaWZ5KGV4cHJlc3Npb25bJ2V4cHJlc3Npb24nXSk7XG4gICAgICAgICAgICAgICAgaWYgKHNlbGVjdFRhcmdldCBpbnN0YW5jZW9mIFN0YXRpY1N5bWJvbCkge1xuICAgICAgICAgICAgICAgICAgY29uc3QgbWVtYmVycyA9IHNlbGVjdFRhcmdldC5tZW1iZXJzLmNvbmNhdChtZW1iZXIpO1xuICAgICAgICAgICAgICAgICAgc2VsZWN0Q29udGV4dCA9XG4gICAgICAgICAgICAgICAgICAgICAgc2VsZi5nZXRTdGF0aWNTeW1ib2woc2VsZWN0VGFyZ2V0LmZpbGVQYXRoLCBzZWxlY3RUYXJnZXQubmFtZSwgbWVtYmVycyk7XG4gICAgICAgICAgICAgICAgICBjb25zdCBkZWNsYXJhdGlvblZhbHVlID0gcmVzb2x2ZVJlZmVyZW5jZVZhbHVlKHNlbGVjdENvbnRleHQpO1xuICAgICAgICAgICAgICAgICAgaWYgKGRlY2xhcmF0aW9uVmFsdWUgIT0gbnVsbCkge1xuICAgICAgICAgICAgICAgICAgICByZXR1cm4gc2ltcGxpZnlOZXN0ZWQoc2VsZWN0Q29udGV4dCwgZGVjbGFyYXRpb25WYWx1ZSk7XG4gICAgICAgICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgICAgICByZXR1cm4gc2VsZWN0Q29udGV4dDtcbiAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgaWYgKHNlbGVjdFRhcmdldCAmJiBpc1ByaW1pdGl2ZShtZW1iZXIpKVxuICAgICAgICAgICAgICAgICAgcmV0dXJuIHNpbXBsaWZ5TmVzdGVkKHNlbGVjdENvbnRleHQsIHNlbGVjdFRhcmdldFttZW1iZXJdKTtcbiAgICAgICAgICAgICAgICByZXR1cm4gbnVsbDtcbiAgICAgICAgICAgICAgY2FzZSAncmVmZXJlbmNlJzpcbiAgICAgICAgICAgICAgICAvLyBOb3RlOiBUaGlzIG9ubHkgaGFzIHRvIGRlYWwgd2l0aCB2YXJpYWJsZSByZWZlcmVuY2VzLCBhcyBzeW1ib2wgcmVmZXJlbmNlcyBoYXZlXG4gICAgICAgICAgICAgICAgLy8gYmVlbiBjb252ZXJ0ZWQgaW50byAncmVzb2x2ZWQnXG4gICAgICAgICAgICAgICAgLy8gaW4gdGhlIFN0YXRpY1N5bWJvbFJlc29sdmVyLlxuICAgICAgICAgICAgICAgIGNvbnN0IG5hbWU6IHN0cmluZyA9IGV4cHJlc3Npb25bJ25hbWUnXTtcbiAgICAgICAgICAgICAgICBjb25zdCBsb2NhbFZhbHVlID0gc2NvcGUucmVzb2x2ZShuYW1lKTtcbiAgICAgICAgICAgICAgICBpZiAobG9jYWxWYWx1ZSAhPSBCaW5kaW5nU2NvcGUubWlzc2luZykge1xuICAgICAgICAgICAgICAgICAgcmV0dXJuIGxvY2FsVmFsdWU7XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgICAgICBjYXNlICdyZXNvbHZlZCc6XG4gICAgICAgICAgICAgICAgdHJ5IHtcbiAgICAgICAgICAgICAgICAgIHJldHVybiBzaW1wbGlmeShleHByZXNzaW9uLnN5bWJvbCk7XG4gICAgICAgICAgICAgICAgfSBjYXRjaCAoZSkge1xuICAgICAgICAgICAgICAgICAgLy8gSWYgYW4gZXJyb3IgaXMgcmVwb3J0ZWQgZXZhbHVhdGluZyB0aGUgc3ltYm9sIHJlY29yZCB0aGUgcG9zaXRpb24gb2YgdGhlXG4gICAgICAgICAgICAgICAgICAvLyByZWZlcmVuY2UgaW4gdGhlIGVycm9yIHNvIGl0IGNhblxuICAgICAgICAgICAgICAgICAgLy8gYmUgcmVwb3J0ZWQgaW4gdGhlIGVycm9yIG1lc3NhZ2UgZ2VuZXJhdGVkIGZyb20gdGhlIGV4Y2VwdGlvbi5cbiAgICAgICAgICAgICAgICAgIGlmIChpc01ldGFkYXRhRXJyb3IoZSkgJiYgZXhwcmVzc2lvbi5maWxlTmFtZSAhPSBudWxsICYmXG4gICAgICAgICAgICAgICAgICAgICAgZXhwcmVzc2lvbi5saW5lICE9IG51bGwgJiYgZXhwcmVzc2lvbi5jaGFyYWN0ZXIgIT0gbnVsbCkge1xuICAgICAgICAgICAgICAgICAgICBlLnBvc2l0aW9uID0ge1xuICAgICAgICAgICAgICAgICAgICAgIGZpbGVOYW1lOiBleHByZXNzaW9uLmZpbGVOYW1lLFxuICAgICAgICAgICAgICAgICAgICAgIGxpbmU6IGV4cHJlc3Npb24ubGluZSxcbiAgICAgICAgICAgICAgICAgICAgICBjb2x1bW46IGV4cHJlc3Npb24uY2hhcmFjdGVyXG4gICAgICAgICAgICAgICAgICAgIH07XG4gICAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgICB0aHJvdyBlO1xuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgY2FzZSAnY2xhc3MnOlxuICAgICAgICAgICAgICAgIHJldHVybiBjb250ZXh0O1xuICAgICAgICAgICAgICBjYXNlICdmdW5jdGlvbic6XG4gICAgICAgICAgICAgICAgcmV0dXJuIGNvbnRleHQ7XG4gICAgICAgICAgICAgIGNhc2UgJ25ldyc6XG4gICAgICAgICAgICAgIGNhc2UgJ2NhbGwnOlxuICAgICAgICAgICAgICAgIC8vIERldGVybWluZSBpZiB0aGUgZnVuY3Rpb24gaXMgYSBidWlsdC1pbiBjb252ZXJzaW9uXG4gICAgICAgICAgICAgICAgc3RhdGljU3ltYm9sID0gc2ltcGxpZnlJbkNvbnRleHQoXG4gICAgICAgICAgICAgICAgICAgIGNvbnRleHQsIGV4cHJlc3Npb25bJ2V4cHJlc3Npb24nXSwgZGVwdGggKyAxLCAvKiByZWZlcmVuY2VzICovIDApO1xuICAgICAgICAgICAgICAgIGlmIChzdGF0aWNTeW1ib2wgaW5zdGFuY2VvZiBTdGF0aWNTeW1ib2wpIHtcbiAgICAgICAgICAgICAgICAgIGlmIChzdGF0aWNTeW1ib2wgPT09IHNlbGYuaW5qZWN0aW9uVG9rZW4gfHwgc3RhdGljU3ltYm9sID09PSBzZWxmLm9wYXF1ZVRva2VuKSB7XG4gICAgICAgICAgICAgICAgICAgIC8vIGlmIHNvbWVib2R5IGNhbGxzIG5ldyBJbmplY3Rpb25Ub2tlbiwgZG9uJ3QgY3JlYXRlIGFuIEluamVjdGlvblRva2VuLFxuICAgICAgICAgICAgICAgICAgICAvLyBidXQgcmF0aGVyIHJldHVybiB0aGUgc3ltYm9sIHRvIHdoaWNoIHRoZSBJbmplY3Rpb25Ub2tlbiBpcyBhc3NpZ25lZCB0by5cblxuICAgICAgICAgICAgICAgICAgICAvLyBPcGFxdWVUb2tlbiBpcyBzdXBwb3J0ZWQgdG9vIGFzIGl0IGlzIHJlcXVpcmVkIGJ5IHRoZSBsYW5ndWFnZSBzZXJ2aWNlIHRvXG4gICAgICAgICAgICAgICAgICAgIC8vIHN1cHBvcnQgdjQgYW5kIHByaW9yIHZlcnNpb25zIG9mIEFuZ3VsYXIuXG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBjb250ZXh0O1xuICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgICAgY29uc3QgYXJnRXhwcmVzc2lvbnM6IGFueVtdID0gZXhwcmVzc2lvblsnYXJndW1lbnRzJ10gfHwgW107XG4gICAgICAgICAgICAgICAgICBsZXQgY29udmVydGVyID0gc2VsZi5jb252ZXJzaW9uTWFwLmdldChzdGF0aWNTeW1ib2wpO1xuICAgICAgICAgICAgICAgICAgaWYgKGNvbnZlcnRlcikge1xuICAgICAgICAgICAgICAgICAgICBjb25zdCBhcmdzID0gYXJnRXhwcmVzc2lvbnMubWFwKGFyZyA9PiBzaW1wbGlmeU5lc3RlZChjb250ZXh0LCBhcmcpKVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5tYXAoYXJnID0+IHNob3VsZElnbm9yZShhcmcpID8gdW5kZWZpbmVkIDogYXJnKTtcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGNvbnZlcnRlcihjb250ZXh0LCBhcmdzKTtcbiAgICAgICAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICAgICAgIC8vIERldGVybWluZSBpZiB0aGUgZnVuY3Rpb24gaXMgb25lIHdlIGNhbiBzaW1wbGlmeS5cbiAgICAgICAgICAgICAgICAgICAgY29uc3QgdGFyZ2V0RnVuY3Rpb24gPSByZXNvbHZlUmVmZXJlbmNlVmFsdWUoc3RhdGljU3ltYm9sKTtcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHNpbXBsaWZ5Q2FsbChcbiAgICAgICAgICAgICAgICAgICAgICAgIHN0YXRpY1N5bWJvbCwgdGFyZ2V0RnVuY3Rpb24sIGFyZ0V4cHJlc3Npb25zLCBleHByZXNzaW9uWydleHByZXNzaW9uJ10pO1xuICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICByZXR1cm4gSUdOT1JFO1xuICAgICAgICAgICAgICBjYXNlICdlcnJvcic6XG4gICAgICAgICAgICAgICAgbGV0IG1lc3NhZ2UgPSBleHByZXNzaW9uLm1lc3NhZ2U7XG4gICAgICAgICAgICAgICAgaWYgKGV4cHJlc3Npb25bJ2xpbmUnXSAhPSBudWxsKSB7XG4gICAgICAgICAgICAgICAgICBzZWxmLmVycm9yKFxuICAgICAgICAgICAgICAgICAgICAgIHtcbiAgICAgICAgICAgICAgICAgICAgICAgIG1lc3NhZ2UsXG4gICAgICAgICAgICAgICAgICAgICAgICBjb250ZXh0OiBleHByZXNzaW9uLmNvbnRleHQsXG4gICAgICAgICAgICAgICAgICAgICAgICB2YWx1ZTogZXhwcmVzc2lvbixcbiAgICAgICAgICAgICAgICAgICAgICAgIHBvc2l0aW9uOiB7XG4gICAgICAgICAgICAgICAgICAgICAgICAgIGZpbGVOYW1lOiBleHByZXNzaW9uWydmaWxlTmFtZSddLFxuICAgICAgICAgICAgICAgICAgICAgICAgICBsaW5lOiBleHByZXNzaW9uWydsaW5lJ10sXG4gICAgICAgICAgICAgICAgICAgICAgICAgIGNvbHVtbjogZXhwcmVzc2lvblsnY2hhcmFjdGVyJ11cbiAgICAgICAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgICAgICAgICAgIGNvbnRleHQpO1xuICAgICAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICAgICBzZWxmLmVycm9yKHttZXNzYWdlLCBjb250ZXh0OiBleHByZXNzaW9uLmNvbnRleHR9LCBjb250ZXh0KTtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgcmV0dXJuIElHTk9SRTtcbiAgICAgICAgICAgICAgY2FzZSAnaWdub3JlJzpcbiAgICAgICAgICAgICAgICByZXR1cm4gZXhwcmVzc2lvbjtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIHJldHVybiBudWxsO1xuICAgICAgICAgIH1cbiAgICAgICAgICByZXR1cm4gbWFwU3RyaW5nTWFwKGV4cHJlc3Npb24sICh2YWx1ZSwgbmFtZSkgPT4ge1xuICAgICAgICAgICAgaWYgKFJFRkVSRU5DRV9TRVQuaGFzKG5hbWUpKSB7XG4gICAgICAgICAgICAgIGlmIChuYW1lID09PSBVU0VfVkFMVUUgJiYgUFJPVklERSBpbiBleHByZXNzaW9uKSB7XG4gICAgICAgICAgICAgICAgLy8gSWYgdGhpcyBpcyBhIHByb3ZpZGVyIGV4cHJlc3Npb24sIGNoZWNrIGZvciBzcGVjaWFsIHRva2VucyB0aGF0IG5lZWQgdGhlIHZhbHVlXG4gICAgICAgICAgICAgICAgLy8gZHVyaW5nIGFuYWx5c2lzLlxuICAgICAgICAgICAgICAgIGNvbnN0IHByb3ZpZGUgPSBzaW1wbGlmeShleHByZXNzaW9uLnByb3ZpZGUpO1xuICAgICAgICAgICAgICAgIGlmIChwcm92aWRlID09PSBzZWxmLlJPVVRFUyB8fCBwcm92aWRlID09IHNlbGYuQU5BTFlaRV9GT1JfRU5UUllfQ09NUE9ORU5UUykge1xuICAgICAgICAgICAgICAgICAgcmV0dXJuIHNpbXBsaWZ5KHZhbHVlKTtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgcmV0dXJuIHNpbXBsaWZ5TGF6aWx5KHZhbHVlKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIHJldHVybiBzaW1wbGlmeSh2YWx1ZSk7XG4gICAgICAgICAgfSk7XG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuIElHTk9SRTtcbiAgICAgIH1cblxuICAgICAgcmV0dXJuIHNpbXBsaWZ5KHZhbHVlKTtcbiAgICB9XG5cbiAgICBsZXQgcmVzdWx0OiBhbnk7XG4gICAgdHJ5IHtcbiAgICAgIHJlc3VsdCA9IHNpbXBsaWZ5SW5Db250ZXh0KGNvbnRleHQsIHZhbHVlLCAwLCBsYXp5ID8gMSA6IDApO1xuICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgIGlmICh0aGlzLmVycm9yUmVjb3JkZXIpIHtcbiAgICAgICAgdGhpcy5yZXBvcnRFcnJvcihlLCBjb250ZXh0KTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHRocm93IGZvcm1hdE1ldGFkYXRhRXJyb3IoZSwgY29udGV4dCk7XG4gICAgICB9XG4gICAgfVxuICAgIGlmIChzaG91bGRJZ25vcmUocmVzdWx0KSkge1xuICAgICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgICB9XG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIHByaXZhdGUgZ2V0VHlwZU1ldGFkYXRhKHR5cGU6IFN0YXRpY1N5bWJvbCk6IHtba2V5OiBzdHJpbmddOiBhbnl9IHtcbiAgICBjb25zdCByZXNvbHZlZFN5bWJvbCA9IHRoaXMuc3ltYm9sUmVzb2x2ZXIucmVzb2x2ZVN5bWJvbCh0eXBlKTtcbiAgICByZXR1cm4gcmVzb2x2ZWRTeW1ib2wgJiYgcmVzb2x2ZWRTeW1ib2wubWV0YWRhdGEgPyByZXNvbHZlZFN5bWJvbC5tZXRhZGF0YSA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAge19fc3ltYm9saWM6ICdjbGFzcyd9O1xuICB9XG5cbiAgcHJpdmF0ZSByZXBvcnRFcnJvcihlcnJvcjogRXJyb3IsIGNvbnRleHQ6IFN0YXRpY1N5bWJvbCwgcGF0aD86IHN0cmluZykge1xuICAgIGlmICh0aGlzLmVycm9yUmVjb3JkZXIpIHtcbiAgICAgIHRoaXMuZXJyb3JSZWNvcmRlcihcbiAgICAgICAgICBmb3JtYXRNZXRhZGF0YUVycm9yKGVycm9yLCBjb250ZXh0KSwgKGNvbnRleHQgJiYgY29udGV4dC5maWxlUGF0aCkgfHwgcGF0aCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRocm93IGVycm9yO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgZXJyb3IoXG4gICAgICB7bWVzc2FnZSwgc3VtbWFyeSwgYWR2aXNlLCBwb3NpdGlvbiwgY29udGV4dCwgdmFsdWUsIHN5bWJvbCwgY2hhaW59OiB7XG4gICAgICAgIG1lc3NhZ2U6IHN0cmluZyxcbiAgICAgICAgc3VtbWFyeT86IHN0cmluZyxcbiAgICAgICAgYWR2aXNlPzogc3RyaW5nLFxuICAgICAgICBwb3NpdGlvbj86IFBvc2l0aW9uLFxuICAgICAgICBjb250ZXh0PzogYW55LFxuICAgICAgICB2YWx1ZT86IGFueSxcbiAgICAgICAgc3ltYm9sPzogU3RhdGljU3ltYm9sLFxuICAgICAgICBjaGFpbj86IE1ldGFkYXRhTWVzc2FnZUNoYWluXG4gICAgICB9LFxuICAgICAgcmVwb3J0aW5nQ29udGV4dDogU3RhdGljU3ltYm9sKSB7XG4gICAgdGhpcy5yZXBvcnRFcnJvcihcbiAgICAgICAgbWV0YWRhdGFFcnJvcihtZXNzYWdlLCBzdW1tYXJ5LCBhZHZpc2UsIHBvc2l0aW9uLCBzeW1ib2wsIGNvbnRleHQsIGNoYWluKSxcbiAgICAgICAgcmVwb3J0aW5nQ29udGV4dCk7XG4gIH1cbn1cblxuaW50ZXJmYWNlIFBvc2l0aW9uIHtcbiAgZmlsZU5hbWU6IHN0cmluZztcbiAgbGluZTogbnVtYmVyO1xuICBjb2x1bW46IG51bWJlcjtcbn1cblxuaW50ZXJmYWNlIE1ldGFkYXRhTWVzc2FnZUNoYWluIHtcbiAgbWVzc2FnZTogc3RyaW5nO1xuICBzdW1tYXJ5Pzogc3RyaW5nO1xuICBwb3NpdGlvbj86IFBvc2l0aW9uO1xuICBjb250ZXh0PzogYW55O1xuICBzeW1ib2w/OiBTdGF0aWNTeW1ib2w7XG4gIG5leHQ/OiBNZXRhZGF0YU1lc3NhZ2VDaGFpbjtcbn1cblxudHlwZSBNZXRhZGF0YUVycm9yID0gRXJyb3IgJiB7XG4gIHBvc2l0aW9uPzogUG9zaXRpb247XG4gIGFkdmlzZT86IHN0cmluZztcbiAgc3VtbWFyeT86IHN0cmluZztcbiAgY29udGV4dD86IGFueTtcbiAgc3ltYm9sPzogU3RhdGljU3ltYm9sO1xuICBjaGFpbj86IE1ldGFkYXRhTWVzc2FnZUNoYWluO1xufTtcblxuY29uc3QgTUVUQURBVEFfRVJST1IgPSAnbmdNZXRhZGF0YUVycm9yJztcblxuZnVuY3Rpb24gbWV0YWRhdGFFcnJvcihcbiAgICBtZXNzYWdlOiBzdHJpbmcsIHN1bW1hcnk/OiBzdHJpbmcsIGFkdmlzZT86IHN0cmluZywgcG9zaXRpb24/OiBQb3NpdGlvbiwgc3ltYm9sPzogU3RhdGljU3ltYm9sLFxuICAgIGNvbnRleHQ/OiBhbnksIGNoYWluPzogTWV0YWRhdGFNZXNzYWdlQ2hhaW4pOiBNZXRhZGF0YUVycm9yIHtcbiAgY29uc3QgZXJyb3IgPSBzeW50YXhFcnJvcihtZXNzYWdlKSBhcyBNZXRhZGF0YUVycm9yO1xuICAoZXJyb3IgYXMgYW55KVtNRVRBREFUQV9FUlJPUl0gPSB0cnVlO1xuICBpZiAoYWR2aXNlKSBlcnJvci5hZHZpc2UgPSBhZHZpc2U7XG4gIGlmIChwb3NpdGlvbikgZXJyb3IucG9zaXRpb24gPSBwb3NpdGlvbjtcbiAgaWYgKHN1bW1hcnkpIGVycm9yLnN1bW1hcnkgPSBzdW1tYXJ5O1xuICBpZiAoY29udGV4dCkgZXJyb3IuY29udGV4dCA9IGNvbnRleHQ7XG4gIGlmIChjaGFpbikgZXJyb3IuY2hhaW4gPSBjaGFpbjtcbiAgaWYgKHN5bWJvbCkgZXJyb3Iuc3ltYm9sID0gc3ltYm9sO1xuICByZXR1cm4gZXJyb3I7XG59XG5cbmZ1bmN0aW9uIGlzTWV0YWRhdGFFcnJvcihlcnJvcjogRXJyb3IpOiBlcnJvciBpcyBNZXRhZGF0YUVycm9yIHtcbiAgcmV0dXJuICEhKGVycm9yIGFzIGFueSlbTUVUQURBVEFfRVJST1JdO1xufVxuXG5jb25zdCBSRUZFUkVOQ0VfVE9fTk9ORVhQT1JURURfQ0xBU1MgPSAnUmVmZXJlbmNlIHRvIG5vbi1leHBvcnRlZCBjbGFzcyc7XG5jb25zdCBWQVJJQUJMRV9OT1RfSU5JVElBTElaRUQgPSAnVmFyaWFibGUgbm90IGluaXRpYWxpemVkJztcbmNvbnN0IERFU1RSVUNUVVJFX05PVF9TVVBQT1JURUQgPSAnRGVzdHJ1Y3R1cmluZyBub3Qgc3VwcG9ydGVkJztcbmNvbnN0IENPVUxEX05PVF9SRVNPTFZFX1RZUEUgPSAnQ291bGQgbm90IHJlc29sdmUgdHlwZSc7XG5jb25zdCBGVU5DVElPTl9DQUxMX05PVF9TVVBQT1JURUQgPSAnRnVuY3Rpb24gY2FsbCBub3Qgc3VwcG9ydGVkJztcbmNvbnN0IFJFRkVSRU5DRV9UT19MT0NBTF9TWU1CT0wgPSAnUmVmZXJlbmNlIHRvIGEgbG9jYWwgc3ltYm9sJztcbmNvbnN0IExBTUJEQV9OT1RfU1VQUE9SVEVEID0gJ0xhbWJkYSBub3Qgc3VwcG9ydGVkJztcblxuZnVuY3Rpb24gZXhwYW5kZWRNZXNzYWdlKG1lc3NhZ2U6IHN0cmluZywgY29udGV4dDogYW55KTogc3RyaW5nIHtcbiAgc3dpdGNoIChtZXNzYWdlKSB7XG4gICAgY2FzZSBSRUZFUkVOQ0VfVE9fTk9ORVhQT1JURURfQ0xBU1M6XG4gICAgICBpZiAoY29udGV4dCAmJiBjb250ZXh0LmNsYXNzTmFtZSkge1xuICAgICAgICByZXR1cm4gYFJlZmVyZW5jZXMgdG8gYSBub24tZXhwb3J0ZWQgY2xhc3MgYXJlIG5vdCBzdXBwb3J0ZWQgaW4gZGVjb3JhdG9ycyBidXQgJHtjb250ZXh0LmNsYXNzTmFtZX0gd2FzIHJlZmVyZW5jZWQuYDtcbiAgICAgIH1cbiAgICAgIGJyZWFrO1xuICAgIGNhc2UgVkFSSUFCTEVfTk9UX0lOSVRJQUxJWkVEOlxuICAgICAgcmV0dXJuICdPbmx5IGluaXRpYWxpemVkIHZhcmlhYmxlcyBhbmQgY29uc3RhbnRzIGNhbiBiZSByZWZlcmVuY2VkIGluIGRlY29yYXRvcnMgYmVjYXVzZSB0aGUgdmFsdWUgb2YgdGhpcyB2YXJpYWJsZSBpcyBuZWVkZWQgYnkgdGhlIHRlbXBsYXRlIGNvbXBpbGVyJztcbiAgICBjYXNlIERFU1RSVUNUVVJFX05PVF9TVVBQT1JURUQ6XG4gICAgICByZXR1cm4gJ1JlZmVyZW5jaW5nIGFuIGV4cG9ydGVkIGRlc3RydWN0dXJlZCB2YXJpYWJsZSBvciBjb25zdGFudCBpcyBub3Qgc3VwcG9ydGVkIGluIGRlY29yYXRvcnMgYW5kIHRoaXMgdmFsdWUgaXMgbmVlZGVkIGJ5IHRoZSB0ZW1wbGF0ZSBjb21waWxlcic7XG4gICAgY2FzZSBDT1VMRF9OT1RfUkVTT0xWRV9UWVBFOlxuICAgICAgaWYgKGNvbnRleHQgJiYgY29udGV4dC50eXBlTmFtZSkge1xuICAgICAgICByZXR1cm4gYENvdWxkIG5vdCByZXNvbHZlIHR5cGUgJHtjb250ZXh0LnR5cGVOYW1lfWA7XG4gICAgICB9XG4gICAgICBicmVhaztcbiAgICBjYXNlIEZVTkNUSU9OX0NBTExfTk9UX1NVUFBPUlRFRDpcbiAgICAgIGlmIChjb250ZXh0ICYmIGNvbnRleHQubmFtZSkge1xuICAgICAgICByZXR1cm4gYEZ1bmN0aW9uIGNhbGxzIGFyZSBub3Qgc3VwcG9ydGVkIGluIGRlY29yYXRvcnMgYnV0ICcke2NvbnRleHQubmFtZX0nIHdhcyBjYWxsZWRgO1xuICAgICAgfVxuICAgICAgcmV0dXJuICdGdW5jdGlvbiBjYWxscyBhcmUgbm90IHN1cHBvcnRlZCBpbiBkZWNvcmF0b3JzJztcbiAgICBjYXNlIFJFRkVSRU5DRV9UT19MT0NBTF9TWU1CT0w6XG4gICAgICBpZiAoY29udGV4dCAmJiBjb250ZXh0Lm5hbWUpIHtcbiAgICAgICAgcmV0dXJuIGBSZWZlcmVuY2UgdG8gYSBsb2NhbCAobm9uLWV4cG9ydGVkKSBzeW1ib2xzIGFyZSBub3Qgc3VwcG9ydGVkIGluIGRlY29yYXRvcnMgYnV0ICcke2NvbnRleHQubmFtZX0nIHdhcyByZWZlcmVuY2VkYDtcbiAgICAgIH1cbiAgICAgIGJyZWFrO1xuICAgIGNhc2UgTEFNQkRBX05PVF9TVVBQT1JURUQ6XG4gICAgICByZXR1cm4gYEZ1bmN0aW9uIGV4cHJlc3Npb25zIGFyZSBub3Qgc3VwcG9ydGVkIGluIGRlY29yYXRvcnNgO1xuICB9XG4gIHJldHVybiBtZXNzYWdlO1xufVxuXG5mdW5jdGlvbiBtZXNzYWdlQWR2aXNlKG1lc3NhZ2U6IHN0cmluZywgY29udGV4dDogYW55KTogc3RyaW5nfHVuZGVmaW5lZCB7XG4gIHN3aXRjaCAobWVzc2FnZSkge1xuICAgIGNhc2UgUkVGRVJFTkNFX1RPX05PTkVYUE9SVEVEX0NMQVNTOlxuICAgICAgaWYgKGNvbnRleHQgJiYgY29udGV4dC5jbGFzc05hbWUpIHtcbiAgICAgICAgcmV0dXJuIGBDb25zaWRlciBleHBvcnRpbmcgJyR7Y29udGV4dC5jbGFzc05hbWV9J2A7XG4gICAgICB9XG4gICAgICBicmVhaztcbiAgICBjYXNlIERFU1RSVUNUVVJFX05PVF9TVVBQT1JURUQ6XG4gICAgICByZXR1cm4gJ0NvbnNpZGVyIHNpbXBsaWZ5aW5nIHRvIGF2b2lkIGRlc3RydWN0dXJpbmcnO1xuICAgIGNhc2UgUkVGRVJFTkNFX1RPX0xPQ0FMX1NZTUJPTDpcbiAgICAgIGlmIChjb250ZXh0ICYmIGNvbnRleHQubmFtZSkge1xuICAgICAgICByZXR1cm4gYENvbnNpZGVyIGV4cG9ydGluZyAnJHtjb250ZXh0Lm5hbWV9J2A7XG4gICAgICB9XG4gICAgICBicmVhaztcbiAgICBjYXNlIExBTUJEQV9OT1RfU1VQUE9SVEVEOlxuICAgICAgcmV0dXJuIGBDb25zaWRlciBjaGFuZ2luZyB0aGUgZnVuY3Rpb24gZXhwcmVzc2lvbiBpbnRvIGFuIGV4cG9ydGVkIGZ1bmN0aW9uYDtcbiAgfVxuICByZXR1cm4gdW5kZWZpbmVkO1xufVxuXG5mdW5jdGlvbiBlcnJvclN1bW1hcnkoZXJyb3I6IE1ldGFkYXRhRXJyb3IpOiBzdHJpbmcge1xuICBpZiAoZXJyb3Iuc3VtbWFyeSkge1xuICAgIHJldHVybiBlcnJvci5zdW1tYXJ5O1xuICB9XG4gIHN3aXRjaCAoZXJyb3IubWVzc2FnZSkge1xuICAgIGNhc2UgUkVGRVJFTkNFX1RPX05PTkVYUE9SVEVEX0NMQVNTOlxuICAgICAgaWYgKGVycm9yLmNvbnRleHQgJiYgZXJyb3IuY29udGV4dC5jbGFzc05hbWUpIHtcbiAgICAgICAgcmV0dXJuIGByZWZlcmVuY2VzIG5vbi1leHBvcnRlZCBjbGFzcyAke2Vycm9yLmNvbnRleHQuY2xhc3NOYW1lfWA7XG4gICAgICB9XG4gICAgICBicmVhaztcbiAgICBjYXNlIFZBUklBQkxFX05PVF9JTklUSUFMSVpFRDpcbiAgICAgIHJldHVybiAnaXMgbm90IGluaXRpYWxpemVkJztcbiAgICBjYXNlIERFU1RSVUNUVVJFX05PVF9TVVBQT1JURUQ6XG4gICAgICByZXR1cm4gJ2lzIGEgZGVzdHJ1Y3R1cmVkIHZhcmlhYmxlJztcbiAgICBjYXNlIENPVUxEX05PVF9SRVNPTFZFX1RZUEU6XG4gICAgICByZXR1cm4gJ2NvdWxkIG5vdCBiZSByZXNvbHZlZCc7XG4gICAgY2FzZSBGVU5DVElPTl9DQUxMX05PVF9TVVBQT1JURUQ6XG4gICAgICBpZiAoZXJyb3IuY29udGV4dCAmJiBlcnJvci5jb250ZXh0Lm5hbWUpIHtcbiAgICAgICAgcmV0dXJuIGBjYWxscyAnJHtlcnJvci5jb250ZXh0Lm5hbWV9J2A7XG4gICAgICB9XG4gICAgICByZXR1cm4gYGNhbGxzIGEgZnVuY3Rpb25gO1xuICAgIGNhc2UgUkVGRVJFTkNFX1RPX0xPQ0FMX1NZTUJPTDpcbiAgICAgIGlmIChlcnJvci5jb250ZXh0ICYmIGVycm9yLmNvbnRleHQubmFtZSkge1xuICAgICAgICByZXR1cm4gYHJlZmVyZW5jZXMgbG9jYWwgdmFyaWFibGUgJHtlcnJvci5jb250ZXh0Lm5hbWV9YDtcbiAgICAgIH1cbiAgICAgIHJldHVybiBgcmVmZXJlbmNlcyBhIGxvY2FsIHZhcmlhYmxlYDtcbiAgfVxuICByZXR1cm4gJ2NvbnRhaW5zIHRoZSBlcnJvcic7XG59XG5cbmZ1bmN0aW9uIG1hcFN0cmluZ01hcChpbnB1dDoge1trZXk6IHN0cmluZ106IGFueX0sIHRyYW5zZm9ybTogKHZhbHVlOiBhbnksIGtleTogc3RyaW5nKSA9PiBhbnkpOlxuICAgIHtba2V5OiBzdHJpbmddOiBhbnl9IHtcbiAgaWYgKCFpbnB1dCkgcmV0dXJuIHt9O1xuICBjb25zdCByZXN1bHQ6IHtba2V5OiBzdHJpbmddOiBhbnl9ID0ge307XG4gIE9iamVjdC5rZXlzKGlucHV0KS5mb3JFYWNoKChrZXkpID0+IHtcbiAgICBjb25zdCB2YWx1ZSA9IHRyYW5zZm9ybShpbnB1dFtrZXldLCBrZXkpO1xuICAgIGlmICghc2hvdWxkSWdub3JlKHZhbHVlKSkge1xuICAgICAgaWYgKEhJRERFTl9LRVkudGVzdChrZXkpKSB7XG4gICAgICAgIE9iamVjdC5kZWZpbmVQcm9wZXJ0eShyZXN1bHQsIGtleSwge2VudW1lcmFibGU6IGZhbHNlLCBjb25maWd1cmFibGU6IHRydWUsIHZhbHVlOiB2YWx1ZX0pO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgcmVzdWx0W2tleV0gPSB2YWx1ZTtcbiAgICAgIH1cbiAgICB9XG4gIH0pO1xuICByZXR1cm4gcmVzdWx0O1xufVxuXG5mdW5jdGlvbiBpc1ByaW1pdGl2ZShvOiBhbnkpOiBib29sZWFuIHtcbiAgcmV0dXJuIG8gPT09IG51bGwgfHwgKHR5cGVvZiBvICE9PSAnZnVuY3Rpb24nICYmIHR5cGVvZiBvICE9PSAnb2JqZWN0Jyk7XG59XG5cbmludGVyZmFjZSBCaW5kaW5nU2NvcGVCdWlsZGVyIHtcbiAgZGVmaW5lKG5hbWU6IHN0cmluZywgdmFsdWU6IGFueSk6IEJpbmRpbmdTY29wZUJ1aWxkZXI7XG4gIGRvbmUoKTogQmluZGluZ1Njb3BlO1xufVxuXG5hYnN0cmFjdCBjbGFzcyBCaW5kaW5nU2NvcGUge1xuICBhYnN0cmFjdCByZXNvbHZlKG5hbWU6IHN0cmluZyk6IGFueTtcbiAgcHVibGljIHN0YXRpYyBtaXNzaW5nID0ge307XG4gIHB1YmxpYyBzdGF0aWMgZW1wdHk6IEJpbmRpbmdTY29wZSA9IHtyZXNvbHZlOiBuYW1lID0+IEJpbmRpbmdTY29wZS5taXNzaW5nfTtcblxuICBwdWJsaWMgc3RhdGljIGJ1aWxkKCk6IEJpbmRpbmdTY29wZUJ1aWxkZXIge1xuICAgIGNvbnN0IGN1cnJlbnQgPSBuZXcgTWFwPHN0cmluZywgYW55PigpO1xuICAgIHJldHVybiB7XG4gICAgICBkZWZpbmU6IGZ1bmN0aW9uKG5hbWUsIHZhbHVlKSB7XG4gICAgICAgIGN1cnJlbnQuc2V0KG5hbWUsIHZhbHVlKTtcbiAgICAgICAgcmV0dXJuIHRoaXM7XG4gICAgICB9LFxuICAgICAgZG9uZTogZnVuY3Rpb24oKSB7XG4gICAgICAgIHJldHVybiBjdXJyZW50LnNpemUgPiAwID8gbmV3IFBvcHVsYXRlZFNjb3BlKGN1cnJlbnQpIDogQmluZGluZ1Njb3BlLmVtcHR5O1xuICAgICAgfVxuICAgIH07XG4gIH1cbn1cblxuY2xhc3MgUG9wdWxhdGVkU2NvcGUgZXh0ZW5kcyBCaW5kaW5nU2NvcGUge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGJpbmRpbmdzOiBNYXA8c3RyaW5nLCBhbnk+KSB7IHN1cGVyKCk7IH1cblxuICByZXNvbHZlKG5hbWU6IHN0cmluZyk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMuYmluZGluZ3MuaGFzKG5hbWUpID8gdGhpcy5iaW5kaW5ncy5nZXQobmFtZSkgOiBCaW5kaW5nU2NvcGUubWlzc2luZztcbiAgfVxufVxuXG5mdW5jdGlvbiBmb3JtYXRNZXRhZGF0YU1lc3NhZ2VDaGFpbihcbiAgICBjaGFpbjogTWV0YWRhdGFNZXNzYWdlQ2hhaW4sIGFkdmlzZTogc3RyaW5nIHwgdW5kZWZpbmVkKTogRm9ybWF0dGVkTWVzc2FnZUNoYWluIHtcbiAgY29uc3QgZXhwYW5kZWQgPSBleHBhbmRlZE1lc3NhZ2UoY2hhaW4ubWVzc2FnZSwgY2hhaW4uY29udGV4dCk7XG4gIGNvbnN0IG5lc3RpbmcgPSBjaGFpbi5zeW1ib2wgPyBgIGluICcke2NoYWluLnN5bWJvbC5uYW1lfSdgIDogJyc7XG4gIGNvbnN0IG1lc3NhZ2UgPSBgJHtleHBhbmRlZH0ke25lc3Rpbmd9YDtcbiAgY29uc3QgcG9zaXRpb24gPSBjaGFpbi5wb3NpdGlvbjtcbiAgY29uc3QgbmV4dDogRm9ybWF0dGVkTWVzc2FnZUNoYWlufHVuZGVmaW5lZCA9IGNoYWluLm5leHQgP1xuICAgICAgZm9ybWF0TWV0YWRhdGFNZXNzYWdlQ2hhaW4oY2hhaW4ubmV4dCwgYWR2aXNlKSA6XG4gICAgICBhZHZpc2UgPyB7bWVzc2FnZTogYWR2aXNlfSA6IHVuZGVmaW5lZDtcbiAgcmV0dXJuIHttZXNzYWdlLCBwb3NpdGlvbiwgbmV4dDogbmV4dCA/IFtuZXh0XSA6IHVuZGVmaW5lZH07XG59XG5cbmZ1bmN0aW9uIGZvcm1hdE1ldGFkYXRhRXJyb3IoZTogRXJyb3IsIGNvbnRleHQ6IFN0YXRpY1N5bWJvbCk6IEVycm9yIHtcbiAgaWYgKGlzTWV0YWRhdGFFcnJvcihlKSkge1xuICAgIC8vIFByb2R1Y2UgYSBmb3JtYXR0ZWQgdmVyc2lvbiBvZiB0aGUgYW5kIGxlYXZpbmcgZW5vdWdoIGluZm9ybWF0aW9uIGluIHRoZSBvcmlnaW5hbCBlcnJvclxuICAgIC8vIHRvIHJlY292ZXIgdGhlIGZvcm1hdHRpbmcgaW5mb3JtYXRpb24gdG8gZXZlbnR1YWxseSBwcm9kdWNlIGEgZGlhZ25vc3RpYyBlcnJvciBtZXNzYWdlLlxuICAgIGNvbnN0IHBvc2l0aW9uID0gZS5wb3NpdGlvbjtcbiAgICBjb25zdCBjaGFpbjogTWV0YWRhdGFNZXNzYWdlQ2hhaW4gPSB7XG4gICAgICBtZXNzYWdlOiBgRXJyb3IgZHVyaW5nIHRlbXBsYXRlIGNvbXBpbGUgb2YgJyR7Y29udGV4dC5uYW1lfSdgLFxuICAgICAgcG9zaXRpb246IHBvc2l0aW9uLFxuICAgICAgbmV4dDoge21lc3NhZ2U6IGUubWVzc2FnZSwgbmV4dDogZS5jaGFpbiwgY29udGV4dDogZS5jb250ZXh0LCBzeW1ib2w6IGUuc3ltYm9sfVxuICAgIH07XG4gICAgY29uc3QgYWR2aXNlID0gZS5hZHZpc2UgfHwgbWVzc2FnZUFkdmlzZShlLm1lc3NhZ2UsIGUuY29udGV4dCk7XG4gICAgcmV0dXJuIGZvcm1hdHRlZEVycm9yKGZvcm1hdE1ldGFkYXRhTWVzc2FnZUNoYWluKGNoYWluLCBhZHZpc2UpKTtcbiAgfVxuICByZXR1cm4gZTtcbn1cbiJdfQ==