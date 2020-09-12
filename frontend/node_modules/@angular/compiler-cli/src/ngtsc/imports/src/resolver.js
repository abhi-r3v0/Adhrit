(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/src/ngtsc/imports/src/resolver", ["require", "exports", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/src/ngtsc/util/src/typescript"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.ModuleResolver = void 0;
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var typescript_1 = require("@angular/compiler-cli/src/ngtsc/util/src/typescript");
    /**
     * Used by `RouterEntryPointManager` and `NgModuleRouteAnalyzer` (which is in turn is used by
     * `NgModuleDecoratorHandler`) for resolving the module source-files references in lazy-loaded
     * routes (relative to the source-file containing the `NgModule` that provides the route
     * definitions).
     */
    var ModuleResolver = /** @class */ (function () {
        function ModuleResolver(program, compilerOptions, host, moduleResolutionCache) {
            this.program = program;
            this.compilerOptions = compilerOptions;
            this.host = host;
            this.moduleResolutionCache = moduleResolutionCache;
        }
        ModuleResolver.prototype.resolveModule = function (moduleName, containingFile) {
            var resolved = typescript_1.resolveModuleName(moduleName, containingFile, this.compilerOptions, this.host, this.moduleResolutionCache);
            if (resolved === undefined) {
                return null;
            }
            return typescript_1.getSourceFileOrNull(this.program, file_system_1.absoluteFrom(resolved.resolvedFileName));
        };
        return ModuleResolver;
    }());
    exports.ModuleResolver = ModuleResolver;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicmVzb2x2ZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL2ltcG9ydHMvc3JjL3Jlc29sdmVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztJQVNBLDJFQUErQztJQUMvQyxrRkFBaUY7SUFFakY7Ozs7O09BS0c7SUFDSDtRQUNFLHdCQUNZLE9BQW1CLEVBQVUsZUFBbUMsRUFDaEUsSUFBeUUsRUFDekUscUJBQW9EO1lBRnBELFlBQU8sR0FBUCxPQUFPLENBQVk7WUFBVSxvQkFBZSxHQUFmLGVBQWUsQ0FBb0I7WUFDaEUsU0FBSSxHQUFKLElBQUksQ0FBcUU7WUFDekUsMEJBQXFCLEdBQXJCLHFCQUFxQixDQUErQjtRQUFHLENBQUM7UUFFcEUsc0NBQWEsR0FBYixVQUFjLFVBQWtCLEVBQUUsY0FBc0I7WUFDdEQsSUFBTSxRQUFRLEdBQUcsOEJBQWlCLENBQzlCLFVBQVUsRUFBRSxjQUFjLEVBQUUsSUFBSSxDQUFDLGVBQWUsRUFBRSxJQUFJLENBQUMsSUFBSSxFQUFFLElBQUksQ0FBQyxxQkFBcUIsQ0FBQyxDQUFDO1lBQzdGLElBQUksUUFBUSxLQUFLLFNBQVMsRUFBRTtnQkFDMUIsT0FBTyxJQUFJLENBQUM7YUFDYjtZQUNELE9BQU8sZ0NBQW1CLENBQUMsSUFBSSxDQUFDLE9BQU8sRUFBRSwwQkFBWSxDQUFDLFFBQVEsQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDLENBQUM7UUFDcEYsQ0FBQztRQUNILHFCQUFDO0lBQUQsQ0FBQyxBQWRELElBY0M7SUFkWSx3Q0FBYyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7YWJzb2x1dGVGcm9tfSBmcm9tICcuLi8uLi9maWxlX3N5c3RlbSc7XG5pbXBvcnQge2dldFNvdXJjZUZpbGVPck51bGwsIHJlc29sdmVNb2R1bGVOYW1lfSBmcm9tICcuLi8uLi91dGlsL3NyYy90eXBlc2NyaXB0JztcblxuLyoqXG4gKiBVc2VkIGJ5IGBSb3V0ZXJFbnRyeVBvaW50TWFuYWdlcmAgYW5kIGBOZ01vZHVsZVJvdXRlQW5hbHl6ZXJgICh3aGljaCBpcyBpbiB0dXJuIGlzIHVzZWQgYnlcbiAqIGBOZ01vZHVsZURlY29yYXRvckhhbmRsZXJgKSBmb3IgcmVzb2x2aW5nIHRoZSBtb2R1bGUgc291cmNlLWZpbGVzIHJlZmVyZW5jZXMgaW4gbGF6eS1sb2FkZWRcbiAqIHJvdXRlcyAocmVsYXRpdmUgdG8gdGhlIHNvdXJjZS1maWxlIGNvbnRhaW5pbmcgdGhlIGBOZ01vZHVsZWAgdGhhdCBwcm92aWRlcyB0aGUgcm91dGVcbiAqIGRlZmluaXRpb25zKS5cbiAqL1xuZXhwb3J0IGNsYXNzIE1vZHVsZVJlc29sdmVyIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIHByb2dyYW06IHRzLlByb2dyYW0sIHByaXZhdGUgY29tcGlsZXJPcHRpb25zOiB0cy5Db21waWxlck9wdGlvbnMsXG4gICAgICBwcml2YXRlIGhvc3Q6IHRzLk1vZHVsZVJlc29sdXRpb25Ib3N0JlBpY2s8dHMuQ29tcGlsZXJIb3N0LCAncmVzb2x2ZU1vZHVsZU5hbWVzJz4sXG4gICAgICBwcml2YXRlIG1vZHVsZVJlc29sdXRpb25DYWNoZTogdHMuTW9kdWxlUmVzb2x1dGlvbkNhY2hlfG51bGwpIHt9XG5cbiAgcmVzb2x2ZU1vZHVsZShtb2R1bGVOYW1lOiBzdHJpbmcsIGNvbnRhaW5pbmdGaWxlOiBzdHJpbmcpOiB0cy5Tb3VyY2VGaWxlfG51bGwge1xuICAgIGNvbnN0IHJlc29sdmVkID0gcmVzb2x2ZU1vZHVsZU5hbWUoXG4gICAgICAgIG1vZHVsZU5hbWUsIGNvbnRhaW5pbmdGaWxlLCB0aGlzLmNvbXBpbGVyT3B0aW9ucywgdGhpcy5ob3N0LCB0aGlzLm1vZHVsZVJlc29sdXRpb25DYWNoZSk7XG4gICAgaWYgKHJlc29sdmVkID09PSB1bmRlZmluZWQpIHtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cbiAgICByZXR1cm4gZ2V0U291cmNlRmlsZU9yTnVsbCh0aGlzLnByb2dyYW0sIGFic29sdXRlRnJvbShyZXNvbHZlZC5yZXNvbHZlZEZpbGVOYW1lKSk7XG4gIH1cbn1cbiJdfQ==