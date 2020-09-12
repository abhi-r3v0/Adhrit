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
        define("@angular/compiler/src/selector", ["require", "exports", "@angular/compiler/src/ml_parser/html_tags"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var html_tags_1 = require("@angular/compiler/src/ml_parser/html_tags");
    var _SELECTOR_REGEXP = new RegExp('(\\:not\\()|' + // 1: ":not("
        '(([\\.\\#]?)[-\\w]+)|' + // 2: "tag"; 3: "."/"#";
        // "-" should appear first in the regexp below as FF31 parses "[.-\w]" as a range
        // 4: attribute; 5: attribute_string; 6: attribute_value
        '(?:\\[([-.\\w*]+)(?:=([\"\']?)([^\\]\"\']*)\\5)?\\])|' + // "[name]", "[name=value]",
        // "[name="value"]",
        // "[name='value']"
        '(\\))|' + // 7: ")"
        '(\\s*,\\s*)', // 8: ","
    'g');
    /**
     * A css selector contains an element name,
     * css classes and attribute/value pairs with the purpose
     * of selecting subsets out of them.
     */
    var CssSelector = /** @class */ (function () {
        function CssSelector() {
            this.element = null;
            this.classNames = [];
            /**
             * The selectors are encoded in pairs where:
             * - even locations are attribute names
             * - odd locations are attribute values.
             *
             * Example:
             * Selector: `[key1=value1][key2]` would parse to:
             * ```
             * ['key1', 'value1', 'key2', '']
             * ```
             */
            this.attrs = [];
            this.notSelectors = [];
        }
        CssSelector.parse = function (selector) {
            var results = [];
            var _addResult = function (res, cssSel) {
                if (cssSel.notSelectors.length > 0 && !cssSel.element && cssSel.classNames.length == 0 &&
                    cssSel.attrs.length == 0) {
                    cssSel.element = '*';
                }
                res.push(cssSel);
            };
            var cssSelector = new CssSelector();
            var match;
            var current = cssSelector;
            var inNot = false;
            _SELECTOR_REGEXP.lastIndex = 0;
            while (match = _SELECTOR_REGEXP.exec(selector)) {
                if (match[1 /* NOT */]) {
                    if (inNot) {
                        throw new Error('Nesting :not in a selector is not allowed');
                    }
                    inNot = true;
                    current = new CssSelector();
                    cssSelector.notSelectors.push(current);
                }
                var tag = match[2 /* TAG */];
                if (tag) {
                    var prefix = match[3 /* PREFIX */];
                    if (prefix === '#') {
                        // #hash
                        current.addAttribute('id', tag.substr(1));
                    }
                    else if (prefix === '.') {
                        // Class
                        current.addClassName(tag.substr(1));
                    }
                    else {
                        // Element
                        current.setElement(tag);
                    }
                }
                var attribute = match[4 /* ATTRIBUTE */];
                if (attribute) {
                    current.addAttribute(attribute, match[6 /* ATTRIBUTE_VALUE */]);
                }
                if (match[7 /* NOT_END */]) {
                    inNot = false;
                    current = cssSelector;
                }
                if (match[8 /* SEPARATOR */]) {
                    if (inNot) {
                        throw new Error('Multiple selectors in :not are not supported');
                    }
                    _addResult(results, cssSelector);
                    cssSelector = current = new CssSelector();
                }
            }
            _addResult(results, cssSelector);
            return results;
        };
        CssSelector.prototype.isElementSelector = function () {
            return this.hasElementSelector() && this.classNames.length == 0 && this.attrs.length == 0 &&
                this.notSelectors.length === 0;
        };
        CssSelector.prototype.hasElementSelector = function () { return !!this.element; };
        CssSelector.prototype.setElement = function (element) {
            if (element === void 0) { element = null; }
            this.element = element;
        };
        /** Gets a template string for an element that matches the selector. */
        CssSelector.prototype.getMatchingElementTemplate = function () {
            var tagName = this.element || 'div';
            var classAttr = this.classNames.length > 0 ? " class=\"" + this.classNames.join(' ') + "\"" : '';
            var attrs = '';
            for (var i = 0; i < this.attrs.length; i += 2) {
                var attrName = this.attrs[i];
                var attrValue = this.attrs[i + 1] !== '' ? "=\"" + this.attrs[i + 1] + "\"" : '';
                attrs += " " + attrName + attrValue;
            }
            return html_tags_1.getHtmlTagDefinition(tagName).isVoid ? "<" + tagName + classAttr + attrs + "/>" :
                "<" + tagName + classAttr + attrs + "></" + tagName + ">";
        };
        CssSelector.prototype.getAttrs = function () {
            var result = [];
            if (this.classNames.length > 0) {
                result.push('class', this.classNames.join(' '));
            }
            return result.concat(this.attrs);
        };
        CssSelector.prototype.addAttribute = function (name, value) {
            if (value === void 0) { value = ''; }
            this.attrs.push(name, value && value.toLowerCase() || '');
        };
        CssSelector.prototype.addClassName = function (name) { this.classNames.push(name.toLowerCase()); };
        CssSelector.prototype.toString = function () {
            var res = this.element || '';
            if (this.classNames) {
                this.classNames.forEach(function (klass) { return res += "." + klass; });
            }
            if (this.attrs) {
                for (var i = 0; i < this.attrs.length; i += 2) {
                    var name_1 = this.attrs[i];
                    var value = this.attrs[i + 1];
                    res += "[" + name_1 + (value ? '=' + value : '') + "]";
                }
            }
            this.notSelectors.forEach(function (notSelector) { return res += ":not(" + notSelector + ")"; });
            return res;
        };
        return CssSelector;
    }());
    exports.CssSelector = CssSelector;
    /**
     * Reads a list of CssSelectors and allows to calculate which ones
     * are contained in a given CssSelector.
     */
    var SelectorMatcher = /** @class */ (function () {
        function SelectorMatcher() {
            this._elementMap = new Map();
            this._elementPartialMap = new Map();
            this._classMap = new Map();
            this._classPartialMap = new Map();
            this._attrValueMap = new Map();
            this._attrValuePartialMap = new Map();
            this._listContexts = [];
        }
        SelectorMatcher.createNotMatcher = function (notSelectors) {
            var notMatcher = new SelectorMatcher();
            notMatcher.addSelectables(notSelectors, null);
            return notMatcher;
        };
        SelectorMatcher.prototype.addSelectables = function (cssSelectors, callbackCtxt) {
            var listContext = null;
            if (cssSelectors.length > 1) {
                listContext = new SelectorListContext(cssSelectors);
                this._listContexts.push(listContext);
            }
            for (var i = 0; i < cssSelectors.length; i++) {
                this._addSelectable(cssSelectors[i], callbackCtxt, listContext);
            }
        };
        /**
         * Add an object that can be found later on by calling `match`.
         * @param cssSelector A css selector
         * @param callbackCtxt An opaque object that will be given to the callback of the `match` function
         */
        SelectorMatcher.prototype._addSelectable = function (cssSelector, callbackCtxt, listContext) {
            var matcher = this;
            var element = cssSelector.element;
            var classNames = cssSelector.classNames;
            var attrs = cssSelector.attrs;
            var selectable = new SelectorContext(cssSelector, callbackCtxt, listContext);
            if (element) {
                var isTerminal = attrs.length === 0 && classNames.length === 0;
                if (isTerminal) {
                    this._addTerminal(matcher._elementMap, element, selectable);
                }
                else {
                    matcher = this._addPartial(matcher._elementPartialMap, element);
                }
            }
            if (classNames) {
                for (var i = 0; i < classNames.length; i++) {
                    var isTerminal = attrs.length === 0 && i === classNames.length - 1;
                    var className = classNames[i];
                    if (isTerminal) {
                        this._addTerminal(matcher._classMap, className, selectable);
                    }
                    else {
                        matcher = this._addPartial(matcher._classPartialMap, className);
                    }
                }
            }
            if (attrs) {
                for (var i = 0; i < attrs.length; i += 2) {
                    var isTerminal = i === attrs.length - 2;
                    var name_2 = attrs[i];
                    var value = attrs[i + 1];
                    if (isTerminal) {
                        var terminalMap = matcher._attrValueMap;
                        var terminalValuesMap = terminalMap.get(name_2);
                        if (!terminalValuesMap) {
                            terminalValuesMap = new Map();
                            terminalMap.set(name_2, terminalValuesMap);
                        }
                        this._addTerminal(terminalValuesMap, value, selectable);
                    }
                    else {
                        var partialMap = matcher._attrValuePartialMap;
                        var partialValuesMap = partialMap.get(name_2);
                        if (!partialValuesMap) {
                            partialValuesMap = new Map();
                            partialMap.set(name_2, partialValuesMap);
                        }
                        matcher = this._addPartial(partialValuesMap, value);
                    }
                }
            }
        };
        SelectorMatcher.prototype._addTerminal = function (map, name, selectable) {
            var terminalList = map.get(name);
            if (!terminalList) {
                terminalList = [];
                map.set(name, terminalList);
            }
            terminalList.push(selectable);
        };
        SelectorMatcher.prototype._addPartial = function (map, name) {
            var matcher = map.get(name);
            if (!matcher) {
                matcher = new SelectorMatcher();
                map.set(name, matcher);
            }
            return matcher;
        };
        /**
         * Find the objects that have been added via `addSelectable`
         * whose css selector is contained in the given css selector.
         * @param cssSelector A css selector
         * @param matchedCallback This callback will be called with the object handed into `addSelectable`
         * @return boolean true if a match was found
        */
        SelectorMatcher.prototype.match = function (cssSelector, matchedCallback) {
            var result = false;
            var element = cssSelector.element;
            var classNames = cssSelector.classNames;
            var attrs = cssSelector.attrs;
            for (var i = 0; i < this._listContexts.length; i++) {
                this._listContexts[i].alreadyMatched = false;
            }
            result = this._matchTerminal(this._elementMap, element, cssSelector, matchedCallback) || result;
            result = this._matchPartial(this._elementPartialMap, element, cssSelector, matchedCallback) ||
                result;
            if (classNames) {
                for (var i = 0; i < classNames.length; i++) {
                    var className = classNames[i];
                    result =
                        this._matchTerminal(this._classMap, className, cssSelector, matchedCallback) || result;
                    result =
                        this._matchPartial(this._classPartialMap, className, cssSelector, matchedCallback) ||
                            result;
                }
            }
            if (attrs) {
                for (var i = 0; i < attrs.length; i += 2) {
                    var name_3 = attrs[i];
                    var value = attrs[i + 1];
                    var terminalValuesMap = this._attrValueMap.get(name_3);
                    if (value) {
                        result =
                            this._matchTerminal(terminalValuesMap, '', cssSelector, matchedCallback) || result;
                    }
                    result =
                        this._matchTerminal(terminalValuesMap, value, cssSelector, matchedCallback) || result;
                    var partialValuesMap = this._attrValuePartialMap.get(name_3);
                    if (value) {
                        result = this._matchPartial(partialValuesMap, '', cssSelector, matchedCallback) || result;
                    }
                    result =
                        this._matchPartial(partialValuesMap, value, cssSelector, matchedCallback) || result;
                }
            }
            return result;
        };
        /** @internal */
        SelectorMatcher.prototype._matchTerminal = function (map, name, cssSelector, matchedCallback) {
            if (!map || typeof name !== 'string') {
                return false;
            }
            var selectables = map.get(name) || [];
            var starSelectables = map.get('*');
            if (starSelectables) {
                selectables = selectables.concat(starSelectables);
            }
            if (selectables.length === 0) {
                return false;
            }
            var selectable;
            var result = false;
            for (var i = 0; i < selectables.length; i++) {
                selectable = selectables[i];
                result = selectable.finalize(cssSelector, matchedCallback) || result;
            }
            return result;
        };
        /** @internal */
        SelectorMatcher.prototype._matchPartial = function (map, name, cssSelector, matchedCallback) {
            if (!map || typeof name !== 'string') {
                return false;
            }
            var nestedSelector = map.get(name);
            if (!nestedSelector) {
                return false;
            }
            // TODO(perf): get rid of recursion and measure again
            // TODO(perf): don't pass the whole selector into the recursion,
            // but only the not processed parts
            return nestedSelector.match(cssSelector, matchedCallback);
        };
        return SelectorMatcher;
    }());
    exports.SelectorMatcher = SelectorMatcher;
    var SelectorListContext = /** @class */ (function () {
        function SelectorListContext(selectors) {
            this.selectors = selectors;
            this.alreadyMatched = false;
        }
        return SelectorListContext;
    }());
    exports.SelectorListContext = SelectorListContext;
    // Store context to pass back selector and context when a selector is matched
    var SelectorContext = /** @class */ (function () {
        function SelectorContext(selector, cbContext, listContext) {
            this.selector = selector;
            this.cbContext = cbContext;
            this.listContext = listContext;
            this.notSelectors = selector.notSelectors;
        }
        SelectorContext.prototype.finalize = function (cssSelector, callback) {
            var result = true;
            if (this.notSelectors.length > 0 && (!this.listContext || !this.listContext.alreadyMatched)) {
                var notMatcher = SelectorMatcher.createNotMatcher(this.notSelectors);
                result = !notMatcher.match(cssSelector, null);
            }
            if (result && callback && (!this.listContext || !this.listContext.alreadyMatched)) {
                if (this.listContext) {
                    this.listContext.alreadyMatched = true;
                }
                callback(this.selector, this.cbContext);
            }
            return result;
        };
        return SelectorContext;
    }());
    exports.SelectorContext = SelectorContext;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic2VsZWN0b3IuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci9zcmMvc2VsZWN0b3IudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7SUFFSCx1RUFBMkQ7SUFFM0QsSUFBTSxnQkFBZ0IsR0FBRyxJQUFJLE1BQU0sQ0FDL0IsY0FBYyxHQUFpQixhQUFhO1FBQ3hDLHVCQUF1QixHQUFJLHdCQUF3QjtRQUNuRCxpRkFBaUY7UUFDakYsd0RBQXdEO1FBQ3hELHVEQUF1RCxHQUFJLDRCQUE0QjtRQUM1QixvQkFBb0I7UUFDcEIsbUJBQW1CO1FBQzlFLFFBQVEsR0FBbUQsU0FBUztRQUNwRSxhQUFhLEVBQThDLFNBQVM7SUFDeEUsR0FBRyxDQUFDLENBQUM7SUFnQlQ7Ozs7T0FJRztJQUNIO1FBQUE7WUFDRSxZQUFPLEdBQWdCLElBQUksQ0FBQztZQUM1QixlQUFVLEdBQWEsRUFBRSxDQUFDO1lBQzFCOzs7Ozs7Ozs7O2VBVUc7WUFDSCxVQUFLLEdBQWEsRUFBRSxDQUFDO1lBQ3JCLGlCQUFZLEdBQWtCLEVBQUUsQ0FBQztRQWlIbkMsQ0FBQztRQS9HUSxpQkFBSyxHQUFaLFVBQWEsUUFBZ0I7WUFDM0IsSUFBTSxPQUFPLEdBQWtCLEVBQUUsQ0FBQztZQUNsQyxJQUFNLFVBQVUsR0FBRyxVQUFDLEdBQWtCLEVBQUUsTUFBbUI7Z0JBQ3pELElBQUksTUFBTSxDQUFDLFlBQVksQ0FBQyxNQUFNLEdBQUcsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sSUFBSSxNQUFNLENBQUMsVUFBVSxDQUFDLE1BQU0sSUFBSSxDQUFDO29CQUNsRixNQUFNLENBQUMsS0FBSyxDQUFDLE1BQU0sSUFBSSxDQUFDLEVBQUU7b0JBQzVCLE1BQU0sQ0FBQyxPQUFPLEdBQUcsR0FBRyxDQUFDO2lCQUN0QjtnQkFDRCxHQUFHLENBQUMsSUFBSSxDQUFDLE1BQU0sQ0FB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QUFJLENBQUMsUUFBUSxFQUFFLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQzthQUN6QztZQUNELE9BQU8sTUFBTSxDQUFDO1FBQ2hCLENBQUM7UUFDSCxzQkFBQztJQUFELENBQUMsQUF0QkQsSUFzQkM7SUF0QlksMENBQWUiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Z2V0SHRtbFRhZ0RlZmluaXRpb259IGZyb20gJy4vbWxfcGFyc2VyL2h0bWxfdGFncyc7XG5cbmNvbnN0IF9TRUxFQ1RPUl9SRUdFWFAgPSBuZXcgUmVnRXhwKFxuICAgICcoXFxcXDpub3RcXFxcKCl8JyArICAgICAgICAgICAgICAgLy8gMTogXCI6bm90KFwiXG4gICAgICAgICcoKFtcXFxcLlxcXFwjXT8pWy1cXFxcd10rKXwnICsgIC8vIDI6IFwidGFnXCI7IDM6IFwiLlwiL1wiI1wiO1xuICAgICAgICAvLyBcIi1cIiBzaG91bGQgYXBwZWFyIGZpcnN0IGluIHRoZSByZWdleHAgYmVsb3cgYXMgRkYzMSBwYXJzZXMgXCJbLi1cXHddXCIgYXMgYSByYW5nZVxuICAgICAgICAvLyA0OiBhdHRyaWJ1dGU7IDU6IGF0dHJpYnV0ZV9zdHJpbmc7IDY6IGF0dHJpYnV0ZV92YWx1ZVxuICAgICAgICAnKD86XFxcXFsoWy0uXFxcXHcqXSspKD86PShbXFxcIlxcJ10/KShbXlxcXFxdXFxcIlxcJ10qKVxcXFw1KT9cXFxcXSl8JyArICAvLyBcIltuYW1lXVwiLCBcIltuYW1lPXZhbHVlXVwiLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIFwiW25hbWU9XCJ2YWx1ZVwiXVwiLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIFwiW25hbWU9J3ZhbHVlJ11cIlxuICAgICAgICAnKFxcXFwpKXwnICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gNzogXCIpXCJcbiAgICAgICAgJyhcXFxccyosXFxcXHMqKScsICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy8gODogXCIsXCJcbiAgICAnZycpO1xuXG4vKipcbiAqIFRoZXNlIG9mZnNldHMgc2hvdWxkIG1hdGNoIHRoZSBtYXRjaC1ncm91cHMgaW4gYF9TRUxFQ1RPUl9SRUdFWFBgIG9mZnNldHMuXG4gKi9cbmNvbnN0IGVudW0gU2VsZWN0b3JSZWdleHAge1xuICBBTEwgPSAwLCAgLy8gVGhlIHdob2xlIG1hdGNoXG4gIE5PVCA9IDEsXG4gIFRBRyA9IDIsXG4gIFBSRUZJWCA9IDMsXG4gIEFUVFJJQlVURSA9IDQsXG4gIEFUVFJJQlVURV9TVFJJTkcgPSA1LFxuICBBVFRSSUJVVEVfVkFMVUUgPSA2LFxuICBOT1RfRU5EID0gNyxcbiAgU0VQQVJBVE9SID0gOCxcbn1cbi8qKlxuICogQSBjc3Mgc2VsZWN0b3IgY29udGFpbnMgYW4gZWxlbWVudCBuYW1lLFxuICogY3NzIGNsYXNzZXMgYW5kIGF0dHJpYnV0ZS92YWx1ZSBwYWlycyB3aXRoIHRoZSBwdXJwb3NlXG4gKiBvZiBzZWxlY3Rpbmcgc3Vic2V0cyBvdXQgb2YgdGhlbS5cbiAqL1xuZXhwb3J0IGNsYXNzIENzc1NlbGVjdG9yIHtcbiAgZWxlbWVudDogc3RyaW5nfG51bGwgPSBudWxsO1xuICBjbGFzc05hbWVzOiBzdHJpbmdbXSA9IFtdO1xuICAvKipcbiAgICogVGhlIHNlbGVjdG9ycyBhcmUgZW5jb2RlZCBpbiBwYWlycyB3aGVyZTpcbiAgICogLSBldmVuIGxvY2F0aW9ucyBhcmUgYXR0cmlidXRlIG5hbWVzXG4gICAqIC0gb2RkIGxvY2F0aW9ucyBhcmUgYXR0cmlidXRlIHZhbHVlcy5cbiAgICpcbiAgICogRXhhbXBsZTpcbiAgICogU2VsZWN0b3I6IGBba2V5MT12YWx1ZTFdW2tleTJdYCB3b3VsZCBwYXJzZSB0bzpcbiAgICogYGBgXG4gICAqIFsna2V5MScsICd2YWx1ZTEnLCAna2V5MicsICcnXVxuICAgKiBgYGBcbiAgICovXG4gIGF0dHJzOiBzdHJpbmdbXSA9IFtdO1xuICBub3RTZWxlY3RvcnM6IENzc1NlbGVjdG9yW10gPSBbXTtcblxuICBzdGF0aWMgcGFyc2Uoc2VsZWN0b3I6IHN0cmluZyk6IENzc1NlbGVjdG9yW10ge1xuICAgIGNvbnN0IHJlc3VsdHM6IENzc1NlbGVjdG9yW10gPSBbXTtcbiAgICBjb25zdCBfYWRkUmVzdWx0ID0gKHJlczogQ3NzU2VsZWN0b3JbXSwgY3NzU2VsOiBDc3NTZWxlY3RvcikgPT4ge1xuICAgICAgaWYgKGNzc1NlbC5ub3RTZWxlY3RvcnMubGVuZ3RoID4gMCAmJiAhY3NzU2VsLmVsZW1lbnQgJiYgY3NzU2VsLmNsYXNzTmFtZXMubGVuZ3RoID09IDAgJiZcbiAgICAgICAgICBjc3NTZWwuYXR0cnMubGVuZ3RoID09IDApIHtcbiAgICAgICAgY3NzU2VsLmVsZW1lbnQgPSAnKic7XG4gICAgICB9XG4gICAgICByZXMucHVzaChjc3NTZWwpO1xuICAgIH07XG4gICAgbGV0IGNzc1NlbGVjdG9yID0gbmV3IENzc1NlbGVjdG9yKCk7XG4gICAgbGV0IG1hdGNoOiBzdHJpbmdbXXxudWxsO1xuICAgIGxldCBjdXJyZW50ID0gY3NzU2VsZWN0b3I7XG4gICAgbGV0IGluTm90ID0gZmFsc2U7XG4gICAgX1NFTEVDVE9SX1JFR0VYUC5sYXN0SW5kZXggPSAwO1xuICAgIHdoaWxlIChtYXRjaCA9IF9TRUxFQ1RPUl9SRUdFWFAuZXhlYyhzZWxlY3RvcikpIHtcbiAgICAgIGlmIChtYXRjaFtTZWxlY3RvclJlZ2V4cC5OT1RdKSB7XG4gICAgICAgIGlmIChpbk5vdCkge1xuICAgICAgICAgIHRocm93IG5ldyBFcnJvcignTmVzdGluZyA6bm90IGluIGEgc2VsZWN0b3IgaXMgbm90IGFsbG93ZWQnKTtcbiAgICAgICAgfVxuICAgICAgICBpbk5vdCA9IHRydWU7XG4gICAgICAgIGN1cnJlbnQgPSBuZXcgQ3NzU2VsZWN0b3IoKTtcbiAgICAgICAgY3NzU2VsZWN0b3Iubm90U2VsZWN0b3JzLnB1c2goY3VycmVudCk7XG4gICAgICB9XG4gICAgICBjb25zdCB0YWcgPSBtYXRjaFtTZWxlY3RvclJlZ2V4cC5UQUddO1xuICAgICAgaWYgKHRhZykge1xuICAgICAgICBjb25zdCBwcmVmaXggPSBtYXRjaFtTZWxlY3RvclJlZ2V4cC5QUkVGSVhdO1xuICAgICAgICBpZiAocHJlZml4ID09PSAnIycpIHtcbiAgICAgICAgICAvLyAjaGFzaFxuICAgICAgICAgIGN1cnJlbnQuYWRkQXR0cmlidXRlKCdpZCcsIHRhZy5zdWJzdHIoMSkpO1xuICAgICAgICB9IGVsc2UgaWYgKHByZWZpeCA9PT0gJy4nKSB7XG4gICAgICAgICAgLy8gQ2xhc3NcbiAgICAgICAgICBjdXJyZW50LmFkZENsYXNzTmFtZSh0YWcuc3Vic3RyKDEpKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAvLyBFbGVtZW50XG4gICAgICAgICAgY3VycmVudC5zZXRFbGVtZW50KHRhZyk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIGNvbnN0IGF0dHJpYnV0ZSA9IG1hdGNoW1NlbGVjdG9yUmVnZXhwLkFUVFJJQlVURV07XG4gICAgICBpZiAoYXR0cmlidXRlKSB7XG4gICAgICAgIGN1cnJlbnQuYWRkQXR0cmlidXRlKGF0dHJpYnV0ZSwgbWF0Y2hbU2VsZWN0b3JSZWdleHAuQVRUUklCVVRFX1ZBTFVFXSk7XG4gICAgICB9XG4gICAgICBpZiAobWF0Y2hbU2VsZWN0b3JSZWdleHAuTk9UX0VORF0pIHtcbiAgICAgICAgaW5Ob3QgPSBmYWxzZTtcbiAgICAgICAgY3VycmVudCA9IGNzc1NlbGVjdG9yO1xuICAgICAgfVxuICAgICAgaWYgKG1hdGNoW1NlbGVjdG9yUmVnZXhwLlNFUEFSQVRPUl0pIHtcbiAgICAgICAgaWYgKGluTm90KSB7XG4gICAgICAgICAgdGhyb3cgbmV3IEVycm9yKCdNdWx0aXBsZSBzZWxlY3RvcnMgaW4gOm5vdCBhcmUgbm90IHN1cHBvcnRlZCcpO1xuICAgICAgICB9XG4gICAgICAgIF9hZGRSZXN1bHQocmVzdWx0cywgY3NzU2VsZWN0b3IpO1xuICAgICAgICBjc3NTZWxlY3RvciA9IGN1cnJlbnQgPSBuZXcgQ3NzU2VsZWN0b3IoKTtcbiAgICAgIH1cbiAgICB9XG4gICAgX2FkZFJlc3VsdChyZXN1bHRzLCBjc3NTZWxlY3Rvcik7XG4gICAgcmV0dXJuIHJlc3VsdHM7XG4gIH1cblxuICBpc0VsZW1lbnRTZWxlY3RvcigpOiBib29sZWFuIHtcbiAgICByZXR1cm4gdGhpcy5oYXNFbGVtZW50U2VsZWN0b3IoKSAmJiB0aGlzLmNsYXNzTmFtZXMubGVuZ3RoID09IDAgJiYgdGhpcy5hdHRycy5sZW5ndGggPT0gMCAmJlxuICAgICAgICB0aGlzLm5vdFNlbGVjdG9ycy5sZW5ndGggPT09IDA7XG4gIH1cblxuICBoYXNFbGVtZW50U2VsZWN0b3IoKTogYm9vbGVhbiB7IHJldHVybiAhIXRoaXMuZWxlbWVudDsgfVxuXG4gIHNldEVsZW1lbnQoZWxlbWVudDogc3RyaW5nfG51bGwgPSBudWxsKSB7IHRoaXMuZWxlbWVudCA9IGVsZW1lbnQ7IH1cblxuICAvKiogR2V0cyBhIHRlbXBsYXRlIHN0cmluZyBmb3IgYW4gZWxlbWVudCB0aGF0IG1hdGNoZXMgdGhlIHNlbGVjdG9yLiAqL1xuICBnZXRNYXRjaGluZ0VsZW1lbnRUZW1wbGF0ZSgpOiBzdHJpbmcge1xuICAgIGNvbnN0IHRhZ05hbWUgPSB0aGlzLmVsZW1lbnQgfHwgJ2Rpdic7XG4gICAgY29uc3QgY2xhc3NBdHRyID0gdGhpcy5jbGFzc05hbWVzLmxlbmd0aCA+IDAgPyBgIGNsYXNzPVwiJHt0aGlzLmNsYXNzTmFtZXMuam9pbignICcpfVwiYCA6ICcnO1xuXG4gICAgbGV0IGF0dHJzID0gJyc7XG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCB0aGlzLmF0dHJzLmxlbmd0aDsgaSArPSAyKSB7XG4gICAgICBjb25zdCBhdHRyTmFtZSA9IHRoaXMuYXR0cnNbaV07XG4gICAgICBjb25zdCBhdHRyVmFsdWUgPSB0aGlzLmF0dHJzW2kgKyAxXSAhPT0gJycgPyBgPVwiJHt0aGlzLmF0dHJzW2kgKyAxXX1cImAgOiAnJztcbiAgICAgIGF0dHJzICs9IGAgJHthdHRyTmFtZX0ke2F0dHJWYWx1ZX1gO1xuICAgIH1cblxuICAgIHJldHVybiBnZXRIdG1sVGFnRGVmaW5pdGlvbih0YWdOYW1lKS5pc1ZvaWQgPyBgPCR7dGFnTmFtZX0ke2NsYXNzQXR0cn0ke2F0dHJzfS8+YCA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGA8JHt0YWdOYW1lfSR7Y2xhc3NBdHRyfSR7YXR0cnN9PjwvJHt0YWdOYW1lfT5gO1xuICB9XG5cbiAgZ2V0QXR0cnMoKTogc3RyaW5nW10ge1xuICAgIGNvbnN0IHJlc3VsdDogc3RyaW5nW10gPSBbXTtcbiAgICBpZiAodGhpcy5jbGFzc05hbWVzLmxlbmd0aCA+IDApIHtcbiAgICAgIHJlc3VsdC5wdXNoKCdjbGFzcycsIHRoaXMuY2xhc3NOYW1lcy5qb2luKCcgJykpO1xuICAgIH1cbiAgICByZXR1cm4gcmVzdWx0LmNvbmNhdCh0aGlzLmF0dHJzKTtcbiAgfVxuXG4gIGFkZEF0dHJpYnV0ZShuYW1lOiBzdHJpbmcsIHZhbHVlOiBzdHJpbmcgPSAnJykge1xuICAgIHRoaXMuYXR0cnMucHVzaChuYW1lLCB2YWx1ZSAmJiB2YWx1ZS50b0xvd2VyQ2FzZSgpIHx8ICcnKTtcbiAgfVxuXG4gIGFkZENsYXNzTmFtZShuYW1lOiBzdHJpbmcpIHsgdGhpcy5jbGFzc05hbWVzLnB1c2gobmFtZS50b0xvd2VyQ2FzZSgpKTsgfVxuXG4gIHRvU3RyaW5nKCk6IHN0cmluZyB7XG4gICAgbGV0IHJlczogc3RyaW5nID0gdGhpcy5lbGVtZW50IHx8ICcnO1xuICAgIGlmICh0aGlzLmNsYXNzTmFtZXMpIHtcbiAgICAgIHRoaXMuY2xhc3NOYW1lcy5mb3JFYWNoKGtsYXNzID0+IHJlcyArPSBgLiR7a2xhc3N9YCk7XG4gICAgfVxuICAgIGlmICh0aGlzLmF0dHJzKSB7XG4gICAgICBmb3IgKGxldCBpID0gMDsgaSA8IHRoaXMuYXR0cnMubGVuZ3RoOyBpICs9IDIpIHtcbiAgICAgICAgY29uc3QgbmFtZSA9IHRoaXMuYXR0cnNbaV07XG4gICAgICAgIGNvbnN0IHZhbHVlID0gdGhpcy5hdHRyc1tpICsgMV07XG4gICAgICAgIHJlcyArPSBgWyR7bmFtZX0ke3ZhbHVlID8gJz0nICsgdmFsdWUgOiAnJ31dYDtcbiAgICAgIH1cbiAgICB9XG4gICAgdGhpcy5ub3RTZWxlY3RvcnMuZm9yRWFjaChub3RTZWxlY3RvciA9PiByZXMgKz0gYDpub3QoJHtub3RTZWxlY3Rvcn0pYCk7XG4gICAgcmV0dXJuIHJlcztcbiAgfVxufVxuXG4vKipcbiAqIFJlYWRzIGEgbGlzdCBvZiBDc3NTZWxlY3RvcnMgYW5kIGFsbG93cyB0byBjYWxjdWxhdGUgd2hpY2ggb25lc1xuICogYXJlIGNvbnRhaW5lZCBpbiBhIGdpdmVuIENzc1NlbGVjdG9yLlxuICovXG5leHBvcnQgY2xhc3MgU2VsZWN0b3JNYXRjaGVyPFQgPSBhbnk+IHtcbiAgc3RhdGljIGNyZWF0ZU5vdE1hdGNoZXIobm90U2VsZWN0b3JzOiBDc3NTZWxlY3RvcltdKTogU2VsZWN0b3JNYXRjaGVyPG51bGw+IHtcbiAgICBjb25zdCBub3RNYXRjaGVyID0gbmV3IFNlbGVjdG9yTWF0Y2hlcjxudWxsPigpO1xuICAgIG5vdE1hdGNoZXIuYWRkU2VsZWN0YWJsZXMobm90U2VsZWN0b3JzLCBudWxsKTtcbiAgICByZXR1cm4gbm90TWF0Y2hlcjtcbiAgfVxuXG4gIHByaXZhdGUgX2VsZW1lbnRNYXAgPSBuZXcgTWFwPHN0cmluZywgU2VsZWN0b3JDb250ZXh0PFQ+W10+KCk7XG4gIHByaXZhdGUgX2VsZW1lbnRQYXJ0aWFsTWFwID0gbmV3IE1hcDxzdHJpbmcsIFNlbGVjdG9yTWF0Y2hlcjxUPj4oKTtcbiAgcHJpdmF0ZSBfY2xhc3NNYXAgPSBuZXcgTWFwPHN0cmluZywgU2VsZWN0b3JDb250ZXh0PFQ+W10+KCk7XG4gIHByaXZhdGUgX2NsYXNzUGFydGlhbE1hcCA9IG5ldyBNYXA8c3RyaW5nLCBTZWxlY3Rvck1hdGNoZXI8VD4+KCk7XG4gIHByaXZhdGUgX2F0dHJWYWx1ZU1hcCA9IG5ldyBNYXA8c3RyaW5nLCBNYXA8c3RyaW5nLCBTZWxlY3RvckNvbnRleHQ8VD5bXT4+KCk7XG4gIHByaXZhdGUgX2F0dHJWYWx1ZVBhcnRpYWxNYXAgPSBuZXcgTWFwPHN0cmluZywgTWFwPHN0cmluZywgU2VsZWN0b3JNYXRjaGVyPFQ+Pj4oKTtcbiAgcHJpdmF0ZSBfbGlzdENvbnRleHRzOiBTZWxlY3Rvckxpc3RDb250ZXh0W10gPSBbXTtcblxuICBhZGRTZWxlY3RhYmxlcyhjc3NTZWxlY3RvcnM6IENzc1NlbGVjdG9yW10sIGNhbGxiYWNrQ3R4dD86IFQpIHtcbiAgICBsZXQgbGlzdENvbnRleHQ6IFNlbGVjdG9yTGlzdENvbnRleHQgPSBudWxsICE7XG4gICAgaWYgKGNzc1NlbGVjdG9ycy5sZW5ndGggPiAxKSB7XG4gICAgICBsaXN0Q29udGV4dCA9IG5ldyBTZWxlY3Rvckxpc3RDb250ZXh0KGNzc1NlbGVjdG9ycyk7XG4gICAgICB0aGlzLl9saXN0Q29udGV4dHMucHVzaChsaXN0Q29udGV4dCk7XG4gICAgfVxuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgY3NzU2VsZWN0b3JzLmxlbmd0aDsgaSsrKSB7XG4gICAgICB0aGlzLl9hZGRTZWxlY3RhYmxlKGNzc1NlbGVjdG9yc1tpXSwgY2FsbGJhY2tDdHh0IGFzIFQsIGxpc3RDb250ZXh0KTtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogQWRkIGFuIG9iamVjdCB0aGF0IGNhbiBiZSBmb3VuZCBsYXRlciBvbiBieSBjYWxsaW5nIGBtYXRjaGAuXG4gICAqIEBwYXJhbSBjc3NTZWxlY3RvciBBIGNzcyBzZWxlY3RvclxuICAgKiBAcGFyYW0gY2FsbGJhY2tDdHh0IEFuIG9wYXF1ZSBvYmplY3QgdGhhdCB3aWxsIGJlIGdpdmVuIHRvIHRoZSBjYWxsYmFjayBvZiB0aGUgYG1hdGNoYCBmdW5jdGlvblxuICAgKi9cbiAgcHJpdmF0ZSBfYWRkU2VsZWN0YWJsZShcbiAgICAgIGNzc1NlbGVjdG9yOiBDc3NTZWxlY3RvciwgY2FsbGJhY2tDdHh0OiBULCBsaXN0Q29udGV4dDogU2VsZWN0b3JMaXN0Q29udGV4dCkge1xuICAgIGxldCBtYXRjaGVyOiBTZWxlY3Rvck1hdGNoZXI8VD4gPSB0aGlzO1xuICAgIGNvbnN0IGVsZW1lbnQgPSBjc3NTZWxlY3Rvci5lbGVtZW50O1xuICAgIGNvbnN0IGNsYXNzTmFtZXMgPSBjc3NTZWxlY3Rvci5jbGFzc05hbWVzO1xuICAgIGNvbnN0IGF0dHJzID0gY3NzU2VsZWN0b3IuYXR0cnM7XG4gICAgY29uc3Qgc2VsZWN0YWJsZSA9IG5ldyBTZWxlY3RvckNvbnRleHQoY3NzU2VsZWN0b3IsIGNhbGxiYWNrQ3R4dCwgbGlzdENvbnRleHQpO1xuXG4gICAgaWYgKGVsZW1lbnQpIHtcbiAgICAgIGNvbnN0IGlzVGVybWluYWwgPSBhdHRycy5sZW5ndGggPT09IDAgJiYgY2xhc3NOYW1lcy5sZW5ndGggPT09IDA7XG4gICAgICBpZiAoaXNUZXJtaW5hbCkge1xuICAgICAgICB0aGlzLl9hZGRUZXJtaW5hbChtYXRjaGVyLl9lbGVtZW50TWFwLCBlbGVtZW50LCBzZWxlY3RhYmxlKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIG1hdGNoZXIgPSB0aGlzLl9hZGRQYXJ0aWFsKG1hdGNoZXIuX2VsZW1lbnRQYXJ0aWFsTWFwLCBlbGVtZW50KTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICBpZiAoY2xhc3NOYW1lcykge1xuICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBjbGFzc05hbWVzLmxlbmd0aDsgaSsrKSB7XG4gICAgICAgIGNvbnN0IGlzVGVybWluYWwgPSBhdHRycy5sZW5ndGggPT09IDAgJiYgaSA9PT0gY2xhc3NOYW1lcy5sZW5ndGggLSAxO1xuICAgICAgICBjb25zdCBjbGFzc05hbWUgPSBjbGFzc05hbWVzW2ldO1xuICAgICAgICBpZiAoaXNUZXJtaW5hbCkge1xuICAgICAgICAgIHRoaXMuX2FkZFRlcm1pbmFsKG1hdGNoZXIuX2NsYXNzTWFwLCBjbGFzc05hbWUsIHNlbGVjdGFibGUpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIG1hdGNoZXIgPSB0aGlzLl9hZGRQYXJ0aWFsKG1hdGNoZXIuX2NsYXNzUGFydGlhbE1hcCwgY2xhc3NOYW1lKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICAgIGlmIChhdHRycykge1xuICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBhdHRycy5sZW5ndGg7IGkgKz0gMikge1xuICAgICAgICBjb25zdCBpc1Rlcm1pbmFsID0gaSA9PT0gYXR0cnMubGVuZ3RoIC0gMjtcbiAgICAgICAgY29uc3QgbmFtZSA9IGF0dHJzW2ldO1xuICAgICAgICBjb25zdCB2YWx1ZSA9IGF0dHJzW2kgKyAxXTtcbiAgICAgICAgaWYgKGlzVGVybWluYWwpIHtcbiAgICAgICAgICBjb25zdCB0ZXJtaW5hbE1hcCA9IG1hdGNoZXIuX2F0dHJWYWx1ZU1hcDtcbiAgICAgICAgICBsZXQgdGVybWluYWxWYWx1ZXNNYXAgPSB0ZXJtaW5hbE1hcC5nZXQobmFtZSk7XG4gICAgICAgICAgaWYgKCF0ZXJtaW5hbFZhbHVlc01hcCkge1xuICAgICAgICAgICAgdGVybWluYWxWYWx1ZXNNYXAgPSBuZXcgTWFwPHN0cmluZywgU2VsZWN0b3JDb250ZXh0PFQ+W10+KCk7XG4gICAgICAgICAgICB0ZXJtaW5hbE1hcC5zZXQobmFtZSwgdGVybWluYWxWYWx1ZXNNYXApO1xuICAgICAgICAgIH1cbiAgICAgICAgICB0aGlzLl9hZGRUZXJtaW5hbCh0ZXJtaW5hbFZhbHVlc01hcCwgdmFsdWUsIHNlbGVjdGFibGUpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIGNvbnN0IHBhcnRpYWxNYXAgPSBtYXRjaGVyLl9hdHRyVmFsdWVQYXJ0aWFsTWFwO1xuICAgICAgICAgIGxldCBwYXJ0aWFsVmFsdWVzTWFwID0gcGFydGlhbE1hcC5nZXQobmFtZSk7XG4gICAgICAgICAgaWYgKCFwYXJ0aWFsVmFsdWVzTWFwKSB7XG4gICAgICAgICAgICBwYXJ0aWFsVmFsdWVzTWFwID0gbmV3IE1hcDxzdHJpbmcsIFNlbGVjdG9yTWF0Y2hlcjxUPj4oKTtcbiAgICAgICAgICAgIHBhcnRpYWxNYXAuc2V0KG5hbWUsIHBhcnRpYWxWYWx1ZXNNYXApO1xuICAgICAgICAgIH1cbiAgICAgICAgICBtYXRjaGVyID0gdGhpcy5fYWRkUGFydGlhbChwYXJ0aWFsVmFsdWVzTWFwLCB2YWx1ZSk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICBwcml2YXRlIF9hZGRUZXJtaW5hbChcbiAgICAgIG1hcDogTWFwPHN0cmluZywgU2VsZWN0b3JDb250ZXh0PFQ+W10+LCBuYW1lOiBzdHJpbmcsIHNlbGVjdGFibGU6IFNlbGVjdG9yQ29udGV4dDxUPikge1xuICAgIGxldCB0ZXJtaW5hbExpc3QgPSBtYXAuZ2V0KG5hbWUpO1xuICAgIGlmICghdGVybWluYWxMaXN0KSB7XG4gICAgICB0ZXJtaW5hbExpc3QgPSBbXTtcbiAgICAgIG1hcC5zZXQobmFtZSwgdGVybWluYWxMaXN0KTtcbiAgICB9XG4gICAgdGVybWluYWxMaXN0LnB1c2goc2VsZWN0YWJsZSk7XG4gIH1cblxuICBwcml2YXRlIF9hZGRQYXJ0aWFsKG1hcDogTWFwPHN0cmluZywgU2VsZWN0b3JNYXRjaGVyPFQ+PiwgbmFtZTogc3RyaW5nKTogU2VsZWN0b3JNYXRjaGVyPFQ+IHtcbiAgICBsZXQgbWF0Y2hlciA9IG1hcC5nZXQobmFtZSk7XG4gICAgaWYgKCFtYXRjaGVyKSB7XG4gICAgICBtYXRjaGVyID0gbmV3IFNlbGVjdG9yTWF0Y2hlcjxUPigpO1xuICAgICAgbWFwLnNldChuYW1lLCBtYXRjaGVyKTtcbiAgICB9XG4gICAgcmV0dXJuIG1hdGNoZXI7XG4gIH1cblxuICAvKipcbiAgICogRmluZCB0aGUgb2JqZWN0cyB0aGF0IGhhdmUgYmVlbiBhZGRlZCB2aWEgYGFkZFNlbGVjdGFibGVgXG4gICAqIHdob3NlIGNzcyBzZWxlY3RvciBpcyBjb250YWluZWQgaW4gdGhlIGdpdmVuIGNzcyBzZWxlY3Rvci5cbiAgICogQHBhcmFtIGNzc1NlbGVjdG9yIEEgY3NzIHNlbGVjdG9yXG4gICAqIEBwYXJhbSBtYXRjaGVkQ2FsbGJhY2sgVGhpcyBjYWxsYmFjayB3aWxsIGJlIGNhbGxlZCB3aXRoIHRoZSBvYmplY3QgaGFuZGVkIGludG8gYGFkZFNlbGVjdGFibGVgXG4gICAqIEByZXR1cm4gYm9vbGVhbiB0cnVlIGlmIGEgbWF0Y2ggd2FzIGZvdW5kXG4gICovXG4gIG1hdGNoKGNzc1NlbGVjdG9yOiBDc3NTZWxlY3RvciwgbWF0Y2hlZENhbGxiYWNrOiAoKGM6IENzc1NlbGVjdG9yLCBhOiBUKSA9PiB2b2lkKXxudWxsKTogYm9vbGVhbiB7XG4gICAgbGV0IHJlc3VsdCA9IGZhbHNlO1xuICAgIGNvbnN0IGVsZW1lbnQgPSBjc3NTZWxlY3Rvci5lbGVtZW50ICE7XG4gICAgY29uc3QgY2xhc3NOYW1lcyA9IGNzc1NlbGVjdG9yLmNsYXNzTmFtZXM7XG4gICAgY29uc3QgYXR0cnMgPSBjc3NTZWxlY3Rvci5hdHRycztcblxuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgdGhpcy5fbGlzdENvbnRleHRzLmxlbmd0aDsgaSsrKSB7XG4gICAgICB0aGlzLl9saXN0Q29udGV4dHNbaV0uYWxyZWFkeU1hdGNoZWQgPSBmYWxzZTtcbiAgICB9XG5cbiAgICByZXN1bHQgPSB0aGlzLl9tYXRjaFRlcm1pbmFsKHRoaXMuX2VsZW1lbnRNYXAsIGVsZW1lbnQsIGNzc1NlbGVjdG9yLCBtYXRjaGVkQ2FsbGJhY2spIHx8IHJlc3VsdDtcbiAgICByZXN1bHQgPSB0aGlzLl9tYXRjaFBhcnRpYWwodGhpcy5fZWxlbWVudFBhcnRpYWxNYXAsIGVsZW1lbnQsIGNzc1NlbGVjdG9yLCBtYXRjaGVkQ2FsbGJhY2spIHx8XG4gICAgICAgIHJlc3VsdDtcblxuICAgIGlmIChjbGFzc05hbWVzKSB7XG4gICAgICBmb3IgKGxldCBpID0gMDsgaSA8IGNsYXNzTmFtZXMubGVuZ3RoOyBpKyspIHtcbiAgICAgICAgY29uc3QgY2xhc3NOYW1lID0gY2xhc3NOYW1lc1tpXTtcbiAgICAgICAgcmVzdWx0ID1cbiAgICAgICAgICAgIHRoaXMuX21hdGNoVGVybWluYWwodGhpcy5fY2xhc3NNYXAsIGNsYXNzTmFtZSwgY3NzU2VsZWN0b3IsIG1hdGNoZWRDYWxsYmFjaykgfHwgcmVzdWx0O1xuICAgICAgICByZXN1bHQgPVxuICAgICAgICAgICAgdGhpcy5fbWF0Y2hQYXJ0aWFsKHRoaXMuX2NsYXNzUGFydGlhbE1hcCwgY2xhc3NOYW1lLCBjc3NTZWxlY3RvciwgbWF0Y2hlZENhbGxiYWNrKSB8fFxuICAgICAgICAgICAgcmVzdWx0O1xuICAgICAgfVxuICAgIH1cblxuICAgIGlmIChhdHRycykge1xuICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBhdHRycy5sZW5ndGg7IGkgKz0gMikge1xuICAgICAgICBjb25zdCBuYW1lID0gYXR0cnNbaV07XG4gICAgICAgIGNvbnN0IHZhbHVlID0gYXR0cnNbaSArIDFdO1xuXG4gICAgICAgIGNvbnN0IHRlcm1pbmFsVmFsdWVzTWFwID0gdGhpcy5fYXR0clZhbHVlTWFwLmdldChuYW1lKSAhO1xuICAgICAgICBpZiAodmFsdWUpIHtcbiAgICAgICAgICByZXN1bHQgPVxuICAgICAgICAgICAgICB0aGlzLl9tYXRjaFRlcm1pbmFsKHRlcm1pbmFsVmFsdWVzTWFwLCAnJywgY3NzU2VsZWN0b3IsIG1hdGNoZWRDYWxsYmFjaykgfHwgcmVzdWx0O1xuICAgICAgICB9XG4gICAgICAgIHJlc3VsdCA9XG4gICAgICAgICAgICB0aGlzLl9tYXRjaFRlcm1pbmFsKHRlcm1pbmFsVmFsdWVzTWFwLCB2YWx1ZSwgY3NzU2VsZWN0b3IsIG1hdGNoZWRDYWxsYmFjaykgfHwgcmVzdWx0O1xuXG4gICAgICAgIGNvbnN0IHBhcnRpYWxWYWx1ZXNNYXAgPSB0aGlzLl9hdHRyVmFsdWVQYXJ0aWFsTWFwLmdldChuYW1lKSAhO1xuICAgICAgICBpZiAodmFsdWUpIHtcbiAgICAgICAgICByZXN1bHQgPSB0aGlzLl9tYXRjaFBhcnRpYWwocGFydGlhbFZhbHVlc01hcCwgJycsIGNzc1NlbGVjdG9yLCBtYXRjaGVkQ2FsbGJhY2spIHx8IHJlc3VsdDtcbiAgICAgICAgfVxuICAgICAgICByZXN1bHQgPVxuICAgICAgICAgICAgdGhpcy5fbWF0Y2hQYXJ0aWFsKHBhcnRpYWxWYWx1ZXNNYXAsIHZhbHVlLCBjc3NTZWxlY3RvciwgbWF0Y2hlZENhbGxiYWNrKSB8fCByZXN1bHQ7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9tYXRjaFRlcm1pbmFsKFxuICAgICAgbWFwOiBNYXA8c3RyaW5nLCBTZWxlY3RvckNvbnRleHQ8VD5bXT4sIG5hbWU6IHN0cmluZywgY3NzU2VsZWN0b3I6IENzc1NlbGVjdG9yLFxuICAgICAgbWF0Y2hlZENhbGxiYWNrOiAoKGM6IENzc1NlbGVjdG9yLCBhOiBhbnkpID0+IHZvaWQpfG51bGwpOiBib29sZWFuIHtcbiAgICBpZiAoIW1hcCB8fCB0eXBlb2YgbmFtZSAhPT0gJ3N0cmluZycpIHtcbiAgICAgIHJldHVybiBmYWxzZTtcbiAgICB9XG5cbiAgICBsZXQgc2VsZWN0YWJsZXM6IFNlbGVjdG9yQ29udGV4dDxUPltdID0gbWFwLmdldChuYW1lKSB8fCBbXTtcbiAgICBjb25zdCBzdGFyU2VsZWN0YWJsZXM6IFNlbGVjdG9yQ29udGV4dDxUPltdID0gbWFwLmdldCgnKicpICE7XG4gICAgaWYgKHN0YXJTZWxlY3RhYmxlcykge1xuICAgICAgc2VsZWN0YWJsZXMgPSBzZWxlY3RhYmxlcy5jb25jYXQoc3RhclNlbGVjdGFibGVzKTtcbiAgICB9XG4gICAgaWYgKHNlbGVjdGFibGVzLmxlbmd0aCA9PT0gMCkge1xuICAgICAgcmV0dXJuIGZhbHNlO1xuICAgIH1cbiAgICBsZXQgc2VsZWN0YWJsZTogU2VsZWN0b3JDb250ZXh0PFQ+O1xuICAgIGxldCByZXN1bHQgPSBmYWxzZTtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IHNlbGVjdGFibGVzLmxlbmd0aDsgaSsrKSB7XG4gICAgICBzZWxlY3RhYmxlID0gc2VsZWN0YWJsZXNbaV07XG4gICAgICByZXN1bHQgPSBzZWxlY3RhYmxlLmZpbmFsaXplKGNzc1NlbGVjdG9yLCBtYXRjaGVkQ2FsbGJhY2spIHx8IHJlc3VsdDtcbiAgICB9XG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX21hdGNoUGFydGlhbChcbiAgICAgIG1hcDogTWFwPHN0cmluZywgU2VsZWN0b3JNYXRjaGVyPFQ+PiwgbmFtZTogc3RyaW5nLCBjc3NTZWxlY3RvcjogQ3NzU2VsZWN0b3IsXG4gICAgICBtYXRjaGVkQ2FsbGJhY2s6ICgoYzogQ3NzU2VsZWN0b3IsIGE6IGFueSkgPT4gdm9pZCl8bnVsbCk6IGJvb2xlYW4ge1xuICAgIGlmICghbWFwIHx8IHR5cGVvZiBuYW1lICE9PSAnc3RyaW5nJykge1xuICAgICAgcmV0dXJuIGZhbHNlO1xuICAgIH1cblxuICAgIGNvbnN0IG5lc3RlZFNlbGVjdG9yID0gbWFwLmdldChuYW1lKTtcbiAgICBpZiAoIW5lc3RlZFNlbGVjdG9yKSB7XG4gICAgICByZXR1cm4gZmFsc2U7XG4gICAgfVxuICAgIC8vIFRPRE8ocGVyZik6IGdldCByaWQgb2YgcmVjdXJzaW9uIGFuZCBtZWFzdXJlIGFnYWluXG4gICAgLy8gVE9ETyhwZXJmKTogZG9uJ3QgcGFzcyB0aGUgd2hvbGUgc2VsZWN0b3IgaW50byB0aGUgcmVjdXJzaW9uLFxuICAgIC8vIGJ1dCBvbmx5IHRoZSBub3QgcHJvY2Vzc2VkIHBhcnRzXG4gICAgcmV0dXJuIG5lc3RlZFNlbGVjdG9yLm1hdGNoKGNzc1NlbGVjdG9yLCBtYXRjaGVkQ2FsbGJhY2spO1xuICB9XG59XG5cblxuZXhwb3J0IGNsYXNzIFNlbGVjdG9yTGlzdENvbnRleHQge1xuICBhbHJlYWR5TWF0Y2hlZDogYm9vbGVhbiA9IGZhbHNlO1xuXG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBzZWxlY3RvcnM6IENzc1NlbGVjdG9yW10pIHt9XG59XG5cbi8vIFN0b3JlIGNvbnRleHQgdG8gcGFzcyBiYWNrIHNlbGVjdG9yIGFuZCBjb250ZXh0IHdoZW4gYSBzZWxlY3RvciBpcyBtYXRjaGVkXG5leHBvcnQgY2xhc3MgU2VsZWN0b3JDb250ZXh0PFQgPSBhbnk+IHtcbiAgbm90U2VsZWN0b3JzOiBDc3NTZWxlY3RvcltdO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIHNlbGVjdG9yOiBDc3NTZWxlY3RvciwgcHVibGljIGNiQ29udGV4dDogVCwgcHVibGljIGxpc3RDb250ZXh0OiBTZWxlY3Rvckxpc3RDb250ZXh0KSB7XG4gICAgdGhpcy5ub3RTZWxlY3RvcnMgPSBzZWxlY3Rvci5ub3RTZWxlY3RvcnM7XG4gIH1cblxuICBmaW5hbGl6ZShjc3NTZWxlY3RvcjogQ3NzU2VsZWN0b3IsIGNhbGxiYWNrOiAoKGM6IENzc1NlbGVjdG9yLCBhOiBUKSA9PiB2b2lkKXxudWxsKTogYm9vbGVhbiB7XG4gICAgbGV0IHJlc3VsdCA9IHRydWU7XG4gICAgaWYgKHRoaXMubm90U2VsZWN0b3JzLmxlbmd0aCA+IDAgJiYgKCF0aGlzLmxpc3RDb250ZXh0IHx8ICF0aGlzLmxpc3RDb250ZXh0LmFscmVhZHlNYXRjaGVkKSkge1xuICAgICAgY29uc3Qgbm90TWF0Y2hlciA9IFNlbGVjdG9yTWF0Y2hlci5jcmVhdGVOb3RNYXRjaGVyKHRoaXMubm90U2VsZWN0b3JzKTtcbiAgICAgIHJlc3VsdCA9ICFub3RNYXRjaGVyLm1hdGNoKGNzc1NlbGVjdG9yLCBudWxsKTtcbiAgICB9XG4gICAgaWYgKHJlc3VsdCAmJiBjYWxsYmFjayAmJiAoIXRoaXMubGlzdENvbnRleHQgfHwgIXRoaXMubGlzdENvbnRleHQuYWxyZWFkeU1hdGNoZWQpKSB7XG4gICAgICBpZiAodGhpcy5saXN0Q29udGV4dCkge1xuICAgICAgICB0aGlzLmxpc3RDb250ZXh0LmFscmVhZHlNYXRjaGVkID0gdHJ1ZTtcbiAgICAgIH1cbiAgICAgIGNhbGxiYWNrKHRoaXMuc2VsZWN0b3IsIHRoaXMuY2JDb250ZXh0KTtcbiAgICB9XG4gICAgcmV0dXJuIHJlc3VsdDtcbiAgfVxufVxuIl19