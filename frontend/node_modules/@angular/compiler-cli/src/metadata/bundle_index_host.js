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
        define("@angular/compiler-cli/src/metadata/bundle_index_host", ["require", "exports", "tslib", "path", "typescript", "@angular/compiler-cli/src/metadata/bundler", "@angular/compiler-cli/src/metadata/index_writer"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.createBundleIndexHost = void 0;
    var tslib_1 = require("tslib");
    var path = require("path");
    var ts = require("typescript");
    var bundler_1 = require("@angular/compiler-cli/src/metadata/bundler");
    var index_writer_1 = require("@angular/compiler-cli/src/metadata/index_writer");
    var DTS = /\.d\.ts$/;
    var JS_EXT = /(\.js|)$/;
    function createSyntheticIndexHost(delegate, syntheticIndex) {
        var normalSyntheticIndexName = path.normalize(syntheticIndex.name);
        var newHost = Object.create(delegate);
        newHost.fileExists = function (fileName) {
            return path.normalize(fileName) == normalSyntheticIndexName || delegate.fileExists(fileName);
        };
        newHost.readFile = function (fileName) {
            return path.normalize(fileName) == normalSyntheticIndexName ? syntheticIndex.content :
                delegate.readFile(fileName);
        };
        newHost.getSourceFile =
            function (fileName, languageVersion, onError) {
                if (path.normalize(fileName) == normalSyntheticIndexName) {
                    var sf = ts.createSourceFile(fileName, syntheticIndex.content, languageVersion, true);
                    if (delegate.fileNameToModuleName) {
                        sf.moduleName = delegate.fileNameToModuleName(fileName);
                    }
                    return sf;
                }
                return delegate.getSourceFile(fileName, languageVersion, onError);
            };
        newHost.writeFile =
            function (fileName, data, writeByteOrderMark, onError, sourceFiles) {
                delegate.writeFile(fileName, data, writeByteOrderMark, onError, sourceFiles);
                if (fileName.match(DTS) && sourceFiles && sourceFiles.length == 1 &&
                    path.normalize(sourceFiles[0].fileName) === normalSyntheticIndexName) {
                    // If we are writing the synthetic index, write the metadata along side.
                    var metadataName = fileName.replace(DTS, '.metadata.json');
                    var indexMetadata = syntheticIndex.getMetadata();
                    delegate.writeFile(metadataName, indexMetadata, writeByteOrderMark, onError, []);
                }
            };
        return newHost;
    }
    function createBundleIndexHost(ngOptions, rootFiles, host, getMetadataCache) {
        var e_1, _a;
        var files = rootFiles.filter(function (f) { return !DTS.test(f); });
        var indexFile;
        if (files.length === 1) {
            indexFile = files[0];
        }
        else {
            try {
                for (var files_1 = tslib_1.__values(files), files_1_1 = files_1.next(); !files_1_1.done; files_1_1 = files_1.next()) {
                    var f = files_1_1.value;
                    // Assume the shortest file path called index.ts is the entry point. Note that we
                    // need to use the posix path delimiter here because TypeScript internally only
                    // passes posix paths.
                    if (f.endsWith('/index.ts')) {
                        if (!indexFile || indexFile.length > f.length) {
                            indexFile = f;
                        }
                    }
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (files_1_1 && !files_1_1.done && (_a = files_1.return)) _a.call(files_1);
                }
                finally { if (e_1) throw e_1.error; }
            }
        }
        if (!indexFile) {
            return {
                host: host,
                errors: [{
                        file: null,
                        start: null,
                        length: null,
                        messageText: 'Angular compiler option "flatModuleIndex" requires one and only one .ts file in the "files" field.',
                        category: ts.DiagnosticCategory.Error,
                        code: 0
                    }]
            };
        }
        var indexModule = indexFile.replace(/\.ts$/, '');
        // The operation of producing a metadata bundle happens twice - once during setup and once during
        // the emit phase. The first time, the bundle is produced without a metadata cache, to compute the
        // contents of the flat module index. The bundle produced during emit does use the metadata cache
        // with associated transforms, so the metadata will have lowered expressions, resource inlining,
        // etc.
        var getMetadataBundle = function (cache) {
            var bundler = new bundler_1.MetadataBundler(indexModule, ngOptions.flatModuleId, new bundler_1.CompilerHostAdapter(host, cache, ngOptions), ngOptions.flatModulePrivateSymbolPrefix);
            return bundler.getMetadataBundle();
        };
        // First, produce the bundle with no MetadataCache.
        var metadataBundle = getMetadataBundle(/* MetadataCache */ null);
        var name = path.join(path.dirname(indexModule), ngOptions.flatModuleOutFile.replace(JS_EXT, '.ts'));
        var libraryIndex = "./" + path.basename(indexModule);
        var content = index_writer_1.privateEntriesToIndex(libraryIndex, metadataBundle.privates);
        host = createSyntheticIndexHost(host, {
            name: name,
            content: content,
            getMetadata: function () {
                // The second metadata bundle production happens on-demand, and uses the getMetadataCache
                // closure to retrieve an up-to-date MetadataCache which is configured with whatever metadata
                // transforms were used to produce the JS output.
                var metadataBundle = getMetadataBundle(getMetadataCache());
                return JSON.stringify(metadataBundle.metadata);
            }
        });
        return { host: host, indexName: name };
    }
    exports.createBundleIndexHost = createBundleIndexHost;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYnVuZGxlX2luZGV4X2hvc3QuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL21ldGFkYXRhL2J1bmRsZV9pbmRleF9ob3N0LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFHSCwyQkFBNkI7SUFDN0IsK0JBQWlDO0lBS2pDLHNFQUErRDtJQUMvRCxnRkFBcUQ7SUFFckQsSUFBTSxHQUFHLEdBQUcsVUFBVSxDQUFDO0lBQ3ZCLElBQU0sTUFBTSxHQUFHLFVBQVUsQ0FBQztJQUUxQixTQUFTLHdCQUF3QixDQUM3QixRQUFXLEVBQUUsY0FBMEU7UUFDekYsSUFBTSx3QkFBd0IsR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDLGNBQWMsQ0FBQyxJQUFJLENBQUMsQ0FBQztRQUVyRSxJQUFNLE9BQU8sR0FBRyxNQUFNLENBQUMsTUFBTSxDQUFDLFFBQVEsQ0FBQyxDQUFDO1FBQ3hDLE9BQU8sQ0FBQyxVQUFVLEdBQUcsVUFBQyxRQUFnQjtZQUNwQyxPQUFPLElBQUksQ0FBQyxTQUFTLENBQUMsUUFBUSxDQUFDLElBQUksd0JBQXdCLElBQUksUUFBUSxDQUFDLFVBQVUsQ0FBQyxRQUFRLENBQUMsQ0FBQztRQUMvRixDQUFDLENBQUM7UUFFRixPQUFPLENBQUMsUUFBUSxHQUFHLFVBQUMsUUFBZ0I7WUFDbEMsT0FBTyxJQUFJLENBQUMsU0FBUyxDQUFDLFFBQVEsQ0FBQyxJQUFJLHdCQUF3QixDQUFDLENBQUMsQ0FBQyxjQUFjLENBQUMsT0FBTyxDQUFDLENBQUM7Z0JBQ3hCLFFBQVEsQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLENBQUM7UUFDNUYsQ0FBQyxDQUFDO1FBRUYsT0FBTyxDQUFDLGFBQWE7WUFDakIsVUFBQyxRQUFnQixFQUFFLGVBQWdDLEVBQUUsT0FBbUM7Z0JBQ3RGLElBQUksSUFBSSxDQUFDLFNBQVMsQ0FB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LFFBQVEsQ0FBQyxDQUFDO1lBQ2pELENBQUM7U0FDRixDQUFDLENBQUM7UUFDSCxPQUFPLEVBQUMsSUFBSSxNQUFBLEVBQUUsU0FBUyxFQUFFLElBQUksRUFBQyxDQUFDO0lBQ2pDLENBQUM7SUFwRUQsc0RBb0VDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCAqIGFzIGZzIGZyb20gJ2ZzJztcbmltcG9ydCAqIGFzIHBhdGggZnJvbSAncGF0aCc7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtDb21waWxlck9wdGlvbnN9IGZyb20gJy4uL3RyYW5zZm9ybWVycy9hcGknO1xuaW1wb3J0IHtNZXRhZGF0YUNhY2hlfSBmcm9tICcuLi90cmFuc2Zvcm1lcnMvbWV0YWRhdGFfY2FjaGUnO1xuXG5pbXBvcnQge0NvbXBpbGVySG9zdEFkYXB0ZXIsIE1ldGFkYXRhQnVuZGxlcn0gZnJvbSAnLi9idW5kbGVyJztcbmltcG9ydCB7cHJpdmF0ZUVudHJpZXNUb0luZGV4fSBmcm9tICcuL2luZGV4X3dyaXRlcic7XG5cbmNvbnN0IERUUyA9IC9cXC5kXFwudHMkLztcbmNvbnN0IEpTX0VYVCA9IC8oXFwuanN8KSQvO1xuXG5mdW5jdGlvbiBjcmVhdGVTeW50aGV0aWNJbmRleEhvc3Q8SCBleHRlbmRzIHRzLkNvbXBpbGVySG9zdD4oXG4gICAgZGVsZWdhdGU6IEgsIHN5bnRoZXRpY0luZGV4OiB7bmFtZTogc3RyaW5nLCBjb250ZW50OiBzdHJpbmcsIGdldE1ldGFkYXRhOiAoKSA9PiBzdHJpbmd9KTogSCB7XG4gIGNvbnN0IG5vcm1hbFN5bnRoZXRpY0luZGV4TmFtZSA9IHBhdGgubm9ybWFsaXplKHN5bnRoZXRpY0luZGV4Lm5hbWUpO1xuXG4gIGNvbnN0IG5ld0hvc3QgPSBPYmplY3QuY3JlYXRlKGRlbGVnYXRlKTtcbiAgbmV3SG9zdC5maWxlRXhpc3RzID0gKGZpbGVOYW1lOiBzdHJpbmcpOiBib29sZWFuID0+IHtcbiAgICByZXR1cm4gcGF0aC5ub3JtYWxpemUoZmlsZU5hbWUpID09IG5vcm1hbFN5bnRoZXRpY0luZGV4TmFtZSB8fCBkZWxlZ2F0ZS5maWxlRXhpc3RzKGZpbGVOYW1lKTtcbiAgfTtcblxuICBuZXdIb3N0LnJlYWRGaWxlID0gKGZpbGVOYW1lOiBzdHJpbmcpID0+IHtcbiAgICByZXR1cm4gcGF0aC5ub3JtYWxpemUoZmlsZU5hbWUpID09IG5vcm1hbFN5bnRoZXRpY0luZGV4TmFtZSA/IHN5bnRoZXRpY0luZGV4LmNvbnRlbnQgOlxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGVsZWdhdGUucmVhZEZpbGUoZmlsZU5hbWUpO1xuICB9O1xuXG4gIG5ld0hvc3QuZ2V0U291cmNlRmlsZSA9XG4gICAgICAoZmlsZU5hbWU6IHN0cmluZywgbGFuZ3VhZ2VWZXJzaW9uOiB0cy5TY3JpcHRUYXJnZXQsIG9uRXJyb3I/OiAobWVzc2FnZTogc3RyaW5nKSA9PiB2b2lkKSA9PiB7XG4gICAgICAgIGlmIChwYXRoLm5vcm1hbGl6ZShmaWxlTmFtZSkgPT0gbm9ybWFsU3ludGhldGljSW5kZXhOYW1lKSB7XG4gICAgICAgICAgY29uc3Qgc2YgPSB0cy5jcmVhdGVTb3VyY2VGaWxlKGZpbGVOYW1lLCBzeW50aGV0aWNJbmRleC5jb250ZW50LCBsYW5ndWFnZVZlcnNpb24sIHRydWUpO1xuICAgICAgICAgIGlmICgoZGVsZWdhdGUgYXMgYW55KS5maWxlTmFtZVRvTW9kdWxlTmFtZSkge1xuICAgICAgICAgICAgc2YubW9kdWxlTmFtZSA9IChkZWxlZ2F0ZSBhcyBhbnkpLmZpbGVOYW1lVG9Nb2R1bGVOYW1lKGZpbGVOYW1lKTtcbiAgICAgICAgICB9XG4gICAgICAgICAgcmV0dXJuIHNmO1xuICAgICAgICB9XG4gICAgICAgIHJldHVybiBkZWxlZ2F0ZS5nZXRTb3VyY2VGaWxlKGZpbGVOYW1lLCBsYW5ndWFnZVZlcnNpb24sIG9uRXJyb3IpO1xuICAgICAgfTtcblxuICBuZXdIb3N0LndyaXRlRmlsZSA9XG4gICAgICAoZmlsZU5hbWU6IHN0cmluZywgZGF0YTogc3RyaW5nLCB3cml0ZUJ5dGVPcmRlck1hcms6IGJvb2xlYW4sXG4gICAgICAgb25FcnJvcjogKChtZXNzYWdlOiBzdHJpbmcpID0+IHZvaWQpfHVuZGVmaW5lZCwgc291cmNlRmlsZXM6IFJlYWRvbmx5PHRzLlNvdXJjZUZpbGU+W10pID0+IHtcbiAgICAgICAgZGVsZWdhdGUud3JpdGVGaWxlKGZpbGVOYW1lLCBkYXRhLCB3cml0ZUJ5dGVPcmRlck1hcmssIG9uRXJyb3IsIHNvdXJjZUZpbGVzKTtcbiAgICAgICAgaWYgKGZpbGVOYW1lLm1hdGNoKERUUykgJiYgc291cmNlRmlsZXMgJiYgc291cmNlRmlsZXMubGVuZ3RoID09IDEgJiZcbiAgICAgICAgICAgIHBhdGgubm9ybWFsaXplKHNvdXJjZUZpbGVzWzBdLmZpbGVOYW1lKSA9PT0gbm9ybWFsU3ludGhldGljSW5kZXhOYW1lKSB7XG4gICAgICAgICAgLy8gSWYgd2UgYXJlIHdyaXRpbmcgdGhlIHN5bnRoZXRpYyBpbmRleCwgd3JpdGUgdGhlIG1ldGFkYXRhIGFsb25nIHNpZGUuXG4gICAgICAgICAgY29uc3QgbWV0YWRhdGFOYW1lID0gZmlsZU5hbWUucmVwbGFjZShEVFMsICcubWV0YWRhdGEuanNvbicpO1xuICAgICAgICAgIGNvbnN0IGluZGV4TWV0YWRhdGEgPSBzeW50aGV0aWNJbmRleC5nZXRNZXRhZGF0YSgpO1xuICAgICAgICAgIGRlbGVnYXRlLndyaXRlRmlsZShtZXRhZGF0YU5hbWUsIGluZGV4TWV0YWRhdGEsIHdyaXRlQnl0ZU9yZGVyTWFyaywgb25FcnJvciwgW10pO1xuICAgICAgICB9XG4gICAgICB9O1xuICByZXR1cm4gbmV3SG9zdDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGNyZWF0ZUJ1bmRsZUluZGV4SG9zdDxIIGV4dGVuZHMgdHMuQ29tcGlsZXJIb3N0PihcbiAgICBuZ09wdGlvbnM6IENvbXBpbGVyT3B0aW9ucywgcm9vdEZpbGVzOiBSZWFkb25seUFycmF5PHN0cmluZz4sIGhvc3Q6IEgsXG4gICAgZ2V0TWV0YWRhdGFDYWNoZTogKCkgPT5cbiAgICAgICAgTWV0YWRhdGFDYWNoZSk6IHtob3N0OiBILCBpbmRleE5hbWU/OiBzdHJpbmcsIGVycm9ycz86IHRzLkRpYWdub3N0aWNbXX0ge1xuICBjb25zdCBmaWxlcyA9IHJvb3RGaWxlcy5maWx0ZXIoZiA9PiAhRFRTLnRlc3QoZikpO1xuICBsZXQgaW5kZXhGaWxlOiBzdHJpbmd8dW5kZWZpbmVkO1xuICBpZiAoZmlsZXMubGVuZ3RoID09PSAxKSB7XG4gICAgaW5kZXhGaWxlID0gZmlsZXNbMF07XG4gIH0gZWxzZSB7XG4gICAgZm9yIChjb25zdCBmIG9mIGZpbGVzKSB7XG4gICAgICAvLyBBc3N1bWUgdGhlIHNob3J0ZXN0IGZpbGUgcGF0aCBjYWxsZWQgaW5kZXgudHMgaXMgdGhlIGVudHJ5IHBvaW50LiBOb3RlIHRoYXQgd2VcbiAgICAgIC8vIG5lZWQgdG8gdXNlIHRoZSBwb3NpeCBwYXRoIGRlbGltaXRlciBoZXJlIGJlY2F1c2UgVHlwZVNjcmlwdCBpbnRlcm5hbGx5IG9ubHlcbiAgICAgIC8vIHBhc3NlcyBwb3NpeCBwYXRocy5cbiAgICAgIGlmIChmLmVuZHNXaXRoKCcvaW5kZXgudHMnKSkge1xuICAgICAgICBpZiAoIWluZGV4RmlsZSB8fCBpbmRleEZpbGUubGVuZ3RoID4gZi5sZW5ndGgpIHtcbiAgICAgICAgICBpbmRleEZpbGUgPSBmO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG4gIGlmICghaW5kZXhGaWxlKSB7XG4gICAgcmV0dXJuIHtcbiAgICAgIGhvc3QsXG4gICAgICBlcnJvcnM6IFt7XG4gICAgICAgIGZpbGU6IG51bGwgYXMgYW55IGFzIHRzLlNvdXJjZUZpbGUsXG4gICAgICAgIHN0YXJ0OiBudWxsIGFzIGFueSBhcyBudW1iZXIsXG4gICAgICAgIGxlbmd0aDogbnVsbCBhcyBhbnkgYXMgbnVtYmVyLFxuICAgICAgICBtZXNzYWdlVGV4dDpcbiAgICAgICAgICAgICdBbmd1bGFyIGNvbXBpbGVyIG9wdGlvbiBcImZsYXRNb2R1bGVJbmRleFwiIHJlcXVpcmVzIG9uZSBhbmQgb25seSBvbmUgLnRzIGZpbGUgaW4gdGhlIFwiZmlsZXNcIiBmaWVsZC4nLFxuICAgICAgICBjYXRlZ29yeTogdHMuRGlhZ25vc3RpY0NhdGVnb3J5LkVycm9yLFxuICAgICAgICBjb2RlOiAwXG4gICAgICB9XVxuICAgIH07XG4gIH1cblxuICBjb25zdCBpbmRleE1vZHVsZSA9IGluZGV4RmlsZS5yZXBsYWNlKC9cXC50cyQvLCAnJyk7XG5cbiAgLy8gVGhlIG9wZXJhdGlvbiBvZiBwcm9kdWNpbmcgYSBtZXRhZGF0YSBidW5kbGUgaGFwcGVucyB0d2ljZSAtIG9uY2UgZHVyaW5nIHNldHVwIGFuZCBvbmNlIGR1cmluZ1xuICAvLyB0aGUgZW1pdCBwaGFzZS4gVGhlIGZpcnN0IHRpbWUsIHRoZSBidW5kbGUgaXMgcHJvZHVjZWQgd2l0aG91dCBhIG1ldGFkYXRhIGNhY2hlLCB0byBjb21wdXRlIHRoZVxuICAvLyBjb250ZW50cyBvZiB0aGUgZmxhdCBtb2R1bGUgaW5kZXguIFRoZSBidW5kbGUgcHJvZHVjZWQgZHVyaW5nIGVtaXQgZG9lcyB1c2UgdGhlIG1ldGFkYXRhIGNhY2hlXG4gIC8vIHdpdGggYXNzb2NpYXRlZCB0cmFuc2Zvcm1zLCBzbyB0aGUgbWV0YWRhdGEgd2lsbCBoYXZlIGxvd2VyZWQgZXhwcmVzc2lvbnMsIHJlc291cmNlIGlubGluaW5nLFxuICAvLyBldGMuXG4gIGNvbnN0IGdldE1ldGFkYXRhQnVuZGxlID0gKGNhY2hlOiBNZXRhZGF0YUNhY2hlfG51bGwpID0+IHtcbiAgICBjb25zdCBidW5kbGVyID0gbmV3IE1ldGFkYXRhQnVuZGxlcihcbiAgICAgICAgaW5kZXhNb2R1bGUsIG5nT3B0aW9ucy5mbGF0TW9kdWxlSWQsIG5ldyBDb21waWxlckhvc3RBZGFwdGVyKGhvc3QsIGNhY2hlLCBuZ09wdGlvbnMpLFxuICAgICAgICBuZ09wdGlvbnMuZmxhdE1vZHVsZVByaXZhdGVTeW1ib2xQcmVmaXgpO1xuICAgIHJldHVybiBidW5kbGVyLmdldE1ldGFkYXRhQnVuZGxlKCk7XG4gIH07XG5cbiAgLy8gRmlyc3QsIHByb2R1Y2UgdGhlIGJ1bmRsZSB3aXRoIG5vIE1ldGFkYXRhQ2FjaGUuXG4gIGNvbnN0IG1ldGFkYXRhQnVuZGxlID0gZ2V0TWV0YWRhdGFCdW5kbGUoLyogTWV0YWRhdGFDYWNoZSAqLyBudWxsKTtcbiAgY29uc3QgbmFtZSA9XG4gICAgICBwYXRoLmpvaW4ocGF0aC5kaXJuYW1lKGluZGV4TW9kdWxlKSwgbmdPcHRpb25zLmZsYXRNb2R1bGVPdXRGaWxlIS5yZXBsYWNlKEpTX0VYVCwgJy50cycpKTtcbiAgY29uc3QgbGlicmFyeUluZGV4ID0gYC4vJHtwYXRoLmJhc2VuYW1lKGluZGV4TW9kdWxlKX1gO1xuICBjb25zdCBjb250ZW50ID0gcHJpdmF0ZUVudHJpZXNUb0luZGV4KGxpYnJhcnlJbmRleCwgbWV0YWRhdGFCdW5kbGUucHJpdmF0ZXMpO1xuXG4gIGhvc3QgPSBjcmVhdGVTeW50aGV0aWNJbmRleEhvc3QoaG9zdCwge1xuICAgIG5hbWUsXG4gICAgY29udGVudCxcbiAgICBnZXRNZXRhZGF0YTogKCkgPT4ge1xuICAgICAgLy8gVGhlIHNlY29uZCBtZXRhZGF0YSBidW5kbGUgcHJvZHVjdGlvbiBoYXBwZW5zIG9uLWRlbWFuZCwgYW5kIHVzZXMgdGhlIGdldE1ldGFkYXRhQ2FjaGVcbiAgICAgIC8vIGNsb3N1cmUgdG8gcmV0cmlldmUgYW4gdXAtdG8tZGF0ZSBNZXRhZGF0YUNhY2hlIHdoaWNoIGlzIGNvbmZpZ3VyZWQgd2l0aCB3aGF0ZXZlciBtZXRhZGF0YVxuICAgICAgLy8gdHJhbnNmb3JtcyB3ZXJlIHVzZWQgdG8gcHJvZHVjZSB0aGUgSlMgb3V0cHV0LlxuICAgICAgY29uc3QgbWV0YWRhdGFCdW5kbGUgPSBnZXRNZXRhZGF0YUJ1bmRsZShnZXRNZXRhZGF0YUNhY2hlKCkpO1xuICAgICAgcmV0dXJuIEpTT04uc3RyaW5naWZ5KG1ldGFkYXRhQnVuZGxlLm1ldGFkYXRhKTtcbiAgICB9XG4gIH0pO1xuICByZXR1cm4ge2hvc3QsIGluZGV4TmFtZTogbmFtZX07XG59XG4iXX0=