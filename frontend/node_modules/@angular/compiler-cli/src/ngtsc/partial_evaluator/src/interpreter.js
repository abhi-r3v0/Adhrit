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
        define("@angular/compiler-cli/src/ngtsc/partial_evaluator/src/interpreter", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/ngtsc/imports", "@angular/compiler-cli/src/ngtsc/util/src/typescript", "@angular/compiler-cli/src/ngtsc/partial_evaluator/src/builtin", "@angular/compiler-cli/src/ngtsc/partial_evaluator/src/dynamic", "@angular/compiler-cli/src/ngtsc/partial_evaluator/src/known_declaration", "@angular/compiler-cli/src/ngtsc/partial_evaluator/src/result"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.StaticInterpreter = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    var imports_1 = require("@angular/compiler-cli/src/ngtsc/imports");
    var typescript_1 = require("@angular/compiler-cli/src/ngtsc/util/src/typescript");
    var builtin_1 = require("@angular/compiler-cli/src/ngtsc/partial_evaluator/src/builtin");
    var dynamic_1 = require("@angular/compiler-cli/src/ngtsc/partial_evaluator/src/dynamic");
    var known_declaration_1 = require("@angular/compiler-cli/src/ngtsc/partial_evaluator/src/known_declaration");
    var result_1 = require("@angular/compiler-cli/src/ngtsc/partial_evaluator/src/result");
    function literalBinaryOp(op) {
        return { op: op, literal: true };
    }
    function referenceBinaryOp(op) {
        return { op: op, literal: false };
    }
    var BINARY_OPERATORS = new Map([
        [ts.SyntaxKind.PlusToken, literalBinaryOp(function (a, b) { return a + b; })],
        [ts.SyntaxKind.MinusToken, literalBinaryOp(function (a, b) { return a - b; })],
        [ts.SyntaxKind.AsteriskToken, literalBinaryOp(function (a, b) { return a * b; })],
        [ts.SyntaxKind.SlashToken, literalBinaryOp(function (a, b) { return a / b; })],
        [ts.SyntaxKind.PercentToken, literalBinaryOp(function (a, b) { return a % b; })],
        [ts.SyntaxKind.AmpersandToken, literalBinaryOp(function (a, b) { return a & b; })],
        [ts.SyntaxKind.BarToken, literalBinaryOp(function (a, b) { return a | b; })],
        [ts.SyntaxKind.CaretToken, literalBinaryOp(function (a, b) { return a ^ b; })],
        [ts.SyntaxKind.LessThanToken, literalBinaryOp(function (a, b) { return a < b; })],
        [ts.SyntaxKind.LessThanEqualsToken, literalBinaryOp(function (a, b) { return a <= b; })],
        [ts.SyntaxKind.GreaterThanToken, literalBinaryOp(function (a, b) { return a > b; })],
        [ts.SyntaxKind.GreaterThanEqualsToken, literalBinaryOp(function (a, b) { return a >= b; })],
        [ts.SyntaxKind.EqualsEqualsToken, literalBinaryOp(function (a, b) { return a == b; })],
        [ts.SyntaxKind.EqualsEqualsEqualsToken, literalBinaryOp(function (a, b) { return a === b; })],
        [ts.SyntaxKind.ExclamationEqualsToken, literalBinaryOp(function (a, b) { return a != b; })],
        [ts.SyntaxKind.ExclamationEqualsEqualsToken, literalBinaryOp(function (a, b) { return a !== b; })],
        [ts.SyntaxKind.LessThanLessThanToken, literalBinaryOp(function (a, b) { return a << b; })],
        [ts.SyntaxKind.GreaterThanGreaterThanToken, literalBinaryOp(function (a, b) { return a >> b; })],
        [ts.SyntaxKind.GreaterThanGreaterThanGreaterThanToken, literalBinaryOp(function (a, b) { return a >>> b; })],
        [ts.SyntaxKind.AsteriskAsteriskToken, literalBinaryOp(function (a, b) { return Math.pow(a, b); })],
        [ts.SyntaxKind.AmpersandAmpersandToken, referenceBinaryOp(function (a, b) { return a && b; })],
        [ts.SyntaxKind.BarBarToken, referenceBinaryOp(function (a, b) { return a || b; })]
    ]);
    var UNARY_OPERATORS = new Map([
        [ts.SyntaxKind.TildeToken, function (a) { return ~a; }], [ts.SyntaxKind.MinusToken, function (a) { return -a; }],
        [ts.SyntaxKind.PlusToken, function (a) { return +a; }], [ts.SyntaxKind.ExclamationToken, function (a) { return !a; }]
    ]);
    var StaticInterpreter = /** @class */ (function () {
        function StaticInterpreter(host, checker, dependencyTracker) {
            this.host = host;
            this.checker = checker;
            this.dependencyTracker = dependencyTracker;
        }
        StaticInterpreter.prototype.visit = function (node, context) {
            return this.visitExpression(node, context);
        };
        StaticInterpreter.prototype.visitExpression = function (node, context) {
            var result;
            if (node.kind === ts.SyntaxKind.TrueKeyword) {
                return true;
            }
            else if (node.kind === ts.SyntaxKind.FalseKeyword) {
                return false;
            }
            else if (node.kind === ts.SyntaxKind.NullKeyword) {
                return null;
            }
            else if (ts.isStringLiteral(node)) {
                return node.text;
            }
            else if (ts.isNoSubstitutionTemplateLiteral(node)) {
                return node.text;
            }
            else if (ts.isTemplateExpression(node)) {
                result = this.visitTemplateExpression(node, context);
            }
            else if (ts.isNumericLiteral(node)) {
                return parseFloat(node.text);
            }
            else if (ts.isObjectLiteralExpression(node)) {
                result = this.visitObjectLiteralExpression(node, context);
            }
            else if (ts.isIdentifier(node)) {
                result = this.visitIdentifier(node, context);
            }
            else if (ts.isPropertyAccessExpression(node)) {
                result = this.visitPropertyAccessExpression(node, context);
            }
            else if (ts.isCallExpression(node)) {
                result = this.visitCallExpression(node, context);
            }
            else if (ts.isConditionalExpression(node)) {
                result = this.visitConditionalExpression(node, context);
            }
            else if (ts.isPrefixUnaryExpression(node)) {
                result = this.visitPrefixUnaryExpression(node, context);
            }
            else if (ts.isBinaryExpression(node)) {
                result = this.visitBinaryExpression(node, context);
            }
            else if (ts.isArrayLiteralExpression(node)) {
                result = this.visitArrayLiteralExpression(node, context);
            }
            else if (ts.isParenthesizedExpression(node)) {
                result = this.visitParenthesizedExpression(node, context);
            }
            else if (ts.isElementAccessExpression(node)) {
                result = this.visitElementAccessExpression(node, context);
            }
            else if (ts.isAsExpression(node)) {
                result = this.visitExpression(node.expression, context);
            }
            else if (ts.isNonNullExpression(node)) {
                result = this.visitExpression(node.expression, context);
            }
            else if (this.host.isClass(node)) {
                result = this.visitDeclaration(node, context);
            }
            else {
                return dynamic_1.DynamicValue.fromUnsupportedSyntax(node);
            }
            if (result instanceof dynamic_1.DynamicValue && result.node !== node) {
                return dynamic_1.DynamicValue.fromDynamicInput(node, result);
            }
            return result;
        };
        StaticInterpreter.prototype.visitArrayLiteralExpression = function (node, context) {
            var array = [];
            for (var i = 0; i < node.elements.length; i++) {
                var element = node.elements[i];
                if (ts.isSpreadElement(element)) {
                    array.push.apply(array, tslib_1.__spread(this.visitSpreadElement(element, context)));
                }
                else {
                    array.push(this.visitExpression(element, context));
                }
            }
            return array;
        };
        StaticInterpreter.prototype.visitObjectLiteralExpression = function (node, context) {
            var map = new Map();
            for (var i = 0; i < node.properties.length; i++) {
                var property = node.properties[i];
                if (ts.isPropertyAssignment(property)) {
                    var name_1 = this.stringNameFromPropertyName(property.name, context);
                    // Check whether the name can be determined statically.
                    if (name_1 === undefined) {
                        return dynamic_1.DynamicValue.fromDynamicInput(node, dynamic_1.DynamicValue.fromDynamicString(property.name));
                    }
                    map.set(name_1, this.visitExpression(property.initializer, context));
                }
                else if (ts.isShorthandPropertyAssignment(property)) {
                    var symbol = this.checker.getShorthandAssignmentValueSymbol(property);
                    if (symbol === undefined || symbol.valueDeclaration === undefined) {
                        map.set(property.name.text, dynamic_1.DynamicValue.fromUnknown(property));
                    }
                    else {
                        map.set(property.name.text, this.visitDeclaration(symbol.valueDeclaration, context));
                    }
                }
                else if (ts.isSpreadAssignment(property)) {
                    var spread = this.visitExpression(property.expression, context);
                    if (spread instanceof dynamic_1.DynamicValue) {
                        return dynamic_1.DynamicValue.fromDynamicInput(node, spread);
                    }
                    else if (spread instanceof Map) {
                        spread.forEach(function (value, key) { return map.set(key, value); });
                    }
                    else if (spread instanceof result_1.ResolvedModule) {
                        spread.getExports().forEach(function (value, key) { return map.set(key, value); });
                    }
                    else {
                        return dynamic_1.DynamicValue.fromDynamicInput(node, dynamic_1.DynamicValue.fromInvalidExpressionType(property, spread));
                    }
                }
                else {
                    return dynamic_1.DynamicValue.fromUnknown(node);
                }
            }
            return map;
        };
        StaticInterpreter.prototype.visitTemplateExpression = function (node, context) {
            var pieces = [node.head.text];
            var _loop_1 = function (i) {
                var span = node.templateSpans[i];
                var value = literal(this_1.visit(span.expression, context), function () { return dynamic_1.DynamicValue.fromDynamicString(span.expression); });
                if (value instanceof dynamic_1.DynamicValue) {
                    return { value: dynamic_1.DynamicValue.fromDynamicInput(node, value) };
                }
                pieces.push("" + value, span.literal.text);
            };
            var this_1 = this;
            for (var i = 0; i < node.templateSpans.length; i++) {
                var state_1 = _loop_1(i);
                if (typeof state_1 === "object")
                    return state_1.value;
            }
            return pieces.join('');
        };
        StaticInterpreter.prototype.visitIdentifier = function (node, context) {
            var decl = this.host.getDeclarationOfIdentifier(node);
            if (decl === null) {
                if (node.originalKeywordKind === ts.SyntaxKind.UndefinedKeyword) {
                    return undefined;
                }
                else {
                    return dynamic_1.DynamicValue.fromUnknownIdentifier(node);
                }
            }
            if (decl.known !== null) {
                return known_declaration_1.resolveKnownDeclaration(decl.known);
            }
            else if (isConcreteDeclaration(decl) && decl.identity !== null &&
                decl.identity.kind === 0 /* DownleveledEnum */) {
                return this.getResolvedEnum(decl.node, decl.identity.enumMembers, context);
            }
            var declContext = tslib_1.__assign(tslib_1.__assign({}, context), joinModuleContext(context, node, decl));
            // The identifier's declaration is either concrete (a ts.Declaration exists for it) or inline
            // (a direct reference to a ts.Expression).
            // TODO(alxhub): remove cast once TS is upgraded in g3.
            var result = decl.node !== null ?
                this.visitDeclaration(decl.node, declContext) :
                this.visitExpression(decl.expression, declContext);
            if (result instanceof imports_1.Reference) {
                // Only record identifiers to non-synthetic references. Synthetic references may not have the
                // same value at runtime as they do at compile time, so it's not legal to refer to them by the
                // identifier here.
                if (!result.synthetic) {
                    result.addIdentifier(node);
                }
            }
            else if (result instanceof dynamic_1.DynamicValue) {
                return dynamic_1.DynamicValue.fromDynamicInput(node, result);
            }
            return result;
        };
        StaticInterpreter.prototype.visitDeclaration = function (node, context) {
            if (this.dependencyTracker !== null) {
                this.dependencyTracker.addDependency(context.originatingFile, node.getSourceFile());
            }
            if (this.host.isClass(node)) {
                return this.getReference(node, context);
            }
            else if (ts.isVariableDeclaration(node)) {
                return this.visitVariableDeclaration(node, context);
            }
            else if (ts.isParameter(node) && context.scope.has(node)) {
                return context.scope.get(node);
            }
            else if (ts.isExportAssignment(node)) {
                return this.visitExpression(node.expression, context);
            }
            else if (ts.isEnumDeclaration(node)) {
                return this.visitEnumDeclaration(node, context);
            }
            else if (ts.isSourceFile(node)) {
                return this.visitSourceFile(node, context);
            }
            else if (ts.isBindingElement(node)) {
                return this.visitBindingElement(node, context);
            }
            else {
                return this.getReference(node, context);
            }
        };
        StaticInterpreter.prototype.visitVariableDeclaration = function (node, context) {
            var value = this.host.getVariableValue(node);
            if (value !== null) {
                return this.visitExpression(value, context);
            }
            else if (isVariableDeclarationDeclared(node)) {
                return this.getReference(node, context);
            }
            else {
                return undefined;
            }
        };
        StaticInterpreter.prototype.visitEnumDeclaration = function (node, context) {
            var _this = this;
            var enumRef = this.getReference(node, context);
            var map = new Map();
            node.members.forEach(function (member) {
                var name = _this.stringNameFromPropertyName(member.name, context);
                if (name !== undefined) {
                    var resolved = member.initializer && _this.visit(member.initializer, context);
                    map.set(name, new result_1.EnumValue(enumRef, name, resolved));
                }
            });
            return map;
        };
        StaticInterpreter.prototype.visitElementAccessExpression = function (node, context) {
            var lhs = this.visitExpression(node.expression, context);
            if (lhs instanceof dynamic_1.DynamicValue) {
                return dynamic_1.DynamicValue.fromDynamicInput(node, lhs);
            }
            var rhs = this.visitExpression(node.argumentExpression, context);
            if (rhs instanceof dynamic_1.DynamicValue) {
                return dynamic_1.DynamicValue.fromDynamicInput(node, rhs);
            }
            if (typeof rhs !== 'string' && typeof rhs !== 'number') {
                return dynamic_1.DynamicValue.fromInvalidExpressionType(node, rhs);
            }
            return this.accessHelper(node, lhs, rhs, context);
        };
        StaticInterpreter.prototype.visitPropertyAccessExpression = function (node, context) {
            var lhs = this.visitExpression(node.expression, context);
            var rhs = node.name.text;
            // TODO: handle reference to class declaration.
            if (lhs instanceof dynamic_1.DynamicValue) {
                return dynamic_1.DynamicValue.fromDynamicInput(node, lhs);
            }
            return this.accessHelper(node, lhs, rhs, context);
        };
        StaticInterpreter.prototype.visitSourceFile = function (node, context) {
            var _this = this;
            var declarations = this.host.getExportsOfModule(node);
            if (declarations === null) {
                return dynamic_1.DynamicValue.fromUnknown(node);
            }
            return new result_1.ResolvedModule(declarations, function (decl) {
                if (decl.known !== null) {
                    return known_declaration_1.resolveKnownDeclaration(decl.known);
                }
                var declContext = tslib_1.__assign(tslib_1.__assign({}, context), joinModuleContext(context, node, decl));
                // Visit both concrete and inline declarations.
                // TODO(alxhub): remove cast once TS is upgraded in g3.
                return decl.node !== null ?
                    _this.visitDeclaration(decl.node, declContext) :
                    _this.visitExpression(decl.expression, declContext);
            });
        };
        StaticInterpreter.prototype.accessHelper = function (node, lhs, rhs, context) {
            var strIndex = "" + rhs;
            if (lhs instanceof Map) {
                if (lhs.has(strIndex)) {
                    return lhs.get(strIndex);
                }
                else {
                    return undefined;
                }
            }
            else if (lhs instanceof result_1.ResolvedModule) {
                return lhs.getExport(strIndex);
            }
            else if (Array.isArray(lhs)) {
                if (rhs === 'length') {
                    return lhs.length;
                }
                else if (rhs === 'slice') {
                    return new builtin_1.ArraySliceBuiltinFn(lhs);
                }
                else if (rhs === 'concat') {
                    return new builtin_1.ArrayConcatBuiltinFn(lhs);
                }
                if (typeof rhs !== 'number' || !Number.isInteger(rhs)) {
                    return dynamic_1.DynamicValue.fromInvalidExpressionType(node, rhs);
                }
                return lhs[rhs];
            }
            else if (lhs instanceof imports_1.Reference) {
                var ref = lhs.node;
                if (this.host.isClass(ref)) {
                    var module_1 = owningModule(context, lhs.bestGuessOwningModule);
                    var value = undefined;
                    var member = this.host.getMembersOfClass(ref).find(function (member) { return member.isStatic && member.name === strIndex; });
                    if (member !== undefined) {
                        if (member.value !== null) {
                            value = this.visitExpression(member.value, context);
                        }
                        else if (member.implementation !== null) {
                            value = new imports_1.Reference(member.implementation, module_1);
                        }
                        else if (member.node) {
                            value = new imports_1.Reference(member.node, module_1);
                        }
                    }
                    return value;
                }
                else if (typescript_1.isDeclaration(ref)) {
                    return dynamic_1.DynamicValue.fromDynamicInput(node, dynamic_1.DynamicValue.fromExternalReference(ref, lhs));
                }
            }
            else if (lhs instanceof dynamic_1.DynamicValue) {
                return dynamic_1.DynamicValue.fromDynamicInput(node, lhs);
            }
            return dynamic_1.DynamicValue.fromUnknown(node);
        };
        StaticInterpreter.prototype.visitCallExpression = function (node, context) {
            var lhs = this.visitExpression(node.expression, context);
            if (lhs instanceof dynamic_1.DynamicValue) {
                return dynamic_1.DynamicValue.fromDynamicInput(node, lhs);
            }
            // If the call refers to a builtin function, attempt to evaluate the function.
            if (lhs instanceof result_1.KnownFn) {
                return lhs.evaluate(node, this.evaluateFunctionArguments(node, context));
            }
            if (!(lhs instanceof imports_1.Reference)) {
                return dynamic_1.DynamicValue.fromInvalidExpressionType(node.expression, lhs);
            }
            var fn = this.host.getDefinitionOfFunction(lhs.node);
            if (fn === null) {
                return dynamic_1.DynamicValue.fromInvalidExpressionType(node.expression, lhs);
            }
            if (!isFunctionOrMethodReference(lhs)) {
                return dynamic_1.DynamicValue.fromInvalidExpressionType(node.expression, lhs);
            }
            // If the function is foreign (declared through a d.ts file), attempt to resolve it with the
            // foreignFunctionResolver, if one is specified.
            if (fn.body === null) {
                var expr = null;
                if (context.foreignFunctionResolver) {
                    expr = context.foreignFunctionResolver(lhs, node.arguments);
                }
                if (expr === null) {
                    return dynamic_1.DynamicValue.fromDynamicInput(node, dynamic_1.DynamicValue.fromExternalReference(node.expression, lhs));
                }
                // If the function is declared in a different file, resolve the foreign function expression
                // using the absolute module name of that file (if any).
                if (lhs.bestGuessOwningModule !== null) {
                    context = tslib_1.__assign(tslib_1.__assign({}, context), { absoluteModuleName: lhs.bestGuessOwningModule.specifier, resolutionContext: node.getSourceFile().fileName });
                }
                return this.visitFfrExpression(expr, context);
            }
            var res = this.visitFunctionBody(node, fn, context);
            // If the result of attempting to resolve the function body was a DynamicValue, attempt to use
            // the foreignFunctionResolver if one is present. This could still potentially yield a usable
            // value.
            if (res instanceof dynamic_1.DynamicValue && context.foreignFunctionResolver !== undefined) {
                var ffrExpr = context.foreignFunctionResolver(lhs, node.arguments);
                if (ffrExpr !== null) {
                    // The foreign function resolver was able to extract an expression from this function. See
                    // if that expression leads to a non-dynamic result.
                    var ffrRes = this.visitFfrExpression(ffrExpr, context);
                    if (!(ffrRes instanceof dynamic_1.DynamicValue)) {
                        // FFR yielded an actual result that's not dynamic, so use that instead of the original
                        // resolution.
                        res = ffrRes;
                    }
                }
            }
            return res;
        };
        /**
         * Visit an expression which was extracted from a foreign-function resolver.
         *
         * This will process the result and ensure it's correct for FFR-resolved values, including marking
         * `Reference`s as synthetic.
         */
        StaticInterpreter.prototype.visitFfrExpression = function (expr, context) {
            var res = this.visitExpression(expr, context);
            if (res instanceof imports_1.Reference) {
                // This Reference was created synthetically, via a foreign function resolver. The real
                // runtime value of the function expression may be different than the foreign function
                // resolved value, so mark the Reference as synthetic to avoid it being misinterpreted.
                res.synthetic = true;
            }
            return res;
        };
        StaticInterpreter.prototype.visitFunctionBody = function (node, fn, context) {
            var _this = this;
            if (fn.body === null || fn.body.length !== 1 || !ts.isReturnStatement(fn.body[0])) {
                return dynamic_1.DynamicValue.fromUnknown(node);
            }
            var ret = fn.body[0];
            var args = this.evaluateFunctionArguments(node, context);
            var newScope = new Map();
            var calleeContext = tslib_1.__assign(tslib_1.__assign({}, context), { scope: newScope });
            fn.parameters.forEach(function (param, index) {
                var arg = args[index];
                if (param.node.dotDotDotToken !== undefined) {
                    arg = args.slice(index);
                }
                if (arg === undefined && param.initializer !== null) {
                    arg = _this.visitExpression(param.initializer, calleeContext);
                }
                newScope.set(param.node, arg);
            });
            return ret.expression !== undefined ? this.visitExpression(ret.expression, calleeContext) :
                undefined;
        };
        StaticInterpreter.prototype.visitConditionalExpression = function (node, context) {
            var condition = this.visitExpression(node.condition, context);
            if (condition instanceof dynamic_1.DynamicValue) {
                return dynamic_1.DynamicValue.fromDynamicInput(node, condition);
            }
            if (condition) {
                return this.visitExpression(node.whenTrue, context);
            }
            else {
                return this.visitExpression(node.whenFalse, context);
            }
        };
        StaticInterpreter.prototype.visitPrefixUnaryExpression = function (node, context) {
            var operatorKind = node.operator;
            if (!UNARY_OPERATORS.has(operatorKind)) {
                return dynamic_1.DynamicValue.fromUnsupportedSyntax(node);
            }
            var op = UNARY_OPERATORS.get(operatorKind);
            var value = this.visitExpression(node.operand, context);
            if (value instanceof dynamic_1.DynamicValue) {
                return dynamic_1.DynamicValue.fromDynamicInput(node, value);
            }
            else {
                return op(value);
            }
        };
        StaticInterpreter.prototype.visitBinaryExpression = function (node, context) {
            var tokenKind = node.operatorToken.kind;
            if (!BINARY_OPERATORS.has(tokenKind)) {
                return dynamic_1.DynamicValue.fromUnsupportedSyntax(node);
            }
            var opRecord = BINARY_OPERATORS.get(tokenKind);
            var lhs, rhs;
            if (opRecord.literal) {
                lhs = literal(this.visitExpression(node.left, context), function (value) { return dynamic_1.DynamicValue.fromInvalidExpressionType(node.left, value); });
                rhs = literal(this.visitExpression(node.right, context), function (value) { return dynamic_1.DynamicValue.fromInvalidExpressionType(node.right, value); });
            }
            else {
                lhs = this.visitExpression(node.left, context);
                rhs = this.visitExpression(node.right, context);
            }
            if (lhs instanceof dynamic_1.DynamicValue) {
                return dynamic_1.DynamicValue.fromDynamicInput(node, lhs);
            }
            else if (rhs instanceof dynamic_1.DynamicValue) {
                return dynamic_1.DynamicValue.fromDynamicInput(node, rhs);
            }
            else {
                return opRecord.op(lhs, rhs);
            }
        };
        StaticInterpreter.prototype.visitParenthesizedExpression = function (node, context) {
            return this.visitExpression(node.expression, context);
        };
        StaticInterpreter.prototype.evaluateFunctionArguments = function (node, context) {
            var e_1, _a;
            var args = [];
            try {
                for (var _b = tslib_1.__values(node.arguments), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var arg = _c.value;
                    if (ts.isSpreadElement(arg)) {
                        args.push.apply(args, tslib_1.__spread(this.visitSpreadElement(arg, context)));
                    }
                    else {
                        args.push(this.visitExpression(arg, context));
                    }
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
            return args;
        };
        StaticInterpreter.prototype.visitSpreadElement = function (node, context) {
            var spread = this.visitExpression(node.expression, context);
            if (spread instanceof dynamic_1.DynamicValue) {
                return [dynamic_1.DynamicValue.fromDynamicInput(node, spread)];
            }
            else if (!Array.isArray(spread)) {
                return [dynamic_1.DynamicValue.fromInvalidExpressionType(node, spread)];
            }
            else {
                return spread;
            }
        };
        StaticInterpreter.prototype.visitBindingElement = function (node, context) {
            var e_2, _a;
            var path = [];
            var closestDeclaration = node;
            while (ts.isBindingElement(closestDeclaration) ||
                ts.isArrayBindingPattern(closestDeclaration) ||
                ts.isObjectBindingPattern(closestDeclaration)) {
                if (ts.isBindingElement(closestDeclaration)) {
                    path.unshift(closestDeclaration);
                }
                closestDeclaration = closestDeclaration.parent;
            }
            if (!ts.isVariableDeclaration(closestDeclaration) ||
                closestDeclaration.initializer === undefined) {
                return dynamic_1.DynamicValue.fromUnknown(node);
            }
            var value = this.visit(closestDeclaration.initializer, context);
            try {
                for (var path_1 = tslib_1.__values(path), path_1_1 = path_1.next(); !path_1_1.done; path_1_1 = path_1.next()) {
                    var element = path_1_1.value;
                    var key = void 0;
                    if (ts.isArrayBindingPattern(element.parent)) {
                        key = element.parent.elements.indexOf(element);
                    }
                    else {
                        var name_2 = element.propertyName || element.name;
                        if (ts.isIdentifier(name_2)) {
                            key = name_2.text;
                        }
                        else {
                            return dynamic_1.DynamicValue.fromUnknown(element);
                        }
                    }
                    value = this.accessHelper(element, value, key, context);
                    if (value instanceof dynamic_1.DynamicValue) {
                        return value;
                    }
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (path_1_1 && !path_1_1.done && (_a = path_1.return)) _a.call(path_1);
                }
                finally { if (e_2) throw e_2.error; }
            }
            return value;
        };
        StaticInterpreter.prototype.stringNameFromPropertyName = function (node, context) {
            if (ts.isIdentifier(node) || ts.isStringLiteral(node) || ts.isNumericLiteral(node)) {
                return node.text;
            }
            else if (ts.isComputedPropertyName(node)) {
                var literal_1 = this.visitExpression(node.expression, context);
                return typeof literal_1 === 'string' ? literal_1 : undefined;
            }
            else {
                return undefined;
            }
        };
        StaticInterpreter.prototype.getResolvedEnum = function (node, enumMembers, context) {
            var _this = this;
            var enumRef = this.getReference(node, context);
            var map = new Map();
            enumMembers.forEach(function (member) {
                var name = _this.stringNameFromPropertyName(member.name, context);
                if (name !== undefined) {
                    var resolved = _this.visit(member.initializer, context);
                    map.set(name, new result_1.EnumValue(enumRef, name, resolved));
                }
            });
            return map;
        };
        StaticInterpreter.prototype.getReference = function (node, context) {
            return new imports_1.Reference(node, owningModule(context));
        };
        return StaticInterpreter;
    }());
    exports.StaticInterpreter = StaticInterpreter;
    function isFunctionOrMethodReference(ref) {
        return ts.isFunctionDeclaration(ref.node) || ts.isMethodDeclaration(ref.node) ||
            ts.isFunctionExpression(ref.node);
    }
    function literal(value, reject) {
        if (value instanceof result_1.EnumValue) {
            value = value.resolved;
        }
        if (value instanceof dynamic_1.DynamicValue || value === null || value === undefined ||
            typeof value === 'string' || typeof value === 'number' || typeof value === 'boolean') {
            return value;
        }
        return reject(value);
    }
    function isVariableDeclarationDeclared(node) {
        if (node.parent === undefined || !ts.isVariableDeclarationList(node.parent)) {
            return false;
        }
        var declList = node.parent;
        if (declList.parent === undefined || !ts.isVariableStatement(declList.parent)) {
            return false;
        }
        var varStmt = declList.parent;
        return varStmt.modifiers !== undefined &&
            varStmt.modifiers.some(function (mod) { return mod.kind === ts.SyntaxKind.DeclareKeyword; });
    }
    var EMPTY = {};
    function joinModuleContext(existing, node, decl) {
        if (decl.viaModule !== null && decl.viaModule !== existing.absoluteModuleName) {
            return {
                absoluteModuleName: decl.viaModule,
                resolutionContext: node.getSourceFile().fileName,
            };
        }
        else {
            return EMPTY;
        }
    }
    function owningModule(context, override) {
        if (override === void 0) { override = null; }
        var specifier = context.absoluteModuleName;
        if (override !== null) {
            specifier = override.specifier;
        }
        if (specifier !== null) {
            return {
                specifier: specifier,
                resolutionContext: context.resolutionContext,
            };
        }
        else {
            return null;
        }
    }
    /**
     * Helper type guard to workaround a narrowing limitation in g3, where testing for
     * `decl.node !== null` would not narrow `decl` to be of type `ConcreteDeclaration`.
     */
    function isConcreteDeclaration(decl) {
        return decl.node !== null;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW50ZXJwcmV0ZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3BhcnRpYWxfZXZhbHVhdG9yL3NyYy9pbnRlcnByZXRlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBRUgsK0JBQWlDO0lBRWpDLG1FQUF3QztJQUl4QyxrRkFBd0Q7SUFFeEQseUZBQW9FO0lBQ3BFLHlGQUF1QztJQUV2Qyw2R0FBNEQ7SUFDNUQsdUZBQWlIO0lBZWpILFNBQVMsZUFBZSxDQUFDLEVBQTJCO1FBQ2xELE9BQU8sRUFBQyxFQUFFLElBQUEsRUFBRSxPQUFPLEVBQUUsSUFBSSxFQUFDLENBQUM7SUFDN0IsQ0FBQztJQUVELFNBQVMsaUJBQWlCLENBQUMsRUFBMkI7UUFDcEQsT0FBTyxFQUFDLEVBQUUsSUFBQSxFQUFFLE9BQU8sRUFBRSxLQUFLLEVBQUMsQ0FBQztJQUM5QixDQUFDO0lBRUQsSUFBTSxnQkFBZ0IsR0FBRyxJQUFJLEdBQUcsQ0FBbUM7UUFDakUsQ0FBQyxFQUFFLENBQUMsVUFBVSxDQUFDLFNBQVMsRUFBRSxlQUFlLENBQUMsVUFBQyxDQUFDLEVBQUUsQ0FBQyxJQUFLLE9BQUEsQ0FBQyxHQUFHLENBQUMsRUFBTCxDQUFLLENBQUMsQ0FBQztRQUMzRCxDQUFDLEVBQUUsQ0FBQyxVQUFVLENBQUMsVUFBVSxFQUFFLGVBQWUsQ0FBQyxVQUFDLENBQUMsRUFBRSxDQUFDLElBQUssT0FBQSxDQUFDLEdBQUcsQ0FBQyxFQUFMLENBQUssQ0FBQyxDQUFDO1FBQzVELENBQUMsRUFBRSxDQUFDLFVBQVUsQ0FBQyxhQUFhLEVBQUUsZUFBZSxDQUFDLFVBQUMsQ0FBQyxFQUFFLENBQUMsSUFBSyxPQUFBLENBQUMsR0FBRyxDQUFDLEVBQUwsQ0FBSyxDQUFDLENBQUM7UUFDL0QsQ0FBQyxFQUFFLENBQUMs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QUFRLEtBQUssSUFBSSxFQUFFO1lBQ3JCLFNBQVMsR0FBRyxRQUFRLENBQUMsU0FBUyxDQUFDO1NBQ2hDO1FBQ0QsSUFBSSxTQUFTLEtBQUssSUFBSSxFQUFFO1lBQ3RCLE9BQU87Z0JBQ0wsU0FBUyxXQUFBO2dCQUNULGlCQUFpQixFQUFFLE9BQU8sQ0FBQyxpQkFBaUI7YUFDN0MsQ0FBQztTQUNIO2FBQU07WUFDTCxPQUFPLElBQUksQ0FBQztTQUNiO0lBQ0gsQ0FBQztJQUVEOzs7T0FHRztJQUNILFNBQVMscUJBQXFCLENBQUMsSUFBaUI7UUFDOUMsT0FBTyxJQUFJLENBQUMsSUFBSSxLQUFLLElBQUksQ0FBQztJQUM1QixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge1JlZmVyZW5jZX0gZnJvbSAnLi4vLi4vaW1wb3J0cyc7XG5pbXBvcnQge093bmluZ01vZHVsZX0gZnJvbSAnLi4vLi4vaW1wb3J0cy9zcmMvcmVmZXJlbmNlcyc7XG5pbXBvcnQge0RlcGVuZGVuY3lUcmFja2VyfSBmcm9tICcuLi8uLi9pbmNyZW1lbnRhbC9hcGknO1xuaW1wb3J0IHtDb25jcmV0ZURlY2xhcmF0aW9uLCBEZWNsYXJhdGlvbiwgRW51bU1lbWJlciwgRnVuY3Rpb25EZWZpbml0aW9uLCBJbmxpbmVEZWNsYXJhdGlvbiwgUmVmbGVjdGlvbkhvc3QsIFNwZWNpYWxEZWNsYXJhdGlvbktpbmR9IGZyb20gJy4uLy4uL3JlZmxlY3Rpb24nO1xuaW1wb3J0IHtpc0RlY2xhcmF0aW9ufSBmcm9tICcuLi8uLi91dGlsL3NyYy90eXBlc2NyaXB0JztcblxuaW1wb3J0IHtBcnJheUNvbmNhdEJ1aWx0aW5GbiwgQXJyYXlTbGljZUJ1aWx0aW5Gbn0gZnJvbSAnLi9idWlsdGluJztcbmltcG9ydCB7RHluYW1pY1ZhbHVlfSBmcm9tICcuL2R5bmFtaWMnO1xuaW1wb3J0IHtGb3JlaWduRnVuY3Rpb25SZXNvbHZlcn0gZnJvbSAnLi9pbnRlcmZhY2UnO1xuaW1wb3J0IHtyZXNvbHZlS25vd25EZWNsYXJhdGlvbn0gZnJvbSAnLi9rbm93bl9kZWNsYXJhdGlvbic7XG5pbXBvcnQge0VudW1WYWx1ZSwgS25vd25GbiwgUmVzb2x2ZWRNb2R1bGUsIFJlc29sdmVkVmFsdWUsIFJlc29sdmVkVmFsdWVBcnJheSwgUmVzb2x2ZWRWYWx1ZU1hcH0gZnJvbSAnLi9yZXN1bHQnO1xuXG5cblxuLyoqXG4gKiBUcmFja3MgdGhlIHNjb3BlIG9mIGEgZnVuY3Rpb24gYm9keSwgd2hpY2ggaW5jbHVkZXMgYFJlc29sdmVkVmFsdWVgcyBmb3IgdGhlIHBhcmFtZXRlcnMgb2YgdGhhdFxuICogYm9keS5cbiAqL1xudHlwZSBTY29wZSA9IE1hcDx0cy5QYXJhbWV0ZXJEZWNsYXJhdGlvbiwgUmVzb2x2ZWRWYWx1ZT47XG5cbmludGVyZmFjZSBCaW5hcnlPcGVyYXRvckRlZiB7XG4gIGxpdGVyYWw6IGJvb2xlYW47XG4gIG9wOiAoYTogYW55LCBiOiBhbnkpID0+IFJlc29sdmVkVmFsdWU7XG59XG5cbmZ1bmN0aW9uIGxpdGVyYWxCaW5hcnlPcChvcDogKGE6IGFueSwgYjogYW55KSA9PiBhbnkpOiBCaW5hcnlPcGVyYXRvckRlZiB7XG4gIHJldHVybiB7b3AsIGxpdGVyYWw6IHRydWV9O1xufVxuXG5mdW5jdGlvbiByZWZlcmVuY2VCaW5hcnlPcChvcDogKGE6IGFueSwgYjogYW55KSA9PiBhbnkpOiBCaW5hcnlPcGVyYXRvckRlZiB7XG4gIHJldHVybiB7b3AsIGxpdGVyYWw6IGZhbHNlfTtcbn1cblxuY29uc3QgQklOQVJZX09QRVJBVE9SUyA9IG5ldyBNYXA8dHMuU3ludGF4S2luZCwgQmluYXJ5T3BlcmF0b3JEZWY+KFtcbiAgW3RzLlN5bnRheEtpbmQuUGx1c1Rva2VuLCBsaXRlcmFsQmluYXJ5T3AoKGEsIGIpID0+IGEgKyBiKV0sXG4gIFt0cy5TeW50YXhLaW5kLk1pbnVzVG9rZW4sIGxpdGVyYWxCaW5hcnlPcCgoYSwgYikgPT4gYSAtIGIpXSxcbiAgW3RzLlN5bnRheEtpbmQuQXN0ZXJpc2tUb2tlbiwgbGl0ZXJhbEJpbmFyeU9wKChhLCBiKSA9PiBhICogYildLFxuICBbdHMuU3ludGF4S2luZC5TbGFzaFRva2VuLCBsaXRlcmFsQmluYXJ5T3AoKGEsIGIpID0+IGEgLyBiKV0sXG4gIFt0cy5TeW50YXhLaW5kLlBlcmNlbnRUb2tlbiwgbGl0ZXJhbEJpbmFyeU9wKChhLCBiKSA9PiBhICUgYildLFxuICBbdHMuU3ludGF4S2luZC5BbXBlcnNhbmRUb2tlbiwgbGl0ZXJhbEJpbmFyeU9wKChhLCBiKSA9PiBhICYgYildLFxuICBbdHMuU3ludGF4S2luZC5CYXJUb2tlbiwgbGl0ZXJhbEJpbmFyeU9wKChhLCBiKSA9PiBhIHwgYildLFxuICBbdHMuU3ludGF4S2luZC5DYXJldFRva2VuLCBsaXRlcmFsQmluYXJ5T3AoKGEsIGIpID0+IGEgXiBiKV0sXG4gIFt0cy5TeW50YXhLaW5kLkxlc3NUaGFuVG9rZW4sIGxpdGVyYWxCaW5hcnlPcCgoYSwgYikgPT4gYSA8IGIpXSxcbiAgW3RzLlN5bnRheEtpbmQuTGVzc1RoYW5FcXVhbHNUb2tlbiwgbGl0ZXJhbEJpbmFyeU9wKChhLCBiKSA9PiBhIDw9IGIpXSxcbiAgW3RzLlN5bnRheEtpbmQuR3JlYXRlclRoYW5Ub2tlbiwgbGl0ZXJhbEJpbmFyeU9wKChhLCBiKSA9PiBhID4gYildLFxuICBbdHMuU3ludGF4S2luZC5HcmVhdGVyVGhhbkVxdWFsc1Rva2VuLCBsaXRlcmFsQmluYXJ5T3AoKGEsIGIpID0+IGEgPj0gYildLFxuICBbdHMuU3ludGF4S2luZC5FcXVhbHNFcXVhbHNUb2tlbiwgbGl0ZXJhbEJpbmFyeU9wKChhLCBiKSA9PiBhID09IGIpXSxcbiAgW3RzLlN5bnRheEtpbmQuRXF1YWxzRXF1YWxzRXF1YWxzVG9rZW4sIGxpdGVyYWxCaW5hcnlPcCgoYSwgYikgPT4gYSA9PT0gYildLFxuICBbdHMuU3ludGF4S2luZC5FeGNsYW1hdGlvbkVxdWFsc1Rva2VuLCBsaXRlcmFsQmluYXJ5T3AoKGEsIGIpID0+IGEgIT0gYildLFxuICBbdHMuU3ludGF4S2luZC5FeGNsYW1hdGlvbkVxdWFsc0VxdWFsc1Rva2VuLCBsaXRlcmFsQmluYXJ5T3AoKGEsIGIpID0+IGEgIT09IGIpXSxcbiAgW3RzLlN5bnRheEtpbmQuTGVzc1RoYW5MZXNzVGhhblRva2VuLCBsaXRlcmFsQmluYXJ5T3AoKGEsIGIpID0+IGEgPDwgYildLFxuICBbdHMuU3ludGF4S2luZC5HcmVhdGVyVGhhbkdyZWF0ZXJUaGFuVG9rZW4sIGxpdGVyYWxCaW5hcnlPcCgoYSwgYikgPT4gYSA+PiBiKV0sXG4gIFt0cy5TeW50YXhLaW5kLkdyZWF0ZXJUaGFuR3JlYXRlclRoYW5HcmVhdGVyVGhhblRva2VuLCBsaXRlcmFsQmluYXJ5T3AoKGEsIGIpID0+IGEgPj4+IGIpXSxcbiAgW3RzLlN5bnRheEtpbmQuQXN0ZXJpc2tBc3Rlcmlza1Rva2VuLCBsaXRlcmFsQmluYXJ5T3AoKGEsIGIpID0+IE1hdGgucG93KGEsIGIpKV0sXG4gIFt0cy5TeW50YXhLaW5kLkFtcGVyc2FuZEFtcGVyc2FuZFRva2VuLCByZWZlcmVuY2VCaW5hcnlPcCgoYSwgYikgPT4gYSAmJiBiKV0sXG4gIFt0cy5TeW50YXhLaW5kLkJhckJhclRva2VuLCByZWZlcmVuY2VCaW5hcnlPcCgoYSwgYikgPT4gYSB8fCBiKV1cbl0pO1xuXG5jb25zdCBVTkFSWV9PUEVSQVRPUlMgPSBuZXcgTWFwPHRzLlN5bnRheEtpbmQsIChhOiBhbnkpID0+IGFueT4oW1xuICBbdHMuU3ludGF4S2luZC5UaWxkZVRva2VuLCBhID0+IH5hXSwgW3RzLlN5bnRheEtpbmQuTWludXNUb2tlbiwgYSA9PiAtYV0sXG4gIFt0cy5TeW50YXhLaW5kLlBsdXNUb2tlbiwgYSA9PiArYV0sIFt0cy5TeW50YXhLaW5kLkV4Y2xhbWF0aW9uVG9rZW4sIGEgPT4gIWFdXG5dKTtcblxuaW50ZXJmYWNlIENvbnRleHQge1xuICBvcmlnaW5hdGluZ0ZpbGU6IHRzLlNvdXJjZUZpbGU7XG4gIC8qKlxuICAgKiBUaGUgbW9kdWxlIG5hbWUgKGlmIGFueSkgd2hpY2ggd2FzIHVzZWQgdG8gcmVhY2ggdGhlIGN1cnJlbnRseSByZXNvbHZpbmcgc3ltYm9scy5cbiAgICovXG4gIGFic29sdXRlTW9kdWxlTmFtZTogc3RyaW5nfG51bGw7XG5cbiAgLyoqXG4gICAqIEEgZmlsZSBuYW1lIHJlcHJlc2VudGluZyB0aGUgY29udGV4dCBpbiB3aGljaCB0aGUgY3VycmVudCBgYWJzb2x1dGVNb2R1bGVOYW1lYCwgaWYgYW55LCB3YXNcbiAgICogcmVzb2x2ZWQuXG4gICAqL1xuICByZXNvbHV0aW9uQ29udGV4dDogc3RyaW5nO1xuICBzY29wZTogU2NvcGU7XG4gIGZvcmVpZ25GdW5jdGlvblJlc29sdmVyPzogRm9yZWlnbkZ1bmN0aW9uUmVzb2x2ZXI7XG59XG5cbmV4cG9ydCBjbGFzcyBTdGF0aWNJbnRlcnByZXRlciB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSBob3N0OiBSZWZsZWN0aW9uSG9zdCwgcHJpdmF0ZSBjaGVja2VyOiB0cy5UeXBlQ2hlY2tlcixcbiAgICAgIHByaXZhdGUgZGVwZW5kZW5jeVRyYWNrZXI6IERlcGVuZGVuY3lUcmFja2VyfG51bGwpIHt9XG5cbiAgdmlzaXQobm9kZTogdHMuRXhwcmVzc2lvbiwgY29udGV4dDogQ29udGV4dCk6IFJlc29sdmVkVmFsdWUge1xuICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbihub2RlLCBjb250ZXh0KTtcbiAgfVxuXG4gIHByaXZhdGUgdmlzaXRFeHByZXNzaW9uKG5vZGU6IHRzLkV4cHJlc3Npb24sIGNvbnRleHQ6IENvbnRleHQpOiBSZXNvbHZlZFZhbHVlIHtcbiAgICBsZXQgcmVzdWx0OiBSZXNvbHZlZFZhbHVlO1xuICAgIGlmIChub2RlLmtpbmQgPT09IHRzLlN5bnRheEtpbmQuVHJ1ZUtleXdvcmQpIHtcbiAgICAgIHJldHVybiB0cnVlO1xuICAgIH0gZWxzZSBpZiAobm9kZS5raW5kID09PSB0cy5TeW50YXhLaW5kLkZhbHNlS2V5d29yZCkge1xuICAgICAgcmV0dXJuIGZhbHNlO1xuICAgIH0gZWxzZSBpZiAobm9kZS5raW5kID09PSB0cy5TeW50YXhLaW5kLk51bGxLZXl3b3JkKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9IGVsc2UgaWYgKHRzLmlzU3RyaW5nTGl0ZXJhbChub2RlKSkge1xuICAgICAgcmV0dXJuIG5vZGUudGV4dDtcbiAgICB9IGVsc2UgaWYgKHRzLmlzTm9TdWJzdGl0dXRpb25UZW1wbGF0ZUxpdGVyYWwobm9kZSkpIHtcbiAgICAgIHJldHVybiBub2RlLnRleHQ7XG4gICAgfSBlbHNlIGlmICh0cy5pc1RlbXBsYXRlRXhwcmVzc2lvbihub2RlKSkge1xuICAgICAgcmVzdWx0ID0gdGhpcy52aXNpdFRlbXBsYXRlRXhwcmVzc2lvbihub2RlLCBjb250ZXh0KTtcbiAgICB9IGVsc2UgaWYgKHRzLmlzTnVtZXJpY0xpdGVyYWwobm9kZSkpIHtcbiAgICAgIHJldHVybiBwYXJzZUZsb2F0KG5vZGUudGV4dCk7XG4gICAgfSBlbHNlIGlmICh0cy5pc09iamVjdExpdGVyYWxFeHByZXNzaW9uKG5vZGUpKSB7XG4gICAgICByZXN1bHQgPSB0aGlzLnZpc2l0T2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24obm9kZSwgY29udGV4dCk7XG4gICAgfSBlbHNlIGlmICh0cy5pc0lkZW50aWZpZXIobm9kZSkpIHtcbiAgICAgIHJlc3VsdCA9IHRoaXMudmlzaXRJZGVudGlmaWVyKG5vZGUsIGNvbnRleHQpO1xuICAgIH0gZWxzZSBpZiAodHMuaXNQcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24obm9kZSkpIHtcbiAgICAgIHJlc3VsdCA9IHRoaXMudmlzaXRQcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24obm9kZSwgY29udGV4dCk7XG4gICAgfSBlbHNlIGlmICh0cy5pc0NhbGxFeHByZXNzaW9uKG5vZGUpKSB7XG4gICAgICByZXN1bHQgPSB0aGlzLnZpc2l0Q2FsbEV4cHJlc3Npb24obm9kZSwgY29udGV4dCk7XG4gICAgfSBlbHNlIGlmICh0cy5pc0NvbmRpdGlvbmFsRXhwcmVzc2lvbihub2RlKSkge1xuICAgICAgcmVzdWx0ID0gdGhpcy52aXNpdENvbmRpdGlvbmFsRXhwcmVzc2lvbihub2RlLCBjb250ZXh0KTtcbiAgICB9IGVsc2UgaWYgKHRzLmlzUHJlZml4VW5hcnlFeHByZXNzaW9uKG5vZGUpKSB7XG4gICAgICByZXN1bHQgPSB0aGlzLnZpc2l0UHJlZml4VW5hcnlFeHByZXNzaW9uKG5vZGUsIGNvbnRleHQpO1xuICAgIH0gZWxzZSBpZiAodHMuaXNCaW5hcnlFeHByZXNzaW9uKG5vZGUpKSB7XG4gICAgICByZXN1bHQgPSB0aGlzLnZpc2l0QmluYXJ5RXhwcmVzc2lvbihub2RlLCBjb250ZXh0KTtcbiAgICB9IGVsc2UgaWYgKHRzLmlzQXJyYXlMaXRlcmFsRXhwcmVzc2lvbihub2RlKSkge1xuICAgICAgcmVzdWx0ID0gdGhpcy52aXNpdEFycmF5TGl0ZXJhbEV4cHJlc3Npb24obm9kZSwgY29udGV4dCk7XG4gICAgfSBlbHNlIGlmICh0cy5pc1BhcmVudGhlc2l6ZWRFeHByZXNzaW9uKG5vZGUpKSB7XG4gICAgICByZXN1bHQgPSB0aGlzLnZpc2l0UGFyZW50aGVzaXplZEV4cHJlc3Npb24obm9kZSwgY29udGV4dCk7XG4gICAgfSBlbHNlIGlmICh0cy5pc0VsZW1lbnRBY2Nlc3NFeHByZXNzaW9uKG5vZGUpKSB7XG4gICAgICByZXN1bHQgPSB0aGlzLnZpc2l0RWxlbWVudEFjY2Vzc0V4cHJlc3Npb24obm9kZSwgY29udGV4dCk7XG4gICAgfSBlbHNlIGlmICh0cy5pc0FzRXhwcmVzc2lvbihub2RlKSkge1xuICAgICAgcmVzdWx0ID0gdGhpcy52aXNpdEV4cHJlc3Npb24obm9kZS5leHByZXNzaW9uLCBjb250ZXh0KTtcbiAgICB9IGVsc2UgaWYgKHRzLmlzTm9uTnVsbEV4cHJlc3Npb24obm9kZSkpIHtcbiAgICAgIHJlc3VsdCA9IHRoaXMudmlzaXRFeHByZXNzaW9uKG5vZGUuZXhwcmVzc2lvbiwgY29udGV4dCk7XG4gICAgfSBlbHNlIGlmICh0aGlzLmhvc3QuaXNDbGFzcyhub2RlKSkge1xuICAgICAgcmVzdWx0ID0gdGhpcy52aXNpdERlY2xhcmF0aW9uKG5vZGUsIGNvbnRleHQpO1xuICAgIH0gZWxzZSB7XG4gICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21VbnN1cHBvcnRlZFN5bnRheChub2RlKTtcbiAgICB9XG4gICAgaWYgKHJlc3VsdCBpbnN0YW5jZW9mIER5bmFtaWNWYWx1ZSAmJiByZXN1bHQubm9kZSAhPT0gbm9kZSkge1xuICAgICAgcmV0dXJuIER5bmFtaWNWYWx1ZS5mcm9tRHluYW1pY0lucHV0KG5vZGUsIHJlc3VsdCk7XG4gICAgfVxuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICBwcml2YXRlIHZpc2l0QXJyYXlMaXRlcmFsRXhwcmVzc2lvbihub2RlOiB0cy5BcnJheUxpdGVyYWxFeHByZXNzaW9uLCBjb250ZXh0OiBDb250ZXh0KTpcbiAgICAgIFJlc29sdmVkVmFsdWUge1xuICAgIGNvbnN0IGFycmF5OiBSZXNvbHZlZFZhbHVlQXJyYXkgPSBbXTtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IG5vZGUuZWxlbWVudHMubGVuZ3RoOyBpKyspIHtcbiAgICAgIGNvbnN0IGVsZW1lbnQgPSBub2RlLmVsZW1lbnRzW2ldO1xuICAgICAgaWYgKHRzLmlzU3ByZWFkRWxlbWVudChlbGVtZW50KSkge1xuICAgICAgICBhcnJheS5wdXNoKC4uLnRoaXMudmlzaXRTcHJlYWRFbGVtZW50KGVsZW1lbnQsIGNvbnRleHQpKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIGFycmF5LnB1c2godGhpcy52aXNpdEV4cHJlc3Npb24oZWxlbWVudCwgY29udGV4dCkpO1xuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4gYXJyYXk7XG4gIH1cblxuICBwcm90ZWN0ZWQgdmlzaXRPYmplY3RMaXRlcmFsRXhwcmVzc2lvbihub2RlOiB0cy5PYmplY3RMaXRlcmFsRXhwcmVzc2lvbiwgY29udGV4dDogQ29udGV4dCk6XG4gICAgICBSZXNvbHZlZFZhbHVlIHtcbiAgICBjb25zdCBtYXA6IFJlc29sdmVkVmFsdWVNYXAgPSBuZXcgTWFwPHN0cmluZywgUmVzb2x2ZWRWYWx1ZT4oKTtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IG5vZGUucHJvcGVydGllcy5sZW5ndGg7IGkrKykge1xuICAgICAgY29uc3QgcHJvcGVydHkgPSBub2RlLnByb3BlcnRpZXNbaV07XG4gICAgICBpZiAodHMuaXNQcm9wZXJ0eUFzc2lnbm1lbnQocHJvcGVydHkpKSB7XG4gICAgICAgIGNvbnN0IG5hbWUgPSB0aGlzLnN0cmluZ05hbWVGcm9tUHJvcGVydHlOYW1lKHByb3BlcnR5Lm5hbWUsIGNvbnRleHQpO1xuICAgICAgICAvLyBDaGVjayB3aGV0aGVyIHRoZSBuYW1lIGNhbiBiZSBkZXRlcm1pbmVkIHN0YXRpY2FsbHkuXG4gICAgICAgIGlmIChuYW1lID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21EeW5hbWljSW5wdXQobm9kZSwgRHluYW1pY1ZhbHVlLmZyb21EeW5hbWljU3RyaW5nKHByb3BlcnR5Lm5hbWUpKTtcbiAgICAgICAgfVxuICAgICAgICBtYXAuc2V0KG5hbWUsIHRoaXMudmlzaXRFeHByZXNzaW9uKHByb3BlcnR5LmluaXRpYWxpemVyLCBjb250ZXh0KSk7XG4gICAgICB9IGVsc2UgaWYgKHRzLmlzU2hvcnRoYW5kUHJvcGVydHlBc3NpZ25tZW50KHByb3BlcnR5KSkge1xuICAgICAgICBjb25zdCBzeW1ib2wgPSB0aGlzLmNoZWNrZXIuZ2V0U2hvcnRoYW5kQXNzaWdubWVudFZhbHVlU3ltYm9sKHByb3BlcnR5KTtcbiAgICAgICAgaWYgKHN5bWJvbCA9PT0gdW5kZWZpbmVkIHx8IHN5bWJvbC52YWx1ZURlY2xhcmF0aW9uID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgICBtYXAuc2V0KHByb3BlcnR5Lm5hbWUudGV4dCwgRHluYW1pY1ZhbHVlLmZyb21Vbmtub3duKHByb3BlcnR5KSk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgbWFwLnNldChwcm9wZXJ0eS5uYW1lLnRleHQsIHRoaXMudmlzaXREZWNsYXJhdGlvbihzeW1ib2wudmFsdWVEZWNsYXJhdGlvbiwgY29udGV4dCkpO1xuICAgICAgICB9XG4gICAgICB9IGVsc2UgaWYgKHRzLmlzU3ByZWFkQXNzaWdubWVudChwcm9wZXJ0eSkpIHtcbiAgICAgICAgY29uc3Qgc3ByZWFkID0gdGhpcy52aXNpdEV4cHJlc3Npb24ocHJvcGVydHkuZXhwcmVzc2lvbiwgY29udGV4dCk7XG4gICAgICAgIGlmIChzcHJlYWQgaW5zdGFuY2VvZiBEeW5hbWljVmFsdWUpIHtcbiAgICAgICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21EeW5hbWljSW5wdXQobm9kZSwgc3ByZWFkKTtcbiAgICAgICAgfSBlbHNlIGlmIChzcHJlYWQgaW5zdGFuY2VvZiBNYXApIHtcbiAgICAgICAgICBzcHJlYWQuZm9yRWFjaCgodmFsdWUsIGtleSkgPT4gbWFwLnNldChrZXksIHZhbHVlKSk7XG4gICAgICAgIH0gZWxzZSBpZiAoc3ByZWFkIGluc3RhbmNlb2YgUmVzb2x2ZWRNb2R1bGUpIHtcbiAgICAgICAgICBzcHJlYWQuZ2V0RXhwb3J0cygpLmZvckVhY2goKHZhbHVlLCBrZXkpID0+IG1hcC5zZXQoa2V5LCB2YWx1ZSkpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIHJldHVybiBEeW5hbWljVmFsdWUuZnJvbUR5bmFtaWNJbnB1dChcbiAgICAgICAgICAgICAgbm9kZSwgRHluYW1pY1ZhbHVlLmZyb21JbnZhbGlkRXhwcmVzc2lvblR5cGUocHJvcGVydHksIHNwcmVhZCkpO1xuICAgICAgICB9XG4gICAgICB9IGVsc2Uge1xuICAgICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21Vbmtub3duKG5vZGUpO1xuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4gbWFwO1xuICB9XG5cbiAgcHJpdmF0ZSB2aXNpdFRlbXBsYXRlRXhwcmVzc2lvbihub2RlOiB0cy5UZW1wbGF0ZUV4cHJlc3Npb24sIGNvbnRleHQ6IENvbnRleHQpOiBSZXNvbHZlZFZhbHVlIHtcbiAgICBjb25zdCBwaWVjZXM6IHN0cmluZ1tdID0gW25vZGUuaGVhZC50ZXh0XTtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IG5vZGUudGVtcGxhdGVTcGFucy5sZW5ndGg7IGkrKykge1xuICAgICAgY29uc3Qgc3BhbiA9IG5vZGUudGVtcGxhdGVTcGFuc1tpXTtcbiAgICAgIGNvbnN0IHZhbHVlID0gbGl0ZXJhbChcbiAgICAgICAgICB0aGlzLnZpc2l0KHNwYW4uZXhwcmVzc2lvbiwgY29udGV4dCksXG4gICAgICAgICAgKCkgPT4gRHluYW1pY1ZhbHVlLmZyb21EeW5hbWljU3RyaW5nKHNwYW4uZXhwcmVzc2lvbikpO1xuICAgICAgaWYgKHZhbHVlIGluc3RhbmNlb2YgRHluYW1pY1ZhbHVlKSB7XG4gICAgICAgIHJldHVybiBEeW5hbWljVmFsdWUuZnJvbUR5bmFtaWNJbnB1dChub2RlLCB2YWx1ZSk7XG4gICAgICB9XG4gICAgICBwaWVjZXMucHVzaChgJHt2YWx1ZX1gLCBzcGFuLmxpdGVyYWwudGV4dCk7XG4gICAgfVxuICAgIHJldHVybiBwaWVjZXMuam9pbignJyk7XG4gIH1cblxuICBwcml2YXRlIHZpc2l0SWRlbnRpZmllcihub2RlOiB0cy5JZGVudGlmaWVyLCBjb250ZXh0OiBDb250ZXh0KTogUmVzb2x2ZWRWYWx1ZSB7XG4gICAgY29uc3QgZGVjbCA9IHRoaXMuaG9zdC5nZXREZWNsYXJhdGlvbk9mSWRlbnRpZmllcihub2RlKTtcbiAgICBpZiAoZGVjbCA9PT0gbnVsbCkge1xuICAgICAgaWYgKG5vZGUub3JpZ2luYWxLZXl3b3JkS2luZCA9PT0gdHMuU3ludGF4S2luZC5VbmRlZmluZWRLZXl3b3JkKSB7XG4gICAgICAgIHJldHVybiB1bmRlZmluZWQ7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21Vbmtub3duSWRlbnRpZmllcihub2RlKTtcbiAgICAgIH1cbiAgICB9XG4gICAgaWYgKGRlY2wua25vd24gIT09IG51bGwpIHtcbiAgICAgIHJldHVybiByZXNvbHZlS25vd25EZWNsYXJhdGlvbihkZWNsLmtub3duKTtcbiAgICB9IGVsc2UgaWYgKFxuICAgICAgICBpc0NvbmNyZXRlRGVjbGFyYXRpb24oZGVjbCkgJiYgZGVjbC5pZGVudGl0eSAhPT0gbnVsbCAmJlxuICAgICAgICBkZWNsLmlkZW50aXR5LmtpbmQgPT09IFNwZWNpYWxEZWNsYXJhdGlvbktpbmQuRG93bmxldmVsZWRFbnVtKSB7XG4gICAgICByZXR1cm4gdGhpcy5nZXRSZXNvbHZlZEVudW0oZGVjbC5ub2RlLCBkZWNsLmlkZW50aXR5LmVudW1NZW1iZXJzLCBjb250ZXh0KTtcbiAgICB9XG4gICAgY29uc3QgZGVjbENvbnRleHQgPSB7Li4uY29udGV4dCwgLi4uam9pbk1vZHVsZUNvbnRleHQoY29udGV4dCwgbm9kZSwgZGVjbCl9O1xuICAgIC8vIFRoZSBpZGVudGlmaWVyJ3MgZGVjbGFyYXRpb24gaXMgZWl0aGVyIGNvbmNyZXRlIChhIHRzLkRlY2xhcmF0aW9uIGV4aXN0cyBmb3IgaXQpIG9yIGlubGluZVxuICAgIC8vIChhIGRpcmVjdCByZWZlcmVuY2UgdG8gYSB0cy5FeHByZXNzaW9uKS5cbiAgICAvLyBUT0RPKGFseGh1Yik6IHJlbW92ZSBjYXN0IG9uY2UgVFMgaXMgdXBncmFkZWQgaW4gZzMuXG4gICAgY29uc3QgcmVzdWx0ID0gZGVjbC5ub2RlICE9PSBudWxsID9cbiAgICAgICAgdGhpcy52aXNpdERlY2xhcmF0aW9uKGRlY2wubm9kZSwgZGVjbENvbnRleHQpIDpcbiAgICAgICAgdGhpcy52aXNpdEV4cHJlc3Npb24oKGRlY2wgYXMgSW5saW5lRGVjbGFyYXRpb24pLmV4cHJlc3Npb24sIGRlY2xDb250ZXh0KTtcbiAgICBpZiAocmVzdWx0IGluc3RhbmNlb2YgUmVmZXJlbmNlKSB7XG4gICAgICAvLyBPbmx5IHJlY29yZCBpZGVudGlmaWVycyB0byBub24tc3ludGhldGljIHJlZmVyZW5jZXMuIFN5bnRoZXRpYyByZWZlcmVuY2VzIG1heSBub3QgaGF2ZSB0aGVcbiAgICAgIC8vIHNhbWUgdmFsdWUgYXQgcnVudGltZSBhcyB0aGV5IGRvIGF0IGNvbXBpbGUgdGltZSwgc28gaXQncyBub3QgbGVnYWwgdG8gcmVmZXIgdG8gdGhlbSBieSB0aGVcbiAgICAgIC8vIGlkZW50aWZpZXIgaGVyZS5cbiAgICAgIGlmICghcmVzdWx0LnN5bnRoZXRpYykge1xuICAgICAgICByZXN1bHQuYWRkSWRlbnRpZmllcihub2RlKTtcbiAgICAgIH1cbiAgICB9IGVsc2UgaWYgKHJlc3VsdCBpbnN0YW5jZW9mIER5bmFtaWNWYWx1ZSkge1xuICAgICAgcmV0dXJuIER5bmFtaWNWYWx1ZS5mcm9tRHluYW1pY0lucHV0KG5vZGUsIHJlc3VsdCk7XG4gICAgfVxuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICBwcml2YXRlIHZpc2l0RGVjbGFyYXRpb24obm9kZTogdHMuRGVjbGFyYXRpb24sIGNvbnRleHQ6IENvbnRleHQpOiBSZXNvbHZlZFZhbHVlIHtcbiAgICBpZiAodGhpcy5kZXBlbmRlbmN5VHJhY2tlciAhPT0gbnVsbCkge1xuICAgICAgdGhpcy5kZXBlbmRlbmN5VHJhY2tlci5hZGREZXBlbmRlbmN5KGNvbnRleHQub3JpZ2luYXRpbmdGaWxlLCBub2RlLmdldFNvdXJjZUZpbGUoKSk7XG4gICAgfVxuICAgIGlmICh0aGlzLmhvc3QuaXNDbGFzcyhub2RlKSkge1xuICAgICAgcmV0dXJuIHRoaXMuZ2V0UmVmZXJlbmNlKG5vZGUsIGNvbnRleHQpO1xuICAgIH0gZWxzZSBpZiAodHMuaXNWYXJpYWJsZURlY2xhcmF0aW9uKG5vZGUpKSB7XG4gICAgICByZXR1cm4gdGhpcy52aXNpdFZhcmlhYmxlRGVjbGFyYXRpb24obm9kZSwgY29udGV4dCk7XG4gICAgfSBlbHNlIGlmICh0cy5pc1BhcmFtZXRlcihub2RlKSAmJiBjb250ZXh0LnNjb3BlLmhhcyhub2RlKSkge1xuICAgICAgcmV0dXJuIGNvbnRleHQuc2NvcGUuZ2V0KG5vZGUpITtcbiAgICB9IGVsc2UgaWYgKHRzLmlzRXhwb3J0QXNzaWdubWVudChub2RlKSkge1xuICAgICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKG5vZGUuZXhwcmVzc2lvbiwgY29udGV4dCk7XG4gICAgfSBlbHNlIGlmICh0cy5pc0VudW1EZWNsYXJhdGlvbihub2RlKSkge1xuICAgICAgcmV0dXJuIHRoaXMudmlzaXRFbnVtRGVjbGFyYXRpb24obm9kZSwgY29udGV4dCk7XG4gICAgfSBlbHNlIGlmICh0cy5pc1NvdXJjZUZpbGUobm9kZSkpIHtcbiAgICAgIHJldHVybiB0aGlzLnZpc2l0U291cmNlRmlsZShub2RlLCBjb250ZXh0KTtcbiAgICB9IGVsc2UgaWYgKHRzLmlzQmluZGluZ0VsZW1lbnQobm9kZSkpIHtcbiAgICAgIHJldHVybiB0aGlzLnZpc2l0QmluZGluZ0VsZW1lbnQobm9kZSwgY29udGV4dCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHJldHVybiB0aGlzLmdldFJlZmVyZW5jZShub2RlLCBjb250ZXh0KTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIHZpc2l0VmFyaWFibGVEZWNsYXJhdGlvbihub2RlOiB0cy5WYXJpYWJsZURlY2xhcmF0aW9uLCBjb250ZXh0OiBDb250ZXh0KTogUmVzb2x2ZWRWYWx1ZSB7XG4gICAgY29uc3QgdmFsdWUgPSB0aGlzLmhvc3QuZ2V0VmFyaWFibGVWYWx1ZShub2RlKTtcbiAgICBpZiAodmFsdWUgIT09IG51bGwpIHtcbiAgICAgIHJldHVybiB0aGlzLnZpc2l0RXhwcmVzc2lvbih2YWx1ZSwgY29udGV4dCk7XG4gICAgfSBlbHNlIGlmIChpc1ZhcmlhYmxlRGVjbGFyYXRpb25EZWNsYXJlZChub2RlKSkge1xuICAgICAgcmV0dXJuIHRoaXMuZ2V0UmVmZXJlbmNlKG5vZGUsIGNvbnRleHQpO1xuICAgIH0gZWxzZSB7XG4gICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgdmlzaXRFbnVtRGVjbGFyYXRpb24obm9kZTogdHMuRW51bURlY2xhcmF0aW9uLCBjb250ZXh0OiBDb250ZXh0KTogUmVzb2x2ZWRWYWx1ZSB7XG4gICAgY29uc3QgZW51bVJlZiA9IHRoaXMuZ2V0UmVmZXJlbmNlKG5vZGUsIGNvbnRleHQpO1xuICAgIGNvbnN0IG1hcCA9IG5ldyBNYXA8c3RyaW5nLCBFbnVtVmFsdWU+KCk7XG4gICAgbm9kZS5tZW1iZXJzLmZvckVhY2gobWVtYmVyID0+IHtcbiAgICAgIGNvbnN0IG5hbWUgPSB0aGlzLnN0cmluZ05hbWVGcm9tUHJvcGVydHlOYW1lKG1lbWJlci5uYW1lLCBjb250ZXh0KTtcbiAgICAgIGlmIChuYW1lICE9PSB1bmRlZmluZWQpIHtcbiAgICAgICAgY29uc3QgcmVzb2x2ZWQgPSBtZW1iZXIuaW5pdGlhbGl6ZXIgJiYgdGhpcy52aXNpdChtZW1iZXIuaW5pdGlhbGl6ZXIsIGNvbnRleHQpO1xuICAgICAgICBtYXAuc2V0KG5hbWUsIG5ldyBFbnVtVmFsdWUoZW51bVJlZiwgbmFtZSwgcmVzb2x2ZWQpKTtcbiAgICAgIH1cbiAgICB9KTtcbiAgICByZXR1cm4gbWFwO1xuICB9XG5cbiAgcHJpdmF0ZSB2aXNpdEVsZW1lbnRBY2Nlc3NFeHByZXNzaW9uKG5vZGU6IHRzLkVsZW1lbnRBY2Nlc3NFeHByZXNzaW9uLCBjb250ZXh0OiBDb250ZXh0KTpcbiAgICAgIFJlc29sdmVkVmFsdWUge1xuICAgIGNvbnN0IGxocyA9IHRoaXMudmlzaXRFeHByZXNzaW9uKG5vZGUuZXhwcmVzc2lvbiwgY29udGV4dCk7XG4gICAgaWYgKGxocyBpbnN0YW5jZW9mIER5bmFtaWNWYWx1ZSkge1xuICAgICAgcmV0dXJuIER5bmFtaWNWYWx1ZS5mcm9tRHluYW1pY0lucHV0KG5vZGUsIGxocyk7XG4gICAgfVxuICAgIGNvbnN0IHJocyA9IHRoaXMudmlzaXRFeHByZXNzaW9uKG5vZGUuYXJndW1lbnRFeHByZXNzaW9uLCBjb250ZXh0KTtcbiAgICBpZiAocmhzIGluc3RhbmNlb2YgRHluYW1pY1ZhbHVlKSB7XG4gICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21EeW5hbWljSW5wdXQobm9kZSwgcmhzKTtcbiAgICB9XG4gICAgaWYgKHR5cGVvZiByaHMgIT09ICdzdHJpbmcnICYmIHR5cGVvZiByaHMgIT09ICdudW1iZXInKSB7XG4gICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21JbnZhbGlkRXhwcmVzc2lvblR5cGUobm9kZSwgcmhzKTtcbiAgICB9XG5cbiAgICByZXR1cm4gdGhpcy5hY2Nlc3NIZWxwZXIobm9kZSwgbGhzLCByaHMsIGNvbnRleHQpO1xuICB9XG5cbiAgcHJpdmF0ZSB2aXNpdFByb3BlcnR5QWNjZXNzRXhwcmVzc2lvbihub2RlOiB0cy5Qcm9wZXJ0eUFjY2Vzc0V4cHJlc3Npb24sIGNvbnRleHQ6IENvbnRleHQpOlxuICAgICAgUmVzb2x2ZWRWYWx1ZSB7XG4gICAgY29uc3QgbGhzID0gdGhpcy52aXNpdEV4cHJlc3Npb24obm9kZS5leHByZXNzaW9uLCBjb250ZXh0KTtcbiAgICBjb25zdCByaHMgPSBub2RlLm5hbWUudGV4dDtcbiAgICAvLyBUT0RPOiBoYW5kbGUgcmVmZXJlbmNlIHRvIGNsYXNzIGRlY2xhcmF0aW9uLlxuICAgIGlmIChsaHMgaW5zdGFuY2VvZiBEeW5hbWljVmFsdWUpIHtcbiAgICAgIHJldHVybiBEeW5hbWljVmFsdWUuZnJvbUR5bmFtaWNJbnB1dChub2RlLCBsaHMpO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5hY2Nlc3NIZWxwZXIobm9kZSwgbGhzLCByaHMsIGNvbnRleHQpO1xuICB9XG5cbiAgcHJpdmF0ZSB2aXNpdFNvdXJjZUZpbGUobm9kZTogdHMuU291cmNlRmlsZSwgY29udGV4dDogQ29udGV4dCk6IFJlc29sdmVkVmFsdWUge1xuICAgIGNvbnN0IGRlY2xhcmF0aW9ucyA9IHRoaXMuaG9zdC5nZXRFeHBvcnRzT2ZNb2R1bGUobm9kZSk7XG4gICAgaWYgKGRlY2xhcmF0aW9ucyA9PT0gbnVsbCkge1xuICAgICAgcmV0dXJuIER5bmFtaWNWYWx1ZS5mcm9tVW5rbm93bihub2RlKTtcbiAgICB9XG5cbiAgICByZXR1cm4gbmV3IFJlc29sdmVkTW9kdWxlKGRlY2xhcmF0aW9ucywgZGVjbCA9PiB7XG4gICAgICBpZiAoZGVjbC5rbm93biAhPT0gbnVsbCkge1xuICAgICAgICByZXR1cm4gcmVzb2x2ZUtub3duRGVjbGFyYXRpb24oZGVjbC5rbm93bik7XG4gICAgICB9XG5cbiAgICAgIGNvbnN0IGRlY2xDb250ZXh0ID0ge1xuICAgICAgICAuLi5jb250ZXh0LFxuICAgICAgICAuLi5qb2luTW9kdWxlQ29udGV4dChjb250ZXh0LCBub2RlLCBkZWNsKSxcbiAgICAgIH07XG5cbiAgICAgIC8vIFZpc2l0IGJvdGggY29uY3JldGUgYW5kIGlubGluZSBkZWNsYXJhdGlvbnMuXG4gICAgICAvLyBUT0RPKGFseGh1Yik6IHJlbW92ZSBjYXN0IG9uY2UgVFMgaXMgdXBncmFkZWQgaW4gZzMuXG4gICAgICByZXR1cm4gZGVjbC5ub2RlICE9PSBudWxsID9cbiAgICAgICAgICB0aGlzLnZpc2l0RGVjbGFyYXRpb24oZGVjbC5ub2RlLCBkZWNsQ29udGV4dCkgOlxuICAgICAgICAgIHRoaXMudmlzaXRFeHByZXNzaW9uKChkZWNsIGFzIElubGluZURlY2xhcmF0aW9uKS5leHByZXNzaW9uLCBkZWNsQ29udGV4dCk7XG4gICAgfSk7XG4gIH1cblxuICBwcml2YXRlIGFjY2Vzc0hlbHBlcihub2RlOiB0cy5Ob2RlLCBsaHM6IFJlc29sdmVkVmFsdWUsIHJoczogc3RyaW5nfG51bWJlciwgY29udGV4dDogQ29udGV4dCk6XG4gICAgICBSZXNvbHZlZFZhbHVlIHtcbiAgICBjb25zdCBzdHJJbmRleCA9IGAke3Joc31gO1xuICAgIGlmIChsaHMgaW5zdGFuY2VvZiBNYXApIHtcbiAgICAgIGlmIChsaHMuaGFzKHN0ckluZGV4KSkge1xuICAgICAgICByZXR1cm4gbGhzLmdldChzdHJJbmRleCkhO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgICAgIH1cbiAgICB9IGVsc2UgaWYgKGxocyBpbnN0YW5jZW9mIFJlc29sdmVkTW9kdWxlKSB7XG4gICAgICByZXR1cm4gbGhzLmdldEV4cG9ydChzdHJJbmRleCk7XG4gICAgfSBlbHNlIGlmIChBcnJheS5pc0FycmF5KGxocykpIHtcbiAgICAgIGlmIChyaHMgPT09ICdsZW5ndGgnKSB7XG4gICAgICAgIHJldHVybiBsaHMubGVuZ3RoO1xuICAgICAgfSBlbHNlIGlmIChyaHMgPT09ICdzbGljZScpIHtcbiAgICAgICAgcmV0dXJuIG5ldyBBcnJheVNsaWNlQnVpbHRpbkZuKGxocyk7XG4gICAgICB9IGVsc2UgaWYgKHJocyA9PT0gJ2NvbmNhdCcpIHtcbiAgICAgICAgcmV0dXJuIG5ldyBBcnJheUNvbmNhdEJ1aWx0aW5GbihsaHMpO1xuICAgICAgfVxuICAgICAgaWYgKHR5cGVvZiByaHMgIT09ICdudW1iZXInIHx8ICFOdW1iZXIuaXNJbnRlZ2VyKHJocykpIHtcbiAgICAgICAgcmV0dXJuIER5bmFtaWNWYWx1ZS5mcm9tSW52YWxpZEV4cHJlc3Npb25UeXBlKG5vZGUsIHJocyk7XG4gICAgICB9XG4gICAgICByZXR1cm4gbGhzW3Joc107XG4gICAgfSBlbHNlIGlmIChsaHMgaW5zdGFuY2VvZiBSZWZlcmVuY2UpIHtcbiAgICAgIGNvbnN0IHJlZiA9IGxocy5ub2RlO1xuICAgICAgaWYgKHRoaXMuaG9zdC5pc0NsYXNzKHJlZikpIHtcbiAgICAgICAgY29uc3QgbW9kdWxlID0gb3duaW5nTW9kdWxlKGNvbnRleHQsIGxocy5iZXN0R3Vlc3NPd25pbmdNb2R1bGUpO1xuICAgICAgICBsZXQgdmFsdWU6IFJlc29sdmVkVmFsdWUgPSB1bmRlZmluZWQ7XG4gICAgICAgIGNvbnN0IG1lbWJlciA9IHRoaXMuaG9zdC5nZXRNZW1iZXJzT2ZDbGFzcyhyZWYpLmZpbmQoXG4gICAgICAgICAgICBtZW1iZXIgPT4gbWVtYmVyLmlzU3RhdGljICYmIG1lbWJlci5uYW1lID09PSBzdHJJbmRleCk7XG4gICAgICAgIGlmIChtZW1iZXIgIT09IHVuZGVmaW5lZCkge1xuICAgICAgICAgIGlmIChtZW1iZXIudmFsdWUgIT09IG51bGwpIHtcbiAgICAgICAgICAgIHZhbHVlID0gdGhpcy52aXNpdEV4cHJlc3Npb24obWVtYmVyLnZhbHVlLCBjb250ZXh0KTtcbiAgICAgICAgICB9IGVsc2UgaWYgKG1lbWJlci5pbXBsZW1lbnRhdGlvbiAhPT0gbnVsbCkge1xuICAgICAgICAgICAgdmFsdWUgPSBuZXcgUmVmZXJlbmNlKG1lbWJlci5pbXBsZW1lbnRhdGlvbiwgbW9kdWxlKTtcbiAgICAgICAgICB9IGVsc2UgaWYgKG1lbWJlci5ub2RlKSB7XG4gICAgICAgICAgICB2YWx1ZSA9IG5ldyBSZWZlcmVuY2UobWVtYmVyLm5vZGUsIG1vZHVsZSk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICAgIHJldHVybiB2YWx1ZTtcbiAgICAgIH0gZWxzZSBpZiAoaXNEZWNsYXJhdGlvbihyZWYpKSB7XG4gICAgICAgIHJldHVybiBEeW5hbWljVmFsdWUuZnJvbUR5bmFtaWNJbnB1dChcbiAgICAgICAgICAgIG5vZGUsIER5bmFtaWNWYWx1ZS5mcm9tRXh0ZXJuYWxSZWZlcmVuY2UocmVmLCBsaHMgYXMgUmVmZXJlbmNlPHRzLkRlY2xhcmF0aW9uPikpO1xuICAgICAgfVxuICAgIH0gZWxzZSBpZiAobGhzIGluc3RhbmNlb2YgRHluYW1pY1ZhbHVlKSB7XG4gICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21EeW5hbWljSW5wdXQobm9kZSwgbGhzKTtcbiAgICB9XG5cbiAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21Vbmtub3duKG5vZGUpO1xuICB9XG5cbiAgcHJpdmF0ZSB2aXNpdENhbGxFeHByZXNzaW9uKG5vZGU6IHRzLkNhbGxFeHByZXNzaW9uLCBjb250ZXh0OiBDb250ZXh0KTogUmVzb2x2ZWRWYWx1ZSB7XG4gICAgY29uc3QgbGhzID0gdGhpcy52aXNpdEV4cHJlc3Npb24obm9kZS5leHByZXNzaW9uLCBjb250ZXh0KTtcbiAgICBpZiAobGhzIGluc3RhbmNlb2YgRHluYW1pY1ZhbHVlKSB7XG4gICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21EeW5hbWljSW5wdXQobm9kZSwgbGhzKTtcbiAgICB9XG5cbiAgICAvLyBJZiB0aGUgY2FsbCByZWZlcnMgdG8gYSBidWlsdGluIGZ1bmN0aW9uLCBhdHRlbXB0IHRvIGV2YWx1YXRlIHRoZSBmdW5jdGlvbi5cbiAgICBpZiAobGhzIGluc3RhbmNlb2YgS25vd25Gbikge1xuICAgICAgcmV0dXJuIGxocy5ldmFsdWF0ZShub2RlLCB0aGlzLmV2YWx1YXRlRnVuY3Rpb25Bcmd1bWVudHMobm9kZSwgY29udGV4dCkpO1xuICAgIH1cblxuICAgIGlmICghKGxocyBpbnN0YW5jZW9mIFJlZmVyZW5jZSkpIHtcbiAgICAgIHJldHVybiBEeW5hbWljVmFsdWUuZnJvbUludmFsaWRFeHByZXNzaW9uVHlwZShub2RlLmV4cHJlc3Npb24sIGxocyk7XG4gICAgfVxuXG4gICAgY29uc3QgZm4gPSB0aGlzLmhvc3QuZ2V0RGVmaW5pdGlvbk9mRnVuY3Rpb24obGhzLm5vZGUpO1xuICAgIGlmIChmbiA9PT0gbnVsbCkge1xuICAgICAgcmV0dXJuIER5bmFtaWNWYWx1ZS5mcm9tSW52YWxpZEV4cHJlc3Npb25UeXBlKG5vZGUuZXhwcmVzc2lvbiwgbGhzKTtcbiAgICB9XG5cbiAgICBpZiAoIWlzRnVuY3Rpb25Pck1ldGhvZFJlZmVyZW5jZShsaHMpKSB7XG4gICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21JbnZhbGlkRXhwcmVzc2lvblR5cGUobm9kZS5leHByZXNzaW9uLCBsaHMpO1xuICAgIH1cblxuICAgIC8vIElmIHRoZSBmdW5jdGlvbiBpcyBmb3JlaWduIChkZWNsYXJlZCB0aHJvdWdoIGEgZC50cyBmaWxlKSwgYXR0ZW1wdCB0byByZXNvbHZlIGl0IHdpdGggdGhlXG4gICAgLy8gZm9yZWlnbkZ1bmN0aW9uUmVzb2x2ZXIsIGlmIG9uZSBpcyBzcGVjaWZpZWQuXG4gICAgaWYgKGZuLmJvZHkgPT09IG51bGwpIHtcbiAgICAgIGxldCBleHByOiB0cy5FeHByZXNzaW9ufG51bGwgPSBudWxsO1xuICAgICAgaWYgKGNvbnRleHQuZm9yZWlnbkZ1bmN0aW9uUmVzb2x2ZXIpIHtcbiAgICAgICAgZXhwciA9IGNvbnRleHQuZm9yZWlnbkZ1bmN0aW9uUmVzb2x2ZXIobGhzLCBub2RlLmFyZ3VtZW50cyk7XG4gICAgICB9XG4gICAgICBpZiAoZXhwciA9PT0gbnVsbCkge1xuICAgICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21EeW5hbWljSW5wdXQoXG4gICAgICAgICAgICBub2RlLCBEeW5hbWljVmFsdWUuZnJvbUV4dGVybmFsUmVmZXJlbmNlKG5vZGUuZXhwcmVzc2lvbiwgbGhzKSk7XG4gICAgICB9XG5cbiAgICAgIC8vIElmIHRoZSBmdW5jdGlvbiBpcyBkZWNsYXJlZCBpbiBhIGRpZmZlcmVudCBmaWxlLCByZXNvbHZlIHRoZSBmb3JlaWduIGZ1bmN0aW9uIGV4cHJlc3Npb25cbiAgICAgIC8vIHVzaW5nIHRoZSBhYnNvbHV0ZSBtb2R1bGUgbmFtZSBvZiB0aGF0IGZpbGUgKGlmIGFueSkuXG4gICAgICBpZiAobGhzLmJlc3RHdWVzc093bmluZ01vZHVsZSAhPT0gbnVsbCkge1xuICAgICAgICBjb250ZXh0ID0ge1xuICAgICAgICAgIC4uLmNvbnRleHQsXG4gICAgICAgICAgYWJzb2x1dGVNb2R1bGVOYW1lOiBsaHMuYmVzdEd1ZXNzT3duaW5nTW9kdWxlLnNwZWNpZmllcixcbiAgICAgICAgICByZXNvbHV0aW9uQ29udGV4dDogbm9kZS5nZXRTb3VyY2VGaWxlKCkuZmlsZU5hbWUsXG4gICAgICAgIH07XG4gICAgICB9XG5cbiAgICAgIHJldHVybiB0aGlzLnZpc2l0RmZyRXhwcmVzc2lvbihleHByLCBjb250ZXh0KTtcbiAgICB9XG5cbiAgICBsZXQgcmVzOiBSZXNvbHZlZFZhbHVlID0gdGhpcy52aXNpdEZ1bmN0aW9uQm9keShub2RlLCBmbiwgY29udGV4dCk7XG5cbiAgICAvLyBJZiB0aGUgcmVzdWx0IG9mIGF0dGVtcHRpbmcgdG8gcmVzb2x2ZSB0aGUgZnVuY3Rpb24gYm9keSB3YXMgYSBEeW5hbWljVmFsdWUsIGF0dGVtcHQgdG8gdXNlXG4gICAgLy8gdGhlIGZvcmVpZ25GdW5jdGlvblJlc29sdmVyIGlmIG9uZSBpcyBwcmVzZW50LiBUaGlzIGNvdWxkIHN0aWxsIHBvdGVudGlhbGx5IHlpZWxkIGEgdXNhYmxlXG4gICAgLy8gdmFsdWUuXG4gICAgaWYgKHJlcyBpbnN0YW5jZW9mIER5bmFtaWNWYWx1ZSAmJiBjb250ZXh0LmZvcmVpZ25GdW5jdGlvblJlc29sdmVyICE9PSB1bmRlZmluZWQpIHtcbiAgICAgIGNvbnN0IGZmckV4cHIgPSBjb250ZXh0LmZvcmVpZ25GdW5jdGlvblJlc29sdmVyKGxocywgbm9kZS5hcmd1bWVudHMpO1xuICAgICAgaWYgKGZmckV4cHIgIT09IG51bGwpIHtcbiAgICAgICAgLy8gVGhlIGZvcmVpZ24gZnVuY3Rpb24gcmVzb2x2ZXIgd2FzIGFibGUgdG8gZXh0cmFjdCBhbiBleHByZXNzaW9uIGZyb20gdGhpcyBmdW5jdGlvbi4gU2VlXG4gICAgICAgIC8vIGlmIHRoYXQgZXhwcmVzc2lvbiBsZWFkcyB0byBhIG5vbi1keW5hbWljIHJlc3VsdC5cbiAgICAgICAgY29uc3QgZmZyUmVzID0gdGhpcy52aXNpdEZmckV4cHJlc3Npb24oZmZyRXhwciwgY29udGV4dCk7XG4gICAgICAgIGlmICghKGZmclJlcyBpbnN0YW5jZW9mIER5bmFtaWNWYWx1ZSkpIHtcbiAgICAgICAgICAvLyBGRlIgeWllbGRlZCBhbiBhY3R1YWwgcmVzdWx0IHRoYXQncyBub3QgZHluYW1pYywgc28gdXNlIHRoYXQgaW5zdGVhZCBvZiB0aGUgb3JpZ2luYWxcbiAgICAgICAgICAvLyByZXNvbHV0aW9uLlxuICAgICAgICAgIHJlcyA9IGZmclJlcztcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICAgIHJldHVybiByZXM7XG4gIH1cblxuICAvKipcbiAgICogVmlzaXQgYW4gZXhwcmVzc2lvbiB3aGljaCB3YXMgZXh0cmFjdGVkIGZyb20gYSBmb3JlaWduLWZ1bmN0aW9uIHJlc29sdmVyLlxuICAgKlxuICAgKiBUaGlzIHdpbGwgcHJvY2VzcyB0aGUgcmVzdWx0IGFuZCBlbnN1cmUgaXQncyBjb3JyZWN0IGZvciBGRlItcmVzb2x2ZWQgdmFsdWVzLCBpbmNsdWRpbmcgbWFya2luZ1xuICAgKiBgUmVmZXJlbmNlYHMgYXMgc3ludGhldGljLlxuICAgKi9cbiAgcHJpdmF0ZSB2aXNpdEZmckV4cHJlc3Npb24oZXhwcjogdHMuRXhwcmVzc2lvbiwgY29udGV4dDogQ29udGV4dCk6IFJlc29sdmVkVmFsdWUge1xuICAgIGNvbnN0IHJlcyA9IHRoaXMudmlzaXRFeHByZXNzaW9uKGV4cHIsIGNvbnRleHQpO1xuICAgIGlmIChyZXMgaW5zdGFuY2VvZiBSZWZlcmVuY2UpIHtcbiAgICAgIC8vIFRoaXMgUmVmZXJlbmNlIHdhcyBjcmVhdGVkIHN5bnRoZXRpY2FsbHksIHZpYSBhIGZvcmVpZ24gZnVuY3Rpb24gcmVzb2x2ZXIuIFRoZSByZWFsXG4gICAgICAvLyBydW50aW1lIHZhbHVlIG9mIHRoZSBmdW5jdGlvbiBleHByZXNzaW9uIG1heSBiZSBkaWZmZXJlbnQgdGhhbiB0aGUgZm9yZWlnbiBmdW5jdGlvblxuICAgICAgLy8gcmVzb2x2ZWQgdmFsdWUsIHNvIG1hcmsgdGhlIFJlZmVyZW5jZSBhcyBzeW50aGV0aWMgdG8gYXZvaWQgaXQgYmVpbmcgbWlzaW50ZXJwcmV0ZWQuXG4gICAgICByZXMuc3ludGhldGljID0gdHJ1ZTtcbiAgICB9XG4gICAgcmV0dXJuIHJlcztcbiAgfVxuXG4gIHByaXZhdGUgdmlzaXRGdW5jdGlvbkJvZHkobm9kZTogdHMuQ2FsbEV4cHJlc3Npb24sIGZuOiBGdW5jdGlvbkRlZmluaXRpb24sIGNvbnRleHQ6IENvbnRleHQpOlxuICAgICAgUmVzb2x2ZWRWYWx1ZSB7XG4gICAgaWYgKGZuLmJvZHkgPT09IG51bGwgfHwgZm4uYm9keS5sZW5ndGggIT09IDEgfHwgIXRzLmlzUmV0dXJuU3RhdGVtZW50KGZuLmJvZHlbMF0pKSB7XG4gICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21Vbmtub3duKG5vZGUpO1xuICAgIH1cbiAgICBjb25zdCByZXQgPSBmbi5ib2R5WzBdIGFzIHRzLlJldHVyblN0YXRlbWVudDtcblxuICAgIGNvbnN0IGFyZ3MgPSB0aGlzLmV2YWx1YXRlRnVuY3Rpb25Bcmd1bWVudHMobm9kZSwgY29udGV4dCk7XG4gICAgY29uc3QgbmV3U2NvcGU6IFNjb3BlID0gbmV3IE1hcDx0cy5QYXJhbWV0ZXJEZWNsYXJhdGlvbiwgUmVzb2x2ZWRWYWx1ZT4oKTtcbiAgICBjb25zdCBjYWxsZWVDb250ZXh0ID0gey4uLmNvbnRleHQsIHNjb3BlOiBuZXdTY29wZX07XG4gICAgZm4ucGFyYW1ldGVycy5mb3JFYWNoKChwYXJhbSwgaW5kZXgpID0+IHtcbiAgICAgIGxldCBhcmcgPSBhcmdzW2luZGV4XTtcbiAgICAgIGlmIChwYXJhbS5ub2RlLmRvdERvdERvdFRva2VuICE9PSB1bmRlZmluZWQpIHtcbiAgICAgICAgYXJnID0gYXJncy5zbGljZShpbmRleCk7XG4gICAgICB9XG4gICAgICBpZiAoYXJnID09PSB1bmRlZmluZWQgJiYgcGFyYW0uaW5pdGlhbGl6ZXIgIT09IG51bGwpIHtcbiAgICAgICAgYXJnID0gdGhpcy52aXNpdEV4cHJlc3Npb24ocGFyYW0uaW5pdGlhbGl6ZXIsIGNhbGxlZUNvbnRleHQpO1xuICAgICAgfVxuICAgICAgbmV3U2NvcGUuc2V0KHBhcmFtLm5vZGUsIGFyZyk7XG4gICAgfSk7XG5cbiAgICByZXR1cm4gcmV0LmV4cHJlc3Npb24gIT09IHVuZGVmaW5lZCA/IHRoaXMudmlzaXRFeHByZXNzaW9uKHJldC5leHByZXNzaW9uLCBjYWxsZWVDb250ZXh0KSA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB1bmRlZmluZWQ7XG4gIH1cblxuICBwcml2YXRlIHZpc2l0Q29uZGl0aW9uYWxFeHByZXNzaW9uKG5vZGU6IHRzLkNvbmRpdGlvbmFsRXhwcmVzc2lvbiwgY29udGV4dDogQ29udGV4dCk6XG4gICAgICBSZXNvbHZlZFZhbHVlIHtcbiAgICBjb25zdCBjb25kaXRpb24gPSB0aGlzLnZpc2l0RXhwcmVzc2lvbihub2RlLmNvbmRpdGlvbiwgY29udGV4dCk7XG4gICAgaWYgKGNvbmRpdGlvbiBpbnN0YW5jZW9mIER5bmFtaWNWYWx1ZSkge1xuICAgICAgcmV0dXJuIER5bmFtaWNWYWx1ZS5mcm9tRHluYW1pY0lucHV0KG5vZGUsIGNvbmRpdGlvbik7XG4gICAgfVxuXG4gICAgaWYgKGNvbmRpdGlvbikge1xuICAgICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKG5vZGUud2hlblRydWUsIGNvbnRleHQpO1xuICAgIH0gZWxzZSB7XG4gICAgICByZXR1cm4gdGhpcy52aXNpdEV4cHJlc3Npb24obm9kZS53aGVuRmFsc2UsIGNvbnRleHQpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgdmlzaXRQcmVmaXhVbmFyeUV4cHJlc3Npb24obm9kZTogdHMuUHJlZml4VW5hcnlFeHByZXNzaW9uLCBjb250ZXh0OiBDb250ZXh0KTpcbiAgICAgIFJlc29sdmVkVmFsdWUge1xuICAgIGNvbnN0IG9wZXJhdG9yS2luZCA9IG5vZGUub3BlcmF0b3I7XG4gICAgaWYgKCFVTkFSWV9PUEVSQVRPUlMuaGFzKG9wZXJhdG9yS2luZCkpIHtcbiAgICAgIHJldHVybiBEeW5hbWljVmFsdWUuZnJvbVVuc3VwcG9ydGVkU3ludGF4KG5vZGUpO1xuICAgIH1cblxuICAgIGNvbnN0IG9wID0gVU5BUllfT1BFUkFUT1JTLmdldChvcGVyYXRvcktpbmQpITtcbiAgICBjb25zdCB2YWx1ZSA9IHRoaXMudmlzaXRFeHByZXNzaW9uKG5vZGUub3BlcmFuZCwgY29udGV4dCk7XG4gICAgaWYgKHZhbHVlIGluc3RhbmNlb2YgRHluYW1pY1ZhbHVlKSB7XG4gICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21EeW5hbWljSW5wdXQobm9kZSwgdmFsdWUpO1xuICAgIH0gZWxzZSB7XG4gICAgICByZXR1cm4gb3AodmFsdWUpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgdmlzaXRCaW5hcnlFeHByZXNzaW9uKG5vZGU6IHRzLkJpbmFyeUV4cHJlc3Npb24sIGNvbnRleHQ6IENvbnRleHQpOiBSZXNvbHZlZFZhbHVlIHtcbiAgICBjb25zdCB0b2tlbktpbmQgPSBub2RlLm9wZXJhdG9yVG9rZW4ua2luZDtcbiAgICBpZiAoIUJJTkFSWV9PUEVSQVRPUlMuaGFzKHRva2VuS2luZCkpIHtcbiAgICAgIHJldHVybiBEeW5hbWljVmFsdWUuZnJvbVVuc3VwcG9ydGVkU3ludGF4KG5vZGUpO1xuICAgIH1cblxuICAgIGNvbnN0IG9wUmVjb3JkID0gQklOQVJZX09QRVJBVE9SUy5nZXQodG9rZW5LaW5kKSE7XG4gICAgbGV0IGxoczogUmVzb2x2ZWRWYWx1ZSwgcmhzOiBSZXNvbHZlZFZhbHVlO1xuICAgIGlmIChvcFJlY29yZC5saXRlcmFsKSB7XG4gICAgICBsaHMgPSBsaXRlcmFsKFxuICAgICAgICAgIHRoaXMudmlzaXRFeHByZXNzaW9uKG5vZGUubGVmdCwgY29udGV4dCksXG4gICAgICAgICAgdmFsdWUgPT4gRHluYW1pY1ZhbHVlLmZyb21JbnZhbGlkRXhwcmVzc2lvblR5cGUobm9kZS5sZWZ0LCB2YWx1ZSkpO1xuICAgICAgcmhzID0gbGl0ZXJhbChcbiAgICAgICAgICB0aGlzLnZpc2l0RXhwcmVzc2lvbihub2RlLnJpZ2h0LCBjb250ZXh0KSxcbiAgICAgICAgICB2YWx1ZSA9PiBEeW5hbWljVmFsdWUuZnJvbUludmFsaWRFeHByZXNzaW9uVHlwZShub2RlLnJpZ2h0LCB2YWx1ZSkpO1xuICAgIH0gZWxzZSB7XG4gICAgICBsaHMgPSB0aGlzLnZpc2l0RXhwcmVzc2lvbihub2RlLmxlZnQsIGNvbnRleHQpO1xuICAgICAgcmhzID0gdGhpcy52aXNpdEV4cHJlc3Npb24obm9kZS5yaWdodCwgY29udGV4dCk7XG4gICAgfVxuICAgIGlmIChsaHMgaW5zdGFuY2VvZiBEeW5hbWljVmFsdWUpIHtcbiAgICAgIHJldHVybiBEeW5hbWljVmFsdWUuZnJvbUR5bmFtaWNJbnB1dChub2RlLCBsaHMpO1xuICAgIH0gZWxzZSBpZiAocmhzIGluc3RhbmNlb2YgRHluYW1pY1ZhbHVlKSB7XG4gICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21EeW5hbWljSW5wdXQobm9kZSwgcmhzKTtcbiAgICB9IGVsc2Uge1xuICAgICAgcmV0dXJuIG9wUmVjb3JkLm9wKGxocywgcmhzKTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIHZpc2l0UGFyZW50aGVzaXplZEV4cHJlc3Npb24obm9kZTogdHMuUGFyZW50aGVzaXplZEV4cHJlc3Npb24sIGNvbnRleHQ6IENvbnRleHQpOlxuICAgICAgUmVzb2x2ZWRWYWx1ZSB7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRFeHByZXNzaW9uKG5vZGUuZXhwcmVzc2lvbiwgY29udGV4dCk7XG4gIH1cblxuICBwcml2YXRlIGV2YWx1YXRlRnVuY3Rpb25Bcmd1bWVudHMobm9kZTogdHMuQ2FsbEV4cHJlc3Npb24sIGNvbnRleHQ6IENvbnRleHQpOiBSZXNvbHZlZFZhbHVlQXJyYXkge1xuICAgIGNvbnN0IGFyZ3M6IFJlc29sdmVkVmFsdWVBcnJheSA9IFtdO1xuICAgIGZvciAoY29uc3QgYXJnIG9mIG5vZGUuYXJndW1lbnRzKSB7XG4gICAgICBpZiAodHMuaXNTcHJlYWRFbGVtZW50KGFyZykpIHtcbiAgICAgICAgYXJncy5wdXNoKC4uLnRoaXMudmlzaXRTcHJlYWRFbGVtZW50KGFyZywgY29udGV4dCkpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgYXJncy5wdXNoKHRoaXMudmlzaXRFeHByZXNzaW9uKGFyZywgY29udGV4dCkpO1xuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4gYXJncztcbiAgfVxuXG4gIHByaXZhdGUgdmlzaXRTcHJlYWRFbGVtZW50KG5vZGU6IHRzLlNwcmVhZEVsZW1lbnQsIGNvbnRleHQ6IENvbnRleHQpOiBSZXNvbHZlZFZhbHVlQXJyYXkge1xuICAgIGNvbnN0IHNwcmVhZCA9IHRoaXMudmlzaXRFeHByZXNzaW9uKG5vZGUuZXhwcmVzc2lvbiwgY29udGV4dCk7XG4gICAgaWYgKHNwcmVhZCBpbnN0YW5jZW9mIER5bmFtaWNWYWx1ZSkge1xuICAgICAgcmV0dXJuIFtEeW5hbWljVmFsdWUuZnJvbUR5bmFtaWNJbnB1dChub2RlLCBzcHJlYWQpXTtcbiAgICB9IGVsc2UgaWYgKCFBcnJheS5pc0FycmF5KHNwcmVhZCkpIHtcbiAgICAgIHJldHVybiBbRHluYW1pY1ZhbHVlLmZyb21JbnZhbGlkRXhwcmVzc2lvblR5cGUobm9kZSwgc3ByZWFkKV07XG4gICAgfSBlbHNlIHtcbiAgICAgIHJldHVybiBzcHJlYWQ7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSB2aXNpdEJpbmRpbmdFbGVtZW50KG5vZGU6IHRzLkJpbmRpbmdFbGVtZW50LCBjb250ZXh0OiBDb250ZXh0KTogUmVzb2x2ZWRWYWx1ZSB7XG4gICAgY29uc3QgcGF0aDogdHMuQmluZGluZ0VsZW1lbnRbXSA9IFtdO1xuICAgIGxldCBjbG9zZXN0RGVjbGFyYXRpb246IHRzLk5vZGUgPSBub2RlO1xuXG4gICAgd2hpbGUgKHRzLmlzQmluZGluZ0VsZW1lbnQoY2xvc2VzdERlY2xhcmF0aW9uKSB8fFxuICAgICAgICAgICB0cy5pc0FycmF5QmluZGluZ1BhdHRlcm4oY2xvc2VzdERlY2xhcmF0aW9uKSB8fFxuICAgICAgICAgICB0cy5pc09iamVjdEJpbmRpbmdQYXR0ZXJuKGNsb3Nlc3REZWNsYXJhdGlvbikpIHtcbiAgICAgIGlmICh0cy5pc0JpbmRpbmdFbGVtZW50KGNsb3Nlc3REZWNsYXJhdGlvbikpIHtcbiAgICAgICAgcGF0aC51bnNoaWZ0KGNsb3Nlc3REZWNsYXJhdGlvbik7XG4gICAgICB9XG5cbiAgICAgIGNsb3Nlc3REZWNsYXJhdGlvbiA9IGNsb3Nlc3REZWNsYXJhdGlvbi5wYXJlbnQ7XG4gICAgfVxuXG4gICAgaWYgKCF0cy5pc1ZhcmlhYmxlRGVjbGFyYXRpb24oY2xvc2VzdERlY2xhcmF0aW9uKSB8fFxuICAgICAgICBjbG9zZXN0RGVjbGFyYXRpb24uaW5pdGlhbGl6ZXIgPT09IHVuZGVmaW5lZCkge1xuICAgICAgcmV0dXJuIER5bmFtaWNWYWx1ZS5mcm9tVW5rbm93bihub2RlKTtcbiAgICB9XG5cbiAgICBsZXQgdmFsdWUgPSB0aGlzLnZpc2l0KGNsb3Nlc3REZWNsYXJhdGlvbi5pbml0aWFsaXplciwgY29udGV4dCk7XG4gICAgZm9yIChjb25zdCBlbGVtZW50IG9mIHBhdGgpIHtcbiAgICAgIGxldCBrZXk6IG51bWJlcnxzdHJpbmc7XG4gICAgICBpZiAodHMuaXNBcnJheUJpbmRpbmdQYXR0ZXJuKGVsZW1lbnQucGFyZW50KSkge1xuICAgICAgICBrZXkgPSBlbGVtZW50LnBhcmVudC5lbGVtZW50cy5pbmRleE9mKGVsZW1lbnQpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgY29uc3QgbmFtZSA9IGVsZW1lbnQucHJvcGVydHlOYW1lIHx8IGVsZW1lbnQubmFtZTtcbiAgICAgICAgaWYgKHRzLmlzSWRlbnRpZmllcihuYW1lKSkge1xuICAgICAgICAgIGtleSA9IG5hbWUudGV4dDtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICByZXR1cm4gRHluYW1pY1ZhbHVlLmZyb21Vbmtub3duKGVsZW1lbnQpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgICB2YWx1ZSA9IHRoaXMuYWNjZXNzSGVscGVyKGVsZW1lbnQsIHZhbHVlLCBrZXksIGNvbnRleHQpO1xuICAgICAgaWYgKHZhbHVlIGluc3RhbmNlb2YgRHluYW1pY1ZhbHVlKSB7XG4gICAgICAgIHJldHVybiB2YWx1ZTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gdmFsdWU7XG4gIH1cblxuICBwcml2YXRlIHN0cmluZ05hbWVGcm9tUHJvcGVydHlOYW1lKG5vZGU6IHRzLlByb3BlcnR5TmFtZSwgY29udGV4dDogQ29udGV4dCk6IHN0cmluZ3x1bmRlZmluZWQge1xuICAgIGlmICh0cy5pc0lkZW50aWZpZXIobm9kZSkgfHwgdHMuaXNTdHJpbmdMaXRlcmFsKG5vZGUpIHx8IHRzLmlzTnVtZXJpY0xpdGVyYWwobm9kZSkpIHtcbiAgICAgIHJldHVybiBub2RlLnRleHQ7XG4gICAgfSBlbHNlIGlmICh0cy5pc0NvbXB1dGVkUHJvcGVydHlOYW1lKG5vZGUpKSB7XG4gICAgICBjb25zdCBsaXRlcmFsID0gdGhpcy52aXNpdEV4cHJlc3Npb24obm9kZS5leHByZXNzaW9uLCBjb250ZXh0KTtcbiAgICAgIHJldHVybiB0eXBlb2YgbGl0ZXJhbCA9PT0gJ3N0cmluZycgPyBsaXRlcmFsIDogdW5kZWZpbmVkO1xuICAgIH0gZWxzZSB7XG4gICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgZ2V0UmVzb2x2ZWRFbnVtKG5vZGU6IHRzLkRlY2xhcmF0aW9uLCBlbnVtTWVtYmVyczogRW51bU1lbWJlcltdLCBjb250ZXh0OiBDb250ZXh0KTpcbiAgICAgIFJlc29sdmVkVmFsdWUge1xuICAgIGNvbnN0IGVudW1SZWYgPSB0aGlzLmdldFJlZmVyZW5jZShub2RlLCBjb250ZXh0KTtcbiAgICBjb25zdCBtYXAgPSBuZXcgTWFwPHN0cmluZywgRW51bVZhbHVlPigpO1xuICAgIGVudW1NZW1iZXJzLmZvckVhY2gobWVtYmVyID0+IHtcbiAgICAgIGNvbnN0IG5hbWUgPSB0aGlzLnN0cmluZ05hbWVGcm9tUHJvcGVydHlOYW1lKG1lbWJlci5uYW1lLCBjb250ZXh0KTtcbiAgICAgIGlmIChuYW1lICE9PSB1bmRlZmluZWQpIHtcbiAgICAgICAgY29uc3QgcmVzb2x2ZWQgPSB0aGlzLnZpc2l0KG1lbWJlci5pbml0aWFsaXplciwgY29udGV4dCk7XG4gICAgICAgIG1hcC5zZXQobmFtZSwgbmV3IEVudW1WYWx1ZShlbnVtUmVmLCBuYW1lLCByZXNvbHZlZCkpO1xuICAgICAgfVxuICAgIH0pO1xuICAgIHJldHVybiBtYXA7XG4gIH1cblxuICBwcml2YXRlIGdldFJlZmVyZW5jZTxUIGV4dGVuZHMgdHMuRGVjbGFyYXRpb24+KG5vZGU6IFQsIGNvbnRleHQ6IENvbnRleHQpOiBSZWZlcmVuY2U8VD4ge1xuICAgIHJldHVybiBuZXcgUmVmZXJlbmNlKG5vZGUsIG93bmluZ01vZHVsZShjb250ZXh0KSk7XG4gIH1cbn1cblxuZnVuY3Rpb24gaXNGdW5jdGlvbk9yTWV0aG9kUmVmZXJlbmNlKHJlZjogUmVmZXJlbmNlPHRzLk5vZGU+KTpcbiAgICByZWYgaXMgUmVmZXJlbmNlPHRzLkZ1bmN0aW9uRGVjbGFyYXRpb258dHMuTWV0aG9kRGVjbGFyYXRpb258dHMuRnVuY3Rpb25FeHByZXNzaW9uPiB7XG4gIHJldHVybiB0cy5pc0Z1bmN0aW9uRGVjbGFyYXRpb24ocmVmLm5vZGUpIHx8IHRzLmlzTWV0aG9kRGVjbGFyYXRpb24ocmVmLm5vZGUpIHx8XG4gICAgICB0cy5pc0Z1bmN0aW9uRXhwcmVzc2lvbihyZWYubm9kZSk7XG59XG5cbmZ1bmN0aW9uIGxpdGVyYWwoXG4gICAgdmFsdWU6IFJlc29sdmVkVmFsdWUsIHJlamVjdDogKHZhbHVlOiBSZXNvbHZlZFZhbHVlKSA9PiBSZXNvbHZlZFZhbHVlKTogUmVzb2x2ZWRWYWx1ZSB7XG4gIGlmICh2YWx1ZSBpbnN0YW5jZW9mIEVudW1WYWx1ZSkge1xuICAgIHZhbHVlID0gdmFsdWUucmVzb2x2ZWQ7XG4gIH1cbiAgaWYgKHZhbHVlIGluc3RhbmNlb2YgRHluYW1pY1ZhbHVlIHx8IHZhbHVlID09PSBudWxsIHx8IHZhbHVlID09PSB1bmRlZmluZWQgfHxcbiAgICAgIHR5cGVvZiB2YWx1ZSA9PT0gJ3N0cmluZycgfHwgdHlwZW9mIHZhbHVlID09PSAnbnVtYmVyJyB8fCB0eXBlb2YgdmFsdWUgPT09ICdib29sZWFuJykge1xuICAgIHJldHVybiB2YWx1ZTtcbiAgfVxuICByZXR1cm4gcmVqZWN0KHZhbHVlKTtcbn1cblxuZnVuY3Rpb24gaXNWYXJpYWJsZURlY2xhcmF0aW9uRGVjbGFyZWQobm9kZTogdHMuVmFyaWFibGVEZWNsYXJhdGlvbik6IGJvb2xlYW4ge1xuICBpZiAobm9kZS5wYXJlbnQgPT09IHVuZGVmaW5lZCB8fCAhdHMuaXNWYXJpYWJsZURlY2xhcmF0aW9uTGlzdChub2RlLnBhcmVudCkpIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cbiAgY29uc3QgZGVjbExpc3QgPSBub2RlLnBhcmVudDtcbiAgaWYgKGRlY2xMaXN0LnBhcmVudCA9PT0gdW5kZWZpbmVkIHx8ICF0cy5pc1ZhcmlhYmxlU3RhdGVtZW50KGRlY2xMaXN0LnBhcmVudCkpIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cbiAgY29uc3QgdmFyU3RtdCA9IGRlY2xMaXN0LnBhcmVudDtcbiAgcmV0dXJuIHZhclN0bXQubW9kaWZpZXJzICE9PSB1bmRlZmluZWQgJiZcbiAgICAgIHZhclN0bXQubW9kaWZpZXJzLnNvbWUobW9kID0+IG1vZC5raW5kID09PSB0cy5TeW50YXhLaW5kLkRlY2xhcmVLZXl3b3JkKTtcbn1cblxuY29uc3QgRU1QVFkgPSB7fTtcblxuZnVuY3Rpb24gam9pbk1vZHVsZUNvbnRleHQoZXhpc3Rpbmc6IENvbnRleHQsIG5vZGU6IHRzLk5vZGUsIGRlY2w6IERlY2xhcmF0aW9uKToge1xuICBhYnNvbHV0ZU1vZHVsZU5hbWU/OiBzdHJpbmcsXG4gIHJlc29sdXRpb25Db250ZXh0Pzogc3RyaW5nLFxufSB7XG4gIGlmIChkZWNsLnZpYU1vZHVsZSAhPT0gbnVsbCAmJiBkZWNsLnZpYU1vZHVsZSAhPT0gZXhpc3RpbmcuYWJzb2x1dGVNb2R1bGVOYW1lKSB7XG4gICAgcmV0dXJuIHtcbiAgICAgIGFic29sdXRlTW9kdWxlTmFtZTogZGVjbC52aWFNb2R1bGUsXG4gICAgICByZXNvbHV0aW9uQ29udGV4dDogbm9kZS5nZXRTb3VyY2VGaWxlKCkuZmlsZU5hbWUsXG4gICAgfTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gRU1QVFk7XG4gIH1cbn1cblxuZnVuY3Rpb24gb3duaW5nTW9kdWxlKGNvbnRleHQ6IENvbnRleHQsIG92ZXJyaWRlOiBPd25pbmdNb2R1bGV8bnVsbCA9IG51bGwpOiBPd25pbmdNb2R1bGV8bnVsbCB7XG4gIGxldCBzcGVjaWZpZXIgPSBjb250ZXh0LmFic29sdXRlTW9kdWxlTmFtZTtcbiAgaWYgKG92ZXJyaWRlICE9PSBudWxsKSB7XG4gICAgc3BlY2lmaWVyID0gb3ZlcnJpZGUuc3BlY2lmaWVyO1xuICB9XG4gIGlmIChzcGVjaWZpZXIgIT09IG51bGwpIHtcbiAgICByZXR1cm4ge1xuICAgICAgc3BlY2lmaWVyLFxuICAgICAgcmVzb2x1dGlvbkNvbnRleHQ6IGNvbnRleHQucmVzb2x1dGlvbkNvbnRleHQsXG4gICAgfTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxufVxuXG4vKipcbiAqIEhlbHBlciB0eXBlIGd1YXJkIHRvIHdvcmthcm91bmQgYSBuYXJyb3dpbmcgbGltaXRhdGlvbiBpbiBnMywgd2hlcmUgdGVzdGluZyBmb3JcbiAqIGBkZWNsLm5vZGUgIT09IG51bGxgIHdvdWxkIG5vdCBuYXJyb3cgYGRlY2xgIHRvIGJlIG9mIHR5cGUgYENvbmNyZXRlRGVjbGFyYXRpb25gLlxuICovXG5mdW5jdGlvbiBpc0NvbmNyZXRlRGVjbGFyYXRpb24oZGVjbDogRGVjbGFyYXRpb24pOiBkZWNsIGlzIENvbmNyZXRlRGVjbGFyYXRpb24ge1xuICByZXR1cm4gZGVjbC5ub2RlICE9PSBudWxsO1xufVxuIl19