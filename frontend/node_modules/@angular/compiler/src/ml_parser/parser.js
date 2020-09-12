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
        define("@angular/compiler/src/ml_parser/parser", ["require", "exports", "tslib", "@angular/compiler/src/parse_util", "@angular/compiler/src/ml_parser/ast", "@angular/compiler/src/ml_parser/lexer", "@angular/compiler/src/ml_parser/tags"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.Parser = exports.ParseTreeResult = exports.TreeError = void 0;
    var tslib_1 = require("tslib");
    var parse_util_1 = require("@angular/compiler/src/parse_util");
    var html = require("@angular/compiler/src/ml_parser/ast");
    var lex = require("@angular/compiler/src/ml_parser/lexer");
    var tags_1 = require("@angular/compiler/src/ml_parser/tags");
    var TreeError = /** @class */ (function (_super) {
        tslib_1.__extends(TreeError, _super);
        function TreeError(elementName, span, msg) {
            var _this = _super.call(this, span, msg) || this;
            _this.elementName = elementName;
            return _this;
        }
        TreeError.create = function (elementName, span, msg) {
            return new TreeError(elementName, span, msg);
        };
        return TreeError;
    }(parse_util_1.ParseError));
    exports.TreeError = TreeError;
    var ParseTreeResult = /** @class */ (function () {
        function ParseTreeResult(rootNodes, errors) {
            this.rootNodes = rootNodes;
            this.errors = errors;
        }
        return ParseTreeResult;
    }());
    exports.ParseTreeResult = ParseTreeResult;
    var Parser = /** @class */ (function () {
        function Parser(getTagDefinition) {
            this.getTagDefinition = getTagDefinition;
        }
        Parser.prototype.parse = function (source, url, options) {
            var tokenizeResult = lex.tokenize(source, url, this.getTagDefinition, options);
            var parser = new _TreeBuilder(tokenizeResult.tokens, this.getTagDefinition);
            parser.build();
            return new ParseTreeResult(parser.rootNodes, tokenizeResult.errors.concat(parser.errors));
        };
        return Parser;
    }());
    exports.Parser = Parser;
    var _TreeBuilder = /** @class */ (function () {
        function _TreeBuilder(tokens, getTagDefinition) {
            this.tokens = tokens;
            this.getTagDefinition = getTagDefinition;
            this._index = -1;
            this._elementStack = [];
            this.rootNodes = [];
            this.errors = [];
            this._advance();
        }
        _TreeBuilder.prototype.build = function () {
            while (this._peek.type !== lex.TokenType.EOF) {
                if (this._peek.type === lex.TokenType.TAG_OPEN_START) {
                    this._consumeStartTag(this._advance());
                }
                else if (this._peek.type === lex.TokenType.TAG_CLOSE) {
                    this._consumeEndTag(this._advance());
                }
                else if (this._peek.type === lex.TokenType.CDATA_START) {
                    this._closeVoidElement();
                    this._consumeCdata(this._advance());
                }
                else if (this._peek.type === lex.TokenType.COMMENT_START) {
                    this._closeVoidElement();
                    this._consumeComment(this._advance());
                }
                else if (this._peek.type === lex.TokenType.TEXT || this._peek.type === lex.TokenType.RAW_TEXT ||
                    this._peek.type === lex.TokenType.ESCAPABLE_RAW_TEXT) {
                    this._closeVoidElement();
                    this._consumeText(this._advance());
                }
                else if (this._peek.type === lex.TokenType.EXPANSION_FORM_START) {
                    this._consumeExpansion(this._advance());
                }
                else {
                    // Skip all other tokens...
                    this._advance();
                }
            }
        };
        _TreeBuilder.prototype._advance = function () {
            var prev = this._peek;
            if (this._index < this.tokens.length - 1) {
                // Note: there is always an EOF token at the end
                this._index++;
            }
            this._peek = this.tokens[this._index];
            return prev;
        };
        _TreeBuilder.prototype._advanceIf = function (type) {
            if (this._peek.type === type) {
                return this._advance();
            }
            return null;
        };
        _TreeBuilder.prototype._consumeCdata = function (_startToken) {
            this._consumeText(this._advance());
            this._advanceIf(lex.TokenType.CDATA_END);
        };
        _TreeBuilder.prototype._consumeComment = function (token) {
            var text = this._advanceIf(lex.TokenType.RAW_TEXT);
            this._advanceIf(lex.TokenType.COMMENT_END);
            var value = text != null ? text.parts[0].trim() : null;
            this._addToParent(new html.Comment(value, token.sourceSpan));
        };
        _TreeBuilder.prototype._consumeExpansion = function (token) {
            var switchValue = this._advance();
            var type = this._advance();
            var cases = [];
            // read =
            while (this._peek.type === lex.TokenType.EXPANSION_CASE_VALUE) {
                var expCase = this._parseExpansionCase();
                if (!expCase)
                    return; // error
                cases.push(expCase);
            }
            // read the final }
            if (this._peek.type !== lex.TokenType.EXPANSION_FORM_END) {
                this.errors.push(TreeError.create(null, this._peek.sourceSpan, "Invalid ICU message. Missing '}'."));
                return;
            }
            var sourceSpan = new parse_util_1.ParseSourceSpan(token.sourceSpan.start, this._peek.sourceSpan.end);
            this._addToParent(new html.Expansion(switchValue.parts[0], type.parts[0], cases, sourceSpan, switchValue.sourceSpan));
            this._advance();
        };
        _TreeBuilder.prototype._parseExpansionCase = function () {
            var value = this._advance();
            // read {
            if (this._peek.type !== lex.TokenType.EXPANSION_CASE_EXP_START) {
                this.errors.push(TreeError.create(null, this._peek.sourceSpan, "Invalid ICU message. Missing '{'."));
                return null;
            }
            // read until }
            var start = this._advance();
            var exp = this._collectExpansionExpTokens(start);
            if (!exp)
                return null;
            var end = this._advance();
            exp.push(new lex.Token(lex.TokenType.EOF, [], end.sourceSpan));
            // parse everything in between { and }
            var expansionCaseParser = new _TreeBuilder(exp, this.getTagDefinition);
            expansionCaseParser.build();
            if (expansionCaseParser.errors.length > 0) {
                this.errors = this.errors.concat(expansionCaseParser.errors);
                return null;
            }
            var sourceSpan = new parse_util_1.ParseSourceSpan(value.sourceSpan.start, end.sourceSpan.end);
            var expSourceSpan = new parse_util_1.ParseSourceSpan(start.sourceSpan.start, end.sourceSpan.end);
            return new html.ExpansionCase(value.parts[0], expansionCaseParser.rootNodes, sourceSpan, value.sourceSpan, expSourceSpan);
        };
        _TreeBuilder.prototype._collectExpansionExpTokens = function (start) {
            var exp = [];
            var expansionFormStack = [lex.TokenType.EXPANSION_CASE_EXP_START];
            while (true) {
                if (this._peek.type === lex.TokenType.EXPANSION_FORM_START ||
                    this._peek.type === lex.TokenType.EXPANSION_CASE_EXP_START) {
                    expansionFormStack.push(this._peek.type);
                }
                if (this._peek.type === lex.TokenType.EXPANSION_CASE_EXP_END) {
                    if (lastOnStack(expansionFormStack, lex.TokenType.EXPANSION_CASE_EXP_START)) {
                        expansionFormStack.pop();
                        if (expansionFormStack.length == 0)
                            return exp;
                    }
                    else {
                        this.errors.push(TreeError.create(null, start.sourceSpan, "Invalid ICU message. Missing '}'."));
                        return null;
                    }
                }
                if (this._peek.type === lex.TokenType.EXPANSION_FORM_END) {
                    if (lastOnStack(expansionFormStack, lex.TokenType.EXPANSION_FORM_START)) {
                        expansionFormStack.pop();
                    }
                    else {
                        this.errors.push(TreeError.create(null, start.sourceSpan, "Invalid ICU message. Missing '}'."));
                        return null;
                    }
                }
                if (this._peek.type === lex.TokenType.EOF) {
                    this.errors.push(TreeError.create(null, start.sourceSpan, "Invalid ICU message. Missing '}'."));
                    return null;
                }
                exp.push(this._advance());
            }
        };
        _TreeBuilder.prototype._consumeText = function (token) {
            var text = token.parts[0];
            if (text.length > 0 && text[0] == '\n') {
                var parent_1 = this._getParentElement();
                if (parent_1 != null && parent_1.children.length == 0 &&
                    this.getTagDefinition(parent_1.name).ignoreFirstLf) {
                    text = text.substring(1);
                }
            }
            if (text.length > 0) {
                this._addToParent(new html.Text(text, token.sourceSpan));
            }
        };
        _TreeBuilder.prototype._closeVoidElement = function () {
            var el = this._getParentElement();
            if (el && this.getTagDefinition(el.name).isVoid) {
                this._elementStack.pop();
            }
        };
        _TreeBuilder.prototype._consumeStartTag = function (startTagToken) {
            var prefix = startTagToken.parts[0];
            var name = startTagToken.parts[1];
            var attrs = [];
            while (this._peek.type === lex.TokenType.ATTR_NAME) {
                attrs.push(this._consumeAttr(this._advance()));
            }
            var fullName = this._getElementFullName(prefix, name, this._getParentElement());
            var selfClosing = false;
            // Note: There could have been a tokenizer error
            // so that we don't get a token for the end tag...
            if (this._peek.type === lex.TokenType.TAG_OPEN_END_VOID) {
                this._advance();
                selfClosing = true;
                var tagDef = this.getTagDefinition(fullName);
                if (!(tagDef.canSelfClose || tags_1.getNsPrefix(fullName) !== null || tagDef.isVoid)) {
                    this.errors.push(TreeError.create(fullName, startTagToken.sourceSpan, "Only void and foreign elements can be self closed \"" + startTagToken.parts[1] + "\""));
                }
            }
            else if (this._peek.type === lex.TokenType.TAG_OPEN_END) {
                this._advance();
                selfClosing = false;
            }
            var end = this._peek.sourceSpan.start;
            var span = new parse_util_1.ParseSourceSpan(startTagToken.sourceSpan.start, end);
            var el = new html.Element(fullName, attrs, [], span, span, undefined);
            this._pushElement(el);
            if (selfClosing) {
                // Elements that are self-closed have their `endSourceSpan` set to the full span, as the
                // element start tag also represents the end tag.
                this._popElement(fullName, span);
            }
        };
        _TreeBuilder.prototype._pushElement = function (el) {
            var parentEl = this._getParentElement();
            if (parentEl && this.getTagDefinition(parentEl.name).isClosedByChild(el.name)) {
                this._elementStack.pop();
            }
            this._addToParent(el);
            this._elementStack.push(el);
        };
        _TreeBuilder.prototype._consumeEndTag = function (endTagToken) {
            var fullName = this._getElementFullName(endTagToken.parts[0], endTagToken.parts[1], this._getParentElement());
            if (this.getTagDefinition(fullName).isVoid) {
                this.errors.push(TreeError.create(fullName, endTagToken.sourceSpan, "Void elements do not have end tags \"" + endTagToken.parts[1] + "\""));
            }
            else if (!this._popElement(fullName, endTagToken.sourceSpan)) {
                var errMsg = "Unexpected closing tag \"" + fullName + "\". It may happen when the tag has already been closed by another tag. For more info see https://www.w3.org/TR/html5/syntax.html#closing-elements-that-have-implied-end-tags";
                this.errors.push(TreeError.create(fullName, endTagToken.sourceSpan, errMsg));
            }
        };
        _TreeBuilder.prototype._popElement = function (fullName, endSourceSpan) {
            for (var stackIndex = this._elementStack.length - 1; stackIndex >= 0; stackIndex--) {
                var el = this._elementStack[stackIndex];
                if (el.name == fullName) {
                    // Record the parse span with the element that is being closed. Any elements that are
                    // removed from the element stack at this point are closed implicitly, so they won't get
                    // an end source span (as there is no explicit closing element).
                    el.endSourceSpan = endSourceSpan;
                    this._elementStack.splice(stackIndex, this._elementStack.length - stackIndex);
                    return true;
                }
                if (!this.getTagDefinition(el.name).closedByParent) {
                    return false;
                }
            }
            return false;
        };
        _TreeBuilder.prototype._consumeAttr = function (attrName) {
            var fullName = tags_1.mergeNsAndName(attrName.parts[0], attrName.parts[1]);
            var end = attrName.sourceSpan.end;
            var value = '';
            var valueSpan = undefined;
            if (this._peek.type === lex.TokenType.ATTR_QUOTE) {
                this._advance();
            }
            if (this._peek.type === lex.TokenType.ATTR_VALUE) {
                var valueToken = this._advance();
                value = valueToken.parts[0];
                end = valueToken.sourceSpan.end;
                valueSpan = valueToken.sourceSpan;
            }
            if (this._peek.type === lex.TokenType.ATTR_QUOTE) {
                var quoteToken = this._advance();
                end = quoteToken.sourceSpan.end;
            }
            return new html.Attribute(fullName, value, new parse_util_1.ParseSourceSpan(attrName.sourceSpan.start, end), valueSpan);
        };
        _TreeBuilder.prototype._getParentElement = function () {
            return this._elementStack.length > 0 ? this._elementStack[this._elementStack.length - 1] : null;
        };
        _TreeBuilder.prototype._addToParent = function (node) {
            var parent = this._getParentElement();
            if (parent != null) {
                parent.children.push(node);
            }
            else {
                this.rootNodes.push(node);
            }
        };
        _TreeBuilder.prototype._getElementFullName = function (prefix, localName, parentElement) {
            if (prefix === '') {
                prefix = this.getTagDefinition(localName).implicitNamespacePrefix || '';
                if (prefix === '' && parentElement != null) {
                    prefix = tags_1.getNsPrefix(parentElement.name);
                }
            }
            return tags_1.mergeNsAndName(prefix, localName);
        };
        return _TreeBuilder;
    }());
    function lastOnStack(stack, element) {
        return stack.length > 0 && stack[stack.length - 1] === element;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicGFyc2VyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvc3JjL21sX3BhcnNlci9wYXJzZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUVILCtEQUEwRDtJQUUxRCwwREFBOEI7SUFDOUIsMkRBQStCO0lBQy9CLDZEQUFpRjtJQUVqRjtRQUErQixxQ0FBVTtRQUt2QyxtQkFBbUIsV0FBd0IsRUFBRSxJQUFxQixFQUFFLEdBQVc7WUFBL0UsWUFDRSxrQkFBTSxJQUFJLEVBQUUsR0FBRyxDQUFDLFNBQ2pCO1lBRmtCLGlCQUFXLEdBQVgsV0FBVyxDQUFhOztRQUUzQyxDQUFDO1FBTk0sZ0JBQU0sR0FBYixVQUFjLFdBQXdCLEVBQUUsSUFBcUIsRUFBRSxHQUFXO1lBQ3hFLE9BQU8sSUFBSSxTQUFTLENBQUMsV0FBVyxFQUFFLElBQUksRUFBRSxHQUFHLENBQUMsQ0FBQztRQUMvQyxDQUFDO1FBS0gsZ0JBQUM7SUFBRCxDQUFDLEFBUkQsQ0FBK0IsdUJBQVUsR0FReEM7SUFSWSw4QkFBUztJQVV0QjtRQUNFLHlCQUFtQixTQUFzQixFQUFTLE1BQW9CO1lBQW5ELGNBQVMsR0FBVCxTQUFTLENBQWE7WUFBUyxXQUFNLEdBQU4sTUFBTSxDQUFjO1FBQUcsQ0FBQztRQUM1RSxzQkFBQztJQUFELENBQUMsQUFGRCxJQUVDO0lBRlksMENBQWU7SUFJNUI7UUFDRSxnQkFBbUIsZ0JBQW9EO1lBQXBELHFCQUFnQixHQUFoQixnQkFBZ0IsQ0FBb0M7UUFBRyxDQUFDO1FBRTNFLHNCQUFLLEdBQUwsVUFBTSxNQUFjLEVBQUUsR0FBVyxFQUFFLE9BQTZCO1lBQzlELElBQU0sY0FBYyxHQUFHLEdBQUcsQ0FBQyxRQUFRLENBQUMsTUFBTSxFQUFFLEdBQUcsRUFBRSxJQUFJLENBQUMsZ0JBQWdCLEVBQUUsT0FBTyxDQUFDLENBQUM7WUFDakYs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K1RDO0lBRUQsU0FBUyxXQUFXLENBQUMsS0FBWSxFQUFFLE9BQVk7UUFDN0MsT0FBTyxLQUFLLENBQUMsTUFBTSxHQUFHLENBQUMsSUFBSSxLQUFLLENBQUMsS0FBSyxDQUFDLE1BQU0sR0FBRyxDQUFDLENBQUMsS0FBSyxPQUFPLENBQUM7SUFDakUsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1BhcnNlRXJyb3IsIFBhcnNlU291cmNlU3Bhbn0gZnJvbSAnLi4vcGFyc2VfdXRpbCc7XG5cbmltcG9ydCAqIGFzIGh0bWwgZnJvbSAnLi9hc3QnO1xuaW1wb3J0ICogYXMgbGV4IGZyb20gJy4vbGV4ZXInO1xuaW1wb3J0IHtnZXROc1ByZWZpeCwgaXNOZ0NvbnRhaW5lciwgbWVyZ2VOc0FuZE5hbWUsIFRhZ0RlZmluaXRpb259IGZyb20gJy4vdGFncyc7XG5cbmV4cG9ydCBjbGFzcyBUcmVlRXJyb3IgZXh0ZW5kcyBQYXJzZUVycm9yIHtcbiAgc3RhdGljIGNyZWF0ZShlbGVtZW50TmFtZTogc3RyaW5nfG51bGwsIHNwYW46IFBhcnNlU291cmNlU3BhbiwgbXNnOiBzdHJpbmcpOiBUcmVlRXJyb3Ige1xuICAgIHJldHVybiBuZXcgVHJlZUVycm9yKGVsZW1lbnROYW1lLCBzcGFuLCBtc2cpO1xuICB9XG5cbiAgY29uc3RydWN0b3IocHVibGljIGVsZW1lbnROYW1lOiBzdHJpbmd8bnVsbCwgc3BhbjogUGFyc2VTb3VyY2VTcGFuLCBtc2c6IHN0cmluZykge1xuICAgIHN1cGVyKHNwYW4sIG1zZyk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIFBhcnNlVHJlZVJlc3VsdCB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyByb290Tm9kZXM6IGh0bWwuTm9kZVtdLCBwdWJsaWMgZXJyb3JzOiBQYXJzZUVycm9yW10pIHt9XG59XG5cbmV4cG9ydCBjbGFzcyBQYXJzZXIge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgZ2V0VGFnRGVmaW5pdGlvbjogKHRhZ05hbWU6IHN0cmluZykgPT4gVGFnRGVmaW5pdGlvbikge31cblxuICBwYXJzZShzb3VyY2U6IHN0cmluZywgdXJsOiBzdHJpbmcsIG9wdGlvbnM/OiBsZXguVG9rZW5pemVPcHRpb25zKTogUGFyc2VUcmVlUmVzdWx0IHtcbiAgICBjb25zdCB0b2tlbml6ZVJlc3VsdCA9IGxleC50b2tlbml6ZShzb3VyY2UsIHVybCwgdGhpcy5nZXRUYWdEZWZpbml0aW9uLCBvcHRpb25zKTtcbiAgICBjb25zdCBwYXJzZXIgPSBuZXcgX1RyZWVCdWlsZGVyKHRva2VuaXplUmVzdWx0LnRva2VucywgdGhpcy5nZXRUYWdEZWZpbml0aW9uKTtcbiAgICBwYXJzZXIuYnVpbGQoKTtcbiAgICByZXR1cm4gbmV3IFBhcnNlVHJlZVJlc3VsdChcbiAgICAgICAgcGFyc2VyLnJvb3ROb2RlcyxcbiAgICAgICAgKHRva2VuaXplUmVzdWx0LmVycm9ycyBhcyBQYXJzZUVycm9yW10pLmNvbmNhdChwYXJzZXIuZXJyb3JzKSxcbiAgICApO1xuICB9XG59XG5cbmNsYXNzIF9UcmVlQnVpbGRlciB7XG4gIHByaXZhdGUgX2luZGV4OiBudW1iZXIgPSAtMTtcbiAgLy8gYF9wZWVrYCB3aWxsIGJlIGluaXRpYWxpemVkIGJ5IHRoZSBjYWxsIHRvIGBhZHZhbmNlKClgIGluIHRoZSBjb25zdHJ1Y3Rvci5cbiAgcHJpdmF0ZSBfcGVlayE6IGxleC5Ub2tlbjtcbiAgcHJpdmF0ZSBfZWxlbWVudFN0YWNrOiBodG1sLkVsZW1lbnRbXSA9IFtdO1xuXG4gIHJvb3ROb2RlczogaHRtbC5Ob2RlW10gPSBbXTtcbiAgZXJyb3JzOiBUcmVlRXJyb3JbXSA9IFtdO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSB0b2tlbnM6IGxleC5Ub2tlbltdLCBwcml2YXRlIGdldFRhZ0RlZmluaXRpb246ICh0YWdOYW1lOiBzdHJpbmcpID0+IFRhZ0RlZmluaXRpb24pIHtcbiAgICB0aGlzLl9hZHZhbmNlKCk7XG4gIH1cblxuICBidWlsZCgpOiB2b2lkIHtcbiAgICB3aGlsZSAodGhpcy5fcGVlay50eXBlICE9PSBsZXguVG9rZW5UeXBlLkVPRikge1xuICAgICAgaWYgKHRoaXMuX3BlZWsudHlwZSA9PT0gbGV4LlRva2VuVHlwZS5UQUdfT1BFTl9TVEFSVCkge1xuICAgICAgICB0aGlzLl9jb25zdW1lU3RhcnRUYWcodGhpcy5fYWR2YW5jZSgpKTtcbiAgICAgIH0gZWxzZSBpZiAodGhpcy5fcGVlay50eXBlID09PSBsZXguVG9rZW5UeXBlLlRBR19DTE9TRSkge1xuICAgICAgICB0aGlzLl9jb25zdW1lRW5kVGFnKHRoaXMuX2FkdmFuY2UoKSk7XG4gICAgICB9IGVsc2UgaWYgKHRoaXMuX3BlZWsudHlwZSA9PT0gbGV4LlRva2VuVHlwZS5DREFUQV9TVEFSVCkge1xuICAgICAgICB0aGlzLl9jbG9zZVZvaWRFbGVtZW50KCk7XG4gICAgICAgIHRoaXMuX2NvbnN1bWVDZGF0YSh0aGlzLl9hZHZhbmNlKCkpO1xuICAgICAgfSBlbHNlIGlmICh0aGlzLl9wZWVrLnR5cGUgPT09IGxleC5Ub2tlblR5cGUuQ09NTUVOVF9TVEFSVCkge1xuICAgICAgICB0aGlzLl9jbG9zZVZvaWRFbGVtZW50KCk7XG4gICAgICAgIHRoaXMuX2NvbnN1bWVDb21tZW50KHRoaXMuX2FkdmFuY2UoKSk7XG4gICAgICB9IGVsc2UgaWYgKFxuICAgICAgICAgIHRoaXMuX3BlZWsudHlwZSA9PT0gbGV4LlRva2VuVHlwZS5URVhUIHx8IHRoaXMuX3BlZWsudHlwZSA9PT0gbGV4LlRva2VuVHlwZS5SQVdfVEVYVCB8fFxuICAgICAgICAgIHRoaXMuX3BlZWsudHlwZSA9PT0gbGV4LlRva2VuVHlwZS5FU0NBUEFCTEVfUkFXX1RFWFQpIHtcbiAgICAgICAgdGhpcy5fY2xvc2VWb2lkRWxlbWVudCgpO1xuICAgICAgICB0aGlzLl9jb25zdW1lVGV4dCh0aGlzLl9hZHZhbmNlKCkpO1xuICAgICAgfSBlbHNlIGlmICh0aGlzLl9wZWVrLnR5cGUgPT09IGxleC5Ub2tlblR5cGUuRVhQQU5TSU9OX0ZPUk1fU1RBUlQpIHtcbiAgICAgICAgdGhpcy5fY29uc3VtZUV4cGFuc2lvbih0aGlzLl9hZHZhbmNlKCkpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgLy8gU2tpcCBhbGwgb3RoZXIgdG9rZW5zLi4uXG4gICAgICAgIHRoaXMuX2FkdmFuY2UoKTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICBwcml2YXRlIF9hZHZhbmNlKCk6IGxleC5Ub2tlbiB7XG4gICAgY29uc3QgcHJldiA9IHRoaXMuX3BlZWs7XG4gICAgaWYgKHRoaXMuX2luZGV4IDwgdGhpcy50b2tlbnMubGVuZ3RoIC0gMSkge1xuICAgICAgLy8gTm90ZTogdGhlcmUgaXMgYWx3YXlzIGFuIEVPRiB0b2tlbiBhdCB0aGUgZW5kXG4gICAgICB0aGlzLl9pbmRleCsrO1xuICAgIH1cbiAgICB0aGlzLl9wZWVrID0gdGhpcy50b2tlbnNbdGhpcy5faW5kZXhdO1xuICAgIHJldHVybiBwcmV2O1xuICB9XG5cbiAgcHJpdmF0ZSBfYWR2YW5jZUlmKHR5cGU6IGxleC5Ub2tlblR5cGUpOiBsZXguVG9rZW58bnVsbCB7XG4gICAgaWYgKHRoaXMuX3BlZWsudHlwZSA9PT0gdHlwZSkge1xuICAgICAgcmV0dXJuIHRoaXMuX2FkdmFuY2UoKTtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBwcml2YXRlIF9jb25zdW1lQ2RhdGEoX3N0YXJ0VG9rZW46IGxleC5Ub2tlbikge1xuICAgIHRoaXMuX2NvbnN1bWVUZXh0KHRoaXMuX2FkdmFuY2UoKSk7XG4gICAgdGhpcy5fYWR2YW5jZUlmKGxleC5Ub2tlblR5cGUuQ0RBVEFfRU5EKTtcbiAgfVxuXG4gIHByaXZhdGUgX2NvbnN1bWVDb21tZW50KHRva2VuOiBsZXguVG9rZW4pIHtcbiAgICBjb25zdCB0ZXh0ID0gdGhpcy5fYWR2YW5jZUlmKGxleC5Ub2tlblR5cGUuUkFXX1RFWFQpO1xuICAgIHRoaXMuX2FkdmFuY2VJZihsZXguVG9rZW5UeXBlLkNPTU1FTlRfRU5EKTtcbiAgICBjb25zdCB2YWx1ZSA9IHRleHQgIT0gbnVsbCA/IHRleHQucGFydHNbMF0udHJpbSgpIDogbnVsbDtcbiAgICB0aGlzLl9hZGRUb1BhcmVudChuZXcgaHRtbC5Db21tZW50KHZhbHVlLCB0b2tlbi5zb3VyY2VTcGFuKSk7XG4gIH1cblxuICBwcml2YXRlIF9jb25zdW1lRXhwYW5zaW9uKHRva2VuOiBsZXguVG9rZW4pIHtcbiAgICBjb25zdCBzd2l0Y2hWYWx1ZSA9IHRoaXMuX2FkdmFuY2UoKTtcblxuICAgIGNvbnN0IHR5cGUgPSB0aGlzLl9hZHZhbmNlKCk7XG4gICAgY29uc3QgY2FzZXM6IGh0bWwuRXhwYW5zaW9uQ2FzZVtdID0gW107XG5cbiAgICAvLyByZWFkID1cbiAgICB3aGlsZSAodGhpcy5fcGVlay50eXBlID09PSBsZXguVG9rZW5UeXBlLkVYUEFOU0lPTl9DQVNFX1ZBTFVFKSB7XG4gICAgICBjb25zdCBleHBDYXNlID0gdGhpcy5fcGFyc2VFeHBhbnNpb25DYXNlKCk7XG4gICAgICBpZiAoIWV4cENhc2UpIHJldHVybjsgIC8vIGVycm9yXG4gICAgICBjYXNlcy5wdXNoKGV4cENhc2UpO1xuICAgIH1cblxuICAgIC8vIHJlYWQgdGhlIGZpbmFsIH1cbiAgICBpZiAodGhpcy5fcGVlay50eXBlICE9PSBsZXguVG9rZW5UeXBlLkVYUEFOU0lPTl9GT1JNX0VORCkge1xuICAgICAgdGhpcy5lcnJvcnMucHVzaChcbiAgICAgICAgICBUcmVlRXJyb3IuY3JlYXRlKG51bGwsIHRoaXMuX3BlZWsuc291cmNlU3BhbiwgYEludmFsaWQgSUNVIG1lc3NhZ2UuIE1pc3NpbmcgJ30nLmApKTtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgY29uc3Qgc291cmNlU3BhbiA9IG5ldyBQYXJzZVNvdXJjZVNwYW4odG9rZW4uc291cmNlU3Bhbi5zdGFydCwgdGhpcy5fcGVlay5zb3VyY2VTcGFuLmVuZCk7XG4gICAgdGhpcy5fYWRkVG9QYXJlbnQobmV3IGh0bWwuRXhwYW5zaW9uKFxuICAgICAgICBzd2l0Y2hWYWx1ZS5wYXJ0c1swXSwgdHlwZS5wYXJ0c1swXSwgY2FzZXMsIHNvdXJjZVNwYW4sIHN3aXRjaFZhbHVlLnNvdXJjZVNwYW4pKTtcblxuICAgIHRoaXMuX2FkdmFuY2UoKTtcbiAgfVxuXG4gIHByaXZhdGUgX3BhcnNlRXhwYW5zaW9uQ2FzZSgpOiBodG1sLkV4cGFuc2lvbkNhc2V8bnVsbCB7XG4gICAgY29uc3QgdmFsdWUgPSB0aGlzLl9hZHZhbmNlKCk7XG5cbiAgICAvLyByZWFkIHtcbiAgICBpZiAodGhpcy5fcGVlay50eXBlICE9PSBsZXguVG9rZW5UeXBlLkVYUEFOU0lPTl9DQVNFX0VYUF9TVEFSVCkge1xuICAgICAgdGhpcy5lcnJvcnMucHVzaChcbiAgICAgICAgICBUcmVlRXJyb3IuY3JlYXRlKG51bGwsIHRoaXMuX3BlZWsuc291cmNlU3BhbiwgYEludmFsaWQgSUNVIG1lc3NhZ2UuIE1pc3NpbmcgJ3snLmApKTtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIC8vIHJlYWQgdW50aWwgfVxuICAgIGNvbnN0IHN0YXJ0ID0gdGhpcy5fYWR2YW5jZSgpO1xuXG4gICAgY29uc3QgZXhwID0gdGhpcy5fY29sbGVjdEV4cGFuc2lvbkV4cFRva2VucyhzdGFydCk7XG4gICAgaWYgKCFleHApIHJldHVybiBudWxsO1xuXG4gICAgY29uc3QgZW5kID0gdGhpcy5fYWR2YW5jZSgpO1xuICAgIGV4cC5wdXNoKG5ldyBsZXguVG9rZW4obGV4LlRva2VuVHlwZS5FT0YsIFtdLCBlbmQuc291cmNlU3BhbikpO1xuXG4gICAgLy8gcGFyc2UgZXZlcnl0aGluZyBpbiBiZXR3ZWVuIHsgYW5kIH1cbiAgICBjb25zdCBleHBhbnNpb25DYXNlUGFyc2VyID0gbmV3IF9UcmVlQnVpbGRlcihleHAsIHRoaXMuZ2V0VGFnRGVmaW5pdGlvbik7XG4gICAgZXhwYW5zaW9uQ2FzZVBhcnNlci5idWlsZCgpO1xuICAgIGlmIChleHBhbnNpb25DYXNlUGFyc2VyLmVycm9ycy5sZW5ndGggPiAwKSB7XG4gICAgICB0aGlzLmVycm9ycyA9IHRoaXMuZXJyb3JzLmNvbmNhdChleHBhbnNpb25DYXNlUGFyc2VyLmVycm9ycyk7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICBjb25zdCBzb3VyY2VTcGFuID0gbmV3IFBhcnNlU291cmNlU3Bhbih2YWx1ZS5zb3VyY2VTcGFuLnN0YXJ0LCBlbmQuc291cmNlU3Bhbi5lbmQpO1xuICAgIGNvbnN0IGV4cFNvdXJjZVNwYW4gPSBuZXcgUGFyc2VTb3VyY2VTcGFuKHN0YXJ0LnNvdXJjZVNwYW4uc3RhcnQsIGVuZC5zb3VyY2VTcGFuLmVuZCk7XG4gICAgcmV0dXJuIG5ldyBodG1sLkV4cGFuc2lvbkNhc2UoXG4gICAgICAgIHZhbHVlLnBhcnRzWzBdLCBleHBhbnNpb25DYXNlUGFyc2VyLnJvb3ROb2Rlcywgc291cmNlU3BhbiwgdmFsdWUuc291cmNlU3BhbiwgZXhwU291cmNlU3Bhbik7XG4gIH1cblxuICBwcml2YXRlIF9jb2xsZWN0RXhwYW5zaW9uRXhwVG9rZW5zKHN0YXJ0OiBsZXguVG9rZW4pOiBsZXguVG9rZW5bXXxudWxsIHtcbiAgICBjb25zdCBleHA6IGxleC5Ub2tlbltdID0gW107XG4gICAgY29uc3QgZXhwYW5zaW9uRm9ybVN0YWNrID0gW2xleC5Ub2tlblR5cGUuRVhQQU5TSU9OX0NBU0VfRVhQX1NUQVJUXTtcblxuICAgIHdoaWxlICh0cnVlKSB7XG4gICAgICBpZiAodGhpcy5fcGVlay50eXBlID09PSBsZXguVG9rZW5UeXBlLkVYUEFOU0lPTl9GT1JNX1NUQVJUIHx8XG4gICAgICAgICAgdGhpcy5fcGVlay50eXBlID09PSBsZXguVG9rZW5UeXBlLkVYUEFOU0lPTl9DQVNFX0VYUF9TVEFSVCkge1xuICAgICAgICBleHBhbnNpb25Gb3JtU3RhY2sucHVzaCh0aGlzLl9wZWVrLnR5cGUpO1xuICAgICAgfVxuXG4gICAgICBpZiAodGhpcy5fcGVlay50eXBlID09PSBsZXguVG9rZW5UeXBlLkVYUEFOU0lPTl9DQVNFX0VYUF9FTkQpIHtcbiAgICAgICAgaWYgKGxhc3RPblN0YWNrKGV4cGFuc2lvbkZvcm1TdGFjaywgbGV4LlRva2VuVHlwZS5FWFBBTlNJT05fQ0FTRV9FWFBfU1RBUlQpKSB7XG4gICAgICAgICAgZXhwYW5zaW9uRm9ybVN0YWNrLnBvcCgpO1xuICAgICAgICAgIGlmIChleHBhbnNpb25Gb3JtU3RhY2subGVuZ3RoID09IDApIHJldHVybiBleHA7XG5cbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICB0aGlzLmVycm9ycy5wdXNoKFxuICAgICAgICAgICAgICBUcmVlRXJyb3IuY3JlYXRlKG51bGwsIHN0YXJ0LnNvdXJjZVNwYW4sIGBJbnZhbGlkIElDVSBtZXNzYWdlLiBNaXNzaW5nICd9Jy5gKSk7XG4gICAgICAgICAgcmV0dXJuIG51bGw7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgaWYgKHRoaXMuX3BlZWsudHlwZSA9PT0gbGV4LlRva2VuVHlwZS5FWFBBTlNJT05fRk9STV9FTkQpIHtcbiAgICAgICAgaWYgKGxhc3RPblN0YWNrKGV4cGFuc2lvbkZvcm1TdGFjaywgbGV4LlRva2VuVHlwZS5FWFBBTlNJT05fRk9STV9TVEFSVCkpIHtcbiAgICAgICAgICBleHBhbnNpb25Gb3JtU3RhY2sucG9wKCk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdGhpcy5lcnJvcnMucHVzaChcbiAgICAgICAgICAgICAgVHJlZUVycm9yLmNyZWF0ZShudWxsLCBzdGFydC5zb3VyY2VTcGFuLCBgSW52YWxpZCBJQ1UgbWVzc2FnZS4gTWlzc2luZyAnfScuYCkpO1xuICAgICAgICAgIHJldHVybiBudWxsO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIGlmICh0aGlzLl9wZWVrLnR5cGUgPT09IGxleC5Ub2tlblR5cGUuRU9GKSB7XG4gICAgICAgIHRoaXMuZXJyb3JzLnB1c2goXG4gICAgICAgICAgICBUcmVlRXJyb3IuY3JlYXRlKG51bGwsIHN0YXJ0LnNvdXJjZVNwYW4sIGBJbnZhbGlkIElDVSBtZXNzYWdlLiBNaXNzaW5nICd9Jy5gKSk7XG4gICAgICAgIHJldHVybiBudWxsO1xuICAgICAgfVxuXG4gICAgICBleHAucHVzaCh0aGlzLl9hZHZhbmNlKCkpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX2NvbnN1bWVUZXh0KHRva2VuOiBsZXguVG9rZW4pIHtcbiAgICBsZXQgdGV4dCA9IHRva2VuLnBhcnRzWzBdO1xuICAgIGlmICh0ZXh0Lmxlbmd0aCA+IDAgJiYgdGV4dFswXSA9PSAnXFxuJykge1xuICAgICAgY29uc3QgcGFyZW50ID0gdGhpcy5fZ2V0UGFyZW50RWxlbWVudCgpO1xuICAgICAgaWYgKHBhcmVudCAhPSBudWxsICYmIHBhcmVudC5jaGlsZHJlbi5sZW5ndGggPT0gMCAmJlxuICAgICAgICAgIHRoaXMuZ2V0VGFnRGVmaW5pdGlvbihwYXJlbnQubmFtZSkuaWdub3JlRmlyc3RMZikge1xuICAgICAgICB0ZXh0ID0gdGV4dC5zdWJzdHJpbmcoMSk7XG4gICAgICB9XG4gICAgfVxuXG4gICAgaWYgKHRleHQubGVuZ3RoID4gMCkge1xuICAgICAgdGhpcy5fYWRkVG9QYXJlbnQobmV3IGh0bWwuVGV4dCh0ZXh0LCB0b2tlbi5zb3VyY2VTcGFuKSk7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBfY2xvc2VWb2lkRWxlbWVudCgpOiB2b2lkIHtcbiAgICBjb25zdCBlbCA9IHRoaXMuX2dldFBhcmVudEVsZW1lbnQoKTtcbiAgICBpZiAoZWwgJiYgdGhpcy5nZXRUYWdEZWZpbml0aW9uKGVsLm5hbWUpLmlzVm9pZCkge1xuICAgICAgdGhpcy5fZWxlbWVudFN0YWNrLnBvcCgpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX2NvbnN1bWVTdGFydFRhZyhzdGFydFRhZ1Rva2VuOiBsZXguVG9rZW4pIHtcbiAgICBjb25zdCBwcmVmaXggPSBzdGFydFRhZ1Rva2VuLnBhcnRzWzBdO1xuICAgIGNvbnN0IG5hbWUgPSBzdGFydFRhZ1Rva2VuLnBhcnRzWzFdO1xuICAgIGNvbnN0IGF0dHJzOiBodG1sLkF0dHJpYnV0ZVtdID0gW107XG4gICAgd2hpbGUgKHRoaXMuX3BlZWsudHlwZSA9PT0gbGV4LlRva2VuVHlwZS5BVFRSX05BTUUpIHtcbiAgICAgIGF0dHJzLnB1c2godGhpcy5fY29uc3VtZUF0dHIodGhpcy5fYWR2YW5jZSgpKSk7XG4gICAgfVxuICAgIGNvbnN0IGZ1bGxOYW1lID0gdGhpcy5fZ2V0RWxlbWVudEZ1bGxOYW1lKHByZWZpeCwgbmFtZSwgdGhpcy5fZ2V0UGFyZW50RWxlbWVudCgpKTtcbiAgICBsZXQgc2VsZkNsb3NpbmcgPSBmYWxzZTtcbiAgICAvLyBOb3RlOiBUaGVyZSBjb3VsZCBoYXZlIGJlZW4gYSB0b2tlbml6ZXIgZXJyb3JcbiAgICAvLyBzbyB0aGF0IHdlIGRvbid0IGdldCBhIHRva2VuIGZvciB0aGUgZW5kIHRhZy4uLlxuICAgIGlmICh0aGlzLl9wZWVrLnR5cGUgPT09IGxleC5Ub2tlblR5cGUuVEFHX09QRU5fRU5EX1ZPSUQpIHtcbiAgICAgIHRoaXMuX2FkdmFuY2UoKTtcbiAgICAgIHNlbGZDbG9zaW5nID0gdHJ1ZTtcbiAgICAgIGNvbnN0IHRhZ0RlZiA9IHRoaXMuZ2V0VGFnRGVmaW5pdGlvbihmdWxsTmFtZSk7XG4gICAgICBpZiAoISh0YWdEZWYuY2FuU2VsZkNsb3NlIHx8IGdldE5zUHJlZml4KGZ1bGxOYW1lKSAhPT0gbnVsbCB8fCB0YWdEZWYuaXNWb2lkKSkge1xuICAgICAgICB0aGlzLmVycm9ycy5wdXNoKFRyZWVFcnJvci5jcmVhdGUoXG4gICAgICAgICAgICBmdWxsTmFtZSwgc3RhcnRUYWdUb2tlbi5zb3VyY2VTcGFuLFxuICAgICAgICAgICAgYE9ubHkgdm9pZCBhbmQgZm9yZWlnbiBlbGVtZW50cyBjYW4gYmUgc2VsZiBjbG9zZWQgXCIke3N0YXJ0VGFnVG9rZW4ucGFydHNbMV19XCJgKSk7XG4gICAgICB9XG4gICAgfSBlbHNlIGlmICh0aGlzLl9wZWVrLnR5cGUgPT09IGxleC5Ub2tlblR5cGUuVEFHX09QRU5fRU5EKSB7XG4gICAgICB0aGlzLl9hZHZhbmNlKCk7XG4gICAgICBzZWxmQ2xvc2luZyA9IGZhbHNlO1xuICAgIH1cbiAgICBjb25zdCBlbmQgPSB0aGlzLl9wZWVrLnNvdXJjZVNwYW4uc3RhcnQ7XG4gICAgY29uc3Qgc3BhbiA9IG5ldyBQYXJzZVNvdXJjZVNwYW4oc3RhcnRUYWdUb2tlbi5zb3VyY2VTcGFuLnN0YXJ0LCBlbmQpO1xuICAgIGNvbnN0IGVsID0gbmV3IGh0bWwuRWxlbWVudChmdWxsTmFtZSwgYXR0cnMsIFtdLCBzcGFuLCBzcGFuLCB1bmRlZmluZWQpO1xuICAgIHRoaXMuX3B1c2hFbGVtZW50KGVsKTtcbiAgICBpZiAoc2VsZkNsb3NpbmcpIHtcbiAgICAgIC8vIEVsZW1lbnRzIHRoYXQgYXJlIHNlbGYtY2xvc2VkIGhhdmUgdGhlaXIgYGVuZFNvdXJjZVNwYW5gIHNldCB0byB0aGUgZnVsbCBzcGFuLCBhcyB0aGVcbiAgICAgIC8vIGVsZW1lbnQgc3RhcnQgdGFnIGFsc28gcmVwcmVzZW50cyB0aGUgZW5kIHRhZy5cbiAgICAgIHRoaXMuX3BvcEVsZW1lbnQoZnVsbE5hbWUsIHNwYW4pO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX3B1c2hFbGVtZW50KGVsOiBodG1sLkVsZW1lbnQpIHtcbiAgICBjb25zdCBwYXJlbnRFbCA9IHRoaXMuX2dldFBhcmVudEVsZW1lbnQoKTtcblxuICAgIGlmIChwYXJlbnRFbCAmJiB0aGlzLmdldFRhZ0RlZmluaXRpb24ocGFyZW50RWwubmFtZSkuaXNDbG9zZWRCeUNoaWxkKGVsLm5hbWUpKSB7XG4gICAgICB0aGlzLl9lbGVtZW50U3RhY2sucG9wKCk7XG4gICAgfVxuXG4gICAgdGhpcy5fYWRkVG9QYXJlbnQoZWwpO1xuICAgIHRoaXMuX2VsZW1lbnRTdGFjay5wdXNoKGVsKTtcbiAgfVxuXG4gIHByaXZhdGUgX2NvbnN1bWVFbmRUYWcoZW5kVGFnVG9rZW46IGxleC5Ub2tlbikge1xuICAgIGNvbnN0IGZ1bGxOYW1lID0gdGhpcy5fZ2V0RWxlbWVudEZ1bGxOYW1lKFxuICAgICAgICBlbmRUYWdUb2tlbi5wYXJ0c1swXSwgZW5kVGFnVG9rZW4ucGFydHNbMV0sIHRoaXMuX2dldFBhcmVudEVsZW1lbnQoKSk7XG5cbiAgICBpZiAodGhpcy5nZXRUYWdEZWZpbml0aW9uKGZ1bGxOYW1lKS5pc1ZvaWQpIHtcbiAgICAgIHRoaXMuZXJyb3JzLnB1c2goVHJlZUVycm9yLmNyZWF0ZShcbiAgICAgICAgICBmdWxsTmFtZSwgZW5kVGFnVG9rZW4uc291cmNlU3BhbixcbiAgICAgICAgICBgVm9pZCBlbGVtZW50cyBkbyBub3QgaGF2ZSBlbmQgdGFncyBcIiR7ZW5kVGFnVG9rZW4ucGFydHNbMV19XCJgKSk7XG4gICAgfSBlbHNlIGlmICghdGhpcy5fcG9wRWxlbWVudChmdWxsTmFtZSwgZW5kVGFnVG9rZW4uc291cmNlU3BhbikpIHtcbiAgICAgIGNvbnN0IGVyck1zZyA9IGBVbmV4cGVjdGVkIGNsb3NpbmcgdGFnIFwiJHtcbiAgICAgICAgICBmdWxsTmFtZX1cIi4gSXQgbWF5IGhhcHBlbiB3aGVuIHRoZSB0YWcgaGFzIGFscmVhZHkgYmVlbiBjbG9zZWQgYnkgYW5vdGhlciB0YWcuIEZvciBtb3JlIGluZm8gc2VlIGh0dHBzOi8vd3d3LnczLm9yZy9UUi9odG1sNS9zeW50YXguaHRtbCNjbG9zaW5nLWVsZW1lbnRzLXRoYXQtaGF2ZS1pbXBsaWVkLWVuZC10YWdzYDtcbiAgICAgIHRoaXMuZXJyb3JzLnB1c2goVHJlZUVycm9yLmNyZWF0ZShmdWxsTmFtZSwgZW5kVGFnVG9rZW4uc291cmNlU3BhbiwgZXJyTXNnKSk7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBfcG9wRWxlbWVudChmdWxsTmFtZTogc3RyaW5nLCBlbmRTb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4pOiBib29sZWFuIHtcbiAgICBmb3IgKGxldCBzdGFja0luZGV4ID0gdGhpcy5fZWxlbWVudFN0YWNrLmxlbmd0aCAtIDE7IHN0YWNrSW5kZXggPj0gMDsgc3RhY2tJbmRleC0tKSB7XG4gICAgICBjb25zdCBlbCA9IHRoaXMuX2VsZW1lbnRTdGFja1tzdGFja0luZGV4XTtcbiAgICAgIGlmIChlbC5uYW1lID09IGZ1bGxOYW1lKSB7XG4gICAgICAgIC8vIFJlY29yZCB0aGUgcGFyc2Ugc3BhbiB3aXRoIHRoZSBlbGVtZW50IHRoYXQgaXMgYmVpbmcgY2xvc2VkLiBBbnkgZWxlbWVudHMgdGhhdCBhcmVcbiAgICAgICAgLy8gcmVtb3ZlZCBmcm9tIHRoZSBlbGVtZW50IHN0YWNrIGF0IHRoaXMgcG9pbnQgYXJlIGNsb3NlZCBpbXBsaWNpdGx5LCBzbyB0aGV5IHdvbid0IGdldFxuICAgICAgICAvLyBhbiBlbmQgc291cmNlIHNwYW4gKGFzIHRoZXJlIGlzIG5vIGV4cGxpY2l0IGNsb3NpbmcgZWxlbWVudCkuXG4gICAgICAgIGVsLmVuZFNvdXJjZVNwYW4gPSBlbmRTb3VyY2VTcGFuO1xuXG4gICAgICAgIHRoaXMuX2VsZW1lbnRTdGFjay5zcGxpY2Uoc3RhY2tJbmRleCwgdGhpcy5fZWxlbWVudFN0YWNrLmxlbmd0aCAtIHN0YWNrSW5kZXgpO1xuICAgICAgICByZXR1cm4gdHJ1ZTtcbiAgICAgIH1cblxuICAgICAgaWYgKCF0aGlzLmdldFRhZ0RlZmluaXRpb24oZWwubmFtZSkuY2xvc2VkQnlQYXJlbnQpIHtcbiAgICAgICAgcmV0dXJuIGZhbHNlO1xuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cblxuICBwcml2YXRlIF9jb25zdW1lQXR0cihhdHRyTmFtZTogbGV4LlRva2VuKTogaHRtbC5BdHRyaWJ1dGUge1xuICAgIGNvbnN0IGZ1bGxOYW1lID0gbWVyZ2VOc0FuZE5hbWUoYXR0ck5hbWUucGFydHNbMF0sIGF0dHJOYW1lLnBhcnRzWzFdKTtcbiAgICBsZXQgZW5kID0gYXR0ck5hbWUuc291cmNlU3Bhbi5lbmQ7XG4gICAgbGV0IHZhbHVlID0gJyc7XG4gICAgbGV0IHZhbHVlU3BhbjogUGFyc2VTb3VyY2VTcGFuID0gdW5kZWZpbmVkITtcbiAgICBpZiAodGhpcy5fcGVlay50eXBlID09PSBsZXguVG9rZW5UeXBlLkFUVFJfUVVPVEUpIHtcbiAgICAgIHRoaXMuX2FkdmFuY2UoKTtcbiAgICB9XG4gICAgaWYgKHRoaXMuX3BlZWsudHlwZSA9PT0gbGV4LlRva2VuVHlwZS5BVFRSX1ZBTFVFKSB7XG4gICAgICBjb25zdCB2YWx1ZVRva2VuID0gdGhpcy5fYWR2YW5jZSgpO1xuICAgICAgdmFsdWUgPSB2YWx1ZVRva2VuLnBhcnRzWzBdO1xuICAgICAgZW5kID0gdmFsdWVUb2tlbi5zb3VyY2VTcGFuLmVuZDtcbiAgICAgIHZhbHVlU3BhbiA9IHZhbHVlVG9rZW4uc291cmNlU3BhbjtcbiAgICB9XG4gICAgaWYgKHRoaXMuX3BlZWsudHlwZSA9PT0gbGV4LlRva2VuVHlwZS5BVFRSX1FVT1RFKSB7XG4gICAgICBjb25zdCBxdW90ZVRva2VuID0gdGhpcy5fYWR2YW5jZSgpO1xuICAgICAgZW5kID0gcXVvdGVUb2tlbi5zb3VyY2VTcGFuLmVuZDtcbiAgICB9XG4gICAgcmV0dXJuIG5ldyBodG1sLkF0dHJpYnV0ZShcbiAgICAgICAgZnVsbE5hbWUsIHZhbHVlLCBuZXcgUGFyc2VTb3VyY2VTcGFuKGF0dHJOYW1lLnNvdXJjZVNwYW4uc3RhcnQsIGVuZCksIHZhbHVlU3Bhbik7XG4gIH1cblxuICBwcml2YXRlIF9nZXRQYXJlbnRFbGVtZW50KCk6IGh0bWwuRWxlbWVudHxudWxsIHtcbiAgICByZXR1cm4gdGhpcy5fZWxlbWVudFN0YWNrLmxlbmd0aCA+IDAgPyB0aGlzLl9lbGVtZW50U3RhY2tbdGhpcy5fZWxlbWVudFN0YWNrLmxlbmd0aCAtIDFdIDogbnVsbDtcbiAgfVxuXG4gIHByaXZhdGUgX2FkZFRvUGFyZW50KG5vZGU6IGh0bWwuTm9kZSkge1xuICAgIGNvbnN0IHBhcmVudCA9IHRoaXMuX2dldFBhcmVudEVsZW1lbnQoKTtcbiAgICBpZiAocGFyZW50ICE9IG51bGwpIHtcbiAgICAgIHBhcmVudC5jaGlsZHJlbi5wdXNoKG5vZGUpO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLnJvb3ROb2Rlcy5wdXNoKG5vZGUpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX2dldEVsZW1lbnRGdWxsTmFtZShwcmVmaXg6IHN0cmluZywgbG9jYWxOYW1lOiBzdHJpbmcsIHBhcmVudEVsZW1lbnQ6IGh0bWwuRWxlbWVudHxudWxsKTpcbiAgICAgIHN0cmluZyB7XG4gICAgaWYgKHByZWZpeCA9PT0gJycpIHtcbiAgICAgIHByZWZpeCA9IHRoaXMuZ2V0VGFnRGVmaW5pdGlvbihsb2NhbE5hbWUpLmltcGxpY2l0TmFtZXNwYWNlUHJlZml4IHx8ICcnO1xuICAgICAgaWYgKHByZWZpeCA9PT0gJycgJiYgcGFyZW50RWxlbWVudCAhPSBudWxsKSB7XG4gICAgICAgIHByZWZpeCA9IGdldE5zUHJlZml4KHBhcmVudEVsZW1lbnQubmFtZSk7XG4gICAgICB9XG4gICAgfVxuXG4gICAgcmV0dXJuIG1lcmdlTnNBbmROYW1lKHByZWZpeCwgbG9jYWxOYW1lKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBsYXN0T25TdGFjayhzdGFjazogYW55W10sIGVsZW1lbnQ6IGFueSk6IGJvb2xlYW4ge1xuICByZXR1cm4gc3RhY2subGVuZ3RoID4gMCAmJiBzdGFja1tzdGFjay5sZW5ndGggLSAxXSA9PT0gZWxlbWVudDtcbn1cbiJdfQ==