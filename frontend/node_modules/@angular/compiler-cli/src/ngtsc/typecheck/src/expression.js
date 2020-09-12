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
        define("@angular/compiler-cli/src/ngtsc/typecheck/src/expression", ["require", "exports", "@angular/compiler", "typescript", "@angular/compiler-cli/src/ngtsc/typecheck/src/diagnostics", "@angular/compiler-cli/src/ngtsc/typecheck/src/ts_util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.astToTypescript = exports.NULL_AS_ANY = void 0;
    var compiler_1 = require("@angular/compiler");
    var ts = require("typescript");
    var diagnostics_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/diagnostics");
    var ts_util_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/ts_util");
    exports.NULL_AS_ANY = ts.createAsExpression(ts.createNull(), ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword));
    var UNDEFINED = ts.createIdentifier('undefined');
    var BINARY_OPS = new Map([
        ['+', ts.SyntaxKind.PlusToken],
        ['-', ts.SyntaxKind.MinusToken],
        ['<', ts.SyntaxKind.LessThanToken],
        ['>', ts.SyntaxKind.GreaterThanToken],
        ['<=', ts.SyntaxKind.LessThanEqualsToken],
        ['>=', ts.SyntaxKind.GreaterThanEqualsToken],
        ['==', ts.SyntaxKind.EqualsEqualsToken],
        ['===', ts.SyntaxKind.EqualsEqualsEqualsToken],
        ['*', ts.SyntaxKind.AsteriskToken],
        ['/', ts.SyntaxKind.SlashToken],
        ['%', ts.SyntaxKind.PercentToken],
        ['!=', ts.SyntaxKind.ExclamationEqualsToken],
        ['!==', ts.SyntaxKind.ExclamationEqualsEqualsToken],
        ['||', ts.SyntaxKind.BarBarToken],
        ['&&', ts.SyntaxKind.AmpersandAmpersandToken],
        ['&', ts.SyntaxKind.AmpersandToken],
        ['|', ts.SyntaxKind.BarToken],
    ]);
    /**
     * Convert an `AST` to TypeScript code directly, without going through an intermediate `Expression`
     * AST.
     */
    function astToTypescript(ast, maybeResolve, config) {
        var translator = new AstTranslator(maybeResolve, config);
        return translator.translate(ast);
    }
    exports.astToTypescript = astToTypescript;
    var AstTranslator = /** @class */ (function () {
        function AstTranslator(maybeResolve, config) {
            this.maybeResolve = maybeResolve;
            this.config = config;
        }
        AstTranslator.prototype.translate = function (ast) {
            // Skip over an `ASTWithSource` as its `visit` method calls directly into its ast's `visit`,
            // which would prevent any custom resolution through `maybeResolve` for that node.
            if (ast instanceof compiler_1.ASTWithSource) {
                ast = ast.ast;
            }
            // The `EmptyExpr` doesn't have a dedicated method on `AstVisitor`, so it's special cased here.
            if (ast instanceof compiler_1.EmptyExpr) {
                return UNDEFINED;
            }
            // First attempt to let any custom resolution logic provide a translation for the given node.
            var resolved = this.maybeResolve(ast);
            if (resolved !== null) {
                return resolved;
            }
            return ast.visit(this);
        };
        AstTranslator.prototype.visitBinary = function (ast) {
            var lhs = diagnostics_1.wrapForDiagnostics(this.translate(ast.left));
            var rhs = diagnostics_1.wrapForDiagnostics(this.translate(ast.right));
            var op = BINARY_OPS.get(ast.operation);
            if (op === undefined) {
                throw new Error("Unsupported Binary.operation: " + ast.operation);
            }
            var node = ts.createBinary(lhs, op, rhs);
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitChain = function (ast) {
            var _this = this;
            var elements = ast.expressions.map(function (expr) { return _this.translate(expr); });
            var node = diagnostics_1.wrapForDiagnostics(ts.createCommaList(elements));
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitConditional = function (ast) {
            var condExpr = this.translate(ast.condition);
            var trueExpr = this.translate(ast.trueExp);
            var falseExpr = this.translate(ast.falseExp);
            var node = ts.createParen(ts.createConditional(condExpr, trueExpr, falseExpr));
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitFunctionCall = function (ast) {
            var _this = this;
            var receiver = diagnostics_1.wrapForDiagnostics(this.translate(ast.target));
            var args = ast.args.map(function (expr) { return _this.translate(expr); });
            var node = ts.createCall(receiver, undefined, args);
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitImplicitReceiver = function (ast) {
            throw new Error('Method not implemented.');
        };
        AstTranslator.prototype.visitInterpolation = function (ast) {
            var _this = this;
            // Build up a chain of binary + operations to simulate the string concatenation of the
            // interpolation's expressions. The chain is started using an actual string literal to ensure
            // the type is inferred as 'string'.
            return ast.expressions.reduce(function (lhs, ast) { return ts.createBinary(lhs, ts.SyntaxKind.PlusToken, _this.translate(ast)); }, ts.createLiteral(''));
        };
        AstTranslator.prototype.visitKeyedRead = function (ast) {
            var receiver = diagnostics_1.wrapForDiagnostics(this.translate(ast.obj));
            var key = this.translate(ast.key);
            var node = ts.createElementAccess(receiver, key);
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitKeyedWrite = function (ast) {
            var receiver = diagnostics_1.wrapForDiagnostics(this.translate(ast.obj));
            var left = ts.createElementAccess(receiver, this.translate(ast.key));
            // TODO(joost): annotate `left` with the span of the element access, which is not currently
            //  available on `ast`.
            var right = this.translate(ast.value);
            var node = diagnostics_1.wrapForDiagnostics(ts.createBinary(left, ts.SyntaxKind.EqualsToken, right));
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitLiteralArray = function (ast) {
            var _this = this;
            var elements = ast.expressions.map(function (expr) { return _this.translate(expr); });
            var literal = ts.createArrayLiteral(elements);
            // If strictLiteralTypes is disabled, array literals are cast to `any`.
            var node = this.config.strictLiteralTypes ? literal : ts_util_1.tsCastToAny(literal);
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitLiteralMap = function (ast) {
            var _this = this;
            var properties = ast.keys.map(function (_a, idx) {
                var key = _a.key;
                var value = _this.translate(ast.values[idx]);
                return ts.createPropertyAssignment(ts.createStringLiteral(key), value);
            });
            var literal = ts.createObjectLiteral(properties, true);
            // If strictLiteralTypes is disabled, object literals are cast to `any`.
            var node = this.config.strictLiteralTypes ? literal : ts_util_1.tsCastToAny(literal);
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitLiteralPrimitive = function (ast) {
            var node;
            if (ast.value === undefined) {
                node = ts.createIdentifier('undefined');
            }
            else if (ast.value === null) {
                node = ts.createNull();
            }
            else {
                node = ts.createLiteral(ast.value);
            }
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitMethodCall = function (ast) {
            var _this = this;
            var receiver = diagnostics_1.wrapForDiagnostics(this.translate(ast.receiver));
            var method = ts.createPropertyAccess(receiver, ast.name);
            diagnostics_1.addParseSpanInfo(method, ast.nameSpan);
            var args = ast.args.map(function (expr) { return _this.translate(expr); });
            var node = ts.createCall(method, undefined, args);
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitNonNullAssert = function (ast) {
            var expr = diagnostics_1.wrapForDiagnostics(this.translate(ast.expression));
            var node = ts.createNonNullExpression(expr);
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitPipe = function (ast) {
            throw new Error('Method not implemented.');
        };
        AstTranslator.prototype.visitPrefixNot = function (ast) {
            var expression = diagnostics_1.wrapForDiagnostics(this.translate(ast.expression));
            var node = ts.createLogicalNot(expression);
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitPropertyRead = function (ast) {
            // This is a normal property read - convert the receiver to an expression and emit the correct
            // TypeScript expression to read the property.
            var receiver = diagnostics_1.wrapForDiagnostics(this.translate(ast.receiver));
            var name = ts.createPropertyAccess(receiver, ast.name);
            diagnostics_1.addParseSpanInfo(name, ast.nameSpan);
            var node = diagnostics_1.wrapForDiagnostics(name);
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitPropertyWrite = function (ast) {
            var receiver = diagnostics_1.wrapForDiagnostics(this.translate(ast.receiver));
            var left = ts.createPropertyAccess(receiver, ast.name);
            diagnostics_1.addParseSpanInfo(left, ast.nameSpan);
            // TypeScript reports assignment errors on the entire lvalue expression. Annotate the lvalue of
            // the assignment with the sourceSpan, which includes receivers, rather than nameSpan for
            // consistency of the diagnostic location.
            // a.b.c = 1
            // ^^^^^^^^^ sourceSpan
            //     ^     nameSpan
            var leftWithPath = diagnostics_1.wrapForDiagnostics(left);
            diagnostics_1.addParseSpanInfo(leftWithPath, ast.sourceSpan);
            var right = this.translate(ast.value);
            var node = diagnostics_1.wrapForDiagnostics(ts.createBinary(leftWithPath, ts.SyntaxKind.EqualsToken, right));
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitQuote = function (ast) {
            return exports.NULL_AS_ANY;
        };
        AstTranslator.prototype.visitSafeMethodCall = function (ast) {
            var _this = this;
            // See the comments in SafePropertyRead above for an explanation of the cases here.
            var node;
            var receiver = diagnostics_1.wrapForDiagnostics(this.translate(ast.receiver));
            var args = ast.args.map(function (expr) { return _this.translate(expr); });
            if (this.config.strictSafeNavigationTypes) {
                // "a?.method(...)" becomes (null as any ? a!.method(...) : undefined)
                var method = ts.createPropertyAccess(ts.createNonNullExpression(receiver), ast.name);
                diagnostics_1.addParseSpanInfo(method, ast.nameSpan);
                var call = ts.createCall(method, undefined, args);
                node = ts.createParen(ts.createConditional(exports.NULL_AS_ANY, call, UNDEFINED));
            }
            else if (VeSafeLhsInferenceBugDetector.veWillInferAnyFor(ast)) {
                // "a?.method(...)" becomes (a as any).method(...)
                var method = ts.createPropertyAccess(ts_util_1.tsCastToAny(receiver), ast.name);
                diagnostics_1.addParseSpanInfo(method, ast.nameSpan);
                node = ts.createCall(method, undefined, args);
            }
            else {
                // "a?.method(...)" becomes (a!.method(...) as any)
                var method = ts.createPropertyAccess(ts.createNonNullExpression(receiver), ast.name);
                diagnostics_1.addParseSpanInfo(method, ast.nameSpan);
                node = ts_util_1.tsCastToAny(ts.createCall(method, undefined, args));
            }
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        AstTranslator.prototype.visitSafePropertyRead = function (ast) {
            var node;
            var receiver = diagnostics_1.wrapForDiagnostics(this.translate(ast.receiver));
            // The form of safe property reads depends on whether strictness is in use.
            if (this.config.strictSafeNavigationTypes) {
                // Basically, the return here is either the type of the complete expression with a null-safe
                // property read, or `undefined`. So a ternary is used to create an "or" type:
                // "a?.b" becomes (null as any ? a!.b : undefined)
                // The type of this expression is (typeof a!.b) | undefined, which is exactly as desired.
                var expr = ts.createPropertyAccess(ts.createNonNullExpression(receiver), ast.name);
                node = ts.createParen(ts.createConditional(exports.NULL_AS_ANY, expr, UNDEFINED));
            }
            else if (VeSafeLhsInferenceBugDetector.veWillInferAnyFor(ast)) {
                // Emulate a View Engine bug where 'any' is inferred for the left-hand side of the safe
                // navigation operation. With this bug, the type of the left-hand side is regarded as any.
                // Therefore, the left-hand side only needs repeating in the output (to validate it), and then
                // 'any' is used for the rest of the expression. This is done using a comma operator:
                // "a?.b" becomes (a as any).b, which will of course have type 'any'.
                node = ts.createPropertyAccess(ts_util_1.tsCastToAny(receiver), ast.name);
            }
            else {
                // The View Engine bug isn't active, so check the entire type of the expression, but the final
                // result is still inferred as `any`.
                // "a?.b" becomes (a!.b as any)
                var expr = ts.createPropertyAccess(ts.createNonNullExpression(receiver), ast.name);
                node = ts_util_1.tsCastToAny(expr);
            }
            diagnostics_1.addParseSpanInfo(node, ast.sourceSpan);
            return node;
        };
        return AstTranslator;
    }());
    /**
     * Checks whether View Engine will infer a type of 'any' for the left-hand side of a safe navigation
     * operation.
     *
     * In View Engine's template type-checker, certain receivers of safe navigation operations will
     * cause a temporary variable to be allocated as part of the checking expression, to save the value
     * of the receiver and use it more than once in the expression. This temporary variable has type
     * 'any'. In practice, this means certain receivers cause View Engine to not check the full
     * expression, and other receivers will receive more complete checking.
     *
     * For compatibility, this logic is adapted from View Engine's expression_converter.ts so that the
     * Ivy checker can emulate this bug when needed.
     */
    var VeSafeLhsInferenceBugDetector = /** @class */ (function () {
        function VeSafeLhsInferenceBugDetector() {
        }
        VeSafeLhsInferenceBugDetector.veWillInferAnyFor = function (ast) {
            return ast.receiver.visit(VeSafeLhsInferenceBugDetector.SINGLETON);
        };
        VeSafeLhsInferenceBugDetector.prototype.visitBinary = function (ast) {
            return ast.left.visit(this) || ast.right.visit(this);
        };
        VeSafeLhsInferenceBugDetector.prototype.visitChain = function (ast) {
            return false;
        };
        VeSafeLhsInferenceBugDetector.prototype.visitConditional = function (ast) {
            return ast.condition.visit(this) || ast.trueExp.visit(this) || ast.falseExp.visit(this);
        };
        VeSafeLhsInferenceBugDetector.prototype.visitFunctionCall = function (ast) {
            return true;
        };
        VeSafeLhsInferenceBugDetector.prototype.visitImplicitReceiver = function (ast) {
            return false;
        };
        VeSafeLhsInferenceBugDetector.prototype.visitInterpolation = function (ast) {
            var _this = this;
            return ast.expressions.some(function (exp) { return exp.visit(_this); });
        };
        VeSafeLhsInferenceBugDetector.prototype.visitKeyedRead = function (ast) {
            return false;
        };
        VeSafeLhsInferenceBugDetector.prototype.visitKeyedWrite = function (ast) {
            return false;
        };
        VeSafeLhsInferenceBugDetector.prototype.visitLiteralArray = function (ast) {
            return true;
        };
        VeSafeLhsInferenceBugDetector.prototype.visitLiteralMap = function (ast) {
            return true;
        };
        VeSafeLhsInferenceBugDetector.prototype.visitLiteralPrimitive = function (ast) {
            return false;
        };
        VeSafeLhsInferenceBugDetector.prototype.visitMethodCall = function (ast) {
            return true;
        };
        VeSafeLhsInferenceBugDetector.prototype.visitPipe = function (ast) {
            return true;
        };
        VeSafeLhsInferenceBugDetector.prototype.visitPrefixNot = function (ast) {
            return ast.expression.visit(this);
        };
        VeSafeLhsInferenceBugDetector.prototype.visitNonNullAssert = function (ast) {
            return ast.expression.visit(this);
        };
        VeSafeLhsInferenceBugDetector.prototype.visitPropertyRead = function (ast) {
            return false;
        };
        VeSafeLhsInferenceBugDetector.prototype.visitPropertyWrite = function (ast) {
            return false;
        };
        VeSafeLhsInferenceBugDetector.prototype.visitQuote = function (ast) {
            return false;
        };
        VeSafeLhsInferenceBugDetector.prototype.visitSafeMethodCall = function (ast) {
            return true;
        };
        VeSafeLhsInferenceBugDetector.prototype.visitSafePropertyRead = function (ast) {
            return false;
        };
        VeSafeLhsInferenceBugDetector.SINGLETON = new VeSafeLhsInferenceBugDetector();
        return VeSafeLhsInferenceBugDetector;
    }());
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXhwcmVzc2lvbi5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvdHlwZWNoZWNrL3NyYy9leHByZXNzaW9uLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQUVILDhDQUFtVjtJQUNuViwrQkFBaUM7SUFHakMseUZBQW1FO0lBQ25FLGlGQUFzQztJQUV6QixRQUFBLFdBQVcsR0FDcEIsRUFBRSxDQUFDLGtCQUFrQixDQUFDLEVBQUUsQ0FBQyxVQUFVLEVBQUUsRUFBRSxFQUFFLENBQUMscUJBQXFCLENBQUMsRUFBRSxDQUFDLFVBQVUsQ0FBQyxVQUFVLENBQUMsQ0FBQyxDQUFDO0lBQy9GLElBQU0sU0FBUyxHQUFHLEVBQUUsQ0FBQyxnQkFBZ0IsQ0FBQyxXQUFXLENBQUMsQ0FBQztJQUVuRCxJQUFNLFVBQVUsR0FBRyxJQUFJLEdBQUcsQ0FBd0I7UUFDaEQsQ0FBQyxHQUFHLEVBQUUsRUFBRSxDQUFDLFVBQVUsQ0FBQyxTQUFTLENBQUM7UUFDOUIsQ0FBQyxHQUFHLEVBQUUsRUFBRSxDQUFDLFVBQVUsQ0FBQyxVQUFVLENBQUM7UUFDL0IsQ0FBQyxHQUFHLEVBQUUsRUFBRSxDQUFDLFVBQVUsQ0FBQyxhQUFhLENBQUM7UUFDbEMsQ0FBQyxHQUFHLEVBQUUsRUFBRSxDQUFDLFVBQVUsQ0FBQyxnQkFBZ0IsQ0FBQztRQUNyQyxDQUFDLElBQUksRUFBRSxFQUFFLENBQUMsVUFBVSxDQUFDLG1CQUFtQixDQUFDO1FBQ3pDLENBQUMsSUFBSSxFQUFFLEVBQUUsQ0FBQyxVQUFVLENBQUMsc0JBQXNCLENBQUM7UUFDNUMsQ0FBQyxJQUFJLEVBQUUsRUFBRSxDQUFDLFVBQVUsQ0FBQyxpQkFBaUIsQ0FBQztRQUN2QyxDQUFDLEtBQUssRUFBRSxFQUFFLENBQUMsVUFBVSxDQUFDLHVCQUF1QixDQUFDO1FB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REFBcUIsR0FBckIsVUFBc0IsR0FBcUI7WUFDekMsT0FBTyxLQUFLLENBQUM7UUFDZixDQUFDO1FBakVjLHVDQUFTLEdBQUcsSUFBSSw2QkFBNkIsRUFBRSxDQUFDO1FBa0VqRSxvQ0FBQztLQUFBLEFBbkVELElBbUVDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7QVNULCBBc3RWaXNpdG9yLCBBU1RXaXRoU291cmNlLCBCaW5hcnksIEJpbmRpbmdQaXBlLCBDaGFpbiwgQ29uZGl0aW9uYWwsIEVtcHR5RXhwciwgRnVuY3Rpb25DYWxsLCBJbXBsaWNpdFJlY2VpdmVyLCBJbnRlcnBvbGF0aW9uLCBLZXllZFJlYWQsIEtleWVkV3JpdGUsIExpdGVyYWxBcnJheSwgTGl0ZXJhbE1hcCwgTGl0ZXJhbFByaW1pdGl2ZSwgTWV0aG9kQ2FsbCwgTm9uTnVsbEFzc2VydCwgUHJlZml4Tm90LCBQcm9wZXJ0eVJlYWQsIFByb3BlcnR5V3JpdGUsIFF1b3RlLCBTYWZlTWV0aG9kQ2FsbCwgU2FmZVByb3BlcnR5UmVhZH0gZnJvbSAnQGFuZ3VsYXIvY29tcGlsZXInO1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5pbXBvcnQge1R5cGVDaGVja2luZ0NvbmZpZ30gZnJvbSAnLi4vYXBpJztcblxuaW1wb3J0IHthZGRQYXJzZVNwYW5JbmZvLCB3cmFwRm9yRGlhZ25vc3RpY3N9IGZyb20gJy4vZGlhZ25vc3RpY3MnO1xuaW1wb3J0IHt0c0Nhc3RUb0FueX0gZnJvbSAnLi90c191dGlsJztcblxuZXhwb3J0IGNvbnN0IE5VTExfQVNfQU5ZID1cbiAgICB0cy5jcmVhdGVBc0V4cHJlc3Npb24odHMuY3JlYXRlTnVsbCgpLCB0cy5jcmVhdGVLZXl3b3JkVHlwZU5vZGUodHMuU3ludGF4S2luZC5BbnlLZXl3b3JkKSk7XG5jb25zdCBVTkRFRklORUQgPSB0cy5jcmVhdGVJZGVudGlmaWVyKCd1bmRlZmluZWQnKTtcblxuY29uc3QgQklOQVJZX09QUyA9IG5ldyBNYXA8c3RyaW5nLCB0cy5TeW50YXhLaW5kPihbXG4gIFsnKycsIHRzLlN5bnRheEtpbmQuUGx1c1Rva2VuXSxcbiAgWyctJywgdHMuU3ludGF4S2luZC5NaW51c1Rva2VuXSxcbiAgWyc8JywgdHMuU3ludGF4S2luZC5MZXNzVGhhblRva2VuXSxcbiAgWyc+JywgdHMuU3ludGF4S2luZC5HcmVhdGVyVGhhblRva2VuXSxcbiAgWyc8PScsIHRzLlN5bnRheEtpbmQuTGVzc1RoYW5FcXVhbHNUb2tlbl0sXG4gIFsnPj0nLCB0cy5TeW50YXhLaW5kLkdyZWF0ZXJUaGFuRXF1YWxzVG9rZW5dLFxuICBbJz09JywgdHMuU3ludGF4S2luZC5FcXVhbHNFcXVhbHNUb2tlbl0sXG4gIFsnPT09JywgdHMuU3ludGF4S2luZC5FcXVhbHNFcXVhbHNFcXVhbHNUb2tlbl0sXG4gIFsnKicsIHRzLlN5bnRheEtpbmQuQXN0ZXJpc2tUb2tlbl0sXG4gIFsnLycsIHRzLlN5bnRheEtpbmQuU2xhc2hUb2tlbl0sXG4gIFsnJScsIHRzLlN5bnRheEtpbmQuUGVyY2VudFRva2VuXSxcbiAgWychPScsIHRzLlN5bnRheEtpbmQuRXhjbGFtYXRpb25FcXVhbHNUb2tlbl0sXG4gIFsnIT09JywgdHMuU3ludGF4S2luZC5FeGNsYW1hdGlvbkVxdWFsc0VxdWFsc1Rva2VuXSxcbiAgWyd8fCcsIHRzLlN5bnRheEtpbmQuQmFyQmFyVG9rZW5dLFxuICBbJyYmJywgdHMuU3ludGF4S2luZC5BbXBlcnNhbmRBbXBlcnNhbmRUb2tlbl0sXG4gIFsnJicsIHRzLlN5bnRheEtpbmQuQW1wZXJzYW5kVG9rZW5dLFxuICBbJ3wnLCB0cy5TeW50YXhLaW5kLkJhclRva2VuXSxcbl0pO1xuXG4vKipcbiAqIENvbnZlcnQgYW4gYEFTVGAgdG8gVHlwZVNjcmlwdCBjb2RlIGRpcmVjdGx5LCB3aXRob3V0IGdvaW5nIHRocm91Z2ggYW4gaW50ZXJtZWRpYXRlIGBFeHByZXNzaW9uYFxuICogQVNULlxuICovXG5leHBvcnQgZnVuY3Rpb24gYXN0VG9UeXBlc2NyaXB0KFxuICAgIGFzdDogQVNULCBtYXliZVJlc29sdmU6IChhc3Q6IEFTVCkgPT4gKHRzLkV4cHJlc3Npb24gfCBudWxsKSxcbiAgICBjb25maWc6IFR5cGVDaGVja2luZ0NvbmZpZyk6IHRzLkV4cHJlc3Npb24ge1xuICBjb25zdCB0cmFuc2xhdG9yID0gbmV3IEFzdFRyYW5zbGF0b3IobWF5YmVSZXNvbHZlLCBjb25maWcpO1xuICByZXR1cm4gdHJhbnNsYXRvci50cmFuc2xhdGUoYXN0KTtcbn1cblxuY2xhc3MgQXN0VHJhbnNsYXRvciBpbXBsZW1lbnRzIEFzdFZpc2l0b3Ige1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgbWF5YmVSZXNvbHZlOiAoYXN0OiBBU1QpID0+ICh0cy5FeHByZXNzaW9uIHwgbnVsbCksXG4gICAgICBwcml2YXRlIGNvbmZpZzogVHlwZUNoZWNraW5nQ29uZmlnKSB7fVxuXG4gIHRyYW5zbGF0ZShhc3Q6IEFTVCk6IHRzLkV4cHJlc3Npb24ge1xuICAgIC8vIFNraXAgb3ZlciBhbiBgQVNUV2l0aFNvdXJjZWAgYXMgaXRzIGB2aXNpdGAgbWV0aG9kIGNhbGxzIGRpcmVjdGx5IGludG8gaXRzIGFzdCdzIGB2aXNpdGAsXG4gICAgLy8gd2hpY2ggd291bGQgcHJldmVudCBhbnkgY3VzdG9tIHJlc29sdXRpb24gdGhyb3VnaCBgbWF5YmVSZXNvbHZlYCBmb3IgdGhhdCBub2RlLlxuICAgIGlmIChhc3QgaW5zdGFuY2VvZiBBU1RXaXRoU291cmNlKSB7XG4gICAgICBhc3QgPSBhc3QuYXN0O1xuICAgIH1cblxuICAgIC8vIFRoZSBgRW1wdHlFeHByYCBkb2Vzbid0IGhhdmUgYSBkZWRpY2F0ZWQgbWV0aG9kIG9uIGBBc3RWaXNpdG9yYCwgc28gaXQncyBzcGVjaWFsIGNhc2VkIGhlcmUuXG4gICAgaWYgKGFzdCBpbnN0YW5jZW9mIEVtcHR5RXhwcikge1xuICAgICAgcmV0dXJuIFVOREVGSU5FRDtcbiAgICB9XG5cbiAgICAvLyBGaXJzdCBhdHRlbXB0IHRvIGxldCBhbnkgY3VzdG9tIHJlc29sdXRpb24gbG9naWMgcHJvdmlkZSBhIHRyYW5zbGF0aW9uIGZvciB0aGUgZ2l2ZW4gbm9kZS5cbiAgICBjb25zdCByZXNvbHZlZCA9IHRoaXMubWF5YmVSZXNvbHZlKGFzdCk7XG4gICAgaWYgKHJlc29sdmVkICE9PSBudWxsKSB7XG4gICAgICByZXR1cm4gcmVzb2x2ZWQ7XG4gICAgfVxuXG4gICAgcmV0dXJuIGFzdC52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0QmluYXJ5KGFzdDogQmluYXJ5KTogdHMuRXhwcmVzc2lvbiB7XG4gICAgY29uc3QgbGhzID0gd3JhcEZvckRpYWdub3N0aWNzKHRoaXMudHJhbnNsYXRlKGFzdC5sZWZ0KSk7XG4gICAgY29uc3QgcmhzID0gd3JhcEZvckRpYWdub3N0aWNzKHRoaXMudHJhbnNsYXRlKGFzdC5yaWdodCkpO1xuICAgIGNvbnN0IG9wID0gQklOQVJZX09QUy5nZXQoYXN0Lm9wZXJhdGlvbik7XG4gICAgaWYgKG9wID09PSB1bmRlZmluZWQpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihgVW5zdXBwb3J0ZWQgQmluYXJ5Lm9wZXJhdGlvbjogJHthc3Qub3BlcmF0aW9ufWApO1xuICAgIH1cbiAgICBjb25zdCBub2RlID0gdHMuY3JlYXRlQmluYXJ5KGxocywgb3AgYXMgYW55LCByaHMpO1xuICAgIGFkZFBhcnNlU3BhbkluZm8obm9kZSwgYXN0LnNvdXJjZVNwYW4pO1xuICAgIHJldHVybiBub2RlO1xuICB9XG5cbiAgdmlzaXRDaGFpbihhc3Q6IENoYWluKTogdHMuRXhwcmVzc2lvbiB7XG4gICAgY29uc3QgZWxlbWVudHMgPSBhc3QuZXhwcmVzc2lvbnMubWFwKGV4cHIgPT4gdGhpcy50cmFuc2xhdGUoZXhwcikpO1xuICAgIGNvbnN0IG5vZGUgPSB3cmFwRm9yRGlhZ25vc3RpY3ModHMuY3JlYXRlQ29tbWFMaXN0KGVsZW1lbnRzKSk7XG4gICAgYWRkUGFyc2VTcGFuSW5mbyhub2RlLCBhc3Quc291cmNlU3Bhbik7XG4gICAgcmV0dXJuIG5vZGU7XG4gIH1cblxuICB2aXNpdENvbmRpdGlvbmFsKGFzdDogQ29uZGl0aW9uYWwpOiB0cy5FeHByZXNzaW9uIHtcbiAgICBjb25zdCBjb25kRXhwciA9IHRoaXMudHJhbnNsYXRlKGFzdC5jb25kaXRpb24pO1xuICAgIGNvbnN0IHRydWVFeHByID0gdGhpcy50cmFuc2xhdGUoYXN0LnRydWVFeHApO1xuICAgIGNvbnN0IGZhbHNlRXhwciA9IHRoaXMudHJhbnNsYXRlKGFzdC5mYWxzZUV4cCk7XG4gICAgY29uc3Qgbm9kZSA9IHRzLmNyZWF0ZVBhcmVuKHRzLmNyZWF0ZUNvbmRpdGlvbmFsKGNvbmRFeHByLCB0cnVlRXhwciwgZmFsc2VFeHByKSk7XG4gICAgYWRkUGFyc2VTcGFuSW5mbyhub2RlLCBhc3Quc291cmNlU3Bhbik7XG4gICAgcmV0dXJuIG5vZGU7XG4gIH1cblxuICB2aXNpdEZ1bmN0aW9uQ2FsbChhc3Q6IEZ1bmN0aW9uQ2FsbCk6IHRzLkV4cHJlc3Npb24ge1xuICAgIGNvbnN0IHJlY2VpdmVyID0gd3JhcEZvckRpYWdub3N0aWNzKHRoaXMudHJhbnNsYXRlKGFzdC50YXJnZXQhKSk7XG4gICAgY29uc3QgYXJncyA9IGFzdC5hcmdzLm1hcChleHByID0+IHRoaXMudHJhbnNsYXRlKGV4cHIpKTtcbiAgICBjb25zdCBub2RlID0gdHMuY3JlYXRlQ2FsbChyZWNlaXZlciwgdW5kZWZpbmVkLCBhcmdzKTtcbiAgICBhZGRQYXJzZVNwYW5JbmZvKG5vZGUsIGFzdC5zb3VyY2VTcGFuKTtcbiAgICByZXR1cm4gbm9kZTtcbiAgfVxuXG4gIHZpc2l0SW1wbGljaXRSZWNlaXZlcihhc3Q6IEltcGxpY2l0UmVjZWl2ZXIpOiBuZXZlciB7XG4gICAgdGhyb3cgbmV3IEVycm9yKCdNZXRob2Qgbm90IGltcGxlbWVudGVkLicpO1xuICB9XG5cbiAgdmlzaXRJbnRlcnBvbGF0aW9uKGFzdDogSW50ZXJwb2xhdGlvbik6IHRzLkV4cHJlc3Npb24ge1xuICAgIC8vIEJ1aWxkIHVwIGEgY2hhaW4gb2YgYmluYXJ5ICsgb3BlcmF0aW9ucyB0byBzaW11bGF0ZSB0aGUgc3RyaW5nIGNvbmNhdGVuYXRpb24gb2YgdGhlXG4gICAgLy8gaW50ZXJwb2xhdGlvbidzIGV4cHJlc3Npb25zLiBUaGUgY2hhaW4gaXMgc3RhcnRlZCB1c2luZyBhbiBhY3R1YWwgc3RyaW5nIGxpdGVyYWwgdG8gZW5zdXJlXG4gICAgLy8gdGhlIHR5cGUgaXMgaW5mZXJyZWQgYXMgJ3N0cmluZycuXG4gICAgcmV0dXJuIGFzdC5leHByZXNzaW9ucy5yZWR1Y2UoXG4gICAgICAgIChsaHMsIGFzdCkgPT4gdHMuY3JlYXRlQmluYXJ5KGxocywgdHMuU3ludGF4S2luZC5QbHVzVG9rZW4sIHRoaXMudHJhbnNsYXRlKGFzdCkpLFxuICAgICAgICB0cy5jcmVhdGVMaXRlcmFsKCcnKSk7XG4gIH1cblxuICB2aXNpdEtleWVkUmVhZChhc3Q6IEtleWVkUmVhZCk6IHRzLkV4cHJlc3Npb24ge1xuICAgIGNvbnN0IHJlY2VpdmVyID0gd3JhcEZvckRpYWdub3N0aWNzKHRoaXMudHJhbnNsYXRlKGFzdC5vYmopKTtcbiAgICBjb25zdCBrZXkgPSB0aGlzLnRyYW5zbGF0ZShhc3Qua2V5KTtcbiAgICBjb25zdCBub2RlID0gdHMuY3JlYXRlRWxlbWVudEFjY2VzcyhyZWNlaXZlciwga2V5KTtcbiAgICBhZGRQYXJzZVNwYW5JbmZvKG5vZGUsIGFzdC5zb3VyY2VTcGFuKTtcbiAgICByZXR1cm4gbm9kZTtcbiAgfVxuXG4gIHZpc2l0S2V5ZWRXcml0ZShhc3Q6IEtleWVkV3JpdGUpOiB0cy5FeHByZXNzaW9uIHtcbiAgICBjb25zdCByZWNlaXZlciA9IHdyYXBGb3JEaWFnbm9zdGljcyh0aGlzLnRyYW5zbGF0ZShhc3Qub2JqKSk7XG4gICAgY29uc3QgbGVmdCA9IHRzLmNyZWF0ZUVsZW1lbnRBY2Nlc3MocmVjZWl2ZXIsIHRoaXMudHJhbnNsYXRlKGFzdC5rZXkpKTtcbiAgICAvLyBUT0RPKGpvb3N0KTogYW5ub3RhdGUgYGxlZnRgIHdpdGggdGhlIHNwYW4gb2YgdGhlIGVsZW1lbnQgYWNjZXNzLCB3aGljaCBpcyBub3QgY3VycmVudGx5XG4gICAgLy8gIGF2YWlsYWJsZSBvbiBgYXN0YC5cbiAgICBjb25zdCByaWdodCA9IHRoaXMudHJhbnNsYXRlKGFzdC52YWx1ZSk7XG4gICAgY29uc3Qgbm9kZSA9IHdyYXBGb3JEaWFnbm9zdGljcyh0cy5jcmVhdGVCaW5hcnkobGVmdCwgdHMuU3ludGF4S2luZC5FcXVhbHNUb2tlbiwgcmlnaHQpKTtcbiAgICBhZGRQYXJzZVNwYW5JbmZvKG5vZGUsIGFzdC5zb3VyY2VTcGFuKTtcbiAgICByZXR1cm4gbm9kZTtcbiAgfVxuXG4gIHZpc2l0TGl0ZXJhbEFycmF5KGFzdDogTGl0ZXJhbEFycmF5KTogdHMuRXhwcmVzc2lvbiB7XG4gICAgY29uc3QgZWxlbWVudHMgPSBhc3QuZXhwcmVzc2lvbnMubWFwKGV4cHIgPT4gdGhpcy50cmFuc2xhdGUoZXhwcikpO1xuICAgIGNvbnN0IGxpdGVyYWwgPSB0cy5jcmVhdGVBcnJheUxpdGVyYWwoZWxlbWVudHMpO1xuICAgIC8vIElmIHN0cmljdExpdGVyYWxUeXBlcyBpcyBkaXNhYmxlZCwgYXJyYXkgbGl0ZXJhbHMgYXJlIGNhc3QgdG8gYGFueWAuXG4gICAgY29uc3Qgbm9kZSA9IHRoaXMuY29uZmlnLnN0cmljdExpdGVyYWxUeXBlcyA/IGxpdGVyYWwgOiB0c0Nhc3RUb0FueShsaXRlcmFsKTtcbiAgICBhZGRQYXJzZVNwYW5JbmZvKG5vZGUsIGFzdC5zb3VyY2VTcGFuKTtcbiAgICByZXR1cm4gbm9kZTtcbiAgfVxuXG4gIHZpc2l0TGl0ZXJhbE1hcChhc3Q6IExpdGVyYWxNYXApOiB0cy5FeHByZXNzaW9uIHtcbiAgICBjb25zdCBwcm9wZXJ0aWVzID0gYXN0LmtleXMubWFwKCh7a2V5fSwgaWR4KSA9PiB7XG4gICAgICBjb25zdCB2YWx1ZSA9IHRoaXMudHJhbnNsYXRlKGFzdC52YWx1ZXNbaWR4XSk7XG4gICAgICByZXR1cm4gdHMuY3JlYXRlUHJvcGVydHlBc3NpZ25tZW50KHRzLmNyZWF0ZVN0cmluZ0xpdGVyYWwoa2V5KSwgdmFsdWUpO1xuICAgIH0pO1xuICAgIGNvbnN0IGxpdGVyYWwgPSB0cy5jcmVhdGVPYmplY3RMaXRlcmFsKHByb3BlcnRpZXMsIHRydWUpO1xuICAgIC8vIElmIHN0cmljdExpdGVyYWxUeXBlcyBpcyBkaXNhYmxlZCwgb2JqZWN0IGxpdGVyYWxzIGFyZSBjYXN0IHRvIGBhbnlgLlxuICAgIGNvbnN0IG5vZGUgPSB0aGlzLmNvbmZpZy5zdHJpY3RMaXRlcmFsVHlwZXMgPyBsaXRlcmFsIDogdHNDYXN0VG9BbnkobGl0ZXJhbCk7XG4gICAgYWRkUGFyc2VTcGFuSW5mbyhub2RlLCBhc3Quc291cmNlU3Bhbik7XG4gICAgcmV0dXJuIG5vZGU7XG4gIH1cblxuICB2aXNpdExpdGVyYWxQcmltaXRpdmUoYXN0OiBMaXRlcmFsUHJpbWl0aXZlKTogdHMuRXhwcmVzc2lvbiB7XG4gICAgbGV0IG5vZGU6IHRzLkV4cHJlc3Npb247XG4gICAgaWYgKGFzdC52YWx1ZSA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICBub2RlID0gdHMuY3JlYXRlSWRlbnRpZmllcigndW5kZWZpbmVkJyk7XG4gICAgfSBlbHNlIGlmIChhc3QudmFsdWUgPT09IG51bGwpIHtcbiAgICAgIG5vZGUgPSB0cy5jcmVhdGVOdWxsKCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIG5vZGUgPSB0cy5jcmVhdGVMaXRlcmFsKGFzdC52YWx1ZSk7XG4gICAgfVxuICAgIGFkZFBhcnNlU3BhbkluZm8obm9kZSwgYXN0LnNvdXJjZVNwYW4pO1xuICAgIHJldHVybiBub2RlO1xuICB9XG5cbiAgdmlzaXRNZXRob2RDYWxsKGFzdDogTWV0aG9kQ2FsbCk6IHRzLkV4cHJlc3Npb24ge1xuICAgIGNvbnN0IHJlY2VpdmVyID0gd3JhcEZvckRpYWdub3N0aWNzKHRoaXMudHJhbnNsYXRlKGFzdC5yZWNlaXZlcikpO1xuICAgIGNvbnN0IG1ldGhvZCA9IHRzLmNyZWF0ZVByb3BlcnR5QWNjZXNzKHJlY2VpdmVyLCBhc3QubmFtZSk7XG4gICAgYWRkUGFyc2VTcGFuSW5mbyhtZXRob2QsIGFzdC5uYW1lU3Bhbik7XG4gICAgY29uc3QgYXJncyA9IGFzdC5hcmdzLm1hcChleHByID0+IHRoaXMudHJhbnNsYXRlKGV4cHIpKTtcbiAgICBjb25zdCBub2RlID0gdHMuY3JlYXRlQ2FsbChtZXRob2QsIHVuZGVmaW5lZCwgYXJncyk7XG4gICAgYWRkUGFyc2VTcGFuSW5mbyhub2RlLCBhc3Quc291cmNlU3Bhbik7XG4gICAgcmV0dXJuIG5vZGU7XG4gIH1cblxuICB2aXNpdE5vbk51bGxBc3NlcnQoYXN0OiBOb25OdWxsQXNzZXJ0KTogdHMuRXhwcmVzc2lvbiB7XG4gICAgY29uc3QgZXhwciA9IHdyYXBGb3JEaWFnbm9zdGljcyh0aGlzLnRyYW5zbGF0ZShhc3QuZXhwcmVzc2lvbikpO1xuICAgIGNvbnN0IG5vZGUgPSB0cy5jcmVhdGVOb25OdWxsRXhwcmVzc2lvbihleHByKTtcbiAgICBhZGRQYXJzZVNwYW5JbmZvKG5vZGUsIGFzdC5zb3VyY2VTcGFuKTtcbiAgICByZXR1cm4gbm9kZTtcbiAgfVxuXG4gIHZpc2l0UGlwZShhc3Q6IEJpbmRpbmdQaXBlKTogbmV2ZXIge1xuICAgIHRocm93IG5ldyBFcnJvcignTWV0aG9kIG5vdCBpbXBsZW1lbnRlZC4nKTtcbiAgfVxuXG4gIHZpc2l0UHJlZml4Tm90KGFzdDogUHJlZml4Tm90KTogdHMuRXhwcmVzc2lvbiB7XG4gICAgY29uc3QgZXhwcmVzc2lvbiA9IHdyYXBGb3JEaWFnbm9zdGljcyh0aGlzLnRyYW5zbGF0ZShhc3QuZXhwcmVzc2lvbikpO1xuICAgIGNvbnN0IG5vZGUgPSB0cy5jcmVhdGVMb2dpY2FsTm90KGV4cHJlc3Npb24pO1xuICAgIGFkZFBhcnNlU3BhbkluZm8obm9kZSwgYXN0LnNvdXJjZVNwYW4pO1xuICAgIHJldHVybiBub2RlO1xuICB9XG5cbiAgdmlzaXRQcm9wZXJ0eVJlYWQoYXN0OiBQcm9wZXJ0eVJlYWQpOiB0cy5FeHByZXNzaW9uIHtcbiAgICAvLyBUaGlzIGlzIGEgbm9ybWFsIHByb3BlcnR5IHJlYWQgLSBjb252ZXJ0IHRoZSByZWNlaXZlciB0byBhbiBleHByZXNzaW9uIGFuZCBlbWl0IHRoZSBjb3JyZWN0XG4gICAgLy8gVHlwZVNjcmlwdCBleHByZXNzaW9uIHRvIHJlYWQgdGhlIHByb3BlcnR5LlxuICAgIGNvbnN0IHJlY2VpdmVyID0gd3JhcEZvckRpYWdub3N0aWNzKHRoaXMudHJhbnNsYXRlKGFzdC5yZWNlaXZlcikpO1xuICAgIGNvbnN0IG5hbWUgPSB0cy5jcmVhdGVQcm9wZXJ0eUFjY2VzcyhyZWNlaXZlciwgYXN0Lm5hbWUpO1xuICAgIGFkZFBhcnNlU3BhbkluZm8obmFtZSwgYXN0Lm5hbWVTcGFuKTtcbiAgICBjb25zdCBub2RlID0gd3JhcEZvckRpYWdub3N0aWNzKG5hbWUpO1xuICAgIGFkZFBhcnNlU3BhbkluZm8obm9kZSwgYXN0LnNvdXJjZVNwYW4pO1xuICAgIHJldHVybiBub2RlO1xuICB9XG5cbiAgdmlzaXRQcm9wZXJ0eVdyaXRlKGFzdDogUHJvcGVydHlXcml0ZSk6IHRzLkV4cHJlc3Npb24ge1xuICAgIGNvbnN0IHJlY2VpdmVyID0gd3JhcEZvckRpYWdub3N0aWNzKHRoaXMudHJhbnNsYXRlKGFzdC5yZWNlaXZlcikpO1xuICAgIGNvbnN0IGxlZnQgPSB0cy5jcmVhdGVQcm9wZXJ0eUFjY2VzcyhyZWNlaXZlciwgYXN0Lm5hbWUpO1xuICAgIGFkZFBhcnNlU3BhbkluZm8obGVmdCwgYXN0Lm5hbWVTcGFuKTtcbiAgICAvLyBUeXBlU2NyaXB0IHJlcG9ydHMgYXNzaWdubWVudCBlcnJvcnMgb24gdGhlIGVudGlyZSBsdmFsdWUgZXhwcmVzc2lvbi4gQW5ub3RhdGUgdGhlIGx2YWx1ZSBvZlxuICAgIC8vIHRoZSBhc3NpZ25tZW50IHdpdGggdGhlIHNvdXJjZVNwYW4sIHdoaWNoIGluY2x1ZGVzIHJlY2VpdmVycywgcmF0aGVyIHRoYW4gbmFtZVNwYW4gZm9yXG4gICAgLy8gY29uc2lzdGVuY3kgb2YgdGhlIGRpYWdub3N0aWMgbG9jYXRpb24uXG4gICAgLy8gYS5iLmMgPSAxXG4gICAgLy8gXl5eXl5eXl5eIHNvdXJjZVNwYW5cbiAgICAvLyAgICAgXiAgICAgbmFtZVNwYW5cbiAgICBjb25zdCBsZWZ0V2l0aFBhdGggPSB3cmFwRm9yRGlhZ25vc3RpY3MobGVmdCk7XG4gICAgYWRkUGFyc2VTcGFuSW5mbyhsZWZ0V2l0aFBhdGgsIGFzdC5zb3VyY2VTcGFuKTtcbiAgICBjb25zdCByaWdodCA9IHRoaXMudHJhbnNsYXRlKGFzdC52YWx1ZSk7XG4gICAgY29uc3Qgbm9kZSA9XG4gICAgICAgIHdyYXBGb3JEaWFnbm9zdGljcyh0cy5jcmVhdGVCaW5hcnkobGVmdFdpdGhQYXRoLCB0cy5TeW50YXhLaW5kLkVxdWFsc1Rva2VuLCByaWdodCkpO1xuICAgIGFkZFBhcnNlU3BhbkluZm8obm9kZSwgYXN0LnNvdXJjZVNwYW4pO1xuICAgIHJldHVybiBub2RlO1xuICB9XG5cbiAgdmlzaXRRdW90ZShhc3Q6IFF1b3RlKTogdHMuRXhwcmVzc2lvbiB7XG4gICAgcmV0dXJuIE5VTExfQVNfQU5ZO1xuICB9XG5cbiAgdmlzaXRTYWZlTWV0aG9kQ2FsbChhc3Q6IFNhZmVNZXRob2RDYWxsKTogdHMuRXhwcmVzc2lvbiB7XG4gICAgLy8gU2VlIHRoZSBjb21tZW50cyBpbiBTYWZlUHJvcGVydHlSZWFkIGFib3ZlIGZvciBhbiBleHBsYW5hdGlvbiBvZiB0aGUgY2FzZXMgaGVyZS5cbiAgICBsZXQgbm9kZTogdHMuRXhwcmVzc2lvbjtcbiAgICBjb25zdCByZWNlaXZlciA9IHdyYXBGb3JEaWFnbm9zdGljcyh0aGlzLnRyYW5zbGF0ZShhc3QucmVjZWl2ZXIpKTtcbiAgICBjb25zdCBhcmdzID0gYXN0LmFyZ3MubWFwKGV4cHIgPT4gdGhpcy50cmFuc2xhdGUoZXhwcikpO1xuICAgIGlmICh0aGlzLmNvbmZpZy5zdHJpY3RTYWZlTmF2aWdhdGlvblR5cGVzKSB7XG4gICAgICAvLyBcImE/Lm1ldGhvZCguLi4pXCIgYmVjb21lcyAobnVsbCBhcyBhbnkgPyBhIS5tZXRob2QoLi4uKSA6IHVuZGVmaW5lZClcbiAgICAgIGNvbnN0IG1ldGhvZCA9IHRzLmNyZWF0ZVByb3BlcnR5QWNjZXNzKHRzLmNyZWF0ZU5vbk51bGxFeHByZXNzaW9uKHJlY2VpdmVyKSwgYXN0Lm5hbWUpO1xuICAgICAgYWRkUGFyc2VTcGFuSW5mbyhtZXRob2QsIGFzdC5uYW1lU3Bhbik7XG4gICAgICBjb25zdCBjYWxsID0gdHMuY3JlYXRlQ2FsbChtZXRob2QsIHVuZGVmaW5lZCwgYXJncyk7XG4gICAgICBub2RlID0gdHMuY3JlYXRlUGFyZW4odHMuY3JlYXRlQ29uZGl0aW9uYWwoTlVMTF9BU19BTlksIGNhbGwsIFVOREVGSU5FRCkpO1xuICAgIH0gZWxzZSBpZiAoVmVTYWZlTGhzSW5mZXJlbmNlQnVnRGV0ZWN0b3IudmVXaWxsSW5mZXJBbnlGb3IoYXN0KSkge1xuICAgICAgLy8gXCJhPy5tZXRob2QoLi4uKVwiIGJlY29tZXMgKGEgYXMgYW55KS5tZXRob2QoLi4uKVxuICAgICAgY29uc3QgbWV0aG9kID0gdHMuY3JlYXRlUHJvcGVydHlBY2Nlc3ModHNDYXN0VG9BbnkocmVjZWl2ZXIpLCBhc3QubmFtZSk7XG4gICAgICBhZGRQYXJzZVNwYW5JbmZvKG1ldGhvZCwgYXN0Lm5hbWVTcGFuKTtcbiAgICAgIG5vZGUgPSB0cy5jcmVhdGVDYWxsKG1ldGhvZCwgdW5kZWZpbmVkLCBhcmdzKTtcbiAgICB9IGVsc2Uge1xuICAgICAgLy8gXCJhPy5tZXRob2QoLi4uKVwiIGJlY29tZXMgKGEhLm1ldGhvZCguLi4pIGFzIGFueSlcbiAgICAgIGNvbnN0IG1ldGhvZCA9IHRzLmNyZWF0ZVByb3BlcnR5QWNjZXNzKHRzLmNyZWF0ZU5vbk51bGxFeHByZXNzaW9uKHJlY2VpdmVyKSwgYXN0Lm5hbWUpO1xuICAgICAgYWRkUGFyc2VTcGFuSW5mbyhtZXRob2QsIGFzdC5uYW1lU3Bhbik7XG4gICAgICBub2RlID0gdHNDYXN0VG9BbnkodHMuY3JlYXRlQ2FsbChtZXRob2QsIHVuZGVmaW5lZCwgYXJncykpO1xuICAgIH1cbiAgICBhZGRQYXJzZVNwYW5JbmZvKG5vZGUsIGFzdC5zb3VyY2VTcGFuKTtcbiAgICByZXR1cm4gbm9kZTtcbiAgfVxuXG4gIHZpc2l0U2FmZVByb3BlcnR5UmVhZChhc3Q6IFNhZmVQcm9wZXJ0eVJlYWQpOiB0cy5FeHByZXNzaW9uIHtcbiAgICBsZXQgbm9kZTogdHMuRXhwcmVzc2lvbjtcbiAgICBjb25zdCByZWNlaXZlciA9IHdyYXBGb3JEaWFnbm9zdGljcyh0aGlzLnRyYW5zbGF0ZShhc3QucmVjZWl2ZXIpKTtcbiAgICAvLyBUaGUgZm9ybSBvZiBzYWZlIHByb3BlcnR5IHJlYWRzIGRlcGVuZHMgb24gd2hldGhlciBzdHJpY3RuZXNzIGlzIGluIHVzZS5cbiAgICBpZiAodGhpcy5jb25maWcuc3RyaWN0U2FmZU5hdmlnYXRpb25UeXBlcykge1xuICAgICAgLy8gQmFzaWNhbGx5LCB0aGUgcmV0dXJuIGhlcmUgaXMgZWl0aGVyIHRoZSB0eXBlIG9mIHRoZSBjb21wbGV0ZSBleHByZXNzaW9uIHdpdGggYSBudWxsLXNhZmVcbiAgICAgIC8vIHByb3BlcnR5IHJlYWQsIG9yIGB1bmRlZmluZWRgLiBTbyBhIHRlcm5hcnkgaXMgdXNlZCB0byBjcmVhdGUgYW4gXCJvclwiIHR5cGU6XG4gICAgICAvLyBcImE/LmJcIiBiZWNvbWVzIChudWxsIGFzIGFueSA/IGEhLmIgOiB1bmRlZmluZWQpXG4gICAgICAvLyBUaGUgdHlwZSBvZiB0aGlzIGV4cHJlc3Npb24gaXMgKHR5cGVvZiBhIS5iKSB8IHVuZGVmaW5lZCwgd2hpY2ggaXMgZXhhY3RseSBhcyBkZXNpcmVkLlxuICAgICAgY29uc3QgZXhwciA9IHRzLmNyZWF0ZVByb3BlcnR5QWNjZXNzKHRzLmNyZWF0ZU5vbk51bGxFeHByZXNzaW9uKHJlY2VpdmVyKSwgYXN0Lm5hbWUpO1xuICAgICAgbm9kZSA9IHRzLmNyZWF0ZVBhcmVuKHRzLmNyZWF0ZUNvbmRpdGlvbmFsKE5VTExfQVNfQU5ZLCBleHByLCBVTkRFRklORUQpKTtcbiAgICB9IGVsc2UgaWYgKFZlU2FmZUxoc0luZmVyZW5jZUJ1Z0RldGVjdG9yLnZlV2lsbEluZmVyQW55Rm9yKGFzdCkpIHtcbiAgICAgIC8vIEVtdWxhdGUgYSBWaWV3IEVuZ2luZSBidWcgd2hlcmUgJ2FueScgaXMgaW5mZXJyZWQgZm9yIHRoZSBsZWZ0LWhhbmQgc2lkZSBvZiB0aGUgc2FmZVxuICAgICAgLy8gbmF2aWdhdGlvbiBvcGVyYXRpb24uIFdpdGggdGhpcyBidWcsIHRoZSB0eXBlIG9mIHRoZSBsZWZ0LWhhbmQgc2lkZSBpcyByZWdhcmRlZCBhcyBhbnkuXG4gICAgICAvLyBUaGVyZWZvcmUsIHRoZSBsZWZ0LWhhbmQgc2lkZSBvbmx5IG5lZWRzIHJlcGVhdGluZyBpbiB0aGUgb3V0cHV0ICh0byB2YWxpZGF0ZSBpdCksIGFuZCB0aGVuXG4gICAgICAvLyAnYW55JyBpcyB1c2VkIGZvciB0aGUgcmVzdCBvZiB0aGUgZXhwcmVzc2lvbi4gVGhpcyBpcyBkb25lIHVzaW5nIGEgY29tbWEgb3BlcmF0b3I6XG4gICAgICAvLyBcImE/LmJcIiBiZWNvbWVzIChhIGFzIGFueSkuYiwgd2hpY2ggd2lsbCBvZiBjb3Vyc2UgaGF2ZSB0eXBlICdhbnknLlxuICAgICAgbm9kZSA9IHRzLmNyZWF0ZVByb3BlcnR5QWNjZXNzKHRzQ2FzdFRvQW55KHJlY2VpdmVyKSwgYXN0Lm5hbWUpO1xuICAgIH0gZWxzZSB7XG4gICAgICAvLyBUaGUgVmlldyBFbmdpbmUgYnVnIGlzbid0IGFjdGl2ZSwgc28gY2hlY2sgdGhlIGVudGlyZSB0eXBlIG9mIHRoZSBleHByZXNzaW9uLCBidXQgdGhlIGZpbmFsXG4gICAgICAvLyByZXN1bHQgaXMgc3RpbGwgaW5mZXJyZWQgYXMgYGFueWAuXG4gICAgICAvLyBcImE/LmJcIiBiZWNvbWVzIChhIS5iIGFzIGFueSlcbiAgICAgIGNvbnN0IGV4cHIgPSB0cy5jcmVhdGVQcm9wZXJ0eUFjY2Vzcyh0cy5jcmVhdGVOb25OdWxsRXhwcmVzc2lvbihyZWNlaXZlciksIGFzdC5uYW1lKTtcbiAgICAgIG5vZGUgPSB0c0Nhc3RUb0FueShleHByKTtcbiAgICB9XG4gICAgYWRkUGFyc2VTcGFuSW5mbyhub2RlLCBhc3Quc291cmNlU3Bhbik7XG4gICAgcmV0dXJuIG5vZGU7XG4gIH1cbn1cblxuLyoqXG4gKiBDaGVja3Mgd2hldGhlciBWaWV3IEVuZ2luZSB3aWxsIGluZmVyIGEgdHlwZSBvZiAnYW55JyBmb3IgdGhlIGxlZnQtaGFuZCBzaWRlIG9mIGEgc2FmZSBuYXZpZ2F0aW9uXG4gKiBvcGVyYXRpb24uXG4gKlxuICogSW4gVmlldyBFbmdpbmUncyB0ZW1wbGF0ZSB0eXBlLWNoZWNrZXIsIGNlcnRhaW4gcmVjZWl2ZXJzIG9mIHNhZmUgbmF2aWdhdGlvbiBvcGVyYXRpb25zIHdpbGxcbiAqIGNhdXNlIGEgdGVtcG9yYXJ5IHZhcmlhYmxlIHRvIGJlIGFsbG9jYXRlZCBhcyBwYXJ0IG9mIHRoZSBjaGVja2luZyBleHByZXNzaW9uLCB0byBzYXZlIHRoZSB2YWx1ZVxuICogb2YgdGhlIHJlY2VpdmVyIGFuZCB1c2UgaXQgbW9yZSB0aGFuIG9uY2UgaW4gdGhlIGV4cHJlc3Npb24uIFRoaXMgdGVtcG9yYXJ5IHZhcmlhYmxlIGhhcyB0eXBlXG4gKiAnYW55Jy4gSW4gcHJhY3RpY2UsIHRoaXMgbWVhbnMgY2VydGFpbiByZWNlaXZlcnMgY2F1c2UgVmlldyBFbmdpbmUgdG8gbm90IGNoZWNrIHRoZSBmdWxsXG4gKiBleHByZXNzaW9uLCBhbmQgb3RoZXIgcmVjZWl2ZXJzIHdpbGwgcmVjZWl2ZSBtb3JlIGNvbXBsZXRlIGNoZWNraW5nLlxuICpcbiAqIEZvciBjb21wYXRpYmlsaXR5LCB0aGlzIGxvZ2ljIGlzIGFkYXB0ZWQgZnJvbSBWaWV3IEVuZ2luZSdzIGV4cHJlc3Npb25fY29udmVydGVyLnRzIHNvIHRoYXQgdGhlXG4gKiBJdnkgY2hlY2tlciBjYW4gZW11bGF0ZSB0aGlzIGJ1ZyB3aGVuIG5lZWRlZC5cbiAqL1xuY2xhc3MgVmVTYWZlTGhzSW5mZXJlbmNlQnVnRGV0ZWN0b3IgaW1wbGVtZW50cyBBc3RWaXNpdG9yIHtcbiAgcHJpdmF0ZSBzdGF0aWMgU0lOR0xFVE9OID0gbmV3IFZlU2FmZUxoc0luZmVyZW5jZUJ1Z0RldGVjdG9yKCk7XG5cbiAgc3RhdGljIHZlV2lsbEluZmVyQW55Rm9yKGFzdDogU2FmZU1ldGhvZENhbGx8U2FmZVByb3BlcnR5UmVhZCkge1xuICAgIHJldHVybiBhc3QucmVjZWl2ZXIudmlzaXQoVmVTYWZlTGhzSW5mZXJlbmNlQnVnRGV0ZWN0b3IuU0lOR0xFVE9OKTtcbiAgfVxuXG4gIHZpc2l0QmluYXJ5KGFzdDogQmluYXJ5KTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGFzdC5sZWZ0LnZpc2l0KHRoaXMpIHx8IGFzdC5yaWdodC52aXNpdCh0aGlzKTtcbiAgfVxuICB2aXNpdENoYWluKGFzdDogQ2hhaW4pOiBib29sZWFuIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cbiAgdmlzaXRDb25kaXRpb25hbChhc3Q6IENvbmRpdGlvbmFsKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGFzdC5jb25kaXRpb24udmlzaXQodGhpcykgfHwgYXN0LnRydWVFeHAudmlzaXQodGhpcykgfHwgYXN0LmZhbHNlRXhwLnZpc2l0KHRoaXMpO1xuICB9XG4gIHZpc2l0RnVuY3Rpb25DYWxsKGFzdDogRnVuY3Rpb25DYWxsKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRydWU7XG4gIH1cbiAgdmlzaXRJbXBsaWNpdFJlY2VpdmVyKGFzdDogSW1wbGljaXRSZWNlaXZlcik6IGJvb2xlYW4ge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuICB2aXNpdEludGVycG9sYXRpb24oYXN0OiBJbnRlcnBvbGF0aW9uKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGFzdC5leHByZXNzaW9ucy5zb21lKGV4cCA9PiBleHAudmlzaXQodGhpcykpO1xuICB9XG4gIHZpc2l0S2V5ZWRSZWFkKGFzdDogS2V5ZWRSZWFkKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG4gIHZpc2l0S2V5ZWRXcml0ZShhc3Q6IEtleWVkV3JpdGUpOiBib29sZWFuIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cbiAgdmlzaXRMaXRlcmFsQXJyYXkoYXN0OiBMaXRlcmFsQXJyYXkpOiBib29sZWFuIHtcbiAgICByZXR1cm4gdHJ1ZTtcbiAgfVxuICB2aXNpdExpdGVyYWxNYXAoYXN0OiBMaXRlcmFsTWFwKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRydWU7XG4gIH1cbiAgdmlzaXRMaXRlcmFsUHJpbWl0aXZlKGFzdDogTGl0ZXJhbFByaW1pdGl2ZSk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuICB2aXNpdE1ldGhvZENhbGwoYXN0OiBNZXRob2RDYWxsKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRydWU7XG4gIH1cbiAgdmlzaXRQaXBlKGFzdDogQmluZGluZ1BpcGUpOiBib29sZWFuIHtcbiAgICByZXR1cm4gdHJ1ZTtcbiAgfVxuICB2aXNpdFByZWZpeE5vdChhc3Q6IFByZWZpeE5vdCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBhc3QuZXhwcmVzc2lvbi52aXNpdCh0aGlzKTtcbiAgfVxuICB2aXNpdE5vbk51bGxBc3NlcnQoYXN0OiBQcmVmaXhOb3QpOiBib29sZWFuIHtcbiAgICByZXR1cm4gYXN0LmV4cHJlc3Npb24udmlzaXQodGhpcyk7XG4gIH1cbiAgdmlzaXRQcm9wZXJ0eVJlYWQoYXN0OiBQcm9wZXJ0eVJlYWQpOiBib29sZWFuIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cbiAgdmlzaXRQcm9wZXJ0eVdyaXRlKGFzdDogUHJvcGVydHlXcml0ZSk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuICB2aXNpdFF1b3RlKGFzdDogUXVvdGUpOiBib29sZWFuIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cbiAgdmlzaXRTYWZlTWV0aG9kQ2FsbChhc3Q6IFNhZmVNZXRob2RDYWxsKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRydWU7XG4gIH1cbiAgdmlzaXRTYWZlUHJvcGVydHlSZWFkKGFzdDogU2FmZVByb3BlcnR5UmVhZCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxufVxuIl19