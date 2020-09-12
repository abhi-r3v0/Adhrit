/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { identifierName } from '../compile_metadata';
import { EmitterVisitorContext } from './abstract_emitter';
import { AbstractJsEmitterVisitor } from './abstract_js_emitter';
import * as o from './output_ast';
/**
 * A helper class to manage the evaluation of JIT generated code.
 */
export class JitEvaluator {
    /**
     *
     * @param sourceUrl The URL of the generated code.
     * @param statements An array of Angular statement AST nodes to be evaluated.
     * @param reflector A helper used when converting the statements to executable code.
     * @param createSourceMaps If true then create a source-map for the generated code and include it
     * inline as a source-map comment.
     * @returns A map of all the variables in the generated code.
     */
    evaluateStatements(sourceUrl, statements, reflector, createSourceMaps) {
        const converter = new JitEmitterVisitor(reflector);
        const ctx = EmitterVisitorContext.createRoot();
        // Ensure generated code is in strict mode
        if (statements.length > 0 && !isUseStrictStatement(statements[0])) {
            statements = [
                o.literal('use strict').toStmt(),
                ...statements,
            ];
        }
        converter.visitAllStatements(statements, ctx);
        converter.createReturnStmt(ctx);
        return this.evaluateCode(sourceUrl, ctx, converter.getArgs(), createSourceMaps);
    }
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
    evaluateCode(sourceUrl, ctx, vars, createSourceMap) {
        let fnBody = `"use strict";${ctx.toSource()}\n//# sourceURL=${sourceUrl}`;
        const fnArgNames = [];
        const fnArgValues = [];
        for (const argName in vars) {
            fnArgValues.push(vars[argName]);
            fnArgNames.push(argName);
        }
        if (createSourceMap) {
            // using `new Function(...)` generates a header, 1 line of no arguments, 2 lines otherwise
            // E.g. ```
            // function anonymous(a,b,c
            // /**/) { ... }```
            // We don't want to hard code this fact, so we auto detect it via an empty function first.
            const emptyFn = new Function(...fnArgNames.concat('return null;')).toString();
            const headerLines = emptyFn.slice(0, emptyFn.indexOf('return null;')).split('\n').length - 1;
            fnBody += `\n${ctx.toSourceMapGenerator(sourceUrl, headerLines).toJsComment()}`;
        }
        const fn = new Function(...fnArgNames.concat(fnBody));
        return this.executeFunction(fn, fnArgValues);
    }
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
    executeFunction(fn, args) {
        return fn(...args);
    }
}
/**
 * An Angular AST visitor that converts AST nodes into executable JavaScript code.
 */
export class JitEmitterVisitor extends AbstractJsEmitterVisitor {
    constructor(reflector) {
        super();
        this.reflector = reflector;
        this._evalArgNames = [];
        this._evalArgValues = [];
        this._evalExportedVars = [];
    }
    createReturnStmt(ctx) {
        const stmt = new o.ReturnStatement(new o.LiteralMapExpr(this._evalExportedVars.map(resultVar => new o.LiteralMapEntry(resultVar, o.variable(resultVar), false))));
        stmt.visitStatement(this, ctx);
    }
    getArgs() {
        const result = {};
        for (let i = 0; i < this._evalArgNames.length; i++) {
            result[this._evalArgNames[i]] = this._evalArgValues[i];
        }
        return result;
    }
    visitExternalExpr(ast, ctx) {
        this._emitReferenceToExternal(ast, this.reflector.resolveExternalReference(ast.value), ctx);
        return null;
    }
    visitWrappedNodeExpr(ast, ctx) {
        this._emitReferenceToExternal(ast, ast.node, ctx);
        return null;
    }
    visitDeclareVarStmt(stmt, ctx) {
        if (stmt.hasModifier(o.StmtModifier.Exported)) {
            this._evalExportedVars.push(stmt.name);
        }
        return super.visitDeclareVarStmt(stmt, ctx);
    }
    visitDeclareFunctionStmt(stmt, ctx) {
        if (stmt.hasModifier(o.StmtModifier.Exported)) {
            this._evalExportedVars.push(stmt.name);
        }
        return super.visitDeclareFunctionStmt(stmt, ctx);
    }
    visitDeclareClassStmt(stmt, ctx) {
        if (stmt.hasModifier(o.StmtModifier.Exported)) {
            this._evalExportedVars.push(stmt.name);
        }
        return super.visitDeclareClassStmt(stmt, ctx);
    }
    _emitReferenceToExternal(ast, value, ctx) {
        let id = this._evalArgValues.indexOf(value);
        if (id === -1) {
            id = this._evalArgValues.length;
            this._evalArgValues.push(value);
            const name = identifierName({ reference: value }) || 'val';
            this._evalArgNames.push(`jit_${name}_${id}`);
        }
        ctx.print(ast, this._evalArgNames[id]);
    }
}
function isUseStrictStatement(statement) {
    return statement.isEquivalent(o.literal('use strict').toStmt());
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoib3V0cHV0X2ppdC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9vdXRwdXQvb3V0cHV0X2ppdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsY0FBYyxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFHbkQsT0FBTyxFQUFDLHFCQUFxQixFQUFDLE1BQU0sb0JBQW9CLENBQUM7QUFDekQsT0FBTyxFQUFDLHdCQUF3QixFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFDL0QsT0FBTyxLQUFLLENBQUMsTUFBTSxjQUFjLENBQUM7QUFFbEM7O0dBRUc7QUFDSCxNQUFNLE9BQU8sWUFBWTtJQUN2Qjs7Ozs7Ozs7T0FRRztJQUNILGtCQUFrQixDQUNkLFNBQWlCLEVBQUUsVUFBeUIsRUFBRSxTQUEyQixFQUN6RSxnQkFBeUI7UUFDM0IsTUFBTSxTQUFTLEdBQUcsSUFBSSxpQkFBaUIsQ0FBQyxTQUFTLENBQUMsQ0FBQztRQUNuRCxNQUFNLEdBQUcsR0FBRyxxQkFBcUIsQ0FBQyxVQUFVLEVBQUUsQ0FBQztRQUMvQywwQ0FBMEM7UUFDMUMsSUFBSSxVQUFVLENBQUMsTUFBTSxHQUFHLENBQUMsSUFBSSxDQUFDLG9CQUFvQixDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFFO1lBQ2pFLFVBQVUsR0FBRztnQkFDWCxDQUFDLENBQUMsT0FBTyxDQUFDLFlBQVksQ0FBQyxDQUFDLE1BQU0sRUFBRTtnQkFDaEMsR0FBRyxVQUFVO2FBQ2QsQ0FBQztTQUNIO1FBQ0QsU0FBUyxDQUFDLGtCQUFrQixDQUFDLFVBQVUsRUFBRSxHQUFHLENBQUMsQ0FBQztRQUM5QyxTQUFTLENBQUMsZ0JBQWdCLENBQUMsR0FBRyxDQUFDLENBQUM7UUFDaEMsT0FBTyxJQUFJLENBQUMsWUFBWSxDQUFDLFNBQVMsRUFBRSxHQUFHLEVBQUUsU0FBUyxDQUFD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QyxFQUFFO1lBQzdDLElBQUksQ0FBQyxpQkFBaUIsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO1NBQ3hDO1FBQ0QsT0FBTyxLQUFLLENBQUMscUJBQXFCLENBQUMsSUFBSSxFQUFFLEdBQUcsQ0FBQyxDQUFDO0lBQ2hELENBQUM7SUFFTyx3QkFBd0IsQ0FBQyxHQUFpQixFQUFFLEtBQVUsRUFBRSxHQUEwQjtRQUV4RixJQUFJLEVBQUUsR0FBRyxJQUFJLENBQUMsY0FBYyxDQUFDLE9BQU8sQ0FBQyxLQUFLLENBQUMsQ0FBQztRQUM1QyxJQUFJLEVBQUUsS0FBSyxDQUFDLENBQUMsRUFBRTtZQUNiLEVBQUUsR0FBRyxJQUFJLENBQUMsY0FBYyxDQUFDLE1BQU0sQ0FBQztZQUNoQyxJQUFJLENBQUMsY0FBYyxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQztZQUNoQyxNQUFNLElBQUksR0FBRyxjQUFjLENBQUMsRUFBQyxTQUFTLEVBQUUsS0FBSyxFQUFDLENBQUMsSUFBSSxLQUFLLENBQUM7WUFDekQsSUFBSSxDQUFDLGFBQWEsQ0FBQyxJQUFJLENBQUMsT0FBTyxJQUFJLElBQUksRUFBRSxFQUFFLENBQUMsQ0FBQztTQUM5QztRQUNELEdBQUcsQ0FBQyxLQUFLLENBQUMsR0FBRyxFQUFFLElBQUksQ0FBQyxhQUFhLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQztJQUN6QyxDQUFDO0NBQ0Y7QUFHRCxTQUFTLG9CQUFvQixDQUFDLFNBQXNCO0lBQ2xELE9BQU8sU0FBUyxDQUFDLFlBQVksQ0FBQyxDQUFDLENBQUMsT0FBTyxDQUFDLFlBQVksQ0FBQyxDQUFDLE1BQU0sRUFBRSxDQUFDLENBQUM7QUFDbEUsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge2lkZW50aWZpZXJOYW1lfSBmcm9tICcuLi9jb21waWxlX21ldGFkYXRhJztcbmltcG9ydCB7Q29tcGlsZVJlZmxlY3Rvcn0gZnJvbSAnLi4vY29tcGlsZV9yZWZsZWN0b3InO1xuXG5pbXBvcnQge0VtaXR0ZXJWaXNpdG9yQ29udGV4dH0gZnJvbSAnLi9hYnN0cmFjdF9lbWl0dGVyJztcbmltcG9ydCB7QWJzdHJhY3RKc0VtaXR0ZXJWaXNpdG9yfSBmcm9tICcuL2Fic3RyYWN0X2pzX2VtaXR0ZXInO1xuaW1wb3J0ICogYXMgbyBmcm9tICcuL291dHB1dF9hc3QnO1xuXG4vKipcbiAqIEEgaGVscGVyIGNsYXNzIHRvIG1hbmFnZSB0aGUgZXZhbHVhdGlvbiBvZiBKSVQgZ2VuZXJhdGVkIGNvZGUuXG4gKi9cbmV4cG9ydCBjbGFzcyBKaXRFdmFsdWF0b3Ige1xuICAvKipcbiAgICpcbiAgICogQHBhcmFtIHNvdXJjZVVybCBUaGUgVVJMIG9mIHRoZSBnZW5lcmF0ZWQgY29kZS5cbiAgICogQHBhcmFtIHN0YXRlbWVudHMgQW4gYXJyYXkgb2YgQW5ndWxhciBzdGF0ZW1lbnQgQVNUIG5vZGVzIHRvIGJlIGV2YWx1YXRlZC5cbiAgICogQHBhcmFtIHJlZmxlY3RvciBBIGhlbHBlciB1c2VkIHdoZW4gY29udmVydGluZyB0aGUgc3RhdGVtZW50cyB0byBleGVjdXRhYmxlIGNvZGUuXG4gICAqIEBwYXJhbSBjcmVhdGVTb3VyY2VNYXBzIElmIHRydWUgdGhlbiBjcmVhdGUgYSBzb3VyY2UtbWFwIGZvciB0aGUgZ2VuZXJhdGVkIGNvZGUgYW5kIGluY2x1ZGUgaXRcbiAgICogaW5saW5lIGFzIGEgc291cmNlLW1hcCBjb21tZW50LlxuICAgKiBAcmV0dXJucyBBIG1hcCBvZiBhbGwgdGhlIHZhcmlhYmxlcyBpbiB0aGUgZ2VuZXJhdGVkIGNvZGUuXG4gICAqL1xuICBldmFsdWF0ZVN0YXRlbWVudHMoXG4gICAgICBzb3VyY2VVcmw6IHN0cmluZywgc3RhdGVtZW50czogby5TdGF0ZW1lbnRbXSwgcmVmbGVjdG9yOiBDb21waWxlUmVmbGVjdG9yLFxuICAgICAgY3JlYXRlU291cmNlTWFwczogYm9vbGVhbik6IHtba2V5OiBzdHJpbmddOiBhbnl9IHtcbiAgICBjb25zdCBjb252ZXJ0ZXIgPSBuZXcgSml0RW1pdHRlclZpc2l0b3IocmVmbGVjdG9yKTtcbiAgICBjb25zdCBjdHggPSBFbWl0dGVyVmlzaXRvckNvbnRleHQuY3JlYXRlUm9vdCgpO1xuICAgIC8vIEVuc3VyZSBnZW5lcmF0ZWQgY29kZSBpcyBpbiBzdHJpY3QgbW9kZVxuICAgIGlmIChzdGF0ZW1lbnRzLmxlbmd0aCA+IDAgJiYgIWlzVXNlU3RyaWN0U3RhdGVtZW50KHN0YXRlbWVudHNbMF0pKSB7XG4gICAgICBzdGF0ZW1lbnRzID0gW1xuICAgICAgICBvLmxpdGVyYWwoJ3VzZSBzdHJpY3QnKS50b1N0bXQoKSxcbiAgICAgICAgLi4uc3RhdGVtZW50cyxcbiAgICAgIF07XG4gICAgfVxuICAgIGNvbnZlcnRlci52aXNpdEFsbFN0YXRlbWVudHMoc3RhdGVtZW50cywgY3R4KTtcbiAgICBjb252ZXJ0ZXIuY3JlYXRlUmV0dXJuU3RtdChjdHgpO1xuICAgIHJldHVybiB0aGlzLmV2YWx1YXRlQ29kZShzb3VyY2VVcmwsIGN0eCwgY29udmVydGVyLmdldEFyZ3MoKSwgY3JlYXRlU291cmNlTWFwcyk7XG4gIH1cblxuICAvKipcbiAgICogRXZhbHVhdGUgYSBwaWVjZSBvZiBKSVQgZ2VuZXJhdGVkIGNvZGUuXG4gICAqIEBwYXJhbSBzb3VyY2VVcmwgVGhlIFVSTCBvZiB0aGlzIGdlbmVyYXRlZCBjb2RlLlxuICAgKiBAcGFyYW0gY3R4IEEgY29udGV4dCBvYmplY3QgdGhhdCBjb250YWlucyBhbiBBU1Qgb2YgdGhlIGNvZGUgdG8gYmUgZXZhbHVhdGVkLlxuICAgKiBAcGFyYW0gdmFycyBBIG1hcCBjb250YWluaW5nIHRoZSBuYW1lcyBhbmQgdmFsdWVzIG9mIHZhcmlhYmxlcyB0aGF0IHRoZSBldmFsdWF0ZWQgY29kZSBtaWdodFxuICAgKiByZWZlcmVuY2UuXG4gICAqIEBwYXJhbSBjcmVhdGVTb3VyY2VNYXAgSWYgdHJ1ZSB0aGVuIGNyZWF0ZSBhIHNvdXJjZS1tYXAgZm9yIHRoZSBnZW5lcmF0ZWQgY29kZSBhbmQgaW5jbHVkZSBpdFxuICAgKiBpbmxpbmUgYXMgYSBzb3VyY2UtbWFwIGNvbW1lbnQuXG4gICAqIEByZXR1cm5zIFRoZSByZXN1bHQgb2YgZXZhbHVhdGluZyB0aGUgY29kZS5cbiAgICovXG4gIGV2YWx1YXRlQ29kZShcbiAgICAgIHNvdXJjZVVybDogc3RyaW5nLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCwgdmFyczoge1trZXk6IHN0cmluZ106IGFueX0sXG4gICAgICBjcmVhdGVTb3VyY2VNYXA6IGJvb2xlYW4pOiBhbnkge1xuICAgIGxldCBmbkJvZHkgPSBgXCJ1c2Ugc3RyaWN0XCI7JHtjdHgudG9Tb3VyY2UoKX1cXG4vLyMgc291cmNlVVJMPSR7c291cmNlVXJsfWA7XG4gICAgY29uc3QgZm5BcmdOYW1lczogc3RyaW5nW10gPSBbXTtcbiAgICBjb25zdCBmbkFyZ1ZhbHVlczogYW55W10gPSBbXTtcbiAgICBmb3IgKGNvbnN0IGFyZ05hbWUgaW4gdmFycykge1xuICAgICAgZm5BcmdWYWx1ZXMucHVzaCh2YXJzW2FyZ05hbWVdKTtcbiAgICAgIGZuQXJnTmFtZXMucHVzaChhcmdOYW1lKTtcbiAgICB9XG4gICAgaWYgKGNyZWF0ZVNvdXJjZU1hcCkge1xuICAgICAgLy8gdXNpbmcgYG5ldyBGdW5jdGlvbiguLi4pYCBnZW5lcmF0ZXMgYSBoZWFkZXIsIDEgbGluZSBvZiBubyBhcmd1bWVudHMsIDIgbGluZXMgb3RoZXJ3aXNlXG4gICAgICAvLyBFLmcuIGBgYFxuICAgICAgLy8gZnVuY3Rpb24gYW5vbnltb3VzKGEsYixjXG4gICAgICAvLyAvKiovKSB7IC4uLiB9YGBgXG4gICAgICAvLyBXZSBkb24ndCB3YW50IHRvIGhhcmQgY29kZSB0aGlzIGZhY3QsIHNvIHdlIGF1dG8gZGV0ZWN0IGl0IHZpYSBhbiBlbXB0eSBmdW5jdGlvbiBmaXJzdC5cbiAgICAgIGNvbnN0IGVtcHR5Rm4gPSBuZXcgRnVuY3Rpb24oLi4uZm5BcmdOYW1lcy5jb25jYXQoJ3JldHVybiBudWxsOycpKS50b1N0cmluZygpO1xuICAgICAgY29uc3QgaGVhZGVyTGluZXMgPSBlbXB0eUZuLnNsaWNlKDAsIGVtcHR5Rm4uaW5kZXhPZigncmV0dXJuIG51bGw7JykpLnNwbGl0KCdcXG4nKS5sZW5ndGggLSAxO1xuICAgICAgZm5Cb2R5ICs9IGBcXG4ke2N0eC50b1NvdXJjZU1hcEdlbmVyYXRvcihzb3VyY2VVcmwsIGhlYWRlckxpbmVzKS50b0pzQ29tbWVudCgpfWA7XG4gICAgfVxuICAgIGNvbnN0IGZuID0gbmV3IEZ1bmN0aW9uKC4uLmZuQXJnTmFtZXMuY29uY2F0KGZuQm9keSkpO1xuICAgIHJldHVybiB0aGlzLmV4ZWN1dGVGdW5jdGlvbihmbiwgZm5BcmdWYWx1ZXMpO1xuICB9XG5cbiAgLyoqXG4gICAqIEV4ZWN1dGUgYSBKSVQgZ2VuZXJhdGVkIGZ1bmN0aW9uIGJ5IGNhbGxpbmcgaXQuXG4gICAqXG4gICAqIFRoaXMgbWV0aG9kIGNhbiBiZSBvdmVycmlkZGVuIGluIHRlc3RzIHRvIGNhcHR1cmUgdGhlIGZ1bmN0aW9ucyB0aGF0IGFyZSBnZW5lcmF0ZWRcbiAgICogYnkgdGhpcyBgSml0RXZhbHVhdG9yYCBjbGFzcy5cbiAgICpcbiAgICogQHBhcmFtIGZuIEEgZnVuY3Rpb24gdG8gZXhlY3V0ZS5cbiAgICogQHBhcmFtIGFyZ3MgVGhlIGFyZ3VtZW50cyB0byBwYXNzIHRvIHRoZSBmdW5jdGlvbiBiZWluZyBleGVjdXRlZC5cbiAgICogQHJldHVybnMgVGhlIHJldHVybiB2YWx1ZSBvZiB0aGUgZXhlY3V0ZWQgZnVuY3Rpb24uXG4gICAqL1xuICBleGVjdXRlRnVuY3Rpb24oZm46IEZ1bmN0aW9uLCBhcmdzOiBhbnlbXSkge1xuICAgIHJldHVybiBmbiguLi5hcmdzKTtcbiAgfVxufVxuXG4vKipcbiAqIEFuIEFuZ3VsYXIgQVNUIHZpc2l0b3IgdGhhdCBjb252ZXJ0cyBBU1Qgbm9kZXMgaW50byBleGVjdXRhYmxlIEphdmFTY3JpcHQgY29kZS5cbiAqL1xuZXhwb3J0IGNsYXNzIEppdEVtaXR0ZXJWaXNpdG9yIGV4dGVuZHMgQWJzdHJhY3RKc0VtaXR0ZXJWaXNpdG9yIHtcbiAgcHJpdmF0ZSBfZXZhbEFyZ05hbWVzOiBzdHJpbmdbXSA9IFtdO1xuICBwcml2YXRlIF9ldmFsQXJnVmFsdWVzOiBhbnlbXSA9IFtdO1xuICBwcml2YXRlIF9ldmFsRXhwb3J0ZWRWYXJzOiBzdHJpbmdbXSA9IFtdO1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgcmVmbGVjdG9yOiBDb21waWxlUmVmbGVjdG9yKSB7XG4gICAgc3VwZXIoKTtcbiAgfVxuXG4gIGNyZWF0ZVJldHVyblN0bXQoY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpIHtcbiAgICBjb25zdCBzdG10ID0gbmV3IG8uUmV0dXJuU3RhdGVtZW50KG5ldyBvLkxpdGVyYWxNYXBFeHByKHRoaXMuX2V2YWxFeHBvcnRlZFZhcnMubWFwKFxuICAgICAgICByZXN1bHRWYXIgPT4gbmV3IG8uTGl0ZXJhbE1hcEVudHJ5KHJlc3VsdFZhciwgby52YXJpYWJsZShyZXN1bHRWYXIpLCBmYWxzZSkpKSk7XG4gICAgc3RtdC52aXNpdFN0YXRlbWVudCh0aGlzLCBjdHgpO1xuICB9XG5cbiAgZ2V0QXJncygpOiB7W2tleTogc3RyaW5nXTogYW55fSB7XG4gICAgY29uc3QgcmVzdWx0OiB7W2tleTogc3RyaW5nXTogYW55fSA9IHt9O1xuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgdGhpcy5fZXZhbEFyZ05hbWVzLmxlbmd0aDsgaSsrKSB7XG4gICAgICByZXN1bHRbdGhpcy5fZXZhbEFyZ05hbWVzW2ldXSA9IHRoaXMuX2V2YWxBcmdWYWx1ZXNbaV07XG4gICAgfVxuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICB2aXNpdEV4dGVybmFsRXhwcihhc3Q6IG8uRXh0ZXJuYWxFeHByLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgdGhpcy5fZW1pdFJlZmVyZW5jZVRvRXh0ZXJuYWwoYXN0LCB0aGlzLnJlZmxlY3Rvci5yZXNvbHZlRXh0ZXJuYWxSZWZlcmVuY2UoYXN0LnZhbHVlKSwgY3R4KTtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIHZpc2l0V3JhcHBlZE5vZGVFeHByKGFzdDogby5XcmFwcGVkTm9kZUV4cHI8YW55PiwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIHRoaXMuX2VtaXRSZWZlcmVuY2VUb0V4dGVybmFsKGFzdCwgYXN0Lm5vZGUsIGN0eCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICB2aXNpdERlY2xhcmVWYXJTdG10KHN0bXQ6IG8uRGVjbGFyZVZhclN0bXQsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBpZiAoc3RtdC5oYXNNb2RpZmllcihvLlN0bXRNb2RpZmllci5FeHBvcnRlZCkpIHtcbiAgICAgIHRoaXMuX2V2YWxFeHBvcnRlZFZhcnMucHVzaChzdG10Lm5hbWUpO1xuICAgIH1cbiAgICByZXR1cm4gc3VwZXIudmlzaXREZWNsYXJlVmFyU3RtdChzdG10LCBjdHgpO1xuICB9XG5cbiAgdmlzaXREZWNsYXJlRnVuY3Rpb25TdG10KHN0bXQ6IG8uRGVjbGFyZUZ1bmN0aW9uU3RtdCwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIGlmIChzdG10Lmhhc01vZGlmaWVyKG8uU3RtdE1vZGlmaWVyLkV4cG9ydGVkKSkge1xuICAgICAgdGhpcy5fZXZhbEV4cG9ydGVkVmFycy5wdXNoKHN0bXQubmFtZSk7XG4gICAgfVxuICAgIHJldHVybiBzdXBlci52aXNpdERlY2xhcmVGdW5jdGlvblN0bXQoc3RtdCwgY3R4KTtcbiAgfVxuXG4gIHZpc2l0RGVjbGFyZUNsYXNzU3RtdChzdG10OiBvLkNsYXNzU3RtdCwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIGlmIChzdG10Lmhhc01vZGlmaWVyKG8uU3RtdE1vZGlmaWVyLkV4cG9ydGVkKSkge1xuICAgICAgdGhpcy5fZXZhbEV4cG9ydGVkVmFycy5wdXNoKHN0bXQubmFtZSk7XG4gICAgfVxuICAgIHJldHVybiBzdXBlci52aXNpdERlY2xhcmVDbGFzc1N0bXQoc3RtdCwgY3R4KTtcbiAgfVxuXG4gIHByaXZhdGUgX2VtaXRSZWZlcmVuY2VUb0V4dGVybmFsKGFzdDogby5FeHByZXNzaW9uLCB2YWx1ZTogYW55LCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6XG4gICAgICB2b2lkIHtcbiAgICBsZXQgaWQgPSB0aGlzLl9ldmFsQXJnVmFsdWVzLmluZGV4T2YodmFsdWUpO1xuICAgIGlmIChpZCA9PT0gLTEpIHtcbiAgICAgIGlkID0gdGhpcy5fZXZhbEFyZ1ZhbHVlcy5sZW5ndGg7XG4gICAgICB0aGlzLl9ldmFsQXJnVmFsdWVzLnB1c2godmFsdWUpO1xuICAgICAgY29uc3QgbmFtZSA9IGlkZW50aWZpZXJOYW1lKHtyZWZlcmVuY2U6IHZhbHVlfSkgfHwgJ3ZhbCc7XG4gICAgICB0aGlzLl9ldmFsQXJnTmFtZXMucHVzaChgaml0XyR7bmFtZX1fJHtpZH1gKTtcbiAgICB9XG4gICAgY3R4LnByaW50KGFzdCwgdGhpcy5fZXZhbEFyZ05hbWVzW2lkXSk7XG4gIH1cbn1cblxuXG5mdW5jdGlvbiBpc1VzZVN0cmljdFN0YXRlbWVudChzdGF0ZW1lbnQ6IG8uU3RhdGVtZW50KTogYm9vbGVhbiB7XG4gIHJldHVybiBzdGF0ZW1lbnQuaXNFcXVpdmFsZW50KG8ubGl0ZXJhbCgndXNlIHN0cmljdCcpLnRvU3RtdCgpKTtcbn1cbiJdfQ==