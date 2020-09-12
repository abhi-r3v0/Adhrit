/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import * as chars from '../chars';
import { ParseError, ParseLocation, ParseSourceFile, ParseSourceSpan } from '../parse_util';
import { BlockType, CssAst, CssAtRulePredicateAst, CssBlockAst, CssBlockDefinitionRuleAst, CssBlockRuleAst, CssDefinitionAst, CssInlineRuleAst, CssKeyframeDefinitionAst, CssKeyframeRuleAst, CssMediaQueryRuleAst, CssPseudoSelectorAst, CssSelectorAst, CssSelectorRuleAst, CssSimpleSelectorAst, CssStylesBlockAst, CssStyleSheetAst, CssStyleValueAst, CssUnknownRuleAst, CssUnknownTokenListAst, mergeTokens } from './css_ast';
import { CssLexer, CssLexerMode, CssToken, CssTokenType, generateErrorMessage, getRawMessage, isNewline } from './css_lexer';
const SPACE_OPERATOR = ' ';
export { CssToken } from './css_lexer';
export { BlockType } from './css_ast';
const SLASH_CHARACTER = '/';
const GT_CHARACTER = '>';
const TRIPLE_GT_OPERATOR_STR = '>>>';
const DEEP_OPERATOR_STR = '/deep/';
const EOF_DELIM_FLAG = 1;
const RBRACE_DELIM_FLAG = 2;
const LBRACE_DELIM_FLAG = 4;
const COMMA_DELIM_FLAG = 8;
const COLON_DELIM_FLAG = 16;
const SEMICOLON_DELIM_FLAG = 32;
const NEWLINE_DELIM_FLAG = 64;
const RPAREN_DELIM_FLAG = 128;
const LPAREN_DELIM_FLAG = 256;
const SPACE_DELIM_FLAG = 512;
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
            return isNewline(code) ? NEWLINE_DELIM_FLAG : 0;
    }
}
function characterContainsDelimiter(code, delimiters) {
    return (getDelimFromCharacter(code) & delimiters) > 0;
}
export class ParsedCssResult {
    constructor(errors, ast) {
        this.errors = errors;
        this.ast = ast;
    }
}
export class CssParser {
    constructor() {
        this._errors = [];
    }
    /**
     * @param css the CSS code that will be parsed
     * @param url the name of the CSS file containing the CSS source code
     */
    parse(css, url) {
        const lexer = new CssLexer();
        this._file = new ParseSourceFile(css, url);
        this._scanner = lexer.scan(css, false);
        const ast = this._parseStyleSheet(EOF_DELIM_FLAG);
        const errors = this._errors;
        this._errors = [];
        const result = new ParsedCssResult(errors, ast);
        this._file = null;
        this._scanner = null;
        return result;
    }
    /** @internal */
    _parseStyleSheet(delimiters) {
        const results = [];
        this._scanner.consumeEmptyStatements();
        while (this._scanner.peek != chars.$EOF) {
            this._scanner.setMode(CssLexerMode.BLOCK);
            results.push(this._parseRule(delimiters));
        }
        let span = null;
        if (results.length > 0) {
            const firstRule = results[0];
            // we collect the last token like so incase there was an
            // EOF token that was emitted sometime during the lexing
            span = this._generateSourceSpan(firstRule, this._lastToken);
        }
        return new CssStyleSheetAst(span, results);
    }
    /** @internal */
    _getSourceContent() {
        return this._scanner != null ? this._scanner.input : '';
    }
    /** @internal */
    _extractSourceContent(start, end) {
        return this._getSourceContent().substring(start, end + 1);
    }
    /** @internal */
    _generateSourceSpan(start, end = null) {
        let startLoc;
        if (start instanceof CssAst) {
            startLoc = start.location.start;
        }
        else {
            let token = start;
            if (token == null) {
                // the data here is invalid, however, if and when this does
                // occur, any other errors associated with this will be collected
                token = this._lastToken;
            }
            startLoc = new ParseLocation(this._file, token.index, token.line, token.column);
        }
        if (end == null) {
            end = this._lastToken;
        }
        let endLine = -1;
        let endColumn = -1;
        let endIndex = -1;
        if (end instanceof CssAst) {
            endLine = end.location.end.line;
            endColumn = end.location.end.col;
            endIndex = end.location.end.offset;
        }
        else if (end instanceof CssToken) {
            endLine = end.line;
            endColumn = end.column;
            endIndex = end.index;
        }
        const endLoc = new ParseLocation(this._file, endIndex, endLine, endColumn);
        return new ParseSourceSpan(startLoc, endLoc);
    }
    /** @internal */
    _resolveBlockType(token) {
        switch (token.strValue) {
            case '@-o-keyframes':
            case '@-moz-keyframes':
            case '@-webkit-keyframes':
            case '@keyframes':
                return BlockType.Keyframes;
            case '@charset':
                return BlockType.Charset;
            case '@import':
                return BlockType.Import;
            case '@namespace':
                return BlockType.Namespace;
            case '@page':
                return BlockType.Page;
            case '@document':
                return BlockType.Document;
            case '@media':
                return BlockType.MediaQuery;
            case '@font-face':
                return BlockType.FontFace;
            case '@viewport':
                return BlockType.Viewport;
            case '@supports':
                return BlockType.Supports;
            default:
                return BlockType.Unsupported;
        }
    }
    /** @internal */
    _parseRule(delimiters) {
        if (this._scanner.peek == chars.$AT) {
            return this._parseAtRule(delimiters);
        }
        return this._parseSelectorRule(delimiters);
    }
    /** @internal */
    _parseAtRule(delimiters) {
        const start = this._getScannerIndex();
        this._scanner.setMode(CssLexerMode.BLOCK);
        const token = this._scan();
        const startToken = token;
        this._assertCondition(token.type == CssTokenType.AtKeyword, `The CSS Rule ${token.strValue} is not a valid [@] rule.`, token);
        let block;
        const type = this._resolveBlockType(token);
        let span;
        let tokens;
        let endToken;
        let end;
        let strValue;
        let query;
        switch (type) {
            case BlockType.Charset:
            case BlockType.Namespace:
            case BlockType.Import:
                let value = this._parseValue(delimiters);
                this._scanner.setMode(CssLexerMode.BLOCK);
                this._scanner.consumeEmptyStatements();
                span = this._generateSourceSpan(startToken, value);
                return new CssInlineRuleAst(span, type, value);
            case BlockType.Viewport:
            case BlockType.FontFace:
                block = this._parseStyleBlock(delimiters);
                span = this._generateSourceSpan(startToken, block);
                return new CssBlockRuleAst(span, type, block);
            case BlockType.Keyframes:
                tokens = this._collectUntilDelim(delimiters | RBRACE_DELIM_FLAG | LBRACE_DELIM_FLAG);
                // keyframes only have one identifier name
                let name = tokens[0];
                block = this._parseKeyframeBlock(delimiters);
                span = this._generateSourceSpan(startToken, block);
                return new CssKeyframeRuleAst(span, name, block);
            case BlockType.MediaQuery:
                this._scanner.setMode(CssLexerMode.MEDIA_QUERY);
                tokens = this._collectUntilDelim(delimiters | RBRACE_DELIM_FLAG | LBRACE_DELIM_FLAG);
                endToken = tokens[tokens.length - 1];
                // we do not track the whitespace after the mediaQuery predicate ends
                // so we have to calculate the end string value on our own
                end = endToken.index + endToken.strValue.length - 1;
                strValue = this._extractSourceContent(start, end);
                span = this._generateSourceSpan(startToken, endToken);
                query = new CssAtRulePredicateAst(span, strValue, tokens);
                block = this._parseBlock(delimiters);
                strValue = this._extractSourceContent(start, this._getScannerIndex() - 1);
                span = this._generateSourceSpan(startToken, block);
                return new CssMediaQueryRuleAst(span, strValue, query, block);
            case BlockType.Document:
            case BlockType.Supports:
            case BlockType.Page:
                this._scanner.setMode(CssLexerMode.AT_RULE_QUERY);
                tokens = this._collectUntilDelim(delimiters | RBRACE_DELIM_FLAG | LBRACE_DELIM_FLAG);
                endToken = tokens[tokens.length - 1];
                // we do not track the whitespace after this block rule predicate ends
                // so we have to calculate the end string value on our own
                end = endToken.index + endToken.strValue.length - 1;
                strValue = this._extractSourceContent(start, end);
                span = this._generateSourceSpan(startToken, tokens[tokens.length - 1]);
                query = new CssAtRulePredicateAst(span, strValue, tokens);
                block = this._parseBlock(delimiters);
                strValue = this._extractSourceContent(start, block.end.offset);
                span = this._generateSourceSpan(startToken, block);
                return new CssBlockDefinitionRuleAst(span, strValue, type, query, block);
            // if a custom @rule { ... } is used it should still tokenize the insides
            default:
                let listOfTokens = [];
                let tokenName = token.strValue;
                this._scanner.setMode(CssLexerMode.ALL);
                this._error(generateErrorMessage(this._getSourceContent(), `The CSS "at" rule "${tokenName}" is not allowed to used here`, token.strValue, token.index, token.line, token.column), token);
                this._collectUntilDelim(delimiters | LBRACE_DELIM_FLAG | SEMICOLON_DELIM_FLAG)
                    .forEach((token) => {
                    listOfTokens.push(token);
                });
                if (this._scanner.peek == chars.$LBRACE) {
                    listOfTokens.push(this._consume(CssTokenType.Character, '{'));
                    this._collectUntilDelim(delimiters | RBRACE_DELIM_FLAG | LBRACE_DELIM_FLAG)
                        .forEach((token) => {
                        listOfTokens.push(token);
                    });
                    listOfTokens.push(this._consume(CssTokenType.Character, '}'));
                }
                endToken = listOfTokens[listOfTokens.length - 1];
                span = this._generateSourceSpan(startToken, endToken);
                return new CssUnknownRuleAst(span, tokenName, listOfTokens);
        }
    }
    /** @internal */
    _parseSelectorRule(delimiters) {
        const start = this._getScannerIndex();
        const selectors = this._parseSelectors(delimiters);
        const block = this._parseStyleBlock(delimiters);
        let ruleAst;
        let span;
        const startSelector = selectors[0];
        if (block != null) {
            span = this._generateSourceSpan(startSelector, block);
            ruleAst = new CssSelectorRuleAst(span, selectors, block);
        }
        else {
            const name = this._extractSourceContent(start, this._getScannerIndex() - 1);
            const innerTokens = [];
            selectors.forEach((selector) => {
                selector.selectorParts.forEach((part) => {
                    part.tokens.forEach((token) => {
                        innerTokens.push(token);
                    });
                });
            });
            const endToken = innerTokens[innerTokens.length - 1];
            span = this._generateSourceSpan(startSelector, endToken);
            ruleAst = new CssUnknownTokenListAst(span, name, innerTokens);
        }
        this._scanner.setMode(CssLexerMode.BLOCK);
        this._scanner.consumeEmptyStatements();
        return ruleAst;
    }
    /** @internal */
    _parseSelectors(delimiters) {
        delimiters |= LBRACE_DELIM_FLAG | SEMICOLON_DELIM_FLAG;
        const selectors = [];
        let isParsingSelectors = true;
        while (isParsingSelectors) {
            selectors.push(this._parseSelector(delimiters));
            isParsingSelectors = !characterContainsDelimiter(this._scanner.peek, delimiters);
            if (isParsingSelectors) {
                this._consume(CssTokenType.Character, ',');
                isParsingSelectors = !characterContainsDelimiter(this._scanner.peek, delimiters);
                if (isParsingSelectors) {
                    this._scanner.consumeWhitespace();
                }
            }
        }
        return selectors;
    }
    /** @internal */
    _scan() {
        const output = this._scanner.scan();
        const token = output.token;
        const error = output.error;
        if (error != null) {
            this._error(getRawMessage(error), token);
        }
        this._lastToken = token;
        return token;
    }
    /** @internal */
    _getScannerIndex() {
        return this._scanner.index;
    }
    /** @internal */
    _consume(type, value = null) {
        const output = this._scanner.consume(type, value);
        const token = output.token;
        const error = output.error;
        if (error != null) {
            this._error(getRawMessage(error), token);
        }
        this._lastToken = token;
        return token;
    }
    /** @internal */
    _parseKeyframeBlock(delimiters) {
        delimiters |= RBRACE_DELIM_FLAG;
        this._scanner.setMode(CssLexerMode.KEYFRAME_BLOCK);
        const startToken = this._consume(CssTokenType.Character, '{');
        const definitions = [];
        while (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
            definitions.push(this._parseKeyframeDefinition(delimiters));
        }
        const endToken = this._consume(CssTokenType.Character, '}');
        const span = this._generateSourceSpan(startToken, endToken);
        return new CssBlockAst(span, definitions);
    }
    /** @internal */
    _parseKeyframeDefinition(delimiters) {
        const start = this._getScannerIndex();
        const stepTokens = [];
        delimiters |= LBRACE_DELIM_FLAG;
        while (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
            stepTokens.push(this._parseKeyframeLabel(delimiters | COMMA_DELIM_FLAG));
            if (this._scanner.peek != chars.$LBRACE) {
                this._consume(CssTokenType.Character, ',');
            }
        }
        const stylesBlock = this._parseStyleBlock(delimiters | RBRACE_DELIM_FLAG);
        const span = this._generateSourceSpan(stepTokens[0], stylesBlock);
        const ast = new CssKeyframeDefinitionAst(span, stepTokens, stylesBlock);
        this._scanner.setMode(CssLexerMode.BLOCK);
        return ast;
    }
    /** @internal */
    _parseKeyframeLabel(delimiters) {
        this._scanner.setMode(CssLexerMode.KEYFRAME_BLOCK);
        return mergeTokens(this._collectUntilDelim(delimiters));
    }
    /** @internal */
    _parsePseudoSelector(delimiters) {
        const start = this._getScannerIndex();
        delimiters &= ~COMMA_DELIM_FLAG;
        // we keep the original value since we may use it to recurse when :not, :host are used
        const startingDelims = delimiters;
        const startToken = this._consume(CssTokenType.Character, ':');
        const tokens = [startToken];
        if (this._scanner.peek == chars.$COLON) { // ::something
            tokens.push(this._consume(CssTokenType.Character, ':'));
        }
        const innerSelectors = [];
        this._scanner.setMode(CssLexerMode.PSEUDO_SELECTOR);
        // host, host-context, lang, not, nth-child are all identifiers
        const pseudoSelectorToken = this._consume(CssTokenType.Identifier);
        const pseudoSelectorName = pseudoSelectorToken.strValue;
        tokens.push(pseudoSelectorToken);
        // host(), lang(), nth-child(), etc...
        if (this._scanner.peek == chars.$LPAREN) {
            this._scanner.setMode(CssLexerMode.PSEUDO_SELECTOR_WITH_ARGUMENTS);
            const openParenToken = this._consume(CssTokenType.Character, '(');
            tokens.push(openParenToken);
            // :host(innerSelector(s)), :not(selector), etc...
            if (_pseudoSelectorSupportsInnerSelectors(pseudoSelectorName)) {
                let innerDelims = startingDelims | LPAREN_DELIM_FLAG | RPAREN_DELIM_FLAG;
                if (pseudoSelectorName == 'not') {
                    // the inner selector inside of :not(...) can only be one
                    // CSS selector (no commas allowed) ... This is according
                    // to the CSS specification
                    innerDelims |= COMMA_DELIM_FLAG;
                }
                // :host(a, b, c) {
                this._parseSelectors(innerDelims).forEach((selector, index) => {
                    innerSelectors.push(selector);
                });
            }
            else {
                // this branch is for things like "en-us, 2k + 1, etc..."
                // which all end up in pseudoSelectors like :lang, :nth-child, etc..
                const innerValueDelims = delimiters | LBRACE_DELIM_FLAG | COLON_DELIM_FLAG |
                    RPAREN_DELIM_FLAG | LPAREN_DELIM_FLAG;
                while (!characterContainsDelimiter(this._scanner.peek, innerValueDelims)) {
                    const token = this._scan();
                    tokens.push(token);
                }
            }
            const closeParenToken = this._consume(CssTokenType.Character, ')');
            tokens.push(closeParenToken);
        }
        const end = this._getScannerIndex() - 1;
        const strValue = this._extractSourceContent(start, end);
        const endToken = tokens[tokens.length - 1];
        const span = this._generateSourceSpan(startToken, endToken);
        return new CssPseudoSelectorAst(span, strValue, pseudoSelectorName, tokens, innerSelectors);
    }
    /** @internal */
    _parseSimpleSelector(delimiters) {
        const start = this._getScannerIndex();
        delimiters |= COMMA_DELIM_FLAG;
        this._scanner.setMode(CssLexerMode.SELECTOR);
        const selectorCssTokens = [];
        const pseudoSelectors = [];
        let previousToken = undefined;
        const selectorPartDelimiters = delimiters | SPACE_DELIM_FLAG;
        let loopOverSelector = !characterContainsDelimiter(this._scanner.peek, selectorPartDelimiters);
        let hasAttributeError = false;
        while (loopOverSelector) {
            const peek = this._scanner.peek;
            switch (peek) {
                case chars.$COLON:
                    let innerPseudo = this._parsePseudoSelector(delimiters);
                    pseudoSelectors.push(innerPseudo);
                    this._scanner.setMode(CssLexerMode.SELECTOR);
                    break;
                case chars.$LBRACKET:
                    // we set the mode after the scan because attribute mode does not
                    // allow attribute [] values. And this also will catch any errors
                    // if an extra "[" is used inside.
                    selectorCssTokens.push(this._scan());
                    this._scanner.setMode(CssLexerMode.ATTRIBUTE_SELECTOR);
                    break;
                case chars.$RBRACKET:
                    if (this._scanner.getMode() != CssLexerMode.ATTRIBUTE_SELECTOR) {
                        hasAttributeError = true;
                    }
                    // we set the mode early because attribute mode does not
                    // allow attribute [] values
                    this._scanner.setMode(CssLexerMode.SELECTOR);
                    selectorCssTokens.push(this._scan());
                    break;
                default:
                    if (isSelectorOperatorCharacter(peek)) {
                        loopOverSelector = false;
                        continue;
                    }
                    let token = this._scan();
                    previousToken = token;
                    selectorCssTokens.push(token);
                    break;
            }
            loopOverSelector = !characterContainsDelimiter(this._scanner.peek, selectorPartDelimiters);
        }
        hasAttributeError =
            hasAttributeError || this._scanner.getMode() == CssLexerMode.ATTRIBUTE_SELECTOR;
        if (hasAttributeError) {
            this._error(`Unbalanced CSS attribute selector at column ${previousToken.line}:${previousToken.column}`, previousToken);
        }
        let end = this._getScannerIndex() - 1;
        // this happens if the selector is not directly followed by
        // a comma or curly brace without a space in between
        let operator = null;
        let operatorScanCount = 0;
        let lastOperatorToken = null;
        if (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
            while (operator == null && !characterContainsDelimiter(this._scanner.peek, delimiters) &&
                isSelectorOperatorCharacter(this._scanner.peek)) {
                let token = this._scan();
                const tokenOperator = token.strValue;
                operatorScanCount++;
                lastOperatorToken = token;
                if (tokenOperator != SPACE_OPERATOR) {
                    switch (tokenOperator) {
                        case SLASH_CHARACTER:
                            // /deep/ operator
                            let deepToken = this._consume(CssTokenType.Identifier);
                            let deepSlash = this._consume(CssTokenType.Character);
                            let index = lastOperatorToken.index;
                            let line = lastOperatorToken.line;
                            let column = lastOperatorToken.column;
                            if (deepToken != null && deepToken.strValue.toLowerCase() == 'deep' &&
                                deepSlash.strValue == SLASH_CHARACTER) {
                                token = new CssToken(lastOperatorToken.index, lastOperatorToken.column, lastOperatorToken.line, CssTokenType.Identifier, DEEP_OPERATOR_STR);
                            }
                            else {
                                const text = SLASH_CHARACTER + deepToken.strValue + deepSlash.strValue;
                                this._error(generateErrorMessage(this._getSourceContent(), `${text} is an invalid CSS operator`, text, index, line, column), lastOperatorToken);
                                token = new CssToken(index, column, line, CssTokenType.Invalid, text);
                            }
                            break;
                        case GT_CHARACTER:
                            // >>> operator
                            if (this._scanner.peek == chars.$GT && this._scanner.peekPeek == chars.$GT) {
                                this._consume(CssTokenType.Character, GT_CHARACTER);
                                this._consume(CssTokenType.Character, GT_CHARACTER);
                                token = new CssToken(lastOperatorToken.index, lastOperatorToken.column, lastOperatorToken.line, CssTokenType.Identifier, TRIPLE_GT_OPERATOR_STR);
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
        const strValue = this._extractSourceContent(start, end);
        // if we do come across one or more spaces inside of
        // the operators loop then an empty space is still a
        // valid operator to use if something else was not found
        if (operator == null && operatorScanCount > 0 && this._scanner.peek != chars.$LBRACE) {
            operator = lastOperatorToken;
        }
        // please note that `endToken` is reassigned multiple times below
        // so please do not optimize the if statements into if/elseif
        let startTokenOrAst = null;
        let endTokenOrAst = null;
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
        const span = this._generateSourceSpan(startTokenOrAst, endTokenOrAst);
        return new CssSimpleSelectorAst(span, selectorCssTokens, strValue, pseudoSelectors, operator);
    }
    /** @internal */
    _parseSelector(delimiters) {
        delimiters |= COMMA_DELIM_FLAG;
        this._scanner.setMode(CssLexerMode.SELECTOR);
        const simpleSelectors = [];
        while (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
            simpleSelectors.push(this._parseSimpleSelector(delimiters));
            this._scanner.consumeWhitespace();
        }
        const firstSelector = simpleSelectors[0];
        const lastSelector = simpleSelectors[simpleSelectors.length - 1];
        const span = this._generateSourceSpan(firstSelector, lastSelector);
        return new CssSelectorAst(span, simpleSelectors);
    }
    /** @internal */
    _parseValue(delimiters) {
        delimiters |= RBRACE_DELIM_FLAG | SEMICOLON_DELIM_FLAG | NEWLINE_DELIM_FLAG;
        this._scanner.setMode(CssLexerMode.STYLE_VALUE);
        const start = this._getScannerIndex();
        const tokens = [];
        let wsStr = '';
        let previous = undefined;
        while (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
            let token;
            if (previous != null && previous.type == CssTokenType.Identifier &&
                this._scanner.peek == chars.$LPAREN) {
                token = this._consume(CssTokenType.Character, '(');
                tokens.push(token);
                this._scanner.setMode(CssLexerMode.STYLE_VALUE_FUNCTION);
                token = this._scan();
                tokens.push(token);
                this._scanner.setMode(CssLexerMode.STYLE_VALUE);
                token = this._consume(CssTokenType.Character, ')');
                tokens.push(token);
            }
            else {
                token = this._scan();
                if (token.type == CssTokenType.Whitespace) {
                    wsStr += token.strValue;
                }
                else {
                    wsStr = '';
                    tokens.push(token);
                }
            }
            previous = token;
        }
        const end = this._getScannerIndex() - 1;
        this._scanner.consumeWhitespace();
        const code = this._scanner.peek;
        if (code == chars.$SEMICOLON) {
            this._consume(CssTokenType.Character, ';');
        }
        else if (code != chars.$RBRACE) {
            this._error(generateErrorMessage(this._getSourceContent(), `The CSS key/value definition did not end with a semicolon`, previous.strValue, previous.index, previous.line, previous.column), previous);
        }
        const strValue = this._extractSourceContent(start, end);
        const startToken = tokens[0];
        const endToken = tokens[tokens.length - 1];
        const span = this._generateSourceSpan(startToken, endToken);
        return new CssStyleValueAst(span, tokens, strValue);
    }
    /** @internal */
    _collectUntilDelim(delimiters, assertType = null) {
        const tokens = [];
        while (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
            const val = assertType != null ? this._consume(assertType) : this._scan();
            tokens.push(val);
        }
        return tokens;
    }
    /** @internal */
    _parseBlock(delimiters) {
        delimiters |= RBRACE_DELIM_FLAG;
        this._scanner.setMode(CssLexerMode.BLOCK);
        const startToken = this._consume(CssTokenType.Character, '{');
        this._scanner.consumeEmptyStatements();
        const results = [];
        while (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
            results.push(this._parseRule(delimiters));
        }
        const endToken = this._consume(CssTokenType.Character, '}');
        this._scanner.setMode(CssLexerMode.BLOCK);
        this._scanner.consumeEmptyStatements();
        const span = this._generateSourceSpan(startToken, endToken);
        return new CssBlockAst(span, results);
    }
    /** @internal */
    _parseStyleBlock(delimiters) {
        delimiters |= RBRACE_DELIM_FLAG | LBRACE_DELIM_FLAG;
        this._scanner.setMode(CssLexerMode.STYLE_BLOCK);
        const startToken = this._consume(CssTokenType.Character, '{');
        if (startToken.numValue != chars.$LBRACE) {
            return null;
        }
        const definitions = [];
        this._scanner.consumeEmptyStatements();
        while (!characterContainsDelimiter(this._scanner.peek, delimiters)) {
            definitions.push(this._parseDefinition(delimiters));
            this._scanner.consumeEmptyStatements();
        }
        const endToken = this._consume(CssTokenType.Character, '}');
        this._scanner.setMode(CssLexerMode.STYLE_BLOCK);
        this._scanner.consumeEmptyStatements();
        const span = this._generateSourceSpan(startToken, endToken);
        return new CssStylesBlockAst(span, definitions);
    }
    /** @internal */
    _parseDefinition(delimiters) {
        this._scanner.setMode(CssLexerMode.STYLE_BLOCK);
        let prop = this._consume(CssTokenType.Identifier);
        let parseValue = false;
        let value = null;
        let endToken = prop;
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
                let propStr = [prop.strValue];
                if (this._scanner.peek != chars.$COLON) {
                    // this will throw the error
                    const nextValue = this._consume(CssTokenType.Character, ':');
                    propStr.push(nextValue.strValue);
                    const remainingTokens = this._collectUntilDelim(delimiters | COLON_DELIM_FLAG | SEMICOLON_DELIM_FLAG, CssTokenType.Identifier);
                    if (remainingTokens.length > 0) {
                        remainingTokens.forEach((token) => {
                            propStr.push(token.strValue);
                        });
                    }
                    endToken = prop =
                        new CssToken(prop.index, prop.column, prop.line, prop.type, propStr.join(' '));
                }
                // this means we've reached the end of the definition and/or block
                if (this._scanner.peek == chars.$COLON) {
                    this._consume(CssTokenType.Character, ':');
                    parseValue = true;
                }
                break;
        }
        if (parseValue) {
            value = this._parseValue(delimiters);
            endToken = value;
        }
        else {
            this._error(generateErrorMessage(this._getSourceContent(), `The CSS property was not paired with a style value`, prop.strValue, prop.index, prop.line, prop.column), prop);
        }
        const span = this._generateSourceSpan(prop, endToken);
        return new CssDefinitionAst(span, prop, value);
    }
    /** @internal */
    _assertCondition(status, errorMessage, problemToken) {
        if (!status) {
            this._error(errorMessage, problemToken);
            return true;
        }
        return false;
    }
    /** @internal */
    _error(message, problemToken) {
        const length = problemToken.strValue.length;
        const error = CssParseError.create(this._file, 0, problemToken.line, problemToken.column, length, message);
        this._errors.push(error);
    }
}
export class CssParseError extends ParseError {
    static create(file, offset, line, col, length, errMsg) {
        const start = new ParseLocation(file, offset, line, col);
        const end = new ParseLocation(file, offset, line, col + length);
        const span = new ParseSourceSpan(start, end);
        return new CssParseError(span, 'CSS Parse Error: ' + errMsg);
    }
    constructor(span, message) {
        super(span, message);
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY3NzX3BhcnNlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9jc3NfcGFyc2VyL2Nzc19wYXJzZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxLQUFLLEtBQUssTUFBTSxVQUFVLENBQUM7QUFDbEMsT0FBTyxFQUFDLFVBQVUsRUFBRSxhQUFhLEVBQUUsZUFBZSxFQUFFLGVBQWUsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUUxRixPQUFPLEVBQUMsU0FBUyxFQUFFLE1BQU0sRUFBRSxxQkFBcUIsRUFBRSxXQUFXLEVBQUUseUJBQXlCLEVBQUUsZUFBZSxFQUFFLGdCQUFnQixFQUFFLGdCQUFnQixFQUFFLHdCQUF3QixFQUFFLGtCQUFrQixFQUFFLG9CQUFvQixFQUFFLG9CQUFvQixFQUFjLGNBQWMsRUFBRSxrQkFBa0IsRUFBRSxvQkFBb0IsRUFBRSxpQkFBaUIsRUFBRSxnQkFBZ0IsRUFBRSxnQkFBZ0IsRUFBRSxpQkFBaUIsRUFBRSxzQkFBc0IsRUFBRSxXQUFXLEVBQUMsTUFBTSxXQUFXLENBQUM7QUFDL2EsT0FBTyxFQUFDLFFBQVEsRUFBRSxZQUFZLEVBQWMsUUFBUSxFQUFFLFlBQVksRUFBRSxvQkFBb0IsRUFBRSxhQUFhLEVBQUUsU0FBUyxFQUFDLE1BQU0sYUFBYSxDQUFDO0FBRXZJLE1BQU0sY0FBYyxHQUFHLEdBQUcsQ0FBQztBQUUzQixPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0sYUFBYSxDQUFDO0FBQ3JDLE9BQU8sRUFBQyxTQUFTLEVBQUMsTUFBTSxXQUFXLENBQUM7QUFFcEMsTUFBTSxlQUFlLEdBQUcsR0FBRyxDQUFDO0FBQzVCLE1BQU0sWUFBWSxHQUFHLEdBQUcsQ0FBQztBQUN6QixNQUFNLHNCQUFzQixHQUFHLEtBQUssQ0FBQztBQUNyQyxNQUFNLGlCQUFpQixHQUFHLFFBQVEsQ0FBQztBQUVuQyxN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LENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDO0lBQzNCLENBQUM7Q0FDRjtBQUVELE1BQU0sT0FBTyxhQUFjLFNBQVEsVUFBVTtJQUMzQyxNQUFNLENBQUMsTUFBTSxDQUNULElBQXFCLEVBQUUsTUFBYyxFQUFFLElBQVksRUFBRSxHQUFXLEVBQUUsTUFBYyxFQUNoRixNQUFjO1FBQ2hCLE1BQU0sS0FBSyxHQUFHLElBQUksYUFBYSxDQUFDLElBQUksRUFBRSxNQUFNLEVBQUUsSUFBSSxFQUFFLEdBQUcsQ0FBQyxDQUFDO1FBQ3pELE1BQU0sR0FBRyxHQUFHLElBQUksYUFBYSxDQUFDLElBQUksRUFBRSxNQUFNLEVBQUUsSUFBSSxFQUFFLEdBQUcsR0FBRyxNQUFNLENBQUMsQ0FBQztRQUNoRSxNQUFNLElBQUksR0FBRyxJQUFJLGVBQWUsQ0FBQyxLQUFLLEVBQUUsR0FBRyxDQUFDLENBQUM7UUFDN0MsT0FBTyxJQUFJLGFBQWEsQ0FBQyxJQUFJLEVBQUUsbUJBQW1CLEdBQUcsTUFBTSxDQUFDLENBQUM7SUFDL0QsQ0FBQztJQUVELFlBQVksSUFBcUIsRUFBRSxPQUFlO1FBQ2hELEtBQUssQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLENBQUM7SUFDdkIsQ0FBQztDQUNGIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCAqIGFzIGNoYXJzIGZyb20gJy4uL2NoYXJzJztcbmltcG9ydCB7UGFyc2VFcnJvciwgUGFyc2VMb2NhdGlvbiwgUGFyc2VTb3VyY2VGaWxlLCBQYXJzZVNvdXJjZVNwYW59IGZyb20gJy4uL3BhcnNlX3V0aWwnO1xuXG5pbXBvcnQge0Jsb2NrVHlwZSwgQ3NzQXN0LCBDc3NBdFJ1bGVQcmVkaWNhdGVBc3QsIENzc0Jsb2NrQXN0LCBDc3NCbG9ja0RlZmluaXRpb25SdWxlQXN0LCBDc3NCbG9ja1J1bGVBc3QsIENzc0RlZmluaXRpb25Bc3QsIENzc0lubGluZVJ1bGVBc3QsIENzc0tleWZyYW1lRGVmaW5pdGlvbkFzdCwgQ3NzS2V5ZnJhbWVSdWxlQXN0LCBDc3NNZWRpYVF1ZXJ5UnVsZUFzdCwgQ3NzUHNldWRvU2VsZWN0b3JBc3QsIENzc1J1bGVBc3QsIENzc1NlbGVjdG9yQXN0LCBDc3NTZWxlY3RvclJ1bGVBc3QsIENzc1NpbXBsZVNlbGVjdG9yQXN0LCBDc3NTdHlsZXNCbG9ja0FzdCwgQ3NzU3R5bGVTaGVldEFzdCwgQ3NzU3R5bGVWYWx1ZUFzdCwgQ3NzVW5rbm93blJ1bGVBc3QsIENzc1Vua25vd25Ub2tlbkxpc3RBc3QsIG1lcmdlVG9rZW5zfSBmcm9tICcuL2Nzc19hc3QnO1xuaW1wb3J0IHtDc3NMZXhlciwgQ3NzTGV4ZXJNb2RlLCBDc3NTY2FubmVyLCBDc3NUb2tlbiwgQ3NzVG9rZW5UeXBlLCBnZW5lcmF0ZUVycm9yTWVzc2FnZSwgZ2V0UmF3TWVzc2FnZSwgaXNOZXdsaW5lfSBmcm9tICcuL2Nzc19sZXhlcic7XG5cbmNvbnN0IFNQQUNFX09QRVJBVE9SID0gJyAnO1xuXG5leHBvcnQge0Nzc1Rva2VufSBmcm9tICcuL2Nzc19sZXhlcic7XG5leHBvcnQge0Jsb2NrVHlwZX0gZnJvbSAnLi9jc3NfYXN0JztcblxuY29uc3QgU0xBU0hfQ0hBUkFDVEVSID0gJy8nO1xuY29uc3QgR1RfQ0hBUkFDVEVSID0gJz4nO1xuY29uc3QgVFJJUExFX0dUX09QRVJBVE9SX1NUUiA9ICc+Pj4nO1xuY29uc3QgREVFUF9PUEVSQVRPUl9TVFIgPSAnL2RlZXAvJztcblxuY29uc3QgRU9GX0RFTElNX0ZMQUcgPSAxO1xuY29uc3QgUkJSQUNFX0RFTElNX0ZMQUcgPSAyO1xuY29uc3QgTEJSQUNFX0RFTElNX0ZMQUcgPSA0O1xuY29uc3QgQ09NTUFfREVMSU1fRkxBRyA9IDg7XG5jb25zdCBDT0xPTl9ERUxJTV9GTEFHID0gMTY7XG5jb25zdCBTRU1JQ09MT05fREVMSU1fRkxBRyA9IDMyO1xuY29uc3QgTkVXTElORV9ERUxJTV9GTEFHID0gNjQ7XG5jb25zdCBSUEFSRU5fREVMSU1fRkxBRyA9IDEyODtcbmNvbnN0IExQQVJFTl9ERUxJTV9GTEFHID0gMjU2O1xuY29uc3QgU1BBQ0VfREVMSU1fRkxBRyA9IDUxMjtcblxuZnVuY3Rpb24gX3BzZXVkb1NlbGVjdG9yU3VwcG9ydHNJbm5lclNlbGVjdG9ycyhuYW1lOiBzdHJpbmcpOiBib29sZWFuIHtcbiAgcmV0dXJuIFsnbm90JywgJ2hvc3QnLCAnaG9zdC1jb250ZXh0J10uaW5kZXhPZihuYW1lKSA+PSAwO1xufVxuXG5mdW5jdGlvbiBpc1NlbGVjdG9yT3BlcmF0b3JDaGFyYWN0ZXIoY29kZTogbnVtYmVyKTogYm9vbGVhbiB7XG4gIHN3aXRjaCAoY29kZSkge1xuICAgIGNhc2UgY2hhcnMuJFNMQVNIOlxuICAgIGNhc2UgY2hhcnMuJFRJTERBOlxuICAgIGNhc2UgY2hhcnMuJFBMVVM6XG4gICAgY2FzZSBjaGFycy4kR1Q6XG4gICAgICByZXR1cm4gdHJ1ZTtcbiAgICBkZWZhdWx0OlxuICAgICAgcmV0dXJuIGNoYXJzLmlzV2hpdGVzcGFjZShjb2RlKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBnZXREZWxpbUZyb21DaGFyYWN0ZXIoY29kZTogbnVtYmVyKTogbnVtYmVyIHtcbiAgc3dpdGNoIChjb2RlKSB7XG4gICAgY2FzZSBjaGFycy4kRU9GOlxuICAgICAgcmV0dXJuIEVPRl9ERUxJTV9GTEFHO1xuICAgIGNhc2UgY2hhcnMuJENPTU1BOlxuICAgICAgcmV0dXJuIENPTU1BX0RFTElNX0ZMQUc7XG4gICAgY2FzZSBjaGFycy4kQ09MT046XG4gICAgICByZXR1cm4gQ09MT05fREVMSU1fRkxBRztcbiAgICBjYXNlIGNoYXJzLiRTRU1JQ09MT046XG4gICAgICByZXR1cm4gU0VNSUNPTE9OX0RFTElNX0ZMQUc7XG4gICAgY2FzZSBjaGFycy4kUkJSQUNFOlxuICAgICAgcmV0dXJuIFJCUkFDRV9ERUxJTV9GTEFHO1xuICAgIGNhc2UgY2hhcnMuJExCUkFDRTpcbiAgICAgIHJldHVybiBMQlJBQ0VfREVMSU1fRkxBRztcbiAgICBjYXNlIGNoYXJzLiRSUEFSRU46XG4gICAgICByZXR1cm4gUlBBUkVOX0RFTElNX0ZMQUc7XG4gICAgY2FzZSBjaGFycy4kU1BBQ0U6XG4gICAgY2FzZSBjaGFycy4kVEFCOlxuICAgICAgcmV0dXJuIFNQQUNFX0RFTElNX0ZMQUc7XG4gICAgZGVmYXVsdDpcbiAgICAgIHJldHVybiBpc05ld2xpbmUoY29kZSkgPyBORVdMSU5FX0RFTElNX0ZMQUcgOiAwO1xuICB9XG59XG5cbmZ1bmN0aW9uIGNoYXJhY3RlckNvbnRhaW5zRGVsaW1pdGVyKGNvZGU6IG51bWJlciwgZGVsaW1pdGVyczogbnVtYmVyKTogYm9vbGVhbiB7XG4gIHJldHVybiAoZ2V0RGVsaW1Gcm9tQ2hhcmFjdGVyKGNvZGUpICYgZGVsaW1pdGVycykgPiAwO1xufVxuXG5leHBvcnQgY2xhc3MgUGFyc2VkQ3NzUmVzdWx0IHtcbiAgY29uc3RydWN0b3IocHVibGljIGVycm9yczogQ3NzUGFyc2VFcnJvcltdLCBwdWJsaWMgYXN0OiBDc3NTdHlsZVNoZWV0QXN0KSB7fVxufVxuXG5leHBvcnQgY2xhc3MgQ3NzUGFyc2VyIHtcbiAgcHJpdmF0ZSBfZXJyb3JzOiBDc3NQYXJzZUVycm9yW10gPSBbXTtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIHByaXZhdGUgX2ZpbGUhOiBQYXJzZVNvdXJjZUZpbGU7XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF9zY2FubmVyITogQ3NzU2Nhbm5lcjtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIHByaXZhdGUgX2xhc3RUb2tlbiE6IENzc1Rva2VuO1xuXG4gIC8qKlxuICAgKiBAcGFyYW0gY3NzIHRoZSBDU1MgY29kZSB0aGF0IHdpbGwgYmUgcGFyc2VkXG4gICAqIEBwYXJhbSB1cmwgdGhlIG5hbWUgb2YgdGhlIENTUyBmaWxlIGNvbnRhaW5pbmcgdGhlIENTUyBzb3VyY2UgY29kZVxuICAgKi9cbiAgcGFyc2UoY3NzOiBzdHJpbmcsIHVybDogc3RyaW5nKTogUGFyc2VkQ3NzUmVzdWx0IHtcbiAgICBjb25zdCBsZXhlciA9IG5ldyBDc3NMZXhlcigpO1xuICAgIHRoaXMuX2ZpbGUgPSBuZXcgUGFyc2VTb3VyY2VGaWxlKGNzcywgdXJsKTtcbiAgICB0aGlzLl9zY2FubmVyID0gbGV4ZXIuc2Nhbihjc3MsIGZhbHNlKTtcblxuICAgIGNvbnN0IGFzdCA9IHRoaXMuX3BhcnNlU3R5bGVTaGVldChFT0ZfREVMSU1fRkxBRyk7XG5cbiAgICBjb25zdCBlcnJvcnMgPSB0aGlzLl9lcnJvcnM7XG4gICAgdGhpcy5fZXJyb3JzID0gW107XG5cbiAgICBjb25zdCByZXN1bHQgPSBuZXcgUGFyc2VkQ3NzUmVzdWx0KGVycm9ycywgYXN0KTtcbiAgICB0aGlzLl9maWxlID0gbnVsbCBhcyBhbnk7XG4gICAgdGhpcy5fc2Nhbm5lciA9IG51bGwgYXMgYW55O1xuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9wYXJzZVN0eWxlU2hlZXQoZGVsaW1pdGVyczogbnVtYmVyKTogQ3NzU3R5bGVTaGVldEFzdCB7XG4gICAgY29uc3QgcmVzdWx0czogQ3NzUnVsZUFzdFtdID0gW107XG4gICAgdGhpcy5fc2Nhbm5lci5jb25zdW1lRW1wdHlTdGF0ZW1lbnRzKCk7XG4gICAgd2hpbGUgKHRoaXMuX3NjYW5uZXIucGVlayAhPSBjaGFycy4kRU9GKSB7XG4gICAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLkJMT0NLKTtcbiAgICAgIHJlc3VsdHMucHVzaCh0aGlzLl9wYXJzZVJ1bGUoZGVsaW1pdGVycykpO1xuICAgIH1cbiAgICBsZXQgc3BhbjogUGFyc2VTb3VyY2VTcGFufG51bGwgPSBudWxsO1xuICAgIGlmIChyZXN1bHRzLmxlbmd0aCA+IDApIHtcbiAgICAgIGNvbnN0IGZpcnN0UnVsZSA9IHJlc3VsdHNbMF07XG4gICAgICAvLyB3ZSBjb2xsZWN0IHRoZSBsYXN0IHRva2VuIGxpa2Ugc28gaW5jYXNlIHRoZXJlIHdhcyBhblxuICAgICAgLy8gRU9GIHRva2VuIHRoYXQgd2FzIGVtaXR0ZWQgc29tZXRpbWUgZHVyaW5nIHRoZSBsZXhpbmdcbiAgICAgIHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4oZmlyc3RSdWxlLCB0aGlzLl9sYXN0VG9rZW4pO1xuICAgIH1cbiAgICByZXR1cm4gbmV3IENzc1N0eWxlU2hlZXRBc3Qoc3BhbiEsIHJlc3VsdHMpO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfZ2V0U291cmNlQ29udGVudCgpOiBzdHJpbmcge1xuICAgIHJldHVybiB0aGlzLl9zY2FubmVyICE9IG51bGwgPyB0aGlzLl9zY2FubmVyLmlucHV0IDogJyc7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9leHRyYWN0U291cmNlQ29udGVudChzdGFydDogbnVtYmVyLCBlbmQ6IG51bWJlcik6IHN0cmluZyB7XG4gICAgcmV0dXJuIHRoaXMuX2dldFNvdXJjZUNvbnRlbnQoKS5zdWJzdHJpbmcoc3RhcnQsIGVuZCArIDEpO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfZ2VuZXJhdGVTb3VyY2VTcGFuKHN0YXJ0OiBDc3NUb2tlbnxDc3NBc3QsIGVuZDogQ3NzVG9rZW58Q3NzQXN0fG51bGwgPSBudWxsKTogUGFyc2VTb3VyY2VTcGFuIHtcbiAgICBsZXQgc3RhcnRMb2M6IFBhcnNlTG9jYXRpb247XG4gICAgaWYgKHN0YXJ0IGluc3RhbmNlb2YgQ3NzQXN0KSB7XG4gICAgICBzdGFydExvYyA9IHN0YXJ0LmxvY2F0aW9uLnN0YXJ0O1xuICAgIH0gZWxzZSB7XG4gICAgICBsZXQgdG9rZW4gPSBzdGFydDtcbiAgICAgIGlmICh0b2tlbiA9PSBudWxsKSB7XG4gICAgICAgIC8vIHRoZSBkYXRhIGhlcmUgaXMgaW52YWxpZCwgaG93ZXZlciwgaWYgYW5kIHdoZW4gdGhpcyBkb2VzXG4gICAgICAgIC8vIG9jY3VyLCBhbnkgb3RoZXIgZXJyb3JzIGFzc29jaWF0ZWQgd2l0aCB0aGlzIHdpbGwgYmUgY29sbGVjdGVkXG4gICAgICAgIHRva2VuID0gdGhpcy5fbGFzdFRva2VuO1xuICAgICAgfVxuICAgICAgc3RhcnRMb2MgPSBuZXcgUGFyc2VMb2NhdGlvbih0aGlzLl9maWxlLCB0b2tlbi5pbmRleCwgdG9rZW4ubGluZSwgdG9rZW4uY29sdW1uKTtcbiAgICB9XG5cbiAgICBpZiAoZW5kID09IG51bGwpIHtcbiAgICAgIGVuZCA9IHRoaXMuX2xhc3RUb2tlbjtcbiAgICB9XG5cbiAgICBsZXQgZW5kTGluZTogbnVtYmVyID0gLTE7XG4gICAgbGV0IGVuZENvbHVtbjogbnVtYmVyID0gLTE7XG4gICAgbGV0IGVuZEluZGV4OiBudW1iZXIgPSAtMTtcbiAgICBpZiAoZW5kIGluc3RhbmNlb2YgQ3NzQXN0KSB7XG4gICAgICBlbmRMaW5lID0gZW5kLmxvY2F0aW9uLmVuZC5saW5lITtcbiAgICAgIGVuZENvbHVtbiA9IGVuZC5sb2NhdGlvbi5lbmQuY29sITtcbiAgICAgIGVuZEluZGV4ID0gZW5kLmxvY2F0aW9uLmVuZC5vZmZzZXQhO1xuICAgIH0gZWxzZSBpZiAoZW5kIGluc3RhbmNlb2YgQ3NzVG9rZW4pIHtcbiAgICAgIGVuZExpbmUgPSBlbmQubGluZTtcbiAgICAgIGVuZENvbHVtbiA9IGVuZC5jb2x1bW47XG4gICAgICBlbmRJbmRleCA9IGVuZC5pbmRleDtcbiAgICB9XG5cbiAgICBjb25zdCBlbmRMb2MgPSBuZXcgUGFyc2VMb2NhdGlvbih0aGlzLl9maWxlLCBlbmRJbmRleCwgZW5kTGluZSwgZW5kQ29sdW1uKTtcbiAgICByZXR1cm4gbmV3IFBhcnNlU291cmNlU3BhbihzdGFydExvYywgZW5kTG9jKTtcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX3Jlc29sdmVCbG9ja1R5cGUodG9rZW46IENzc1Rva2VuKTogQmxvY2tUeXBlIHtcbiAgICBzd2l0Y2ggKHRva2VuLnN0clZhbHVlKSB7XG4gICAgICBjYXNlICdALW8ta2V5ZnJhbWVzJzpcbiAgICAgIGNhc2UgJ0AtbW96LWtleWZyYW1lcyc6XG4gICAgICBjYXNlICdALXdlYmtpdC1rZXlmcmFtZXMnOlxuICAgICAgY2FzZSAnQGtleWZyYW1lcyc6XG4gICAgICAgIHJldHVybiBCbG9ja1R5cGUuS2V5ZnJhbWVzO1xuXG4gICAgICBjYXNlICdAY2hhcnNldCc6XG4gICAgICAgIHJldHVybiBCbG9ja1R5cGUuQ2hhcnNldDtcblxuICAgICAgY2FzZSAnQGltcG9ydCc6XG4gICAgICAgIHJldHVybiBCbG9ja1R5cGUuSW1wb3J0O1xuXG4gICAgICBjYXNlICdAbmFtZXNwYWNlJzpcbiAgICAgICAgcmV0dXJuIEJsb2NrVHlwZS5OYW1lc3BhY2U7XG5cbiAgICAgIGNhc2UgJ0BwYWdlJzpcbiAgICAgICAgcmV0dXJuIEJsb2NrVHlwZS5QYWdlO1xuXG4gICAgICBjYXNlICdAZG9jdW1lbnQnOlxuICAgICAgICByZXR1cm4gQmxvY2tUeXBlLkRvY3VtZW50O1xuXG4gICAgICBjYXNlICdAbWVkaWEnOlxuICAgICAgICByZXR1cm4gQmxvY2tUeXBlLk1lZGlhUXVlcnk7XG5cbiAgICAgIGNhc2UgJ0Bmb250LWZhY2UnOlxuICAgICAgICByZXR1cm4gQmxvY2tUeXBlLkZvbnRGYWNlO1xuXG4gICAgICBjYXNlICdAdmlld3BvcnQnOlxuICAgICAgICByZXR1cm4gQmxvY2tUeXBlLlZpZXdwb3J0O1xuXG4gICAgICBjYXNlICdAc3VwcG9ydHMnOlxuICAgICAgICByZXR1cm4gQmxvY2tUeXBlLlN1cHBvcnRzO1xuXG4gICAgICBkZWZhdWx0OlxuICAgICAgICByZXR1cm4gQmxvY2tUeXBlLlVuc3VwcG9ydGVkO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX3BhcnNlUnVsZShkZWxpbWl0ZXJzOiBudW1iZXIpOiBDc3NSdWxlQXN0IHtcbiAgICBpZiAodGhpcy5fc2Nhbm5lci5wZWVrID09IGNoYXJzLiRBVCkge1xuICAgICAgcmV0dXJuIHRoaXMuX3BhcnNlQXRSdWxlKGRlbGltaXRlcnMpO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5fcGFyc2VTZWxlY3RvclJ1bGUoZGVsaW1pdGVycyk7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9wYXJzZUF0UnVsZShkZWxpbWl0ZXJzOiBudW1iZXIpOiBDc3NSdWxlQXN0IHtcbiAgICBjb25zdCBzdGFydCA9IHRoaXMuX2dldFNjYW5uZXJJbmRleCgpO1xuXG4gICAgdGhpcy5fc2Nhbm5lci5zZXRNb2RlKENzc0xleGVyTW9kZS5CTE9DSyk7XG4gICAgY29uc3QgdG9rZW4gPSB0aGlzLl9zY2FuKCk7XG4gICAgY29uc3Qgc3RhcnRUb2tlbiA9IHRva2VuO1xuXG4gICAgdGhpcy5fYXNzZXJ0Q29uZGl0aW9uKFxuICAgICAgICB0b2tlbi50eXBlID09IENzc1Rva2VuVHlwZS5BdEtleXdvcmQsXG4gICAgICAgIGBUaGUgQ1NTIFJ1bGUgJHt0b2tlbi5zdHJWYWx1ZX0gaXMgbm90IGEgdmFsaWQgW0BdIHJ1bGUuYCwgdG9rZW4pO1xuXG4gICAgbGV0IGJsb2NrOiBDc3NCbG9ja0FzdDtcbiAgICBjb25zdCB0eXBlID0gdGhpcy5fcmVzb2x2ZUJsb2NrVHlwZSh0b2tlbik7XG4gICAgbGV0IHNwYW46IFBhcnNlU291cmNlU3BhbjtcbiAgICBsZXQgdG9rZW5zOiBDc3NUb2tlbltdO1xuICAgIGxldCBlbmRUb2tlbjogQ3NzVG9rZW47XG4gICAgbGV0IGVuZDogbnVtYmVyO1xuICAgIGxldCBzdHJWYWx1ZTogc3RyaW5nO1xuICAgIGxldCBxdWVyeTogQ3NzQXRSdWxlUHJlZGljYXRlQXN0O1xuICAgIHN3aXRjaCAodHlwZSkge1xuICAgICAgY2FzZSBCbG9ja1R5cGUuQ2hhcnNldDpcbiAgICAgIGNhc2UgQmxvY2tUeXBlLk5hbWVzcGFjZTpcbiAgICAgIGNhc2UgQmxvY2tUeXBlLkltcG9ydDpcbiAgICAgICAgbGV0IHZhbHVlID0gdGhpcy5fcGFyc2VWYWx1ZShkZWxpbWl0ZXJzKTtcbiAgICAgICAgdGhpcy5fc2Nhbm5lci5zZXRNb2RlKENzc0xleGVyTW9kZS5CTE9DSyk7XG4gICAgICAgIHRoaXMuX3NjYW5uZXIuY29uc3VtZUVtcHR5U3RhdGVtZW50cygpO1xuICAgICAgICBzcGFuID0gdGhpcy5fZ2VuZXJhdGVTb3VyY2VTcGFuKHN0YXJ0VG9rZW4sIHZhbHVlKTtcbiAgICAgICAgcmV0dXJuIG5ldyBDc3NJbmxpbmVSdWxlQXN0KHNwYW4sIHR5cGUsIHZhbHVlKTtcblxuICAgICAgY2FzZSBCbG9ja1R5cGUuVmlld3BvcnQ6XG4gICAgICBjYXNlIEJsb2NrVHlwZS5Gb250RmFjZTpcbiAgICAgICAgYmxvY2sgPSB0aGlzLl9wYXJzZVN0eWxlQmxvY2soZGVsaW1pdGVycykhO1xuICAgICAgICBzcGFuID0gdGhpcy5fZ2VuZXJhdGVTb3VyY2VTcGFuKHN0YXJ0VG9rZW4sIGJsb2NrKTtcbiAgICAgICAgcmV0dXJuIG5ldyBDc3NCbG9ja1J1bGVBc3Qoc3BhbiwgdHlwZSwgYmxvY2spO1xuXG4gICAgICBjYXNlIEJsb2NrVHlwZS5LZXlmcmFtZXM6XG4gICAgICAgIHRva2VucyA9IHRoaXMuX2NvbGxlY3RVbnRpbERlbGltKGRlbGltaXRlcnMgfCBSQlJBQ0VfREVMSU1fRkxBRyB8IExCUkFDRV9ERUxJTV9GTEFHKTtcbiAgICAgICAgLy8ga2V5ZnJhbWVzIG9ubHkgaGF2ZSBvbmUgaWRlbnRpZmllciBuYW1lXG4gICAgICAgIGxldCBuYW1lID0gdG9rZW5zWzBdO1xuICAgICAgICBibG9jayA9IHRoaXMuX3BhcnNlS2V5ZnJhbWVCbG9jayhkZWxpbWl0ZXJzKTtcbiAgICAgICAgc3BhbiA9IHRoaXMuX2dlbmVyYXRlU291cmNlU3BhbihzdGFydFRva2VuLCBibG9jayk7XG4gICAgICAgIHJldHVybiBuZXcgQ3NzS2V5ZnJhbWVSdWxlQXN0KHNwYW4sIG5hbWUsIGJsb2NrKTtcblxuICAgICAgY2FzZSBCbG9ja1R5cGUuTWVkaWFRdWVyeTpcbiAgICAgICAgdGhpcy5fc2Nhbm5lci5zZXRNb2RlKENzc0xleGVyTW9kZS5NRURJQV9RVUVSWSk7XG4gICAgICAgIHRva2VucyA9IHRoaXMuX2NvbGxlY3RVbnRpbERlbGltKGRlbGltaXRlcnMgfCBSQlJBQ0VfREVMSU1fRkxBRyB8IExCUkFDRV9ERUxJTV9GTEFHKTtcbiAgICAgICAgZW5kVG9rZW4gPSB0b2tlbnNbdG9rZW5zLmxlbmd0aCAtIDFdO1xuICAgICAgICAvLyB3ZSBkbyBub3QgdHJhY2sgdGhlIHdoaXRlc3BhY2UgYWZ0ZXIgdGhlIG1lZGlhUXVlcnkgcHJlZGljYXRlIGVuZHNcbiAgICAgICAgLy8gc28gd2UgaGF2ZSB0byBjYWxjdWxhdGUgdGhlIGVuZCBzdHJpbmcgdmFsdWUgb24gb3VyIG93blxuICAgICAgICBlbmQgPSBlbmRUb2tlbi5pbmRleCArIGVuZFRva2VuLnN0clZhbHVlLmxlbmd0aCAtIDE7XG4gICAgICAgIHN0clZhbHVlID0gdGhpcy5fZXh0cmFjdFNvdXJjZUNvbnRlbnQoc3RhcnQsIGVuZCk7XG4gICAgICAgIHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4oc3RhcnRUb2tlbiwgZW5kVG9rZW4pO1xuICAgICAgICBxdWVyeSA9IG5ldyBDc3NBdFJ1bGVQcmVkaWNhdGVBc3Qoc3Bhbiwgc3RyVmFsdWUsIHRva2Vucyk7XG4gICAgICAgIGJsb2NrID0gdGhpcy5fcGFyc2VCbG9jayhkZWxpbWl0ZXJzKTtcbiAgICAgICAgc3RyVmFsdWUgPSB0aGlzLl9leHRyYWN0U291cmNlQ29udGVudChzdGFydCwgdGhpcy5fZ2V0U2Nhbm5lckluZGV4KCkgLSAxKTtcbiAgICAgICAgc3BhbiA9IHRoaXMuX2dlbmVyYXRlU291cmNlU3BhbihzdGFydFRva2VuLCBibG9jayk7XG4gICAgICAgIHJldHVybiBuZXcgQ3NzTWVkaWFRdWVyeVJ1bGVBc3Qoc3Bhbiwgc3RyVmFsdWUsIHF1ZXJ5LCBibG9jayk7XG5cbiAgICAgIGNhc2UgQmxvY2tUeXBlLkRvY3VtZW50OlxuICAgICAgY2FzZSBCbG9ja1R5cGUuU3VwcG9ydHM6XG4gICAgICBjYXNlIEJsb2NrVHlwZS5QYWdlOlxuICAgICAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLkFUX1JVTEVfUVVFUlkpO1xuICAgICAgICB0b2tlbnMgPSB0aGlzLl9jb2xsZWN0VW50aWxEZWxpbShkZWxpbWl0ZXJzIHwgUkJSQUNFX0RFTElNX0ZMQUcgfCBMQlJBQ0VfREVMSU1fRkxBRyk7XG4gICAgICAgIGVuZFRva2VuID0gdG9rZW5zW3Rva2Vucy5sZW5ndGggLSAxXTtcbiAgICAgICAgLy8gd2UgZG8gbm90IHRyYWNrIHRoZSB3aGl0ZXNwYWNlIGFmdGVyIHRoaXMgYmxvY2sgcnVsZSBwcmVkaWNhdGUgZW5kc1xuICAgICAgICAvLyBzbyB3ZSBoYXZlIHRvIGNhbGN1bGF0ZSB0aGUgZW5kIHN0cmluZyB2YWx1ZSBvbiBvdXIgb3duXG4gICAgICAgIGVuZCA9IGVuZFRva2VuLmluZGV4ICsgZW5kVG9rZW4uc3RyVmFsdWUubGVuZ3RoIC0gMTtcbiAgICAgICAgc3RyVmFsdWUgPSB0aGlzLl9leHRyYWN0U291cmNlQ29udGVudChzdGFydCwgZW5kKTtcbiAgICAgICAgc3BhbiA9IHRoaXMuX2dlbmVyYXRlU291cmNlU3BhbihzdGFydFRva2VuLCB0b2tlbnNbdG9rZW5zLmxlbmd0aCAtIDFdKTtcbiAgICAgICAgcXVlcnkgPSBuZXcgQ3NzQXRSdWxlUHJlZGljYXRlQXN0KHNwYW4sIHN0clZhbHVlLCB0b2tlbnMpO1xuICAgICAgICBibG9jayA9IHRoaXMuX3BhcnNlQmxvY2soZGVsaW1pdGVycyk7XG4gICAgICAgIHN0clZhbHVlID0gdGhpcy5fZXh0cmFjdFNvdXJjZUNvbnRlbnQoc3RhcnQsIGJsb2NrLmVuZC5vZmZzZXQhKTtcbiAgICAgICAgc3BhbiA9IHRoaXMuX2dlbmVyYXRlU291cmNlU3BhbihzdGFydFRva2VuLCBibG9jayk7XG4gICAgICAgIHJldHVybiBuZXcgQ3NzQmxvY2tEZWZpbml0aW9uUnVsZUFzdChzcGFuLCBzdHJWYWx1ZSwgdHlwZSwgcXVlcnksIGJsb2NrKTtcblxuICAgICAgLy8gaWYgYSBjdXN0b20gQHJ1bGUgeyAuLi4gfSBpcyB1c2VkIGl0IHNob3VsZCBzdGlsbCB0b2tlbml6ZSB0aGUgaW5zaWRlc1xuICAgICAgZGVmYXVsdDpcbiAgICAgICAgbGV0IGxpc3RPZlRva2VuczogQ3NzVG9rZW5bXSA9IFtdO1xuICAgICAgICBsZXQgdG9rZW5OYW1lID0gdG9rZW4uc3RyVmFsdWU7XG4gICAgICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuQUxMKTtcbiAgICAgICAgdGhpcy5fZXJyb3IoXG4gICAgICAgICAgICBnZW5lcmF0ZUVycm9yTWVzc2FnZShcbiAgICAgICAgICAgICAgICB0aGlzLl9nZXRTb3VyY2VDb250ZW50KCksXG4gICAgICAgICAgICAgICAgYFRoZSBDU1MgXCJhdFwiIHJ1bGUgXCIke3Rva2VuTmFtZX1cIiBpcyBub3QgYWxsb3dlZCB0byB1c2VkIGhlcmVgLCB0b2tlbi5zdHJWYWx1ZSxcbiAgICAgICAgICAgICAgICB0b2tlbi5pbmRleCwgdG9rZW4ubGluZSwgdG9rZW4uY29sdW1uKSxcbiAgICAgICAgICAgIHRva2VuKTtcblxuICAgICAgICB0aGlzLl9jb2xsZWN0VW50aWxEZWxpbShkZWxpbWl0ZXJzIHwgTEJSQUNFX0RFTElNX0ZMQUcgfCBTRU1JQ09MT05fREVMSU1fRkxBRylcbiAgICAgICAgICAgIC5mb3JFYWNoKCh0b2tlbikgPT4ge1xuICAgICAgICAgICAgICBsaXN0T2ZUb2tlbnMucHVzaCh0b2tlbik7XG4gICAgICAgICAgICB9KTtcbiAgICAgICAgaWYgKHRoaXMuX3NjYW5uZXIucGVlayA9PSBjaGFycy4kTEJSQUNFKSB7XG4gICAgICAgICAgbGlzdE9mVG9rZW5zLnB1c2godGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyLCAneycpKTtcbiAgICAgICAgICB0aGlzLl9jb2xsZWN0VW50aWxEZWxpbShkZWxpbWl0ZXJzIHwgUkJSQUNFX0RFTElNX0ZMQUcgfCBMQlJBQ0VfREVMSU1fRkxBRylcbiAgICAgICAgICAgICAgLmZvckVhY2goKHRva2VuKSA9PiB7XG4gICAgICAgICAgICAgICAgbGlzdE9mVG9rZW5zLnB1c2godG9rZW4pO1xuICAgICAgICAgICAgICB9KTtcbiAgICAgICAgICBsaXN0T2ZUb2tlbnMucHVzaCh0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIsICd9JykpO1xuICAgICAgICB9XG4gICAgICAgIGVuZFRva2VuID0gbGlzdE9mVG9rZW5zW2xpc3RPZlRva2Vucy5sZW5ndGggLSAxXTtcbiAgICAgICAgc3BhbiA9IHRoaXMuX2dlbmVyYXRlU291cmNlU3BhbihzdGFydFRva2VuLCBlbmRUb2tlbik7XG4gICAgICAgIHJldHVybiBuZXcgQ3NzVW5rbm93blJ1bGVBc3Qoc3BhbiwgdG9rZW5OYW1lLCBsaXN0T2ZUb2tlbnMpO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX3BhcnNlU2VsZWN0b3JSdWxlKGRlbGltaXRlcnM6IG51bWJlcik6IENzc1J1bGVBc3Qge1xuICAgIGNvbnN0IHN0YXJ0ID0gdGhpcy5fZ2V0U2Nhbm5lckluZGV4KCk7XG4gICAgY29uc3Qgc2VsZWN0b3JzID0gdGhpcy5fcGFyc2VTZWxlY3RvcnMoZGVsaW1pdGVycyk7XG4gICAgY29uc3QgYmxvY2sgPSB0aGlzLl9wYXJzZVN0eWxlQmxvY2soZGVsaW1pdGVycyk7XG4gICAgbGV0IHJ1bGVBc3Q6IENzc1J1bGVBc3Q7XG4gICAgbGV0IHNwYW46IFBhcnNlU291cmNlU3BhbjtcbiAgICBjb25zdCBzdGFydFNlbGVjdG9yID0gc2VsZWN0b3JzWzBdO1xuICAgIGlmIChibG9jayAhPSBudWxsKSB7XG4gICAgICBzcGFuID0gdGhpcy5fZ2VuZXJhdGVTb3VyY2VTcGFuKHN0YXJ0U2VsZWN0b3IsIGJsb2NrKTtcbiAgICAgIHJ1bGVBc3QgPSBuZXcgQ3NzU2VsZWN0b3JSdWxlQXN0KHNwYW4sIHNlbGVjdG9ycywgYmxvY2spO1xuICAgIH0gZWxzZSB7XG4gICAgICBjb25zdCBuYW1lID0gdGhpcy5fZXh0cmFjdFNvdXJjZUNvbnRlbnQoc3RhcnQsIHRoaXMuX2dldFNjYW5uZXJJbmRleCgpIC0gMSk7XG4gICAgICBjb25zdCBpbm5lclRva2VuczogQ3NzVG9rZW5bXSA9IFtdO1xuICAgICAgc2VsZWN0b3JzLmZvckVhY2goKHNlbGVjdG9yOiBDc3NTZWxlY3RvckFzdCkgPT4ge1xuICAgICAgICBzZWxlY3Rvci5zZWxlY3RvclBhcnRzLmZvckVhY2goKHBhcnQ6IENzc1NpbXBsZVNlbGVjdG9yQXN0KSA9PiB7XG4gICAgICAgICAgcGFydC50b2tlbnMuZm9yRWFjaCgodG9rZW46IENzc1Rva2VuKSA9PiB7XG4gICAgICAgICAgICBpbm5lclRva2Vucy5wdXNoKHRva2VuKTtcbiAgICAgICAgICB9KTtcbiAgICAgICAgfSk7XG4gICAgICB9KTtcbiAgICAgIGNvbnN0IGVuZFRva2VuID0gaW5uZXJUb2tlbnNbaW5uZXJUb2tlbnMubGVuZ3RoIC0gMV07XG4gICAgICBzcGFuID0gdGhpcy5fZ2VuZXJhdGVTb3VyY2VTcGFuKHN0YXJ0U2VsZWN0b3IsIGVuZFRva2VuKTtcbiAgICAgIHJ1bGVBc3QgPSBuZXcgQ3NzVW5rbm93blRva2VuTGlzdEFzdChzcGFuLCBuYW1lLCBpbm5lclRva2Vucyk7XG4gICAgfVxuICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuQkxPQ0spO1xuICAgIHRoaXMuX3NjYW5uZXIuY29uc3VtZUVtcHR5U3RhdGVtZW50cygpO1xuICAgIHJldHVybiBydWxlQXN0O1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfcGFyc2VTZWxlY3RvcnMoZGVsaW1pdGVyczogbnVtYmVyKTogQ3NzU2VsZWN0b3JBc3RbXSB7XG4gICAgZGVsaW1pdGVycyB8PSBMQlJBQ0VfREVMSU1fRkxBRyB8IFNFTUlDT0xPTl9ERUxJTV9GTEFHO1xuXG4gICAgY29uc3Qgc2VsZWN0b3JzOiBDc3NTZWxlY3RvckFzdFtdID0gW107XG4gICAgbGV0IGlzUGFyc2luZ1NlbGVjdG9ycyA9IHRydWU7XG4gICAgd2hpbGUgKGlzUGFyc2luZ1NlbGVjdG9ycykge1xuICAgICAgc2VsZWN0b3JzLnB1c2godGhpcy5fcGFyc2VTZWxlY3RvcihkZWxpbWl0ZXJzKSk7XG5cbiAgICAgIGlzUGFyc2luZ1NlbGVjdG9ycyA9ICFjaGFyYWN0ZXJDb250YWluc0RlbGltaXRlcih0aGlzLl9zY2FubmVyLnBlZWssIGRlbGltaXRlcnMpO1xuXG4gICAgICBpZiAoaXNQYXJzaW5nU2VsZWN0b3JzKSB7XG4gICAgICAgIHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLkNoYXJhY3RlciwgJywnKTtcbiAgICAgICAgaXNQYXJzaW5nU2VsZWN0b3JzID0gIWNoYXJhY3RlckNvbnRhaW5zRGVsaW1pdGVyKHRoaXMuX3NjYW5uZXIucGVlaywgZGVsaW1pdGVycyk7XG4gICAgICAgIGlmIChpc1BhcnNpbmdTZWxlY3RvcnMpIHtcbiAgICAgICAgICB0aGlzLl9zY2FubmVyLmNvbnN1bWVXaGl0ZXNwYWNlKCk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gc2VsZWN0b3JzO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfc2NhbigpOiBDc3NUb2tlbiB7XG4gICAgY29uc3Qgb3V0cHV0ID0gdGhpcy5fc2Nhbm5lci5zY2FuKCkhO1xuICAgIGNvbnN0IHRva2VuID0gb3V0cHV0LnRva2VuO1xuICAgIGNvbnN0IGVycm9yID0gb3V0cHV0LmVycm9yO1xuICAgIGlmIChlcnJvciAhPSBudWxsKSB7XG4gICAgICB0aGlzLl9lcnJvcihnZXRSYXdNZXNzYWdlKGVycm9yKSwgdG9rZW4pO1xuICAgIH1cbiAgICB0aGlzLl9sYXN0VG9rZW4gPSB0b2tlbjtcbiAgICByZXR1cm4gdG9rZW47XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9nZXRTY2FubmVySW5kZXgoKTogbnVtYmVyIHtcbiAgICByZXR1cm4gdGhpcy5fc2Nhbm5lci5pbmRleDtcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX2NvbnN1bWUodHlwZTogQ3NzVG9rZW5UeXBlLCB2YWx1ZTogc3RyaW5nfG51bGwgPSBudWxsKTogQ3NzVG9rZW4ge1xuICAgIGNvbnN0IG91dHB1dCA9IHRoaXMuX3NjYW5uZXIuY29uc3VtZSh0eXBlLCB2YWx1ZSk7XG4gICAgY29uc3QgdG9rZW4gPSBvdXRwdXQudG9rZW47XG4gICAgY29uc3QgZXJyb3IgPSBvdXRwdXQuZXJyb3I7XG4gICAgaWYgKGVycm9yICE9IG51bGwpIHtcbiAgICAgIHRoaXMuX2Vycm9yKGdldFJhd01lc3NhZ2UoZXJyb3IpLCB0b2tlbik7XG4gICAgfVxuICAgIHRoaXMuX2xhc3RUb2tlbiA9IHRva2VuO1xuICAgIHJldHVybiB0b2tlbjtcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX3BhcnNlS2V5ZnJhbWVCbG9jayhkZWxpbWl0ZXJzOiBudW1iZXIpOiBDc3NCbG9ja0FzdCB7XG4gICAgZGVsaW1pdGVycyB8PSBSQlJBQ0VfREVMSU1fRkxBRztcbiAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLktFWUZSQU1FX0JMT0NLKTtcblxuICAgIGNvbnN0IHN0YXJ0VG9rZW4gPSB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIsICd7Jyk7XG5cbiAgICBjb25zdCBkZWZpbml0aW9uczogQ3NzS2V5ZnJhbWVEZWZpbml0aW9uQXN0W10gPSBbXTtcbiAgICB3aGlsZSAoIWNoYXJhY3RlckNvbnRhaW5zRGVsaW1pdGVyKHRoaXMuX3NjYW5uZXIucGVlaywgZGVsaW1pdGVycykpIHtcbiAgICAgIGRlZmluaXRpb25zLnB1c2godGhpcy5fcGFyc2VLZXlmcmFtZURlZmluaXRpb24oZGVsaW1pdGVycykpO1xuICAgIH1cblxuICAgIGNvbnN0IGVuZFRva2VuID0gdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyLCAnfScpO1xuXG4gICAgY29uc3Qgc3BhbiA9IHRoaXMuX2dlbmVyYXRlU291cmNlU3BhbihzdGFydFRva2VuLCBlbmRUb2tlbik7XG4gICAgcmV0dXJuIG5ldyBDc3NCbG9ja0FzdChzcGFuLCBkZWZpbml0aW9ucyk7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9wYXJzZUtleWZyYW1lRGVmaW5pdGlvbihkZWxpbWl0ZXJzOiBudW1iZXIpOiBDc3NLZXlmcmFtZURlZmluaXRpb25Bc3Qge1xuICAgIGNvbnN0IHN0YXJ0ID0gdGhpcy5fZ2V0U2Nhbm5lckluZGV4KCk7XG4gICAgY29uc3Qgc3RlcFRva2VuczogQ3NzVG9rZW5bXSA9IFtdO1xuICAgIGRlbGltaXRlcnMgfD0gTEJSQUNFX0RFTElNX0ZMQUc7XG4gICAgd2hpbGUgKCFjaGFyYWN0ZXJDb250YWluc0RlbGltaXRlcih0aGlzLl9zY2FubmVyLnBlZWssIGRlbGltaXRlcnMpKSB7XG4gICAgICBzdGVwVG9rZW5zLnB1c2godGhpcy5fcGFyc2VLZXlmcmFtZUxhYmVsKGRlbGltaXRlcnMgfCBDT01NQV9ERUxJTV9GTEFHKSk7XG4gICAgICBpZiAodGhpcy5fc2Nhbm5lci5wZWVrICE9IGNoYXJzLiRMQlJBQ0UpIHtcbiAgICAgICAgdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyLCAnLCcpO1xuICAgICAgfVxuICAgIH1cbiAgICBjb25zdCBzdHlsZXNCbG9jayA9IHRoaXMuX3BhcnNlU3R5bGVCbG9jayhkZWxpbWl0ZXJzIHwgUkJSQUNFX0RFTElNX0ZMQUcpO1xuICAgIGNvbnN0IHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4oc3RlcFRva2Vuc1swXSwgc3R5bGVzQmxvY2spO1xuICAgIGNvbnN0IGFzdCA9IG5ldyBDc3NLZXlmcmFtZURlZmluaXRpb25Bc3Qoc3Bhbiwgc3RlcFRva2Vucywgc3R5bGVzQmxvY2shKTtcblxuICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuQkxPQ0spO1xuICAgIHJldHVybiBhc3Q7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9wYXJzZUtleWZyYW1lTGFiZWwoZGVsaW1pdGVyczogbnVtYmVyKTogQ3NzVG9rZW4ge1xuICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuS0VZRlJBTUVfQkxPQ0spO1xuICAgIHJldHVybiBtZXJnZVRva2Vucyh0aGlzLl9jb2xsZWN0VW50aWxEZWxpbShkZWxpbWl0ZXJzKSk7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9wYXJzZVBzZXVkb1NlbGVjdG9yKGRlbGltaXRlcnM6IG51bWJlcik6IENzc1BzZXVkb1NlbGVjdG9yQXN0IHtcbiAgICBjb25zdCBzdGFydCA9IHRoaXMuX2dldFNjYW5uZXJJbmRleCgpO1xuXG4gICAgZGVsaW1pdGVycyAmPSB+Q09NTUFfREVMSU1fRkxBRztcblxuICAgIC8vIHdlIGtlZXAgdGhlIG9yaWdpbmFsIHZhbHVlIHNpbmNlIHdlIG1heSB1c2UgaXQgdG8gcmVjdXJzZSB3aGVuIDpub3QsIDpob3N0IGFyZSB1c2VkXG4gICAgY29uc3Qgc3RhcnRpbmdEZWxpbXMgPSBkZWxpbWl0ZXJzO1xuXG4gICAgY29uc3Qgc3RhcnRUb2tlbiA9IHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLkNoYXJhY3RlciwgJzonKTtcbiAgICBjb25zdCB0b2tlbnMgPSBbc3RhcnRUb2tlbl07XG5cbiAgICBpZiAodGhpcy5fc2Nhbm5lci5wZWVrID09IGNoYXJzLiRDT0xPTikgeyAgLy8gOjpzb21ldGhpbmdcbiAgICAgIHRva2Vucy5wdXNoKHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLkNoYXJhY3RlciwgJzonKSk7XG4gICAgfVxuXG4gICAgY29uc3QgaW5uZXJTZWxlY3RvcnM6IENzc1NlbGVjdG9yQXN0W10gPSBbXTtcblxuICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuUFNFVURPX1NFTEVDVE9SKTtcblxuICAgIC8vIGhvc3QsIGhvc3QtY29udGV4dCwgbGFuZywgbm90LCBudGgtY2hpbGQgYXJlIGFsbCBpZGVudGlmaWVyc1xuICAgIGNvbnN0IHBzZXVkb1NlbGVjdG9yVG9rZW4gPSB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5JZGVudGlmaWVyKTtcbiAgICBjb25zdCBwc2V1ZG9TZWxlY3Rvck5hbWUgPSBwc2V1ZG9TZWxlY3RvclRva2VuLnN0clZhbHVlO1xuICAgIHRva2Vucy5wdXNoKHBzZXVkb1NlbGVjdG9yVG9rZW4pO1xuXG4gICAgLy8gaG9zdCgpLCBsYW5nKCksIG50aC1jaGlsZCgpLCBldGMuLi5cbiAgICBpZiAodGhpcy5fc2Nhbm5lci5wZWVrID09IGNoYXJzLiRMUEFSRU4pIHtcbiAgICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuUFNFVURPX1NFTEVDVE9SX1dJVEhfQVJHVU1FTlRTKTtcblxuICAgICAgY29uc3Qgb3BlblBhcmVuVG9rZW4gPSB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIsICcoJyk7XG4gICAgICB0b2tlbnMucHVzaChvcGVuUGFyZW5Ub2tlbik7XG5cbiAgICAgIC8vIDpob3N0KGlubmVyU2VsZWN0b3IocykpLCA6bm90KHNlbGVjdG9yKSwgZXRjLi4uXG4gICAgICBpZiAoX3BzZXVkb1NlbGVjdG9yU3VwcG9ydHNJbm5lclNlbGVjdG9ycyhwc2V1ZG9TZWxlY3Rvck5hbWUpKSB7XG4gICAgICAgIGxldCBpbm5lckRlbGltcyA9IHN0YXJ0aW5nRGVsaW1zIHwgTFBBUkVOX0RFTElNX0ZMQUcgfCBSUEFSRU5fREVMSU1fRkxBRztcbiAgICAgICAgaWYgKHBzZXVkb1NlbGVjdG9yTmFtZSA9PSAnbm90Jykge1xuICAgICAgICAgIC8vIHRoZSBpbm5lciBzZWxlY3RvciBpbnNpZGUgb2YgOm5vdCguLi4pIGNhbiBvbmx5IGJlIG9uZVxuICAgICAgICAgIC8vIENTUyBzZWxlY3RvciAobm8gY29tbWFzIGFsbG93ZWQpIC4uLiBUaGlzIGlzIGFjY29yZGluZ1xuICAgICAgICAgIC8vIHRvIHRoZSBDU1Mgc3BlY2lmaWNhdGlvblxuICAgICAgICAgIGlubmVyRGVsaW1zIHw9IENPTU1BX0RFTElNX0ZMQUc7XG4gICAgICAgIH1cblxuICAgICAgICAvLyA6aG9zdChhLCBiLCBjKSB7XG4gICAgICAgIHRoaXMuX3BhcnNlU2VsZWN0b3JzKGlubmVyRGVsaW1zKS5mb3JFYWNoKChzZWxlY3RvciwgaW5kZXgpID0+IHtcbiAgICAgICAgICBpbm5lclNlbGVjdG9ycy5wdXNoKHNlbGVjdG9yKTtcbiAgICAgICAgfSk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICAvLyB0aGlzIGJyYW5jaCBpcyBmb3IgdGhpbmdzIGxpa2UgXCJlbi11cywgMmsgKyAxLCBldGMuLi5cIlxuICAgICAgICAvLyB3aGljaCBhbGwgZW5kIHVwIGluIHBzZXVkb1NlbGVjdG9ycyBsaWtlIDpsYW5nLCA6bnRoLWNoaWxkLCBldGMuLlxuICAgICAgICBjb25zdCBpbm5lclZhbHVlRGVsaW1zID0gZGVsaW1pdGVycyB8IExCUkFDRV9ERUxJTV9GTEFHIHwgQ09MT05fREVMSU1fRkxBRyB8XG4gICAgICAgICAgICBSUEFSRU5fREVMSU1fRkxBRyB8IExQQVJFTl9ERUxJTV9GTEFHO1xuICAgICAgICB3aGlsZSAoIWNoYXJhY3RlckNvbnRhaW5zRGVsaW1pdGVyKHRoaXMuX3NjYW5uZXIucGVlaywgaW5uZXJWYWx1ZURlbGltcykpIHtcbiAgICAgICAgICBjb25zdCB0b2tlbiA9IHRoaXMuX3NjYW4oKTtcbiAgICAgICAgICB0b2tlbnMucHVzaCh0b2tlbik7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgY29uc3QgY2xvc2VQYXJlblRva2VuID0gdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyLCAnKScpO1xuICAgICAgdG9rZW5zLnB1c2goY2xvc2VQYXJlblRva2VuKTtcbiAgICB9XG5cbiAgICBjb25zdCBlbmQgPSB0aGlzLl9nZXRTY2FubmVySW5kZXgoKSAtIDE7XG4gICAgY29uc3Qgc3RyVmFsdWUgPSB0aGlzLl9leHRyYWN0U291cmNlQ29udGVudChzdGFydCwgZW5kKTtcblxuICAgIGNvbnN0IGVuZFRva2VuID0gdG9rZW5zW3Rva2Vucy5sZW5ndGggLSAxXTtcbiAgICBjb25zdCBzcGFuID0gdGhpcy5fZ2VuZXJhdGVTb3VyY2VTcGFuKHN0YXJ0VG9rZW4sIGVuZFRva2VuKTtcbiAgICByZXR1cm4gbmV3IENzc1BzZXVkb1NlbGVjdG9yQXN0KHNwYW4sIHN0clZhbHVlLCBwc2V1ZG9TZWxlY3Rvck5hbWUsIHRva2VucywgaW5uZXJTZWxlY3RvcnMpO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfcGFyc2VTaW1wbGVTZWxlY3RvcihkZWxpbWl0ZXJzOiBudW1iZXIpOiBDc3NTaW1wbGVTZWxlY3RvckFzdCB7XG4gICAgY29uc3Qgc3RhcnQgPSB0aGlzLl9nZXRTY2FubmVySW5kZXgoKTtcblxuICAgIGRlbGltaXRlcnMgfD0gQ09NTUFfREVMSU1fRkxBRztcblxuICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuU0VMRUNUT1IpO1xuICAgIGNvbnN0IHNlbGVjdG9yQ3NzVG9rZW5zOiBDc3NUb2tlbltdID0gW107XG4gICAgY29uc3QgcHNldWRvU2VsZWN0b3JzOiBDc3NQc2V1ZG9TZWxlY3RvckFzdFtdID0gW107XG5cbiAgICBsZXQgcHJldmlvdXNUb2tlbjogQ3NzVG9rZW4gPSB1bmRlZmluZWQhO1xuXG4gICAgY29uc3Qgc2VsZWN0b3JQYXJ0RGVsaW1pdGVycyA9IGRlbGltaXRlcnMgfCBTUEFDRV9ERUxJTV9GTEFHO1xuICAgIGxldCBsb29wT3ZlclNlbGVjdG9yID0gIWNoYXJhY3RlckNvbnRhaW5zRGVsaW1pdGVyKHRoaXMuX3NjYW5uZXIucGVlaywgc2VsZWN0b3JQYXJ0RGVsaW1pdGVycyk7XG5cbiAgICBsZXQgaGFzQXR0cmlidXRlRXJyb3IgPSBmYWxzZTtcbiAgICB3aGlsZSAobG9vcE92ZXJTZWxlY3Rvcikge1xuICAgICAgY29uc3QgcGVlayA9IHRoaXMuX3NjYW5uZXIucGVlaztcblxuICAgICAgc3dpdGNoIChwZWVrKSB7XG4gICAgICAgIGNhc2UgY2hhcnMuJENPTE9OOlxuICAgICAgICAgIGxldCBpbm5lclBzZXVkbyA9IHRoaXMuX3BhcnNlUHNldWRvU2VsZWN0b3IoZGVsaW1pdGVycyk7XG4gICAgICAgICAgcHNldWRvU2VsZWN0b3JzLnB1c2goaW5uZXJQc2V1ZG8pO1xuICAgICAgICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuU0VMRUNUT1IpO1xuICAgICAgICAgIGJyZWFrO1xuXG4gICAgICAgIGNhc2UgY2hhcnMuJExCUkFDS0VUOlxuICAgICAgICAgIC8vIHdlIHNldCB0aGUgbW9kZSBhZnRlciB0aGUgc2NhbiBiZWNhdXNlIGF0dHJpYnV0ZSBtb2RlIGRvZXMgbm90XG4gICAgICAgICAgLy8gYWxsb3cgYXR0cmlidXRlIFtdIHZhbHVlcy4gQW5kIHRoaXMgYWxzbyB3aWxsIGNhdGNoIGFueSBlcnJvcnNcbiAgICAgICAgICAvLyBpZiBhbiBleHRyYSBcIltcIiBpcyB1c2VkIGluc2lkZS5cbiAgICAgICAgICBzZWxlY3RvckNzc1Rva2Vucy5wdXNoKHRoaXMuX3NjYW4oKSk7XG4gICAgICAgICAgdGhpcy5fc2Nhbm5lci5zZXRNb2RlKENzc0xleGVyTW9kZS5BVFRSSUJVVEVfU0VMRUNUT1IpO1xuICAgICAgICAgIGJyZWFrO1xuXG4gICAgICAgIGNhc2UgY2hhcnMuJFJCUkFDS0VUOlxuICAgICAgICAgIGlmICh0aGlzLl9zY2FubmVyLmdldE1vZGUoKSAhPSBDc3NMZXhlck1vZGUuQVRUUklCVVRFX1NFTEVDVE9SKSB7XG4gICAgICAgICAgICBoYXNBdHRyaWJ1dGVFcnJvciA9IHRydWU7XG4gICAgICAgICAgfVxuICAgICAgICAgIC8vIHdlIHNldCB0aGUgbW9kZSBlYXJseSBiZWNhdXNlIGF0dHJpYnV0ZSBtb2RlIGRvZXMgbm90XG4gICAgICAgICAgLy8gYWxsb3cgYXR0cmlidXRlIFtdIHZhbHVlc1xuICAgICAgICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuU0VMRUNUT1IpO1xuICAgICAgICAgIHNlbGVjdG9yQ3NzVG9rZW5zLnB1c2godGhpcy5fc2NhbigpKTtcbiAgICAgICAgICBicmVhaztcblxuICAgICAgICBkZWZhdWx0OlxuICAgICAgICAgIGlmIChpc1NlbGVjdG9yT3BlcmF0b3JDaGFyYWN0ZXIocGVlaykpIHtcbiAgICAgICAgICAgIGxvb3BPdmVyU2VsZWN0b3IgPSBmYWxzZTtcbiAgICAgICAgICAgIGNvbnRpbnVlO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGxldCB0b2tlbiA9IHRoaXMuX3NjYW4oKTtcbiAgICAgICAgICBwcmV2aW91c1Rva2VuID0gdG9rZW47XG4gICAgICAgICAgc2VsZWN0b3JDc3NUb2tlbnMucHVzaCh0b2tlbik7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICB9XG5cbiAgICAgIGxvb3BPdmVyU2VsZWN0b3IgPSAhY2hhcmFjdGVyQ29udGFpbnNEZWxpbWl0ZXIodGhpcy5fc2Nhbm5lci5wZWVrLCBzZWxlY3RvclBhcnREZWxpbWl0ZXJzKTtcbiAgICB9XG5cbiAgICBoYXNBdHRyaWJ1dGVFcnJvciA9XG4gICAgICAgIGhhc0F0dHJpYnV0ZUVycm9yIHx8IHRoaXMuX3NjYW5uZXIuZ2V0TW9kZSgpID09IENzc0xleGVyTW9kZS5BVFRSSUJVVEVfU0VMRUNUT1I7XG4gICAgaWYgKGhhc0F0dHJpYnV0ZUVycm9yKSB7XG4gICAgICB0aGlzLl9lcnJvcihcbiAgICAgICAgICBgVW5iYWxhbmNlZCBDU1MgYXR0cmlidXRlIHNlbGVjdG9yIGF0IGNvbHVtbiAke3ByZXZpb3VzVG9rZW4ubGluZX06JHtcbiAgICAgICAgICAgICAgcHJldmlvdXNUb2tlbi5jb2x1bW59YCxcbiAgICAgICAgICBwcmV2aW91c1Rva2VuKTtcbiAgICB9XG5cbiAgICBsZXQgZW5kID0gdGhpcy5fZ2V0U2Nhbm5lckluZGV4KCkgLSAxO1xuXG4gICAgLy8gdGhpcyBoYXBwZW5zIGlmIHRoZSBzZWxlY3RvciBpcyBub3QgZGlyZWN0bHkgZm9sbG93ZWQgYnlcbiAgICAvLyBhIGNvbW1hIG9yIGN1cmx5IGJyYWNlIHdpdGhvdXQgYSBzcGFjZSBpbiBiZXR3ZWVuXG4gICAgbGV0IG9wZXJhdG9yOiBDc3NUb2tlbnxudWxsID0gbnVsbDtcbiAgICBsZXQgb3BlcmF0b3JTY2FuQ291bnQgPSAwO1xuICAgIGxldCBsYXN0T3BlcmF0b3JUb2tlbjogQ3NzVG9rZW58bnVsbCA9IG51bGw7XG4gICAgaWYgKCFjaGFyYWN0ZXJDb250YWluc0RlbGltaXRlcih0aGlzLl9zY2FubmVyLnBlZWssIGRlbGltaXRlcnMpKSB7XG4gICAgICB3aGlsZSAob3BlcmF0b3IgPT0gbnVsbCAmJiAhY2hhcmFjdGVyQ29udGFpbnNEZWxpbWl0ZXIodGhpcy5fc2Nhbm5lci5wZWVrLCBkZWxpbWl0ZXJzKSAmJlxuICAgICAgICAgICAgIGlzU2VsZWN0b3JPcGVyYXRvckNoYXJhY3Rlcih0aGlzLl9zY2FubmVyLnBlZWspKSB7XG4gICAgICAgIGxldCB0b2tlbiA9IHRoaXMuX3NjYW4oKTtcbiAgICAgICAgY29uc3QgdG9rZW5PcGVyYXRvciA9IHRva2VuLnN0clZhbHVlO1xuICAgICAgICBvcGVyYXRvclNjYW5Db3VudCsrO1xuICAgICAgICBsYXN0T3BlcmF0b3JUb2tlbiA9IHRva2VuO1xuICAgICAgICBpZiAodG9rZW5PcGVyYXRvciAhPSBTUEFDRV9PUEVSQVRPUikge1xuICAgICAgICAgIHN3aXRjaCAodG9rZW5PcGVyYXRvcikge1xuICAgICAgICAgICAgY2FzZSBTTEFTSF9DSEFSQUNURVI6XG4gICAgICAgICAgICAgIC8vIC9kZWVwLyBvcGVyYXRvclxuICAgICAgICAgICAgICBsZXQgZGVlcFRva2VuID0gdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuSWRlbnRpZmllcik7XG4gICAgICAgICAgICAgIGxldCBkZWVwU2xhc2ggPSB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIpO1xuICAgICAgICAgICAgICBsZXQgaW5kZXggPSBsYXN0T3BlcmF0b3JUb2tlbi5pbmRleDtcbiAgICAgICAgICAgICAgbGV0IGxpbmUgPSBsYXN0T3BlcmF0b3JUb2tlbi5saW5lO1xuICAgICAgICAgICAgICBsZXQgY29sdW1uID0gbGFzdE9wZXJhdG9yVG9rZW4uY29sdW1uO1xuICAgICAgICAgICAgICBpZiAoZGVlcFRva2VuICE9IG51bGwgJiYgZGVlcFRva2VuLnN0clZhbHVlLnRvTG93ZXJDYXNlKCkgPT0gJ2RlZXAnICYmXG4gICAgICAgICAgICAgICAgICBkZWVwU2xhc2guc3RyVmFsdWUgPT0gU0xBU0hfQ0hBUkFDVEVSKSB7XG4gICAgICAgICAgICAgICAgdG9rZW4gPSBuZXcgQ3NzVG9rZW4oXG4gICAgICAgICAgICAgICAgICAgIGxhc3RPcGVyYXRvclRva2VuLmluZGV4LCBsYXN0T3BlcmF0b3JUb2tlbi5jb2x1bW4sIGxhc3RPcGVyYXRvclRva2VuLmxpbmUsXG4gICAgICAgICAgICAgICAgICAgIENzc1Rva2VuVHlwZS5JZGVudGlmaWVyLCBERUVQX09QRVJBVE9SX1NUUik7XG4gICAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICAgY29uc3QgdGV4dCA9IFNMQVNIX0NIQVJBQ1RFUiArIGRlZXBUb2tlbi5zdHJWYWx1ZSArIGRlZXBTbGFzaC5zdHJWYWx1ZTtcbiAgICAgICAgICAgICAgICB0aGlzLl9lcnJvcihcbiAgICAgICAgICAgICAgICAgICAgZ2VuZXJhdGVFcnJvck1lc3NhZ2UoXG4gICAgICAgICAgICAgICAgICAgICAgICB0aGlzLl9nZXRTb3VyY2VDb250ZW50KCksIGAke3RleHR9IGlzIGFuIGludmFsaWQgQ1NTIG9wZXJhdG9yYCwgdGV4dCwgaW5kZXgsXG4gICAgICAgICAgICAgICAgICAgICAgICBsaW5lLCBjb2x1bW4pLFxuICAgICAgICAgICAgICAgICAgICBsYXN0T3BlcmF0b3JUb2tlbik7XG4gICAgICAgICAgICAgICAgdG9rZW4gPSBuZXcgQ3NzVG9rZW4oaW5kZXgsIGNvbHVtbiwgbGluZSwgQ3NzVG9rZW5UeXBlLkludmFsaWQsIHRleHQpO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgIGJyZWFrO1xuXG4gICAgICAgICAgICBjYXNlIEdUX0NIQVJBQ1RFUjpcbiAgICAgICAgICAgICAgLy8gPj4+IG9wZXJhdG9yXG4gICAgICAgICAgICAgIGlmICh0aGlzLl9zY2FubmVyLnBlZWsgPT0gY2hhcnMuJEdUICYmIHRoaXMuX3NjYW5uZXIucGVla1BlZWsgPT0gY2hhcnMuJEdUKSB7XG4gICAgICAgICAgICAgICAgdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyLCBHVF9DSEFSQUNURVIpO1xuICAgICAgICAgICAgICAgIHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLkNoYXJhY3RlciwgR1RfQ0hBUkFDVEVSKTtcbiAgICAgICAgICAgICAgICB0b2tlbiA9IG5ldyBDc3NUb2tlbihcbiAgICAgICAgICAgICAgICAgICAgbGFzdE9wZXJhdG9yVG9rZW4uaW5kZXgsIGxhc3RPcGVyYXRvclRva2VuLmNvbHVtbiwgbGFzdE9wZXJhdG9yVG9rZW4ubGluZSxcbiAgICAgICAgICAgICAgICAgICAgQ3NzVG9rZW5UeXBlLklkZW50aWZpZXIsIFRSSVBMRV9HVF9PUEVSQVRPUl9TVFIpO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIG9wZXJhdG9yID0gdG9rZW47XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgLy8gc28gbG9uZyBhcyB0aGVyZSBpcyBhbiBvcGVyYXRvciB0aGVuIHdlIGNhbiBoYXZlIGFuXG4gICAgICAvLyBlbmRpbmcgdmFsdWUgdGhhdCBpcyBiZXlvbmQgdGhlIHNlbGVjdG9yIHZhbHVlIC4uLlxuICAgICAgLy8gb3RoZXJ3aXNlIGl0J3MganVzdCBhIGJ1bmNoIG9mIHRyYWlsaW5nIHdoaXRlc3BhY2VcbiAgICAgIGlmIChvcGVyYXRvciAhPSBudWxsKSB7XG4gICAgICAgIGVuZCA9IG9wZXJhdG9yLmluZGV4O1xuICAgICAgfVxuICAgIH1cblxuICAgIHRoaXMuX3NjYW5uZXIuY29uc3VtZVdoaXRlc3BhY2UoKTtcblxuICAgIGNvbnN0IHN0clZhbHVlID0gdGhpcy5fZXh0cmFjdFNvdXJjZUNvbnRlbnQoc3RhcnQsIGVuZCk7XG5cbiAgICAvLyBpZiB3ZSBkbyBjb21lIGFjcm9zcyBvbmUgb3IgbW9yZSBzcGFjZXMgaW5zaWRlIG9mXG4gICAgLy8gdGhlIG9wZXJhdG9ycyBsb29wIHRoZW4gYW4gZW1wdHkgc3BhY2UgaXMgc3RpbGwgYVxuICAgIC8vIHZhbGlkIG9wZXJhdG9yIHRvIHVzZSBpZiBzb21ldGhpbmcgZWxzZSB3YXMgbm90IGZvdW5kXG4gICAgaWYgKG9wZXJhdG9yID09IG51bGwgJiYgb3BlcmF0b3JTY2FuQ291bnQgPiAwICYmIHRoaXMuX3NjYW5uZXIucGVlayAhPSBjaGFycy4kTEJSQUNFKSB7XG4gICAgICBvcGVyYXRvciA9IGxhc3RPcGVyYXRvclRva2VuO1xuICAgIH1cblxuICAgIC8vIHBsZWFzZSBub3RlIHRoYXQgYGVuZFRva2VuYCBpcyByZWFzc2lnbmVkIG11bHRpcGxlIHRpbWVzIGJlbG93XG4gICAgLy8gc28gcGxlYXNlIGRvIG5vdCBvcHRpbWl6ZSB0aGUgaWYgc3RhdGVtZW50cyBpbnRvIGlmL2Vsc2VpZlxuICAgIGxldCBzdGFydFRva2VuT3JBc3Q6IENzc1Rva2VufENzc0FzdHxudWxsID0gbnVsbDtcbiAgICBsZXQgZW5kVG9rZW5PckFzdDogQ3NzVG9rZW58Q3NzQXN0fG51bGwgPSBudWxsO1xuICAgIGlmIChzZWxlY3RvckNzc1Rva2Vucy5sZW5ndGggPiAwKSB7XG4gICAgICBzdGFydFRva2VuT3JBc3QgPSBzdGFydFRva2VuT3JBc3QgfHwgc2VsZWN0b3JDc3NUb2tlbnNbMF07XG4gICAgICBlbmRUb2tlbk9yQXN0ID0gc2VsZWN0b3JDc3NUb2tlbnNbc2VsZWN0b3JDc3NUb2tlbnMubGVuZ3RoIC0gMV07XG4gICAgfVxuICAgIGlmIChwc2V1ZG9TZWxlY3RvcnMubGVuZ3RoID4gMCkge1xuICAgICAgc3RhcnRUb2tlbk9yQXN0ID0gc3RhcnRUb2tlbk9yQXN0IHx8IHBzZXVkb1NlbGVjdG9yc1swXTtcbiAgICAgIGVuZFRva2VuT3JBc3QgPSBwc2V1ZG9TZWxlY3RvcnNbcHNldWRvU2VsZWN0b3JzLmxlbmd0aCAtIDFdO1xuICAgIH1cbiAgICBpZiAob3BlcmF0b3IgIT0gbnVsbCkge1xuICAgICAgc3RhcnRUb2tlbk9yQXN0ID0gc3RhcnRUb2tlbk9yQXN0IHx8IG9wZXJhdG9yO1xuICAgICAgZW5kVG9rZW5PckFzdCA9IG9wZXJhdG9yO1xuICAgIH1cblxuICAgIGNvbnN0IHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4oc3RhcnRUb2tlbk9yQXN0ISwgZW5kVG9rZW5PckFzdCk7XG4gICAgcmV0dXJuIG5ldyBDc3NTaW1wbGVTZWxlY3RvckFzdChzcGFuLCBzZWxlY3RvckNzc1Rva2Vucywgc3RyVmFsdWUsIHBzZXVkb1NlbGVjdG9ycywgb3BlcmF0b3IhKTtcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX3BhcnNlU2VsZWN0b3IoZGVsaW1pdGVyczogbnVtYmVyKTogQ3NzU2VsZWN0b3JBc3Qge1xuICAgIGRlbGltaXRlcnMgfD0gQ09NTUFfREVMSU1fRkxBRztcbiAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLlNFTEVDVE9SKTtcblxuICAgIGNvbnN0IHNpbXBsZVNlbGVjdG9yczogQ3NzU2ltcGxlU2VsZWN0b3JBc3RbXSA9IFtdO1xuICAgIHdoaWxlICghY2hhcmFjdGVyQ29udGFpbnNEZWxpbWl0ZXIodGhpcy5fc2Nhbm5lci5wZWVrLCBkZWxpbWl0ZXJzKSkge1xuICAgICAgc2ltcGxlU2VsZWN0b3JzLnB1c2godGhpcy5fcGFyc2VTaW1wbGVTZWxlY3RvcihkZWxpbWl0ZXJzKSk7XG4gICAgICB0aGlzLl9zY2FubmVyLmNvbnN1bWVXaGl0ZXNwYWNlKCk7XG4gICAgfVxuXG4gICAgY29uc3QgZmlyc3RTZWxlY3RvciA9IHNpbXBsZVNlbGVjdG9yc1swXTtcbiAgICBjb25zdCBsYXN0U2VsZWN0b3IgPSBzaW1wbGVTZWxlY3RvcnNbc2ltcGxlU2VsZWN0b3JzLmxlbmd0aCAtIDFdO1xuICAgIGNvbnN0IHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4oZmlyc3RTZWxlY3RvciwgbGFzdFNlbGVjdG9yKTtcbiAgICByZXR1cm4gbmV3IENzc1NlbGVjdG9yQXN0KHNwYW4sIHNpbXBsZVNlbGVjdG9ycyk7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9wYXJzZVZhbHVlKGRlbGltaXRlcnM6IG51bWJlcik6IENzc1N0eWxlVmFsdWVBc3Qge1xuICAgIGRlbGltaXRlcnMgfD0gUkJSQUNFX0RFTElNX0ZMQUcgfCBTRU1JQ09MT05fREVMSU1fRkxBRyB8IE5FV0xJTkVfREVMSU1fRkxBRztcblxuICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuU1RZTEVfVkFMVUUpO1xuICAgIGNvbnN0IHN0YXJ0ID0gdGhpcy5fZ2V0U2Nhbm5lckluZGV4KCk7XG5cbiAgICBjb25zdCB0b2tlbnM6IENzc1Rva2VuW10gPSBbXTtcbiAgICBsZXQgd3NTdHIgPSAnJztcbiAgICBsZXQgcHJldmlvdXM6IENzc1Rva2VuID0gdW5kZWZpbmVkITtcbiAgICB3aGlsZSAoIWNoYXJhY3RlckNvbnRhaW5zRGVsaW1pdGVyKHRoaXMuX3NjYW5uZXIucGVlaywgZGVsaW1pdGVycykpIHtcbiAgICAgIGxldCB0b2tlbjogQ3NzVG9rZW47XG4gICAgICBpZiAocHJldmlvdXMgIT0gbnVsbCAmJiBwcmV2aW91cy50eXBlID09IENzc1Rva2VuVHlwZS5JZGVudGlmaWVyICYmXG4gICAgICAgICAgdGhpcy5fc2Nhbm5lci5wZWVrID09IGNoYXJzLiRMUEFSRU4pIHtcbiAgICAgICAgdG9rZW4gPSB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIsICcoJyk7XG4gICAgICAgIHRva2Vucy5wdXNoKHRva2VuKTtcblxuICAgICAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLlNUWUxFX1ZBTFVFX0ZVTkNUSU9OKTtcblxuICAgICAgICB0b2tlbiA9IHRoaXMuX3NjYW4oKTtcbiAgICAgICAgdG9rZW5zLnB1c2godG9rZW4pO1xuXG4gICAgICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuU1RZTEVfVkFMVUUpO1xuXG4gICAgICAgIHRva2VuID0gdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyLCAnKScpO1xuICAgICAgICB0b2tlbnMucHVzaCh0b2tlbik7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICB0b2tlbiA9IHRoaXMuX3NjYW4oKTtcbiAgICAgICAgaWYgKHRva2VuLnR5cGUgPT0gQ3NzVG9rZW5UeXBlLldoaXRlc3BhY2UpIHtcbiAgICAgICAgICB3c1N0ciArPSB0b2tlbi5zdHJWYWx1ZTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICB3c1N0ciA9ICcnO1xuICAgICAgICAgIHRva2Vucy5wdXNoKHRva2VuKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgICAgcHJldmlvdXMgPSB0b2tlbjtcbiAgICB9XG5cbiAgICBjb25zdCBlbmQgPSB0aGlzLl9nZXRTY2FubmVySW5kZXgoKSAtIDE7XG4gICAgdGhpcy5fc2Nhbm5lci5jb25zdW1lV2hpdGVzcGFjZSgpO1xuXG4gICAgY29uc3QgY29kZSA9IHRoaXMuX3NjYW5uZXIucGVlaztcbiAgICBpZiAoY29kZSA9PSBjaGFycy4kU0VNSUNPTE9OKSB7XG4gICAgICB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIsICc7Jyk7XG4gICAgfSBlbHNlIGlmIChjb2RlICE9IGNoYXJzLiRSQlJBQ0UpIHtcbiAgICAgIHRoaXMuX2Vycm9yKFxuICAgICAgICAgIGdlbmVyYXRlRXJyb3JNZXNzYWdlKFxuICAgICAgICAgICAgICB0aGlzLl9nZXRTb3VyY2VDb250ZW50KCksIGBUaGUgQ1NTIGtleS92YWx1ZSBkZWZpbml0aW9uIGRpZCBub3QgZW5kIHdpdGggYSBzZW1pY29sb25gLFxuICAgICAgICAgICAgICBwcmV2aW91cy5zdHJWYWx1ZSwgcHJldmlvdXMuaW5kZXgsIHByZXZpb3VzLmxpbmUsIHByZXZpb3VzLmNvbHVtbiksXG4gICAgICAgICAgcHJldmlvdXMpO1xuICAgIH1cblxuICAgIGNvbnN0IHN0clZhbHVlID0gdGhpcy5fZXh0cmFjdFNvdXJjZUNvbnRlbnQoc3RhcnQsIGVuZCk7XG4gICAgY29uc3Qgc3RhcnRUb2tlbiA9IHRva2Vuc1swXTtcbiAgICBjb25zdCBlbmRUb2tlbiA9IHRva2Vuc1t0b2tlbnMubGVuZ3RoIC0gMV07XG4gICAgY29uc3Qgc3BhbiA9IHRoaXMuX2dlbmVyYXRlU291cmNlU3BhbihzdGFydFRva2VuLCBlbmRUb2tlbik7XG4gICAgcmV0dXJuIG5ldyBDc3NTdHlsZVZhbHVlQXN0KHNwYW4sIHRva2Vucywgc3RyVmFsdWUpO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfY29sbGVjdFVudGlsRGVsaW0oZGVsaW1pdGVyczogbnVtYmVyLCBhc3NlcnRUeXBlOiBDc3NUb2tlblR5cGV8bnVsbCA9IG51bGwpOiBDc3NUb2tlbltdIHtcbiAgICBjb25zdCB0b2tlbnM6IENzc1Rva2VuW10gPSBbXTtcbiAgICB3aGlsZSAoIWNoYXJhY3RlckNvbnRhaW5zRGVsaW1pdGVyKHRoaXMuX3NjYW5uZXIucGVlaywgZGVsaW1pdGVycykpIHtcbiAgICAgIGNvbnN0IHZhbCA9IGFzc2VydFR5cGUgIT0gbnVsbCA/IHRoaXMuX2NvbnN1bWUoYXNzZXJ0VHlwZSkgOiB0aGlzLl9zY2FuKCk7XG4gICAgICB0b2tlbnMucHVzaCh2YWwpO1xuICAgIH1cbiAgICByZXR1cm4gdG9rZW5zO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfcGFyc2VCbG9jayhkZWxpbWl0ZXJzOiBudW1iZXIpOiBDc3NCbG9ja0FzdCB7XG4gICAgZGVsaW1pdGVycyB8PSBSQlJBQ0VfREVMSU1fRkxBRztcblxuICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuQkxPQ0spO1xuXG4gICAgY29uc3Qgc3RhcnRUb2tlbiA9IHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLkNoYXJhY3RlciwgJ3snKTtcbiAgICB0aGlzLl9zY2FubmVyLmNvbnN1bWVFbXB0eVN0YXRlbWVudHMoKTtcblxuICAgIGNvbnN0IHJlc3VsdHM6IENzc1J1bGVBc3RbXSA9IFtdO1xuICAgIHdoaWxlICghY2hhcmFjdGVyQ29udGFpbnNEZWxpbWl0ZXIodGhpcy5fc2Nhbm5lci5wZWVrLCBkZWxpbWl0ZXJzKSkge1xuICAgICAgcmVzdWx0cy5wdXNoKHRoaXMuX3BhcnNlUnVsZShkZWxpbWl0ZXJzKSk7XG4gICAgfVxuXG4gICAgY29uc3QgZW5kVG9rZW4gPSB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIsICd9Jyk7XG5cbiAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLkJMT0NLKTtcbiAgICB0aGlzLl9zY2FubmVyLmNvbnN1bWVFbXB0eVN0YXRlbWVudHMoKTtcblxuICAgIGNvbnN0IHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4oc3RhcnRUb2tlbiwgZW5kVG9rZW4pO1xuICAgIHJldHVybiBuZXcgQ3NzQmxvY2tBc3Qoc3BhbiwgcmVzdWx0cyk7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9wYXJzZVN0eWxlQmxvY2soZGVsaW1pdGVyczogbnVtYmVyKTogQ3NzU3R5bGVzQmxvY2tBc3R8bnVsbCB7XG4gICAgZGVsaW1pdGVycyB8PSBSQlJBQ0VfREVMSU1fRkxBRyB8IExCUkFDRV9ERUxJTV9GTEFHO1xuXG4gICAgdGhpcy5fc2Nhbm5lci5zZXRNb2RlKENzc0xleGVyTW9kZS5TVFlMRV9CTE9DSyk7XG5cbiAgICBjb25zdCBzdGFydFRva2VuID0gdGhpcy5fY29uc3VtZShDc3NUb2tlblR5cGUuQ2hhcmFjdGVyLCAneycpO1xuICAgIGlmIChzdGFydFRva2VuLm51bVZhbHVlICE9IGNoYXJzLiRMQlJBQ0UpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIGNvbnN0IGRlZmluaXRpb25zOiBDc3NEZWZpbml0aW9uQXN0W10gPSBbXTtcbiAgICB0aGlzLl9zY2FubmVyLmNvbnN1bWVFbXB0eVN0YXRlbWVudHMoKTtcblxuICAgIHdoaWxlICghY2hhcmFjdGVyQ29udGFpbnNEZWxpbWl0ZXIodGhpcy5fc2Nhbm5lci5wZWVrLCBkZWxpbWl0ZXJzKSkge1xuICAgICAgZGVmaW5pdGlvbnMucHVzaCh0aGlzLl9wYXJzZURlZmluaXRpb24oZGVsaW1pdGVycykpO1xuICAgICAgdGhpcy5fc2Nhbm5lci5jb25zdW1lRW1wdHlTdGF0ZW1lbnRzKCk7XG4gICAgfVxuXG4gICAgY29uc3QgZW5kVG9rZW4gPSB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5DaGFyYWN0ZXIsICd9Jyk7XG5cbiAgICB0aGlzLl9zY2FubmVyLnNldE1vZGUoQ3NzTGV4ZXJNb2RlLlNUWUxFX0JMT0NLKTtcbiAgICB0aGlzLl9zY2FubmVyLmNvbnN1bWVFbXB0eVN0YXRlbWVudHMoKTtcblxuICAgIGNvbnN0IHNwYW4gPSB0aGlzLl9nZW5lcmF0ZVNvdXJjZVNwYW4oc3RhcnRUb2tlbiwgZW5kVG9rZW4pO1xuICAgIHJldHVybiBuZXcgQ3NzU3R5bGVzQmxvY2tBc3Qoc3BhbiwgZGVmaW5pdGlvbnMpO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfcGFyc2VEZWZpbml0aW9uKGRlbGltaXRlcnM6IG51bWJlcik6IENzc0RlZmluaXRpb25Bc3Qge1xuICAgIHRoaXMuX3NjYW5uZXIuc2V0TW9kZShDc3NMZXhlck1vZGUuU1RZTEVfQkxPQ0spO1xuXG4gICAgbGV0IHByb3AgPSB0aGlzLl9jb25zdW1lKENzc1Rva2VuVHlwZS5JZGVudGlmaWVyKTtcbiAgICBsZXQgcGFyc2VWYWx1ZTogYm9vbGVhbiA9IGZhbHNlO1xuICAgIGxldCB2YWx1ZTogQ3NzU3R5bGVWYWx1ZUFzdHxudWxsID0gbnVsbDtcbiAgICBsZXQgZW5kVG9rZW46IENzc1Rva2VufENzc1N0eWxlVmFsdWVBc3QgPSBwcm9wO1xuXG4gICAgLy8gdGhlIGNvbG9uIHZhbHVlIHNlcGFyYXRlcyB0aGUgcHJvcCBmcm9tIHRoZSBzdHlsZS5cbiAgICAvLyB0aGVyZSBhcmUgYSBmZXcgY2FzZXMgYXMgdG8gd2hhdCBjb3VsZCBoYXBwZW4gaWYgaXRcbiAgICAvLyBpcyBtaXNzaW5nXG4gICAgc3dpdGNoICh0aGlzLl9zY2FubmVyLnBlZWspIHtcbiAgICAgIGNhc2UgY2hhcnMuJFNFTUlDT0xPTjpcbiAgICAgIGNhc2UgY2hhcnMuJFJCUkFDRTpcbiAgICAgIGNhc2UgY2hhcnMuJEVPRjpcbiAgICAgICAgcGFyc2VWYWx1ZSA9IGZhbHNlO1xuICAgICAgICBicmVhaztcblxuICAgICAgZGVmYXVsdDpcbiAgICAgICAgbGV0IHByb3BTdHIgPSBbcHJvcC5zdHJWYWx1ZV07XG4gICAgICAgIGlmICh0aGlzLl9zY2FubmVyLnBlZWsgIT0gY2hhcnMuJENPTE9OKSB7XG4gICAgICAgICAgLy8gdGhpcyB3aWxsIHRocm93IHRoZSBlcnJvclxuICAgICAgICAgIGNvbnN0IG5leHRWYWx1ZSA9IHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLkNoYXJhY3RlciwgJzonKTtcbiAgICAgICAgICBwcm9wU3RyLnB1c2gobmV4dFZhbHVlLnN0clZhbHVlKTtcblxuICAgICAgICAgIGNvbnN0IHJlbWFpbmluZ1Rva2VucyA9IHRoaXMuX2NvbGxlY3RVbnRpbERlbGltKFxuICAgICAgICAgICAgICBkZWxpbWl0ZXJzIHwgQ09MT05fREVMSU1fRkxBRyB8IFNFTUlDT0xPTl9ERUxJTV9GTEFHLCBDc3NUb2tlblR5cGUuSWRlbnRpZmllcik7XG4gICAgICAgICAgaWYgKHJlbWFpbmluZ1Rva2Vucy5sZW5ndGggPiAwKSB7XG4gICAgICAgICAgICByZW1haW5pbmdUb2tlbnMuZm9yRWFjaCgodG9rZW4pID0+IHtcbiAgICAgICAgICAgICAgcHJvcFN0ci5wdXNoKHRva2VuLnN0clZhbHVlKTtcbiAgICAgICAgICAgIH0pO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIGVuZFRva2VuID0gcHJvcCA9XG4gICAgICAgICAgICAgIG5ldyBDc3NUb2tlbihwcm9wLmluZGV4LCBwcm9wLmNvbHVtbiwgcHJvcC5saW5lLCBwcm9wLnR5cGUsIHByb3BTdHIuam9pbignICcpKTtcbiAgICAgICAgfVxuXG4gICAgICAgIC8vIHRoaXMgbWVhbnMgd2UndmUgcmVhY2hlZCB0aGUgZW5kIG9mIHRoZSBkZWZpbml0aW9uIGFuZC9vciBibG9ja1xuICAgICAgICBpZiAodGhpcy5fc2Nhbm5lci5wZWVrID09IGNoYXJzLiRDT0xPTikge1xuICAgICAgICAgIHRoaXMuX2NvbnN1bWUoQ3NzVG9rZW5UeXBlLkNoYXJhY3RlciwgJzonKTtcbiAgICAgICAgICBwYXJzZVZhbHVlID0gdHJ1ZTtcbiAgICAgICAgfVxuICAgICAgICBicmVhaztcbiAgICB9XG5cbiAgICBpZiAocGFyc2VWYWx1ZSkge1xuICAgICAgdmFsdWUgPSB0aGlzLl9wYXJzZVZhbHVlKGRlbGltaXRlcnMpO1xuICAgICAgZW5kVG9rZW4gPSB2YWx1ZTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5fZXJyb3IoXG4gICAgICAgICAgZ2VuZXJhdGVFcnJvck1lc3NhZ2UoXG4gICAgICAgICAgICAgIHRoaXMuX2dldFNvdXJjZUNvbnRlbnQoKSwgYFRoZSBDU1MgcHJvcGVydHkgd2FzIG5vdCBwYWlyZWQgd2l0aCBhIHN0eWxlIHZhbHVlYCxcbiAgICAgICAgICAgICAgcHJvcC5zdHJWYWx1ZSwgcHJvcC5pbmRleCwgcHJvcC5saW5lLCBwcm9wLmNvbHVtbiksXG4gICAgICAgICAgcHJvcCk7XG4gICAgfVxuXG4gICAgY29uc3Qgc3BhbiA9IHRoaXMuX2dlbmVyYXRlU291cmNlU3Bhbihwcm9wLCBlbmRUb2tlbik7XG4gICAgcmV0dXJuIG5ldyBDc3NEZWZpbml0aW9uQXN0KHNwYW4sIHByb3AsIHZhbHVlISk7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9hc3NlcnRDb25kaXRpb24oc3RhdHVzOiBib29sZWFuLCBlcnJvck1lc3NhZ2U6IHN0cmluZywgcHJvYmxlbVRva2VuOiBDc3NUb2tlbik6IGJvb2xlYW4ge1xuICAgIGlmICghc3RhdHVzKSB7XG4gICAgICB0aGlzLl9lcnJvcihlcnJvck1lc3NhZ2UsIHByb2JsZW1Ub2tlbik7XG4gICAgICByZXR1cm4gdHJ1ZTtcbiAgICB9XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfZXJyb3IobWVzc2FnZTogc3RyaW5nLCBwcm9ibGVtVG9rZW46IENzc1Rva2VuKSB7XG4gICAgY29uc3QgbGVuZ3RoID0gcHJvYmxlbVRva2VuLnN0clZhbHVlLmxlbmd0aDtcbiAgICBjb25zdCBlcnJvciA9IENzc1BhcnNlRXJyb3IuY3JlYXRlKFxuICAgICAgICB0aGlzLl9maWxlLCAwLCBwcm9ibGVtVG9rZW4ubGluZSwgcHJvYmxlbVRva2VuLmNvbHVtbiwgbGVuZ3RoLCBtZXNzYWdlKTtcbiAgICB0aGlzLl9lcnJvcnMucHVzaChlcnJvcik7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIENzc1BhcnNlRXJyb3IgZXh0ZW5kcyBQYXJzZUVycm9yIHtcbiAgc3RhdGljIGNyZWF0ZShcbiAgICAgIGZpbGU6IFBhcnNlU291cmNlRmlsZSwgb2Zmc2V0OiBudW1iZXIsIGxpbmU6IG51bWJlciwgY29sOiBudW1iZXIsIGxlbmd0aDogbnVtYmVyLFxuICAgICAgZXJyTXNnOiBzdHJpbmcpOiBDc3NQYXJzZUVycm9yIHtcbiAgICBjb25zdCBzdGFydCA9IG5ldyBQYXJzZUxvY2F0aW9uKGZpbGUsIG9mZnNldCwgbGluZSwgY29sKTtcbiAgICBjb25zdCBlbmQgPSBuZXcgUGFyc2VMb2NhdGlvbihmaWxlLCBvZmZzZXQsIGxpbmUsIGNvbCArIGxlbmd0aCk7XG4gICAgY29uc3Qgc3BhbiA9IG5ldyBQYXJzZVNvdXJjZVNwYW4oc3RhcnQsIGVuZCk7XG4gICAgcmV0dXJuIG5ldyBDc3NQYXJzZUVycm9yKHNwYW4sICdDU1MgUGFyc2UgRXJyb3I6ICcgKyBlcnJNc2cpO1xuICB9XG5cbiAgY29uc3RydWN0b3Ioc3BhbjogUGFyc2VTb3VyY2VTcGFuLCBtZXNzYWdlOiBzdHJpbmcpIHtcbiAgICBzdXBlcihzcGFuLCBtZXNzYWdlKTtcbiAgfVxufVxuIl19