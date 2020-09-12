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
        define("@angular/compiler/src/template_parser/binding_parser", ["require", "exports", "tslib", "@angular/compiler/src/core", "@angular/compiler/src/expression_parser/ast", "@angular/compiler/src/ml_parser/tags", "@angular/compiler/src/parse_util", "@angular/compiler/src/selector", "@angular/compiler/src/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.calcPossibleSecurityContexts = exports.PipeCollector = exports.BindingParser = void 0;
    var tslib_1 = require("tslib");
    var core_1 = require("@angular/compiler/src/core");
    var ast_1 = require("@angular/compiler/src/expression_parser/ast");
    var tags_1 = require("@angular/compiler/src/ml_parser/tags");
    var parse_util_1 = require("@angular/compiler/src/parse_util");
    var selector_1 = require("@angular/compiler/src/selector");
    var util_1 = require("@angular/compiler/src/util");
    var PROPERTY_PARTS_SEPARATOR = '.';
    var ATTRIBUTE_PREFIX = 'attr';
    var CLASS_PREFIX = 'class';
    var STYLE_PREFIX = 'style';
    var TEMPLATE_ATTR_PREFIX = '*';
    var ANIMATE_PROP_PREFIX = 'animate-';
    /**
     * Parses bindings in templates and in the directive host area.
     */
    var BindingParser = /** @class */ (function () {
        function BindingParser(_exprParser, _interpolationConfig, _schemaRegistry, pipes, errors) {
            this._exprParser = _exprParser;
            this._interpolationConfig = _interpolationConfig;
            this._schemaRegistry = _schemaRegistry;
            this.errors = errors;
            this.pipesByName = null;
            this._usedPipes = new Map();
            // When the `pipes` parameter is `null`, do not check for used pipes
            // This is used in IVY when we might not know the available pipes at compile time
            if (pipes) {
                var pipesByName_1 = new Map();
                pipes.forEach(function (pipe) { return pipesByName_1.set(pipe.name, pipe); });
                this.pipesByName = pipesByName_1;
            }
        }
        Object.defineProperty(BindingParser.prototype, "interpolationConfig", {
            get: function () {
                return this._interpolationConfig;
            },
            enumerable: false,
            configurable: true
        });
        BindingParser.prototype.getUsedPipes = function () {
            return Array.from(this._usedPipes.values());
        };
        BindingParser.prototype.createBoundHostProperties = function (dirMeta, sourceSpan) {
            var _this = this;
            if (dirMeta.hostProperties) {
                var boundProps_1 = [];
                Object.keys(dirMeta.hostProperties).forEach(function (propName) {
                    var expression = dirMeta.hostProperties[propName];
                    if (typeof expression === 'string') {
                        _this.parsePropertyBinding(propName, expression, true, sourceSpan, sourceSpan.start.offset, undefined, [], boundProps_1);
                    }
                    else {
                        _this._reportError("Value of the host property binding \"" + propName + "\" needs to be a string representing an expression but got \"" + expression + "\" (" + typeof expression + ")", sourceSpan);
                    }
                });
                return boundProps_1;
            }
            return null;
        };
        BindingParser.prototype.createDirectiveHostPropertyAsts = function (dirMeta, elementSelector, sourceSpan) {
            var _this = this;
            var boundProps = this.createBoundHostProperties(dirMeta, sourceSpan);
            return boundProps &&
                boundProps.map(function (prop) { return _this.createBoundElementProperty(elementSelector, prop); });
        };
        BindingParser.prototype.createDirectiveHostEventAsts = function (dirMeta, sourceSpan) {
            var _this = this;
            if (dirMeta.hostListeners) {
                var targetEvents_1 = [];
                Object.keys(dirMeta.hostListeners).forEach(function (propName) {
                    var expression = dirMeta.hostListeners[propName];
                    if (typeof expression === 'string') {
                        // TODO: pass a more accurate handlerSpan for this event.
                        _this.parseEvent(propName, expression, sourceSpan, sourceSpan, [], targetEvents_1);
                    }
                    else {
                        _this._reportError("Value of the host listener \"" + propName + "\" needs to be a string representing an expression but got \"" + expression + "\" (" + typeof expression + ")", sourceSpan);
                    }
                });
                return targetEvents_1;
            }
            return null;
        };
        BindingParser.prototype.parseInterpolation = function (value, sourceSpan) {
            var sourceInfo = sourceSpan.start.toString();
            try {
                var ast = this._exprParser.parseInterpolation(value, sourceInfo, sourceSpan.start.offset, this._interpolationConfig);
                if (ast)
                    this._reportExpressionParserErrors(ast.errors, sourceSpan);
                this._checkPipes(ast, sourceSpan);
                return ast;
            }
            catch (e) {
                this._reportError("" + e, sourceSpan);
                return this._exprParser.wrapLiteralPrimitive('ERROR', sourceInfo, sourceSpan.start.offset);
            }
        };
        /**
         * Parses the bindings in a microsyntax expression, and converts them to
         * `ParsedProperty` or `ParsedVariable`.
         *
         * @param tplKey template binding name
         * @param tplValue template binding value
         * @param sourceSpan span of template binding relative to entire the template
         * @param absoluteValueOffset start of the tplValue relative to the entire template
         * @param targetMatchableAttrs potential attributes to match in the template
         * @param targetProps target property bindings in the template
         * @param targetVars target variables in the template
         */
        BindingParser.prototype.parseInlineTemplateBinding = function (tplKey, tplValue, sourceSpan, absoluteValueOffset, targetMatchableAttrs, targetProps, targetVars) {
            var e_1, _a;
            var absoluteKeyOffset = sourceSpan.start.offset + TEMPLATE_ATTR_PREFIX.length;
            var bindings = this._parseTemplateBindings(tplKey, tplValue, sourceSpan, absoluteKeyOffset, absoluteValueOffset);
            try {
                for (var bindings_1 = tslib_1.__values(bindings), bindings_1_1 = bindings_1.next(); !bindings_1_1.done; bindings_1_1 = bindings_1.next()) {
                    var binding = bindings_1_1.value;
                    // sourceSpan is for the entire HTML attribute. bindingSpan is for a particular
                    // binding within the microsyntax expression so it's more narrow than sourceSpan.
                    var bindingSpan = moveParseSourceSpan(sourceSpan, binding.sourceSpan);
                    var key = binding.key.source;
                    var keySpan = moveParseSourceSpan(sourceSpan, binding.key.span);
                    if (binding instanceof ast_1.VariableBinding) {
                        var value = binding.value ? binding.value.source : '$implicit';
                        var valueSpan = binding.value ? moveParseSourceSpan(sourceSpan, binding.value.span) : undefined;
                        targetVars.push(new ast_1.ParsedVariable(key, value, bindingSpan, keySpan, valueSpan));
                    }
                    else if (binding.value) {
                        var valueSpan = moveParseSourceSpan(sourceSpan, binding.value.ast.sourceSpan);
                        this._parsePropertyAst(key, binding.value, sourceSpan, valueSpan, targetMatchableAttrs, targetProps);
                    }
                    else {
                        targetMatchableAttrs.push([key, '']);
                        this.parseLiteralAttr(key, null, sourceSpan, absoluteValueOffset, undefined, targetMatchableAttrs, targetProps);
                    }
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (bindings_1_1 && !bindings_1_1.done && (_a = bindings_1.return)) _a.call(bindings_1);
                }
                finally { if (e_1) throw e_1.error; }
            }
        };
        /**
         * Parses the bindings in a microsyntax expression, e.g.
         * ```
         *    <tag *tplKey="let value1 = prop; let value2 = localVar">
         * ```
         *
         * @param tplKey template binding name
         * @param tplValue template binding value
         * @param sourceSpan span of template binding relative to entire the template
         * @param absoluteKeyOffset start of the `tplKey`
         * @param absoluteValueOffset start of the `tplValue`
         */
        BindingParser.prototype._parseTemplateBindings = function (tplKey, tplValue, sourceSpan, absoluteKeyOffset, absoluteValueOffset) {
            var _this = this;
            var sourceInfo = sourceSpan.start.toString();
            try {
                var bindingsResult = this._exprParser.parseTemplateBindings(tplKey, tplValue, sourceInfo, absoluteKeyOffset, absoluteValueOffset);
                this._reportExpressionParserErrors(bindingsResult.errors, sourceSpan);
                bindingsResult.templateBindings.forEach(function (binding) {
                    if (binding.value instanceof ast_1.ASTWithSource) {
                        _this._checkPipes(binding.value, sourceSpan);
                    }
                });
                bindingsResult.warnings.forEach(function (warning) {
                    _this._reportError(warning, sourceSpan, parse_util_1.ParseErrorLevel.WARNING);
                });
                return bindingsResult.templateBindings;
            }
            catch (e) {
                this._reportError("" + e, sourceSpan);
                return [];
            }
        };
        BindingParser.prototype.parseLiteralAttr = function (name, value, sourceSpan, absoluteOffset, valueSpan, targetMatchableAttrs, targetProps) {
            if (isAnimationLabel(name)) {
                name = name.substring(1);
                if (value) {
                    this._reportError("Assigning animation triggers via @prop=\"exp\" attributes with an expression is invalid." +
                        " Use property bindings (e.g. [@prop]=\"exp\") or use an attribute without a value (e.g. @prop) instead.", sourceSpan, parse_util_1.ParseErrorLevel.ERROR);
                }
                this._parseAnimation(name, value, sourceSpan, absoluteOffset, valueSpan, targetMatchableAttrs, targetProps);
            }
            else {
                targetProps.push(new ast_1.ParsedProperty(name, this._exprParser.wrapLiteralPrimitive(value, '', absoluteOffset), ast_1.ParsedPropertyType.LITERAL_ATTR, sourceSpan, valueSpan));
            }
        };
        BindingParser.prototype.parsePropertyBinding = function (name, expression, isHost, sourceSpan, absoluteOffset, valueSpan, targetMatchableAttrs, targetProps) {
            if (name.length === 0) {
                this._reportError("Property name is missing in binding", sourceSpan);
            }
            var isAnimationProp = false;
            if (name.startsWith(ANIMATE_PROP_PREFIX)) {
                isAnimationProp = true;
                name = name.substring(ANIMATE_PROP_PREFIX.length);
            }
            else if (isAnimationLabel(name)) {
                isAnimationProp = true;
                name = name.substring(1);
            }
            if (isAnimationProp) {
                this._parseAnimation(name, expression, sourceSpan, absoluteOffset, valueSpan, targetMatchableAttrs, targetProps);
            }
            else {
                this._parsePropertyAst(name, this._parseBinding(expression, isHost, valueSpan || sourceSpan, absoluteOffset), sourceSpan, valueSpan, targetMatchableAttrs, targetProps);
            }
        };
        BindingParser.prototype.parsePropertyInterpolation = function (name, value, sourceSpan, valueSpan, targetMatchableAttrs, targetProps) {
            var expr = this.parseInterpolation(value, valueSpan || sourceSpan);
            if (expr) {
                this._parsePropertyAst(name, expr, sourceSpan, valueSpan, targetMatchableAttrs, targetProps);
                return true;
            }
            return false;
        };
        BindingParser.prototype._parsePropertyAst = function (name, ast, sourceSpan, valueSpan, targetMatchableAttrs, targetProps) {
            targetMatchableAttrs.push([name, ast.source]);
            targetProps.push(new ast_1.ParsedProperty(name, ast, ast_1.ParsedPropertyType.DEFAULT, sourceSpan, valueSpan));
        };
        BindingParser.prototype._parseAnimation = function (name, expression, sourceSpan, absoluteOffset, valueSpan, targetMatchableAttrs, targetProps) {
            if (name.length === 0) {
                this._reportError('Animation trigger is missing', sourceSpan);
            }
            // This will occur when a @trigger is not paired with an expression.
            // For animations it is valid to not have an expression since */void
            // states will be applied by angular when the element is attached/detached
            var ast = this._parseBinding(expression || 'undefined', false, valueSpan || sourceSpan, absoluteOffset);
            targetMatchableAttrs.push([name, ast.source]);
            targetProps.push(new ast_1.ParsedProperty(name, ast, ast_1.ParsedPropertyType.ANIMATION, sourceSpan, valueSpan));
        };
        BindingParser.prototype._parseBinding = function (value, isHostBinding, sourceSpan, absoluteOffset) {
            var sourceInfo = (sourceSpan && sourceSpan.start || '(unknown)').toString();
            try {
                var ast = isHostBinding ?
                    this._exprParser.parseSimpleBinding(value, sourceInfo, absoluteOffset, this._interpolationConfig) :
                    this._exprParser.parseBinding(value, sourceInfo, absoluteOffset, this._interpolationConfig);
                if (ast)
                    this._reportExpressionParserErrors(ast.errors, sourceSpan);
                this._checkPipes(ast, sourceSpan);
                return ast;
            }
            catch (e) {
                this._reportError("" + e, sourceSpan);
                return this._exprParser.wrapLiteralPrimitive('ERROR', sourceInfo, absoluteOffset);
            }
        };
        BindingParser.prototype.createBoundElementProperty = function (elementSelector, boundProp, skipValidation, mapPropertyName) {
            if (skipValidation === void 0) { skipValidation = false; }
            if (mapPropertyName === void 0) { mapPropertyName = true; }
            if (boundProp.isAnimation) {
                return new ast_1.BoundElementProperty(boundProp.name, 4 /* Animation */, core_1.SecurityContext.NONE, boundProp.expression, null, boundProp.sourceSpan, boundProp.valueSpan);
            }
            var unit = null;
            var bindingType = undefined;
            var boundPropertyName = null;
            var parts = boundProp.name.split(PROPERTY_PARTS_SEPARATOR);
            var securityContexts = undefined;
            // Check for special cases (prefix style, attr, class)
            if (parts.length > 1) {
                if (parts[0] == ATTRIBUTE_PREFIX) {
                    boundPropertyName = parts.slice(1).join(PROPERTY_PARTS_SEPARATOR);
                    if (!skipValidation) {
                        this._validatePropertyOrAttributeName(boundPropertyName, boundProp.sourceSpan, true);
                    }
                    securityContexts = calcPossibleSecurityContexts(this._schemaRegistry, elementSelector, boundPropertyName, true);
                    var nsSeparatorIdx = boundPropertyName.indexOf(':');
                    if (nsSeparatorIdx > -1) {
                        var ns = boundPropertyName.substring(0, nsSeparatorIdx);
                        var name_1 = boundPropertyName.substring(nsSeparatorIdx + 1);
                        boundPropertyName = tags_1.mergeNsAndName(ns, name_1);
                    }
                    bindingType = 1 /* Attribute */;
                }
                else if (parts[0] == CLASS_PREFIX) {
                    boundPropertyName = parts[1];
                    bindingType = 2 /* Class */;
                    securityContexts = [core_1.SecurityContext.NONE];
                }
                else if (parts[0] == STYLE_PREFIX) {
                    unit = parts.length > 2 ? parts[2] : null;
                    boundPropertyName = parts[1];
                    bindingType = 3 /* Style */;
                    securityContexts = [core_1.SecurityContext.STYLE];
                }
            }
            // If not a special case, use the full property name
            if (boundPropertyName === null) {
                var mappedPropName = this._schemaRegistry.getMappedPropName(boundProp.name);
                boundPropertyName = mapPropertyName ? mappedPropName : boundProp.name;
                securityContexts = calcPossibleSecurityContexts(this._schemaRegistry, elementSelector, mappedPropName, false);
                bindingType = 0 /* Property */;
                if (!skipValidation) {
                    this._validatePropertyOrAttributeName(mappedPropName, boundProp.sourceSpan, false);
                }
            }
            return new ast_1.BoundElementProperty(boundPropertyName, bindingType, securityContexts[0], boundProp.expression, unit, boundProp.sourceSpan, boundProp.valueSpan);
        };
        BindingParser.prototype.parseEvent = function (name, expression, sourceSpan, handlerSpan, targetMatchableAttrs, targetEvents) {
            if (name.length === 0) {
                this._reportError("Event name is missing in binding", sourceSpan);
            }
            if (isAnimationLabel(name)) {
                name = name.substr(1);
                this._parseAnimationEvent(name, expression, sourceSpan, handlerSpan, targetEvents);
            }
            else {
                this._parseRegularEvent(name, expression, sourceSpan, handlerSpan, targetMatchableAttrs, targetEvents);
            }
        };
        BindingParser.prototype.calcPossibleSecurityContexts = function (selector, propName, isAttribute) {
            var prop = this._schemaRegistry.getMappedPropName(propName);
            return calcPossibleSecurityContexts(this._schemaRegistry, selector, prop, isAttribute);
        };
        BindingParser.prototype._parseAnimationEvent = function (name, expression, sourceSpan, handlerSpan, targetEvents) {
            var matches = util_1.splitAtPeriod(name, [name, '']);
            var eventName = matches[0];
            var phase = matches[1].toLowerCase();
            if (phase) {
                switch (phase) {
                    case 'start':
                    case 'done':
                        var ast = this._parseAction(expression, handlerSpan);
                        targetEvents.push(new ast_1.ParsedEvent(eventName, phase, 1 /* Animation */, ast, sourceSpan, handlerSpan));
                        break;
                    default:
                        this._reportError("The provided animation output phase value \"" + phase + "\" for \"@" + eventName + "\" is not supported (use start or done)", sourceSpan);
                        break;
                }
            }
            else {
                this._reportError("The animation trigger output event (@" + eventName + ") is missing its phase value name (start or done are currently supported)", sourceSpan);
            }
        };
        BindingParser.prototype._parseRegularEvent = function (name, expression, sourceSpan, handlerSpan, targetMatchableAttrs, targetEvents) {
            // long format: 'target: eventName'
            var _a = tslib_1.__read(util_1.splitAtColon(name, [null, name]), 2), target = _a[0], eventName = _a[1];
            var ast = this._parseAction(expression, handlerSpan);
            targetMatchableAttrs.push([name, ast.source]);
            targetEvents.push(new ast_1.ParsedEvent(eventName, target, 0 /* Regular */, ast, sourceSpan, handlerSpan));
            // Don't detect directives for event names for now,
            // so don't add the event name to the matchableAttrs
        };
        BindingParser.prototype._parseAction = function (value, sourceSpan) {
            var sourceInfo = (sourceSpan && sourceSpan.start || '(unknown').toString();
            var absoluteOffset = (sourceSpan && sourceSpan.start) ? sourceSpan.start.offset : 0;
            try {
                var ast = this._exprParser.parseAction(value, sourceInfo, absoluteOffset, this._interpolationConfig);
                if (ast) {
                    this._reportExpressionParserErrors(ast.errors, sourceSpan);
                }
                if (!ast || ast.ast instanceof ast_1.EmptyExpr) {
                    this._reportError("Empty expressions are not allowed", sourceSpan);
                    return this._exprParser.wrapLiteralPrimitive('ERROR', sourceInfo, absoluteOffset);
                }
                this._checkPipes(ast, sourceSpan);
                return ast;
            }
            catch (e) {
                this._reportError("" + e, sourceSpan);
                return this._exprParser.wrapLiteralPrimitive('ERROR', sourceInfo, absoluteOffset);
            }
        };
        BindingParser.prototype._reportError = function (message, sourceSpan, level) {
            if (level === void 0) { level = parse_util_1.ParseErrorLevel.ERROR; }
            this.errors.push(new parse_util_1.ParseError(sourceSpan, message, level));
        };
        BindingParser.prototype._reportExpressionParserErrors = function (errors, sourceSpan) {
            var e_2, _a;
            try {
                for (var errors_1 = tslib_1.__values(errors), errors_1_1 = errors_1.next(); !errors_1_1.done; errors_1_1 = errors_1.next()) {
                    var error = errors_1_1.value;
                    this._reportError(error.message, sourceSpan);
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (errors_1_1 && !errors_1_1.done && (_a = errors_1.return)) _a.call(errors_1);
                }
                finally { if (e_2) throw e_2.error; }
            }
        };
        // Make sure all the used pipes are known in `this.pipesByName`
        BindingParser.prototype._checkPipes = function (ast, sourceSpan) {
            var _this = this;
            if (ast && this.pipesByName) {
                var collector = new PipeCollector();
                ast.visit(collector);
                collector.pipes.forEach(function (ast, pipeName) {
                    var pipeMeta = _this.pipesByName.get(pipeName);
                    if (!pipeMeta) {
                        _this._reportError("The pipe '" + pipeName + "' could not be found", new parse_util_1.ParseSourceSpan(sourceSpan.start.moveBy(ast.span.start), sourceSpan.start.moveBy(ast.span.end)));
                    }
                    else {
                        _this._usedPipes.set(pipeName, pipeMeta);
                    }
                });
            }
        };
        /**
         * @param propName the name of the property / attribute
         * @param sourceSpan
         * @param isAttr true when binding to an attribute
         */
        BindingParser.prototype._validatePropertyOrAttributeName = function (propName, sourceSpan, isAttr) {
            var report = isAttr ? this._schemaRegistry.validateAttribute(propName) :
                this._schemaRegistry.validateProperty(propName);
            if (report.error) {
                this._reportError(report.msg, sourceSpan, parse_util_1.ParseErrorLevel.ERROR);
            }
        };
        return BindingParser;
    }());
    exports.BindingParser = BindingParser;
    var PipeCollector = /** @class */ (function (_super) {
        tslib_1.__extends(PipeCollector, _super);
        function PipeCollector() {
            var _this = _super !== null && _super.apply(this, arguments) || this;
            _this.pipes = new Map();
            return _this;
        }
        PipeCollector.prototype.visitPipe = function (ast, context) {
            this.pipes.set(ast.name, ast);
            ast.exp.visit(this);
            this.visitAll(ast.args, context);
            return null;
        };
        return PipeCollector;
    }(ast_1.RecursiveAstVisitor));
    exports.PipeCollector = PipeCollector;
    function isAnimationLabel(name) {
        return name[0] == '@';
    }
    function calcPossibleSecurityContexts(registry, selector, propName, isAttribute) {
        var ctxs = [];
        selector_1.CssSelector.parse(selector).forEach(function (selector) {
            var elementNames = selector.element ? [selector.element] : registry.allKnownElementNames();
            var notElementNames = new Set(selector.notSelectors.filter(function (selector) { return selector.isElementSelector(); })
                .map(function (selector) { return selector.element; }));
            var possibleElementNames = elementNames.filter(function (elementName) { return !notElementNames.has(elementName); });
            ctxs.push.apply(ctxs, tslib_1.__spread(possibleElementNames.map(function (elementName) { return registry.securityContext(elementName, propName, isAttribute); })));
        });
        return ctxs.length === 0 ? [core_1.SecurityContext.NONE] : Array.from(new Set(ctxs)).sort();
    }
    exports.calcPossibleSecurityContexts = calcPossibleSecurityContexts;
    /**
     * Compute a new ParseSourceSpan based off an original `sourceSpan` by using
     * absolute offsets from the specified `absoluteSpan`.
     *
     * @param sourceSpan original source span
     * @param absoluteSpan absolute source span to move to
     */
    function moveParseSourceSpan(sourceSpan, absoluteSpan) {
        // The difference of two absolute offsets provide the relative offset
        var startDiff = absoluteSpan.start - sourceSpan.start.offset;
        var endDiff = absoluteSpan.end - sourceSpan.end.offset;
        return new parse_util_1.ParseSourceSpan(sourceSpan.start.moveBy(startDiff), sourceSpan.end.moveBy(endDiff));
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYmluZGluZ19wYXJzZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci9zcmMvdGVtcGxhdGVfcGFyc2VyL2JpbmRpbmdfcGFyc2VyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFHSCxtREFBd0M7SUFDeEMsbUVBQTRSO0lBRzVSLDZEQUFpRDtJQUNqRCwrREFBMEY7SUFFMUYsMkRBQXdDO0lBQ3hDLG1EQUFvRDtJQUVwRCxJQUFNLHdCQUF3QixHQUFHLEdBQUcsQ0FBQztJQUNyQyxJQUFNLGdCQUFnQixHQUFHLE1BQU0sQ0FBQztJQUNoQyxJQUFNLFlBQVksR0FBRyxPQUFPLENBQUM7SUFDN0IsSUFBTSxZQUFZLEdBQUcsT0FBTyxDQUFDO0lBQzdCLElBQU0sb0JBQW9CLEdBQUcsR0FBRyxDQUFDO0lBQ2pDLElBQU0sbUJBQW1CLEdBQUcsVUFBVSxDQUFDO0lBRXZDOztPQUVHO0lBQ0g7UUFLRSx1QkFDWSxXQUFtQixFQUFVLG9CQUF5QyxFQUN0RSxlQUFzQyxFQUFFLEtBQWdDLEVBQ3pFLE1BQW9CO1lBRm5CLGdCQUFXLEdBQVgsV0FBVyxDQUFRO1lBQVUseUJBQW9CLEdBQXBCLG9CQUFvQixDQUFxQjtZQUN0RSxvQkFBZSxHQUFmLGVBQWUsQ0FBdUI7WUFDdkMsV0FBTSxHQUFOLE1BQU0sQ0FBYztZQVAvQixnQkFBVyxHQUF5QyxJQUFJLENBQUM7WUFFakQsZUFBVSxHQUFvQyxJQUFJLEdBQUcsRUFBRSxDQUFDO1lBTTlELG9FQUFvRTtZQUNwRSxpRkFBaUY7WUFDakYsSUFBSSxLQUFLLEVBQUU7Z0JBQ1QsSUFBTSxhQUFXLEdBQW9DLElBQUksR0FBRyxFQUFFLENBQUM7Z0JBQy9ELEtBQUssQ0FBQyxPQUFPLENBQUMsVUFBQSxJQUFJLElBQUksT0FBQSxhQUFXLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxJQUFJLEVB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QUFDO1lBQ3RELElBQU0sb0JBQW9CLEdBQ3RCLFlBQVksQ0FBQyxNQUFNLENBQUMsVUFBQSxXQUFXLElBQUksT0FBQSxDQUFDLGVBQWUsQ0FBQyxHQUFHLENBQUMsV0FBVyxDQUFDLEVBQWpDLENBQWlDLENBQUMsQ0FBQztZQUUxRSxJQUFJLENBQUMsSUFBSSxPQUFULElBQUksbUJBQVMsb0JBQW9CLENBQUMsR0FBRyxDQUNqQyxVQUFBLFdBQVcsSUFBSSxPQUFBLFFBQVEsQ0FBQyxlQUFlLENBQUMsV0FBVyxFQUFFLFFBQVEsRUFBRSxXQUFXLENBQUMsRUFBNUQsQ0FBNEQsQ0FBQyxHQUFFO1FBQ3BGLENBQUMsQ0FBQyxDQUFDO1FBQ0gsT0FBTyxJQUFJLENBQUMsTUFBTSxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxzQkFBZSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLElBQUksR0FBRyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsSUFBSSxFQUFFLENBQUM7SUFDdkYsQ0FBQztJQWhCRCxvRUFnQkM7SUFFRDs7Ozs7O09BTUc7SUFDSCxTQUFTLG1CQUFtQixDQUN4QixVQUEyQixFQUFFLFlBQWdDO1FBQy9ELHFFQUFxRTtRQUNyRSxJQUFNLFNBQVMsR0FBRyxZQUFZLENBQUMsS0FBSyxHQUFHLFVBQVUsQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDO1FBQy9ELElBQU0sT0FBTyxHQUFHLFlBQVksQ0FBQyxHQUFHLEdBQUcsVUFBVSxDQUFDLEdBQUcsQ0FBQyxNQUFNLENBQUM7UUFDekQsT0FBTyxJQUFJLDRCQUFlLENBQUMsVUFBVSxDQUFDLEtBQUssQ0FBQyxNQUFNLENBQUMsU0FBUyxDQUFDLEVBQUUsVUFBVSxDQUFDLEdBQUcsQ0FBQyxNQUFNLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQztJQUNqRyxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Q29tcGlsZURpcmVjdGl2ZVN1bW1hcnksIENvbXBpbGVQaXBlU3VtbWFyeX0gZnJvbSAnLi4vY29tcGlsZV9tZXRhZGF0YSc7XG5pbXBvcnQge1NlY3VyaXR5Q29udGV4dH0gZnJvbSAnLi4vY29yZSc7XG5pbXBvcnQge0Fic29sdXRlU291cmNlU3BhbiwgQVNUV2l0aFNvdXJjZSwgQmluZGluZ1BpcGUsIEJpbmRpbmdUeXBlLCBCb3VuZEVsZW1lbnRQcm9wZXJ0eSwgRW1wdHlFeHByLCBQYXJzZWRFdmVudCwgUGFyc2VkRXZlbnRUeXBlLCBQYXJzZWRQcm9wZXJ0eSwgUGFyc2VkUHJvcGVydHlUeXBlLCBQYXJzZWRWYXJpYWJsZSwgUGFyc2VyRXJyb3IsIFJlY3Vyc2l2ZUFzdFZpc2l0b3IsIFRlbXBsYXRlQmluZGluZywgVmFyaWFibGVCaW5kaW5nfSBmcm9tICcuLi9leHByZXNzaW9uX3BhcnNlci9hc3QnO1xuaW1wb3J0IHtQYXJzZXJ9IGZyb20gJy4uL2V4cHJlc3Npb25fcGFyc2VyL3BhcnNlcic7XG5pbXBvcnQge0ludGVycG9sYXRpb25Db25maWd9IGZyb20gJy4uL21sX3BhcnNlci9pbnRlcnBvbGF0aW9uX2NvbmZpZyc7XG5pbXBvcnQge21lcmdlTnNBbmROYW1lfSBmcm9tICcuLi9tbF9wYXJzZXIvdGFncyc7XG5pbXBvcnQge1BhcnNlRXJyb3IsIFBhcnNlRXJyb3JMZXZlbCwgUGFyc2VMb2NhdGlvbiwgUGFyc2VTb3VyY2VTcGFufSBmcm9tICcuLi9wYXJzZV91dGlsJztcbmltcG9ydCB7RWxlbWVudFNjaGVtYVJlZ2lzdHJ5fSBmcm9tICcuLi9zY2hlbWEvZWxlbWVudF9zY2hlbWFfcmVnaXN0cnknO1xuaW1wb3J0IHtDc3NTZWxlY3Rvcn0gZnJvbSAnLi4vc2VsZWN0b3InO1xuaW1wb3J0IHtzcGxpdEF0Q29sb24sIHNwbGl0QXRQZXJpb2R9IGZyb20gJy4uL3V0aWwnO1xuXG5jb25zdCBQUk9QRVJUWV9QQVJUU19TRVBBUkFUT1IgPSAnLic7XG5jb25zdCBBVFRSSUJVVEVfUFJFRklYID0gJ2F0dHInO1xuY29uc3QgQ0xBU1NfUFJFRklYID0gJ2NsYXNzJztcbmNvbnN0IFNUWUxFX1BSRUZJWCA9ICdzdHlsZSc7XG5jb25zdCBURU1QTEFURV9BVFRSX1BSRUZJWCA9ICcqJztcbmNvbnN0IEFOSU1BVEVfUFJPUF9QUkVGSVggPSAnYW5pbWF0ZS0nO1xuXG4vKipcbiAqIFBhcnNlcyBiaW5kaW5ncyBpbiB0ZW1wbGF0ZXMgYW5kIGluIHRoZSBkaXJlY3RpdmUgaG9zdCBhcmVhLlxuICovXG5leHBvcnQgY2xhc3MgQmluZGluZ1BhcnNlciB7XG4gIHBpcGVzQnlOYW1lOiBNYXA8c3RyaW5nLCBDb21waWxlUGlwZVN1bW1hcnk+fG51bGwgPSBudWxsO1xuXG4gIHByaXZhdGUgX3VzZWRQaXBlczogTWFwPHN0cmluZywgQ29tcGlsZVBpcGVTdW1tYXJ5PiA9IG5ldyBNYXAoKTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgX2V4cHJQYXJzZXI6IFBhcnNlciwgcHJpdmF0ZSBfaW50ZXJwb2xhdGlvbkNvbmZpZzogSW50ZXJwb2xhdGlvbkNvbmZpZyxcbiAgICAgIHByaXZhdGUgX3NjaGVtYVJlZ2lzdHJ5OiBFbGVtZW50U2NoZW1hUmVnaXN0cnksIHBpcGVzOiBDb21waWxlUGlwZVN1bW1hcnlbXXxudWxsLFxuICAgICAgcHVibGljIGVycm9yczogUGFyc2VFcnJvcltdKSB7XG4gICAgLy8gV2hlbiB0aGUgYHBpcGVzYCBwYXJhbWV0ZXIgaXMgYG51bGxgLCBkbyBub3QgY2hlY2sgZm9yIHVzZWQgcGlwZXNcbiAgICAvLyBUaGlzIGlzIHVzZWQgaW4gSVZZIHdoZW4gd2UgbWlnaHQgbm90IGtub3cgdGhlIGF2YWlsYWJsZSBwaXBlcyBhdCBjb21waWxlIHRpbWVcbiAgICBpZiAocGlwZXMpIHtcbiAgICAgIGNvbnN0IHBpcGVzQnlOYW1lOiBNYXA8c3RyaW5nLCBDb21waWxlUGlwZVN1bW1hcnk+ID0gbmV3IE1hcCgpO1xuICAgICAgcGlwZXMuZm9yRWFjaChwaXBlID0+IHBpcGVzQnlOYW1lLnNldChwaXBlLm5hbWUsIHBpcGUpKTtcbiAgICAgIHRoaXMucGlwZXNCeU5hbWUgPSBwaXBlc0J5TmFtZTtcbiAgICB9XG4gIH1cblxuICBnZXQgaW50ZXJwb2xhdGlvbkNvbmZpZygpOiBJbnRlcnBvbGF0aW9uQ29uZmlnIHtcbiAgICByZXR1cm4gdGhpcy5faW50ZXJwb2xhdGlvbkNvbmZpZztcbiAgfVxuXG4gIGdldFVzZWRQaXBlcygpOiBDb21waWxlUGlwZVN1bW1hcnlbXSB7XG4gICAgcmV0dXJuIEFycmF5LmZyb20odGhpcy5fdXNlZFBpcGVzLnZhbHVlcygpKTtcbiAgfVxuXG4gIGNyZWF0ZUJvdW5kSG9zdFByb3BlcnRpZXMoZGlyTWV0YTogQ29tcGlsZURpcmVjdGl2ZVN1bW1hcnksIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3Bhbik6XG4gICAgICBQYXJzZWRQcm9wZXJ0eVtdfG51bGwge1xuICAgIGlmIChkaXJNZXRhLmhvc3RQcm9wZXJ0aWVzKSB7XG4gICAgICBjb25zdCBib3VuZFByb3BzOiBQYXJzZWRQcm9wZXJ0eVtdID0gW107XG4gICAgICBPYmplY3Qua2V5cyhkaXJNZXRhLmhvc3RQcm9wZXJ0aWVzKS5mb3JFYWNoKHByb3BOYW1lID0+IHtcbiAgICAgICAgY29uc3QgZXhwcmVzc2lvbiA9IGRpck1ldGEuaG9zdFByb3BlcnRpZXNbcHJvcE5hbWVdO1xuICAgICAgICBpZiAodHlwZW9mIGV4cHJlc3Npb24gPT09ICdzdHJpbmcnKSB7XG4gICAgICAgICAgdGhpcy5wYXJzZVByb3BlcnR5QmluZGluZyhcbiAgICAgICAgICAgICAgcHJvcE5hbWUsIGV4cHJlc3Npb24sIHRydWUsIHNvdXJjZVNwYW4sIHNvdXJjZVNwYW4uc3RhcnQub2Zmc2V0LCB1bmRlZmluZWQsIFtdLFxuICAgICAgICAgICAgICBib3VuZFByb3BzKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICAgYFZhbHVlIG9mIHRoZSBob3N0IHByb3BlcnR5IGJpbmRpbmcgXCIke1xuICAgICAgICAgICAgICAgICAgcHJvcE5hbWV9XCIgbmVlZHMgdG8gYmUgYSBzdHJpbmcgcmVwcmVzZW50aW5nIGFuIGV4cHJlc3Npb24gYnV0IGdvdCBcIiR7XG4gICAgICAgICAgICAgICAgICBleHByZXNzaW9ufVwiICgke3R5cGVvZiBleHByZXNzaW9ufSlgLFxuICAgICAgICAgICAgICBzb3VyY2VTcGFuKTtcbiAgICAgICAgfVxuICAgICAgfSk7XG4gICAgICByZXR1cm4gYm91bmRQcm9wcztcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBjcmVhdGVEaXJlY3RpdmVIb3N0UHJvcGVydHlBc3RzKFxuICAgICAgZGlyTWV0YTogQ29tcGlsZURpcmVjdGl2ZVN1bW1hcnksIGVsZW1lbnRTZWxlY3Rvcjogc3RyaW5nLFxuICAgICAgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuKTogQm91bmRFbGVtZW50UHJvcGVydHlbXXxudWxsIHtcbiAgICBjb25zdCBib3VuZFByb3BzID0gdGhpcy5jcmVhdGVCb3VuZEhvc3RQcm9wZXJ0aWVzKGRpck1ldGEsIHNvdXJjZVNwYW4pO1xuICAgIHJldHVybiBib3VuZFByb3BzICYmXG4gICAgICAgIGJvdW5kUHJvcHMubWFwKChwcm9wKSA9PiB0aGlzLmNyZWF0ZUJvdW5kRWxlbWVudFByb3BlcnR5KGVsZW1lbnRTZWxlY3RvciwgcHJvcCkpO1xuICB9XG5cbiAgY3JlYXRlRGlyZWN0aXZlSG9zdEV2ZW50QXN0cyhkaXJNZXRhOiBDb21waWxlRGlyZWN0aXZlU3VtbWFyeSwgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuKTpcbiAgICAgIFBhcnNlZEV2ZW50W118bnVsbCB7XG4gICAgaWYgKGRpck1ldGEuaG9zdExpc3RlbmVycykge1xuICAgICAgY29uc3QgdGFyZ2V0RXZlbnRzOiBQYXJzZWRFdmVudFtdID0gW107XG4gICAgICBPYmplY3Qua2V5cyhkaXJNZXRhLmhvc3RMaXN0ZW5lcnMpLmZvckVhY2gocHJvcE5hbWUgPT4ge1xuICAgICAgICBjb25zdCBleHByZXNzaW9uID0gZGlyTWV0YS5ob3N0TGlzdGVuZXJzW3Byb3BOYW1lXTtcbiAgICAgICAgaWYgKHR5cGVvZiBleHByZXNzaW9uID09PSAnc3RyaW5nJykge1xuICAgICAgICAgIC8vIFRPRE86IHBhc3MgYSBtb3JlIGFjY3VyYXRlIGhhbmRsZXJTcGFuIGZvciB0aGlzIGV2ZW50LlxuICAgICAgICAgIHRoaXMucGFyc2VFdmVudChwcm9wTmFtZSwgZXhwcmVzc2lvbiwgc291cmNlU3Bhbiwgc291cmNlU3BhbiwgW10sIHRhcmdldEV2ZW50cyk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgIGBWYWx1ZSBvZiB0aGUgaG9zdCBsaXN0ZW5lciBcIiR7XG4gICAgICAgICAgICAgICAgICBwcm9wTmFtZX1cIiBuZWVkcyB0byBiZSBhIHN0cmluZyByZXByZXNlbnRpbmcgYW4gZXhwcmVzc2lvbiBidXQgZ290IFwiJHtcbiAgICAgICAgICAgICAgICAgIGV4cHJlc3Npb259XCIgKCR7dHlwZW9mIGV4cHJlc3Npb259KWAsXG4gICAgICAgICAgICAgIHNvdXJjZVNwYW4pO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICAgIHJldHVybiB0YXJnZXRFdmVudHM7XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgcGFyc2VJbnRlcnBvbGF0aW9uKHZhbHVlOiBzdHJpbmcsIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3Bhbik6IEFTVFdpdGhTb3VyY2Uge1xuICAgIGNvbnN0IHNvdXJjZUluZm8gPSBzb3VyY2VTcGFuLnN0YXJ0LnRvU3RyaW5nKCk7XG5cbiAgICB0cnkge1xuICAgICAgY29uc3QgYXN0ID0gdGhpcy5fZXhwclBhcnNlci5wYXJzZUludGVycG9sYXRpb24oXG4gICAgICAgICAgdmFsdWUsIHNvdXJjZUluZm8sIHNvdXJjZVNwYW4uc3RhcnQub2Zmc2V0LCB0aGlzLl9pbnRlcnBvbGF0aW9uQ29uZmlnKSE7XG4gICAgICBpZiAoYXN0KSB0aGlzLl9yZXBvcnRFeHByZXNzaW9uUGFyc2VyRXJyb3JzKGFzdC5lcnJvcnMsIHNvdXJjZVNwYW4pO1xuICAgICAgdGhpcy5fY2hlY2tQaXBlcyhhc3QsIHNvdXJjZVNwYW4pO1xuICAgICAgcmV0dXJuIGFzdDtcbiAgICB9IGNhdGNoIChlKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihgJHtlfWAsIHNvdXJjZVNwYW4pO1xuICAgICAgcmV0dXJuIHRoaXMuX2V4cHJQYXJzZXIud3JhcExpdGVyYWxQcmltaXRpdmUoJ0VSUk9SJywgc291cmNlSW5mbywgc291cmNlU3Bhbi5zdGFydC5vZmZzZXQpO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBQYXJzZXMgdGhlIGJpbmRpbmdzIGluIGEgbWljcm9zeW50YXggZXhwcmVzc2lvbiwgYW5kIGNvbnZlcnRzIHRoZW0gdG9cbiAgICogYFBhcnNlZFByb3BlcnR5YCBvciBgUGFyc2VkVmFyaWFibGVgLlxuICAgKlxuICAgKiBAcGFyYW0gdHBsS2V5IHRlbXBsYXRlIGJpbmRpbmcgbmFtZVxuICAgKiBAcGFyYW0gdHBsVmFsdWUgdGVtcGxhdGUgYmluZGluZyB2YWx1ZVxuICAgKiBAcGFyYW0gc291cmNlU3BhbiBzcGFuIG9mIHRlbXBsYXRlIGJpbmRpbmcgcmVsYXRpdmUgdG8gZW50aXJlIHRoZSB0ZW1wbGF0ZVxuICAgKiBAcGFyYW0gYWJzb2x1dGVWYWx1ZU9mZnNldCBzdGFydCBvZiB0aGUgdHBsVmFsdWUgcmVsYXRpdmUgdG8gdGhlIGVudGlyZSB0ZW1wbGF0ZVxuICAgKiBAcGFyYW0gdGFyZ2V0TWF0Y2hhYmxlQXR0cnMgcG90ZW50aWFsIGF0dHJpYnV0ZXMgdG8gbWF0Y2ggaW4gdGhlIHRlbXBsYXRlXG4gICAqIEBwYXJhbSB0YXJnZXRQcm9wcyB0YXJnZXQgcHJvcGVydHkgYmluZGluZ3MgaW4gdGhlIHRlbXBsYXRlXG4gICAqIEBwYXJhbSB0YXJnZXRWYXJzIHRhcmdldCB2YXJpYWJsZXMgaW4gdGhlIHRlbXBsYXRlXG4gICAqL1xuICBwYXJzZUlubGluZVRlbXBsYXRlQmluZGluZyhcbiAgICAgIHRwbEtleTogc3RyaW5nLCB0cGxWYWx1ZTogc3RyaW5nLCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIGFic29sdXRlVmFsdWVPZmZzZXQ6IG51bWJlcixcbiAgICAgIHRhcmdldE1hdGNoYWJsZUF0dHJzOiBzdHJpbmdbXVtdLCB0YXJnZXRQcm9wczogUGFyc2VkUHJvcGVydHlbXSxcbiAgICAgIHRhcmdldFZhcnM6IFBhcnNlZFZhcmlhYmxlW10pIHtcbiAgICBjb25zdCBhYnNvbHV0ZUtleU9mZnNldCA9IHNvdXJjZVNwYW4uc3RhcnQub2Zmc2V0ICsgVEVNUExBVEVfQVRUUl9QUkVGSVgubGVuZ3RoO1xuICAgIGNvbnN0IGJpbmRpbmdzID0gdGhpcy5fcGFyc2VUZW1wbGF0ZUJpbmRpbmdzKFxuICAgICAgICB0cGxLZXksIHRwbFZhbHVlLCBzb3VyY2VTcGFuLCBhYnNvbHV0ZUtleU9mZnNldCwgYWJzb2x1dGVWYWx1ZU9mZnNldCk7XG5cbiAgICBmb3IgKGNvbnN0IGJpbmRpbmcgb2YgYmluZGluZ3MpIHtcbiAgICAgIC8vIHNvdXJjZVNwYW4gaXMgZm9yIHRoZSBlbnRpcmUgSFRNTCBhdHRyaWJ1dGUuIGJpbmRpbmdTcGFuIGlzIGZvciBhIHBhcnRpY3VsYXJcbiAgICAgIC8vIGJpbmRpbmcgd2l0aGluIHRoZSBtaWNyb3N5bnRheCBleHByZXNzaW9uIHNvIGl0J3MgbW9yZSBuYXJyb3cgdGhhbiBzb3VyY2VTcGFuLlxuICAgICAgY29uc3QgYmluZGluZ1NwYW4gPSBtb3ZlUGFyc2VTb3VyY2VTcGFuKHNvdXJjZVNwYW4sIGJpbmRpbmcuc291cmNlU3Bhbik7XG4gICAgICBjb25zdCBrZXkgPSBiaW5kaW5nLmtleS5zb3VyY2U7XG4gICAgICBjb25zdCBrZXlTcGFuID0gbW92ZVBhcnNlU291cmNlU3Bhbihzb3VyY2VTcGFuLCBiaW5kaW5nLmtleS5zcGFuKTtcbiAgICAgIGlmIChiaW5kaW5nIGluc3RhbmNlb2YgVmFyaWFibGVCaW5kaW5nKSB7XG4gICAgICAgIGNvbnN0IHZhbHVlID0gYmluZGluZy52YWx1ZSA/IGJpbmRpbmcudmFsdWUuc291cmNlIDogJyRpbXBsaWNpdCc7XG4gICAgICAgIGNvbnN0IHZhbHVlU3BhbiA9XG4gICAgICAgICAgICBiaW5kaW5nLnZhbHVlID8gbW92ZVBhcnNlU291cmNlU3Bhbihzb3VyY2VTcGFuLCBiaW5kaW5nLnZhbHVlLnNwYW4pIDogdW5kZWZpbmVkO1xuICAgICAgICB0YXJnZXRWYXJzLnB1c2gobmV3IFBhcnNlZFZhcmlhYmxlKGtleSwgdmFsdWUsIGJpbmRpbmdTcGFuLCBrZXlTcGFuLCB2YWx1ZVNwYW4pKTtcbiAgICAgIH0gZWxzZSBpZiAoYmluZGluZy52YWx1ZSkge1xuICAgICAgICBjb25zdCB2YWx1ZVNwYW4gPSBtb3ZlUGFyc2VTb3VyY2VTcGFuKHNvdXJjZVNwYW4sIGJpbmRpbmcudmFsdWUuYXN0LnNvdXJjZVNwYW4pO1xuICAgICAgICB0aGlzLl9wYXJzZVByb3BlcnR5QXN0KFxuICAgICAgICAgICAga2V5LCBiaW5kaW5nLnZhbHVlLCBzb3VyY2VTcGFuLCB2YWx1ZVNwYW4sIHRhcmdldE1hdGNoYWJsZUF0dHJzLCB0YXJnZXRQcm9wcyk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICB0YXJnZXRNYXRjaGFibGVBdHRycy5wdXNoKFtrZXksICcnXSk7XG4gICAgICAgIHRoaXMucGFyc2VMaXRlcmFsQXR0cihcbiAgICAgICAgICAgIGtleSwgbnVsbCwgc291cmNlU3BhbiwgYWJzb2x1dGVWYWx1ZU9mZnNldCwgdW5kZWZpbmVkLCB0YXJnZXRNYXRjaGFibGVBdHRycyxcbiAgICAgICAgICAgIHRhcmdldFByb3BzKTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogUGFyc2VzIHRoZSBiaW5kaW5ncyBpbiBhIG1pY3Jvc3ludGF4IGV4cHJlc3Npb24sIGUuZy5cbiAgICogYGBgXG4gICAqICAgIDx0YWcgKnRwbEtleT1cImxldCB2YWx1ZTEgPSBwcm9wOyBsZXQgdmFsdWUyID0gbG9jYWxWYXJcIj5cbiAgICogYGBgXG4gICAqXG4gICAqIEBwYXJhbSB0cGxLZXkgdGVtcGxhdGUgYmluZGluZyBuYW1lXG4gICAqIEBwYXJhbSB0cGxWYWx1ZSB0ZW1wbGF0ZSBiaW5kaW5nIHZhbHVlXG4gICAqIEBwYXJhbSBzb3VyY2VTcGFuIHNwYW4gb2YgdGVtcGxhdGUgYmluZGluZyByZWxhdGl2ZSB0byBlbnRpcmUgdGhlIHRlbXBsYXRlXG4gICAqIEBwYXJhbSBhYnNvbHV0ZUtleU9mZnNldCBzdGFydCBvZiB0aGUgYHRwbEtleWBcbiAgICogQHBhcmFtIGFic29sdXRlVmFsdWVPZmZzZXQgc3RhcnQgb2YgdGhlIGB0cGxWYWx1ZWBcbiAgICovXG4gIHByaXZhdGUgX3BhcnNlVGVtcGxhdGVCaW5kaW5ncyhcbiAgICAgIHRwbEtleTogc3RyaW5nLCB0cGxWYWx1ZTogc3RyaW5nLCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIGFic29sdXRlS2V5T2Zmc2V0OiBudW1iZXIsXG4gICAgICBhYnNvbHV0ZVZhbHVlT2Zmc2V0OiBudW1iZXIpOiBUZW1wbGF0ZUJpbmRpbmdbXSB7XG4gICAgY29uc3Qgc291cmNlSW5mbyA9IHNvdXJjZVNwYW4uc3RhcnQudG9TdHJpbmcoKTtcblxuICAgIHRyeSB7XG4gICAgICBjb25zdCBiaW5kaW5nc1Jlc3VsdCA9IHRoaXMuX2V4cHJQYXJzZXIucGFyc2VUZW1wbGF0ZUJpbmRpbmdzKFxuICAgICAgICAgIHRwbEtleSwgdHBsVmFsdWUsIHNvdXJjZUluZm8sIGFic29sdXRlS2V5T2Zmc2V0LCBhYnNvbHV0ZVZhbHVlT2Zmc2V0KTtcbiAgICAgIHRoaXMuX3JlcG9ydEV4cHJlc3Npb25QYXJzZXJFcnJvcnMoYmluZGluZ3NSZXN1bHQuZXJyb3JzLCBzb3VyY2VTcGFuKTtcbiAgICAgIGJpbmRpbmdzUmVzdWx0LnRlbXBsYXRlQmluZGluZ3MuZm9yRWFjaCgoYmluZGluZykgPT4ge1xuICAgICAgICBpZiAoYmluZGluZy52YWx1ZSBpbnN0YW5jZW9mIEFTVFdpdGhTb3VyY2UpIHtcbiAgICAgICAgICB0aGlzLl9jaGVja1BpcGVzKGJpbmRpbmcudmFsdWUsIHNvdXJjZVNwYW4pO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICAgIGJpbmRpbmdzUmVzdWx0Lndhcm5pbmdzLmZvckVhY2goKHdhcm5pbmcpID0+IHtcbiAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3Iod2FybmluZywgc291cmNlU3BhbiwgUGFyc2VFcnJvckxldmVsLldBUk5JTkcpO1xuICAgICAgfSk7XG4gICAgICByZXR1cm4gYmluZGluZ3NSZXN1bHQudGVtcGxhdGVCaW5kaW5ncztcbiAgICB9IGNhdGNoIChlKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihgJHtlfWAsIHNvdXJjZVNwYW4pO1xuICAgICAgcmV0dXJuIFtdO1xuICAgIH1cbiAgfVxuXG4gIHBhcnNlTGl0ZXJhbEF0dHIoXG4gICAgICBuYW1lOiBzdHJpbmcsIHZhbHVlOiBzdHJpbmd8bnVsbCwgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLCBhYnNvbHV0ZU9mZnNldDogbnVtYmVyLFxuICAgICAgdmFsdWVTcGFuOiBQYXJzZVNvdXJjZVNwYW58dW5kZWZpbmVkLCB0YXJnZXRNYXRjaGFibGVBdHRyczogc3RyaW5nW11bXSxcbiAgICAgIHRhcmdldFByb3BzOiBQYXJzZWRQcm9wZXJ0eVtdKSB7XG4gICAgaWYgKGlzQW5pbWF0aW9uTGFiZWwobmFtZSkpIHtcbiAgICAgIG5hbWUgPSBuYW1lLnN1YnN0cmluZygxKTtcbiAgICAgIGlmICh2YWx1ZSkge1xuICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgIGBBc3NpZ25pbmcgYW5pbWF0aW9uIHRyaWdnZXJzIHZpYSBAcHJvcD1cImV4cFwiIGF0dHJpYnV0ZXMgd2l0aCBhbiBleHByZXNzaW9uIGlzIGludmFsaWQuYCArXG4gICAgICAgICAgICAgICAgYCBVc2UgcHJvcGVydHkgYmluZGluZ3MgKGUuZy4gW0Bwcm9wXT1cImV4cFwiKSBvciB1c2UgYW4gYXR0cmlidXRlIHdpdGhvdXQgYSB2YWx1ZSAoZS5nLiBAcHJvcCkgaW5zdGVhZC5gLFxuICAgICAgICAgICAgc291cmNlU3BhbiwgUGFyc2VFcnJvckxldmVsLkVSUk9SKTtcbiAgICAgIH1cbiAgICAgIHRoaXMuX3BhcnNlQW5pbWF0aW9uKFxuICAgICAgICAgIG5hbWUsIHZhbHVlLCBzb3VyY2VTcGFuLCBhYnNvbHV0ZU9mZnNldCwgdmFsdWVTcGFuLCB0YXJnZXRNYXRjaGFibGVBdHRycywgdGFyZ2V0UHJvcHMpO1xuICAgIH0gZWxzZSB7XG4gICAgICB0YXJnZXRQcm9wcy5wdXNoKG5ldyBQYXJzZWRQcm9wZXJ0eShcbiAgICAgICAgICBuYW1lLCB0aGlzLl9leHByUGFyc2VyLndyYXBMaXRlcmFsUHJpbWl0aXZlKHZhbHVlLCAnJywgYWJzb2x1dGVPZmZzZXQpLFxuICAgICAgICAgIFBhcnNlZFByb3BlcnR5VHlwZS5MSVRFUkFMX0FUVFIsIHNvdXJjZVNwYW4sIHZhbHVlU3BhbikpO1xuICAgIH1cbiAgfVxuXG4gIHBhcnNlUHJvcGVydHlCaW5kaW5nKFxuICAgICAgbmFtZTogc3RyaW5nLCBleHByZXNzaW9uOiBzdHJpbmcsIGlzSG9zdDogYm9vbGVhbiwgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgYWJzb2x1dGVPZmZzZXQ6IG51bWJlciwgdmFsdWVTcGFuOiBQYXJzZVNvdXJjZVNwYW58dW5kZWZpbmVkLFxuICAgICAgdGFyZ2V0TWF0Y2hhYmxlQXR0cnM6IHN0cmluZ1tdW10sIHRhcmdldFByb3BzOiBQYXJzZWRQcm9wZXJ0eVtdKSB7XG4gICAgaWYgKG5hbWUubGVuZ3RoID09PSAwKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihgUHJvcGVydHkgbmFtZSBpcyBtaXNzaW5nIGluIGJpbmRpbmdgLCBzb3VyY2VTcGFuKTtcbiAgICB9XG5cbiAgICBsZXQgaXNBbmltYXRpb25Qcm9wID0gZmFsc2U7XG4gICAgaWYgKG5hbWUuc3RhcnRzV2l0aChBTklNQVRFX1BST1BfUFJFRklYKSkge1xuICAgICAgaXNBbmltYXRpb25Qcm9wID0gdHJ1ZTtcbiAgICAgIG5hbWUgPSBuYW1lLnN1YnN0cmluZyhBTklNQVRFX1BST1BfUFJFRklYLmxlbmd0aCk7XG4gICAgfSBlbHNlIGlmIChpc0FuaW1hdGlvbkxhYmVsKG5hbWUpKSB7XG4gICAgICBpc0FuaW1hdGlvblByb3AgPSB0cnVlO1xuICAgICAgbmFtZSA9IG5hbWUuc3Vic3RyaW5nKDEpO1xuICAgIH1cblxuICAgIGlmIChpc0FuaW1hdGlvblByb3ApIHtcbiAgICAgIHRoaXMuX3BhcnNlQW5pbWF0aW9uKFxuICAgICAgICAgIG5hbWUsIGV4cHJlc3Npb24sIHNvdXJjZVNwYW4sIGFic29sdXRlT2Zmc2V0LCB2YWx1ZVNwYW4sIHRhcmdldE1hdGNoYWJsZUF0dHJzLFxuICAgICAgICAgIHRhcmdldFByb3BzKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5fcGFyc2VQcm9wZXJ0eUFzdChcbiAgICAgICAgICBuYW1lLCB0aGlzLl9wYXJzZUJpbmRpbmcoZXhwcmVzc2lvbiwgaXNIb3N0LCB2YWx1ZVNwYW4gfHwgc291cmNlU3BhbiwgYWJzb2x1dGVPZmZzZXQpLFxuICAgICAgICAgIHNvdXJjZVNwYW4sIHZhbHVlU3BhbiwgdGFyZ2V0TWF0Y2hhYmxlQXR0cnMsIHRhcmdldFByb3BzKTtcbiAgICB9XG4gIH1cblxuICBwYXJzZVByb3BlcnR5SW50ZXJwb2xhdGlvbihcbiAgICAgIG5hbWU6IHN0cmluZywgdmFsdWU6IHN0cmluZywgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgdmFsdWVTcGFuOiBQYXJzZVNvdXJjZVNwYW58dW5kZWZpbmVkLCB0YXJnZXRNYXRjaGFibGVBdHRyczogc3RyaW5nW11bXSxcbiAgICAgIHRhcmdldFByb3BzOiBQYXJzZWRQcm9wZXJ0eVtdKTogYm9vbGVhbiB7XG4gICAgY29uc3QgZXhwciA9IHRoaXMucGFyc2VJbnRlcnBvbGF0aW9uKHZhbHVlLCB2YWx1ZVNwYW4gfHwgc291cmNlU3Bhbik7XG4gICAgaWYgKGV4cHIpIHtcbiAgICAgIHRoaXMuX3BhcnNlUHJvcGVydHlBc3QobmFtZSwgZXhwciwgc291cmNlU3BhbiwgdmFsdWVTcGFuLCB0YXJnZXRNYXRjaGFibGVBdHRycywgdGFyZ2V0UHJvcHMpO1xuICAgICAgcmV0dXJuIHRydWU7XG4gICAgfVxuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHByaXZhdGUgX3BhcnNlUHJvcGVydHlBc3QoXG4gICAgICBuYW1lOiBzdHJpbmcsIGFzdDogQVNUV2l0aFNvdXJjZSwgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgdmFsdWVTcGFuOiBQYXJzZVNvdXJjZVNwYW58dW5kZWZpbmVkLCB0YXJnZXRNYXRjaGFibGVBdHRyczogc3RyaW5nW11bXSxcbiAgICAgIHRhcmdldFByb3BzOiBQYXJzZWRQcm9wZXJ0eVtdKSB7XG4gICAgdGFyZ2V0TWF0Y2hhYmxlQXR0cnMucHVzaChbbmFtZSwgYXN0LnNvdXJjZSFdKTtcbiAgICB0YXJnZXRQcm9wcy5wdXNoKFxuICAgICAgICBuZXcgUGFyc2VkUHJvcGVydHkobmFtZSwgYXN0LCBQYXJzZWRQcm9wZXJ0eVR5cGUuREVGQVVMVCwgc291cmNlU3BhbiwgdmFsdWVTcGFuKSk7XG4gIH1cblxuICBwcml2YXRlIF9wYXJzZUFuaW1hdGlvbihcbiAgICAgIG5hbWU6IHN0cmluZywgZXhwcmVzc2lvbjogc3RyaW5nfG51bGwsIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiwgYWJzb2x1dGVPZmZzZXQ6IG51bWJlcixcbiAgICAgIHZhbHVlU3BhbjogUGFyc2VTb3VyY2VTcGFufHVuZGVmaW5lZCwgdGFyZ2V0TWF0Y2hhYmxlQXR0cnM6IHN0cmluZ1tdW10sXG4gICAgICB0YXJnZXRQcm9wczogUGFyc2VkUHJvcGVydHlbXSkge1xuICAgIGlmIChuYW1lLmxlbmd0aCA9PT0gMCkge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoJ0FuaW1hdGlvbiB0cmlnZ2VyIGlzIG1pc3NpbmcnLCBzb3VyY2VTcGFuKTtcbiAgICB9XG5cbiAgICAvLyBUaGlzIHdpbGwgb2NjdXIgd2hlbiBhIEB0cmlnZ2VyIGlzIG5vdCBwYWlyZWQgd2l0aCBhbiBleHByZXNzaW9uLlxuICAgIC8vIEZvciBhbmltYXRpb25zIGl0IGlzIHZhbGlkIHRvIG5vdCBoYXZlIGFuIGV4cHJlc3Npb24gc2luY2UgKi92b2lkXG4gICAgLy8gc3RhdGVzIHdpbGwgYmUgYXBwbGllZCBieSBhbmd1bGFyIHdoZW4gdGhlIGVsZW1lbnQgaXMgYXR0YWNoZWQvZGV0YWNoZWRcbiAgICBjb25zdCBhc3QgPSB0aGlzLl9wYXJzZUJpbmRpbmcoXG4gICAgICAgIGV4cHJlc3Npb24gfHwgJ3VuZGVmaW5lZCcsIGZhbHNlLCB2YWx1ZVNwYW4gfHwgc291cmNlU3BhbiwgYWJzb2x1dGVPZmZzZXQpO1xuICAgIHRhcmdldE1hdGNoYWJsZUF0dHJzLnB1c2goW25hbWUsIGFzdC5zb3VyY2UhXSk7XG4gICAgdGFyZ2V0UHJvcHMucHVzaChcbiAgICAgICAgbmV3IFBhcnNlZFByb3BlcnR5KG5hbWUsIGFzdCwgUGFyc2VkUHJvcGVydHlUeXBlLkFOSU1BVElPTiwgc291cmNlU3BhbiwgdmFsdWVTcGFuKSk7XG4gIH1cblxuICBwcml2YXRlIF9wYXJzZUJpbmRpbmcoXG4gICAgICB2YWx1ZTogc3RyaW5nLCBpc0hvc3RCaW5kaW5nOiBib29sZWFuLCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sXG4gICAgICBhYnNvbHV0ZU9mZnNldDogbnVtYmVyKTogQVNUV2l0aFNvdXJjZSB7XG4gICAgY29uc3Qgc291cmNlSW5mbyA9IChzb3VyY2VTcGFuICYmIHNvdXJjZVNwYW4uc3RhcnQgfHwgJyh1bmtub3duKScpLnRvU3RyaW5nKCk7XG5cbiAgICB0cnkge1xuICAgICAgY29uc3QgYXN0ID0gaXNIb3N0QmluZGluZyA/XG4gICAgICAgICAgdGhpcy5fZXhwclBhcnNlci5wYXJzZVNpbXBsZUJpbmRpbmcoXG4gICAgICAgICAgICAgIHZhbHVlLCBzb3VyY2VJbmZvLCBhYnNvbHV0ZU9mZnNldCwgdGhpcy5faW50ZXJwb2xhdGlvbkNvbmZpZykgOlxuICAgICAgICAgIHRoaXMuX2V4cHJQYXJzZXIucGFyc2VCaW5kaW5nKFxuICAgICAgICAgICAgICB2YWx1ZSwgc291cmNlSW5mbywgYWJzb2x1dGVPZmZzZXQsIHRoaXMuX2ludGVycG9sYXRpb25Db25maWcpO1xuICAgICAgaWYgKGFzdCkgdGhpcy5fcmVwb3J0RXhwcmVzc2lvblBhcnNlckVycm9ycyhhc3QuZXJyb3JzLCBzb3VyY2VTcGFuKTtcbiAgICAgIHRoaXMuX2NoZWNrUGlwZXMoYXN0LCBzb3VyY2VTcGFuKTtcbiAgICAgIHJldHVybiBhc3Q7XG4gICAgfSBjYXRjaCAoZSkge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoYCR7ZX1gLCBzb3VyY2VTcGFuKTtcbiAgICAgIHJldHVybiB0aGlzLl9leHByUGFyc2VyLndyYXBMaXRlcmFsUHJpbWl0aXZlKCdFUlJPUicsIHNvdXJjZUluZm8sIGFic29sdXRlT2Zmc2V0KTtcbiAgICB9XG4gIH1cblxuICBjcmVhdGVCb3VuZEVsZW1lbnRQcm9wZXJ0eShcbiAgICAgIGVsZW1lbnRTZWxlY3Rvcjogc3RyaW5nLCBib3VuZFByb3A6IFBhcnNlZFByb3BlcnR5LCBza2lwVmFsaWRhdGlvbjogYm9vbGVhbiA9IGZhbHNlLFxuICAgICAgbWFwUHJvcGVydHlOYW1lOiBib29sZWFuID0gdHJ1ZSk6IEJvdW5kRWxlbWVudFByb3BlcnR5IHtcbiAgICBpZiAoYm91bmRQcm9wLmlzQW5pbWF0aW9uKSB7XG4gICAgICByZXR1cm4gbmV3IEJvdW5kRWxlbWVudFByb3BlcnR5KFxuICAgICAgICAgIGJvdW5kUHJvcC5uYW1lLCBCaW5kaW5nVHlwZS5BbmltYXRpb24sIFNlY3VyaXR5Q29udGV4dC5OT05FLCBib3VuZFByb3AuZXhwcmVzc2lvbiwgbnVsbCxcbiAgICAgICAgICBib3VuZFByb3Auc291cmNlU3BhbiwgYm91bmRQcm9wLnZhbHVlU3Bhbik7XG4gICAgfVxuXG4gICAgbGV0IHVuaXQ6IHN0cmluZ3xudWxsID0gbnVsbDtcbiAgICBsZXQgYmluZGluZ1R5cGU6IEJpbmRpbmdUeXBlID0gdW5kZWZpbmVkITtcbiAgICBsZXQgYm91bmRQcm9wZXJ0eU5hbWU6IHN0cmluZ3xudWxsID0gbnVsbDtcbiAgICBjb25zdCBwYXJ0cyA9IGJvdW5kUHJvcC5uYW1lLnNwbGl0KFBST1BFUlRZX1BBUlRTX1NFUEFSQVRPUik7XG4gICAgbGV0IHNlY3VyaXR5Q29udGV4dHM6IFNlY3VyaXR5Q29udGV4dFtdID0gdW5kZWZpbmVkITtcblxuICAgIC8vIENoZWNrIGZvciBzcGVjaWFsIGNhc2VzIChwcmVmaXggc3R5bGUsIGF0dHIsIGNsYXNzKVxuICAgIGlmIChwYXJ0cy5sZW5ndGggPiAxKSB7XG4gICAgICBpZiAocGFydHNbMF0gPT0gQVRUUklCVVRFX1BSRUZJWCkge1xuICAgICAgICBib3VuZFByb3BlcnR5TmFtZSA9IHBhcnRzLnNsaWNlKDEpLmpvaW4oUFJPUEVSVFlfUEFSVFNfU0VQQVJBVE9SKTtcbiAgICAgICAgaWYgKCFza2lwVmFsaWRhdGlvbikge1xuICAgICAgICAgIHRoaXMuX3ZhbGlkYXRlUHJvcGVydHlPckF0dHJpYnV0ZU5hbWUoYm91bmRQcm9wZXJ0eU5hbWUsIGJvdW5kUHJvcC5zb3VyY2VTcGFuLCB0cnVlKTtcbiAgICAgICAgfVxuICAgICAgICBzZWN1cml0eUNvbnRleHRzID0gY2FsY1Bvc3NpYmxlU2VjdXJpdHlDb250ZXh0cyhcbiAgICAgICAgICAgIHRoaXMuX3NjaGVtYVJlZ2lzdHJ5LCBlbGVtZW50U2VsZWN0b3IsIGJvdW5kUHJvcGVydHlOYW1lLCB0cnVlKTtcblxuICAgICAgICBjb25zdCBuc1NlcGFyYXRvcklkeCA9IGJvdW5kUHJvcGVydHlOYW1lLmluZGV4T2YoJzonKTtcbiAgICAgICAgaWYgKG5zU2VwYXJhdG9ySWR4ID4gLTEpIHtcbiAgICAgICAgICBjb25zdCBucyA9IGJvdW5kUHJvcGVydHlOYW1lLnN1YnN0cmluZygwLCBuc1NlcGFyYXRvcklkeCk7XG4gICAgICAgICAgY29uc3QgbmFtZSA9IGJvdW5kUHJvcGVydHlOYW1lLnN1YnN0cmluZyhuc1NlcGFyYXRvcklkeCArIDEpO1xuICAgICAgICAgIGJvdW5kUHJvcGVydHlOYW1lID0gbWVyZ2VOc0FuZE5hbWUobnMsIG5hbWUpO1xuICAgICAgICB9XG5cbiAgICAgICAgYmluZGluZ1R5cGUgPSBCaW5kaW5nVHlwZS5BdHRyaWJ1dGU7XG4gICAgICB9IGVsc2UgaWYgKHBhcnRzWzBdID09IENMQVNTX1BSRUZJWCkge1xuICAgICAgICBib3VuZFByb3BlcnR5TmFtZSA9IHBhcnRzWzFdO1xuICAgICAgICBiaW5kaW5nVHlwZSA9IEJpbmRpbmdUeXBlLkNsYXNzO1xuICAgICAgICBzZWN1cml0eUNvbnRleHRzID0gW1NlY3VyaXR5Q29udGV4dC5OT05FXTtcbiAgICAgIH0gZWxzZSBpZiAocGFydHNbMF0gPT0gU1RZTEVfUFJFRklYKSB7XG4gICAgICAgIHVuaXQgPSBwYXJ0cy5sZW5ndGggPiAyID8gcGFydHNbMl0gOiBudWxsO1xuICAgICAgICBib3VuZFByb3BlcnR5TmFtZSA9IHBhcnRzWzFdO1xuICAgICAgICBiaW5kaW5nVHlwZSA9IEJpbmRpbmdUeXBlLlN0eWxlO1xuICAgICAgICBzZWN1cml0eUNvbnRleHRzID0gW1NlY3VyaXR5Q29udGV4dC5TVFlMRV07XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gSWYgbm90IGEgc3BlY2lhbCBjYXNlLCB1c2UgdGhlIGZ1bGwgcHJvcGVydHkgbmFtZVxuICAgIGlmIChib3VuZFByb3BlcnR5TmFtZSA9PT0gbnVsbCkge1xuICAgICAgY29uc3QgbWFwcGVkUHJvcE5hbWUgPSB0aGlzLl9zY2hlbWFSZWdpc3RyeS5nZXRNYXBwZWRQcm9wTmFtZShib3VuZFByb3AubmFtZSk7XG4gICAgICBib3VuZFByb3BlcnR5TmFtZSA9IG1hcFByb3BlcnR5TmFtZSA/IG1hcHBlZFByb3BOYW1lIDogYm91bmRQcm9wLm5hbWU7XG4gICAgICBzZWN1cml0eUNvbnRleHRzID0gY2FsY1Bvc3NpYmxlU2VjdXJpdHlDb250ZXh0cyhcbiAgICAgICAgICB0aGlzLl9zY2hlbWFSZWdpc3RyeSwgZWxlbWVudFNlbGVjdG9yLCBtYXBwZWRQcm9wTmFtZSwgZmFsc2UpO1xuICAgICAgYmluZGluZ1R5cGUgPSBCaW5kaW5nVHlwZS5Qcm9wZXJ0eTtcbiAgICAgIGlmICghc2tpcFZhbGlkYXRpb24pIHtcbiAgICAgICAgdGhpcy5fdmFsaWRhdGVQcm9wZXJ0eU9yQXR0cmlidXRlTmFtZShtYXBwZWRQcm9wTmFtZSwgYm91bmRQcm9wLnNvdXJjZVNwYW4sIGZhbHNlKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gbmV3IEJvdW5kRWxlbWVudFByb3BlcnR5KFxuICAgICAgICBib3VuZFByb3BlcnR5TmFtZSwgYmluZGluZ1R5cGUsIHNlY3VyaXR5Q29udGV4dHNbMF0sIGJvdW5kUHJvcC5leHByZXNzaW9uLCB1bml0LFxuICAgICAgICBib3VuZFByb3Auc291cmNlU3BhbiwgYm91bmRQcm9wLnZhbHVlU3Bhbik7XG4gIH1cblxuICBwYXJzZUV2ZW50KFxuICAgICAgbmFtZTogc3RyaW5nLCBleHByZXNzaW9uOiBzdHJpbmcsIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiwgaGFuZGxlclNwYW46IFBhcnNlU291cmNlU3BhbixcbiAgICAgIHRhcmdldE1hdGNoYWJsZUF0dHJzOiBzdHJpbmdbXVtdLCB0YXJnZXRFdmVudHM6IFBhcnNlZEV2ZW50W10pIHtcbiAgICBpZiAobmFtZS5sZW5ndGggPT09IDApIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKGBFdmVudCBuYW1lIGlzIG1pc3NpbmcgaW4gYmluZGluZ2AsIHNvdXJjZVNwYW4pO1xuICAgIH1cblxuICAgIGlmIChpc0FuaW1hdGlvbkxhYmVsKG5hbWUpKSB7XG4gICAgICBuYW1lID0gbmFtZS5zdWJzdHIoMSk7XG4gICAgICB0aGlzLl9wYXJzZUFuaW1hdGlvbkV2ZW50KG5hbWUsIGV4cHJlc3Npb24sIHNvdXJjZVNwYW4sIGhhbmRsZXJTcGFuLCB0YXJnZXRFdmVudHMpO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLl9wYXJzZVJlZ3VsYXJFdmVudChcbiAgICAgICAgICBuYW1lLCBleHByZXNzaW9uLCBzb3VyY2VTcGFuLCBoYW5kbGVyU3BhbiwgdGFyZ2V0TWF0Y2hhYmxlQXR0cnMsIHRhcmdldEV2ZW50cyk7XG4gICAgfVxuICB9XG5cbiAgY2FsY1Bvc3NpYmxlU2VjdXJpdHlDb250ZXh0cyhzZWxlY3Rvcjogc3RyaW5nLCBwcm9wTmFtZTogc3RyaW5nLCBpc0F0dHJpYnV0ZTogYm9vbGVhbik6XG4gICAgICBTZWN1cml0eUNvbnRleHRbXSB7XG4gICAgY29uc3QgcHJvcCA9IHRoaXMuX3NjaGVtYVJlZ2lzdHJ5LmdldE1hcHBlZFByb3BOYW1lKHByb3BOYW1lKTtcbiAgICByZXR1cm4gY2FsY1Bvc3NpYmxlU2VjdXJpdHlDb250ZXh0cyh0aGlzLl9zY2hlbWFSZWdpc3RyeSwgc2VsZWN0b3IsIHByb3AsIGlzQXR0cmlidXRlKTtcbiAgfVxuXG4gIHByaXZhdGUgX3BhcnNlQW5pbWF0aW9uRXZlbnQoXG4gICAgICBuYW1lOiBzdHJpbmcsIGV4cHJlc3Npb246IHN0cmluZywgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLCBoYW5kbGVyU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgdGFyZ2V0RXZlbnRzOiBQYXJzZWRFdmVudFtdKSB7XG4gICAgY29uc3QgbWF0Y2hlcyA9IHNwbGl0QXRQZXJpb2QobmFtZSwgW25hbWUsICcnXSk7XG4gICAgY29uc3QgZXZlbnROYW1lID0gbWF0Y2hlc1swXTtcbiAgICBjb25zdCBwaGFzZSA9IG1hdGNoZXNbMV0udG9Mb3dlckNhc2UoKTtcbiAgICBpZiAocGhhc2UpIHtcbiAgICAgIHN3aXRjaCAocGhhc2UpIHtcbiAgICAgICAgY2FzZSAnc3RhcnQnOlxuICAgICAgICBjYXNlICdkb25lJzpcbiAgICAgICAgICBjb25zdCBhc3QgPSB0aGlzLl9wYXJzZUFjdGlvbihleHByZXNzaW9uLCBoYW5kbGVyU3Bhbik7XG4gICAgICAgICAgdGFyZ2V0RXZlbnRzLnB1c2gobmV3IFBhcnNlZEV2ZW50KFxuICAgICAgICAgICAgICBldmVudE5hbWUsIHBoYXNlLCBQYXJzZWRFdmVudFR5cGUuQW5pbWF0aW9uLCBhc3QsIHNvdXJjZVNwYW4sIGhhbmRsZXJTcGFuKSk7XG4gICAgICAgICAgYnJlYWs7XG5cbiAgICAgICAgZGVmYXVsdDpcbiAgICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICAgYFRoZSBwcm92aWRlZCBhbmltYXRpb24gb3V0cHV0IHBoYXNlIHZhbHVlIFwiJHtwaGFzZX1cIiBmb3IgXCJAJHtcbiAgICAgICAgICAgICAgICAgIGV2ZW50TmFtZX1cIiBpcyBub3Qgc3VwcG9ydGVkICh1c2Ugc3RhcnQgb3IgZG9uZSlgLFxuICAgICAgICAgICAgICBzb3VyY2VTcGFuKTtcbiAgICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgYFRoZSBhbmltYXRpb24gdHJpZ2dlciBvdXRwdXQgZXZlbnQgKEAke1xuICAgICAgICAgICAgICBldmVudE5hbWV9KSBpcyBtaXNzaW5nIGl0cyBwaGFzZSB2YWx1ZSBuYW1lIChzdGFydCBvciBkb25lIGFyZSBjdXJyZW50bHkgc3VwcG9ydGVkKWAsXG4gICAgICAgICAgc291cmNlU3Bhbik7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBfcGFyc2VSZWd1bGFyRXZlbnQoXG4gICAgICBuYW1lOiBzdHJpbmcsIGV4cHJlc3Npb246IHN0cmluZywgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLCBoYW5kbGVyU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgdGFyZ2V0TWF0Y2hhYmxlQXR0cnM6IHN0cmluZ1tdW10sIHRhcmdldEV2ZW50czogUGFyc2VkRXZlbnRbXSkge1xuICAgIC8vIGxvbmcgZm9ybWF0OiAndGFyZ2V0OiBldmVudE5hbWUnXG4gICAgY29uc3QgW3RhcmdldCwgZXZlbnROYW1lXSA9IHNwbGl0QXRDb2xvbihuYW1lLCBbbnVsbCEsIG5hbWVdKTtcbiAgICBjb25zdCBhc3QgPSB0aGlzLl9wYXJzZUFjdGlvbihleHByZXNzaW9uLCBoYW5kbGVyU3Bhbik7XG4gICAgdGFyZ2V0TWF0Y2hhYmxlQXR0cnMucHVzaChbbmFtZSEsIGFzdC5zb3VyY2UhXSk7XG4gICAgdGFyZ2V0RXZlbnRzLnB1c2goXG4gICAgICAgIG5ldyBQYXJzZWRFdmVudChldmVudE5hbWUsIHRhcmdldCwgUGFyc2VkRXZlbnRUeXBlLlJlZ3VsYXIsIGFzdCwgc291cmNlU3BhbiwgaGFuZGxlclNwYW4pKTtcbiAgICAvLyBEb24ndCBkZXRlY3QgZGlyZWN0aXZlcyBmb3IgZXZlbnQgbmFtZXMgZm9yIG5vdyxcbiAgICAvLyBzbyBkb24ndCBhZGQgdGhlIGV2ZW50IG5hbWUgdG8gdGhlIG1hdGNoYWJsZUF0dHJzXG4gIH1cblxuICBwcml2YXRlIF9wYXJzZUFjdGlvbih2YWx1ZTogc3RyaW5nLCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4pOiBBU1RXaXRoU291cmNlIHtcbiAgICBjb25zdCBzb3VyY2VJbmZvID0gKHNvdXJjZVNwYW4gJiYgc291cmNlU3Bhbi5zdGFydCB8fCAnKHVua25vd24nKS50b1N0cmluZygpO1xuICAgIGNvbnN0IGFic29sdXRlT2Zmc2V0ID0gKHNvdXJjZVNwYW4gJiYgc291cmNlU3Bhbi5zdGFydCkgPyBzb3VyY2VTcGFuLnN0YXJ0Lm9mZnNldCA6IDA7XG5cbiAgICB0cnkge1xuICAgICAgY29uc3QgYXN0ID0gdGhpcy5fZXhwclBhcnNlci5wYXJzZUFjdGlvbihcbiAgICAgICAgICB2YWx1ZSwgc291cmNlSW5mbywgYWJzb2x1dGVPZmZzZXQsIHRoaXMuX2ludGVycG9sYXRpb25Db25maWcpO1xuICAgICAgaWYgKGFzdCkge1xuICAgICAgICB0aGlzLl9yZXBvcnRFeHByZXNzaW9uUGFyc2VyRXJyb3JzKGFzdC5lcnJvcnMsIHNvdXJjZVNwYW4pO1xuICAgICAgfVxuICAgICAgaWYgKCFhc3QgfHwgYXN0LmFzdCBpbnN0YW5jZW9mIEVtcHR5RXhwcikge1xuICAgICAgICB0aGlzLl9yZXBvcnRFcnJvcihgRW1wdHkgZXhwcmVzc2lvbnMgYXJlIG5vdCBhbGxvd2VkYCwgc291cmNlU3Bhbik7XG4gICAgICAgIHJldHVybiB0aGlzLl9leHByUGFyc2VyLndyYXBMaXRlcmFsUHJpbWl0aXZlKCdFUlJPUicsIHNvdXJjZUluZm8sIGFic29sdXRlT2Zmc2V0KTtcbiAgICAgIH1cbiAgICAgIHRoaXMuX2NoZWNrUGlwZXMoYXN0LCBzb3VyY2VTcGFuKTtcbiAgICAgIHJldHVybiBhc3Q7XG4gICAgfSBjYXRjaCAoZSkge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoYCR7ZX1gLCBzb3VyY2VTcGFuKTtcbiAgICAgIHJldHVybiB0aGlzLl9leHByUGFyc2VyLndyYXBMaXRlcmFsUHJpbWl0aXZlKCdFUlJPUicsIHNvdXJjZUluZm8sIGFic29sdXRlT2Zmc2V0KTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIF9yZXBvcnRFcnJvcihcbiAgICAgIG1lc3NhZ2U6IHN0cmluZywgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgbGV2ZWw6IFBhcnNlRXJyb3JMZXZlbCA9IFBhcnNlRXJyb3JMZXZlbC5FUlJPUikge1xuICAgIHRoaXMuZXJyb3JzLnB1c2gobmV3IFBhcnNlRXJyb3Ioc291cmNlU3BhbiwgbWVzc2FnZSwgbGV2ZWwpKTtcbiAgfVxuXG4gIHByaXZhdGUgX3JlcG9ydEV4cHJlc3Npb25QYXJzZXJFcnJvcnMoZXJyb3JzOiBQYXJzZXJFcnJvcltdLCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4pIHtcbiAgICBmb3IgKGNvbnN0IGVycm9yIG9mIGVycm9ycykge1xuICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoZXJyb3IubWVzc2FnZSwgc291cmNlU3Bhbik7XG4gICAgfVxuICB9XG5cbiAgLy8gTWFrZSBzdXJlIGFsbCB0aGUgdXNlZCBwaXBlcyBhcmUga25vd24gaW4gYHRoaXMucGlwZXNCeU5hbWVgXG4gIHByaXZhdGUgX2NoZWNrUGlwZXMoYXN0OiBBU1RXaXRoU291cmNlLCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4pOiB2b2lkIHtcbiAgICBpZiAoYXN0ICYmIHRoaXMucGlwZXNCeU5hbWUpIHtcbiAgICAgIGNvbnN0IGNvbGxlY3RvciA9IG5ldyBQaXBlQ29sbGVjdG9yKCk7XG4gICAgICBhc3QudmlzaXQoY29sbGVjdG9yKTtcbiAgICAgIGNvbGxlY3Rvci5waXBlcy5mb3JFYWNoKChhc3QsIHBpcGVOYW1lKSA9PiB7XG4gICAgICAgIGNvbnN0IHBpcGVNZXRhID0gdGhpcy5waXBlc0J5TmFtZSEuZ2V0KHBpcGVOYW1lKTtcbiAgICAgICAgaWYgKCFwaXBlTWV0YSkge1xuICAgICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgICAgICBgVGhlIHBpcGUgJyR7cGlwZU5hbWV9JyBjb3VsZCBub3QgYmUgZm91bmRgLFxuICAgICAgICAgICAgICBuZXcgUGFyc2VTb3VyY2VTcGFuKFxuICAgICAgICAgICAgICAgICAgc291cmNlU3Bhbi5zdGFydC5tb3ZlQnkoYXN0LnNwYW4uc3RhcnQpLCBzb3VyY2VTcGFuLnN0YXJ0Lm1vdmVCeShhc3Quc3Bhbi5lbmQpKSk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdGhpcy5fdXNlZFBpcGVzLnNldChwaXBlTmFtZSwgcGlwZU1ldGEpO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogQHBhcmFtIHByb3BOYW1lIHRoZSBuYW1lIG9mIHRoZSBwcm9wZXJ0eSAvIGF0dHJpYnV0ZVxuICAgKiBAcGFyYW0gc291cmNlU3BhblxuICAgKiBAcGFyYW0gaXNBdHRyIHRydWUgd2hlbiBiaW5kaW5nIHRvIGFuIGF0dHJpYnV0ZVxuICAgKi9cbiAgcHJpdmF0ZSBfdmFsaWRhdGVQcm9wZXJ0eU9yQXR0cmlidXRlTmFtZShcbiAgICAgIHByb3BOYW1lOiBzdHJpbmcsIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiwgaXNBdHRyOiBib29sZWFuKTogdm9pZCB7XG4gICAgY29uc3QgcmVwb3J0ID0gaXNBdHRyID8gdGhpcy5fc2NoZW1hUmVnaXN0cnkudmFsaWRhdGVBdHRyaWJ1dGUocHJvcE5hbWUpIDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICB0aGlzLl9zY2hlbWFSZWdpc3RyeS52YWxpZGF0ZVByb3BlcnR5KHByb3BOYW1lKTtcbiAgICBpZiAocmVwb3J0LmVycm9yKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihyZXBvcnQubXNnISwgc291cmNlU3BhbiwgUGFyc2VFcnJvckxldmVsLkVSUk9SKTtcbiAgICB9XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIFBpcGVDb2xsZWN0b3IgZXh0ZW5kcyBSZWN1cnNpdmVBc3RWaXNpdG9yIHtcbiAgcGlwZXMgPSBuZXcgTWFwPHN0cmluZywgQmluZGluZ1BpcGU+KCk7XG4gIHZpc2l0UGlwZShhc3Q6IEJpbmRpbmdQaXBlLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHRoaXMucGlwZXMuc2V0KGFzdC5uYW1lLCBhc3QpO1xuICAgIGFzdC5leHAudmlzaXQodGhpcyk7XG4gICAgdGhpcy52aXNpdEFsbChhc3QuYXJncywgY29udGV4dCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbn1cblxuZnVuY3Rpb24gaXNBbmltYXRpb25MYWJlbChuYW1lOiBzdHJpbmcpOiBib29sZWFuIHtcbiAgcmV0dXJuIG5hbWVbMF0gPT0gJ0AnO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gY2FsY1Bvc3NpYmxlU2VjdXJpdHlDb250ZXh0cyhcbiAgICByZWdpc3RyeTogRWxlbWVudFNjaGVtYVJlZ2lzdHJ5LCBzZWxlY3Rvcjogc3RyaW5nLCBwcm9wTmFtZTogc3RyaW5nLFxuICAgIGlzQXR0cmlidXRlOiBib29sZWFuKTogU2VjdXJpdHlDb250ZXh0W10ge1xuICBjb25zdCBjdHhzOiBTZWN1cml0eUNvbnRleHRbXSA9IFtdO1xuICBDc3NTZWxlY3Rvci5wYXJzZShzZWxlY3RvcikuZm9yRWFjaCgoc2VsZWN0b3IpID0+IHtcbiAgICBjb25zdCBlbGVtZW50TmFtZXMgPSBzZWxlY3Rvci5lbGVtZW50ID8gW3NlbGVjdG9yLmVsZW1lbnRdIDogcmVnaXN0cnkuYWxsS25vd25FbGVtZW50TmFtZXMoKTtcbiAgICBjb25zdCBub3RFbGVtZW50TmFtZXMgPVxuICAgICAgICBuZXcgU2V0KHNlbGVjdG9yLm5vdFNlbGVjdG9ycy5maWx0ZXIoc2VsZWN0b3IgPT4gc2VsZWN0b3IuaXNFbGVtZW50U2VsZWN0b3IoKSlcbiAgICAgICAgICAgICAgICAgICAgLm1hcCgoc2VsZWN0b3IpID0+IHNlbGVjdG9yLmVsZW1lbnQpKTtcbiAgICBjb25zdCBwb3NzaWJsZUVsZW1lbnROYW1lcyA9XG4gICAgICAgIGVsZW1lbnROYW1lcy5maWx0ZXIoZWxlbWVudE5hbWUgPT4gIW5vdEVsZW1lbnROYW1lcy5oYXMoZWxlbWVudE5hbWUpKTtcblxuICAgIGN0eHMucHVzaCguLi5wb3NzaWJsZUVsZW1lbnROYW1lcy5tYXAoXG4gICAgICAgIGVsZW1lbnROYW1lID0+IHJlZ2lzdHJ5LnNlY3VyaXR5Q29udGV4dChlbGVtZW50TmFtZSwgcHJvcE5hbWUsIGlzQXR0cmlidXRlKSkpO1xuICB9KTtcbiAgcmV0dXJuIGN0eHMubGVuZ3RoID09PSAwID8gW1NlY3VyaXR5Q29udGV4dC5OT05FXSA6IEFycmF5LmZyb20obmV3IFNldChjdHhzKSkuc29ydCgpO1xufVxuXG4vKipcbiAqIENvbXB1dGUgYSBuZXcgUGFyc2VTb3VyY2VTcGFuIGJhc2VkIG9mZiBhbiBvcmlnaW5hbCBgc291cmNlU3BhbmAgYnkgdXNpbmdcbiAqIGFic29sdXRlIG9mZnNldHMgZnJvbSB0aGUgc3BlY2lmaWVkIGBhYnNvbHV0ZVNwYW5gLlxuICpcbiAqIEBwYXJhbSBzb3VyY2VTcGFuIG9yaWdpbmFsIHNvdXJjZSBzcGFuXG4gKiBAcGFyYW0gYWJzb2x1dGVTcGFuIGFic29sdXRlIHNvdXJjZSBzcGFuIHRvIG1vdmUgdG9cbiAqL1xuZnVuY3Rpb24gbW92ZVBhcnNlU291cmNlU3BhbihcbiAgICBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIGFic29sdXRlU3BhbjogQWJzb2x1dGVTb3VyY2VTcGFuKTogUGFyc2VTb3VyY2VTcGFuIHtcbiAgLy8gVGhlIGRpZmZlcmVuY2Ugb2YgdHdvIGFic29sdXRlIG9mZnNldHMgcHJvdmlkZSB0aGUgcmVsYXRpdmUgb2Zmc2V0XG4gIGNvbnN0IHN0YXJ0RGlmZiA9IGFic29sdXRlU3Bhbi5zdGFydCAtIHNvdXJjZVNwYW4uc3RhcnQub2Zmc2V0O1xuICBjb25zdCBlbmREaWZmID0gYWJzb2x1dGVTcGFuLmVuZCAtIHNvdXJjZVNwYW4uZW5kLm9mZnNldDtcbiAgcmV0dXJuIG5ldyBQYXJzZVNvdXJjZVNwYW4oc291cmNlU3Bhbi5zdGFydC5tb3ZlQnkoc3RhcnREaWZmKSwgc291cmNlU3Bhbi5lbmQubW92ZUJ5KGVuZERpZmYpKTtcbn1cbiJdfQ==