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
        define("@angular/compiler-cli/src/ngtsc/shims/src/reference_tagger", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/src/ngtsc/util/src/typescript", "@angular/compiler-cli/src/ngtsc/shims/src/expando", "@angular/compiler-cli/src/ngtsc/shims/src/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.ShimReferenceTagger = void 0;
    var tslib_1 = require("tslib");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var typescript_1 = require("@angular/compiler-cli/src/ngtsc/util/src/typescript");
    var expando_1 = require("@angular/compiler-cli/src/ngtsc/shims/src/expando");
    var util_1 = require("@angular/compiler-cli/src/ngtsc/shims/src/util");
    /**
     * Manipulates the `referencedFiles` property of `ts.SourceFile`s to add references to shim files
     * for each original source file, causing the shims to be loaded into the program as well.
     *
     * `ShimReferenceTagger`s are intended to operate during program creation only.
     */
    var ShimReferenceTagger = /** @class */ (function () {
        function ShimReferenceTagger(shimExtensions) {
            /**
             * Tracks which original files have been processed and had shims generated if necessary.
             *
             * This is used to avoid generating shims twice for the same file.
             */
            this.tagged = new Set();
            /**
             * Whether shim tagging is currently being performed.
             */
            this.enabled = true;
            this.suffixes = shimExtensions.map(function (extension) { return "." + extension + ".ts"; });
        }
        /**
         * Tag `sf` with any needed references if it's not a shim itself.
         */
        ShimReferenceTagger.prototype.tag = function (sf) {
            var e_1, _a;
            if (!this.enabled || sf.isDeclarationFile || expando_1.isShim(sf) || this.tagged.has(sf) ||
                !typescript_1.isNonDeclarationTsPath(sf.fileName)) {
                return;
            }
            var ext = expando_1.sfExtensionData(sf);
            // If this file has never been tagged before, capture its `referencedFiles` in the extension
            // data.
            if (ext.originalReferencedFiles === null) {
                ext.originalReferencedFiles = sf.referencedFiles;
            }
            var referencedFiles = tslib_1.__spread(ext.originalReferencedFiles);
            var sfPath = file_system_1.absoluteFromSourceFile(sf);
            try {
                for (var _b = tslib_1.__values(this.suffixes), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var suffix = _c.value;
                    referencedFiles.push({
                        fileName: util_1.makeShimFileName(sfPath, suffix),
                        pos: 0,
                        end: 0,
                    });
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
            ext.taggedReferenceFiles = referencedFiles;
            sf.referencedFiles = referencedFiles;
            this.tagged.add(sf);
        };
        /**
         * Disable the `ShimReferenceTagger` and free memory associated with tracking tagged files.
         */
        ShimReferenceTagger.prototype.finalize = function () {
            this.enabled = false;
            this.tagged.clear();
        };
        return ShimReferenceTagger;
    }());
    exports.ShimReferenceTagger = ShimReferenceTagger;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicmVmZXJlbmNlX3RhZ2dlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2Mvc2hpbXMvc3JjL3JlZmVyZW5jZV90YWdnZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUlILDJFQUF5RDtJQUN6RCxrRkFBaUU7SUFFakUsNkVBQWtEO0lBQ2xELHVFQUF3QztJQUV4Qzs7Ozs7T0FLRztJQUNIO1FBZUUsNkJBQVksY0FBd0I7WUFacEM7Ozs7ZUFJRztZQUNLLFdBQU0sR0FBRyxJQUFJLEdBQUcsRUFBaUIsQ0FBQztZQUUxQzs7ZUFFRztZQUNLLFlBQU8sR0FBWSxJQUFJLENBQUM7WUFHOUIsSUFBSSxDQUFDLFFBQVEsR0FBRyxjQUFjLENBQUMsR0FBRyxDQUFDLFVBQUEsU0FBUyxJQUFJLE9BQUEsTUFBSSxTQUFTLFFBQUssRUFBbEIsQ0FBa0IsQ0FBQyxDQUFDO1FBQ3RFLENBQUM7UUFFRDs7V0FFRztRQUNILGlDQUFHLEdBQUgsVUFBSSxFQUFpQjs7WUFDbkIsSUFBSSxDQUFDLElBQUksQ0FBQyxPQUFPLElBQUksRUFBRSxDQUFDLGlCQUFpQixJQUFJLGdCQUFNLENBQUMsRUFBRSxDQUFDLElBQUksSUFBSSxDQUFDLE1BQU0sQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDO2dCQUMxRSxDQUFDLG1DQUFzQixDQUFDLEVBQUUsQ0FBQyxRQUFRLENBQUMsRUFBRTtnQkFDeEMsT0FBTzthQUNSO1lBRUQsSUFBTSxHQUFHLEdBQUcseUJBQWUsQ0FBQyxFQUFFLENBQUMsQ0FBQztZQUVoQyw0RkFBNEY7WUFDNUYsUUFBUTtZQUNSLElBQUksR0FBRyxDQUFDLHVCQUF1QixLQUFLLElBQUksRUFBRTtnQkFDeEMsR0FBRyxDQUFDLHVCQUF1QixHQUFHLEVBQUUsQ0FBQyxlQUFlLENBQUM7YUFDbEQ7WUFFRCxJQUFNLGVBQWUsb0JBQU8sR0FBRyxDQUFDLHVCQUF1QixDQUFDLENBQUM7WUFHekQsSUFBTSxNQUFNLEdBQUcsb0NBQXNCLENBQUMsRUFBRSxDQUFDLENBQUM7O2dCQUMxQyxLQUFxQixJQUFBLEtBQUEsaUJBQUEsSUFBSSxDQUFDLFFBQVEsQ0FBQSxnQkFBQSw0QkFBRTtvQkFBL0IsSUFBTSxNQUFNLFdBQUE7b0JBQ2YsZUFBZSxDQUFDLElBQUksQ0FBQzt3QkFDbkIsUUFBUSxFQUFFLHVCQUFnQixDQUFDLE1BQU0sRUFBRSxNQUFNLENBQUM7d0JBQzFDLEdBQUcsRUFBRSxDQUFDO3dCQUNOLEdBQUcsRUFBRSxDQUFDO3FCQUNQLENBQUMsQ0FBQztpQkFDSjs7Ozs7Ozs7O1lBRUQsR0FBRyxDQUFDLG9CQUFvQixHQUFHLGVBQWUsQ0FBQztZQUMzQyxFQUFFLENBQUMsZUFBZSxHQUFHLGVBQWUsQ0FBQztZQUNyQyxJQUFJLENBQUMsTUFBTSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsQ0FBQztRQUN0QixDQUFDO1FBRUQ7O1dBRUc7UUFDSCxzQ0FBUSxHQUFSO1lBQ0UsSUFBSSxDQUFDLE9BQU8sR0FBRyxLQUFLLENBQUM7WUFDckIsSUFBSSxDQUFDLE1BQU0sQ0FBQyxLQUFLLEVBQUUsQ0FBQztRQUN0QixDQUFDO1FBQ0gsMEJBQUM7SUFBRCxDQUFDLEFBNURELElBNERDO0lBNURZLGtEQUFtQiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHthYnNvbHV0ZUZyb21Tb3VyY2VGaWxlfSBmcm9tICcuLi8uLi9maWxlX3N5c3RlbSc7XG5pbXBvcnQge2lzTm9uRGVjbGFyYXRpb25Uc1BhdGh9IGZyb20gJy4uLy4uL3V0aWwvc3JjL3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge2lzU2hpbSwgc2ZFeHRlbnNpb25EYXRhfSBmcm9tICcuL2V4cGFuZG8nO1xuaW1wb3J0IHttYWtlU2hpbUZpbGVOYW1lfSBmcm9tICcuL3V0aWwnO1xuXG4vKipcbiAqIE1hbmlwdWxhdGVzIHRoZSBgcmVmZXJlbmNlZEZpbGVzYCBwcm9wZXJ0eSBvZiBgdHMuU291cmNlRmlsZWBzIHRvIGFkZCByZWZlcmVuY2VzIHRvIHNoaW0gZmlsZXNcbiAqIGZvciBlYWNoIG9yaWdpbmFsIHNvdXJjZSBmaWxlLCBjYXVzaW5nIHRoZSBzaGltcyB0byBiZSBsb2FkZWQgaW50byB0aGUgcHJvZ3JhbSBhcyB3ZWxsLlxuICpcbiAqIGBTaGltUmVmZXJlbmNlVGFnZ2VyYHMgYXJlIGludGVuZGVkIHRvIG9wZXJhdGUgZHVyaW5nIHByb2dyYW0gY3JlYXRpb24gb25seS5cbiAqL1xuZXhwb3J0IGNsYXNzIFNoaW1SZWZlcmVuY2VUYWdnZXIge1xuICBwcml2YXRlIHN1ZmZpeGVzOiBzdHJpbmdbXTtcblxuICAvKipcbiAgICogVHJhY2tzIHdoaWNoIG9yaWdpbmFsIGZpbGVzIGhhdmUgYmVlbiBwcm9jZXNzZWQgYW5kIGhhZCBzaGltcyBnZW5lcmF0ZWQgaWYgbmVjZXNzYXJ5LlxuICAgKlxuICAgKiBUaGlzIGlzIHVzZWQgdG8gYXZvaWQgZ2VuZXJhdGluZyBzaGltcyB0d2ljZSBmb3IgdGhlIHNhbWUgZmlsZS5cbiAgICovXG4gIHByaXZhdGUgdGFnZ2VkID0gbmV3IFNldDx0cy5Tb3VyY2VGaWxlPigpO1xuXG4gIC8qKlxuICAgKiBXaGV0aGVyIHNoaW0gdGFnZ2luZyBpcyBjdXJyZW50bHkgYmVpbmcgcGVyZm9ybWVkLlxuICAgKi9cbiAgcHJpdmF0ZSBlbmFibGVkOiBib29sZWFuID0gdHJ1ZTtcblxuICBjb25zdHJ1Y3RvcihzaGltRXh0ZW5zaW9uczogc3RyaW5nW10pIHtcbiAgICB0aGlzLnN1ZmZpeGVzID0gc2hpbUV4dGVuc2lvbnMubWFwKGV4dGVuc2lvbiA9PiBgLiR7ZXh0ZW5zaW9ufS50c2ApO1xuICB9XG5cbiAgLyoqXG4gICAqIFRhZyBgc2ZgIHdpdGggYW55IG5lZWRlZCByZWZlcmVuY2VzIGlmIGl0J3Mgbm90IGEgc2hpbSBpdHNlbGYuXG4gICAqL1xuICB0YWcoc2Y6IHRzLlNvdXJjZUZpbGUpOiB2b2lkIHtcbiAgICBpZiAoIXRoaXMuZW5hYmxlZCB8fCBzZi5pc0RlY2xhcmF0aW9uRmlsZSB8fCBpc1NoaW0oc2YpIHx8IHRoaXMudGFnZ2VkLmhhcyhzZikgfHxcbiAgICAgICAgIWlzTm9uRGVjbGFyYXRpb25Uc1BhdGgoc2YuZmlsZU5hbWUpKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3QgZXh0ID0gc2ZFeHRlbnNpb25EYXRhKHNmKTtcblxuICAgIC8vIElmIHRoaXMgZmlsZSBoYXMgbmV2ZXIgYmVlbiB0YWdnZWQgYmVmb3JlLCBjYXB0dXJlIGl0cyBgcmVmZXJlbmNlZEZpbGVzYCBpbiB0aGUgZXh0ZW5zaW9uXG4gICAgLy8gZGF0YS5cbiAgICBpZiAoZXh0Lm9yaWdpbmFsUmVmZXJlbmNlZEZpbGVzID09PSBudWxsKSB7XG4gICAgICBleHQub3JpZ2luYWxSZWZlcmVuY2VkRmlsZXMgPSBzZi5yZWZlcmVuY2VkRmlsZXM7XG4gICAgfVxuXG4gICAgY29uc3QgcmVmZXJlbmNlZEZpbGVzID0gWy4uLmV4dC5vcmlnaW5hbFJlZmVyZW5jZWRGaWxlc107XG5cblxuICAgIGNvbnN0IHNmUGF0aCA9IGFic29sdXRlRnJvbVNvdXJjZUZpbGUoc2YpO1xuICAgIGZvciAoY29uc3Qgc3VmZml4IG9mIHRoaXMuc3VmZml4ZXMpIHtcbiAgICAgIHJlZmVyZW5jZWRGaWxlcy5wdXNoKHtcbiAgICAgICAgZmlsZU5hbWU6IG1ha2VTaGltRmlsZU5hbWUoc2ZQYXRoLCBzdWZmaXgpLFxuICAgICAgICBwb3M6IDAsXG4gICAgICAgIGVuZDogMCxcbiAgICAgIH0pO1xuICAgIH1cblxuICAgIGV4dC50YWdnZWRSZWZlcmVuY2VGaWxlcyA9IHJlZmVyZW5jZWRGaWxlcztcbiAgICBzZi5yZWZlcmVuY2VkRmlsZXMgPSByZWZlcmVuY2VkRmlsZXM7XG4gICAgdGhpcy50YWdnZWQuYWRkKHNmKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBEaXNhYmxlIHRoZSBgU2hpbVJlZmVyZW5jZVRhZ2dlcmAgYW5kIGZyZWUgbWVtb3J5IGFzc29jaWF0ZWQgd2l0aCB0cmFja2luZyB0YWdnZWQgZmlsZXMuXG4gICAqL1xuICBmaW5hbGl6ZSgpOiB2b2lkIHtcbiAgICB0aGlzLmVuYWJsZWQgPSBmYWxzZTtcbiAgICB0aGlzLnRhZ2dlZC5jbGVhcigpO1xuICB9XG59XG4iXX0=