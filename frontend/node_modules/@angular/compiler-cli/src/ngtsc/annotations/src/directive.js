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
        define("@angular/compiler-cli/src/ngtsc/annotations/src/directive", ["require", "exports", "tslib", "@angular/compiler", "typescript", "@angular/compiler-cli/src/ngtsc/diagnostics", "@angular/compiler-cli/src/ngtsc/imports", "@angular/compiler-cli/src/ngtsc/metadata/src/util", "@angular/compiler-cli/src/ngtsc/partial_evaluator", "@angular/compiler-cli/src/ngtsc/reflection", "@angular/compiler-cli/src/ngtsc/transform", "@angular/compiler-cli/src/ngtsc/annotations/src/diagnostics", "@angular/compiler-cli/src/ngtsc/annotations/src/factory", "@angular/compiler-cli/src/ngtsc/annotations/src/metadata", "@angular/compiler-cli/src/ngtsc/annotations/src/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.extractHostBindings = exports.queriesFromFields = exports.parseFieldArrayValue = exports.extractQueriesFromDecorator = exports.extractQueryMetadata = exports.extractDirectiveMetadata = exports.DirectiveDecoratorHandler = void 0;
    var tslib_1 = require("tslib");
    var compiler_1 = require("@angular/compiler");
    var ts = require("typescript");
    var diagnostics_1 = require("@angular/compiler-cli/src/ngtsc/diagnostics");
    var imports_1 = require("@angular/compiler-cli/src/ngtsc/imports");
    var util_1 = require("@angular/compiler-cli/src/ngtsc/metadata/src/util");
    var partial_evaluator_1 = require("@angular/compiler-cli/src/ngtsc/partial_evaluator");
    var reflection_1 = require("@angular/compiler-cli/src/ngtsc/reflection");
    var transform_1 = require("@angular/compiler-cli/src/ngtsc/transform");
    var diagnostics_2 = require("@angular/compiler-cli/src/ngtsc/annotations/src/diagnostics");
    var factory_1 = require("@angular/compiler-cli/src/ngtsc/annotations/src/factory");
    var metadata_1 = require("@angular/compiler-cli/src/ngtsc/annotations/src/metadata");
    var util_2 = require("@angular/compiler-cli/src/ngtsc/annotations/src/util");
    var EMPTY_OBJECT = {};
    var FIELD_DECORATORS = [
        'Input', 'Output', 'ViewChild', 'ViewChildren', 'ContentChild', 'ContentChildren', 'HostBinding',
        'HostListener'
    ];
    var LIFECYCLE_HOOKS = new Set([
        'ngOnChanges', 'ngOnInit', 'ngOnDestroy', 'ngDoCheck', 'ngAfterViewInit', 'ngAfterViewChecked',
        'ngAfterContentInit', 'ngAfterContentChecked'
    ]);
    var DirectiveDecoratorHandler = /** @class */ (function () {
        function DirectiveDecoratorHandler(reflector, evaluator, metaRegistry, scopeRegistry, metaReader, defaultImportRecorder, injectableRegistry, isCore, annotateForClosureCompiler, compileUndecoratedClassesWithAngularFeatures) {
            this.reflector = reflector;
            this.evaluator = evaluator;
            this.metaRegistry = metaRegistry;
            this.scopeRegistry = scopeRegistry;
            this.metaReader = metaReader;
            this.defaultImportRecorder = defaultImportRecorder;
            this.injectableRegistry = injectableRegistry;
            this.isCore = isCore;
            this.annotateForClosureCompiler = annotateForClosureCompiler;
            this.compileUndecoratedClassesWithAngularFeatures = compileUndecoratedClassesWithAngularFeatures;
            this.precedence = transform_1.HandlerPrecedence.PRIMARY;
            this.name = DirectiveDecoratorHandler.name;
        }
        DirectiveDecoratorHandler.prototype.detect = function (node, decorators) {
            // If a class is undecorated but uses Angular features, we detect it as an
            // abstract directive. This is an unsupported pattern as of v10, but we want
            // to still detect these patterns so that we can report diagnostics, or compile
            // them for backwards compatibility in ngcc.
            if (!decorators) {
                var angularField = this.findClassFieldWithAngularFeatures(node);
                return angularField ? { trigger: angularField.node, decorator: null, metadata: null } :
                    undefined;
            }
            else {
                var decorator = util_2.findAngularDecorator(decorators, 'Directive', this.isCore);
                return decorator ? { trigger: decorator.node, decorator: decorator, metadata: decorator } : undefined;
            }
        };
        DirectiveDecoratorHandler.prototype.analyze = function (node, decorator, flags) {
            if (flags === void 0) { flags = transform_1.HandlerFlags.NONE; }
            // Skip processing of the class declaration if compilation of undecorated classes
            // with Angular features is disabled. Previously in ngtsc, such classes have always
            // been processed, but we want to enforce a consistent decorator mental model.
            // See: https://v9.angular.io/guide/migration-undecorated-classes.
            if (this.compileUndecoratedClassesWithAngularFeatures === false && decorator === null) {
                return { diagnostics: [diagnostics_2.getUndecoratedClassWithAngularFeaturesDiagnostic(node)] };
            }
            var directiveResult = extractDirectiveMetadata(node, decorator, this.reflector, this.evaluator, this.defaultImportRecorder, this.isCore, flags, this.annotateForClosureCompiler);
            var analysis = directiveResult && directiveResult.metadata;
            if (analysis === undefined) {
                return {};
            }
            var providersRequiringFactory = null;
            if (directiveResult !== undefined && directiveResult.decorator.has('providers')) {
                providersRequiringFactory = util_2.resolveProvidersRequiringFactory(directiveResult.decorator.get('providers'), this.reflector, this.evaluator);
            }
            return {
                analysis: {
                    meta: analysis,
                    metadataStmt: metadata_1.generateSetClassMetadataCall(node, this.reflector, this.defaultImportRecorder, this.isCore, this.annotateForClosureCompiler),
                    baseClass: util_2.readBaseClass(node, this.reflector, this.evaluator),
                    guards: util_1.extractDirectiveGuards(node, this.reflector),
                    providersRequiringFactory: providersRequiringFactory
                }
            };
        };
        DirectiveDecoratorHandler.prototype.register = function (node, analysis) {
            // Register this directive's information with the `MetadataRegistry`. This ensures that
            // the information about the directive is available during the compile() phase.
            var ref = new imports_1.Reference(node);
            this.metaRegistry.registerDirectiveMetadata(tslib_1.__assign({ ref: ref, name: node.name.text, selector: analysis.meta.selector, exportAs: analysis.meta.exportAs, inputs: analysis.meta.inputs, outputs: analysis.meta.outputs, queries: analysis.meta.queries.map(function (query) { return query.propertyName; }), isComponent: false, baseClass: analysis.baseClass }, analysis.guards));
            this.injectableRegistry.registerInjectable(node);
        };
        DirectiveDecoratorHandler.prototype.resolve = function (node, analysis) {
            var diagnostics = [];
            if (analysis.providersRequiringFactory !== null &&
                analysis.meta.providers instanceof compiler_1.WrappedNodeExpr) {
                var providerDiagnostics = diagnostics_2.getProviderDiagnostics(analysis.providersRequiringFactory, analysis.meta.providers.node, this.injectableRegistry);
                diagnostics.push.apply(diagnostics, tslib_1.__spread(providerDiagnostics));
            }
            var directiveDiagnostics = diagnostics_2.getDirectiveDiagnostics(node, this.metaReader, this.evaluator, this.reflector, this.scopeRegistry, 'Directive');
            if (directiveDiagnostics !== null) {
                diagnostics.push.apply(diagnostics, tslib_1.__spread(directiveDiagnostics));
            }
            return { diagnostics: diagnostics.length > 0 ? diagnostics : undefined };
        };
        DirectiveDecoratorHandler.prototype.compile = function (node, analysis, resolution, pool) {
            var meta = analysis.meta;
            var res = compiler_1.compileDirectiveFromMetadata(meta, pool, compiler_1.makeBindingParser());
            var factoryRes = factory_1.compileNgFactoryDefField(tslib_1.__assign(tslib_1.__assign({}, meta), { injectFn: compiler_1.Identifiers.directiveInject, target: compiler_1.R3FactoryTarget.Directive }));
            if (analysis.metadataStmt !== null) {
                factoryRes.statements.push(analysis.metadataStmt);
            }
            return [
                factoryRes, {
                    name: 'ɵdir',
                    initializer: res.expression,
                    statements: [],
                    type: res.type,
                }
            ];
        };
        /**
         * Checks if a given class uses Angular features and returns the TypeScript node
         * that indicated the usage. Classes are considered using Angular features if they
         * contain class members that are either decorated with a known Angular decorator,
         * or if they correspond to a known Angular lifecycle hook.
         */
        DirectiveDecoratorHandler.prototype.findClassFieldWithAngularFeatures = function (node) {
            var _this = this;
            return this.reflector.getMembersOfClass(node).find(function (member) {
                if (!member.isStatic && member.kind === reflection_1.ClassMemberKind.Method &&
                    LIFECYCLE_HOOKS.has(member.name)) {
                    return true;
                }
                if (member.decorators) {
                    return member.decorators.some(function (decorator) { return FIELD_DECORATORS.some(function (decoratorName) { return util_2.isAngularDecorator(decorator, decoratorName, _this.isCore); }); });
                }
                return false;
            });
        };
        return DirectiveDecoratorHandler;
    }());
    exports.DirectiveDecoratorHandler = DirectiveDecoratorHandler;
    /**
     * Helper function to extract metadata from a `Directive` or `Component`. `Directive`s without a
     * selector are allowed to be used for abstract base classes. These abstract directives should not
     * appear in the declarations of an `NgModule` and additional verification is done when processing
     * the module.
     */
    function extractDirectiveMetadata(clazz, decorator, reflector, evaluator, defaultImportRecorder, isCore, flags, annotateForClosureCompiler, defaultSelector) {
        if (defaultSelector === void 0) { defaultSelector = null; }
        var directive;
        if (decorator === null || decorator.args === null || decorator.args.length === 0) {
            directive = new Map();
        }
        else if (decorator.args.length !== 1) {
            throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DECORATOR_ARITY_WRONG, reflection_1.Decorator.nodeForError(decorator), "Incorrect number of arguments to @" + decorator.name + " decorator");
        }
        else {
            var meta = util_2.unwrapExpression(decorator.args[0]);
            if (!ts.isObjectLiteralExpression(meta)) {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DECORATOR_ARG_NOT_LITERAL, meta, "@" + decorator.name + " argument must be an object literal");
            }
            directive = reflection_1.reflectObjectLiteral(meta);
        }
        if (directive.has('jit')) {
            // The only allowed value is true, so there's no need to expand further.
            return undefined;
        }
        var members = reflector.getMembersOfClass(clazz);
        // Precompute a list of ts.ClassElements that have decorators. This includes things like @Input,
        // @Output, @HostBinding, etc.
        var decoratedElements = members.filter(function (member) { return !member.isStatic && member.decorators !== null; });
        var coreModule = isCore ? undefined : '@angular/core';
        // Construct the map of inputs both from the @Directive/@Component
        // decorator, and the decorated
        // fields.
        var inputsFromMeta = parseFieldToPropertyMapping(directive, 'inputs', evaluator);
        var inputsFromFields = parseDecoratedFields(reflection_1.filterToMembersWithDecorator(decoratedElements, 'Input', coreModule), evaluator, resolveInput);
        // And outputs.
        var outputsFromMeta = parseFieldToPropertyMapping(directive, 'outputs', evaluator);
        var outputsFromFields = parseDecoratedFields(reflection_1.filterToMembersWithDecorator(decoratedElements, 'Output', coreModule), evaluator, resolveOutput);
        // Construct the list of queries.
        var contentChildFromFields = queriesFromFields(reflection_1.filterToMembersWithDecorator(decoratedElements, 'ContentChild', coreModule), reflector, evaluator);
        var contentChildrenFromFields = queriesFromFields(reflection_1.filterToMembersWithDecorator(decoratedElements, 'ContentChildren', coreModule), reflector, evaluator);
        var queries = tslib_1.__spread(contentChildFromFields, contentChildrenFromFields);
        // Construct the list of view queries.
        var viewChildFromFields = queriesFromFields(reflection_1.filterToMembersWithDecorator(decoratedElements, 'ViewChild', coreModule), reflector, evaluator);
        var viewChildrenFromFields = queriesFromFields(reflection_1.filterToMembersWithDecorator(decoratedElements, 'ViewChildren', coreModule), reflector, evaluator);
        var viewQueries = tslib_1.__spread(viewChildFromFields, viewChildrenFromFields);
        if (directive.has('queries')) {
            var queriesFromDecorator = extractQueriesFromDecorator(directive.get('queries'), reflector, evaluator, isCore);
            queries.push.apply(queries, tslib_1.__spread(queriesFromDecorator.content));
            viewQueries.push.apply(viewQueries, tslib_1.__spread(queriesFromDecorator.view));
        }
        // Parse the selector.
        var selector = defaultSelector;
        if (directive.has('selector')) {
            var expr = directive.get('selector');
            var resolved = evaluator.evaluate(expr);
            if (typeof resolved !== 'string') {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, expr, "selector must be a string");
            }
            // use default selector in case selector is an empty string
            selector = resolved === '' ? defaultSelector : resolved;
            if (!selector) {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DIRECTIVE_MISSING_SELECTOR, expr, "Directive " + clazz.name.text + " has no selector, please add it!");
            }
        }
        var host = extractHostBindings(decoratedElements, evaluator, coreModule, directive);
        var providers = directive.has('providers') ?
            new compiler_1.WrappedNodeExpr(annotateForClosureCompiler ?
                util_2.wrapFunctionExpressionsInParens(directive.get('providers')) :
                directive.get('providers')) :
            null;
        // Determine if `ngOnChanges` is a lifecycle hook defined on the component.
        var usesOnChanges = members.some(function (member) { return !member.isStatic && member.kind === reflection_1.ClassMemberKind.Method &&
            member.name === 'ngOnChanges'; });
        // Parse exportAs.
        var exportAs = null;
        if (directive.has('exportAs')) {
            var expr = directive.get('exportAs');
            var resolved = evaluator.evaluate(expr);
            if (typeof resolved !== 'string') {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, expr, "exportAs must be a string");
            }
            exportAs = resolved.split(',').map(function (part) { return part.trim(); });
        }
        var rawCtorDeps = util_2.getConstructorDependencies(clazz, reflector, defaultImportRecorder, isCore);
        var ctorDeps;
        // Non-abstract directives (those with a selector) require valid constructor dependencies, whereas
        // abstract directives are allowed to have invalid dependencies, given that a subclass may call
        // the constructor explicitly.
        if (selector !== null) {
            ctorDeps = util_2.validateConstructorDependencies(clazz, rawCtorDeps);
        }
        else {
            ctorDeps = util_2.unwrapConstructorDependencies(rawCtorDeps);
        }
        // Detect if the component inherits from another class
        var usesInheritance = reflector.hasBaseClass(clazz);
        var type = util_2.wrapTypeReference(reflector, clazz);
        var internalType = new compiler_1.WrappedNodeExpr(reflector.getInternalNameOfClass(clazz));
        var metadata = {
            name: clazz.name.text,
            deps: ctorDeps,
            host: host,
            lifecycle: {
                usesOnChanges: usesOnChanges,
            },
            inputs: tslib_1.__assign(tslib_1.__assign({}, inputsFromMeta), inputsFromFields),
            outputs: tslib_1.__assign(tslib_1.__assign({}, outputsFromMeta), outputsFromFields),
            queries: queries,
            viewQueries: viewQueries,
            selector: selector,
            fullInheritance: !!(flags & transform_1.HandlerFlags.FULL_INHERITANCE),
            type: type,
            internalType: internalType,
            typeArgumentCount: reflector.getGenericArityOfClass(clazz) || 0,
            typeSourceSpan: util_2.createSourceSpan(clazz.name),
            usesInheritance: usesInheritance,
            exportAs: exportAs,
            providers: providers
        };
        return { decorator: directive, metadata: metadata };
    }
    exports.extractDirectiveMetadata = extractDirectiveMetadata;
    function extractQueryMetadata(exprNode, name, args, propertyName, reflector, evaluator) {
        if (args.length === 0) {
            throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DECORATOR_ARITY_WRONG, exprNode, "@" + name + " must have arguments");
        }
        var first = name === 'ViewChild' || name === 'ContentChild';
        var node = util_2.unwrapForwardRef(args[0], reflector);
        var arg = evaluator.evaluate(node);
        /** Whether or not this query should collect only static results (see view/api.ts)  */
        var isStatic = false;
        // Extract the predicate
        var predicate = null;
        if (arg instanceof imports_1.Reference || arg instanceof partial_evaluator_1.DynamicValue) {
            // References and predicates that could not be evaluated statically are emitted as is.
            predicate = new compiler_1.WrappedNodeExpr(node);
        }
        else if (typeof arg === 'string') {
            predicate = [arg];
        }
        else if (isStringArrayOrDie(arg, "@" + name + " predicate", node)) {
            predicate = arg;
        }
        else {
            throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, node, "@" + name + " predicate cannot be interpreted");
        }
        // Extract the read and descendants options.
        var read = null;
        // The default value for descendants is true for every decorator except @ContentChildren.
        var descendants = name !== 'ContentChildren';
        if (args.length === 2) {
            var optionsExpr = util_2.unwrapExpression(args[1]);
            if (!ts.isObjectLiteralExpression(optionsExpr)) {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DECORATOR_ARG_NOT_LITERAL, optionsExpr, "@" + name + " options must be an object literal");
            }
            var options = reflection_1.reflectObjectLiteral(optionsExpr);
            if (options.has('read')) {
                read = new compiler_1.WrappedNodeExpr(options.get('read'));
            }
            if (options.has('descendants')) {
                var descendantsExpr = options.get('descendants');
                var descendantsValue = evaluator.evaluate(descendantsExpr);
                if (typeof descendantsValue !== 'boolean') {
                    throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, descendantsExpr, "@" + name + " options.descendants must be a boolean");
                }
                descendants = descendantsValue;
            }
            if (options.has('static')) {
                var staticValue = evaluator.evaluate(options.get('static'));
                if (typeof staticValue !== 'boolean') {
                    throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, node, "@" + name + " options.static must be a boolean");
                }
                isStatic = staticValue;
            }
        }
        else if (args.length > 2) {
            // Too many arguments.
            throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DECORATOR_ARITY_WRONG, node, "@" + name + " has too many arguments");
        }
        return {
            propertyName: propertyName,
            predicate: predicate,
            first: first,
            descendants: descendants,
            read: read,
            static: isStatic,
        };
    }
    exports.extractQueryMetadata = extractQueryMetadata;
    function extractQueriesFromDecorator(queryData, reflector, evaluator, isCore) {
        var content = [], view = [];
        if (!ts.isObjectLiteralExpression(queryData)) {
            throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, queryData, 'Decorator queries metadata must be an object literal');
        }
        reflection_1.reflectObjectLiteral(queryData).forEach(function (queryExpr, propertyName) {
            queryExpr = util_2.unwrapExpression(queryExpr);
            if (!ts.isNewExpression(queryExpr) || !ts.isIdentifier(queryExpr.expression)) {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, queryData, 'Decorator query metadata must be an instance of a query type');
            }
            var type = reflector.getImportOfIdentifier(queryExpr.expression);
            if (type === null || (!isCore && type.from !== '@angular/core') ||
                !QUERY_TYPES.has(type.name)) {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, queryData, 'Decorator query metadata must be an instance of a query type');
            }
            var query = extractQueryMetadata(queryExpr, type.name, queryExpr.arguments || [], propertyName, reflector, evaluator);
            if (type.name.startsWith('Content')) {
                content.push(query);
            }
            else {
                view.push(query);
            }
        });
        return { content: content, view: view };
    }
    exports.extractQueriesFromDecorator = extractQueriesFromDecorator;
    function isStringArrayOrDie(value, name, node) {
        if (!Array.isArray(value)) {
            return false;
        }
        for (var i = 0; i < value.length; i++) {
            if (typeof value[i] !== 'string') {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, node, "Failed to resolve " + name + " at position " + i + " to a string");
            }
        }
        return true;
    }
    function parseFieldArrayValue(directive, field, evaluator) {
        if (!directive.has(field)) {
            return null;
        }
        // Resolve the field of interest from the directive metadata to a string[].
        var expression = directive.get(field);
        var value = evaluator.evaluate(expression);
        if (!isStringArrayOrDie(value, field, expression)) {
            throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, expression, "Failed to resolve @Directive." + field + " to a string array");
        }
        return value;
    }
    exports.parseFieldArrayValue = parseFieldArrayValue;
    /**
     * Interpret property mapping fields on the decorator (e.g. inputs or outputs) and return the
     * correctly shaped metadata object.
     */
    function parseFieldToPropertyMapping(directive, field, evaluator) {
        var metaValues = parseFieldArrayValue(directive, field, evaluator);
        if (!metaValues) {
            return EMPTY_OBJECT;
        }
        return metaValues.reduce(function (results, value) {
            // Either the value is 'field' or 'field: property'. In the first case, `property` will
            // be undefined, in which case the field name should also be used as the property name.
            var _a = tslib_1.__read(value.split(':', 2).map(function (str) { return str.trim(); }), 2), field = _a[0], property = _a[1];
            results[field] = property || field;
            return results;
        }, {});
    }
    /**
     * Parse property decorators (e.g. `Input` or `Output`) and return the correctly shaped metadata
     * object.
     */
    function parseDecoratedFields(fields, evaluator, mapValueResolver) {
        return fields.reduce(function (results, field) {
            var fieldName = field.member.name;
            field.decorators.forEach(function (decorator) {
                // The decorator either doesn't have an argument (@Input()) in which case the property
                // name is used, or it has one argument (@Output('named')).
                if (decorator.args == null || decorator.args.length === 0) {
                    results[fieldName] = fieldName;
                }
                else if (decorator.args.length === 1) {
                    var property = evaluator.evaluate(decorator.args[0]);
                    if (typeof property !== 'string') {
                        throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, reflection_1.Decorator.nodeForError(decorator), "@" + decorator.name + " decorator argument must resolve to a string");
                    }
                    results[fieldName] = mapValueResolver(property, fieldName);
                }
                else {
                    // Too many arguments.
                    throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DECORATOR_ARITY_WRONG, reflection_1.Decorator.nodeForError(decorator), "@" + decorator.name + " can have at most one argument, got " + decorator.args.length + " argument(s)");
                }
            });
            return results;
        }, {});
    }
    function resolveInput(publicName, internalName) {
        return [publicName, internalName];
    }
    function resolveOutput(publicName, internalName) {
        return publicName;
    }
    function queriesFromFields(fields, reflector, evaluator) {
        return fields.map(function (_a) {
            var member = _a.member, decorators = _a.decorators;
            var decorator = decorators[0];
            var node = member.node || reflection_1.Decorator.nodeForError(decorator);
            // Throw in case of `@Input() @ContentChild('foo') foo: any`, which is not supported in Ivy
            if (member.decorators.some(function (v) { return v.name === 'Input'; })) {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DECORATOR_COLLISION, node, 'Cannot combine @Input decorators with query decorators');
            }
            if (decorators.length !== 1) {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DECORATOR_COLLISION, node, 'Cannot have multiple query decorators on the same class member');
            }
            else if (!isPropertyTypeMember(member)) {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DECORATOR_UNEXPECTED, node, 'Query decorator must go on a property-type member');
            }
            return extractQueryMetadata(node, decorator.name, decorator.args || [], member.name, reflector, evaluator);
        });
    }
    exports.queriesFromFields = queriesFromFields;
    function isPropertyTypeMember(member) {
        return member.kind === reflection_1.ClassMemberKind.Getter || member.kind === reflection_1.ClassMemberKind.Setter ||
            member.kind === reflection_1.ClassMemberKind.Property;
    }
    function evaluateHostExpressionBindings(hostExpr, evaluator) {
        var hostMetaMap = evaluator.evaluate(hostExpr);
        if (!(hostMetaMap instanceof Map)) {
            throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, hostExpr, "Decorator host metadata must be an object");
        }
        var hostMetadata = {};
        hostMetaMap.forEach(function (value, key) {
            // Resolve Enum references to their declared value.
            if (value instanceof partial_evaluator_1.EnumValue) {
                value = value.resolved;
            }
            if (typeof key !== 'string') {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, hostExpr, "Decorator host metadata must be a string -> string object, but found unparseable key");
            }
            if (typeof value == 'string') {
                hostMetadata[key] = value;
            }
            else if (value instanceof partial_evaluator_1.DynamicValue) {
                hostMetadata[key] = new compiler_1.WrappedNodeExpr(value.node);
            }
            else {
                throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, hostExpr, "Decorator host metadata must be a string -> string object, but found unparseable value");
            }
        });
        var bindings = compiler_1.parseHostBindings(hostMetadata);
        var errors = compiler_1.verifyHostBindings(bindings, util_2.createSourceSpan(hostExpr));
        if (errors.length > 0) {
            throw new diagnostics_1.FatalDiagnosticError(
            // TODO: provide more granular diagnostic and output specific host expression that
            // triggered an error instead of the whole host object.
            diagnostics_1.ErrorCode.HOST_BINDING_PARSE_ERROR, hostExpr, errors.map(function (error) { return error.msg; }).join('\n'));
        }
        return bindings;
    }
    function extractHostBindings(members, evaluator, coreModule, metadata) {
        var bindings;
        if (metadata && metadata.has('host')) {
            bindings = evaluateHostExpressionBindings(metadata.get('host'), evaluator);
        }
        else {
            bindings = compiler_1.parseHostBindings({});
        }
        reflection_1.filterToMembersWithDecorator(members, 'HostBinding', coreModule)
            .forEach(function (_a) {
            var member = _a.member, decorators = _a.decorators;
            decorators.forEach(function (decorator) {
                var hostPropertyName = member.name;
                if (decorator.args !== null && decorator.args.length > 0) {
                    if (decorator.args.length !== 1) {
                        throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DECORATOR_ARITY_WRONG, reflection_1.Decorator.nodeForError(decorator), "@HostBinding can have at most one argument, got " + decorator.args.length + " argument(s)");
                    }
                    var resolved = evaluator.evaluate(decorator.args[0]);
                    if (typeof resolved !== 'string') {
                        throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, reflection_1.Decorator.nodeForError(decorator), "@HostBinding's argument must be a string");
                    }
                    hostPropertyName = resolved;
                }
                bindings.properties[hostPropertyName] = member.name;
            });
        });
        reflection_1.filterToMembersWithDecorator(members, 'HostListener', coreModule)
            .forEach(function (_a) {
            var member = _a.member, decorators = _a.decorators;
            decorators.forEach(function (decorator) {
                var eventName = member.name;
                var args = [];
                if (decorator.args !== null && decorator.args.length > 0) {
                    if (decorator.args.length > 2) {
                        throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.DECORATOR_ARITY_WRONG, decorator.args[2], "@HostListener can have at most two arguments");
                    }
                    var resolved = evaluator.evaluate(decorator.args[0]);
                    if (typeof resolved !== 'string') {
                        throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, decorator.args[0], "@HostListener's event name argument must be a string");
                    }
                    eventName = resolved;
                    if (decorator.args.length === 2) {
                        var expression = decorator.args[1];
                        var resolvedArgs = evaluator.evaluate(decorator.args[1]);
                        if (!isStringArrayOrDie(resolvedArgs, '@HostListener.args', expression)) {
                            throw new diagnostics_1.FatalDiagnosticError(diagnostics_1.ErrorCode.VALUE_HAS_WRONG_TYPE, decorator.args[1], "@HostListener's second argument must be a string array");
                        }
                        args = resolvedArgs;
                    }
                }
                bindings.listeners[eventName] = member.name + "(" + args.join(',') + ")";
            });
        });
        return bindings;
    }
    exports.extractHostBindings = extractHostBindings;
    var QUERY_TYPES = new Set([
        'ContentChild',
        'ContentChildren',
        'ViewChild',
        'ViewChildren',
    ]);
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGlyZWN0aXZlLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy9uZ3RzYy9hbm5vdGF0aW9ucy9zcmMvZGlyZWN0aXZlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFFSCw4Q0FBeVM7SUFDelMsK0JBQWlDO0lBRWpDLDJFQUFrRTtJQUNsRSxtRUFBK0Q7SUFFL0QsMEVBQStEO0lBQy9ELHVGQUFrRjtJQUNsRix5RUFBK0o7SUFFL0osdUVBQThJO0lBRTlJLDJGQUFnSTtJQUNoSSxtRkFBbUQ7SUFDbkQscUZBQXdEO0lBQ3hELDZFQUF1VDtJQUV2VCxJQUFNLFlBQVksR0FBNEIsRUFBRSxDQUFDO0lBQ2pELElBQU0sZ0JBQWdCLEdBQUc7UUFDdkIsT0FBTyxFQUFFLFFBQVEsRUFBRSxXQUFXLEVBQUUsY0FBYyxFQUFFLGNBQWMsRUFBRSxpQkFBaUIsRUFBRSxhQUFhO1FBQ2hHLGNBQWM7S0FDZixDQUFDO0lBQ0YsSUFBTSxlQUFlLEdBQUcsSUFBSSxHQUFHLENBQUM7UUFDOUIsYUFBYSxFQUFFLFVBQVUsRUFBRSxhQUFhLEVBQUUsV0FBVyxFQUFFLGlCQUFpQixFQUFFLG9CQUFvQjtRQUM5RixvQkFBb0IsRUFBRSx1QkFBdUI7S0FDOUMsQ0FBQyxDQUFDO0lBVUg7UUFFRSxtQ0FDWSxTQUF5QixFQUFVLFNBQTJCLEVBQzlELFlBQThCLEVBQVUsYUFBdUMsRUFDL0UsVUFBMEIsRUFBVSxxQkFBNEMsRUFDaEYsa0JBQTJDLEVBQVUsTUFBZSxFQUNwRSwwQkFBbUMsRUFDbkMsNENBQXFEO1lBTHJELGNBQVMsR0FBVCxTQUFTLENBQWdCO1lBQVUsY0FBUyxHQUFULFNBQVMsQ0FBa0I7WUFDOUQsaUJBQVksR0FBWixZQUFZLENBQWtCO1lBQVUsa0JBQWEsR0FBYixhQUFhLENBQTBCO1lBQy9FLGVBQVUsR0FB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ckMsSUFBTSxZQUFZLEdBQUcsU0FBUyxDQUFDLFFBQVEsQ0FBQyxTQUFTLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7d0JBQzNELElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxZQUFZLEVBQUUsb0JBQW9CLEVBQUUsVUFBVSxDQUFDLEVBQUU7NEJBQ3ZFLE1BQU0sSUFBSSxrQ0FBb0IsQ0FDMUIsdUJBQVMsQ0FBQyxvQkFBb0IsRUFBRSxTQUFTLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxFQUNqRCx3REFBd0QsQ0FBQyxDQUFDO3lCQUMvRDt3QkFDRCxJQUFJLEdBQUcsWUFBWSxDQUFDO3FCQUNyQjtpQkFDRjtnQkFFRCxRQUFRLENBQUMsU0FBUyxDQUFDLFNBQVMsQ0FBQyxHQUFNLE1BQU0sQ0FBQyxJQUFJLFNBQUksSUFBSSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsTUFBRyxDQUFDO1lBQ3RFLENBQUMsQ0FBQyxDQUFDO1FBQ0wsQ0FBQyxDQUFDLENBQUM7UUFDUCxPQUFPLFFBQVEsQ0FBQztJQUNsQixDQUFDO0lBekVELGtEQXlFQztJQUVELElBQU0sV0FBVyxHQUFHLElBQUksR0FBRyxDQUFDO1FBQzFCLGNBQWM7UUFDZCxpQkFBaUI7UUFDakIsV0FBVztRQUNYLGNBQWM7S0FDZixDQUFDLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtjb21waWxlRGlyZWN0aXZlRnJvbU1ldGFkYXRhLCBDb25zdGFudFBvb2wsIEV4cHJlc3Npb24sIElkZW50aWZpZXJzLCBtYWtlQmluZGluZ1BhcnNlciwgUGFyc2VkSG9zdEJpbmRpbmdzLCBQYXJzZUVycm9yLCBwYXJzZUhvc3RCaW5kaW5ncywgUjNEZXBlbmRlbmN5TWV0YWRhdGEsIFIzRGlyZWN0aXZlTWV0YWRhdGEsIFIzRmFjdG9yeVRhcmdldCwgUjNRdWVyeU1ldGFkYXRhLCBTdGF0ZW1lbnQsIHZlcmlmeUhvc3RCaW5kaW5ncywgV3JhcHBlZE5vZGVFeHByfSBmcm9tICdAYW5ndWxhci9jb21waWxlcic7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtFcnJvckNvZGUsIEZhdGFsRGlhZ25vc3RpY0Vycm9yfSBmcm9tICcuLi8uLi9kaWFnbm9zdGljcyc7XG5pbXBvcnQge0RlZmF1bHRJbXBvcnRSZWNvcmRlciwgUmVmZXJlbmNlfSBmcm9tICcuLi8uLi9pbXBvcnRzJztcbmltcG9ydCB7SW5qZWN0YWJsZUNsYXNzUmVnaXN0cnksIE1ldGFkYXRhUmVhZGVyLCBNZXRhZGF0YVJlZ2lzdHJ5fSBmcm9tICcuLi8uLi9tZXRhZGF0YSc7XG5pbXBvcnQge2V4dHJhY3REaXJlY3RpdmVHdWFyZHN9IGZyb20gJy4uLy4uL21ldGFkYXRhL3NyYy91dGlsJztcbmltcG9ydCB7RHluYW1pY1ZhbHVlLCBFbnVtVmFsdWUsIFBhcnRpYWxFdmFsdWF0b3J9IGZyb20gJy4uLy4uL3BhcnRpYWxfZXZhbHVhdG9yJztcbmltcG9ydCB7Q2xhc3NEZWNsYXJhdGlvbiwgQ2xhc3NNZW1iZXIsIENsYXNzTWVtYmVyS2luZCwgRGVjb3JhdG9yLCBmaWx0ZXJUb01lbWJlcnNXaXRoRGVjb3JhdG9yLCBSZWZsZWN0aW9uSG9zdCwgcmVmbGVjdE9iamVjdExpdGVyYWx9IGZyb20gJy4uLy4uL3JlZmxlY3Rpb24nO1xuaW1wb3J0IHtMb2NhbE1vZHVsZVNjb3BlUmVnaXN0cnl9IGZyb20gJy4uLy4uL3Njb3BlJztcbmltcG9ydCB7QW5hbHlzaXNPdXRwdXQsIENvbXBpbGVSZXN1bHQsIERlY29yYXRvckhhbmRsZXIsIERldGVjdFJlc3VsdCwgSGFuZGxlckZsYWdzLCBIYW5kbGVyUHJlY2VkZW5jZSwgUmVzb2x2ZVJlc3VsdH0gZnJvbSAnLi4vLi4vdHJhbnNmb3JtJztcblxuaW1wb3J0IHtnZXREaXJlY3RpdmVEaWFnbm9zdGljcywgZ2V0UHJvdmlkZXJEaWFnbm9zdGljcywgZ2V0VW5kZWNvcmF0ZWRDbGFzc1dpdGhBbmd1bGFyRmVhdHVyZXNEaWFnbm9zdGljfSBmcm9tICcuL2RpYWdub3N0aWNzJztcbmltcG9ydCB7Y29tcGlsZU5nRmFjdG9yeURlZkZpZWxkfSBmcm9tICcuL2ZhY3RvcnknO1xuaW1wb3J0IHtnZW5lcmF0ZVNldENsYXNzTWV0YWRhdGFDYWxsfSBmcm9tICcuL21ldGFkYXRhJztcbmltcG9ydCB7Y3JlYXRlU291cmNlU3BhbiwgZmluZEFuZ3VsYXJEZWNvcmF0b3IsIGdldENvbnN0cnVjdG9yRGVwZW5kZW5jaWVzLCBpc0FuZ3VsYXJEZWNvcmF0b3IsIHJlYWRCYXNlQ2xhc3MsIHJlc29sdmVQcm92aWRlcnNSZXF1aXJpbmdGYWN0b3J5LCB1bndyYXBDb25zdHJ1Y3RvckRlcGVuZGVuY2llcywgdW53cmFwRXhwcmVzc2lvbiwgdW53cmFwRm9yd2FyZFJlZiwgdmFsaWRhdGVDb25zdHJ1Y3RvckRlcGVuZGVuY2llcywgd3JhcEZ1bmN0aW9uRXhwcmVzc2lvbnNJblBhcmVucywgd3JhcFR5cGVSZWZlcmVuY2V9IGZyb20gJy4vdXRpbCc7XG5cbmNvbnN0IEVNUFRZX09CSkVDVDoge1trZXk6IHN0cmluZ106IHN0cmluZ30gPSB7fTtcbmNvbnN0IEZJRUxEX0RFQ09SQVRPUlMgPSBbXG4gICdJbnB1dCcsICdPdXRwdXQnLCAnVmlld0NoaWxkJywgJ1ZpZXdDaGlsZHJlbicsICdDb250ZW50Q2hpbGQnLCAnQ29udGVudENoaWxkcmVuJywgJ0hvc3RCaW5kaW5nJyxcbiAgJ0hvc3RMaXN0ZW5lcidcbl07XG5jb25zdCBMSUZFQ1lDTEVfSE9PS1MgPSBuZXcgU2V0KFtcbiAgJ25nT25DaGFuZ2VzJywgJ25nT25Jbml0JywgJ25nT25EZXN0cm95JywgJ25nRG9DaGVjaycsICduZ0FmdGVyVmlld0luaXQnLCAnbmdBZnRlclZpZXdDaGVja2VkJyxcbiAgJ25nQWZ0ZXJDb250ZW50SW5pdCcsICduZ0FmdGVyQ29udGVudENoZWNrZWQnXG5dKTtcblxuZXhwb3J0IGludGVyZmFjZSBEaXJlY3RpdmVIYW5kbGVyRGF0YSB7XG4gIGJhc2VDbGFzczogUmVmZXJlbmNlPENsYXNzRGVjbGFyYXRpb24+fCdkeW5hbWljJ3xudWxsO1xuICBndWFyZHM6IFJldHVyblR5cGU8dHlwZW9mIGV4dHJhY3REaXJlY3RpdmVHdWFyZHM+O1xuICBtZXRhOiBSM0RpcmVjdGl2ZU1ldGFkYXRhO1xuICBtZXRhZGF0YVN0bXQ6IFN0YXRlbWVudHxudWxsO1xuICBwcm92aWRlcnNSZXF1aXJpbmdGYWN0b3J5OiBTZXQ8UmVmZXJlbmNlPENsYXNzRGVjbGFyYXRpb24+PnxudWxsO1xufVxuXG5leHBvcnQgY2xhc3MgRGlyZWN0aXZlRGVjb3JhdG9ySGFuZGxlciBpbXBsZW1lbnRzXG4gICAgRGVjb3JhdG9ySGFuZGxlcjxEZWNvcmF0b3J8bnVsbCwgRGlyZWN0aXZlSGFuZGxlckRhdGEsIHVua25vd24+IHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHJlZmxlY3RvcjogUmVmbGVjdGlvbkhvc3QsIHByaXZhdGUgZXZhbHVhdG9yOiBQYXJ0aWFsRXZhbHVhdG9yLFxuICAgICAgcHJpdmF0ZSBtZXRhUmVnaXN0cnk6IE1ldGFkYXRhUmVnaXN0cnksIHByaXZhdGUgc2NvcGVSZWdpc3RyeTogTG9jYWxNb2R1bGVTY29wZVJlZ2lzdHJ5LFxuICAgICAgcHJpdmF0ZSBtZXRhUmVhZGVyOiBNZXRhZGF0YVJlYWRlciwgcHJpdmF0ZSBkZWZhdWx0SW1wb3J0UmVjb3JkZXI6IERlZmF1bHRJbXBvcnRSZWNvcmRlcixcbiAgICAgIHByaXZhdGUgaW5qZWN0YWJsZVJlZ2lzdHJ5OiBJbmplY3RhYmxlQ2xhc3NSZWdpc3RyeSwgcHJpdmF0ZSBpc0NvcmU6IGJvb2xlYW4sXG4gICAgICBwcml2YXRlIGFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyOiBib29sZWFuLFxuICAgICAgcHJpdmF0ZSBjb21waWxlVW5kZWNvcmF0ZWRDbGFzc2VzV2l0aEFuZ3VsYXJGZWF0dXJlczogYm9vbGVhbikge31cblxuICByZWFkb25seSBwcmVjZWRlbmNlID0gSGFuZGxlclByZWNlZGVuY2UuUFJJTUFSWTtcbiAgcmVhZG9ubHkgbmFtZSA9IERpcmVjdGl2ZURlY29yYXRvckhhbmRsZXIubmFtZTtcblxuICBkZXRlY3Qobm9kZTogQ2xhc3NEZWNsYXJhdGlvbiwgZGVjb3JhdG9yczogRGVjb3JhdG9yW118bnVsbCk6XG4gICAgICBEZXRlY3RSZXN1bHQ8RGVjb3JhdG9yfG51bGw+fHVuZGVmaW5lZCB7XG4gICAgLy8gSWYgYSBjbGFzcyBpcyB1bmRlY29yYXRlZCBidXQgdXNlcyBBbmd1bGFyIGZlYXR1cmVzLCB3ZSBkZXRlY3QgaXQgYXMgYW5cbiAgICAvLyBhYnN0cmFjdCBkaXJlY3RpdmUuIFRoaXMgaXMgYW4gdW5zdXBwb3J0ZWQgcGF0dGVybiBhcyBvZiB2MTAsIGJ1dCB3ZSB3YW50XG4gICAgLy8gdG8gc3RpbGwgZGV0ZWN0IHRoZXNlIHBhdHRlcm5zIHNvIHRoYXQgd2UgY2FuIHJlcG9ydCBkaWFnbm9zdGljcywgb3IgY29tcGlsZVxuICAgIC8vIHRoZW0gZm9yIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5IGluIG5nY2MuXG4gICAgaWYgKCFkZWNvcmF0b3JzKSB7XG4gICAgICBjb25zdCBhbmd1bGFyRmllbGQgPSB0aGlzLmZpbmRDbGFzc0ZpZWxkV2l0aEFuZ3VsYXJGZWF0dXJlcyhub2RlKTtcbiAgICAgIHJldHVybiBhbmd1bGFyRmllbGQgPyB7dHJpZ2dlcjogYW5ndWxhckZpZWxkLm5vZGUsIGRlY29yYXRvcjogbnVsbCwgbWV0YWRhdGE6IG51bGx9IDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bmRlZmluZWQ7XG4gICAgfSBlbHNlIHtcbiAgICAgIGNvbnN0IGRlY29yYXRvciA9IGZpbmRBbmd1bGFyRGVjb3JhdG9yKGRlY29yYXRvcnMsICdEaXJlY3RpdmUnLCB0aGlzLmlzQ29yZSk7XG4gICAgICByZXR1cm4gZGVjb3JhdG9yID8ge3RyaWdnZXI6IGRlY29yYXRvci5ub2RlLCBkZWNvcmF0b3IsIG1ldGFkYXRhOiBkZWNvcmF0b3J9IDogdW5kZWZpbmVkO1xuICAgIH1cbiAgfVxuXG4gIGFuYWx5emUobm9kZTogQ2xhc3NEZWNsYXJhdGlvbiwgZGVjb3JhdG9yOiBSZWFkb25seTxEZWNvcmF0b3J8bnVsbD4sIGZsYWdzID0gSGFuZGxlckZsYWdzLk5PTkUpOlxuICAgICAgQW5hbHlzaXNPdXRwdXQ8RGlyZWN0aXZlSGFuZGxlckRhdGE+IHtcbiAgICAvLyBTa2lwIHByb2Nlc3Npbmcgb2YgdGhlIGNsYXNzIGRlY2xhcmF0aW9uIGlmIGNvbXBpbGF0aW9uIG9mIHVuZGVjb3JhdGVkIGNsYXNzZXNcbiAgICAvLyB3aXRoIEFuZ3VsYXIgZmVhdHVyZXMgaXMgZGlzYWJsZWQuIFByZXZpb3VzbHkgaW4gbmd0c2MsIHN1Y2ggY2xhc3NlcyBoYXZlIGFsd2F5c1xuICAgIC8vIGJlZW4gcHJvY2Vzc2VkLCBidXQgd2Ugd2FudCB0byBlbmZvcmNlIGEgY29uc2lzdGVudCBkZWNvcmF0b3IgbWVudGFsIG1vZGVsLlxuICAgIC8vIFNlZTogaHR0cHM6Ly92OS5hbmd1bGFyLmlvL2d1aWRlL21pZ3JhdGlvbi11bmRlY29yYXRlZC1jbGFzc2VzLlxuICAgIGlmICh0aGlzLmNvbXBpbGVVbmRlY29yYXRlZENsYXNzZXNXaXRoQW5ndWxhckZlYXR1cmVzID09PSBmYWxzZSAmJiBkZWNvcmF0b3IgPT09IG51bGwpIHtcbiAgICAgIHJldHVybiB7ZGlhZ25vc3RpY3M6IFtnZXRVbmRlY29yYXRlZENsYXNzV2l0aEFuZ3VsYXJGZWF0dXJlc0RpYWdub3N0aWMobm9kZSldfTtcbiAgICB9XG5cbiAgICBjb25zdCBkaXJlY3RpdmVSZXN1bHQgPSBleHRyYWN0RGlyZWN0aXZlTWV0YWRhdGEoXG4gICAgICAgIG5vZGUsIGRlY29yYXRvciwgdGhpcy5yZWZsZWN0b3IsIHRoaXMuZXZhbHVhdG9yLCB0aGlzLmRlZmF1bHRJbXBvcnRSZWNvcmRlciwgdGhpcy5pc0NvcmUsXG4gICAgICAgIGZsYWdzLCB0aGlzLmFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyKTtcbiAgICBjb25zdCBhbmFseXNpcyA9IGRpcmVjdGl2ZVJlc3VsdCAmJiBkaXJlY3RpdmVSZXN1bHQubWV0YWRhdGE7XG5cbiAgICBpZiAoYW5hbHlzaXMgPT09IHVuZGVmaW5lZCkge1xuICAgICAgcmV0dXJuIHt9O1xuICAgIH1cblxuICAgIGxldCBwcm92aWRlcnNSZXF1aXJpbmdGYWN0b3J5OiBTZXQ8UmVmZXJlbmNlPENsYXNzRGVjbGFyYXRpb24+PnxudWxsID0gbnVsbDtcbiAgICBpZiAoZGlyZWN0aXZlUmVzdWx0ICE9PSB1bmRlZmluZWQgJiYgZGlyZWN0aXZlUmVzdWx0LmRlY29yYXRvci5oYXMoJ3Byb3ZpZGVycycpKSB7XG4gICAgICBwcm92aWRlcnNSZXF1aXJpbmdGYWN0b3J5ID0gcmVzb2x2ZVByb3ZpZGVyc1JlcXVpcmluZ0ZhY3RvcnkoXG4gICAgICAgICAgZGlyZWN0aXZlUmVzdWx0LmRlY29yYXRvci5nZXQoJ3Byb3ZpZGVycycpISwgdGhpcy5yZWZsZWN0b3IsIHRoaXMuZXZhbHVhdG9yKTtcbiAgICB9XG5cbiAgICByZXR1cm4ge1xuICAgICAgYW5hbHlzaXM6IHtcbiAgICAgICAgbWV0YTogYW5hbHlzaXMsXG4gICAgICAgIG1ldGFkYXRhU3RtdDogZ2VuZXJhdGVTZXRDbGFzc01ldGFkYXRhQ2FsbChcbiAgICAgICAgICAgIG5vZGUsIHRoaXMucmVmbGVjdG9yLCB0aGlzLmRlZmF1bHRJbXBvcnRSZWNvcmRlciwgdGhpcy5pc0NvcmUsXG4gICAgICAgICAgICB0aGlzLmFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyKSxcbiAgICAgICAgYmFzZUNsYXNzOiByZWFkQmFzZUNsYXNzKG5vZGUsIHRoaXMucmVmbGVjdG9yLCB0aGlzLmV2YWx1YXRvciksXG4gICAgICAgIGd1YXJkczogZXh0cmFjdERpcmVjdGl2ZUd1YXJkcyhub2RlLCB0aGlzLnJlZmxlY3RvciksXG4gICAgICAgIHByb3ZpZGVyc1JlcXVpcmluZ0ZhY3RvcnlcbiAgICAgIH1cbiAgICB9O1xuICB9XG5cbiAgcmVnaXN0ZXIobm9kZTogQ2xhc3NEZWNsYXJhdGlvbiwgYW5hbHlzaXM6IFJlYWRvbmx5PERpcmVjdGl2ZUhhbmRsZXJEYXRhPik6IHZvaWQge1xuICAgIC8vIFJlZ2lzdGVyIHRoaXMgZGlyZWN0aXZlJ3MgaW5mb3JtYXRpb24gd2l0aCB0aGUgYE1ldGFkYXRhUmVnaXN0cnlgLiBUaGlzIGVuc3VyZXMgdGhhdFxuICAgIC8vIHRoZSBpbmZvcm1hdGlvbiBhYm91dCB0aGUgZGlyZWN0aXZlIGlzIGF2YWlsYWJsZSBkdXJpbmcgdGhlIGNvbXBpbGUoKSBwaGFzZS5cbiAgICBjb25zdCByZWYgPSBuZXcgUmVmZXJlbmNlKG5vZGUpO1xuICAgIHRoaXMubWV0YVJlZ2lzdHJ5LnJlZ2lzdGVyRGlyZWN0aXZlTWV0YWRhdGEoe1xuICAgICAgcmVmLFxuICAgICAgbmFtZTogbm9kZS5uYW1lLnRleHQsXG4gICAgICBzZWxlY3RvcjogYW5hbHlzaXMubWV0YS5zZWxlY3RvcixcbiAgICAgIGV4cG9ydEFzOiBhbmFseXNpcy5tZXRhLmV4cG9ydEFzLFxuICAgICAgaW5wdXRzOiBhbmFseXNpcy5tZXRhLmlucHV0cyxcbiAgICAgIG91dHB1dHM6IGFuYWx5c2lzLm1ldGEub3V0cHV0cyxcbiAgICAgIHF1ZXJpZXM6IGFuYWx5c2lzLm1ldGEucXVlcmllcy5tYXAocXVlcnkgPT4gcXVlcnkucHJvcGVydHlOYW1lKSxcbiAgICAgIGlzQ29tcG9uZW50OiBmYWxzZSxcbiAgICAgIGJhc2VDbGFzczogYW5hbHlzaXMuYmFzZUNsYXNzLFxuICAgICAgLi4uYW5hbHlzaXMuZ3VhcmRzLFxuICAgIH0pO1xuXG4gICAgdGhpcy5pbmplY3RhYmxlUmVnaXN0cnkucmVnaXN0ZXJJbmplY3RhYmxlKG5vZGUpO1xuICB9XG5cbiAgcmVzb2x2ZShub2RlOiBDbGFzc0RlY2xhcmF0aW9uLCBhbmFseXNpczogRGlyZWN0aXZlSGFuZGxlckRhdGEpOiBSZXNvbHZlUmVzdWx0PHVua25vd24+IHtcbiAgICBjb25zdCBkaWFnbm9zdGljczogdHMuRGlhZ25vc3RpY1tdID0gW107XG5cbiAgICBpZiAoYW5hbHlzaXMucHJvdmlkZXJzUmVxdWlyaW5nRmFjdG9yeSAhPT0gbnVsbCAmJlxuICAgICAgICBhbmFseXNpcy5tZXRhLnByb3ZpZGVycyBpbnN0YW5jZW9mIFdyYXBwZWROb2RlRXhwcikge1xuICAgICAgY29uc3QgcHJvdmlkZXJEaWFnbm9zdGljcyA9IGdldFByb3ZpZGVyRGlhZ25vc3RpY3MoXG4gICAgICAgICAgYW5hbHlzaXMucHJvdmlkZXJzUmVxdWlyaW5nRmFjdG9yeSwgYW5hbHlzaXMubWV0YS5wcm92aWRlcnMhLm5vZGUsXG4gICAgICAgICAgdGhpcy5pbmplY3RhYmxlUmVnaXN0cnkpO1xuICAgICAgZGlhZ25vc3RpY3MucHVzaCguLi5wcm92aWRlckRpYWdub3N0aWNzKTtcbiAgICB9XG5cbiAgICBjb25zdCBkaXJlY3RpdmVEaWFnbm9zdGljcyA9IGdldERpcmVjdGl2ZURpYWdub3N0aWNzKFxuICAgICAgICBub2RlLCB0aGlzLm1ldGFSZWFkZXIsIHRoaXMuZXZhbHVhdG9yLCB0aGlzLnJlZmxlY3RvciwgdGhpcy5zY29wZVJlZ2lzdHJ5LCAnRGlyZWN0aXZlJyk7XG4gICAgaWYgKGRpcmVjdGl2ZURpYWdub3N0aWNzICE9PSBudWxsKSB7XG4gICAgICBkaWFnbm9zdGljcy5wdXNoKC4uLmRpcmVjdGl2ZURpYWdub3N0aWNzKTtcbiAgICB9XG5cbiAgICByZXR1cm4ge2RpYWdub3N0aWNzOiBkaWFnbm9zdGljcy5sZW5ndGggPiAwID8gZGlhZ25vc3RpY3MgOiB1bmRlZmluZWR9O1xuICB9XG5cbiAgY29tcGlsZShcbiAgICAgIG5vZGU6IENsYXNzRGVjbGFyYXRpb24sIGFuYWx5c2lzOiBSZWFkb25seTxEaXJlY3RpdmVIYW5kbGVyRGF0YT4sXG4gICAgICByZXNvbHV0aW9uOiBSZWFkb25seTx1bmtub3duPiwgcG9vbDogQ29uc3RhbnRQb29sKTogQ29tcGlsZVJlc3VsdFtdIHtcbiAgICBjb25zdCBtZXRhID0gYW5hbHlzaXMubWV0YTtcbiAgICBjb25zdCByZXMgPSBjb21waWxlRGlyZWN0aXZlRnJvbU1ldGFkYXRhKG1ldGEsIHBvb2wsIG1ha2VCaW5kaW5nUGFyc2VyKCkpO1xuICAgIGNvbnN0IGZhY3RvcnlSZXMgPSBjb21waWxlTmdGYWN0b3J5RGVmRmllbGQoXG4gICAgICAgIHsuLi5tZXRhLCBpbmplY3RGbjogSWRlbnRpZmllcnMuZGlyZWN0aXZlSW5qZWN0LCB0YXJnZXQ6IFIzRmFjdG9yeVRhcmdldC5EaXJlY3RpdmV9KTtcbiAgICBpZiAoYW5hbHlzaXMubWV0YWRhdGFTdG10ICE9PSBudWxsKSB7XG4gICAgICBmYWN0b3J5UmVzLnN0YXRlbWVudHMucHVzaChhbmFseXNpcy5tZXRhZGF0YVN0bXQpO1xuICAgIH1cbiAgICByZXR1cm4gW1xuICAgICAgZmFjdG9yeVJlcywge1xuICAgICAgICBuYW1lOiAnybVkaXInLFxuICAgICAgICBpbml0aWFsaXplcjogcmVzLmV4cHJlc3Npb24sXG4gICAgICAgIHN0YXRlbWVudHM6IFtdLFxuICAgICAgICB0eXBlOiByZXMudHlwZSxcbiAgICAgIH1cbiAgICBdO1xuICB9XG5cbiAgLyoqXG4gICAqIENoZWNrcyBpZiBhIGdpdmVuIGNsYXNzIHVzZXMgQW5ndWxhciBmZWF0dXJlcyBhbmQgcmV0dXJucyB0aGUgVHlwZVNjcmlwdCBub2RlXG4gICAqIHRoYXQgaW5kaWNhdGVkIHRoZSB1c2FnZS4gQ2xhc3NlcyBhcmUgY29uc2lkZXJlZCB1c2luZyBBbmd1bGFyIGZlYXR1cmVzIGlmIHRoZXlcbiAgICogY29udGFpbiBjbGFzcyBtZW1iZXJzIHRoYXQgYXJlIGVpdGhlciBkZWNvcmF0ZWQgd2l0aCBhIGtub3duIEFuZ3VsYXIgZGVjb3JhdG9yLFxuICAgKiBvciBpZiB0aGV5IGNvcnJlc3BvbmQgdG8gYSBrbm93biBBbmd1bGFyIGxpZmVjeWNsZSBob29rLlxuICAgKi9cbiAgcHJpdmF0ZSBmaW5kQ2xhc3NGaWVsZFdpdGhBbmd1bGFyRmVhdHVyZXMobm9kZTogQ2xhc3NEZWNsYXJhdGlvbik6IENsYXNzTWVtYmVyfHVuZGVmaW5lZCB7XG4gICAgcmV0dXJuIHRoaXMucmVmbGVjdG9yLmdldE1lbWJlcnNPZkNsYXNzKG5vZGUpLmZpbmQobWVtYmVyID0+IHtcbiAgICAgIGlmICghbWVtYmVyLmlzU3RhdGljICYmIG1lbWJlci5raW5kID09PSBDbGFzc01lbWJlcktpbmQuTWV0aG9kICYmXG4gICAgICAgICAgTElGRUNZQ0xFX0hPT0tTLmhhcyhtZW1iZXIubmFtZSkpIHtcbiAgICAgICAgcmV0dXJuIHRydWU7XG4gICAgICB9XG4gICAgICBpZiAobWVtYmVyLmRlY29yYXRvcnMpIHtcbiAgICAgICAgcmV0dXJuIG1lbWJlci5kZWNvcmF0b3JzLnNvbWUoXG4gICAgICAgICAgICBkZWNvcmF0b3IgPT4gRklFTERfREVDT1JBVE9SUy5zb21lKFxuICAgICAgICAgICAgICAgIGRlY29yYXRvck5hbWUgPT4gaXNBbmd1bGFyRGVjb3JhdG9yKGRlY29yYXRvciwgZGVjb3JhdG9yTmFtZSwgdGhpcy5pc0NvcmUpKSk7XG4gICAgICB9XG4gICAgICByZXR1cm4gZmFsc2U7XG4gICAgfSk7XG4gIH1cbn1cblxuLyoqXG4gKiBIZWxwZXIgZnVuY3Rpb24gdG8gZXh0cmFjdCBtZXRhZGF0YSBmcm9tIGEgYERpcmVjdGl2ZWAgb3IgYENvbXBvbmVudGAuIGBEaXJlY3RpdmVgcyB3aXRob3V0IGFcbiAqIHNlbGVjdG9yIGFyZSBhbGxvd2VkIHRvIGJlIHVzZWQgZm9yIGFic3RyYWN0IGJhc2UgY2xhc3Nlcy4gVGhlc2UgYWJzdHJhY3QgZGlyZWN0aXZlcyBzaG91bGQgbm90XG4gKiBhcHBlYXIgaW4gdGhlIGRlY2xhcmF0aW9ucyBvZiBhbiBgTmdNb2R1bGVgIGFuZCBhZGRpdGlvbmFsIHZlcmlmaWNhdGlvbiBpcyBkb25lIHdoZW4gcHJvY2Vzc2luZ1xuICogdGhlIG1vZHVsZS5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGV4dHJhY3REaXJlY3RpdmVNZXRhZGF0YShcbiAgICBjbGF6ejogQ2xhc3NEZWNsYXJhdGlvbiwgZGVjb3JhdG9yOiBSZWFkb25seTxEZWNvcmF0b3J8bnVsbD4sIHJlZmxlY3RvcjogUmVmbGVjdGlvbkhvc3QsXG4gICAgZXZhbHVhdG9yOiBQYXJ0aWFsRXZhbHVhdG9yLCBkZWZhdWx0SW1wb3J0UmVjb3JkZXI6IERlZmF1bHRJbXBvcnRSZWNvcmRlciwgaXNDb3JlOiBib29sZWFuLFxuICAgIGZsYWdzOiBIYW5kbGVyRmxhZ3MsIGFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyOiBib29sZWFuLCBkZWZhdWx0U2VsZWN0b3I6IHN0cmluZ3xudWxsID0gbnVsbCk6XG4gICAge2RlY29yYXRvcjogTWFwPHN0cmluZywgdHMuRXhwcmVzc2lvbj4sIG1ldGFkYXRhOiBSM0RpcmVjdGl2ZU1ldGFkYXRhfXx1bmRlZmluZWQge1xuICBsZXQgZGlyZWN0aXZlOiBNYXA8c3RyaW5nLCB0cy5FeHByZXNzaW9uPjtcbiAgaWYgKGRlY29yYXRvciA9PT0gbnVsbCB8fCBkZWNvcmF0b3IuYXJncyA9PT0gbnVsbCB8fCBkZWNvcmF0b3IuYXJncy5sZW5ndGggPT09IDApIHtcbiAgICBkaXJlY3RpdmUgPSBuZXcgTWFwPHN0cmluZywgdHMuRXhwcmVzc2lvbj4oKTtcbiAgfSBlbHNlIGlmIChkZWNvcmF0b3IuYXJncy5sZW5ndGggIT09IDEpIHtcbiAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgIEVycm9yQ29kZS5ERUNPUkFUT1JfQVJJVFlfV1JPTkcsIERlY29yYXRvci5ub2RlRm9yRXJyb3IoZGVjb3JhdG9yKSxcbiAgICAgICAgYEluY29ycmVjdCBudW1iZXIgb2YgYXJndW1lbnRzIHRvIEAke2RlY29yYXRvci5uYW1lfSBkZWNvcmF0b3JgKTtcbiAgfSBlbHNlIHtcbiAgICBjb25zdCBtZXRhID0gdW53cmFwRXhwcmVzc2lvbihkZWNvcmF0b3IuYXJnc1swXSk7XG4gICAgaWYgKCF0cy5pc09iamVjdExpdGVyYWxFeHByZXNzaW9uKG1ldGEpKSB7XG4gICAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgICAgRXJyb3JDb2RlLkRFQ09SQVRPUl9BUkdfTk9UX0xJVEVSQUwsIG1ldGEsXG4gICAgICAgICAgYEAke2RlY29yYXRvci5uYW1lfSBhcmd1bWVudCBtdXN0IGJlIGFuIG9iamVjdCBsaXRlcmFsYCk7XG4gICAgfVxuICAgIGRpcmVjdGl2ZSA9IHJlZmxlY3RPYmplY3RMaXRlcmFsKG1ldGEpO1xuICB9XG5cbiAgaWYgKGRpcmVjdGl2ZS5oYXMoJ2ppdCcpKSB7XG4gICAgLy8gVGhlIG9ubHkgYWxsb3dlZCB2YWx1ZSBpcyB0cnVlLCBzbyB0aGVyZSdzIG5vIG5lZWQgdG8gZXhwYW5kIGZ1cnRoZXIuXG4gICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgfVxuXG4gIGNvbnN0IG1lbWJlcnMgPSByZWZsZWN0b3IuZ2V0TWVtYmVyc09mQ2xhc3MoY2xhenopO1xuXG4gIC8vIFByZWNvbXB1dGUgYSBsaXN0IG9mIHRzLkNsYXNzRWxlbWVudHMgdGhhdCBoYXZlIGRlY29yYXRvcnMuIFRoaXMgaW5jbHVkZXMgdGhpbmdzIGxpa2UgQElucHV0LFxuICAvLyBAT3V0cHV0LCBASG9zdEJpbmRpbmcsIGV0Yy5cbiAgY29uc3QgZGVjb3JhdGVkRWxlbWVudHMgPVxuICAgICAgbWVtYmVycy5maWx0ZXIobWVtYmVyID0+ICFtZW1iZXIuaXNTdGF0aWMgJiYgbWVtYmVyLmRlY29yYXRvcnMgIT09IG51bGwpO1xuXG4gIGNvbnN0IGNvcmVNb2R1bGUgPSBpc0NvcmUgPyB1bmRlZmluZWQgOiAnQGFuZ3VsYXIvY29yZSc7XG5cbiAgLy8gQ29uc3RydWN0IHRoZSBtYXAgb2YgaW5wdXRzIGJvdGggZnJvbSB0aGUgQERpcmVjdGl2ZS9AQ29tcG9uZW50XG4gIC8vIGRlY29yYXRvciwgYW5kIHRoZSBkZWNvcmF0ZWRcbiAgLy8gZmllbGRzLlxuICBjb25zdCBpbnB1dHNGcm9tTWV0YSA9IHBhcnNlRmllbGRUb1Byb3BlcnR5TWFwcGluZyhkaXJlY3RpdmUsICdpbnB1dHMnLCBldmFsdWF0b3IpO1xuICBjb25zdCBpbnB1dHNGcm9tRmllbGRzID0gcGFyc2VEZWNvcmF0ZWRGaWVsZHMoXG4gICAgICBmaWx0ZXJUb01lbWJlcnNXaXRoRGVjb3JhdG9yKGRlY29yYXRlZEVsZW1lbnRzLCAnSW5wdXQnLCBjb3JlTW9kdWxlKSwgZXZhbHVhdG9yLFxuICAgICAgcmVzb2x2ZUlucHV0KTtcblxuICAvLyBBbmQgb3V0cHV0cy5cbiAgY29uc3Qgb3V0cHV0c0Zyb21NZXRhID0gcGFyc2VGaWVsZFRvUHJvcGVydHlNYXBwaW5nKGRpcmVjdGl2ZSwgJ291dHB1dHMnLCBldmFsdWF0b3IpO1xuICBjb25zdCBvdXRwdXRzRnJvbUZpZWxkcyA9XG4gICAgICBwYXJzZURlY29yYXRlZEZpZWxkcyhcbiAgICAgICAgICBmaWx0ZXJUb01lbWJlcnNXaXRoRGVjb3JhdG9yKGRlY29yYXRlZEVsZW1lbnRzLCAnT3V0cHV0JywgY29yZU1vZHVsZSksIGV2YWx1YXRvcixcbiAgICAgICAgICByZXNvbHZlT3V0cHV0KSBhcyB7W2ZpZWxkOiBzdHJpbmddOiBzdHJpbmd9O1xuICAvLyBDb25zdHJ1Y3QgdGhlIGxpc3Qgb2YgcXVlcmllcy5cbiAgY29uc3QgY29udGVudENoaWxkRnJvbUZpZWxkcyA9IHF1ZXJpZXNGcm9tRmllbGRzKFxuICAgICAgZmlsdGVyVG9NZW1iZXJzV2l0aERlY29yYXRvcihkZWNvcmF0ZWRFbGVtZW50cywgJ0NvbnRlbnRDaGlsZCcsIGNvcmVNb2R1bGUpLCByZWZsZWN0b3IsXG4gICAgICBldmFsdWF0b3IpO1xuICBjb25zdCBjb250ZW50Q2hpbGRyZW5Gcm9tRmllbGRzID0gcXVlcmllc0Zyb21GaWVsZHMoXG4gICAgICBmaWx0ZXJUb01lbWJlcnNXaXRoRGVjb3JhdG9yKGRlY29yYXRlZEVsZW1lbnRzLCAnQ29udGVudENoaWxkcmVuJywgY29yZU1vZHVsZSksIHJlZmxlY3RvcixcbiAgICAgIGV2YWx1YXRvcik7XG5cbiAgY29uc3QgcXVlcmllcyA9IFsuLi5jb250ZW50Q2hpbGRGcm9tRmllbGRzLCAuLi5jb250ZW50Q2hpbGRyZW5Gcm9tRmllbGRzXTtcblxuICAvLyBDb25zdHJ1Y3QgdGhlIGxpc3Qgb2YgdmlldyBxdWVyaWVzLlxuICBjb25zdCB2aWV3Q2hpbGRGcm9tRmllbGRzID0gcXVlcmllc0Zyb21GaWVsZHMoXG4gICAgICBmaWx0ZXJUb01lbWJlcnNXaXRoRGVjb3JhdG9yKGRlY29yYXRlZEVsZW1lbnRzLCAnVmlld0NoaWxkJywgY29yZU1vZHVsZSksIHJlZmxlY3RvcixcbiAgICAgIGV2YWx1YXRvcik7XG4gIGNvbnN0IHZpZXdDaGlsZHJlbkZyb21GaWVsZHMgPSBxdWVyaWVzRnJvbUZpZWxkcyhcbiAgICAgIGZpbHRlclRvTWVtYmVyc1dpdGhEZWNvcmF0b3IoZGVjb3JhdGVkRWxlbWVudHMsICdWaWV3Q2hpbGRyZW4nLCBjb3JlTW9kdWxlKSwgcmVmbGVjdG9yLFxuICAgICAgZXZhbHVhdG9yKTtcbiAgY29uc3Qgdmlld1F1ZXJpZXMgPSBbLi4udmlld0NoaWxkRnJvbUZpZWxkcywgLi4udmlld0NoaWxkcmVuRnJvbUZpZWxkc107XG5cbiAgaWYgKGRpcmVjdGl2ZS5oYXMoJ3F1ZXJpZXMnKSkge1xuICAgIGNvbnN0IHF1ZXJpZXNGcm9tRGVjb3JhdG9yID1cbiAgICAgICAgZXh0cmFjdFF1ZXJpZXNGcm9tRGVjb3JhdG9yKGRpcmVjdGl2ZS5nZXQoJ3F1ZXJpZXMnKSEsIHJlZmxlY3RvciwgZXZhbHVhdG9yLCBpc0NvcmUpO1xuICAgIHF1ZXJpZXMucHVzaCguLi5xdWVyaWVzRnJvbURlY29yYXRvci5jb250ZW50KTtcbiAgICB2aWV3UXVlcmllcy5wdXNoKC4uLnF1ZXJpZXNGcm9tRGVjb3JhdG9yLnZpZXcpO1xuICB9XG5cbiAgLy8gUGFyc2UgdGhlIHNlbGVjdG9yLlxuICBsZXQgc2VsZWN0b3IgPSBkZWZhdWx0U2VsZWN0b3I7XG4gIGlmIChkaXJlY3RpdmUuaGFzKCdzZWxlY3RvcicpKSB7XG4gICAgY29uc3QgZXhwciA9IGRpcmVjdGl2ZS5nZXQoJ3NlbGVjdG9yJykhO1xuICAgIGNvbnN0IHJlc29sdmVkID0gZXZhbHVhdG9yLmV2YWx1YXRlKGV4cHIpO1xuICAgIGlmICh0eXBlb2YgcmVzb2x2ZWQgIT09ICdzdHJpbmcnKSB7XG4gICAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgICAgRXJyb3JDb2RlLlZBTFVFX0hBU19XUk9OR19UWVBFLCBleHByLCBgc2VsZWN0b3IgbXVzdCBiZSBhIHN0cmluZ2ApO1xuICAgIH1cbiAgICAvLyB1c2UgZGVmYXVsdCBzZWxlY3RvciBpbiBjYXNlIHNlbGVjdG9yIGlzIGFuIGVtcHR5IHN0cmluZ1xuICAgIHNlbGVjdG9yID0gcmVzb2x2ZWQgPT09ICcnID8gZGVmYXVsdFNlbGVjdG9yIDogcmVzb2x2ZWQ7XG4gICAgaWYgKCFzZWxlY3Rvcikge1xuICAgICAgdGhyb3cgbmV3IEZhdGFsRGlhZ25vc3RpY0Vycm9yKFxuICAgICAgICAgIEVycm9yQ29kZS5ESVJFQ1RJVkVfTUlTU0lOR19TRUxFQ1RPUiwgZXhwcixcbiAgICAgICAgICBgRGlyZWN0aXZlICR7Y2xhenoubmFtZS50ZXh0fSBoYXMgbm8gc2VsZWN0b3IsIHBsZWFzZSBhZGQgaXQhYCk7XG4gICAgfVxuICB9XG5cbiAgY29uc3QgaG9zdCA9IGV4dHJhY3RIb3N0QmluZGluZ3MoZGVjb3JhdGVkRWxlbWVudHMsIGV2YWx1YXRvciwgY29yZU1vZHVsZSwgZGlyZWN0aXZlKTtcblxuICBjb25zdCBwcm92aWRlcnM6IEV4cHJlc3Npb258bnVsbCA9IGRpcmVjdGl2ZS5oYXMoJ3Byb3ZpZGVycycpID9cbiAgICAgIG5ldyBXcmFwcGVkTm9kZUV4cHIoXG4gICAgICAgICAgYW5ub3RhdGVGb3JDbG9zdXJlQ29tcGlsZXIgP1xuICAgICAgICAgICAgICB3cmFwRnVuY3Rpb25FeHByZXNzaW9uc0luUGFyZW5zKGRpcmVjdGl2ZS5nZXQoJ3Byb3ZpZGVycycpISkgOlxuICAgICAgICAgICAgICBkaXJlY3RpdmUuZ2V0KCdwcm92aWRlcnMnKSEpIDpcbiAgICAgIG51bGw7XG5cbiAgLy8gRGV0ZXJtaW5lIGlmIGBuZ09uQ2hhbmdlc2AgaXMgYSBsaWZlY3ljbGUgaG9vayBkZWZpbmVkIG9uIHRoZSBjb21wb25lbnQuXG4gIGNvbnN0IHVzZXNPbkNoYW5nZXMgPSBtZW1iZXJzLnNvbWUoXG4gICAgICBtZW1iZXIgPT4gIW1lbWJlci5pc1N0YXRpYyAmJiBtZW1iZXIua2luZCA9PT0gQ2xhc3NNZW1iZXJLaW5kLk1ldGhvZCAmJlxuICAgICAgICAgIG1lbWJlci5uYW1lID09PSAnbmdPbkNoYW5nZXMnKTtcblxuICAvLyBQYXJzZSBleHBvcnRBcy5cbiAgbGV0IGV4cG9ydEFzOiBzdHJpbmdbXXxudWxsID0gbnVsbDtcbiAgaWYgKGRpcmVjdGl2ZS5oYXMoJ2V4cG9ydEFzJykpIHtcbiAgICBjb25zdCBleHByID0gZGlyZWN0aXZlLmdldCgnZXhwb3J0QXMnKSE7XG4gICAgY29uc3QgcmVzb2x2ZWQgPSBldmFsdWF0b3IuZXZhbHVhdGUoZXhwcik7XG4gICAgaWYgKHR5cGVvZiByZXNvbHZlZCAhPT0gJ3N0cmluZycpIHtcbiAgICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgICBFcnJvckNvZGUuVkFMVUVfSEFTX1dST05HX1RZUEUsIGV4cHIsIGBleHBvcnRBcyBtdXN0IGJlIGEgc3RyaW5nYCk7XG4gICAgfVxuICAgIGV4cG9ydEFzID0gcmVzb2x2ZWQuc3BsaXQoJywnKS5tYXAocGFydCA9PiBwYXJ0LnRyaW0oKSk7XG4gIH1cblxuICBjb25zdCByYXdDdG9yRGVwcyA9IGdldENvbnN0cnVjdG9yRGVwZW5kZW5jaWVzKGNsYXp6LCByZWZsZWN0b3IsIGRlZmF1bHRJbXBvcnRSZWNvcmRlciwgaXNDb3JlKTtcbiAgbGV0IGN0b3JEZXBzOiBSM0RlcGVuZGVuY3lNZXRhZGF0YVtdfCdpbnZhbGlkJ3xudWxsO1xuXG4gIC8vIE5vbi1hYnN0cmFjdCBkaXJlY3RpdmVzICh0aG9zZSB3aXRoIGEgc2VsZWN0b3IpIHJlcXVpcmUgdmFsaWQgY29uc3RydWN0b3IgZGVwZW5kZW5jaWVzLCB3aGVyZWFzXG4gIC8vIGFic3RyYWN0IGRpcmVjdGl2ZXMgYXJlIGFsbG93ZWQgdG8gaGF2ZSBpbnZhbGlkIGRlcGVuZGVuY2llcywgZ2l2ZW4gdGhhdCBhIHN1YmNsYXNzIG1heSBjYWxsXG4gIC8vIHRoZSBjb25zdHJ1Y3RvciBleHBsaWNpdGx5LlxuICBpZiAoc2VsZWN0b3IgIT09IG51bGwpIHtcbiAgICBjdG9yRGVwcyA9IHZhbGlkYXRlQ29uc3RydWN0b3JEZXBlbmRlbmNpZXMoY2xhenosIHJhd0N0b3JEZXBzKTtcbiAgfSBlbHNlIHtcbiAgICBjdG9yRGVwcyA9IHVud3JhcENvbnN0cnVjdG9yRGVwZW5kZW5jaWVzKHJhd0N0b3JEZXBzKTtcbiAgfVxuXG4gIC8vIERldGVjdCBpZiB0aGUgY29tcG9uZW50IGluaGVyaXRzIGZyb20gYW5vdGhlciBjbGFzc1xuICBjb25zdCB1c2VzSW5oZXJpdGFuY2UgPSByZWZsZWN0b3IuaGFzQmFzZUNsYXNzKGNsYXp6KTtcbiAgY29uc3QgdHlwZSA9IHdyYXBUeXBlUmVmZXJlbmNlKHJlZmxlY3RvciwgY2xhenopO1xuICBjb25zdCBpbnRlcm5hbFR5cGUgPSBuZXcgV3JhcHBlZE5vZGVFeHByKHJlZmxlY3Rvci5nZXRJbnRlcm5hbE5hbWVPZkNsYXNzKGNsYXp6KSk7XG5cbiAgY29uc3QgbWV0YWRhdGE6IFIzRGlyZWN0aXZlTWV0YWRhdGEgPSB7XG4gICAgbmFtZTogY2xhenoubmFtZS50ZXh0LFxuICAgIGRlcHM6IGN0b3JEZXBzLFxuICAgIGhvc3QsXG4gICAgbGlmZWN5Y2xlOiB7XG4gICAgICB1c2VzT25DaGFuZ2VzLFxuICAgIH0sXG4gICAgaW5wdXRzOiB7Li4uaW5wdXRzRnJvbU1ldGEsIC4uLmlucHV0c0Zyb21GaWVsZHN9LFxuICAgIG91dHB1dHM6IHsuLi5vdXRwdXRzRnJvbU1ldGEsIC4uLm91dHB1dHNGcm9tRmllbGRzfSxcbiAgICBxdWVyaWVzLFxuICAgIHZpZXdRdWVyaWVzLFxuICAgIHNlbGVjdG9yLFxuICAgIGZ1bGxJbmhlcml0YW5jZTogISEoZmxhZ3MgJiBIYW5kbGVyRmxhZ3MuRlVMTF9JTkhFUklUQU5DRSksXG4gICAgdHlwZSxcbiAgICBpbnRlcm5hbFR5cGUsXG4gICAgdHlwZUFyZ3VtZW50Q291bnQ6IHJlZmxlY3Rvci5nZXRHZW5lcmljQXJpdHlPZkNsYXNzKGNsYXp6KSB8fCAwLFxuICAgIHR5cGVTb3VyY2VTcGFuOiBjcmVhdGVTb3VyY2VTcGFuKGNsYXp6Lm5hbWUpLFxuICAgIHVzZXNJbmhlcml0YW5jZSxcbiAgICBleHBvcnRBcyxcbiAgICBwcm92aWRlcnNcbiAgfTtcbiAgcmV0dXJuIHtkZWNvcmF0b3I6IGRpcmVjdGl2ZSwgbWV0YWRhdGF9O1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZXh0cmFjdFF1ZXJ5TWV0YWRhdGEoXG4gICAgZXhwck5vZGU6IHRzLk5vZGUsIG5hbWU6IHN0cmluZywgYXJnczogUmVhZG9ubHlBcnJheTx0cy5FeHByZXNzaW9uPiwgcHJvcGVydHlOYW1lOiBzdHJpbmcsXG4gICAgcmVmbGVjdG9yOiBSZWZsZWN0aW9uSG9zdCwgZXZhbHVhdG9yOiBQYXJ0aWFsRXZhbHVhdG9yKTogUjNRdWVyeU1ldGFkYXRhIHtcbiAgaWYgKGFyZ3MubGVuZ3RoID09PSAwKSB7XG4gICAgdGhyb3cgbmV3IEZhdGFsRGlhZ25vc3RpY0Vycm9yKFxuICAgICAgICBFcnJvckNvZGUuREVDT1JBVE9SX0FSSVRZX1dST05HLCBleHByTm9kZSwgYEAke25hbWV9IG11c3QgaGF2ZSBhcmd1bWVudHNgKTtcbiAgfVxuICBjb25zdCBmaXJzdCA9IG5hbWUgPT09ICdWaWV3Q2hpbGQnIHx8IG5hbWUgPT09ICdDb250ZW50Q2hpbGQnO1xuICBjb25zdCBub2RlID0gdW53cmFwRm9yd2FyZFJlZihhcmdzWzBdLCByZWZsZWN0b3IpO1xuICBjb25zdCBhcmcgPSBldmFsdWF0b3IuZXZhbHVhdGUobm9kZSk7XG5cbiAgLyoqIFdoZXRoZXIgb3Igbm90IHRoaXMgcXVlcnkgc2hvdWxkIGNvbGxlY3Qgb25seSBzdGF0aWMgcmVzdWx0cyAoc2VlIHZpZXcvYXBpLnRzKSAgKi9cbiAgbGV0IGlzU3RhdGljOiBib29sZWFuID0gZmFsc2U7XG5cbiAgLy8gRXh0cmFjdCB0aGUgcHJlZGljYXRlXG4gIGxldCBwcmVkaWNhdGU6IEV4cHJlc3Npb258c3RyaW5nW118bnVsbCA9IG51bGw7XG4gIGlmIChhcmcgaW5zdGFuY2VvZiBSZWZlcmVuY2UgfHwgYXJnIGluc3RhbmNlb2YgRHluYW1pY1ZhbHVlKSB7XG4gICAgLy8gUmVmZXJlbmNlcyBhbmQgcHJlZGljYXRlcyB0aGF0IGNvdWxkIG5vdCBiZSBldmFsdWF0ZWQgc3RhdGljYWxseSBhcmUgZW1pdHRlZCBhcyBpcy5cbiAgICBwcmVkaWNhdGUgPSBuZXcgV3JhcHBlZE5vZGVFeHByKG5vZGUpO1xuICB9IGVsc2UgaWYgKHR5cGVvZiBhcmcgPT09ICdzdHJpbmcnKSB7XG4gICAgcHJlZGljYXRlID0gW2FyZ107XG4gIH0gZWxzZSBpZiAoaXNTdHJpbmdBcnJheU9yRGllKGFyZywgYEAke25hbWV9IHByZWRpY2F0ZWAsIG5vZGUpKSB7XG4gICAgcHJlZGljYXRlID0gYXJnO1xuICB9IGVsc2Uge1xuICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgRXJyb3JDb2RlLlZBTFVFX0hBU19XUk9OR19UWVBFLCBub2RlLCBgQCR7bmFtZX0gcHJlZGljYXRlIGNhbm5vdCBiZSBpbnRlcnByZXRlZGApO1xuICB9XG5cbiAgLy8gRXh0cmFjdCB0aGUgcmVhZCBhbmQgZGVzY2VuZGFudHMgb3B0aW9ucy5cbiAgbGV0IHJlYWQ6IEV4cHJlc3Npb258bnVsbCA9IG51bGw7XG4gIC8vIFRoZSBkZWZhdWx0IHZhbHVlIGZvciBkZXNjZW5kYW50cyBpcyB0cnVlIGZvciBldmVyeSBkZWNvcmF0b3IgZXhjZXB0IEBDb250ZW50Q2hpbGRyZW4uXG4gIGxldCBkZXNjZW5kYW50czogYm9vbGVhbiA9IG5hbWUgIT09ICdDb250ZW50Q2hpbGRyZW4nO1xuICBpZiAoYXJncy5sZW5ndGggPT09IDIpIHtcbiAgICBjb25zdCBvcHRpb25zRXhwciA9IHVud3JhcEV4cHJlc3Npb24oYXJnc1sxXSk7XG4gICAgaWYgKCF0cy5pc09iamVjdExpdGVyYWxFeHByZXNzaW9uKG9wdGlvbnNFeHByKSkge1xuICAgICAgdGhyb3cgbmV3IEZhdGFsRGlhZ25vc3RpY0Vycm9yKFxuICAgICAgICAgIEVycm9yQ29kZS5ERUNPUkFUT1JfQVJHX05PVF9MSVRFUkFMLCBvcHRpb25zRXhwcixcbiAgICAgICAgICBgQCR7bmFtZX0gb3B0aW9ucyBtdXN0IGJlIGFuIG9iamVjdCBsaXRlcmFsYCk7XG4gICAgfVxuICAgIGNvbnN0IG9wdGlvbnMgPSByZWZsZWN0T2JqZWN0TGl0ZXJhbChvcHRpb25zRXhwcik7XG4gICAgaWYgKG9wdGlvbnMuaGFzKCdyZWFkJykpIHtcbiAgICAgIHJlYWQgPSBuZXcgV3JhcHBlZE5vZGVFeHByKG9wdGlvbnMuZ2V0KCdyZWFkJykhKTtcbiAgICB9XG5cbiAgICBpZiAob3B0aW9ucy5oYXMoJ2Rlc2NlbmRhbnRzJykpIHtcbiAgICAgIGNvbnN0IGRlc2NlbmRhbnRzRXhwciA9IG9wdGlvbnMuZ2V0KCdkZXNjZW5kYW50cycpITtcbiAgICAgIGNvbnN0IGRlc2NlbmRhbnRzVmFsdWUgPSBldmFsdWF0b3IuZXZhbHVhdGUoZGVzY2VuZGFudHNFeHByKTtcbiAgICAgIGlmICh0eXBlb2YgZGVzY2VuZGFudHNWYWx1ZSAhPT0gJ2Jvb2xlYW4nKSB7XG4gICAgICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgICAgIEVycm9yQ29kZS5WQUxVRV9IQVNfV1JPTkdfVFlQRSwgZGVzY2VuZGFudHNFeHByLFxuICAgICAgICAgICAgYEAke25hbWV9IG9wdGlvbnMuZGVzY2VuZGFudHMgbXVzdCBiZSBhIGJvb2xlYW5gKTtcbiAgICAgIH1cbiAgICAgIGRlc2NlbmRhbnRzID0gZGVzY2VuZGFudHNWYWx1ZTtcbiAgICB9XG5cbiAgICBpZiAob3B0aW9ucy5oYXMoJ3N0YXRpYycpKSB7XG4gICAgICBjb25zdCBzdGF0aWNWYWx1ZSA9IGV2YWx1YXRvci5ldmFsdWF0ZShvcHRpb25zLmdldCgnc3RhdGljJykhKTtcbiAgICAgIGlmICh0eXBlb2Ygc3RhdGljVmFsdWUgIT09ICdib29sZWFuJykge1xuICAgICAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgICAgICBFcnJvckNvZGUuVkFMVUVfSEFTX1dST05HX1RZUEUsIG5vZGUsIGBAJHtuYW1lfSBvcHRpb25zLnN0YXRpYyBtdXN0IGJlIGEgYm9vbGVhbmApO1xuICAgICAgfVxuICAgICAgaXNTdGF0aWMgPSBzdGF0aWNWYWx1ZTtcbiAgICB9XG5cbiAgfSBlbHNlIGlmIChhcmdzLmxlbmd0aCA+IDIpIHtcbiAgICAvLyBUb28gbWFueSBhcmd1bWVudHMuXG4gICAgdGhyb3cgbmV3IEZhdGFsRGlhZ25vc3RpY0Vycm9yKFxuICAgICAgICBFcnJvckNvZGUuREVDT1JBVE9SX0FSSVRZX1dST05HLCBub2RlLCBgQCR7bmFtZX0gaGFzIHRvbyBtYW55IGFyZ3VtZW50c2ApO1xuICB9XG5cbiAgcmV0dXJuIHtcbiAgICBwcm9wZXJ0eU5hbWUsXG4gICAgcHJlZGljYXRlLFxuICAgIGZpcnN0LFxuICAgIGRlc2NlbmRhbnRzLFxuICAgIHJlYWQsXG4gICAgc3RhdGljOiBpc1N0YXRpYyxcbiAgfTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGV4dHJhY3RRdWVyaWVzRnJvbURlY29yYXRvcihcbiAgICBxdWVyeURhdGE6IHRzLkV4cHJlc3Npb24sIHJlZmxlY3RvcjogUmVmbGVjdGlvbkhvc3QsIGV2YWx1YXRvcjogUGFydGlhbEV2YWx1YXRvcixcbiAgICBpc0NvcmU6IGJvb2xlYW4pOiB7XG4gIGNvbnRlbnQ6IFIzUXVlcnlNZXRhZGF0YVtdLFxuICB2aWV3OiBSM1F1ZXJ5TWV0YWRhdGFbXSxcbn0ge1xuICBjb25zdCBjb250ZW50OiBSM1F1ZXJ5TWV0YWRhdGFbXSA9IFtdLCB2aWV3OiBSM1F1ZXJ5TWV0YWRhdGFbXSA9IFtdO1xuICBpZiAoIXRzLmlzT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24ocXVlcnlEYXRhKSkge1xuICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgRXJyb3JDb2RlLlZBTFVFX0hBU19XUk9OR19UWVBFLCBxdWVyeURhdGEsXG4gICAgICAgICdEZWNvcmF0b3IgcXVlcmllcyBtZXRhZGF0YSBtdXN0IGJlIGFuIG9iamVjdCBsaXRlcmFsJyk7XG4gIH1cbiAgcmVmbGVjdE9iamVjdExpdGVyYWwocXVlcnlEYXRhKS5mb3JFYWNoKChxdWVyeUV4cHIsIHByb3BlcnR5TmFtZSkgPT4ge1xuICAgIHF1ZXJ5RXhwciA9IHVud3JhcEV4cHJlc3Npb24ocXVlcnlFeHByKTtcbiAgICBpZiAoIXRzLmlzTmV3RXhwcmVzc2lvbihxdWVyeUV4cHIpIHx8ICF0cy5pc0lkZW50aWZpZXIocXVlcnlFeHByLmV4cHJlc3Npb24pKSB7XG4gICAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgICAgRXJyb3JDb2RlLlZBTFVFX0hBU19XUk9OR19UWVBFLCBxdWVyeURhdGEsXG4gICAgICAgICAgJ0RlY29yYXRvciBxdWVyeSBtZXRhZGF0YSBtdXN0IGJlIGFuIGluc3RhbmNlIG9mIGEgcXVlcnkgdHlwZScpO1xuICAgIH1cbiAgICBjb25zdCB0eXBlID0gcmVmbGVjdG9yLmdldEltcG9ydE9mSWRlbnRpZmllcihxdWVyeUV4cHIuZXhwcmVzc2lvbik7XG4gICAgaWYgKHR5cGUgPT09IG51bGwgfHwgKCFpc0NvcmUgJiYgdHlwZS5mcm9tICE9PSAnQGFuZ3VsYXIvY29yZScpIHx8XG4gICAgICAgICFRVUVSWV9UWVBFUy5oYXModHlwZS5uYW1lKSkge1xuICAgICAgdGhyb3cgbmV3IEZhdGFsRGlhZ25vc3RpY0Vycm9yKFxuICAgICAgICAgIEVycm9yQ29kZS5WQUxVRV9IQVNfV1JPTkdfVFlQRSwgcXVlcnlEYXRhLFxuICAgICAgICAgICdEZWNvcmF0b3IgcXVlcnkgbWV0YWRhdGEgbXVzdCBiZSBhbiBpbnN0YW5jZSBvZiBhIHF1ZXJ5IHR5cGUnKTtcbiAgICB9XG5cbiAgICBjb25zdCBxdWVyeSA9IGV4dHJhY3RRdWVyeU1ldGFkYXRhKFxuICAgICAgICBxdWVyeUV4cHIsIHR5cGUubmFtZSwgcXVlcnlFeHByLmFyZ3VtZW50cyB8fCBbXSwgcHJvcGVydHlOYW1lLCByZWZsZWN0b3IsIGV2YWx1YXRvcik7XG4gICAgaWYgKHR5cGUubmFtZS5zdGFydHNXaXRoKCdDb250ZW50JykpIHtcbiAgICAgIGNvbnRlbnQucHVzaChxdWVyeSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHZpZXcucHVzaChxdWVyeSk7XG4gICAgfVxuICB9KTtcbiAgcmV0dXJuIHtjb250ZW50LCB2aWV3fTtcbn1cblxuZnVuY3Rpb24gaXNTdHJpbmdBcnJheU9yRGllKHZhbHVlOiBhbnksIG5hbWU6IHN0cmluZywgbm9kZTogdHMuRXhwcmVzc2lvbik6IHZhbHVlIGlzIHN0cmluZ1tdIHtcbiAgaWYgKCFBcnJheS5pc0FycmF5KHZhbHVlKSkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIGZvciAobGV0IGkgPSAwOyBpIDwgdmFsdWUubGVuZ3RoOyBpKyspIHtcbiAgICBpZiAodHlwZW9mIHZhbHVlW2ldICE9PSAnc3RyaW5nJykge1xuICAgICAgdGhyb3cgbmV3IEZhdGFsRGlhZ25vc3RpY0Vycm9yKFxuICAgICAgICAgIEVycm9yQ29kZS5WQUxVRV9IQVNfV1JPTkdfVFlQRSwgbm9kZSxcbiAgICAgICAgICBgRmFpbGVkIHRvIHJlc29sdmUgJHtuYW1lfSBhdCBwb3NpdGlvbiAke2l9IHRvIGEgc3RyaW5nYCk7XG4gICAgfVxuICB9XG4gIHJldHVybiB0cnVlO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gcGFyc2VGaWVsZEFycmF5VmFsdWUoXG4gICAgZGlyZWN0aXZlOiBNYXA8c3RyaW5nLCB0cy5FeHByZXNzaW9uPiwgZmllbGQ6IHN0cmluZywgZXZhbHVhdG9yOiBQYXJ0aWFsRXZhbHVhdG9yKTogbnVsbHxcbiAgICBzdHJpbmdbXSB7XG4gIGlmICghZGlyZWN0aXZlLmhhcyhmaWVsZCkpIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIC8vIFJlc29sdmUgdGhlIGZpZWxkIG9mIGludGVyZXN0IGZyb20gdGhlIGRpcmVjdGl2ZSBtZXRhZGF0YSB0byBhIHN0cmluZ1tdLlxuICBjb25zdCBleHByZXNzaW9uID0gZGlyZWN0aXZlLmdldChmaWVsZCkhO1xuICBjb25zdCB2YWx1ZSA9IGV2YWx1YXRvci5ldmFsdWF0ZShleHByZXNzaW9uKTtcbiAgaWYgKCFpc1N0cmluZ0FycmF5T3JEaWUodmFsdWUsIGZpZWxkLCBleHByZXNzaW9uKSkge1xuICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgRXJyb3JDb2RlLlZBTFVFX0hBU19XUk9OR19UWVBFLCBleHByZXNzaW9uLFxuICAgICAgICBgRmFpbGVkIHRvIHJlc29sdmUgQERpcmVjdGl2ZS4ke2ZpZWxkfSB0byBhIHN0cmluZyBhcnJheWApO1xuICB9XG5cbiAgcmV0dXJuIHZhbHVlO1xufVxuXG4vKipcbiAqIEludGVycHJldCBwcm9wZXJ0eSBtYXBwaW5nIGZpZWxkcyBvbiB0aGUgZGVjb3JhdG9yIChlLmcuIGlucHV0cyBvciBvdXRwdXRzKSBhbmQgcmV0dXJuIHRoZVxuICogY29ycmVjdGx5IHNoYXBlZCBtZXRhZGF0YSBvYmplY3QuXG4gKi9cbmZ1bmN0aW9uIHBhcnNlRmllbGRUb1Byb3BlcnR5TWFwcGluZyhcbiAgICBkaXJlY3RpdmU6IE1hcDxzdHJpbmcsIHRzLkV4cHJlc3Npb24+LCBmaWVsZDogc3RyaW5nLFxuICAgIGV2YWx1YXRvcjogUGFydGlhbEV2YWx1YXRvcik6IHtbZmllbGQ6IHN0cmluZ106IHN0cmluZ30ge1xuICBjb25zdCBtZXRhVmFsdWVzID0gcGFyc2VGaWVsZEFycmF5VmFsdWUoZGlyZWN0aXZlLCBmaWVsZCwgZXZhbHVhdG9yKTtcbiAgaWYgKCFtZXRhVmFsdWVzKSB7XG4gICAgcmV0dXJuIEVNUFRZX09CSkVDVDtcbiAgfVxuXG4gIHJldHVybiBtZXRhVmFsdWVzLnJlZHVjZSgocmVzdWx0cywgdmFsdWUpID0+IHtcbiAgICAvLyBFaXRoZXIgdGhlIHZhbHVlIGlzICdmaWVsZCcgb3IgJ2ZpZWxkOiBwcm9wZXJ0eScuIEluIHRoZSBmaXJzdCBjYXNlLCBgcHJvcGVydHlgIHdpbGxcbiAgICAvLyBiZSB1bmRlZmluZWQsIGluIHdoaWNoIGNhc2UgdGhlIGZpZWxkIG5hbWUgc2hvdWxkIGFsc28gYmUgdXNlZCBhcyB0aGUgcHJvcGVydHkgbmFtZS5cbiAgICBjb25zdCBbZmllbGQsIHByb3BlcnR5XSA9IHZhbHVlLnNwbGl0KCc6JywgMikubWFwKHN0ciA9PiBzdHIudHJpbSgpKTtcbiAgICByZXN1bHRzW2ZpZWxkXSA9IHByb3BlcnR5IHx8IGZpZWxkO1xuICAgIHJldHVybiByZXN1bHRzO1xuICB9LCB7fSBhcyB7W2ZpZWxkOiBzdHJpbmddOiBzdHJpbmd9KTtcbn1cblxuLyoqXG4gKiBQYXJzZSBwcm9wZXJ0eSBkZWNvcmF0b3JzIChlLmcuIGBJbnB1dGAgb3IgYE91dHB1dGApIGFuZCByZXR1cm4gdGhlIGNvcnJlY3RseSBzaGFwZWQgbWV0YWRhdGFcbiAqIG9iamVjdC5cbiAqL1xuZnVuY3Rpb24gcGFyc2VEZWNvcmF0ZWRGaWVsZHMoXG4gICAgZmllbGRzOiB7bWVtYmVyOiBDbGFzc01lbWJlciwgZGVjb3JhdG9yczogRGVjb3JhdG9yW119W10sIGV2YWx1YXRvcjogUGFydGlhbEV2YWx1YXRvcixcbiAgICBtYXBWYWx1ZVJlc29sdmVyOiAocHVibGljTmFtZTogc3RyaW5nLCBpbnRlcm5hbE5hbWU6IHN0cmluZykgPT5cbiAgICAgICAgc3RyaW5nIHwgW3N0cmluZywgc3RyaW5nXSk6IHtbZmllbGQ6IHN0cmluZ106IHN0cmluZ3xbc3RyaW5nLCBzdHJpbmddfSB7XG4gIHJldHVybiBmaWVsZHMucmVkdWNlKChyZXN1bHRzLCBmaWVsZCkgPT4ge1xuICAgIGNvbnN0IGZpZWxkTmFtZSA9IGZpZWxkLm1lbWJlci5uYW1lO1xuICAgIGZpZWxkLmRlY29yYXRvcnMuZm9yRWFjaChkZWNvcmF0b3IgPT4ge1xuICAgICAgLy8gVGhlIGRlY29yYXRvciBlaXRoZXIgZG9lc24ndCBoYXZlIGFuIGFyZ3VtZW50IChASW5wdXQoKSkgaW4gd2hpY2ggY2FzZSB0aGUgcHJvcGVydHlcbiAgICAgIC8vIG5hbWUgaXMgdXNlZCwgb3IgaXQgaGFzIG9uZSBhcmd1bWVudCAoQE91dHB1dCgnbmFtZWQnKSkuXG4gICAgICBpZiAoZGVjb3JhdG9yLmFyZ3MgPT0gbnVsbCB8fCBkZWNvcmF0b3IuYXJncy5sZW5ndGggPT09IDApIHtcbiAgICAgICAgcmVzdWx0c1tmaWVsZE5hbWVdID0gZmllbGROYW1lO1xuICAgICAgfSBlbHNlIGlmIChkZWNvcmF0b3IuYXJncy5sZW5ndGggPT09IDEpIHtcbiAgICAgICAgY29uc3QgcHJvcGVydHkgPSBldmFsdWF0b3IuZXZhbHVhdGUoZGVjb3JhdG9yLmFyZ3NbMF0pO1xuICAgICAgICBpZiAodHlwZW9mIHByb3BlcnR5ICE9PSAnc3RyaW5nJykge1xuICAgICAgICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgICAgICAgRXJyb3JDb2RlLlZBTFVFX0hBU19XUk9OR19UWVBFLCBEZWNvcmF0b3Iubm9kZUZvckVycm9yKGRlY29yYXRvciksXG4gICAgICAgICAgICAgIGBAJHtkZWNvcmF0b3IubmFtZX0gZGVjb3JhdG9yIGFyZ3VtZW50IG11c3QgcmVzb2x2ZSB0byBhIHN0cmluZ2ApO1xuICAgICAgICB9XG4gICAgICAgIHJlc3VsdHNbZmllbGROYW1lXSA9IG1hcFZhbHVlUmVzb2x2ZXIocHJvcGVydHksIGZpZWxkTmFtZSk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICAvLyBUb28gbWFueSBhcmd1bWVudHMuXG4gICAgICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgICAgIEVycm9yQ29kZS5ERUNPUkFUT1JfQVJJVFlfV1JPTkcsIERlY29yYXRvci5ub2RlRm9yRXJyb3IoZGVjb3JhdG9yKSxcbiAgICAgICAgICAgIGBAJHtkZWNvcmF0b3IubmFtZX0gY2FuIGhhdmUgYXQgbW9zdCBvbmUgYXJndW1lbnQsIGdvdCAke1xuICAgICAgICAgICAgICAgIGRlY29yYXRvci5hcmdzLmxlbmd0aH0gYXJndW1lbnQocylgKTtcbiAgICAgIH1cbiAgICB9KTtcbiAgICByZXR1cm4gcmVzdWx0cztcbiAgfSwge30gYXMge1tmaWVsZDogc3RyaW5nXTogc3RyaW5nIHwgW3N0cmluZywgc3RyaW5nXX0pO1xufVxuXG5mdW5jdGlvbiByZXNvbHZlSW5wdXQocHVibGljTmFtZTogc3RyaW5nLCBpbnRlcm5hbE5hbWU6IHN0cmluZyk6IFtzdHJpbmcsIHN0cmluZ10ge1xuICByZXR1cm4gW3B1YmxpY05hbWUsIGludGVybmFsTmFtZV07XG59XG5cbmZ1bmN0aW9uIHJlc29sdmVPdXRwdXQocHVibGljTmFtZTogc3RyaW5nLCBpbnRlcm5hbE5hbWU6IHN0cmluZykge1xuICByZXR1cm4gcHVibGljTmFtZTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHF1ZXJpZXNGcm9tRmllbGRzKFxuICAgIGZpZWxkczoge21lbWJlcjogQ2xhc3NNZW1iZXIsIGRlY29yYXRvcnM6IERlY29yYXRvcltdfVtdLCByZWZsZWN0b3I6IFJlZmxlY3Rpb25Ib3N0LFxuICAgIGV2YWx1YXRvcjogUGFydGlhbEV2YWx1YXRvcik6IFIzUXVlcnlNZXRhZGF0YVtdIHtcbiAgcmV0dXJuIGZpZWxkcy5tYXAoKHttZW1iZXIsIGRlY29yYXRvcnN9KSA9PiB7XG4gICAgY29uc3QgZGVjb3JhdG9yID0gZGVjb3JhdG9yc1swXTtcbiAgICBjb25zdCBub2RlID0gbWVtYmVyLm5vZGUgfHwgRGVjb3JhdG9yLm5vZGVGb3JFcnJvcihkZWNvcmF0b3IpO1xuXG4gICAgLy8gVGhyb3cgaW4gY2FzZSBvZiBgQElucHV0KCkgQENvbnRlbnRDaGlsZCgnZm9vJykgZm9vOiBhbnlgLCB3aGljaCBpcyBub3Qgc3VwcG9ydGVkIGluIEl2eVxuICAgIGlmIChtZW1iZXIuZGVjb3JhdG9ycyEuc29tZSh2ID0+IHYubmFtZSA9PT0gJ0lucHV0JykpIHtcbiAgICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgICBFcnJvckNvZGUuREVDT1JBVE9SX0NPTExJU0lPTiwgbm9kZSxcbiAgICAgICAgICAnQ2Fubm90IGNvbWJpbmUgQElucHV0IGRlY29yYXRvcnMgd2l0aCBxdWVyeSBkZWNvcmF0b3JzJyk7XG4gICAgfVxuICAgIGlmIChkZWNvcmF0b3JzLmxlbmd0aCAhPT0gMSkge1xuICAgICAgdGhyb3cgbmV3IEZhdGFsRGlhZ25vc3RpY0Vycm9yKFxuICAgICAgICAgIEVycm9yQ29kZS5ERUNPUkFUT1JfQ09MTElTSU9OLCBub2RlLFxuICAgICAgICAgICdDYW5ub3QgaGF2ZSBtdWx0aXBsZSBxdWVyeSBkZWNvcmF0b3JzIG9uIHRoZSBzYW1lIGNsYXNzIG1lbWJlcicpO1xuICAgIH0gZWxzZSBpZiAoIWlzUHJvcGVydHlUeXBlTWVtYmVyKG1lbWJlcikpIHtcbiAgICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgICBFcnJvckNvZGUuREVDT1JBVE9SX1VORVhQRUNURUQsIG5vZGUsXG4gICAgICAgICAgJ1F1ZXJ5IGRlY29yYXRvciBtdXN0IGdvIG9uIGEgcHJvcGVydHktdHlwZSBtZW1iZXInKTtcbiAgICB9XG4gICAgcmV0dXJuIGV4dHJhY3RRdWVyeU1ldGFkYXRhKFxuICAgICAgICBub2RlLCBkZWNvcmF0b3IubmFtZSwgZGVjb3JhdG9yLmFyZ3MgfHwgW10sIG1lbWJlci5uYW1lLCByZWZsZWN0b3IsIGV2YWx1YXRvcik7XG4gIH0pO1xufVxuXG5mdW5jdGlvbiBpc1Byb3BlcnR5VHlwZU1lbWJlcihtZW1iZXI6IENsYXNzTWVtYmVyKTogYm9vbGVhbiB7XG4gIHJldHVybiBtZW1iZXIua2luZCA9PT0gQ2xhc3NNZW1iZXJLaW5kLkdldHRlciB8fCBtZW1iZXIua2luZCA9PT0gQ2xhc3NNZW1iZXJLaW5kLlNldHRlciB8fFxuICAgICAgbWVtYmVyLmtpbmQgPT09IENsYXNzTWVtYmVyS2luZC5Qcm9wZXJ0eTtcbn1cblxudHlwZSBTdHJpbmdNYXA8VD4gPSB7XG4gIFtrZXk6IHN0cmluZ106IFQ7XG59O1xuXG5mdW5jdGlvbiBldmFsdWF0ZUhvc3RFeHByZXNzaW9uQmluZGluZ3MoXG4gICAgaG9zdEV4cHI6IHRzLkV4cHJlc3Npb24sIGV2YWx1YXRvcjogUGFydGlhbEV2YWx1YXRvcik6IFBhcnNlZEhvc3RCaW5kaW5ncyB7XG4gIGNvbnN0IGhvc3RNZXRhTWFwID0gZXZhbHVhdG9yLmV2YWx1YXRlKGhvc3RFeHByKTtcbiAgaWYgKCEoaG9zdE1ldGFNYXAgaW5zdGFuY2VvZiBNYXApKSB7XG4gICAgdGhyb3cgbmV3IEZhdGFsRGlhZ25vc3RpY0Vycm9yKFxuICAgICAgICBFcnJvckNvZGUuVkFMVUVfSEFTX1dST05HX1RZUEUsIGhvc3RFeHByLCBgRGVjb3JhdG9yIGhvc3QgbWV0YWRhdGEgbXVzdCBiZSBhbiBvYmplY3RgKTtcbiAgfVxuICBjb25zdCBob3N0TWV0YWRhdGE6IFN0cmluZ01hcDxzdHJpbmd8RXhwcmVzc2lvbj4gPSB7fTtcbiAgaG9zdE1ldGFNYXAuZm9yRWFjaCgodmFsdWUsIGtleSkgPT4ge1xuICAgIC8vIFJlc29sdmUgRW51bSByZWZlcmVuY2VzIHRvIHRoZWlyIGRlY2xhcmVkIHZhbHVlLlxuICAgIGlmICh2YWx1ZSBpbnN0YW5jZW9mIEVudW1WYWx1ZSkge1xuICAgICAgdmFsdWUgPSB2YWx1ZS5yZXNvbHZlZDtcbiAgICB9XG5cbiAgICBpZiAodHlwZW9mIGtleSAhPT0gJ3N0cmluZycpIHtcbiAgICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgICBFcnJvckNvZGUuVkFMVUVfSEFTX1dST05HX1RZUEUsIGhvc3RFeHByLFxuICAgICAgICAgIGBEZWNvcmF0b3IgaG9zdCBtZXRhZGF0YSBtdXN0IGJlIGEgc3RyaW5nIC0+IHN0cmluZyBvYmplY3QsIGJ1dCBmb3VuZCB1bnBhcnNlYWJsZSBrZXlgKTtcbiAgICB9XG5cbiAgICBpZiAodHlwZW9mIHZhbHVlID09ICdzdHJpbmcnKSB7XG4gICAgICBob3N0TWV0YWRhdGFba2V5XSA9IHZhbHVlO1xuICAgIH0gZWxzZSBpZiAodmFsdWUgaW5zdGFuY2VvZiBEeW5hbWljVmFsdWUpIHtcbiAgICAgIGhvc3RNZXRhZGF0YVtrZXldID0gbmV3IFdyYXBwZWROb2RlRXhwcih2YWx1ZS5ub2RlIGFzIHRzLkV4cHJlc3Npb24pO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgICAgRXJyb3JDb2RlLlZBTFVFX0hBU19XUk9OR19UWVBFLCBob3N0RXhwcixcbiAgICAgICAgICBgRGVjb3JhdG9yIGhvc3QgbWV0YWRhdGEgbXVzdCBiZSBhIHN0cmluZyAtPiBzdHJpbmcgb2JqZWN0LCBidXQgZm91bmQgdW5wYXJzZWFibGUgdmFsdWVgKTtcbiAgICB9XG4gIH0pO1xuXG4gIGNvbnN0IGJpbmRpbmdzID0gcGFyc2VIb3N0QmluZGluZ3MoaG9zdE1ldGFkYXRhKTtcblxuICBjb25zdCBlcnJvcnMgPSB2ZXJpZnlIb3N0QmluZGluZ3MoYmluZGluZ3MsIGNyZWF0ZVNvdXJjZVNwYW4oaG9zdEV4cHIpKTtcbiAgaWYgKGVycm9ycy5sZW5ndGggPiAwKSB7XG4gICAgdGhyb3cgbmV3IEZhdGFsRGlhZ25vc3RpY0Vycm9yKFxuICAgICAgICAvLyBUT0RPOiBwcm92aWRlIG1vcmUgZ3JhbnVsYXIgZGlhZ25vc3RpYyBhbmQgb3V0cHV0IHNwZWNpZmljIGhvc3QgZXhwcmVzc2lvbiB0aGF0XG4gICAgICAgIC8vIHRyaWdnZXJlZCBhbiBlcnJvciBpbnN0ZWFkIG9mIHRoZSB3aG9sZSBob3N0IG9iamVjdC5cbiAgICAgICAgRXJyb3JDb2RlLkhPU1RfQklORElOR19QQVJTRV9FUlJPUiwgaG9zdEV4cHIsXG4gICAgICAgIGVycm9ycy5tYXAoKGVycm9yOiBQYXJzZUVycm9yKSA9PiBlcnJvci5tc2cpLmpvaW4oJ1xcbicpKTtcbiAgfVxuXG4gIHJldHVybiBiaW5kaW5ncztcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGV4dHJhY3RIb3N0QmluZGluZ3MoXG4gICAgbWVtYmVyczogQ2xhc3NNZW1iZXJbXSwgZXZhbHVhdG9yOiBQYXJ0aWFsRXZhbHVhdG9yLCBjb3JlTW9kdWxlOiBzdHJpbmd8dW5kZWZpbmVkLFxuICAgIG1ldGFkYXRhPzogTWFwPHN0cmluZywgdHMuRXhwcmVzc2lvbj4pOiBQYXJzZWRIb3N0QmluZGluZ3Mge1xuICBsZXQgYmluZGluZ3M6IFBhcnNlZEhvc3RCaW5kaW5ncztcbiAgaWYgKG1ldGFkYXRhICYmIG1ldGFkYXRhLmhhcygnaG9zdCcpKSB7XG4gICAgYmluZGluZ3MgPSBldmFsdWF0ZUhvc3RFeHByZXNzaW9uQmluZGluZ3MobWV0YWRhdGEuZ2V0KCdob3N0JykhLCBldmFsdWF0b3IpO1xuICB9IGVsc2Uge1xuICAgIGJpbmRpbmdzID0gcGFyc2VIb3N0QmluZGluZ3Moe30pO1xuICB9XG5cbiAgZmlsdGVyVG9NZW1iZXJzV2l0aERlY29yYXRvcihtZW1iZXJzLCAnSG9zdEJpbmRpbmcnLCBjb3JlTW9kdWxlKVxuICAgICAgLmZvckVhY2goKHttZW1iZXIsIGRlY29yYXRvcnN9KSA9PiB7XG4gICAgICAgIGRlY29yYXRvcnMuZm9yRWFjaChkZWNvcmF0b3IgPT4ge1xuICAgICAgICAgIGxldCBob3N0UHJvcGVydHlOYW1lOiBzdHJpbmcgPSBtZW1iZXIubmFtZTtcbiAgICAgICAgICBpZiAoZGVjb3JhdG9yLmFyZ3MgIT09IG51bGwgJiYgZGVjb3JhdG9yLmFyZ3MubGVuZ3RoID4gMCkge1xuICAgICAgICAgICAgaWYgKGRlY29yYXRvci5hcmdzLmxlbmd0aCAhPT0gMSkge1xuICAgICAgICAgICAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgICAgICAgICAgICBFcnJvckNvZGUuREVDT1JBVE9SX0FSSVRZX1dST05HLCBEZWNvcmF0b3Iubm9kZUZvckVycm9yKGRlY29yYXRvciksXG4gICAgICAgICAgICAgICAgICBgQEhvc3RCaW5kaW5nIGNhbiBoYXZlIGF0IG1vc3Qgb25lIGFyZ3VtZW50LCBnb3QgJHtcbiAgICAgICAgICAgICAgICAgICAgICBkZWNvcmF0b3IuYXJncy5sZW5ndGh9IGFyZ3VtZW50KHMpYCk7XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgIGNvbnN0IHJlc29sdmVkID0gZXZhbHVhdG9yLmV2YWx1YXRlKGRlY29yYXRvci5hcmdzWzBdKTtcbiAgICAgICAgICAgIGlmICh0eXBlb2YgcmVzb2x2ZWQgIT09ICdzdHJpbmcnKSB7XG4gICAgICAgICAgICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgICAgICAgICAgIEVycm9yQ29kZS5WQUxVRV9IQVNfV1JPTkdfVFlQRSwgRGVjb3JhdG9yLm5vZGVGb3JFcnJvcihkZWNvcmF0b3IpLFxuICAgICAgICAgICAgICAgICAgYEBIb3N0QmluZGluZydzIGFyZ3VtZW50IG11c3QgYmUgYSBzdHJpbmdgKTtcbiAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgaG9zdFByb3BlcnR5TmFtZSA9IHJlc29sdmVkO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGJpbmRpbmdzLnByb3BlcnRpZXNbaG9zdFByb3BlcnR5TmFtZV0gPSBtZW1iZXIubmFtZTtcbiAgICAgICAgfSk7XG4gICAgICB9KTtcblxuICBmaWx0ZXJUb01lbWJlcnNXaXRoRGVjb3JhdG9yKG1lbWJlcnMsICdIb3N0TGlzdGVuZXInLCBjb3JlTW9kdWxlKVxuICAgICAgLmZvckVhY2goKHttZW1iZXIsIGRlY29yYXRvcnN9KSA9PiB7XG4gICAgICAgIGRlY29yYXRvcnMuZm9yRWFjaChkZWNvcmF0b3IgPT4ge1xuICAgICAgICAgIGxldCBldmVudE5hbWU6IHN0cmluZyA9IG1lbWJlci5uYW1lO1xuICAgICAgICAgIGxldCBhcmdzOiBzdHJpbmdbXSA9IFtdO1xuICAgICAgICAgIGlmIChkZWNvcmF0b3IuYXJncyAhPT0gbnVsbCAmJiBkZWNvcmF0b3IuYXJncy5sZW5ndGggPiAwKSB7XG4gICAgICAgICAgICBpZiAoZGVjb3JhdG9yLmFyZ3MubGVuZ3RoID4gMikge1xuICAgICAgICAgICAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgICAgICAgICAgICBFcnJvckNvZGUuREVDT1JBVE9SX0FSSVRZX1dST05HLCBkZWNvcmF0b3IuYXJnc1syXSxcbiAgICAgICAgICAgICAgICAgIGBASG9zdExpc3RlbmVyIGNhbiBoYXZlIGF0IG1vc3QgdHdvIGFyZ3VtZW50c2ApO1xuICAgICAgICAgICAgfVxuXG4gICAgICAgICAgICBjb25zdCByZXNvbHZlZCA9IGV2YWx1YXRvci5ldmFsdWF0ZShkZWNvcmF0b3IuYXJnc1swXSk7XG4gICAgICAgICAgICBpZiAodHlwZW9mIHJlc29sdmVkICE9PSAnc3RyaW5nJykge1xuICAgICAgICAgICAgICB0aHJvdyBuZXcgRmF0YWxEaWFnbm9zdGljRXJyb3IoXG4gICAgICAgICAgICAgICAgICBFcnJvckNvZGUuVkFMVUVfSEFTX1dST05HX1RZUEUsIGRlY29yYXRvci5hcmdzWzBdLFxuICAgICAgICAgICAgICAgICAgYEBIb3N0TGlzdGVuZXIncyBldmVudCBuYW1lIGFyZ3VtZW50IG11c3QgYmUgYSBzdHJpbmdgKTtcbiAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgZXZlbnROYW1lID0gcmVzb2x2ZWQ7XG5cbiAgICAgICAgICAgIGlmIChkZWNvcmF0b3IuYXJncy5sZW5ndGggPT09IDIpIHtcbiAgICAgICAgICAgICAgY29uc3QgZXhwcmVzc2lvbiA9IGRlY29yYXRvci5hcmdzWzFdO1xuICAgICAgICAgICAgICBjb25zdCByZXNvbHZlZEFyZ3MgPSBldmFsdWF0b3IuZXZhbHVhdGUoZGVjb3JhdG9yLmFyZ3NbMV0pO1xuICAgICAgICAgICAgICBpZiAoIWlzU3RyaW5nQXJyYXlPckRpZShyZXNvbHZlZEFyZ3MsICdASG9zdExpc3RlbmVyLmFyZ3MnLCBleHByZXNzaW9uKSkge1xuICAgICAgICAgICAgICAgIHRocm93IG5ldyBGYXRhbERpYWdub3N0aWNFcnJvcihcbiAgICAgICAgICAgICAgICAgICAgRXJyb3JDb2RlLlZBTFVFX0hBU19XUk9OR19UWVBFLCBkZWNvcmF0b3IuYXJnc1sxXSxcbiAgICAgICAgICAgICAgICAgICAgYEBIb3N0TGlzdGVuZXIncyBzZWNvbmQgYXJndW1lbnQgbXVzdCBiZSBhIHN0cmluZyBhcnJheWApO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgIGFyZ3MgPSByZXNvbHZlZEFyZ3M7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgYmluZGluZ3MubGlzdGVuZXJzW2V2ZW50TmFtZV0gPSBgJHttZW1iZXIubmFtZX0oJHthcmdzLmpvaW4oJywnKX0pYDtcbiAgICAgICAgfSk7XG4gICAgICB9KTtcbiAgcmV0dXJuIGJpbmRpbmdzO1xufVxuXG5jb25zdCBRVUVSWV9UWVBFUyA9IG5ldyBTZXQoW1xuICAnQ29udGVudENoaWxkJyxcbiAgJ0NvbnRlbnRDaGlsZHJlbicsXG4gICdWaWV3Q2hpbGQnLFxuICAnVmlld0NoaWxkcmVuJyxcbl0pO1xuIl19