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
        define("@angular/compiler-cli/src/ngtsc/incremental/src/state", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/src/ngtsc/incremental/src/dependency_tracking"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.IncrementalDriver = void 0;
    var tslib_1 = require("tslib");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var dependency_tracking_1 = require("@angular/compiler-cli/src/ngtsc/incremental/src/dependency_tracking");
    /**
     * Drives an incremental build, by tracking changes and determining which files need to be emitted.
     */
    var IncrementalDriver = /** @class */ (function () {
        function IncrementalDriver(state, allTsFiles, depGraph, logicalChanges) {
            this.allTsFiles = allTsFiles;
            this.depGraph = depGraph;
            this.logicalChanges = logicalChanges;
            this.state = state;
        }
        /**
         * Construct an `IncrementalDriver` with a starting state that incorporates the results of a
         * previous build.
         *
         * The previous build's `BuildState` is reconciled with the new program's changes, and the results
         * are merged into the new build's `PendingBuildState`.
         */
        IncrementalDriver.reconcile = function (oldProgram, oldDriver, newProgram, modifiedResourceFiles) {
            var e_1, _a, e_2, _b, e_3, _c, e_4, _d, e_5, _e;
            // Initialize the state of the current build based on the previous one.
            var state;
            if (oldDriver.state.kind === BuildStateKind.Pending) {
                // The previous build never made it past the pending state. Reuse it as the starting state for
                // this build.
                state = oldDriver.state;
            }
            else {
                // The previous build was successfully analyzed. `pendingEmit` is the only state carried
                // forward into this build.
                state = {
                    kind: BuildStateKind.Pending,
                    pendingEmit: oldDriver.state.pendingEmit,
                    changedResourcePaths: new Set(),
                    changedTsPaths: new Set(),
                    lastGood: oldDriver.state.lastGood,
                };
            }
            // Merge the freshly modified resource files with any prior ones.
            if (modifiedResourceFiles !== null) {
                try {
                    for (var modifiedResourceFiles_1 = tslib_1.__values(modifiedResourceFiles), modifiedResourceFiles_1_1 = modifiedResourceFiles_1.next(); !modifiedResourceFiles_1_1.done; modifiedResourceFiles_1_1 = modifiedResourceFiles_1.next()) {
                        var resFile = modifiedResourceFiles_1_1.value;
                        state.changedResourcePaths.add(file_system_1.absoluteFrom(resFile));
                    }
                }
                catch (e_1_1) { e_1 = { error: e_1_1 }; }
                finally {
                    try {
                        if (modifiedResourceFiles_1_1 && !modifiedResourceFiles_1_1.done && (_a = modifiedResourceFiles_1.return)) _a.call(modifiedResourceFiles_1);
                    }
                    finally { if (e_1) throw e_1.error; }
                }
            }
            // Next, process the files in the new program, with a couple of goals:
            // 1) Determine which TS files have changed, if any, and merge them into `changedTsFiles`.
            // 2) Produce a list of TS files which no longer exist in the program (they've been deleted
            //    since the previous compilation). These need to be removed from the state tracking to avoid
            //    leaking memory.
            // All files in the old program, for easy detection of changes.
            var oldFiles = new Set(oldProgram.getSourceFiles());
            // Assume all the old files were deleted to begin with. Only TS files are tracked.
            var deletedTsPaths = new Set(tsOnlyFiles(oldProgram).map(function (sf) { return sf.fileName; }));
            try {
                for (var _f = tslib_1.__values(newProgram.getSourceFiles()), _g = _f.next(); !_g.done; _g = _f.next()) {
                    var newFile = _g.value;
                    if (!newFile.isDeclarationFile) {
                        // This file exists in the new program, so remove it from `deletedTsPaths`.
                        deletedTsPaths.delete(newFile.fileName);
                    }
                    if (oldFiles.has(newFile)) {
                        // This file hasn't changed; no need to look at it further.
                        continue;
                    }
                    // The file has changed since the last successful build. The appropriate reaction depends on
                    // what kind of file it is.
                    if (!newFile.isDeclarationFile) {
                        // It's a .ts file, so track it as a change.
                        state.changedTsPaths.add(newFile.fileName);
                    }
                    else {
                        // It's a .d.ts file. Currently the compiler does not do a great job of tracking
                        // dependencies on .d.ts files, so bail out of incremental builds here and do a full build.
                        // This usually only happens if something in node_modules changes.
                        return IncrementalDriver.fresh(newProgram);
                    }
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (_g && !_g.done && (_b = _f.return)) _b.call(_f);
                }
                finally { if (e_2) throw e_2.error; }
            }
            try {
                // The next step is to remove any deleted files from the state.
                for (var deletedTsPaths_1 = tslib_1.__values(deletedTsPaths), deletedTsPaths_1_1 = deletedTsPaths_1.next(); !deletedTsPaths_1_1.done; deletedTsPaths_1_1 = deletedTsPaths_1.next()) {
                    var filePath = deletedTsPaths_1_1.value;
                    state.pendingEmit.delete(filePath);
                    // Even if the file doesn't exist in the current compilation, it still might have been changed
                    // in a previous one, so delete it from the set of changed TS files, just in case.
                    state.changedTsPaths.delete(filePath);
                }
            }
            catch (e_3_1) { e_3 = { error: e_3_1 }; }
            finally {
                try {
                    if (deletedTsPaths_1_1 && !deletedTsPaths_1_1.done && (_c = deletedTsPaths_1.return)) _c.call(deletedTsPaths_1);
                }
                finally { if (e_3) throw e_3.error; }
            }
            // Now, changedTsPaths contains physically changed TS paths. Use the previous program's logical
            // dependency graph to determine logically changed files.
            var depGraph = new dependency_tracking_1.FileDependencyGraph();
            // If a previous compilation exists, use its dependency graph to determine the set of logically
            // changed files.
            var logicalChanges = null;
            if (state.lastGood !== null) {
                // Extract the set of logically changed files. At the same time, this operation populates the
                // current (fresh) dependency graph with information about those files which have not
                // logically changed.
                logicalChanges = depGraph.updateWithPhysicalChanges(state.lastGood.depGraph, state.changedTsPaths, deletedTsPaths, state.changedResourcePaths);
                try {
                    for (var _h = tslib_1.__values(state.changedTsPaths), _j = _h.next(); !_j.done; _j = _h.next()) {
                        var fileName = _j.value;
                        logicalChanges.add(fileName);
                    }
                }
                catch (e_4_1) { e_4 = { error: e_4_1 }; }
                finally {
                    try {
                        if (_j && !_j.done && (_d = _h.return)) _d.call(_h);
                    }
                    finally { if (e_4) throw e_4.error; }
                }
                try {
                    // Any logically changed files need to be re-emitted. Most of the time this would happen
                    // regardless because the new dependency graph would _also_ identify the file as stale.
                    // However there are edge cases such as removing a component from an NgModule without adding
                    // it to another one, where the previous graph identifies the file as logically changed, but
                    // the new graph (which does not have that edge) fails to identify that the file should be
                    // re-emitted.
                    for (var logicalChanges_1 = tslib_1.__values(logicalChanges), logicalChanges_1_1 = logicalChanges_1.next(); !logicalChanges_1_1.done; logicalChanges_1_1 = logicalChanges_1.next()) {
                        var change = logicalChanges_1_1.value;
                        state.pendingEmit.add(change);
                    }
                }
                catch (e_5_1) { e_5 = { error: e_5_1 }; }
                finally {
                    try {
                        if (logicalChanges_1_1 && !logicalChanges_1_1.done && (_e = logicalChanges_1.return)) _e.call(logicalChanges_1);
                    }
                    finally { if (e_5) throw e_5.error; }
                }
            }
            // `state` now reflects the initial pending state of the current compilation.
            return new IncrementalDriver(state, new Set(tsOnlyFiles(newProgram)), depGraph, logicalChanges);
        };
        IncrementalDriver.fresh = function (program) {
            // Initialize the set of files which need to be emitted to the set of all TS files in the
            // program.
            var tsFiles = tsOnlyFiles(program);
            var state = {
                kind: BuildStateKind.Pending,
                pendingEmit: new Set(tsFiles.map(function (sf) { return sf.fileName; })),
                changedResourcePaths: new Set(),
                changedTsPaths: new Set(),
                lastGood: null,
            };
            return new IncrementalDriver(state, new Set(tsFiles), new dependency_tracking_1.FileDependencyGraph(), /* logicalChanges */ null);
        };
        IncrementalDriver.prototype.recordSuccessfulAnalysis = function (traitCompiler) {
            var e_6, _a;
            if (this.state.kind !== BuildStateKind.Pending) {
                // Changes have already been incorporated.
                return;
            }
            var pendingEmit = this.state.pendingEmit;
            var state = this.state;
            try {
                for (var _b = tslib_1.__values(this.allTsFiles), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var sf = _c.value;
                    if (this.depGraph.isStale(sf, state.changedTsPaths, state.changedResourcePaths)) {
                        // Something has changed which requires this file be re-emitted.
                        pendingEmit.add(sf.fileName);
                    }
                }
            }
            catch (e_6_1) { e_6 = { error: e_6_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_6) throw e_6.error; }
            }
            // Update the state to an `AnalyzedBuildState`.
            this.state = {
                kind: BuildStateKind.Analyzed,
                pendingEmit: pendingEmit,
                // Since this compilation was successfully analyzed, update the "last good" artifacts to the
                // ones from the current compilation.
                lastGood: {
                    depGraph: this.depGraph,
                    traitCompiler: traitCompiler,
                    typeCheckingResults: null,
                },
                priorTypeCheckingResults: this.state.lastGood !== null ? this.state.lastGood.typeCheckingResults : null,
            };
        };
        IncrementalDriver.prototype.recordSuccessfulTypeCheck = function (results) {
            if (this.state.lastGood === null || this.state.kind !== BuildStateKind.Analyzed) {
                return;
            }
            this.state.lastGood.typeCheckingResults = results;
        };
        IncrementalDriver.prototype.recordSuccessfulEmit = function (sf) {
            this.state.pendingEmit.delete(sf.fileName);
        };
        IncrementalDriver.prototype.safeToSkipEmit = function (sf) {
            return !this.state.pendingEmit.has(sf.fileName);
        };
        IncrementalDriver.prototype.priorWorkFor = function (sf) {
            if (this.state.lastGood === null || this.logicalChanges === null) {
                // There is no previous good build, so no prior work exists.
                return null;
            }
            else if (this.logicalChanges.has(sf.fileName)) {
                // Prior work might exist, but would be stale as the file in question has logically changed.
                return null;
            }
            else {
                // Prior work might exist, and if it does then it's usable!
                return this.state.lastGood.traitCompiler.recordsFor(sf);
            }
        };
        IncrementalDriver.prototype.priorTypeCheckingResultsFor = function (sf) {
            if (this.state.kind !== BuildStateKind.Analyzed ||
                this.state.priorTypeCheckingResults === null || this.logicalChanges === null) {
                return null;
            }
            if (this.logicalChanges.has(sf.fileName)) {
                return null;
            }
            var fileName = file_system_1.absoluteFromSourceFile(sf);
            if (!this.state.priorTypeCheckingResults.has(fileName)) {
                return null;
            }
            var data = this.state.priorTypeCheckingResults.get(fileName);
            if (data.hasInlines) {
                return null;
            }
            return data;
        };
        return IncrementalDriver;
    }());
    exports.IncrementalDriver = IncrementalDriver;
    var BuildStateKind;
    (function (BuildStateKind) {
        BuildStateKind[BuildStateKind["Pending"] = 0] = "Pending";
        BuildStateKind[BuildStateKind["Analyzed"] = 1] = "Analyzed";
    })(BuildStateKind || (BuildStateKind = {}));
    function tsOnlyFiles(program) {
        return program.getSourceFiles().filter(function (sf) { return !sf.isDeclarationFile; });
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic3RhdGUuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL2luY3JlbWVudGFsL3NyYy9zdGF0ZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBSUgsMkVBQXVGO0lBS3ZGLDJHQUEwRDtJQUUxRDs7T0FFRztJQUNIO1FBUUUsMkJBQ0ksS0FBd0IsRUFBVSxVQUE4QixFQUN2RCxRQUE2QixFQUFVLGNBQWdDO1lBRDlDLGVBQVUsR0FBVixVQUFVLENBQW9CO1lBQ3ZELGFBQVEsR0FBUixRQUFRLENBQXFCO1lBQVUsbUJBQWMsR0FBZCxjQUFjLENBQWtCO1lBQ2xGLElBQUksQ0FBQyxLQUFLLEdBQUcsS0FBSyxDQUFDO1FBQ3JCLENBQUM7UUFFRDs7Ozs7O1dBTUc7UUFDSSwyQkFBUyxHQUFoQixVQUNJLFVBQXNCLEVBQUUsU0FBNEIsRUFBRSxVQUFzQixFQUM1RSxxQkFBdUM7O1lBQ3pDLHVFQUF1RTtZQUN2RSxJQUFJLEtBQXdCLENBQUM7WUFDN0IsSUFBSSxTQUFTLENBQUMsS0FBSyxDQUFDLElBQUksS0FBSyxjQUFjLENBQUMsT0FBTyxFQUFFO2dCQUNuRCw4RkFBOEY7Z0JBQzlGLGNBQWM7Z0JBQ2QsS0FBSyxHQUFHLFNBQVMsQ0FBQyxLQUFLLENBQUM7YUFDekI7aUJBQU07Z0JBQ0wsd0ZBQXdGO2dCQUN4RiwyQkFBMkI7Z0JBQzNCLEtBQUssR0FBRztvQkFDTixJQUFJLEVBQUUsY0FBYyxDQUFDLE9BQU87b0JBQzVCLFdBQVcsRUFBRSxTQUFTLENBQUMsS0FBSyxDQUFDLFdBQVc7b0JBQ3hDLG9CQUFvQixFQUFFLElBQUksR0FBRyxFQUFrQjtvQkFDL0MsY0FBYyxFQUFFLElBQUksR0FBRyxFQUFVO29CQUNqQyxRQUFRLEVBQUUsU0FBUyxDQUFDLEtBQUssQ0FBQyxRQUFRO2lCQUNuQyxD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Q0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLEVBQUU7Z0JBQ3hDLE9BQU8sSUFBSSxDQUFDO2FBQ2I7WUFFRCxJQUFNLFFBQVEsR0FBRyxvQ0FBc0IsQ0FBQyxFQUFFLENBQUMsQ0FBQztZQUM1QyxJQUFJLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyx3QkFBd0IsQ0FBQyxHQUFHLENBQUMsUUFBUSxDQUFDLEVBQUU7Z0JBQ3RELE9BQU8sSUFBSSxDQUFDO2FBQ2I7WUFDRCxJQUFNLElBQUksR0FBRyxJQUFJLENBQUMsS0FBSyxDQUFDLHdCQUF3QixDQUFDLEdBQUcsQ0FBQyxRQUFRLENBQUUsQ0FBQztZQUNoRSxJQUFJLElBQUksQ0FBQyxVQUFVLEVBQUU7Z0JBQ25CLE9BQU8sSUFBSSxDQUFDO2FBQ2I7WUFFRCxPQUFPLElBQUksQ0FBQztRQUNkLENBQUM7UUFDSCx3QkFBQztJQUFELENBQUMsQUF0T0QsSUFzT0M7SUF0T1ksOENBQWlCO0lBME85QixJQUFLLGNBR0o7SUFIRCxXQUFLLGNBQWM7UUFDakIseURBQU8sQ0FBQTtRQUNQLDJEQUFRLENBQUE7SUFDVixDQUFDLEVBSEksY0FBYyxLQUFkLGNBQWMsUUFHbEI7SUFrR0QsU0FBUyxXQUFXLENBQUMsT0FBbUI7UUFDdEMsT0FBTyxPQUFPLENBQUMsY0FBYyxFQUFFLENBQUMsTUFBTSxDQUFDLFVBQUEsRUFBRSxJQUFJLE9BQUEsQ0FBQyxFQUFFLENBQUMsaUJBQWlCLEVBQXJCLENBQXFCLENBQUMsQ0FBQztJQUN0RSxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG5pbXBvcnQge2Fic29sdXRlRnJvbSwgYWJzb2x1dGVGcm9tU291cmNlRmlsZSwgQWJzb2x1dGVGc1BhdGh9IGZyb20gJy4uLy4uL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7Q2xhc3NSZWNvcmQsIFRyYWl0Q29tcGlsZXJ9IGZyb20gJy4uLy4uL3RyYW5zZm9ybSc7XG5pbXBvcnQge0ZpbGVUeXBlQ2hlY2tpbmdEYXRhfSBmcm9tICcuLi8uLi90eXBlY2hlY2svc3JjL2NoZWNrZXInO1xuaW1wb3J0IHtJbmNyZW1lbnRhbEJ1aWxkfSBmcm9tICcuLi9hcGknO1xuXG5pbXBvcnQge0ZpbGVEZXBlbmRlbmN5R3JhcGh9IGZyb20gJy4vZGVwZW5kZW5jeV90cmFja2luZyc7XG5cbi8qKlxuICogRHJpdmVzIGFuIGluY3JlbWVudGFsIGJ1aWxkLCBieSB0cmFja2luZyBjaGFuZ2VzIGFuZCBkZXRlcm1pbmluZyB3aGljaCBmaWxlcyBuZWVkIHRvIGJlIGVtaXR0ZWQuXG4gKi9cbmV4cG9ydCBjbGFzcyBJbmNyZW1lbnRhbERyaXZlciBpbXBsZW1lbnRzIEluY3JlbWVudGFsQnVpbGQ8Q2xhc3NSZWNvcmQsIEZpbGVUeXBlQ2hlY2tpbmdEYXRhPiB7XG4gIC8qKlxuICAgKiBTdGF0ZSBvZiB0aGUgY3VycmVudCBidWlsZC5cbiAgICpcbiAgICogVGhpcyB0cmFuc2l0aW9ucyBhcyB0aGUgY29tcGlsYXRpb24gcHJvZ3Jlc3Nlcy5cbiAgICovXG4gIHByaXZhdGUgc3RhdGU6IEJ1aWxkU3RhdGU7XG5cbiAgcHJpdmF0ZSBjb25zdHJ1Y3RvcihcbiAgICAgIHN0YXRlOiBQZW5kaW5nQnVpbGRTdGF0ZSwgcHJpdmF0ZSBhbGxUc0ZpbGVzOiBTZXQ8dHMuU291cmNlRmlsZT4sXG4gICAgICByZWFkb25seSBkZXBHcmFwaDogRmlsZURlcGVuZGVuY3lHcmFwaCwgcHJpdmF0ZSBsb2dpY2FsQ2hhbmdlczogU2V0PHN0cmluZz58bnVsbCkge1xuICAgIHRoaXMuc3RhdGUgPSBzdGF0ZTtcbiAgfVxuXG4gIC8qKlxuICAgKiBDb25zdHJ1Y3QgYW4gYEluY3JlbWVudGFsRHJpdmVyYCB3aXRoIGEgc3RhcnRpbmcgc3RhdGUgdGhhdCBpbmNvcnBvcmF0ZXMgdGhlIHJlc3VsdHMgb2YgYVxuICAgKiBwcmV2aW91cyBidWlsZC5cbiAgICpcbiAgICogVGhlIHByZXZpb3VzIGJ1aWxkJ3MgYEJ1aWxkU3RhdGVgIGlzIHJlY29uY2lsZWQgd2l0aCB0aGUgbmV3IHByb2dyYW0ncyBjaGFuZ2VzLCBhbmQgdGhlIHJlc3VsdHNcbiAgICogYXJlIG1lcmdlZCBpbnRvIHRoZSBuZXcgYnVpbGQncyBgUGVuZGluZ0J1aWxkU3RhdGVgLlxuICAgKi9cbiAgc3RhdGljIHJlY29uY2lsZShcbiAgICAgIG9sZFByb2dyYW06IHRzLlByb2dyYW0sIG9sZERyaXZlcjogSW5jcmVtZW50YWxEcml2ZXIsIG5ld1Byb2dyYW06IHRzLlByb2dyYW0sXG4gICAgICBtb2RpZmllZFJlc291cmNlRmlsZXM6IFNldDxzdHJpbmc+fG51bGwpOiBJbmNyZW1lbnRhbERyaXZlciB7XG4gICAgLy8gSW5pdGlhbGl6ZSB0aGUgc3RhdGUgb2YgdGhlIGN1cnJlbnQgYnVpbGQgYmFzZWQgb24gdGhlIHByZXZpb3VzIG9uZS5cbiAgICBsZXQgc3RhdGU6IFBlbmRpbmdCdWlsZFN0YXRlO1xuICAgIGlmIChvbGREcml2ZXIuc3RhdGUua2luZCA9PT0gQnVpbGRTdGF0ZUtpbmQuUGVuZGluZykge1xuICAgICAgLy8gVGhlIHByZXZpb3VzIGJ1aWxkIG5ldmVyIG1hZGUgaXQgcGFzdCB0aGUgcGVuZGluZyBzdGF0ZS4gUmV1c2UgaXQgYXMgdGhlIHN0YXJ0aW5nIHN0YXRlIGZvclxuICAgICAgLy8gdGhpcyBidWlsZC5cbiAgICAgIHN0YXRlID0gb2xkRHJpdmVyLnN0YXRlO1xuICAgIH0gZWxzZSB7XG4gICAgICAvLyBUaGUgcHJldmlvdXMgYnVpbGQgd2FzIHN1Y2Nlc3NmdWxseSBhbmFseXplZC4gYHBlbmRpbmdFbWl0YCBpcyB0aGUgb25seSBzdGF0ZSBjYXJyaWVkXG4gICAgICAvLyBmb3J3YXJkIGludG8gdGhpcyBidWlsZC5cbiAgICAgIHN0YXRlID0ge1xuICAgICAgICBraW5kOiBCdWlsZFN0YXRlS2luZC5QZW5kaW5nLFxuICAgICAgICBwZW5kaW5nRW1pdDogb2xkRHJpdmVyLnN0YXRlLnBlbmRpbmdFbWl0LFxuICAgICAgICBjaGFuZ2VkUmVzb3VyY2VQYXRoczogbmV3IFNldDxBYnNvbHV0ZUZzUGF0aD4oKSxcbiAgICAgICAgY2hhbmdlZFRzUGF0aHM6IG5ldyBTZXQ8c3RyaW5nPigpLFxuICAgICAgICBsYXN0R29vZDogb2xkRHJpdmVyLnN0YXRlLmxhc3RHb29kLFxuICAgICAgfTtcbiAgICB9XG5cbiAgICAvLyBNZXJnZSB0aGUgZnJlc2hseSBtb2RpZmllZCByZXNvdXJjZSBmaWxlcyB3aXRoIGFueSBwcmlvciBvbmVzLlxuICAgIGlmIChtb2RpZmllZFJlc291cmNlRmlsZXMgIT09IG51bGwpIHtcbiAgICAgIGZvciAoY29uc3QgcmVzRmlsZSBvZiBtb2RpZmllZFJlc291cmNlRmlsZXMpIHtcbiAgICAgICAgc3RhdGUuY2hhbmdlZFJlc291cmNlUGF0aHMuYWRkKGFic29sdXRlRnJvbShyZXNGaWxlKSk7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gTmV4dCwgcHJvY2VzcyB0aGUgZmlsZXMgaW4gdGhlIG5ldyBwcm9ncmFtLCB3aXRoIGEgY291cGxlIG9mIGdvYWxzOlxuICAgIC8vIDEpIERldGVybWluZSB3aGljaCBUUyBmaWxlcyBoYXZlIGNoYW5nZWQsIGlmIGFueSwgYW5kIG1lcmdlIHRoZW0gaW50byBgY2hhbmdlZFRzRmlsZXNgLlxuICAgIC8vIDIpIFByb2R1Y2UgYSBsaXN0IG9mIFRTIGZpbGVzIHdoaWNoIG5vIGxvbmdlciBleGlzdCBpbiB0aGUgcHJvZ3JhbSAodGhleSd2ZSBiZWVuIGRlbGV0ZWRcbiAgICAvLyAgICBzaW5jZSB0aGUgcHJldmlvdXMgY29tcGlsYXRpb24pLiBUaGVzZSBuZWVkIHRvIGJlIHJlbW92ZWQgZnJvbSB0aGUgc3RhdGUgdHJhY2tpbmcgdG8gYXZvaWRcbiAgICAvLyAgICBsZWFraW5nIG1lbW9yeS5cblxuICAgIC8vIEFsbCBmaWxlcyBpbiB0aGUgb2xkIHByb2dyYW0sIGZvciBlYXN5IGRldGVjdGlvbiBvZiBjaGFuZ2VzLlxuICAgIGNvbnN0IG9sZEZpbGVzID0gbmV3IFNldDx0cy5Tb3VyY2VGaWxlPihvbGRQcm9ncmFtLmdldFNvdXJjZUZpbGVzKCkpO1xuXG4gICAgLy8gQXNzdW1lIGFsbCB0aGUgb2xkIGZpbGVzIHdlcmUgZGVsZXRlZCB0byBiZWdpbiB3aXRoLiBPbmx5IFRTIGZpbGVzIGFyZSB0cmFja2VkLlxuICAgIGNvbnN0IGRlbGV0ZWRUc1BhdGhzID0gbmV3IFNldDxzdHJpbmc+KHRzT25seUZpbGVzKG9sZFByb2dyYW0pLm1hcChzZiA9PiBzZi5maWxlTmFtZSkpO1xuXG4gICAgZm9yIChjb25zdCBuZXdGaWxlIG9mIG5ld1Byb2dyYW0uZ2V0U291cmNlRmlsZXMoKSkge1xuICAgICAgaWYgKCFuZXdGaWxlLmlzRGVjbGFyYXRpb25GaWxlKSB7XG4gICAgICAgIC8vIFRoaXMgZmlsZSBleGlzdHMgaW4gdGhlIG5ldyBwcm9ncmFtLCBzbyByZW1vdmUgaXQgZnJvbSBgZGVsZXRlZFRzUGF0aHNgLlxuICAgICAgICBkZWxldGVkVHNQYXRocy5kZWxldGUobmV3RmlsZS5maWxlTmFtZSk7XG4gICAgICB9XG5cbiAgICAgIGlmIChvbGRGaWxlcy5oYXMobmV3RmlsZSkpIHtcbiAgICAgICAgLy8gVGhpcyBmaWxlIGhhc24ndCBjaGFuZ2VkOyBubyBuZWVkIHRvIGxvb2sgYXQgaXQgZnVydGhlci5cbiAgICAgICAgY29udGludWU7XG4gICAgICB9XG5cbiAgICAgIC8vIFRoZSBmaWxlIGhhcyBjaGFuZ2VkIHNpbmNlIHRoZSBsYXN0IHN1Y2Nlc3NmdWwgYnVpbGQuIFRoZSBhcHByb3ByaWF0ZSByZWFjdGlvbiBkZXBlbmRzIG9uXG4gICAgICAvLyB3aGF0IGtpbmQgb2YgZmlsZSBpdCBpcy5cbiAgICAgIGlmICghbmV3RmlsZS5pc0RlY2xhcmF0aW9uRmlsZSkge1xuICAgICAgICAvLyBJdCdzIGEgLnRzIGZpbGUsIHNvIHRyYWNrIGl0IGFzIGEgY2hhbmdlLlxuICAgICAgICBzdGF0ZS5jaGFuZ2VkVHNQYXRocy5hZGQobmV3RmlsZS5maWxlTmFtZSk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICAvLyBJdCdzIGEgLmQudHMgZmlsZS4gQ3VycmVudGx5IHRoZSBjb21waWxlciBkb2VzIG5vdCBkbyBhIGdyZWF0IGpvYiBvZiB0cmFja2luZ1xuICAgICAgICAvLyBkZXBlbmRlbmNpZXMgb24gLmQudHMgZmlsZXMsIHNvIGJhaWwgb3V0IG9mIGluY3JlbWVudGFsIGJ1aWxkcyBoZXJlIGFuZCBkbyBhIGZ1bGwgYnVpbGQuXG4gICAgICAgIC8vIFRoaXMgdXN1YWxseSBvbmx5IGhhcHBlbnMgaWYgc29tZXRoaW5nIGluIG5vZGVfbW9kdWxlcyBjaGFuZ2VzLlxuICAgICAgICByZXR1cm4gSW5jcmVtZW50YWxEcml2ZXIuZnJlc2gobmV3UHJvZ3JhbSk7XG4gICAgICB9XG4gICAgfVxuXG4gICAgLy8gVGhlIG5leHQgc3RlcCBpcyB0byByZW1vdmUgYW55IGRlbGV0ZWQgZmlsZXMgZnJvbSB0aGUgc3RhdGUuXG4gICAgZm9yIChjb25zdCBmaWxlUGF0aCBvZiBkZWxldGVkVHNQYXRocykge1xuICAgICAgc3RhdGUucGVuZGluZ0VtaXQuZGVsZXRlKGZpbGVQYXRoKTtcblxuICAgICAgLy8gRXZlbiBpZiB0aGUgZmlsZSBkb2Vzbid0IGV4aXN0IGluIHRoZSBjdXJyZW50IGNvbXBpbGF0aW9uLCBpdCBzdGlsbCBtaWdodCBoYXZlIGJlZW4gY2hhbmdlZFxuICAgICAgLy8gaW4gYSBwcmV2aW91cyBvbmUsIHNvIGRlbGV0ZSBpdCBmcm9tIHRoZSBzZXQgb2YgY2hhbmdlZCBUUyBmaWxlcywganVzdCBpbiBjYXNlLlxuICAgICAgc3RhdGUuY2hhbmdlZFRzUGF0aHMuZGVsZXRlKGZpbGVQYXRoKTtcbiAgICB9XG5cbiAgICAvLyBOb3csIGNoYW5nZWRUc1BhdGhzIGNvbnRhaW5zIHBoeXNpY2FsbHkgY2hhbmdlZCBUUyBwYXRocy4gVXNlIHRoZSBwcmV2aW91cyBwcm9ncmFtJ3MgbG9naWNhbFxuICAgIC8vIGRlcGVuZGVuY3kgZ3JhcGggdG8gZGV0ZXJtaW5lIGxvZ2ljYWxseSBjaGFuZ2VkIGZpbGVzLlxuICAgIGNvbnN0IGRlcEdyYXBoID0gbmV3IEZpbGVEZXBlbmRlbmN5R3JhcGgoKTtcblxuICAgIC8vIElmIGEgcHJldmlvdXMgY29tcGlsYXRpb24gZXhpc3RzLCB1c2UgaXRzIGRlcGVuZGVuY3kgZ3JhcGggdG8gZGV0ZXJtaW5lIHRoZSBzZXQgb2YgbG9naWNhbGx5XG4gICAgLy8gY2hhbmdlZCBmaWxlcy5cbiAgICBsZXQgbG9naWNhbENoYW5nZXM6IFNldDxzdHJpbmc+fG51bGwgPSBudWxsO1xuICAgIGlmIChzdGF0ZS5sYXN0R29vZCAhPT0gbnVsbCkge1xuICAgICAgLy8gRXh0cmFjdCB0aGUgc2V0IG9mIGxvZ2ljYWxseSBjaGFuZ2VkIGZpbGVzLiBBdCB0aGUgc2FtZSB0aW1lLCB0aGlzIG9wZXJhdGlvbiBwb3B1bGF0ZXMgdGhlXG4gICAgICAvLyBjdXJyZW50IChmcmVzaCkgZGVwZW5kZW5jeSBncmFwaCB3aXRoIGluZm9ybWF0aW9uIGFib3V0IHRob3NlIGZpbGVzIHdoaWNoIGhhdmUgbm90XG4gICAgICAvLyBsb2dpY2FsbHkgY2hhbmdlZC5cbiAgICAgIGxvZ2ljYWxDaGFuZ2VzID0gZGVwR3JhcGgudXBkYXRlV2l0aFBoeXNpY2FsQ2hhbmdlcyhcbiAgICAgICAgICBzdGF0ZS5sYXN0R29vZC5kZXBHcmFwaCwgc3RhdGUuY2hhbmdlZFRzUGF0aHMsIGRlbGV0ZWRUc1BhdGhzLFxuICAgICAgICAgIHN0YXRlLmNoYW5nZWRSZXNvdXJjZVBhdGhzKTtcbiAgICAgIGZvciAoY29uc3QgZmlsZU5hbWUgb2Ygc3RhdGUuY2hhbmdlZFRzUGF0aHMpIHtcbiAgICAgICAgbG9naWNhbENoYW5nZXMuYWRkKGZpbGVOYW1lKTtcbiAgICAgIH1cblxuICAgICAgLy8gQW55IGxvZ2ljYWxseSBjaGFuZ2VkIGZpbGVzIG5lZWQgdG8gYmUgcmUtZW1pdHRlZC4gTW9zdCBvZiB0aGUgdGltZSB0aGlzIHdvdWxkIGhhcHBlblxuICAgICAgLy8gcmVnYXJkbGVzcyBiZWNhdXNlIHRoZSBuZXcgZGVwZW5kZW5jeSBncmFwaCB3b3VsZCBfYWxzb18gaWRlbnRpZnkgdGhlIGZpbGUgYXMgc3RhbGUuXG4gICAgICAvLyBIb3dldmVyIHRoZXJlIGFyZSBlZGdlIGNhc2VzIHN1Y2ggYXMgcmVtb3ZpbmcgYSBjb21wb25lbnQgZnJvbSBhbiBOZ01vZHVsZSB3aXRob3V0IGFkZGluZ1xuICAgICAgLy8gaXQgdG8gYW5vdGhlciBvbmUsIHdoZXJlIHRoZSBwcmV2aW91cyBncmFwaCBpZGVudGlmaWVzIHRoZSBmaWxlIGFzIGxvZ2ljYWxseSBjaGFuZ2VkLCBidXRcbiAgICAgIC8vIHRoZSBuZXcgZ3JhcGggKHdoaWNoIGRvZXMgbm90IGhhdmUgdGhhdCBlZGdlKSBmYWlscyB0byBpZGVudGlmeSB0aGF0IHRoZSBmaWxlIHNob3VsZCBiZVxuICAgICAgLy8gcmUtZW1pdHRlZC5cbiAgICAgIGZvciAoY29uc3QgY2hhbmdlIG9mIGxvZ2ljYWxDaGFuZ2VzKSB7XG4gICAgICAgIHN0YXRlLnBlbmRpbmdFbWl0LmFkZChjaGFuZ2UpO1xuICAgICAgfVxuICAgIH1cblxuICAgIC8vIGBzdGF0ZWAgbm93IHJlZmxlY3RzIHRoZSBpbml0aWFsIHBlbmRpbmcgc3RhdGUgb2YgdGhlIGN1cnJlbnQgY29tcGlsYXRpb24uXG5cbiAgICByZXR1cm4gbmV3IEluY3JlbWVudGFsRHJpdmVyKFxuICAgICAgICBzdGF0ZSwgbmV3IFNldDx0cy5Tb3VyY2VGaWxlPih0c09ubHlGaWxlcyhuZXdQcm9ncmFtKSksIGRlcEdyYXBoLCBsb2dpY2FsQ2hhbmdlcyk7XG4gIH1cblxuICBzdGF0aWMgZnJlc2gocHJvZ3JhbTogdHMuUHJvZ3JhbSk6IEluY3JlbWVudGFsRHJpdmVyIHtcbiAgICAvLyBJbml0aWFsaXplIHRoZSBzZXQgb2YgZmlsZXMgd2hpY2ggbmVlZCB0byBiZSBlbWl0dGVkIHRvIHRoZSBzZXQgb2YgYWxsIFRTIGZpbGVzIGluIHRoZVxuICAgIC8vIHByb2dyYW0uXG4gICAgY29uc3QgdHNGaWxlcyA9IHRzT25seUZpbGVzKHByb2dyYW0pO1xuXG4gICAgY29uc3Qgc3RhdGU6IFBlbmRpbmdCdWlsZFN0YXRlID0ge1xuICAgICAga2luZDogQnVpbGRTdGF0ZUtpbmQuUGVuZGluZyxcbiAgICAgIHBlbmRpbmdFbWl0OiBuZXcgU2V0PHN0cmluZz4odHNGaWxlcy5tYXAoc2YgPT4gc2YuZmlsZU5hbWUpKSxcbiAgICAgIGNoYW5nZWRSZXNvdXJjZVBhdGhzOiBuZXcgU2V0PEFic29sdXRlRnNQYXRoPigpLFxuICAgICAgY2hhbmdlZFRzUGF0aHM6IG5ldyBTZXQ8c3RyaW5nPigpLFxuICAgICAgbGFzdEdvb2Q6IG51bGwsXG4gICAgfTtcblxuICAgIHJldHVybiBuZXcgSW5jcmVtZW50YWxEcml2ZXIoXG4gICAgICAgIHN0YXRlLCBuZXcgU2V0KHRzRmlsZXMpLCBuZXcgRmlsZURlcGVuZGVuY3lHcmFwaCgpLCAvKiBsb2dpY2FsQ2hhbmdlcyAqLyBudWxsKTtcbiAgfVxuXG4gIHJlY29yZFN1Y2Nlc3NmdWxBbmFseXNpcyh0cmFpdENvbXBpbGVyOiBUcmFpdENvbXBpbGVyKTogdm9pZCB7XG4gICAgaWYgKHRoaXMuc3RhdGUua2luZCAhPT0gQnVpbGRTdGF0ZUtpbmQuUGVuZGluZykge1xuICAgICAgLy8gQ2hhbmdlcyBoYXZlIGFscmVhZHkgYmVlbiBpbmNvcnBvcmF0ZWQuXG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3QgcGVuZGluZ0VtaXQgPSB0aGlzLnN0YXRlLnBlbmRpbmdFbWl0O1xuXG4gICAgY29uc3Qgc3RhdGU6IFBlbmRpbmdCdWlsZFN0YXRlID0gdGhpcy5zdGF0ZTtcblxuICAgIGZvciAoY29uc3Qgc2Ygb2YgdGhpcy5hbGxUc0ZpbGVzKSB7XG4gICAgICBpZiAodGhpcy5kZXBHcmFwaC5pc1N0YWxlKHNmLCBzdGF0ZS5jaGFuZ2VkVHNQYXRocywgc3RhdGUuY2hhbmdlZFJlc291cmNlUGF0aHMpKSB7XG4gICAgICAgIC8vIFNvbWV0aGluZyBoYXMgY2hhbmdlZCB3aGljaCByZXF1aXJlcyB0aGlzIGZpbGUgYmUgcmUtZW1pdHRlZC5cbiAgICAgICAgcGVuZGluZ0VtaXQuYWRkKHNmLmZpbGVOYW1lKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyBVcGRhdGUgdGhlIHN0YXRlIHRvIGFuIGBBbmFseXplZEJ1aWxkU3RhdGVgLlxuICAgIHRoaXMuc3RhdGUgPSB7XG4gICAgICBraW5kOiBCdWlsZFN0YXRlS2luZC5BbmFseXplZCxcbiAgICAgIHBlbmRpbmdFbWl0LFxuXG4gICAgICAvLyBTaW5jZSB0aGlzIGNvbXBpbGF0aW9uIHdhcyBzdWNjZXNzZnVsbHkgYW5hbHl6ZWQsIHVwZGF0ZSB0aGUgXCJsYXN0IGdvb2RcIiBhcnRpZmFjdHMgdG8gdGhlXG4gICAgICAvLyBvbmVzIGZyb20gdGhlIGN1cnJlbnQgY29tcGlsYXRpb24uXG4gICAgICBsYXN0R29vZDoge1xuICAgICAgICBkZXBHcmFwaDogdGhpcy5kZXBHcmFwaCxcbiAgICAgICAgdHJhaXRDb21waWxlcjogdHJhaXRDb21waWxlcixcbiAgICAgICAgdHlwZUNoZWNraW5nUmVzdWx0czogbnVsbCxcbiAgICAgIH0sXG5cbiAgICAgIHByaW9yVHlwZUNoZWNraW5nUmVzdWx0czpcbiAgICAgICAgICB0aGlzLnN0YXRlLmxhc3RHb29kICE9PSBudWxsID8gdGhpcy5zdGF0ZS5sYXN0R29vZC50eXBlQ2hlY2tpbmdSZXN1bHRzIDogbnVsbCxcbiAgICB9O1xuICB9XG5cbiAgcmVjb3JkU3VjY2Vzc2Z1bFR5cGVDaGVjayhyZXN1bHRzOiBNYXA8QWJzb2x1dGVGc1BhdGgsIEZpbGVUeXBlQ2hlY2tpbmdEYXRhPik6IHZvaWQge1xuICAgIGlmICh0aGlzLnN0YXRlLmxhc3RHb29kID09PSBudWxsIHx8IHRoaXMuc3RhdGUua2luZCAhPT0gQnVpbGRTdGF0ZUtpbmQuQW5hbHl6ZWQpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgdGhpcy5zdGF0ZS5sYXN0R29vZC50eXBlQ2hlY2tpbmdSZXN1bHRzID0gcmVzdWx0cztcbiAgfVxuXG4gIHJlY29yZFN1Y2Nlc3NmdWxFbWl0KHNmOiB0cy5Tb3VyY2VGaWxlKTogdm9pZCB7XG4gICAgdGhpcy5zdGF0ZS5wZW5kaW5nRW1pdC5kZWxldGUoc2YuZmlsZU5hbWUpO1xuICB9XG5cbiAgc2FmZVRvU2tpcEVtaXQoc2Y6IHRzLlNvdXJjZUZpbGUpOiBib29sZWFuIHtcbiAgICByZXR1cm4gIXRoaXMuc3RhdGUucGVuZGluZ0VtaXQuaGFzKHNmLmZpbGVOYW1lKTtcbiAgfVxuXG4gIHByaW9yV29ya0ZvcihzZjogdHMuU291cmNlRmlsZSk6IENsYXNzUmVjb3JkW118bnVsbCB7XG4gICAgaWYgKHRoaXMuc3RhdGUubGFzdEdvb2QgPT09IG51bGwgfHwgdGhpcy5sb2dpY2FsQ2hhbmdlcyA9PT0gbnVsbCkge1xuICAgICAgLy8gVGhlcmUgaXMgbm8gcHJldmlvdXMgZ29vZCBidWlsZCwgc28gbm8gcHJpb3Igd29yayBleGlzdHMuXG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9IGVsc2UgaWYgKHRoaXMubG9naWNhbENoYW5nZXMuaGFzKHNmLmZpbGVOYW1lKSkge1xuICAgICAgLy8gUHJpb3Igd29yayBtaWdodCBleGlzdCwgYnV0IHdvdWxkIGJlIHN0YWxlIGFzIHRoZSBmaWxlIGluIHF1ZXN0aW9uIGhhcyBsb2dpY2FsbHkgY2hhbmdlZC5cbiAgICAgIHJldHVybiBudWxsO1xuICAgIH0gZWxzZSB7XG4gICAgICAvLyBQcmlvciB3b3JrIG1pZ2h0IGV4aXN0LCBhbmQgaWYgaXQgZG9lcyB0aGVuIGl0J3MgdXNhYmxlIVxuICAgICAgcmV0dXJuIHRoaXMuc3RhdGUubGFzdEdvb2QudHJhaXRDb21waWxlci5yZWNvcmRzRm9yKHNmKTtcbiAgICB9XG4gIH1cblxuICBwcmlvclR5cGVDaGVja2luZ1Jlc3VsdHNGb3Ioc2Y6IHRzLlNvdXJjZUZpbGUpOiBGaWxlVHlwZUNoZWNraW5nRGF0YXxudWxsIHtcbiAgICBpZiAodGhpcy5zdGF0ZS5raW5kICE9PSBCdWlsZFN0YXRlS2luZC5BbmFseXplZCB8fFxuICAgICAgICB0aGlzLnN0YXRlLnByaW9yVHlwZUNoZWNraW5nUmVzdWx0cyA9PT0gbnVsbCB8fCB0aGlzLmxvZ2ljYWxDaGFuZ2VzID09PSBudWxsKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICBpZiAodGhpcy5sb2dpY2FsQ2hhbmdlcy5oYXMoc2YuZmlsZU5hbWUpKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICBjb25zdCBmaWxlTmFtZSA9IGFic29sdXRlRnJvbVNvdXJjZUZpbGUoc2YpO1xuICAgIGlmICghdGhpcy5zdGF0ZS5wcmlvclR5cGVDaGVja2luZ1Jlc3VsdHMuaGFzKGZpbGVOYW1lKSkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIGNvbnN0IGRhdGEgPSB0aGlzLnN0YXRlLnByaW9yVHlwZUNoZWNraW5nUmVzdWx0cy5nZXQoZmlsZU5hbWUpITtcbiAgICBpZiAoZGF0YS5oYXNJbmxpbmVzKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICByZXR1cm4gZGF0YTtcbiAgfVxufVxuXG50eXBlIEJ1aWxkU3RhdGUgPSBQZW5kaW5nQnVpbGRTdGF0ZXxBbmFseXplZEJ1aWxkU3RhdGU7XG5cbmVudW0gQnVpbGRTdGF0ZUtpbmQge1xuICBQZW5kaW5nLFxuICBBbmFseXplZCxcbn1cblxuaW50ZXJmYWNlIEJhc2VCdWlsZFN0YXRlIHtcbiAga2luZDogQnVpbGRTdGF0ZUtpbmQ7XG5cbiAgLyoqXG4gICAqIFRoZSBoZWFydCBvZiBpbmNyZW1lbnRhbCBidWlsZHMuIFRoaXMgYFNldGAgdHJhY2tzIHRoZSBzZXQgb2YgZmlsZXMgd2hpY2ggbmVlZCB0byBiZSBlbWl0dGVkXG4gICAqIGR1cmluZyB0aGUgY3VycmVudCBjb21waWxhdGlvbi5cbiAgICpcbiAgICogVGhpcyBzdGFydHMgb3V0IGFzIHRoZSBzZXQgb2YgZmlsZXMgd2hpY2ggYXJlIHN0aWxsIHBlbmRpbmcgZnJvbSB0aGUgcHJldmlvdXMgcHJvZ3JhbSAob3IgdGhlXG4gICAqIGZ1bGwgc2V0IG9mIC50cyBmaWxlcyBvbiBhIGZyZXNoIGJ1aWxkKS5cbiAgICpcbiAgICogQWZ0ZXIgYW5hbHlzaXMsIGl0J3MgdXBkYXRlZCB0byBpbmNsdWRlIGFueSBmaWxlcyB3aGljaCBtaWdodCBoYXZlIGNoYW5nZWQgYW5kIG5lZWQgYSByZS1lbWl0XG4gICAqIGFzIGEgcmVzdWx0IG9mIGluY3JlbWVudGFsIGNoYW5nZXMuXG4gICAqXG4gICAqIElmIGFuIGVtaXQgaGFwcGVucywgYW55IHdyaXR0ZW4gZmlsZXMgYXJlIHJlbW92ZWQgZnJvbSB0aGUgYFNldGAsIGFzIHRoZXkncmUgbm8gbG9uZ2VyXG4gICAqIHBlbmRpbmcuXG4gICAqXG4gICAqIFRodXMsIGFmdGVyIGNvbXBpbGF0aW9uIGBwZW5kaW5nRW1pdGAgc2hvdWxkIGJlIGVtcHR5IChvbiBhIHN1Y2Nlc3NmdWwgYnVpbGQpIG9yIGNvbnRhaW4gdGhlXG4gICAqIGZpbGVzIHdoaWNoIHN0aWxsIG5lZWQgdG8gYmUgZW1pdHRlZCBidXQgaGF2ZSBub3QgeWV0IGJlZW4gKGR1ZSB0byBlcnJvcnMpLlxuICAgKlxuICAgKiBgcGVuZGluZ0VtaXRgIGlzIHRyYWNrZWQgYXMgYXMgYFNldDxzdHJpbmc+YCBpbnN0ZWFkIG9mIGEgYFNldDx0cy5Tb3VyY2VGaWxlPmAsIGJlY2F1c2UgdGhlXG4gICAqIGNvbnRlbnRzIG9mIHRoZSBmaWxlIGFyZSBub3QgaW1wb3J0YW50IGhlcmUsIG9ubHkgd2hldGhlciBvciBub3QgdGhlIGN1cnJlbnQgdmVyc2lvbiBvZiBpdFxuICAgKiBuZWVkcyB0byBiZSBlbWl0dGVkLiBUaGUgYHN0cmluZ2BzIGhlcmUgYXJlIFRTIGZpbGUgcGF0aHMuXG4gICAqXG4gICAqIFNlZSB0aGUgUkVBRE1FLm1kIGZvciBtb3JlIGluZm9ybWF0aW9uIG9uIHRoaXMgYWxnb3JpdGhtLlxuICAgKi9cbiAgcGVuZGluZ0VtaXQ6IFNldDxzdHJpbmc+O1xuXG5cbiAgLyoqXG4gICAqIFNwZWNpZmljIGFzcGVjdHMgb2YgdGhlIGxhc3QgY29tcGlsYXRpb24gd2hpY2ggc3VjY2Vzc2Z1bGx5IGNvbXBsZXRlZCBhbmFseXNpcywgaWYgYW55LlxuICAgKi9cbiAgbGFzdEdvb2Q6IHtcbiAgICAvKipcbiAgICAgKiBUaGUgZGVwZW5kZW5jeSBncmFwaCBmcm9tIHRoZSBsYXN0IHN1Y2Nlc3NmdWxseSBhbmFseXplZCBidWlsZC5cbiAgICAgKlxuICAgICAqIFRoaXMgaXMgdXNlZCB0byBkZXRlcm1pbmUgdGhlIGxvZ2ljYWwgaW1wYWN0IG9mIHBoeXNpY2FsIGZpbGUgY2hhbmdlcy5cbiAgICAgKi9cbiAgICBkZXBHcmFwaDogRmlsZURlcGVuZGVuY3lHcmFwaDtcblxuICAgIC8qKlxuICAgICAqIFRoZSBgVHJhaXRDb21waWxlcmAgZnJvbSB0aGUgbGFzdCBzdWNjZXNzZnVsbHkgYW5hbHl6ZWQgYnVpbGQuXG4gICAgICpcbiAgICAgKiBUaGlzIGlzIHVzZWQgdG8gZXh0cmFjdCBcInByaW9yIHdvcmtcIiB3aGljaCBtaWdodCBiZSByZXVzYWJsZSBpbiB0aGlzIGNvbXBpbGF0aW9uLlxuICAgICAqL1xuICAgIHRyYWl0Q29tcGlsZXI6IFRyYWl0Q29tcGlsZXI7XG5cbiAgICAvKipcbiAgICAgKiBUeXBlIGNoZWNraW5nIHJlc3VsdHMgd2hpY2ggd2lsbCBiZSBwYXNzZWQgb250byB0aGUgbmV4dCBidWlsZC5cbiAgICAgKi9cbiAgICB0eXBlQ2hlY2tpbmdSZXN1bHRzOiBNYXA8QWJzb2x1dGVGc1BhdGgsIEZpbGVUeXBlQ2hlY2tpbmdEYXRhPnwgbnVsbDtcbiAgfXxudWxsO1xufVxuXG4vKipcbiAqIFN0YXRlIG9mIGEgYnVpbGQgYmVmb3JlIHRoZSBBbmd1bGFyIGFuYWx5c2lzIHBoYXNlIGNvbXBsZXRlcy5cbiAqL1xuaW50ZXJmYWNlIFBlbmRpbmdCdWlsZFN0YXRlIGV4dGVuZHMgQmFzZUJ1aWxkU3RhdGUge1xuICBraW5kOiBCdWlsZFN0YXRlS2luZC5QZW5kaW5nO1xuXG4gIC8qKlxuICAgKiBTZXQgb2YgZmlsZXMgd2hpY2ggYXJlIGtub3duIHRvIG5lZWQgYW4gZW1pdC5cbiAgICpcbiAgICogQmVmb3JlIHRoZSBjb21waWxlcidzIGFuYWx5c2lzIHBoYXNlIGNvbXBsZXRlcywgYHBlbmRpbmdFbWl0YCBvbmx5IGNvbnRhaW5zIGZpbGVzIHRoYXQgd2VyZVxuICAgKiBzdGlsbCBwZW5kaW5nIGFmdGVyIHRoZSBwcmV2aW91cyBidWlsZC5cbiAgICovXG4gIHBlbmRpbmdFbWl0OiBTZXQ8c3RyaW5nPjtcblxuICAvKipcbiAgICogU2V0IG9mIFR5cGVTY3JpcHQgZmlsZSBwYXRocyB3aGljaCBoYXZlIGNoYW5nZWQgc2luY2UgdGhlIGxhc3Qgc3VjY2Vzc2Z1bGx5IGFuYWx5emVkIGJ1aWxkLlxuICAgKi9cbiAgY2hhbmdlZFRzUGF0aHM6IFNldDxzdHJpbmc+O1xuXG4gIC8qKlxuICAgKiBTZXQgb2YgcmVzb3VyY2UgZmlsZSBwYXRocyB3aGljaCBoYXZlIGNoYW5nZWQgc2luY2UgdGhlIGxhc3Qgc3VjY2Vzc2Z1bGx5IGFuYWx5emVkIGJ1aWxkLlxuICAgKi9cbiAgY2hhbmdlZFJlc291cmNlUGF0aHM6IFNldDxBYnNvbHV0ZUZzUGF0aD47XG59XG5cbmludGVyZmFjZSBBbmFseXplZEJ1aWxkU3RhdGUgZXh0ZW5kcyBCYXNlQnVpbGRTdGF0ZSB7XG4gIGtpbmQ6IEJ1aWxkU3RhdGVLaW5kLkFuYWx5emVkO1xuXG4gIC8qKlxuICAgKiBTZXQgb2YgZmlsZXMgd2hpY2ggYXJlIGtub3duIHRvIG5lZWQgYW4gZW1pdC5cbiAgICpcbiAgICogQWZ0ZXIgYW5hbHlzaXMgY29tcGxldGVzICh0aGF0IGlzLCB0aGUgc3RhdGUgdHJhbnNpdGlvbnMgdG8gYEFuYWx5emVkQnVpbGRTdGF0ZWApLCB0aGVcbiAgICogYHBlbmRpbmdFbWl0YCBzZXQgdGFrZXMgaW50byBhY2NvdW50IGFueSBvbi1kaXNrIGNoYW5nZXMgbWFkZSBzaW5jZSB0aGUgbGFzdCBzdWNjZXNzZnVsbHlcbiAgICogYW5hbHl6ZWQgYnVpbGQuXG4gICAqL1xuICBwZW5kaW5nRW1pdDogU2V0PHN0cmluZz47XG5cbiAgLyoqXG4gICAqIFR5cGUgY2hlY2tpbmcgcmVzdWx0cyBmcm9tIHRoZSBwcmV2aW91cyBjb21waWxhdGlvbiwgd2hpY2ggY2FuIGJlIHJldXNlZCBpbiB0aGlzIG9uZS5cbiAgICovXG4gIHByaW9yVHlwZUNoZWNraW5nUmVzdWx0czogTWFwPEFic29sdXRlRnNQYXRoLCBGaWxlVHlwZUNoZWNraW5nRGF0YT58bnVsbDtcbn1cblxuZnVuY3Rpb24gdHNPbmx5RmlsZXMocHJvZ3JhbTogdHMuUHJvZ3JhbSk6IFJlYWRvbmx5QXJyYXk8dHMuU291cmNlRmlsZT4ge1xuICByZXR1cm4gcHJvZ3JhbS5nZXRTb3VyY2VGaWxlcygpLmZpbHRlcihzZiA9PiAhc2YuaXNEZWNsYXJhdGlvbkZpbGUpO1xufVxuIl19