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
        define("@angular/compiler-cli/ngcc/src/dependencies/dependency_resolver", ["require", "exports", "tslib", "dependency-graph", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/ngcc/src/packages/entry_point", "@angular/compiler-cli/ngcc/src/dependencies/dependency_host"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.DependencyResolver = void 0;
    var tslib_1 = require("tslib");
    var dependency_graph_1 = require("dependency-graph");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var entry_point_1 = require("@angular/compiler-cli/ngcc/src/packages/entry_point");
    var dependency_host_1 = require("@angular/compiler-cli/ngcc/src/dependencies/dependency_host");
    var builtinNodeJsModules = new Set(require('module').builtinModules);
    /**
     * A class that resolves dependencies between entry-points.
     */
    var DependencyResolver = /** @class */ (function () {
        function DependencyResolver(fs, logger, config, hosts, typingsHost) {
            this.fs = fs;
            this.logger = logger;
            this.config = config;
            this.hosts = hosts;
            this.typingsHost = typingsHost;
        }
        /**
         * Sort the array of entry points so that the dependant entry points always come later than
         * their dependencies in the array.
         * @param entryPoints An array entry points to sort.
         * @param target If provided, only return entry-points depended on by this entry-point.
         * @returns the result of sorting the entry points by dependency.
         */
        DependencyResolver.prototype.sortEntryPointsByDependency = function (entryPoints, target) {
            var _a = this.computeDependencyGraph(entryPoints), invalidEntryPoints = _a.invalidEntryPoints, ignoredDependencies = _a.ignoredDependencies, graph = _a.graph;
            var sortedEntryPointNodes;
            if (target) {
                if (target.compiledByAngular && graph.hasNode(target.path)) {
                    sortedEntryPointNodes = graph.dependenciesOf(target.path);
                    sortedEntryPointNodes.push(target.path);
                }
                else {
                    sortedEntryPointNodes = [];
                }
            }
            else {
                sortedEntryPointNodes = graph.overallOrder();
            }
            return {
                entryPoints: sortedEntryPointNodes
                    .map(function (path) { return graph.getNodeData(path); }),
                graph: graph,
                invalidEntryPoints: invalidEntryPoints,
                ignoredDependencies: ignoredDependencies,
            };
        };
        DependencyResolver.prototype.getEntryPointWithDependencies = function (entryPoint) {
            var dependencies = dependency_host_1.createDependencyInfo();
            if (entryPoint.compiledByAngular) {
                // Only bother to compute dependencies of entry-points that have been compiled by Angular
                var formatInfo = this.getEntryPointFormatInfo(entryPoint);
                var host = this.hosts[formatInfo.format];
                if (!host) {
                    throw new Error("Could not find a suitable format for computing dependencies of entry-point: '" + entryPoint.path + "'.");
                }
                host.collectDependencies(formatInfo.path, dependencies);
                this.typingsHost.collectDependencies(entryPoint.typings, dependencies);
            }
            return { entryPoint: entryPoint, depInfo: dependencies };
        };
        /**
         * Computes a dependency graph of the given entry-points.
         *
         * The graph only holds entry-points that ngcc cares about and whose dependencies
         * (direct and transitive) all exist.
         */
        DependencyResolver.prototype.computeDependencyGraph = function (entryPoints) {
            var _this = this;
            var invalidEntryPoints = [];
            var ignoredDependencies = [];
            var graph = new dependency_graph_1.DepGraph();
            var angularEntryPoints = entryPoints.filter(function (e) { return e.entryPoint.compiledByAngular; });
            // Add the Angular compiled entry points to the graph as nodes
            angularEntryPoints.forEach(function (e) { return graph.addNode(e.entryPoint.path, e.entryPoint); });
            // Now add the dependencies between them
            angularEntryPoints.forEach(function (_a) {
                var entryPoint = _a.entryPoint, _b = _a.depInfo, dependencies = _b.dependencies, missing = _b.missing, deepImports = _b.deepImports;
                var missingDependencies = Array.from(missing).filter(function (dep) { return !builtinNodeJsModules.has(dep); });
                if (missingDependencies.length > 0 && !entryPoint.ignoreMissingDependencies) {
                    // This entry point has dependencies that are missing
                    // so remove it from the graph.
                    removeNodes(entryPoint, missingDependencies);
                }
                else {
                    dependencies.forEach(function (dependencyPath) {
                        if (!graph.hasNode(entryPoint.path)) {
                            // The entry-point has already been identified as invalid so we don't need
                            // to do any further work on it.
                        }
                        else if (graph.hasNode(dependencyPath)) {
                            // The entry-point is still valid (i.e. has no missing dependencies) and
                            // the dependency maps to an entry point that exists in the graph so add it
                            graph.addDependency(entryPoint.path, dependencyPath);
                        }
                        else if (invalidEntryPoints.some(function (i) { return i.entryPoint.path === dependencyPath; })) {
                            // The dependency path maps to an entry-point that was previously removed
                            // from the graph, so remove this entry-point as well.
                            removeNodes(entryPoint, [dependencyPath]);
                        }
                        else {
                            // The dependency path points to a package that ngcc does not care about.
                            ignoredDependencies.push({ entryPoint: entryPoint, dependencyPath: dependencyPath });
                        }
                    });
                }
                if (deepImports.size > 0) {
                    var notableDeepImports = _this.filterIgnorableDeepImports(entryPoint, deepImports);
                    if (notableDeepImports.length > 0) {
                        var imports = notableDeepImports.map(function (i) { return "'" + i + "'"; }).join(', ');
                        _this.logger.warn("Entry point '" + entryPoint.name + "' contains deep imports into " + imports + ". " +
                            "This is probably not a problem, but may cause the compilation of entry points to be out of order.");
                    }
                }
            });
            return { invalidEntryPoints: invalidEntryPoints, ignoredDependencies: ignoredDependencies, graph: graph };
            function removeNodes(entryPoint, missingDependencies) {
                var nodesToRemove = tslib_1.__spread([entryPoint.path], graph.dependantsOf(entryPoint.path));
                nodesToRemove.forEach(function (node) {
                    invalidEntryPoints.push({ entryPoint: graph.getNodeData(node), missingDependencies: missingDependencies });
                    graph.removeNode(node);
                });
            }
        };
        DependencyResolver.prototype.getEntryPointFormatInfo = function (entryPoint) {
            var e_1, _a;
            try {
                for (var SUPPORTED_FORMAT_PROPERTIES_1 = tslib_1.__values(entry_point_1.SUPPORTED_FORMAT_PROPERTIES), SUPPORTED_FORMAT_PROPERTIES_1_1 = SUPPORTED_FORMAT_PROPERTIES_1.next(); !SUPPORTED_FORMAT_PROPERTIES_1_1.done; SUPPORTED_FORMAT_PROPERTIES_1_1 = SUPPORTED_FORMAT_PROPERTIES_1.next()) {
                    var property = SUPPORTED_FORMAT_PROPERTIES_1_1.value;
                    var formatPath = entryPoint.packageJson[property];
                    if (formatPath === undefined)
                        continue;
                    var format = entry_point_1.getEntryPointFormat(this.fs, entryPoint, property);
                    if (format === undefined)
                        continue;
                    return { format: format, path: file_system_1.resolve(entryPoint.path, formatPath) };
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (SUPPORTED_FORMAT_PROPERTIES_1_1 && !SUPPORTED_FORMAT_PROPERTIES_1_1.done && (_a = SUPPORTED_FORMAT_PROPERTIES_1.return)) _a.call(SUPPORTED_FORMAT_PROPERTIES_1);
                }
                finally { if (e_1) throw e_1.error; }
            }
            throw new Error("There is no appropriate source code format in '" + entryPoint.path + "' entry-point.");
        };
        /**
         * Filter out the deepImports that can be ignored, according to this entryPoint's config.
         */
        DependencyResolver.prototype.filterIgnorableDeepImports = function (entryPoint, deepImports) {
            var version = (entryPoint.packageJson.version || null);
            var packageConfig = this.config.getPackageConfig(entryPoint.packageName, entryPoint.packagePath, version);
            var matchers = packageConfig.ignorableDeepImportMatchers;
            return Array.from(deepImports)
                .filter(function (deepImport) { return !matchers.some(function (matcher) { return matcher.test(deepImport); }); });
        };
        return DependencyResolver;
    }());
    exports.DependencyResolver = DependencyResolver;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGVwZW5kZW5jeV9yZXNvbHZlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9uZ2NjL3NyYy9kZXBlbmRlbmNpZXMvZGVwZW5kZW5jeV9yZXNvbHZlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBRUgscURBQTBDO0lBRTFDLDJFQUFtRjtJQUduRixtRkFBdUg7SUFHdkgsK0ZBQW1HO0lBRW5HLElBQU0sb0JBQW9CLEdBQUcsSUFBSSxHQUFHLENBQVMsT0FBTyxDQUFDLFFBQVEsQ0FBQyxDQUFDLGNBQWMsQ0FBQyxDQUFDO0lBK0QvRTs7T0FFRztJQUNIO1FBQ0UsNEJBQ1ksRUFBYyxFQUFVLE1BQWMsRUFBVSxNQUF5QixFQUN6RSxLQUF3RCxFQUN4RCxXQUEyQjtZQUYzQixPQUFFLEdBQUYsRUFBRSxDQUFZO1lBQVUsV0FBTSxHQUFOLE1BQU0sQ0FBUTtZQUFVLFdBQU0sR0FBTixNQUFNLENBQW1CO1lBQ3pFLFVBQUssR0FBTCxLQUFLLENBQW1EO1lBQ3hELGdCQUFXLEdBQVgsV0FBVyxDQUFnQjtRQUFHLENBQUM7UUFDM0M7Ozs7OztXQU1HO1FBQ0gsd0RBQTJCLEdBQTNCLFVBQTRCLFdBQXlDLEVBQUUsTUFBbUI7WUFFbEYsSUFBQSxLQUNGLElBQUksQ0FBQyxzQkFBc0IsQ0FBQyxXQUFXLENBQUMsRUFEckMsa0JBQWtCLHdCQUFBLEVBQUUsbUJBQW1CLHlCQUFBLEVBQUUsS0FBSyxXQUNULENBQUM7WUFFN0MsSUFBSSxxQkFBK0IsQ0FBQztZQUNwQyxJQUFJLE1BQU0sRUFBRTtnQkFDVixJQUFJLE1BQU0sQ0FBQyxpQkFBaUIsSUFBSSxLQUFLLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsRUFBRTtvQkFDMUQscUJBQXFCLEdBQUcsS0FBSyxDQUFDLGNBQWMsQ0FBQyxNQUFNLENBQUMs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LFVBQVUsQ0FBQyxJQUFJLEVBQUUsVUFBVSxDQUFDLEVBQUMsQ0FBQztpQkFDN0Q7Ozs7Ozs7OztZQUVELE1BQU0sSUFBSSxLQUFLLENBQ1gsb0RBQWtELFVBQVUsQ0FBQyxJQUFJLG1CQUFnQixDQUFDLENBQUM7UUFDekYsQ0FBQztRQUVEOztXQUVHO1FBQ0ssdURBQTBCLEdBQWxDLFVBQW1DLFVBQXNCLEVBQUUsV0FBZ0M7WUFFekYsSUFBTSxPQUFPLEdBQUcsQ0FBQyxVQUFVLENBQUMsV0FBVyxDQUFDLE9BQU8sSUFBSSxJQUFJLENBQWtCLENBQUM7WUFDMUUsSUFBTSxhQUFhLEdBQ2YsSUFBSSxDQUFDLE1BQU0sQ0FBQyxnQkFBZ0IsQ0FBQyxVQUFVLENBQUMsV0FBVyxFQUFFLFVBQVUsQ0FBQyxXQUFXLEVBQUUsT0FBTyxDQUFDLENBQUM7WUFDMUYsSUFBTSxRQUFRLEdBQUcsYUFBYSxDQUFDLDJCQUEyQixDQUFDO1lBQzNELE9BQU8sS0FBSyxDQUFDLElBQUksQ0FBQyxXQUFXLENBQUM7aUJBQ3pCLE1BQU0sQ0FBQyxVQUFBLFVBQVUsSUFBSSxPQUFBLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxVQUFBLE9BQU8sSUFBSSxPQUFBLE9BQU8sQ0FBQyxJQUFJLENBQUMsVUFBVSxDQUFDLEVBQXhCLENBQXdCLENBQUMsRUFBbkQsQ0FBbUQsQ0FBQyxDQUFDO1FBQ2pGLENBQUM7UUFDSCx5QkFBQztJQUFELENBQUMsQUFySkQsSUFxSkM7SUFySlksZ0RBQWtCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7RGVwR3JhcGh9IGZyb20gJ2RlcGVuZGVuY3ktZ3JhcGgnO1xuXG5pbXBvcnQge0Fic29sdXRlRnNQYXRoLCBGaWxlU3lzdGVtLCByZXNvbHZlfSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvZmlsZV9zeXN0ZW0nO1xuaW1wb3J0IHtMb2dnZXJ9IGZyb20gJy4uL2xvZ2dpbmcvbG9nZ2VyJztcbmltcG9ydCB7TmdjY0NvbmZpZ3VyYXRpb259IGZyb20gJy4uL3BhY2thZ2VzL2NvbmZpZ3VyYXRpb24nO1xuaW1wb3J0IHtFbnRyeVBvaW50LCBFbnRyeVBvaW50Rm9ybWF0LCBnZXRFbnRyeVBvaW50Rm9ybWF0LCBTVVBQT1JURURfRk9STUFUX1BST1BFUlRJRVN9IGZyb20gJy4uL3BhY2thZ2VzL2VudHJ5X3BvaW50JztcbmltcG9ydCB7UGFydGlhbGx5T3JkZXJlZExpc3R9IGZyb20gJy4uL3V0aWxzJztcblxuaW1wb3J0IHtjcmVhdGVEZXBlbmRlbmN5SW5mbywgRGVwZW5kZW5jeUhvc3QsIEVudHJ5UG9pbnRXaXRoRGVwZW5kZW5jaWVzfSBmcm9tICcuL2RlcGVuZGVuY3lfaG9zdCc7XG5cbmNvbnN0IGJ1aWx0aW5Ob2RlSnNNb2R1bGVzID0gbmV3IFNldDxzdHJpbmc+KHJlcXVpcmUoJ21vZHVsZScpLmJ1aWx0aW5Nb2R1bGVzKTtcblxuLyoqXG4gKiBIb2xkcyBpbmZvcm1hdGlvbiBhYm91dCBlbnRyeSBwb2ludHMgdGhhdCBhcmUgcmVtb3ZlZCBiZWNhdXNlXG4gKiB0aGV5IGhhdmUgZGVwZW5kZW5jaWVzIHRoYXQgYXJlIG1pc3NpbmcgKGRpcmVjdGx5IG9yIHRyYW5zaXRpdmVseSkuXG4gKlxuICogVGhpcyBtaWdodCBub3QgYmUgYW4gZXJyb3IsIGJlY2F1c2Ugc3VjaCBhbiBlbnRyeSBwb2ludCBtaWdodCBub3QgYWN0dWFsbHkgYmUgdXNlZFxuICogaW4gdGhlIGFwcGxpY2F0aW9uLiBJZiBpdCBpcyB1c2VkIHRoZW4gdGhlIGBuZ2NgIGFwcGxpY2F0aW9uIGNvbXBpbGF0aW9uIHdvdWxkXG4gKiBmYWlsIGFsc28sIHNvIHdlIGRvbid0IG5lZWQgbmdjYyB0byBjYXRjaCB0aGlzLlxuICpcbiAqIEZvciBleGFtcGxlLCBjb25zaWRlciBhbiBhcHBsaWNhdGlvbiB0aGF0IHVzZXMgdGhlIGBAYW5ndWxhci9yb3V0ZXJgIHBhY2thZ2UuXG4gKiBUaGlzIHBhY2thZ2UgaW5jbHVkZXMgYW4gZW50cnktcG9pbnQgY2FsbGVkIGBAYW5ndWxhci9yb3V0ZXIvdXBncmFkZWAsIHdoaWNoIGhhcyBhIGRlcGVuZGVuY3lcbiAqIG9uIHRoZSBgQGFuZ3VsYXIvdXBncmFkZWAgcGFja2FnZS5cbiAqIElmIHRoZSBhcHBsaWNhdGlvbiBuZXZlciB1c2VzIGNvZGUgZnJvbSBgQGFuZ3VsYXIvcm91dGVyL3VwZ3JhZGVgIHRoZW4gdGhlcmUgaXMgbm8gbmVlZCBmb3JcbiAqIGBAYW5ndWxhci91cGdyYWRlYCB0byBiZSBpbnN0YWxsZWQuXG4gKiBJbiB0aGlzIGNhc2UgdGhlIG5nY2MgdG9vbCBzaG91bGQganVzdCBpZ25vcmUgdGhlIGBAYW5ndWxhci9yb3V0ZXIvdXBncmFkZWAgZW5kLXBvaW50LlxuICovXG5leHBvcnQgaW50ZXJmYWNlIEludmFsaWRFbnRyeVBvaW50IHtcbiAgZW50cnlQb2ludDogRW50cnlQb2ludDtcbiAgbWlzc2luZ0RlcGVuZGVuY2llczogc3RyaW5nW107XG59XG5cbi8qKlxuICogSG9sZHMgaW5mb3JtYXRpb24gYWJvdXQgZGVwZW5kZW5jaWVzIG9mIGFuIGVudHJ5LXBvaW50IHRoYXQgZG8gbm90IG5lZWQgdG8gYmUgcHJvY2Vzc2VkXG4gKiBieSB0aGUgbmdjYyB0b29sLlxuICpcbiAqIEZvciBleGFtcGxlLCB0aGUgYHJ4anNgIHBhY2thZ2UgZG9lcyBub3QgY29udGFpbiBhbnkgQW5ndWxhciBkZWNvcmF0b3JzIHRoYXQgbmVlZCB0byBiZVxuICogY29tcGlsZWQgYW5kIHNvIHRoaXMgY2FuIGJlIHNhZmVseSBpZ25vcmVkIGJ5IG5nY2MuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgSWdub3JlZERlcGVuZGVuY3kge1xuICBlbnRyeVBvaW50OiBFbnRyeVBvaW50O1xuICBkZXBlbmRlbmN5UGF0aDogc3RyaW5nO1xufVxuXG5leHBvcnQgaW50ZXJmYWNlIERlcGVuZGVuY3lEaWFnbm9zdGljcyB7XG4gIGludmFsaWRFbnRyeVBvaW50czogSW52YWxpZEVudHJ5UG9pbnRbXTtcbiAgaWdub3JlZERlcGVuZGVuY2llczogSWdub3JlZERlcGVuZGVuY3lbXTtcbn1cblxuLyoqXG4gKiBSZXByZXNlbnRzIGEgcGFydGlhbGx5IG9yZGVyZWQgbGlzdCBvZiBlbnRyeS1wb2ludHMuXG4gKlxuICogVGhlIGVudHJ5LXBvaW50cycgb3JkZXIvcHJlY2VkZW5jZSBpcyBzdWNoIHRoYXQgZGVwZW5kZW50IGVudHJ5LXBvaW50cyBhbHdheXMgY29tZSBsYXRlciB0aGFuXG4gKiB0aGVpciBkZXBlbmRlbmNpZXMgaW4gdGhlIGxpc3QuXG4gKlxuICogU2VlIGBEZXBlbmRlbmN5UmVzb2x2ZXIjc29ydEVudHJ5UG9pbnRzQnlEZXBlbmRlbmN5KClgLlxuICovXG5leHBvcnQgdHlwZSBQYXJ0aWFsbHlPcmRlcmVkRW50cnlQb2ludHMgPSBQYXJ0aWFsbHlPcmRlcmVkTGlzdDxFbnRyeVBvaW50PjtcblxuLyoqXG4gKiBBIGxpc3Qgb2YgZW50cnktcG9pbnRzLCBzb3J0ZWQgYnkgdGhlaXIgZGVwZW5kZW5jaWVzLCBhbmQgdGhlIGRlcGVuZGVuY3kgZ3JhcGguXG4gKlxuICogVGhlIGBlbnRyeVBvaW50c2AgYXJyYXkgd2lsbCBiZSBvcmRlcmVkIHNvIHRoYXQgbm8gZW50cnkgcG9pbnQgZGVwZW5kcyB1cG9uIGFuIGVudHJ5IHBvaW50IHRoYXRcbiAqIGFwcGVhcnMgbGF0ZXIgaW4gdGhlIGFycmF5LlxuICpcbiAqIFNvbWUgZW50cnkgcG9pbnRzIG9yIHRoZWlyIGRlcGVuZGVuY2llcyBtYXkgaGF2ZSBiZWVuIGlnbm9yZWQuIFRoZXNlIGFyZSBjYXB0dXJlZCBmb3JcbiAqIGRpYWdub3N0aWMgcHVycG9zZXMgaW4gYGludmFsaWRFbnRyeVBvaW50c2AgYW5kIGBpZ25vcmVkRGVwZW5kZW5jaWVzYCByZXNwZWN0aXZlbHkuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgU29ydGVkRW50cnlQb2ludHNJbmZvIGV4dGVuZHMgRGVwZW5kZW5jeURpYWdub3N0aWNzIHtcbiAgZW50cnlQb2ludHM6IFBhcnRpYWxseU9yZGVyZWRFbnRyeVBvaW50cztcbiAgZ3JhcGg6IERlcEdyYXBoPEVudHJ5UG9pbnQ+O1xufVxuXG4vKipcbiAqIEEgY2xhc3MgdGhhdCByZXNvbHZlcyBkZXBlbmRlbmNpZXMgYmV0d2VlbiBlbnRyeS1wb2ludHMuXG4gKi9cbmV4cG9ydCBjbGFzcyBEZXBlbmRlbmN5UmVzb2x2ZXIge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgZnM6IEZpbGVTeXN0ZW0sIHByaXZhdGUgbG9nZ2VyOiBMb2dnZXIsIHByaXZhdGUgY29uZmlnOiBOZ2NjQ29uZmlndXJhdGlvbixcbiAgICAgIHByaXZhdGUgaG9zdHM6IFBhcnRpYWw8UmVjb3JkPEVudHJ5UG9pbnRGb3JtYXQsIERlcGVuZGVuY3lIb3N0Pj4sXG4gICAgICBwcml2YXRlIHR5cGluZ3NIb3N0OiBEZXBlbmRlbmN5SG9zdCkge31cbiAgLyoqXG4gICAqIFNvcnQgdGhlIGFycmF5IG9mIGVudHJ5IHBvaW50cyBzbyB0aGF0IHRoZSBkZXBlbmRhbnQgZW50cnkgcG9pbnRzIGFsd2F5cyBjb21lIGxhdGVyIHRoYW5cbiAgICogdGhlaXIgZGVwZW5kZW5jaWVzIGluIHRoZSBhcnJheS5cbiAgICogQHBhcmFtIGVudHJ5UG9pbnRzIEFuIGFycmF5IGVudHJ5IHBvaW50cyB0byBzb3J0LlxuICAgKiBAcGFyYW0gdGFyZ2V0IElmIHByb3ZpZGVkLCBvbmx5IHJldHVybiBlbnRyeS1wb2ludHMgZGVwZW5kZWQgb24gYnkgdGhpcyBlbnRyeS1wb2ludC5cbiAgICogQHJldHVybnMgdGhlIHJlc3VsdCBvZiBzb3J0aW5nIHRoZSBlbnRyeSBwb2ludHMgYnkgZGVwZW5kZW5jeS5cbiAgICovXG4gIHNvcnRFbnRyeVBvaW50c0J5RGVwZW5kZW5jeShlbnRyeVBvaW50czogRW50cnlQb2ludFdpdGhEZXBlbmRlbmNpZXNbXSwgdGFyZ2V0PzogRW50cnlQb2ludCk6XG4gICAgICBTb3J0ZWRFbnRyeVBvaW50c0luZm8ge1xuICAgIGNvbnN0IHtpbnZhbGlkRW50cnlQb2ludHMsIGlnbm9yZWREZXBlbmRlbmNpZXMsIGdyYXBofSA9XG4gICAgICAgIHRoaXMuY29tcHV0ZURlcGVuZGVuY3lHcmFwaChlbnRyeVBvaW50cyk7XG5cbiAgICBsZXQgc29ydGVkRW50cnlQb2ludE5vZGVzOiBzdHJpbmdbXTtcbiAgICBpZiAodGFyZ2V0KSB7XG4gICAgICBpZiAodGFyZ2V0LmNvbXBpbGVkQnlBbmd1bGFyICYmIGdyYXBoLmhhc05vZGUodGFyZ2V0LnBhdGgpKSB7XG4gICAgICAgIHNvcnRlZEVudHJ5UG9pbnROb2RlcyA9IGdyYXBoLmRlcGVuZGVuY2llc09mKHRhcmdldC5wYXRoKTtcbiAgICAgICAgc29ydGVkRW50cnlQb2ludE5vZGVzLnB1c2godGFyZ2V0LnBhdGgpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgc29ydGVkRW50cnlQb2ludE5vZGVzID0gW107XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIHNvcnRlZEVudHJ5UG9pbnROb2RlcyA9IGdyYXBoLm92ZXJhbGxPcmRlcigpO1xuICAgIH1cblxuICAgIHJldHVybiB7XG4gICAgICBlbnRyeVBvaW50czogKHNvcnRlZEVudHJ5UG9pbnROb2RlcyBhcyBQYXJ0aWFsbHlPcmRlcmVkTGlzdDxzdHJpbmc+KVxuICAgICAgICAgICAgICAgICAgICAgICAubWFwKHBhdGggPT4gZ3JhcGguZ2V0Tm9kZURhdGEocGF0aCkpLFxuICAgICAgZ3JhcGgsXG4gICAgICBpbnZhbGlkRW50cnlQb2ludHMsXG4gICAgICBpZ25vcmVkRGVwZW5kZW5jaWVzLFxuICAgIH07XG4gIH1cblxuICBnZXRFbnRyeVBvaW50V2l0aERlcGVuZGVuY2llcyhlbnRyeVBvaW50OiBFbnRyeVBvaW50KTogRW50cnlQb2ludFdpdGhEZXBlbmRlbmNpZXMge1xuICAgIGNvbnN0IGRlcGVuZGVuY2llcyA9IGNyZWF0ZURlcGVuZGVuY3lJbmZvKCk7XG4gICAgaWYgKGVudHJ5UG9pbnQuY29tcGlsZWRCeUFuZ3VsYXIpIHtcbiAgICAgIC8vIE9ubHkgYm90aGVyIHRvIGNvbXB1dGUgZGVwZW5kZW5jaWVzIG9mIGVudHJ5LXBvaW50cyB0aGF0IGhhdmUgYmVlbiBjb21waWxlZCBieSBBbmd1bGFyXG4gICAgICBjb25zdCBmb3JtYXRJbmZvID0gdGhpcy5nZXRFbnRyeVBvaW50Rm9ybWF0SW5mbyhlbnRyeVBvaW50KTtcbiAgICAgIGNvbnN0IGhvc3QgPSB0aGlzLmhvc3RzW2Zvcm1hdEluZm8uZm9ybWF0XTtcbiAgICAgIGlmICghaG9zdCkge1xuICAgICAgICB0aHJvdyBuZXcgRXJyb3IoXG4gICAgICAgICAgICBgQ291bGQgbm90IGZpbmQgYSBzdWl0YWJsZSBmb3JtYXQgZm9yIGNvbXB1dGluZyBkZXBlbmRlbmNpZXMgb2YgZW50cnktcG9pbnQ6ICcke1xuICAgICAgICAgICAgICAgIGVudHJ5UG9pbnQucGF0aH0nLmApO1xuICAgICAgfVxuICAgICAgaG9zdC5jb2xsZWN0RGVwZW5kZW5jaWVzKGZvcm1hdEluZm8ucGF0aCwgZGVwZW5kZW5jaWVzKTtcbiAgICAgIHRoaXMudHlwaW5nc0hvc3QuY29sbGVjdERlcGVuZGVuY2llcyhlbnRyeVBvaW50LnR5cGluZ3MsIGRlcGVuZGVuY2llcyk7XG4gICAgfVxuICAgIHJldHVybiB7ZW50cnlQb2ludCwgZGVwSW5mbzogZGVwZW5kZW5jaWVzfTtcbiAgfVxuXG4gIC8qKlxuICAgKiBDb21wdXRlcyBhIGRlcGVuZGVuY3kgZ3JhcGggb2YgdGhlIGdpdmVuIGVudHJ5LXBvaW50cy5cbiAgICpcbiAgICogVGhlIGdyYXBoIG9ubHkgaG9sZHMgZW50cnktcG9pbnRzIHRoYXQgbmdjYyBjYXJlcyBhYm91dCBhbmQgd2hvc2UgZGVwZW5kZW5jaWVzXG4gICAqIChkaXJlY3QgYW5kIHRyYW5zaXRpdmUpIGFsbCBleGlzdC5cbiAgICovXG4gIHByaXZhdGUgY29tcHV0ZURlcGVuZGVuY3lHcmFwaChlbnRyeVBvaW50czogRW50cnlQb2ludFdpdGhEZXBlbmRlbmNpZXNbXSk6IERlcGVuZGVuY3lHcmFwaCB7XG4gICAgY29uc3QgaW52YWxpZEVudHJ5UG9pbnRzOiBJbnZhbGlkRW50cnlQb2ludFtdID0gW107XG4gICAgY29uc3QgaWdub3JlZERlcGVuZGVuY2llczogSWdub3JlZERlcGVuZGVuY3lbXSA9IFtdO1xuICAgIGNvbnN0IGdyYXBoID0gbmV3IERlcEdyYXBoPEVudHJ5UG9pbnQ+KCk7XG5cbiAgICBjb25zdCBhbmd1bGFyRW50cnlQb2ludHMgPSBlbnRyeVBvaW50cy5maWx0ZXIoZSA9PiBlLmVudHJ5UG9pbnQuY29tcGlsZWRCeUFuZ3VsYXIpO1xuXG4gICAgLy8gQWRkIHRoZSBBbmd1bGFyIGNvbXBpbGVkIGVudHJ5IHBvaW50cyB0byB0aGUgZ3JhcGggYXMgbm9kZXNcbiAgICBhbmd1bGFyRW50cnlQb2ludHMuZm9yRWFjaChlID0+IGdyYXBoLmFkZE5vZGUoZS5lbnRyeVBvaW50LnBhdGgsIGUuZW50cnlQb2ludCkpO1xuXG4gICAgLy8gTm93IGFkZCB0aGUgZGVwZW5kZW5jaWVzIGJldHdlZW4gdGhlbVxuICAgIGFuZ3VsYXJFbnRyeVBvaW50cy5mb3JFYWNoKCh7ZW50cnlQb2ludCwgZGVwSW5mbzoge2RlcGVuZGVuY2llcywgbWlzc2luZywgZGVlcEltcG9ydHN9fSkgPT4ge1xuICAgICAgY29uc3QgbWlzc2luZ0RlcGVuZGVuY2llcyA9IEFycmF5LmZyb20obWlzc2luZykuZmlsdGVyKGRlcCA9PiAhYnVpbHRpbk5vZGVKc01vZHVsZXMuaGFzKGRlcCkpO1xuXG4gICAgICBpZiAobWlzc2luZ0RlcGVuZGVuY2llcy5sZW5ndGggPiAwICYmICFlbnRyeVBvaW50Lmlnbm9yZU1pc3NpbmdEZXBlbmRlbmNpZXMpIHtcbiAgICAgICAgLy8gVGhpcyBlbnRyeSBwb2ludCBoYXMgZGVwZW5kZW5jaWVzIHRoYXQgYXJlIG1pc3NpbmdcbiAgICAgICAgLy8gc28gcmVtb3ZlIGl0IGZyb20gdGhlIGdyYXBoLlxuICAgICAgICByZW1vdmVOb2RlcyhlbnRyeVBvaW50LCBtaXNzaW5nRGVwZW5kZW5jaWVzKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIGRlcGVuZGVuY2llcy5mb3JFYWNoKGRlcGVuZGVuY3lQYXRoID0+IHtcbiAgICAgICAgICBpZiAoIWdyYXBoLmhhc05vZGUoZW50cnlQb2ludC5wYXRoKSkge1xuICAgICAgICAgICAgLy8gVGhlIGVudHJ5LXBvaW50IGhhcyBhbHJlYWR5IGJlZW4gaWRlbnRpZmllZCBhcyBpbnZhbGlkIHNvIHdlIGRvbid0IG5lZWRcbiAgICAgICAgICAgIC8vIHRvIGRvIGFueSBmdXJ0aGVyIHdvcmsgb24gaXQuXG4gICAgICAgICAgfSBlbHNlIGlmIChncmFwaC5oYXNOb2RlKGRlcGVuZGVuY3lQYXRoKSkge1xuICAgICAgICAgICAgLy8gVGhlIGVudHJ5LXBvaW50IGlzIHN0aWxsIHZhbGlkIChpLmUuIGhhcyBubyBtaXNzaW5nIGRlcGVuZGVuY2llcykgYW5kXG4gICAgICAgICAgICAvLyB0aGUgZGVwZW5kZW5jeSBtYXBzIHRvIGFuIGVudHJ5IHBvaW50IHRoYXQgZXhpc3RzIGluIHRoZSBncmFwaCBzbyBhZGQgaXRcbiAgICAgICAgICAgIGdyYXBoLmFkZERlcGVuZGVuY3koZW50cnlQb2ludC5wYXRoLCBkZXBlbmRlbmN5UGF0aCk7XG4gICAgICAgICAgfSBlbHNlIGlmIChpbnZhbGlkRW50cnlQb2ludHMuc29tZShpID0+IGkuZW50cnlQb2ludC5wYXRoID09PSBkZXBlbmRlbmN5UGF0aCkpIHtcbiAgICAgICAgICAgIC8vIFRoZSBkZXBlbmRlbmN5IHBhdGggbWFwcyB0byBhbiBlbnRyeS1wb2ludCB0aGF0IHdhcyBwcmV2aW91c2x5IHJlbW92ZWRcbiAgICAgICAgICAgIC8vIGZyb20gdGhlIGdyYXBoLCBzbyByZW1vdmUgdGhpcyBlbnRyeS1wb2ludCBhcyB3ZWxsLlxuICAgICAgICAgICAgcmVtb3ZlTm9kZXMoZW50cnlQb2ludCwgW2RlcGVuZGVuY3lQYXRoXSk7XG4gICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIC8vIFRoZSBkZXBlbmRlbmN5IHBhdGggcG9pbnRzIHRvIGEgcGFja2FnZSB0aGF0IG5nY2MgZG9lcyBub3QgY2FyZSBhYm91dC5cbiAgICAgICAgICAgIGlnbm9yZWREZXBlbmRlbmNpZXMucHVzaCh7ZW50cnlQb2ludCwgZGVwZW5kZW5jeVBhdGh9KTtcbiAgICAgICAgICB9XG4gICAgICAgIH0pO1xuICAgICAgfVxuXG4gICAgICBpZiAoZGVlcEltcG9ydHMuc2l6ZSA+IDApIHtcbiAgICAgICAgY29uc3Qgbm90YWJsZURlZXBJbXBvcnRzID0gdGhpcy5maWx0ZXJJZ25vcmFibGVEZWVwSW1wb3J0cyhlbnRyeVBvaW50LCBkZWVwSW1wb3J0cyk7XG4gICAgICAgIGlmIChub3RhYmxlRGVlcEltcG9ydHMubGVuZ3RoID4gMCkge1xuICAgICAgICAgIGNvbnN0IGltcG9ydHMgPSBub3RhYmxlRGVlcEltcG9ydHMubWFwKGkgPT4gYCcke2l9J2ApLmpvaW4oJywgJyk7XG4gICAgICAgICAgdGhpcy5sb2dnZXIud2FybihcbiAgICAgICAgICAgICAgYEVudHJ5IHBvaW50ICcke2VudHJ5UG9pbnQubmFtZX0nIGNvbnRhaW5zIGRlZXAgaW1wb3J0cyBpbnRvICR7aW1wb3J0c30uIGAgK1xuICAgICAgICAgICAgICBgVGhpcyBpcyBwcm9iYWJseSBub3QgYSBwcm9ibGVtLCBidXQgbWF5IGNhdXNlIHRoZSBjb21waWxhdGlvbiBvZiBlbnRyeSBwb2ludHMgdG8gYmUgb3V0IG9mIG9yZGVyLmApO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfSk7XG5cbiAgICByZXR1cm4ge2ludmFsaWRFbnRyeVBvaW50cywgaWdub3JlZERlcGVuZGVuY2llcywgZ3JhcGh9O1xuXG4gICAgZnVuY3Rpb24gcmVtb3ZlTm9kZXMoZW50cnlQb2ludDogRW50cnlQb2ludCwgbWlzc2luZ0RlcGVuZGVuY2llczogc3RyaW5nW10pIHtcbiAgICAgIGNvbnN0IG5vZGVzVG9SZW1vdmUgPSBbZW50cnlQb2ludC5wYXRoLCAuLi5ncmFwaC5kZXBlbmRhbnRzT2YoZW50cnlQb2ludC5wYXRoKV07XG4gICAgICBub2Rlc1RvUmVtb3ZlLmZvckVhY2gobm9kZSA9PiB7XG4gICAgICAgIGludmFsaWRFbnRyeVBvaW50cy5wdXNoKHtlbnRyeVBvaW50OiBncmFwaC5nZXROb2RlRGF0YShub2RlKSwgbWlzc2luZ0RlcGVuZGVuY2llc30pO1xuICAgICAgICBncmFwaC5yZW1vdmVOb2RlKG5vZGUpO1xuICAgICAgfSk7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBnZXRFbnRyeVBvaW50Rm9ybWF0SW5mbyhlbnRyeVBvaW50OiBFbnRyeVBvaW50KTpcbiAgICAgIHtmb3JtYXQ6IEVudHJ5UG9pbnRGb3JtYXQsIHBhdGg6IEFic29sdXRlRnNQYXRofSB7XG4gICAgZm9yIChjb25zdCBwcm9wZXJ0eSBvZiBTVVBQT1JURURfRk9STUFUX1BST1BFUlRJRVMpIHtcbiAgICAgIGNvbnN0IGZvcm1hdFBhdGggPSBlbnRyeVBvaW50LnBhY2thZ2VKc29uW3Byb3BlcnR5XTtcbiAgICAgIGlmIChmb3JtYXRQYXRoID09PSB1bmRlZmluZWQpIGNvbnRpbnVlO1xuXG4gICAgICBjb25zdCBmb3JtYXQgPSBnZXRFbnRyeVBvaW50Rm9ybWF0KHRoaXMuZnMsIGVudHJ5UG9pbnQsIHByb3BlcnR5KTtcbiAgICAgIGlmIChmb3JtYXQgPT09IHVuZGVmaW5lZCkgY29udGludWU7XG5cbiAgICAgIHJldHVybiB7Zm9ybWF0LCBwYXRoOiByZXNvbHZlKGVudHJ5UG9pbnQucGF0aCwgZm9ybWF0UGF0aCl9O1xuICAgIH1cblxuICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgYFRoZXJlIGlzIG5vIGFwcHJvcHJpYXRlIHNvdXJjZSBjb2RlIGZvcm1hdCBpbiAnJHtlbnRyeVBvaW50LnBhdGh9JyBlbnRyeS1wb2ludC5gKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBGaWx0ZXIgb3V0IHRoZSBkZWVwSW1wb3J0cyB0aGF0IGNhbiBiZSBpZ25vcmVkLCBhY2NvcmRpbmcgdG8gdGhpcyBlbnRyeVBvaW50J3MgY29uZmlnLlxuICAgKi9cbiAgcHJpdmF0ZSBmaWx0ZXJJZ25vcmFibGVEZWVwSW1wb3J0cyhlbnRyeVBvaW50OiBFbnRyeVBvaW50LCBkZWVwSW1wb3J0czogU2V0PEFic29sdXRlRnNQYXRoPik6XG4gICAgICBBYnNvbHV0ZUZzUGF0aFtdIHtcbiAgICBjb25zdCB2ZXJzaW9uID0gKGVudHJ5UG9pbnQucGFja2FnZUpzb24udmVyc2lvbiB8fCBudWxsKSBhcyBzdHJpbmcgfCBudWxsO1xuICAgIGNvbnN0IHBhY2thZ2VDb25maWcgPVxuICAgICAgICB0aGlzLmNvbmZpZy5nZXRQYWNrYWdlQ29uZmlnKGVudHJ5UG9pbnQucGFja2FnZU5hbWUsIGVudHJ5UG9pbnQucGFja2FnZVBhdGgsIHZlcnNpb24pO1xuICAgIGNvbnN0IG1hdGNoZXJzID0gcGFja2FnZUNvbmZpZy5pZ25vcmFibGVEZWVwSW1wb3J0TWF0Y2hlcnM7XG4gICAgcmV0dXJuIEFycmF5LmZyb20oZGVlcEltcG9ydHMpXG4gICAgICAgIC5maWx0ZXIoZGVlcEltcG9ydCA9PiAhbWF0Y2hlcnMuc29tZShtYXRjaGVyID0+IG1hdGNoZXIudGVzdChkZWVwSW1wb3J0KSkpO1xuICB9XG59XG5cbmludGVyZmFjZSBEZXBlbmRlbmN5R3JhcGggZXh0ZW5kcyBEZXBlbmRlbmN5RGlhZ25vc3RpY3Mge1xuICBncmFwaDogRGVwR3JhcGg8RW50cnlQb2ludD47XG59XG4iXX0=