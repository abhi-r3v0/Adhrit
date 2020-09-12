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
        define("@angular/compiler/src/ml_parser/ast", ["require", "exports", "tslib", "@angular/compiler/src/ast_path"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    var ast_path_1 = require("@angular/compiler/src/ast_path");
    var NodeWithI18n = /** @class */ (function () {
        function NodeWithI18n(sourceSpan, i18n) {
            this.sourceSpan = sourceSpan;
            this.i18n = i18n;
        }
        return NodeWithI18n;
    }());
    exports.NodeWithI18n = NodeWithI18n;
    var Text = /** @class */ (function (_super) {
        tslib_1.__extends(Text, _super);
        function Text(value, sourceSpan, i18n) {
            var _this = _super.call(this, sourceSpan, i18n) || this;
            _this.value = value;
            return _this;
        }
        Text.prototype.visit = function (visitor, context) { return visitor.visitText(this, context); };
        return Text;
    }(NodeWithI18n));
    exports.Text = Text;
    var Expansion = /** @class */ (function (_super) {
        tslib_1.__extends(Expansion, _super);
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
    exports.Expansion = Expansion;
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
    exports.ExpansionCase = ExpansionCase;
    var Attribute = /** @class */ (function (_super) {
        tslib_1.__extends(Attribute, _super);
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
    exports.Attribute = Attribute;
    var Element = /** @class */ (function (_super) {
        tslib_1.__extends(Element, _super);
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
    exports.Element = Element;
    var Comment = /** @class */ (function () {
        function Comment(value, sourceSpan) {
            this.value = value;
            this.sourceSpan = sourceSpan;
        }
        Comment.prototype.visit = function (visitor, context) { return visitor.visitComment(this, context); };
        return Comment;
    }());
    exports.Comment = Comment;
    function visitAll(visitor, nodes, context) {
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
    exports.visitAll = visitAll;
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
    exports.RecursiveVisitor = RecursiveVisitor;
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
    function findNode(nodes, position) {
        var path = [];
        var visitor = new /** @class */ (function (_super) {
            tslib_1.__extends(class_1, _super);
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
        return new ast_path_1.AstPath(path, position);
    }
    exports.findNode = findNode;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXN0LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXIvc3JjL21sX3BhcnNlci9hc3QudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7O0lBRUgsMkRBQW9DO0lBU3BDO1FBQ0Usc0JBQW1CLFVBQTJCLEVBQVMsSUFBZTtZQUFuRCxlQUFVLEdBQVYsVUFBVSxDQUFpQjtZQUFTLFNBQUksR0FBSixJQUFJLENBQVc7UUFBRyxDQUFDO1FBRTVFLG1CQUFDO0lBQUQsQ0FBQyxBQUhELElBR0M7SUFIcUIsb0NBQVk7SUFLbEM7UUFBMEIsZ0NBQVk7UUFDcEMsY0FBbUIsS0FBYSxFQUFFLFVBQTJCLEVBQUUsSUFBZTtZQUE5RSxZQUNFLGtCQUFNLFVBQVUsRUFBRSxJQUFJLENBQUMsU0FDeEI7WUFGa0IsV0FBSyxHQUFMLEtBQUssQ0FBUTs7UUFFaEMsQ0FBQztRQUNELG9CQUFLLEdBQUwsVUFBTSxPQUFnQixFQUFFLE9BQVksSUFBUyxPQUFPLE9BQU8sQ0FBQyxTQUFTLENBQUMsSUFBSSxFQUFFLE9BQU8sQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUN6RixXQUFDO0lBQUQsQ0FBQyxBQUxELENBQTBCLFlBQVksR0FLckM7SUFMWSxvQkFBSTtJQU9qQjtRQUErQixxQ0FBWTtRQUN6QyxtQkFDVyxXQUFtQixFQUFTLElBQVksRUFBUyxLQUFzQixFQUM5RSxVQUEyQixFQUFTLHFCQUFzQyxFQUFFLElBQWU7WUFGL0YsWUFHRSxrQkFBTSxVQUFVLEVBQUUsSUFBSSxDQUFDLFNBQ3hCO1lBSFUsaUJBQVcsR0FBWCxXQUFXLENBQVE7WUFBUyxVQUFJLEdBQUosSUFBSSxDQUFRO1lBQVMsV0FBSyxHQUFMLEtBQUssQ0FBaUI7WUFDMUMsMkJBQXFCLEdBQXJCLHFCQUFxQixDQUFpQjs7UUFFOUUsQ0FBQztRQUNELHlCQUFLLEdBQUwsVUFBTSxPQUFnQixFQUFF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RUFBRSxHQUFHLEtBQUEsRUFBQyxDQUFDO0lBQ3RCLENBQUM7SUFFRCxTQUFnQixRQUFRLENBQUMsS0FBYSxFQUFFLFFBQWdCO1FBQ3RELElBQU0sSUFBSSxHQUFXLEVBQUUsQ0FBQztRQUV4QixJQUFNLE9BQU8sR0FBRztZQUFrQixtQ0FBZ0I7WUFBOUI7O1lBVXBCLENBQUM7WUFUQyx1QkFBSyxHQUFMLFVBQU0sR0FBUyxFQUFFLE9BQVk7Z0JBQzNCLElBQU0sSUFBSSxHQUFHLE1BQU0sQ0FBQyxHQUFHLENBQUMsQ0FBQztnQkFDekIsSUFBSSxJQUFJLENBQUMsS0FBSyxJQUFJLFFBQVEsSUFBSSxRQUFRLEdBQUcsSUFBSSxDQUFDLEdBQUcsRUFBRTtvQkFDakQsSUFBSSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQztpQkFDaEI7cUJBQU07b0JBQ0wsb0VBQW9FO29CQUNwRSxPQUFPLElBQUksQ0FBQztpQkFDYjtZQUNILENBQUM7WUFDSCxjQUFDO1FBQUQsQ0FBQyxBQVZtQixDQUFjLGdCQUFnQixFQVVqRCxDQUFDO1FBRUYsUUFBUSxDQUFDLE9BQU8sRUFBRSxLQUFLLENBQUMsQ0FBQztRQUV6QixPQUFPLElBQUksa0JBQU8sQ0FBTyxJQUFJLEVBQUUsUUFBUSxDQUFDLENBQUM7SUFDM0MsQ0FBQztJQWxCRCw0QkFrQkMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7QXN0UGF0aH0gZnJvbSAnLi4vYXN0X3BhdGgnO1xuaW1wb3J0IHtJMThuTWV0YX0gZnJvbSAnLi4vaTE4bi9pMThuX2FzdCc7XG5pbXBvcnQge1BhcnNlU291cmNlU3Bhbn0gZnJvbSAnLi4vcGFyc2VfdXRpbCc7XG5cbmV4cG9ydCBpbnRlcmZhY2UgTm9kZSB7XG4gIHNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbjtcbiAgdmlzaXQodmlzaXRvcjogVmlzaXRvciwgY29udGV4dDogYW55KTogYW55O1xufVxuXG5leHBvcnQgYWJzdHJhY3QgY2xhc3MgTm9kZVdpdGhJMThuIGltcGxlbWVudHMgTm9kZSB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyBpMThuPzogSTE4bk1ldGEpIHt9XG4gIGFic3RyYWN0IHZpc2l0KHZpc2l0b3I6IFZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueTtcbn1cblxuZXhwb3J0IGNsYXNzIFRleHQgZXh0ZW5kcyBOb2RlV2l0aEkxOG4ge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgdmFsdWU6IHN0cmluZywgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLCBpMThuPzogSTE4bk1ldGEpIHtcbiAgICBzdXBlcihzb3VyY2VTcGFuLCBpMThuKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkgeyByZXR1cm4gdmlzaXRvci52aXNpdFRleHQodGhpcywgY29udGV4dCk7IH1cbn1cblxuZXhwb3J0IGNsYXNzIEV4cGFuc2lvbiBleHRlbmRzIE5vZGVXaXRoSTE4biB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIHN3aXRjaFZhbHVlOiBzdHJpbmcsIHB1YmxpYyB0eXBlOiBzdHJpbmcsIHB1YmxpYyBjYXNlczogRXhwYW5zaW9uQ2FzZVtdLFxuICAgICAgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuLCBwdWJsaWMgc3dpdGNoVmFsdWVTb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIGkxOG4/OiBJMThuTWV0YSkge1xuICAgIHN1cGVyKHNvdXJjZVNwYW4sIGkxOG4pO1xuICB9XG4gIHZpc2l0KHZpc2l0b3I6IFZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7IHJldHVybiB2aXNpdG9yLnZpc2l0RXhwYW5zaW9uKHRoaXMsIGNvbnRleHQpOyB9XG59XG5cbmV4cG9ydCBjbGFzcyBFeHBhbnNpb25DYXNlIGltcGxlbWVudHMgTm9kZSB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIHZhbHVlOiBzdHJpbmcsIHB1YmxpYyBleHByZXNzaW9uOiBOb2RlW10sIHB1YmxpYyBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sXG4gICAgICBwdWJsaWMgdmFsdWVTb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyBleHBTb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4pIHt9XG5cbiAgdmlzaXQodmlzaXRvcjogVmlzaXRvciwgY29udGV4dDogYW55KTogYW55IHsgcmV0dXJuIHZpc2l0b3IudmlzaXRFeHBhbnNpb25DYXNlKHRoaXMsIGNvbnRleHQpOyB9XG59XG5cbmV4cG9ydCBjbGFzcyBBdHRyaWJ1dGUgZXh0ZW5kcyBOb2RlV2l0aEkxOG4ge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBuYW1lOiBzdHJpbmcsIHB1YmxpYyB2YWx1ZTogc3RyaW5nLCBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sXG4gICAgICBwdWJsaWMgdmFsdWVTcGFuPzogUGFyc2VTb3VyY2VTcGFuLCBpMThuPzogSTE4bk1ldGEpIHtcbiAgICBzdXBlcihzb3VyY2VTcGFuLCBpMThuKTtcbiAgfVxuICB2aXNpdCh2aXNpdG9yOiBWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkgeyByZXR1cm4gdmlzaXRvci52aXNpdEF0dHJpYnV0ZSh0aGlzLCBjb250ZXh0KTsgfVxufVxuXG5leHBvcnQgY2xhc3MgRWxlbWVudCBleHRlbmRzIE5vZGVXaXRoSTE4biB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHVibGljIG5hbWU6IHN0cmluZywgcHVibGljIGF0dHJzOiBBdHRyaWJ1dGVbXSwgcHVibGljIGNoaWxkcmVuOiBOb2RlW10sXG4gICAgICBzb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW4sIHB1YmxpYyBzdGFydFNvdXJjZVNwYW46IFBhcnNlU291cmNlU3BhbnxudWxsID0gbnVsbCxcbiAgICAgIHB1YmxpYyBlbmRTb3VyY2VTcGFuOiBQYXJzZVNvdXJjZVNwYW58bnVsbCA9IG51bGwsIGkxOG4/OiBJMThuTWV0YSkge1xuICAgIHN1cGVyKHNvdXJjZVNwYW4sIGkxOG4pO1xuICB9XG4gIHZpc2l0KHZpc2l0b3I6IFZpc2l0b3IsIGNvbnRleHQ6IGFueSk6IGFueSB7IHJldHVybiB2aXNpdG9yLnZpc2l0RWxlbWVudCh0aGlzLCBjb250ZXh0KTsgfVxufVxuXG5leHBvcnQgY2xhc3MgQ29tbWVudCBpbXBsZW1lbnRzIE5vZGUge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgdmFsdWU6IHN0cmluZ3xudWxsLCBwdWJsaWMgc291cmNlU3BhbjogUGFyc2VTb3VyY2VTcGFuKSB7fVxuICB2aXNpdCh2aXNpdG9yOiBWaXNpdG9yLCBjb250ZXh0OiBhbnkpOiBhbnkgeyByZXR1cm4gdmlzaXRvci52aXNpdENvbW1lbnQodGhpcywgY29udGV4dCk7IH1cbn1cblxuZXhwb3J0IGludGVyZmFjZSBWaXNpdG9yIHtcbiAgLy8gUmV0dXJuaW5nIGEgdHJ1dGh5IHZhbHVlIGZyb20gYHZpc2l0KClgIHdpbGwgcHJldmVudCBgdmlzaXRBbGwoKWAgZnJvbSB0aGUgY2FsbCB0byB0aGUgdHlwZWRcbiAgLy8gbWV0aG9kIGFuZCByZXN1bHQgcmV0dXJuZWQgd2lsbCBiZWNvbWUgdGhlIHJlc3VsdCBpbmNsdWRlZCBpbiBgdmlzaXRBbGwoKWBzIHJlc3VsdCBhcnJheS5cbiAgdmlzaXQ/KG5vZGU6IE5vZGUsIGNvbnRleHQ6IGFueSk6IGFueTtcblxuICB2aXNpdEVsZW1lbnQoZWxlbWVudDogRWxlbWVudCwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdEF0dHJpYnV0ZShhdHRyaWJ1dGU6IEF0dHJpYnV0ZSwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdFRleHQodGV4dDogVGV4dCwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdENvbW1lbnQoY29tbWVudDogQ29tbWVudCwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdEV4cGFuc2lvbihleHBhbnNpb246IEV4cGFuc2lvbiwgY29udGV4dDogYW55KTogYW55O1xuICB2aXNpdEV4cGFuc2lvbkNhc2UoZXhwYW5zaW9uQ2FzZTogRXhwYW5zaW9uQ2FzZSwgY29udGV4dDogYW55KTogYW55O1xufVxuXG5leHBvcnQgZnVuY3Rpb24gdmlzaXRBbGwodmlzaXRvcjogVmlzaXRvciwgbm9kZXM6IE5vZGVbXSwgY29udGV4dDogYW55ID0gbnVsbCk6IGFueVtdIHtcbiAgY29uc3QgcmVzdWx0OiBhbnlbXSA9IFtdO1xuXG4gIGNvbnN0IHZpc2l0ID0gdmlzaXRvci52aXNpdCA/XG4gICAgICAoYXN0OiBOb2RlKSA9PiB2aXNpdG9yLnZpc2l0ICEoYXN0LCBjb250ZXh0KSB8fCBhc3QudmlzaXQodmlzaXRvciwgY29udGV4dCkgOlxuICAgICAgKGFzdDogTm9kZSkgPT4gYXN0LnZpc2l0KHZpc2l0b3IsIGNvbnRleHQpO1xuICBub2Rlcy5mb3JFYWNoKGFzdCA9PiB7XG4gICAgY29uc3QgYXN0UmVzdWx0ID0gdmlzaXQoYXN0KTtcbiAgICBpZiAoYXN0UmVzdWx0KSB7XG4gICAgICByZXN1bHQucHVzaChhc3RSZXN1bHQpO1xuICAgIH1cbiAgfSk7XG4gIHJldHVybiByZXN1bHQ7XG59XG5cbmV4cG9ydCBjbGFzcyBSZWN1cnNpdmVWaXNpdG9yIGltcGxlbWVudHMgVmlzaXRvciB7XG4gIGNvbnN0cnVjdG9yKCkge31cblxuICB2aXNpdEVsZW1lbnQoYXN0OiBFbGVtZW50LCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHRoaXMudmlzaXRDaGlsZHJlbihjb250ZXh0LCB2aXNpdCA9PiB7XG4gICAgICB2aXNpdChhc3QuYXR0cnMpO1xuICAgICAgdmlzaXQoYXN0LmNoaWxkcmVuKTtcbiAgICB9KTtcbiAgfVxuXG4gIHZpc2l0QXR0cmlidXRlKGFzdDogQXR0cmlidXRlLCBjb250ZXh0OiBhbnkpOiBhbnkge31cbiAgdmlzaXRUZXh0KGFzdDogVGV4dCwgY29udGV4dDogYW55KTogYW55IHt9XG4gIHZpc2l0Q29tbWVudChhc3Q6IENvbW1lbnQsIGNvbnRleHQ6IGFueSk6IGFueSB7fVxuXG4gIHZpc2l0RXhwYW5zaW9uKGFzdDogRXhwYW5zaW9uLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLnZpc2l0Q2hpbGRyZW4oY29udGV4dCwgdmlzaXQgPT4geyB2aXNpdChhc3QuY2FzZXMpOyB9KTtcbiAgfVxuXG4gIHZpc2l0RXhwYW5zaW9uQ2FzZShhc3Q6IEV4cGFuc2lvbkNhc2UsIGNvbnRleHQ6IGFueSk6IGFueSB7fVxuXG4gIHByaXZhdGUgdmlzaXRDaGlsZHJlbjxUIGV4dGVuZHMgTm9kZT4oXG4gICAgICBjb250ZXh0OiBhbnksIGNiOiAodmlzaXQ6ICg8ViBleHRlbmRzIE5vZGU+KGNoaWxkcmVuOiBWW118dW5kZWZpbmVkKSA9PiB2b2lkKSkgPT4gdm9pZCkge1xuICAgIGxldCByZXN1bHRzOiBhbnlbXVtdID0gW107XG4gICAgbGV0IHQgPSB0aGlzO1xuICAgIGZ1bmN0aW9uIHZpc2l0PFQgZXh0ZW5kcyBOb2RlPihjaGlsZHJlbjogVFtdIHwgdW5kZWZpbmVkKSB7XG4gICAgICBpZiAoY2hpbGRyZW4pIHJlc3VsdHMucHVzaCh2aXNpdEFsbCh0LCBjaGlsZHJlbiwgY29udGV4dCkpO1xuICAgIH1cbiAgICBjYih2aXNpdCk7XG4gICAgcmV0dXJuIEFycmF5LnByb3RvdHlwZS5jb25jYXQuYXBwbHkoW10sIHJlc3VsdHMpO1xuICB9XG59XG5cbmV4cG9ydCB0eXBlIEh0bWxBc3RQYXRoID0gQXN0UGF0aDxOb2RlPjtcblxuZnVuY3Rpb24gc3Bhbk9mKGFzdDogTm9kZSkge1xuICBjb25zdCBzdGFydCA9IGFzdC5zb3VyY2VTcGFuLnN0YXJ0Lm9mZnNldDtcbiAgbGV0IGVuZCA9IGFzdC5zb3VyY2VTcGFuLmVuZC5vZmZzZXQ7XG4gIGlmIChhc3QgaW5zdGFuY2VvZiBFbGVtZW50KSB7XG4gICAgaWYgKGFzdC5lbmRTb3VyY2VTcGFuKSB7XG4gICAgICBlbmQgPSBhc3QuZW5kU291cmNlU3Bhbi5lbmQub2Zmc2V0O1xuICAgIH0gZWxzZSBpZiAoYXN0LmNoaWxkcmVuICYmIGFzdC5jaGlsZHJlbi5sZW5ndGgpIHtcbiAgICAgIGVuZCA9IHNwYW5PZihhc3QuY2hpbGRyZW5bYXN0LmNoaWxkcmVuLmxlbmd0aCAtIDFdKS5lbmQ7XG4gICAgfVxuICB9XG4gIHJldHVybiB7c3RhcnQsIGVuZH07XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBmaW5kTm9kZShub2RlczogTm9kZVtdLCBwb3NpdGlvbjogbnVtYmVyKTogSHRtbEFzdFBhdGgge1xuICBjb25zdCBwYXRoOiBOb2RlW10gPSBbXTtcblxuICBjb25zdCB2aXNpdG9yID0gbmV3IGNsYXNzIGV4dGVuZHMgUmVjdXJzaXZlVmlzaXRvciB7XG4gICAgdmlzaXQoYXN0OiBOb2RlLCBjb250ZXh0OiBhbnkpOiBhbnkge1xuICAgICAgY29uc3Qgc3BhbiA9IHNwYW5PZihhc3QpO1xuICAgICAgaWYgKHNwYW4uc3RhcnQgPD0gcG9zaXRpb24gJiYgcG9zaXRpb24gPCBzcGFuLmVuZCkge1xuICAgICAgICBwYXRoLnB1c2goYXN0KTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIC8vIFJldHVybmluZyBhIHZhbHVlIGhlcmUgd2lsbCByZXN1bHQgaW4gdGhlIGNoaWxkcmVuIGJlaW5nIHNraXBwZWQuXG4gICAgICAgIHJldHVybiB0cnVlO1xuICAgICAgfVxuICAgIH1cbiAgfTtcblxuICB2aXNpdEFsbCh2aXNpdG9yLCBub2Rlcyk7XG5cbiAgcmV0dXJuIG5ldyBBc3RQYXRoPE5vZGU+KHBhdGgsIHBvc2l0aW9uKTtcbn1cbiJdfQ==