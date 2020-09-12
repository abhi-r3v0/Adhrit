(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/dependencies/module_resolver", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/ngcc/src/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.ResolvedDeepImport = exports.ResolvedRelativeModule = exports.ResolvedExternalModule = exports.ModuleResolver = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/utils");
    /**
     * This is a very cut-down implementation of the TypeScript module resolution strategy.
     *
     * It is specific to the needs of ngcc and is not intended to be a drop-in replacement
     * for the TS module resolver. It is used to compute the dependencies between entry-points
     * that may be compiled by ngcc.
     *
     * The algorithm only finds `.js` files for internal/relative imports and paths to
     * the folder containing the `package.json` of the entry-point for external imports.
     *
     * It can cope with nested `node_modules` folders and also supports `paths`/`baseUrl`
     * configuration properties, as provided in a `ts.CompilerOptions` object.
     */
    var ModuleResolver = /** @class */ (function () {
        function ModuleResolver(fs, pathMappings, relativeExtensions) {
            if (relativeExtensions === void 0) { relativeExtensions = [
                '', '.js', '/index.js'
            ]; }
            this.fs = fs;
            this.relativeExtensions = relativeExtensions;
            this.pathMappings = pathMappings ? this.processPathMappings(pathMappings) : [];
        }
        /**
         * Resolve an absolute path for the `moduleName` imported into a file at `fromPath`.
         * @param moduleName The name of the import to resolve.
         * @param fromPath The path to the file containing the import.
         * @returns A path to the resolved module or null if missing.
         * Specifically:
         *  * the absolute path to the package.json of an external module
         *  * a JavaScript file of an internal module
         *  * null if none exists.
         */
        ModuleResolver.prototype.resolveModuleImport = function (moduleName, fromPath) {
            if (utils_1.isRelativePath(moduleName)) {
                return this.resolveAsRelativePath(moduleName, fromPath);
            }
            else {
                return this.pathMappings.length && this.resolveByPathMappings(moduleName, fromPath) ||
                    this.resolveAsEntryPoint(moduleName, fromPath);
            }
        };
        /**
         * Convert the `pathMappings` into a collection of `PathMapper` functions.
         */
        ModuleResolver.prototype.processPathMappings = function (pathMappings) {
            var baseUrl = file_system_1.absoluteFrom(pathMappings.baseUrl);
            return Object.keys(pathMappings.paths).map(function (pathPattern) {
                var matcher = splitOnStar(pathPattern);
                var templates = pathMappings.paths[pathPattern].map(splitOnStar);
                return { matcher: matcher, templates: templates, baseUrl: baseUrl };
            });
        };
        /**
         * Try to resolve a module name, as a relative path, from the `fromPath`.
         *
         * As it is relative, it only looks for files that end in one of the `relativeExtensions`.
         * For example: `${moduleName}.js` or `${moduleName}/index.js`.
         * If neither of these files exist then the method returns `null`.
         */
        ModuleResolver.prototype.resolveAsRelativePath = function (moduleName, fromPath) {
            var resolvedPath = utils_1.resolveFileWithPostfixes(this.fs, file_system_1.resolve(file_system_1.dirname(fromPath), moduleName), this.relativeExtensions);
            return resolvedPath && new ResolvedRelativeModule(resolvedPath);
        };
        /**
         * Try to resolve the `moduleName`, by applying the computed `pathMappings` and
         * then trying to resolve the mapped path as a relative or external import.
         *
         * Whether the mapped path is relative is defined as it being "below the `fromPath`" and not
         * containing `node_modules`.
         *
         * If the mapped path is not relative but does not resolve to an external entry-point, then we
         * check whether it would have resolved to a relative path, in which case it is marked as a
         * "deep-import".
         */
        ModuleResolver.prototype.resolveByPathMappings = function (moduleName, fromPath) {
            var e_1, _a;
            var mappedPaths = this.findMappedPaths(moduleName);
            if (mappedPaths.length > 0) {
                var packagePath = this.findPackagePath(fromPath);
                if (packagePath !== null) {
                    try {
                        for (var mappedPaths_1 = tslib_1.__values(mappedPaths), mappedPaths_1_1 = mappedPaths_1.next(); !mappedPaths_1_1.done; mappedPaths_1_1 = mappedPaths_1.next()) {
                            var mappedPath = mappedPaths_1_1.value;
                            if (this.isEntryPoint(mappedPath)) {
                                return new ResolvedExternalModule(mappedPath);
                            }
                            var nonEntryPointImport = this.resolveAsRelativePath(mappedPath, fromPath);
                            if (nonEntryPointImport !== null) {
                                return isRelativeImport(packagePath, mappedPath) ? nonEntryPointImport :
                                    new ResolvedDeepImport(mappedPath);
                            }
                        }
                    }
                    catch (e_1_1) { e_1 = { error: e_1_1 }; }
                    finally {
                        try {
                            if (mappedPaths_1_1 && !mappedPaths_1_1.done && (_a = mappedPaths_1.return)) _a.call(mappedPaths_1);
                        }
                        finally { if (e_1) throw e_1.error; }
                    }
                }
            }
            return null;
        };
        /**
         * Try to resolve the `moduleName` as an external entry-point by searching the `node_modules`
         * folders up the tree for a matching `.../node_modules/${moduleName}`.
         *
         * If a folder is found but the path does not contain a `package.json` then it is marked as a
         * "deep-import".
         */
        ModuleResolver.prototype.resolveAsEntryPoint = function (moduleName, fromPath) {
            var folder = fromPath;
            while (!file_system_1.isRoot(folder)) {
                folder = file_system_1.dirname(folder);
                if (folder.endsWith('node_modules')) {
                    // Skip up if the folder already ends in node_modules
                    folder = file_system_1.dirname(folder);
                }
                var modulePath = file_system_1.resolve(folder, 'node_modules', moduleName);
                if (this.isEntryPoint(modulePath)) {
                    return new ResolvedExternalModule(modulePath);
                }
                else if (this.resolveAsRelativePath(modulePath, fromPath)) {
                    return new ResolvedDeepImport(modulePath);
                }
            }
            return null;
        };
        /**
         * Can we consider the given path as an entry-point to a package?
         *
         * This is achieved by checking for the existence of `${modulePath}/package.json`.
         */
        ModuleResolver.prototype.isEntryPoint = function (modulePath) {
            return this.fs.exists(file_system_1.join(modulePath, 'package.json'));
        };
        /**
         * Apply the `pathMappers` to the `moduleName` and return all the possible
         * paths that match.
         *
         * The mapped path is computed for each template in `mapping.templates` by
         * replacing the `matcher.prefix` and `matcher.postfix` strings in `path with the
         * `template.prefix` and `template.postfix` strings.
         */
        ModuleResolver.prototype.findMappedPaths = function (moduleName) {
            var _this = this;
            var matches = this.pathMappings.map(function (mapping) { return _this.matchMapping(moduleName, mapping); });
            var bestMapping;
            var bestMatch;
            for (var index = 0; index < this.pathMappings.length; index++) {
                var mapping = this.pathMappings[index];
                var match = matches[index];
                if (match !== null) {
                    // If this mapping had no wildcard then this must be a complete match.
                    if (!mapping.matcher.hasWildcard) {
                        bestMatch = match;
                        bestMapping = mapping;
                        break;
                    }
                    // The best matched mapping is the one with the longest prefix.
                    if (!bestMapping || mapping.matcher.prefix > bestMapping.matcher.prefix) {
                        bestMatch = match;
                        bestMapping = mapping;
                    }
                }
            }
            return (bestMapping !== undefined && bestMatch !== undefined) ?
                this.computeMappedTemplates(bestMapping, bestMatch) :
                [];
        };
        /**
         * Attempt to find a mapped path for the given `path` and a `mapping`.
         *
         * The `path` matches the `mapping` if if it starts with `matcher.prefix` and ends with
         * `matcher.postfix`.
         *
         * @returns the wildcard segment of a matched `path`, or `null` if no match.
         */
        ModuleResolver.prototype.matchMapping = function (path, mapping) {
            var _a = mapping.matcher, prefix = _a.prefix, postfix = _a.postfix, hasWildcard = _a.hasWildcard;
            if (hasWildcard) {
                return (path.startsWith(prefix) && path.endsWith(postfix)) ?
                    path.substring(prefix.length, path.length - postfix.length) :
                    null;
            }
            else {
                return (path === prefix) ? '' : null;
            }
        };
        /**
         * Compute the candidate paths from the given mapping's templates using the matched
         * string.
         */
        ModuleResolver.prototype.computeMappedTemplates = function (mapping, match) {
            return mapping.templates.map(function (template) { return file_system_1.resolve(mapping.baseUrl, template.prefix + match + template.postfix); });
        };
        /**
         * Search up the folder tree for the first folder that contains `package.json`
         * or `null` if none is found.
         */
        ModuleResolver.prototype.findPackagePath = function (path) {
            var folder = path;
            while (!file_system_1.isRoot(folder)) {
                folder = file_system_1.dirname(folder);
                if (this.fs.exists(file_system_1.join(folder, 'package.json'))) {
                    return folder;
                }
            }
            return null;
        };
        return ModuleResolver;
    }());
    exports.ModuleResolver = ModuleResolver;
    /**
     * A module that is external to the package doing the importing.
     * In this case we capture the folder containing the entry-point.
     */
    var ResolvedExternalModule = /** @class */ (function () {
        function ResolvedExternalModule(entryPointPath) {
            this.entryPointPath = entryPointPath;
        }
        return ResolvedExternalModule;
    }());
    exports.ResolvedExternalModule = ResolvedExternalModule;
    /**
     * A module that is relative to the module doing the importing, and so internal to the
     * source module's package.
     */
    var ResolvedRelativeModule = /** @class */ (function () {
        function ResolvedRelativeModule(modulePath) {
            this.modulePath = modulePath;
        }
        return ResolvedRelativeModule;
    }());
    exports.ResolvedRelativeModule = ResolvedRelativeModule;
    /**
     * A module that is external to the package doing the importing but pointing to a
     * module that is deep inside a package, rather than to an entry-point of the package.
     */
    var ResolvedDeepImport = /** @class */ (function () {
        function ResolvedDeepImport(importPath) {
            this.importPath = importPath;
        }
        return ResolvedDeepImport;
    }());
    exports.ResolvedDeepImport = ResolvedDeepImport;
    function splitOnStar(str) {
        var _a = tslib_1.__read(str.split('*', 2), 2), prefix = _a[0], postfix = _a[1];
        return { prefix: prefix, postfix: postfix || '', hasWildcard: postfix !== undefined };
    }
    function isRelativeImport(from, to) {
        return to.startsWith(from) && !to.includes('node_modules');
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibW9kdWxlX3Jlc29sdmVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL25nY2Mvc3JjL2RlcGVuZGVuY2llcy9tb2R1bGVfcmVzb2x2ZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztJQUFBOzs7Ozs7T0FNRztJQUNILDJFQUF3SDtJQUV4SCw4REFBa0U7SUFFbEU7Ozs7Ozs7Ozs7OztPQVlHO0lBQ0g7UUFHRSx3QkFBb0IsRUFBYyxFQUFFLFlBQTJCLEVBQVcsa0JBRXpFO1lBRnlFLG1DQUFBLEVBQUE7Z0JBQ3hFLEVBQUUsRUFBRSxLQUFLLEVBQUUsV0FBVzthQUN2QjtZQUZtQixPQUFFLEdBQUYsRUFBRSxDQUFZO1lBQXdDLHVCQUFrQixHQUFsQixrQkFBa0IsQ0FFM0Y7WUFDQyxJQUFJLENBQUMsWUFBWSxHQUFHLFlBQVksQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDLG1CQUFtQixDQUFDLFlBQVksQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUM7UUFDakYsQ0FBQztRQUVEOzs7Ozs7Ozs7V0FTRztRQUNILDRDQUFtQixHQUFuQixVQUFvQixVQUFrQixFQUFFLFFBQXdCO1lBQzlELElBQUksc0JBQWMsQ0FBQyxVQUFVLENBQUMsRUFBRTtnQkFDOUIsT0FBTyxJQUFJLENBQUMscUJBQXFCLENBQUMsVUFBVSxFQUFFLFFBQVEsQ0FBQyxDQUFDO2FBQ3pEO2lCQUFNO2dCQUNMLE9BQU8sSUFBSSxDQUFDLFlBQVksQ0FBQyxNQUFNLElBQUksSUFBSSxDQUFDLHFCQUFxQixDQUFDLFVBQVUsRUFBRSxRQUFRLENBQUM7b0JBQy9FLElBQUksQ0FBQyxtQkFBbUIsQ0FBQyxVQUFVLEVBQUUsUUFBUSxDQUFDLENBQUM7YUFDcEQ7UUFDSCxDQUFDO1FBRUQ7O1dBRUc7UUFDSyw0Q0FBbUIsR0FBM0IsVUFBNEIsWUFBMEI7WUFDcEQsSUFBTSxP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QyxNQUFNLFFBQUEsRUFBRSxPQUFPLEVBQUUsT0FBTyxJQUFJLEVBQUUsRUFBRSxXQUFXLEVBQUUsT0FBTyxLQUFLLFNBQVMsRUFBQyxDQUFDO0lBQzlFLENBQUM7SUFjRCxTQUFTLGdCQUFnQixDQUFDLElBQW9CLEVBQUUsRUFBa0I7UUFDaEUsT0FBTyxFQUFFLENBQUMsVUFBVSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLFFBQVEsQ0FBQyxjQUFjLENBQUMsQ0FBQztJQUM3RCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQge2Fic29sdXRlRnJvbSwgQWJzb2x1dGVGc1BhdGgsIGRpcm5hbWUsIEZpbGVTeXN0ZW0sIGlzUm9vdCwgam9pbiwgcmVzb2x2ZX0gZnJvbSAnLi4vLi4vLi4vc3JjL25ndHNjL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7UGF0aE1hcHBpbmdzfSBmcm9tICcuLi9wYXRoX21hcHBpbmdzJztcbmltcG9ydCB7aXNSZWxhdGl2ZVBhdGgsIHJlc29sdmVGaWxlV2l0aFBvc3RmaXhlc30gZnJvbSAnLi4vdXRpbHMnO1xuXG4vKipcbiAqIFRoaXMgaXMgYSB2ZXJ5IGN1dC1kb3duIGltcGxlbWVudGF0aW9uIG9mIHRoZSBUeXBlU2NyaXB0IG1vZHVsZSByZXNvbHV0aW9uIHN0cmF0ZWd5LlxuICpcbiAqIEl0IGlzIHNwZWNpZmljIHRvIHRoZSBuZWVkcyBvZiBuZ2NjIGFuZCBpcyBub3QgaW50ZW5kZWQgdG8gYmUgYSBkcm9wLWluIHJlcGxhY2VtZW50XG4gKiBmb3IgdGhlIFRTIG1vZHVsZSByZXNvbHZlci4gSXQgaXMgdXNlZCB0byBjb21wdXRlIHRoZSBkZXBlbmRlbmNpZXMgYmV0d2VlbiBlbnRyeS1wb2ludHNcbiAqIHRoYXQgbWF5IGJlIGNvbXBpbGVkIGJ5IG5nY2MuXG4gKlxuICogVGhlIGFsZ29yaXRobSBvbmx5IGZpbmRzIGAuanNgIGZpbGVzIGZvciBpbnRlcm5hbC9yZWxhdGl2ZSBpbXBvcnRzIGFuZCBwYXRocyB0b1xuICogdGhlIGZvbGRlciBjb250YWluaW5nIHRoZSBgcGFja2FnZS5qc29uYCBvZiB0aGUgZW50cnktcG9pbnQgZm9yIGV4dGVybmFsIGltcG9ydHMuXG4gKlxuICogSXQgY2FuIGNvcGUgd2l0aCBuZXN0ZWQgYG5vZGVfbW9kdWxlc2AgZm9sZGVycyBhbmQgYWxzbyBzdXBwb3J0cyBgcGF0aHNgL2BiYXNlVXJsYFxuICogY29uZmlndXJhdGlvbiBwcm9wZXJ0aWVzLCBhcyBwcm92aWRlZCBpbiBhIGB0cy5Db21waWxlck9wdGlvbnNgIG9iamVjdC5cbiAqL1xuZXhwb3J0IGNsYXNzIE1vZHVsZVJlc29sdmVyIHtcbiAgcHJpdmF0ZSBwYXRoTWFwcGluZ3M6IFByb2Nlc3NlZFBhdGhNYXBwaW5nW107XG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSBmczogRmlsZVN5c3RlbSwgcGF0aE1hcHBpbmdzPzogUGF0aE1hcHBpbmdzLCByZWFkb25seSByZWxhdGl2ZUV4dGVuc2lvbnMgPSBbXG4gICAgJycsICcuanMnLCAnL2luZGV4LmpzJ1xuICBdKSB7XG4gICAgdGhpcy5wYXRoTWFwcGluZ3MgPSBwYXRoTWFwcGluZ3MgPyB0aGlzLnByb2Nlc3NQYXRoTWFwcGluZ3MocGF0aE1hcHBpbmdzKSA6IFtdO1xuICB9XG5cbiAgLyoqXG4gICAqIFJlc29sdmUgYW4gYWJzb2x1dGUgcGF0aCBmb3IgdGhlIGBtb2R1bGVOYW1lYCBpbXBvcnRlZCBpbnRvIGEgZmlsZSBhdCBgZnJvbVBhdGhgLlxuICAgKiBAcGFyYW0gbW9kdWxlTmFtZSBUaGUgbmFtZSBvZiB0aGUgaW1wb3J0IHRvIHJlc29sdmUuXG4gICAqIEBwYXJhbSBmcm9tUGF0aCBUaGUgcGF0aCB0byB0aGUgZmlsZSBjb250YWluaW5nIHRoZSBpbXBvcnQuXG4gICAqIEByZXR1cm5zIEEgcGF0aCB0byB0aGUgcmVzb2x2ZWQgbW9kdWxlIG9yIG51bGwgaWYgbWlzc2luZy5cbiAgICogU3BlY2lmaWNhbGx5OlxuICAgKiAgKiB0aGUgYWJzb2x1dGUgcGF0aCB0byB0aGUgcGFja2FnZS5qc29uIG9mIGFuIGV4dGVybmFsIG1vZHVsZVxuICAgKiAgKiBhIEphdmFTY3JpcHQgZmlsZSBvZiBhbiBpbnRlcm5hbCBtb2R1bGVcbiAgICogICogbnVsbCBpZiBub25lIGV4aXN0cy5cbiAgICovXG4gIHJlc29sdmVNb2R1bGVJbXBvcnQobW9kdWxlTmFtZTogc3RyaW5nLCBmcm9tUGF0aDogQWJzb2x1dGVGc1BhdGgpOiBSZXNvbHZlZE1vZHVsZXxudWxsIHtcbiAgICBpZiAoaXNSZWxhdGl2ZVBhdGgobW9kdWxlTmFtZSkpIHtcbiAgICAgIHJldHVybiB0aGlzLnJlc29sdmVBc1JlbGF0aXZlUGF0aChtb2R1bGVOYW1lLCBmcm9tUGF0aCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHJldHVybiB0aGlzLnBhdGhNYXBwaW5ncy5sZW5ndGggJiYgdGhpcy5yZXNvbHZlQnlQYXRoTWFwcGluZ3MobW9kdWxlTmFtZSwgZnJvbVBhdGgpIHx8XG4gICAgICAgICAgdGhpcy5yZXNvbHZlQXNFbnRyeVBvaW50KG1vZHVsZU5hbWUsIGZyb21QYXRoKTtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogQ29udmVydCB0aGUgYHBhdGhNYXBwaW5nc2AgaW50byBhIGNvbGxlY3Rpb24gb2YgYFBhdGhNYXBwZXJgIGZ1bmN0aW9ucy5cbiAgICovXG4gIHByaXZhdGUgcHJvY2Vzc1BhdGhNYXBwaW5ncyhwYXRoTWFwcGluZ3M6IFBhdGhNYXBwaW5ncyk6IFByb2Nlc3NlZFBhdGhNYXBwaW5nW10ge1xuICAgIGNvbnN0IGJhc2VVcmwgPSBhYnNvbHV0ZUZyb20ocGF0aE1hcHBpbmdzLmJhc2VVcmwpO1xuICAgIHJldHVybiBPYmplY3Qua2V5cyhwYXRoTWFwcGluZ3MucGF0aHMpLm1hcChwYXRoUGF0dGVybiA9PiB7XG4gICAgICBjb25zdCBtYXRjaGVyID0gc3BsaXRPblN0YXIocGF0aFBhdHRlcm4pO1xuICAgICAgY29uc3QgdGVtcGxhdGVzID0gcGF0aE1hcHBpbmdzLnBhdGhzW3BhdGhQYXR0ZXJuXS5tYXAoc3BsaXRPblN0YXIpO1xuICAgICAgcmV0dXJuIHttYXRjaGVyLCB0ZW1wbGF0ZXMsIGJhc2VVcmx9O1xuICAgIH0pO1xuICB9XG5cbiAgLyoqXG4gICAqIFRyeSB0byByZXNvbHZlIGEgbW9kdWxlIG5hbWUsIGFzIGEgcmVsYXRpdmUgcGF0aCwgZnJvbSB0aGUgYGZyb21QYXRoYC5cbiAgICpcbiAgICogQXMgaXQgaXMgcmVsYXRpdmUsIGl0IG9ubHkgbG9va3MgZm9yIGZpbGVzIHRoYXQgZW5kIGluIG9uZSBvZiB0aGUgYHJlbGF0aXZlRXh0ZW5zaW9uc2AuXG4gICAqIEZvciBleGFtcGxlOiBgJHttb2R1bGVOYW1lfS5qc2Agb3IgYCR7bW9kdWxlTmFtZX0vaW5kZXguanNgLlxuICAgKiBJZiBuZWl0aGVyIG9mIHRoZXNlIGZpbGVzIGV4aXN0IHRoZW4gdGhlIG1ldGhvZCByZXR1cm5zIGBudWxsYC5cbiAgICovXG4gIHByaXZhdGUgcmVzb2x2ZUFzUmVsYXRpdmVQYXRoKG1vZHVsZU5hbWU6IHN0cmluZywgZnJvbVBhdGg6IEFic29sdXRlRnNQYXRoKTogUmVzb2x2ZWRNb2R1bGV8bnVsbCB7XG4gICAgY29uc3QgcmVzb2x2ZWRQYXRoID0gcmVzb2x2ZUZpbGVXaXRoUG9zdGZpeGVzKFxuICAgICAgICB0aGlzLmZzLCByZXNvbHZlKGRpcm5hbWUoZnJvbVBhdGgpLCBtb2R1bGVOYW1lKSwgdGhpcy5yZWxhdGl2ZUV4dGVuc2lvbnMpO1xuICAgIHJldHVybiByZXNvbHZlZFBhdGggJiYgbmV3IFJlc29sdmVkUmVsYXRpdmVNb2R1bGUocmVzb2x2ZWRQYXRoKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBUcnkgdG8gcmVzb2x2ZSB0aGUgYG1vZHVsZU5hbWVgLCBieSBhcHBseWluZyB0aGUgY29tcHV0ZWQgYHBhdGhNYXBwaW5nc2AgYW5kXG4gICAqIHRoZW4gdHJ5aW5nIHRvIHJlc29sdmUgdGhlIG1hcHBlZCBwYXRoIGFzIGEgcmVsYXRpdmUgb3IgZXh0ZXJuYWwgaW1wb3J0LlxuICAgKlxuICAgKiBXaGV0aGVyIHRoZSBtYXBwZWQgcGF0aCBpcyByZWxhdGl2ZSBpcyBkZWZpbmVkIGFzIGl0IGJlaW5nIFwiYmVsb3cgdGhlIGBmcm9tUGF0aGBcIiBhbmQgbm90XG4gICAqIGNvbnRhaW5pbmcgYG5vZGVfbW9kdWxlc2AuXG4gICAqXG4gICAqIElmIHRoZSBtYXBwZWQgcGF0aCBpcyBub3QgcmVsYXRpdmUgYnV0IGRvZXMgbm90IHJlc29sdmUgdG8gYW4gZXh0ZXJuYWwgZW50cnktcG9pbnQsIHRoZW4gd2VcbiAgICogY2hlY2sgd2hldGhlciBpdCB3b3VsZCBoYXZlIHJlc29sdmVkIHRvIGEgcmVsYXRpdmUgcGF0aCwgaW4gd2hpY2ggY2FzZSBpdCBpcyBtYXJrZWQgYXMgYVxuICAgKiBcImRlZXAtaW1wb3J0XCIuXG4gICAqL1xuICBwcml2YXRlIHJlc29sdmVCeVBhdGhNYXBwaW5ncyhtb2R1bGVOYW1lOiBzdHJpbmcsIGZyb21QYXRoOiBBYnNvbHV0ZUZzUGF0aCk6IFJlc29sdmVkTW9kdWxlfG51bGwge1xuICAgIGNvbnN0IG1hcHBlZFBhdGhzID0gdGhpcy5maW5kTWFwcGVkUGF0aHMobW9kdWxlTmFtZSk7XG4gICAgaWYgKG1hcHBlZFBhdGhzLmxlbmd0aCA+IDApIHtcbiAgICAgIGNvbnN0IHBhY2thZ2VQYXRoID0gdGhpcy5maW5kUGFja2FnZVBhdGgoZnJvbVBhdGgpO1xuICAgICAgaWYgKHBhY2thZ2VQYXRoICE9PSBudWxsKSB7XG4gICAgICAgIGZvciAoY29uc3QgbWFwcGVkUGF0aCBvZiBtYXBwZWRQYXRocykge1xuICAgICAgICAgIGlmICh0aGlzLmlzRW50cnlQb2ludChtYXBwZWRQYXRoKSkge1xuICAgICAgICAgICAgcmV0dXJuIG5ldyBSZXNvbHZlZEV4dGVybmFsTW9kdWxlKG1hcHBlZFBhdGgpO1xuICAgICAgICAgIH1cbiAgICAgICAgICBjb25zdCBub25FbnRyeVBvaW50SW1wb3J0ID0gdGhpcy5yZXNvbHZlQXNSZWxhdGl2ZVBhdGgobWFwcGVkUGF0aCwgZnJvbVBhdGgpO1xuICAgICAgICAgIGlmIChub25FbnRyeVBvaW50SW1wb3J0ICE9PSBudWxsKSB7XG4gICAgICAgICAgICByZXR1cm4gaXNSZWxhdGl2ZUltcG9ydChwYWNrYWdlUGF0aCwgbWFwcGVkUGF0aCkgPyBub25FbnRyeVBvaW50SW1wb3J0IDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG5ldyBSZXNvbHZlZERlZXBJbXBvcnQobWFwcGVkUGF0aCk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgLyoqXG4gICAqIFRyeSB0byByZXNvbHZlIHRoZSBgbW9kdWxlTmFtZWAgYXMgYW4gZXh0ZXJuYWwgZW50cnktcG9pbnQgYnkgc2VhcmNoaW5nIHRoZSBgbm9kZV9tb2R1bGVzYFxuICAgKiBmb2xkZXJzIHVwIHRoZSB0cmVlIGZvciBhIG1hdGNoaW5nIGAuLi4vbm9kZV9tb2R1bGVzLyR7bW9kdWxlTmFtZX1gLlxuICAgKlxuICAgKiBJZiBhIGZvbGRlciBpcyBmb3VuZCBidXQgdGhlIHBhdGggZG9lcyBub3QgY29udGFpbiBhIGBwYWNrYWdlLmpzb25gIHRoZW4gaXQgaXMgbWFya2VkIGFzIGFcbiAgICogXCJkZWVwLWltcG9ydFwiLlxuICAgKi9cbiAgcHJpdmF0ZSByZXNvbHZlQXNFbnRyeVBvaW50KG1vZHVsZU5hbWU6IHN0cmluZywgZnJvbVBhdGg6IEFic29sdXRlRnNQYXRoKTogUmVzb2x2ZWRNb2R1bGV8bnVsbCB7XG4gICAgbGV0IGZvbGRlciA9IGZyb21QYXRoO1xuICAgIHdoaWxlICghaXNSb290KGZvbGRlcikpIHtcbiAgICAgIGZvbGRlciA9IGRpcm5hbWUoZm9sZGVyKTtcbiAgICAgIGlmIChmb2xkZXIuZW5kc1dpdGgoJ25vZGVfbW9kdWxlcycpKSB7XG4gICAgICAgIC8vIFNraXAgdXAgaWYgdGhlIGZvbGRlciBhbHJlYWR5IGVuZHMgaW4gbm9kZV9tb2R1bGVzXG4gICAgICAgIGZvbGRlciA9IGRpcm5hbWUoZm9sZGVyKTtcbiAgICAgIH1cbiAgICAgIGNvbnN0IG1vZHVsZVBhdGggPSByZXNvbHZlKGZvbGRlciwgJ25vZGVfbW9kdWxlcycsIG1vZHVsZU5hbWUpO1xuICAgICAgaWYgKHRoaXMuaXNFbnRyeVBvaW50KG1vZHVsZVBhdGgpKSB7XG4gICAgICAgIHJldHVybiBuZXcgUmVzb2x2ZWRFeHRlcm5hbE1vZHVsZShtb2R1bGVQYXRoKTtcbiAgICAgIH0gZWxzZSBpZiAodGhpcy5yZXNvbHZlQXNSZWxhdGl2ZVBhdGgobW9kdWxlUGF0aCwgZnJvbVBhdGgpKSB7XG4gICAgICAgIHJldHVybiBuZXcgUmVzb2x2ZWREZWVwSW1wb3J0KG1vZHVsZVBhdGgpO1xuICAgICAgfVxuICAgIH1cbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuXG5cbiAgLyoqXG4gICAqIENhbiB3ZSBjb25zaWRlciB0aGUgZ2l2ZW4gcGF0aCBhcyBhbiBlbnRyeS1wb2ludCB0byBhIHBhY2thZ2U/XG4gICAqXG4gICAqIFRoaXMgaXMgYWNoaWV2ZWQgYnkgY2hlY2tpbmcgZm9yIHRoZSBleGlzdGVuY2Ugb2YgYCR7bW9kdWxlUGF0aH0vcGFja2FnZS5qc29uYC5cbiAgICovXG4gIHByaXZhdGUgaXNFbnRyeVBvaW50KG1vZHVsZVBhdGg6IEFic29sdXRlRnNQYXRoKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRoaXMuZnMuZXhpc3RzKGpvaW4obW9kdWxlUGF0aCwgJ3BhY2thZ2UuanNvbicpKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBBcHBseSB0aGUgYHBhdGhNYXBwZXJzYCB0byB0aGUgYG1vZHVsZU5hbWVgIGFuZCByZXR1cm4gYWxsIHRoZSBwb3NzaWJsZVxuICAgKiBwYXRocyB0aGF0IG1hdGNoLlxuICAgKlxuICAgKiBUaGUgbWFwcGVkIHBhdGggaXMgY29tcHV0ZWQgZm9yIGVhY2ggdGVtcGxhdGUgaW4gYG1hcHBpbmcudGVtcGxhdGVzYCBieVxuICAgKiByZXBsYWNpbmcgdGhlIGBtYXRjaGVyLnByZWZpeGAgYW5kIGBtYXRjaGVyLnBvc3RmaXhgIHN0cmluZ3MgaW4gYHBhdGggd2l0aCB0aGVcbiAgICogYHRlbXBsYXRlLnByZWZpeGAgYW5kIGB0ZW1wbGF0ZS5wb3N0Zml4YCBzdHJpbmdzLlxuICAgKi9cbiAgcHJpdmF0ZSBmaW5kTWFwcGVkUGF0aHMobW9kdWxlTmFtZTogc3RyaW5nKTogQWJzb2x1dGVGc1BhdGhbXSB7XG4gICAgY29uc3QgbWF0Y2hlcyA9IHRoaXMucGF0aE1hcHBpbmdzLm1hcChtYXBwaW5nID0+IHRoaXMubWF0Y2hNYXBwaW5nKG1vZHVsZU5hbWUsIG1hcHBpbmcpKTtcblxuICAgIGxldCBiZXN0TWFwcGluZzogUHJvY2Vzc2VkUGF0aE1hcHBpbmd8dW5kZWZpbmVkO1xuICAgIGxldCBiZXN0TWF0Y2g6IHN0cmluZ3x1bmRlZmluZWQ7XG5cbiAgICBmb3IgKGxldCBpbmRleCA9IDA7IGluZGV4IDwgdGhpcy5wYXRoTWFwcGluZ3MubGVuZ3RoOyBpbmRleCsrKSB7XG4gICAgICBjb25zdCBtYXBwaW5nID0gdGhpcy5wYXRoTWFwcGluZ3NbaW5kZXhdO1xuICAgICAgY29uc3QgbWF0Y2ggPSBtYXRjaGVzW2luZGV4XTtcbiAgICAgIGlmIChtYXRjaCAhPT0gbnVsbCkge1xuICAgICAgICAvLyBJZiB0aGlzIG1hcHBpbmcgaGFkIG5vIHdpbGRjYXJkIHRoZW4gdGhpcyBtdXN0IGJlIGEgY29tcGxldGUgbWF0Y2guXG4gICAgICAgIGlmICghbWFwcGluZy5tYXRjaGVyLmhhc1dpbGRjYXJkKSB7XG4gICAgICAgICAgYmVzdE1hdGNoID0gbWF0Y2g7XG4gICAgICAgICAgYmVzdE1hcHBpbmcgPSBtYXBwaW5nO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICAgIC8vIFRoZSBiZXN0IG1hdGNoZWQgbWFwcGluZyBpcyB0aGUgb25lIHdpdGggdGhlIGxvbmdlc3QgcHJlZml4LlxuICAgICAgICBpZiAoIWJlc3RNYXBwaW5nIHx8IG1hcHBpbmcubWF0Y2hlci5wcmVmaXggPiBiZXN0TWFwcGluZy5tYXRjaGVyLnByZWZpeCkge1xuICAgICAgICAgIGJlc3RNYXRjaCA9IG1hdGNoO1xuICAgICAgICAgIGJlc3RNYXBwaW5nID0gbWFwcGluZztcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICAgIHJldHVybiAoYmVzdE1hcHBpbmcgIT09IHVuZGVmaW5lZCAmJiBiZXN0TWF0Y2ggIT09IHVuZGVmaW5lZCkgP1xuICAgICAgICB0aGlzLmNvbXB1dGVNYXBwZWRUZW1wbGF0ZXMoYmVzdE1hcHBpbmcsIGJlc3RNYXRjaCkgOlxuICAgICAgICBbXTtcbiAgfVxuXG4gIC8qKlxuICAgKiBBdHRlbXB0IHRvIGZpbmQgYSBtYXBwZWQgcGF0aCBmb3IgdGhlIGdpdmVuIGBwYXRoYCBhbmQgYSBgbWFwcGluZ2AuXG4gICAqXG4gICAqIFRoZSBgcGF0aGAgbWF0Y2hlcyB0aGUgYG1hcHBpbmdgIGlmIGlmIGl0IHN0YXJ0cyB3aXRoIGBtYXRjaGVyLnByZWZpeGAgYW5kIGVuZHMgd2l0aFxuICAgKiBgbWF0Y2hlci5wb3N0Zml4YC5cbiAgICpcbiAgICogQHJldHVybnMgdGhlIHdpbGRjYXJkIHNlZ21lbnQgb2YgYSBtYXRjaGVkIGBwYXRoYCwgb3IgYG51bGxgIGlmIG5vIG1hdGNoLlxuICAgKi9cbiAgcHJpdmF0ZSBtYXRjaE1hcHBpbmcocGF0aDogc3RyaW5nLCBtYXBwaW5nOiBQcm9jZXNzZWRQYXRoTWFwcGluZyk6IHN0cmluZ3xudWxsIHtcbiAgICBjb25zdCB7cHJlZml4LCBwb3N0Zml4LCBoYXNXaWxkY2FyZH0gPSBtYXBwaW5nLm1hdGNoZXI7XG4gICAgaWYgKGhhc1dpbGRjYXJkKSB7XG4gICAgICByZXR1cm4gKHBhdGguc3RhcnRzV2l0aChwcmVmaXgpICYmIHBhdGguZW5kc1dpdGgocG9zdGZpeCkpID9cbiAgICAgICAgICBwYXRoLnN1YnN0cmluZyhwcmVmaXgubGVuZ3RoLCBwYXRoLmxlbmd0aCAtIHBvc3RmaXgubGVuZ3RoKSA6XG4gICAgICAgICAgbnVsbDtcbiAgICB9IGVsc2Uge1xuICAgICAgcmV0dXJuIChwYXRoID09PSBwcmVmaXgpID8gJycgOiBudWxsO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBDb21wdXRlIHRoZSBjYW5kaWRhdGUgcGF0aHMgZnJvbSB0aGUgZ2l2ZW4gbWFwcGluZydzIHRlbXBsYXRlcyB1c2luZyB0aGUgbWF0Y2hlZFxuICAgKiBzdHJpbmcuXG4gICAqL1xuICBwcml2YXRlIGNvbXB1dGVNYXBwZWRUZW1wbGF0ZXMobWFwcGluZzogUHJvY2Vzc2VkUGF0aE1hcHBpbmcsIG1hdGNoOiBzdHJpbmcpIHtcbiAgICByZXR1cm4gbWFwcGluZy50ZW1wbGF0ZXMubWFwKFxuICAgICAgICB0ZW1wbGF0ZSA9PiByZXNvbHZlKG1hcHBpbmcuYmFzZVVybCwgdGVtcGxhdGUucHJlZml4ICsgbWF0Y2ggKyB0ZW1wbGF0ZS5wb3N0Zml4KSk7XG4gIH1cblxuICAvKipcbiAgICogU2VhcmNoIHVwIHRoZSBmb2xkZXIgdHJlZSBmb3IgdGhlIGZpcnN0IGZvbGRlciB0aGF0IGNvbnRhaW5zIGBwYWNrYWdlLmpzb25gXG4gICAqIG9yIGBudWxsYCBpZiBub25lIGlzIGZvdW5kLlxuICAgKi9cbiAgcHJpdmF0ZSBmaW5kUGFja2FnZVBhdGgocGF0aDogQWJzb2x1dGVGc1BhdGgpOiBBYnNvbHV0ZUZzUGF0aHxudWxsIHtcbiAgICBsZXQgZm9sZGVyID0gcGF0aDtcbiAgICB3aGlsZSAoIWlzUm9vdChmb2xkZXIpKSB7XG4gICAgICBmb2xkZXIgPSBkaXJuYW1lKGZvbGRlcik7XG4gICAgICBpZiAodGhpcy5mcy5leGlzdHMoam9pbihmb2xkZXIsICdwYWNrYWdlLmpzb24nKSkpIHtcbiAgICAgICAgcmV0dXJuIGZvbGRlcjtcbiAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbn1cblxuLyoqIFRoZSByZXN1bHQgb2YgcmVzb2x2aW5nIGFuIGltcG9ydCB0byBhIG1vZHVsZS4gKi9cbmV4cG9ydCB0eXBlIFJlc29sdmVkTW9kdWxlID0gUmVzb2x2ZWRFeHRlcm5hbE1vZHVsZXxSZXNvbHZlZFJlbGF0aXZlTW9kdWxlfFJlc29sdmVkRGVlcEltcG9ydDtcblxuLyoqXG4gKiBBIG1vZHVsZSB0aGF0IGlzIGV4dGVybmFsIHRvIHRoZSBwYWNrYWdlIGRvaW5nIHRoZSBpbXBvcnRpbmcuXG4gKiBJbiB0aGlzIGNhc2Ugd2UgY2FwdHVyZSB0aGUgZm9sZGVyIGNvbnRhaW5pbmcgdGhlIGVudHJ5LXBvaW50LlxuICovXG5leHBvcnQgY2xhc3MgUmVzb2x2ZWRFeHRlcm5hbE1vZHVsZSB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBlbnRyeVBvaW50UGF0aDogQWJzb2x1dGVGc1BhdGgpIHt9XG59XG5cbi8qKlxuICogQSBtb2R1bGUgdGhhdCBpcyByZWxhdGl2ZSB0byB0aGUgbW9kdWxlIGRvaW5nIHRoZSBpbXBvcnRpbmcsIGFuZCBzbyBpbnRlcm5hbCB0byB0aGVcbiAqIHNvdXJjZSBtb2R1bGUncyBwYWNrYWdlLlxuICovXG5leHBvcnQgY2xhc3MgUmVzb2x2ZWRSZWxhdGl2ZU1vZHVsZSB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBtb2R1bGVQYXRoOiBBYnNvbHV0ZUZzUGF0aCkge31cbn1cblxuLyoqXG4gKiBBIG1vZHVsZSB0aGF0IGlzIGV4dGVybmFsIHRvIHRoZSBwYWNrYWdlIGRvaW5nIHRoZSBpbXBvcnRpbmcgYnV0IHBvaW50aW5nIHRvIGFcbiAqIG1vZHVsZSB0aGF0IGlzIGRlZXAgaW5zaWRlIGEgcGFja2FnZSwgcmF0aGVyIHRoYW4gdG8gYW4gZW50cnktcG9pbnQgb2YgdGhlIHBhY2thZ2UuXG4gKi9cbmV4cG9ydCBjbGFzcyBSZXNvbHZlZERlZXBJbXBvcnQge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgaW1wb3J0UGF0aDogQWJzb2x1dGVGc1BhdGgpIHt9XG59XG5cbmZ1bmN0aW9uIHNwbGl0T25TdGFyKHN0cjogc3RyaW5nKTogUGF0aE1hcHBpbmdQYXR0ZXJuIHtcbiAgY29uc3QgW3ByZWZpeCwgcG9zdGZpeF0gPSBzdHIuc3BsaXQoJyonLCAyKTtcbiAgcmV0dXJuIHtwcmVmaXgsIHBvc3RmaXg6IHBvc3RmaXggfHwgJycsIGhhc1dpbGRjYXJkOiBwb3N0Zml4ICE9PSB1bmRlZmluZWR9O1xufVxuXG5pbnRlcmZhY2UgUHJvY2Vzc2VkUGF0aE1hcHBpbmcge1xuICBiYXNlVXJsOiBBYnNvbHV0ZUZzUGF0aDtcbiAgbWF0Y2hlcjogUGF0aE1hcHBpbmdQYXR0ZXJuO1xuICB0ZW1wbGF0ZXM6IFBhdGhNYXBwaW5nUGF0dGVybltdO1xufVxuXG5pbnRlcmZhY2UgUGF0aE1hcHBpbmdQYXR0ZXJuIHtcbiAgcHJlZml4OiBzdHJpbmc7XG4gIHBvc3RmaXg6IHN0cmluZztcbiAgaGFzV2lsZGNhcmQ6IGJvb2xlYW47XG59XG5cbmZ1bmN0aW9uIGlzUmVsYXRpdmVJbXBvcnQoZnJvbTogQWJzb2x1dGVGc1BhdGgsIHRvOiBBYnNvbHV0ZUZzUGF0aCkge1xuICByZXR1cm4gdG8uc3RhcnRzV2l0aChmcm9tKSAmJiAhdG8uaW5jbHVkZXMoJ25vZGVfbW9kdWxlcycpO1xufVxuIl19