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
        define("@angular/compiler-cli/src/ngtsc/typecheck/src/template_semantics", ["require", "exports", "tslib", "@angular/compiler"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.ExpressionSemanticVisitor = void 0;
    var tslib_1 = require("tslib");
    var compiler_1 = require("@angular/compiler");
    /**
     * Visits a template and records any semantic errors within its expressions.
     */
    var ExpressionSemanticVisitor = /** @class */ (function (_super) {
        tslib_1.__extends(ExpressionSemanticVisitor, _super);
        function ExpressionSemanticVisitor(templateId, boundTarget, oob) {
            var _this = _super.call(this) || this;
            _this.templateId = templateId;
            _this.boundTarget = boundTarget;
            _this.oob = oob;
            return _this;
        }
        ExpressionSemanticVisitor.prototype.visitPropertyWrite = function (ast, context) {
            _super.prototype.visitPropertyWrite.call(this, ast, context);
            if (!(ast.receiver instanceof compiler_1.ImplicitReceiver)) {
                return;
            }
            var target = this.boundTarget.getExpressionTarget(ast);
            if (target instanceof compiler_1.TmplAstVariable) {
                // Template variables are read-only.
                this.oob.illegalAssignmentToTemplateVar(this.templateId, ast, target);
            }
        };
        ExpressionSemanticVisitor.visit = function (ast, id, boundTarget, oob) {
            ast.visit(new ExpressionSemanticVisitor(id, boundTarget, oob));
        };
        return ExpressionSemanticVisitor;
    }(compiler_1.RecursiveAstVisitor));
    exports.ExpressionSemanticVisitor = ExpressionSemanticVisitor;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidGVtcGxhdGVfc2VtYW50aWNzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy9uZ3RzYy90eXBlY2hlY2svc3JjL3RlbXBsYXRlX3NlbWFudGljcy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBRUgsOENBQTBIO0lBTTFIOztPQUVHO0lBQ0g7UUFBK0MscURBQW1CO1FBQ2hFLG1DQUNZLFVBQXNCLEVBQVUsV0FBNkIsRUFDN0QsR0FBZ0M7WUFGNUMsWUFHRSxpQkFBTyxTQUNSO1lBSFcsZ0JBQVUsR0FBVixVQUFVLENBQVk7WUFBVSxpQkFBVyxHQUFYLFdBQVcsQ0FBa0I7WUFDN0QsU0FBRyxHQUFILEdBQUcsQ0FBNkI7O1FBRTVDLENBQUM7UUFFRCxzREFBa0IsR0FBbEIsVUFBbUIsR0FBa0IsRUFBRSxPQUFZO1lBQ2pELGlCQUFNLGtCQUFrQixZQUFDLEdBQUcsRUFBRSxPQUFPLENBQUMsQ0FBQztZQUV2QyxJQUFJLENBQUMsQ0FBQyxHQUFHLENBQUMsUUFBUSxZQUFZLDJCQUFnQixDQUFDLEVBQUU7Z0JBQy9DLE9BQU87YUFDUjtZQUVELElBQU0sTUFBTSxHQUFHLElBQUksQ0FBQyxXQUFXLENBQUMsbUJBQW1CLENBQUMsR0FBRyxDQUFDLENBQUM7WUFDekQsSUFBSSxNQUFNLFlBQVksMEJBQWUsRUFBRTtnQkFDckMsb0NBQW9DO2dCQUNwQyxJQUFJLENBQUMsR0FBRyxDQUFDLDhCQUE4QixDQUFDLElBQUksQ0FBQyxVQUFVLEVBQUUsR0FBRyxFQUFFLE1BQU0sQ0FBQyxDQUFDO2FBQ3ZFO1FBQ0gsQ0FBQztRQUVNLCtCQUFLLEdBQVosVUFDSSxHQUFRLEVBQUUsRUFBYyxFQUFFLFdBQTZCLEVBQ3ZELEdBQWdDO1lBQ2xDLEdBQUcsQ0FBQyxLQUFLLENBQUMsSUFBSSx5QkFBeUIsQ0FBQyxFQUFFLEVBQUUsV0FBVyxFQUFFLEdBQUcsQ0FBQyxDQUFDLENBQUM7UUFDakUsQ0FBQztRQUNILGdDQUFDO0lBQUQsQ0FBQyxBQTFCRCxDQUErQyw4QkFBbUIsR0EwQmpFO0lBMUJZLDhEQUF5QiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0FTVCwgQm91bmRUYXJnZXQsIEltcGxpY2l0UmVjZWl2ZXIsIFByb3BlcnR5V3JpdGUsIFJlY3Vyc2l2ZUFzdFZpc2l0b3IsIFRtcGxBc3RWYXJpYWJsZX0gZnJvbSAnQGFuZ3VsYXIvY29tcGlsZXInO1xuXG5pbXBvcnQge1RlbXBsYXRlSWR9IGZyb20gJy4uL2FwaSc7XG5cbmltcG9ydCB7T3V0T2ZCYW5kRGlhZ25vc3RpY1JlY29yZGVyfSBmcm9tICcuL29vYic7XG5cbi8qKlxuICogVmlzaXRzIGEgdGVtcGxhdGUgYW5kIHJlY29yZHMgYW55IHNlbWFudGljIGVycm9ycyB3aXRoaW4gaXRzIGV4cHJlc3Npb25zLlxuICovXG5leHBvcnQgY2xhc3MgRXhwcmVzc2lvblNlbWFudGljVmlzaXRvciBleHRlbmRzIFJlY3Vyc2l2ZUFzdFZpc2l0b3Ige1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgdGVtcGxhdGVJZDogVGVtcGxhdGVJZCwgcHJpdmF0ZSBib3VuZFRhcmdldDogQm91bmRUYXJnZXQ8YW55PixcbiAgICAgIHByaXZhdGUgb29iOiBPdXRPZkJhbmREaWFnbm9zdGljUmVjb3JkZXIpIHtcbiAgICBzdXBlcigpO1xuICB9XG5cbiAgdmlzaXRQcm9wZXJ0eVdyaXRlKGFzdDogUHJvcGVydHlXcml0ZSwgY29udGV4dDogYW55KTogdm9pZCB7XG4gICAgc3VwZXIudmlzaXRQcm9wZXJ0eVdyaXRlKGFzdCwgY29udGV4dCk7XG5cbiAgICBpZiAoIShhc3QucmVjZWl2ZXIgaW5zdGFuY2VvZiBJbXBsaWNpdFJlY2VpdmVyKSkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIGNvbnN0IHRhcmdldCA9IHRoaXMuYm91bmRUYXJnZXQuZ2V0RXhwcmVzc2lvblRhcmdldChhc3QpO1xuICAgIGlmICh0YXJnZXQgaW5zdGFuY2VvZiBUbXBsQXN0VmFyaWFibGUpIHtcbiAgICAgIC8vIFRlbXBsYXRlIHZhcmlhYmxlcyBhcmUgcmVhZC1vbmx5LlxuICAgICAgdGhpcy5vb2IuaWxsZWdhbEFzc2lnbm1lbnRUb1RlbXBsYXRlVmFyKHRoaXMudGVtcGxhdGVJZCwgYXN0LCB0YXJnZXQpO1xuICAgIH1cbiAgfVxuXG4gIHN0YXRpYyB2aXNpdChcbiAgICAgIGFzdDogQVNULCBpZDogVGVtcGxhdGVJZCwgYm91bmRUYXJnZXQ6IEJvdW5kVGFyZ2V0PGFueT4sXG4gICAgICBvb2I6IE91dE9mQmFuZERpYWdub3N0aWNSZWNvcmRlcik6IHZvaWQge1xuICAgIGFzdC52aXNpdChuZXcgRXhwcmVzc2lvblNlbWFudGljVmlzaXRvcihpZCwgYm91bmRUYXJnZXQsIG9vYikpO1xuICB9XG59XG4iXX0=