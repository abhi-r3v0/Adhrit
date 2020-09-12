/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
export class ParserError {
    constructor(message, input, errLocation, ctxLocation) {
        this.input = input;
        this.errLocation = errLocation;
        this.ctxLocation = ctxLocation;
        this.message = `Parser Error: ${message} ${errLocation} [${input}] in ${ctxLocation}`;
    }
}
export class ParseSpan {
    constructor(start, end) {
        this.start = start;
        this.end = end;
    }
    toAbsolute(absoluteOffset) {
        return new AbsoluteSourceSpan(absoluteOffset + this.start, absoluteOffset + this.end);
    }
}
export class AST {
    constructor(span, 
    /**
     * Absolute location of the expression AST in a source code file.
     */
    sourceSpan) {
        this.span = span;
        this.sourceSpan = sourceSpan;
    }
    visit(visitor, context = null) {
        return null;
    }
    toString() {
        return 'AST';
    }
}
export class ASTWithName extends AST {
    constructor(span, sourceSpan, nameSpan) {
        super(span, sourceSpan);
        this.nameSpan = nameSpan;
    }
}
/**
 * Represents a quoted expression of the form:
 *
 * quote = prefix `:` uninterpretedExpression
 * prefix = identifier
 * uninterpretedExpression = arbitrary string
 *
 * A quoted expression is meant to be pre-processed by an AST transformer that
 * converts it into another AST that no longer contains quoted expressions.
 * It is meant to allow third-party developers to extend Angular template
 * expression language. The `uninterpretedExpression` part of the quote is
 * therefore not interpreted by the Angular's own expression parser.
 */
export class Quote extends AST {
    constructor(span, sourceSpan, prefix, uninterpretedExpression, location) {
        super(span, sourceSpan);
        this.prefix = prefix;
        this.uninterpretedExpression = uninterpretedExpression;
        this.location = location;
    }
    visit(visitor, context = null) {
        return visitor.visitQuote(this, context);
    }
    toString() {
        return 'Quote';
    }
}
export class EmptyExpr extends AST {
    visit(visitor, context = null) {
        // do nothing
    }
}
export class ImplicitReceiver extends AST {
    visit(visitor, context = null) {
        return visitor.visitImplicitReceiver(this, context);
    }
}
/**
 * Multiple expressions separated by a semicolon.
 */
export class Chain extends AST {
    constructor(span, sourceSpan, expressions) {
        super(span, sourceSpan);
        this.expressions = expressions;
    }
    visit(visitor, context = null) {
        return visitor.visitChain(this, context);
    }
}
export class Conditional extends AST {
    constructor(span, sourceSpan, condition, trueExp, falseExp) {
        super(span, sourceSpan);
        this.condition = condition;
        this.trueExp = trueExp;
        this.falseExp = falseExp;
    }
    visit(visitor, context = null) {
        return visitor.visitConditional(this, context);
    }
}
export class PropertyRead extends ASTWithName {
    constructor(span, sourceSpan, nameSpan, receiver, name) {
        super(span, sourceSpan, nameSpan);
        this.receiver = receiver;
        this.name = name;
    }
    visit(visitor, context = null) {
        return visitor.visitPropertyRead(this, context);
    }
}
export class PropertyWrite extends ASTWithName {
    constructor(span, sourceSpan, nameSpan, receiver, name, value) {
        super(span, sourceSpan, nameSpan);
        this.receiver = receiver;
        this.name = name;
        this.value = value;
    }
    visit(visitor, context = null) {
        return visitor.visitPropertyWrite(this, context);
    }
}
export class SafePropertyRead extends ASTWithName {
    constructor(span, sourceSpan, nameSpan, receiver, name) {
        super(span, sourceSpan, nameSpan);
        this.receiver = receiver;
        this.name = name;
    }
    visit(visitor, context = null) {
        return visitor.visitSafePropertyRead(this, context);
    }
}
export class KeyedRead extends AST {
    constructor(span, sourceSpan, obj, key) {
        super(span, sourceSpan);
        this.obj = obj;
        this.key = key;
    }
    visit(visitor, context = null) {
        return visitor.visitKeyedRead(this, context);
    }
}
export class KeyedWrite extends AST {
    constructor(span, sourceSpan, obj, key, value) {
        super(span, sourceSpan);
        this.obj = obj;
        this.key = key;
        this.value = value;
    }
    visit(visitor, context = null) {
        return visitor.visitKeyedWrite(this, context);
    }
}
export class BindingPipe extends ASTWithName {
    constructor(span, sourceSpan, exp, name, args, nameSpan) {
        super(span, sourceSpan, nameSpan);
        this.exp = exp;
        this.name = name;
        this.args = args;
    }
    visit(visitor, context = null) {
        return visitor.visitPipe(this, context);
    }
}
export class LiteralPrimitive extends AST {
    constructor(span, sourceSpan, value) {
        super(span, sourceSpan);
        this.value = value;
    }
    visit(visitor, context = null) {
        return visitor.visitLiteralPrimitive(this, context);
    }
}
export class LiteralArray extends AST {
    constructor(span, sourceSpan, expressions) {
        super(span, sourceSpan);
        this.expressions = expressions;
    }
    visit(visitor, context = null) {
        return visitor.visitLiteralArray(this, context);
    }
}
export class LiteralMap extends AST {
    constructor(span, sourceSpan, keys, values) {
        super(span, sourceSpan);
        this.keys = keys;
        this.values = values;
    }
    visit(visitor, context = null) {
        return visitor.visitLiteralMap(this, context);
    }
}
export class Interpolation extends AST {
    constructor(span, sourceSpan, strings, expressions) {
        super(span, sourceSpan);
        this.strings = strings;
        this.expressions = expressions;
    }
    visit(visitor, context = null) {
        return visitor.visitInterpolation(this, context);
    }
}
export class Binary extends AST {
    constructor(span, sourceSpan, operation, left, right) {
        super(span, sourceSpan);
        this.operation = operation;
        this.left = left;
        this.right = right;
    }
    visit(visitor, context = null) {
        return visitor.visitBinary(this, context);
    }
}
export class PrefixNot extends AST {
    constructor(span, sourceSpan, expression) {
        super(span, sourceSpan);
        this.expression = expression;
    }
    visit(visitor, context = null) {
        return visitor.visitPrefixNot(this, context);
    }
}
export class NonNullAssert extends AST {
    constructor(span, sourceSpan, expression) {
        super(span, sourceSpan);
        this.expression = expression;
    }
    visit(visitor, context = null) {
        return visitor.visitNonNullAssert(this, context);
    }
}
export class MethodCall extends ASTWithName {
    constructor(span, sourceSpan, nameSpan, receiver, name, args) {
        super(span, sourceSpan, nameSpan);
        this.receiver = receiver;
        this.name = name;
        this.args = args;
    }
    visit(visitor, context = null) {
        return visitor.visitMethodCall(this, context);
    }
}
export class SafeMethodCall extends ASTWithName {
    constructor(span, sourceSpan, nameSpan, receiver, name, args) {
        super(span, sourceSpan, nameSpan);
        this.receiver = receiver;
        this.name = name;
        this.args = args;
    }
    visit(visitor, context = null) {
        return visitor.visitSafeMethodCall(this, context);
    }
}
export class FunctionCall extends AST {
    constructor(span, sourceSpan, target, args) {
        super(span, sourceSpan);
        this.target = target;
        this.args = args;
    }
    visit(visitor, context = null) {
        return visitor.visitFunctionCall(this, context);
    }
}
/**
 * Records the absolute position of a text span in a source file, where `start` and `end` are the
 * starting and ending byte offsets, respectively, of the text span in a source file.
 */
export class AbsoluteSourceSpan {
    constructor(start, end) {
        this.start = start;
        this.end = end;
    }
}
export class ASTWithSource extends AST {
    constructor(ast, source, location, absoluteOffset, errors) {
        super(new ParseSpan(0, source === null ? 0 : source.length), new AbsoluteSourceSpan(absoluteOffset, source === null ? absoluteOffset : absoluteOffset + source.length));
        this.ast = ast;
        this.source = source;
        this.location = location;
        this.errors = errors;
    }
    visit(visitor, context = null) {
        if (visitor.visitASTWithSource) {
            return visitor.visitASTWithSource(this, context);
        }
        return this.ast.visit(visitor, context);
    }
    toString() {
        return `${this.source} in ${this.location}`;
    }
}
export class VariableBinding {
    /**
     * @param sourceSpan entire span of the binding.
     * @param key name of the LHS along with its span.
     * @param value optional value for the RHS along with its span.
     */
    constructor(sourceSpan, key, value) {
        this.sourceSpan = sourceSpan;
        this.key = key;
        this.value = value;
    }
}
export class ExpressionBinding {
    /**
     * @param sourceSpan entire span of the binding.
     * @param key binding name, like ngForOf, ngForTrackBy, ngIf, along with its
     * span. Note that the length of the span may not be the same as
     * `key.source.length`. For example,
     * 1. key.source = ngFor, key.span is for "ngFor"
     * 2. key.source = ngForOf, key.span is for "of"
     * 3. key.source = ngForTrackBy, key.span is for "trackBy"
     * @param value optional expression for the RHS.
     */
    constructor(sourceSpan, key, value) {
        this.sourceSpan = sourceSpan;
        this.key = key;
        this.value = value;
    }
}
export class RecursiveAstVisitor {
    visit(ast, context) {
        // The default implementation just visits every node.
        // Classes that extend RecursiveAstVisitor should override this function
        // to selectively visit the specified node.
        ast.visit(this, context);
    }
    visitBinary(ast, context) {
        this.visit(ast.left, context);
        this.visit(ast.right, context);
    }
    visitChain(ast, context) {
        this.visitAll(ast.expressions, context);
    }
    visitConditional(ast, context) {
        this.visit(ast.condition, context);
        this.visit(ast.trueExp, context);
        this.visit(ast.falseExp, context);
    }
    visitPipe(ast, context) {
        this.visit(ast.exp, context);
        this.visitAll(ast.args, context);
    }
    visitFunctionCall(ast, context) {
        if (ast.target) {
            this.visit(ast.target, context);
        }
        this.visitAll(ast.args, context);
    }
    visitImplicitReceiver(ast, context) { }
    visitInterpolation(ast, context) {
        this.visitAll(ast.expressions, context);
    }
    visitKeyedRead(ast, context) {
        this.visit(ast.obj, context);
        this.visit(ast.key, context);
    }
    visitKeyedWrite(ast, context) {
        this.visit(ast.obj, context);
        this.visit(ast.key, context);
        this.visit(ast.value, context);
    }
    visitLiteralArray(ast, context) {
        this.visitAll(ast.expressions, context);
    }
    visitLiteralMap(ast, context) {
        this.visitAll(ast.values, context);
    }
    visitLiteralPrimitive(ast, context) { }
    visitMethodCall(ast, context) {
        this.visit(ast.receiver, context);
        this.visitAll(ast.args, context);
    }
    visitPrefixNot(ast, context) {
        this.visit(ast.expression, context);
    }
    visitNonNullAssert(ast, context) {
        this.visit(ast.expression, context);
    }
    visitPropertyRead(ast, context) {
        this.visit(ast.receiver, context);
    }
    visitPropertyWrite(ast, context) {
        this.visit(ast.receiver, context);
        this.visit(ast.value, context);
    }
    visitSafePropertyRead(ast, context) {
        this.visit(ast.receiver, context);
    }
    visitSafeMethodCall(ast, context) {
        this.visit(ast.receiver, context);
        this.visitAll(ast.args, context);
    }
    visitQuote(ast, context) { }
    // This is not part of the AstVisitor interface, just a helper method
    visitAll(asts, context) {
        for (const ast of asts) {
            this.visit(ast, context);
        }
    }
}
export class AstTransformer {
    visitImplicitReceiver(ast, context) {
        return ast;
    }
    visitInterpolation(ast, context) {
        return new Interpolation(ast.span, ast.sourceSpan, ast.strings, this.visitAll(ast.expressions));
    }
    visitLiteralPrimitive(ast, context) {
        return new LiteralPrimitive(ast.span, ast.sourceSpan, ast.value);
    }
    visitPropertyRead(ast, context) {
        return new PropertyRead(ast.span, ast.sourceSpan, ast.nameSpan, ast.receiver.visit(this), ast.name);
    }
    visitPropertyWrite(ast, context) {
        return new PropertyWrite(ast.span, ast.sourceSpan, ast.nameSpan, ast.receiver.visit(this), ast.name, ast.value.visit(this));
    }
    visitSafePropertyRead(ast, context) {
        return new SafePropertyRead(ast.span, ast.sourceSpan, ast.nameSpan, ast.receiver.visit(this), ast.name);
    }
    visitMethodCall(ast, context) {
        return new MethodCall(ast.span, ast.sourceSpan, ast.nameSpan, ast.receiver.visit(this), ast.name, this.visitAll(ast.args));
    }
    visitSafeMethodCall(ast, context) {
        return new SafeMethodCall(ast.span, ast.sourceSpan, ast.nameSpan, ast.receiver.visit(this), ast.name, this.visitAll(ast.args));
    }
    visitFunctionCall(ast, context) {
        return new FunctionCall(ast.span, ast.sourceSpan, ast.target.visit(this), this.visitAll(ast.args));
    }
    visitLiteralArray(ast, context) {
        return new LiteralArray(ast.span, ast.sourceSpan, this.visitAll(ast.expressions));
    }
    visitLiteralMap(ast, context) {
        return new LiteralMap(ast.span, ast.sourceSpan, ast.keys, this.visitAll(ast.values));
    }
    visitBinary(ast, context) {
        return new Binary(ast.span, ast.sourceSpan, ast.operation, ast.left.visit(this), ast.right.visit(this));
    }
    visitPrefixNot(ast, context) {
        return new PrefixNot(ast.span, ast.sourceSpan, ast.expression.visit(this));
    }
    visitNonNullAssert(ast, context) {
        return new NonNullAssert(ast.span, ast.sourceSpan, ast.expression.visit(this));
    }
    visitConditional(ast, context) {
        return new Conditional(ast.span, ast.sourceSpan, ast.condition.visit(this), ast.trueExp.visit(this), ast.falseExp.visit(this));
    }
    visitPipe(ast, context) {
        return new BindingPipe(ast.span, ast.sourceSpan, ast.exp.visit(this), ast.name, this.visitAll(ast.args), ast.nameSpan);
    }
    visitKeyedRead(ast, context) {
        return new KeyedRead(ast.span, ast.sourceSpan, ast.obj.visit(this), ast.key.visit(this));
    }
    visitKeyedWrite(ast, context) {
        return new KeyedWrite(ast.span, ast.sourceSpan, ast.obj.visit(this), ast.key.visit(this), ast.value.visit(this));
    }
    visitAll(asts) {
        const res = [];
        for (let i = 0; i < asts.length; ++i) {
            res[i] = asts[i].visit(this);
        }
        return res;
    }
    visitChain(ast, context) {
        return new Chain(ast.span, ast.sourceSpan, this.visitAll(ast.expressions));
    }
    visitQuote(ast, context) {
        return new Quote(ast.span, ast.sourceSpan, ast.prefix, ast.uninterpretedExpression, ast.location);
    }
}
// A transformer that only creates new nodes if the transformer makes a change or
// a change is made a child node.
export class AstMemoryEfficientTransformer {
    visitImplicitReceiver(ast, context) {
        return ast;
    }
    visitInterpolation(ast, context) {
        const expressions = this.visitAll(ast.expressions);
        if (expressions !== ast.expressions)
            return new Interpolation(ast.span, ast.sourceSpan, ast.strings, expressions);
        return ast;
    }
    visitLiteralPrimitive(ast, context) {
        return ast;
    }
    visitPropertyRead(ast, context) {
        const receiver = ast.receiver.visit(this);
        if (receiver !== ast.receiver) {
            return new PropertyRead(ast.span, ast.sourceSpan, ast.nameSpan, receiver, ast.name);
        }
        return ast;
    }
    visitPropertyWrite(ast, context) {
        const receiver = ast.receiver.visit(this);
        const value = ast.value.visit(this);
        if (receiver !== ast.receiver || value !== ast.value) {
            return new PropertyWrite(ast.span, ast.sourceSpan, ast.nameSpan, receiver, ast.name, value);
        }
        return ast;
    }
    visitSafePropertyRead(ast, context) {
        const receiver = ast.receiver.visit(this);
        if (receiver !== ast.receiver) {
            return new SafePropertyRead(ast.span, ast.sourceSpan, ast.nameSpan, receiver, ast.name);
        }
        return ast;
    }
    visitMethodCall(ast, context) {
        const receiver = ast.receiver.visit(this);
        const args = this.visitAll(ast.args);
        if (receiver !== ast.receiver || args !== ast.args) {
            return new MethodCall(ast.span, ast.sourceSpan, ast.nameSpan, receiver, ast.name, args);
        }
        return ast;
    }
    visitSafeMethodCall(ast, context) {
        const receiver = ast.receiver.visit(this);
        const args = this.visitAll(ast.args);
        if (receiver !== ast.receiver || args !== ast.args) {
            return new SafeMethodCall(ast.span, ast.sourceSpan, ast.nameSpan, receiver, ast.name, args);
        }
        return ast;
    }
    visitFunctionCall(ast, context) {
        const target = ast.target && ast.target.visit(this);
        const args = this.visitAll(ast.args);
        if (target !== ast.target || args !== ast.args) {
            return new FunctionCall(ast.span, ast.sourceSpan, target, args);
        }
        return ast;
    }
    visitLiteralArray(ast, context) {
        const expressions = this.visitAll(ast.expressions);
        if (expressions !== ast.expressions) {
            return new LiteralArray(ast.span, ast.sourceSpan, expressions);
        }
        return ast;
    }
    visitLiteralMap(ast, context) {
        const values = this.visitAll(ast.values);
        if (values !== ast.values) {
            return new LiteralMap(ast.span, ast.sourceSpan, ast.keys, values);
        }
        return ast;
    }
    visitBinary(ast, context) {
        const left = ast.left.visit(this);
        const right = ast.right.visit(this);
        if (left !== ast.left || right !== ast.right) {
            return new Binary(ast.span, ast.sourceSpan, ast.operation, left, right);
        }
        return ast;
    }
    visitPrefixNot(ast, context) {
        const expression = ast.expression.visit(this);
        if (expression !== ast.expression) {
            return new PrefixNot(ast.span, ast.sourceSpan, expression);
        }
        return ast;
    }
    visitNonNullAssert(ast, context) {
        const expression = ast.expression.visit(this);
        if (expression !== ast.expression) {
            return new NonNullAssert(ast.span, ast.sourceSpan, expression);
        }
        return ast;
    }
    visitConditional(ast, context) {
        const condition = ast.condition.visit(this);
        const trueExp = ast.trueExp.visit(this);
        const falseExp = ast.falseExp.visit(this);
        if (condition !== ast.condition || trueExp !== ast.trueExp || falseExp !== ast.falseExp) {
            return new Conditional(ast.span, ast.sourceSpan, condition, trueExp, falseExp);
        }
        return ast;
    }
    visitPipe(ast, context) {
        const exp = ast.exp.visit(this);
        const args = this.visitAll(ast.args);
        if (exp !== ast.exp || args !== ast.args) {
            return new BindingPipe(ast.span, ast.sourceSpan, exp, ast.name, args, ast.nameSpan);
        }
        return ast;
    }
    visitKeyedRead(ast, context) {
        const obj = ast.obj.visit(this);
        const key = ast.key.visit(this);
        if (obj !== ast.obj || key !== ast.key) {
            return new KeyedRead(ast.span, ast.sourceSpan, obj, key);
        }
        return ast;
    }
    visitKeyedWrite(ast, context) {
        const obj = ast.obj.visit(this);
        const key = ast.key.visit(this);
        const value = ast.value.visit(this);
        if (obj !== ast.obj || key !== ast.key || value !== ast.value) {
            return new KeyedWrite(ast.span, ast.sourceSpan, obj, key, value);
        }
        return ast;
    }
    visitAll(asts) {
        const res = [];
        let modified = false;
        for (let i = 0; i < asts.length; ++i) {
            const original = asts[i];
            const value = original.visit(this);
            res[i] = value;
            modified = modified || value !== original;
        }
        return modified ? res : asts;
    }
    visitChain(ast, context) {
        const expressions = this.visitAll(ast.expressions);
        if (expressions !== ast.expressions) {
            return new Chain(ast.span, ast.sourceSpan, expressions);
        }
        return ast;
    }
    visitQuote(ast, context) {
        return ast;
    }
}
// Bindings
export class ParsedProperty {
    constructor(name, expression, type, sourceSpan, valueSpan) {
        this.name = name;
        this.expression = expression;
        this.type = type;
        this.sourceSpan = sourceSpan;
        this.valueSpan = valueSpan;
        this.isLiteral = this.type === ParsedPropertyType.LITERAL_ATTR;
        this.isAnimation = this.type === ParsedPropertyType.ANIMATION;
    }
}
export var ParsedPropertyType;
(function (ParsedPropertyType) {
    ParsedPropertyType[ParsedPropertyType["DEFAULT"] = 0] = "DEFAULT";
    ParsedPropertyType[ParsedPropertyType["LITERAL_ATTR"] = 1] = "LITERAL_ATTR";
    ParsedPropertyType[ParsedPropertyType["ANIMATION"] = 2] = "ANIMATION";
})(ParsedPropertyType || (ParsedPropertyType = {}));
export class ParsedEvent {
    // Regular events have a target
    // Animation events have a phase
    constructor(name, targetOrPhase, type, handler, sourceSpan, handlerSpan) {
        this.name = name;
        this.targetOrPhase = targetOrPhase;
        this.type = type;
        this.handler = handler;
        this.sourceSpan = sourceSpan;
        this.handlerSpan = handlerSpan;
    }
}
/**
 * ParsedVariable represents a variable declaration in a microsyntax expression.
 */
export class ParsedVariable {
    constructor(name, value, sourceSpan, keySpan, valueSpan) {
        this.name = name;
        this.value = value;
        this.sourceSpan = sourceSpan;
        this.keySpan = keySpan;
        this.valueSpan = valueSpan;
    }
}
export class BoundElementProperty {
    constructor(name, type, securityContext, value, unit, sourceSpan, valueSpan) {
        this.name = name;
        this.type = type;
        this.securityContext = securityContext;
        this.value = value;
        this.unit = unit;
        this.sourceSpan = sourceSpan;
        this.valueSpan = valueSpan;
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXN0LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvc3JjL2V4cHJlc3Npb25fcGFyc2VyL2FzdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFLSCxNQUFNLE9BQU8sV0FBVztJQUV0QixZQUNJLE9BQWUsRUFBUyxLQUFhLEVBQVMsV0FBbUIsRUFBUyxXQUFpQjtRQUFuRSxVQUFLLEdBQUwsS0FBSyxDQUFRO1FBQVMsZ0JBQVcsR0FBWCxXQUFXLENBQVE7UUFBUyxnQkFBVyxHQUFYLFdBQVcsQ0FBTTtRQUM3RixJQUFJLENBQUMsT0FBTyxHQUFHLGlCQUFpQixPQUFPLElBQUksV0FBVyxLQUFLLEtBQUssUUFBUSxXQUFXLEVBQUUsQ0FBQztJQUN4RixDQUFDO0NBQ0Y7QUFFRCxNQUFNLE9BQU8sU0FBUztJQUNwQixZQUFtQixLQUFhLEVBQVMsR0FBVztRQUFqQyxVQUFLLEdBQUwsS0FBSyxDQUFRO1FBQVMsUUFBRyxHQUFILEdBQUcsQ0FBUTtJQUFHLENBQUM7SUFDeEQsVUFBVSxDQUFDLGNBQXNCO1FBQy9CLE9BQU8sSUFBSSxrQkFBa0IsQ0FBQyxjQUFjLEdBQUcsSUFBSSxDQUFDLEtBQUssRUFBRSxjQUFjLEdBQUcsSUFBSSxDQUFDLEdBQUcsQ0FBQyxDQUFDO0lBQ3hGLENBQUM7Q0FDRjtBQUVELE1BQU0sT0FBTyxHQUFHO0lBQ2QsWUFDVyxJQUFlO0lBQ3RCOztPQUVHO0lBQ0ksVUFBOEI7UUFKOUIsU0FBSSxHQUFKLElBQUksQ0FBVztRQUlmLGVBQVUsR0FBVixVQUFVLENBQW9CO0lBQUcsQ0FBQztJQUM3QyxLQUFLLENBQUMsT0FBbUIsRUFBRSxVQUFlLElBQUk7UUFDNUMsT0FBTyxJQUFJLENBQUM7SUFDZCxDQUFDO0lBQ0QsUUFBUTtRQUNOLE9BQU8sS0FBSyxDQUFDO0lBQ2YsQ0FBQztDQUNGO0FBRUQsTUFBTSxPQUFnQixXQUFZLFNB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QUY1QixTQUFJLEdBQUosSUFBSSxDQUFRO1FBQVMsa0JBQWEsR0FBYixhQUFhLENBQVE7UUFBUyxTQUFJLEdBQUosSUFBSSxDQUFpQjtRQUN4RSxZQUFPLEdBQVAsT0FBTyxDQUFlO1FBQVMsZUFBVSxHQUFWLFVBQVUsQ0FBaUI7UUFDMUQsZ0JBQVcsR0FBWCxXQUFXLENBQWlCO0lBQUcsQ0FBQztDQUM1QztBQUVEOztHQUVHO0FBQ0gsTUFBTSxPQUFPLGNBQWM7SUFDekIsWUFDb0IsSUFBWSxFQUFrQixLQUFhLEVBQzNDLFVBQTJCLEVBQWtCLE9BQXdCLEVBQ3JFLFNBQTJCO1FBRjNCLFNBQUksR0FBSixJQUFJLENBQVE7UUFBa0IsVUFBSyxHQUFMLEtBQUssQ0FBUTtRQUMzQyxlQUFVLEdBQVYsVUFBVSxDQUFpQjtRQUFrQixZQUFPLEdBQVAsT0FBTyxDQUFpQjtRQUNyRSxjQUFTLEdBQVQsU0FBUyxDQUFrQjtJQUFHLENBQUM7Q0FDcEQ7QUFlRCxNQUFNLE9BQU8sb0JBQW9CO0lBQy9CLFlBQ1csSUFBWSxFQUFTLElBQWlCLEVBQVMsZUFBZ0MsRUFDL0UsS0FBb0IsRUFBUyxJQUFpQixFQUFTLFVBQTJCLEVBQ2xGLFNBQTJCO1FBRjNCLFNBQUksR0FBSixJQUFJLENBQVE7UUFBUyxTQUFJLEdBQUosSUFBSSxDQUFhO1FBQVMsb0JBQWUsR0FBZixlQUFlLENBQWlCO1FBQy9FLFVBQUssR0FBTCxLQUFLLENBQWU7UUFBUyxTQUFJLEdBQUosSUFBSSxDQUFhO1FBQVMsZUFBVSxHQUFWLFVBQVUsQ0FBaUI7UUFDbEYsY0FBUyxHQUFULFNBQVMsQ0FBa0I7SUFBRyxDQUFDO0NBQzNDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7U2VjdXJpdHlDb250ZXh0fSBmcm9tICcuLi9jb3JlJztcbmltcG9ydCB7UGFyc2VTb3VyY2VTcGFufSBmcm9tICcuLi9wYXJzZV91dGlsJztcblxuZXhwb3J0IGNsYXNzIFBhcnNlckVycm9yIHtcbiAgcHVibGljIG1lc3NhZ2U6IHN0cmluZztcbiAgY29uc3RydWN0b3IoXG4gICAgICBtZXNzYWdlOiBzdHJpbmcsIHB1YmxpYyBpbnB1dDogc3RyaW5nLCBwdWJsaWMgZXJyTG9jYXRpb246IHN0cmluZywgcHVibGljIGN0eExvY2F0aW9uPzogYW55KSB7XG4gICAgdGhpcy5tZXNzYWdlID0gYFBhcnNlciBFcnJvcjogJHttZXNzYWdlfSAke2VyckxvY2F0aW9ufSBbJHtpbnB1dH1dIGluICR7Y3R4TG9jYXRpb259YDtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgUGFyc2VTcGFuIHtcbiAgY29uc3RydWN0b3IocHVibGljIHN0YXJ0OiBudW1iZXIsIHB1YmxpYyBlbmQ6IG51bWJlcikge31cbiAgdG9BYnNvbHV0ZShhYnNvbHV0ZU9mZnNldDogbnVtYmVyKTogQWJzb2x1dGVTb3VyY2VTcGFuIHtcbiAgICByZXR1cm4gbmV3IEFic29sdXRlU291cmNlU3BhbihhYnNvbHV0ZU9mZnNldCArIHRoaXMuc3RhcnQsIGFic29sdXRlT2Zmc2V0ICsgdGhpcy5lbmQpO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBBU1Qge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBzcGFuOiBQYXJzZVNwYW4sXG4gICAgICAvKipcbiAgICAgICAqIEFic29sdXRlIGxvY2F0aW9uIG9mIHRoZSBleHByZXNzaW9uIEFTVCBpbiBhIHNvdXJjZSBjb2RlIGZpbGUuXG4gICAgICAgKi9cbiAgICAgIHB1YmxpYyBzb3VyY2VTcGFuOiBBYnNvbHV0ZVNvdXJjZVNwYW4pIHt9XG4gIHZpc2l0KHZpc2l0b3I6IEFzdFZpc2l0b3IsIGNvbnRleHQ6IGFueSA9IG51bGwpOiBhbnkge1xuICAgIHJldHVybiBudWxsO1xuICB9XG4gIHRvU3RyaW5nKCk6IHN0cmluZyB7XG4gICAgcmV0dXJuICdBU1QnO1xuICB9XG59XG5cbmV4cG9ydCBhYnN0cmFjdCBjbGFzcyBBU1RXaXRoTmFtZSBleHRlbmRzIEFTVCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgc3BhbjogUGFyc2VTcGFuLCBzb3VyY2VTcGFuOiBBYnNvbHV0ZVNvdXJjZVNwYW4sIHB1YmxpYyBuYW1lU3BhbjogQWJzb2x1dGVTb3VyY2VTcGFuKSB7XG4gICAgc3VwZXIoc3Bhbiwgc291cmNlU3Bhbik7XG4gIH1cbn1cblxuLyoqXG4gKiBSZXByZXNlbnRzIGEgcXVvdGVkIGV4cHJlc3Npb24gb2YgdGhlIGZvcm06XG4gKlxuICogcXVvdGUgPSBwcmVmaXggYDpgIHVuaW50ZXJwcmV0ZWRFeHByZXNzaW9uXG4gKiBwcmVmaXggPSBpZGVudGlmaWVyXG4gKiB1bmludGVycHJldGVkRXhwcmVzc2lvbiA9IGFyYml0cmFyeSBzdHJpbmdcbiAqXG4gKiBBIHF1b3RlZCBleHByZXNzaW9uIGlzIG1lYW50IHRvIGJlIHByZS1wcm9jZXNzZWQgYnkgYW4gQVNUIHRyYW5zZm9ybWVyIHRoYXRcbiAqIGNvbnZlcnRzIGl0IGludG8gYW5vdGhlciBBU1QgdGhhdCBubyBsb25nZXIgY29udGFpbnMgcXVvdGVkIGV4cHJlc3Npb25zLlxuICogSXQgaXMgbWVhbnQgdG8gYWxsb3cgdGhpcmQtcGFydHkgZGV2ZWxvcGVycyB0byBleHRlbmQgQW5ndWxhciB0ZW1wbGF0ZVxuICogZXhwcmVzc2lvbiBsYW5ndWFnZS4gVGhlIGB1bmludGVycHJldGVkRXhwcmVzc2lvbmAgcGFydCBvZiB0aGUgcXVvdGUgaXNcbiAqIHRoZXJlZm9yZSBub3QgaW50ZXJwcmV0ZWQgYnkgdGhlIEFuZ3VsYXIncyBvd24gZXhwcmVzc2lvbiBwYXJzZXIuXG4gKi9cbmV4cG9ydCBjbGFzcyBRdW90ZSBleHRlbmRzIEFTVCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgc3BhbjogUGFyc2VTcGFuLCBzb3VyY2VTcGFuOiBBYnNvbHV0ZVNvdXJjZVNwYW4sIHB1YmxpYyBwcmVmaXg6IHN0cmluZyxcbiAgICAgIHB1YmxpYyB1bmludGVycHJldGVkRXhwcmVzc2lvbjogc3RyaW5nLCBwdWJsaWMgbG9jYXRpb246IGFueSkge1xuICAgIHN1cGVyKHNwYW4sIHNvdXJjZVNwYW4pO1xuICB9XG4gIHZpc2l0KHZpc2l0b3I6IEFzdFZpc2l0b3IsIGNvbnRleHQ6IGFueSA9IG51bGwpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0UXVvdGUodGhpcywgY29udGV4dCk7XG4gIH1cbiAgdG9TdHJpbmcoKTogc3RyaW5nIHtcbiAgICByZXR1cm4gJ1F1b3RlJztcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgRW1wdHlFeHByIGV4dGVuZHMgQVNUIHtcbiAgdmlzaXQodmlzaXRvcjogQXN0VmlzaXRvciwgY29udGV4dDogYW55ID0gbnVsbCkge1xuICAgIC8vIGRvIG5vdGhpbmdcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgSW1wbGljaXRSZWNlaXZlciBleHRlbmRzIEFTVCB7XG4gIHZpc2l0KHZpc2l0b3I6IEFzdFZpc2l0b3IsIGNvbnRleHQ6IGFueSA9IG51bGwpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0SW1wbGljaXRSZWNlaXZlcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG4vKipcbiAqIE11bHRpcGxlIGV4cHJlc3Npb25zIHNlcGFyYXRlZCBieSBhIHNlbWljb2xvbi5cbiAqL1xuZXhwb3J0IGNsYXNzIENoYWluIGV4dGVuZHMgQVNUIHtcbiAgY29uc3RydWN0b3Ioc3BhbjogUGFyc2VTcGFuLCBzb3VyY2VTcGFuOiBBYnNvbHV0ZVNvdXJjZVNwYW4sIHB1YmxpYyBleHByZXNzaW9uczogYW55W10pIHtcbiAgICBzdXBlcihzcGFuLCBzb3VyY2VTcGFuKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBBc3RWaXNpdG9yLCBjb250ZXh0OiBhbnkgPSBudWxsKTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdENoYWluKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBDb25kaXRpb25hbCBleHRlbmRzIEFTVCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgc3BhbjogUGFyc2VTcGFuLCBzb3VyY2VTcGFuOiBBYnNvbHV0ZVNvdXJjZVNwYW4sIHB1YmxpYyBjb25kaXRpb246IEFTVCwgcHVibGljIHRydWVFeHA6IEFTVCxcbiAgICAgIHB1YmxpYyBmYWxzZUV4cDogQVNUKSB7XG4gICAgc3VwZXIoc3Bhbiwgc291cmNlU3Bhbik7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogQXN0VmlzaXRvciwgY29udGV4dDogYW55ID0gbnVsbCk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRDb25kaXRpb25hbCh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgUHJvcGVydHlSZWFkIGV4dGVuZHMgQVNUV2l0aE5hbWUge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHNwYW46IFBhcnNlU3Bhbiwgc291cmNlU3BhbjogQWJzb2x1dGVTb3VyY2VTcGFuLCBuYW1lU3BhbjogQWJzb2x1dGVTb3VyY2VTcGFuLFxuICAgICAgcHVibGljIHJlY2VpdmVyOiBBU1QsIHB1YmxpYyBuYW1lOiBzdHJpbmcpIHtcbiAgICBzdXBlcihzcGFuLCBzb3VyY2VTcGFuLCBuYW1lU3Bhbik7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogQXN0VmlzaXRvciwgY29udGV4dDogYW55ID0gbnVsbCk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRQcm9wZXJ0eVJlYWQodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIFByb3BlcnR5V3JpdGUgZXh0ZW5kcyBBU1RXaXRoTmFtZSB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgc3BhbjogUGFyc2VTcGFuLCBzb3VyY2VTcGFuOiBBYnNvbHV0ZVNvdXJjZVNwYW4sIG5hbWVTcGFuOiBBYnNvbHV0ZVNvdXJjZVNwYW4sXG4gICAgICBwdWJsaWMgcmVjZWl2ZXI6IEFTVCwgcHVibGljIG5hbWU6IHN0cmluZywgcHVibGljIHZhbHVlOiBBU1QpIHtcbiAgICBzdXBlcihzcGFuLCBzb3VyY2VTcGFuLCBuYW1lU3Bhbik7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogQXN0VmlzaXRvciwgY29udGV4dDogYW55ID0gbnVsbCk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRQcm9wZXJ0eVdyaXRlKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBTYWZlUHJvcGVydHlSZWFkIGV4dGVuZHMgQVNUV2l0aE5hbWUge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHNwYW46IFBhcnNlU3Bhbiwgc291cmNlU3BhbjogQWJzb2x1dGVTb3VyY2VTcGFuLCBuYW1lU3BhbjogQWJzb2x1dGVTb3VyY2VTcGFuLFxuICAgICAgcHVibGljIHJlY2VpdmVyOiBBU1QsIHB1YmxpYyBuYW1lOiBzdHJpbmcpIHtcbiAgICBzdXBlcihzcGFuLCBzb3VyY2VTcGFuLCBuYW1lU3Bhbik7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogQXN0VmlzaXRvciwgY29udGV4dDogYW55ID0gbnVsbCk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRTYWZlUHJvcGVydHlSZWFkKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBLZXllZFJlYWQgZXh0ZW5kcyBBU1Qge1xuICBjb25zdHJ1Y3RvcihzcGFuOiBQYXJzZVNwYW4sIHNvdXJjZVNwYW46IEFic29sdXRlU291cmNlU3BhbiwgcHVibGljIG9iajogQVNULCBwdWJsaWMga2V5OiBBU1QpIHtcbiAgICBzdXBlcihzcGFuLCBzb3VyY2VTcGFuKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBBc3RWaXNpdG9yLCBjb250ZXh0OiBhbnkgPSBudWxsKTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdEtleWVkUmVhZCh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgS2V5ZWRXcml0ZSBleHRlbmRzIEFTVCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgc3BhbjogUGFyc2VTcGFuLCBzb3VyY2VTcGFuOiBBYnNvbHV0ZVNvdXJjZVNwYW4sIHB1YmxpYyBvYmo6IEFTVCwgcHVibGljIGtleTogQVNULFxuICAgICAgcHVibGljIHZhbHVlOiBBU1QpIHtcbiAgICBzdXBlcihzcGFuLCBzb3VyY2VTcGFuKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBBc3RWaXNpdG9yLCBjb250ZXh0OiBhbnkgPSBudWxsKTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdEtleWVkV3JpdGUodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIEJpbmRpbmdQaXBlIGV4dGVuZHMgQVNUV2l0aE5hbWUge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHNwYW46IFBhcnNlU3Bhbiwgc291cmNlU3BhbjogQWJzb2x1dGVTb3VyY2VTcGFuLCBwdWJsaWMgZXhwOiBBU1QsIHB1YmxpYyBuYW1lOiBzdHJpbmcsXG4gICAgICBwdWJsaWMgYXJnczogYW55W10sIG5hbWVTcGFuOiBBYnNvbHV0ZVNvdXJjZVNwYW4pIHtcbiAgICBzdXBlcihzcGFuLCBzb3VyY2VTcGFuLCBuYW1lU3Bhbik7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogQXN0VmlzaXRvciwgY29udGV4dDogYW55ID0gbnVsbCk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRQaXBlKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBMaXRlcmFsUHJpbWl0aXZlIGV4dGVuZHMgQVNUIHtcbiAgY29uc3RydWN0b3Ioc3BhbjogUGFyc2VTcGFuLCBzb3VyY2VTcGFuOiBBYnNvbHV0ZVNvdXJjZVNwYW4sIHB1YmxpYyB2YWx1ZTogYW55KSB7XG4gICAgc3VwZXIoc3Bhbiwgc291cmNlU3Bhbik7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogQXN0VmlzaXRvciwgY29udGV4dDogYW55ID0gbnVsbCk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRMaXRlcmFsUHJpbWl0aXZlKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBMaXRlcmFsQXJyYXkgZXh0ZW5kcyBBU1Qge1xuICBjb25zdHJ1Y3RvcihzcGFuOiBQYXJzZVNwYW4sIHNvdXJjZVNwYW46IEFic29sdXRlU291cmNlU3BhbiwgcHVibGljIGV4cHJlc3Npb25zOiBhbnlbXSkge1xuICAgIHN1cGVyKHNwYW4sIHNvdXJjZVNwYW4pO1xuICB9XG4gIHZpc2l0KHZpc2l0b3I6IEFzdFZpc2l0b3IsIGNvbnRleHQ6IGFueSA9IG51bGwpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0TGl0ZXJhbEFycmF5KHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCB0eXBlIExpdGVyYWxNYXBLZXkgPSB7XG4gIGtleTogc3RyaW5nOyBxdW90ZWQ6IGJvb2xlYW47XG59O1xuXG5leHBvcnQgY2xhc3MgTGl0ZXJhbE1hcCBleHRlbmRzIEFTVCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgc3BhbjogUGFyc2VTcGFuLCBzb3VyY2VTcGFuOiBBYnNvbHV0ZVNvdXJjZVNwYW4sIHB1YmxpYyBrZXlzOiBMaXRlcmFsTWFwS2V5W10sXG4gICAgICBwdWJsaWMgdmFsdWVzOiBhbnlbXSkge1xuICAgIHN1cGVyKHNwYW4sIHNvdXJjZVNwYW4pO1xuICB9XG4gIHZpc2l0KHZpc2l0b3I6IEFzdFZpc2l0b3IsIGNvbnRleHQ6IGFueSA9IG51bGwpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0TGl0ZXJhbE1hcCh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgSW50ZXJwb2xhdGlvbiBleHRlbmRzIEFTVCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgc3BhbjogUGFyc2VTcGFuLCBzb3VyY2VTcGFuOiBBYnNvbHV0ZVNvdXJjZVNwYW4sIHB1YmxpYyBzdHJpbmdzOiBhbnlbXSxcbiAgICAgIHB1YmxpYyBleHByZXNzaW9uczogYW55W10pIHtcbiAgICBzdXBlcihzcGFuLCBzb3VyY2VTcGFuKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBBc3RWaXNpdG9yLCBjb250ZXh0OiBhbnkgPSBudWxsKTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdEludGVycG9sYXRpb24odGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIEJpbmFyeSBleHRlbmRzIEFTVCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgc3BhbjogUGFyc2VTcGFuLCBzb3VyY2VTcGFuOiBBYnNvbHV0ZVNvdXJjZVNwYW4sIHB1YmxpYyBvcGVyYXRpb246IHN0cmluZywgcHVibGljIGxlZnQ6IEFTVCxcbiAgICAgIHB1YmxpYyByaWdodDogQVNUKSB7XG4gICAgc3VwZXIoc3Bhbiwgc291cmNlU3Bhbik7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogQXN0VmlzaXRvciwgY29udGV4dDogYW55ID0gbnVsbCk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRCaW5hcnkodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIFByZWZpeE5vdCBleHRlbmRzIEFTVCB7XG4gIGNvbnN0cnVjdG9yKHNwYW46IFBhcnNlU3Bhbiwgc291cmNlU3BhbjogQWJzb2x1dGVTb3VyY2VTcGFuLCBwdWJsaWMgZXhwcmVzc2lvbjogQVNUKSB7XG4gICAgc3VwZXIoc3Bhbiwgc291cmNlU3Bhbik7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogQXN0VmlzaXRvciwgY29udGV4dDogYW55ID0gbnVsbCk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRQcmVmaXhOb3QodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIE5vbk51bGxBc3NlcnQgZXh0ZW5kcyBBU1Qge1xuICBjb25zdHJ1Y3RvcihzcGFuOiBQYXJzZVNwYW4sIHNvdXJjZVNwYW46IEFic29sdXRlU291cmNlU3BhbiwgcHVibGljIGV4cHJlc3Npb246IEFTVCkge1xuICAgIHN1cGVyKHNwYW4sIHNvdXJjZVNwYW4pO1xuICB9XG4gIHZpc2l0KHZpc2l0b3I6IEFzdFZpc2l0b3IsIGNvbnRleHQ6IGFueSA9IG51bGwpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0Tm9uTnVsbEFzc2VydCh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgTWV0aG9kQ2FsbCBleHRlbmRzIEFTVFdpdGhOYW1lIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBzcGFuOiBQYXJzZVNwYW4sIHNvdXJjZVNwYW46IEFic29sdXRlU291cmNlU3BhbiwgbmFtZVNwYW46IEFic29sdXRlU291cmNlU3BhbixcbiAgICAgIHB1YmxpYyByZWNlaXZlcjogQVNULCBwdWJsaWMgbmFtZTogc3RyaW5nLCBwdWJsaWMgYXJnczogYW55W10pIHtcbiAgICBzdXBlcihzcGFuLCBzb3VyY2VTcGFuLCBuYW1lU3Bhbik7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogQXN0VmlzaXRvciwgY29udGV4dDogYW55ID0gbnVsbCk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRNZXRob2RDYWxsKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBTYWZlTWV0aG9kQ2FsbCBleHRlbmRzIEFTVFdpdGhOYW1lIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBzcGFuOiBQYXJzZVNwYW4sIHNvdXJjZVNwYW46IEFic29sdXRlU291cmNlU3BhbiwgbmFtZVNwYW46IEFic29sdXRlU291cmNlU3BhbixcbiAgICAgIHB1YmxpYyByZWNlaXZlcjogQVNULCBwdWJsaWMgbmFtZTogc3RyaW5nLCBwdWJsaWMgYXJnczogYW55W10pIHtcbiAgICBzdXBlcihzcGFuLCBzb3VyY2VTcGFuLCBuYW1lU3Bhbik7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogQXN0VmlzaXRvciwgY29udGV4dDogYW55ID0gbnVsbCk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRTYWZlTWV0aG9kQ2FsbCh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgRnVuY3Rpb25DYWxsIGV4dGVuZHMgQVNUIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBzcGFuOiBQYXJzZVNwYW4sIHNvdXJjZVNwYW46IEFic29sdXRlU291cmNlU3BhbiwgcHVibGljIHRhcmdldDogQVNUfG51bGwsXG4gICAgICBwdWJsaWMgYXJnczogYW55W10pIHtcbiAgICBzdXBlcihzcGFuLCBzb3VyY2VTcGFuKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBBc3RWaXNpdG9yLCBjb250ZXh0OiBhbnkgPSBudWxsKTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdEZ1bmN0aW9uQ2FsbCh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG4vKipcbiAqIFJlY29yZHMgdGhlIGFic29sdXRlIHBvc2l0aW9uIG9mIGEgdGV4dCBzcGFuIGluIGEgc291cmNlIGZpbGUsIHdoZXJlIGBzdGFydGAgYW5kIGBlbmRgIGFyZSB0aGVcbiAqIHN0YXJ0aW5nIGFuZCBlbmRpbmcgYnl0ZSBvZmZzZXRzLCByZXNwZWN0aXZlbHksIG9mIHRoZSB0ZXh0IHNwYW4gaW4gYSBzb3VyY2UgZmlsZS5cbiAqL1xuZXhwb3J0IGNsYXNzIEFic29sdXRlU291cmNlU3BhbiB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyByZWFkb25seSBzdGFydDogbnVtYmVyLCBwdWJsaWMgcmVhZG9ubHkgZW5kOiBudW1iZXIpIHt9XG59XG5cbmV4cG9ydCBjbGFzcyBBU1RXaXRoU291cmNlIGV4dGVuZHMgQVNUIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgYXN0OiBBU1QsIHB1YmxpYyBzb3VyY2U6IHN0cmluZ3xudWxsLCBwdWJsaWMgbG9jYXRpb246IHN0cmluZywgYWJzb2x1dGVPZmZzZXQ6IG51bWJlcixcbiAgICAgIHB1YmxpYyBlcnJvcnM6IFBhcnNlckVycm9yW10pIHtcbiAgICBzdXBlcihcbiAgICAgICAgbmV3IFBhcnNlU3BhbigwLCBzb3VyY2UgPT09IG51bGwgPyAwIDogc291cmNlLmxlbmd0aCksXG4gICAgICAgIG5ldyBBYnNvbHV0ZVNvdXJjZVNwYW4oXG4gICAgICAgICAgICBhYnNvbHV0ZU9mZnNldCwgc291cmNlID09PSBudWxsID8gYWJzb2x1dGVPZmZzZXQgOiBhYnNvbHV0ZU9mZnNldCArIHNvdXJjZS5sZW5ndGgpKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBBc3RWaXNpdG9yLCBjb250ZXh0OiBhbnkgPSBudWxsKTogYW55IHtcbiAgICBpZiAodmlzaXRvci52aXNpdEFTVFdpdGhTb3VyY2UpIHtcbiAgICAgIHJldHVybiB2aXNpdG9yLnZpc2l0QVNUV2l0aFNvdXJjZSh0aGlzLCBjb250ZXh0KTtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMuYXN0LnZpc2l0KHZpc2l0b3IsIGNvbnRleHQpO1xuICB9XG4gIHRvU3RyaW5nKCk6IHN0cmluZyB7XG4gICAgcmV0dXJuIGAke3RoaXMuc291cmNlfSBpbiAke3RoaXMubG9jYXRpb259YDtcbiAgfVxufVxuXG4vKipcbiAqIFRlbXBsYXRlQmluZGluZyByZWZlcnMgdG8gYSBwYXJ0aWN1bGFyIGtleS12YWx1ZSBwYWlyIGluIGEgbWljcm9zeW50YXhcbiAqIGV4cHJlc3Npb24uIEEgZmV3IGV4YW1wbGVzIGFyZTpcbiAqXG4gKiAgIHwtLS0tLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tfC0tLS0tLS0tLS0tLS0tfFxuICogICB8ICAgICBleHByZXNzaW9uICAgICAgfCAgICAga2V5ICAgICAgfCAgdmFsdWUgIHwgYmluZGluZyB0eXBlIHxcbiAqICAgfC0tLS0tLS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS18LS0tLS0tLS0tLS0tLS18XG4gKiAgIHwgMS4gbGV0IGl0ZW0gICAgICAgICB8ICAgIGl0ZW0gICAgICB8ICBudWxsICAgfCAgIHZhcmlhYmxlICAgfFxuICogICB8IDIuIG9mIGl0ZW1zICAgICAgICAgfCAgIG5nRm9yT2YgICAgfCAgaXRlbXMgIHwgIGV4cHJlc3Npb24gIHxcbiAqICAgfCAzLiBsZXQgeCA9IHkgICAgICAgIHwgICAgICB4ICAgICAgIHwgICAgeSAgICB8ICAgdmFyaWFibGUgICB8XG4gKiAgIHwgNC4gaW5kZXggYXMgaSAgICAgICB8ICAgICAgaSAgICAgICB8ICBpbmRleCAgfCAgIHZhcmlhYmxlICAgfFxuICogICB8IDUuIHRyYWNrQnk6IGZ1bmMgICAgfCBuZ0ZvclRyYWNrQnkgfCAgIGZ1bmMgIHwgIGV4cHJlc3Npb24gIHxcbiAqICAgfCA2LiAqbmdJZj1cImNvbmRcIiAgICAgfCAgICAgbmdJZiAgICAgfCAgIGNvbmQgIHwgIGV4cHJlc3Npb24gIHxcbiAqICAgfC0tLS0tLS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS18LS0tLS0tLS0tLS0tLS18XG4gKlxuICogKDYpIGlzIGEgbm90YWJsZSBleGNlcHRpb24gYmVjYXVzZSBpdCBpcyBhIGJpbmRpbmcgZnJvbSB0aGUgdGVtcGxhdGUga2V5IGluXG4gKiB0aGUgTEhTIG9mIGEgSFRNTCBhdHRyaWJ1dGUgdG8gdGhlIGV4cHJlc3Npb24gaW4gdGhlIFJIUy4gQWxsIG90aGVyIGJpbmRpbmdzXG4gKiBpbiB0aGUgZXhhbXBsZSBhYm92ZSBhcmUgZGVyaXZlZCBzb2xlbHkgZnJvbSB0aGUgUkhTLlxuICovXG5leHBvcnQgdHlwZSBUZW1wbGF0ZUJpbmRpbmcgPSBWYXJpYWJsZUJpbmRpbmd8RXhwcmVzc2lvbkJpbmRpbmc7XG5cbmV4cG9ydCBjbGFzcyBWYXJpYWJsZUJpbmRpbmcge1xuICAvKipcbiAgICogQHBhcmFtIHNvdXJjZVNwYW4gZW50aXJlIHNwYW4gb2YgdGhlIGJpbmRpbmcuXG4gICAqIEBwYXJhbSBrZXkgbmFtZSBvZiB0aGUgTEhTIGFsb25nIHdpdGggaXRzIHNwYW4uXG4gICAqIEBwYXJhbSB2YWx1ZSBvcHRpb25hbCB2YWx1ZSBmb3IgdGhlIFJIUyBhbG9uZyB3aXRoIGl0cyBzcGFuLlxuICAgKi9cbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgcmVhZG9ubHkgc291cmNlU3BhbjogQWJzb2x1dGVTb3VyY2VTcGFuLFxuICAgICAgcHVibGljIHJlYWRvbmx5IGtleTogVGVtcGxhdGVCaW5kaW5nSWRlbnRpZmllcixcbiAgICAgIHB1YmxpYyByZWFkb25seSB2YWx1ZTogVGVtcGxhdGVCaW5kaW5nSWRlbnRpZmllcnxudWxsKSB7fVxufVxuXG5leHBvcnQgY2xhc3MgRXhwcmVzc2lvbkJpbmRpbmcge1xuICAvKipcbiAgICogQHBhcmFtIHNvdXJjZVNwYW4gZW50aXJlIHNwYW4gb2YgdGhlIGJpbmRpbmcuXG4gICAqIEBwYXJhbSBrZXkgYmluZGluZyBuYW1lLCBsaWtlIG5nRm9yT2YsIG5nRm9yVHJhY2tCeSwgbmdJZiwgYWxvbmcgd2l0aCBpdHNcbiAgICogc3Bhbi4gTm90ZSB0aGF0IHRoZSBsZW5ndGggb2YgdGhlIHNwYW4gbWF5IG5vdCBiZSB0aGUgc2FtZSBhc1xuICAgKiBga2V5LnNvdXJjZS5sZW5ndGhgLiBGb3IgZXhhbXBsZSxcbiAgICogMS4ga2V5LnNvdXJjZSA9IG5nRm9yLCBrZXkuc3BhbiBpcyBmb3IgXCJuZ0ZvclwiXG4gICAqIDIuIGtleS5zb3VyY2UgPSBuZ0Zvck9mLCBrZXkuc3BhbiBpcyBmb3IgXCJvZlwiXG4gICAqIDMuIGtleS5zb3VyY2UgPSBuZ0ZvclRyYWNrQnksIGtleS5zcGFuIGlzIGZvciBcInRyYWNrQnlcIlxuICAgKiBAcGFyYW0gdmFsdWUgb3B0aW9uYWwgZXhwcmVzc2lvbiBmb3IgdGhlIFJIUy5cbiAgICovXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIHJlYWRvbmx5IHNvdXJjZVNwYW46IEFic29sdXRlU291cmNlU3BhbixcbiAgICAgIHB1YmxpYyByZWFkb25seSBrZXk6IFRlbXBsYXRlQmluZGluZ0lkZW50aWZpZXIsIHB1YmxpYyByZWFkb25seSB2YWx1ZTogQVNUV2l0aFNvdXJjZXxudWxsKSB7fVxufVxuXG5leHBvcnQgaW50ZXJmYWNlIFRlbXBsYXRlQmluZGluZ0lkZW50aWZpZXIge1xuICBzb3VyY2U6IHN0cmluZztcbiAgc3BhbjogQWJzb2x1dGVTb3VyY2VTcGFuO1xufVxuXG5leHBvcnQgaW50ZXJmYWNlIEFzdFZpc2l0b3Ige1xuICB2aXNpdEJpbmFyeShhc3Q6IEJpbmFyeSwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdENoYWluKGFzdDogQ2hhaW4sIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRDb25kaXRpb25hbChhc3Q6IENvbmRpdGlvbmFsLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0RnVuY3Rpb25DYWxsKGFzdDogRnVuY3Rpb25DYWxsLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0SW1wbGljaXRSZWNlaXZlcihhc3Q6IEltcGxpY2l0UmVjZWl2ZXIsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRJbnRlcnBvbGF0aW9uKGFzdDogSW50ZXJwb2xhdGlvbiwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdEtleWVkUmVhZChhc3Q6IEtleWVkUmVhZCwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdEtleWVkV3JpdGUoYXN0OiBLZXllZFdyaXRlLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0TGl0ZXJhbEFycmF5KGFzdDogTGl0ZXJhbEFycmF5LCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0TGl0ZXJhbE1hcChhc3Q6IExpdGVyYWxNYXAsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRMaXRlcmFsUHJpbWl0aXZlKGFzdDogTGl0ZXJhbFByaW1pdGl2ZSwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdE1ldGhvZENhbGwoYXN0OiBNZXRob2RDYWxsLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0UGlwZShhc3Q6IEJpbmRpbmdQaXBlLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0UHJlZml4Tm90KGFzdDogUHJlZml4Tm90LCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0Tm9uTnVsbEFzc2VydChhc3Q6IE5vbk51bGxBc3NlcnQsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRQcm9wZXJ0eVJlYWQoYXN0OiBQcm9wZXJ0eVJlYWQsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRQcm9wZXJ0eVdyaXRlKGFzdDogUHJvcGVydHlXcml0ZSwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdFF1b3RlKGFzdDogUXVvdGUsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRTYWZlTWV0aG9kQ2FsbChhc3Q6IFNhZmVNZXRob2RDYWxsLCBjb250ZXh0OiBhbnkpOiBhbnk7XG4gIHZpc2l0U2FmZVByb3BlcnR5UmVhZChhc3Q6IFNhZmVQcm9wZXJ0eVJlYWQsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRBU1RXaXRoU291cmNlPyhhc3Q6IEFTVFdpdGhTb3VyY2UsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgLyoqXG4gICAqIFRoaXMgZnVuY3Rpb24gaXMgb3B0aW9uYWxseSBkZWZpbmVkIHRvIGFsbG93IGNsYXNzZXMgdGhhdCBpbXBsZW1lbnQgdGhpc1xuICAgKiBpbnRlcmZhY2UgdG8gc2VsZWN0aXZlbHkgZGVjaWRlIGlmIHRoZSBzcGVjaWZpZWQgYGFzdGAgc2hvdWxkIGJlIHZpc2l0ZWQuXG4gICAqIEBwYXJhbSBhc3Qgbm9kZSB0byB2aXNpdFxuICAgKiBAcGFyYW0gY29udGV4dCBjb250ZXh0IHRoYXQgZ2V0cyBwYXNzZWQgdG8gdGhlIG5vZGUgYW5kIGFsbCBpdHMgY2hpbGRyZW5cbiAgICovXG4gIHZpc2l0Pyhhc3Q6IEFTVCwgY29udGV4dD86IGFueSk6IGFueTtcbn1cblxuZXhwb3J0IGNsYXNzIFJlY3Vyc2l2ZUFzdFZpc2l0b3IgaW1wbGVtZW50cyBBc3RWaXNpdG9yIHtcbiAgdmlzaXQoYXN0OiBBU1QsIGNvbnRleHQ/OiBhbnkpOiBhbnkge1xuICAgIC8vIFRoZSBkZWZhdWx0IGltcGxlbWVudGF0aW9uIGp1c3QgdmlzaXRzIGV2ZXJ5IG5vZGUuXG4gICAgLy8gQ2xhc3NlcyB0aGF0IGV4dGVuZCBSZWN1cnNpdmVBc3RWaXNpdG9yIHNob3VsZCBvdmVycmlkZSB0aGlzIGZ1bmN0aW9uXG4gICAgLy8gdG8gc2VsZWN0aXZlbHkgdmlzaXQgdGhlIHNwZWNpZmllZCBub2RlLlxuICAgIGFzdC52aXNpdCh0aGlzLCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdEJpbmFyeShhc3Q6IEJpbmFyeSwgY29udGV4dDogYW55KTogYW55IHtcbiAgICB0aGlzLnZpc2l0KGFzdC5sZWZ0LCBjb250ZXh0KTtcbiAgICB0aGlzLnZpc2l0KGFzdC5yaWdodCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRDaGFpbihhc3Q6IENoYWluLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHRoaXMudmlzaXRBbGwoYXN0LmV4cHJlc3Npb25zLCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdENvbmRpdGlvbmFsKGFzdDogQ29uZGl0aW9uYWwsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgdGhpcy52aXNpdChhc3QuY29uZGl0aW9uLCBjb250ZXh0KTtcbiAgICB0aGlzLnZpc2l0KGFzdC50cnVlRXhwLCBjb250ZXh0KTtcbiAgICB0aGlzLnZpc2l0KGFzdC5mYWxzZUV4cCwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRQaXBlKGFzdDogQmluZGluZ1BpcGUsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgdGhpcy52aXNpdChhc3QuZXhwLCBjb250ZXh0KTtcbiAgICB0aGlzLnZpc2l0QWxsKGFzdC5hcmdzLCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdEZ1bmN0aW9uQ2FsbChhc3Q6IEZ1bmN0aW9uQ2FsbCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICBpZiAoYXN0LnRhcmdldCkge1xuICAgICAgdGhpcy52aXNpdChhc3QudGFyZ2V0LCBjb250ZXh0KTtcbiAgICB9XG4gICAgdGhpcy52aXNpdEFsbChhc3QuYXJncywgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRJbXBsaWNpdFJlY2VpdmVyKGFzdDogSW1wbGljaXRSZWNlaXZlciwgY29udGV4dDogYW55KTogYW55IHt9XG4gIHZpc2l0SW50ZXJwb2xhdGlvbihhc3Q6IEludGVycG9sYXRpb24sIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgdGhpcy52aXNpdEFsbChhc3QuZXhwcmVzc2lvbnMsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0S2V5ZWRSZWFkKGFzdDogS2V5ZWRSZWFkLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHRoaXMudmlzaXQoYXN0Lm9iaiwgY29udGV4dCk7XG4gICAgdGhpcy52aXNpdChhc3Qua2V5LCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdEtleWVkV3JpdGUoYXN0OiBLZXllZFdyaXRlLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHRoaXMudmlzaXQoYXN0Lm9iaiwgY29udGV4dCk7XG4gICAgdGhpcy52aXNpdChhc3Qua2V5LCBjb250ZXh0KTtcbiAgICB0aGlzLnZpc2l0KGFzdC52YWx1ZSwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRMaXRlcmFsQXJyYXkoYXN0OiBMaXRlcmFsQXJyYXksIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgdGhpcy52aXNpdEFsbChhc3QuZXhwcmVzc2lvbnMsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0TGl0ZXJhbE1hcChhc3Q6IExpdGVyYWxNYXAsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgdGhpcy52aXNpdEFsbChhc3QudmFsdWVzLCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdExpdGVyYWxQcmltaXRpdmUoYXN0OiBMaXRlcmFsUHJpbWl0aXZlLCBjb250ZXh0OiBhbnkpOiBhbnkge31cbiAgdmlzaXRNZXRob2RDYWxsKGFzdDogTWV0aG9kQ2FsbCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICB0aGlzLnZpc2l0KGFzdC5yZWNlaXZlciwgY29udGV4dCk7XG4gICAgdGhpcy52aXNpdEFsbChhc3QuYXJncywgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRQcmVmaXhOb3QoYXN0OiBQcmVmaXhOb3QsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgdGhpcy52aXNpdChhc3QuZXhwcmVzc2lvbiwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXROb25OdWxsQXNzZXJ0KGFzdDogTm9uTnVsbEFzc2VydCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICB0aGlzLnZpc2l0KGFzdC5leHByZXNzaW9uLCBjb250ZXh0KTtcbiAgfVxuICB2aXNpdFByb3BlcnR5UmVhZChhc3Q6IFByb3BlcnR5UmVhZCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICB0aGlzLnZpc2l0KGFzdC5yZWNlaXZlciwgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRQcm9wZXJ0eVdyaXRlKGFzdDogUHJvcGVydHlXcml0ZSwgY29udGV4dDogYW55KTogYW55IHtcbiAgICB0aGlzLnZpc2l0KGFzdC5yZWNlaXZlciwgY29udGV4dCk7XG4gICAgdGhpcy52aXNpdChhc3QudmFsdWUsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0U2FmZVByb3BlcnR5UmVhZChhc3Q6IFNhZmVQcm9wZXJ0eVJlYWQsIGNvbnRleHQ6IGFueSk6IGFueSB7XG4gICAgdGhpcy52aXNpdChhc3QucmVjZWl2ZXIsIGNvbnRleHQpO1xuICB9XG4gIHZpc2l0U2FmZU1ldGhvZENhbGwoYXN0OiBTYWZlTWV0aG9kQ2FsbCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICB0aGlzLnZpc2l0KGFzdC5yZWNlaXZlciwgY29udGV4dCk7XG4gICAgdGhpcy52aXNpdEFsbChhc3QuYXJncywgY29udGV4dCk7XG4gIH1cbiAgdmlzaXRRdW90ZShhc3Q6IFF1b3RlLCBjb250ZXh0OiBhbnkpOiBhbnkge31cbiAgLy8gVGhpcyBpcyBub3QgcGFydCBvZiB0aGUgQXN0VmlzaXRvciBpbnRlcmZhY2UsIGp1c3QgYSBoZWxwZXIgbWV0aG9kXG4gIHZpc2l0QWxsKGFzdHM6IEFTVFtdLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIGZvciAoY29uc3QgYXN0IG9mIGFzdHMpIHtcbiAgICAgIHRoaXMudmlzaXQoYXN0LCBjb250ZXh0KTtcbiAgICB9XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIEFzdFRyYW5zZm9ybWVyIGltcGxlbWVudHMgQXN0VmlzaXRvciB7XG4gIHZpc2l0SW1wbGljaXRSZWNlaXZlcihhc3Q6IEltcGxpY2l0UmVjZWl2ZXIsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgcmV0dXJuIGFzdDtcbiAgfVxuXG4gIHZpc2l0SW50ZXJwb2xhdGlvbihhc3Q6IEludGVycG9sYXRpb24sIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgcmV0dXJuIG5ldyBJbnRlcnBvbGF0aW9uKGFzdC5zcGFuLCBhc3Quc291cmNlU3BhbiwgYXN0LnN0cmluZ3MsIHRoaXMudmlzaXRBbGwoYXN0LmV4cHJlc3Npb25zKSk7XG4gIH1cblxuICB2aXNpdExpdGVyYWxQcmltaXRpdmUoYXN0OiBMaXRlcmFsUHJpbWl0aXZlLCBjb250ZXh0OiBhbnkpOiBBU1Qge1xuICAgIHJldHVybiBuZXcgTGl0ZXJhbFByaW1pdGl2ZShhc3Quc3BhbiwgYXN0LnNvdXJjZVNwYW4sIGFzdC52YWx1ZSk7XG4gIH1cblxuICB2aXNpdFByb3BlcnR5UmVhZChhc3Q6IFByb3BlcnR5UmVhZCwgY29udGV4dDogYW55KTogQVNUIHtcbiAgICByZXR1cm4gbmV3IFByb3BlcnR5UmVhZChcbiAgICAgICAgYXN0LnNwYW4sIGFzdC5zb3VyY2VTcGFuLCBhc3QubmFtZVNwYW4sIGFzdC5yZWNlaXZlci52aXNpdCh0aGlzKSwgYXN0Lm5hbWUpO1xuICB9XG5cbiAgdmlzaXRQcm9wZXJ0eVdyaXRlKGFzdDogUHJvcGVydHlXcml0ZSwgY29udGV4dDogYW55KTogQVNUIHtcbiAgICByZXR1cm4gbmV3IFByb3BlcnR5V3JpdGUoXG4gICAgICAgIGFzdC5zcGFuLCBhc3Quc291cmNlU3BhbiwgYXN0Lm5hbWVTcGFuLCBhc3QucmVjZWl2ZXIudmlzaXQodGhpcyksIGFzdC5uYW1lLFxuICAgICAgICBhc3QudmFsdWUudmlzaXQodGhpcykpO1xuICB9XG5cbiAgdmlzaXRTYWZlUHJvcGVydHlSZWFkKGFzdDogU2FmZVByb3BlcnR5UmVhZCwgY29udGV4dDogYW55KTogQVNUIHtcbiAgICByZXR1cm4gbmV3IFNhZmVQcm9wZXJ0eVJlYWQoXG4gICAgICAgIGFzdC5zcGFuLCBhc3Quc291cmNlU3BhbiwgYXN0Lm5hbWVTcGFuLCBhc3QucmVjZWl2ZXIudmlzaXQodGhpcyksIGFzdC5uYW1lKTtcbiAgfVxuXG4gIHZpc2l0TWV0aG9kQ2FsbChhc3Q6IE1ldGhvZENhbGwsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgcmV0dXJuIG5ldyBNZXRob2RDYWxsKFxuICAgICAgICBhc3Quc3BhbiwgYXN0LnNvdXJjZVNwYW4sIGFzdC5uYW1lU3BhbiwgYXN0LnJlY2VpdmVyLnZpc2l0KHRoaXMpLCBhc3QubmFtZSxcbiAgICAgICAgdGhpcy52aXNpdEFsbChhc3QuYXJncykpO1xuICB9XG5cbiAgdmlzaXRTYWZlTWV0aG9kQ2FsbChhc3Q6IFNhZmVNZXRob2RDYWxsLCBjb250ZXh0OiBhbnkpOiBBU1Qge1xuICAgIHJldHVybiBuZXcgU2FmZU1ldGhvZENhbGwoXG4gICAgICAgIGFzdC5zcGFuLCBhc3Quc291cmNlU3BhbiwgYXN0Lm5hbWVTcGFuLCBhc3QucmVjZWl2ZXIudmlzaXQodGhpcyksIGFzdC5uYW1lLFxuICAgICAgICB0aGlzLnZpc2l0QWxsKGFzdC5hcmdzKSk7XG4gIH1cblxuICB2aXNpdEZ1bmN0aW9uQ2FsbChhc3Q6IEZ1bmN0aW9uQ2FsbCwgY29udGV4dDogYW55KTogQVNUIHtcbiAgICByZXR1cm4gbmV3IEZ1bmN0aW9uQ2FsbChcbiAgICAgICAgYXN0LnNwYW4sIGFzdC5zb3VyY2VTcGFuLCBhc3QudGFyZ2V0IS52aXNpdCh0aGlzKSwgdGhpcy52aXNpdEFsbChhc3QuYXJncykpO1xuICB9XG5cbiAgdmlzaXRMaXRlcmFsQXJyYXkoYXN0OiBMaXRlcmFsQXJyYXksIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgcmV0dXJuIG5ldyBMaXRlcmFsQXJyYXkoYXN0LnNwYW4sIGFzdC5zb3VyY2VTcGFuLCB0aGlzLnZpc2l0QWxsKGFzdC5leHByZXNzaW9ucykpO1xuICB9XG5cbiAgdmlzaXRMaXRlcmFsTWFwKGFzdDogTGl0ZXJhbE1hcCwgY29udGV4dDogYW55KTogQVNUIHtcbiAgICByZXR1cm4gbmV3IExpdGVyYWxNYXAoYXN0LnNwYW4sIGFzdC5zb3VyY2VTcGFuLCBhc3Qua2V5cywgdGhpcy52aXNpdEFsbChhc3QudmFsdWVzKSk7XG4gIH1cblxuICB2aXNpdEJpbmFyeShhc3Q6IEJpbmFyeSwgY29udGV4dDogYW55KTogQVNUIHtcbiAgICByZXR1cm4gbmV3IEJpbmFyeShcbiAgICAgICAgYXN0LnNwYW4sIGFzdC5zb3VyY2VTcGFuLCBhc3Qub3BlcmF0aW9uLCBhc3QubGVmdC52aXNpdCh0aGlzKSwgYXN0LnJpZ2h0LnZpc2l0KHRoaXMpKTtcbiAgfVxuXG4gIHZpc2l0UHJlZml4Tm90KGFzdDogUHJlZml4Tm90LCBjb250ZXh0OiBhbnkpOiBBU1Qge1xuICAgIHJldHVybiBuZXcgUHJlZml4Tm90KGFzdC5zcGFuLCBhc3Quc291cmNlU3BhbiwgYXN0LmV4cHJlc3Npb24udmlzaXQodGhpcykpO1xuICB9XG5cbiAgdmlzaXROb25OdWxsQXNzZXJ0KGFzdDogTm9uTnVsbEFzc2VydCwgY29udGV4dDogYW55KTogQVNUIHtcbiAgICByZXR1cm4gbmV3IE5vbk51bGxBc3NlcnQoYXN0LnNwYW4sIGFzdC5zb3VyY2VTcGFuLCBhc3QuZXhwcmVzc2lvbi52aXNpdCh0aGlzKSk7XG4gIH1cblxuICB2aXNpdENvbmRpdGlvbmFsKGFzdDogQ29uZGl0aW9uYWwsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgcmV0dXJuIG5ldyBDb25kaXRpb25hbChcbiAgICAgICAgYXN0LnNwYW4sIGFzdC5zb3VyY2VTcGFuLCBhc3QuY29uZGl0aW9uLnZpc2l0KHRoaXMpLCBhc3QudHJ1ZUV4cC52aXNpdCh0aGlzKSxcbiAgICAgICAgYXN0LmZhbHNlRXhwLnZpc2l0KHRoaXMpKTtcbiAgfVxuXG4gIHZpc2l0UGlwZShhc3Q6IEJpbmRpbmdQaXBlLCBjb250ZXh0OiBhbnkpOiBBU1Qge1xuICAgIHJldHVybiBuZXcgQmluZGluZ1BpcGUoXG4gICAgICAgIGFzdC5zcGFuLCBhc3Quc291cmNlU3BhbiwgYXN0LmV4cC52aXNpdCh0aGlzKSwgYXN0Lm5hbWUsIHRoaXMudmlzaXRBbGwoYXN0LmFyZ3MpLFxuICAgICAgICBhc3QubmFtZVNwYW4pO1xuICB9XG5cbiAgdmlzaXRLZXllZFJlYWQoYXN0OiBLZXllZFJlYWQsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgcmV0dXJuIG5ldyBLZXllZFJlYWQoYXN0LnNwYW4sIGFzdC5zb3VyY2VTcGFuLCBhc3Qub2JqLnZpc2l0KHRoaXMpLCBhc3Qua2V5LnZpc2l0KHRoaXMpKTtcbiAgfVxuXG4gIHZpc2l0S2V5ZWRXcml0ZShhc3Q6IEtleWVkV3JpdGUsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgcmV0dXJuIG5ldyBLZXllZFdyaXRlKFxuICAgICAgICBhc3Quc3BhbiwgYXN0LnNvdXJjZVNwYW4sIGFzdC5vYmoudmlzaXQodGhpcyksIGFzdC5rZXkudmlzaXQodGhpcyksIGFzdC52YWx1ZS52aXNpdCh0aGlzKSk7XG4gIH1cblxuICB2aXNpdEFsbChhc3RzOiBhbnlbXSk6IGFueVtdIHtcbiAgICBjb25zdCByZXMgPSBbXTtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IGFzdHMubGVuZ3RoOyArK2kpIHtcbiAgICAgIHJlc1tpXSA9IGFzdHNbaV0udmlzaXQodGhpcyk7XG4gICAgfVxuICAgIHJldHVybiByZXM7XG4gIH1cblxuICB2aXNpdENoYWluKGFzdDogQ2hhaW4sIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgcmV0dXJuIG5ldyBDaGFpbihhc3Quc3BhbiwgYXN0LnNvdXJjZVNwYW4sIHRoaXMudmlzaXRBbGwoYXN0LmV4cHJlc3Npb25zKSk7XG4gIH1cblxuICB2aXNpdFF1b3RlKGFzdDogUXVvdGUsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgcmV0dXJuIG5ldyBRdW90ZShcbiAgICAgICAgYXN0LnNwYW4sIGFzdC5zb3VyY2VTcGFuLCBhc3QucHJlZml4LCBhc3QudW5pbnRlcnByZXRlZEV4cHJlc3Npb24sIGFzdC5sb2NhdGlvbik7XG4gIH1cbn1cblxuLy8gQSB0cmFuc2Zvcm1lciB0aGF0IG9ubHkgY3JlYXRlcyBuZXcgbm9kZXMgaWYgdGhlIHRyYW5zZm9ybWVyIG1ha2VzIGEgY2hhbmdlIG9yXG4vLyBhIGNoYW5nZSBpcyBtYWRlIGEgY2hpbGQgbm9kZS5cbmV4cG9ydCBjbGFzcyBBc3RNZW1vcnlFZmZpY2llbnRUcmFuc2Zvcm1lciBpbXBsZW1lbnRzIEFzdFZpc2l0b3Ige1xuICB2aXNpdEltcGxpY2l0UmVjZWl2ZXIoYXN0OiBJbXBsaWNpdFJlY2VpdmVyLCBjb250ZXh0OiBhbnkpOiBBU1Qge1xuICAgIHJldHVybiBhc3Q7XG4gIH1cblxuICB2aXNpdEludGVycG9sYXRpb24oYXN0OiBJbnRlcnBvbGF0aW9uLCBjb250ZXh0OiBhbnkpOiBJbnRlcnBvbGF0aW9uIHtcbiAgICBjb25zdCBleHByZXNzaW9ucyA9IHRoaXMudmlzaXRBbGwoYXN0LmV4cHJlc3Npb25zKTtcbiAgICBpZiAoZXhwcmVzc2lvbnMgIT09IGFzdC5leHByZXNzaW9ucylcbiAgICAgIHJldHVybiBuZXcgSW50ZXJwb2xhdGlvbihhc3Quc3BhbiwgYXN0LnNvdXJjZVNwYW4sIGFzdC5zdHJpbmdzLCBleHByZXNzaW9ucyk7XG4gICAgcmV0dXJuIGFzdDtcbiAgfVxuXG4gIHZpc2l0TGl0ZXJhbFByaW1pdGl2ZShhc3Q6IExpdGVyYWxQcmltaXRpdmUsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgcmV0dXJuIGFzdDtcbiAgfVxuXG4gIHZpc2l0UHJvcGVydHlSZWFkKGFzdDogUHJvcGVydHlSZWFkLCBjb250ZXh0OiBhbnkpOiBBU1Qge1xuICAgIGNvbnN0IHJlY2VpdmVyID0gYXN0LnJlY2VpdmVyLnZpc2l0KHRoaXMpO1xuICAgIGlmIChyZWNlaXZlciAhPT0gYXN0LnJlY2VpdmVyKSB7XG4gICAgICByZXR1cm4gbmV3IFByb3BlcnR5UmVhZChhc3Quc3BhbiwgYXN0LnNvdXJjZVNwYW4sIGFzdC5uYW1lU3BhbiwgcmVjZWl2ZXIsIGFzdC5uYW1lKTtcbiAgICB9XG4gICAgcmV0dXJuIGFzdDtcbiAgfVxuXG4gIHZpc2l0UHJvcGVydHlXcml0ZShhc3Q6IFByb3BlcnR5V3JpdGUsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgY29uc3QgcmVjZWl2ZXIgPSBhc3QucmVjZWl2ZXIudmlzaXQodGhpcyk7XG4gICAgY29uc3QgdmFsdWUgPSBhc3QudmFsdWUudmlzaXQodGhpcyk7XG4gICAgaWYgKHJlY2VpdmVyICE9PSBhc3QucmVjZWl2ZXIgfHwgdmFsdWUgIT09IGFzdC52YWx1ZSkge1xuICAgICAgcmV0dXJuIG5ldyBQcm9wZXJ0eVdyaXRlKGFzdC5zcGFuLCBhc3Quc291cmNlU3BhbiwgYXN0Lm5hbWVTcGFuLCByZWNlaXZlciwgYXN0Lm5hbWUsIHZhbHVlKTtcbiAgICB9XG4gICAgcmV0dXJuIGFzdDtcbiAgfVxuXG4gIHZpc2l0U2FmZVByb3BlcnR5UmVhZChhc3Q6IFNhZmVQcm9wZXJ0eVJlYWQsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgY29uc3QgcmVjZWl2ZXIgPSBhc3QucmVjZWl2ZXIudmlzaXQodGhpcyk7XG4gICAgaWYgKHJlY2VpdmVyICE9PSBhc3QucmVjZWl2ZXIpIHtcbiAgICAgIHJldHVybiBuZXcgU2FmZVByb3BlcnR5UmVhZChhc3Quc3BhbiwgYXN0LnNvdXJjZVNwYW4sIGFzdC5uYW1lU3BhbiwgcmVjZWl2ZXIsIGFzdC5uYW1lKTtcbiAgICB9XG4gICAgcmV0dXJuIGFzdDtcbiAgfVxuXG4gIHZpc2l0TWV0aG9kQ2FsbChhc3Q6IE1ldGhvZENhbGwsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgY29uc3QgcmVjZWl2ZXIgPSBhc3QucmVjZWl2ZXIudmlzaXQodGhpcyk7XG4gICAgY29uc3QgYXJncyA9IHRoaXMudmlzaXRBbGwoYXN0LmFyZ3MpO1xuICAgIGlmIChyZWNlaXZlciAhPT0gYXN0LnJlY2VpdmVyIHx8IGFyZ3MgIT09IGFzdC5hcmdzKSB7XG4gICAgICByZXR1cm4gbmV3IE1ldGhvZENhbGwoYXN0LnNwYW4sIGFzdC5zb3VyY2VTcGFuLCBhc3QubmFtZVNwYW4sIHJlY2VpdmVyLCBhc3QubmFtZSwgYXJncyk7XG4gICAgfVxuICAgIHJldHVybiBhc3Q7XG4gIH1cblxuICB2aXNpdFNhZmVNZXRob2RDYWxsKGFzdDogU2FmZU1ldGhvZENhbGwsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgY29uc3QgcmVjZWl2ZXIgPSBhc3QucmVjZWl2ZXIudmlzaXQodGhpcyk7XG4gICAgY29uc3QgYXJncyA9IHRoaXMudmlzaXRBbGwoYXN0LmFyZ3MpO1xuICAgIGlmIChyZWNlaXZlciAhPT0gYXN0LnJlY2VpdmVyIHx8IGFyZ3MgIT09IGFzdC5hcmdzKSB7XG4gICAgICByZXR1cm4gbmV3IFNhZmVNZXRob2RDYWxsKGFzdC5zcGFuLCBhc3Quc291cmNlU3BhbiwgYXN0Lm5hbWVTcGFuLCByZWNlaXZlciwgYXN0Lm5hbWUsIGFyZ3MpO1xuICAgIH1cbiAgICByZXR1cm4gYXN0O1xuICB9XG5cbiAgdmlzaXRGdW5jdGlvbkNhbGwoYXN0OiBGdW5jdGlvbkNhbGwsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgY29uc3QgdGFyZ2V0ID0gYXN0LnRhcmdldCAmJiBhc3QudGFyZ2V0LnZpc2l0KHRoaXMpO1xuICAgIGNvbnN0IGFyZ3MgPSB0aGlzLnZpc2l0QWxsKGFzdC5hcmdzKTtcbiAgICBpZiAodGFyZ2V0ICE9PSBhc3QudGFyZ2V0IHx8IGFyZ3MgIT09IGFzdC5hcmdzKSB7XG4gICAgICByZXR1cm4gbmV3IEZ1bmN0aW9uQ2FsbChhc3Quc3BhbiwgYXN0LnNvdXJjZVNwYW4sIHRhcmdldCwgYXJncyk7XG4gICAgfVxuICAgIHJldHVybiBhc3Q7XG4gIH1cblxuICB2aXNpdExpdGVyYWxBcnJheShhc3Q6IExpdGVyYWxBcnJheSwgY29udGV4dDogYW55KTogQVNUIHtcbiAgICBjb25zdCBleHByZXNzaW9ucyA9IHRoaXMudmlzaXRBbGwoYXN0LmV4cHJlc3Npb25zKTtcbiAgICBpZiAoZXhwcmVzc2lvbnMgIT09IGFzdC5leHByZXNzaW9ucykge1xuICAgICAgcmV0dXJuIG5ldyBMaXRlcmFsQXJyYXkoYXN0LnNwYW4sIGFzdC5zb3VyY2VTcGFuLCBleHByZXNzaW9ucyk7XG4gICAgfVxuICAgIHJldHVybiBhc3Q7XG4gIH1cblxuICB2aXNpdExpdGVyYWxNYXAoYXN0OiBMaXRlcmFsTWFwLCBjb250ZXh0OiBhbnkpOiBBU1Qge1xuICAgIGNvbnN0IHZhbHVlcyA9IHRoaXMudmlzaXRBbGwoYXN0LnZhbHVlcyk7XG4gICAgaWYgKHZhbHVlcyAhPT0gYXN0LnZhbHVlcykge1xuICAgICAgcmV0dXJuIG5ldyBMaXRlcmFsTWFwKGFzdC5zcGFuLCBhc3Quc291cmNlU3BhbiwgYXN0LmtleXMsIHZhbHVlcyk7XG4gICAgfVxuICAgIHJldHVybiBhc3Q7XG4gIH1cblxuICB2aXNpdEJpbmFyeShhc3Q6IEJpbmFyeSwgY29udGV4dDogYW55KTogQVNUIHtcbiAgICBjb25zdCBsZWZ0ID0gYXN0LmxlZnQudmlzaXQodGhpcyk7XG4gICAgY29uc3QgcmlnaHQgPSBhc3QucmlnaHQudmlzaXQodGhpcyk7XG4gICAgaWYgKGxlZnQgIT09IGFzdC5sZWZ0IHx8IHJpZ2h0ICE9PSBhc3QucmlnaHQpIHtcbiAgICAgIHJldHVybiBuZXcgQmluYXJ5KGFzdC5zcGFuLCBhc3Quc291cmNlU3BhbiwgYXN0Lm9wZXJhdGlvbiwgbGVmdCwgcmlnaHQpO1xuICAgIH1cbiAgICByZXR1cm4gYXN0O1xuICB9XG5cbiAgdmlzaXRQcmVmaXhOb3QoYXN0OiBQcmVmaXhOb3QsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgY29uc3QgZXhwcmVzc2lvbiA9IGFzdC5leHByZXNzaW9uLnZpc2l0KHRoaXMpO1xuICAgIGlmIChleHByZXNzaW9uICE9PSBhc3QuZXhwcmVzc2lvbikge1xuICAgICAgcmV0dXJuIG5ldyBQcmVmaXhOb3QoYXN0LnNwYW4sIGFzdC5zb3VyY2VTcGFuLCBleHByZXNzaW9uKTtcbiAgICB9XG4gICAgcmV0dXJuIGFzdDtcbiAgfVxuXG4gIHZpc2l0Tm9uTnVsbEFzc2VydChhc3Q6IE5vbk51bGxBc3NlcnQsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgY29uc3QgZXhwcmVzc2lvbiA9IGFzdC5leHByZXNzaW9uLnZpc2l0KHRoaXMpO1xuICAgIGlmIChleHByZXNzaW9uICE9PSBhc3QuZXhwcmVzc2lvbikge1xuICAgICAgcmV0dXJuIG5ldyBOb25OdWxsQXNzZXJ0KGFzdC5zcGFuLCBhc3Quc291cmNlU3BhbiwgZXhwcmVzc2lvbik7XG4gICAgfVxuICAgIHJldHVybiBhc3Q7XG4gIH1cblxuICB2aXNpdENvbmRpdGlvbmFsKGFzdDogQ29uZGl0aW9uYWwsIGNvbnRleHQ6IGFueSk6IEFTVCB7XG4gICAgY29uc3QgY29uZGl0aW9uID0gYXN0LmNvbmRpdGlvbi52aXNpdCh0aGlzKTtcbiAgICBjb25zdCB0cnVlRXhwID0gYXN0LnRydWVFeHAudmlzaXQodGhpcyk7XG4gICAgY29uc3QgZmFsc2VFeHAgPSBhc3QuZmFsc2VFeHAudmlzaXQodGhpcyk7XG4gICAgaWYgKGNvbmRpdGlvbiAhPT0gYXN0LmNvbmRpdGlvbiB8fCB0cnVlRXhwICE9PSBhc3QudHJ1ZUV4cCB8fCBmYWxzZUV4cCAhPT0gYXN0LmZhbHNlRXhwKSB7XG4gICAgICByZXR1cm4gbmV3IENvbmRpdGlvbmFsKGFzdC5zcGFuLCBhc3Quc291cmNlU3BhbiwgY29uZGl0aW9uLCB0cnVlRXhwLCBmYWxzZUV4cCk7XG4gICAgfVxuICAgIHJldHVybiBhc3Q7XG4gIH1cblxuICB2aXNpdFBpcGUoYXN0OiBCaW5kaW5nUGlwZSwgY29udGV4dDogYW55KTogQVNUIHtcbiAgICBjb25zdCBleHAgPSBhc3QuZXhwLnZpc2l0KHRoaXMpO1xuICAgIGNvbnN0IGFyZ3MgPSB0aGlzLnZpc2l0QWxsKGFzdC5hcmdzKTtcbiAgICBpZiAoZXhwICE9PSBhc3QuZXhwIHx8IGFyZ3MgIT09IGFzdC5hcmdzKSB7XG4gICAgICByZXR1cm4gbmV3IEJpbmRpbmdQaXBlKGFzdC5zcGFuLCBhc3Quc291cmNlU3BhbiwgZXhwLCBhc3QubmFtZSwgYXJncywgYXN0Lm5hbWVTcGFuKTtcbiAgICB9XG4gICAgcmV0dXJuIGFzdDtcbiAgfVxuXG4gIHZpc2l0S2V5ZWRSZWFkKGFzdDogS2V5ZWRSZWFkLCBjb250ZXh0OiBhbnkpOiBBU1Qge1xuICAgIGNvbnN0IG9iaiA9IGFzdC5vYmoudmlzaXQodGhpcyk7XG4gICAgY29uc3Qga2V5ID0gYXN0LmtleS52aXNpdCh0aGlzKTtcbiAgICBpZiAob2JqICE9PSBhc3Qub2JqIHx8IGtleSAhPT0gYXN0LmtleSkge1xuICAgICAgcmV0dXJuIG5ldyBLZXllZFJlYWQoYXN0LnNwYW4sIGFzdC5zb3VyY2VTcGFuLCBvYmosIGtleSk7XG4gICAgfVxuICAgIHJldHVybiBhc3Q7XG4gIH1cblxuICB2aXNpdEtleWVkV3JpdGUoYXN0OiBLZXllZFdyaXRlLCBjb250ZXh0OiBhbnkpOiBBU1Qge1xuICAgIGNvbnN0IG9iaiA9IGFzdC5vYmoudmlzaXQodGhpcyk7XG4gICAgY29uc3Qga2V5ID0gYXN0LmtleS52aXNpdCh0aGlzKTtcbiAgICBjb25zdCB2YWx1ZSA9IGFzdC52YWx1ZS52aXNpdCh0aGlzKTtcbiAgICBpZiAob2JqICE9PSBhc3Qub2JqIHx8IGtleSAhPT0gYXN0LmtleSB8fCB2YWx1ZSAhPT0gYXN0LnZhbHVlKSB7XG4gICAgICByZXR1cm4gbmV3IEtleWVkV3JpdGUoYXN0LnNwYW4sIGFzdC5zb3VyY2VTcGFuLCBvYmosIGtleSwgdmFsdWUpO1xuICAgIH1cbiAgICByZXR1cm4gYXN0O1xuICB9XG5cbiAgdmlzaXRBbGwoYXN0czogYW55W10pOiBhbnlbXSB7XG4gICAgY29uc3QgcmVzID0gW107XG4gICAgbGV0IG1vZGlmaWVkID0gZmFsc2U7XG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCBhc3RzLmxlbmd0aDsgKytpKSB7XG4gICAgICBjb25zdCBvcmlnaW5hbCA9IGFzdHNbaV07XG4gICAgICBjb25zdCB2YWx1ZSA9IG9yaWdpbmFsLnZpc2l0KHRoaXMpO1xuICAgICAgcmVzW2ldID0gdmFsdWU7XG4gICAgICBtb2RpZmllZCA9IG1vZGlmaWVkIHx8IHZhbHVlICE9PSBvcmlnaW5hbDtcbiAgICB9XG4gICAgcmV0dXJuIG1vZGlmaWVkID8gcmVzIDogYXN0cztcbiAgfVxuXG4gIHZpc2l0Q2hhaW4oYXN0OiBDaGFpbiwgY29udGV4dDogYW55KTogQVNUIHtcbiAgICBjb25zdCBleHByZXNzaW9ucyA9IHRoaXMudmlzaXRBbGwoYXN0LmV4cHJlc3Npb25zKTtcbiAgICBpZiAoZXhwcmVzc2lvbnMgIT09IGFzdC5leHByZXNzaW9ucykge1xuICAgICAgcmV0dXJuIG5ldyBDaGFpbihhc3Quc3BhbiwgYXN0LnNvdXJjZVNwYW4sIGV4cHJlc3Npb25zKTtcbiAgICB9XG4gICAgcmV0dXJuIGFzdDtcbiAgfVxuXG4gIHZpc2l0UXVvdGUoYXN0OiBRdW90ZSwgY29udGV4dDogYW55KTogQVNUIHtcbiAgICByZXR1cm4gYXN0O1xuICB9XG59XG5cbi8vIEJpbmRpbmdzXG5cbmV4cG9ydCBjbGFzcyBQYXJzZWRQcm9wZXJ0eSB7XG4gIHB1YmxpYyByZWFkb25seSBpc0xpdGVyYWw6IGJvb2xlYW47XG4gIHB1YmxpYyByZWFkb25seSBpc0FuaW1hdGlvbjogYm9vbGVhbjtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHB1YmxpYyBleHByZXNzaW9uOiBBU1RXaXRoU291cmNlLCBwdWJsaWMgdHlwZTogUGFyc2VkUHJvcGVydHlUeXBlLFxuICAgICAgcHVibGljIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiwgcHVibGljIHZhbHVlU3Bhbj86IFBhcnNlU291cmNlU3Bhbikge1xuICAgIHRoaXMuaXNMaXRlcmFsID0gdGhpcy50eXBlID09PSBQYXJzZWRQcm9wZXJ0eVR5cGUuTElURVJBTF9BVFRSO1xuICAgIHRoaXMuaXNBbmltYXRpb24gPSB0aGlzLnR5cGUgPT09IFBhcnNlZFByb3BlcnR5VHlwZS5BTklNQVRJT047XG4gIH1cbn1cblxuZXhwb3J0IGVudW0gUGFyc2VkUHJvcGVydHlUeXBlIHtcbiAgREVGQVVMVCxcbiAgTElURVJBTF9BVFRSLFxuICBBTklNQVRJT05cbn1cblxuZXhwb3J0IGNvbnN0IGVudW0gUGFyc2VkRXZlbnRUeXBlIHtcbiAgLy8gRE9NIG9yIERpcmVjdGl2ZSBldmVudFxuICBSZWd1bGFyLFxuICAvLyBBbmltYXRpb24gc3BlY2lmaWMgZXZlbnRcbiAgQW5pbWF0aW9uLFxufVxuXG5leHBvcnQgY2xhc3MgUGFyc2VkRXZlbnQge1xuICAvLyBSZWd1bGFyIGV2ZW50cyBoYXZlIGEgdGFyZ2V0XG4gIC8vIEFuaW1hdGlvbiBldmVudHMgaGF2ZSBhIHBoYXNlXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIG5hbWU6IHN0cmluZywgcHVibGljIHRhcmdldE9yUGhhc2U6IHN0cmluZywgcHVibGljIHR5cGU6IFBhcnNlZEV2ZW50VHlwZSxcbiAgICAgIHB1YmxpYyBoYW5kbGVyOiBBU1RXaXRoU291cmNlLCBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgcHVibGljIGhhbmRsZXJTcGFuOiBQYXJzZVNvdXJjZVNwYW4pIHt9XG59XG5cbi8qKlxuICogUGFyc2VkVmFyaWFibGUgcmVwcmVzZW50cyBhIHZhcmlhYmxlIGRlY2xhcmF0aW9uIGluIGEgbWljcm9zeW50YXggZXhwcmVzc2lvbi5cbiAqL1xuZXhwb3J0IGNsYXNzIFBhcnNlZFZhcmlhYmxlIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgcmVhZG9ubHkgbmFtZTogc3RyaW5nLCBwdWJsaWMgcmVhZG9ubHkgdmFsdWU6IHN0cmluZyxcbiAgICAgIHB1YmxpYyByZWFkb25seSBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyByZWFkb25seSBrZXlTcGFuOiBQYXJzZVNvdXJjZVNwYW4sXG4gICAgICBwdWJsaWMgcmVhZG9ubHkgdmFsdWVTcGFuPzogUGFyc2VTb3VyY2VTcGFuKSB7fVxufVxuXG5leHBvcnQgY29uc3QgZW51bSBCaW5kaW5nVHlwZSB7XG4gIC8vIEEgcmVndWxhciBiaW5kaW5nIHRvIGEgcHJvcGVydHkgKGUuZy4gYFtwcm9wZXJ0eV09XCJleHByZXNzaW9uXCJgKS5cbiAgUHJvcGVydHksXG4gIC8vIEEgYmluZGluZyB0byBhbiBlbGVtZW50IGF0dHJpYnV0ZSAoZS5nLiBgW2F0dHIubmFtZV09XCJleHByZXNzaW9uXCJgKS5cbiAgQXR0cmlidXRlLFxuICAvLyBBIGJpbmRpbmcgdG8gYSBDU1MgY2xhc3MgKGUuZy4gYFtjbGFzcy5uYW1lXT1cImNvbmRpdGlvblwiYCkuXG4gIENsYXNzLFxuICAvLyBBIGJpbmRpbmcgdG8gYSBzdHlsZSBydWxlIChlLmcuIGBbc3R5bGUucnVsZV09XCJleHByZXNzaW9uXCJgKS5cbiAgU3R5bGUsXG4gIC8vIEEgYmluZGluZyB0byBhbiBhbmltYXRpb24gcmVmZXJlbmNlIChlLmcuIGBbYW5pbWF0ZS5rZXldPVwiZXhwcmVzc2lvblwiYCkuXG4gIEFuaW1hdGlvbixcbn1cblxuZXhwb3J0IGNsYXNzIEJvdW5kRWxlbWVudFByb3BlcnR5IHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgbmFtZTogc3RyaW5nLCBwdWJsaWMgdHlwZTogQmluZGluZ1R5cGUsIHB1YmxpYyBzZWN1cml0eUNvbnRleHQ6IFNlY3VyaXR5Q29udGV4dCxcbiAgICAgIHB1YmxpYyB2YWx1ZTogQVNUV2l0aFNvdXJjZSwgcHVibGljIHVuaXQ6IHN0cmluZ3xudWxsLCBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgcHVibGljIHZhbHVlU3Bhbj86IFBhcnNlU291cmNlU3Bhbikge31cbn1cbiJdfQ==