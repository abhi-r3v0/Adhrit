(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/entry_point_finder/program_based_entry_point_finder", ["require", "exports", "tslib", "@angular/compiler-cli/ngcc/src/dependencies/dependency_host", "@angular/compiler-cli/ngcc/src/dependencies/esm_dependency_host", "@angular/compiler-cli/ngcc/src/dependencies/module_resolver", "@angular/compiler-cli/ngcc/src/path_mappings", "@angular/compiler-cli/ngcc/src/entry_point_finder/tracing_entry_point_finder"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.ProgramBasedEntryPointFinder = void 0;
    var tslib_1 = require("tslib");
    var dependency_host_1 = require("@angular/compiler-cli/ngcc/src/dependencies/dependency_host");
    var esm_dependency_host_1 = require("@angular/compiler-cli/ngcc/src/dependencies/esm_dependency_host");
    var module_resolver_1 = require("@angular/compiler-cli/ngcc/src/dependencies/module_resolver");
    var path_mappings_1 = require("@angular/compiler-cli/ngcc/src/path_mappings");
    var tracing_entry_point_finder_1 = require("@angular/compiler-cli/ngcc/src/entry_point_finder/tracing_entry_point_finder");
    /**
     * An EntryPointFinder that starts from the files in the program defined by the given tsconfig.json
     * and only returns entry-points that are dependencies of these files.
     *
     * This is faster than searching the entire file-system for all the entry-points,
     * and is used primarily by the CLI integration.
     */
    var ProgramBasedEntryPointFinder = /** @class */ (function (_super) {
        tslib_1.__extends(ProgramBasedEntryPointFinder, _super);
        function ProgramBasedEntryPointFinder(fs, config, logger, resolver, basePath, tsConfig, projectPath) {
            var _this = _super.call(this, fs, config, logger, resolver, basePath, path_mappings_1.getPathMappingsFromTsConfig(tsConfig, projectPath)) || this;
            _this.tsConfig = tsConfig;
            return _this;
        }
        ProgramBasedEntryPointFinder.prototype.getInitialEntryPointPaths = function () {
            var _this = this;
            var moduleResolver = new module_resolver_1.ModuleResolver(this.fs, this.pathMappings, ['', '.ts', '/index.ts']);
            var host = new esm_dependency_host_1.EsmDependencyHost(this.fs, moduleResolver);
            var dependencies = dependency_host_1.createDependencyInfo();
            this.logger.debug("Using the program from " + this.tsConfig.project + " to seed the entry-point finding.");
            this.logger.debug("Collecting dependencies from the following files:" +
                this.tsConfig.rootNames.map(function (file) { return "\n- " + file; }));
            this.tsConfig.rootNames.forEach(function (rootName) {
                host.collectDependencies(_this.fs.resolve(rootName), dependencies);
            });
            return Array.from(dependencies.dependencies);
        };
        return ProgramBasedEntryPointFinder;
    }(tracing_entry_point_finder_1.TracingEntryPointFinder));
    exports.ProgramBasedEntryPointFinder = ProgramBasedEntryPointFinder;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicHJvZ3JhbV9iYXNlZF9lbnRyeV9wb2ludF9maW5kZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvZW50cnlfcG9pbnRfZmluZGVyL3Byb2dyYW1fYmFzZWRfZW50cnlfcG9pbnRfZmluZGVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7SUFVQSwrRkFBcUU7SUFFckUsdUdBQXNFO0lBQ3RFLCtGQUErRDtJQUcvRCw4RUFBNkQ7SUFFN0QsMkhBQXFFO0lBRXJFOzs7Ozs7T0FNRztJQUNIO1FBQWtELHdEQUF1QjtRQUN2RSxzQ0FDSSxFQUFjLEVBQUUsTUFBeUIsRUFBRSxNQUFjLEVBQUUsUUFBNEIsRUFDdkYsUUFBd0IsRUFBVSxRQUE2QixFQUMvRCxXQUEyQjtZQUgvQixZQUlFLGtCQUNJLEVBQUUsRUFBRSxNQUFNLEVBQUUsTUFBTSxFQUFFLFFBQVEsRUFBRSxRQUFRLEVBQUUsMkNBQTJCLENBQUMsUUFBUSxFQUFFLFdBQVcsQ0FBQyxDQUFDLFNBQ2hHO1lBSnFDLGNBQVEsR0FBUixRQUFRLENBQXFCOztRQUluRSxDQUFDO1FBRVMsZ0VBQXlCLEdBQW5DO1lBQUEsaUJBYUM7WUFaQyxJQUFNLGNBQWMsR0FBRyxJQUFJLGdDQUFjLENBQUMsSUFBSSxDQUFDLEVBQUUsRUFBRSxJQUFJLENBQUMsWUFBWSxFQUFFLENBQUMsRUFBRSxFQUFFLEtBQUssRUFBRSxXQUFXLENBQUMsQ0FBQyxDQUFDO1lBQ2hHLElBQU0sSUFBSSxHQUFHLElBQUksdUNBQWlCLENBQUMsSUFBSSxDQUFDLEVBQUUsRUFBRSxjQUFjLENBQUMsQ0FBQztZQUM1RCxJQUFNLFlBQVksR0FBRyxzQ0FBb0IsRUFBRSxDQUFDO1lBQzVDLElBQUksQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUNiLDRCQUEwQixJQUFJLENBQUMsUUFBUSxDQUFDLE9BQU8sc0NBQW1DLENBQUMsQ0FBQztZQUN4RixJQUFJLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FDYixtREFBbUQ7Z0JBQ25ELElBQUksQ0FBQyxRQUFRLENBQUMsU0FBUyxDQUFDLEdBQUcsQ0FBQyxVQUFBLElBQUksSUFBSSxPQUFBLFNBQU8sSUFBTSxFQUFiLENBQWEsQ0FBQyxDQUFDLENBQUM7WUFDeEQsSUFBSSxDQUFDLFFBQVEsQ0FBQyxTQUFTLENBQUMsT0FBTyxDQUFDLFVBQUEsUUFBUTtnQkFDdEMsSUFBSSxDQUFDLG1CQUFtQixDQUFDLEtBQUksQ0FBQyxFQUFFLENBQUMsT0FBTyxDQUFDLFFBQVEsQ0FBQyxFQUFFLFlBQVksQ0FBQyxDQUFDO1lBQ3BFLENBQUMsQ0FBQyxDQUFDO1lBQ0gsT0FBTyxLQUFLLENBQUMsSUFBSSxDQUFDLFlBQVksQ0FBQyxZQUFZLENBQUMsQ0FBQztRQUMvQyxDQUFDO1FBQ0gsbUNBQUM7SUFBRCxDQUFDLEFBdkJELENBQWtELG9EQUF1QixHQXVCeEU7SUF2Qlksb0VBQTRCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQge0Fic29sdXRlRnNQYXRoLCBGaWxlU3lzdGVtfSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvZmlsZV9zeXN0ZW0nO1xuaW1wb3J0IHtQYXJzZWRDb25maWd1cmF0aW9ufSBmcm9tICcuLi8uLi8uLi9zcmMvcGVyZm9ybV9jb21waWxlJztcblxuaW1wb3J0IHtjcmVhdGVEZXBlbmRlbmN5SW5mb30gZnJvbSAnLi4vZGVwZW5kZW5jaWVzL2RlcGVuZGVuY3lfaG9zdCc7XG5pbXBvcnQge0RlcGVuZGVuY3lSZXNvbHZlcn0gZnJvbSAnLi4vZGVwZW5kZW5jaWVzL2RlcGVuZGVuY3lfcmVzb2x2ZXInO1xuaW1wb3J0IHtFc21EZXBlbmRlbmN5SG9zdH0gZnJvbSAnLi4vZGVwZW5kZW5jaWVzL2VzbV9kZXBlbmRlbmN5X2hvc3QnO1xuaW1wb3J0IHtNb2R1bGVSZXNvbHZlcn0gZnJvbSAnLi4vZGVwZW5kZW5jaWVzL21vZHVsZV9yZXNvbHZlcic7XG5pbXBvcnQge0xvZ2dlcn0gZnJvbSAnLi4vbG9nZ2luZy9sb2dnZXInO1xuaW1wb3J0IHtOZ2NjQ29uZmlndXJhdGlvbn0gZnJvbSAnLi4vcGFja2FnZXMvY29uZmlndXJhdGlvbic7XG5pbXBvcnQge2dldFBhdGhNYXBwaW5nc0Zyb21Uc0NvbmZpZ30gZnJvbSAnLi4vcGF0aF9tYXBwaW5ncyc7XG5cbmltcG9ydCB7VHJhY2luZ0VudHJ5UG9pbnRGaW5kZXJ9IGZyb20gJy4vdHJhY2luZ19lbnRyeV9wb2ludF9maW5kZXInO1xuXG4vKipcbiAqIEFuIEVudHJ5UG9pbnRGaW5kZXIgdGhhdCBzdGFydHMgZnJvbSB0aGUgZmlsZXMgaW4gdGhlIHByb2dyYW0gZGVmaW5lZCBieSB0aGUgZ2l2ZW4gdHNjb25maWcuanNvblxuICogYW5kIG9ubHkgcmV0dXJucyBlbnRyeS1wb2ludHMgdGhhdCBhcmUgZGVwZW5kZW5jaWVzIG9mIHRoZXNlIGZpbGVzLlxuICpcbiAqIFRoaXMgaXMgZmFzdGVyIHRoYW4gc2VhcmNoaW5nIHRoZSBlbnRpcmUgZmlsZS1zeXN0ZW0gZm9yIGFsbCB0aGUgZW50cnktcG9pbnRzLFxuICogYW5kIGlzIHVzZWQgcHJpbWFyaWx5IGJ5IHRoZSBDTEkgaW50ZWdyYXRpb24uXG4gKi9cbmV4cG9ydCBjbGFzcyBQcm9ncmFtQmFzZWRFbnRyeVBvaW50RmluZGVyIGV4dGVuZHMgVHJhY2luZ0VudHJ5UG9pbnRGaW5kZXIge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIGZzOiBGaWxlU3lzdGVtLCBjb25maWc6IE5nY2NDb25maWd1cmF0aW9uLCBsb2dnZXI6IExvZ2dlciwgcmVzb2x2ZXI6IERlcGVuZGVuY3lSZXNvbHZlcixcbiAgICAgIGJhc2VQYXRoOiBBYnNvbHV0ZUZzUGF0aCwgcHJpdmF0ZSB0c0NvbmZpZzogUGFyc2VkQ29uZmlndXJhdGlvbixcbiAgICAgIHByb2plY3RQYXRoOiBBYnNvbHV0ZUZzUGF0aCkge1xuICAgIHN1cGVyKFxuICAgICAgICBmcywgY29uZmlnLCBsb2dnZXIsIHJlc29sdmVyLCBiYXNlUGF0aCwgZ2V0UGF0aE1hcHBpbmdzRnJvbVRzQ29uZmlnKHRzQ29uZmlnLCBwcm9qZWN0UGF0aCkpO1xuICB9XG5cbiAgcHJvdGVjdGVkIGdldEluaXRpYWxFbnRyeVBvaW50UGF0aHMoKTogQWJzb2x1dGVGc1BhdGhbXSB7XG4gICAgY29uc3QgbW9kdWxlUmVzb2x2ZXIgPSBuZXcgTW9kdWxlUmVzb2x2ZXIodGhpcy5mcywgdGhpcy5wYXRoTWFwcGluZ3MsIFsnJywgJy50cycsICcvaW5kZXgudHMnXSk7XG4gICAgY29uc3QgaG9zdCA9IG5ldyBFc21EZXBlbmRlbmN5SG9zdCh0aGlzLmZzLCBtb2R1bGVSZXNvbHZlcik7XG4gICAgY29uc3QgZGVwZW5kZW5jaWVzID0gY3JlYXRlRGVwZW5kZW5jeUluZm8oKTtcbiAgICB0aGlzLmxvZ2dlci5kZWJ1ZyhcbiAgICAgICAgYFVzaW5nIHRoZSBwcm9ncmFtIGZyb20gJHt0aGlzLnRzQ29uZmlnLnByb2plY3R9IHRvIHNlZWQgdGhlIGVudHJ5LXBvaW50IGZpbmRpbmcuYCk7XG4gICAgdGhpcy5sb2dnZXIuZGVidWcoXG4gICAgICAgIGBDb2xsZWN0aW5nIGRlcGVuZGVuY2llcyBmcm9tIHRoZSBmb2xsb3dpbmcgZmlsZXM6YCArXG4gICAgICAgIHRoaXMudHNDb25maWcucm9vdE5hbWVzLm1hcChmaWxlID0+IGBcXG4tICR7ZmlsZX1gKSk7XG4gICAgdGhpcy50c0NvbmZpZy5yb290TmFtZXMuZm9yRWFjaChyb290TmFtZSA9PiB7XG4gICAgICBob3N0LmNvbGxlY3REZXBlbmRlbmNpZXModGhpcy5mcy5yZXNvbHZlKHJvb3ROYW1lKSwgZGVwZW5kZW5jaWVzKTtcbiAgICB9KTtcbiAgICByZXR1cm4gQXJyYXkuZnJvbShkZXBlbmRlbmNpZXMuZGVwZW5kZW5jaWVzKTtcbiAgfVxufSJdfQ==