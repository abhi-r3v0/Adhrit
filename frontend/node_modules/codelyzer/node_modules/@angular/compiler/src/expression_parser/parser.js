/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
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
        define("@angular/compiler/src/expression_parser/parser", ["require", "exports", "tslib", "@angular/compiler/src/chars", "@angular/compiler/src/ml_parser/interpolation_config", "@angular/compiler/src/util", "@angular/compiler/src/expression_parser/ast", "@angular/compiler/src/expression_parser/lexer"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    var chars = require("@angular/compiler/src/chars");
    var interpolation_config_1 = require("@angular/compiler/src/ml_parser/interpolation_config");
    var util_1 = require("@angular/compiler/src/util");
    var ast_1 = require("@angular/compiler/src/expression_parser/ast");
    var lexer_1 = require("@angular/compiler/src/expression_parser/lexer");
    var SplitInterpolation = /** @class */ (function () {
        function SplitInterpolation(strings, expressions, offsets) {
            this.strings = strings;
            this.expressions = expressions;
            this.offsets = offsets;
        }
        return SplitInterpolation;
    }());
    exports.SplitInterpolation = SplitInterpolation;
    var TemplateBindingParseResult = /** @class */ (function () {
        function TemplateBindingParseResult(templateBindings, warnings, errors) {
            this.templateBindings = templateBindings;
            this.warnings = warnings;
            this.errors = errors;
        }
        return TemplateBindingParseResult;
    }());
    exports.TemplateBindingParseResult = TemplateBindingParseResult;
    var defaultInterpolateRegExp = _createInterpolateRegExp(interpolation_config_1.DEFAULT_INTERPOLATION_CONFIG);
    function _getInterpolateRegExp(config) {
        if (config === interpolation_config_1.DEFAULT_INTERPOLATION_CONFIG) {
            return defaultInterpolateRegExp;
        }
        else {
            return _createInterpolateRegExp(config);
        }
    }
    function _createInterpolateRegExp(config) {
        var pattern = util_1.escapeRegExp(config.start) + '([\\s\\S]*?)' + util_1.escapeRegExp(config.end);
        return new RegExp(pattern, 'g');
    }
    var Parser = /** @class */ (function () {
        function Parser(_lexer) {
            this._lexer = _lexer;
            this.errors = [];
            this.simpleExpressionChecker = SimpleExpressionChecker;
        }
        Parser.prototype.parseAction = function (input, location, absoluteOffset, interpolationConfig) {
            if (interpolationConfig === void 0) { interpolationConfig = interpolation_config_1.DEFAULT_INTERPOLATION_CONFIG; }
            this._checkNoInterpolation(input, location, interpolationConfig);
            var sourceToLex = this._stripComments(input);
            var tokens = this._lexer.tokenize(this._stripComments(input));
            var ast = new _ParseAST(input, location, absoluteOffset, tokens, sourceToLex.length, true, this.errors, input.length - sourceToLex.length)
                .parseChain();
            return new ast_1.ASTWithSource(ast, input, location, absoluteOffset, this.errors);
        };
        Parser.prototype.parseBinding = function (input, location, absoluteOffset, interpolationConfig) {
            if (interpolationConfig === void 0) { interpolationConfig = interpolation_config_1.DEFAULT_INTERPOLATION_CONFIG; }
            var ast = this._parseBindingAst(input, location, absoluteOffset, interpolationConfig);
            return new ast_1.ASTWithSource(ast, input, location, absoluteOffset, this.errors);
        };
        Parser.prototype.checkSimpleExpression = function (ast) {
            var checker = new this.simpleExpressionChecker();
            ast.visit(checker);
            return checker.errors;
        };
        Parser.prototype.parseSimpleBinding = function (input, location, absoluteOffset, interpolationConfig) {
            if (interpolationConfig === void 0) { interpolationConfig = interpolation_config_1.DEFAULT_INTERPOLATION_CONFIG; }
            var ast = this._parseBindingAst(input, location, absoluteOffset, interpolationConfig);
            var errors = this.checkSimpleExpression(ast);
            if (errors.length > 0) {
                this._reportError("Host binding expression cannot contain " + errors.join(' '), input, location);
            }
            return new ast_1.ASTWithSource(ast, input, location, absoluteOffset, this.errors);
        };
        Parser.prototype._reportError = function (message, input, errLocation, ctxLocation) {
            this.errors.push(new ast_1.ParserError(message, input, errLocation, ctxLocation));
        };
        Parser.prototype._parseBindingAst = function (input, location, absoluteOffset, interpolationConfig) {
            // Quotes expressions use 3rd-party expression language. We don't want to use
            // our lexer or parser for that, so we check for that ahead of time.
            var quote = this._parseQuote(input, location, absoluteOffset);
            if (quote != null) {
                return quote;
            }
            this._checkNoInterpolation(input, location, interpolationConfig);
            var sourceToLex = this._stripComments(input);
            var tokens = this._lexer.tokenize(sourceToLex);
            return new _ParseAST(input, location, absoluteOffset, tokens, sourceToLex.length, false, this.errors, input.length - sourceToLex.length)
                .parseChain();
        };
        Parser.prototype._parseQuote = function (input, location, absoluteOffset) {
            if (input == null)
                return null;
            var prefixSeparatorIndex = input.indexOf(':');
            if (prefixSeparatorIndex == -1)
                return null;
            var prefix = input.substring(0, prefixSeparatorIndex).trim();
            if (!lexer_1.isIdentifier(prefix))
                return null;
            var uninterpretedExpression = input.substring(prefixSeparatorIndex + 1);
            var span = new ast_1.ParseSpan(0, input.length);
            return new ast_1.Quote(span, span.toAbsolute(absoluteOffset), prefix, uninterpretedExpression, location);
        };
        Parser.prototype.parseTemplateBindings = function (tplKey, tplValue, location, absoluteOffset) {
            var tokens = this._lexer.tokenize(tplValue);
            return new _ParseAST(tplValue, location, absoluteOffset, tokens, tplValue.length, false, this.errors, 0)
                .parseTemplateBindings(tplKey);
        };
        Parser.prototype.parseInterpolation = function (input, location, absoluteOffset, interpolationConfig) {
            if (interpolationConfig === void 0) { interpolationConfig = interpolation_config_1.DEFAULT_INTERPOLATION_CONFIG; }
            var split = this.splitInterpolation(input, location, interpolationConfig);
            if (split == null)
                return null;
            var expressions = [];
            for (var i = 0; i < split.expressions.length; ++i) {
                var expressionText = split.expressions[i];
                var sourceToLex = this._stripComments(expressionText);
                var tokens = this._lexer.tokenize(sourceToLex);
                var ast = new _ParseAST(input, location, absoluteOffset, tokens, sourceToLex.length, false, this.errors, split.offsets[i] + (expressionText.length - sourceToLex.length))
                    .parseChain();
                expressions.push(ast);
            }
            var span = new ast_1.ParseSpan(0, input == null ? 0 : input.length);
            return new ast_1.ASTWithSource(new ast_1.Interpolation(span, span.toAbsolute(absoluteOffset), split.strings, expressions), input, location, absoluteOffset, this.errors);
        };
        Parser.prototype.splitInterpolation = function (input, location, interpolationConfig) {
            if (interpolationConfig === void 0) { interpolationConfig = interpolation_config_1.DEFAULT_INTERPOLATION_CONFIG; }
            var regexp = _getInterpolateRegExp(interpolationConfig);
            var parts = input.split(regexp);
            if (parts.length <= 1) {
                return null;
            }
            var strings = [];
            var expressions = [];
            var offsets = [];
            var offset = 0;
            for (var i = 0; i < parts.length; i++) {
                var part = parts[i];
                if (i % 2 === 0) {
                    // fixed string
                    strings.push(part);
                    offset += part.length;
                }
                else if (part.trim().length > 0) {
                    offset += interpolationConfig.start.length;
                    expressions.push(part);
                    offsets.push(offset);
                    offset += part.length + interpolationConfig.end.length;
                }
                else {
                    this._reportError('Blank expressions are not allowed in interpolated strings', input, "at column " + this._findInterpolationErrorColumn(parts, i, interpolationConfig) + " in", location);
                    expressions.push('$implicit');
                    offsets.push(offset);
                }
            }
            return new SplitInterpolation(strings, expressions, offsets);
        };
        Parser.prototype.wrapLiteralPrimitive = function (input, location, absoluteOffset) {
            var span = new ast_1.ParseSpan(0, input == null ? 0 : input.length);
            return new ast_1.ASTWithSource(new ast_1.LiteralPrimitive(span, span.toAbsolute(absoluteOffset), input), input, location, absoluteOffset, this.errors);
        };
        Parser.prototype._stripComments = function (input) {
            var i = this._commentStart(input);
            return i != null ? input.substring(0, i).trim() : input;
        };
        Parser.prototype._commentStart = function (input) {
            var outerQuote = null;
            for (var i = 0; i < input.length - 1; i++) {
                var char = input.charCodeAt(i);
                var nextChar = input.charCodeAt(i + 1);
                if (char === chars.$SLASH && nextChar == chars.$SLASH && outerQuote == null)
                    return i;
                if (outerQuote === char) {
                    outerQuote = null;
                }
                else if (outerQuote == null && lexer_1.isQuote(char)) {
                    outerQuote = char;
                }
            }
            return null;
        };
        Parser.prototype._checkNoInterpolation = function (input, location, interpolationConfig) {
            var regexp = _getInterpolateRegExp(interpolationConfig);
            var parts = input.split(regexp);
            if (parts.length > 1) {
                this._reportError("Got interpolation (" + interpolationConfig.start + interpolationConfig.end + ") where expression was expected", input, "at column " + this._findInterpolationErrorColumn(parts, 1, interpolationConfig) + " in", location);
            }
        };
        Parser.prototype._findInterpolationErrorColumn = function (parts, partInErrIdx, interpolationConfig) {
            var errLocation = '';
            for (var j = 0; j < partInErrIdx; j++) {
                errLocation += j % 2 === 0 ?
                    parts[j] :
                    "" + interpolationConfig.start + parts[j] + interpolationConfig.end;
            }
            return errLocation.length;
        };
        return Parser;
    }());
    exports.Parser = Parser;
    var IvyParser = /** @class */ (function (_super) {
        tslib_1.__extends(IvyParser, _super);
        function IvyParser() {
            var _this = _super !== null && _super.apply(this, arguments) || this;
            _this.simpleExpressionChecker = IvySimpleExpressionChecker; //
            return _this;
        }
        return IvyParser;
    }(Parser));
    exports.IvyParser = IvyParser;
    var _ParseAST = /** @class */ (function () {
        function _ParseAST(input, location, absoluteOffset, tokens, inputLength, parseAction, errors, offset) {
            this.input = input;
            this.location = location;
            this.absoluteOffset = absoluteOffset;
            this.tokens = tokens;
            this.inputLength = inputLength;
            this.parseAction = parseAction;
            this.errors = errors;
            this.offset = offset;
            this.rparensExpected = 0;
            this.rbracketsExpected = 0;
            this.rbracesExpected = 0;
            // Cache of expression start and input indeces to the absolute source span they map to, used to
            // prevent creating superfluous source spans in `sourceSpan`.
            // A serial of the expression start and input index is used for mapping because both are stateful
            // and may change for subsequent expressions visited by the parser.
            this.sourceSpanCache = new Map();
            this.index = 0;
        }
        _ParseAST.prototype.peek = function (offset) {
            var i = this.index + offset;
            return i < this.tokens.length ? this.tokens[i] : lexer_1.EOF;
        };
        Object.defineProperty(_ParseAST.prototype, "next", {
            get: function () { return this.peek(0); },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(_ParseAST.prototype, "inputIndex", {
            get: function () {
                return (this.index < this.tokens.length) ? this.next.index + this.offset :
                    this.inputLength + this.offset;
            },
            enumerable: true,
            configurable: true
        });
        _ParseAST.prototype.span = function (start) { return new ast_1.ParseSpan(start, this.inputIndex); };
        _ParseAST.prototype.sourceSpan = function (start) {
            var serial = start + "@" + this.inputIndex;
            if (!this.sourceSpanCache.has(serial)) {
                this.sourceSpanCache.set(serial, this.span(start).toAbsolute(this.absoluteOffset));
            }
            return this.sourceSpanCache.get(serial);
        };
        _ParseAST.prototype.advance = function () { this.index++; };
        _ParseAST.prototype.optionalCharacter = function (code) {
            if (this.next.isCharacter(code)) {
                this.advance();
                return true;
            }
            else {
                return false;
            }
        };
        _ParseAST.prototype.peekKeywordLet = function () { return this.next.isKeywordLet(); };
        _ParseAST.prototype.peekKeywordAs = function () { return this.next.isKeywordAs(); };
        _ParseAST.prototype.expectCharacter = function (code) {
            if (this.optionalCharacter(code))
                return;
            this.error("Missing expected " + String.fromCharCode(code));
        };
        _ParseAST.prototype.optionalOperator = function (op) {
            if (this.next.isOperator(op)) {
                this.advance();
                return true;
            }
            else {
                return false;
            }
        };
        _ParseAST.prototype.expectOperator = function (operator) {
            if (this.optionalOperator(operator))
                return;
            this.error("Missing expected operator " + operator);
        };
        _ParseAST.prototype.expectIdentifierOrKeyword = function () {
            var n = this.next;
            if (!n.isIdentifier() && !n.isKeyword()) {
                this.error("Unexpected token " + n + ", expected identifier or keyword");
                return '';
            }
            this.advance();
            return n.toString();
        };
        _ParseAST.prototype.expectIdentifierOrKeywordOrString = function () {
            var n = this.next;
            if (!n.isIdentifier() && !n.isKeyword() && !n.isString()) {
                this.error("Unexpected token " + n + ", expected identifier, keyword, or string");
                return '';
            }
            this.advance();
            return n.toString();
        };
        _ParseAST.prototype.parseChain = function () {
            var exprs = [];
            var start = this.inputIndex;
            while (this.index < this.tokens.length) {
                var expr = this.parsePipe();
                exprs.push(expr);
                if (this.optionalCharacter(chars.$SEMICOLON)) {
                    if (!this.parseAction) {
                        this.error('Binding expression cannot contain chained expression');
                    }
                    while (this.optionalCharacter(chars.$SEMICOLON)) {
                    } // read all semicolons
                }
                else if (this.index < this.tokens.length) {
                    this.error("Unexpected token '" + this.next + "'");
                }
            }
            if (exprs.length == 0)
                return new ast_1.EmptyExpr(this.span(start), this.sourceSpan(start));
            if (exprs.length == 1)
                return exprs[0];
            return new ast_1.Chain(this.span(start), this.sourceSpan(start), exprs);
        };
        _ParseAST.prototype.parsePipe = function () {
            var result = this.parseExpression();
            if (this.optionalOperator('|')) {
                if (this.parseAction) {
                    this.error('Cannot have a pipe in an action expression');
                }
                do {
                    var nameStart = this.inputIndex;
                    var name_1 = this.expectIdentifierOrKeyword();
                    var nameSpan = this.sourceSpan(nameStart);
                    var args = [];
                    while (this.optionalCharacter(chars.$COLON)) {
                        args.push(this.parseExpression());
                    }
                    var start = result.span.start;
                    result =
                        new ast_1.BindingPipe(this.span(start), this.sourceSpan(start), result, name_1, args, nameSpan);
                } while (this.optionalOperator('|'));
            }
            return result;
        };
        _ParseAST.prototype.parseExpression = function () { return this.parseConditional(); };
        _ParseAST.prototype.parseConditional = function () {
            var start = this.inputIndex;
            var result = this.parseLogicalOr();
            if (this.optionalOperator('?')) {
                var yes = this.parsePipe();
                var no = void 0;
                if (!this.optionalCharacter(chars.$COLON)) {
                    var end = this.inputIndex;
                    var expression = this.input.substring(start, end);
                    this.error("Conditional expression " + expression + " requires all 3 expressions");
                    no = new ast_1.EmptyExpr(this.span(start), this.sourceSpan(start));
                }
                else {
                    no = this.parsePipe();
                }
                return new ast_1.Conditional(this.span(start), this.sourceSpan(start), result, yes, no);
            }
            else {
                return result;
            }
        };
        _ParseAST.prototype.parseLogicalOr = function () {
            // '||'
            var result = this.parseLogicalAnd();
            while (this.optionalOperator('||')) {
                var right = this.parseLogicalAnd();
                var start = result.span.start;
                result = new ast_1.Binary(this.span(start), this.sourceSpan(start), '||', result, right);
            }
            return result;
        };
        _ParseAST.prototype.parseLogicalAnd = function () {
            // '&&'
            var result = this.parseEquality();
            while (this.optionalOperator('&&')) {
                var right = this.parseEquality();
                var start = result.span.start;
                result = new ast_1.Binary(this.span(start), this.sourceSpan(start), '&&', result, right);
            }
            return result;
        };
        _ParseAST.prototype.parseEquality = function () {
            // '==','!=','===','!=='
            var result = this.parseRelational();
            while (this.next.type == lexer_1.TokenType.Operator) {
                var operator = this.next.strValue;
                switch (operator) {
                    case '==':
                    case '===':
                    case '!=':
                    case '!==':
                        this.advance();
                        var right = this.parseRelational();
                        var start = result.span.start;
                        result = new ast_1.Binary(this.span(start), this.sourceSpan(start), operator, result, right);
                        continue;
                }
                break;
            }
            return result;
        };
        _ParseAST.prototype.parseRelational = function () {
            // '<', '>', '<=', '>='
            var result = this.parseAdditive();
            while (this.next.type == lexer_1.TokenType.Operator) {
                var operator = this.next.strValue;
                switch (operator) {
                    case '<':
                    case '>':
                    case '<=':
                    case '>=':
                        this.advance();
                        var right = this.parseAdditive();
                        var start = result.span.start;
                        result = new ast_1.Binary(this.span(start), this.sourceSpan(start), operator, result, right);
                        continue;
                }
                break;
            }
            return result;
        };
        _ParseAST.prototype.parseAdditive = function () {
            // '+', '-'
            var result = this.parseMultiplicative();
            while (this.next.type == lexer_1.TokenType.Operator) {
                var operator = this.next.strValue;
                switch (operator) {
                    case '+':
                    case '-':
                        this.advance();
                        var right = this.parseMultiplicative();
                        var start = result.span.start;
                        result = new ast_1.Binary(this.span(start), this.sourceSpan(start), operator, result, right);
                        continue;
                }
                break;
            }
            return result;
        };
        _ParseAST.prototype.parseMultiplicative = function () {
            // '*', '%', '/'
            var result = this.parsePrefix();
            while (this.next.type == lexer_1.TokenType.Operator) {
                var operator = this.next.strValue;
                switch (operator) {
                    case '*':
                    case '%':
                    case '/':
                        this.advance();
                        var right = this.parsePrefix();
                        var start = result.span.start;
                        result = new ast_1.Binary(this.span(start), this.sourceSpan(start), operator, result, right);
                        continue;
                }
                break;
            }
            return result;
        };
        _ParseAST.prototype.parsePrefix = function () {
            if (this.next.type == lexer_1.TokenType.Operator) {
                var start = this.inputIndex;
                var operator = this.next.strValue;
                var literalSpan = new ast_1.ParseSpan(start, start);
                var literalSourceSpan = literalSpan.toAbsolute(this.absoluteOffset);
                var result = void 0;
                switch (operator) {
                    case '+':
                        this.advance();
                        result = this.parsePrefix();
                        return new ast_1.Binary(this.span(start), this.sourceSpan(start), '-', result, new ast_1.LiteralPrimitive(literalSpan, literalSourceSpan, 0));
                    case '-':
                        this.advance();
                        result = this.parsePrefix();
                        return new ast_1.Binary(this.span(start), this.sourceSpan(start), operator, new ast_1.LiteralPrimitive(literalSpan, literalSourceSpan, 0), result);
                    case '!':
                        this.advance();
                        result = this.parsePrefix();
                        return new ast_1.PrefixNot(this.span(start), this.sourceSpan(start), result);
                }
            }
            return this.parseCallChain();
        };
        _ParseAST.prototype.parseCallChain = function () {
            var result = this.parsePrimary();
            var resultStart = result.span.start;
            while (true) {
                if (this.optionalCharacter(chars.$PERIOD)) {
                    result = this.parseAccessMemberOrMethodCall(result, false);
                }
                else if (this.optionalOperator('?.')) {
                    result = this.parseAccessMemberOrMethodCall(result, true);
                }
                else if (this.optionalCharacter(chars.$LBRACKET)) {
                    this.rbracketsExpected++;
                    var key = this.parsePipe();
                    this.rbracketsExpected--;
                    this.expectCharacter(chars.$RBRACKET);
                    if (this.optionalOperator('=')) {
                        var value = this.parseConditional();
                        result = new ast_1.KeyedWrite(this.span(resultStart), this.sourceSpan(resultStart), result, key, value);
                    }
                    else {
                        result = new ast_1.KeyedRead(this.span(resultStart), this.sourceSpan(resultStart), result, key);
                    }
                }
                else if (this.optionalCharacter(chars.$LPAREN)) {
                    this.rparensExpected++;
                    var args = this.parseCallArguments();
                    this.rparensExpected--;
                    this.expectCharacter(chars.$RPAREN);
                    result =
                        new ast_1.FunctionCall(this.span(resultStart), this.sourceSpan(resultStart), result, args);
                }
                else if (this.optionalOperator('!')) {
                    result = new ast_1.NonNullAssert(this.span(resultStart), this.sourceSpan(resultStart), result);
                }
                else {
                    return result;
                }
            }
        };
        _ParseAST.prototype.parsePrimary = function () {
            var start = this.inputIndex;
            if (this.optionalCharacter(chars.$LPAREN)) {
                this.rparensExpected++;
                var result = this.parsePipe();
                this.rparensExpected--;
                this.expectCharacter(chars.$RPAREN);
                return result;
            }
            else if (this.next.isKeywordNull()) {
                this.advance();
                return new ast_1.LiteralPrimitive(this.span(start), this.sourceSpan(start), null);
            }
            else if (this.next.isKeywordUndefined()) {
                this.advance();
                return new ast_1.LiteralPrimitive(this.span(start), this.sourceSpan(start), void 0);
            }
            else if (this.next.isKeywordTrue()) {
                this.advance();
                return new ast_1.LiteralPrimitive(this.span(start), this.sourceSpan(start), true);
            }
            else if (this.next.isKeywordFalse()) {
                this.advance();
                return new ast_1.LiteralPrimitive(this.span(start), this.sourceSpan(start), false);
            }
            else if (this.next.isKeywordThis()) {
                this.advance();
                return new ast_1.ImplicitReceiver(this.span(start), this.sourceSpan(start));
            }
            else if (this.optionalCharacter(chars.$LBRACKET)) {
                this.rbracketsExpected++;
                var elements = this.parseExpressionList(chars.$RBRACKET);
                this.rbracketsExpected--;
                this.expectCharacter(chars.$RBRACKET);
                return new ast_1.LiteralArray(this.span(start), this.sourceSpan(start), elements);
            }
            else if (this.next.isCharacter(chars.$LBRACE)) {
                return this.parseLiteralMap();
            }
            else if (this.next.isIdentifier()) {
                return this.parseAccessMemberOrMethodCall(new ast_1.ImplicitReceiver(this.span(start), this.sourceSpan(start)), false);
            }
            else if (this.next.isNumber()) {
                var value = this.next.toNumber();
                this.advance();
                return new ast_1.LiteralPrimitive(this.span(start), this.sourceSpan(start), value);
            }
            else if (this.next.isString()) {
                var literalValue = this.next.toString();
                this.advance();
                return new ast_1.LiteralPrimitive(this.span(start), this.sourceSpan(start), literalValue);
            }
            else if (this.index >= this.tokens.length) {
                this.error("Unexpected end of expression: " + this.input);
                return new ast_1.EmptyExpr(this.span(start), this.sourceSpan(start));
            }
            else {
                this.error("Unexpected token " + this.next);
                return new ast_1.EmptyExpr(this.span(start), this.sourceSpan(start));
            }
        };
        _ParseAST.prototype.parseExpressionList = function (terminator) {
            var result = [];
            if (!this.next.isCharacter(terminator)) {
                do {
                    result.push(this.parsePipe());
                } while (this.optionalCharacter(chars.$COMMA));
            }
            return result;
        };
        _ParseAST.prototype.parseLiteralMap = function () {
            var keys = [];
            var values = [];
            var start = this.inputIndex;
            this.expectCharacter(chars.$LBRACE);
            if (!this.optionalCharacter(chars.$RBRACE)) {
                this.rbracesExpected++;
                do {
                    var quoted = this.next.isString();
                    var key = this.expectIdentifierOrKeywordOrString();
                    keys.push({ key: key, quoted: quoted });
                    this.expectCharacter(chars.$COLON);
                    values.push(this.parsePipe());
                } while (this.optionalCharacter(chars.$COMMA));
                this.rbracesExpected--;
                this.expectCharacter(chars.$RBRACE);
            }
            return new ast_1.LiteralMap(this.span(start), this.sourceSpan(start), keys, values);
        };
        _ParseAST.prototype.parseAccessMemberOrMethodCall = function (receiver, isSafe) {
            if (isSafe === void 0) { isSafe = false; }
            var start = receiver.span.start;
            var id = this.expectIdentifierOrKeyword();
            if (this.optionalCharacter(chars.$LPAREN)) {
                this.rparensExpected++;
                var args = this.parseCallArguments();
                this.expectCharacter(chars.$RPAREN);
                this.rparensExpected--;
                var span = this.span(start);
                var sourceSpan = this.sourceSpan(start);
                return isSafe ? new ast_1.SafeMethodCall(span, sourceSpan, receiver, id, args) :
                    new ast_1.MethodCall(span, sourceSpan, receiver, id, args);
            }
            else {
                if (isSafe) {
                    if (this.optionalOperator('=')) {
                        this.error('The \'?.\' operator cannot be used in the assignment');
                        return new ast_1.EmptyExpr(this.span(start), this.sourceSpan(start));
                    }
                    else {
                        return new ast_1.SafePropertyRead(this.span(start), this.sourceSpan(start), receiver, id);
                    }
                }
                else {
                    if (this.optionalOperator('=')) {
                        if (!this.parseAction) {
                            this.error('Bindings cannot contain assignments');
                            return new ast_1.EmptyExpr(this.span(start), this.sourceSpan(start));
                        }
                        var value = this.parseConditional();
                        return new ast_1.PropertyWrite(this.span(start), this.sourceSpan(start), receiver, id, value);
                    }
                    else {
                        var span = this.span(start);
                        return new ast_1.PropertyRead(this.span(start), this.sourceSpan(start), receiver, id);
                    }
                }
            }
        };
        _ParseAST.prototype.parseCallArguments = function () {
            if (this.next.isCharacter(chars.$RPAREN))
                return [];
            var positionals = [];
            do {
                positionals.push(this.parsePipe());
            } while (this.optionalCharacter(chars.$COMMA));
            return positionals;
        };
        /**
         * An identifier, a keyword, a string with an optional `-` in between.
         */
        _ParseAST.prototype.expectTemplateBindingKey = function () {
            var result = '';
            var operatorFound = false;
            do {
                result += this.expectIdentifierOrKeywordOrString();
                operatorFound = this.optionalOperator('-');
                if (operatorFound) {
                    result += '-';
                }
            } while (operatorFound);
            return result.toString();
        };
        // Parses the AST for `<some-tag *tplKey=AST>`
        _ParseAST.prototype.parseTemplateBindings = function (tplKey) {
            var firstBinding = true;
            var bindings = [];
            var warnings = [];
            do {
                var start = this.inputIndex;
                var rawKey = void 0;
                var key = void 0;
                var isVar = false;
                if (firstBinding) {
                    rawKey = key = tplKey;
                    firstBinding = false;
                }
                else {
                    isVar = this.peekKeywordLet();
                    if (isVar)
                        this.advance();
                    rawKey = this.expectTemplateBindingKey();
                    key = isVar ? rawKey : tplKey + rawKey[0].toUpperCase() + rawKey.substring(1);
                    this.optionalCharacter(chars.$COLON);
                }
                var name_2 = null;
                var expression = null;
                if (isVar) {
                    if (this.optionalOperator('=')) {
                        name_2 = this.expectTemplateBindingKey();
                    }
                    else {
                        name_2 = '\$implicit';
                    }
                }
                else if (this.peekKeywordAs()) {
                    this.advance(); // consume `as`
                    name_2 = rawKey;
                    key = this.expectTemplateBindingKey(); // read local var name
                    isVar = true;
                }
                else if (this.next !== lexer_1.EOF && !this.peekKeywordLet()) {
                    var start_1 = this.inputIndex;
                    var ast = this.parsePipe();
                    var source = this.input.substring(start_1 - this.offset, this.inputIndex - this.offset);
                    expression =
                        new ast_1.ASTWithSource(ast, source, this.location, this.absoluteOffset + start_1, this.errors);
                }
                bindings.push(new ast_1.TemplateBinding(this.span(start), this.sourceSpan(start), key, isVar, name_2, expression));
                if (this.peekKeywordAs() && !isVar) {
                    var letStart = this.inputIndex;
                    this.advance(); // consume `as`
                    var letName = this.expectTemplateBindingKey(); // read local var name
                    bindings.push(new ast_1.TemplateBinding(this.span(letStart), this.sourceSpan(letStart), letName, true, key, null));
                }
                if (!this.optionalCharacter(chars.$SEMICOLON)) {
                    this.optionalCharacter(chars.$COMMA);
                }
            } while (this.index < this.tokens.length);
            return new TemplateBindingParseResult(bindings, warnings, this.errors);
        };
        _ParseAST.prototype.error = function (message, index) {
            if (index === void 0) { index = null; }
            this.errors.push(new ast_1.ParserError(message, this.input, this.locationText(index), this.location));
            this.skip();
        };
        _ParseAST.prototype.locationText = function (index) {
            if (index === void 0) { index = null; }
            if (index == null)
                index = this.index;
            return (index < this.tokens.length) ? "at column " + (this.tokens[index].index + 1) + " in" :
                "at the end of the expression";
        };
        // Error recovery should skip tokens until it encounters a recovery point. skip() treats
        // the end of input and a ';' as unconditionally a recovery point. It also treats ')',
        // '}' and ']' as conditional recovery points if one of calling productions is expecting
        // one of these symbols. This allows skip() to recover from errors such as '(a.) + 1' allowing
        // more of the AST to be retained (it doesn't skip any tokens as the ')' is retained because
        // of the '(' begins an '(' <expr> ')' production). The recovery points of grouping symbols
        // must be conditional as they must be skipped if none of the calling productions are not
        // expecting the closing token else we will never make progress in the case of an
        // extraneous group closing symbol (such as a stray ')'). This is not the case for ';' because
        // parseChain() is always the root production and it expects a ';'.
        // If a production expects one of these token it increments the corresponding nesting count,
        // and then decrements it just prior to checking if the token is in the input.
        _ParseAST.prototype.skip = function () {
            var n = this.next;
            while (this.index < this.tokens.length && !n.isCharacter(chars.$SEMICOLON) &&
                (this.rparensExpected <= 0 || !n.isCharacter(chars.$RPAREN)) &&
                (this.rbracesExpected <= 0 || !n.isCharacter(chars.$RBRACE)) &&
                (this.rbracketsExpected <= 0 || !n.isCharacter(chars.$RBRACKET))) {
                if (this.next.isError()) {
                    this.errors.push(new ast_1.ParserError(this.next.toString(), this.input, this.locationText(), this.location));
                }
                this.advance();
                n = this.next;
            }
        };
        return _ParseAST;
    }());
    exports._ParseAST = _ParseAST;
    var SimpleExpressionChecker = /** @class */ (function () {
        function SimpleExpressionChecker() {
            this.errors = [];
        }
        SimpleExpressionChecker.prototype.visitImplicitReceiver = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitInterpolation = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitLiteralPrimitive = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitPropertyRead = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitPropertyWrite = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitSafePropertyRead = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitMethodCall = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitSafeMethodCall = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitFunctionCall = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitLiteralArray = function (ast, context) { this.visitAll(ast.expressions); };
        SimpleExpressionChecker.prototype.visitLiteralMap = function (ast, context) { this.visitAll(ast.values); };
        SimpleExpressionChecker.prototype.visitBinary = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitPrefixNot = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitNonNullAssert = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitConditional = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitPipe = function (ast, context) { this.errors.push('pipes'); };
        SimpleExpressionChecker.prototype.visitKeyedRead = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitKeyedWrite = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitAll = function (asts) {
            var _this = this;
            return asts.map(function (node) { return node.visit(_this); });
        };
        SimpleExpressionChecker.prototype.visitChain = function (ast, context) { };
        SimpleExpressionChecker.prototype.visitQuote = function (ast, context) { };
        return SimpleExpressionChecker;
    }());
    /**
     * This class extends SimpleExpressionChecker used in View Engine and performs more strict checks to
     * make sure host bindings do not contain pipes. In View Engine, having pipes in host bindings is
     * not supported as well, but in some cases (like `!(value | async)`) the error is not triggered at
     * compile time. In order to preserve View Engine behavior, more strict checks are introduced for
     * Ivy mode only.
     */
    var IvySimpleExpressionChecker = /** @class */ (function (_super) {
        tslib_1.__extends(IvySimpleExpressionChecker, _super);
        function IvySimpleExpressionChecker() {
            return _super !== null && _super.apply(this, arguments) || this;
        }
        IvySimpleExpressionChecker.prototype.visitBinary = function (ast, context) {
            ast.left.visit(this);
            ast.right.visit(this);
        };
        IvySimpleExpressionChecker.prototype.visitPrefixNot = function (ast, context) { ast.expression.visit(this); };
        return IvySimpleExpressionChecker;
    }(SimpleExpressionChecker));
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicGFyc2VyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvc3JjL2V4cHJlc3Npb25fcGFyc2VyL3BhcnNlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7SUFFSCxtREFBa0M7SUFDbEMsNkZBQW9HO0lBQ3BHLG1EQUFxQztJQUVyQyxtRUFBbVo7SUFDblosdUVBQTRFO0lBRTVFO1FBQ0UsNEJBQW1CLE9BQWlCLEVBQVMsV0FBcUIsRUFBUyxPQUFpQjtZQUF6RSxZQUFPLEdBQVAsT0FBTyxDQUFVO1lBQVMsZ0JBQVcsR0FBWCxXQUFXLENBQVU7WUFBUyxZQUFPLEdBQVAsT0FBTyxDQUFVO1FBQUcsQ0FBQztRQUNsRyx5QkFBQztJQUFELENBQUMsQUFGRCxJQUVDO0lBRlksZ0RBQWtCO0lBSS9CO1FBQ0Usb0NBQ1csZ0JBQW1DLEVBQVMsUUFBa0IsRUFDOUQsTUFBcUI7WUFEckIscUJBQWdCLEdBQWhCLGdCQUFnQixDQUFtQjtZQUFTLGFBQVEsR0FBUixRQUFRLENBQVU7WUFDOUQsV0FBTSxHQUFOLE1BQU0sQ0FBZTtRQUFHLENBQUM7UUFDdEMsaUNBQUM7SUFBRCxDQUFDLEFBSkQsSUFJQztJQUpZLGdFQUEwQjtJQU12QyxJQUFNLHdCQUF3QixHQUFHLHdCQUF3QixDQUFDLG1EQUE0QixDQUFDLENBQUM7SUFDeEYsU0FBUyxxQkFBcUIsQ0FBQyxNQUEyQjtRQUN4RCxJQUFJLE1BQU0sS0FBSyxtREFBNEIsRUFBRTtZQUMzQyxPQUFPLHdCQUF3QixDQUFDO1NBQ2pDO2FBQU07WUFDTCxPQUFPLHdCQUF3QixDQUFDLE1BQU0sQ0FBQyxDQUFDO1NBQ3pDO0lBQ0gsQ0FBQztJQUVELFNBQVMsd0JBQXdCLENBQUMsTUFBMkI7UUFDM0QsSUFBTSxPQUFPLEdBQUcsbUJBQVksQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDLEdBQUcsY0FBYyxH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WSxJQUFHLENBQUM7UUFDekMsOEJBQUM7SUFBRCxDQUFDLEFBNUNELElBNENDO0lBRUQ7Ozs7OztPQU1HO0lBQ0g7UUFBeUMsc0RBQXVCO1FBQWhFOztRQU9BLENBQUM7UUFOQyxnREFBVyxHQUFYLFVBQVksR0FBVyxFQUFFLE9BQVk7WUFDbkMsR0FBRyxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7WUFDckIsR0FBRyxDQUFDLEtBQUssQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDeEIsQ0FBQztRQUVELG1EQUFjLEdBQWQsVUFBZSxHQUFjLEVBQUUsT0FBWSxJQUFJLEdBQUcsQ0FBQyxVQUFVLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUM5RSxpQ0FBQztJQUFELENBQUMsQUFQRCxDQUF5Qyx1QkFBdUIsR0FPL0QiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCAqIGFzIGNoYXJzIGZyb20gJy4uL2NoYXJzJztcbmltcG9ydCB7REVGQVVMVF9JTlRFUlBPTEFUSU9OX0NPTkZJRywgSW50ZXJwb2xhdGlvbkNvbmZpZ30gZnJvbSAnLi4vbWxfcGFyc2VyL2ludGVycG9sYXRpb25fY29uZmlnJztcbmltcG9ydCB7ZXNjYXBlUmVnRXhwfSBmcm9tICcuLi91dGlsJztcblxuaW1wb3J0IHtBU1QsIEFTVFdpdGhTb3VyY2UsIEFic29sdXRlU291cmNlU3BhbiwgQXN0VmlzaXRvciwgQmluYXJ5LCBCaW5kaW5nUGlwZSwgQ2hhaW4sIENvbmRpdGlvbmFsLCBFbXB0eUV4cHIsIEZ1bmN0aW9uQ2FsbCwgSW1wbGljaXRSZWNlaXZlciwgSW50ZXJwb2xhdGlvbiwgS2V5ZWRSZWFkLCBLZXllZFdyaXRlLCBMaXRlcmFsQXJyYXksIExpdGVyYWxNYXAsIExpdGVyYWxNYXBLZXksIExpdGVyYWxQcmltaXRpdmUsIE1ldGhvZENhbGwsIE5vbk51bGxBc3NlcnQsIFBhcnNlU3BhbiwgUGFyc2VyRXJyb3IsIFByZWZpeE5vdCwgUHJvcGVydHlSZWFkLCBQcm9wZXJ0eVdyaXRlLCBRdW90ZSwgU2FmZU1ldGhvZENhbGwsIFNhZmVQcm9wZXJ0eVJlYWQsIFRlbXBsYXRlQmluZGluZ30gZnJvbSAnLi9hc3QnO1xuaW1wb3J0IHtFT0YsIExleGVyLCBUb2tlbiwgVG9rZW5UeXBlLCBpc0lkZW50aWZpZXIsIGlzUXVvdGV9IGZyb20gJy4vbGV4ZXInO1xuXG5leHBvcnQgY2xhc3MgU3BsaXRJbnRlcnBvbGF0aW9uIHtcbiAgY29uc3RydWN0b3IocHVibGljIHN0cmluZ3M6IHN0cmluZ1tdLCBwdWJsaWMgZXhwcmVzc2lvbnM6IHN0cmluZ1tdLCBwdWJsaWMgb2Zmc2V0czogbnVtYmVyW10pIHt9XG59XG5cbmV4cG9ydCBjbGFzcyBUZW1wbGF0ZUJpbmRpbmdQYXJzZVJlc3VsdCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIHRlbXBsYXRlQmluZGluZ3M6IFRlbXBsYXRlQmluZGluZ1tdLCBwdWJsaWMgd2FybmluZ3M6IHN0cmluZ1tdLFxuICAgICAgcHVibGljIGVycm9yczogUGFyc2VyRXJyb3JbXSkge31cbn1cblxuY29uc3QgZGVmYXVsdEludGVycG9sYXRlUmVnRXhwID0gX2NyZWF0ZUludGVycG9sYXRlUmVnRXhwKERFRkFVTFRfSU5URVJQT0xBVElPTl9DT05GSUcpO1xuZnVuY3Rpb24gX2dldEludGVycG9sYXRlUmVnRXhwKGNvbmZpZzogSW50ZXJwb2xhdGlvbkNvbmZpZyk6IFJlZ0V4cCB7XG4gIGlmIChjb25maWcgPT09IERFRkFVTFRfSU5URVJQT0xBVElPTl9DT05GSUcpIHtcbiAgICByZXR1cm4gZGVmYXVsdEludGVycG9sYXRlUmVnRXhwO1xuICB9IGVsc2Uge1xuICAgIHJldHVybiBfY3JlYXRlSW50ZXJwb2xhdGVSZWdFeHAoY29uZmlnKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBfY3JlYXRlSW50ZXJwb2xhdGVSZWdFeHAoY29uZmlnOiBJbnRlcnBvbGF0aW9uQ29uZmlnKTogUmVnRXhwIHtcbiAgY29uc3QgcGF0dGVybiA9IGVzY2FwZVJlZ0V4cChjb25maWcuc3RhcnQpICsgJyhbXFxcXHNcXFxcU10qPyknICsgZXNjYXBlUmVnRXhwKGNvbmZpZy5lbmQpO1xuICByZXR1cm4gbmV3IFJlZ0V4cChwYXR0ZXJuLCAnZycpO1xufVxuXG5leHBvcnQgY2xhc3MgUGFyc2VyIHtcbiAgcHJpdmF0ZSBlcnJvcnM6IFBhcnNlckVycm9yW10gPSBbXTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9sZXhlcjogTGV4ZXIpIHt9XG5cbiAgc2ltcGxlRXhwcmVzc2lvbkNoZWNrZXIgPSBTaW1wbGVFeHByZXNzaW9uQ2hlY2tlcjtcblxuICBwYXJzZUFjdGlvbihcbiAgICAgIGlucHV0OiBzdHJpbmcsIGxvY2F0aW9uOiBhbnksIGFic29sdXRlT2Zmc2V0OiBudW1iZXIsXG4gICAgICBpbnRlcnBvbGF0aW9uQ29uZmlnOiBJbnRlcnBvbGF0aW9uQ29uZmlnID0gREVGQVVMVF9JTlRFUlBPTEFUSU9OX0NPTkZJRyk6IEFTVFdpdGhTb3VyY2Uge1xuICAgIHRoaXMuX2NoZWNrTm9JbnRlcnBvbGF0aW9uKGlucHV0LCBsb2NhdGlvbiwgaW50ZXJwb2xhdGlvbkNvbmZpZyk7XG4gICAgY29uc3Qgc291cmNlVG9MZXggPSB0aGlzLl9zdHJpcENvbW1lbnRzKGlucHV0KTtcbiAgICBjb25zdCB0b2tlbnMgPSB0aGlzLl9sZXhlci50b2tlbml6ZSh0aGlzLl9zdHJpcENvbW1lbnRzKGlucHV0KSk7XG4gICAgY29uc3QgYXN0ID0gbmV3IF9QYXJzZUFTVChcbiAgICAgICAgICAgICAgICAgICAgaW5wdXQsIGxvY2F0aW9uLCBhYnNvbHV0ZU9mZnNldCwgdG9rZW5zLCBzb3VyY2VUb0xleC5sZW5ndGgsIHRydWUsIHRoaXMuZXJyb3JzLFxuICAgICAgICAgICAgICAgICAgICBpbnB1dC5sZW5ndGggLSBzb3VyY2VUb0xleC5sZW5ndGgpXG4gICAgICAgICAgICAgICAgICAgIC5wYXJzZUNoYWluKCk7XG4gICAgcmV0dXJuIG5ldyBBU1RXaXRoU291cmNlKGFzdCwgaW5wdXQsIGxvY2F0aW9uLCBhYnNvbHV0ZU9mZnNldCwgdGhpcy5lcnJvcnMpO1xuICB9XG5cbiAgcGFyc2VCaW5kaW5nKFxuICAgICAgaW5wdXQ6IHN0cmluZywgbG9jYXRpb246IGFueSwgYWJzb2x1dGVPZmZzZXQ6IG51bWJlcixcbiAgICAgIGludGVycG9sYXRpb25Db25maWc6IEludGVycG9sYXRpb25Db25maWcgPSBERUZBVUxUX0lOVEVSUE9MQVRJT05fQ09ORklHKTogQVNUV2l0aFNvdXJjZSB7XG4gICAgY29uc3QgYXN0ID0gdGhpcy5fcGFyc2VCaW5kaW5nQXN0KGlucHV0LCBsb2NhdGlvbiwgYWJzb2x1dGVPZmZzZXQsIGludGVycG9sYXRpb25Db25maWcpO1xuICAgIHJldHVybiBuZXcgQVNUV2l0aFNvdXJjZShhc3QsIGlucHV0LCBsb2NhdGlvbiwgYWJzb2x1dGVPZmZzZXQsIHRoaXMuZXJyb3JzKTtcbiAgfVxuXG4gIHByaXZhdGUgY2hlY2tTaW1wbGVFeHByZXNzaW9uKGFzdDogQVNUKTogc3RyaW5nW10ge1xuICAgIGNvbnN0IGNoZWNrZXIgPSBuZXcgdGhpcy5zaW1wbGVFeHByZXNzaW9uQ2hlY2tlcigpO1xuICAgIGFzdC52aXNpdChjaGVja2VyKTtcbiAgICByZXR1cm4gY2hlY2tlci5lcnJvcnM7XG4gIH1cblxuICBwYXJzZVNpbXBsZUJpbmRpbmcoXG4gICAgICBpbnB1dDogc3RyaW5nLCBsb2NhdGlvbjogc3RyaW5nLCBhYnNvbHV0ZU9mZnNldDogbnVtYmVyLFxuICAgICAgaW50ZXJwb2xhdGlvbkNvbmZpZzogSW50ZXJwb2xhdGlvbkNvbmZpZyA9IERFRkFVTFRfSU5URVJQT0xBVElPTl9DT05GSUcpOiBBU1RXaXRoU291cmNlIHtcbiAgICBjb25zdCBhc3QgPSB0aGlzLl9wYXJzZUJpbmRpbmdBc3QoaW5wdXQsIGxvY2F0aW9uLCBhYnNvbHV0ZU9mZnNldCwgaW50ZXJwb2xhdGlvbkNvbmZpZyk7XG4gICAgY29uc3QgZXJyb3JzID0gdGhpcy5jaGVja1NpbXBsZUV4cHJlc3Npb24oYXN0KTtcbiAgICBpZiAoZXJyb3JzLmxlbmd0aCA+IDApIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgIGBIb3N0IGJpbmRpbmcgZXhwcmVzc2lvbiBjYW5ub3QgY29udGFpbiAke2Vycm9ycy5qb2luKCcgJyl9YCwgaW5wdXQsIGxvY2F0aW9uKTtcbiAgICB9XG4gICAgcmV0dXJuIG5ldyBBU1RXaXRoU291cmNlKGFzdCwgaW5wdXQsIGxvY2F0aW9uLCBhYnNvbHV0ZU9mZnNldCwgdGhpcy5lcnJvcnMpO1xuICB9XG5cbiAgcHJpdmF0ZSBfcmVwb3J0RXJyb3IobWVzc2FnZTogc3RyaW5nLCBpbnB1dDogc3RyaW5nLCBlcnJMb2NhdGlvbjogc3RyaW5nLCBjdHhMb2NhdGlvbj86IGFueSkge1xuICAgIHRoaXMuZXJyb3JzLnB1c2gobmV3IFBhcnNlckVycm9yKG1lc3NhZ2UsIGlucHV0LCBlcnJMb2NhdGlvbiwgY3R4TG9jYXRpb24pKTtcbiAgfVxuXG4gIHByaXZhdGUgX3BhcnNlQmluZGluZ0FzdChcbiAgICAgIGlucHV0OiBzdHJpbmcsIGxvY2F0aW9uOiBzdHJpbmcsIGFic29sdXRlT2Zmc2V0OiBudW1iZXIsXG4gICAgICBpbnRlcnBvbGF0aW9uQ29uZmlnOiBJbnRlcnBvbGF0aW9uQ29uZmlnKTogQVNUIHtcbiAgICAvLyBRdW90ZXMgZXhwcmVzc2lvbnMgdXNlIDNyZC1wYXJ0eSBleHByZXNzaW9uIGxhbmd1YWdlLiBXZSBkb24ndCB3YW50IHRvIHVzZVxuICAgIC8vIG91ciBsZXhlciBvciBwYXJzZXIgZm9yIHRoYXQsIHNvIHdlIGNoZWNrIGZvciB0aGF0IGFoZWFkIG9mIHRpbWUuXG4gICAgY29uc3QgcXVvdGUgPSB0aGlzLl9wYXJzZVF1b3RlKGlucHV0LCBsb2NhdGlvbiwgYWJzb2x1dGVPZmZzZXQpO1xuXG4gICAgaWYgKHF1b3RlICE9IG51bGwpIHtcbiAgICAgIHJldHVybiBxdW90ZTtcbiAgICB9XG5cbiAgICB0aGlzLl9jaGVja05vSW50ZXJwb2xhdGlvbihpbnB1dCwgbG9jYXRpb24sIGludGVycG9sYXRpb25Db25maWcpO1xuICAgIGNvbnN0IHNvdXJjZVRvTGV4ID0gdGhpcy5fc3RyaXBDb21tZW50cyhpbnB1dCk7XG4gICAgY29uc3QgdG9rZW5zID0gdGhpcy5fbGV4ZXIudG9rZW5pemUoc291cmNlVG9MZXgpO1xuICAgIHJldHVybiBuZXcgX1BhcnNlQVNUKFxuICAgICAgICAgICAgICAgaW5wdXQsIGxvY2F0aW9uLCBhYnNvbHV0ZU9mZnNldCwgdG9rZW5zLCBzb3VyY2VUb0xleC5sZW5ndGgsIGZhbHNlLCB0aGlzLmVycm9ycyxcbiAgICAgICAgICAgICAgIGlucHV0Lmxlbmd0aCAtIHNvdXJjZVRvTGV4Lmxlbmd0aClcbiAgICAgICAgLnBhcnNlQ2hhaW4oKTtcbiAgfVxuXG4gIHByaXZhdGUgX3BhcnNlUXVvdGUoaW5wdXQ6IHN0cmluZ3xudWxsLCBsb2NhdGlvbjogYW55LCBhYnNvbHV0ZU9mZnNldDogbnVtYmVyKTogQVNUfG51bGwge1xuICAgIGlmIChpbnB1dCA9PSBudWxsKSByZXR1cm4gbnVsbDtcbiAgICBjb25zdCBwcmVmaXhTZXBhcmF0b3JJbmRleCA9IGlucHV0LmluZGV4T2YoJzonKTtcbiAgICBpZiAocHJlZml4U2VwYXJhdG9ySW5kZXggPT0gLTEpIHJldHVybiBudWxsO1xuICAgIGNvbnN0IHByZWZpeCA9IGlucHV0LnN1YnN0cmluZygwLCBwcmVmaXhTZXBhcmF0b3JJbmRleCkudHJpbSgpO1xuICAgIGlmICghaXNJZGVudGlmaWVyKHByZWZpeCkpIHJldHVybiBudWxsO1xuICAgIGNvbnN0IHVuaW50ZXJwcmV0ZWRFeHByZXNzaW9uID0gaW5wdXQuc3Vic3RyaW5nKHByZWZpeFNlcGFyYXRvckluZGV4ICsgMSk7XG4gICAgY29uc3Qgc3BhbiA9IG5ldyBQYXJzZVNwYW4oMCwgaW5wdXQubGVuZ3RoKTtcbiAgICByZXR1cm4gbmV3IFF1b3RlKFxuICAgICAgICBzcGFuLCBzcGFuLnRvQWJzb2x1dGUoYWJzb2x1dGVPZmZzZXQpLCBwcmVmaXgsIHVuaW50ZXJwcmV0ZWRFeHByZXNzaW9uLCBsb2NhdGlvbik7XG4gIH1cblxuICBwYXJzZVRlbXBsYXRlQmluZGluZ3ModHBsS2V5OiBzdHJpbmcsIHRwbFZhbHVlOiBzdHJpbmcsIGxvY2F0aW9uOiBhbnksIGFic29sdXRlT2Zmc2V0OiBudW1iZXIpOlxuICAgICAgVGVtcGxhdGVCaW5kaW5nUGFyc2VSZXN1bHQge1xuICAgIGNvbnN0IHRva2VucyA9IHRoaXMuX2xleGVyLnRva2VuaXplKHRwbFZhbHVlKTtcbiAgICByZXR1cm4gbmV3IF9QYXJzZUFTVChcbiAgICAgICAgICAgICAgIHRwbFZhbHVlLCBsb2NhdGlvbiwgYWJzb2x1dGVPZmZzZXQsIHRva2VucywgdHBsVmFsdWUubGVuZ3RoLCBmYWxzZSwgdGhpcy5lcnJvcnMsIDApXG4gICAgICAgIC5wYXJzZVRlbXBsYXRlQmluZGluZ3ModHBsS2V5KTtcbiAgfVxuXG4gIHBhcnNlSW50ZXJwb2xhdGlvbihcbiAgICAgIGlucHV0OiBzdHJpbmcsIGxvY2F0aW9uOiBhbnksIGFic29sdXRlT2Zmc2V0OiBudW1iZXIsXG4gICAgICBpbnRlcnBvbGF0aW9uQ29uZmlnOiBJbnRlcnBvbGF0aW9uQ29uZmlnID0gREVGQVVMVF9JTlRFUlBPTEFUSU9OX0NPTkZJRyk6IEFTVFdpdGhTb3VyY2V8bnVsbCB7XG4gICAgY29uc3Qgc3BsaXQgPSB0aGlzLnNwbGl0SW50ZXJwb2xhdGlvbihpbnB1dCwgbG9jYXRpb24sIGludGVycG9sYXRpb25Db25maWcpO1xuICAgIGlmIChzcGxpdCA9PSBudWxsKSByZXR1cm4gbnVsbDtcblxuICAgIGNvbnN0IGV4cHJlc3Npb25zOiBBU1RbXSA9IFtdO1xuXG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCBzcGxpdC5leHByZXNzaW9ucy5sZW5ndGg7ICsraSkge1xuICAgICAgY29uc3QgZXhwcmVzc2lvblRleHQgPSBzcGxpdC5leHByZXNzaW9uc1tpXTtcbiAgICAgIGNvbnN0IHNvdXJjZVRvTGV4ID0gdGhpcy5fc3RyaXBDb21tZW50cyhleHByZXNzaW9uVGV4dCk7XG4gICAgICBjb25zdCB0b2tlbnMgPSB0aGlzLl9sZXhlci50b2tlbml6ZShzb3VyY2VUb0xleCk7XG4gICAgICBjb25zdCBhc3QgPSBuZXcgX1BhcnNlQVNUKFxuICAgICAgICAgICAgICAgICAgICAgIGlucHV0LCBsb2NhdGlvbiwgYWJzb2x1dGVPZmZzZXQsIHRva2Vucywgc291cmNlVG9MZXgubGVuZ3RoLCBmYWxzZSxcbiAgICAgICAgICAgICAgICAgICAgICB0aGlzLmVycm9ycywgc3BsaXQub2Zmc2V0c1tpXSArIChleHByZXNzaW9uVGV4dC5sZW5ndGggLSBzb3VyY2VUb0xleC5sZW5ndGgpKVxuICAgICAgICAgICAgICAgICAgICAgIC5wYXJzZUNoYWluKCk7XG4gICAgICBleHByZXNzaW9ucy5wdXNoKGFzdCk7XG4gICAgfVxuXG4gICAgY29uc3Qgc3BhbiA9IG5ldyBQYXJzZVNwYW4oMCwgaW5wdXQgPT0gbnVsbCA/IDAgOiBpbnB1dC5sZW5ndGgpO1xuICAgIHJldHVybiBuZXcgQVNUV2l0aFNvdXJjZShcbiAgICAgICAgbmV3IEludGVycG9sYXRpb24oc3Bhbiwgc3Bhbi50b0Fic29sdXRlKGFic29sdXRlT2Zmc2V0KSwgc3BsaXQuc3RyaW5ncywgZXhwcmVzc2lvbnMpLCBpbnB1dCxcbiAgICAgICAgbG9jYXRpb24sIGFic29sdXRlT2Zmc2V0LCB0aGlzLmVycm9ycyk7XG4gIH1cblxuICBzcGxpdEludGVycG9sYXRpb24oXG4gICAgICBpbnB1dDogc3RyaW5nLCBsb2NhdGlvbjogc3RyaW5nLFxuICAgICAgaW50ZXJwb2xhdGlvbkNvbmZpZzogSW50ZXJwb2xhdGlvbkNvbmZpZyA9IERFRkFVTFRfSU5URVJQT0xBVElPTl9DT05GSUcpOiBTcGxpdEludGVycG9sYXRpb25cbiAgICAgIHxudWxsIHtcbiAgICBjb25zdCByZWdleHAgPSBfZ2V0SW50ZXJwb2xhdGVSZWdFeHAoaW50ZXJwb2xhdGlvbkNvbmZpZyk7XG4gICAgY29uc3QgcGFydHMgPSBpbnB1dC5zcGxpdChyZWdleHApO1xuICAgIGlmIChwYXJ0cy5sZW5ndGggPD0gMSkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIGNvbnN0IHN0cmluZ3M6IHN0cmluZ1tdID0gW107XG4gICAgY29uc3QgZXhwcmVzc2lvbnM6IHN0cmluZ1tdID0gW107XG4gICAgY29uc3Qgb2Zmc2V0czogbnVtYmVyW10gPSBbXTtcbiAgICBsZXQgb2Zmc2V0ID0gMDtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IHBhcnRzLmxlbmd0aDsgaSsrKSB7XG4gICAgICBjb25zdCBwYXJ0OiBzdHJpbmcgPSBwYXJ0c1tpXTtcbiAgICAgIGlmIChpICUgMiA9PT0gMCkge1xuICAgICAgICAvLyBmaXhlZCBzdHJpbmdcbiAgICAgICAgc3RyaW5ncy5wdXNoKHBhcnQpO1xuICAgICAgICBvZmZzZXQgKz0gcGFydC5sZW5ndGg7XG4gICAgICB9IGVsc2UgaWYgKHBhcnQudHJpbSgpLmxlbmd0aCA+IDApIHtcbiAgICAgICAgb2Zmc2V0ICs9IGludGVycG9sYXRpb25Db25maWcuc3RhcnQubGVuZ3RoO1xuICAgICAgICBleHByZXNzaW9ucy5wdXNoKHBhcnQpO1xuICAgICAgICBvZmZzZXRzLnB1c2gob2Zmc2V0KTtcbiAgICAgICAgb2Zmc2V0ICs9IHBhcnQubGVuZ3RoICsgaW50ZXJwb2xhdGlvbkNvbmZpZy5lbmQubGVuZ3RoO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAnQmxhbmsgZXhwcmVzc2lvbnMgYXJlIG5vdCBhbGxvd2VkIGluIGludGVycG9sYXRlZCBzdHJpbmdzJywgaW5wdXQsXG4gICAgICAgICAgICBgYXQgY29sdW1uICR7dGhpcy5fZmluZEludGVycG9sYXRpb25FcnJvckNvbHVtbihwYXJ0cywgaSwgaW50ZXJwb2xhdGlvbkNvbmZpZyl9IGluYCxcbiAgICAgICAgICAgIGxvY2F0aW9uKTtcbiAgICAgICAgZXhwcmVzc2lvbnMucHVzaCgnJGltcGxpY2l0Jyk7XG4gICAgICAgIG9mZnNldHMucHVzaChvZmZzZXQpO1xuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4gbmV3IFNwbGl0SW50ZXJwb2xhdGlvbihzdHJpbmdzLCBleHByZXNzaW9ucywgb2Zmc2V0cyk7XG4gIH1cblxuICB3cmFwTGl0ZXJhbFByaW1pdGl2ZShpbnB1dDogc3RyaW5nfG51bGwsIGxvY2F0aW9uOiBhbnksIGFic29sdXRlT2Zmc2V0OiBudW1iZXIpOiBBU1RXaXRoU291cmNlIHtcbiAgICBjb25zdCBzcGFuID0gbmV3IFBhcnNlU3BhbigwLCBpbnB1dCA9PSBudWxsID8gMCA6IGlucHV0Lmxlbmd0aCk7XG4gICAgcmV0dXJuIG5ldyBBU1RXaXRoU291cmNlKFxuICAgICAgICBuZXcgTGl0ZXJhbFByaW1pdGl2ZShzcGFuLCBzcGFuLnRvQWJzb2x1dGUoYWJzb2x1dGVPZmZzZXQpLCBpbnB1dCksIGlucHV0LCBsb2NhdGlvbixcbiAgICAgICAgYWJzb2x1dGVPZmZzZXQsIHRoaXMuZXJyb3JzKTtcbiAgfVxuXG4gIHByaXZhdGUgX3N0cmlwQ29tbWVudHMoaW5wdXQ6IHN0cmluZyk6IHN0cmluZyB7XG4gICAgY29uc3QgaSA9IHRoaXMuX2NvbW1lbnRTdGFydChpbnB1dCk7XG4gICAgcmV0dXJuIGkgIT0gbnVsbCA/IGlucHV0LnN1YnN0cmluZygwLCBpKS50cmltKCkgOiBpbnB1dDtcbiAgfVxuXG4gIHByaXZhdGUgX2NvbW1lbnRTdGFydChpbnB1dDogc3RyaW5nKTogbnVtYmVyfG51bGwge1xuICAgIGxldCBvdXRlclF1b3RlOiBudW1iZXJ8bnVsbCA9IG51bGw7XG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCBpbnB1dC5sZW5ndGggLSAxOyBpKyspIHtcbiAgICAgIGNvbnN0IGNoYXIgPSBpbnB1dC5jaGFyQ29kZUF0KGkpO1xuICAgICAgY29uc3QgbmV4dENoYXIgPSBpbnB1dC5jaGFyQ29kZUF0KGkgKyAxKTtcblxuICAgICAgaWYgKGNoYXIgPT09IGNoYXJzLiRTTEFTSCAmJiBuZXh0Q2hhciA9PSBjaGFycy4kU0xBU0ggJiYgb3V0ZXJRdW90ZSA9PSBudWxsKSByZXR1cm4gaTtcblxuICAgICAgaWYgKG91dGVyUXVvdGUgPT09IGNoYXIpIHtcbiAgICAgICAgb3V0ZXJRdW90ZSA9IG51bGw7XG4gICAgICB9IGVsc2UgaWYgKG91dGVyUXVvdGUgPT0gbnVsbCAmJiBpc1F1b3RlKGNoYXIpKSB7XG4gICAgICAgIG91dGVyUXVvdGUgPSBjaGFyO1xuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIHByaXZhdGUgX2NoZWNrTm9JbnRlcnBvbGF0aW9uKFxuICAgICAgaW5wdXQ6IHN0cmluZywgbG9jYXRpb246IGFueSwgaW50ZXJwb2xhdGlvbkNvbmZpZzogSW50ZXJwb2xhdGlvbkNvbmZpZyk6IHZvaWQge1xuICAgIGNvbnN0IHJlZ2V4cCA9IF9nZXRJbnRlcnBvbGF0ZVJlZ0V4cChpbnRlcnBvbGF0aW9uQ29uZmlnKTtcbiAgICBjb25zdCBwYXJ0cyA9IGlucHV0LnNwbGl0KHJlZ2V4cCk7XG4gICAgaWYgKHBhcnRzLmxlbmd0aCA+IDEpIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgIGBHb3QgaW50ZXJwb2xhdGlvbiAoJHtpbnRlcnBvbGF0aW9uQ29uZmlnLnN0YXJ0fSR7aW50ZXJwb2xhdGlvbkNvbmZpZy5lbmR9KSB3aGVyZSBleHByZXNzaW9uIHdhcyBleHBlY3RlZGAsXG4gICAgICAgICAgaW5wdXQsXG4gICAgICAgICAgYGF0IGNvbHVtbiAke3RoaXMuX2ZpbmRJbnRlcnBvbGF0aW9uRXJyb3JDb2x1bW4ocGFydHMsIDEsIGludGVycG9sYXRpb25Db25maWcpfSBpbmAsXG4gICAgICAgICAgbG9jYXRpb24pO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX2ZpbmRJbnRlcnBvbGF0aW9uRXJyb3JDb2x1bW4oXG4gICAgICBwYXJ0czogc3RyaW5nW10sIHBhcnRJbkVycklkeDogbnVtYmVyLCBpbnRlcnBvbGF0aW9uQ29uZmlnOiBJbnRlcnBvbGF0aW9uQ29uZmlnKTogbnVtYmVyIHtcbiAgICBsZXQgZXJyTG9jYXRpb24gPSAnJztcbiAgICBmb3IgKGxldCBqID0gMDsgaiA8IHBhcnRJbkVycklkeDsgaisrKSB7XG4gICAgICBlcnJMb2NhdGlvbiArPSBqICUgMiA9PT0gMCA/XG4gICAgICAgICAgcGFydHNbal0gOlxuICAgICAgICAgIGAke2ludGVycG9sYXRpb25Db25maWcuc3RhcnR9JHtwYXJ0c1tqXX0ke2ludGVycG9sYXRpb25Db25maWcuZW5kfWA7XG4gICAgfVxuXG4gICAgcmV0dXJuIGVyckxvY2F0aW9uLmxlbmd0aDtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgSXZ5UGFyc2VyIGV4dGVuZHMgUGFyc2VyIHtcbiAgc2ltcGxlRXhwcmVzc2lvbkNoZWNrZXIgPSBJdnlTaW1wbGVFeHByZXNzaW9uQ2hlY2tlcjsgIC8vXG59XG5cbmV4cG9ydCBjbGFzcyBfUGFyc2VBU1Qge1xuICBwcml2YXRlIHJwYXJlbnNFeHBlY3RlZCA9IDA7XG4gIHByaXZhdGUgcmJyYWNrZXRzRXhwZWN0ZWQgPSAwO1xuICBwcml2YXRlIHJicmFjZXNFeHBlY3RlZCA9IDA7XG5cbiAgLy8gQ2FjaGUgb2YgZXhwcmVzc2lvbiBzdGFydCBhbmQgaW5wdXQgaW5kZWNlcyB0byB0aGUgYWJzb2x1dGUgc291cmNlIHNwYW4gdGhleSBtYXAgdG8sIHVzZWQgdG9cbiAgLy8gcHJldmVudCBjcmVhdGluZyBzdXBlcmZsdW91cyBzb3VyY2Ugc3BhbnMgaW4gYHNvdXJjZVNwYW5gLlxuICAvLyBBIHNlcmlhbCBvZiB0aGUgZXhwcmVzc2lvbiBzdGFydCBhbmQgaW5wdXQgaW5kZXggaXMgdXNlZCBmb3IgbWFwcGluZyBiZWNhdXNlIGJvdGggYXJlIHN0YXRlZnVsXG4gIC8vIGFuZCBtYXkgY2hhbmdlIGZvciBzdWJzZXF1ZW50IGV4cHJlc3Npb25zIHZpc2l0ZWQgYnkgdGhlIHBhcnNlci5cbiAgcHJpdmF0ZSBzb3VyY2VTcGFuQ2FjaGUgPSBuZXcgTWFwPHN0cmluZywgQWJzb2x1dGVTb3VyY2VTcGFuPigpO1xuXG4gIGluZGV4OiBudW1iZXIgPSAwO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIGlucHV0OiBzdHJpbmcsIHB1YmxpYyBsb2NhdGlvbjogYW55LCBwdWJsaWMgYWJzb2x1dGVPZmZzZXQ6IG51bWJlcixcbiAgICAgIHB1YmxpYyB0b2tlbnM6IFRva2VuW10sIHB1YmxpYyBpbnB1dExlbmd0aDogbnVtYmVyLCBwdWJsaWMgcGFyc2VBY3Rpb246IGJvb2xlYW4sXG4gICAgICBwcml2YXRlIGVycm9yczogUGFyc2VyRXJyb3JbXSwgcHJpdmF0ZSBvZmZzZXQ6IG51bWJlcikge31cblxuICBwZWVrKG9mZnNldDogbnVtYmVyKTogVG9rZW4ge1xuICAgIGNvbnN0IGkgPSB0aGlzLmluZGV4ICsgb2Zmc2V0O1xuICAgIHJldHVybiBpIDwgdGhpcy50b2tlbnMubGVuZ3RoID8gdGhpcy50b2tlbnNbaV0gOiBFT0Y7XG4gIH1cblxuICBnZXQgbmV4dCgpOiBUb2tlbiB7IHJldHVybiB0aGlzLnBlZWsoMCk7IH1cblxuICBnZXQgaW5wdXRJbmRleCgpOiBudW1iZXIge1xuICAgIHJldHVybiAodGhpcy5pbmRleCA8IHRoaXMudG9rZW5zLmxlbmd0aCkgPyB0aGlzLm5leHQuaW5kZXggKyB0aGlzLm9mZnNldCA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRoaXMuaW5wdXRMZW5ndGggKyB0aGlzLm9mZnNldDtcbiAgfVxuXG4gIHNwYW4oc3RhcnQ6IG51bWJlcikgeyByZXR1cm4gbmV3IFBhcnNlU3BhbihzdGFydCwgdGhpcy5pbnB1dEluZGV4KTsgfVxuXG4gIHNvdXJjZVNwYW4oc3RhcnQ6IG51bWJlcik6IEFic29sdXRlU291cmNlU3BhbiB7XG4gICAgY29uc3Qgc2VyaWFsID0gYCR7c3RhcnR9QCR7dGhpcy5pbnB1dEluZGV4fWA7XG4gICAgaWYgKCF0aGlzLnNvdXJjZVNwYW5DYWNoZS5oYXMoc2VyaWFsKSkge1xuICAgICAgdGhpcy5zb3VyY2VTcGFuQ2FjaGUuc2V0KHNlcmlhbCwgdGhpcy5zcGFuKHN0YXJ0KS50b0Fic29sdXRlKHRoaXMuYWJzb2x1dGVPZmZzZXQpKTtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMuc291cmNlU3BhbkNhY2hlLmdldChzZXJpYWwpICE7XG4gIH1cblxuICBhZHZhbmNlKCkgeyB0aGlzLmluZGV4Kys7IH1cblxuICBvcHRpb25hbENoYXJhY3Rlcihjb2RlOiBudW1iZXIpOiBib29sZWFuIHtcbiAgICBpZiAodGhpcy5uZXh0LmlzQ2hhcmFjdGVyKGNvZGUpKSB7XG4gICAgICB0aGlzLmFkdmFuY2UoKTtcbiAgICAgIHJldHVybiB0cnVlO1xuICAgIH0gZWxzZSB7XG4gICAgICByZXR1cm4gZmFsc2U7XG4gICAgfVxuICB9XG5cbiAgcGVla0tleXdvcmRMZXQoKTogYm9vbGVhbiB7IHJldHVybiB0aGlzLm5leHQuaXNLZXl3b3JkTGV0KCk7IH1cbiAgcGVla0tleXdvcmRBcygpOiBib29sZWFuIHsgcmV0dXJuIHRoaXMubmV4dC5pc0tleXdvcmRBcygpOyB9XG5cbiAgZXhwZWN0Q2hhcmFjdGVyKGNvZGU6IG51bWJlcikge1xuICAgIGlmICh0aGlzLm9wdGlvbmFsQ2hhcmFjdGVyKGNvZGUpKSByZXR1cm47XG4gICAgdGhpcy5lcnJvcihgTWlzc2luZyBleHBlY3RlZCAke1N0cmluZy5mcm9tQ2hhckNvZGUoY29kZSl9YCk7XG4gIH1cblxuICBvcHRpb25hbE9wZXJhdG9yKG9wOiBzdHJpbmcpOiBib29sZWFuIHtcbiAgICBpZiAodGhpcy5uZXh0LmlzT3BlcmF0b3Iob3ApKSB7XG4gICAgICB0aGlzLmFkdmFuY2UoKTtcbiAgICAgIHJldHVybiB0cnVlO1xuICAgIH0gZWxzZSB7XG4gICAgICByZXR1cm4gZmFsc2U7XG4gICAgfVxuICB9XG5cbiAgZXhwZWN0T3BlcmF0b3Iob3BlcmF0b3I6IHN0cmluZykge1xuICAgIGlmICh0aGlzLm9wdGlvbmFsT3BlcmF0b3Iob3BlcmF0b3IpKSByZXR1cm47XG4gICAgdGhpcy5lcnJvcihgTWlzc2luZyBleHBlY3RlZCBvcGVyYXRvciAke29wZXJhdG9yfWApO1xuICB9XG5cbiAgZXhwZWN0SWRlbnRpZmllck9yS2V5d29yZCgpOiBzdHJpbmcge1xuICAgIGNvbnN0IG4gPSB0aGlzLm5leHQ7XG4gICAgaWYgKCFuLmlzSWRlbnRpZmllcigpICYmICFuLmlzS2V5d29yZCgpKSB7XG4gICAgICB0aGlzLmVycm9yKGBVbmV4cGVjdGVkIHRva2VuICR7bn0sIGV4cGVjdGVkIGlkZW50aWZpZXIgb3Iga2V5d29yZGApO1xuICAgICAgcmV0dXJuICcnO1xuICAgIH1cbiAgICB0aGlzLmFkdmFuY2UoKTtcbiAgICByZXR1cm4gbi50b1N0cmluZygpIGFzIHN0cmluZztcbiAgfVxuXG4gIGV4cGVjdElkZW50aWZpZXJPcktleXdvcmRPclN0cmluZygpOiBzdHJpbmcge1xuICAgIGNvbnN0IG4gPSB0aGlzLm5leHQ7XG4gICAgaWYgKCFuLmlzSWRlbnRpZmllcigpICYmICFuLmlzS2V5d29yZCgpICYmICFuLmlzU3RyaW5nKCkpIHtcbiAgICAgIHRoaXMuZXJyb3IoYFVuZXhwZWN0ZWQgdG9rZW4gJHtufSwgZXhwZWN0ZWQgaWRlbnRpZmllciwga2V5d29yZCwgb3Igc3RyaW5nYCk7XG4gICAgICByZXR1cm4gJyc7XG4gICAgfVxuICAgIHRoaXMuYWR2YW5jZSgpO1xuICAgIHJldHVybiBuLnRvU3RyaW5nKCkgYXMgc3RyaW5nO1xuICB9XG5cbiAgcGFyc2VDaGFpbigpOiBBU1Qge1xuICAgIGNvbnN0IGV4cHJzOiBBU1RbXSA9IFtdO1xuICAgIGNvbnN0IHN0YXJ0ID0gdGhpcy5pbnB1dEluZGV4O1xuICAgIHdoaWxlICh0aGlzLmluZGV4IDwgdGhpcy50b2tlbnMubGVuZ3RoKSB7XG4gICAgICBjb25zdCBleHByID0gdGhpcy5wYXJzZVBpcGUoKTtcbiAgICAgIGV4cHJzLnB1c2goZXhwcik7XG5cbiAgICAgIGlmICh0aGlzLm9wdGlvbmFsQ2hhcmFjdGVyKGNoYXJzLiRTRU1JQ09MT04pKSB7XG4gICAgICAgIGlmICghdGhpcy5wYXJzZUFjdGlvbikge1xuICAgICAgICAgIHRoaXMuZXJyb3IoJ0JpbmRpbmcgZXhwcmVzc2lvbiBjYW5ub3QgY29udGFpbiBjaGFpbmVkIGV4cHJlc3Npb24nKTtcbiAgICAgICAgfVxuICAgICAgICB3aGlsZSAodGhpcy5vcHRpb25hbENoYXJhY3RlcihjaGFycy4kU0VNSUNPTE9OKSkge1xuICAgICAgICB9ICAvLyByZWFkIGFsbCBzZW1pY29sb25zXG4gICAgICB9IGVsc2UgaWYgKHRoaXMuaW5kZXggPCB0aGlzLnRva2Vucy5sZW5ndGgpIHtcbiAgICAgICAgdGhpcy5lcnJvcihgVW5leHBlY3RlZCB0b2tlbiAnJHt0aGlzLm5leHR9J2ApO1xuICAgICAgfVxuICAgIH1cbiAgICBpZiAoZXhwcnMubGVuZ3RoID09IDApIHJldHVybiBuZXcgRW1wdHlFeHByKHRoaXMuc3BhbihzdGFydCksIHRoaXMuc291cmNlU3BhbihzdGFydCkpO1xuICAgIGlmIChleHBycy5sZW5ndGggPT0gMSkgcmV0dXJuIGV4cHJzWzBdO1xuICAgIHJldHVybiBuZXcgQ2hhaW4odGhpcy5zcGFuKHN0YXJ0KSwgdGhpcy5zb3VyY2VTcGFuKHN0YXJ0KSwgZXhwcnMpO1xuICB9XG5cbiAgcGFyc2VQaXBlKCk6IEFTVCB7XG4gICAgbGV0IHJlc3VsdCA9IHRoaXMucGFyc2VFeHByZXNzaW9uKCk7XG4gICAgaWYgKHRoaXMub3B0aW9uYWxPcGVyYXRvcignfCcpKSB7XG4gICAgICBpZiAodGhpcy5wYXJzZUFjdGlvbikge1xuICAgICAgICB0aGlzLmVycm9yKCdDYW5ub3QgaGF2ZSBhIHBpcGUgaW4gYW4gYWN0aW9uIGV4cHJlc3Npb24nKTtcbiAgICAgIH1cblxuICAgICAgZG8ge1xuICAgICAgICBjb25zdCBuYW1lU3RhcnQgPSB0aGlzLmlucHV0SW5kZXg7XG4gICAgICAgIGNvbnN0IG5hbWUgPSB0aGlzLmV4cGVjdElkZW50aWZpZXJPcktleXdvcmQoKTtcbiAgICAgICAgY29uc3QgbmFtZVNwYW4gPSB0aGlzLnNvdXJjZVNwYW4obmFtZVN0YXJ0KTtcbiAgICAgICAgY29uc3QgYXJnczogQVNUW10gPSBbXTtcbiAgICAgICAgd2hpbGUgKHRoaXMub3B0aW9uYWxDaGFyYWN0ZXIoY2hhcnMuJENPTE9OKSkge1xuICAgICAgICAgIGFyZ3MucHVzaCh0aGlzLnBhcnNlRXhwcmVzc2lvbigpKTtcbiAgICAgICAgfVxuICAgICAgICBjb25zdCB7c3RhcnR9ID0gcmVzdWx0LnNwYW47XG4gICAgICAgIHJlc3VsdCA9XG4gICAgICAgICAgICBuZXcgQmluZGluZ1BpcGUodGhpcy5zcGFuKHN0YXJ0KSwgdGhpcy5zb3VyY2VTcGFuKHN0YXJ0KSwgcmVzdWx0LCBuYW1lLCBhcmdzLCBuYW1lU3Bhbik7XG4gICAgICB9IHdoaWxlICh0aGlzLm9wdGlvbmFsT3BlcmF0b3IoJ3wnKSk7XG4gICAgfVxuXG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIHBhcnNlRXhwcmVzc2lvbigpOiBBU1QgeyByZXR1cm4gdGhpcy5wYXJzZUNvbmRpdGlvbmFsKCk7IH1cblxuICBwYXJzZUNvbmRpdGlvbmFsKCk6IEFTVCB7XG4gICAgY29uc3Qgc3RhcnQgPSB0aGlzLmlucHV0SW5kZXg7XG4gICAgY29uc3QgcmVzdWx0ID0gdGhpcy5wYXJzZUxvZ2ljYWxPcigpO1xuXG4gICAgaWYgKHRoaXMub3B0aW9uYWxPcGVyYXRvcignPycpKSB7XG4gICAgICBjb25zdCB5ZXMgPSB0aGlzLnBhcnNlUGlwZSgpO1xuICAgICAgbGV0IG5vOiBBU1Q7XG4gICAgICBpZiAoIXRoaXMub3B0aW9uYWxDaGFyYWN0ZXIoY2hhcnMuJENPTE9OKSkge1xuICAgICAgICBjb25zdCBlbmQgPSB0aGlzLmlucHV0SW5kZXg7XG4gICAgICAgIGNvbnN0IGV4cHJlc3Npb24gPSB0aGlzLmlucHV0LnN1YnN0cmluZyhzdGFydCwgZW5kKTtcbiAgICAgICAgdGhpcy5lcnJvcihgQ29uZGl0aW9uYWwgZXhwcmVzc2lvbiAke2V4cHJlc3Npb259IHJlcXVpcmVzIGFsbCAzIGV4cHJlc3Npb25zYCk7XG4gICAgICAgIG5vID0gbmV3IEVtcHR5RXhwcih0aGlzLnNwYW4oc3RhcnQpLCB0aGlzLnNvdXJjZVNwYW4oc3RhcnQpKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIG5vID0gdGhpcy5wYXJzZVBpcGUoKTtcbiAgICAgIH1cbiAgICAgIHJldHVybiBuZXcgQ29uZGl0aW9uYWwodGhpcy5zcGFuKHN0YXJ0KSwgdGhpcy5zb3VyY2VTcGFuKHN0YXJ0KSwgcmVzdWx0LCB5ZXMsIG5vKTtcbiAgICB9IGVsc2Uge1xuICAgICAgcmV0dXJuIHJlc3VsdDtcbiAgICB9XG4gIH1cblxuICBwYXJzZUxvZ2ljYWxPcigpOiBBU1Qge1xuICAgIC8vICd8fCdcbiAgICBsZXQgcmVzdWx0ID0gdGhpcy5wYXJzZUxvZ2ljYWxBbmQoKTtcbiAgICB3aGlsZSAodGhpcy5vcHRpb25hbE9wZXJhdG9yKCd8fCcpKSB7XG4gICAgICBjb25zdCByaWdodCA9IHRoaXMucGFyc2VMb2dpY2FsQW5kKCk7XG4gICAgICBjb25zdCB7c3RhcnR9ID0gcmVzdWx0LnNwYW47XG4gICAgICByZXN1bHQgPSBuZXcgQmluYXJ5KHRoaXMuc3BhbihzdGFydCksIHRoaXMuc291cmNlU3BhbihzdGFydCksICd8fCcsIHJlc3VsdCwgcmlnaHQpO1xuICAgIH1cbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgcGFyc2VMb2dpY2FsQW5kKCk6IEFTVCB7XG4gICAgLy8gJyYmJ1xuICAgIGxldCByZXN1bHQgPSB0aGlzLnBhcnNlRXF1YWxpdHkoKTtcbiAgICB3aGlsZSAodGhpcy5vcHRpb25hbE9wZXJhdG9yKCcmJicpKSB7XG4gICAgICBjb25zdCByaWdodCA9IHRoaXMucGFyc2VFcXVhbGl0eSgpO1xuICAgICAgY29uc3Qge3N0YXJ0fSA9IHJlc3VsdC5zcGFuO1xuICAgICAgcmVzdWx0ID0gbmV3IEJpbmFyeSh0aGlzLnNwYW4oc3RhcnQpLCB0aGlzLnNvdXJjZVNwYW4oc3RhcnQpLCAnJiYnLCByZXN1bHQsIHJpZ2h0KTtcbiAgICB9XG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIHBhcnNlRXF1YWxpdHkoKTogQVNUIHtcbiAgICAvLyAnPT0nLCchPScsJz09PScsJyE9PSdcbiAgICBsZXQgcmVzdWx0ID0gdGhpcy5wYXJzZVJlbGF0aW9uYWwoKTtcbiAgICB3aGlsZSAodGhpcy5uZXh0LnR5cGUgPT0gVG9rZW5UeXBlLk9wZXJhdG9yKSB7XG4gICAgICBjb25zdCBvcGVyYXRvciA9IHRoaXMubmV4dC5zdHJWYWx1ZTtcbiAgICAgIHN3aXRjaCAob3BlcmF0b3IpIHtcbiAgICAgICAgY2FzZSAnPT0nOlxuICAgICAgICBjYXNlICc9PT0nOlxuICAgICAgICBjYXNlICchPSc6XG4gICAgICAgIGNhc2UgJyE9PSc6XG4gICAgICAgICAgdGhpcy5hZHZhbmNlKCk7XG4gICAgICAgICAgY29uc3QgcmlnaHQgPSB0aGlzLnBhcnNlUmVsYXRpb25hbCgpO1xuICAgICAgICAgIGNvbnN0IHtzdGFydH0gPSByZXN1bHQuc3BhbjtcbiAgICAgICAgICByZXN1bHQgPSBuZXcgQmluYXJ5KHRoaXMuc3BhbihzdGFydCksIHRoaXMuc291cmNlU3BhbihzdGFydCksIG9wZXJhdG9yLCByZXN1bHQsIHJpZ2h0KTtcbiAgICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cbiAgICAgIGJyZWFrO1xuICAgIH1cbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgcGFyc2VSZWxhdGlvbmFsKCk6IEFTVCB7XG4gICAgLy8gJzwnLCAnPicsICc8PScsICc+PSdcbiAgICBsZXQgcmVzdWx0ID0gdGhpcy5wYXJzZUFkZGl0aXZlKCk7XG4gICAgd2hpbGUgKHRoaXMubmV4dC50eXBlID09IFRva2VuVHlwZS5PcGVyYXRvcikge1xuICAgICAgY29uc3Qgb3BlcmF0b3IgPSB0aGlzLm5leHQuc3RyVmFsdWU7XG4gICAgICBzd2l0Y2ggKG9wZXJhdG9yKSB7XG4gICAgICAgIGNhc2UgJzwnOlxuICAgICAgICBjYXNlICc+JzpcbiAgICAgICAgY2FzZSAnPD0nOlxuICAgICAgICBjYXNlICc+PSc6XG4gICAgICAgICAgdGhpcy5hZHZhbmNlKCk7XG4gICAgICAgICAgY29uc3QgcmlnaHQgPSB0aGlzLnBhcnNlQWRkaXRpdmUoKTtcbiAgICAgICAgICBjb25zdCB7c3RhcnR9ID0gcmVzdWx0LnNwYW47XG4gICAgICAgICAgcmVzdWx0ID0gbmV3IEJpbmFyeSh0aGlzLnNwYW4oc3RhcnQpLCB0aGlzLnNvdXJjZVNwYW4oc3RhcnQpLCBvcGVyYXRvciwgcmVzdWx0LCByaWdodCk7XG4gICAgICAgICAgY29udGludWU7XG4gICAgICB9XG4gICAgICBicmVhaztcbiAgICB9XG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIHBhcnNlQWRkaXRpdmUoKTogQVNUIHtcbiAgICAvLyAnKycsICctJ1xuICAgIGxldCByZXN1bHQgPSB0aGlzLnBhcnNlTXVsdGlwbGljYXRpdmUoKTtcbiAgICB3aGlsZSAodGhpcy5uZXh0LnR5cGUgPT0gVG9rZW5UeXBlLk9wZXJhdG9yKSB7XG4gICAgICBjb25zdCBvcGVyYXRvciA9IHRoaXMubmV4dC5zdHJWYWx1ZTtcbiAgICAgIHN3aXRjaCAob3BlcmF0b3IpIHtcbiAgICAgICAgY2FzZSAnKyc6XG4gICAgICAgIGNhc2UgJy0nOlxuICAgICAgICAgIHRoaXMuYWR2YW5jZSgpO1xuICAgICAgICAgIGxldCByaWdodCA9IHRoaXMucGFyc2VNdWx0aXBsaWNhdGl2ZSgpO1xuICAgICAgICAgIGNvbnN0IHtzdGFydH0gPSByZXN1bHQuc3BhbjtcbiAgICAgICAgICByZXN1bHQgPSBuZXcgQmluYXJ5KHRoaXMuc3BhbihzdGFydCksIHRoaXMuc291cmNlU3BhbihzdGFydCksIG9wZXJhdG9yLCByZXN1bHQsIHJpZ2h0KTtcbiAgICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cbiAgICAgIGJyZWFrO1xuICAgIH1cbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgcGFyc2VNdWx0aXBsaWNhdGl2ZSgpOiBBU1Qge1xuICAgIC8vICcqJywgJyUnLCAnLydcbiAgICBsZXQgcmVzdWx0ID0gdGhpcy5wYXJzZVByZWZpeCgpO1xuICAgIHdoaWxlICh0aGlzLm5leHQudHlwZSA9PSBUb2tlblR5cGUuT3BlcmF0b3IpIHtcbiAgICAgIGNvbnN0IG9wZXJhdG9yID0gdGhpcy5uZXh0LnN0clZhbHVlO1xuICAgICAgc3dpdGNoIChvcGVyYXRvcikge1xuICAgICAgICBjYXNlICcqJzpcbiAgICAgICAgY2FzZSAnJSc6XG4gICAgICAgIGNhc2UgJy8nOlxuICAgICAgICAgIHRoaXMuYWR2YW5jZSgpO1xuICAgICAgICAgIGxldCByaWdodCA9IHRoaXMucGFyc2VQcmVmaXgoKTtcbiAgICAgICAgICBjb25zdCB7c3RhcnR9ID0gcmVzdWx0LnNwYW47XG4gICAgICAgICAgcmVzdWx0ID0gbmV3IEJpbmFyeSh0aGlzLnNwYW4oc3RhcnQpLCB0aGlzLnNvdXJjZVNwYW4oc3RhcnQpLCBvcGVyYXRvciwgcmVzdWx0LCByaWdodCk7XG4gICAgICAgICAgY29udGludWU7XG4gICAgICB9XG4gICAgICBicmVhaztcbiAgICB9XG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIHBhcnNlUHJlZml4KCk6IEFTVCB7XG4gICAgaWYgKHRoaXMubmV4dC50eXBlID09IFRva2VuVHlwZS5PcGVyYXRvcikge1xuICAgICAgY29uc3Qgc3RhcnQgPSB0aGlzLmlucHV0SW5kZXg7XG4gICAgICBjb25zdCBvcGVyYXRvciA9IHRoaXMubmV4dC5zdHJWYWx1ZTtcbiAgICAgIGNvbnN0IGxpdGVyYWxTcGFuID0gbmV3IFBhcnNlU3BhbihzdGFydCwgc3RhcnQpO1xuICAgICAgY29uc3QgbGl0ZXJhbFNvdXJjZVNwYW4gPSBsaXRlcmFsU3Bhbi50b0Fic29sdXRlKHRoaXMuYWJzb2x1dGVPZmZzZXQpO1xuICAgICAgbGV0IHJlc3VsdDogQVNUO1xuICAgICAgc3dpdGNoIChvcGVyYXRvcikge1xuICAgICAgICBjYXNlICcrJzpcbiAgICAgICAgICB0aGlzLmFkdmFuY2UoKTtcbiAgICAgICAgICByZXN1bHQgPSB0aGlzLnBhcnNlUHJlZml4KCk7XG4gICAgICAgICAgcmV0dXJuIG5ldyBCaW5hcnkoXG4gICAgICAgICAgICAgIHRoaXMuc3BhbihzdGFydCksIHRoaXMuc291cmNlU3BhbihzdGFydCksICctJywgcmVzdWx0LFxuICAgICAgICAgICAgICBuZXcgTGl0ZXJhbFByaW1pdGl2ZShsaXRlcmFsU3BhbiwgbGl0ZXJhbFNvdXJjZVNwYW4sIDApKTtcbiAgICAgICAgY2FzZSAnLSc6XG4gICAgICAgICAgdGhpcy5hZHZhbmNlKCk7XG4gICAgICAgICAgcmVzdWx0ID0gdGhpcy5wYXJzZVByZWZpeCgpO1xuICAgICAgICAgIHJldHVybiBuZXcgQmluYXJ5KFxuICAgICAgICAgICAgICB0aGlzLnNwYW4oc3RhcnQpLCB0aGlzLnNvdXJjZVNwYW4oc3RhcnQpLCBvcGVyYXRvcixcbiAgICAgICAgICAgICAgbmV3IExpdGVyYWxQcmltaXRpdmUobGl0ZXJhbFNwYW4sIGxpdGVyYWxTb3VyY2VTcGFuLCAwKSwgcmVzdWx0KTtcbiAgICAgICAgY2FzZSAnISc6XG4gICAgICAgICAgdGhpcy5hZHZhbmNlKCk7XG4gICAgICAgICAgcmVzdWx0ID0gdGhpcy5wYXJzZVByZWZpeCgpO1xuICAgICAgICAgIHJldHVybiBuZXcgUHJlZml4Tm90KHRoaXMuc3BhbihzdGFydCksIHRoaXMuc291cmNlU3BhbihzdGFydCksIHJlc3VsdCk7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiB0aGlzLnBhcnNlQ2FsbENoYWluKCk7XG4gIH1cblxuICBwYXJzZUNhbGxDaGFpbigpOiBBU1Qge1xuICAgIGxldCByZXN1bHQgPSB0aGlzLnBhcnNlUHJpbWFyeSgpO1xuICAgIGNvbnN0IHJlc3VsdFN0YXJ0ID0gcmVzdWx0LnNwYW4uc3RhcnQ7XG4gICAgd2hpbGUgKHRydWUpIHtcbiAgICAgIGlmICh0aGlzLm9wdGlvbmFsQ2hhcmFjdGVyKGNoYXJzLiRQRVJJT0QpKSB7XG4gICAgICAgIHJlc3VsdCA9IHRoaXMucGFyc2VBY2Nlc3NNZW1iZXJPck1ldGhvZENhbGwocmVzdWx0LCBmYWxzZSk7XG5cbiAgICAgIH0gZWxzZSBpZiAodGhpcy5vcHRpb25hbE9wZXJhdG9yKCc/LicpKSB7XG4gICAgICAgIHJlc3VsdCA9IHRoaXMucGFyc2VBY2Nlc3NNZW1iZXJPck1ldGhvZENhbGwocmVzdWx0LCB0cnVlKTtcblxuICAgICAgfSBlbHNlIGlmICh0aGlzLm9wdGlvbmFsQ2hhcmFjdGVyKGNoYXJzLiRMQlJBQ0tFVCkpIHtcbiAgICAgICAgdGhpcy5yYnJhY2tldHNFeHBlY3RlZCsrO1xuICAgICAgICBjb25zdCBrZXkgPSB0aGlzLnBhcnNlUGlwZSgpO1xuICAgICAgICB0aGlzLnJicmFja2V0c0V4cGVjdGVkLS07XG4gICAgICAgIHRoaXMuZXhwZWN0Q2hhcmFjdGVyKGNoYXJzLiRSQlJBQ0tFVCk7XG4gICAgICAgIGlmICh0aGlzLm9wdGlvbmFsT3BlcmF0b3IoJz0nKSkge1xuICAgICAgICAgIGNvbnN0IHZhbHVlID0gdGhpcy5wYXJzZUNvbmRpdGlvbmFsKCk7XG4gICAgICAgICAgcmVzdWx0ID0gbmV3IEtleWVkV3JpdGUoXG4gICAgICAgICAgICAgIHRoaXMuc3BhbihyZXN1bHRTdGFydCksIHRoaXMuc291cmNlU3BhbihyZXN1bHRTdGFydCksIHJlc3VsdCwga2V5LCB2YWx1ZSk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgcmVzdWx0ID0gbmV3IEtleWVkUmVhZCh0aGlzLnNwYW4ocmVzdWx0U3RhcnQpLCB0aGlzLnNvdXJjZVNwYW4ocmVzdWx0U3RhcnQpLCByZXN1bHQsIGtleSk7XG4gICAgICAgIH1cblxuICAgICAgfSBlbHNlIGlmICh0aGlzLm9wdGlvbmFsQ2hhcmFjdGVyKGNoYXJzLiRMUEFSRU4pKSB7XG4gICAgICAgIHRoaXMucnBhcmVuc0V4cGVjdGVkKys7XG4gICAgICAgIGNvbnN0IGFyZ3MgPSB0aGlzLnBhcnNlQ2FsbEFyZ3VtZW50cygpO1xuICAgICAgICB0aGlzLnJwYXJlbnNFeHBlY3RlZC0tO1xuICAgICAgICB0aGlzLmV4cGVjdENoYXJhY3RlcihjaGFycy4kUlBBUkVOKTtcbiAgICAgICAgcmVzdWx0ID1cbiAgICAgICAgICAgIG5ldyBGdW5jdGlvbkNhbGwodGhpcy5zcGFuKHJlc3VsdFN0YXJ0KSwgdGhpcy5zb3VyY2VTcGFuKHJlc3VsdFN0YXJ0KSwgcmVzdWx0LCBhcmdzKTtcblxuICAgICAgfSBlbHNlIGlmICh0aGlzLm9wdGlvbmFsT3BlcmF0b3IoJyEnKSkge1xuICAgICAgICByZXN1bHQgPSBuZXcgTm9uTnVsbEFzc2VydCh0aGlzLnNwYW4ocmVzdWx0U3RhcnQpLCB0aGlzLnNvdXJjZVNwYW4ocmVzdWx0U3RhcnQpLCByZXN1bHQpO1xuXG4gICAgICB9IGVsc2Uge1xuICAgICAgICByZXR1cm4gcmVzdWx0O1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHBhcnNlUHJpbWFyeSgpOiBBU1Qge1xuICAgIGNvbnN0IHN0YXJ0ID0gdGhpcy5pbnB1dEluZGV4O1xuICAgIGlmICh0aGlzLm9wdGlvbmFsQ2hhcmFjdGVyKGNoYXJzLiRMUEFSRU4pKSB7XG4gICAgICB0aGlzLnJwYXJlbnNFeHBlY3RlZCsrO1xuICAgICAgY29uc3QgcmVzdWx0ID0gdGhpcy5wYXJzZVBpcGUoKTtcbiAgICAgIHRoaXMucnBhcmVuc0V4cGVjdGVkLS07XG4gICAgICB0aGlzLmV4cGVjdENoYXJhY3RlcihjaGFycy4kUlBBUkVOKTtcbiAgICAgIHJldHVybiByZXN1bHQ7XG5cbiAgICB9IGVsc2UgaWYgKHRoaXMubmV4dC5pc0tleXdvcmROdWxsKCkpIHtcbiAgICAgIHRoaXMuYWR2YW5jZSgpO1xuICAgICAgcmV0dXJuIG5ldyBMaXRlcmFsUHJpbWl0aXZlKHRoaXMuc3BhbihzdGFydCksIHRoaXMuc291cmNlU3BhbihzdGFydCksIG51bGwpO1xuXG4gICAgfSBlbHNlIGlmICh0aGlzLm5leHQuaXNLZXl3b3JkVW5kZWZpbmVkKCkpIHtcbiAgICAgIHRoaXMuYWR2YW5jZSgpO1xuICAgICAgcmV0dXJuIG5ldyBMaXRlcmFsUHJpbWl0aXZlKHRoaXMuc3BhbihzdGFydCksIHRoaXMuc291cmNlU3BhbihzdGFydCksIHZvaWQgMCk7XG5cbiAgICB9IGVsc2UgaWYgKHRoaXMubmV4dC5pc0tleXdvcmRUcnVlKCkpIHtcbiAgICAgIHRoaXMuYWR2YW5jZSgpO1xuICAgICAgcmV0dXJuIG5ldyBMaXRlcmFsUHJpbWl0aXZlKHRoaXMuc3BhbihzdGFydCksIHRoaXMuc291cmNlU3BhbihzdGFydCksIHRydWUpO1xuXG4gICAgfSBlbHNlIGlmICh0aGlzLm5leHQuaXNLZXl3b3JkRmFsc2UoKSkge1xuICAgICAgdGhpcy5hZHZhbmNlKCk7XG4gICAgICByZXR1cm4gbmV3IExpdGVyYWxQcmltaXRpdmUodGhpcy5zcGFuKHN0YXJ0KSwgdGhpcy5zb3VyY2VTcGFuKHN0YXJ0KSwgZmFsc2UpO1xuXG4gICAgfSBlbHNlIGlmICh0aGlzLm5leHQuaXNLZXl3b3JkVGhpcygpKSB7XG4gICAgICB0aGlzLmFkdmFuY2UoKTtcbiAgICAgIHJldHVybiBuZXcgSW1wbGljaXRSZWNlaXZlcih0aGlzLnNwYW4oc3RhcnQpLCB0aGlzLnNvdXJjZVNwYW4oc3RhcnQpKTtcblxuICAgIH0gZWxzZSBpZiAodGhpcy5vcHRpb25hbENoYXJhY3RlcihjaGFycy4kTEJSQUNLRVQpKSB7XG4gICAgICB0aGlzLnJicmFja2V0c0V4cGVjdGVkKys7XG4gICAgICBjb25zdCBlbGVtZW50cyA9IHRoaXMucGFyc2VFeHByZXNzaW9uTGlzdChjaGFycy4kUkJSQUNLRVQpO1xuICAgICAgdGhpcy5yYnJhY2tldHNFeHBlY3RlZC0tO1xuICAgICAgdGhpcy5leHBlY3RDaGFyYWN0ZXIoY2hhcnMuJFJCUkFDS0VUKTtcbiAgICAgIHJldHVybiBuZXcgTGl0ZXJhbEFycmF5KHRoaXMuc3BhbihzdGFydCksIHRoaXMuc291cmNlU3BhbihzdGFydCksIGVsZW1lbnRzKTtcblxuICAgIH0gZWxzZSBpZiAodGhpcy5uZXh0LmlzQ2hhcmFjdGVyKGNoYXJzLiRMQlJBQ0UpKSB7XG4gICAgICByZXR1cm4gdGhpcy5wYXJzZUxpdGVyYWxNYXAoKTtcblxuICAgIH0gZWxzZSBpZiAodGhpcy5uZXh0LmlzSWRlbnRpZmllcigpKSB7XG4gICAgICByZXR1cm4gdGhpcy5wYXJzZUFjY2Vzc01lbWJlck9yTWV0aG9kQ2FsbChcbiAgICAgICAgICBuZXcgSW1wbGljaXRSZWNlaXZlcih0aGlzLnNwYW4oc3RhcnQpLCB0aGlzLnNvdXJjZVNwYW4oc3RhcnQpKSwgZmFsc2UpO1xuXG4gICAgfSBlbHNlIGlmICh0aGlzLm5leHQuaXNOdW1iZXIoKSkge1xuICAgICAgY29uc3QgdmFsdWUgPSB0aGlzLm5leHQudG9OdW1iZXIoKTtcbiAgICAgIHRoaXMuYWR2YW5jZSgpO1xuICAgICAgcmV0dXJuIG5ldyBMaXRlcmFsUHJpbWl0aXZlKHRoaXMuc3BhbihzdGFydCksIHRoaXMuc291cmNlU3BhbihzdGFydCksIHZhbHVlKTtcblxuICAgIH0gZWxzZSBpZiAodGhpcy5uZXh0LmlzU3RyaW5nKCkpIHtcbiAgICAgIGNvbnN0IGxpdGVyYWxWYWx1ZSA9IHRoaXMubmV4dC50b1N0cmluZygpO1xuICAgICAgdGhpcy5hZHZhbmNlKCk7XG4gICAgICByZXR1cm4gbmV3IExpdGVyYWxQcmltaXRpdmUodGhpcy5zcGFuKHN0YXJ0KSwgdGhpcy5zb3VyY2VTcGFuKHN0YXJ0KSwgbGl0ZXJhbFZhbHVlKTtcblxuICAgIH0gZWxzZSBpZiAodGhpcy5pbmRleCA+PSB0aGlzLnRva2Vucy5sZW5ndGgpIHtcbiAgICAgIHRoaXMuZXJyb3IoYFVuZXhwZWN0ZWQgZW5kIG9mIGV4cHJlc3Npb246ICR7dGhpcy5pbnB1dH1gKTtcbiAgICAgIHJldHVybiBuZXcgRW1wdHlFeHByKHRoaXMuc3BhbihzdGFydCksIHRoaXMuc291cmNlU3BhbihzdGFydCkpO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLmVycm9yKGBVbmV4cGVjdGVkIHRva2VuICR7dGhpcy5uZXh0fWApO1xuICAgICAgcmV0dXJuIG5ldyBFbXB0eUV4cHIodGhpcy5zcGFuKHN0YXJ0KSwgdGhpcy5zb3VyY2VTcGFuKHN0YXJ0KSk7XG4gICAgfVxuICB9XG5cbiAgcGFyc2VFeHByZXNzaW9uTGlzdCh0ZXJtaW5hdG9yOiBudW1iZXIpOiBBU1RbXSB7XG4gICAgY29uc3QgcmVzdWx0OiBBU1RbXSA9IFtdO1xuICAgIGlmICghdGhpcy5uZXh0LmlzQ2hhcmFjdGVyKHRlcm1pbmF0b3IpKSB7XG4gICAgICBkbyB7XG4gICAgICAgIHJlc3VsdC5wdXNoKHRoaXMucGFyc2VQaXBlKCkpO1xuICAgICAgfSB3aGlsZSAodGhpcy5vcHRpb25hbENoYXJhY3RlcihjaGFycy4kQ09NTUEpKTtcbiAgICB9XG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIHBhcnNlTGl0ZXJhbE1hcCgpOiBMaXRlcmFsTWFwIHtcbiAgICBjb25zdCBrZXlzOiBMaXRlcmFsTWFwS2V5W10gPSBbXTtcbiAgICBjb25zdCB2YWx1ZXM6IEFTVFtdID0gW107XG4gICAgY29uc3Qgc3RhcnQgPSB0aGlzLmlucHV0SW5kZXg7XG4gICAgdGhpcy5leHBlY3RDaGFyYWN0ZXIoY2hhcnMuJExCUkFDRSk7XG4gICAgaWYgKCF0aGlzLm9wdGlvbmFsQ2hhcmFjdGVyKGNoYXJzLiRSQlJBQ0UpKSB7XG4gICAgICB0aGlzLnJicmFjZXNFeHBlY3RlZCsrO1xuICAgICAgZG8ge1xuICAgICAgICBjb25zdCBxdW90ZWQgPSB0aGlzLm5leHQuaXNTdHJpbmcoKTtcbiAgICAgICAgY29uc3Qga2V5ID0gdGhpcy5leHBlY3RJZGVudGlmaWVyT3JLZXl3b3JkT3JTdHJpbmcoKTtcbiAgICAgICAga2V5cy5wdXNoKHtrZXksIHF1b3RlZH0pO1xuICAgICAgICB0aGlzLmV4cGVjdENoYXJhY3RlcihjaGFycy4kQ09MT04pO1xuICAgICAgICB2YWx1ZXMucHVzaCh0aGlzLnBhcnNlUGlwZSgpKTtcbiAgICAgIH0gd2hpbGUgKHRoaXMub3B0aW9uYWxDaGFyYWN0ZXIoY2hhcnMuJENPTU1BKSk7XG4gICAgICB0aGlzLnJicmFjZXNFeHBlY3RlZC0tO1xuICAgICAgdGhpcy5leHBlY3RDaGFyYWN0ZXIoY2hhcnMuJFJCUkFDRSk7XG4gICAgfVxuICAgIHJldHVybiBuZXcgTGl0ZXJhbE1hcCh0aGlzLnNwYW4oc3RhcnQpLCB0aGlzLnNvdXJjZVNwYW4oc3RhcnQpLCBrZXlzLCB2YWx1ZXMpO1xuICB9XG5cbiAgcGFyc2VBY2Nlc3NNZW1iZXJPck1ldGhvZENhbGwocmVjZWl2ZXI6IEFTVCwgaXNTYWZlOiBib29sZWFuID0gZmFsc2UpOiBBU1Qge1xuICAgIGNvbnN0IHN0YXJ0ID0gcmVjZWl2ZXIuc3Bhbi5zdGFydDtcbiAgICBjb25zdCBpZCA9IHRoaXMuZXhwZWN0SWRlbnRpZmllck9yS2V5d29yZCgpO1xuXG4gICAgaWYgKHRoaXMub3B0aW9uYWxDaGFyYWN0ZXIoY2hhcnMuJExQQVJFTikpIHtcbiAgICAgIHRoaXMucnBhcmVuc0V4cGVjdGVkKys7XG4gICAgICBjb25zdCBhcmdzID0gdGhpcy5wYXJzZUNhbGxBcmd1bWVudHMoKTtcbiAgICAgIHRoaXMuZXhwZWN0Q2hhcmFjdGVyKGNoYXJzLiRSUEFSRU4pO1xuICAgICAgdGhpcy5ycGFyZW5zRXhwZWN0ZWQtLTtcbiAgICAgIGNvbnN0IHNwYW4gPSB0aGlzLnNwYW4oc3RhcnQpO1xuICAgICAgY29uc3Qgc291cmNlU3BhbiA9IHRoaXMuc291cmNlU3BhbihzdGFydCk7XG4gICAgICByZXR1cm4gaXNTYWZlID8gbmV3IFNhZmVNZXRob2RDYWxsKHNwYW4sIHNvdXJjZVNwYW4sIHJlY2VpdmVyLCBpZCwgYXJncykgOlxuICAgICAgICAgICAgICAgICAgICAgIG5ldyBNZXRob2RDYWxsKHNwYW4sIHNvdXJjZVNwYW4sIHJlY2VpdmVyLCBpZCwgYXJncyk7XG5cbiAgICB9IGVsc2Uge1xuICAgICAgaWYgKGlzU2FmZSkge1xuICAgICAgICBpZiAodGhpcy5vcHRpb25hbE9wZXJhdG9yKCc9JykpIHtcbiAgICAgICAgICB0aGlzLmVycm9yKCdUaGUgXFwnPy5cXCcgb3BlcmF0b3IgY2Fubm90IGJlIHVzZWQgaW4gdGhlIGFzc2lnbm1lbnQnKTtcbiAgICAgICAgICByZXR1cm4gbmV3IEVtcHR5RXhwcih0aGlzLnNwYW4oc3RhcnQpLCB0aGlzLnNvdXJjZVNwYW4oc3RhcnQpKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICByZXR1cm4gbmV3IFNhZmVQcm9wZXJ0eVJlYWQodGhpcy5zcGFuKHN0YXJ0KSwgdGhpcy5zb3VyY2VTcGFuKHN0YXJ0KSwgcmVjZWl2ZXIsIGlkKTtcbiAgICAgICAgfVxuICAgICAgfSBlbHNlIHtcbiAgICAgICAgaWYgKHRoaXMub3B0aW9uYWxPcGVyYXRvcignPScpKSB7XG4gICAgICAgICAgaWYgKCF0aGlzLnBhcnNlQWN0aW9uKSB7XG4gICAgICAgICAgICB0aGlzLmVycm9yKCdCaW5kaW5ncyBjYW5ub3QgY29udGFpbiBhc3NpZ25tZW50cycpO1xuICAgICAgICAgICAgcmV0dXJuIG5ldyBFbXB0eUV4cHIodGhpcy5zcGFuKHN0YXJ0KSwgdGhpcy5zb3VyY2VTcGFuKHN0YXJ0KSk7XG4gICAgICAgICAgfVxuXG4gICAgICAgICAgY29uc3QgdmFsdWUgPSB0aGlzLnBhcnNlQ29uZGl0aW9uYWwoKTtcbiAgICAgICAgICByZXR1cm4gbmV3IFByb3BlcnR5V3JpdGUodGhpcy5zcGFuKHN0YXJ0KSwgdGhpcy5zb3VyY2VTcGFuKHN0YXJ0KSwgcmVjZWl2ZXIsIGlkLCB2YWx1ZSk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgY29uc3Qgc3BhbiA9IHRoaXMuc3BhbihzdGFydCk7XG4gICAgICAgICAgcmV0dXJuIG5ldyBQcm9wZXJ0eVJlYWQodGhpcy5zcGFuKHN0YXJ0KSwgdGhpcy5zb3VyY2VTcGFuKHN0YXJ0KSwgcmVjZWl2ZXIsIGlkKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHBhcnNlQ2FsbEFyZ3VtZW50cygpOiBCaW5kaW5nUGlwZVtdIHtcbiAgICBpZiAodGhpcy5uZXh0LmlzQ2hhcmFjdGVyKGNoYXJzLiRSUEFSRU4pKSByZXR1cm4gW107XG4gICAgY29uc3QgcG9zaXRpb25hbHM6IEFTVFtdID0gW107XG4gICAgZG8ge1xuICAgICAgcG9zaXRpb25hbHMucHVzaCh0aGlzLnBhcnNlUGlwZSgpKTtcbiAgICB9IHdoaWxlICh0aGlzLm9wdGlvbmFsQ2hhcmFjdGVyKGNoYXJzLiRDT01NQSkpO1xuICAgIHJldHVybiBwb3NpdGlvbmFscyBhcyBCaW5kaW5nUGlwZVtdO1xuICB9XG5cbiAgLyoqXG4gICAqIEFuIGlkZW50aWZpZXIsIGEga2V5d29yZCwgYSBzdHJpbmcgd2l0aCBhbiBvcHRpb25hbCBgLWAgaW4gYmV0d2Vlbi5cbiAgICovXG4gIGV4cGVjdFRlbXBsYXRlQmluZGluZ0tleSgpOiBzdHJpbmcge1xuICAgIGxldCByZXN1bHQgPSAnJztcbiAgICBsZXQgb3BlcmF0b3JGb3VuZCA9IGZhbHNlO1xuICAgIGRvIHtcbiAgICAgIHJlc3VsdCArPSB0aGlzLmV4cGVjdElkZW50aWZpZXJPcktleXdvcmRPclN0cmluZygpO1xuICAgICAgb3BlcmF0b3JGb3VuZCA9IHRoaXMub3B0aW9uYWxPcGVyYXRvcignLScpO1xuICAgICAgaWYgKG9wZXJhdG9yRm91bmQpIHtcbiAgICAgICAgcmVzdWx0ICs9ICctJztcbiAgICAgIH1cbiAgICB9IHdoaWxlIChvcGVyYXRvckZvdW5kKTtcblxuICAgIHJldHVybiByZXN1bHQudG9TdHJpbmcoKTtcbiAgfVxuXG4gIC8vIFBhcnNlcyB0aGUgQVNUIGZvciBgPHNvbWUtdGFnICp0cGxLZXk9QVNUPmBcbiAgcGFyc2VUZW1wbGF0ZUJpbmRpbmdzKHRwbEtleTogc3RyaW5nKTogVGVtcGxhdGVCaW5kaW5nUGFyc2VSZXN1bHQge1xuICAgIGxldCBmaXJzdEJpbmRpbmcgPSB0cnVlO1xuICAgIGNvbnN0IGJpbmRpbmdzOiBUZW1wbGF0ZUJpbmRpbmdbXSA9IFtdO1xuICAgIGNvbnN0IHdhcm5pbmdzOiBzdHJpbmdbXSA9IFtdO1xuICAgIGRvIHtcbiAgICAgIGNvbnN0IHN0YXJ0ID0gdGhpcy5pbnB1dEluZGV4O1xuICAgICAgbGV0IHJhd0tleTogc3RyaW5nO1xuICAgICAgbGV0IGtleTogc3RyaW5nO1xuICAgICAgbGV0IGlzVmFyOiBib29sZWFuID0gZmFsc2U7XG4gICAgICBpZiAoZmlyc3RCaW5kaW5nKSB7XG4gICAgICAgIHJhd0tleSA9IGtleSA9IHRwbEtleTtcbiAgICAgICAgZmlyc3RCaW5kaW5nID0gZmFsc2U7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBpc1ZhciA9IHRoaXMucGVla0tleXdvcmRMZXQoKTtcbiAgICAgICAgaWYgKGlzVmFyKSB0aGlzLmFkdmFuY2UoKTtcbiAgICAgICAgcmF3S2V5ID0gdGhpcy5leHBlY3RUZW1wbGF0ZUJpbmRpbmdLZXkoKTtcbiAgICAgICAga2V5ID0gaXNWYXIgPyByYXdLZXkgOiB0cGxLZXkgKyByYXdLZXlbMF0udG9VcHBlckNhc2UoKSArIHJhd0tleS5zdWJzdHJpbmcoMSk7XG4gICAgICAgIHRoaXMub3B0aW9uYWxDaGFyYWN0ZXIoY2hhcnMuJENPTE9OKTtcbiAgICAgIH1cblxuICAgICAgbGV0IG5hbWU6IHN0cmluZyA9IG51bGwgITtcbiAgICAgIGxldCBleHByZXNzaW9uOiBBU1RXaXRoU291cmNlfG51bGwgPSBudWxsO1xuICAgICAgaWYgKGlzVmFyKSB7XG4gICAgICAgIGlmICh0aGlzLm9wdGlvbmFsT3BlcmF0b3IoJz0nKSkge1xuICAgICAgICAgIG5hbWUgPSB0aGlzLmV4cGVjdFRlbXBsYXRlQmluZGluZ0tleSgpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIG5hbWUgPSAnXFwkaW1wbGljaXQnO1xuICAgICAgICB9XG4gICAgICB9IGVsc2UgaWYgKHRoaXMucGVla0tleXdvcmRBcygpKSB7XG4gICAgICAgIHRoaXMuYWR2YW5jZSgpOyAgLy8gY29uc3VtZSBgYXNgXG4gICAgICAgIG5hbWUgPSByYXdLZXk7XG4gICAgICAgIGtleSA9IHRoaXMuZXhwZWN0VGVtcGxhdGVCaW5kaW5nS2V5KCk7ICAvLyByZWFkIGxvY2FsIHZhciBuYW1lXG4gICAgICAgIGlzVmFyID0gdHJ1ZTtcbiAgICAgIH0gZWxzZSBpZiAodGhpcy5uZXh0ICE9PSBFT0YgJiYgIXRoaXMucGVla0tleXdvcmRMZXQoKSkge1xuICAgICAgICBjb25zdCBzdGFydCA9IHRoaXMuaW5wdXRJbmRleDtcbiAgICAgICAgY29uc3QgYXN0ID0gdGhpcy5wYXJzZVBpcGUoKTtcbiAgICAgICAgY29uc3Qgc291cmNlID0gdGhpcy5pbnB1dC5zdWJzdHJpbmcoc3RhcnQgLSB0aGlzLm9mZnNldCwgdGhpcy5pbnB1dEluZGV4IC0gdGhpcy5vZmZzZXQpO1xuICAgICAgICBleHByZXNzaW9uID1cbiAgICAgICAgICAgIG5ldyBBU1RXaXRoU291cmNlKGFzdCwgc291cmNlLCB0aGlzLmxvY2F0aW9uLCB0aGlzLmFic29sdXRlT2Zmc2V0ICsgc3RhcnQsIHRoaXMuZXJyb3JzKTtcbiAgICAgIH1cblxuICAgICAgYmluZGluZ3MucHVzaChuZXcgVGVtcGxhdGVCaW5kaW5nKFxuICAgICAgICAgIHRoaXMuc3BhbihzdGFydCksIHRoaXMuc291cmNlU3BhbihzdGFydCksIGtleSwgaXNWYXIsIG5hbWUsIGV4cHJlc3Npb24pKTtcbiAgICAgIGlmICh0aGlzLnBlZWtLZXl3b3JkQXMoKSAmJiAhaXNWYXIpIHtcbiAgICAgICAgY29uc3QgbGV0U3RhcnQgPSB0aGlzLmlucHV0SW5kZXg7XG4gICAgICAgIHRoaXMuYWR2YW5jZSgpOyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gY29uc3VtZSBgYXNgXG4gICAgICAgIGNvbnN0IGxldE5hbWUgPSB0aGlzLmV4cGVjdFRlbXBsYXRlQmluZGluZ0tleSgpOyAgLy8gcmVhZCBsb2NhbCB2YXIgbmFtZVxuICAgICAgICBiaW5kaW5ncy5wdXNoKG5ldyBUZW1wbGF0ZUJpbmRpbmcoXG4gICAgICAgICAgICB0aGlzLnNwYW4obGV0U3RhcnQpLCB0aGlzLnNvdXJjZVNwYW4obGV0U3RhcnQpLCBsZXROYW1lLCB0cnVlLCBrZXksIG51bGwgISkpO1xuICAgICAgfVxuICAgICAgaWYgKCF0aGlzLm9wdGlvbmFsQ2hhcmFjdGVyKGNoYXJzLiRTRU1JQ09MT04pKSB7XG4gICAgICAgIHRoaXMub3B0aW9uYWxDaGFyYWN0ZXIoY2hhcnMuJENPTU1BKTtcbiAgICAgIH1cbiAgICB9IHdoaWxlICh0aGlzLmluZGV4IDwgdGhpcy50b2tlbnMubGVuZ3RoKTtcblxuICAgIHJldHVybiBuZXcgVGVtcGxhdGVCaW5kaW5nUGFyc2VSZXN1bHQoYmluZGluZ3MsIHdhcm5pbmdzLCB0aGlzLmVycm9ycyk7XG4gIH1cblxuICBlcnJvcihtZXNzYWdlOiBzdHJpbmcsIGluZGV4OiBudW1iZXJ8bnVsbCA9IG51bGwpIHtcbiAgICB0aGlzLmVycm9ycy5wdXNoKG5ldyBQYXJzZXJFcnJvcihtZXNzYWdlLCB0aGlzLmlucHV0LCB0aGlzLmxvY2F0aW9uVGV4dChpbmRleCksIHRoaXMubG9jYXRpb24pKTtcbiAgICB0aGlzLnNraXAoKTtcbiAgfVxuXG4gIHByaXZhdGUgbG9jYXRpb25UZXh0KGluZGV4OiBudW1iZXJ8bnVsbCA9IG51bGwpIHtcbiAgICBpZiAoaW5kZXggPT0gbnVsbCkgaW5kZXggPSB0aGlzLmluZGV4O1xuICAgIHJldHVybiAoaW5kZXggPCB0aGlzLnRva2Vucy5sZW5ndGgpID8gYGF0IGNvbHVtbiAke3RoaXMudG9rZW5zW2luZGV4XS5pbmRleCArIDF9IGluYCA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBgYXQgdGhlIGVuZCBvZiB0aGUgZXhwcmVzc2lvbmA7XG4gIH1cblxuICAvLyBFcnJvciByZWNvdmVyeSBzaG91bGQgc2tpcCB0b2tlbnMgdW50aWwgaXQgZW5jb3VudGVycyBhIHJlY292ZXJ5IHBvaW50LiBza2lwKCkgdHJlYXRzXG4gIC8vIHRoZSBlbmQgb2YgaW5wdXQgYW5kIGEgJzsnIGFzIHVuY29uZGl0aW9uYWxseSBhIHJlY292ZXJ5IHBvaW50LiBJdCBhbHNvIHRyZWF0cyAnKScsXG4gIC8vICd9JyBhbmQgJ10nIGFzIGNvbmRpdGlvbmFsIHJlY292ZXJ5IHBvaW50cyBpZiBvbmUgb2YgY2FsbGluZyBwcm9kdWN0aW9ucyBpcyBleHBlY3RpbmdcbiAgLy8gb25lIG9mIHRoZXNlIHN5bWJvbHMuIFRoaXMgYWxsb3dzIHNraXAoKSB0byByZWNvdmVyIGZyb20gZXJyb3JzIHN1Y2ggYXMgJyhhLikgKyAxJyBhbGxvd2luZ1xuICAvLyBtb3JlIG9mIHRoZSBBU1QgdG8gYmUgcmV0YWluZWQgKGl0IGRvZXNuJ3Qgc2tpcCBhbnkgdG9rZW5zIGFzIHRoZSAnKScgaXMgcmV0YWluZWQgYmVjYXVzZVxuICAvLyBvZiB0aGUgJygnIGJlZ2lucyBhbiAnKCcgPGV4cHI+ICcpJyBwcm9kdWN0aW9uKS4gVGhlIHJlY292ZXJ5IHBvaW50cyBvZiBncm91cGluZyBzeW1ib2xzXG4gIC8vIG11c3QgYmUgY29uZGl0aW9uYWwgYXMgdGhleSBtdXN0IGJlIHNraXBwZWQgaWYgbm9uZSBvZiB0aGUgY2FsbGluZyBwcm9kdWN0aW9ucyBhcmUgbm90XG4gIC8vIGV4cGVjdGluZyB0aGUgY2xvc2luZyB0b2tlbiBlbHNlIHdlIHdpbGwgbmV2ZXIgbWFrZSBwcm9ncmVzcyBpbiB0aGUgY2FzZSBvZiBhblxuICAvLyBleHRyYW5lb3VzIGdyb3VwIGNsb3Npbmcgc3ltYm9sIChzdWNoIGFzIGEgc3RyYXkgJyknKS4gVGhpcyBpcyBub3QgdGhlIGNhc2UgZm9yICc7JyBiZWNhdXNlXG4gIC8vIHBhcnNlQ2hhaW4oKSBpcyBhbHdheXMgdGhlIHJvb3QgcHJvZHVjdGlvbiBhbmQgaXQgZXhwZWN0cyBhICc7Jy5cblxuICAvLyBJZiBhIHByb2R1Y3Rpb24gZXhwZWN0cyBvbmUgb2YgdGhlc2UgdG9rZW4gaXQgaW5jcmVtZW50cyB0aGUgY29ycmVzcG9uZGluZyBuZXN0aW5nIGNvdW50LFxuICAvLyBhbmQgdGhlbiBkZWNyZW1lbnRzIGl0IGp1c3QgcHJpb3IgdG8gY2hlY2tpbmcgaWYgdGhlIHRva2VuIGlzIGluIHRoZSBpbnB1dC5cbiAgcHJpdmF0ZSBza2lwKCkge1xuICAgIGxldCBuID0gdGhpcy5uZXh0O1xuICAgIHdoaWxlICh0aGlzLmluZGV4IDwgdGhpcy50b2tlbnMubGVuZ3RoICYmICFuLmlzQ2hhcmFjdGVyKGNoYXJzLiRTRU1JQ09MT04pICYmXG4gICAgICAgICAgICh0aGlzLnJwYXJlbnNFeHBlY3RlZCA8PSAwIHx8ICFuLmlzQ2hhcmFjdGVyKGNoYXJzLiRSUEFSRU4pKSAmJlxuICAgICAgICAgICAodGhpcy5yYnJhY2VzRXhwZWN0ZWQgPD0gMCB8fCAhbi5pc0NoYXJhY3RlcihjaGFycy4kUkJSQUNFKSkgJiZcbiAgICAgICAgICAgKHRoaXMucmJyYWNrZXRzRXhwZWN0ZWQgPD0gMCB8fCAhbi5pc0NoYXJhY3RlcihjaGFycy4kUkJSQUNLRVQpKSkge1xuICAgICAgaWYgKHRoaXMubmV4dC5pc0Vycm9yKCkpIHtcbiAgICAgICAgdGhpcy5lcnJvcnMucHVzaChuZXcgUGFyc2VyRXJyb3IoXG4gICAgICAgICAgICB0aGlzLm5leHQudG9TdHJpbmcoKSAhLCB0aGlzLmlucHV0LCB0aGlzLmxvY2F0aW9uVGV4dCgpLCB0aGlzLmxvY2F0aW9uKSk7XG4gICAgICB9XG4gICAgICB0aGlzLmFkdmFuY2UoKTtcbiAgICAgIG4gPSB0aGlzLm5leHQ7XG4gICAgfVxuICB9XG59XG5cbmNsYXNzIFNpbXBsZUV4cHJlc3Npb25DaGVja2VyIGltcGxlbWVudHMgQXN0VmlzaXRvciB7XG4gIGVycm9yczogc3RyaW5nW10gPSBbXTtcblxuICB2aXNpdEltcGxpY2l0UmVjZWl2ZXIoYXN0OiBJbXBsaWNpdFJlY2VpdmVyLCBjb250ZXh0OiBhbnkpIHt9XG5cbiAgdmlzaXRJbnRlcnBvbGF0aW9uKGFzdDogSW50ZXJwb2xhdGlvbiwgY29udGV4dDogYW55KSB7fVxuXG4gIHZpc2l0TGl0ZXJhbFByaW1pdGl2ZShhc3Q6IExpdGVyYWxQcmltaXRpdmUsIGNvbnRleHQ6IGFueSkge31cblxuICB2aXNpdFByb3BlcnR5UmVhZChhc3Q6IFByb3BlcnR5UmVhZCwgY29udGV4dDogYW55KSB7fVxuXG4gIHZpc2l0UHJvcGVydHlXcml0ZShhc3Q6IFByb3BlcnR5V3JpdGUsIGNvbnRleHQ6IGFueSkge31cblxuICB2aXNpdFNhZmVQcm9wZXJ0eVJlYWQoYXN0OiBTYWZlUHJvcGVydHlSZWFkLCBjb250ZXh0OiBhbnkpIHt9XG5cbiAgdmlzaXRNZXRob2RDYWxsKGFzdDogTWV0aG9kQ2FsbCwgY29udGV4dDogYW55KSB7fVxuXG4gIHZpc2l0U2FmZU1ldGhvZENhbGwoYXN0OiBTYWZlTWV0aG9kQ2FsbCwgY29udGV4dDogYW55KSB7fVxuXG4gIHZpc2l0RnVuY3Rpb25DYWxsKGFzdDogRnVuY3Rpb25DYWxsLCBjb250ZXh0OiBhbnkpIHt9XG5cbiAgdmlzaXRMaXRlcmFsQXJyYXkoYXN0OiBMaXRlcmFsQXJyYXksIGNvbnRleHQ6IGFueSkgeyB0aGlzLnZpc2l0QWxsKGFzdC5leHByZXNzaW9ucyk7IH1cblxuICB2aXNpdExpdGVyYWxNYXAoYXN0OiBMaXRlcmFsTWFwLCBjb250ZXh0OiBhbnkpIHsgdGhpcy52aXNpdEFsbChhc3QudmFsdWVzKTsgfVxuXG4gIHZpc2l0QmluYXJ5KGFzdDogQmluYXJ5LCBjb250ZXh0OiBhbnkpIHt9XG5cbiAgdmlzaXRQcmVmaXhOb3QoYXN0OiBQcmVmaXhOb3QsIGNvbnRleHQ6IGFueSkge31cblxuICB2aXNpdE5vbk51bGxBc3NlcnQoYXN0OiBOb25OdWxsQXNzZXJ0LCBjb250ZXh0OiBhbnkpIHt9XG5cbiAgdmlzaXRDb25kaXRpb25hbChhc3Q6IENvbmRpdGlvbmFsLCBjb250ZXh0OiBhbnkpIHt9XG5cbiAgdmlzaXRQaXBlKGFzdDogQmluZGluZ1BpcGUsIGNvbnRleHQ6IGFueSkgeyB0aGlzLmVycm9ycy5wdXNoKCdwaXBlcycpOyB9XG5cbiAgdmlzaXRLZXllZFJlYWQoYXN0OiBLZXllZFJlYWQsIGNvbnRleHQ6IGFueSkge31cblxuICB2aXNpdEtleWVkV3JpdGUoYXN0OiBLZXllZFdyaXRlLCBjb250ZXh0OiBhbnkpIHt9XG5cbiAgdmlzaXRBbGwoYXN0czogYW55W10pOiBhbnlbXSB7IHJldHVybiBhc3RzLm1hcChub2RlID0+IG5vZGUudmlzaXQodGhpcykpOyB9XG5cbiAgdmlzaXRDaGFpbihhc3Q6IENoYWluLCBjb250ZXh0OiBhbnkpIHt9XG5cbiAgdmlzaXRRdW90ZShhc3Q6IFF1b3RlLCBjb250ZXh0OiBhbnkpIHt9XG59XG5cbi8qKlxuICogVGhpcyBjbGFzcyBleHRlbmRzIFNpbXBsZUV4cHJlc3Npb25DaGVja2VyIHVzZWQgaW4gVmlldyBFbmdpbmUgYW5kIHBlcmZvcm1zIG1vcmUgc3RyaWN0IGNoZWNrcyB0b1xuICogbWFrZSBzdXJlIGhvc3QgYmluZGluZ3MgZG8gbm90IGNvbnRhaW4gcGlwZXMuIEluIFZpZXcgRW5naW5lLCBoYXZpbmcgcGlwZXMgaW4gaG9zdCBiaW5kaW5ncyBpc1xuICogbm90IHN1cHBvcnRlZCBhcyB3ZWxsLCBidXQgaW4gc29tZSBjYXNlcyAobGlrZSBgISh2YWx1ZSB8IGFzeW5jKWApIHRoZSBlcnJvciBpcyBub3QgdHJpZ2dlcmVkIGF0XG4gKiBjb21waWxlIHRpbWUuIEluIG9yZGVyIHRvIHByZXNlcnZlIFZpZXcgRW5naW5lIGJlaGF2aW9yLCBtb3JlIHN0cmljdCBjaGVja3MgYXJlIGludHJvZHVjZWQgZm9yXG4gKiBJdnkgbW9kZSBvbmx5LlxuICovXG5jbGFzcyBJdnlTaW1wbGVFeHByZXNzaW9uQ2hlY2tlciBleHRlbmRzIFNpbXBsZUV4cHJlc3Npb25DaGVja2VyIHtcbiAgdmlzaXRCaW5hcnkoYXN0OiBCaW5hcnksIGNvbnRleHQ6IGFueSkge1xuICAgIGFzdC5sZWZ0LnZpc2l0KHRoaXMpO1xuICAgIGFzdC5yaWdodC52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0UHJlZml4Tm90KGFzdDogUHJlZml4Tm90LCBjb250ZXh0OiBhbnkpIHsgYXN0LmV4cHJlc3Npb24udmlzaXQodGhpcyk7IH1cbn0iXX0=