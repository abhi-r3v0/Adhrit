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
        define("@angular/compiler/src/css_parser/css_parser", ["require", "exports", "tslib", "@angular/compiler/src/chars", "@angular/compiler/src/parse_util", "@angular/compiler/src/css_parser/css_ast", "@angular/compiler/src/css_parser/css_lexer", "@angular/compiler/src/css_parser/css_lexer", "@angular/compiler/src/css_parser/css_ast"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.CssParseError = exports.CssParser = exports.ParsedCssResult = void 0;
    var tslib_1 = require("tslib");
    var chars = require("@angular/compiler/src/chars");
    var parse_util_1 = require("@angular/compiler/src/parse_util");
    var css_ast_1 = require("@angular/compiler/src/css_parser/css_ast");
    var css_lexer_1 = require("@angular/compiler/src/css_parser/css_lexer");
    var SPACE_OPERATOR = ' ';
    var css_lexer_2 = require("@angular/compiler/src/css_parser/css_lexer");
    Object.defineProperty(exports, "CssToken", { enumerable: true, get: function () { return css_lexer_2.CssToken; } });
    var css_ast_2 = require("@angular/compiler/src/css_parser/css_ast");
    Object.defineProperty(exports, "BlockType", { enumerable: true, get: function () { return css_ast_2.BlockType; } });
    var SLASH_CHARACTER = '/';
    var GT_CHARACTER = '>';
    var TRIPLE_GT_OPERATOR_STR = '>>>';
    var DEEP_OPERATOR_STR = '/deep/';
    var EOF_DELIM_FLAG = 1;
    var RBRACE_DELIM_FLAG = 2;
    var LBRACE_DELIM_FLAG = 4;
    var COMMA_DELIM_FLAG = 8;
    var COLON_DELIM_FLAG = 16;
    var SEMICOLON_DELIM_FLAG = 32;
    var NEWLINE_DELIM_FLAG = 64;
    var RPAREN_DELIM_FLAG = 128;
    var LPAREN_DELIM_FLAG = 256;
    var SPACE_DELIM_FLAG = 512;
    function _pseudoSelectorSupportsInnerSelectors(name) {
        return ['not', 'host', 'host-context'].indexOf(name) >= 0;
    }
    function isSelectorOperatorCharacter(code) {
        switch (code) {
            case chars.$SLASH:
            case chars.$TILDA:
            case chars.$PLUS:
            case chars.$GT:
                return true;
            default:
                return chars.isWhitespace(code);
        }
    }
    function getDelimFromCharacter(code) {
        switch (code) {
            case chars.$EOF:
                return EOF_DELIM_FLAG;
            case chars.$COMMA:
                return COMMA_DELIM_FLAG;
            case chars.$COLON:
                return COLON_DELIM_FLAG;
            case chars.$SEMICOLON:
                return SEMICOLON_DELIM_FLAG;
            case chars.$RBRACE:
                return RBRACE_DELIM_FLAG;
            case chars.$LBRACE:
                return LBRACE_DELIM_FLAG;
            case chars.$RPAREN:
                return RPAREN_DELIM_FLAG;
            case chars.$SPACE:
            case chars.$TAB:
                return SPACE_DELIM_FLAG;
            default:
                return css_lexer_1.isNewline(code) ? NEWLINE_DELIM_FLAG : 0;
        }
    }
    function characterContainsDelimiter(code, delimiters) {
        return (getDelimFromCharacter(code) & delimiters) > 0;
    }
    var ParsedCssResult = /** @class */ (function () {
        function ParsedCssResult(errors, ast) {
            this.errors = errors;
            this.ast = ast;
        }
        return ParsedCssResult;
    }());
    exports.ParsedCssResult = ParsedCssResult;
    var CssParser = /** @class */ (function () {
        function CssParser() {
            this._errors = [];
        }
        /**
         * @param css the CSS code that will be parsed
         * @param url the name of the CSS file containing the CSS source code
         */
        CssParser.prototype.parse = function (css, url) {
            var lexer = new css_lexer_1.CssLexer();
            this._file = new parse_util_1.ParseSourceFile(css, url);
            this._scanner = lexer.scan(css, false);
            var ast = this._parseStyleSheet(EOF_DELIM_FLAG);
            var errors = this._errors;
            this._errors = [];
            var result = new ParsedCssResult(errors, ast);
            this._file = null;
            this._scanner = null;
            return result;
        };
        /** @internal */
        CssParser.prototype._parseStyleSheet = function (delimiters) {
            var results = [];
            this._scanner.consumeEmptyStatements();
            while (this._scanner.peek != chars.$EOF) {
                this._scanner.setMode(css_lexer_1.CssLexerMode.BLOCK);
                results.push(this._parseRule(delimiters));
            }
            var span = null;
            if (results.length > 0) {
                var firstRule = results[0];
                // we collect the last token like so incase there was an
                // EOF token that was emitted sometime during the lexing
                span = this._generateSourceSpan(firstRule, this._lastToken);
            }
            return new css_ast_1.CssStyleSheetAst(span, results);
        };
        /** @internal */
        CssParser.prototype._getSourceContent = function () {
            return this._scanner != null ? this._scanner.input : '';
        };
        /** @internal */
        CssParser.prototype._extractSourceContent = function (start, end) {
            return this._getSourceContent().substring(start, end + 1);
        };
        /** @internal */
        CssParser.prototype._generateSourceSpan = function (start, end) {
            if (end === void 0) { end = null; }
            var startLoc;
            if (start instanceof css_ast_1.CssAst) {
                startLoc = start.location.start;
            }
            else {
                var token = start;
                if (token == null) {
                    // the data here is invalid, however, if and when this does
                    // occur, any other errors associated with this will be collected
                    token = this._lastToken;
                }
                startLoc = new parse_util_1.ParseLocation(this._file, token.index, token.line, token.column);
            }
            if (end == null) {
                end = this._lastToken;
            }
            var endLine = -1;
            var endColumn = -1;
            var endIndex = -1;
            if (end instanceof css_ast_1.CssAst) {
                endLine = end.location.end.line;
                endColumn = end.location.end.col;
                endIndex = end.location.end.offset;
            }
            else if (end instanceof css_lexer_1.CssToken) {
                endLine = end.line;
                endColumn = end.column;
                endIndex = end.index;
            }
            var endLoc = new parse_util_1.ParseLocation(this._file, endIndex, endLine, endColumn);
            return new parse_util_1.ParseSourceSpan(startLoc, endLoc);
        };
        /** @internal */
        CssParser.prototype._resolveBlockType = function (token) {
            switch (token.strValue) {
                case '@-o-keyframes':
                case '@-moz-keyframes':
                case '@-webkit-keyframes':
                case '@keyframes':
                    return css_ast_1.BlockType.Keyframes;
                case '@charset':
                    return css_ast_1.BlockType.Charset;
                case '@import':
                    return css_ast_1.BlockType.Import;
                case '@namespace':
                    return css_ast_1.BlockType.Namespace;
                case '@page':
                    return css_ast_1.BlockType.Page;
                case '@document':
                    return css_ast_1.BlockType.Document;
                case '@media':
                    return css_ast_1.BlockType.MediaQuery;
                case '@font-face':
                    return css_ast_1.BlockType.FontFace;
                case '@viewport':
                    return css_ast_1.BlockType.Viewport;
                case '@supports':
                    return css_ast_1.BlockType.Supports;
                default:
                    return css_ast_1.BlockType.Unsupported;
            }
        };
        /** @internal */
        CssParser.prototype._parseRule = function (delimiters) {
            if (this._scanner.peek == chars.$AT) {
                return this._parseAtRule(delimiters);
            }
            return this._parseSelectorRule(delimiters);
        };
        /** @internal */
        CssParser.prototype._parseAtRule = function (delimiters) {
            var start = this._getScannerIndex();
            this._scanner.setMode(css_lexer_1.CssLexerMode.BLOCK);
            var token = this._scan();
            var startToken = token;
            this._assertCondition(token.type == css_lexer_1.CssTokenType.AtKeyword, "The CSS Rule " + token.strValue + " is not a valid [@] rule.", token);
            var block;
            var type = this._resolveBlockType(token);
            var span;
            var tokens;
            var endToken;
            var end;
            var strValue;
            var query;
            switch (type) {
                case css_ast_1.BlockType.Charset:
                case css_ast_1.BlockType.Namespace:
                case css_ast_1.BlockType.Import:
                    var value = this._parseValue(delimiters);
                    this._scanner.setMode(css_lexer_1.CssLexerMode.BLOCK);
                    this._scanner.consumeEmptyStatements();
                    span = this._generateSourceSpan(startToken, value);
                    return new css_ast_1.CssInlineRuleAst(span, type, value);
                case css_ast_1.BlockType.Viewport:
                case css_ast_1.BlockType.FontFace:
                    block = this._parseStyleBlock(delimiters);
                    span = this._generateSourceSpan(startToken, block);
                    return new css_ast_1.CssBlockRuleAst(span, type, block);
                case css_ast_1.BlockType.Keyframes:
                    tokens = this._collectUntilDelim(delimiters | RBRACE_DELIM_FLAG | LBRACE_DELIM_FLAG);
                    // keyframes only have one identifier name
                    var name_1 = tokens[0];
                    block = this._parseKeyframeBlock(delimiters);
                    span = this._generateSourceSpan(startToken, block);
                    return new css_ast_1.CssKeyframeRuleAst(span, name_1, block);
                case css_ast_1.BlockType.MediaQuery:
                    this._scanner.setMode(css_lexer_1.CssLexerMode.MEDIA_QUERY);
                    tokens = this._collectUntilDelim(delimiters | RBRACE_DELIM_FLAG | LBRACE_DELIM_FLAG);
                    endToken = tokens[tokens.length - 1];
                    // we do not track the whitespace after the mediaQuery predicate ends
                    // so we have to calculate the end string value on our own
                    end = endToken.index + endToken.strValue.length - 1;
                    strValue = this._extractSourceContent(start, end);
                    span = this._generateSourceSpan(startToken, endToken);
                    query = new css_ast_1.CssAtRulePredicateAst(span, strValue, tokens);
                    block = this._parseBlock(delimiters);
                    strValue = this._extractSourceContent(start, this._getScannerIndex() - 1);
                    span = this._generateSourceSpan(startToken, block);
                    return new css_ast_1.CssMediaQueryRuleAst(span, strValue, query, block);
                case css_ast_1.BlockType.Document:
                case css_ast_1.BlockType.Supports:
                case css_ast_1.BlockType.Page:
                    this._scanner.setMode(css_lexer_1.CssLexerMode.AT_RULE_QUERY);
                    tokens = this._collectUntilDelim(delimiters | RBRACE_DELIM_FLAG | LBRACE_DELIM_FLAG);
                    endToken = tokens[tokens.length - 1];
                    // we do not track the whitespace after this block rule predicate ends
                    // so we have to calculate the end string value on our own
                    end = endToken.index + endToken.strValue.length - 1;
                    strValue = this._extractSourceContent(start, end);
                    span = this._generateSourceSpan(startToken, tokens[tokens.length - 1]);
                    query = new css_ast_1.CssAtRulePredicateAst(span, strValue, tokens);
                    block = this._parseBlock(delimiters);
                    strValue = this._extractSourceContent(start, block.end.offset);
                    span = this._generateSourceSpan(startToken, block);
                    return new css_ast_1.CssBlockDefinitionRuleAst(span, strValue, type, query, block);
                // if a custom @rule { ... } is used it should still tokenize the insides
                default:
                    var listOfTokens_1 = [];
                    var tokenName = token.strValue;
                    this._scanner.setMode(css_lexer_1.CssLexerMode.ALL);
                    this._error(css_lexer_1.generateErrorMessage(this._getSourceContent(), "The CSS \"at\" rule \"" + tokenName + "\" is not allowed to used here", token.strValue, token.index, token.line, token.column), token);
                    this._collectUntilDelim(delimiters | LBRACE_DELIM_FLAG | SEMICOLON_DELIM_FLAG)
                        .forEach(function (token) {
                        listOfTokens_1.push(token);
                    });
                    if (this._scanner.peek == chars.$LBRACE) {
                        listOfTokens_1.push(this._consume(css_lexer_1.CssTokenType.Character, '{'));
                        this._collectUntilDelim(delimiters | RBRACE_DELIM_FLAG | LBRACE_DELIM_FLAG)
                            .forEach(function (token) {
                            listOfTokens_1.push(token);
                        });
                        listOfTokens_1.push(this._consume(css_lexer_1.CssTokenType.Character, '}'));
                    }
                    endToken = listOfTokens_1[listOfTokens_1.length - 1];
                    span = this._generateSourceSpan(startToken, endToken);
                    return new css_ast_1.CssUnknownRuleAst(span, tokenName, listOfTokens_1);
            }
        };
        /** @internal */
        CssParser.prototype._parseSelectorRule = function (delimiters) {
            var start = this._getScannerIndex();
            var selectors = this._parseSelectors(delimiters);
            var block = this._parseStyleBlock(delimiters);
            var ruleAst;
            var span;
            var startSelector = selectors[0];
            if (block != null) {
                span = this._generateSourceSpan(startSelector, block);
                ruleAst = new css_ast_1.CssSelectorRuleAst(span, selectors, block);
            }
            else {
                var name_2 = this._extractSourceContent(start, this._getScannerIndex() - 1);
                var innerTokens_1 = [];
                selectors.forEach(function (selector) {
                    selector.selectorParts.forEach(function (part) {
                        part.tokens.forEach(function (token) {
                            innerTokens_1.push(token);
                        });
                    });
                });
                var endToken = innerTokens_1[innerTokens_1.length - 1];
                span = this._generateSourceSpan(startSelector, endToken);
                ruleAst = new css_ast_1.CssUnknownTokenListAst(span, name_2, innerTokens_1);
            }
            this._scanner.setMode(css_lexer_1.CssLexerMode.BLOCK);
            this._scanner.consumeEmptyStatements();
            return ruleAst;
        };
        /** @internal */
        CssParser.prototype._parseSelectors = function (delimiters) {
            delimiters |= LBRACE_DELIM_FLAG | SEMICOLON_DELIM_FLAG;
            var selectors = [];
            var isParsingSelectors = true;
            while (isParsingSelectors) {
                selectors.push(this._parseSelector(delimiters));
                isParsingSelectors = !characterContainsDelimiter(this._scanner.peek, delimiters);
                if (isParsingSelectors) {
                    this._consume(css_lexer_1.CssTokenType.Character, ',');
                    isParsingSelectors = !characterContainsDelimiter(this._scanner.peek, delimiters);
                    if (isParsingSelectors) {
                        this._scanner.consumeWhitespace();
                    }
                }
            }
            return selectors;
        };
        /** @internal */
        CssParser.prototype._scan = function () {
            var output = this._scanner.scan();
            var token = output.token;
            var error = output.error;
            if (error != null) {
                this._error(css_lexer_1.getRawMessage(error), token);
            }
            this._lastToken = token;
            return token;
        };
        /** @internal */
        CssParser.prototype._getScannerIndex = function () {
            return this._scanner.index;
        };
        /** @internal */
        CssParser.prototype._consume = function (type, value) {
            if (value === void 0) { value = null; }
            var output = this._scanner.consume(type, value);
            var token = output.token;
            var error = output.error;
            if (error != null) {
                this._error(css_lexer_1.getRawMessage(error), token);
            }
            this._lastToken = token;
            return token;
        };
        /** @internal */
        CssParser.prototype._parseKeyframeBlock = function (delimiters) {
            delimiters |= RBRACE_DELIM_FLAG;
            this._scanner.setMode(css_lexer_1.CssLexerMode.KEYFRAME_BLOCK);
            var startToken = this._consume(css_lexer_1.CssTokenType.Character, '{');
            var definitions = [];
            while (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
                definitions.push(this._parseKeyframeDefinition(delimiters));
            }
            var endToken = this._consume(css_lexer_1.CssTokenType.Character, '}');
            var span = this._generateSourceSpan(startToken, endToken);
            return new css_ast_1.CssBlockAst(span, definitions);
        };
        /** @internal */
        CssParser.prototype._parseKeyframeDefinition = function (delimiters) {
            var start = this._getScannerIndex();
            var stepTokens = [];
            delimiters |= LBRACE_DELIM_FLAG;
            while (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
                stepTokens.push(this._parseKeyframeLabel(delimiters | COMMA_DELIM_FLAG));
                if (this._scanner.peek != chars.$LBRACE) {
                    this._consume(css_lexer_1.CssTokenType.Character, ',');
                }
            }
            var stylesBlock = this._parseStyleBlock(delimiters | RBRACE_DELIM_FLAG);
            var span = this._generateSourceSpan(stepTokens[0], stylesBlock);
            var ast = new css_ast_1.CssKeyframeDefinitionAst(span, stepTokens, stylesBlock);
            this._scanner.setMode(css_lexer_1.CssLexerMode.BLOCK);
            return ast;
        };
        /** @internal */
        CssParser.prototype._parseKeyframeLabel = function (delimiters) {
            this._scanner.setMode(css_lexer_1.CssLexerMode.KEYFRAME_BLOCK);
            return css_ast_1.mergeTokens(this._collectUntilDelim(delimiters));
        };
        /** @internal */
        CssParser.prototype._parsePseudoSelector = function (delimiters) {
            var start = this._getScannerIndex();
            delimiters &= ~COMMA_DELIM_FLAG;
            // we keep the original value since we may use it to recurse when :not, :host are used
            var startingDelims = delimiters;
            var startToken = this._consume(css_lexer_1.CssTokenType.Character, ':');
            var tokens = [startToken];
            if (this._scanner.peek == chars.$COLON) { // ::something
                tokens.push(this._consume(css_lexer_1.CssTokenType.Character, ':'));
            }
            var innerSelectors = [];
            this._scanner.setMode(css_lexer_1.CssLexerMode.PSEUDO_SELECTOR);
            // host, host-context, lang, not, nth-child are all identifiers
            var pseudoSelectorToken = this._consume(css_lexer_1.CssTokenType.Identifier);
            var pseudoSelectorName = pseudoSelectorToken.strValue;
            tokens.push(pseudoSelectorToken);
            // host(), lang(), nth-child(), etc...
            if (this._scanner.peek == chars.$LPAREN) {
                this._scanner.setMode(css_lexer_1.CssLexerMode.PSEUDO_SELECTOR_WITH_ARGUMENTS);
                var openParenToken = this._consume(css_lexer_1.CssTokenType.Character, '(');
                tokens.push(openParenToken);
                // :host(innerSelector(s)), :not(selector), etc...
                if (_pseudoSelectorSupportsInnerSelectors(pseudoSelectorName)) {
                    var innerDelims = startingDelims | LPAREN_DELIM_FLAG | RPAREN_DELIM_FLAG;
                    if (pseudoSelectorName == 'not') {
                        // the inner selector inside of :not(...) can only be one
                        // CSS selector (no commas allowed) ... This is according
                        // to the CSS specification
                        innerDelims |= COMMA_DELIM_FLAG;
                    }
                    // :host(a, b, c) {
                    this._parseSelectors(innerDelims).forEach(function (selector, index) {
                        innerSelectors.push(selector);
                    });
                }
                else {
                    // this branch is for things like "en-us, 2k + 1, etc..."
                    // which all end up in pseudoSelectors like :lang, :nth-child, etc..
                    var innerValueDelims = delimiters | LBRACE_DELIM_FLAG | COLON_DELIM_FLAG |
                        RPAREN_DELIM_FLAG | LPAREN_DELIM_FLAG;
                    while (!characterContainsDelimiter(this._scanner.peek, innerValueDelims)) {
                        var token = this._scan();
                        tokens.push(token);
                    }
                }
                var closeParenToken = this._consume(css_lexer_1.CssTokenType.Character, ')');
                tokens.push(closeParenToken);
            }
            var end = this._getScannerIndex() - 1;
            var strValue = this._extractSourceContent(start, end);
            var endToken = tokens[tokens.length - 1];
            var span = this._generateSourceSpan(startToken, endToken);
            return new css_ast_1.CssPseudoSelectorAst(span, strValue, pseudoSelectorName, tokens, innerSelectors);
        };
        /** @internal */
        CssParser.prototype._parseSimpleSelector = function (delimiters) {
            var start = this._getScannerIndex();
            delimiters |= COMMA_DELIM_FLAG;
            this._scanner.setMode(css_lexer_1.CssLexerMode.SELECTOR);
            var selectorCssTokens = [];
            var pseudoSelectors = [];
            var previousToken = undefined;
            var selectorPartDelimiters = delimiters | SPACE_DELIM_FLAG;
            var loopOverSelector = !characterContainsDelimiter(this._scanner.peek, selectorPartDelimiters);
            var hasAttributeError = false;
            while (loopOverSelector) {
                var peek = this._scanner.peek;
                switch (peek) {
                    case chars.$COLON:
                        var innerPseudo = this._parsePseudoSelector(delimiters);
                        pseudoSelectors.push(innerPseudo);
                        this._scanner.setMode(css_lexer_1.CssLexerMode.SELECTOR);
                        break;
                    case chars.$LBRACKET:
                        // we set the mode after the scan because attribute mode does not
                        // allow attribute [] values. And this also will catch any errors
                        // if an extra "[" is used inside.
                        selectorCssTokens.push(this._scan());
                        this._scanner.setMode(css_lexer_1.CssLexerMode.ATTRIBUTE_SELECTOR);
                        break;
                    case chars.$RBRACKET:
                        if (this._scanner.getMode() != css_lexer_1.CssLexerMode.ATTRIBUTE_SELECTOR) {
                            hasAttributeError = true;
                        }
                        // we set the mode early because attribute mode does not
                        // allow attribute [] values
                        this._scanner.setMode(css_lexer_1.CssLexerMode.SELECTOR);
                        selectorCssTokens.push(this._scan());
                        break;
                    default:
                        if (isSelectorOperatorCharacter(peek)) {
                            loopOverSelector = false;
                            continue;
                        }
                        var token = this._scan();
                        previousToken = token;
                        selectorCssTokens.push(token);
                        break;
                }
                loopOverSelector = !characterContainsDelimiter(this._scanner.peek, selectorPartDelimiters);
            }
            hasAttributeError =
                hasAttributeError || this._scanner.getMode() == css_lexer_1.CssLexerMode.ATTRIBUTE_SELECTOR;
            if (hasAttributeError) {
                this._error("Unbalanced CSS attribute selector at column " + previousToken.line + ":" + previousToken.column, previousToken);
            }
            var end = this._getScannerIndex() - 1;
            // this happens if the selector is not directly followed by
            // a comma or curly brace without a space in between
            var operator = null;
            var operatorScanCount = 0;
            var lastOperatorToken = null;
            if (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
                while (operator == null && !characterContainsDelimiter(this._scanner.peek, delimiters) &&
                    isSelectorOperatorCharacter(this._scanner.peek)) {
                    var token = this._scan();
                    var tokenOperator = token.strValue;
                    operatorScanCount++;
                    lastOperatorToken = token;
                    if (tokenOperator != SPACE_OPERATOR) {
                        switch (tokenOperator) {
                            case SLASH_CHARACTER:
                                // /deep/ operator
                                var deepToken = this._consume(css_lexer_1.CssTokenType.Identifier);
                                var deepSlash = this._consume(css_lexer_1.CssTokenType.Character);
                                var index = lastOperatorToken.index;
                                var line = lastOperatorToken.line;
                                var column = lastOperatorToken.column;
                                if (deepToken != null && deepToken.strValue.toLowerCase() == 'deep' &&
                                    deepSlash.strValue == SLASH_CHARACTER) {
                                    token = new css_lexer_1.CssToken(lastOperatorToken.index, lastOperatorToken.column, lastOperatorToken.line, css_lexer_1.CssTokenType.Identifier, DEEP_OPERATOR_STR);
                                }
                                else {
                                    var text = SLASH_CHARACTER + deepToken.strValue + deepSlash.strValue;
                                    this._error(css_lexer_1.generateErrorMessage(this._getSourceContent(), text + " is an invalid CSS operator", text, index, line, column), lastOperatorToken);
                                    token = new css_lexer_1.CssToken(index, column, line, css_lexer_1.CssTokenType.Invalid, text);
                                }
                                break;
                            case GT_CHARACTER:
                                // >>> operator
                                if (this._scanner.peek == chars.$GT && this._scanner.peekPeek == chars.$GT) {
                                    this._consume(css_lexer_1.CssTokenType.Character, GT_CHARACTER);
                                    this._consume(css_lexer_1.CssTokenType.Character, GT_CHARACTER);
                                    token = new css_lexer_1.CssToken(lastOperatorToken.index, lastOperatorToken.column, lastOperatorToken.line, css_lexer_1.CssTokenType.Identifier, TRIPLE_GT_OPERATOR_STR);
                                }
                                break;
                        }
                        operator = token;
                    }
                }
                // so long as there is an operator then we can have an
                // ending value that is beyond the selector value ...
                // otherwise it's just a bunch of trailing whitespace
                if (operator != null) {
                    end = operator.index;
                }
            }
            this._scanner.consumeWhitespace();
            var strValue = this._extractSourceContent(start, end);
            // if we do come across one or more spaces inside of
            // the operators loop then an empty space is still a
            // valid operator to use if something else was not found
            if (operator == null && operatorScanCount > 0 && this._scanner.peek != chars.$LBRACE) {
                operator = lastOperatorToken;
            }
            // please note that `endToken` is reassigned multiple times below
            // so please do not optimize the if statements into if/elseif
            var startTokenOrAst = null;
            var endTokenOrAst = null;
            if (selectorCssTokens.length > 0) {
                startTokenOrAst = startTokenOrAst || selectorCssTokens[0];
                endTokenOrAst = selectorCssTokens[selectorCssTokens.length - 1];
            }
            if (pseudoSelectors.length > 0) {
                startTokenOrAst = startTokenOrAst || pseudoSelectors[0];
                endTokenOrAst = pseudoSelectors[pseudoSelectors.length - 1];
            }
            if (operator != null) {
                startTokenOrAst = startTokenOrAst || operator;
                endTokenOrAst = operator;
            }
            var span = this._generateSourceSpan(startTokenOrAst, endTokenOrAst);
            return new css_ast_1.CssSimpleSelectorAst(span, selectorCssTokens, strValue, pseudoSelectors, operator);
        };
        /** @internal */
        CssParser.prototype._parseSelector = function (delimiters) {
            delimiters |= COMMA_DELIM_FLAG;
            this._scanner.setMode(css_lexer_1.CssLexerMode.SELECTOR);
            var simpleSelectors = [];
            while (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
                simpleSelectors.push(this._parseSimpleSelector(delimiters));
                this._scanner.consumeWhitespace();
            }
            var firstSelector = simpleSelectors[0];
            var lastSelector = simpleSelectors[simpleSelectors.length - 1];
            var span = this._generateSourceSpan(firstSelector, lastSelector);
            return new css_ast_1.CssSelectorAst(span, simpleSelectors);
        };
        /** @internal */
        CssParser.prototype._parseValue = function (delimiters) {
            delimiters |= RBRACE_DELIM_FLAG | SEMICOLON_DELIM_FLAG | NEWLINE_DELIM_FLAG;
            this._scanner.setMode(css_lexer_1.CssLexerMode.STYLE_VALUE);
            var start = this._getScannerIndex();
            var tokens = [];
            var wsStr = '';
            var previous = undefined;
            while (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
                var token = void 0;
                if (previous != null && previous.type == css_lexer_1.CssTokenType.Identifier &&
                    this._scanner.peek == chars.$LPAREN) {
                    token = this._consume(css_lexer_1.CssTokenType.Character, '(');
                    tokens.push(token);
                    this._scanner.setMode(css_lexer_1.CssLexerMode.STYLE_VALUE_FUNCTION);
                    token = this._scan();
                    tokens.push(token);
                    this._scanner.setMode(css_lexer_1.CssLexerMode.STYLE_VALUE);
                    token = this._consume(css_lexer_1.CssTokenType.Character, ')');
                    tokens.push(token);
                }
                else {
                    token = this._scan();
                    if (token.type == css_lexer_1.CssTokenType.Whitespace) {
                        wsStr += token.strValue;
                    }
                    else {
                        wsStr = '';
                        tokens.push(token);
                    }
                }
                previous = token;
            }
            var end = this._getScannerIndex() - 1;
            this._scanner.consumeWhitespace();
            var code = this._scanner.peek;
            if (code == chars.$SEMICOLON) {
                this._consume(css_lexer_1.CssTokenType.Character, ';');
            }
            else if (code != chars.$RBRACE) {
                this._error(css_lexer_1.generateErrorMessage(this._getSourceContent(), "The CSS key/value definition did not end with a semicolon", previous.strValue, previous.index, previous.line, previous.column), previous);
            }
            var strValue = this._extractSourceContent(start, end);
            var startToken = tokens[0];
            var endToken = tokens[tokens.length - 1];
            var span = this._generateSourceSpan(startToken, endToken);
            return new css_ast_1.CssStyleValueAst(span, tokens, strValue);
        };
        /** @internal */
        CssParser.prototype._collectUntilDelim = function (delimiters, assertType) {
            if (assertType === void 0) { assertType = null; }
            var tokens = [];
            while (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
                var val = assertType != null ? this._consume(assertType) : this._scan();
                tokens.push(val);
            }
            return tokens;
        };
        /** @internal */
        CssParser.prototype._parseBlock = function (delimiters) {
            delimiters |= RBRACE_DELIM_FLAG;
            this._scanner.setMode(css_lexer_1.CssLexerMode.BLOCK);
            var startToken = this._consume(css_lexer_1.CssTokenType.Character, '{');
            this._scanner.consumeEmptyStatements();
            var results = [];
            while (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
                results.push(this._parseRule(delimiters));
            }
            var endToken = this._consume(css_lexer_1.CssTokenType.Character, '}');
            this._scanner.setMode(css_lexer_1.CssLexerMode.BLOCK);
            this._scanner.consumeEmptyStatements();
            var span = this._generateSourceSpan(startToken, endToken);
            return new css_ast_1.CssBlockAst(span, results);
        };
        /** @internal */
        CssParser.prototype._parseStyleBlock = function (delimiters) {
            delimiters |= RBRACE_DELIM_FLAG | LBRACE_DELIM_FLAG;
            this._scanner.setMode(css_lexer_1.CssLexerMode.STYLE_BLOCK);
            var startToken = this._consume(css_lexer_1.CssTokenType.Character, '{');
            if (startToken.numValue != chars.$LBRACE) {
                return null;
            }
            var definitions = [];
            this._scanner.consumeEmptyStatements();
            while (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
                definitions.push(this._parseDefinition(delimiters));
                this._scanner.consumeEmptyStatements();
            }
            var endToken = this._consume(css_lexer_1.CssTokenType.Character, '}');
            this._scanner.setMode(css_lexer_1.CssLexerMode.STYLE_BLOCK);
            this._scanner.consumeEmptyStatements();
            var span = this._generateSourceSpan(startToken, endToken);
            return new css_ast_1.CssStylesBlockAst(span, definitions);
        };
        /** @internal */
        CssParser.prototype._parseDefinition = function (delimiters) {
            this._scanner.setMode(css_lexer_1.CssLexerMode.STYLE_BLOCK);
            var prop = this._consume(css_lexer_1.CssTokenType.Identifier);
            var parseValue = false;
            var value = null;
            var endToken = prop;
            // the colon value separates the prop from the style.
            // there are a few cases as to what could happen if it
            // is missing
            switch (this._scanner.peek) {
                case chars.$SEMICOLON:
                case chars.$RBRACE:
                case chars.$EOF:
                    parseValue = false;
                    break;
                default:
                    var propStr_1 = [prop.strValue];
                    if (this._scanner.peek != chars.$COLON) {
                        // this will throw the error
                        var nextValue = this._consume(css_lexer_1.CssTokenType.Character, ':');
                        propStr_1.push(nextValue.strValue);
                        var remainingTokens = this._collectUntilDelim(delimiters | COLON_DELIM_FLAG | SEMICOLON_DELIM_FLAG, css_lexer_1.CssTokenType.Identifier);
                        if (remainingTokens.length > 0) {
                            remainingTokens.forEach(function (token) {
                                propStr_1.push(token.strValue);
                            });
                        }
                        endToken = prop =
                            new css_lexer_1.CssToken(prop.index, prop.column, prop.line, prop.type, propStr_1.join(' '));
                    }
                    // this means we've reached the end of the definition and/or block
                    if (this._scanner.peek == chars.$COLON) {
                        this._consume(css_lexer_1.CssTokenType.Character, ':');
                        parseValue = true;
                    }
                    break;
            }
            if (parseValue) {
                value = this._parseValue(delimiters);
                endToken = value;
            }
            else {
                this._error(css_lexer_1.generateErrorMessage(this._getSourceContent(), "The CSS property was not paired with a style value", prop.strValue, prop.index, prop.line, prop.column), prop);
            }
            var span = this._generateSourceSpan(prop, endToken);
            return new css_ast_1.CssDefinitionAst(span, prop, value);
        };
        /** @internal */
        CssParser.prototype._assertCondition = function (status, errorMessage, problemToken) {
            if (!status) {
                this._error(errorMessage, problemToken);
                return true;
            }
            return false;
        };
        /** @internal */
        CssParser.prototype._error = function (message, problemToken) {
            var length = problemToken.strValue.length;
            var error = CssParseError.create(this._file, 0, problemToken.line, problemToken.column, length, message);
            this._errors.push(error);
        };
        return CssParser;
    }());
    exports.CssParser = CssParser;
    var CssParseError = /** @class */ (function (_super) {
        tslib_1.__extends(CssParseError, _super);
        function CssParseError(span, message) {
            return _super.call(this, span, message) || this;
        }
        CssParseError.create = function (file, offset, line, col, length, errMsg) {
            var start = new parse_util_1.ParseLocation(file, offset, line, col);
            var end = new parse_util_1.ParseLocation(file, offset, line, col + length);
            var span = new parse_util_1.ParseSourceSpan(start, end);
            return new CssParseError(span, 'CSS Parse Error: ' + errMsg);
        };
        return CssParseError;
    }(parse_util_1.ParseError));
    exports.CssParseError = CssParseError;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY3NzX3BhcnNlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9jc3NfcGFyc2VyL2Nzc19wYXJzZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUVILG1EQUFrQztJQUNsQywrREFBMEY7SUFFMUYsb0VBQSthO0lBQy9hLHdFQUF1STtJQUV2SSxJQUFNLGNBQWMsR0FBRyxHQUFHLENBQUM7SUFFM0Isd0VBQXFDO0lBQTdCLHFHQUFBLFFBQVEsT0FBQTtJQUNoQixvRUFBb0M7SUFBNUIsb0dBQUEsU0FBUyxPQUFBO0lBRWpCLElBQU0sZUFBZSxHQUFHLEdBQUcsQ0FBQztJQUM1QixJQUFNLFlBQVksR0FBRyxHQUFHLENBQUM7SUFDekIsSUFBTSxzQkFBc0IsR0FBRyxLQUFLLENBQUM7SUFDckMsSUFBTSxpQkFBaUIsR0FBRyxRQUFRLENBQUM7SUFFbkMsSUFBTSxjQUFjLEdBQUcsQ0FBQyxDQUFDO0lBQ3pCLElBQU0saUJBQWlCLEdBQUcsQ0FBQyxDQUFDO0lBQzVCLElBQU0saUJBQWlCLEdBQUcsQ0FBQyxDQUFDO0lBQzVCLElBQU0sZ0JBQWdCLEdBQUcsQ0FBQyxDQUFDO0lBQzNCLElBQU0sZ0JBQWdCLEdBQUcsRUFBRSxDQUFDO0lBQzVCLElBQU0sb0JBQW9CLEdBQUcsRUFBRSxDQUFDO0lBQ2hDLElBQU0sa0JBQWtCLEdBQUcsRUFBRSxDQUFDO0lBQzlCLElBQU0saUJBQWlCLEdBQUcsR0FBRyxDQUFDO0lBQzlCLElBQU0saUJBQWlCLEdBQUcsR0FBRyxDQUFDO0lBQzlCLElBQU0sZ0JBQWdCLEdBQUcsR0FBRyxDQUFDO0lBRTdCLFNBQVMscUNBQXFDLENBQUMsSUFBWTtRQUN6RCxPQUFPLENBQUMsS0FBSyxFQUFFLE1BQU0sRUFBRSxjQUFjLENBQUMsQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLElBQUksQ0FB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QUFDO1FBQ0gsZ0JBQUM7SUFBRCxDQUFDLEFBbnpCRCxJQW16QkM7SUFuekJZLDhCQUFTO0lBcXpCdEI7UUFBbUMseUNBQVU7UUFVM0MsdUJBQVksSUFBcUIsRUFBRSxPQUFlO21CQUNoRCxrQkFBTSxJQUFJLEVBQUUsT0FBTyxDQUFDO1FBQ3RCLENBQUM7UUFYTSxvQkFBTSxHQUFiLFVBQ0ksSUFBcUIsRUFBRSxNQUFjLEVBQUUsSUFBWSxFQUFFLEdBQVcsRUFBRSxNQUFjLEVBQ2hGLE1BQWM7WUFDaEIsSUFBTSxLQUFLLEdBQUcsSUFBSSwwQkFBYSxDQUFDLElBQUksRUFBRSxNQUFNLEVBQUUsSUFBSSxFQUFFLEdBQUcsQ0FBQyxDQUFDO1lBQ3pELElBQU0sR0FBRyxHQUFHLElBQUksMEJBQWEsQ0FBQyxJQUFJLEVBQUUsTUFBTSxFQUFFLElBQUksRUFBRSxHQUFHLEdBQUcsTUFBTSxDQUFDLENBQUM7WUFDaEUsSUFBTSxJQUFJLEdBQUcsSUFBSSw0QkFBZSxDQUFDLEtBQUssRUFBRSxHQUFHLENBQUMsQ0FBQztZQUM3QyxPQUFPLElBQUksYUFBYSxDQUFDLElBQUksRUFBRSxtQkFBbUIsR0FBRyxNQUFNLENBQUMsQ0FBQztRQUMvRCxDQUFDO1FBS0gsb0JBQUM7SUFBRCxDQUFDLEFBYkQsQ0FBbUMsdUJBQVUsR0FhNUM7SUFiWSxzQ0FBYSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyBjaGFycyBmcm9tICcuLi9jaGFycyc7XG5pbXBvcnQge1BhcnNlRXJyb3IsIFBhcnNlTG9jYXRpb24sIFBhcnNlU291cmNlRmlsZSwgUGFyc2VTb3VyY2VTcGFufSBmcm9tICcuLi9wYXJzZV91dGlsJztcblxuaW1wb3J0IHtCbG9ja1R5cGUsIENzc0FzdCwgQ3NzQXRSdWxlUHJlZGljYXRlQXN0LCBDc3NCbG9ja0FzdCwgQ3NzQmxvY2tEZWZpbml0aW9uUnVsZUFzdCwgQ3NzQmxvY2tSdWxlQXN0LCBDc3NEZWZpbml0aW9uQXN0LCBDc3NJbmxpbmVSdWxlQXN0LCBDc3NLZXlmcmFtZURlZmluaXRpb25Bc3QsIENzc0tleWZyYW1lUnVsZUFzdCwgQ3NzTWVkaWFRdWVyeVJ1bGVBc3QsIENzc1BzZXVkb1NlbGVjdG9yQXN0LCBDc3NSdWxlQXN0LCBDc3NTZWxlY3RvckFzdCwgQ3NzU2VsZWN0b3JSdWxlQXN0LCBDc3NTaW1wbGVTZWxlY3RvckFzdCwgQ3NzU3R5bGVzQmxvY2tBc3QsIENzc1N0eWxlU2hlZXRBc3QsIENzc1N0eWxlVmFsdWVBc3QsIENzc1Vua25vd25SdWxlQXN0LCBDc3NVbmtub3duVG9rZW5MaXN0QXN0LCBtZXJnZVRva2Vuc30gZnJvbSAnLi9jc3NfYXN0JztcbmltcG9ydCB7Q3NzTGV4ZXIsIENzc0xleGVyTW9kZSwgQ3NzU2Nhbm5lciwgQ3NzVG9rZW4sIENzc1Rva2VuVHlwZSwgZ2VuZXJhdGVFcnJvck1lc3NhZ2UsIGdldFJhd01lc3NhZ2UsIGlzTmV3bGluZX0gZnJvbSAnLi9jc3NfbGV4ZXInO1xuXG5jb25zdCBTUEFDRV9PUEVSQVRPUiA9ICcgJztcblxuZXhwb3J0IHtDc3NUb2tlbn0gZnJvbSAnLi9jc3NfbGV4ZXInO1xuZXhwb3J0IHtCbG9ja1R5cGV9IGZyb20gJy4vY3NzX2FzdCc7XG5cbmNvbnN0IFNMQVNIX0NIQVJBQ1RFUiA9ICcvJztcbmNvbnN0IEdUX0NIQVJBQ1RFUiA9ICc+JztcbmNvbnN0IFRSSVBMRV9HVF9PUEVSQVRPUl9TVFIgPSAnPj4+JztcbmNvbnN0IERFRVBfT1BFUkFUT1JfU1RSID0gJy9kZWVwLyc7XG5cbmNvbnN0IEVPRl9ERUxJTV9GTEFHID0gMTtcbmNvbnN0IFJCUkFDRV9ERUxJTV9GTEFHID0gMjtcbmNvbnN0IExCUkFDRV9ERUxJTV9GTEFHID0gNDtcbmNvbnN0IENPTU1BX0RFTElNX0ZMQUcgPSA4O1xuY29uc3QgQ09MT05fREVMSU1fRkxBRyA9IDE2O1xuY29uc3QgU0VNSUNPTE9OX0RFTElNX0ZMQUcgPSAzMjtcbmNvbnN0IE5FV0xJTkVfREVMSU1fRkxBRyA9IDY0O1xuY29uc3QgUlBBUkVOX0RFTElNX0ZMQUcgPSAxMjg7XG5jb25zdCBMUEFSRU5fREVMSU1fRkxBRyA9IDI1NjtcbmNvbnN0IFNQQUNFX0RFTElNX0ZMQUcgPSA1MTI7XG5cbmZ1bmN0aW9uIF9wc2V1ZG9TZWxlY3RvclN1cHBvcnRzSW5uZXJTZWxlY3RvcnMobmFtZTogc3RyaW5nKTogYm9vbGVhbiB7XG4gIHJldHVybiBbJ25vdCcsICdob3N0JywgJ2hvc3QtY29udGV4dCddLmluZGV4T2YobmFtZSkgPj0gMDtcbn1cblxuZnVuY3Rpb24gaXNTZWxlY3Rvck9wZXJhdG9yQ2hhcmFjdGVyKGNvZGU6IG51bWJlcik6IGJvb2xlYW4ge1xuICBzd2l0Y2ggKGNvZGUpIHtcbiAgICBjYXNlIGNoYXJzLiRTTEFTSDpcbiAgICBjYXNlIGNoYXJzLiRUSUxEQTpcbiAgICBjYXNlIGNoYXJzLiRQTFVTOlxuICAgIGNhc2UgY2hhcnMuJEdUOlxuICAgICAgcmV0dXJuIHRydWU7XG4gICAgZGVmYXVsdDpcbiAgICAgIHJldHVybiBjaGFycy5pc1doaXRlc3BhY2UoY29kZSk7XG4gIH1cbn1cblxuZnVuY3Rpb24gZ2V0RGVsaW1Gcm9tQ2hhcmFjdGVyKGNvZGU6IG51bWJlcik6IG51bWJlciB7XG4gIHN3aXRjaCAoY29kZSkge1xuICAgIGNhc2UgY2hhcnMuJEVPRjpcbiAgICAgIHJldHVybiBFT0ZfREVMSU1fRkxBRztcbiAgICBjYXNlIGNoYXJzLiRDT01NQTpcbiAgICAgIHJldHVybiBDT01NQV9ERUxJTV9GTEFHO1xuICAgIGNhc2UgY2hhcnMuJENPTE9OOlxuICAgICAgcmV0dXJuIENPTE9OX0RFTElNX0ZMQUc7XG4gICAgY2FzZSBjaGFycy4kU0VNSUNPTE9OOlxuICAgICAgcmV0dXJuIFNFTUlDT0xPTl9ERUxJTV9GTEFHO1xuICAgIGNhc2UgY2hhcnMuJFJCUkFDRTpcbiAgICAgIHJldHVybiBSQlJBQ0VfREVMSU1fRkxBRztcbiAgICBjYXNlIGNoYXJzLiRMQlJBQ0U6XG4gICAgICByZXR1cm4gTEJSQUNFX0RFTElNX0ZMQUc7XG4gICAgY2FzZSBjaGFycy4kUlBBUkVOOlxuICAgICAgcmV0dXJuIFJQQVJFTl9ERUxJTV9GTEFHO1xuICAgIGNhc2UgY2hhcnMuJFNQQUNFOlxuICAgIGNhc2UgY2hhcnMuJFRBQjpcbiAgICAgIHJldHVybiBTUEFDRV9ERUxJTV9GTEFHO1xuICAgIGRlZmF1bHQ6XG4gICAgICByZXR1cm4gaXNOZXdsaW5lKGNvZGUpID8gTkVXTElORV9ERUxJTV9GTEFHIDogMDtcbiAgfVxufVxuXG5mdW5jdGlvbiBjaGFyYWN0ZXJDb250YWluc0RlbGltaXRlcihjb2RlOiBudW1iZXIsIGRlbGltaXRlcnM6IG51bWJlcik6IGJvb2xlYW4ge1xuICByZXR1cm4gKGdldERlbGltRnJvbUNoYXJhY3Rlcihjb2RlKSAmIGRlbGltaXRlcnMpID4gMDtcbn1cblxuZXhwb3J0IGNsYXNzIFBhcnNlZENzc1Jlc3VsdCB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBlcnJvcnM6IENzc1BhcnNlRXJyb3JbXSwgcHVibGljIGFzdDogQ3NzU3R5bGVTaGVldEFzdCkge31cbn1cblxuZXhwb3J0IGNsYXNzIENzc1BhcnNlciB7XG4gIHByaXZhdGUgX2Vycm9yczogQ3NzUGFyc2VFcnJvcltdID0gW107XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9maWxlITogUGFyc2VTb3VyY2VGaWxlO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcHJpdmF0ZSBfc2Nhbm5lciE6IENzc1NjYW5uZXI7XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9sYXN0VG9rZW4hOiBDc3NUb2tlbjtcblxuICAvKipcbiAgICogQHBhcmFtIGNzcyB0aGUgQ1NTIGNvZGUgdGhhdCB3aWxsIGJlIHBhcnNlZFxuICAgKiBAcGFyYW0gdXJsIHRoZSBuYW1lIG9mIHRoZSBDU1MgZmlsZSBjb250YWluaW5nIHRoZSBDU1Mgc291cmNlIGNvZGVcbiAgICovXG4gIHBhcnNlKGNzczogc3RyaW5nLCB1cmw6IHN0cmluZyk6IFBhcnNlZENzc1Jlc3VsdCB7XG4gICAgY29uc3QgbGV4ZXIgPSBuZXcgQ3NzTGV4ZXIoKTtcbiAgICB0aGlzLl9maWxlID0gbmV3IFBhcnNlU291cmNlRmlsZShjc3MsIHVybCk7XG4gICAgdGhpcy5fc2Nhbm5lciA9IGxleGVyLnNjYW4oY3NzLCBmYWxzZSk7XG5cbiAgICBjb25zdCBhc3QgPSB0aGlzLl9wYXJzZVN0eWxlU2hlZXQoRU9GX0RFTElNX0ZMQUcpO1xuXG4gICAgY29uc3QgZXJyb3JzID0gdGhpcy5fZXJyb3JzO1xuICAgIHRoaXMuX2Vycm9ycyA9IFtdO1xuXG4gICAgY29uc3QgcmVzdWx0ID0gbmV3IFBhcnNlZENzc1Jlc3VsdChlcnJvcnMsIGFzdCk7XG4gICAgdGhpcy5fZmlsZSA9IG51bGwgYXMgYW55O1xuICAgIHRoaXMuX3NjYW5uZXIgPSBudWxsIGFzIGFueTtcbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfcGFyc2VTdHlsZVNoZWV0KGRlbGltaXRlcnM6IG51bWJlcik6IENzc1N0eWxlU2hlZXRBc3Qge1xuICAgIGNvbnN0IHJlc3VsdHM6IENzc1J1bGVBc3RbXSA9IFtdO1xuICAgIHRoaXMuX3NjYW5uZXIuY29uc3VtZUVtcHR5U3RhdGVtZW50cygpO1xuICAgIHdoaWxlICh0aGlzLl9zY2FubmVyLnBlZWsgIT0gY2hhcnMuJEVPRikge1xuICAgICAgdGhpcy5fc2Nhbm5lci5zZXRNb2RlKENzc0xleGVyTW9kZS5CTE9DSyk7XG4gICAgICByZXN1bHRzLnB1c2godGhpcy5fcGFyc2VSdWxlKGRlbGltaXRlcnMpKTtcbiAgICB9XG4gICAgbGV0IHNwYW46IFBhcnNlU291cmNlU3BhbnxudWxsID0gbnVsbDtcbiAgICBpZiAocmVzdWx0cy5sZW5ndGggPiAwKSB7XG4gICAgICBjb25zdCBmaXJzdFJ1bGUgPSByZXN1bHRzWzBdO1xuICAgICAgLy8gd2UgY29sbGVjdCB0aGUgbGFzdCB0b2tlbiBsaWtlIHNvIGluY2FzZSB0aGVyZSB3YXMgYW5cbiAgICAgIC8vIEVPRiB0b2tlbiB0aGF0IHdhcyBlbWl0dGVkIHNvbWV0aW1lIGR1cmluZyB0aGUgbGV4aW5nXG4gICAgICBzcGFuID0gdGhpcy5fZ2VuZXJhdGVTb3VyY2VTcGFuKGZpcnN0UnVsZSwgdGhpcy5fbGFzdFRva2VuKTtcbiAgICB9XG4gICAgcmV0dXJuIG5ldyBDc3NTdHlsZVNoZWV0QXN0KHNwYW4hLCByZXN1bHRzKTtcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX2dldFNvdXJjZUNvbnRlbnQoKTogc3RyaW5nIHtcbiAgICByZXR1cm4gdGhpcy5fc2Nhbm5lciAhPSBudWxsID8gdGhpcy5fc2Nhbm5lci5pbnB1dCA6ICcnO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfZXh0cmFjdFNvdXJjZUNvbnRlbnQoc3RhcnQ6IG51bWJlciwgZW5kOiBudW1iZXIpOiBzdHJpbmcge1xuICAgIHJldHVybiB0aGlzLl9nZXRTb3VyY2VDb250ZW50KCkuc3Vic3RyaW5nKHN0YXJ0LCBlbmQgKyAxKTtcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX2dlbmVyYXRlU291cmNlU3BhbihzdGFydDogQ3NzVG9rZW58Q3NzQXN0LCBlbmQ6IENzc1Rva2VufENzc0FzdHxudWxsID0gbnVsbCk6IFBhcnNlU291cmNlU3BhbiB7XG4gICAgbGV0IHN0YXJ0TG9jOiBQYXJzZUxvY2F0aW9uO1xuICAgIGlmIChzdGFydCBpbnN0YW5jZW9mIENzc0FzdCkge1xuICAgICAgc3RhcnRMb2MgPSBzdGFydC5sb2NhdGlvbi5zdGFydDtcbiAgICB9IGVsc2Uge1xuICAgICAgbGV0IHRva2VuID0gc3RhcnQ7XG4gICAgICBpZiAodG9rZW4gPT0gbnVsbCkge1xuICAgICAgICAvLyB0aGUgZGF0YSBoZXJlIGlzIGludmFsaWQsIGhvd2V2ZXIsIGlmIGFuZCB3aGVuIHRoaXMgZG9lc1xuICAgICAgICAvLyBvY2N1ciwgYW55IG90aGVyIGVycm9ycyBhc3NvY2lhdGVkIHdpdGggdGhpcyB3aWxsIGJlIGNvbGxlY3RlZFxuICAgICAgICB0b2tlbiA9IHRoaXMuX2xhc3RUb2tlbjtcbiAgICAgIH1cbiAgICAgIHN0YXJ0TG9jID0gbmV3IFBhcnNlTG9jYXRpb24odGhpcy5fZmlsZSwgdG9rZW4uaW5kZXgsIHRva2VuLmxpbmUsIHRva2VuLmNvbHVtbik7XG4gICAgfVxuXG4gICAgaWYgKGVuZCA9PSBudWxsKSB7XG4gICAgICBlbmQgPSB0aGlzLl9sYXN0VG9rZW47XG4gICAgfVxuXG4gICAgbGV0IGVuZExpbmU6IG51bWJlciA9IC0xO1xuICAgIGxldCBlbmRDb2x1bW46IG51bWJlciA9IC0xO1xuICAgIGxldCBlbmRJbmRleDogbnVtYmVyID0gLTE7XG4gICAgaWYgKGVuZCBpbnN0YW5jZW9mIENzc0FzdCkge1xuICAgICAgZW5kTGluZSA9IGVuZC5sb2NhdGlvbi5lbmQubGluZSE7XG4gICAgICBlbmRDb2x1bW4gPSBlbmQubG9jYXRpb24uZW5kLmNvbCE7XG4gICAgICBlbmRJbmRleCA9IGVuZC5sb2NhdGlvbi5lbmQub2Zmc2V0ITtcbiAgICB9IGVsc2UgaWYgKGVuZCBpbnN0YW5jZW9mIENzc1Rva2VuKSB7XG4gICAgICBlbmRMaW5lID0gZW5kLmxpbmU7XG4gICAgICBlbmRDb2x1bW4gPSBlbmQuY29sdW1uO1xuICAgICAgZW5kSW5kZXggPSBlbmQuaW5kZXg7XG4gICAgfVxuXG4gICAgY29uc3QgZW5kTG9jID0gbmV3IFBhcnNlTG9jYXRpb24odGhpcy5fZmlsZSwgZW5kSW5kZXgsIGVuZExpbmUsIGVuZENvbHVtbik7XG4gICAgcmV0dXJuIG5ldyBQYXJzZVNvdXJjZVNwYW4oc3RhcnRMb2MsIGVuZExvYyk7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9yZXNvbHZlQmxvY2tUeXBlKHRva2VuOiBDc3NUb2tlbik6IEJsb2NrVHlwZSB7XG4gICAgc3dpdGNoICh0b2tlbi5zdHJWYWx1ZSkge1xuICAgICAgY2FzZSAnQC1vLWtleWZyYW1lcyc6XG4gICAgICBjYXNlICdALW1vei1rZXlmcmFtZXMnOlxuICAgICAgY2FzZSAnQC13ZWJraXQta2V5ZnJhbWVzJzpcbiAgICAgIGNhc2UgJ0BrZXlmcmFtZXMnOlxuICAgICAgICByZXR1cm4gQmxvY2tUeXBlLktleWZyYW1lcztcblxuICAgICAgY2FzZSAnQGNoYXJzZXQnOlxuICAgICAgICByZXR1cm4gQmxvY2tUeXBlLkNoYXJzZXQ7XG5cbiAgICAgIGNhc2UgJ0BpbXBvcnQnOlxuICAgICAgICByZXR1cm4gQmxvY2tUeXBlLkltcG9ydDtcblxuICAgICAgY2FzZSAnQG5hbWVzcGFjZSc6XG4gICAgICAgIHJldHVybiBCbG9ja1R5cGUuTmFtZXNwYWNlO1xuXG4gICAgICBjYXNlICdAcGFnZSc6XG4gICAgICAgIHJldHVybiBCbG9ja1R5cGUuUGFnZTtcblxuICAgICAgY2FzZSAnQGRvY3VtZW50JzpcbiAgICAgICAgcmV0dXJuIEJsb2NrVHlwZS5Eb2N1bWVudDtcblxuICAgICAgY2FzZSAnQG1lZGlhJzpcbiAgICAgICAgcmV0dXJuIEJsb2NrVHlwZS5NZWRpYVF1ZXJ5O1xuXG4gICAgICBjYXNlICdAZm9udC1mYWNlJzpcbiAgICAgICAgcmV0dXJuIEJsb2NrVHlwZS5Gb250RmFjZTtcblxuICAgICAgY2FzZSAnQHZpZXdwb3J0JzpcbiAgICAgICAgcmV0dXJuIEJsb2NrVHlwZS5WaWV3cG9ydDtcblxuICAgICAgY2FzZSAnQHN1cHBvcnRzJzpcbiAgICAgICAgcmV0dXJuIEJsb2NrVHlwZS5TdXBwb3J0cztcblxuICAgICAgZGVmYXVsdDpcbiAgICAgICAgcmV0dXJuIEJsb2NrVHlwZS5VbnN1cHBvcnRlZDtcbiAgICB9XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9wYXJzZVJ1bGUoZGVsaW1pdGVyczogbnVtYmVyKTogQ3NzUnVsZUFzdCB7XG4gICAgaWYgKHRoaXMuX3NjYW5uZXIucGVlayA9PSBjaGFycy4kQVQpIHtcbiAgICAgIHJldHVybiB0aGlzLl9wYXJzZUF0UnVsZShkZWxpbWl0ZXJzKTtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMuX3BhcnNlU2VsZWN0b3JSdWxlKGRlbGltaXRlcnMpO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfcGFyc2VBdFJ1bGUoZGVsaW1pdGVyczogbnVtYmVyKTogQ3NzUnVsZUFzdCB7XG4gICAgY29uc3Qgc3RhcnQgPSB0aGlzLl9nZXRTY2FubmVySW5kZXgoKTtcblxuICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuQkxPQ0spO1xuICAgIGNvbnN0IHRva2VuID0gdGhpcy5fc2NhbigpO1xuICAgIGNvbnN0IHN0YXJ0VG9rZW4gPSB0b2tlbjtcblxuICAgIHRoaXMuX2Fzc2VydENvbmRpdGlvbihcbiAgICAgICAgdG9rZW4udHlwZSA9PSBDc3NUb2tlblR5cGUuQXRLZXl3b3JkLFxuICAgICAgICBgVGhlIENTUyBSdWxlICR7dG9rZW4uc3RyVmFsdWV9IGlzIG5vdCBhIHZhbGlkIFtAXSBydWxlLmAsIHRva2VuKTtcblxuICAgIGxldCBibG9jazogQ3NzQmxvY2tBc3Q7XG4gICAgY29uc3QgdHlwZSA9IHRoaXMuX3Jlc29sdmVCbG9ja1R5cGUodG9rZW4pO1xuICAgIGxldCBzcGFuOiBQYXJzZVNvdXJjZVNwYW47XG4gICAgbGV0IHRva2VuczogQ3NzVG9rZW5bXTtcbiAgICBsZXQgZW5kVG9rZW46IENzc1Rva2VuO1xuICAgIGxldCBlbmQ6IG51bWJlcjtcbiAgICBsZXQgc3RyVmFsdWU6IHN0cmluZztcbiAgICBsZXQgcXVlcnk6IENzc0F0UnVsZVByZWRpY2F0ZUFzdDtcbiAgICBzd2l0Y2ggKHR5cGUpIHtcbiAgICAgIGNhc2UgQmxvY2tUeXBlLkNoYXJzZXQ6XG4gICAgICBjYXNlIEJsb2NrVHlwZS5OYW1lc3BhY2U6XG4gICAgICBjYXNlIEJsb2NrVHlwZS5JbXBvcnQ6XG4gICAgICAgIGxldCB2YWx1ZSA9IHRoaXMuX3BhcnNlVmFsdWUoZGVsaW1pdGVycyk7XG4gICAgICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuQkxPQ0spO1xuICAgICAgICB0aGlzLl9zY2FubmVyLmNvbnN1bWVFbXB0eVN0YXRlbWVudHMoKTtcbiAgICAgICAgc3BhbiA9IHRoaXMuX2dlbmVyYXRlU291cmNlU3BhbihzdGFydFRva2VuLCB2YWx1ZSk7XG4gICAgICAgIHJldHVybiBuZXcgQ3NzSW5saW5lUnVsZUFzdChzcGFuLCB0eXBlLCB2YWx1ZSk7XG5cbiAgICAgIGNhc2UgQmxvY2tUeXBlLlZpZXdwb3J0OlxuICAgICAgY2FzZSBCbG9ja1R5cGUuRm9udEZhY2U6XG4gICAgICAgIGJsb2NrID0gdGhpcy5fcGFyc2VTdHlsZUJsb2NrKGRlbGltaXRlcnMpITtcbiAgICAgICAgc3BhbiA9IHRoaXMuX2dlbmVyYXRlU291cmNlU3BhbihzdGFydFRva2VuLCBibG9jayk7XG4gICAgICAgIHJldHVybiBuZXcgQ3NzQmxvY2tSdWxlQXN0KHNwYW4sIHR5cGUsIGJsb2NrKTtcblxuICAgICAgY2FzZSBCbG9ja1R5cGUuS2V5ZnJhbWVzOlxuICAgICAgICB0b2tlbnMgPSB0aGlzLl9jb2xsZWN0VW50aWxEZWxpbShkZWxpbWl0ZXJzIHwgUkJSQUNFX0RFTElNX0ZMQUcgfCBMQlJBQ0VfREVMSU1fRkxBRyk7XG4gICAgICAgIC8vIGtleWZyYW1lcyBvbmx5IGhhdmUgb25lIGlkZW50aWZpZXIgbmFtZVxuICAgICAgICBsZXQgbmFtZSA9IHRva2Vuc1swXTtcbiAgICAgICAgYmxvY2sgPSB0aGlzLl9wYXJzZUtleWZyYW1lQmxvY2soZGVsaW1pdGVycyk7XG4gICAgICAgIHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4oc3RhcnRUb2tlbiwgYmxvY2spO1xuICAgICAgICByZXR1cm4gbmV3IENzc0tleWZyYW1lUnVsZUFzdChzcGFuLCBuYW1lLCBibG9jayk7XG5cbiAgICAgIGNhc2UgQmxvY2tUeXBlLk1lZGlhUXVlcnk6XG4gICAgICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuTUVESUFfUVVFUlkpO1xuICAgICAgICB0b2tlbnMgPSB0aGlzLl9jb2xsZWN0VW50aWxEZWxpbShkZWxpbWl0ZXJzIHwgUkJSQUNFX0RFTElNX0ZMQUcgfCBMQlJBQ0VfREVMSU1fRkxBRyk7XG4gICAgICAgIGVuZFRva2VuID0gdG9rZW5zW3Rva2Vucy5sZW5ndGggLSAxXTtcbiAgICAgICAgLy8gd2UgZG8gbm90IHRyYWNrIHRoZSB3aGl0ZXNwYWNlIGFmdGVyIHRoZSBtZWRpYVF1ZXJ5IHByZWRpY2F0ZSBlbmRzXG4gICAgICAgIC8vIHNvIHdlIGhhdmUgdG8gY2FsY3VsYXRlIHRoZSBlbmQgc3RyaW5nIHZhbHVlIG9uIG91ciBvd25cbiAgICAgICAgZW5kID0gZW5kVG9rZW4uaW5kZXggKyBlbmRUb2tlbi5zdHJWYWx1ZS5sZW5ndGggLSAxO1xuICAgICAgICBzdHJWYWx1ZSA9IHRoaXMuX2V4dHJhY3RTb3VyY2VDb250ZW50KHN0YXJ0LCBlbmQpO1xuICAgICAgICBzcGFuID0gdGhpcy5fZ2VuZXJhdGVTb3VyY2VTcGFuKHN0YXJ0VG9rZW4sIGVuZFRva2VuKTtcbiAgICAgICAgcXVlcnkgPSBuZXcgQ3NzQXRSdWxlUHJlZGljYXRlQXN0KHNwYW4sIHN0clZhbHVlLCB0b2tlbnMpO1xuICAgICAgICBibG9jayA9IHRoaXMuX3BhcnNlQmxvY2soZGVsaW1pdGVycyk7XG4gICAgICAgIHN0clZhbHVlID0gdGhpcy5fZXh0cmFjdFNvdXJjZUNvbnRlbnQoc3RhcnQsIHRoaXMuX2dldFNjYW5uZXJJbmRleCgpIC0gMSk7XG4gICAgICAgIHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4oc3RhcnRUb2tlbiwgYmxvY2spO1xuICAgICAgICByZXR1cm4gbmV3IENzc01lZGlhUXVlcnlSdWxlQXN0KHNwYW4sIHN0clZhbHVlLCBxdWVyeSwgYmxvY2spO1xuXG4gICAgICBjYXNlIEJsb2NrVHlwZS5Eb2N1bWVudDpcbiAgICAgIGNhc2UgQmxvY2tUeXBlLlN1cHBvcnRzOlxuICAgICAgY2FzZSBCbG9ja1R5cGUuUGFnZTpcbiAgICAgICAgdGhpcy5fc2Nhbm5lci5zZXRNb2RlKENzc0xleGVyTW9kZS5BVF9SVUxFX1FVRVJZKTtcbiAgICAgICAgdG9rZW5zID0gdGhpcy5fY29sbGVjdFVudGlsRGVsaW0oZGVsaW1pdGVycyB8IFJCUkFDRV9ERUxJTV9GTEFHIHwgTEJSQUNFX0RFTElNX0ZMQUcpO1xuICAgICAgICBlbmRUb2tlbiA9IHRva2Vuc1t0b2tlbnMubGVuZ3RoIC0gMV07XG4gICAgICAgIC8vIHdlIGRvIG5vdCB0cmFjayB0aGUgd2hpdGVzcGFjZSBhZnRlciB0aGlzIGJsb2NrIHJ1bGUgcHJlZGljYXRlIGVuZHNcbiAgICAgICAgLy8gc28gd2UgaGF2ZSB0byBjYWxjdWxhdGUgdGhlIGVuZCBzdHJpbmcgdmFsdWUgb24gb3VyIG93blxuICAgICAgICBlbmQgPSBlbmRUb2tlbi5pbmRleCArIGVuZFRva2VuLnN0clZhbHVlLmxlbmd0aCAtIDE7XG4gICAgICAgIHN0clZhbHVlID0gdGhpcy5fZXh0cmFjdFNvdXJjZUNvbnRlbnQoc3RhcnQsIGVuZCk7XG4gICAgICAgIHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4oc3RhcnRUb2tlbiwgdG9rZW5zW3Rva2Vucy5sZW5ndGggLSAxXSk7XG4gICAgICAgIHF1ZXJ5ID0gbmV3IENzc0F0UnVsZVByZWRpY2F0ZUFzdChzcGFuLCBzdHJWYWx1ZSwgdG9rZW5zKTtcbiAgICAgICAgYmxvY2sgPSB0aGlzLl9wYXJzZUJsb2NrKGRlbGltaXRlcnMpO1xuICAgICAgICBzdHJWYWx1ZSA9IHRoaXMuX2V4dHJhY3RTb3VyY2VDb250ZW50KHN0YXJ0LCBibG9jay5lbmQub2Zmc2V0ISk7XG4gICAgICAgIHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4oc3RhcnRUb2tlbiwgYmxvY2spO1xuICAgICAgICByZXR1cm4gbmV3IENzc0Jsb2NrRGVmaW5pdGlvblJ1bGVBc3Qoc3Bhbiwgc3RyVmFsdWUsIHR5cGUsIHF1ZXJ5LCBibG9jayk7XG5cbiAgICAgIC8vIGlmIGEgY3VzdG9tIEBydWxlIHsgLi4uIH0gaXMgdXNlZCBpdCBzaG91bGQgc3RpbGwgdG9rZW5pemUgdGhlIGluc2lkZXNcbiAgICAgIGRlZmF1bHQ6XG4gICAgICAgIGxldCBsaXN0T2ZUb2tlbnM6IENzc1Rva2VuW10gPSBbXTtcbiAgICAgICAgbGV0IHRva2VuTmFtZSA9IHRva2VuLnN0clZhbHVlO1xuICAgICAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLkFMTCk7XG4gICAgICAgIHRoaXMuX2Vycm9yKFxuICAgICAgICAgICAgZ2VuZXJhdGVFcnJvck1lc3NhZ2UoXG4gICAgICAgICAgICAgICAgdGhpcy5fZ2V0U291cmNlQ29udGVudCgpLFxuICAgICAgICAgICAgICAgIGBUaGUgQ1NTIFwiYXRcIiBydWxlIFwiJHt0b2tlbk5hbWV9XCIgaXMgbm90IGFsbG93ZWQgdG8gdXNlZCBoZXJlYCwgdG9rZW4uc3RyVmFsdWUsXG4gICAgICAgICAgICAgICAgdG9rZW4uaW5kZXgsIHRva2VuLmxpbmUsIHRva2VuLmNvbHVtbiksXG4gICAgICAgICAgICB0b2tlbik7XG5cbiAgICAgICAgdGhpcy5fY29sbGVjdFVudGlsRGVsaW0oZGVsaW1pdGVycyB8IExCUkFDRV9ERUxJTV9GTEFHIHwgU0VNSUNPTE9OX0RFTElNX0ZMQUcpXG4gICAgICAgICAgICAuZm9yRWFjaCgodG9rZW4pID0+IHtcbiAgICAgICAgICAgICAgbGlzdE9mVG9rZW5zLnB1c2godG9rZW4pO1xuICAgICAgICAgICAgfSk7XG4gICAgICAgIGlmICh0aGlzLl9zY2FubmVyLnBlZWsgPT0gY2hhcnMuJExCUkFDRSkge1xuICAgICAgICAgIGxpc3RPZlRva2Vucy5wdXNoKHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLkNoYXJhY3RlciwgJ3snKSk7XG4gICAgICAgICAgdGhpcy5fY29sbGVjdFVudGlsRGVsaW0oZGVsaW1pdGVycyB8IFJCUkFDRV9ERUxJTV9GTEFHIHwgTEJSQUNFX0RFTElNX0ZMQUcpXG4gICAgICAgICAgICAgIC5mb3JFYWNoKCh0b2tlbikgPT4ge1xuICAgICAgICAgICAgICAgIGxpc3RPZlRva2Vucy5wdXNoKHRva2VuKTtcbiAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgbGlzdE9mVG9rZW5zLnB1c2godGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyLCAnfScpKTtcbiAgICAgICAgfVxuICAgICAgICBlbmRUb2tlbiA9IGxpc3RPZlRva2Vuc1tsaXN0T2ZUb2tlbnMubGVuZ3RoIC0gMV07XG4gICAgICAgIHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4oc3RhcnRUb2tlbiwgZW5kVG9rZW4pO1xuICAgICAgICByZXR1cm4gbmV3IENzc1Vua25vd25SdWxlQXN0KHNwYW4sIHRva2VuTmFtZSwgbGlzdE9mVG9rZW5zKTtcbiAgICB9XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9wYXJzZVNlbGVjdG9yUnVsZShkZWxpbWl0ZXJzOiBudW1iZXIpOiBDc3NSdWxlQXN0IHtcbiAgICBjb25zdCBzdGFydCA9IHRoaXMuX2dldFNjYW5uZXJJbmRleCgpO1xuICAgIGNvbnN0IHNlbGVjdG9ycyA9IHRoaXMuX3BhcnNlU2VsZWN0b3JzKGRlbGltaXRlcnMpO1xuICAgIGNvbnN0IGJsb2NrID0gdGhpcy5fcGFyc2VTdHlsZUJsb2NrKGRlbGltaXRlcnMpO1xuICAgIGxldCBydWxlQXN0OiBDc3NSdWxlQXN0O1xuICAgIGxldCBzcGFuOiBQYXJzZVNvdXJjZVNwYW47XG4gICAgY29uc3Qgc3RhcnRTZWxlY3RvciA9IHNlbGVjdG9yc1swXTtcbiAgICBpZiAoYmxvY2sgIT0gbnVsbCkge1xuICAgICAgc3BhbiA9IHRoaXMuX2dlbmVyYXRlU291cmNlU3BhbihzdGFydFNlbGVjdG9yLCBibG9jayk7XG4gICAgICBydWxlQXN0ID0gbmV3IENzc1NlbGVjdG9yUnVsZUFzdChzcGFuLCBzZWxlY3RvcnMsIGJsb2NrKTtcbiAgICB9IGVsc2Uge1xuICAgICAgY29uc3QgbmFtZSA9IHRoaXMuX2V4dHJhY3RTb3VyY2VDb250ZW50KHN0YXJ0LCB0aGlzLl9nZXRTY2FubmVySW5kZXgoKSAtIDEpO1xuICAgICAgY29uc3QgaW5uZXJUb2tlbnM6IENzc1Rva2VuW10gPSBbXTtcbiAgICAgIHNlbGVjdG9ycy5mb3JFYWNoKChzZWxlY3RvcjogQ3NzU2VsZWN0b3JBc3QpID0+IHtcbiAgICAgICAgc2VsZWN0b3Iuc2VsZWN0b3JQYXJ0cy5mb3JFYWNoKChwYXJ0OiBDc3NTaW1wbGVTZWxlY3RvckFzdCkgPT4ge1xuICAgICAgICAgIHBhcnQudG9rZW5zLmZvckVhY2goKHRva2VuOiBDc3NUb2tlbikgPT4ge1xuICAgICAgICAgICAgaW5uZXJUb2tlbnMucHVzaCh0b2tlbik7XG4gICAgICAgICAgfSk7XG4gICAgICAgIH0pO1xuICAgICAgfSk7XG4gICAgICBjb25zdCBlbmRUb2tlbiA9IGlubmVyVG9rZW5zW2lubmVyVG9rZW5zLmxlbmd0aCAtIDFdO1xuICAgICAgc3BhbiA9IHRoaXMuX2dlbmVyYXRlU291cmNlU3BhbihzdGFydFNlbGVjdG9yLCBlbmRUb2tlbik7XG4gICAgICBydWxlQXN0ID0gbmV3IENzc1Vua25vd25Ub2tlbkxpc3RBc3Qoc3BhbiwgbmFtZSwgaW5uZXJUb2tlbnMpO1xuICAgIH1cbiAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLkJMT0NLKTtcbiAgICB0aGlzLl9zY2FubmVyLmNvbnN1bWVFbXB0eVN0YXRlbWVudHMoKTtcbiAgICByZXR1cm4gcnVsZUFzdDtcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX3BhcnNlU2VsZWN0b3JzKGRlbGltaXRlcnM6IG51bWJlcik6IENzc1NlbGVjdG9yQXN0W10ge1xuICAgIGRlbGltaXRlcnMgfD0gTEJSQUNFX0RFTElNX0ZMQUcgfCBTRU1JQ09MT05fREVMSU1fRkxBRztcblxuICAgIGNvbnN0IHNlbGVjdG9yczogQ3NzU2VsZWN0b3JBc3RbXSA9IFtdO1xuICAgIGxldCBpc1BhcnNpbmdTZWxlY3RvcnMgPSB0cnVlO1xuICAgIHdoaWxlIChpc1BhcnNpbmdTZWxlY3RvcnMpIHtcbiAgICAgIHNlbGVjdG9ycy5wdXNoKHRoaXMuX3BhcnNlU2VsZWN0b3IoZGVsaW1pdGVycykpO1xuXG4gICAgICBpc1BhcnNpbmdTZWxlY3RvcnMgPSAhY2hhcmFjdGVyQ29udGFpbnNEZWxpbWl0ZXIodGhpcy5fc2Nhbm5lci5wZWVrLCBkZWxpbWl0ZXJzKTtcblxuICAgICAgaWYgKGlzUGFyc2luZ1NlbGVjdG9ycykge1xuICAgICAgICB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIsICcsJyk7XG4gICAgICAgIGlzUGFyc2luZ1NlbGVjdG9ycyA9ICFjaGFyYWN0ZXJDb250YWluc0RlbGltaXRlcih0aGlzLl9zY2FubmVyLnBlZWssIGRlbGltaXRlcnMpO1xuICAgICAgICBpZiAoaXNQYXJzaW5nU2VsZWN0b3JzKSB7XG4gICAgICAgICAgdGhpcy5fc2Nhbm5lci5jb25zdW1lV2hpdGVzcGFjZSgpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuXG4gICAgcmV0dXJuIHNlbGVjdG9ycztcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX3NjYW4oKTogQ3NzVG9rZW4ge1xuICAgIGNvbnN0IG91dHB1dCA9IHRoaXMuX3NjYW5uZXIuc2NhbigpITtcbiAgICBjb25zdCB0b2tlbiA9IG91dHB1dC50b2tlbjtcbiAgICBjb25zdCBlcnJvciA9IG91dHB1dC5lcnJvcjtcbiAgICBpZiAoZXJyb3IgIT0gbnVsbCkge1xuICAgICAgdGhpcy5fZXJyb3IoZ2V0UmF3TWVzc2FnZShlcnJvciksIHRva2VuKTtcbiAgICB9XG4gICAgdGhpcy5fbGFzdFRva2VuID0gdG9rZW47XG4gICAgcmV0dXJuIHRva2VuO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfZ2V0U2Nhbm5lckluZGV4KCk6IG51bWJlciB7XG4gICAgcmV0dXJuIHRoaXMuX3NjYW5uZXIuaW5kZXg7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9jb25zdW1lKHR5cGU6IENzc1Rva2VuVHlwZSwgdmFsdWU6IHN0cmluZ3xudWxsID0gbnVsbCk6IENzc1Rva2VuIHtcbiAgICBjb25zdCBvdXRwdXQgPSB0aGlzLl9zY2FubmVyLmNvbnN1bWUodHlwZSwgdmFsdWUpO1xuICAgIGNvbnN0IHRva2VuID0gb3V0cHV0LnRva2VuO1xuICAgIGNvbnN0IGVycm9yID0gb3V0cHV0LmVycm9yO1xuICAgIGlmIChlcnJvciAhPSBudWxsKSB7XG4gICAgICB0aGlzLl9lcnJvcihnZXRSYXdNZXNzYWdlKGVycm9yKSwgdG9rZW4pO1xuICAgIH1cbiAgICB0aGlzLl9sYXN0VG9rZW4gPSB0b2tlbjtcbiAgICByZXR1cm4gdG9rZW47XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9wYXJzZUtleWZyYW1lQmxvY2soZGVsaW1pdGVyczogbnVtYmVyKTogQ3NzQmxvY2tBc3Qge1xuICAgIGRlbGltaXRlcnMgfD0gUkJSQUNFX0RFTElNX0ZMQUc7XG4gICAgdGhpcy5fc2Nhbm5lci5zZXRNb2RlKENzc0xleGVyTW9kZS5LRVlGUkFNRV9CTE9DSyk7XG5cbiAgICBjb25zdCBzdGFydFRva2VuID0gdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyLCAneycpO1xuXG4gICAgY29uc3QgZGVmaW5pdGlvbnM6IENzc0tleWZyYW1lRGVmaW5pdGlvbkFzdFtdID0gW107XG4gICAgd2hpbGUgKCFjaGFyYWN0ZXJDb250YWluc0RlbGltaXRlcih0aGlzLl9zY2FubmVyLnBlZWssIGRlbGltaXRlcnMpKSB7XG4gICAgICBkZWZpbml0aW9ucy5wdXNoKHRoaXMuX3BhcnNlS2V5ZnJhbWVEZWZpbml0aW9uKGRlbGltaXRlcnMpKTtcbiAgICB9XG5cbiAgICBjb25zdCBlbmRUb2tlbiA9IHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLkNoYXJhY3RlciwgJ30nKTtcblxuICAgIGNvbnN0IHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4oc3RhcnRUb2tlbiwgZW5kVG9rZW4pO1xuICAgIHJldHVybiBuZXcgQ3NzQmxvY2tBc3Qoc3BhbiwgZGVmaW5pdGlvbnMpO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfcGFyc2VLZXlmcmFtZURlZmluaXRpb24oZGVsaW1pdGVyczogbnVtYmVyKTogQ3NzS2V5ZnJhbWVEZWZpbml0aW9uQXN0IHtcbiAgICBjb25zdCBzdGFydCA9IHRoaXMuX2dldFNjYW5uZXJJbmRleCgpO1xuICAgIGNvbnN0IHN0ZXBUb2tlbnM6IENzc1Rva2VuW10gPSBbXTtcbiAgICBkZWxpbWl0ZXJzIHw9IExCUkFDRV9ERUxJTV9GTEFHO1xuICAgIHdoaWxlICghY2hhcmFjdGVyQ29udGFpbnNEZWxpbWl0ZXIodGhpcy5fc2Nhbm5lci5wZWVrLCBkZWxpbWl0ZXJzKSkge1xuICAgICAgc3RlcFRva2Vucy5wdXNoKHRoaXMuX3BhcnNlS2V5ZnJhbWVMYWJlbChkZWxpbWl0ZXJzIHwgQ09NTUFfREVMSU1fRkxBRykpO1xuICAgICAgaWYgKHRoaXMuX3NjYW5uZXIucGVlayAhPSBjaGFycy4kTEJSQUNFKSB7XG4gICAgICAgIHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLkNoYXJhY3RlciwgJywnKTtcbiAgICAgIH1cbiAgICB9XG4gICAgY29uc3Qgc3R5bGVzQmxvY2sgPSB0aGlzLl9wYXJzZVN0eWxlQmxvY2soZGVsaW1pdGVycyB8IFJCUkFDRV9ERUxJTV9GTEFHKTtcbiAgICBjb25zdCBzcGFuID0gdGhpcy5fZ2VuZXJhdGVTb3VyY2VTcGFuKHN0ZXBUb2tlbnNbMF0sIHN0eWxlc0Jsb2NrKTtcbiAgICBjb25zdCBhc3QgPSBuZXcgQ3NzS2V5ZnJhbWVEZWZpbml0aW9uQXN0KHNwYW4sIHN0ZXBUb2tlbnMsIHN0eWxlc0Jsb2NrISk7XG5cbiAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLkJMT0NLKTtcbiAgICByZXR1cm4gYXN0O1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfcGFyc2VLZXlmcmFtZUxhYmVsKGRlbGltaXRlcnM6IG51bWJlcik6IENzc1Rva2VuIHtcbiAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLktFWUZSQU1FX0JMT0NLKTtcbiAgICByZXR1cm4gbWVyZ2VUb2tlbnModGhpcy5fY29sbGVjdFVudGlsRGVsaW0oZGVsaW1pdGVycykpO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfcGFyc2VQc2V1ZG9TZWxlY3RvcihkZWxpbWl0ZXJzOiBudW1iZXIpOiBDc3NQc2V1ZG9TZWxlY3RvckFzdCB7XG4gICAgY29uc3Qgc3RhcnQgPSB0aGlzLl9nZXRTY2FubmVySW5kZXgoKTtcblxuICAgIGRlbGltaXRlcnMgJj0gfkNPTU1BX0RFTElNX0ZMQUc7XG5cbiAgICAvLyB3ZSBrZWVwIHRoZSBvcmlnaW5hbCB2YWx1ZSBzaW5jZSB3ZSBtYXkgdXNlIGl0IHRvIHJlY3Vyc2Ugd2hlbiA6bm90LCA6aG9zdCBhcmUgdXNlZFxuICAgIGNvbnN0IHN0YXJ0aW5nRGVsaW1zID0gZGVsaW1pdGVycztcblxuICAgIGNvbnN0IHN0YXJ0VG9rZW4gPSB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIsICc6Jyk7XG4gICAgY29uc3QgdG9rZW5zID0gW3N0YXJ0VG9rZW5dO1xuXG4gICAgaWYgKHRoaXMuX3NjYW5uZXIucGVlayA9PSBjaGFycy4kQ09MT04pIHsgIC8vIDo6c29tZXRoaW5nXG4gICAgICB0b2tlbnMucHVzaCh0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIsICc6JykpO1xuICAgIH1cblxuICAgIGNvbnN0IGlubmVyU2VsZWN0b3JzOiBDc3NTZWxlY3RvckFzdFtdID0gW107XG5cbiAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLlBTRVVET19TRUxFQ1RPUik7XG5cbiAgICAvLyBob3N0LCBob3N0LWNvbnRleHQsIGxhbmcsIG5vdCwgbnRoLWNoaWxkIGFyZSBhbGwgaWRlbnRpZmllcnNcbiAgICBjb25zdCBwc2V1ZG9TZWxlY3RvclRva2VuID0gdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuSWRlbnRpZmllcik7XG4gICAgY29uc3QgcHNldWRvU2VsZWN0b3JOYW1lID0gcHNldWRvU2VsZWN0b3JUb2tlbi5zdHJWYWx1ZTtcbiAgICB0b2tlbnMucHVzaChwc2V1ZG9TZWxlY3RvclRva2VuKTtcblxuICAgIC8vIGhvc3QoKSwgbGFuZygpLCBudGgtY2hpbGQoKSwgZXRjLi4uXG4gICAgaWYgKHRoaXMuX3NjYW5uZXIucGVlayA9PSBjaGFycy4kTFBBUkVOKSB7XG4gICAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLlBTRVVET19TRUxFQ1RPUl9XSVRIX0FSR1VNRU5UUyk7XG5cbiAgICAgIGNvbnN0IG9wZW5QYXJlblRva2VuID0gdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyLCAnKCcpO1xuICAgICAgdG9rZW5zLnB1c2gob3BlblBhcmVuVG9rZW4pO1xuXG4gICAgICAvLyA6aG9zdChpbm5lclNlbGVjdG9yKHMpKSwgOm5vdChzZWxlY3RvciksIGV0Yy4uLlxuICAgICAgaWYgKF9wc2V1ZG9TZWxlY3RvclN1cHBvcnRzSW5uZXJTZWxlY3RvcnMocHNldWRvU2VsZWN0b3JOYW1lKSkge1xuICAgICAgICBsZXQgaW5uZXJEZWxpbXMgPSBzdGFydGluZ0RlbGltcyB8IExQQVJFTl9ERUxJTV9GTEFHIHwgUlBBUkVOX0RFTElNX0ZMQUc7XG4gICAgICAgIGlmIChwc2V1ZG9TZWxlY3Rvck5hbWUgPT0gJ25vdCcpIHtcbiAgICAgICAgICAvLyB0aGUgaW5uZXIgc2VsZWN0b3IgaW5zaWRlIG9mIDpub3QoLi4uKSBjYW4gb25seSBiZSBvbmVcbiAgICAgICAgICAvLyBDU1Mgc2VsZWN0b3IgKG5vIGNvbW1hcyBhbGxvd2VkKSAuLi4gVGhpcyBpcyBhY2NvcmRpbmdcbiAgICAgICAgICAvLyB0byB0aGUgQ1NTIHNwZWNpZmljYXRpb25cbiAgICAgICAgICBpbm5lckRlbGltcyB8PSBDT01NQV9ERUxJTV9GTEFHO1xuICAgICAgICB9XG5cbiAgICAgICAgLy8gOmhvc3QoYSwgYiwgYykge1xuICAgICAgICB0aGlzLl9wYXJzZVNlbGVjdG9ycyhpbm5lckRlbGltcykuZm9yRWFjaCgoc2VsZWN0b3IsIGluZGV4KSA9PiB7XG4gICAgICAgICAgaW5uZXJTZWxlY3RvcnMucHVzaChzZWxlY3Rvcik7XG4gICAgICAgIH0pO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgLy8gdGhpcyBicmFuY2ggaXMgZm9yIHRoaW5ncyBsaWtlIFwiZW4tdXMsIDJrICsgMSwgZXRjLi4uXCJcbiAgICAgICAgLy8gd2hpY2ggYWxsIGVuZCB1cCBpbiBwc2V1ZG9TZWxlY3RvcnMgbGlrZSA6bGFuZywgOm50aC1jaGlsZCwgZXRjLi5cbiAgICAgICAgY29uc3QgaW5uZXJWYWx1ZURlbGltcyA9IGRlbGltaXRlcnMgfCBMQlJBQ0VfREVMSU1fRkxBRyB8IENPTE9OX0RFTElNX0ZMQUcgfFxuICAgICAgICAgICAgUlBBUkVOX0RFTElNX0ZMQUcgfCBMUEFSRU5fREVMSU1fRkxBRztcbiAgICAgICAgd2hpbGUgKCFjaGFyYWN0ZXJDb250YWluc0RlbGltaXRlcih0aGlzLl9zY2FubmVyLnBlZWssIGlubmVyVmFsdWVEZWxpbXMpKSB7XG4gICAgICAgICAgY29uc3QgdG9rZW4gPSB0aGlzLl9zY2FuKCk7XG4gICAgICAgICAgdG9rZW5zLnB1c2godG9rZW4pO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIGNvbnN0IGNsb3NlUGFyZW5Ub2tlbiA9IHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLkNoYXJhY3RlciwgJyknKTtcbiAgICAgIHRva2Vucy5wdXNoKGNsb3NlUGFyZW5Ub2tlbik7XG4gICAgfVxuXG4gICAgY29uc3QgZW5kID0gdGhpcy5fZ2V0U2Nhbm5lckluZGV4KCkgLSAxO1xuICAgIGNvbnN0IHN0clZhbHVlID0gdGhpcy5fZXh0cmFjdFNvdXJjZUNvbnRlbnQoc3RhcnQsIGVuZCk7XG5cbiAgICBjb25zdCBlbmRUb2tlbiA9IHRva2Vuc1t0b2tlbnMubGVuZ3RoIC0gMV07XG4gICAgY29uc3Qgc3BhbiA9IHRoaXMuX2dlbmVyYXRlU291cmNlU3BhbihzdGFydFRva2VuLCBlbmRUb2tlbik7XG4gICAgcmV0dXJuIG5ldyBDc3NQc2V1ZG9TZWxlY3RvckFzdChzcGFuLCBzdHJWYWx1ZSwgcHNldWRvU2VsZWN0b3JOYW1lLCB0b2tlbnMsIGlubmVyU2VsZWN0b3JzKTtcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX3BhcnNlU2ltcGxlU2VsZWN0b3IoZGVsaW1pdGVyczogbnVtYmVyKTogQ3NzU2ltcGxlU2VsZWN0b3JBc3Qge1xuICAgIGNvbnN0IHN0YXJ0ID0gdGhpcy5fZ2V0U2Nhbm5lckluZGV4KCk7XG5cbiAgICBkZWxpbWl0ZXJzIHw9IENPTU1BX0RFTElNX0ZMQUc7XG5cbiAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLlNFTEVDVE9SKTtcbiAgICBjb25zdCBzZWxlY3RvckNzc1Rva2VuczogQ3NzVG9rZW5bXSA9IFtdO1xuICAgIGNvbnN0IHBzZXVkb1NlbGVjdG9yczogQ3NzUHNldWRvU2VsZWN0b3JBc3RbXSA9IFtdO1xuXG4gICAgbGV0IHByZXZpb3VzVG9rZW46IENzc1Rva2VuID0gdW5kZWZpbmVkITtcblxuICAgIGNvbnN0IHNlbGVjdG9yUGFydERlbGltaXRlcnMgPSBkZWxpbWl0ZXJzIHwgU1BBQ0VfREVMSU1fRkxBRztcbiAgICBsZXQgbG9vcE92ZXJTZWxlY3RvciA9ICFjaGFyYWN0ZXJDb250YWluc0RlbGltaXRlcih0aGlzLl9zY2FubmVyLnBlZWssIHNlbGVjdG9yUGFydERlbGltaXRlcnMpO1xuXG4gICAgbGV0IGhhc0F0dHJpYnV0ZUVycm9yID0gZmFsc2U7XG4gICAgd2hpbGUgKGxvb3BPdmVyU2VsZWN0b3IpIHtcbiAgICAgIGNvbnN0IHBlZWsgPSB0aGlzLl9zY2FubmVyLnBlZWs7XG5cbiAgICAgIHN3aXRjaCAocGVlaykge1xuICAgICAgICBjYXNlIGNoYXJzLiRDT0xPTjpcbiAgICAgICAgICBsZXQgaW5uZXJQc2V1ZG8gPSB0aGlzLl9wYXJzZVBzZXVkb1NlbGVjdG9yKGRlbGltaXRlcnMpO1xuICAgICAgICAgIHBzZXVkb1NlbGVjdG9ycy5wdXNoKGlubmVyUHNldWRvKTtcbiAgICAgICAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLlNFTEVDVE9SKTtcbiAgICAgICAgICBicmVhaztcblxuICAgICAgICBjYXNlIGNoYXJzLiRMQlJBQ0tFVDpcbiAgICAgICAgICAvLyB3ZSBzZXQgdGhlIG1vZGUgYWZ0ZXIgdGhlIHNjYW4gYmVjYXVzZSBhdHRyaWJ1dGUgbW9kZSBkb2VzIG5vdFxuICAgICAgICAgIC8vIGFsbG93IGF0dHJpYnV0ZSBbXSB2YWx1ZXMuIEFuZCB0aGlzIGFsc28gd2lsbCBjYXRjaCBhbnkgZXJyb3JzXG4gICAgICAgICAgLy8gaWYgYW4gZXh0cmEgXCJbXCIgaXMgdXNlZCBpbnNpZGUuXG4gICAgICAgICAgc2VsZWN0b3JDc3NUb2tlbnMucHVzaCh0aGlzLl9zY2FuKCkpO1xuICAgICAgICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuQVRUUklCVVRFX1NFTEVDVE9SKTtcbiAgICAgICAgICBicmVhaztcblxuICAgICAgICBjYXNlIGNoYXJzLiRSQlJBQ0tFVDpcbiAgICAgICAgICBpZiAodGhpcy5fc2Nhbm5lci5nZXRNb2RlKCkgIT0gQ3NzTGV4ZXJNb2RlLkFUVFJJQlVURV9TRUxFQ1RPUikge1xuICAgICAgICAgICAgaGFzQXR0cmlidXRlRXJyb3IgPSB0cnVlO1xuICAgICAgICAgIH1cbiAgICAgICAgICAvLyB3ZSBzZXQgdGhlIG1vZGUgZWFybHkgYmVjYXVzZSBhdHRyaWJ1dGUgbW9kZSBkb2VzIG5vdFxuICAgICAgICAgIC8vIGFsbG93IGF0dHJpYnV0ZSBbXSB2YWx1ZXNcbiAgICAgICAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLlNFTEVDVE9SKTtcbiAgICAgICAgICBzZWxlY3RvckNzc1Rva2Vucy5wdXNoKHRoaXMuX3NjYW4oKSk7XG4gICAgICAgICAgYnJlYWs7XG5cbiAgICAgICAgZGVmYXVsdDpcbiAgICAgICAgICBpZiAoaXNTZWxlY3Rvck9wZXJhdG9yQ2hhcmFjdGVyKHBlZWspKSB7XG4gICAgICAgICAgICBsb29wT3ZlclNlbGVjdG9yID0gZmFsc2U7XG4gICAgICAgICAgICBjb250aW51ZTtcbiAgICAgICAgICB9XG5cbiAgICAgICAgICBsZXQgdG9rZW4gPSB0aGlzLl9zY2FuKCk7XG4gICAgICAgICAgcHJldmlvdXNUb2tlbiA9IHRva2VuO1xuICAgICAgICAgIHNlbGVjdG9yQ3NzVG9rZW5zLnB1c2godG9rZW4pO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgfVxuXG4gICAgICBsb29wT3ZlclNlbGVjdG9yID0gIWNoYXJhY3RlckNvbnRhaW5zRGVsaW1pdGVyKHRoaXMuX3NjYW5uZXIucGVlaywgc2VsZWN0b3JQYXJ0RGVsaW1pdGVycyk7XG4gICAgfVxuXG4gICAgaGFzQXR0cmlidXRlRXJyb3IgPVxuICAgICAgICBoYXNBdHRyaWJ1dGVFcnJvciB8fCB0aGlzLl9zY2FubmVyLmdldE1vZGUoKSA9PSBDc3NMZXhlck1vZGUuQVRUUklCVVRFX1NFTEVDVE9SO1xuICAgIGlmIChoYXNBdHRyaWJ1dGVFcnJvcikge1xuICAgICAgdGhpcy5fZXJyb3IoXG4gICAgICAgICAgYFVuYmFsYW5jZWQgQ1NTIGF0dHJpYnV0ZSBzZWxlY3RvciBhdCBjb2x1bW4gJHtwcmV2aW91c1Rva2VuLmxpbmV9OiR7XG4gICAgICAgICAgICAgIHByZXZpb3VzVG9rZW4uY29sdW1ufWAsXG4gICAgICAgICAgcHJldmlvdXNUb2tlbik7XG4gICAgfVxuXG4gICAgbGV0IGVuZCA9IHRoaXMuX2dldFNjYW5uZXJJbmRleCgpIC0gMTtcblxuICAgIC8vIHRoaXMgaGFwcGVucyBpZiB0aGUgc2VsZWN0b3IgaXMgbm90IGRpcmVjdGx5IGZvbGxvd2VkIGJ5XG4gICAgLy8gYSBjb21tYSBvciBjdXJseSBicmFjZSB3aXRob3V0IGEgc3BhY2UgaW4gYmV0d2VlblxuICAgIGxldCBvcGVyYXRvcjogQ3NzVG9rZW58bnVsbCA9IG51bGw7XG4gICAgbGV0IG9wZXJhdG9yU2NhbkNvdW50ID0gMDtcbiAgICBsZXQgbGFzdE9wZXJhdG9yVG9rZW46IENzc1Rva2VufG51bGwgPSBudWxsO1xuICAgIGlmICghY2hhcmFjdGVyQ29udGFpbnNEZWxpbWl0ZXIodGhpcy5fc2Nhbm5lci5wZWVrLCBkZWxpbWl0ZXJzKSkge1xuICAgICAgd2hpbGUgKG9wZXJhdG9yID09IG51bGwgJiYgIWNoYXJhY3RlckNvbnRhaW5zRGVsaW1pdGVyKHRoaXMuX3NjYW5uZXIucGVlaywgZGVsaW1pdGVycykgJiZcbiAgICAgICAgICAgICBpc1NlbGVjdG9yT3BlcmF0b3JDaGFyYWN0ZXIodGhpcy5fc2Nhbm5lci5wZWVrKSkge1xuICAgICAgICBsZXQgdG9rZW4gPSB0aGlzLl9zY2FuKCk7XG4gICAgICAgIGNvbnN0IHRva2VuT3BlcmF0b3IgPSB0b2tlbi5zdHJWYWx1ZTtcbiAgICAgICAgb3BlcmF0b3JTY2FuQ291bnQrKztcbiAgICAgICAgbGFzdE9wZXJhdG9yVG9rZW4gPSB0b2tlbjtcbiAgICAgICAgaWYgKHRva2VuT3BlcmF0b3IgIT0gU1BBQ0VfT1BFUkFUT1IpIHtcbiAgICAgICAgICBzd2l0Y2ggKHRva2VuT3BlcmF0b3IpIHtcbiAgICAgICAgICAgIGNhc2UgU0xBU0hfQ0hBUkFDVEVSOlxuICAgICAgICAgICAgICAvLyAvZGVlcC8gb3BlcmF0b3JcbiAgICAgICAgICAgICAgbGV0IGRlZXBUb2tlbiA9IHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLklkZW50aWZpZXIpO1xuICAgICAgICAgICAgICBsZXQgZGVlcFNsYXNoID0gdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyKTtcbiAgICAgICAgICAgICAgbGV0IGluZGV4ID0gbGFzdE9wZXJhdG9yVG9rZW4uaW5kZXg7XG4gICAgICAgICAgICAgIGxldCBsaW5lID0gbGFzdE9wZXJhdG9yVG9rZW4ubGluZTtcbiAgICAgICAgICAgICAgbGV0IGNvbHVtbiA9IGxhc3RPcGVyYXRvclRva2VuLmNvbHVtbjtcbiAgICAgICAgICAgICAgaWYgKGRlZXBUb2tlbiAhPSBudWxsICYmIGRlZXBUb2tlbi5zdHJWYWx1ZS50b0xvd2VyQ2FzZSgpID09ICdkZWVwJyAmJlxuICAgICAgICAgICAgICAgICAgZGVlcFNsYXNoLnN0clZhbHVlID09IFNMQVNIX0NIQVJBQ1RFUikge1xuICAgICAgICAgICAgICAgIHRva2VuID0gbmV3IENzc1Rva2VuKFxuICAgICAgICAgICAgICAgICAgICBsYXN0T3BlcmF0b3JUb2tlbi5pbmRleCwgbGFzdE9wZXJhdG9yVG9rZW4uY29sdW1uLCBsYXN0T3BlcmF0b3JUb2tlbi5saW5lLFxuICAgICAgICAgICAgICAgICAgICBDc3NUb2tlblR5cGUuSWRlbnRpZmllciwgREVFUF9PUEVSQVRPUl9TVFIpO1xuICAgICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgIGNvbnN0IHRleHQgPSBTTEFTSF9DSEFSQUNURVIgKyBkZWVwVG9rZW4uc3RyVmFsdWUgKyBkZWVwU2xhc2guc3RyVmFsdWU7XG4gICAgICAgICAgICAgICAgdGhpcy5fZXJyb3IoXG4gICAgICAgICAgICAgICAgICAgIGdlbmVyYXRlRXJyb3JNZXNzYWdlKFxuICAgICAgICAgICAgICAgICAgICAgICAgdGhpcy5fZ2V0U291cmNlQ29udGVudCgpLCBgJHt0ZXh0fSBpcyBhbiBpbnZhbGlkIENTUyBvcGVyYXRvcmAsIHRleHQsIGluZGV4LFxuICAgICAgICAgICAgICAgICAgICAgICAgbGluZSwgY29sdW1uKSxcbiAgICAgICAgICAgICAgICAgICAgbGFzdE9wZXJhdG9yVG9rZW4pO1xuICAgICAgICAgICAgICAgIHRva2VuID0gbmV3IENzc1Rva2VuKGluZGV4LCBjb2x1bW4sIGxpbmUsIENzc1Rva2VuVHlwZS5JbnZhbGlkLCB0ZXh0KTtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICBicmVhaztcblxuICAgICAgICAgICAgY2FzZSBHVF9DSEFSQUNURVI6XG4gICAgICAgICAgICAgIC8vID4+PiBvcGVyYXRvclxuICAgICAgICAgICAgICBpZiAodGhpcy5fc2Nhbm5lci5wZWVrID09IGNoYXJzLiRHVCAmJiB0aGlzLl9zY2FubmVyLnBlZWtQZWVrID09IGNoYXJzLiRHVCkge1xuICAgICAgICAgICAgICAgIHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLkNoYXJhY3RlciwgR1RfQ0hBUkFDVEVSKTtcbiAgICAgICAgICAgICAgICB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIsIEdUX0NIQVJBQ1RFUik7XG4gICAgICAgICAgICAgICAgdG9rZW4gPSBuZXcgQ3NzVG9rZW4oXG4gICAgICAgICAgICAgICAgICAgIGxhc3RPcGVyYXRvclRva2VuLmluZGV4LCBsYXN0T3BlcmF0b3JUb2tlbi5jb2x1bW4sIGxhc3RPcGVyYXRvclRva2VuLmxpbmUsXG4gICAgICAgICAgICAgICAgICAgIENzc1Rva2VuVHlwZS5JZGVudGlmaWVyLCBUUklQTEVfR1RfT1BFUkFUT1JfU1RSKTtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICB9XG5cbiAgICAgICAgICBvcGVyYXRvciA9IHRva2VuO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC8vIHNvIGxvbmcgYXMgdGhlcmUgaXMgYW4gb3BlcmF0b3IgdGhlbiB3ZSBjYW4gaGF2ZSBhblxuICAgICAgLy8gZW5kaW5nIHZhbHVlIHRoYXQgaXMgYmV5b25kIHRoZSBzZWxlY3RvciB2YWx1ZSAuLi5cbiAgICAgIC8vIG90aGVyd2lzZSBpdCdzIGp1c3QgYSBidW5jaCBvZiB0cmFpbGluZyB3aGl0ZXNwYWNlXG4gICAgICBpZiAob3BlcmF0b3IgIT0gbnVsbCkge1xuICAgICAgICBlbmQgPSBvcGVyYXRvci5pbmRleDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICB0aGlzLl9zY2FubmVyLmNvbnN1bWVXaGl0ZXNwYWNlKCk7XG5cbiAgICBjb25zdCBzdHJWYWx1ZSA9IHRoaXMuX2V4dHJhY3RTb3VyY2VDb250ZW50KHN0YXJ0LCBlbmQpO1xuXG4gICAgLy8gaWYgd2UgZG8gY29tZSBhY3Jvc3Mgb25lIG9yIG1vcmUgc3BhY2VzIGluc2lkZSBvZlxuICAgIC8vIHRoZSBvcGVyYXRvcnMgbG9vcCB0aGVuIGFuIGVtcHR5IHNwYWNlIGlzIHN0aWxsIGFcbiAgICAvLyB2YWxpZCBvcGVyYXRvciB0byB1c2UgaWYgc29tZXRoaW5nIGVsc2Ugd2FzIG5vdCBmb3VuZFxuICAgIGlmIChvcGVyYXRvciA9PSBudWxsICYmIG9wZXJhdG9yU2NhbkNvdW50ID4gMCAmJiB0aGlzLl9zY2FubmVyLnBlZWsgIT0gY2hhcnMuJExCUkFDRSkge1xuICAgICAgb3BlcmF0b3IgPSBsYXN0T3BlcmF0b3JUb2tlbjtcbiAgICB9XG5cbiAgICAvLyBwbGVhc2Ugbm90ZSB0aGF0IGBlbmRUb2tlbmAgaXMgcmVhc3NpZ25lZCBtdWx0aXBsZSB0aW1lcyBiZWxvd1xuICAgIC8vIHNvIHBsZWFzZSBkbyBub3Qgb3B0aW1pemUgdGhlIGlmIHN0YXRlbWVudHMgaW50byBpZi9lbHNlaWZcbiAgICBsZXQgc3RhcnRUb2tlbk9yQXN0OiBDc3NUb2tlbnxDc3NBc3R8bnVsbCA9IG51bGw7XG4gICAgbGV0IGVuZFRva2VuT3JBc3Q6IENzc1Rva2VufENzc0FzdHxudWxsID0gbnVsbDtcbiAgICBpZiAoc2VsZWN0b3JDc3NUb2tlbnMubGVuZ3RoID4gMCkge1xuICAgICAgc3RhcnRUb2tlbk9yQXN0ID0gc3RhcnRUb2tlbk9yQXN0IHx8IHNlbGVjdG9yQ3NzVG9rZW5zWzBdO1xuICAgICAgZW5kVG9rZW5PckFzdCA9IHNlbGVjdG9yQ3NzVG9rZW5zW3NlbGVjdG9yQ3NzVG9rZW5zLmxlbmd0aCAtIDFdO1xuICAgIH1cbiAgICBpZiAocHNldWRvU2VsZWN0b3JzLmxlbmd0aCA+IDApIHtcbiAgICAgIHN0YXJ0VG9rZW5PckFzdCA9IHN0YXJ0VG9rZW5PckFzdCB8fCBwc2V1ZG9TZWxlY3RvcnNbMF07XG4gICAgICBlbmRUb2tlbk9yQXN0ID0gcHNldWRvU2VsZWN0b3JzW3BzZXVkb1NlbGVjdG9ycy5sZW5ndGggLSAxXTtcbiAgICB9XG4gICAgaWYgKG9wZXJhdG9yICE9IG51bGwpIHtcbiAgICAgIHN0YXJ0VG9rZW5PckFzdCA9IHN0YXJ0VG9rZW5PckFzdCB8fCBvcGVyYXRvcjtcbiAgICAgIGVuZFRva2VuT3JBc3QgPSBvcGVyYXRvcjtcbiAgICB9XG5cbiAgICBjb25zdCBzcGFuID0gdGhpcy5fZ2VuZXJhdGVTb3VyY2VTcGFuKHN0YXJ0VG9rZW5PckFzdCEsIGVuZFRva2VuT3JBc3QpO1xuICAgIHJldHVybiBuZXcgQ3NzU2ltcGxlU2VsZWN0b3JBc3Qoc3Bhbiwgc2VsZWN0b3JDc3NUb2tlbnMsIHN0clZhbHVlLCBwc2V1ZG9TZWxlY3RvcnMsIG9wZXJhdG9yISk7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9wYXJzZVNlbGVjdG9yKGRlbGltaXRlcnM6IG51bWJlcik6IENzc1NlbGVjdG9yQXN0IHtcbiAgICBkZWxpbWl0ZXJzIHw9IENPTU1BX0RFTElNX0ZMQUc7XG4gICAgdGhpcy5fc2Nhbm5lci5zZXRNb2RlKENzc0xleGVyTW9kZS5TRUxFQ1RPUik7XG5cbiAgICBjb25zdCBzaW1wbGVTZWxlY3RvcnM6IENzc1NpbXBsZVNlbGVjdG9yQXN0W10gPSBbXTtcbiAgICB3aGlsZSAoIWNoYXJhY3RlckNvbnRhaW5zRGVsaW1pdGVyKHRoaXMuX3NjYW5uZXIucGVlaywgZGVsaW1pdGVycykpIHtcbiAgICAgIHNpbXBsZVNlbGVjdG9ycy5wdXNoKHRoaXMuX3BhcnNlU2ltcGxlU2VsZWN0b3IoZGVsaW1pdGVycykpO1xuICAgICAgdGhpcy5fc2Nhbm5lci5jb25zdW1lV2hpdGVzcGFjZSgpO1xuICAgIH1cblxuICAgIGNvbnN0IGZpcnN0U2VsZWN0b3IgPSBzaW1wbGVTZWxlY3RvcnNbMF07XG4gICAgY29uc3QgbGFzdFNlbGVjdG9yID0gc2ltcGxlU2VsZWN0b3JzW3NpbXBsZVNlbGVjdG9ycy5sZW5ndGggLSAxXTtcbiAgICBjb25zdCBzcGFuID0gdGhpcy5fZ2VuZXJhdGVTb3VyY2VTcGFuKGZpcnN0U2VsZWN0b3IsIGxhc3RTZWxlY3Rvcik7XG4gICAgcmV0dXJuIG5ldyBDc3NTZWxlY3RvckFzdChzcGFuLCBzaW1wbGVTZWxlY3RvcnMpO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfcGFyc2VWYWx1ZShkZWxpbWl0ZXJzOiBudW1iZXIpOiBDc3NTdHlsZVZhbHVlQXN0IHtcbiAgICBkZWxpbWl0ZXJzIHw9IFJCUkFDRV9ERUxJTV9GTEFHIHwgU0VNSUNPTE9OX0RFTElNX0ZMQUcgfCBORVdMSU5FX0RFTElNX0ZMQUc7XG5cbiAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLlNUWUxFX1ZBTFVFKTtcbiAgICBjb25zdCBzdGFydCA9IHRoaXMuX2dldFNjYW5uZXJJbmRleCgpO1xuXG4gICAgY29uc3QgdG9rZW5zOiBDc3NUb2tlbltdID0gW107XG4gICAgbGV0IHdzU3RyID0gJyc7XG4gICAgbGV0IHByZXZpb3VzOiBDc3NUb2tlbiA9IHVuZGVmaW5lZCE7XG4gICAgd2hpbGUgKCFjaGFyYWN0ZXJDb250YWluc0RlbGltaXRlcih0aGlzLl9zY2FubmVyLnBlZWssIGRlbGltaXRlcnMpKSB7XG4gICAgICBsZXQgdG9rZW46IENzc1Rva2VuO1xuICAgICAgaWYgKHByZXZpb3VzICE9IG51bGwgJiYgcHJldmlvdXMudHlwZSA9PSBDc3NUb2tlblR5cGUuSWRlbnRpZmllciAmJlxuICAgICAgICAgIHRoaXMuX3NjYW5uZXIucGVlayA9PSBjaGFycy4kTFBBUkVOKSB7XG4gICAgICAgIHRva2VuID0gdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyLCAnKCcpO1xuICAgICAgICB0b2tlbnMucHVzaCh0b2tlbik7XG5cbiAgICAgICAgdGhpcy5fc2Nhbm5lci5zZXRNb2RlKENzc0xleGVyTW9kZS5TVFlMRV9WQUxVRV9GVU5DVElPTik7XG5cbiAgICAgICAgdG9rZW4gPSB0aGlzLl9zY2FuKCk7XG4gICAgICAgIHRva2Vucy5wdXNoKHRva2VuKTtcblxuICAgICAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLlNUWUxFX1ZBTFVFKTtcblxuICAgICAgICB0b2tlbiA9IHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLkNoYXJhY3RlciwgJyknKTtcbiAgICAgICAgdG9rZW5zLnB1c2godG9rZW4pO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdG9rZW4gPSB0aGlzLl9zY2FuKCk7XG4gICAgICAgIGlmICh0b2tlbi50eXBlID09IENzc1Rva2VuVHlwZS5XaGl0ZXNwYWNlKSB7XG4gICAgICAgICAgd3NTdHIgKz0gdG9rZW4uc3RyVmFsdWU7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgd3NTdHIgPSAnJztcbiAgICAgICAgICB0b2tlbnMucHVzaCh0b2tlbik7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIHByZXZpb3VzID0gdG9rZW47XG4gICAgfVxuXG4gICAgY29uc3QgZW5kID0gdGhpcy5fZ2V0U2Nhbm5lckluZGV4KCkgLSAxO1xuICAgIHRoaXMuX3NjYW5uZXIuY29uc3VtZVdoaXRlc3BhY2UoKTtcblxuICAgIGNvbnN0IGNvZGUgPSB0aGlzLl9zY2FubmVyLnBlZWs7XG4gICAgaWYgKGNvZGUgPT0gY2hhcnMuJFNFTUlDT0xPTikge1xuICAgICAgdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyLCAnOycpO1xuICAgIH0gZWxzZSBpZiAoY29kZSAhPSBjaGFycy4kUkJSQUNFKSB7XG4gICAgICB0aGlzLl9lcnJvcihcbiAgICAgICAgICBnZW5lcmF0ZUVycm9yTWVzc2FnZShcbiAgICAgICAgICAgICAgdGhpcy5fZ2V0U291cmNlQ29udGVudCgpLCBgVGhlIENTUyBrZXkvdmFsdWUgZGVmaW5pdGlvbiBkaWQgbm90IGVuZCB3aXRoIGEgc2VtaWNvbG9uYCxcbiAgICAgICAgICAgICAgcHJldmlvdXMuc3RyVmFsdWUsIHByZXZpb3VzLmluZGV4LCBwcmV2aW91cy5saW5lLCBwcmV2aW91cy5jb2x1bW4pLFxuICAgICAgICAgIHByZXZpb3VzKTtcbiAgICB9XG5cbiAgICBjb25zdCBzdHJWYWx1ZSA9IHRoaXMuX2V4dHJhY3RTb3VyY2VDb250ZW50KHN0YXJ0LCBlbmQpO1xuICAgIGNvbnN0IHN0YXJ0VG9rZW4gPSB0b2tlbnNbMF07XG4gICAgY29uc3QgZW5kVG9rZW4gPSB0b2tlbnNbdG9rZW5zLmxlbmd0aCAtIDFdO1xuICAgIGNvbnN0IHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4oc3RhcnRUb2tlbiwgZW5kVG9rZW4pO1xuICAgIHJldHVybiBuZXcgQ3NzU3R5bGVWYWx1ZUFzdChzcGFuLCB0b2tlbnMsIHN0clZhbHVlKTtcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX2NvbGxlY3RVbnRpbERlbGltKGRlbGltaXRlcnM6IG51bWJlciwgYXNzZXJ0VHlwZTogQ3NzVG9rZW5UeXBlfG51bGwgPSBudWxsKTogQ3NzVG9rZW5bXSB7XG4gICAgY29uc3QgdG9rZW5zOiBDc3NUb2tlbltdID0gW107XG4gICAgd2hpbGUgKCFjaGFyYWN0ZXJDb250YWluc0RlbGltaXRlcih0aGlzLl9zY2FubmVyLnBlZWssIGRlbGltaXRlcnMpKSB7XG4gICAgICBjb25zdCB2YWwgPSBhc3NlcnRUeXBlICE9IG51bGwgPyB0aGlzLl9jb25zdW1lKGFzc2VydFR5cGUpIDogdGhpcy5fc2NhbigpO1xuICAgICAgdG9rZW5zLnB1c2godmFsKTtcbiAgICB9XG4gICAgcmV0dXJuIHRva2VucztcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX3BhcnNlQmxvY2soZGVsaW1pdGVyczogbnVtYmVyKTogQ3NzQmxvY2tBc3Qge1xuICAgIGRlbGltaXRlcnMgfD0gUkJSQUNFX0RFTElNX0ZMQUc7XG5cbiAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLkJMT0NLKTtcblxuICAgIGNvbnN0IHN0YXJ0VG9rZW4gPSB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIsICd7Jyk7XG4gICAgdGhpcy5fc2Nhbm5lci5jb25zdW1lRW1wdHlTdGF0ZW1lbnRzKCk7XG5cbiAgICBjb25zdCByZXN1bHRzOiBDc3NSdWxlQXN0W10gPSBbXTtcbiAgICB3aGlsZSAoIWNoYXJhY3RlckNvbnRhaW5zRGVsaW1pdGVyKHRoaXMuX3NjYW5uZXIucGVlaywgZGVsaW1pdGVycykpIHtcbiAgICAgIHJlc3VsdHMucHVzaCh0aGlzLl9wYXJzZVJ1bGUoZGVsaW1pdGVycykpO1xuICAgIH1cblxuICAgIGNvbnN0IGVuZFRva2VuID0gdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyLCAnfScpO1xuXG4gICAgdGhpcy5fc2Nhbm5lci5zZXRNb2RlKENzc0xleGVyTW9kZS5CTE9DSyk7XG4gICAgdGhpcy5fc2Nhbm5lci5jb25zdW1lRW1wdHlTdGF0ZW1lbnRzKCk7XG5cbiAgICBjb25zdCBzcGFuID0gdGhpcy5fZ2VuZXJhdGVTb3VyY2VTcGFuKHN0YXJ0VG9rZW4sIGVuZFRva2VuKTtcbiAgICByZXR1cm4gbmV3IENzc0Jsb2NrQXN0KHNwYW4sIHJlc3VsdHMpO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfcGFyc2VTdHlsZUJsb2NrKGRlbGltaXRlcnM6IG51bWJlcik6IENzc1N0eWxlc0Jsb2NrQXN0fG51bGwge1xuICAgIGRlbGltaXRlcnMgfD0gUkJSQUNFX0RFTElNX0ZMQUcgfCBMQlJBQ0VfREVMSU1fRkxBRztcblxuICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuU1RZTEVfQkxPQ0spO1xuXG4gICAgY29uc3Qgc3RhcnRUb2tlbiA9IHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLkNoYXJhY3RlciwgJ3snKTtcbiAgICBpZiAoc3RhcnRUb2tlbi5udW1WYWx1ZSAhPSBjaGFycy4kTEJSQUNFKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICBjb25zdCBkZWZpbml0aW9uczogQ3NzRGVmaW5pdGlvbkFzdFtdID0gW107XG4gICAgdGhpcy5fc2Nhbm5lci5jb25zdW1lRW1wdHlTdGF0ZW1lbnRzKCk7XG5cbiAgICB3aGlsZSAoIWNoYXJhY3RlckNvbnRhaW5zRGVsaW1pdGVyKHRoaXMuX3NjYW5uZXIucGVlaywgZGVsaW1pdGVycykpIHtcbiAgICAgIGRlZmluaXRpb25zLnB1c2godGhpcy5fcGFyc2VEZWZpbml0aW9uKGRlbGltaXRlcnMpKTtcbiAgICAgIHRoaXMuX3NjYW5uZXIuY29uc3VtZUVtcHR5U3RhdGVtZW50cygpO1xuICAgIH1cblxuICAgIGNvbnN0IGVuZFRva2VuID0gdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyLCAnfScpO1xuXG4gICAgdGhpcy5fc2Nhbm5lci5zZXRNb2RlKENzc0xleGVyTW9kZS5TVFlMRV9CTE9DSyk7XG4gICAgdGhpcy5fc2Nhbm5lci5jb25zdW1lRW1wdHlTdGF0ZW1lbnRzKCk7XG5cbiAgICBjb25zdCBzcGFuID0gdGhpcy5fZ2VuZXJhdGVTb3VyY2VTcGFuKHN0YXJ0VG9rZW4sIGVuZFRva2VuKTtcbiAgICByZXR1cm4gbmV3IENzc1N0eWxlc0Jsb2NrQXN0KHNwYW4sIGRlZmluaXRpb25zKTtcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX3BhcnNlRGVmaW5pdGlvbihkZWxpbWl0ZXJzOiBudW1iZXIpOiBDc3NEZWZpbml0aW9uQXN0IHtcbiAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLlNUWUxFX0JMT0NLKTtcblxuICAgIGxldCBwcm9wID0gdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuSWRlbnRpZmllcik7XG4gICAgbGV0IHBhcnNlVmFsdWU6IGJvb2xlYW4gPSBmYWxzZTtcbiAgICBsZXQgdmFsdWU6IENzc1N0eWxlVmFsdWVBc3R8bnVsbCA9IG51bGw7XG4gICAgbGV0IGVuZFRva2VuOiBDc3NUb2tlbnxDc3NTdHlsZVZhbHVlQXN0ID0gcHJvcDtcblxuICAgIC8vIHRoZSBjb2xvbiB2YWx1ZSBzZXBhcmF0ZXMgdGhlIHByb3AgZnJvbSB0aGUgc3R5bGUuXG4gICAgLy8gdGhlcmUgYXJlIGEgZmV3IGNhc2VzIGFzIHRvIHdoYXQgY291bGQgaGFwcGVuIGlmIGl0XG4gICAgLy8gaXMgbWlzc2luZ1xuICAgIHN3aXRjaCAodGhpcy5fc2Nhbm5lci5wZWVrKSB7XG4gICAgICBjYXNlIGNoYXJzLiRTRU1JQ09MT046XG4gICAgICBjYXNlIGNoYXJzLiRSQlJBQ0U6XG4gICAgICBjYXNlIGNoYXJzLiRFT0Y6XG4gICAgICAgIHBhcnNlVmFsdWUgPSBmYWxzZTtcbiAgICAgICAgYnJlYWs7XG5cbiAgICAgIGRlZmF1bHQ6XG4gICAgICAgIGxldCBwcm9wU3RyID0gW3Byb3Auc3RyVmFsdWVdO1xuICAgICAgICBpZiAodGhpcy5fc2Nhbm5lci5wZWVrICE9IGNoYXJzLiRDT0xPTikge1xuICAgICAgICAgIC8vIHRoaXMgd2lsbCB0aHJvdyB0aGUgZXJyb3JcbiAgICAgICAgICBjb25zdCBuZXh0VmFsdWUgPSB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIsICc6Jyk7XG4gICAgICAgICAgcHJvcFN0ci5wdXNoKG5leHRWYWx1ZS5zdHJWYWx1ZSk7XG5cbiAgICAgICAgICBjb25zdCByZW1haW5pbmdUb2tlbnMgPSB0aGlzLl9jb2xsZWN0VW50aWxEZWxpbShcbiAgICAgICAgICAgICAgZGVsaW1pdGVycyB8IENPTE9OX0RFTElNX0ZMQUcgfCBTRU1JQ09MT05fREVMSU1fRkxBRywgQ3NzVG9rZW5UeXBlLklkZW50aWZpZXIpO1xuICAgICAgICAgIGlmIChyZW1haW5pbmdUb2tlbnMubGVuZ3RoID4gMCkge1xuICAgICAgICAgICAgcmVtYWluaW5nVG9rZW5zLmZvckVhY2goKHRva2VuKSA9PiB7XG4gICAgICAgICAgICAgIHByb3BTdHIucHVzaCh0b2tlbi5zdHJWYWx1ZSk7XG4gICAgICAgICAgICB9KTtcbiAgICAgICAgICB9XG5cbiAgICAgICAgICBlbmRUb2tlbiA9IHByb3AgPVxuICAgICAgICAgICAgICBuZXcgQ3NzVG9rZW4ocHJvcC5pbmRleCwgcHJvcC5jb2x1bW4sIHByb3AubGluZSwgcHJvcC50eXBlLCBwcm9wU3RyLmpvaW4oJyAnKSk7XG4gICAgICAgIH1cblxuICAgICAgICAvLyB0aGlzIG1lYW5zIHdlJ3ZlIHJlYWNoZWQgdGhlIGVuZCBvZiB0aGUgZGVmaW5pdGlvbiBhbmQvb3IgYmxvY2tcbiAgICAgICAgaWYgKHRoaXMuX3NjYW5uZXIucGVlayA9PSBjaGFycy4kQ09MT04pIHtcbiAgICAgICAgICB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIsICc6Jyk7XG4gICAgICAgICAgcGFyc2VWYWx1ZSA9IHRydWU7XG4gICAgICAgIH1cbiAgICAgICAgYnJlYWs7XG4gICAgfVxuXG4gICAgaWYgKHBhcnNlVmFsdWUpIHtcbiAgICAgIHZhbHVlID0gdGhpcy5fcGFyc2VWYWx1ZShkZWxpbWl0ZXJzKTtcbiAgICAgIGVuZFRva2VuID0gdmFsdWU7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMuX2Vycm9yKFxuICAgICAgICAgIGdlbmVyYXRlRXJyb3JNZXNzYWdlKFxuICAgICAgICAgICAgICB0aGlzLl9nZXRTb3VyY2VDb250ZW50KCksIGBUaGUgQ1NTIHByb3BlcnR5IHdhcyBub3QgcGFpcmVkIHdpdGggYSBzdHlsZSB2YWx1ZWAsXG4gICAgICAgICAgICAgIHByb3Auc3RyVmFsdWUsIHByb3AuaW5kZXgsIHByb3AubGluZSwgcHJvcC5jb2x1bW4pLFxuICAgICAgICAgIHByb3ApO1xuICAgIH1cblxuICAgIGNvbnN0IHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4ocHJvcCwgZW5kVG9rZW4pO1xuICAgIHJldHVybiBuZXcgQ3NzRGVmaW5pdGlvbkFzdChzcGFuLCBwcm9wLCB2YWx1ZSEpO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfYXNzZXJ0Q29uZGl0aW9uKHN0YXR1czogYm9vbGVhbiwgZXJyb3JNZXNzYWdlOiBzdHJpbmcsIHByb2JsZW1Ub2tlbjogQ3NzVG9rZW4pOiBib29sZWFuIHtcbiAgICBpZiAoIXN0YXR1cykge1xuICAgICAgdGhpcy5fZXJyb3IoZXJyb3JNZXNzYWdlLCBwcm9ibGVtVG9rZW4pO1xuICAgICAgcmV0dXJuIHRydWU7XG4gICAgfVxuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX2Vycm9yKG1lc3NhZ2U6IHN0cmluZywgcHJvYmxlbVRva2VuOiBDc3NUb2tlbikge1xuICAgIGNvbnN0IGxlbmd0aCA9IHByb2JsZW1Ub2tlbi5zdHJWYWx1ZS5sZW5ndGg7XG4gICAgY29uc3QgZXJyb3IgPSBDc3NQYXJzZUVycm9yLmNyZWF0ZShcbiAgICAgICAgdGhpcy5fZmlsZSwgMCwgcHJvYmxlbVRva2VuLmxpbmUsIHByb2JsZW1Ub2tlbi5jb2x1bW4sIGxlbmd0aCwgbWVzc2FnZSk7XG4gICAgdGhpcy5fZXJyb3JzLnB1c2goZXJyb3IpO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBDc3NQYXJzZUVycm9yIGV4dGVuZHMgUGFyc2VFcnJvciB7XG4gIHN0YXRpYyBjcmVhdGUoXG4gICAgICBmaWxlOiBQYXJzZVNvdXJjZUZpbGUsIG9mZnNldDogbnVtYmVyLCBsaW5lOiBudW1iZXIsIGNvbDogbnVtYmVyLCBsZW5ndGg6IG51bWJlcixcbiAgICAgIGVyck1zZzogc3RyaW5nKTogQ3NzUGFyc2VFcnJvciB7XG4gICAgY29uc3Qgc3RhcnQgPSBuZXcgUGFyc2VMb2NhdGlvbihmaWxlLCBvZmZzZXQsIGxpbmUsIGNvbCk7XG4gICAgY29uc3QgZW5kID0gbmV3IFBhcnNlTG9jYXRpb24oZmlsZSwgb2Zmc2V0LCBsaW5lLCBjb2wgKyBsZW5ndGgpO1xuICAgIGNvbnN0IHNwYW4gPSBuZXcgUGFyc2VTb3VyY2VTcGFuKHN0YXJ0LCBlbmQpO1xuICAgIHJldHVybiBuZXcgQ3NzUGFyc2VFcnJvcihzcGFuLCAnQ1NTIFBhcnNlIEVycm9yOiAnICsgZXJyTXNnKTtcbiAgfVxuXG4gIGNvbnN0cnVjdG9yKHNwYW46IFBhcnNlU291cmNlU3BhbiwgbWVzc2FnZTogc3RyaW5nKSB7XG4gICAgc3VwZXIoc3BhbiwgbWVzc2FnZSk7XG4gIH1cbn1cbiJdfQ==