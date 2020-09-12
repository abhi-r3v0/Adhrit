/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __extends, __read, __spread, __values } from "tslib";
import { SecurityContext } from '../core';
import { BoundElementProperty, EmptyExpr, ParsedEvent, ParsedProperty, ParsedPropertyType, ParsedVariable, RecursiveAstVisitor } from '../expression_parser/ast';
import { mergeNsAndName } from '../ml_parser/tags';
import { ParseError, ParseErrorLevel, ParseSourceSpan } from '../parse_util';
import { CssSelector } from '../selector';
import { splitAtColon, splitAtPeriod } from '../util';
var PROPERTY_PARTS_SEPARATOR = '.';
var ATTRIBUTE_PREFIX = 'attr';
var CLASS_PREFIX = 'class';
var STYLE_PREFIX = 'style';
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
        get: function () { return this._interpolationConfig; },
        enumerable: true,
        configurable: true
    });
    BindingParser.prototype.getUsedPipes = function () { return Array.from(this._usedPipes.values()); };
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
     * Parses an inline template binding, e.g.
     *    <tag *tplKey="<tplValue>">
     * @param tplKey template binding name
     * @param tplValue template binding value
     * @param sourceSpan span of template binding relative to entire the template
     * @param absoluteValueOffset start of the tplValue relative to the entire template
     * @param targetMatchableAttrs potential attributes to match in the template
     * @param targetProps target property bindings in the template
     * @param targetVars target variables in the template
     */
    BindingParser.prototype.parseInlineTemplateBinding = function (tplKey, tplValue, sourceSpan, absoluteValueOffset, targetMatchableAttrs, targetProps, targetVars) {
        var bindings = this._parseTemplateBindings(tplKey, tplValue, sourceSpan, absoluteValueOffset);
        for (var i = 0; i < bindings.length; i++) {
            var binding = bindings[i];
            if (binding.keyIsVar) {
                targetVars.push(new ParsedVariable(binding.key, binding.name, sourceSpan));
            }
            else if (binding.expression) {
                this._parsePropertyAst(binding.key, binding.expression, sourceSpan, undefined, targetMatchableAttrs, targetProps);
            }
            else {
                targetMatchableAttrs.push([binding.key, '']);
                this.parseLiteralAttr(binding.key, null, sourceSpan, absoluteValueOffset, undefined, targetMatchableAttrs, targetProps);
            }
        }
    };
    /**
     * Parses the bindings in an inline template binding, e.g.
     *    <tag *tplKey="let value1 = prop; let value2 = localVar">
     * @param tplKey template binding name
     * @param tplValue template binding value
     * @param sourceSpan span of template binding relative to entire the template
     * @param absoluteValueOffset start of the tplValue relative to the entire template
     */
    BindingParser.prototype._parseTemplateBindings = function (tplKey, tplValue, sourceSpan, absoluteValueOffset) {
        var _this = this;
        var sourceInfo = sourceSpan.start.toString();
        try {
            var bindingsResult = this._exprParser.parseTemplateBindings(tplKey, tplValue, sourceInfo, absoluteValueOffset);
            this._reportExpressionParserErrors(bindingsResult.errors, sourceSpan);
            bindingsResult.templateBindings.forEach(function (binding) {
                if (binding.expression) {
                    _this._checkPipes(binding.expression, sourceSpan);
                }
            });
            bindingsResult.warnings.forEach(function (warning) { _this._reportError(warning, sourceSpan, ParseErrorLevel.WARNING); });
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
                    " Use property bindings (e.g. [@prop]=\"exp\") or use an attribute without a value (e.g. @prop) instead.", sourceSpan, ParseErrorLevel.ERROR);
            }
            this._parseAnimation(name, value, sourceSpan, absoluteOffset, valueSpan, targetMatchableAttrs, targetProps);
        }
        else {
            targetProps.push(new ParsedProperty(name, this._exprParser.wrapLiteralPrimitive(value, '', absoluteOffset), ParsedPropertyType.LITERAL_ATTR, sourceSpan, valueSpan));
        }
    };
    BindingParser.prototype.parsePropertyBinding = function (name, expression, isHost, sourceSpan, absoluteOffset, valueSpan, targetMatchableAttrs, targetProps) {
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
        targetProps.push(new ParsedProperty(name, ast, ParsedPropertyType.DEFAULT, sourceSpan, valueSpan));
    };
    BindingParser.prototype._parseAnimation = function (name, expression, sourceSpan, absoluteOffset, valueSpan, targetMatchableAttrs, targetProps) {
        // This will occur when a @trigger is not paired with an expression.
        // For animations it is valid to not have an expression since */void
        // states will be applied by angular when the element is attached/detached
        var ast = this._parseBinding(expression || 'undefined', false, valueSpan || sourceSpan, absoluteOffset);
        targetMatchableAttrs.push([name, ast.source]);
        targetProps.push(new ParsedProperty(name, ast, ParsedPropertyType.ANIMATION, sourceSpan, valueSpan));
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
            return new BoundElementProperty(boundProp.name, 4 /* Animation */, SecurityContext.NONE, boundProp.expression, null, boundProp.sourceSpan, boundProp.valueSpan);
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
                    boundPropertyName = mergeNsAndName(ns, name_1);
                }
                bindingType = 1 /* Attribute */;
            }
            else if (parts[0] == CLASS_PREFIX) {
                boundPropertyName = parts[1];
                bindingType = 2 /* Class */;
                securityContexts = [SecurityContext.NONE];
            }
            else if (parts[0] == STYLE_PREFIX) {
                unit = parts.length > 2 ? parts[2] : null;
                boundPropertyName = parts[1];
                bindingType = 3 /* Style */;
                securityContexts = [SecurityContext.STYLE];
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
        return new BoundElementProperty(boundPropertyName, bindingType, securityContexts[0], boundProp.expression, unit, boundProp.sourceSpan, boundProp.valueSpan);
    };
    BindingParser.prototype.parseEvent = function (name, expression, sourceSpan, handlerSpan, targetMatchableAttrs, targetEvents) {
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
        var matches = splitAtPeriod(name, [name, '']);
        var eventName = matches[0];
        var phase = matches[1].toLowerCase();
        if (phase) {
            switch (phase) {
                case 'start':
                case 'done':
                    var ast = this._parseAction(expression, handlerSpan);
                    targetEvents.push(new ParsedEvent(eventName, phase, 1 /* Animation */, ast, sourceSpan, handlerSpan));
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
        var _a = __read(splitAtColon(name, [null, name]), 2), target = _a[0], eventName = _a[1];
        var ast = this._parseAction(expression, handlerSpan);
        targetMatchableAttrs.push([name, ast.source]);
        targetEvents.push(new ParsedEvent(eventName, target, 0 /* Regular */, ast, sourceSpan, handlerSpan));
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
            if (!ast || ast.ast instanceof EmptyExpr) {
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
        if (level === void 0) { level = ParseErrorLevel.ERROR; }
        this.errors.push(new ParseError(sourceSpan, message, level));
    };
    BindingParser.prototype._reportExpressionParserErrors = function (errors, sourceSpan) {
        var e_1, _a;
        try {
            for (var errors_1 = __values(errors), errors_1_1 = errors_1.next(); !errors_1_1.done; errors_1_1 = errors_1.next()) {
                var error = errors_1_1.value;
                this._reportError(error.message, sourceSpan);
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (errors_1_1 && !errors_1_1.done && (_a = errors_1.return)) _a.call(errors_1);
            }
            finally { if (e_1) throw e_1.error; }
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
                    _this._reportError("The pipe '" + pipeName + "' could not be found", new ParseSourceSpan(sourceSpan.start.moveBy(ast.span.start), sourceSpan.start.moveBy(ast.span.end)));
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
            this._reportError(report.msg, sourceSpan, ParseErrorLevel.ERROR);
        }
    };
    return BindingParser;
}());
export { BindingParser };
var PipeCollector = /** @class */ (function (_super) {
    __extends(PipeCollector, _super);
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
}(RecursiveAstVisitor));
export { PipeCollector };
function isAnimationLabel(name) {
    return name[0] == '@';
}
export function calcPossibleSecurityContexts(registry, selector, propName, isAttribute) {
    var ctxs = [];
    CssSelector.parse(selector).forEach(function (selector) {
        var elementNames = selector.element ? [selector.element] : registry.allKnownElementNames();
        var notElementNames = new Set(selector.notSelectors.filter(function (selector) { return selector.isElementSelector(); })
            .map(function (selector) { return selector.element; }));
        var possibleElementNames = elementNames.filter(function (elementName) { return !notElementNames.has(elementName); });
        ctxs.push.apply(ctxs, __spread(possibleElementNames.map(function (elementName) { return registry.securityContext(elementName, propName, isAttribute); })));
    });
    return ctxs.length === 0 ? [SecurityContext.NONE] : Array.from(new Set(ctxs)).sort();
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYmluZGluZ19wYXJzZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci9zcmMvdGVtcGxhdGVfcGFyc2VyL2JpbmRpbmdfcGFyc2VyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7QUFHSCxPQUFPLEVBQUMsZUFBZSxFQUFDLE1BQU0sU0FBUyxDQUFDO0FBQ3hDLE9BQU8sRUFBMEMsb0JBQW9CLEVBQUUsU0FBUyxFQUFFLFdBQVcsRUFBbUIsY0FBYyxFQUFFLGtCQUFrQixFQUFFLGNBQWMsRUFBZSxtQkFBbUIsRUFBa0IsTUFBTSwwQkFBMEIsQ0FBQztBQUd2UCxPQUFPLEVBQUMsY0FBYyxFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFDakQsT0FBTyxFQUFDLFVBQVUsRUFBRSxlQUFlLEVBQUUsZUFBZSxFQUFDLE1BQU0sZUFBZSxDQUFDO0FBRTNFLE9BQU8sRUFBQyxXQUFXLEVBQUMsTUFBTSxhQUFhLENBQUM7QUFDeEMsT0FBTyxFQUFDLFlBQVksRUFBRSxhQUFhLEVBQUMsTUFBTSxTQUFTLENBQUM7QUFFcEQsSUFBTSx3QkFBd0IsR0FBRyxHQUFHLENBQUM7QUFDckMsSUFBTSxnQkFBZ0IsR0FBRyxNQUFNLENBQUM7QUFDaEMsSUFBTSxZQUFZLEdBQUcsT0FBTyxDQUFDO0FBQzdCLElBQU0sWUFBWSxHQUFHLE9BQU8sQ0FBQztBQUU3QixJQUFNLG1CQUFtQixHQUFHLFVBQVUsQ0FBQztBQUV2Qzs7R0FFRztBQUNIO0lBS0UsdUJBQ1ksV0FBbUIsRUFBVSxvQkFBeUMsRUFDdEUsZUFBc0MsRUFBRSxLQUFnQyxFQUN6RSxNQUFvQjtRQUZuQixnQkFBVyxHQUFYLFdBQVcsQ0FBUTtRQUFVLHlCQUFvQixHQUFwQixvQkFBb0IsQ0FBcUI7UUFDdEUsb0JBQWUsR0FBZixlQUFlLENBQXVCO1FBQ3ZDLFdBQU0sR0FBTixNQUFNLENBQWM7UUFQ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QVEsQ0FBQyxPQUFPLEVBQWhCLENBQWdCLENBQUMsQ0FBQyxDQUFDO1FBQ3RELElBQU0sb0JBQW9CLEdBQ3RCLFlBQVksQ0FBQyxNQUFNLENBQUMsVUFBQSxXQUFXLElBQUksT0FBQSxDQUFDLGVBQWUsQ0FBQyxHQUFHLENBQUMsV0FBVyxDQUFDLEVBQWpDLENBQWlDLENBQUMsQ0FBQztRQUUxRSxJQUFJLENBQUMsSUFBSSxPQUFULElBQUksV0FBUyxvQkFBb0IsQ0FBQyxHQUFHLENBQ2pDLFVBQUEsV0FBVyxJQUFJLE9BQUEsUUFBUSxDQUFDLGVBQWUsQ0FBQyxXQUFXLEVBQUUsUUFBUSxFQUFFLFdBQVcsQ0FBQyxFQUE1RCxDQUE0RCxDQUFDLEdBQUU7SUFDcEYsQ0FBQyxDQUFDLENBQUM7SUFDSCxPQUFPLElBQUksQ0FBQyxNQUFNLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLGVBQWUsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxJQUFJLEdBQUcsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLElBQUksRUFBRSxDQUFDO0FBQ3ZGLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Q29tcGlsZURpcmVjdGl2ZVN1bW1hcnksIENvbXBpbGVQaXBlU3VtbWFyeX0gZnJvbSAnLi4vY29tcGlsZV9tZXRhZGF0YSc7XG5pbXBvcnQge1NlY3VyaXR5Q29udGV4dH0gZnJvbSAnLi4vY29yZSc7XG5pbXBvcnQge0FTVFdpdGhTb3VyY2UsIEJpbmRpbmdQaXBlLCBCaW5kaW5nVHlwZSwgQm91bmRFbGVtZW50UHJvcGVydHksIEVtcHR5RXhwciwgUGFyc2VkRXZlbnQsIFBhcnNlZEV2ZW50VHlwZSwgUGFyc2VkUHJvcGVydHksIFBhcnNlZFByb3BlcnR5VHlwZSwgUGFyc2VkVmFyaWFibGUsIFBhcnNlckVycm9yLCBSZWN1cnNpdmVBc3RWaXNpdG9yLCBUZW1wbGF0ZUJpbmRpbmd9IGZyb20gJy4uL2V4cHJlc3Npb25fcGFyc2VyL2FzdCc7XG5pbXBvcnQge1BhcnNlcn0gZnJvbSAnLi4vZXhwcmVzc2lvbl9wYXJzZXIvcGFyc2VyJztcbmltcG9ydCB7SW50ZXJwb2xhdGlvbkNvbmZpZ30gZnJvbSAnLi4vbWxfcGFyc2VyL2ludGVycG9sYXRpb25fY29uZmlnJztcbmltcG9ydCB7bWVyZ2VOc0FuZE5hbWV9IGZyb20gJy4uL21sX3BhcnNlci90YWdzJztcbmltcG9ydCB7UGFyc2VFcnJvciwgUGFyc2VFcnJvckxldmVsLCBQYXJzZVNvdXJjZVNwYW59IGZyb20gJy4uL3BhcnNlX3V0aWwnO1xuaW1wb3J0IHtFbGVtZW50U2NoZW1hUmVnaXN0cnl9IGZyb20gJy4uL3NjaGVtYS9lbGVtZW50X3NjaGVtYV9yZWdpc3RyeSc7XG5pbXBvcnQge0Nzc1NlbGVjdG9yfSBmcm9tICcuLi9zZWxlY3Rvcic7XG5pbXBvcnQge3NwbGl0QXRDb2xvbiwgc3BsaXRBdFBlcmlvZH0gZnJvbSAnLi4vdXRpbCc7XG5cbmNvbnN0IFBST1BFUlRZX1BBUlRTX1NFUEFSQVRPUiA9ICcuJztcbmNvbnN0IEFUVFJJQlVURV9QUkVGSVggPSAnYXR0cic7XG5jb25zdCBDTEFTU19QUkVGSVggPSAnY2xhc3MnO1xuY29uc3QgU1RZTEVfUFJFRklYID0gJ3N0eWxlJztcblxuY29uc3QgQU5JTUFURV9QUk9QX1BSRUZJWCA9ICdhbmltYXRlLSc7XG5cbi8qKlxuICogUGFyc2VzIGJpbmRpbmdzIGluIHRlbXBsYXRlcyBhbmQgaW4gdGhlIGRpcmVjdGl2ZSBob3N0IGFyZWEuXG4gKi9cbmV4cG9ydCBjbGFzcyBCaW5kaW5nUGFyc2VyIHtcbiAgcGlwZXNCeU5hbWU6IE1hcDxzdHJpbmcsIENvbXBpbGVQaXBlU3VtbWFyeT58bnVsbCA9IG51bGw7XG5cbiAgcHJpdmF0ZSBfdXNlZFBpcGVzOiBNYXA8c3RyaW5nLCBDb21waWxlUGlwZVN1bW1hcnk+ID0gbmV3IE1hcCgpO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSBfZXhwclBhcnNlcjogUGFyc2VyLCBwcml2YXRlIF9pbnRlcnBvbGF0aW9uQ29uZmlnOiBJbnRlcnBvbGF0aW9uQ29uZmlnLFxuICAgICAgcHJpdmF0ZSBfc2NoZW1hUmVnaXN0cnk6IEVsZW1lbnRTY2hlbWFSZWdpc3RyeSwgcGlwZXM6IENvbXBpbGVQaXBlU3VtbWFyeVtdfG51bGwsXG4gICAgICBwdWJsaWMgZXJyb3JzOiBQYXJzZUVycm9yW10pIHtcbiAgICAvLyBXaGVuIHRoZSBgcGlwZXNgIHBhcmFtZXRlciBpcyBgbnVsbGAsIGRvIG5vdCBjaGVjayBmb3IgdXNlZCBwaXBlc1xuICAgIC8vIFRoaXMgaXMgdXNlZCBpbiBJVlkgd2hlbiB3ZSBtaWdodCBub3Qga25vdyB0aGUgYXZhaWxhYmxlIHBpcGVzIGF0IGNvbXBpbGUgdGltZVxuICAgIGlmIChwaXBlcykge1xuICAgICAgY29uc3QgcGlwZXNCeU5hbWU6IE1hcDxzdHJpbmcsIENvbXBpbGVQaXBlU3VtbWFyeT4gPSBuZXcgTWFwKCk7XG4gICAgICBwaXBlcy5mb3JFYWNoKHBpcGUgPT4gcGlwZXNCeU5hbWUuc2V0KHBpcGUubmFtZSwgcGlwZSkpO1xuICAgICAgdGhpcy5waXBlc0J5TmFtZSA9IHBpcGVzQnlOYW1lO1xuICAgIH1cbiAgfVxuXG4gIGdldCBpbnRlcnBvbGF0aW9uQ29uZmlnKCk6IEludGVycG9sYXRpb25Db25maWcgeyByZXR1cm4gdGhpcy5faW50ZXJwb2xhdGlvbkNvbmZpZzsgfVxuXG4gIGdldFVzZWRQaXBlcygpOiBDb21waWxlUGlwZVN1bW1hcnlbXSB7IHJldHVybiBBcnJheS5mcm9tKHRoaXMuX3VzZWRQaXBlcy52YWx1ZXMoKSk7IH1cblxuICBjcmVhdGVCb3VuZEhvc3RQcm9wZXJ0aWVzKGRpck1ldGE6IENvbXBpbGVEaXJlY3RpdmVTdW1tYXJ5LCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4pOlxuICAgICAgUGFyc2VkUHJvcGVydHlbXXxudWxsIHtcbiAgICBpZiAoZGlyTWV0YS5ob3N0UHJvcGVydGllcykge1xuICAgICAgY29uc3QgYm91bmRQcm9wczogUGFyc2VkUHJvcGVydHlbXSA9IFtdO1xuICAgICAgT2JqZWN0LmtleXMoZGlyTWV0YS5ob3N0UHJvcGVydGllcykuZm9yRWFjaChwcm9wTmFtZSA9PiB7XG4gICAgICAgIGNvbnN0IGV4cHJlc3Npb24gPSBkaXJNZXRhLmhvc3RQcm9wZXJ0aWVzW3Byb3BOYW1lXTtcbiAgICAgICAgaWYgKHR5cGVvZiBleHByZXNzaW9uID09PSAnc3RyaW5nJykge1xuICAgICAgICAgIHRoaXMucGFyc2VQcm9wZXJ0eUJpbmRpbmcoXG4gICAgICAgICAgICAgIHByb3BOYW1lLCBleHByZXNzaW9uLCB0cnVlLCBzb3VyY2VTcGFuLCBzb3VyY2VTcGFuLnN0YXJ0Lm9mZnNldCwgdW5kZWZpbmVkLCBbXSxcbiAgICAgICAgICAgICAgYm91bmRQcm9wcyk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgIGBWYWx1ZSBvZiB0aGUgaG9zdCBwcm9wZXJ0eSBiaW5kaW5nIFwiJHtwcm9wTmFtZX1cIiBuZWVkcyB0byBiZSBhIHN0cmluZyByZXByZXNlbnRpbmcgYW4gZXhwcmVzc2lvbiBidXQgZ290IFwiJHtleHByZXNzaW9ufVwiICgke3R5cGVvZiBleHByZXNzaW9ufSlgLFxuICAgICAgICAgICAgICBzb3VyY2VTcGFuKTtcbiAgICAgICAgfVxuICAgICAgfSk7XG4gICAgICByZXR1cm4gYm91bmRQcm9wcztcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBjcmVhdGVEaXJlY3RpdmVIb3N0UHJvcGVydHlBc3RzKFxuICAgICAgZGlyTWV0YTogQ29tcGlsZURpcmVjdGl2ZVN1bW1hcnksIGVsZW1lbnRTZWxlY3Rvcjogc3RyaW5nLFxuICAgICAgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuKTogQm91bmRFbGVtZW50UHJvcGVydHlbXXxudWxsIHtcbiAgICBjb25zdCBib3VuZFByb3BzID0gdGhpcy5jcmVhdGVCb3VuZEhvc3RQcm9wZXJ0aWVzKGRpck1ldGEsIHNvdXJjZVNwYW4pO1xuICAgIHJldHVybiBib3VuZFByb3BzICYmXG4gICAgICAgIGJvdW5kUHJvcHMubWFwKChwcm9wKSA9PiB0aGlzLmNyZWF0ZUJvdW5kRWxlbWVudFByb3BlcnR5KGVsZW1lbnRTZWxlY3RvciwgcHJvcCkpO1xuICB9XG5cbiAgY3JlYXRlRGlyZWN0aXZlSG9zdEV2ZW50QXN0cyhkaXJNZXRhOiBDb21waWxlRGlyZWN0aXZlU3VtbWFyeSwgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuKTpcbiAgICAgIFBhcnNlZEV2ZW50W118bnVsbCB7XG4gICAgaWYgKGRpck1ldGEuaG9zdExpc3RlbmVycykge1xuICAgICAgY29uc3QgdGFyZ2V0RXZlbnRzOiBQYXJzZWRFdmVudFtdID0gW107XG4gICAgICBPYmplY3Qua2V5cyhkaXJNZXRhLmhvc3RMaXN0ZW5lcnMpLmZvckVhY2gocHJvcE5hbWUgPT4ge1xuICAgICAgICBjb25zdCBleHByZXNzaW9uID0gZGlyTWV0YS5ob3N0TGlzdGVuZXJzW3Byb3BOYW1lXTtcbiAgICAgICAgaWYgKHR5cGVvZiBleHByZXNzaW9uID09PSAnc3RyaW5nJykge1xuICAgICAgICAgIC8vIFRPRE86IHBhc3MgYSBtb3JlIGFjY3VyYXRlIGhhbmRsZXJTcGFuIGZvciB0aGlzIGV2ZW50LlxuICAgICAgICAgIHRoaXMucGFyc2VFdmVudChwcm9wTmFtZSwgZXhwcmVzc2lvbiwgc291cmNlU3Bhbiwgc291cmNlU3BhbiwgW10sIHRhcmdldEV2ZW50cyk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgIGBWYWx1ZSBvZiB0aGUgaG9zdCBsaXN0ZW5lciBcIiR7cHJvcE5hbWV9XCIgbmVlZHMgdG8gYmUgYSBzdHJpbmcgcmVwcmVzZW50aW5nIGFuIGV4cHJlc3Npb24gYnV0IGdvdCBcIiR7ZXhwcmVzc2lvbn1cIiAoJHt0eXBlb2YgZXhwcmVzc2lvbn0pYCxcbiAgICAgICAgICAgICAgc291cmNlU3Bhbik7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgICAgcmV0dXJuIHRhcmdldEV2ZW50cztcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBwYXJzZUludGVycG9sYXRpb24odmFsdWU6IHN0cmluZywgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuKTogQVNUV2l0aFNvdXJjZSB7XG4gICAgY29uc3Qgc291cmNlSW5mbyA9IHNvdXJjZVNwYW4uc3RhcnQudG9TdHJpbmcoKTtcblxuICAgIHRyeSB7XG4gICAgICBjb25zdCBhc3QgPSB0aGlzLl9leHByUGFyc2VyLnBhcnNlSW50ZXJwb2xhdGlvbihcbiAgICAgICAgICB2YWx1ZSwgc291cmNlSW5mbywgc291cmNlU3Bhbi5zdGFydC5vZmZzZXQsIHRoaXMuX2ludGVycG9sYXRpb25Db25maWcpICE7XG4gICAgICBpZiAoYXN0KSB0aGlzLl9yZXBvcnRFeHByZXNzaW9uUGFyc2VyRXJyb3JzKGFzdC5lcnJvcnMsIHNvdXJjZVNwYW4pO1xuICAgICAgdGhpcy5fY2hlY2tQaXBlcyhhc3QsIHNvdXJjZVNwYW4pO1xuICAgICAgcmV0dXJuIGFzdDtcbiAgICB9IGNhdGNoIChlKSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihgJHtlfWAsIHNvdXJjZVNwYW4pO1xuICAgICAgcmV0dXJuIHRoaXMuX2V4cHJQYXJzZXIud3JhcExpdGVyYWxQcmltaXRpdmUoJ0VSUk9SJywgc291cmNlSW5mbywgc291cmNlU3Bhbi5zdGFydC5vZmZzZXQpO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBQYXJzZXMgYW4gaW5saW5lIHRlbXBsYXRlIGJpbmRpbmcsIGUuZy5cbiAgICogICAgPHRhZyAqdHBsS2V5PVwiPHRwbFZhbHVlPlwiPlxuICAgKiBAcGFyYW0gdHBsS2V5IHRlbXBsYXRlIGJpbmRpbmcgbmFtZVxuICAgKiBAcGFyYW0gdHBsVmFsdWUgdGVtcGxhdGUgYmluZGluZyB2YWx1ZVxuICAgKiBAcGFyYW0gc291cmNlU3BhbiBzcGFuIG9mIHRlbXBsYXRlIGJpbmRpbmcgcmVsYXRpdmUgdG8gZW50aXJlIHRoZSB0ZW1wbGF0ZVxuICAgKiBAcGFyYW0gYWJzb2x1dGVWYWx1ZU9mZnNldCBzdGFydCBvZiB0aGUgdHBsVmFsdWUgcmVsYXRpdmUgdG8gdGhlIGVudGlyZSB0ZW1wbGF0ZVxuICAgKiBAcGFyYW0gdGFyZ2V0TWF0Y2hhYmxlQXR0cnMgcG90ZW50aWFsIGF0dHJpYnV0ZXMgdG8gbWF0Y2ggaW4gdGhlIHRlbXBsYXRlXG4gICAqIEBwYXJhbSB0YXJnZXRQcm9wcyB0YXJnZXQgcHJvcGVydHkgYmluZGluZ3MgaW4gdGhlIHRlbXBsYXRlXG4gICAqIEBwYXJhbSB0YXJnZXRWYXJzIHRhcmdldCB2YXJpYWJsZXMgaW4gdGhlIHRlbXBsYXRlXG4gICAqL1xuICBwYXJzZUlubGluZVRlbXBsYXRlQmluZGluZyhcbiAgICAgIHRwbEtleTogc3RyaW5nLCB0cGxWYWx1ZTogc3RyaW5nLCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIGFic29sdXRlVmFsdWVPZmZzZXQ6IG51bWJlcixcbiAgICAgIHRhcmdldE1hdGNoYWJsZUF0dHJzOiBzdHJpbmdbXVtdLCB0YXJnZXRQcm9wczogUGFyc2VkUHJvcGVydHlbXSxcbiAgICAgIHRhcmdldFZhcnM6IFBhcnNlZFZhcmlhYmxlW10pIHtcbiAgICBjb25zdCBiaW5kaW5ncyA9IHRoaXMuX3BhcnNlVGVtcGxhdGVCaW5kaW5ncyh0cGxLZXksIHRwbFZhbHVlLCBzb3VyY2VTcGFuLCBhYnNvbHV0ZVZhbHVlT2Zmc2V0KTtcblxuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgYmluZGluZ3MubGVuZ3RoOyBpKyspIHtcbiAgICAgIGNvbnN0IGJpbmRpbmcgPSBiaW5kaW5nc1tpXTtcbiAgICAgIGlmIChiaW5kaW5nLmtleUlzVmFyKSB7XG4gICAgICAgIHRhcmdldFZhcnMucHVzaChuZXcgUGFyc2VkVmFyaWFibGUoYmluZGluZy5rZXksIGJpbmRpbmcubmFtZSwgc291cmNlU3BhbikpO1xuICAgICAgfSBlbHNlIGlmIChiaW5kaW5nLmV4cHJlc3Npb24pIHtcbiAgICAgICAgdGhpcy5fcGFyc2VQcm9wZXJ0eUFzdChcbiAgICAgICAgICAgIGJpbmRpbmcua2V5LCBiaW5kaW5nLmV4cHJlc3Npb24sIHNvdXJjZVNwYW4sIHVuZGVmaW5lZCwgdGFyZ2V0TWF0Y2hhYmxlQXR0cnMsXG4gICAgICAgICAgICB0YXJnZXRQcm9wcyk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICB0YXJnZXRNYXRjaGFibGVBdHRycy5wdXNoKFtiaW5kaW5nLmtleSwgJyddKTtcbiAgICAgICAgdGhpcy5wYXJzZUxpdGVyYWxBdHRyKFxuICAgICAgICAgICAgYmluZGluZy5rZXksIG51bGwsIHNvdXJjZVNwYW4sIGFic29sdXRlVmFsdWVPZmZzZXQsIHVuZGVmaW5lZCwgdGFyZ2V0TWF0Y2hhYmxlQXR0cnMsXG4gICAgICAgICAgICB0YXJnZXRQcm9wcyk7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIFBhcnNlcyB0aGUgYmluZGluZ3MgaW4gYW4gaW5saW5lIHRlbXBsYXRlIGJpbmRpbmcsIGUuZy5cbiAgICogICAgPHRhZyAqdHBsS2V5PVwibGV0IHZhbHVlMSA9IHByb3A7IGxldCB2YWx1ZTIgPSBsb2NhbFZhclwiPlxuICAgKiBAcGFyYW0gdHBsS2V5IHRlbXBsYXRlIGJpbmRpbmcgbmFtZVxuICAgKiBAcGFyYW0gdHBsVmFsdWUgdGVtcGxhdGUgYmluZGluZyB2YWx1ZVxuICAgKiBAcGFyYW0gc291cmNlU3BhbiBzcGFuIG9mIHRlbXBsYXRlIGJpbmRpbmcgcmVsYXRpdmUgdG8gZW50aXJlIHRoZSB0ZW1wbGF0ZVxuICAgKiBAcGFyYW0gYWJzb2x1dGVWYWx1ZU9mZnNldCBzdGFydCBvZiB0aGUgdHBsVmFsdWUgcmVsYXRpdmUgdG8gdGhlIGVudGlyZSB0ZW1wbGF0ZVxuICAgKi9cbiAgcHJpdmF0ZSBfcGFyc2VUZW1wbGF0ZUJpbmRpbmdzKFxuICAgICAgdHBsS2V5OiBzdHJpbmcsIHRwbFZhbHVlOiBzdHJpbmcsIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbixcbiAgICAgIGFic29sdXRlVmFsdWVPZmZzZXQ6IG51bWJlcik6IFRlbXBsYXRlQmluZGluZ1tdIHtcbiAgICBjb25zdCBzb3VyY2VJbmZvID0gc291cmNlU3Bhbi5zdGFydC50b1N0cmluZygpO1xuXG4gICAgdHJ5IHtcbiAgICAgIGNvbnN0IGJpbmRpbmdzUmVzdWx0ID1cbiAgICAgICAgICB0aGlzLl9leHByUGFyc2VyLnBhcnNlVGVtcGxhdGVCaW5kaW5ncyh0cGxLZXksIHRwbFZhbHVlLCBzb3VyY2VJbmZvLCBhYnNvbHV0ZVZhbHVlT2Zmc2V0KTtcbiAgICAgIHRoaXMuX3JlcG9ydEV4cHJlc3Npb25QYXJzZXJFcnJvcnMoYmluZGluZ3NSZXN1bHQuZXJyb3JzLCBzb3VyY2VTcGFuKTtcbiAgICAgIGJpbmRpbmdzUmVzdWx0LnRlbXBsYXRlQmluZGluZ3MuZm9yRWFjaCgoYmluZGluZykgPT4ge1xuICAgICAgICBpZiAoYmluZGluZy5leHByZXNzaW9uKSB7XG4gICAgICAgICAgdGhpcy5fY2hlY2tQaXBlcyhiaW5kaW5nLmV4cHJlc3Npb24sIHNvdXJjZVNwYW4pO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICAgIGJpbmRpbmdzUmVzdWx0Lndhcm5pbmdzLmZvckVhY2goXG4gICAgICAgICAgKHdhcm5pbmcpID0+IHsgdGhpcy5fcmVwb3J0RXJyb3Iod2FybmluZywgc291cmNlU3BhbiwgUGFyc2VFcnJvckxldmVsLldBUk5JTkcpOyB9KTtcbiAgICAgIHJldHVybiBiaW5kaW5nc1Jlc3VsdC50ZW1wbGF0ZUJpbmRpbmdzO1xuICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKGAke2V9YCwgc291cmNlU3Bhbik7XG4gICAgICByZXR1cm4gW107XG4gICAgfVxuICB9XG5cbiAgcGFyc2VMaXRlcmFsQXR0cihcbiAgICAgIG5hbWU6IHN0cmluZywgdmFsdWU6IHN0cmluZ3xudWxsLCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIGFic29sdXRlT2Zmc2V0OiBudW1iZXIsXG4gICAgICB2YWx1ZVNwYW46IFBhcnNlU291cmNlU3Bhbnx1bmRlZmluZWQsIHRhcmdldE1hdGNoYWJsZUF0dHJzOiBzdHJpbmdbXVtdLFxuICAgICAgdGFyZ2V0UHJvcHM6IFBhcnNlZFByb3BlcnR5W10pIHtcbiAgICBpZiAoaXNBbmltYXRpb25MYWJlbChuYW1lKSkge1xuICAgICAgbmFtZSA9IG5hbWUuc3Vic3RyaW5nKDEpO1xuICAgICAgaWYgKHZhbHVlKSB7XG4gICAgICAgIHRoaXMuX3JlcG9ydEVycm9yKFxuICAgICAgICAgICAgYEFzc2lnbmluZyBhbmltYXRpb24gdHJpZ2dlcnMgdmlhIEBwcm9wPVwiZXhwXCIgYXR0cmlidXRlcyB3aXRoIGFuIGV4cHJlc3Npb24gaXMgaW52YWxpZC5gICtcbiAgICAgICAgICAgICAgICBgIFVzZSBwcm9wZXJ0eSBiaW5kaW5ncyAoZS5nLiBbQHByb3BdPVwiZXhwXCIpIG9yIHVzZSBhbiBhdHRyaWJ1dGUgd2l0aG91dCBhIHZhbHVlIChlLmcuIEBwcm9wKSBpbnN0ZWFkLmAsXG4gICAgICAgICAgICBzb3VyY2VTcGFuLCBQYXJzZUVycm9yTGV2ZWwuRVJST1IpO1xuICAgICAgfVxuICAgICAgdGhpcy5fcGFyc2VBbmltYXRpb24oXG4gICAgICAgICAgbmFtZSwgdmFsdWUsIHNvdXJjZVNwYW4sIGFic29sdXRlT2Zmc2V0LCB2YWx1ZVNwYW4sIHRhcmdldE1hdGNoYWJsZUF0dHJzLCB0YXJnZXRQcm9wcyk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRhcmdldFByb3BzLnB1c2gobmV3IFBhcnNlZFByb3BlcnR5KFxuICAgICAgICAgIG5hbWUsIHRoaXMuX2V4cHJQYXJzZXIud3JhcExpdGVyYWxQcmltaXRpdmUodmFsdWUsICcnLCBhYnNvbHV0ZU9mZnNldCksXG4gICAgICAgICAgUGFyc2VkUHJvcGVydHlUeXBlLkxJVEVSQUxfQVRUUiwgc291cmNlU3BhbiwgdmFsdWVTcGFuKSk7XG4gICAgfVxuICB9XG5cbiAgcGFyc2VQcm9wZXJ0eUJpbmRpbmcoXG4gICAgICBuYW1lOiBzdHJpbmcsIGV4cHJlc3Npb246IHN0cmluZywgaXNIb3N0OiBib29sZWFuLCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sXG4gICAgICBhYnNvbHV0ZU9mZnNldDogbnVtYmVyLCB2YWx1ZVNwYW46IFBhcnNlU291cmNlU3Bhbnx1bmRlZmluZWQsXG4gICAgICB0YXJnZXRNYXRjaGFibGVBdHRyczogc3RyaW5nW11bXSwgdGFyZ2V0UHJvcHM6IFBhcnNlZFByb3BlcnR5W10pIHtcbiAgICBsZXQgaXNBbmltYXRpb25Qcm9wID0gZmFsc2U7XG4gICAgaWYgKG5hbWUuc3RhcnRzV2l0aChBTklNQVRFX1BST1BfUFJFRklYKSkge1xuICAgICAgaXNBbmltYXRpb25Qcm9wID0gdHJ1ZTtcbiAgICAgIG5hbWUgPSBuYW1lLnN1YnN0cmluZyhBTklNQVRFX1BST1BfUFJFRklYLmxlbmd0aCk7XG4gICAgfSBlbHNlIGlmIChpc0FuaW1hdGlvbkxhYmVsKG5hbWUpKSB7XG4gICAgICBpc0FuaW1hdGlvblByb3AgPSB0cnVlO1xuICAgICAgbmFtZSA9IG5hbWUuc3Vic3RyaW5nKDEpO1xuICAgIH1cblxuICAgIGlmIChpc0FuaW1hdGlvblByb3ApIHtcbiAgICAgIHRoaXMuX3BhcnNlQW5pbWF0aW9uKFxuICAgICAgICAgIG5hbWUsIGV4cHJlc3Npb24sIHNvdXJjZVNwYW4sIGFic29sdXRlT2Zmc2V0LCB2YWx1ZVNwYW4sIHRhcmdldE1hdGNoYWJsZUF0dHJzLFxuICAgICAgICAgIHRhcmdldFByb3BzKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5fcGFyc2VQcm9wZXJ0eUFzdChcbiAgICAgICAgICBuYW1lLCB0aGlzLl9wYXJzZUJpbmRpbmcoZXhwcmVzc2lvbiwgaXNIb3N0LCB2YWx1ZVNwYW4gfHwgc291cmNlU3BhbiwgYWJzb2x1dGVPZmZzZXQpLFxuICAgICAgICAgIHNvdXJjZVNwYW4sIHZhbHVlU3BhbiwgdGFyZ2V0TWF0Y2hhYmxlQXR0cnMsIHRhcmdldFByb3BzKTtcbiAgICB9XG4gIH1cblxuICBwYXJzZVByb3BlcnR5SW50ZXJwb2xhdGlvbihcbiAgICAgIG5hbWU6IHN0cmluZywgdmFsdWU6IHN0cmluZywgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgdmFsdWVTcGFuOiBQYXJzZVNvdXJjZVNwYW58dW5kZWZpbmVkLCB0YXJnZXRNYXRjaGFibGVBdHRyczogc3RyaW5nW11bXSxcbiAgICAgIHRhcmdldFByb3BzOiBQYXJzZWRQcm9wZXJ0eVtdKTogYm9vbGVhbiB7XG4gICAgY29uc3QgZXhwciA9IHRoaXMucGFyc2VJbnRlcnBvbGF0aW9uKHZhbHVlLCB2YWx1ZVNwYW4gfHwgc291cmNlU3Bhbik7XG4gICAgaWYgKGV4cHIpIHtcbiAgICAgIHRoaXMuX3BhcnNlUHJvcGVydHlBc3QobmFtZSwgZXhwciwgc291cmNlU3BhbiwgdmFsdWVTcGFuLCB0YXJnZXRNYXRjaGFibGVBdHRycywgdGFyZ2V0UHJvcHMpO1xuICAgICAgcmV0dXJuIHRydWU7XG4gICAgfVxuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIHByaXZhdGUgX3BhcnNlUHJvcGVydHlBc3QoXG4gICAgICBuYW1lOiBzdHJpbmcsIGFzdDogQVNUV2l0aFNvdXJjZSwgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgdmFsdWVTcGFuOiBQYXJzZVNvdXJjZVNwYW58dW5kZWZpbmVkLCB0YXJnZXRNYXRjaGFibGVBdHRyczogc3RyaW5nW11bXSxcbiAgICAgIHRhcmdldFByb3BzOiBQYXJzZWRQcm9wZXJ0eVtdKSB7XG4gICAgdGFyZ2V0TWF0Y2hhYmxlQXR0cnMucHVzaChbbmFtZSwgYXN0LnNvdXJjZSAhXSk7XG4gICAgdGFyZ2V0UHJvcHMucHVzaChcbiAgICAgICAgbmV3IFBhcnNlZFByb3BlcnR5KG5hbWUsIGFzdCwgUGFyc2VkUHJvcGVydHlUeXBlLkRFRkFVTFQsIHNvdXJjZVNwYW4sIHZhbHVlU3BhbikpO1xuICB9XG5cbiAgcHJpdmF0ZSBfcGFyc2VBbmltYXRpb24oXG4gICAgICBuYW1lOiBzdHJpbmcsIGV4cHJlc3Npb246IHN0cmluZ3xudWxsLCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIGFic29sdXRlT2Zmc2V0OiBudW1iZXIsXG4gICAgICB2YWx1ZVNwYW46IFBhcnNlU291cmNlU3Bhbnx1bmRlZmluZWQsIHRhcmdldE1hdGNoYWJsZUF0dHJzOiBzdHJpbmdbXVtdLFxuICAgICAgdGFyZ2V0UHJvcHM6IFBhcnNlZFByb3BlcnR5W10pIHtcbiAgICAvLyBUaGlzIHdpbGwgb2NjdXIgd2hlbiBhIEB0cmlnZ2VyIGlzIG5vdCBwYWlyZWQgd2l0aCBhbiBleHByZXNzaW9uLlxuICAgIC8vIEZvciBhbmltYXRpb25zIGl0IGlzIHZhbGlkIHRvIG5vdCBoYXZlIGFuIGV4cHJlc3Npb24gc2luY2UgKi92b2lkXG4gICAgLy8gc3RhdGVzIHdpbGwgYmUgYXBwbGllZCBieSBhbmd1bGFyIHdoZW4gdGhlIGVsZW1lbnQgaXMgYXR0YWNoZWQvZGV0YWNoZWRcbiAgICBjb25zdCBhc3QgPSB0aGlzLl9wYXJzZUJpbmRpbmcoXG4gICAgICAgIGV4cHJlc3Npb24gfHwgJ3VuZGVmaW5lZCcsIGZhbHNlLCB2YWx1ZVNwYW4gfHwgc291cmNlU3BhbiwgYWJzb2x1dGVPZmZzZXQpO1xuICAgIHRhcmdldE1hdGNoYWJsZUF0dHJzLnB1c2goW25hbWUsIGFzdC5zb3VyY2UgIV0pO1xuICAgIHRhcmdldFByb3BzLnB1c2goXG4gICAgICAgIG5ldyBQYXJzZWRQcm9wZXJ0eShuYW1lLCBhc3QsIFBhcnNlZFByb3BlcnR5VHlwZS5BTklNQVRJT04sIHNvdXJjZVNwYW4sIHZhbHVlU3BhbikpO1xuICB9XG5cbiAgcHJpdmF0ZSBfcGFyc2VCaW5kaW5nKFxuICAgICAgdmFsdWU6IHN0cmluZywgaXNIb3N0QmluZGluZzogYm9vbGVhbiwgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgYWJzb2x1dGVPZmZzZXQ6IG51bWJlcik6IEFTVFdpdGhTb3VyY2Uge1xuICAgIGNvbnN0IHNvdXJjZUluZm8gPSAoc291cmNlU3BhbiAmJiBzb3VyY2VTcGFuLnN0YXJ0IHx8ICcodW5rbm93biknKS50b1N0cmluZygpO1xuXG4gICAgdHJ5IHtcbiAgICAgIGNvbnN0IGFzdCA9IGlzSG9zdEJpbmRpbmcgP1xuICAgICAgICAgIHRoaXMuX2V4cHJQYXJzZXIucGFyc2VTaW1wbGVCaW5kaW5nKFxuICAgICAgICAgICAgICB2YWx1ZSwgc291cmNlSW5mbywgYWJzb2x1dGVPZmZzZXQsIHRoaXMuX2ludGVycG9sYXRpb25Db25maWcpIDpcbiAgICAgICAgICB0aGlzLl9leHByUGFyc2VyLnBhcnNlQmluZGluZyhcbiAgICAgICAgICAgICAgdmFsdWUsIHNvdXJjZUluZm8sIGFic29sdXRlT2Zmc2V0LCB0aGlzLl9pbnRlcnBvbGF0aW9uQ29uZmlnKTtcbiAgICAgIGlmIChhc3QpIHRoaXMuX3JlcG9ydEV4cHJlc3Npb25QYXJzZXJFcnJvcnMoYXN0LmVycm9ycywgc291cmNlU3Bhbik7XG4gICAgICB0aGlzLl9jaGVja1BpcGVzKGFzdCwgc291cmNlU3Bhbik7XG4gICAgICByZXR1cm4gYXN0O1xuICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKGAke2V9YCwgc291cmNlU3Bhbik7XG4gICAgICByZXR1cm4gdGhpcy5fZXhwclBhcnNlci53cmFwTGl0ZXJhbFByaW1pdGl2ZSgnRVJST1InLCBzb3VyY2VJbmZvLCBhYnNvbHV0ZU9mZnNldCk7XG4gICAgfVxuICB9XG5cbiAgY3JlYXRlQm91bmRFbGVtZW50UHJvcGVydHkoXG4gICAgICBlbGVtZW50U2VsZWN0b3I6IHN0cmluZywgYm91bmRQcm9wOiBQYXJzZWRQcm9wZXJ0eSwgc2tpcFZhbGlkYXRpb246IGJvb2xlYW4gPSBmYWxzZSxcbiAgICAgIG1hcFByb3BlcnR5TmFtZTogYm9vbGVhbiA9IHRydWUpOiBCb3VuZEVsZW1lbnRQcm9wZXJ0eSB7XG4gICAgaWYgKGJvdW5kUHJvcC5pc0FuaW1hdGlvbikge1xuICAgICAgcmV0dXJuIG5ldyBCb3VuZEVsZW1lbnRQcm9wZXJ0eShcbiAgICAgICAgICBib3VuZFByb3AubmFtZSwgQmluZGluZ1R5cGUuQW5pbWF0aW9uLCBTZWN1cml0eUNvbnRleHQuTk9ORSwgYm91bmRQcm9wLmV4cHJlc3Npb24sIG51bGwsXG4gICAgICAgICAgYm91bmRQcm9wLnNvdXJjZVNwYW4sIGJvdW5kUHJvcC52YWx1ZVNwYW4pO1xuICAgIH1cblxuICAgIGxldCB1bml0OiBzdHJpbmd8bnVsbCA9IG51bGw7XG4gICAgbGV0IGJpbmRpbmdUeXBlOiBCaW5kaW5nVHlwZSA9IHVuZGVmaW5lZCAhO1xuICAgIGxldCBib3VuZFByb3BlcnR5TmFtZTogc3RyaW5nfG51bGwgPSBudWxsO1xuICAgIGNvbnN0IHBhcnRzID0gYm91bmRQcm9wLm5hbWUuc3BsaXQoUFJPUEVSVFlfUEFSVFNfU0VQQVJBVE9SKTtcbiAgICBsZXQgc2VjdXJpdHlDb250ZXh0czogU2VjdXJpdHlDb250ZXh0W10gPSB1bmRlZmluZWQgITtcblxuICAgIC8vIENoZWNrIGZvciBzcGVjaWFsIGNhc2VzIChwcmVmaXggc3R5bGUsIGF0dHIsIGNsYXNzKVxuICAgIGlmIChwYXJ0cy5sZW5ndGggPiAxKSB7XG4gICAgICBpZiAocGFydHNbMF0gPT0gQVRUUklCVVRFX1BSRUZJWCkge1xuICAgICAgICBib3VuZFByb3BlcnR5TmFtZSA9IHBhcnRzLnNsaWNlKDEpLmpvaW4oUFJPUEVSVFlfUEFSVFNfU0VQQVJBVE9SKTtcbiAgICAgICAgaWYgKCFza2lwVmFsaWRhdGlvbikge1xuICAgICAgICAgIHRoaXMuX3ZhbGlkYXRlUHJvcGVydHlPckF0dHJpYnV0ZU5hbWUoYm91bmRQcm9wZXJ0eU5hbWUsIGJvdW5kUHJvcC5zb3VyY2VTcGFuLCB0cnVlKTtcbiAgICAgICAgfVxuICAgICAgICBzZWN1cml0eUNvbnRleHRzID0gY2FsY1Bvc3NpYmxlU2VjdXJpdHlDb250ZXh0cyhcbiAgICAgICAgICAgIHRoaXMuX3NjaGVtYVJlZ2lzdHJ5LCBlbGVtZW50U2VsZWN0b3IsIGJvdW5kUHJvcGVydHlOYW1lLCB0cnVlKTtcblxuICAgICAgICBjb25zdCBuc1NlcGFyYXRvcklkeCA9IGJvdW5kUHJvcGVydHlOYW1lLmluZGV4T2YoJzonKTtcbiAgICAgICAgaWYgKG5zU2VwYXJhdG9ySWR4ID4gLTEpIHtcbiAgICAgICAgICBjb25zdCBucyA9IGJvdW5kUHJvcGVydHlOYW1lLnN1YnN0cmluZygwLCBuc1NlcGFyYXRvcklkeCk7XG4gICAgICAgICAgY29uc3QgbmFtZSA9IGJvdW5kUHJvcGVydHlOYW1lLnN1YnN0cmluZyhuc1NlcGFyYXRvcklkeCArIDEpO1xuICAgICAgICAgIGJvdW5kUHJvcGVydHlOYW1lID0gbWVyZ2VOc0FuZE5hbWUobnMsIG5hbWUpO1xuICAgICAgICB9XG5cbiAgICAgICAgYmluZGluZ1R5cGUgPSBCaW5kaW5nVHlwZS5BdHRyaWJ1dGU7XG4gICAgICB9IGVsc2UgaWYgKHBhcnRzWzBdID09IENMQVNTX1BSRUZJWCkge1xuICAgICAgICBib3VuZFByb3BlcnR5TmFtZSA9IHBhcnRzWzFdO1xuICAgICAgICBiaW5kaW5nVHlwZSA9IEJpbmRpbmdUeXBlLkNsYXNzO1xuICAgICAgICBzZWN1cml0eUNvbnRleHRzID0gW1NlY3VyaXR5Q29udGV4dC5OT05FXTtcbiAgICAgIH0gZWxzZSBpZiAocGFydHNbMF0gPT0gU1RZTEVfUFJFRklYKSB7XG4gICAgICAgIHVuaXQgPSBwYXJ0cy5sZW5ndGggPiAyID8gcGFydHNbMl0gOiBudWxsO1xuICAgICAgICBib3VuZFByb3BlcnR5TmFtZSA9IHBhcnRzWzFdO1xuICAgICAgICBiaW5kaW5nVHlwZSA9IEJpbmRpbmdUeXBlLlN0eWxlO1xuICAgICAgICBzZWN1cml0eUNvbnRleHRzID0gW1NlY3VyaXR5Q29udGV4dC5TVFlMRV07XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gSWYgbm90IGEgc3BlY2lhbCBjYXNlLCB1c2UgdGhlIGZ1bGwgcHJvcGVydHkgbmFtZVxuICAgIGlmIChib3VuZFByb3BlcnR5TmFtZSA9PT0gbnVsbCkge1xuICAgICAgY29uc3QgbWFwcGVkUHJvcE5hbWUgPSB0aGlzLl9zY2hlbWFSZWdpc3RyeS5nZXRNYXBwZWRQcm9wTmFtZShib3VuZFByb3AubmFtZSk7XG4gICAgICBib3VuZFByb3BlcnR5TmFtZSA9IG1hcFByb3BlcnR5TmFtZSA/IG1hcHBlZFByb3BOYW1lIDogYm91bmRQcm9wLm5hbWU7XG4gICAgICBzZWN1cml0eUNvbnRleHRzID0gY2FsY1Bvc3NpYmxlU2VjdXJpdHlDb250ZXh0cyhcbiAgICAgICAgICB0aGlzLl9zY2hlbWFSZWdpc3RyeSwgZWxlbWVudFNlbGVjdG9yLCBtYXBwZWRQcm9wTmFtZSwgZmFsc2UpO1xuICAgICAgYmluZGluZ1R5cGUgPSBCaW5kaW5nVHlwZS5Qcm9wZXJ0eTtcbiAgICAgIGlmICghc2tpcFZhbGlkYXRpb24pIHtcbiAgICAgICAgdGhpcy5fdmFsaWRhdGVQcm9wZXJ0eU9yQXR0cmlidXRlTmFtZShtYXBwZWRQcm9wTmFtZSwgYm91bmRQcm9wLnNvdXJjZVNwYW4sIGZhbHNlKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gbmV3IEJvdW5kRWxlbWVudFByb3BlcnR5KFxuICAgICAgICBib3VuZFByb3BlcnR5TmFtZSwgYmluZGluZ1R5cGUsIHNlY3VyaXR5Q29udGV4dHNbMF0sIGJvdW5kUHJvcC5leHByZXNzaW9uLCB1bml0LFxuICAgICAgICBib3VuZFByb3Auc291cmNlU3BhbiwgYm91bmRQcm9wLnZhbHVlU3Bhbik7XG4gIH1cblxuICBwYXJzZUV2ZW50KFxuICAgICAgbmFtZTogc3RyaW5nLCBleHByZXNzaW9uOiBzdHJpbmcsIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiwgaGFuZGxlclNwYW46IFBhcnNlU291cmNlU3BhbixcbiAgICAgIHRhcmdldE1hdGNoYWJsZUF0dHJzOiBzdHJpbmdbXVtdLCB0YXJnZXRFdmVudHM6IFBhcnNlZEV2ZW50W10pIHtcbiAgICBpZiAoaXNBbmltYXRpb25MYWJlbChuYW1lKSkge1xuICAgICAgbmFtZSA9IG5hbWUuc3Vic3RyKDEpO1xuICAgICAgdGhpcy5fcGFyc2VBbmltYXRpb25FdmVudChuYW1lLCBleHByZXNzaW9uLCBzb3VyY2VTcGFuLCBoYW5kbGVyU3BhbiwgdGFyZ2V0RXZlbnRzKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5fcGFyc2VSZWd1bGFyRXZlbnQoXG4gICAgICAgICAgbmFtZSwgZXhwcmVzc2lvbiwgc291cmNlU3BhbiwgaGFuZGxlclNwYW4sIHRhcmdldE1hdGNoYWJsZUF0dHJzLCB0YXJnZXRFdmVudHMpO1xuICAgIH1cbiAgfVxuXG4gIGNhbGNQb3NzaWJsZVNlY3VyaXR5Q29udGV4dHMoc2VsZWN0b3I6IHN0cmluZywgcHJvcE5hbWU6IHN0cmluZywgaXNBdHRyaWJ1dGU6IGJvb2xlYW4pOlxuICAgICAgU2VjdXJpdHlDb250ZXh0W10ge1xuICAgIGNvbnN0IHByb3AgPSB0aGlzLl9zY2hlbWFSZWdpc3RyeS5nZXRNYXBwZWRQcm9wTmFtZShwcm9wTmFtZSk7XG4gICAgcmV0dXJuIGNhbGNQb3NzaWJsZVNlY3VyaXR5Q29udGV4dHModGhpcy5fc2NoZW1hUmVnaXN0cnksIHNlbGVjdG9yLCBwcm9wLCBpc0F0dHJpYnV0ZSk7XG4gIH1cblxuICBwcml2YXRlIF9wYXJzZUFuaW1hdGlvbkV2ZW50KFxuICAgICAgbmFtZTogc3RyaW5nLCBleHByZXNzaW9uOiBzdHJpbmcsIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiwgaGFuZGxlclNwYW46IFBhcnNlU291cmNlU3BhbixcbiAgICAgIHRhcmdldEV2ZW50czogUGFyc2VkRXZlbnRbXSkge1xuICAgIGNvbnN0IG1hdGNoZXMgPSBzcGxpdEF0UGVyaW9kKG5hbWUsIFtuYW1lLCAnJ10pO1xuICAgIGNvbnN0IGV2ZW50TmFtZSA9IG1hdGNoZXNbMF07XG4gICAgY29uc3QgcGhhc2UgPSBtYXRjaGVzWzFdLnRvTG93ZXJDYXNlKCk7XG4gICAgaWYgKHBoYXNlKSB7XG4gICAgICBzd2l0Y2ggKHBoYXNlKSB7XG4gICAgICAgIGNhc2UgJ3N0YXJ0JzpcbiAgICAgICAgY2FzZSAnZG9uZSc6XG4gICAgICAgICAgY29uc3QgYXN0ID0gdGhpcy5fcGFyc2VBY3Rpb24oZXhwcmVzc2lvbiwgaGFuZGxlclNwYW4pO1xuICAgICAgICAgIHRhcmdldEV2ZW50cy5wdXNoKG5ldyBQYXJzZWRFdmVudChcbiAgICAgICAgICAgICAgZXZlbnROYW1lLCBwaGFzZSwgUGFyc2VkRXZlbnRUeXBlLkFuaW1hdGlvbiwgYXN0LCBzb3VyY2VTcGFuLCBoYW5kbGVyU3BhbikpO1xuICAgICAgICAgIGJyZWFrO1xuXG4gICAgICAgIGRlZmF1bHQ6XG4gICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgIGBUaGUgcHJvdmlkZWQgYW5pbWF0aW9uIG91dHB1dCBwaGFzZSB2YWx1ZSBcIiR7cGhhc2V9XCIgZm9yIFwiQCR7ZXZlbnROYW1lfVwiIGlzIG5vdCBzdXBwb3J0ZWQgKHVzZSBzdGFydCBvciBkb25lKWAsXG4gICAgICAgICAgICAgIHNvdXJjZVNwYW4pO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLl9yZXBvcnRFcnJvcihcbiAgICAgICAgICBgVGhlIGFuaW1hdGlvbiB0cmlnZ2VyIG91dHB1dCBldmVudCAoQCR7ZXZlbnROYW1lfSkgaXMgbWlzc2luZyBpdHMgcGhhc2UgdmFsdWUgbmFtZSAoc3RhcnQgb3IgZG9uZSBhcmUgY3VycmVudGx5IHN1cHBvcnRlZClgLFxuICAgICAgICAgIHNvdXJjZVNwYW4pO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX3BhcnNlUmVndWxhckV2ZW50KFxuICAgICAgbmFtZTogc3RyaW5nLCBleHByZXNzaW9uOiBzdHJpbmcsIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiwgaGFuZGxlclNwYW46IFBhcnNlU291cmNlU3BhbixcbiAgICAgIHRhcmdldE1hdGNoYWJsZUF0dHJzOiBzdHJpbmdbXVtdLCB0YXJnZXRFdmVudHM6IFBhcnNlZEV2ZW50W10pIHtcbiAgICAvLyBsb25nIGZvcm1hdDogJ3RhcmdldDogZXZlbnROYW1lJ1xuICAgIGNvbnN0IFt0YXJnZXQsIGV2ZW50TmFtZV0gPSBzcGxpdEF0Q29sb24obmFtZSwgW251bGwgISwgbmFtZV0pO1xuICAgIGNvbnN0IGFzdCA9IHRoaXMuX3BhcnNlQWN0aW9uKGV4cHJlc3Npb24sIGhhbmRsZXJTcGFuKTtcbiAgICB0YXJnZXRNYXRjaGFibGVBdHRycy5wdXNoKFtuYW1lICEsIGFzdC5zb3VyY2UgIV0pO1xuICAgIHRhcmdldEV2ZW50cy5wdXNoKFxuICAgICAgICBuZXcgUGFyc2VkRXZlbnQoZXZlbnROYW1lLCB0YXJnZXQsIFBhcnNlZEV2ZW50VHlwZS5SZWd1bGFyLCBhc3QsIHNvdXJjZVNwYW4sIGhhbmRsZXJTcGFuKSk7XG4gICAgLy8gRG9uJ3QgZGV0ZWN0IGRpcmVjdGl2ZXMgZm9yIGV2ZW50IG5hbWVzIGZvciBub3csXG4gICAgLy8gc28gZG9uJ3QgYWRkIHRoZSBldmVudCBuYW1lIHRvIHRoZSBtYXRjaGFibGVBdHRyc1xuICB9XG5cbiAgcHJpdmF0ZSBfcGFyc2VBY3Rpb24odmFsdWU6IHN0cmluZywgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuKTogQVNUV2l0aFNvdXJjZSB7XG4gICAgY29uc3Qgc291cmNlSW5mbyA9IChzb3VyY2VTcGFuICYmIHNvdXJjZVNwYW4uc3RhcnQgfHwgJyh1bmtub3duJykudG9TdHJpbmcoKTtcbiAgICBjb25zdCBhYnNvbHV0ZU9mZnNldCA9IChzb3VyY2VTcGFuICYmIHNvdXJjZVNwYW4uc3RhcnQpID8gc291cmNlU3Bhbi5zdGFydC5vZmZzZXQgOiAwO1xuXG4gICAgdHJ5IHtcbiAgICAgIGNvbnN0IGFzdCA9IHRoaXMuX2V4cHJQYXJzZXIucGFyc2VBY3Rpb24oXG4gICAgICAgICAgdmFsdWUsIHNvdXJjZUluZm8sIGFic29sdXRlT2Zmc2V0LCB0aGlzLl9pbnRlcnBvbGF0aW9uQ29uZmlnKTtcbiAgICAgIGlmIChhc3QpIHtcbiAgICAgICAgdGhpcy5fcmVwb3J0RXhwcmVzc2lvblBhcnNlckVycm9ycyhhc3QuZXJyb3JzLCBzb3VyY2VTcGFuKTtcbiAgICAgIH1cbiAgICAgIGlmICghYXN0IHx8IGFzdC5hc3QgaW5zdGFuY2VvZiBFbXB0eUV4cHIpIHtcbiAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoYEVtcHR5IGV4cHJlc3Npb25zIGFyZSBub3QgYWxsb3dlZGAsIHNvdXJjZVNwYW4pO1xuICAgICAgICByZXR1cm4gdGhpcy5fZXhwclBhcnNlci53cmFwTGl0ZXJhbFByaW1pdGl2ZSgnRVJST1InLCBzb3VyY2VJbmZvLCBhYnNvbHV0ZU9mZnNldCk7XG4gICAgICB9XG4gICAgICB0aGlzLl9jaGVja1BpcGVzKGFzdCwgc291cmNlU3Bhbik7XG4gICAgICByZXR1cm4gYXN0O1xuICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKGAke2V9YCwgc291cmNlU3Bhbik7XG4gICAgICByZXR1cm4gdGhpcy5fZXhwclBhcnNlci53cmFwTGl0ZXJhbFByaW1pdGl2ZSgnRVJST1InLCBzb3VyY2VJbmZvLCBhYnNvbHV0ZU9mZnNldCk7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBfcmVwb3J0RXJyb3IoXG4gICAgICBtZXNzYWdlOiBzdHJpbmcsIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbixcbiAgICAgIGxldmVsOiBQYXJzZUVycm9yTGV2ZWwgPSBQYXJzZUVycm9yTGV2ZWwuRVJST1IpIHtcbiAgICB0aGlzLmVycm9ycy5wdXNoKG5ldyBQYXJzZUVycm9yKHNvdXJjZVNwYW4sIG1lc3NhZ2UsIGxldmVsKSk7XG4gIH1cblxuICBwcml2YXRlIF9yZXBvcnRFeHByZXNzaW9uUGFyc2VyRXJyb3JzKGVycm9yczogUGFyc2VyRXJyb3JbXSwgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuKSB7XG4gICAgZm9yIChjb25zdCBlcnJvciBvZiBlcnJvcnMpIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKGVycm9yLm1lc3NhZ2UsIHNvdXJjZVNwYW4pO1xuICAgIH1cbiAgfVxuXG4gIC8vIE1ha2Ugc3VyZSBhbGwgdGhlIHVzZWQgcGlwZXMgYXJlIGtub3duIGluIGB0aGlzLnBpcGVzQnlOYW1lYFxuICBwcml2YXRlIF9jaGVja1BpcGVzKGFzdDogQVNUV2l0aFNvdXJjZSwgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuKTogdm9pZCB7XG4gICAgaWYgKGFzdCAmJiB0aGlzLnBpcGVzQnlOYW1lKSB7XG4gICAgICBjb25zdCBjb2xsZWN0b3IgPSBuZXcgUGlwZUNvbGxlY3RvcigpO1xuICAgICAgYXN0LnZpc2l0KGNvbGxlY3Rvcik7XG4gICAgICBjb2xsZWN0b3IucGlwZXMuZm9yRWFjaCgoYXN0LCBwaXBlTmFtZSkgPT4ge1xuICAgICAgICBjb25zdCBwaXBlTWV0YSA9IHRoaXMucGlwZXNCeU5hbWUgIS5nZXQocGlwZU5hbWUpO1xuICAgICAgICBpZiAoIXBpcGVNZXRhKSB7XG4gICAgICAgICAgdGhpcy5fcmVwb3J0RXJyb3IoXG4gICAgICAgICAgICAgIGBUaGUgcGlwZSAnJHtwaXBlTmFtZX0nIGNvdWxkIG5vdCBiZSBmb3VuZGAsXG4gICAgICAgICAgICAgIG5ldyBQYXJzZVNvdXJjZVNwYW4oXG4gICAgICAgICAgICAgICAgICBzb3VyY2VTcGFuLnN0YXJ0Lm1vdmVCeShhc3Quc3Bhbi5zdGFydCksIHNvdXJjZVNwYW4uc3RhcnQubW92ZUJ5KGFzdC5zcGFuLmVuZCkpKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICB0aGlzLl91c2VkUGlwZXMuc2V0KHBpcGVOYW1lLCBwaXBlTWV0YSk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBAcGFyYW0gcHJvcE5hbWUgdGhlIG5hbWUgb2YgdGhlIHByb3BlcnR5IC8gYXR0cmlidXRlXG4gICAqIEBwYXJhbSBzb3VyY2VTcGFuXG4gICAqIEBwYXJhbSBpc0F0dHIgdHJ1ZSB3aGVuIGJpbmRpbmcgdG8gYW4gYXR0cmlidXRlXG4gICAqL1xuICBwcml2YXRlIF92YWxpZGF0ZVByb3BlcnR5T3JBdHRyaWJ1dGVOYW1lKFxuICAgICAgcHJvcE5hbWU6IHN0cmluZywgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLCBpc0F0dHI6IGJvb2xlYW4pOiB2b2lkIHtcbiAgICBjb25zdCByZXBvcnQgPSBpc0F0dHIgPyB0aGlzLl9zY2hlbWFSZWdpc3RyeS52YWxpZGF0ZUF0dHJpYnV0ZShwcm9wTmFtZSkgOlxuICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRoaXMuX3NjaGVtYVJlZ2lzdHJ5LnZhbGlkYXRlUHJvcGVydHkocHJvcE5hbWUpO1xuICAgIGlmIChyZXBvcnQuZXJyb3IpIHtcbiAgICAgIHRoaXMuX3JlcG9ydEVycm9yKHJlcG9ydC5tc2cgISwgc291cmNlU3BhbiwgUGFyc2VFcnJvckxldmVsLkVSUk9SKTtcbiAgICB9XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIFBpcGVDb2xsZWN0b3IgZXh0ZW5kcyBSZWN1cnNpdmVBc3RWaXNpdG9yIHtcbiAgcGlwZXMgPSBuZXcgTWFwPHN0cmluZywgQmluZGluZ1BpcGU+KCk7XG4gIHZpc2l0UGlwZShhc3Q6IEJpbmRpbmdQaXBlLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHRoaXMucGlwZXMuc2V0KGFzdC5uYW1lLCBhc3QpO1xuICAgIGFzdC5leHAudmlzaXQodGhpcyk7XG4gICAgdGhpcy52aXNpdEFsbChhc3QuYXJncywgY29udGV4dCk7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbn1cblxuZnVuY3Rpb24gaXNBbmltYXRpb25MYWJlbChuYW1lOiBzdHJpbmcpOiBib29sZWFuIHtcbiAgcmV0dXJuIG5hbWVbMF0gPT0gJ0AnO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gY2FsY1Bvc3NpYmxlU2VjdXJpdHlDb250ZXh0cyhcbiAgICByZWdpc3RyeTogRWxlbWVudFNjaGVtYVJlZ2lzdHJ5LCBzZWxlY3Rvcjogc3RyaW5nLCBwcm9wTmFtZTogc3RyaW5nLFxuICAgIGlzQXR0cmlidXRlOiBib29sZWFuKTogU2VjdXJpdHlDb250ZXh0W10ge1xuICBjb25zdCBjdHhzOiBTZWN1cml0eUNvbnRleHRbXSA9IFtdO1xuICBDc3NTZWxlY3Rvci5wYXJzZShzZWxlY3RvcikuZm9yRWFjaCgoc2VsZWN0b3IpID0+IHtcbiAgICBjb25zdCBlbGVtZW50TmFtZXMgPSBzZWxlY3Rvci5lbGVtZW50ID8gW3NlbGVjdG9yLmVsZW1lbnRdIDogcmVnaXN0cnkuYWxsS25vd25FbGVtZW50TmFtZXMoKTtcbiAgICBjb25zdCBub3RFbGVtZW50TmFtZXMgPVxuICAgICAgICBuZXcgU2V0KHNlbGVjdG9yLm5vdFNlbGVjdG9ycy5maWx0ZXIoc2VsZWN0b3IgPT4gc2VsZWN0b3IuaXNFbGVtZW50U2VsZWN0b3IoKSlcbiAgICAgICAgICAgICAgICAgICAgLm1hcCgoc2VsZWN0b3IpID0+IHNlbGVjdG9yLmVsZW1lbnQpKTtcbiAgICBjb25zdCBwb3NzaWJsZUVsZW1lbnROYW1lcyA9XG4gICAgICAgIGVsZW1lbnROYW1lcy5maWx0ZXIoZWxlbWVudE5hbWUgPT4gIW5vdEVsZW1lbnROYW1lcy5oYXMoZWxlbWVudE5hbWUpKTtcblxuICAgIGN0eHMucHVzaCguLi5wb3NzaWJsZUVsZW1lbnROYW1lcy5tYXAoXG4gICAgICAgIGVsZW1lbnROYW1lID0+IHJlZ2lzdHJ5LnNlY3VyaXR5Q29udGV4dChlbGVtZW50TmFtZSwgcHJvcE5hbWUsIGlzQXR0cmlidXRlKSkpO1xuICB9KTtcbiAgcmV0dXJuIGN0eHMubGVuZ3RoID09PSAwID8gW1NlY3VyaXR5Q29udGV4dC5OT05FXSA6IEFycmF5LmZyb20obmV3IFNldChjdHhzKSkuc29ydCgpO1xufVxuIl19