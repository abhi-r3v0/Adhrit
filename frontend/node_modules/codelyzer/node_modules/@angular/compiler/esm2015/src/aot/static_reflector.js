/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { CompileSummaryKind } from '../compile_metadata';
import { createAttribute, createComponent, createContentChild, createContentChildren, createDirective, createHost, createHostBinding, createHostListener, createInject, createInjectable, createInput, createNgModule, createOptional, createOutput, createPipe, createSelf, createSkipSelf, createViewChild, createViewChildren } from '../core';
import { syntaxError } from '../util';
import { formattedError } from './formatted_error';
import { StaticSymbol } from './static_symbol';
const ANGULAR_CORE = '@angular/core';
const ANGULAR_ROUTER = '@angular/router';
const HIDDEN_KEY = /^\$.*\$$/;
const IGNORE = {
    __symbolic: 'ignore'
};
const USE_VALUE = 'useValue';
const PROVIDE = 'provide';
const REFERENCE_SET = new Set([USE_VALUE, 'useFactory', 'data', 'id', 'loadChildren']);
const TYPEGUARD_POSTFIX = 'TypeGuard';
const USE_IF = 'UseIf';
function shouldIgnore(value) {
    return value && value.__symbolic == 'ignore';
}
/**
 * A static reflector implements enough of the Reflector API that is necessary to compile
 * templates statically.
 */
export class StaticReflector {
    constructor(summaryResolver, symbolResolver, knownMetadataClasses = [], knownMetadataFunctions = [], errorRecorder) {
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
        knownMetadataClasses.forEach((kc) => this._registerDecoratorOrConstructor(this.getStaticSymbol(kc.filePath, kc.name), kc.ctor));
        knownMetadataFunctions.forEach((kf) => this._registerFunction(this.getStaticSymbol(kf.filePath, kf.name), kf.fn));
        this.annotationForParentClassWithSummaryKind.set(CompileSummaryKind.Directive, [createDirective, createComponent]);
        this.annotationForParentClassWithSummaryKind.set(CompileSummaryKind.Pipe, [createPipe]);
        this.annotationForParentClassWithSummaryKind.set(CompileSummaryKind.NgModule, [createNgModule]);
        this.annotationForParentClassWithSummaryKind.set(CompileSummaryKind.Injectable, [createInjectable, createPipe, createDirective, createComponent, createNgModule]);
    }
    componentModuleUrl(typeOrFunc) {
        const staticSymbol = this.findSymbolDeclaration(typeOrFunc);
        return this.symbolResolver.getResourcePath(staticSymbol);
    }
    /**
     * Invalidate the specified `symbols` on program change.
     * @param symbols
     */
    invalidateSymbols(symbols) {
        for (const symbol of symbols) {
            this.annotationCache.delete(symbol);
            this.shallowAnnotationCache.delete(symbol);
            this.propertyCache.delete(symbol);
            this.parameterCache.delete(symbol);
            this.methodCache.delete(symbol);
            this.staticCache.delete(symbol);
            this.conversionMap.delete(symbol);
        }
    }
    resolveExternalReference(ref, containingFile) {
        let key = undefined;
        if (!containingFile) {
            key = `${ref.moduleName}:${ref.name}`;
            const declarationSymbol = this.resolvedExternalReferences.get(key);
            if (declarationSymbol)
                return declarationSymbol;
        }
        const refSymbol = this.symbolResolver.getSymbolByModule(ref.moduleName, ref.name, containingFile);
        const declarationSymbol = this.findSymbolDeclaration(refSymbol);
        if (!containingFile) {
            this.symbolResolver.recordModuleNameForFileName(refSymbol.filePath, ref.moduleName);
            this.symbolResolver.recordImportAs(declarationSymbol, refSymbol);
        }
        if (key) {
            this.resolvedExternalReferences.set(key, declarationSymbol);
        }
        return declarationSymbol;
    }
    findDeclaration(moduleUrl, name, containingFile) {
        return this.findSymbolDeclaration(this.symbolResolver.getSymbolByModule(moduleUrl, name, containingFile));
    }
    tryFindDeclaration(moduleUrl, name, containingFile) {
        return this.symbolResolver.ignoreErrorsFor(() => this.findDeclaration(moduleUrl, name, containingFile));
    }
    findSymbolDeclaration(symbol) {
        const resolvedSymbol = this.symbolResolver.resolveSymbol(symbol);
        if (resolvedSymbol) {
            let resolvedMetadata = resolvedSymbol.metadata;
            if (resolvedMetadata && resolvedMetadata.__symbolic === 'resolved') {
                resolvedMetadata = resolvedMetadata.symbol;
            }
            if (resolvedMetadata instanceof StaticSymbol) {
                return this.findSymbolDeclaration(resolvedSymbol.metadata);
            }
        }
        return symbol;
    }
    tryAnnotations(type) {
        const originalRecorder = this.errorRecorder;
        this.errorRecorder = (error, fileName) => { };
        try {
            return this.annotations(type);
        }
        finally {
            this.errorRecorder = originalRecorder;
        }
    }
    annotations(type) {
        return this._annotations(type, (type, decorators) => this.simplify(type, decorators), this.annotationCache);
    }
    shallowAnnotations(type) {
        return this._annotations(type, (type, decorators) => this.simplify(type, decorators, true), this.shallowAnnotationCache);
    }
    _annotations(type, simplify, annotationCache) {
        let annotations = annotationCache.get(type);
        if (!annotations) {
            annotations = [];
            const classMetadata = this.getTypeMetadata(type);
            const parentType = this.findParentType(type, classMetadata);
            if (parentType) {
                const parentAnnotations = this.annotations(parentType);
                annotations.push(...parentAnnotations);
            }
            let ownAnnotations = [];
            if (classMetadata['decorators']) {
                ownAnnotations = simplify(type, classMetadata['decorators']);
                if (ownAnnotations) {
                    annotations.push(...ownAnnotations);
                }
            }
            if (parentType && !this.summaryResolver.isLibraryFile(type.filePath) &&
                this.summaryResolver.isLibraryFile(parentType.filePath)) {
                const summary = this.summaryResolver.resolveSummary(parentType);
                if (summary && summary.type) {
                    const requiredAnnotationTypes = this.annotationForParentClassWithSummaryKind.get(summary.type.summaryKind);
                    const typeHasRequiredAnnotation = requiredAnnotationTypes.some((requiredType) => ownAnnotations.some(ann => requiredType.isTypeOf(ann)));
                    if (!typeHasRequiredAnnotation) {
                        this.reportError(formatMetadataError(metadataError(`Class ${type.name} in ${type.filePath} extends from a ${CompileSummaryKind[summary.type.summaryKind]} in another compilation unit without duplicating the decorator`, 
                        /* summary */ undefined, `Please add a ${requiredAnnotationTypes.map((type) => type.ngMetadataName).join(' or ')} decorator to the class`), type), type);
                    }
                }
            }
            annotationCache.set(type, annotations.filter(ann => !!ann));
        }
        return annotations;
    }
    propMetadata(type) {
        let propMetadata = this.propertyCache.get(type);
        if (!propMetadata) {
            const classMetadata = this.getTypeMetadata(type);
            propMetadata = {};
            const parentType = this.findParentType(type, classMetadata);
            if (parentType) {
                const parentPropMetadata = this.propMetadata(parentType);
                Object.keys(parentPropMetadata).forEach((parentProp) => {
                    propMetadata[parentProp] = parentPropMetadata[parentProp];
                });
            }
            const members = classMetadata['members'] || {};
            Object.keys(members).forEach((propName) => {
                const propData = members[propName];
                const prop = propData
                    .find(a => a['__symbolic'] == 'property' || a['__symbolic'] == 'method');
                const decorators = [];
                if (propMetadata[propName]) {
                    decorators.push(...propMetadata[propName]);
                }
                propMetadata[propName] = decorators;
                if (prop && prop['decorators']) {
                    decorators.push(...this.simplify(type, prop['decorators']));
                }
            });
            this.propertyCache.set(type, propMetadata);
        }
        return propMetadata;
    }
    parameters(type) {
        if (!(type instanceof StaticSymbol)) {
            this.reportError(new Error(`parameters received ${JSON.stringify(type)} which is not a StaticSymbol`), type);
            return [];
        }
        try {
            let parameters = this.parameterCache.get(type);
            if (!parameters) {
                const classMetadata = this.getTypeMetadata(type);
                const parentType = this.findParentType(type, classMetadata);
                const members = classMetadata ? classMetadata['members'] : null;
                const ctorData = members ? members['__ctor__'] : null;
                if (ctorData) {
                    const ctor = ctorData.find(a => a['__symbolic'] == 'constructor');
                    const rawParameterTypes = ctor['parameters'] || [];
                    const parameterDecorators = this.simplify(type, ctor['parameterDecorators'] || []);
                    parameters = [];
                    rawParameterTypes.forEach((rawParamType, index) => {
                        const nestedResult = [];
                        const paramType = this.trySimplify(type, rawParamType);
                        if (paramType)
                            nestedResult.push(paramType);
                        const decorators = parameterDecorators ? parameterDecorators[index] : null;
                        if (decorators) {
                            nestedResult.push(...decorators);
                        }
                        parameters.push(nestedResult);
                    });
                }
                else if (parentType) {
                    parameters = this.parameters(parentType);
                }
                if (!parameters) {
                    parameters = [];
                }
                this.parameterCache.set(type, parameters);
            }
            return parameters;
        }
        catch (e) {
            console.error(`Failed on type ${JSON.stringify(type)} with error ${e}`);
            throw e;
        }
    }
    _methodNames(type) {
        let methodNames = this.methodCache.get(type);
        if (!methodNames) {
            const classMetadata = this.getTypeMetadata(type);
            methodNames = {};
            const parentType = this.findParentType(type, classMetadata);
            if (parentType) {
                const parentMethodNames = this._methodNames(parentType);
                Object.keys(parentMethodNames).forEach((parentProp) => {
                    methodNames[parentProp] = parentMethodNames[parentProp];
                });
            }
            const members = classMetadata['members'] || {};
            Object.keys(members).forEach((propName) => {
                const propData = members[propName];
                const isMethod = propData.some(a => a['__symbolic'] == 'method');
                methodNames[propName] = methodNames[propName] || isMethod;
            });
            this.methodCache.set(type, methodNames);
        }
        return methodNames;
    }
    _staticMembers(type) {
        let staticMembers = this.staticCache.get(type);
        if (!staticMembers) {
            const classMetadata = this.getTypeMetadata(type);
            const staticMemberData = classMetadata['statics'] || {};
            staticMembers = Object.keys(staticMemberData);
            this.staticCache.set(type, staticMembers);
        }
        return staticMembers;
    }
    findParentType(type, classMetadata) {
        const parentType = this.trySimplify(type, classMetadata['extends']);
        if (parentType instanceof StaticSymbol) {
            return parentType;
        }
    }
    hasLifecycleHook(type, lcProperty) {
        if (!(type instanceof StaticSymbol)) {
            this.reportError(new Error(`hasLifecycleHook received ${JSON.stringify(type)} which is not a StaticSymbol`), type);
        }
        try {
            return !!this._methodNames(type)[lcProperty];
        }
        catch (e) {
            console.error(`Failed on type ${JSON.stringify(type)} with error ${e}`);
            throw e;
        }
    }
    guards(type) {
        if (!(type instanceof StaticSymbol)) {
            this.reportError(new Error(`guards received ${JSON.stringify(type)} which is not a StaticSymbol`), type);
            return {};
        }
        const staticMembers = this._staticMembers(type);
        const result = {};
        for (let name of staticMembers) {
            if (name.endsWith(TYPEGUARD_POSTFIX)) {
                let property = name.substr(0, name.length - TYPEGUARD_POSTFIX.length);
                let value;
                if (property.endsWith(USE_IF)) {
                    property = name.substr(0, property.length - USE_IF.length);
                    value = USE_IF;
                }
                else {
                    value = this.getStaticSymbol(type.filePath, type.name, [name]);
                }
                result[property] = value;
            }
        }
        return result;
    }
    _registerDecoratorOrConstructor(type, ctor) {
        this.conversionMap.set(type, (context, args) => new ctor(...args));
    }
    _registerFunction(type, fn) {
        this.conversionMap.set(type, (context, args) => fn.apply(undefined, args));
    }
    initializeConversionMap() {
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Injectable'), createInjectable);
        this.injectionToken = this.findDeclaration(ANGULAR_CORE, 'InjectionToken');
        this.opaqueToken = this.findDeclaration(ANGULAR_CORE, 'OpaqueToken');
        this.ROUTES = this.tryFindDeclaration(ANGULAR_ROUTER, 'ROUTES');
        this.ANALYZE_FOR_ENTRY_COMPONENTS =
            this.findDeclaration(ANGULAR_CORE, 'ANALYZE_FOR_ENTRY_COMPONENTS');
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Host'), createHost);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Self'), createSelf);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'SkipSelf'), createSkipSelf);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Inject'), createInject);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Optional'), createOptional);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Attribute'), createAttribute);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'ContentChild'), createContentChild);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'ContentChildren'), createContentChildren);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'ViewChild'), createViewChild);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'ViewChildren'), createViewChildren);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Input'), createInput);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Output'), createOutput);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Pipe'), createPipe);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'HostBinding'), createHostBinding);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'HostListener'), createHostListener);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Directive'), createDirective);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Component'), createComponent);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'NgModule'), createNgModule);
        // Note: Some metadata classes can be used directly with Provider.deps.
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Host'), createHost);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Self'), createSelf);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'SkipSelf'), createSkipSelf);
        this._registerDecoratorOrConstructor(this.findDeclaration(ANGULAR_CORE, 'Optional'), createOptional);
    }
    /**
     * getStaticSymbol produces a Type whose metadata is known but whose implementation is not loaded.
     * All types passed to the StaticResolver should be pseudo-types returned by this method.
     *
     * @param declarationFile the absolute path of the file where the symbol is declared
     * @param name the name of the type.
     */
    getStaticSymbol(declarationFile, name, members) {
        return this.symbolResolver.getStaticSymbol(declarationFile, name, members);
    }
    /**
     * Simplify but discard any errors
     */
    trySimplify(context, value) {
        const originalRecorder = this.errorRecorder;
        this.errorRecorder = (error, fileName) => { };
        const result = this.simplify(context, value);
        this.errorRecorder = originalRecorder;
        return result;
    }
    /** @internal */
    simplify(context, value, lazy = false) {
        const self = this;
        let scope = BindingScope.empty;
        const calling = new Map();
        const rootContext = context;
        function simplifyInContext(context, value, depth, references) {
            function resolveReferenceValue(staticSymbol) {
                const resolvedSymbol = self.symbolResolver.resolveSymbol(staticSymbol);
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
                        const summaryMsg = e.chain ? 'references \'' + e.symbol.name + '\'' : errorSummary(e);
                        const summary = `'${nestedContext.name}' ${summaryMsg}`;
                        const chain = { message: summary, position: e.position, next: e.chain };
                        // TODO(chuckj): retrieve the position information indirectly from the collectors node
                        // map if the metadata is from a .ts file.
                        self.error({
                            message: e.message,
                            advise: e.advise,
                            context: e.context, chain,
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
                            summary: `called '${functionSymbol.name}' recursively`,
                            value: targetFunction
                        }, functionSymbol);
                    }
                    try {
                        const value = targetFunction['value'];
                        if (value && (depth != 0 || value.__symbolic != 'error')) {
                            const parameters = targetFunction['parameters'];
                            const defaults = targetFunction.defaults;
                            args = args.map(arg => simplifyNested(context, arg))
                                .map(arg => shouldIgnore(arg) ? undefined : arg);
                            if (defaults && defaults.length > args.length) {
                                args.push(...defaults.slice(args.length).map((value) => simplify(value)));
                            }
                            calling.set(functionSymbol, true);
                            const functionScope = BindingScope.build();
                            for (let i = 0; i < parameters.length; i++) {
                                functionScope.define(parameters[i], args[i]);
                            }
                            const oldScope = scope;
                            let result;
                            try {
                                scope = functionScope.done();
                                result = simplifyNested(functionSymbol, value);
                            }
                            finally {
                                scope = oldScope;
                            }
                            return result;
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
                let position = undefined;
                if (targetExpression && targetExpression.__symbolic == 'resolved') {
                    const line = targetExpression.line;
                    const character = targetExpression.character;
                    const fileName = targetExpression.fileName;
                    if (fileName != null && line != null && character != null) {
                        position = { fileName, line, column: character };
                    }
                }
                self.error({
                    message: FUNCTION_CALL_NOT_SUPPORTED,
                    context: functionSymbol,
                    value: targetFunction, position
                }, context);
            }
            function simplify(expression) {
                if (isPrimitive(expression)) {
                    return expression;
                }
                if (Array.isArray(expression)) {
                    const result = [];
                    for (const item of expression) {
                        // Check for a spread expression
                        if (item && item.__symbolic === 'spread') {
                            // We call with references as 0 because we require the actual value and cannot
                            // tolerate a reference here.
                            const spreadArray = simplifyEagerly(item.expression);
                            if (Array.isArray(spreadArray)) {
                                for (const spreadItem of spreadArray) {
                                    result.push(spreadItem);
                                }
                                continue;
                            }
                        }
                        const value = simplify(item);
                        if (shouldIgnore(value)) {
                            continue;
                        }
                        result.push(value);
                    }
                    return result;
                }
                if (expression instanceof StaticSymbol) {
                    // Stop simplification at builtin symbols or if we are in a reference context and
                    // the symbol doesn't have members.
                    if (expression === self.injectionToken || self.conversionMap.has(expression) ||
                        (references > 0 && !expression.members.length)) {
                        return expression;
                    }
                    else {
                        const staticSymbol = expression;
                        const declarationValue = resolveReferenceValue(staticSymbol);
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
                        let staticSymbol;
                        switch (expression['__symbolic']) {
                            case 'binop':
                                let left = simplify(expression['left']);
                                if (shouldIgnore(left))
                                    return left;
                                let right = simplify(expression['right']);
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
                                let condition = simplify(expression['condition']);
                                return condition ? simplify(expression['thenExpression']) :
                                    simplify(expression['elseExpression']);
                            case 'pre':
                                let operand = simplify(expression['operand']);
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
                                let indexTarget = simplifyEagerly(expression['expression']);
                                let index = simplifyEagerly(expression['index']);
                                if (indexTarget && isPrimitive(index))
                                    return indexTarget[index];
                                return null;
                            case 'select':
                                const member = expression['member'];
                                let selectContext = context;
                                let selectTarget = simplify(expression['expression']);
                                if (selectTarget instanceof StaticSymbol) {
                                    const members = selectTarget.members.concat(member);
                                    selectContext =
                                        self.getStaticSymbol(selectTarget.filePath, selectTarget.name, members);
                                    const declarationValue = resolveReferenceValue(selectContext);
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
                                const name = expression['name'];
                                const localValue = scope.resolve(name);
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
                                if (staticSymbol instanceof StaticSymbol) {
                                    if (staticSymbol === self.injectionToken || staticSymbol === self.opaqueToken) {
                                        // if somebody calls new InjectionToken, don't create an InjectionToken,
                                        // but rather return the symbol to which the InjectionToken is assigned to.
                                        // OpaqueToken is supported too as it is required by the language service to
                                        // support v4 and prior versions of Angular.
                                        return context;
                                    }
                                    const argExpressions = expression['arguments'] || [];
                                    let converter = self.conversionMap.get(staticSymbol);
                                    if (converter) {
                                        const args = argExpressions.map(arg => simplifyNested(context, arg))
                                            .map(arg => shouldIgnore(arg) ? undefined : arg);
                                        return converter(context, args);
                                    }
                                    else {
                                        // Determine if the function is one we can simplify.
                                        const targetFunction = resolveReferenceValue(staticSymbol);
                                        return simplifyCall(staticSymbol, targetFunction, argExpressions, expression['expression']);
                                    }
                                }
                                return IGNORE;
                            case 'error':
                                let message = expression.message;
                                if (expression['line'] != null) {
                                    self.error({
                                        message,
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
                                    self.error({ message, context: expression.context }, context);
                                }
                                return IGNORE;
                            case 'ignore':
                                return expression;
                        }
                        return null;
                    }
                    return mapStringMap(expression, (value, name) => {
                        if (REFERENCE_SET.has(name)) {
                            if (name === USE_VALUE && PROVIDE in expression) {
                                // If this is a provider expression, check for special tokens that need the value
                                // during analysis.
                                const provide = simplify(expression.provide);
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
        let result;
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
    }
    getTypeMetadata(type) {
        const resolvedSymbol = this.symbolResolver.resolveSymbol(type);
        return resolvedSymbol && resolvedSymbol.metadata ? resolvedSymbol.metadata :
            { __symbolic: 'class' };
    }
    reportError(error, context, path) {
        if (this.errorRecorder) {
            this.errorRecorder(formatMetadataError(error, context), (context && context.filePath) || path);
        }
        else {
            throw error;
        }
    }
    error({ message, summary, advise, position, context, value, symbol, chain }, reportingContext) {
        this.reportError(metadataError(message, summary, advise, position, symbol, context, chain), reportingContext);
    }
}
const METADATA_ERROR = 'ngMetadataError';
function metadataError(message, summary, advise, position, symbol, context, chain) {
    const error = syntaxError(message);
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
const REFERENCE_TO_NONEXPORTED_CLASS = 'Reference to non-exported class';
const VARIABLE_NOT_INITIALIZED = 'Variable not initialized';
const DESTRUCTURE_NOT_SUPPORTED = 'Destructuring not supported';
const COULD_NOT_RESOLVE_TYPE = 'Could not resolve type';
const FUNCTION_CALL_NOT_SUPPORTED = 'Function call not supported';
const REFERENCE_TO_LOCAL_SYMBOL = 'Reference to a local symbol';
const LAMBDA_NOT_SUPPORTED = 'Lambda not supported';
function expandedMessage(message, context) {
    switch (message) {
        case REFERENCE_TO_NONEXPORTED_CLASS:
            if (context && context.className) {
                return `References to a non-exported class are not supported in decorators but ${context.className} was referenced.`;
            }
            break;
        case VARIABLE_NOT_INITIALIZED:
            return 'Only initialized variables and constants can be referenced in decorators because the value of this variable is needed by the template compiler';
        case DESTRUCTURE_NOT_SUPPORTED:
            return 'Referencing an exported destructured variable or constant is not supported in decorators and this value is needed by the template compiler';
        case COULD_NOT_RESOLVE_TYPE:
            if (context && context.typeName) {
                return `Could not resolve type ${context.typeName}`;
            }
            break;
        case FUNCTION_CALL_NOT_SUPPORTED:
            if (context && context.name) {
                return `Function calls are not supported in decorators but '${context.name}' was called`;
            }
            return 'Function calls are not supported in decorators';
        case REFERENCE_TO_LOCAL_SYMBOL:
            if (context && context.name) {
                return `Reference to a local (non-exported) symbols are not supported in decorators but '${context.name}' was referenced`;
            }
            break;
        case LAMBDA_NOT_SUPPORTED:
            return `Function expressions are not supported in decorators`;
    }
    return message;
}
function messageAdvise(message, context) {
    switch (message) {
        case REFERENCE_TO_NONEXPORTED_CLASS:
            if (context && context.className) {
                return `Consider exporting '${context.className}'`;
            }
            break;
        case DESTRUCTURE_NOT_SUPPORTED:
            return 'Consider simplifying to avoid destructuring';
        case REFERENCE_TO_LOCAL_SYMBOL:
            if (context && context.name) {
                return `Consider exporting '${context.name}'`;
            }
            break;
        case LAMBDA_NOT_SUPPORTED:
            return `Consider changing the function expression into an exported function`;
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
                return `references non-exported class ${error.context.className}`;
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
                return `calls '${error.context.name}'`;
            }
            return `calls a function`;
        case REFERENCE_TO_LOCAL_SYMBOL:
            if (error.context && error.context.name) {
                return `references local variable ${error.context.name}`;
            }
            return `references a local variable`;
    }
    return 'contains the error';
}
function mapStringMap(input, transform) {
    if (!input)
        return {};
    const result = {};
    Object.keys(input).forEach((key) => {
        const value = transform(input[key], key);
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
class BindingScope {
    static build() {
        const current = new Map();
        return {
            define: function (name, value) {
                current.set(name, value);
                return this;
            },
            done: function () {
                return current.size > 0 ? new PopulatedScope(current) : BindingScope.empty;
            }
        };
    }
}
BindingScope.missing = {};
BindingScope.empty = { resolve: name => BindingScope.missing };
class PopulatedScope extends BindingScope {
    constructor(bindings) {
        super();
        this.bindings = bindings;
    }
    resolve(name) {
        return this.bindings.has(name) ? this.bindings.get(name) : BindingScope.missing;
    }
}
function formatMetadataMessageChain(chain, advise) {
    const expanded = expandedMessage(chain.message, chain.context);
    const nesting = chain.symbol ? ` in '${chain.symbol.name}'` : '';
    const message = `${expanded}${nesting}`;
    const position = chain.position;
    const next = chain.next ?
        formatMetadataMessageChain(chain.next, advise) :
        advise ? { message: advise } : undefined;
    return { message, position, next: next ? [next] : undefined };
}
function formatMetadataError(e, context) {
    if (isMetadataError(e)) {
        // Produce a formatted version of the and leaving enough information in the original error
        // to recover the formatting information to eventually produce a diagnostic error message.
        const position = e.position;
        const chain = {
            message: `Error during template compile of '${context.name}'`,
            position: position,
            next: { message: e.message, next: e.chain, context: e.context, symbol: e.symbol }
        };
        const advise = e.advise || messageAdvise(e.message, e.context);
        return formattedError(formatMetadataMessageChain(chain, advise));
    }
    return e;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic3RhdGljX3JlZmxlY3Rvci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9hb3Qvc3RhdGljX3JlZmxlY3Rvci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsa0JBQWtCLEVBQUMsTUFBTSxxQkFBcUIsQ0FBQztBQUV2RCxPQUFPLEVBQWtCLGVBQWUsRUFBRSxlQUFlLEVBQUUsa0JBQWtCLEVBQUUscUJBQXFCLEVBQUUsZUFBZSxFQUFFLFVBQVUsRUFBRSxpQkFBaUIsRUFBRSxrQkFBa0IsRUFBRSxZQUFZLEVBQUUsZ0JBQWdCLEVBQUUsV0FBVyxFQUFFLGNBQWMsRUFBRSxjQUFjLEVBQUUsWUFBWSxFQUFFLFVBQVUsRUFBRSxVQUFVLEVBQUUsY0FBYyxFQUFFLGVBQWUsRUFBRSxrQkFBa0IsRUFBQyxNQUFNLFNBQVMsQ0FBQztBQUdqVyxPQUFPLEVBQUMsV0FBVyxFQUFDLE1BQU0sU0FBUyxDQUFDO0FBRXBDLE9BQU8sRUFBd0IsY0FBYyxFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFDeEUsT0FBTyxFQUFDLFlBQVksRUFBQyxNQUFNLGlCQUFpQixDQUFDO0FBRzdDLE1BQU0sWUFBWSxHQUFHLGVBQWUsQ0FBQztBQUNyQyxNQUFNLGNBQWMsR0FBRyxpQkFBaUIsQ0FBQztBQUV6QyxNQUFNLFVBQVUsR0FBRyxVQUFVLENBQUM7QUFFOUIsTUFBTSxNQUFNLEdBQUc7SUFDYixVQUFVLEVBQUUsUUFBUTtDQUNyQixDQUFDO0FBRUYsTUFBTSxTQUFTLEdBQUcsVUFBVSxDQUFDO0FBQzdCLE1BQU0sT0FBTyxHQUFHLFNBQVMsQ0FBQztBQUMxQixNQUFNLGFBQWEsR0FBRyxJQUFJLEdBQUcsQ0FBQyxDQUFDLFNBQVMsRUFBRSxZQUFZLEVBQUUsTUFBTSxFQUFFLElBQUksRUFBRSxjQUFjLENBQUMsQ0FBQyxDQUFDO0FBQ3ZGLE1B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LE9BQU8sRUFBRSxJQUFJLEVBQUUsQ0FBQyxDQUFDLEtBQUssRUFBRSxPQUFPLEVBQUUsQ0FBQyxDQUFDLE9BQU8sRUFBRSxNQUFNLEVBQUUsQ0FBQyxDQUFDLE1BQU0sRUFBQztTQUNoRixDQUFDO1FBQ0YsTUFBTSxNQUFNLEdBQUcsQ0FBQyxDQUFDLE1BQU0sSUFBSSxhQUFhLENBQUMsQ0FBQyxDQUFDLE9BQU8sRUFBRSxDQUFDLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDL0QsT0FBTyxjQUFjLENBQUMsMEJBQTBCLENBQUMsS0FBSyxFQUFFLE1BQU0sQ0FBQyxDQUFDLENBQUM7S0FDbEU7SUFDRCxPQUFPLENBQUMsQ0FBQztBQUNYLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Q29tcGlsZVN1bW1hcnlLaW5kfSBmcm9tICcuLi9jb21waWxlX21ldGFkYXRhJztcbmltcG9ydCB7Q29tcGlsZVJlZmxlY3Rvcn0gZnJvbSAnLi4vY29tcGlsZV9yZWZsZWN0b3InO1xuaW1wb3J0IHtNZXRhZGF0YUZhY3RvcnksIGNyZWF0ZUF0dHJpYnV0ZSwgY3JlYXRlQ29tcG9uZW50LCBjcmVhdGVDb250ZW50Q2hpbGQsIGNyZWF0ZUNvbnRlbnRDaGlsZHJlbiwgY3JlYXRlRGlyZWN0aXZlLCBjcmVhdGVIb3N0LCBjcmVhdGVIb3N0QmluZGluZywgY3JlYXRlSG9zdExpc3RlbmVyLCBjcmVhdGVJbmplY3QsIGNyZWF0ZUluamVjdGFibGUsIGNyZWF0ZUlucHV0LCBjcmVhdGVOZ01vZHVsZSwgY3JlYXRlT3B0aW9uYWwsIGNyZWF0ZU91dHB1dCwgY3JlYXRlUGlwZSwgY3JlYXRlU2VsZiwgY3JlYXRlU2tpcFNlbGYsIGNyZWF0ZVZpZXdDaGlsZCwgY3JlYXRlVmlld0NoaWxkcmVufSBmcm9tICcuLi9jb3JlJztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi4vb3V0cHV0L291dHB1dF9hc3QnO1xuaW1wb3J0IHtTdW1tYXJ5UmVzb2x2ZXJ9IGZyb20gJy4uL3N1bW1hcnlfcmVzb2x2ZXInO1xuaW1wb3J0IHtzeW50YXhFcnJvcn0gZnJvbSAnLi4vdXRpbCc7XG5cbmltcG9ydCB7Rm9ybWF0dGVkTWVzc2FnZUNoYWluLCBmb3JtYXR0ZWRFcnJvcn0gZnJvbSAnLi9mb3JtYXR0ZWRfZXJyb3InO1xuaW1wb3J0IHtTdGF0aWNTeW1ib2x9IGZyb20gJy4vc3RhdGljX3N5bWJvbCc7XG5pbXBvcnQge1N0YXRpY1N5bWJvbFJlc29sdmVyfSBmcm9tICcuL3N0YXRpY19zeW1ib2xfcmVzb2x2ZXInO1xuXG5jb25zdCBBTkdVTEFSX0NPUkUgPSAnQGFuZ3VsYXIvY29yZSc7XG5jb25zdCBBTkdVTEFSX1JPVVRFUiA9ICdAYW5ndWxhci9yb3V0ZXInO1xuXG5jb25zdCBISURERU5fS0VZID0gL15cXCQuKlxcJCQvO1xuXG5jb25zdCBJR05PUkUgPSB7XG4gIF9fc3ltYm9saWM6ICdpZ25vcmUnXG59O1xuXG5jb25zdCBVU0VfVkFMVUUgPSAndXNlVmFsdWUnO1xuY29uc3QgUFJPVklERSA9ICdwcm92aWRlJztcbmNvbnN0IFJFRkVSRU5DRV9TRVQgPSBuZXcgU2V0KFtVU0VfVkFMVUUsICd1c2VGYWN0b3J5JywgJ2RhdGEnLCAnaWQnLCAnbG9hZENoaWxkcmVuJ10pO1xuY29uc3QgVFlQRUdVQVJEX1BPU1RGSVggPSAnVHlwZUd1YXJkJztcbmNvbnN0IFVTRV9JRiA9ICdVc2VJZic7XG5cbmZ1bmN0aW9uIHNob3VsZElnbm9yZSh2YWx1ZTogYW55KTogYm9vbGVhbiB7XG4gIHJldHVybiB2YWx1ZSAmJiB2YWx1ZS5fX3N5bWJvbGljID09ICdpZ25vcmUnO1xufVxuXG4vKipcbiAqIEEgc3RhdGljIHJlZmxlY3RvciBpbXBsZW1lbnRzIGVub3VnaCBvZiB0aGUgUmVmbGVjdG9yIEFQSSB0aGF0IGlzIG5lY2Vzc2FyeSB0byBjb21waWxlXG4gKiB0ZW1wbGF0ZXMgc3RhdGljYWxseS5cbiAqL1xuZXhwb3J0IGNsYXNzIFN0YXRpY1JlZmxlY3RvciBpbXBsZW1lbnRzIENvbXBpbGVSZWZsZWN0b3Ige1xuICBwcml2YXRlIGFubm90YXRpb25DYWNoZSA9IG5ldyBNYXA8U3RhdGljU3ltYm9sLCBhbnlbXT4oKTtcbiAgcHJpdmF0ZSBzaGFsbG93QW5ub3RhdGlvbkNhY2hlID0gbmV3IE1hcDxTdGF0aWNTeW1ib2wsIGFueVtdPigpO1xuICBwcml2YXRlIHByb3BlcnR5Q2FjaGUgPSBuZXcgTWFwPFN0YXRpY1N5bWJvbCwge1trZXk6IHN0cmluZ106IGFueVtdfT4oKTtcbiAgcHJpdmF0ZSBwYXJhbWV0ZXJDYWNoZSA9IG5ldyBNYXA8U3RhdGljU3ltYm9sLCBhbnlbXT4oKTtcbiAgcHJpdmF0ZSBtZXRob2RDYWNoZSA9IG5ldyBNYXA8U3RhdGljU3ltYm9sLCB7W2tleTogc3RyaW5nXTogYm9vbGVhbn0+KCk7XG4gIHByaXZhdGUgc3RhdGljQ2FjaGUgPSBuZXcgTWFwPFN0YXRpY1N5bWJvbCwgc3RyaW5nW10+KCk7XG4gIHByaXZhdGUgY29udmVyc2lvbk1hcCA9IG5ldyBNYXA8U3RhdGljU3ltYm9sLCAoY29udGV4dDogU3RhdGljU3ltYm9sLCBhcmdzOiBhbnlbXSkgPT4gYW55PigpO1xuICBwcml2YXRlIHJlc29sdmVkRXh0ZXJuYWxSZWZlcmVuY2VzID0gbmV3IE1hcDxzdHJpbmcsIFN0YXRpY1N5bWJvbD4oKTtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIHByaXZhdGUgaW5qZWN0aW9uVG9rZW4gITogU3RhdGljU3ltYm9sO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBvcGFxdWVUb2tlbiAhOiBTdGF0aWNTeW1ib2w7XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBST1VURVMgITogU3RhdGljU3ltYm9sO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBBTkFMWVpFX0ZPUl9FTlRSWV9DT01QT05FTlRTICE6IFN0YXRpY1N5bWJvbDtcbiAgcHJpdmF0ZSBhbm5vdGF0aW9uRm9yUGFyZW50Q2xhc3NXaXRoU3VtbWFyeUtpbmQgPVxuICAgICAgbmV3IE1hcDxDb21waWxlU3VtbWFyeUtpbmQsIE1ldGFkYXRhRmFjdG9yeTxhbnk+W10+KCk7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHN1bW1hcnlSZXNvbHZlcjogU3VtbWFyeVJlc29sdmVyPFN0YXRpY1N5bWJvbD4sXG4gICAgICBwcml2YXRlIHN5bWJvbFJlc29sdmVyOiBTdGF0aWNTeW1ib2xSZXNvbHZlcixcbiAgICAgIGtub3duTWV0YWRhdGFDbGFzc2VzOiB7bmFtZTogc3RyaW5nLCBmaWxlUGF0aDogc3RyaW5nLCBjdG9yOiBhbnl9W10gPSBbXSxcbiAgICAgIGtub3duTWV0YWRhdGFGdW5jdGlvbnM6IHtuYW1lOiBzdHJpbmcsIGZpbGVQYXRoOiBzdHJpbmcsIGZuOiBhbnl9W10gPSBbXSxcbiAgICAgIHByaXZhdGUgZXJyb3JSZWNvcmRlcj86IChlcnJvcjogYW55LCBmaWxlTmFtZT86IHN0cmluZykgPT4gdm9pZCkge1xuICAgIHRoaXMuaW5pdGlhbGl6ZUNvbnZlcnNpb25NYXAoKTtcbiAgICBrbm93bk1ldGFkYXRhQ2xhc3Nlcy5mb3JFYWNoKFxuICAgICAgICAoa2MpID0+IHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3RvcihcbiAgICAgICAgICAgIHRoaXMuZ2V0U3RhdGljU3ltYm9sKGtjLmZpbGVQYXRoLCBrYy5uYW1lKSwga2MuY3RvcikpO1xuICAgIGtub3duTWV0YWRhdGFGdW5jdGlvbnMuZm9yRWFjaChcbiAgICAgICAgKGtmKSA9PiB0aGlzLl9yZWdpc3RlckZ1bmN0aW9uKHRoaXMuZ2V0U3RhdGljU3ltYm9sKGtmLmZpbGVQYXRoLCBrZi5uYW1lKSwga2YuZm4pKTtcbiAgICB0aGlzLmFubm90YXRpb25Gb3JQYXJlbnRDbGFzc1dpdGhTdW1tYXJ5S2luZC5zZXQoXG4gICAgICAgIENvbXBpbGVTdW1tYXJ5S2luZC5EaXJlY3RpdmUsIFtjcmVhdGVEaXJlY3RpdmUsIGNyZWF0ZUNvbXBvbmVudF0pO1xuICAgIHRoaXMuYW5ub3RhdGlvbkZvclBhcmVudENsYXNzV2l0aFN1bW1hcnlLaW5kLnNldChDb21waWxlU3VtbWFyeUtpbmQuUGlwZSwgW2NyZWF0ZVBpcGVdKTtcbiAgICB0aGlzLmFubm90YXRpb25Gb3JQYXJlbnRDbGFzc1dpdGhTdW1tYXJ5S2luZC5zZXQoQ29tcGlsZVN1bW1hcnlLaW5kLk5nTW9kdWxlLCBbY3JlYXRlTmdNb2R1bGVdKTtcbiAgICB0aGlzLmFubm90YXRpb25Gb3JQYXJlbnRDbGFzc1dpdGhTdW1tYXJ5S2luZC5zZXQoXG4gICAgICAgIENvbXBpbGVTdW1tYXJ5S2luZC5JbmplY3RhYmxlLFxuICAgICAgICBbY3JlYXRlSW5qZWN0YWJsZSwgY3JlYXRlUGlwZSwgY3JlYXRlRGlyZWN0aXZlLCBjcmVhdGVDb21wb25lbnQsIGNyZWF0ZU5nTW9kdWxlXSk7XG4gIH1cblxuICBjb21wb25lbnRNb2R1bGVVcmwodHlwZU9yRnVuYzogU3RhdGljU3ltYm9sKTogc3RyaW5nIHtcbiAgICBjb25zdCBzdGF0aWNTeW1ib2wgPSB0aGlzLmZpbmRTeW1ib2xEZWNsYXJhdGlvbih0eXBlT3JGdW5jKTtcbiAgICByZXR1cm4gdGhpcy5zeW1ib2xSZXNvbHZlci5nZXRSZXNvdXJjZVBhdGgoc3RhdGljU3ltYm9sKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBJbnZhbGlkYXRlIHRoZSBzcGVjaWZpZWQgYHN5bWJvbHNgIG9uIHByb2dyYW0gY2hhbmdlLlxuICAgKiBAcGFyYW0gc3ltYm9sc1xuICAgKi9cbiAgaW52YWxpZGF0ZVN5bWJvbHMoc3ltYm9sczogU3RhdGljU3ltYm9sW10pIHtcbiAgICBmb3IgKGNvbnN0IHN5bWJvbCBvZiBzeW1ib2xzKSB7XG4gICAgICB0aGlzLmFubm90YXRpb25DYWNoZS5kZWxldGUoc3ltYm9sKTtcbiAgICAgIHRoaXMuc2hhbGxvd0Fubm90YXRpb25DYWNoZS5kZWxldGUoc3ltYm9sKTtcbiAgICAgIHRoaXMucHJvcGVydHlDYWNoZS5kZWxldGUoc3ltYm9sKTtcbiAgICAgIHRoaXMucGFyYW1ldGVyQ2FjaGUuZGVsZXRlKHN5bWJvbCk7XG4gICAgICB0aGlzLm1ldGhvZENhY2hlLmRlbGV0ZShzeW1ib2wpO1xuICAgICAgdGhpcy5zdGF0aWNDYWNoZS5kZWxldGUoc3ltYm9sKTtcbiAgICAgIHRoaXMuY29udmVyc2lvbk1hcC5kZWxldGUoc3ltYm9sKTtcbiAgICB9XG4gIH1cblxuICByZXNvbHZlRXh0ZXJuYWxSZWZlcmVuY2UocmVmOiBvLkV4dGVybmFsUmVmZXJlbmNlLCBjb250YWluaW5nRmlsZT86IHN0cmluZyk6IFN0YXRpY1N5bWJvbCB7XG4gICAgbGV0IGtleTogc3RyaW5nfHVuZGVmaW5lZCA9IHVuZGVmaW5lZDtcbiAgICBpZiAoIWNvbnRhaW5pbmdGaWxlKSB7XG4gICAgICBrZXkgPSBgJHtyZWYubW9kdWxlTmFtZX06JHtyZWYubmFtZX1gO1xuICAgICAgY29uc3QgZGVjbGFyYXRpb25TeW1ib2wgPSB0aGlzLnJlc29sdmVkRXh0ZXJuYWxSZWZlcmVuY2VzLmdldChrZXkpO1xuICAgICAgaWYgKGRlY2xhcmF0aW9uU3ltYm9sKSByZXR1cm4gZGVjbGFyYXRpb25TeW1ib2w7XG4gICAgfVxuICAgIGNvbnN0IHJlZlN5bWJvbCA9XG4gICAgICAgIHRoaXMuc3ltYm9sUmVzb2x2ZXIuZ2V0U3ltYm9sQnlNb2R1bGUocmVmLm1vZHVsZU5hbWUgISwgcmVmLm5hbWUgISwgY29udGFpbmluZ0ZpbGUpO1xuICAgIGNvbnN0IGRlY2xhcmF0aW9uU3ltYm9sID0gdGhpcy5maW5kU3ltYm9sRGVjbGFyYXRpb24ocmVmU3ltYm9sKTtcbiAgICBpZiAoIWNvbnRhaW5pbmdGaWxlKSB7XG4gICAgICB0aGlzLnN5bWJvbFJlc29sdmVyLnJlY29yZE1vZHVsZU5hbWVGb3JGaWxlTmFtZShyZWZTeW1ib2wuZmlsZVBhdGgsIHJlZi5tb2R1bGVOYW1lICEpO1xuICAgICAgdGhpcy5zeW1ib2xSZXNvbHZlci5yZWNvcmRJbXBvcnRBcyhkZWNsYXJhdGlvblN5bWJvbCwgcmVmU3ltYm9sKTtcbiAgICB9XG4gICAgaWYgKGtleSkge1xuICAgICAgdGhpcy5yZXNvbHZlZEV4dGVybmFsUmVmZXJlbmNlcy5zZXQoa2V5LCBkZWNsYXJhdGlvblN5bWJvbCk7XG4gICAgfVxuICAgIHJldHVybiBkZWNsYXJhdGlvblN5bWJvbDtcbiAgfVxuXG4gIGZpbmREZWNsYXJhdGlvbihtb2R1bGVVcmw6IHN0cmluZywgbmFtZTogc3RyaW5nLCBjb250YWluaW5nRmlsZT86IHN0cmluZyk6IFN0YXRpY1N5bWJvbCB7XG4gICAgcmV0dXJuIHRoaXMuZmluZFN5bWJvbERlY2xhcmF0aW9uKFxuICAgICAgICB0aGlzLnN5bWJvbFJlc29sdmVyLmdldFN5bWJvbEJ5TW9kdWxlKG1vZHVsZVVybCwgbmFtZSwgY29udGFpbmluZ0ZpbGUpKTtcbiAgfVxuXG4gIHRyeUZpbmREZWNsYXJhdGlvbihtb2R1bGVVcmw6IHN0cmluZywgbmFtZTogc3RyaW5nLCBjb250YWluaW5nRmlsZT86IHN0cmluZyk6IFN0YXRpY1N5bWJvbCB7XG4gICAgcmV0dXJuIHRoaXMuc3ltYm9sUmVzb2x2ZXIuaWdub3JlRXJyb3JzRm9yKFxuICAgICAgICAoKSA9PiB0aGlzLmZpbmREZWNsYXJhdGlvbihtb2R1bGVVcmwsIG5hbWUsIGNvbnRhaW5pbmdGaWxlKSk7XG4gIH1cblxuICBmaW5kU3ltYm9sRGVjbGFyYXRpb24oc3ltYm9sOiBTdGF0aWNTeW1ib2wpOiBTdGF0aWNTeW1ib2wge1xuICAgIGNvbnN0IHJlc29sdmVkU3ltYm9sID0gdGhpcy5zeW1ib2xSZXNvbHZlci5yZXNvbHZlU3ltYm9sKHN5bWJvbCk7XG4gICAgaWYgKHJlc29sdmVkU3ltYm9sKSB7XG4gICAgICBsZXQgcmVzb2x2ZWRNZXRhZGF0YSA9IHJlc29sdmVkU3ltYm9sLm1ldGFkYXRhO1xuICAgICAgaWYgKHJlc29sdmVkTWV0YWRhdGEgJiYgcmVzb2x2ZWRNZXRhZGF0YS5fX3N5bWJvbGljID09PSAncmVzb2x2ZWQnKSB7XG4gICAgICAgIHJlc29sdmVkTWV0YWRhdGEgPSByZXNvbHZlZE1ldGFkYXRhLnN5bWJvbDtcbiAgICAgIH1cbiAgICAgIGlmIChyZXNvbHZlZE1ldGFkYXRhIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB7XG4gICAgICAgIHJldHVybiB0aGlzLmZpbmRTeW1ib2xEZWNsYXJhdGlvbihyZXNvbHZlZFN5bWJvbC5tZXRhZGF0YSk7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiBzeW1ib2w7XG4gIH1cblxuICBwdWJsaWMgdHJ5QW5ub3RhdGlvbnModHlwZTogU3RhdGljU3ltYm9sKTogYW55W10ge1xuICAgIGNvbnN0IG9yaWdpbmFsUmVjb3JkZXIgPSB0aGlzLmVycm9yUmVjb3JkZXI7XG4gICAgdGhpcy5lcnJvclJlY29yZGVyID0gKGVycm9yOiBhbnksIGZpbGVOYW1lPzogc3RyaW5nKSA9PiB7fTtcbiAgICB0cnkge1xuICAgICAgcmV0dXJuIHRoaXMuYW5ub3RhdGlvbnModHlwZSk7XG4gICAgfSBmaW5hbGx5IHtcbiAgICAgIHRoaXMuZXJyb3JSZWNvcmRlciA9IG9yaWdpbmFsUmVjb3JkZXI7XG4gICAgfVxuICB9XG5cbiAgcHVibGljIGFubm90YXRpb25zKHR5cGU6IFN0YXRpY1N5bWJvbCk6IGFueVtdIHtcbiAgICByZXR1cm4gdGhpcy5fYW5ub3RhdGlvbnMoXG4gICAgICAgIHR5cGUsICh0eXBlOiBTdGF0aWNTeW1ib2wsIGRlY29yYXRvcnM6IGFueSkgPT4gdGhpcy5zaW1wbGlmeSh0eXBlLCBkZWNvcmF0b3JzKSxcbiAgICAgICAgdGhpcy5hbm5vdGF0aW9uQ2FjaGUpO1xuICB9XG5cbiAgcHVibGljIHNoYWxsb3dBbm5vdGF0aW9ucyh0eXBlOiBTdGF0aWNTeW1ib2wpOiBhbnlbXSB7XG4gICAgcmV0dXJuIHRoaXMuX2Fubm90YXRpb25zKFxuICAgICAgICB0eXBlLCAodHlwZTogU3RhdGljU3ltYm9sLCBkZWNvcmF0b3JzOiBhbnkpID0+IHRoaXMuc2ltcGxpZnkodHlwZSwgZGVjb3JhdG9ycywgdHJ1ZSksXG4gICAgICAgIHRoaXMuc2hhbGxvd0Fubm90YXRpb25DYWNoZSk7XG4gIH1cblxuICBwcml2YXRlIF9hbm5vdGF0aW9ucyhcbiAgICAgIHR5cGU6IFN0YXRpY1N5bWJvbCwgc2ltcGxpZnk6ICh0eXBlOiBTdGF0aWNTeW1ib2wsIGRlY29yYXRvcnM6IGFueSkgPT4gYW55LFxuICAgICAgYW5ub3RhdGlvbkNhY2hlOiBNYXA8U3RhdGljU3ltYm9sLCBhbnlbXT4pOiBhbnlbXSB7XG4gICAgbGV0IGFubm90YXRpb25zID0gYW5ub3RhdGlvbkNhY2hlLmdldCh0eXBlKTtcbiAgICBpZiAoIWFubm90YXRpb25zKSB7XG4gICAgICBhbm5vdGF0aW9ucyA9IFtdO1xuICAgICAgY29uc3QgY2xhc3NNZXRhZGF0YSA9IHRoaXMuZ2V0VHlwZU1ldGFkYXRhKHR5cGUpO1xuICAgICAgY29uc3QgcGFyZW50VHlwZSA9IHRoaXMuZmluZFBhcmVudFR5cGUodHlwZSwgY2xhc3NNZXRhZGF0YSk7XG4gICAgICBpZiAocGFyZW50VHlwZSkge1xuICAgICAgICBjb25zdCBwYXJlbnRBbm5vdGF0aW9ucyA9IHRoaXMuYW5ub3RhdGlvbnMocGFyZW50VHlwZSk7XG4gICAgICAgIGFubm90YXRpb25zLnB1c2goLi4ucGFyZW50QW5ub3RhdGlvbnMpO1xuICAgICAgfVxuICAgICAgbGV0IG93bkFubm90YXRpb25zOiBhbnlbXSA9IFtdO1xuICAgICAgaWYgKGNsYXNzTWV0YWRhdGFbJ2RlY29yYXRvcnMnXSkge1xuICAgICAgICBvd25Bbm5vdGF0aW9ucyA9IHNpbXBsaWZ5KHR5cGUsIGNsYXNzTWV0YWRhdGFbJ2RlY29yYXRvcnMnXSk7XG4gICAgICAgIGlmIChvd25Bbm5vdGF0aW9ucykge1xuICAgICAgICAgIGFubm90YXRpb25zLnB1c2goLi4ub3duQW5ub3RhdGlvbnMpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgICBpZiAocGFyZW50VHlwZSAmJiAhdGhpcy5zdW1tYXJ5UmVzb2x2ZXIuaXNMaWJyYXJ5RmlsZSh0eXBlLmZpbGVQYXRoKSAmJlxuICAgICAgICAgIHRoaXMuc3VtbWFyeVJlc29sdmVyLmlzTGlicmFyeUZpbGUocGFyZW50VHlwZS5maWxlUGF0aCkpIHtcbiAgICAgICAgY29uc3Qgc3VtbWFyeSA9IHRoaXMuc3VtbWFyeVJlc29sdmVyLnJlc29sdmVTdW1tYXJ5KHBhcmVudFR5cGUpO1xuICAgICAgICBpZiAoc3VtbWFyeSAmJiBzdW1tYXJ5LnR5cGUpIHtcbiAgICAgICAgICBjb25zdCByZXF1aXJlZEFubm90YXRpb25UeXBlcyA9XG4gICAgICAgICAgICAgIHRoaXMuYW5ub3RhdGlvbkZvclBhcmVudENsYXNzV2l0aFN1bW1hcnlLaW5kLmdldChzdW1tYXJ5LnR5cGUuc3VtbWFyeUtpbmQgISkgITtcbiAgICAgICAgICBjb25zdCB0eXBlSGFzUmVxdWlyZWRBbm5vdGF0aW9uID0gcmVxdWlyZWRBbm5vdGF0aW9uVHlwZXMuc29tZShcbiAgICAgICAgICAgICAgKHJlcXVpcmVkVHlwZSkgPT4gb3duQW5ub3RhdGlvbnMuc29tZShhbm4gPT4gcmVxdWlyZWRUeXBlLmlzVHlwZU9mKGFubikpKTtcbiAgICAgICAgICBpZiAoIXR5cGVIYXNSZXF1aXJlZEFubm90YXRpb24pIHtcbiAgICAgICAgICAgIHRoaXMucmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgICAgZm9ybWF0TWV0YWRhdGFFcnJvcihcbiAgICAgICAgICAgICAgICAgICAgbWV0YWRhdGFFcnJvcihcbiAgICAgICAgICAgICAgICAgICAgICAgIGBDbGFzcyAke3R5cGUubmFtZX0gaW4gJHt0eXBlLmZpbGVQYXRofSBleHRlbmRzIGZyb20gYSAke0NvbXBpbGVTdW1tYXJ5S2luZFtzdW1tYXJ5LnR5cGUuc3VtbWFyeUtpbmQhXX0gaW4gYW5vdGhlciBjb21waWxhdGlvbiB1bml0IHdpdGhvdXQgZHVwbGljYXRpbmcgdGhlIGRlY29yYXRvcmAsXG4gICAgICAgICAgICAgICAgICAgICAgICAvKiBzdW1tYXJ5ICovIHVuZGVmaW5lZCxcbiAgICAgICAgICAgICAgICAgICAgICAgIGBQbGVhc2UgYWRkIGEgJHtyZXF1aXJlZEFubm90YXRpb25UeXBlcy5tYXAoKHR5cGUpID0+IHR5cGUubmdNZXRhZGF0YU5hbWUpLmpvaW4oJyBvciAnKX0gZGVjb3JhdG9yIHRvIHRoZSBjbGFzc2ApLFxuICAgICAgICAgICAgICAgICAgICB0eXBlKSxcbiAgICAgICAgICAgICAgICB0eXBlKTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIGFubm90YXRpb25DYWNoZS5zZXQodHlwZSwgYW5ub3RhdGlvbnMuZmlsdGVyKGFubiA9PiAhIWFubikpO1xuICAgIH1cbiAgICByZXR1cm4gYW5ub3RhdGlvbnM7XG4gIH1cblxuICBwdWJsaWMgcHJvcE1ldGFkYXRhKHR5cGU6IFN0YXRpY1N5bWJvbCk6IHtba2V5OiBzdHJpbmddOiBhbnlbXX0ge1xuICAgIGxldCBwcm9wTWV0YWRhdGEgPSB0aGlzLnByb3BlcnR5Q2FjaGUuZ2V0KHR5cGUpO1xuICAgIGlmICghcHJvcE1ldGFkYXRhKSB7XG4gICAgICBjb25zdCBjbGFzc01ldGFkYXRhID0gdGhpcy5nZXRUeXBlTWV0YWRhdGEodHlwZSk7XG4gICAgICBwcm9wTWV0YWRhdGEgPSB7fTtcbiAgICAgIGNvbnN0IHBhcmVudFR5cGUgPSB0aGlzLmZpbmRQYXJlbnRUeXBlKHR5cGUsIGNsYXNzTWV0YWRhdGEpO1xuICAgICAgaWYgKHBhcmVudFR5cGUpIHtcbiAgICAgICAgY29uc3QgcGFyZW50UHJvcE1ldGFkYXRhID0gdGhpcy5wcm9wTWV0YWRhdGEocGFyZW50VHlwZSk7XG4gICAgICAgIE9iamVjdC5rZXlzKHBhcmVudFByb3BNZXRhZGF0YSkuZm9yRWFjaCgocGFyZW50UHJvcCkgPT4ge1xuICAgICAgICAgIHByb3BNZXRhZGF0YSAhW3BhcmVudFByb3BdID0gcGFyZW50UHJvcE1ldGFkYXRhW3BhcmVudFByb3BdO1xuICAgICAgICB9KTtcbiAgICAgIH1cblxuICAgICAgY29uc3QgbWVtYmVycyA9IGNsYXNzTWV0YWRhdGFbJ21lbWJlcnMnXSB8fCB7fTtcbiAgICAgIE9iamVjdC5rZXlzKG1lbWJlcnMpLmZvckVhY2goKHByb3BOYW1lKSA9PiB7XG4gICAgICAgIGNvbnN0IHByb3BEYXRhID0gbWVtYmVyc1twcm9wTmFtZV07XG4gICAgICAgIGNvbnN0IHByb3AgPSAoPGFueVtdPnByb3BEYXRhKVxuICAgICAgICAgICAgICAgICAgICAgICAgIC5maW5kKGEgPT4gYVsnX19zeW1ib2xpYyddID09ICdwcm9wZXJ0eScgfHwgYVsnX19zeW1ib2xpYyddID09ICdtZXRob2QnKTtcbiAgICAgICAgY29uc3QgZGVjb3JhdG9yczogYW55W10gPSBbXTtcbiAgICAgICAgaWYgKHByb3BNZXRhZGF0YSAhW3Byb3BOYW1lXSkge1xuICAgICAgICAgIGRlY29yYXRvcnMucHVzaCguLi5wcm9wTWV0YWRhdGEgIVtwcm9wTmFtZV0pO1xuICAgICAgICB9XG4gICAgICAgIHByb3BNZXRhZGF0YSAhW3Byb3BOYW1lXSA9IGRlY29yYXRvcnM7XG4gICAgICAgIGlmIChwcm9wICYmIHByb3BbJ2RlY29yYXRvcnMnXSkge1xuICAgICAgICAgIGRlY29yYXRvcnMucHVzaCguLi50aGlzLnNpbXBsaWZ5KHR5cGUsIHByb3BbJ2RlY29yYXRvcnMnXSkpO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICAgIHRoaXMucHJvcGVydHlDYWNoZS5zZXQodHlwZSwgcHJvcE1ldGFkYXRhKTtcbiAgICB9XG4gICAgcmV0dXJuIHByb3BNZXRhZGF0YTtcbiAgfVxuXG4gIHB1YmxpYyBwYXJhbWV0ZXJzKHR5cGU6IFN0YXRpY1N5bWJvbCk6IGFueVtdIHtcbiAgICBpZiAoISh0eXBlIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSkge1xuICAgICAgdGhpcy5yZXBvcnRFcnJvcihcbiAgICAgICAgICBuZXcgRXJyb3IoYHBhcmFtZXRlcnMgcmVjZWl2ZWQgJHtKU09OLnN0cmluZ2lmeSh0eXBlKX0gd2hpY2ggaXMgbm90IGEgU3RhdGljU3ltYm9sYCksXG4gICAgICAgICAgdHlwZSk7XG4gICAgICByZXR1cm4gW107XG4gICAgfVxuICAgIHRyeSB7XG4gICAgICBsZXQgcGFyYW1ldGVycyA9IHRoaXMucGFyYW1ldGVyQ2FjaGUuZ2V0KHR5cGUpO1xuICAgICAgaWYgKCFwYXJhbWV0ZXJzKSB7XG4gICAgICAgIGNvbnN0IGNsYXNzTWV0YWRhdGEgPSB0aGlzLmdldFR5cGVNZXRhZGF0YSh0eXBlKTtcbiAgICAgICAgY29uc3QgcGFyZW50VHlwZSA9IHRoaXMuZmluZFBhcmVudFR5cGUodHlwZSwgY2xhc3NNZXRhZGF0YSk7XG4gICAgICAgIGNvbnN0IG1lbWJlcnMgPSBjbGFzc01ldGFkYXRhID8gY2xhc3NNZXRhZGF0YVsnbWVtYmVycyddIDogbnVsbDtcbiAgICAgICAgY29uc3QgY3RvckRhdGEgPSBtZW1iZXJzID8gbWVtYmVyc1snX19jdG9yX18nXSA6IG51bGw7XG4gICAgICAgIGlmIChjdG9yRGF0YSkge1xuICAgICAgICAgIGNvbnN0IGN0b3IgPSAoPGFueVtdPmN0b3JEYXRhKS5maW5kKGEgPT4gYVsnX19zeW1ib2xpYyddID09ICdjb25zdHJ1Y3RvcicpO1xuICAgICAgICAgIGNvbnN0IHJhd1BhcmFtZXRlclR5cGVzID0gPGFueVtdPmN0b3JbJ3BhcmFtZXRlcnMnXSB8fCBbXTtcbiAgICAgICAgICBjb25zdCBwYXJhbWV0ZXJEZWNvcmF0b3JzID0gPGFueVtdPnRoaXMuc2ltcGxpZnkodHlwZSwgY3RvclsncGFyYW1ldGVyRGVjb3JhdG9ycyddIHx8IFtdKTtcbiAgICAgICAgICBwYXJhbWV0ZXJzID0gW107XG4gICAgICAgICAgcmF3UGFyYW1ldGVyVHlwZXMuZm9yRWFjaCgocmF3UGFyYW1UeXBlLCBpbmRleCkgPT4ge1xuICAgICAgICAgICAgY29uc3QgbmVzdGVkUmVzdWx0OiBhbnlbXSA9IFtdO1xuICAgICAgICAgICAgY29uc3QgcGFyYW1UeXBlID0gdGhpcy50cnlTaW1wbGlmeSh0eXBlLCByYXdQYXJhbVR5cGUpO1xuICAgICAgICAgICAgaWYgKHBhcmFtVHlwZSkgbmVzdGVkUmVzdWx0LnB1c2gocGFyYW1UeXBlKTtcbiAgICAgICAgICAgIGNvbnN0IGRlY29yYXRvcnMgPSBwYXJhbWV0ZXJEZWNvcmF0b3JzID8gcGFyYW1ldGVyRGVjb3JhdG9yc1tpbmRleF0gOiBudWxsO1xuICAgICAgICAgICAgaWYgKGRlY29yYXRvcnMpIHtcbiAgICAgICAgICAgICAgbmVzdGVkUmVzdWx0LnB1c2goLi4uZGVjb3JhdG9ycyk7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICBwYXJhbWV0ZXJzICEucHVzaChuZXN0ZWRSZXN1bHQpO1xuICAgICAgICAgIH0pO1xuICAgICAgICB9IGVsc2UgaWYgKHBhcmVudFR5cGUpIHtcbiAgICAgICAgICBwYXJhbWV0ZXJzID0gdGhpcy5wYXJhbWV0ZXJzKHBhcmVudFR5cGUpO1xuICAgICAgICB9XG4gICAgICAgIGlmICghcGFyYW1ldGVycykge1xuICAgICAgICAgIHBhcmFtZXRlcnMgPSBbXTtcbiAgICAgICAgfVxuICAgICAgICB0aGlzLnBhcmFtZXRlckNhY2hlLnNldCh0eXBlLCBwYXJhbWV0ZXJzKTtcbiAgICAgIH1cbiAgICAgIHJldHVybiBwYXJhbWV0ZXJzO1xuICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgIGNvbnNvbGUuZXJyb3IoYEZhaWxlZCBvbiB0eXBlICR7SlNPTi5zdHJpbmdpZnkodHlwZSl9IHdpdGggZXJyb3IgJHtlfWApO1xuICAgICAgdGhyb3cgZTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIF9tZXRob2ROYW1lcyh0eXBlOiBhbnkpOiB7W2tleTogc3RyaW5nXTogYm9vbGVhbn0ge1xuICAgIGxldCBtZXRob2ROYW1lcyA9IHRoaXMubWV0aG9kQ2FjaGUuZ2V0KHR5cGUpO1xuICAgIGlmICghbWV0aG9kTmFtZXMpIHtcbiAgICAgIGNvbnN0IGNsYXNzTWV0YWRhdGEgPSB0aGlzLmdldFR5cGVNZXRhZGF0YSh0eXBlKTtcbiAgICAgIG1ldGhvZE5hbWVzID0ge307XG4gICAgICBjb25zdCBwYXJlbnRUeXBlID0gdGhpcy5maW5kUGFyZW50VHlwZSh0eXBlLCBjbGFzc01ldGFkYXRhKTtcbiAgICAgIGlmIChwYXJlbnRUeXBlKSB7XG4gICAgICAgIGNvbnN0IHBhcmVudE1ldGhvZE5hbWVzID0gdGhpcy5fbWV0aG9kTmFtZXMocGFyZW50VHlwZSk7XG4gICAgICAgIE9iamVjdC5rZXlzKHBhcmVudE1ldGhvZE5hbWVzKS5mb3JFYWNoKChwYXJlbnRQcm9wKSA9PiB7XG4gICAgICAgICAgbWV0aG9kTmFtZXMgIVtwYXJlbnRQcm9wXSA9IHBhcmVudE1ldGhvZE5hbWVzW3BhcmVudFByb3BdO1xuICAgICAgICB9KTtcbiAgICAgIH1cblxuICAgICAgY29uc3QgbWVtYmVycyA9IGNsYXNzTWV0YWRhdGFbJ21lbWJlcnMnXSB8fCB7fTtcbiAgICAgIE9iamVjdC5rZXlzKG1lbWJlcnMpLmZvckVhY2goKHByb3BOYW1lKSA9PiB7XG4gICAgICAgIGNvbnN0IHByb3BEYXRhID0gbWVtYmVyc1twcm9wTmFtZV07XG4gICAgICAgIGNvbnN0IGlzTWV0aG9kID0gKDxhbnlbXT5wcm9wRGF0YSkuc29tZShhID0+IGFbJ19fc3ltYm9saWMnXSA9PSAnbWV0aG9kJyk7XG4gICAgICAgIG1ldGhvZE5hbWVzICFbcHJvcE5hbWVdID0gbWV0aG9kTmFtZXMgIVtwcm9wTmFtZV0gfHwgaXNNZXRob2Q7XG4gICAgICB9KTtcbiAgICAgIHRoaXMubWV0aG9kQ2FjaGUuc2V0KHR5cGUsIG1ldGhvZE5hbWVzKTtcbiAgICB9XG4gICAgcmV0dXJuIG1ldGhvZE5hbWVzO1xuICB9XG5cbiAgcHJpdmF0ZSBfc3RhdGljTWVtYmVycyh0eXBlOiBTdGF0aWNTeW1ib2wpOiBzdHJpbmdbXSB7XG4gICAgbGV0IHN0YXRpY01lbWJlcnMgPSB0aGlzLnN0YXRpY0NhY2hlLmdldCh0eXBlKTtcbiAgICBpZiAoIXN0YXRpY01lbWJlcnMpIHtcbiAgICAgIGNvbnN0IGNsYXNzTWV0YWRhdGEgPSB0aGlzLmdldFR5cGVNZXRhZGF0YSh0eXBlKTtcbiAgICAgIGNvbnN0IHN0YXRpY01lbWJlckRhdGEgPSBjbGFzc01ldGFkYXRhWydzdGF0aWNzJ10gfHwge307XG4gICAgICBzdGF0aWNNZW1iZXJzID0gT2JqZWN0LmtleXMoc3RhdGljTWVtYmVyRGF0YSk7XG4gICAgICB0aGlzLnN0YXRpY0NhY2hlLnNldCh0eXBlLCBzdGF0aWNNZW1iZXJzKTtcbiAgICB9XG4gICAgcmV0dXJuIHN0YXRpY01lbWJlcnM7XG4gIH1cblxuXG4gIHByaXZhdGUgZmluZFBhcmVudFR5cGUodHlwZTogU3RhdGljU3ltYm9sLCBjbGFzc01ldGFkYXRhOiBhbnkpOiBTdGF0aWNTeW1ib2x8dW5kZWZpbmVkIHtcbiAgICBjb25zdCBwYXJlbnRUeXBlID0gdGhpcy50cnlTaW1wbGlmeSh0eXBlLCBjbGFzc01ldGFkYXRhWydleHRlbmRzJ10pO1xuICAgIGlmIChwYXJlbnRUeXBlIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB7XG4gICAgICByZXR1cm4gcGFyZW50VHlwZTtcbiAgICB9XG4gIH1cblxuICBoYXNMaWZlY3ljbGVIb29rKHR5cGU6IGFueSwgbGNQcm9wZXJ0eTogc3RyaW5nKTogYm9vbGVhbiB7XG4gICAgaWYgKCEodHlwZSBpbnN0YW5jZW9mIFN0YXRpY1N5bWJvbCkpIHtcbiAgICAgIHRoaXMucmVwb3J0RXJyb3IoXG4gICAgICAgICAgbmV3IEVycm9yKFxuICAgICAgICAgICAgICBgaGFzTGlmZWN5Y2xlSG9vayByZWNlaXZlZCAke0pTT04uc3RyaW5naWZ5KHR5cGUpfSB3aGljaCBpcyBub3QgYSBTdGF0aWNTeW1ib2xgKSxcbiAgICAgICAgICB0eXBlKTtcbiAgICB9XG4gICAgdHJ5IHtcbiAgICAgIHJldHVybiAhIXRoaXMuX21ldGhvZE5hbWVzKHR5cGUpW2xjUHJvcGVydHldO1xuICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgIGNvbnNvbGUuZXJyb3IoYEZhaWxlZCBvbiB0eXBlICR7SlNPTi5zdHJpbmdpZnkodHlwZSl9IHdpdGggZXJyb3IgJHtlfWApO1xuICAgICAgdGhyb3cgZTtcbiAgICB9XG4gIH1cblxuICBndWFyZHModHlwZTogYW55KToge1trZXk6IHN0cmluZ106IFN0YXRpY1N5bWJvbH0ge1xuICAgIGlmICghKHR5cGUgaW5zdGFuY2VvZiBTdGF0aWNTeW1ib2wpKSB7XG4gICAgICB0aGlzLnJlcG9ydEVycm9yKFxuICAgICAgICAgIG5ldyBFcnJvcihgZ3VhcmRzIHJlY2VpdmVkICR7SlNPTi5zdHJpbmdpZnkodHlwZSl9IHdoaWNoIGlzIG5vdCBhIFN0YXRpY1N5bWJvbGApLCB0eXBlKTtcbiAgICAgIHJldHVybiB7fTtcbiAgICB9XG4gICAgY29uc3Qgc3RhdGljTWVtYmVycyA9IHRoaXMuX3N0YXRpY01lbWJlcnModHlwZSk7XG4gICAgY29uc3QgcmVzdWx0OiB7W2tleTogc3RyaW5nXTogU3RhdGljU3ltYm9sfSA9IHt9O1xuICAgIGZvciAobGV0IG5hbWUgb2Ygc3RhdGljTWVtYmVycykge1xuICAgICAgaWYgKG5hbWUuZW5kc1dpdGgoVFlQRUdVQVJEX1BPU1RGSVgpKSB7XG4gICAgICAgIGxldCBwcm9wZXJ0eSA9IG5hbWUuc3Vic3RyKDAsIG5hbWUubGVuZ3RoIC0gVFlQRUdVQVJEX1BPU1RGSVgubGVuZ3RoKTtcbiAgICAgICAgbGV0IHZhbHVlOiBhbnk7XG4gICAgICAgIGlmIChwcm9wZXJ0eS5lbmRzV2l0aChVU0VfSUYpKSB7XG4gICAgICAgICAgcHJvcGVydHkgPSBuYW1lLnN1YnN0cigwLCBwcm9wZXJ0eS5sZW5ndGggLSBVU0VfSUYubGVuZ3RoKTtcbiAgICAgICAgICB2YWx1ZSA9IFVTRV9JRjtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICB2YWx1ZSA9IHRoaXMuZ2V0U3RhdGljU3ltYm9sKHR5cGUuZmlsZVBhdGgsIHR5cGUubmFtZSwgW25hbWVdKTtcbiAgICAgICAgfVxuICAgICAgICByZXN1bHRbcHJvcGVydHldID0gdmFsdWU7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICBwcml2YXRlIF9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IodHlwZTogU3RhdGljU3ltYm9sLCBjdG9yOiBhbnkpOiB2b2lkIHtcbiAgICB0aGlzLmNvbnZlcnNpb25NYXAuc2V0KHR5cGUsIChjb250ZXh0OiBTdGF0aWNTeW1ib2wsIGFyZ3M6IGFueVtdKSA9PiBuZXcgY3RvciguLi5hcmdzKSk7XG4gIH1cblxuICBwcml2YXRlIF9yZWdpc3RlckZ1bmN0aW9uKHR5cGU6IFN0YXRpY1N5bWJvbCwgZm46IGFueSk6IHZvaWQge1xuICAgIHRoaXMuY29udmVyc2lvbk1hcC5zZXQodHlwZSwgKGNvbnRleHQ6IFN0YXRpY1N5bWJvbCwgYXJnczogYW55W10pID0+IGZuLmFwcGx5KHVuZGVmaW5lZCwgYXJncykpO1xuICB9XG5cbiAgcHJpdmF0ZSBpbml0aWFsaXplQ29udmVyc2lvbk1hcCgpOiB2b2lkIHtcbiAgICB0aGlzLl9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IoXG4gICAgICAgIHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ0luamVjdGFibGUnKSwgY3JlYXRlSW5qZWN0YWJsZSk7XG4gICAgdGhpcy5pbmplY3Rpb25Ub2tlbiA9IHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ0luamVjdGlvblRva2VuJyk7XG4gICAgdGhpcy5vcGFxdWVUb2tlbiA9IHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ09wYXF1ZVRva2VuJyk7XG4gICAgdGhpcy5ST1VURVMgPSB0aGlzLnRyeUZpbmREZWNsYXJhdGlvbihBTkdVTEFSX1JPVVRFUiwgJ1JPVVRFUycpO1xuICAgIHRoaXMuQU5BTFlaRV9GT1JfRU5UUllfQ09NUE9ORU5UUyA9XG4gICAgICAgIHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ0FOQUxZWkVfRk9SX0VOVFJZX0NPTVBPTkVOVFMnKTtcblxuICAgIHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3Rvcih0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdIb3N0JyksIGNyZWF0ZUhvc3QpO1xuICAgIHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3Rvcih0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdTZWxmJyksIGNyZWF0ZVNlbGYpO1xuICAgIHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3RvcihcbiAgICAgICAgdGhpcy5maW5kRGVjbGFyYXRpb24oQU5HVUxBUl9DT1JFLCAnU2tpcFNlbGYnKSwgY3JlYXRlU2tpcFNlbGYpO1xuICAgIHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3RvcihcbiAgICAgICAgdGhpcy5maW5kRGVjbGFyYXRpb24oQU5HVUxBUl9DT1JFLCAnSW5qZWN0JyksIGNyZWF0ZUluamVjdCk7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKFxuICAgICAgICB0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdPcHRpb25hbCcpLCBjcmVhdGVPcHRpb25hbCk7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKFxuICAgICAgICB0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdBdHRyaWJ1dGUnKSwgY3JlYXRlQXR0cmlidXRlKTtcbiAgICB0aGlzLl9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IoXG4gICAgICAgIHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ0NvbnRlbnRDaGlsZCcpLCBjcmVhdGVDb250ZW50Q2hpbGQpO1xuICAgIHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3RvcihcbiAgICAgICAgdGhpcy5maW5kRGVjbGFyYXRpb24oQU5HVUxBUl9DT1JFLCAnQ29udGVudENoaWxkcmVuJyksIGNyZWF0ZUNvbnRlbnRDaGlsZHJlbik7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKFxuICAgICAgICB0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdWaWV3Q2hpbGQnKSwgY3JlYXRlVmlld0NoaWxkKTtcbiAgICB0aGlzLl9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IoXG4gICAgICAgIHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ1ZpZXdDaGlsZHJlbicpLCBjcmVhdGVWaWV3Q2hpbGRyZW4pO1xuICAgIHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3Rvcih0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdJbnB1dCcpLCBjcmVhdGVJbnB1dCk7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKFxuICAgICAgICB0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdPdXRwdXQnKSwgY3JlYXRlT3V0cHV0KTtcbiAgICB0aGlzLl9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IodGhpcy5maW5kRGVjbGFyYXRpb24oQU5HVUxBUl9DT1JFLCAnUGlwZScpLCBjcmVhdGVQaXBlKTtcbiAgICB0aGlzLl9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IoXG4gICAgICAgIHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ0hvc3RCaW5kaW5nJyksIGNyZWF0ZUhvc3RCaW5kaW5nKTtcbiAgICB0aGlzLl9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IoXG4gICAgICAgIHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ0hvc3RMaXN0ZW5lcicpLCBjcmVhdGVIb3N0TGlzdGVuZXIpO1xuICAgIHRoaXMuX3JlZ2lzdGVyRGVjb3JhdG9yT3JDb25zdHJ1Y3RvcihcbiAgICAgICAgdGhpcy5maW5kRGVjbGFyYXRpb24oQU5HVUxBUl9DT1JFLCAnRGlyZWN0aXZlJyksIGNyZWF0ZURpcmVjdGl2ZSk7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKFxuICAgICAgICB0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdDb21wb25lbnQnKSwgY3JlYXRlQ29tcG9uZW50KTtcbiAgICB0aGlzLl9yZWdpc3RlckRlY29yYXRvck9yQ29uc3RydWN0b3IoXG4gICAgICAgIHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ05nTW9kdWxlJyksIGNyZWF0ZU5nTW9kdWxlKTtcblxuICAgIC8vIE5vdGU6IFNvbWUgbWV0YWRhdGEgY2xhc3NlcyBjYW4gYmUgdXNlZCBkaXJlY3RseSB3aXRoIFByb3ZpZGVyLmRlcHMuXG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ0hvc3QnKSwgY3JlYXRlSG9zdCk7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKHRoaXMuZmluZERlY2xhcmF0aW9uKEFOR1VMQVJfQ09SRSwgJ1NlbGYnKSwgY3JlYXRlU2VsZik7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKFxuICAgICAgICB0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdTa2lwU2VsZicpLCBjcmVhdGVTa2lwU2VsZik7XG4gICAgdGhpcy5fcmVnaXN0ZXJEZWNvcmF0b3JPckNvbnN0cnVjdG9yKFxuICAgICAgICB0aGlzLmZpbmREZWNsYXJhdGlvbihBTkdVTEFSX0NPUkUsICdPcHRpb25hbCcpLCBjcmVhdGVPcHRpb25hbCk7XG4gIH1cblxuICAvKipcbiAgICogZ2V0U3RhdGljU3ltYm9sIHByb2R1Y2VzIGEgVHlwZSB3aG9zZSBtZXRhZGF0YSBpcyBrbm93biBidXQgd2hvc2UgaW1wbGVtZW50YXRpb24gaXMgbm90IGxvYWRlZC5cbiAgICogQWxsIHR5cGVzIHBhc3NlZCB0byB0aGUgU3RhdGljUmVzb2x2ZXIgc2hvdWxkIGJlIHBzZXVkby10eXBlcyByZXR1cm5lZCBieSB0aGlzIG1ldGhvZC5cbiAgICpcbiAgICogQHBhcmFtIGRlY2xhcmF0aW9uRmlsZSB0aGUgYWJzb2x1dGUgcGF0aCBvZiB0aGUgZmlsZSB3aGVyZSB0aGUgc3ltYm9sIGlzIGRlY2xhcmVkXG4gICAqIEBwYXJhbSBuYW1lIHRoZSBuYW1lIG9mIHRoZSB0eXBlLlxuICAgKi9cbiAgZ2V0U3RhdGljU3ltYm9sKGRlY2xhcmF0aW9uRmlsZTogc3RyaW5nLCBuYW1lOiBzdHJpbmcsIG1lbWJlcnM/OiBzdHJpbmdbXSk6IFN0YXRpY1N5bWJvbCB7XG4gICAgcmV0dXJuIHRoaXMuc3ltYm9sUmVzb2x2ZXIuZ2V0U3RhdGljU3ltYm9sKGRlY2xhcmF0aW9uRmlsZSwgbmFtZSwgbWVtYmVycyk7XG4gIH1cblxuICAvKipcbiAgICogU2ltcGxpZnkgYnV0IGRpc2NhcmQgYW55IGVycm9yc1xuICAgKi9cbiAgcHJpdmF0ZSB0cnlTaW1wbGlmeShjb250ZXh0OiBTdGF0aWNTeW1ib2wsIHZhbHVlOiBhbnkpOiBhbnkge1xuICAgIGNvbnN0IG9yaWdpbmFsUmVjb3JkZXIgPSB0aGlzLmVycm9yUmVjb3JkZXI7XG4gICAgdGhpcy5lcnJvclJlY29yZGVyID0gKGVycm9yOiBhbnksIGZpbGVOYW1lPzogc3RyaW5nKSA9PiB7fTtcbiAgICBjb25zdCByZXN1bHQgPSB0aGlzLnNpbXBsaWZ5KGNvbnRleHQsIHZhbHVlKTtcbiAgICB0aGlzLmVycm9yUmVjb3JkZXIgPSBvcmlnaW5hbFJlY29yZGVyO1xuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIHB1YmxpYyBzaW1wbGlmeShjb250ZXh0OiBTdGF0aWNTeW1ib2wsIHZhbHVlOiBhbnksIGxhenk6IGJvb2xlYW4gPSBmYWxzZSk6IGFueSB7XG4gICAgY29uc3Qgc2VsZiA9IHRoaXM7XG4gICAgbGV0IHNjb3BlID0gQmluZGluZ1Njb3BlLmVtcHR5O1xuICAgIGNvbnN0IGNhbGxpbmcgPSBuZXcgTWFwPFN0YXRpY1N5bWJvbCwgYm9vbGVhbj4oKTtcbiAgICBjb25zdCByb290Q29udGV4dCA9IGNvbnRleHQ7XG5cbiAgICBmdW5jdGlvbiBzaW1wbGlmeUluQ29udGV4dChcbiAgICAgICAgY29udGV4dDogU3RhdGljU3ltYm9sLCB2YWx1ZTogYW55LCBkZXB0aDogbnVtYmVyLCByZWZlcmVuY2VzOiBudW1iZXIpOiBhbnkge1xuICAgICAgZnVuY3Rpb24gcmVzb2x2ZVJlZmVyZW5jZVZhbHVlKHN0YXRpY1N5bWJvbDogU3RhdGljU3ltYm9sKTogYW55IHtcbiAgICAgICAgY29uc3QgcmVzb2x2ZWRTeW1ib2wgPSBzZWxmLnN5bWJvbFJlc29sdmVyLnJlc29sdmVTeW1ib2woc3RhdGljU3ltYm9sKTtcbiAgICAgICAgcmV0dXJuIHJlc29sdmVkU3ltYm9sID8gcmVzb2x2ZWRTeW1ib2wubWV0YWRhdGEgOiBudWxsO1xuICAgICAgfVxuXG4gICAgICBmdW5jdGlvbiBzaW1wbGlmeUVhZ2VybHkodmFsdWU6IGFueSk6IGFueSB7XG4gICAgICAgIHJldHVybiBzaW1wbGlmeUluQ29udGV4dChjb250ZXh0LCB2YWx1ZSwgZGVwdGgsIDApO1xuICAgICAgfVxuXG4gICAgICBmdW5jdGlvbiBzaW1wbGlmeUxhemlseSh2YWx1ZTogYW55KTogYW55IHtcbiAgICAgICAgcmV0dXJuIHNpbXBsaWZ5SW5Db250ZXh0KGNvbnRleHQsIHZhbHVlLCBkZXB0aCwgcmVmZXJlbmNlcyArIDEpO1xuICAgICAgfVxuXG4gICAgICBmdW5jdGlvbiBzaW1wbGlmeU5lc3RlZChuZXN0ZWRDb250ZXh0OiBTdGF0aWNTeW1ib2wsIHZhbHVlOiBhbnkpOiBhbnkge1xuICAgICAgICBpZiAobmVzdGVkQ29udGV4dCA9PT0gY29udGV4dCkge1xuICAgICAgICAgIC8vIElmIHRoZSBjb250ZXh0IGhhc24ndCBjaGFuZ2VkIGxldCB0aGUgZXhjZXB0aW9uIHByb3BhZ2F0ZSB1bm1vZGlmaWVkLlxuICAgICAgICAgIHJldHVybiBzaW1wbGlmeUluQ29udGV4dChuZXN0ZWRDb250ZXh0LCB2YWx1ZSwgZGVwdGggKyAxLCByZWZlcmVuY2VzKTtcbiAgICAgICAgfVxuICAgICAgICB0cnkge1xuICAgICAgICAgIHJldHVybiBzaW1wbGlmeUluQ29udGV4dChuZXN0ZWRDb250ZXh0LCB2YWx1ZSwgZGVwdGggKyAxLCByZWZlcmVuY2VzKTtcbiAgICAgICAgfSBjYXRjaCAoZSkge1xuICAgICAgICAgIGlmIChpc01ldGFkYXRhRXJyb3IoZSkpIHtcbiAgICAgICAgICAgIC8vIFByb3BhZ2F0ZSB0aGUgbWVzc2FnZSB0ZXh0IHVwIGJ1dCBhZGQgYSBtZXNzYWdlIHRvIHRoZSBjaGFpbiB0aGF0IGV4cGxhaW5zIGhvdyB3ZSBnb3RcbiAgICAgICAgICAgIC8vIGhlcmUuXG4gICAgICAgICAgICAvLyBlLmNoYWluIGltcGxpZXMgZS5zeW1ib2xcbiAgICAgICAgICAgIGNvbnN0IHN1bW1hcnlNc2cgPSBlLmNoYWluID8gJ3JlZmVyZW5jZXMgXFwnJyArIGUuc3ltYm9sICEubmFtZSArICdcXCcnIDogZXJyb3JTdW1tYXJ5KGUpO1xuICAgICAgICAgICAgY29uc3Qgc3VtbWFyeSA9IGAnJHtuZXN0ZWRDb250ZXh0Lm5hbWV9JyAke3N1bW1hcnlNc2d9YDtcbiAgICAgICAgICAgIGNvbnN0IGNoYWluID0ge21lc3NhZ2U6IHN1bW1hcnksIHBvc2l0aW9uOiBlLnBvc2l0aW9uLCBuZXh0OiBlLmNoYWlufTtcbiAgICAgICAgICAgIC8vIFRPRE8oY2h1Y2tqKTogcmV0cmlldmUgdGhlIHBvc2l0aW9uIGluZm9ybWF0aW9uIGluZGlyZWN0bHkgZnJvbSB0aGUgY29sbGVjdG9ycyBub2RlXG4gICAgICAgICAgICAvLyBtYXAgaWYgdGhlIG1ldGFkYXRhIGlzIGZyb20gYSAudHMgZmlsZS5cbiAgICAgICAgICAgIHNlbGYuZXJyb3IoXG4gICAgICAgICAgICAgICAge1xuICAgICAgICAgICAgICAgICAgbWVzc2FnZTogZS5tZXNzYWdlLFxuICAgICAgICAgICAgICAgICAgYWR2aXNlOiBlLmFkdmlzZSxcbiAgICAgICAgICAgICAgICAgIGNvbnRleHQ6IGUuY29udGV4dCwgY2hhaW4sXG4gICAgICAgICAgICAgICAgICBzeW1ib2w6IG5lc3RlZENvbnRleHRcbiAgICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgICAgIGNvbnRleHQpO1xuICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAvLyBJdCBpcyBwcm9iYWJseSBhbiBpbnRlcm5hbCBlcnJvci5cbiAgICAgICAgICAgIHRocm93IGU7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIGZ1bmN0aW9uIHNpbXBsaWZ5Q2FsbChcbiAgICAgICAgICBmdW5jdGlvblN5bWJvbDogU3RhdGljU3ltYm9sLCB0YXJnZXRGdW5jdGlvbjogYW55LCBhcmdzOiBhbnlbXSwgdGFyZ2V0RXhwcmVzc2lvbjogYW55KSB7XG4gICAgICAgIGlmICh0YXJnZXRGdW5jdGlvbiAmJiB0YXJnZXRGdW5jdGlvblsnX19zeW1ib2xpYyddID09ICdmdW5jdGlvbicpIHtcbiAgICAgICAgICBpZiAoY2FsbGluZy5nZXQoZnVuY3Rpb25TeW1ib2wpKSB7XG4gICAgICAgICAgICBzZWxmLmVycm9yKFxuICAgICAgICAgICAgICAgIHtcbiAgICAgICAgICAgICAgICAgIG1lc3NhZ2U6ICdSZWN1cnNpb24gaXMgbm90IHN1cHBvcnRlZCcsXG4gICAgICAgICAgICAgICAgICBzdW1tYXJ5OiBgY2FsbGVkICcke2Z1bmN0aW9uU3ltYm9sLm5hbWV9JyByZWN1cnNpdmVseWAsXG4gICAgICAgICAgICAgICAgICB2YWx1ZTogdGFyZ2V0RnVuY3Rpb25cbiAgICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgICAgIGZ1bmN0aW9uU3ltYm9sKTtcbiAgICAgICAgICB9XG4gICAgICAgICAgdHJ5IHtcbiAgICAgICAgICAgIGNvbnN0IHZhbHVlID0gdGFyZ2V0RnVuY3Rpb25bJ3ZhbHVlJ107XG4gICAgICAgICAgICBpZiAodmFsdWUgJiYgKGRlcHRoICE9IDAgfHwgdmFsdWUuX19zeW1ib2xpYyAhPSAnZXJyb3InKSkge1xuICAgICAgICAgICAgICBjb25zdCBwYXJhbWV0ZXJzOiBzdHJpbmdbXSA9IHRhcmdldEZ1bmN0aW9uWydwYXJhbWV0ZXJzJ107XG4gICAgICAgICAgICAgIGNvbnN0IGRlZmF1bHRzOiBhbnlbXSA9IHRhcmdldEZ1bmN0aW9uLmRlZmF1bHRzO1xuICAgICAgICAgICAgICBhcmdzID0gYXJncy5tYXAoYXJnID0+IHNpbXBsaWZ5TmVzdGVkKGNvbnRleHQsIGFyZykpXG4gICAgICAgICAgICAgICAgICAgICAgICAgLm1hcChhcmcgPT4gc2hvdWxkSWdub3JlKGFyZykgPyB1bmRlZmluZWQgOiBhcmcpO1xuICAgICAgICAgICAgICBpZiAoZGVmYXVsdHMgJiYgZGVmYXVsdHMubGVuZ3RoID4gYXJncy5sZW5ndGgpIHtcbiAgICAgICAgICAgICAgICBhcmdzLnB1c2goLi4uZGVmYXVsdHMuc2xpY2UoYXJncy5sZW5ndGgpLm1hcCgodmFsdWU6IGFueSkgPT4gc2ltcGxpZnkodmFsdWUpKSk7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgY2FsbGluZy5zZXQoZnVuY3Rpb25TeW1ib2wsIHRydWUpO1xuICAgICAgICAgICAgICBjb25zdCBmdW5jdGlvblNjb3BlID0gQmluZGluZ1Njb3BlLmJ1aWxkKCk7XG4gICAgICAgICAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgcGFyYW1ldGVycy5sZW5ndGg7IGkrKykge1xuICAgICAgICAgICAgICAgIGZ1bmN0aW9uU2NvcGUuZGVmaW5lKHBhcmFtZXRlcnNbaV0sIGFyZ3NbaV0pO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgIGNvbnN0IG9sZFNjb3BlID0gc2NvcGU7XG4gICAgICAgICAgICAgIGxldCByZXN1bHQ6IGFueTtcbiAgICAgICAgICAgICAgdHJ5IHtcbiAgICAgICAgICAgICAgICBzY29wZSA9IGZ1bmN0aW9uU2NvcGUuZG9uZSgpO1xuICAgICAgICAgICAgICAgIHJlc3VsdCA9IHNpbXBsaWZ5TmVzdGVkKGZ1bmN0aW9uU3ltYm9sLCB2YWx1ZSk7XG4gICAgICAgICAgICAgIH0gZmluYWxseSB7XG4gICAgICAgICAgICAgICAgc2NvcGUgPSBvbGRTY29wZTtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICByZXR1cm4gcmVzdWx0O1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH0gZmluYWxseSB7XG4gICAgICAgICAgICBjYWxsaW5nLmRlbGV0ZShmdW5jdGlvblN5bWJvbCk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgaWYgKGRlcHRoID09PSAwKSB7XG4gICAgICAgICAgLy8gSWYgZGVwdGggaXMgMCB3ZSBhcmUgZXZhbHVhdGluZyB0aGUgdG9wIGxldmVsIGV4cHJlc3Npb24gdGhhdCBpcyBkZXNjcmliaW5nIGVsZW1lbnRcbiAgICAgICAgICAvLyBkZWNvcmF0b3IuIEluIHRoaXMgY2FzZSwgaXQgaXMgYSBkZWNvcmF0b3Igd2UgZG9uJ3QgdW5kZXJzdGFuZCwgc3VjaCBhcyBhIGN1c3RvbVxuICAgICAgICAgIC8vIG5vbi1hbmd1bGFyIGRlY29yYXRvciwgYW5kIHdlIHNob3VsZCBqdXN0IGlnbm9yZSBpdC5cbiAgICAgICAgICByZXR1cm4gSUdOT1JFO1xuICAgICAgICB9XG4gICAgICAgIGxldCBwb3NpdGlvbjogUG9zaXRpb258dW5kZWZpbmVkID0gdW5kZWZpbmVkO1xuICAgICAgICBpZiAodGFyZ2V0RXhwcmVzc2lvbiAmJiB0YXJnZXRFeHByZXNzaW9uLl9fc3ltYm9saWMgPT0gJ3Jlc29sdmVkJykge1xuICAgICAgICAgIGNvbnN0IGxpbmUgPSB0YXJnZXRFeHByZXNzaW9uLmxpbmU7XG4gICAgICAgICAgY29uc3QgY2hhcmFjdGVyID0gdGFyZ2V0RXhwcmVzc2lvbi5jaGFyYWN0ZXI7XG4gICAgICAgICAgY29uc3QgZmlsZU5hbWUgPSB0YXJnZXRFeHByZXNzaW9uLmZpbGVOYW1lO1xuICAgICAgICAgIGlmIChmaWxlTmFtZSAhPSBudWxsICYmIGxpbmUgIT0gbnVsbCAmJiBjaGFyYWN0ZXIgIT0gbnVsbCkge1xuICAgICAgICAgICAgcG9zaXRpb24gPSB7ZmlsZU5hbWUsIGxpbmUsIGNvbHVtbjogY2hhcmFjdGVyfTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgICAgc2VsZi5lcnJvcihcbiAgICAgICAgICAgIHtcbiAgICAgICAgICAgICAgbWVzc2FnZTogRlVOQ1RJT05fQ0FMTF9OT1RfU1VQUE9SVEVELFxuICAgICAgICAgICAgICBjb250ZXh0OiBmdW5jdGlvblN5bWJvbCxcbiAgICAgICAgICAgICAgdmFsdWU6IHRhcmdldEZ1bmN0aW9uLCBwb3NpdGlvblxuICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIGNvbnRleHQpO1xuICAgICAgfVxuXG4gICAgICBmdW5jdGlvbiBzaW1wbGlmeShleHByZXNzaW9uOiBhbnkpOiBhbnkge1xuICAgICAgICBpZiAoaXNQcmltaXRpdmUoZXhwcmVzc2lvbikpIHtcbiAgICAgICAgICByZXR1cm4gZXhwcmVzc2lvbjtcbiAgICAgICAgfVxuICAgICAgICBpZiAoQXJyYXkuaXNBcnJheShleHByZXNzaW9uKSkge1xuICAgICAgICAgIGNvbnN0IHJlc3VsdDogYW55W10gPSBbXTtcbiAgICAgICAgICBmb3IgKGNvbnN0IGl0ZW0gb2YgKDxhbnk+ZXhwcmVzc2lvbikpIHtcbiAgICAgICAgICAgIC8vIENoZWNrIGZvciBhIHNwcmVhZCBleHByZXNzaW9uXG4gICAgICAgICAgICBpZiAoaXRlbSAmJiBpdGVtLl9fc3ltYm9saWMgPT09ICdzcHJlYWQnKSB7XG4gICAgICAgICAgICAgIC8vIFdlIGNhbGwgd2l0aCByZWZlcmVuY2VzIGFzIDAgYmVjYXVzZSB3ZSByZXF1aXJlIHRoZSBhY3R1YWwgdmFsdWUgYW5kIGNhbm5vdFxuICAgICAgICAgICAgICAvLyB0b2xlcmF0ZSBhIHJlZmVyZW5jZSBoZXJlLlxuICAgICAgICAgICAgICBjb25zdCBzcHJlYWRBcnJheSA9IHNpbXBsaWZ5RWFnZXJseShpdGVtLmV4cHJlc3Npb24pO1xuICAgICAgICAgICAgICBpZiAoQXJyYXkuaXNBcnJheShzcHJlYWRBcnJheSkpIHtcbiAgICAgICAgICAgICAgICBmb3IgKGNvbnN0IHNwcmVhZEl0ZW0gb2Ygc3ByZWFkQXJyYXkpIHtcbiAgICAgICAgICAgICAgICAgIHJlc3VsdC5wdXNoKHNwcmVhZEl0ZW0pO1xuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICBjb250aW51ZTtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfVxuICAgICAgICAgICAgY29uc3QgdmFsdWUgPSBzaW1wbGlmeShpdGVtKTtcbiAgICAgICAgICAgIGlmIChzaG91bGRJZ25vcmUodmFsdWUpKSB7XG4gICAgICAgICAgICAgIGNvbnRpbnVlO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgcmVzdWx0LnB1c2godmFsdWUpO1xuICAgICAgICAgIH1cbiAgICAgICAgICByZXR1cm4gcmVzdWx0O1xuICAgICAgICB9XG4gICAgICAgIGlmIChleHByZXNzaW9uIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sKSB7XG4gICAgICAgICAgLy8gU3RvcCBzaW1wbGlmaWNhdGlvbiBhdCBidWlsdGluIHN5bWJvbHMgb3IgaWYgd2UgYXJlIGluIGEgcmVmZXJlbmNlIGNvbnRleHQgYW5kXG4gICAgICAgICAgLy8gdGhlIHN5bWJvbCBkb2Vzbid0IGhhdmUgbWVtYmVycy5cbiAgICAgICAgICBpZiAoZXhwcmVzc2lvbiA9PT0gc2VsZi5pbmplY3Rpb25Ub2tlbiB8fCBzZWxmLmNvbnZlcnNpb25NYXAuaGFzKGV4cHJlc3Npb24pIHx8XG4gICAgICAgICAgICAgIChyZWZlcmVuY2VzID4gMCAmJiAhZXhwcmVzc2lvbi5tZW1iZXJzLmxlbmd0aCkpIHtcbiAgICAgICAgICAgIHJldHVybiBleHByZXNzaW9uO1xuICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICBjb25zdCBzdGF0aWNTeW1ib2wgPSBleHByZXNzaW9uO1xuICAgICAgICAgICAgY29uc3QgZGVjbGFyYXRpb25WYWx1ZSA9IHJlc29sdmVSZWZlcmVuY2VWYWx1ZShzdGF0aWNTeW1ib2wpO1xuICAgICAgICAgICAgaWYgKGRlY2xhcmF0aW9uVmFsdWUgIT0gbnVsbCkge1xuICAgICAgICAgICAgICByZXR1cm4gc2ltcGxpZnlOZXN0ZWQoc3RhdGljU3ltYm9sLCBkZWNsYXJhdGlvblZhbHVlKTtcbiAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgIHJldHVybiBzdGF0aWNTeW1ib2w7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICAgIGlmIChleHByZXNzaW9uKSB7XG4gICAgICAgICAgaWYgKGV4cHJlc3Npb25bJ19fc3ltYm9saWMnXSkge1xuICAgICAgICAgICAgbGV0IHN0YXRpY1N5bWJvbDogU3RhdGljU3ltYm9sO1xuICAgICAgICAgICAgc3dpdGNoIChleHByZXNzaW9uWydfX3N5bWJvbGljJ10pIHtcbiAgICAgICAgICAgICAgY2FzZSAnYmlub3AnOlxuICAgICAgICAgICAgICAgIGxldCBsZWZ0ID0gc2ltcGxpZnkoZXhwcmVzc2lvblsnbGVmdCddKTtcbiAgICAgICAgICAgICAgICBpZiAoc2hvdWxkSWdub3JlKGxlZnQpKSByZXR1cm4gbGVmdDtcbiAgICAgICAgICAgICAgICBsZXQgcmlnaHQgPSBzaW1wbGlmeShleHByZXNzaW9uWydyaWdodCddKTtcbiAgICAgICAgICAgICAgICBpZiAoc2hvdWxkSWdub3JlKHJpZ2h0KSkgcmV0dXJuIHJpZ2h0O1xuICAgICAgICAgICAgICAgIHN3aXRjaCAoZXhwcmVzc2lvblsnb3BlcmF0b3InXSkge1xuICAgICAgICAgICAgICAgICAgY2FzZSAnJiYnOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gbGVmdCAmJiByaWdodDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJ3x8JzpcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGxlZnQgfHwgcmlnaHQ7XG4gICAgICAgICAgICAgICAgICBjYXNlICd8JzpcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGxlZnQgfCByaWdodDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJ14nOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gbGVmdCBeIHJpZ2h0O1xuICAgICAgICAgICAgICAgICAgY2FzZSAnJic6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0ICYgcmlnaHQ7XG4gICAgICAgICAgICAgICAgICBjYXNlICc9PSc6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0ID09IHJpZ2h0O1xuICAgICAgICAgICAgICAgICAgY2FzZSAnIT0nOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gbGVmdCAhPSByaWdodDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJz09PSc6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0ID09PSByaWdodDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJyE9PSc6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0ICE9PSByaWdodDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJzwnOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gbGVmdCA8IHJpZ2h0O1xuICAgICAgICAgICAgICAgICAgY2FzZSAnPic6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0ID4gcmlnaHQ7XG4gICAgICAgICAgICAgICAgICBjYXNlICc8PSc6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0IDw9IHJpZ2h0O1xuICAgICAgICAgICAgICAgICAgY2FzZSAnPj0nOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gbGVmdCA+PSByaWdodDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJzw8JzpcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGxlZnQgPDwgcmlnaHQ7XG4gICAgICAgICAgICAgICAgICBjYXNlICc+Pic6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0ID4+IHJpZ2h0O1xuICAgICAgICAgICAgICAgICAgY2FzZSAnKyc6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0ICsgcmlnaHQ7XG4gICAgICAgICAgICAgICAgICBjYXNlICctJzpcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGxlZnQgLSByaWdodDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJyonOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gbGVmdCAqIHJpZ2h0O1xuICAgICAgICAgICAgICAgICAgY2FzZSAnLyc6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBsZWZ0IC8gcmlnaHQ7XG4gICAgICAgICAgICAgICAgICBjYXNlICclJzpcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGxlZnQgJSByaWdodDtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgcmV0dXJuIG51bGw7XG4gICAgICAgICAgICAgIGNhc2UgJ2lmJzpcbiAgICAgICAgICAgICAgICBsZXQgY29uZGl0aW9uID0gc2ltcGxpZnkoZXhwcmVzc2lvblsnY29uZGl0aW9uJ10pO1xuICAgICAgICAgICAgICAgIHJldHVybiBjb25kaXRpb24gPyBzaW1wbGlmeShleHByZXNzaW9uWyd0aGVuRXhwcmVzc2lvbiddKSA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNpbXBsaWZ5KGV4cHJlc3Npb25bJ2Vsc2VFeHByZXNzaW9uJ10pO1xuICAgICAgICAgICAgICBjYXNlICdwcmUnOlxuICAgICAgICAgICAgICAgIGxldCBvcGVyYW5kID0gc2ltcGxpZnkoZXhwcmVzc2lvblsnb3BlcmFuZCddKTtcbiAgICAgICAgICAgICAgICBpZiAoc2hvdWxkSWdub3JlKG9wZXJhbmQpKSByZXR1cm4gb3BlcmFuZDtcbiAgICAgICAgICAgICAgICBzd2l0Y2ggKGV4cHJlc3Npb25bJ29wZXJhdG9yJ10pIHtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJysnOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gb3BlcmFuZDtcbiAgICAgICAgICAgICAgICAgIGNhc2UgJy0nOlxuICAgICAgICAgICAgICAgICAgICByZXR1cm4gLW9wZXJhbmQ7XG4gICAgICAgICAgICAgICAgICBjYXNlICchJzpcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuICFvcGVyYW5kO1xuICAgICAgICAgICAgICAgICAgY2FzZSAnfic6XG4gICAgICAgICAgICAgICAgICAgIHJldHVybiB+b3BlcmFuZDtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgcmV0dXJuIG51bGw7XG4gICAgICAgICAgICAgIGNhc2UgJ2luZGV4JzpcbiAgICAgICAgICAgICAgICBsZXQgaW5kZXhUYXJnZXQgPSBzaW1wbGlmeUVhZ2VybHkoZXhwcmVzc2lvblsnZXhwcmVzc2lvbiddKTtcbiAgICAgICAgICAgICAgICBsZXQgaW5kZXggPSBzaW1wbGlmeUVhZ2VybHkoZXhwcmVzc2lvblsnaW5kZXgnXSk7XG4gICAgICAgICAgICAgICAgaWYgKGluZGV4VGFyZ2V0ICYmIGlzUHJpbWl0aXZlKGluZGV4KSkgcmV0dXJuIGluZGV4VGFyZ2V0W2luZGV4XTtcbiAgICAgICAgICAgICAgICByZXR1cm4gbnVsbDtcbiAgICAgICAgICAgICAgY2FzZSAnc2VsZWN0JzpcbiAgICAgICAgICAgICAgICBjb25zdCBtZW1iZXIgPSBleHByZXNzaW9uWydtZW1iZXInXTtcbiAgICAgICAgICAgICAgICBsZXQgc2VsZWN0Q29udGV4dCA9IGNvbnRleHQ7XG4gICAgICAgICAgICAgICAgbGV0IHNlbGVjdFRhcmdldCA9IHNpbXBsaWZ5KGV4cHJlc3Npb25bJ2V4cHJlc3Npb24nXSk7XG4gICAgICAgICAgICAgICAgaWYgKHNlbGVjdFRhcmdldCBpbnN0YW5jZW9mIFN0YXRpY1N5bWJvbCkge1xuICAgICAgICAgICAgICAgICAgY29uc3QgbWVtYmVycyA9IHNlbGVjdFRhcmdldC5tZW1iZXJzLmNvbmNhdChtZW1iZXIpO1xuICAgICAgICAgICAgICAgICAgc2VsZWN0Q29udGV4dCA9XG4gICAgICAgICAgICAgICAgICAgICAgc2VsZi5nZXRTdGF0aWNTeW1ib2woc2VsZWN0VGFyZ2V0LmZpbGVQYXRoLCBzZWxlY3RUYXJnZXQubmFtZSwgbWVtYmVycyk7XG4gICAgICAgICAgICAgICAgICBjb25zdCBkZWNsYXJhdGlvblZhbHVlID0gcmVzb2x2ZVJlZmVyZW5jZVZhbHVlKHNlbGVjdENvbnRleHQpO1xuICAgICAgICAgICAgICAgICAgaWYgKGRlY2xhcmF0aW9uVmFsdWUgIT0gbnVsbCkge1xuICAgICAgICAgICAgICAgICAgICByZXR1cm4gc2ltcGxpZnlOZXN0ZWQoc2VsZWN0Q29udGV4dCwgZGVjbGFyYXRpb25WYWx1ZSk7XG4gICAgICAgICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgICAgICByZXR1cm4gc2VsZWN0Q29udGV4dDtcbiAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgaWYgKHNlbGVjdFRhcmdldCAmJiBpc1ByaW1pdGl2ZShtZW1iZXIpKVxuICAgICAgICAgICAgICAgICAgcmV0dXJuIHNpbXBsaWZ5TmVzdGVkKHNlbGVjdENvbnRleHQsIHNlbGVjdFRhcmdldFttZW1iZXJdKTtcbiAgICAgICAgICAgICAgICByZXR1cm4gbnVsbDtcbiAgICAgICAgICAgICAgY2FzZSAncmVmZXJlbmNlJzpcbiAgICAgICAgICAgICAgICAvLyBOb3RlOiBUaGlzIG9ubHkgaGFzIHRvIGRlYWwgd2l0aCB2YXJpYWJsZSByZWZlcmVuY2VzLCBhcyBzeW1ib2wgcmVmZXJlbmNlcyBoYXZlXG4gICAgICAgICAgICAgICAgLy8gYmVlbiBjb252ZXJ0ZWQgaW50byAncmVzb2x2ZWQnXG4gICAgICAgICAgICAgICAgLy8gaW4gdGhlIFN0YXRpY1N5bWJvbFJlc29sdmVyLlxuICAgICAgICAgICAgICAgIGNvbnN0IG5hbWU6IHN0cmluZyA9IGV4cHJlc3Npb25bJ25hbWUnXTtcbiAgICAgICAgICAgICAgICBjb25zdCBsb2NhbFZhbHVlID0gc2NvcGUucmVzb2x2ZShuYW1lKTtcbiAgICAgICAgICAgICAgICBpZiAobG9jYWxWYWx1ZSAhPSBCaW5kaW5nU2NvcGUubWlzc2luZykge1xuICAgICAgICAgICAgICAgICAgcmV0dXJuIGxvY2FsVmFsdWU7XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgICAgICBjYXNlICdyZXNvbHZlZCc6XG4gICAgICAgICAgICAgICAgdHJ5IHtcbiAgICAgICAgICAgICAgICAgIHJldHVybiBzaW1wbGlmeShleHByZXNzaW9uLnN5bWJvbCk7XG4gICAgICAgICAgICAgICAgfSBjYXRjaCAoZSkge1xuICAgICAgICAgICAgICAgICAgLy8gSWYgYW4gZXJyb3IgaXMgcmVwb3J0ZWQgZXZhbHVhdGluZyB0aGUgc3ltYm9sIHJlY29yZCB0aGUgcG9zaXRpb24gb2YgdGhlXG4gICAgICAgICAgICAgICAgICAvLyByZWZlcmVuY2UgaW4gdGhlIGVycm9yIHNvIGl0IGNhblxuICAgICAgICAgICAgICAgICAgLy8gYmUgcmVwb3J0ZWQgaW4gdGhlIGVycm9yIG1lc3NhZ2UgZ2VuZXJhdGVkIGZyb20gdGhlIGV4Y2VwdGlvbi5cbiAgICAgICAgICAgICAgICAgIGlmIChpc01ldGFkYXRhRXJyb3IoZSkgJiYgZXhwcmVzc2lvbi5maWxlTmFtZSAhPSBudWxsICYmXG4gICAgICAgICAgICAgICAgICAgICAgZXhwcmVzc2lvbi5saW5lICE9IG51bGwgJiYgZXhwcmVzc2lvbi5jaGFyYWN0ZXIgIT0gbnVsbCkge1xuICAgICAgICAgICAgICAgICAgICBlLnBvc2l0aW9uID0ge1xuICAgICAgICAgICAgICAgICAgICAgIGZpbGVOYW1lOiBleHByZXNzaW9uLmZpbGVOYW1lLFxuICAgICAgICAgICAgICAgICAgICAgIGxpbmU6IGV4cHJlc3Npb24ubGluZSxcbiAgICAgICAgICAgICAgICAgICAgICBjb2x1bW46IGV4cHJlc3Npb24uY2hhcmFjdGVyXG4gICAgICAgICAgICAgICAgICAgIH07XG4gICAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgICB0aHJvdyBlO1xuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgY2FzZSAnY2xhc3MnOlxuICAgICAgICAgICAgICAgIHJldHVybiBjb250ZXh0O1xuICAgICAgICAgICAgICBjYXNlICdmdW5jdGlvbic6XG4gICAgICAgICAgICAgICAgcmV0dXJuIGNvbnRleHQ7XG4gICAgICAgICAgICAgIGNhc2UgJ25ldyc6XG4gICAgICAgICAgICAgIGNhc2UgJ2NhbGwnOlxuICAgICAgICAgICAgICAgIC8vIERldGVybWluZSBpZiB0aGUgZnVuY3Rpb24gaXMgYSBidWlsdC1pbiBjb252ZXJzaW9uXG4gICAgICAgICAgICAgICAgc3RhdGljU3ltYm9sID0gc2ltcGxpZnlJbkNvbnRleHQoXG4gICAgICAgICAgICAgICAgICAgIGNvbnRleHQsIGV4cHJlc3Npb25bJ2V4cHJlc3Npb24nXSwgZGVwdGggKyAxLCAvKiByZWZlcmVuY2VzICovIDApO1xuICAgICAgICAgICAgICAgIGlmIChzdGF0aWNTeW1ib2wgaW5zdGFuY2VvZiBTdGF0aWNTeW1ib2wpIHtcbiAgICAgICAgICAgICAgICAgIGlmIChzdGF0aWNTeW1ib2wgPT09IHNlbGYuaW5qZWN0aW9uVG9rZW4gfHwgc3RhdGljU3ltYm9sID09PSBzZWxmLm9wYXF1ZVRva2VuKSB7XG4gICAgICAgICAgICAgICAgICAgIC8vIGlmIHNvbWVib2R5IGNhbGxzIG5ldyBJbmplY3Rpb25Ub2tlbiwgZG9uJ3QgY3JlYXRlIGFuIEluamVjdGlvblRva2VuLFxuICAgICAgICAgICAgICAgICAgICAvLyBidXQgcmF0aGVyIHJldHVybiB0aGUgc3ltYm9sIHRvIHdoaWNoIHRoZSBJbmplY3Rpb25Ub2tlbiBpcyBhc3NpZ25lZCB0by5cblxuICAgICAgICAgICAgICAgICAgICAvLyBPcGFxdWVUb2tlbiBpcyBzdXBwb3J0ZWQgdG9vIGFzIGl0IGlzIHJlcXVpcmVkIGJ5IHRoZSBsYW5ndWFnZSBzZXJ2aWNlIHRvXG4gICAgICAgICAgICAgICAgICAgIC8vIHN1cHBvcnQgdjQgYW5kIHByaW9yIHZlcnNpb25zIG9mIEFuZ3VsYXIuXG4gICAgICAgICAgICAgICAgICAgIHJldHVybiBjb250ZXh0O1xuICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgICAgY29uc3QgYXJnRXhwcmVzc2lvbnM6IGFueVtdID0gZXhwcmVzc2lvblsnYXJndW1lbnRzJ10gfHwgW107XG4gICAgICAgICAgICAgICAgICBsZXQgY29udmVydGVyID0gc2VsZi5jb252ZXJzaW9uTWFwLmdldChzdGF0aWNTeW1ib2wpO1xuICAgICAgICAgICAgICAgICAgaWYgKGNvbnZlcnRlcikge1xuICAgICAgICAgICAgICAgICAgICBjb25zdCBhcmdzID0gYXJnRXhwcmVzc2lvbnMubWFwKGFyZyA9PiBzaW1wbGlmeU5lc3RlZChjb250ZXh0LCBhcmcpKVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC5tYXAoYXJnID0+IHNob3VsZElnbm9yZShhcmcpID8gdW5kZWZpbmVkIDogYXJnKTtcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGNvbnZlcnRlcihjb250ZXh0LCBhcmdzKTtcbiAgICAgICAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICAgICAgIC8vIERldGVybWluZSBpZiB0aGUgZnVuY3Rpb24gaXMgb25lIHdlIGNhbiBzaW1wbGlmeS5cbiAgICAgICAgICAgICAgICAgICAgY29uc3QgdGFyZ2V0RnVuY3Rpb24gPSByZXNvbHZlUmVmZXJlbmNlVmFsdWUoc3RhdGljU3ltYm9sKTtcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHNpbXBsaWZ5Q2FsbChcbiAgICAgICAgICAgICAgICAgICAgICAgIHN0YXRpY1N5bWJvbCwgdGFyZ2V0RnVuY3Rpb24sIGFyZ0V4cHJlc3Npb25zLCBleHByZXNzaW9uWydleHByZXNzaW9uJ10pO1xuICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICByZXR1cm4gSUdOT1JFO1xuICAgICAgICAgICAgICBjYXNlICdlcnJvcic6XG4gICAgICAgICAgICAgICAgbGV0IG1lc3NhZ2UgPSBleHByZXNzaW9uLm1lc3NhZ2U7XG4gICAgICAgICAgICAgICAgaWYgKGV4cHJlc3Npb25bJ2xpbmUnXSAhPSBudWxsKSB7XG4gICAgICAgICAgICAgICAgICBzZWxmLmVycm9yKFxuICAgICAgICAgICAgICAgICAgICAgIHtcbiAgICAgICAgICAgICAgICAgICAgICAgIG1lc3NhZ2UsXG4gICAgICAgICAgICAgICAgICAgICAgICBjb250ZXh0OiBleHByZXNzaW9uLmNvbnRleHQsXG4gICAgICAgICAgICAgICAgICAgICAgICB2YWx1ZTogZXhwcmVzc2lvbixcbiAgICAgICAgICAgICAgICAgICAgICAgIHBvc2l0aW9uOiB7XG4gICAgICAgICAgICAgICAgICAgICAgICAgIGZpbGVOYW1lOiBleHByZXNzaW9uWydmaWxlTmFtZSddLFxuICAgICAgICAgICAgICAgICAgICAgICAgICBsaW5lOiBleHByZXNzaW9uWydsaW5lJ10sXG4gICAgICAgICAgICAgICAgICAgICAgICAgIGNvbHVtbjogZXhwcmVzc2lvblsnY2hhcmFjdGVyJ11cbiAgICAgICAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgICAgICAgICAgIGNvbnRleHQpO1xuICAgICAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICAgICBzZWxmLmVycm9yKHttZXNzYWdlLCBjb250ZXh0OiBleHByZXNzaW9uLmNvbnRleHR9LCBjb250ZXh0KTtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgcmV0dXJuIElHTk9SRTtcbiAgICAgICAgICAgICAgY2FzZSAnaWdub3JlJzpcbiAgICAgICAgICAgICAgICByZXR1cm4gZXhwcmVzc2lvbjtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIHJldHVybiBudWxsO1xuICAgICAgICAgIH1cbiAgICAgICAgICByZXR1cm4gbWFwU3RyaW5nTWFwKGV4cHJlc3Npb24sICh2YWx1ZSwgbmFtZSkgPT4ge1xuICAgICAgICAgICAgaWYgKFJFRkVSRU5DRV9TRVQuaGFzKG5hbWUpKSB7XG4gICAgICAgICAgICAgIGlmIChuYW1lID09PSBVU0VfVkFMVUUgJiYgUFJPVklERSBpbiBleHByZXNzaW9uKSB7XG4gICAgICAgICAgICAgICAgLy8gSWYgdGhpcyBpcyBhIHByb3ZpZGVyIGV4cHJlc3Npb24sIGNoZWNrIGZvciBzcGVjaWFsIHRva2VucyB0aGF0IG5lZWQgdGhlIHZhbHVlXG4gICAgICAgICAgICAgICAgLy8gZHVyaW5nIGFuYWx5c2lzLlxuICAgICAgICAgICAgICAgIGNvbnN0IHByb3ZpZGUgPSBzaW1wbGlmeShleHByZXNzaW9uLnByb3ZpZGUpO1xuICAgICAgICAgICAgICAgIGlmIChwcm92aWRlID09PSBzZWxmLlJPVVRFUyB8fCBwcm92aWRlID09IHNlbGYuQU5BTFlaRV9GT1JfRU5UUllfQ09NUE9ORU5UUykge1xuICAgICAgICAgICAgICAgICAgcmV0dXJuIHNpbXBsaWZ5KHZhbHVlKTtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgcmV0dXJuIHNpbXBsaWZ5TGF6aWx5KHZhbHVlKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIHJldHVybiBzaW1wbGlmeSh2YWx1ZSk7XG4gICAgICAgICAgfSk7XG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuIElHTk9SRTtcbiAgICAgIH1cblxuICAgICAgcmV0dXJuIHNpbXBsaWZ5KHZhbHVlKTtcbiAgICB9XG5cbiAgICBsZXQgcmVzdWx0OiBhbnk7XG4gICAgdHJ5IHtcbiAgICAgIHJlc3VsdCA9IHNpbXBsaWZ5SW5Db250ZXh0KGNvbnRleHQsIHZhbHVlLCAwLCBsYXp5ID8gMSA6IDApO1xuICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgIGlmICh0aGlzLmVycm9yUmVjb3JkZXIpIHtcbiAgICAgICAgdGhpcy5yZXBvcnRFcnJvcihlLCBjb250ZXh0KTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHRocm93IGZvcm1hdE1ldGFkYXRhRXJyb3IoZSwgY29udGV4dCk7XG4gICAgICB9XG4gICAgfVxuICAgIGlmIChzaG91bGRJZ25vcmUocmVzdWx0KSkge1xuICAgICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgICB9XG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIHByaXZhdGUgZ2V0VHlwZU1ldGFkYXRhKHR5cGU6IFN0YXRpY1N5bWJvbCk6IHtba2V5OiBzdHJpbmddOiBhbnl9IHtcbiAgICBjb25zdCByZXNvbHZlZFN5bWJvbCA9IHRoaXMuc3ltYm9sUmVzb2x2ZXIucmVzb2x2ZVN5bWJvbCh0eXBlKTtcbiAgICByZXR1cm4gcmVzb2x2ZWRTeW1ib2wgJiYgcmVzb2x2ZWRTeW1ib2wubWV0YWRhdGEgPyByZXNvbHZlZFN5bWJvbC5tZXRhZGF0YSA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAge19fc3ltYm9saWM6ICdjbGFzcyd9O1xuICB9XG5cbiAgcHJpdmF0ZSByZXBvcnRFcnJvcihlcnJvcjogRXJyb3IsIGNvbnRleHQ6IFN0YXRpY1N5bWJvbCwgcGF0aD86IHN0cmluZykge1xuICAgIGlmICh0aGlzLmVycm9yUmVjb3JkZXIpIHtcbiAgICAgIHRoaXMuZXJyb3JSZWNvcmRlcihcbiAgICAgICAgICBmb3JtYXRNZXRhZGF0YUVycm9yKGVycm9yLCBjb250ZXh0KSwgKGNvbnRleHQgJiYgY29udGV4dC5maWxlUGF0aCkgfHwgcGF0aCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRocm93IGVycm9yO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgZXJyb3IoXG4gICAgICB7bWVzc2FnZSwgc3VtbWFyeSwgYWR2aXNlLCBwb3NpdGlvbiwgY29udGV4dCwgdmFsdWUsIHN5bWJvbCwgY2hhaW59OiB7XG4gICAgICAgIG1lc3NhZ2U6IHN0cmluZyxcbiAgICAgICAgc3VtbWFyeT86IHN0cmluZyxcbiAgICAgICAgYWR2aXNlPzogc3RyaW5nLFxuICAgICAgICBwb3NpdGlvbj86IFBvc2l0aW9uLFxuICAgICAgICBjb250ZXh0PzogYW55LFxuICAgICAgICB2YWx1ZT86IGFueSxcbiAgICAgICAgc3ltYm9sPzogU3RhdGljU3ltYm9sLFxuICAgICAgICBjaGFpbj86IE1ldGFkYXRhTWVzc2FnZUNoYWluXG4gICAgICB9LFxuICAgICAgcmVwb3J0aW5nQ29udGV4dDogU3RhdGljU3ltYm9sKSB7XG4gICAgdGhpcy5yZXBvcnRFcnJvcihcbiAgICAgICAgbWV0YWRhdGFFcnJvcihtZXNzYWdlLCBzdW1tYXJ5LCBhZHZpc2UsIHBvc2l0aW9uLCBzeW1ib2wsIGNvbnRleHQsIGNoYWluKSxcbiAgICAgICAgcmVwb3J0aW5nQ29udGV4dCk7XG4gIH1cbn1cblxuaW50ZXJmYWNlIFBvc2l0aW9uIHtcbiAgZmlsZU5hbWU6IHN0cmluZztcbiAgbGluZTogbnVtYmVyO1xuICBjb2x1bW46IG51bWJlcjtcbn1cblxuaW50ZXJmYWNlIE1ldGFkYXRhTWVzc2FnZUNoYWluIHtcbiAgbWVzc2FnZTogc3RyaW5nO1xuICBzdW1tYXJ5Pzogc3RyaW5nO1xuICBwb3NpdGlvbj86IFBvc2l0aW9uO1xuICBjb250ZXh0PzogYW55O1xuICBzeW1ib2w/OiBTdGF0aWNTeW1ib2w7XG4gIG5leHQ/OiBNZXRhZGF0YU1lc3NhZ2VDaGFpbjtcbn1cblxudHlwZSBNZXRhZGF0YUVycm9yID0gRXJyb3IgJiB7XG4gIHBvc2l0aW9uPzogUG9zaXRpb247XG4gIGFkdmlzZT86IHN0cmluZztcbiAgc3VtbWFyeT86IHN0cmluZztcbiAgY29udGV4dD86IGFueTtcbiAgc3ltYm9sPzogU3RhdGljU3ltYm9sO1xuICBjaGFpbj86IE1ldGFkYXRhTWVzc2FnZUNoYWluO1xufTtcblxuY29uc3QgTUVUQURBVEFfRVJST1IgPSAnbmdNZXRhZGF0YUVycm9yJztcblxuZnVuY3Rpb24gbWV0YWRhdGFFcnJvcihcbiAgICBtZXNzYWdlOiBzdHJpbmcsIHN1bW1hcnk/OiBzdHJpbmcsIGFkdmlzZT86IHN0cmluZywgcG9zaXRpb24/OiBQb3NpdGlvbiwgc3ltYm9sPzogU3RhdGljU3ltYm9sLFxuICAgIGNvbnRleHQ/OiBhbnksIGNoYWluPzogTWV0YWRhdGFNZXNzYWdlQ2hhaW4pOiBNZXRhZGF0YUVycm9yIHtcbiAgY29uc3QgZXJyb3IgPSBzeW50YXhFcnJvcihtZXNzYWdlKSBhcyBNZXRhZGF0YUVycm9yO1xuICAoZXJyb3IgYXMgYW55KVtNRVRBREFUQV9FUlJPUl0gPSB0cnVlO1xuICBpZiAoYWR2aXNlKSBlcnJvci5hZHZpc2UgPSBhZHZpc2U7XG4gIGlmIChwb3NpdGlvbikgZXJyb3IucG9zaXRpb24gPSBwb3NpdGlvbjtcbiAgaWYgKHN1bW1hcnkpIGVycm9yLnN1bW1hcnkgPSBzdW1tYXJ5O1xuICBpZiAoY29udGV4dCkgZXJyb3IuY29udGV4dCA9IGNvbnRleHQ7XG4gIGlmIChjaGFpbikgZXJyb3IuY2hhaW4gPSBjaGFpbjtcbiAgaWYgKHN5bWJvbCkgZXJyb3Iuc3ltYm9sID0gc3ltYm9sO1xuICByZXR1cm4gZXJyb3I7XG59XG5cbmZ1bmN0aW9uIGlzTWV0YWRhdGFFcnJvcihlcnJvcjogRXJyb3IpOiBlcnJvciBpcyBNZXRhZGF0YUVycm9yIHtcbiAgcmV0dXJuICEhKGVycm9yIGFzIGFueSlbTUVUQURBVEFfRVJST1JdO1xufVxuXG5jb25zdCBSRUZFUkVOQ0VfVE9fTk9ORVhQT1JURURfQ0xBU1MgPSAnUmVmZXJlbmNlIHRvIG5vbi1leHBvcnRlZCBjbGFzcyc7XG5jb25zdCBWQVJJQUJMRV9OT1RfSU5JVElBTElaRUQgPSAnVmFyaWFibGUgbm90IGluaXRpYWxpemVkJztcbmNvbnN0IERFU1RSVUNUVVJFX05PVF9TVVBQT1JURUQgPSAnRGVzdHJ1Y3R1cmluZyBub3Qgc3VwcG9ydGVkJztcbmNvbnN0IENPVUxEX05PVF9SRVNPTFZFX1RZUEUgPSAnQ291bGQgbm90IHJlc29sdmUgdHlwZSc7XG5jb25zdCBGVU5DVElPTl9DQUxMX05PVF9TVVBQT1JURUQgPSAnRnVuY3Rpb24gY2FsbCBub3Qgc3VwcG9ydGVkJztcbmNvbnN0IFJFRkVSRU5DRV9UT19MT0NBTF9TWU1CT0wgPSAnUmVmZXJlbmNlIHRvIGEgbG9jYWwgc3ltYm9sJztcbmNvbnN0IExBTUJEQV9OT1RfU1VQUE9SVEVEID0gJ0xhbWJkYSBub3Qgc3VwcG9ydGVkJztcblxuZnVuY3Rpb24gZXhwYW5kZWRNZXNzYWdlKG1lc3NhZ2U6IHN0cmluZywgY29udGV4dDogYW55KTogc3RyaW5nIHtcbiAgc3dpdGNoIChtZXNzYWdlKSB7XG4gICAgY2FzZSBSRUZFUkVOQ0VfVE9fTk9ORVhQT1JURURfQ0xBU1M6XG4gICAgICBpZiAoY29udGV4dCAmJiBjb250ZXh0LmNsYXNzTmFtZSkge1xuICAgICAgICByZXR1cm4gYFJlZmVyZW5jZXMgdG8gYSBub24tZXhwb3J0ZWQgY2xhc3MgYXJlIG5vdCBzdXBwb3J0ZWQgaW4gZGVjb3JhdG9ycyBidXQgJHtjb250ZXh0LmNsYXNzTmFtZX0gd2FzIHJlZmVyZW5jZWQuYDtcbiAgICAgIH1cbiAgICAgIGJyZWFrO1xuICAgIGNhc2UgVkFSSUFCTEVfTk9UX0lOSVRJQUxJWkVEOlxuICAgICAgcmV0dXJuICdPbmx5IGluaXRpYWxpemVkIHZhcmlhYmxlcyBhbmQgY29uc3RhbnRzIGNhbiBiZSByZWZlcmVuY2VkIGluIGRlY29yYXRvcnMgYmVjYXVzZSB0aGUgdmFsdWUgb2YgdGhpcyB2YXJpYWJsZSBpcyBuZWVkZWQgYnkgdGhlIHRlbXBsYXRlIGNvbXBpbGVyJztcbiAgICBjYXNlIERFU1RSVUNUVVJFX05PVF9TVVBQT1JURUQ6XG4gICAgICByZXR1cm4gJ1JlZmVyZW5jaW5nIGFuIGV4cG9ydGVkIGRlc3RydWN0dXJlZCB2YXJpYWJsZSBvciBjb25zdGFudCBpcyBub3Qgc3VwcG9ydGVkIGluIGRlY29yYXRvcnMgYW5kIHRoaXMgdmFsdWUgaXMgbmVlZGVkIGJ5IHRoZSB0ZW1wbGF0ZSBjb21waWxlcic7XG4gICAgY2FzZSBDT1VMRF9OT1RfUkVTT0xWRV9UWVBFOlxuICAgICAgaWYgKGNvbnRleHQgJiYgY29udGV4dC50eXBlTmFtZSkge1xuICAgICAgICByZXR1cm4gYENvdWxkIG5vdCByZXNvbHZlIHR5cGUgJHtjb250ZXh0LnR5cGVOYW1lfWA7XG4gICAgICB9XG4gICAgICBicmVhaztcbiAgICBjYXNlIEZVTkNUSU9OX0NBTExfTk9UX1NVUFBPUlRFRDpcbiAgICAgIGlmIChjb250ZXh0ICYmIGNvbnRleHQubmFtZSkge1xuICAgICAgICByZXR1cm4gYEZ1bmN0aW9uIGNhbGxzIGFyZSBub3Qgc3VwcG9ydGVkIGluIGRlY29yYXRvcnMgYnV0ICcke2NvbnRleHQubmFtZX0nIHdhcyBjYWxsZWRgO1xuICAgICAgfVxuICAgICAgcmV0dXJuICdGdW5jdGlvbiBjYWxscyBhcmUgbm90IHN1cHBvcnRlZCBpbiBkZWNvcmF0b3JzJztcbiAgICBjYXNlIFJFRkVSRU5DRV9UT19MT0NBTF9TWU1CT0w6XG4gICAgICBpZiAoY29udGV4dCAmJiBjb250ZXh0Lm5hbWUpIHtcbiAgICAgICAgcmV0dXJuIGBSZWZlcmVuY2UgdG8gYSBsb2NhbCAobm9uLWV4cG9ydGVkKSBzeW1ib2xzIGFyZSBub3Qgc3VwcG9ydGVkIGluIGRlY29yYXRvcnMgYnV0ICcke2NvbnRleHQubmFtZX0nIHdhcyByZWZlcmVuY2VkYDtcbiAgICAgIH1cbiAgICAgIGJyZWFrO1xuICAgIGNhc2UgTEFNQkRBX05PVF9TVVBQT1JURUQ6XG4gICAgICByZXR1cm4gYEZ1bmN0aW9uIGV4cHJlc3Npb25zIGFyZSBub3Qgc3VwcG9ydGVkIGluIGRlY29yYXRvcnNgO1xuICB9XG4gIHJldHVybiBtZXNzYWdlO1xufVxuXG5mdW5jdGlvbiBtZXNzYWdlQWR2aXNlKG1lc3NhZ2U6IHN0cmluZywgY29udGV4dDogYW55KTogc3RyaW5nfHVuZGVmaW5lZCB7XG4gIHN3aXRjaCAobWVzc2FnZSkge1xuICAgIGNhc2UgUkVGRVJFTkNFX1RPX05PTkVYUE9SVEVEX0NMQVNTOlxuICAgICAgaWYgKGNvbnRleHQgJiYgY29udGV4dC5jbGFzc05hbWUpIHtcbiAgICAgICAgcmV0dXJuIGBDb25zaWRlciBleHBvcnRpbmcgJyR7Y29udGV4dC5jbGFzc05hbWV9J2A7XG4gICAgICB9XG4gICAgICBicmVhaztcbiAgICBjYXNlIERFU1RSVUNUVVJFX05PVF9TVVBQT1JURUQ6XG4gICAgICByZXR1cm4gJ0NvbnNpZGVyIHNpbXBsaWZ5aW5nIHRvIGF2b2lkIGRlc3RydWN0dXJpbmcnO1xuICAgIGNhc2UgUkVGRVJFTkNFX1RPX0xPQ0FMX1NZTUJPTDpcbiAgICAgIGlmIChjb250ZXh0ICYmIGNvbnRleHQubmFtZSkge1xuICAgICAgICByZXR1cm4gYENvbnNpZGVyIGV4cG9ydGluZyAnJHtjb250ZXh0Lm5hbWV9J2A7XG4gICAgICB9XG4gICAgICBicmVhaztcbiAgICBjYXNlIExBTUJEQV9OT1RfU1VQUE9SVEVEOlxuICAgICAgcmV0dXJuIGBDb25zaWRlciBjaGFuZ2luZyB0aGUgZnVuY3Rpb24gZXhwcmVzc2lvbiBpbnRvIGFuIGV4cG9ydGVkIGZ1bmN0aW9uYDtcbiAgfVxuICByZXR1cm4gdW5kZWZpbmVkO1xufVxuXG5mdW5jdGlvbiBlcnJvclN1bW1hcnkoZXJyb3I6IE1ldGFkYXRhRXJyb3IpOiBzdHJpbmcge1xuICBpZiAoZXJyb3Iuc3VtbWFyeSkge1xuICAgIHJldHVybiBlcnJvci5zdW1tYXJ5O1xuICB9XG4gIHN3aXRjaCAoZXJyb3IubWVzc2FnZSkge1xuICAgIGNhc2UgUkVGRVJFTkNFX1RPX05PTkVYUE9SVEVEX0NMQVNTOlxuICAgICAgaWYgKGVycm9yLmNvbnRleHQgJiYgZXJyb3IuY29udGV4dC5jbGFzc05hbWUpIHtcbiAgICAgICAgcmV0dXJuIGByZWZlcmVuY2VzIG5vbi1leHBvcnRlZCBjbGFzcyAke2Vycm9yLmNvbnRleHQuY2xhc3NOYW1lfWA7XG4gICAgICB9XG4gICAgICBicmVhaztcbiAgICBjYXNlIFZBUklBQkxFX05PVF9JTklUSUFMSVpFRDpcbiAgICAgIHJldHVybiAnaXMgbm90IGluaXRpYWxpemVkJztcbiAgICBjYXNlIERFU1RSVUNUVVJFX05PVF9TVVBQT1JURUQ6XG4gICAgICByZXR1cm4gJ2lzIGEgZGVzdHJ1Y3R1cmVkIHZhcmlhYmxlJztcbiAgICBjYXNlIENPVUxEX05PVF9SRVNPTFZFX1RZUEU6XG4gICAgICByZXR1cm4gJ2NvdWxkIG5vdCBiZSByZXNvbHZlZCc7XG4gICAgY2FzZSBGVU5DVElPTl9DQUxMX05PVF9TVVBQT1JURUQ6XG4gICAgICBpZiAoZXJyb3IuY29udGV4dCAmJiBlcnJvci5jb250ZXh0Lm5hbWUpIHtcbiAgICAgICAgcmV0dXJuIGBjYWxscyAnJHtlcnJvci5jb250ZXh0Lm5hbWV9J2A7XG4gICAgICB9XG4gICAgICByZXR1cm4gYGNhbGxzIGEgZnVuY3Rpb25gO1xuICAgIGNhc2UgUkVGRVJFTkNFX1RPX0xPQ0FMX1NZTUJPTDpcbiAgICAgIGlmIChlcnJvci5jb250ZXh0ICYmIGVycm9yLmNvbnRleHQubmFtZSkge1xuICAgICAgICByZXR1cm4gYHJlZmVyZW5jZXMgbG9jYWwgdmFyaWFibGUgJHtlcnJvci5jb250ZXh0Lm5hbWV9YDtcbiAgICAgIH1cbiAgICAgIHJldHVybiBgcmVmZXJlbmNlcyBhIGxvY2FsIHZhcmlhYmxlYDtcbiAgfVxuICByZXR1cm4gJ2NvbnRhaW5zIHRoZSBlcnJvcic7XG59XG5cbmZ1bmN0aW9uIG1hcFN0cmluZ01hcChpbnB1dDoge1trZXk6IHN0cmluZ106IGFueX0sIHRyYW5zZm9ybTogKHZhbHVlOiBhbnksIGtleTogc3RyaW5nKSA9PiBhbnkpOlxuICAgIHtba2V5OiBzdHJpbmddOiBhbnl9IHtcbiAgaWYgKCFpbnB1dCkgcmV0dXJuIHt9O1xuICBjb25zdCByZXN1bHQ6IHtba2V5OiBzdHJpbmddOiBhbnl9ID0ge307XG4gIE9iamVjdC5rZXlzKGlucHV0KS5mb3JFYWNoKChrZXkpID0+IHtcbiAgICBjb25zdCB2YWx1ZSA9IHRyYW5zZm9ybShpbnB1dFtrZXldLCBrZXkpO1xuICAgIGlmICghc2hvdWxkSWdub3JlKHZhbHVlKSkge1xuICAgICAgaWYgKEhJRERFTl9LRVkudGVzdChrZXkpKSB7XG4gICAgICAgIE9iamVjdC5kZWZpbmVQcm9wZXJ0eShyZXN1bHQsIGtleSwge2VudW1lcmFibGU6IGZhbHNlLCBjb25maWd1cmFibGU6IHRydWUsIHZhbHVlOiB2YWx1ZX0pO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgcmVzdWx0W2tleV0gPSB2YWx1ZTtcbiAgICAgIH1cbiAgICB9XG4gIH0pO1xuICByZXR1cm4gcmVzdWx0O1xufVxuXG5mdW5jdGlvbiBpc1ByaW1pdGl2ZShvOiBhbnkpOiBib29sZWFuIHtcbiAgcmV0dXJuIG8gPT09IG51bGwgfHwgKHR5cGVvZiBvICE9PSAnZnVuY3Rpb24nICYmIHR5cGVvZiBvICE9PSAnb2JqZWN0Jyk7XG59XG5cbmludGVyZmFjZSBCaW5kaW5nU2NvcGVCdWlsZGVyIHtcbiAgZGVmaW5lKG5hbWU6IHN0cmluZywgdmFsdWU6IGFueSk6IEJpbmRpbmdTY29wZUJ1aWxkZXI7XG4gIGRvbmUoKTogQmluZGluZ1Njb3BlO1xufVxuXG5hYnN0cmFjdCBjbGFzcyBCaW5kaW5nU2NvcGUge1xuICBhYnN0cmFjdCByZXNvbHZlKG5hbWU6IHN0cmluZyk6IGFueTtcbiAgcHVibGljIHN0YXRpYyBtaXNzaW5nID0ge307XG4gIHB1YmxpYyBzdGF0aWMgZW1wdHk6IEJpbmRpbmdTY29wZSA9IHtyZXNvbHZlOiBuYW1lID0+IEJpbmRpbmdTY29wZS5taXNzaW5nfTtcblxuICBwdWJsaWMgc3RhdGljIGJ1aWxkKCk6IEJpbmRpbmdTY29wZUJ1aWxkZXIge1xuICAgIGNvbnN0IGN1cnJlbnQgPSBuZXcgTWFwPHN0cmluZywgYW55PigpO1xuICAgIHJldHVybiB7XG4gICAgICBkZWZpbmU6IGZ1bmN0aW9uKG5hbWUsIHZhbHVlKSB7XG4gICAgICAgIGN1cnJlbnQuc2V0KG5hbWUsIHZhbHVlKTtcbiAgICAgICAgcmV0dXJuIHRoaXM7XG4gICAgICB9LFxuICAgICAgZG9uZTogZnVuY3Rpb24oKSB7XG4gICAgICAgIHJldHVybiBjdXJyZW50LnNpemUgPiAwID8gbmV3IFBvcHVsYXRlZFNjb3BlKGN1cnJlbnQpIDogQmluZGluZ1Njb3BlLmVtcHR5O1xuICAgICAgfVxuICAgIH07XG4gIH1cbn1cblxuY2xhc3MgUG9wdWxhdGVkU2NvcGUgZXh0ZW5kcyBCaW5kaW5nU2NvcGUge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGJpbmRpbmdzOiBNYXA8c3RyaW5nLCBhbnk+KSB7IHN1cGVyKCk7IH1cblxuICByZXNvbHZlKG5hbWU6IHN0cmluZyk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMuYmluZGluZ3MuaGFzKG5hbWUpID8gdGhpcy5iaW5kaW5ncy5nZXQobmFtZSkgOiBCaW5kaW5nU2NvcGUubWlzc2luZztcbiAgfVxufVxuXG5mdW5jdGlvbiBmb3JtYXRNZXRhZGF0YU1lc3NhZ2VDaGFpbihcbiAgICBjaGFpbjogTWV0YWRhdGFNZXNzYWdlQ2hhaW4sIGFkdmlzZTogc3RyaW5nIHwgdW5kZWZpbmVkKTogRm9ybWF0dGVkTWVzc2FnZUNoYWluIHtcbiAgY29uc3QgZXhwYW5kZWQgPSBleHBhbmRlZE1lc3NhZ2UoY2hhaW4ubWVzc2FnZSwgY2hhaW4uY29udGV4dCk7XG4gIGNvbnN0IG5lc3RpbmcgPSBjaGFpbi5zeW1ib2wgPyBgIGluICcke2NoYWluLnN5bWJvbC5uYW1lfSdgIDogJyc7XG4gIGNvbnN0IG1lc3NhZ2UgPSBgJHtleHBhbmRlZH0ke25lc3Rpbmd9YDtcbiAgY29uc3QgcG9zaXRpb24gPSBjaGFpbi5wb3NpdGlvbjtcbiAgY29uc3QgbmV4dDogRm9ybWF0dGVkTWVzc2FnZUNoYWlufHVuZGVmaW5lZCA9IGNoYWluLm5leHQgP1xuICAgICAgZm9ybWF0TWV0YWRhdGFNZXNzYWdlQ2hhaW4oY2hhaW4ubmV4dCwgYWR2aXNlKSA6XG4gICAgICBhZHZpc2UgPyB7bWVzc2FnZTogYWR2aXNlfSA6IHVuZGVmaW5lZDtcbiAgcmV0dXJuIHttZXNzYWdlLCBwb3NpdGlvbiwgbmV4dDogbmV4dCA/IFtuZXh0XSA6IHVuZGVmaW5lZH07XG59XG5cbmZ1bmN0aW9uIGZvcm1hdE1ldGFkYXRhRXJyb3IoZTogRXJyb3IsIGNvbnRleHQ6IFN0YXRpY1N5bWJvbCk6IEVycm9yIHtcbiAgaWYgKGlzTWV0YWRhdGFFcnJvcihlKSkge1xuICAgIC8vIFByb2R1Y2UgYSBmb3JtYXR0ZWQgdmVyc2lvbiBvZiB0aGUgYW5kIGxlYXZpbmcgZW5vdWdoIGluZm9ybWF0aW9uIGluIHRoZSBvcmlnaW5hbCBlcnJvclxuICAgIC8vIHRvIHJlY292ZXIgdGhlIGZvcm1hdHRpbmcgaW5mb3JtYXRpb24gdG8gZXZlbnR1YWxseSBwcm9kdWNlIGEgZGlhZ25vc3RpYyBlcnJvciBtZXNzYWdlLlxuICAgIGNvbnN0IHBvc2l0aW9uID0gZS5wb3NpdGlvbjtcbiAgICBjb25zdCBjaGFpbjogTWV0YWRhdGFNZXNzYWdlQ2hhaW4gPSB7XG4gICAgICBtZXNzYWdlOiBgRXJyb3IgZHVyaW5nIHRlbXBsYXRlIGNvbXBpbGUgb2YgJyR7Y29udGV4dC5uYW1lfSdgLFxuICAgICAgcG9zaXRpb246IHBvc2l0aW9uLFxuICAgICAgbmV4dDoge21lc3NhZ2U6IGUubWVzc2FnZSwgbmV4dDogZS5jaGFpbiwgY29udGV4dDogZS5jb250ZXh0LCBzeW1ib2w6IGUuc3ltYm9sfVxuICAgIH07XG4gICAgY29uc3QgYWR2aXNlID0gZS5hZHZpc2UgfHwgbWVzc2FnZUFkdmlzZShlLm1lc3NhZ2UsIGUuY29udGV4dCk7XG4gICAgcmV0dXJuIGZvcm1hdHRlZEVycm9yKGZvcm1hdE1ldGFkYXRhTWVzc2FnZUNoYWluKGNoYWluLCBhZHZpc2UpKTtcbiAgfVxuICByZXR1cm4gZTtcbn1cbiJdfQ==