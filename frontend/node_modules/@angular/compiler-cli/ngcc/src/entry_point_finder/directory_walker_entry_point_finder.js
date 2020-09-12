(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/entry_point_finder/directory_walker_entry_point_finder", ["require", "exports", "tslib", "@angular/compiler-cli/ngcc/src/packages/entry_point", "@angular/compiler-cli/ngcc/src/writing/new_entry_point_file_writer", "@angular/compiler-cli/ngcc/src/entry_point_finder/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.DirectoryWalkerEntryPointFinder = void 0;
    var tslib_1 = require("tslib");
    var entry_point_1 = require("@angular/compiler-cli/ngcc/src/packages/entry_point");
    var new_entry_point_file_writer_1 = require("@angular/compiler-cli/ngcc/src/writing/new_entry_point_file_writer");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/entry_point_finder/utils");
    /**
     * An EntryPointFinder that searches for all entry-points that can be found given a `basePath` and
     * `pathMappings`.
     */
    var DirectoryWalkerEntryPointFinder = /** @class */ (function () {
        function DirectoryWalkerEntryPointFinder(fs, config, logger, resolver, entryPointManifest, sourceDirectory, pathMappings) {
            this.fs = fs;
            this.config = config;
            this.logger = logger;
            this.resolver = resolver;
            this.entryPointManifest = entryPointManifest;
            this.sourceDirectory = sourceDirectory;
            this.pathMappings = pathMappings;
            this.basePaths = utils_1.getBasePaths(this.logger, this.sourceDirectory, this.pathMappings);
        }
        /**
         * Search the `sourceDirectory`, and sub-directories, using `pathMappings` as necessary, to find
         * all package entry-points.
         */
        DirectoryWalkerEntryPointFinder.prototype.findEntryPoints = function () {
            var e_1, _a;
            var unsortedEntryPoints = [];
            try {
                for (var _b = tslib_1.__values(this.basePaths), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var basePath = _c.value;
                    var entryPoints = this.entryPointManifest.readEntryPointsUsingManifest(basePath) ||
                        this.walkBasePathForPackages(basePath);
                    entryPoints.forEach(function (e) { return unsortedEntryPoints.push(e); });
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
            return this.resolver.sortEntryPointsByDependency(unsortedEntryPoints);
        };
        /**
         * Search the `basePath` for possible Angular packages and entry-points.
         *
         * @param basePath The path at which to start the search
         * @returns an array of `EntryPoint`s that were found within `basePath`.
         */
        DirectoryWalkerEntryPointFinder.prototype.walkBasePathForPackages = function (basePath) {
            var _this = this;
            this.logger.debug("No manifest found for " + basePath + " so walking the directories for entry-points.");
            var entryPoints = utils_1.trackDuration(function () { return _this.walkDirectoryForPackages(basePath); }, function (duration) { return _this.logger.debug("Walking " + basePath + " for entry-points took " + duration + "s."); });
            this.entryPointManifest.writeEntryPointManifest(basePath, entryPoints);
            return entryPoints;
        };
        /**
         * Look for Angular packages that need to be compiled, starting at the source directory.
         * The function will recurse into directories that start with `@...`, e.g. `@angular/...`.
         *
         * @param sourceDirectory An absolute path to the root directory where searching begins.
         * @returns an array of `EntryPoint`s that were found within `sourceDirectory`.
         */
        DirectoryWalkerEntryPointFinder.prototype.walkDirectoryForPackages = function (sourceDirectory) {
            var e_2, _a;
            // Try to get a primary entry point from this directory
            var primaryEntryPoint = entry_point_1.getEntryPointInfo(this.fs, this.config, this.logger, sourceDirectory, sourceDirectory);
            // If there is an entry-point but it is not compatible with ngcc (it has a bad package.json or
            // invalid typings) then exit. It is unlikely that such an entry point has a dependency on an
            // Angular library.
            if (primaryEntryPoint === entry_point_1.INCOMPATIBLE_ENTRY_POINT) {
                return [];
            }
            var entryPoints = [];
            if (primaryEntryPoint !== entry_point_1.NO_ENTRY_POINT) {
                if (primaryEntryPoint !== entry_point_1.IGNORED_ENTRY_POINT) {
                    entryPoints.push(this.resolver.getEntryPointWithDependencies(primaryEntryPoint));
                }
                this.collectSecondaryEntryPoints(entryPoints, sourceDirectory, sourceDirectory, this.fs.readdir(sourceDirectory));
                // Also check for any nested node_modules in this package but only if at least one of the
                // entry-points was compiled by Angular.
                if (entryPoints.some(function (e) { return e.entryPoint.compiledByAngular; })) {
                    var nestedNodeModulesPath = this.fs.join(sourceDirectory, 'node_modules');
                    if (this.fs.exists(nestedNodeModulesPath)) {
                        entryPoints.push.apply(entryPoints, tslib_1.__spread(this.walkDirectoryForPackages(nestedNodeModulesPath)));
                    }
                }
                return entryPoints;
            }
            try {
                // The `sourceDirectory` was not a package (i.e. there was no package.json)
                // So search its sub-directories for Angular packages and entry-points
                for (var _b = tslib_1.__values(this.fs.readdir(sourceDirectory)), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var path = _c.value;
                    if (isIgnorablePath(path)) {
                        // Ignore hidden files, node_modules and ngcc directory
                        continue;
                    }
                    var absolutePath = this.fs.resolve(sourceDirectory, path);
                    var stat = this.fs.lstat(absolutePath);
                    if (stat.isSymbolicLink() || !stat.isDirectory()) {
                        // Ignore symbolic links and non-directories
                        continue;
                    }
                    entryPoints.push.apply(entryPoints, tslib_1.__spread(this.walkDirectoryForPackages(this.fs.join(sourceDirectory, path))));
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_2) throw e_2.error; }
            }
            return entryPoints;
        };
        /**
         * Search the `directory` looking for any secondary entry-points for a package, adding any that
         * are found to the `entryPoints` array.
         *
         * @param entryPoints An array where we will add any entry-points found in this directory
         * @param packagePath The absolute path to the package that may contain entry-points
         * @param directory The current directory being searched
         * @param paths The paths contained in the current `directory`.
         */
        DirectoryWalkerEntryPointFinder.prototype.collectSecondaryEntryPoints = function (entryPoints, packagePath, directory, paths) {
            var e_3, _a;
            var _this = this;
            var _loop_1 = function (path) {
                if (isIgnorablePath(path)) {
                    return "continue";
                }
                var absolutePath = this_1.fs.resolve(directory, path);
                var stat = this_1.fs.lstat(absolutePath);
                if (stat.isSymbolicLink()) {
                    return "continue";
                }
                var isDirectory = stat.isDirectory();
                if (!path.endsWith('.js') && !isDirectory) {
                    return "continue";
                }
                // If the path is a JS file then strip its extension and see if we can match an
                // entry-point (even if it is an ignored one).
                var possibleEntryPointPath = isDirectory ? absolutePath : stripJsExtension(absolutePath);
                var subEntryPoint = entry_point_1.getEntryPointInfo(this_1.fs, this_1.config, this_1.logger, packagePath, possibleEntryPointPath);
                if (entry_point_1.isEntryPoint(subEntryPoint)) {
                    entryPoints.push(this_1.resolver.getEntryPointWithDependencies(subEntryPoint));
                }
                if (!isDirectory) {
                    return "continue";
                }
                // If not an entry-point itself, this directory may contain entry-points of its own.
                var canContainEntryPoints = subEntryPoint === entry_point_1.NO_ENTRY_POINT || subEntryPoint === entry_point_1.INCOMPATIBLE_ENTRY_POINT;
                var childPaths = this_1.fs.readdir(absolutePath);
                if (canContainEntryPoints &&
                    childPaths.some(function (childPath) { return childPath.endsWith('.js') &&
                        _this.fs.stat(_this.fs.resolve(absolutePath, childPath)).isFile(); })) {
                    return "continue";
                }
                this_1.collectSecondaryEntryPoints(entryPoints, packagePath, absolutePath, childPaths);
            };
            var this_1 = this;
            try {
                for (var paths_1 = tslib_1.__values(paths), paths_1_1 = paths_1.next(); !paths_1_1.done; paths_1_1 = paths_1.next()) {
                    var path = paths_1_1.value;
                    _loop_1(path);
                }
            }
            catch (e_3_1) { e_3 = { error: e_3_1 }; }
            finally {
                try {
                    if (paths_1_1 && !paths_1_1.done && (_a = paths_1.return)) _a.call(paths_1);
                }
                finally { if (e_3) throw e_3.error; }
            }
        };
        return DirectoryWalkerEntryPointFinder;
    }());
    exports.DirectoryWalkerEntryPointFinder = DirectoryWalkerEntryPointFinder;
    function stripJsExtension(filePath) {
        return filePath.replace(/\.js$/, '');
    }
    function isIgnorablePath(path) {
        return path.startsWith('.') || path === 'node_modules' || path === new_entry_point_file_writer_1.NGCC_DIRECTORY;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGlyZWN0b3J5X3dhbGtlcl9lbnRyeV9wb2ludF9maW5kZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvZW50cnlfcG9pbnRfZmluZGVyL2RpcmVjdG9yeV93YWxrZXJfZW50cnlfcG9pbnRfZmluZGVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7SUFZQSxtRkFBdUk7SUFHdkksa0hBQXNFO0lBR3RFLGlGQUFvRDtJQUVwRDs7O09BR0c7SUFDSDtRQUVFLHlDQUNZLEVBQWMsRUFBVSxNQUF5QixFQUFVLE1BQWMsRUFDekUsUUFBNEIsRUFBVSxrQkFBc0MsRUFDNUUsZUFBK0IsRUFBVSxZQUFvQztZQUY3RSxPQUFFLEdBQUYsRUFBRSxDQUFZO1lBQVUsV0FBTSxHQUFOLE1BQU0sQ0FBbUI7WUFBVSxXQUFNLEdBQU4sTUFBTSxDQUFRO1lBQ3pFLGFBQVEsR0FBUixRQUFRLENBQW9CO1lBQVUsdUJBQWtCLEdBQWxCLGtCQUFrQixDQUFvQjtZQUM1RSxvQkFBZSxHQUFmLGVBQWUsQ0FBZ0I7WUFBVSxpQkFBWSxHQUFaLFlBQVksQ0FBd0I7WUFKakYsY0FBUyxHQUFHLG9CQUFZLENBQUMsSUFBSSxDQUFDLE1BQU0sRUFBRSxJQUFJLENBQUMsZUFBZSxFQUFFLElBQUksQ0FBQyxZQUFZLENBQUMsQ0FBQztRQUlLLENBQUM7UUFDN0Y7OztXQUdHO1FBQ0gseURBQWUsR0FBZjs7WUFDRSxJQUFNLG1CQUFtQixHQUFpQyxFQUFFLENBQUM7O2dCQUM3RCxLQUF1QixJQUFBLEtBQUEsaUJBQUEsSUFBSSxDQUFDLFNBQVMsQ0FBQSxnQkFBQSw0QkFBRTtvQkFBbEMsSUFBTSxRQUFRLFdBQUE7b0JBQ2pCLElBQU0sV0FBVyxHQUFHLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyw0QkFBNEIsQ0FBQyxRQUFRLENBQUM7d0JBQzlFLElBQUksQ0FB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QUFDLEFBNUpELElBNEpDO0lBNUpZLDBFQUErQjtJQThKNUMsU0FBUyxnQkFBZ0IsQ0FBbUIsUUFBVztRQUNyRCxPQUFPLFFBQVEsQ0FBQyxPQUFPLENBQUMsT0FBTyxFQUFFLEVBQUUsQ0FBTSxDQUFDO0lBQzVDLENBQUM7SUFFRCxTQUFTLGVBQWUsQ0FBQyxJQUFpQjtRQUN4QyxPQUFPLElBQUksQ0FBQyxVQUFVLENBQUMsR0FBRyxDQUFDLElBQUksSUFBSSxLQUFLLGNBQWMsSUFBSSxJQUFJLEtBQUssNENBQWMsQ0FBQztJQUNwRixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQge0Fic29sdXRlRnNQYXRoLCBGaWxlU3lzdGVtLCBQYXRoU2VnbWVudH0gZnJvbSAnLi4vLi4vLi4vc3JjL25ndHNjL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7RW50cnlQb2ludFdpdGhEZXBlbmRlbmNpZXN9IGZyb20gJy4uL2RlcGVuZGVuY2llcy9kZXBlbmRlbmN5X2hvc3QnO1xuaW1wb3J0IHtEZXBlbmRlbmN5UmVzb2x2ZXIsIFNvcnRlZEVudHJ5UG9pbnRzSW5mb30gZnJvbSAnLi4vZGVwZW5kZW5jaWVzL2RlcGVuZGVuY3lfcmVzb2x2ZXInO1xuaW1wb3J0IHtMb2dnZXJ9IGZyb20gJy4uL2xvZ2dpbmcvbG9nZ2VyJztcbmltcG9ydCB7TmdjY0NvbmZpZ3VyYXRpb259IGZyb20gJy4uL3BhY2thZ2VzL2NvbmZpZ3VyYXRpb24nO1xuaW1wb3J0IHtnZXRFbnRyeVBvaW50SW5mbywgSUdOT1JFRF9FTlRSWV9QT0lOVCwgSU5DT01QQVRJQkxFX0VOVFJZX1BPSU5ULCBpc0VudHJ5UG9pbnQsIE5PX0VOVFJZX1BPSU5UfSBmcm9tICcuLi9wYWNrYWdlcy9lbnRyeV9wb2ludCc7XG5pbXBvcnQge0VudHJ5UG9pbnRNYW5pZmVzdH0gZnJvbSAnLi4vcGFja2FnZXMvZW50cnlfcG9pbnRfbWFuaWZlc3QnO1xuaW1wb3J0IHtQYXRoTWFwcGluZ3N9IGZyb20gJy4uL3BhdGhfbWFwcGluZ3MnO1xuaW1wb3J0IHtOR0NDX0RJUkVDVE9SWX0gZnJvbSAnLi4vd3JpdGluZy9uZXdfZW50cnlfcG9pbnRfZmlsZV93cml0ZXInO1xuXG5pbXBvcnQge0VudHJ5UG9pbnRGaW5kZXJ9IGZyb20gJy4vaW50ZXJmYWNlJztcbmltcG9ydCB7Z2V0QmFzZVBhdGhzLCB0cmFja0R1cmF0aW9ufSBmcm9tICcuL3V0aWxzJztcblxuLyoqXG4gKiBBbiBFbnRyeVBvaW50RmluZGVyIHRoYXQgc2VhcmNoZXMgZm9yIGFsbCBlbnRyeS1wb2ludHMgdGhhdCBjYW4gYmUgZm91bmQgZ2l2ZW4gYSBgYmFzZVBhdGhgIGFuZFxuICogYHBhdGhNYXBwaW5nc2AuXG4gKi9cbmV4cG9ydCBjbGFzcyBEaXJlY3RvcnlXYWxrZXJFbnRyeVBvaW50RmluZGVyIGltcGxlbWVudHMgRW50cnlQb2ludEZpbmRlciB7XG4gIHByaXZhdGUgYmFzZVBhdGhzID0gZ2V0QmFzZVBhdGhzKHRoaXMubG9nZ2VyLCB0aGlzLnNvdXJjZURpcmVjdG9yeSwgdGhpcy5wYXRoTWFwcGluZ3MpO1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgZnM6IEZpbGVTeXN0ZW0sIHByaXZhdGUgY29uZmlnOiBOZ2NjQ29uZmlndXJhdGlvbiwgcHJpdmF0ZSBsb2dnZXI6IExvZ2dlcixcbiAgICAgIHByaXZhdGUgcmVzb2x2ZXI6IERlcGVuZGVuY3lSZXNvbHZlciwgcHJpdmF0ZSBlbnRyeVBvaW50TWFuaWZlc3Q6IEVudHJ5UG9pbnRNYW5pZmVzdCxcbiAgICAgIHByaXZhdGUgc291cmNlRGlyZWN0b3J5OiBBYnNvbHV0ZUZzUGF0aCwgcHJpdmF0ZSBwYXRoTWFwcGluZ3M6IFBhdGhNYXBwaW5nc3x1bmRlZmluZWQpIHt9XG4gIC8qKlxuICAgKiBTZWFyY2ggdGhlIGBzb3VyY2VEaXJlY3RvcnlgLCBhbmQgc3ViLWRpcmVjdG9yaWVzLCB1c2luZyBgcGF0aE1hcHBpbmdzYCBhcyBuZWNlc3NhcnksIHRvIGZpbmRcbiAgICogYWxsIHBhY2thZ2UgZW50cnktcG9pbnRzLlxuICAgKi9cbiAgZmluZEVudHJ5UG9pbnRzKCk6IFNvcnRlZEVudHJ5UG9pbnRzSW5mbyB7XG4gICAgY29uc3QgdW5zb3J0ZWRFbnRyeVBvaW50czogRW50cnlQb2ludFdpdGhEZXBlbmRlbmNpZXNbXSA9IFtdO1xuICAgIGZvciAoY29uc3QgYmFzZVBhdGggb2YgdGhpcy5iYXNlUGF0aHMpIHtcbiAgICAgIGNvbnN0IGVudHJ5UG9pbnRzID0gdGhpcy5lbnRyeVBvaW50TWFuaWZlc3QucmVhZEVudHJ5UG9pbnRzVXNpbmdNYW5pZmVzdChiYXNlUGF0aCkgfHxcbiAgICAgICAgICB0aGlzLndhbGtCYXNlUGF0aEZvclBhY2thZ2VzKGJhc2VQYXRoKTtcbiAgICAgIGVudHJ5UG9pbnRzLmZvckVhY2goZSA9PiB1bnNvcnRlZEVudHJ5UG9pbnRzLnB1c2goZSkpO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5yZXNvbHZlci5zb3J0RW50cnlQb2ludHNCeURlcGVuZGVuY3kodW5zb3J0ZWRFbnRyeVBvaW50cyk7XG4gIH1cblxuICAvKipcbiAgICogU2VhcmNoIHRoZSBgYmFzZVBhdGhgIGZvciBwb3NzaWJsZSBBbmd1bGFyIHBhY2thZ2VzIGFuZCBlbnRyeS1wb2ludHMuXG4gICAqXG4gICAqIEBwYXJhbSBiYXNlUGF0aCBUaGUgcGF0aCBhdCB3aGljaCB0byBzdGFydCB0aGUgc2VhcmNoXG4gICAqIEByZXR1cm5zIGFuIGFycmF5IG9mIGBFbnRyeVBvaW50YHMgdGhhdCB3ZXJlIGZvdW5kIHdpdGhpbiBgYmFzZVBhdGhgLlxuICAgKi9cbiAgd2Fsa0Jhc2VQYXRoRm9yUGFja2FnZXMoYmFzZVBhdGg6IEFic29sdXRlRnNQYXRoKTogRW50cnlQb2ludFdpdGhEZXBlbmRlbmNpZXNbXSB7XG4gICAgdGhpcy5sb2dnZXIuZGVidWcoXG4gICAgICAgIGBObyBtYW5pZmVzdCBmb3VuZCBmb3IgJHtiYXNlUGF0aH0gc28gd2Fsa2luZyB0aGUgZGlyZWN0b3JpZXMgZm9yIGVudHJ5LXBvaW50cy5gKTtcbiAgICBjb25zdCBlbnRyeVBvaW50cyA9IHRyYWNrRHVyYXRpb24oXG4gICAgICAgICgpID0+IHRoaXMud2Fsa0RpcmVjdG9yeUZvclBhY2thZ2VzKGJhc2VQYXRoKSxcbiAgICAgICAgZHVyYXRpb24gPT4gdGhpcy5sb2dnZXIuZGVidWcoYFdhbGtpbmcgJHtiYXNlUGF0aH0gZm9yIGVudHJ5LXBvaW50cyB0b29rICR7ZHVyYXRpb259cy5gKSk7XG4gICAgdGhpcy5lbnRyeVBvaW50TWFuaWZlc3Qud3JpdGVFbnRyeVBvaW50TWFuaWZlc3QoYmFzZVBhdGgsIGVudHJ5UG9pbnRzKTtcbiAgICByZXR1cm4gZW50cnlQb2ludHM7XG4gIH1cblxuICAvKipcbiAgICogTG9vayBmb3IgQW5ndWxhciBwYWNrYWdlcyB0aGF0IG5lZWQgdG8gYmUgY29tcGlsZWQsIHN0YXJ0aW5nIGF0IHRoZSBzb3VyY2UgZGlyZWN0b3J5LlxuICAgKiBUaGUgZnVuY3Rpb24gd2lsbCByZWN1cnNlIGludG8gZGlyZWN0b3JpZXMgdGhhdCBzdGFydCB3aXRoIGBALi4uYCwgZS5nLiBgQGFuZ3VsYXIvLi4uYC5cbiAgICpcbiAgICogQHBhcmFtIHNvdXJjZURpcmVjdG9yeSBBbiBhYnNvbHV0ZSBwYXRoIHRvIHRoZSByb290IGRpcmVjdG9yeSB3aGVyZSBzZWFyY2hpbmcgYmVnaW5zLlxuICAgKiBAcmV0dXJucyBhbiBhcnJheSBvZiBgRW50cnlQb2ludGBzIHRoYXQgd2VyZSBmb3VuZCB3aXRoaW4gYHNvdXJjZURpcmVjdG9yeWAuXG4gICAqL1xuICB3YWxrRGlyZWN0b3J5Rm9yUGFja2FnZXMoc291cmNlRGlyZWN0b3J5OiBBYnNvbHV0ZUZzUGF0aCk6IEVudHJ5UG9pbnRXaXRoRGVwZW5kZW5jaWVzW10ge1xuICAgIC8vIFRyeSB0byBnZXQgYSBwcmltYXJ5IGVudHJ5IHBvaW50IGZyb20gdGhpcyBkaXJlY3RvcnlcbiAgICBjb25zdCBwcmltYXJ5RW50cnlQb2ludCA9XG4gICAgICAgIGdldEVudHJ5UG9pbnRJbmZvKHRoaXMuZnMsIHRoaXMuY29uZmlnLCB0aGlzLmxvZ2dlciwgc291cmNlRGlyZWN0b3J5LCBzb3VyY2VEaXJlY3RvcnkpO1xuXG4gICAgLy8gSWYgdGhlcmUgaXMgYW4gZW50cnktcG9pbnQgYnV0IGl0IGlzIG5vdCBjb21wYXRpYmxlIHdpdGggbmdjYyAoaXQgaGFzIGEgYmFkIHBhY2thZ2UuanNvbiBvclxuICAgIC8vIGludmFsaWQgdHlwaW5ncykgdGhlbiBleGl0LiBJdCBpcyB1bmxpa2VseSB0aGF0IHN1Y2ggYW4gZW50cnkgcG9pbnQgaGFzIGEgZGVwZW5kZW5jeSBvbiBhblxuICAgIC8vIEFuZ3VsYXIgbGlicmFyeS5cbiAgICBpZiAocHJpbWFyeUVudHJ5UG9pbnQgPT09IElOQ09NUEFUSUJMRV9FTlRSWV9QT0lOVCkge1xuICAgICAgcmV0dXJuIFtdO1xuICAgIH1cblxuICAgIGNvbnN0IGVudHJ5UG9pbnRzOiBFbnRyeVBvaW50V2l0aERlcGVuZGVuY2llc1tdID0gW107XG4gICAgaWYgKHByaW1hcnlFbnRyeVBvaW50ICE9PSBOT19FTlRSWV9QT0lOVCkge1xuICAgICAgaWYgKHByaW1hcnlFbnRyeVBvaW50ICE9PSBJR05PUkVEX0VOVFJZX1BPSU5UKSB7XG4gICAgICAgIGVudHJ5UG9pbnRzLnB1c2godGhpcy5yZXNvbHZlci5nZXRFbnRyeVBvaW50V2l0aERlcGVuZGVuY2llcyhwcmltYXJ5RW50cnlQb2ludCkpO1xuICAgICAgfVxuICAgICAgdGhpcy5jb2xsZWN0U2Vjb25kYXJ5RW50cnlQb2ludHMoXG4gICAgICAgICAgZW50cnlQb2ludHMsIHNvdXJjZURpcmVjdG9yeSwgc291cmNlRGlyZWN0b3J5LCB0aGlzLmZzLnJlYWRkaXIoc291cmNlRGlyZWN0b3J5KSk7XG5cbiAgICAgIC8vIEFsc28gY2hlY2sgZm9yIGFueSBuZXN0ZWQgbm9kZV9tb2R1bGVzIGluIHRoaXMgcGFja2FnZSBidXQgb25seSBpZiBhdCBsZWFzdCBvbmUgb2YgdGhlXG4gICAgICAvLyBlbnRyeS1wb2ludHMgd2FzIGNvbXBpbGVkIGJ5IEFuZ3VsYXIuXG4gICAgICBpZiAoZW50cnlQb2ludHMuc29tZShlID0+IGUuZW50cnlQb2ludC5jb21waWxlZEJ5QW5ndWxhcikpIHtcbiAgICAgICAgY29uc3QgbmVzdGVkTm9kZU1vZHVsZXNQYXRoID0gdGhpcy5mcy5qb2luKHNvdXJjZURpcmVjdG9yeSwgJ25vZGVfbW9kdWxlcycpO1xuICAgICAgICBpZiAodGhpcy5mcy5leGlzdHMobmVzdGVkTm9kZU1vZHVsZXNQYXRoKSkge1xuICAgICAgICAgIGVudHJ5UG9pbnRzLnB1c2goLi4udGhpcy53YWxrRGlyZWN0b3J5Rm9yUGFja2FnZXMobmVzdGVkTm9kZU1vZHVsZXNQYXRoKSk7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgcmV0dXJuIGVudHJ5UG9pbnRzO1xuICAgIH1cblxuICAgIC8vIFRoZSBgc291cmNlRGlyZWN0b3J5YCB3YXMgbm90IGEgcGFja2FnZSAoaS5lLiB0aGVyZSB3YXMgbm8gcGFja2FnZS5qc29uKVxuICAgIC8vIFNvIHNlYXJjaCBpdHMgc3ViLWRpcmVjdG9yaWVzIGZvciBBbmd1bGFyIHBhY2thZ2VzIGFuZCBlbnRyeS1wb2ludHNcbiAgICBmb3IgKGNvbnN0IHBhdGggb2YgdGhpcy5mcy5yZWFkZGlyKHNvdXJjZURpcmVjdG9yeSkpIHtcbiAgICAgIGlmIChpc0lnbm9yYWJsZVBhdGgocGF0aCkpIHtcbiAgICAgICAgLy8gSWdub3JlIGhpZGRlbiBmaWxlcywgbm9kZV9tb2R1bGVzIGFuZCBuZ2NjIGRpcmVjdG9yeVxuICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cblxuICAgICAgY29uc3QgYWJzb2x1dGVQYXRoID0gdGhpcy5mcy5yZXNvbHZlKHNvdXJjZURpcmVjdG9yeSwgcGF0aCk7XG4gICAgICBjb25zdCBzdGF0ID0gdGhpcy5mcy5sc3RhdChhYnNvbHV0ZVBhdGgpO1xuICAgICAgaWYgKHN0YXQuaXNTeW1ib2xpY0xpbmsoKSB8fCAhc3RhdC5pc0RpcmVjdG9yeSgpKSB7XG4gICAgICAgIC8vIElnbm9yZSBzeW1ib2xpYyBsaW5rcyBhbmQgbm9uLWRpcmVjdG9yaWVzXG4gICAgICAgIGNvbnRpbnVlO1xuICAgICAgfVxuXG4gICAgICBlbnRyeVBvaW50cy5wdXNoKC4uLnRoaXMud2Fsa0RpcmVjdG9yeUZvclBhY2thZ2VzKHRoaXMuZnMuam9pbihzb3VyY2VEaXJlY3RvcnksIHBhdGgpKSk7XG4gICAgfVxuXG4gICAgcmV0dXJuIGVudHJ5UG9pbnRzO1xuICB9XG5cbiAgLyoqXG4gICAqIFNlYXJjaCB0aGUgYGRpcmVjdG9yeWAgbG9va2luZyBmb3IgYW55IHNlY29uZGFyeSBlbnRyeS1wb2ludHMgZm9yIGEgcGFja2FnZSwgYWRkaW5nIGFueSB0aGF0XG4gICAqIGFyZSBmb3VuZCB0byB0aGUgYGVudHJ5UG9pbnRzYCBhcnJheS5cbiAgICpcbiAgICogQHBhcmFtIGVudHJ5UG9pbnRzIEFuIGFycmF5IHdoZXJlIHdlIHdpbGwgYWRkIGFueSBlbnRyeS1wb2ludHMgZm91bmQgaW4gdGhpcyBkaXJlY3RvcnlcbiAgICogQHBhcmFtIHBhY2thZ2VQYXRoIFRoZSBhYnNvbHV0ZSBwYXRoIHRvIHRoZSBwYWNrYWdlIHRoYXQgbWF5IGNvbnRhaW4gZW50cnktcG9pbnRzXG4gICAqIEBwYXJhbSBkaXJlY3RvcnkgVGhlIGN1cnJlbnQgZGlyZWN0b3J5IGJlaW5nIHNlYXJjaGVkXG4gICAqIEBwYXJhbSBwYXRocyBUaGUgcGF0aHMgY29udGFpbmVkIGluIHRoZSBjdXJyZW50IGBkaXJlY3RvcnlgLlxuICAgKi9cbiAgcHJpdmF0ZSBjb2xsZWN0U2Vjb25kYXJ5RW50cnlQb2ludHMoXG4gICAgICBlbnRyeVBvaW50czogRW50cnlQb2ludFdpdGhEZXBlbmRlbmNpZXNbXSwgcGFja2FnZVBhdGg6IEFic29sdXRlRnNQYXRoLFxuICAgICAgZGlyZWN0b3J5OiBBYnNvbHV0ZUZzUGF0aCwgcGF0aHM6IFBhdGhTZWdtZW50W10pOiB2b2lkIHtcbiAgICBmb3IgKGNvbnN0IHBhdGggb2YgcGF0aHMpIHtcbiAgICAgIGlmIChpc0lnbm9yYWJsZVBhdGgocGF0aCkpIHtcbiAgICAgICAgLy8gSWdub3JlIGhpZGRlbiBmaWxlcywgbm9kZV9tb2R1bGVzIGFuZCBuZ2NjIGRpcmVjdG9yeVxuICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cblxuICAgICAgY29uc3QgYWJzb2x1dGVQYXRoID0gdGhpcy5mcy5yZXNvbHZlKGRpcmVjdG9yeSwgcGF0aCk7XG4gICAgICBjb25zdCBzdGF0ID0gdGhpcy5mcy5sc3RhdChhYnNvbHV0ZVBhdGgpO1xuICAgICAgaWYgKHN0YXQuaXNTeW1ib2xpY0xpbmsoKSkge1xuICAgICAgICAvLyBJZ25vcmUgc3ltYm9saWMgbGlua3NcbiAgICAgICAgY29udGludWU7XG4gICAgICB9XG5cbiAgICAgIGNvbnN0IGlzRGlyZWN0b3J5ID0gc3RhdC5pc0RpcmVjdG9yeSgpO1xuICAgICAgaWYgKCFwYXRoLmVuZHNXaXRoKCcuanMnKSAmJiAhaXNEaXJlY3RvcnkpIHtcbiAgICAgICAgLy8gSWdub3JlIGZpbGVzIHRoYXQgZG8gbm90IGVuZCBpbiBgLmpzYFxuICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cblxuICAgICAgLy8gSWYgdGhlIHBhdGggaXMgYSBKUyBmaWxlIHRoZW4gc3RyaXAgaXRzIGV4dGVuc2lvbiBhbmQgc2VlIGlmIHdlIGNhbiBtYXRjaCBhblxuICAgICAgLy8gZW50cnktcG9pbnQgKGV2ZW4gaWYgaXQgaXMgYW4gaWdub3JlZCBvbmUpLlxuICAgICAgY29uc3QgcG9zc2libGVFbnRyeVBvaW50UGF0aCA9IGlzRGlyZWN0b3J5ID8gYWJzb2x1dGVQYXRoIDogc3RyaXBKc0V4dGVuc2lvbihhYnNvbHV0ZVBhdGgpO1xuICAgICAgY29uc3Qgc3ViRW50cnlQb2ludCA9XG4gICAgICAgICAgZ2V0RW50cnlQb2ludEluZm8odGhpcy5mcywgdGhpcy5jb25maWcsIHRoaXMubG9nZ2VyLCBwYWNrYWdlUGF0aCwgcG9zc2libGVFbnRyeVBvaW50UGF0aCk7XG4gICAgICBpZiAoaXNFbnRyeVBvaW50KHN1YkVudHJ5UG9pbnQpKSB7XG4gICAgICAgIGVudHJ5UG9pbnRzLnB1c2godGhpcy5yZXNvbHZlci5nZXRFbnRyeVBvaW50V2l0aERlcGVuZGVuY2llcyhzdWJFbnRyeVBvaW50KSk7XG4gICAgICB9XG5cbiAgICAgIGlmICghaXNEaXJlY3RvcnkpIHtcbiAgICAgICAgLy8gVGhpcyBwYXRoIGlzIG5vdCBhIGRpcmVjdG9yeSBzbyB3ZSBhcmUgZG9uZS5cbiAgICAgICAgY29udGludWU7XG4gICAgICB9XG5cbiAgICAgIC8vIElmIG5vdCBhbiBlbnRyeS1wb2ludCBpdHNlbGYsIHRoaXMgZGlyZWN0b3J5IG1heSBjb250YWluIGVudHJ5LXBvaW50cyBvZiBpdHMgb3duLlxuICAgICAgY29uc3QgY2FuQ29udGFpbkVudHJ5UG9pbnRzID1cbiAgICAgICAgICBzdWJFbnRyeVBvaW50ID09PSBOT19FTlRSWV9QT0lOVCB8fCBzdWJFbnRyeVBvaW50ID09PSBJTkNPTVBBVElCTEVfRU5UUllfUE9JTlQ7XG4gICAgICBjb25zdCBjaGlsZFBhdGhzID0gdGhpcy5mcy5yZWFkZGlyKGFic29sdXRlUGF0aCk7XG4gICAgICBpZiAoY2FuQ29udGFpbkVudHJ5UG9pbnRzICYmXG4gICAgICAgICAgY2hpbGRQYXRocy5zb21lKFxuICAgICAgICAgICAgICBjaGlsZFBhdGggPT4gY2hpbGRQYXRoLmVuZHNXaXRoKCcuanMnKSAmJlxuICAgICAgICAgICAgICAgICAgdGhpcy5mcy5zdGF0KHRoaXMuZnMucmVzb2x2ZShhYnNvbHV0ZVBhdGgsIGNoaWxkUGF0aCkpLmlzRmlsZSgpKSkge1xuICAgICAgICAvLyBXZSBkbyBub3QgY29uc2lkZXIgbm9uLWVudHJ5LXBvaW50IGRpcmVjdG9yaWVzIHRoYXQgY29udGFpbiBKUyBmaWxlcyBhcyB0aGV5IGFyZSB2ZXJ5XG4gICAgICAgIC8vIHVubGlrZWx5IHRvIGJlIGNvbnRhaW5lcnMgZm9yIHN1Yi1lbnRyeS1wb2ludHMuXG4gICAgICAgIGNvbnRpbnVlO1xuICAgICAgfVxuICAgICAgdGhpcy5jb2xsZWN0U2Vjb25kYXJ5RW50cnlQb2ludHMoZW50cnlQb2ludHMsIHBhY2thZ2VQYXRoLCBhYnNvbHV0ZVBhdGgsIGNoaWxkUGF0aHMpO1xuICAgIH1cbiAgfVxufVxuXG5mdW5jdGlvbiBzdHJpcEpzRXh0ZW5zaW9uPFQgZXh0ZW5kcyBzdHJpbmc+KGZpbGVQYXRoOiBUKTogVCB7XG4gIHJldHVybiBmaWxlUGF0aC5yZXBsYWNlKC9cXC5qcyQvLCAnJykgYXMgVDtcbn1cblxuZnVuY3Rpb24gaXNJZ25vcmFibGVQYXRoKHBhdGg6IFBhdGhTZWdtZW50KTogYm9vbGVhbiB7XG4gIHJldHVybiBwYXRoLnN0YXJ0c1dpdGgoJy4nKSB8fCBwYXRoID09PSAnbm9kZV9tb2R1bGVzJyB8fCBwYXRoID09PSBOR0NDX0RJUkVDVE9SWTtcbn1cbiJdfQ==