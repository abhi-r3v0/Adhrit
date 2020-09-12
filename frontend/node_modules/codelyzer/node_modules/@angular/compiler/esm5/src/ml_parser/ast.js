/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __extends } from "tslib";
import { AstPath } from '../ast_path';
var NodeWithI18n = /** @class */ (function () {
    function NodeWithI18n(sourceSpan, i18n) {
        this.sourceSpan = sourceSpan;
        this.i18n = i18n;
    }
    return NodeWithI18n;
}());
export { NodeWithI18n };
var Text = /** @class */ (function (_super) {
    __extends(Text, _super);
    function Text(value, sourceSpan, i18n) {
        var _this = _super.call(this, sourceSpan, i18n) || this;
        _this.value = value;
        return _this;
    }
    Text.prototype.visit = function (visitor, context) { return visitor.visitText(this, context); };
    return Text;
}(NodeWithI18n));
export { Text };
var Expansion = /** @class */ (function (_super) {
    __extends(Expansion, _super);
    function Expansion(switchValue, type, cases, sourceSpan, switchValueSourceSpan, i18n) {
        var _this = _super.call(this, sourceSpan, i18n) || this;
        _this.switchValue = switchValue;
        _this.type = type;
        _this.cases = cases;
        _this.switchValueSourceSpan = switchValueSourceSpan;
        return _this;
    }
    Expansion.prototype.visit = function (visitor, context) { return visitor.visitExpansion(this, context); };
    return Expansion;
}(NodeWithI18n));
export { Expansion };
var ExpansionCase = /** @class */ (function () {
    function ExpansionCase(value, expression, sourceSpan, valueSourceSpan, expSourceSpan) {
        this.value = value;
        this.expression = expression;
        this.sourceSpan = sourceSpan;
        this.valueSourceSpan = valueSourceSpan;
        this.expSourceSpan = expSourceSpan;
    }
    ExpansionCase.prototype.visit = function (visitor, context) { return visitor.visitExpansionCase(this, context); };
    return ExpansionCase;
}());
export { ExpansionCase };
var Attribute = /** @class */ (function (_super) {
    __extends(Attribute, _super);
    function Attribute(name, value, sourceSpan, valueSpan, i18n) {
        var _this = _super.call(this, sourceSpan, i18n) || this;
        _this.name = name;
        _this.value = value;
        _this.valueSpan = valueSpan;
        return _this;
    }
    Attribute.prototype.visit = function (visitor, context) { return visitor.visitAttribute(this, context); };
    return Attribute;
}(NodeWithI18n));
export { Attribute };
var Element = /** @class */ (function (_super) {
    __extends(Element, _super);
    function Element(name, attrs, children, sourceSpan, startSourceSpan, endSourceSpan, i18n) {
        if (startSourceSpan === void 0) { startSourceSpan = null; }
        if (endSourceSpan === void 0) { endSourceSpan = null; }
        var _this = _super.call(this, sourceSpan, i18n) || this;
        _this.name = name;
        _this.attrs = attrs;
        _this.children = children;
        _this.startSourceSpan = startSourceSpan;
        _this.endSourceSpan = endSourceSpan;
        return _this;
    }
    Element.prototype.visit = function (visitor, context) { return visitor.visitElement(this, context); };
    return Element;
}(NodeWithI18n));
export { Element };
var Comment = /** @class */ (function () {
    function Comment(value, sourceSpan) {
        this.value = value;
        this.sourceSpan = sourceSpan;
    }
    Comment.prototype.visit = function (visitor, context) { return visitor.visitComment(this, context); };
    return Comment;
}());
export { Comment };
export function visitAll(visitor, nodes, context) {
    if (context === void 0) { context = null; }
    var result = [];
    var visit = visitor.visit ?
        function (ast) { return visitor.visit(ast, context) || ast.visit(visitor, context); } :
        function (ast) { return ast.visit(visitor, context); };
    nodes.forEach(function (ast) {
        var astResult = visit(ast);
        if (astResult) {
            result.push(astResult);
        }
    });
    return result;
}
var RecursiveVisitor = /** @class */ (function () {
    function RecursiveVisitor() {
    }
    RecursiveVisitor.prototype.visitElement = function (ast, context) {
        this.visitChildren(context, function (visit) {
            visit(ast.attrs);
            visit(ast.children);
        });
    };
    RecursiveVisitor.prototype.visitAttribute = function (ast, context) { };
    RecursiveVisitor.prototype.visitText = function (ast, context) { };
    RecursiveVisitor.prototype.visitComment = function (ast, context) { };
    RecursiveVisitor.prototype.visitExpansion = function (ast, context) {
        return this.visitChildren(context, function (visit) { visit(ast.cases); });
    };
    RecursiveVisitor.prototype.visitExpansionCase = function (ast, context) { };
    RecursiveVisitor.prototype.visitChildren = function (context, cb) {
        var results = [];
        var t = this;
        function visit(children) {
            if (children)
                results.push(visitAll(t, children, context));
        }
        cb(visit);
        return Array.prototype.concat.apply([], results);
    };
    return RecursiveVisitor;
}());
export { RecursiveVisitor };
function spanOf(ast) {
    var start = ast.sourceSpan.start.offset;
    var end = ast.sourceSpan.end.offset;
    if (ast instanceof Element) {
        if (ast.endSourceSpan) {
            end = ast.endSourceSpan.end.offset;
        }
        else if (ast.children && ast.children.length) {
            end = spanOf(ast.children[ast.children.length - 1]).end;
        }
    }
    return { start: start, end: end };
}
export function findNode(nodes, position) {
    var path = [];
    var visitor = new /** @class */ (function (_super) {
        __extends(class_1, _super);
        function class_1() {
            return _super !== null && _super.apply(this, arguments) || this;
        }
        class_1.prototype.visit = function (ast, context) {
            var span = spanOf(ast);
            if (span.start <= position && position < span.end) {
                path.push(ast);
            }
            else {
                // Returning a value here will result in the children being skipped.
                return true;
            }
        };
        return class_1;
    }(RecursiveVisitor));
    visitAll(visitor, nodes);
    return new AstPath(path, position);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXN0LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvc3JjL21sX3BhcnNlci9hc3QudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOztBQUVILE9BQU8sRUFBQyxPQUFPLEVBQUMsTUFBTSxhQUFhLENBQUM7QUFTcEM7SUFDRSxzQkFBbUIsVUFBMkIsRUFBUyxJQUFlO1FBQW5ELGVBQVUsR0FBVixVQUFVLENBQWlCO1FBQVMsU0FBSSxHQUFKLElBQUksQ0FBVztJQUFHLENBQUM7SUFFNUUsbUJBQUM7QUFBRCxDQUFDLEFBSEQsSUFHQzs7QUFFRDtJQUEwQix3QkFBWTtJQUNwQyxjQUFtQixLQUFhLEVBQUUsVUFBMkIsRUFBRSxJQUFlO1FBQTlFLFlBQ0Usa0JBQU0sVUFBVSxFQUFFLElBQUksQ0FBQyxTQUN4QjtRQUZrQixXQUFLLEdBQUwsS0FBSyxDQUFROztJQUVoQyxDQUFDO0lBQ0Qsb0JBQUssR0FBTCxVQUFNLE9BQWdCLEVBQUUsT0FBWSxJQUFTLE9BQU8sT0FBTyxDQUFDLFNBQVMsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQ3pGLFdBQUM7QUFBRCxDQUFDLEFBTEQsQ0FBMEIsWUFBWSxHQUtyQzs7QUFFRDtJQUErQiw2QkFBWTtJQUN6QyxtQkFDVyxXQUFtQixFQUFTLElBQVksRUFBUyxLQUFzQixFQUM5RSxVQUEyQixFQUFTLHFCQUFzQyxFQUFFLElBQWU7UUFGL0YsWUFHRSxrQkFBTSxVQUFVLEVBQUUsSUFBSSxDQUFDLFNBQ3hCO1FBSFUsaUJBQVcsR0FBWCxXQUFXLENBQVE7UUFBUyxVQUFJLEdBQUosSUFBSSxDQUFRO1FBQVMsV0FBSyxHQUFMLEtBQUssQ0FBaUI7UUFDMUMsMkJBQXFCLEdBQXJCLHFCQUFxQixDQUFpQjs7SUFFOUUsQ0FBQztJQUNELHlCQUFLLEdBQUwsVUFBTSxPQUFnQixF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RCxJQUFNLElBQUksR0FBVyxFQUFFLENBQUM7SUFFeEIsSUFBTSxPQUFPLEdBQUc7UUFBa0IsMkJBQWdCO1FBQTlCOztRQVVwQixDQUFDO1FBVEMsdUJBQUssR0FBTCxVQUFNLEdBQVMsRUFBRSxPQUFZO1lBQzNCLElBQU0sSUFBSSxHQUFHLE1BQU0sQ0FBQyxHQUFHLENBQUMsQ0FBQztZQUN6QixJQUFJLElBQUksQ0FBQyxLQUFLLElBQUksUUFBUSxJQUFJLFFBQVEsR0FBRyxJQUFJLENBQUMsR0FBRyxFQUFFO2dCQUNqRCxJQUFJLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxDQUFDO2FBQ2hCO2lCQUFNO2dCQUNMLG9FQUFvRTtnQkFDcEUsT0FBTyxJQUFJLENBQUM7YUFDYjtRQUNILENBQUM7UUFDSCxjQUFDO0lBQUQsQ0FBQyxBQVZtQixDQUFjLGdCQUFnQixFQVVqRCxDQUFDO0lBRUYsUUFBUSxDQUFDLE9BQU8sRUFBRSxLQUFLLENBQUMsQ0FBQztJQUV6QixPQUFPLElBQUksT0FBTyxDQUFPLElBQUksRUFBRSxRQUFRLENBQUMsQ0FBQztBQUMzQyxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0FzdFBhdGh9IGZyb20gJy4uL2FzdF9wYXRoJztcbmltcG9ydCB7STE4bk1ldGF9IGZyb20gJy4uL2kxOG4vaTE4bl9hc3QnO1xuaW1wb3J0IHtQYXJzZVNvdXJjZVNwYW59IGZyb20gJy4uL3BhcnNlX3V0aWwnO1xuXG5leHBvcnQgaW50ZXJmYWNlIE5vZGUge1xuICBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW47XG4gIHZpc2l0KHZpc2l0b3I6IFZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueTtcbn1cblxuZXhwb3J0IGFic3RyYWN0IGNsYXNzIE5vZGVXaXRoSTE4biBpbXBsZW1lbnRzIE5vZGUge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLCBwdWJsaWMgaTE4bj86IEkxOG5NZXRhKSB7fVxuICBhYnN0cmFjdCB2aXNpdCh2aXNpdG9yOiBWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnk7XG59XG5cbmV4cG9ydCBjbGFzcyBUZXh0IGV4dGVuZHMgTm9kZVdpdGhJMThuIHtcbiAgY29uc3RydWN0b3IocHVibGljIHZhbHVlOiBzdHJpbmcsIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiwgaTE4bj86IEkxOG5NZXRhKSB7XG4gICAgc3VwZXIoc291cmNlU3BhbiwgaTE4bik7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHsgcmV0dXJuIHZpc2l0b3IudmlzaXRUZXh0KHRoaXMsIGNvbnRleHQpOyB9XG59XG5cbmV4cG9ydCBjbGFzcyBFeHBhbnNpb24gZXh0ZW5kcyBOb2RlV2l0aEkxOG4ge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBzd2l0Y2hWYWx1ZTogc3RyaW5nLCBwdWJsaWMgdHlwZTogc3RyaW5nLCBwdWJsaWMgY2FzZXM6IEV4cGFuc2lvbkNhc2VbXSxcbiAgICAgIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbiwgcHVibGljIHN3aXRjaFZhbHVlU291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLCBpMThuPzogSTE4bk1ldGEpIHtcbiAgICBzdXBlcihzb3VyY2VTcGFuLCBpMThuKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkgeyByZXR1cm4gdmlzaXRvci52aXNpdEV4cGFuc2lvbih0aGlzLCBjb250ZXh0KTsgfVxufVxuXG5leHBvcnQgY2xhc3MgRXhwYW5zaW9uQ2FzZSBpbXBsZW1lbnRzIE5vZGUge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyB2YWx1ZTogc3RyaW5nLCBwdWJsaWMgZXhwcmVzc2lvbjogTm9kZVtdLCBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgcHVibGljIHZhbHVlU291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLCBwdWJsaWMgZXhwU291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuKSB7fVxuXG4gIHZpc2l0KHZpc2l0b3I6IFZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7IHJldHVybiB2aXNpdG9yLnZpc2l0RXhwYW5zaW9uQ2FzZSh0aGlzLCBjb250ZXh0KTsgfVxufVxuXG5leHBvcnQgY2xhc3MgQXR0cmlidXRlIGV4dGVuZHMgTm9kZVdpdGhJMThuIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgbmFtZTogc3RyaW5nLCBwdWJsaWMgdmFsdWU6IHN0cmluZywgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLFxuICAgICAgcHVibGljIHZhbHVlU3Bhbj86IFBhcnNlU291cmNlU3BhbiwgaTE4bj86IEkxOG5NZXRhKSB7XG4gICAgc3VwZXIoc291cmNlU3BhbiwgaTE4bik7XG4gIH1cbiAgdmlzaXQodmlzaXRvcjogVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHsgcmV0dXJuIHZpc2l0b3IudmlzaXRBdHRyaWJ1dGUodGhpcywgY29udGV4dCk7IH1cbn1cblxuZXhwb3J0IGNsYXNzIEVsZW1lbnQgZXh0ZW5kcyBOb2RlV2l0aEkxOG4ge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHB1YmxpYyBhdHRyczogQXR0cmlidXRlW10sIHB1YmxpYyBjaGlsZHJlbjogTm9kZVtdLFxuICAgICAgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLCBwdWJsaWMgc3RhcnRTb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW58bnVsbCA9IG51bGwsXG4gICAgICBwdWJsaWMgZW5kU291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFufG51bGwgPSBudWxsLCBpMThuPzogSTE4bk1ldGEpIHtcbiAgICBzdXBlcihzb3VyY2VTcGFuLCBpMThuKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkgeyByZXR1cm4gdmlzaXRvci52aXNpdEVsZW1lbnQodGhpcywgY29udGV4dCk7IH1cbn1cblxuZXhwb3J0IGNsYXNzIENvbW1lbnQgaW1wbGVtZW50cyBOb2RlIHtcbiAgY29uc3RydWN0b3IocHVibGljIHZhbHVlOiBzdHJpbmd8bnVsbCwgcHVibGljIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3Bhbikge31cbiAgdmlzaXQodmlzaXRvcjogVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHsgcmV0dXJuIHZpc2l0b3IudmlzaXRDb21tZW50KHRoaXMsIGNvbnRleHQpOyB9XG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgVmlzaXRvciB7XG4gIC8vIFJldHVybmluZyBhIHRydXRoeSB2YWx1ZSBmcm9tIGB2aXNpdCgpYCB3aWxsIHByZXZlbnQgYHZpc2l0QWxsKClgIGZyb20gdGhlIGNhbGwgdG8gdGhlIHR5cGVkXG4gIC8vIG1ldGhvZCBhbmQgcmVzdWx0IHJldHVybmVkIHdpbGwgYmVjb21lIHRoZSByZXN1bHQgaW5jbHVkZWQgaW4gYHZpc2l0QWxsKClgcyByZXN1bHQgYXJyYXkuXG4gIHZpc2l0Pyhub2RlOiBOb2RlLCBjb250ZXh0OiBhbnkpOiBhbnk7XG5cbiAgdmlzaXRFbGVtZW50KGVsZW1lbnQ6IEVsZW1lbnQsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRBdHRyaWJ1dGUoYXR0cmlidXRlOiBBdHRyaWJ1dGUsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRUZXh0KHRleHQ6IFRleHQsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRDb21tZW50KGNvbW1lbnQ6IENvbW1lbnQsIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRFeHBhbnNpb24oZXhwYW5zaW9uOiBFeHBhbnNpb24sIGNvbnRleHQ6IGFueSk6IGFueTtcbiAgdmlzaXRFeHBhbnNpb25DYXNlKGV4cGFuc2lvbkNhc2U6IEV4cGFuc2lvbkNhc2UsIGNvbnRleHQ6IGFueSk6IGFueTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHZpc2l0QWxsKHZpc2l0b3I6IFZpc2l0b3IsIG5vZGVzOiBOb2RlW10sIGNvbnRleHQ6IGFueSA9IG51bGwpOiBhbnlbXSB7XG4gIGNvbnN0IHJlc3VsdDogYW55W10gPSBbXTtcblxuICBjb25zdCB2aXNpdCA9IHZpc2l0b3IudmlzaXQgP1xuICAgICAgKGFzdDogTm9kZSkgPT4gdmlzaXRvci52aXNpdCAhKGFzdCwgY29udGV4dCkgfHwgYXN0LnZpc2l0KHZpc2l0b3IsIGNvbnRleHQpIDpcbiAgICAgIChhc3Q6IE5vZGUpID0+IGFzdC52aXNpdCh2aXNpdG9yLCBjb250ZXh0KTtcbiAgbm9kZXMuZm9yRWFjaChhc3QgPT4ge1xuICAgIGNvbnN0IGFzdFJlc3VsdCA9IHZpc2l0KGFzdCk7XG4gICAgaWYgKGFzdFJlc3VsdCkge1xuICAgICAgcmVzdWx0LnB1c2goYXN0UmVzdWx0KTtcbiAgICB9XG4gIH0pO1xuICByZXR1cm4gcmVzdWx0O1xufVxuXG5leHBvcnQgY2xhc3MgUmVjdXJzaXZlVmlzaXRvciBpbXBsZW1lbnRzIFZpc2l0b3Ige1xuICBjb25zdHJ1Y3RvcigpIHt9XG5cbiAgdmlzaXRFbGVtZW50KGFzdDogRWxlbWVudCwgY29udGV4dDogYW55KTogYW55IHtcbiAgICB0aGlzLnZpc2l0Q2hpbGRyZW4oY29udGV4dCwgdmlzaXQgPT4ge1xuICAgICAgdmlzaXQoYXN0LmF0dHJzKTtcbiAgICAgIHZpc2l0KGFzdC5jaGlsZHJlbik7XG4gICAgfSk7XG4gIH1cblxuICB2aXNpdEF0dHJpYnV0ZShhc3Q6IEF0dHJpYnV0ZSwgY29udGV4dDogYW55KTogYW55IHt9XG4gIHZpc2l0VGV4dChhc3Q6IFRleHQsIGNvbnRleHQ6IGFueSk6IGFueSB7fVxuICB2aXNpdENvbW1lbnQoYXN0OiBDb21tZW50LCBjb250ZXh0OiBhbnkpOiBhbnkge31cblxuICB2aXNpdEV4cGFuc2lvbihhc3Q6IEV4cGFuc2lvbiwgY29udGV4dDogYW55KTogYW55IHtcbiAgICByZXR1cm4gdGhpcy52aXNpdENoaWxkcmVuKGNvbnRleHQsIHZpc2l0ID0+IHsgdmlzaXQoYXN0LmNhc2VzKTsgfSk7XG4gIH1cblxuICB2aXNpdEV4cGFuc2lvbkNhc2UoYXN0OiBFeHBhbnNpb25DYXNlLCBjb250ZXh0OiBhbnkpOiBhbnkge31cblxuICBwcml2YXRlIHZpc2l0Q2hpbGRyZW48VCBleHRlbmRzIE5vZGU+KFxuICAgICAgY29udGV4dDogYW55LCBjYjogKHZpc2l0OiAoPFYgZXh0ZW5kcyBOb2RlPihjaGlsZHJlbjogVltdfHVuZGVmaW5lZCkgPT4gdm9pZCkpID0+IHZvaWQpIHtcbiAgICBsZXQgcmVzdWx0czogYW55W11bXSA9IFtdO1xuICAgIGxldCB0ID0gdGhpcztcbiAgICBmdW5jdGlvbiB2aXNpdDxUIGV4dGVuZHMgTm9kZT4oY2hpbGRyZW46IFRbXSB8IHVuZGVmaW5lZCkge1xuICAgICAgaWYgKGNoaWxkcmVuKSByZXN1bHRzLnB1c2godmlzaXRBbGwodCwgY2hpbGRyZW4sIGNvbnRleHQpKTtcbiAgICB9XG4gICAgY2IodmlzaXQpO1xuICAgIHJldHVybiBBcnJheS5wcm90b3R5cGUuY29uY2F0LmFwcGx5KFtdLCByZXN1bHRzKTtcbiAgfVxufVxuXG5leHBvcnQgdHlwZSBIdG1sQXN0UGF0aCA9IEFzdFBhdGg8Tm9kZT47XG5cbmZ1bmN0aW9uIHNwYW5PZihhc3Q6IE5vZGUpIHtcbiAgY29uc3Qgc3RhcnQgPSBhc3Quc291cmNlU3Bhbi5zdGFydC5vZmZzZXQ7XG4gIGxldCBlbmQgPSBhc3Quc291cmNlU3Bhbi5lbmQub2Zmc2V0O1xuICBpZiAoYXN0IGluc3RhbmNlb2YgRWxlbWVudCkge1xuICAgIGlmIChhc3QuZW5kU291cmNlU3Bhbikge1xuICAgICAgZW5kID0gYXN0LmVuZFNvdXJjZVNwYW4uZW5kLm9mZnNldDtcbiAgICB9IGVsc2UgaWYgKGFzdC5jaGlsZHJlbiAmJiBhc3QuY2hpbGRyZW4ubGVuZ3RoKSB7XG4gICAgICBlbmQgPSBzcGFuT2YoYXN0LmNoaWxkcmVuW2FzdC5jaGlsZHJlbi5sZW5ndGggLSAxXSkuZW5kO1xuICAgIH1cbiAgfVxuICByZXR1cm4ge3N0YXJ0LCBlbmR9O1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZmluZE5vZGUobm9kZXM6IE5vZGVbXSwgcG9zaXRpb246IG51bWJlcik6IEh0bWxBc3RQYXRoIHtcbiAgY29uc3QgcGF0aDogTm9kZVtdID0gW107XG5cbiAgY29uc3QgdmlzaXRvciA9IG5ldyBjbGFzcyBleHRlbmRzIFJlY3Vyc2l2ZVZpc2l0b3Ige1xuICAgIHZpc2l0KGFzdDogTm9kZSwgY29udGV4dDogYW55KTogYW55IHtcbiAgICAgIGNvbnN0IHNwYW4gPSBzcGFuT2YoYXN0KTtcbiAgICAgIGlmIChzcGFuLnN0YXJ0IDw9IHBvc2l0aW9uICYmIHBvc2l0aW9uIDwgc3Bhbi5lbmQpIHtcbiAgICAgICAgcGF0aC5wdXNoKGFzdCk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICAvLyBSZXR1cm5pbmcgYSB2YWx1ZSBoZXJlIHdpbGwgcmVzdWx0IGluIHRoZSBjaGlsZHJlbiBiZWluZyBza2lwcGVkLlxuICAgICAgICByZXR1cm4gdHJ1ZTtcbiAgICAgIH1cbiAgICB9XG4gIH07XG5cbiAgdmlzaXRBbGwodmlzaXRvciwgbm9kZXMpO1xuXG4gIHJldHVybiBuZXcgQXN0UGF0aDxOb2RlPihwYXRoLCBwb3NpdGlvbik7XG59XG4iXX0=