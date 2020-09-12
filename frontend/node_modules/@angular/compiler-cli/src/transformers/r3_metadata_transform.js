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
        define("@angular/compiler-cli/src/transformers/r3_metadata_transform", ["require", "exports", "tslib", "@angular/compiler", "typescript", "@angular/compiler-cli/src/metadata/index"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.PartialModuleMetadataTransformer = void 0;
    var tslib_1 = require("tslib");
    var compiler_1 = require("@angular/compiler");
    var ts = require("typescript");
    var index_1 = require("@angular/compiler-cli/src/metadata/index");
    var PartialModuleMetadataTransformer = /** @class */ (function () {
        function PartialModuleMetadataTransformer(modules) {
            this.moduleMap = new Map(modules.map(function (m) { return [m.fileName, m]; }));
        }
        PartialModuleMetadataTransformer.prototype.start = function (sourceFile) {
            var partialModule = this.moduleMap.get(sourceFile.fileName);
            if (partialModule) {
                var classMap_1 = new Map(partialModule.statements.filter(isClassStmt).map(function (s) { return [s.name, s]; }));
                if (classMap_1.size > 0) {
                    return function (value, node) {
                        var e_1, _a, _b;
                        // For class metadata that is going to be transformed to have a static method ensure the
                        // metadata contains a static declaration the new static method.
                        if (index_1.isClassMetadata(value) && node.kind === ts.SyntaxKind.ClassDeclaration) {
                            var classDeclaration = node;
                            if (classDeclaration.name) {
                                var partialClass = classMap_1.get(classDeclaration.name.text);
                                if (partialClass) {
                                    try {
                                        for (var _c = tslib_1.__values(partialClass.fields), _d = _c.next(); !_d.done; _d = _c.next()) {
                                            var field = _d.value;
                                            if (field.name && field.modifiers &&
                                                field.modifiers.some(function (modifier) { return modifier === compiler_1.StmtModifier.Static; })) {
                                                value.statics = tslib_1.__assign(tslib_1.__assign({}, (value.statics || {})), (_b = {}, _b[field.name] = {}, _b));
                                            }
                                        }
                                    }
                                    catch (e_1_1) { e_1 = { error: e_1_1 }; }
                                    finally {
                                        try {
                                            if (_d && !_d.done && (_a = _c.return)) _a.call(_c);
                                        }
                                        finally { if (e_1) throw e_1.error; }
                                    }
                                }
                            }
                        }
                        return value;
                    };
                }
            }
        };
        return PartialModuleMetadataTransformer;
    }());
    exports.PartialModuleMetadataTransformer = PartialModuleMetadataTransformer;
    function isClassStmt(v) {
        return v instanceof compiler_1.ClassStmt;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicjNfbWV0YWRhdGFfdHJhbnNmb3JtLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy90cmFuc2Zvcm1lcnMvcjNfbWV0YWRhdGFfdHJhbnNmb3JtLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFFSCw4Q0FBb0Y7SUFDcEYsK0JBQWlDO0lBRWpDLGtFQUFvRztJQUlwRztRQUdFLDBDQUFZLE9BQXdCO1lBQ2xDLElBQUksQ0FBQyxTQUFTLEdBQUcsSUFBSSxHQUFHLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBMEIsVUFBQSxDQUFDLElBQUksT0FBQSxDQUFDLENBQUMsQ0FBQyxRQUFRLEVBQUUsQ0FBQyxDQUFDLEVBQWYsQ0FBZSxDQUFDLENBQUMsQ0FBQztRQUN2RixDQUFDO1FBRUQsZ0RBQUssR0FBTCxVQUFNLFVBQXlCO1lBQzdCLElBQU0sYUFBYSxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsR0FBRyxDQUFDLFVBQVUsQ0FBQyxRQUFRLENBQUMsQ0FBQztZQUM5RCxJQUFJLGFBQWEsRUFBRTtnQkFDakIsSUFBTSxVQUFRLEdBQUcsSUFBSSxHQUFHLENBQ3BCLGFBQWEsQ0FBQyxVQUFVLENBQUMsTUFBTSxDQUFDLFdBQVcsQ0FBQyxDQUFDLEdBQUcsQ0FBc0IsVUFBQSxDQUFDLElBQUksT0FBQSxDQUFDLENBQUMsQ0FBQyxJQUFJLEVBQUUsQ0FBQyxDQUFDLEVBQVgsQ0FBVyxDQUFDLENBQUMsQ0FBQztnQkFDN0YsSUFBSSxVQUFRLENBQUMsSUFBSSxHQUFHLENBQUMsRUFBRTtvQkFDckIsT0FBTyxVQUFDLEtBQW9CLEVBQUUsSUFBYTs7d0JBQ3pDLHdGQUF3Rjt3QkFDeEYsZ0VBQWdFO3dCQUNoRSxJQUFJLHVCQUFlLENBQUMsS0FBSyxDQUFDLElBQUksSUFBSSxDQUFDLElBQUksS0FBSyxFQUFFLENBQUMsVUFBVSxDQUFDLGdCQUFnQixFQUFFOzRCQUMxRSxJQUFNLGdCQUFnQixHQUFHLElBQTJCLENBQUM7NEJBQ3JELElBQUksZ0JBQWdCLENBQUMsSUFBSSxFQUFFO2dDQUN6QixJQUFNLFlBQVksR0FBRyxVQUFRLENBQUMsR0FBRyxDQUFDLGdCQUFnQixDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztnQ0FDOUQsSUFBSSxZQUFZLEVBQUU7O3dDQUNoQixLQUFvQixJQUFBLEtBQUEsaUJBQUEsWUFBWSxDQUFDLE1BQU0sQ0FBQSxnQkFBQSw0QkFBRTs0Q0FBcEMsSUFBTSxLQUFLLFdBQUE7NENBQ2QsSUFBSSxLQUFLLENBQUMsSUFBSSxJQUFJLEtBQUssQ0FBQyxTQUFTO2dEQUM3QixLQUFLLENBQUMsU0FBUyxDQUFDLElBQUksQ0FBQyxVQUFBLFFBQVEsSUFBSSxPQUFBLFFBQVEsS0FBSyx1QkFBWSxDQUFDLE1BQU0sRUFBaEMsQ0FBZ0MsQ0FBQyxFQUFFO2dEQUN0RSxLQUFLLENBQUMsT0FBTyx5Q0FBTyxDQUFDLEtBQUssQ0FBQyxPQUFPLElBQUksRUFBRSxDQUFDLGdCQUFHLEtBQUssQ0FBQyxJQUFJLElBQUcsRUFBRSxNQUFDLENBQUM7NkNBQzlEO3lDQUNGOzs7Ozs7Ozs7aUNBQ0Y7NkJBQ0Y7eUJBQ0Y7d0JBQ0QsT0FBTyxLQUFLLENBQUM7b0JBQ2YsQ0FBQyxDQUFDO2lCQUNIO2FBQ0Y7UUFDSCxDQUFDO1FBQ0gsdUNBQUM7SUFBRCxDQUFDLEFBbkNELElBbUNDO0lBbkNZLDRFQUFnQztJQXFDN0MsU0FBUyxXQUFXLENBQUMsQ0FBWTtRQUMvQixPQUFPLENBQUMsWUFBWSxvQkFBUyxDQUFDO0lBQ2hDLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtDbGFzc1N0bXQsIFBhcnRpYWxNb2R1bGUsIFN0YXRlbWVudCwgU3RtdE1vZGlmaWVyfSBmcm9tICdAYW5ndWxhci9jb21waWxlcic7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtpc0NsYXNzTWV0YWRhdGEsIE1ldGFkYXRhQ29sbGVjdG9yLCBNZXRhZGF0YVZhbHVlLCBNb2R1bGVNZXRhZGF0YX0gZnJvbSAnLi4vbWV0YWRhdGEvaW5kZXgnO1xuXG5pbXBvcnQge01ldGFkYXRhVHJhbnNmb3JtZXIsIFZhbHVlVHJhbnNmb3JtfSBmcm9tICcuL21ldGFkYXRhX2NhY2hlJztcblxuZXhwb3J0IGNsYXNzIFBhcnRpYWxNb2R1bGVNZXRhZGF0YVRyYW5zZm9ybWVyIGltcGxlbWVudHMgTWV0YWRhdGFUcmFuc2Zvcm1lciB7XG4gIHByaXZhdGUgbW9kdWxlTWFwOiBNYXA8c3RyaW5nLCBQYXJ0aWFsTW9kdWxlPjtcblxuICBjb25zdHJ1Y3Rvcihtb2R1bGVzOiBQYXJ0aWFsTW9kdWxlW10pIHtcbiAgICB0aGlzLm1vZHVsZU1hcCA9IG5ldyBNYXAobW9kdWxlcy5tYXA8W3N0cmluZywgUGFydGlhbE1vZHVsZV0+KG0gPT4gW20uZmlsZU5hbWUsIG1dKSk7XG4gIH1cblxuICBzdGFydChzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlKTogVmFsdWVUcmFuc2Zvcm18dW5kZWZpbmVkIHtcbiAgICBjb25zdCBwYXJ0aWFsTW9kdWxlID0gdGhpcy5tb2R1bGVNYXAuZ2V0KHNvdXJjZUZpbGUuZmlsZU5hbWUpO1xuICAgIGlmIChwYXJ0aWFsTW9kdWxlKSB7XG4gICAgICBjb25zdCBjbGFzc01hcCA9IG5ldyBNYXA8c3RyaW5nLCBDbGFzc1N0bXQ+KFxuICAgICAgICAgIHBhcnRpYWxNb2R1bGUuc3RhdGVtZW50cy5maWx0ZXIoaXNDbGFzc1N0bXQpLm1hcDxbc3RyaW5nLCBDbGFzc1N0bXRdPihzID0+IFtzLm5hbWUsIHNdKSk7XG4gICAgICBpZiAoY2xhc3NNYXAuc2l6ZSA+IDApIHtcbiAgICAgICAgcmV0dXJuICh2YWx1ZTogTWV0YWRhdGFWYWx1ZSwgbm9kZTogdHMuTm9kZSk6IE1ldGFkYXRhVmFsdWUgPT4ge1xuICAgICAgICAgIC8vIEZvciBjbGFzcyBtZXRhZGF0YSB0aGF0IGlzIGdvaW5nIHRvIGJlIHRyYW5zZm9ybWVkIHRvIGhhdmUgYSBzdGF0aWMgbWV0aG9kIGVuc3VyZSB0aGVcbiAgICAgICAgICAvLyBtZXRhZGF0YSBjb250YWlucyBhIHN0YXRpYyBkZWNsYXJhdGlvbiB0aGUgbmV3IHN0YXRpYyBtZXRob2QuXG4gICAgICAgICAgaWYgKGlzQ2xhc3NNZXRhZGF0YSh2YWx1ZSkgJiYgbm9kZS5raW5kID09PSB0cy5TeW50YXhLaW5kLkNsYXNzRGVjbGFyYXRpb24pIHtcbiAgICAgICAgICAgIGNvbnN0IGNsYXNzRGVjbGFyYXRpb24gPSBub2RlIGFzIHRzLkNsYXNzRGVjbGFyYXRpb247XG4gICAgICAgICAgICBpZiAoY2xhc3NEZWNsYXJhdGlvbi5uYW1lKSB7XG4gICAgICAgICAgICAgIGNvbnN0IHBhcnRpYWxDbGFzcyA9IGNsYXNzTWFwLmdldChjbGFzc0RlY2xhcmF0aW9uLm5hbWUudGV4dCk7XG4gICAgICAgICAgICAgIGlmIChwYXJ0aWFsQ2xhc3MpIHtcbiAgICAgICAgICAgICAgICBmb3IgKGNvbnN0IGZpZWxkIG9mIHBhcnRpYWxDbGFzcy5maWVsZHMpIHtcbiAgICAgICAgICAgICAgICAgIGlmIChmaWVsZC5uYW1lICYmIGZpZWxkLm1vZGlmaWVycyAmJlxuICAgICAgICAgICAgICAgICAgICAgIGZpZWxkLm1vZGlmaWVycy5zb21lKG1vZGlmaWVyID0+IG1vZGlmaWVyID09PSBTdG10TW9kaWZpZXIuU3RhdGljKSkge1xuICAgICAgICAgICAgICAgICAgICB2YWx1ZS5zdGF0aWNzID0gey4uLih2YWx1ZS5zdGF0aWNzIHx8IHt9KSwgW2ZpZWxkLm5hbWVdOiB7fX07XG4gICAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICAgIHJldHVybiB2YWx1ZTtcbiAgICAgICAgfTtcbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cblxuZnVuY3Rpb24gaXNDbGFzc1N0bXQodjogU3RhdGVtZW50KTogdiBpcyBDbGFzc1N0bXQge1xuICByZXR1cm4gdiBpbnN0YW5jZW9mIENsYXNzU3RtdDtcbn1cbiJdfQ==