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
        define("@angular/compiler-cli/src/diagnostics/translate_diagnostics", ["require", "exports", "typescript", "@angular/compiler-cli/src/transformers/api", "@angular/compiler-cli/src/transformers/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.translateDiagnostics = void 0;
    var ts = require("typescript");
    var api_1 = require("@angular/compiler-cli/src/transformers/api");
    var util_1 = require("@angular/compiler-cli/src/transformers/util");
    function translateDiagnostics(host, untranslatedDiagnostics) {
        var ts = [];
        var ng = [];
        untranslatedDiagnostics.forEach(function (diagnostic) {
            if (diagnostic.file && diagnostic.start && util_1.GENERATED_FILES.test(diagnostic.file.fileName)) {
                // We need to filter out diagnostics about unused functions as
                // they are in fact referenced by nobody and only serve to surface
                // type check errors.
                if (diagnostic.code === /* ... is declared but never used */ 6133) {
                    return;
                }
                var span = sourceSpanOf(host, diagnostic.file, diagnostic.start);
                if (span) {
                    var fileName = span.start.file.url;
                    ng.push({
                        messageText: diagnosticMessageToString(diagnostic.messageText),
                        category: diagnostic.category,
                        span: span,
                        source: api_1.SOURCE,
                        code: api_1.DEFAULT_ERROR_CODE
                    });
                }
            }
            else {
                ts.push(diagnostic);
            }
        });
        return { ts: ts, ng: ng };
    }
    exports.translateDiagnostics = translateDiagnostics;
    function sourceSpanOf(host, source, start) {
        var _a = ts.getLineAndCharacterOfPosition(source, start), line = _a.line, character = _a.character;
        return host.parseSourceSpanOf(source.fileName, line, character);
    }
    function diagnosticMessageToString(message) {
        return ts.flattenDiagnosticMessageText(message, '\n');
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhbnNsYXRlX2RpYWdub3N0aWNzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy9kaWFnbm9zdGljcy90cmFuc2xhdGVfZGlhZ25vc3RpY3MudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7O0lBR0gsK0JBQWlDO0lBRWpDLGtFQUEyRTtJQUMzRSxvRUFBcUQ7SUFNckQsU0FBZ0Isb0JBQW9CLENBQ2hDLElBQW1CLEVBQUUsdUJBQXFEO1FBRTVFLElBQU0sRUFBRSxHQUFvQixFQUFFLENBQUM7UUFDL0IsSUFBTSxFQUFFLEdBQWlCLEVBQUUsQ0FBQztRQUU1Qix1QkFBdUIsQ0FBQyxPQUFPLENBQUMsVUFBQyxVQUFVO1lBQ3pDLElBQUksVUFBVSxDQUFDLElBQUksSUFBSSxVQUFVLENBQUMsS0FBSyxJQUFJLHNCQUFlLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLEVBQUU7Z0JBQ3pGLDhEQUE4RDtnQkFDOUQsa0VBQWtFO2dCQUNsRSxxQkFBcUI7Z0JBQ3JCLElBQUksVUFBVSxDQUFDLElBQUksS0FBSyxvQ0FBb0MsQ0FBQyxJQUFJLEVBQUU7b0JBQ2pFLE9BQU87aUJBQ1I7Z0JBQ0QsSUFBTSxJQUFJLEdBQUcsWUFBWSxDQUFDLElBQUksRUFBRSxVQUFVLENBQUMsSUFBSSxFQUFFLFVBQVUsQ0FBQyxLQUFLLENBQUMsQ0FBQztnQkFDbkUsSUFBSSxJQUFJLEVBQUU7b0JBQ1IsSUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDO29CQUNyQyxFQUFFLENBQUMsSUFBSSxDQUFDO3dCQUNOLFdBQVcsRUFBRSx5QkFBeUIsQ0FBQyxVQUFVLENBQUMsV0FBVyxDQUFDO3dCQUM5RCxRQUFRLEVBQUUsVUFBVSxDQUFDLFFBQVE7d0JBQzdCLElBQUksTUFBQTt3QkFDSixNQUFNLEVBQUUsWUFBTTt3QkFDZCxJQUFJLEVBQUUsd0JBQWtCO3FCQUN6QixDQUFDLENBQUM7aUJBQ0o7YUFDRjtpQkFBTTtnQkFDTCxFQUFFLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxDQUFDO2FBQ3JCO1FBQ0gsQ0FBQyxDQUFDLENBQUM7UUFDSCxPQUFPLEVBQUMsRUFBRSxJQUFBLEVBQUUsRUFBRSxJQUFBLEVBQUMsQ0FBQztJQUNsQixDQUFDO0lBOUJELG9EQThCQztJQUVELFNBQVMsWUFBWSxDQUFDLElBQW1CLEVBQUUsTUFBcUIsRUFBRSxLQUFhO1FBRXZFLElBQUEsS0FBb0IsRUFBRSxDQUFDLDZCQUE2QixDQUFDLE1BQU0sRUFBRSxLQUFLLENBQUMsRUFBbEUsSUFBSSxVQUFBLEVBQUUsU0FBUyxlQUFtRCxDQUFDO1FBQzFFLE9BQU8sSUFBSSxDQUFDLGlCQUFpQixDQUFDLE1BQU0sQ0FBQyxRQUFRLEVBQUUsSUFBSSxFQUFFLFNBQVMsQ0FBQyxDQUFDO0lBQ2xFLENBQUM7SUFFRCxTQUFTLHlCQUF5QixDQUFDLE9BQXlDO1FBQzFFLE9BQU8sRUFBRSxDQUFDLDRCQUE0QixDQUFDLE9BQU8sRUFBRSxJQUFJLENBQUMsQ0FBQztJQUN4RCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7UGFyc2VTb3VyY2VTcGFufSBmcm9tICdAYW5ndWxhci9jb21waWxlcic7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtERUZBVUxUX0VSUk9SX0NPREUsIERpYWdub3N0aWMsIFNPVVJDRX0gZnJvbSAnLi4vdHJhbnNmb3JtZXJzL2FwaSc7XG5pbXBvcnQge0dFTkVSQVRFRF9GSUxFU30gZnJvbSAnLi4vdHJhbnNmb3JtZXJzL3V0aWwnO1xuXG5leHBvcnQgaW50ZXJmYWNlIFR5cGVDaGVja0hvc3Qge1xuICBwYXJzZVNvdXJjZVNwYW5PZihmaWxlTmFtZTogc3RyaW5nLCBsaW5lOiBudW1iZXIsIGNoYXJhY3RlcjogbnVtYmVyKTogUGFyc2VTb3VyY2VTcGFufG51bGw7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiB0cmFuc2xhdGVEaWFnbm9zdGljcyhcbiAgICBob3N0OiBUeXBlQ2hlY2tIb3N0LCB1bnRyYW5zbGF0ZWREaWFnbm9zdGljczogUmVhZG9ubHlBcnJheTx0cy5EaWFnbm9zdGljPik6XG4gICAge3RzOiB0cy5EaWFnbm9zdGljW10sIG5nOiBEaWFnbm9zdGljW119IHtcbiAgY29uc3QgdHM6IHRzLkRpYWdub3N0aWNbXSA9IFtdO1xuICBjb25zdCBuZzogRGlhZ25vc3RpY1tdID0gW107XG5cbiAgdW50cmFuc2xhdGVkRGlhZ25vc3RpY3MuZm9yRWFjaCgoZGlhZ25vc3RpYykgPT4ge1xuICAgIGlmIChkaWFnbm9zdGljLmZpbGUgJiYgZGlhZ25vc3RpYy5zdGFydCAmJiBHRU5FUkFURURfRklMRVMudGVzdChkaWFnbm9zdGljLmZpbGUuZmlsZU5hbWUpKSB7XG4gICAgICAvLyBXZSBuZWVkIHRvIGZpbHRlciBvdXQgZGlhZ25vc3RpY3MgYWJvdXQgdW51c2VkIGZ1bmN0aW9ucyBhc1xuICAgICAgLy8gdGhleSBhcmUgaW4gZmFjdCByZWZlcmVuY2VkIGJ5IG5vYm9keSBhbmQgb25seSBzZXJ2ZSB0byBzdXJmYWNlXG4gICAgICAvLyB0eXBlIGNoZWNrIGVycm9ycy5cbiAgICAgIGlmIChkaWFnbm9zdGljLmNvZGUgPT09IC8qIC4uLiBpcyBkZWNsYXJlZCBidXQgbmV2ZXIgdXNlZCAqLyA2MTMzKSB7XG4gICAgICAgIHJldHVybjtcbiAgICAgIH1cbiAgICAgIGNvbnN0IHNwYW4gPSBzb3VyY2VTcGFuT2YoaG9zdCwgZGlhZ25vc3RpYy5maWxlLCBkaWFnbm9zdGljLnN0YXJ0KTtcbiAgICAgIGlmIChzcGFuKSB7XG4gICAgICAgIGNvbnN0IGZpbGVOYW1lID0gc3Bhbi5zdGFydC5maWxlLnVybDtcbiAgICAgICAgbmcucHVzaCh7XG4gICAgICAgICAgbWVzc2FnZVRleHQ6IGRpYWdub3N0aWNNZXNzYWdlVG9TdHJpbmcoZGlhZ25vc3RpYy5tZXNzYWdlVGV4dCksXG4gICAgICAgICAgY2F0ZWdvcnk6IGRpYWdub3N0aWMuY2F0ZWdvcnksXG4gICAgICAgICAgc3BhbixcbiAgICAgICAgICBzb3VyY2U6IFNPVVJDRSxcbiAgICAgICAgICBjb2RlOiBERUZBVUxUX0VSUk9SX0NPREVcbiAgICAgICAgfSk7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIHRzLnB1c2goZGlhZ25vc3RpYyk7XG4gICAgfVxuICB9KTtcbiAgcmV0dXJuIHt0cywgbmd9O1xufVxuXG5mdW5jdGlvbiBzb3VyY2VTcGFuT2YoaG9zdDogVHlwZUNoZWNrSG9zdCwgc291cmNlOiB0cy5Tb3VyY2VGaWxlLCBzdGFydDogbnVtYmVyKTogUGFyc2VTb3VyY2VTcGFufFxuICAgIG51bGwge1xuICBjb25zdCB7bGluZSwgY2hhcmFjdGVyfSA9IHRzLmdldExpbmVBbmRDaGFyYWN0ZXJPZlBvc2l0aW9uKHNvdXJjZSwgc3RhcnQpO1xuICByZXR1cm4gaG9zdC5wYXJzZVNvdXJjZVNwYW5PZihzb3VyY2UuZmlsZU5hbWUsIGxpbmUsIGNoYXJhY3Rlcik7XG59XG5cbmZ1bmN0aW9uIGRpYWdub3N0aWNNZXNzYWdlVG9TdHJpbmcobWVzc2FnZTogdHMuRGlhZ25vc3RpY01lc3NhZ2VDaGFpbnxzdHJpbmcpOiBzdHJpbmcge1xuICByZXR1cm4gdHMuZmxhdHRlbkRpYWdub3N0aWNNZXNzYWdlVGV4dChtZXNzYWdlLCAnXFxuJyk7XG59XG4iXX0=