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
        define("@angular/compiler-cli/src/metadata/collector", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/metadata/evaluator", "@angular/compiler-cli/src/metadata/schema", "@angular/compiler-cli/src/metadata/symbols"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.MetadataCollector = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    var evaluator_1 = require("@angular/compiler-cli/src/metadata/evaluator");
    var schema_1 = require("@angular/compiler-cli/src/metadata/schema");
    var symbols_1 = require("@angular/compiler-cli/src/metadata/symbols");
    var isStatic = function (node) {
        return ts.getCombinedModifierFlags(node) & ts.ModifierFlags.Static;
    };
    /**
     * Collect decorator metadata from a TypeScript module.
     */
    var MetadataCollector = /** @class */ (function () {
        function MetadataCollector(options) {
            if (options === void 0) { options = {}; }
            this.options = options;
        }
        /**
         * Returns a JSON.stringify friendly form describing the decorators of the exported classes from
         * the source file that is expected to correspond to a module.
         */
        MetadataCollector.prototype.getMetadata = function (sourceFile, strict, substituteExpression) {
            var _this = this;
            if (strict === void 0) { strict = false; }
            var locals = new symbols_1.Symbols(sourceFile);
            var nodeMap = new Map();
            var composedSubstituter = substituteExpression && this.options.substituteExpression ?
                function (value, node) {
                    return _this.options.substituteExpression(substituteExpression(value, node), node);
                } :
                substituteExpression;
            var evaluatorOptions = substituteExpression ? tslib_1.__assign(tslib_1.__assign({}, this.options), { substituteExpression: composedSubstituter }) :
                this.options;
            var metadata;
            var evaluator = new evaluator_1.Evaluator(locals, nodeMap, evaluatorOptions, function (name, value) {
                if (!metadata)
                    metadata = {};
                metadata[name] = value;
            });
            var exports = undefined;
            function objFromDecorator(decoratorNode) {
                return evaluator.evaluateNode(decoratorNode.expression);
            }
            function recordEntry(entry, node) {
                if (composedSubstituter) {
                    entry = composedSubstituter(entry, node);
                }
                return evaluator_1.recordMapEntry(entry, node, nodeMap, sourceFile);
            }
            function errorSym(message, node, context) {
                return evaluator_1.errorSymbol(message, node, context, sourceFile);
            }
            function maybeGetSimpleFunction(functionDeclaration) {
                if (functionDeclaration.name && functionDeclaration.name.kind == ts.SyntaxKind.Identifier) {
                    var nameNode = functionDeclaration.name;
                    var functionName = nameNode.text;
                    var functionBody = functionDeclaration.body;
                    if (functionBody && functionBody.statements.length == 1) {
                        var statement = functionBody.statements[0];
                        if (statement.kind === ts.SyntaxKind.ReturnStatement) {
                            var returnStatement = statement;
                            if (returnStatement.expression) {
                                var func = {
                                    __symbolic: 'function',
                                    parameters: namesOf(functionDeclaration.parameters),
                                    value: evaluator.evaluateNode(returnStatement.expression)
                                };
                                if (functionDeclaration.parameters.some(function (p) { return p.initializer != null; })) {
                                    func.defaults = functionDeclaration.parameters.map(function (p) { return p.initializer && evaluator.evaluateNode(p.initializer); });
                                }
                                return recordEntry({ func: func, name: functionName }, functionDeclaration);
                            }
                        }
                    }
                }
            }
            function classMetadataOf(classDeclaration) {
                var e_1, _a, e_2, _b;
                var result = { __symbolic: 'class' };
                function getDecorators(decorators) {
                    if (decorators && decorators.length)
                        return decorators.map(function (decorator) { return objFromDecorator(decorator); });
                    return undefined;
                }
                function referenceFrom(node) {
                    var result = evaluator.evaluateNode(node);
                    if (schema_1.isMetadataError(result) || schema_1.isMetadataSymbolicReferenceExpression(result) ||
                        schema_1.isMetadataSymbolicSelectExpression(result)) {
                        return result;
                    }
                    else {
                        return errorSym('Symbol reference expected', node);
                    }
                }
                // Add class parents
                if (classDeclaration.heritageClauses) {
                    classDeclaration.heritageClauses.forEach(function (hc) {
                        if (hc.token === ts.SyntaxKind.ExtendsKeyword && hc.types) {
                            hc.types.forEach(function (type) { return result.extends = referenceFrom(type.expression); });
                        }
                    });
                }
                // Add arity if the type is generic
                var typeParameters = classDeclaration.typeParameters;
                if (typeParameters && typeParameters.length) {
                    result.arity = typeParameters.length;
                }
                // Add class decorators
                if (classDeclaration.decorators) {
                    result.decorators = getDecorators(classDeclaration.decorators);
                }
                // member decorators
                var members = null;
                function recordMember(name, metadata) {
                    if (!members)
                        members = {};
                    var data = members.hasOwnProperty(name) ? members[name] : [];
                    data.push(metadata);
                    members[name] = data;
                }
                // static member
                var statics = null;
                function recordStaticMember(name, value) {
                    if (!statics)
                        statics = {};
                    statics[name] = value;
                }
                try {
                    for (var _c = tslib_1.__values(classDeclaration.members), _d = _c.next(); !_d.done; _d = _c.next()) {
                        var member = _d.value;
                        var isConstructor = false;
                        switch (member.kind) {
                            case ts.SyntaxKind.Constructor:
                            case ts.SyntaxKind.MethodDeclaration:
                                isConstructor = member.kind === ts.SyntaxKind.Constructor;
                                var method = member;
                                if (isStatic(method)) {
                                    var maybeFunc = maybeGetSimpleFunction(method);
                                    if (maybeFunc) {
                                        recordStaticMember(maybeFunc.name, maybeFunc.func);
                                    }
                                    continue;
                                }
                                var methodDecorators = getDecorators(method.decorators);
                                var parameters = method.parameters;
                                var parameterDecoratorData = [];
                                var parametersData = [];
                                var hasDecoratorData = false;
                                var hasParameterData = false;
                                try {
                                    for (var parameters_1 = (e_2 = void 0, tslib_1.__values(parameters)), parameters_1_1 = parameters_1.next(); !parameters_1_1.done; parameters_1_1 = parameters_1.next()) {
                                        var parameter = parameters_1_1.value;
                                        var parameterData = getDecorators(parameter.decorators);
                                        parameterDecoratorData.push(parameterData);
                                        hasDecoratorData = hasDecoratorData || !!parameterData;
                                        if (isConstructor) {
                                            if (parameter.type) {
                                                parametersData.push(referenceFrom(parameter.type));
                                            }
                                            else {
                                                parametersData.push(null);
                                            }
                                            hasParameterData = true;
                                        }
                                    }
                                }
                                catch (e_2_1) { e_2 = { error: e_2_1 }; }
                                finally {
                                    try {
                                        if (parameters_1_1 && !parameters_1_1.done && (_b = parameters_1.return)) _b.call(parameters_1);
                                    }
                                    finally { if (e_2) throw e_2.error; }
                                }
                                var data = { __symbolic: isConstructor ? 'constructor' : 'method' };
                                var name = isConstructor ? '__ctor__' : evaluator.nameOf(member.name);
                                if (methodDecorators) {
                                    data.decorators = methodDecorators;
                                }
                                if (hasDecoratorData) {
                                    data.parameterDecorators = parameterDecoratorData;
                                }
                                if (hasParameterData) {
                                    data.parameters = parametersData;
                                }
                                if (!schema_1.isMetadataError(name)) {
                                    recordMember(name, data);
                                }
                                break;
                            case ts.SyntaxKind.PropertyDeclaration:
                            case ts.SyntaxKind.GetAccessor:
                            case ts.SyntaxKind.SetAccessor:
                                var property = member;
                                if (isStatic(property)) {
                                    var name_1 = evaluator.nameOf(property.name);
                                    if (!schema_1.isMetadataError(name_1) && !shouldIgnoreStaticMember(name_1)) {
                                        if (property.initializer) {
                                            var value = evaluator.evaluateNode(property.initializer);
                                            recordStaticMember(name_1, value);
                                        }
                                        else {
                                            recordStaticMember(name_1, errorSym('Variable not initialized', property.name));
                                        }
                                    }
                                }
                                var propertyDecorators = getDecorators(property.decorators);
                                if (propertyDecorators) {
                                    var name_2 = evaluator.nameOf(property.name);
                                    if (!schema_1.isMetadataError(name_2)) {
                                        recordMember(name_2, { __symbolic: 'property', decorators: propertyDecorators });
                                    }
                                }
                                break;
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
                if (members) {
                    result.members = members;
                }
                if (statics) {
                    result.statics = statics;
                }
                return recordEntry(result, classDeclaration);
            }
            // Collect all exported symbols from an exports clause.
            var exportMap = new Map();
            ts.forEachChild(sourceFile, function (node) {
                switch (node.kind) {
                    case ts.SyntaxKind.ExportDeclaration:
                        var exportDeclaration = node;
                        var moduleSpecifier = exportDeclaration.moduleSpecifier, exportClause = exportDeclaration.exportClause;
                        if (!moduleSpecifier && exportClause && ts.isNamedExports(exportClause)) {
                            // If there is a module specifier there is also an exportClause
                            exportClause.elements.forEach(function (spec) {
                                var exportedAs = spec.name.text;
                                var name = (spec.propertyName || spec.name).text;
                                exportMap.set(name, exportedAs);
                            });
                        }
                }
            });
            var isExport = function (node) { return sourceFile.isDeclarationFile ||
                ts.getCombinedModifierFlags(node) & ts.ModifierFlags.Export; };
            var isExportedIdentifier = function (identifier) {
                return identifier && exportMap.has(identifier.text);
            };
            var isExported = function (node) {
                return isExport(node) || isExportedIdentifier(node.name);
            };
            var exportedIdentifierName = function (identifier) {
                return identifier && (exportMap.get(identifier.text) || identifier.text);
            };
            var exportedName = function (node) {
                return exportedIdentifierName(node.name);
            };
            // Pre-declare classes and functions
            ts.forEachChild(sourceFile, function (node) {
                switch (node.kind) {
                    case ts.SyntaxKind.ClassDeclaration:
                        var classDeclaration = node;
                        if (classDeclaration.name) {
                            var className = classDeclaration.name.text;
                            if (isExported(classDeclaration)) {
                                locals.define(className, { __symbolic: 'reference', name: exportedName(classDeclaration) });
                            }
                            else {
                                locals.define(className, errorSym('Reference to non-exported class', node, { className: className }));
                            }
                        }
                        break;
                    case ts.SyntaxKind.InterfaceDeclaration:
                        var interfaceDeclaration = node;
                        if (interfaceDeclaration.name) {
                            var interfaceName = interfaceDeclaration.name.text;
                            // All references to interfaces should be converted to references to `any`.
                            locals.define(interfaceName, { __symbolic: 'reference', name: 'any' });
                        }
                        break;
                    case ts.SyntaxKind.FunctionDeclaration:
                        var functionDeclaration = node;
                        if (!isExported(functionDeclaration)) {
                            // Report references to this function as an error.
                            var nameNode = functionDeclaration.name;
                            if (nameNode && nameNode.text) {
                                locals.define(nameNode.text, errorSym('Reference to a non-exported function', nameNode, { name: nameNode.text }));
                            }
                        }
                        break;
                }
            });
            ts.forEachChild(sourceFile, function (node) {
                var e_3, _a, e_4, _b;
                switch (node.kind) {
                    case ts.SyntaxKind.ExportDeclaration:
                        // Record export declarations
                        var exportDeclaration = node;
                        var moduleSpecifier = exportDeclaration.moduleSpecifier, exportClause = exportDeclaration.exportClause;
                        if (!moduleSpecifier) {
                            // no module specifier -> export {propName as name};
                            if (exportClause && ts.isNamedExports(exportClause)) {
                                exportClause.elements.forEach(function (spec) {
                                    var name = spec.name.text;
                                    // If the symbol was not already exported, export a reference since it is a
                                    // reference to an import
                                    if (!metadata || !metadata[name]) {
                                        var propNode = spec.propertyName || spec.name;
                                        var value = evaluator.evaluateNode(propNode);
                                        if (!metadata)
                                            metadata = {};
                                        metadata[name] = recordEntry(value, node);
                                    }
                                });
                            }
                        }
                        if (moduleSpecifier && moduleSpecifier.kind == ts.SyntaxKind.StringLiteral) {
                            // Ignore exports that don't have string literals as exports.
                            // This is allowed by the syntax but will be flagged as an error by the type checker.
                            var from = moduleSpecifier.text;
                            var moduleExport = { from: from };
                            if (exportClause && ts.isNamedExports(exportClause)) {
                                moduleExport.export = exportClause.elements.map(function (spec) { return spec.propertyName ? { name: spec.propertyName.text, as: spec.name.text } :
                                    spec.name.text; });
                            }
                            if (!exports)
                                exports = [];
                            exports.push(moduleExport);
                        }
                        break;
                    case ts.SyntaxKind.ClassDeclaration:
                        var classDeclaration = node;
                        if (classDeclaration.name) {
                            if (isExported(classDeclaration)) {
                                var name = exportedName(classDeclaration);
                                if (name) {
                                    if (!metadata)
                                        metadata = {};
                                    metadata[name] = classMetadataOf(classDeclaration);
                                }
                            }
                        }
                        // Otherwise don't record metadata for the class.
                        break;
                    case ts.SyntaxKind.TypeAliasDeclaration:
                        var typeDeclaration = node;
                        if (typeDeclaration.name && isExported(typeDeclaration)) {
                            var name = exportedName(typeDeclaration);
                            if (name) {
                                if (!metadata)
                                    metadata = {};
                                metadata[name] = { __symbolic: 'interface' };
                            }
                        }
                        break;
                    case ts.SyntaxKind.InterfaceDeclaration:
                        var interfaceDeclaration = node;
                        if (interfaceDeclaration.name && isExported(interfaceDeclaration)) {
                            var name = exportedName(interfaceDeclaration);
                            if (name) {
                                if (!metadata)
                                    metadata = {};
                                metadata[name] = { __symbolic: 'interface' };
                            }
                        }
                        break;
                    case ts.SyntaxKind.FunctionDeclaration:
                        // Record functions that return a single value. Record the parameter
                        // names substitution will be performed by the StaticReflector.
                        var functionDeclaration = node;
                        if (isExported(functionDeclaration) && functionDeclaration.name) {
                            var name = exportedName(functionDeclaration);
                            var maybeFunc = maybeGetSimpleFunction(functionDeclaration);
                            if (name) {
                                if (!metadata)
                                    metadata = {};
                                // TODO(alxhub): The literal here is not valid FunctionMetadata.
                                metadata[name] =
                                    maybeFunc ? recordEntry(maybeFunc.func, node) : { __symbolic: 'function' };
                            }
                        }
                        break;
                    case ts.SyntaxKind.EnumDeclaration:
                        var enumDeclaration = node;
                        if (isExported(enumDeclaration)) {
                            var enumValueHolder = {};
                            var enumName = exportedName(enumDeclaration);
                            var nextDefaultValue = 0;
                            var writtenMembers = 0;
                            try {
                                for (var _c = tslib_1.__values(enumDeclaration.members), _d = _c.next(); !_d.done; _d = _c.next()) {
                                    var member = _d.value;
                                    var enumValue = void 0;
                                    if (!member.initializer) {
                                        enumValue = nextDefaultValue;
                                    }
                                    else {
                                        enumValue = evaluator.evaluateNode(member.initializer);
                                    }
                                    var name = undefined;
                                    if (member.name.kind == ts.SyntaxKind.Identifier) {
                                        var identifier = member.name;
                                        name = identifier.text;
                                        enumValueHolder[name] = enumValue;
                                        writtenMembers++;
                                    }
                                    if (typeof enumValue === 'number') {
                                        nextDefaultValue = enumValue + 1;
                                    }
                                    else if (name) {
                                        // TODO(alxhub): 'left' here has a name propery which is not valid for
                                        // MetadataSymbolicSelectExpression.
                                        nextDefaultValue = {
                                            __symbolic: 'binary',
                                            operator: '+',
                                            left: {
                                                __symbolic: 'select',
                                                expression: recordEntry({ __symbolic: 'reference', name: enumName }, node),
                                                name: name
                                            },
                                        };
                                    }
                                    else {
                                        nextDefaultValue =
                                            recordEntry(errorSym('Unsupported enum member name', member.name), node);
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
                            if (writtenMembers) {
                                if (enumName) {
                                    if (!metadata)
                                        metadata = {};
                                    metadata[enumName] = recordEntry(enumValueHolder, node);
                                }
                            }
                        }
                        break;
                    case ts.SyntaxKind.VariableStatement:
                        var variableStatement = node;
                        var _loop_1 = function (variableDeclaration) {
                            if (variableDeclaration.name.kind == ts.SyntaxKind.Identifier) {
                                var nameNode = variableDeclaration.name;
                                var varValue = void 0;
                                if (variableDeclaration.initializer) {
                                    varValue = evaluator.evaluateNode(variableDeclaration.initializer);
                                }
                                else {
                                    varValue = recordEntry(errorSym('Variable not initialized', nameNode), nameNode);
                                }
                                var exported = false;
                                if (isExport(variableStatement) || isExport(variableDeclaration) ||
                                    isExportedIdentifier(nameNode)) {
                                    var name = exportedIdentifierName(nameNode);
                                    if (name) {
                                        if (!metadata)
                                            metadata = {};
                                        metadata[name] = recordEntry(varValue, node);
                                    }
                                    exported = true;
                                }
                                if (typeof varValue == 'string' || typeof varValue == 'number' ||
                                    typeof varValue == 'boolean') {
                                    locals.define(nameNode.text, varValue);
                                    if (exported) {
                                        locals.defineReference(nameNode.text, { __symbolic: 'reference', name: nameNode.text });
                                    }
                                }
                                else if (!exported) {
                                    if (varValue && !schema_1.isMetadataError(varValue)) {
                                        locals.define(nameNode.text, recordEntry(varValue, node));
                                    }
                                    else {
                                        locals.define(nameNode.text, recordEntry(errorSym('Reference to a local symbol', nameNode, { name: nameNode.text }), node));
                                    }
                                }
                            }
                            else {
                                // Destructuring (or binding) declarations are not supported,
                                // var {<identifier>[, <identifier>]+} = <expression>;
                                //   or
                                // var [<identifier>[, <identifier}+] = <expression>;
                                // are not supported.
                                var report_1 = function (nameNode) {
                                    switch (nameNode.kind) {
                                        case ts.SyntaxKind.Identifier:
                                            var name = nameNode;
                                            var varValue = errorSym('Destructuring not supported', name);
                                            locals.define(name.text, varValue);
                                            if (isExport(node)) {
                                                if (!metadata)
                                                    metadata = {};
                                                metadata[name.text] = varValue;
                                            }
                                            break;
                                        case ts.SyntaxKind.BindingElement:
                                            var bindingElement = nameNode;
                                            report_1(bindingElement.name);
                                            break;
                                        case ts.SyntaxKind.ObjectBindingPattern:
                                        case ts.SyntaxKind.ArrayBindingPattern:
                                            var bindings = nameNode;
                                            bindings.elements.forEach(report_1);
                                            break;
                                    }
                                };
                                report_1(variableDeclaration.name);
                            }
                        };
                        try {
                            for (var _e = tslib_1.__values(variableStatement.declarationList.declarations), _f = _e.next(); !_f.done; _f = _e.next()) {
                                var variableDeclaration = _f.value;
                                _loop_1(variableDeclaration);
                            }
                        }
                        catch (e_4_1) { e_4 = { error: e_4_1 }; }
                        finally {
                            try {
                                if (_f && !_f.done && (_b = _e.return)) _b.call(_e);
                            }
                            finally { if (e_4) throw e_4.error; }
                        }
                        break;
                }
            });
            if (metadata || exports) {
                if (!metadata)
                    metadata = {};
                else if (strict) {
                    validateMetadata(sourceFile, nodeMap, metadata);
                }
                var result = {
                    __symbolic: 'module',
                    version: this.options.version || schema_1.METADATA_VERSION,
                    metadata: metadata
                };
                if (sourceFile.moduleName)
                    result.importAs = sourceFile.moduleName;
                if (exports)
                    result.exports = exports;
                return result;
            }
        };
        return MetadataCollector;
    }());
    exports.MetadataCollector = MetadataCollector;
    // This will throw if the metadata entry given contains an error node.
    function validateMetadata(sourceFile, nodeMap, metadata) {
        var locals = new Set(['Array', 'Object', 'Set', 'Map', 'string', 'number', 'any']);
        function validateExpression(expression) {
            if (!expression) {
                return;
            }
            else if (Array.isArray(expression)) {
                expression.forEach(validateExpression);
            }
            else if (typeof expression === 'object' && !expression.hasOwnProperty('__symbolic')) {
                Object.getOwnPropertyNames(expression).forEach(function (v) { return validateExpression(expression[v]); });
            }
            else if (schema_1.isMetadataError(expression)) {
                reportError(expression);
            }
            else if (schema_1.isMetadataGlobalReferenceExpression(expression)) {
                if (!locals.has(expression.name)) {
                    var reference = metadata[expression.name];
                    if (reference) {
                        validateExpression(reference);
                    }
                }
            }
            else if (schema_1.isFunctionMetadata(expression)) {
                validateFunction(expression);
            }
            else if (schema_1.isMetadataSymbolicExpression(expression)) {
                switch (expression.__symbolic) {
                    case 'binary':
                        var binaryExpression = expression;
                        validateExpression(binaryExpression.left);
                        validateExpression(binaryExpression.right);
                        break;
                    case 'call':
                    case 'new':
                        var callExpression = expression;
                        validateExpression(callExpression.expression);
                        if (callExpression.arguments)
                            callExpression.arguments.forEach(validateExpression);
                        break;
                    case 'index':
                        var indexExpression = expression;
                        validateExpression(indexExpression.expression);
                        validateExpression(indexExpression.index);
                        break;
                    case 'pre':
                        var prefixExpression = expression;
                        validateExpression(prefixExpression.operand);
                        break;
                    case 'select':
                        var selectExpression = expression;
                        validateExpression(selectExpression.expression);
                        break;
                    case 'spread':
                        var spreadExpression = expression;
                        validateExpression(spreadExpression.expression);
                        break;
                    case 'if':
                        var ifExpression = expression;
                        validateExpression(ifExpression.condition);
                        validateExpression(ifExpression.elseExpression);
                        validateExpression(ifExpression.thenExpression);
                        break;
                }
            }
        }
        function validateMember(classData, member) {
            if (member.decorators) {
                member.decorators.forEach(validateExpression);
            }
            if (schema_1.isMethodMetadata(member) && member.parameterDecorators) {
                member.parameterDecorators.forEach(validateExpression);
            }
            // Only validate parameters of classes for which we know that are used with our DI
            if (classData.decorators && schema_1.isConstructorMetadata(member) && member.parameters) {
                member.parameters.forEach(validateExpression);
            }
        }
        function validateClass(classData) {
            if (classData.decorators) {
                classData.decorators.forEach(validateExpression);
            }
            if (classData.members) {
                Object.getOwnPropertyNames(classData.members)
                    .forEach(function (name) { return classData.members[name].forEach(function (m) { return validateMember(classData, m); }); });
            }
            if (classData.statics) {
                Object.getOwnPropertyNames(classData.statics).forEach(function (name) {
                    var staticMember = classData.statics[name];
                    if (schema_1.isFunctionMetadata(staticMember)) {
                        validateExpression(staticMember.value);
                    }
                    else {
                        validateExpression(staticMember);
                    }
                });
            }
        }
        function validateFunction(functionDeclaration) {
            if (functionDeclaration.value) {
                var oldLocals = locals;
                if (functionDeclaration.parameters) {
                    locals = new Set(oldLocals.values());
                    if (functionDeclaration.parameters)
                        functionDeclaration.parameters.forEach(function (n) { return locals.add(n); });
                }
                validateExpression(functionDeclaration.value);
                locals = oldLocals;
            }
        }
        function shouldReportNode(node) {
            if (node) {
                var nodeStart = node.getStart();
                return !(node.pos != nodeStart &&
                    sourceFile.text.substring(node.pos, nodeStart).indexOf('@dynamic') >= 0);
            }
            return true;
        }
        function reportError(error) {
            var node = nodeMap.get(error);
            if (shouldReportNode(node)) {
                var lineInfo = error.line != undefined ? error.character != undefined ?
                    ":" + (error.line + 1) + ":" + (error.character + 1) :
                    ":" + (error.line + 1) :
                    '';
                throw new Error("" + sourceFile.fileName + lineInfo + ": Metadata collected contains an error that will be reported at runtime: " + expandedMessage(error) + ".\n  " + JSON.stringify(error));
            }
        }
        Object.getOwnPropertyNames(metadata).forEach(function (name) {
            var entry = metadata[name];
            try {
                if (schema_1.isClassMetadata(entry)) {
                    validateClass(entry);
                }
            }
            catch (e) {
                var node = nodeMap.get(entry);
                if (shouldReportNode(node)) {
                    if (node) {
                        var _a = sourceFile.getLineAndCharacterOfPosition(node.getStart()), line = _a.line, character = _a.character;
                        throw new Error(sourceFile.fileName + ":" + (line + 1) + ":" + (character + 1) + ": Error encountered in metadata generated for exported symbol '" + name + "': \n " + e.message);
                    }
                    throw new Error("Error encountered in metadata generated for exported symbol " + name + ": \n " + e.message);
                }
            }
        });
    }
    // Collect parameter names from a function.
    function namesOf(parameters) {
        var e_5, _a;
        var result = [];
        function addNamesOf(name) {
            var e_6, _a;
            if (name.kind == ts.SyntaxKind.Identifier) {
                var identifier = name;
                result.push(identifier.text);
            }
            else {
                var bindingPattern = name;
                try {
                    for (var _b = tslib_1.__values(bindingPattern.elements), _c = _b.next(); !_c.done; _c = _b.next()) {
                        var element = _c.value;
                        var name_3 = element.name;
                        if (name_3) {
                            addNamesOf(name_3);
                        }
                    }
                }
                catch (e_6_1) { e_6 = { error: e_6_1 }; }
                finally {
                    try {
                        if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                    }
                    finally { if (e_6) throw e_6.error; }
                }
            }
        }
        try {
            for (var parameters_2 = tslib_1.__values(parameters), parameters_2_1 = parameters_2.next(); !parameters_2_1.done; parameters_2_1 = parameters_2.next()) {
                var parameter = parameters_2_1.value;
                addNamesOf(parameter.name);
            }
        }
        catch (e_5_1) { e_5 = { error: e_5_1 }; }
        finally {
            try {
                if (parameters_2_1 && !parameters_2_1.done && (_a = parameters_2.return)) _a.call(parameters_2);
            }
            finally { if (e_5) throw e_5.error; }
        }
        return result;
    }
    function shouldIgnoreStaticMember(memberName) {
        return memberName.startsWith('ngAcceptInputType_') || memberName.startsWith('ngTemplateGuard_');
    }
    function expandedMessage(error) {
        switch (error.message) {
            case 'Reference to non-exported class':
                if (error.context && error.context.className) {
                    return "Reference to a non-exported class " + error.context.className + ". Consider exporting the class";
                }
                break;
            case 'Variable not initialized':
                return 'Only initialized variables and constants can be referenced because the value of this variable is needed by the template compiler';
            case 'Destructuring not supported':
                return 'Referencing an exported destructured variable or constant is not supported by the template compiler. Consider simplifying this to avoid destructuring';
            case 'Could not resolve type':
                if (error.context && error.context.typeName) {
                    return "Could not resolve type " + error.context.typeName;
                }
                break;
            case 'Function call not supported':
                var prefix = error.context && error.context.name ? "Calling function '" + error.context.name + "', f" : 'F';
                return prefix +
                    'unction calls are not supported. Consider replacing the function or lambda with a reference to an exported function';
            case 'Reference to a local symbol':
                if (error.context && error.context.name) {
                    return "Reference to a local (non-exported) symbol '" + error.context.name + "'. Consider exporting the symbol";
                }
        }
        return error.message;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29sbGVjdG9yLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy9tZXRhZGF0YS9jb2xsZWN0b3IudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUVILCtCQUFpQztJQUVqQywwRUFBbUU7SUFDbkUsb0VBQXUxQjtJQUN2MUIsc0VBQWtDO0lBRWxDLElBQU0sUUFBUSxHQUFHLFVBQUMsSUFBb0I7UUFDbEMsT0FBQSxFQUFFLENBQUMsd0JBQXdCLENBQUMsSUFBSSxDQUFDLEdBQUcsRUFBRSxDQUFDLGFBQWEsQ0FBQyxNQUFNO0lBQTNELENBQTJELENBQUM7SUE0QmhFOztPQUVHO0lBQ0g7UUFDRSwyQkFBb0IsT0FBOEI7WUFBOUIsd0JBQUEsRUFBQSxZQUE4QjtZQUE5QixZQUFPLEdBQVAsT0FBTyxDQUF1QjtRQUFHLENBQUM7UUFFdEQ7OztXQUdHO1FBQ0ksdUNBQVcsR0FBbEIsVUFDSSxVQUF5QixFQUFFLE1BQXVCLEVBQ2xELG9CQUE2RTtZQUZqRixpQkE4ZkM7WUE3ZjhCLHVCQUFBLEVBQUEsY0FBdUI7WUFHcEQsSUFBTSxNQUFNLEdBQUcsSUFBSSxpQkFBTyxDQUFDLFVBQVUsQ0FBQyxDQUFDO1lBQ3ZDLElBQU0sT0FBTyxHQUNULElBQUksR0FBRyxFQUEyRSxDQUFDO1lBQ3ZGLElBQU0sbUJBQW1CLEdBQUcsb0JBQW9CLElBQUksSUFBSSxDQUFDLE9BQU8sQ0FBQyxvQkFBb0IsQ0FBQyxDQUFDO2dCQUNuRixVQUFDLEtBQW9CLEVBQUUsSUFBYTtvQkFDaEMsT0FBQSxLQUFJLENBQUMsT0FBTyxDQUFDLG9CQUFxQixDQUFDLG9CQUFvQixDQUFDLEtBQUssRUFBRSxJQUFJLENBQUMsRUFBRSxJQUFJLENBQUM7Z0JBQTNFLENBQTJFLENBQUMsQ0FBQztnQkFDakYsb0JBQW9CLENBQUM7WUFDekIsSUFBTSxnQkFB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QUFLLDZCQUE2QjtnQkFDaEMsSUFBSSxNQUFNLEdBQ04sS0FBSyxDQUFDLE9BQU8sSUFBSSxLQUFLLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsdUJBQXFCLEtBQUssQ0FBQyxPQUFPLENBQUMsSUFBSSxTQUFNLENBQUMsQ0FBQyxDQUFDLEdBQUcsQ0FBQztnQkFDOUYsT0FBTyxNQUFNO29CQUNULHFIQUFxSCxDQUFDO1lBQzVILEtBQUssNkJBQTZCO2dCQUNoQyxJQUFJLEtBQUssQ0FBQyxPQUFPLElBQUksS0FBSyxDQUFDLE9BQU8sQ0FBQyxJQUFJLEVBQUU7b0JBQ3ZDLE9BQU8saURBQ0gsS0FBSyxDQUFDLE9BQU8sQ0FBQyxJQUFJLHFDQUFrQyxDQUFDO2lCQUMxRDtTQUNKO1FBQ0QsT0FBTyxLQUFLLENBQUMsT0FBTyxDQUFDO0lBQ3ZCLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7ZXJyb3JTeW1ib2wsIEV2YWx1YXRvciwgcmVjb3JkTWFwRW50cnl9IGZyb20gJy4vZXZhbHVhdG9yJztcbmltcG9ydCB7Q2xhc3NNZXRhZGF0YSwgQ29uc3RydWN0b3JNZXRhZGF0YSwgRnVuY3Rpb25NZXRhZGF0YSwgSW50ZXJmYWNlTWV0YWRhdGEsIGlzQ2xhc3NNZXRhZGF0YSwgaXNDb25zdHJ1Y3Rvck1ldGFkYXRhLCBpc0Z1bmN0aW9uTWV0YWRhdGEsIGlzTWV0YWRhdGFFcnJvciwgaXNNZXRhZGF0YUdsb2JhbFJlZmVyZW5jZUV4cHJlc3Npb24sIGlzTWV0YWRhdGFJbXBvcnREZWZhdWx0UmVmZXJlbmNlLCBpc01ldGFkYXRhSW1wb3J0ZWRTeW1ib2xSZWZlcmVuY2VFeHByZXNzaW9uLCBpc01ldGFkYXRhU3ltYm9saWNFeHByZXNzaW9uLCBpc01ldGFkYXRhU3ltYm9saWNSZWZlcmVuY2VFeHByZXNzaW9uLCBpc01ldGFkYXRhU3ltYm9saWNTZWxlY3RFeHByZXNzaW9uLCBpc01ldGhvZE1ldGFkYXRhLCBNZW1iZXJNZXRhZGF0YSwgTUVUQURBVEFfVkVSU0lPTiwgTWV0YWRhdGFFbnRyeSwgTWV0YWRhdGFFcnJvciwgTWV0YWRhdGFNYXAsIE1ldGFkYXRhU3ltYm9saWNCaW5hcnlFeHByZXNzaW9uLCBNZXRhZGF0YVN5bWJvbGljQ2FsbEV4cHJlc3Npb24sIE1ldGFkYXRhU3ltYm9saWNFeHByZXNzaW9uLCBNZXRhZGF0YVN5bWJvbGljSWZFeHByZXNzaW9uLCBNZXRhZGF0YVN5bWJvbGljSW5kZXhFeHByZXNzaW9uLCBNZXRhZGF0YVN5bWJvbGljUHJlZml4RXhwcmVzc2lvbiwgTWV0YWRhdGFTeW1ib2xpY1JlZmVyZW5jZUV4cHJlc3Npb24sIE1ldGFkYXRhU3ltYm9saWNTZWxlY3RFeHByZXNzaW9uLCBNZXRhZGF0YVN5bWJvbGljU3ByZWFkRXhwcmVzc2lvbiwgTWV0YWRhdGFWYWx1ZSwgTWV0aG9kTWV0YWRhdGEsIE1vZHVsZUV4cG9ydE1ldGFkYXRhLCBNb2R1bGVNZXRhZGF0YX0gZnJvbSAnLi9zY2hlbWEnO1xuaW1wb3J0IHtTeW1ib2xzfSBmcm9tICcuL3N5bWJvbHMnO1xuXG5jb25zdCBpc1N0YXRpYyA9IChub2RlOiB0cy5EZWNsYXJhdGlvbikgPT5cbiAgICB0cy5nZXRDb21iaW5lZE1vZGlmaWVyRmxhZ3Mobm9kZSkgJiB0cy5Nb2RpZmllckZsYWdzLlN0YXRpYztcblxuLyoqXG4gKiBBIHNldCBvZiBjb2xsZWN0b3Igb3B0aW9ucyB0byB1c2Ugd2hlbiBjb2xsZWN0aW5nIG1ldGFkYXRhLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIENvbGxlY3Rvck9wdGlvbnMge1xuICAvKipcbiAgICogVmVyc2lvbiBvZiB0aGUgbWV0YWRhdGEgdG8gY29sbGVjdC5cbiAgICovXG4gIHZlcnNpb24/OiBudW1iZXI7XG5cbiAgLyoqXG4gICAqIENvbGxlY3QgYSBoaWRkZW4gZmllbGQgXCIkcXVvdGVkJFwiIGluIG9iamVjdHMgbGl0ZXJhbHMgdGhhdCByZWNvcmQgd2hlbiB0aGUga2V5IHdhcyBxdW90ZWQgaW5cbiAgICogdGhlIHNvdXJjZS5cbiAgICovXG4gIHF1b3RlZE5hbWVzPzogYm9vbGVhbjtcblxuICAvKipcbiAgICogRG8gbm90IHNpbXBsaWZ5IGludmFsaWQgZXhwcmVzc2lvbnMuXG4gICAqL1xuICB2ZXJib3NlSW52YWxpZEV4cHJlc3Npb24/OiBib29sZWFuO1xuXG4gIC8qKlxuICAgKiBBbiBleHByZXNzaW9uIHN1YnN0aXR1dGlvbiBjYWxsYmFjay5cbiAgICovXG4gIHN1YnN0aXR1dGVFeHByZXNzaW9uPzogKHZhbHVlOiBNZXRhZGF0YVZhbHVlLCBub2RlOiB0cy5Ob2RlKSA9PiBNZXRhZGF0YVZhbHVlO1xufVxuXG4vKipcbiAqIENvbGxlY3QgZGVjb3JhdG9yIG1ldGFkYXRhIGZyb20gYSBUeXBlU2NyaXB0IG1vZHVsZS5cbiAqL1xuZXhwb3J0IGNsYXNzIE1ldGFkYXRhQ29sbGVjdG9yIHtcbiAgY29uc3RydWN0b3IocHJpdmF0ZSBvcHRpb25zOiBDb2xsZWN0b3JPcHRpb25zID0ge30pIHt9XG5cbiAgLyoqXG4gICAqIFJldHVybnMgYSBKU09OLnN0cmluZ2lmeSBmcmllbmRseSBmb3JtIGRlc2NyaWJpbmcgdGhlIGRlY29yYXRvcnMgb2YgdGhlIGV4cG9ydGVkIGNsYXNzZXMgZnJvbVxuICAgKiB0aGUgc291cmNlIGZpbGUgdGhhdCBpcyBleHBlY3RlZCB0byBjb3JyZXNwb25kIHRvIGEgbW9kdWxlLlxuICAgKi9cbiAgcHVibGljIGdldE1ldGFkYXRhKFxuICAgICAgc291cmNlRmlsZTogdHMuU291cmNlRmlsZSwgc3RyaWN0OiBib29sZWFuID0gZmFsc2UsXG4gICAgICBzdWJzdGl0dXRlRXhwcmVzc2lvbj86ICh2YWx1ZTogTWV0YWRhdGFWYWx1ZSwgbm9kZTogdHMuTm9kZSkgPT4gTWV0YWRhdGFWYWx1ZSk6IE1vZHVsZU1ldGFkYXRhXG4gICAgICB8dW5kZWZpbmVkIHtcbiAgICBjb25zdCBsb2NhbHMgPSBuZXcgU3ltYm9scyhzb3VyY2VGaWxlKTtcbiAgICBjb25zdCBub2RlTWFwID1cbiAgICAgICAgbmV3IE1hcDxNZXRhZGF0YVZhbHVlfENsYXNzTWV0YWRhdGF8SW50ZXJmYWNlTWV0YWRhdGF8RnVuY3Rpb25NZXRhZGF0YSwgdHMuTm9kZT4oKTtcbiAgICBjb25zdCBjb21wb3NlZFN1YnN0aXR1dGVyID0gc3Vic3RpdHV0ZUV4cHJlc3Npb24gJiYgdGhpcy5vcHRpb25zLnN1YnN0aXR1dGVFeHByZXNzaW9uID9cbiAgICAgICAgKHZhbHVlOiBNZXRhZGF0YVZhbHVlLCBub2RlOiB0cy5Ob2RlKSA9PlxuICAgICAgICAgICAgdGhpcy5vcHRpb25zLnN1YnN0aXR1dGVFeHByZXNzaW9uIShzdWJzdGl0dXRlRXhwcmVzc2lvbih2YWx1ZSwgbm9kZSksIG5vZGUpIDpcbiAgICAgICAgc3Vic3RpdHV0ZUV4cHJlc3Npb247XG4gICAgY29uc3QgZXZhbHVhdG9yT3B0aW9ucyA9IHN1YnN0aXR1dGVFeHByZXNzaW9uID9cbiAgICAgICAgey4uLnRoaXMub3B0aW9ucywgc3Vic3RpdHV0ZUV4cHJlc3Npb246IGNvbXBvc2VkU3Vic3RpdHV0ZXJ9IDpcbiAgICAgICAgdGhpcy5vcHRpb25zO1xuICAgIGxldCBtZXRhZGF0YToge1tuYW1lOiBzdHJpbmddOiBNZXRhZGF0YVZhbHVlfENsYXNzTWV0YWRhdGF8RnVuY3Rpb25NZXRhZGF0YX18dW5kZWZpbmVkO1xuICAgIGNvbnN0IGV2YWx1YXRvciA9IG5ldyBFdmFsdWF0b3IobG9jYWxzLCBub2RlTWFwLCBldmFsdWF0b3JPcHRpb25zLCAobmFtZSwgdmFsdWUpID0+IHtcbiAgICAgIGlmICghbWV0YWRhdGEpIG1ldGFkYXRhID0ge307XG4gICAgICBtZXRhZGF0YVtuYW1lXSA9IHZhbHVlO1xuICAgIH0pO1xuICAgIGxldCBleHBvcnRzOiBNb2R1bGVFeHBvcnRNZXRhZGF0YVtdfHVuZGVmaW5lZCA9IHVuZGVmaW5lZDtcblxuICAgIGZ1bmN0aW9uIG9iakZyb21EZWNvcmF0b3IoZGVjb3JhdG9yTm9kZTogdHMuRGVjb3JhdG9yKTogTWV0YWRhdGFTeW1ib2xpY0V4cHJlc3Npb24ge1xuICAgICAgcmV0dXJuIDxNZXRhZGF0YVN5bWJvbGljRXhwcmVzc2lvbj5ldmFsdWF0b3IuZXZhbHVhdGVOb2RlKGRlY29yYXRvck5vZGUuZXhwcmVzc2lvbik7XG4gICAgfVxuXG4gICAgZnVuY3Rpb24gcmVjb3JkRW50cnk8VCBleHRlbmRzIE1ldGFkYXRhRW50cnk+KGVudHJ5OiBULCBub2RlOiB0cy5Ob2RlKTogVCB7XG4gICAgICBpZiAoY29tcG9zZWRTdWJzdGl0dXRlcikge1xuICAgICAgICBlbnRyeSA9IGNvbXBvc2VkU3Vic3RpdHV0ZXIoZW50cnkgYXMgTWV0YWRhdGFWYWx1ZSwgbm9kZSkgYXMgVDtcbiAgICAgIH1cbiAgICAgIHJldHVybiByZWNvcmRNYXBFbnRyeShlbnRyeSwgbm9kZSwgbm9kZU1hcCwgc291cmNlRmlsZSk7XG4gICAgfVxuXG4gICAgZnVuY3Rpb24gZXJyb3JTeW0oXG4gICAgICAgIG1lc3NhZ2U6IHN0cmluZywgbm9kZT86IHRzLk5vZGUsIGNvbnRleHQ/OiB7W25hbWU6IHN0cmluZ106IHN0cmluZ30pOiBNZXRhZGF0YUVycm9yIHtcbiAgICAgIHJldHVybiBlcnJvclN5bWJvbChtZXNzYWdlLCBub2RlLCBjb250ZXh0LCBzb3VyY2VGaWxlKTtcbiAgICB9XG5cbiAgICBmdW5jdGlvbiBtYXliZUdldFNpbXBsZUZ1bmN0aW9uKGZ1bmN0aW9uRGVjbGFyYXRpb246IHRzLkZ1bmN0aW9uRGVjbGFyYXRpb258XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0cy5NZXRob2REZWNsYXJhdGlvbik6IHtmdW5jOiBGdW5jdGlvbk1ldGFkYXRhLCBuYW1lOiBzdHJpbmd9fFxuICAgICAgICB1bmRlZmluZWQge1xuICAgICAgaWYgKGZ1bmN0aW9uRGVjbGFyYXRpb24ubmFtZSAmJiBmdW5jdGlvbkRlY2xhcmF0aW9uLm5hbWUua2luZCA9PSB0cy5TeW50YXhLaW5kLklkZW50aWZpZXIpIHtcbiAgICAgICAgY29uc3QgbmFtZU5vZGUgPSA8dHMuSWRlbnRpZmllcj5mdW5jdGlvbkRlY2xhcmF0aW9uLm5hbWU7XG4gICAgICAgIGNvbnN0IGZ1bmN0aW9uTmFtZSA9IG5hbWVOb2RlLnRleHQ7XG4gICAgICAgIGNvbnN0IGZ1bmN0aW9uQm9keSA9IGZ1bmN0aW9uRGVjbGFyYXRpb24uYm9keTtcbiAgICAgICAgaWYgKGZ1bmN0aW9uQm9keSAmJiBmdW5jdGlvbkJvZHkuc3RhdGVtZW50cy5sZW5ndGggPT0gMSkge1xuICAgICAgICAgIGNvbnN0IHN0YXRlbWVudCA9IGZ1bmN0aW9uQm9keS5zdGF0ZW1lbnRzWzBdO1xuICAgICAgICAgIGlmIChzdGF0ZW1lbnQua2luZCA9PT0gdHMuU3ludGF4S2luZC5SZXR1cm5TdGF0ZW1lbnQpIHtcbiAgICAgICAgICAgIGNvbnN0IHJldHVyblN0YXRlbWVudCA9IDx0cy5SZXR1cm5TdGF0ZW1lbnQ+c3RhdGVtZW50O1xuICAgICAgICAgICAgaWYgKHJldHVyblN0YXRlbWVudC5leHByZXNzaW9uKSB7XG4gICAgICAgICAgICAgIGNvbnN0IGZ1bmM6IEZ1bmN0aW9uTWV0YWRhdGEgPSB7XG4gICAgICAgICAgICAgICAgX19zeW1ib2xpYzogJ2Z1bmN0aW9uJyxcbiAgICAgICAgICAgICAgICBwYXJhbWV0ZXJzOiBuYW1lc09mKGZ1bmN0aW9uRGVjbGFyYXRpb24ucGFyYW1ldGVycyksXG4gICAgICAgICAgICAgICAgdmFsdWU6IGV2YWx1YXRvci5ldmFsdWF0ZU5vZGUocmV0dXJuU3RhdGVtZW50LmV4cHJlc3Npb24pXG4gICAgICAgICAgICAgIH07XG4gICAgICAgICAgICAgIGlmIChmdW5jdGlvbkRlY2xhcmF0aW9uLnBhcmFtZXRlcnMuc29tZShwID0+IHAuaW5pdGlhbGl6ZXIgIT0gbnVsbCkpIHtcbiAgICAgICAgICAgICAgICBmdW5jLmRlZmF1bHRzID0gZnVuY3Rpb25EZWNsYXJhdGlvbi5wYXJhbWV0ZXJzLm1hcChcbiAgICAgICAgICAgICAgICAgICAgcCA9PiBwLmluaXRpYWxpemVyICYmIGV2YWx1YXRvci5ldmFsdWF0ZU5vZGUocC5pbml0aWFsaXplcikpO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgIHJldHVybiByZWNvcmRFbnRyeSh7ZnVuYywgbmFtZTogZnVuY3Rpb25OYW1lfSwgZnVuY3Rpb25EZWNsYXJhdGlvbik7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgZnVuY3Rpb24gY2xhc3NNZXRhZGF0YU9mKGNsYXNzRGVjbGFyYXRpb246IHRzLkNsYXNzRGVjbGFyYXRpb24pOiBDbGFzc01ldGFkYXRhIHtcbiAgICAgIGNvbnN0IHJlc3VsdDogQ2xhc3NNZXRhZGF0YSA9IHtfX3N5bWJvbGljOiAnY2xhc3MnfTtcblxuICAgICAgZnVuY3Rpb24gZ2V0RGVjb3JhdG9ycyhkZWNvcmF0b3JzOiBSZWFkb25seUFycmF5PHRzLkRlY29yYXRvcj58XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuZGVmaW5lZCk6IE1ldGFkYXRhU3ltYm9saWNFeHByZXNzaW9uW118dW5kZWZpbmVkIHtcbiAgICAgICAgaWYgKGRlY29yYXRvcnMgJiYgZGVjb3JhdG9ycy5sZW5ndGgpXG4gICAgICAgICAgcmV0dXJuIGRlY29yYXRvcnMubWFwKGRlY29yYXRvciA9PiBvYmpGcm9tRGVjb3JhdG9yKGRlY29yYXRvcikpO1xuICAgICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgICAgfVxuXG4gICAgICBmdW5jdGlvbiByZWZlcmVuY2VGcm9tKG5vZGU6IHRzLk5vZGUpOiBNZXRhZGF0YVN5bWJvbGljUmVmZXJlbmNlRXhwcmVzc2lvbnxNZXRhZGF0YUVycm9yfFxuICAgICAgICAgIE1ldGFkYXRhU3ltYm9saWNTZWxlY3RFeHByZXNzaW9uIHtcbiAgICAgICAgY29uc3QgcmVzdWx0ID0gZXZhbHVhdG9yLmV2YWx1YXRlTm9kZShub2RlKTtcbiAgICAgICAgaWYgKGlzTWV0YWRhdGFFcnJvcihyZXN1bHQpIHx8IGlzTWV0YWRhdGFTeW1ib2xpY1JlZmVyZW5jZUV4cHJlc3Npb24ocmVzdWx0KSB8fFxuICAgICAgICAgICAgaXNNZXRhZGF0YVN5bWJvbGljU2VsZWN0RXhwcmVzc2lvbihyZXN1bHQpKSB7XG4gICAgICAgICAgcmV0dXJuIHJlc3VsdDtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICByZXR1cm4gZXJyb3JTeW0oJ1N5bWJvbCByZWZlcmVuY2UgZXhwZWN0ZWQnLCBub2RlKTtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAvLyBBZGQgY2xhc3MgcGFyZW50c1xuICAgICAgaWYgKGNsYXNzRGVjbGFyYXRpb24uaGVyaXRhZ2VDbGF1c2VzKSB7XG4gICAgICAgIGNsYXNzRGVjbGFyYXRpb24uaGVyaXRhZ2VDbGF1c2VzLmZvckVhY2goKGhjKSA9PiB7XG4gICAgICAgICAgaWYgKGhjLnRva2VuID09PSB0cy5TeW50YXhLaW5kLkV4dGVuZHNLZXl3b3JkICYmIGhjLnR5cGVzKSB7XG4gICAgICAgICAgICBoYy50eXBlcy5mb3JFYWNoKHR5cGUgPT4gcmVzdWx0LmV4dGVuZHMgPSByZWZlcmVuY2VGcm9tKHR5cGUuZXhwcmVzc2lvbikpO1xuICAgICAgICAgIH1cbiAgICAgICAgfSk7XG4gICAgICB9XG5cbiAgICAgIC8vIEFkZCBhcml0eSBpZiB0aGUgdHlwZSBpcyBnZW5lcmljXG4gICAgICBjb25zdCB0eXBlUGFyYW1ldGVycyA9IGNsYXNzRGVjbGFyYXRpb24udHlwZVBhcmFtZXRlcnM7XG4gICAgICBpZiAodHlwZVBhcmFtZXRlcnMgJiYgdHlwZVBhcmFtZXRlcnMubGVuZ3RoKSB7XG4gICAgICAgIHJlc3VsdC5hcml0eSA9IHR5cGVQYXJhbWV0ZXJzLmxlbmd0aDtcbiAgICAgIH1cblxuICAgICAgLy8gQWRkIGNsYXNzIGRlY29yYXRvcnNcbiAgICAgIGlmIChjbGFzc0RlY2xhcmF0aW9uLmRlY29yYXRvcnMpIHtcbiAgICAgICAgcmVzdWx0LmRlY29yYXRvcnMgPSBnZXREZWNvcmF0b3JzKGNsYXNzRGVjbGFyYXRpb24uZGVjb3JhdG9ycyk7XG4gICAgICB9XG5cbiAgICAgIC8vIG1lbWJlciBkZWNvcmF0b3JzXG4gICAgICBsZXQgbWVtYmVyczogTWV0YWRhdGFNYXB8bnVsbCA9IG51bGw7XG4gICAgICBmdW5jdGlvbiByZWNvcmRNZW1iZXIobmFtZTogc3RyaW5nLCBtZXRhZGF0YTogTWVtYmVyTWV0YWRhdGEpIHtcbiAgICAgICAgaWYgKCFtZW1iZXJzKSBtZW1iZXJzID0ge307XG4gICAgICAgIGNvbnN0IGRhdGEgPSBtZW1iZXJzLmhhc093blByb3BlcnR5KG5hbWUpID8gbWVtYmVyc1tuYW1lXSA6IFtdO1xuICAgICAgICBkYXRhLnB1c2gobWV0YWRhdGEpO1xuICAgICAgICBtZW1iZXJzW25hbWVdID0gZGF0YTtcbiAgICAgIH1cblxuICAgICAgLy8gc3RhdGljIG1lbWJlclxuICAgICAgbGV0IHN0YXRpY3M6IHtbbmFtZTogc3RyaW5nXTogTWV0YWRhdGFWYWx1ZXxGdW5jdGlvbk1ldGFkYXRhfXxudWxsID0gbnVsbDtcbiAgICAgIGZ1bmN0aW9uIHJlY29yZFN0YXRpY01lbWJlcihuYW1lOiBzdHJpbmcsIHZhbHVlOiBNZXRhZGF0YVZhbHVlfEZ1bmN0aW9uTWV0YWRhdGEpIHtcbiAgICAgICAgaWYgKCFzdGF0aWNzKSBzdGF0aWNzID0ge307XG4gICAgICAgIHN0YXRpY3NbbmFtZV0gPSB2YWx1ZTtcbiAgICAgIH1cblxuICAgICAgZm9yIChjb25zdCBtZW1iZXIgb2YgY2xhc3NEZWNsYXJhdGlvbi5tZW1iZXJzKSB7XG4gICAgICAgIGxldCBpc0NvbnN0cnVjdG9yID0gZmFsc2U7XG4gICAgICAgIHN3aXRjaCAobWVtYmVyLmtpbmQpIHtcbiAgICAgICAgICBjYXNlIHRzLlN5bnRheEtpbmQuQ29uc3RydWN0b3I6XG4gICAgICAgICAgY2FzZSB0cy5TeW50YXhLaW5kLk1ldGhvZERlY2xhcmF0aW9uOlxuICAgICAgICAgICAgaXNDb25zdHJ1Y3RvciA9IG1lbWJlci5raW5kID09PSB0cy5TeW50YXhLaW5kLkNvbnN0cnVjdG9yO1xuICAgICAgICAgICAgY29uc3QgbWV0aG9kID0gPHRzLk1ldGhvZERlY2xhcmF0aW9ufHRzLkNvbnN0cnVjdG9yRGVjbGFyYXRpb24+bWVtYmVyO1xuICAgICAgICAgICAgaWYgKGlzU3RhdGljKG1ldGhvZCkpIHtcbiAgICAgICAgICAgICAgY29uc3QgbWF5YmVGdW5jID0gbWF5YmVHZXRTaW1wbGVGdW5jdGlvbig8dHMuTWV0aG9kRGVjbGFyYXRpb24+bWV0aG9kKTtcbiAgICAgICAgICAgICAgaWYgKG1heWJlRnVuYykge1xuICAgICAgICAgICAgICAgIHJlY29yZFN0YXRpY01lbWJlcihtYXliZUZ1bmMubmFtZSwgbWF5YmVGdW5jLmZ1bmMpO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgIGNvbnRpbnVlO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgY29uc3QgbWV0aG9kRGVjb3JhdG9ycyA9IGdldERlY29yYXRvcnMobWV0aG9kLmRlY29yYXRvcnMpO1xuICAgICAgICAgICAgY29uc3QgcGFyYW1ldGVycyA9IG1ldGhvZC5wYXJhbWV0ZXJzO1xuICAgICAgICAgICAgY29uc3QgcGFyYW1ldGVyRGVjb3JhdG9yRGF0YTogKChNZXRhZGF0YVN5bWJvbGljRXhwcmVzc2lvbiB8IE1ldGFkYXRhRXJyb3IpW118XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5kZWZpbmVkKVtdID0gW107XG4gICAgICAgICAgICBjb25zdCBwYXJhbWV0ZXJzRGF0YTogKE1ldGFkYXRhU3ltYm9saWNSZWZlcmVuY2VFeHByZXNzaW9ufE1ldGFkYXRhRXJyb3J8XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE1ldGFkYXRhU3ltYm9saWNTZWxlY3RFeHByZXNzaW9ufG51bGwpW10gPSBbXTtcbiAgICAgICAgICAgIGxldCBoYXNEZWNvcmF0b3JEYXRhOiBib29sZWFuID0gZmFsc2U7XG4gICAgICAgICAgICBsZXQgaGFzUGFyYW1ldGVyRGF0YTogYm9vbGVhbiA9IGZhbHNlO1xuICAgICAgICAgICAgZm9yIChjb25zdCBwYXJhbWV0ZXIgb2YgcGFyYW1ldGVycykge1xuICAgICAgICAgICAgICBjb25zdCBwYXJhbWV0ZXJEYXRhID0gZ2V0RGVjb3JhdG9ycyhwYXJhbWV0ZXIuZGVjb3JhdG9ycyk7XG4gICAgICAgICAgICAgIHBhcmFtZXRlckRlY29yYXRvckRhdGEucHVzaChwYXJhbWV0ZXJEYXRhKTtcbiAgICAgICAgICAgICAgaGFzRGVjb3JhdG9yRGF0YSA9IGhhc0RlY29yYXRvckRhdGEgfHwgISFwYXJhbWV0ZXJEYXRhO1xuICAgICAgICAgICAgICBpZiAoaXNDb25zdHJ1Y3Rvcikge1xuICAgICAgICAgICAgICAgIGlmIChwYXJhbWV0ZXIudHlwZSkge1xuICAgICAgICAgICAgICAgICAgcGFyYW1ldGVyc0RhdGEucHVzaChyZWZlcmVuY2VGcm9tKHBhcmFtZXRlci50eXBlKSk7XG4gICAgICAgICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICAgICAgIHBhcmFtZXRlcnNEYXRhLnB1c2gobnVsbCk7XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgIGhhc1BhcmFtZXRlckRhdGEgPSB0cnVlO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICBjb25zdCBkYXRhOiBNZXRob2RNZXRhZGF0YSA9IHtfX3N5bWJvbGljOiBpc0NvbnN0cnVjdG9yID8gJ2NvbnN0cnVjdG9yJyA6ICdtZXRob2QnfTtcbiAgICAgICAgICAgIGNvbnN0IG5hbWUgPSBpc0NvbnN0cnVjdG9yID8gJ19fY3Rvcl9fJyA6IGV2YWx1YXRvci5uYW1lT2YobWVtYmVyLm5hbWUpO1xuICAgICAgICAgICAgaWYgKG1ldGhvZERlY29yYXRvcnMpIHtcbiAgICAgICAgICAgICAgZGF0YS5kZWNvcmF0b3JzID0gbWV0aG9kRGVjb3JhdG9ycztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIGlmIChoYXNEZWNvcmF0b3JEYXRhKSB7XG4gICAgICAgICAgICAgIGRhdGEucGFyYW1ldGVyRGVjb3JhdG9ycyA9IHBhcmFtZXRlckRlY29yYXRvckRhdGE7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICBpZiAoaGFzUGFyYW1ldGVyRGF0YSkge1xuICAgICAgICAgICAgICAoPENvbnN0cnVjdG9yTWV0YWRhdGE+ZGF0YSkucGFyYW1ldGVycyA9IHBhcmFtZXRlcnNEYXRhO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgaWYgKCFpc01ldGFkYXRhRXJyb3IobmFtZSkpIHtcbiAgICAgICAgICAgICAgcmVjb3JkTWVtYmVyKG5hbWUsIGRhdGEpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgY2FzZSB0cy5TeW50YXhLaW5kLlByb3BlcnR5RGVjbGFyYXRpb246XG4gICAgICAgICAgY2FzZSB0cy5TeW50YXhLaW5kLkdldEFjY2Vzc29yOlxuICAgICAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5TZXRBY2Nlc3NvcjpcbiAgICAgICAgICAgIGNvbnN0IHByb3BlcnR5ID0gPHRzLlByb3BlcnR5RGVjbGFyYXRpb24+bWVtYmVyO1xuICAgICAgICAgICAgaWYgKGlzU3RhdGljKHByb3BlcnR5KSkge1xuICAgICAgICAgICAgICBjb25zdCBuYW1lID0gZXZhbHVhdG9yLm5hbWVPZihwcm9wZXJ0eS5uYW1lKTtcbiAgICAgICAgICAgICAgaWYgKCFpc01ldGFkYXRhRXJyb3IobmFtZSkgJiYgIXNob3VsZElnbm9yZVN0YXRpY01lbWJlcihuYW1lKSkge1xuICAgICAgICAgICAgICAgIGlmIChwcm9wZXJ0eS5pbml0aWFsaXplcikge1xuICAgICAgICAgICAgICAgICAgY29uc3QgdmFsdWUgPSBldmFsdWF0b3IuZXZhbHVhdGVOb2RlKHByb3BlcnR5LmluaXRpYWxpemVyKTtcbiAgICAgICAgICAgICAgICAgIHJlY29yZFN0YXRpY01lbWJlcihuYW1lLCB2YWx1ZSk7XG4gICAgICAgICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICAgICAgIHJlY29yZFN0YXRpY01lbWJlcihuYW1lLCBlcnJvclN5bSgnVmFyaWFibGUgbm90IGluaXRpYWxpemVkJywgcHJvcGVydHkubmFtZSkpO1xuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfVxuICAgICAgICAgICAgY29uc3QgcHJvcGVydHlEZWNvcmF0b3JzID0gZ2V0RGVjb3JhdG9ycyhwcm9wZXJ0eS5kZWNvcmF0b3JzKTtcbiAgICAgICAgICAgIGlmIChwcm9wZXJ0eURlY29yYXRvcnMpIHtcbiAgICAgICAgICAgICAgY29uc3QgbmFtZSA9IGV2YWx1YXRvci5uYW1lT2YocHJvcGVydHkubmFtZSk7XG4gICAgICAgICAgICAgIGlmICghaXNNZXRhZGF0YUVycm9yKG5hbWUpKSB7XG4gICAgICAgICAgICAgICAgcmVjb3JkTWVtYmVyKG5hbWUsIHtfX3N5bWJvbGljOiAncHJvcGVydHknLCBkZWNvcmF0b3JzOiBwcm9wZXJ0eURlY29yYXRvcnN9KTtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfVxuICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIGlmIChtZW1iZXJzKSB7XG4gICAgICAgIHJlc3VsdC5tZW1iZXJzID0gbWVtYmVycztcbiAgICAgIH1cbiAgICAgIGlmIChzdGF0aWNzKSB7XG4gICAgICAgIHJlc3VsdC5zdGF0aWNzID0gc3RhdGljcztcbiAgICAgIH1cblxuICAgICAgcmV0dXJuIHJlY29yZEVudHJ5KHJlc3VsdCwgY2xhc3NEZWNsYXJhdGlvbik7XG4gICAgfVxuXG4gICAgLy8gQ29sbGVjdCBhbGwgZXhwb3J0ZWQgc3ltYm9scyBmcm9tIGFuIGV4cG9ydHMgY2xhdXNlLlxuICAgIGNvbnN0IGV4cG9ydE1hcCA9IG5ldyBNYXA8c3RyaW5nLCBzdHJpbmc+KCk7XG4gICAgdHMuZm9yRWFjaENoaWxkKHNvdXJjZUZpbGUsIG5vZGUgPT4ge1xuICAgICAgc3dpdGNoIChub2RlLmtpbmQpIHtcbiAgICAgICAgY2FzZSB0cy5TeW50YXhLaW5kLkV4cG9ydERlY2xhcmF0aW9uOlxuICAgICAgICAgIGNvbnN0IGV4cG9ydERlY2xhcmF0aW9uID0gPHRzLkV4cG9ydERlY2xhcmF0aW9uPm5vZGU7XG4gICAgICAgICAgY29uc3Qge21vZHVsZVNwZWNpZmllciwgZXhwb3J0Q2xhdXNlfSA9IGV4cG9ydERlY2xhcmF0aW9uO1xuXG4gICAgICAgICAgaWYgKCFtb2R1bGVTcGVjaWZpZXIgJiYgZXhwb3J0Q2xhdXNlICYmIHRzLmlzTmFtZWRFeHBvcnRzKGV4cG9ydENsYXVzZSkpIHtcbiAgICAgICAgICAgIC8vIElmIHRoZXJlIGlzIGEgbW9kdWxlIHNwZWNpZmllciB0aGVyZSBpcyBhbHNvIGFuIGV4cG9ydENsYXVzZVxuICAgICAgICAgICAgZXhwb3J0Q2xhdXNlLmVsZW1lbnRzLmZvckVhY2goc3BlYyA9PiB7XG4gICAgICAgICAgICAgIGNvbnN0IGV4cG9ydGVkQXMgPSBzcGVjLm5hbWUudGV4dDtcbiAgICAgICAgICAgICAgY29uc3QgbmFtZSA9IChzcGVjLnByb3BlcnR5TmFtZSB8fCBzcGVjLm5hbWUpLnRleHQ7XG4gICAgICAgICAgICAgIGV4cG9ydE1hcC5zZXQobmFtZSwgZXhwb3J0ZWRBcyk7XG4gICAgICAgICAgICB9KTtcbiAgICAgICAgICB9XG4gICAgICB9XG4gICAgfSk7XG5cbiAgICBjb25zdCBpc0V4cG9ydCA9IChub2RlOiB0cy5Ob2RlKSA9PiBzb3VyY2VGaWxlLmlzRGVjbGFyYXRpb25GaWxlIHx8XG4gICAgICAgIHRzLmdldENvbWJpbmVkTW9kaWZpZXJGbGFncyhub2RlIGFzIHRzLkRlY2xhcmF0aW9uKSAmIHRzLk1vZGlmaWVyRmxhZ3MuRXhwb3J0O1xuICAgIGNvbnN0IGlzRXhwb3J0ZWRJZGVudGlmaWVyID0gKGlkZW50aWZpZXI/OiB0cy5JZGVudGlmaWVyKSA9PlxuICAgICAgICBpZGVudGlmaWVyICYmIGV4cG9ydE1hcC5oYXMoaWRlbnRpZmllci50ZXh0KTtcbiAgICBjb25zdCBpc0V4cG9ydGVkID0gKG5vZGU6IHRzLkZ1bmN0aW9uRGVjbGFyYXRpb258dHMuQ2xhc3NEZWNsYXJhdGlvbnx0cy5UeXBlQWxpYXNEZWNsYXJhdGlvbnxcbiAgICAgICAgICAgICAgICAgICAgICAgIHRzLkludGVyZmFjZURlY2xhcmF0aW9ufHRzLkVudW1EZWNsYXJhdGlvbikgPT5cbiAgICAgICAgaXNFeHBvcnQobm9kZSkgfHwgaXNFeHBvcnRlZElkZW50aWZpZXIobm9kZS5uYW1lKTtcbiAgICBjb25zdCBleHBvcnRlZElkZW50aWZpZXJOYW1lID0gKGlkZW50aWZpZXI/OiB0cy5JZGVudGlmaWVyKSA9PlxuICAgICAgICBpZGVudGlmaWVyICYmIChleHBvcnRNYXAuZ2V0KGlkZW50aWZpZXIudGV4dCkgfHwgaWRlbnRpZmllci50ZXh0KTtcbiAgICBjb25zdCBleHBvcnRlZE5hbWUgPSAobm9kZTogdHMuRnVuY3Rpb25EZWNsYXJhdGlvbnx0cy5DbGFzc0RlY2xhcmF0aW9ufFxuICAgICAgICAgICAgICAgICAgICAgICAgICB0cy5JbnRlcmZhY2VEZWNsYXJhdGlvbnx0cy5UeXBlQWxpYXNEZWNsYXJhdGlvbnx0cy5FbnVtRGVjbGFyYXRpb24pID0+XG4gICAgICAgIGV4cG9ydGVkSWRlbnRpZmllck5hbWUobm9kZS5uYW1lKTtcblxuXG4gICAgLy8gUHJlLWRlY2xhcmUgY2xhc3NlcyBhbmQgZnVuY3Rpb25zXG4gICAgdHMuZm9yRWFjaENoaWxkKHNvdXJjZUZpbGUsIG5vZGUgPT4ge1xuICAgICAgc3dpdGNoIChub2RlLmtpbmQpIHtcbiAgICAgICAgY2FzZSB0cy5TeW50YXhLaW5kLkNsYXNzRGVjbGFyYXRpb246XG4gICAgICAgICAgY29uc3QgY2xhc3NEZWNsYXJhdGlvbiA9IDx0cy5DbGFzc0RlY2xhcmF0aW9uPm5vZGU7XG4gICAgICAgICAgaWYgKGNsYXNzRGVjbGFyYXRpb24ubmFtZSkge1xuICAgICAgICAgICAgY29uc3QgY2xhc3NOYW1lID0gY2xhc3NEZWNsYXJhdGlvbi5uYW1lLnRleHQ7XG4gICAgICAgICAgICBpZiAoaXNFeHBvcnRlZChjbGFzc0RlY2xhcmF0aW9uKSkge1xuICAgICAgICAgICAgICBsb2NhbHMuZGVmaW5lKFxuICAgICAgICAgICAgICAgICAgY2xhc3NOYW1lLCB7X19zeW1ib2xpYzogJ3JlZmVyZW5jZScsIG5hbWU6IGV4cG9ydGVkTmFtZShjbGFzc0RlY2xhcmF0aW9uKX0pO1xuICAgICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICAgbG9jYWxzLmRlZmluZShcbiAgICAgICAgICAgICAgICAgIGNsYXNzTmFtZSwgZXJyb3JTeW0oJ1JlZmVyZW5jZSB0byBub24tZXhwb3J0ZWQgY2xhc3MnLCBub2RlLCB7Y2xhc3NOYW1lfSkpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgICBicmVhaztcblxuICAgICAgICBjYXNlIHRzLlN5bnRheEtpbmQuSW50ZXJmYWNlRGVjbGFyYXRpb246XG4gICAgICAgICAgY29uc3QgaW50ZXJmYWNlRGVjbGFyYXRpb24gPSA8dHMuSW50ZXJmYWNlRGVjbGFyYXRpb24+bm9kZTtcbiAgICAgICAgICBpZiAoaW50ZXJmYWNlRGVjbGFyYXRpb24ubmFtZSkge1xuICAgICAgICAgICAgY29uc3QgaW50ZXJmYWNlTmFtZSA9IGludGVyZmFjZURlY2xhcmF0aW9uLm5hbWUudGV4dDtcbiAgICAgICAgICAgIC8vIEFsbCByZWZlcmVuY2VzIHRvIGludGVyZmFjZXMgc2hvdWxkIGJlIGNvbnZlcnRlZCB0byByZWZlcmVuY2VzIHRvIGBhbnlgLlxuICAgICAgICAgICAgbG9jYWxzLmRlZmluZShpbnRlcmZhY2VOYW1lLCB7X19zeW1ib2xpYzogJ3JlZmVyZW5jZScsIG5hbWU6ICdhbnknfSk7XG4gICAgICAgICAgfVxuICAgICAgICAgIGJyZWFrO1xuXG4gICAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5GdW5jdGlvbkRlY2xhcmF0aW9uOlxuICAgICAgICAgIGNvbnN0IGZ1bmN0aW9uRGVjbGFyYXRpb24gPSA8dHMuRnVuY3Rpb25EZWNsYXJhdGlvbj5ub2RlO1xuICAgICAgICAgIGlmICghaXNFeHBvcnRlZChmdW5jdGlvbkRlY2xhcmF0aW9uKSkge1xuICAgICAgICAgICAgLy8gUmVwb3J0IHJlZmVyZW5jZXMgdG8gdGhpcyBmdW5jdGlvbiBhcyBhbiBlcnJvci5cbiAgICAgICAgICAgIGNvbnN0IG5hbWVOb2RlID0gZnVuY3Rpb25EZWNsYXJhdGlvbi5uYW1lO1xuICAgICAgICAgICAgaWYgKG5hbWVOb2RlICYmIG5hbWVOb2RlLnRleHQpIHtcbiAgICAgICAgICAgICAgbG9jYWxzLmRlZmluZShcbiAgICAgICAgICAgICAgICAgIG5hbWVOb2RlLnRleHQsXG4gICAgICAgICAgICAgICAgICBlcnJvclN5bShcbiAgICAgICAgICAgICAgICAgICAgICAnUmVmZXJlbmNlIHRvIGEgbm9uLWV4cG9ydGVkIGZ1bmN0aW9uJywgbmFtZU5vZGUsIHtuYW1lOiBuYW1lTm9kZS50ZXh0fSkpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIHRzLmZvckVhY2hDaGlsZChzb3VyY2VGaWxlLCBub2RlID0+IHtcbiAgICAgIHN3aXRjaCAobm9kZS5raW5kKSB7XG4gICAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5FeHBvcnREZWNsYXJhdGlvbjpcbiAgICAgICAgICAvLyBSZWNvcmQgZXhwb3J0IGRlY2xhcmF0aW9uc1xuICAgICAgICAgIGNvbnN0IGV4cG9ydERlY2xhcmF0aW9uID0gPHRzLkV4cG9ydERlY2xhcmF0aW9uPm5vZGU7XG4gICAgICAgICAgY29uc3Qge21vZHVsZVNwZWNpZmllciwgZXhwb3J0Q2xhdXNlfSA9IGV4cG9ydERlY2xhcmF0aW9uO1xuXG4gICAgICAgICAgaWYgKCFtb2R1bGVTcGVjaWZpZXIpIHtcbiAgICAgICAgICAgIC8vIG5vIG1vZHVsZSBzcGVjaWZpZXIgLT4gZXhwb3J0IHtwcm9wTmFtZSBhcyBuYW1lfTtcbiAgICAgICAgICAgIGlmIChleHBvcnRDbGF1c2UgJiYgdHMuaXNOYW1lZEV4cG9ydHMoZXhwb3J0Q2xhdXNlKSkge1xuICAgICAgICAgICAgICBleHBvcnRDbGF1c2UuZWxlbWVudHMuZm9yRWFjaChzcGVjID0+IHtcbiAgICAgICAgICAgICAgICBjb25zdCBuYW1lID0gc3BlYy5uYW1lLnRleHQ7XG4gICAgICAgICAgICAgICAgLy8gSWYgdGhlIHN5bWJvbCB3YXMgbm90IGFscmVhZHkgZXhwb3J0ZWQsIGV4cG9ydCBhIHJlZmVyZW5jZSBzaW5jZSBpdCBpcyBhXG4gICAgICAgICAgICAgICAgLy8gcmVmZXJlbmNlIHRvIGFuIGltcG9ydFxuICAgICAgICAgICAgICAgIGlmICghbWV0YWRhdGEgfHwgIW1ldGFkYXRhW25hbWVdKSB7XG4gICAgICAgICAgICAgICAgICBjb25zdCBwcm9wTm9kZSA9IHNwZWMucHJvcGVydHlOYW1lIHx8IHNwZWMubmFtZTtcbiAgICAgICAgICAgICAgICAgIGNvbnN0IHZhbHVlOiBNZXRhZGF0YVZhbHVlID0gZXZhbHVhdG9yLmV2YWx1YXRlTm9kZShwcm9wTm9kZSk7XG4gICAgICAgICAgICAgICAgICBpZiAoIW1ldGFkYXRhKSBtZXRhZGF0YSA9IHt9O1xuICAgICAgICAgICAgICAgICAgbWV0YWRhdGFbbmFtZV0gPSByZWNvcmRFbnRyeSh2YWx1ZSwgbm9kZSk7XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICB9KTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG5cbiAgICAgICAgICBpZiAobW9kdWxlU3BlY2lmaWVyICYmIG1vZHVsZVNwZWNpZmllci5raW5kID09IHRzLlN5bnRheEtpbmQuU3RyaW5nTGl0ZXJhbCkge1xuICAgICAgICAgICAgLy8gSWdub3JlIGV4cG9ydHMgdGhhdCBkb24ndCBoYXZlIHN0cmluZyBsaXRlcmFscyBhcyBleHBvcnRzLlxuICAgICAgICAgICAgLy8gVGhpcyBpcyBhbGxvd2VkIGJ5IHRoZSBzeW50YXggYnV0IHdpbGwgYmUgZmxhZ2dlZCBhcyBhbiBlcnJvciBieSB0aGUgdHlwZSBjaGVja2VyLlxuICAgICAgICAgICAgY29uc3QgZnJvbSA9ICg8dHMuU3RyaW5nTGl0ZXJhbD5tb2R1bGVTcGVjaWZpZXIpLnRleHQ7XG4gICAgICAgICAgICBjb25zdCBtb2R1bGVFeHBvcnQ6IE1vZHVsZUV4cG9ydE1ldGFkYXRhID0ge2Zyb219O1xuICAgICAgICAgICAgaWYgKGV4cG9ydENsYXVzZSAmJiB0cy5pc05hbWVkRXhwb3J0cyhleHBvcnRDbGF1c2UpKSB7XG4gICAgICAgICAgICAgIG1vZHVsZUV4cG9ydC5leHBvcnQgPSBleHBvcnRDbGF1c2UuZWxlbWVudHMubWFwKFxuICAgICAgICAgICAgICAgICAgc3BlYyA9PiBzcGVjLnByb3BlcnR5TmFtZSA/IHtuYW1lOiBzcGVjLnByb3BlcnR5TmFtZS50ZXh0LCBhczogc3BlYy5uYW1lLnRleHR9IDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzcGVjLm5hbWUudGV4dCk7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICBpZiAoIWV4cG9ydHMpIGV4cG9ydHMgPSBbXTtcbiAgICAgICAgICAgIGV4cG9ydHMucHVzaChtb2R1bGVFeHBvcnQpO1xuICAgICAgICAgIH1cbiAgICAgICAgICBicmVhaztcbiAgICAgICAgY2FzZSB0cy5TeW50YXhLaW5kLkNsYXNzRGVjbGFyYXRpb246XG4gICAgICAgICAgY29uc3QgY2xhc3NEZWNsYXJhdGlvbiA9IDx0cy5DbGFzc0RlY2xhcmF0aW9uPm5vZGU7XG4gICAgICAgICAgaWYgKGNsYXNzRGVjbGFyYXRpb24ubmFtZSkge1xuICAgICAgICAgICAgaWYgKGlzRXhwb3J0ZWQoY2xhc3NEZWNsYXJhdGlvbikpIHtcbiAgICAgICAgICAgICAgY29uc3QgbmFtZSA9IGV4cG9ydGVkTmFtZShjbGFzc0RlY2xhcmF0aW9uKTtcbiAgICAgICAgICAgICAgaWYgKG5hbWUpIHtcbiAgICAgICAgICAgICAgICBpZiAoIW1ldGFkYXRhKSBtZXRhZGF0YSA9IHt9O1xuICAgICAgICAgICAgICAgIG1ldGFkYXRhW25hbWVdID0gY2xhc3NNZXRhZGF0YU9mKGNsYXNzRGVjbGFyYXRpb24pO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICAgIC8vIE90aGVyd2lzZSBkb24ndCByZWNvcmQgbWV0YWRhdGEgZm9yIHRoZSBjbGFzcy5cbiAgICAgICAgICBicmVhaztcblxuICAgICAgICBjYXNlIHRzLlN5bnRheEtpbmQuVHlwZUFsaWFzRGVjbGFyYXRpb246XG4gICAgICAgICAgY29uc3QgdHlwZURlY2xhcmF0aW9uID0gPHRzLlR5cGVBbGlhc0RlY2xhcmF0aW9uPm5vZGU7XG4gICAgICAgICAgaWYgKHR5cGVEZWNsYXJhdGlvbi5uYW1lICYmIGlzRXhwb3J0ZWQodHlwZURlY2xhcmF0aW9uKSkge1xuICAgICAgICAgICAgY29uc3QgbmFtZSA9IGV4cG9ydGVkTmFtZSh0eXBlRGVjbGFyYXRpb24pO1xuICAgICAgICAgICAgaWYgKG5hbWUpIHtcbiAgICAgICAgICAgICAgaWYgKCFtZXRhZGF0YSkgbWV0YWRhdGEgPSB7fTtcbiAgICAgICAgICAgICAgbWV0YWRhdGFbbmFtZV0gPSB7X19zeW1ib2xpYzogJ2ludGVyZmFjZSd9O1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgICBicmVhaztcblxuICAgICAgICBjYXNlIHRzLlN5bnRheEtpbmQuSW50ZXJmYWNlRGVjbGFyYXRpb246XG4gICAgICAgICAgY29uc3QgaW50ZXJmYWNlRGVjbGFyYXRpb24gPSA8dHMuSW50ZXJmYWNlRGVjbGFyYXRpb24+bm9kZTtcbiAgICAgICAgICBpZiAoaW50ZXJmYWNlRGVjbGFyYXRpb24ubmFtZSAmJiBpc0V4cG9ydGVkKGludGVyZmFjZURlY2xhcmF0aW9uKSkge1xuICAgICAgICAgICAgY29uc3QgbmFtZSA9IGV4cG9ydGVkTmFtZShpbnRlcmZhY2VEZWNsYXJhdGlvbik7XG4gICAgICAgICAgICBpZiAobmFtZSkge1xuICAgICAgICAgICAgICBpZiAoIW1ldGFkYXRhKSBtZXRhZGF0YSA9IHt9O1xuICAgICAgICAgICAgICBtZXRhZGF0YVtuYW1lXSA9IHtfX3N5bWJvbGljOiAnaW50ZXJmYWNlJ307XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICAgIGJyZWFrO1xuXG4gICAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5GdW5jdGlvbkRlY2xhcmF0aW9uOlxuICAgICAgICAgIC8vIFJlY29yZCBmdW5jdGlvbnMgdGhhdCByZXR1cm4gYSBzaW5nbGUgdmFsdWUuIFJlY29yZCB0aGUgcGFyYW1ldGVyXG4gICAgICAgICAgLy8gbmFtZXMgc3Vic3RpdHV0aW9uIHdpbGwgYmUgcGVyZm9ybWVkIGJ5IHRoZSBTdGF0aWNSZWZsZWN0b3IuXG4gICAgICAgICAgY29uc3QgZnVuY3Rpb25EZWNsYXJhdGlvbiA9IDx0cy5GdW5jdGlvbkRlY2xhcmF0aW9uPm5vZGU7XG4gICAgICAgICAgaWYgKGlzRXhwb3J0ZWQoZnVuY3Rpb25EZWNsYXJhdGlvbikgJiYgZnVuY3Rpb25EZWNsYXJhdGlvbi5uYW1lKSB7XG4gICAgICAgICAgICBjb25zdCBuYW1lID0gZXhwb3J0ZWROYW1lKGZ1bmN0aW9uRGVjbGFyYXRpb24pO1xuICAgICAgICAgICAgY29uc3QgbWF5YmVGdW5jID0gbWF5YmVHZXRTaW1wbGVGdW5jdGlvbihmdW5jdGlvbkRlY2xhcmF0aW9uKTtcbiAgICAgICAgICAgIGlmIChuYW1lKSB7XG4gICAgICAgICAgICAgIGlmICghbWV0YWRhdGEpIG1ldGFkYXRhID0ge307XG4gICAgICAgICAgICAgIC8vIFRPRE8oYWx4aHViKTogVGhlIGxpdGVyYWwgaGVyZSBpcyBub3QgdmFsaWQgRnVuY3Rpb25NZXRhZGF0YS5cbiAgICAgICAgICAgICAgbWV0YWRhdGFbbmFtZV0gPVxuICAgICAgICAgICAgICAgICAgbWF5YmVGdW5jID8gcmVjb3JkRW50cnkobWF5YmVGdW5jLmZ1bmMsIG5vZGUpIDogKHtfX3N5bWJvbGljOiAnZnVuY3Rpb24nfSBhcyBhbnkpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH1cbiAgICAgICAgICBicmVhaztcblxuICAgICAgICBjYXNlIHRzLlN5bnRheEtpbmQuRW51bURlY2xhcmF0aW9uOlxuICAgICAgICAgIGNvbnN0IGVudW1EZWNsYXJhdGlvbiA9IDx0cy5FbnVtRGVjbGFyYXRpb24+bm9kZTtcbiAgICAgICAgICBpZiAoaXNFeHBvcnRlZChlbnVtRGVjbGFyYXRpb24pKSB7XG4gICAgICAgICAgICBjb25zdCBlbnVtVmFsdWVIb2xkZXI6IHtbbmFtZTogc3RyaW5nXTogTWV0YWRhdGFWYWx1ZX0gPSB7fTtcbiAgICAgICAgICAgIGNvbnN0IGVudW1OYW1lID0gZXhwb3J0ZWROYW1lKGVudW1EZWNsYXJhdGlvbik7XG4gICAgICAgICAgICBsZXQgbmV4dERlZmF1bHRWYWx1ZTogTWV0YWRhdGFWYWx1ZSA9IDA7XG4gICAgICAgICAgICBsZXQgd3JpdHRlbk1lbWJlcnMgPSAwO1xuICAgICAgICAgICAgZm9yIChjb25zdCBtZW1iZXIgb2YgZW51bURlY2xhcmF0aW9uLm1lbWJlcnMpIHtcbiAgICAgICAgICAgICAgbGV0IGVudW1WYWx1ZTogTWV0YWRhdGFWYWx1ZTtcbiAgICAgICAgICAgICAgaWYgKCFtZW1iZXIuaW5pdGlhbGl6ZXIpIHtcbiAgICAgICAgICAgICAgICBlbnVtVmFsdWUgPSBuZXh0RGVmYXVsdFZhbHVlO1xuICAgICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgIGVudW1WYWx1ZSA9IGV2YWx1YXRvci5ldmFsdWF0ZU5vZGUobWVtYmVyLmluaXRpYWxpemVyKTtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICBsZXQgbmFtZTogc3RyaW5nfHVuZGVmaW5lZCA9IHVuZGVmaW5lZDtcbiAgICAgICAgICAgICAgaWYgKG1lbWJlci5uYW1lLmtpbmQgPT0gdHMuU3ludGF4S2luZC5JZGVudGlmaWVyKSB7XG4gICAgICAgICAgICAgICAgY29uc3QgaWRlbnRpZmllciA9IDx0cy5JZGVudGlmaWVyPm1lbWJlci5uYW1lO1xuICAgICAgICAgICAgICAgIG5hbWUgPSBpZGVudGlmaWVyLnRleHQ7XG4gICAgICAgICAgICAgICAgZW51bVZhbHVlSG9sZGVyW25hbWVdID0gZW51bVZhbHVlO1xuICAgICAgICAgICAgICAgIHdyaXR0ZW5NZW1iZXJzKys7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgaWYgKHR5cGVvZiBlbnVtVmFsdWUgPT09ICdudW1iZXInKSB7XG4gICAgICAgICAgICAgICAgbmV4dERlZmF1bHRWYWx1ZSA9IGVudW1WYWx1ZSArIDE7XG4gICAgICAgICAgICAgIH0gZWxzZSBpZiAobmFtZSkge1xuICAgICAgICAgICAgICAgIC8vIFRPRE8oYWx4aHViKTogJ2xlZnQnIGhlcmUgaGFzIGEgbmFtZSBwcm9wZXJ5IHdoaWNoIGlzIG5vdCB2YWxpZCBmb3JcbiAgICAgICAgICAgICAgICAvLyBNZXRhZGF0YVN5bWJvbGljU2VsZWN0RXhwcmVzc2lvbi5cbiAgICAgICAgICAgICAgICBuZXh0RGVmYXVsdFZhbHVlID0ge1xuICAgICAgICAgICAgICAgICAgX19zeW1ib2xpYzogJ2JpbmFyeScsXG4gICAgICAgICAgICAgICAgICBvcGVyYXRvcjogJysnLFxuICAgICAgICAgICAgICAgICAgbGVmdDoge1xuICAgICAgICAgICAgICAgICAgICBfX3N5bWJvbGljOiAnc2VsZWN0JyxcbiAgICAgICAgICAgICAgICAgICAgZXhwcmVzc2lvbjogcmVjb3JkRW50cnkoe19fc3ltYm9saWM6ICdyZWZlcmVuY2UnLCBuYW1lOiBlbnVtTmFtZX0sIG5vZGUpLFxuICAgICAgICAgICAgICAgICAgICBuYW1lXG4gICAgICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgICAgIH0gYXMgYW55O1xuICAgICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgIG5leHREZWZhdWx0VmFsdWUgPVxuICAgICAgICAgICAgICAgICAgICByZWNvcmRFbnRyeShlcnJvclN5bSgnVW5zdXBwb3J0ZWQgZW51bSBtZW1iZXIgbmFtZScsIG1lbWJlci5uYW1lKSwgbm9kZSk7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIGlmICh3cml0dGVuTWVtYmVycykge1xuICAgICAgICAgICAgICBpZiAoZW51bU5hbWUpIHtcbiAgICAgICAgICAgICAgICBpZiAoIW1ldGFkYXRhKSBtZXRhZGF0YSA9IHt9O1xuICAgICAgICAgICAgICAgIG1ldGFkYXRhW2VudW1OYW1lXSA9IHJlY29yZEVudHJ5KGVudW1WYWx1ZUhvbGRlciwgbm9kZSk7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgICAgYnJlYWs7XG5cbiAgICAgICAgY2FzZSB0cy5TeW50YXhLaW5kLlZhcmlhYmxlU3RhdGVtZW50OlxuICAgICAgICAgIGNvbnN0IHZhcmlhYmxlU3RhdGVtZW50ID0gPHRzLlZhcmlhYmxlU3RhdGVtZW50Pm5vZGU7XG4gICAgICAgICAgZm9yIChjb25zdCB2YXJpYWJsZURlY2xhcmF0aW9uIG9mIHZhcmlhYmxlU3RhdGVtZW50LmRlY2xhcmF0aW9uTGlzdC5kZWNsYXJhdGlvbnMpIHtcbiAgICAgICAgICAgIGlmICh2YXJpYWJsZURlY2xhcmF0aW9uLm5hbWUua2luZCA9PSB0cy5TeW50YXhLaW5kLklkZW50aWZpZXIpIHtcbiAgICAgICAgICAgICAgY29uc3QgbmFtZU5vZGUgPSA8dHMuSWRlbnRpZmllcj52YXJpYWJsZURlY2xhcmF0aW9uLm5hbWU7XG4gICAgICAgICAgICAgIGxldCB2YXJWYWx1ZTogTWV0YWRhdGFWYWx1ZTtcbiAgICAgICAgICAgICAgaWYgKHZhcmlhYmxlRGVjbGFyYXRpb24uaW5pdGlhbGl6ZXIpIHtcbiAgICAgICAgICAgICAgICB2YXJWYWx1ZSA9IGV2YWx1YXRvci5ldmFsdWF0ZU5vZGUodmFyaWFibGVEZWNsYXJhdGlvbi5pbml0aWFsaXplcik7XG4gICAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICAgdmFyVmFsdWUgPSByZWNvcmRFbnRyeShlcnJvclN5bSgnVmFyaWFibGUgbm90IGluaXRpYWxpemVkJywgbmFtZU5vZGUpLCBuYW1lTm9kZSk7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgbGV0IGV4cG9ydGVkID0gZmFsc2U7XG4gICAgICAgICAgICAgIGlmIChpc0V4cG9ydCh2YXJpYWJsZVN0YXRlbWVudCkgfHwgaXNFeHBvcnQodmFyaWFibGVEZWNsYXJhdGlvbikgfHxcbiAgICAgICAgICAgICAgICAgIGlzRXhwb3J0ZWRJZGVudGlmaWVyKG5hbWVOb2RlKSkge1xuICAgICAgICAgICAgICAgIGNvbnN0IG5hbWUgPSBleHBvcnRlZElkZW50aWZpZXJOYW1lKG5hbWVOb2RlKTtcbiAgICAgICAgICAgICAgICBpZiAobmFtZSkge1xuICAgICAgICAgICAgICAgICAgaWYgKCFtZXRhZGF0YSkgbWV0YWRhdGEgPSB7fTtcbiAgICAgICAgICAgICAgICAgIG1ldGFkYXRhW25hbWVdID0gcmVjb3JkRW50cnkodmFyVmFsdWUsIG5vZGUpO1xuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICBleHBvcnRlZCA9IHRydWU7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgaWYgKHR5cGVvZiB2YXJWYWx1ZSA9PSAnc3RyaW5nJyB8fCB0eXBlb2YgdmFyVmFsdWUgPT0gJ251bWJlcicgfHxcbiAgICAgICAgICAgICAgICAgIHR5cGVvZiB2YXJWYWx1ZSA9PSAnYm9vbGVhbicpIHtcbiAgICAgICAgICAgICAgICBsb2NhbHMuZGVmaW5lKG5hbWVOb2RlLnRleHQsIHZhclZhbHVlKTtcbiAgICAgICAgICAgICAgICBpZiAoZXhwb3J0ZWQpIHtcbiAgICAgICAgICAgICAgICAgIGxvY2Fscy5kZWZpbmVSZWZlcmVuY2UoXG4gICAgICAgICAgICAgICAgICAgICAgbmFtZU5vZGUudGV4dCwge19fc3ltYm9saWM6ICdyZWZlcmVuY2UnLCBuYW1lOiBuYW1lTm9kZS50ZXh0fSk7XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICB9IGVsc2UgaWYgKCFleHBvcnRlZCkge1xuICAgICAgICAgICAgICAgIGlmICh2YXJWYWx1ZSAmJiAhaXNNZXRhZGF0YUVycm9yKHZhclZhbHVlKSkge1xuICAgICAgICAgICAgICAgICAgbG9jYWxzLmRlZmluZShuYW1lTm9kZS50ZXh0LCByZWNvcmRFbnRyeSh2YXJWYWx1ZSwgbm9kZSkpO1xuICAgICAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICAgICBsb2NhbHMuZGVmaW5lKFxuICAgICAgICAgICAgICAgICAgICAgIG5hbWVOb2RlLnRleHQsXG4gICAgICAgICAgICAgICAgICAgICAgcmVjb3JkRW50cnkoXG4gICAgICAgICAgICAgICAgICAgICAgICAgIGVycm9yU3ltKCdSZWZlcmVuY2UgdG8gYSBsb2NhbCBzeW1ib2wnLCBuYW1lTm9kZSwge25hbWU6IG5hbWVOb2RlLnRleHR9KSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgbm9kZSkpO1xuICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgICAgLy8gRGVzdHJ1Y3R1cmluZyAob3IgYmluZGluZykgZGVjbGFyYXRpb25zIGFyZSBub3Qgc3VwcG9ydGVkLFxuICAgICAgICAgICAgICAvLyB2YXIgezxpZGVudGlmaWVyPlssIDxpZGVudGlmaWVyPl0rfSA9IDxleHByZXNzaW9uPjtcbiAgICAgICAgICAgICAgLy8gICBvclxuICAgICAgICAgICAgICAvLyB2YXIgWzxpZGVudGlmaWVyPlssIDxpZGVudGlmaWVyfStdID0gPGV4cHJlc3Npb24+O1xuICAgICAgICAgICAgICAvLyBhcmUgbm90IHN1cHBvcnRlZC5cbiAgICAgICAgICAgICAgY29uc3QgcmVwb3J0OiAobmFtZU5vZGU6IHRzLk5vZGUpID0+IHZvaWQgPSAobmFtZU5vZGU6IHRzLk5vZGUpID0+IHtcbiAgICAgICAgICAgICAgICBzd2l0Y2ggKG5hbWVOb2RlLmtpbmQpIHtcbiAgICAgICAgICAgICAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5JZGVudGlmaWVyOlxuICAgICAgICAgICAgICAgICAgICBjb25zdCBuYW1lID0gPHRzLklkZW50aWZpZXI+bmFtZU5vZGU7XG4gICAgICAgICAgICAgICAgICAgIGNvbnN0IHZhclZhbHVlID0gZXJyb3JTeW0oJ0Rlc3RydWN0dXJpbmcgbm90IHN1cHBvcnRlZCcsIG5hbWUpO1xuICAgICAgICAgICAgICAgICAgICBsb2NhbHMuZGVmaW5lKG5hbWUudGV4dCwgdmFyVmFsdWUpO1xuICAgICAgICAgICAgICAgICAgICBpZiAoaXNFeHBvcnQobm9kZSkpIHtcbiAgICAgICAgICAgICAgICAgICAgICBpZiAoIW1ldGFkYXRhKSBtZXRhZGF0YSA9IHt9O1xuICAgICAgICAgICAgICAgICAgICAgIG1ldGFkYXRhW25hbWUudGV4dF0gPSB2YXJWYWx1ZTtcbiAgICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICAgICAgICAgIGNhc2UgdHMuU3ludGF4S2luZC5CaW5kaW5nRWxlbWVudDpcbiAgICAgICAgICAgICAgICAgICAgY29uc3QgYmluZGluZ0VsZW1lbnQgPSA8dHMuQmluZGluZ0VsZW1lbnQ+bmFtZU5vZGU7XG4gICAgICAgICAgICAgICAgICAgIHJlcG9ydChiaW5kaW5nRWxlbWVudC5uYW1lKTtcbiAgICAgICAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICAgICAgICBjYXNlIHRzLlN5bnRheEtpbmQuT2JqZWN0QmluZGluZ1BhdHRlcm46XG4gICAgICAgICAgICAgICAgICBjYXNlIHRzLlN5bnRheEtpbmQuQXJyYXlCaW5kaW5nUGF0dGVybjpcbiAgICAgICAgICAgICAgICAgICAgY29uc3QgYmluZGluZ3MgPSA8dHMuQmluZGluZ1BhdHRlcm4+bmFtZU5vZGU7XG4gICAgICAgICAgICAgICAgICAgIChiaW5kaW5ncyBhcyBhbnkpLmVsZW1lbnRzLmZvckVhY2gocmVwb3J0KTtcbiAgICAgICAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICB9O1xuICAgICAgICAgICAgICByZXBvcnQodmFyaWFibGVEZWNsYXJhdGlvbi5uYW1lKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgfSk7XG5cbiAgICBpZiAobWV0YWRhdGEgfHwgZXhwb3J0cykge1xuICAgICAgaWYgKCFtZXRhZGF0YSlcbiAgICAgICAgbWV0YWRhdGEgPSB7fTtcbiAgICAgIGVsc2UgaWYgKHN0cmljdCkge1xuICAgICAgICB2YWxpZGF0ZU1ldGFkYXRhKHNvdXJjZUZpbGUsIG5vZGVNYXAsIG1ldGFkYXRhKTtcbiAgICAgIH1cbiAgICAgIGNvbnN0IHJlc3VsdDogTW9kdWxlTWV0YWRhdGEgPSB7XG4gICAgICAgIF9fc3ltYm9saWM6ICdtb2R1bGUnLFxuICAgICAgICB2ZXJzaW9uOiB0aGlzLm9wdGlvbnMudmVyc2lvbiB8fCBNRVRBREFUQV9WRVJTSU9OLFxuICAgICAgICBtZXRhZGF0YVxuICAgICAgfTtcbiAgICAgIGlmIChzb3VyY2VGaWxlLm1vZHVsZU5hbWUpIHJlc3VsdC5pbXBvcnRBcyA9IHNvdXJjZUZpbGUubW9kdWxlTmFtZTtcbiAgICAgIGlmIChleHBvcnRzKSByZXN1bHQuZXhwb3J0cyA9IGV4cG9ydHM7XG4gICAgICByZXR1cm4gcmVzdWx0O1xuICAgIH1cbiAgfVxufVxuXG4vLyBUaGlzIHdpbGwgdGhyb3cgaWYgdGhlIG1ldGFkYXRhIGVudHJ5IGdpdmVuIGNvbnRhaW5zIGFuIGVycm9yIG5vZGUuXG5mdW5jdGlvbiB2YWxpZGF0ZU1ldGFkYXRhKFxuICAgIHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUsIG5vZGVNYXA6IE1hcDxNZXRhZGF0YUVudHJ5LCB0cy5Ob2RlPixcbiAgICBtZXRhZGF0YToge1tuYW1lOiBzdHJpbmddOiBNZXRhZGF0YUVudHJ5fSkge1xuICBsZXQgbG9jYWxzOiBTZXQ8c3RyaW5nPiA9IG5ldyBTZXQoWydBcnJheScsICdPYmplY3QnLCAnU2V0JywgJ01hcCcsICdzdHJpbmcnLCAnbnVtYmVyJywgJ2FueSddKTtcblxuICBmdW5jdGlvbiB2YWxpZGF0ZUV4cHJlc3Npb24oZXhwcmVzc2lvbjogTWV0YWRhdGFWYWx1ZXxNZXRhZGF0YVN5bWJvbGljRXhwcmVzc2lvbnxNZXRhZGF0YUVycm9yKSB7XG4gICAgaWYgKCFleHByZXNzaW9uKSB7XG4gICAgICByZXR1cm47XG4gICAgfSBlbHNlIGlmIChBcnJheS5pc0FycmF5KGV4cHJlc3Npb24pKSB7XG4gICAgICBleHByZXNzaW9uLmZvckVhY2godmFsaWRhdGVFeHByZXNzaW9uKTtcbiAgICB9IGVsc2UgaWYgKHR5cGVvZiBleHByZXNzaW9uID09PSAnb2JqZWN0JyAmJiAhZXhwcmVzc2lvbi5oYXNPd25Qcm9wZXJ0eSgnX19zeW1ib2xpYycpKSB7XG4gICAgICBPYmplY3QuZ2V0T3duUHJvcGVydHlOYW1lcyhleHByZXNzaW9uKS5mb3JFYWNoKHYgPT4gdmFsaWRhdGVFeHByZXNzaW9uKCg8YW55PmV4cHJlc3Npb24pW3ZdKSk7XG4gICAgfSBlbHNlIGlmIChpc01ldGFkYXRhRXJyb3IoZXhwcmVzc2lvbikpIHtcbiAgICAgIHJlcG9ydEVycm9yKGV4cHJlc3Npb24pO1xuICAgIH0gZWxzZSBpZiAoaXNNZXRhZGF0YUdsb2JhbFJlZmVyZW5jZUV4cHJlc3Npb24oZXhwcmVzc2lvbikpIHtcbiAgICAgIGlmICghbG9jYWxzLmhhcyhleHByZXNzaW9uLm5hbWUpKSB7XG4gICAgICAgIGNvbnN0IHJlZmVyZW5jZSA9IDxNZXRhZGF0YVZhbHVlPm1ldGFkYXRhW2V4cHJlc3Npb24ubmFtZV07XG4gICAgICAgIGlmIChyZWZlcmVuY2UpIHtcbiAgICAgICAgICB2YWxpZGF0ZUV4cHJlc3Npb24ocmVmZXJlbmNlKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH0gZWxzZSBpZiAoaXNGdW5jdGlvbk1ldGFkYXRhKGV4cHJlc3Npb24pKSB7XG4gICAgICB2YWxpZGF0ZUZ1bmN0aW9uKDxhbnk+ZXhwcmVzc2lvbik7XG4gICAgfSBlbHNlIGlmIChpc01ldGFkYXRhU3ltYm9saWNFeHByZXNzaW9uKGV4cHJlc3Npb24pKSB7XG4gICAgICBzd2l0Y2ggKGV4cHJlc3Npb24uX19zeW1ib2xpYykge1xuICAgICAgICBjYXNlICdiaW5hcnknOlxuICAgICAgICAgIGNvbnN0IGJpbmFyeUV4cHJlc3Npb24gPSA8TWV0YWRhdGFTeW1ib2xpY0JpbmFyeUV4cHJlc3Npb24+ZXhwcmVzc2lvbjtcbiAgICAgICAgICB2YWxpZGF0ZUV4cHJlc3Npb24oYmluYXJ5RXhwcmVzc2lvbi5sZWZ0KTtcbiAgICAgICAgICB2YWxpZGF0ZUV4cHJlc3Npb24oYmluYXJ5RXhwcmVzc2lvbi5yaWdodCk7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIGNhc2UgJ2NhbGwnOlxuICAgICAgICBjYXNlICduZXcnOlxuICAgICAgICAgIGNvbnN0IGNhbGxFeHByZXNzaW9uID0gPE1ldGFkYXRhU3ltYm9saWNDYWxsRXhwcmVzc2lvbj5leHByZXNzaW9uO1xuICAgICAgICAgIHZhbGlkYXRlRXhwcmVzc2lvbihjYWxsRXhwcmVzc2lvbi5leHByZXNzaW9uKTtcbiAgICAgICAgICBpZiAoY2FsbEV4cHJlc3Npb24uYXJndW1lbnRzKSBjYWxsRXhwcmVzc2lvbi5hcmd1bWVudHMuZm9yRWFjaCh2YWxpZGF0ZUV4cHJlc3Npb24pO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICBjYXNlICdpbmRleCc6XG4gICAgICAgICAgY29uc3QgaW5kZXhFeHByZXNzaW9uID0gPE1ldGFkYXRhU3ltYm9saWNJbmRleEV4cHJlc3Npb24+ZXhwcmVzc2lvbjtcbiAgICAgICAgICB2YWxpZGF0ZUV4cHJlc3Npb24oaW5kZXhFeHByZXNzaW9uLmV4cHJlc3Npb24pO1xuICAgICAgICAgIHZhbGlkYXRlRXhwcmVzc2lvbihpbmRleEV4cHJlc3Npb24uaW5kZXgpO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICBjYXNlICdwcmUnOlxuICAgICAgICAgIGNvbnN0IHByZWZpeEV4cHJlc3Npb24gPSA8TWV0YWRhdGFTeW1ib2xpY1ByZWZpeEV4cHJlc3Npb24+ZXhwcmVzc2lvbjtcbiAgICAgICAgICB2YWxpZGF0ZUV4cHJlc3Npb24ocHJlZml4RXhwcmVzc2lvbi5vcGVyYW5kKTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgY2FzZSAnc2VsZWN0JzpcbiAgICAgICAgICBjb25zdCBzZWxlY3RFeHByZXNzaW9uID0gPE1ldGFkYXRhU3ltYm9saWNTZWxlY3RFeHByZXNzaW9uPmV4cHJlc3Npb247XG4gICAgICAgICAgdmFsaWRhdGVFeHByZXNzaW9uKHNlbGVjdEV4cHJlc3Npb24uZXhwcmVzc2lvbik7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIGNhc2UgJ3NwcmVhZCc6XG4gICAgICAgICAgY29uc3Qgc3ByZWFkRXhwcmVzc2lvbiA9IDxNZXRhZGF0YVN5bWJvbGljU3ByZWFkRXhwcmVzc2lvbj5leHByZXNzaW9uO1xuICAgICAgICAgIHZhbGlkYXRlRXhwcmVzc2lvbihzcHJlYWRFeHByZXNzaW9uLmV4cHJlc3Npb24pO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICBjYXNlICdpZic6XG4gICAgICAgICAgY29uc3QgaWZFeHByZXNzaW9uID0gPE1ldGFkYXRhU3ltYm9saWNJZkV4cHJlc3Npb24+ZXhwcmVzc2lvbjtcbiAgICAgICAgICB2YWxpZGF0ZUV4cHJlc3Npb24oaWZFeHByZXNzaW9uLmNvbmRpdGlvbik7XG4gICAgICAgICAgdmFsaWRhdGVFeHByZXNzaW9uKGlmRXhwcmVzc2lvbi5lbHNlRXhwcmVzc2lvbik7XG4gICAgICAgICAgdmFsaWRhdGVFeHByZXNzaW9uKGlmRXhwcmVzc2lvbi50aGVuRXhwcmVzc2lvbik7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgZnVuY3Rpb24gdmFsaWRhdGVNZW1iZXIoY2xhc3NEYXRhOiBDbGFzc01ldGFkYXRhLCBtZW1iZXI6IE1lbWJlck1ldGFkYXRhKSB7XG4gICAgaWYgKG1lbWJlci5kZWNvcmF0b3JzKSB7XG4gICAgICBtZW1iZXIuZGVjb3JhdG9ycy5mb3JFYWNoKHZhbGlkYXRlRXhwcmVzc2lvbik7XG4gICAgfVxuICAgIGlmIChpc01ldGhvZE1ldGFkYXRhKG1lbWJlcikgJiYgbWVtYmVyLnBhcmFtZXRlckRlY29yYXRvcnMpIHtcbiAgICAgIG1lbWJlci5wYXJhbWV0ZXJEZWNvcmF0b3JzLmZvckVhY2godmFsaWRhdGVFeHByZXNzaW9uKTtcbiAgICB9XG4gICAgLy8gT25seSB2YWxpZGF0ZSBwYXJhbWV0ZXJzIG9mIGNsYXNzZXMgZm9yIHdoaWNoIHdlIGtub3cgdGhhdCBhcmUgdXNlZCB3aXRoIG91ciBESVxuICAgIGlmIChjbGFzc0RhdGEuZGVjb3JhdG9ycyAmJiBpc0NvbnN0cnVjdG9yTWV0YWRhdGEobWVtYmVyKSAmJiBtZW1iZXIucGFyYW1ldGVycykge1xuICAgICAgbWVtYmVyLnBhcmFtZXRlcnMuZm9yRWFjaCh2YWxpZGF0ZUV4cHJlc3Npb24pO1xuICAgIH1cbiAgfVxuXG4gIGZ1bmN0aW9uIHZhbGlkYXRlQ2xhc3MoY2xhc3NEYXRhOiBDbGFzc01ldGFkYXRhKSB7XG4gICAgaWYgKGNsYXNzRGF0YS5kZWNvcmF0b3JzKSB7XG4gICAgICBjbGFzc0RhdGEuZGVjb3JhdG9ycy5mb3JFYWNoKHZhbGlkYXRlRXhwcmVzc2lvbik7XG4gICAgfVxuICAgIGlmIChjbGFzc0RhdGEubWVtYmVycykge1xuICAgICAgT2JqZWN0LmdldE93blByb3BlcnR5TmFtZXMoY2xhc3NEYXRhLm1lbWJlcnMpXG4gICAgICAgICAgLmZvckVhY2gobmFtZSA9PiBjbGFzc0RhdGEubWVtYmVycyFbbmFtZV0uZm9yRWFjaCgobSkgPT4gdmFsaWRhdGVNZW1iZXIoY2xhc3NEYXRhLCBtKSkpO1xuICAgIH1cbiAgICBpZiAoY2xhc3NEYXRhLnN0YXRpY3MpIHtcbiAgICAgIE9iamVjdC5nZXRPd25Qcm9wZXJ0eU5hbWVzKGNsYXNzRGF0YS5zdGF0aWNzKS5mb3JFYWNoKG5hbWUgPT4ge1xuICAgICAgICBjb25zdCBzdGF0aWNNZW1iZXIgPSBjbGFzc0RhdGEuc3RhdGljcyFbbmFtZV07XG4gICAgICAgIGlmIChpc0Z1bmN0aW9uTWV0YWRhdGEoc3RhdGljTWVtYmVyKSkge1xuICAgICAgICAgIHZhbGlkYXRlRXhwcmVzc2lvbihzdGF0aWNNZW1iZXIudmFsdWUpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIHZhbGlkYXRlRXhwcmVzc2lvbihzdGF0aWNNZW1iZXIpO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICB9XG4gIH1cblxuICBmdW5jdGlvbiB2YWxpZGF0ZUZ1bmN0aW9uKGZ1bmN0aW9uRGVjbGFyYXRpb246IEZ1bmN0aW9uTWV0YWRhdGEpIHtcbiAgICBpZiAoZnVuY3Rpb25EZWNsYXJhdGlvbi52YWx1ZSkge1xuICAgICAgY29uc3Qgb2xkTG9jYWxzID0gbG9jYWxzO1xuICAgICAgaWYgKGZ1bmN0aW9uRGVjbGFyYXRpb24ucGFyYW1ldGVycykge1xuICAgICAgICBsb2NhbHMgPSBuZXcgU2V0KG9sZExvY2Fscy52YWx1ZXMoKSk7XG4gICAgICAgIGlmIChmdW5jdGlvbkRlY2xhcmF0aW9uLnBhcmFtZXRlcnMpXG4gICAgICAgICAgZnVuY3Rpb25EZWNsYXJhdGlvbi5wYXJhbWV0ZXJzLmZvckVhY2gobiA9PiBsb2NhbHMuYWRkKG4pKTtcbiAgICAgIH1cbiAgICAgIHZhbGlkYXRlRXhwcmVzc2lvbihmdW5jdGlvbkRlY2xhcmF0aW9uLnZhbHVlKTtcbiAgICAgIGxvY2FscyA9IG9sZExvY2FscztcbiAgICB9XG4gIH1cblxuICBmdW5jdGlvbiBzaG91bGRSZXBvcnROb2RlKG5vZGU6IHRzLk5vZGV8dW5kZWZpbmVkKSB7XG4gICAgaWYgKG5vZGUpIHtcbiAgICAgIGNvbnN0IG5vZGVTdGFydCA9IG5vZGUuZ2V0U3RhcnQoKTtcbiAgICAgIHJldHVybiAhKFxuICAgICAgICAgIG5vZGUucG9zICE9IG5vZGVTdGFydCAmJlxuICAgICAgICAgIHNvdXJjZUZpbGUudGV4dC5zdWJzdHJpbmcobm9kZS5wb3MsIG5vZGVTdGFydCkuaW5kZXhPZignQGR5bmFtaWMnKSA+PSAwKTtcbiAgICB9XG4gICAgcmV0dXJuIHRydWU7XG4gIH1cblxuICBmdW5jdGlvbiByZXBvcnRFcnJvcihlcnJvcjogTWV0YWRhdGFFcnJvcikge1xuICAgIGNvbnN0IG5vZGUgPSBub2RlTWFwLmdldChlcnJvcik7XG4gICAgaWYgKHNob3VsZFJlcG9ydE5vZGUobm9kZSkpIHtcbiAgICAgIGNvbnN0IGxpbmVJbmZvID0gZXJyb3IubGluZSAhPSB1bmRlZmluZWQgPyBlcnJvci5jaGFyYWN0ZXIgIT0gdW5kZWZpbmVkID9cbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBgOiR7ZXJyb3IubGluZSArIDF9OiR7ZXJyb3IuY2hhcmFjdGVyICsgMX1gIDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBgOiR7ZXJyb3IubGluZSArIDF9YCA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJyc7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoYCR7c291cmNlRmlsZS5maWxlTmFtZX0ke1xuICAgICAgICAgIGxpbmVJbmZvfTogTWV0YWRhdGEgY29sbGVjdGVkIGNvbnRhaW5zIGFuIGVycm9yIHRoYXQgd2lsbCBiZSByZXBvcnRlZCBhdCBydW50aW1lOiAke1xuICAgICAgICAgIGV4cGFuZGVkTWVzc2FnZShlcnJvcil9LlxcbiAgJHtKU09OLnN0cmluZ2lmeShlcnJvcil9YCk7XG4gICAgfVxuICB9XG5cbiAgT2JqZWN0LmdldE93blByb3BlcnR5TmFtZXMobWV0YWRhdGEpLmZvckVhY2gobmFtZSA9PiB7XG4gICAgY29uc3QgZW50cnkgPSBtZXRhZGF0YVtuYW1lXTtcbiAgICB0cnkge1xuICAgICAgaWYgKGlzQ2xhc3NNZXRhZGF0YShlbnRyeSkpIHtcbiAgICAgICAgdmFsaWRhdGVDbGFzcyhlbnRyeSk7XG4gICAgICB9XG4gICAgfSBjYXRjaCAoZSkge1xuICAgICAgY29uc3Qgbm9kZSA9IG5vZGVNYXAuZ2V0KGVudHJ5KTtcbiAgICAgIGlmIChzaG91bGRSZXBvcnROb2RlKG5vZGUpKSB7XG4gICAgICAgIGlmIChub2RlKSB7XG4gICAgICAgICAgY29uc3Qge2xpbmUsIGNoYXJhY3Rlcn0gPSBzb3VyY2VGaWxlLmdldExpbmVBbmRDaGFyYWN0ZXJPZlBvc2l0aW9uKG5vZGUuZ2V0U3RhcnQoKSk7XG4gICAgICAgICAgdGhyb3cgbmV3IEVycm9yKGAke3NvdXJjZUZpbGUuZmlsZU5hbWV9OiR7bGluZSArIDF9OiR7XG4gICAgICAgICAgICAgIGNoYXJhY3RlciArIDF9OiBFcnJvciBlbmNvdW50ZXJlZCBpbiBtZXRhZGF0YSBnZW5lcmF0ZWQgZm9yIGV4cG9ydGVkIHN5bWJvbCAnJHtcbiAgICAgICAgICAgICAgbmFtZX0nOiBcXG4gJHtlLm1lc3NhZ2V9YCk7XG4gICAgICAgIH1cbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKFxuICAgICAgICAgICAgYEVycm9yIGVuY291bnRlcmVkIGluIG1ldGFkYXRhIGdlbmVyYXRlZCBmb3IgZXhwb3J0ZWQgc3ltYm9sICR7bmFtZX06IFxcbiAke2UubWVzc2FnZX1gKTtcbiAgICAgIH1cbiAgICB9XG4gIH0pO1xufVxuXG4vLyBDb2xsZWN0IHBhcmFtZXRlciBuYW1lcyBmcm9tIGEgZnVuY3Rpb24uXG5mdW5jdGlvbiBuYW1lc09mKHBhcmFtZXRlcnM6IHRzLk5vZGVBcnJheTx0cy5QYXJhbWV0ZXJEZWNsYXJhdGlvbj4pOiBzdHJpbmdbXSB7XG4gIGNvbnN0IHJlc3VsdDogc3RyaW5nW10gPSBbXTtcblxuICBmdW5jdGlvbiBhZGROYW1lc09mKG5hbWU6IHRzLklkZW50aWZpZXJ8dHMuQmluZGluZ1BhdHRlcm4pIHtcbiAgICBpZiAobmFtZS5raW5kID09IHRzLlN5bnRheEtpbmQuSWRlbnRpZmllcikge1xuICAgICAgY29uc3QgaWRlbnRpZmllciA9IDx0cy5JZGVudGlmaWVyPm5hbWU7XG4gICAgICByZXN1bHQucHVzaChpZGVudGlmaWVyLnRleHQpO1xuICAgIH0gZWxzZSB7XG4gICAgICBjb25zdCBiaW5kaW5nUGF0dGVybiA9IDx0cy5CaW5kaW5nUGF0dGVybj5uYW1lO1xuICAgICAgZm9yIChjb25zdCBlbGVtZW50IG9mIGJpbmRpbmdQYXR0ZXJuLmVsZW1lbnRzKSB7XG4gICAgICAgIGNvbnN0IG5hbWUgPSAoZWxlbWVudCBhcyBhbnkpLm5hbWU7XG4gICAgICAgIGlmIChuYW1lKSB7XG4gICAgICAgICAgYWRkTmFtZXNPZihuYW1lKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIGZvciAoY29uc3QgcGFyYW1ldGVyIG9mIHBhcmFtZXRlcnMpIHtcbiAgICBhZGROYW1lc09mKHBhcmFtZXRlci5uYW1lKTtcbiAgfVxuXG4gIHJldHVybiByZXN1bHQ7XG59XG5cbmZ1bmN0aW9uIHNob3VsZElnbm9yZVN0YXRpY01lbWJlcihtZW1iZXJOYW1lOiBzdHJpbmcpOiBib29sZWFuIHtcbiAgcmV0dXJuIG1lbWJlck5hbWUuc3RhcnRzV2l0aCgnbmdBY2NlcHRJbnB1dFR5cGVfJykgfHwgbWVtYmVyTmFtZS5zdGFydHNXaXRoKCduZ1RlbXBsYXRlR3VhcmRfJyk7XG59XG5cbmZ1bmN0aW9uIGV4cGFuZGVkTWVzc2FnZShlcnJvcjogYW55KTogc3RyaW5nIHtcbiAgc3dpdGNoIChlcnJvci5tZXNzYWdlKSB7XG4gICAgY2FzZSAnUmVmZXJlbmNlIHRvIG5vbi1leHBvcnRlZCBjbGFzcyc6XG4gICAgICBpZiAoZXJyb3IuY29udGV4dCAmJiBlcnJvci5jb250ZXh0LmNsYXNzTmFtZSkge1xuICAgICAgICByZXR1cm4gYFJlZmVyZW5jZSB0byBhIG5vbi1leHBvcnRlZCBjbGFzcyAke1xuICAgICAgICAgICAgZXJyb3IuY29udGV4dC5jbGFzc05hbWV9LiBDb25zaWRlciBleHBvcnRpbmcgdGhlIGNsYXNzYDtcbiAgICAgIH1cbiAgICAgIGJyZWFrO1xuICAgIGNhc2UgJ1ZhcmlhYmxlIG5vdCBpbml0aWFsaXplZCc6XG4gICAgICByZXR1cm4gJ09ubHkgaW5pdGlhbGl6ZWQgdmFyaWFibGVzIGFuZCBjb25zdGFudHMgY2FuIGJlIHJlZmVyZW5jZWQgYmVjYXVzZSB0aGUgdmFsdWUgb2YgdGhpcyB2YXJpYWJsZSBpcyBuZWVkZWQgYnkgdGhlIHRlbXBsYXRlIGNvbXBpbGVyJztcbiAgICBjYXNlICdEZXN0cnVjdHVyaW5nIG5vdCBzdXBwb3J0ZWQnOlxuICAgICAgcmV0dXJuICdSZWZlcmVuY2luZyBhbiBleHBvcnRlZCBkZXN0cnVjdHVyZWQgdmFyaWFibGUgb3IgY29uc3RhbnQgaXMgbm90IHN1cHBvcnRlZCBieSB0aGUgdGVtcGxhdGUgY29tcGlsZXIuIENvbnNpZGVyIHNpbXBsaWZ5aW5nIHRoaXMgdG8gYXZvaWQgZGVzdHJ1Y3R1cmluZyc7XG4gICAgY2FzZSAnQ291bGQgbm90IHJlc29sdmUgdHlwZSc6XG4gICAgICBpZiAoZXJyb3IuY29udGV4dCAmJiBlcnJvci5jb250ZXh0LnR5cGVOYW1lKSB7XG4gICAgICAgIHJldHVybiBgQ291bGQgbm90IHJlc29sdmUgdHlwZSAke2Vycm9yLmNvbnRleHQudHlwZU5hbWV9YDtcbiAgICAgIH1cbiAgICAgIGJyZWFrO1xuICAgIGNhc2UgJ0Z1bmN0aW9uIGNhbGwgbm90IHN1cHBvcnRlZCc6XG4gICAgICBsZXQgcHJlZml4ID1cbiAgICAgICAgICBlcnJvci5jb250ZXh0ICYmIGVycm9yLmNvbnRleHQubmFtZSA/IGBDYWxsaW5nIGZ1bmN0aW9uICcke2Vycm9yLmNvbnRleHQubmFtZX0nLCBmYCA6ICdGJztcbiAgICAgIHJldHVybiBwcmVmaXggK1xuICAgICAgICAgICd1bmN0aW9uIGNhbGxzIGFyZSBub3Qgc3VwcG9ydGVkLiBDb25zaWRlciByZXBsYWNpbmcgdGhlIGZ1bmN0aW9uIG9yIGxhbWJkYSB3aXRoIGEgcmVmZXJlbmNlIHRvIGFuIGV4cG9ydGVkIGZ1bmN0aW9uJztcbiAgICBjYXNlICdSZWZlcmVuY2UgdG8gYSBsb2NhbCBzeW1ib2wnOlxuICAgICAgaWYgKGVycm9yLmNvbnRleHQgJiYgZXJyb3IuY29udGV4dC5uYW1lKSB7XG4gICAgICAgIHJldHVybiBgUmVmZXJlbmNlIHRvIGEgbG9jYWwgKG5vbi1leHBvcnRlZCkgc3ltYm9sICcke1xuICAgICAgICAgICAgZXJyb3IuY29udGV4dC5uYW1lfScuIENvbnNpZGVyIGV4cG9ydGluZyB0aGUgc3ltYm9sYDtcbiAgICAgIH1cbiAgfVxuICByZXR1cm4gZXJyb3IubWVzc2FnZTtcbn1cbiJdfQ==