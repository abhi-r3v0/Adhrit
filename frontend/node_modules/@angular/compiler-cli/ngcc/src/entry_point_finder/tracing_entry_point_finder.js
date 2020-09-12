(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/entry_point_finder/tracing_entry_point_finder", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/ngcc/src/packages/entry_point", "@angular/compiler-cli/ngcc/src/entry_point_finder/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.TracingEntryPointFinder = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var entry_point_1 = require("@angular/compiler-cli/ngcc/src/packages/entry_point");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/entry_point_finder/utils");
    /**
     * An EntryPointFinder that starts from a set of initial files and only returns entry-points that
     * are dependencies of these files.
     *
     * This is faster than searching the entire file-system for all the entry-points,
     * and is used primarily by the CLI integration.
     *
     * There are two concrete implementations of this class.
     *
     * * `TargetEntryPointFinder` - is given a single entry-point as the initial entry-point
     * * `ProgramBasedEntryPointFinder` - computes the initial entry-points from program files given by
     * a `tsconfig.json` file.
     */
    var TracingEntryPointFinder = /** @class */ (function () {
        function TracingEntryPointFinder(fs, config, logger, resolver, basePath, pathMappings) {
            this.fs = fs;
            this.config = config;
            this.logger = logger;
            this.resolver = resolver;
            this.basePath = basePath;
            this.pathMappings = pathMappings;
            this.unprocessedPaths = [];
            this.unsortedEntryPoints = new Map();
            this.basePaths = null;
        }
        TracingEntryPointFinder.prototype.getBasePaths = function () {
            if (this.basePaths === null) {
                this.basePaths = utils_1.getBasePaths(this.logger, this.basePath, this.pathMappings);
            }
            return this.basePaths;
        };
        TracingEntryPointFinder.prototype.findEntryPoints = function () {
            this.unprocessedPaths = this.getInitialEntryPointPaths();
            while (this.unprocessedPaths.length > 0) {
                this.processNextPath();
            }
            return this.resolver.sortEntryPointsByDependency(Array.from(this.unsortedEntryPoints.values()));
        };
        TracingEntryPointFinder.prototype.getEntryPoint = function (entryPointPath) {
            var packagePath = this.computePackagePath(entryPointPath);
            var entryPoint = entry_point_1.getEntryPointInfo(this.fs, this.config, this.logger, packagePath, entryPointPath);
            return entry_point_1.isEntryPoint(entryPoint) ? entryPoint : null;
        };
        TracingEntryPointFinder.prototype.processNextPath = function () {
            var _this = this;
            var path = this.unprocessedPaths.shift();
            var entryPoint = this.getEntryPoint(path);
            if (entryPoint === null || !entryPoint.compiledByAngular) {
                return;
            }
            var entryPointWithDeps = this.resolver.getEntryPointWithDependencies(entryPoint);
            this.unsortedEntryPoints.set(entryPoint.path, entryPointWithDeps);
            entryPointWithDeps.depInfo.dependencies.forEach(function (dep) {
                if (!_this.unsortedEntryPoints.has(dep)) {
                    _this.unprocessedPaths.push(dep);
                }
            });
        };
        TracingEntryPointFinder.prototype.computePackagePath = function (entryPointPath) {
            var e_1, _a;
            // First try the main basePath, to avoid having to compute the other basePaths from the paths
            // mappings, which can be computationally intensive.
            if (entryPointPath.startsWith(this.basePath)) {
                var packagePath = this.computePackagePathFromContainingPath(entryPointPath, this.basePath);
                if (packagePath !== null) {
                    return packagePath;
                }
            }
            try {
                // The main `basePath` didn't work out so now we try the `basePaths` computed from the paths
                // mappings in `tsconfig.json`.
                for (var _b = tslib_1.__values(this.getBasePaths()), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var basePath = _c.value;
                    if (entryPointPath.startsWith(basePath)) {
                        var packagePath = this.computePackagePathFromContainingPath(entryPointPath, basePath);
                        if (packagePath !== null) {
                            return packagePath;
                        }
                        // If we got here then we couldn't find a `packagePath` for the current `basePath`.
                        // Since `basePath`s are guaranteed not to be a sub-directory of each other then no other
                        // `basePath` will match either.
                        break;
                    }
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
            // Finally, if we couldn't find a `packagePath` using `basePaths` then try to find the nearest
            // `node_modules` that contains the `entryPointPath`, if there is one, and use it as a
            // `basePath`.
            return this.computePackagePathFromNearestNodeModules(entryPointPath);
        };
        /**
         * Search down to the `entryPointPath` from the `containingPath` for the first `package.json` that
         * we come to. This is the path to the entry-point's containing package. For example if
         * `containingPath` is `/a/b/c` and `entryPointPath` is `/a/b/c/d/e` and there exists
         * `/a/b/c/d/package.json` and `/a/b/c/d/e/package.json`, then we will return `/a/b/c/d`.
         *
         * To account for nested `node_modules` we actually start the search at the last `node_modules` in
         * the `entryPointPath` that is below the `containingPath`. E.g. if `containingPath` is `/a/b/c`
         * and `entryPointPath` is `/a/b/c/d/node_modules/x/y/z`, we start the search at
         * `/a/b/c/d/node_modules`.
         */
        TracingEntryPointFinder.prototype.computePackagePathFromContainingPath = function (entryPointPath, containingPath) {
            var e_2, _a;
            var packagePath = containingPath;
            var segments = this.splitPath(file_system_1.relative(containingPath, entryPointPath));
            var nodeModulesIndex = segments.lastIndexOf(file_system_1.relativeFrom('node_modules'));
            // If there are no `node_modules` in the relative path between the `basePath` and the
            // `entryPointPath` then just try the `basePath` as the `packagePath`.
            // (This can be the case with path-mapped entry-points.)
            if (nodeModulesIndex === -1) {
                if (this.fs.exists(file_system_1.join(packagePath, 'package.json'))) {
                    return packagePath;
                }
            }
            // Start the search at the deepest nested `node_modules` folder that is below the `basePath`
            // but above the `entryPointPath`, if there are any.
            while (nodeModulesIndex >= 0) {
                packagePath = file_system_1.join(packagePath, segments.shift());
                nodeModulesIndex--;
            }
            try {
                // Note that we start at the folder below the current candidate `packagePath` because the
                // initial candidate `packagePath` is either a `node_modules` folder or the `basePath` with
                // no `package.json`.
                for (var segments_1 = tslib_1.__values(segments), segments_1_1 = segments_1.next(); !segments_1_1.done; segments_1_1 = segments_1.next()) {
                    var segment = segments_1_1.value;
                    packagePath = file_system_1.join(packagePath, segment);
                    if (this.fs.exists(file_system_1.join(packagePath, 'package.json'))) {
                        return packagePath;
                    }
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (segments_1_1 && !segments_1_1.done && (_a = segments_1.return)) _a.call(segments_1);
                }
                finally { if (e_2) throw e_2.error; }
            }
            return null;
        };
        /**
         * Search up the directory tree from the `entryPointPath` looking for a `node_modules` directory
         * that we can use as a potential starting point for computing the package path.
         */
        TracingEntryPointFinder.prototype.computePackagePathFromNearestNodeModules = function (entryPointPath) {
            var packagePath = entryPointPath;
            var scopedPackagePath = packagePath;
            var containerPath = this.fs.dirname(packagePath);
            while (!this.fs.isRoot(containerPath) && !containerPath.endsWith('node_modules')) {
                scopedPackagePath = packagePath;
                packagePath = containerPath;
                containerPath = this.fs.dirname(containerPath);
            }
            if (this.fs.exists(file_system_1.join(packagePath, 'package.json'))) {
                // The directory directly below `node_modules` is a package - use it
                return packagePath;
            }
            else if (this.fs.basename(packagePath).startsWith('@') &&
                this.fs.exists(file_system_1.join(scopedPackagePath, 'package.json'))) {
                // The directory directly below the `node_modules` is a scope and the directory directly
                // below that is a scoped package - use it
                return scopedPackagePath;
            }
            else {
                // If we get here then none of the `basePaths` contained the `entryPointPath` and the
                // `entryPointPath` contains no `node_modules` that contains a package or a scoped
                // package. All we can do is assume that this entry-point is a primary entry-point to a
                // package.
                return entryPointPath;
            }
        };
        /**
         * Split the given `path` into path segments using an FS independent algorithm.
         * @param path The path to split.
         */
        TracingEntryPointFinder.prototype.splitPath = function (path) {
            var segments = [];
            while (path !== '.') {
                segments.unshift(this.fs.basename(path));
                path = this.fs.dirname(path);
            }
            return segments;
        };
        return TracingEntryPointFinder;
    }());
    exports.TracingEntryPointFinder = TracingEntryPointFinder;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHJhY2luZ19lbnRyeV9wb2ludF9maW5kZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvZW50cnlfcG9pbnRfZmluZGVyL3RyYWNpbmdfZW50cnlfcG9pbnRfZmluZGVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7SUFBQTs7Ozs7O09BTUc7SUFDSCwyRUFBcUg7SUFNckgsbUZBQW9GO0lBSXBGLGlGQUFxQztJQUVyQzs7Ozs7Ozs7Ozs7O09BWUc7SUFDSDtRQUtFLGlDQUNjLEVBQWMsRUFBWSxNQUF5QixFQUFZLE1BQWMsRUFDN0UsUUFBNEIsRUFBWSxRQUF3QixFQUNoRSxZQUFvQztZQUZwQyxPQUFFLEdBQUYsRUFBRSxDQUFZO1lBQVksV0FBTSxHQUFOLE1BQU0sQ0FBbUI7WUFBWSxXQUFNLEdBQU4sTUFBTSxDQUFRO1lBQzdFLGFBQVEsR0FBUixRQUFRLENBQW9CO1lBQVksYUFBUSxHQUFSLFFBQVEsQ0FBZ0I7WUFDaEUsaUJBQVksR0FBWixZQUFZLENBQXdCO1lBUHhDLHFCQUFnQixHQUFxQixFQUFFLENBQUM7WUFDeEMsd0JBQW1CLEdBQUcsSUFBSSxHQUFHLEVBQThDLENBQUM7WUFDOUUsY0FBUyxHQUEwQixJQUFJLENBQUM7UUFLSyxDQUFDO1FBRTVDLDhDQUFZLEdBQXRCO1lBQ0UsSUFBSSxJQUFJLENBQUMsU0FBUyxLQUFLLElBQUksRUFBRTtnQkFDM0IsSUFBSSxDQUFDLFNBQVMsR0FBRyxvQkFBWSxDQUFDLElBQUksQ0FBQyxNQUFNLEVBQUUsSUFBSSxDQUFDLFFBQVEsRUFBRSxJQUFJLENBQUMsWUFBWSxDQUFDLENBQUM7YUFDOUU7WUFDRCxPQUFPLElBQUksQ0FBQyxTQUFTLENBQUM7UUFDeEIsQ0FBQztRQUVELGlEQUFlLEdBQWY7WUFDRSxJQUFJLENBQUMsZ0JBQWdCLEdBQUcsSUFBSSxDQUFDLHlC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Z0M7WUFDaEQsSUFBTSxRQUFRLEdBQUcsRUFBRSxDQUFDO1lBQ3BCLE9BQU8sSUFBSSxLQUFLLEdBQUcsRUFBRTtnQkFDbkIsUUFBUSxDQUFDLE9BQU8sQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDO2dCQUN6QyxJQUFJLEdBQUcsSUFBSSxDQUFDLEVBQUUsQ0FBQyxPQUFPLENBQUMsSUFBSSxDQUFDLENBQUM7YUFDOUI7WUFDRCxPQUFPLFFBQVEsQ0FBQztRQUNsQixDQUFDO1FBQ0gsOEJBQUM7SUFBRCxDQUFDLEFBM0tELElBMktDO0lBM0txQiwwREFBdUIiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCB7QWJzb2x1dGVGc1BhdGgsIEZpbGVTeXN0ZW0sIGpvaW4sIFBhdGhTZWdtZW50LCByZWxhdGl2ZSwgcmVsYXRpdmVGcm9tfSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvZmlsZV9zeXN0ZW0nO1xuXG5pbXBvcnQge0VudHJ5UG9pbnRXaXRoRGVwZW5kZW5jaWVzfSBmcm9tICcuLi9kZXBlbmRlbmNpZXMvZGVwZW5kZW5jeV9ob3N0JztcbmltcG9ydCB7RGVwZW5kZW5jeVJlc29sdmVyLCBTb3J0ZWRFbnRyeVBvaW50c0luZm99IGZyb20gJy4uL2RlcGVuZGVuY2llcy9kZXBlbmRlbmN5X3Jlc29sdmVyJztcbmltcG9ydCB7TG9nZ2VyfSBmcm9tICcuLi9sb2dnaW5nL2xvZ2dlcic7XG5pbXBvcnQge05nY2NDb25maWd1cmF0aW9ufSBmcm9tICcuLi9wYWNrYWdlcy9jb25maWd1cmF0aW9uJztcbmltcG9ydCB7RW50cnlQb2ludCwgZ2V0RW50cnlQb2ludEluZm8sIGlzRW50cnlQb2ludH0gZnJvbSAnLi4vcGFja2FnZXMvZW50cnlfcG9pbnQnO1xuaW1wb3J0IHtQYXRoTWFwcGluZ3N9IGZyb20gJy4uL3BhdGhfbWFwcGluZ3MnO1xuXG5pbXBvcnQge0VudHJ5UG9pbnRGaW5kZXJ9IGZyb20gJy4vaW50ZXJmYWNlJztcbmltcG9ydCB7Z2V0QmFzZVBhdGhzfSBmcm9tICcuL3V0aWxzJztcblxuLyoqXG4gKiBBbiBFbnRyeVBvaW50RmluZGVyIHRoYXQgc3RhcnRzIGZyb20gYSBzZXQgb2YgaW5pdGlhbCBmaWxlcyBhbmQgb25seSByZXR1cm5zIGVudHJ5LXBvaW50cyB0aGF0XG4gKiBhcmUgZGVwZW5kZW5jaWVzIG9mIHRoZXNlIGZpbGVzLlxuICpcbiAqIFRoaXMgaXMgZmFzdGVyIHRoYW4gc2VhcmNoaW5nIHRoZSBlbnRpcmUgZmlsZS1zeXN0ZW0gZm9yIGFsbCB0aGUgZW50cnktcG9pbnRzLFxuICogYW5kIGlzIHVzZWQgcHJpbWFyaWx5IGJ5IHRoZSBDTEkgaW50ZWdyYXRpb24uXG4gKlxuICogVGhlcmUgYXJlIHR3byBjb25jcmV0ZSBpbXBsZW1lbnRhdGlvbnMgb2YgdGhpcyBjbGFzcy5cbiAqXG4gKiAqIGBUYXJnZXRFbnRyeVBvaW50RmluZGVyYCAtIGlzIGdpdmVuIGEgc2luZ2xlIGVudHJ5LXBvaW50IGFzIHRoZSBpbml0aWFsIGVudHJ5LXBvaW50XG4gKiAqIGBQcm9ncmFtQmFzZWRFbnRyeVBvaW50RmluZGVyYCAtIGNvbXB1dGVzIHRoZSBpbml0aWFsIGVudHJ5LXBvaW50cyBmcm9tIHByb2dyYW0gZmlsZXMgZ2l2ZW4gYnlcbiAqIGEgYHRzY29uZmlnLmpzb25gIGZpbGUuXG4gKi9cbmV4cG9ydCBhYnN0cmFjdCBjbGFzcyBUcmFjaW5nRW50cnlQb2ludEZpbmRlciBpbXBsZW1lbnRzIEVudHJ5UG9pbnRGaW5kZXIge1xuICBwcm90ZWN0ZWQgdW5wcm9jZXNzZWRQYXRoczogQWJzb2x1dGVGc1BhdGhbXSA9IFtdO1xuICBwcm90ZWN0ZWQgdW5zb3J0ZWRFbnRyeVBvaW50cyA9IG5ldyBNYXA8QWJzb2x1dGVGc1BhdGgsIEVudHJ5UG9pbnRXaXRoRGVwZW5kZW5jaWVzPigpO1xuICBwcml2YXRlIGJhc2VQYXRoczogQWJzb2x1dGVGc1BhdGhbXXxudWxsID0gbnVsbDtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByb3RlY3RlZCBmczogRmlsZVN5c3RlbSwgcHJvdGVjdGVkIGNvbmZpZzogTmdjY0NvbmZpZ3VyYXRpb24sIHByb3RlY3RlZCBsb2dnZXI6IExvZ2dlcixcbiAgICAgIHByb3RlY3RlZCByZXNvbHZlcjogRGVwZW5kZW5jeVJlc29sdmVyLCBwcm90ZWN0ZWQgYmFzZVBhdGg6IEFic29sdXRlRnNQYXRoLFxuICAgICAgcHJvdGVjdGVkIHBhdGhNYXBwaW5nczogUGF0aE1hcHBpbmdzfHVuZGVmaW5lZCkge31cblxuICBwcm90ZWN0ZWQgZ2V0QmFzZVBhdGhzKCkge1xuICAgIGlmICh0aGlzLmJhc2VQYXRocyA9PT0gbnVsbCkge1xuICAgICAgdGhpcy5iYXNlUGF0aHMgPSBnZXRCYXNlUGF0aHModGhpcy5sb2dnZXIsIHRoaXMuYmFzZVBhdGgsIHRoaXMucGF0aE1hcHBpbmdzKTtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMuYmFzZVBhdGhzO1xuICB9XG5cbiAgZmluZEVudHJ5UG9pbnRzKCk6IFNvcnRlZEVudHJ5UG9pbnRzSW5mbyB7XG4gICAgdGhpcy51bnByb2Nlc3NlZFBhdGhzID0gdGhpcy5nZXRJbml0aWFsRW50cnlQb2ludFBhdGhzKCk7XG4gICAgd2hpbGUgKHRoaXMudW5wcm9jZXNzZWRQYXRocy5sZW5ndGggPiAwKSB7XG4gICAgICB0aGlzLnByb2Nlc3NOZXh0UGF0aCgpO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5yZXNvbHZlci5zb3J0RW50cnlQb2ludHNCeURlcGVuZGVuY3koQXJyYXkuZnJvbSh0aGlzLnVuc29ydGVkRW50cnlQb2ludHMudmFsdWVzKCkpKTtcbiAgfVxuXG4gIHByb3RlY3RlZCBhYnN0cmFjdCBnZXRJbml0aWFsRW50cnlQb2ludFBhdGhzKCk6IEFic29sdXRlRnNQYXRoW107XG5cbiAgcHJvdGVjdGVkIGdldEVudHJ5UG9pbnQoZW50cnlQb2ludFBhdGg6IEFic29sdXRlRnNQYXRoKTogRW50cnlQb2ludHxudWxsIHtcbiAgICBjb25zdCBwYWNrYWdlUGF0aCA9IHRoaXMuY29tcHV0ZVBhY2thZ2VQYXRoKGVudHJ5UG9pbnRQYXRoKTtcbiAgICBjb25zdCBlbnRyeVBvaW50ID1cbiAgICAgICAgZ2V0RW50cnlQb2ludEluZm8odGhpcy5mcywgdGhpcy5jb25maWcsIHRoaXMubG9nZ2VyLCBwYWNrYWdlUGF0aCwgZW50cnlQb2ludFBhdGgpO1xuXG4gICAgcmV0dXJuIGlzRW50cnlQb2ludChlbnRyeVBvaW50KSA/IGVudHJ5UG9pbnQgOiBudWxsO1xuICB9XG5cbiAgcHJpdmF0ZSBwcm9jZXNzTmV4dFBhdGgoKTogdm9pZCB7XG4gICAgY29uc3QgcGF0aCA9IHRoaXMudW5wcm9jZXNzZWRQYXRocy5zaGlmdCgpITtcbiAgICBjb25zdCBlbnRyeVBvaW50ID0gdGhpcy5nZXRFbnRyeVBvaW50KHBhdGgpO1xuICAgIGlmIChlbnRyeVBvaW50ID09PSBudWxsIHx8ICFlbnRyeVBvaW50LmNvbXBpbGVkQnlBbmd1bGFyKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuICAgIGNvbnN0IGVudHJ5UG9pbnRXaXRoRGVwcyA9IHRoaXMucmVzb2x2ZXIuZ2V0RW50cnlQb2ludFdpdGhEZXBlbmRlbmNpZXMoZW50cnlQb2ludCk7XG4gICAgdGhpcy51bnNvcnRlZEVudHJ5UG9pbnRzLnNldChlbnRyeVBvaW50LnBhdGgsIGVudHJ5UG9pbnRXaXRoRGVwcyk7XG4gICAgZW50cnlQb2ludFdpdGhEZXBzLmRlcEluZm8uZGVwZW5kZW5jaWVzLmZvckVhY2goZGVwID0+IHtcbiAgICAgIGlmICghdGhpcy51bnNvcnRlZEVudHJ5UG9pbnRzLmhhcyhkZXApKSB7XG4gICAgICAgIHRoaXMudW5wcm9jZXNzZWRQYXRocy5wdXNoKGRlcCk7XG4gICAgICB9XG4gICAgfSk7XG4gIH1cblxuICBwcml2YXRlIGNvbXB1dGVQYWNrYWdlUGF0aChlbnRyeVBvaW50UGF0aDogQWJzb2x1dGVGc1BhdGgpOiBBYnNvbHV0ZUZzUGF0aCB7XG4gICAgLy8gRmlyc3QgdHJ5IHRoZSBtYWluIGJhc2VQYXRoLCB0byBhdm9pZCBoYXZpbmcgdG8gY29tcHV0ZSB0aGUgb3RoZXIgYmFzZVBhdGhzIGZyb20gdGhlIHBhdGhzXG4gICAgLy8gbWFwcGluZ3MsIHdoaWNoIGNhbiBiZSBjb21wdXRhdGlvbmFsbHkgaW50ZW5zaXZlLlxuICAgIGlmIChlbnRyeVBvaW50UGF0aC5zdGFydHNXaXRoKHRoaXMuYmFzZVBhdGgpKSB7XG4gICAgICBjb25zdCBwYWNrYWdlUGF0aCA9IHRoaXMuY29tcHV0ZVBhY2thZ2VQYXRoRnJvbUNvbnRhaW5pbmdQYXRoKGVudHJ5UG9pbnRQYXRoLCB0aGlzLmJhc2VQYXRoKTtcbiAgICAgIGlmIChwYWNrYWdlUGF0aCAhPT0gbnVsbCkge1xuICAgICAgICByZXR1cm4gcGFja2FnZVBhdGg7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gVGhlIG1haW4gYGJhc2VQYXRoYCBkaWRuJ3Qgd29yayBvdXQgc28gbm93IHdlIHRyeSB0aGUgYGJhc2VQYXRoc2AgY29tcHV0ZWQgZnJvbSB0aGUgcGF0aHNcbiAgICAvLyBtYXBwaW5ncyBpbiBgdHNjb25maWcuanNvbmAuXG4gICAgZm9yIChjb25zdCBiYXNlUGF0aCBvZiB0aGlzLmdldEJhc2VQYXRocygpKSB7XG4gICAgICBpZiAoZW50cnlQb2ludFBhdGguc3RhcnRzV2l0aChiYXNlUGF0aCkpIHtcbiAgICAgICAgY29uc3QgcGFja2FnZVBhdGggPSB0aGlzLmNvbXB1dGVQYWNrYWdlUGF0aEZyb21Db250YWluaW5nUGF0aChlbnRyeVBvaW50UGF0aCwgYmFzZVBhdGgpO1xuICAgICAgICBpZiAocGFja2FnZVBhdGggIT09IG51bGwpIHtcbiAgICAgICAgICByZXR1cm4gcGFja2FnZVBhdGg7XG4gICAgICAgIH1cbiAgICAgICAgLy8gSWYgd2UgZ290IGhlcmUgdGhlbiB3ZSBjb3VsZG4ndCBmaW5kIGEgYHBhY2thZ2VQYXRoYCBmb3IgdGhlIGN1cnJlbnQgYGJhc2VQYXRoYC5cbiAgICAgICAgLy8gU2luY2UgYGJhc2VQYXRoYHMgYXJlIGd1YXJhbnRlZWQgbm90IHRvIGJlIGEgc3ViLWRpcmVjdG9yeSBvZiBlYWNoIG90aGVyIHRoZW4gbm8gb3RoZXJcbiAgICAgICAgLy8gYGJhc2VQYXRoYCB3aWxsIG1hdGNoIGVpdGhlci5cbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gRmluYWxseSwgaWYgd2UgY291bGRuJ3QgZmluZCBhIGBwYWNrYWdlUGF0aGAgdXNpbmcgYGJhc2VQYXRoc2AgdGhlbiB0cnkgdG8gZmluZCB0aGUgbmVhcmVzdFxuICAgIC8vIGBub2RlX21vZHVsZXNgIHRoYXQgY29udGFpbnMgdGhlIGBlbnRyeVBvaW50UGF0aGAsIGlmIHRoZXJlIGlzIG9uZSwgYW5kIHVzZSBpdCBhcyBhXG4gICAgLy8gYGJhc2VQYXRoYC5cbiAgICByZXR1cm4gdGhpcy5jb21wdXRlUGFja2FnZVBhdGhGcm9tTmVhcmVzdE5vZGVNb2R1bGVzKGVudHJ5UG9pbnRQYXRoKTtcbiAgfVxuXG5cbiAgLyoqXG4gICAqIFNlYXJjaCBkb3duIHRvIHRoZSBgZW50cnlQb2ludFBhdGhgIGZyb20gdGhlIGBjb250YWluaW5nUGF0aGAgZm9yIHRoZSBmaXJzdCBgcGFja2FnZS5qc29uYCB0aGF0XG4gICAqIHdlIGNvbWUgdG8uIFRoaXMgaXMgdGhlIHBhdGggdG8gdGhlIGVudHJ5LXBvaW50J3MgY29udGFpbmluZyBwYWNrYWdlLiBGb3IgZXhhbXBsZSBpZlxuICAgKiBgY29udGFpbmluZ1BhdGhgIGlzIGAvYS9iL2NgIGFuZCBgZW50cnlQb2ludFBhdGhgIGlzIGAvYS9iL2MvZC9lYCBhbmQgdGhlcmUgZXhpc3RzXG4gICAqIGAvYS9iL2MvZC9wYWNrYWdlLmpzb25gIGFuZCBgL2EvYi9jL2QvZS9wYWNrYWdlLmpzb25gLCB0aGVuIHdlIHdpbGwgcmV0dXJuIGAvYS9iL2MvZGAuXG4gICAqXG4gICAqIFRvIGFjY291bnQgZm9yIG5lc3RlZCBgbm9kZV9tb2R1bGVzYCB3ZSBhY3R1YWxseSBzdGFydCB0aGUgc2VhcmNoIGF0IHRoZSBsYXN0IGBub2RlX21vZHVsZXNgIGluXG4gICAqIHRoZSBgZW50cnlQb2ludFBhdGhgIHRoYXQgaXMgYmVsb3cgdGhlIGBjb250YWluaW5nUGF0aGAuIEUuZy4gaWYgYGNvbnRhaW5pbmdQYXRoYCBpcyBgL2EvYi9jYFxuICAgKiBhbmQgYGVudHJ5UG9pbnRQYXRoYCBpcyBgL2EvYi9jL2Qvbm9kZV9tb2R1bGVzL3gveS96YCwgd2Ugc3RhcnQgdGhlIHNlYXJjaCBhdFxuICAgKiBgL2EvYi9jL2Qvbm9kZV9tb2R1bGVzYC5cbiAgICovXG4gIHByaXZhdGUgY29tcHV0ZVBhY2thZ2VQYXRoRnJvbUNvbnRhaW5pbmdQYXRoKFxuICAgICAgZW50cnlQb2ludFBhdGg6IEFic29sdXRlRnNQYXRoLCBjb250YWluaW5nUGF0aDogQWJzb2x1dGVGc1BhdGgpOiBBYnNvbHV0ZUZzUGF0aHxudWxsIHtcbiAgICBsZXQgcGFja2FnZVBhdGggPSBjb250YWluaW5nUGF0aDtcbiAgICBjb25zdCBzZWdtZW50cyA9IHRoaXMuc3BsaXRQYXRoKHJlbGF0aXZlKGNvbnRhaW5pbmdQYXRoLCBlbnRyeVBvaW50UGF0aCkpO1xuICAgIGxldCBub2RlTW9kdWxlc0luZGV4ID0gc2VnbWVudHMubGFzdEluZGV4T2YocmVsYXRpdmVGcm9tKCdub2RlX21vZHVsZXMnKSk7XG5cbiAgICAvLyBJZiB0aGVyZSBhcmUgbm8gYG5vZGVfbW9kdWxlc2AgaW4gdGhlIHJlbGF0aXZlIHBhdGggYmV0d2VlbiB0aGUgYGJhc2VQYXRoYCBhbmQgdGhlXG4gICAgLy8gYGVudHJ5UG9pbnRQYXRoYCB0aGVuIGp1c3QgdHJ5IHRoZSBgYmFzZVBhdGhgIGFzIHRoZSBgcGFja2FnZVBhdGhgLlxuICAgIC8vIChUaGlzIGNhbiBiZSB0aGUgY2FzZSB3aXRoIHBhdGgtbWFwcGVkIGVudHJ5LXBvaW50cy4pXG4gICAgaWYgKG5vZGVNb2R1bGVzSW5kZXggPT09IC0xKSB7XG4gICAgICBpZiAodGhpcy5mcy5leGlzdHMoam9pbihwYWNrYWdlUGF0aCwgJ3BhY2thZ2UuanNvbicpKSkge1xuICAgICAgICByZXR1cm4gcGFja2FnZVBhdGg7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gU3RhcnQgdGhlIHNlYXJjaCBhdCB0aGUgZGVlcGVzdCBuZXN0ZWQgYG5vZGVfbW9kdWxlc2AgZm9sZGVyIHRoYXQgaXMgYmVsb3cgdGhlIGBiYXNlUGF0aGBcbiAgICAvLyBidXQgYWJvdmUgdGhlIGBlbnRyeVBvaW50UGF0aGAsIGlmIHRoZXJlIGFyZSBhbnkuXG4gICAgd2hpbGUgKG5vZGVNb2R1bGVzSW5kZXggPj0gMCkge1xuICAgICAgcGFja2FnZVBhdGggPSBqb2luKHBhY2thZ2VQYXRoLCBzZWdtZW50cy5zaGlmdCgpISk7XG4gICAgICBub2RlTW9kdWxlc0luZGV4LS07XG4gICAgfVxuXG4gICAgLy8gTm90ZSB0aGF0IHdlIHN0YXJ0IGF0IHRoZSBmb2xkZXIgYmVsb3cgdGhlIGN1cnJlbnQgY2FuZGlkYXRlIGBwYWNrYWdlUGF0aGAgYmVjYXVzZSB0aGVcbiAgICAvLyBpbml0aWFsIGNhbmRpZGF0ZSBgcGFja2FnZVBhdGhgIGlzIGVpdGhlciBhIGBub2RlX21vZHVsZXNgIGZvbGRlciBvciB0aGUgYGJhc2VQYXRoYCB3aXRoXG4gICAgLy8gbm8gYHBhY2thZ2UuanNvbmAuXG4gICAgZm9yIChjb25zdCBzZWdtZW50IG9mIHNlZ21lbnRzKSB7XG4gICAgICBwYWNrYWdlUGF0aCA9IGpvaW4ocGFja2FnZVBhdGgsIHNlZ21lbnQpO1xuICAgICAgaWYgKHRoaXMuZnMuZXhpc3RzKGpvaW4ocGFja2FnZVBhdGgsICdwYWNrYWdlLmpzb24nKSkpIHtcbiAgICAgICAgcmV0dXJuIHBhY2thZ2VQYXRoO1xuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG4gIC8qKlxuICAgKiBTZWFyY2ggdXAgdGhlIGRpcmVjdG9yeSB0cmVlIGZyb20gdGhlIGBlbnRyeVBvaW50UGF0aGAgbG9va2luZyBmb3IgYSBgbm9kZV9tb2R1bGVzYCBkaXJlY3RvcnlcbiAgICogdGhhdCB3ZSBjYW4gdXNlIGFzIGEgcG90ZW50aWFsIHN0YXJ0aW5nIHBvaW50IGZvciBjb21wdXRpbmcgdGhlIHBhY2thZ2UgcGF0aC5cbiAgICovXG4gIHByaXZhdGUgY29tcHV0ZVBhY2thZ2VQYXRoRnJvbU5lYXJlc3ROb2RlTW9kdWxlcyhlbnRyeVBvaW50UGF0aDogQWJzb2x1dGVGc1BhdGgpOiBBYnNvbHV0ZUZzUGF0aCB7XG4gICAgbGV0IHBhY2thZ2VQYXRoID0gZW50cnlQb2ludFBhdGg7XG4gICAgbGV0IHNjb3BlZFBhY2thZ2VQYXRoID0gcGFja2FnZVBhdGg7XG4gICAgbGV0IGNvbnRhaW5lclBhdGggPSB0aGlzLmZzLmRpcm5hbWUocGFja2FnZVBhdGgpO1xuICAgIHdoaWxlICghdGhpcy5mcy5pc1Jvb3QoY29udGFpbmVyUGF0aCkgJiYgIWNvbnRhaW5lclBhdGguZW5kc1dpdGgoJ25vZGVfbW9kdWxlcycpKSB7XG4gICAgICBzY29wZWRQYWNrYWdlUGF0aCA9IHBhY2thZ2VQYXRoO1xuICAgICAgcGFja2FnZVBhdGggPSBjb250YWluZXJQYXRoO1xuICAgICAgY29udGFpbmVyUGF0aCA9IHRoaXMuZnMuZGlybmFtZShjb250YWluZXJQYXRoKTtcbiAgICB9XG5cbiAgICBpZiAodGhpcy5mcy5leGlzdHMoam9pbihwYWNrYWdlUGF0aCwgJ3BhY2thZ2UuanNvbicpKSkge1xuICAgICAgLy8gVGhlIGRpcmVjdG9yeSBkaXJlY3RseSBiZWxvdyBgbm9kZV9tb2R1bGVzYCBpcyBhIHBhY2thZ2UgLSB1c2UgaXRcbiAgICAgIHJldHVybiBwYWNrYWdlUGF0aDtcbiAgICB9IGVsc2UgaWYgKFxuICAgICAgICB0aGlzLmZzLmJhc2VuYW1lKHBhY2thZ2VQYXRoKS5zdGFydHNXaXRoKCdAJykgJiZcbiAgICAgICAgdGhpcy5mcy5leGlzdHMoam9pbihzY29wZWRQYWNrYWdlUGF0aCwgJ3BhY2thZ2UuanNvbicpKSkge1xuICAgICAgLy8gVGhlIGRpcmVjdG9yeSBkaXJlY3RseSBiZWxvdyB0aGUgYG5vZGVfbW9kdWxlc2AgaXMgYSBzY29wZSBhbmQgdGhlIGRpcmVjdG9yeSBkaXJlY3RseVxuICAgICAgLy8gYmVsb3cgdGhhdCBpcyBhIHNjb3BlZCBwYWNrYWdlIC0gdXNlIGl0XG4gICAgICByZXR1cm4gc2NvcGVkUGFja2FnZVBhdGg7XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIElmIHdlIGdldCBoZXJlIHRoZW4gbm9uZSBvZiB0aGUgYGJhc2VQYXRoc2AgY29udGFpbmVkIHRoZSBgZW50cnlQb2ludFBhdGhgIGFuZCB0aGVcbiAgICAgIC8vIGBlbnRyeVBvaW50UGF0aGAgY29udGFpbnMgbm8gYG5vZGVfbW9kdWxlc2AgdGhhdCBjb250YWlucyBhIHBhY2thZ2Ugb3IgYSBzY29wZWRcbiAgICAgIC8vIHBhY2thZ2UuIEFsbCB3ZSBjYW4gZG8gaXMgYXNzdW1lIHRoYXQgdGhpcyBlbnRyeS1wb2ludCBpcyBhIHByaW1hcnkgZW50cnktcG9pbnQgdG8gYVxuICAgICAgLy8gcGFja2FnZS5cbiAgICAgIHJldHVybiBlbnRyeVBvaW50UGF0aDtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogU3BsaXQgdGhlIGdpdmVuIGBwYXRoYCBpbnRvIHBhdGggc2VnbWVudHMgdXNpbmcgYW4gRlMgaW5kZXBlbmRlbnQgYWxnb3JpdGhtLlxuICAgKiBAcGFyYW0gcGF0aCBUaGUgcGF0aCB0byBzcGxpdC5cbiAgICovXG4gIHByaXZhdGUgc3BsaXRQYXRoKHBhdGg6IFBhdGhTZWdtZW50fEFic29sdXRlRnNQYXRoKSB7XG4gICAgY29uc3Qgc2VnbWVudHMgPSBbXTtcbiAgICB3aGlsZSAocGF0aCAhPT0gJy4nKSB7XG4gICAgICBzZWdtZW50cy51bnNoaWZ0KHRoaXMuZnMuYmFzZW5hbWUocGF0aCkpO1xuICAgICAgcGF0aCA9IHRoaXMuZnMuZGlybmFtZShwYXRoKTtcbiAgICB9XG4gICAgcmV0dXJuIHNlZ21lbnRzO1xuICB9XG59XG4iXX0=