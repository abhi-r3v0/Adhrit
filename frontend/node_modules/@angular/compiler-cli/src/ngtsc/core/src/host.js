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
        define("@angular/compiler-cli/src/ngtsc/core/src/host", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/ngtsc/diagnostics", "@angular/compiler-cli/src/ngtsc/entry_point", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/src/ngtsc/shims", "@angular/compiler-cli/src/ngtsc/typecheck", "@angular/compiler-cli/src/ngtsc/util/src/path", "@angular/compiler-cli/src/ngtsc/util/src/typescript"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.NgCompilerHost = exports.DelegatingCompilerHost = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    var diagnostics_1 = require("@angular/compiler-cli/src/ngtsc/diagnostics");
    var entry_point_1 = require("@angular/compiler-cli/src/ngtsc/entry_point");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var shims_1 = require("@angular/compiler-cli/src/ngtsc/shims");
    var typecheck_1 = require("@angular/compiler-cli/src/ngtsc/typecheck");
    var path_1 = require("@angular/compiler-cli/src/ngtsc/util/src/path");
    var typescript_1 = require("@angular/compiler-cli/src/ngtsc/util/src/typescript");
    /**
     * Delegates all methods of `ExtendedTsCompilerHost` to a delegate, with the exception of
     * `getSourceFile` and `fileExists` which are implemented in `NgCompilerHost`.
     *
     * If a new method is added to `ts.CompilerHost` which is not delegated, a type error will be
     * generated for this class.
     */
    var DelegatingCompilerHost = /** @class */ (function () {
        function DelegatingCompilerHost(delegate) {
            this.delegate = delegate;
            // Excluded are 'getSourceFile' and 'fileExists', which are actually implemented by NgCompilerHost
            // below.
            this.createHash = this.delegateMethod('createHash');
            this.directoryExists = this.delegateMethod('directoryExists');
            this.fileNameToModuleName = this.delegateMethod('fileNameToModuleName');
            this.getCancellationToken = this.delegateMethod('getCancellationToken');
            this.getCanonicalFileName = this.delegateMethod('getCanonicalFileName');
            this.getCurrentDirectory = this.delegateMethod('getCurrentDirectory');
            this.getDefaultLibFileName = this.delegateMethod('getDefaultLibFileName');
            this.getDefaultLibLocation = this.delegateMethod('getDefaultLibLocation');
            this.getDirectories = this.delegateMethod('getDirectories');
            this.getEnvironmentVariable = this.delegateMethod('getEnvironmentVariable');
            this.getModifiedResourceFiles = this.delegateMethod('getModifiedResourceFiles');
            this.getNewLine = this.delegateMethod('getNewLine');
            this.getParsedCommandLine = this.delegateMethod('getParsedCommandLine');
            this.getSourceFileByPath = this.delegateMethod('getSourceFileByPath');
            this.readDirectory = this.delegateMethod('readDirectory');
            this.readFile = this.delegateMethod('readFile');
            this.readResource = this.delegateMethod('readResource');
            this.realpath = this.delegateMethod('realpath');
            this.resolveModuleNames = this.delegateMethod('resolveModuleNames');
            this.resolveTypeReferenceDirectives = this.delegateMethod('resolveTypeReferenceDirectives');
            this.resourceNameToFileName = this.delegateMethod('resourceNameToFileName');
            this.trace = this.delegateMethod('trace');
            this.useCaseSensitiveFileNames = this.delegateMethod('useCaseSensitiveFileNames');
            this.writeFile = this.delegateMethod('writeFile');
        }
        DelegatingCompilerHost.prototype.delegateMethod = function (name) {
            return this.delegate[name] !== undefined ? this.delegate[name].bind(this.delegate) :
                undefined;
        };
        return DelegatingCompilerHost;
    }());
    exports.DelegatingCompilerHost = DelegatingCompilerHost;
    /**
     * A wrapper around `ts.CompilerHost` (plus any extension methods from `ExtendedTsCompilerHost`).
     *
     * In order for a consumer to include Angular compilation in their TypeScript compiler, the
     * `ts.Program` must be created with a host that adds Angular-specific files (e.g. factories,
     * summaries, the template type-checking file, etc) to the compilation. `NgCompilerHost` is the
     * host implementation which supports this.
     *
     * The interface implementations here ensure that `NgCompilerHost` fully delegates to
     * `ExtendedTsCompilerHost` methods whenever present.
     */
    var NgCompilerHost = /** @class */ (function (_super) {
        tslib_1.__extends(NgCompilerHost, _super);
        function NgCompilerHost(delegate, inputFiles, rootDirs, shimAdapter, shimTagger, entryPoint, factoryTracker, diagnostics) {
            var _this = _super.call(this, delegate) || this;
            _this.shimAdapter = shimAdapter;
            _this.shimTagger = shimTagger;
            _this.factoryTracker = null;
            _this.entryPoint = null;
            _this.factoryTracker = factoryTracker;
            _this.entryPoint = entryPoint;
            _this.constructionDiagnostics = diagnostics;
            _this.inputFiles = tslib_1.__spread(inputFiles, shimAdapter.extraInputFiles);
            _this.rootDirs = rootDirs;
            return _this;
        }
        Object.defineProperty(NgCompilerHost.prototype, "ignoreForEmit", {
            /**
             * Retrieves a set of `ts.SourceFile`s which should not be emitted as JS files.
             *
             * Available after this host is used to create a `ts.Program` (which causes all the files in the
             * program to be enumerated).
             */
            get: function () {
                return this.shimAdapter.ignoreForEmit;
            },
            enumerable: false,
            configurable: true
        });
        Object.defineProperty(NgCompilerHost.prototype, "shimExtensionPrefixes", {
            /**
             * Retrieve the array of shim extension prefixes for which shims were created for each original
             * file.
             */
            get: function () {
                return this.shimAdapter.extensionPrefixes;
            },
            enumerable: false,
            configurable: true
        });
        /**
         * Performs cleanup that needs to happen after a `ts.Program` has been created using this host.
         */
        NgCompilerHost.prototype.postProgramCreationCleanup = function () {
            this.shimTagger.finalize();
        };
        /**
         * Create an `NgCompilerHost` from a delegate host, an array of input filenames, and the full set
         * of TypeScript and Angular compiler options.
         */
        NgCompilerHost.wrap = function (delegate, inputFiles, options, oldProgram) {
            var e_1, _a;
            // TODO(alxhub): remove the fallback to allowEmptyCodegenFiles after verifying that the rest of
            // our build tooling is no longer relying on it.
            var allowEmptyCodegenFiles = options.allowEmptyCodegenFiles || false;
            var shouldGenerateFactoryShims = options.generateNgFactoryShims !== undefined ?
                options.generateNgFactoryShims :
                allowEmptyCodegenFiles;
            var shouldGenerateSummaryShims = options.generateNgSummaryShims !== undefined ?
                options.generateNgSummaryShims :
                allowEmptyCodegenFiles;
            var topLevelShimGenerators = [];
            var perFileShimGenerators = [];
            if (shouldGenerateSummaryShims) {
                // Summary generation.
                perFileShimGenerators.push(new shims_1.SummaryGenerator());
            }
            var factoryTracker = null;
            if (shouldGenerateFactoryShims) {
                var factoryGenerator = new shims_1.FactoryGenerator();
                perFileShimGenerators.push(factoryGenerator);
                factoryTracker = factoryGenerator;
            }
            var rootDirs = typescript_1.getRootDirs(delegate, options);
            perFileShimGenerators.push(new typecheck_1.TypeCheckShimGenerator());
            var diagnostics = [];
            var normalizedTsInputFiles = [];
            try {
                for (var inputFiles_1 = tslib_1.__values(inputFiles), inputFiles_1_1 = inputFiles_1.next(); !inputFiles_1_1.done; inputFiles_1_1 = inputFiles_1.next()) {
                    var inputFile = inputFiles_1_1.value;
                    if (!typescript_1.isNonDeclarationTsPath(inputFile)) {
                        continue;
                    }
                    normalizedTsInputFiles.push(file_system_1.resolve(inputFile));
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (inputFiles_1_1 && !inputFiles_1_1.done && (_a = inputFiles_1.return)) _a.call(inputFiles_1);
                }
                finally { if (e_1) throw e_1.error; }
            }
            var entryPoint = null;
            if (options.flatModuleOutFile != null && options.flatModuleOutFile !== '') {
                entryPoint = entry_point_1.findFlatIndexEntryPoint(normalizedTsInputFiles);
                if (entryPoint === null) {
                    // This error message talks specifically about having a single .ts file in "files". However
                    // the actual logic is a bit more permissive. If a single file exists, that will be taken,
                    // otherwise the highest level (shortest path) "index.ts" file will be used as the flat
                    // module entry point instead. If neither of these conditions apply, the error below is
                    // given.
                    //
                    // The user is not informed about the "index.ts" option as this behavior is deprecated -
                    // an explicit entrypoint should always be specified.
                    diagnostics.push({
                        category: ts.DiagnosticCategory.Error,
                        code: diagnostics_1.ngErrorCode(diagnostics_1.ErrorCode.CONFIG_FLAT_MODULE_NO_INDEX),
                        file: undefined,
                        start: undefined,
                        length: undefined,
                        messageText: 'Angular compiler option "flatModuleOutFile" requires one and only one .ts file in the "files" field.',
                    });
                }
                else {
                    var flatModuleId = options.flatModuleId || null;
                    var flatModuleOutFile = path_1.normalizeSeparators(options.flatModuleOutFile);
                    var flatIndexGenerator = new entry_point_1.FlatIndexGenerator(entryPoint, flatModuleOutFile, flatModuleId);
                    topLevelShimGenerators.push(flatIndexGenerator);
                }
            }
            var shimAdapter = new shims_1.ShimAdapter(delegate, normalizedTsInputFiles, topLevelShimGenerators, perFileShimGenerators, oldProgram);
            var shimTagger = new shims_1.ShimReferenceTagger(perFileShimGenerators.map(function (gen) { return gen.extensionPrefix; }));
            return new NgCompilerHost(delegate, inputFiles, rootDirs, shimAdapter, shimTagger, entryPoint, factoryTracker, diagnostics);
        };
        /**
         * Check whether the given `ts.SourceFile` is a shim file.
         *
         * If this returns false, the file is user-provided.
         */
        NgCompilerHost.prototype.isShim = function (sf) {
            return shims_1.isShim(sf);
        };
        NgCompilerHost.prototype.getSourceFile = function (fileName, languageVersion, onError, shouldCreateNewSourceFile) {
            // Is this a previously known shim?
            var shimSf = this.shimAdapter.maybeGenerate(file_system_1.resolve(fileName));
            if (shimSf !== null) {
                // Yes, so return it.
                return shimSf;
            }
            // No, so it's a file which might need shims (or a file which doesn't exist).
            var sf = this.delegate.getSourceFile(fileName, languageVersion, onError, shouldCreateNewSourceFile);
            if (sf === undefined) {
                return undefined;
            }
            this.shimTagger.tag(sf);
            return sf;
        };
        NgCompilerHost.prototype.fileExists = function (fileName) {
            // Consider the file as existing whenever
            //  1) it really does exist in the delegate host, or
            //  2) at least one of the shim generators recognizes it
            // Note that we can pass the file name as branded absolute fs path because TypeScript
            // internally only passes POSIX-like paths.
            //
            // Also note that the `maybeGenerate` check below checks for both `null` and `undefined`.
            return this.delegate.fileExists(fileName) ||
                this.shimAdapter.maybeGenerate(file_system_1.resolve(fileName)) != null;
        };
        Object.defineProperty(NgCompilerHost.prototype, "unifiedModulesHost", {
            get: function () {
                return this.fileNameToModuleName !== undefined ? this : null;
            },
            enumerable: false,
            configurable: true
        });
        return NgCompilerHost;
    }(DelegatingCompilerHost));
    exports.NgCompilerHost = NgCompilerHost;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaG9zdC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvY29yZS9zcmMvaG9zdC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBRUgsK0JBQWlDO0lBRWpDLDJFQUF5RDtJQUN6RCwyRUFBOEU7SUFDOUUsMkVBQTBEO0lBQzFELCtEQUF5RztJQUV6Ryx1RUFBdUQ7SUFDdkQsc0VBQXdEO0lBQ3hELGtGQUF5RjtJQWlCekY7Ozs7OztPQU1HO0lBQ0g7UUFFRSxnQ0FBc0IsUUFBZ0M7WUFBaEMsYUFBUSxHQUFSLFFBQVEsQ0FBd0I7WUFRdEQsa0dBQWtHO1lBQ2xHLFNBQVM7WUFDVCxlQUFVLEdBQUcsSUFBSSxDQUFDLGNBQWMsQ0FBQyxZQUFZLENBQUMsQ0FBQztZQUMvQyxvQkFBZSxHQUFHLElBQUksQ0FBQyxjQUFjLENBQUMsaUJBQWlCLENBQUMsQ0FBQztZQUN6RCx5QkFBb0IsR0FBRyxJQUFJLENBQUMsY0FBYyxDQUFDLHNCQUFzQixDQUFDLENBQUM7WUFDbkUseUJBQW9CLEdBQUcsSUFBSSxDQUFDLGNBQWMsQ0FBQyxzQkFBc0IsQ0FBQyxDQUFDO1lBQ25FLHlCQUFvQixHQUFHLElBQUksQ0FBQyxjQUFjLENBQUMsc0JBQXNCLENBQUMsQ0FBQztZQUNuRSx3QkFBbUIsR0FBRyxJQUFJLENBQUMsY0FBYyxDQUFDLHFCQUFxQixDQUFDLENBQUM7WUFDakUsMEJBQXFCLEdBQUcsSUFBSSxDQUFDLGNBQWMsQ0FBQyx1QkFBdUIsQ0FBQyxDQUFDO1lBQ3JFLDBCQUFxQixHQUFHLElBQUksQ0FBQyxjQUFjLENBQUMsdUJBQXVCLENBQUMsQ0FBQztZQUNyRSxtQkFBYyxHQUFHLElBQUksQ0FBQyxjQUFjLENBQUMsZ0JBQWdCLENBQUMsQ0FBQztZQUN2RCwyQkFBc0IsR0FBRyxJQUFJLENBQUMsY0FB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O2dCQUNwQixPQUFPLFNBQVMsQ0FBQzthQUNsQjtZQUVELElBQUksQ0FBQyxVQUFVLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxDQUFDO1lBQ3hCLE9BQU8sRUFBRSxDQUFDO1FBQ1osQ0FBQztRQUVELG1DQUFVLEdBQVYsVUFBVyxRQUFnQjtZQUN6Qix5Q0FBeUM7WUFDekMsb0RBQW9EO1lBQ3BELHdEQUF3RDtZQUN4RCxxRkFBcUY7WUFDckYsMkNBQTJDO1lBQzNDLEVBQUU7WUFDRix5RkFBeUY7WUFDekYsT0FBTyxJQUFJLENBQUMsUUFBUSxDQUFDLFVBQVUsQ0FBQyxRQUFRLENBQUM7Z0JBQ3JDLElBQUksQ0FBQyxXQUFXLENBQUMsYUFBYSxDQUFDLHFCQUFPLENBQUMsUUFBUSxDQUFDLENBQUMsSUFBSSxJQUFJLENBQUM7UUFDaEUsQ0FBQztRQUVELHNCQUFJLDhDQUFrQjtpQkFBdEI7Z0JBQ0UsT0FBTyxJQUFJLENBQUMsb0JBQW9CLEtBQUssU0FBUyxDQUFDLENBQUMsQ0FBQyxJQUEwQixDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUM7WUFDckYsQ0FBQzs7O1dBQUE7UUFDSCxxQkFBQztJQUFELENBQUMsQUF4TEQsQ0FBb0Msc0JBQXNCLEdBd0x6RDtJQXhMWSx3Q0FBYyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtFcnJvckNvZGUsIG5nRXJyb3JDb2RlfSBmcm9tICcuLi8uLi9kaWFnbm9zdGljcyc7XG5pbXBvcnQge2ZpbmRGbGF0SW5kZXhFbnRyeVBvaW50LCBGbGF0SW5kZXhHZW5lcmF0b3J9IGZyb20gJy4uLy4uL2VudHJ5X3BvaW50JztcbmltcG9ydCB7QWJzb2x1dGVGc1BhdGgsIHJlc29sdmV9IGZyb20gJy4uLy4uL2ZpbGVfc3lzdGVtJztcbmltcG9ydCB7RmFjdG9yeUdlbmVyYXRvciwgaXNTaGltLCBTaGltQWRhcHRlciwgU2hpbVJlZmVyZW5jZVRhZ2dlciwgU3VtbWFyeUdlbmVyYXRvcn0gZnJvbSAnLi4vLi4vc2hpbXMnO1xuaW1wb3J0IHtGYWN0b3J5VHJhY2tlciwgUGVyRmlsZVNoaW1HZW5lcmF0b3IsIFRvcExldmVsU2hpbUdlbmVyYXRvcn0gZnJvbSAnLi4vLi4vc2hpbXMvYXBpJztcbmltcG9ydCB7VHlwZUNoZWNrU2hpbUdlbmVyYXRvcn0gZnJvbSAnLi4vLi4vdHlwZWNoZWNrJztcbmltcG9ydCB7bm9ybWFsaXplU2VwYXJhdG9yc30gZnJvbSAnLi4vLi4vdXRpbC9zcmMvcGF0aCc7XG5pbXBvcnQge2dldFJvb3REaXJzLCBpc0R0c1BhdGgsIGlzTm9uRGVjbGFyYXRpb25Uc1BhdGh9IGZyb20gJy4uLy4uL3V0aWwvc3JjL3R5cGVzY3JpcHQnO1xuaW1wb3J0IHtFeHRlbmRlZFRzQ29tcGlsZXJIb3N0LCBOZ0NvbXBpbGVyQWRhcHRlciwgTmdDb21waWxlck9wdGlvbnMsIFVuaWZpZWRNb2R1bGVzSG9zdH0gZnJvbSAnLi4vYXBpJztcblxuLy8gQSBwZXJzaXN0ZW50IHNvdXJjZSBvZiBidWdzIGluIENvbXBpbGVySG9zdCBkZWxlZ2F0aW9uIGhhcyBiZWVuIHRoZSBhZGRpdGlvbiBieSBUUyBvZiBuZXcsXG4vLyBvcHRpb25hbCBtZXRob2RzIG9uIHRzLkNvbXBpbGVySG9zdC4gU2luY2UgdGhlc2UgbWV0aG9kcyBhcmUgb3B0aW9uYWwsIGl0J3Mgbm90IGEgdHlwZSBlcnJvciB0aGF0XG4vLyB0aGUgZGVsZWdhdGluZyBob3N0IGRvZXNuJ3QgaW1wbGVtZW50IG9yIGRlbGVnYXRlIHRoZW0uIFRoaXMgY2F1c2VzIHN1YnRsZSBydW50aW1lIGZhaWx1cmVzLiBOb1xuLy8gbW9yZS4gVGhpcyBpbmZyYXN0cnVjdHVyZSBlbnN1cmVzIHRoYXQgZmFpbGluZyB0byBkZWxlZ2F0ZSBhIG1ldGhvZCBpcyBhIGNvbXBpbGUtdGltZSBlcnJvci5cblxuLyoqXG4gKiBSZXByZXNlbnRzIHRoZSBgRXh0ZW5kZWRUc0NvbXBpbGVySG9zdGAgaW50ZXJmYWNlLCB3aXRoIGEgdHJhbnNmb3JtYXRpb24gYXBwbGllZCB0aGF0IHR1cm5zIGFsbFxuICogbWV0aG9kcyAoZXZlbiBvcHRpb25hbCBvbmVzKSBpbnRvIHJlcXVpcmVkIGZpZWxkcyAod2hpY2ggbWF5IGJlIGB1bmRlZmluZWRgLCBpZiB0aGUgbWV0aG9kIHdhc1xuICogb3B0aW9uYWwpLlxuICovXG5leHBvcnQgdHlwZSBSZXF1aXJlZENvbXBpbGVySG9zdERlbGVnYXRpb25zID0ge1xuICBbTSBpbiBrZXlvZiBSZXF1aXJlZDxFeHRlbmRlZFRzQ29tcGlsZXJIb3N0Pl06IEV4dGVuZGVkVHNDb21waWxlckhvc3RbTV07XG59O1xuXG4vKipcbiAqIERlbGVnYXRlcyBhbGwgbWV0aG9kcyBvZiBgRXh0ZW5kZWRUc0NvbXBpbGVySG9zdGAgdG8gYSBkZWxlZ2F0ZSwgd2l0aCB0aGUgZXhjZXB0aW9uIG9mXG4gKiBgZ2V0U291cmNlRmlsZWAgYW5kIGBmaWxlRXhpc3RzYCB3aGljaCBhcmUgaW1wbGVtZW50ZWQgaW4gYE5nQ29tcGlsZXJIb3N0YC5cbiAqXG4gKiBJZiBhIG5ldyBtZXRob2QgaXMgYWRkZWQgdG8gYHRzLkNvbXBpbGVySG9zdGAgd2hpY2ggaXMgbm90IGRlbGVnYXRlZCwgYSB0eXBlIGVycm9yIHdpbGwgYmVcbiAqIGdlbmVyYXRlZCBmb3IgdGhpcyBjbGFzcy5cbiAqL1xuZXhwb3J0IGNsYXNzIERlbGVnYXRpbmdDb21waWxlckhvc3QgaW1wbGVtZW50c1xuICAgIE9taXQ8UmVxdWlyZWRDb21waWxlckhvc3REZWxlZ2F0aW9ucywgJ2dldFNvdXJjZUZpbGUnfCdmaWxlRXhpc3RzJz4ge1xuICBjb25zdHJ1Y3Rvcihwcm90ZWN0ZWQgZGVsZWdhdGU6IEV4dGVuZGVkVHNDb21waWxlckhvc3QpIHt9XG5cbiAgcHJpdmF0ZSBkZWxlZ2F0ZU1ldGhvZDxNIGV4dGVuZHMga2V5b2YgRXh0ZW5kZWRUc0NvbXBpbGVySG9zdD4obmFtZTogTSk6XG4gICAgICBFeHRlbmRlZFRzQ29tcGlsZXJIb3N0W01dIHtcbiAgICByZXR1cm4gdGhpcy5kZWxlZ2F0ZVtuYW1lXSAhPT0gdW5kZWZpbmVkID8gKHRoaXMuZGVsZWdhdGVbbmFtZV0gYXMgYW55KS5iaW5kKHRoaXMuZGVsZWdhdGUpIDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5kZWZpbmVkO1xuICB9XG5cbiAgLy8gRXhjbHVkZWQgYXJlICdnZXRTb3VyY2VGaWxlJyBhbmQgJ2ZpbGVFeGlzdHMnLCB3aGljaCBhcmUgYWN0dWFsbHkgaW1wbGVtZW50ZWQgYnkgTmdDb21waWxlckhvc3RcbiAgLy8gYmVsb3cuXG4gIGNyZWF0ZUhhc2ggPSB0aGlzLmRlbGVnYXRlTWV0aG9kKCdjcmVhdGVIYXNoJyk7XG4gIGRpcmVjdG9yeUV4aXN0cyA9IHRoaXMuZGVsZWdhdGVNZXRob2QoJ2RpcmVjdG9yeUV4aXN0cycpO1xuICBmaWxlTmFtZVRvTW9kdWxlTmFtZSA9IHRoaXMuZGVsZWdhdGVNZXRob2QoJ2ZpbGVOYW1lVG9Nb2R1bGVOYW1lJyk7XG4gIGdldENhbmNlbGxhdGlvblRva2VuID0gdGhpcy5kZWxlZ2F0ZU1ldGhvZCgnZ2V0Q2FuY2VsbGF0aW9uVG9rZW4nKTtcbiAgZ2V0Q2Fub25pY2FsRmlsZU5hbWUgPSB0aGlzLmRlbGVnYXRlTWV0aG9kKCdnZXRDYW5vbmljYWxGaWxlTmFtZScpO1xuICBnZXRDdXJyZW50RGlyZWN0b3J5ID0gdGhpcy5kZWxlZ2F0ZU1ldGhvZCgnZ2V0Q3VycmVudERpcmVjdG9yeScpO1xuICBnZXREZWZhdWx0TGliRmlsZU5hbWUgPSB0aGlzLmRlbGVnYXRlTWV0aG9kKCdnZXREZWZhdWx0TGliRmlsZU5hbWUnKTtcbiAgZ2V0RGVmYXVsdExpYkxvY2F0aW9uID0gdGhpcy5kZWxlZ2F0ZU1ldGhvZCgnZ2V0RGVmYXVsdExpYkxvY2F0aW9uJyk7XG4gIGdldERpcmVjdG9yaWVzID0gdGhpcy5kZWxlZ2F0ZU1ldGhvZCgnZ2V0RGlyZWN0b3JpZXMnKTtcbiAgZ2V0RW52aXJvbm1lbnRWYXJpYWJsZSA9IHRoaXMuZGVsZWdhdGVNZXRob2QoJ2dldEVudmlyb25tZW50VmFyaWFibGUnKTtcbiAgZ2V0TW9kaWZpZWRSZXNvdXJjZUZpbGVzID0gdGhpcy5kZWxlZ2F0ZU1ldGhvZCgnZ2V0TW9kaWZpZWRSZXNvdXJjZUZpbGVzJyk7XG4gIGdldE5ld0xpbmUgPSB0aGlzLmRlbGVnYXRlTWV0aG9kKCdnZXROZXdMaW5lJyk7XG4gIGdldFBhcnNlZENvbW1hbmRMaW5lID0gdGhpcy5kZWxlZ2F0ZU1ldGhvZCgnZ2V0UGFyc2VkQ29tbWFuZExpbmUnKTtcbiAgZ2V0U291cmNlRmlsZUJ5UGF0aCA9IHRoaXMuZGVsZWdhdGVNZXRob2QoJ2dldFNvdXJjZUZpbGVCeVBhdGgnKTtcbiAgcmVhZERpcmVjdG9yeSA9IHRoaXMuZGVsZWdhdGVNZXRob2QoJ3JlYWREaXJlY3RvcnknKTtcbiAgcmVhZEZpbGUgPSB0aGlzLmRlbGVnYXRlTWV0aG9kKCdyZWFkRmlsZScpO1xuICByZWFkUmVzb3VyY2UgPSB0aGlzLmRlbGVnYXRlTWV0aG9kKCdyZWFkUmVzb3VyY2UnKTtcbiAgcmVhbHBhdGggPSB0aGlzLmRlbGVnYXRlTWV0aG9kKCdyZWFscGF0aCcpO1xuICByZXNvbHZlTW9kdWxlTmFtZXMgPSB0aGlzLmRlbGVnYXRlTWV0aG9kKCdyZXNvbHZlTW9kdWxlTmFtZXMnKTtcbiAgcmVzb2x2ZVR5cGVSZWZlcmVuY2VEaXJlY3RpdmVzID0gdGhpcy5kZWxlZ2F0ZU1ldGhvZCgncmVzb2x2ZVR5cGVSZWZlcmVuY2VEaXJlY3RpdmVzJyk7XG4gIHJlc291cmNlTmFtZVRvRmlsZU5hbWUgPSB0aGlzLmRlbGVnYXRlTWV0aG9kKCdyZXNvdXJjZU5hbWVUb0ZpbGVOYW1lJyk7XG4gIHRyYWNlID0gdGhpcy5kZWxlZ2F0ZU1ldGhvZCgndHJhY2UnKTtcbiAgdXNlQ2FzZVNlbnNpdGl2ZUZpbGVOYW1lcyA9IHRoaXMuZGVsZWdhdGVNZXRob2QoJ3VzZUNhc2VTZW5zaXRpdmVGaWxlTmFtZXMnKTtcbiAgd3JpdGVGaWxlID0gdGhpcy5kZWxlZ2F0ZU1ldGhvZCgnd3JpdGVGaWxlJyk7XG59XG5cbi8qKlxuICogQSB3cmFwcGVyIGFyb3VuZCBgdHMuQ29tcGlsZXJIb3N0YCAocGx1cyBhbnkgZXh0ZW5zaW9uIG1ldGhvZHMgZnJvbSBgRXh0ZW5kZWRUc0NvbXBpbGVySG9zdGApLlxuICpcbiAqIEluIG9yZGVyIGZvciBhIGNvbnN1bWVyIHRvIGluY2x1ZGUgQW5ndWxhciBjb21waWxhdGlvbiBpbiB0aGVpciBUeXBlU2NyaXB0IGNvbXBpbGVyLCB0aGVcbiAqIGB0cy5Qcm9ncmFtYCBtdXN0IGJlIGNyZWF0ZWQgd2l0aCBhIGhvc3QgdGhhdCBhZGRzIEFuZ3VsYXItc3BlY2lmaWMgZmlsZXMgKGUuZy4gZmFjdG9yaWVzLFxuICogc3VtbWFyaWVzLCB0aGUgdGVtcGxhdGUgdHlwZS1jaGVja2luZyBmaWxlLCBldGMpIHRvIHRoZSBjb21waWxhdGlvbi4gYE5nQ29tcGlsZXJIb3N0YCBpcyB0aGVcbiAqIGhvc3QgaW1wbGVtZW50YXRpb24gd2hpY2ggc3VwcG9ydHMgdGhpcy5cbiAqXG4gKiBUaGUgaW50ZXJmYWNlIGltcGxlbWVudGF0aW9ucyBoZXJlIGVuc3VyZSB0aGF0IGBOZ0NvbXBpbGVySG9zdGAgZnVsbHkgZGVsZWdhdGVzIHRvXG4gKiBgRXh0ZW5kZWRUc0NvbXBpbGVySG9zdGAgbWV0aG9kcyB3aGVuZXZlciBwcmVzZW50LlxuICovXG5leHBvcnQgY2xhc3MgTmdDb21waWxlckhvc3QgZXh0ZW5kcyBEZWxlZ2F0aW5nQ29tcGlsZXJIb3N0IGltcGxlbWVudHNcbiAgICBSZXF1aXJlZENvbXBpbGVySG9zdERlbGVnYXRpb25zLCBFeHRlbmRlZFRzQ29tcGlsZXJIb3N0LCBOZ0NvbXBpbGVyQWRhcHRlciB7XG4gIHJlYWRvbmx5IGZhY3RvcnlUcmFja2VyOiBGYWN0b3J5VHJhY2tlcnxudWxsID0gbnVsbDtcbiAgcmVhZG9ubHkgZW50cnlQb2ludDogQWJzb2x1dGVGc1BhdGh8bnVsbCA9IG51bGw7XG4gIHJlYWRvbmx5IGNvbnN0cnVjdGlvbkRpYWdub3N0aWNzOiB0cy5EaWFnbm9zdGljW107XG5cbiAgcmVhZG9ubHkgaW5wdXRGaWxlczogUmVhZG9ubHlBcnJheTxzdHJpbmc+O1xuICByZWFkb25seSByb290RGlyczogUmVhZG9ubHlBcnJheTxBYnNvbHV0ZUZzUGF0aD47XG5cblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIGRlbGVnYXRlOiBFeHRlbmRlZFRzQ29tcGlsZXJIb3N0LCBpbnB1dEZpbGVzOiBSZWFkb25seUFycmF5PHN0cmluZz4sXG4gICAgICByb290RGlyczogUmVhZG9ubHlBcnJheTxBYnNvbHV0ZUZzUGF0aD4sIHByaXZhdGUgc2hpbUFkYXB0ZXI6IFNoaW1BZGFwdGVyLFxuICAgICAgcHJpdmF0ZSBzaGltVGFnZ2VyOiBTaGltUmVmZXJlbmNlVGFnZ2VyLCBlbnRyeVBvaW50OiBBYnNvbHV0ZUZzUGF0aHxudWxsLFxuICAgICAgZmFjdG9yeVRyYWNrZXI6IEZhY3RvcnlUcmFja2VyfG51bGwsIGRpYWdub3N0aWNzOiB0cy5EaWFnbm9zdGljW10pIHtcbiAgICBzdXBlcihkZWxlZ2F0ZSk7XG5cbiAgICB0aGlzLmZhY3RvcnlUcmFja2VyID0gZmFjdG9yeVRyYWNrZXI7XG4gICAgdGhpcy5lbnRyeVBvaW50ID0gZW50cnlQb2ludDtcbiAgICB0aGlzLmNvbnN0cnVjdGlvbkRpYWdub3N0aWNzID0gZGlhZ25vc3RpY3M7XG4gICAgdGhpcy5pbnB1dEZpbGVzID0gWy4uLmlucHV0RmlsZXMsIC4uLnNoaW1BZGFwdGVyLmV4dHJhSW5wdXRGaWxlc107XG4gICAgdGhpcy5yb290RGlycyA9IHJvb3REaXJzO1xuICB9XG5cbiAgLyoqXG4gICAqIFJldHJpZXZlcyBhIHNldCBvZiBgdHMuU291cmNlRmlsZWBzIHdoaWNoIHNob3VsZCBub3QgYmUgZW1pdHRlZCBhcyBKUyBmaWxlcy5cbiAgICpcbiAgICogQXZhaWxhYmxlIGFmdGVyIHRoaXMgaG9zdCBpcyB1c2VkIHRvIGNyZWF0ZSBhIGB0cy5Qcm9ncmFtYCAod2hpY2ggY2F1c2VzIGFsbCB0aGUgZmlsZXMgaW4gdGhlXG4gICAqIHByb2dyYW0gdG8gYmUgZW51bWVyYXRlZCkuXG4gICAqL1xuICBnZXQgaWdub3JlRm9yRW1pdCgpOiBTZXQ8dHMuU291cmNlRmlsZT4ge1xuICAgIHJldHVybiB0aGlzLnNoaW1BZGFwdGVyLmlnbm9yZUZvckVtaXQ7XG4gIH1cblxuICAvKipcbiAgICogUmV0cmlldmUgdGhlIGFycmF5IG9mIHNoaW0gZXh0ZW5zaW9uIHByZWZpeGVzIGZvciB3aGljaCBzaGltcyB3ZXJlIGNyZWF0ZWQgZm9yIGVhY2ggb3JpZ2luYWxcbiAgICogZmlsZS5cbiAgICovXG4gIGdldCBzaGltRXh0ZW5zaW9uUHJlZml4ZXMoKTogc3RyaW5nW10ge1xuICAgIHJldHVybiB0aGlzLnNoaW1BZGFwdGVyLmV4dGVuc2lvblByZWZpeGVzO1xuICB9XG5cbiAgLyoqXG4gICAqIFBlcmZvcm1zIGNsZWFudXAgdGhhdCBuZWVkcyB0byBoYXBwZW4gYWZ0ZXIgYSBgdHMuUHJvZ3JhbWAgaGFzIGJlZW4gY3JlYXRlZCB1c2luZyB0aGlzIGhvc3QuXG4gICAqL1xuICBwb3N0UHJvZ3JhbUNyZWF0aW9uQ2xlYW51cCgpOiB2b2lkIHtcbiAgICB0aGlzLnNoaW1UYWdnZXIuZmluYWxpemUoKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBDcmVhdGUgYW4gYE5nQ29tcGlsZXJIb3N0YCBmcm9tIGEgZGVsZWdhdGUgaG9zdCwgYW4gYXJyYXkgb2YgaW5wdXQgZmlsZW5hbWVzLCBhbmQgdGhlIGZ1bGwgc2V0XG4gICAqIG9mIFR5cGVTY3JpcHQgYW5kIEFuZ3VsYXIgY29tcGlsZXIgb3B0aW9ucy5cbiAgICovXG4gIHN0YXRpYyB3cmFwKFxuICAgICAgZGVsZWdhdGU6IHRzLkNvbXBpbGVySG9zdCwgaW5wdXRGaWxlczogUmVhZG9ubHlBcnJheTxzdHJpbmc+LCBvcHRpb25zOiBOZ0NvbXBpbGVyT3B0aW9ucyxcbiAgICAgIG9sZFByb2dyYW06IHRzLlByb2dyYW18bnVsbCk6IE5nQ29tcGlsZXJIb3N0IHtcbiAgICAvLyBUT0RPKGFseGh1Yik6IHJlbW92ZSB0aGUgZmFsbGJhY2sgdG8gYWxsb3dFbXB0eUNvZGVnZW5GaWxlcyBhZnRlciB2ZXJpZnlpbmcgdGhhdCB0aGUgcmVzdCBvZlxuICAgIC8vIG91ciBidWlsZCB0b29saW5nIGlzIG5vIGxvbmdlciByZWx5aW5nIG9uIGl0LlxuICAgIGNvbnN0IGFsbG93RW1wdHlDb2RlZ2VuRmlsZXMgPSBvcHRpb25zLmFsbG93RW1wdHlDb2RlZ2VuRmlsZXMgfHwgZmFsc2U7XG4gICAgY29uc3Qgc2hvdWxkR2VuZXJhdGVGYWN0b3J5U2hpbXMgPSBvcHRpb25zLmdlbmVyYXRlTmdGYWN0b3J5U2hpbXMgIT09IHVuZGVmaW5lZCA/XG4gICAgICAgIG9wdGlvbnMuZ2VuZXJhdGVOZ0ZhY3RvcnlTaGltcyA6XG4gICAgICAgIGFsbG93RW1wdHlDb2RlZ2VuRmlsZXM7XG5cbiAgICBjb25zdCBzaG91bGRHZW5lcmF0ZVN1bW1hcnlTaGltcyA9IG9wdGlvbnMuZ2VuZXJhdGVOZ1N1bW1hcnlTaGltcyAhPT0gdW5kZWZpbmVkID9cbiAgICAgICAgb3B0aW9ucy5nZW5lcmF0ZU5nU3VtbWFyeVNoaW1zIDpcbiAgICAgICAgYWxsb3dFbXB0eUNvZGVnZW5GaWxlcztcblxuXG4gICAgY29uc3QgdG9wTGV2ZWxTaGltR2VuZXJhdG9yczogVG9wTGV2ZWxTaGltR2VuZXJhdG9yW10gPSBbXTtcbiAgICBjb25zdCBwZXJGaWxlU2hpbUdlbmVyYXRvcnM6IFBlckZpbGVTaGltR2VuZXJhdG9yW10gPSBbXTtcblxuICAgIGlmIChzaG91bGRHZW5lcmF0ZVN1bW1hcnlTaGltcykge1xuICAgICAgLy8gU3VtbWFyeSBnZW5lcmF0aW9uLlxuICAgICAgcGVyRmlsZVNoaW1HZW5lcmF0b3JzLnB1c2gobmV3IFN1bW1hcnlHZW5lcmF0b3IoKSk7XG4gICAgfVxuXG4gICAgbGV0IGZhY3RvcnlUcmFja2VyOiBGYWN0b3J5VHJhY2tlcnxudWxsID0gbnVsbDtcbiAgICBpZiAoc2hvdWxkR2VuZXJhdGVGYWN0b3J5U2hpbXMpIHtcbiAgICAgIGNvbnN0IGZhY3RvcnlHZW5lcmF0b3IgPSBuZXcgRmFjdG9yeUdlbmVyYXRvcigpO1xuICAgICAgcGVyRmlsZVNoaW1HZW5lcmF0b3JzLnB1c2goZmFjdG9yeUdlbmVyYXRvcik7XG5cbiAgICAgIGZhY3RvcnlUcmFja2VyID0gZmFjdG9yeUdlbmVyYXRvcjtcbiAgICB9XG5cbiAgICBjb25zdCByb290RGlycyA9IGdldFJvb3REaXJzKGRlbGVnYXRlLCBvcHRpb25zIGFzIHRzLkNvbXBpbGVyT3B0aW9ucyk7XG5cbiAgICBwZXJGaWxlU2hpbUdlbmVyYXRvcnMucHVzaChuZXcgVHlwZUNoZWNrU2hpbUdlbmVyYXRvcigpKTtcblxuICAgIGxldCBkaWFnbm9zdGljczogdHMuRGlhZ25vc3RpY1tdID0gW107XG5cbiAgICBjb25zdCBub3JtYWxpemVkVHNJbnB1dEZpbGVzOiBBYnNvbHV0ZUZzUGF0aFtdID0gW107XG4gICAgZm9yIChjb25zdCBpbnB1dEZpbGUgb2YgaW5wdXRGaWxlcykge1xuICAgICAgaWYgKCFpc05vbkRlY2xhcmF0aW9uVHNQYXRoKGlucHV0RmlsZSkpIHtcbiAgICAgICAgY29udGludWU7XG4gICAgICB9XG4gICAgICBub3JtYWxpemVkVHNJbnB1dEZpbGVzLnB1c2gocmVzb2x2ZShpbnB1dEZpbGUpKTtcbiAgICB9XG5cbiAgICBsZXQgZW50cnlQb2ludDogQWJzb2x1dGVGc1BhdGh8bnVsbCA9IG51bGw7XG4gICAgaWYgKG9wdGlvbnMuZmxhdE1vZHVsZU91dEZpbGUgIT0gbnVsbCAmJiBvcHRpb25zLmZsYXRNb2R1bGVPdXRGaWxlICE9PSAnJykge1xuICAgICAgZW50cnlQb2ludCA9IGZpbmRGbGF0SW5kZXhFbnRyeVBvaW50KG5vcm1hbGl6ZWRUc0lucHV0RmlsZXMpO1xuICAgICAgaWYgKGVudHJ5UG9pbnQgPT09IG51bGwpIHtcbiAgICAgICAgLy8gVGhpcyBlcnJvciBtZXNzYWdlIHRhbGtzIHNwZWNpZmljYWxseSBhYm91dCBoYXZpbmcgYSBzaW5nbGUgLnRzIGZpbGUgaW4gXCJmaWxlc1wiLiBIb3dldmVyXG4gICAgICAgIC8vIHRoZSBhY3R1YWwgbG9naWMgaXMgYSBiaXQgbW9yZSBwZXJtaXNzaXZlLiBJZiBhIHNpbmdsZSBmaWxlIGV4aXN0cywgdGhhdCB3aWxsIGJlIHRha2VuLFxuICAgICAgICAvLyBvdGhlcndpc2UgdGhlIGhpZ2hlc3QgbGV2ZWwgKHNob3J0ZXN0IHBhdGgpIFwiaW5kZXgudHNcIiBmaWxlIHdpbGwgYmUgdXNlZCBhcyB0aGUgZmxhdFxuICAgICAgICAvLyBtb2R1bGUgZW50cnkgcG9pbnQgaW5zdGVhZC4gSWYgbmVpdGhlciBvZiB0aGVzZSBjb25kaXRpb25zIGFwcGx5LCB0aGUgZXJyb3IgYmVsb3cgaXNcbiAgICAgICAgLy8gZ2l2ZW4uXG4gICAgICAgIC8vXG4gICAgICAgIC8vIFRoZSB1c2VyIGlzIG5vdCBpbmZvcm1lZCBhYm91dCB0aGUgXCJpbmRleC50c1wiIG9wdGlvbiBhcyB0aGlzIGJlaGF2aW9yIGlzIGRlcHJlY2F0ZWQgLVxuICAgICAgICAvLyBhbiBleHBsaWNpdCBlbnRyeXBvaW50IHNob3VsZCBhbHdheXMgYmUgc3BlY2lmaWVkLlxuICAgICAgICBkaWFnbm9zdGljcy5wdXNoKHtcbiAgICAgICAgICBjYXRlZ29yeTogdHMuRGlhZ25vc3RpY0NhdGVnb3J5LkVycm9yLFxuICAgICAgICAgIGNvZGU6IG5nRXJyb3JDb2RlKEVycm9yQ29kZS5DT05GSUdfRkxBVF9NT0RVTEVfTk9fSU5ERVgpLFxuICAgICAgICAgIGZpbGU6IHVuZGVmaW5lZCxcbiAgICAgICAgICBzdGFydDogdW5kZWZpbmVkLFxuICAgICAgICAgIGxlbmd0aDogdW5kZWZpbmVkLFxuICAgICAgICAgIG1lc3NhZ2VUZXh0OlxuICAgICAgICAgICAgICAnQW5ndWxhciBjb21waWxlciBvcHRpb24gXCJmbGF0TW9kdWxlT3V0RmlsZVwiIHJlcXVpcmVzIG9uZSBhbmQgb25seSBvbmUgLnRzIGZpbGUgaW4gdGhlIFwiZmlsZXNcIiBmaWVsZC4nLFxuICAgICAgICB9KTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIGNvbnN0IGZsYXRNb2R1bGVJZCA9IG9wdGlvbnMuZmxhdE1vZHVsZUlkIHx8IG51bGw7XG4gICAgICAgIGNvbnN0IGZsYXRNb2R1bGVPdXRGaWxlID0gbm9ybWFsaXplU2VwYXJhdG9ycyhvcHRpb25zLmZsYXRNb2R1bGVPdXRGaWxlKTtcbiAgICAgICAgY29uc3QgZmxhdEluZGV4R2VuZXJhdG9yID1cbiAgICAgICAgICAgIG5ldyBGbGF0SW5kZXhHZW5lcmF0b3IoZW50cnlQb2ludCwgZmxhdE1vZHVsZU91dEZpbGUsIGZsYXRNb2R1bGVJZCk7XG4gICAgICAgIHRvcExldmVsU2hpbUdlbmVyYXRvcnMucHVzaChmbGF0SW5kZXhHZW5lcmF0b3IpO1xuICAgICAgfVxuICAgIH1cblxuICAgIGNvbnN0IHNoaW1BZGFwdGVyID0gbmV3IFNoaW1BZGFwdGVyKFxuICAgICAgICBkZWxlZ2F0ZSwgbm9ybWFsaXplZFRzSW5wdXRGaWxlcywgdG9wTGV2ZWxTaGltR2VuZXJhdG9ycywgcGVyRmlsZVNoaW1HZW5lcmF0b3JzLFxuICAgICAgICBvbGRQcm9ncmFtKTtcbiAgICBjb25zdCBzaGltVGFnZ2VyID1cbiAgICAgICAgbmV3IFNoaW1SZWZlcmVuY2VUYWdnZXIocGVyRmlsZVNoaW1HZW5lcmF0b3JzLm1hcChnZW4gPT4gZ2VuLmV4dGVuc2lvblByZWZpeCkpO1xuICAgIHJldHVybiBuZXcgTmdDb21waWxlckhvc3QoXG4gICAgICAgIGRlbGVnYXRlLCBpbnB1dEZpbGVzLCByb290RGlycywgc2hpbUFkYXB0ZXIsIHNoaW1UYWdnZXIsIGVudHJ5UG9pbnQsIGZhY3RvcnlUcmFja2VyLFxuICAgICAgICBkaWFnbm9zdGljcyk7XG4gIH1cblxuICAvKipcbiAgICogQ2hlY2sgd2hldGhlciB0aGUgZ2l2ZW4gYHRzLlNvdXJjZUZpbGVgIGlzIGEgc2hpbSBmaWxlLlxuICAgKlxuICAgKiBJZiB0aGlzIHJldHVybnMgZmFsc2UsIHRoZSBmaWxlIGlzIHVzZXItcHJvdmlkZWQuXG4gICAqL1xuICBpc1NoaW0oc2Y6IHRzLlNvdXJjZUZpbGUpOiBib29sZWFuIHtcbiAgICByZXR1cm4gaXNTaGltKHNmKTtcbiAgfVxuXG4gIGdldFNvdXJjZUZpbGUoXG4gICAgICBmaWxlTmFtZTogc3RyaW5nLCBsYW5ndWFnZVZlcnNpb246IHRzLlNjcmlwdFRhcmdldCxcbiAgICAgIG9uRXJyb3I/OiAoKG1lc3NhZ2U6IHN0cmluZykgPT4gdm9pZCl8dW5kZWZpbmVkLFxuICAgICAgc2hvdWxkQ3JlYXRlTmV3U291cmNlRmlsZT86IGJvb2xlYW58dW5kZWZpbmVkKTogdHMuU291cmNlRmlsZXx1bmRlZmluZWQge1xuICAgIC8vIElzIHRoaXMgYSBwcmV2aW91c2x5IGtub3duIHNoaW0/XG4gICAgY29uc3Qgc2hpbVNmID0gdGhpcy5zaGltQWRhcHRlci5tYXliZUdlbmVyYXRlKHJlc29sdmUoZmlsZU5hbWUpKTtcbiAgICBpZiAoc2hpbVNmICE9PSBudWxsKSB7XG4gICAgICAvLyBZZXMsIHNvIHJldHVybiBpdC5cbiAgICAgIHJldHVybiBzaGltU2Y7XG4gICAgfVxuXG4gICAgLy8gTm8sIHNvIGl0J3MgYSBmaWxlIHdoaWNoIG1pZ2h0IG5lZWQgc2hpbXMgKG9yIGEgZmlsZSB3aGljaCBkb2Vzbid0IGV4aXN0KS5cbiAgICBjb25zdCBzZiA9XG4gICAgICAgIHRoaXMuZGVsZWdhdGUuZ2V0U291cmNlRmlsZShmaWxlTmFtZSwgbGFuZ3VhZ2VWZXJzaW9uLCBvbkVycm9yLCBzaG91bGRDcmVhdGVOZXdTb3VyY2VGaWxlKTtcbiAgICBpZiAoc2YgPT09IHVuZGVmaW5lZCkge1xuICAgICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgICB9XG5cbiAgICB0aGlzLnNoaW1UYWdnZXIudGFnKHNmKTtcbiAgICByZXR1cm4gc2Y7XG4gIH1cblxuICBmaWxlRXhpc3RzKGZpbGVOYW1lOiBzdHJpbmcpOiBib29sZWFuIHtcbiAgICAvLyBDb25zaWRlciB0aGUgZmlsZSBhcyBleGlzdGluZyB3aGVuZXZlclxuICAgIC8vICAxKSBpdCByZWFsbHkgZG9lcyBleGlzdCBpbiB0aGUgZGVsZWdhdGUgaG9zdCwgb3JcbiAgICAvLyAgMikgYXQgbGVhc3Qgb25lIG9mIHRoZSBzaGltIGdlbmVyYXRvcnMgcmVjb2duaXplcyBpdFxuICAgIC8vIE5vdGUgdGhhdCB3ZSBjYW4gcGFzcyB0aGUgZmlsZSBuYW1lIGFzIGJyYW5kZWQgYWJzb2x1dGUgZnMgcGF0aCBiZWNhdXNlIFR5cGVTY3JpcHRcbiAgICAvLyBpbnRlcm5hbGx5IG9ubHkgcGFzc2VzIFBPU0lYLWxpa2UgcGF0aHMuXG4gICAgLy9cbiAgICAvLyBBbHNvIG5vdGUgdGhhdCB0aGUgYG1heWJlR2VuZXJhdGVgIGNoZWNrIGJlbG93IGNoZWNrcyBmb3IgYm90aCBgbnVsbGAgYW5kIGB1bmRlZmluZWRgLlxuICAgIHJldHVybiB0aGlzLmRlbGVnYXRlLmZpbGVFeGlzdHMoZmlsZU5hbWUpIHx8XG4gICAgICAgIHRoaXMuc2hpbUFkYXB0ZXIubWF5YmVHZW5lcmF0ZShyZXNvbHZlKGZpbGVOYW1lKSkgIT0gbnVsbDtcbiAgfVxuXG4gIGdldCB1bmlmaWVkTW9kdWxlc0hvc3QoKTogVW5pZmllZE1vZHVsZXNIb3N0fG51bGwge1xuICAgIHJldHVybiB0aGlzLmZpbGVOYW1lVG9Nb2R1bGVOYW1lICE9PSB1bmRlZmluZWQgPyB0aGlzIGFzIFVuaWZpZWRNb2R1bGVzSG9zdCA6IG51bGw7XG4gIH1cbn1cbiJdfQ==