(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/dependencies/dependency_host", ["require", "exports", "tslib", "@angular/compiler-cli/ngcc/src/utils", "@angular/compiler-cli/ngcc/src/dependencies/module_resolver"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.DependencyHostBase = exports.createDependencyInfo = void 0;
    var tslib_1 = require("tslib");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/utils");
    var module_resolver_1 = require("@angular/compiler-cli/ngcc/src/dependencies/module_resolver");
    function createDependencyInfo() {
        return { dependencies: new Set(), missing: new Set(), deepImports: new Set() };
    }
    exports.createDependencyInfo = createDependencyInfo;
    var DependencyHostBase = /** @class */ (function () {
        function DependencyHostBase(fs, moduleResolver) {
            this.fs = fs;
            this.moduleResolver = moduleResolver;
        }
        /**
         * Find all the dependencies for the entry-point at the given path.
         *
         * @param entryPointPath The absolute path to the JavaScript file that represents an entry-point.
         * @param dependencyInfo An object containing information about the dependencies of the
         * entry-point, including those that were missing or deep imports into other entry-points. The
         * sets in this object will be updated with new information about the entry-point's dependencies.
         */
        DependencyHostBase.prototype.collectDependencies = function (entryPointPath, _a) {
            var dependencies = _a.dependencies, missing = _a.missing, deepImports = _a.deepImports;
            var resolvedFile = utils_1.resolveFileWithPostfixes(this.fs, entryPointPath, this.moduleResolver.relativeExtensions);
            if (resolvedFile !== null) {
                var alreadySeen = new Set();
                this.recursivelyCollectDependencies(resolvedFile, dependencies, missing, deepImports, alreadySeen);
            }
        };
        /**
         * Compute the dependencies of the given file.
         *
         * @param file An absolute path to the file whose dependencies we want to get.
         * @param dependencies A set that will have the absolute paths of resolved entry points added to
         * it.
         * @param missing A set that will have the dependencies that could not be found added to it.
         * @param deepImports A set that will have the import paths that exist but cannot be mapped to
         * entry-points, i.e. deep-imports.
         * @param alreadySeen A set that is used to track internal dependencies to prevent getting stuck
         * in a circular dependency loop.
         */
        DependencyHostBase.prototype.recursivelyCollectDependencies = function (file, dependencies, missing, deepImports, alreadySeen) {
            var e_1, _a;
            var fromContents = this.fs.readFile(file);
            if (this.canSkipFile(fromContents)) {
                return;
            }
            var imports = this.extractImports(file, fromContents);
            try {
                for (var imports_1 = tslib_1.__values(imports), imports_1_1 = imports_1.next(); !imports_1_1.done; imports_1_1 = imports_1.next()) {
                    var importPath = imports_1_1.value;
                    var resolved = this.processImport(importPath, file, dependencies, missing, deepImports, alreadySeen);
                    if (!resolved) {
                        missing.add(importPath);
                    }
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (imports_1_1 && !imports_1_1.done && (_a = imports_1.return)) _a.call(imports_1);
                }
                finally { if (e_1) throw e_1.error; }
            }
        };
        /**
         * Resolve the given `importPath` from `file` and add it to the appropriate set.
         *
         * If the import is local to this package then follow it by calling
         * `recursivelyCollectDependencies()`.
         *
         * @returns `true` if the import was resolved (to an entry-point, a local import, or a
         * deep-import), `false` otherwise.
         */
        DependencyHostBase.prototype.processImport = function (importPath, file, dependencies, missing, deepImports, alreadySeen) {
            var resolvedModule = this.moduleResolver.resolveModuleImport(importPath, file);
            if (resolvedModule === null) {
                return false;
            }
            if (resolvedModule instanceof module_resolver_1.ResolvedRelativeModule) {
                var internalDependency = resolvedModule.modulePath;
                if (!alreadySeen.has(internalDependency)) {
                    alreadySeen.add(internalDependency);
                    this.recursivelyCollectDependencies(internalDependency, dependencies, missing, deepImports, alreadySeen);
                }
            }
            else if (resolvedModule instanceof module_resolver_1.ResolvedDeepImport) {
                deepImports.add(resolvedModule.importPath);
            }
            else {
                dependencies.add(resolvedModule.entryPointPath);
            }
            return true;
        };
        return DependencyHostBase;
    }());
    exports.DependencyHostBase = DependencyHostBase;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGVwZW5kZW5jeV9ob3N0LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL25nY2Mvc3JjL2RlcGVuZGVuY2llcy9kZXBlbmRlbmN5X2hvc3QudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztJQVNBLDhEQUFrRDtJQUVsRCwrRkFBNkY7SUFrQjdGLFNBQWdCLG9CQUFvQjtRQUNsQyxPQUFPLEVBQUMsWUFBWSxFQUFFLElBQUksR0FBRyxFQUFFLEVBQUUsT0FBTyxFQUFFLElBQUksR0FBRyxFQUFFLEVBQUUsV0FBVyxFQUFFLElBQUksR0FBRyxFQUFFLEVBQUMsQ0FBQztJQUMvRSxDQUFDO0lBRkQsb0RBRUM7SUFFRDtRQUNFLDRCQUFzQixFQUFjLEVBQVksY0FBOEI7WUFBeEQsT0FBRSxHQUFGLEVBQUUsQ0FBWTtZQUFZLG1CQUFjLEdBQWQsY0FBYyxDQUFnQjtRQUFHLENBQUM7UUFFbEY7Ozs7Ozs7V0FPRztRQUNILGdEQUFtQixHQUFuQixVQUNJLGNBQThCLEVBQUUsRUFBb0Q7Z0JBQW5ELFlBQVksa0JBQUEsRUFBRSxPQUFPLGFBQUEsRUFBRSxXQUFXLGlCQUFBO1lBQ3JFLElBQU0sWUFBWSxHQUNkLGdDQUF3QixDQUFDLElBQUksQ0FBQyxFQUFFLEVBQUUsY0FBYyxFQUFFLElBQUksQ0FBQyxjQUFjLENBQUMsa0JBQWtCLENBQUMsQ0FBQztZQUM5RixJQUFJLFlBQVksS0FBSyxJQUFJLEVBQUU7Z0JBQ3pCLElBQU0sV0FBVyxHQUFHLElBQUksR0FBRyxFQUFrQixDQUFDO2dCQUM5QyxJQUFJLENBQUMsOEJBQThCLENBQy9CLFlBQVksRUFBRSxZQUFZLEVBQUUsT0FBTyxFQUFFLFdBQVcsRUFBRSxXQUFXLENBQUMsQ0FBQzthQUNwRTtRQUNILENBQUM7UUFFRDs7Ozs7Ozs7Ozs7V0FXRztRQUNPLDJEQUE4QixHQUF4QyxVQUNJLElBQW9CLEVBQUUsWUFBaUMsRUFBRSxPQUFvQixFQUM3RSxXQUF3QixFQUFFLFdBQWdDOztZQUM1RCxJQUFNLFlBQVksR0FBRyxJQUFJLENBQUMsRUFBRSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUM1QyxJQUFJLElBQUksQ0FBQyxXQUFXLENBQUMsWUFBWSxDQUFDLEVBQUU7Z0JBQ2xDLE9BQU87YUFDUjtZQUNELElBQU0sT0FBTyxHQUFHLElBQUksQ0FBQyxjQUFjLENBQUMsSUFBSSxFQUFFLFlBQVksQ0FBQyxDQUFDOztnQkFDeEQsS0FBeUIsSUFBQSxZQUFBLGlCQUFBLE9BQU8sQ0FBQSxnQ0FBQSxxREFBRTtvQkFBN0IsSUFBTSxVQUFVLG9CQUFBO29CQUNuQixJQUFNLFFBQVEsR0FDVixJQUFJLENBQUMsYUFBYSxDQUFDLFVBQVUsRUFBRSxJQUFJLEVBQUUsWUFBWSxFQUFFLE9BQU8sRUFBRSxXQUFXLEVBQUUsV0FBVyxDQUFDLENBQUM7b0JBQzFGLElBQUksQ0FBQyxRQUFRLEVBQUU7d0JBQ2IsT0FBTyxDQUFDLEdBQUcsQ0FBQyxVQUFVLENBQUMsQ0FBQztxQkFDekI7aUJBQ0Y7Ozs7Ozs7OztRQUNILENBQUM7UUFLRDs7Ozs7Ozs7V0FRRztRQUNPLDBDQUFhLEdBQXZCLFVBQ0ksVUFBa0IsRUFBRSxJQUFvQixFQUFFLFlBQWlDLEVBQzNFLE9BQW9CLEVBQUUsV0FBd0IsRUFBRSxXQUFnQztZQUNsRixJQUFNLGNBQWMsR0FBRyxJQUFJLENBQUMsY0FBYyxDQUFDLG1CQUFtQixDQUFDLFVBQVUsRUFBRSxJQUFJLENBQUMsQ0FBQztZQUNqRixJQUFJLGNBQWMsS0FBSyxJQUFJLEVBQUU7Z0JBQzNCLE9BQU8sS0FBSyxDQUFDO2FBQ2Q7WUFDRCxJQUFJLGNBQWMsWUFBWSx3Q0FBc0IsRUFBRTtnQkFDcEQsSUFBTSxrQkFBa0IsR0FBRyxjQUFjLENBQUMsVUFBVSxDQUFDO2dCQUNyRCxJQUFJLENBQUMsV0FBVyxDQUFDLEdBQUcsQ0FBQyxrQkFBa0IsQ0FBQyxFQUFFO29CQUN4QyxXQUFXLENBQUMsR0FBRyxDQUFDLGtCQUFrQixDQUFDLENBQUM7b0JBQ3BDLElBQUksQ0FBQyw4QkFBOEIsQ0FDL0Isa0JBQWtCLEVBQUUsWUFBWSxFQUFFLE9BQU8sRUFBRSxXQUFXLEVBQUUsV0FBVyxDQUFDLENBQUM7aUJBQzFFO2FBQ0Y7aUJBQU0sSUFBSSxjQUFjLFlBQVksb0NBQWtCLEVBQUU7Z0JBQ3ZELFdBQVcsQ0FBQyxHQUFHLENBQUMsY0FBYyxDQUFDLFVBQVUsQ0FBQyxDQUFDO2FBQzVDO2lCQUFNO2dCQUNMLFlBQVksQ0FBQyxHQUFHLENBQUMsY0FBYyxDQUFDLGNBQWMsQ0FBQyxDQUFDO2FBQ2pEO1lBQ0QsT0FBTyxJQUFJLENBQUM7UUFDZCxDQUFDO1FBQ0gseUJBQUM7SUFBRCxDQUFDLEFBcEZELElBb0ZDO0lBcEZxQixnREFBa0IiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCB7QWJzb2x1dGVGc1BhdGgsIEZpbGVTeXN0ZW0sIFBhdGhTZWdtZW50fSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvZmlsZV9zeXN0ZW0nO1xuaW1wb3J0IHtFbnRyeVBvaW50fSBmcm9tICcuLi9wYWNrYWdlcy9lbnRyeV9wb2ludCc7XG5pbXBvcnQge3Jlc29sdmVGaWxlV2l0aFBvc3RmaXhlc30gZnJvbSAnLi4vdXRpbHMnO1xuXG5pbXBvcnQge01vZHVsZVJlc29sdmVyLCBSZXNvbHZlZERlZXBJbXBvcnQsIFJlc29sdmVkUmVsYXRpdmVNb2R1bGV9IGZyb20gJy4vbW9kdWxlX3Jlc29sdmVyJztcblxuZXhwb3J0IGludGVyZmFjZSBEZXBlbmRlbmN5SG9zdCB7XG4gIGNvbGxlY3REZXBlbmRlbmNpZXMoXG4gICAgICBlbnRyeVBvaW50UGF0aDogQWJzb2x1dGVGc1BhdGgsIHtkZXBlbmRlbmNpZXMsIG1pc3NpbmcsIGRlZXBJbXBvcnRzfTogRGVwZW5kZW5jeUluZm8pOiB2b2lkO1xufVxuXG5leHBvcnQgaW50ZXJmYWNlIERlcGVuZGVuY3lJbmZvIHtcbiAgZGVwZW5kZW5jaWVzOiBTZXQ8QWJzb2x1dGVGc1BhdGg+O1xuICBtaXNzaW5nOiBTZXQ8QWJzb2x1dGVGc1BhdGh8UGF0aFNlZ21lbnQ+O1xuICBkZWVwSW1wb3J0czogU2V0PEFic29sdXRlRnNQYXRoPjtcbn1cblxuZXhwb3J0IGludGVyZmFjZSBFbnRyeVBvaW50V2l0aERlcGVuZGVuY2llcyB7XG4gIGVudHJ5UG9pbnQ6IEVudHJ5UG9pbnQ7XG4gIGRlcEluZm86IERlcGVuZGVuY3lJbmZvO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gY3JlYXRlRGVwZW5kZW5jeUluZm8oKTogRGVwZW5kZW5jeUluZm8ge1xuICByZXR1cm4ge2RlcGVuZGVuY2llczogbmV3IFNldCgpLCBtaXNzaW5nOiBuZXcgU2V0KCksIGRlZXBJbXBvcnRzOiBuZXcgU2V0KCl9O1xufVxuXG5leHBvcnQgYWJzdHJhY3QgY2xhc3MgRGVwZW5kZW5jeUhvc3RCYXNlIGltcGxlbWVudHMgRGVwZW5kZW5jeUhvc3Qge1xuICBjb25zdHJ1Y3Rvcihwcm90ZWN0ZWQgZnM6IEZpbGVTeXN0ZW0sIHByb3RlY3RlZCBtb2R1bGVSZXNvbHZlcjogTW9kdWxlUmVzb2x2ZXIpIHt9XG5cbiAgLyoqXG4gICAqIEZpbmQgYWxsIHRoZSBkZXBlbmRlbmNpZXMgZm9yIHRoZSBlbnRyeS1wb2ludCBhdCB0aGUgZ2l2ZW4gcGF0aC5cbiAgICpcbiAgICogQHBhcmFtIGVudHJ5UG9pbnRQYXRoIFRoZSBhYnNvbHV0ZSBwYXRoIHRvIHRoZSBKYXZhU2NyaXB0IGZpbGUgdGhhdCByZXByZXNlbnRzIGFuIGVudHJ5LXBvaW50LlxuICAgKiBAcGFyYW0gZGVwZW5kZW5jeUluZm8gQW4gb2JqZWN0IGNvbnRhaW5pbmcgaW5mb3JtYXRpb24gYWJvdXQgdGhlIGRlcGVuZGVuY2llcyBvZiB0aGVcbiAgICogZW50cnktcG9pbnQsIGluY2x1ZGluZyB0aG9zZSB0aGF0IHdlcmUgbWlzc2luZyBvciBkZWVwIGltcG9ydHMgaW50byBvdGhlciBlbnRyeS1wb2ludHMuIFRoZVxuICAgKiBzZXRzIGluIHRoaXMgb2JqZWN0IHdpbGwgYmUgdXBkYXRlZCB3aXRoIG5ldyBpbmZvcm1hdGlvbiBhYm91dCB0aGUgZW50cnktcG9pbnQncyBkZXBlbmRlbmNpZXMuXG4gICAqL1xuICBjb2xsZWN0RGVwZW5kZW5jaWVzKFxuICAgICAgZW50cnlQb2ludFBhdGg6IEFic29sdXRlRnNQYXRoLCB7ZGVwZW5kZW5jaWVzLCBtaXNzaW5nLCBkZWVwSW1wb3J0c306IERlcGVuZGVuY3lJbmZvKTogdm9pZCB7XG4gICAgY29uc3QgcmVzb2x2ZWRGaWxlID1cbiAgICAgICAgcmVzb2x2ZUZpbGVXaXRoUG9zdGZpeGVzKHRoaXMuZnMsIGVudHJ5UG9pbnRQYXRoLCB0aGlzLm1vZHVsZVJlc29sdmVyLnJlbGF0aXZlRXh0ZW5zaW9ucyk7XG4gICAgaWYgKHJlc29sdmVkRmlsZSAhPT0gbnVsbCkge1xuICAgICAgY29uc3QgYWxyZWFkeVNlZW4gPSBuZXcgU2V0PEFic29sdXRlRnNQYXRoPigpO1xuICAgICAgdGhpcy5yZWN1cnNpdmVseUNvbGxlY3REZXBlbmRlbmNpZXMoXG4gICAgICAgICAgcmVzb2x2ZWRGaWxlLCBkZXBlbmRlbmNpZXMsIG1pc3NpbmcsIGRlZXBJbXBvcnRzLCBhbHJlYWR5U2Vlbik7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIENvbXB1dGUgdGhlIGRlcGVuZGVuY2llcyBvZiB0aGUgZ2l2ZW4gZmlsZS5cbiAgICpcbiAgICogQHBhcmFtIGZpbGUgQW4gYWJzb2x1dGUgcGF0aCB0byB0aGUgZmlsZSB3aG9zZSBkZXBlbmRlbmNpZXMgd2Ugd2FudCB0byBnZXQuXG4gICAqIEBwYXJhbSBkZXBlbmRlbmNpZXMgQSBzZXQgdGhhdCB3aWxsIGhhdmUgdGhlIGFic29sdXRlIHBhdGhzIG9mIHJlc29sdmVkIGVudHJ5IHBvaW50cyBhZGRlZCB0b1xuICAgKiBpdC5cbiAgICogQHBhcmFtIG1pc3NpbmcgQSBzZXQgdGhhdCB3aWxsIGhhdmUgdGhlIGRlcGVuZGVuY2llcyB0aGF0IGNvdWxkIG5vdCBiZSBmb3VuZCBhZGRlZCB0byBpdC5cbiAgICogQHBhcmFtIGRlZXBJbXBvcnRzIEEgc2V0IHRoYXQgd2lsbCBoYXZlIHRoZSBpbXBvcnQgcGF0aHMgdGhhdCBleGlzdCBidXQgY2Fubm90IGJlIG1hcHBlZCB0b1xuICAgKiBlbnRyeS1wb2ludHMsIGkuZS4gZGVlcC1pbXBvcnRzLlxuICAgKiBAcGFyYW0gYWxyZWFkeVNlZW4gQSBzZXQgdGhhdCBpcyB1c2VkIHRvIHRyYWNrIGludGVybmFsIGRlcGVuZGVuY2llcyB0byBwcmV2ZW50IGdldHRpbmcgc3R1Y2tcbiAgICogaW4gYSBjaXJjdWxhciBkZXBlbmRlbmN5IGxvb3AuXG4gICAqL1xuICBwcm90ZWN0ZWQgcmVjdXJzaXZlbHlDb2xsZWN0RGVwZW5kZW5jaWVzKFxuICAgICAgZmlsZTogQWJzb2x1dGVGc1BhdGgsIGRlcGVuZGVuY2llczogU2V0PEFic29sdXRlRnNQYXRoPiwgbWlzc2luZzogU2V0PHN0cmluZz4sXG4gICAgICBkZWVwSW1wb3J0czogU2V0PHN0cmluZz4sIGFscmVhZHlTZWVuOiBTZXQ8QWJzb2x1dGVGc1BhdGg+KTogdm9pZCB7XG4gICAgY29uc3QgZnJvbUNvbnRlbnRzID0gdGhpcy5mcy5yZWFkRmlsZShmaWxlKTtcbiAgICBpZiAodGhpcy5jYW5Ta2lwRmlsZShmcm9tQ29udGVudHMpKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuICAgIGNvbnN0IGltcG9ydHMgPSB0aGlzLmV4dHJhY3RJbXBvcnRzKGZpbGUsIGZyb21Db250ZW50cyk7XG4gICAgZm9yIChjb25zdCBpbXBvcnRQYXRoIG9mIGltcG9ydHMpIHtcbiAgICAgIGNvbnN0IHJlc29sdmVkID1cbiAgICAgICAgICB0aGlzLnByb2Nlc3NJbXBvcnQoaW1wb3J0UGF0aCwgZmlsZSwgZGVwZW5kZW5jaWVzLCBtaXNzaW5nLCBkZWVwSW1wb3J0cywgYWxyZWFkeVNlZW4pO1xuICAgICAgaWYgKCFyZXNvbHZlZCkge1xuICAgICAgICBtaXNzaW5nLmFkZChpbXBvcnRQYXRoKTtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICBwcm90ZWN0ZWQgYWJzdHJhY3QgY2FuU2tpcEZpbGUoZmlsZUNvbnRlbnRzOiBzdHJpbmcpOiBib29sZWFuO1xuICBwcm90ZWN0ZWQgYWJzdHJhY3QgZXh0cmFjdEltcG9ydHMoZmlsZTogQWJzb2x1dGVGc1BhdGgsIGZpbGVDb250ZW50czogc3RyaW5nKTogU2V0PHN0cmluZz47XG5cbiAgLyoqXG4gICAqIFJlc29sdmUgdGhlIGdpdmVuIGBpbXBvcnRQYXRoYCBmcm9tIGBmaWxlYCBhbmQgYWRkIGl0IHRvIHRoZSBhcHByb3ByaWF0ZSBzZXQuXG4gICAqXG4gICAqIElmIHRoZSBpbXBvcnQgaXMgbG9jYWwgdG8gdGhpcyBwYWNrYWdlIHRoZW4gZm9sbG93IGl0IGJ5IGNhbGxpbmdcbiAgICogYHJlY3Vyc2l2ZWx5Q29sbGVjdERlcGVuZGVuY2llcygpYC5cbiAgICpcbiAgICogQHJldHVybnMgYHRydWVgIGlmIHRoZSBpbXBvcnQgd2FzIHJlc29sdmVkICh0byBhbiBlbnRyeS1wb2ludCwgYSBsb2NhbCBpbXBvcnQsIG9yIGFcbiAgICogZGVlcC1pbXBvcnQpLCBgZmFsc2VgIG90aGVyd2lzZS5cbiAgICovXG4gIHByb3RlY3RlZCBwcm9jZXNzSW1wb3J0KFxuICAgICAgaW1wb3J0UGF0aDogc3RyaW5nLCBmaWxlOiBBYnNvbHV0ZUZzUGF0aCwgZGVwZW5kZW5jaWVzOiBTZXQ8QWJzb2x1dGVGc1BhdGg+LFxuICAgICAgbWlzc2luZzogU2V0PHN0cmluZz4sIGRlZXBJbXBvcnRzOiBTZXQ8c3RyaW5nPiwgYWxyZWFkeVNlZW46IFNldDxBYnNvbHV0ZUZzUGF0aD4pOiBib29sZWFuIHtcbiAgICBjb25zdCByZXNvbHZlZE1vZHVsZSA9IHRoaXMubW9kdWxlUmVzb2x2ZXIucmVzb2x2ZU1vZHVsZUltcG9ydChpbXBvcnRQYXRoLCBmaWxlKTtcbiAgICBpZiAocmVzb2x2ZWRNb2R1bGUgPT09IG51bGwpIHtcbiAgICAgIHJldHVybiBmYWxzZTtcbiAgICB9XG4gICAgaWYgKHJlc29sdmVkTW9kdWxlIGluc3RhbmNlb2YgUmVzb2x2ZWRSZWxhdGl2ZU1vZHVsZSkge1xuICAgICAgY29uc3QgaW50ZXJuYWxEZXBlbmRlbmN5ID0gcmVzb2x2ZWRNb2R1bGUubW9kdWxlUGF0aDtcbiAgICAgIGlmICghYWxyZWFkeVNlZW4uaGFzKGludGVybmFsRGVwZW5kZW5jeSkpIHtcbiAgICAgICAgYWxyZWFkeVNlZW4uYWRkKGludGVybmFsRGVwZW5kZW5jeSk7XG4gICAgICAgIHRoaXMucmVjdXJzaXZlbHlDb2xsZWN0RGVwZW5kZW5jaWVzKFxuICAgICAgICAgICAgaW50ZXJuYWxEZXBlbmRlbmN5LCBkZXBlbmRlbmNpZXMsIG1pc3NpbmcsIGRlZXBJbXBvcnRzLCBhbHJlYWR5U2Vlbik7XG4gICAgICB9XG4gICAgfSBlbHNlIGlmIChyZXNvbHZlZE1vZHVsZSBpbnN0YW5jZW9mIFJlc29sdmVkRGVlcEltcG9ydCkge1xuICAgICAgZGVlcEltcG9ydHMuYWRkKHJlc29sdmVkTW9kdWxlLmltcG9ydFBhdGgpO1xuICAgIH0gZWxzZSB7XG4gICAgICBkZXBlbmRlbmNpZXMuYWRkKHJlc29sdmVkTW9kdWxlLmVudHJ5UG9pbnRQYXRoKTtcbiAgICB9XG4gICAgcmV0dXJuIHRydWU7XG4gIH1cbn1cbiJdfQ==