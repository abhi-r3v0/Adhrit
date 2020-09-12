/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __extends, __read, __spread } from "tslib";
import { AbstractEmitterVisitor, CATCH_ERROR_VAR, CATCH_STACK_VAR, EmitterVisitorContext } from './abstract_emitter';
import * as o from './output_ast';
var _debugFilePath = '/debug/lib';
export function debugOutputAstAsTypeScript(ast) {
    var converter = new _TsEmitterVisitor();
    var ctx = EmitterVisitorContext.createRoot();
    var asts = Array.isArray(ast) ? ast : [ast];
    asts.forEach(function (ast) {
        if (ast instanceof o.Statement) {
            ast.visitStatement(converter, ctx);
        }
        else if (ast instanceof o.Expression) {
            ast.visitExpression(converter, ctx);
        }
        else if (ast instanceof o.Type) {
            ast.visitType(converter, ctx);
        }
        else {
            throw new Error("Don't know how to print debug info for " + ast);
        }
    });
    return ctx.toSource();
}
var TypeScriptEmitter = /** @class */ (function () {
    function TypeScriptEmitter() {
    }
    TypeScriptEmitter.prototype.emitStatementsAndContext = function (genFilePath, stmts, preamble, emitSourceMaps, referenceFilter, importFilter) {
        if (preamble === void 0) { preamble = ''; }
        if (emitSourceMaps === void 0) { emitSourceMaps = true; }
        var converter = new _TsEmitterVisitor(referenceFilter, importFilter);
        var ctx = EmitterVisitorContext.createRoot();
        converter.visitAllStatements(stmts, ctx);
        var preambleLines = preamble ? preamble.split('\n') : [];
        converter.reexports.forEach(function (reexports, exportedModuleName) {
            var reexportsCode = reexports.map(function (reexport) { return reexport.name + " as " + reexport.as; }).join(',');
            preambleLines.push("export {" + reexportsCode + "} from '" + exportedModuleName + "';");
        });
        converter.importsWithPrefixes.forEach(function (prefix, importedModuleName) {
            // Note: can't write the real word for import as it screws up system.js auto detection...
            preambleLines.push("imp" +
                ("ort * as " + prefix + " from '" + importedModuleName + "';"));
        });
        var sm = emitSourceMaps ?
            ctx.toSourceMapGenerator(genFilePath, preambleLines.length).toJsComment() :
            '';
        var lines = __spread(preambleLines, [ctx.toSource(), sm]);
        if (sm) {
            // always add a newline at the end, as some tools have bugs without it.
            lines.push('');
        }
        ctx.setPreambleLineCount(preambleLines.length);
        return { sourceText: lines.join('\n'), context: ctx };
    };
    TypeScriptEmitter.prototype.emitStatements = function (genFilePath, stmts, preamble) {
        if (preamble === void 0) { preamble = ''; }
        return this.emitStatementsAndContext(genFilePath, stmts, preamble).sourceText;
    };
    return TypeScriptEmitter;
}());
export { TypeScriptEmitter };
var _TsEmitterVisitor = /** @class */ (function (_super) {
    __extends(_TsEmitterVisitor, _super);
    function _TsEmitterVisitor(referenceFilter, importFilter) {
        var _this = _super.call(this, false) || this;
        _this.referenceFilter = referenceFilter;
        _this.importFilter = importFilter;
        _this.typeExpression = 0;
        _this.importsWithPrefixes = new Map();
        _this.reexports = new Map();
        return _this;
    }
    _TsEmitterVisitor.prototype.visitType = function (t, ctx, defaultType) {
        if (defaultType === void 0) { defaultType = 'any'; }
        if (t) {
            this.typeExpression++;
            t.visitType(this, ctx);
            this.typeExpression--;
        }
        else {
            ctx.print(null, defaultType);
        }
    };
    _TsEmitterVisitor.prototype.visitLiteralExpr = function (ast, ctx) {
        var value = ast.value;
        if (value == null && ast.type != o.INFERRED_TYPE) {
            ctx.print(ast, "(" + value + " as any)");
            return null;
        }
        return _super.prototype.visitLiteralExpr.call(this, ast, ctx);
    };
    // Temporary workaround to support strictNullCheck enabled consumers of ngc emit.
    // In SNC mode, [] have the type never[], so we cast here to any[].
    // TODO: narrow the cast to a more explicit type, or use a pattern that does not
    // start with [].concat. see https://github.com/angular/angular/pull/11846
    _TsEmitterVisitor.prototype.visitLiteralArrayExpr = function (ast, ctx) {
        if (ast.entries.length === 0) {
            ctx.print(ast, '(');
        }
        var result = _super.prototype.visitLiteralArrayExpr.call(this, ast, ctx);
        if (ast.entries.length === 0) {
            ctx.print(ast, ' as any[])');
        }
        return result;
    };
    _TsEmitterVisitor.prototype.visitExternalExpr = function (ast, ctx) {
        this._visitIdentifier(ast.value, ast.typeParams, ctx);
        return null;
    };
    _TsEmitterVisitor.prototype.visitAssertNotNullExpr = function (ast, ctx) {
        var result = _super.prototype.visitAssertNotNullExpr.call(this, ast, ctx);
        ctx.print(ast, '!');
        return result;
    };
    _TsEmitterVisitor.prototype.visitDeclareVarStmt = function (stmt, ctx) {
        if (stmt.hasModifier(o.StmtModifier.Exported) && stmt.value instanceof o.ExternalExpr &&
            !stmt.type) {
            // check for a reexport
            var _a = stmt.value.value, name_1 = _a.name, moduleName = _a.moduleName;
            if (moduleName) {
                var reexports = this.reexports.get(moduleName);
                if (!reexports) {
                    reexports = [];
                    this.reexports.set(moduleName, reexports);
                }
                reexports.push({ name: name_1, as: stmt.name });
                return null;
            }
        }
        if (stmt.hasModifier(o.StmtModifier.Exported)) {
            ctx.print(stmt, "export ");
        }
        if (stmt.hasModifier(o.StmtModifier.Final)) {
            ctx.print(stmt, "const");
        }
        else {
            ctx.print(stmt, "var");
        }
        ctx.print(stmt, " " + stmt.name);
        this._printColonType(stmt.type, ctx);
        if (stmt.value) {
            ctx.print(stmt, " = ");
            stmt.value.visitExpression(this, ctx);
        }
        ctx.println(stmt, ";");
        return null;
    };
    _TsEmitterVisitor.prototype.visitWrappedNodeExpr = function (ast, ctx) {
        throw new Error('Cannot visit a WrappedNodeExpr when outputting Typescript.');
    };
    _TsEmitterVisitor.prototype.visitCastExpr = function (ast, ctx) {
        ctx.print(ast, "(<");
        ast.type.visitType(this, ctx);
        ctx.print(ast, ">");
        ast.value.visitExpression(this, ctx);
        ctx.print(ast, ")");
        return null;
    };
    _TsEmitterVisitor.prototype.visitInstantiateExpr = function (ast, ctx) {
        ctx.print(ast, "new ");
        this.typeExpression++;
        ast.classExpr.visitExpression(this, ctx);
        this.typeExpression--;
        ctx.print(ast, "(");
        this.visitAllExpressions(ast.args, ctx, ',');
        ctx.print(ast, ")");
        return null;
    };
    _TsEmitterVisitor.prototype.visitDeclareClassStmt = function (stmt, ctx) {
        var _this = this;
        ctx.pushClass(stmt);
        if (stmt.hasModifier(o.StmtModifier.Exported)) {
            ctx.print(stmt, "export ");
        }
        ctx.print(stmt, "class " + stmt.name);
        if (stmt.parent != null) {
            ctx.print(stmt, " extends ");
            this.typeExpression++;
            stmt.parent.visitExpression(this, ctx);
            this.typeExpression--;
        }
        ctx.println(stmt, " {");
        ctx.incIndent();
        stmt.fields.forEach(function (field) { return _this._visitClassField(field, ctx); });
        if (stmt.constructorMethod != null) {
            this._visitClassConstructor(stmt, ctx);
        }
        stmt.getters.forEach(function (getter) { return _this._visitClassGetter(getter, ctx); });
        stmt.methods.forEach(function (method) { return _this._visitClassMethod(method, ctx); });
        ctx.decIndent();
        ctx.println(stmt, "}");
        ctx.popClass();
        return null;
    };
    _TsEmitterVisitor.prototype._visitClassField = function (field, ctx) {
        if (field.hasModifier(o.StmtModifier.Private)) {
            // comment out as a workaround for #10967
            ctx.print(null, "/*private*/ ");
        }
        if (field.hasModifier(o.StmtModifier.Static)) {
            ctx.print(null, 'static ');
        }
        ctx.print(null, field.name);
        this._printColonType(field.type, ctx);
        if (field.initializer) {
            ctx.print(null, ' = ');
            field.initializer.visitExpression(this, ctx);
        }
        ctx.println(null, ";");
    };
    _TsEmitterVisitor.prototype._visitClassGetter = function (getter, ctx) {
        if (getter.hasModifier(o.StmtModifier.Private)) {
            ctx.print(null, "private ");
        }
        ctx.print(null, "get " + getter.name + "()");
        this._printColonType(getter.type, ctx);
        ctx.println(null, " {");
        ctx.incIndent();
        this.visitAllStatements(getter.body, ctx);
        ctx.decIndent();
        ctx.println(null, "}");
    };
    _TsEmitterVisitor.prototype._visitClassConstructor = function (stmt, ctx) {
        ctx.print(stmt, "constructor(");
        this._visitParams(stmt.constructorMethod.params, ctx);
        ctx.println(stmt, ") {");
        ctx.incIndent();
        this.visitAllStatements(stmt.constructorMethod.body, ctx);
        ctx.decIndent();
        ctx.println(stmt, "}");
    };
    _TsEmitterVisitor.prototype._visitClassMethod = function (method, ctx) {
        if (method.hasModifier(o.StmtModifier.Private)) {
            ctx.print(null, "private ");
        }
        ctx.print(null, method.name + "(");
        this._visitParams(method.params, ctx);
        ctx.print(null, ")");
        this._printColonType(method.type, ctx, 'void');
        ctx.println(null, " {");
        ctx.incIndent();
        this.visitAllStatements(method.body, ctx);
        ctx.decIndent();
        ctx.println(null, "}");
    };
    _TsEmitterVisitor.prototype.visitFunctionExpr = function (ast, ctx) {
        if (ast.name) {
            ctx.print(ast, 'function ');
            ctx.print(ast, ast.name);
        }
        ctx.print(ast, "(");
        this._visitParams(ast.params, ctx);
        ctx.print(ast, ")");
        this._printColonType(ast.type, ctx, 'void');
        if (!ast.name) {
            ctx.print(ast, " => ");
        }
        ctx.println(ast, '{');
        ctx.incIndent();
        this.visitAllStatements(ast.statements, ctx);
        ctx.decIndent();
        ctx.print(ast, "}");
        return null;
    };
    _TsEmitterVisitor.prototype.visitDeclareFunctionStmt = function (stmt, ctx) {
        if (stmt.hasModifier(o.StmtModifier.Exported)) {
            ctx.print(stmt, "export ");
        }
        ctx.print(stmt, "function " + stmt.name + "(");
        this._visitParams(stmt.params, ctx);
        ctx.print(stmt, ")");
        this._printColonType(stmt.type, ctx, 'void');
        ctx.println(stmt, " {");
        ctx.incIndent();
        this.visitAllStatements(stmt.statements, ctx);
        ctx.decIndent();
        ctx.println(stmt, "}");
        return null;
    };
    _TsEmitterVisitor.prototype.visitTryCatchStmt = function (stmt, ctx) {
        ctx.println(stmt, "try {");
        ctx.incIndent();
        this.visitAllStatements(stmt.bodyStmts, ctx);
        ctx.decIndent();
        ctx.println(stmt, "} catch (" + CATCH_ERROR_VAR.name + ") {");
        ctx.incIndent();
        var catchStmts = [CATCH_STACK_VAR.set(CATCH_ERROR_VAR.prop('stack', null)).toDeclStmt(null, [
                o.StmtModifier.Final
            ])].concat(stmt.catchStmts);
        this.visitAllStatements(catchStmts, ctx);
        ctx.decIndent();
        ctx.println(stmt, "}");
        return null;
    };
    _TsEmitterVisitor.prototype.visitBuiltinType = function (type, ctx) {
        var typeStr;
        switch (type.name) {
            case o.BuiltinTypeName.Bool:
                typeStr = 'boolean';
                break;
            case o.BuiltinTypeName.Dynamic:
                typeStr = 'any';
                break;
            case o.BuiltinTypeName.Function:
                typeStr = 'Function';
                break;
            case o.BuiltinTypeName.Number:
                typeStr = 'number';
                break;
            case o.BuiltinTypeName.Int:
                typeStr = 'number';
                break;
            case o.BuiltinTypeName.String:
                typeStr = 'string';
                break;
            case o.BuiltinTypeName.None:
                typeStr = 'never';
                break;
            default:
                throw new Error("Unsupported builtin type " + type.name);
        }
        ctx.print(null, typeStr);
        return null;
    };
    _TsEmitterVisitor.prototype.visitExpressionType = function (ast, ctx) {
        var _this = this;
        ast.value.visitExpression(this, ctx);
        if (ast.typeParams !== null) {
            ctx.print(null, '<');
            this.visitAllObjects(function (type) { return _this.visitType(type, ctx); }, ast.typeParams, ctx, ',');
            ctx.print(null, '>');
        }
        return null;
    };
    _TsEmitterVisitor.prototype.visitArrayType = function (type, ctx) {
        this.visitType(type.of, ctx);
        ctx.print(null, "[]");
        return null;
    };
    _TsEmitterVisitor.prototype.visitMapType = function (type, ctx) {
        ctx.print(null, "{[key: string]:");
        this.visitType(type.valueType, ctx);
        ctx.print(null, "}");
        return null;
    };
    _TsEmitterVisitor.prototype.getBuiltinMethodName = function (method) {
        var name;
        switch (method) {
            case o.BuiltinMethod.ConcatArray:
                name = 'concat';
                break;
            case o.BuiltinMethod.SubscribeObservable:
                name = 'subscribe';
                break;
            case o.BuiltinMethod.Bind:
                name = 'bind';
                break;
            default:
                throw new Error("Unknown builtin method: " + method);
        }
        return name;
    };
    _TsEmitterVisitor.prototype._visitParams = function (params, ctx) {
        var _this = this;
        this.visitAllObjects(function (param) {
            ctx.print(null, param.name);
            _this._printColonType(param.type, ctx);
        }, params, ctx, ',');
    };
    _TsEmitterVisitor.prototype._visitIdentifier = function (value, typeParams, ctx) {
        var _this = this;
        var name = value.name, moduleName = value.moduleName;
        if (this.referenceFilter && this.referenceFilter(value)) {
            ctx.print(null, '(null as any)');
            return;
        }
        if (moduleName && (!this.importFilter || !this.importFilter(value))) {
            var prefix = this.importsWithPrefixes.get(moduleName);
            if (prefix == null) {
                prefix = "i" + this.importsWithPrefixes.size;
                this.importsWithPrefixes.set(moduleName, prefix);
            }
            ctx.print(null, prefix + ".");
        }
        ctx.print(null, name);
        if (this.typeExpression > 0) {
            // If we are in a type expression that refers to a generic type then supply
            // the required type parameters. If there were not enough type parameters
            // supplied, supply any as the type. Outside a type expression the reference
            // should not supply type parameters and be treated as a simple value reference
            // to the constructor function itself.
            var suppliedParameters = typeParams || [];
            if (suppliedParameters.length > 0) {
                ctx.print(null, "<");
                this.visitAllObjects(function (type) { return type.visitType(_this, ctx); }, typeParams, ctx, ',');
                ctx.print(null, ">");
            }
        }
    };
    _TsEmitterVisitor.prototype._printColonType = function (type, ctx, defaultType) {
        if (type !== o.INFERRED_TYPE) {
            ctx.print(null, ':');
            this.visitType(type, ctx, defaultType);
        }
    };
    return _TsEmitterVisitor;
}(AbstractEmitterVisitor));
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHNfZW1pdHRlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9vdXRwdXQvdHNfZW1pdHRlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7O0FBTUgsT0FBTyxFQUFDLHNCQUFzQixFQUFFLGVBQWUsRUFBRSxlQUFlLEVBQUUscUJBQXFCLEVBQWdCLE1BQU0sb0JBQW9CLENBQUM7QUFDbEksT0FBTyxLQUFLLENBQUMsTUFBTSxjQUFjLENBQUM7QUFFbEMsSUFBTSxjQUFjLEdBQUcsWUFBWSxDQUFDO0FBRXBDLE1BQU0sVUFBVSwwQkFBMEIsQ0FBQyxHQUFnRDtJQUV6RixJQUFNLFNBQVMsR0FBRyxJQUFJLGlCQUFpQixFQUFFLENBQUM7SUFDMUMsSUFBTSxHQUFHLEdBQUcscUJBQXFCLENBQUMsVUFBVSxFQUFFLENBQUM7SUFDL0MsSUFBTSxJQUFJLEdBQVUsS0FBSyxDQUFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDO0lBRXJELElBQUksQ0FBQyxPQUFPLENBQUMsVUFBQyxHQUFHO1FBQ2YsSUFBSSxHQUFHLFlBQVksQ0FBQyxDQUFDLFNBQVMsRUFBRTtZQUM5QixHQUFHLENBQUMsY0FBYyxDQUFDLFNBQVMsRUFBRSxHQUFHLENBQUMsQ0FBQztTQUNwQzthQUFNLElBQUksR0FBRyxZQUFZLENBQUMsQ0FBQyxVQUFVLEVBQUU7WUFDdEMsR0FBRyxDQUFDLGVBQWUsQ0FBQyxTQUFTLEVBQUUsR0FBRyxDQUFDLENBQUM7U0FDckM7YUFBTSxJQUFJLEdBQUcsWUFBWSxDQUFDLENBQUMsSUFBSSxFQUFFO1lBQ2hDLEdBQUcsQ0FBQyxTQUFTLENBQUMsU0FBUyxFQUFFLEdBQUcsQ0FBQyxDQUFDO1NBQy9CO2FBQU07WUFDTCxNQUFNLElBQUks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Q0FBQyxDQUFDO1NBQ3hDO0lBQ0gsQ0FBQztJQUNILHdCQUFDO0FBQUQsQ0FBQyxBQTdXRCxDQUFnQyxzQkFBc0IsR0E2V3JEIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5cbmltcG9ydCB7U3RhdGljU3ltYm9sfSBmcm9tICcuLi9hb3Qvc3RhdGljX3N5bWJvbCc7XG5pbXBvcnQge0NvbXBpbGVJZGVudGlmaWVyTWV0YWRhdGF9IGZyb20gJy4uL2NvbXBpbGVfbWV0YWRhdGEnO1xuXG5pbXBvcnQge0Fic3RyYWN0RW1pdHRlclZpc2l0b3IsIENBVENIX0VSUk9SX1ZBUiwgQ0FUQ0hfU1RBQ0tfVkFSLCBFbWl0dGVyVmlzaXRvckNvbnRleHQsIE91dHB1dEVtaXR0ZXJ9IGZyb20gJy4vYWJzdHJhY3RfZW1pdHRlcic7XG5pbXBvcnQgKiBhcyBvIGZyb20gJy4vb3V0cHV0X2FzdCc7XG5cbmNvbnN0IF9kZWJ1Z0ZpbGVQYXRoID0gJy9kZWJ1Zy9saWInO1xuXG5leHBvcnQgZnVuY3Rpb24gZGVidWdPdXRwdXRBc3RBc1R5cGVTY3JpcHQoYXN0OiBvLlN0YXRlbWVudCB8IG8uRXhwcmVzc2lvbiB8IG8uVHlwZSB8IGFueVtdKTpcbiAgICBzdHJpbmcge1xuICBjb25zdCBjb252ZXJ0ZXIgPSBuZXcgX1RzRW1pdHRlclZpc2l0b3IoKTtcbiAgY29uc3QgY3R4ID0gRW1pdHRlclZpc2l0b3JDb250ZXh0LmNyZWF0ZVJvb3QoKTtcbiAgY29uc3QgYXN0czogYW55W10gPSBBcnJheS5pc0FycmF5KGFzdCkgPyBhc3QgOiBbYXN0XTtcblxuICBhc3RzLmZvckVhY2goKGFzdCkgPT4ge1xuICAgIGlmIChhc3QgaW5zdGFuY2VvZiBvLlN0YXRlbWVudCkge1xuICAgICAgYXN0LnZpc2l0U3RhdGVtZW50KGNvbnZlcnRlciwgY3R4KTtcbiAgICB9IGVsc2UgaWYgKGFzdCBpbnN0YW5jZW9mIG8uRXhwcmVzc2lvbikge1xuICAgICAgYXN0LnZpc2l0RXhwcmVzc2lvbihjb252ZXJ0ZXIsIGN0eCk7XG4gICAgfSBlbHNlIGlmIChhc3QgaW5zdGFuY2VvZiBvLlR5cGUpIHtcbiAgICAgIGFzdC52aXNpdFR5cGUoY29udmVydGVyLCBjdHgpO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoYERvbid0IGtub3cgaG93IHRvIHByaW50IGRlYnVnIGluZm8gZm9yICR7YXN0fWApO1xuICAgIH1cbiAgfSk7XG4gIHJldHVybiBjdHgudG9Tb3VyY2UoKTtcbn1cblxuZXhwb3J0IHR5cGUgUmVmZXJlbmNlRmlsdGVyID0gKHJlZmVyZW5jZTogby5FeHRlcm5hbFJlZmVyZW5jZSkgPT4gYm9vbGVhbjtcblxuZXhwb3J0IGNsYXNzIFR5cGVTY3JpcHRFbWl0dGVyIGltcGxlbWVudHMgT3V0cHV0RW1pdHRlciB7XG4gIGVtaXRTdGF0ZW1lbnRzQW5kQ29udGV4dChcbiAgICAgIGdlbkZpbGVQYXRoOiBzdHJpbmcsIHN0bXRzOiBvLlN0YXRlbWVudFtdLCBwcmVhbWJsZTogc3RyaW5nID0gJycsXG4gICAgICBlbWl0U291cmNlTWFwczogYm9vbGVhbiA9IHRydWUsIHJlZmVyZW5jZUZpbHRlcj86IFJlZmVyZW5jZUZpbHRlcixcbiAgICAgIGltcG9ydEZpbHRlcj86IFJlZmVyZW5jZUZpbHRlcik6IHtzb3VyY2VUZXh0OiBzdHJpbmcsIGNvbnRleHQ6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dH0ge1xuICAgIGNvbnN0IGNvbnZlcnRlciA9IG5ldyBfVHNFbWl0dGVyVmlzaXRvcihyZWZlcmVuY2VGaWx0ZXIsIGltcG9ydEZpbHRlcik7XG5cbiAgICBjb25zdCBjdHggPSBFbWl0dGVyVmlzaXRvckNvbnRleHQuY3JlYXRlUm9vdCgpO1xuXG4gICAgY29udmVydGVyLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10cywgY3R4KTtcblxuICAgIGNvbnN0IHByZWFtYmxlTGluZXMgPSBwcmVhbWJsZSA/IHByZWFtYmxlLnNwbGl0KCdcXG4nKSA6IFtdO1xuICAgIGNvbnZlcnRlci5yZWV4cG9ydHMuZm9yRWFjaCgocmVleHBvcnRzLCBleHBvcnRlZE1vZHVsZU5hbWUpID0+IHtcbiAgICAgIGNvbnN0IHJlZXhwb3J0c0NvZGUgPVxuICAgICAgICAgIHJlZXhwb3J0cy5tYXAocmVleHBvcnQgPT4gYCR7cmVleHBvcnQubmFtZX0gYXMgJHtyZWV4cG9ydC5hc31gKS5qb2luKCcsJyk7XG4gICAgICBwcmVhbWJsZUxpbmVzLnB1c2goYGV4cG9ydCB7JHtyZWV4cG9ydHNDb2RlfX0gZnJvbSAnJHtleHBvcnRlZE1vZHVsZU5hbWV9JztgKTtcbiAgICB9KTtcblxuICAgIGNvbnZlcnRlci5pbXBvcnRzV2l0aFByZWZpeGVzLmZvckVhY2goKHByZWZpeCwgaW1wb3J0ZWRNb2R1bGVOYW1lKSA9PiB7XG4gICAgICAvLyBOb3RlOiBjYW4ndCB3cml0ZSB0aGUgcmVhbCB3b3JkIGZvciBpbXBvcnQgYXMgaXQgc2NyZXdzIHVwIHN5c3RlbS5qcyBhdXRvIGRldGVjdGlvbi4uLlxuICAgICAgcHJlYW1ibGVMaW5lcy5wdXNoKFxuICAgICAgICAgIGBpbXBgICtcbiAgICAgICAgICBgb3J0ICogYXMgJHtwcmVmaXh9IGZyb20gJyR7aW1wb3J0ZWRNb2R1bGVOYW1lfSc7YCk7XG4gICAgfSk7XG5cbiAgICBjb25zdCBzbSA9IGVtaXRTb3VyY2VNYXBzID9cbiAgICAgICAgY3R4LnRvU291cmNlTWFwR2VuZXJhdG9yKGdlbkZpbGVQYXRoLCBwcmVhbWJsZUxpbmVzLmxlbmd0aCkudG9Kc0NvbW1lbnQoKSA6XG4gICAgICAgICcnO1xuICAgIGNvbnN0IGxpbmVzID0gWy4uLnByZWFtYmxlTGluZXMsIGN0eC50b1NvdXJjZSgpLCBzbV07XG4gICAgaWYgKHNtKSB7XG4gICAgICAvLyBhbHdheXMgYWRkIGEgbmV3bGluZSBhdCB0aGUgZW5kLCBhcyBzb21lIHRvb2xzIGhhdmUgYnVncyB3aXRob3V0IGl0LlxuICAgICAgbGluZXMucHVzaCgnJyk7XG4gICAgfVxuICAgIGN0eC5zZXRQcmVhbWJsZUxpbmVDb3VudChwcmVhbWJsZUxpbmVzLmxlbmd0aCk7XG4gICAgcmV0dXJuIHtzb3VyY2VUZXh0OiBsaW5lcy5qb2luKCdcXG4nKSwgY29udGV4dDogY3R4fTtcbiAgfVxuXG4gIGVtaXRTdGF0ZW1lbnRzKGdlbkZpbGVQYXRoOiBzdHJpbmcsIHN0bXRzOiBvLlN0YXRlbWVudFtdLCBwcmVhbWJsZTogc3RyaW5nID0gJycpIHtcbiAgICByZXR1cm4gdGhpcy5lbWl0U3RhdGVtZW50c0FuZENvbnRleHQoZ2VuRmlsZVBhdGgsIHN0bXRzLCBwcmVhbWJsZSkuc291cmNlVGV4dDtcbiAgfVxufVxuXG5cbmNsYXNzIF9Uc0VtaXR0ZXJWaXNpdG9yIGV4dGVuZHMgQWJzdHJhY3RFbWl0dGVyVmlzaXRvciBpbXBsZW1lbnRzIG8uVHlwZVZpc2l0b3Ige1xuICBwcml2YXRlIHR5cGVFeHByZXNzaW9uID0gMDtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIHJlZmVyZW5jZUZpbHRlcj86IFJlZmVyZW5jZUZpbHRlciwgcHJpdmF0ZSBpbXBvcnRGaWx0ZXI/OiBSZWZlcmVuY2VGaWx0ZXIpIHtcbiAgICBzdXBlcihmYWxzZSk7XG4gIH1cblxuICBpbXBvcnRzV2l0aFByZWZpeGVzID0gbmV3IE1hcDxzdHJpbmcsIHN0cmluZz4oKTtcbiAgcmVleHBvcnRzID0gbmV3IE1hcDxzdHJpbmcsIHtuYW1lOiBzdHJpbmcsIGFzOiBzdHJpbmd9W10+KCk7XG5cbiAgdmlzaXRUeXBlKHQ6IG8uVHlwZXxudWxsLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCwgZGVmYXVsdFR5cGU6IHN0cmluZyA9ICdhbnknKSB7XG4gICAgaWYgKHQpIHtcbiAgICAgIHRoaXMudHlwZUV4cHJlc3Npb24rKztcbiAgICAgIHQudmlzaXRUeXBlKHRoaXMsIGN0eCk7XG4gICAgICB0aGlzLnR5cGVFeHByZXNzaW9uLS07XG4gICAgfSBlbHNlIHtcbiAgICAgIGN0eC5wcmludChudWxsLCBkZWZhdWx0VHlwZSk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRMaXRlcmFsRXhwcihhc3Q6IG8uTGl0ZXJhbEV4cHIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBjb25zdCB2YWx1ZSA9IGFzdC52YWx1ZTtcbiAgICBpZiAodmFsdWUgPT0gbnVsbCAmJiBhc3QudHlwZSAhPSBvLklORkVSUkVEX1RZUEUpIHtcbiAgICAgIGN0eC5wcmludChhc3QsIGAoJHt2YWx1ZX0gYXMgYW55KWApO1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIHJldHVybiBzdXBlci52aXNpdExpdGVyYWxFeHByKGFzdCwgY3R4KTtcbiAgfVxuXG5cbiAgLy8gVGVtcG9yYXJ5IHdvcmthcm91bmQgdG8gc3VwcG9ydCBzdHJpY3ROdWxsQ2hlY2sgZW5hYmxlZCBjb25zdW1lcnMgb2YgbmdjIGVtaXQuXG4gIC8vIEluIFNOQyBtb2RlLCBbXSBoYXZlIHRoZSB0eXBlIG5ldmVyW10sIHNvIHdlIGNhc3QgaGVyZSB0byBhbnlbXS5cbiAgLy8gVE9ETzogbmFycm93IHRoZSBjYXN0IHRvIGEgbW9yZSBleHBsaWNpdCB0eXBlLCBvciB1c2UgYSBwYXR0ZXJuIHRoYXQgZG9lcyBub3RcbiAgLy8gc3RhcnQgd2l0aCBbXS5jb25jYXQuIHNlZSBodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9hbmd1bGFyL3B1bGwvMTE4NDZcbiAgdmlzaXRMaXRlcmFsQXJyYXlFeHByKGFzdDogby5MaXRlcmFsQXJyYXlFeHByLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgaWYgKGFzdC5lbnRyaWVzLmxlbmd0aCA9PT0gMCkge1xuICAgICAgY3R4LnByaW50KGFzdCwgJygnKTtcbiAgICB9XG4gICAgY29uc3QgcmVzdWx0ID0gc3VwZXIudmlzaXRMaXRlcmFsQXJyYXlFeHByKGFzdCwgY3R4KTtcbiAgICBpZiAoYXN0LmVudHJpZXMubGVuZ3RoID09PSAwKSB7XG4gICAgICBjdHgucHJpbnQoYXN0LCAnIGFzIGFueVtdKScpO1xuICAgIH1cbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgdmlzaXRFeHRlcm5hbEV4cHIoYXN0OiBvLkV4dGVybmFsRXhwciwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIHRoaXMuX3Zpc2l0SWRlbnRpZmllcihhc3QudmFsdWUsIGFzdC50eXBlUGFyYW1zLCBjdHgpO1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgdmlzaXRBc3NlcnROb3ROdWxsRXhwcihhc3Q6IG8uQXNzZXJ0Tm90TnVsbCwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIGNvbnN0IHJlc3VsdCA9IHN1cGVyLnZpc2l0QXNzZXJ0Tm90TnVsbEV4cHIoYXN0LCBjdHgpO1xuICAgIGN0eC5wcmludChhc3QsICchJyk7XG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIHZpc2l0RGVjbGFyZVZhclN0bXQoc3RtdDogby5EZWNsYXJlVmFyU3RtdCwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIGlmIChzdG10Lmhhc01vZGlmaWVyKG8uU3RtdE1vZGlmaWVyLkV4cG9ydGVkKSAmJiBzdG10LnZhbHVlIGluc3RhbmNlb2Ygby5FeHRlcm5hbEV4cHIgJiZcbiAgICAgICAgIXN0bXQudHlwZSkge1xuICAgICAgLy8gY2hlY2sgZm9yIGEgcmVleHBvcnRcbiAgICAgIGNvbnN0IHtuYW1lLCBtb2R1bGVOYW1lfSA9IHN0bXQudmFsdWUudmFsdWU7XG4gICAgICBpZiAobW9kdWxlTmFtZSkge1xuICAgICAgICBsZXQgcmVleHBvcnRzID0gdGhpcy5yZWV4cG9ydHMuZ2V0KG1vZHVsZU5hbWUpO1xuICAgICAgICBpZiAoIXJlZXhwb3J0cykge1xuICAgICAgICAgIHJlZXhwb3J0cyA9IFtdO1xuICAgICAgICAgIHRoaXMucmVleHBvcnRzLnNldChtb2R1bGVOYW1lLCByZWV4cG9ydHMpO1xuICAgICAgICB9XG4gICAgICAgIHJlZXhwb3J0cy5wdXNoKHtuYW1lOiBuYW1lICEsIGFzOiBzdG10Lm5hbWV9KTtcbiAgICAgICAgcmV0dXJuIG51bGw7XG4gICAgICB9XG4gICAgfVxuICAgIGlmIChzdG10Lmhhc01vZGlmaWVyKG8uU3RtdE1vZGlmaWVyLkV4cG9ydGVkKSkge1xuICAgICAgY3R4LnByaW50KHN0bXQsIGBleHBvcnQgYCk7XG4gICAgfVxuICAgIGlmIChzdG10Lmhhc01vZGlmaWVyKG8uU3RtdE1vZGlmaWVyLkZpbmFsKSkge1xuICAgICAgY3R4LnByaW50KHN0bXQsIGBjb25zdGApO1xuICAgIH0gZWxzZSB7XG4gICAgICBjdHgucHJpbnQoc3RtdCwgYHZhcmApO1xuICAgIH1cbiAgICBjdHgucHJpbnQoc3RtdCwgYCAke3N0bXQubmFtZX1gKTtcbiAgICB0aGlzLl9wcmludENvbG9uVHlwZShzdG10LnR5cGUsIGN0eCk7XG4gICAgaWYgKHN0bXQudmFsdWUpIHtcbiAgICAgIGN0eC5wcmludChzdG10LCBgID0gYCk7XG4gICAgICBzdG10LnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIH1cbiAgICBjdHgucHJpbnRsbihzdG10LCBgO2ApO1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgdmlzaXRXcmFwcGVkTm9kZUV4cHIoYXN0OiBvLldyYXBwZWROb2RlRXhwcjxhbnk+LCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IG5ldmVyIHtcbiAgICB0aHJvdyBuZXcgRXJyb3IoJ0Nhbm5vdCB2aXNpdCBhIFdyYXBwZWROb2RlRXhwciB3aGVuIG91dHB1dHRpbmcgVHlwZXNjcmlwdC4nKTtcbiAgfVxuXG4gIHZpc2l0Q2FzdEV4cHIoYXN0OiBvLkNhc3RFeHByLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgY3R4LnByaW50KGFzdCwgYCg8YCk7XG4gICAgYXN0LnR5cGUgIS52aXNpdFR5cGUodGhpcywgY3R4KTtcbiAgICBjdHgucHJpbnQoYXN0LCBgPmApO1xuICAgIGFzdC52YWx1ZS52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KTtcbiAgICBjdHgucHJpbnQoYXN0LCBgKWApO1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgdmlzaXRJbnN0YW50aWF0ZUV4cHIoYXN0OiBvLkluc3RhbnRpYXRlRXhwciwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIGN0eC5wcmludChhc3QsIGBuZXcgYCk7XG4gICAgdGhpcy50eXBlRXhwcmVzc2lvbisrO1xuICAgIGFzdC5jbGFzc0V4cHIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgdGhpcy50eXBlRXhwcmVzc2lvbi0tO1xuICAgIGN0eC5wcmludChhc3QsIGAoYCk7XG4gICAgdGhpcy52aXNpdEFsbEV4cHJlc3Npb25zKGFzdC5hcmdzLCBjdHgsICcsJyk7XG4gICAgY3R4LnByaW50KGFzdCwgYClgKTtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIHZpc2l0RGVjbGFyZUNsYXNzU3RtdChzdG10OiBvLkNsYXNzU3RtdCwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIGN0eC5wdXNoQ2xhc3Moc3RtdCk7XG4gICAgaWYgKHN0bXQuaGFzTW9kaWZpZXIoby5TdG10TW9kaWZpZXIuRXhwb3J0ZWQpKSB7XG4gICAgICBjdHgucHJpbnQoc3RtdCwgYGV4cG9ydCBgKTtcbiAgICB9XG4gICAgY3R4LnByaW50KHN0bXQsIGBjbGFzcyAke3N0bXQubmFtZX1gKTtcbiAgICBpZiAoc3RtdC5wYXJlbnQgIT0gbnVsbCkge1xuICAgICAgY3R4LnByaW50KHN0bXQsIGAgZXh0ZW5kcyBgKTtcbiAgICAgIHRoaXMudHlwZUV4cHJlc3Npb24rKztcbiAgICAgIHN0bXQucGFyZW50LnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgICAgdGhpcy50eXBlRXhwcmVzc2lvbi0tO1xuICAgIH1cbiAgICBjdHgucHJpbnRsbihzdG10LCBgIHtgKTtcbiAgICBjdHguaW5jSW5kZW50KCk7XG4gICAgc3RtdC5maWVsZHMuZm9yRWFjaCgoZmllbGQpID0+IHRoaXMuX3Zpc2l0Q2xhc3NGaWVsZChmaWVsZCwgY3R4KSk7XG4gICAgaWYgKHN0bXQuY29uc3RydWN0b3JNZXRob2QgIT0gbnVsbCkge1xuICAgICAgdGhpcy5fdmlzaXRDbGFzc0NvbnN0cnVjdG9yKHN0bXQsIGN0eCk7XG4gICAgfVxuICAgIHN0bXQuZ2V0dGVycy5mb3JFYWNoKChnZXR0ZXIpID0+IHRoaXMuX3Zpc2l0Q2xhc3NHZXR0ZXIoZ2V0dGVyLCBjdHgpKTtcbiAgICBzdG10Lm1ldGhvZHMuZm9yRWFjaCgobWV0aG9kKSA9PiB0aGlzLl92aXNpdENsYXNzTWV0aG9kKG1ldGhvZCwgY3R4KSk7XG4gICAgY3R4LmRlY0luZGVudCgpO1xuICAgIGN0eC5wcmludGxuKHN0bXQsIGB9YCk7XG4gICAgY3R4LnBvcENsYXNzKCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBwcml2YXRlIF92aXNpdENsYXNzRmllbGQoZmllbGQ6IG8uQ2xhc3NGaWVsZCwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpIHtcbiAgICBpZiAoZmllbGQuaGFzTW9kaWZpZXIoby5TdG10TW9kaWZpZXIuUHJpdmF0ZSkpIHtcbiAgICAgIC8vIGNvbW1lbnQgb3V0IGFzIGEgd29ya2Fyb3VuZCBmb3IgIzEwOTY3XG4gICAgICBjdHgucHJpbnQobnVsbCwgYC8qcHJpdmF0ZSovIGApO1xuICAgIH1cbiAgICBpZiAoZmllbGQuaGFzTW9kaWZpZXIoby5TdG10TW9kaWZpZXIuU3RhdGljKSkge1xuICAgICAgY3R4LnByaW50KG51bGwsICdzdGF0aWMgJyk7XG4gICAgfVxuICAgIGN0eC5wcmludChudWxsLCBmaWVsZC5uYW1lKTtcbiAgICB0aGlzLl9wcmludENvbG9uVHlwZShmaWVsZC50eXBlLCBjdHgpO1xuICAgIGlmIChmaWVsZC5pbml0aWFsaXplcikge1xuICAgICAgY3R4LnByaW50KG51bGwsICcgPSAnKTtcbiAgICAgIGZpZWxkLmluaXRpYWxpemVyLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIH1cbiAgICBjdHgucHJpbnRsbihudWxsLCBgO2ApO1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXRDbGFzc0dldHRlcihnZXR0ZXI6IG8uQ2xhc3NHZXR0ZXIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KSB7XG4gICAgaWYgKGdldHRlci5oYXNNb2RpZmllcihvLlN0bXRNb2RpZmllci5Qcml2YXRlKSkge1xuICAgICAgY3R4LnByaW50KG51bGwsIGBwcml2YXRlIGApO1xuICAgIH1cbiAgICBjdHgucHJpbnQobnVsbCwgYGdldCAke2dldHRlci5uYW1lfSgpYCk7XG4gICAgdGhpcy5fcHJpbnRDb2xvblR5cGUoZ2V0dGVyLnR5cGUsIGN0eCk7XG4gICAgY3R4LnByaW50bG4obnVsbCwgYCB7YCk7XG4gICAgY3R4LmluY0luZGVudCgpO1xuICAgIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKGdldHRlci5ib2R5LCBjdHgpO1xuICAgIGN0eC5kZWNJbmRlbnQoKTtcbiAgICBjdHgucHJpbnRsbihudWxsLCBgfWApO1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXRDbGFzc0NvbnN0cnVjdG9yKHN0bXQ6IG8uQ2xhc3NTdG10LCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCkge1xuICAgIGN0eC5wcmludChzdG10LCBgY29uc3RydWN0b3IoYCk7XG4gICAgdGhpcy5fdmlzaXRQYXJhbXMoc3RtdC5jb25zdHJ1Y3Rvck1ldGhvZC5wYXJhbXMsIGN0eCk7XG4gICAgY3R4LnByaW50bG4oc3RtdCwgYCkge2ApO1xuICAgIGN0eC5pbmNJbmRlbnQoKTtcbiAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LmNvbnN0cnVjdG9yTWV0aG9kLmJvZHksIGN0eCk7XG4gICAgY3R4LmRlY0luZGVudCgpO1xuICAgIGN0eC5wcmludGxuKHN0bXQsIGB9YCk7XG4gIH1cblxuICBwcml2YXRlIF92aXNpdENsYXNzTWV0aG9kKG1ldGhvZDogby5DbGFzc01ldGhvZCwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpIHtcbiAgICBpZiAobWV0aG9kLmhhc01vZGlmaWVyKG8uU3RtdE1vZGlmaWVyLlByaXZhdGUpKSB7XG4gICAgICBjdHgucHJpbnQobnVsbCwgYHByaXZhdGUgYCk7XG4gICAgfVxuICAgIGN0eC5wcmludChudWxsLCBgJHttZXRob2QubmFtZX0oYCk7XG4gICAgdGhpcy5fdmlzaXRQYXJhbXMobWV0aG9kLnBhcmFtcywgY3R4KTtcbiAgICBjdHgucHJpbnQobnVsbCwgYClgKTtcbiAgICB0aGlzLl9wcmludENvbG9uVHlwZShtZXRob2QudHlwZSwgY3R4LCAndm9pZCcpO1xuICAgIGN0eC5wcmludGxuKG51bGwsIGAge2ApO1xuICAgIGN0eC5pbmNJbmRlbnQoKTtcbiAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhtZXRob2QuYm9keSwgY3R4KTtcbiAgICBjdHguZGVjSW5kZW50KCk7XG4gICAgY3R4LnByaW50bG4obnVsbCwgYH1gKTtcbiAgfVxuXG4gIHZpc2l0RnVuY3Rpb25FeHByKGFzdDogby5GdW5jdGlvbkV4cHIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBpZiAoYXN0Lm5hbWUpIHtcbiAgICAgIGN0eC5wcmludChhc3QsICdmdW5jdGlvbiAnKTtcbiAgICAgIGN0eC5wcmludChhc3QsIGFzdC5uYW1lKTtcbiAgICB9XG4gICAgY3R4LnByaW50KGFzdCwgYChgKTtcbiAgICB0aGlzLl92aXNpdFBhcmFtcyhhc3QucGFyYW1zLCBjdHgpO1xuICAgIGN0eC5wcmludChhc3QsIGApYCk7XG4gICAgdGhpcy5fcHJpbnRDb2xvblR5cGUoYXN0LnR5cGUsIGN0eCwgJ3ZvaWQnKTtcbiAgICBpZiAoIWFzdC5uYW1lKSB7XG4gICAgICBjdHgucHJpbnQoYXN0LCBgID0+IGApO1xuICAgIH1cbiAgICBjdHgucHJpbnRsbihhc3QsICd7Jyk7XG4gICAgY3R4LmluY0luZGVudCgpO1xuICAgIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKGFzdC5zdGF0ZW1lbnRzLCBjdHgpO1xuICAgIGN0eC5kZWNJbmRlbnQoKTtcbiAgICBjdHgucHJpbnQoYXN0LCBgfWApO1xuXG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICB2aXNpdERlY2xhcmVGdW5jdGlvblN0bXQoc3RtdDogby5EZWNsYXJlRnVuY3Rpb25TdG10LCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgaWYgKHN0bXQuaGFzTW9kaWZpZXIoby5TdG10TW9kaWZpZXIuRXhwb3J0ZWQpKSB7XG4gICAgICBjdHgucHJpbnQoc3RtdCwgYGV4cG9ydCBgKTtcbiAgICB9XG4gICAgY3R4LnByaW50KHN0bXQsIGBmdW5jdGlvbiAke3N0bXQubmFtZX0oYCk7XG4gICAgdGhpcy5fdmlzaXRQYXJhbXMoc3RtdC5wYXJhbXMsIGN0eCk7XG4gICAgY3R4LnByaW50KHN0bXQsIGApYCk7XG4gICAgdGhpcy5fcHJpbnRDb2xvblR5cGUoc3RtdC50eXBlLCBjdHgsICd2b2lkJyk7XG4gICAgY3R4LnByaW50bG4oc3RtdCwgYCB7YCk7XG4gICAgY3R4LmluY0luZGVudCgpO1xuICAgIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXQuc3RhdGVtZW50cywgY3R4KTtcbiAgICBjdHguZGVjSW5kZW50KCk7XG4gICAgY3R4LnByaW50bG4oc3RtdCwgYH1gKTtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIHZpc2l0VHJ5Q2F0Y2hTdG10KHN0bXQ6IG8uVHJ5Q2F0Y2hTdG10LCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgY3R4LnByaW50bG4oc3RtdCwgYHRyeSB7YCk7XG4gICAgY3R4LmluY0luZGVudCgpO1xuICAgIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXQuYm9keVN0bXRzLCBjdHgpO1xuICAgIGN0eC5kZWNJbmRlbnQoKTtcbiAgICBjdHgucHJpbnRsbihzdG10LCBgfSBjYXRjaCAoJHtDQVRDSF9FUlJPUl9WQVIubmFtZX0pIHtgKTtcbiAgICBjdHguaW5jSW5kZW50KCk7XG4gICAgY29uc3QgY2F0Y2hTdG10cyA9XG4gICAgICAgIFs8by5TdGF0ZW1lbnQ+Q0FUQ0hfU1RBQ0tfVkFSLnNldChDQVRDSF9FUlJPUl9WQVIucHJvcCgnc3RhY2snLCBudWxsKSkudG9EZWNsU3RtdChudWxsLCBbXG4gICAgICAgICAgby5TdG10TW9kaWZpZXIuRmluYWxcbiAgICAgICAgXSldLmNvbmNhdChzdG10LmNhdGNoU3RtdHMpO1xuICAgIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKGNhdGNoU3RtdHMsIGN0eCk7XG4gICAgY3R4LmRlY0luZGVudCgpO1xuICAgIGN0eC5wcmludGxuKHN0bXQsIGB9YCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICB2aXNpdEJ1aWx0aW5UeXBlKHR5cGU6IG8uQnVpbHRpblR5cGUsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBsZXQgdHlwZVN0cjogc3RyaW5nO1xuICAgIHN3aXRjaCAodHlwZS5uYW1lKSB7XG4gICAgICBjYXNlIG8uQnVpbHRpblR5cGVOYW1lLkJvb2w6XG4gICAgICAgIHR5cGVTdHIgPSAnYm9vbGVhbic7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBvLkJ1aWx0aW5UeXBlTmFtZS5EeW5hbWljOlxuICAgICAgICB0eXBlU3RyID0gJ2FueSc7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBvLkJ1aWx0aW5UeXBlTmFtZS5GdW5jdGlvbjpcbiAgICAgICAgdHlwZVN0ciA9ICdGdW5jdGlvbic7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBvLkJ1aWx0aW5UeXBlTmFtZS5OdW1iZXI6XG4gICAgICAgIHR5cGVTdHIgPSAnbnVtYmVyJztcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIG8uQnVpbHRpblR5cGVOYW1lLkludDpcbiAgICAgICAgdHlwZVN0ciA9ICdudW1iZXInO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2Ugby5CdWlsdGluVHlwZU5hbWUuU3RyaW5nOlxuICAgICAgICB0eXBlU3RyID0gJ3N0cmluZyc7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBvLkJ1aWx0aW5UeXBlTmFtZS5Ob25lOlxuICAgICAgICB0eXBlU3RyID0gJ25ldmVyJztcbiAgICAgICAgYnJlYWs7XG4gICAgICBkZWZhdWx0OlxuICAgICAgICB0aHJvdyBuZXcgRXJyb3IoYFVuc3VwcG9ydGVkIGJ1aWx0aW4gdHlwZSAke3R5cGUubmFtZX1gKTtcbiAgICB9XG4gICAgY3R4LnByaW50KG51bGwsIHR5cGVTdHIpO1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgdmlzaXRFeHByZXNzaW9uVHlwZShhc3Q6IG8uRXhwcmVzc2lvblR5cGUsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBhc3QudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgaWYgKGFzdC50eXBlUGFyYW1zICE9PSBudWxsKSB7XG4gICAgICBjdHgucHJpbnQobnVsbCwgJzwnKTtcbiAgICAgIHRoaXMudmlzaXRBbGxPYmplY3RzKHR5cGUgPT4gdGhpcy52aXNpdFR5cGUodHlwZSwgY3R4KSwgYXN0LnR5cGVQYXJhbXMsIGN0eCwgJywnKTtcbiAgICAgIGN0eC5wcmludChudWxsLCAnPicpO1xuICAgIH1cbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIHZpc2l0QXJyYXlUeXBlKHR5cGU6IG8uQXJyYXlUeXBlLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgdGhpcy52aXNpdFR5cGUodHlwZS5vZiwgY3R4KTtcbiAgICBjdHgucHJpbnQobnVsbCwgYFtdYCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICB2aXNpdE1hcFR5cGUodHlwZTogby5NYXBUeXBlLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgY3R4LnByaW50KG51bGwsIGB7W2tleTogc3RyaW5nXTpgKTtcbiAgICB0aGlzLnZpc2l0VHlwZSh0eXBlLnZhbHVlVHlwZSwgY3R4KTtcbiAgICBjdHgucHJpbnQobnVsbCwgYH1gKTtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIGdldEJ1aWx0aW5NZXRob2ROYW1lKG1ldGhvZDogby5CdWlsdGluTWV0aG9kKTogc3RyaW5nIHtcbiAgICBsZXQgbmFtZTogc3RyaW5nO1xuICAgIHN3aXRjaCAobWV0aG9kKSB7XG4gICAgICBjYXNlIG8uQnVpbHRpbk1ldGhvZC5Db25jYXRBcnJheTpcbiAgICAgICAgbmFtZSA9ICdjb25jYXQnO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2Ugby5CdWlsdGluTWV0aG9kLlN1YnNjcmliZU9ic2VydmFibGU6XG4gICAgICAgIG5hbWUgPSAnc3Vic2NyaWJlJztcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIG8uQnVpbHRpbk1ldGhvZC5CaW5kOlxuICAgICAgICBuYW1lID0gJ2JpbmQnO1xuICAgICAgICBicmVhaztcbiAgICAgIGRlZmF1bHQ6XG4gICAgICAgIHRocm93IG5ldyBFcnJvcihgVW5rbm93biBidWlsdGluIG1ldGhvZDogJHttZXRob2R9YCk7XG4gICAgfVxuICAgIHJldHVybiBuYW1lO1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXRQYXJhbXMocGFyYW1zOiBvLkZuUGFyYW1bXSwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiB2b2lkIHtcbiAgICB0aGlzLnZpc2l0QWxsT2JqZWN0cyhwYXJhbSA9PiB7XG4gICAgICBjdHgucHJpbnQobnVsbCwgcGFyYW0ubmFtZSk7XG4gICAgICB0aGlzLl9wcmludENvbG9uVHlwZShwYXJhbS50eXBlLCBjdHgpO1xuICAgIH0sIHBhcmFtcywgY3R4LCAnLCcpO1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXRJZGVudGlmaWVyKFxuICAgICAgdmFsdWU6IG8uRXh0ZXJuYWxSZWZlcmVuY2UsIHR5cGVQYXJhbXM6IG8uVHlwZVtdfG51bGwsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogdm9pZCB7XG4gICAgY29uc3Qge25hbWUsIG1vZHVsZU5hbWV9ID0gdmFsdWU7XG4gICAgaWYgKHRoaXMucmVmZXJlbmNlRmlsdGVyICYmIHRoaXMucmVmZXJlbmNlRmlsdGVyKHZhbHVlKSkge1xuICAgICAgY3R4LnByaW50KG51bGwsICcobnVsbCBhcyBhbnkpJyk7XG4gICAgICByZXR1cm47XG4gICAgfVxuICAgIGlmIChtb2R1bGVOYW1lICYmICghdGhpcy5pbXBvcnRGaWx0ZXIgfHwgIXRoaXMuaW1wb3J0RmlsdGVyKHZhbHVlKSkpIHtcbiAgICAgIGxldCBwcmVmaXggPSB0aGlzLmltcG9ydHNXaXRoUHJlZml4ZXMuZ2V0KG1vZHVsZU5hbWUpO1xuICAgICAgaWYgKHByZWZpeCA9PSBudWxsKSB7XG4gICAgICAgIHByZWZpeCA9IGBpJHt0aGlzLmltcG9ydHNXaXRoUHJlZml4ZXMuc2l6ZX1gO1xuICAgICAgICB0aGlzLmltcG9ydHNXaXRoUHJlZml4ZXMuc2V0KG1vZHVsZU5hbWUsIHByZWZpeCk7XG4gICAgICB9XG4gICAgICBjdHgucHJpbnQobnVsbCwgYCR7cHJlZml4fS5gKTtcbiAgICB9XG4gICAgY3R4LnByaW50KG51bGwsIG5hbWUgISk7XG5cbiAgICBpZiAodGhpcy50eXBlRXhwcmVzc2lvbiA+IDApIHtcbiAgICAgIC8vIElmIHdlIGFyZSBpbiBhIHR5cGUgZXhwcmVzc2lvbiB0aGF0IHJlZmVycyB0byBhIGdlbmVyaWMgdHlwZSB0aGVuIHN1cHBseVxuICAgICAgLy8gdGhlIHJlcXVpcmVkIHR5cGUgcGFyYW1ldGVycy4gSWYgdGhlcmUgd2VyZSBub3QgZW5vdWdoIHR5cGUgcGFyYW1ldGVyc1xuICAgICAgLy8gc3VwcGxpZWQsIHN1cHBseSBhbnkgYXMgdGhlIHR5cGUuIE91dHNpZGUgYSB0eXBlIGV4cHJlc3Npb24gdGhlIHJlZmVyZW5jZVxuICAgICAgLy8gc2hvdWxkIG5vdCBzdXBwbHkgdHlwZSBwYXJhbWV0ZXJzIGFuZCBiZSB0cmVhdGVkIGFzIGEgc2ltcGxlIHZhbHVlIHJlZmVyZW5jZVxuICAgICAgLy8gdG8gdGhlIGNvbnN0cnVjdG9yIGZ1bmN0aW9uIGl0c2VsZi5cbiAgICAgIGNvbnN0IHN1cHBsaWVkUGFyYW1ldGVycyA9IHR5cGVQYXJhbXMgfHwgW107XG4gICAgICBpZiAoc3VwcGxpZWRQYXJhbWV0ZXJzLmxlbmd0aCA+IDApIHtcbiAgICAgICAgY3R4LnByaW50KG51bGwsIGA8YCk7XG4gICAgICAgIHRoaXMudmlzaXRBbGxPYmplY3RzKHR5cGUgPT4gdHlwZS52aXNpdFR5cGUodGhpcywgY3R4KSwgdHlwZVBhcmFtcyAhLCBjdHgsICcsJyk7XG4gICAgICAgIGN0eC5wcmludChudWxsLCBgPmApO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX3ByaW50Q29sb25UeXBlKHR5cGU6IG8uVHlwZXxudWxsLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCwgZGVmYXVsdFR5cGU/OiBzdHJpbmcpIHtcbiAgICBpZiAodHlwZSAhPT0gby5JTkZFUlJFRF9UWVBFKSB7XG4gICAgICBjdHgucHJpbnQobnVsbCwgJzonKTtcbiAgICAgIHRoaXMudmlzaXRUeXBlKHR5cGUsIGN0eCwgZGVmYXVsdFR5cGUpO1xuICAgIH1cbiAgfVxufVxuIl19