/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __values } from "tslib";
import { ParseSourceSpan } from '../parse_util';
var Text = /** @class */ (function () {
    function Text(value, sourceSpan) {
        this.value = value;
        this.sourceSpan = sourceSpan;
    }
    Text.prototype.visit = function (visitor) { return visitor.visitText(this); };
    return Text;
}());
export { Text };
var BoundText = /** @class */ (function () {
    function BoundText(value, sourceSpan, i18n) {
        this.value = value;
        this.sourceSpan = sourceSpan;
        this.i18n = i18n;
    }
    BoundText.prototype.visit = function (visitor) { return visitor.visitBoundText(this); };
    return BoundText;
}());
export { BoundText };
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
export { TextAttribute };
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
export { BoundAttribute };
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
export { BoundEvent };
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
            this.sourceSpan = new ParseSourceSpan(sourceSpan.start, endSourceSpan.end);
        }
    }
    Element.prototype.visit = function (visitor) { return visitor.visitElement(this); };
    return Element;
}());
export { Element };
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
export { Template };
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
export { Content };
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
export { Variable };
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
export { Reference };
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
export { Icu };
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
export { NullVisitor };
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
export { RecursiveVisitor };
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
export { TransformVisitor };
export function visitAll(visitor, nodes) {
    var e_1, _a, e_2, _b;
    var result = [];
    if (visitor.visit) {
        try {
            for (var nodes_1 = __values(nodes), nodes_1_1 = nodes_1.next(); !nodes_1_1.done; nodes_1_1 = nodes_1.next()) {
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
            for (var nodes_2 = __values(nodes), nodes_2_1 = nodes_2.next(); !nodes_2_1.done; nodes_2_1 = nodes_2.next()) {
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
export function transformAll(visitor, nodes) {
    var e_3, _a;
    var result = [];
    var changed = false;
    try {
        for (var nodes_3 = __values(nodes), nodes_3_1 = nodes_3.next(); !nodes_3_1.done; nodes_3_1 = nodes_3.next()) {
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicjNfYXN0LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvc3JjL3JlbmRlcjMvcjNfYXN0LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7QUFLSCxPQUFPLEVBQUMsZUFBZSxFQUFDLE1BQU0sZUFBZSxDQUFDO0FBTzlDO0lBQ0UsY0FBbUIsS0FBYSxFQUFTLFVBQTJCO1FBQWpELFVBQUssR0FBTCxLQUFLLENBQVE7UUFBUyxlQUFVLEdBQVYsVUFBVSxDQUFpQjtJQUFHLENBQUM7SUFDeEUsb0JBQUssR0FBTCxVQUFjLE9BQXdCLElBQVksT0FBTyxPQUFPLENBQUMsU0FBUyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUNyRixXQUFDO0FBQUQsQ0FBQyxBQUhELElBR0M7O0FBRUQ7SUFDRSxtQkFBbUIsS0FBVSxFQUFTLFVBQTJCLEVBQVMsSUFBZTtRQUF0RSxVQUFLLEdBQUwsS0FBSyxDQUFLO1FBQVMsZUFBVSxHQUFWLFVBQVUsQ0FBaUI7UUFBUyxTQUFJLEdBQUosSUFBSSxDQUFXO0lBQUcsQ0FBQztJQUM3Rix5QkFBSyxHQUFMLFVBQWMsT0FBd0IsSUFBWSxPQUFPLE9BQU8sQ0FBQyxjQUFjLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQzFGLGdCQUFDO0FBQUQsQ0FBQyxBQUhELElBR0M7O0FBRUQ7SUFDRSx1QkFDVyxJQUFZLEVBQVMsS0FBYSxFQUFTLFVBQTJCLEVBQ3RFLFNBQTJCLEVBQVMsSUFBZTtRQURuRCxTQUFJLEdBQUosSUFBSSxDQUFRO1FBQVMsVUFBSyxHQUFMLEtBQUssQ0FBUTtRQUFTLGVBQVUsR0FBVixVQUFVLENBQWlCO1FBQ3RFLGNBQVMsR0FBVCxTQUFTLENBQWtCO1FBQVMsU0FBSSxHQUFKLElBQUksQ0FBVztJQUFHLENBQUM7SUFDbEUsNkJBQUssR0FBTCxVQUFjLE9BQXdCLElB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NUIsSUFBSSxPQUFPLEdBQUcsS0FBSyxDQUFDOztRQUNwQixLQUFtQixJQUFBLFVBQUEsU0FBQSxLQUFLLENBQUEsNEJBQUEsK0NBQUU7WUFBckIsSUFBTSxJQUFJLGtCQUFBO1lBQ2IsSUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxPQUFPLENBQUMsQ0FBQztZQUNwQyxJQUFJLE9BQU8sRUFBRTtnQkFDWCxNQUFNLENBQUMsSUFBSSxDQUFDLE9BQWlCLENBQUMsQ0FBQzthQUNoQztZQUNELE9BQU8sR0FBRyxPQUFPLElBQUksT0FBTyxJQUFJLElBQUksQ0FBQztTQUN0Qzs7Ozs7Ozs7O0lBQ0QsT0FBTyxPQUFPLENBQUMsQ0FBQyxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsS0FBSyxDQUFDO0FBQ2xDLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7U2VjdXJpdHlDb250ZXh0fSBmcm9tICcuLi9jb3JlJztcbmltcG9ydCB7QVNULCBCaW5kaW5nVHlwZSwgQm91bmRFbGVtZW50UHJvcGVydHksIFBhcnNlZEV2ZW50LCBQYXJzZWRFdmVudFR5cGV9IGZyb20gJy4uL2V4cHJlc3Npb25fcGFyc2VyL2FzdCc7XG5pbXBvcnQge0kxOG5NZXRhfSBmcm9tICcuLi9pMThuL2kxOG5fYXN0JztcbmltcG9ydCB7UGFyc2VTb3VyY2VTcGFufSBmcm9tICcuLi9wYXJzZV91dGlsJztcblxuZXhwb3J0IGludGVyZmFjZSBOb2RlIHtcbiAgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuO1xuICB2aXNpdDxSZXN1bHQ+KHZpc2l0b3I6IFZpc2l0b3I8UmVzdWx0Pik6IFJlc3VsdDtcbn1cblxuZXhwb3J0IGNsYXNzIFRleHQgaW1wbGVtZW50cyBOb2RlIHtcbiAgY29uc3RydWN0b3IocHVibGljIHZhbHVlOiBzdHJpbmcsIHB1YmxpYyBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4pIHt9XG4gIHZpc2l0PFJlc3VsdD4odmlzaXRvcjogVmlzaXRvcjxSZXN1bHQ+KTogUmVzdWx0IHsgcmV0dXJuIHZpc2l0b3IudmlzaXRUZXh0KHRoaXMpOyB9XG59XG5cbmV4cG9ydCBjbGFzcyBCb3VuZFRleHQgaW1wbGVtZW50cyBOb2RlIHtcbiAgY29uc3RydWN0b3IocHVibGljIHZhbHVlOiBBU1QsIHB1YmxpYyBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyBpMThuPzogSTE4bk1ldGEpIHt9XG4gIHZpc2l0PFJlc3VsdD4odmlzaXRvcjogVmlzaXRvcjxSZXN1bHQ+KTogUmVzdWx0IHsgcmV0dXJuIHZpc2l0b3IudmlzaXRCb3VuZFRleHQodGhpcyk7IH1cbn1cblxuZXhwb3J0IGNsYXNzIFRleHRBdHRyaWJ1dGUgaW1wbGVtZW50cyBOb2RlIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgbmFtZTogc3RyaW5nLCBwdWJsaWMgdmFsdWU6IHN0cmluZywgcHVibGljIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbixcbiAgICAgIHB1YmxpYyB2YWx1ZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyBpMThuPzogSTE4bk1ldGEpIHt9XG4gIHZpc2l0PFJlc3VsdD4odmlzaXRvcjogVmlzaXRvcjxSZXN1bHQ+KTogUmVzdWx0IHsgcmV0dXJuIHZpc2l0b3IudmlzaXRUZXh0QXR0cmlidXRlKHRoaXMpOyB9XG59XG5cbmV4cG9ydCBjbGFzcyBCb3VuZEF0dHJpYnV0ZSBpbXBsZW1lbnRzIE5vZGUge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHB1YmxpYyB0eXBlOiBCaW5kaW5nVHlwZSwgcHVibGljIHNlY3VyaXR5Q29udGV4dDogU2VjdXJpdHlDb250ZXh0LFxuICAgICAgcHVibGljIHZhbHVlOiBBU1QsIHB1YmxpYyB1bml0OiBzdHJpbmd8bnVsbCwgcHVibGljIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbixcbiAgICAgIHB1YmxpYyB2YWx1ZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyBpMThuPzogSTE4bk1ldGEpIHt9XG5cbiAgc3RhdGljIGZyb21Cb3VuZEVsZW1lbnRQcm9wZXJ0eShwcm9wOiBCb3VuZEVsZW1lbnRQcm9wZXJ0eSwgaTE4bj86IEkxOG5NZXRhKSB7XG4gICAgcmV0dXJuIG5ldyBCb3VuZEF0dHJpYnV0ZShcbiAgICAgICAgcHJvcC5uYW1lLCBwcm9wLnR5cGUsIHByb3Auc2VjdXJpdHlDb250ZXh0LCBwcm9wLnZhbHVlLCBwcm9wLnVuaXQsIHByb3Auc291cmNlU3BhbixcbiAgICAgICAgcHJvcC52YWx1ZVNwYW4sIGkxOG4pO1xuICB9XG5cbiAgdmlzaXQ8UmVzdWx0Pih2aXNpdG9yOiBWaXNpdG9yPFJlc3VsdD4pOiBSZXN1bHQgeyByZXR1cm4gdmlzaXRvci52aXNpdEJvdW5kQXR0cmlidXRlKHRoaXMpOyB9XG59XG5cbmV4cG9ydCBjbGFzcyBCb3VuZEV2ZW50IGltcGxlbWVudHMgTm9kZSB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIG5hbWU6IHN0cmluZywgcHVibGljIHR5cGU6IFBhcnNlZEV2ZW50VHlwZSwgcHVibGljIGhhbmRsZXI6IEFTVCxcbiAgICAgIHB1YmxpYyB0YXJnZXQ6IHN0cmluZ3xudWxsLCBwdWJsaWMgcGhhc2U6IHN0cmluZ3xudWxsLCBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgcHVibGljIGhhbmRsZXJTcGFuOiBQYXJzZVNvdXJjZVNwYW4pIHt9XG5cbiAgc3RhdGljIGZyb21QYXJzZWRFdmVudChldmVudDogUGFyc2VkRXZlbnQpIHtcbiAgICBjb25zdCB0YXJnZXQ6IHN0cmluZ3xudWxsID0gZXZlbnQudHlwZSA9PT0gUGFyc2VkRXZlbnRUeXBlLlJlZ3VsYXIgPyBldmVudC50YXJnZXRPclBoYXNlIDogbnVsbDtcbiAgICBjb25zdCBwaGFzZTogc3RyaW5nfG51bGwgPVxuICAgICAgICBldmVudC50eXBlID09PSBQYXJzZWRFdmVudFR5cGUuQW5pbWF0aW9uID8gZXZlbnQudGFyZ2V0T3JQaGFzZSA6IG51bGw7XG4gICAgcmV0dXJuIG5ldyBCb3VuZEV2ZW50KFxuICAgICAgICBldmVudC5uYW1lLCBldmVudC50eXBlLCBldmVudC5oYW5kbGVyLCB0YXJnZXQsIHBoYXNlLCBldmVudC5zb3VyY2VTcGFuLCBldmVudC5oYW5kbGVyU3Bhbik7XG4gIH1cblxuICB2aXNpdDxSZXN1bHQ+KHZpc2l0b3I6IFZpc2l0b3I8UmVzdWx0Pik6IFJlc3VsdCB7IHJldHVybiB2aXNpdG9yLnZpc2l0Qm91bmRFdmVudCh0aGlzKTsgfVxufVxuXG5leHBvcnQgY2xhc3MgRWxlbWVudCBpbXBsZW1lbnRzIE5vZGUge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHB1YmxpYyBhdHRyaWJ1dGVzOiBUZXh0QXR0cmlidXRlW10sIHB1YmxpYyBpbnB1dHM6IEJvdW5kQXR0cmlidXRlW10sXG4gICAgICBwdWJsaWMgb3V0cHV0czogQm91bmRFdmVudFtdLCBwdWJsaWMgY2hpbGRyZW46IE5vZGVbXSwgcHVibGljIHJlZmVyZW5jZXM6IFJlZmVyZW5jZVtdLFxuICAgICAgcHVibGljIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiwgcHVibGljIHN0YXJ0U291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFufG51bGwsXG4gICAgICBwdWJsaWMgZW5kU291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFufG51bGwsIHB1YmxpYyBpMThuPzogSTE4bk1ldGEpIHtcbiAgICAvLyBJZiB0aGUgZWxlbWVudCBpcyBlbXB0eSB0aGVuIHRoZSBzb3VyY2Ugc3BhbiBzaG91bGQgaW5jbHVkZSBhbnkgY2xvc2luZyB0YWdcbiAgICBpZiAoY2hpbGRyZW4ubGVuZ3RoID09PSAwICYmIHN0YXJ0U291cmNlU3BhbiAmJiBlbmRTb3VyY2VTcGFuKSB7XG4gICAgICB0aGlzLnNvdXJjZVNwYW4gPSBuZXcgUGFyc2VTb3VyY2VTcGFuKHNvdXJjZVNwYW4uc3RhcnQsIGVuZFNvdXJjZVNwYW4uZW5kKTtcbiAgICB9XG4gIH1cbiAgdmlzaXQ8UmVzdWx0Pih2aXNpdG9yOiBWaXNpdG9yPFJlc3VsdD4pOiBSZXN1bHQgeyByZXR1cm4gdmlzaXRvci52aXNpdEVsZW1lbnQodGhpcyk7IH1cbn1cblxuZXhwb3J0IGNsYXNzIFRlbXBsYXRlIGltcGxlbWVudHMgTm9kZSB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIHRhZ05hbWU6IHN0cmluZywgcHVibGljIGF0dHJpYnV0ZXM6IFRleHRBdHRyaWJ1dGVbXSwgcHVibGljIGlucHV0czogQm91bmRBdHRyaWJ1dGVbXSxcbiAgICAgIHB1YmxpYyBvdXRwdXRzOiBCb3VuZEV2ZW50W10sIHB1YmxpYyB0ZW1wbGF0ZUF0dHJzOiAoQm91bmRBdHRyaWJ1dGV8VGV4dEF0dHJpYnV0ZSlbXSxcbiAgICAgIHB1YmxpYyBjaGlsZHJlbjogTm9kZVtdLCBwdWJsaWMgcmVmZXJlbmNlczogUmVmZXJlbmNlW10sIHB1YmxpYyB2YXJpYWJsZXM6IFZhcmlhYmxlW10sXG4gICAgICBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLCBwdWJsaWMgc3RhcnRTb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW58bnVsbCxcbiAgICAgIHB1YmxpYyBlbmRTb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW58bnVsbCwgcHVibGljIGkxOG4/OiBJMThuTWV0YSkge31cbiAgdmlzaXQ8UmVzdWx0Pih2aXNpdG9yOiBWaXNpdG9yPFJlc3VsdD4pOiBSZXN1bHQgeyByZXR1cm4gdmlzaXRvci52aXNpdFRlbXBsYXRlKHRoaXMpOyB9XG59XG5cbmV4cG9ydCBjbGFzcyBDb250ZW50IGltcGxlbWVudHMgTm9kZSB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIHNlbGVjdG9yOiBzdHJpbmcsIHB1YmxpYyBhdHRyaWJ1dGVzOiBUZXh0QXR0cmlidXRlW10sXG4gICAgICBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLCBwdWJsaWMgaTE4bj86IEkxOG5NZXRhKSB7fVxuICB2aXNpdDxSZXN1bHQ+KHZpc2l0b3I6IFZpc2l0b3I8UmVzdWx0Pik6IFJlc3VsdCB7IHJldHVybiB2aXNpdG9yLnZpc2l0Q29udGVudCh0aGlzKTsgfVxufVxuXG5leHBvcnQgY2xhc3MgVmFyaWFibGUgaW1wbGVtZW50cyBOb2RlIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgbmFtZTogc3RyaW5nLCBwdWJsaWMgdmFsdWU6IHN0cmluZywgcHVibGljIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbixcbiAgICAgIHB1YmxpYyB2YWx1ZVNwYW4/OiBQYXJzZVNvdXJjZVNwYW4pIHt9XG4gIHZpc2l0PFJlc3VsdD4odmlzaXRvcjogVmlzaXRvcjxSZXN1bHQ+KTogUmVzdWx0IHsgcmV0dXJuIHZpc2l0b3IudmlzaXRWYXJpYWJsZSh0aGlzKTsgfVxufVxuXG5leHBvcnQgY2xhc3MgUmVmZXJlbmNlIGltcGxlbWVudHMgTm9kZSB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIG5hbWU6IHN0cmluZywgcHVibGljIHZhbHVlOiBzdHJpbmcsIHB1YmxpYyBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sXG4gICAgICBwdWJsaWMgdmFsdWVTcGFuPzogUGFyc2VTb3VyY2VTcGFuKSB7fVxuICB2aXNpdDxSZXN1bHQ+KHZpc2l0b3I6IFZpc2l0b3I8UmVzdWx0Pik6IFJlc3VsdCB7IHJldHVybiB2aXNpdG9yLnZpc2l0UmVmZXJlbmNlKHRoaXMpOyB9XG59XG5cbmV4cG9ydCBjbGFzcyBJY3UgaW1wbGVtZW50cyBOb2RlIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgdmFyczoge1tuYW1lOiBzdHJpbmddOiBCb3VuZFRleHR9LFxuICAgICAgcHVibGljIHBsYWNlaG9sZGVyczoge1tuYW1lOiBzdHJpbmddOiBUZXh0IHwgQm91bmRUZXh0fSwgcHVibGljIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbixcbiAgICAgIHB1YmxpYyBpMThuPzogSTE4bk1ldGEpIHt9XG4gIHZpc2l0PFJlc3VsdD4odmlzaXRvcjogVmlzaXRvcjxSZXN1bHQ+KTogUmVzdWx0IHsgcmV0dXJuIHZpc2l0b3IudmlzaXRJY3UodGhpcyk7IH1cbn1cblxuZXhwb3J0IGludGVyZmFjZSBWaXNpdG9yPFJlc3VsdCA9IGFueT4ge1xuICAvLyBSZXR1cm5pbmcgYSB0cnV0aHkgdmFsdWUgZnJvbSBgdmlzaXQoKWAgd2lsbCBwcmV2ZW50IGB2aXNpdEFsbCgpYCBmcm9tIHRoZSBjYWxsIHRvIHRoZSB0eXBlZFxuICAvLyBtZXRob2QgYW5kIHJlc3VsdCByZXR1cm5lZCB3aWxsIGJlY29tZSB0aGUgcmVzdWx0IGluY2x1ZGVkIGluIGB2aXNpdEFsbCgpYHMgcmVzdWx0IGFycmF5LlxuICB2aXNpdD8obm9kZTogTm9kZSk6IFJlc3VsdDtcblxuICB2aXNpdEVsZW1lbnQoZWxlbWVudDogRWxlbWVudCk6IFJlc3VsdDtcbiAgdmlzaXRUZW1wbGF0ZSh0ZW1wbGF0ZTogVGVtcGxhdGUpOiBSZXN1bHQ7XG4gIHZpc2l0Q29udGVudChjb250ZW50OiBDb250ZW50KTogUmVzdWx0O1xuICB2aXNpdFZhcmlhYmxlKHZhcmlhYmxlOiBWYXJpYWJsZSk6IFJlc3VsdDtcbiAgdmlzaXRSZWZlcmVuY2UocmVmZXJlbmNlOiBSZWZlcmVuY2UpOiBSZXN1bHQ7XG4gIHZpc2l0VGV4dEF0dHJpYnV0ZShhdHRyaWJ1dGU6IFRleHRBdHRyaWJ1dGUpOiBSZXN1bHQ7XG4gIHZpc2l0Qm91bmRBdHRyaWJ1dGUoYXR0cmlidXRlOiBCb3VuZEF0dHJpYnV0ZSk6IFJlc3VsdDtcbiAgdmlzaXRCb3VuZEV2ZW50KGF0dHJpYnV0ZTogQm91bmRFdmVudCk6IFJlc3VsdDtcbiAgdmlzaXRUZXh0KHRleHQ6IFRleHQpOiBSZXN1bHQ7XG4gIHZpc2l0Qm91bmRUZXh0KHRleHQ6IEJvdW5kVGV4dCk6IFJlc3VsdDtcbiAgdmlzaXRJY3UoaWN1OiBJY3UpOiBSZXN1bHQ7XG59XG5cbmV4cG9ydCBjbGFzcyBOdWxsVmlzaXRvciBpbXBsZW1lbnRzIFZpc2l0b3I8dm9pZD4ge1xuICB2aXNpdEVsZW1lbnQoZWxlbWVudDogRWxlbWVudCk6IHZvaWQge31cbiAgdmlzaXRUZW1wbGF0ZSh0ZW1wbGF0ZTogVGVtcGxhdGUpOiB2b2lkIHt9XG4gIHZpc2l0Q29udGVudChjb250ZW50OiBDb250ZW50KTogdm9pZCB7fVxuICB2aXNpdFZhcmlhYmxlKHZhcmlhYmxlOiBWYXJpYWJsZSk6IHZvaWQge31cbiAgdmlzaXRSZWZlcmVuY2UocmVmZXJlbmNlOiBSZWZlcmVuY2UpOiB2b2lkIHt9XG4gIHZpc2l0VGV4dEF0dHJpYnV0ZShhdHRyaWJ1dGU6IFRleHRBdHRyaWJ1dGUpOiB2b2lkIHt9XG4gIHZpc2l0Qm91bmRBdHRyaWJ1dGUoYXR0cmlidXRlOiBCb3VuZEF0dHJpYnV0ZSk6IHZvaWQge31cbiAgdmlzaXRCb3VuZEV2ZW50KGF0dHJpYnV0ZTogQm91bmRFdmVudCk6IHZvaWQge31cbiAgdmlzaXRUZXh0KHRleHQ6IFRleHQpOiB2b2lkIHt9XG4gIHZpc2l0Qm91bmRUZXh0KHRleHQ6IEJvdW5kVGV4dCk6IHZvaWQge31cbiAgdmlzaXRJY3UoaWN1OiBJY3UpOiB2b2lkIHt9XG59XG5cbmV4cG9ydCBjbGFzcyBSZWN1cnNpdmVWaXNpdG9yIGltcGxlbWVudHMgVmlzaXRvcjx2b2lkPiB7XG4gIHZpc2l0RWxlbWVudChlbGVtZW50OiBFbGVtZW50KTogdm9pZCB7XG4gICAgdmlzaXRBbGwodGhpcywgZWxlbWVudC5hdHRyaWJ1dGVzKTtcbiAgICB2aXNpdEFsbCh0aGlzLCBlbGVtZW50LmNoaWxkcmVuKTtcbiAgICB2aXNpdEFsbCh0aGlzLCBlbGVtZW50LnJlZmVyZW5jZXMpO1xuICB9XG4gIHZpc2l0VGVtcGxhdGUodGVtcGxhdGU6IFRlbXBsYXRlKTogdm9pZCB7XG4gICAgdmlzaXRBbGwodGhpcywgdGVtcGxhdGUuYXR0cmlidXRlcyk7XG4gICAgdmlzaXRBbGwodGhpcywgdGVtcGxhdGUuY2hpbGRyZW4pO1xuICAgIHZpc2l0QWxsKHRoaXMsIHRlbXBsYXRlLnJlZmVyZW5jZXMpO1xuICAgIHZpc2l0QWxsKHRoaXMsIHRlbXBsYXRlLnZhcmlhYmxlcyk7XG4gIH1cbiAgdmlzaXRDb250ZW50KGNvbnRlbnQ6IENvbnRlbnQpOiB2b2lkIHt9XG4gIHZpc2l0VmFyaWFibGUodmFyaWFibGU6IFZhcmlhYmxlKTogdm9pZCB7fVxuICB2aXNpdFJlZmVyZW5jZShyZWZlcmVuY2U6IFJlZmVyZW5jZSk6IHZvaWQge31cbiAgdmlzaXRUZXh0QXR0cmlidXRlKGF0dHJpYnV0ZTogVGV4dEF0dHJpYnV0ZSk6IHZvaWQge31cbiAgdmlzaXRCb3VuZEF0dHJpYnV0ZShhdHRyaWJ1dGU6IEJvdW5kQXR0cmlidXRlKTogdm9pZCB7fVxuICB2aXNpdEJvdW5kRXZlbnQoYXR0cmlidXRlOiBCb3VuZEV2ZW50KTogdm9pZCB7fVxuICB2aXNpdFRleHQodGV4dDogVGV4dCk6IHZvaWQge31cbiAgdmlzaXRCb3VuZFRleHQodGV4dDogQm91bmRUZXh0KTogdm9pZCB7fVxuICB2aXNpdEljdShpY3U6IEljdSk6IHZvaWQge31cbn1cblxuZXhwb3J0IGNsYXNzIFRyYW5zZm9ybVZpc2l0b3IgaW1wbGVtZW50cyBWaXNpdG9yPE5vZGU+IHtcbiAgdmlzaXRFbGVtZW50KGVsZW1lbnQ6IEVsZW1lbnQpOiBOb2RlIHtcbiAgICBjb25zdCBuZXdBdHRyaWJ1dGVzID0gdHJhbnNmb3JtQWxsKHRoaXMsIGVsZW1lbnQuYXR0cmlidXRlcyk7XG4gICAgY29uc3QgbmV3SW5wdXRzID0gdHJhbnNmb3JtQWxsKHRoaXMsIGVsZW1lbnQuaW5wdXRzKTtcbiAgICBjb25zdCBuZXdPdXRwdXRzID0gdHJhbnNmb3JtQWxsKHRoaXMsIGVsZW1lbnQub3V0cHV0cyk7XG4gICAgY29uc3QgbmV3Q2hpbGRyZW4gPSB0cmFuc2Zvcm1BbGwodGhpcywgZWxlbWVudC5jaGlsZHJlbik7XG4gICAgY29uc3QgbmV3UmVmZXJlbmNlcyA9IHRyYW5zZm9ybUFsbCh0aGlzLCBlbGVtZW50LnJlZmVyZW5jZXMpO1xuICAgIGlmIChuZXdBdHRyaWJ1dGVzICE9IGVsZW1lbnQuYXR0cmlidXRlcyB8fCBuZXdJbnB1dHMgIT0gZWxlbWVudC5pbnB1dHMgfHxcbiAgICAgICAgbmV3T3V0cHV0cyAhPSBlbGVtZW50Lm91dHB1dHMgfHwgbmV3Q2hpbGRyZW4gIT0gZWxlbWVudC5jaGlsZHJlbiB8fFxuICAgICAgICBuZXdSZWZlcmVuY2VzICE9IGVsZW1lbnQucmVmZXJlbmNlcykge1xuICAgICAgcmV0dXJuIG5ldyBFbGVtZW50KFxuICAgICAgICAgIGVsZW1lbnQubmFtZSwgbmV3QXR0cmlidXRlcywgbmV3SW5wdXRzLCBuZXdPdXRwdXRzLCBuZXdDaGlsZHJlbiwgbmV3UmVmZXJlbmNlcyxcbiAgICAgICAgICBlbGVtZW50LnNvdXJjZVNwYW4sIGVsZW1lbnQuc3RhcnRTb3VyY2VTcGFuLCBlbGVtZW50LmVuZFNvdXJjZVNwYW4pO1xuICAgIH1cbiAgICByZXR1cm4gZWxlbWVudDtcbiAgfVxuXG4gIHZpc2l0VGVtcGxhdGUodGVtcGxhdGU6IFRlbXBsYXRlKTogTm9kZSB7XG4gICAgY29uc3QgbmV3QXR0cmlidXRlcyA9IHRyYW5zZm9ybUFsbCh0aGlzLCB0ZW1wbGF0ZS5hdHRyaWJ1dGVzKTtcbiAgICBjb25zdCBuZXdJbnB1dHMgPSB0cmFuc2Zvcm1BbGwodGhpcywgdGVtcGxhdGUuaW5wdXRzKTtcbiAgICBjb25zdCBuZXdPdXRwdXRzID0gdHJhbnNmb3JtQWxsKHRoaXMsIHRlbXBsYXRlLm91dHB1dHMpO1xuICAgIGNvbnN0IG5ld1RlbXBsYXRlQXR0cnMgPSB0cmFuc2Zvcm1BbGwodGhpcywgdGVtcGxhdGUudGVtcGxhdGVBdHRycyk7XG4gICAgY29uc3QgbmV3Q2hpbGRyZW4gPSB0cmFuc2Zvcm1BbGwodGhpcywgdGVtcGxhdGUuY2hpbGRyZW4pO1xuICAgIGNvbnN0IG5ld1JlZmVyZW5jZXMgPSB0cmFuc2Zvcm1BbGwodGhpcywgdGVtcGxhdGUucmVmZXJlbmNlcyk7XG4gICAgY29uc3QgbmV3VmFyaWFibGVzID0gdHJhbnNmb3JtQWxsKHRoaXMsIHRlbXBsYXRlLnZhcmlhYmxlcyk7XG4gICAgaWYgKG5ld0F0dHJpYnV0ZXMgIT0gdGVtcGxhdGUuYXR0cmlidXRlcyB8fCBuZXdJbnB1dHMgIT0gdGVtcGxhdGUuaW5wdXRzIHx8XG4gICAgICAgIG5ld091dHB1dHMgIT0gdGVtcGxhdGUub3V0cHV0cyB8fCBuZXdUZW1wbGF0ZUF0dHJzICE9IHRlbXBsYXRlLnRlbXBsYXRlQXR0cnMgfHxcbiAgICAgICAgbmV3Q2hpbGRyZW4gIT0gdGVtcGxhdGUuY2hpbGRyZW4gfHwgbmV3UmVmZXJlbmNlcyAhPSB0ZW1wbGF0ZS5yZWZlcmVuY2VzIHx8XG4gICAgICAgIG5ld1ZhcmlhYmxlcyAhPSB0ZW1wbGF0ZS52YXJpYWJsZXMpIHtcbiAgICAgIHJldHVybiBuZXcgVGVtcGxhdGUoXG4gICAgICAgICAgdGVtcGxhdGUudGFnTmFtZSwgbmV3QXR0cmlidXRlcywgbmV3SW5wdXRzLCBuZXdPdXRwdXRzLCBuZXdUZW1wbGF0ZUF0dHJzLCBuZXdDaGlsZHJlbixcbiAgICAgICAgICBuZXdSZWZlcmVuY2VzLCBuZXdWYXJpYWJsZXMsIHRlbXBsYXRlLnNvdXJjZVNwYW4sIHRlbXBsYXRlLnN0YXJ0U291cmNlU3BhbixcbiAgICAgICAgICB0ZW1wbGF0ZS5lbmRTb3VyY2VTcGFuKTtcbiAgICB9XG4gICAgcmV0dXJuIHRlbXBsYXRlO1xuICB9XG5cbiAgdmlzaXRDb250ZW50KGNvbnRlbnQ6IENvbnRlbnQpOiBOb2RlIHsgcmV0dXJuIGNvbnRlbnQ7IH1cblxuICB2aXNpdFZhcmlhYmxlKHZhcmlhYmxlOiBWYXJpYWJsZSk6IE5vZGUgeyByZXR1cm4gdmFyaWFibGU7IH1cbiAgdmlzaXRSZWZlcmVuY2UocmVmZXJlbmNlOiBSZWZlcmVuY2UpOiBOb2RlIHsgcmV0dXJuIHJlZmVyZW5jZTsgfVxuICB2aXNpdFRleHRBdHRyaWJ1dGUoYXR0cmlidXRlOiBUZXh0QXR0cmlidXRlKTogTm9kZSB7IHJldHVybiBhdHRyaWJ1dGU7IH1cbiAgdmlzaXRCb3VuZEF0dHJpYnV0ZShhdHRyaWJ1dGU6IEJvdW5kQXR0cmlidXRlKTogTm9kZSB7IHJldHVybiBhdHRyaWJ1dGU7IH1cbiAgdmlzaXRCb3VuZEV2ZW50KGF0dHJpYnV0ZTogQm91bmRFdmVudCk6IE5vZGUgeyByZXR1cm4gYXR0cmlidXRlOyB9XG4gIHZpc2l0VGV4dCh0ZXh0OiBUZXh0KTogTm9kZSB7IHJldHVybiB0ZXh0OyB9XG4gIHZpc2l0Qm91bmRUZXh0KHRleHQ6IEJvdW5kVGV4dCk6IE5vZGUgeyByZXR1cm4gdGV4dDsgfVxuICB2aXNpdEljdShpY3U6IEljdSk6IE5vZGUgeyByZXR1cm4gaWN1OyB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiB2aXNpdEFsbDxSZXN1bHQ+KHZpc2l0b3I6IFZpc2l0b3I8UmVzdWx0Piwgbm9kZXM6IE5vZGVbXSk6IFJlc3VsdFtdIHtcbiAgY29uc3QgcmVzdWx0OiBSZXN1bHRbXSA9IFtdO1xuICBpZiAodmlzaXRvci52aXNpdCkge1xuICAgIGZvciAoY29uc3Qgbm9kZSBvZiBub2Rlcykge1xuICAgICAgY29uc3QgbmV3Tm9kZSA9IHZpc2l0b3IudmlzaXQobm9kZSkgfHwgbm9kZS52aXNpdCh2aXNpdG9yKTtcbiAgICB9XG4gIH0gZWxzZSB7XG4gICAgZm9yIChjb25zdCBub2RlIG9mIG5vZGVzKSB7XG4gICAgICBjb25zdCBuZXdOb2RlID0gbm9kZS52aXNpdCh2aXNpdG9yKTtcbiAgICAgIGlmIChuZXdOb2RlKSB7XG4gICAgICAgIHJlc3VsdC5wdXNoKG5ld05vZGUpO1xuICAgICAgfVxuICAgIH1cbiAgfVxuICByZXR1cm4gcmVzdWx0O1xufVxuXG5leHBvcnQgZnVuY3Rpb24gdHJhbnNmb3JtQWxsPFJlc3VsdCBleHRlbmRzIE5vZGU+KFxuICAgIHZpc2l0b3I6IFZpc2l0b3I8Tm9kZT4sIG5vZGVzOiBSZXN1bHRbXSk6IFJlc3VsdFtdIHtcbiAgY29uc3QgcmVzdWx0OiBSZXN1bHRbXSA9IFtdO1xuICBsZXQgY2hhbmdlZCA9IGZhbHNlO1xuICBmb3IgKGNvbnN0IG5vZGUgb2Ygbm9kZXMpIHtcbiAgICBjb25zdCBuZXdOb2RlID0gbm9kZS52aXNpdCh2aXNpdG9yKTtcbiAgICBpZiAobmV3Tm9kZSkge1xuICAgICAgcmVzdWx0LnB1c2gobmV3Tm9kZSBhcyBSZXN1bHQpO1xuICAgIH1cbiAgICBjaGFuZ2VkID0gY2hhbmdlZCB8fCBuZXdOb2RlICE9IG5vZGU7XG4gIH1cbiAgcmV0dXJuIGNoYW5nZWQgPyByZXN1bHQgOiBub2Rlcztcbn1cbiJdfQ==