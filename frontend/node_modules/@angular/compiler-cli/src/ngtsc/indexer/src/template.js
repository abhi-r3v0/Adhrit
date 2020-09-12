(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/src/ngtsc/indexer/src/template", ["require", "exports", "tslib", "@angular/compiler", "@angular/compiler-cli/src/ngtsc/indexer/src/api"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.getTemplateIdentifiers = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var compiler_1 = require("@angular/compiler");
    var api_1 = require("@angular/compiler-cli/src/ngtsc/indexer/src/api");
    /**
     * Visits the AST of an Angular template syntax expression, finding interesting
     * entities (variable references, etc.). Creates an array of Entities found in
     * the expression, with the location of the Entities being relative to the
     * expression.
     *
     * Visiting `text {{prop}}` will return
     * `[TopLevelIdentifier {name: 'prop', span: {start: 7, end: 11}}]`.
     */
    var ExpressionVisitor = /** @class */ (function (_super) {
        tslib_1.__extends(ExpressionVisitor, _super);
        function ExpressionVisitor(expressionStr, absoluteOffset, boundTemplate, targetToIdentifier) {
            var _this = _super.call(this) || this;
            _this.expressionStr = expressionStr;
            _this.absoluteOffset = absoluteOffset;
            _this.boundTemplate = boundTemplate;
            _this.targetToIdentifier = targetToIdentifier;
            _this.identifiers = [];
            return _this;
        }
        /**
         * Returns identifiers discovered in an expression.
         *
         * @param ast expression AST to visit
         * @param source expression AST source code
         * @param absoluteOffset absolute byte offset from start of the file to the start of the AST
         * source code.
         * @param boundTemplate bound target of the entire template, which can be used to query for the
         * entities expressions target.
         * @param targetToIdentifier closure converting a template target node to its identifier.
         */
        ExpressionVisitor.getIdentifiers = function (ast, source, absoluteOffset, boundTemplate, targetToIdentifier) {
            var visitor = new ExpressionVisitor(source, absoluteOffset, boundTemplate, targetToIdentifier);
            visitor.visit(ast);
            return visitor.identifiers;
        };
        ExpressionVisitor.prototype.visit = function (ast) {
            ast.visit(this);
        };
        ExpressionVisitor.prototype.visitMethodCall = function (ast, context) {
            this.visitIdentifier(ast, api_1.IdentifierKind.Method);
            _super.prototype.visitMethodCall.call(this, ast, context);
        };
        ExpressionVisitor.prototype.visitPropertyRead = function (ast, context) {
            this.visitIdentifier(ast, api_1.IdentifierKind.Property);
            _super.prototype.visitPropertyRead.call(this, ast, context);
        };
        ExpressionVisitor.prototype.visitPropertyWrite = function (ast, context) {
            this.visitIdentifier(ast, api_1.IdentifierKind.Property);
            _super.prototype.visitPropertyWrite.call(this, ast, context);
        };
        /**
         * Visits an identifier, adding it to the identifier store if it is useful for indexing.
         *
         * @param ast expression AST the identifier is in
         * @param kind identifier kind
         */
        ExpressionVisitor.prototype.visitIdentifier = function (ast, kind) {
            // The definition of a non-top-level property such as `bar` in `{{foo.bar}}` is currently
            // impossible to determine by an indexer and unsupported by the indexing module.
            // The indexing module also does not currently support references to identifiers declared in the
            // template itself, which have a non-null expression target.
            if (!(ast.receiver instanceof compiler_1.ImplicitReceiver)) {
                return;
            }
            // Get the location of the identifier of real interest.
            // The compiler's expression parser records the location of some expressions in a manner not
            // useful to the indexer. For example, a `MethodCall` `foo(a, b)` will record the span of the
            // entire method call, but the indexer is interested only in the method identifier.
            var localExpression = this.expressionStr.substr(ast.span.start);
            if (!localExpression.includes(ast.name)) {
                throw new Error("Impossible state: \"" + ast.name + "\" not found in \"" + localExpression + "\"");
            }
            var identifierStart = ast.span.start + localExpression.indexOf(ast.name);
            // Join the relative position of the expression within a node with the absolute position
            // of the node to get the absolute position of the expression in the source code.
            var absoluteStart = this.absoluteOffset + identifierStart;
            var span = new api_1.AbsoluteSourceSpan(absoluteStart, absoluteStart + ast.name.length);
            var targetAst = this.boundTemplate.getExpressionTarget(ast);
            var target = targetAst ? this.targetToIdentifier(targetAst) : null;
            var identifier = {
                name: ast.name,
                span: span,
                kind: kind,
                target: target,
            };
            this.identifiers.push(identifier);
        };
        return ExpressionVisitor;
    }(compiler_1.RecursiveAstVisitor));
    /**
     * Visits the AST of a parsed Angular template. Discovers and stores
     * identifiers of interest, deferring to an `ExpressionVisitor` as needed.
     */
    var TemplateVisitor = /** @class */ (function (_super) {
        tslib_1.__extends(TemplateVisitor, _super);
        /**
         * Creates a template visitor for a bound template target. The bound target can be used when
         * deferred to the expression visitor to get information about the target of an expression.
         *
         * @param boundTemplate bound template target
         */
        function TemplateVisitor(boundTemplate) {
            var _this = _super.call(this) || this;
            _this.boundTemplate = boundTemplate;
            // Identifiers of interest found in the template.
            _this.identifiers = new Set();
            // Map of targets in a template to their identifiers.
            _this.targetIdentifierCache = new Map();
            // Map of elements and templates to their identifiers.
            _this.elementAndTemplateIdentifierCache = new Map();
            return _this;
        }
        /**
         * Visits a node in the template.
         *
         * @param node node to visit
         */
        TemplateVisitor.prototype.visit = function (node) {
            node.visit(this);
        };
        TemplateVisitor.prototype.visitAll = function (nodes) {
            var _this = this;
            nodes.forEach(function (node) { return _this.visit(node); });
        };
        /**
         * Add an identifier for an HTML element and visit its children recursively.
         *
         * @param element
         */
        TemplateVisitor.prototype.visitElement = function (element) {
            var elementIdentifier = this.elementOrTemplateToIdentifier(element);
            this.identifiers.add(elementIdentifier);
            this.visitAll(element.references);
            this.visitAll(element.inputs);
            this.visitAll(element.attributes);
            this.visitAll(element.children);
            this.visitAll(element.outputs);
        };
        TemplateVisitor.prototype.visitTemplate = function (template) {
            var templateIdentifier = this.elementOrTemplateToIdentifier(template);
            this.identifiers.add(templateIdentifier);
            this.visitAll(template.variables);
            this.visitAll(template.attributes);
            this.visitAll(template.templateAttrs);
            this.visitAll(template.children);
            this.visitAll(template.references);
        };
        TemplateVisitor.prototype.visitBoundAttribute = function (attribute) {
            var _this = this;
            // A BoundAttribute's value (the parent AST) may have subexpressions (children ASTs) that have
            // recorded spans extending past the recorded span of the parent. The most common example of
            // this is with `*ngFor`.
            // To resolve this, use the information on the BoundAttribute Template AST, which is always
            // correct, to determine locations of identifiers in the expression.
            //
            // TODO(ayazhafiz): Remove this when https://github.com/angular/angular/pull/31813 lands.
            var attributeSrc = attribute.sourceSpan.toString();
            var attributeAbsolutePosition = attribute.sourceSpan.start.offset;
            // Skip the bytes of the attribute name so that there are no collisions between the attribute
            // name and expression identifier names later.
            var nameSkipOffet = attributeSrc.indexOf(attribute.name) + attribute.name.length;
            var expressionSrc = attributeSrc.substring(nameSkipOffet);
            var expressionAbsolutePosition = attributeAbsolutePosition + nameSkipOffet;
            var identifiers = ExpressionVisitor.getIdentifiers(attribute.value, expressionSrc, expressionAbsolutePosition, this.boundTemplate, this.targetToIdentifier.bind(this));
            identifiers.forEach(function (id) { return _this.identifiers.add(id); });
        };
        TemplateVisitor.prototype.visitBoundEvent = function (attribute) {
            this.visitExpression(attribute.handler);
        };
        TemplateVisitor.prototype.visitBoundText = function (text) {
            this.visitExpression(text.value);
        };
        TemplateVisitor.prototype.visitReference = function (reference) {
            var referenceIdentifer = this.targetToIdentifier(reference);
            this.identifiers.add(referenceIdentifer);
        };
        TemplateVisitor.prototype.visitVariable = function (variable) {
            var variableIdentifier = this.targetToIdentifier(variable);
            this.identifiers.add(variableIdentifier);
        };
        /** Creates an identifier for a template element or template node. */
        TemplateVisitor.prototype.elementOrTemplateToIdentifier = function (node) {
            // If this node has already been seen, return the cached result.
            if (this.elementAndTemplateIdentifierCache.has(node)) {
                return this.elementAndTemplateIdentifierCache.get(node);
            }
            var name;
            var kind;
            if (node instanceof compiler_1.TmplAstTemplate) {
                name = node.tagName;
                kind = api_1.IdentifierKind.Template;
            }
            else {
                name = node.name;
                kind = api_1.IdentifierKind.Element;
            }
            var sourceSpan = node.sourceSpan;
            // An element's or template's source span can be of the form `<element>`, `<element />`, or
            // `<element></element>`. Only the selector is interesting to the indexer, so the source is
            // searched for the first occurrence of the element (selector) name.
            var start = this.getStartLocation(name, sourceSpan);
            var absoluteSpan = new api_1.AbsoluteSourceSpan(start, start + name.length);
            // Record the nodes's attributes, which an indexer can later traverse to see if any of them
            // specify a used directive on the node.
            var attributes = node.attributes.map(function (_a) {
                var name = _a.name, sourceSpan = _a.sourceSpan;
                return {
                    name: name,
                    span: new api_1.AbsoluteSourceSpan(sourceSpan.start.offset, sourceSpan.end.offset),
                    kind: api_1.IdentifierKind.Attribute,
                };
            });
            var usedDirectives = this.boundTemplate.getDirectivesOfNode(node) || [];
            var identifier = {
                name: name,
                span: absoluteSpan,
                kind: kind,
                attributes: new Set(attributes),
                usedDirectives: new Set(usedDirectives.map(function (dir) {
                    return {
                        node: dir.ref.node,
                        selector: dir.selector,
                    };
                })),
            };
            this.elementAndTemplateIdentifierCache.set(node, identifier);
            return identifier;
        };
        /** Creates an identifier for a template reference or template variable target. */
        TemplateVisitor.prototype.targetToIdentifier = function (node) {
            // If this node has already been seen, return the cached result.
            if (this.targetIdentifierCache.has(node)) {
                return this.targetIdentifierCache.get(node);
            }
            var name = node.name, sourceSpan = node.sourceSpan;
            var start = this.getStartLocation(name, sourceSpan);
            var span = new api_1.AbsoluteSourceSpan(start, start + name.length);
            var identifier;
            if (node instanceof compiler_1.TmplAstReference) {
                // If the node is a reference, we care about its target. The target can be an element, a
                // template, a directive applied on a template or element (in which case the directive field
                // is non-null), or nothing at all.
                var refTarget = this.boundTemplate.getReferenceTarget(node);
                var target = null;
                if (refTarget) {
                    if (refTarget instanceof compiler_1.TmplAstElement || refTarget instanceof compiler_1.TmplAstTemplate) {
                        target = {
                            node: this.elementOrTemplateToIdentifier(refTarget),
                            directive: null,
                        };
                    }
                    else {
                        target = {
                            node: this.elementOrTemplateToIdentifier(refTarget.node),
                            directive: refTarget.directive.ref.node,
                        };
                    }
                }
                identifier = {
                    name: name,
                    span: span,
                    kind: api_1.IdentifierKind.Reference,
                    target: target,
                };
            }
            else {
                identifier = {
                    name: name,
                    span: span,
                    kind: api_1.IdentifierKind.Variable,
                };
            }
            this.targetIdentifierCache.set(node, identifier);
            return identifier;
        };
        /** Gets the start location of a string in a SourceSpan */
        TemplateVisitor.prototype.getStartLocation = function (name, context) {
            var localStr = context.toString();
            if (!localStr.includes(name)) {
                throw new Error("Impossible state: \"" + name + "\" not found in \"" + localStr + "\"");
            }
            return context.start.offset + localStr.indexOf(name);
        };
        /**
         * Visits a node's expression and adds its identifiers, if any, to the visitor's state.
         * Only ASTs with information about the expression source and its location are visited.
         *
         * @param node node whose expression to visit
         */
        TemplateVisitor.prototype.visitExpression = function (ast) {
            var _this = this;
            // Only include ASTs that have information about their source and absolute source spans.
            if (ast instanceof compiler_1.ASTWithSource && ast.source !== null) {
                // Make target to identifier mapping closure stateful to this visitor instance.
                var targetToIdentifier = this.targetToIdentifier.bind(this);
                var absoluteOffset = ast.sourceSpan.start;
                var identifiers = ExpressionVisitor.getIdentifiers(ast, ast.source, absoluteOffset, this.boundTemplate, targetToIdentifier);
                identifiers.forEach(function (id) { return _this.identifiers.add(id); });
            }
        };
        return TemplateVisitor;
    }(compiler_1.TmplAstRecursiveVisitor));
    /**
     * Traverses a template AST and builds identifiers discovered in it.
     *
     * @param boundTemplate bound template target, which can be used for querying expression targets.
     * @return identifiers in template
     */
    function getTemplateIdentifiers(boundTemplate) {
        var visitor = new TemplateVisitor(boundTemplate);
        if (boundTemplate.target.template !== undefined) {
            visitor.visitAll(boundTemplate.target.template);
        }
        return visitor.identifiers;
    }
    exports.getTemplateIdentifiers = getTemplateIdentifiers;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidGVtcGxhdGUuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL2luZGV4ZXIvc3JjL3RlbXBsYXRlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7SUFBQTs7Ozs7O09BTUc7SUFDSCw4Q0FBeVU7SUFDelUsdUVBQTROO0lBaUI1Tjs7Ozs7Ozs7T0FRRztJQUNIO1FBQWdDLDZDQUFtQjtRQUdqRCwyQkFDcUIsYUFBcUIsRUFBbUIsY0FBc0IsRUFDOUQsYUFBeUMsRUFDekMsa0JBQTREO1lBSGpGLFlBSUUsaUJBQU8sU0FDUjtZQUpvQixtQkFBYSxHQUFiLGFBQWEsQ0FBUTtZQUFtQixvQkFBYyxHQUFkLGNBQWMsQ0FBUTtZQUM5RCxtQkFBYSxHQUFiLGFBQWEsQ0FBNEI7WUFDekMsd0JBQWtCLEdBQWxCLGtCQUFrQixDQUEwQztZQUx4RSxpQkFBVyxHQUEyQixFQUFFLENBQUM7O1FBT2xELENBQUM7UUFFRDs7Ozs7Ozs7OztXQVVHO1FBQ0ksZ0NBQWMsR0FBckIsVUFDSSxHQUFRLEVBQUUsTUFBYyxFQUFFLGNBQXNCLEVBQUUsYUFBeUMsRUFDM0Ysa0JBQTREO1lBQzlELElBQU0sT0FBTyxHQUNULElBQUksaUJBQWlCLENBQUMsTUFBTSxFQUFFLGNBQWMsRUFBRSxhQUFhLEVBQUUsa0JBQWtCLENBQUMsQ0FBQztZQUNyRixPQUFPLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxDQUFDO1lBQ25CLE9BQU8sT0FBTyxDQUFDLFdBQVcsQ0FBQztRQUM3QixDQUFDO1FBRUQsaUNBQUssR0FBTCxVQUFNLEdBQVE7WUFDWixHQUFHLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ2xCLENBQUM7UUFFRCwyQ0FBZSxHQUFmLFVBQWdCLEdBQWUsRUFBRSxPQUFXO1lBQzFDLElBQUksQ0FBQyxlQUFlLENBQUMsR0FBRyxFQUFFLG9CQUFjLENBQUMsTUFBTSxDQUFDLENBQUM7WUFDakQsaUJBQU0sZUFBZSxZQUFDLEdBQUcsRUFBRSxPQUFPLENBQUMsQ0FBQztRQUN0QyxDQUFDO1FBRUQsNkNBQWlCLEdBQWpCLFVBQWtCLEdBQWlCLEVBQUUsT0FBVztZQUM5QyxJQUFJLENBQUMsZUFBZSxDQUFDLEdBQUcsRUFBRSxvQkFBYyxDQUFDLFFBQVEsQ0FBQyxDQUFDO1lBQ25ELGlCQUFNLGlCQUFpQixZQUFDLEdBQUcsRUFBRSxPQUFPLENBQUMsQ0FBQztRQUN4QyxDQUFDO1FBRUQsOENBQWtCLEdBQWxCLFVBQW1CLEdBQWtCLEVBQUUsT0FBVztZQUNoRCxJQUFJLENBQUMsZUFBZSxDQUFDLEdBQUcsRUFBRSxvQkFBYyxDQUFDLFFBQVEsQ0FBQyxDQUFDO1lBQ25ELGlCQUFNLGtCQUFrQixZQUFDLEdBQUcsRUFBRSxPQUFPLENBQUMsQ0FBQztRQUN6QyxDQUFDO1FBRUQ7Ozs7O1dBS0c7UUFDSywyQ0FBZSxHQUF2QixVQUNJLEdBQXNDLEVBQUUsSUFBa0M7WUFDNUUseUZBQXlGO1lBQ3pGLGdGQUFnRjtZQUNoRixnR0FBZ0c7WUFDaEcsNERBQTREO1lBQzVELElBQUksQ0FBQyxDQUFDLEdBQUcsQ0FBQyxRQUFRLFlBQVksMkJBQWdCLENBQUMsRUFBRTtnQkFDL0MsT0FBTzthQUNSO1lBRUQsdURBQXVEO1lBQ3ZELDRGQUE0RjtZQUM1Riw2RkFBNkY7WUFDN0YsbUZBQW1GO1lBQ25GLElBQU0sZUFBZSxHQUFHLElBQUksQ0FBQyxhQUFhLENBQUMsTUFBTSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUM7WUFDbEUsSUFBSSxDQUFDLGVBQWUsQ0FBQyxRQUFRLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxFQUFFO2dCQUN2QyxNQUFNLElBQUksS0FBSyxDQUFDLHlCQUFzQixHQUFHLENBQUMsSUFBSSwwQkFBbUIsZUFBZSxPQUFHLENBQUMsQ0FBQzthQUN0RjtZQUNELElBQU0sZUFBZSxHQUFHLEdBQUcsQ0FBQyxJQUFJLENBQUMsS0FBSyxHQUFHLGVBQWUsQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxDQUFDO1lBRTNFLHdGQUF3RjtZQUN4RixpRkFBaUY7WUFDakYsSUFBTSxhQUFhLEdBQUcsSUFBSSxDQUFDLGNBQWMsR0FBRyxlQUFlLENBQUM7WUFDNUQsSUFBTSxJQUFJLEdBQUcsSUFBSSx3QkFBa0IsQ0FBQyxhQUFhLEVBQUUsYUFBYSxHQUFHLEdBQUcsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUM7WUFFcEYsSUFBTSxTQUFTLEdBQUcsSUFBSSxDQUFDLGFBQWEsQ0FBQyxtQkFBbUIsQ0FBQyxHQUFHLENBQUMsQ0FBQztZQUM5RCxJQUFNLE1BQU0sR0FBRyxTQUFTLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxTQUFTLENBQUMsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDO1lBQ3JFLElBQU0sVUFBVSxHQUFHO2dCQUNqQixJQUFJLEVBQUUsR0FBRyxDQUFDLElBQUk7Z0JBQ2QsSUFBSSxNQUFBO2dCQUNKLElBQUksTUFBQTtnQkFDSixNQUFNLFFBQUE7YUFDaUIsQ0FBQztZQUUxQixJQUFJLENBQUMsV0FBVyxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsQ0FBQztRQUNwQyxDQUFDO1FBQ0gsd0JBQUM7SUFBRCxDQUFDLEFBM0ZELENBQWdDLDhCQUFtQixHQTJGbEQ7SUFFRDs7O09BR0c7SUFDSDtRQUE4QiwyQ0FBdUI7UUFXbkQ7Ozs7O1dBS0c7UUFDSCx5QkFBb0IsYUFBeUM7WUFBN0QsWUFDRSxpQkFBTyxTQUNSO1lBRm1CLG1CQUFhLEdBQWIsYUFBYSxDQUE0QjtZQWhCN0QsaURBQWlEO1lBQ3hDLGlCQUFXLEdBQUcsSUFBSSxHQUFHLEVBQXNCLENBQUM7WUFFckQscURBQXFEO1lBQ3BDLDJCQUFxQixHQUF3QixJQUFJLEdBQUcsRUFBRSxDQUFDO1lBRXhFLHNEQUFzRDtZQUNyQyx1Q0FBaUMsR0FDOUMsSUFBSSxHQUFHLEVBQTRFLENBQUM7O1FBVXhGLENBQUM7UUFFRDs7OztXQUlHO1FBQ0gsK0JBQUssR0FBTCxVQUFNLElBQWM7WUFDbEIsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUNuQixDQUFDO1FBRUQsa0NBQVEsR0FBUixVQUFTLEtBQW9CO1lBQTdCLGlCQUVDO1lBREMsS0FBSyxDQUFDLE9BQU8sQ0FBQyxVQUFBLElBQUksSUFBSSxPQUFBLEtBQUksQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLEVBQWhCLENBQWdCLENBQUMsQ0FBQztRQUMxQyxDQUFDO1FBRUQ7Ozs7V0FJRztRQUNILHNDQUFZLEdBQVosVUFBYSxPQUF1QjtZQUNsQyxJQUFNLGlCQUFpQixHQUFHLElBQUksQ0FBQyw2QkFBNkIsQ0FBQyxPQUFPLENBQUMsQ0FBQztZQUV0RSxJQUFJLENBQUMsV0FBVyxDQUFDLEdBQUcsQ0FBQyxpQkFBaUIsQ0FBQyxDQUFDO1lBRXhDLElBQUksQ0FBQyxRQUFRLENBQUMsT0FBTyxDQUFDLFVBQVUsQ0FBQyxDQUFDO1lBQ2xDLElBQUksQ0FBQyxRQUFRLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FBQyxDQUFDO1lBQzlCLElBQUksQ0FBQyxRQUFRLENBQUMsT0FBTyxDQUFDLFVBQVUsQ0FBQyxDQUFDO1lBQ2xDLElBQUksQ0FBQyxRQUFRLENBQUMsT0FBTyxDQUFDLFFBQVEsQ0FBQyxDQUFDO1lBQ2hDLElBQUksQ0FBQyxRQUFRLENBQUMsT0FBTyxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQ2pDLENBQUM7UUFDRCx1Q0FBYSxHQUFiLFVBQWMsUUFBeUI7WUFDckMsSUFBTSxrQkFBa0IsR0FBRyxJQUFJLENBQUMsNkJBQTZCLENBQUMsUUFBUSxDQUFDLENBQUM7WUFFeEUsSUFBSSxDQUFDLFdBQVcsQ0FBQyxHQUFHLENBQUMsa0JBQWtCLENBQUMsQ0FBQztZQUV6QyxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxTQUFTLENBQUMsQ0FBQztZQUNsQyxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxVQUFVLENBQUMsQ0FBQztZQUNuQyxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxhQUFhLENBQUMsQ0FBQztZQUN0QyxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxRQUFRLENBQUMsQ0FBQztZQUNqQyxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxVQUFVLENBQUMsQ0FBQztRQUNyQyxDQUFDO1FBQ0QsNkNBQW1CLEdBQW5CLFVBQW9CLFNBQWdDO1lBQXBELGlCQXFCQztZQXBCQyw4RkFBOEY7WUFDOUYsNEZBQTRGO1lBQzVGLHlCQUF5QjtZQUN6QiwyRkFBMkY7WUFDM0Ysb0VBQW9FO1lBQ3BFLEVBQUU7WUFDRix5RkFBeUY7WUFDekYsSUFBTSxZQUFZLEdBQUcsU0FBUyxDQUFDLFVBQVUsQ0FBQyxRQUFRLEVBQUUsQ0FBQztZQUNyRCxJQUFNLHlCQUF5QixHQUFHLFNBQVMsQ0FBQyxVQUFVLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQztZQUVwRSw2RkFBNkY7WUFDN0YsOENBQThDO1lBQzlDLElBQU0sYUFBYSxHQUFHLFlBQVksQ0FBQyxPQUFPLENBQUMsU0FBUyxDQUFDLElBQUksQ0FBQyxHQUFHLFNBQVMsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDO1lBQ25GLElBQU0sYUFBYSxHQUFHLFlBQVksQ0FBQyxTQUFTLENBQUMsYUFBYSxDQUFDLENBQUM7WUFDNUQsSUFBTSwwQkFBMEIsR0FBRyx5QkFBeUIsR0FBRyxhQUFhLENBQUM7WUFFN0UsSUFBTSxXQUFXLEdBQUcsaUJBQWlCLENBQUMsY0FBYyxDQUNoRCxTQUFTLENBQUMsS0FBSyxFQUFFLGFBQWEsRUFBRSwwQkFBMEIsRUFBRSxJQUFJLENBQUMsYUFBYSxFQUM5RSxJQUFJLENBQUMsa0JBQWtCLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7WUFDeEMsV0FBVyxDQUFDLE9BQU8sQ0FBQyxVQUFBLEVBQUUsSUFBSSxPQUFBLEtBQUksQ0FBQyxXQUFXLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxFQUF4QixDQUF3QixDQUFDLENBQUM7UUFDdEQsQ0FBQztRQUNELHlDQUFlLEdBQWYsVUFBZ0IsU0FBNEI7WUFDMUMsSUFBSSxDQUFDLGVBQWUsQ0FBQyxTQUFTLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDMUMsQ0FBQztRQUNELHdDQUFjLEdBQWQsVUFBZSxJQUFzQjtZQUNuQyxJQUFJLENBQUMsZUFBZSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQztRQUNuQyxDQUFDO1FBQ0Qsd0NBQWMsR0FBZCxVQUFlLFNBQTJCO1lBQ3hDLElBQU0sa0JBQWtCLEdBQUcsSUFBSSxDQUFDLGtCQUFrQixDQUFDLFNBQVMsQ0FBQyxDQUFDO1lBRTlELElBQUksQ0FBQyxXQUFXLENBQUMsR0FBRyxDQUFDLGtCQUFrQixDQUFDLENBQUM7UUFDM0MsQ0FBQztRQUNELHVDQUFhLEdBQWIsVUFBYyxRQUF5QjtZQUNyQyxJQUFNLGtCQUFrQixHQUFHLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxRQUFRLENBQUMsQ0FBQztZQUU3RCxJQUFJLENBQUMsV0FBVyxDQUFDLEdBQUcsQ0FBQyxrQkFBa0IsQ0FBQyxDQUFDO1FBQzNDLENBQUM7UUFFRCxxRUFBcUU7UUFDN0QsdURBQTZCLEdBQXJDLFVBQXNDLElBQW9DO1lBRXhFLGdFQUFnRTtZQUNoRSxJQUFJLElBQUksQ0FBQyxpQ0FBaUMsQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLEVBQUU7Z0JBQ3BELE9BQU8sSUFBSSxDQUFDLGlDQUFpQyxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUUsQ0FBQzthQUMxRDtZQUVELElBQUksSUFBWSxDQUFDO1lBQ2pCLElBQUksSUFBb0QsQ0FBQztZQUN6RCxJQUFJLElBQUksWUFBWSwwQkFBZSxFQUFFO2dCQUNuQyxJQUFJLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQztnQkFDcEIsSUFBSSxHQUFHLG9CQUFjLENBQUMsUUFBUSxDQUFDO2FBQ2hDO2lCQUFNO2dCQUNMLElBQUksR0FBRyxJQUFJLENBQUMsSUFBSSxDQUFDO2dCQUNqQixJQUFJLEdBQUcsb0JBQWMsQ0FBQyxPQUFPLENBQUM7YUFDL0I7WUFDTSxJQUFBLFVBQVUsR0FBSSxJQUFJLFdBQVIsQ0FBUztZQUMxQiwyRkFBMkY7WUFDM0YsMkZBQTJGO1lBQzNGLG9FQUFvRTtZQUNwRSxJQUFNLEtBQUssR0FBRyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsSUFBSSxFQUFFLFVBQVUsQ0FBQyxDQUFDO1lBQ3RELElBQU0sWUFBWSxHQUFHLElBQUksd0JBQWtCLENBQUMsS0FBSyxFQUFFLEtBQUssR0FBRyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUM7WUFFeEUsMkZBQTJGO1lBQzNGLHdDQUF3QztZQUN4QyxJQUFNLFVBQVUsR0FBRyxJQUFJLENBQUMsVUFBVSxDQUFDLEdBQUcsQ0FBQyxVQUFDLEVBQWtCO29CQUFqQixJQUFJLFVBQUEsRUFBRSxVQUFVLGdCQUFBO2dCQUN2RCxPQUFPO29CQUNMLElBQUksTUFBQTtvQkFDSixJQUFJLEVBQUUsSUFBSSx3QkFBa0IsQ0FBQyxVQUFVLENBQUMsS0FBSyxDQUFDLE1BQU0sRUFBRSxVQUFVLENBQUMsR0FBRyxDQUFDLE1BQU0sQ0FBQztvQkFDNUUsSUFBSSxFQUFFLG9CQUFjLENBQUMsU0FBUztpQkFDL0IsQ0FBQztZQUNKLENBQUMsQ0FBQyxDQUFDO1lBQ0gsSUFBTSxjQUFjLEdBQUcsSUFBSSxDQUFDLGFBQWEsQ0FBQyxtQkFBbUIsQ0FBQyxJQUFJLENBQUMsSUFBSSxFQUFFLENBQUM7WUFFMUUsSUFBTSxVQUFVLEdBQUc7Z0JBQ2pCLElBQUksTUFBQTtnQkFDSixJQUFJLEVBQUUsWUFBWTtnQkFDbEIsSUFBSSxNQUFBO2dCQUNKLFVBQVUsRUFBRSxJQUFJLEdBQUcsQ0FBQyxVQUFVLENBQUM7Z0JBQy9CLGNBQWMsRUFBRSxJQUFJLEdBQUcsQ0FBQyxjQUFjLENBQUMsR0FBRyxDQUFDLFVBQUEsR0FBRztvQkFDNUMsT0FBTzt3QkFDTCxJQUFJLEVBQUUsR0FBRyxDQUFDLEdBQUcsQ0FBQyxJQUFJO3dCQUNsQixRQUFRLEVBQUUsR0FBRyxDQUFDLFFBQVE7cUJBQ3ZCLENBQUM7Z0JBQ0osQ0FBQyxDQUFDLENBQUM7YUFHcUIsQ0FBQztZQUUzQixJQUFJLENBQUMsaUNBQWlDLENBQUMsR0FBRyxDQUFDLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztZQUM3RCxPQUFPLFVBQVUsQ0FBQztRQUNwQixDQUFDO1FBRUQsa0ZBQWtGO1FBQzFFLDRDQUFrQixHQUExQixVQUEyQixJQUFzQztZQUMvRCxnRUFBZ0U7WUFDaEUsSUFBSSxJQUFJLENBQUMscUJBQXFCLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxFQUFFO2dCQUN4QyxPQUFPLElBQUksQ0FBQyxxQkFBcUIsQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFFLENBQUM7YUFDOUM7WUFFTSxJQUFBLElBQUksR0FBZ0IsSUFBSSxLQUFwQixFQUFFLFVBQVUsR0FBSSxJQUFJLFdBQVIsQ0FBUztZQUNoQyxJQUFNLEtBQUssR0FBRyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsSUFBSSxFQUFFLFVBQVUsQ0FBQyxDQUFDO1lBQ3RELElBQU0sSUFBSSxHQUFHLElBQUksd0JBQWtCLENBQUMsS0FBSyxFQUFFLEtBQUssR0FBRyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUM7WUFDaEUsSUFBSSxVQUFrRCxDQUFDO1lBQ3ZELElBQUksSUFBSSxZQUFZLDJCQUFnQixFQUFFO2dCQUNwQyx3RkFBd0Y7Z0JBQ3hGLDRGQUE0RjtnQkFDNUYsbUNBQW1DO2dCQUNuQyxJQUFNLFNBQVMsR0FBRyxJQUFJLENBQUMsYUFBYSxDQUFDLGtCQUFrQixDQUFDLElBQUksQ0FBQyxDQUFDO2dCQUM5RCxJQUFJLE1BQU0sR0FBRyxJQUFJLENBQUM7Z0JBQ2xCLElBQUksU0FBUyxFQUFFO29CQUNiLElBQUksU0FBUyxZQUFZLHlCQUFjLElBQUksU0FBUyxZQUFZLDBCQUFlLEVBQUU7d0JBQy9FLE1BQU0sR0FBRzs0QkFDUCxJQUFJLEVBQUUsSUFBSSxDQUFDLDZCQUE2QixDQUFDLFNBQVMsQ0FBQzs0QkFDbkQsU0FBUyxFQUFFLElBQUk7eUJBQ2hCLENBQUM7cUJBQ0g7eUJBQU07d0JBQ0wsTUFBTSxHQUFHOzRCQUNQLElBQUksRUFBRSxJQUFJLENBQUMsNkJBQTZCLENBQUMsU0FBUyxDQUFDLElBQUksQ0FBQzs0QkFDeEQsU0FBUyxFQUFFLFNBQVMsQ0FBQyxTQUFTLENBQUMsR0FBRyxDQUFDLElBQUk7eUJBQ3hDLENBQUM7cUJBQ0g7aUJBQ0Y7Z0JBRUQsVUFBVSxHQUFHO29CQUNYLElBQUksTUFBQTtvQkFDSixJQUFJLE1BQUE7b0JBQ0osSUFBSSxFQUFFLG9CQUFjLENBQUMsU0FBUztvQkFDOUIsTUFBTSxRQUFBO2lCQUNQLENBQUM7YUFDSDtpQkFBTTtnQkFDTCxVQUFVLEdBQUc7b0JBQ1gsSUFBSSxNQUFBO29CQUNKLElBQUksTUFBQTtvQkFDSixJQUFJLEVBQUUsb0JBQWMsQ0FBQyxRQUFRO2lCQUM5QixDQUFDO2FBQ0g7WUFFRCxJQUFJLENBQUMscUJBQXFCLENBQUMsR0FBRyxDQUFDLElBQUksRUFBRSxVQUFVLENBQUMsQ0FBQztZQUNqRCxPQUFPLFVBQVUsQ0FBQztRQUNwQixDQUFDO1FBRUQsMERBQTBEO1FBQ2xELDBDQUFnQixHQUF4QixVQUF5QixJQUFZLEVBQUUsT0FBd0I7WUFDN0QsSUFBTSxRQUFRLEdBQUcsT0FBTyxDQUFDLFFBQVEsRUFBRSxDQUFDO1lBQ3BDLElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxFQUFFO2dCQUM1QixNQUFNLElBQUksS0FBSyxDQUFDLHlCQUFzQixJQUFJLDBCQUFtQixRQUFRLE9BQUcsQ0FBQyxDQUFDO2FBQzNFO1lBQ0QsT0FBTyxPQUFPLENBQUMsS0FBSyxDQUFDLE1BQU0sR0FBRyxRQUFRLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ3ZELENBQUM7UUFFRDs7Ozs7V0FLRztRQUNLLHlDQUFlLEdBQXZCLFVBQXdCLEdBQVE7WUFBaEMsaUJBVUM7WUFUQyx3RkFBd0Y7WUFDeEYsSUFBSSxHQUFHLFlBQVksd0JBQWEsSUFBSSxHQUFHLENBQUMsTUFBTSxLQUFLLElBQUksRUFBRTtnQkFDdkQsK0VBQStFO2dCQUMvRSxJQUFNLGtCQUFrQixHQUFHLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7Z0JBQzlELElBQU0sY0FBYyxHQUFHLEdBQUcsQ0FBQyxVQUFVLENBQUMsS0FBSyxDQUFDO2dCQUM1QyxJQUFNLFdBQVcsR0FBRyxpQkFBaUIsQ0FBQyxjQUFjLENBQ2hELEdBQUcsRUFBRSxHQUFHLENBQUMsTUFBTSxFQUFFLGNBQWMsRUFBRSxJQUFJLENBQUMsYUFBYSxFQUFFLGtCQUFrQixDQUFDLENBQUM7Z0JBQzdFLFdBQVcsQ0FBQyxPQUFPLENBQUMsVUFBQSxFQUFFLElBQUksT0FBQSxLQUFJLENBQUMsV0FBVyxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsRUFBeEIsQ0FBd0IsQ0FBQyxDQUFDO2FBQ3JEO1FBQ0gsQ0FBQztRQUNILHNCQUFDO0lBQUQsQ0FBQyxBQXJPRCxDQUE4QixrQ0FBdUIsR0FxT3BEO0lBRUQ7Ozs7O09BS0c7SUFDSCxTQUFnQixzQkFBc0IsQ0FBQyxhQUF5QztRQUU5RSxJQUFNLE9BQU8sR0FBRyxJQUFJLGVBQWUsQ0FBQyxhQUFhLENBQUMsQ0FBQztRQUNuRCxJQUFJLGFBQWEsQ0FBQyxNQUFNLENBQUMsUUFBUSxLQUFLLFNBQVMsRUFBRTtZQUMvQyxPQUFPLENBQUMsUUFBUSxDQUFDLGFBQWEsQ0FBQyxNQUFNLENBQUMsUUFBUSxDQUFDLENBQUM7U0FDakQ7UUFDRCxPQUFPLE9BQU8sQ0FBQyxXQUFXLENBQUM7SUFDN0IsQ0FBQztJQVBELHdEQU9DIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQge0FTVCwgQVNUV2l0aFNvdXJjZSwgQm91bmRUYXJnZXQsIEltcGxpY2l0UmVjZWl2ZXIsIE1ldGhvZENhbGwsIFBhcnNlU291cmNlU3BhbiwgUHJvcGVydHlSZWFkLCBQcm9wZXJ0eVdyaXRlLCBSZWN1cnNpdmVBc3RWaXNpdG9yLCBUbXBsQXN0Qm91bmRBdHRyaWJ1dGUsIFRtcGxBc3RCb3VuZEV2ZW50LCBUbXBsQXN0Qm91bmRUZXh0LCBUbXBsQXN0RWxlbWVudCwgVG1wbEFzdE5vZGUsIFRtcGxBc3RSZWN1cnNpdmVWaXNpdG9yLCBUbXBsQXN0UmVmZXJlbmNlLCBUbXBsQXN0VGVtcGxhdGUsIFRtcGxBc3RWYXJpYWJsZX0gZnJvbSAnQGFuZ3VsYXIvY29tcGlsZXInO1xuaW1wb3J0IHtBYnNvbHV0ZVNvdXJjZVNwYW4sIEF0dHJpYnV0ZUlkZW50aWZpZXIsIEVsZW1lbnRJZGVudGlmaWVyLCBJZGVudGlmaWVyS2luZCwgTWV0aG9kSWRlbnRpZmllciwgUHJvcGVydHlJZGVudGlmaWVyLCBSZWZlcmVuY2VJZGVudGlmaWVyLCBUZW1wbGF0ZU5vZGVJZGVudGlmaWVyLCBUb3BMZXZlbElkZW50aWZpZXIsIFZhcmlhYmxlSWRlbnRpZmllcn0gZnJvbSAnLi9hcGknO1xuaW1wb3J0IHtDb21wb25lbnRNZXRhfSBmcm9tICcuL2NvbnRleHQnO1xuXG4vKipcbiAqIEEgcGFyc2VkIG5vZGUgaW4gYSB0ZW1wbGF0ZSwgd2hpY2ggbWF5IGhhdmUgYSBuYW1lIChpZiBpdCBpcyBhIHNlbGVjdG9yKSBvclxuICogYmUgYW5vbnltb3VzIChsaWtlIGEgdGV4dCBzcGFuKS5cbiAqL1xuaW50ZXJmYWNlIEhUTUxOb2RlIGV4dGVuZHMgVG1wbEFzdE5vZGUge1xuICB0YWdOYW1lPzogc3RyaW5nO1xuICBuYW1lPzogc3RyaW5nO1xufVxuXG50eXBlIEV4cHJlc3Npb25JZGVudGlmaWVyID0gUHJvcGVydHlJZGVudGlmaWVyfE1ldGhvZElkZW50aWZpZXI7XG50eXBlIFRtcGxUYXJnZXQgPSBUbXBsQXN0UmVmZXJlbmNlfFRtcGxBc3RWYXJpYWJsZTtcbnR5cGUgVGFyZ2V0SWRlbnRpZmllciA9IFJlZmVyZW5jZUlkZW50aWZpZXJ8VmFyaWFibGVJZGVudGlmaWVyO1xudHlwZSBUYXJnZXRJZGVudGlmaWVyTWFwID0gTWFwPFRtcGxUYXJnZXQsIFRhcmdldElkZW50aWZpZXI+O1xuXG4vKipcbiAqIFZpc2l0cyB0aGUgQVNUIG9mIGFuIEFuZ3VsYXIgdGVtcGxhdGUgc3ludGF4IGV4cHJlc3Npb24sIGZpbmRpbmcgaW50ZXJlc3RpbmdcbiAqIGVudGl0aWVzICh2YXJpYWJsZSByZWZlcmVuY2VzLCBldGMuKS4gQ3JlYXRlcyBhbiBhcnJheSBvZiBFbnRpdGllcyBmb3VuZCBpblxuICogdGhlIGV4cHJlc3Npb24sIHdpdGggdGhlIGxvY2F0aW9uIG9mIHRoZSBFbnRpdGllcyBiZWluZyByZWxhdGl2ZSB0byB0aGVcbiAqIGV4cHJlc3Npb24uXG4gKlxuICogVmlzaXRpbmcgYHRleHQge3twcm9wfX1gIHdpbGwgcmV0dXJuXG4gKiBgW1RvcExldmVsSWRlbnRpZmllciB7bmFtZTogJ3Byb3AnLCBzcGFuOiB7c3RhcnQ6IDcsIGVuZDogMTF9fV1gLlxuICovXG5jbGFzcyBFeHByZXNzaW9uVmlzaXRvciBleHRlbmRzIFJlY3Vyc2l2ZUFzdFZpc2l0b3Ige1xuICByZWFkb25seSBpZGVudGlmaWVyczogRXhwcmVzc2lvbklkZW50aWZpZXJbXSA9IFtdO1xuXG4gIHByaXZhdGUgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHJlYWRvbmx5IGV4cHJlc3Npb25TdHI6IHN0cmluZywgcHJpdmF0ZSByZWFkb25seSBhYnNvbHV0ZU9mZnNldDogbnVtYmVyLFxuICAgICAgcHJpdmF0ZSByZWFkb25seSBib3VuZFRlbXBsYXRlOiBCb3VuZFRhcmdldDxDb21wb25lbnRNZXRhPixcbiAgICAgIHByaXZhdGUgcmVhZG9ubHkgdGFyZ2V0VG9JZGVudGlmaWVyOiAodGFyZ2V0OiBUbXBsVGFyZ2V0KSA9PiBUYXJnZXRJZGVudGlmaWVyKSB7XG4gICAgc3VwZXIoKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBSZXR1cm5zIGlkZW50aWZpZXJzIGRpc2NvdmVyZWQgaW4gYW4gZXhwcmVzc2lvbi5cbiAgICpcbiAgICogQHBhcmFtIGFzdCBleHByZXNzaW9uIEFTVCB0byB2aXNpdFxuICAgKiBAcGFyYW0gc291cmNlIGV4cHJlc3Npb24gQVNUIHNvdXJjZSBjb2RlXG4gICAqIEBwYXJhbSBhYnNvbHV0ZU9mZnNldCBhYnNvbHV0ZSBieXRlIG9mZnNldCBmcm9tIHN0YXJ0IG9mIHRoZSBmaWxlIHRvIHRoZSBzdGFydCBvZiB0aGUgQVNUXG4gICAqIHNvdXJjZSBjb2RlLlxuICAgKiBAcGFyYW0gYm91bmRUZW1wbGF0ZSBib3VuZCB0YXJnZXQgb2YgdGhlIGVudGlyZSB0ZW1wbGF0ZSwgd2hpY2ggY2FuIGJlIHVzZWQgdG8gcXVlcnkgZm9yIHRoZVxuICAgKiBlbnRpdGllcyBleHByZXNzaW9ucyB0YXJnZXQuXG4gICAqIEBwYXJhbSB0YXJnZXRUb0lkZW50aWZpZXIgY2xvc3VyZSBjb252ZXJ0aW5nIGEgdGVtcGxhdGUgdGFyZ2V0IG5vZGUgdG8gaXRzIGlkZW50aWZpZXIuXG4gICAqL1xuICBzdGF0aWMgZ2V0SWRlbnRpZmllcnMoXG4gICAgICBhc3Q6IEFTVCwgc291cmNlOiBzdHJpbmcsIGFic29sdXRlT2Zmc2V0OiBudW1iZXIsIGJvdW5kVGVtcGxhdGU6IEJvdW5kVGFyZ2V0PENvbXBvbmVudE1ldGE+LFxuICAgICAgdGFyZ2V0VG9JZGVudGlmaWVyOiAodGFyZ2V0OiBUbXBsVGFyZ2V0KSA9PiBUYXJnZXRJZGVudGlmaWVyKTogVG9wTGV2ZWxJZGVudGlmaWVyW10ge1xuICAgIGNvbnN0IHZpc2l0b3IgPVxuICAgICAgICBuZXcgRXhwcmVzc2lvblZpc2l0b3Ioc291cmNlLCBhYnNvbHV0ZU9mZnNldCwgYm91bmRUZW1wbGF0ZSwgdGFyZ2V0VG9JZGVudGlmaWVyKTtcbiAgICB2aXNpdG9yLnZpc2l0KGFzdCk7XG4gICAgcmV0dXJuIHZpc2l0b3IuaWRlbnRpZmllcnM7XG4gIH1cblxuICB2aXNpdChhc3Q6IEFTVCkge1xuICAgIGFzdC52aXNpdCh0aGlzKTtcbiAgfVxuXG4gIHZpc2l0TWV0aG9kQ2FsbChhc3Q6IE1ldGhvZENhbGwsIGNvbnRleHQ6IHt9KSB7XG4gICAgdGhpcy52aXNpdElkZW50aWZpZXIoYXN0LCBJZGVudGlmaWVyS2luZC5NZXRob2QpO1xuICAgIHN1cGVyLnZpc2l0TWV0aG9kQ2FsbChhc3QsIGNvbnRleHQpO1xuICB9XG5cbiAgdmlzaXRQcm9wZXJ0eVJlYWQoYXN0OiBQcm9wZXJ0eVJlYWQsIGNvbnRleHQ6IHt9KSB7XG4gICAgdGhpcy52aXNpdElkZW50aWZpZXIoYXN0LCBJZGVudGlmaWVyS2luZC5Qcm9wZXJ0eSk7XG4gICAgc3VwZXIudmlzaXRQcm9wZXJ0eVJlYWQoYXN0LCBjb250ZXh0KTtcbiAgfVxuXG4gIHZpc2l0UHJvcGVydHlXcml0ZShhc3Q6IFByb3BlcnR5V3JpdGUsIGNvbnRleHQ6IHt9KSB7XG4gICAgdGhpcy52aXNpdElkZW50aWZpZXIoYXN0LCBJZGVudGlmaWVyS2luZC5Qcm9wZXJ0eSk7XG4gICAgc3VwZXIudmlzaXRQcm9wZXJ0eVdyaXRlKGFzdCwgY29udGV4dCk7XG4gIH1cblxuICAvKipcbiAgICogVmlzaXRzIGFuIGlkZW50aWZpZXIsIGFkZGluZyBpdCB0byB0aGUgaWRlbnRpZmllciBzdG9yZSBpZiBpdCBpcyB1c2VmdWwgZm9yIGluZGV4aW5nLlxuICAgKlxuICAgKiBAcGFyYW0gYXN0IGV4cHJlc3Npb24gQVNUIHRoZSBpZGVudGlmaWVyIGlzIGluXG4gICAqIEBwYXJhbSBraW5kIGlkZW50aWZpZXIga2luZFxuICAgKi9cbiAgcHJpdmF0ZSB2aXNpdElkZW50aWZpZXIoXG4gICAgICBhc3Q6IEFTVCZ7bmFtZTogc3RyaW5nLCByZWNlaXZlcjogQVNUfSwga2luZDogRXhwcmVzc2lvbklkZW50aWZpZXJbJ2tpbmQnXSkge1xuICAgIC8vIFRoZSBkZWZpbml0aW9uIG9mIGEgbm9uLXRvcC1sZXZlbCBwcm9wZXJ0eSBzdWNoIGFzIGBiYXJgIGluIGB7e2Zvby5iYXJ9fWAgaXMgY3VycmVudGx5XG4gICAgLy8gaW1wb3NzaWJsZSB0byBkZXRlcm1pbmUgYnkgYW4gaW5kZXhlciBhbmQgdW5zdXBwb3J0ZWQgYnkgdGhlIGluZGV4aW5nIG1vZHVsZS5cbiAgICAvLyBUaGUgaW5kZXhpbmcgbW9kdWxlIGFsc28gZG9lcyBub3QgY3VycmVudGx5IHN1cHBvcnQgcmVmZXJlbmNlcyB0byBpZGVudGlmaWVycyBkZWNsYXJlZCBpbiB0aGVcbiAgICAvLyB0ZW1wbGF0ZSBpdHNlbGYsIHdoaWNoIGhhdmUgYSBub24tbnVsbCBleHByZXNzaW9uIHRhcmdldC5cbiAgICBpZiAoIShhc3QucmVjZWl2ZXIgaW5zdGFuY2VvZiBJbXBsaWNpdFJlY2VpdmVyKSkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIC8vIEdldCB0aGUgbG9jYXRpb24gb2YgdGhlIGlkZW50aWZpZXIgb2YgcmVhbCBpbnRlcmVzdC5cbiAgICAvLyBUaGUgY29tcGlsZXIncyBleHByZXNzaW9uIHBhcnNlciByZWNvcmRzIHRoZSBsb2NhdGlvbiBvZiBzb21lIGV4cHJlc3Npb25zIGluIGEgbWFubmVyIG5vdFxuICAgIC8vIHVzZWZ1bCB0byB0aGUgaW5kZXhlci4gRm9yIGV4YW1wbGUsIGEgYE1ldGhvZENhbGxgIGBmb28oYSwgYilgIHdpbGwgcmVjb3JkIHRoZSBzcGFuIG9mIHRoZVxuICAgIC8vIGVudGlyZSBtZXRob2QgY2FsbCwgYnV0IHRoZSBpbmRleGVyIGlzIGludGVyZXN0ZWQgb25seSBpbiB0aGUgbWV0aG9kIGlkZW50aWZpZXIuXG4gICAgY29uc3QgbG9jYWxFeHByZXNzaW9uID0gdGhpcy5leHByZXNzaW9uU3RyLnN1YnN0cihhc3Quc3Bhbi5zdGFydCk7XG4gICAgaWYgKCFsb2NhbEV4cHJlc3Npb24uaW5jbHVkZXMoYXN0Lm5hbWUpKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoYEltcG9zc2libGUgc3RhdGU6IFwiJHthc3QubmFtZX1cIiBub3QgZm91bmQgaW4gXCIke2xvY2FsRXhwcmVzc2lvbn1cImApO1xuICAgIH1cbiAgICBjb25zdCBpZGVudGlmaWVyU3RhcnQgPSBhc3Quc3Bhbi5zdGFydCArIGxvY2FsRXhwcmVzc2lvbi5pbmRleE9mKGFzdC5uYW1lKTtcblxuICAgIC8vIEpvaW4gdGhlIHJlbGF0aXZlIHBvc2l0aW9uIG9mIHRoZSBleHByZXNzaW9uIHdpdGhpbiBhIG5vZGUgd2l0aCB0aGUgYWJzb2x1dGUgcG9zaXRpb25cbiAgICAvLyBvZiB0aGUgbm9kZSB0byBnZXQgdGhlIGFic29sdXRlIHBvc2l0aW9uIG9mIHRoZSBleHByZXNzaW9uIGluIHRoZSBzb3VyY2UgY29kZS5cbiAgICBjb25zdCBhYnNvbHV0ZVN0YXJ0ID0gdGhpcy5hYnNvbHV0ZU9mZnNldCArIGlkZW50aWZpZXJTdGFydDtcbiAgICBjb25zdCBzcGFuID0gbmV3IEFic29sdXRlU291cmNlU3BhbihhYnNvbHV0ZVN0YXJ0LCBhYnNvbHV0ZVN0YXJ0ICsgYXN0Lm5hbWUubGVuZ3RoKTtcblxuICAgIGNvbnN0IHRhcmdldEFzdCA9IHRoaXMuYm91bmRUZW1wbGF0ZS5nZXRFeHByZXNzaW9uVGFyZ2V0KGFzdCk7XG4gICAgY29uc3QgdGFyZ2V0ID0gdGFyZ2V0QXN0ID8gdGhpcy50YXJnZXRUb0lkZW50aWZpZXIodGFyZ2V0QXN0KSA6IG51bGw7XG4gICAgY29uc3QgaWRlbnRpZmllciA9IHtcbiAgICAgIG5hbWU6IGFzdC5uYW1lLFxuICAgICAgc3BhbixcbiAgICAgIGtpbmQsXG4gICAgICB0YXJnZXQsXG4gICAgfSBhcyBFeHByZXNzaW9uSWRlbnRpZmllcjtcblxuICAgIHRoaXMuaWRlbnRpZmllcnMucHVzaChpZGVudGlmaWVyKTtcbiAgfVxufVxuXG4vKipcbiAqIFZpc2l0cyB0aGUgQVNUIG9mIGEgcGFyc2VkIEFuZ3VsYXIgdGVtcGxhdGUuIERpc2NvdmVycyBhbmQgc3RvcmVzXG4gKiBpZGVudGlmaWVycyBvZiBpbnRlcmVzdCwgZGVmZXJyaW5nIHRvIGFuIGBFeHByZXNzaW9uVmlzaXRvcmAgYXMgbmVlZGVkLlxuICovXG5jbGFzcyBUZW1wbGF0ZVZpc2l0b3IgZXh0ZW5kcyBUbXBsQXN0UmVjdXJzaXZlVmlzaXRvciB7XG4gIC8vIElkZW50aWZpZXJzIG9mIGludGVyZXN0IGZvdW5kIGluIHRoZSB0ZW1wbGF0ZS5cbiAgcmVhZG9ubHkgaWRlbnRpZmllcnMgPSBuZXcgU2V0PFRvcExldmVsSWRlbnRpZmllcj4oKTtcblxuICAvLyBNYXAgb2YgdGFyZ2V0cyBpbiBhIHRlbXBsYXRlIHRvIHRoZWlyIGlkZW50aWZpZXJzLlxuICBwcml2YXRlIHJlYWRvbmx5IHRhcmdldElkZW50aWZpZXJDYWNoZTogVGFyZ2V0SWRlbnRpZmllck1hcCA9IG5ldyBNYXAoKTtcblxuICAvLyBNYXAgb2YgZWxlbWVudHMgYW5kIHRlbXBsYXRlcyB0byB0aGVpciBpZGVudGlmaWVycy5cbiAgcHJpdmF0ZSByZWFkb25seSBlbGVtZW50QW5kVGVtcGxhdGVJZGVudGlmaWVyQ2FjaGUgPVxuICAgICAgbmV3IE1hcDxUbXBsQXN0RWxlbWVudHxUbXBsQXN0VGVtcGxhdGUsIEVsZW1lbnRJZGVudGlmaWVyfFRlbXBsYXRlTm9kZUlkZW50aWZpZXI+KCk7XG5cbiAgLyoqXG4gICAqIENyZWF0ZXMgYSB0ZW1wbGF0ZSB2aXNpdG9yIGZvciBhIGJvdW5kIHRlbXBsYXRlIHRhcmdldC4gVGhlIGJvdW5kIHRhcmdldCBjYW4gYmUgdXNlZCB3aGVuXG4gICAqIGRlZmVycmVkIHRvIHRoZSBleHByZXNzaW9uIHZpc2l0b3IgdG8gZ2V0IGluZm9ybWF0aW9uIGFib3V0IHRoZSB0YXJnZXQgb2YgYW4gZXhwcmVzc2lvbi5cbiAgICpcbiAgICogQHBhcmFtIGJvdW5kVGVtcGxhdGUgYm91bmQgdGVtcGxhdGUgdGFyZ2V0XG4gICAqL1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGJvdW5kVGVtcGxhdGU6IEJvdW5kVGFyZ2V0PENvbXBvbmVudE1ldGE+KSB7XG4gICAgc3VwZXIoKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBWaXNpdHMgYSBub2RlIGluIHRoZSB0ZW1wbGF0ZS5cbiAgICpcbiAgICogQHBhcmFtIG5vZGUgbm9kZSB0byB2aXNpdFxuICAgKi9cbiAgdmlzaXQobm9kZTogSFRNTE5vZGUpIHtcbiAgICBub2RlLnZpc2l0KHRoaXMpO1xuICB9XG5cbiAgdmlzaXRBbGwobm9kZXM6IFRtcGxBc3ROb2RlW10pIHtcbiAgICBub2Rlcy5mb3JFYWNoKG5vZGUgPT4gdGhpcy52aXNpdChub2RlKSk7XG4gIH1cblxuICAvKipcbiAgICogQWRkIGFuIGlkZW50aWZpZXIgZm9yIGFuIEhUTUwgZWxlbWVudCBhbmQgdmlzaXQgaXRzIGNoaWxkcmVuIHJlY3Vyc2l2ZWx5LlxuICAgKlxuICAgKiBAcGFyYW0gZWxlbWVudFxuICAgKi9cbiAgdmlzaXRFbGVtZW50KGVsZW1lbnQ6IFRtcGxBc3RFbGVtZW50KSB7XG4gICAgY29uc3QgZWxlbWVudElkZW50aWZpZXIgPSB0aGlzLmVsZW1lbnRPclRlbXBsYXRlVG9JZGVudGlmaWVyKGVsZW1lbnQpO1xuXG4gICAgdGhpcy5pZGVudGlmaWVycy5hZGQoZWxlbWVudElkZW50aWZpZXIpO1xuXG4gICAgdGhpcy52aXNpdEFsbChlbGVtZW50LnJlZmVyZW5jZXMpO1xuICAgIHRoaXMudmlzaXRBbGwoZWxlbWVudC5pbnB1dHMpO1xuICAgIHRoaXMudmlzaXRBbGwoZWxlbWVudC5hdHRyaWJ1dGVzKTtcbiAgICB0aGlzLnZpc2l0QWxsKGVsZW1lbnQuY2hpbGRyZW4pO1xuICAgIHRoaXMudmlzaXRBbGwoZWxlbWVudC5vdXRwdXRzKTtcbiAgfVxuICB2aXNpdFRlbXBsYXRlKHRlbXBsYXRlOiBUbXBsQXN0VGVtcGxhdGUpIHtcbiAgICBjb25zdCB0ZW1wbGF0ZUlkZW50aWZpZXIgPSB0aGlzLmVsZW1lbnRPclRlbXBsYXRlVG9JZGVudGlmaWVyKHRlbXBsYXRlKTtcblxuICAgIHRoaXMuaWRlbnRpZmllcnMuYWRkKHRlbXBsYXRlSWRlbnRpZmllcik7XG5cbiAgICB0aGlzLnZpc2l0QWxsKHRlbXBsYXRlLnZhcmlhYmxlcyk7XG4gICAgdGhpcy52aXNpdEFsbCh0ZW1wbGF0ZS5hdHRyaWJ1dGVzKTtcbiAgICB0aGlzLnZpc2l0QWxsKHRlbXBsYXRlLnRlbXBsYXRlQXR0cnMpO1xuICAgIHRoaXMudmlzaXRBbGwodGVtcGxhdGUuY2hpbGRyZW4pO1xuICAgIHRoaXMudmlzaXRBbGwodGVtcGxhdGUucmVmZXJlbmNlcyk7XG4gIH1cbiAgdmlzaXRCb3VuZEF0dHJpYnV0ZShhdHRyaWJ1dGU6IFRtcGxBc3RCb3VuZEF0dHJpYnV0ZSkge1xuICAgIC8vIEEgQm91bmRBdHRyaWJ1dGUncyB2YWx1ZSAodGhlIHBhcmVudCBBU1QpIG1heSBoYXZlIHN1YmV4cHJlc3Npb25zIChjaGlsZHJlbiBBU1RzKSB0aGF0IGhhdmVcbiAgICAvLyByZWNvcmRlZCBzcGFucyBleHRlbmRpbmcgcGFzdCB0aGUgcmVjb3JkZWQgc3BhbiBvZiB0aGUgcGFyZW50LiBUaGUgbW9zdCBjb21tb24gZXhhbXBsZSBvZlxuICAgIC8vIHRoaXMgaXMgd2l0aCBgKm5nRm9yYC5cbiAgICAvLyBUbyByZXNvbHZlIHRoaXMsIHVzZSB0aGUgaW5mb3JtYXRpb24gb24gdGhlIEJvdW5kQXR0cmlidXRlIFRlbXBsYXRlIEFTVCwgd2hpY2ggaXMgYWx3YXlzXG4gICAgLy8gY29ycmVjdCwgdG8gZGV0ZXJtaW5lIGxvY2F0aW9ucyBvZiBpZGVudGlmaWVycyBpbiB0aGUgZXhwcmVzc2lvbi5cbiAgICAvL1xuICAgIC8vIFRPRE8oYXlhemhhZml6KTogUmVtb3ZlIHRoaXMgd2hlbiBodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9hbmd1bGFyL3B1bGwvMzE4MTMgbGFuZHMuXG4gICAgY29uc3QgYXR0cmlidXRlU3JjID0gYXR0cmlidXRlLnNvdXJjZVNwYW4udG9TdHJpbmcoKTtcbiAgICBjb25zdCBhdHRyaWJ1dGVBYnNvbHV0ZVBvc2l0aW9uID0gYXR0cmlidXRlLnNvdXJjZVNwYW4uc3RhcnQub2Zmc2V0O1xuXG4gICAgLy8gU2tpcCB0aGUgYnl0ZXMgb2YgdGhlIGF0dHJpYnV0ZSBuYW1lIHNvIHRoYXQgdGhlcmUgYXJlIG5vIGNvbGxpc2lvbnMgYmV0d2VlbiB0aGUgYXR0cmlidXRlXG4gICAgLy8gbmFtZSBhbmQgZXhwcmVzc2lvbiBpZGVudGlmaWVyIG5hbWVzIGxhdGVyLlxuICAgIGNvbnN0IG5hbWVTa2lwT2ZmZXQgPSBhdHRyaWJ1dGVTcmMuaW5kZXhPZihhdHRyaWJ1dGUubmFtZSkgKyBhdHRyaWJ1dGUubmFtZS5sZW5ndGg7XG4gICAgY29uc3QgZXhwcmVzc2lvblNyYyA9IGF0dHJpYnV0ZVNyYy5zdWJzdHJpbmcobmFtZVNraXBPZmZldCk7XG4gICAgY29uc3QgZXhwcmVzc2lvbkFic29sdXRlUG9zaXRpb24gPSBhdHRyaWJ1dGVBYnNvbHV0ZVBvc2l0aW9uICsgbmFtZVNraXBPZmZldDtcblxuICAgIGNvbnN0IGlkZW50aWZpZXJzID0gRXhwcmVzc2lvblZpc2l0b3IuZ2V0SWRlbnRpZmllcnMoXG4gICAgICAgIGF0dHJpYnV0ZS52YWx1ZSwgZXhwcmVzc2lvblNyYywgZXhwcmVzc2lvbkFic29sdXRlUG9zaXRpb24sIHRoaXMuYm91bmRUZW1wbGF0ZSxcbiAgICAgICAgdGhpcy50YXJnZXRUb0lkZW50aWZpZXIuYmluZCh0aGlzKSk7XG4gICAgaWRlbnRpZmllcnMuZm9yRWFjaChpZCA9PiB0aGlzLmlkZW50aWZpZXJzLmFkZChpZCkpO1xuICB9XG4gIHZpc2l0Qm91bmRFdmVudChhdHRyaWJ1dGU6IFRtcGxBc3RCb3VuZEV2ZW50KSB7XG4gICAgdGhpcy52aXNpdEV4cHJlc3Npb24oYXR0cmlidXRlLmhhbmRsZXIpO1xuICB9XG4gIHZpc2l0Qm91bmRUZXh0KHRleHQ6IFRtcGxBc3RCb3VuZFRleHQpIHtcbiAgICB0aGlzLnZpc2l0RXhwcmVzc2lvbih0ZXh0LnZhbHVlKTtcbiAgfVxuICB2aXNpdFJlZmVyZW5jZShyZWZlcmVuY2U6IFRtcGxBc3RSZWZlcmVuY2UpIHtcbiAgICBjb25zdCByZWZlcmVuY2VJZGVudGlmZXIgPSB0aGlzLnRhcmdldFRvSWRlbnRpZmllcihyZWZlcmVuY2UpO1xuXG4gICAgdGhpcy5pZGVudGlmaWVycy5hZGQocmVmZXJlbmNlSWRlbnRpZmVyKTtcbiAgfVxuICB2aXNpdFZhcmlhYmxlKHZhcmlhYmxlOiBUbXBsQXN0VmFyaWFibGUpIHtcbiAgICBjb25zdCB2YXJpYWJsZUlkZW50aWZpZXIgPSB0aGlzLnRhcmdldFRvSWRlbnRpZmllcih2YXJpYWJsZSk7XG5cbiAgICB0aGlzLmlkZW50aWZpZXJzLmFkZCh2YXJpYWJsZUlkZW50aWZpZXIpO1xuICB9XG5cbiAgLyoqIENyZWF0ZXMgYW4gaWRlbnRpZmllciBmb3IgYSB0ZW1wbGF0ZSBlbGVtZW50IG9yIHRlbXBsYXRlIG5vZGUuICovXG4gIHByaXZhdGUgZWxlbWVudE9yVGVtcGxhdGVUb0lkZW50aWZpZXIobm9kZTogVG1wbEFzdEVsZW1lbnR8VG1wbEFzdFRlbXBsYXRlKTogRWxlbWVudElkZW50aWZpZXJcbiAgICAgIHxUZW1wbGF0ZU5vZGVJZGVudGlmaWVyIHtcbiAgICAvLyBJZiB0aGlzIG5vZGUgaGFzIGFscmVhZHkgYmVlbiBzZWVuLCByZXR1cm4gdGhlIGNhY2hlZCByZXN1bHQuXG4gICAgaWYgKHRoaXMuZWxlbWVudEFuZFRlbXBsYXRlSWRlbnRpZmllckNhY2hlLmhhcyhub2RlKSkge1xuICAgICAgcmV0dXJuIHRoaXMuZWxlbWVudEFuZFRlbXBsYXRlSWRlbnRpZmllckNhY2hlLmdldChub2RlKSE7XG4gICAgfVxuXG4gICAgbGV0IG5hbWU6IHN0cmluZztcbiAgICBsZXQga2luZDogSWRlbnRpZmllcktpbmQuRWxlbWVudHxJZGVudGlmaWVyS2luZC5UZW1wbGF0ZTtcbiAgICBpZiAobm9kZSBpbnN0YW5jZW9mIFRtcGxBc3RUZW1wbGF0ZSkge1xuICAgICAgbmFtZSA9IG5vZGUudGFnTmFtZTtcbiAgICAgIGtpbmQgPSBJZGVudGlmaWVyS2luZC5UZW1wbGF0ZTtcbiAgICB9IGVsc2Uge1xuICAgICAgbmFtZSA9IG5vZGUubmFtZTtcbiAgICAgIGtpbmQgPSBJZGVudGlmaWVyS2luZC5FbGVtZW50O1xuICAgIH1cbiAgICBjb25zdCB7c291cmNlU3Bhbn0gPSBub2RlO1xuICAgIC8vIEFuIGVsZW1lbnQncyBvciB0ZW1wbGF0ZSdzIHNvdXJjZSBzcGFuIGNhbiBiZSBvZiB0aGUgZm9ybSBgPGVsZW1lbnQ+YCwgYDxlbGVtZW50IC8+YCwgb3JcbiAgICAvLyBgPGVsZW1lbnQ+PC9lbGVtZW50PmAuIE9ubHkgdGhlIHNlbGVjdG9yIGlzIGludGVyZXN0aW5nIHRvIHRoZSBpbmRleGVyLCBzbyB0aGUgc291cmNlIGlzXG4gICAgLy8gc2VhcmNoZWQgZm9yIHRoZSBmaXJzdCBvY2N1cnJlbmNlIG9mIHRoZSBlbGVtZW50IChzZWxlY3RvcikgbmFtZS5cbiAgICBjb25zdCBzdGFydCA9IHRoaXMuZ2V0U3RhcnRMb2NhdGlvbihuYW1lLCBzb3VyY2VTcGFuKTtcbiAgICBjb25zdCBhYnNvbHV0ZVNwYW4gPSBuZXcgQWJzb2x1dGVTb3VyY2VTcGFuKHN0YXJ0LCBzdGFydCArIG5hbWUubGVuZ3RoKTtcblxuICAgIC8vIFJlY29yZCB0aGUgbm9kZXMncyBhdHRyaWJ1dGVzLCB3aGljaCBhbiBpbmRleGVyIGNhbiBsYXRlciB0cmF2ZXJzZSB0byBzZWUgaWYgYW55IG9mIHRoZW1cbiAgICAvLyBzcGVjaWZ5IGEgdXNlZCBkaXJlY3RpdmUgb24gdGhlIG5vZGUuXG4gICAgY29uc3QgYXR0cmlidXRlcyA9IG5vZGUuYXR0cmlidXRlcy5tYXAoKHtuYW1lLCBzb3VyY2VTcGFufSk6IEF0dHJpYnV0ZUlkZW50aWZpZXIgPT4ge1xuICAgICAgcmV0dXJuIHtcbiAgICAgICAgbmFtZSxcbiAgICAgICAgc3BhbjogbmV3IEFic29sdXRlU291cmNlU3Bhbihzb3VyY2VTcGFuLnN0YXJ0Lm9mZnNldCwgc291cmNlU3Bhbi5lbmQub2Zmc2V0KSxcbiAgICAgICAga2luZDogSWRlbnRpZmllcktpbmQuQXR0cmlidXRlLFxuICAgICAgfTtcbiAgICB9KTtcbiAgICBjb25zdCB1c2VkRGlyZWN0aXZlcyA9IHRoaXMuYm91bmRUZW1wbGF0ZS5nZXREaXJlY3RpdmVzT2ZOb2RlKG5vZGUpIHx8IFtdO1xuXG4gICAgY29uc3QgaWRlbnRpZmllciA9IHtcbiAgICAgIG5hbWUsXG4gICAgICBzcGFuOiBhYnNvbHV0ZVNwYW4sXG4gICAgICBraW5kLFxuICAgICAgYXR0cmlidXRlczogbmV3IFNldChhdHRyaWJ1dGVzKSxcbiAgICAgIHVzZWREaXJlY3RpdmVzOiBuZXcgU2V0KHVzZWREaXJlY3RpdmVzLm1hcChkaXIgPT4ge1xuICAgICAgICByZXR1cm4ge1xuICAgICAgICAgIG5vZGU6IGRpci5yZWYubm9kZSxcbiAgICAgICAgICBzZWxlY3RvcjogZGlyLnNlbGVjdG9yLFxuICAgICAgICB9O1xuICAgICAgfSkpLFxuICAgICAgLy8gY2FzdCBiL2MgcHJlLVR5cGVTY3JpcHQgMy41IHVuaW9ucyBhcmVuJ3Qgd2VsbCBkaXNjcmltaW5hdGVkXG4gICAgfSBhcyBFbGVtZW50SWRlbnRpZmllciB8XG4gICAgICAgIFRlbXBsYXRlTm9kZUlkZW50aWZpZXI7XG5cbiAgICB0aGlzLmVsZW1lbnRBbmRUZW1wbGF0ZUlkZW50aWZpZXJDYWNoZS5zZXQobm9kZSwgaWRlbnRpZmllcik7XG4gICAgcmV0dXJuIGlkZW50aWZpZXI7XG4gIH1cblxuICAvKiogQ3JlYXRlcyBhbiBpZGVudGlmaWVyIGZvciBhIHRlbXBsYXRlIHJlZmVyZW5jZSBvciB0ZW1wbGF0ZSB2YXJpYWJsZSB0YXJnZXQuICovXG4gIHByaXZhdGUgdGFyZ2V0VG9JZGVudGlmaWVyKG5vZGU6IFRtcGxBc3RSZWZlcmVuY2V8VG1wbEFzdFZhcmlhYmxlKTogVGFyZ2V0SWRlbnRpZmllciB7XG4gICAgLy8gSWYgdGhpcyBub2RlIGhhcyBhbHJlYWR5IGJlZW4gc2VlbiwgcmV0dXJuIHRoZSBjYWNoZWQgcmVzdWx0LlxuICAgIGlmICh0aGlzLnRhcmdldElkZW50aWZpZXJDYWNoZS5oYXMobm9kZSkpIHtcbiAgICAgIHJldHVybiB0aGlzLnRhcmdldElkZW50aWZpZXJDYWNoZS5nZXQobm9kZSkhO1xuICAgIH1cblxuICAgIGNvbnN0IHtuYW1lLCBzb3VyY2VTcGFufSA9IG5vZGU7XG4gICAgY29uc3Qgc3RhcnQgPSB0aGlzLmdldFN0YXJ0TG9jYXRpb24obmFtZSwgc291cmNlU3Bhbik7XG4gICAgY29uc3Qgc3BhbiA9IG5ldyBBYnNvbHV0ZVNvdXJjZVNwYW4oc3RhcnQsIHN0YXJ0ICsgbmFtZS5sZW5ndGgpO1xuICAgIGxldCBpZGVudGlmaWVyOiBSZWZlcmVuY2VJZGVudGlmaWVyfFZhcmlhYmxlSWRlbnRpZmllcjtcbiAgICBpZiAobm9kZSBpbnN0YW5jZW9mIFRtcGxBc3RSZWZlcmVuY2UpIHtcbiAgICAgIC8vIElmIHRoZSBub2RlIGlzIGEgcmVmZXJlbmNlLCB3ZSBjYXJlIGFib3V0IGl0cyB0YXJnZXQuIFRoZSB0YXJnZXQgY2FuIGJlIGFuIGVsZW1lbnQsIGFcbiAgICAgIC8vIHRlbXBsYXRlLCBhIGRpcmVjdGl2ZSBhcHBsaWVkIG9uIGEgdGVtcGxhdGUgb3IgZWxlbWVudCAoaW4gd2hpY2ggY2FzZSB0aGUgZGlyZWN0aXZlIGZpZWxkXG4gICAgICAvLyBpcyBub24tbnVsbCksIG9yIG5vdGhpbmcgYXQgYWxsLlxuICAgICAgY29uc3QgcmVmVGFyZ2V0ID0gdGhpcy5ib3VuZFRlbXBsYXRlLmdldFJlZmVyZW5jZVRhcmdldChub2RlKTtcbiAgICAgIGxldCB0YXJnZXQgPSBudWxsO1xuICAgICAgaWYgKHJlZlRhcmdldCkge1xuICAgICAgICBpZiAocmVmVGFyZ2V0IGluc3RhbmNlb2YgVG1wbEFzdEVsZW1lbnQgfHwgcmVmVGFyZ2V0IGluc3RhbmNlb2YgVG1wbEFzdFRlbXBsYXRlKSB7XG4gICAgICAgICAgdGFyZ2V0ID0ge1xuICAgICAgICAgICAgbm9kZTogdGhpcy5lbGVtZW50T3JUZW1wbGF0ZVRvSWRlbnRpZmllcihyZWZUYXJnZXQpLFxuICAgICAgICAgICAgZGlyZWN0aXZlOiBudWxsLFxuICAgICAgICAgIH07XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdGFyZ2V0ID0ge1xuICAgICAgICAgICAgbm9kZTogdGhpcy5lbGVtZW50T3JUZW1wbGF0ZVRvSWRlbnRpZmllcihyZWZUYXJnZXQubm9kZSksXG4gICAgICAgICAgICBkaXJlY3RpdmU6IHJlZlRhcmdldC5kaXJlY3RpdmUucmVmLm5vZGUsXG4gICAgICAgICAgfTtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICBpZGVudGlmaWVyID0ge1xuICAgICAgICBuYW1lLFxuICAgICAgICBzcGFuLFxuICAgICAgICBraW5kOiBJZGVudGlmaWVyS2luZC5SZWZlcmVuY2UsXG4gICAgICAgIHRhcmdldCxcbiAgICAgIH07XG4gICAgfSBlbHNlIHtcbiAgICAgIGlkZW50aWZpZXIgPSB7XG4gICAgICAgIG5hbWUsXG4gICAgICAgIHNwYW4sXG4gICAgICAgIGtpbmQ6IElkZW50aWZpZXJLaW5kLlZhcmlhYmxlLFxuICAgICAgfTtcbiAgICB9XG5cbiAgICB0aGlzLnRhcmdldElkZW50aWZpZXJDYWNoZS5zZXQobm9kZSwgaWRlbnRpZmllcik7XG4gICAgcmV0dXJuIGlkZW50aWZpZXI7XG4gIH1cblxuICAvKiogR2V0cyB0aGUgc3RhcnQgbG9jYXRpb24gb2YgYSBzdHJpbmcgaW4gYSBTb3VyY2VTcGFuICovXG4gIHByaXZhdGUgZ2V0U3RhcnRMb2NhdGlvbihuYW1lOiBzdHJpbmcsIGNvbnRleHQ6IFBhcnNlU291cmNlU3Bhbik6IG51bWJlciB7XG4gICAgY29uc3QgbG9jYWxTdHIgPSBjb250ZXh0LnRvU3RyaW5nKCk7XG4gICAgaWYgKCFsb2NhbFN0ci5pbmNsdWRlcyhuYW1lKSkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGBJbXBvc3NpYmxlIHN0YXRlOiBcIiR7bmFtZX1cIiBub3QgZm91bmQgaW4gXCIke2xvY2FsU3RyfVwiYCk7XG4gICAgfVxuICAgIHJldHVybiBjb250ZXh0LnN0YXJ0Lm9mZnNldCArIGxvY2FsU3RyLmluZGV4T2YobmFtZSk7XG4gIH1cblxuICAvKipcbiAgICogVmlzaXRzIGEgbm9kZSdzIGV4cHJlc3Npb24gYW5kIGFkZHMgaXRzIGlkZW50aWZpZXJzLCBpZiBhbnksIHRvIHRoZSB2aXNpdG9yJ3Mgc3RhdGUuXG4gICAqIE9ubHkgQVNUcyB3aXRoIGluZm9ybWF0aW9uIGFib3V0IHRoZSBleHByZXNzaW9uIHNvdXJjZSBhbmQgaXRzIGxvY2F0aW9uIGFyZSB2aXNpdGVkLlxuICAgKlxuICAgKiBAcGFyYW0gbm9kZSBub2RlIHdob3NlIGV4cHJlc3Npb24gdG8gdmlzaXRcbiAgICovXG4gIHByaXZhdGUgdmlzaXRFeHByZXNzaW9uKGFzdDogQVNUKSB7XG4gICAgLy8gT25seSBpbmNsdWRlIEFTVHMgdGhhdCBoYXZlIGluZm9ybWF0aW9uIGFib3V0IHRoZWlyIHNvdXJjZSBhbmQgYWJzb2x1dGUgc291cmNlIHNwYW5zLlxuICAgIGlmIChhc3QgaW5zdGFuY2VvZiBBU1RXaXRoU291cmNlICYmIGFzdC5zb3VyY2UgIT09IG51bGwpIHtcbiAgICAgIC8vIE1ha2UgdGFyZ2V0IHRvIGlkZW50aWZpZXIgbWFwcGluZyBjbG9zdXJlIHN0YXRlZnVsIHRvIHRoaXMgdmlzaXRvciBpbnN0YW5jZS5cbiAgICAgIGNvbnN0IHRhcmdldFRvSWRlbnRpZmllciA9IHRoaXMudGFyZ2V0VG9JZGVudGlmaWVyLmJpbmQodGhpcyk7XG4gICAgICBjb25zdCBhYnNvbHV0ZU9mZnNldCA9IGFzdC5zb3VyY2VTcGFuLnN0YXJ0O1xuICAgICAgY29uc3QgaWRlbnRpZmllcnMgPSBFeHByZXNzaW9uVmlzaXRvci5nZXRJZGVudGlmaWVycyhcbiAgICAgICAgICBhc3QsIGFzdC5zb3VyY2UsIGFic29sdXRlT2Zmc2V0LCB0aGlzLmJvdW5kVGVtcGxhdGUsIHRhcmdldFRvSWRlbnRpZmllcik7XG4gICAgICBpZGVudGlmaWVycy5mb3JFYWNoKGlkID0+IHRoaXMuaWRlbnRpZmllcnMuYWRkKGlkKSk7XG4gICAgfVxuICB9XG59XG5cbi8qKlxuICogVHJhdmVyc2VzIGEgdGVtcGxhdGUgQVNUIGFuZCBidWlsZHMgaWRlbnRpZmllcnMgZGlzY292ZXJlZCBpbiBpdC5cbiAqXG4gKiBAcGFyYW0gYm91bmRUZW1wbGF0ZSBib3VuZCB0ZW1wbGF0ZSB0YXJnZXQsIHdoaWNoIGNhbiBiZSB1c2VkIGZvciBxdWVyeWluZyBleHByZXNzaW9uIHRhcmdldHMuXG4gKiBAcmV0dXJuIGlkZW50aWZpZXJzIGluIHRlbXBsYXRlXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRUZW1wbGF0ZUlkZW50aWZpZXJzKGJvdW5kVGVtcGxhdGU6IEJvdW5kVGFyZ2V0PENvbXBvbmVudE1ldGE+KTpcbiAgICBTZXQ8VG9wTGV2ZWxJZGVudGlmaWVyPiB7XG4gIGNvbnN0IHZpc2l0b3IgPSBuZXcgVGVtcGxhdGVWaXNpdG9yKGJvdW5kVGVtcGxhdGUpO1xuICBpZiAoYm91bmRUZW1wbGF0ZS50YXJnZXQudGVtcGxhdGUgIT09IHVuZGVmaW5lZCkge1xuICAgIHZpc2l0b3IudmlzaXRBbGwoYm91bmRUZW1wbGF0ZS50YXJnZXQudGVtcGxhdGUpO1xuICB9XG4gIHJldHVybiB2aXNpdG9yLmlkZW50aWZpZXJzO1xufVxuIl19