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
        define("@angular/compiler-cli/src/ngtsc/program", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/typescript_support", "@angular/compiler-cli/src/ngtsc/core", "@angular/compiler-cli/src/ngtsc/incremental", "@angular/compiler-cli/src/ngtsc/perf", "@angular/compiler-cli/src/ngtsc/shims", "@angular/compiler-cli/src/ngtsc/typecheck"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.NgtscProgram = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    var typescript_support_1 = require("@angular/compiler-cli/src/typescript_support");
    var core_1 = require("@angular/compiler-cli/src/ngtsc/core");
    var incremental_1 = require("@angular/compiler-cli/src/ngtsc/incremental");
    var perf_1 = require("@angular/compiler-cli/src/ngtsc/perf");
    var shims_1 = require("@angular/compiler-cli/src/ngtsc/shims");
    var typecheck_1 = require("@angular/compiler-cli/src/ngtsc/typecheck");
    /**
     * Entrypoint to the Angular Compiler (Ivy+) which sits behind the `api.Program` interface, allowing
     * it to be a drop-in replacement for the legacy View Engine compiler to tooling such as the
     * command-line main() function or the Angular CLI.
     */
    var NgtscProgram = /** @class */ (function () {
        function NgtscProgram(rootNames, options, delegateHost, oldProgram) {
            this.options = options;
            this.perfRecorder = perf_1.NOOP_PERF_RECORDER;
            this.perfTracker = null;
            // First, check whether the current TS version is supported.
            if (!options.disableTypeScriptVersionCheck) {
                typescript_support_1.verifySupportedTypeScriptVersion();
            }
            if (options.tracePerformance !== undefined) {
                this.perfTracker = perf_1.PerfTracker.zeroedToNow();
                this.perfRecorder = this.perfTracker;
            }
            this.closureCompilerEnabled = !!options.annotateForClosureCompiler;
            var reuseProgram = oldProgram === null || oldProgram === void 0 ? void 0 : oldProgram.reuseTsProgram;
            this.host = core_1.NgCompilerHost.wrap(delegateHost, rootNames, options, reuseProgram !== null && reuseProgram !== void 0 ? reuseProgram : null);
            if (reuseProgram !== undefined) {
                // Prior to reusing the old program, restore shim tagging for all its `ts.SourceFile`s.
                // TypeScript checks the `referencedFiles` of `ts.SourceFile`s for changes when evaluating
                // incremental reuse of data from the old program, so it's important that these match in order
                // to get the most benefit out of reuse.
                shims_1.retagAllTsFiles(reuseProgram);
            }
            this.tsProgram = ts.createProgram(this.host.inputFiles, options, this.host, reuseProgram);
            this.reuseTsProgram = this.tsProgram;
            this.host.postProgramCreationCleanup();
            // Shim tagging has served its purpose, and tags can now be removed from all `ts.SourceFile`s in
            // the program.
            shims_1.untagAllTsFiles(this.tsProgram);
            var reusedProgramStrategy = new typecheck_1.ReusedProgramStrategy(this.tsProgram, this.host, this.options, this.host.shimExtensionPrefixes);
            this.incrementalStrategy = oldProgram !== undefined ?
                oldProgram.incrementalStrategy.toNextBuildStrategy() :
                new incremental_1.TrackedIncrementalBuildStrategy();
            // Create the NgCompiler which will drive the rest of the compilation.
            this.compiler = new core_1.NgCompiler(this.host, options, this.tsProgram, reusedProgramStrategy, this.incrementalStrategy, reuseProgram, this.perfRecorder);
        }
        NgtscProgram.prototype.getTsProgram = function () {
            return this.tsProgram;
        };
        NgtscProgram.prototype.getReuseTsProgram = function () {
            return this.reuseTsProgram;
        };
        NgtscProgram.prototype.getTsOptionDiagnostics = function (cancellationToken) {
            return this.tsProgram.getOptionsDiagnostics(cancellationToken);
        };
        NgtscProgram.prototype.getTsSyntacticDiagnostics = function (sourceFile, cancellationToken) {
            var e_1, _a;
            var ignoredFiles = this.compiler.ignoreForDiagnostics;
            if (sourceFile !== undefined) {
                if (ignoredFiles.has(sourceFile)) {
                    return [];
                }
                return this.tsProgram.getSyntacticDiagnostics(sourceFile, cancellationToken);
            }
            else {
                var diagnostics = [];
                try {
                    for (var _b = tslib_1.__values(this.tsProgram.getSourceFiles()), _c = _b.next(); !_c.done; _c = _b.next()) {
                        var sf = _c.value;
                        if (!ignoredFiles.has(sf)) {
                            diagnostics.push.apply(diagnostics, tslib_1.__spread(this.tsProgram.getSyntacticDiagnostics(sf, cancellationToken)));
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
                return diagnostics;
            }
        };
        NgtscProgram.prototype.getTsSemanticDiagnostics = function (sourceFile, cancellationToken) {
            var e_2, _a;
            var ignoredFiles = this.compiler.ignoreForDiagnostics;
            if (sourceFile !== undefined) {
                if (ignoredFiles.has(sourceFile)) {
                    return [];
                }
                return this.tsProgram.getSemanticDiagnostics(sourceFile, cancellationToken);
            }
            else {
                var diagnostics = [];
                try {
                    for (var _b = tslib_1.__values(this.tsProgram.getSourceFiles()), _c = _b.next(); !_c.done; _c = _b.next()) {
                        var sf = _c.value;
                        if (!ignoredFiles.has(sf)) {
                            diagnostics.push.apply(diagnostics, tslib_1.__spread(this.tsProgram.getSemanticDiagnostics(sf, cancellationToken)));
                        }
                    }
                }
                catch (e_2_1) { e_2 = { error: e_2_1 }; }
                finally {
                    try {
                        if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                    }
                    finally { if (e_2) throw e_2.error; }
                }
                return diagnostics;
            }
        };
        NgtscProgram.prototype.getNgOptionDiagnostics = function (cancellationToken) {
            return this.compiler.getOptionDiagnostics();
        };
        NgtscProgram.prototype.getNgStructuralDiagnostics = function (cancellationToken) {
            return [];
        };
        NgtscProgram.prototype.getNgSemanticDiagnostics = function (fileName, cancellationToken) {
            var sf = undefined;
            if (fileName !== undefined) {
                sf = this.tsProgram.getSourceFile(fileName);
                if (sf === undefined) {
                    // There are no diagnostics for files which don't exist in the program - maybe the caller
                    // has stale data?
                    return [];
                }
            }
            var diagnostics = this.compiler.getDiagnostics(sf);
            this.reuseTsProgram = this.compiler.getNextProgram();
            return diagnostics;
        };
        /**
         * Ensure that the `NgCompiler` has properly analyzed the program, and allow for the asynchronous
         * loading of any resources during the process.
         *
         * This is used by the Angular CLI to allow for spawning (async) child compilations for things
         * like SASS files used in `styleUrls`.
         */
        NgtscProgram.prototype.loadNgStructureAsync = function () {
            return this.compiler.analyzeAsync();
        };
        NgtscProgram.prototype.listLazyRoutes = function (entryRoute) {
            return this.compiler.listLazyRoutes(entryRoute);
        };
        NgtscProgram.prototype.emit = function (opts) {
            var e_3, _a;
            var _this = this;
            var transformers = this.compiler.prepareEmit().transformers;
            var ignoreFiles = this.compiler.ignoreForEmit;
            var emitCallback = opts && opts.emitCallback || defaultEmitCallback;
            var writeFile = function (fileName, data, writeByteOrderMark, onError, sourceFiles) {
                var e_4, _a;
                if (sourceFiles !== undefined) {
                    try {
                        // Record successful writes for any `ts.SourceFile` (that's not a declaration file)
                        // that's an input to this write.
                        for (var sourceFiles_1 = tslib_1.__values(sourceFiles), sourceFiles_1_1 = sourceFiles_1.next(); !sourceFiles_1_1.done; sourceFiles_1_1 = sourceFiles_1.next()) {
                            var writtenSf = sourceFiles_1_1.value;
                            if (writtenSf.isDeclarationFile) {
                                continue;
                            }
                            _this.compiler.incrementalDriver.recordSuccessfulEmit(writtenSf);
                        }
                    }
                    catch (e_4_1) { e_4 = { error: e_4_1 }; }
                    finally {
                        try {
                            if (sourceFiles_1_1 && !sourceFiles_1_1.done && (_a = sourceFiles_1.return)) _a.call(sourceFiles_1);
                        }
                        finally { if (e_4) throw e_4.error; }
                    }
                }
                _this.host.writeFile(fileName, data, writeByteOrderMark, onError, sourceFiles);
            };
            var customTransforms = opts && opts.customTransformers;
            var beforeTransforms = transformers.before || [];
            var afterDeclarationsTransforms = transformers.afterDeclarations;
            if (customTransforms !== undefined && customTransforms.beforeTs !== undefined) {
                beforeTransforms.push.apply(beforeTransforms, tslib_1.__spread(customTransforms.beforeTs));
            }
            var emitSpan = this.perfRecorder.start('emit');
            var emitResults = [];
            try {
                for (var _b = tslib_1.__values(this.tsProgram.getSourceFiles()), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var targetSourceFile = _c.value;
                    if (targetSourceFile.isDeclarationFile || ignoreFiles.has(targetSourceFile)) {
                        continue;
                    }
                    if (this.compiler.incrementalDriver.safeToSkipEmit(targetSourceFile)) {
                        continue;
                    }
                    var fileEmitSpan = this.perfRecorder.start('emitFile', targetSourceFile);
                    emitResults.push(emitCallback({
                        targetSourceFile: targetSourceFile,
                        program: this.tsProgram,
                        host: this.host,
                        options: this.options,
                        emitOnlyDtsFiles: false,
                        writeFile: writeFile,
                        customTransformers: {
                            before: beforeTransforms,
                            after: customTransforms && customTransforms.afterTs,
                            afterDeclarations: afterDeclarationsTransforms,
                        },
                    }));
                    this.perfRecorder.stop(fileEmitSpan);
                }
            }
            catch (e_3_1) { e_3 = { error: e_3_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_3) throw e_3.error; }
            }
            this.perfRecorder.stop(emitSpan);
            if (this.perfTracker !== null && this.options.tracePerformance !== undefined) {
                this.perfTracker.serializeToFile(this.options.tracePerformance, this.host);
            }
            // Run the emit, including a custom transformer that will downlevel the Ivy decorators in code.
            return ((opts && opts.mergeEmitResultsCallback) || mergeEmitResults)(emitResults);
        };
        NgtscProgram.prototype.getIndexedComponents = function () {
            return this.compiler.getIndexedComponents();
        };
        NgtscProgram.prototype.getLibrarySummaries = function () {
            throw new Error('Method not implemented.');
        };
        NgtscProgram.prototype.getEmittedGeneratedFiles = function () {
            throw new Error('Method not implemented.');
        };
        NgtscProgram.prototype.getEmittedSourceFiles = function () {
            throw new Error('Method not implemented.');
        };
        return NgtscProgram;
    }());
    exports.NgtscProgram = NgtscProgram;
    var defaultEmitCallback = function (_a) {
        var program = _a.program, targetSourceFile = _a.targetSourceFile, writeFile = _a.writeFile, cancellationToken = _a.cancellationToken, emitOnlyDtsFiles = _a.emitOnlyDtsFiles, customTransformers = _a.customTransformers;
        return program.emit(targetSourceFile, writeFile, cancellationToken, emitOnlyDtsFiles, customTransformers);
    };
    function mergeEmitResults(emitResults) {
        var e_5, _a;
        var diagnostics = [];
        var emitSkipped = false;
        var emittedFiles = [];
        try {
            for (var emitResults_1 = tslib_1.__values(emitResults), emitResults_1_1 = emitResults_1.next(); !emitResults_1_1.done; emitResults_1_1 = emitResults_1.next()) {
                var er = emitResults_1_1.value;
                diagnostics.push.apply(diagnostics, tslib_1.__spread(er.diagnostics));
                emitSkipped = emitSkipped || er.emitSkipped;
                emittedFiles.push.apply(emittedFiles, tslib_1.__spread((er.emittedFiles || [])));
            }
        }
        catch (e_5_1) { e_5 = { error: e_5_1 }; }
        finally {
            try {
                if (emitResults_1_1 && !emitResults_1_1.done && (_a = emitResults_1.return)) _a.call(emitResults_1);
            }
            finally { if (e_5) throw e_5.error; }
        }
        return { diagnostics: diagnostics, emitSkipped: emitSkipped, emittedFiles: emittedFiles };
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicHJvZ3JhbS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvcHJvZ3JhbS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBR0gsK0JBQWlDO0lBR2pDLG1GQUF1RTtJQUV2RSw2REFBa0Q7SUFFbEQsMkVBQThEO0lBRTlELDZEQUFxRTtJQUNyRSwrREFBeUQ7SUFDekQsdUVBQWtEO0lBSWxEOzs7O09BSUc7SUFDSDtRQTRCRSxzQkFDSSxTQUFnQyxFQUFVLE9BQTBCLEVBQ3BFLFlBQThCLEVBQUUsVUFBeUI7WUFEZixZQUFPLEdBQVAsT0FBTyxDQUFtQjtZQUxoRSxpQkFBWSxHQUFpQix5QkFBa0IsQ0FBQztZQUNoRCxnQkFBVyxHQUFxQixJQUFJLENBQUM7WUFNM0MsNERBQTREO1lBQzVELElBQUksQ0FBQyxPQUFPLENBQUMsNkJBQTZCLEVBQUU7Z0JBQzFDLHFEQUFnQyxFQUFFLENBQUM7YUFDcEM7WUFFRCxJQUFJLE9BQU8sQ0FBQyxnQkFBZ0IsS0FBSyxTQUFTLEVBQUU7Z0JBQzFDLElBQUksQ0FBQyxXQUFXLEdBQUcsa0JBQVcsQ0FBQyxXQUFXLEVBQUUsQ0FBQztnQkFDN0MsSUFBSSxDQUFDLFlBQVksR0FBRyxJQUFJLENBQUMsV0FBVyxDQUFDO2FBQ3RDO1lBQ0QsSUFBSSxDQUFDLHNCQUFzQixHQUFHLENBQUMsQ0FBQyxPQUFPLENBQUMsMEJBQTBCLENBQUM7WUFFbkUsSUFBTSxZQUFZLEdBQUcsVUFBVSxhQUFWLFVBQVUsdUJBQVYsVUFBVSxDQUFFLGNBQWMsQ0FBQztZQUNoRCxJQUFJLENBQUMsSUFBSSxHQUFHLHFCQUFjLENBQUMsSUFBSSxDQUFDLFlBQVksRUFBRSxTQUFTLEVBQUUsT0FBTyxFQUFFLFlBQVksYUFBWixZQUFZLGNBQVosWUFBWSxHQUFJLElBQUksQ0FBQyxDQUFDO1lBRXhG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bnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7R2VuZXJhdGVkRmlsZX0gZnJvbSAnQGFuZ3VsYXIvY29tcGlsZXInO1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCAqIGFzIGFwaSBmcm9tICcuLi90cmFuc2Zvcm1lcnMvYXBpJztcbmltcG9ydCB7dmVyaWZ5U3VwcG9ydGVkVHlwZVNjcmlwdFZlcnNpb259IGZyb20gJy4uL3R5cGVzY3JpcHRfc3VwcG9ydCc7XG5cbmltcG9ydCB7TmdDb21waWxlciwgTmdDb21waWxlckhvc3R9IGZyb20gJy4vY29yZSc7XG5pbXBvcnQge05nQ29tcGlsZXJPcHRpb25zfSBmcm9tICcuL2NvcmUvYXBpJztcbmltcG9ydCB7VHJhY2tlZEluY3JlbWVudGFsQnVpbGRTdHJhdGVneX0gZnJvbSAnLi9pbmNyZW1lbnRhbCc7XG5pbXBvcnQge0luZGV4ZWRDb21wb25lbnR9IGZyb20gJy4vaW5kZXhlcic7XG5pbXBvcnQge05PT1BfUEVSRl9SRUNPUkRFUiwgUGVyZlJlY29yZGVyLCBQZXJmVHJhY2tlcn0gZnJvbSAnLi9wZXJmJztcbmltcG9ydCB7cmV0YWdBbGxUc0ZpbGVzLCB1bnRhZ0FsbFRzRmlsZXN9IGZyb20gJy4vc2hpbXMnO1xuaW1wb3J0IHtSZXVzZWRQcm9ncmFtU3RyYXRlZ3l9IGZyb20gJy4vdHlwZWNoZWNrJztcblxuXG5cbi8qKlxuICogRW50cnlwb2ludCB0byB0aGUgQW5ndWxhciBDb21waWxlciAoSXZ5Kykgd2hpY2ggc2l0cyBiZWhpbmQgdGhlIGBhcGkuUHJvZ3JhbWAgaW50ZXJmYWNlLCBhbGxvd2luZ1xuICogaXQgdG8gYmUgYSBkcm9wLWluIHJlcGxhY2VtZW50IGZvciB0aGUgbGVnYWN5IFZpZXcgRW5naW5lIGNvbXBpbGVyIHRvIHRvb2xpbmcgc3VjaCBhcyB0aGVcbiAqIGNvbW1hbmQtbGluZSBtYWluKCkgZnVuY3Rpb24gb3IgdGhlIEFuZ3VsYXIgQ0xJLlxuICovXG5leHBvcnQgY2xhc3MgTmd0c2NQcm9ncmFtIGltcGxlbWVudHMgYXBpLlByb2dyYW0ge1xuICByZWFkb25seSBjb21waWxlcjogTmdDb21waWxlcjtcblxuICAvKipcbiAgICogVGhlIHByaW1hcnkgVHlwZVNjcmlwdCBwcm9ncmFtLCB3aGljaCBpcyB1c2VkIGZvciBhbmFseXNpcyBhbmQgZW1pdC5cbiAgICovXG4gIHByaXZhdGUgdHNQcm9ncmFtOiB0cy5Qcm9ncmFtO1xuXG4gIC8qKlxuICAgKiBUaGUgVHlwZVNjcmlwdCBwcm9ncmFtIHRvIHVzZSBmb3IgdGhlIG5leHQgaW5jcmVtZW50YWwgY29tcGlsYXRpb24uXG4gICAqXG4gICAqIE9uY2UgYSBUUyBwcm9ncmFtIGlzIHVzZWQgdG8gY3JlYXRlIGFub3RoZXIgKGFuIGluY3JlbWVudGFsIGNvbXBpbGF0aW9uIG9wZXJhdGlvbiksIGl0IGNhbiBub1xuICAgKiBsb25nZXIgYmUgdXNlZCB0byBkbyBzbyBhZ2Fpbi5cbiAgICpcbiAgICogU2luY2UgdGVtcGxhdGUgdHlwZS1jaGVja2luZyB1c2VzIHRoZSBwcmltYXJ5IHByb2dyYW0gdG8gY3JlYXRlIGEgdHlwZS1jaGVja2luZyBwcm9ncmFtLCBhZnRlclxuICAgKiB0aGlzIGhhcHBlbnMgdGhlIHByaW1hcnkgcHJvZ3JhbSBpcyBubyBsb25nZXIgc3VpdGFibGUgZm9yIHN0YXJ0aW5nIGEgc3Vic2VxdWVudCBjb21waWxhdGlvbixcbiAgICogYW5kIHRoZSB0ZW1wbGF0ZSB0eXBlLWNoZWNraW5nIHByb2dyYW0gc2hvdWxkIGJlIHVzZWQgaW5zdGVhZC5cbiAgICpcbiAgICogVGh1cywgdGhlIHByb2dyYW0gd2hpY2ggc2hvdWxkIGJlIHVzZWQgZm9yIHRoZSBuZXh0IGluY3JlbWVudGFsIGNvbXBpbGF0aW9uIGlzIHRyYWNrZWQgaW5cbiAgICogYHJldXNlVHNQcm9ncmFtYCwgc2VwYXJhdGVseSBmcm9tIHRoZSBcInByaW1hcnlcIiBwcm9ncmFtIHdoaWNoIGlzIGFsd2F5cyB1c2VkIGZvciBlbWl0LlxuICAgKi9cbiAgcHJpdmF0ZSByZXVzZVRzUHJvZ3JhbTogdHMuUHJvZ3JhbTtcbiAgcHJpdmF0ZSBjbG9zdXJlQ29tcGlsZXJFbmFibGVkOiBib29sZWFuO1xuICBwcml2YXRlIGhvc3Q6IE5nQ29tcGlsZXJIb3N0O1xuICBwcml2YXRlIHBlcmZSZWNvcmRlcjogUGVyZlJlY29yZGVyID0gTk9PUF9QRVJGX1JFQ09SREVSO1xuICBwcml2YXRlIHBlcmZUcmFja2VyOiBQZXJmVHJhY2tlcnxudWxsID0gbnVsbDtcbiAgcHJpdmF0ZSBpbmNyZW1lbnRhbFN0cmF0ZWd5OiBUcmFja2VkSW5jcmVtZW50YWxCdWlsZFN0cmF0ZWd5O1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcm9vdE5hbWVzOiBSZWFkb25seUFycmF5PHN0cmluZz4sIHByaXZhdGUgb3B0aW9uczogTmdDb21waWxlck9wdGlvbnMsXG4gICAgICBkZWxlZ2F0ZUhvc3Q6IGFwaS5Db21waWxlckhvc3QsIG9sZFByb2dyYW0/OiBOZ3RzY1Byb2dyYW0pIHtcbiAgICAvLyBGaXJzdCwgY2hlY2sgd2hldGhlciB0aGUgY3VycmVudCBUUyB2ZXJzaW9uIGlzIHN1cHBvcnRlZC5cbiAgICBpZiAoIW9wdGlvbnMuZGlzYWJsZVR5cGVTY3JpcHRWZXJzaW9uQ2hlY2spIHtcbiAgICAgIHZlcmlmeVN1cHBvcnRlZFR5cGVTY3JpcHRWZXJzaW9uKCk7XG4gICAgfVxuXG4gICAgaWYgKG9wdGlvbnMudHJhY2VQZXJmb3JtYW5jZSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICB0aGlzLnBlcmZUcmFja2VyID0gUGVyZlRyYWNrZXIuemVyb2VkVG9Ob3coKTtcbiAgICAgIHRoaXMucGVyZlJlY29yZGVyID0gdGhpcy5wZXJmVHJhY2tlcjtcbiAgICB9XG4gICAgdGhpcy5jbG9zdXJlQ29tcGlsZXJFbmFibGVkID0gISFvcHRpb25zLmFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyO1xuXG4gICAgY29uc3QgcmV1c2VQcm9ncmFtID0gb2xkUHJvZ3JhbT8ucmV1c2VUc1Byb2dyYW07XG4gICAgdGhpcy5ob3N0ID0gTmdDb21waWxlckhvc3Qud3JhcChkZWxlZ2F0ZUhvc3QsIHJvb3ROYW1lcywgb3B0aW9ucywgcmV1c2VQcm9ncmFtID8/IG51bGwpO1xuXG4gICAgaWYgKHJldXNlUHJvZ3JhbSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICAvLyBQcmlvciB0byByZXVzaW5nIHRoZSBvbGQgcHJvZ3JhbSwgcmVzdG9yZSBzaGltIHRhZ2dpbmcgZm9yIGFsbCBpdHMgYHRzLlNvdXJjZUZpbGVgcy5cbiAgICAgIC8vIFR5cGVTY3JpcHQgY2hlY2tzIHRoZSBgcmVmZXJlbmNlZEZpbGVzYCBvZiBgdHMuU291cmNlRmlsZWBzIGZvciBjaGFuZ2VzIHdoZW4gZXZhbHVhdGluZ1xuICAgICAgLy8gaW5jcmVtZW50YWwgcmV1c2Ugb2YgZGF0YSBmcm9tIHRoZSBvbGQgcHJvZ3JhbSwgc28gaXQncyBpbXBvcnRhbnQgdGhhdCB0aGVzZSBtYXRjaCBpbiBvcmRlclxuICAgICAgLy8gdG8gZ2V0IHRoZSBtb3N0IGJlbmVmaXQgb3V0IG9mIHJldXNlLlxuICAgICAgcmV0YWdBbGxUc0ZpbGVzKHJldXNlUHJvZ3JhbSk7XG4gICAgfVxuXG4gICAgdGhpcy50c1Byb2dyYW0gPSB0cy5jcmVhdGVQcm9ncmFtKHRoaXMuaG9zdC5pbnB1dEZpbGVzLCBvcHRpb25zLCB0aGlzLmhvc3QsIHJldXNlUHJvZ3JhbSk7XG4gICAgdGhpcy5yZXVzZVRzUHJvZ3JhbSA9IHRoaXMudHNQcm9ncmFtO1xuXG4gICAgdGhpcy5ob3N0LnBvc3RQcm9ncmFtQ3JlYXRpb25DbGVhbnVwKCk7XG5cbiAgICAvLyBTaGltIHRhZ2dpbmcgaGFzIHNlcnZlZCBpdHMgcHVycG9zZSwgYW5kIHRhZ3MgY2FuIG5vdyBiZSByZW1vdmVkIGZyb20gYWxsIGB0cy5Tb3VyY2VGaWxlYHMgaW5cbiAgICAvLyB0aGUgcHJvZ3JhbS5cbiAgICB1bnRhZ0FsbFRzRmlsZXModGhpcy50c1Byb2dyYW0pO1xuXG4gICAgY29uc3QgcmV1c2VkUHJvZ3JhbVN0cmF0ZWd5ID0gbmV3IFJldXNlZFByb2dyYW1TdHJhdGVneShcbiAgICAgICAgdGhpcy50c1Byb2dyYW0sIHRoaXMuaG9zdCwgdGhpcy5vcHRpb25zLCB0aGlzLmhvc3Quc2hpbUV4dGVuc2lvblByZWZpeGVzKTtcblxuICAgIHRoaXMuaW5jcmVtZW50YWxTdHJhdGVneSA9IG9sZFByb2dyYW0gIT09IHVuZGVmaW5lZCA/XG4gICAgICAgIG9sZFByb2dyYW0uaW5jcmVtZW50YWxTdHJhdGVneS50b05leHRCdWlsZFN0cmF0ZWd5KCkgOlxuICAgICAgICBuZXcgVHJhY2tlZEluY3JlbWVudGFsQnVpbGRTdHJhdGVneSgpO1xuXG4gICAgLy8gQ3JlYXRlIHRoZSBOZ0NvbXBpbGVyIHdoaWNoIHdpbGwgZHJpdmUgdGhlIHJlc3Qgb2YgdGhlIGNvbXBpbGF0aW9uLlxuICAgIHRoaXMuY29tcGlsZXIgPSBuZXcgTmdDb21waWxlcihcbiAgICAgICAgdGhpcy5ob3N0LCBvcHRpb25zLCB0aGlzLnRzUHJvZ3JhbSwgcmV1c2VkUHJvZ3JhbVN0cmF0ZWd5LCB0aGlzLmluY3JlbWVudGFsU3RyYXRlZ3ksXG4gICAgICAgIHJldXNlUHJvZ3JhbSwgdGhpcy5wZXJmUmVjb3JkZXIpO1xuICB9XG5cbiAgZ2V0VHNQcm9ncmFtKCk6IHRzLlByb2dyYW0ge1xuICAgIHJldHVybiB0aGlzLnRzUHJvZ3JhbTtcbiAgfVxuXG4gIGdldFJldXNlVHNQcm9ncmFtKCk6IHRzLlByb2dyYW0ge1xuICAgIHJldHVybiB0aGlzLnJldXNlVHNQcm9ncmFtO1xuICB9XG5cbiAgZ2V0VHNPcHRpb25EaWFnbm9zdGljcyhjYW5jZWxsYXRpb25Ub2tlbj86IHRzLkNhbmNlbGxhdGlvblRva2VufFxuICAgICAgICAgICAgICAgICAgICAgICAgIHVuZGVmaW5lZCk6IHJlYWRvbmx5IHRzLkRpYWdub3N0aWNbXSB7XG4gICAgcmV0dXJuIHRoaXMudHNQcm9ncmFtLmdldE9wdGlvbnNEaWFnbm9zdGljcyhjYW5jZWxsYXRpb25Ub2tlbik7XG4gIH1cblxuICBnZXRUc1N5bnRhY3RpY0RpYWdub3N0aWNzKFxuICAgICAgc291cmNlRmlsZT86IHRzLlNvdXJjZUZpbGV8dW5kZWZpbmVkLFxuICAgICAgY2FuY2VsbGF0aW9uVG9rZW4/OiB0cy5DYW5jZWxsYXRpb25Ub2tlbnx1bmRlZmluZWQpOiByZWFkb25seSB0cy5EaWFnbm9zdGljW10ge1xuICAgIGNvbnN0IGlnbm9yZWRGaWxlcyA9IHRoaXMuY29tcGlsZXIuaWdub3JlRm9yRGlhZ25vc3RpY3M7XG4gICAgaWYgKHNvdXJjZUZpbGUgIT09IHVuZGVmaW5lZCkge1xuICAgICAgaWYgKGlnbm9yZWRGaWxlcy5oYXMoc291cmNlRmlsZSkpIHtcbiAgICAgICAgcmV0dXJuIFtdO1xuICAgICAgfVxuXG4gICAgICByZXR1cm4gdGhpcy50c1Byb2dyYW0uZ2V0U3ludGFjdGljRGlhZ25vc3RpY3Moc291cmNlRmlsZSwgY2FuY2VsbGF0aW9uVG9rZW4pO1xuICAgIH0gZWxzZSB7XG4gICAgICBjb25zdCBkaWFnbm9zdGljczogdHMuRGlhZ25vc3RpY1tdID0gW107XG4gICAgICBmb3IgKGNvbnN0IHNmIG9mIHRoaXMudHNQcm9ncmFtLmdldFNvdXJjZUZpbGVzKCkpIHtcbiAgICAgICAgaWYgKCFpZ25vcmVkRmlsZXMuaGFzKHNmKSkge1xuICAgICAgICAgIGRpYWdub3N0aWNzLnB1c2goLi4udGhpcy50c1Byb2dyYW0uZ2V0U3ludGFjdGljRGlhZ25vc3RpY3Moc2YsIGNhbmNlbGxhdGlvblRva2VuKSk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIHJldHVybiBkaWFnbm9zdGljcztcbiAgICB9XG4gIH1cblxuICBnZXRUc1NlbWFudGljRGlhZ25vc3RpY3MoXG4gICAgICBzb3VyY2VGaWxlPzogdHMuU291cmNlRmlsZXx1bmRlZmluZWQsXG4gICAgICBjYW5jZWxsYXRpb25Ub2tlbj86IHRzLkNhbmNlbGxhdGlvblRva2VufHVuZGVmaW5lZCk6IHJlYWRvbmx5IHRzLkRpYWdub3N0aWNbXSB7XG4gICAgY29uc3QgaWdub3JlZEZpbGVzID0gdGhpcy5jb21waWxlci5pZ25vcmVGb3JEaWFnbm9zdGljcztcbiAgICBpZiAoc291cmNlRmlsZSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICBpZiAoaWdub3JlZEZpbGVzLmhhcyhzb3VyY2VGaWxlKSkge1xuICAgICAgICByZXR1cm4gW107XG4gICAgICB9XG5cbiAgICAgIHJldHVybiB0aGlzLnRzUHJvZ3JhbS5nZXRTZW1hbnRpY0RpYWdub3N0aWNzKHNvdXJjZUZpbGUsIGNhbmNlbGxhdGlvblRva2VuKTtcbiAgICB9IGVsc2Uge1xuICAgICAgY29uc3QgZGlhZ25vc3RpY3M6IHRzLkRpYWdub3N0aWNbXSA9IFtdO1xuICAgICAgZm9yIChjb25zdCBzZiBvZiB0aGlzLnRzUHJvZ3JhbS5nZXRTb3VyY2VGaWxlcygpKSB7XG4gICAgICAgIGlmICghaWdub3JlZEZpbGVzLmhhcyhzZikpIHtcbiAgICAgICAgICBkaWFnbm9zdGljcy5wdXNoKC4uLnRoaXMudHNQcm9ncmFtLmdldFNlbWFudGljRGlhZ25vc3RpY3Moc2YsIGNhbmNlbGxhdGlvblRva2VuKSk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIHJldHVybiBkaWFnbm9zdGljcztcbiAgICB9XG4gIH1cblxuICBnZXROZ09wdGlvbkRpYWdub3N0aWNzKGNhbmNlbGxhdGlvblRva2VuPzogdHMuQ2FuY2VsbGF0aW9uVG9rZW58XG4gICAgICAgICAgICAgICAgICAgICAgICAgdW5kZWZpbmVkKTogcmVhZG9ubHkodHMuRGlhZ25vc3RpY3xhcGkuRGlhZ25vc3RpYylbXSB7XG4gICAgcmV0dXJuIHRoaXMuY29tcGlsZXIuZ2V0T3B0aW9uRGlhZ25vc3RpY3MoKTtcbiAgfVxuXG4gIGdldE5nU3RydWN0dXJhbERpYWdub3N0aWNzKGNhbmNlbGxhdGlvblRva2VuPzogdHMuQ2FuY2VsbGF0aW9uVG9rZW58XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuZGVmaW5lZCk6IHJlYWRvbmx5IGFwaS5EaWFnbm9zdGljW10ge1xuICAgIHJldHVybiBbXTtcbiAgfVxuXG4gIGdldE5nU2VtYW50aWNEaWFnbm9zdGljcyhcbiAgICAgIGZpbGVOYW1lPzogc3RyaW5nfHVuZGVmaW5lZCwgY2FuY2VsbGF0aW9uVG9rZW4/OiB0cy5DYW5jZWxsYXRpb25Ub2tlbnx1bmRlZmluZWQpOlxuICAgICAgcmVhZG9ubHkodHMuRGlhZ25vc3RpY3xhcGkuRGlhZ25vc3RpYylbXSB7XG4gICAgbGV0IHNmOiB0cy5Tb3VyY2VGaWxlfHVuZGVmaW5lZCA9IHVuZGVmaW5lZDtcbiAgICBpZiAoZmlsZU5hbWUgIT09IHVuZGVmaW5lZCkge1xuICAgICAgc2YgPSB0aGlzLnRzUHJvZ3JhbS5nZXRTb3VyY2VGaWxlKGZpbGVOYW1lKTtcbiAgICAgIGlmIChzZiA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICAgIC8vIFRoZXJlIGFyZSBubyBkaWFnbm9zdGljcyBmb3IgZmlsZXMgd2hpY2ggZG9uJ3QgZXhpc3QgaW4gdGhlIHByb2dyYW0gLSBtYXliZSB0aGUgY2FsbGVyXG4gICAgICAgIC8vIGhhcyBzdGFsZSBkYXRhP1xuICAgICAgICByZXR1cm4gW107XG4gICAgICB9XG4gICAgfVxuXG4gICAgY29uc3QgZGlhZ25vc3RpY3MgPSB0aGlzLmNvbXBpbGVyLmdldERpYWdub3N0aWNzKHNmKTtcbiAgICB0aGlzLnJldXNlVHNQcm9ncmFtID0gdGhpcy5jb21waWxlci5nZXROZXh0UHJvZ3JhbSgpO1xuICAgIHJldHVybiBkaWFnbm9zdGljcztcbiAgfVxuXG4gIC8qKlxuICAgKiBFbnN1cmUgdGhhdCB0aGUgYE5nQ29tcGlsZXJgIGhhcyBwcm9wZXJseSBhbmFseXplZCB0aGUgcHJvZ3JhbSwgYW5kIGFsbG93IGZvciB0aGUgYXN5bmNocm9ub3VzXG4gICAqIGxvYWRpbmcgb2YgYW55IHJlc291cmNlcyBkdXJpbmcgdGhlIHByb2Nlc3MuXG4gICAqXG4gICAqIFRoaXMgaXMgdXNlZCBieSB0aGUgQW5ndWxhciBDTEkgdG8gYWxsb3cgZm9yIHNwYXduaW5nIChhc3luYykgY2hpbGQgY29tcGlsYXRpb25zIGZvciB0aGluZ3NcbiAgICogbGlrZSBTQVNTIGZpbGVzIHVzZWQgaW4gYHN0eWxlVXJsc2AuXG4gICAqL1xuICBsb2FkTmdTdHJ1Y3R1cmVBc3luYygpOiBQcm9taXNlPHZvaWQ+IHtcbiAgICByZXR1cm4gdGhpcy5jb21waWxlci5hbmFseXplQXN5bmMoKTtcbiAgfVxuXG4gIGxpc3RMYXp5Um91dGVzKGVudHJ5Um91dGU/OiBzdHJpbmd8dW5kZWZpbmVkKTogYXBpLkxhenlSb3V0ZVtdIHtcbiAgICByZXR1cm4gdGhpcy5jb21waWxlci5saXN0TGF6eVJvdXRlcyhlbnRyeVJvdXRlKTtcbiAgfVxuXG4gIGVtaXQob3B0cz86IHtcbiAgICBlbWl0RmxhZ3M/OiBhcGkuRW1pdEZsYWdzfHVuZGVmaW5lZDtcbiAgICBjYW5jZWxsYXRpb25Ub2tlbj86IHRzLkNhbmNlbGxhdGlvblRva2VuIHwgdW5kZWZpbmVkO1xuICAgIGN1c3RvbVRyYW5zZm9ybWVycz86IGFwaS5DdXN0b21UcmFuc2Zvcm1lcnMgfCB1bmRlZmluZWQ7XG4gICAgZW1pdENhbGxiYWNrPzogYXBpLlRzRW1pdENhbGxiYWNrIHwgdW5kZWZpbmVkO1xuICAgIG1lcmdlRW1pdFJlc3VsdHNDYWxsYmFjaz86IGFwaS5Uc01lcmdlRW1pdFJlc3VsdHNDYWxsYmFjayB8IHVuZGVmaW5lZDtcbiAgfXx1bmRlZmluZWQpOiB0cy5FbWl0UmVzdWx0IHtcbiAgICBjb25zdCB7dHJhbnNmb3JtZXJzfSA9IHRoaXMuY29tcGlsZXIucHJlcGFyZUVtaXQoKTtcbiAgICBjb25zdCBpZ25vcmVGaWxlcyA9IHRoaXMuY29tcGlsZXIuaWdub3JlRm9yRW1pdDtcbiAgICBjb25zdCBlbWl0Q2FsbGJhY2sgPSBvcHRzICYmIG9wdHMuZW1pdENhbGxiYWNrIHx8IGRlZmF1bHRFbWl0Q2FsbGJhY2s7XG5cbiAgICBjb25zdCB3cml0ZUZpbGU6IHRzLldyaXRlRmlsZUNhbGxiYWNrID1cbiAgICAgICAgKGZpbGVOYW1lOiBzdHJpbmcsIGRhdGE6IHN0cmluZywgd3JpdGVCeXRlT3JkZXJNYXJrOiBib29sZWFuLFxuICAgICAgICAgb25FcnJvcjogKChtZXNzYWdlOiBzdHJpbmcpID0+IHZvaWQpfHVuZGVmaW5lZCxcbiAgICAgICAgIHNvdXJjZUZpbGVzOiBSZWFkb25seUFycmF5PHRzLlNvdXJjZUZpbGU+fHVuZGVmaW5lZCkgPT4ge1xuICAgICAgICAgIGlmIChzb3VyY2VGaWxlcyAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICAgICAgICAvLyBSZWNvcmQgc3VjY2Vzc2Z1bCB3cml0ZXMgZm9yIGFueSBgdHMuU291cmNlRmlsZWAgKHRoYXQncyBub3QgYSBkZWNsYXJhdGlvbiBmaWxlKVxuICAgICAgICAgICAgLy8gdGhhdCdzIGFuIGlucHV0IHRvIHRoaXMgd3JpdGUuXG4gICAgICAgICAgICBmb3IgKGNvbnN0IHdyaXR0ZW5TZiBvZiBzb3VyY2VGaWxlcykge1xuICAgICAgICAgICAgICBpZiAod3JpdHRlblNmLmlzRGVjbGFyYXRpb25GaWxlKSB7XG4gICAgICAgICAgICAgICAgY29udGludWU7XG4gICAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgICB0aGlzLmNvbXBpbGVyLmluY3JlbWVudGFsRHJpdmVyLnJlY29yZFN1Y2Nlc3NmdWxFbWl0KHdyaXR0ZW5TZik7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICAgIHRoaXMuaG9zdC53cml0ZUZpbGUoZmlsZU5hbWUsIGRhdGEsIHdyaXRlQnl0ZU9yZGVyTWFyaywgb25FcnJvciwgc291cmNlRmlsZXMpO1xuICAgICAgICB9O1xuXG4gICAgY29uc3QgY3VzdG9tVHJhbnNmb3JtcyA9IG9wdHMgJiYgb3B0cy5jdXN0b21UcmFuc2Zvcm1lcnM7XG4gICAgY29uc3QgYmVmb3JlVHJhbnNmb3JtcyA9IHRyYW5zZm9ybWVycy5iZWZvcmUgfHwgW107XG4gICAgY29uc3QgYWZ0ZXJEZWNsYXJhdGlvbnNUcmFuc2Zvcm1zID0gdHJhbnNmb3JtZXJzLmFmdGVyRGVjbGFyYXRpb25zO1xuXG4gICAgaWYgKGN1c3RvbVRyYW5zZm9ybXMgIT09IHVuZGVmaW5lZCAmJiBjdXN0b21UcmFuc2Zvcm1zLmJlZm9yZVRzICE9PSB1bmRlZmluZWQpIHtcbiAgICAgIGJlZm9yZVRyYW5zZm9ybXMucHVzaCguLi5jdXN0b21UcmFuc2Zvcm1zLmJlZm9yZVRzKTtcbiAgICB9XG5cbiAgICBjb25zdCBlbWl0U3BhbiA9IHRoaXMucGVyZlJlY29yZGVyLnN0YXJ0KCdlbWl0Jyk7XG4gICAgY29uc3QgZW1pdFJlc3VsdHM6IHRzLkVtaXRSZXN1bHRbXSA9IFtdO1xuXG4gICAgZm9yIChjb25zdCB0YXJnZXRTb3VyY2VGaWxlIG9mIHRoaXMudHNQcm9ncmFtLmdldFNvdXJjZUZpbGVzKCkpIHtcbiAgICAgIGlmICh0YXJnZXRTb3VyY2VGaWxlLmlzRGVjbGFyYXRpb25GaWxlIHx8IGlnbm9yZUZpbGVzLmhhcyh0YXJnZXRTb3VyY2VGaWxlKSkge1xuICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cblxuICAgICAgaWYgKHRoaXMuY29tcGlsZXIuaW5jcmVtZW50YWxEcml2ZXIuc2FmZVRvU2tpcEVtaXQodGFyZ2V0U291cmNlRmlsZSkpIHtcbiAgICAgICAgY29udGludWU7XG4gICAgICB9XG5cbiAgICAgIGNvbnN0IGZpbGVFbWl0U3BhbiA9IHRoaXMucGVyZlJlY29yZGVyLnN0YXJ0KCdlbWl0RmlsZScsIHRhcmdldFNvdXJjZUZpbGUpO1xuICAgICAgZW1pdFJlc3VsdHMucHVzaChlbWl0Q2FsbGJhY2soe1xuICAgICAgICB0YXJnZXRTb3VyY2VGaWxlLFxuICAgICAgICBwcm9ncmFtOiB0aGlzLnRzUHJvZ3JhbSxcbiAgICAgICAgaG9zdDogdGhpcy5ob3N0LFxuICAgICAgICBvcHRpb25zOiB0aGlzLm9wdGlvbnMsXG4gICAgICAgIGVtaXRPbmx5RHRzRmlsZXM6IGZhbHNlLFxuICAgICAgICB3cml0ZUZpbGUsXG4gICAgICAgIGN1c3RvbVRyYW5zZm9ybWVyczoge1xuICAgICAgICAgIGJlZm9yZTogYmVmb3JlVHJhbnNmb3JtcyxcbiAgICAgICAgICBhZnRlcjogY3VzdG9tVHJhbnNmb3JtcyAmJiBjdXN0b21UcmFuc2Zvcm1zLmFmdGVyVHMsXG4gICAgICAgICAgYWZ0ZXJEZWNsYXJhdGlvbnM6IGFmdGVyRGVjbGFyYXRpb25zVHJhbnNmb3JtcyxcbiAgICAgICAgfSBhcyBhbnksXG4gICAgICB9KSk7XG4gICAgICB0aGlzLnBlcmZSZWNvcmRlci5zdG9wKGZpbGVFbWl0U3Bhbik7XG4gICAgfVxuXG4gICAgdGhpcy5wZXJmUmVjb3JkZXIuc3RvcChlbWl0U3Bhbik7XG5cbiAgICBpZiAodGhpcy5wZXJmVHJhY2tlciAhPT0gbnVsbCAmJiB0aGlzLm9wdGlvbnMudHJhY2VQZXJmb3JtYW5jZSAhPT0gdW5kZWZpbmVkKSB7XG4gICAgICB0aGlzLnBlcmZUcmFja2VyLnNlcmlhbGl6ZVRvRmlsZSh0aGlzLm9wdGlvbnMudHJhY2VQZXJmb3JtYW5jZSwgdGhpcy5ob3N0KTtcbiAgICB9XG5cbiAgICAvLyBSdW4gdGhlIGVtaXQsIGluY2x1ZGluZyBhIGN1c3RvbSB0cmFuc2Zvcm1lciB0aGF0IHdpbGwgZG93bmxldmVsIHRoZSBJdnkgZGVjb3JhdG9ycyBpbiBjb2RlLlxuICAgIHJldHVybiAoKG9wdHMgJiYgb3B0cy5tZXJnZUVtaXRSZXN1bHRzQ2FsbGJhY2spIHx8IG1lcmdlRW1pdFJlc3VsdHMpKGVtaXRSZXN1bHRzKTtcbiAgfVxuXG4gIGdldEluZGV4ZWRDb21wb25lbnRzKCk6IE1hcDx0cy5EZWNsYXJhdGlvbiwgSW5kZXhlZENvbXBvbmVudD4ge1xuICAgIHJldHVybiB0aGlzLmNvbXBpbGVyLmdldEluZGV4ZWRDb21wb25lbnRzKCk7XG4gIH1cblxuICBnZXRMaWJyYXJ5U3VtbWFyaWVzKCk6IE1hcDxzdHJpbmcsIGFwaS5MaWJyYXJ5U3VtbWFyeT4ge1xuICAgIHRocm93IG5ldyBFcnJvcignTWV0aG9kIG5vdCBpbXBsZW1lbnRlZC4nKTtcbiAgfVxuXG4gIGdldEVtaXR0ZWRHZW5lcmF0ZWRGaWxlcygpOiBNYXA8c3RyaW5nLCBHZW5lcmF0ZWRGaWxlPiB7XG4gICAgdGhyb3cgbmV3IEVycm9yKCdNZXRob2Qgbm90IGltcGxlbWVudGVkLicpO1xuICB9XG5cbiAgZ2V0RW1pdHRlZFNvdXJjZUZpbGVzKCk6IE1hcDxzdHJpbmcsIHRzLlNvdXJjZUZpbGU+IHtcbiAgICB0aHJvdyBuZXcgRXJyb3IoJ01ldGhvZCBub3QgaW1wbGVtZW50ZWQuJyk7XG4gIH1cbn1cblxuY29uc3QgZGVmYXVsdEVtaXRDYWxsYmFjazogYXBpLlRzRW1pdENhbGxiYWNrID0gKHtcbiAgcHJvZ3JhbSxcbiAgdGFyZ2V0U291cmNlRmlsZSxcbiAgd3JpdGVGaWxlLFxuICBjYW5jZWxsYXRpb25Ub2tlbixcbiAgZW1pdE9ubHlEdHNGaWxlcyxcbiAgY3VzdG9tVHJhbnNmb3JtZXJzXG59KSA9PlxuICAgIHByb2dyYW0uZW1pdChcbiAgICAgICAgdGFyZ2V0U291cmNlRmlsZSwgd3JpdGVGaWxlLCBjYW5jZWxsYXRpb25Ub2tlbiwgZW1pdE9ubHlEdHNGaWxlcywgY3VzdG9tVHJhbnNmb3JtZXJzKTtcblxuZnVuY3Rpb24gbWVyZ2VFbWl0UmVzdWx0cyhlbWl0UmVzdWx0czogdHMuRW1pdFJlc3VsdFtdKTogdHMuRW1pdFJlc3VsdCB7XG4gIGNvbnN0IGRpYWdub3N0aWNzOiB0cy5EaWFnbm9zdGljW10gPSBbXTtcbiAgbGV0IGVtaXRTa2lwcGVkID0gZmFsc2U7XG4gIGNvbnN0IGVtaXR0ZWRGaWxlczogc3RyaW5nW10gPSBbXTtcbiAgZm9yIChjb25zdCBlciBvZiBlbWl0UmVzdWx0cykge1xuICAgIGRpYWdub3N0aWNzLnB1c2goLi4uZXIuZGlhZ25vc3RpY3MpO1xuICAgIGVtaXRTa2lwcGVkID0gZW1pdFNraXBwZWQgfHwgZXIuZW1pdFNraXBwZWQ7XG4gICAgZW1pdHRlZEZpbGVzLnB1c2goLi4uKGVyLmVtaXR0ZWRGaWxlcyB8fCBbXSkpO1xuICB9XG5cbiAgcmV0dXJuIHtkaWFnbm9zdGljcywgZW1pdFNraXBwZWQsIGVtaXR0ZWRGaWxlc307XG59XG4iXX0=