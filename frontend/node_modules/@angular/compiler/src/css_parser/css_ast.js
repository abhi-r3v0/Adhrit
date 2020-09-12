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
        define("@angular/compiler/src/css_parser/css_ast", ["require", "exports", "tslib", "@angular/compiler/src/css_parser/css_lexer"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.mergeTokens = exports.CssUnknownTokenListAst = exports.CssUnknownRuleAst = exports.CssStyleSheetAst = exports.CssStylesBlockAst = exports.CssBlockAst = exports.CssPseudoSelectorAst = exports.CssSimpleSelectorAst = exports.CssSelectorAst = exports.CssSelectorPartAst = exports.CssDefinitionAst = exports.CssSelectorRuleAst = exports.CssInlineRuleAst = exports.CssAtRulePredicateAst = exports.CssMediaQueryRuleAst = exports.CssBlockDefinitionRuleAst = exports.CssKeyframeDefinitionAst = exports.CssKeyframeRuleAst = exports.CssBlockRuleAst = exports.CssRuleAst = exports.CssStyleValueAst = exports.CssAst = exports.BlockType = void 0;
    var tslib_1 = require("tslib");
    var css_lexer_1 = require("@angular/compiler/src/css_parser/css_lexer");
    var BlockType;
    (function (BlockType) {
        BlockType[BlockType["Import"] = 0] = "Import";
        BlockType[BlockType["Charset"] = 1] = "Charset";
        BlockType[BlockType["Namespace"] = 2] = "Namespace";
        BlockType[BlockType["Supports"] = 3] = "Supports";
        BlockType[BlockType["Keyframes"] = 4] = "Keyframes";
        BlockType[BlockType["MediaQuery"] = 5] = "MediaQuery";
        BlockType[BlockType["Selector"] = 6] = "Selector";
        BlockType[BlockType["FontFace"] = 7] = "FontFace";
        BlockType[BlockType["Page"] = 8] = "Page";
        BlockType[BlockType["Document"] = 9] = "Document";
        BlockType[BlockType["Viewport"] = 10] = "Viewport";
        BlockType[BlockType["Unsupported"] = 11] = "Unsupported";
    })(BlockType = exports.BlockType || (exports.BlockType = {}));
    var CssAst = /** @class */ (function () {
        function CssAst(location) {
            this.location = location;
        }
        Object.defineProperty(CssAst.prototype, "start", {
            get: function () {
                return this.location.start;
            },
            enumerable: false,
            configurable: true
        });
        Object.defineProperty(CssAst.prototype, "end", {
            get: function () {
                return this.location.end;
            },
            enumerable: false,
            configurable: true
        });
        return CssAst;
    }());
    exports.CssAst = CssAst;
    var CssStyleValueAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssStyleValueAst, _super);
        function CssStyleValueAst(location, tokens, strValue) {
            var _this = _super.call(this, location) || this;
            _this.tokens = tokens;
            _this.strValue = strValue;
            return _this;
        }
        CssStyleValueAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssValue(this);
        };
        return CssStyleValueAst;
    }(CssAst));
    exports.CssStyleValueAst = CssStyleValueAst;
    var CssRuleAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssRuleAst, _super);
        function CssRuleAst(location) {
            return _super.call(this, location) || this;
        }
        return CssRuleAst;
    }(CssAst));
    exports.CssRuleAst = CssRuleAst;
    var CssBlockRuleAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssBlockRuleAst, _super);
        function CssBlockRuleAst(location, type, block, name) {
            if (name === void 0) { name = null; }
            var _this = _super.call(this, location) || this;
            _this.location = location;
            _this.type = type;
            _this.block = block;
            _this.name = name;
            return _this;
        }
        CssBlockRuleAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssBlock(this.block, context);
        };
        return CssBlockRuleAst;
    }(CssRuleAst));
    exports.CssBlockRuleAst = CssBlockRuleAst;
    var CssKeyframeRuleAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssKeyframeRuleAst, _super);
        function CssKeyframeRuleAst(location, name, block) {
            return _super.call(this, location, BlockType.Keyframes, block, name) || this;
        }
        CssKeyframeRuleAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssKeyframeRule(this, context);
        };
        return CssKeyframeRuleAst;
    }(CssBlockRuleAst));
    exports.CssKeyframeRuleAst = CssKeyframeRuleAst;
    var CssKeyframeDefinitionAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssKeyframeDefinitionAst, _super);
        function CssKeyframeDefinitionAst(location, steps, block) {
            var _this = _super.call(this, location, BlockType.Keyframes, block, mergeTokens(steps, ',')) || this;
            _this.steps = steps;
            return _this;
        }
        CssKeyframeDefinitionAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssKeyframeDefinition(this, context);
        };
        return CssKeyframeDefinitionAst;
    }(CssBlockRuleAst));
    exports.CssKeyframeDefinitionAst = CssKeyframeDefinitionAst;
    var CssBlockDefinitionRuleAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssBlockDefinitionRuleAst, _super);
        function CssBlockDefinitionRuleAst(location, strValue, type, query, block) {
            var _this = _super.call(this, location, type, block) || this;
            _this.strValue = strValue;
            _this.query = query;
            var firstCssToken = query.tokens[0];
            _this.name = new css_lexer_1.CssToken(firstCssToken.index, firstCssToken.column, firstCssToken.line, css_lexer_1.CssTokenType.Identifier, _this.strValue);
            return _this;
        }
        CssBlockDefinitionRuleAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssBlock(this.block, context);
        };
        return CssBlockDefinitionRuleAst;
    }(CssBlockRuleAst));
    exports.CssBlockDefinitionRuleAst = CssBlockDefinitionRuleAst;
    var CssMediaQueryRuleAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssMediaQueryRuleAst, _super);
        function CssMediaQueryRuleAst(location, strValue, query, block) {
            return _super.call(this, location, strValue, BlockType.MediaQuery, query, block) || this;
        }
        CssMediaQueryRuleAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssMediaQueryRule(this, context);
        };
        return CssMediaQueryRuleAst;
    }(CssBlockDefinitionRuleAst));
    exports.CssMediaQueryRuleAst = CssMediaQueryRuleAst;
    var CssAtRulePredicateAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssAtRulePredicateAst, _super);
        function CssAtRulePredicateAst(location, strValue, tokens) {
            var _this = _super.call(this, location) || this;
            _this.strValue = strValue;
            _this.tokens = tokens;
            return _this;
        }
        CssAtRulePredicateAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssAtRulePredicate(this, context);
        };
        return CssAtRulePredicateAst;
    }(CssAst));
    exports.CssAtRulePredicateAst = CssAtRulePredicateAst;
    var CssInlineRuleAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssInlineRuleAst, _super);
        function CssInlineRuleAst(location, type, value) {
            var _this = _super.call(this, location) || this;
            _this.type = type;
            _this.value = value;
            return _this;
        }
        CssInlineRuleAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssInlineRule(this, context);
        };
        return CssInlineRuleAst;
    }(CssRuleAst));
    exports.CssInlineRuleAst = CssInlineRuleAst;
    var CssSelectorRuleAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssSelectorRuleAst, _super);
        function CssSelectorRuleAst(location, selectors, block) {
            var _this = _super.call(this, location, BlockType.Selector, block) || this;
            _this.selectors = selectors;
            _this.strValue = selectors.map(function (selector) { return selector.strValue; }).join(',');
            return _this;
        }
        CssSelectorRuleAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssSelectorRule(this, context);
        };
        return CssSelectorRuleAst;
    }(CssBlockRuleAst));
    exports.CssSelectorRuleAst = CssSelectorRuleAst;
    var CssDefinitionAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssDefinitionAst, _super);
        function CssDefinitionAst(location, property, value) {
            var _this = _super.call(this, location) || this;
            _this.property = property;
            _this.value = value;
            return _this;
        }
        CssDefinitionAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssDefinition(this, context);
        };
        return CssDefinitionAst;
    }(CssAst));
    exports.CssDefinitionAst = CssDefinitionAst;
    var CssSelectorPartAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssSelectorPartAst, _super);
        function CssSelectorPartAst(location) {
            return _super.call(this, location) || this;
        }
        return CssSelectorPartAst;
    }(CssAst));
    exports.CssSelectorPartAst = CssSelectorPartAst;
    var CssSelectorAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssSelectorAst, _super);
        function CssSelectorAst(location, selectorParts) {
            var _this = _super.call(this, location) || this;
            _this.selectorParts = selectorParts;
            _this.strValue = selectorParts.map(function (part) { return part.strValue; }).join('');
            return _this;
        }
        CssSelectorAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssSelector(this, context);
        };
        return CssSelectorAst;
    }(CssSelectorPartAst));
    exports.CssSelectorAst = CssSelectorAst;
    var CssSimpleSelectorAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssSimpleSelectorAst, _super);
        function CssSimpleSelectorAst(location, tokens, strValue, pseudoSelectors, operator) {
            var _this = _super.call(this, location) || this;
            _this.tokens = tokens;
            _this.strValue = strValue;
            _this.pseudoSelectors = pseudoSelectors;
            _this.operator = operator;
            return _this;
        }
        CssSimpleSelectorAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssSimpleSelector(this, context);
        };
        return CssSimpleSelectorAst;
    }(CssSelectorPartAst));
    exports.CssSimpleSelectorAst = CssSimpleSelectorAst;
    var CssPseudoSelectorAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssPseudoSelectorAst, _super);
        function CssPseudoSelectorAst(location, strValue, name, tokens, innerSelectors) {
            var _this = _super.call(this, location) || this;
            _this.strValue = strValue;
            _this.name = name;
            _this.tokens = tokens;
            _this.innerSelectors = innerSelectors;
            return _this;
        }
        CssPseudoSelectorAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssPseudoSelector(this, context);
        };
        return CssPseudoSelectorAst;
    }(CssSelectorPartAst));
    exports.CssPseudoSelectorAst = CssPseudoSelectorAst;
    var CssBlockAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssBlockAst, _super);
        function CssBlockAst(location, entries) {
            var _this = _super.call(this, location) || this;
            _this.entries = entries;
            return _this;
        }
        CssBlockAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssBlock(this, context);
        };
        return CssBlockAst;
    }(CssAst));
    exports.CssBlockAst = CssBlockAst;
    /*
     a style block is different from a standard block because it contains
     css prop:value definitions. A regular block can contain a list of Ast entries.
     */
    var CssStylesBlockAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssStylesBlockAst, _super);
        function CssStylesBlockAst(location, definitions) {
            var _this = _super.call(this, location, definitions) || this;
            _this.definitions = definitions;
            return _this;
        }
        CssStylesBlockAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssStylesBlock(this, context);
        };
        return CssStylesBlockAst;
    }(CssBlockAst));
    exports.CssStylesBlockAst = CssStylesBlockAst;
    var CssStyleSheetAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssStyleSheetAst, _super);
        function CssStyleSheetAst(location, rules) {
            var _this = _super.call(this, location) || this;
            _this.rules = rules;
            return _this;
        }
        CssStyleSheetAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssStyleSheet(this, context);
        };
        return CssStyleSheetAst;
    }(CssAst));
    exports.CssStyleSheetAst = CssStyleSheetAst;
    var CssUnknownRuleAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssUnknownRuleAst, _super);
        function CssUnknownRuleAst(location, ruleName, tokens) {
            var _this = _super.call(this, location) || this;
            _this.ruleName = ruleName;
            _this.tokens = tokens;
            return _this;
        }
        CssUnknownRuleAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssUnknownRule(this, context);
        };
        return CssUnknownRuleAst;
    }(CssRuleAst));
    exports.CssUnknownRuleAst = CssUnknownRuleAst;
    var CssUnknownTokenListAst = /** @class */ (function (_super) {
        tslib_1.__extends(CssUnknownTokenListAst, _super);
        function CssUnknownTokenListAst(location, name, tokens) {
            var _this = _super.call(this, location) || this;
            _this.name = name;
            _this.tokens = tokens;
            return _this;
        }
        CssUnknownTokenListAst.prototype.visit = function (visitor, context) {
            return visitor.visitCssUnknownTokenList(this, context);
        };
        return CssUnknownTokenListAst;
    }(CssRuleAst));
    exports.CssUnknownTokenListAst = CssUnknownTokenListAst;
    function mergeTokens(tokens, separator) {
        if (separator === void 0) { separator = ''; }
        var mainToken = tokens[0];
        var str = mainToken.strValue;
        for (var i = 1; i < tokens.length; i++) {
            str += separator + tokens[i].strValue;
        }
        return new css_lexer_1.CssToken(mainToken.index, mainToken.column, mainToken.line, mainToken.type, str);
    }
    exports.mergeTokens = mergeTokens;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY3NzX2FzdC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9jc3NfcGFyc2VyL2Nzc19hc3QudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUlILHdFQUFtRDtJQUVuRCxJQUFZLFNBYVg7SUFiRCxXQUFZLFNBQVM7UUFDbkIsNkNBQU0sQ0FBQTtRQUNOLCtDQUFPLENBQUE7UUFDUCxtREFBUyxDQUFBO1FBQ1QsaURBQVEsQ0FBQTtRQUNSLG1EQUFTLENBQUE7UUFDVCxxREFBVSxDQUFBO1FBQ1YsaURBQVEsQ0FBQTtRQUNSLGlEQUFRLENBQUE7UUFDUix5Q0FBSSxDQUFBO1FBQ0osaURBQVEsQ0FBQTtRQUNSLGtEQUFRLENBQUE7UUFDUix3REFBVyxDQUFBO0lBQ2IsQ0FBQyxFQWJXLFNBQVMsR0FBVCxpQkFBUyxLQUFULGlCQUFTLFFBYXBCO0lBcUJEO1FBQ0UsZ0JBQW1CLFFBQXlCO1lBQXpCLGFBQVEsR0FBUixRQUFRLENBQWlCO1FBQUcsQ0FBQztRQUNoRCxzQkFBSSx5QkFBSztpQkFBVDtnQkFDRSxPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMsS0FBSyxDQUFDO1lBQzdCLENBQUM7OztXQUFBO1FBQ0Qsc0JBQUksdUJBQUc7aUJBQVA7Z0JBQ0UsT0FBTyxJQUFJLENBQUMsUUFBUSxDQUFDLEdBQUcsQ0FBQztZQUMzQixDQUFDOzs7V0FBQTtRQUVILGFBQUM7SUFBRCxDQUFDLEFBVEQsSUFTQztJQVRxQix3QkFBTTtJQVc1QjtRQUFzQyw0Q0FBTTtRQUMxQywwQkFBWSxRQUF5QixFQUFTLE1BQWtCLEVBQVMsUUFBZ0I7WUFBekYsWUFDRSxrQkFBTSxRQUFRLENBQUMsU0FDaEI7WUFGNkMsWUFBTSxHQUFOLE1BQU0sQ0FBWTtZQUFTLGNBQVEsR0FBUixRQUFRLENBQVE7O1FBRXpGLENBQUM7UUFDRCxnQ0FBSyxHQUFMLFVBQU0sT0FBc0IsRUFBRSxPQUFhO1lBQ3pDLE9BQU8sT0FBTyxDQUFDLGFBQWEsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUNyQyxDQUFDO1FBQ0gsdUJBQUM7SUFBRCxDQUFDLEFBUEQsQ0FBc0MsTUFBTSxHQU8zQztJQVBZLDRDQUFnQjtJQVM3QjtRQUF5QyxzQ0FBTTtRQUM3QyxvQkFBWSxRQUF5QjttQkFDbkMsa0JBQU0sUUFBUSxDQUFDO1FBQ2pCLENBQUM7UUFDSCxpQkFBQztJQUFELENBQUMsQUFKRCxDQUF5QyxNQUFNLEdBSTlDO0lBSnFCLGdDQUFVO0lBTWhDO1FBQXFDLDJDQUFVO1FBQzdDLHlCQUNXLFFBQXlCLEVBQVMsSUFBZSxFQUFTLEtBQWtCLEVBQzVFLElBQTBCO1lBQTFCLHFCQUFBLEVBQUEsV0FBMEI7WUFGckMsWUFHRSxrQkFBTSxRQUFRLENBQUMsU0FDaEI7WUFIVSxjQUFRLEdBQVIsUUFBUSxDQUFpQjtZQUFTLFVBQUksR0FBSixJQUFJLENBQVc7WUFBUyxXQUFLLEdBQUwsS0FBSyxDQUFhO1lBQzVFLFVBQUksR0FBSixJQUFJLENBQXNCOztRQUVyQyxDQUFDO1FBQ0QsK0JBQUssR0FBTCxVQUFNLE9BQXNCLEVBQUUsT0FBYTtZQUN6QyxPQUFPLE9BQU8sQ0FBQyxhQUFhLENBQUMsSUFBSSxDQUFDLEtBQUssRUFBRSxPQUFPLENBQUMsQ0FBQztRQUNwRCxDQUFDO1FBQ0gsc0JBQUM7SUFBRCxDQUFDLEFBVEQsQ0FBcUMsVUFBVSxHQVM5QztJQVRZLDBDQUFlO0lBVzVCO1FBQXdDLDhDQUFlO1FBQ3JELDRCQUFZLFFBQXlCLEVBQUUsSUFBYyxFQUFFLEtBQWtCO21CQUN2RSxrQkFBTSxRQUFRLEVBQUUsU0FBUyxDQUFDLFNBQVMsRUFBRSxLQUFLLEVBQUUsSUFBSSxDQUFDO1FBQ25ELENBQUM7UUFDRCxrQ0FBSyxHQUFMLFVBQU0sT0FBc0IsRUFBRSxPQUFhO1lBQ3pDLE9BQU8sT0FBTyxDQUFDLG9CQUFvQixDQUFDLElBQUksRUFBRSxPQUFPLENBQUMsQ0FBQztRQUNyRCxDQUFDO1FBQ0gseUJBQUM7SUFBRCxDQUFDLEFBUEQsQ0FBd0MsZUFBZSxHQU90RDtJQVBZLGdEQUFrQjtJQVMvQjtRQUE4QyxvREFBZTtRQUMzRCxrQ0FBWSxRQUF5QixFQUFTLEtBQWlCLEVBQUUsS0FBa0I7WUFBbkYsWUFDRSxrQkFBTSxRQUFRLEVBQUUsU0FBUyxDQUFDLFNBQVMsRUFBRSxLQUFLLEVBQUUsV0FBVyxDQUFDLEtBQUssRUFBRSxHQUFHLENBQUMsQ0FBQyxTQUNyRTtZQUY2QyxXQUFLLEdBQUwsS0FBSyxDQUFZOztRQUUvRCxDQUFDO1FBQ0Qsd0NBQUssR0FBTCxVQUFNLE9BQXNCLEVBQUUsT0FBYTtZQUN6QyxPQUFPLE9BQU8sQ0FBQywwQkFBMEIsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFDM0QsQ0FBQztRQUNILCtCQUFDO0lBQUQsQ0FBQyxBQVBELENBQThDLGVBQWUsR0FPNUQ7SUFQWSw0REFBd0I7SUFTckM7UUFBK0MscURBQWU7UUFDNUQsbUNBQ0ksUUFBeUIsRUFBUyxRQUFnQixFQUFFLElBQWUsRUFDNUQsS0FBNEIsRUFBRSxLQUFrQjtZQUYzRCxZQUdFLGtCQUFNLFFBQVEsRUFBRSxJQUFJLEVBQUUsS0FBSyxDQUFDLFNBSzdCO1lBUHFDLGNBQVEsR0FBUixRQUFRLENBQVE7WUFDM0MsV0FBSyxHQUFMLEtBQUssQ0FBdUI7WUFFckMsSUFBTSxhQUFhLEdBQWEsS0FBSyxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQztZQUNoRCxLQUFJLENBQUMsSUFBSSxHQUFHLElBQUksb0JBQVEsQ0FDcEIsYUFBYSxDQUFDLEtBQUssRUFBRSxhQUFhLENBQUMsTUFBTSxFQUFFLGFBQWEsQ0FBQyxJQUFJLEVBQUUsd0JBQVksQ0FBQyxVQUFVLEVBQ3RGLEtBQUksQ0FBQyxRQUFRLENBQUMsQ0FBQzs7UUFDckIsQ0FBQztRQUNELHlDQUFLLEdBQUwsVUFBTSxPQUFzQixFQUFFLE9BQWE7WUFDekMsT0FBTyxPQUFPLENBQUMsYUFBYSxDQUFDLElBQUksQ0FBQyxLQUFLLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFDcEQsQ0FBQztRQUNILGdDQUFDO0lBQUQsQ0FBQyxBQWJELENBQStDLGVBQWUsR0FhN0Q7SUFiWSw4REFBeUI7SUFldEM7UUFBMEMsZ0RBQXlCO1FBQ2pFLDhCQUNJLFFBQXlCLEVBQUUsUUFBZ0IsRUFBRSxLQUE0QixFQUN6RSxLQUFrQjttQkFDcEIsa0JBQU0sUUFBUSxFQUFFLFFBQVEsRUFBRSxTQUFTLENBQUMsVUFBVSxFQUFFLEtBQUssRUFBRSxLQUFLLENBQUM7UUFDL0QsQ0FBQztRQUNELG9DQUFLLEdBQUwsVUFBTSxPQUFzQixFQUFFLE9BQWE7WUFDekMsT0FBTyxPQUFPLENBQUMsc0JBQXNCLENBQUMsSUFBSSxFQUFFLE9BQU8sQ0FBQyxDQUFDO1FBQ3ZELENBQUM7UUFDSCwyQkFBQztJQUFELENBQUMsQUFURCxDQUEwQyx5QkFBeUIsR0FTbEU7SUFUWSxvREFBb0I7SUFXakM7UUFBMkMsaURBQU07UUFDL0MsK0JBQVksUUFBeUIsRUFBUyxRQUFnQixFQUFTLE1BQWtCO1lBQXpGLFlBQ0Usa0JBQU0sUUFBUSxDQUFDLFNBQ2hCO1lBRjZDLGNBQVEsR0FBUixRQUFRLENBQVE7WUFBUyxZQUFNLEdBQU4sTUFBTSxDQUFZOztRQUV6RixDQUFDO1FBQ0QscUNBQUssR0FBTCxVQUFNLE9BQXNCLEVBQUUsT0FBYTtZQUN6QyxPQUFPLE9BQU8sQ0FBQyx1QkFBdUIsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFDeEQsQ0FBQztRQUNILDRCQUFDO0lBQUQsQ0FBQyxBQVBELENBQTJDLE1BQU0sR0FPaEQ7SUFQWSxzREFBcUI7SUFTbEM7UUFBc0MsNENBQVU7UUFDOUMsMEJBQVksUUFBeUIsRUFBUyxJQUFlLEVBQVMsS0FBdUI7WUFBN0YsWUFDRSxrQkFBTSxRQUFRLENBQUMsU0FDaEI7WUFGNkMsVUFBSSxHQUFKLElBQUksQ0FBVztZQUFTLFdBQUssR0FBTCxLQUFLLENBQWtCOztRQUU3RixDQUFDO1FBQ0QsZ0NBQUssR0FBTCxVQUFNLE9BQXNCLEVBQUUsT0FBYTtZQUN6QyxPQUFPLE9BQU8sQ0FBQyxrQkFBa0IsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFDbkQsQ0FBQztRQUNILHVCQUFDO0lBQUQsQ0FBQyxBQVBELENBQXNDLFVBQVUsR0FPL0M7SUFQWSw0Q0FBZ0I7SUFTN0I7UUFBd0MsOENBQWU7UUFHckQsNEJBQVksUUFBeUIsRUFBUyxTQUEyQixFQUFFLEtBQWtCO1lBQTdGLFlBQ0Usa0JBQU0sUUFBUSxFQUFFLFNBQVMsQ0FBQyxRQUFRLEVBQUUsS0FBSyxDQUFDLFNBRTNDO1lBSDZDLGVBQVMsR0FBVCxTQUFTLENBQWtCO1lBRXZFLEtBQUksQ0FBQyxRQUFRLEdBQUcsU0FBUyxDQUFDLEdBQUcsQ0FBQyxVQUFBLFFBQVEsSUFBSSxPQUFBLFFBQVEsQ0FBQyxRQUFRLEVBQWpCLENBQWlCLENBQUMsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLENBQUM7O1FBQ3pFLENBQUM7UUFDRCxrQ0FBSyxHQUFMLFVBQU0sT0FBc0IsRUFBRSxPQUFhO1lBQ3pDLE9BQU8sT0FBTyxDQUFDLG9CQUFvQixDQUFDLElBQUksRUFBRSxPQUFPLENBQUMsQ0FBQztRQUNyRCxDQUFDO1FBQ0gseUJBQUM7SUFBRCxDQUFDLEFBVkQsQ0FBd0MsZUFBZSxHQVV0RDtJQVZZLGdEQUFrQjtJQVkvQjtRQUFzQyw0Q0FBTTtRQUMxQywwQkFDSSxRQUF5QixFQUFTLFFBQWtCLEVBQVMsS0FBdUI7WUFEeEYsWUFFRSxrQkFBTSxRQUFRLENBQUMsU0FDaEI7WUFGcUMsY0FBUSxHQUFSLFFBQVEsQ0FBVTtZQUFTLFdBQUssR0FBTCxLQUFLLENBQWtCOztRQUV4RixDQUFDO1FBQ0QsZ0NBQUssR0FBTCxVQUFNLE9BQXNCLEVBQUUsT0FBYTtZQUN6QyxPQUFPLE9BQU8sQ0FBQyxrQkFBa0IsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFDbkQsQ0FBQztRQUNILHVCQUFDO0lBQUQsQ0FBQyxBQVJELENBQXNDLE1BQU0sR0FRM0M7SUFSWSw0Q0FBZ0I7SUFVN0I7UUFBaUQsOENBQU07UUFDckQsNEJBQVksUUFBeUI7bUJBQ25DLGtCQUFNLFFBQVEsQ0FBQztRQUNqQixDQUFDO1FBQ0gseUJBQUM7SUFBRCxDQUFDLEFBSkQsQ0FBaUQsTUFBTSxHQUl0RDtJQUpxQixnREFBa0I7SUFNeEM7UUFBb0MsMENBQWtCO1FBRXBELHdCQUFZLFFBQXlCLEVBQVMsYUFBcUM7WUFBbkYsWUFDRSxrQkFBTSxRQUFRLENBQUMsU0FFaEI7WUFINkMsbUJBQWEsR0FBYixhQUFhLENBQXdCO1lBRWpGLEtBQUksQ0FBQyxRQUFRLEdBQUcsYUFBYSxDQUFDLEdBQUcsQ0FBQyxVQUFBLElBQUksSUFBSSxPQUFBLElBQUksQ0FBQyxRQUFRLEVBQWIsQ0FBYSxDQUFDLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxDQUFDOztRQUNwRSxDQUFDO1FBQ0QsOEJBQUssR0FBTCxVQUFNLE9BQXNCLEVBQUUsT0FBYTtZQUN6QyxPQUFPLE9BQU8sQ0FBQyxnQkFBZ0IsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFDakQsQ0FBQztRQUNILHFCQUFDO0lBQUQsQ0FBQyxBQVRELENBQW9DLGtCQUFrQixHQVNyRDtJQVRZLHdDQUFjO0lBVzNCO1FBQTBDLGdEQUFrQjtRQUMxRCw4QkFDSSxRQUF5QixFQUFTLE1BQWtCLEVBQVMsUUFBZ0IsRUFDdEUsZUFBdUMsRUFBUyxRQUFrQjtZQUY3RSxZQUdFLGtCQUFNLFFBQVEsQ0FBQyxTQUNoQjtZQUhxQyxZQUFNLEdBQU4sTUFBTSxDQUFZO1lBQVMsY0FBUSxHQUFSLFFBQVEsQ0FBUTtZQUN0RSxxQkFBZSxHQUFmLGVBQWUsQ0FBd0I7WUFBUyxjQUFRLEdBQVIsUUFBUSxDQUFVOztRQUU3RSxDQUFDO1FBQ0Qsb0NBQUssR0FBTCxVQUFNLE9BQXNCLEVBQUUsT0FBYTtZQUN6QyxPQUFPLE9BQU8sQ0FBQyxzQkFBc0IsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFDdkQsQ0FBQztRQUNILDJCQUFDO0lBQUQsQ0FBQyxBQVRELENBQTBDLGtCQUFrQixHQVMzRDtJQVRZLG9EQUFvQjtJQVdqQztRQUEwQyxnREFBa0I7UUFDMUQsOEJBQ0ksUUFBeUIsRUFBUyxRQUFnQixFQUFTLElBQVksRUFDaEUsTUFBa0IsRUFBUyxjQUFnQztZQUZ0RSxZQUdFLGtCQUFNLFFBQVEsQ0FBQyxTQUNoQjtZQUhxQyxjQUFRLEdBQVIsUUFBUSxDQUFRO1lBQVMsVUFBSSxHQUFKLElBQUksQ0FBUTtZQUNoRSxZQUFNLEdBQU4sTUFBTSxDQUFZO1lBQVMsb0JBQWMsR0FBZCxjQUFjLENBQWtCOztRQUV0RSxDQUFDO1FBQ0Qsb0NBQUssR0FBTCxVQUFNLE9BQXNCLEVBQUUsT0FBYTtZQUN6QyxPQUFPLE9BQU8sQ0FBQyxzQkFBc0IsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFDdkQsQ0FBQztRQUNILDJCQUFDO0lBQUQsQ0FBQyxBQVRELENBQTBDLGtCQUFrQixHQVMzRDtJQVRZLG9EQUFvQjtJQVdqQztRQUFpQyx1Q0FBTTtRQUNyQyxxQkFBWSxRQUF5QixFQUFTLE9BQWlCO1lBQS9ELFlBQ0Usa0JBQU0sUUFBUSxDQUFDLFNBQ2hCO1lBRjZDLGFBQU8sR0FBUCxPQUFPLENBQVU7O1FBRS9ELENBQUM7UUFDRCwyQkFBSyxHQUFMLFVBQU0sT0FBc0IsRUFBRSxPQUFhO1lBQ3pDLE9BQU8sT0FBTyxDQUFDLGFBQWEsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFDOUMsQ0FBQztRQUNILGtCQUFDO0lBQUQsQ0FBQyxBQVBELENBQWlDLE1BQU0sR0FPdEM7SUFQWSxrQ0FBVztJQVN4Qjs7O09BR0c7SUFDSDtRQUF1Qyw2Q0FBVztRQUNoRCwyQkFBWSxRQUF5QixFQUFTLFdBQStCO1lBQTdFLFlBQ0Usa0JBQU0sUUFBUSxFQUFFLFdBQVcsQ0FBQyxTQUM3QjtZQUY2QyxpQkFBVyxHQUFYLFdBQVcsQ0FBb0I7O1FBRTdFLENBQUM7UUFDRCxpQ0FBSyxHQUFMLFVBQU0sT0FBc0IsRUFBRSxPQUFhO1lBQ3pDLE9BQU8sT0FBTyxDQUFDLG1CQUFtQixDQUFDLElBQUksRUFBRSxPQUFPLENBQUMsQ0FBQztRQUNwRCxDQUFDO1FBQ0gsd0JBQUM7SUFBRCxDQUFDLEFBUEQsQ0FBdUMsV0FBVyxHQU9qRDtJQVBZLDhDQUFpQjtJQVM5QjtRQUFzQyw0Q0FBTTtRQUMxQywwQkFBWSxRQUF5QixFQUFTLEtBQWU7WUFBN0QsWUFDRSxrQkFBTSxRQUFRLENBQUMsU0FDaEI7WUFGNkMsV0FBSyxHQUFMLEtBQUssQ0FBVTs7UUFFN0QsQ0FBQztRQUNELGdDQUFLLEdBQUwsVUFBTSxPQUFzQixFQUFFLE9BQWE7WUFDekMsT0FBTyxPQUFPLENBQUMsa0JBQWtCLENBQUMsSUFBSSxFQUFFLE9BQU8sQ0FBQyxDQUFDO1FBQ25ELENBQUM7UUFDSCx1QkFBQztJQUFELENBQUMsQUFQRCxDQUFzQyxNQUFNLEdBTzNDO0lBUFksNENBQWdCO0lBUzdCO1FBQXVDLDZDQUFVO1FBQy9DLDJCQUFZLFFBQXlCLEVBQVMsUUFBZ0IsRUFBUyxNQUFrQjtZQUF6RixZQUNFLGtCQUFNLFFBQVEsQ0FBQyxTQUNoQjtZQUY2QyxjQUFRLEdBQVIsUUFBUSxDQUFRO1lBQVMsWUFBTSxHQUFOLE1BQU0sQ0FBWTs7UUFFekYsQ0FBQztRQUNELGlDQUFLLEdBQUwsVUFBTSxPQUFzQixFQUFFLE9BQWE7WUFDekMsT0FBTyxPQUFPLENBQUMsbUJBQW1CLENBQUMsSUFBSSxFQUFFLE9BQU8sQ0FBQyxDQUFDO1FBQ3BELENBQUM7UUFDSCx3QkFBQztJQUFELENBQUMsQUFQRCxDQUF1QyxVQUFVLEdBT2hEO0lBUFksOENBQWlCO0lBUzlCO1FBQTRDLGtEQUFVO1FBQ3BELGdDQUFZLFFBQXlCLEVBQVMsSUFBWSxFQUFTLE1BQWtCO1lBQXJGLFlBQ0Usa0JBQU0sUUFBUSxDQUFDLFNBQ2hCO1lBRjZDLFVBQUksR0FBSixJQUFJLENBQVE7WUFBUyxZQUFNLEdBQU4sTUFBTSxDQUFZOztRQUVyRixDQUFDO1FBQ0Qsc0NBQUssR0FBTCxVQUFNLE9BQXNCLEVBQUUsT0FBYTtZQUN6QyxPQUFPLE9BQU8sQ0FBQyx3QkFBd0IsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFDekQsQ0FBQztRQUNILDZCQUFDO0lBQUQsQ0FBQyxBQVBELENBQTRDLFVBQVUsR0FPckQ7SUFQWSx3REFBc0I7SUFTbkMsU0FBZ0IsV0FBVyxDQUFDLE1BQWtCLEVBQUUsU0FBc0I7UUFBdEIsMEJBQUEsRUFBQSxjQUFzQjtRQUNwRSxJQUFNLFNBQVMsR0FBRyxNQUFNLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDNUIsSUFBSSxHQUFHLEdBQUcsU0FBUyxDQUFDLFFBQVEsQ0FBQztRQUM3QixLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsTUFBTSxDQUFDLE1BQU0sRUFBRSxDQUFDLEVBQUUsRUFBRTtZQUN0QyxHQUFHLElBQUksU0FBUyxHQUFHLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQyxRQUFRLENBQUM7U0FDdkM7UUFFRCxPQUFPLElBQUksb0JBQVEsQ0FBQyxTQUFTLENBQUMsS0FBSyxFQUFFLFNBQVMsQ0FBQyxNQUFNLEVBQUUsU0FBUyxDQUFDLElBQUksRUFBRSxTQUFTLENBQUMsSUFBSSxFQUFFLEdBQUcsQ0FBQyxDQUFDO0lBQzlGLENBQUM7SUFSRCxrQ0FRQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1BhcnNlTG9jYXRpb24sIFBhcnNlU291cmNlU3Bhbn0gZnJvbSAnLi4vcGFyc2VfdXRpbCc7XG5cbmltcG9ydCB7Q3NzVG9rZW4sIENzc1Rva2VuVHlwZX0gZnJvbSAnLi9jc3NfbGV4ZXInO1xuXG5leHBvcnQgZW51bSBCbG9ja1R5cGUge1xuICBJbXBvcnQsXG4gIENoYXJzZXQsXG4gIE5hbWVzcGFjZSxcbiAgU3VwcG9ydHMsXG4gIEtleWZyYW1lcyxcbiAgTWVkaWFRdWVyeSxcbiAgU2VsZWN0b3IsXG4gIEZvbnRGYWNlLFxuICBQYWdlLFxuICBEb2N1bWVudCxcbiAgVmlld3BvcnQsXG4gIFVuc3VwcG9ydGVkXG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgQ3NzQXN0VmlzaXRvciB7XG4gIHZpc2l0Q3NzVmFsdWUoYXN0OiBDc3NTdHlsZVZhbHVlQXN0LCBjb250ZXh0PzogYW55KTogYW55O1xuICB2aXNpdENzc0lubGluZVJ1bGUoYXN0OiBDc3NJbmxpbmVSdWxlQXN0LCBjb250ZXh0PzogYW55KTogYW55O1xuICB2aXNpdENzc0F0UnVsZVByZWRpY2F0ZShhc3Q6IENzc0F0UnVsZVByZWRpY2F0ZUFzdCwgY29udGV4dD86IGFueSk6IGFueTtcbiAgdmlzaXRDc3NLZXlmcmFtZVJ1bGUoYXN0OiBDc3NLZXlmcmFtZVJ1bGVBc3QsIGNvbnRleHQ/OiBhbnkpOiBhbnk7XG4gIHZpc2l0Q3NzS2V5ZnJhbWVEZWZpbml0aW9uKGFzdDogQ3NzS2V5ZnJhbWVEZWZpbml0aW9uQXN0LCBjb250ZXh0PzogYW55KTogYW55O1xuICB2aXNpdENzc01lZGlhUXVlcnlSdWxlKGFzdDogQ3NzTWVkaWFRdWVyeVJ1bGVBc3QsIGNvbnRleHQ/OiBhbnkpOiBhbnk7XG4gIHZpc2l0Q3NzU2VsZWN0b3JSdWxlKGFzdDogQ3NzU2VsZWN0b3JSdWxlQXN0LCBjb250ZXh0PzogYW55KTogYW55O1xuICB2aXNpdENzc1NlbGVjdG9yKGFzdDogQ3NzU2VsZWN0b3JBc3QsIGNvbnRleHQ/OiBhbnkpOiBhbnk7XG4gIHZpc2l0Q3NzU2ltcGxlU2VsZWN0b3IoYXN0OiBDc3NTaW1wbGVTZWxlY3RvckFzdCwgY29udGV4dD86IGFueSk6IGFueTtcbiAgdmlzaXRDc3NQc2V1ZG9TZWxlY3Rvcihhc3Q6IENzc1BzZXVkb1NlbGVjdG9yQXN0LCBjb250ZXh0PzogYW55KTogYW55O1xuICB2aXNpdENzc0RlZmluaXRpb24oYXN0OiBDc3NEZWZpbml0aW9uQXN0LCBjb250ZXh0PzogYW55KTogYW55O1xuICB2aXNpdENzc0Jsb2NrKGFzdDogQ3NzQmxvY2tBc3QsIGNvbnRleHQ/OiBhbnkpOiBhbnk7XG4gIHZpc2l0Q3NzU3R5bGVzQmxvY2soYXN0OiBDc3NTdHlsZXNCbG9ja0FzdCwgY29udGV4dD86IGFueSk6IGFueTtcbiAgdmlzaXRDc3NTdHlsZVNoZWV0KGFzdDogQ3NzU3R5bGVTaGVldEFzdCwgY29udGV4dD86IGFueSk6IGFueTtcbiAgdmlzaXRDc3NVbmtub3duUnVsZShhc3Q6IENzc1Vua25vd25SdWxlQXN0LCBjb250ZXh0PzogYW55KTogYW55O1xuICB2aXNpdENzc1Vua25vd25Ub2tlbkxpc3QoYXN0OiBDc3NVbmtub3duVG9rZW5MaXN0QXN0LCBjb250ZXh0PzogYW55KTogYW55O1xufVxuXG5leHBvcnQgYWJzdHJhY3QgY2xhc3MgQ3NzQXN0IHtcbiAgY29uc3RydWN0b3IocHVibGljIGxvY2F0aW9uOiBQYXJzZVNvdXJjZVNwYW4pIHt9XG4gIGdldCBzdGFydCgpOiBQYXJzZUxvY2F0aW9uIHtcbiAgICByZXR1cm4gdGhpcy5sb2NhdGlvbi5zdGFydDtcbiAgfVxuICBnZXQgZW5kKCk6IFBhcnNlTG9jYXRpb24ge1xuICAgIHJldHVybiB0aGlzLmxvY2F0aW9uLmVuZDtcbiAgfVxuICBhYnN0cmFjdCB2aXNpdCh2aXNpdG9yOiBDc3NBc3RWaXNpdG9yLCBjb250ZXh0PzogYW55KTogYW55O1xufVxuXG5leHBvcnQgY2xhc3MgQ3NzU3R5bGVWYWx1ZUFzdCBleHRlbmRzIENzc0FzdCB7XG4gIGNvbnN0cnVjdG9yKGxvY2F0aW9uOiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyB0b2tlbnM6IENzc1Rva2VuW10sIHB1YmxpYyBzdHJWYWx1ZTogc3RyaW5nKSB7XG4gICAgc3VwZXIobG9jYXRpb24pO1xuICB9XG4gIHZpc2l0KHZpc2l0b3I6IENzc0FzdFZpc2l0b3IsIGNvbnRleHQ/OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0Q3NzVmFsdWUodGhpcyk7XG4gIH1cbn1cblxuZXhwb3J0IGFic3RyYWN0IGNsYXNzIENzc1J1bGVBc3QgZXh0ZW5kcyBDc3NBc3Qge1xuICBjb25zdHJ1Y3Rvcihsb2NhdGlvbjogUGFyc2VTb3VyY2VTcGFuKSB7XG4gICAgc3VwZXIobG9jYXRpb24pO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBDc3NCbG9ja1J1bGVBc3QgZXh0ZW5kcyBDc3NSdWxlQXN0IHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgbG9jYXRpb246IFBhcnNlU291cmNlU3BhbiwgcHVibGljIHR5cGU6IEJsb2NrVHlwZSwgcHVibGljIGJsb2NrOiBDc3NCbG9ja0FzdCxcbiAgICAgIHB1YmxpYyBuYW1lOiBDc3NUb2tlbnxudWxsID0gbnVsbCkge1xuICAgIHN1cGVyKGxvY2F0aW9uKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBDc3NBc3RWaXNpdG9yLCBjb250ZXh0PzogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdENzc0Jsb2NrKHRoaXMuYmxvY2ssIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBDc3NLZXlmcmFtZVJ1bGVBc3QgZXh0ZW5kcyBDc3NCbG9ja1J1bGVBc3Qge1xuICBjb25zdHJ1Y3Rvcihsb2NhdGlvbjogUGFyc2VTb3VyY2VTcGFuLCBuYW1lOiBDc3NUb2tlbiwgYmxvY2s6IENzc0Jsb2NrQXN0KSB7XG4gICAgc3VwZXIobG9jYXRpb24sIEJsb2NrVHlwZS5LZXlmcmFtZXMsIGJsb2NrLCBuYW1lKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBDc3NBc3RWaXNpdG9yLCBjb250ZXh0PzogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdENzc0tleWZyYW1lUnVsZSh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgQ3NzS2V5ZnJhbWVEZWZpbml0aW9uQXN0IGV4dGVuZHMgQ3NzQmxvY2tSdWxlQXN0IHtcbiAgY29uc3RydWN0b3IobG9jYXRpb246IFBhcnNlU291cmNlU3BhbiwgcHVibGljIHN0ZXBzOiBDc3NUb2tlbltdLCBibG9jazogQ3NzQmxvY2tBc3QpIHtcbiAgICBzdXBlcihsb2NhdGlvbiwgQmxvY2tUeXBlLktleWZyYW1lcywgYmxvY2ssIG1lcmdlVG9rZW5zKHN0ZXBzLCAnLCcpKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBDc3NBc3RWaXNpdG9yLCBjb250ZXh0PzogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdENzc0tleWZyYW1lRGVmaW5pdGlvbih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgQ3NzQmxvY2tEZWZpbml0aW9uUnVsZUFzdCBleHRlbmRzIENzc0Jsb2NrUnVsZUFzdCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgbG9jYXRpb246IFBhcnNlU291cmNlU3BhbiwgcHVibGljIHN0clZhbHVlOiBzdHJpbmcsIHR5cGU6IEJsb2NrVHlwZSxcbiAgICAgIHB1YmxpYyBxdWVyeTogQ3NzQXRSdWxlUHJlZGljYXRlQXN0LCBibG9jazogQ3NzQmxvY2tBc3QpIHtcbiAgICBzdXBlcihsb2NhdGlvbiwgdHlwZSwgYmxvY2spO1xuICAgIGNvbnN0IGZpcnN0Q3NzVG9rZW46IENzc1Rva2VuID0gcXVlcnkudG9rZW5zWzBdO1xuICAgIHRoaXMubmFtZSA9IG5ldyBDc3NUb2tlbihcbiAgICAgICAgZmlyc3RDc3NUb2tlbi5pbmRleCwgZmlyc3RDc3NUb2tlbi5jb2x1bW4sIGZpcnN0Q3NzVG9rZW4ubGluZSwgQ3NzVG9rZW5UeXBlLklkZW50aWZpZXIsXG4gICAgICAgIHRoaXMuc3RyVmFsdWUpO1xuICB9XG4gIHZpc2l0KHZpc2l0b3I6IENzc0FzdFZpc2l0b3IsIGNvbnRleHQ/OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0Q3NzQmxvY2sodGhpcy5ibG9jaywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIENzc01lZGlhUXVlcnlSdWxlQXN0IGV4dGVuZHMgQ3NzQmxvY2tEZWZpbml0aW9uUnVsZUFzdCB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgbG9jYXRpb246IFBhcnNlU291cmNlU3Bhbiwgc3RyVmFsdWU6IHN0cmluZywgcXVlcnk6IENzc0F0UnVsZVByZWRpY2F0ZUFzdCxcbiAgICAgIGJsb2NrOiBDc3NCbG9ja0FzdCkge1xuICAgIHN1cGVyKGxvY2F0aW9uLCBzdHJWYWx1ZSwgQmxvY2tUeXBlLk1lZGlhUXVlcnksIHF1ZXJ5LCBibG9jayk7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogQ3NzQXN0VmlzaXRvciwgY29udGV4dD86IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRDc3NNZWRpYVF1ZXJ5UnVsZSh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgQ3NzQXRSdWxlUHJlZGljYXRlQXN0IGV4dGVuZHMgQ3NzQXN0IHtcbiAgY29uc3RydWN0b3IobG9jYXRpb246IFBhcnNlU291cmNlU3BhbiwgcHVibGljIHN0clZhbHVlOiBzdHJpbmcsIHB1YmxpYyB0b2tlbnM6IENzc1Rva2VuW10pIHtcbiAgICBzdXBlcihsb2NhdGlvbik7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogQ3NzQXN0VmlzaXRvciwgY29udGV4dD86IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRDc3NBdFJ1bGVQcmVkaWNhdGUodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIENzc0lubGluZVJ1bGVBc3QgZXh0ZW5kcyBDc3NSdWxlQXN0IHtcbiAgY29uc3RydWN0b3IobG9jYXRpb246IFBhcnNlU291cmNlU3BhbiwgcHVibGljIHR5cGU6IEJsb2NrVHlwZSwgcHVibGljIHZhbHVlOiBDc3NTdHlsZVZhbHVlQXN0KSB7XG4gICAgc3VwZXIobG9jYXRpb24pO1xuICB9XG4gIHZpc2l0KHZpc2l0b3I6IENzc0FzdFZpc2l0b3IsIGNvbnRleHQ/OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0Q3NzSW5saW5lUnVsZSh0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgQ3NzU2VsZWN0b3JSdWxlQXN0IGV4dGVuZHMgQ3NzQmxvY2tSdWxlQXN0IHtcbiAgcHVibGljIHN0clZhbHVlOiBzdHJpbmc7XG5cbiAgY29uc3RydWN0b3IobG9jYXRpb246IFBhcnNlU291cmNlU3BhbiwgcHVibGljIHNlbGVjdG9yczogQ3NzU2VsZWN0b3JBc3RbXSwgYmxvY2s6IENzc0Jsb2NrQXN0KSB7XG4gICAgc3VwZXIobG9jYXRpb24sIEJsb2NrVHlwZS5TZWxlY3RvciwgYmxvY2spO1xuICAgIHRoaXMuc3RyVmFsdWUgPSBzZWxlY3RvcnMubWFwKHNlbGVjdG9yID0+IHNlbGVjdG9yLnN0clZhbHVlKS5qb2luKCcsJyk7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogQ3NzQXN0VmlzaXRvciwgY29udGV4dD86IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRDc3NTZWxlY3RvclJ1bGUodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIENzc0RlZmluaXRpb25Bc3QgZXh0ZW5kcyBDc3NBc3Qge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIGxvY2F0aW9uOiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyBwcm9wZXJ0eTogQ3NzVG9rZW4sIHB1YmxpYyB2YWx1ZTogQ3NzU3R5bGVWYWx1ZUFzdCkge1xuICAgIHN1cGVyKGxvY2F0aW9uKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBDc3NBc3RWaXNpdG9yLCBjb250ZXh0PzogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdENzc0RlZmluaXRpb24odGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGFic3RyYWN0IGNsYXNzIENzc1NlbGVjdG9yUGFydEFzdCBleHRlbmRzIENzc0FzdCB7XG4gIGNvbnN0cnVjdG9yKGxvY2F0aW9uOiBQYXJzZVNvdXJjZVNwYW4pIHtcbiAgICBzdXBlcihsb2NhdGlvbik7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIENzc1NlbGVjdG9yQXN0IGV4dGVuZHMgQ3NzU2VsZWN0b3JQYXJ0QXN0IHtcbiAgcHVibGljIHN0clZhbHVlOiBzdHJpbmc7XG4gIGNvbnN0cnVjdG9yKGxvY2F0aW9uOiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyBzZWxlY3RvclBhcnRzOiBDc3NTaW1wbGVTZWxlY3RvckFzdFtdKSB7XG4gICAgc3VwZXIobG9jYXRpb24pO1xuICAgIHRoaXMuc3RyVmFsdWUgPSBzZWxlY3RvclBhcnRzLm1hcChwYXJ0ID0+IHBhcnQuc3RyVmFsdWUpLmpvaW4oJycpO1xuICB9XG4gIHZpc2l0KHZpc2l0b3I6IENzc0FzdFZpc2l0b3IsIGNvbnRleHQ/OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0Q3NzU2VsZWN0b3IodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIENzc1NpbXBsZVNlbGVjdG9yQXN0IGV4dGVuZHMgQ3NzU2VsZWN0b3JQYXJ0QXN0IHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBsb2NhdGlvbjogUGFyc2VTb3VyY2VTcGFuLCBwdWJsaWMgdG9rZW5zOiBDc3NUb2tlbltdLCBwdWJsaWMgc3RyVmFsdWU6IHN0cmluZyxcbiAgICAgIHB1YmxpYyBwc2V1ZG9TZWxlY3RvcnM6IENzc1BzZXVkb1NlbGVjdG9yQXN0W10sIHB1YmxpYyBvcGVyYXRvcjogQ3NzVG9rZW4pIHtcbiAgICBzdXBlcihsb2NhdGlvbik7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogQ3NzQXN0VmlzaXRvciwgY29udGV4dD86IGFueSk6IGFueSB7XG4gICAgcmV0dXJuIHZpc2l0b3IudmlzaXRDc3NTaW1wbGVTZWxlY3Rvcih0aGlzLCBjb250ZXh0KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgQ3NzUHNldWRvU2VsZWN0b3JBc3QgZXh0ZW5kcyBDc3NTZWxlY3RvclBhcnRBc3Qge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIGxvY2F0aW9uOiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyBzdHJWYWx1ZTogc3RyaW5nLCBwdWJsaWMgbmFtZTogc3RyaW5nLFxuICAgICAgcHVibGljIHRva2VuczogQ3NzVG9rZW5bXSwgcHVibGljIGlubmVyU2VsZWN0b3JzOiBDc3NTZWxlY3RvckFzdFtdKSB7XG4gICAgc3VwZXIobG9jYXRpb24pO1xuICB9XG4gIHZpc2l0KHZpc2l0b3I6IENzc0FzdFZpc2l0b3IsIGNvbnRleHQ/OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0Q3NzUHNldWRvU2VsZWN0b3IodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIENzc0Jsb2NrQXN0IGV4dGVuZHMgQ3NzQXN0IHtcbiAgY29uc3RydWN0b3IobG9jYXRpb246IFBhcnNlU291cmNlU3BhbiwgcHVibGljIGVudHJpZXM6IENzc0FzdFtdKSB7XG4gICAgc3VwZXIobG9jYXRpb24pO1xuICB9XG4gIHZpc2l0KHZpc2l0b3I6IENzc0FzdFZpc2l0b3IsIGNvbnRleHQ/OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0Q3NzQmxvY2sodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuLypcbiBhIHN0eWxlIGJsb2NrIGlzIGRpZmZlcmVudCBmcm9tIGEgc3RhbmRhcmQgYmxvY2sgYmVjYXVzZSBpdCBjb250YWluc1xuIGNzcyBwcm9wOnZhbHVlIGRlZmluaXRpb25zLiBBIHJlZ3VsYXIgYmxvY2sgY2FuIGNvbnRhaW4gYSBsaXN0IG9mIEFzdCBlbnRyaWVzLlxuICovXG5leHBvcnQgY2xhc3MgQ3NzU3R5bGVzQmxvY2tBc3QgZXh0ZW5kcyBDc3NCbG9ja0FzdCB7XG4gIGNvbnN0cnVjdG9yKGxvY2F0aW9uOiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyBkZWZpbml0aW9uczogQ3NzRGVmaW5pdGlvbkFzdFtdKSB7XG4gICAgc3VwZXIobG9jYXRpb24sIGRlZmluaXRpb25zKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBDc3NBc3RWaXNpdG9yLCBjb250ZXh0PzogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdENzc1N0eWxlc0Jsb2NrKHRoaXMsIGNvbnRleHQpO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBDc3NTdHlsZVNoZWV0QXN0IGV4dGVuZHMgQ3NzQXN0IHtcbiAgY29uc3RydWN0b3IobG9jYXRpb246IFBhcnNlU291cmNlU3BhbiwgcHVibGljIHJ1bGVzOiBDc3NBc3RbXSkge1xuICAgIHN1cGVyKGxvY2F0aW9uKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBDc3NBc3RWaXNpdG9yLCBjb250ZXh0PzogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdENzc1N0eWxlU2hlZXQodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIENzc1Vua25vd25SdWxlQXN0IGV4dGVuZHMgQ3NzUnVsZUFzdCB7XG4gIGNvbnN0cnVjdG9yKGxvY2F0aW9uOiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyBydWxlTmFtZTogc3RyaW5nLCBwdWJsaWMgdG9rZW5zOiBDc3NUb2tlbltdKSB7XG4gICAgc3VwZXIobG9jYXRpb24pO1xuICB9XG4gIHZpc2l0KHZpc2l0b3I6IENzc0FzdFZpc2l0b3IsIGNvbnRleHQ/OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB2aXNpdG9yLnZpc2l0Q3NzVW5rbm93blJ1bGUodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIENzc1Vua25vd25Ub2tlbkxpc3RBc3QgZXh0ZW5kcyBDc3NSdWxlQXN0IHtcbiAgY29uc3RydWN0b3IobG9jYXRpb246IFBhcnNlU291cmNlU3BhbiwgcHVibGljIG5hbWU6IHN0cmluZywgcHVibGljIHRva2VuczogQ3NzVG9rZW5bXSkge1xuICAgIHN1cGVyKGxvY2F0aW9uKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBDc3NBc3RWaXNpdG9yLCBjb250ZXh0PzogYW55KTogYW55IHtcbiAgICByZXR1cm4gdmlzaXRvci52aXNpdENzc1Vua25vd25Ub2tlbkxpc3QodGhpcywgY29udGV4dCk7XG4gIH1cbn1cblxuZXhwb3J0IGZ1bmN0aW9uIG1lcmdlVG9rZW5zKHRva2VuczogQ3NzVG9rZW5bXSwgc2VwYXJhdG9yOiBzdHJpbmcgPSAnJyk6IENzc1Rva2VuIHtcbiAgY29uc3QgbWFpblRva2VuID0gdG9rZW5zWzBdO1xuICBsZXQgc3RyID0gbWFpblRva2VuLnN0clZhbHVlO1xuICBmb3IgKGxldCBpID0gMTsgaSA8IHRva2Vucy5sZW5ndGg7IGkrKykge1xuICAgIHN0ciArPSBzZXBhcmF0b3IgKyB0b2tlbnNbaV0uc3RyVmFsdWU7XG4gIH1cblxuICByZXR1cm4gbmV3IENzc1Rva2VuKG1haW5Ub2tlbi5pbmRleCwgbWFpblRva2VuLmNvbHVtbiwgbWFpblRva2VuLmxpbmUsIG1haW5Ub2tlbi50eXBlLCBzdHIpO1xufVxuIl19