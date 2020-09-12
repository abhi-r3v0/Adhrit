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
        define("@angular/compiler/src/render3/r3_ast", ["require", "exports", "tslib", "@angular/compiler/src/parse_util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    var parse_util_1 = require("@angular/compiler/src/parse_util");
    var Text = /** @class */ (function () {
        function Text(value, sourceSpan) {
            this.value = value;
            this.sourceSpan = sourceSpan;
        }
        Text.prototype.visit = function (visitor) { return visitor.visitText(this); };
        return Text;
    }());
    exports.Text = Text;
    var BoundText = /** @class */ (function () {
        function BoundText(value, sourceSpan, i18n) {
            this.value = value;
            this.sourceSpan = sourceSpan;
            this.i18n = i18n;
        }
        BoundText.prototype.visit = function (visitor) { return visitor.visitBoundText(this); };
        return BoundText;
    }());
    exports.BoundText = BoundText;
    var TextAttribute = /** @class */ (function () {
        function TextAttribute(name, value, sourceSpan, valueSpan, i18n) {
            this.name = name;
            this.value = value;
            this.sourceSpan = sourceSpan;
            this.valueSpan = valueSpan;
            this.i18n = i18n;
        }
        TextAttribute.prototype.visit = function (visitor) { return visitor.visitTextAttribute(this); };
        return TextAttribute;
    }());
    exports.TextAttribute = TextAttribute;
    var BoundAttribute = /** @class */ (function () {
        function BoundAttribute(name, type, securityContext, value, unit, sourceSpan, valueSpan, i18n) {
            this.name = name;
            this.type = type;
            this.securityContext = securityContext;
            this.value = value;
            this.unit = unit;
            this.sourceSpan = sourceSpan;
            this.valueSpan = valueSpan;
            this.i18n = i18n;
        }
        BoundAttribute.fromBoundElementProperty = function (prop, i18n) {
            return new BoundAttribute(prop.name, prop.type, prop.securityContext, prop.value, prop.unit, prop.sourceSpan, prop.valueSpan, i18n);
        };
        BoundAttribute.prototype.visit = function (visitor) { return visitor.visitBoundAttribute(this); };
        return BoundAttribute;
    }());
    exports.BoundAttribute = BoundAttribute;
    var BoundEvent = /** @class */ (function () {
        function BoundEvent(name, type, handler, target, phase, sourceSpan, handlerSpan) {
            this.name = name;
            this.type = type;
            this.handler = handler;
            this.target = target;
            this.phase = phase;
            this.sourceSpan = sourceSpan;
            this.handlerSpan = handlerSpan;
        }
        BoundEvent.fromParsedEvent = function (event) {
            var target = event.type === 0 /* Regular */ ? event.targetOrPhase : null;
            var phase = event.type === 1 /* Animation */ ? event.targetOrPhase : null;
            return new BoundEvent(event.name, event.type, event.handler, target, phase, event.sourceSpan, event.handlerSpan);
        };
        BoundEvent.prototype.visit = function (visitor) { return visitor.visitBoundEvent(this); };
        return BoundEvent;
    }());
    exports.BoundEvent = BoundEvent;
    var Element = /** @class */ (function () {
        function Element(name, attributes, inputs, outputs, children, references, sourceSpan, startSourceSpan, endSourceSpan, i18n) {
            this.name = name;
            this.attributes = attributes;
            this.inputs = inputs;
            this.outputs = outputs;
            this.children = children;
            this.references = references;
            this.sourceSpan = sourceSpan;
            this.startSourceSpan = startSourceSpan;
            this.endSourceSpan = endSourceSpan;
            this.i18n = i18n;
            // If the element is empty then the source span should include any closing tag
            if (children.length === 0 && startSourceSpan && endSourceSpan) {
                this.sourceSpan = new parse_util_1.ParseSourceSpan(sourceSpan.start, endSourceSpan.end);
            }
        }
        Element.prototype.visit = function (visitor) { return visitor.visitElement(this); };
        return Element;
    }());
    exports.Element = Element;
    var Template = /** @class */ (function () {
        function Template(tagName, attributes, inputs, outputs, templateAttrs, children, references, variables, sourceSpan, startSourceSpan, endSourceSpan, i18n) {
            this.tagName = tagName;
            this.attributes = attributes;
            this.inputs = inputs;
            this.outputs = outputs;
            this.templateAttrs = templateAttrs;
            this.children = children;
            this.references = references;
            this.variables = variables;
            this.sourceSpan = sourceSpan;
            this.startSourceSpan = startSourceSpan;
            this.endSourceSpan = endSourceSpan;
            this.i18n = i18n;
        }
        Template.prototype.visit = function (visitor) { return visitor.visitTemplate(this); };
        return Template;
    }());
    exports.Template = Template;
    var Content = /** @class */ (function () {
        function Content(selector, attributes, sourceSpan, i18n) {
            this.selector = selector;
            this.attributes = attributes;
            this.sourceSpan = sourceSpan;
            this.i18n = i18n;
        }
        Content.prototype.visit = function (visitor) { return visitor.visitContent(this); };
        return Content;
    }());
    exports.Content = Content;
    var Variable = /** @class */ (function () {
        function Variable(name, value, sourceSpan, valueSpan) {
            this.name = name;
            this.value = value;
            this.sourceSpan = sourceSpan;
            this.valueSpan = valueSpan;
        }
        Variable.prototype.visit = function (visitor) { return visitor.visitVariable(this); };
        return Variable;
    }());
    exports.Variable = Variable;
    var Reference = /** @class */ (function () {
        function Reference(name, value, sourceSpan, valueSpan) {
            this.name = name;
            this.value = value;
            this.sourceSpan = sourceSpan;
            this.valueSpan = valueSpan;
        }
        Reference.prototype.visit = function (visitor) { return visitor.visitReference(this); };
        return Reference;
    }());
    exports.Reference = Reference;
    var Icu = /** @class */ (function () {
        function Icu(vars, placeholders, sourceSpan, i18n) {
            this.vars = vars;
            this.placeholders = placeholders;
            this.sourceSpan = sourceSpan;
            this.i18n = i18n;
        }
        Icu.prototype.visit = function (visitor) { return visitor.visitIcu(this); };
        return Icu;
    }());
    exports.Icu = Icu;
    var NullVisitor = /** @class */ (function () {
        function NullVisitor() {
        }
        NullVisitor.prototype.visitElement = function (element) { };
        NullVisitor.prototype.visitTemplate = function (template) { };
        NullVisitor.prototype.visitContent = function (content) { };
        NullVisitor.prototype.visitVariable = function (variable) { };
        NullVisitor.prototype.visitReference = function (reference) { };
        NullVisitor.prototype.visitTextAttribute = function (attribute) { };
        NullVisitor.prototype.visitBoundAttribute = function (attribute) { };
        NullVisitor.prototype.visitBoundEvent = function (attribute) { };
        NullVisitor.prototype.visitText = function (text) { };
        NullVisitor.prototype.visitBoundText = function (text) { };
        NullVisitor.prototype.visitIcu = function (icu) { };
        return NullVisitor;
    }());
    exports.NullVisitor = NullVisitor;
    var RecursiveVisitor = /** @class */ (function () {
        function RecursiveVisitor() {
        }
        RecursiveVisitor.prototype.visitElement = function (element) {
            visitAll(this, element.attributes);
            visitAll(this, element.children);
            visitAll(this, element.references);
        };
        RecursiveVisitor.prototype.visitTemplate = function (template) {
            visitAll(this, template.attributes);
            visitAll(this, template.children);
            visitAll(this, template.references);
            visitAll(this, template.variables);
        };
        RecursiveVisitor.prototype.visitContent = function (content) { };
        RecursiveVisitor.prototype.visitVariable = function (variable) { };
        RecursiveVisitor.prototype.visitReference = function (reference) { };
        RecursiveVisitor.prototype.visitTextAttribute = function (attribute) { };
        RecursiveVisitor.prototype.visitBoundAttribute = function (attribute) { };
        RecursiveVisitor.prototype.visitBoundEvent = function (attribute) { };
        RecursiveVisitor.prototype.visitText = function (text) { };
        RecursiveVisitor.prototype.visitBoundText = function (text) { };
        RecursiveVisitor.prototype.visitIcu = function (icu) { };
        return RecursiveVisitor;
    }());
    exports.RecursiveVisitor = RecursiveVisitor;
    var TransformVisitor = /** @class */ (function () {
        function TransformVisitor() {
        }
        TransformVisitor.prototype.visitElement = function (element) {
            var newAttributes = transformAll(this, element.attributes);
            var newInputs = transformAll(this, element.inputs);
            var newOutputs = transformAll(this, element.outputs);
            var newChildren = transformAll(this, element.children);
            var newReferences = transformAll(this, element.references);
            if (newAttributes != element.attributes || newInputs != element.inputs ||
                newOutputs != element.outputs || newChildren != element.children ||
                newReferences != element.references) {
                return new Element(element.name, newAttributes, newInputs, newOutputs, newChildren, newReferences, element.sourceSpan, element.startSourceSpan, element.endSourceSpan);
            }
            return element;
        };
        TransformVisitor.prototype.visitTemplate = function (template) {
            var newAttributes = transformAll(this, template.attributes);
            var newInputs = transformAll(this, template.inputs);
            var newOutputs = transformAll(this, template.outputs);
            var newTemplateAttrs = transformAll(this, template.templateAttrs);
            var newChildren = transformAll(this, template.children);
            var newReferences = transformAll(this, template.references);
            var newVariables = transformAll(this, template.variables);
            if (newAttributes != template.attributes || newInputs != template.inputs ||
                newOutputs != template.outputs || newTemplateAttrs != template.templateAttrs ||
                newChildren != template.children || newReferences != template.references ||
                newVariables != template.variables) {
                return new Template(template.tagName, newAttributes, newInputs, newOutputs, newTemplateAttrs, newChildren, newReferences, newVariables, template.sourceSpan, template.startSourceSpan, template.endSourceSpan);
            }
            return template;
        };
        TransformVisitor.prototype.visitContent = function (content) { return content; };
        TransformVisitor.prototype.visitVariable = function (variable) { return variable; };
        TransformVisitor.prototype.visitReference = function (reference) { return reference; };
        TransformVisitor.prototype.visitTextAttribute = function (attribute) { return attribute; };
        TransformVisitor.prototype.visitBoundAttribute = function (attribute) { return attribute; };
        TransformVisitor.prototype.visitBoundEvent = function (attribute) { return attribute; };
        TransformVisitor.prototype.visitText = function (text) { return text; };
        TransformVisitor.prototype.visitBoundText = function (text) { return text; };
        TransformVisitor.prototype.visitIcu = function (icu) { return icu; };
        return TransformVisitor;
    }());
    exports.TransformVisitor = TransformVisitor;
    function visitAll(visitor, nodes) {
        var e_1, _a, e_2, _b;
        var result = [];
        if (visitor.visit) {
            try {
                for (var nodes_1 = tslib_1.__values(nodes), nodes_1_1 = nodes_1.next(); !nodes_1_1.done; nodes_1_1 = nodes_1.next()) {
                    var node = nodes_1_1.value;
                    var newNode = visitor.visit(node) || node.visit(visitor);
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (nodes_1_1 && !nodes_1_1.done && (_a = nodes_1.return)) _a.call(nodes_1);
                }
                finally { if (e_1) throw e_1.error; }
            }
        }
        else {
            try {
                for (var nodes_2 = tslib_1.__values(nodes), nodes_2_1 = nodes_2.next(); !nodes_2_1.done; nodes_2_1 = nodes_2.next()) {
                    var node = nodes_2_1.value;
                    var newNode = node.visit(visitor);
                    if (newNode) {
                        result.push(newNode);
                    }
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (nodes_2_1 && !nodes_2_1.done && (_b = nodes_2.return)) _b.call(nodes_2);
                }
                finally { if (e_2) throw e_2.error; }
            }
        }
        return result;
    }
    exports.visitAll = visitAll;
    function transformAll(visitor, nodes) {
        var e_3, _a;
        var result = [];
        var changed = false;
        try {
            for (var nodes_3 = tslib_1.__values(nodes), nodes_3_1 = nodes_3.next(); !nodes_3_1.done; nodes_3_1 = nodes_3.next()) {
                var node = nodes_3_1.value;
                var newNode = node.visit(visitor);
                if (newNode) {
                    result.push(newNode);
                }
                changed = changed || newNode != node;
            }
        }
        catch (e_3_1) { e_3 = { error: e_3_1 }; }
        finally {
            try {
                if (nodes_3_1 && !nodes_3_1.done && (_a = nodes_3.return)) _a.call(nodes_3);
            }
            finally { if (e_3) throw e_3.error; }
        }
        return changed ? result : nodes;
    }
    exports.transformAll = transformAll;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicjNfYXN0LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvc3JjL3JlbmRlcjMvcjNfYXN0LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQUtILCtEQUE4QztJQU85QztRQUNFLGNBQW1CLEtBQWEsRUFBUyxVQUEyQjtZQUFqRCxVQUFLLEdBQUwsS0FBSyxDQUFRO1lBQVMsZUFBVSxHQUFWLFVBQVUsQ0FBaUI7UUFBRyxDQUFDO1FBQ3hFLG9CQUFLLEdBQUwsVUFBYyxPQUF3QixJQUFZLE9BQU8sT0FBTyxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDckYsV0FBQztJQUFELENBQUMsQUFIRCxJQUdDO0lBSFksb0JBQUk7SUFLakI7UUFDRSxtQkFBbUIsS0FBVSxFQUFTLFVBQTJCLEVBQVMsSUFBZTtZQUF0RSxVQUFLLEdBQUwsS0FBSyxDQUFLO1lBQVMsZUFBVSxHQUFWLFVBQVUsQ0FBaUI7WUFBUyxTQUFJLEdBQUosSUFBSSxDQUFXO1FBQUcsQ0FBQztRQUM3Rix5QkFBSyxHQUFMLFVBQWMsT0FBd0IsSUFBWSxPQUFPLE9BQU8sQ0FBQyxjQUFjLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQzFGLGdCQUFDO0lBQUQsQ0FBQyxBQUhELElBR0M7SUFIWSw4QkFBUztJQUt0QjtRQUNFLHVCQUNXLElBQVksRUFBUyxLQUFhLEVBQVMsVUFBMkIsRUFDdEUsU0FBMkIsRUFBUyxJQUFlO1lBRG5ELFNBQUksR0FBSixJQUFJLENBQVE7WUFBUyxVQUFLLEdBQUwsS0FBSyxDQUFRO1lBQVMsZUFBVSxHQUFWLFVBQVUsQ0FBaUI7WUFDdEUsY0FBUyxHQUFULFNBQVMsQ0FBa0I7WUFBUyxTQUFJLEdBQUosSUFBSSxDQUFXO1FBQUcsQ0FBQztRQUNsRSw2QkFBSyxHQUFMLFVBQWMsT0FBd0IsSUFBWSxPQUFPLE9BQU8sQ0FBQyxrQkFBa0IsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDOUYsb0JBQUM7SUFBRCxDQUFDLEFBTEQsSUFLQztJQUxZLHNDQUFhO0lBTzFCO1FBQ0Usd0JBQ1csSUFBWSxFQUFTLElBQWlCLEVBQVMsZUFBZ0MsRUFDL0UsS0FBVSxFQUFTLElBQWlCLEVBQVMsVUFBMkIsRUFDeEUsU0FBMkIsRUFBUyxJQUFlO1lBRm5ELFNBQUksR0FBSixJQUFJLENBQVE7WUFBUyxTQUFJLEdBQUosSUFBSSxDQUFhO1lBQVMsb0JBQWUsR0FBZixlQUFlLENBQWlCO1lBQy9FLFVBQUssR0FBTCxLQUFLLENBQUs7WUFBUyxTQUFJLEdBQUosSUFBSSxDQUFhO1lBQVMsZUFBVSxHQUFWLFVBQVUsQ0FBaUI7WUFDeEUsY0FBUyxHQUFULFNBQVMsQ0FBa0I7WUFBUyxTQUFJLEdBQUosSUFBSSxDQUFXO1FBQUcsQ0FBQztRQUUzRCx1Q0FBd0IsR0FBL0IsVUFBZ0MsSUFBMEIsRUFBRSxJQUFlO1lBQ3pFLE9BQU8sSUFBSSxjQUFjLENBQ3JCLElBQUksQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLElBQUksRUFBRSxJQUFJLENBQUMsZUFBZSxFQUFFLElBQUksQ0FBQyxLQUFLLEVBQUUsSUFBSSxDQUFDLElBQUksRUFBRSxJQUFJLENBQUMsVUFBVSxFQUNsRixJQUFJLENBQUMsU0FBUyxFQUFFLElBQUksQ0FBQyxDQUFDO1FBQzVCLENBQUM7UUFFRCw4QkFBSyxHQUFMLFVBQWMsT0FBd0IsSUFBWSxPQUFPLE9BQU8sQ0FBQyxtQkFBbUIsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDL0YscUJBQUM7SUFBRCxDQUFDLEFBYkQsSUFhQztJQWJZLHdDQUFjO0lBZTNCO1FBQ0Usb0JBQ1csSUFBWSxFQUFTLElBQXFCLEVBQVMsT0FBWSxFQUMvRCxNQUFtQixFQUFTLEtBQWtCLEVBQVMsVUFBMkIsRUFDbEYsV0FBNEI7WUFGNUIsU0FBSSxHQUFKLElBQUksQ0FBUTtZQUFTLFNBQUksR0FBSixJQUFJLENBQWlCO1lBQVMsWUFBTyxHQUFQLE9BQU8sQ0FBSztZQUMvRCxXQUFNLEdBQU4sTUFBTSxDQUFhO1lBQVMsVUFBSyxHQUFMLEtBQUssQ0FBYTtZQUFTLGVBQVUsR0FBVixVQUFVLENBQWlCO1lBQ2xGLGdCQUFXLEdBQVgsV0FBVyxDQUFpQjtRQUFHLENBQUM7UUFFcEMsMEJBQWUsR0FBdEIsVUFBdUIsS0FBa0I7WUFDdkMsSUFBTSxNQUFNLEdBQWdCLEtBQUssQ0FBQyxJQUFJLG9CQUE0QixDQUFDLENBQUMsQ0FBQyxLQUFLLENBQUMsYUFBYSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUM7WUFDaEcsSUFBTSxLQUFLLEdBQ1AsS0FBSyxDQUFDLElBQUksc0JBQThCLENBQUMsQ0FBQyxDQUFDLEtBQUssQ0FBQyxhQUFhLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQztZQUMxRSxPQUFPLElBQUksVUFBVSxDQUNqQixLQUFLLENBQUMsSUFBSSxFQUFFLEtBQUssQ0FBQyxJQUFJLEVBQUUsS0FBSyxDQUFDLE9BQU8sRUFBRSxNQUFNLEVBQUUsS0FBSyxFQUFFLEtBQUssQ0FBQyxVQUFVLEVBQUUsS0FBSyxDQUFDLFdBQVcsQ0FBQyxDQUFDO1FBQ2pHLENBQUM7UUFFRCwwQkFBSyxHQUFMLFVBQWMsT0FBd0IsSUFBWSxPQUFPLE9BQU8sQ0FBQyxlQUFlLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQzNGLGlCQUFDO0lBQUQsQ0FBQyxBQWZELElBZUM7SUFmWSxnQ0FBVTtJQWlCdkI7UUFDRSxpQkFDVyxJQUFZLEVBQVMsVUFBMkIsRUFBUyxNQUF3QixFQUNqRixPQUFxQixFQUFTLFFBQWdCLEVBQVMsVUFBdUIsRUFDOUUsVUFBMkIsRUFBUyxlQUFxQyxFQUN6RSxhQUFtQyxFQUFTLElBQWU7WUFIM0QsU0FBSSxHQUFKLElBQUksQ0FBUTtZQUFTLGVBQVUsR0FBVixVQUFVLENBQWlCO1lBQVMsV0FBTSxHQUFOLE1BQU0sQ0FBa0I7WUFDakYsWUFBTyxHQUFQLE9BQU8sQ0FBYztZQUFTLGFBQVEsR0FBUixRQUFRLENBQVE7WUFBUyxlQUFVLEdBQVYsVUFBVSxDQUFhO1lBQzlFLGVBQVUsR0FBVixVQUFVLENBQWlCO1lBQVMsb0JBQWUsR0FBZixlQUFlLENBQXNCO1lBQ3pFLGtCQUFhLEdBQWIsYUFBYSxDQUFzQjtZQUFTLFNBQUksR0FBSixJQUFJLENBQVc7WUFDcEUsOEVBQThFO1lBQzlFLElBQUksUUFBUSxDQUFDLE1BQU0sS0FBSyxDQUFDLElBQUksZUFBZSxJQUFJLGFBQWEsRUFBRTtnQkFDN0QsSUFBSSxDQUFDLFVBQVUsR0FBRyxJQUFJLDRCQUFlLENBQUMsVUFBVSxDQUFDLEtBQUssRUFBRSxhQUFhLENBQUMsR0FBRyxDQUFDLENBQUM7YUFDNUU7UUFDSCxDQUFDO1FBQ0QsdUJBQUssR0FBTCxVQUFjLE9BQXdCLElBQVksT0FBTyxPQUFPLENBQUMsWUFBWSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUN4RixjQUFDO0lBQUQsQ0FBQyxBQVpELElBWUM7SUFaWSwwQkFBTztJQWNwQjtRQUNFLGtCQUNXLE9BQWUsRUFBUyxVQUEyQixFQUFTLE1BQXdCLEVBQ3BGLE9BQXFCLEVBQVMsYUFBK0MsRUFDN0UsUUFBZ0IsRUFBUyxVQUF1QixFQUFTLFNBQXFCLEVBQzlFLFVBQTJCLEVBQVMsZUFBcUMsRUFDekUsYUFBbUMsRUFBUyxJQUFlO1lBSjNELFlBQU8sR0FBUCxPQUFPLENBQVE7WUFBUyxlQUFVLEdBQVYsVUFBVSxDQUFpQjtZQUFTLFdBQU0sR0FBTixNQUFNLENBQWtCO1lBQ3BGLFlBQU8sR0FBUCxPQUFPLENBQWM7WUFBUyxrQkFBYSxHQUFiLGFBQWEsQ0FBa0M7WUFDN0UsYUFBUSxHQUFSLFFBQVEsQ0FBUTtZQUFTLGVBQVUsR0FBVixVQUFVLENBQWE7WUFBUyxjQUFTLEdBQVQsU0FBUyxDQUFZO1lBQzlFLGVBQVUsR0FBVixVQUFVLENBQWlCO1lBQVMsb0JBQWUsR0FBZixlQUFlLENBQXNCO1lBQ3pFLGtCQUFhLEdBQWIsYUFBYSxDQUFzQjtZQUFTLFNBQUksR0FBSixJQUFJLENBQVc7UUFBRyxDQUFDO1FBQzFFLHdCQUFLLEdBQUwsVUFBYyxPQUF3QixJQUFZLE9BQU8sT0FBTyxDQUFDLGFBQWEsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDekYsZUFBQztJQUFELENBQUMsQUFSRCxJQVFDO0lBUlksNEJBQVE7SUFVckI7UUFDRSxpQkFDVyxRQUFnQixFQUFTLFVBQTJCLEVBQ3BELFVBQTJCLEVBQVMsSUFBZTtZQURuRCxhQUFRLEdBQVIsUUFBUSxDQUFRO1lBQVMsZUFBVSxHQUFWLFVBQVUsQ0FBaUI7WUFDcEQsZUFBVSxHQUFWLFVBQVUsQ0FBaUI7WUFBUyxTQUFJLEdBQUosSUFBSSxDQUFXO1FBQUcsQ0FBQztRQUNsRSx1QkFBSyxHQUFMLFVBQWMsT0FBd0IsSUFBWSxPQUFPLE9BQU8sQ0FBQyxZQUFZLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQ3hGLGNBQUM7SUFBRCxDQUFDLEFBTEQsSUFLQztJQUxZLDBCQUFPO0lBT3BCO1FBQ0Usa0JBQ1csSUFBWSxFQUFTLEtBQWEsRUFBUyxVQUEyQixFQUN0RSxTQUEyQjtZQUQzQixTQUFJLEdBQUosSUFBSSxDQUFRO1lBQVMsVUFBSyxHQUFMLEtBQUssQ0FBUTtZQUFTLGVBQVUsR0FBVixVQUFVLENBQWlCO1lBQ3RFLGNBQVMsR0FBVCxTQUFTLENBQWtCO1FBQUcsQ0FBQztRQUMxQyx3QkFBSyxHQUFMLFVBQWMsT0FBd0IsSUFBWSxPQUFPLE9BQU8sQ0FBQyxhQUFhLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQ3pGLGVBQUM7SUFBRCxDQUFDLEFBTEQsSUFLQztJQUxZLDRCQUFRO0lBT3JCO1FBQ0UsbUJBQ1csSUFBWSxFQUFTLEtBQWEsRUFBUyxVQUEyQixFQUN0RSxTQUEyQjtZQUQzQixTQUFJLEdBQUosSUFBSSxDQUFRO1lBQVMsVUFBSyxHQUFMLEtBQUssQ0FBUTtZQUFTLGVBQVUsR0FBVixVQUFVLENBQWlCO1lBQ3RFLGNBQVMsR0FBVCxTQUFTLENBQWtCO1FBQUcsQ0FBQztRQUMxQyx5QkFBSyxHQUFMLFVBQWMsT0FBd0IsSUFBWSxPQUFPLE9BQU8sQ0FBQyxjQUFjLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQzFGLGdCQUFDO0lBQUQsQ0FBQyxBQUxELElBS0M7SUFMWSw4QkFBUztJQU90QjtRQUNFLGFBQ1csSUFBaUMsRUFDakMsWUFBZ0QsRUFBUyxVQUEyQixFQUNwRixJQUFlO1lBRmYsU0FBSSxHQUFKLElBQUksQ0FBNkI7WUFDakMsaUJBQVksR0FBWixZQUFZLENBQW9DO1lBQVMsZUFBVSxHQUFWLFVBQVUsQ0FBaUI7WUFDcEYsU0FBSSxHQUFKLElBQUksQ0FBVztRQUFHLENBQUM7UUFDOUIsbUJBQUssR0FBTCxVQUFjLE9BQXdCLElBQVksT0FBTyxPQUFPLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNwRixVQUFDO0lBQUQsQ0FBQyxBQU5ELElBTUM7SUFOWSxrQkFBRztJQTBCaEI7UUFBQTtRQVlBLENBQUM7UUFYQyxrQ0FBWSxHQUFaLFVBQWEsT0FBZ0IsSUFBUyxDQUFDO1FBQ3ZDLG1DQUFhLEdBQWIsVUFBYyxRQUFrQixJQUFTLENBQUM7UUFDMUMsa0NBQVksR0FBWixVQUFhLE9BQWdCLElBQVMsQ0FBQztRQUN2QyxtQ0FBYSxHQUFiLFVBQWMsUUFBa0IsSUFBUyxDQUFDO1FBQzFDLG9DQUFjLEdBQWQsVUFBZSxTQUFvQixJQUFTLENBQUM7UUFDN0Msd0NBQWtCLEdBQWxCLFVBQW1CLFNBQXdCLElBQVMsQ0FBQztRQUNyRCx5Q0FBbUIsR0FBbkIsVUFBb0IsU0FBeUIsSUFBUyxDQUFDO1FBQ3ZELHFDQUFlLEdBQWYsVUFBZ0IsU0FBcUIsSUFBUyxDQUFDO1FBQy9DLCtCQUFTLEdBQVQsVUFBVSxJQUFVLElBQVMsQ0FBQztRQUM5QixvQ0FBYyxHQUFkLFVBQWUsSUFBZSxJQUFTLENBQUM7UUFDeEMsOEJBQVEsR0FBUixVQUFTLEdBQVEsSUFBUyxDQUFDO1FBQzdCLGtCQUFDO0lBQUQsQ0FBQyxBQVpELElBWUM7SUFaWSxrQ0FBVztJQWN4QjtRQUFBO1FBcUJBLENBQUM7UUFwQkMsdUNBQVksR0FBWixVQUFhLE9BQWdCO1lBQzNCLFFBQVEsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLFVBQVUsQ0FBQyxDQUFDO1lBQ25DLFFBQVEsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLFFBQVEsQ0FBQyxDQUFDO1lBQ2pDLFFBQVEsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLFVBQVUsQ0FBQyxDQUFDO1FBQ3JDLENBQUM7UUFDRCx3Q0FBYSxHQUFiLFVBQWMsUUFBa0I7WUFDOUIsUUFBUSxDQUFDLElBQUksRUFBRSxRQUFRLENBQUMsVUFBVSxDQUFDLENBQUM7WUFDcEMsUUFBUSxDQUFDLElBQUksRUFBRSxRQUFRLENBQUMsUUFBUSxDQUFDLENBQUM7WUFDbEMsUUFBUSxDQUFDLElBQUksRUFBRSxRQUFRLENBQUMsVUFBVSxDQUFDLENBQUM7WUFDcEMsUUFBUSxDQUFDLElBQUksRUFBRSxRQUFRLENBQUMsU0FBUyxDQUFDLENBQUM7UUFDckMsQ0FBQztRQUNELHVDQUFZLEdBQVosVUFBYSxPQUFnQixJQUFTLENBQUM7UUFDdkMsd0NBQWEsR0FBYixVQUFjLFFBQWtCLElBQVMsQ0FBQztRQUMxQyx5Q0FBYyxHQUFkLFVBQWUsU0FBb0IsSUFBUyxDQUFDO1FBQzdDLDZDQUFrQixHQUFsQixVQUFtQixTQUF3QixJQUFTLENBQUM7UUFDckQsOENBQW1CLEdBQW5CLFVBQW9CLFNBQXlCLElBQVMsQ0FBQztRQUN2RCwwQ0FBZSxHQUFmLFVBQWdCLFNBQXFCLElBQVMsQ0FBQztRQUMvQyxvQ0FBUyxHQUFULFVBQVUsSUFBVSxJQUFTLENBQUM7UUFDOUIseUNBQWMsR0FBZCxVQUFlLElBQWUsSUFBUyxDQUFDO1FBQ3hDLG1DQUFRLEdBQVIsVUFBUyxHQUFRLElBQVMsQ0FBQztRQUM3Qix1QkFBQztJQUFELENBQUMsQUFyQkQsSUFxQkM7SUFyQlksNENBQWdCO0lBdUI3QjtRQUFBO1FBK0NBLENBQUM7UUE5Q0MsdUNBQVksR0FBWixVQUFhLE9BQWdCO1lBQzNCLElBQU0sYUFBYSxHQUFHLFlBQVksQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLFVBQVUsQ0FBQyxDQUFDO1lBQzdELElBQU0sU0FBUyxHQUFHLFlBQVksQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLE1BQU0sQ0FBQyxDQUFDO1lBQ3JELElBQU0sVUFBVSxHQUFHLFlBQVksQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLE9BQU8sQ0FBQyxDQUFDO1lBQ3ZELElBQU0sV0FBVyxHQUFHLFlBQVksQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLFFBQVEsQ0FBQyxDQUFDO1lBQ3pELElBQU0sYUFBYSxHQUFHLFlBQVksQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLFVBQVUsQ0FBQyxDQUFDO1lBQzdELElBQUksYUFBYSxJQUFJLE9BQU8sQ0FBQyxVQUFVLElBQUksU0FBUyxJQUFJLE9BQU8sQ0FBQyxNQUFNO2dCQUNsRSxVQUFVLElBQUksT0FBTyxDQUFDLE9BQU8sSUFBSSxXQUFXLElBQUksT0FBTyxDQUFDLFFBQVE7Z0JBQ2hFLGFBQWEsSUFBSSxPQUFPLENBQUMsVUFBVSxFQUFFO2dCQUN2QyxPQUFPLElBQUksT0FBTyxDQUNkLE9BQU8sQ0FBQyxJQUFJLEVBQUUsYUFBYSxFQUFFLFNBQVMsRUFBRSxVQUFVLEVBQUUsV0FBVyxFQUFFLGFBQWEsRUFDOUUsT0FBTyxDQUFDLFVBQVUsRUFBRSxPQUFPLENBQUMsZUFBZSxFQUFFLE9BQU8sQ0FBQyxhQUFhLENBQUMsQ0FBQzthQUN6RTtZQUNELE9BQU8sT0FBTyxDQUFDO1FBQ2pCLENBQUM7UUFFRCx3Q0FBYSxHQUFiLFVBQWMsUUFBa0I7WUFDOUIsSUFBTSxhQUFhLEdBQUcsWUFBWSxDQUFDLElBQUksRUFBRSxRQUFRLENBQUMsVUFBVSxDQUFDLENBQUM7WUFDOUQsSUFBTSxTQUFTLEdBQUcsWUFBWSxDQUFDLElBQUksRUFBRSxRQUFRLENBQUMsTUFBTSxDQUFDLENBQUM7WUFDdEQsSUFBTSxVQUFVLEdBQUcsWUFBWSxDQUFDLElBQUksRUFBRSxRQUFRLENBQUMsT0FBTyxDQUFDLENBQUM7WUFDeEQsSUFBTSxnQkFBZ0IsR0FBRyxZQUFZLENBQUMsSUFBSSxFQUFFLFFBQVEsQ0FBQyxhQUFhLENBQUMsQ0FBQztZQUNwRSxJQUFNLFdBQVcsR0FBRyxZQUFZLENBQUMsSUFBSSxFQUFFLFFBQVEsQ0FBQyxRQUFRLENBQUMsQ0FBQztZQUMxRCxJQUFNLGFBQWEsR0FBRyxZQUFZLENBQUMsSUFBSSxFQUFFLFFBQVEsQ0FBQyxVQUFVLENBQUMsQ0FBQztZQUM5RCxJQUFNLFlBQVksR0FBRyxZQUFZLENBQUMsSUFBSSxFQUFFLFFBQVEsQ0FBQyxTQUFTLENBQUMsQ0FBQztZQUM1RCxJQUFJLGFBQWEsSUFBSSxRQUFRLENBQUMsVUFBVSxJQUFJLFNBQVMsSUFBSSxRQUFRLENBQUMsTUFBTTtnQkFDcEUsVUFBVSxJQUFJLFFBQVEsQ0FBQyxPQUFPLElBQUksZ0JBQWdCLElBQUksUUFBUSxDQUFDLGFBQWE7Z0JBQzVFLFdBQVcsSUFBSSxRQUFRLENBQUMsUUFBUSxJQUFJLGFBQWEsSUFBSSxRQUFRLENBQUMsVUFBVTtnQkFDeEUsWUFBWSxJQUFJLFFBQVEsQ0FBQyxTQUFTLEVBQUU7Z0JBQ3RDLE9BQU8sSUFBSSxRQUFRLENBQ2YsUUFBUSxDQUFDLE9BQU8sRUFBRSxhQUFhLEVBQUUsU0FBUyxFQUFFLFVBQVUsRUFBRSxnQkFBZ0IsRUFBRSxXQUFXLEVBQ3JGLGFBQWEsRUFBRSxZQUFZLEVBQUUsUUFBUSxDQUFDLFVBQVUsRUFBRSxRQUFRLENBQUMsZUFBZSxFQUMxRSxRQUFRLENBQUMsYUFBYSxDQUFDLENBQUM7YUFDN0I7WUFDRCxPQUFPLFFBQVEsQ0FBQztRQUNsQixDQUFDO1FBRUQsdUNBQVksR0FBWixVQUFhLE9BQWdCLElBQVUsT0FBTyxPQUFPLENBQUMsQ0FBQyxDQUFDO1FBRXhELHdDQUFhLEdBQWIsVUFBYyxRQUFrQixJQUFVLE9BQU8sUUFBUSxDQUFDLENBQUMsQ0FBQztRQUM1RCx5Q0FBYyxHQUFkLFVBQWUsU0FBb0IsSUFBVSxPQUFPLFNBQVMsQ0FBQyxDQUFDLENBQUM7UUFDaEUsNkNBQWtCLEdBQWxCLFVBQW1CLFNBQXdCLElBQVUsT0FBTyxTQUFTLENBQUMsQ0FBQyxDQUFDO1FBQ3hFLDhDQUFtQixHQUFuQixVQUFvQixTQUF5QixJQUFVLE9BQU8sU0FBUyxDQUFDLENBQUMsQ0FBQztRQUMxRSwwQ0FBZSxHQUFmLFVBQWdCLFNBQXFCLElBQVUsT0FBTyxTQUFTLENBQUMsQ0FBQyxDQUFDO1FBQ2xFLG9DQUFTLEdBQVQsVUFBVSxJQUFVLElBQVUsT0FBTyxJQUFJLENBQUMsQ0FBQyxDQUFDO1FBQzVDLHlDQUFjLEdBQWQsVUFBZSxJQUFlLElBQVUsT0FBTyxJQUFJLENBQUMsQ0FBQyxDQUFDO1FBQ3RELG1DQUFRLEdBQVIsVUFBUyxHQUFRLElBQVUsT0FBTyxHQUFHLENBQUMsQ0FBQyxDQUFDO1FBQzFDLHVCQUFDO0lBQUQsQ0FBQyxBQS9DRCxJQStDQztJQS9DWSw0Q0FBZ0I7SUFpRDdCLFNBQWdCLFFBQVEsQ0FBUyxPQUF3QixFQUFFLEtBQWE7O1FBQ3RFLElBQU0sTUFBTSxHQUFhLEVBQUUsQ0FBQztRQUM1QixJQUFJLE9BQU8sQ0FBQyxLQUFLLEVBQUU7O2dCQUNqQixLQUFtQixJQUFBLFVBQUEsaUJBQUEsS0FBSyxDQUFBLDRCQUFBLCtDQUFFO29CQUFyQixJQUFNLElBQUksa0JBQUE7b0JBQ2IsSUFBTSxPQUFPLEdBQUcsT0FBTyxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsSUFBSSxJQUFJLENBQUMsS0FBSyxDQUFDLE9BQU8sQ0FBQyxDQUFDO2lCQUM1RDs7Ozs7Ozs7O1NBQ0Y7YUFBTTs7Z0JBQ0wsS0FBbUIsSUFBQSxVQUFBLGlCQUFBLEtBQUssQ0FBQSw0QkFBQSwrQ0FBRTtvQkFBckIsSUFBTSxJQUFJLGtCQUFBO29CQUNiLElBQU0sT0FBTyxHQUFHLElBQUksQ0FBQyxLQUFLLENBQUMsT0FBTyxDQUFDLENBQUM7b0JBQ3BDLElBQUksT0FBTyxFQUFFO3dCQUNYLE1BQU0sQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUM7cUJBQ3RCO2lCQUNGOzs7Ozs7Ozs7U0FDRjtRQUNELE9BQU8sTUFBTSxDQUFDO0lBQ2hCLENBQUM7SUFmRCw0QkFlQztJQUVELFNBQWdCLFlBQVksQ0FDeEIsT0FBc0IsRUFBRSxLQUFlOztRQUN6QyxJQUFNLE1BQU0sR0FBYSxFQUFFLENBQUM7UUFDNUIsSUFBSSxPQUFPLEdBQUcsS0FBSyxDQUFDOztZQUNwQixLQUFtQixJQUFBLFVBQUEsaUJBQUEsS0FBSyxDQUFBLDRCQUFBLCtDQUFFO2dCQUFyQixJQUFNLElBQUksa0JBQUE7Z0JBQ2IsSUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxPQUFPLENBQUMsQ0FBQztnQkFDcEMsSUFBSSxPQUFPLEVBQUU7b0JBQ1gsTUFBTSxDQUFDLElBQUksQ0FBQyxPQUFpQixDQUFDLENBQUM7aUJBQ2hDO2dCQUNELE9BQU8sR0FBRyxPQUFPLElBQUksT0FBTyxJQUFJLElBQUksQ0FBQzthQUN0Qzs7Ozs7Ozs7O1FBQ0QsT0FBTyxPQUFPLENBQUMsQ0FBQyxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsS0FBSyxDQUFDO0lBQ2xDLENBQUM7SUFaRCxvQ0FZQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtTZWN1cml0eUNvbnRleHR9IGZyb20gJy4uL2NvcmUnO1xuaW1wb3J0IHtBU1QsIEJpbmRpbmdUeXBlLCBCb3VuZEVsZW1lbnRQcm9wZXJ0eSwgUGFyc2VkRXZlbnQsIFBhcnNlZEV2ZW50VHlwZX0gZnJvbSAnLi4vZXhwcmVzc2lvbl9wYXJzZXIvYXN0JztcbmltcG9ydCB7STE4bk1ldGF9IGZyb20gJy4uL2kxOG4vaTE4bl9hc3QnO1xuaW1wb3J0IHtQYXJzZVNvdXJjZVNwYW59IGZyb20gJy4uL3BhcnNlX3V0aWwnO1xuXG5leHBvcnQgaW50ZXJmYWNlIE5vZGUge1xuICBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW47XG4gIHZpc2l0PFJlc3VsdD4odmlzaXRvcjogVmlzaXRvcjxSZXN1bHQ+KTogUmVzdWx0O1xufVxuXG5leHBvcnQgY2xhc3MgVGV4dCBpbXBsZW1lbnRzIE5vZGUge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgdmFsdWU6IHN0cmluZywgcHVibGljIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3Bhbikge31cbiAgdmlzaXQ8UmVzdWx0Pih2aXNpdG9yOiBWaXNpdG9yPFJlc3VsdD4pOiBSZXN1bHQgeyByZXR1cm4gdmlzaXRvci52aXNpdFRleHQodGhpcyk7IH1cbn1cblxuZXhwb3J0IGNsYXNzIEJvdW5kVGV4dCBpbXBsZW1lbnRzIE5vZGUge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgdmFsdWU6IEFTVCwgcHVibGljIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiwgcHVibGljIGkxOG4/OiBJMThuTWV0YSkge31cbiAgdmlzaXQ8UmVzdWx0Pih2aXNpdG9yOiBWaXNpdG9yPFJlc3VsdD4pOiBSZXN1bHQgeyByZXR1cm4gdmlzaXRvci52aXNpdEJvdW5kVGV4dCh0aGlzKTsgfVxufVxuXG5leHBvcnQgY2xhc3MgVGV4dEF0dHJpYnV0ZSBpbXBsZW1lbnRzIE5vZGUge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHB1YmxpYyB2YWx1ZTogc3RyaW5nLCBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgcHVibGljIHZhbHVlU3Bhbj86IFBhcnNlU291cmNlU3BhbiwgcHVibGljIGkxOG4/OiBJMThuTWV0YSkge31cbiAgdmlzaXQ8UmVzdWx0Pih2aXNpdG9yOiBWaXNpdG9yPFJlc3VsdD4pOiBSZXN1bHQgeyByZXR1cm4gdmlzaXRvci52aXNpdFRleHRBdHRyaWJ1dGUodGhpcyk7IH1cbn1cblxuZXhwb3J0IGNsYXNzIEJvdW5kQXR0cmlidXRlIGltcGxlbWVudHMgTm9kZSB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIG5hbWU6IHN0cmluZywgcHVibGljIHR5cGU6IEJpbmRpbmdUeXBlLCBwdWJsaWMgc2VjdXJpdHlDb250ZXh0OiBTZWN1cml0eUNvbnRleHQsXG4gICAgICBwdWJsaWMgdmFsdWU6IEFTVCwgcHVibGljIHVuaXQ6IHN0cmluZ3xudWxsLCBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgcHVibGljIHZhbHVlU3Bhbj86IFBhcnNlU291cmNlU3BhbiwgcHVibGljIGkxOG4/OiBJMThuTWV0YSkge31cblxuICBzdGF0aWMgZnJvbUJvdW5kRWxlbWVudFByb3BlcnR5KHByb3A6IEJvdW5kRWxlbWVudFByb3BlcnR5LCBpMThuPzogSTE4bk1ldGEpIHtcbiAgICByZXR1cm4gbmV3IEJvdW5kQXR0cmlidXRlKFxuICAgICAgICBwcm9wLm5hbWUsIHByb3AudHlwZSwgcHJvcC5zZWN1cml0eUNvbnRleHQsIHByb3AudmFsdWUsIHByb3AudW5pdCwgcHJvcC5zb3VyY2VTcGFuLFxuICAgICAgICBwcm9wLnZhbHVlU3BhbiwgaTE4bik7XG4gIH1cblxuICB2aXNpdDxSZXN1bHQ+KHZpc2l0b3I6IFZpc2l0b3I8UmVzdWx0Pik6IFJlc3VsdCB7IHJldHVybiB2aXNpdG9yLnZpc2l0Qm91bmRBdHRyaWJ1dGUodGhpcyk7IH1cbn1cblxuZXhwb3J0IGNsYXNzIEJvdW5kRXZlbnQgaW1wbGVtZW50cyBOb2RlIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgbmFtZTogc3RyaW5nLCBwdWJsaWMgdHlwZTogUGFyc2VkRXZlbnRUeXBlLCBwdWJsaWMgaGFuZGxlcjogQVNULFxuICAgICAgcHVibGljIHRhcmdldDogc3RyaW5nfG51bGwsIHB1YmxpYyBwaGFzZTogc3RyaW5nfG51bGwsIHB1YmxpYyBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sXG4gICAgICBwdWJsaWMgaGFuZGxlclNwYW46IFBhcnNlU291cmNlU3Bhbikge31cblxuICBzdGF0aWMgZnJvbVBhcnNlZEV2ZW50KGV2ZW50OiBQYXJzZWRFdmVudCkge1xuICAgIGNvbnN0IHRhcmdldDogc3RyaW5nfG51bGwgPSBldmVudC50eXBlID09PSBQYXJzZWRFdmVudFR5cGUuUmVndWxhciA/IGV2ZW50LnRhcmdldE9yUGhhc2UgOiBudWxsO1xuICAgIGNvbnN0IHBoYXNlOiBzdHJpbmd8bnVsbCA9XG4gICAgICAgIGV2ZW50LnR5cGUgPT09IFBhcnNlZEV2ZW50VHlwZS5BbmltYXRpb24gPyBldmVudC50YXJnZXRPclBoYXNlIDogbnVsbDtcbiAgICByZXR1cm4gbmV3IEJvdW5kRXZlbnQoXG4gICAgICAgIGV2ZW50Lm5hbWUsIGV2ZW50LnR5cGUsIGV2ZW50LmhhbmRsZXIsIHRhcmdldCwgcGhhc2UsIGV2ZW50LnNvdXJjZVNwYW4sIGV2ZW50LmhhbmRsZXJTcGFuKTtcbiAgfVxuXG4gIHZpc2l0PFJlc3VsdD4odmlzaXRvcjogVmlzaXRvcjxSZXN1bHQ+KTogUmVzdWx0IHsgcmV0dXJuIHZpc2l0b3IudmlzaXRCb3VuZEV2ZW50KHRoaXMpOyB9XG59XG5cbmV4cG9ydCBjbGFzcyBFbGVtZW50IGltcGxlbWVudHMgTm9kZSB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIG5hbWU6IHN0cmluZywgcHVibGljIGF0dHJpYnV0ZXM6IFRleHRBdHRyaWJ1dGVbXSwgcHVibGljIGlucHV0czogQm91bmRBdHRyaWJ1dGVbXSxcbiAgICAgIHB1YmxpYyBvdXRwdXRzOiBCb3VuZEV2ZW50W10sIHB1YmxpYyBjaGlsZHJlbjogTm9kZVtdLCBwdWJsaWMgcmVmZXJlbmNlczogUmVmZXJlbmNlW10sXG4gICAgICBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLCBwdWJsaWMgc3RhcnRTb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW58bnVsbCxcbiAgICAgIHB1YmxpYyBlbmRTb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW58bnVsbCwgcHVibGljIGkxOG4/OiBJMThuTWV0YSkge1xuICAgIC8vIElmIHRoZSBlbGVtZW50IGlzIGVtcHR5IHRoZW4gdGhlIHNvdXJjZSBzcGFuIHNob3VsZCBpbmNsdWRlIGFueSBjbG9zaW5nIHRhZ1xuICAgIGlmIChjaGlsZHJlbi5sZW5ndGggPT09IDAgJiYgc3RhcnRTb3VyY2VTcGFuICYmIGVuZFNvdXJjZVNwYW4pIHtcbiAgICAgIHRoaXMuc291cmNlU3BhbiA9IG5ldyBQYXJzZVNvdXJjZVNwYW4oc291cmNlU3Bhbi5zdGFydCwgZW5kU291cmNlU3Bhbi5lbmQpO1xuICAgIH1cbiAgfVxuICB2aXNpdDxSZXN1bHQ+KHZpc2l0b3I6IFZpc2l0b3I8UmVzdWx0Pik6IFJlc3VsdCB7IHJldHVybiB2aXNpdG9yLnZpc2l0RWxlbWVudCh0aGlzKTsgfVxufVxuXG5leHBvcnQgY2xhc3MgVGVtcGxhdGUgaW1wbGVtZW50cyBOb2RlIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgdGFnTmFtZTogc3RyaW5nLCBwdWJsaWMgYXR0cmlidXRlczogVGV4dEF0dHJpYnV0ZVtdLCBwdWJsaWMgaW5wdXRzOiBCb3VuZEF0dHJpYnV0ZVtdLFxuICAgICAgcHVibGljIG91dHB1dHM6IEJvdW5kRXZlbnRbXSwgcHVibGljIHRlbXBsYXRlQXR0cnM6IChCb3VuZEF0dHJpYnV0ZXxUZXh0QXR0cmlidXRlKVtdLFxuICAgICAgcHVibGljIGNoaWxkcmVuOiBOb2RlW10sIHB1YmxpYyByZWZlcmVuY2VzOiBSZWZlcmVuY2VbXSwgcHVibGljIHZhcmlhYmxlczogVmFyaWFibGVbXSxcbiAgICAgIHB1YmxpYyBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyBzdGFydFNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbnxudWxsLFxuICAgICAgcHVibGljIGVuZFNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbnxudWxsLCBwdWJsaWMgaTE4bj86IEkxOG5NZXRhKSB7fVxuICB2aXNpdDxSZXN1bHQ+KHZpc2l0b3I6IFZpc2l0b3I8UmVzdWx0Pik6IFJlc3VsdCB7IHJldHVybiB2aXNpdG9yLnZpc2l0VGVtcGxhdGUodGhpcyk7IH1cbn1cblxuZXhwb3J0IGNsYXNzIENvbnRlbnQgaW1wbGVtZW50cyBOb2RlIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgc2VsZWN0b3I6IHN0cmluZywgcHVibGljIGF0dHJpYnV0ZXM6IFRleHRBdHRyaWJ1dGVbXSxcbiAgICAgIHB1YmxpYyBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyBpMThuPzogSTE4bk1ldGEpIHt9XG4gIHZpc2l0PFJlc3VsdD4odmlzaXRvcjogVmlzaXRvcjxSZXN1bHQ+KTogUmVzdWx0IHsgcmV0dXJuIHZpc2l0b3IudmlzaXRDb250ZW50KHRoaXMpOyB9XG59XG5cbmV4cG9ydCBjbGFzcyBWYXJpYWJsZSBpbXBsZW1lbnRzIE5vZGUge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHB1YmxpYyB2YWx1ZTogc3RyaW5nLCBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgcHVibGljIHZhbHVlU3Bhbj86IFBhcnNlU291cmNlU3Bhbikge31cbiAgdmlzaXQ8UmVzdWx0Pih2aXNpdG9yOiBWaXNpdG9yPFJlc3VsdD4pOiBSZXN1bHQgeyByZXR1cm4gdmlzaXRvci52aXNpdFZhcmlhYmxlKHRoaXMpOyB9XG59XG5cbmV4cG9ydCBjbGFzcyBSZWZlcmVuY2UgaW1wbGVtZW50cyBOb2RlIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgbmFtZTogc3RyaW5nLCBwdWJsaWMgdmFsdWU6IHN0cmluZywgcHVibGljIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbixcbiAgICAgIHB1YmxpYyB2YWx1ZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW4pIHt9XG4gIHZpc2l0PFJlc3VsdD4odmlzaXRvcjogVmlzaXRvcjxSZXN1bHQ+KTogUmVzdWx0IHsgcmV0dXJuIHZpc2l0b3IudmlzaXRSZWZlcmVuY2UodGhpcyk7IH1cbn1cblxuZXhwb3J0IGNsYXNzIEljdSBpbXBsZW1lbnRzIE5vZGUge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyB2YXJzOiB7W25hbWU6IHN0cmluZ106IEJvdW5kVGV4dH0sXG4gICAgICBwdWJsaWMgcGxhY2Vob2xkZXJzOiB7W25hbWU6IHN0cmluZ106IFRleHQgfCBCb3VuZFRleHR9LCBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgcHVibGljIGkxOG4/OiBJMThuTWV0YSkge31cbiAgdmlzaXQ8UmVzdWx0Pih2aXNpdG9yOiBWaXNpdG9yPFJlc3VsdD4pOiBSZXN1bHQgeyByZXR1cm4gdmlzaXRvci52aXNpdEljdSh0aGlzKTsgfVxufVxuXG5leHBvcnQgaW50ZXJmYWNlIFZpc2l0b3I8UmVzdWx0ID0gYW55PiB7XG4gIC8vIFJldHVybmluZyBhIHRydXRoeSB2YWx1ZSBmcm9tIGB2aXNpdCgpYCB3aWxsIHByZXZlbnQgYHZpc2l0QWxsKClgIGZyb20gdGhlIGNhbGwgdG8gdGhlIHR5cGVkXG4gIC8vIG1ldGhvZCBhbmQgcmVzdWx0IHJldHVybmVkIHdpbGwgYmVjb21lIHRoZSByZXN1bHQgaW5jbHVkZWQgaW4gYHZpc2l0QWxsKClgcyByZXN1bHQgYXJyYXkuXG4gIHZpc2l0Pyhub2RlOiBOb2RlKTogUmVzdWx0O1xuXG4gIHZpc2l0RWxlbWVudChlbGVtZW50OiBFbGVtZW50KTogUmVzdWx0O1xuICB2aXNpdFRlbXBsYXRlKHRlbXBsYXRlOiBUZW1wbGF0ZSk6IFJlc3VsdDtcbiAgdmlzaXRDb250ZW50KGNvbnRlbnQ6IENvbnRlbnQpOiBSZXN1bHQ7XG4gIHZpc2l0VmFyaWFibGUodmFyaWFibGU6IFZhcmlhYmxlKTogUmVzdWx0O1xuICB2aXNpdFJlZmVyZW5jZShyZWZlcmVuY2U6IFJlZmVyZW5jZSk6IFJlc3VsdDtcbiAgdmlzaXRUZXh0QXR0cmlidXRlKGF0dHJpYnV0ZTogVGV4dEF0dHJpYnV0ZSk6IFJlc3VsdDtcbiAgdmlzaXRCb3VuZEF0dHJpYnV0ZShhdHRyaWJ1dGU6IEJvdW5kQXR0cmlidXRlKTogUmVzdWx0O1xuICB2aXNpdEJvdW5kRXZlbnQoYXR0cmlidXRlOiBCb3VuZEV2ZW50KTogUmVzdWx0O1xuICB2aXNpdFRleHQodGV4dDogVGV4dCk6IFJlc3VsdDtcbiAgdmlzaXRCb3VuZFRleHQodGV4dDogQm91bmRUZXh0KTogUmVzdWx0O1xuICB2aXNpdEljdShpY3U6IEljdSk6IFJlc3VsdDtcbn1cblxuZXhwb3J0IGNsYXNzIE51bGxWaXNpdG9yIGltcGxlbWVudHMgVmlzaXRvcjx2b2lkPiB7XG4gIHZpc2l0RWxlbWVudChlbGVtZW50OiBFbGVtZW50KTogdm9pZCB7fVxuICB2aXNpdFRlbXBsYXRlKHRlbXBsYXRlOiBUZW1wbGF0ZSk6IHZvaWQge31cbiAgdmlzaXRDb250ZW50KGNvbnRlbnQ6IENvbnRlbnQpOiB2b2lkIHt9XG4gIHZpc2l0VmFyaWFibGUodmFyaWFibGU6IFZhcmlhYmxlKTogdm9pZCB7fVxuICB2aXNpdFJlZmVyZW5jZShyZWZlcmVuY2U6IFJlZmVyZW5jZSk6IHZvaWQge31cbiAgdmlzaXRUZXh0QXR0cmlidXRlKGF0dHJpYnV0ZTogVGV4dEF0dHJpYnV0ZSk6IHZvaWQge31cbiAgdmlzaXRCb3VuZEF0dHJpYnV0ZShhdHRyaWJ1dGU6IEJvdW5kQXR0cmlidXRlKTogdm9pZCB7fVxuICB2aXNpdEJvdW5kRXZlbnQoYXR0cmlidXRlOiBCb3VuZEV2ZW50KTogdm9pZCB7fVxuICB2aXNpdFRleHQodGV4dDogVGV4dCk6IHZvaWQge31cbiAgdmlzaXRCb3VuZFRleHQodGV4dDogQm91bmRUZXh0KTogdm9pZCB7fVxuICB2aXNpdEljdShpY3U6IEljdSk6IHZvaWQge31cbn1cblxuZXhwb3J0IGNsYXNzIFJlY3Vyc2l2ZVZpc2l0b3IgaW1wbGVtZW50cyBWaXNpdG9yPHZvaWQ+IHtcbiAgdmlzaXRFbGVtZW50KGVsZW1lbnQ6IEVsZW1lbnQpOiB2b2lkIHtcbiAgICB2aXNpdEFsbCh0aGlzLCBlbGVtZW50LmF0dHJpYnV0ZXMpO1xuICAgIHZpc2l0QWxsKHRoaXMsIGVsZW1lbnQuY2hpbGRyZW4pO1xuICAgIHZpc2l0QWxsKHRoaXMsIGVsZW1lbnQucmVmZXJlbmNlcyk7XG4gIH1cbiAgdmlzaXRUZW1wbGF0ZSh0ZW1wbGF0ZTogVGVtcGxhdGUpOiB2b2lkIHtcbiAgICB2aXNpdEFsbCh0aGlzLCB0ZW1wbGF0ZS5hdHRyaWJ1dGVzKTtcbiAgICB2aXNpdEFsbCh0aGlzLCB0ZW1wbGF0ZS5jaGlsZHJlbik7XG4gICAgdmlzaXRBbGwodGhpcywgdGVtcGxhdGUucmVmZXJlbmNlcyk7XG4gICAgdmlzaXRBbGwodGhpcywgdGVtcGxhdGUudmFyaWFibGVzKTtcbiAgfVxuICB2aXNpdENvbnRlbnQoY29udGVudDogQ29udGVudCk6IHZvaWQge31cbiAgdmlzaXRWYXJpYWJsZSh2YXJpYWJsZTogVmFyaWFibGUpOiB2b2lkIHt9XG4gIHZpc2l0UmVmZXJlbmNlKHJlZmVyZW5jZTogUmVmZXJlbmNlKTogdm9pZCB7fVxuICB2aXNpdFRleHRBdHRyaWJ1dGUoYXR0cmlidXRlOiBUZXh0QXR0cmlidXRlKTogdm9pZCB7fVxuICB2aXNpdEJvdW5kQXR0cmlidXRlKGF0dHJpYnV0ZTogQm91bmRBdHRyaWJ1dGUpOiB2b2lkIHt9XG4gIHZpc2l0Qm91bmRFdmVudChhdHRyaWJ1dGU6IEJvdW5kRXZlbnQpOiB2b2lkIHt9XG4gIHZpc2l0VGV4dCh0ZXh0OiBUZXh0KTogdm9pZCB7fVxuICB2aXNpdEJvdW5kVGV4dCh0ZXh0OiBCb3VuZFRleHQpOiB2b2lkIHt9XG4gIHZpc2l0SWN1KGljdTogSWN1KTogdm9pZCB7fVxufVxuXG5leHBvcnQgY2xhc3MgVHJhbnNmb3JtVmlzaXRvciBpbXBsZW1lbnRzIFZpc2l0b3I8Tm9kZT4ge1xuICB2aXNpdEVsZW1lbnQoZWxlbWVudDogRWxlbWVudCk6IE5vZGUge1xuICAgIGNvbnN0IG5ld0F0dHJpYnV0ZXMgPSB0cmFuc2Zvcm1BbGwodGhpcywgZWxlbWVudC5hdHRyaWJ1dGVzKTtcbiAgICBjb25zdCBuZXdJbnB1dHMgPSB0cmFuc2Zvcm1BbGwodGhpcywgZWxlbWVudC5pbnB1dHMpO1xuICAgIGNvbnN0IG5ld091dHB1dHMgPSB0cmFuc2Zvcm1BbGwodGhpcywgZWxlbWVudC5vdXRwdXRzKTtcbiAgICBjb25zdCBuZXdDaGlsZHJlbiA9IHRyYW5zZm9ybUFsbCh0aGlzLCBlbGVtZW50LmNoaWxkcmVuKTtcbiAgICBjb25zdCBuZXdSZWZlcmVuY2VzID0gdHJhbnNmb3JtQWxsKHRoaXMsIGVsZW1lbnQucmVmZXJlbmNlcyk7XG4gICAgaWYgKG5ld0F0dHJpYnV0ZXMgIT0gZWxlbWVudC5hdHRyaWJ1dGVzIHx8IG5ld0lucHV0cyAhPSBlbGVtZW50LmlucHV0cyB8fFxuICAgICAgICBuZXdPdXRwdXRzICE9IGVsZW1lbnQub3V0cHV0cyB8fCBuZXdDaGlsZHJlbiAhPSBlbGVtZW50LmNoaWxkcmVuIHx8XG4gICAgICAgIG5ld1JlZmVyZW5jZXMgIT0gZWxlbWVudC5yZWZlcmVuY2VzKSB7XG4gICAgICByZXR1cm4gbmV3IEVsZW1lbnQoXG4gICAgICAgICAgZWxlbWVudC5uYW1lLCBuZXdBdHRyaWJ1dGVzLCBuZXdJbnB1dHMsIG5ld091dHB1dHMsIG5ld0NoaWxkcmVuLCBuZXdSZWZlcmVuY2VzLFxuICAgICAgICAgIGVsZW1lbnQuc291cmNlU3BhbiwgZWxlbWVudC5zdGFydFNvdXJjZVNwYW4sIGVsZW1lbnQuZW5kU291cmNlU3Bhbik7XG4gICAgfVxuICAgIHJldHVybiBlbGVtZW50O1xuICB9XG5cbiAgdmlzaXRUZW1wbGF0ZSh0ZW1wbGF0ZTogVGVtcGxhdGUpOiBOb2RlIHtcbiAgICBjb25zdCBuZXdBdHRyaWJ1dGVzID0gdHJhbnNmb3JtQWxsKHRoaXMsIHRlbXBsYXRlLmF0dHJpYnV0ZXMpO1xuICAgIGNvbnN0IG5ld0lucHV0cyA9IHRyYW5zZm9ybUFsbCh0aGlzLCB0ZW1wbGF0ZS5pbnB1dHMpO1xuICAgIGNvbnN0IG5ld091dHB1dHMgPSB0cmFuc2Zvcm1BbGwodGhpcywgdGVtcGxhdGUub3V0cHV0cyk7XG4gICAgY29uc3QgbmV3VGVtcGxhdGVBdHRycyA9IHRyYW5zZm9ybUFsbCh0aGlzLCB0ZW1wbGF0ZS50ZW1wbGF0ZUF0dHJzKTtcbiAgICBjb25zdCBuZXdDaGlsZHJlbiA9IHRyYW5zZm9ybUFsbCh0aGlzLCB0ZW1wbGF0ZS5jaGlsZHJlbik7XG4gICAgY29uc3QgbmV3UmVmZXJlbmNlcyA9IHRyYW5zZm9ybUFsbCh0aGlzLCB0ZW1wbGF0ZS5yZWZlcmVuY2VzKTtcbiAgICBjb25zdCBuZXdWYXJpYWJsZXMgPSB0cmFuc2Zvcm1BbGwodGhpcywgdGVtcGxhdGUudmFyaWFibGVzKTtcbiAgICBpZiAobmV3QXR0cmlidXRlcyAhPSB0ZW1wbGF0ZS5hdHRyaWJ1dGVzIHx8IG5ld0lucHV0cyAhPSB0ZW1wbGF0ZS5pbnB1dHMgfHxcbiAgICAgICAgbmV3T3V0cHV0cyAhPSB0ZW1wbGF0ZS5vdXRwdXRzIHx8IG5ld1RlbXBsYXRlQXR0cnMgIT0gdGVtcGxhdGUudGVtcGxhdGVBdHRycyB8fFxuICAgICAgICBuZXdDaGlsZHJlbiAhPSB0ZW1wbGF0ZS5jaGlsZHJlbiB8fCBuZXdSZWZlcmVuY2VzICE9IHRlbXBsYXRlLnJlZmVyZW5jZXMgfHxcbiAgICAgICAgbmV3VmFyaWFibGVzICE9IHRlbXBsYXRlLnZhcmlhYmxlcykge1xuICAgICAgcmV0dXJuIG5ldyBUZW1wbGF0ZShcbiAgICAgICAgICB0ZW1wbGF0ZS50YWdOYW1lLCBuZXdBdHRyaWJ1dGVzLCBuZXdJbnB1dHMsIG5ld091dHB1dHMsIG5ld1RlbXBsYXRlQXR0cnMsIG5ld0NoaWxkcmVuLFxuICAgICAgICAgIG5ld1JlZmVyZW5jZXMsIG5ld1ZhcmlhYmxlcywgdGVtcGxhdGUuc291cmNlU3BhbiwgdGVtcGxhdGUuc3RhcnRTb3VyY2VTcGFuLFxuICAgICAgICAgIHRlbXBsYXRlLmVuZFNvdXJjZVNwYW4pO1xuICAgIH1cbiAgICByZXR1cm4gdGVtcGxhdGU7XG4gIH1cblxuICB2aXNpdENvbnRlbnQoY29udGVudDogQ29udGVudCk6IE5vZGUgeyByZXR1cm4gY29udGVudDsgfVxuXG4gIHZpc2l0VmFyaWFibGUodmFyaWFibGU6IFZhcmlhYmxlKTogTm9kZSB7IHJldHVybiB2YXJpYWJsZTsgfVxuICB2aXNpdFJlZmVyZW5jZShyZWZlcmVuY2U6IFJlZmVyZW5jZSk6IE5vZGUgeyByZXR1cm4gcmVmZXJlbmNlOyB9XG4gIHZpc2l0VGV4dEF0dHJpYnV0ZShhdHRyaWJ1dGU6IFRleHRBdHRyaWJ1dGUpOiBOb2RlIHsgcmV0dXJuIGF0dHJpYnV0ZTsgfVxuICB2aXNpdEJvdW5kQXR0cmlidXRlKGF0dHJpYnV0ZTogQm91bmRBdHRyaWJ1dGUpOiBOb2RlIHsgcmV0dXJuIGF0dHJpYnV0ZTsgfVxuICB2aXNpdEJvdW5kRXZlbnQoYXR0cmlidXRlOiBCb3VuZEV2ZW50KTogTm9kZSB7IHJldHVybiBhdHRyaWJ1dGU7IH1cbiAgdmlzaXRUZXh0KHRleHQ6IFRleHQpOiBOb2RlIHsgcmV0dXJuIHRleHQ7IH1cbiAgdmlzaXRCb3VuZFRleHQodGV4dDogQm91bmRUZXh0KTogTm9kZSB7IHJldHVybiB0ZXh0OyB9XG4gIHZpc2l0SWN1KGljdTogSWN1KTogTm9kZSB7IHJldHVybiBpY3U7IH1cbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHZpc2l0QWxsPFJlc3VsdD4odmlzaXRvcjogVmlzaXRvcjxSZXN1bHQ+LCBub2RlczogTm9kZVtdKTogUmVzdWx0W10ge1xuICBjb25zdCByZXN1bHQ6IFJlc3VsdFtdID0gW107XG4gIGlmICh2aXNpdG9yLnZpc2l0KSB7XG4gICAgZm9yIChjb25zdCBub2RlIG9mIG5vZGVzKSB7XG4gICAgICBjb25zdCBuZXdOb2RlID0gdmlzaXRvci52aXNpdChub2RlKSB8fCBub2RlLnZpc2l0KHZpc2l0b3IpO1xuICAgIH1cbiAgfSBlbHNlIHtcbiAgICBmb3IgKGNvbnN0IG5vZGUgb2Ygbm9kZXMpIHtcbiAgICAgIGNvbnN0IG5ld05vZGUgPSBub2RlLnZpc2l0KHZpc2l0b3IpO1xuICAgICAgaWYgKG5ld05vZGUpIHtcbiAgICAgICAgcmVzdWx0LnB1c2gobmV3Tm9kZSk7XG4gICAgICB9XG4gICAgfVxuICB9XG4gIHJldHVybiByZXN1bHQ7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiB0cmFuc2Zvcm1BbGw8UmVzdWx0IGV4dGVuZHMgTm9kZT4oXG4gICAgdmlzaXRvcjogVmlzaXRvcjxOb2RlPiwgbm9kZXM6IFJlc3VsdFtdKTogUmVzdWx0W10ge1xuICBjb25zdCByZXN1bHQ6IFJlc3VsdFtdID0gW107XG4gIGxldCBjaGFuZ2VkID0gZmFsc2U7XG4gIGZvciAoY29uc3Qgbm9kZSBvZiBub2Rlcykge1xuICAgIGNvbnN0IG5ld05vZGUgPSBub2RlLnZpc2l0KHZpc2l0b3IpO1xuICAgIGlmIChuZXdOb2RlKSB7XG4gICAgICByZXN1bHQucHVzaChuZXdOb2RlIGFzIFJlc3VsdCk7XG4gICAgfVxuICAgIGNoYW5nZWQgPSBjaGFuZ2VkIHx8IG5ld05vZGUgIT0gbm9kZTtcbiAgfVxuICByZXR1cm4gY2hhbmdlZCA/IHJlc3VsdCA6IG5vZGVzO1xufVxuIl19