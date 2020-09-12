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
        define("@angular/compiler-cli/src/ngtsc/typecheck/src/augmented_program", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/src/ngtsc/shims", "@angular/compiler-cli/src/ngtsc/typecheck/api", "@angular/compiler-cli/src/ngtsc/typecheck/src/host", "@angular/compiler-cli/src/ngtsc/typecheck/src/shim"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.ReusedProgramStrategy = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var shims_1 = require("@angular/compiler-cli/src/ngtsc/shims");
    var api_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/api");
    var host_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/host");
    var shim_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/shim");
    /**
     * Implements a template type-checking program using `ts.createProgram` and TypeScript's program
     * reuse functionality.
     */
    var ReusedProgramStrategy = /** @class */ (function () {
        function ReusedProgramStrategy(originalProgram, originalHost, options, shimExtensionPrefixes) {
            this.originalProgram = originalProgram;
            this.originalHost = originalHost;
            this.options = options;
            this.shimExtensionPrefixes = shimExtensionPrefixes;
            /**
             * A map of source file paths to replacement `ts.SourceFile`s for those paths.
             *
             * Effectively, this tracks the delta between the user's program (represented by the
             * `originalHost`) and the template type-checking program being managed.
             */
            this.sfMap = new Map();
            this.program = this.originalProgram;
            this.supportsInlineOperations = true;
        }
        ReusedProgramStrategy.prototype.getProgram = function () {
            return this.program;
        };
        ReusedProgramStrategy.prototype.updateFiles = function (contents, updateMode) {
            var e_1, _a;
            if (contents.size === 0) {
                // No changes have been requested. Is it safe to skip updating entirely?
                // If UpdateMode is Incremental, then yes. If UpdateMode is Complete, then it's safe to skip
                // only if there are no active changes already (that would be cleared by the update).
                if (updateMode !== api_1.UpdateMode.Complete || this.sfMap.size === 0) {
                    // No changes would be made to the `ts.Program` anyway, so it's safe to do nothing here.
                    return;
                }
            }
            if (updateMode === api_1.UpdateMode.Complete) {
                this.sfMap.clear();
            }
            try {
                for (var _b = tslib_1.__values(contents.entries()), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var _d = tslib_1.__read(_c.value, 2), filePath = _d[0], text = _d[1];
                    this.sfMap.set(filePath, ts.createSourceFile(filePath, text, ts.ScriptTarget.Latest, true));
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
            var host = new host_1.TypeCheckProgramHost(this.sfMap, this.originalProgram, this.originalHost, this.shimExtensionPrefixes);
            var oldProgram = this.program;
            // Retag the old program's `ts.SourceFile`s with shim tags, to allow TypeScript to reuse the
            // most data.
            shims_1.retagAllTsFiles(oldProgram);
            this.program = ts.createProgram({
                host: host,
                rootNames: this.program.getRootFileNames(),
                options: this.options,
                oldProgram: oldProgram,
            });
            host.postProgramCreationCleanup();
            // And untag them afterwards. We explicitly untag both programs here, because the oldProgram
            // may still be used for emit and needs to not contain tags.
            shims_1.untagAllTsFiles(this.program);
            shims_1.untagAllTsFiles(oldProgram);
        };
        ReusedProgramStrategy.prototype.shimPathForComponent = function (node) {
            return shim_1.TypeCheckShimGenerator.shimFor(file_system_1.absoluteFromSourceFile(node.getSourceFile()));
        };
        return ReusedProgramStrategy;
    }());
    exports.ReusedProgramStrategy = ReusedProgramStrategy;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXVnbWVudGVkX3Byb2dyYW0uanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3R5cGVjaGVjay9zcmMvYXVnbWVudGVkX3Byb2dyYW0udHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUVILCtCQUFpQztJQUVqQywyRUFBeUU7SUFDekUsK0RBQTZEO0lBQzdELHFFQUErRDtJQUUvRCwyRUFBNEM7SUFDNUMsMkVBQThDO0lBRTlDOzs7T0FHRztJQUNIO1FBV0UsK0JBQ1ksZUFBMkIsRUFBVSxZQUE2QixFQUNsRSxPQUEyQixFQUFVLHFCQUErQjtZQURwRSxvQkFBZSxHQUFmLGVBQWUsQ0FBWTtZQUFVLGlCQUFZLEdBQVosWUFBWSxDQUFpQjtZQUNsRSxZQUFPLEdBQVAsT0FBTyxDQUFvQjtZQUFVLDBCQUFxQixHQUFyQixxQkFBcUIsQ0FBVTtZQVpoRjs7Ozs7ZUFLRztZQUNLLFVBQUssR0FBRyxJQUFJLEdBQUcsRUFBeUIsQ0FBQztZQUV6QyxZQUFPLEdBQWUsSUFBSSxDQUFDLGVBQWUsQ0FBQztZQU0xQyw2QkFBd0IsR0FBRyxJQUFJLENBQUM7UUFGMEMsQ0FBQztRQUlwRiwwQ0FBVSxHQUFWO1lBQ0UsT0FBTyxJQUFJLENBQUMsT0FBTyxDQUFDO1FBQ3RCLENBQUM7UUFFRCwyQ0FBVyxHQUFYLFVBQVksUUFBcUMsRUFBRSxVQUFzQjs7WUFDdkUsSUFBSSxRQUFRLENBQUMsSUFBSSxLQUFLLENBQUMsRUFBRTtnQkFDdkIsd0VBQXdFO2dCQUN4RSw0RkFBNEY7Z0JBQzVGLHFGQUFxRjtnQkFFckYsSUFBSSxVQUFVLEtBQUssZ0JBQVUsQ0FBQyxRQUFRLElBQUksSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLEtBQUssQ0FBQyxFQUFFO29CQUMvRCx3RkFBd0Y7b0JBQ3hGLE9BQU87aUJBQ1I7YUFDRjtZQUVELElBQUksVUFBVSxLQUFLLGdCQUFVLENBQUMsUUFBUSxFQUFFO2dCQUN0QyxJQUFJLENBQUMsS0FBSyxDQUFDLEtBQUssRUFBRSxDQUFDO2FBQ3BCOztnQkFFRCxLQUErQixJQUFBLEtBQUEsaUJBQUEsUUFBUSxDQUFDLE9BQU8sRUFBRSxDQUFBLGdCQUFBLDRCQUFFO29CQUF4QyxJQUFBLEtBQUEsMkJBQWdCLEVBQWYsUUFBUSxRQUFBLEVBQUUsSUFBSSxRQUFBO29CQUN4QixJQUFJLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxRQUFRLEVBQUUsRUFBRSxDQUFDLGdCQUFnQixDQUFDLFFBQVEsRUFBRSxJQUFJLEVBQUUsRUFBRSxDQUFDLFlBQVksQ0FBQyxNQUFNLEVBQUUsSUFBSSxDQUFDLENBQUMsQ0FBQztpQkFDN0Y7Ozs7Ozs7OztZQUVELElBQU0sSUFBSSxHQUFHLElBQUksMkJBQW9CLENBQ2pDLElBQUksQ0FBQyxLQUFLLEVBQUUsSUFBSSxDQUFDLGVBQWUsRUFBRSxJQUFJLENBQUMsWUFBWSxFQUFFLElBQUksQ0FBQyxxQkFBcUIsQ0FBQyxDQUFDO1lBQ3JGLElBQU0sVUFBVSxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUM7WUFFaEMsNEZBQTRGO1lBQzVGLGFBQWE7WUFDYix1QkFBZSxDQUFDLFVBQVUsQ0FBQyxDQUFDO1lBRTVCLElBQUksQ0FBQyxPQUFPLEdBQUcsRUFBRSxDQUFDLGFBQWEsQ0FBQztnQkFDOUIsSUFBSSxNQUFBO2dCQUNKLFNBQVMsRUFBRSxJQUFJLENBQUMsT0FBTyxDQUFDLGdCQUFnQixFQUFFO2dCQUMxQyxPQUFPLEVBQUUsSUFBSSxDQUFDLE9BQU87Z0JBQ3JCLFVBQVUsWUFBQTthQUNYLENBQUMsQ0FBQztZQUNILElBQUksQ0FBQywwQkFBMEIsRUFBRSxDQUFDO1lBRWxDLDRGQUE0RjtZQUM1Riw0REFBNEQ7WUFDNUQsdUJBQWUsQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUM7WUFDOUIsdUJBQWUsQ0FBQyxVQUFVLENBQUMsQ0FBQztRQUM5QixDQUFDO1FBRUQsb0RBQW9CLEdBQXBCLFVBQXFCLElBQXlCO1lBQzVDLE9BQU8sNkJBQXNCLENBQUMsT0FBTyxDQUFDLG9DQUFzQixDQUFDLElBQUksQ0FBQyxhQUFhLEVBQUUsQ0FBQyxDQUFDLENBQUM7UUFDdEYsQ0FBQztRQUNILDRCQUFDO0lBQUQsQ0FBQyxBQWxFRCxJQWtFQztJQWxFWSxzREFBcUIiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7YWJzb2x1dGVGcm9tU291cmNlRmlsZSwgQWJzb2x1dGVGc1BhdGh9IGZyb20gJy4uLy4uL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7cmV0YWdBbGxUc0ZpbGVzLCB1bnRhZ0FsbFRzRmlsZXN9IGZyb20gJy4uLy4uL3NoaW1zJztcbmltcG9ydCB7VHlwZUNoZWNraW5nUHJvZ3JhbVN0cmF0ZWd5LCBVcGRhdGVNb2RlfSBmcm9tICcuLi9hcGknO1xuXG5pbXBvcnQge1R5cGVDaGVja1Byb2dyYW1Ib3N0fSBmcm9tICcuL2hvc3QnO1xuaW1wb3J0IHtUeXBlQ2hlY2tTaGltR2VuZXJhdG9yfSBmcm9tICcuL3NoaW0nO1xuXG4vKipcbiAqIEltcGxlbWVudHMgYSB0ZW1wbGF0ZSB0eXBlLWNoZWNraW5nIHByb2dyYW0gdXNpbmcgYHRzLmNyZWF0ZVByb2dyYW1gIGFuZCBUeXBlU2NyaXB0J3MgcHJvZ3JhbVxuICogcmV1c2UgZnVuY3Rpb25hbGl0eS5cbiAqL1xuZXhwb3J0IGNsYXNzIFJldXNlZFByb2dyYW1TdHJhdGVneSBpbXBsZW1lbnRzIFR5cGVDaGVja2luZ1Byb2dyYW1TdHJhdGVneSB7XG4gIC8qKlxuICAgKiBBIG1hcCBvZiBzb3VyY2UgZmlsZSBwYXRocyB0byByZXBsYWNlbWVudCBgdHMuU291cmNlRmlsZWBzIGZvciB0aG9zZSBwYXRocy5cbiAgICpcbiAgICogRWZmZWN0aXZlbHksIHRoaXMgdHJhY2tzIHRoZSBkZWx0YSBiZXR3ZWVuIHRoZSB1c2VyJ3MgcHJvZ3JhbSAocmVwcmVzZW50ZWQgYnkgdGhlXG4gICAqIGBvcmlnaW5hbEhvc3RgKSBhbmQgdGhlIHRlbXBsYXRlIHR5cGUtY2hlY2tpbmcgcHJvZ3JhbSBiZWluZyBtYW5hZ2VkLlxuICAgKi9cbiAgcHJpdmF0ZSBzZk1hcCA9IG5ldyBNYXA8c3RyaW5nLCB0cy5Tb3VyY2VGaWxlPigpO1xuXG4gIHByaXZhdGUgcHJvZ3JhbTogdHMuUHJvZ3JhbSA9IHRoaXMub3JpZ2luYWxQcm9ncmFtO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSBvcmlnaW5hbFByb2dyYW06IHRzLlByb2dyYW0sIHByaXZhdGUgb3JpZ2luYWxIb3N0OiB0cy5Db21waWxlckhvc3QsXG4gICAgICBwcml2YXRlIG9wdGlvbnM6IHRzLkNvbXBpbGVyT3B0aW9ucywgcHJpdmF0ZSBzaGltRXh0ZW5zaW9uUHJlZml4ZXM6IHN0cmluZ1tdKSB7fVxuXG4gIHJlYWRvbmx5IHN1cHBvcnRzSW5saW5lT3BlcmF0aW9ucyA9IHRydWU7XG5cbiAgZ2V0UHJvZ3JhbSgpOiB0cy5Qcm9ncmFtIHtcbiAgICByZXR1cm4gdGhpcy5wcm9ncmFtO1xuICB9XG5cbiAgdXBkYXRlRmlsZXMoY29udGVudHM6IE1hcDxBYnNvbHV0ZUZzUGF0aCwgc3RyaW5nPiwgdXBkYXRlTW9kZTogVXBkYXRlTW9kZSk6IHZvaWQge1xuICAgIGlmIChjb250ZW50cy5zaXplID09PSAwKSB7XG4gICAgICAvLyBObyBjaGFuZ2VzIGhhdmUgYmVlbiByZXF1ZXN0ZWQuIElzIGl0IHNhZmUgdG8gc2tpcCB1cGRhdGluZyBlbnRpcmVseT9cbiAgICAgIC8vIElmIFVwZGF0ZU1vZGUgaXMgSW5jcmVtZW50YWwsIHRoZW4geWVzLiBJZiBVcGRhdGVNb2RlIGlzIENvbXBsZXRlLCB0aGVuIGl0J3Mgc2FmZSB0byBza2lwXG4gICAgICAvLyBvbmx5IGlmIHRoZXJlIGFyZSBubyBhY3RpdmUgY2hhbmdlcyBhbHJlYWR5ICh0aGF0IHdvdWxkIGJlIGNsZWFyZWQgYnkgdGhlIHVwZGF0ZSkuXG5cbiAgICAgIGlmICh1cGRhdGVNb2RlICE9PSBVcGRhdGVNb2RlLkNvbXBsZXRlIHx8IHRoaXMuc2ZNYXAuc2l6ZSA9PT0gMCkge1xuICAgICAgICAvLyBObyBjaGFuZ2VzIHdvdWxkIGJlIG1hZGUgdG8gdGhlIGB0cy5Qcm9ncmFtYCBhbnl3YXksIHNvIGl0J3Mgc2FmZSB0byBkbyBub3RoaW5nIGhlcmUuXG4gICAgICAgIHJldHVybjtcbiAgICAgIH1cbiAgICB9XG5cbiAgICBpZiAodXBkYXRlTW9kZSA9PT0gVXBkYXRlTW9kZS5Db21wbGV0ZSkge1xuICAgICAgdGhpcy5zZk1hcC5jbGVhcigpO1xuICAgIH1cblxuICAgIGZvciAoY29uc3QgW2ZpbGVQYXRoLCB0ZXh0XSBvZiBjb250ZW50cy5lbnRyaWVzKCkpIHtcbiAgICAgIHRoaXMuc2ZNYXAuc2V0KGZpbGVQYXRoLCB0cy5jcmVhdGVTb3VyY2VGaWxlKGZpbGVQYXRoLCB0ZXh0LCB0cy5TY3JpcHRUYXJnZXQuTGF0ZXN0LCB0cnVlKSk7XG4gICAgfVxuXG4gICAgY29uc3QgaG9zdCA9IG5ldyBUeXBlQ2hlY2tQcm9ncmFtSG9zdChcbiAgICAgICAgdGhpcy5zZk1hcCwgdGhpcy5vcmlnaW5hbFByb2dyYW0sIHRoaXMub3JpZ2luYWxIb3N0LCB0aGlzLnNoaW1FeHRlbnNpb25QcmVmaXhlcyk7XG4gICAgY29uc3Qgb2xkUHJvZ3JhbSA9IHRoaXMucHJvZ3JhbTtcblxuICAgIC8vIFJldGFnIHRoZSBvbGQgcHJvZ3JhbSdzIGB0cy5Tb3VyY2VGaWxlYHMgd2l0aCBzaGltIHRhZ3MsIHRvIGFsbG93IFR5cGVTY3JpcHQgdG8gcmV1c2UgdGhlXG4gICAgLy8gbW9zdCBkYXRhLlxuICAgIHJldGFnQWxsVHNGaWxlcyhvbGRQcm9ncmFtKTtcblxuICAgIHRoaXMucHJvZ3JhbSA9IHRzLmNyZWF0ZVByb2dyYW0oe1xuICAgICAgaG9zdCxcbiAgICAgIHJvb3ROYW1lczogdGhpcy5wcm9ncmFtLmdldFJvb3RGaWxlTmFtZXMoKSxcbiAgICAgIG9wdGlvbnM6IHRoaXMub3B0aW9ucyxcbiAgICAgIG9sZFByb2dyYW0sXG4gICAgfSk7XG4gICAgaG9zdC5wb3N0UHJvZ3JhbUNyZWF0aW9uQ2xlYW51cCgpO1xuXG4gICAgLy8gQW5kIHVudGFnIHRoZW0gYWZ0ZXJ3YXJkcy4gV2UgZXhwbGljaXRseSB1bnRhZyBib3RoIHByb2dyYW1zIGhlcmUsIGJlY2F1c2UgdGhlIG9sZFByb2dyYW1cbiAgICAvLyBtYXkgc3RpbGwgYmUgdXNlZCBmb3IgZW1pdCBhbmQgbmVlZHMgdG8gbm90IGNvbnRhaW4gdGFncy5cbiAgICB1bnRhZ0FsbFRzRmlsZXModGhpcy5wcm9ncmFtKTtcbiAgICB1bnRhZ0FsbFRzRmlsZXMob2xkUHJvZ3JhbSk7XG4gIH1cblxuICBzaGltUGF0aEZvckNvbXBvbmVudChub2RlOiB0cy5DbGFzc0RlY2xhcmF0aW9uKTogQWJzb2x1dGVGc1BhdGgge1xuICAgIHJldHVybiBUeXBlQ2hlY2tTaGltR2VuZXJhdG9yLnNoaW1Gb3IoYWJzb2x1dGVGcm9tU291cmNlRmlsZShub2RlLmdldFNvdXJjZUZpbGUoKSkpO1xuICB9XG59XG4iXX0=