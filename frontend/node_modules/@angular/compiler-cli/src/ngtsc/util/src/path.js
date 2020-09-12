(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/src/ngtsc/util/src/path", ["require", "exports", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/src/ngtsc/file_system/src/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.normalizeSeparators = exports.relativePathBetween = void 0;
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var util_1 = require("@angular/compiler-cli/src/ngtsc/file_system/src/util");
    function relativePathBetween(from, to) {
        var relativePath = util_1.stripExtension(file_system_1.relative(file_system_1.dirname(file_system_1.resolve(from)), file_system_1.resolve(to)));
        return relativePath !== '' ? file_system_1.toRelativeImport(relativePath) : null;
    }
    exports.relativePathBetween = relativePathBetween;
    function normalizeSeparators(path) {
        // TODO: normalize path only for OS that need it.
        return path.replace(/\\/g, '/');
    }
    exports.normalizeSeparators = normalizeSeparators;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicGF0aC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvdXRpbC9zcmMvcGF0aC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7SUFBQTs7Ozs7O09BTUc7SUFDSCwyRUFBK0U7SUFDL0UsNkVBQTBEO0lBRTFELFNBQWdCLG1CQUFtQixDQUFDLElBQVksRUFBRSxFQUFVO1FBQzFELElBQU0sWUFBWSxHQUFHLHFCQUFjLENBQUMsc0JBQVEsQ0FBQyxxQkFBTyxDQUFDLHFCQUFPLENBQUMsSUFBSSxDQUFDLENBQUMsRUFBRSxxQkFBTyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNuRixPQUFPLFlBQVksS0FBSyxFQUFFLENBQUMsQ0FBQyxDQUFDLDhCQUFnQixDQUFDLFlBQVksQ0FBQyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUM7SUFDckUsQ0FBQztJQUhELGtEQUdDO0lBRUQsU0FBZ0IsbUJBQW1CLENBQUMsSUFBWTtRQUM5QyxpREFBaUQ7UUFDakQsT0FBTyxJQUFJLENBQUMsT0FBTyxDQUFDLEtBQUssRUFBRSxHQUFHLENBQUMsQ0FBQztJQUNsQyxDQUFDO0lBSEQsa0RBR0MiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCB7ZGlybmFtZSwgcmVsYXRpdmUsIHJlc29sdmUsIHRvUmVsYXRpdmVJbXBvcnR9IGZyb20gJy4uLy4uL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7c3RyaXBFeHRlbnNpb259IGZyb20gJy4uLy4uL2ZpbGVfc3lzdGVtL3NyYy91dGlsJztcblxuZXhwb3J0IGZ1bmN0aW9uIHJlbGF0aXZlUGF0aEJldHdlZW4oZnJvbTogc3RyaW5nLCB0bzogc3RyaW5nKTogc3RyaW5nfG51bGwge1xuICBjb25zdCByZWxhdGl2ZVBhdGggPSBzdHJpcEV4dGVuc2lvbihyZWxhdGl2ZShkaXJuYW1lKHJlc29sdmUoZnJvbSkpLCByZXNvbHZlKHRvKSkpO1xuICByZXR1cm4gcmVsYXRpdmVQYXRoICE9PSAnJyA/IHRvUmVsYXRpdmVJbXBvcnQocmVsYXRpdmVQYXRoKSA6IG51bGw7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBub3JtYWxpemVTZXBhcmF0b3JzKHBhdGg6IHN0cmluZyk6IHN0cmluZyB7XG4gIC8vIFRPRE86IG5vcm1hbGl6ZSBwYXRoIG9ubHkgZm9yIE9TIHRoYXQgbmVlZCBpdC5cbiAgcmV0dXJuIHBhdGgucmVwbGFjZSgvXFxcXC9nLCAnLycpO1xufVxuIl19