(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/rendering/source_maps", ["require", "exports", "convert-source-map", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/ngcc/src/sourcemaps/source_file_loader"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.renderSourceAndMap = void 0;
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var convert_source_map_1 = require("convert-source-map");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var source_file_loader_1 = require("@angular/compiler-cli/ngcc/src/sourcemaps/source_file_loader");
    /**
     * Merge the input and output source-maps, replacing the source-map comment in the output file
     * with an appropriate source-map comment pointing to the merged source-map.
     */
    function renderSourceAndMap(logger, fs, sourceFile, generatedMagicString) {
        var generatedPath = file_system_1.absoluteFromSourceFile(sourceFile);
        var generatedMapPath = file_system_1.absoluteFrom(generatedPath + ".map");
        var generatedContent = generatedMagicString.toString();
        var generatedMap = generatedMagicString.generateMap({ file: generatedPath, source: generatedPath, includeContent: true });
        try {
            var loader = new source_file_loader_1.SourceFileLoader(fs, logger);
            var generatedFile = loader.loadSourceFile(generatedPath, generatedContent, { map: generatedMap, mapPath: generatedMapPath });
            var rawMergedMap = generatedFile.renderFlattenedSourceMap();
            var mergedMap = convert_source_map_1.fromObject(rawMergedMap);
            var firstSource = generatedFile.sources[0];
            if (firstSource && (firstSource.rawMap !== null || !sourceFile.isDeclarationFile) &&
                firstSource.inline) {
                // We render an inline source map if one of:
                // * there was no input source map and this is not a typings file;
                // * the input source map exists and was inline.
                //
                // We do not generate inline source maps for typings files unless there explicitly was one in
                // the input file because these inline source maps can be very large and it impacts on the
                // performance of IDEs that need to read them to provide intellisense etc.
                return [
                    { path: generatedPath, contents: generatedFile.contents + "\n" + mergedMap.toComment() }
                ];
            }
            else {
                var sourceMapComment = convert_source_map_1.generateMapFileComment(file_system_1.basename(generatedPath) + ".map");
                return [
                    { path: generatedPath, contents: generatedFile.contents + "\n" + sourceMapComment },
                    { path: generatedMapPath, contents: mergedMap.toJSON() }
                ];
            }
        }
        catch (e) {
            logger.error("Error when flattening the source-map \"" + generatedMapPath + "\" for \"" + generatedPath + "\": " + e.toString());
            return [
                { path: generatedPath, contents: generatedContent },
                { path: generatedMapPath, contents: convert_source_map_1.fromObject(generatedMap).toJSON() },
            ];
        }
    }
    exports.renderSourceAndMap = renderSourceAndMap;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic291cmNlX21hcHMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvcmVuZGVyaW5nL3NvdXJjZV9tYXBzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztJQUFBOzs7Ozs7T0FNRztJQUNILHlEQUEwRjtJQUkxRiwyRUFBMEc7SUFHMUcsbUdBQWtFO0lBVWxFOzs7T0FHRztJQUNILFNBQWdCLGtCQUFrQixDQUM5QixNQUFjLEVBQUUsRUFBYyxFQUFFLFVBQXlCLEVBQ3pELG9CQUFpQztRQUNuQyxJQUFNLGFBQWEsR0FBRyxvQ0FBc0IsQ0FBQyxVQUFVLENBQUMsQ0FBQztRQUN6RCxJQUFNLGdCQUFnQixHQUFHLDBCQUFZLENBQUksYUFBYSxTQUFNLENBQUMsQ0FBQztRQUM5RCxJQUFNLGdCQUFnQixHQUFHLG9CQUFvQixDQUFDLFFBQVEsRUFBRSxDQUFDO1FBQ3pELElBQU0sWUFBWSxHQUFpQixvQkFBb0IsQ0FBQyxXQUFXLENBQy9ELEVBQUMsSUFBSSxFQUFFLGFBQWEsRUFBRSxNQUFNLEVBQUUsYUFBYSxFQUFFLGNBQWMsRUFBRSxJQUFJLEVBQUMsQ0FBQyxDQUFDO1FBRXhFLElBQUk7WUFDRixJQUFNLE1BQU0sR0FBRyxJQUFJLHFDQUFnQixDQUFDLEVBQUUsRUFBRSxNQUFNLENBQUMsQ0FBQztZQUNoRCxJQUFNLGFBQWEsR0FBRyxNQUFNLENBQUMsY0FBYyxDQUN2QyxhQUFhLEVBQUUsZ0JBQWdCLEVBQUUsRUFBQyxHQUFHLEVBQUUsWUFBWSxFQUFFLE9BQU8sRUFBRSxnQkFBZ0IsRUFBQyxDQUFDLENBQUM7WUFFckYsSUFBTSxZQUFZLEdBQWlCLGFBQWEsQ0FBQyx3QkFBd0IsRUFBRSxDQUFDO1lBQzVFLElBQU0sU0FBUyxHQUFHLCtCQUFVLENBQUMsWUFBWSxDQUFDLENBQUM7WUFDM0MsSUFBTSxXQUFXLEdBQUcsYUFBYSxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUMsQ0FBQztZQUM3QyxJQUFJLFdBQVcsSUFBSSxDQUFDLFdBQVcsQ0FBQyxNQUFNLEtBQUssSUFBSSxJQUFJLENBQUMsVUFBVSxDQUFDLGlCQUFpQixDQUFDO2dCQUM3RSxXQUFXLENBQUMsTUFBTSxFQUFFO2dCQUN0Qiw0Q0FBNEM7Z0JBQzVDLGtFQUFrRTtnQkFDbEUsZ0RBQWdEO2dCQUNoRCxFQUFFO2dCQUNGLDZGQUE2RjtnQkFDN0YsMEZBQTBGO2dCQUMxRiwwRUFBMEU7Z0JBQzFFLE9BQU87b0JBQ0wsRUFBQyxJQUFJLEVBQUUsYUFBYSxFQUFFLFFBQVEsRUFBSyxhQUFhLENBQUMsUUFBUSxVQUFLLFNBQVMsQ0FBQyxTQUFTLEVBQUksRUFBQztpQkFDdkYsQ0FBQzthQUNIO2lCQUFNO2dCQUNMLElBQU0sZ0JBQWdCLEdBQUcsMkNBQXNCLENBQUksc0JBQVEsQ0FBQyxhQUFhLENBQUMsU0FBTSxDQUFDLENBQUM7Z0JBQ2xGLE9BQU87b0JBQ0wsRUFBQyxJQUFJLEVBQUUsYUFBYSxFQUFFLFFBQVEsRUFBSyxhQUFhLENBQUMsUUFBUSxVQUFLLGdCQUFrQixFQUFDO29CQUNqRixFQUFDLElBQUksRUFBRSxnQkFBZ0IsRUFBRSxRQUFRLEVBQUUsU0FBUyxDQUFDLE1BQU0sRUFBRSxFQUFDO2lCQUN2RCxDQUFDO2FBQ0g7U0FDRjtRQUFDLE9BQU8sQ0FBQyxFQUFFO1lBQ1YsTUFBTSxDQUFDLEtBQUssQ0FBQyw0Q0FBeUMsZ0JBQWdCLGlCQUNsRSxhQUFhLFlBQU0sQ0FBQyxDQUFDLFFBQVEsRUFBSSxDQUFDLENBQUM7WUFDdkMsT0FBTztnQkFDTCxFQUFDLElBQUksRUFBRSxhQUFhLEVBQUUsUUFBUSxFQUFFLGdCQUFnQixFQUFDO2dCQUNqRCxFQUFDLElBQUksRUFBRSxnQkFBZ0IsRUFBRSxRQUFRLEVBQUUsK0JBQVUsQ0FBQyxZQUFZLENBQUMsQ0FBQyxNQUFNLEVBQUUsRUFBQzthQUN0RSxDQUFDO1NBQ0g7SUFDSCxDQUFDO0lBNUNELGdEQTRDQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IHtmcm9tT2JqZWN0LCBnZW5lcmF0ZU1hcEZpbGVDb21tZW50LCBTb3VyY2VNYXBDb252ZXJ0ZXJ9IGZyb20gJ2NvbnZlcnQtc291cmNlLW1hcCc7XG5pbXBvcnQgTWFnaWNTdHJpbmcgZnJvbSAnbWFnaWMtc3RyaW5nJztcbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge2Fic29sdXRlRnJvbSwgYWJzb2x1dGVGcm9tU291cmNlRmlsZSwgYmFzZW5hbWUsIEZpbGVTeXN0ZW19IGZyb20gJy4uLy4uLy4uL3NyYy9uZ3RzYy9maWxlX3N5c3RlbSc7XG5pbXBvcnQge0xvZ2dlcn0gZnJvbSAnLi4vbG9nZ2luZy9sb2dnZXInO1xuaW1wb3J0IHtSYXdTb3VyY2VNYXB9IGZyb20gJy4uL3NvdXJjZW1hcHMvcmF3X3NvdXJjZV9tYXAnO1xuaW1wb3J0IHtTb3VyY2VGaWxlTG9hZGVyfSBmcm9tICcuLi9zb3VyY2VtYXBzL3NvdXJjZV9maWxlX2xvYWRlcic7XG5cbmltcG9ydCB7RmlsZVRvV3JpdGV9IGZyb20gJy4vdXRpbHMnO1xuXG5leHBvcnQgaW50ZXJmYWNlIFNvdXJjZU1hcEluZm8ge1xuICBzb3VyY2U6IHN0cmluZztcbiAgbWFwOiBTb3VyY2VNYXBDb252ZXJ0ZXJ8bnVsbDtcbiAgaXNJbmxpbmU6IGJvb2xlYW47XG59XG5cbi8qKlxuICogTWVyZ2UgdGhlIGlucHV0IGFuZCBvdXRwdXQgc291cmNlLW1hcHMsIHJlcGxhY2luZyB0aGUgc291cmNlLW1hcCBjb21tZW50IGluIHRoZSBvdXRwdXQgZmlsZVxuICogd2l0aCBhbiBhcHByb3ByaWF0ZSBzb3VyY2UtbWFwIGNvbW1lbnQgcG9pbnRpbmcgdG8gdGhlIG1lcmdlZCBzb3VyY2UtbWFwLlxuICovXG5leHBvcnQgZnVuY3Rpb24gcmVuZGVyU291cmNlQW5kTWFwKFxuICAgIGxvZ2dlcjogTG9nZ2VyLCBmczogRmlsZVN5c3RlbSwgc291cmNlRmlsZTogdHMuU291cmNlRmlsZSxcbiAgICBnZW5lcmF0ZWRNYWdpY1N0cmluZzogTWFnaWNTdHJpbmcpOiBGaWxlVG9Xcml0ZVtdIHtcbiAgY29uc3QgZ2VuZXJhdGVkUGF0aCA9IGFic29sdXRlRnJvbVNvdXJjZUZpbGUoc291cmNlRmlsZSk7XG4gIGNvbnN0IGdlbmVyYXRlZE1hcFBhdGggPSBhYnNvbHV0ZUZyb20oYCR7Z2VuZXJhdGVkUGF0aH0ubWFwYCk7XG4gIGNvbnN0IGdlbmVyYXRlZENvbnRlbnQgPSBnZW5lcmF0ZWRNYWdpY1N0cmluZy50b1N0cmluZygpO1xuICBjb25zdCBnZW5lcmF0ZWRNYXA6IFJhd1NvdXJjZU1hcCA9IGdlbmVyYXRlZE1hZ2ljU3RyaW5nLmdlbmVyYXRlTWFwKFxuICAgICAge2ZpbGU6IGdlbmVyYXRlZFBhdGgsIHNvdXJjZTogZ2VuZXJhdGVkUGF0aCwgaW5jbHVkZUNvbnRlbnQ6IHRydWV9KTtcblxuICB0cnkge1xuICAgIGNvbnN0IGxvYWRlciA9IG5ldyBTb3VyY2VGaWxlTG9hZGVyKGZzLCBsb2dnZXIpO1xuICAgIGNvbnN0IGdlbmVyYXRlZEZpbGUgPSBsb2FkZXIubG9hZFNvdXJjZUZpbGUoXG4gICAgICAgIGdlbmVyYXRlZFBhdGgsIGdlbmVyYXRlZENvbnRlbnQsIHttYXA6IGdlbmVyYXRlZE1hcCwgbWFwUGF0aDogZ2VuZXJhdGVkTWFwUGF0aH0pO1xuXG4gICAgY29uc3QgcmF3TWVyZ2VkTWFwOiBSYXdTb3VyY2VNYXAgPSBnZW5lcmF0ZWRGaWxlLnJlbmRlckZsYXR0ZW5lZFNvdXJjZU1hcCgpO1xuICAgIGNvbnN0IG1lcmdlZE1hcCA9IGZyb21PYmplY3QocmF3TWVyZ2VkTWFwKTtcbiAgICBjb25zdCBmaXJzdFNvdXJjZSA9IGdlbmVyYXRlZEZpbGUuc291cmNlc1swXTtcbiAgICBpZiAoZmlyc3RTb3VyY2UgJiYgKGZpcnN0U291cmNlLnJhd01hcCAhPT0gbnVsbCB8fCAhc291cmNlRmlsZS5pc0RlY2xhcmF0aW9uRmlsZSkgJiZcbiAgICAgICAgZmlyc3RTb3VyY2UuaW5saW5lKSB7XG4gICAgICAvLyBXZSByZW5kZXIgYW4gaW5saW5lIHNvdXJjZSBtYXAgaWYgb25lIG9mOlxuICAgICAgLy8gKiB0aGVyZSB3YXMgbm8gaW5wdXQgc291cmNlIG1hcCBhbmQgdGhpcyBpcyBub3QgYSB0eXBpbmdzIGZpbGU7XG4gICAgICAvLyAqIHRoZSBpbnB1dCBzb3VyY2UgbWFwIGV4aXN0cyBhbmQgd2FzIGlubGluZS5cbiAgICAgIC8vXG4gICAgICAvLyBXZSBkbyBub3QgZ2VuZXJhdGUgaW5saW5lIHNvdXJjZSBtYXBzIGZvciB0eXBpbmdzIGZpbGVzIHVubGVzcyB0aGVyZSBleHBsaWNpdGx5IHdhcyBvbmUgaW5cbiAgICAgIC8vIHRoZSBpbnB1dCBmaWxlIGJlY2F1c2UgdGhlc2UgaW5saW5lIHNvdXJjZSBtYXBzIGNhbiBiZSB2ZXJ5IGxhcmdlIGFuZCBpdCBpbXBhY3RzIG9uIHRoZVxuICAgICAgLy8gcGVyZm9ybWFuY2Ugb2YgSURFcyB0aGF0IG5lZWQgdG8gcmVhZCB0aGVtIHRvIHByb3ZpZGUgaW50ZWxsaXNlbnNlIGV0Yy5cbiAgICAgIHJldHVybiBbXG4gICAgICAgIHtwYXRoOiBnZW5lcmF0ZWRQYXRoLCBjb250ZW50czogYCR7Z2VuZXJhdGVkRmlsZS5jb250ZW50c31cXG4ke21lcmdlZE1hcC50b0NvbW1lbnQoKX1gfVxuICAgICAgXTtcbiAgICB9IGVsc2Uge1xuICAgICAgY29uc3Qgc291cmNlTWFwQ29tbWVudCA9IGdlbmVyYXRlTWFwRmlsZUNvbW1lbnQoYCR7YmFzZW5hbWUoZ2VuZXJhdGVkUGF0aCl9Lm1hcGApO1xuICAgICAgcmV0dXJuIFtcbiAgICAgICAge3BhdGg6IGdlbmVyYXRlZFBhdGgsIGNvbnRlbnRzOiBgJHtnZW5lcmF0ZWRGaWxlLmNvbnRlbnRzfVxcbiR7c291cmNlTWFwQ29tbWVudH1gfSxcbiAgICAgICAge3BhdGg6IGdlbmVyYXRlZE1hcFBhdGgsIGNvbnRlbnRzOiBtZXJnZWRNYXAudG9KU09OKCl9XG4gICAgICBdO1xuICAgIH1cbiAgfSBjYXRjaCAoZSkge1xuICAgIGxvZ2dlci5lcnJvcihgRXJyb3Igd2hlbiBmbGF0dGVuaW5nIHRoZSBzb3VyY2UtbWFwIFwiJHtnZW5lcmF0ZWRNYXBQYXRofVwiIGZvciBcIiR7XG4gICAgICAgIGdlbmVyYXRlZFBhdGh9XCI6ICR7ZS50b1N0cmluZygpfWApO1xuICAgIHJldHVybiBbXG4gICAgICB7cGF0aDogZ2VuZXJhdGVkUGF0aCwgY29udGVudHM6IGdlbmVyYXRlZENvbnRlbnR9LFxuICAgICAge3BhdGg6IGdlbmVyYXRlZE1hcFBhdGgsIGNvbnRlbnRzOiBmcm9tT2JqZWN0KGdlbmVyYXRlZE1hcCkudG9KU09OKCl9LFxuICAgIF07XG4gIH1cbn1cbiJdfQ==