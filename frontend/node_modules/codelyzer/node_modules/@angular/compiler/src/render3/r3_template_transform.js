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
        define("@angular/compiler/src/render3/r3_template_transform", ["require", "exports", "tslib", "@angular/compiler/src/ml_parser/ast", "@angular/compiler/src/ml_parser/html_whitespaces", "@angular/compiler/src/ml_parser/tags", "@angular/compiler/src/parse_util", "@angular/compiler/src/style_url_resolver", "@angular/compiler/src/template_parser/template_preparser", "@angular/compiler/src/util", "@angular/compiler/src/render3/r3_ast", "@angular/compiler/src/render3/view/i18n/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    var html = require("@angular/compiler/src/ml_parser/ast");
    var html_whitespaces_1 = require("@angular/compiler/src/ml_parser/html_whitespaces");
    var tags_1 = require("@angular/compiler/src/ml_parser/tags");
    var parse_util_1 = require("@angular/compiler/src/parse_util");
    var style_url_resolver_1 = require("@angular/compiler/src/style_url_resolver");
    var template_preparser_1 = require("@angular/compiler/src/template_parser/template_preparser");
    var util_1 = require("@angular/compiler/src/util");
    var t = require("@angular/compiler/src/render3/r3_ast");
    var util_2 = require("@angular/compiler/src/render3/view/i18n/util");
    var BIND_NAME_REGEXP = /^(?:(?:(?:(bind-)|(let-)|(ref-|#)|(on-)|(bindon-)|(@))(.+))|\[\(([^\)]+)\)\]|\[([^\]]+)\]|\(([^\)]+)\))$/;
    // Group 1 = "bind-"
    var KW_BIND_IDX = 1;
    // Group 2 = "let-"
    var KW_LET_IDX = 2;
    // Group 3 = "ref-/#"
    var KW_REF_IDX = 3;
    // Group 4 = "on-"
    var KW_ON_IDX = 4;
    // Group 5 = "bindon-"
    var KW_BINDON_IDX = 5;
    // Group 6 = "@"
    var KW_AT_IDX = 6;
    // Group 7 = the identifier after "bind-", "let-", "ref-/#", "on-", "bindon-" or "@"
    var IDENT_KW_IDX = 7;
    // Group 8 = identifier inside [()]
    var IDENT_BANANA_BOX_IDX = 8;
    // Group 9 = identifier inside []
    var IDENT_PROPERTY_IDX = 9;
    // Group 10 = identifier inside ()
    var IDENT_EVENT_IDX = 10;
    var TEMPLATE_ATTR_PREFIX = '*';
    function htmlAstToRender3Ast(htmlNodes, bindingParser) {
        var transformer = new HtmlAstToIvyAst(bindingParser);
        var ivyNodes = html.visitAll(transformer, htmlNodes);
        // Errors might originate in either the binding parser or the html to ivy transformer
        var allErrors = bindingParser.errors.concat(transformer.errors);
        var errors = allErrors.filter(function (e) { return e.level === parse_util_1.ParseErrorLevel.ERROR; });
        if (errors.length > 0) {
            var errorString = errors.join('\n');
            throw util_1.syntaxError("Template parse errors:\n" + errorString, errors);
        }
        return {
            nodes: ivyNodes,
            errors: allErrors,
            styleUrls: transformer.styleUrls,
            styles: transformer.styles,
        };
    }
    exports.htmlAstToRender3Ast = htmlAstToRender3Ast;
    var HtmlAstToIvyAst = /** @class */ (function () {
        function HtmlAstToIvyAst(bindingParser) {
            this.bindingParser = bindingParser;
            this.errors = [];
            this.styles = [];
            this.styleUrls = [];
            this.inI18nBlock = false;
        }
        // HTML visitor
        HtmlAstToIvyAst.prototype.visitElement = function (element) {
            var e_1, _a;
            var _this = this;
            var isI18nRootElement = util_2.isI18nRootNode(element.i18n);
            if (isI18nRootElement) {
                if (this.inI18nBlock) {
                    this.reportError('Cannot mark an element as translatable inside of a translatable section. Please remove the nested i18n marker.', element.sourceSpan);
                }
                this.inI18nBlock = true;
            }
            var preparsedElement = template_preparser_1.preparseElement(element);
            if (preparsedElement.type === template_preparser_1.PreparsedElementType.SCRIPT) {
                return null;
            }
            else if (preparsedElement.type === template_preparser_1.PreparsedElementType.STYLE) {
                var contents = textContents(element);
                if (contents !== null) {
                    this.styles.push(contents);
                }
                return null;
            }
            else if (preparsedElement.type === template_preparser_1.PreparsedElementType.STYLESHEET &&
                style_url_resolver_1.isStyleUrlResolvable(preparsedElement.hrefAttr)) {
                this.styleUrls.push(preparsedElement.hrefAttr);
                return null;
            }
            // Whether the element is a `<ng-template>`
            var isTemplateElement = tags_1.isNgTemplate(element.name);
            var parsedProperties = [];
            var boundEvents = [];
            var variables = [];
            var references = [];
            var attributes = [];
            var i18nAttrsMeta = {};
            var templateParsedProperties = [];
            var templateVariables = [];
            // Whether the element has any *-attribute
            var elementHasInlineTemplate = false;
            try {
                for (var _b = tslib_1.__values(element.attrs), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var attribute = _c.value;
                    var hasBinding = false;
                    var normalizedName = normalizeAttributeName(attribute.name);
                    // `*attr` defines template bindings
                    var isTemplateBinding = false;
                    if (attribute.i18n) {
                        i18nAttrsMeta[attribute.name] = attribute.i18n;
                    }
                    if (normalizedName.startsWith(TEMPLATE_ATTR_PREFIX)) {
                        // *-attributes
                        if (elementHasInlineTemplate) {
                            this.reportError("Can't have multiple template bindings on one element. Use only one attribute prefixed with *", attribute.sourceSpan);
                        }
                        isTemplateBinding = true;
                        elementHasInlineTemplate = true;
                        var templateValue = attribute.value;
                        var templateKey = normalizedName.substring(TEMPLATE_ATTR_PREFIX.length);
                        var parsedVariables = [];
                        var absoluteValueOffset = attribute.valueSpan ?
                            attribute.valueSpan.start.offset :
                            // If there is no value span the attribute does not have a value, like `attr` in
                            //`<div attr></div>`. In this case, point to one character beyond the last character of
                            // the attribute name.
                            attribute.sourceSpan.start.offset + attribute.name.length;
                        this.bindingParser.parseInlineTemplateBinding(templateKey, templateValue, attribute.sourceSpan, absoluteValueOffset, [], templateParsedProperties, parsedVariables);
                        templateVariables.push.apply(templateVariables, tslib_1.__spread(parsedVariables.map(function (v) { return new t.Variable(v.name, v.value, v.sourceSpan); })));
                    }
                    else {
                        // Check for variables, events, property bindings, interpolation
                        hasBinding = this.parseAttribute(isTemplateElement, attribute, [], parsedProperties, boundEvents, variables, references);
                    }
                    if (!hasBinding && !isTemplateBinding) {
                        // don't include the bindings as attributes as well in the AST
                        attributes.push(this.visitAttribute(attribute));
                    }
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
            var children = html.visitAll(preparsedElement.nonBindable ? NON_BINDABLE_VISITOR : this, element.children);
            var parsedElement;
            if (preparsedElement.type === template_preparser_1.PreparsedElementType.NG_CONTENT) {
                // `<ng-content>`
                if (element.children &&
                    !element.children.every(function (node) { return isEmptyTextNode(node) || isCommentNode(node); })) {
                    this.reportError("<ng-content> element cannot have content.", element.sourceSpan);
                }
                var selector = preparsedElement.selectAttr;
                var attrs = element.attrs.map(function (attr) { return _this.visitAttribute(attr); });
                parsedElement = new t.Content(selector, attrs, element.sourceSpan, element.i18n);
            }
            else if (isTemplateElement) {
                // `<ng-template>`
                var attrs = this.extractAttributes(element.name, parsedProperties, i18nAttrsMeta);
                parsedElement = new t.Template(element.name, attributes, attrs.bound, boundEvents, [ /* no template attributes */], children, references, variables, element.sourceSpan, element.startSourceSpan, element.endSourceSpan, element.i18n);
            }
            else {
                var attrs = this.extractAttributes(element.name, parsedProperties, i18nAttrsMeta);
                parsedElement = new t.Element(element.name, attributes, attrs.bound, boundEvents, children, references, element.sourceSpan, element.startSourceSpan, element.endSourceSpan, element.i18n);
            }
            if (elementHasInlineTemplate) {
                // If this node is an inline-template (e.g. has *ngFor) then we need to create a template
                // node that contains this node.
                // Moreover, if the node is an element, then we need to hoist its attributes to the template
                // node for matching against content projection selectors.
                var attrs = this.extractAttributes('ng-template', templateParsedProperties, i18nAttrsMeta);
                var templateAttrs_1 = [];
                attrs.literal.forEach(function (attr) { return templateAttrs_1.push(attr); });
                attrs.bound.forEach(function (attr) { return templateAttrs_1.push(attr); });
                var hoistedAttrs = parsedElement instanceof t.Element ?
                    {
                        attributes: parsedElement.attributes,
                        inputs: parsedElement.inputs,
                        outputs: parsedElement.outputs,
                    } :
                    { attributes: [], inputs: [], outputs: [] };
                // For <ng-template>s with structural directives on them, avoid passing i18n information to
                // the wrapping template to prevent unnecessary i18n instructions from being generated. The
                // necessary i18n meta information will be extracted from child elements.
                var i18n_1 = isTemplateElement && isI18nRootElement ? undefined : element.i18n;
                // TODO(pk): test for this case
                parsedElement = new t.Template(parsedElement.name, hoistedAttrs.attributes, hoistedAttrs.inputs, hoistedAttrs.outputs, templateAttrs_1, [parsedElement], [ /* no references */], templateVariables, element.sourceSpan, element.startSourceSpan, element.endSourceSpan, i18n_1);
            }
            if (isI18nRootElement) {
                this.inI18nBlock = false;
            }
            return parsedElement;
        };
        HtmlAstToIvyAst.prototype.visitAttribute = function (attribute) {
            return new t.TextAttribute(attribute.name, attribute.value, attribute.sourceSpan, attribute.valueSpan, attribute.i18n);
        };
        HtmlAstToIvyAst.prototype.visitText = function (text) {
            return this._visitTextWithInterpolation(text.value, text.sourceSpan, text.i18n);
        };
        HtmlAstToIvyAst.prototype.visitExpansion = function (expansion) {
            var _this = this;
            if (!expansion.i18n) {
                // do not generate Icu in case it was created
                // outside of i18n block in a template
                return null;
            }
            if (!util_2.isI18nRootNode(expansion.i18n)) {
                throw new Error("Invalid type \"" + expansion.i18n.constructor + "\" for \"i18n\" property of " + expansion.sourceSpan.toString() + ". Expected a \"Message\"");
            }
            var message = expansion.i18n;
            var vars = {};
            var placeholders = {};
            // extract VARs from ICUs - we process them separately while
            // assembling resulting message via goog.getMsg function, since
            // we need to pass them to top-level goog.getMsg call
            Object.keys(message.placeholders).forEach(function (key) {
                var value = message.placeholders[key];
                if (key.startsWith(util_2.I18N_ICU_VAR_PREFIX)) {
                    var config = _this.bindingParser.interpolationConfig;
                    // ICU expression is a plain string, not wrapped into start
                    // and end tags, so we wrap it before passing to binding parser
                    var wrapped = "" + config.start + value + config.end;
                    vars[key] = _this._visitTextWithInterpolation(wrapped, expansion.sourceSpan);
                }
                else {
                    placeholders[key] = _this._visitTextWithInterpolation(value, expansion.sourceSpan);
                }
            });
            return new t.Icu(vars, placeholders, expansion.sourceSpan, message);
        };
        HtmlAstToIvyAst.prototype.visitExpansionCase = function (expansionCase) { return null; };
        HtmlAstToIvyAst.prototype.visitComment = function (comment) { return null; };
        // convert view engine `ParsedProperty` to a format suitable for IVY
        HtmlAstToIvyAst.prototype.extractAttributes = function (elementName, properties, i18nPropsMeta) {
            var _this = this;
            var bound = [];
            var literal = [];
            properties.forEach(function (prop) {
                var i18n = i18nPropsMeta[prop.name];
                if (prop.isLiteral) {
                    literal.push(new t.TextAttribute(prop.name, prop.expression.source || '', prop.sourceSpan, undefined, i18n));
                }
                else {
                    // Note that validation is skipped and property mapping is disabled
                    // due to the fact that we need to make sure a given prop is not an
                    // input of a directive and directive matching happens at runtime.
                    var bep = _this.bindingParser.createBoundElementProperty(elementName, prop, /* skipValidation */ true, /* mapPropertyName */ false);
                    bound.push(t.BoundAttribute.fromBoundElementProperty(bep, i18n));
                }
            });
            return { bound: bound, literal: literal };
        };
        HtmlAstToIvyAst.prototype.parseAttribute = function (isTemplateElement, attribute, matchableAttributes, parsedProperties, boundEvents, variables, references) {
            var name = normalizeAttributeName(attribute.name);
            var value = attribute.value;
            var srcSpan = attribute.sourceSpan;
            var absoluteOffset = attribute.valueSpan ? attribute.valueSpan.start.offset : srcSpan.start.offset;
            var bindParts = name.match(BIND_NAME_REGEXP);
            var hasBinding = false;
            if (bindParts) {
                hasBinding = true;
                if (bindParts[KW_BIND_IDX] != null) {
                    this.bindingParser.parsePropertyBinding(bindParts[IDENT_KW_IDX], value, false, srcSpan, absoluteOffset, attribute.valueSpan, matchableAttributes, parsedProperties);
                }
                else if (bindParts[KW_LET_IDX]) {
                    if (isTemplateElement) {
                        var identifier = bindParts[IDENT_KW_IDX];
                        this.parseVariable(identifier, value, srcSpan, attribute.valueSpan, variables);
                    }
                    else {
                        this.reportError("\"let-\" is only supported on ng-template elements.", srcSpan);
                    }
                }
                else if (bindParts[KW_REF_IDX]) {
                    var identifier = bindParts[IDENT_KW_IDX];
                    this.parseReference(identifier, value, srcSpan, attribute.valueSpan, references);
                }
                else if (bindParts[KW_ON_IDX]) {
                    var events = [];
                    this.bindingParser.parseEvent(bindParts[IDENT_KW_IDX], value, srcSpan, attribute.valueSpan || srcSpan, matchableAttributes, events);
                    addEvents(events, boundEvents);
                }
                else if (bindParts[KW_BINDON_IDX]) {
                    this.bindingParser.parsePropertyBinding(bindParts[IDENT_KW_IDX], value, false, srcSpan, absoluteOffset, attribute.valueSpan, matchableAttributes, parsedProperties);
                    this.parseAssignmentEvent(bindParts[IDENT_KW_IDX], value, srcSpan, attribute.valueSpan, matchableAttributes, boundEvents);
                }
                else if (bindParts[KW_AT_IDX]) {
                    this.bindingParser.parseLiteralAttr(name, value, srcSpan, absoluteOffset, attribute.valueSpan, matchableAttributes, parsedProperties);
                }
                else if (bindParts[IDENT_BANANA_BOX_IDX]) {
                    this.bindingParser.parsePropertyBinding(bindParts[IDENT_BANANA_BOX_IDX], value, false, srcSpan, absoluteOffset, attribute.valueSpan, matchableAttributes, parsedProperties);
                    this.parseAssignmentEvent(bindParts[IDENT_BANANA_BOX_IDX], value, srcSpan, attribute.valueSpan, matchableAttributes, boundEvents);
                }
                else if (bindParts[IDENT_PROPERTY_IDX]) {
                    this.bindingParser.parsePropertyBinding(bindParts[IDENT_PROPERTY_IDX], value, false, srcSpan, absoluteOffset, attribute.valueSpan, matchableAttributes, parsedProperties);
                }
                else if (bindParts[IDENT_EVENT_IDX]) {
                    var events = [];
                    this.bindingParser.parseEvent(bindParts[IDENT_EVENT_IDX], value, srcSpan, attribute.valueSpan || srcSpan, matchableAttributes, events);
                    addEvents(events, boundEvents);
                }
            }
            else {
                hasBinding = this.bindingParser.parsePropertyInterpolation(name, value, srcSpan, attribute.valueSpan, matchableAttributes, parsedProperties);
            }
            return hasBinding;
        };
        HtmlAstToIvyAst.prototype._visitTextWithInterpolation = function (value, sourceSpan, i18n) {
            var valueNoNgsp = html_whitespaces_1.replaceNgsp(value);
            var expr = this.bindingParser.parseInterpolation(valueNoNgsp, sourceSpan);
            return expr ? new t.BoundText(expr, sourceSpan, i18n) : new t.Text(valueNoNgsp, sourceSpan);
        };
        HtmlAstToIvyAst.prototype.parseVariable = function (identifier, value, sourceSpan, valueSpan, variables) {
            if (identifier.indexOf('-') > -1) {
                this.reportError("\"-\" is not allowed in variable names", sourceSpan);
            }
            variables.push(new t.Variable(identifier, value, sourceSpan, valueSpan));
        };
        HtmlAstToIvyAst.prototype.parseReference = function (identifier, value, sourceSpan, valueSpan, references) {
            if (identifier.indexOf('-') > -1) {
                this.reportError("\"-\" is not allowed in reference names", sourceSpan);
            }
            references.push(new t.Reference(identifier, value, sourceSpan, valueSpan));
        };
        HtmlAstToIvyAst.prototype.parseAssignmentEvent = function (name, expression, sourceSpan, valueSpan, targetMatchableAttrs, boundEvents) {
            var events = [];
            this.bindingParser.parseEvent(name + "Change", expression + "=$event", sourceSpan, valueSpan || sourceSpan, targetMatchableAttrs, events);
            addEvents(events, boundEvents);
        };
        HtmlAstToIvyAst.prototype.reportError = function (message, sourceSpan, level) {
            if (level === void 0) { level = parse_util_1.ParseErrorLevel.ERROR; }
            this.errors.push(new parse_util_1.ParseError(sourceSpan, message, level));
        };
        return HtmlAstToIvyAst;
    }());
    var NonBindableVisitor = /** @class */ (function () {
        function NonBindableVisitor() {
        }
        NonBindableVisitor.prototype.visitElement = function (ast) {
            var preparsedElement = template_preparser_1.preparseElement(ast);
            if (preparsedElement.type === template_preparser_1.PreparsedElementType.SCRIPT ||
                preparsedElement.type === template_preparser_1.PreparsedElementType.STYLE ||
                preparsedElement.type === template_preparser_1.PreparsedElementType.STYLESHEET) {
                // Skipping <script> for security reasons
                // Skipping <style> and stylesheets as we already processed them
                // in the StyleCompiler
                return null;
            }
            var children = html.visitAll(this, ast.children, null);
            return new t.Element(ast.name, html.visitAll(this, ast.attrs), 
            /* inputs */ [], /* outputs */ [], children, /* references */ [], ast.sourceSpan, ast.startSourceSpan, ast.endSourceSpan);
        };
        NonBindableVisitor.prototype.visitComment = function (comment) { return null; };
        NonBindableVisitor.prototype.visitAttribute = function (attribute) {
            return new t.TextAttribute(attribute.name, attribute.value, attribute.sourceSpan, undefined, attribute.i18n);
        };
        NonBindableVisitor.prototype.visitText = function (text) { return new t.Text(text.value, text.sourceSpan); };
        NonBindableVisitor.prototype.visitExpansion = function (expansion) { return null; };
        NonBindableVisitor.prototype.visitExpansionCase = function (expansionCase) { return null; };
        return NonBindableVisitor;
    }());
    var NON_BINDABLE_VISITOR = new NonBindableVisitor();
    function normalizeAttributeName(attrName) {
        return /^data-/i.test(attrName) ? attrName.substring(5) : attrName;
    }
    function addEvents(events, boundEvents) {
        boundEvents.push.apply(boundEvents, tslib_1.__spread(events.map(function (e) { return t.BoundEvent.fromParsedEvent(e); })));
    }
    function isEmptyTextNode(node) {
        return node instanceof html.Text && node.value.trim().length == 0;
    }
    function isCommentNode(node) {
        return node instanceof html.Comment;
    }
    function textContents(node) {
        if (node.children.length !== 1 || !(node.children[0] instanceof html.Text)) {
            return null;
        }
        else {
            return node.children[0].value;
        }
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicjNfdGVtcGxhdGVfdHJhbnNmb3JtLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvc3JjL3JlbmRlcjMvcjNfdGVtcGxhdGVfdHJhbnNmb3JtLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQUlILDBEQUF5QztJQUN6QyxxRkFBMEQ7SUFDMUQsNkRBQStDO0lBQy9DLCtEQUEyRTtJQUMzRSwrRUFBMkQ7SUFFM0QsK0ZBQTRGO0lBQzVGLG1EQUFvQztJQUVwQyx3REFBOEI7SUFDOUIscUVBQXFFO0lBRXJFLElBQU0sZ0JBQWdCLEdBQ2xCLDBHQUEwRyxDQUFDO0lBRS9HLG9CQUFvQjtJQUNwQixJQUFNLFdBQVcsR0FBRyxDQUFDLENBQUM7SUFDdEIsbUJBQW1CO0lBQ25CLElBQU0sVUFBVSxHQUFHLENBQUMsQ0FBQztJQUNyQixxQkFBcUI7SUFDckIsSUFBTSxVQUFVLEdBQUcsQ0FBQyxDQUFDO0lBQ3JCLGtCQUFrQjtJQUNsQixJQUFNLFNBQVMsR0FBRyxDQUFDLENBQUM7SUFDcEIsc0JBQXNCO0lBQ3RCLElBQU0sYUFBYSxHQUFHLENBQUMsQ0FBQztJQUN4QixnQkFBZ0I7SUFDaEIsSUFBTSxTQUFTLEdBQUcsQ0FBQyxDQUFDO0lBQ3BCLG9GQUFvRjtJQUNwRixJQUFNLFlBQVksR0FBRyxDQUFDLENBQUM7SUFDdkIsbUNBQW1DO0lBQ25DLElBQU0sb0JBQW9CLEdBQUcsQ0FBQyxDQUFDO0lBQy9CLGlDQUFpQztJQUNqQyxJQUFNLGtCQUFrQixHQUFHLENBQUMsQ0FBQztJQUM3QixrQ0FBa0M7SUFDbEMsSUFBTSxlQUFlLEdBQUcsRUFBRSxDQUFDO0lBRTNCLElBQU0sb0JBQW9CLEdBQUcsR0FBRyxDQUFDO0lBVWpDLFNBQWdCLG1CQUFtQixDQUMvQixTQUFzQixFQUFFLGFBQTRCO1FBQ3RELElBQU0sV0FBVyxHQUFHLElBQUks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LElBQUksQ0FBQyxDQUFDO0lBQ3BFLENBQUM7SUFFRCxTQUFTLGFBQWEsQ0FBQyxJQUFlO1FBQ3BDLE9BQU8sSUFBSSxZQUFZLElBQUksQ0FBQyxPQUFPLENBQUM7SUFDdEMsQ0FBQztJQUVELFNBQVMsWUFBWSxDQUFDLElBQWtCO1FBQ3RDLElBQUksSUFBSSxDQUFDLFFBQVEsQ0FBQyxNQUFNLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUMsQ0FBQyxZQUFZLElBQUksQ0FBQyxJQUFJLENBQUMsRUFBRTtZQUMxRSxPQUFPLElBQUksQ0FBQztTQUNiO2FBQU07WUFDTCxPQUFRLElBQUksQ0FBQyxRQUFRLENBQUMsQ0FBQyxDQUFlLENBQUMsS0FBSyxDQUFDO1NBQzlDO0lBQ0gsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtQYXJzZWRFdmVudCwgUGFyc2VkUHJvcGVydHksIFBhcnNlZFZhcmlhYmxlfSBmcm9tICcuLi9leHByZXNzaW9uX3BhcnNlci9hc3QnO1xuaW1wb3J0ICogYXMgaTE4biBmcm9tICcuLi9pMThuL2kxOG5fYXN0JztcbmltcG9ydCAqIGFzIGh0bWwgZnJvbSAnLi4vbWxfcGFyc2VyL2FzdCc7XG5pbXBvcnQge3JlcGxhY2VOZ3NwfSBmcm9tICcuLi9tbF9wYXJzZXIvaHRtbF93aGl0ZXNwYWNlcyc7XG5pbXBvcnQge2lzTmdUZW1wbGF0ZX0gZnJvbSAnLi4vbWxfcGFyc2VyL3RhZ3MnO1xuaW1wb3J0IHtQYXJzZUVycm9yLCBQYXJzZUVycm9yTGV2ZWwsIFBhcnNlU291cmNlU3Bhbn0gZnJvbSAnLi4vcGFyc2VfdXRpbCc7XG5pbXBvcnQge2lzU3R5bGVVcmxSZXNvbHZhYmxlfSBmcm9tICcuLi9zdHlsZV91cmxfcmVzb2x2ZXInO1xuaW1wb3J0IHtCaW5kaW5nUGFyc2VyfSBmcm9tICcuLi90ZW1wbGF0ZV9wYXJzZXIvYmluZGluZ19wYXJzZXInO1xuaW1wb3J0IHtQcmVwYXJzZWRFbGVtZW50VHlwZSwgcHJlcGFyc2VFbGVtZW50fSBmcm9tICcuLi90ZW1wbGF0ZV9wYXJzZXIvdGVtcGxhdGVfcHJlcGFyc2VyJztcbmltcG9ydCB7c3ludGF4RXJyb3J9IGZyb20gJy4uL3V0aWwnO1xuXG5pbXBvcnQgKiBhcyB0IGZyb20gJy4vcjNfYXN0JztcbmltcG9ydCB7STE4Tl9JQ1VfVkFSX1BSRUZJWCwgaXNJMThuUm9vdE5vZGV9IGZyb20gJy4vdmlldy9pMThuL3V0aWwnO1xuXG5jb25zdCBCSU5EX05BTUVfUkVHRVhQID1cbiAgICAvXig/Oig/Oig/OihiaW5kLSl8KGxldC0pfChyZWYtfCMpfChvbi0pfChiaW5kb24tKXwoQCkpKC4rKSl8XFxbXFwoKFteXFwpXSspXFwpXFxdfFxcWyhbXlxcXV0rKVxcXXxcXCgoW15cXCldKylcXCkpJC87XG5cbi8vIEdyb3VwIDEgPSBcImJpbmQtXCJcbmNvbnN0IEtXX0JJTkRfSURYID0gMTtcbi8vIEdyb3VwIDIgPSBcImxldC1cIlxuY29uc3QgS1dfTEVUX0lEWCA9IDI7XG4vLyBHcm91cCAzID0gXCJyZWYtLyNcIlxuY29uc3QgS1dfUkVGX0lEWCA9IDM7XG4vLyBHcm91cCA0ID0gXCJvbi1cIlxuY29uc3QgS1dfT05fSURYID0gNDtcbi8vIEdyb3VwIDUgPSBcImJpbmRvbi1cIlxuY29uc3QgS1dfQklORE9OX0lEWCA9IDU7XG4vLyBHcm91cCA2ID0gXCJAXCJcbmNvbnN0IEtXX0FUX0lEWCA9IDY7XG4vLyBHcm91cCA3ID0gdGhlIGlkZW50aWZpZXIgYWZ0ZXIgXCJiaW5kLVwiLCBcImxldC1cIiwgXCJyZWYtLyNcIiwgXCJvbi1cIiwgXCJiaW5kb24tXCIgb3IgXCJAXCJcbmNvbnN0IElERU5UX0tXX0lEWCA9IDc7XG4vLyBHcm91cCA4ID0gaWRlbnRpZmllciBpbnNpZGUgWygpXVxuY29uc3QgSURFTlRfQkFOQU5BX0JPWF9JRFggPSA4O1xuLy8gR3JvdXAgOSA9IGlkZW50aWZpZXIgaW5zaWRlIFtdXG5jb25zdCBJREVOVF9QUk9QRVJUWV9JRFggPSA5O1xuLy8gR3JvdXAgMTAgPSBpZGVudGlmaWVyIGluc2lkZSAoKVxuY29uc3QgSURFTlRfRVZFTlRfSURYID0gMTA7XG5cbmNvbnN0IFRFTVBMQVRFX0FUVFJfUFJFRklYID0gJyonO1xuXG4vLyBSZXN1bHQgb2YgdGhlIGh0bWwgQVNUIHRvIEl2eSBBU1QgdHJhbnNmb3JtYXRpb25cbmV4cG9ydCBpbnRlcmZhY2UgUmVuZGVyM1BhcnNlUmVzdWx0IHtcbiAgbm9kZXM6IHQuTm9kZVtdO1xuICBlcnJvcnM6IFBhcnNlRXJyb3JbXTtcbiAgc3R5bGVzOiBzdHJpbmdbXTtcbiAgc3R5bGVVcmxzOiBzdHJpbmdbXTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGh0bWxBc3RUb1JlbmRlcjNBc3QoXG4gICAgaHRtbE5vZGVzOiBodG1sLk5vZGVbXSwgYmluZGluZ1BhcnNlcjogQmluZGluZ1BhcnNlcik6IFJlbmRlcjNQYXJzZVJlc3VsdCB7XG4gIGNvbnN0IHRyYW5zZm9ybWVyID0gbmV3IEh0bWxBc3RUb0l2eUFzdChiaW5kaW5nUGFyc2VyKTtcbiAgY29uc3QgaXZ5Tm9kZXMgPSBodG1sLnZpc2l0QWxsKHRyYW5zZm9ybWVyLCBodG1sTm9kZXMpO1xuXG4gIC8vIEVycm9ycyBtaWdodCBvcmlnaW5hdGUgaW4gZWl0aGVyIHRoZSBiaW5kaW5nIHBhcnNlciBvciB0aGUgaHRtbCB0byBpdnkgdHJhbnNmb3JtZXJcbiAgY29uc3QgYWxsRXJyb3JzID0gYmluZGluZ1BhcnNlci5lcnJvcnMuY29uY2F0KHRyYW5zZm9ybWVyLmVycm9ycyk7XG4gIGNvbnN0IGVycm9yczogUGFyc2VFcnJvcltdID0gYWxsRXJyb3JzLmZpbHRlcihlID0+IGUubGV2ZWwgPT09IFBhcnNlRXJyb3JMZXZlbC5FUlJPUik7XG5cbiAgaWYgKGVycm9ycy5sZW5ndGggPiAwKSB7XG4gICAgY29uc3QgZXJyb3JTdHJpbmcgPSBlcnJvcnMuam9pbignXFxuJyk7XG4gICAgdGhyb3cgc3ludGF4RXJyb3IoYFRlbXBsYXRlIHBhcnNlIGVycm9yczpcXG4ke2Vycm9yU3RyaW5nfWAsIGVycm9ycyk7XG4gIH1cblxuICByZXR1cm4ge1xuICAgIG5vZGVzOiBpdnlOb2RlcyxcbiAgICBlcnJvcnM6IGFsbEVycm9ycyxcbiAgICBzdHlsZVVybHM6IHRyYW5zZm9ybWVyLnN0eWxlVXJscyxcbiAgICBzdHlsZXM6IHRyYW5zZm9ybWVyLnN0eWxlcyxcbiAgfTtcbn1cblxuY2xhc3MgSHRtbEFzdFRvSXZ5QXN0IGltcGxlbWVudHMgaHRtbC5WaXNpdG9yIHtcbiAgZXJyb3JzOiBQYXJzZUVycm9yW10gPSBbXTtcbiAgc3R5bGVzOiBzdHJpbmdbXSA9IFtdO1xuICBzdHlsZVVybHM6IHN0cmluZ1tdID0gW107XG4gIHByaXZhdGUgaW5JMThuQmxvY2s6IGJvb2xlYW4gPSBmYWxzZTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGJpbmRpbmdQYXJzZXI6IEJpbmRpbmdQYXJzZXIpIHt9XG5cbiAgLy8gSFRNTCB2aXNpdG9yXG4gIHZpc2l0RWxlbWVudChlbGVtZW50OiBodG1sLkVsZW1lbnQpOiB0Lk5vZGV8bnVsbCB7XG4gICAgY29uc3QgaXNJMThuUm9vdEVsZW1lbnQgPSBpc0kxOG5Sb290Tm9kZShlbGVtZW50LmkxOG4pO1xuICAgIGlmIChpc0kxOG5Sb290RWxlbWVudCkge1xuICAgICAgaWYgKHRoaXMuaW5JMThuQmxvY2spIHtcbiAgICAgICAgdGhpcy5yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICdDYW5ub3QgbWFyayBhbiBlbGVtZW50IGFzIHRyYW5zbGF0YWJsZSBpbnNpZGUgb2YgYSB0cmFuc2xhdGFibGUgc2VjdGlvbi4gUGxlYXNlIHJlbW92ZSB0aGUgbmVzdGVkIGkxOG4gbWFya2VyLicsXG4gICAgICAgICAgICBlbGVtZW50LnNvdXJjZVNwYW4pO1xuICAgICAgfVxuICAgICAgdGhpcy5pbkkxOG5CbG9jayA9IHRydWU7XG4gICAgfVxuICAgIGNvbnN0IHByZXBhcnNlZEVsZW1lbnQgPSBwcmVwYXJzZUVsZW1lbnQoZWxlbWVudCk7XG4gICAgaWYgKHByZXBhcnNlZEVsZW1lbnQudHlwZSA9PT0gUHJlcGFyc2VkRWxlbWVudFR5cGUuU0NSSVBUKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9IGVsc2UgaWYgKHByZXBhcnNlZEVsZW1lbnQudHlwZSA9PT0gUHJlcGFyc2VkRWxlbWVudFR5cGUuU1RZTEUpIHtcbiAgICAgIGNvbnN0IGNvbnRlbnRzID0gdGV4dENvbnRlbnRzKGVsZW1lbnQpO1xuICAgICAgaWYgKGNvbnRlbnRzICE9PSBudWxsKSB7XG4gICAgICAgIHRoaXMuc3R5bGVzLnB1c2goY29udGVudHMpO1xuICAgICAgfVxuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfSBlbHNlIGlmIChcbiAgICAgICAgcHJlcGFyc2VkRWxlbWVudC50eXBlID09PSBQcmVwYXJzZWRFbGVtZW50VHlwZS5TVFlMRVNIRUVUICYmXG4gICAgICAgIGlzU3R5bGVVcmxSZXNvbHZhYmxlKHByZXBhcnNlZEVsZW1lbnQuaHJlZkF0dHIpKSB7XG4gICAgICB0aGlzLnN0eWxlVXJscy5wdXNoKHByZXBhcnNlZEVsZW1lbnQuaHJlZkF0dHIpO1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuXG4gICAgLy8gV2hldGhlciB0aGUgZWxlbWVudCBpcyBhIGA8bmctdGVtcGxhdGU+YFxuICAgIGNvbnN0IGlzVGVtcGxhdGVFbGVtZW50ID0gaXNOZ1RlbXBsYXRlKGVsZW1lbnQubmFtZSk7XG5cbiAgICBjb25zdCBwYXJzZWRQcm9wZXJ0aWVzOiBQYXJzZWRQcm9wZXJ0eVtdID0gW107XG4gICAgY29uc3QgYm91bmRFdmVudHM6IHQuQm91bmRFdmVudFtdID0gW107XG4gICAgY29uc3QgdmFyaWFibGVzOiB0LlZhcmlhYmxlW10gPSBbXTtcbiAgICBjb25zdCByZWZlcmVuY2VzOiB0LlJlZmVyZW5jZVtdID0gW107XG4gICAgY29uc3QgYXR0cmlidXRlczogdC5UZXh0QXR0cmlidXRlW10gPSBbXTtcbiAgICBjb25zdCBpMThuQXR0cnNNZXRhOiB7W2tleTogc3RyaW5nXTogaTE4bi5JMThuTWV0YX0gPSB7fTtcblxuICAgIGNvbnN0IHRlbXBsYXRlUGFyc2VkUHJvcGVydGllczogUGFyc2VkUHJvcGVydHlbXSA9IFtdO1xuICAgIGNvbnN0IHRlbXBsYXRlVmFyaWFibGVzOiB0LlZhcmlhYmxlW10gPSBbXTtcblxuICAgIC8vIFdoZXRoZXIgdGhlIGVsZW1lbnQgaGFzIGFueSAqLWF0dHJpYnV0ZVxuICAgIGxldCBlbGVtZW50SGFzSW5saW5lVGVtcGxhdGUgPSBmYWxzZTtcblxuICAgIGZvciAoY29uc3QgYXR0cmlidXRlIG9mIGVsZW1lbnQuYXR0cnMpIHtcbiAgICAgIGxldCBoYXNCaW5kaW5nID0gZmFsc2U7XG4gICAgICBjb25zdCBub3JtYWxpemVkTmFtZSA9IG5vcm1hbGl6ZUF0dHJpYnV0ZU5hbWUoYXR0cmlidXRlLm5hbWUpO1xuXG4gICAgICAvLyBgKmF0dHJgIGRlZmluZXMgdGVtcGxhdGUgYmluZGluZ3NcbiAgICAgIGxldCBpc1RlbXBsYXRlQmluZGluZyA9IGZhbHNlO1xuXG4gICAgICBpZiAoYXR0cmlidXRlLmkxOG4pIHtcbiAgICAgICAgaTE4bkF0dHJzTWV0YVthdHRyaWJ1dGUubmFtZV0gPSBhdHRyaWJ1dGUuaTE4bjtcbiAgICAgIH1cblxuICAgICAgaWYgKG5vcm1hbGl6ZWROYW1lLnN0YXJ0c1dpdGgoVEVNUExBVEVfQVRUUl9QUkVGSVgpKSB7XG4gICAgICAgIC8vICotYXR0cmlidXRlc1xuICAgICAgICBpZiAoZWxlbWVudEhhc0lubGluZVRlbXBsYXRlKSB7XG4gICAgICAgICAgdGhpcy5yZXBvcnRFcnJvcihcbiAgICAgICAgICAgICAgYENhbid0IGhhdmUgbXVsdGlwbGUgdGVtcGxhdGUgYmluZGluZ3Mgb24gb25lIGVsZW1lbnQuIFVzZSBvbmx5IG9uZSBhdHRyaWJ1dGUgcHJlZml4ZWQgd2l0aCAqYCxcbiAgICAgICAgICAgICAgYXR0cmlidXRlLnNvdXJjZVNwYW4pO1xuICAgICAgICB9XG4gICAgICAgIGlzVGVtcGxhdGVCaW5kaW5nID0gdHJ1ZTtcbiAgICAgICAgZWxlbWVudEhhc0lubGluZVRlbXBsYXRlID0gdHJ1ZTtcbiAgICAgICAgY29uc3QgdGVtcGxhdGVWYWx1ZSA9IGF0dHJpYnV0ZS52YWx1ZTtcbiAgICAgICAgY29uc3QgdGVtcGxhdGVLZXkgPSBub3JtYWxpemVkTmFtZS5zdWJzdHJpbmcoVEVNUExBVEVfQVRUUl9QUkVGSVgubGVuZ3RoKTtcblxuICAgICAgICBjb25zdCBwYXJzZWRWYXJpYWJsZXM6IFBhcnNlZFZhcmlhYmxlW10gPSBbXTtcbiAgICAgICAgY29uc3QgYWJzb2x1dGVWYWx1ZU9mZnNldCA9IGF0dHJpYnV0ZS52YWx1ZVNwYW4gP1xuICAgICAgICAgICAgYXR0cmlidXRlLnZhbHVlU3Bhbi5zdGFydC5vZmZzZXQgOlxuICAgICAgICAgICAgLy8gSWYgdGhlcmUgaXMgbm8gdmFsdWUgc3BhbiB0aGUgYXR0cmlidXRlIGRvZXMgbm90IGhhdmUgYSB2YWx1ZSwgbGlrZSBgYXR0cmAgaW5cbiAgICAgICAgICAgIC8vYDxkaXYgYXR0cj48L2Rpdj5gLiBJbiB0aGlzIGNhc2UsIHBvaW50IHRvIG9uZSBjaGFyYWN0ZXIgYmV5b25kIHRoZSBsYXN0IGNoYXJhY3RlciBvZlxuICAgICAgICAgICAgLy8gdGhlIGF0dHJpYnV0ZSBuYW1lLlxuICAgICAgICAgICAgYXR0cmlidXRlLnNvdXJjZVNwYW4uc3RhcnQub2Zmc2V0ICsgYXR0cmlidXRlLm5hbWUubGVuZ3RoO1xuXG4gICAgICAgIHRoaXMuYmluZGluZ1BhcnNlci5wYXJzZUlubGluZVRlbXBsYXRlQmluZGluZyhcbiAgICAgICAgICAgIHRlbXBsYXRlS2V5LCB0ZW1wbGF0ZVZhbHVlLCBhdHRyaWJ1dGUuc291cmNlU3BhbiwgYWJzb2x1dGVWYWx1ZU9mZnNldCwgW10sXG4gICAgICAgICAgICB0ZW1wbGF0ZVBhcnNlZFByb3BlcnRpZXMsIHBhcnNlZFZhcmlhYmxlcyk7XG4gICAgICAgIHRlbXBsYXRlVmFyaWFibGVzLnB1c2goXG4gICAgICAgICAgICAuLi5wYXJzZWRWYXJpYWJsZXMubWFwKHYgPT4gbmV3IHQuVmFyaWFibGUodi5uYW1lLCB2LnZhbHVlLCB2LnNvdXJjZVNwYW4pKSk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICAvLyBDaGVjayBmb3IgdmFyaWFibGVzLCBldmVudHMsIHByb3BlcnR5IGJpbmRpbmdzLCBpbnRlcnBvbGF0aW9uXG4gICAgICAgIGhhc0JpbmRpbmcgPSB0aGlzLnBhcnNlQXR0cmlidXRlKFxuICAgICAgICAgICAgaXNUZW1wbGF0ZUVsZW1lbnQsIGF0dHJpYnV0ZSwgW10sIHBhcnNlZFByb3BlcnRpZXMsIGJvdW5kRXZlbnRzLCB2YXJpYWJsZXMsIHJlZmVyZW5jZXMpO1xuICAgICAgfVxuXG4gICAgICBpZiAoIWhhc0JpbmRpbmcgJiYgIWlzVGVtcGxhdGVCaW5kaW5nKSB7XG4gICAgICAgIC8vIGRvbid0IGluY2x1ZGUgdGhlIGJpbmRpbmdzIGFzIGF0dHJpYnV0ZXMgYXMgd2VsbCBpbiB0aGUgQVNUXG4gICAgICAgIGF0dHJpYnV0ZXMucHVzaCh0aGlzLnZpc2l0QXR0cmlidXRlKGF0dHJpYnV0ZSkgYXMgdC5UZXh0QXR0cmlidXRlKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICBjb25zdCBjaGlsZHJlbjogdC5Ob2RlW10gPVxuICAgICAgICBodG1sLnZpc2l0QWxsKHByZXBhcnNlZEVsZW1lbnQubm9uQmluZGFibGUgPyBOT05fQklOREFCTEVfVklTSVRPUiA6IHRoaXMsIGVsZW1lbnQuY2hpbGRyZW4pO1xuXG4gICAgbGV0IHBhcnNlZEVsZW1lbnQ6IHQuTm9kZXx1bmRlZmluZWQ7XG4gICAgaWYgKHByZXBhcnNlZEVsZW1lbnQudHlwZSA9PT0gUHJlcGFyc2VkRWxlbWVudFR5cGUuTkdfQ09OVEVOVCkge1xuICAgICAgLy8gYDxuZy1jb250ZW50PmBcbiAgICAgIGlmIChlbGVtZW50LmNoaWxkcmVuICYmXG4gICAgICAgICAgIWVsZW1lbnQuY2hpbGRyZW4uZXZlcnkoXG4gICAgICAgICAgICAgIChub2RlOiBodG1sLk5vZGUpID0+IGlzRW1wdHlUZXh0Tm9kZShub2RlKSB8fCBpc0NvbW1lbnROb2RlKG5vZGUpKSkge1xuICAgICAgICB0aGlzLnJlcG9ydEVycm9yKGA8bmctY29udGVudD4gZWxlbWVudCBjYW5ub3QgaGF2ZSBjb250ZW50LmAsIGVsZW1lbnQuc291cmNlU3Bhbik7XG4gICAgICB9XG4gICAgICBjb25zdCBzZWxlY3RvciA9IHByZXBhcnNlZEVsZW1lbnQuc2VsZWN0QXR0cjtcbiAgICAgIGNvbnN0IGF0dHJzOiB0LlRleHRBdHRyaWJ1dGVbXSA9IGVsZW1lbnQuYXR0cnMubWFwKGF0dHIgPT4gdGhpcy52aXNpdEF0dHJpYnV0ZShhdHRyKSk7XG4gICAgICBwYXJzZWRFbGVtZW50ID0gbmV3IHQuQ29udGVudChzZWxlY3RvciwgYXR0cnMsIGVsZW1lbnQuc291cmNlU3BhbiwgZWxlbWVudC5pMThuKTtcbiAgICB9IGVsc2UgaWYgKGlzVGVtcGxhdGVFbGVtZW50KSB7XG4gICAgICAvLyBgPG5nLXRlbXBsYXRlPmBcbiAgICAgIGNvbnN0IGF0dHJzID0gdGhpcy5leHRyYWN0QXR0cmlidXRlcyhlbGVtZW50Lm5hbWUsIHBhcnNlZFByb3BlcnRpZXMsIGkxOG5BdHRyc01ldGEpO1xuXG4gICAgICBwYXJzZWRFbGVtZW50ID0gbmV3IHQuVGVtcGxhdGUoXG4gICAgICAgICAgZWxlbWVudC5uYW1lLCBhdHRyaWJ1dGVzLCBhdHRycy5ib3VuZCwgYm91bmRFdmVudHMsIFsvKiBubyB0ZW1wbGF0ZSBhdHRyaWJ1dGVzICovXSxcbiAgICAgICAgICBjaGlsZHJlbiwgcmVmZXJlbmNlcywgdmFyaWFibGVzLCBlbGVtZW50LnNvdXJjZVNwYW4sIGVsZW1lbnQuc3RhcnRTb3VyY2VTcGFuLFxuICAgICAgICAgIGVsZW1lbnQuZW5kU291cmNlU3BhbiwgZWxlbWVudC5pMThuKTtcbiAgICB9IGVsc2Uge1xuICAgICAgY29uc3QgYXR0cnMgPSB0aGlzLmV4dHJhY3RBdHRyaWJ1dGVzKGVsZW1lbnQubmFtZSwgcGFyc2VkUHJvcGVydGllcywgaTE4bkF0dHJzTWV0YSk7XG4gICAgICBwYXJzZWRFbGVtZW50ID0gbmV3IHQuRWxlbWVudChcbiAgICAgICAgICBlbGVtZW50Lm5hbWUsIGF0dHJpYnV0ZXMsIGF0dHJzLmJvdW5kLCBib3VuZEV2ZW50cywgY2hpbGRyZW4sIHJlZmVyZW5jZXMsXG4gICAgICAgICAgZWxlbWVudC5zb3VyY2VTcGFuLCBlbGVtZW50LnN0YXJ0U291cmNlU3BhbiwgZWxlbWVudC5lbmRTb3VyY2VTcGFuLCBlbGVtZW50LmkxOG4pO1xuICAgIH1cblxuICAgIGlmIChlbGVtZW50SGFzSW5saW5lVGVtcGxhdGUpIHtcbiAgICAgIC8vIElmIHRoaXMgbm9kZSBpcyBhbiBpbmxpbmUtdGVtcGxhdGUgKGUuZy4gaGFzICpuZ0ZvcikgdGhlbiB3ZSBuZWVkIHRvIGNyZWF0ZSBhIHRlbXBsYXRlXG4gICAgICAvLyBub2RlIHRoYXQgY29udGFpbnMgdGhpcyBub2RlLlxuICAgICAgLy8gTW9yZW92ZXIsIGlmIHRoZSBub2RlIGlzIGFuIGVsZW1lbnQsIHRoZW4gd2UgbmVlZCB0byBob2lzdCBpdHMgYXR0cmlidXRlcyB0byB0aGUgdGVtcGxhdGVcbiAgICAgIC8vIG5vZGUgZm9yIG1hdGNoaW5nIGFnYWluc3QgY29udGVudCBwcm9qZWN0aW9uIHNlbGVjdG9ycy5cbiAgICAgIGNvbnN0IGF0dHJzID0gdGhpcy5leHRyYWN0QXR0cmlidXRlcygnbmctdGVtcGxhdGUnLCB0ZW1wbGF0ZVBhcnNlZFByb3BlcnRpZXMsIGkxOG5BdHRyc01ldGEpO1xuICAgICAgY29uc3QgdGVtcGxhdGVBdHRyczogKHQuVGV4dEF0dHJpYnV0ZSB8IHQuQm91bmRBdHRyaWJ1dGUpW10gPSBbXTtcbiAgICAgIGF0dHJzLmxpdGVyYWwuZm9yRWFjaChhdHRyID0+IHRlbXBsYXRlQXR0cnMucHVzaChhdHRyKSk7XG4gICAgICBhdHRycy5ib3VuZC5mb3JFYWNoKGF0dHIgPT4gdGVtcGxhdGVBdHRycy5wdXNoKGF0dHIpKTtcbiAgICAgIGNvbnN0IGhvaXN0ZWRBdHRycyA9IHBhcnNlZEVsZW1lbnQgaW5zdGFuY2VvZiB0LkVsZW1lbnQgP1xuICAgICAgICAgIHtcbiAgICAgICAgICAgIGF0dHJpYnV0ZXM6IHBhcnNlZEVsZW1lbnQuYXR0cmlidXRlcyxcbiAgICAgICAgICAgIGlucHV0czogcGFyc2VkRWxlbWVudC5pbnB1dHMsXG4gICAgICAgICAgICBvdXRwdXRzOiBwYXJzZWRFbGVtZW50Lm91dHB1dHMsXG4gICAgICAgICAgfSA6XG4gICAgICAgICAge2F0dHJpYnV0ZXM6IFtdLCBpbnB1dHM6IFtdLCBvdXRwdXRzOiBbXX07XG5cbiAgICAgIC8vIEZvciA8bmctdGVtcGxhdGU+cyB3aXRoIHN0cnVjdHVyYWwgZGlyZWN0aXZlcyBvbiB0aGVtLCBhdm9pZCBwYXNzaW5nIGkxOG4gaW5mb3JtYXRpb24gdG9cbiAgICAgIC8vIHRoZSB3cmFwcGluZyB0ZW1wbGF0ZSB0byBwcmV2ZW50IHVubmVjZXNzYXJ5IGkxOG4gaW5zdHJ1Y3Rpb25zIGZyb20gYmVpbmcgZ2VuZXJhdGVkLiBUaGVcbiAgICAgIC8vIG5lY2Vzc2FyeSBpMThuIG1ldGEgaW5mb3JtYXRpb24gd2lsbCBiZSBleHRyYWN0ZWQgZnJvbSBjaGlsZCBlbGVtZW50cy5cbiAgICAgIGNvbnN0IGkxOG4gPSBpc1RlbXBsYXRlRWxlbWVudCAmJiBpc0kxOG5Sb290RWxlbWVudCA/IHVuZGVmaW5lZCA6IGVsZW1lbnQuaTE4bjtcblxuICAgICAgLy8gVE9ETyhwayk6IHRlc3QgZm9yIHRoaXMgY2FzZVxuICAgICAgcGFyc2VkRWxlbWVudCA9IG5ldyB0LlRlbXBsYXRlKFxuICAgICAgICAgIChwYXJzZWRFbGVtZW50IGFzIHQuRWxlbWVudCkubmFtZSwgaG9pc3RlZEF0dHJzLmF0dHJpYnV0ZXMsIGhvaXN0ZWRBdHRycy5pbnB1dHMsXG4gICAgICAgICAgaG9pc3RlZEF0dHJzLm91dHB1dHMsIHRlbXBsYXRlQXR0cnMsIFtwYXJzZWRFbGVtZW50XSwgWy8qIG5vIHJlZmVyZW5jZXMgKi9dLFxuICAgICAgICAgIHRlbXBsYXRlVmFyaWFibGVzLCBlbGVtZW50LnNvdXJjZVNwYW4sIGVsZW1lbnQuc3RhcnRTb3VyY2VTcGFuLCBlbGVtZW50LmVuZFNvdXJjZVNwYW4sXG4gICAgICAgICAgaTE4bik7XG4gICAgfVxuICAgIGlmIChpc0kxOG5Sb290RWxlbWVudCkge1xuICAgICAgdGhpcy5pbkkxOG5CbG9jayA9IGZhbHNlO1xuICAgIH1cbiAgICByZXR1cm4gcGFyc2VkRWxlbWVudDtcbiAgfVxuXG4gIHZpc2l0QXR0cmlidXRlKGF0dHJpYnV0ZTogaHRtbC5BdHRyaWJ1dGUpOiB0LlRleHRBdHRyaWJ1dGUge1xuICAgIHJldHVybiBuZXcgdC5UZXh0QXR0cmlidXRlKFxuICAgICAgICBhdHRyaWJ1dGUubmFtZSwgYXR0cmlidXRlLnZhbHVlLCBhdHRyaWJ1dGUuc291cmNlU3BhbiwgYXR0cmlidXRlLnZhbHVlU3BhbiwgYXR0cmlidXRlLmkxOG4pO1xuICB9XG5cbiAgdmlzaXRUZXh0KHRleHQ6IGh0bWwuVGV4dCk6IHQuTm9kZSB7XG4gICAgcmV0dXJuIHRoaXMuX3Zpc2l0VGV4dFdpdGhJbnRlcnBvbGF0aW9uKHRleHQudmFsdWUsIHRleHQuc291cmNlU3BhbiwgdGV4dC5pMThuKTtcbiAgfVxuXG4gIHZpc2l0RXhwYW5zaW9uKGV4cGFuc2lvbjogaHRtbC5FeHBhbnNpb24pOiB0LkljdXxudWxsIHtcbiAgICBpZiAoIWV4cGFuc2lvbi5pMThuKSB7XG4gICAgICAvLyBkbyBub3QgZ2VuZXJhdGUgSWN1IGluIGNhc2UgaXQgd2FzIGNyZWF0ZWRcbiAgICAgIC8vIG91dHNpZGUgb2YgaTE4biBibG9jayBpbiBhIHRlbXBsYXRlXG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gICAgaWYgKCFpc0kxOG5Sb290Tm9kZShleHBhbnNpb24uaTE4bikpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICBgSW52YWxpZCB0eXBlIFwiJHtleHBhbnNpb24uaTE4bi5jb25zdHJ1Y3Rvcn1cIiBmb3IgXCJpMThuXCIgcHJvcGVydHkgb2YgJHtleHBhbnNpb24uc291cmNlU3Bhbi50b1N0cmluZygpfS4gRXhwZWN0ZWQgYSBcIk1lc3NhZ2VcImApO1xuICAgIH1cbiAgICBjb25zdCBtZXNzYWdlID0gZXhwYW5zaW9uLmkxOG47XG4gICAgY29uc3QgdmFyczoge1tuYW1lOiBzdHJpbmddOiB0LkJvdW5kVGV4dH0gPSB7fTtcbiAgICBjb25zdCBwbGFjZWhvbGRlcnM6IHtbbmFtZTogc3RyaW5nXTogdC5UZXh0IHwgdC5Cb3VuZFRleHR9ID0ge307XG4gICAgLy8gZXh0cmFjdCBWQVJzIGZyb20gSUNVcyAtIHdlIHByb2Nlc3MgdGhlbSBzZXBhcmF0ZWx5IHdoaWxlXG4gICAgLy8gYXNzZW1ibGluZyByZXN1bHRpbmcgbWVzc2FnZSB2aWEgZ29vZy5nZXRNc2cgZnVuY3Rpb24sIHNpbmNlXG4gICAgLy8gd2UgbmVlZCB0byBwYXNzIHRoZW0gdG8gdG9wLWxldmVsIGdvb2cuZ2V0TXNnIGNhbGxcbiAgICBPYmplY3Qua2V5cyhtZXNzYWdlLnBsYWNlaG9sZGVycykuZm9yRWFjaChrZXkgPT4ge1xuICAgICAgY29uc3QgdmFsdWUgPSBtZXNzYWdlLnBsYWNlaG9sZGVyc1trZXldO1xuICAgICAgaWYgKGtleS5zdGFydHNXaXRoKEkxOE5fSUNVX1ZBUl9QUkVGSVgpKSB7XG4gICAgICAgIGNvbnN0IGNvbmZpZyA9IHRoaXMuYmluZGluZ1BhcnNlci5pbnRlcnBvbGF0aW9uQ29uZmlnO1xuICAgICAgICAvLyBJQ1UgZXhwcmVzc2lvbiBpcyBhIHBsYWluIHN0cmluZywgbm90IHdyYXBwZWQgaW50byBzdGFydFxuICAgICAgICAvLyBhbmQgZW5kIHRhZ3MsIHNvIHdlIHdyYXAgaXQgYmVmb3JlIHBhc3NpbmcgdG8gYmluZGluZyBwYXJzZXJcbiAgICAgICAgY29uc3Qgd3JhcHBlZCA9IGAke2NvbmZpZy5zdGFydH0ke3ZhbHVlfSR7Y29uZmlnLmVuZH1gO1xuICAgICAgICB2YXJzW2tleV0gPSB0aGlzLl92aXNpdFRleHRXaXRoSW50ZXJwb2xhdGlvbih3cmFwcGVkLCBleHBhbnNpb24uc291cmNlU3BhbikgYXMgdC5Cb3VuZFRleHQ7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBwbGFjZWhvbGRlcnNba2V5XSA9IHRoaXMuX3Zpc2l0VGV4dFdpdGhJbnRlcnBvbGF0aW9uKHZhbHVlLCBleHBhbnNpb24uc291cmNlU3Bhbik7XG4gICAgICB9XG4gICAgfSk7XG4gICAgcmV0dXJuIG5ldyB0LkljdSh2YXJzLCBwbGFjZWhvbGRlcnMsIGV4cGFuc2lvbi5zb3VyY2VTcGFuLCBtZXNzYWdlKTtcbiAgfVxuXG4gIHZpc2l0RXhwYW5zaW9uQ2FzZShleHBhbnNpb25DYXNlOiBodG1sLkV4cGFuc2lvbkNhc2UpOiBudWxsIHsgcmV0dXJuIG51bGw7IH1cblxuICB2aXNpdENvbW1lbnQoY29tbWVudDogaHRtbC5Db21tZW50KTogbnVsbCB7IHJldHVybiBudWxsOyB9XG5cbiAgLy8gY29udmVydCB2aWV3IGVuZ2luZSBgUGFyc2VkUHJvcGVydHlgIHRvIGEgZm9ybWF0IHN1aXRhYmxlIGZvciBJVllcbiAgcHJpdmF0ZSBleHRyYWN0QXR0cmlidXRlcyhcbiAgICAgIGVsZW1lbnROYW1lOiBzdHJpbmcsIHByb3BlcnRpZXM6IFBhcnNlZFByb3BlcnR5W10sXG4gICAgICBpMThuUHJvcHNNZXRhOiB7W2tleTogc3RyaW5nXTogaTE4bi5JMThuTWV0YX0pOlxuICAgICAge2JvdW5kOiB0LkJvdW5kQXR0cmlidXRlW10sIGxpdGVyYWw6IHQuVGV4dEF0dHJpYnV0ZVtdfSB7XG4gICAgY29uc3QgYm91bmQ6IHQuQm91bmRBdHRyaWJ1dGVbXSA9IFtdO1xuICAgIGNvbnN0IGxpdGVyYWw6IHQuVGV4dEF0dHJpYnV0ZVtdID0gW107XG5cbiAgICBwcm9wZXJ0aWVzLmZvckVhY2gocHJvcCA9PiB7XG4gICAgICBjb25zdCBpMThuID0gaTE4blByb3BzTWV0YVtwcm9wLm5hbWVdO1xuICAgICAgaWYgKHByb3AuaXNMaXRlcmFsKSB7XG4gICAgICAgIGxpdGVyYWwucHVzaChuZXcgdC5UZXh0QXR0cmlidXRlKFxuICAgICAgICAgICAgcHJvcC5uYW1lLCBwcm9wLmV4cHJlc3Npb24uc291cmNlIHx8ICcnLCBwcm9wLnNvdXJjZVNwYW4sIHVuZGVmaW5lZCwgaTE4bikpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgLy8gTm90ZSB0aGF0IHZhbGlkYXRpb24gaXMgc2tpcHBlZCBhbmQgcHJvcGVydHkgbWFwcGluZyBpcyBkaXNhYmxlZFxuICAgICAgICAvLyBkdWUgdG8gdGhlIGZhY3QgdGhhdCB3ZSBuZWVkIHRvIG1ha2Ugc3VyZSBhIGdpdmVuIHByb3AgaXMgbm90IGFuXG4gICAgICAgIC8vIGlucHV0IG9mIGEgZGlyZWN0aXZlIGFuZCBkaXJlY3RpdmUgbWF0Y2hpbmcgaGFwcGVucyBhdCBydW50aW1lLlxuICAgICAgICBjb25zdCBiZXAgPSB0aGlzLmJpbmRpbmdQYXJzZXIuY3JlYXRlQm91bmRFbGVtZW50UHJvcGVydHkoXG4gICAgICAgICAgICBlbGVtZW50TmFtZSwgcHJvcCwgLyogc2tpcFZhbGlkYXRpb24gKi8gdHJ1ZSwgLyogbWFwUHJvcGVydHlOYW1lICovIGZhbHNlKTtcbiAgICAgICAgYm91bmQucHVzaCh0LkJvdW5kQXR0cmlidXRlLmZyb21Cb3VuZEVsZW1lbnRQcm9wZXJ0eShiZXAsIGkxOG4pKTtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIHJldHVybiB7Ym91bmQsIGxpdGVyYWx9O1xuICB9XG5cbiAgcHJpdmF0ZSBwYXJzZUF0dHJpYnV0ZShcbiAgICAgIGlzVGVtcGxhdGVFbGVtZW50OiBib29sZWFuLCBhdHRyaWJ1dGU6IGh0bWwuQXR0cmlidXRlLCBtYXRjaGFibGVBdHRyaWJ1dGVzOiBzdHJpbmdbXVtdLFxuICAgICAgcGFyc2VkUHJvcGVydGllczogUGFyc2VkUHJvcGVydHlbXSwgYm91bmRFdmVudHM6IHQuQm91bmRFdmVudFtdLCB2YXJpYWJsZXM6IHQuVmFyaWFibGVbXSxcbiAgICAgIHJlZmVyZW5jZXM6IHQuUmVmZXJlbmNlW10pIHtcbiAgICBjb25zdCBuYW1lID0gbm9ybWFsaXplQXR0cmlidXRlTmFtZShhdHRyaWJ1dGUubmFtZSk7XG4gICAgY29uc3QgdmFsdWUgPSBhdHRyaWJ1dGUudmFsdWU7XG4gICAgY29uc3Qgc3JjU3BhbiA9IGF0dHJpYnV0ZS5zb3VyY2VTcGFuO1xuICAgIGNvbnN0IGFic29sdXRlT2Zmc2V0ID1cbiAgICAgICAgYXR0cmlidXRlLnZhbHVlU3BhbiA/IGF0dHJpYnV0ZS52YWx1ZVNwYW4uc3RhcnQub2Zmc2V0IDogc3JjU3Bhbi5zdGFydC5vZmZzZXQ7XG5cbiAgICBjb25zdCBiaW5kUGFydHMgPSBuYW1lLm1hdGNoKEJJTkRfTkFNRV9SRUdFWFApO1xuICAgIGxldCBoYXNCaW5kaW5nID0gZmFsc2U7XG5cbiAgICBpZiAoYmluZFBhcnRzKSB7XG4gICAgICBoYXNCaW5kaW5nID0gdHJ1ZTtcbiAgICAgIGlmIChiaW5kUGFydHNbS1dfQklORF9JRFhdICE9IG51bGwpIHtcbiAgICAgICAgdGhpcy5iaW5kaW5nUGFyc2VyLnBhcnNlUHJvcGVydHlCaW5kaW5nKFxuICAgICAgICAgICAgYmluZFBhcnRzW0lERU5UX0tXX0lEWF0sIHZhbHVlLCBmYWxzZSwgc3JjU3BhbiwgYWJzb2x1dGVPZmZzZXQsIGF0dHJpYnV0ZS52YWx1ZVNwYW4sXG4gICAgICAgICAgICBtYXRjaGFibGVBdHRyaWJ1dGVzLCBwYXJzZWRQcm9wZXJ0aWVzKTtcblxuICAgICAgfSBlbHNlIGlmIChiaW5kUGFydHNbS1dfTEVUX0lEWF0pIHtcbiAgICAgICAgaWYgKGlzVGVtcGxhdGVFbGVtZW50KSB7XG4gICAgICAgICAgY29uc3QgaWRlbnRpZmllciA9IGJpbmRQYXJ0c1tJREVOVF9LV19JRFhdO1xuICAgICAgICAgIHRoaXMucGFyc2VWYXJpYWJsZShpZGVudGlmaWVyLCB2YWx1ZSwgc3JjU3BhbiwgYXR0cmlidXRlLnZhbHVlU3BhbiwgdmFyaWFibGVzKTtcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICB0aGlzLnJlcG9ydEVycm9yKGBcImxldC1cIiBpcyBvbmx5IHN1cHBvcnRlZCBvbiBuZy10ZW1wbGF0ZSBlbGVtZW50cy5gLCBzcmNTcGFuKTtcbiAgICAgICAgfVxuXG4gICAgICB9IGVsc2UgaWYgKGJpbmRQYXJ0c1tLV19SRUZfSURYXSkge1xuICAgICAgICBjb25zdCBpZGVudGlmaWVyID0gYmluZFBhcnRzW0lERU5UX0tXX0lEWF07XG4gICAgICAgIHRoaXMucGFyc2VSZWZlcmVuY2UoaWRlbnRpZmllciwgdmFsdWUsIHNyY1NwYW4sIGF0dHJpYnV0ZS52YWx1ZVNwYW4sIHJlZmVyZW5jZXMpO1xuXG4gICAgICB9IGVsc2UgaWYgKGJpbmRQYXJ0c1tLV19PTl9JRFhdKSB7XG4gICAgICAgIGNvbnN0IGV2ZW50czogUGFyc2VkRXZlbnRbXSA9IFtdO1xuICAgICAgICB0aGlzLmJpbmRpbmdQYXJzZXIucGFyc2VFdmVudChcbiAgICAgICAgICAgIGJpbmRQYXJ0c1tJREVOVF9LV19JRFhdLCB2YWx1ZSwgc3JjU3BhbiwgYXR0cmlidXRlLnZhbHVlU3BhbiB8fCBzcmNTcGFuLFxuICAgICAgICAgICAgbWF0Y2hhYmxlQXR0cmlidXRlcywgZXZlbnRzKTtcbiAgICAgICAgYWRkRXZlbnRzKGV2ZW50cywgYm91bmRFdmVudHMpO1xuICAgICAgfSBlbHNlIGlmIChiaW5kUGFydHNbS1dfQklORE9OX0lEWF0pIHtcbiAgICAgICAgdGhpcy5iaW5kaW5nUGFyc2VyLnBhcnNlUHJvcGVydHlCaW5kaW5nKFxuICAgICAgICAgICAgYmluZFBhcnRzW0lERU5UX0tXX0lEWF0sIHZhbHVlLCBmYWxzZSwgc3JjU3BhbiwgYWJzb2x1dGVPZmZzZXQsIGF0dHJpYnV0ZS52YWx1ZVNwYW4sXG4gICAgICAgICAgICBtYXRjaGFibGVBdHRyaWJ1dGVzLCBwYXJzZWRQcm9wZXJ0aWVzKTtcbiAgICAgICAgdGhpcy5wYXJzZUFzc2lnbm1lbnRFdmVudChcbiAgICAgICAgICAgIGJpbmRQYXJ0c1tJREVOVF9LV19JRFhdLCB2YWx1ZSwgc3JjU3BhbiwgYXR0cmlidXRlLnZhbHVlU3BhbiwgbWF0Y2hhYmxlQXR0cmlidXRlcyxcbiAgICAgICAgICAgIGJvdW5kRXZlbnRzKTtcbiAgICAgIH0gZWxzZSBpZiAoYmluZFBhcnRzW0tXX0FUX0lEWF0pIHtcbiAgICAgICAgdGhpcy5iaW5kaW5nUGFyc2VyLnBhcnNlTGl0ZXJhbEF0dHIoXG4gICAgICAgICAgICBuYW1lLCB2YWx1ZSwgc3JjU3BhbiwgYWJzb2x1dGVPZmZzZXQsIGF0dHJpYnV0ZS52YWx1ZVNwYW4sIG1hdGNoYWJsZUF0dHJpYnV0ZXMsXG4gICAgICAgICAgICBwYXJzZWRQcm9wZXJ0aWVzKTtcblxuICAgICAgfSBlbHNlIGlmIChiaW5kUGFydHNbSURFTlRfQkFOQU5BX0JPWF9JRFhdKSB7XG4gICAgICAgIHRoaXMuYmluZGluZ1BhcnNlci5wYXJzZVByb3BlcnR5QmluZGluZyhcbiAgICAgICAgICAgIGJpbmRQYXJ0c1tJREVOVF9CQU5BTkFfQk9YX0lEWF0sIHZhbHVlLCBmYWxzZSwgc3JjU3BhbiwgYWJzb2x1dGVPZmZzZXQsXG4gICAgICAgICAgICBhdHRyaWJ1dGUudmFsdWVTcGFuLCBtYXRjaGFibGVBdHRyaWJ1dGVzLCBwYXJzZWRQcm9wZXJ0aWVzKTtcbiAgICAgICAgdGhpcy5wYXJzZUFzc2lnbm1lbnRFdmVudChcbiAgICAgICAgICAgIGJpbmRQYXJ0c1tJREVOVF9CQU5BTkFfQk9YX0lEWF0sIHZhbHVlLCBzcmNTcGFuLCBhdHRyaWJ1dGUudmFsdWVTcGFuLFxuICAgICAgICAgICAgbWF0Y2hhYmxlQXR0cmlidXRlcywgYm91bmRFdmVudHMpO1xuXG4gICAgICB9IGVsc2UgaWYgKGJpbmRQYXJ0c1tJREVOVF9QUk9QRVJUWV9JRFhdKSB7XG4gICAgICAgIHRoaXMuYmluZGluZ1BhcnNlci5wYXJzZVByb3BlcnR5QmluZGluZyhcbiAgICAgICAgICAgIGJpbmRQYXJ0c1tJREVOVF9QUk9QRVJUWV9JRFhdLCB2YWx1ZSwgZmFsc2UsIHNyY1NwYW4sIGFic29sdXRlT2Zmc2V0LFxuICAgICAgICAgICAgYXR0cmlidXRlLnZhbHVlU3BhbiwgbWF0Y2hhYmxlQXR0cmlidXRlcywgcGFyc2VkUHJvcGVydGllcyk7XG5cbiAgICAgIH0gZWxzZSBpZiAoYmluZFBhcnRzW0lERU5UX0VWRU5UX0lEWF0pIHtcbiAgICAgICAgY29uc3QgZXZlbnRzOiBQYXJzZWRFdmVudFtdID0gW107XG4gICAgICAgIHRoaXMuYmluZGluZ1BhcnNlci5wYXJzZUV2ZW50KFxuICAgICAgICAgICAgYmluZFBhcnRzW0lERU5UX0VWRU5UX0lEWF0sIHZhbHVlLCBzcmNTcGFuLCBhdHRyaWJ1dGUudmFsdWVTcGFuIHx8IHNyY1NwYW4sXG4gICAgICAgICAgICBtYXRjaGFibGVBdHRyaWJ1dGVzLCBldmVudHMpO1xuICAgICAgICBhZGRFdmVudHMoZXZlbnRzLCBib3VuZEV2ZW50cyk7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIGhhc0JpbmRpbmcgPSB0aGlzLmJpbmRpbmdQYXJzZXIucGFyc2VQcm9wZXJ0eUludGVycG9sYXRpb24oXG4gICAgICAgICAgbmFtZSwgdmFsdWUsIHNyY1NwYW4sIGF0dHJpYnV0ZS52YWx1ZVNwYW4sIG1hdGNoYWJsZUF0dHJpYnV0ZXMsIHBhcnNlZFByb3BlcnRpZXMpO1xuICAgIH1cblxuICAgIHJldHVybiBoYXNCaW5kaW5nO1xuICB9XG5cbiAgcHJpdmF0ZSBfdmlzaXRUZXh0V2l0aEludGVycG9sYXRpb24oXG4gICAgICB2YWx1ZTogc3RyaW5nLCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIGkxOG4/OiBpMThuLkkxOG5NZXRhKTogdC5UZXh0fHQuQm91bmRUZXh0IHtcbiAgICBjb25zdCB2YWx1ZU5vTmdzcCA9IHJlcGxhY2VOZ3NwKHZhbHVlKTtcbiAgICBjb25zdCBleHByID0gdGhpcy5iaW5kaW5nUGFyc2VyLnBhcnNlSW50ZXJwb2xhdGlvbih2YWx1ZU5vTmdzcCwgc291cmNlU3Bhbik7XG4gICAgcmV0dXJuIGV4cHIgPyBuZXcgdC5Cb3VuZFRleHQoZXhwciwgc291cmNlU3BhbiwgaTE4bikgOiBuZXcgdC5UZXh0KHZhbHVlTm9OZ3NwLCBzb3VyY2VTcGFuKTtcbiAgfVxuXG4gIHByaXZhdGUgcGFyc2VWYXJpYWJsZShcbiAgICAgIGlkZW50aWZpZXI6IHN0cmluZywgdmFsdWU6IHN0cmluZywgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgdmFsdWVTcGFuOiBQYXJzZVNvdXJjZVNwYW58dW5kZWZpbmVkLCB2YXJpYWJsZXM6IHQuVmFyaWFibGVbXSkge1xuICAgIGlmIChpZGVudGlmaWVyLmluZGV4T2YoJy0nKSA+IC0xKSB7XG4gICAgICB0aGlzLnJlcG9ydEVycm9yKGBcIi1cIiBpcyBub3QgYWxsb3dlZCBpbiB2YXJpYWJsZSBuYW1lc2AsIHNvdXJjZVNwYW4pO1xuICAgIH1cbiAgICB2YXJpYWJsZXMucHVzaChuZXcgdC5WYXJpYWJsZShpZGVudGlmaWVyLCB2YWx1ZSwgc291cmNlU3BhbiwgdmFsdWVTcGFuKSk7XG4gIH1cblxuICBwcml2YXRlIHBhcnNlUmVmZXJlbmNlKFxuICAgICAgaWRlbnRpZmllcjogc3RyaW5nLCB2YWx1ZTogc3RyaW5nLCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sXG4gICAgICB2YWx1ZVNwYW46IFBhcnNlU291cmNlU3Bhbnx1bmRlZmluZWQsIHJlZmVyZW5jZXM6IHQuUmVmZXJlbmNlW10pIHtcbiAgICBpZiAoaWRlbnRpZmllci5pbmRleE9mKCctJykgPiAtMSkge1xuICAgICAgdGhpcy5yZXBvcnRFcnJvcihgXCItXCIgaXMgbm90IGFsbG93ZWQgaW4gcmVmZXJlbmNlIG5hbWVzYCwgc291cmNlU3Bhbik7XG4gICAgfVxuXG4gICAgcmVmZXJlbmNlcy5wdXNoKG5ldyB0LlJlZmVyZW5jZShpZGVudGlmaWVyLCB2YWx1ZSwgc291cmNlU3BhbiwgdmFsdWVTcGFuKSk7XG4gIH1cblxuICBwcml2YXRlIHBhcnNlQXNzaWdubWVudEV2ZW50KFxuICAgICAgbmFtZTogc3RyaW5nLCBleHByZXNzaW9uOiBzdHJpbmcsIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbixcbiAgICAgIHZhbHVlU3BhbjogUGFyc2VTb3VyY2VTcGFufHVuZGVmaW5lZCwgdGFyZ2V0TWF0Y2hhYmxlQXR0cnM6IHN0cmluZ1tdW10sXG4gICAgICBib3VuZEV2ZW50czogdC5Cb3VuZEV2ZW50W10pIHtcbiAgICBjb25zdCBldmVudHM6IFBhcnNlZEV2ZW50W10gPSBbXTtcbiAgICB0aGlzLmJpbmRpbmdQYXJzZXIucGFyc2VFdmVudChcbiAgICAgICAgYCR7bmFtZX1DaGFuZ2VgLCBgJHtleHByZXNzaW9ufT0kZXZlbnRgLCBzb3VyY2VTcGFuLCB2YWx1ZVNwYW4gfHwgc291cmNlU3BhbixcbiAgICAgICAgdGFyZ2V0TWF0Y2hhYmxlQXR0cnMsIGV2ZW50cyk7XG4gICAgYWRkRXZlbnRzKGV2ZW50cywgYm91bmRFdmVudHMpO1xuICB9XG5cbiAgcHJpdmF0ZSByZXBvcnRFcnJvcihcbiAgICAgIG1lc3NhZ2U6IHN0cmluZywgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgbGV2ZWw6IFBhcnNlRXJyb3JMZXZlbCA9IFBhcnNlRXJyb3JMZXZlbC5FUlJPUikge1xuICAgIHRoaXMuZXJyb3JzLnB1c2gobmV3IFBhcnNlRXJyb3Ioc291cmNlU3BhbiwgbWVzc2FnZSwgbGV2ZWwpKTtcbiAgfVxufVxuXG5jbGFzcyBOb25CaW5kYWJsZVZpc2l0b3IgaW1wbGVtZW50cyBodG1sLlZpc2l0b3Ige1xuICB2aXNpdEVsZW1lbnQoYXN0OiBodG1sLkVsZW1lbnQpOiB0LkVsZW1lbnR8bnVsbCB7XG4gICAgY29uc3QgcHJlcGFyc2VkRWxlbWVudCA9IHByZXBhcnNlRWxlbWVudChhc3QpO1xuICAgIGlmIChwcmVwYXJzZWRFbGVtZW50LnR5cGUgPT09IFByZXBhcnNlZEVsZW1lbnRUeXBlLlNDUklQVCB8fFxuICAgICAgICBwcmVwYXJzZWRFbGVtZW50LnR5cGUgPT09IFByZXBhcnNlZEVsZW1lbnRUeXBlLlNUWUxFIHx8XG4gICAgICAgIHByZXBhcnNlZEVsZW1lbnQudHlwZSA9PT0gUHJlcGFyc2VkRWxlbWVudFR5cGUuU1RZTEVTSEVFVCkge1xuICAgICAgLy8gU2tpcHBpbmcgPHNjcmlwdD4gZm9yIHNlY3VyaXR5IHJlYXNvbnNcbiAgICAgIC8vIFNraXBwaW5nIDxzdHlsZT4gYW5kIHN0eWxlc2hlZXRzIGFzIHdlIGFscmVhZHkgcHJvY2Vzc2VkIHRoZW1cbiAgICAgIC8vIGluIHRoZSBTdHlsZUNvbXBpbGVyXG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICBjb25zdCBjaGlsZHJlbjogdC5Ob2RlW10gPSBodG1sLnZpc2l0QWxsKHRoaXMsIGFzdC5jaGlsZHJlbiwgbnVsbCk7XG4gICAgcmV0dXJuIG5ldyB0LkVsZW1lbnQoXG4gICAgICAgIGFzdC5uYW1lLCBodG1sLnZpc2l0QWxsKHRoaXMsIGFzdC5hdHRycykgYXMgdC5UZXh0QXR0cmlidXRlW10sXG4gICAgICAgIC8qIGlucHV0cyAqL1tdLCAvKiBvdXRwdXRzICovW10sIGNoaWxkcmVuLMKgIC8qIHJlZmVyZW5jZXMgKi9bXSwgYXN0LnNvdXJjZVNwYW4sXG4gICAgICAgIGFzdC5zdGFydFNvdXJjZVNwYW4sIGFzdC5lbmRTb3VyY2VTcGFuKTtcbiAgfVxuXG4gIHZpc2l0Q29tbWVudChjb21tZW50OiBodG1sLkNvbW1lbnQpOiBhbnkgeyByZXR1cm4gbnVsbDsgfVxuXG4gIHZpc2l0QXR0cmlidXRlKGF0dHJpYnV0ZTogaHRtbC5BdHRyaWJ1dGUpOiB0LlRleHRBdHRyaWJ1dGUge1xuICAgIHJldHVybiBuZXcgdC5UZXh0QXR0cmlidXRlKFxuICAgICAgICBhdHRyaWJ1dGUubmFtZSwgYXR0cmlidXRlLnZhbHVlLCBhdHRyaWJ1dGUuc291cmNlU3BhbiwgdW5kZWZpbmVkLCBhdHRyaWJ1dGUuaTE4bik7XG4gIH1cblxuICB2aXNpdFRleHQodGV4dDogaHRtbC5UZXh0KTogdC5UZXh0IHsgcmV0dXJuIG5ldyB0LlRleHQodGV4dC52YWx1ZSwgdGV4dC5zb3VyY2VTcGFuKTsgfVxuXG4gIHZpc2l0RXhwYW5zaW9uKGV4cGFuc2lvbjogaHRtbC5FeHBhbnNpb24pOiBhbnkgeyByZXR1cm4gbnVsbDsgfVxuXG4gIHZpc2l0RXhwYW5zaW9uQ2FzZShleHBhbnNpb25DYXNlOiBodG1sLkV4cGFuc2lvbkNhc2UpOiBhbnkgeyByZXR1cm4gbnVsbDsgfVxufVxuXG5jb25zdCBOT05fQklOREFCTEVfVklTSVRPUiA9IG5ldyBOb25CaW5kYWJsZVZpc2l0b3IoKTtcblxuZnVuY3Rpb24gbm9ybWFsaXplQXR0cmlidXRlTmFtZShhdHRyTmFtZTogc3RyaW5nKTogc3RyaW5nIHtcbiAgcmV0dXJuIC9eZGF0YS0vaS50ZXN0KGF0dHJOYW1lKSA/IGF0dHJOYW1lLnN1YnN0cmluZyg1KSA6IGF0dHJOYW1lO1xufVxuXG5mdW5jdGlvbiBhZGRFdmVudHMoZXZlbnRzOiBQYXJzZWRFdmVudFtdLCBib3VuZEV2ZW50czogdC5Cb3VuZEV2ZW50W10pIHtcbiAgYm91bmRFdmVudHMucHVzaCguLi5ldmVudHMubWFwKGUgPT4gdC5Cb3VuZEV2ZW50LmZyb21QYXJzZWRFdmVudChlKSkpO1xufVxuXG5mdW5jdGlvbiBpc0VtcHR5VGV4dE5vZGUobm9kZTogaHRtbC5Ob2RlKTogYm9vbGVhbiB7XG4gIHJldHVybiBub2RlIGluc3RhbmNlb2YgaHRtbC5UZXh0ICYmIG5vZGUudmFsdWUudHJpbSgpLmxlbmd0aCA9PSAwO1xufVxuXG5mdW5jdGlvbiBpc0NvbW1lbnROb2RlKG5vZGU6IGh0bWwuTm9kZSk6IGJvb2xlYW4ge1xuICByZXR1cm4gbm9kZSBpbnN0YW5jZW9mIGh0bWwuQ29tbWVudDtcbn1cblxuZnVuY3Rpb24gdGV4dENvbnRlbnRzKG5vZGU6IGh0bWwuRWxlbWVudCk6IHN0cmluZ3xudWxsIHtcbiAgaWYgKG5vZGUuY2hpbGRyZW4ubGVuZ3RoICE9PSAxIHx8ICEobm9kZS5jaGlsZHJlblswXSBpbnN0YW5jZW9mIGh0bWwuVGV4dCkpIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gKG5vZGUuY2hpbGRyZW5bMF0gYXMgaHRtbC5UZXh0KS52YWx1ZTtcbiAgfVxufVxuIl19