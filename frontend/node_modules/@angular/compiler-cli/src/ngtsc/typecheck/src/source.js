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
        define("@angular/compiler-cli/src/ngtsc/typecheck/src/source", ["require", "exports", "@angular/compiler", "@angular/compiler-cli/src/ngtsc/typecheck/src/line_mappings"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.TemplateSourceManager = exports.TemplateSource = void 0;
    var compiler_1 = require("@angular/compiler");
    var line_mappings_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/line_mappings");
    /**
     * Represents the source of a template that was processed during type-checking. This information is
     * used when translating parse offsets in diagnostics back to their original line/column location.
     */
    var TemplateSource = /** @class */ (function () {
        function TemplateSource(mapping, file) {
            this.mapping = mapping;
            this.file = file;
            this.lineStarts = null;
        }
        TemplateSource.prototype.toParseSourceSpan = function (start, end) {
            var startLoc = this.toParseLocation(start);
            var endLoc = this.toParseLocation(end);
            return new compiler_1.ParseSourceSpan(startLoc, endLoc);
        };
        TemplateSource.prototype.toParseLocation = function (position) {
            var lineStarts = this.acquireLineStarts();
            var _a = line_mappings_1.getLineAndCharacterFromPosition(lineStarts, position), line = _a.line, character = _a.character;
            return new compiler_1.ParseLocation(this.file, position, line, character);
        };
        TemplateSource.prototype.acquireLineStarts = function () {
            if (this.lineStarts === null) {
                this.lineStarts = line_mappings_1.computeLineStartsMap(this.file.content);
            }
            return this.lineStarts;
        };
        return TemplateSource;
    }());
    exports.TemplateSource = TemplateSource;
    /**
     * Assigns IDs to templates and keeps track of their origins.
     *
     * Implements `TemplateSourceResolver` to resolve the source of a template based on these IDs.
     */
    var TemplateSourceManager = /** @class */ (function () {
        function TemplateSourceManager() {
            /**
             * This map keeps track of all template sources that have been type-checked by the id that is
             * attached to a TCB's function declaration as leading trivia. This enables translation of
             * diagnostics produced for TCB code to their source location in the template.
             */
            this.templateSources = new Map();
        }
        TemplateSourceManager.prototype.getTemplateId = function (node) {
            return getTemplateId(node);
        };
        TemplateSourceManager.prototype.captureSource = function (node, mapping, file) {
            var id = getTemplateId(node);
            this.templateSources.set(id, new TemplateSource(mapping, file));
            return id;
        };
        TemplateSourceManager.prototype.getSourceMapping = function (id) {
            if (!this.templateSources.has(id)) {
                throw new Error("Unexpected unknown template ID: " + id);
            }
            return this.templateSources.get(id).mapping;
        };
        TemplateSourceManager.prototype.toParseSourceSpan = function (id, span) {
            if (!this.templateSources.has(id)) {
                return null;
            }
            var templateSource = this.templateSources.get(id);
            return templateSource.toParseSourceSpan(span.start, span.end);
        };
        return TemplateSourceManager;
    }());
    exports.TemplateSourceManager = TemplateSourceManager;
    var TEMPLATE_ID = Symbol('ngTemplateId');
    var NEXT_TEMPLATE_ID = Symbol('ngNextTemplateId');
    function getTemplateId(node) {
        if (node[TEMPLATE_ID] === undefined) {
            node[TEMPLATE_ID] = allocateTemplateId(node.getSourceFile());
        }
        return node[TEMPLATE_ID];
    }
    function allocateTemplateId(sf) {
        if (sf[NEXT_TEMPLATE_ID] === undefined) {
            sf[NEXT_TEMPLATE_ID] = 1;
        }
        return ("tcb" + sf[NEXT_TEMPLATE_ID]++);
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic291cmNlLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy9uZ3RzYy90eXBlY2hlY2svc3JjL3NvdXJjZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7SUFFSCw4Q0FBc0c7SUFLdEcsNkZBQXNGO0lBRXRGOzs7T0FHRztJQUNIO1FBR0Usd0JBQXFCLE9BQThCLEVBQVUsSUFBcUI7WUFBN0QsWUFBTyxHQUFQLE9BQU8sQ0FBdUI7WUFBVSxTQUFJLEdBQUosSUFBSSxDQUFpQjtZQUYxRSxlQUFVLEdBQWtCLElBQUksQ0FBQztRQUU0QyxDQUFDO1FBRXRGLDBDQUFpQixHQUFqQixVQUFrQixLQUFhLEVBQUUsR0FBVztZQUMxQyxJQUFNLFFBQVEsR0FBRyxJQUFJLENBQUMsZUFBZSxDQUFDLEtBQUssQ0FBQyxDQUFDO1lBQzdDLElBQU0sTUFBTSxHQUFHLElBQUksQ0FBQyxlQUFlLENBQUMsR0FBRyxDQUFDLENBQUM7WUFDekMsT0FBTyxJQUFJLDBCQUFlLENBQUMsUUFBUSxFQUFFLE1BQU0sQ0FBQyxDQUFDO1FBQy9DLENBQUM7UUFFTyx3Q0FBZSxHQUF2QixVQUF3QixRQUFnQjtZQUN0QyxJQUFNLFVBQVUsR0FBRyxJQUFJLENBQUMsaUJBQWlCLEVBQUUsQ0FBQztZQUN0QyxJQUFBLEtBQW9CLCtDQUErQixDQUFDLFVBQVUsRUFBRSxRQUFRLENBQUMsRUFBeEUsSUFBSSxVQUFBLEVBQUUsU0FBUyxlQUF5RCxDQUFDO1lBQ2hGLE9BQU8sSUFBSSx3QkFBYSxDQUFDLElBQUksQ0FBQyxJQUFJLEVBQUUsUUFBUSxFQUFFLElBQUksRUFBRSxTQUFTLENBQUMsQ0FBQztRQUNqRSxDQUFDO1FBRU8sMENBQWlCLEdBQXpCO1lBQ0UsSUFBSSxJQUFJLENBQUMsVUFBVSxLQUFLLElBQUksRUFBRTtnQkFDNUIsSUFBSSxDQUFDLFVBQVUsR0FBRyxvQ0FBb0IsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxDQUFDO2FBQzNEO1lBQ0QsT0FBTyxJQUFJLENBQUMsVUFBVSxDQUFDO1FBQ3pCLENBQUM7UUFDSCxxQkFBQztJQUFELENBQUMsQUF2QkQsSUF1QkM7SUF2Qlksd0NBQWM7SUF5QjNCOzs7O09BSUc7SUFDSDtRQUFBO1lBQ0U7Ozs7ZUFJRztZQUNLLG9CQUFlLEdBQUcsSUFBSSxHQUFHLEVBQThCLENBQUM7UUEyQmxFLENBQUM7UUF6QkMsNkNBQWEsR0FBYixVQUFjLElBQXlCO1lBQ3JDLE9BQU8sYUFBYSxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQzdCLENBQUM7UUFFRCw2Q0FBYSxHQUFiLFVBQWMsSUFBeUIsRUFBRSxPQUE4QixFQUFFLElBQXFCO1lBRTVGLElBQU0sRUFBRSxHQUFHLGFBQWEsQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUMvQixJQUFJLENBQUMsZUFBZSxDQUFDLEdBQUcsQ0FBQyxFQUFFLEVBQUUsSUFBSSxjQUFjLENBQUMsT0FBTyxFQUFFLElBQUksQ0FBQyxDQUFDLENBQUM7WUFDaEUsT0FBTyxFQUFFLENBQUM7UUFDWixDQUFDO1FBRUQsZ0RBQWdCLEdBQWhCLFVBQWlCLEVBQWM7WUFDN0IsSUFBSSxDQUFDLElBQUksQ0FBQyxlQUFlLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxFQUFFO2dCQUNqQyxNQUFNLElBQUksS0FBSyxDQUFDLHFDQUFtQyxFQUFJLENBQUMsQ0FBQzthQUMxRDtZQUNELE9BQU8sSUFBSSxDQUFDLGVBQWUsQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFFLENBQUMsT0FBTyxDQUFDO1FBQy9DLENBQUM7UUFFRCxpREFBaUIsR0FBakIsVUFBa0IsRUFBYyxFQUFFLElBQXdCO1lBQ3hELElBQUksQ0FBQyxJQUFJLENBQUMsZUFBZSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsRUFBRTtnQkFDakMsT0FBTyxJQUFJLENBQUM7YUFDYjtZQUNELElBQU0sY0FBYyxHQUFHLElBQUksQ0FBQyxlQUFlLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBRSxDQUFDO1lBQ3JELE9BQU8sY0FBYyxDQUFDLGlCQUFpQixDQUFDLElBQUksQ0FBQyxLQUFLLEVBQUUsSUFBSSxDQUFDLEdBQUcsQ0FBQyxDQUFDO1FBQ2hFLENBQUM7UUFDSCw0QkFBQztJQUFELENBQUMsQUFqQ0QsSUFpQ0M7SUFqQ1ksc0RBQXFCO0lBbUNsQyxJQUFNLFdBQVcsR0FBRyxNQUFNLENBQUMsY0FBYyxDQUFDLENBQUM7SUFDM0MsSUFBTSxnQkFBZ0IsR0FBRyxNQUFNLENBQUMsa0JBQWtCLENBQUMsQ0FBQztJQVVwRCxTQUFTLGFBQWEsQ0FBQyxJQUFnRDtRQUNyRSxJQUFJLElBQUksQ0FBQyxXQUFXLENBQUMsS0FBSyxTQUFTLEVBQUU7WUFDbkMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxHQUFHLGtCQUFrQixDQUFDLElBQUksQ0FBQyxhQUFhLEVBQUUsQ0FBQyxDQUFDO1NBQzlEO1FBQ0QsT0FBTyxJQUFJLENBQUMsV0FBVyxDQUFFLENBQUM7SUFDNUIsQ0FBQztJQUVELFNBQVMsa0JBQWtCLENBQUMsRUFBNEM7UUFDdEUsSUFBSSxFQUFFLENBQUMsZ0JBQWdCLENBQUMsS0FBSyxTQUFTLEVBQUU7WUFDdEMsRUFBRSxDQUFDLGdCQUFnQixDQUFDLEdBQUcsQ0FBQyxDQUFDO1NBQzFCO1FBQ0QsT0FBTyxDQUFDLFFBQU0sRUFBRSxDQUFDLGdCQUFnQixDQUFFLEVBQUksQ0FBZSxDQUFDO0lBQ3pELENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtBYnNvbHV0ZVNvdXJjZVNwYW4sIFBhcnNlTG9jYXRpb24sIFBhcnNlU291cmNlRmlsZSwgUGFyc2VTb3VyY2VTcGFufSBmcm9tICdAYW5ndWxhci9jb21waWxlcic7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcbmltcG9ydCB7VGVtcGxhdGVJZCwgVGVtcGxhdGVTb3VyY2VNYXBwaW5nfSBmcm9tICcuLi9hcGknO1xuXG5pbXBvcnQge1RlbXBsYXRlU291cmNlUmVzb2x2ZXJ9IGZyb20gJy4vZGlhZ25vc3RpY3MnO1xuaW1wb3J0IHtjb21wdXRlTGluZVN0YXJ0c01hcCwgZ2V0TGluZUFuZENoYXJhY3RlckZyb21Qb3NpdGlvbn0gZnJvbSAnLi9saW5lX21hcHBpbmdzJztcblxuLyoqXG4gKiBSZXByZXNlbnRzIHRoZSBzb3VyY2Ugb2YgYSB0ZW1wbGF0ZSB0aGF0IHdhcyBwcm9jZXNzZWQgZHVyaW5nIHR5cGUtY2hlY2tpbmcuIFRoaXMgaW5mb3JtYXRpb24gaXNcbiAqIHVzZWQgd2hlbiB0cmFuc2xhdGluZyBwYXJzZSBvZmZzZXRzIGluIGRpYWdub3N0aWNzIGJhY2sgdG8gdGhlaXIgb3JpZ2luYWwgbGluZS9jb2x1bW4gbG9jYXRpb24uXG4gKi9cbmV4cG9ydCBjbGFzcyBUZW1wbGF0ZVNvdXJjZSB7XG4gIHByaXZhdGUgbGluZVN0YXJ0czogbnVtYmVyW118bnVsbCA9IG51bGw7XG5cbiAgY29uc3RydWN0b3IocmVhZG9ubHkgbWFwcGluZzogVGVtcGxhdGVTb3VyY2VNYXBwaW5nLCBwcml2YXRlIGZpbGU6IFBhcnNlU291cmNlRmlsZSkge31cblxuICB0b1BhcnNlU291cmNlU3BhbihzdGFydDogbnVtYmVyLCBlbmQ6IG51bWJlcik6IFBhcnNlU291cmNlU3BhbiB7XG4gICAgY29uc3Qgc3RhcnRMb2MgPSB0aGlzLnRvUGFyc2VMb2NhdGlvbihzdGFydCk7XG4gICAgY29uc3QgZW5kTG9jID0gdGhpcy50b1BhcnNlTG9jYXRpb24oZW5kKTtcbiAgICByZXR1cm4gbmV3IFBhcnNlU291cmNlU3BhbihzdGFydExvYywgZW5kTG9jKTtcbiAgfVxuXG4gIHByaXZhdGUgdG9QYXJzZUxvY2F0aW9uKHBvc2l0aW9uOiBudW1iZXIpIHtcbiAgICBjb25zdCBsaW5lU3RhcnRzID0gdGhpcy5hY3F1aXJlTGluZVN0YXJ0cygpO1xuICAgIGNvbnN0IHtsaW5lLCBjaGFyYWN0ZXJ9ID0gZ2V0TGluZUFuZENoYXJhY3RlckZyb21Qb3NpdGlvbihsaW5lU3RhcnRzLCBwb3NpdGlvbik7XG4gICAgcmV0dXJuIG5ldyBQYXJzZUxvY2F0aW9uKHRoaXMuZmlsZSwgcG9zaXRpb24sIGxpbmUsIGNoYXJhY3Rlcik7XG4gIH1cblxuICBwcml2YXRlIGFjcXVpcmVMaW5lU3RhcnRzKCk6IG51bWJlcltdIHtcbiAgICBpZiAodGhpcy5saW5lU3RhcnRzID09PSBudWxsKSB7XG4gICAgICB0aGlzLmxpbmVTdGFydHMgPSBjb21wdXRlTGluZVN0YXJ0c01hcCh0aGlzLmZpbGUuY29udGVudCk7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLmxpbmVTdGFydHM7XG4gIH1cbn1cblxuLyoqXG4gKiBBc3NpZ25zIElEcyB0byB0ZW1wbGF0ZXMgYW5kIGtlZXBzIHRyYWNrIG9mIHRoZWlyIG9yaWdpbnMuXG4gKlxuICogSW1wbGVtZW50cyBgVGVtcGxhdGVTb3VyY2VSZXNvbHZlcmAgdG8gcmVzb2x2ZSB0aGUgc291cmNlIG9mIGEgdGVtcGxhdGUgYmFzZWQgb24gdGhlc2UgSURzLlxuICovXG5leHBvcnQgY2xhc3MgVGVtcGxhdGVTb3VyY2VNYW5hZ2VyIGltcGxlbWVudHMgVGVtcGxhdGVTb3VyY2VSZXNvbHZlciB7XG4gIC8qKlxuICAgKiBUaGlzIG1hcCBrZWVwcyB0cmFjayBvZiBhbGwgdGVtcGxhdGUgc291cmNlcyB0aGF0IGhhdmUgYmVlbiB0eXBlLWNoZWNrZWQgYnkgdGhlIGlkIHRoYXQgaXNcbiAgICogYXR0YWNoZWQgdG8gYSBUQ0IncyBmdW5jdGlvbiBkZWNsYXJhdGlvbiBhcyBsZWFkaW5nIHRyaXZpYS4gVGhpcyBlbmFibGVzIHRyYW5zbGF0aW9uIG9mXG4gICAqIGRpYWdub3N0aWNzIHByb2R1Y2VkIGZvciBUQ0IgY29kZSB0byB0aGVpciBzb3VyY2UgbG9jYXRpb24gaW4gdGhlIHRlbXBsYXRlLlxuICAgKi9cbiAgcHJpdmF0ZSB0ZW1wbGF0ZVNvdXJjZXMgPSBuZXcgTWFwPFRlbXBsYXRlSWQsIFRlbXBsYXRlU291cmNlPigpO1xuXG4gIGdldFRlbXBsYXRlSWQobm9kZTogdHMuQ2xhc3NEZWNsYXJhdGlvbik6IFRlbXBsYXRlSWQge1xuICAgIHJldHVybiBnZXRUZW1wbGF0ZUlkKG5vZGUpO1xuICB9XG5cbiAgY2FwdHVyZVNvdXJjZShub2RlOiB0cy5DbGFzc0RlY2xhcmF0aW9uLCBtYXBwaW5nOiBUZW1wbGF0ZVNvdXJjZU1hcHBpbmcsIGZpbGU6IFBhcnNlU291cmNlRmlsZSk6XG4gICAgICBUZW1wbGF0ZUlkIHtcbiAgICBjb25zdCBpZCA9IGdldFRlbXBsYXRlSWQobm9kZSk7XG4gICAgdGhpcy50ZW1wbGF0ZVNvdXJjZXMuc2V0KGlkLCBuZXcgVGVtcGxhdGVTb3VyY2UobWFwcGluZywgZmlsZSkpO1xuICAgIHJldHVybiBpZDtcbiAgfVxuXG4gIGdldFNvdXJjZU1hcHBpbmcoaWQ6IFRlbXBsYXRlSWQpOiBUZW1wbGF0ZVNvdXJjZU1hcHBpbmcge1xuICAgIGlmICghdGhpcy50ZW1wbGF0ZVNvdXJjZXMuaGFzKGlkKSkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGBVbmV4cGVjdGVkIHVua25vd24gdGVtcGxhdGUgSUQ6ICR7aWR9YCk7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLnRlbXBsYXRlU291cmNlcy5nZXQoaWQpIS5tYXBwaW5nO1xuICB9XG5cbiAgdG9QYXJzZVNvdXJjZVNwYW4oaWQ6IFRlbXBsYXRlSWQsIHNwYW46IEFic29sdXRlU291cmNlU3Bhbik6IFBhcnNlU291cmNlU3BhbnxudWxsIHtcbiAgICBpZiAoIXRoaXMudGVtcGxhdGVTb3VyY2VzLmhhcyhpZCkpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgICBjb25zdCB0ZW1wbGF0ZVNvdXJjZSA9IHRoaXMudGVtcGxhdGVTb3VyY2VzLmdldChpZCkhO1xuICAgIHJldHVybiB0ZW1wbGF0ZVNvdXJjZS50b1BhcnNlU291cmNlU3BhbihzcGFuLnN0YXJ0LCBzcGFuLmVuZCk7XG4gIH1cbn1cblxuY29uc3QgVEVNUExBVEVfSUQgPSBTeW1ib2woJ25nVGVtcGxhdGVJZCcpO1xuY29uc3QgTkVYVF9URU1QTEFURV9JRCA9IFN5bWJvbCgnbmdOZXh0VGVtcGxhdGVJZCcpO1xuXG5pbnRlcmZhY2UgSGFzVGVtcGxhdGVJZCB7XG4gIFtURU1QTEFURV9JRF06IFRlbXBsYXRlSWQ7XG59XG5cbmludGVyZmFjZSBIYXNOZXh0VGVtcGxhdGVJZCB7XG4gIFtORVhUX1RFTVBMQVRFX0lEXTogbnVtYmVyO1xufVxuXG5mdW5jdGlvbiBnZXRUZW1wbGF0ZUlkKG5vZGU6IHRzLkNsYXNzRGVjbGFyYXRpb24mUGFydGlhbDxIYXNUZW1wbGF0ZUlkPik6IFRlbXBsYXRlSWQge1xuICBpZiAobm9kZVtURU1QTEFURV9JRF0gPT09IHVuZGVmaW5lZCkge1xuICAgIG5vZGVbVEVNUExBVEVfSURdID0gYWxsb2NhdGVUZW1wbGF0ZUlkKG5vZGUuZ2V0U291cmNlRmlsZSgpKTtcbiAgfVxuICByZXR1cm4gbm9kZVtURU1QTEFURV9JRF0hO1xufVxuXG5mdW5jdGlvbiBhbGxvY2F0ZVRlbXBsYXRlSWQoc2Y6IHRzLlNvdXJjZUZpbGUmUGFydGlhbDxIYXNOZXh0VGVtcGxhdGVJZD4pOiBUZW1wbGF0ZUlkIHtcbiAgaWYgKHNmW05FWFRfVEVNUExBVEVfSURdID09PSB1bmRlZmluZWQpIHtcbiAgICBzZltORVhUX1RFTVBMQVRFX0lEXSA9IDE7XG4gIH1cbiAgcmV0dXJuIChgdGNiJHtzZltORVhUX1RFTVBMQVRFX0lEXSErK31gKSBhcyBUZW1wbGF0ZUlkO1xufVxuIl19