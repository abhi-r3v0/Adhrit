/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import * as o from './output_ast';
import { SourceMapGenerator } from './source_map';
const _SINGLE_QUOTE_ESCAPE_STRING_RE = /'|\\|\n|\r|\$/g;
const _LEGAL_IDENTIFIER_RE = /^[$A-Z_][0-9A-Z_$]*$/i;
const _INDENT_WITH = '  ';
export const CATCH_ERROR_VAR = o.variable('error', null, null);
export const CATCH_STACK_VAR = o.variable('stack', null, null);
class _EmittedLine {
    constructor(indent) {
        this.indent = indent;
        this.partsLength = 0;
        this.parts = [];
        this.srcSpans = [];
    }
}
export class EmitterVisitorContext {
    constructor(_indent) {
        this._indent = _indent;
        this._classes = [];
        this._preambleLineCount = 0;
        this._lines = [new _EmittedLine(_indent)];
    }
    static createRoot() { return new EmitterVisitorContext(0); }
    /**
     * @internal strip this from published d.ts files due to
     * https://github.com/microsoft/TypeScript/issues/36216
     */
    get _currentLine() { return this._lines[this._lines.length - 1]; }
    println(from, lastPart = '') {
        this.print(from || null, lastPart, true);
    }
    lineIsEmpty() { return this._currentLine.parts.length === 0; }
    lineLength() {
        return this._currentLine.indent * _INDENT_WITH.length + this._currentLine.partsLength;
    }
    print(from, part, newLine = false) {
        if (part.length > 0) {
            this._currentLine.parts.push(part);
            this._currentLine.partsLength += part.length;
            this._currentLine.srcSpans.push(from && from.sourceSpan || null);
        }
        if (newLine) {
            this._lines.push(new _EmittedLine(this._indent));
        }
    }
    removeEmptyLastLine() {
        if (this.lineIsEmpty()) {
            this._lines.pop();
        }
    }
    incIndent() {
        this._indent++;
        if (this.lineIsEmpty()) {
            this._currentLine.indent = this._indent;
        }
    }
    decIndent() {
        this._indent--;
        if (this.lineIsEmpty()) {
            this._currentLine.indent = this._indent;
        }
    }
    pushClass(clazz) { this._classes.push(clazz); }
    popClass() { return this._classes.pop(); }
    get currentClass() {
        return this._classes.length > 0 ? this._classes[this._classes.length - 1] : null;
    }
    toSource() {
        return this.sourceLines
            .map(l => l.parts.length > 0 ? _createIndent(l.indent) + l.parts.join('') : '')
            .join('\n');
    }
    toSourceMapGenerator(genFilePath, startsAtLine = 0) {
        const map = new SourceMapGenerator(genFilePath);
        let firstOffsetMapped = false;
        const mapFirstOffsetIfNeeded = () => {
            if (!firstOffsetMapped) {
                // Add a single space so that tools won't try to load the file from disk.
                // Note: We are using virtual urls like `ng:///`, so we have to
                // provide a content here.
                map.addSource(genFilePath, ' ').addMapping(0, genFilePath, 0, 0);
                firstOffsetMapped = true;
            }
        };
        for (let i = 0; i < startsAtLine; i++) {
            map.addLine();
            mapFirstOffsetIfNeeded();
        }
        this.sourceLines.forEach((line, lineIdx) => {
            map.addLine();
            const spans = line.srcSpans;
            const parts = line.parts;
            let col0 = line.indent * _INDENT_WITH.length;
            let spanIdx = 0;
            // skip leading parts without source spans
            while (spanIdx < spans.length && !spans[spanIdx]) {
                col0 += parts[spanIdx].length;
                spanIdx++;
            }
            if (spanIdx < spans.length && lineIdx === 0 && col0 === 0) {
                firstOffsetMapped = true;
            }
            else {
                mapFirstOffsetIfNeeded();
            }
            while (spanIdx < spans.length) {
                const span = spans[spanIdx];
                const source = span.start.file;
                const sourceLine = span.start.line;
                const sourceCol = span.start.col;
                map.addSource(source.url, source.content)
                    .addMapping(col0, source.url, sourceLine, sourceCol);
                col0 += parts[spanIdx].length;
                spanIdx++;
                // assign parts without span or the same span to the previous segment
                while (spanIdx < spans.length && (span === spans[spanIdx] || !spans[spanIdx])) {
                    col0 += parts[spanIdx].length;
                    spanIdx++;
                }
            }
        });
        return map;
    }
    setPreambleLineCount(count) { return this._preambleLineCount = count; }
    spanOf(line, column) {
        const emittedLine = this._lines[line - this._preambleLineCount];
        if (emittedLine) {
            let columnsLeft = column - _createIndent(emittedLine.indent).length;
            for (let partIndex = 0; partIndex < emittedLine.parts.length; partIndex++) {
                const part = emittedLine.parts[partIndex];
                if (part.length > columnsLeft) {
                    return emittedLine.srcSpans[partIndex];
                }
                columnsLeft -= part.length;
            }
        }
        return null;
    }
    /**
     * @internal strip this from published d.ts files due to
     * https://github.com/microsoft/TypeScript/issues/36216
     */
    get sourceLines() {
        if (this._lines.length && this._lines[this._lines.length - 1].parts.length === 0) {
            return this._lines.slice(0, -1);
        }
        return this._lines;
    }
}
export class AbstractEmitterVisitor {
    constructor(_escapeDollarInStrings) {
        this._escapeDollarInStrings = _escapeDollarInStrings;
    }
    visitExpressionStmt(stmt, ctx) {
        stmt.expr.visitExpression(this, ctx);
        ctx.println(stmt, ';');
        return null;
    }
    visitReturnStmt(stmt, ctx) {
        ctx.print(stmt, `return `);
        stmt.value.visitExpression(this, ctx);
        ctx.println(stmt, ';');
        return null;
    }
    visitIfStmt(stmt, ctx) {
        ctx.print(stmt, `if (`);
        stmt.condition.visitExpression(this, ctx);
        ctx.print(stmt, `) {`);
        const hasElseCase = stmt.falseCase != null && stmt.falseCase.length > 0;
        if (stmt.trueCase.length <= 1 && !hasElseCase) {
            ctx.print(stmt, ` `);
            this.visitAllStatements(stmt.trueCase, ctx);
            ctx.removeEmptyLastLine();
            ctx.print(stmt, ` `);
        }
        else {
            ctx.println();
            ctx.incIndent();
            this.visitAllStatements(stmt.trueCase, ctx);
            ctx.decIndent();
            if (hasElseCase) {
                ctx.println(stmt, `} else {`);
                ctx.incIndent();
                this.visitAllStatements(stmt.falseCase, ctx);
                ctx.decIndent();
            }
        }
        ctx.println(stmt, `}`);
        return null;
    }
    visitThrowStmt(stmt, ctx) {
        ctx.print(stmt, `throw `);
        stmt.error.visitExpression(this, ctx);
        ctx.println(stmt, `;`);
        return null;
    }
    visitCommentStmt(stmt, ctx) {
        if (stmt.multiline) {
            ctx.println(stmt, `/* ${stmt.comment} */`);
        }
        else {
            stmt.comment.split('\n').forEach((line) => { ctx.println(stmt, `// ${line}`); });
        }
        return null;
    }
    visitJSDocCommentStmt(stmt, ctx) {
        ctx.println(stmt, `/*${stmt.toString()}*/`);
        return null;
    }
    visitWriteVarExpr(expr, ctx) {
        const lineWasEmpty = ctx.lineIsEmpty();
        if (!lineWasEmpty) {
            ctx.print(expr, '(');
        }
        ctx.print(expr, `${expr.name} = `);
        expr.value.visitExpression(this, ctx);
        if (!lineWasEmpty) {
            ctx.print(expr, ')');
        }
        return null;
    }
    visitWriteKeyExpr(expr, ctx) {
        const lineWasEmpty = ctx.lineIsEmpty();
        if (!lineWasEmpty) {
            ctx.print(expr, '(');
        }
        expr.receiver.visitExpression(this, ctx);
        ctx.print(expr, `[`);
        expr.index.visitExpression(this, ctx);
        ctx.print(expr, `] = `);
        expr.value.visitExpression(this, ctx);
        if (!lineWasEmpty) {
            ctx.print(expr, ')');
        }
        return null;
    }
    visitWritePropExpr(expr, ctx) {
        const lineWasEmpty = ctx.lineIsEmpty();
        if (!lineWasEmpty) {
            ctx.print(expr, '(');
        }
        expr.receiver.visitExpression(this, ctx);
        ctx.print(expr, `.${expr.name} = `);
        expr.value.visitExpression(this, ctx);
        if (!lineWasEmpty) {
            ctx.print(expr, ')');
        }
        return null;
    }
    visitInvokeMethodExpr(expr, ctx) {
        expr.receiver.visitExpression(this, ctx);
        let name = expr.name;
        if (expr.builtin != null) {
            name = this.getBuiltinMethodName(expr.builtin);
            if (name == null) {
                // some builtins just mean to skip the call.
                return null;
            }
        }
        ctx.print(expr, `.${name}(`);
        this.visitAllExpressions(expr.args, ctx, `,`);
        ctx.print(expr, `)`);
        return null;
    }
    visitInvokeFunctionExpr(expr, ctx) {
        expr.fn.visitExpression(this, ctx);
        ctx.print(expr, `(`);
        this.visitAllExpressions(expr.args, ctx, ',');
        ctx.print(expr, `)`);
        return null;
    }
    visitWrappedNodeExpr(ast, ctx) {
        throw new Error('Abstract emitter cannot visit WrappedNodeExpr.');
    }
    visitTypeofExpr(expr, ctx) {
        ctx.print(expr, 'typeof ');
        expr.expr.visitExpression(this, ctx);
    }
    visitReadVarExpr(ast, ctx) {
        let varName = ast.name;
        if (ast.builtin != null) {
            switch (ast.builtin) {
                case o.BuiltinVar.Super:
                    varName = 'super';
                    break;
                case o.BuiltinVar.This:
                    varName = 'this';
                    break;
                case o.BuiltinVar.CatchError:
                    varName = CATCH_ERROR_VAR.name;
                    break;
                case o.BuiltinVar.CatchStack:
                    varName = CATCH_STACK_VAR.name;
                    break;
                default:
                    throw new Error(`Unknown builtin variable ${ast.builtin}`);
            }
        }
        ctx.print(ast, varName);
        return null;
    }
    visitInstantiateExpr(ast, ctx) {
        ctx.print(ast, `new `);
        ast.classExpr.visitExpression(this, ctx);
        ctx.print(ast, `(`);
        this.visitAllExpressions(ast.args, ctx, ',');
        ctx.print(ast, `)`);
        return null;
    }
    visitLiteralExpr(ast, ctx) {
        const value = ast.value;
        if (typeof value === 'string') {
            ctx.print(ast, escapeIdentifier(value, this._escapeDollarInStrings));
        }
        else {
            ctx.print(ast, `${value}`);
        }
        return null;
    }
    visitLocalizedString(ast, ctx) {
        const head = ast.serializeI18nHead();
        ctx.print(ast, '$localize `' + head.raw);
        for (let i = 1; i < ast.messageParts.length; i++) {
            ctx.print(ast, '${');
            ast.expressions[i - 1].visitExpression(this, ctx);
            ctx.print(ast, `}${ast.serializeI18nTemplatePart(i).raw}`);
        }
        ctx.print(ast, '`');
        return null;
    }
    visitConditionalExpr(ast, ctx) {
        ctx.print(ast, `(`);
        ast.condition.visitExpression(this, ctx);
        ctx.print(ast, '? ');
        ast.trueCase.visitExpression(this, ctx);
        ctx.print(ast, ': ');
        ast.falseCase.visitExpression(this, ctx);
        ctx.print(ast, `)`);
        return null;
    }
    visitNotExpr(ast, ctx) {
        ctx.print(ast, '!');
        ast.condition.visitExpression(this, ctx);
        return null;
    }
    visitAssertNotNullExpr(ast, ctx) {
        ast.condition.visitExpression(this, ctx);
        return null;
    }
    visitBinaryOperatorExpr(ast, ctx) {
        let opStr;
        switch (ast.operator) {
            case o.BinaryOperator.Equals:
                opStr = '==';
                break;
            case o.BinaryOperator.Identical:
                opStr = '===';
                break;
            case o.BinaryOperator.NotEquals:
                opStr = '!=';
                break;
            case o.BinaryOperator.NotIdentical:
                opStr = '!==';
                break;
            case o.BinaryOperator.And:
                opStr = '&&';
                break;
            case o.BinaryOperator.BitwiseAnd:
                opStr = '&';
                break;
            case o.BinaryOperator.Or:
                opStr = '||';
                break;
            case o.BinaryOperator.Plus:
                opStr = '+';
                break;
            case o.BinaryOperator.Minus:
                opStr = '-';
                break;
            case o.BinaryOperator.Divide:
                opStr = '/';
                break;
            case o.BinaryOperator.Multiply:
                opStr = '*';
                break;
            case o.BinaryOperator.Modulo:
                opStr = '%';
                break;
            case o.BinaryOperator.Lower:
                opStr = '<';
                break;
            case o.BinaryOperator.LowerEquals:
                opStr = '<=';
                break;
            case o.BinaryOperator.Bigger:
                opStr = '>';
                break;
            case o.BinaryOperator.BiggerEquals:
                opStr = '>=';
                break;
            default:
                throw new Error(`Unknown operator ${ast.operator}`);
        }
        if (ast.parens)
            ctx.print(ast, `(`);
        ast.lhs.visitExpression(this, ctx);
        ctx.print(ast, ` ${opStr} `);
        ast.rhs.visitExpression(this, ctx);
        if (ast.parens)
            ctx.print(ast, `)`);
        return null;
    }
    visitReadPropExpr(ast, ctx) {
        ast.receiver.visitExpression(this, ctx);
        ctx.print(ast, `.`);
        ctx.print(ast, ast.name);
        return null;
    }
    visitReadKeyExpr(ast, ctx) {
        ast.receiver.visitExpression(this, ctx);
        ctx.print(ast, `[`);
        ast.index.visitExpression(this, ctx);
        ctx.print(ast, `]`);
        return null;
    }
    visitLiteralArrayExpr(ast, ctx) {
        ctx.print(ast, `[`);
        this.visitAllExpressions(ast.entries, ctx, ',');
        ctx.print(ast, `]`);
        return null;
    }
    visitLiteralMapExpr(ast, ctx) {
        ctx.print(ast, `{`);
        this.visitAllObjects(entry => {
            ctx.print(ast, `${escapeIdentifier(entry.key, this._escapeDollarInStrings, entry.quoted)}:`);
            entry.value.visitExpression(this, ctx);
        }, ast.entries, ctx, ',');
        ctx.print(ast, `}`);
        return null;
    }
    visitCommaExpr(ast, ctx) {
        ctx.print(ast, '(');
        this.visitAllExpressions(ast.parts, ctx, ',');
        ctx.print(ast, ')');
        return null;
    }
    visitAllExpressions(expressions, ctx, separator) {
        this.visitAllObjects(expr => expr.visitExpression(this, ctx), expressions, ctx, separator);
    }
    visitAllObjects(handler, expressions, ctx, separator) {
        let incrementedIndent = false;
        for (let i = 0; i < expressions.length; i++) {
            if (i > 0) {
                if (ctx.lineLength() > 80) {
                    ctx.print(null, separator, true);
                    if (!incrementedIndent) {
                        // continuation are marked with double indent.
                        ctx.incIndent();
                        ctx.incIndent();
                        incrementedIndent = true;
                    }
                }
                else {
                    ctx.print(null, separator, false);
                }
            }
            handler(expressions[i]);
        }
        if (incrementedIndent) {
            // continuation are marked with double indent.
            ctx.decIndent();
            ctx.decIndent();
        }
    }
    visitAllStatements(statements, ctx) {
        statements.forEach((stmt) => stmt.visitStatement(this, ctx));
    }
}
export function escapeIdentifier(input, escapeDollar, alwaysQuote = true) {
    if (input == null) {
        return null;
    }
    const body = input.replace(_SINGLE_QUOTE_ESCAPE_STRING_RE, (...match) => {
        if (match[0] == '$') {
            return escapeDollar ? '\\$' : '$';
        }
        else if (match[0] == '\n') {
            return '\\n';
        }
        else if (match[0] == '\r') {
            return '\\r';
        }
        else {
            return `\\${match[0]}`;
        }
    });
    const requiresQuotes = alwaysQuote || !_LEGAL_IDENTIFIER_RE.test(body);
    return requiresQuotes ? `'${body}'` : body;
}
function _createIndent(count) {
    let res = '';
    for (let i = 0; i < count; i++) {
        res += _INDENT_WITH;
    }
    return res;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYWJzdHJhY3RfZW1pdHRlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9vdXRwdXQvYWJzdHJhY3RfZW1pdHRlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFHSCxPQUFPLEtBQUssQ0FBQyxNQUFNLGNBQWMsQ0FBQztBQUNsQyxPQUFPLEVBQUMsa0JBQWtCLEVBQUMsTUFBTSxjQUFjLENBQUM7QUFFaEQsTUFBTSw4QkFBOEIsR0FBRyxnQkFBZ0IsQ0FBQztBQUN4RCxNQUFNLG9CQUFvQixHQUFHLHVCQUF1QixDQUFDO0FBQ3JELE1BQU0sWUFBWSxHQUFHLElBQUksQ0FBQztBQUMxQixNQUFNLENBQUMsTUFBTSxlQUFlLEdBQUcsQ0FBQyxDQUFDLFFBQVEsQ0FBQyxPQUFPLEVBQUUsSUFBSSxFQUFFLElBQUksQ0FBQyxDQUFDO0FBQy9ELE1BQU0sQ0FBQyxNQUFNLGVBQWUsR0FBRyxDQUFDLENBQUMsUUFBUSxDQUFDLE9BQU8sRUFBRSxJQUFJLEVBQUUsSUFBSSxDQUFDLENBQUM7QUFNL0QsTUFBTSxZQUFZO0lBSWhCLFlBQW1CLE1BQWM7UUFBZCxXQUFNLEdBQU4sTUFBTSxDQUFRO1FBSGpDLGdCQUFXLEdBQUcsQ0FBQyxDQUFDO1FBQ2hCLFVBQUssR0FBYSxFQUFFLENBQUM7UUFDckIsYUFBUSxHQUE2QixFQUFFLENBQUM7SUFDSixDQUFDO0NBQ3RDO0FBRUQsTUFBTSxPQUFPLHFCQUFxQjtJQU9oQyxZQUFvQixPQUFlO1FBQWYsWUFBTyxHQUFQLE9BQU8sQ0FBUTtRQUgzQixhQUFRLEdBQWtCLEVBQUUsQ0FBQztRQUM3Qix1QkFBa0IsR0FBRyxDQUFDLENBQUM7UUFFUSxJQUFJLENBQUMsTUFBTSxHQUFHLENBQUMsSUFBSSxZQUFZLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQztJQUFDLENBQUM7SUFObkYsTUFBTSxDQUFDLFVBQVUs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SSxDQUFDO0tBQ2I7SUFDRCxNQUFNLElBQUksR0FBRyxLQUFLLENBQUMsT0FBTyxDQUFDLDhCQUE4QixFQUFFLENBQUMsR0FBRyxLQUFlLEVBQUUsRUFBRTtRQUNoRixJQUFJLEtBQUssQ0FBQyxDQUFDLENBQUMsSUFBSSxHQUFHLEVBQUU7WUFDbkIsT0FBTyxZQUFZLENBQUMsQ0FBQyxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsR0FBRyxDQUFDO1NBQ25DO2FBQU0sSUFBSSxLQUFLLENBQUMsQ0FBQyxDQUFDLElBQUksSUFBSSxFQUFFO1lBQzNCLE9BQU8sS0FBSyxDQUFDO1NBQ2Q7YUFBTSxJQUFJLEtBQUssQ0FBQyxDQUFDLENBQUMsSUFBSSxJQUFJLEVBQUU7WUFDM0IsT0FBTyxLQUFLLENBQUM7U0FDZDthQUFNO1lBQ0wsT0FBTyxLQUFLLEtBQUssQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDO1NBQ3hCO0lBQ0gsQ0FBQyxDQUFDLENBQUM7SUFDSCxNQUFNLGNBQWMsR0FBRyxXQUFXLElBQUksQ0FBQyxvQkFBb0IsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDdkUsT0FBTyxjQUFjLENBQUMsQ0FBQyxDQUFDLElBQUksSUFBSSxHQUFHLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQztBQUM3QyxDQUFDO0FBRUQsU0FBUyxhQUFhLENBQUMsS0FBYTtJQUNsQyxJQUFJLEdBQUcsR0FBRyxFQUFFLENBQUM7SUFDYixLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsS0FBSyxFQUFFLENBQUMsRUFBRSxFQUFFO1FBQzlCLEdBQUcsSUFBSSxZQUFZLENBQUM7S0FDckI7SUFDRCxPQUFPLEdBQUcsQ0FBQztBQUNiLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7UGFyc2VTb3VyY2VTcGFufSBmcm9tICcuLi9wYXJzZV91dGlsJztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi9vdXRwdXRfYXN0JztcbmltcG9ydCB7U291cmNlTWFwR2VuZXJhdG9yfSBmcm9tICcuL3NvdXJjZV9tYXAnO1xuXG5jb25zdCBfU0lOR0xFX1FVT1RFX0VTQ0FQRV9TVFJJTkdfUkUgPSAvJ3xcXFxcfFxcbnxcXHJ8XFwkL2c7XG5jb25zdCBfTEVHQUxfSURFTlRJRklFUl9SRSA9IC9eWyRBLVpfXVswLTlBLVpfJF0qJC9pO1xuY29uc3QgX0lOREVOVF9XSVRIID0gJyAgJztcbmV4cG9ydCBjb25zdCBDQVRDSF9FUlJPUl9WQVIgPSBvLnZhcmlhYmxlKCdlcnJvcicsIG51bGwsIG51bGwpO1xuZXhwb3J0IGNvbnN0IENBVENIX1NUQUNLX1ZBUiA9IG8udmFyaWFibGUoJ3N0YWNrJywgbnVsbCwgbnVsbCk7XG5cbmV4cG9ydCBpbnRlcmZhY2UgT3V0cHV0RW1pdHRlciB7XG4gIGVtaXRTdGF0ZW1lbnRzKGdlbkZpbGVQYXRoOiBzdHJpbmcsIHN0bXRzOiBvLlN0YXRlbWVudFtdLCBwcmVhbWJsZT86IHN0cmluZ3xudWxsKTogc3RyaW5nO1xufVxuXG5jbGFzcyBfRW1pdHRlZExpbmUge1xuICBwYXJ0c0xlbmd0aCA9IDA7XG4gIHBhcnRzOiBzdHJpbmdbXSA9IFtdO1xuICBzcmNTcGFuczogKFBhcnNlU291cmNlU3BhbnxudWxsKVtdID0gW107XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBpbmRlbnQ6IG51bWJlcikge31cbn1cblxuZXhwb3J0IGNsYXNzIEVtaXR0ZXJWaXNpdG9yQ29udGV4dCB7XG4gIHN0YXRpYyBjcmVhdGVSb290KCk6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCB7IHJldHVybiBuZXcgRW1pdHRlclZpc2l0b3JDb250ZXh0KDApOyB9XG5cbiAgcHJpdmF0ZSBfbGluZXM6IF9FbWl0dGVkTGluZVtdO1xuICBwcml2YXRlIF9jbGFzc2VzOiBvLkNsYXNzU3RtdFtdID0gW107XG4gIHByaXZhdGUgX3ByZWFtYmxlTGluZUNvdW50ID0gMDtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9pbmRlbnQ6IG51bWJlcikgeyB0aGlzLl9saW5lcyA9IFtuZXcgX0VtaXR0ZWRMaW5lKF9pbmRlbnQpXTsgfVxuXG4gIC8qKlxuICAgKiBAaW50ZXJuYWwgc3RyaXAgdGhpcyBmcm9tIHB1Ymxpc2hlZCBkLnRzIGZpbGVzIGR1ZSB0b1xuICAgKiBodHRwczovL2dpdGh1Yi5jb20vbWljcm9zb2Z0L1R5cGVTY3JpcHQvaXNzdWVzLzM2MjE2XG4gICAqL1xuICBwcml2YXRlIGdldCBfY3VycmVudExpbmUoKTogX0VtaXR0ZWRMaW5lIHsgcmV0dXJuIHRoaXMuX2xpbmVzW3RoaXMuX2xpbmVzLmxlbmd0aCAtIDFdOyB9XG5cbiAgcHJpbnRsbihmcm9tPzoge3NvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiB8IG51bGx9fG51bGwsIGxhc3RQYXJ0OiBzdHJpbmcgPSAnJyk6IHZvaWQge1xuICAgIHRoaXMucHJpbnQoZnJvbSB8fCBudWxsLCBsYXN0UGFydCwgdHJ1ZSk7XG4gIH1cblxuICBsaW5lSXNFbXB0eSgpOiBib29sZWFuIHsgcmV0dXJuIHRoaXMuX2N1cnJlbnRMaW5lLnBhcnRzLmxlbmd0aCA9PT0gMDsgfVxuXG4gIGxpbmVMZW5ndGgoKTogbnVtYmVyIHtcbiAgICByZXR1cm4gdGhpcy5fY3VycmVudExpbmUuaW5kZW50ICogX0lOREVOVF9XSVRILmxlbmd0aCArIHRoaXMuX2N1cnJlbnRMaW5lLnBhcnRzTGVuZ3RoO1xuICB9XG5cbiAgcHJpbnQoZnJvbToge3NvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiB8IG51bGx9fG51bGwsIHBhcnQ6IHN0cmluZywgbmV3TGluZTogYm9vbGVhbiA9IGZhbHNlKSB7XG4gICAgaWYgKHBhcnQubGVuZ3RoID4gMCkge1xuICAgICAgdGhpcy5fY3VycmVudExpbmUucGFydHMucHVzaChwYXJ0KTtcbiAgICAgIHRoaXMuX2N1cnJlbnRMaW5lLnBhcnRzTGVuZ3RoICs9IHBhcnQubGVuZ3RoO1xuICAgICAgdGhpcy5fY3VycmVudExpbmUuc3JjU3BhbnMucHVzaChmcm9tICYmIGZyb20uc291cmNlU3BhbiB8fCBudWxsKTtcbiAgICB9XG4gICAgaWYgKG5ld0xpbmUpIHtcbiAgICAgIHRoaXMuX2xpbmVzLnB1c2gobmV3IF9FbWl0dGVkTGluZSh0aGlzLl9pbmRlbnQpKTtcbiAgICB9XG4gIH1cblxuICByZW1vdmVFbXB0eUxhc3RMaW5lKCkge1xuICAgIGlmICh0aGlzLmxpbmVJc0VtcHR5KCkpIHtcbiAgICAgIHRoaXMuX2xpbmVzLnBvcCgpO1xuICAgIH1cbiAgfVxuXG4gIGluY0luZGVudCgpIHtcbiAgICB0aGlzLl9pbmRlbnQrKztcbiAgICBpZiAodGhpcy5saW5lSXNFbXB0eSgpKSB7XG4gICAgICB0aGlzLl9jdXJyZW50TGluZS5pbmRlbnQgPSB0aGlzLl9pbmRlbnQ7XG4gICAgfVxuICB9XG5cbiAgZGVjSW5kZW50KCkge1xuICAgIHRoaXMuX2luZGVudC0tO1xuICAgIGlmICh0aGlzLmxpbmVJc0VtcHR5KCkpIHtcbiAgICAgIHRoaXMuX2N1cnJlbnRMaW5lLmluZGVudCA9IHRoaXMuX2luZGVudDtcbiAgICB9XG4gIH1cblxuICBwdXNoQ2xhc3MoY2xheno6IG8uQ2xhc3NTdG10KSB7IHRoaXMuX2NsYXNzZXMucHVzaChjbGF6eik7IH1cblxuICBwb3BDbGFzcygpOiBvLkNsYXNzU3RtdCB7IHJldHVybiB0aGlzLl9jbGFzc2VzLnBvcCgpICE7IH1cblxuICBnZXQgY3VycmVudENsYXNzKCk6IG8uQ2xhc3NTdG10fG51bGwge1xuICAgIHJldHVybiB0aGlzLl9jbGFzc2VzLmxlbmd0aCA+IDAgPyB0aGlzLl9jbGFzc2VzW3RoaXMuX2NsYXNzZXMubGVuZ3RoIC0gMV0gOiBudWxsO1xuICB9XG5cbiAgdG9Tb3VyY2UoKTogc3RyaW5nIHtcbiAgICByZXR1cm4gdGhpcy5zb3VyY2VMaW5lc1xuICAgICAgICAubWFwKGwgPT4gbC5wYXJ0cy5sZW5ndGggPiAwID8gX2NyZWF0ZUluZGVudChsLmluZGVudCkgKyBsLnBhcnRzLmpvaW4oJycpIDogJycpXG4gICAgICAgIC5qb2luKCdcXG4nKTtcbiAgfVxuXG4gIHRvU291cmNlTWFwR2VuZXJhdG9yKGdlbkZpbGVQYXRoOiBzdHJpbmcsIHN0YXJ0c0F0TGluZTogbnVtYmVyID0gMCk6IFNvdXJjZU1hcEdlbmVyYXRvciB7XG4gICAgY29uc3QgbWFwID0gbmV3IFNvdXJjZU1hcEdlbmVyYXRvcihnZW5GaWxlUGF0aCk7XG5cbiAgICBsZXQgZmlyc3RPZmZzZXRNYXBwZWQgPSBmYWxzZTtcbiAgICBjb25zdCBtYXBGaXJzdE9mZnNldElmTmVlZGVkID0gKCkgPT4ge1xuICAgICAgaWYgKCFmaXJzdE9mZnNldE1hcHBlZCkge1xuICAgICAgICAvLyBBZGQgYSBzaW5nbGUgc3BhY2Ugc28gdGhhdCB0b29scyB3b24ndCB0cnkgdG8gbG9hZCB0aGUgZmlsZSBmcm9tIGRpc2suXG4gICAgICAgIC8vIE5vdGU6IFdlIGFyZSB1c2luZyB2aXJ0dWFsIHVybHMgbGlrZSBgbmc6Ly8vYCwgc28gd2UgaGF2ZSB0b1xuICAgICAgICAvLyBwcm92aWRlIGEgY29udGVudCBoZXJlLlxuICAgICAgICBtYXAuYWRkU291cmNlKGdlbkZpbGVQYXRoLCAnICcpLmFkZE1hcHBpbmcoMCwgZ2VuRmlsZVBhdGgsIDAsIDApO1xuICAgICAgICBmaXJzdE9mZnNldE1hcHBlZCA9IHRydWU7XG4gICAgICB9XG4gICAgfTtcblxuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgc3RhcnRzQXRMaW5lOyBpKyspIHtcbiAgICAgIG1hcC5hZGRMaW5lKCk7XG4gICAgICBtYXBGaXJzdE9mZnNldElmTmVlZGVkKCk7XG4gICAgfVxuXG4gICAgdGhpcy5zb3VyY2VMaW5lcy5mb3JFYWNoKChsaW5lLCBsaW5lSWR4KSA9PiB7XG4gICAgICBtYXAuYWRkTGluZSgpO1xuXG4gICAgICBjb25zdCBzcGFucyA9IGxpbmUuc3JjU3BhbnM7XG4gICAgICBjb25zdCBwYXJ0cyA9IGxpbmUucGFydHM7XG4gICAgICBsZXQgY29sMCA9IGxpbmUuaW5kZW50ICogX0lOREVOVF9XSVRILmxlbmd0aDtcbiAgICAgIGxldCBzcGFuSWR4ID0gMDtcbiAgICAgIC8vIHNraXAgbGVhZGluZyBwYXJ0cyB3aXRob3V0IHNvdXJjZSBzcGFuc1xuICAgICAgd2hpbGUgKHNwYW5JZHggPCBzcGFucy5sZW5ndGggJiYgIXNwYW5zW3NwYW5JZHhdKSB7XG4gICAgICAgIGNvbDAgKz0gcGFydHNbc3BhbklkeF0ubGVuZ3RoO1xuICAgICAgICBzcGFuSWR4Kys7XG4gICAgICB9XG4gICAgICBpZiAoc3BhbklkeCA8IHNwYW5zLmxlbmd0aCAmJiBsaW5lSWR4ID09PSAwICYmIGNvbDAgPT09IDApIHtcbiAgICAgICAgZmlyc3RPZmZzZXRNYXBwZWQgPSB0cnVlO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgbWFwRmlyc3RPZmZzZXRJZk5lZWRlZCgpO1xuICAgICAgfVxuXG4gICAgICB3aGlsZSAoc3BhbklkeCA8IHNwYW5zLmxlbmd0aCkge1xuICAgICAgICBjb25zdCBzcGFuID0gc3BhbnNbc3BhbklkeF0gITtcbiAgICAgICAgY29uc3Qgc291cmNlID0gc3Bhbi5zdGFydC5maWxlO1xuICAgICAgICBjb25zdCBzb3VyY2VMaW5lID0gc3Bhbi5zdGFydC5saW5lO1xuICAgICAgICBjb25zdCBzb3VyY2VDb2wgPSBzcGFuLnN0YXJ0LmNvbDtcbiAgICAgICAgbWFwLmFkZFNvdXJjZShzb3VyY2UudXJsLCBzb3VyY2UuY29udGVudClcbiAgICAgICAgICAgIC5hZGRNYXBwaW5nKGNvbDAsIHNvdXJjZS51cmwsIHNvdXJjZUxpbmUsIHNvdXJjZUNvbCk7XG5cbiAgICAgICAgY29sMCArPSBwYXJ0c1tzcGFuSWR4XS5sZW5ndGg7XG4gICAgICAgIHNwYW5JZHgrKztcblxuICAgICAgICAvLyBhc3NpZ24gcGFydHMgd2l0aG91dCBzcGFuIG9yIHRoZSBzYW1lIHNwYW4gdG8gdGhlIHByZXZpb3VzIHNlZ21lbnRcbiAgICAgICAgd2hpbGUgKHNwYW5JZHggPCBzcGFucy5sZW5ndGggJiYgKHNwYW4gPT09IHNwYW5zW3NwYW5JZHhdIHx8ICFzcGFuc1tzcGFuSWR4XSkpIHtcbiAgICAgICAgICBjb2wwICs9IHBhcnRzW3NwYW5JZHhdLmxlbmd0aDtcbiAgICAgICAgICBzcGFuSWR4Kys7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9KTtcblxuICAgIHJldHVybiBtYXA7XG4gIH1cblxuICBzZXRQcmVhbWJsZUxpbmVDb3VudChjb3VudDogbnVtYmVyKSB7IHJldHVybiB0aGlzLl9wcmVhbWJsZUxpbmVDb3VudCA9IGNvdW50OyB9XG5cbiAgc3Bhbk9mKGxpbmU6IG51bWJlciwgY29sdW1uOiBudW1iZXIpOiBQYXJzZVNvdXJjZVNwYW58bnVsbCB7XG4gICAgY29uc3QgZW1pdHRlZExpbmUgPSB0aGlzLl9saW5lc1tsaW5lIC0gdGhpcy5fcHJlYW1ibGVMaW5lQ291bnRdO1xuICAgIGlmIChlbWl0dGVkTGluZSkge1xuICAgICAgbGV0IGNvbHVtbnNMZWZ0ID0gY29sdW1uIC0gX2NyZWF0ZUluZGVudChlbWl0dGVkTGluZS5pbmRlbnQpLmxlbmd0aDtcbiAgICAgIGZvciAobGV0IHBhcnRJbmRleCA9IDA7IHBhcnRJbmRleCA8IGVtaXR0ZWRMaW5lLnBhcnRzLmxlbmd0aDsgcGFydEluZGV4KyspIHtcbiAgICAgICAgY29uc3QgcGFydCA9IGVtaXR0ZWRMaW5lLnBhcnRzW3BhcnRJbmRleF07XG4gICAgICAgIGlmIChwYXJ0Lmxlbmd0aCA+IGNvbHVtbnNMZWZ0KSB7XG4gICAgICAgICAgcmV0dXJuIGVtaXR0ZWRMaW5lLnNyY1NwYW5zW3BhcnRJbmRleF07XG4gICAgICAgIH1cbiAgICAgICAgY29sdW1uc0xlZnQgLT0gcGFydC5sZW5ndGg7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgLyoqXG4gICAqIEBpbnRlcm5hbCBzdHJpcCB0aGlzIGZyb20gcHVibGlzaGVkIGQudHMgZmlsZXMgZHVlIHRvXG4gICAqIGh0dHBzOi8vZ2l0aHViLmNvbS9taWNyb3NvZnQvVHlwZVNjcmlwdC9pc3N1ZXMvMzYyMTZcbiAgICovXG4gIHByaXZhdGUgZ2V0IHNvdXJjZUxpbmVzKCk6IF9FbWl0dGVkTGluZVtdIHtcbiAgICBpZiAodGhpcy5fbGluZXMubGVuZ3RoICYmIHRoaXMuX2xpbmVzW3RoaXMuX2xpbmVzLmxlbmd0aCAtIDFdLnBhcnRzLmxlbmd0aCA9PT0gMCkge1xuICAgICAgcmV0dXJuIHRoaXMuX2xpbmVzLnNsaWNlKDAsIC0xKTtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMuX2xpbmVzO1xuICB9XG59XG5cbmV4cG9ydCBhYnN0cmFjdCBjbGFzcyBBYnN0cmFjdEVtaXR0ZXJWaXNpdG9yIGltcGxlbWVudHMgby5TdGF0ZW1lbnRWaXNpdG9yLCBvLkV4cHJlc3Npb25WaXNpdG9yIHtcbiAgY29uc3RydWN0b3IocHJpdmF0ZSBfZXNjYXBlRG9sbGFySW5TdHJpbmdzOiBib29sZWFuKSB7fVxuXG4gIHZpc2l0RXhwcmVzc2lvblN0bXQoc3RtdDogby5FeHByZXNzaW9uU3RhdGVtZW50LCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgc3RtdC5leHByLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIGN0eC5wcmludGxuKHN0bXQsICc7Jyk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICB2aXNpdFJldHVyblN0bXQoc3RtdDogby5SZXR1cm5TdGF0ZW1lbnQsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBjdHgucHJpbnQoc3RtdCwgYHJldHVybiBgKTtcbiAgICBzdG10LnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIGN0eC5wcmludGxuKHN0bXQsICc7Jyk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBhYnN0cmFjdCB2aXNpdENhc3RFeHByKGFzdDogby5DYXN0RXhwciwgY29udGV4dDogYW55KTogYW55O1xuXG4gIGFic3RyYWN0IHZpc2l0RGVjbGFyZUNsYXNzU3RtdChzdG10OiBvLkNsYXNzU3RtdCwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnk7XG5cbiAgdmlzaXRJZlN0bXQoc3RtdDogby5JZlN0bXQsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBjdHgucHJpbnQoc3RtdCwgYGlmIChgKTtcbiAgICBzdG10LmNvbmRpdGlvbi52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KTtcbiAgICBjdHgucHJpbnQoc3RtdCwgYCkge2ApO1xuICAgIGNvbnN0IGhhc0Vsc2VDYXNlID0gc3RtdC5mYWxzZUNhc2UgIT0gbnVsbCAmJiBzdG10LmZhbHNlQ2FzZS5sZW5ndGggPiAwO1xuICAgIGlmIChzdG10LnRydWVDYXNlLmxlbmd0aCA8PSAxICYmICFoYXNFbHNlQ2FzZSkge1xuICAgICAgY3R4LnByaW50KHN0bXQsIGAgYCk7XG4gICAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LnRydWVDYXNlLCBjdHgpO1xuICAgICAgY3R4LnJlbW92ZUVtcHR5TGFzdExpbmUoKTtcbiAgICAgIGN0eC5wcmludChzdG10LCBgIGApO1xuICAgIH0gZWxzZSB7XG4gICAgICBjdHgucHJpbnRsbigpO1xuICAgICAgY3R4LmluY0luZGVudCgpO1xuICAgICAgdGhpcy52aXNpdEFsbFN0YXRlbWVudHMoc3RtdC50cnVlQ2FzZSwgY3R4KTtcbiAgICAgIGN0eC5kZWNJbmRlbnQoKTtcbiAgICAgIGlmIChoYXNFbHNlQ2FzZSkge1xuICAgICAgICBjdHgucHJpbnRsbihzdG10LCBgfSBlbHNlIHtgKTtcbiAgICAgICAgY3R4LmluY0luZGVudCgpO1xuICAgICAgICB0aGlzLnZpc2l0QWxsU3RhdGVtZW50cyhzdG10LmZhbHNlQ2FzZSwgY3R4KTtcbiAgICAgICAgY3R4LmRlY0luZGVudCgpO1xuICAgICAgfVxuICAgIH1cbiAgICBjdHgucHJpbnRsbihzdG10LCBgfWApO1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgYWJzdHJhY3QgdmlzaXRUcnlDYXRjaFN0bXQoc3RtdDogby5UcnlDYXRjaFN0bXQsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55O1xuXG4gIHZpc2l0VGhyb3dTdG10KHN0bXQ6IG8uVGhyb3dTdG10LCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgY3R4LnByaW50KHN0bXQsIGB0aHJvdyBgKTtcbiAgICBzdG10LmVycm9yLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIGN0eC5wcmludGxuKHN0bXQsIGA7YCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgdmlzaXRDb21tZW50U3RtdChzdG10OiBvLkNvbW1lbnRTdG10LCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgaWYgKHN0bXQubXVsdGlsaW5lKSB7XG4gICAgICBjdHgucHJpbnRsbihzdG10LCBgLyogJHtzdG10LmNvbW1lbnR9ICovYCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHN0bXQuY29tbWVudC5zcGxpdCgnXFxuJykuZm9yRWFjaCgobGluZSkgPT4geyBjdHgucHJpbnRsbihzdG10LCBgLy8gJHtsaW5lfWApOyB9KTtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgdmlzaXRKU0RvY0NvbW1lbnRTdG10KHN0bXQ6IG8uSlNEb2NDb21tZW50U3RtdCwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpIHtcbiAgICBjdHgucHJpbnRsbihzdG10LCBgLyoke3N0bXQudG9TdHJpbmcoKX0qL2ApO1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgYWJzdHJhY3QgdmlzaXREZWNsYXJlVmFyU3RtdChzdG10OiBvLkRlY2xhcmVWYXJTdG10LCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueTtcblxuICB2aXNpdFdyaXRlVmFyRXhwcihleHByOiBvLldyaXRlVmFyRXhwciwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIGNvbnN0IGxpbmVXYXNFbXB0eSA9IGN0eC5saW5lSXNFbXB0eSgpO1xuICAgIGlmICghbGluZVdhc0VtcHR5KSB7XG4gICAgICBjdHgucHJpbnQoZXhwciwgJygnKTtcbiAgICB9XG4gICAgY3R4LnByaW50KGV4cHIsIGAke2V4cHIubmFtZX0gPSBgKTtcbiAgICBleHByLnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIGlmICghbGluZVdhc0VtcHR5KSB7XG4gICAgICBjdHgucHJpbnQoZXhwciwgJyknKTtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgdmlzaXRXcml0ZUtleUV4cHIoZXhwcjogby5Xcml0ZUtleUV4cHIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBjb25zdCBsaW5lV2FzRW1wdHkgPSBjdHgubGluZUlzRW1wdHkoKTtcbiAgICBpZiAoIWxpbmVXYXNFbXB0eSkge1xuICAgICAgY3R4LnByaW50KGV4cHIsICcoJyk7XG4gICAgfVxuICAgIGV4cHIucmVjZWl2ZXIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgY3R4LnByaW50KGV4cHIsIGBbYCk7XG4gICAgZXhwci5pbmRleC52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KTtcbiAgICBjdHgucHJpbnQoZXhwciwgYF0gPSBgKTtcbiAgICBleHByLnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIGlmICghbGluZVdhc0VtcHR5KSB7XG4gICAgICBjdHgucHJpbnQoZXhwciwgJyknKTtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgdmlzaXRXcml0ZVByb3BFeHByKGV4cHI6IG8uV3JpdGVQcm9wRXhwciwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIGNvbnN0IGxpbmVXYXNFbXB0eSA9IGN0eC5saW5lSXNFbXB0eSgpO1xuICAgIGlmICghbGluZVdhc0VtcHR5KSB7XG4gICAgICBjdHgucHJpbnQoZXhwciwgJygnKTtcbiAgICB9XG4gICAgZXhwci5yZWNlaXZlci52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KTtcbiAgICBjdHgucHJpbnQoZXhwciwgYC4ke2V4cHIubmFtZX0gPSBgKTtcbiAgICBleHByLnZhbHVlLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIGlmICghbGluZVdhc0VtcHR5KSB7XG4gICAgICBjdHgucHJpbnQoZXhwciwgJyknKTtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgdmlzaXRJbnZva2VNZXRob2RFeHByKGV4cHI6IG8uSW52b2tlTWV0aG9kRXhwciwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIGV4cHIucmVjZWl2ZXIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgbGV0IG5hbWUgPSBleHByLm5hbWU7XG4gICAgaWYgKGV4cHIuYnVpbHRpbiAhPSBudWxsKSB7XG4gICAgICBuYW1lID0gdGhpcy5nZXRCdWlsdGluTWV0aG9kTmFtZShleHByLmJ1aWx0aW4pO1xuICAgICAgaWYgKG5hbWUgPT0gbnVsbCkge1xuICAgICAgICAvLyBzb21lIGJ1aWx0aW5zIGp1c3QgbWVhbiB0byBza2lwIHRoZSBjYWxsLlxuICAgICAgICByZXR1cm4gbnVsbDtcbiAgICAgIH1cbiAgICB9XG4gICAgY3R4LnByaW50KGV4cHIsIGAuJHtuYW1lfShgKTtcbiAgICB0aGlzLnZpc2l0QWxsRXhwcmVzc2lvbnMoZXhwci5hcmdzLCBjdHgsIGAsYCk7XG4gICAgY3R4LnByaW50KGV4cHIsIGApYCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBhYnN0cmFjdCBnZXRCdWlsdGluTWV0aG9kTmFtZShtZXRob2Q6IG8uQnVpbHRpbk1ldGhvZCk6IHN0cmluZztcblxuICB2aXNpdEludm9rZUZ1bmN0aW9uRXhwcihleHByOiBvLkludm9rZUZ1bmN0aW9uRXhwciwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIGV4cHIuZm4udmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgY3R4LnByaW50KGV4cHIsIGAoYCk7XG4gICAgdGhpcy52aXNpdEFsbEV4cHJlc3Npb25zKGV4cHIuYXJncywgY3R4LCAnLCcpO1xuICAgIGN0eC5wcmludChleHByLCBgKWApO1xuICAgIHJldHVybiBudWxsO1xuICB9XG4gIHZpc2l0V3JhcHBlZE5vZGVFeHByKGFzdDogby5XcmFwcGVkTm9kZUV4cHI8YW55PiwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIHRocm93IG5ldyBFcnJvcignQWJzdHJhY3QgZW1pdHRlciBjYW5ub3QgdmlzaXQgV3JhcHBlZE5vZGVFeHByLicpO1xuICB9XG4gIHZpc2l0VHlwZW9mRXhwcihleHByOiBvLlR5cGVvZkV4cHIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBjdHgucHJpbnQoZXhwciwgJ3R5cGVvZiAnKTtcbiAgICBleHByLmV4cHIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gIH1cbiAgdmlzaXRSZWFkVmFyRXhwcihhc3Q6IG8uUmVhZFZhckV4cHIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBsZXQgdmFyTmFtZSA9IGFzdC5uYW1lICE7XG4gICAgaWYgKGFzdC5idWlsdGluICE9IG51bGwpIHtcbiAgICAgIHN3aXRjaCAoYXN0LmJ1aWx0aW4pIHtcbiAgICAgICAgY2FzZSBvLkJ1aWx0aW5WYXIuU3VwZXI6XG4gICAgICAgICAgdmFyTmFtZSA9ICdzdXBlcic7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIGNhc2Ugby5CdWlsdGluVmFyLlRoaXM6XG4gICAgICAgICAgdmFyTmFtZSA9ICd0aGlzJztcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgY2FzZSBvLkJ1aWx0aW5WYXIuQ2F0Y2hFcnJvcjpcbiAgICAgICAgICB2YXJOYW1lID0gQ0FUQ0hfRVJST1JfVkFSLm5hbWUgITtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgY2FzZSBvLkJ1aWx0aW5WYXIuQ2F0Y2hTdGFjazpcbiAgICAgICAgICB2YXJOYW1lID0gQ0FUQ0hfU1RBQ0tfVkFSLm5hbWUgITtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgZGVmYXVsdDpcbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoYFVua25vd24gYnVpbHRpbiB2YXJpYWJsZSAke2FzdC5idWlsdGlufWApO1xuICAgICAgfVxuICAgIH1cbiAgICBjdHgucHJpbnQoYXN0LCB2YXJOYW1lKTtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuICB2aXNpdEluc3RhbnRpYXRlRXhwcihhc3Q6IG8uSW5zdGFudGlhdGVFeHByLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgY3R4LnByaW50KGFzdCwgYG5ldyBgKTtcbiAgICBhc3QuY2xhc3NFeHByLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIGN0eC5wcmludChhc3QsIGAoYCk7XG4gICAgdGhpcy52aXNpdEFsbEV4cHJlc3Npb25zKGFzdC5hcmdzLCBjdHgsICcsJyk7XG4gICAgY3R4LnByaW50KGFzdCwgYClgKTtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIHZpc2l0TGl0ZXJhbEV4cHIoYXN0OiBvLkxpdGVyYWxFeHByLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgY29uc3QgdmFsdWUgPSBhc3QudmFsdWU7XG4gICAgaWYgKHR5cGVvZiB2YWx1ZSA9PT0gJ3N0cmluZycpIHtcbiAgICAgIGN0eC5wcmludChhc3QsIGVzY2FwZUlkZW50aWZpZXIodmFsdWUsIHRoaXMuX2VzY2FwZURvbGxhckluU3RyaW5ncykpO1xuICAgIH0gZWxzZSB7XG4gICAgICBjdHgucHJpbnQoYXN0LCBgJHt2YWx1ZX1gKTtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICB2aXNpdExvY2FsaXplZFN0cmluZyhhc3Q6IG8uTG9jYWxpemVkU3RyaW5nLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgY29uc3QgaGVhZCA9IGFzdC5zZXJpYWxpemVJMThuSGVhZCgpO1xuICAgIGN0eC5wcmludChhc3QsICckbG9jYWxpemUgYCcgKyBoZWFkLnJhdyk7XG4gICAgZm9yIChsZXQgaSA9IDE7IGkgPCBhc3QubWVzc2FnZVBhcnRzLmxlbmd0aDsgaSsrKSB7XG4gICAgICBjdHgucHJpbnQoYXN0LCAnJHsnKTtcbiAgICAgIGFzdC5leHByZXNzaW9uc1tpIC0gMV0udmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgICBjdHgucHJpbnQoYXN0LCBgfSR7YXN0LnNlcmlhbGl6ZUkxOG5UZW1wbGF0ZVBhcnQoaSkucmF3fWApO1xuICAgIH1cbiAgICBjdHgucHJpbnQoYXN0LCAnYCcpO1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgYWJzdHJhY3QgdmlzaXRFeHRlcm5hbEV4cHIoYXN0OiBvLkV4dGVybmFsRXhwciwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnk7XG5cbiAgdmlzaXRDb25kaXRpb25hbEV4cHIoYXN0OiBvLkNvbmRpdGlvbmFsRXhwciwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIGN0eC5wcmludChhc3QsIGAoYCk7XG4gICAgYXN0LmNvbmRpdGlvbi52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KTtcbiAgICBjdHgucHJpbnQoYXN0LCAnPyAnKTtcbiAgICBhc3QudHJ1ZUNhc2UudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgY3R4LnByaW50KGFzdCwgJzogJyk7XG4gICAgYXN0LmZhbHNlQ2FzZSAhLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIGN0eC5wcmludChhc3QsIGApYCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgdmlzaXROb3RFeHByKGFzdDogby5Ob3RFeHByLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCk6IGFueSB7XG4gICAgY3R4LnByaW50KGFzdCwgJyEnKTtcbiAgICBhc3QuY29uZGl0aW9uLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIHJldHVybiBudWxsO1xuICB9XG4gIHZpc2l0QXNzZXJ0Tm90TnVsbEV4cHIoYXN0OiBvLkFzc2VydE5vdE51bGwsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBhc3QuY29uZGl0aW9uLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIHJldHVybiBudWxsO1xuICB9XG4gIGFic3RyYWN0IHZpc2l0RnVuY3Rpb25FeHByKGFzdDogby5GdW5jdGlvbkV4cHIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55O1xuICBhYnN0cmFjdCB2aXNpdERlY2xhcmVGdW5jdGlvblN0bXQoc3RtdDogby5EZWNsYXJlRnVuY3Rpb25TdG10LCBjb250ZXh0OiBhbnkpOiBhbnk7XG5cbiAgdmlzaXRCaW5hcnlPcGVyYXRvckV4cHIoYXN0OiBvLkJpbmFyeU9wZXJhdG9yRXhwciwgY3R4OiBFbWl0dGVyVmlzaXRvckNvbnRleHQpOiBhbnkge1xuICAgIGxldCBvcFN0cjogc3RyaW5nO1xuICAgIHN3aXRjaCAoYXN0Lm9wZXJhdG9yKSB7XG4gICAgICBjYXNlIG8uQmluYXJ5T3BlcmF0b3IuRXF1YWxzOlxuICAgICAgICBvcFN0ciA9ICc9PSc7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBvLkJpbmFyeU9wZXJhdG9yLklkZW50aWNhbDpcbiAgICAgICAgb3BTdHIgPSAnPT09JztcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIG8uQmluYXJ5T3BlcmF0b3IuTm90RXF1YWxzOlxuICAgICAgICBvcFN0ciA9ICchPSc7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBvLkJpbmFyeU9wZXJhdG9yLk5vdElkZW50aWNhbDpcbiAgICAgICAgb3BTdHIgPSAnIT09JztcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIG8uQmluYXJ5T3BlcmF0b3IuQW5kOlxuICAgICAgICBvcFN0ciA9ICcmJic7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBvLkJpbmFyeU9wZXJhdG9yLkJpdHdpc2VBbmQ6XG4gICAgICAgIG9wU3RyID0gJyYnO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2Ugby5CaW5hcnlPcGVyYXRvci5PcjpcbiAgICAgICAgb3BTdHIgPSAnfHwnO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2Ugby5CaW5hcnlPcGVyYXRvci5QbHVzOlxuICAgICAgICBvcFN0ciA9ICcrJztcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIG8uQmluYXJ5T3BlcmF0b3IuTWludXM6XG4gICAgICAgIG9wU3RyID0gJy0nO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2Ugby5CaW5hcnlPcGVyYXRvci5EaXZpZGU6XG4gICAgICAgIG9wU3RyID0gJy8nO1xuICAgICAgICBicmVhaztcbiAgICAgIGNhc2Ugby5CaW5hcnlPcGVyYXRvci5NdWx0aXBseTpcbiAgICAgICAgb3BTdHIgPSAnKic7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBvLkJpbmFyeU9wZXJhdG9yLk1vZHVsbzpcbiAgICAgICAgb3BTdHIgPSAnJSc7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBvLkJpbmFyeU9wZXJhdG9yLkxvd2VyOlxuICAgICAgICBvcFN0ciA9ICc8JztcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIG8uQmluYXJ5T3BlcmF0b3IuTG93ZXJFcXVhbHM6XG4gICAgICAgIG9wU3RyID0gJzw9JztcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIG8uQmluYXJ5T3BlcmF0b3IuQmlnZ2VyOlxuICAgICAgICBvcFN0ciA9ICc+JztcbiAgICAgICAgYnJlYWs7XG4gICAgICBjYXNlIG8uQmluYXJ5T3BlcmF0b3IuQmlnZ2VyRXF1YWxzOlxuICAgICAgICBvcFN0ciA9ICc+PSc7XG4gICAgICAgIGJyZWFrO1xuICAgICAgZGVmYXVsdDpcbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKGBVbmtub3duIG9wZXJhdG9yICR7YXN0Lm9wZXJhdG9yfWApO1xuICAgIH1cbiAgICBpZiAoYXN0LnBhcmVucykgY3R4LnByaW50KGFzdCwgYChgKTtcbiAgICBhc3QubGhzLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpO1xuICAgIGN0eC5wcmludChhc3QsIGAgJHtvcFN0cn0gYCk7XG4gICAgYXN0LnJocy52aXNpdEV4cHJlc3Npb24odGhpcywgY3R4KTtcbiAgICBpZiAoYXN0LnBhcmVucykgY3R4LnByaW50KGFzdCwgYClgKTtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIHZpc2l0UmVhZFByb3BFeHByKGFzdDogby5SZWFkUHJvcEV4cHIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBhc3QucmVjZWl2ZXIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgY3R4LnByaW50KGFzdCwgYC5gKTtcbiAgICBjdHgucHJpbnQoYXN0LCBhc3QubmFtZSk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgdmlzaXRSZWFkS2V5RXhwcihhc3Q6IG8uUmVhZEtleUV4cHIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBhc3QucmVjZWl2ZXIudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgY3R4LnByaW50KGFzdCwgYFtgKTtcbiAgICBhc3QuaW5kZXgudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgY3R4LnByaW50KGFzdCwgYF1gKTtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuICB2aXNpdExpdGVyYWxBcnJheUV4cHIoYXN0OiBvLkxpdGVyYWxBcnJheUV4cHIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBjdHgucHJpbnQoYXN0LCBgW2ApO1xuICAgIHRoaXMudmlzaXRBbGxFeHByZXNzaW9ucyhhc3QuZW50cmllcywgY3R4LCAnLCcpO1xuICAgIGN0eC5wcmludChhc3QsIGBdYCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgdmlzaXRMaXRlcmFsTWFwRXhwcihhc3Q6IG8uTGl0ZXJhbE1hcEV4cHIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBjdHgucHJpbnQoYXN0LCBge2ApO1xuICAgIHRoaXMudmlzaXRBbGxPYmplY3RzKGVudHJ5ID0+IHtcbiAgICAgIGN0eC5wcmludChhc3QsIGAke2VzY2FwZUlkZW50aWZpZXIoZW50cnkua2V5LCB0aGlzLl9lc2NhcGVEb2xsYXJJblN0cmluZ3MsIGVudHJ5LnF1b3RlZCl9OmApO1xuICAgICAgZW50cnkudmFsdWUudmlzaXRFeHByZXNzaW9uKHRoaXMsIGN0eCk7XG4gICAgfSwgYXN0LmVudHJpZXMsIGN0eCwgJywnKTtcbiAgICBjdHgucHJpbnQoYXN0LCBgfWApO1xuICAgIHJldHVybiBudWxsO1xuICB9XG4gIHZpc2l0Q29tbWFFeHByKGFzdDogby5Db21tYUV4cHIsIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogYW55IHtcbiAgICBjdHgucHJpbnQoYXN0LCAnKCcpO1xuICAgIHRoaXMudmlzaXRBbGxFeHByZXNzaW9ucyhhc3QucGFydHMsIGN0eCwgJywnKTtcbiAgICBjdHgucHJpbnQoYXN0LCAnKScpO1xuICAgIHJldHVybiBudWxsO1xuICB9XG4gIHZpc2l0QWxsRXhwcmVzc2lvbnMoZXhwcmVzc2lvbnM6IG8uRXhwcmVzc2lvbltdLCBjdHg6IEVtaXR0ZXJWaXNpdG9yQ29udGV4dCwgc2VwYXJhdG9yOiBzdHJpbmcpOlxuICAgICAgdm9pZCB7XG4gICAgdGhpcy52aXNpdEFsbE9iamVjdHMoZXhwciA9PiBleHByLnZpc2l0RXhwcmVzc2lvbih0aGlzLCBjdHgpLCBleHByZXNzaW9ucywgY3R4LCBzZXBhcmF0b3IpO1xuICB9XG5cbiAgdmlzaXRBbGxPYmplY3RzPFQ+KFxuICAgICAgaGFuZGxlcjogKHQ6IFQpID0+IHZvaWQsIGV4cHJlc3Npb25zOiBUW10sIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0LFxuICAgICAgc2VwYXJhdG9yOiBzdHJpbmcpOiB2b2lkIHtcbiAgICBsZXQgaW5jcmVtZW50ZWRJbmRlbnQgPSBmYWxzZTtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IGV4cHJlc3Npb25zLmxlbmd0aDsgaSsrKSB7XG4gICAgICBpZiAoaSA+IDApIHtcbiAgICAgICAgaWYgKGN0eC5saW5lTGVuZ3RoKCkgPiA4MCkge1xuICAgICAgICAgIGN0eC5wcmludChudWxsLCBzZXBhcmF0b3IsIHRydWUpO1xuICAgICAgICAgIGlmICghaW5jcmVtZW50ZWRJbmRlbnQpIHtcbiAgICAgICAgICAgIC8vIGNvbnRpbnVhdGlvbiBhcmUgbWFya2VkIHdpdGggZG91YmxlIGluZGVudC5cbiAgICAgICAgICAgIGN0eC5pbmNJbmRlbnQoKTtcbiAgICAgICAgICAgIGN0eC5pbmNJbmRlbnQoKTtcbiAgICAgICAgICAgIGluY3JlbWVudGVkSW5kZW50ID0gdHJ1ZTtcbiAgICAgICAgICB9XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgY3R4LnByaW50KG51bGwsIHNlcGFyYXRvciwgZmFsc2UpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgICBoYW5kbGVyKGV4cHJlc3Npb25zW2ldKTtcbiAgICB9XG4gICAgaWYgKGluY3JlbWVudGVkSW5kZW50KSB7XG4gICAgICAvLyBjb250aW51YXRpb24gYXJlIG1hcmtlZCB3aXRoIGRvdWJsZSBpbmRlbnQuXG4gICAgICBjdHguZGVjSW5kZW50KCk7XG4gICAgICBjdHguZGVjSW5kZW50KCk7XG4gICAgfVxuICB9XG5cbiAgdmlzaXRBbGxTdGF0ZW1lbnRzKHN0YXRlbWVudHM6IG8uU3RhdGVtZW50W10sIGN0eDogRW1pdHRlclZpc2l0b3JDb250ZXh0KTogdm9pZCB7XG4gICAgc3RhdGVtZW50cy5mb3JFYWNoKChzdG10KSA9PiBzdG10LnZpc2l0U3RhdGVtZW50KHRoaXMsIGN0eCkpO1xuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBlc2NhcGVJZGVudGlmaWVyKFxuICAgIGlucHV0OiBzdHJpbmcsIGVzY2FwZURvbGxhcjogYm9vbGVhbiwgYWx3YXlzUXVvdGU6IGJvb2xlYW4gPSB0cnVlKTogYW55IHtcbiAgaWYgKGlucHV0ID09IG51bGwpIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuICBjb25zdCBib2R5ID0gaW5wdXQucmVwbGFjZShfU0lOR0xFX1FVT1RFX0VTQ0FQRV9TVFJJTkdfUkUsICguLi5tYXRjaDogc3RyaW5nW10pID0+IHtcbiAgICBpZiAobWF0Y2hbMF0gPT0gJyQnKSB7XG4gICAgICByZXR1cm4gZXNjYXBlRG9sbGFyID8gJ1xcXFwkJyA6ICckJztcbiAgICB9IGVsc2UgaWYgKG1hdGNoWzBdID09ICdcXG4nKSB7XG4gICAgICByZXR1cm4gJ1xcXFxuJztcbiAgICB9IGVsc2UgaWYgKG1hdGNoWzBdID09ICdcXHInKSB7XG4gICAgICByZXR1cm4gJ1xcXFxyJztcbiAgICB9IGVsc2Uge1xuICAgICAgcmV0dXJuIGBcXFxcJHttYXRjaFswXX1gO1xuICAgIH1cbiAgfSk7XG4gIGNvbnN0IHJlcXVpcmVzUXVvdGVzID0gYWx3YXlzUXVvdGUgfHwgIV9MRUdBTF9JREVOVElGSUVSX1JFLnRlc3QoYm9keSk7XG4gIHJldHVybiByZXF1aXJlc1F1b3RlcyA/IGAnJHtib2R5fSdgIDogYm9keTtcbn1cblxuZnVuY3Rpb24gX2NyZWF0ZUluZGVudChjb3VudDogbnVtYmVyKTogc3RyaW5nIHtcbiAgbGV0IHJlcyA9ICcnO1xuICBmb3IgKGxldCBpID0gMDsgaSA8IGNvdW50OyBpKyspIHtcbiAgICByZXMgKz0gX0lOREVOVF9XSVRIO1xuICB9XG4gIHJldHVybiByZXM7XG59XG4iXX0=