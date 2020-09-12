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
        define("@angular/compiler-cli/src/ngtsc/diagnostics/src/error", ["require", "exports", "typescript"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.isFatalDiagnosticError = exports.makeRelatedInformation = exports.makeDiagnostic = exports.FatalDiagnosticError = void 0;
    var ts = require("typescript");
    var FatalDiagnosticError = /** @class */ (function () {
        function FatalDiagnosticError(code, node, message, relatedInformation) {
            this.code = code;
            this.node = node;
            this.message = message;
            this.relatedInformation = relatedInformation;
            /**
             * @internal
             */
            this._isFatalDiagnosticError = true;
        }
        FatalDiagnosticError.prototype.toDiagnostic = function () {
            return makeDiagnostic(this.code, this.node, this.message, this.relatedInformation);
        };
        return FatalDiagnosticError;
    }());
    exports.FatalDiagnosticError = FatalDiagnosticError;
    function makeDiagnostic(code, node, messageText, relatedInformation) {
        node = ts.getOriginalNode(node);
        return {
            category: ts.DiagnosticCategory.Error,
            code: Number('-99' + code.valueOf()),
            file: ts.getOriginalNode(node).getSourceFile(),
            start: node.getStart(undefined, false),
            length: node.getWidth(),
            messageText: messageText,
            relatedInformation: relatedInformation,
        };
    }
    exports.makeDiagnostic = makeDiagnostic;
    function makeRelatedInformation(node, messageText) {
        node = ts.getOriginalNode(node);
        return {
            category: ts.DiagnosticCategory.Message,
            code: 0,
            file: node.getSourceFile(),
            start: node.getStart(),
            length: node.getWidth(),
            messageText: messageText,
        };
    }
    exports.makeRelatedInformation = makeRelatedInformation;
    function isFatalDiagnosticError(err) {
        return err._isFatalDiagnosticError === true;
    }
    exports.isFatalDiagnosticError = isFatalDiagnosticError;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXJyb3IuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL2RpYWdub3N0aWNzL3NyYy9lcnJvci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7SUFFSCwrQkFBaUM7SUFJakM7UUFDRSw4QkFDYSxJQUFlLEVBQVcsSUFBYSxFQUN2QyxPQUF5QyxFQUN6QyxrQkFBc0Q7WUFGdEQsU0FBSSxHQUFKLElBQUksQ0FBVztZQUFXLFNBQUksR0FBSixJQUFJLENBQVM7WUFDdkMsWUFBTyxHQUFQLE9BQU8sQ0FBa0M7WUFDekMsdUJBQWtCLEdBQWxCLGtCQUFrQixDQUFvQztZQUVuRTs7ZUFFRztZQUNILDRCQUF1QixHQUFHLElBQUksQ0FBQztRQUx1QyxDQUFDO1FBT3ZFLDJDQUFZLEdBQVo7WUFDRSxPQUFPLGNBQWMsQ0FBQyxJQUFJLENBQUMsSUFBSSxFQUFFLElBQUksQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLE9BQU8sRUFBRSxJQUFJLENBQUMsa0JBQWtCLENBQUMsQ0FBQztRQUNyRixDQUFDO1FBQ0gsMkJBQUM7SUFBRCxDQUFDLEFBZEQsSUFjQztJQWRZLG9EQUFvQjtJQWdCakMsU0FBZ0IsY0FBYyxDQUMxQixJQUFlLEVBQUUsSUFBYSxFQUFFLFdBQTZDLEVBQzdFLGtCQUFzRDtRQUN4RCxJQUFJLEdBQUcsRUFBRSxDQUFDLGVBQWUsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUNoQyxPQUFPO1lBQ0wsUUFBUSxFQUFFLEVBQUUsQ0FBQyxrQkFBa0IsQ0FBQyxLQUFLO1lBQ3JDLElBQUksRUFBRSxNQUFNLENBQUMsS0FBSyxHQUFHLElBQUksQ0FBQyxPQUFPLEVBQUUsQ0FBQztZQUNwQyxJQUFJLEVBQUUsRUFBRSxDQUFDLGVBQWUsQ0FBQyxJQUFJLENBQUMsQ0FBQyxhQUFhLEVBQUU7WUFDOUMsS0FBSyxFQUFFLElBQUksQ0FBQyxRQUFRLENBQUMsU0FBUyxFQUFFLEtBQUssQ0FBQztZQUN0QyxNQUFNLEVBQUUsSUFBSSxDQUFDLFFBQVEsRUFBRTtZQUN2QixXQUFXLGFBQUE7WUFDWCxrQkFBa0Isb0JBQUE7U0FDbkIsQ0FBQztJQUNKLENBQUM7SUFiRCx3Q0FhQztJQUVELFNBQWdCLHNCQUFzQixDQUNsQyxJQUFhLEVBQUUsV0FBbUI7UUFDcEMsSUFBSSxHQUFHLEVBQUUsQ0FBQyxlQUFlLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDaEMsT0FBTztZQUNMLFFBQVEsRUFBRSxFQUFFLENBQUMsa0JBQWtCLENBQUMsT0FBTztZQUN2QyxJQUFJLEVBQUUsQ0FBQztZQUNQLElBQUksRUFBRSxJQUFJLENBQUMsYUFBYSxFQUFFO1lBQzFCLEtBQUssRUFBRSxJQUFJLENBQUMsUUFBUSxFQUFFO1lBQ3RCLE1BQU0sRUFBRSxJQUFJLENBQUMsUUFBUSxFQUFFO1lBQ3ZCLFdBQVcsYUFBQTtTQUNaLENBQUM7SUFDSixDQUFDO0lBWEQsd0RBV0M7SUFFRCxTQUFnQixzQkFBc0IsQ0FBQyxHQUFRO1FBQzdDLE9BQU8sR0FBRyxDQUFDLHVCQUF1QixLQUFLLElBQUksQ0FBQztJQUM5QyxDQUFDO0lBRkQsd0RBRUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7RXJyb3JDb2RlfSBmcm9tICcuL2Vycm9yX2NvZGUnO1xuXG5leHBvcnQgY2xhc3MgRmF0YWxEaWFnbm9zdGljRXJyb3Ige1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHJlYWRvbmx5IGNvZGU6IEVycm9yQ29kZSwgcmVhZG9ubHkgbm9kZTogdHMuTm9kZSxcbiAgICAgIHJlYWRvbmx5IG1lc3NhZ2U6IHN0cmluZ3x0cy5EaWFnbm9zdGljTWVzc2FnZUNoYWluLFxuICAgICAgcmVhZG9ubHkgcmVsYXRlZEluZm9ybWF0aW9uPzogdHMuRGlhZ25vc3RpY1JlbGF0ZWRJbmZvcm1hdGlvbltdKSB7fVxuXG4gIC8qKlxuICAgKiBAaW50ZXJuYWxcbiAgICovXG4gIF9pc0ZhdGFsRGlhZ25vc3RpY0Vycm9yID0gdHJ1ZTtcblxuICB0b0RpYWdub3N0aWMoKTogdHMuRGlhZ25vc3RpY1dpdGhMb2NhdGlvbiB7XG4gICAgcmV0dXJuIG1ha2VEaWFnbm9zdGljKHRoaXMuY29kZSwgdGhpcy5ub2RlLCB0aGlzLm1lc3NhZ2UsIHRoaXMucmVsYXRlZEluZm9ybWF0aW9uKTtcbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gbWFrZURpYWdub3N0aWMoXG4gICAgY29kZTogRXJyb3JDb2RlLCBub2RlOiB0cy5Ob2RlLCBtZXNzYWdlVGV4dDogc3RyaW5nfHRzLkRpYWdub3N0aWNNZXNzYWdlQ2hhaW4sXG4gICAgcmVsYXRlZEluZm9ybWF0aW9uPzogdHMuRGlhZ25vc3RpY1JlbGF0ZWRJbmZvcm1hdGlvbltdKTogdHMuRGlhZ25vc3RpY1dpdGhMb2NhdGlvbiB7XG4gIG5vZGUgPSB0cy5nZXRPcmlnaW5hbE5vZGUobm9kZSk7XG4gIHJldHVybiB7XG4gICAgY2F0ZWdvcnk6IHRzLkRpYWdub3N0aWNDYXRlZ29yeS5FcnJvcixcbiAgICBjb2RlOiBOdW1iZXIoJy05OScgKyBjb2RlLnZhbHVlT2YoKSksXG4gICAgZmlsZTogdHMuZ2V0T3JpZ2luYWxOb2RlKG5vZGUpLmdldFNvdXJjZUZpbGUoKSxcbiAgICBzdGFydDogbm9kZS5nZXRTdGFydCh1bmRlZmluZWQsIGZhbHNlKSxcbiAgICBsZW5ndGg6IG5vZGUuZ2V0V2lkdGgoKSxcbiAgICBtZXNzYWdlVGV4dCxcbiAgICByZWxhdGVkSW5mb3JtYXRpb24sXG4gIH07XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBtYWtlUmVsYXRlZEluZm9ybWF0aW9uKFxuICAgIG5vZGU6IHRzLk5vZGUsIG1lc3NhZ2VUZXh0OiBzdHJpbmcpOiB0cy5EaWFnbm9zdGljUmVsYXRlZEluZm9ybWF0aW9uIHtcbiAgbm9kZSA9IHRzLmdldE9yaWdpbmFsTm9kZShub2RlKTtcbiAgcmV0dXJuIHtcbiAgICBjYXRlZ29yeTogdHMuRGlhZ25vc3RpY0NhdGVnb3J5Lk1lc3NhZ2UsXG4gICAgY29kZTogMCxcbiAgICBmaWxlOiBub2RlLmdldFNvdXJjZUZpbGUoKSxcbiAgICBzdGFydDogbm9kZS5nZXRTdGFydCgpLFxuICAgIGxlbmd0aDogbm9kZS5nZXRXaWR0aCgpLFxuICAgIG1lc3NhZ2VUZXh0LFxuICB9O1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaXNGYXRhbERpYWdub3N0aWNFcnJvcihlcnI6IGFueSk6IGVyciBpcyBGYXRhbERpYWdub3N0aWNFcnJvciB7XG4gIHJldHVybiBlcnIuX2lzRmF0YWxEaWFnbm9zdGljRXJyb3IgPT09IHRydWU7XG59XG4iXX0=