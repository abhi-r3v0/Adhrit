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
        define("@angular/compiler/src/output/output_jit", ["require", "exports", "tslib", "@angular/compiler/src/compile_metadata", "@angular/compiler/src/output/abstract_emitter", "@angular/compiler/src/output/abstract_js_emitter", "@angular/compiler/src/output/output_ast"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.JitEmitterVisitor = exports.JitEvaluator = void 0;
    var tslib_1 = require("tslib");
    var compile_metadata_1 = require("@angular/compiler/src/compile_metadata");
    var abstract_emitter_1 = require("@angular/compiler/src/output/abstract_emitter");
    var abstract_js_emitter_1 = require("@angular/compiler/src/output/abstract_js_emitter");
    var o = require("@angular/compiler/src/output/output_ast");
    /**
     * A helper class to manage the evaluation of JIT generated code.
     */
    var JitEvaluator = /** @class */ (function () {
        function JitEvaluator() {
        }
        /**
         *
         * @param sourceUrl The URL of the generated code.
         * @param statements An array of Angular statement AST nodes to be evaluated.
         * @param reflector A helper used when converting the statements to executable code.
         * @param createSourceMaps If true then create a source-map for the generated code and include it
         * inline as a source-map comment.
         * @returns A map of all the variables in the generated code.
         */
        JitEvaluator.prototype.evaluateStatements = function (sourceUrl, statements, reflector, createSourceMaps) {
            var converter = new JitEmitterVisitor(reflector);
            var ctx = abstract_emitter_1.EmitterVisitorContext.createRoot();
            // Ensure generated code is in strict mode
            if (statements.length > 0 && !isUseStrictStatement(statements[0])) {
                statements = tslib_1.__spread([
                    o.literal('use strict').toStmt()
                ], statements);
            }
            converter.visitAllStatements(statements, ctx);
            converter.createReturnStmt(ctx);
            return this.evaluateCode(sourceUrl, ctx, converter.getArgs(), createSourceMaps);
        };
        /**
         * Evaluate a piece of JIT generated code.
         * @param sourceUrl The URL of this generated code.
         * @param ctx A context object that contains an AST of the code to be evaluated.
         * @param vars A map containing the names and values of variables that the evaluated code might
         * reference.
         * @param createSourceMap If true then create a source-map for the generated code and include it
         * inline as a source-map comment.
         * @returns The result of evaluating the code.
         */
        JitEvaluator.prototype.evaluateCode = function (sourceUrl, ctx, vars, createSourceMap) {
            var fnBody = "\"use strict\";" + ctx.toSource() + "\n//# sourceURL=" + sourceUrl;
            var fnArgNames = [];
            var fnArgValues = [];
            for (var argName in vars) {
                fnArgValues.push(vars[argName]);
                fnArgNames.push(argName);
            }
            if (createSourceMap) {
                // using `new Function(...)` generates a header, 1 line of no arguments, 2 lines otherwise
                // E.g. ```
                // function anonymous(a,b,c
                // /**/) { ... }```
                // We don't want to hard code this fact, so we auto detect it via an empty function first.
                var emptyFn = new (Function.bind.apply(Function, tslib_1.__spread([void 0], fnArgNames.concat('return null;'))))().toString();
                var headerLines = emptyFn.slice(0, emptyFn.indexOf('return null;')).split('\n').length - 1;
                fnBody += "\n" + ctx.toSourceMapGenerator(sourceUrl, headerLines).toJsComment();
            }
            var fn = new (Function.bind.apply(Function, tslib_1.__spread([void 0], fnArgNames.concat(fnBody))))();
            return this.executeFunction(fn, fnArgValues);
        };
        /**
         * Execute a JIT generated function by calling it.
         *
         * This method can be overridden in tests to capture the functions that are generated
         * by this `JitEvaluator` class.
         *
         * @param fn A function to execute.
         * @param args The arguments to pass to the function being executed.
         * @returns The return value of the executed function.
         */
        JitEvaluator.prototype.executeFunction = function (fn, args) {
            return fn.apply(void 0, tslib_1.__spread(args));
        };
        return JitEvaluator;
    }());
    exports.JitEvaluator = JitEvaluator;
    /**
     * An Angular AST visitor that converts AST nodes into executable JavaScript code.
     */
    var JitEmitterVisitor = /** @class */ (function (_super) {
        tslib_1.__extends(JitEmitterVisitor, _super);
        function JitEmitterVisitor(reflector) {
            var _this = _super.call(this) || this;
            _this.reflector = reflector;
            _this._evalArgNames = [];
            _this._evalArgValues = [];
            _this._evalExportedVars = [];
            return _this;
        }
        JitEmitterVisitor.prototype.createReturnStmt = function (ctx) {
            var stmt = new o.ReturnStatement(new o.LiteralMapExpr(this._evalExportedVars.map(function (resultVar) { return new o.LiteralMapEntry(resultVar, o.variable(resultVar), false); })));
            stmt.visitStatement(this, ctx);
        };
        JitEmitterVisitor.prototype.getArgs = function () {
            var result = {};
            for (var i = 0; i < this._evalArgNames.length; i++) {
                result[this._evalArgNames[i]] = this._evalArgValues[i];
            }
            return result;
        };
        JitEmitterVisitor.prototype.visitExternalExpr = function (ast, ctx) {
            this._emitReferenceToExternal(ast, this.reflector.resolveExternalReference(ast.value), ctx);
            return null;
        };
        JitEmitterVisitor.prototype.visitWrappedNodeExpr = function (ast, ctx) {
            this._emitReferenceToExternal(ast, ast.node, ctx);
            return null;
        };
        JitEmitterVisitor.prototype.visitDeclareVarStmt = function (stmt, ctx) {
            if (stmt.hasModifier(o.StmtModifier.Exported)) {
                this._evalExportedVars.push(stmt.name);
            }
            return _super.prototype.visitDeclareVarStmt.call(this, stmt, ctx);
        };
        JitEmitterVisitor.prototype.visitDeclareFunctionStmt = function (stmt, ctx) {
            if (stmt.hasModifier(o.StmtModifier.Exported)) {
                this._evalExportedVars.push(stmt.name);
            }
            return _super.prototype.visitDeclareFunctionStmt.call(this, stmt, ctx);
        };
        JitEmitterVisitor.prototype.visitDeclareClassStmt = function (stmt, ctx) {
            if (stmt.hasModifier(o.StmtModifier.Exported)) {
                this._evalExportedVars.push(stmt.name);
            }
            return _super.prototype.visitDeclareClassStmt.call(this, stmt, ctx);
        };
        JitEmitterVisitor.prototype._emitReferenceToExternal = function (ast, value, ctx) {
            var id = this._evalArgValues.indexOf(value);
            if (id === -1) {
                id = this._evalArgValues.length;
                this._evalArgValues.push(value);
                var name_1 = compile_metadata_1.identifierName({ reference: value }) || 'val';
                this._evalArgNames.push("jit_" + name_1 + "_" + id);
            }
            ctx.print(ast, this._evalArgNames[id]);
        };
        return JitEmitterVisitor;
    }(abstract_js_emitter_1.AbstractJsEmitterVisitor));
    exports.JitEmitterVisitor = JitEmitterVisitor;
    function isUseStrictStatement(statement) {
        return statement.isEquivalent(o.literal('use strict').toStmt());
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoib3V0cHV0X2ppdC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9vdXRwdXQvb3V0cHV0X2ppdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBRUgsMkVBQW1EO0lBR25ELGtGQUF5RDtJQUN6RCx3RkFBK0Q7SUFDL0QsMkRBQWtDO0lBRWxDOztPQUVHO0lBQ0g7UUFBQTtRQTBFQSxDQUFDO1FBekVDOzs7Ozs7OztXQVFHO1FBQ0gseUNBQWtCLEdBQWxCLFVBQ0ksU0FBaUIsRUFBRSxVQUF5QixFQUFFLFNBQTJCLEVBQ3pFLGdCQUF5QjtZQUMzQixJQUFNLFNBQVMsR0FBRyxJQUFJLGlCQUFpQixDQUFDLFNBQVMsQ0FBQyxDQUFDO1lBQ25ELElBQU0sR0FBRyxHQUFHLHdDQUFxQixDQUFDLFVBQVUsRUFBRSxDQUFDO1lBQy9DLDBDQUEwQztZQUMxQyxJQUFJLFVBQVUsQ0FBQyxNQUFNLEdBQUcsQ0FBQyxJQUFJLENBQUMsb0JBQW9CLENBQUMsVUFBVSxDQUFDLENBQUMsQ0FBQyxDQUFDLEVBQUU7Z0JBQ2pFLFVBQVU7b0JBQ1IsQ0FBQyxDQUFDLE9BQU8sQ0FBQyxZQUFZLENBQUMsQ0FBQyxNQUFNLEVBQUU7bUJBQzdCLFVBQVUsQ0FDZCxDQUFDO2FBQ0g7WUFDRCxTQUFTLENBQUMsa0JBQWtCLENBQUMsVUFBVSxFQUFFLEdBQUcsQ0FBQyxDQUFDO1lBQzlDLFNBQVMsQ0FBQyxnQkFBZ0IsQ0FBQyxHQUFHLENBQUMsQ0FBQztZQUNoQyxPQUFPLElBQUksQ0FBQyxZQUFZLENBQUMsU0FBUyxFQUFFLEdBQUcsRUFBRSxTQUFTLENBQUMsT0FBTyxFQUFFLEVBQUUsZ0JBQWdCLENBQUMsQ0FBQztRQUNsRixDQUFDO1FBRUQ7Ozs7Ozs7OztXQVNHO1FBQ0gsbUNBQVksR0FBWixVQUNJLFNBQWlCLEVBQUUsR0FBMEIsRUFBRSxJ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QUFJLENBQUMsaUJBQWlCLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQzthQUN4QztZQUNELE9BQU8saUJBQU0scUJBQXFCLFlBQUMsSUFBSSxFQUFFLEdBQUcsQ0FBQyxDQUFDO1FBQ2hELENBQUM7UUFFTyxvREFBd0IsR0FBaEMsVUFBaUMsR0FBaUIsRUFBRSxLQUFVLEVBQUUsR0FBMEI7WUFFeEYsSUFBSSxFQUFFLEdBQUcsSUFBSSxDQUFDLGNBQWMsQ0FBQyxPQUFPLENBQUMsS0FBSyxDQUFDLENBQUM7WUFDNUMsSUFBSSxFQUFFLEtBQUssQ0FBQyxDQUFDLEVBQUU7Z0JBQ2IsRUFBRSxHQUFHLElBQUksQ0FBQyxjQUFjLENBQUMsTUFBTSxDQUFDO2dCQUNoQyxJQUFJLENBQUMsY0FBYyxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQztnQkFDaEMsSUFBTSxNQUFJLEdBQUcsaUNBQWMsQ0FBQyxFQUFDLFNBQVMsRUFBRSxLQUFLLEVBQUMsQ0FBQyxJQUFJLEtBQUssQ0FBQztnQkFDekQsSUFBSSxDQUFDLGFBQWEsQ0FBQyxJQUFJLENBQUMsU0FBTyxNQUFJLFNBQUksRUFBSSxDQUFDLENBQUM7YUFDOUM7WUFDRCxHQUFHLENBQUMsS0FBSyxDQUFDLEdBQUcsRUFBRSxJQUFJLENBQUMsYUFBYSxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUM7UUFDekMsQ0FBQztRQUNILHdCQUFDO0lBQUQsQ0FBQyxBQWpFRCxDQUF1Qyw4Q0FBd0IsR0FpRTlEO0lBakVZLDhDQUFpQjtJQW9FOUIsU0FBUyxvQkFBb0IsQ0FBQyxTQUFzQjtRQUNsRCxPQUFPLFNBQVMsQ0FBQyxZQUFZLENBQUMsQ0FBQyxDQUFDLE9BQU8sQ0FBQyxZQUFZLENBQUMsQ0FBQyxNQUFNLEVBQUUsQ0FBQyxDQUFDO0lBQ2xFLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtpZGVudGlmaWVyTmFtZX0gZnJvbSAnLi4vY29tcGlsZV9tZXRhZGF0YSc7XG5pbXBvcnQge0NvbXBpbGVSZWZsZWN0b3J9IGZyb20gJy4uL2NvbXBpbGVfcmVmbGVjdG9yJztcblxuaW1wb3J0IHtFbWl0dGVyVmlzaXRvckNvbnRleHR9IGZyb20gJy4vYWJzdHJhY3RfZW1pdHRlcic7XG5pbXBvcnQge0Fic3RyYWN0SnNFbWl0dGVyVmlzaXRvcn0gZnJvbSAnLi9hYnN0cmFjdF9qc19lbWl0dGVyJztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi9vdXRwdXRfYXN0JztcblxuLyoqXG4gKiBBIGhlbHBlciBjbGFzcyB0byBtYW5hZ2UgdGhlIGV2YWx1YXRpb24gb2YgSklUIGdlbmVyYXRlZCBjb2RlLlxuICovXG5leHBvcnQgY2xhc3MgSml0RXZhbHVhdG9yIHtcbiAgLyoqXG4gICAqXG4gICAqIEBwYXJhbSBzb3VyY2VVcmwgVGhlIFVSTCBvZiB0aGUgZ2VuZXJhdGVkIGNvZGUuXG4gICAqIEBwYXJhbSBzdGF0ZW1lbnRzIEFuIGFycmF5IG9mIEFuZ3VsYXIgc3RhdGVtZW50IEFTVCBub2RlcyB0byBiZSBldmFsdWF0ZWQuXG4gICAqIEBwYXJhbSByZWZsZWN0b3IgQSBoZWxwZXIgdXNlZCB3aGVuIGNvbnZlcnRpbmcgdGhlIHN0YXRlbWVudHMgdG8gZXhlY3V0YWJsZSBjb2RlLlxuICAgKiBAcGFyYW0gY3JlYXRlU291cmNlTWFwcyBJZiB0cnVlIHRoZW4gY3JlYXRlIGEgc291cmNlLW1hcCBmb3IgdGhlIGdlbmVyYXRlZCBjb2RlIGFuZCBpbmNsdWRlIGl0XG4gICAqIGlubGluZSBhcyBhIHNvdXJjZS1tYXAgY29tbWVudC5cbiAgICogQHJldHVybnMgQSBtYXAgb2YgYWxsIHRoZSB2YXJpYWJsZXMgaW4gdGhlIGdlbmVyYXRlZCBjb2RlLlxuICAgKi9cbiAgZXZhbHVhdGVTdGF0ZW1lbnRzKFxuICAgICAgc291cmNlVXJsOiBzdHJpbmcsIHN0YXRlbWVudHM6IG8uU3RhdGVtZW50W10sIHJlZmxlY3RvcjogQ29tcGlsZVJlZmxlY3RvcixcbiAgICAgIGNyZWF0ZVNvdXJjZU1hcHM6IGJvb2xlYW4pOiB7W2tleTogc3RyaW5nXTogYW55fSB7XG4gICAgY29uc3QgY29udmVydGVyID0gbmV3IEppdEVtaXR0ZXJWaXNpdG9yKHJlZmxlY3Rvcik7XG4gICAgY29uc3QgY3R4ID0gRW1pdHRlclZpc2l0b3JDb250ZXh0LmNyZWF0ZVJvb3QoKTtcbiAgICAvLyBFbnN1cmUgZ2VuZXJhdGVkIGNvZGUgaXMgaW4gc3RyaWN0IG1vZGVcbiAgICBpZiAoc3RhdGVtZW50cy5sZW5ndGggPiAwICYmICFpc1VzZVN0cmljdFN0YXRlbWVudChzdGF0ZW1lbnRzWzBdKSkge1xuICAgICAgc3RhdGVtZW50cyA9IFtcbiAgICAgICAgby5saXRlcmFsKCd1c2Ugc3RyaWN0JykudG9TdG10KCksXG4gICAgICAgIC4uLnN0YXRlbWVudHMsXG4gICAgICBdO1xuICAgIH1cbiAgICBjb252ZXJ0ZXIudmlzaXRBbGxTdGF0ZW1lbnRzKHN0YXRlbWVudHMsIGN0eCk7XG4gICAgY29udmVydGVyLmNyZWF0ZVJldHVyblN0bXQoY3R4KTtcbiAgICByZXR1cm4gdGhpcy5ldmFsdWF0ZUNvZGUoc291cmNlVXJsLCBjdHgsIGNvbnZlcnRlci5nZXRBcmdzKCksIGNyZWF0ZVNvdXJjZU1hcHMpO1xuICB9XG5cbiAgLyoqXG4gICAqIEV2YWx1YXRlIGEgcGllY2Ugb2YgSklUIGdlbmVyYXRlZCBjb2RlLlxuICAgKiBAcGFyYW0gc291cmNlVXJsIFRoZSBVUkwgb2YgdGhpcyBnZW5lcmF0ZWQgY29kZS5cbiAgICogQHBhcmFtIGN0eCBBIGNvbnRleHQgb2JqZWN0IHRoYXQgY29udGFpbnMgYW4gQVNUIG9mIHRoZSBjb2RlIHRvIGJlIGV2YWx1YXRlZC5cbiAgICogQHBhcmFtIHZhcnMgQSBtYXAgY29udGFpbmluZyB0aGUgbmFtZXMgYW5kIHZhbHVlcyBvZiB2YXJpYWJsZXMgdGhhdCB0aGUgZXZhbHVhdGVkIGNvZGUgbWlnaHRcbiAgICogcmVmZXJlbmNlLlxuICAgKiBAcGFyYW0gY3JlYXRlU291cmNlTWFwIElmIHRydWUgdGhlbiBjcmVhdGUgYSBzb3VyY2UtbWFwIGZvciB0aGUgZ2VuZXJhdGVkIGNvZGUgYW5kIGluY2x1ZGUgaXRcbiAgICogaW5saW5lIGFzIGEgc291cmNlLW1hcCBjb21tZW50LlxuICAgKiBAcmV0dXJucyBUaGUgcmVzdWx0IG9mIGV2YWx1YXRpbmcgdGhlIGNvZGUuXG4gICAqL1xuICBldmFsdWF0ZUNvZGUoXG4gICAgICBzb3VyY2VVcmw6IHN0cmluZywgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQsIHZhcnM6IHtba2V5OiBzdHJpbmddOiBhbnl9LFxuICAgICAgY3JlYXRlU291cmNlTWFwOiBib29sZWFuKTogYW55IHtcbiAgICBsZXQgZm5Cb2R5ID0gYFwidXNlIHN0cmljdFwiOyR7Y3R4LnRvU291cmNlKCl9XFxuLy8jIHNvdXJjZVVSTD0ke3NvdXJjZVVybH1gO1xuICAgIGNvbnN0IGZuQXJnTmFtZXM6IHN0cmluZ1tdID0gW107XG4gICAgY29uc3QgZm5BcmdWYWx1ZXM6IGFueVtdID0gW107XG4gICAgZm9yIChjb25zdCBhcmdOYW1lIGluIHZhcnMpIHtcbiAgICAgIGZuQXJnVmFsdWVzLnB1c2godmFyc1thcmdOYW1lXSk7XG4gICAgICBmbkFyZ05hbWVzLnB1c2goYXJnTmFtZSk7XG4gICAgfVxuICAgIGlmIChjcmVhdGVTb3VyY2VNYXApIHtcbiAgICAgIC8vIHVzaW5nIGBuZXcgRnVuY3Rpb24oLi4uKWAgZ2VuZXJhdGVzIGEgaGVhZGVyLCAxIGxpbmUgb2Ygbm8gYXJndW1lbnRzLCAyIGxpbmVzIG90aGVyd2lzZVxuICAgICAgLy8gRS5nLiBgYGBcbiAgICAgIC8vIGZ1bmN0aW9uIGFub255bW91cyhhLGIsY1xuICAgICAgLy8gLyoqLykgeyAuLi4gfWBgYFxuICAgICAgLy8gV2UgZG9uJ3Qgd2FudCB0byBoYXJkIGNvZGUgdGhpcyBmYWN0LCBzbyB3ZSBhdXRvIGRldGVjdCBpdCB2aWEgYW4gZW1wdHkgZnVuY3Rpb24gZmlyc3QuXG4gICAgICBjb25zdCBlbXB0eUZuID0gbmV3IEZ1bmN0aW9uKC4uLmZuQXJnTmFtZXMuY29uY2F0KCdyZXR1cm4gbnVsbDsnKSkudG9TdHJpbmcoKTtcbiAgICAgIGNvbnN0IGhlYWRlckxpbmVzID0gZW1wdHlGbi5zbGljZSgwLCBlbXB0eUZuLmluZGV4T2YoJ3JldHVybiBudWxsOycpKS5zcGxpdCgnXFxuJykubGVuZ3RoIC0gMTtcbiAgICAgIGZuQm9keSArPSBgXFxuJHtjdHgudG9Tb3VyY2VNYXBHZW5lcmF0b3Ioc291cmNlVXJsLCBoZWFkZXJMaW5lcykudG9Kc0NvbW1lbnQoKX1gO1xuICAgIH1cbiAgICBjb25zdCBmbiA9IG5ldyBGdW5jdGlvbiguLi5mbkFyZ05hbWVzLmNvbmNhdChmbkJvZHkpKTtcbiAgICByZXR1cm4gdGhpcy5leGVjdXRlRnVuY3Rpb24oZm4sIGZuQXJnVmFsdWVzKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBFeGVjdXRlIGEgSklUIGdlbmVyYXRlZCBmdW5jdGlvbiBieSBjYWxsaW5nIGl0LlxuICAgKlxuICAgKiBUaGlzIG1ldGhvZCBjYW4gYmUgb3ZlcnJpZGRlbiBpbiB0ZXN0cyB0byBjYXB0dXJlIHRoZSBmdW5jdGlvbnMgdGhhdCBhcmUgZ2VuZXJhdGVkXG4gICAqIGJ5IHRoaXMgYEppdEV2YWx1YXRvcmAgY2xhc3MuXG4gICAqXG4gICAqIEBwYXJhbSBmbiBBIGZ1bmN0aW9uIHRvIGV4ZWN1dGUuXG4gICAqIEBwYXJhbSBhcmdzIFRoZSBhcmd1bWVudHMgdG8gcGFzcyB0byB0aGUgZnVuY3Rpb24gYmVpbmcgZXhlY3V0ZWQuXG4gICAqIEByZXR1cm5zIFRoZSByZXR1cm4gdmFsdWUgb2YgdGhlIGV4ZWN1dGVkIGZ1bmN0aW9uLlxuICAgKi9cbiAgZXhlY3V0ZUZ1bmN0aW9uKGZuOiBGdW5jdGlvbiwgYXJnczogYW55W10pIHtcbiAgICByZXR1cm4gZm4oLi4uYXJncyk7XG4gIH1cbn1cblxuLyoqXG4gKiBBbiBBbmd1bGFyIEFTVCB2aXNpdG9yIHRoYXQgY29udmVydHMgQVNUIG5vZGVzIGludG8gZXhlY3V0YWJsZSBKYXZhU2NyaXB0IGNvZGUuXG4gKi9cbmV4cG9ydCBjbGFzcyBKaXRFbWl0dGVyVmlzaXRvciBleHRlbmRzIEFic3RyYWN0SnNFbWl0dGVyVmlzaXRvciB7XG4gIHByaXZhdGUgX2V2YWxBcmdOYW1lczogc3RyaW5nW10gPSBbXTtcbiAgcHJpdmF0ZSBfZXZhbEFyZ1ZhbHVlczogYW55W10gPSBbXTtcbiAgcHJpdmF0ZSBfZXZhbEV4cG9ydGVkVmFyczogc3RyaW5nW10gPSBbXTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIHJlZmxlY3RvcjogQ29tcGlsZVJlZmxlY3Rvcikge1xuICAgIHN1cGVyKCk7XG4gIH1cblxuICBjcmVhdGVSZXR1cm5TdG10KGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KSB7XG4gICAgY29uc3Qgc3RtdCA9IG5ldyBvLlJldHVyblN0YXRlbWVudChuZXcgby5MaXRlcmFsTWFwRXhwcih0aGlzLl9ldmFsRXhwb3J0ZWRWYXJzLm1hcChcbiAgICAgICAgcmVzdWx0VmFyID0+IG5ldyBvLkxpdGVyYWxNYXBFbnRyeShyZXN1bHRWYXIsIG8udmFyaWFibGUocmVzdWx0VmFyKSwgZmFsc2UpKSkpO1xuICAgIHN0bXQudmlzaXRTdGF0ZW1lbnQodGhpcywgY3R4KTtcbiAgfVxuXG4gIGdldEFyZ3MoKToge1trZXk6IHN0cmluZ106IGFueX0ge1xuICAgIGNvbnN0IHJlc3VsdDoge1trZXk6IHN0cmluZ106IGFueX0gPSB7fTtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IHRoaXMuX2V2YWxBcmdOYW1lcy5sZW5ndGg7IGkrKykge1xuICAgICAgcmVzdWx0W3RoaXMuX2V2YWxBcmdOYW1lc1tpXV0gPSB0aGlzLl9ldmFsQXJnVmFsdWVzW2ldO1xuICAgIH1cbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgdmlzaXRFeHRlcm5hbEV4cHIoYXN0OiBvLkV4dGVybmFsRXhwciwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIHRoaXMuX2VtaXRSZWZlcmVuY2VUb0V4dGVybmFsKGFzdCwgdGhpcy5yZWZsZWN0b3IucmVzb2x2ZUV4dGVybmFsUmVmZXJlbmNlKGFzdC52YWx1ZSksIGN0eCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICB2aXNpdFdyYXBwZWROb2RlRXhwcihhc3Q6IG8uV3JhcHBlZE5vZGVFeHByPGFueT4sIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICB0aGlzLl9lbWl0UmVmZXJlbmNlVG9FeHRlcm5hbChhc3QsIGFzdC5ub2RlLCBjdHgpO1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgdmlzaXREZWNsYXJlVmFyU3RtdChzdG10OiBvLkRlY2xhcmVWYXJTdG10LCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgaWYgKHN0bXQuaGFzTW9kaWZpZXIoby5TdG10TW9kaWZpZXIuRXhwb3J0ZWQpKSB7XG4gICAgICB0aGlzLl9ldmFsRXhwb3J0ZWRWYXJzLnB1c2goc3RtdC5uYW1lKTtcbiAgICB9XG4gICAgcmV0dXJuIHN1cGVyLnZpc2l0RGVjbGFyZVZhclN0bXQoc3RtdCwgY3R4KTtcbiAgfVxuXG4gIHZpc2l0RGVjbGFyZUZ1bmN0aW9uU3RtdChzdG10OiBvLkRlY2xhcmVGdW5jdGlvblN0bXQsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBpZiAoc3RtdC5oYXNNb2RpZmllcihvLlN0bXRNb2RpZmllci5FeHBvcnRlZCkpIHtcbiAgICAgIHRoaXMuX2V2YWxFeHBvcnRlZFZhcnMucHVzaChzdG10Lm5hbWUpO1xuICAgIH1cbiAgICByZXR1cm4gc3VwZXIudmlzaXREZWNsYXJlRnVuY3Rpb25TdG10KHN0bXQsIGN0eCk7XG4gIH1cblxuICB2aXNpdERlY2xhcmVDbGFzc1N0bXQoc3RtdDogby5DbGFzc1N0bXQsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBpZiAoc3RtdC5oYXNNb2RpZmllcihvLlN0bXRNb2RpZmllci5FeHBvcnRlZCkpIHtcbiAgICAgIHRoaXMuX2V2YWxFeHBvcnRlZFZhcnMucHVzaChzdG10Lm5hbWUpO1xuICAgIH1cbiAgICByZXR1cm4gc3VwZXIudmlzaXREZWNsYXJlQ2xhc3NTdG10KHN0bXQsIGN0eCk7XG4gIH1cblxuICBwcml2YXRlIF9lbWl0UmVmZXJlbmNlVG9FeHRlcm5hbChhc3Q6IG8uRXhwcmVzc2lvbiwgdmFsdWU6IGFueSwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOlxuICAgICAgdm9pZCB7XG4gICAgbGV0IGlkID0gdGhpcy5fZXZhbEFyZ1ZhbHVlcy5pbmRleE9mKHZhbHVlKTtcbiAgICBpZiAoaWQgPT09IC0xKSB7XG4gICAgICBpZCA9IHRoaXMuX2V2YWxBcmdWYWx1ZXMubGVuZ3RoO1xuICAgICAgdGhpcy5fZXZhbEFyZ1ZhbHVlcy5wdXNoKHZhbHVlKTtcbiAgICAgIGNvbnN0IG5hbWUgPSBpZGVudGlmaWVyTmFtZSh7cmVmZXJlbmNlOiB2YWx1ZX0pIHx8ICd2YWwnO1xuICAgICAgdGhpcy5fZXZhbEFyZ05hbWVzLnB1c2goYGppdF8ke25hbWV9XyR7aWR9YCk7XG4gICAgfVxuICAgIGN0eC5wcmludChhc3QsIHRoaXMuX2V2YWxBcmdOYW1lc1tpZF0pO1xuICB9XG59XG5cblxuZnVuY3Rpb24gaXNVc2VTdHJpY3RTdGF0ZW1lbnQoc3RhdGVtZW50OiBvLlN0YXRlbWVudCk6IGJvb2xlYW4ge1xuICByZXR1cm4gc3RhdGVtZW50LmlzRXF1aXZhbGVudChvLmxpdGVyYWwoJ3VzZSBzdHJpY3QnKS50b1N0bXQoKSk7XG59XG4iXX0=