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
        define("@angular/compiler-cli/src/ngtsc/shims/src/adapter", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/src/ngtsc/util/src/typescript", "@angular/compiler-cli/src/ngtsc/shims/src/expando", "@angular/compiler-cli/src/ngtsc/shims/src/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.ShimAdapter = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var typescript_1 = require("@angular/compiler-cli/src/ngtsc/util/src/typescript");
    var expando_1 = require("@angular/compiler-cli/src/ngtsc/shims/src/expando");
    var util_1 = require("@angular/compiler-cli/src/ngtsc/shims/src/util");
    /**
     * Generates and tracks shim files for each original `ts.SourceFile`.
     *
     * The `ShimAdapter` provides an API that's designed to be used by a `ts.CompilerHost`
     * implementation and allows it to include synthetic "shim" files in the program that's being
     * created. It works for both freshly created programs as well as with reuse of an older program
     * (which already may contain shim files and thus have a different creation flow).
     */
    var ShimAdapter = /** @class */ (function () {
        function ShimAdapter(delegate, tsRootFiles, topLevelGenerators, perFileGenerators, oldProgram) {
            var e_1, _a, e_2, _b, e_3, _c, e_4, _d, e_5, _e;
            this.delegate = delegate;
            /**
             * A map of shim file names to the `ts.SourceFile` generated for those shims.
             */
            this.shims = new Map();
            /**
             * A map of shim file names to existing shims which were part of a previous iteration of this
             * program.
             *
             * Not all of these shims will be inherited into this program.
             */
            this.priorShims = new Map();
            /**
             * File names which are already known to not be shims.
             *
             * This allows for short-circuit returns without the expense of running regular expressions
             * against the filename repeatedly.
             */
            this.notShims = new Set();
            /**
             * The shim generators supported by this adapter as well as extra precalculated data facilitating
             * their use.
             */
            this.generators = [];
            /**
             * A `Set` of shim `ts.SourceFile`s which should not be emitted.
             */
            this.ignoreForEmit = new Set();
            /**
             * Extension prefixes of all installed per-file shims.
             */
            this.extensionPrefixes = [];
            try {
                // Initialize `this.generators` with a regex that matches each generator's paths.
                for (var perFileGenerators_1 = tslib_1.__values(perFileGenerators), perFileGenerators_1_1 = perFileGenerators_1.next(); !perFileGenerators_1_1.done; perFileGenerators_1_1 = perFileGenerators_1.next()) {
                    var gen = perFileGenerators_1_1.value;
                    // This regex matches paths for shims from this generator. The first (and only) capture group
                    // extracts the filename prefix, which can be used to find the original file that was used to
                    // generate this shim.
                    var pattern = "^(.*)\\." + gen.extensionPrefix + "\\.ts$";
                    var regexp = new RegExp(pattern, 'i');
                    this.generators.push({
                        generator: gen,
                        test: regexp,
                        suffix: "." + gen.extensionPrefix + ".ts",
                    });
                    this.extensionPrefixes.push(gen.extensionPrefix);
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (perFileGenerators_1_1 && !perFileGenerators_1_1.done && (_a = perFileGenerators_1.return)) _a.call(perFileGenerators_1);
                }
                finally { if (e_1) throw e_1.error; }
            }
            // Process top-level generators and pre-generate their shims. Accumulate the list of filenames
            // as extra input files.
            var extraInputFiles = [];
            try {
                for (var topLevelGenerators_1 = tslib_1.__values(topLevelGenerators), topLevelGenerators_1_1 = topLevelGenerators_1.next(); !topLevelGenerators_1_1.done; topLevelGenerators_1_1 = topLevelGenerators_1.next()) {
                    var gen = topLevelGenerators_1_1.value;
                    var sf = gen.makeTopLevelShim();
                    expando_1.sfExtensionData(sf).isTopLevelShim = true;
                    if (!gen.shouldEmit) {
                        this.ignoreForEmit.add(sf);
                    }
                    var fileName = file_system_1.absoluteFromSourceFile(sf);
                    this.shims.set(fileName, sf);
                    extraInputFiles.push(fileName);
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (topLevelGenerators_1_1 && !topLevelGenerators_1_1.done && (_b = topLevelGenerators_1.return)) _b.call(topLevelGenerators_1);
                }
                finally { if (e_2) throw e_2.error; }
            }
            try {
                // Add to that list the per-file shims associated with each root file. This is needed because
                // reference tagging alone may not work in TS compilations that have `noResolve` set. Such
                // compilations rely on the list of input files completely describing the program.
                for (var tsRootFiles_1 = tslib_1.__values(tsRootFiles), tsRootFiles_1_1 = tsRootFiles_1.next(); !tsRootFiles_1_1.done; tsRootFiles_1_1 = tsRootFiles_1.next()) {
                    var rootFile = tsRootFiles_1_1.value;
                    try {
                        for (var _f = (e_4 = void 0, tslib_1.__values(this.generators)), _g = _f.next(); !_g.done; _g = _f.next()) {
                            var gen = _g.value;
                            extraInputFiles.push(util_1.makeShimFileName(rootFile, gen.suffix));
                        }
                    }
                    catch (e_4_1) { e_4 = { error: e_4_1 }; }
                    finally {
                        try {
                            if (_g && !_g.done && (_d = _f.return)) _d.call(_f);
                        }
                        finally { if (e_4) throw e_4.error; }
                    }
                }
            }
            catch (e_3_1) { e_3 = { error: e_3_1 }; }
            finally {
                try {
                    if (tsRootFiles_1_1 && !tsRootFiles_1_1.done && (_c = tsRootFiles_1.return)) _c.call(tsRootFiles_1);
                }
                finally { if (e_3) throw e_3.error; }
            }
            this.extraInputFiles = extraInputFiles;
            // If an old program is present, extract all per-file shims into a map, which will be used to
            // generate new versions of those shims.
            if (oldProgram !== null) {
                try {
                    for (var _h = tslib_1.__values(oldProgram.getSourceFiles()), _j = _h.next(); !_j.done; _j = _h.next()) {
                        var oldSf = _j.value;
                        if (oldSf.isDeclarationFile || !expando_1.isFileShimSourceFile(oldSf)) {
                            continue;
                        }
                        this.priorShims.set(file_system_1.absoluteFromSourceFile(oldSf), oldSf);
                    }
                }
                catch (e_5_1) { e_5 = { error: e_5_1 }; }
                finally {
                    try {
                        if (_j && !_j.done && (_e = _h.return)) _e.call(_h);
                    }
                    finally { if (e_5) throw e_5.error; }
                }
            }
        }
        /**
         * Produce a shim `ts.SourceFile` if `fileName` refers to a shim file which should exist in the
         * program.
         *
         * If `fileName` does not refer to a potential shim file, `null` is returned. If a corresponding
         * base file could not be determined, `undefined` is returned instead.
         */
        ShimAdapter.prototype.maybeGenerate = function (fileName) {
            var e_6, _a;
            // Fast path: either this filename has been proven not to be a shim before, or it is a known
            // shim and no generation is required.
            if (this.notShims.has(fileName)) {
                return null;
            }
            else if (this.shims.has(fileName)) {
                return this.shims.get(fileName);
            }
            // .d.ts files can't be shims.
            if (typescript_1.isDtsPath(fileName)) {
                this.notShims.add(fileName);
                return null;
            }
            try {
                // This is the first time seeing this path. Try to match it against a shim generator.
                for (var _b = tslib_1.__values(this.generators), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var record = _c.value;
                    var match = record.test.exec(fileName);
                    if (match === null) {
                        continue;
                    }
                    // The path matched. Extract the filename prefix without the extension.
                    var prefix = match[1];
                    // This _might_ be a shim, if an underlying base file exists. The base file might be .ts or
                    // .tsx.
                    var baseFileName = file_system_1.absoluteFrom(prefix + '.ts');
                    if (!this.delegate.fileExists(baseFileName)) {
                        // No .ts file by that name - try .tsx.
                        baseFileName = file_system_1.absoluteFrom(prefix + '.tsx');
                        if (!this.delegate.fileExists(baseFileName)) {
                            // This isn't a shim after all since there is no original file which would have triggered
                            // its generation, even though the path is right. There are a few reasons why this could
                            // occur:
                            //
                            // * when resolving an import to an .ngfactory.d.ts file, the module resolution algorithm
                            //   will first look for an .ngfactory.ts file in its place, which will be requested here.
                            // * when the user writes a bad import.
                            // * when a file is present in one compilation and removed in the next incremental step.
                            //
                            // Note that this does not add the filename to `notShims`, so this path is not cached.
                            // That's okay as these cases above are edge cases and do not occur regularly in normal
                            // operations.
                            return undefined;
                        }
                    }
                    // Retrieve the original file for which the shim will be generated.
                    var inputFile = this.delegate.getSourceFile(baseFileName, ts.ScriptTarget.Latest);
                    if (inputFile === undefined || expando_1.isShim(inputFile)) {
                        // Something strange happened here. This case is also not cached in `notShims`, but this
                        // path is not expected to occur in reality so this shouldn't be a problem.
                        return undefined;
                    }
                    // Actually generate and cache the shim.
                    return this.generateSpecific(fileName, record.generator, inputFile);
                }
            }
            catch (e_6_1) { e_6 = { error: e_6_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_6) throw e_6.error; }
            }
            // No generator matched.
            this.notShims.add(fileName);
            return null;
        };
        ShimAdapter.prototype.generateSpecific = function (fileName, generator, inputFile) {
            var priorShimSf = null;
            if (this.priorShims.has(fileName)) {
                // In the previous program a shim with this name already existed. It's passed to the shim
                // generator which may reuse it instead of generating a fresh shim.
                priorShimSf = this.priorShims.get(fileName);
                this.priorShims.delete(fileName);
            }
            var shimSf = generator.generateShimForFile(inputFile, fileName, priorShimSf);
            // Mark the new generated source file as a shim that originated from this generator.
            expando_1.sfExtensionData(shimSf).fileShim = {
                extension: generator.extensionPrefix,
                generatedFrom: file_system_1.absoluteFromSourceFile(inputFile),
            };
            if (!generator.shouldEmit) {
                this.ignoreForEmit.add(shimSf);
            }
            this.shims.set(fileName, shimSf);
            return shimSf;
        };
        return ShimAdapter;
    }());
    exports.ShimAdapter = ShimAdapter;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYWRhcHRlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2Mvc2hpbXMvc3JjL2FkYXB0ZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUVILCtCQUFpQztJQUVqQywyRUFBdUY7SUFDdkYsa0ZBQW9EO0lBR3BELDZFQUF3RTtJQUN4RSx1RUFBd0M7SUFReEM7Ozs7Ozs7T0FPRztJQUNIO1FBOENFLHFCQUNZLFFBQTZELEVBQ3JFLFdBQTZCLEVBQUUsa0JBQTJDLEVBQzFFLGlCQUF5QyxFQUFFLFVBQTJCOztZQUY5RCxhQUFRLEdBQVIsUUFBUSxDQUFxRDtZQTlDekU7O2VBRUc7WUFDSyxVQUFLLEdBQUcsSUFBSSxHQUFHLEVBQWlDLENBQUM7WUFFekQ7Ozs7O2VBS0c7WUFDSyxlQUFVLEdBQUcsSUFBSSxHQUFHLEVBQWlDLENBQUM7WUFFOUQ7Ozs7O2VBS0c7WUFDSyxhQUFRLEdBQUcsSUFBSSxHQUFHLEVBQWtCLENBQUM7WUFFN0M7OztlQUdHO1lBQ0ssZUFBVSxHQUF3QixFQUFFLENBQUM7WUFFN0M7O2VBRUc7WUFDTSxrQkFBYSxHQUFHLElBQUksR0FBRyxFQUFpQixDQUFDO1lBVWxEOztlQUVHO1lBQ00sc0JBQWlCLEdBQWEsRUFBRSxDQUFDOztnQkFNeEMsaUZBQWlGO2dCQUNqRixLQUFrQixJQUFBLHNCQUFBLGlCQUFBLGlCQUFpQixDQUFBLG9EQUFBLG1GQUFFO29CQUFoQyxJQUFNLEdBQUcsOEJBQUE7b0JBQ1osNkZBQTZGO29CQUM3Riw2RkFBNkY7b0JBQzdGLHNCQUFzQjtvQkFDdEIsSUFBTSxPQUFPLEdBQUcsYUFBVyxHQUFHLENBQUMsZUFBZSxXQUFRLENBQUM7b0JBQ3ZELElBQU0sTUFBTSxHQUFHLElBQUksTUFBTSxDQUFDLE9BQU8sRUFBRSxHQUFHLENBQUMsQ0FBQztv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QUUsTUFBTSxDQUFDLENBQUM7WUFDakMsT0FBTyxNQUFNLENBQUM7UUFDaEIsQ0FBQztRQUNILGtCQUFDO0lBQUQsQ0FBQyxBQTNNRCxJQTJNQztJQTNNWSxrQ0FBVyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHthYnNvbHV0ZUZyb20sIGFic29sdXRlRnJvbVNvdXJjZUZpbGUsIEFic29sdXRlRnNQYXRofSBmcm9tICcuLi8uLi9maWxlX3N5c3RlbSc7XG5pbXBvcnQge2lzRHRzUGF0aH0gZnJvbSAnLi4vLi4vdXRpbC9zcmMvdHlwZXNjcmlwdCc7XG5pbXBvcnQge1BlckZpbGVTaGltR2VuZXJhdG9yLCBUb3BMZXZlbFNoaW1HZW5lcmF0b3J9IGZyb20gJy4uL2FwaSc7XG5cbmltcG9ydCB7aXNGaWxlU2hpbVNvdXJjZUZpbGUsIGlzU2hpbSwgc2ZFeHRlbnNpb25EYXRhfSBmcm9tICcuL2V4cGFuZG8nO1xuaW1wb3J0IHttYWtlU2hpbUZpbGVOYW1lfSBmcm9tICcuL3V0aWwnO1xuXG5pbnRlcmZhY2UgU2hpbUdlbmVyYXRvckRhdGEge1xuICBnZW5lcmF0b3I6IFBlckZpbGVTaGltR2VuZXJhdG9yO1xuICB0ZXN0OiBSZWdFeHA7XG4gIHN1ZmZpeDogc3RyaW5nO1xufVxuXG4vKipcbiAqIEdlbmVyYXRlcyBhbmQgdHJhY2tzIHNoaW0gZmlsZXMgZm9yIGVhY2ggb3JpZ2luYWwgYHRzLlNvdXJjZUZpbGVgLlxuICpcbiAqIFRoZSBgU2hpbUFkYXB0ZXJgIHByb3ZpZGVzIGFuIEFQSSB0aGF0J3MgZGVzaWduZWQgdG8gYmUgdXNlZCBieSBhIGB0cy5Db21waWxlckhvc3RgXG4gKiBpbXBsZW1lbnRhdGlvbiBhbmQgYWxsb3dzIGl0IHRvIGluY2x1ZGUgc3ludGhldGljIFwic2hpbVwiIGZpbGVzIGluIHRoZSBwcm9ncmFtIHRoYXQncyBiZWluZ1xuICogY3JlYXRlZC4gSXQgd29ya3MgZm9yIGJvdGggZnJlc2hseSBjcmVhdGVkIHByb2dyYW1zIGFzIHdlbGwgYXMgd2l0aCByZXVzZSBvZiBhbiBvbGRlciBwcm9ncmFtXG4gKiAod2hpY2ggYWxyZWFkeSBtYXkgY29udGFpbiBzaGltIGZpbGVzIGFuZCB0aHVzIGhhdmUgYSBkaWZmZXJlbnQgY3JlYXRpb24gZmxvdykuXG4gKi9cbmV4cG9ydCBjbGFzcyBTaGltQWRhcHRlciB7XG4gIC8qKlxuICAgKiBBIG1hcCBvZiBzaGltIGZpbGUgbmFtZXMgdG8gdGhlIGB0cy5Tb3VyY2VGaWxlYCBnZW5lcmF0ZWQgZm9yIHRob3NlIHNoaW1zLlxuICAgKi9cbiAgcHJpdmF0ZSBzaGltcyA9IG5ldyBNYXA8QWJzb2x1dGVGc1BhdGgsIHRzLlNvdXJjZUZpbGU+KCk7XG5cbiAgLyoqXG4gICAqIEEgbWFwIG9mIHNoaW0gZmlsZSBuYW1lcyB0byBleGlzdGluZyBzaGltcyB3aGljaCB3ZXJlIHBhcnQgb2YgYSBwcmV2aW91cyBpdGVyYXRpb24gb2YgdGhpc1xuICAgKiBwcm9ncmFtLlxuICAgKlxuICAgKiBOb3QgYWxsIG9mIHRoZXNlIHNoaW1zIHdpbGwgYmUgaW5oZXJpdGVkIGludG8gdGhpcyBwcm9ncmFtLlxuICAgKi9cbiAgcHJpdmF0ZSBwcmlvclNoaW1zID0gbmV3IE1hcDxBYnNvbHV0ZUZzUGF0aCwgdHMuU291cmNlRmlsZT4oKTtcblxuICAvKipcbiAgICogRmlsZSBuYW1lcyB3aGljaCBhcmUgYWxyZWFkeSBrbm93biB0byBub3QgYmUgc2hpbXMuXG4gICAqXG4gICAqIFRoaXMgYWxsb3dzIGZvciBzaG9ydC1jaXJjdWl0IHJldHVybnMgd2l0aG91dCB0aGUgZXhwZW5zZSBvZiBydW5uaW5nIHJlZ3VsYXIgZXhwcmVzc2lvbnNcbiAgICogYWdhaW5zdCB0aGUgZmlsZW5hbWUgcmVwZWF0ZWRseS5cbiAgICovXG4gIHByaXZhdGUgbm90U2hpbXMgPSBuZXcgU2V0PEFic29sdXRlRnNQYXRoPigpO1xuXG4gIC8qKlxuICAgKiBUaGUgc2hpbSBnZW5lcmF0b3JzIHN1cHBvcnRlZCBieSB0aGlzIGFkYXB0ZXIgYXMgd2VsbCBhcyBleHRyYSBwcmVjYWxjdWxhdGVkIGRhdGEgZmFjaWxpdGF0aW5nXG4gICAqIHRoZWlyIHVzZS5cbiAgICovXG4gIHByaXZhdGUgZ2VuZXJhdG9yczogU2hpbUdlbmVyYXRvckRhdGFbXSA9IFtdO1xuXG4gIC8qKlxuICAgKiBBIGBTZXRgIG9mIHNoaW0gYHRzLlNvdXJjZUZpbGVgcyB3aGljaCBzaG91bGQgbm90IGJlIGVtaXR0ZWQuXG4gICAqL1xuICByZWFkb25seSBpZ25vcmVGb3JFbWl0ID0gbmV3IFNldDx0cy5Tb3VyY2VGaWxlPigpO1xuXG4gIC8qKlxuICAgKiBBIGxpc3Qgb2YgZXh0cmEgZmlsZW5hbWVzIHdoaWNoIHNob3VsZCBiZSBjb25zaWRlcmVkIGlucHV0cyB0byBwcm9ncmFtIGNyZWF0aW9uLlxuICAgKlxuICAgKiBUaGlzIGluY2x1ZGVzIGFueSB0b3AtbGV2ZWwgc2hpbXMgZ2VuZXJhdGVkIGZvciB0aGUgcHJvZ3JhbSwgYXMgd2VsbCBhcyBwZXItZmlsZSBzaGltIG5hbWVzIGZvclxuICAgKiB0aG9zZSBmaWxlcyB3aGljaCBhcmUgaW5jbHVkZWQgaW4gdGhlIHJvb3QgZmlsZXMgb2YgdGhlIHByb2dyYW0uXG4gICAqL1xuICByZWFkb25seSBleHRyYUlucHV0RmlsZXM6IFJlYWRvbmx5QXJyYXk8QWJzb2x1dGVGc1BhdGg+O1xuXG4gIC8qKlxuICAgKiBFeHRlbnNpb24gcHJlZml4ZXMgb2YgYWxsIGluc3RhbGxlZCBwZXItZmlsZSBzaGltcy5cbiAgICovXG4gIHJlYWRvbmx5IGV4dGVuc2lvblByZWZpeGVzOiBzdHJpbmdbXSA9IFtdO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSBkZWxlZ2F0ZTogUGljazx0cy5Db21waWxlckhvc3QsICdnZXRTb3VyY2VGaWxlJ3wnZmlsZUV4aXN0cyc+LFxuICAgICAgdHNSb290RmlsZXM6IEFic29sdXRlRnNQYXRoW10sIHRvcExldmVsR2VuZXJhdG9yczogVG9wTGV2ZWxTaGltR2VuZXJhdG9yW10sXG4gICAgICBwZXJGaWxlR2VuZXJhdG9yczogUGVyRmlsZVNoaW1HZW5lcmF0b3JbXSwgb2xkUHJvZ3JhbTogdHMuUHJvZ3JhbXxudWxsKSB7XG4gICAgLy8gSW5pdGlhbGl6ZSBgdGhpcy5nZW5lcmF0b3JzYCB3aXRoIGEgcmVnZXggdGhhdCBtYXRjaGVzIGVhY2ggZ2VuZXJhdG9yJ3MgcGF0aHMuXG4gICAgZm9yIChjb25zdCBnZW4gb2YgcGVyRmlsZUdlbmVyYXRvcnMpIHtcbiAgICAgIC8vIFRoaXMgcmVnZXggbWF0Y2hlcyBwYXRocyBmb3Igc2hpbXMgZnJvbSB0aGlzIGdlbmVyYXRvci4gVGhlIGZpcnN0IChhbmQgb25seSkgY2FwdHVyZSBncm91cFxuICAgICAgLy8gZXh0cmFjdHMgdGhlIGZpbGVuYW1lIHByZWZpeCwgd2hpY2ggY2FuIGJlIHVzZWQgdG8gZmluZCB0aGUgb3JpZ2luYWwgZmlsZSB0aGF0IHdhcyB1c2VkIHRvXG4gICAgICAvLyBnZW5lcmF0ZSB0aGlzIHNoaW0uXG4gICAgICBjb25zdCBwYXR0ZXJuID0gYF4oLiopXFxcXC4ke2dlbi5leHRlbnNpb25QcmVmaXh9XFxcXC50cyRgO1xuICAgICAgY29uc3QgcmVnZXhwID0gbmV3IFJlZ0V4cChwYXR0ZXJuLCAnaScpO1xuICAgICAgdGhpcy5nZW5lcmF0b3JzLnB1c2goe1xuICAgICAgICBnZW5lcmF0b3I6IGdlbixcbiAgICAgICAgdGVzdDogcmVnZXhwLFxuICAgICAgICBzdWZmaXg6IGAuJHtnZW4uZXh0ZW5zaW9uUHJlZml4fS50c2AsXG4gICAgICB9KTtcbiAgICAgIHRoaXMuZXh0ZW5zaW9uUHJlZml4ZXMucHVzaChnZW4uZXh0ZW5zaW9uUHJlZml4KTtcbiAgICB9XG4gICAgLy8gUHJvY2VzcyB0b3AtbGV2ZWwgZ2VuZXJhdG9ycyBhbmQgcHJlLWdlbmVyYXRlIHRoZWlyIHNoaW1zLiBBY2N1bXVsYXRlIHRoZSBsaXN0IG9mIGZpbGVuYW1lc1xuICAgIC8vIGFzIGV4dHJhIGlucHV0IGZpbGVzLlxuICAgIGNvbnN0IGV4dHJhSW5wdXRGaWxlczogQWJzb2x1dGVGc1BhdGhbXSA9IFtdO1xuXG4gICAgZm9yIChjb25zdCBnZW4gb2YgdG9wTGV2ZWxHZW5lcmF0b3JzKSB7XG4gICAgICBjb25zdCBzZiA9IGdlbi5tYWtlVG9wTGV2ZWxTaGltKCk7XG4gICAgICBzZkV4dGVuc2lvbkRhdGEoc2YpLmlzVG9wTGV2ZWxTaGltID0gdHJ1ZTtcblxuICAgICAgaWYgKCFnZW4uc2hvdWxkRW1pdCkge1xuICAgICAgICB0aGlzLmlnbm9yZUZvckVtaXQuYWRkKHNmKTtcbiAgICAgIH1cblxuICAgICAgY29uc3QgZmlsZU5hbWUgPSBhYnNvbHV0ZUZyb21Tb3VyY2VGaWxlKHNmKTtcbiAgICAgIHRoaXMuc2hpbXMuc2V0KGZpbGVOYW1lLCBzZik7XG4gICAgICBleHRyYUlucHV0RmlsZXMucHVzaChmaWxlTmFtZSk7XG4gICAgfVxuXG4gICAgLy8gQWRkIHRvIHRoYXQgbGlzdCB0aGUgcGVyLWZpbGUgc2hpbXMgYXNzb2NpYXRlZCB3aXRoIGVhY2ggcm9vdCBmaWxlLiBUaGlzIGlzIG5lZWRlZCBiZWNhdXNlXG4gICAgLy8gcmVmZXJlbmNlIHRhZ2dpbmcgYWxvbmUgbWF5IG5vdCB3b3JrIGluIFRTIGNvbXBpbGF0aW9ucyB0aGF0IGhhdmUgYG5vUmVzb2x2ZWAgc2V0LiBTdWNoXG4gICAgLy8gY29tcGlsYXRpb25zIHJlbHkgb24gdGhlIGxpc3Qgb2YgaW5wdXQgZmlsZXMgY29tcGxldGVseSBkZXNjcmliaW5nIHRoZSBwcm9ncmFtLlxuICAgIGZvciAoY29uc3Qgcm9vdEZpbGUgb2YgdHNSb290RmlsZXMpIHtcbiAgICAgIGZvciAoY29uc3QgZ2VuIG9mIHRoaXMuZ2VuZXJhdG9ycykge1xuICAgICAgICBleHRyYUlucHV0RmlsZXMucHVzaChtYWtlU2hpbUZpbGVOYW1lKHJvb3RGaWxlLCBnZW4uc3VmZml4KSk7XG4gICAgICB9XG4gICAgfVxuXG4gICAgdGhpcy5leHRyYUlucHV0RmlsZXMgPSBleHRyYUlucHV0RmlsZXM7XG5cbiAgICAvLyBJZiBhbiBvbGQgcHJvZ3JhbSBpcyBwcmVzZW50LCBleHRyYWN0IGFsbCBwZXItZmlsZSBzaGltcyBpbnRvIGEgbWFwLCB3aGljaCB3aWxsIGJlIHVzZWQgdG9cbiAgICAvLyBnZW5lcmF0ZSBuZXcgdmVyc2lvbnMgb2YgdGhvc2Ugc2hpbXMuXG4gICAgaWYgKG9sZFByb2dyYW0gIT09IG51bGwpIHtcbiAgICAgIGZvciAoY29uc3Qgb2xkU2Ygb2Ygb2xkUHJvZ3JhbS5nZXRTb3VyY2VGaWxlcygpKSB7XG4gICAgICAgIGlmIChvbGRTZi5pc0RlY2xhcmF0aW9uRmlsZSB8fCAhaXNGaWxlU2hpbVNvdXJjZUZpbGUob2xkU2YpKSB7XG4gICAgICAgICAgY29udGludWU7XG4gICAgICAgIH1cblxuICAgICAgICB0aGlzLnByaW9yU2hpbXMuc2V0KGFic29sdXRlRnJvbVNvdXJjZUZpbGUob2xkU2YpLCBvbGRTZik7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIFByb2R1Y2UgYSBzaGltIGB0cy5Tb3VyY2VGaWxlYCBpZiBgZmlsZU5hbWVgIHJlZmVycyB0byBhIHNoaW0gZmlsZSB3aGljaCBzaG91bGQgZXhpc3QgaW4gdGhlXG4gICAqIHByb2dyYW0uXG4gICAqXG4gICAqIElmIGBmaWxlTmFtZWAgZG9lcyBub3QgcmVmZXIgdG8gYSBwb3RlbnRpYWwgc2hpbSBmaWxlLCBgbnVsbGAgaXMgcmV0dXJuZWQuIElmIGEgY29ycmVzcG9uZGluZ1xuICAgKiBiYXNlIGZpbGUgY291bGQgbm90IGJlIGRldGVybWluZWQsIGB1bmRlZmluZWRgIGlzIHJldHVybmVkIGluc3RlYWQuXG4gICAqL1xuICBtYXliZUdlbmVyYXRlKGZpbGVOYW1lOiBBYnNvbHV0ZUZzUGF0aCk6IHRzLlNvdXJjZUZpbGV8bnVsbHx1bmRlZmluZWQge1xuICAgIC8vIEZhc3QgcGF0aDogZWl0aGVyIHRoaXMgZmlsZW5hbWUgaGFzIGJlZW4gcHJvdmVuIG5vdCB0byBiZSBhIHNoaW0gYmVmb3JlLCBvciBpdCBpcyBhIGtub3duXG4gICAgLy8gc2hpbSBhbmQgbm8gZ2VuZXJhdGlvbiBpcyByZXF1aXJlZC5cbiAgICBpZiAodGhpcy5ub3RTaGltcy5oYXMoZmlsZU5hbWUpKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9IGVsc2UgaWYgKHRoaXMuc2hpbXMuaGFzKGZpbGVOYW1lKSkge1xuICAgICAgcmV0dXJuIHRoaXMuc2hpbXMuZ2V0KGZpbGVOYW1lKSE7XG4gICAgfVxuXG4gICAgLy8gLmQudHMgZmlsZXMgY2FuJ3QgYmUgc2hpbXMuXG4gICAgaWYgKGlzRHRzUGF0aChmaWxlTmFtZSkpIHtcbiAgICAgIHRoaXMubm90U2hpbXMuYWRkKGZpbGVOYW1lKTtcbiAgICAgIHJldHVybiBudWxsO1xuICAgIH1cblxuICAgIC8vIFRoaXMgaXMgdGhlIGZpcnN0IHRpbWUgc2VlaW5nIHRoaXMgcGF0aC4gVHJ5IHRvIG1hdGNoIGl0IGFnYWluc3QgYSBzaGltIGdlbmVyYXRvci5cbiAgICBmb3IgKGNvbnN0IHJlY29yZCBvZiB0aGlzLmdlbmVyYXRvcnMpIHtcbiAgICAgIGNvbnN0IG1hdGNoID0gcmVjb3JkLnRlc3QuZXhlYyhmaWxlTmFtZSk7XG4gICAgICBpZiAobWF0Y2ggPT09IG51bGwpIHtcbiAgICAgICAgY29udGludWU7XG4gICAgICB9XG5cbiAgICAgIC8vIFRoZSBwYXRoIG1hdGNoZWQuIEV4dHJhY3QgdGhlIGZpbGVuYW1lIHByZWZpeCB3aXRob3V0IHRoZSBleHRlbnNpb24uXG4gICAgICBjb25zdCBwcmVmaXggPSBtYXRjaFsxXTtcbiAgICAgIC8vIFRoaXMgX21pZ2h0XyBiZSBhIHNoaW0sIGlmIGFuIHVuZGVybHlpbmcgYmFzZSBmaWxlIGV4aXN0cy4gVGhlIGJhc2UgZmlsZSBtaWdodCBiZSAudHMgb3JcbiAgICAgIC8vIC50c3guXG4gICAgICBsZXQgYmFzZUZpbGVOYW1lID0gYWJzb2x1dGVGcm9tKHByZWZpeCArICcudHMnKTtcbiAgICAgIGlmICghdGhpcy5kZWxlZ2F0ZS5maWxlRXhpc3RzKGJhc2VGaWxlTmFtZSkpIHtcbiAgICAgICAgLy8gTm8gLnRzIGZpbGUgYnkgdGhhdCBuYW1lIC0gdHJ5IC50c3guXG4gICAgICAgIGJhc2VGaWxlTmFtZSA9IGFic29sdXRlRnJvbShwcmVmaXggKyAnLnRzeCcpO1xuICAgICAgICBpZiAoIXRoaXMuZGVsZWdhdGUuZmlsZUV4aXN0cyhiYXNlRmlsZU5hbWUpKSB7XG4gICAgICAgICAgLy8gVGhpcyBpc24ndCBhIHNoaW0gYWZ0ZXIgYWxsIHNpbmNlIHRoZXJlIGlzIG5vIG9yaWdpbmFsIGZpbGUgd2hpY2ggd291bGQgaGF2ZSB0cmlnZ2VyZWRcbiAgICAgICAgICAvLyBpdHMgZ2VuZXJhdGlvbiwgZXZlbiB0aG91Z2ggdGhlIHBhdGggaXMgcmlnaHQuIFRoZXJlIGFyZSBhIGZldyByZWFzb25zIHdoeSB0aGlzIGNvdWxkXG4gICAgICAgICAgLy8gb2NjdXI6XG4gICAgICAgICAgLy9cbiAgICAgICAgICAvLyAqIHdoZW4gcmVzb2x2aW5nIGFuIGltcG9ydCB0byBhbiAubmdmYWN0b3J5LmQudHMgZmlsZSwgdGhlIG1vZHVsZSByZXNvbHV0aW9uIGFsZ29yaXRobVxuICAgICAgICAgIC8vICAgd2lsbCBmaXJzdCBsb29rIGZvciBhbiAubmdmYWN0b3J5LnRzIGZpbGUgaW4gaXRzIHBsYWNlLCB3aGljaCB3aWxsIGJlIHJlcXVlc3RlZCBoZXJlLlxuICAgICAgICAgIC8vICogd2hlbiB0aGUgdXNlciB3cml0ZXMgYSBiYWQgaW1wb3J0LlxuICAgICAgICAgIC8vICogd2hlbiBhIGZpbGUgaXMgcHJlc2VudCBpbiBvbmUgY29tcGlsYXRpb24gYW5kIHJlbW92ZWQgaW4gdGhlIG5leHQgaW5jcmVtZW50YWwgc3RlcC5cbiAgICAgICAgICAvL1xuICAgICAgICAgIC8vIE5vdGUgdGhhdCB0aGlzIGRvZXMgbm90IGFkZCB0aGUgZmlsZW5hbWUgdG8gYG5vdFNoaW1zYCwgc28gdGhpcyBwYXRoIGlzIG5vdCBjYWNoZWQuXG4gICAgICAgICAgLy8gVGhhdCdzIG9rYXkgYXMgdGhlc2UgY2FzZXMgYWJvdmUgYXJlIGVkZ2UgY2FzZXMgYW5kIGRvIG5vdCBvY2N1ciByZWd1bGFybHkgaW4gbm9ybWFsXG4gICAgICAgICAgLy8gb3BlcmF0aW9ucy5cbiAgICAgICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIC8vIFJldHJpZXZlIHRoZSBvcmlnaW5hbCBmaWxlIGZvciB3aGljaCB0aGUgc2hpbSB3aWxsIGJlIGdlbmVyYXRlZC5cbiAgICAgIGNvbnN0IGlucHV0RmlsZSA9IHRoaXMuZGVsZWdhdGUuZ2V0U291cmNlRmlsZShiYXNlRmlsZU5hbWUsIHRzLlNjcmlwdFRhcmdldC5MYXRlc3QpO1xuICAgICAgaWYgKGlucHV0RmlsZSA9PT0gdW5kZWZpbmVkIHx8IGlzU2hpbShpbnB1dEZpbGUpKSB7XG4gICAgICAgIC8vIFNvbWV0aGluZyBzdHJhbmdlIGhhcHBlbmVkIGhlcmUuIFRoaXMgY2FzZSBpcyBhbHNvIG5vdCBjYWNoZWQgaW4gYG5vdFNoaW1zYCwgYnV0IHRoaXNcbiAgICAgICAgLy8gcGF0aCBpcyBub3QgZXhwZWN0ZWQgdG8gb2NjdXIgaW4gcmVhbGl0eSBzbyB0aGlzIHNob3VsZG4ndCBiZSBhIHByb2JsZW0uXG4gICAgICAgIHJldHVybiB1bmRlZmluZWQ7XG4gICAgICB9XG5cbiAgICAgIC8vIEFjdHVhbGx5IGdlbmVyYXRlIGFuZCBjYWNoZSB0aGUgc2hpbS5cbiAgICAgIHJldHVybiB0aGlzLmdlbmVyYXRlU3BlY2lmaWMoZmlsZU5hbWUsIHJlY29yZC5nZW5lcmF0b3IsIGlucHV0RmlsZSk7XG4gICAgfVxuXG4gICAgLy8gTm8gZ2VuZXJhdG9yIG1hdGNoZWQuXG4gICAgdGhpcy5ub3RTaGltcy5hZGQoZmlsZU5hbWUpO1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgcHJpdmF0ZSBnZW5lcmF0ZVNwZWNpZmljKFxuICAgICAgZmlsZU5hbWU6IEFic29sdXRlRnNQYXRoLCBnZW5lcmF0b3I6IFBlckZpbGVTaGltR2VuZXJhdG9yLFxuICAgICAgaW5wdXRGaWxlOiB0cy5Tb3VyY2VGaWxlKTogdHMuU291cmNlRmlsZSB7XG4gICAgbGV0IHByaW9yU2hpbVNmOiB0cy5Tb3VyY2VGaWxlfG51bGwgPSBudWxsO1xuICAgIGlmICh0aGlzLnByaW9yU2hpbXMuaGFzKGZpbGVOYW1lKSkge1xuICAgICAgLy8gSW4gdGhlIHByZXZpb3VzIHByb2dyYW0gYSBzaGltIHdpdGggdGhpcyBuYW1lIGFscmVhZHkgZXhpc3RlZC4gSXQncyBwYXNzZWQgdG8gdGhlIHNoaW1cbiAgICAgIC8vIGdlbmVyYXRvciB3aGljaCBtYXkgcmV1c2UgaXQgaW5zdGVhZCBvZiBnZW5lcmF0aW5nIGEgZnJlc2ggc2hpbS5cblxuICAgICAgcHJpb3JTaGltU2YgPSB0aGlzLnByaW9yU2hpbXMuZ2V0KGZpbGVOYW1lKSE7XG4gICAgICB0aGlzLnByaW9yU2hpbXMuZGVsZXRlKGZpbGVOYW1lKTtcbiAgICB9XG5cbiAgICBjb25zdCBzaGltU2YgPSBnZW5lcmF0b3IuZ2VuZXJhdGVTaGltRm9yRmlsZShpbnB1dEZpbGUsIGZpbGVOYW1lLCBwcmlvclNoaW1TZik7XG5cbiAgICAvLyBNYXJrIHRoZSBuZXcgZ2VuZXJhdGVkIHNvdXJjZSBmaWxlIGFzIGEgc2hpbSB0aGF0IG9yaWdpbmF0ZWQgZnJvbSB0aGlzIGdlbmVyYXRvci5cbiAgICBzZkV4dGVuc2lvbkRhdGEoc2hpbVNmKS5maWxlU2hpbSA9IHtcbiAgICAgIGV4dGVuc2lvbjogZ2VuZXJhdG9yLmV4dGVuc2lvblByZWZpeCxcbiAgICAgIGdlbmVyYXRlZEZyb206IGFic29sdXRlRnJvbVNvdXJjZUZpbGUoaW5wdXRGaWxlKSxcbiAgICB9O1xuXG4gICAgaWYgKCFnZW5lcmF0b3Iuc2hvdWxkRW1pdCkge1xuICAgICAgdGhpcy5pZ25vcmVGb3JFbWl0LmFkZChzaGltU2YpO1xuICAgIH1cblxuICAgIHRoaXMuc2hpbXMuc2V0KGZpbGVOYW1lLCBzaGltU2YpO1xuICAgIHJldHVybiBzaGltU2Y7XG4gIH1cbn1cbiJdfQ==