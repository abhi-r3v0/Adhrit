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
        define("@angular/compiler-cli/src/perform_watch", ["require", "exports", "chokidar", "path", "typescript", "@angular/compiler-cli/src/perform_compile", "@angular/compiler-cli/src/transformers/api", "@angular/compiler-cli/src/transformers/entry_points", "@angular/compiler-cli/src/transformers/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.performWatchCompilation = exports.createPerformWatchHost = exports.FileChangeEvent = void 0;
    var chokidar = require("chokidar");
    var path = require("path");
    var ts = require("typescript");
    var perform_compile_1 = require("@angular/compiler-cli/src/perform_compile");
    var api = require("@angular/compiler-cli/src/transformers/api");
    var entry_points_1 = require("@angular/compiler-cli/src/transformers/entry_points");
    var util_1 = require("@angular/compiler-cli/src/transformers/util");
    function totalCompilationTimeDiagnostic(timeInMillis) {
        var duration;
        if (timeInMillis > 1000) {
            duration = (timeInMillis / 1000).toPrecision(2) + "s";
        }
        else {
            duration = timeInMillis + "ms";
        }
        return {
            category: ts.DiagnosticCategory.Message,
            messageText: "Total time: " + duration,
            code: api.DEFAULT_ERROR_CODE,
            source: api.SOURCE,
        };
    }
    var FileChangeEvent;
    (function (FileChangeEvent) {
        FileChangeEvent[FileChangeEvent["Change"] = 0] = "Change";
        FileChangeEvent[FileChangeEvent["CreateDelete"] = 1] = "CreateDelete";
        FileChangeEvent[FileChangeEvent["CreateDeleteDir"] = 2] = "CreateDeleteDir";
    })(FileChangeEvent = exports.FileChangeEvent || (exports.FileChangeEvent = {}));
    function createPerformWatchHost(configFileName, reportDiagnostics, existingOptions, createEmitCallback) {
        return {
            reportDiagnostics: reportDiagnostics,
            createCompilerHost: function (options) { return entry_points_1.createCompilerHost({ options: options }); },
            readConfiguration: function () { return perform_compile_1.readConfiguration(configFileName, existingOptions); },
            createEmitCallback: function (options) { return createEmitCallback ? createEmitCallback(options) : undefined; },
            onFileChange: function (options, listener, ready) {
                if (!options.basePath) {
                    reportDiagnostics([{
                            category: ts.DiagnosticCategory.Error,
                            messageText: 'Invalid configuration option. baseDir not specified',
                            source: api.SOURCE,
                            code: api.DEFAULT_ERROR_CODE
                        }]);
                    return { close: function () { } };
                }
                var watcher = chokidar.watch(options.basePath, {
                    // ignore .dotfiles, .js and .map files.
                    // can't ignore other files as we e.g. want to recompile if an `.html` file changes as well.
                    ignored: /((^[\/\\])\..)|(\.js$)|(\.map$)|(\.metadata\.json|node_modules)/,
                    ignoreInitial: true,
                    persistent: true,
                });
                watcher.on('all', function (event, path) {
                    switch (event) {
                        case 'change':
                            listener(FileChangeEvent.Change, path);
                            break;
                        case 'unlink':
                        case 'add':
                            listener(FileChangeEvent.CreateDelete, path);
                            break;
                        case 'unlinkDir':
                        case 'addDir':
                            listener(FileChangeEvent.CreateDeleteDir, path);
                            break;
                    }
                });
                watcher.on('ready', ready);
                return { close: function () { return watcher.close(); }, ready: ready };
            },
            setTimeout: (ts.sys.clearTimeout && ts.sys.setTimeout) || setTimeout,
            clearTimeout: (ts.sys.setTimeout && ts.sys.clearTimeout) || clearTimeout,
        };
    }
    exports.createPerformWatchHost = createPerformWatchHost;
    /**
     * The logic in this function is adapted from `tsc.ts` from TypeScript.
     */
    function performWatchCompilation(host) {
        var cachedProgram; // Program cached from last compilation
        var cachedCompilerHost; // CompilerHost cached from last compilation
        var cachedOptions; // CompilerOptions cached from last compilation
        var timerHandleForRecompilation; // Handle for 0.25s wait timer to trigger recompilation
        var ignoreFilesForWatch = new Set();
        var fileCache = new Map();
        var firstCompileResult = doCompilation();
        // Watch basePath, ignoring .dotfiles
        var resolveReadyPromise;
        var readyPromise = new Promise(function (resolve) { return resolveReadyPromise = resolve; });
        // Note: ! is ok as options are filled after the first compilation
        // Note: ! is ok as resolvedReadyPromise is filled by the previous call
        var fileWatcher = host.onFileChange(cachedOptions.options, watchedFileChanged, resolveReadyPromise);
        return { close: close, ready: function (cb) { return readyPromise.then(cb); }, firstCompileResult: firstCompileResult };
        function cacheEntry(fileName) {
            fileName = path.normalize(fileName);
            var entry = fileCache.get(fileName);
            if (!entry) {
                entry = {};
                fileCache.set(fileName, entry);
            }
            return entry;
        }
        function close() {
            fileWatcher.close();
            if (timerHandleForRecompilation) {
                host.clearTimeout(timerHandleForRecompilation.timerHandle);
                timerHandleForRecompilation = undefined;
            }
        }
        // Invoked to perform initial compilation or re-compilation in watch mode
        function doCompilation() {
            if (!cachedOptions) {
                cachedOptions = host.readConfiguration();
            }
            if (cachedOptions.errors && cachedOptions.errors.length) {
                host.reportDiagnostics(cachedOptions.errors);
                return cachedOptions.errors;
            }
            var startTime = Date.now();
            if (!cachedCompilerHost) {
                cachedCompilerHost = host.createCompilerHost(cachedOptions.options);
                var originalWriteFileCallback_1 = cachedCompilerHost.writeFile;
                cachedCompilerHost.writeFile = function (fileName, data, writeByteOrderMark, onError, sourceFiles) {
                    if (sourceFiles === void 0) { sourceFiles = []; }
                    ignoreFilesForWatch.add(path.normalize(fileName));
                    return originalWriteFileCallback_1(fileName, data, writeByteOrderMark, onError, sourceFiles);
                };
                var originalFileExists_1 = cachedCompilerHost.fileExists;
                cachedCompilerHost.fileExists = function (fileName) {
                    var ce = cacheEntry(fileName);
                    if (ce.exists == null) {
                        ce.exists = originalFileExists_1.call(this, fileName);
                    }
                    return ce.exists;
                };
                var originalGetSourceFile_1 = cachedCompilerHost.getSourceFile;
                cachedCompilerHost.getSourceFile = function (fileName, languageVersion) {
                    var ce = cacheEntry(fileName);
                    if (!ce.sf) {
                        ce.sf = originalGetSourceFile_1.call(this, fileName, languageVersion);
                    }
                    return ce.sf;
                };
                var originalReadFile_1 = cachedCompilerHost.readFile;
                cachedCompilerHost.readFile = function (fileName) {
                    var ce = cacheEntry(fileName);
                    if (ce.content == null) {
                        ce.content = originalReadFile_1.call(this, fileName);
                    }
                    return ce.content;
                };
                // Provide access to the file paths that triggered this rebuild
                cachedCompilerHost.getModifiedResourceFiles = function () {
                    if (timerHandleForRecompilation === undefined) {
                        return undefined;
                    }
                    return timerHandleForRecompilation.modifiedResourceFiles;
                };
            }
            ignoreFilesForWatch.clear();
            var oldProgram = cachedProgram;
            // We clear out the `cachedProgram` here as a
            // program can only be used as `oldProgram` 1x
            cachedProgram = undefined;
            var compileResult = perform_compile_1.performCompilation({
                rootNames: cachedOptions.rootNames,
                options: cachedOptions.options,
                host: cachedCompilerHost,
                oldProgram: oldProgram,
                emitCallback: host.createEmitCallback(cachedOptions.options)
            });
            if (compileResult.diagnostics.length) {
                host.reportDiagnostics(compileResult.diagnostics);
            }
            var endTime = Date.now();
            if (cachedOptions.options.diagnostics) {
                var totalTime = (endTime - startTime) / 1000;
                host.reportDiagnostics([totalCompilationTimeDiagnostic(endTime - startTime)]);
            }
            var exitCode = perform_compile_1.exitCodeFromResult(compileResult.diagnostics);
            if (exitCode == 0) {
                cachedProgram = compileResult.program;
                host.reportDiagnostics([util_1.createMessageDiagnostic('Compilation complete. Watching for file changes.')]);
            }
            else {
                host.reportDiagnostics([util_1.createMessageDiagnostic('Compilation failed. Watching for file changes.')]);
            }
            return compileResult.diagnostics;
        }
        function resetOptions() {
            cachedProgram = undefined;
            cachedCompilerHost = undefined;
            cachedOptions = undefined;
        }
        function watchedFileChanged(event, fileName) {
            var normalizedPath = path.normalize(fileName);
            if (cachedOptions && event === FileChangeEvent.Change &&
                // TODO(chuckj): validate that this is sufficient to skip files that were written.
                // This assumes that the file path we write is the same file path we will receive in the
                // change notification.
                normalizedPath === path.normalize(cachedOptions.project)) {
                // If the configuration file changes, forget everything and start the recompilation timer
                resetOptions();
            }
            else if (event === FileChangeEvent.CreateDelete || event === FileChangeEvent.CreateDeleteDir) {
                // If a file was added or removed, reread the configuration
                // to determine the new list of root files.
                cachedOptions = undefined;
            }
            if (event === FileChangeEvent.CreateDeleteDir) {
                fileCache.clear();
            }
            else {
                fileCache.delete(normalizedPath);
            }
            if (!ignoreFilesForWatch.has(normalizedPath)) {
                // Ignore the file if the file is one that was written by the compiler.
                startTimerForRecompilation(normalizedPath);
            }
        }
        // Upon detecting a file change, wait for 250ms and then perform a recompilation. This gives batch
        // operations (such as saving all modified files in an editor) a chance to complete before we kick
        // off a new compilation.
        function startTimerForRecompilation(changedPath) {
            if (timerHandleForRecompilation) {
                host.clearTimeout(timerHandleForRecompilation.timerHandle);
            }
            else {
                timerHandleForRecompilation = {
                    modifiedResourceFiles: new Set(),
                    timerHandle: undefined
                };
            }
            timerHandleForRecompilation.timerHandle = host.setTimeout(recompile, 250);
            timerHandleForRecompilation.modifiedResourceFiles.add(changedPath);
        }
        function recompile() {
            host.reportDiagnostics([util_1.createMessageDiagnostic('File change detected. Starting incremental compilation.')]);
            doCompilation();
            timerHandleForRecompilation = undefined;
        }
    }
    exports.performWatchCompilation = performWatchCompilation;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicGVyZm9ybV93YXRjaC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvcGVyZm9ybV93YXRjaC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7SUFFSCxtQ0FBcUM7SUFDckMsMkJBQTZCO0lBQzdCLCtCQUFpQztJQUVqQyw2RUFBd0o7SUFDeEosZ0VBQTBDO0lBQzFDLG9GQUErRDtJQUMvRCxvRUFBNEQ7SUFFNUQsU0FBUyw4QkFBOEIsQ0FBQyxZQUFvQjtRQUMxRCxJQUFJLFFBQWdCLENBQUM7UUFDckIsSUFBSSxZQUFZLEdBQUcsSUFBSSxFQUFFO1lBQ3ZCLFFBQVEsR0FBTSxDQUFDLFlBQVksR0FBRyxJQUFJLENBQUMsQ0FBQyxXQUFXLENBQUMsQ0FBQyxDQUFDLE1BQUcsQ0FBQztTQUN2RDthQUFNO1lBQ0wsUUFBUSxHQUFNLFlBQVksT0FBSSxDQUFDO1NBQ2hDO1FBQ0QsT0FBTztZQUNMLFFBQVEsRUFBRSxFQUFFLENBQUMsa0JBQWtCLENBQUMsT0FBTztZQUN2QyxXQUFXLEVBQUUsaUJBQWUsUUFBVTtZQUN0QyxJQUFJLEVBQUUsR0FBRyxDQUFDLGtCQUFrQjtZQUM1QixNQUFNLEVBQUUsR0FBRyxDQUFDLE1BQU07U0FDbkIsQ0FBQztJQUNKLENBQUM7SUFFRCxJQUFZLGVBSVg7SUFKRCxXQUFZLGVBQWU7UUFDekIseURBQU0sQ0FBQTtRQUNOLHFFQUFZLENBQUE7UUFDWiwyRUFBZSxDQUFBO0lBQ2pCLENBQUMsRUFKVyxlQUFlLEdBQWYsdUJBQWUsS0FBZix1QkFBZSxRQUkxQjtJQWNELFNBQWdCLHNCQUFzQixDQUNsQyxjQUFzQixFQUFFLGlCQUFxRCxFQUM3RSxlQUFvQyxFQUNwQyxrQkFDa0M7UUFDcEMsT0FBTztZQUNMLGlCQUFpQixFQUFFLGlCQUFpQjtZQUNwQyxrQkFBa0IsRUFBRSxVQUFBLE9BQU8sSUFB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LDJCQUEyQixDQUFDLFdBQVcsQ0FBQyxDQUFDO2FBQzVEO2lCQUFNO2dCQUNMLDJCQUEyQixHQUFHO29CQUM1QixxQkFBcUIsRUFBRSxJQUFJLEdBQUcsRUFBVTtvQkFDeEMsV0FBVyxFQUFFLFNBQVM7aUJBQ3ZCLENBQUM7YUFDSDtZQUNELDJCQUEyQixDQUFDLFdBQVcsR0FBRyxJQUFJLENBQUMsVUFBVSxDQUFDLFNBQVMsRUFBRSxHQUFHLENBQUMsQ0FBQztZQUMxRSwyQkFBMkIsQ0FBQyxxQkFBcUIsQ0FBQyxHQUFHLENBQUMsV0FBVyxDQUFDLENBQUM7UUFDckUsQ0FBQztRQUVELFNBQVMsU0FBUztZQUNoQixJQUFJLENBQUMsaUJBQWlCLENBQ2xCLENBQUMsOEJBQXVCLENBQUMseURBQXlELENBQUMsQ0FBQyxDQUFDLENBQUM7WUFDMUYsYUFBYSxFQUFFLENBQUM7WUFDaEIsMkJBQTJCLEdBQUcsU0FBUyxDQUFDO1FBQzFDLENBQUM7SUFDSCxDQUFDO0lBekxELDBEQXlMQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyBjaG9raWRhciBmcm9tICdjaG9raWRhcic7XG5pbXBvcnQgKiBhcyBwYXRoIGZyb20gJ3BhdGgnO1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7RGlhZ25vc3RpY3MsIGV4aXRDb2RlRnJvbVJlc3VsdCwgUGFyc2VkQ29uZmlndXJhdGlvbiwgcGVyZm9ybUNvbXBpbGF0aW9uLCBQZXJmb3JtQ29tcGlsYXRpb25SZXN1bHQsIHJlYWRDb25maWd1cmF0aW9ufSBmcm9tICcuL3BlcmZvcm1fY29tcGlsZSc7XG5pbXBvcnQgKiBhcyBhcGkgZnJvbSAnLi90cmFuc2Zvcm1lcnMvYXBpJztcbmltcG9ydCB7Y3JlYXRlQ29tcGlsZXJIb3N0fSBmcm9tICcuL3RyYW5zZm9ybWVycy9lbnRyeV9wb2ludHMnO1xuaW1wb3J0IHtjcmVhdGVNZXNzYWdlRGlhZ25vc3RpY30gZnJvbSAnLi90cmFuc2Zvcm1lcnMvdXRpbCc7XG5cbmZ1bmN0aW9uIHRvdGFsQ29tcGlsYXRpb25UaW1lRGlhZ25vc3RpYyh0aW1lSW5NaWxsaXM6IG51bWJlcik6IGFwaS5EaWFnbm9zdGljIHtcbiAgbGV0IGR1cmF0aW9uOiBzdHJpbmc7XG4gIGlmICh0aW1lSW5NaWxsaXMgPiAxMDAwKSB7XG4gICAgZHVyYXRpb24gPSBgJHsodGltZUluTWlsbGlzIC8gMTAwMCkudG9QcmVjaXNpb24oMil9c2A7XG4gIH0gZWxzZSB7XG4gICAgZHVyYXRpb24gPSBgJHt0aW1lSW5NaWxsaXN9bXNgO1xuICB9XG4gIHJldHVybiB7XG4gICAgY2F0ZWdvcnk6IHRzLkRpYWdub3N0aWNDYXRlZ29yeS5NZXNzYWdlLFxuICAgIG1lc3NhZ2VUZXh0OiBgVG90YWwgdGltZTogJHtkdXJhdGlvbn1gLFxuICAgIGNvZGU6IGFwaS5ERUZBVUxUX0VSUk9SX0NPREUsXG4gICAgc291cmNlOiBhcGkuU09VUkNFLFxuICB9O1xufVxuXG5leHBvcnQgZW51bSBGaWxlQ2hhbmdlRXZlbnQge1xuICBDaGFuZ2UsXG4gIENyZWF0ZURlbGV0ZSxcbiAgQ3JlYXRlRGVsZXRlRGlyLFxufVxuXG5leHBvcnQgaW50ZXJmYWNlIFBlcmZvcm1XYXRjaEhvc3Qge1xuICByZXBvcnREaWFnbm9zdGljcyhkaWFnbm9zdGljczogRGlhZ25vc3RpY3MpOiB2b2lkO1xuICByZWFkQ29uZmlndXJhdGlvbigpOiBQYXJzZWRDb25maWd1cmF0aW9uO1xuICBjcmVhdGVDb21waWxlckhvc3Qob3B0aW9uczogYXBpLkNvbXBpbGVyT3B0aW9ucyk6IGFwaS5Db21waWxlckhvc3Q7XG4gIGNyZWF0ZUVtaXRDYWxsYmFjayhvcHRpb25zOiBhcGkuQ29tcGlsZXJPcHRpb25zKTogYXBpLlRzRW1pdENhbGxiYWNrfHVuZGVmaW5lZDtcbiAgb25GaWxlQ2hhbmdlKFxuICAgICAgb3B0aW9uczogYXBpLkNvbXBpbGVyT3B0aW9ucywgbGlzdGVuZXI6IChldmVudDogRmlsZUNoYW5nZUV2ZW50LCBmaWxlTmFtZTogc3RyaW5nKSA9PiB2b2lkLFxuICAgICAgcmVhZHk6ICgpID0+IHZvaWQpOiB7Y2xvc2U6ICgpID0+IHZvaWR9O1xuICBzZXRUaW1lb3V0KGNhbGxiYWNrOiAoKSA9PiB2b2lkLCBtczogbnVtYmVyKTogYW55O1xuICBjbGVhclRpbWVvdXQodGltZW91dElkOiBhbnkpOiB2b2lkO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gY3JlYXRlUGVyZm9ybVdhdGNoSG9zdChcbiAgICBjb25maWdGaWxlTmFtZTogc3RyaW5nLCByZXBvcnREaWFnbm9zdGljczogKGRpYWdub3N0aWNzOiBEaWFnbm9zdGljcykgPT4gdm9pZCxcbiAgICBleGlzdGluZ09wdGlvbnM/OiB0cy5Db21waWxlck9wdGlvbnMsXG4gICAgY3JlYXRlRW1pdENhbGxiYWNrPzogKG9wdGlvbnM6IGFwaS5Db21waWxlck9wdGlvbnMpID0+XG4gICAgICAgIGFwaS5Uc0VtaXRDYWxsYmFjayB8IHVuZGVmaW5lZCk6IFBlcmZvcm1XYXRjaEhvc3Qge1xuICByZXR1cm4ge1xuICAgIHJlcG9ydERpYWdub3N0aWNzOiByZXBvcnREaWFnbm9zdGljcyxcbiAgICBjcmVhdGVDb21waWxlckhvc3Q6IG9wdGlvbnMgPT4gY3JlYXRlQ29tcGlsZXJIb3N0KHtvcHRpb25zfSksXG4gICAgcmVhZENvbmZpZ3VyYXRpb246ICgpID0+IHJlYWRDb25maWd1cmF0aW9uKGNvbmZpZ0ZpbGVOYW1lLCBleGlzdGluZ09wdGlvbnMpLFxuICAgIGNyZWF0ZUVtaXRDYWxsYmFjazogb3B0aW9ucyA9PiBjcmVhdGVFbWl0Q2FsbGJhY2sgPyBjcmVhdGVFbWl0Q2FsbGJhY2sob3B0aW9ucykgOiB1bmRlZmluZWQsXG4gICAgb25GaWxlQ2hhbmdlOiAob3B0aW9ucywgbGlzdGVuZXIsIHJlYWR5OiAoKSA9PiB2b2lkKSA9PiB7XG4gICAgICBpZiAoIW9wdGlvbnMuYmFzZVBhdGgpIHtcbiAgICAgICAgcmVwb3J0RGlhZ25vc3RpY3MoW3tcbiAgICAgICAgICBjYXRlZ29yeTogdHMuRGlhZ25vc3RpY0NhdGVnb3J5LkVycm9yLFxuICAgICAgICAgIG1lc3NhZ2VUZXh0OiAnSW52YWxpZCBjb25maWd1cmF0aW9uIG9wdGlvbi4gYmFzZURpciBub3Qgc3BlY2lmaWVkJyxcbiAgICAgICAgICBzb3VyY2U6IGFwaS5TT1VSQ0UsXG4gICAgICAgICAgY29kZTogYXBpLkRFRkFVTFRfRVJST1JfQ09ERVxuICAgICAgICB9XSk7XG4gICAgICAgIHJldHVybiB7Y2xvc2U6ICgpID0+IHt9fTtcbiAgICAgIH1cbiAgICAgIGNvbnN0IHdhdGNoZXIgPSBjaG9raWRhci53YXRjaChvcHRpb25zLmJhc2VQYXRoLCB7XG4gICAgICAgIC8vIGlnbm9yZSAuZG90ZmlsZXMsIC5qcyBhbmQgLm1hcCBmaWxlcy5cbiAgICAgICAgLy8gY2FuJ3QgaWdub3JlIG90aGVyIGZpbGVzIGFzIHdlIGUuZy4gd2FudCB0byByZWNvbXBpbGUgaWYgYW4gYC5odG1sYCBmaWxlIGNoYW5nZXMgYXMgd2VsbC5cbiAgICAgICAgaWdub3JlZDogLygoXltcXC9cXFxcXSlcXC4uKXwoXFwuanMkKXwoXFwubWFwJCl8KFxcLm1ldGFkYXRhXFwuanNvbnxub2RlX21vZHVsZXMpLyxcbiAgICAgICAgaWdub3JlSW5pdGlhbDogdHJ1ZSxcbiAgICAgICAgcGVyc2lzdGVudDogdHJ1ZSxcbiAgICAgIH0pO1xuICAgICAgd2F0Y2hlci5vbignYWxsJywgKGV2ZW50OiBzdHJpbmcsIHBhdGg6IHN0cmluZykgPT4ge1xuICAgICAgICBzd2l0Y2ggKGV2ZW50KSB7XG4gICAgICAgICAgY2FzZSAnY2hhbmdlJzpcbiAgICAgICAgICAgIGxpc3RlbmVyKEZpbGVDaGFuZ2VFdmVudC5DaGFuZ2UsIHBhdGgpO1xuICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgY2FzZSAndW5saW5rJzpcbiAgICAgICAgICBjYXNlICdhZGQnOlxuICAgICAgICAgICAgbGlzdGVuZXIoRmlsZUNoYW5nZUV2ZW50LkNyZWF0ZURlbGV0ZSwgcGF0aCk7XG4gICAgICAgICAgICBicmVhaztcbiAgICAgICAgICBjYXNlICd1bmxpbmtEaXInOlxuICAgICAgICAgIGNhc2UgJ2FkZERpcic6XG4gICAgICAgICAgICBsaXN0ZW5lcihGaWxlQ2hhbmdlRXZlbnQuQ3JlYXRlRGVsZXRlRGlyLCBwYXRoKTtcbiAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICAgIHdhdGNoZXIub24oJ3JlYWR5JywgcmVhZHkpO1xuICAgICAgcmV0dXJuIHtjbG9zZTogKCkgPT4gd2F0Y2hlci5jbG9zZSgpLCByZWFkeX07XG4gICAgfSxcbiAgICBzZXRUaW1lb3V0OiAodHMuc3lzLmNsZWFyVGltZW91dCAmJiB0cy5zeXMuc2V0VGltZW91dCkgfHwgc2V0VGltZW91dCxcbiAgICBjbGVhclRpbWVvdXQ6ICh0cy5zeXMuc2V0VGltZW91dCAmJiB0cy5zeXMuY2xlYXJUaW1lb3V0KSB8fCBjbGVhclRpbWVvdXQsXG4gIH07XG59XG5cbmludGVyZmFjZSBDYWNoZUVudHJ5IHtcbiAgZXhpc3RzPzogYm9vbGVhbjtcbiAgc2Y/OiB0cy5Tb3VyY2VGaWxlO1xuICBjb250ZW50Pzogc3RyaW5nO1xufVxuXG5pbnRlcmZhY2UgUXVldWVkQ29tcGlsYXRpb25JbmZvIHtcbiAgdGltZXJIYW5kbGU6IGFueTtcbiAgbW9kaWZpZWRSZXNvdXJjZUZpbGVzOiBTZXQ8c3RyaW5nPjtcbn1cblxuLyoqXG4gKiBUaGUgbG9naWMgaW4gdGhpcyBmdW5jdGlvbiBpcyBhZGFwdGVkIGZyb20gYHRzYy50c2AgZnJvbSBUeXBlU2NyaXB0LlxuICovXG5leHBvcnQgZnVuY3Rpb24gcGVyZm9ybVdhdGNoQ29tcGlsYXRpb24oaG9zdDogUGVyZm9ybVdhdGNoSG9zdCk6XG4gICAge2Nsb3NlOiAoKSA9PiB2b2lkLCByZWFkeTogKGNiOiAoKSA9PiB2b2lkKSA9PiB2b2lkLCBmaXJzdENvbXBpbGVSZXN1bHQ6IERpYWdub3N0aWNzfSB7XG4gIGxldCBjYWNoZWRQcm9ncmFtOiBhcGkuUHJvZ3JhbXx1bmRlZmluZWQ7ICAgICAgICAgICAgLy8gUHJvZ3JhbSBjYWNoZWQgZnJvbSBsYXN0IGNvbXBpbGF0aW9uXG4gIGxldCBjYWNoZWRDb21waWxlckhvc3Q6IGFwaS5Db21waWxlckhvc3R8dW5kZWZpbmVkOyAgLy8gQ29tcGlsZXJIb3N0IGNhY2hlZCBmcm9tIGxhc3QgY29tcGlsYXRpb25cbiAgbGV0IGNhY2hlZE9wdGlvbnM6IFBhcnNlZENvbmZpZ3VyYXRpb258dW5kZWZpbmVkOyAgLy8gQ29tcGlsZXJPcHRpb25zIGNhY2hlZCBmcm9tIGxhc3QgY29tcGlsYXRpb25cbiAgbGV0IHRpbWVySGFuZGxlRm9yUmVjb21waWxhdGlvbjogUXVldWVkQ29tcGlsYXRpb25JbmZvfFxuICAgICAgdW5kZWZpbmVkOyAgLy8gSGFuZGxlIGZvciAwLjI1cyB3YWl0IHRpbWVyIHRvIHRyaWdnZXIgcmVjb21waWxhdGlvblxuXG4gIGNvbnN0IGlnbm9yZUZpbGVzRm9yV2F0Y2ggPSBuZXcgU2V0PHN0cmluZz4oKTtcbiAgY29uc3QgZmlsZUNhY2hlID0gbmV3IE1hcDxzdHJpbmcsIENhY2hlRW50cnk+KCk7XG5cbiAgY29uc3QgZmlyc3RDb21waWxlUmVzdWx0ID0gZG9Db21waWxhdGlvbigpO1xuXG4gIC8vIFdhdGNoIGJhc2VQYXRoLCBpZ25vcmluZyAuZG90ZmlsZXNcbiAgbGV0IHJlc29sdmVSZWFkeVByb21pc2U6ICgpID0+IHZvaWQ7XG4gIGNvbnN0IHJlYWR5UHJvbWlzZSA9IG5ldyBQcm9taXNlKHJlc29sdmUgPT4gcmVzb2x2ZVJlYWR5UHJvbWlzZSA9IHJlc29sdmUpO1xuICAvLyBOb3RlOiAhIGlzIG9rIGFzIG9wdGlvbnMgYXJlIGZpbGxlZCBhZnRlciB0aGUgZmlyc3QgY29tcGlsYXRpb25cbiAgLy8gTm90ZTogISBpcyBvayBhcyByZXNvbHZlZFJlYWR5UHJvbWlzZSBpcyBmaWxsZWQgYnkgdGhlIHByZXZpb3VzIGNhbGxcbiAgY29uc3QgZmlsZVdhdGNoZXIgPVxuICAgICAgaG9zdC5vbkZpbGVDaGFuZ2UoY2FjaGVkT3B0aW9ucyEub3B0aW9ucywgd2F0Y2hlZEZpbGVDaGFuZ2VkLCByZXNvbHZlUmVhZHlQcm9taXNlISk7XG5cbiAgcmV0dXJuIHtjbG9zZSwgcmVhZHk6IGNiID0+IHJlYWR5UHJvbWlzZS50aGVuKGNiKSwgZmlyc3RDb21waWxlUmVzdWx0fTtcblxuICBmdW5jdGlvbiBjYWNoZUVudHJ5KGZpbGVOYW1lOiBzdHJpbmcpOiBDYWNoZUVudHJ5IHtcbiAgICBmaWxlTmFtZSA9IHBhdGgubm9ybWFsaXplKGZpbGVOYW1lKTtcbiAgICBsZXQgZW50cnkgPSBmaWxlQ2FjaGUuZ2V0KGZpbGVOYW1lKTtcbiAgICBpZiAoIWVudHJ5KSB7XG4gICAgICBlbnRyeSA9IHt9O1xuICAgICAgZmlsZUNhY2hlLnNldChmaWxlTmFtZSwgZW50cnkpO1xuICAgIH1cbiAgICByZXR1cm4gZW50cnk7XG4gIH1cblxuICBmdW5jdGlvbiBjbG9zZSgpIHtcbiAgICBmaWxlV2F0Y2hlci5jbG9zZSgpO1xuICAgIGlmICh0aW1lckhhbmRsZUZvclJlY29tcGlsYXRpb24pIHtcbiAgICAgIGhvc3QuY2xlYXJUaW1lb3V0KHRpbWVySGFuZGxlRm9yUmVjb21waWxhdGlvbi50aW1lckhhbmRsZSk7XG4gICAgICB0aW1lckhhbmRsZUZvclJlY29tcGlsYXRpb24gPSB1bmRlZmluZWQ7XG4gICAgfVxuICB9XG5cbiAgLy8gSW52b2tlZCB0byBwZXJmb3JtIGluaXRpYWwgY29tcGlsYXRpb24gb3IgcmUtY29tcGlsYXRpb24gaW4gd2F0Y2ggbW9kZVxuICBmdW5jdGlvbiBkb0NvbXBpbGF0aW9uKCk6IERpYWdub3N0aWNzIHtcbiAgICBpZiAoIWNhY2hlZE9wdGlvbnMpIHtcbiAgICAgIGNhY2hlZE9wdGlvbnMgPSBob3N0LnJlYWRDb25maWd1cmF0aW9uKCk7XG4gICAgfVxuICAgIGlmIChjYWNoZWRPcHRpb25zLmVycm9ycyAmJiBjYWNoZWRPcHRpb25zLmVycm9ycy5sZW5ndGgpIHtcbiAgICAgIGhvc3QucmVwb3J0RGlhZ25vc3RpY3MoY2FjaGVkT3B0aW9ucy5lcnJvcnMpO1xuICAgICAgcmV0dXJuIGNhY2hlZE9wdGlvbnMuZXJyb3JzO1xuICAgIH1cbiAgICBjb25zdCBzdGFydFRpbWUgPSBEYXRlLm5vdygpO1xuICAgIGlmICghY2FjaGVkQ29tcGlsZXJIb3N0KSB7XG4gICAgICBjYWNoZWRDb21waWxlckhvc3QgPSBob3N0LmNyZWF0ZUNvbXBpbGVySG9zdChjYWNoZWRPcHRpb25zLm9wdGlvbnMpO1xuICAgICAgY29uc3Qgb3JpZ2luYWxXcml0ZUZpbGVDYWxsYmFjayA9IGNhY2hlZENvbXBpbGVySG9zdC53cml0ZUZpbGU7XG4gICAgICBjYWNoZWRDb21waWxlckhvc3Qud3JpdGVGaWxlID0gZnVuY3Rpb24oXG4gICAgICAgICAgZmlsZU5hbWU6IHN0cmluZywgZGF0YTogc3RyaW5nLCB3cml0ZUJ5dGVPcmRlck1hcms6IGJvb2xlYW4sXG4gICAgICAgICAgb25FcnJvcj86IChtZXNzYWdlOiBzdHJpbmcpID0+IHZvaWQsIHNvdXJjZUZpbGVzOiBSZWFkb25seUFycmF5PHRzLlNvdXJjZUZpbGU+ID0gW10pIHtcbiAgICAgICAgaWdub3JlRmlsZXNGb3JXYXRjaC5hZGQocGF0aC5ub3JtYWxpemUoZmlsZU5hbWUpKTtcbiAgICAgICAgcmV0dXJuIG9yaWdpbmFsV3JpdGVGaWxlQ2FsbGJhY2soZmlsZU5hbWUsIGRhdGEsIHdyaXRlQnl0ZU9yZGVyTWFyaywgb25FcnJvciwgc291cmNlRmlsZXMpO1xuICAgICAgfTtcbiAgICAgIGNvbnN0IG9yaWdpbmFsRmlsZUV4aXN0cyA9IGNhY2hlZENvbXBpbGVySG9zdC5maWxlRXhpc3RzO1xuICAgICAgY2FjaGVkQ29tcGlsZXJIb3N0LmZpbGVFeGlzdHMgPSBmdW5jdGlvbihmaWxlTmFtZTogc3RyaW5nKSB7XG4gICAgICAgIGNvbnN0IGNlID0gY2FjaGVFbnRyeShmaWxlTmFtZSk7XG4gICAgICAgIGlmIChjZS5leGlzdHMgPT0gbnVsbCkge1xuICAgICAgICAgIGNlLmV4aXN0cyA9IG9yaWdpbmFsRmlsZUV4aXN0cy5jYWxsKHRoaXMsIGZpbGVOYW1lKTtcbiAgICAgICAgfVxuICAgICAgICByZXR1cm4gY2UuZXhpc3RzITtcbiAgICAgIH07XG4gICAgICBjb25zdCBvcmlnaW5hbEdldFNvdXJjZUZpbGUgPSBjYWNoZWRDb21waWxlckhvc3QuZ2V0U291cmNlRmlsZTtcbiAgICAgIGNhY2hlZENvbXBpbGVySG9zdC5nZXRTb3VyY2VGaWxlID0gZnVuY3Rpb24oXG4gICAgICAgICAgZmlsZU5hbWU6IHN0cmluZywgbGFuZ3VhZ2VWZXJzaW9uOiB0cy5TY3JpcHRUYXJnZXQpIHtcbiAgICAgICAgY29uc3QgY2UgPSBjYWNoZUVudHJ5KGZpbGVOYW1lKTtcbiAgICAgICAgaWYgKCFjZS5zZikge1xuICAgICAgICAgIGNlLnNmID0gb3JpZ2luYWxHZXRTb3VyY2VGaWxlLmNhbGwodGhpcywgZmlsZU5hbWUsIGxhbmd1YWdlVmVyc2lvbik7XG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuIGNlLnNmITtcbiAgICAgIH07XG4gICAgICBjb25zdCBvcmlnaW5hbFJlYWRGaWxlID0gY2FjaGVkQ29tcGlsZXJIb3N0LnJlYWRGaWxlO1xuICAgICAgY2FjaGVkQ29tcGlsZXJIb3N0LnJlYWRGaWxlID0gZnVuY3Rpb24oZmlsZU5hbWU6IHN0cmluZykge1xuICAgICAgICBjb25zdCBjZSA9IGNhY2hlRW50cnkoZmlsZU5hbWUpO1xuICAgICAgICBpZiAoY2UuY29udGVudCA9PSBudWxsKSB7XG4gICAgICAgICAgY2UuY29udGVudCA9IG9yaWdpbmFsUmVhZEZpbGUuY2FsbCh0aGlzLCBmaWxlTmFtZSk7XG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuIGNlLmNvbnRlbnQhO1xuICAgICAgfTtcbiAgICAgIC8vIFByb3ZpZGUgYWNjZXNzIHRvIHRoZSBmaWxlIHBhdGhzIHRoYXQgdHJpZ2dlcmVkIHRoaXMgcmVidWlsZFxuICAgICAgY2FjaGVkQ29tcGlsZXJIb3N0LmdldE1vZGlmaWVkUmVzb3VyY2VGaWxlcyA9IGZ1bmN0aW9uKCkge1xuICAgICAgICBpZiAodGltZXJIYW5kbGVGb3JSZWNvbXBpbGF0aW9uID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgICAgICB9XG4gICAgICAgIHJldHVybiB0aW1lckhhbmRsZUZvclJlY29tcGlsYXRpb24ubW9kaWZpZWRSZXNvdXJjZUZpbGVzO1xuICAgICAgfTtcbiAgICB9XG4gICAgaWdub3JlRmlsZXNGb3JXYXRjaC5jbGVhcigpO1xuICAgIGNvbnN0IG9sZFByb2dyYW0gPSBjYWNoZWRQcm9ncmFtO1xuICAgIC8vIFdlIGNsZWFyIG91dCB0aGUgYGNhY2hlZFByb2dyYW1gIGhlcmUgYXMgYVxuICAgIC8vIHByb2dyYW0gY2FuIG9ubHkgYmUgdXNlZCBhcyBgb2xkUHJvZ3JhbWAgMXhcbiAgICBjYWNoZWRQcm9ncmFtID0gdW5kZWZpbmVkO1xuICAgIGNvbnN0IGNvbXBpbGVSZXN1bHQgPSBwZXJmb3JtQ29tcGlsYXRpb24oe1xuICAgICAgcm9vdE5hbWVzOiBjYWNoZWRPcHRpb25zLnJvb3ROYW1lcyxcbiAgICAgIG9wdGlvbnM6IGNhY2hlZE9wdGlvbnMub3B0aW9ucyxcbiAgICAgIGhvc3Q6IGNhY2hlZENvbXBpbGVySG9zdCxcbiAgICAgIG9sZFByb2dyYW06IG9sZFByb2dyYW0sXG4gICAgICBlbWl0Q2FsbGJhY2s6IGhvc3QuY3JlYXRlRW1pdENhbGxiYWNrKGNhY2hlZE9wdGlvbnMub3B0aW9ucylcbiAgICB9KTtcblxuICAgIGlmIChjb21waWxlUmVzdWx0LmRpYWdub3N0aWNzLmxlbmd0aCkge1xuICAgICAgaG9zdC5yZXBvcnREaWFnbm9zdGljcyhjb21waWxlUmVzdWx0LmRpYWdub3N0aWNzKTtcbiAgICB9XG5cbiAgICBjb25zdCBlbmRUaW1lID0gRGF0ZS5ub3coKTtcbiAgICBpZiAoY2FjaGVkT3B0aW9ucy5vcHRpb25zLmRpYWdub3N0aWNzKSB7XG4gICAgICBjb25zdCB0b3RhbFRpbWUgPSAoZW5kVGltZSAtIHN0YXJ0VGltZSkgLyAxMDAwO1xuICAgICAgaG9zdC5yZXBvcnREaWFnbm9zdGljcyhbdG90YWxDb21waWxhdGlvblRpbWVEaWFnbm9zdGljKGVuZFRpbWUgLSBzdGFydFRpbWUpXSk7XG4gICAgfVxuICAgIGNvbnN0IGV4aXRDb2RlID0gZXhpdENvZGVGcm9tUmVzdWx0KGNvbXBpbGVSZXN1bHQuZGlhZ25vc3RpY3MpO1xuICAgIGlmIChleGl0Q29kZSA9PSAwKSB7XG4gICAgICBjYWNoZWRQcm9ncmFtID0gY29tcGlsZVJlc3VsdC5wcm9ncmFtO1xuICAgICAgaG9zdC5yZXBvcnREaWFnbm9zdGljcyhcbiAgICAgICAgICBbY3JlYXRlTWVzc2FnZURpYWdub3N0aWMoJ0NvbXBpbGF0aW9uIGNvbXBsZXRlLiBXYXRjaGluZyBmb3IgZmlsZSBjaGFuZ2VzLicpXSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIGhvc3QucmVwb3J0RGlhZ25vc3RpY3MoXG4gICAgICAgICAgW2NyZWF0ZU1lc3NhZ2VEaWFnbm9zdGljKCdDb21waWxhdGlvbiBmYWlsZWQuIFdhdGNoaW5nIGZvciBmaWxlIGNoYW5nZXMuJyldKTtcbiAgICB9XG5cbiAgICByZXR1cm4gY29tcGlsZVJlc3VsdC5kaWFnbm9zdGljcztcbiAgfVxuXG4gIGZ1bmN0aW9uIHJlc2V0T3B0aW9ucygpIHtcbiAgICBjYWNoZWRQcm9ncmFtID0gdW5kZWZpbmVkO1xuICAgIGNhY2hlZENvbXBpbGVySG9zdCA9IHVuZGVmaW5lZDtcbiAgICBjYWNoZWRPcHRpb25zID0gdW5kZWZpbmVkO1xuICB9XG5cbiAgZnVuY3Rpb24gd2F0Y2hlZEZpbGVDaGFuZ2VkKGV2ZW50OiBGaWxlQ2hhbmdlRXZlbnQsIGZpbGVOYW1lOiBzdHJpbmcpIHtcbiAgICBjb25zdCBub3JtYWxpemVkUGF0aCA9IHBhdGgubm9ybWFsaXplKGZpbGVOYW1lKTtcblxuICAgIGlmIChjYWNoZWRPcHRpb25zICYmIGV2ZW50ID09PSBGaWxlQ2hhbmdlRXZlbnQuQ2hhbmdlICYmXG4gICAgICAgIC8vIFRPRE8oY2h1Y2tqKTogdmFsaWRhdGUgdGhhdCB0aGlzIGlzIHN1ZmZpY2llbnQgdG8gc2tpcCBmaWxlcyB0aGF0IHdlcmUgd3JpdHRlbi5cbiAgICAgICAgLy8gVGhpcyBhc3N1bWVzIHRoYXQgdGhlIGZpbGUgcGF0aCB3ZSB3cml0ZSBpcyB0aGUgc2FtZSBmaWxlIHBhdGggd2Ugd2lsbCByZWNlaXZlIGluIHRoZVxuICAgICAgICAvLyBjaGFuZ2Ugbm90aWZpY2F0aW9uLlxuICAgICAgICBub3JtYWxpemVkUGF0aCA9PT0gcGF0aC5ub3JtYWxpemUoY2FjaGVkT3B0aW9ucy5wcm9qZWN0KSkge1xuICAgICAgLy8gSWYgdGhlIGNvbmZpZ3VyYXRpb24gZmlsZSBjaGFuZ2VzLCBmb3JnZXQgZXZlcnl0aGluZyBhbmQgc3RhcnQgdGhlIHJlY29tcGlsYXRpb24gdGltZXJcbiAgICAgIHJlc2V0T3B0aW9ucygpO1xuICAgIH0gZWxzZSBpZiAoXG4gICAgICAgIGV2ZW50ID09PSBGaWxlQ2hhbmdlRXZlbnQuQ3JlYXRlRGVsZXRlIHx8IGV2ZW50ID09PSBGaWxlQ2hhbmdlRXZlbnQuQ3JlYXRlRGVsZXRlRGlyKSB7XG4gICAgICAvLyBJZiBhIGZpbGUgd2FzIGFkZGVkIG9yIHJlbW92ZWQsIHJlcmVhZCB0aGUgY29uZmlndXJhdGlvblxuICAgICAgLy8gdG8gZGV0ZXJtaW5lIHRoZSBuZXcgbGlzdCBvZiByb290IGZpbGVzLlxuICAgICAgY2FjaGVkT3B0aW9ucyA9IHVuZGVmaW5lZDtcbiAgICB9XG5cbiAgICBpZiAoZXZlbnQgPT09IEZpbGVDaGFuZ2VFdmVudC5DcmVhdGVEZWxldGVEaXIpIHtcbiAgICAgIGZpbGVDYWNoZS5jbGVhcigpO1xuICAgIH0gZWxzZSB7XG4gICAgICBmaWxlQ2FjaGUuZGVsZXRlKG5vcm1hbGl6ZWRQYXRoKTtcbiAgICB9XG5cbiAgICBpZiAoIWlnbm9yZUZpbGVzRm9yV2F0Y2guaGFzKG5vcm1hbGl6ZWRQYXRoKSkge1xuICAgICAgLy8gSWdub3JlIHRoZSBmaWxlIGlmIHRoZSBmaWxlIGlzIG9uZSB0aGF0IHdhcyB3cml0dGVuIGJ5IHRoZSBjb21waWxlci5cbiAgICAgIHN0YXJ0VGltZXJGb3JSZWNvbXBpbGF0aW9uKG5vcm1hbGl6ZWRQYXRoKTtcbiAgICB9XG4gIH1cblxuICAvLyBVcG9uIGRldGVjdGluZyBhIGZpbGUgY2hhbmdlLCB3YWl0IGZvciAyNTBtcyBhbmQgdGhlbiBwZXJmb3JtIGEgcmVjb21waWxhdGlvbi4gVGhpcyBnaXZlcyBiYXRjaFxuICAvLyBvcGVyYXRpb25zIChzdWNoIGFzIHNhdmluZyBhbGwgbW9kaWZpZWQgZmlsZXMgaW4gYW4gZWRpdG9yKSBhIGNoYW5jZSB0byBjb21wbGV0ZSBiZWZvcmUgd2Uga2lja1xuICAvLyBvZmYgYSBuZXcgY29tcGlsYXRpb24uXG4gIGZ1bmN0aW9uIHN0YXJ0VGltZXJGb3JSZWNvbXBpbGF0aW9uKGNoYW5nZWRQYXRoOiBzdHJpbmcpIHtcbiAgICBpZiAodGltZXJIYW5kbGVGb3JSZWNvbXBpbGF0aW9uKSB7XG4gICAgICBob3N0LmNsZWFyVGltZW91dCh0aW1lckhhbmRsZUZvclJlY29tcGlsYXRpb24udGltZXJIYW5kbGUpO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aW1lckhhbmRsZUZvclJlY29tcGlsYXRpb24gPSB7XG4gICAgICAgIG1vZGlmaWVkUmVzb3VyY2VGaWxlczogbmV3IFNldDxzdHJpbmc+KCksXG4gICAgICAgIHRpbWVySGFuZGxlOiB1bmRlZmluZWRcbiAgICAgIH07XG4gICAgfVxuICAgIHRpbWVySGFuZGxlRm9yUmVjb21waWxhdGlvbi50aW1lckhhbmRsZSA9IGhvc3Quc2V0VGltZW91dChyZWNvbXBpbGUsIDI1MCk7XG4gICAgdGltZXJIYW5kbGVGb3JSZWNvbXBpbGF0aW9uLm1vZGlmaWVkUmVzb3VyY2VGaWxlcy5hZGQoY2hhbmdlZFBhdGgpO1xuICB9XG5cbiAgZnVuY3Rpb24gcmVjb21waWxlKCkge1xuICAgIGhvc3QucmVwb3J0RGlhZ25vc3RpY3MoXG4gICAgICAgIFtjcmVhdGVNZXNzYWdlRGlhZ25vc3RpYygnRmlsZSBjaGFuZ2UgZGV0ZWN0ZWQuIFN0YXJ0aW5nIGluY3JlbWVudGFsIGNvbXBpbGF0aW9uLicpXSk7XG4gICAgZG9Db21waWxhdGlvbigpO1xuICAgIHRpbWVySGFuZGxlRm9yUmVjb21waWxhdGlvbiA9IHVuZGVmaW5lZDtcbiAgfVxufVxuIl19