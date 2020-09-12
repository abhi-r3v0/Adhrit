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
        define("@angular/compiler/src/output/abstract_js_emitter", ["require", "exports", "tslib", "@angular/compiler/src/output/abstract_emitter", "@angular/compiler/src/output/output_ast"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.AbstractJsEmitterVisitor = void 0;
    var tslib_1 = require("tslib");
    var abstract_emitter_1 = require("@angular/compiler/src/output/abstract_emitter");
    var o = require("@angular/compiler/src/output/output_ast");
    var AbstractJsEmitterVisitor = /** @class */ (function (_super) {
        tslib_1.__extends(AbstractJsEmitterVisitor, _super);
        function AbstractJsEmitterVisitor() {
            return _super.call(this, false) || this;
        }
        AbstractJsEmitterVisitor.prototype.visitDeclareClassStmt = function (stmt, ctx) {
            var _this = this;
            ctx.pushClass(stmt);
            this._visitClassConstructor(stmt, ctx);
            if (stmt.parent != null) {
                ctx.print(stmt, stmt.name + ".prototype = Object.create(");
                stmt.parent.visitExpression(this, ctx);
                ctx.println(stmt, ".prototype);");
            }
            stmt.getters.forEach(function (getter) { return _this._visitClassGetter(stmt, getter, ctx); });
            stmt.methods.forEach(function (method) { return _this._visitClassMethod(stmt, method, ctx); });
            ctx.popClass();
            return null;
        };
        AbstractJsEmitterVisitor.prototype._visitClassConstructor = function (stmt, ctx) {
            ctx.print(stmt, "function " + stmt.name + "(");
            if (stmt.constructorMethod != null) {
                this._visitParams(stmt.constructorMethod.params, ctx);
            }
            ctx.println(stmt, ") {");
            ctx.incIndent();
            if (stmt.constructorMethod != null) {
                if (stmt.constructorMethod.body.length > 0) {
                    ctx.println(stmt, "var self = this;");
                    this.visitAllStatements(stmt.constructorMethod.body, ctx);
                }
            }
            ctx.decIndent();
            ctx.println(stmt, "}");
        };
        AbstractJsEmitterVisitor.prototype._visitClassGetter = function (stmt, getter, ctx) {
            ctx.println(stmt, "Object.defineProperty(" + stmt.name + ".prototype, '" + getter.name + "', { get: function() {");
            ctx.incIndent();
            if (getter.body.length > 0) {
                ctx.println(stmt, "var self = this;");
                this.visitAllStatements(getter.body, ctx);
            }
            ctx.decIndent();
            ctx.println(stmt, "}});");
        };
        AbstractJsEmitterVisitor.prototype._visitClassMethod = function (stmt, method, ctx) {
            ctx.print(stmt, stmt.name + ".prototype." + method.name + " = function(");
            this._visitParams(method.params, ctx);
            ctx.println(stmt, ") {");
            ctx.incIndent();
            if (method.body.length > 0) {
                ctx.println(stmt, "var self = this;");
                this.visitAllStatements(method.body, ctx);
            }
            ctx.decIndent();
            ctx.println(stmt, "};");
        };
        AbstractJsEmitterVisitor.prototype.visitWrappedNodeExpr = function (ast, ctx) {
            throw new Error('Cannot emit a WrappedNodeExpr in Javascript.');
        };
        AbstractJsEmitterVisitor.prototype.visitReadVarExpr = function (ast, ctx) {
            if (ast.builtin === o.BuiltinVar.This) {
                ctx.print(ast, 'self');
            }
            else if (ast.builtin === o.BuiltinVar.Super) {
                throw new Error("'super' needs to be handled at a parent ast node, not at the variable level!");
            }
            else {
                _super.prototype.visitReadVarExpr.call(this, ast, ctx);
            }
            return null;
        };
        AbstractJsEmitterVisitor.prototype.visitDeclareVarStmt = function (stmt, ctx) {
            ctx.print(stmt, "var " + stmt.name);
            if (stmt.value) {
                ctx.print(stmt, ' = ');
                stmt.value.visitExpression(this, ctx);
            }
            ctx.println(stmt, ";");
            return null;
        };
        AbstractJsEmitterVisitor.prototype.visitCastExpr = function (ast, ctx) {
            ast.value.visitExpression(this, ctx);
            return null;
        };
        AbstractJsEmitterVisitor.prototype.visitInvokeFunctionExpr = function (expr, ctx) {
            var fnExpr = expr.fn;
            if (fnExpr instanceof o.ReadVarExpr && fnExpr.builtin === o.BuiltinVar.Super) {
                ctx.currentClass.parent.visitExpression(this, ctx);
                ctx.print(expr, ".call(this");
                if (expr.args.length > 0) {
                    ctx.print(expr, ", ");
                    this.visitAllExpressions(expr.args, ctx, ',');
                }
                ctx.print(expr, ")");
            }
            else {
                _super.prototype.visitInvokeFunctionExpr.call(this, expr, ctx);
            }
            return null;
        };
        AbstractJsEmitterVisitor.prototype.visitFunctionExpr = function (ast, ctx) {
            ctx.print(ast, "function" + (ast.name ? ' ' + ast.name : '') + "(");
            this._visitParams(ast.params, ctx);
            ctx.println(ast, ") {");
            ctx.incIndent();
            this.visitAllStatements(ast.statements, ctx);
            ctx.decIndent();
            ctx.print(ast, "}");
            return null;
        };
        AbstractJsEmitterVisitor.prototype.visitDeclareFunctionStmt = function (stmt, ctx) {
            ctx.print(stmt, "function " + stmt.name + "(");
            this._visitParams(stmt.params, ctx);
            ctx.println(stmt, ") {");
            ctx.incIndent();
            this.visitAllStatements(stmt.statements, ctx);
            ctx.decIndent();
            ctx.println(stmt, "}");
            return null;
        };
        AbstractJsEmitterVisitor.prototype.visitTryCatchStmt = function (stmt, ctx) {
            ctx.println(stmt, "try {");
            ctx.incIndent();
            this.visitAllStatements(stmt.bodyStmts, ctx);
            ctx.decIndent();
            ctx.println(stmt, "} catch (" + abstract_emitter_1.CATCH_ERROR_VAR.name + ") {");
            ctx.incIndent();
            var catchStmts = [abstract_emitter_1.CATCH_STACK_VAR.set(abstract_emitter_1.CATCH_ERROR_VAR.prop('stack')).toDeclStmt(null, [
                    o.StmtModifier.Final
                ])].concat(stmt.catchStmts);
            this.visitAllStatements(catchStmts, ctx);
            ctx.decIndent();
            ctx.println(stmt, "}");
            return null;
        };
        AbstractJsEmitterVisitor.prototype.visitLocalizedString = function (ast, ctx) {
            var _this = this;
            // The following convoluted piece of code is effectively the downlevelled equivalent of
            // ```
            // $localize `...`
            // ```
            // which is effectively like:
            // ```
            // $localize(__makeTemplateObject(cooked, raw), expression1, expression2, ...);
            // ```
            //
            // The `$localize` function expects a "template object", which is an array of "cooked" strings
            // plus a `raw` property that contains an array of "raw" strings.
            //
            // In some environments a helper function called `__makeTemplateObject(cooked, raw)` might be
            // available, in which case we use that. Otherwise we must create our own helper function
            // inline.
            //
            // In the inline function, if `Object.defineProperty` is available we use that to attach the
            // `raw` array.
            ctx.print(ast, '$localize((this&&this.__makeTemplateObject||function(e,t){return Object.defineProperty?Object.defineProperty(e,"raw",{value:t}):e.raw=t,e})(');
            var parts = [ast.serializeI18nHead()];
            for (var i = 1; i < ast.messageParts.length; i++) {
                parts.push(ast.serializeI18nTemplatePart(i));
            }
            ctx.print(ast, "[" + parts.map(function (part) { return abstract_emitter_1.escapeIdentifier(part.cooked, false); }).join(', ') + "], ");
            ctx.print(ast, "[" + parts.map(function (part) { return abstract_emitter_1.escapeIdentifier(part.raw, false); }).join(', ') + "])");
            ast.expressions.forEach(function (expression) {
                ctx.print(ast, ', ');
                expression.visitExpression(_this, ctx);
            });
            ctx.print(ast, ')');
            return null;
        };
        AbstractJsEmitterVisitor.prototype._visitParams = function (params, ctx) {
            this.visitAllObjects(function (param) { return ctx.print(null, param.name); }, params, ctx, ',');
        };
        AbstractJsEmitterVisitor.prototype.getBuiltinMethodName = function (method) {
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
        return AbstractJsEmitterVisitor;
    }(abstract_emitter_1.AbstractEmitterVisitor));
    exports.AbstractJsEmitterVisitor = AbstractJsEmitterVisitor;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYWJzdHJhY3RfanNfZW1pdHRlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9vdXRwdXQvYWJzdHJhY3RfanNfZW1pdHRlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBR0gsa0ZBQXFJO0lBQ3JJLDJEQUFrQztJQUVsQztRQUF1RCxvREFBc0I7UUFDM0U7bUJBQ0Usa0JBQU0sS0FBSyxDQUFDO1FBQ2QsQ0FBQztRQUNELHdEQUFxQixHQUFyQixVQUFzQixJQUFpQixFQUFFLEdBQTBCO1lBQW5FLGlCQWFDO1lBWkMsR0FBRyxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUNwQixJQUFJLENBQUMsc0JBQXNCLENBQUMsSUFBSSxFQUFFLEdBQUcsQ0FBQyxDQUFDO1lBRXZDLElBQUksSUFBSSxDQUFDLE1BQU0sSUFBSSxJQUFJLEVBQUU7Z0JBQ3ZCLEdBQUcsQ0FBQyxLQUFLLENBQUMsSUFBSSxFQUFLLElBQUksQ0FBQyxJQUFJLGdDQUE2QixDQUFDLENBQUM7Z0JBQzNELElBQUksQ0FBQyxNQUFNLENBQUMsZUFBZSxDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsQ0FBQztnQkFDdkMsR0FBRyxDQUFDLE9BQU8sQ0FBQyxJQUFJLEVBQUUsY0FBYyxDQUFDLENBQUM7YUFDbkM7WUFDRCxJQUFJLENBQUMsT0FBTyxDQUFDLE9BQU8sQ0FBQyxVQUFDLE1BQU0sSUFBSyxPQUFBLEtBQUksQ0FBQyxpQkFBaUIsQ0FBQyxJQUFJLEVBQUUsTUFBTSxFQUFFLEdBQUcsQ0FBQyxFQUF6QyxDQUF5QyxDQUFDLENBQUM7WUFDNUUsSUFBSSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsVUFBQyxNQUFNLElBQUssT0FBQSxLQUFJLENBQUMsaUJBQWlCLENBQUMsSUFBSSxFQUFFLE1BQU0sRUFBRSxHQUFHLENBQUMsRUFBekMs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TUFBTSxFQUFFO2dCQUNkLEtBQUssQ0FBQyxDQUFDLGFBQWEsQ0FBQyxXQUFXO29CQUM5QixJQUFJLEdBQUcsUUFBUSxDQUFDO29CQUNoQixNQUFNO2dCQUNSLEtBQUssQ0FBQyxDQUFDLGFBQWEsQ0FBQyxtQkFBbUI7b0JBQ3RDLElBQUksR0FBRyxXQUFXLENBQUM7b0JBQ25CLE1BQU07Z0JBQ1IsS0FBSyxDQUFDLENBQUMsYUFBYSxDQUFDLElBQUk7b0JBQ3ZCLElBQUksR0FBRyxNQUFNLENBQUM7b0JBQ2QsTUFBTTtnQkFDUjtvQkFDRSxNQUFNLElBQUksS0FBSyxDQUFDLDZCQUEyQixNQUFRLENBQUMsQ0FBQzthQUN4RDtZQUNELE9BQU8sSUFBSSxDQUFDO1FBQ2QsQ0FBQztRQUNILCtCQUFDO0lBQUQsQ0FBQyxBQXZNRCxDQUF1RCx5Q0FBc0IsR0F1TTVFO0lBdk1xQiw0REFBd0IiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuXG5pbXBvcnQge0Fic3RyYWN0RW1pdHRlclZpc2l0b3IsIENBVENIX0VSUk9SX1ZBUiwgQ0FUQ0hfU1RBQ0tfVkFSLCBFbWl0dGVyVmlzaXRvckNvbnRleHQsIGVzY2FwZUlkZW50aWZpZXJ9IGZyb20gJy4vYWJzdHJhY3RfZW1pdHRlcic7XG5pbXBvcnQgKiBhcyBvIGZyb20gJy4vb3V0cHV0X2FzdCc7XG5cbmV4cG9ydCBhYnN0cmFjdCBjbGFzcyBBYnN0cmFjdEpzRW1pdHRlclZpc2l0b3IgZXh0ZW5kcyBBYnN0cmFjdEVtaXR0ZXJWaXNpdG9yIHtcbiAgY29uc3RydWN0b3IoKSB7XG4gICAgc3VwZXIoZmFsc2UpO1xuICB9XG4gIHZpc2l0RGVjbGFyZUNsYXNzU3RtdChzdG10OiBvLkNsYXNzU3RtdCwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIGN0eC5wdXNoQ2xhc3Moc3RtdCk7XG4gICAgdGhpcy5fdmlzaXRDbGFzc0NvbnN0cnVjdG9yKHN0bXQsIGN0eCk7XG5cbiAgICBpZiAoc3RtdC5wYXJlbnQgIT0gbnVsbCkge1xuICAgICAgY3R4LnByaW50KHN0bXQsIGAke3N0bXQubmFtZX0ucHJvdG90eXBlID0gT2JqZWN0LmNyZWF0ZShgKTtcbiAgICAgIHN0bXQucGFyZW50LnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgICAgY3R4LnByaW50bG4oc3RtdCwgYC5wcm90b3R5cGUpO2ApO1xuICAgIH1cbiAgICBzdG10LmdldHRlcnMuZm9yRWFjaCgoZ2V0dGVyKSA9PiB0aGlzLl92aXNpdENsYXNzR2V0dGVyKHN0bXQsIGdldHRlciwgY3R4KSk7XG4gICAgc3RtdC5tZXRob2RzLmZvckVhY2goKG1ldGhvZCkgPT4gdGhpcy5fdmlzaXRDbGFzc01ldGhvZChzdG10LCBtZXRob2QsIGN0eCkpO1xuICAgIGN0eC5wb3BDbGFzcygpO1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXRDbGFzc0NvbnN0cnVjdG9yKHN0bXQ6IG8uQ2xhc3NTdG10LCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCkge1xuICAgIGN0eC5wcmludChzdG10LCBgZnVuY3Rpb24gJHtzdG10Lm5hbWV9KGApO1xuICAgIGlmIChzdG10LmNvbnN0cnVjdG9yTWV0aG9kICE9IG51bGwpIHtcbiAgICAgIHRoaXMuX3Zpc2l0UGFyYW1zKHN0bXQuY29uc3RydWN0b3JNZXRob2QucGFyYW1zLCBjdHgpO1xuICAgIH1cbiAgICBjdHgucHJpbnRsbihzdG10LCBgKSB7YCk7XG4gICAgY3R4LmluY0luZGVudCgpO1xuICAgIGlmIChzdG10LmNvbnN0cnVjdG9yTWV0aG9kICE9IG51bGwpIHtcbiAgICAgIGlmIChzdG10LmNvbnN0cnVjdG9yTWV0aG9kLmJvZHkubGVuZ3RoID4gMCkge1xuICAgICAgICBjdHgucHJpbnRsbihzdG10LCBgdmFyIHNlbGYgPSB0aGlzO2ApO1xuICAgICAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LmNvbnN0cnVjdG9yTWV0aG9kLmJvZHksIGN0eCk7XG4gICAgICB9XG4gICAgfVxuICAgIGN0eC5kZWNJbmRlbnQoKTtcbiAgICBjdHgucHJpbnRsbihzdG10LCBgfWApO1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXRDbGFzc0dldHRlcihzdG10OiBvLkNsYXNzU3RtdCwgZ2V0dGVyOiBvLkNsYXNzR2V0dGVyLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCkge1xuICAgIGN0eC5wcmludGxuKFxuICAgICAgICBzdG10LFxuICAgICAgICBgT2JqZWN0LmRlZmluZVByb3BlcnR5KCR7c3RtdC5uYW1lfS5wcm90b3R5cGUsICcke2dldHRlci5uYW1lfScsIHsgZ2V0OiBmdW5jdGlvbigpIHtgKTtcbiAgICBjdHguaW5jSW5kZW50KCk7XG4gICAgaWYgKGdldHRlci5ib2R5Lmxlbmd0aCA+IDApIHtcbiAgICAgIGN0eC5wcmludGxuKHN0bXQsIGB2YXIgc2VsZiA9IHRoaXM7YCk7XG4gICAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhnZXR0ZXIuYm9keSwgY3R4KTtcbiAgICB9XG4gICAgY3R4LmRlY0luZGVudCgpO1xuICAgIGN0eC5wcmludGxuKHN0bXQsIGB9fSk7YCk7XG4gIH1cblxuICBwcml2YXRlIF92aXNpdENsYXNzTWV0aG9kKHN0bXQ6IG8uQ2xhc3NTdG10LCBtZXRob2Q6IG8uQ2xhc3NNZXRob2QsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KSB7XG4gICAgY3R4LnByaW50KHN0bXQsIGAke3N0bXQubmFtZX0ucHJvdG90eXBlLiR7bWV0aG9kLm5hbWV9ID0gZnVuY3Rpb24oYCk7XG4gICAgdGhpcy5fdmlzaXRQYXJhbXMobWV0aG9kLnBhcmFtcywgY3R4KTtcbiAgICBjdHgucHJpbnRsbihzdG10LCBgKSB7YCk7XG4gICAgY3R4LmluY0luZGVudCgpO1xuICAgIGlmIChtZXRob2QuYm9keS5sZW5ndGggPiAwKSB7XG4gICAgICBjdHgucHJpbnRsbihzdG10LCBgdmFyIHNlbGYgPSB0aGlzO2ApO1xuICAgICAgdGhpcy52aXNpdEFsbFN0YXRlbWVudHMobWV0aG9kLmJvZHksIGN0eCk7XG4gICAgfVxuICAgIGN0eC5kZWNJbmRlbnQoKTtcbiAgICBjdHgucHJpbnRsbihzdG10LCBgfTtgKTtcbiAgfVxuXG4gIHZpc2l0V3JhcHBlZE5vZGVFeHByKGFzdDogby5XcmFwcGVkTm9kZUV4cHI8YW55PiwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIHRocm93IG5ldyBFcnJvcignQ2Fubm90IGVtaXQgYSBXcmFwcGVkTm9kZUV4cHIgaW4gSmF2YXNjcmlwdC4nKTtcbiAgfVxuXG4gIHZpc2l0UmVhZFZhckV4cHIoYXN0OiBvLlJlYWRWYXJFeHByLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IHN0cmluZ3xudWxsIHtcbiAgICBpZiAoYXN0LmJ1aWx0aW4gPT09IG8uQnVpbHRpblZhci5UaGlzKSB7XG4gICAgICBjdHgucHJpbnQoYXN0LCAnc2VsZicpO1xuICAgIH0gZWxzZSBpZiAoYXN0LmJ1aWx0aW4gPT09IG8uQnVpbHRpblZhci5TdXBlcikge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKFxuICAgICAgICAgIGAnc3VwZXInIG5lZWRzIHRvIGJlIGhhbmRsZWQgYXQgYSBwYXJlbnQgYXN0IG5vZGUsIG5vdCBhdCB0aGUgdmFyaWFibGUgbGV2ZWwhYCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHN1cGVyLnZpc2l0UmVhZFZhckV4cHIoYXN0LCBjdHgpO1xuICAgIH1cbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuICB2aXNpdERlY2xhcmVWYXJTdG10KHN0bXQ6IG8uRGVjbGFyZVZhclN0bXQsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBjdHgucHJpbnQoc3RtdCwgYHZhciAke3N0bXQubmFtZX1gKTtcbiAgICBpZiAoc3RtdC52YWx1ZSkge1xuICAgICAgY3R4LnByaW50KHN0bXQsICcgPSAnKTtcbiAgICAgIHN0bXQudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgfVxuICAgIGN0eC5wcmludGxuKHN0bXQsIGA7YCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgdmlzaXRDYXN0RXhwcihhc3Q6IG8uQ2FzdEV4cHIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBhc3QudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgdmlzaXRJbnZva2VGdW5jdGlvbkV4cHIoZXhwcjogby5JbnZva2VGdW5jdGlvbkV4cHIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogc3RyaW5nfG51bGwge1xuICAgIGNvbnN0IGZuRXhwciA9IGV4cHIuZm47XG4gICAgaWYgKGZuRXhwciBpbnN0YW5jZW9mIG8uUmVhZFZhckV4cHIgJiYgZm5FeHByLmJ1aWx0aW4gPT09IG8uQnVpbHRpblZhci5TdXBlcikge1xuICAgICAgY3R4LmN1cnJlbnRDbGFzcyEucGFyZW50IS52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KTtcbiAgICAgIGN0eC5wcmludChleHByLCBgLmNhbGwodGhpc2ApO1xuICAgICAgaWYgKGV4cHIuYXJncy5sZW5ndGggPiAwKSB7XG4gICAgICAgIGN0eC5wcmludChleHByLCBgLCBgKTtcbiAgICAgICAgdGhpcy52aXNpdEFsbEV4cHJlc3Npb25zKGV4cHIuYXJncywgY3R4LCAnLCcpO1xuICAgICAgfVxuICAgICAgY3R4LnByaW50KGV4cHIsIGApYCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHN1cGVyLnZpc2l0SW52b2tlRnVuY3Rpb25FeHByKGV4cHIsIGN0eCk7XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG4gIHZpc2l0RnVuY3Rpb25FeHByKGFzdDogby5GdW5jdGlvbkV4cHIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBjdHgucHJpbnQoYXN0LCBgZnVuY3Rpb24ke2FzdC5uYW1lID8gJyAnICsgYXN0Lm5hbWUgOiAnJ30oYCk7XG4gICAgdGhpcy5fdmlzaXRQYXJhbXMoYXN0LnBhcmFtcywgY3R4KTtcbiAgICBjdHgucHJpbnRsbihhc3QsIGApIHtgKTtcbiAgICBjdHguaW5jSW5kZW50KCk7XG4gICAgdGhpcy52aXNpdEFsbFN0YXRlbWVudHMoYXN0LnN0YXRlbWVudHMsIGN0eCk7XG4gICAgY3R4LmRlY0luZGVudCgpO1xuICAgIGN0eC5wcmludChhc3QsIGB9YCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgdmlzaXREZWNsYXJlRnVuY3Rpb25TdG10KHN0bXQ6IG8uRGVjbGFyZUZ1bmN0aW9uU3RtdCwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIGN0eC5wcmludChzdG10LCBgZnVuY3Rpb24gJHtzdG10Lm5hbWV9KGApO1xuICAgIHRoaXMuX3Zpc2l0UGFyYW1zKHN0bXQucGFyYW1zLCBjdHgpO1xuICAgIGN0eC5wcmludGxuKHN0bXQsIGApIHtgKTtcbiAgICBjdHguaW5jSW5kZW50KCk7XG4gICAgdGhpcy52aXNpdEFsbFN0YXRlbWVudHMoc3RtdC5zdGF0ZW1lbnRzLCBjdHgpO1xuICAgIGN0eC5kZWNJbmRlbnQoKTtcbiAgICBjdHgucHJpbnRsbihzdG10LCBgfWApO1xuICAgIHJldHVybiBudWxsO1xuICB9XG4gIHZpc2l0VHJ5Q2F0Y2hTdG10KHN0bXQ6IG8uVHJ5Q2F0Y2hTdG10LCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgY3R4LnByaW50bG4oc3RtdCwgYHRyeSB7YCk7XG4gICAgY3R4LmluY0luZGVudCgpO1xuICAgIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKHN0bXQuYm9keVN0bXRzLCBjdHgpO1xuICAgIGN0eC5kZWNJbmRlbnQoKTtcbiAgICBjdHgucHJpbnRsbihzdG10LCBgfSBjYXRjaCAoJHtDQVRDSF9FUlJPUl9WQVIubmFtZX0pIHtgKTtcbiAgICBjdHguaW5jSW5kZW50KCk7XG4gICAgY29uc3QgY2F0Y2hTdG10cyA9XG4gICAgICAgIFs8by5TdGF0ZW1lbnQ+Q0FUQ0hfU1RBQ0tfVkFSLnNldChDQVRDSF9FUlJPUl9WQVIucHJvcCgnc3RhY2snKSkudG9EZWNsU3RtdChudWxsLCBbXG4gICAgICAgICAgby5TdG10TW9kaWZpZXIuRmluYWxcbiAgICAgICAgXSldLmNvbmNhdChzdG10LmNhdGNoU3RtdHMpO1xuICAgIHRoaXMudmlzaXRBbGxTdGF0ZW1lbnRzKGNhdGNoU3RtdHMsIGN0eCk7XG4gICAgY3R4LmRlY0luZGVudCgpO1xuICAgIGN0eC5wcmludGxuKHN0bXQsIGB9YCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICB2aXNpdExvY2FsaXplZFN0cmluZyhhc3Q6IG8uTG9jYWxpemVkU3RyaW5nLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgLy8gVGhlIGZvbGxvd2luZyBjb252b2x1dGVkIHBpZWNlIG9mIGNvZGUgaXMgZWZmZWN0aXZlbHkgdGhlIGRvd25sZXZlbGxlZCBlcXVpdmFsZW50IG9mXG4gICAgLy8gYGBgXG4gICAgLy8gJGxvY2FsaXplIGAuLi5gXG4gICAgLy8gYGBgXG4gICAgLy8gd2hpY2ggaXMgZWZmZWN0aXZlbHkgbGlrZTpcbiAgICAvLyBgYGBcbiAgICAvLyAkbG9jYWxpemUoX19tYWtlVGVtcGxhdGVPYmplY3QoY29va2VkLCByYXcpLCBleHByZXNzaW9uMSwgZXhwcmVzc2lvbjIsIC4uLik7XG4gICAgLy8gYGBgXG4gICAgLy9cbiAgICAvLyBUaGUgYCRsb2NhbGl6ZWAgZnVuY3Rpb24gZXhwZWN0cyBhIFwidGVtcGxhdGUgb2JqZWN0XCIsIHdoaWNoIGlzIGFuIGFycmF5IG9mIFwiY29va2VkXCIgc3RyaW5nc1xuICAgIC8vIHBsdXMgYSBgcmF3YCBwcm9wZXJ0eSB0aGF0IGNvbnRhaW5zIGFuIGFycmF5IG9mIFwicmF3XCIgc3RyaW5ncy5cbiAgICAvL1xuICAgIC8vIEluIHNvbWUgZW52aXJvbm1lbnRzIGEgaGVscGVyIGZ1bmN0aW9uIGNhbGxlZCBgX19tYWtlVGVtcGxhdGVPYmplY3QoY29va2VkLCByYXcpYCBtaWdodCBiZVxuICAgIC8vIGF2YWlsYWJsZSwgaW4gd2hpY2ggY2FzZSB3ZSB1c2UgdGhhdC4gT3RoZXJ3aXNlIHdlIG11c3QgY3JlYXRlIG91ciBvd24gaGVscGVyIGZ1bmN0aW9uXG4gICAgLy8gaW5saW5lLlxuICAgIC8vXG4gICAgLy8gSW4gdGhlIGlubGluZSBmdW5jdGlvbiwgaWYgYE9iamVjdC5kZWZpbmVQcm9wZXJ0eWAgaXMgYXZhaWxhYmxlIHdlIHVzZSB0aGF0IHRvIGF0dGFjaCB0aGVcbiAgICAvLyBgcmF3YCBhcnJheS5cbiAgICBjdHgucHJpbnQoXG4gICAgICAgIGFzdCxcbiAgICAgICAgJyRsb2NhbGl6ZSgodGhpcyYmdGhpcy5fX21ha2VUZW1wbGF0ZU9iamVjdHx8ZnVuY3Rpb24oZSx0KXtyZXR1cm4gT2JqZWN0LmRlZmluZVByb3BlcnR5P09iamVjdC5kZWZpbmVQcm9wZXJ0eShlLFwicmF3XCIse3ZhbHVlOnR9KTplLnJhdz10LGV9KSgnKTtcbiAgICBjb25zdCBwYXJ0cyA9IFthc3Quc2VyaWFsaXplSTE4bkhlYWQoKV07XG4gICAgZm9yIChsZXQgaSA9IDE7IGkgPCBhc3QubWVzc2FnZVBhcnRzLmxlbmd0aDsgaSsrKSB7XG4gICAgICBwYXJ0cy5wdXNoKGFzdC5zZXJpYWxpemVJMThuVGVtcGxhdGVQYXJ0KGkpKTtcbiAgICB9XG4gICAgY3R4LnByaW50KGFzdCwgYFske3BhcnRzLm1hcChwYXJ0ID0+IGVzY2FwZUlkZW50aWZpZXIocGFydC5jb29rZWQsIGZhbHNlKSkuam9pbignLCAnKX1dLCBgKTtcbiAgICBjdHgucHJpbnQoYXN0LCBgWyR7cGFydHMubWFwKHBhcnQgPT4gZXNjYXBlSWRlbnRpZmllcihwYXJ0LnJhdywgZmFsc2UpKS5qb2luKCcsICcpfV0pYCk7XG4gICAgYXN0LmV4cHJlc3Npb25zLmZvckVhY2goZXhwcmVzc2lvbiA9PiB7XG4gICAgICBjdHgucHJpbnQoYXN0LCAnLCAnKTtcbiAgICAgIGV4cHJlc3Npb24udmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgfSk7XG4gICAgY3R4LnByaW50KGFzdCwgJyknKTtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIHByaXZhdGUgX3Zpc2l0UGFyYW1zKHBhcmFtczogby5GblBhcmFtW10sIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogdm9pZCB7XG4gICAgdGhpcy52aXNpdEFsbE9iamVjdHMocGFyYW0gPT4gY3R4LnByaW50KG51bGwsIHBhcmFtLm5hbWUpLCBwYXJhbXMsIGN0eCwgJywnKTtcbiAgfVxuXG4gIGdldEJ1aWx0aW5NZXRob2ROYW1lKG1ldGhvZDogby5CdWlsdGluTWV0aG9kKTogc3RyaW5nIHtcbiAgICBsZXQgbmFtZTogc3RyaW5nO1xuICAgIHN3aXRjaCAobWV0aG9kKSB7XG4gICAgICBjYXNlIG8uQnVpbHRpbk1ldGhvZC5Db25jYXRBcnJheTpcbiAgICAgICAgbmFtZSA9ICdjb25jYXQnO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2Ugby5CdWlsdGluTWV0aG9kLlN1YnNjcmliZU9ic2VydmFibGU6XG4gICAgICAgIG5hbWUgPSAnc3Vic2NyaWJlJztcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIG8uQnVpbHRpbk1ldGhvZC5CaW5kOlxuICAgICAgICBuYW1lID0gJ2JpbmQnO1xuICAgICAgICBicmVhaztcbiAgICAgIGRlZmF1bHQ6XG4gICAgICAgIHRocm93IG5ldyBFcnJvcihgVW5rbm93biBidWlsdGluIG1ldGhvZDogJHttZXRob2R9YCk7XG4gICAgfVxuICAgIHJldHVybiBuYW1lO1xuICB9XG59XG4iXX0=