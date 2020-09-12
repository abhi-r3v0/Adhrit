(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/entry_point_finder/utils", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/file_system"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.dedupePaths = exports.trackDuration = exports.getBasePaths = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    /**
     * Extract all the base-paths that we need to search for entry-points.
     *
     * This always contains the standard base-path (`sourceDirectory`).
     * But it also parses the `paths` mappings object to guess additional base-paths.
     *
     * For example:
     *
     * ```
     * getBasePaths('/node_modules', {baseUrl: '/dist', paths: {'*': ['lib/*', 'lib/generated/*']}})
     * > ['/node_modules', '/dist/lib']
     * ```
     *
     * Notice that `'/dist'` is not included as there is no `'*'` path,
     * and `'/dist/lib/generated'` is not included as it is covered by `'/dist/lib'`.
     *
     * @param sourceDirectory The standard base-path (e.g. node_modules).
     * @param pathMappings Path mapping configuration, from which to extract additional base-paths.
     */
    function getBasePaths(logger, sourceDirectory, pathMappings) {
        var fs = file_system_1.getFileSystem();
        var basePaths = [sourceDirectory];
        if (pathMappings) {
            var baseUrl_1 = file_system_1.resolve(pathMappings.baseUrl);
            if (fs.isRoot(baseUrl_1)) {
                logger.warn("The provided pathMappings baseUrl is the root path " + baseUrl_1 + ".\n" +
                    "This is likely to mess up how ngcc finds entry-points and is probably not correct.\n" +
                    "Please check your path mappings configuration such as in the tsconfig.json file.");
            }
            Object.values(pathMappings.paths).forEach(function (paths) { return paths.forEach(function (path) {
                // We only want base paths that exist and are not files
                var basePath = fs.resolve(baseUrl_1, extractPathPrefix(path));
                if (fs.exists(basePath) && fs.stat(basePath).isFile()) {
                    basePath = fs.dirname(basePath);
                }
                if (fs.exists(basePath)) {
                    basePaths.push(basePath);
                }
                else {
                    logger.debug("The basePath \"" + basePath + "\" computed from baseUrl \"" + baseUrl_1 + "\" and path mapping \"" + path + "\" does not exist in the file-system.\n" +
                        "It will not be scanned for entry-points.");
                }
            }); });
        }
        var dedupedBasePaths = dedupePaths(basePaths);
        // We want to ensure that the `sourceDirectory` is included when it is a node_modules folder.
        // Otherwise our entry-point finding algorithm would fail to walk that folder.
        if (fs.basename(sourceDirectory) === 'node_modules' &&
            !dedupedBasePaths.includes(sourceDirectory)) {
            dedupedBasePaths.unshift(sourceDirectory);
        }
        return dedupedBasePaths;
    }
    exports.getBasePaths = getBasePaths;
    /**
     * Extract everything in the `path` up to the first `*`.
     * @param path The path to parse.
     * @returns The extracted prefix.
     */
    function extractPathPrefix(path) {
        return path.split('*', 1)[0];
    }
    /**
     * Run a task and track how long it takes.
     *
     * @param task The task whose duration we are tracking
     * @param log The function to call with the duration of the task
     * @returns The result of calling `task`.
     */
    function trackDuration(task, log) {
        var startTime = Date.now();
        var result = task();
        var duration = Math.round((Date.now() - startTime) / 100) / 10;
        log(duration);
        return result;
    }
    exports.trackDuration = trackDuration;
    /**
     * Remove paths that are contained by other paths.
     *
     * For example:
     * Given `['a/b/c', 'a/b/x', 'a/b', 'd/e', 'd/f']` we will end up with `['a/b', 'd/e', 'd/f]`.
     * (Note that we do not get `d` even though `d/e` and `d/f` share a base directory, since `d` is not
     * one of the base paths.)
     */
    function dedupePaths(paths) {
        var e_1, _a;
        var root = { children: new Map() };
        try {
            for (var paths_1 = tslib_1.__values(paths), paths_1_1 = paths_1.next(); !paths_1_1.done; paths_1_1 = paths_1.next()) {
                var path = paths_1_1.value;
                addPath(root, path);
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (paths_1_1 && !paths_1_1.done && (_a = paths_1.return)) _a.call(paths_1);
            }
            finally { if (e_1) throw e_1.error; }
        }
        return flattenTree(root);
    }
    exports.dedupePaths = dedupePaths;
    /**
     * Add a path (defined by the `segments`) to the current `node` in the tree.
     */
    function addPath(root, path) {
        var node = root;
        if (!file_system_1.isRoot(path)) {
            var segments = path.split('/');
            for (var index = 0; index < segments.length; index++) {
                if (isLeaf(node)) {
                    // We hit a leaf so don't bother processing any more of the path
                    return;
                }
                // This is not the end of the path continue to process the rest of this path.
                var next = segments[index];
                if (!node.children.has(next)) {
                    node.children.set(next, { children: new Map() });
                }
                node = node.children.get(next);
            }
        }
        // This path has finished so convert this node to a leaf
        convertToLeaf(node, path);
    }
    /**
     * Flatten the tree of nodes back into an array of absolute paths
     */
    function flattenTree(root) {
        var paths = [];
        var nodes = [root];
        for (var index = 0; index < nodes.length; index++) {
            var node = nodes[index];
            if (isLeaf(node)) {
                // We found a leaf so store the currentPath
                paths.push(node.path);
            }
            else {
                node.children.forEach(function (value) { return nodes.push(value); });
            }
        }
        return paths;
    }
    function isLeaf(node) {
        return node.path !== undefined;
    }
    function convertToLeaf(node, path) {
        node.path = path;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbHMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvZW50cnlfcG9pbnRfZmluZGVyL3V0aWxzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7SUFBQTs7Ozs7O09BTUc7SUFDSCwyRUFBOEY7SUFJOUY7Ozs7Ozs7Ozs7Ozs7Ozs7OztPQWtCRztJQUNILFNBQWdCLFlBQVksQ0FDeEIsTUFBYyxFQUFFLGVBQStCLEVBQy9DLFlBQW9DO1FBQ3RDLElBQU0sRUFBRSxHQUFHLDJCQUFhLEVBQUUsQ0FBQztRQUMzQixJQUFNLFNBQVMsR0FBRyxDQUFDLGVBQWUsQ0FBQyxDQUFDO1FBQ3BDLElBQUksWUFBWSxFQUFFO1lBQ2hCLElBQU0sU0FBTyxHQUFHLHFCQUFPLENBQUMsWUFBWSxDQUFDLE9BQU8sQ0FBQyxDQUFDO1lBQzlDLElBQUksRUFBRSxDQUFDLE1BQU0sQ0FBQyxTQUFPLENBQUMsRUFBRTtnQkFDdEIsTUFBTSxDQUFDLElBQUksQ0FDUCx3REFBc0QsU0FBTyxRQUFLO29CQUNsRSxzRkFBc0Y7b0JBQ3RGLGtGQUFrRixDQUFDLENBQUM7YUFDekY7WUFDRCxNQUFNLENBQUMsTUFBTSxDQUFDLFlBQVksQ0FBQyxLQUFLLENBQUMsQ0FBQyxPQUFPLENBQUMsVUFBQSxLQUFLLElBQUksT0FBQSxLQUFLLENBQUMsT0FBTyxDQUFDLFVBQUEsSUFBSTtnQkFDbkUsdURBQXVEO2dCQUN2RCxJQUFJLFFBQVEsR0FBRyxFQUFFLENBQUMsT0FBTyxDQUFDLFNBQU8sRUFBRSxpQkFBaUIsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDO2dCQUM1RCxJQUFJLEVBQUUsQ0FBQyxNQUFNLENBQUMsUUFBUSxDQUFDLElBQUksRUFBRSxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUMsQ0FBQyxNQUFNLEVBQUUsRUFBRTtvQkFDckQsUUFBUSxHQUFHLEVB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QUcsRUFBRSxFQUFDLENBQUMsQ0FBQztpQkFDaEQ7Z0JBQ0QsSUFBSSxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBRSxDQUFDO2FBQ2pDO1NBQ0Y7UUFDRCx3REFBd0Q7UUFDeEQsYUFBYSxDQUFDLElBQUksRUFBRSxJQUFJLENBQUMsQ0FBQztJQUM1QixDQUFDO0lBRUQ7O09BRUc7SUFDSCxTQUFTLFdBQVcsQ0FBQyxJQUFVO1FBQzdCLElBQU0sS0FBSyxHQUFxQixFQUFFLENBQUM7UUFDbkMsSUFBTSxLQUFLLEdBQVcsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUM3QixLQUFLLElBQUksS0FBSyxHQUFHLENBQUMsRUFBRSxLQUFLLEdBQUcsS0FBSyxDQUFDLE1BQU0sRUFBRSxLQUFLLEVBQUUsRUFBRTtZQUNqRCxJQUFNLElBQUksR0FBRyxLQUFLLENBQUMsS0FBSyxDQUFDLENBQUM7WUFDMUIsSUFBSSxNQUFNLENBQUMsSUFBSSxDQUFDLEVBQUU7Z0JBQ2hCLDJDQUEyQztnQkFDM0MsS0FBSyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7YUFDdkI7aUJBQU07Z0JBQ0wsSUFBSSxDQUFDLFFBQVEsQ0FBQyxPQUFPLENBQUMsVUFBQSxLQUFLLElBQUksT0FBQSxLQUFLLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxFQUFqQixDQUFpQixDQUFDLENBQUM7YUFDbkQ7U0FDRjtRQUNELE9BQU8sS0FBSyxDQUFDO0lBQ2YsQ0FBQztJQUVELFNBQVMsTUFBTSxDQUFDLElBQVU7UUFDeEIsT0FBTyxJQUFJLENBQUMsSUFBSSxLQUFLLFNBQVMsQ0FBQztJQUNqQyxDQUFDO0lBRUQsU0FBUyxhQUFhLENBQUMsSUFBVSxFQUFFLElBQW9CO1FBQ3JELElBQUksQ0FBQyxJQUFJLEdBQUcsSUFBSSxDQUFDO0lBQ25CLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCB7QWJzb2x1dGVGc1BhdGgsIGdldEZpbGVTeXN0ZW0sIGlzUm9vdCwgcmVzb2x2ZX0gZnJvbSAnLi4vLi4vLi4vc3JjL25ndHNjL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7TG9nZ2VyfSBmcm9tICcuLi9sb2dnaW5nL2xvZ2dlcic7XG5pbXBvcnQge1BhdGhNYXBwaW5nc30gZnJvbSAnLi4vcGF0aF9tYXBwaW5ncyc7XG5cbi8qKlxuICogRXh0cmFjdCBhbGwgdGhlIGJhc2UtcGF0aHMgdGhhdCB3ZSBuZWVkIHRvIHNlYXJjaCBmb3IgZW50cnktcG9pbnRzLlxuICpcbiAqIFRoaXMgYWx3YXlzIGNvbnRhaW5zIHRoZSBzdGFuZGFyZCBiYXNlLXBhdGggKGBzb3VyY2VEaXJlY3RvcnlgKS5cbiAqIEJ1dCBpdCBhbHNvIHBhcnNlcyB0aGUgYHBhdGhzYCBtYXBwaW5ncyBvYmplY3QgdG8gZ3Vlc3MgYWRkaXRpb25hbCBiYXNlLXBhdGhzLlxuICpcbiAqIEZvciBleGFtcGxlOlxuICpcbiAqIGBgYFxuICogZ2V0QmFzZVBhdGhzKCcvbm9kZV9tb2R1bGVzJywge2Jhc2VVcmw6ICcvZGlzdCcsIHBhdGhzOiB7JyonOiBbJ2xpYi8qJywgJ2xpYi9nZW5lcmF0ZWQvKiddfX0pXG4gKiA+IFsnL25vZGVfbW9kdWxlcycsICcvZGlzdC9saWInXVxuICogYGBgXG4gKlxuICogTm90aWNlIHRoYXQgYCcvZGlzdCdgIGlzIG5vdCBpbmNsdWRlZCBhcyB0aGVyZSBpcyBubyBgJyonYCBwYXRoLFxuICogYW5kIGAnL2Rpc3QvbGliL2dlbmVyYXRlZCdgIGlzIG5vdCBpbmNsdWRlZCBhcyBpdCBpcyBjb3ZlcmVkIGJ5IGAnL2Rpc3QvbGliJ2AuXG4gKlxuICogQHBhcmFtIHNvdXJjZURpcmVjdG9yeSBUaGUgc3RhbmRhcmQgYmFzZS1wYXRoIChlLmcuIG5vZGVfbW9kdWxlcykuXG4gKiBAcGFyYW0gcGF0aE1hcHBpbmdzIFBhdGggbWFwcGluZyBjb25maWd1cmF0aW9uLCBmcm9tIHdoaWNoIHRvIGV4dHJhY3QgYWRkaXRpb25hbCBiYXNlLXBhdGhzLlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0QmFzZVBhdGhzKFxuICAgIGxvZ2dlcjogTG9nZ2VyLCBzb3VyY2VEaXJlY3Rvcnk6IEFic29sdXRlRnNQYXRoLFxuICAgIHBhdGhNYXBwaW5nczogUGF0aE1hcHBpbmdzfHVuZGVmaW5lZCk6IEFic29sdXRlRnNQYXRoW10ge1xuICBjb25zdCBmcyA9IGdldEZpbGVTeXN0ZW0oKTtcbiAgY29uc3QgYmFzZVBhdGhzID0gW3NvdXJjZURpcmVjdG9yeV07XG4gIGlmIChwYXRoTWFwcGluZ3MpIHtcbiAgICBjb25zdCBiYXNlVXJsID0gcmVzb2x2ZShwYXRoTWFwcGluZ3MuYmFzZVVybCk7XG4gICAgaWYgKGZzLmlzUm9vdChiYXNlVXJsKSkge1xuICAgICAgbG9nZ2VyLndhcm4oXG4gICAgICAgICAgYFRoZSBwcm92aWRlZCBwYXRoTWFwcGluZ3MgYmFzZVVybCBpcyB0aGUgcm9vdCBwYXRoICR7YmFzZVVybH0uXFxuYCArXG4gICAgICAgICAgYFRoaXMgaXMgbGlrZWx5IHRvIG1lc3MgdXAgaG93IG5nY2MgZmluZHMgZW50cnktcG9pbnRzIGFuZCBpcyBwcm9iYWJseSBub3QgY29ycmVjdC5cXG5gICtcbiAgICAgICAgICBgUGxlYXNlIGNoZWNrIHlvdXIgcGF0aCBtYXBwaW5ncyBjb25maWd1cmF0aW9uIHN1Y2ggYXMgaW4gdGhlIHRzY29uZmlnLmpzb24gZmlsZS5gKTtcbiAgICB9XG4gICAgT2JqZWN0LnZhbHVlcyhwYXRoTWFwcGluZ3MucGF0aHMpLmZvckVhY2gocGF0aHMgPT4gcGF0aHMuZm9yRWFjaChwYXRoID0+IHtcbiAgICAgIC8vIFdlIG9ubHkgd2FudCBiYXNlIHBhdGhzIHRoYXQgZXhpc3QgYW5kIGFyZSBub3QgZmlsZXNcbiAgICAgIGxldCBiYXNlUGF0aCA9IGZzLnJlc29sdmUoYmFzZVVybCwgZXh0cmFjdFBhdGhQcmVmaXgocGF0aCkpO1xuICAgICAgaWYgKGZzLmV4aXN0cyhiYXNlUGF0aCkgJiYgZnMuc3RhdChiYXNlUGF0aCkuaXNGaWxlKCkpIHtcbiAgICAgICAgYmFzZVBhdGggPSBmcy5kaXJuYW1lKGJhc2VQYXRoKTtcbiAgICAgIH1cbiAgICAgIGlmIChmcy5leGlzdHMoYmFzZVBhdGgpKSB7XG4gICAgICAgIGJhc2VQYXRocy5wdXNoKGJhc2VQYXRoKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIGxvZ2dlci5kZWJ1ZyhcbiAgICAgICAgICAgIGBUaGUgYmFzZVBhdGggXCIke2Jhc2VQYXRofVwiIGNvbXB1dGVkIGZyb20gYmFzZVVybCBcIiR7YmFzZVVybH1cIiBhbmQgcGF0aCBtYXBwaW5nIFwiJHtcbiAgICAgICAgICAgICAgICBwYXRofVwiIGRvZXMgbm90IGV4aXN0IGluIHRoZSBmaWxlLXN5c3RlbS5cXG5gICtcbiAgICAgICAgICAgIGBJdCB3aWxsIG5vdCBiZSBzY2FubmVkIGZvciBlbnRyeS1wb2ludHMuYCk7XG4gICAgICB9XG4gICAgfSkpO1xuICB9XG5cbiAgY29uc3QgZGVkdXBlZEJhc2VQYXRocyA9IGRlZHVwZVBhdGhzKGJhc2VQYXRocyk7XG5cbiAgLy8gV2Ugd2FudCB0byBlbnN1cmUgdGhhdCB0aGUgYHNvdXJjZURpcmVjdG9yeWAgaXMgaW5jbHVkZWQgd2hlbiBpdCBpcyBhIG5vZGVfbW9kdWxlcyBmb2xkZXIuXG4gIC8vIE90aGVyd2lzZSBvdXIgZW50cnktcG9pbnQgZmluZGluZyBhbGdvcml0aG0gd291bGQgZmFpbCB0byB3YWxrIHRoYXQgZm9sZGVyLlxuICBpZiAoZnMuYmFzZW5hbWUoc291cmNlRGlyZWN0b3J5KSA9PT0gJ25vZGVfbW9kdWxlcycgJiZcbiAgICAgICFkZWR1cGVkQmFzZVBhdGhzLmluY2x1ZGVzKHNvdXJjZURpcmVjdG9yeSkpIHtcbiAgICBkZWR1cGVkQmFzZVBhdGhzLnVuc2hpZnQoc291cmNlRGlyZWN0b3J5KTtcbiAgfVxuXG4gIHJldHVybiBkZWR1cGVkQmFzZVBhdGhzO1xufVxuXG4vKipcbiAqIEV4dHJhY3QgZXZlcnl0aGluZyBpbiB0aGUgYHBhdGhgIHVwIHRvIHRoZSBmaXJzdCBgKmAuXG4gKiBAcGFyYW0gcGF0aCBUaGUgcGF0aCB0byBwYXJzZS5cbiAqIEByZXR1cm5zIFRoZSBleHRyYWN0ZWQgcHJlZml4LlxuICovXG5mdW5jdGlvbiBleHRyYWN0UGF0aFByZWZpeChwYXRoOiBzdHJpbmcpIHtcbiAgcmV0dXJuIHBhdGguc3BsaXQoJyonLCAxKVswXTtcbn1cblxuLyoqXG4gKiBSdW4gYSB0YXNrIGFuZCB0cmFjayBob3cgbG9uZyBpdCB0YWtlcy5cbiAqXG4gKiBAcGFyYW0gdGFzayBUaGUgdGFzayB3aG9zZSBkdXJhdGlvbiB3ZSBhcmUgdHJhY2tpbmdcbiAqIEBwYXJhbSBsb2cgVGhlIGZ1bmN0aW9uIHRvIGNhbGwgd2l0aCB0aGUgZHVyYXRpb24gb2YgdGhlIHRhc2tcbiAqIEByZXR1cm5zIFRoZSByZXN1bHQgb2YgY2FsbGluZyBgdGFza2AuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiB0cmFja0R1cmF0aW9uPFQgPSB2b2lkPih0YXNrOiAoKSA9PiBUIGV4dGVuZHMgUHJvbWlzZTx1bmtub3duPj8gbmV2ZXIgOiBULFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsb2c6IChkdXJhdGlvbjogbnVtYmVyKSA9PiB2b2lkKTogVCB7XG4gIGNvbnN0IHN0YXJ0VGltZSA9IERhdGUubm93KCk7XG4gIGNvbnN0IHJlc3VsdCA9IHRhc2soKTtcbiAgY29uc3QgZHVyYXRpb24gPSBNYXRoLnJvdW5kKChEYXRlLm5vdygpIC0gc3RhcnRUaW1lKSAvIDEwMCkgLyAxMDtcbiAgbG9nKGR1cmF0aW9uKTtcbiAgcmV0dXJuIHJlc3VsdDtcbn1cblxuLyoqXG4gKiBSZW1vdmUgcGF0aHMgdGhhdCBhcmUgY29udGFpbmVkIGJ5IG90aGVyIHBhdGhzLlxuICpcbiAqIEZvciBleGFtcGxlOlxuICogR2l2ZW4gYFsnYS9iL2MnLCAnYS9iL3gnLCAnYS9iJywgJ2QvZScsICdkL2YnXWAgd2Ugd2lsbCBlbmQgdXAgd2l0aCBgWydhL2InLCAnZC9lJywgJ2QvZl1gLlxuICogKE5vdGUgdGhhdCB3ZSBkbyBub3QgZ2V0IGBkYCBldmVuIHRob3VnaCBgZC9lYCBhbmQgYGQvZmAgc2hhcmUgYSBiYXNlIGRpcmVjdG9yeSwgc2luY2UgYGRgIGlzIG5vdFxuICogb25lIG9mIHRoZSBiYXNlIHBhdGhzLilcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGRlZHVwZVBhdGhzKHBhdGhzOiBBYnNvbHV0ZUZzUGF0aFtdKTogQWJzb2x1dGVGc1BhdGhbXSB7XG4gIGNvbnN0IHJvb3Q6IE5vZGUgPSB7Y2hpbGRyZW46IG5ldyBNYXAoKX07XG4gIGZvciAoY29uc3QgcGF0aCBvZiBwYXRocykge1xuICAgIGFkZFBhdGgocm9vdCwgcGF0aCk7XG4gIH1cbiAgcmV0dXJuIGZsYXR0ZW5UcmVlKHJvb3QpO1xufVxuXG4vKipcbiAqIEFkZCBhIHBhdGggKGRlZmluZWQgYnkgdGhlIGBzZWdtZW50c2ApIHRvIHRoZSBjdXJyZW50IGBub2RlYCBpbiB0aGUgdHJlZS5cbiAqL1xuZnVuY3Rpb24gYWRkUGF0aChyb290OiBOb2RlLCBwYXRoOiBBYnNvbHV0ZUZzUGF0aCk6IHZvaWQge1xuICBsZXQgbm9kZSA9IHJvb3Q7XG4gIGlmICghaXNSb290KHBhdGgpKSB7XG4gICAgY29uc3Qgc2VnbWVudHMgPSBwYXRoLnNwbGl0KCcvJyk7XG4gICAgZm9yIChsZXQgaW5kZXggPSAwOyBpbmRleCA8IHNlZ21lbnRzLmxlbmd0aDsgaW5kZXgrKykge1xuICAgICAgaWYgKGlzTGVhZihub2RlKSkge1xuICAgICAgICAvLyBXZSBoaXQgYSBsZWFmIHNvIGRvbid0IGJvdGhlciBwcm9jZXNzaW5nIGFueSBtb3JlIG9mIHRoZSBwYXRoXG4gICAgICAgIHJldHVybjtcbiAgICAgIH1cbiAgICAgIC8vIFRoaXMgaXMgbm90IHRoZSBlbmQgb2YgdGhlIHBhdGggY29udGludWUgdG8gcHJvY2VzcyB0aGUgcmVzdCBvZiB0aGlzIHBhdGguXG4gICAgICBjb25zdCBuZXh0ID0gc2VnbWVudHNbaW5kZXhdO1xuICAgICAgaWYgKCFub2RlLmNoaWxkcmVuLmhhcyhuZXh0KSkge1xuICAgICAgICBub2RlLmNoaWxkcmVuLnNldChuZXh0LCB7Y2hpbGRyZW46IG5ldyBNYXAoKX0pO1xuICAgICAgfVxuICAgICAgbm9kZSA9IG5vZGUuY2hpbGRyZW4uZ2V0KG5leHQpITtcbiAgICB9XG4gIH1cbiAgLy8gVGhpcyBwYXRoIGhhcyBmaW5pc2hlZCBzbyBjb252ZXJ0IHRoaXMgbm9kZSB0byBhIGxlYWZcbiAgY29udmVydFRvTGVhZihub2RlLCBwYXRoKTtcbn1cblxuLyoqXG4gKiBGbGF0dGVuIHRoZSB0cmVlIG9mIG5vZGVzIGJhY2sgaW50byBhbiBhcnJheSBvZiBhYnNvbHV0ZSBwYXRoc1xuICovXG5mdW5jdGlvbiBmbGF0dGVuVHJlZShyb290OiBOb2RlKTogQWJzb2x1dGVGc1BhdGhbXSB7XG4gIGNvbnN0IHBhdGhzOiBBYnNvbHV0ZUZzUGF0aFtdID0gW107XG4gIGNvbnN0IG5vZGVzOiBOb2RlW10gPSBbcm9vdF07XG4gIGZvciAobGV0IGluZGV4ID0gMDsgaW5kZXggPCBub2Rlcy5sZW5ndGg7IGluZGV4KyspIHtcbiAgICBjb25zdCBub2RlID0gbm9kZXNbaW5kZXhdO1xuICAgIGlmIChpc0xlYWYobm9kZSkpIHtcbiAgICAgIC8vIFdlIGZvdW5kIGEgbGVhZiBzbyBzdG9yZSB0aGUgY3VycmVudFBhdGhcbiAgICAgIHBhdGhzLnB1c2gobm9kZS5wYXRoKTtcbiAgICB9IGVsc2Uge1xuICAgICAgbm9kZS5jaGlsZHJlbi5mb3JFYWNoKHZhbHVlID0+IG5vZGVzLnB1c2godmFsdWUpKTtcbiAgICB9XG4gIH1cbiAgcmV0dXJuIHBhdGhzO1xufVxuXG5mdW5jdGlvbiBpc0xlYWYobm9kZTogTm9kZSk6IG5vZGUgaXMgTGVhZiB7XG4gIHJldHVybiBub2RlLnBhdGggIT09IHVuZGVmaW5lZDtcbn1cblxuZnVuY3Rpb24gY29udmVydFRvTGVhZihub2RlOiBOb2RlLCBwYXRoOiBBYnNvbHV0ZUZzUGF0aCkge1xuICBub2RlLnBhdGggPSBwYXRoO1xufVxuXG5pbnRlcmZhY2UgTm9kZSB7XG4gIGNoaWxkcmVuOiBNYXA8c3RyaW5nLCBOb2RlPjtcbiAgcGF0aD86IEFic29sdXRlRnNQYXRoO1xufVxuXG50eXBlIExlYWYgPSBSZXF1aXJlZDxOb2RlPjtcbiJdfQ==