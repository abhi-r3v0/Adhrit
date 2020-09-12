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
        define("@angular/compiler-cli/src/ngtsc/shims/src/expando", ["require", "exports", "tslib"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.retagTsFile = exports.untagTsFile = exports.retagAllTsFiles = exports.untagAllTsFiles = exports.copyFileShimData = exports.isShim = exports.isFileShimSourceFile = exports.sfExtensionData = exports.isExtended = exports.NgExtension = void 0;
    var tslib_1 = require("tslib");
    /**
     * A `Symbol` which is used to patch extension data onto `ts.SourceFile`s.
     */
    exports.NgExtension = Symbol('NgExtension');
    /**
     * Narrows a `ts.SourceFile` if it has an `NgExtension` property.
     */
    function isExtended(sf) {
        return sf[exports.NgExtension] !== undefined;
    }
    exports.isExtended = isExtended;
    /**
     * Returns the `NgExtensionData` for a given `ts.SourceFile`, adding it if none exists.
     */
    function sfExtensionData(sf) {
        var extSf = sf;
        if (extSf[exports.NgExtension] !== undefined) {
            // The file already has extension data, so return it directly.
            return extSf[exports.NgExtension];
        }
        // The file has no existing extension data, so add it and return it.
        var extension = {
            isTopLevelShim: false,
            fileShim: null,
            originalReferencedFiles: null,
            taggedReferenceFiles: null,
        };
        extSf[exports.NgExtension] = extension;
        return extension;
    }
    exports.sfExtensionData = sfExtensionData;
    /**
     * Check whether `sf` is a per-file shim `ts.SourceFile`.
     */
    function isFileShimSourceFile(sf) {
        return isExtended(sf) && sf[exports.NgExtension].fileShim !== null;
    }
    exports.isFileShimSourceFile = isFileShimSourceFile;
    /**
     * Check whether `sf` is a shim `ts.SourceFile` (either a per-file shim or a top-level shim).
     */
    function isShim(sf) {
        return isExtended(sf) && (sf[exports.NgExtension].fileShim !== null || sf[exports.NgExtension].isTopLevelShim);
    }
    exports.isShim = isShim;
    /**
     * Copy any shim data from one `ts.SourceFile` to another.
     */
    function copyFileShimData(from, to) {
        if (!isFileShimSourceFile(from)) {
            return;
        }
        sfExtensionData(to).fileShim = sfExtensionData(from).fileShim;
    }
    exports.copyFileShimData = copyFileShimData;
    /**
     * For those `ts.SourceFile`s in the `program` which have previously been tagged by a
     * `ShimReferenceTagger`, restore the original `referencedFiles` array that does not have shim tags.
     */
    function untagAllTsFiles(program) {
        var e_1, _a;
        try {
            for (var _b = tslib_1.__values(program.getSourceFiles()), _c = _b.next(); !_c.done; _c = _b.next()) {
                var sf = _c.value;
                untagTsFile(sf);
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
            }
            finally { if (e_1) throw e_1.error; }
        }
    }
    exports.untagAllTsFiles = untagAllTsFiles;
    /**
     * For those `ts.SourceFile`s in the `program` which have previously been tagged by a
     * `ShimReferenceTagger`, re-apply the effects of tagging by updating the `referencedFiles` array to
     * the tagged version produced previously.
     */
    function retagAllTsFiles(program) {
        var e_2, _a;
        try {
            for (var _b = tslib_1.__values(program.getSourceFiles()), _c = _b.next(); !_c.done; _c = _b.next()) {
                var sf = _c.value;
                retagTsFile(sf);
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
    exports.retagAllTsFiles = retagAllTsFiles;
    /**
     * Restore the original `referencedFiles` for the given `ts.SourceFile`.
     */
    function untagTsFile(sf) {
        if (sf.isDeclarationFile || !isExtended(sf)) {
            return;
        }
        var ext = sfExtensionData(sf);
        if (ext.originalReferencedFiles !== null) {
            sf.referencedFiles = ext.originalReferencedFiles;
        }
    }
    exports.untagTsFile = untagTsFile;
    /**
     * Apply the previously tagged `referencedFiles` to the given `ts.SourceFile`, if it was previously
     * tagged.
     */
    function retagTsFile(sf) {
        if (sf.isDeclarationFile || !isExtended(sf)) {
            return;
        }
        var ext = sfExtensionData(sf);
        if (ext.taggedReferenceFiles !== null) {
            sf.referencedFiles = ext.taggedReferenceFiles;
        }
    }
    exports.retagTsFile = retagTsFile;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXhwYW5kby5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2Mvc2hpbXMvc3JjL2V4cGFuZG8udHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQU1IOztPQUVHO0lBQ1UsUUFBQSxXQUFXLEdBQUcsTUFBTSxDQUFDLGFBQWEsQ0FBQyxDQUFDO0lBdUNqRDs7T0FFRztJQUNILFNBQWdCLFVBQVUsQ0FBQyxFQUFpQjtRQUMxQyxPQUFRLEVBQWdDLENBQUMsbUJBQVcsQ0FBQyxLQUFLLFNBQVMsQ0FBQztJQUN0RSxDQUFDO0lBRkQsZ0NBRUM7SUFFRDs7T0FFRztJQUNILFNBQWdCLGVBQWUsQ0FBQyxFQUFpQjtRQUMvQyxJQUFNLEtBQUssR0FBRyxFQUErQixDQUFDO1FBQzlDLElBQUksS0FBSyxDQUFDLG1CQUFXLENBQUMsS0FBSyxTQUFTLEVBQUU7WUFDcEMsOERBQThEO1lBQzlELE9BQU8sS0FBSyxDQUFDLG1CQUFXLENBQUUsQ0FBQztTQUM1QjtRQUVELG9FQUFvRTtRQUNwRSxJQUFNLFNBQVMsR0FBb0I7WUFDakMsY0FBYyxFQUFFLEtBQUs7WUFDckIsUUFBUSxFQUFFLElBQUk7WUFDZCx1QkFBdUIsRUFBRSxJQUFJO1lBQzdCLG9CQUFvQixFQUFFLElBQUk7U0FDM0IsQ0FBQztRQUNGLEtBQUssQ0FBQyxtQkFBVyxDQUFDLEdBQUcsU0FBUyxDQUFDO1FBQy9CLE9BQU8sU0FBUyxDQUFDO0lBQ25CLENBQUM7SUFoQkQsMENBZ0JDO0lBbUJEOztPQUVHO0lBQ0gsU0FBZ0Isb0JBQW9CLENBQUMsRUFBaUI7UUFDcEQsT0FBTyxVQUFVLENBQUMsRUFBRSxDQUFDLElBQUksRUFBRSxDQUFDLG1CQUFXLENBQUMsQ0FBQyxRQUFRLEtBQUssSUFBSSxDQUFDO0lBQzdELENBQUM7SUFGRCxvREFFQztJQUVEOztPQUVHO0lBQ0gsU0FBZ0IsTUFBTSxDQUFDLEVBQWlCO1FBQ3RDLE9BQU8sVUFBVSxDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLG1CQUFXLENBQUMsQ0FBQyxRQUFRLEtBQUssSUFBSSxJQUFJLEVBQUUsQ0FBQyxtQkFBVyxDQUFDLENBQUMsY0FBYyxDQUFDLENBQUM7SUFDakcsQ0FBQztJQUZELHdCQUVDO0lBRUQ7O09BRUc7SUFDSCxTQUFnQixnQkFBZ0IsQ0FBQyxJQUFtQixFQUFFLEVBQWlCO1FBQ3JFLElBQUksQ0FBQyxvQkFBb0IsQ0FBQyxJQUFJLENBQUMsRUFBRTtZQUMvQixPQUFPO1NBQ1I7UUFDRCxlQUFlLENBQUMsRUFBRSxDQUFDLENBQUMsUUFBUSxHQUFHLGVBQWUsQ0FBQyxJQUFJLENBQUMsQ0FBQyxRQUFRLENBQUM7SUFDaEUsQ0FBQztJQUxELDRDQUtDO0lBRUQ7OztPQUdHO0lBQ0gsU0FBZ0IsZUFBZSxDQUFDLE9BQW1COzs7WUFDakQsS0FBaUIsSUFBQSxLQUFBLGlCQUFBLE9BQU8sQ0FBQyxjQUFjLEVBQUUsQ0FBQSxnQkFBQSw0QkFBRTtnQkFBdEMsSUFBTSxFQUFFLFdBQUE7Z0JBQ1gsV0FBVyxDQUFDLEVBQUUsQ0FBQyxDQUFDO2FBQ2pCOzs7Ozs7Ozs7SUFDSCxDQUFDO0lBSkQsMENBSUM7SUFFRDs7OztPQUlHO0lBQ0gsU0FBZ0IsZUFBZSxDQUFDLE9BQW1COzs7WUFDakQsS0FBaUIsSUFBQSxLQUFBLGlCQUFBLE9BQU8sQ0FBQyxjQUFjLEVBQUUsQ0FBQSxnQkFBQSw0QkFBRTtnQkFBdEMsSUFBTSxFQUFFLFdBQUE7Z0JBQ1gsV0FBVyxDQUFDLEVBQUUsQ0FBQyxDQUFDO2FBQ2pCOzs7Ozs7Ozs7SUFDSCxDQUFDO0lBSkQsMENBSUM7SUFFRDs7T0FFRztJQUNILFNBQWdCLFdBQVcsQ0FBQyxFQUFpQjtRQUMzQyxJQUFJLEVBQUUsQ0FBQyxpQkFBaUIsSUFBSSxDQUFDLFVBQVUsQ0FBQyxFQUFFLENBQUMsRUFBRTtZQUMzQyxPQUFPO1NBQ1I7UUFFRCxJQUFNLEdBQUcsR0FBRyxlQUFlLENBQUMsRUFBRSxDQUFDLENBQUM7UUFDaEMsSUFBSSxHQUFHLENBQUMsdUJBQXVCLEtBQUssSUFBSSxFQUFFO1lBQ3hDLEVBQUUsQ0FBQyxlQUFlLEdBQUcsR0FBRyxDQUFDLHVCQUFrRCxDQUFDO1NBQzdFO0lBQ0gsQ0FBQztJQVRELGtDQVNDO0lBRUQ7OztPQUdHO0lBQ0gsU0FBZ0IsV0FBVyxDQUFDLEVBQWlCO1FBQzNDLElBQUksRUFBRSxDQUFDLGlCQUFpQixJQUFJLENBQUMsVUFBVSxDQUFDLEVBQUUsQ0FBQyxFQUFFO1lBQzNDLE9BQU87U0FDUjtRQUVELElBQU0sR0FBRyxHQUFHLGVBQWUsQ0FBQyxFQUFFLENBQUMsQ0FBQztRQUNoQyxJQUFJLEdBQUcsQ0FBQyxvQkFBb0IsS0FBSyxJQUFJLEVBQUU7WUFDckMsRUFBRSxDQUFDLGVBQWUsR0FBRyxHQUFHLENBQUMsb0JBQStDLENBQUM7U0FDMUU7SUFDSCxDQUFDO0lBVEQsa0NBU0MiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7QWJzb2x1dGVGc1BhdGh9IGZyb20gJy4uLy4uL2ZpbGVfc3lzdGVtJztcblxuLyoqXG4gKiBBIGBTeW1ib2xgIHdoaWNoIGlzIHVzZWQgdG8gcGF0Y2ggZXh0ZW5zaW9uIGRhdGEgb250byBgdHMuU291cmNlRmlsZWBzLlxuICovXG5leHBvcnQgY29uc3QgTmdFeHRlbnNpb24gPSBTeW1ib2woJ05nRXh0ZW5zaW9uJyk7XG5cbi8qKlxuICogQ29udGVudHMgb2YgdGhlIGBOZ0V4dGVuc2lvbmAgcHJvcGVydHkgb2YgYSBgdHMuU291cmNlRmlsZWAuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgTmdFeHRlbnNpb25EYXRhIHtcbiAgaXNUb3BMZXZlbFNoaW06IGJvb2xlYW47XG4gIGZpbGVTaGltOiBOZ0ZpbGVTaGltRGF0YXxudWxsO1xuXG4gIC8qKlxuICAgKiBUaGUgY29udGVudHMgb2YgdGhlIGByZWZlcmVuY2VkRmlsZXNgIGFycmF5LCBiZWZvcmUgbW9kaWZpY2F0aW9uIGJ5IGEgYFNoaW1SZWZlcmVuY2VUYWdnZXJgLlxuICAgKi9cbiAgb3JpZ2luYWxSZWZlcmVuY2VkRmlsZXM6IFJlYWRvbmx5QXJyYXk8dHMuRmlsZVJlZmVyZW5jZT58bnVsbDtcblxuICAvKipcbiAgICogVGhlIGNvbnRlbnRzIG9mIHRoZSBgcmVmZXJlbmNlZEZpbGVzYCBhcnJheSwgYWZ0ZXIgbW9kaWZpY2F0aW9uIGJ5IGEgYFNoaW1SZWZlcmVuY2VUYWdnZXJgLlxuICAgKi9cbiAgdGFnZ2VkUmVmZXJlbmNlRmlsZXM6IFJlYWRvbmx5QXJyYXk8dHMuRmlsZVJlZmVyZW5jZT58bnVsbDtcbn1cblxuLyoqXG4gKiBBIGB0cy5Tb3VyY2VGaWxlYCB3aGljaCBtYXkgb3IgbWF5IG5vdCBoYXZlIGBOZ0V4dGVuc2lvbmAgZGF0YS5cbiAqL1xuaW50ZXJmYWNlIE1heWJlTmdFeHRlbmRlZFNvdXJjZUZpbGUgZXh0ZW5kcyB0cy5Tb3VyY2VGaWxlIHtcbiAgW05nRXh0ZW5zaW9uXT86IE5nRXh0ZW5zaW9uRGF0YTtcbn1cblxuLyoqXG4gKiBBIGB0cy5Tb3VyY2VGaWxlYCB3aGljaCBoYXMgYE5nRXh0ZW5zaW9uYCBkYXRhLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIE5nRXh0ZW5kZWRTb3VyY2VGaWxlIGV4dGVuZHMgdHMuU291cmNlRmlsZSB7XG4gIC8qKlxuICAgKiBPdmVycmlkZXMgdGhlIHR5cGUgb2YgYHJlZmVyZW5jZWRGaWxlc2AgdG8gYmUgd3JpdGVhYmxlLlxuICAgKi9cbiAgcmVmZXJlbmNlZEZpbGVzOiB0cy5GaWxlUmVmZXJlbmNlW107XG5cbiAgW05nRXh0ZW5zaW9uXTogTmdFeHRlbnNpb25EYXRhO1xufVxuXG4vKipcbiAqIE5hcnJvd3MgYSBgdHMuU291cmNlRmlsZWAgaWYgaXQgaGFzIGFuIGBOZ0V4dGVuc2lvbmAgcHJvcGVydHkuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBpc0V4dGVuZGVkKHNmOiB0cy5Tb3VyY2VGaWxlKTogc2YgaXMgTmdFeHRlbmRlZFNvdXJjZUZpbGUge1xuICByZXR1cm4gKHNmIGFzIE1heWJlTmdFeHRlbmRlZFNvdXJjZUZpbGUpW05nRXh0ZW5zaW9uXSAhPT0gdW5kZWZpbmVkO1xufVxuXG4vKipcbiAqIFJldHVybnMgdGhlIGBOZ0V4dGVuc2lvbkRhdGFgIGZvciBhIGdpdmVuIGB0cy5Tb3VyY2VGaWxlYCwgYWRkaW5nIGl0IGlmIG5vbmUgZXhpc3RzLlxuICovXG5leHBvcnQgZnVuY3Rpb24gc2ZFeHRlbnNpb25EYXRhKHNmOiB0cy5Tb3VyY2VGaWxlKTogTmdFeHRlbnNpb25EYXRhIHtcbiAgY29uc3QgZXh0U2YgPSBzZiBhcyBNYXliZU5nRXh0ZW5kZWRTb3VyY2VGaWxlO1xuICBpZiAoZXh0U2ZbTmdFeHRlbnNpb25dICE9PSB1bmRlZmluZWQpIHtcbiAgICAvLyBUaGUgZmlsZSBhbHJlYWR5IGhhcyBleHRlbnNpb24gZGF0YSwgc28gcmV0dXJuIGl0IGRpcmVjdGx5LlxuICAgIHJldHVybiBleHRTZltOZ0V4dGVuc2lvbl0hO1xuICB9XG5cbiAgLy8gVGhlIGZpbGUgaGFzIG5vIGV4aXN0aW5nIGV4dGVuc2lvbiBkYXRhLCBzbyBhZGQgaXQgYW5kIHJldHVybiBpdC5cbiAgY29uc3QgZXh0ZW5zaW9uOiBOZ0V4dGVuc2lvbkRhdGEgPSB7XG4gICAgaXNUb3BMZXZlbFNoaW06IGZhbHNlLFxuICAgIGZpbGVTaGltOiBudWxsLFxuICAgIG9yaWdpbmFsUmVmZXJlbmNlZEZpbGVzOiBudWxsLFxuICAgIHRhZ2dlZFJlZmVyZW5jZUZpbGVzOiBudWxsLFxuICB9O1xuICBleHRTZltOZ0V4dGVuc2lvbl0gPSBleHRlbnNpb247XG4gIHJldHVybiBleHRlbnNpb247XG59XG5cbi8qKlxuICogRGF0YSBhc3NvY2lhdGVkIHdpdGggYSBwZXItc2hpbSBpbnN0YW5jZSBgdHMuU291cmNlRmlsZWAuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgTmdGaWxlU2hpbURhdGEge1xuICBnZW5lcmF0ZWRGcm9tOiBBYnNvbHV0ZUZzUGF0aDtcbiAgZXh0ZW5zaW9uOiBzdHJpbmc7XG59XG5cbi8qKlxuICogQW4gYE5nRXh0ZW5kZWRTb3VyY2VGaWxlYCB0aGF0IGlzIGEgcGVyLWZpbGUgc2hpbSBhbmQgaGFzIGBOZ0ZpbGVTaGltRGF0YWAuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgTmdGaWxlU2hpbVNvdXJjZUZpbGUgZXh0ZW5kcyBOZ0V4dGVuZGVkU291cmNlRmlsZSB7XG4gIFtOZ0V4dGVuc2lvbl06IE5nRXh0ZW5zaW9uRGF0YSZ7XG4gICAgZmlsZVNoaW06IE5nRmlsZVNoaW1EYXRhLFxuICB9O1xufVxuXG4vKipcbiAqIENoZWNrIHdoZXRoZXIgYHNmYCBpcyBhIHBlci1maWxlIHNoaW0gYHRzLlNvdXJjZUZpbGVgLlxuICovXG5leHBvcnQgZnVuY3Rpb24gaXNGaWxlU2hpbVNvdXJjZUZpbGUoc2Y6IHRzLlNvdXJjZUZpbGUpOiBzZiBpcyBOZ0ZpbGVTaGltU291cmNlRmlsZSB7XG4gIHJldHVybiBpc0V4dGVuZGVkKHNmKSAmJiBzZltOZ0V4dGVuc2lvbl0uZmlsZVNoaW0gIT09IG51bGw7XG59XG5cbi8qKlxuICogQ2hlY2sgd2hldGhlciBgc2ZgIGlzIGEgc2hpbSBgdHMuU291cmNlRmlsZWAgKGVpdGhlciBhIHBlci1maWxlIHNoaW0gb3IgYSB0b3AtbGV2ZWwgc2hpbSkuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBpc1NoaW0oc2Y6IHRzLlNvdXJjZUZpbGUpOiBib29sZWFuIHtcbiAgcmV0dXJuIGlzRXh0ZW5kZWQoc2YpICYmIChzZltOZ0V4dGVuc2lvbl0uZmlsZVNoaW0gIT09IG51bGwgfHwgc2ZbTmdFeHRlbnNpb25dLmlzVG9wTGV2ZWxTaGltKTtcbn1cblxuLyoqXG4gKiBDb3B5IGFueSBzaGltIGRhdGEgZnJvbSBvbmUgYHRzLlNvdXJjZUZpbGVgIHRvIGFub3RoZXIuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBjb3B5RmlsZVNoaW1EYXRhKGZyb206IHRzLlNvdXJjZUZpbGUsIHRvOiB0cy5Tb3VyY2VGaWxlKTogdm9pZCB7XG4gIGlmICghaXNGaWxlU2hpbVNvdXJjZUZpbGUoZnJvbSkpIHtcbiAgICByZXR1cm47XG4gIH1cbiAgc2ZFeHRlbnNpb25EYXRhKHRvKS5maWxlU2hpbSA9IHNmRXh0ZW5zaW9uRGF0YShmcm9tKS5maWxlU2hpbTtcbn1cblxuLyoqXG4gKiBGb3IgdGhvc2UgYHRzLlNvdXJjZUZpbGVgcyBpbiB0aGUgYHByb2dyYW1gIHdoaWNoIGhhdmUgcHJldmlvdXNseSBiZWVuIHRhZ2dlZCBieSBhXG4gKiBgU2hpbVJlZmVyZW5jZVRhZ2dlcmAsIHJlc3RvcmUgdGhlIG9yaWdpbmFsIGByZWZlcmVuY2VkRmlsZXNgIGFycmF5IHRoYXQgZG9lcyBub3QgaGF2ZSBzaGltIHRhZ3MuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiB1bnRhZ0FsbFRzRmlsZXMocHJvZ3JhbTogdHMuUHJvZ3JhbSk6IHZvaWQge1xuICBmb3IgKGNvbnN0IHNmIG9mIHByb2dyYW0uZ2V0U291cmNlRmlsZXMoKSkge1xuICAgIHVudGFnVHNGaWxlKHNmKTtcbiAgfVxufVxuXG4vKipcbiAqIEZvciB0aG9zZSBgdHMuU291cmNlRmlsZWBzIGluIHRoZSBgcHJvZ3JhbWAgd2hpY2ggaGF2ZSBwcmV2aW91c2x5IGJlZW4gdGFnZ2VkIGJ5IGFcbiAqIGBTaGltUmVmZXJlbmNlVGFnZ2VyYCwgcmUtYXBwbHkgdGhlIGVmZmVjdHMgb2YgdGFnZ2luZyBieSB1cGRhdGluZyB0aGUgYHJlZmVyZW5jZWRGaWxlc2AgYXJyYXkgdG9cbiAqIHRoZSB0YWdnZWQgdmVyc2lvbiBwcm9kdWNlZCBwcmV2aW91c2x5LlxuICovXG5leHBvcnQgZnVuY3Rpb24gcmV0YWdBbGxUc0ZpbGVzKHByb2dyYW06IHRzLlByb2dyYW0pOiB2b2lkIHtcbiAgZm9yIChjb25zdCBzZiBvZiBwcm9ncmFtLmdldFNvdXJjZUZpbGVzKCkpIHtcbiAgICByZXRhZ1RzRmlsZShzZik7XG4gIH1cbn1cblxuLyoqXG4gKiBSZXN0b3JlIHRoZSBvcmlnaW5hbCBgcmVmZXJlbmNlZEZpbGVzYCBmb3IgdGhlIGdpdmVuIGB0cy5Tb3VyY2VGaWxlYC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHVudGFnVHNGaWxlKHNmOiB0cy5Tb3VyY2VGaWxlKTogdm9pZCB7XG4gIGlmIChzZi5pc0RlY2xhcmF0aW9uRmlsZSB8fCAhaXNFeHRlbmRlZChzZikpIHtcbiAgICByZXR1cm47XG4gIH1cblxuICBjb25zdCBleHQgPSBzZkV4dGVuc2lvbkRhdGEoc2YpO1xuICBpZiAoZXh0Lm9yaWdpbmFsUmVmZXJlbmNlZEZpbGVzICE9PSBudWxsKSB7XG4gICAgc2YucmVmZXJlbmNlZEZpbGVzID0gZXh0Lm9yaWdpbmFsUmVmZXJlbmNlZEZpbGVzIGFzIEFycmF5PHRzLkZpbGVSZWZlcmVuY2U+O1xuICB9XG59XG5cbi8qKlxuICogQXBwbHkgdGhlIHByZXZpb3VzbHkgdGFnZ2VkIGByZWZlcmVuY2VkRmlsZXNgIHRvIHRoZSBnaXZlbiBgdHMuU291cmNlRmlsZWAsIGlmIGl0IHdhcyBwcmV2aW91c2x5XG4gKiB0YWdnZWQuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiByZXRhZ1RzRmlsZShzZjogdHMuU291cmNlRmlsZSk6IHZvaWQge1xuICBpZiAoc2YuaXNEZWNsYXJhdGlvbkZpbGUgfHwgIWlzRXh0ZW5kZWQoc2YpKSB7XG4gICAgcmV0dXJuO1xuICB9XG5cbiAgY29uc3QgZXh0ID0gc2ZFeHRlbnNpb25EYXRhKHNmKTtcbiAgaWYgKGV4dC50YWdnZWRSZWZlcmVuY2VGaWxlcyAhPT0gbnVsbCkge1xuICAgIHNmLnJlZmVyZW5jZWRGaWxlcyA9IGV4dC50YWdnZWRSZWZlcmVuY2VGaWxlcyBhcyBBcnJheTx0cy5GaWxlUmVmZXJlbmNlPjtcbiAgfVxufVxuIl19