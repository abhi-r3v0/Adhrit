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
        define("@angular/compiler-cli/src/transformers/metadata_cache", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/transformers/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.MetadataCache = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    var util_1 = require("@angular/compiler-cli/src/transformers/util");
    /**
     * Cache, and potentially transform, metadata as it is being collected.
     */
    var MetadataCache = /** @class */ (function () {
        function MetadataCache(collector, strict, transformers) {
            var e_1, _a;
            this.collector = collector;
            this.strict = strict;
            this.transformers = transformers;
            this.metadataCache = new Map();
            try {
                for (var transformers_1 = tslib_1.__values(transformers), transformers_1_1 = transformers_1.next(); !transformers_1_1.done; transformers_1_1 = transformers_1.next()) {
                    var transformer = transformers_1_1.value;
                    if (transformer.connect) {
                        transformer.connect(this);
                    }
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (transformers_1_1 && !transformers_1_1.done && (_a = transformers_1.return)) _a.call(transformers_1);
                }
                finally { if (e_1) throw e_1.error; }
            }
        }
        MetadataCache.prototype.getMetadata = function (sourceFile) {
            var e_2, _a;
            if (this.metadataCache.has(sourceFile.fileName)) {
                return this.metadataCache.get(sourceFile.fileName);
            }
            var substitute = undefined;
            // Only process transformers on modules that are not declaration files.
            var declarationFile = sourceFile.isDeclarationFile;
            var moduleFile = ts.isExternalModule(sourceFile);
            if (!declarationFile && moduleFile) {
                var _loop_1 = function (transform) {
                    var transformSubstitute = transform.start(sourceFile);
                    if (transformSubstitute) {
                        if (substitute) {
                            var previous_1 = substitute;
                            substitute = function (value, node) {
                                return transformSubstitute(previous_1(value, node), node);
                            };
                        }
                        else {
                            substitute = transformSubstitute;
                        }
                    }
                };
                try {
                    for (var _b = tslib_1.__values(this.transformers), _c = _b.next(); !_c.done; _c = _b.next()) {
                        var transform = _c.value;
                        _loop_1(transform);
                    }
                }
                catch (e_2_1) { e_2 = { error: e_2_1 }; }
                finally {
                    try {
                        if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                    }
                    finally { if (e_2) throw e_2.error; }
                }
            }
            var isTsFile = util_1.TS.test(sourceFile.fileName);
            var result = this.collector.getMetadata(sourceFile, this.strict && isTsFile, substitute);
            this.metadataCache.set(sourceFile.fileName, result);
            return result;
        };
        return MetadataCache;
    }());
    exports.MetadataCache = MetadataCache;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWV0YWRhdGFfY2FjaGUuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL3RyYW5zZm9ybWVycy9tZXRhZGF0YV9jYWNoZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBRUgsK0JBQWlDO0lBS2pDLG9FQUEwQjtJQVMxQjs7T0FFRztJQUNIO1FBR0UsdUJBQ1ksU0FBNEIsRUFBbUIsTUFBZSxFQUM5RCxZQUFtQzs7WUFEbkMsY0FBUyxHQUFULFNBQVMsQ0FBbUI7WUFBbUIsV0FBTSxHQUFOLE1BQU0sQ0FBUztZQUM5RCxpQkFBWSxHQUFaLFlBQVksQ0FBdUI7WUFKdkMsa0JBQWEsR0FBRyxJQUFJLEdBQUcsRUFBb0MsQ0FBQzs7Z0JBS2xFLEtBQXdCLElBQUEsaUJBQUEsaUJBQUEsWUFBWSxDQUFBLDBDQUFBLG9FQUFFO29CQUFqQyxJQUFJLFdBQVcseUJBQUE7b0JBQ2xCLElBQUksV0FBVyxDQUFDLE9BQU8sRUFBRTt3QkFDdkIsV0FBVyxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsQ0FBQztxQkFDM0I7aUJBQ0Y7Ozs7Ozs7OztRQUNILENBQUM7UUFFRCxtQ0FBVyxHQUFYLFVBQVksVUFBeUI7O1lBQ25DLElBQUksSUFBSSxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsVUFBVSxDQUFDLFFBQVEsQ0FBQyxFQUFFO2dCQUMvQyxPQUFPLElBQUksQ0FBQyxhQUFhLENBQUMsR0FBRyxDQUFDLFVBQVUsQ0FBQyxRQUFRLENBQUMsQ0FBQzthQUNwRDtZQUNELElBQUksVUFBVSxHQUE2QixTQUFTLENBQUM7WUFFckQsdUVBQXVFO1lBQ3ZFLElBQU0sZUFBZSxHQUFHLFVBQVUsQ0FBQyxpQkFBaUIsQ0FBQztZQUNyRCxJQUFNLFVBQVUsR0FBRyxFQUFFLENBQUMsZ0JBQWdCLENBQUMsVUFBVSxDQUFDLENBQUM7WUFDbkQsSUFBSSxDQUFDLGVBQWUsSUFBSSxVQUFVLEVBQUU7d0NBQ3pCLFNBQVM7b0JBQ2hCLElBQU0sbUJBQW1CLEdBQUcsU0FBUyxDQUFDLEtBQUssQ0FBQyxVQUFVLENBQUMsQ0FBQztvQkFDeEQsSUFBSSxtQkFBbUIsRUFBRTt3QkFDdkIsSUFBSSxVQUFVLEVBQUU7NEJBQ2QsSUFBTSxVQUFRLEdBQW1CLFVBQVUsQ0FBQzs0QkFDNUMsVUFBVSxHQUFHLFVBQUMsS0FBb0IsRUFBRSxJQUFhO2dDQUM3QyxPQUFBLG1CQUFtQixDQUFDLFVBQVEsQ0FBQyxLQUFLLEVBQUUsSUFBSSxDQUFDLEVBQUUsSUFBSSxDQUFDOzRCQUFoRCxDQUFnRCxDQUFDO3lCQUN0RDs2QkFBTTs0QkFDTCxVQUFVLEdBQUcsbUJBQW1CLENBQUM7eUJBQ2xDO3FCQUNGOzs7b0JBVkgsS0FBc0IsSUFBQSxLQUFBLGlCQUFBLElBQUksQ0FBQyxZQUFZLENBQUEsZ0JBQUE7d0JBQWxDLElBQUksU0FBUyxXQUFBO2dDQUFULFNBQVM7cUJBV2pCOzs7Ozs7Ozs7YUFDRjtZQUVELElBQU0sUUFBUSxHQUFHLFNBQUUsQ0FBQyxJQUFJLENBQUMsVUFBVSxDQUFDLFFBQVEsQ0FBQyxDQUFDO1lBQzlDLElBQU0sTUFBTSxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsV0FBVyxDQUFDLFVBQVUsRUFBRSxJQUFJLENBQUMsTUFBTSxJQUFJLFFBQVEsRUFBRSxVQUFVLENBQUMsQ0FBQztZQUMzRixJQUFJLENBQUMsYUFBYSxDQUFDLEdBQUcsQ0FBQyxVQUFVLENBQUMsUUFBUSxFQUFFLE1BQU0sQ0FBQyxDQUFDO1lBQ3BELE9BQU8sTUFBTSxDQUFDO1FBQ2hCLENBQUM7UUFDSCxvQkFBQztJQUFELENBQUMsQUExQ0QsSUEwQ0M7SUExQ1ksc0NBQWEiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7TWV0YWRhdGFDb2xsZWN0b3IsIE1ldGFkYXRhVmFsdWUsIE1vZHVsZU1ldGFkYXRhfSBmcm9tICcuLi9tZXRhZGF0YS9pbmRleCc7XG5cbmltcG9ydCB7TWV0YWRhdGFQcm92aWRlcn0gZnJvbSAnLi9jb21waWxlcl9ob3N0JztcbmltcG9ydCB7VFN9IGZyb20gJy4vdXRpbCc7XG5cbmV4cG9ydCB0eXBlIFZhbHVlVHJhbnNmb3JtID0gKHZhbHVlOiBNZXRhZGF0YVZhbHVlLCBub2RlOiB0cy5Ob2RlKSA9PiBNZXRhZGF0YVZhbHVlO1xuXG5leHBvcnQgaW50ZXJmYWNlIE1ldGFkYXRhVHJhbnNmb3JtZXIge1xuICBjb25uZWN0PyhjYWNoZTogTWV0YWRhdGFDYWNoZSk6IHZvaWQ7XG4gIHN0YXJ0KHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUpOiBWYWx1ZVRyYW5zZm9ybXx1bmRlZmluZWQ7XG59XG5cbi8qKlxuICogQ2FjaGUsIGFuZCBwb3RlbnRpYWxseSB0cmFuc2Zvcm0sIG1ldGFkYXRhIGFzIGl0IGlzIGJlaW5nIGNvbGxlY3RlZC5cbiAqL1xuZXhwb3J0IGNsYXNzIE1ldGFkYXRhQ2FjaGUgaW1wbGVtZW50cyBNZXRhZGF0YVByb3ZpZGVyIHtcbiAgcHJpdmF0ZSBtZXRhZGF0YUNhY2hlID0gbmV3IE1hcDxzdHJpbmcsIE1vZHVsZU1ldGFkYXRhfHVuZGVmaW5lZD4oKTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgY29sbGVjdG9yOiBNZXRhZGF0YUNvbGxlY3RvciwgcHJpdmF0ZSByZWFkb25seSBzdHJpY3Q6IGJvb2xlYW4sXG4gICAgICBwcml2YXRlIHRyYW5zZm9ybWVyczogTWV0YWRhdGFUcmFuc2Zvcm1lcltdKSB7XG4gICAgZm9yIChsZXQgdHJhbnNmb3JtZXIgb2YgdHJhbnNmb3JtZXJzKSB7XG4gICAgICBpZiAodHJhbnNmb3JtZXIuY29ubmVjdCkge1xuICAgICAgICB0cmFuc2Zvcm1lci5jb25uZWN0KHRoaXMpO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIGdldE1ldGFkYXRhKHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUpOiBNb2R1bGVNZXRhZGF0YXx1bmRlZmluZWQge1xuICAgIGlmICh0aGlzLm1ldGFkYXRhQ2FjaGUuaGFzKHNvdXJjZUZpbGUuZmlsZU5hbWUpKSB7XG4gICAgICByZXR1cm4gdGhpcy5tZXRhZGF0YUNhY2hlLmdldChzb3VyY2VGaWxlLmZpbGVOYW1lKTtcbiAgICB9XG4gICAgbGV0IHN1YnN0aXR1dGU6IFZhbHVlVHJhbnNmb3JtfHVuZGVmaW5lZCA9IHVuZGVmaW5lZDtcblxuICAgIC8vIE9ubHkgcHJvY2VzcyB0cmFuc2Zvcm1lcnMgb24gbW9kdWxlcyB0aGF0IGFyZSBub3QgZGVjbGFyYXRpb24gZmlsZXMuXG4gICAgY29uc3QgZGVjbGFyYXRpb25GaWxlID0gc291cmNlRmlsZS5pc0RlY2xhcmF0aW9uRmlsZTtcbiAgICBjb25zdCBtb2R1bGVGaWxlID0gdHMuaXNFeHRlcm5hbE1vZHVsZShzb3VyY2VGaWxlKTtcbiAgICBpZiAoIWRlY2xhcmF0aW9uRmlsZSAmJiBtb2R1bGVGaWxlKSB7XG4gICAgICBmb3IgKGxldCB0cmFuc2Zvcm0gb2YgdGhpcy50cmFuc2Zvcm1lcnMpIHtcbiAgICAgICAgY29uc3QgdHJhbnNmb3JtU3Vic3RpdHV0ZSA9IHRyYW5zZm9ybS5zdGFydChzb3VyY2VGaWxlKTtcbiAgICAgICAgaWYgKHRyYW5zZm9ybVN1YnN0aXR1dGUpIHtcbiAgICAgICAgICBpZiAoc3Vic3RpdHV0ZSkge1xuICAgICAgICAgICAgY29uc3QgcHJldmlvdXM6IFZhbHVlVHJhbnNmb3JtID0gc3Vic3RpdHV0ZTtcbiAgICAgICAgICAgIHN1YnN0aXR1dGUgPSAodmFsdWU6IE1ldGFkYXRhVmFsdWUsIG5vZGU6IHRzLk5vZGUpID0+XG4gICAgICAgICAgICAgICAgdHJhbnNmb3JtU3Vic3RpdHV0ZShwcmV2aW91cyh2YWx1ZSwgbm9kZSksIG5vZGUpO1xuICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICBzdWJzdGl0dXRlID0gdHJhbnNmb3JtU3Vic3RpdHV0ZTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICBjb25zdCBpc1RzRmlsZSA9IFRTLnRlc3Qoc291cmNlRmlsZS5maWxlTmFtZSk7XG4gICAgY29uc3QgcmVzdWx0ID0gdGhpcy5jb2xsZWN0b3IuZ2V0TWV0YWRhdGEoc291cmNlRmlsZSwgdGhpcy5zdHJpY3QgJiYgaXNUc0ZpbGUsIHN1YnN0aXR1dGUpO1xuICAgIHRoaXMubWV0YWRhdGFDYWNoZS5zZXQoc291cmNlRmlsZS5maWxlTmFtZSwgcmVzdWx0KTtcbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG59XG4iXX0=