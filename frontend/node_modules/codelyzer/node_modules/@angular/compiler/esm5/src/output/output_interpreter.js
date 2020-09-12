import { __read, __spread } from "tslib";
import * as o from './output_ast';
import { debugOutputAstAsTypeScript } from './ts_emitter';
export function interpretStatements(statements, reflector) {
    var ctx = new _ExecutionContext(null, null, null, new Map());
    var visitor = new StatementInterpreter(reflector);
    visitor.visitAllStatements(statements, ctx);
    var result = {};
    ctx.exports.forEach(function (exportName) { result[exportName] = ctx.vars.get(exportName); });
    return result;
}
function _executeFunctionStatements(varNames, varValues, statements, ctx, visitor) {
    var childCtx = ctx.createChildWihtLocalVars();
    for (var i = 0; i < varNames.length; i++) {
        childCtx.vars.set(varNames[i], varValues[i]);
    }
    var result = visitor.visitAllStatements(statements, childCtx);
    return result ? result.value : null;
}
var _ExecutionContext = /** @class */ (function () {
    function _ExecutionContext(parent, instance, className, vars) {
        this.parent = parent;
        this.instance = instance;
        this.className = className;
        this.vars = vars;
        this.exports = [];
    }
    _ExecutionContext.prototype.createChildWihtLocalVars = function () {
        return new _ExecutionContext(this, this.instance, this.className, new Map());
    };
    return _ExecutionContext;
}());
var ReturnValue = /** @class */ (function () {
    function ReturnValue(value) {
        this.value = value;
    }
    return ReturnValue;
}());
function createDynamicClass(_classStmt, _ctx, _visitor) {
    var propertyDescriptors = {};
    _classStmt.getters.forEach(function (getter) {
        // Note: use `function` instead of arrow function to capture `this`
        propertyDescriptors[getter.name] = {
            configurable: false,
            get: function () {
                var instanceCtx = new _ExecutionContext(_ctx, this, _classStmt.name, _ctx.vars);
                return _executeFunctionStatements([], [], getter.body, instanceCtx, _visitor);
            }
        };
    });
    _classStmt.methods.forEach(function (method) {
        var paramNames = method.params.map(function (param) { return param.name; });
        // Note: use `function` instead of arrow function to capture `this`
        propertyDescriptors[method.name] = {
            writable: false,
            configurable: false,
            value: function () {
                var args = [];
                for (var _i = 0; _i < arguments.length; _i++) {
                    args[_i] = arguments[_i];
                }
                var instanceCtx = new _ExecutionContext(_ctx, this, _classStmt.name, _ctx.vars);
                return _executeFunctionStatements(paramNames, args, method.body, instanceCtx, _visitor);
            }
        };
    });
    var ctorParamNames = _classStmt.constructorMethod.params.map(function (param) { return param.name; });
    // Note: use `function` instead of arrow function to capture `this`
    var ctor = function () {
        var _this = this;
        var args = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            args[_i] = arguments[_i];
        }
        var instanceCtx = new _ExecutionContext(_ctx, this, _classStmt.name, _ctx.vars);
        _classStmt.fields.forEach(function (field) { _this[field.name] = undefined; });
        _executeFunctionStatements(ctorParamNames, args, _classStmt.constructorMethod.body, instanceCtx, _visitor);
    };
    var superClass = _classStmt.parent ? _classStmt.parent.visitExpression(_visitor, _ctx) : Object;
    ctor.prototype = Object.create(superClass.prototype, propertyDescriptors);
    return ctor;
}
var StatementInterpreter = /** @class */ (function () {
    function StatementInterpreter(reflector) {
        this.reflector = reflector;
    }
    StatementInterpreter.prototype.debugAst = function (ast) { return debugOutputAstAsTypeScript(ast); };
    StatementInterpreter.prototype.visitDeclareVarStmt = function (stmt, ctx) {
        var initialValue = stmt.value ? stmt.value.visitExpression(this, ctx) : undefined;
        ctx.vars.set(stmt.name, initialValue);
        if (stmt.hasModifier(o.StmtModifier.Exported)) {
            ctx.exports.push(stmt.name);
        }
        return null;
    };
    StatementInterpreter.prototype.visitWriteVarExpr = function (expr, ctx) {
        var value = expr.value.visitExpression(this, ctx);
        var currCtx = ctx;
        while (currCtx != null) {
            if (currCtx.vars.has(expr.name)) {
                currCtx.vars.set(expr.name, value);
                return value;
            }
            currCtx = currCtx.parent;
        }
        throw new Error("Not declared variable " + expr.name);
    };
    StatementInterpreter.prototype.visitWrappedNodeExpr = function (ast, ctx) {
        throw new Error('Cannot interpret a WrappedNodeExpr.');
    };
    StatementInterpreter.prototype.visitTypeofExpr = function (ast, ctx) {
        throw new Error('Cannot interpret a TypeofExpr');
    };
    StatementInterpreter.prototype.visitReadVarExpr = function (ast, ctx) {
        var varName = ast.name;
        if (ast.builtin != null) {
            switch (ast.builtin) {
                case o.BuiltinVar.Super:
                    return Object.getPrototypeOf(ctx.instance);
                case o.BuiltinVar.This:
                    return ctx.instance;
                case o.BuiltinVar.CatchError:
                    varName = CATCH_ERROR_VAR;
                    break;
                case o.BuiltinVar.CatchStack:
                    varName = CATCH_STACK_VAR;
                    break;
                default:
                    throw new Error("Unknown builtin variable " + ast.builtin);
            }
        }
        var currCtx = ctx;
        while (currCtx != null) {
            if (currCtx.vars.has(varName)) {
                return currCtx.vars.get(varName);
            }
            currCtx = currCtx.parent;
        }
        throw new Error("Not declared variable " + varName);
    };
    StatementInterpreter.prototype.visitWriteKeyExpr = function (expr, ctx) {
        var receiver = expr.receiver.visitExpression(this, ctx);
        var index = expr.index.visitExpression(this, ctx);
        var value = expr.value.visitExpression(this, ctx);
        receiver[index] = value;
        return value;
    };
    StatementInterpreter.prototype.visitWritePropExpr = function (expr, ctx) {
        var receiver = expr.receiver.visitExpression(this, ctx);
        var value = expr.value.visitExpression(this, ctx);
        receiver[expr.name] = value;
        return value;
    };
    StatementInterpreter.prototype.visitInvokeMethodExpr = function (expr, ctx) {
        var receiver = expr.receiver.visitExpression(this, ctx);
        var args = this.visitAllExpressions(expr.args, ctx);
        var result;
        if (expr.builtin != null) {
            switch (expr.builtin) {
                case o.BuiltinMethod.ConcatArray:
                    result = receiver.concat.apply(receiver, __spread(args));
                    break;
                case o.BuiltinMethod.SubscribeObservable:
                    result = receiver.subscribe({ next: args[0] });
                    break;
                case o.BuiltinMethod.Bind:
                    result = receiver.bind.apply(receiver, __spread(args));
                    break;
                default:
                    throw new Error("Unknown builtin method " + expr.builtin);
            }
        }
        else {
            result = receiver[expr.name].apply(receiver, args);
        }
        return result;
    };
    StatementInterpreter.prototype.visitInvokeFunctionExpr = function (stmt, ctx) {
        var args = this.visitAllExpressions(stmt.args, ctx);
        var fnExpr = stmt.fn;
        if (fnExpr instanceof o.ReadVarExpr && fnExpr.builtin === o.BuiltinVar.Super) {
            ctx.instance.constructor.prototype.constructor.apply(ctx.instance, args);
            return null;
        }
        else {
            var fn = stmt.fn.visitExpression(this, ctx);
            return fn.apply(null, args);
        }
    };
    StatementInterpreter.prototype.visitReturnStmt = function (stmt, ctx) {
        return new ReturnValue(stmt.value.visitExpression(this, ctx));
    };
    StatementInterpreter.prototype.visitDeclareClassStmt = function (stmt, ctx) {
        var clazz = createDynamicClass(stmt, ctx, this);
        ctx.vars.set(stmt.name, clazz);
        if (stmt.hasModifier(o.StmtModifier.Exported)) {
            ctx.exports.push(stmt.name);
        }
        return null;
    };
    StatementInterpreter.prototype.visitExpressionStmt = function (stmt, ctx) {
        return stmt.expr.visitExpression(this, ctx);
    };
    StatementInterpreter.prototype.visitIfStmt = function (stmt, ctx) {
        var condition = stmt.condition.visitExpression(this, ctx);
        if (condition) {
            return this.visitAllStatements(stmt.trueCase, ctx);
        }
        else if (stmt.falseCase != null) {
            return this.visitAllStatements(stmt.falseCase, ctx);
        }
        return null;
    };
    StatementInterpreter.prototype.visitTryCatchStmt = function (stmt, ctx) {
        try {
            return this.visitAllStatements(stmt.bodyStmts, ctx);
        }
        catch (e) {
            var childCtx = ctx.createChildWihtLocalVars();
            childCtx.vars.set(CATCH_ERROR_VAR, e);
            childCtx.vars.set(CATCH_STACK_VAR, e.stack);
            return this.visitAllStatements(stmt.catchStmts, childCtx);
        }
    };
    StatementInterpreter.prototype.visitThrowStmt = function (stmt, ctx) {
        throw stmt.error.visitExpression(this, ctx);
    };
    StatementInterpreter.prototype.visitCommentStmt = function (stmt, context) { return null; };
    StatementInterpreter.prototype.visitJSDocCommentStmt = function (stmt, context) { return null; };
    StatementInterpreter.prototype.visitInstantiateExpr = function (ast, ctx) {
        var args = this.visitAllExpressions(ast.args, ctx);
        var clazz = ast.classExpr.visitExpression(this, ctx);
        return new (clazz.bind.apply(clazz, __spread([void 0], args)))();
    };
    StatementInterpreter.prototype.visitLiteralExpr = function (ast, ctx) { return ast.value; };
    StatementInterpreter.prototype.visitLocalizedString = function (ast, context) { return null; };
    StatementInterpreter.prototype.visitExternalExpr = function (ast, ctx) {
        return this.reflector.resolveExternalReference(ast.value);
    };
    StatementInterpreter.prototype.visitConditionalExpr = function (ast, ctx) {
        if (ast.condition.visitExpression(this, ctx)) {
            return ast.trueCase.visitExpression(this, ctx);
        }
        else if (ast.falseCase != null) {
            return ast.falseCase.visitExpression(this, ctx);
        }
        return null;
    };
    StatementInterpreter.prototype.visitNotExpr = function (ast, ctx) {
        return !ast.condition.visitExpression(this, ctx);
    };
    StatementInterpreter.prototype.visitAssertNotNullExpr = function (ast, ctx) {
        return ast.condition.visitExpression(this, ctx);
    };
    StatementInterpreter.prototype.visitCastExpr = function (ast, ctx) {
        return ast.value.visitExpression(this, ctx);
    };
    StatementInterpreter.prototype.visitFunctionExpr = function (ast, ctx) {
        var paramNames = ast.params.map(function (param) { return param.name; });
        return _declareFn(paramNames, ast.statements, ctx, this);
    };
    StatementInterpreter.prototype.visitDeclareFunctionStmt = function (stmt, ctx) {
        var paramNames = stmt.params.map(function (param) { return param.name; });
        ctx.vars.set(stmt.name, _declareFn(paramNames, stmt.statements, ctx, this));
        if (stmt.hasModifier(o.StmtModifier.Exported)) {
            ctx.exports.push(stmt.name);
        }
        return null;
    };
    StatementInterpreter.prototype.visitBinaryOperatorExpr = function (ast, ctx) {
        var _this = this;
        var lhs = function () { return ast.lhs.visitExpression(_this, ctx); };
        var rhs = function () { return ast.rhs.visitExpression(_this, ctx); };
        switch (ast.operator) {
            case o.BinaryOperator.Equals:
                return lhs() == rhs();
            case o.BinaryOperator.Identical:
                return lhs() === rhs();
            case o.BinaryOperator.NotEquals:
                return lhs() != rhs();
            case o.BinaryOperator.NotIdentical:
                return lhs() !== rhs();
            case o.BinaryOperator.And:
                return lhs() && rhs();
            case o.BinaryOperator.Or:
                return lhs() || rhs();
            case o.BinaryOperator.Plus:
                return lhs() + rhs();
            case o.BinaryOperator.Minus:
                return lhs() - rhs();
            case o.BinaryOperator.Divide:
                return lhs() / rhs();
            case o.BinaryOperator.Multiply:
                return lhs() * rhs();
            case o.BinaryOperator.Modulo:
                return lhs() % rhs();
            case o.BinaryOperator.Lower:
                return lhs() < rhs();
            case o.BinaryOperator.LowerEquals:
                return lhs() <= rhs();
            case o.BinaryOperator.Bigger:
                return lhs() > rhs();
            case o.BinaryOperator.BiggerEquals:
                return lhs() >= rhs();
            default:
                throw new Error("Unknown operator " + ast.operator);
        }
    };
    StatementInterpreter.prototype.visitReadPropExpr = function (ast, ctx) {
        var result;
        var receiver = ast.receiver.visitExpression(this, ctx);
        result = receiver[ast.name];
        return result;
    };
    StatementInterpreter.prototype.visitReadKeyExpr = function (ast, ctx) {
        var receiver = ast.receiver.visitExpression(this, ctx);
        var prop = ast.index.visitExpression(this, ctx);
        return receiver[prop];
    };
    StatementInterpreter.prototype.visitLiteralArrayExpr = function (ast, ctx) {
        return this.visitAllExpressions(ast.entries, ctx);
    };
    StatementInterpreter.prototype.visitLiteralMapExpr = function (ast, ctx) {
        var _this = this;
        var result = {};
        ast.entries.forEach(function (entry) { return result[entry.key] = entry.value.visitExpression(_this, ctx); });
        return result;
    };
    StatementInterpreter.prototype.visitCommaExpr = function (ast, context) {
        var values = this.visitAllExpressions(ast.parts, context);
        return values[values.length - 1];
    };
    StatementInterpreter.prototype.visitAllExpressions = function (expressions, ctx) {
        var _this = this;
        return expressions.map(function (expr) { return expr.visitExpression(_this, ctx); });
    };
    StatementInterpreter.prototype.visitAllStatements = function (statements, ctx) {
        for (var i = 0; i < statements.length; i++) {
            var stmt = statements[i];
            var val = stmt.visitStatement(this, ctx);
            if (val instanceof ReturnValue) {
                return val;
            }
        }
        return null;
    };
    return StatementInterpreter;
}());
function _declareFn(varNames, statements, ctx, visitor) {
    return function () {
        var args = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            args[_i] = arguments[_i];
        }
        return _executeFunctionStatements(varNames, args, statements, ctx, visitor);
    };
}
var CATCH_ERROR_VAR = 'error';
var CATCH_STACK_VAR = 'stack';
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoib3V0cHV0X2ludGVycHJldGVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvc3JjL291dHB1dC9vdXRwdXRfaW50ZXJwcmV0ZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQVFBLE9BQU8sS0FBSyxDQUFDLE1BQU0sY0FBYyxDQUFDO0FBQ2xDLE9BQU8sRUFBQywwQkFBMEIsRUFBQyxNQUFNLGNBQWMsQ0FBQztBQUV4RCxNQUFNLFVBQVUsbUJBQW1CLENBQy9CLFVBQXlCLEVBQUUsU0FBMkI7SUFDeEQsSUFBTSxHQUFHLEdBQUcsSUFBSSxpQkFBaUIsQ0FBQyxJQUFJLEVBQUUsSUFBSSxFQUFFLElBQUksRUFBRSxJQUFJLEdBQUcsRUFBZSxDQUFDLENBQUM7SUFDNUUsSUFBTSxPQUFPLEdBQUcsSUFBSSxvQkFBb0IsQ0FBQyxTQUFTLENBQUMsQ0FBQztJQUNwRCxPQUFPLENBQUMsa0JBQWtCLENBQUMsVUFBVSxFQUFFLEdBQUcsQ0FBQyxDQUFDO0lBQzVDLElBQU0sTUFBTSxHQUF5QixFQUFFLENBQUM7SUFDeEMsR0FBRyxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsVUFBQyxVQUFVLElBQU8sTUFBTSxDQUFDLFVBQVUsQ0FBQyxHQUFHLEdBQUcsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7SUFDeEYsT0FBTyxNQUFNLENBQUM7QUFDaEIsQ0FBQztBQUVELFNBQVMsMEJBQTBCLENBQy9CLFFBQWtCLEVBQUUsU0FBZ0IsRUFBRSxVQUF5QixFQUFFLEdBQXNCLEVBQ3ZGLE9BQTZCO0lBQy9CLElBQU0sUUFBUSxHQUFHLEdBQUcsQ0FBQyx3QkFBd0IsRUFBRSxDQUFDO0lBQ2hELEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxRQUFRLENBQUMsTUFBTSxFQUFFLENBQUMsRUFBRSxFQUFFO1FBQ3hDLFFBQVEsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUMsRUFBRSxTQUFTLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztLQUM5QztJQUNELElBQU0sTUFBTSxHQUFHLE9BQU8sQ0FBQyxrQkFBa0IsQ0FBQyxVQUFVLEVBQUUsUUFBUSxDQUFDLENBQUM7SUFDaEUsT0FBTyxNQUFNLENBQUMsQ0FBQyxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQztBQUN0QyxDQUFDO0FBRUQ7SUFHRSwyQkFDVyxNQUE4QixFQUFTLFFBQXFCLEVBQzVELFNBQXNCLEVBQVMsSUFBc0I7UUFEckQsV0FBTSxHQUFOLE1BQU0sQ0FBd0I7UUFBUyxhQUFRLEdBQVIsUUFBUSxDQUFhO1FBQzVELGNBQVMsR0FBVCxTQUFTLENBQWE7UUFBUyxTQUFJLEdBQUosSUFBSSxDQUFrQjtRQUpoRSxZQUFPLEdBQWEsRUFBRSxDQUFDO0lBSTRDLENBQUM7SUFFcEUsb0RBQXdCLEdBQXhCO1FBQ0UsT0FBTyxJQUFJLGlCQUFpQixDQUFDLElBQUksRUFBRSxJQUFJLENBQUMsUUFBUSxFQUFFLElBQUksQ0FBQyxTQUFTLEVBQUUsSUFBSSxHQUFHLEVBQWUsQ0FBQyxDQUFDO0lBQzVGLENBQUM7SUFDSCx3QkFBQztBQUFELENBQUMsQUFWRCxJQVVDO0FBRUQ7SUFDRSxxQkFBbUIsS0FBVTtRQUFWLFVBQUssR0FBTCxLQUFLLENBQUs7SUFBRyxDQUFDO0lBQ25DLGtCQUFDO0FBQUQsQ0FBQyxBQUZELElBRUM7QUFFRCxTQUFTLGtCQUFrQixDQUN2QixVQUF1QixFQUFFLElBQXVCLEVBQUUsUUFBOEI7SUFDbEYsSUFBTSxtQkFBbUIsR0FBeUIsRUFBRSxDQUFDO0lBRXJELFVBQVUsQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLFVBQUMsTUFBcUI7UUFDL0MsbUVBQW1FO1FBQ25FLG1CQUFtQixDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsR0FBRztZQUNqQyxZQUFZLEVBQUUsS0FBSztZQUNuQixHQUFHLEVBQUU7Z0JBQ0gsSUFBTSxXQUFXLEdBQUcsSUFBSSxpQkFBaUIsQ0FBQyxJQUFJLEVBQUUsSUFBSSxFQUFFLFVBQVUsQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO2dCQUNsRixPQUFPLDBCQUEwQixDQUFDLEVBQUUsRUFBRSxFQUFFLEVBQUUsTUFBTSxDQUFDLElBQUksRUFBRSxXQUFXLEVBQUUsUUFBUSxDQUFDLENBQUM7WUFDaEYsQ0FBQztTQUNGLENBQUM7SUFDSixDQUFDLENBQUMsQ0FBQztJQUNILFVBQVUsQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLFVBQVMsTUFBcUI7UUFDdkQsSUFBTSxVQUFVLEdBQUcsTUFBTSxDQUFDLE1BQU0sQ0FBQyxHQUFHLENBQUMsVUFBQSxLQUFLLElBQUksT0FBQSxLQUFLLENBQUMsSUFBSSxFQUFWLENBQVUsQ0FBQyxDQUFDO1FBQzFELG1FQUFtRTtRQUNuRSxtQkFBbUIsQ0FBQyxNQUFNLENBQUMsSUFBTSxDQUFDLEdBQUc7WUFDbkMsUUFBUSxFQUFFLEtBQUs7WUFDZixZQUFZLEVBQUUsS0FBSztZQUNuQixLQUFLLEVBQUU7Z0JBQVMsY0FBYztxQkFBZCxVQUFjLEVBQWQscUJBQWMsRUFBZCxJQUFjO29CQUFkLHlCQUFjOztnQkFDNUIsSUFBTSxXQUFXLEdBQUcsSUFBSSxpQkFBaUIsQ0FBQyxJQUFJLEVBQUUsSUFBSSxFQUFFLFVBQVUsQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO2dCQUNsRixPQUFPLDBCQUEwQixDQUFDLFVBQVUsRUFBRSxJQUFJLEVBQUUsTUFBTSxDQUFDLElBQUksRUFBRSxXQUFXLEVBQUUsUUFBUSxDQUFDLENBQUM7WUFDMUYsQ0FBQztTQUNGLENBQUM7SUFDSixDQUFDLENBQUMsQ0FBQztJQUVILElBQU0sY0FBYyxHQUFHLFVBQVUsQ0FBQyxpQkFBaUIsQ0FBQyxNQUFNLENBQUMsR0FBRyxDQUFDLFVBQUEsS0FBSyxJQUFJLE9BQUEsS0FBSyxDQUFDLElBQUksRUFBVixDQUFVLENBQUMsQ0FBQztJQUNwRixtRUFBbUU7SUFDbkUsSUFBTSxJQUFJLEdBQUc7UUFBQSxpQkFLWjtRQUxtQyxjQUFjO2FBQWQsVUFBYyxFQUFkLHFCQUFjLEVBQWQsSUFBYztZQUFkLHlCQUFjOztRQUNoRCxJQUFNLFdBQVcsR0FBRyxJQUFJLGlCQUFpQixDQUFDLElBQUksRUFBRSxJQUFJLEVBQUUsVUFBVSxDQUFDLElBQUksRUFBRSxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDbEYsVUFBVSxDQUFDLE1BQU0sQ0FBQyxPQUFPLENBQUMsVUFBQyxLQUFLLElBQVEsS0FBWSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsR0FBRyxTQUFTLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNqRiwwQkFBMEIsQ0FDdEIsY0FBYyxFQUFFLElBQUksRUFBRSxVQUFVLENBQUMsaUJBQWlCLENBQUMsSUFBSSxFQUFFLFdBQVcsRUFBRSxRQUFRLENBQUMsQ0FBQztJQUN0RixDQUFDLENBQUM7SUFDRixJQUFNLFVBQVUsR0FBRyxVQUFVLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQyxVQUFVLENBQUMsTUFBTSxDQUFDLGVBQWUsQ0FBQyxRQUFRLEVBQUUsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDLE1BQU0sQ0FBQztJQUNsRyxJQUFJLENBQUMsU0FBUyxHQUFHLE1BQU0sQ0FBQyxNQUFNLENBQUMsVUFBVSxDQUFDLFNBQVMsRUFBRSxtQkFBbUIsQ0FBQyxDQUFDO0lBQzFFLE9BQU8sSUFBSSxDQUFDO0FBQ2QsQ0FBQztBQUVEO0lBQ0UsOEJBQW9CLFNBQTJCO1FBQTNCLGNBQVMsR0FBVCxTQUFTLENBQWtCO0lBQUcsQ0FBQztJQUNuRCx1Q0FBUSxHQUFSLFVBQVMsR0FBb0MsSUFBWSxPQUFPLDBCQUEwQixDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUVsRyxrREFBbUIsR0FBbkIsVUFBb0IsSUFBc0IsRUFBRSxHQUFzQjtRQUNoRSxJQUFNLFlBQVksR0FBRyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLGVBQWUsQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLENBQUMsQ0FBQyxDQUFDLFNBQVMsQ0FBQztRQUNwRixHQUFHLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsSUFBSSxFQUFFLFlBQVksQ0FBQyxDQUFDO1FBQ3RDLElBQUksSUFBSSxDQUFDLFdBQVcsQ0FBQyxDQUFDLENBQUMsWUFBWSxDQUFDLFFBQVEsQ0FBQyxFQUFFO1lBQzdDLEdBQUcsQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztTQUM3QjtRQUNELE9BQU8sSUFBSSxDQUFDO0lBQ2QsQ0FBQztJQUNELGdEQUFpQixHQUFqQixVQUFrQixJQUFvQixFQUFFLEdBQXNCO1FBQzVELElBQU0sS0FBSyxHQUFHLElBQUksQ0FBQyxLQUFLLENBQUMsZUFBZSxDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsQ0FBQztRQUNwRCxJQUFJLE9BQU8sR0FBRyxHQUFHLENBQUM7UUFDbEIsT0FBTyxPQUFPLElBQUksSUFBSSxFQUFFO1lBQ3RCLElBQUksT0FBTyxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxFQUFFO2dCQUMvQixPQUFPLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsSUFBSSxFQUFFLEtBQUssQ0FBQyxDQUFDO2dCQUNuQyxPQUFPLEtBQUssQ0FBQzthQUNkO1lBQ0QsT0FBTyxHQUFHLE9BQU8sQ0FBQyxNQUFRLENBQUM7U0FDNUI7UUFDRCxNQUFNLElBQUksS0FBSyxDQUFDLDJCQUF5QixJQUFJLENBQUMsSUFBTSxDQUFDLENBQUM7SUFDeEQsQ0FBQztJQUNELG1EQUFvQixHQUFwQixVQUFxQixHQUEyQixFQUFFLEdBQXNCO1FBQ3RFLE1BQU0sSUFBSSxLQUFLLENBQUMscUNBQXFDLENBQUMsQ0FBQztJQUN6RCxDQUFDO0lBQ0QsOENBQWUsR0FBZixVQUFnQixHQUFpQixFQUFFLEdBQXNCO1FBQ3ZELE1BQU0sSUFBSSxLQUFLLENBQUMsK0JBQStCLENBQUMsQ0FBQztJQUNuRCxDQUFDO0lBQ0QsK0NBQWdCLEdBQWhCLFVBQWlCLEdBQWtCLEVBQUUsR0FBc0I7UUFDekQsSUFBSSxPQUFPLEdBQUcsR0FBRyxDQUFDLElBQU0sQ0FBQztRQUN6QixJQUFJLEdBQUcsQ0FBQyxPQUFPLElBQUksSUFBSSxFQUFFO1lBQ3ZCLFFBQVEsR0FBRyxDQUFDLE9BQU8sRUFBRTtnQkFDbkIsS0FBSyxDQUFDLENBQUMsVUFBVSxDQUFDLEtBQUs7b0JBQ3JCLE9BQU8sTUFBTSxDQUFDLGNBQWMsQ0FBQyxHQUFHLENBQUMsUUFBUSxDQUFDLENBQUM7Z0JBQzdDLEtBQUssQ0FBQyxDQUFDLFVBQVUsQ0FBQyxJQUFJO29CQUNwQixPQUFPLEdBQUcsQ0FBQyxRQUFRLENBQUM7Z0JBQ3RCLEtBQUssQ0FBQyxDQUFDLFVBQVUsQ0FBQyxVQUFVO29CQUMxQixPQUFPLEdBQUcsZUFBZSxDQUFDO29CQUMxQixNQUFNO2dCQUNSLEtBQUssQ0FBQyxDQUFDLFVBQVUsQ0FBQyxVQUFVO29CQUMxQixPQUFPLEdBQUcsZUFBZSxDQUFDO29CQUMxQixNQUFNO2dCQUNSO29CQUNFLE1BQU0sSUFBSSxLQUFLLENBQUMsOEJBQTRCLEdBQUcsQ0FBQyxPQUFTLENBQUMsQ0FBQzthQUM5RDtTQUNGO1FBQ0QsSUFBSSxPQUFPLEdBQUcsR0FBRyxDQUFDO1FBQ2xCLE9BQU8sT0FBTyxJQUFJLElBQUksRUFBRTtZQUN0QixJQUFJLE9BQU8sQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLE9BQU8sQ0FBQyxFQUFFO2dCQUM3QixPQUFPLE9BQU8sQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLE9BQU8sQ0FBQyxDQUFDO2FBQ2xDO1lBQ0QsT0FBTyxHQUFHLE9BQU8sQ0FBQyxNQUFRLENBQUM7U0FDNUI7UUFDRCxNQUFNLElBQUksS0FBSyxDQUFDLDJCQUF5QixPQUFTLENBQUMsQ0FBQztJQUN0RCxDQUFDO0lBQ0QsZ0RBQWlCLEdBQWpCLFVBQWtCLElBQW9CLEVBQUUsR0FBc0I7UUFDNUQsSUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLFFBQVEsQ0FBQyxlQUFlLENBQUMsSUFBSSxFQUFFLEdBQUcsQ0FBQyxDQUFDO1FBQzFELElBQU0sS0FBSyxHQUFHLElBQUksQ0FBQyxLQUFLLENBQUMsZUFBZSxDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsQ0FBQztRQUNwRCxJQUFNLEtBQUssR0FBRyxJQUFJLENBQUMsS0FBSyxDQUFDLGVBQWUsQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLENBQUM7UUFDcEQsUUFBUSxDQUFDLEtBQUssQ0FBQyxHQUFHLEtBQUssQ0FBQztRQUN4QixPQUFPLEtBQUssQ0FBQztJQUNmLENBQUM7SUFDRCxpREFBa0IsR0FBbEIsVUFBbUIsSUFBcUIsRUFBRSxHQUFzQjtRQUM5RCxJQUFNLFFBQVEsR0FBRyxJQUFJLENBQUMsUUFBUSxDQUFDLGVBQWUsQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLENBQUM7UUFDMUQsSUFBTSxLQUFLLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxlQUFlLENBQUMsSUFBSSxFQUFFLEdBQUcsQ0FBQyxDQUFDO1FBQ3BELFFBQVEsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLEdBQUcsS0FBSyxDQUFDO1FBQzVCLE9BQU8sS0FBSyxDQUFDO0lBQ2YsQ0FBQztJQUVELG9EQUFxQixHQUFyQixVQUFzQixJQUF3QixFQUFFLEdBQXNCO1FBQ3BFLElBQU0sUUFBUSxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsZUFBZSxDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsQ0FBQztRQUMxRCxJQUFNLElBQUksR0FBRyxJQUFJLENBQUMsbUJBQW1CLENBQUMsSUFBSSxDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsQ0FBQztRQUN0RCxJQUFJLE1BQVcsQ0FBQztRQUNoQixJQUFJLElBQUksQ0FBQyxPQUFPLElBQUksSUFBSSxFQUFFO1lBQ3hCLFFBQVEsSUFBSSxDQUFDLE9BQU8sRUFBRTtnQkFDcEIsS0FBSyxDQUFDLENBQUMsYUFBYSxDQUFDLFdBQVc7b0JBQzlCLE1BQU0sR0FBRyxRQUFRLENBQUMsTUFBTSxPQUFmLFFBQVEsV0FBVyxJQUFJLEVBQUMsQ0FBQztvQkFDbEMsTUFBTTtnQkFDUixLQUFLLENBQUMsQ0FBQyxhQUFhLENBQUMsbUJBQW1CO29CQUN0QyxNQUFNLEdBQUcsUUFBUSxDQUFDLFNBQVMsQ0FBQyxFQUFDLElBQUksRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDLEVBQUMsQ0FBQyxDQUFDO29CQUM3QyxNQUFNO2dCQUNSLEtBQUssQ0FBQyxDQUFDLGFBQWEsQ0FBQyxJQUFJO29CQUN2QixNQUFNLEdBQUcsUUFBUSxDQUFDLElBQUksT0FBYixRQUFRLFdBQVMsSUFBSSxFQUFDLENBQUM7b0JBQ2hDLE1BQU07Z0JBQ1I7b0JBQ0UsTUFBTSxJQUFJLEtBQUssQ0FBQyw0QkFBMEIsSUFBSSxDQUFDLE9BQVMsQ0FBQyxDQUFDO2FBQzdEO1NBQ0Y7YUFBTTtZQUNMLE1BQU0sR0FBRyxRQUFRLENBQUMsSUFBSSxDQUFDLElBQU0sQ0FBQyxDQUFDLEtBQUssQ0FBQyxRQUFRLEVBQUUsSUFBSSxDQUFDLENBQUM7U0FDdEQ7UUFDRCxPQUFPLE1BQU0sQ0FBQztJQUNoQixDQUFDO0lBQ0Qsc0RBQXVCLEdBQXZCLFVBQXdCLElBQTBCLEVBQUUsR0FBc0I7UUFDeEUsSUFBTSxJQUFJLEdBQUcsSUFBSSxDQUFDLG1CQUFtQixDQUFDLElBQUksQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLENBQUM7UUFDdEQsSUFBTSxNQUFNLEdBQUcsSUFBSSxDQUFDLEVBQUUsQ0FBQztRQUN2QixJQUFJLE1BQU0sWUFBWSxDQUFDLENBQUMsV0FBVyxJQUFJLE1BQU0sQ0FBQyxPQUFPLEtBQUssQ0FBQyxDQUFDLFVBQVUsQ0FBQyxLQUFLLEVBQUU7WUFDNUUsR0FBRyxDQUFDLFFBQVUsQ0FBQyxXQUFXLENBQUMsU0FBUyxDQUFDLFdBQVcsQ0FBQyxLQUFLLENBQUMsR0FBRyxDQUFDLFFBQVEsRUFBRSxJQUFJLENBQUMsQ0FBQztZQUMzRSxPQUFPLElBQUksQ0FBQztTQUNiO2FBQU07WUFDTCxJQUFNLEVBQUUsR0FBRyxJQUFJLENBQUMsRUFBRSxDQUFDLGVBQWUsQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLENBQUM7WUFDOUMsT0FBTyxFQUFFLENBQUMsS0FBSyxDQUFDLElBQUksRUFBRSxJQUFJLENBQUMsQ0FBQztTQUM3QjtJQUNILENBQUM7SUFDRCw4Q0FBZSxHQUFmLFVBQWdCLElBQXVCLEVBQUUsR0FBc0I7UUFDN0QsT0FBTyxJQUFJLFdBQVcsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLGVBQWUsQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLENBQUMsQ0FBQztJQUNoRSxDQUFDO0lBQ0Qsb0RBQXFCLEdBQXJCLFVBQXNCLElBQWlCLEVBQUUsR0FBc0I7UUFDN0QsSUFBTSxLQUFLLEdBQUcsa0JBQWtCLENBQUMsSUFBSSxFQUFFLEdBQUcsRUFBRSxJQUFJLENBQUMsQ0FBQztRQUNsRCxHQUFHLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsSUFBSSxFQUFFLEtBQUssQ0FBQyxDQUFDO1FBQy9CLElBQUksSUFBSSxDQUFDLFdBQVcsQ0FBQyxDQUFDLENBQUMsWUFBWSxDQUFDLFFBQVEsQ0FBQyxFQUFFO1lBQzdDLEdBQUcsQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztTQUM3QjtRQUNELE9BQU8sSUFBSSxDQUFDO0lBQ2QsQ0FBQztJQUNELGtEQUFtQixHQUFuQixVQUFvQixJQUEyQixFQUFFLEdBQXNCO1FBQ3JFLE9BQU8sSUFBSSxDQUFDLElBQUksQ0FBQyxlQUFlLENBQUMsSUFBSSxFQUFFLEdBQUcsQ0FBQyxDQUFDO0lBQzlDLENBQUM7SUFDRCwwQ0FBVyxHQUFYLFVBQVksSUFBYyxFQUFFLEdBQXNCO1FBQ2hELElBQU0sU0FBUyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsZUFBZSxDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsQ0FBQztRQUM1RCxJQUFJLFNBQVMsRUFBRTtZQUNiLE9BQU8sSUFBSSxDQUFDLGtCQUFrQixDQUFDLElBQUksQ0FBQyxRQUFRLEVBQUUsR0FBRyxDQUFDLENBQUM7U0FDcEQ7YUFBTSxJQUFJLElBQUksQ0FBQyxTQUFTLElBQUksSUFBSSxFQUFFO1lBQ2pDLE9BQU8sSUFBSSxDQUFDLGtCQUFrQixDQUFDLElBQUksQ0FBQyxTQUFTLEVBQUUsR0FBRyxDQUFDLENBQUM7U0FDckQ7UUFDRCxPQUFPLElBQUksQ0FBQztJQUNkLENBQUM7SUFDRCxnREFBaUIsR0FBakIsVUFBa0IsSUFBb0IsRUFBRSxHQUFzQjtRQUM1RCxJQUFJO1lBQ0YsT0FBTyxJQUFJLENBQUMsa0JBQWtCLENBQUMsSUFBSSxDQUFDLFNBQVMsRUFBRSxHQUFHLENBQUMsQ0FBQztTQUNyRDtRQUFDLE9BQU8sQ0FBQyxFQUFFO1lBQ1YsSUFBTSxRQUFRLEdBQUcsR0FBRyxDQUFDLHdCQUF3QixFQUFFLENBQUM7WUFDaEQsUUFBUSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsZUFBZSxFQUFFLENBQUMsQ0FBQyxDQUFDO1lBQ3RDLFFBQVEsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLGVBQWUsRUFBRSxDQUFDLENBQUMsS0FBSyxDQUFDLENBQUM7WUFDNUMsT0FBTyxJQUFJLENBQUMsa0JBQWtCLENBQUMsSUFBSSxDQUFDLFVBQVUsRUFBRSxRQUFRLENBQUMsQ0FBQztTQUMzRDtJQUNILENBQUM7SUFDRCw2Q0FBYyxHQUFkLFVBQWUsSUFBaUIsRUFBRSxHQUFzQjtRQUN0RCxNQUFNLElBQUksQ0FBQyxLQUFLLENBQUMsZUFBZSxDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsQ0FBQztJQUM5QyxDQUFDO0lBQ0QsK0NBQWdCLEdBQWhCLFVBQWlCLElBQW1CLEVBQUUsT0FBYSxJQUFTLE9BQU8sSUFBSSxDQUFDLENBQUMsQ0FBQztJQUMxRSxvREFBcUIsR0FBckIsVUFBc0IsSUFBd0IsRUFBRSxPQUFhLElBQVMsT0FBTyxJQUFJLENBQUMsQ0FBQyxDQUFDO0lBQ3BGLG1EQUFvQixHQUFwQixVQUFxQixHQUFzQixFQUFFLEdBQXNCO1FBQ2pFLElBQU0sSUFBSSxHQUFHLElBQUksQ0FBQyxtQkFBbUIsQ0FBQyxHQUFHLENBQUMsSUFBSSxFQUFFLEdBQUcsQ0FBQyxDQUFDO1FBQ3JELElBQU0sS0FBSyxHQUFHLEdBQUcsQ0FBQyxTQUFTLENBQUMsZUFBZSxDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsQ0FBQztRQUN2RCxZQUFXLEtBQUssWUFBTCxLQUFLLHFCQUFJLElBQUksTUFBRTtJQUM1QixDQUFDO0lBQ0QsK0NBQWdCLEdBQWhCLFVBQWlCLEdBQWtCLEVBQUUsR0FBc0IsSUFBUyxPQUFPLEdBQUcsQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDO0lBQ3ZGLG1EQUFvQixHQUFwQixVQUFxQixHQUFzQixFQUFFLE9BQVksSUFBUyxPQUFPLElBQUksQ0FBQyxDQUFDLENBQUM7SUFDaEYsZ0RBQWlCLEdBQWpCLFVBQWtCLEdBQW1CLEVBQUUsR0FBc0I7UUFDM0QsT0FBTyxJQUFJLENBQUMsU0FBUyxDQUFDLHdCQUF3QixDQUFDLEdBQUcsQ0FBQyxLQUFLLENBQUMsQ0FBQztJQUM1RCxDQUFDO0lBQ0QsbURBQW9CLEdBQXBCLFVBQXFCLEdBQXNCLEVBQUUsR0FBc0I7UUFDakUsSUFBSSxHQUFHLENBQUMsU0FBUyxDQUFDLGVBQWUsQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLEVBQUU7WUFDNUMsT0FBTyxHQUFHLENBQUMsUUFBUSxDQUFDLGVBQWUsQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLENBQUM7U0FDaEQ7YUFBTSxJQUFJLEdBQUcsQ0FBQyxTQUFTLElBQUksSUFBSSxFQUFFO1lBQ2hDLE9BQU8sR0FBRyxDQUFDLFNBQVMsQ0FBQyxlQUFlLENBQUMsSUFBSSxFQUFFLEdBQUcsQ0FBQyxDQUFDO1NBQ2pEO1FBQ0QsT0FBTyxJQUFJLENBQUM7SUFDZCxDQUFDO0lBQ0QsMkNBQVksR0FBWixVQUFhLEdBQWMsRUFBRSxHQUFzQjtRQUNqRCxPQUFPLENBQUMsR0FBRyxDQUFDLFNBQVMsQ0FBQyxlQUFlLENBQUMsSUFBSSxFQUFFLEdBQUcsQ0FBQyxDQUFDO0lBQ25ELENBQUM7SUFDRCxxREFBc0IsR0FBdEIsVUFBdUIsR0FBb0IsRUFBRSxHQUFzQjtRQUNqRSxPQUFPLEdBQUcsQ0FBQyxTQUFTLENBQUMsZUFBZSxDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsQ0FBQztJQUNsRCxDQUFDO0lBQ0QsNENBQWEsR0FBYixVQUFjLEdBQWUsRUFBRSxHQUFzQjtRQUNuRCxPQUFPLEdBQUcsQ0FBQyxLQUFLLENBQUMsZUFBZSxDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsQ0FBQztJQUM5QyxDQUFDO0lBQ0QsZ0RBQWlCLEdBQWpCLFVBQWtCLEdBQW1CLEVBQUUsR0FBc0I7UUFDM0QsSUFBTSxVQUFVLEdBQUcsR0FBRyxDQUFDLE1BQU0sQ0FBQyxHQUFHLENBQUMsVUFBQyxLQUFLLElBQUssT0FBQSxLQUFLLENBQUMsSUFBSSxFQUFWLENBQVUsQ0FBQyxDQUFDO1FBQ3pELE9BQU8sVUFBVSxDQUFDLFVBQVUsRUFBRSxHQUFHLENBQUMsVUFBVSxFQUFFLEdBQUcsRUFBRSxJQUFJLENBQUMsQ0FBQztJQUMzRCxDQUFDO0lBQ0QsdURBQXdCLEdBQXhCLFVBQXlCLElBQTJCLEVBQUUsR0FBc0I7UUFDMUUsSUFBTSxVQUFVLEdBQUcsSUFBSSxDQUFDLE1BQU0sQ0FBQyxHQUFHLENBQUMsVUFBQyxLQUFLLElBQUssT0FBQSxLQUFLLENBQUMsSUFBSSxFQUFWLENBQVUsQ0FBQyxDQUFDO1FBQzFELEdBQUcsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxJQUFJLEVBQUUsVUFBVSxDQUFDLFVBQVUsRUFBRSxJQUFJLENBQUMsVUFBVSxFQUFFLEdBQUcsRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDO1FBQzVFLElBQUksSUFBSSxDQUFDLFdBQVcsQ0FBQyxDQUFDLENBQUMsWUFBWSxDQUFDLFFBQVEsQ0FBQyxFQUFFO1lBQzdDLEdBQUcsQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztTQUM3QjtRQUNELE9BQU8sSUFBSSxDQUFDO0lBQ2QsQ0FBQztJQUNELHNEQUF1QixHQUF2QixVQUF3QixHQUF5QixFQUFFLEdBQXNCO1FBQXpFLGlCQXNDQztRQXJDQyxJQUFNLEdBQUcsR0FBRyxjQUFNLE9BQUEsR0FBRyxDQUFDLEdBQUcsQ0FBQyxlQUFlLENBQUMsS0FBSSxFQUFFLEdBQUcsQ0FBQyxFQUFsQyxDQUFrQyxDQUFDO1FBQ3JELElBQU0sR0FBRyxHQUFHLGNBQU0sT0FBQSxHQUFHLENBQUMsR0FBRyxDQUFDLGVBQWUsQ0FBQyxLQUFJLEVBQUUsR0FBRyxDQUFDLEVBQWxDLENBQWtDLENBQUM7UUFFckQsUUFBUSxHQUFHLENBQUMsUUFBUSxFQUFFO1lBQ3BCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxNQUFNO2dCQUMxQixPQUFPLEdBQUcsRUFBRSxJQUFJLEdBQUcsRUFBRSxDQUFDO1lBQ3hCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxTQUFTO2dCQUM3QixPQUFPLEdBQUcsRUFBRSxLQUFLLEdBQUcsRUFBRSxDQUFDO1lBQ3pCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxTQUFTO2dCQUM3QixPQUFPLEdBQUcsRUFBRSxJQUFJLEdBQUcsRUFBRSxDQUFDO1lBQ3hCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxZQUFZO2dCQUNoQyxPQUFPLEdBQUcsRUFBRSxLQUFLLEdBQUcsRUFBRSxDQUFDO1lBQ3pCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxHQUFHO2dCQUN2QixPQUFPLEdBQUcsRUFBRSxJQUFJLEdBQUcsRUFBRSxDQUFDO1lBQ3hCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxFQUFFO2dCQUN0QixPQUFPLEdBQUcsRUFBRSxJQUFJLEdBQUcsRUFBRSxDQUFDO1lBQ3hCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxJQUFJO2dCQUN4QixPQUFPLEdBQUcsRUFBRSxHQUFHLEdBQUcsRUFBRSxDQUFDO1lBQ3ZCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxLQUFLO2dCQUN6QixPQUFPLEdBQUcsRUFBRSxHQUFHLEdBQUcsRUFBRSxDQUFDO1lBQ3ZCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxNQUFNO2dCQUMxQixPQUFPLEdBQUcsRUFBRSxHQUFHLEdBQUcsRUFBRSxDQUFDO1lBQ3ZCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxRQUFRO2dCQUM1QixPQUFPLEdBQUcsRUFBRSxHQUFHLEdBQUcsRUFBRSxDQUFDO1lBQ3ZCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxNQUFNO2dCQUMxQixPQUFPLEdBQUcsRUFBRSxHQUFHLEdBQUcsRUFBRSxDQUFDO1lBQ3ZCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxLQUFLO2dCQUN6QixPQUFPLEdBQUcsRUFBRSxHQUFHLEdBQUcsRUFBRSxDQUFDO1lBQ3ZCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxXQUFXO2dCQUMvQixPQUFPLEdBQUcsRUFBRSxJQUFJLEdBQUcsRUFBRSxDQUFDO1lBQ3hCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxNQUFNO2dCQUMxQixPQUFPLEdBQUcsRUFBRSxHQUFHLEdBQUcsRUFBRSxDQUFDO1lBQ3ZCLEtBQUssQ0FBQyxDQUFDLGNBQWMsQ0FBQyxZQUFZO2dCQUNoQyxPQUFPLEdBQUcsRUFBRSxJQUFJLEdBQUcsRUFBRSxDQUFDO1lBQ3hCO2dCQUNFLE1BQU0sSUFBSSxLQUFLLENBQUMsc0JBQW9CLEdBQUcsQ0FBQyxRQUFVLENBQUMsQ0FBQztTQUN2RDtJQUNILENBQUM7SUFDRCxnREFBaUIsR0FBakIsVUFBa0IsR0FBbUIsRUFBRSxHQUFzQjtRQUMzRCxJQUFJLE1BQVcsQ0FBQztRQUNoQixJQUFNLFFBQVEsR0FBRyxHQUFHLENBQUMsUUFBUSxDQUFDLGVBQWUsQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLENBQUM7UUFDekQsTUFBTSxHQUFHLFFBQVEsQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDNUIsT0FBTyxNQUFNLENBQUM7SUFDaEIsQ0FBQztJQUNELCtDQUFnQixHQUFoQixVQUFpQixHQUFrQixFQUFFLEdBQXNCO1FBQ3pELElBQU0sUUFBUSxHQUFHLEdBQUcsQ0FBQyxRQUFRLENBQUMsZUFBZSxDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsQ0FBQztRQUN6RCxJQUFNLElBQUksR0FBRyxHQUFHLENBQUMsS0FBSyxDQUFDLGVBQWUsQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLENBQUM7UUFDbEQsT0FBTyxRQUFRLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDeEIsQ0FBQztJQUNELG9EQUFxQixHQUFyQixVQUFzQixHQUF1QixFQUFFLEdBQXNCO1FBQ25FLE9BQU8sSUFBSSxDQUFDLG1CQUFtQixDQUFDLEdBQUcsQ0FBQyxPQUFPLEVBQUUsR0FBRyxDQUFDLENBQUM7SUFDcEQsQ0FBQztJQUNELGtEQUFtQixHQUFuQixVQUFvQixHQUFxQixFQUFFLEdBQXNCO1FBQWpFLGlCQUlDO1FBSEMsSUFBTSxNQUFNLEdBQXVCLEVBQUUsQ0FBQztRQUN0QyxHQUFHLENBQUMsT0FBTyxDQUFDLE9BQU8sQ0FBQyxVQUFBLEtBQUssSUFBSSxPQUFBLE1BQU0sQ0FBQyxLQUFLLENBQUMsR0FBRyxDQUFDLEdBQUcsS0FBSyxDQUFDLEtBQUssQ0FBQyxlQUFlLENBQUMsS0FBSSxFQUFFLEdBQUcsQ0FBQyxFQUExRCxDQUEwRCxDQUFDLENBQUM7UUFDekYsT0FBTyxNQUFNLENBQUM7SUFDaEIsQ0FBQztJQUNELDZDQUFjLEdBQWQsVUFBZSxHQUFnQixFQUFFLE9BQVk7UUFDM0MsSUFBTSxNQUFNLEdBQUcsSUFBSSxDQUFDLG1CQUFtQixDQUFDLEdBQUcsQ0FBQyxLQUFLLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFDNUQsT0FBTyxNQUFNLENBQUMsTUFBTSxDQUFDLE1BQU0sR0FBRyxDQUFDLENBQUMsQ0FBQztJQUNuQyxDQUFDO0lBQ0Qsa0RBQW1CLEdBQW5CLFVBQW9CLFdBQTJCLEVBQUUsR0FBc0I7UUFBdkUsaUJBRUM7UUFEQyxPQUFPLFdBQVcsQ0FBQyxHQUFHLENBQUMsVUFBQyxJQUFJLElBQUssT0FBQSxJQUFJLENBQUMsZUFBZSxDQUFDLEtBQUksRUFBRSxHQUFHLENBQUMsRUFBL0IsQ0FBK0IsQ0FBQyxDQUFDO0lBQ3BFLENBQUM7SUFFRCxpREFBa0IsR0FBbEIsVUFBbUIsVUFBeUIsRUFBRSxHQUFzQjtRQUNsRSxLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsVUFBVSxDQUFDLE1BQU0sRUFBRSxDQUFDLEVBQUUsRUFBRTtZQUMxQyxJQUFNLElBQUksR0FBRyxVQUFVLENBQUMsQ0FBQyxDQUFDLENBQUM7WUFDM0IsSUFBTSxHQUFHLEdBQUcsSUFBSSxDQUFDLGNBQWMsQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLENBQUM7WUFDM0MsSUFBSSxHQUFHLFlBQVksV0FBVyxFQUFFO2dCQUM5QixPQUFPLEdBQUcsQ0FBQzthQUNaO1NBQ0Y7UUFDRCxPQUFPLElBQUksQ0FBQztJQUNkLENBQUM7SUFDSCwyQkFBQztBQUFELENBQUMsQUFsUUQsSUFrUUM7QUFFRCxTQUFTLFVBQVUsQ0FDZixRQUFrQixFQUFFLFVBQXlCLEVBQUUsR0FBc0IsRUFDckUsT0FBNkI7SUFDL0IsT0FBTztRQUFDLGNBQWM7YUFBZCxVQUFjLEVBQWQscUJBQWMsRUFBZCxJQUFjO1lBQWQseUJBQWM7O1FBQUssT0FBQSwwQkFBMEIsQ0FBQyxRQUFRLEVBQUUsSUFBSSxFQUFFLFVBQVUsRUFBRSxHQUFHLEVBQUUsT0FBTyxDQUFDO0lBQXBFLENBQW9FLENBQUM7QUFDbEcsQ0FBQztBQUVELElBQU0sZUFBZSxHQUFHLE9BQU8sQ0FBQztBQUNoQyxJQUFNLGVBQWUsR0FBRyxPQUFPLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQge0NvbXBpbGVSZWZsZWN0b3J9IGZyb20gJy4uL2NvbXBpbGVfcmVmbGVjdG9yJztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi9vdXRwdXRfYXN0JztcbmltcG9ydCB7ZGVidWdPdXRwdXRBc3RBc1R5cGVTY3JpcHR9IGZyb20gJy4vdHNfZW1pdHRlcic7XG5cbmV4cG9ydCBmdW5jdGlvbiBpbnRlcnByZXRTdGF0ZW1lbnRzKFxuICAgIHN0YXRlbWVudHM6IG8uU3RhdGVtZW50W10sIHJlZmxlY3RvcjogQ29tcGlsZVJlZmxlY3Rvcik6IHtba2V5OiBzdHJpbmddOiBhbnl9IHtcbiAgY29uc3QgY3R4ID0gbmV3IF9FeGVjdXRpb25Db250ZXh0KG51bGwsIG51bGwsIG51bGwsIG5ldyBNYXA8c3RyaW5nLCBhbnk+KCkpO1xuICBjb25zdCB2aXNpdG9yID0gbmV3IFN0YXRlbWVudEludGVycHJldGVyKHJlZmxlY3Rvcik7XG4gIHZpc2l0b3IudmlzaXRBbGxTdGF0ZW1lbnRzKHN0YXRlbWVudHMsIGN0eCk7XG4gIGNvbnN0IHJlc3VsdDoge1trZXk6IHN0cmluZ106IGFueX0gPSB7fTtcbiAgY3R4LmV4cG9ydHMuZm9yRWFjaCgoZXhwb3J0TmFtZSkgPT4geyByZXN1bHRbZXhwb3J0TmFtZV0gPSBjdHgudmFycy5nZXQoZXhwb3J0TmFtZSk7IH0pO1xuICByZXR1cm4gcmVzdWx0O1xufVxuXG5mdW5jdGlvbiBfZXhlY3V0ZUZ1bmN0aW9uU3RhdGVtZW50cyhcbiAgICB2YXJOYW1lczogc3RyaW5nW10sIHZhclZhbHVlczogYW55W10sIHN0YXRlbWVudHM6IG8uU3RhdGVtZW50W10sIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQsXG4gICAgdmlzaXRvcjogU3RhdGVtZW50SW50ZXJwcmV0ZXIpOiBhbnkge1xuICBjb25zdCBjaGlsZEN0eCA9IGN0eC5jcmVhdGVDaGlsZFdpaHRMb2NhbFZhcnMoKTtcbiAgZm9yIChsZXQgaSA9IDA7IGkgPCB2YXJOYW1lcy5sZW5ndGg7IGkrKykge1xuICAgIGNoaWxkQ3R4LnZhcnMuc2V0KHZhck5hbWVzW2ldLCB2YXJWYWx1ZXNbaV0pO1xuICB9XG4gIGNvbnN0IHJlc3VsdCA9IHZpc2l0b3IudmlzaXRBbGxTdGF0ZW1lbnRzKHN0YXRlbWVudHMsIGNoaWxkQ3R4KTtcbiAgcmV0dXJuIHJlc3VsdCA/IHJlc3VsdC52YWx1ZSA6IG51bGw7XG59XG5cbmNsYXNzIF9FeGVjdXRpb25Db250ZXh0IHtcbiAgZXhwb3J0czogc3RyaW5nW10gPSBbXTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBwYXJlbnQ6IF9FeGVjdXRpb25Db250ZXh0fG51bGwsIHB1YmxpYyBpbnN0YW5jZTogT2JqZWN0fG51bGwsXG4gICAgICBwdWJsaWMgY2xhc3NOYW1lOiBzdHJpbmd8bnVsbCwgcHVibGljIHZhcnM6IE1hcDxzdHJpbmcsIGFueT4pIHt9XG5cbiAgY3JlYXRlQ2hpbGRXaWh0TG9jYWxWYXJzKCk6IF9FeGVjdXRpb25Db250ZXh0IHtcbiAgICByZXR1cm4gbmV3IF9FeGVjdXRpb25Db250ZXh0KHRoaXMsIHRoaXMuaW5zdGFuY2UsIHRoaXMuY2xhc3NOYW1lLCBuZXcgTWFwPHN0cmluZywgYW55PigpKTtcbiAgfVxufVxuXG5jbGFzcyBSZXR1cm5WYWx1ZSB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyB2YWx1ZTogYW55KSB7fVxufVxuXG5mdW5jdGlvbiBjcmVhdGVEeW5hbWljQ2xhc3MoXG4gICAgX2NsYXNzU3RtdDogby5DbGFzc1N0bXQsIF9jdHg6IF9FeGVjdXRpb25Db250ZXh0LCBfdmlzaXRvcjogU3RhdGVtZW50SW50ZXJwcmV0ZXIpOiBGdW5jdGlvbiB7XG4gIGNvbnN0IHByb3BlcnR5RGVzY3JpcHRvcnM6IHtba2V5OiBzdHJpbmddOiBhbnl9ID0ge307XG5cbiAgX2NsYXNzU3RtdC5nZXR0ZXJzLmZvckVhY2goKGdldHRlcjogby5DbGFzc0dldHRlcikgPT4ge1xuICAgIC8vIE5vdGU6IHVzZSBgZnVuY3Rpb25gIGluc3RlYWQgb2YgYXJyb3cgZnVuY3Rpb24gdG8gY2FwdHVyZSBgdGhpc2BcbiAgICBwcm9wZXJ0eURlc2NyaXB0b3JzW2dldHRlci5uYW1lXSA9IHtcbiAgICAgIGNvbmZpZ3VyYWJsZTogZmFsc2UsXG4gICAgICBnZXQ6IGZ1bmN0aW9uKCkge1xuICAgICAgICBjb25zdCBpbnN0YW5jZUN0eCA9IG5ldyBfRXhlY3V0aW9uQ29udGV4dChfY3R4LCB0aGlzLCBfY2xhc3NTdG10Lm5hbWUsIF9jdHgudmFycyk7XG4gICAgICAgIHJldHVybiBfZXhlY3V0ZUZ1bmN0aW9uU3RhdGVtZW50cyhbXSwgW10sIGdldHRlci5ib2R5LCBpbnN0YW5jZUN0eCwgX3Zpc2l0b3IpO1xuICAgICAgfVxuICAgIH07XG4gIH0pO1xuICBfY2xhc3NTdG10Lm1ldGhvZHMuZm9yRWFjaChmdW5jdGlvbihtZXRob2Q6IG8uQ2xhc3NNZXRob2QpIHtcbiAgICBjb25zdCBwYXJhbU5hbWVzID0gbWV0aG9kLnBhcmFtcy5tYXAocGFyYW0gPT4gcGFyYW0ubmFtZSk7XG4gICAgLy8gTm90ZTogdXNlIGBmdW5jdGlvbmAgaW5zdGVhZCBvZiBhcnJvdyBmdW5jdGlvbiB0byBjYXB0dXJlIGB0aGlzYFxuICAgIHByb3BlcnR5RGVzY3JpcHRvcnNbbWV0aG9kLm5hbWUgIV0gPSB7XG4gICAgICB3cml0YWJsZTogZmFsc2UsXG4gICAgICBjb25maWd1cmFibGU6IGZhbHNlLFxuICAgICAgdmFsdWU6IGZ1bmN0aW9uKC4uLmFyZ3M6IGFueVtdKSB7XG4gICAgICAgIGNvbnN0IGluc3RhbmNlQ3R4ID0gbmV3IF9FeGVjdXRpb25Db250ZXh0KF9jdHgsIHRoaXMsIF9jbGFzc1N0bXQubmFtZSwgX2N0eC52YXJzKTtcbiAgICAgICAgcmV0dXJuIF9leGVjdXRlRnVuY3Rpb25TdGF0ZW1lbnRzKHBhcmFtTmFtZXMsIGFyZ3MsIG1ldGhvZC5ib2R5LCBpbnN0YW5jZUN0eCwgX3Zpc2l0b3IpO1xuICAgICAgfVxuICAgIH07XG4gIH0pO1xuXG4gIGNvbnN0IGN0b3JQYXJhbU5hbWVzID0gX2NsYXNzU3RtdC5jb25zdHJ1Y3Rvck1ldGhvZC5wYXJhbXMubWFwKHBhcmFtID0+IHBhcmFtLm5hbWUpO1xuICAvLyBOb3RlOiB1c2UgYGZ1bmN0aW9uYCBpbnN0ZWFkIG9mIGFycm93IGZ1bmN0aW9uIHRvIGNhcHR1cmUgYHRoaXNgXG4gIGNvbnN0IGN0b3IgPSBmdW5jdGlvbih0aGlzOiBPYmplY3QsIC4uLmFyZ3M6IGFueVtdKSB7XG4gICAgY29uc3QgaW5zdGFuY2VDdHggPSBuZXcgX0V4ZWN1dGlvbkNvbnRleHQoX2N0eCwgdGhpcywgX2NsYXNzU3RtdC5uYW1lLCBfY3R4LnZhcnMpO1xuICAgIF9jbGFzc1N0bXQuZmllbGRzLmZvckVhY2goKGZpZWxkKSA9PiB7ICh0aGlzIGFzIGFueSlbZmllbGQubmFtZV0gPSB1bmRlZmluZWQ7IH0pO1xuICAgIF9leGVjdXRlRnVuY3Rpb25TdGF0ZW1lbnRzKFxuICAgICAgICBjdG9yUGFyYW1OYW1lcywgYXJncywgX2NsYXNzU3RtdC5jb25zdHJ1Y3Rvck1ldGhvZC5ib2R5LCBpbnN0YW5jZUN0eCwgX3Zpc2l0b3IpO1xuICB9O1xuICBjb25zdCBzdXBlckNsYXNzID0gX2NsYXNzU3RtdC5wYXJlbnQgPyBfY2xhc3NTdG10LnBhcmVudC52aXNpdEV4cHJlc3Npb24oX3Zpc2l0b3IsIF9jdHgpIDogT2JqZWN0O1xuICBjdG9yLnByb3RvdHlwZSA9IE9iamVjdC5jcmVhdGUoc3VwZXJDbGFzcy5wcm90b3R5cGUsIHByb3BlcnR5RGVzY3JpcHRvcnMpO1xuICByZXR1cm4gY3Rvcjtcbn1cblxuY2xhc3MgU3RhdGVtZW50SW50ZXJwcmV0ZXIgaW1wbGVtZW50cyBvLlN0YXRlbWVudFZpc2l0b3IsIG8uRXhwcmVzc2lvblZpc2l0b3Ige1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIHJlZmxlY3RvcjogQ29tcGlsZVJlZmxlY3Rvcikge31cbiAgZGVidWdBc3QoYXN0OiBvLkV4cHJlc3Npb258by5TdGF0ZW1lbnR8by5UeXBlKTogc3RyaW5nIHsgcmV0dXJuIGRlYnVnT3V0cHV0QXN0QXNUeXBlU2NyaXB0KGFzdCk7IH1cblxuICB2aXNpdERlY2xhcmVWYXJTdG10KHN0bXQ6IG8uRGVjbGFyZVZhclN0bXQsIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQpOiBhbnkge1xuICAgIGNvbnN0IGluaXRpYWxWYWx1ZSA9IHN0bXQudmFsdWUgPyBzdG10LnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpIDogdW5kZWZpbmVkO1xuICAgIGN0eC52YXJzLnNldChzdG10Lm5hbWUsIGluaXRpYWxWYWx1ZSk7XG4gICAgaWYgKHN0bXQuaGFzTW9kaWZpZXIoby5TdG10TW9kaWZpZXIuRXhwb3J0ZWQpKSB7XG4gICAgICBjdHguZXhwb3J0cy5wdXNoKHN0bXQubmFtZSk7XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG4gIHZpc2l0V3JpdGVWYXJFeHByKGV4cHI6IG8uV3JpdGVWYXJFeHByLCBjdHg6IF9FeGVjdXRpb25Db250ZXh0KTogYW55IHtcbiAgICBjb25zdCB2YWx1ZSA9IGV4cHIudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgbGV0IGN1cnJDdHggPSBjdHg7XG4gICAgd2hpbGUgKGN1cnJDdHggIT0gbnVsbCkge1xuICAgICAgaWYgKGN1cnJDdHgudmFycy5oYXMoZXhwci5uYW1lKSkge1xuICAgICAgICBjdXJyQ3R4LnZhcnMuc2V0KGV4cHIubmFtZSwgdmFsdWUpO1xuICAgICAgICByZXR1cm4gdmFsdWU7XG4gICAgICB9XG4gICAgICBjdXJyQ3R4ID0gY3VyckN0eC5wYXJlbnQgITtcbiAgICB9XG4gICAgdGhyb3cgbmV3IEVycm9yKGBOb3QgZGVjbGFyZWQgdmFyaWFibGUgJHtleHByLm5hbWV9YCk7XG4gIH1cbiAgdmlzaXRXcmFwcGVkTm9kZUV4cHIoYXN0OiBvLldyYXBwZWROb2RlRXhwcjxhbnk+LCBjdHg6IF9FeGVjdXRpb25Db250ZXh0KTogbmV2ZXIge1xuICAgIHRocm93IG5ldyBFcnJvcignQ2Fubm90IGludGVycHJldCBhIFdyYXBwZWROb2RlRXhwci4nKTtcbiAgfVxuICB2aXNpdFR5cGVvZkV4cHIoYXN0OiBvLlR5cGVvZkV4cHIsIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQpOiBuZXZlciB7XG4gICAgdGhyb3cgbmV3IEVycm9yKCdDYW5ub3QgaW50ZXJwcmV0IGEgVHlwZW9mRXhwcicpO1xuICB9XG4gIHZpc2l0UmVhZFZhckV4cHIoYXN0OiBvLlJlYWRWYXJFeHByLCBjdHg6IF9FeGVjdXRpb25Db250ZXh0KTogYW55IHtcbiAgICBsZXQgdmFyTmFtZSA9IGFzdC5uYW1lICE7XG4gICAgaWYgKGFzdC5idWlsdGluICE9IG51bGwpIHtcbiAgICAgIHN3aXRjaCAoYXN0LmJ1aWx0aW4pIHtcbiAgICAgICAgY2FzZSBvLkJ1aWx0aW5WYXIuU3VwZXI6XG4gICAgICAgICAgcmV0dXJuIE9iamVjdC5nZXRQcm90b3R5cGVPZihjdHguaW5zdGFuY2UpO1xuICAgICAgICBjYXNlIG8uQnVpbHRpblZhci5UaGlzOlxuICAgICAgICAgIHJldHVybiBjdHguaW5zdGFuY2U7XG4gICAgICAgIGNhc2Ugby5CdWlsdGluVmFyLkNhdGNoRXJyb3I6XG4gICAgICAgICAgdmFyTmFtZSA9IENBVENIX0VSUk9SX1ZBUjtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgY2FzZSBvLkJ1aWx0aW5WYXIuQ2F0Y2hTdGFjazpcbiAgICAgICAgICB2YXJOYW1lID0gQ0FUQ0hfU1RBQ0tfVkFSO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICBkZWZhdWx0OlxuICAgICAgICAgIHRocm93IG5ldyBFcnJvcihgVW5rbm93biBidWlsdGluIHZhcmlhYmxlICR7YXN0LmJ1aWx0aW59YCk7XG4gICAgICB9XG4gICAgfVxuICAgIGxldCBjdXJyQ3R4ID0gY3R4O1xuICAgIHdoaWxlIChjdXJyQ3R4ICE9IG51bGwpIHtcbiAgICAgIGlmIChjdXJyQ3R4LnZhcnMuaGFzKHZhck5hbWUpKSB7XG4gICAgICAgIHJldHVybiBjdXJyQ3R4LnZhcnMuZ2V0KHZhck5hbWUpO1xuICAgICAgfVxuICAgICAgY3VyckN0eCA9IGN1cnJDdHgucGFyZW50ICE7XG4gICAgfVxuICAgIHRocm93IG5ldyBFcnJvcihgTm90IGRlY2xhcmVkIHZhcmlhYmxlICR7dmFyTmFtZX1gKTtcbiAgfVxuICB2aXNpdFdyaXRlS2V5RXhwcihleHByOiBvLldyaXRlS2V5RXhwciwgY3R4OiBfRXhlY3V0aW9uQ29udGV4dCk6IGFueSB7XG4gICAgY29uc3QgcmVjZWl2ZXIgPSBleHByLnJlY2VpdmVyLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIGNvbnN0IGluZGV4ID0gZXhwci5pbmRleC52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KTtcbiAgICBjb25zdCB2YWx1ZSA9IGV4cHIudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgcmVjZWl2ZXJbaW5kZXhdID0gdmFsdWU7XG4gICAgcmV0dXJuIHZhbHVlO1xuICB9XG4gIHZpc2l0V3JpdGVQcm9wRXhwcihleHByOiBvLldyaXRlUHJvcEV4cHIsIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQpOiBhbnkge1xuICAgIGNvbnN0IHJlY2VpdmVyID0gZXhwci5yZWNlaXZlci52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KTtcbiAgICBjb25zdCB2YWx1ZSA9IGV4cHIudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgcmVjZWl2ZXJbZXhwci5uYW1lXSA9IHZhbHVlO1xuICAgIHJldHVybiB2YWx1ZTtcbiAgfVxuXG4gIHZpc2l0SW52b2tlTWV0aG9kRXhwcihleHByOiBvLkludm9rZU1ldGhvZEV4cHIsIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQpOiBhbnkge1xuICAgIGNvbnN0IHJlY2VpdmVyID0gZXhwci5yZWNlaXZlci52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KTtcbiAgICBjb25zdCBhcmdzID0gdGhpcy52aXNpdEFsbEV4cHJlc3Npb25zKGV4cHIuYXJncywgY3R4KTtcbiAgICBsZXQgcmVzdWx0OiBhbnk7XG4gICAgaWYgKGV4cHIuYnVpbHRpbiAhPSBudWxsKSB7XG4gICAgICBzd2l0Y2ggKGV4cHIuYnVpbHRpbikge1xuICAgICAgICBjYXNlIG8uQnVpbHRpbk1ldGhvZC5Db25jYXRBcnJheTpcbiAgICAgICAgICByZXN1bHQgPSByZWNlaXZlci5jb25jYXQoLi4uYXJncyk7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIGNhc2Ugby5CdWlsdGluTWV0aG9kLlN1YnNjcmliZU9ic2VydmFibGU6XG4gICAgICAgICAgcmVzdWx0ID0gcmVjZWl2ZXIuc3Vic2NyaWJlKHtuZXh0OiBhcmdzWzBdfSk7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIGNhc2Ugby5CdWlsdGluTWV0aG9kLkJpbmQ6XG4gICAgICAgICAgcmVzdWx0ID0gcmVjZWl2ZXIuYmluZCguLi5hcmdzKTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgZGVmYXVsdDpcbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoYFVua25vd24gYnVpbHRpbiBtZXRob2QgJHtleHByLmJ1aWx0aW59YCk7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIHJlc3VsdCA9IHJlY2VpdmVyW2V4cHIubmFtZSAhXS5hcHBseShyZWNlaXZlciwgYXJncyk7XG4gICAgfVxuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cbiAgdmlzaXRJbnZva2VGdW5jdGlvbkV4cHIoc3RtdDogby5JbnZva2VGdW5jdGlvbkV4cHIsIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQpOiBhbnkge1xuICAgIGNvbnN0IGFyZ3MgPSB0aGlzLnZpc2l0QWxsRXhwcmVzc2lvbnMoc3RtdC5hcmdzLCBjdHgpO1xuICAgIGNvbnN0IGZuRXhwciA9IHN0bXQuZm47XG4gICAgaWYgKGZuRXhwciBpbnN0YW5jZW9mIG8uUmVhZFZhckV4cHIgJiYgZm5FeHByLmJ1aWx0aW4gPT09IG8uQnVpbHRpblZhci5TdXBlcikge1xuICAgICAgY3R4Lmluc3RhbmNlICEuY29uc3RydWN0b3IucHJvdG90eXBlLmNvbnN0cnVjdG9yLmFwcGx5KGN0eC5pbnN0YW5jZSwgYXJncyk7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9IGVsc2Uge1xuICAgICAgY29uc3QgZm4gPSBzdG10LmZuLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgICAgcmV0dXJuIGZuLmFwcGx5KG51bGwsIGFyZ3MpO1xuICAgIH1cbiAgfVxuICB2aXNpdFJldHVyblN0bXQoc3RtdDogby5SZXR1cm5TdGF0ZW1lbnQsIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQpOiBhbnkge1xuICAgIHJldHVybiBuZXcgUmV0dXJuVmFsdWUoc3RtdC52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KSk7XG4gIH1cbiAgdmlzaXREZWNsYXJlQ2xhc3NTdG10KHN0bXQ6IG8uQ2xhc3NTdG10LCBjdHg6IF9FeGVjdXRpb25Db250ZXh0KTogYW55IHtcbiAgICBjb25zdCBjbGF6eiA9IGNyZWF0ZUR5bmFtaWNDbGFzcyhzdG10LCBjdHgsIHRoaXMpO1xuICAgIGN0eC52YXJzLnNldChzdG10Lm5hbWUsIGNsYXp6KTtcbiAgICBpZiAoc3RtdC5oYXNNb2RpZmllcihvLlN0bXRNb2RpZmllci5FeHBvcnRlZCkpIHtcbiAgICAgIGN0eC5leHBvcnRzLnB1c2goc3RtdC5uYW1lKTtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgdmlzaXRFeHByZXNzaW9uU3RtdChzdG10OiBvLkV4cHJlc3Npb25TdGF0ZW1lbnQsIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQpOiBhbnkge1xuICAgIHJldHVybiBzdG10LmV4cHIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gIH1cbiAgdmlzaXRJZlN0bXQoc3RtdDogby5JZlN0bXQsIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQpOiBhbnkge1xuICAgIGNvbnN0IGNvbmRpdGlvbiA9IHN0bXQuY29uZGl0aW9uLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIGlmIChjb25kaXRpb24pIHtcbiAgICAgIHJldHVybiB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LnRydWVDYXNlLCBjdHgpO1xuICAgIH0gZWxzZSBpZiAoc3RtdC5mYWxzZUNhc2UgIT0gbnVsbCkge1xuICAgICAgcmV0dXJuIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXQuZmFsc2VDYXNlLCBjdHgpO1xuICAgIH1cbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuICB2aXNpdFRyeUNhdGNoU3RtdChzdG10OiBvLlRyeUNhdGNoU3RtdCwgY3R4OiBfRXhlY3V0aW9uQ29udGV4dCk6IGFueSB7XG4gICAgdHJ5IHtcbiAgICAgIHJldHVybiB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LmJvZHlTdG10cywgY3R4KTtcbiAgICB9IGNhdGNoIChlKSB7XG4gICAgICBjb25zdCBjaGlsZEN0eCA9IGN0eC5jcmVhdGVDaGlsZFdpaHRMb2NhbFZhcnMoKTtcbiAgICAgIGNoaWxkQ3R4LnZhcnMuc2V0KENBVENIX0VSUk9SX1ZBUiwgZSk7XG4gICAgICBjaGlsZEN0eC52YXJzLnNldChDQVRDSF9TVEFDS19WQVIsIGUuc3RhY2spO1xuICAgICAgcmV0dXJuIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXQuY2F0Y2hTdG10cywgY2hpbGRDdHgpO1xuICAgIH1cbiAgfVxuICB2aXNpdFRocm93U3RtdChzdG10OiBvLlRocm93U3RtdCwgY3R4OiBfRXhlY3V0aW9uQ29udGV4dCk6IGFueSB7XG4gICAgdGhyb3cgc3RtdC5lcnJvci52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KTtcbiAgfVxuICB2aXNpdENvbW1lbnRTdG10KHN0bXQ6IG8uQ29tbWVudFN0bXQsIGNvbnRleHQ/OiBhbnkpOiBhbnkgeyByZXR1cm4gbnVsbDsgfVxuICB2aXNpdEpTRG9jQ29tbWVudFN0bXQoc3RtdDogby5KU0RvY0NvbW1lbnRTdG10LCBjb250ZXh0PzogYW55KTogYW55IHsgcmV0dXJuIG51bGw7IH1cbiAgdmlzaXRJbnN0YW50aWF0ZUV4cHIoYXN0OiBvLkluc3RhbnRpYXRlRXhwciwgY3R4OiBfRXhlY3V0aW9uQ29udGV4dCk6IGFueSB7XG4gICAgY29uc3QgYXJncyA9IHRoaXMudmlzaXRBbGxFeHByZXNzaW9ucyhhc3QuYXJncywgY3R4KTtcbiAgICBjb25zdCBjbGF6eiA9IGFzdC5jbGFzc0V4cHIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgcmV0dXJuIG5ldyBjbGF6eiguLi5hcmdzKTtcbiAgfVxuICB2aXNpdExpdGVyYWxFeHByKGFzdDogby5MaXRlcmFsRXhwciwgY3R4OiBfRXhlY3V0aW9uQ29udGV4dCk6IGFueSB7IHJldHVybiBhc3QudmFsdWU7IH1cbiAgdmlzaXRMb2NhbGl6ZWRTdHJpbmcoYXN0OiBvLkxvY2FsaXplZFN0cmluZywgY29udGV4dDogYW55KTogYW55IHsgcmV0dXJuIG51bGw7IH1cbiAgdmlzaXRFeHRlcm5hbEV4cHIoYXN0OiBvLkV4dGVybmFsRXhwciwgY3R4OiBfRXhlY3V0aW9uQ29udGV4dCk6IGFueSB7XG4gICAgcmV0dXJuIHRoaXMucmVmbGVjdG9yLnJlc29sdmVFeHRlcm5hbFJlZmVyZW5jZShhc3QudmFsdWUpO1xuICB9XG4gIHZpc2l0Q29uZGl0aW9uYWxFeHByKGFzdDogby5Db25kaXRpb25hbEV4cHIsIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQpOiBhbnkge1xuICAgIGlmIChhc3QuY29uZGl0aW9uLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpKSB7XG4gICAgICByZXR1cm4gYXN0LnRydWVDYXNlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIH0gZWxzZSBpZiAoYXN0LmZhbHNlQ2FzZSAhPSBudWxsKSB7XG4gICAgICByZXR1cm4gYXN0LmZhbHNlQ2FzZS52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KTtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgdmlzaXROb3RFeHByKGFzdDogby5Ob3RFeHByLCBjdHg6IF9FeGVjdXRpb25Db250ZXh0KTogYW55IHtcbiAgICByZXR1cm4gIWFzdC5jb25kaXRpb24udmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gIH1cbiAgdmlzaXRBc3NlcnROb3ROdWxsRXhwcihhc3Q6IG8uQXNzZXJ0Tm90TnVsbCwgY3R4OiBfRXhlY3V0aW9uQ29udGV4dCk6IGFueSB7XG4gICAgcmV0dXJuIGFzdC5jb25kaXRpb24udmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gIH1cbiAgdmlzaXRDYXN0RXhwcihhc3Q6IG8uQ2FzdEV4cHIsIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQpOiBhbnkge1xuICAgIHJldHVybiBhc3QudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gIH1cbiAgdmlzaXRGdW5jdGlvbkV4cHIoYXN0OiBvLkZ1bmN0aW9uRXhwciwgY3R4OiBfRXhlY3V0aW9uQ29udGV4dCk6IGFueSB7XG4gICAgY29uc3QgcGFyYW1OYW1lcyA9IGFzdC5wYXJhbXMubWFwKChwYXJhbSkgPT4gcGFyYW0ubmFtZSk7XG4gICAgcmV0dXJuIF9kZWNsYXJlRm4ocGFyYW1OYW1lcywgYXN0LnN0YXRlbWVudHMsIGN0eCwgdGhpcyk7XG4gIH1cbiAgdmlzaXREZWNsYXJlRnVuY3Rpb25TdG10KHN0bXQ6IG8uRGVjbGFyZUZ1bmN0aW9uU3RtdCwgY3R4OiBfRXhlY3V0aW9uQ29udGV4dCk6IGFueSB7XG4gICAgY29uc3QgcGFyYW1OYW1lcyA9IHN0bXQucGFyYW1zLm1hcCgocGFyYW0pID0+IHBhcmFtLm5hbWUpO1xuICAgIGN0eC52YXJzLnNldChzdG10Lm5hbWUsIF9kZWNsYXJlRm4ocGFyYW1OYW1lcywgc3RtdC5zdGF0ZW1lbnRzLCBjdHgsIHRoaXMpKTtcbiAgICBpZiAoc3RtdC5oYXNNb2RpZmllcihvLlN0bXRNb2RpZmllci5FeHBvcnRlZCkpIHtcbiAgICAgIGN0eC5leHBvcnRzLnB1c2goc3RtdC5uYW1lKTtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgdmlzaXRCaW5hcnlPcGVyYXRvckV4cHIoYXN0OiBvLkJpbmFyeU9wZXJhdG9yRXhwciwgY3R4OiBfRXhlY3V0aW9uQ29udGV4dCk6IGFueSB7XG4gICAgY29uc3QgbGhzID0gKCkgPT4gYXN0Lmxocy52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KTtcbiAgICBjb25zdCByaHMgPSAoKSA9PiBhc3QucmhzLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuXG4gICAgc3dpdGNoIChhc3Qub3BlcmF0b3IpIHtcbiAgICAgIGNhc2Ugby5CaW5hcnlPcGVyYXRvci5FcXVhbHM6XG4gICAgICAgIHJldHVybiBsaHMoKSA9PSByaHMoKTtcbiAgICAgIGNhc2Ugby5CaW5hcnlPcGVyYXRvci5JZGVudGljYWw6XG4gICAgICAgIHJldHVybiBsaHMoKSA9PT0gcmhzKCk7XG4gICAgICBjYXNlIG8uQmluYXJ5T3BlcmF0b3IuTm90RXF1YWxzOlxuICAgICAgICByZXR1cm4gbGhzKCkgIT0gcmhzKCk7XG4gICAgICBjYXNlIG8uQmluYXJ5T3BlcmF0b3IuTm90SWRlbnRpY2FsOlxuICAgICAgICByZXR1cm4gbGhzKCkgIT09IHJocygpO1xuICAgICAgY2FzZSBvLkJpbmFyeU9wZXJhdG9yLkFuZDpcbiAgICAgICAgcmV0dXJuIGxocygpICYmIHJocygpO1xuICAgICAgY2FzZSBvLkJpbmFyeU9wZXJhdG9yLk9yOlxuICAgICAgICByZXR1cm4gbGhzKCkgfHwgcmhzKCk7XG4gICAgICBjYXNlIG8uQmluYXJ5T3BlcmF0b3IuUGx1czpcbiAgICAgICAgcmV0dXJuIGxocygpICsgcmhzKCk7XG4gICAgICBjYXNlIG8uQmluYXJ5T3BlcmF0b3IuTWludXM6XG4gICAgICAgIHJldHVybiBsaHMoKSAtIHJocygpO1xuICAgICAgY2FzZSBvLkJpbmFyeU9wZXJhdG9yLkRpdmlkZTpcbiAgICAgICAgcmV0dXJuIGxocygpIC8gcmhzKCk7XG4gICAgICBjYXNlIG8uQmluYXJ5T3BlcmF0b3IuTXVsdGlwbHk6XG4gICAgICAgIHJldHVybiBsaHMoKSAqIHJocygpO1xuICAgICAgY2FzZSBvLkJpbmFyeU9wZXJhdG9yLk1vZHVsbzpcbiAgICAgICAgcmV0dXJuIGxocygpICUgcmhzKCk7XG4gICAgICBjYXNlIG8uQmluYXJ5T3BlcmF0b3IuTG93ZXI6XG4gICAgICAgIHJldHVybiBsaHMoKSA8IHJocygpO1xuICAgICAgY2FzZSBvLkJpbmFyeU9wZXJhdG9yLkxvd2VyRXF1YWxzOlxuICAgICAgICByZXR1cm4gbGhzKCkgPD0gcmhzKCk7XG4gICAgICBjYXNlIG8uQmluYXJ5T3BlcmF0b3IuQmlnZ2VyOlxuICAgICAgICByZXR1cm4gbGhzKCkgPiByaHMoKTtcbiAgICAgIGNhc2Ugby5CaW5hcnlPcGVyYXRvci5CaWdnZXJFcXVhbHM6XG4gICAgICAgIHJldHVybiBsaHMoKSA+PSByaHMoKTtcbiAgICAgIGRlZmF1bHQ6XG4gICAgICAgIHRocm93IG5ldyBFcnJvcihgVW5rbm93biBvcGVyYXRvciAke2FzdC5vcGVyYXRvcn1gKTtcbiAgICB9XG4gIH1cbiAgdmlzaXRSZWFkUHJvcEV4cHIoYXN0OiBvLlJlYWRQcm9wRXhwciwgY3R4OiBfRXhlY3V0aW9uQ29udGV4dCk6IGFueSB7XG4gICAgbGV0IHJlc3VsdDogYW55O1xuICAgIGNvbnN0IHJlY2VpdmVyID0gYXN0LnJlY2VpdmVyLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIHJlc3VsdCA9IHJlY2VpdmVyW2FzdC5uYW1lXTtcbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG4gIHZpc2l0UmVhZEtleUV4cHIoYXN0OiBvLlJlYWRLZXlFeHByLCBjdHg6IF9FeGVjdXRpb25Db250ZXh0KTogYW55IHtcbiAgICBjb25zdCByZWNlaXZlciA9IGFzdC5yZWNlaXZlci52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KTtcbiAgICBjb25zdCBwcm9wID0gYXN0LmluZGV4LnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIHJldHVybiByZWNlaXZlcltwcm9wXTtcbiAgfVxuICB2aXNpdExpdGVyYWxBcnJheUV4cHIoYXN0OiBvLkxpdGVyYWxBcnJheUV4cHIsIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnZpc2l0QWxsRXhwcmVzc2lvbnMoYXN0LmVudHJpZXMsIGN0eCk7XG4gIH1cbiAgdmlzaXRMaXRlcmFsTWFwRXhwcihhc3Q6IG8uTGl0ZXJhbE1hcEV4cHIsIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQpOiBhbnkge1xuICAgIGNvbnN0IHJlc3VsdDoge1trOiBzdHJpbmddOiBhbnl9ID0ge307XG4gICAgYXN0LmVudHJpZXMuZm9yRWFjaChlbnRyeSA9PiByZXN1bHRbZW50cnkua2V5XSA9IGVudHJ5LnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpKTtcbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG4gIHZpc2l0Q29tbWFFeHByKGFzdDogby5Db21tYUV4cHIsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgY29uc3QgdmFsdWVzID0gdGhpcy52aXNpdEFsbEV4cHJlc3Npb25zKGFzdC5wYXJ0cywgY29udGV4dCk7XG4gICAgcmV0dXJuIHZhbHVlc1t2YWx1ZXMubGVuZ3RoIC0gMV07XG4gIH1cbiAgdmlzaXRBbGxFeHByZXNzaW9ucyhleHByZXNzaW9uczogby5FeHByZXNzaW9uW10sIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQpOiBhbnkge1xuICAgIHJldHVybiBleHByZXNzaW9ucy5tYXAoKGV4cHIpID0+IGV4cHIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCkpO1xuICB9XG5cbiAgdmlzaXRBbGxTdGF0ZW1lbnRzKHN0YXRlbWVudHM6IG8uU3RhdGVtZW50W10sIGN0eDogX0V4ZWN1dGlvbkNvbnRleHQpOiBSZXR1cm5WYWx1ZXxudWxsIHtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IHN0YXRlbWVudHMubGVuZ3RoOyBpKyspIHtcbiAgICAgIGNvbnN0IHN0bXQgPSBzdGF0ZW1lbnRzW2ldO1xuICAgICAgY29uc3QgdmFsID0gc3RtdC52aXNpdFN0YXRlbWVudCh0aGlzLCBjdHgpO1xuICAgICAgaWYgKHZhbCBpbnN0YW5jZW9mIFJldHVyblZhbHVlKSB7XG4gICAgICAgIHJldHVybiB2YWw7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG59XG5cbmZ1bmN0aW9uIF9kZWNsYXJlRm4oXG4gICAgdmFyTmFtZXM6IHN0cmluZ1tdLCBzdGF0ZW1lbnRzOiBvLlN0YXRlbWVudFtdLCBjdHg6IF9FeGVjdXRpb25Db250ZXh0LFxuICAgIHZpc2l0b3I6IFN0YXRlbWVudEludGVycHJldGVyKTogRnVuY3Rpb24ge1xuICByZXR1cm4gKC4uLmFyZ3M6IGFueVtdKSA9PiBfZXhlY3V0ZUZ1bmN0aW9uU3RhdGVtZW50cyh2YXJOYW1lcywgYXJncywgc3RhdGVtZW50cywgY3R4LCB2aXNpdG9yKTtcbn1cblxuY29uc3QgQ0FUQ0hfRVJST1JfVkFSID0gJ2Vycm9yJztcbmNvbnN0IENBVENIX1NUQUNLX1ZBUiA9ICdzdGFjayc7XG4iXX0=