/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import * as cdAst from '../expression_parser/ast';
import { Identifiers } from '../identifiers';
import * as o from '../output/output_ast';
import { ParseSourceSpan } from '../parse_util';
export class EventHandlerVars {
}
EventHandlerVars.event = o.variable('$event');
export class ConvertActionBindingResult {
    constructor(
    /**
     * Render2 compatible statements,
     */
    stmts, 
    /**
     * Variable name used with render2 compatible statements.
     */
    allowDefault) {
        this.stmts = stmts;
        this.allowDefault = allowDefault;
        /**
         * This is bit of a hack. It converts statements which render2 expects to statements which are
         * expected by render3.
         *
         * Example: `<div click="doSomething($event)">` will generate:
         *
         * Render3:
         * ```
         * const pd_b:any = ((<any>ctx.doSomething($event)) !== false);
         * return pd_b;
         * ```
         *
         * but render2 expects:
         * ```
         * return ctx.doSomething($event);
         * ```
         */
        // TODO(misko): remove this hack once we no longer support ViewEngine.
        this.render3Stmts = stmts.map((statement) => {
            if (statement instanceof o.DeclareVarStmt && statement.name == allowDefault.name &&
                statement.value instanceof o.BinaryOperatorExpr) {
                const lhs = statement.value.lhs;
                return new o.ReturnStatement(lhs.value);
            }
            return statement;
        });
    }
}
/**
 * Converts the given expression AST into an executable output AST, assuming the expression is
 * used in an action binding (e.g. an event handler).
 */
export function convertActionBinding(localResolver, implicitReceiver, action, bindingId, interpolationFunction, baseSourceSpan) {
    if (!localResolver) {
        localResolver = new DefaultLocalResolver();
    }
    const actionWithoutBuiltins = convertPropertyBindingBuiltins({
        createLiteralArrayConverter: (argCount) => {
            // Note: no caching for literal arrays in actions.
            return (args) => o.literalArr(args);
        },
        createLiteralMapConverter: (keys) => {
            // Note: no caching for literal maps in actions.
            return (values) => {
                const entries = keys.map((k, i) => ({
                    key: k.key,
                    value: values[i],
                    quoted: k.quoted,
                }));
                return o.literalMap(entries);
            };
        },
        createPipeConverter: (name) => {
            throw new Error(`Illegal State: Actions are not allowed to contain pipes. Pipe: ${name}`);
        }
    }, action);
    const visitor = new _AstToIrVisitor(localResolver, implicitReceiver, bindingId, interpolationFunction, baseSourceSpan);
    const actionStmts = [];
    flattenStatements(actionWithoutBuiltins.visit(visitor, _Mode.Statement), actionStmts);
    prependTemporaryDecls(visitor.temporaryCount, bindingId, actionStmts);
    if (visitor.usesImplicitReceiver) {
        localResolver.notifyImplicitReceiverUse();
    }
    const lastIndex = actionStmts.length - 1;
    let preventDefaultVar = null;
    if (lastIndex >= 0) {
        const lastStatement = actionStmts[lastIndex];
        const returnExpr = convertStmtIntoExpression(lastStatement);
        if (returnExpr) {
            // Note: We need to cast the result of the method call to dynamic,
            // as it might be a void method!
            preventDefaultVar = createPreventDefaultVar(bindingId);
            actionStmts[lastIndex] =
                preventDefaultVar.set(returnExpr.cast(o.DYNAMIC_TYPE).notIdentical(o.literal(false)))
                    .toDeclStmt(null, [o.StmtModifier.Final]);
        }
    }
    return new ConvertActionBindingResult(actionStmts, preventDefaultVar);
}
export function convertPropertyBindingBuiltins(converterFactory, ast) {
    return convertBuiltins(converterFactory, ast);
}
export class ConvertPropertyBindingResult {
    constructor(stmts, currValExpr) {
        this.stmts = stmts;
        this.currValExpr = currValExpr;
    }
}
export var BindingForm;
(function (BindingForm) {
    // The general form of binding expression, supports all expressions.
    BindingForm[BindingForm["General"] = 0] = "General";
    // Try to generate a simple binding (no temporaries or statements)
    // otherwise generate a general binding
    BindingForm[BindingForm["TrySimple"] = 1] = "TrySimple";
})(BindingForm || (BindingForm = {}));
/**
 * Converts the given expression AST into an executable output AST, assuming the expression
 * is used in property binding. The expression has to be preprocessed via
 * `convertPropertyBindingBuiltins`.
 */
export function convertPropertyBinding(localResolver, implicitReceiver, expressionWithoutBuiltins, bindingId, form, interpolationFunction) {
    if (!localResolver) {
        localResolver = new DefaultLocalResolver();
    }
    const currValExpr = createCurrValueExpr(bindingId);
    const visitor = new _AstToIrVisitor(localResolver, implicitReceiver, bindingId, interpolationFunction);
    const outputExpr = expressionWithoutBuiltins.visit(visitor, _Mode.Expression);
    const stmts = getStatementsFromVisitor(visitor, bindingId);
    if (visitor.usesImplicitReceiver) {
        localResolver.notifyImplicitReceiverUse();
    }
    if (visitor.temporaryCount === 0 && form == BindingForm.TrySimple) {
        return new ConvertPropertyBindingResult([], outputExpr);
    }
    stmts.push(currValExpr.set(outputExpr).toDeclStmt(o.DYNAMIC_TYPE, [o.StmtModifier.Final]));
    return new ConvertPropertyBindingResult(stmts, currValExpr);
}
/**
 * Given some expression, such as a binding or interpolation expression, and a context expression to
 * look values up on, visit each facet of the given expression resolving values from the context
 * expression such that a list of arguments can be derived from the found values that can be used as
 * arguments to an external update instruction.
 *
 * @param localResolver The resolver to use to look up expressions by name appropriately
 * @param contextVariableExpression The expression representing the context variable used to create
 * the final argument expressions
 * @param expressionWithArgumentsToExtract The expression to visit to figure out what values need to
 * be resolved and what arguments list to build.
 * @param bindingId A name prefix used to create temporary variable names if they're needed for the
 * arguments generated
 * @returns An array of expressions that can be passed as arguments to instruction expressions like
 * `o.importExpr(R3.propertyInterpolate).callFn(result)`
 */
export function convertUpdateArguments(localResolver, contextVariableExpression, expressionWithArgumentsToExtract, bindingId) {
    const visitor = new _AstToIrVisitor(localResolver, contextVariableExpression, bindingId, undefined);
    const outputExpr = expressionWithArgumentsToExtract.visit(visitor, _Mode.Expression);
    if (visitor.usesImplicitReceiver) {
        localResolver.notifyImplicitReceiverUse();
    }
    const stmts = getStatementsFromVisitor(visitor, bindingId);
    // Removing the first argument, because it was a length for ViewEngine, not Ivy.
    let args = outputExpr.args.slice(1);
    if (expressionWithArgumentsToExtract instanceof cdAst.Interpolation) {
        // If we're dealing with an interpolation of 1 value with an empty prefix and suffix, reduce the
        // args returned to just the value, because we're going to pass it to a special instruction.
        const strings = expressionWithArgumentsToExtract.strings;
        if (args.length === 3 && strings[0] === '' && strings[1] === '') {
            // Single argument interpolate instructions.
            args = [args[1]];
        }
        else if (args.length >= 19) {
            // 19 or more arguments must be passed to the `interpolateV`-style instructions, which accept
            // an array of arguments
            args = [o.literalArr(args)];
        }
    }
    return { stmts, args };
}
function getStatementsFromVisitor(visitor, bindingId) {
    const stmts = [];
    for (let i = 0; i < visitor.temporaryCount; i++) {
        stmts.push(temporaryDeclaration(bindingId, i));
    }
    return stmts;
}
function convertBuiltins(converterFactory, ast) {
    const visitor = new _BuiltinAstConverter(converterFactory);
    return ast.visit(visitor);
}
function temporaryName(bindingId, temporaryNumber) {
    return `tmp_${bindingId}_${temporaryNumber}`;
}
export function temporaryDeclaration(bindingId, temporaryNumber) {
    return new o.DeclareVarStmt(temporaryName(bindingId, temporaryNumber), o.NULL_EXPR);
}
function prependTemporaryDecls(temporaryCount, bindingId, statements) {
    for (let i = temporaryCount - 1; i >= 0; i--) {
        statements.unshift(temporaryDeclaration(bindingId, i));
    }
}
var _Mode;
(function (_Mode) {
    _Mode[_Mode["Statement"] = 0] = "Statement";
    _Mode[_Mode["Expression"] = 1] = "Expression";
})(_Mode || (_Mode = {}));
function ensureStatementMode(mode, ast) {
    if (mode !== _Mode.Statement) {
        throw new Error(`Expected a statement, but saw ${ast}`);
    }
}
function ensureExpressionMode(mode, ast) {
    if (mode !== _Mode.Expression) {
        throw new Error(`Expected an expression, but saw ${ast}`);
    }
}
function convertToStatementIfNeeded(mode, expr) {
    if (mode === _Mode.Statement) {
        return expr.toStmt();
    }
    else {
        return expr;
    }
}
class _BuiltinAstConverter extends cdAst.AstTransformer {
    constructor(_converterFactory) {
        super();
        this._converterFactory = _converterFactory;
    }
    visitPipe(ast, context) {
        const args = [ast.exp, ...ast.args].map(ast => ast.visit(this, context));
        return new BuiltinFunctionCall(ast.span, ast.sourceSpan, args, this._converterFactory.createPipeConverter(ast.name, args.length));
    }
    visitLiteralArray(ast, context) {
        const args = ast.expressions.map(ast => ast.visit(this, context));
        return new BuiltinFunctionCall(ast.span, ast.sourceSpan, args, this._converterFactory.createLiteralArrayConverter(ast.expressions.length));
    }
    visitLiteralMap(ast, context) {
        const args = ast.values.map(ast => ast.visit(this, context));
        return new BuiltinFunctionCall(ast.span, ast.sourceSpan, args, this._converterFactory.createLiteralMapConverter(ast.keys));
    }
}
class _AstToIrVisitor {
    constructor(_localResolver, _implicitReceiver, bindingId, interpolationFunction, baseSourceSpan) {
        this._localResolver = _localResolver;
        this._implicitReceiver = _implicitReceiver;
        this.bindingId = bindingId;
        this.interpolationFunction = interpolationFunction;
        this.baseSourceSpan = baseSourceSpan;
        this._nodeMap = new Map();
        this._resultMap = new Map();
        this._currentTemporary = 0;
        this.temporaryCount = 0;
        this.usesImplicitReceiver = false;
    }
    visitBinary(ast, mode) {
        let op;
        switch (ast.operation) {
            case '+':
                op = o.BinaryOperator.Plus;
                break;
            case '-':
                op = o.BinaryOperator.Minus;
                break;
            case '*':
                op = o.BinaryOperator.Multiply;
                break;
            case '/':
                op = o.BinaryOperator.Divide;
                break;
            case '%':
                op = o.BinaryOperator.Modulo;
                break;
            case '&&':
                op = o.BinaryOperator.And;
                break;
            case '||':
                op = o.BinaryOperator.Or;
                break;
            case '==':
                op = o.BinaryOperator.Equals;
                break;
            case '!=':
                op = o.BinaryOperator.NotEquals;
                break;
            case '===':
                op = o.BinaryOperator.Identical;
                break;
            case '!==':
                op = o.BinaryOperator.NotIdentical;
                break;
            case '<':
                op = o.BinaryOperator.Lower;
                break;
            case '>':
                op = o.BinaryOperator.Bigger;
                break;
            case '<=':
                op = o.BinaryOperator.LowerEquals;
                break;
            case '>=':
                op = o.BinaryOperator.BiggerEquals;
                break;
            default:
                throw new Error(`Unsupported operation ${ast.operation}`);
        }
        return convertToStatementIfNeeded(mode, new o.BinaryOperatorExpr(op, this._visit(ast.left, _Mode.Expression), this._visit(ast.right, _Mode.Expression), undefined, this.convertSourceSpan(ast.span)));
    }
    visitChain(ast, mode) {
        ensureStatementMode(mode, ast);
        return this.visitAll(ast.expressions, mode);
    }
    visitConditional(ast, mode) {
        const value = this._visit(ast.condition, _Mode.Expression);
        return convertToStatementIfNeeded(mode, value.conditional(this._visit(ast.trueExp, _Mode.Expression), this._visit(ast.falseExp, _Mode.Expression), this.convertSourceSpan(ast.span)));
    }
    visitPipe(ast, mode) {
        throw new Error(`Illegal state: Pipes should have been converted into functions. Pipe: ${ast.name}`);
    }
    visitFunctionCall(ast, mode) {
        const convertedArgs = this.visitAll(ast.args, _Mode.Expression);
        let fnResult;
        if (ast instanceof BuiltinFunctionCall) {
            fnResult = ast.converter(convertedArgs);
        }
        else {
            fnResult = this._visit(ast.target, _Mode.Expression)
                .callFn(convertedArgs, this.convertSourceSpan(ast.span));
        }
        return convertToStatementIfNeeded(mode, fnResult);
    }
    visitImplicitReceiver(ast, mode) {
        ensureExpressionMode(mode, ast);
        this.usesImplicitReceiver = true;
        return this._implicitReceiver;
    }
    visitInterpolation(ast, mode) {
        ensureExpressionMode(mode, ast);
        const args = [o.literal(ast.expressions.length)];
        for (let i = 0; i < ast.strings.length - 1; i++) {
            args.push(o.literal(ast.strings[i]));
            args.push(this._visit(ast.expressions[i], _Mode.Expression));
        }
        args.push(o.literal(ast.strings[ast.strings.length - 1]));
        if (this.interpolationFunction) {
            return this.interpolationFunction(args);
        }
        return ast.expressions.length <= 9 ?
            o.importExpr(Identifiers.inlineInterpolate).callFn(args) :
            o.importExpr(Identifiers.interpolate).callFn([
                args[0], o.literalArr(args.slice(1), undefined, this.convertSourceSpan(ast.span))
            ]);
    }
    visitKeyedRead(ast, mode) {
        const leftMostSafe = this.leftMostSafeNode(ast);
        if (leftMostSafe) {
            return this.convertSafeAccess(ast, leftMostSafe, mode);
        }
        else {
            return convertToStatementIfNeeded(mode, this._visit(ast.obj, _Mode.Expression).key(this._visit(ast.key, _Mode.Expression)));
        }
    }
    visitKeyedWrite(ast, mode) {
        const obj = this._visit(ast.obj, _Mode.Expression);
        const key = this._visit(ast.key, _Mode.Expression);
        const value = this._visit(ast.value, _Mode.Expression);
        return convertToStatementIfNeeded(mode, obj.key(key).set(value));
    }
    visitLiteralArray(ast, mode) {
        throw new Error(`Illegal State: literal arrays should have been converted into functions`);
    }
    visitLiteralMap(ast, mode) {
        throw new Error(`Illegal State: literal maps should have been converted into functions`);
    }
    visitLiteralPrimitive(ast, mode) {
        // For literal values of null, undefined, true, or false allow type interference
        // to infer the type.
        const type = ast.value === null || ast.value === undefined || ast.value === true || ast.value === true ?
            o.INFERRED_TYPE :
            undefined;
        return convertToStatementIfNeeded(mode, o.literal(ast.value, type, this.convertSourceSpan(ast.span)));
    }
    _getLocal(name) { return this._localResolver.getLocal(name); }
    visitMethodCall(ast, mode) {
        if (ast.receiver instanceof cdAst.ImplicitReceiver && ast.name == '$any') {
            const args = this.visitAll(ast.args, _Mode.Expression);
            if (args.length != 1) {
                throw new Error(`Invalid call to $any, expected 1 argument but received ${args.length || 'none'}`);
            }
            return args[0].cast(o.DYNAMIC_TYPE, this.convertSourceSpan(ast.span));
        }
        const leftMostSafe = this.leftMostSafeNode(ast);
        if (leftMostSafe) {
            return this.convertSafeAccess(ast, leftMostSafe, mode);
        }
        else {
            const args = this.visitAll(ast.args, _Mode.Expression);
            const prevUsesImplicitReceiver = this.usesImplicitReceiver;
            let result = null;
            const receiver = this._visit(ast.receiver, _Mode.Expression);
            if (receiver === this._implicitReceiver) {
                const varExpr = this._getLocal(ast.name);
                if (varExpr) {
                    // Restore the previous "usesImplicitReceiver" state since the implicit
                    // receiver has been replaced with a resolved local expression.
                    this.usesImplicitReceiver = prevUsesImplicitReceiver;
                    result = varExpr.callFn(args);
                }
            }
            if (result == null) {
                result = receiver.callMethod(ast.name, args, this.convertSourceSpan(ast.span));
            }
            return convertToStatementIfNeeded(mode, result);
        }
    }
    visitPrefixNot(ast, mode) {
        return convertToStatementIfNeeded(mode, o.not(this._visit(ast.expression, _Mode.Expression)));
    }
    visitNonNullAssert(ast, mode) {
        return convertToStatementIfNeeded(mode, o.assertNotNull(this._visit(ast.expression, _Mode.Expression)));
    }
    visitPropertyRead(ast, mode) {
        const leftMostSafe = this.leftMostSafeNode(ast);
        if (leftMostSafe) {
            return this.convertSafeAccess(ast, leftMostSafe, mode);
        }
        else {
            let result = null;
            const prevUsesImplicitReceiver = this.usesImplicitReceiver;
            const receiver = this._visit(ast.receiver, _Mode.Expression);
            if (receiver === this._implicitReceiver) {
                result = this._getLocal(ast.name);
                if (result) {
                    // Restore the previous "usesImplicitReceiver" state since the implicit
                    // receiver has been replaced with a resolved local expression.
                    this.usesImplicitReceiver = prevUsesImplicitReceiver;
                }
            }
            if (result == null) {
                result = receiver.prop(ast.name);
            }
            return convertToStatementIfNeeded(mode, result);
        }
    }
    visitPropertyWrite(ast, mode) {
        const receiver = this._visit(ast.receiver, _Mode.Expression);
        const prevUsesImplicitReceiver = this.usesImplicitReceiver;
        let varExpr = null;
        if (receiver === this._implicitReceiver) {
            const localExpr = this._getLocal(ast.name);
            if (localExpr) {
                if (localExpr instanceof o.ReadPropExpr) {
                    // If the local variable is a property read expression, it's a reference
                    // to a 'context.property' value and will be used as the target of the
                    // write expression.
                    varExpr = localExpr;
                    // Restore the previous "usesImplicitReceiver" state since the implicit
                    // receiver has been replaced with a resolved local expression.
                    this.usesImplicitReceiver = prevUsesImplicitReceiver;
                }
                else {
                    // Otherwise it's an error.
                    const receiver = ast.name;
                    const value = (ast.value instanceof cdAst.PropertyRead) ? ast.value.name : undefined;
                    throw new Error(`Cannot assign value "${value}" to template variable "${receiver}". Template variables are read-only.`);
                }
            }
        }
        // If no local expression could be produced, use the original receiver's
        // property as the target.
        if (varExpr === null) {
            varExpr = receiver.prop(ast.name);
        }
        return convertToStatementIfNeeded(mode, varExpr.set(this._visit(ast.value, _Mode.Expression)));
    }
    visitSafePropertyRead(ast, mode) {
        return this.convertSafeAccess(ast, this.leftMostSafeNode(ast), mode);
    }
    visitSafeMethodCall(ast, mode) {
        return this.convertSafeAccess(ast, this.leftMostSafeNode(ast), mode);
    }
    visitAll(asts, mode) { return asts.map(ast => this._visit(ast, mode)); }
    visitQuote(ast, mode) {
        throw new Error(`Quotes are not supported for evaluation!
        Statement: ${ast.uninterpretedExpression} located at ${ast.location}`);
    }
    _visit(ast, mode) {
        const result = this._resultMap.get(ast);
        if (result)
            return result;
        return (this._nodeMap.get(ast) || ast).visit(this, mode);
    }
    convertSafeAccess(ast, leftMostSafe, mode) {
        // If the expression contains a safe access node on the left it needs to be converted to
        // an expression that guards the access to the member by checking the receiver for blank. As
        // execution proceeds from left to right, the left most part of the expression must be guarded
        // first but, because member access is left associative, the right side of the expression is at
        // the top of the AST. The desired result requires lifting a copy of the left part of the
        // expression up to test it for blank before generating the unguarded version.
        // Consider, for example the following expression: a?.b.c?.d.e
        // This results in the ast:
        //         .
        //        / \
        //       ?.   e
        //      /  \
        //     .    d
        //    / \
        //   ?.  c
        //  /  \
        // a    b
        // The following tree should be generated:
        //
        //        /---- ? ----\
        //       /      |      \
        //     a   /--- ? ---\  null
        //        /     |     \
        //       .      .     null
        //      / \    / \
        //     .  c   .   e
        //    / \    / \
        //   a   b  .   d
        //         / \
        //        .   c
        //       / \
        //      a   b
        //
        // Notice that the first guard condition is the left hand of the left most safe access node
        // which comes in as leftMostSafe to this routine.
        let guardedExpression = this._visit(leftMostSafe.receiver, _Mode.Expression);
        let temporary = undefined;
        if (this.needsTemporary(leftMostSafe.receiver)) {
            // If the expression has method calls or pipes then we need to save the result into a
            // temporary variable to avoid calling stateful or impure code more than once.
            temporary = this.allocateTemporary();
            // Preserve the result in the temporary variable
            guardedExpression = temporary.set(guardedExpression);
            // Ensure all further references to the guarded expression refer to the temporary instead.
            this._resultMap.set(leftMostSafe.receiver, temporary);
        }
        const condition = guardedExpression.isBlank();
        // Convert the ast to an unguarded access to the receiver's member. The map will substitute
        // leftMostNode with its unguarded version in the call to `this.visit()`.
        if (leftMostSafe instanceof cdAst.SafeMethodCall) {
            this._nodeMap.set(leftMostSafe, new cdAst.MethodCall(leftMostSafe.span, leftMostSafe.sourceSpan, leftMostSafe.receiver, leftMostSafe.name, leftMostSafe.args));
        }
        else {
            this._nodeMap.set(leftMostSafe, new cdAst.PropertyRead(leftMostSafe.span, leftMostSafe.sourceSpan, leftMostSafe.receiver, leftMostSafe.name));
        }
        // Recursively convert the node now without the guarded member access.
        const access = this._visit(ast, _Mode.Expression);
        // Remove the mapping. This is not strictly required as the converter only traverses each node
        // once but is safer if the conversion is changed to traverse the nodes more than once.
        this._nodeMap.delete(leftMostSafe);
        // If we allocated a temporary, release it.
        if (temporary) {
            this.releaseTemporary(temporary);
        }
        // Produce the conditional
        return convertToStatementIfNeeded(mode, condition.conditional(o.literal(null), access));
    }
    // Given an expression of the form a?.b.c?.d.e then the left most safe node is
    // the (a?.b). The . and ?. are left associative thus can be rewritten as:
    // ((((a?.c).b).c)?.d).e. This returns the most deeply nested safe read or
    // safe method call as this needs to be transformed initially to:
    //   a == null ? null : a.c.b.c?.d.e
    // then to:
    //   a == null ? null : a.b.c == null ? null : a.b.c.d.e
    leftMostSafeNode(ast) {
        const visit = (visitor, ast) => {
            return (this._nodeMap.get(ast) || ast).visit(visitor);
        };
        return ast.visit({
            visitBinary(ast) { return null; },
            visitChain(ast) { return null; },
            visitConditional(ast) { return null; },
            visitFunctionCall(ast) { return null; },
            visitImplicitReceiver(ast) { return null; },
            visitInterpolation(ast) { return null; },
            visitKeyedRead(ast) { return visit(this, ast.obj); },
            visitKeyedWrite(ast) { return null; },
            visitLiteralArray(ast) { return null; },
            visitLiteralMap(ast) { return null; },
            visitLiteralPrimitive(ast) { return null; },
            visitMethodCall(ast) { return visit(this, ast.receiver); },
            visitPipe(ast) { return null; },
            visitPrefixNot(ast) { return null; },
            visitNonNullAssert(ast) { return null; },
            visitPropertyRead(ast) { return visit(this, ast.receiver); },
            visitPropertyWrite(ast) { return null; },
            visitQuote(ast) { return null; },
            visitSafeMethodCall(ast) { return visit(this, ast.receiver) || ast; },
            visitSafePropertyRead(ast) {
                return visit(this, ast.receiver) || ast;
            }
        });
    }
    // Returns true of the AST includes a method or a pipe indicating that, if the
    // expression is used as the target of a safe property or method access then
    // the expression should be stored into a temporary variable.
    needsTemporary(ast) {
        const visit = (visitor, ast) => {
            return ast && (this._nodeMap.get(ast) || ast).visit(visitor);
        };
        const visitSome = (visitor, ast) => {
            return ast.some(ast => visit(visitor, ast));
        };
        return ast.visit({
            visitBinary(ast) { return visit(this, ast.left) || visit(this, ast.right); },
            visitChain(ast) { return false; },
            visitConditional(ast) {
                return visit(this, ast.condition) || visit(this, ast.trueExp) ||
                    visit(this, ast.falseExp);
            },
            visitFunctionCall(ast) { return true; },
            visitImplicitReceiver(ast) { return false; },
            visitInterpolation(ast) { return visitSome(this, ast.expressions); },
            visitKeyedRead(ast) { return false; },
            visitKeyedWrite(ast) { return false; },
            visitLiteralArray(ast) { return true; },
            visitLiteralMap(ast) { return true; },
            visitLiteralPrimitive(ast) { return false; },
            visitMethodCall(ast) { return true; },
            visitPipe(ast) { return true; },
            visitPrefixNot(ast) { return visit(this, ast.expression); },
            visitNonNullAssert(ast) { return visit(this, ast.expression); },
            visitPropertyRead(ast) { return false; },
            visitPropertyWrite(ast) { return false; },
            visitQuote(ast) { return false; },
            visitSafeMethodCall(ast) { return true; },
            visitSafePropertyRead(ast) { return false; }
        });
    }
    allocateTemporary() {
        const tempNumber = this._currentTemporary++;
        this.temporaryCount = Math.max(this._currentTemporary, this.temporaryCount);
        return new o.ReadVarExpr(temporaryName(this.bindingId, tempNumber));
    }
    releaseTemporary(temporary) {
        this._currentTemporary--;
        if (temporary.name != temporaryName(this.bindingId, this._currentTemporary)) {
            throw new Error(`Temporary ${temporary.name} released out of order`);
        }
    }
    /**
     * Creates an absolute `ParseSourceSpan` from the relative `ParseSpan`.
     *
     * `ParseSpan` objects are relative to the start of the expression.
     * This method converts these to full `ParseSourceSpan` objects that
     * show where the span is within the overall source file.
     *
     * @param span the relative span to convert.
     * @returns a `ParseSourceSpan` for the given span or null if no
     * `baseSourceSpan` was provided to this class.
     */
    convertSourceSpan(span) {
        if (this.baseSourceSpan) {
            const start = this.baseSourceSpan.start.moveBy(span.start);
            const end = this.baseSourceSpan.start.moveBy(span.end);
            return new ParseSourceSpan(start, end);
        }
        else {
            return null;
        }
    }
}
function flattenStatements(arg, output) {
    if (Array.isArray(arg)) {
        arg.forEach((entry) => flattenStatements(entry, output));
    }
    else {
        output.push(arg);
    }
}
class DefaultLocalResolver {
    notifyImplicitReceiverUse() { }
    getLocal(name) {
        if (name === EventHandlerVars.event.name) {
            return EventHandlerVars.event;
        }
        return null;
    }
}
function createCurrValueExpr(bindingId) {
    return o.variable(`currVal_${bindingId}`); // fix syntax highlighting: `
}
function createPreventDefaultVar(bindingId) {
    return o.variable(`pd_${bindingId}`);
}
function convertStmtIntoExpression(stmt) {
    if (stmt instanceof o.ExpressionStatement) {
        return stmt.expr;
    }
    else if (stmt instanceof o.ReturnStatement) {
        return stmt.value;
    }
    return null;
}
export class BuiltinFunctionCall extends cdAst.FunctionCall {
    constructor(span, sourceSpan, args, converter) {
        super(span, sourceSpan, null, args);
        this.args = args;
        this.converter = converter;
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXhwcmVzc2lvbl9jb252ZXJ0ZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci9zcmMvY29tcGlsZXJfdXRpbC9leHByZXNzaW9uX2NvbnZlcnRlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEtBQUssS0FBSyxNQUFNLDBCQUEwQixDQUFDO0FBQ2xELE9BQU8sRUFBQyxXQUFXLEVBQUMsTUFBTSxnQkFBZ0IsQ0FBQztBQUMzQyxPQUFPLEtBQUssQ0FBQyxNQUFNLHNCQUFzQixDQUFDO0FBQzFDLE9BQU8sRUFBQyxlQUFlLEVBQUMsTUFBTSxlQUFlLENBQUM7QUFFOUMsTUFBTSxPQUFPLGdCQUFnQjs7QUFBVSxzQkFBSyxHQUFHLENBQUMsQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLENBQUM7QUFPcEUsTUFBTSxPQUFPLDBCQUEwQjtJQUtyQztJQUNJOztPQUVHO0lBQ0ksS0FBb0I7SUFDM0I7O09BRUc7SUFDSSxZQUEyQjtRQUozQixVQUFLLEdBQUwsS0FBSyxDQUFlO1FBSXBCLGlCQUFZLEdBQVosWUFBWSxDQUFlO1FBQ3BDOzs7Ozs7Ozs7Ozs7Ozs7O1dBZ0JHO1FBQ0gsc0VBQXNFO1FBQ3RFLElBQUksQ0FBQyxZQUFZLEdBQUcsS0FBSyxDQUFDLEdBQUcsQ0FBQyxDQUFDLFNBQXNCLEVBQUUsRUFBRTtZQUN2RCxJQUFJLFNBQVMsWUFBWSxDQUFDLENBQUMsY0FBYyxJQUFJLFNBQVMsQ0FBQyxJQUFJLElBQUksWUFBWSxDQUFDLElBQUk7Z0JBQzVFLFNBQVMsQ0FBQyxLQUFLLFlBQVksQ0FBQyxDQUFDLGtCQUFrQixFQUFFO2dCQUNuRCxNQUFNLEdBQUcsR0FBRyxTQUFTLENBQUMsS0FBSyxDQUFDLEdBQWlCLENBQUM7Z0JBQzlDLE9BQU8sSUFBSSxDQUFDLENBQUMsZUFBZSxDQUFDLEdBQUcsQ0FBQyxLQUFLLENBQUMsQ0FB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QUZrQyxTQUFJLEdBQUosSUFBSSxDQUFhO1FBQzlFLGNBQVMsR0FBVCxTQUFTLENBQWtCO0lBRXRDLENBQUM7Q0FDRiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgY2RBc3QgZnJvbSAnLi4vZXhwcmVzc2lvbl9wYXJzZXIvYXN0JztcbmltcG9ydCB7SWRlbnRpZmllcnN9IGZyb20gJy4uL2lkZW50aWZpZXJzJztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi4vb3V0cHV0L291dHB1dF9hc3QnO1xuaW1wb3J0IHtQYXJzZVNvdXJjZVNwYW59IGZyb20gJy4uL3BhcnNlX3V0aWwnO1xuXG5leHBvcnQgY2xhc3MgRXZlbnRIYW5kbGVyVmFycyB7IHN0YXRpYyBldmVudCA9IG8udmFyaWFibGUoJyRldmVudCcpOyB9XG5cbmV4cG9ydCBpbnRlcmZhY2UgTG9jYWxSZXNvbHZlciB7XG4gIGdldExvY2FsKG5hbWU6IHN0cmluZyk6IG8uRXhwcmVzc2lvbnxudWxsO1xuICBub3RpZnlJbXBsaWNpdFJlY2VpdmVyVXNlKCk6IHZvaWQ7XG59XG5cbmV4cG9ydCBjbGFzcyBDb252ZXJ0QWN0aW9uQmluZGluZ1Jlc3VsdCB7XG4gIC8qKlxuICAgKiBTdG9yZSBzdGF0ZW1lbnRzIHdoaWNoIGFyZSByZW5kZXIzIGNvbXBhdGlibGUuXG4gICAqL1xuICByZW5kZXIzU3RtdHM6IG8uU3RhdGVtZW50W107XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgLyoqXG4gICAgICAgKiBSZW5kZXIyIGNvbXBhdGlibGUgc3RhdGVtZW50cyxcbiAgICAgICAqL1xuICAgICAgcHVibGljIHN0bXRzOiBvLlN0YXRlbWVudFtdLFxuICAgICAgLyoqXG4gICAgICAgKiBWYXJpYWJsZSBuYW1lIHVzZWQgd2l0aCByZW5kZXIyIGNvbXBhdGlibGUgc3RhdGVtZW50cy5cbiAgICAgICAqL1xuICAgICAgcHVibGljIGFsbG93RGVmYXVsdDogby5SZWFkVmFyRXhwcikge1xuICAgIC8qKlxuICAgICAqIFRoaXMgaXMgYml0IG9mIGEgaGFjay4gSXQgY29udmVydHMgc3RhdGVtZW50cyB3aGljaCByZW5kZXIyIGV4cGVjdHMgdG8gc3RhdGVtZW50cyB3aGljaCBhcmVcbiAgICAgKiBleHBlY3RlZCBieSByZW5kZXIzLlxuICAgICAqXG4gICAgICogRXhhbXBsZTogYDxkaXYgY2xpY2s9XCJkb1NvbWV0aGluZygkZXZlbnQpXCI+YCB3aWxsIGdlbmVyYXRlOlxuICAgICAqXG4gICAgICogUmVuZGVyMzpcbiAgICAgKiBgYGBcbiAgICAgKiBjb25zdCBwZF9iOmFueSA9ICgoPGFueT5jdHguZG9Tb21ldGhpbmcoJGV2ZW50KSkgIT09IGZhbHNlKTtcbiAgICAgKiByZXR1cm4gcGRfYjtcbiAgICAgKiBgYGBcbiAgICAgKlxuICAgICAqIGJ1dCByZW5kZXIyIGV4cGVjdHM6XG4gICAgICogYGBgXG4gICAgICogcmV0dXJuIGN0eC5kb1NvbWV0aGluZygkZXZlbnQpO1xuICAgICAqIGBgYFxuICAgICAqL1xuICAgIC8vIFRPRE8obWlza28pOiByZW1vdmUgdGhpcyBoYWNrIG9uY2Ugd2Ugbm8gbG9uZ2VyIHN1cHBvcnQgVmlld0VuZ2luZS5cbiAgICB0aGlzLnJlbmRlcjNTdG10cyA9IHN0bXRzLm1hcCgoc3RhdGVtZW50OiBvLlN0YXRlbWVudCkgPT4ge1xuICAgICAgaWYgKHN0YXRlbWVudCBpbnN0YW5jZW9mIG8uRGVjbGFyZVZhclN0bXQgJiYgc3RhdGVtZW50Lm5hbWUgPT0gYWxsb3dEZWZhdWx0Lm5hbWUgJiZcbiAgICAgICAgICBzdGF0ZW1lbnQudmFsdWUgaW5zdGFuY2VvZiBvLkJpbmFyeU9wZXJhdG9yRXhwcikge1xuICAgICAgICBjb25zdCBsaHMgPSBzdGF0ZW1lbnQudmFsdWUubGhzIGFzIG8uQ2FzdEV4cHI7XG4gICAgICAgIHJldHVybiBuZXcgby5SZXR1cm5TdGF0ZW1lbnQobGhzLnZhbHVlKTtcbiAgICAgIH1cbiAgICAgIHJldHVybiBzdGF0ZW1lbnQ7XG4gICAgfSk7XG4gIH1cbn1cblxuZXhwb3J0IHR5cGUgSW50ZXJwb2xhdGlvbkZ1bmN0aW9uID0gKGFyZ3M6IG8uRXhwcmVzc2lvbltdKSA9PiBvLkV4cHJlc3Npb247XG5cbi8qKlxuICogQ29udmVydHMgdGhlIGdpdmVuIGV4cHJlc3Npb24gQVNUIGludG8gYW4gZXhlY3V0YWJsZSBvdXRwdXQgQVNULCBhc3N1bWluZyB0aGUgZXhwcmVzc2lvbiBpc1xuICogdXNlZCBpbiBhbiBhY3Rpb24gYmluZGluZyAoZS5nLiBhbiBldmVudCBoYW5kbGVyKS5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGNvbnZlcnRBY3Rpb25CaW5kaW5nKFxuICAgIGxvY2FsUmVzb2x2ZXI6IExvY2FsUmVzb2x2ZXIgfCBudWxsLCBpbXBsaWNpdFJlY2VpdmVyOiBvLkV4cHJlc3Npb24sIGFjdGlvbjogY2RBc3QuQVNULFxuICAgIGJpbmRpbmdJZDogc3RyaW5nLCBpbnRlcnBvbGF0aW9uRnVuY3Rpb24/OiBJbnRlcnBvbGF0aW9uRnVuY3Rpb24sXG4gICAgYmFzZVNvdXJjZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW4pOiBDb252ZXJ0QWN0aW9uQmluZGluZ1Jlc3VsdCB7XG4gIGlmICghbG9jYWxSZXNvbHZlcikge1xuICAgIGxvY2FsUmVzb2x2ZXIgPSBuZXcgRGVmYXVsdExvY2FsUmVzb2x2ZXIoKTtcbiAgfVxuICBjb25zdCBhY3Rpb25XaXRob3V0QnVpbHRpbnMgPSBjb252ZXJ0UHJvcGVydHlCaW5kaW5nQnVpbHRpbnMoXG4gICAgICB7XG4gICAgICAgIGNyZWF0ZUxpdGVyYWxBcnJheUNvbnZlcnRlcjogKGFyZ0NvdW50OiBudW1iZXIpID0+IHtcbiAgICAgICAgICAvLyBOb3RlOiBubyBjYWNoaW5nIGZvciBsaXRlcmFsIGFycmF5cyBpbiBhY3Rpb25zLlxuICAgICAgICAgIHJldHVybiAoYXJnczogby5FeHByZXNzaW9uW10pID0+IG8ubGl0ZXJhbEFycihhcmdzKTtcbiAgICAgICAgfSxcbiAgICAgICAgY3JlYXRlTGl0ZXJhbE1hcENvbnZlcnRlcjogKGtleXM6IHtrZXk6IHN0cmluZywgcXVvdGVkOiBib29sZWFufVtdKSA9PiB7XG4gICAgICAgICAgLy8gTm90ZTogbm8gY2FjaGluZyBmb3IgbGl0ZXJhbCBtYXBzIGluIGFjdGlvbnMuXG4gICAgICAgICAgcmV0dXJuICh2YWx1ZXM6IG8uRXhwcmVzc2lvbltdKSA9PiB7XG4gICAgICAgICAgICBjb25zdCBlbnRyaWVzID0ga2V5cy5tYXAoKGssIGkpID0+ICh7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBrZXk6IGsua2V5LFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFsdWU6IHZhbHVlc1tpXSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHF1b3RlZDogay5xdW90ZWQsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfSkpO1xuICAgICAgICAgICAgcmV0dXJuIG8ubGl0ZXJhbE1hcChlbnRyaWVzKTtcbiAgICAgICAgICB9O1xuICAgICAgICB9LFxuICAgICAgICBjcmVhdGVQaXBlQ29udmVydGVyOiAobmFtZTogc3RyaW5nKSA9PiB7XG4gICAgICAgICAgdGhyb3cgbmV3IEVycm9yKGBJbGxlZ2FsIFN0YXRlOiBBY3Rpb25zIGFyZSBub3QgYWxsb3dlZCB0byBjb250YWluIHBpcGVzLiBQaXBlOiAke25hbWV9YCk7XG4gICAgICAgIH1cbiAgICAgIH0sXG4gICAgICBhY3Rpb24pO1xuXG4gIGNvbnN0IHZpc2l0b3IgPSBuZXcgX0FzdFRvSXJWaXNpdG9yKFxuICAgICAgbG9jYWxSZXNvbHZlciwgaW1wbGljaXRSZWNlaXZlciwgYmluZGluZ0lkLCBpbnRlcnBvbGF0aW9uRnVuY3Rpb24sIGJhc2VTb3VyY2VTcGFuKTtcbiAgY29uc3QgYWN0aW9uU3RtdHM6IG8uU3RhdGVtZW50W10gPSBbXTtcbiAgZmxhdHRlblN0YXRlbWVudHMoYWN0aW9uV2l0aG91dEJ1aWx0aW5zLnZpc2l0KHZpc2l0b3IsIF9Nb2RlLlN0YXRlbWVudCksIGFjdGlvblN0bXRzKTtcbiAgcHJlcGVuZFRlbXBvcmFyeURlY2xzKHZpc2l0b3IudGVtcG9yYXJ5Q291bnQsIGJpbmRpbmdJZCwgYWN0aW9uU3RtdHMpO1xuXG4gIGlmICh2aXNpdG9yLnVzZXNJbXBsaWNpdFJlY2VpdmVyKSB7XG4gICAgbG9jYWxSZXNvbHZlci5ub3RpZnlJbXBsaWNpdFJlY2VpdmVyVXNlKCk7XG4gIH1cblxuICBjb25zdCBsYXN0SW5kZXggPSBhY3Rpb25TdG10cy5sZW5ndGggLSAxO1xuICBsZXQgcHJldmVudERlZmF1bHRWYXI6IG8uUmVhZFZhckV4cHIgPSBudWxsICE7XG4gIGlmIChsYXN0SW5kZXggPj0gMCkge1xuICAgIGNvbnN0IGxhc3RTdGF0ZW1lbnQgPSBhY3Rpb25TdG10c1tsYXN0SW5kZXhdO1xuICAgIGNvbnN0IHJldHVybkV4cHIgPSBjb252ZXJ0U3RtdEludG9FeHByZXNzaW9uKGxhc3RTdGF0ZW1lbnQpO1xuICAgIGlmIChyZXR1cm5FeHByKSB7XG4gICAgICAvLyBOb3RlOiBXZSBuZWVkIHRvIGNhc3QgdGhlIHJlc3VsdCBvZiB0aGUgbWV0aG9kIGNhbGwgdG8gZHluYW1pYyxcbiAgICAgIC8vIGFzIGl0IG1pZ2h0IGJlIGEgdm9pZCBtZXRob2QhXG4gICAgICBwcmV2ZW50RGVmYXVsdFZhciA9IGNyZWF0ZVByZXZlbnREZWZhdWx0VmFyKGJpbmRpbmdJZCk7XG4gICAgICBhY3Rpb25TdG10c1tsYXN0SW5kZXhdID1cbiAgICAgICAgICBwcmV2ZW50RGVmYXVsdFZhci5zZXQocmV0dXJuRXhwci5jYXN0KG8uRFlOQU1JQ19UWVBFKS5ub3RJZGVudGljYWwoby5saXRlcmFsKGZhbHNlKSkpXG4gICAgICAgICAgICAgIC50b0RlY2xTdG10KG51bGwsIFtvLlN0bXRNb2RpZmllci5GaW5hbF0pO1xuICAgIH1cbiAgfVxuICByZXR1cm4gbmV3IENvbnZlcnRBY3Rpb25CaW5kaW5nUmVzdWx0KGFjdGlvblN0bXRzLCBwcmV2ZW50RGVmYXVsdFZhcik7XG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgQnVpbHRpbkNvbnZlcnRlciB7IChhcmdzOiBvLkV4cHJlc3Npb25bXSk6IG8uRXhwcmVzc2lvbjsgfVxuXG5leHBvcnQgaW50ZXJmYWNlIEJ1aWx0aW5Db252ZXJ0ZXJGYWN0b3J5IHtcbiAgY3JlYXRlTGl0ZXJhbEFycmF5Q29udmVydGVyKGFyZ0NvdW50OiBudW1iZXIpOiBCdWlsdGluQ29udmVydGVyO1xuICBjcmVhdGVMaXRlcmFsTWFwQ29udmVydGVyKGtleXM6IHtrZXk6IHN0cmluZywgcXVvdGVkOiBib29sZWFufVtdKTogQnVpbHRpbkNvbnZlcnRlcjtcbiAgY3JlYXRlUGlwZUNvbnZlcnRlcihuYW1lOiBzdHJpbmcsIGFyZ0NvdW50OiBudW1iZXIpOiBCdWlsdGluQ29udmVydGVyO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gY29udmVydFByb3BlcnR5QmluZGluZ0J1aWx0aW5zKFxuICAgIGNvbnZlcnRlckZhY3Rvcnk6IEJ1aWx0aW5Db252ZXJ0ZXJGYWN0b3J5LCBhc3Q6IGNkQXN0LkFTVCk6IGNkQXN0LkFTVCB7XG4gIHJldHVybiBjb252ZXJ0QnVpbHRpbnMoY29udmVydGVyRmFjdG9yeSwgYXN0KTtcbn1cblxuZXhwb3J0IGNsYXNzIENvbnZlcnRQcm9wZXJ0eUJpbmRpbmdSZXN1bHQge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgc3RtdHM6IG8uU3RhdGVtZW50W10sIHB1YmxpYyBjdXJyVmFsRXhwcjogby5FeHByZXNzaW9uKSB7fVxufVxuXG5leHBvcnQgZW51bSBCaW5kaW5nRm9ybSB7XG4gIC8vIFRoZSBnZW5lcmFsIGZvcm0gb2YgYmluZGluZyBleHByZXNzaW9uLCBzdXBwb3J0cyBhbGwgZXhwcmVzc2lvbnMuXG4gIEdlbmVyYWwsXG5cbiAgLy8gVHJ5IHRvIGdlbmVyYXRlIGEgc2ltcGxlIGJpbmRpbmcgKG5vIHRlbXBvcmFyaWVzIG9yIHN0YXRlbWVudHMpXG4gIC8vIG90aGVyd2lzZSBnZW5lcmF0ZSBhIGdlbmVyYWwgYmluZGluZ1xuICBUcnlTaW1wbGUsXG59XG5cbi8qKlxuICogQ29udmVydHMgdGhlIGdpdmVuIGV4cHJlc3Npb24gQVNUIGludG8gYW4gZXhlY3V0YWJsZSBvdXRwdXQgQVNULCBhc3N1bWluZyB0aGUgZXhwcmVzc2lvblxuICogaXMgdXNlZCBpbiBwcm9wZXJ0eSBiaW5kaW5nLiBUaGUgZXhwcmVzc2lvbiBoYXMgdG8gYmUgcHJlcHJvY2Vzc2VkIHZpYVxuICogYGNvbnZlcnRQcm9wZXJ0eUJpbmRpbmdCdWlsdGluc2AuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBjb252ZXJ0UHJvcGVydHlCaW5kaW5nKFxuICAgIGxvY2FsUmVzb2x2ZXI6IExvY2FsUmVzb2x2ZXIgfCBudWxsLCBpbXBsaWNpdFJlY2VpdmVyOiBvLkV4cHJlc3Npb24sXG4gICAgZXhwcmVzc2lvbldpdGhvdXRCdWlsdGluczogY2RBc3QuQVNULCBiaW5kaW5nSWQ6IHN0cmluZywgZm9ybTogQmluZGluZ0Zvcm0sXG4gICAgaW50ZXJwb2xhdGlvbkZ1bmN0aW9uPzogSW50ZXJwb2xhdGlvbkZ1bmN0aW9uKTogQ29udmVydFByb3BlcnR5QmluZGluZ1Jlc3VsdCB7XG4gIGlmICghbG9jYWxSZXNvbHZlcikge1xuICAgIGxvY2FsUmVzb2x2ZXIgPSBuZXcgRGVmYXVsdExvY2FsUmVzb2x2ZXIoKTtcbiAgfVxuICBjb25zdCBjdXJyVmFsRXhwciA9IGNyZWF0ZUN1cnJWYWx1ZUV4cHIoYmluZGluZ0lkKTtcbiAgY29uc3QgdmlzaXRvciA9XG4gICAgICBuZXcgX0FzdFRvSXJWaXNpdG9yKGxvY2FsUmVzb2x2ZXIsIGltcGxpY2l0UmVjZWl2ZXIsIGJpbmRpbmdJZCwgaW50ZXJwb2xhdGlvbkZ1bmN0aW9uKTtcbiAgY29uc3Qgb3V0cHV0RXhwcjogby5FeHByZXNzaW9uID0gZXhwcmVzc2lvbldpdGhvdXRCdWlsdGlucy52aXNpdCh2aXNpdG9yLCBfTW9kZS5FeHByZXNzaW9uKTtcbiAgY29uc3Qgc3RtdHM6IG8uU3RhdGVtZW50W10gPSBnZXRTdGF0ZW1lbnRzRnJvbVZpc2l0b3IodmlzaXRvciwgYmluZGluZ0lkKTtcblxuICBpZiAodmlzaXRvci51c2VzSW1wbGljaXRSZWNlaXZlcikge1xuICAgIGxvY2FsUmVzb2x2ZXIubm90aWZ5SW1wbGljaXRSZWNlaXZlclVzZSgpO1xuICB9XG5cbiAgaWYgKHZpc2l0b3IudGVtcG9yYXJ5Q291bnQgPT09IDAgJiYgZm9ybSA9PSBCaW5kaW5nRm9ybS5UcnlTaW1wbGUpIHtcbiAgICByZXR1cm4gbmV3IENvbnZlcnRQcm9wZXJ0eUJpbmRpbmdSZXN1bHQoW10sIG91dHB1dEV4cHIpO1xuICB9XG5cbiAgc3RtdHMucHVzaChjdXJyVmFsRXhwci5zZXQob3V0cHV0RXhwcikudG9EZWNsU3RtdChvLkRZTkFNSUNfVFlQRSwgW28uU3RtdE1vZGlmaWVyLkZpbmFsXSkpO1xuICByZXR1cm4gbmV3IENvbnZlcnRQcm9wZXJ0eUJpbmRpbmdSZXN1bHQoc3RtdHMsIGN1cnJWYWxFeHByKTtcbn1cblxuLyoqXG4gKiBHaXZlbiBzb21lIGV4cHJlc3Npb24sIHN1Y2ggYXMgYSBiaW5kaW5nIG9yIGludGVycG9sYXRpb24gZXhwcmVzc2lvbiwgYW5kIGEgY29udGV4dCBleHByZXNzaW9uIHRvXG4gKiBsb29rIHZhbHVlcyB1cCBvbiwgdmlzaXQgZWFjaCBmYWNldCBvZiB0aGUgZ2l2ZW4gZXhwcmVzc2lvbiByZXNvbHZpbmcgdmFsdWVzIGZyb20gdGhlIGNvbnRleHRcbiAqIGV4cHJlc3Npb24gc3VjaCB0aGF0IGEgbGlzdCBvZiBhcmd1bWVudHMgY2FuIGJlIGRlcml2ZWQgZnJvbSB0aGUgZm91bmQgdmFsdWVzIHRoYXQgY2FuIGJlIHVzZWQgYXNcbiAqIGFyZ3VtZW50cyB0byBhbiBleHRlcm5hbCB1cGRhdGUgaW5zdHJ1Y3Rpb24uXG4gKlxuICogQHBhcmFtIGxvY2FsUmVzb2x2ZXIgVGhlIHJlc29sdmVyIHRvIHVzZSB0byBsb29rIHVwIGV4cHJlc3Npb25zIGJ5IG5hbWUgYXBwcm9wcmlhdGVseVxuICogQHBhcmFtIGNvbnRleHRWYXJpYWJsZUV4cHJlc3Npb24gVGhlIGV4cHJlc3Npb24gcmVwcmVzZW50aW5nIHRoZSBjb250ZXh0IHZhcmlhYmxlIHVzZWQgdG8gY3JlYXRlXG4gKiB0aGUgZmluYWwgYXJndW1lbnQgZXhwcmVzc2lvbnNcbiAqIEBwYXJhbSBleHByZXNzaW9uV2l0aEFyZ3VtZW50c1RvRXh0cmFjdCBUaGUgZXhwcmVzc2lvbiB0byB2aXNpdCB0byBmaWd1cmUgb3V0IHdoYXQgdmFsdWVzIG5lZWQgdG9cbiAqIGJlIHJlc29sdmVkIGFuZCB3aGF0IGFyZ3VtZW50cyBsaXN0IHRvIGJ1aWxkLlxuICogQHBhcmFtIGJpbmRpbmdJZCBBIG5hbWUgcHJlZml4IHVzZWQgdG8gY3JlYXRlIHRlbXBvcmFyeSB2YXJpYWJsZSBuYW1lcyBpZiB0aGV5J3JlIG5lZWRlZCBmb3IgdGhlXG4gKiBhcmd1bWVudHMgZ2VuZXJhdGVkXG4gKiBAcmV0dXJucyBBbiBhcnJheSBvZiBleHByZXNzaW9ucyB0aGF0IGNhbiBiZSBwYXNzZWQgYXMgYXJndW1lbnRzIHRvIGluc3RydWN0aW9uIGV4cHJlc3Npb25zIGxpa2VcbiAqIGBvLmltcG9ydEV4cHIoUjMucHJvcGVydHlJbnRlcnBvbGF0ZSkuY2FsbEZuKHJlc3VsdClgXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBjb252ZXJ0VXBkYXRlQXJndW1lbnRzKFxuICAgIGxvY2FsUmVzb2x2ZXI6IExvY2FsUmVzb2x2ZXIsIGNvbnRleHRWYXJpYWJsZUV4cHJlc3Npb246IG8uRXhwcmVzc2lvbixcbiAgICBleHByZXNzaW9uV2l0aEFyZ3VtZW50c1RvRXh0cmFjdDogY2RBc3QuQVNULCBiaW5kaW5nSWQ6IHN0cmluZykge1xuICBjb25zdCB2aXNpdG9yID1cbiAgICAgIG5ldyBfQXN0VG9JclZpc2l0b3IobG9jYWxSZXNvbHZlciwgY29udGV4dFZhcmlhYmxlRXhwcmVzc2lvbiwgYmluZGluZ0lkLCB1bmRlZmluZWQpO1xuICBjb25zdCBvdXRwdXRFeHByOiBvLkludm9rZUZ1bmN0aW9uRXhwciA9XG4gICAgICBleHByZXNzaW9uV2l0aEFyZ3VtZW50c1RvRXh0cmFjdC52aXNpdCh2aXNpdG9yLCBfTW9kZS5FeHByZXNzaW9uKTtcblxuICBpZiAodmlzaXRvci51c2VzSW1wbGljaXRSZWNlaXZlcikge1xuICAgIGxvY2FsUmVzb2x2ZXIubm90aWZ5SW1wbGljaXRSZWNlaXZlclVzZSgpO1xuICB9XG5cbiAgY29uc3Qgc3RtdHMgPSBnZXRTdGF0ZW1lbnRzRnJvbVZpc2l0b3IodmlzaXRvciwgYmluZGluZ0lkKTtcblxuICAvLyBSZW1vdmluZyB0aGUgZmlyc3QgYXJndW1lbnQsIGJlY2F1c2UgaXQgd2FzIGEgbGVuZ3RoIGZvciBWaWV3RW5naW5lLCBub3QgSXZ5LlxuICBsZXQgYXJncyA9IG91dHB1dEV4cHIuYXJncy5zbGljZSgxKTtcbiAgaWYgKGV4cHJlc3Npb25XaXRoQXJndW1lbnRzVG9FeHRyYWN0IGluc3RhbmNlb2YgY2RBc3QuSW50ZXJwb2xhdGlvbikge1xuICAgIC8vIElmIHdlJ3JlIGRlYWxpbmcgd2l0aCBhbiBpbnRlcnBvbGF0aW9uIG9mIDEgdmFsdWUgd2l0aCBhbiBlbXB0eSBwcmVmaXggYW5kIHN1ZmZpeCwgcmVkdWNlIHRoZVxuICAgIC8vIGFyZ3MgcmV0dXJuZWQgdG8ganVzdCB0aGUgdmFsdWUsIGJlY2F1c2Ugd2UncmUgZ29pbmcgdG8gcGFzcyBpdCB0byBhIHNwZWNpYWwgaW5zdHJ1Y3Rpb24uXG4gICAgY29uc3Qgc3RyaW5ncyA9IGV4cHJlc3Npb25XaXRoQXJndW1lbnRzVG9FeHRyYWN0LnN0cmluZ3M7XG4gICAgaWYgKGFyZ3MubGVuZ3RoID09PSAzICYmIHN0cmluZ3NbMF0gPT09ICcnICYmIHN0cmluZ3NbMV0gPT09ICcnKSB7XG4gICAgICAvLyBTaW5nbGUgYXJndW1lbnQgaW50ZXJwb2xhdGUgaW5zdHJ1Y3Rpb25zLlxuICAgICAgYXJncyA9IFthcmdzWzFdXTtcbiAgICB9IGVsc2UgaWYgKGFyZ3MubGVuZ3RoID49IDE5KSB7XG4gICAgICAvLyAxOSBvciBtb3JlIGFyZ3VtZW50cyBtdXN0IGJlIHBhc3NlZCB0byB0aGUgYGludGVycG9sYXRlVmAtc3R5bGUgaW5zdHJ1Y3Rpb25zLCB3aGljaCBhY2NlcHRcbiAgICAgIC8vIGFuIGFycmF5IG9mIGFyZ3VtZW50c1xuICAgICAgYXJncyA9IFtvLmxpdGVyYWxBcnIoYXJncyldO1xuICAgIH1cbiAgfVxuICByZXR1cm4ge3N0bXRzLCBhcmdzfTtcbn1cblxuZnVuY3Rpb24gZ2V0U3RhdGVtZW50c0Zyb21WaXNpdG9yKHZpc2l0b3I6IF9Bc3RUb0lyVmlzaXRvciwgYmluZGluZ0lkOiBzdHJpbmcpIHtcbiAgY29uc3Qgc3RtdHM6IG8uU3RhdGVtZW50W10gPSBbXTtcbiAgZm9yIChsZXQgaSA9IDA7IGkgPCB2aXNpdG9yLnRlbXBvcmFyeUNvdW50OyBpKyspIHtcbiAgICBzdG10cy5wdXNoKHRlbXBvcmFyeURlY2xhcmF0aW9uKGJpbmRpbmdJZCwgaSkpO1xuICB9XG4gIHJldHVybiBzdG10cztcbn1cblxuZnVuY3Rpb24gY29udmVydEJ1aWx0aW5zKGNvbnZlcnRlckZhY3Rvcnk6IEJ1aWx0aW5Db252ZXJ0ZXJGYWN0b3J5LCBhc3Q6IGNkQXN0LkFTVCk6IGNkQXN0LkFTVCB7XG4gIGNvbnN0IHZpc2l0b3IgPSBuZXcgX0J1aWx0aW5Bc3RDb252ZXJ0ZXIoY29udmVydGVyRmFjdG9yeSk7XG4gIHJldHVybiBhc3QudmlzaXQodmlzaXRvcik7XG59XG5cbmZ1bmN0aW9uIHRlbXBvcmFyeU5hbWUoYmluZGluZ0lkOiBzdHJpbmcsIHRlbXBvcmFyeU51bWJlcjogbnVtYmVyKTogc3RyaW5nIHtcbiAgcmV0dXJuIGB0bXBfJHtiaW5kaW5nSWR9XyR7dGVtcG9yYXJ5TnVtYmVyfWA7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiB0ZW1wb3JhcnlEZWNsYXJhdGlvbihiaW5kaW5nSWQ6IHN0cmluZywgdGVtcG9yYXJ5TnVtYmVyOiBudW1iZXIpOiBvLlN0YXRlbWVudCB7XG4gIHJldHVybiBuZXcgby5EZWNsYXJlVmFyU3RtdCh0ZW1wb3JhcnlOYW1lKGJpbmRpbmdJZCwgdGVtcG9yYXJ5TnVtYmVyKSwgby5OVUxMX0VYUFIpO1xufVxuXG5mdW5jdGlvbiBwcmVwZW5kVGVtcG9yYXJ5RGVjbHMoXG4gICAgdGVtcG9yYXJ5Q291bnQ6IG51bWJlciwgYmluZGluZ0lkOiBzdHJpbmcsIHN0YXRlbWVudHM6IG8uU3RhdGVtZW50W10pIHtcbiAgZm9yIChsZXQgaSA9IHRlbXBvcmFyeUNvdW50IC0gMTsgaSA+PSAwOyBpLS0pIHtcbiAgICBzdGF0ZW1lbnRzLnVuc2hpZnQodGVtcG9yYXJ5RGVjbGFyYXRpb24oYmluZGluZ0lkLCBpKSk7XG4gIH1cbn1cblxuZW51bSBfTW9kZSB7XG4gIFN0YXRlbWVudCxcbiAgRXhwcmVzc2lvblxufVxuXG5mdW5jdGlvbiBlbnN1cmVTdGF0ZW1lbnRNb2RlKG1vZGU6IF9Nb2RlLCBhc3Q6IGNkQXN0LkFTVCkge1xuICBpZiAobW9kZSAhPT0gX01vZGUuU3RhdGVtZW50KSB7XG4gICAgdGhyb3cgbmV3IEVycm9yKGBFeHBlY3RlZCBhIHN0YXRlbWVudCwgYnV0IHNhdyAke2FzdH1gKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBlbnN1cmVFeHByZXNzaW9uTW9kZShtb2RlOiBfTW9kZSwgYXN0OiBjZEFzdC5BU1QpIHtcbiAgaWYgKG1vZGUgIT09IF9Nb2RlLkV4cHJlc3Npb24pIHtcbiAgICB0aHJvdyBuZXcgRXJyb3IoYEV4cGVjdGVkIGFuIGV4cHJlc3Npb24sIGJ1dCBzYXcgJHthc3R9YCk7XG4gIH1cbn1cblxuZnVuY3Rpb24gY29udmVydFRvU3RhdGVtZW50SWZOZWVkZWQobW9kZTogX01vZGUsIGV4cHI6IG8uRXhwcmVzc2lvbik6IG8uRXhwcmVzc2lvbnxvLlN0YXRlbWVudCB7XG4gIGlmIChtb2RlID09PSBfTW9kZS5TdGF0ZW1lbnQpIHtcbiAgICByZXR1cm4gZXhwci50b1N0bXQoKTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gZXhwcjtcbiAgfVxufVxuXG5jbGFzcyBfQnVpbHRpbkFzdENvbnZlcnRlciBleHRlbmRzIGNkQXN0LkFzdFRyYW5zZm9ybWVyIHtcbiAgY29uc3RydWN0b3IocHJpdmF0ZSBfY29udmVydGVyRmFjdG9yeTogQnVpbHRpbkNvbnZlcnRlckZhY3RvcnkpIHsgc3VwZXIoKTsgfVxuICB2aXNpdFBpcGUoYXN0OiBjZEFzdC5CaW5kaW5nUGlwZSwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBjb25zdCBhcmdzID0gW2FzdC5leHAsIC4uLmFzdC5hcmdzXS5tYXAoYXN0ID0+IGFzdC52aXNpdCh0aGlzLCBjb250ZXh0KSk7XG4gICAgcmV0dXJuIG5ldyBCdWlsdGluRnVuY3Rpb25DYWxsKFxuICAgICAgICBhc3Quc3BhbiwgYXN0LnNvdXJjZVNwYW4sIGFyZ3MsXG4gICAgICAgIHRoaXMuX2NvbnZlcnRlckZhY3RvcnkuY3JlYXRlUGlwZUNvbnZlcnRlcihhc3QubmFtZSwgYXJncy5sZW5ndGgpKTtcbiAgfVxuICB2aXNpdExpdGVyYWxBcnJheShhc3Q6IGNkQXN0LkxpdGVyYWxBcnJheSwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBjb25zdCBhcmdzID0gYXN0LmV4cHJlc3Npb25zLm1hcChhc3QgPT4gYXN0LnZpc2l0KHRoaXMsIGNvbnRleHQpKTtcbiAgICByZXR1cm4gbmV3IEJ1aWx0aW5GdW5jdGlvbkNhbGwoXG4gICAgICAgIGFzdC5zcGFuLCBhc3Quc291cmNlU3BhbiwgYXJncyxcbiAgICAgICAgdGhpcy5fY29udmVydGVyRmFjdG9yeS5jcmVhdGVMaXRlcmFsQXJyYXlDb252ZXJ0ZXIoYXN0LmV4cHJlc3Npb25zLmxlbmd0aCkpO1xuICB9XG4gIHZpc2l0TGl0ZXJhbE1hcChhc3Q6IGNkQXN0LkxpdGVyYWxNYXAsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgY29uc3QgYXJncyA9IGFzdC52YWx1ZXMubWFwKGFzdCA9PiBhc3QudmlzaXQodGhpcywgY29udGV4dCkpO1xuXG4gICAgcmV0dXJuIG5ldyBCdWlsdGluRnVuY3Rpb25DYWxsKFxuICAgICAgICBhc3Quc3BhbiwgYXN0LnNvdXJjZVNwYW4sIGFyZ3MsIHRoaXMuX2NvbnZlcnRlckZhY3RvcnkuY3JlYXRlTGl0ZXJhbE1hcENvbnZlcnRlcihhc3Qua2V5cykpO1xuICB9XG59XG5cbmNsYXNzIF9Bc3RUb0lyVmlzaXRvciBpbXBsZW1lbnRzIGNkQXN0LkFzdFZpc2l0b3Ige1xuICBwcml2YXRlIF9ub2RlTWFwID0gbmV3IE1hcDxjZEFzdC5BU1QsIGNkQXN0LkFTVD4oKTtcbiAgcHJpdmF0ZSBfcmVzdWx0TWFwID0gbmV3IE1hcDxjZEFzdC5BU1QsIG8uRXhwcmVzc2lvbj4oKTtcbiAgcHJpdmF0ZSBfY3VycmVudFRlbXBvcmFyeTogbnVtYmVyID0gMDtcbiAgcHVibGljIHRlbXBvcmFyeUNvdW50OiBudW1iZXIgPSAwO1xuICBwdWJsaWMgdXNlc0ltcGxpY2l0UmVjZWl2ZXI6IGJvb2xlYW4gPSBmYWxzZTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgX2xvY2FsUmVzb2x2ZXI6IExvY2FsUmVzb2x2ZXIsIHByaXZhdGUgX2ltcGxpY2l0UmVjZWl2ZXI6IG8uRXhwcmVzc2lvbixcbiAgICAgIHByaXZhdGUgYmluZGluZ0lkOiBzdHJpbmcsIHByaXZhdGUgaW50ZXJwb2xhdGlvbkZ1bmN0aW9uOiBJbnRlcnBvbGF0aW9uRnVuY3Rpb258dW5kZWZpbmVkLFxuICAgICAgcHJpdmF0ZSBiYXNlU291cmNlU3Bhbj86IFBhcnNlU291cmNlU3Bhbikge31cblxuICB2aXNpdEJpbmFyeShhc3Q6IGNkQXN0LkJpbmFyeSwgbW9kZTogX01vZGUpOiBhbnkge1xuICAgIGxldCBvcDogby5CaW5hcnlPcGVyYXRvcjtcbiAgICBzd2l0Y2ggKGFzdC5vcGVyYXRpb24pIHtcbiAgICAgIGNhc2UgJysnOlxuICAgICAgICBvcCA9IG8uQmluYXJ5T3BlcmF0b3IuUGx1cztcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlICctJzpcbiAgICAgICAgb3AgPSBvLkJpbmFyeU9wZXJhdG9yLk1pbnVzO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2UgJyonOlxuICAgICAgICBvcCA9IG8uQmluYXJ5T3BlcmF0b3IuTXVsdGlwbHk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSAnLyc6XG4gICAgICAgIG9wID0gby5CaW5hcnlPcGVyYXRvci5EaXZpZGU7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSAnJSc6XG4gICAgICAgIG9wID0gby5CaW5hcnlPcGVyYXRvci5Nb2R1bG87XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSAnJiYnOlxuICAgICAgICBvcCA9IG8uQmluYXJ5T3BlcmF0b3IuQW5kO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2UgJ3x8JzpcbiAgICAgICAgb3AgPSBvLkJpbmFyeU9wZXJhdG9yLk9yO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2UgJz09JzpcbiAgICAgICAgb3AgPSBvLkJpbmFyeU9wZXJhdG9yLkVxdWFscztcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlICchPSc6XG4gICAgICAgIG9wID0gby5CaW5hcnlPcGVyYXRvci5Ob3RFcXVhbHM7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSAnPT09JzpcbiAgICAgICAgb3AgPSBvLkJpbmFyeU9wZXJhdG9yLklkZW50aWNhbDtcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlICchPT0nOlxuICAgICAgICBvcCA9IG8uQmluYXJ5T3BlcmF0b3IuTm90SWRlbnRpY2FsO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2UgJzwnOlxuICAgICAgICBvcCA9IG8uQmluYXJ5T3BlcmF0b3IuTG93ZXI7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSAnPic6XG4gICAgICAgIG9wID0gby5CaW5hcnlPcGVyYXRvci5CaWdnZXI7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSAnPD0nOlxuICAgICAgICBvcCA9IG8uQmluYXJ5T3BlcmF0b3IuTG93ZXJFcXVhbHM7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSAnPj0nOlxuICAgICAgICBvcCA9IG8uQmluYXJ5T3BlcmF0b3IuQmlnZ2VyRXF1YWxzO1xuICAgICAgICBicmVhaztcbiAgICAgIGRlZmF1bHQ6XG4gICAgICAgIHRocm93IG5ldyBFcnJvcihgVW5zdXBwb3J0ZWQgb3BlcmF0aW9uICR7YXN0Lm9wZXJhdGlvbn1gKTtcbiAgICB9XG5cbiAgICByZXR1cm4gY29udmVydFRvU3RhdGVtZW50SWZOZWVkZWQoXG4gICAgICAgIG1vZGUsXG4gICAgICAgIG5ldyBvLkJpbmFyeU9wZXJhdG9yRXhwcihcbiAgICAgICAgICAgIG9wLCB0aGlzLl92aXNpdChhc3QubGVmdCwgX01vZGUuRXhwcmVzc2lvbiksIHRoaXMuX3Zpc2l0KGFzdC5yaWdodCwgX01vZGUuRXhwcmVzc2lvbiksXG4gICAgICAgICAgICB1bmRlZmluZWQsIHRoaXMuY29udmVydFNvdXJjZVNwYW4oYXN0LnNwYW4pKSk7XG4gIH1cblxuICB2aXNpdENoYWluKGFzdDogY2RBc3QuQ2hhaW4sIG1vZGU6IF9Nb2RlKTogYW55IHtcbiAgICBlbnN1cmVTdGF0ZW1lbnRNb2RlKG1vZGUsIGFzdCk7XG4gICAgcmV0dXJuIHRoaXMudmlzaXRBbGwoYXN0LmV4cHJlc3Npb25zLCBtb2RlKTtcbiAgfVxuXG4gIHZpc2l0Q29uZGl0aW9uYWwoYXN0OiBjZEFzdC5Db25kaXRpb25hbCwgbW9kZTogX01vZGUpOiBhbnkge1xuICAgIGNvbnN0IHZhbHVlOiBvLkV4cHJlc3Npb24gPSB0aGlzLl92aXNpdChhc3QuY29uZGl0aW9uLCBfTW9kZS5FeHByZXNzaW9uKTtcbiAgICByZXR1cm4gY29udmVydFRvU3RhdGVtZW50SWZOZWVkZWQoXG4gICAgICAgIG1vZGUsIHZhbHVlLmNvbmRpdGlvbmFsKFxuICAgICAgICAgICAgICAgICAgdGhpcy5fdmlzaXQoYXN0LnRydWVFeHAsIF9Nb2RlLkV4cHJlc3Npb24pLFxuICAgICAgICAgICAgICAgICAgdGhpcy5fdmlzaXQoYXN0LmZhbHNlRXhwLCBfTW9kZS5FeHByZXNzaW9uKSwgdGhpcy5jb252ZXJ0U291cmNlU3Bhbihhc3Quc3BhbikpKTtcbiAgfVxuXG4gIHZpc2l0UGlwZShhc3Q6IGNkQXN0LkJpbmRpbmdQaXBlLCBtb2RlOiBfTW9kZSk6IGFueSB7XG4gICAgdGhyb3cgbmV3IEVycm9yKFxuICAgICAgICBgSWxsZWdhbCBzdGF0ZTogUGlwZXMgc2hvdWxkIGhhdmUgYmVlbiBjb252ZXJ0ZWQgaW50byBmdW5jdGlvbnMuIFBpcGU6ICR7YXN0Lm5hbWV9YCk7XG4gIH1cblxuICB2aXNpdEZ1bmN0aW9uQ2FsbChhc3Q6IGNkQXN0LkZ1bmN0aW9uQ2FsbCwgbW9kZTogX01vZGUpOiBhbnkge1xuICAgIGNvbnN0IGNvbnZlcnRlZEFyZ3MgPSB0aGlzLnZpc2l0QWxsKGFzdC5hcmdzLCBfTW9kZS5FeHByZXNzaW9uKTtcbiAgICBsZXQgZm5SZXN1bHQ6IG8uRXhwcmVzc2lvbjtcbiAgICBpZiAoYXN0IGluc3RhbmNlb2YgQnVpbHRpbkZ1bmN0aW9uQ2FsbCkge1xuICAgICAgZm5SZXN1bHQgPSBhc3QuY29udmVydGVyKGNvbnZlcnRlZEFyZ3MpO1xuICAgIH0gZWxzZSB7XG4gICAgICBmblJlc3VsdCA9IHRoaXMuX3Zpc2l0KGFzdC50YXJnZXQgISwgX01vZGUuRXhwcmVzc2lvbilcbiAgICAgICAgICAgICAgICAgICAgIC5jYWxsRm4oY29udmVydGVkQXJncywgdGhpcy5jb252ZXJ0U291cmNlU3Bhbihhc3Quc3BhbikpO1xuICAgIH1cbiAgICByZXR1cm4gY29udmVydFRvU3RhdGVtZW50SWZOZWVkZWQobW9kZSwgZm5SZXN1bHQpO1xuICB9XG5cbiAgdmlzaXRJbXBsaWNpdFJlY2VpdmVyKGFzdDogY2RBc3QuSW1wbGljaXRSZWNlaXZlciwgbW9kZTogX01vZGUpOiBhbnkge1xuICAgIGVuc3VyZUV4cHJlc3Npb25Nb2RlKG1vZGUsIGFzdCk7XG4gICAgdGhpcy51c2VzSW1wbGljaXRSZWNlaXZlciA9IHRydWU7XG4gICAgcmV0dXJuIHRoaXMuX2ltcGxpY2l0UmVjZWl2ZXI7XG4gIH1cblxuICB2aXNpdEludGVycG9sYXRpb24oYXN0OiBjZEFzdC5JbnRlcnBvbGF0aW9uLCBtb2RlOiBfTW9kZSk6IGFueSB7XG4gICAgZW5zdXJlRXhwcmVzc2lvbk1vZGUobW9kZSwgYXN0KTtcbiAgICBjb25zdCBhcmdzID0gW28ubGl0ZXJhbChhc3QuZXhwcmVzc2lvbnMubGVuZ3RoKV07XG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCBhc3Quc3RyaW5ncy5sZW5ndGggLSAxOyBpKyspIHtcbiAgICAgIGFyZ3MucHVzaChvLmxpdGVyYWwoYXN0LnN0cmluZ3NbaV0pKTtcbiAgICAgIGFyZ3MucHVzaCh0aGlzLl92aXNpdChhc3QuZXhwcmVzc2lvbnNbaV0sIF9Nb2RlLkV4cHJlc3Npb24pKTtcbiAgICB9XG4gICAgYXJncy5wdXNoKG8ubGl0ZXJhbChhc3Quc3RyaW5nc1thc3Quc3RyaW5ncy5sZW5ndGggLSAxXSkpO1xuXG4gICAgaWYgKHRoaXMuaW50ZXJwb2xhdGlvbkZ1bmN0aW9uKSB7XG4gICAgICByZXR1cm4gdGhpcy5pbnRlcnBvbGF0aW9uRnVuY3Rpb24oYXJncyk7XG4gICAgfVxuICAgIHJldHVybiBhc3QuZXhwcmVzc2lvbnMubGVuZ3RoIDw9IDkgP1xuICAgICAgICBvLmltcG9ydEV4cHIoSWRlbnRpZmllcnMuaW5saW5lSW50ZXJwb2xhdGUpLmNhbGxGbihhcmdzKSA6XG4gICAgICAgIG8uaW1wb3J0RXhwcihJZGVudGlmaWVycy5pbnRlcnBvbGF0ZSkuY2FsbEZuKFtcbiAgICAgICAgICBhcmdzWzBdLCBvLmxpdGVyYWxBcnIoYXJncy5zbGljZSgxKSwgdW5kZWZpbmVkLCB0aGlzLmNvbnZlcnRTb3VyY2VTcGFuKGFzdC5zcGFuKSlcbiAgICAgICAgXSk7XG4gIH1cblxuICB2aXNpdEtleWVkUmVhZChhc3Q6IGNkQXN0LktleWVkUmVhZCwgbW9kZTogX01vZGUpOiBhbnkge1xuICAgIGNvbnN0IGxlZnRNb3N0U2FmZSA9IHRoaXMubGVmdE1vc3RTYWZlTm9kZShhc3QpO1xuICAgIGlmIChsZWZ0TW9zdFNhZmUpIHtcbiAgICAgIHJldHVybiB0aGlzLmNvbnZlcnRTYWZlQWNjZXNzKGFzdCwgbGVmdE1vc3RTYWZlLCBtb2RlKTtcbiAgICB9IGVsc2Uge1xuICAgICAgcmV0dXJuIGNvbnZlcnRUb1N0YXRlbWVudElmTmVlZGVkKFxuICAgICAgICAgIG1vZGUsIHRoaXMuX3Zpc2l0KGFzdC5vYmosIF9Nb2RlLkV4cHJlc3Npb24pLmtleSh0aGlzLl92aXNpdChhc3Qua2V5LCBfTW9kZS5FeHByZXNzaW9uKSkpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0S2V5ZWRXcml0ZShhc3Q6IGNkQXN0LktleWVkV3JpdGUsIG1vZGU6IF9Nb2RlKTogYW55IHtcbiAgICBjb25zdCBvYmo6IG8uRXhwcmVzc2lvbiA9IHRoaXMuX3Zpc2l0KGFzdC5vYmosIF9Nb2RlLkV4cHJlc3Npb24pO1xuICAgIGNvbnN0IGtleTogby5FeHByZXNzaW9uID0gdGhpcy5fdmlzaXQoYXN0LmtleSwgX01vZGUuRXhwcmVzc2lvbik7XG4gICAgY29uc3QgdmFsdWU6IG8uRXhwcmVzc2lvbiA9IHRoaXMuX3Zpc2l0KGFzdC52YWx1ZSwgX01vZGUuRXhwcmVzc2lvbik7XG4gICAgcmV0dXJuIGNvbnZlcnRUb1N0YXRlbWVudElmTmVlZGVkKG1vZGUsIG9iai5rZXkoa2V5KS5zZXQodmFsdWUpKTtcbiAgfVxuXG4gIHZpc2l0TGl0ZXJhbEFycmF5KGFzdDogY2RBc3QuTGl0ZXJhbEFycmF5LCBtb2RlOiBfTW9kZSk6IGFueSB7XG4gICAgdGhyb3cgbmV3IEVycm9yKGBJbGxlZ2FsIFN0YXRlOiBsaXRlcmFsIGFycmF5cyBzaG91bGQgaGF2ZSBiZWVuIGNvbnZlcnRlZCBpbnRvIGZ1bmN0aW9uc2ApO1xuICB9XG5cbiAgdmlzaXRMaXRlcmFsTWFwKGFzdDogY2RBc3QuTGl0ZXJhbE1hcCwgbW9kZTogX01vZGUpOiBhbnkge1xuICAgIHRocm93IG5ldyBFcnJvcihgSWxsZWdhbCBTdGF0ZTogbGl0ZXJhbCBtYXBzIHNob3VsZCBoYXZlIGJlZW4gY29udmVydGVkIGludG8gZnVuY3Rpb25zYCk7XG4gIH1cblxuICB2aXNpdExpdGVyYWxQcmltaXRpdmUoYXN0OiBjZEFzdC5MaXRlcmFsUHJpbWl0aXZlLCBtb2RlOiBfTW9kZSk6IGFueSB7XG4gICAgLy8gRm9yIGxpdGVyYWwgdmFsdWVzIG9mIG51bGwsIHVuZGVmaW5lZCwgdHJ1ZSwgb3IgZmFsc2UgYWxsb3cgdHlwZSBpbnRlcmZlcmVuY2VcbiAgICAvLyB0byBpbmZlciB0aGUgdHlwZS5cbiAgICBjb25zdCB0eXBlID1cbiAgICAgICAgYXN0LnZhbHVlID09PSBudWxsIHx8IGFzdC52YWx1ZSA9PT0gdW5kZWZpbmVkIHx8IGFzdC52YWx1ZSA9PT0gdHJ1ZSB8fCBhc3QudmFsdWUgPT09IHRydWUgP1xuICAgICAgICBvLklORkVSUkVEX1RZUEUgOlxuICAgICAgICB1bmRlZmluZWQ7XG4gICAgcmV0dXJuIGNvbnZlcnRUb1N0YXRlbWVudElmTmVlZGVkKFxuICAgICAgICBtb2RlLCBvLmxpdGVyYWwoYXN0LnZhbHVlLCB0eXBlLCB0aGlzLmNvbnZlcnRTb3VyY2VTcGFuKGFzdC5zcGFuKSkpO1xuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0TG9jYWwobmFtZTogc3RyaW5nKTogby5FeHByZXNzaW9ufG51bGwgeyByZXR1cm4gdGhpcy5fbG9jYWxSZXNvbHZlci5nZXRMb2NhbChuYW1lKTsgfVxuXG4gIHZpc2l0TWV0aG9kQ2FsbChhc3Q6IGNkQXN0Lk1ldGhvZENhbGwsIG1vZGU6IF9Nb2RlKTogYW55IHtcbiAgICBpZiAoYXN0LnJlY2VpdmVyIGluc3RhbmNlb2YgY2RBc3QuSW1wbGljaXRSZWNlaXZlciAmJiBhc3QubmFtZSA9PSAnJGFueScpIHtcbiAgICAgIGNvbnN0IGFyZ3MgPSB0aGlzLnZpc2l0QWxsKGFzdC5hcmdzLCBfTW9kZS5FeHByZXNzaW9uKSBhcyBhbnlbXTtcbiAgICAgIGlmIChhcmdzLmxlbmd0aCAhPSAxKSB7XG4gICAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICAgIGBJbnZhbGlkIGNhbGwgdG8gJGFueSwgZXhwZWN0ZWQgMSBhcmd1bWVudCBidXQgcmVjZWl2ZWQgJHthcmdzLmxlbmd0aCB8fCAnbm9uZSd9YCk7XG4gICAgICB9XG4gICAgICByZXR1cm4gKGFyZ3NbMF0gYXMgby5FeHByZXNzaW9uKS5jYXN0KG8uRFlOQU1JQ19UWVBFLCB0aGlzLmNvbnZlcnRTb3VyY2VTcGFuKGFzdC5zcGFuKSk7XG4gICAgfVxuXG4gICAgY29uc3QgbGVmdE1vc3RTYWZlID0gdGhpcy5sZWZ0TW9zdFNhZmVOb2RlKGFzdCk7XG4gICAgaWYgKGxlZnRNb3N0U2FmZSkge1xuICAgICAgcmV0dXJuIHRoaXMuY29udmVydFNhZmVBY2Nlc3MoYXN0LCBsZWZ0TW9zdFNhZmUsIG1vZGUpO1xuICAgIH0gZWxzZSB7XG4gICAgICBjb25zdCBhcmdzID0gdGhpcy52aXNpdEFsbChhc3QuYXJncywgX01vZGUuRXhwcmVzc2lvbik7XG4gICAgICBjb25zdCBwcmV2VXNlc0ltcGxpY2l0UmVjZWl2ZXIgPSB0aGlzLnVzZXNJbXBsaWNpdFJlY2VpdmVyO1xuICAgICAgbGV0IHJlc3VsdDogYW55ID0gbnVsbDtcbiAgICAgIGNvbnN0IHJlY2VpdmVyID0gdGhpcy5fdmlzaXQoYXN0LnJlY2VpdmVyLCBfTW9kZS5FeHByZXNzaW9uKTtcbiAgICAgIGlmIChyZWNlaXZlciA9PT0gdGhpcy5faW1wbGljaXRSZWNlaXZlcikge1xuICAgICAgICBjb25zdCB2YXJFeHByID0gdGhpcy5fZ2V0TG9jYWwoYXN0Lm5hbWUpO1xuICAgICAgICBpZiAodmFyRXhwcikge1xuICAgICAgICAgIC8vIFJlc3RvcmUgdGhlIHByZXZpb3VzIFwidXNlc0ltcGxpY2l0UmVjZWl2ZXJcIiBzdGF0ZSBzaW5jZSB0aGUgaW1wbGljaXRcbiAgICAgICAgICAvLyByZWNlaXZlciBoYXMgYmVlbiByZXBsYWNlZCB3aXRoIGEgcmVzb2x2ZWQgbG9jYWwgZXhwcmVzc2lvbi5cbiAgICAgICAgICB0aGlzLnVzZXNJbXBsaWNpdFJlY2VpdmVyID0gcHJldlVzZXNJbXBsaWNpdFJlY2VpdmVyO1xuICAgICAgICAgIHJlc3VsdCA9IHZhckV4cHIuY2FsbEZuKGFyZ3MpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgICBpZiAocmVzdWx0ID09IG51bGwpIHtcbiAgICAgICAgcmVzdWx0ID0gcmVjZWl2ZXIuY2FsbE1ldGhvZChhc3QubmFtZSwgYXJncywgdGhpcy5jb252ZXJ0U291cmNlU3Bhbihhc3Quc3BhbikpO1xuICAgICAgfVxuICAgICAgcmV0dXJuIGNvbnZlcnRUb1N0YXRlbWVudElmTmVlZGVkKG1vZGUsIHJlc3VsdCk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRQcmVmaXhOb3QoYXN0OiBjZEFzdC5QcmVmaXhOb3QsIG1vZGU6IF9Nb2RlKTogYW55IHtcbiAgICByZXR1cm4gY29udmVydFRvU3RhdGVtZW50SWZOZWVkZWQobW9kZSwgby5ub3QodGhpcy5fdmlzaXQoYXN0LmV4cHJlc3Npb24sIF9Nb2RlLkV4cHJlc3Npb24pKSk7XG4gIH1cblxuICB2aXNpdE5vbk51bGxBc3NlcnQoYXN0OiBjZEFzdC5Ob25OdWxsQXNzZXJ0LCBtb2RlOiBfTW9kZSk6IGFueSB7XG4gICAgcmV0dXJuIGNvbnZlcnRUb1N0YXRlbWVudElmTmVlZGVkKFxuICAgICAgICBtb2RlLCBvLmFzc2VydE5vdE51bGwodGhpcy5fdmlzaXQoYXN0LmV4cHJlc3Npb24sIF9Nb2RlLkV4cHJlc3Npb24pKSk7XG4gIH1cblxuICB2aXNpdFByb3BlcnR5UmVhZChhc3Q6IGNkQXN0LlByb3BlcnR5UmVhZCwgbW9kZTogX01vZGUpOiBhbnkge1xuICAgIGNvbnN0IGxlZnRNb3N0U2FmZSA9IHRoaXMubGVmdE1vc3RTYWZlTm9kZShhc3QpO1xuICAgIGlmIChsZWZ0TW9zdFNhZmUpIHtcbiAgICAgIHJldHVybiB0aGlzLmNvbnZlcnRTYWZlQWNjZXNzKGFzdCwgbGVmdE1vc3RTYWZlLCBtb2RlKTtcbiAgICB9IGVsc2Uge1xuICAgICAgbGV0IHJlc3VsdDogYW55ID0gbnVsbDtcbiAgICAgIGNvbnN0IHByZXZVc2VzSW1wbGljaXRSZWNlaXZlciA9IHRoaXMudXNlc0ltcGxpY2l0UmVjZWl2ZXI7XG4gICAgICBjb25zdCByZWNlaXZlciA9IHRoaXMuX3Zpc2l0KGFzdC5yZWNlaXZlciwgX01vZGUuRXhwcmVzc2lvbik7XG4gICAgICBpZiAocmVjZWl2ZXIgPT09IHRoaXMuX2ltcGxpY2l0UmVjZWl2ZXIpIHtcbiAgICAgICAgcmVzdWx0ID0gdGhpcy5fZ2V0TG9jYWwoYXN0Lm5hbWUpO1xuICAgICAgICBpZiAocmVzdWx0KSB7XG4gICAgICAgICAgLy8gUmVzdG9yZSB0aGUgcHJldmlvdXMgXCJ1c2VzSW1wbGljaXRSZWNlaXZlclwiIHN0YXRlIHNpbmNlIHRoZSBpbXBsaWNpdFxuICAgICAgICAgIC8vIHJlY2VpdmVyIGhhcyBiZWVuIHJlcGxhY2VkIHdpdGggYSByZXNvbHZlZCBsb2NhbCBleHByZXNzaW9uLlxuICAgICAgICAgIHRoaXMudXNlc0ltcGxpY2l0UmVjZWl2ZXIgPSBwcmV2VXNlc0ltcGxpY2l0UmVjZWl2ZXI7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIGlmIChyZXN1bHQgPT0gbnVsbCkge1xuICAgICAgICByZXN1bHQgPSByZWNlaXZlci5wcm9wKGFzdC5uYW1lKTtcbiAgICAgIH1cbiAgICAgIHJldHVybiBjb252ZXJ0VG9TdGF0ZW1lbnRJZk5lZWRlZChtb2RlLCByZXN1bHQpO1xuICAgIH1cbiAgfVxuXG4gIHZpc2l0UHJvcGVydHlXcml0ZShhc3Q6IGNkQXN0LlByb3BlcnR5V3JpdGUsIG1vZGU6IF9Nb2RlKTogYW55IHtcbiAgICBjb25zdCByZWNlaXZlcjogby5FeHByZXNzaW9uID0gdGhpcy5fdmlzaXQoYXN0LnJlY2VpdmVyLCBfTW9kZS5FeHByZXNzaW9uKTtcbiAgICBjb25zdCBwcmV2VXNlc0ltcGxpY2l0UmVjZWl2ZXIgPSB0aGlzLnVzZXNJbXBsaWNpdFJlY2VpdmVyO1xuXG4gICAgbGV0IHZhckV4cHI6IG8uUmVhZFByb3BFeHByfG51bGwgPSBudWxsO1xuICAgIGlmIChyZWNlaXZlciA9PT0gdGhpcy5faW1wbGljaXRSZWNlaXZlcikge1xuICAgICAgY29uc3QgbG9jYWxFeHByID0gdGhpcy5fZ2V0TG9jYWwoYXN0Lm5hbWUpO1xuICAgICAgaWYgKGxvY2FsRXhwcikge1xuICAgICAgICBpZiAobG9jYWxFeHByIGluc3RhbmNlb2Ygby5SZWFkUHJvcEV4cHIpIHtcbiAgICAgICAgICAvLyBJZiB0aGUgbG9jYWwgdmFyaWFibGUgaXMgYSBwcm9wZXJ0eSByZWFkIGV4cHJlc3Npb24sIGl0J3MgYSByZWZlcmVuY2VcbiAgICAgICAgICAvLyB0byBhICdjb250ZXh0LnByb3BlcnR5JyB2YWx1ZSBhbmQgd2lsbCBiZSB1c2VkIGFzIHRoZSB0YXJnZXQgb2YgdGhlXG4gICAgICAgICAgLy8gd3JpdGUgZXhwcmVzc2lvbi5cbiAgICAgICAgICB2YXJFeHByID0gbG9jYWxFeHByO1xuICAgICAgICAgIC8vIFJlc3RvcmUgdGhlIHByZXZpb3VzIFwidXNlc0ltcGxpY2l0UmVjZWl2ZXJcIiBzdGF0ZSBzaW5jZSB0aGUgaW1wbGljaXRcbiAgICAgICAgICAvLyByZWNlaXZlciBoYXMgYmVlbiByZXBsYWNlZCB3aXRoIGEgcmVzb2x2ZWQgbG9jYWwgZXhwcmVzc2lvbi5cbiAgICAgICAgICB0aGlzLnVzZXNJbXBsaWNpdFJlY2VpdmVyID0gcHJldlVzZXNJbXBsaWNpdFJlY2VpdmVyO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIC8vIE90aGVyd2lzZSBpdCdzIGFuIGVycm9yLlxuICAgICAgICAgIGNvbnN0IHJlY2VpdmVyID0gYXN0Lm5hbWU7XG4gICAgICAgICAgY29uc3QgdmFsdWUgPSAoYXN0LnZhbHVlIGluc3RhbmNlb2YgY2RBc3QuUHJvcGVydHlSZWFkKSA/IGFzdC52YWx1ZS5uYW1lIDogdW5kZWZpbmVkO1xuICAgICAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICAgICAgYENhbm5vdCBhc3NpZ24gdmFsdWUgXCIke3ZhbHVlfVwiIHRvIHRlbXBsYXRlIHZhcmlhYmxlIFwiJHtyZWNlaXZlcn1cIi4gVGVtcGxhdGUgdmFyaWFibGVzIGFyZSByZWFkLW9ubHkuYCk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gICAgLy8gSWYgbm8gbG9jYWwgZXhwcmVzc2lvbiBjb3VsZCBiZSBwcm9kdWNlZCwgdXNlIHRoZSBvcmlnaW5hbCByZWNlaXZlcidzXG4gICAgLy8gcHJvcGVydHkgYXMgdGhlIHRhcmdldC5cbiAgICBpZiAodmFyRXhwciA9PT0gbnVsbCkge1xuICAgICAgdmFyRXhwciA9IHJlY2VpdmVyLnByb3AoYXN0Lm5hbWUpO1xuICAgIH1cbiAgICByZXR1cm4gY29udmVydFRvU3RhdGVtZW50SWZOZWVkZWQobW9kZSwgdmFyRXhwci5zZXQodGhpcy5fdmlzaXQoYXN0LnZhbHVlLCBfTW9kZS5FeHByZXNzaW9uKSkpO1xuICB9XG5cbiAgdmlzaXRTYWZlUHJvcGVydHlSZWFkKGFzdDogY2RBc3QuU2FmZVByb3BlcnR5UmVhZCwgbW9kZTogX01vZGUpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLmNvbnZlcnRTYWZlQWNjZXNzKGFzdCwgdGhpcy5sZWZ0TW9zdFNhZmVOb2RlKGFzdCksIG1vZGUpO1xuICB9XG5cbiAgdmlzaXRTYWZlTWV0aG9kQ2FsbChhc3Q6IGNkQXN0LlNhZmVNZXRob2RDYWxsLCBtb2RlOiBfTW9kZSk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMuY29udmVydFNhZmVBY2Nlc3MoYXN0LCB0aGlzLmxlZnRNb3N0U2FmZU5vZGUoYXN0KSwgbW9kZSk7XG4gIH1cblxuICB2aXNpdEFsbChhc3RzOiBjZEFzdC5BU1RbXSwgbW9kZTogX01vZGUpOiBhbnkgeyByZXR1cm4gYXN0cy5tYXAoYXN0ID0+IHRoaXMuX3Zpc2l0KGFzdCwgbW9kZSkpOyB9XG5cbiAgdmlzaXRRdW90ZShhc3Q6IGNkQXN0LlF1b3RlLCBtb2RlOiBfTW9kZSk6IGFueSB7XG4gICAgdGhyb3cgbmV3IEVycm9yKGBRdW90ZXMgYXJlIG5vdCBzdXBwb3J0ZWQgZm9yIGV2YWx1YXRpb24hXG4gICAgICAgIFN0YXRlbWVudDogJHthc3QudW5pbnRlcnByZXRlZEV4cHJlc3Npb259IGxvY2F0ZWQgYXQgJHthc3QubG9jYXRpb259YCk7XG4gIH1cblxuICBwcml2YXRlIF92aXNpdChhc3Q6IGNkQXN0LkFTVCwgbW9kZTogX01vZGUpOiBhbnkge1xuICAgIGNvbnN0IHJlc3VsdCA9IHRoaXMuX3Jlc3VsdE1hcC5nZXQoYXN0KTtcbiAgICBpZiAocmVzdWx0KSByZXR1cm4gcmVzdWx0O1xuICAgIHJldHVybiAodGhpcy5fbm9kZU1hcC5nZXQoYXN0KSB8fCBhc3QpLnZpc2l0KHRoaXMsIG1vZGUpO1xuICB9XG5cbiAgcHJpdmF0ZSBjb252ZXJ0U2FmZUFjY2VzcyhcbiAgICAgIGFzdDogY2RBc3QuQVNULCBsZWZ0TW9zdFNhZmU6IGNkQXN0LlNhZmVNZXRob2RDYWxsfGNkQXN0LlNhZmVQcm9wZXJ0eVJlYWQsIG1vZGU6IF9Nb2RlKTogYW55IHtcbiAgICAvLyBJZiB0aGUgZXhwcmVzc2lvbiBjb250YWlucyBhIHNhZmUgYWNjZXNzIG5vZGUgb24gdGhlIGxlZnQgaXQgbmVlZHMgdG8gYmUgY29udmVydGVkIHRvXG4gICAgLy8gYW4gZXhwcmVzc2lvbiB0aGF0IGd1YXJkcyB0aGUgYWNjZXNzIHRvIHRoZSBtZW1iZXIgYnkgY2hlY2tpbmcgdGhlIHJlY2VpdmVyIGZvciBibGFuay4gQXNcbiAgICAvLyBleGVjdXRpb24gcHJvY2VlZHMgZnJvbSBsZWZ0IHRvIHJpZ2h0LCB0aGUgbGVmdCBtb3N0IHBhcnQgb2YgdGhlIGV4cHJlc3Npb24gbXVzdCBiZSBndWFyZGVkXG4gICAgLy8gZmlyc3QgYnV0LCBiZWNhdXNlIG1lbWJlciBhY2Nlc3MgaXMgbGVmdCBhc3NvY2lhdGl2ZSwgdGhlIHJpZ2h0IHNpZGUgb2YgdGhlIGV4cHJlc3Npb24gaXMgYXRcbiAgICAvLyB0aGUgdG9wIG9mIHRoZSBBU1QuIFRoZSBkZXNpcmVkIHJlc3VsdCByZXF1aXJlcyBsaWZ0aW5nIGEgY29weSBvZiB0aGUgbGVmdCBwYXJ0IG9mIHRoZVxuICAgIC8vIGV4cHJlc3Npb24gdXAgdG8gdGVzdCBpdCBmb3IgYmxhbmsgYmVmb3JlIGdlbmVyYXRpbmcgdGhlIHVuZ3VhcmRlZCB2ZXJzaW9uLlxuXG4gICAgLy8gQ29uc2lkZXIsIGZvciBleGFtcGxlIHRoZSBmb2xsb3dpbmcgZXhwcmVzc2lvbjogYT8uYi5jPy5kLmVcblxuICAgIC8vIFRoaXMgcmVzdWx0cyBpbiB0aGUgYXN0OlxuICAgIC8vICAgICAgICAgLlxuICAgIC8vICAgICAgICAvIFxcXG4gICAgLy8gICAgICAgPy4gICBlXG4gICAgLy8gICAgICAvICBcXFxuICAgIC8vICAgICAuICAgIGRcbiAgICAvLyAgICAvIFxcXG4gICAgLy8gICA/LiAgY1xuICAgIC8vICAvICBcXFxuICAgIC8vIGEgICAgYlxuXG4gICAgLy8gVGhlIGZvbGxvd2luZyB0cmVlIHNob3VsZCBiZSBnZW5lcmF0ZWQ6XG4gICAgLy9cbiAgICAvLyAgICAgICAgLy0tLS0gPyAtLS0tXFxcbiAgICAvLyAgICAgICAvICAgICAgfCAgICAgIFxcXG4gICAgLy8gICAgIGEgICAvLS0tID8gLS0tXFwgIG51bGxcbiAgICAvLyAgICAgICAgLyAgICAgfCAgICAgXFxcbiAgICAvLyAgICAgICAuICAgICAgLiAgICAgbnVsbFxuICAgIC8vICAgICAgLyBcXCAgICAvIFxcXG4gICAgLy8gICAgIC4gIGMgICAuICAgZVxuICAgIC8vICAgIC8gXFwgICAgLyBcXFxuICAgIC8vICAgYSAgIGIgIC4gICBkXG4gICAgLy8gICAgICAgICAvIFxcXG4gICAgLy8gICAgICAgIC4gICBjXG4gICAgLy8gICAgICAgLyBcXFxuICAgIC8vICAgICAgYSAgIGJcbiAgICAvL1xuICAgIC8vIE5vdGljZSB0aGF0IHRoZSBmaXJzdCBndWFyZCBjb25kaXRpb24gaXMgdGhlIGxlZnQgaGFuZCBvZiB0aGUgbGVmdCBtb3N0IHNhZmUgYWNjZXNzIG5vZGVcbiAgICAvLyB3aGljaCBjb21lcyBpbiBhcyBsZWZ0TW9zdFNhZmUgdG8gdGhpcyByb3V0aW5lLlxuXG4gICAgbGV0IGd1YXJkZWRFeHByZXNzaW9uID0gdGhpcy5fdmlzaXQobGVmdE1vc3RTYWZlLnJlY2VpdmVyLCBfTW9kZS5FeHByZXNzaW9uKTtcbiAgICBsZXQgdGVtcG9yYXJ5OiBvLlJlYWRWYXJFeHByID0gdW5kZWZpbmVkICE7XG4gICAgaWYgKHRoaXMubmVlZHNUZW1wb3JhcnkobGVmdE1vc3RTYWZlLnJlY2VpdmVyKSkge1xuICAgICAgLy8gSWYgdGhlIGV4cHJlc3Npb24gaGFzIG1ldGhvZCBjYWxscyBvciBwaXBlcyB0aGVuIHdlIG5lZWQgdG8gc2F2ZSB0aGUgcmVzdWx0IGludG8gYVxuICAgICAgLy8gdGVtcG9yYXJ5IHZhcmlhYmxlIHRvIGF2b2lkIGNhbGxpbmcgc3RhdGVmdWwgb3IgaW1wdXJlIGNvZGUgbW9yZSB0aGFuIG9uY2UuXG4gICAgICB0ZW1wb3JhcnkgPSB0aGlzLmFsbG9jYXRlVGVtcG9yYXJ5KCk7XG5cbiAgICAgIC8vIFByZXNlcnZlIHRoZSByZXN1bHQgaW4gdGhlIHRlbXBvcmFyeSB2YXJpYWJsZVxuICAgICAgZ3VhcmRlZEV4cHJlc3Npb24gPSB0ZW1wb3Jhcnkuc2V0KGd1YXJkZWRFeHByZXNzaW9uKTtcblxuICAgICAgLy8gRW5zdXJlIGFsbCBmdXJ0aGVyIHJlZmVyZW5jZXMgdG8gdGhlIGd1YXJkZWQgZXhwcmVzc2lvbiByZWZlciB0byB0aGUgdGVtcG9yYXJ5IGluc3RlYWQuXG4gICAgICB0aGlzLl9yZXN1bHRNYXAuc2V0KGxlZnRNb3N0U2FmZS5yZWNlaXZlciwgdGVtcG9yYXJ5KTtcbiAgICB9XG4gICAgY29uc3QgY29uZGl0aW9uID0gZ3VhcmRlZEV4cHJlc3Npb24uaXNCbGFuaygpO1xuXG4gICAgLy8gQ29udmVydCB0aGUgYXN0IHRvIGFuIHVuZ3VhcmRlZCBhY2Nlc3MgdG8gdGhlIHJlY2VpdmVyJ3MgbWVtYmVyLiBUaGUgbWFwIHdpbGwgc3Vic3RpdHV0ZVxuICAgIC8vIGxlZnRNb3N0Tm9kZSB3aXRoIGl0cyB1bmd1YXJkZWQgdmVyc2lvbiBpbiB0aGUgY2FsbCB0byBgdGhpcy52aXNpdCgpYC5cbiAgICBpZiAobGVmdE1vc3RTYWZlIGluc3RhbmNlb2YgY2RBc3QuU2FmZU1ldGhvZENhbGwpIHtcbiAgICAgIHRoaXMuX25vZGVNYXAuc2V0KFxuICAgICAgICAgIGxlZnRNb3N0U2FmZSwgbmV3IGNkQXN0Lk1ldGhvZENhbGwoXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgbGVmdE1vc3RTYWZlLnNwYW4sIGxlZnRNb3N0U2FmZS5zb3VyY2VTcGFuLCBsZWZ0TW9zdFNhZmUucmVjZWl2ZXIsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgbGVmdE1vc3RTYWZlLm5hbWUsIGxlZnRNb3N0U2FmZS5hcmdzKSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMuX25vZGVNYXAuc2V0KFxuICAgICAgICAgIGxlZnRNb3N0U2FmZSwgbmV3IGNkQXN0LlByb3BlcnR5UmVhZChcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBsZWZ0TW9zdFNhZmUuc3BhbiwgbGVmdE1vc3RTYWZlLnNvdXJjZVNwYW4sIGxlZnRNb3N0U2FmZS5yZWNlaXZlcixcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICBsZWZ0TW9zdFNhZmUubmFtZSkpO1xuICAgIH1cblxuICAgIC8vIFJlY3Vyc2l2ZWx5IGNvbnZlcnQgdGhlIG5vZGUgbm93IHdpdGhvdXQgdGhlIGd1YXJkZWQgbWVtYmVyIGFjY2Vzcy5cbiAgICBjb25zdCBhY2Nlc3MgPSB0aGlzLl92aXNpdChhc3QsIF9Nb2RlLkV4cHJlc3Npb24pO1xuXG4gICAgLy8gUmVtb3ZlIHRoZSBtYXBwaW5nLiBUaGlzIGlzIG5vdCBzdHJpY3RseSByZXF1aXJlZCBhcyB0aGUgY29udmVydGVyIG9ubHkgdHJhdmVyc2VzIGVhY2ggbm9kZVxuICAgIC8vIG9uY2UgYnV0IGlzIHNhZmVyIGlmIHRoZSBjb252ZXJzaW9uIGlzIGNoYW5nZWQgdG8gdHJhdmVyc2UgdGhlIG5vZGVzIG1vcmUgdGhhbiBvbmNlLlxuICAgIHRoaXMuX25vZGVNYXAuZGVsZXRlKGxlZnRNb3N0U2FmZSk7XG5cbiAgICAvLyBJZiB3ZSBhbGxvY2F0ZWQgYSB0ZW1wb3JhcnksIHJlbGVhc2UgaXQuXG4gICAgaWYgKHRlbXBvcmFyeSkge1xuICAgICAgdGhpcy5yZWxlYXNlVGVtcG9yYXJ5KHRlbXBvcmFyeSk7XG4gICAgfVxuXG4gICAgLy8gUHJvZHVjZSB0aGUgY29uZGl0aW9uYWxcbiAgICByZXR1cm4gY29udmVydFRvU3RhdGVtZW50SWZOZWVkZWQobW9kZSwgY29uZGl0aW9uLmNvbmRpdGlvbmFsKG8ubGl0ZXJhbChudWxsKSwgYWNjZXNzKSk7XG4gIH1cblxuICAvLyBHaXZlbiBhbiBleHByZXNzaW9uIG9mIHRoZSBmb3JtIGE/LmIuYz8uZC5lIHRoZW4gdGhlIGxlZnQgbW9zdCBzYWZlIG5vZGUgaXNcbiAgLy8gdGhlIChhPy5iKS4gVGhlIC4gYW5kID8uIGFyZSBsZWZ0IGFzc29jaWF0aXZlIHRodXMgY2FuIGJlIHJld3JpdHRlbiBhczpcbiAgLy8gKCgoKGE/LmMpLmIpLmMpPy5kKS5lLiBUaGlzIHJldHVybnMgdGhlIG1vc3QgZGVlcGx5IG5lc3RlZCBzYWZlIHJlYWQgb3JcbiAgLy8gc2FmZSBtZXRob2QgY2FsbCBhcyB0aGlzIG5lZWRzIHRvIGJlIHRyYW5zZm9ybWVkIGluaXRpYWxseSB0bzpcbiAgLy8gICBhID09IG51bGwgPyBudWxsIDogYS5jLmIuYz8uZC5lXG4gIC8vIHRoZW4gdG86XG4gIC8vICAgYSA9PSBudWxsID8gbnVsbCA6IGEuYi5jID09IG51bGwgPyBudWxsIDogYS5iLmMuZC5lXG4gIHByaXZhdGUgbGVmdE1vc3RTYWZlTm9kZShhc3Q6IGNkQXN0LkFTVCk6IGNkQXN0LlNhZmVQcm9wZXJ0eVJlYWR8Y2RBc3QuU2FmZU1ldGhvZENhbGwge1xuICAgIGNvbnN0IHZpc2l0ID0gKHZpc2l0b3I6IGNkQXN0LkFzdFZpc2l0b3IsIGFzdDogY2RBc3QuQVNUKTogYW55ID0+IHtcbiAgICAgIHJldHVybiAodGhpcy5fbm9kZU1hcC5nZXQoYXN0KSB8fCBhc3QpLnZpc2l0KHZpc2l0b3IpO1xuICAgIH07XG4gICAgcmV0dXJuIGFzdC52aXNpdCh7XG4gICAgICB2aXNpdEJpbmFyeShhc3Q6IGNkQXN0LkJpbmFyeSkgeyByZXR1cm4gbnVsbDsgfSxcbiAgICAgIHZpc2l0Q2hhaW4oYXN0OiBjZEFzdC5DaGFpbikgeyByZXR1cm4gbnVsbDsgfSxcbiAgICAgIHZpc2l0Q29uZGl0aW9uYWwoYXN0OiBjZEFzdC5Db25kaXRpb25hbCkgeyByZXR1cm4gbnVsbDsgfSxcbiAgICAgIHZpc2l0RnVuY3Rpb25DYWxsKGFzdDogY2RBc3QuRnVuY3Rpb25DYWxsKSB7IHJldHVybiBudWxsOyB9LFxuICAgICAgdmlzaXRJbXBsaWNpdFJlY2VpdmVyKGFzdDogY2RBc3QuSW1wbGljaXRSZWNlaXZlcikgeyByZXR1cm4gbnVsbDsgfSxcbiAgICAgIHZpc2l0SW50ZXJwb2xhdGlvbihhc3Q6IGNkQXN0LkludGVycG9sYXRpb24pIHsgcmV0dXJuIG51bGw7IH0sXG4gICAgICB2aXNpdEtleWVkUmVhZChhc3Q6IGNkQXN0LktleWVkUmVhZCkgeyByZXR1cm4gdmlzaXQodGhpcywgYXN0Lm9iaik7IH0sXG4gICAgICB2aXNpdEtleWVkV3JpdGUoYXN0OiBjZEFzdC5LZXllZFdyaXRlKSB7IHJldHVybiBudWxsOyB9LFxuICAgICAgdmlzaXRMaXRlcmFsQXJyYXkoYXN0OiBjZEFzdC5MaXRlcmFsQXJyYXkpIHsgcmV0dXJuIG51bGw7IH0sXG4gICAgICB2aXNpdExpdGVyYWxNYXAoYXN0OiBjZEFzdC5MaXRlcmFsTWFwKSB7IHJldHVybiBudWxsOyB9LFxuICAgICAgdmlzaXRMaXRlcmFsUHJpbWl0aXZlKGFzdDogY2RBc3QuTGl0ZXJhbFByaW1pdGl2ZSkgeyByZXR1cm4gbnVsbDsgfSxcbiAgICAgIHZpc2l0TWV0aG9kQ2FsbChhc3Q6IGNkQXN0Lk1ldGhvZENhbGwpIHsgcmV0dXJuIHZpc2l0KHRoaXMsIGFzdC5yZWNlaXZlcik7IH0sXG4gICAgICB2aXNpdFBpcGUoYXN0OiBjZEFzdC5CaW5kaW5nUGlwZSkgeyByZXR1cm4gbnVsbDsgfSxcbiAgICAgIHZpc2l0UHJlZml4Tm90KGFzdDogY2RBc3QuUHJlZml4Tm90KSB7IHJldHVybiBudWxsOyB9LFxuICAgICAgdmlzaXROb25OdWxsQXNzZXJ0KGFzdDogY2RBc3QuTm9uTnVsbEFzc2VydCkgeyByZXR1cm4gbnVsbDsgfSxcbiAgICAgIHZpc2l0UHJvcGVydHlSZWFkKGFzdDogY2RBc3QuUHJvcGVydHlSZWFkKSB7IHJldHVybiB2aXNpdCh0aGlzLCBhc3QucmVjZWl2ZXIpOyB9LFxuICAgICAgdmlzaXRQcm9wZXJ0eVdyaXRlKGFzdDogY2RBc3QuUHJvcGVydHlXcml0ZSkgeyByZXR1cm4gbnVsbDsgfSxcbiAgICAgIHZpc2l0UXVvdGUoYXN0OiBjZEFzdC5RdW90ZSkgeyByZXR1cm4gbnVsbDsgfSxcbiAgICAgIHZpc2l0U2FmZU1ldGhvZENhbGwoYXN0OiBjZEFzdC5TYWZlTWV0aG9kQ2FsbCkgeyByZXR1cm4gdmlzaXQodGhpcywgYXN0LnJlY2VpdmVyKSB8fCBhc3Q7IH0sXG4gICAgICB2aXNpdFNhZmVQcm9wZXJ0eVJlYWQoYXN0OiBjZEFzdC5TYWZlUHJvcGVydHlSZWFkKSB7XG4gICAgICAgIHJldHVybiB2aXNpdCh0aGlzLCBhc3QucmVjZWl2ZXIpIHx8IGFzdDtcbiAgICAgIH1cbiAgICB9KTtcbiAgfVxuXG4gIC8vIFJldHVybnMgdHJ1ZSBvZiB0aGUgQVNUIGluY2x1ZGVzIGEgbWV0aG9kIG9yIGEgcGlwZSBpbmRpY2F0aW5nIHRoYXQsIGlmIHRoZVxuICAvLyBleHByZXNzaW9uIGlzIHVzZWQgYXMgdGhlIHRhcmdldCBvZiBhIHNhZmUgcHJvcGVydHkgb3IgbWV0aG9kIGFjY2VzcyB0aGVuXG4gIC8vIHRoZSBleHByZXNzaW9uIHNob3VsZCBiZSBzdG9yZWQgaW50byBhIHRlbXBvcmFyeSB2YXJpYWJsZS5cbiAgcHJpdmF0ZSBuZWVkc1RlbXBvcmFyeShhc3Q6IGNkQXN0LkFTVCk6IGJvb2xlYW4ge1xuICAgIGNvbnN0IHZpc2l0ID0gKHZpc2l0b3I6IGNkQXN0LkFzdFZpc2l0b3IsIGFzdDogY2RBc3QuQVNUKTogYm9vbGVhbiA9PiB7XG4gICAgICByZXR1cm4gYXN0ICYmICh0aGlzLl9ub2RlTWFwLmdldChhc3QpIHx8IGFzdCkudmlzaXQodmlzaXRvcik7XG4gICAgfTtcbiAgICBjb25zdCB2aXNpdFNvbWUgPSAodmlzaXRvcjogY2RBc3QuQXN0VmlzaXRvciwgYXN0OiBjZEFzdC5BU1RbXSk6IGJvb2xlYW4gPT4ge1xuICAgICAgcmV0dXJuIGFzdC5zb21lKGFzdCA9PiB2aXNpdCh2aXNpdG9yLCBhc3QpKTtcbiAgICB9O1xuICAgIHJldHVybiBhc3QudmlzaXQoe1xuICAgICAgdmlzaXRCaW5hcnkoYXN0OiBjZEFzdC5CaW5hcnkpOlxuICAgICAgICAgIGJvb2xlYW57cmV0dXJuIHZpc2l0KHRoaXMsIGFzdC5sZWZ0KSB8fCB2aXNpdCh0aGlzLCBhc3QucmlnaHQpO30sXG4gICAgICB2aXNpdENoYWluKGFzdDogY2RBc3QuQ2hhaW4pIHsgcmV0dXJuIGZhbHNlOyB9LFxuICAgICAgdmlzaXRDb25kaXRpb25hbChhc3Q6IGNkQXN0LkNvbmRpdGlvbmFsKTpcbiAgICAgICAgICBib29sZWFue3JldHVybiB2aXNpdCh0aGlzLCBhc3QuY29uZGl0aW9uKSB8fCB2aXNpdCh0aGlzLCBhc3QudHJ1ZUV4cCkgfHxcbiAgICAgICAgICAgICAgICAgICAgICB2aXNpdCh0aGlzLCBhc3QuZmFsc2VFeHApO30sXG4gICAgICB2aXNpdEZ1bmN0aW9uQ2FsbChhc3Q6IGNkQXN0LkZ1bmN0aW9uQ2FsbCkgeyByZXR1cm4gdHJ1ZTsgfSxcbiAgICAgIHZpc2l0SW1wbGljaXRSZWNlaXZlcihhc3Q6IGNkQXN0LkltcGxpY2l0UmVjZWl2ZXIpIHsgcmV0dXJuIGZhbHNlOyB9LFxuICAgICAgdmlzaXRJbnRlcnBvbGF0aW9uKGFzdDogY2RBc3QuSW50ZXJwb2xhdGlvbikgeyByZXR1cm4gdmlzaXRTb21lKHRoaXMsIGFzdC5leHByZXNzaW9ucyk7IH0sXG4gICAgICB2aXNpdEtleWVkUmVhZChhc3Q6IGNkQXN0LktleWVkUmVhZCkgeyByZXR1cm4gZmFsc2U7IH0sXG4gICAgICB2aXNpdEtleWVkV3JpdGUoYXN0OiBjZEFzdC5LZXllZFdyaXRlKSB7IHJldHVybiBmYWxzZTsgfSxcbiAgICAgIHZpc2l0TGl0ZXJhbEFycmF5KGFzdDogY2RBc3QuTGl0ZXJhbEFycmF5KSB7IHJldHVybiB0cnVlOyB9LFxuICAgICAgdmlzaXRMaXRlcmFsTWFwKGFzdDogY2RBc3QuTGl0ZXJhbE1hcCkgeyByZXR1cm4gdHJ1ZTsgfSxcbiAgICAgIHZpc2l0TGl0ZXJhbFByaW1pdGl2ZShhc3Q6IGNkQXN0LkxpdGVyYWxQcmltaXRpdmUpIHsgcmV0dXJuIGZhbHNlOyB9LFxuICAgICAgdmlzaXRNZXRob2RDYWxsKGFzdDogY2RBc3QuTWV0aG9kQ2FsbCkgeyByZXR1cm4gdHJ1ZTsgfSxcbiAgICAgIHZpc2l0UGlwZShhc3Q6IGNkQXN0LkJpbmRpbmdQaXBlKSB7IHJldHVybiB0cnVlOyB9LFxuICAgICAgdmlzaXRQcmVmaXhOb3QoYXN0OiBjZEFzdC5QcmVmaXhOb3QpIHsgcmV0dXJuIHZpc2l0KHRoaXMsIGFzdC5leHByZXNzaW9uKTsgfSxcbiAgICAgIHZpc2l0Tm9uTnVsbEFzc2VydChhc3Q6IGNkQXN0LlByZWZpeE5vdCkgeyByZXR1cm4gdmlzaXQodGhpcywgYXN0LmV4cHJlc3Npb24pOyB9LFxuICAgICAgdmlzaXRQcm9wZXJ0eVJlYWQoYXN0OiBjZEFzdC5Qcm9wZXJ0eVJlYWQpIHsgcmV0dXJuIGZhbHNlOyB9LFxuICAgICAgdmlzaXRQcm9wZXJ0eVdyaXRlKGFzdDogY2RBc3QuUHJvcGVydHlXcml0ZSkgeyByZXR1cm4gZmFsc2U7IH0sXG4gICAgICB2aXNpdFF1b3RlKGFzdDogY2RBc3QuUXVvdGUpIHsgcmV0dXJuIGZhbHNlOyB9LFxuICAgICAgdmlzaXRTYWZlTWV0aG9kQ2FsbChhc3Q6IGNkQXN0LlNhZmVNZXRob2RDYWxsKSB7IHJldHVybiB0cnVlOyB9LFxuICAgICAgdmlzaXRTYWZlUHJvcGVydHlSZWFkKGFzdDogY2RBc3QuU2FmZVByb3BlcnR5UmVhZCkgeyByZXR1cm4gZmFsc2U7IH1cbiAgICB9KTtcbiAgfVxuXG4gIHByaXZhdGUgYWxsb2NhdGVUZW1wb3JhcnkoKTogby5SZWFkVmFyRXhwciB7XG4gICAgY29uc3QgdGVtcE51bWJlciA9IHRoaXMuX2N1cnJlbnRUZW1wb3JhcnkrKztcbiAgICB0aGlzLnRlbXBvcmFyeUNvdW50ID0gTWF0aC5tYXgodGhpcy5fY3VycmVudFRlbXBvcmFyeSwgdGhpcy50ZW1wb3JhcnlDb3VudCk7XG4gICAgcmV0dXJuIG5ldyBvLlJlYWRWYXJFeHByKHRlbXBvcmFyeU5hbWUodGhpcy5iaW5kaW5nSWQsIHRlbXBOdW1iZXIpKTtcbiAgfVxuXG4gIHByaXZhdGUgcmVsZWFzZVRlbXBvcmFyeSh0ZW1wb3Jhcnk6IG8uUmVhZFZhckV4cHIpIHtcbiAgICB0aGlzLl9jdXJyZW50VGVtcG9yYXJ5LS07XG4gICAgaWYgKHRlbXBvcmFyeS5uYW1lICE9IHRlbXBvcmFyeU5hbWUodGhpcy5iaW5kaW5nSWQsIHRoaXMuX2N1cnJlbnRUZW1wb3JhcnkpKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoYFRlbXBvcmFyeSAke3RlbXBvcmFyeS5uYW1lfSByZWxlYXNlZCBvdXQgb2Ygb3JkZXJgKTtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogQ3JlYXRlcyBhbiBhYnNvbHV0ZSBgUGFyc2VTb3VyY2VTcGFuYCBmcm9tIHRoZSByZWxhdGl2ZSBgUGFyc2VTcGFuYC5cbiAgICpcbiAgICogYFBhcnNlU3BhbmAgb2JqZWN0cyBhcmUgcmVsYXRpdmUgdG8gdGhlIHN0YXJ0IG9mIHRoZSBleHByZXNzaW9uLlxuICAgKiBUaGlzIG1ldGhvZCBjb252ZXJ0cyB0aGVzZSB0byBmdWxsIGBQYXJzZVNvdXJjZVNwYW5gIG9iamVjdHMgdGhhdFxuICAgKiBzaG93IHdoZXJlIHRoZSBzcGFuIGlzIHdpdGhpbiB0aGUgb3ZlcmFsbCBzb3VyY2UgZmlsZS5cbiAgICpcbiAgICogQHBhcmFtIHNwYW4gdGhlIHJlbGF0aXZlIHNwYW4gdG8gY29udmVydC5cbiAgICogQHJldHVybnMgYSBgUGFyc2VTb3VyY2VTcGFuYCBmb3IgdGhlIGdpdmVuIHNwYW4gb3IgbnVsbCBpZiBub1xuICAgKiBgYmFzZVNvdXJjZVNwYW5gIHdhcyBwcm92aWRlZCB0byB0aGlzIGNsYXNzLlxuICAgKi9cbiAgcHJpdmF0ZSBjb252ZXJ0U291cmNlU3BhbihzcGFuOiBjZEFzdC5QYXJzZVNwYW4pIHtcbiAgICBpZiAodGhpcy5iYXNlU291cmNlU3Bhbikge1xuICAgICAgY29uc3Qgc3RhcnQgPSB0aGlzLmJhc2VTb3VyY2VTcGFuLnN0YXJ0Lm1vdmVCeShzcGFuLnN0YXJ0KTtcbiAgICAgIGNvbnN0IGVuZCA9IHRoaXMuYmFzZVNvdXJjZVNwYW4uc3RhcnQubW92ZUJ5KHNwYW4uZW5kKTtcbiAgICAgIHJldHVybiBuZXcgUGFyc2VTb3VyY2VTcGFuKHN0YXJ0LCBlbmQpO1xuICAgIH0gZWxzZSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gIH1cbn1cblxuZnVuY3Rpb24gZmxhdHRlblN0YXRlbWVudHMoYXJnOiBhbnksIG91dHB1dDogby5TdGF0ZW1lbnRbXSkge1xuICBpZiAoQXJyYXkuaXNBcnJheShhcmcpKSB7XG4gICAgKDxhbnlbXT5hcmcpLmZvckVhY2goKGVudHJ5KSA9PiBmbGF0dGVuU3RhdGVtZW50cyhlbnRyeSwgb3V0cHV0KSk7XG4gIH0gZWxzZSB7XG4gICAgb3V0cHV0LnB1c2goYXJnKTtcbiAgfVxufVxuXG5jbGFzcyBEZWZhdWx0TG9jYWxSZXNvbHZlciBpbXBsZW1lbnRzIExvY2FsUmVzb2x2ZXIge1xuICBub3RpZnlJbXBsaWNpdFJlY2VpdmVyVXNlKCk6IHZvaWQge31cbiAgZ2V0TG9jYWwobmFtZTogc3RyaW5nKTogby5FeHByZXNzaW9ufG51bGwge1xuICAgIGlmIChuYW1lID09PSBFdmVudEhhbmRsZXJWYXJzLmV2ZW50Lm5hbWUpIHtcbiAgICAgIHJldHVybiBFdmVudEhhbmRsZXJWYXJzLmV2ZW50O1xuICAgIH1cbiAgICByZXR1cm4gbnVsbDtcbiAgfVxufVxuXG5mdW5jdGlvbiBjcmVhdGVDdXJyVmFsdWVFeHByKGJpbmRpbmdJZDogc3RyaW5nKTogby5SZWFkVmFyRXhwciB7XG4gIHJldHVybiBvLnZhcmlhYmxlKGBjdXJyVmFsXyR7YmluZGluZ0lkfWApOyAgLy8gZml4IHN5bnRheCBoaWdobGlnaHRpbmc6IGBcbn1cblxuZnVuY3Rpb24gY3JlYXRlUHJldmVudERlZmF1bHRWYXIoYmluZGluZ0lkOiBzdHJpbmcpOiBvLlJlYWRWYXJFeHByIHtcbiAgcmV0dXJuIG8udmFyaWFibGUoYHBkXyR7YmluZGluZ0lkfWApO1xufVxuXG5mdW5jdGlvbiBjb252ZXJ0U3RtdEludG9FeHByZXNzaW9uKHN0bXQ6IG8uU3RhdGVtZW50KTogby5FeHByZXNzaW9ufG51bGwge1xuICBpZiAoc3RtdCBpbnN0YW5jZW9mIG8uRXhwcmVzc2lvblN0YXRlbWVudCkge1xuICAgIHJldHVybiBzdG10LmV4cHI7XG4gIH0gZWxzZSBpZiAoc3RtdCBpbnN0YW5jZW9mIG8uUmV0dXJuU3RhdGVtZW50KSB7XG4gICAgcmV0dXJuIHN0bXQudmFsdWU7XG4gIH1cbiAgcmV0dXJuIG51bGw7XG59XG5cbmV4cG9ydCBjbGFzcyBCdWlsdGluRnVuY3Rpb25DYWxsIGV4dGVuZHMgY2RBc3QuRnVuY3Rpb25DYWxsIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBzcGFuOiBjZEFzdC5QYXJzZVNwYW4sIHNvdXJjZVNwYW46IGNkQXN0LkFic29sdXRlU291cmNlU3BhbiwgcHVibGljIGFyZ3M6IGNkQXN0LkFTVFtdLFxuICAgICAgcHVibGljIGNvbnZlcnRlcjogQnVpbHRpbkNvbnZlcnRlcikge1xuICAgIHN1cGVyKHNwYW4sIHNvdXJjZVNwYW4sIG51bGwsIGFyZ3MpO1xuICB9XG59XG4iXX0=