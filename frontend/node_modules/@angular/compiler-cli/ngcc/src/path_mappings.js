(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/path_mappings", ["require", "exports", "@angular/compiler-cli/src/ngtsc/file_system"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.getPathMappingsFromTsConfig = void 0;
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    /**
     * If `pathMappings` is not provided directly, then try getting it from `tsConfig`, if available.
     */
    function getPathMappingsFromTsConfig(tsConfig, projectPath) {
        if (tsConfig !== null && tsConfig.options.baseUrl !== undefined &&
            tsConfig.options.paths !== undefined) {
            return {
                baseUrl: file_system_1.resolve(projectPath, tsConfig.options.baseUrl),
                paths: tsConfig.options.paths,
            };
        }
    }
    exports.getPathMappingsFromTsConfig = getPathMappingsFromTsConfig;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicGF0aF9tYXBwaW5ncy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9uZ2NjL3NyYy9wYXRoX21hcHBpbmdzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztJQUFBOzs7Ozs7T0FNRztJQUNILDJFQUFvRTtJQVNwRTs7T0FFRztJQUNILFNBQWdCLDJCQUEyQixDQUN2QyxRQUFrQyxFQUFFLFdBQTJCO1FBQ2pFLElBQUksUUFBUSxLQUFLLElBQUksSUFBSSxRQUFRLENBQUMsT0FBTyxDQUFDLE9BQU8sS0FBSyxTQUFTO1lBQzNELFFBQVEsQ0FBQyxPQUFPLENBQUMsS0FBSyxLQUFLLFNBQVMsRUFBRTtZQUN4QyxPQUFPO2dCQUNMLE9BQU8sRUFBRSxxQkFBTyxDQUFDLFdBQVcsRUFBRSxRQUFRLENBQUMsT0FBTyxDQUFDLE9BQU8sQ0FBQztnQkFDdkQsS0FBSyxFQUFFLFFBQVEsQ0FBQyxPQUFPLENBQUMsS0FBSzthQUM5QixDQUFDO1NBQ0g7SUFDSCxDQUFDO0lBVEQsa0VBU0MiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCB7QWJzb2x1dGVGc1BhdGgsIHJlc29sdmV9IGZyb20gJy4uLy4uL3NyYy9uZ3RzYy9maWxlX3N5c3RlbSc7XG5pbXBvcnQge1BhcnNlZENvbmZpZ3VyYXRpb259IGZyb20gJy4uLy4uL3NyYy9wZXJmb3JtX2NvbXBpbGUnO1xuXG5cbmV4cG9ydCB0eXBlIFBhdGhNYXBwaW5ncyA9IHtcbiAgYmFzZVVybDogc3RyaW5nLFxuICBwYXRoczoge1trZXk6IHN0cmluZ106IHN0cmluZ1tdfVxufTtcblxuLyoqXG4gKiBJZiBgcGF0aE1hcHBpbmdzYCBpcyBub3QgcHJvdmlkZWQgZGlyZWN0bHksIHRoZW4gdHJ5IGdldHRpbmcgaXQgZnJvbSBgdHNDb25maWdgLCBpZiBhdmFpbGFibGUuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRQYXRoTWFwcGluZ3NGcm9tVHNDb25maWcoXG4gICAgdHNDb25maWc6IFBhcnNlZENvbmZpZ3VyYXRpb258bnVsbCwgcHJvamVjdFBhdGg6IEFic29sdXRlRnNQYXRoKTogUGF0aE1hcHBpbmdzfHVuZGVmaW5lZCB7XG4gIGlmICh0c0NvbmZpZyAhPT0gbnVsbCAmJiB0c0NvbmZpZy5vcHRpb25zLmJhc2VVcmwgIT09IHVuZGVmaW5lZCAmJlxuICAgICAgdHNDb25maWcub3B0aW9ucy5wYXRocyAhPT0gdW5kZWZpbmVkKSB7XG4gICAgcmV0dXJuIHtcbiAgICAgIGJhc2VVcmw6IHJlc29sdmUocHJvamVjdFBhdGgsIHRzQ29uZmlnLm9wdGlvbnMuYmFzZVVybCksXG4gICAgICBwYXRoczogdHNDb25maWcub3B0aW9ucy5wYXRocyxcbiAgICB9O1xuICB9XG59XG4iXX0=