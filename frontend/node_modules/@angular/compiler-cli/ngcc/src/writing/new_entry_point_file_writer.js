(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/writing/new_entry_point_file_writer", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/src/ngtsc/util/src/typescript", "@angular/compiler-cli/ngcc/src/writing/in_place_file_writer"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.NewEntryPointFileWriter = exports.NGCC_PROPERTY_EXTENSION = exports.NGCC_DIRECTORY = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var typescript_1 = require("@angular/compiler-cli/src/ngtsc/util/src/typescript");
    var in_place_file_writer_1 = require("@angular/compiler-cli/ngcc/src/writing/in_place_file_writer");
    exports.NGCC_DIRECTORY = '__ivy_ngcc__';
    exports.NGCC_PROPERTY_EXTENSION = '_ivy_ngcc';
    /**
     * This FileWriter creates a copy of the original entry-point, then writes the transformed
     * files onto the files in this copy, and finally updates the package.json with a new
     * entry-point format property that points to this new entry-point.
     *
     * If there are transformed typings files in this bundle, they are updated in-place (see the
     * `InPlaceFileWriter`).
     */
    var NewEntryPointFileWriter = /** @class */ (function (_super) {
        tslib_1.__extends(NewEntryPointFileWriter, _super);
        function NewEntryPointFileWriter(fs, logger, errorOnFailedEntryPoint, pkgJsonUpdater) {
            var _this = _super.call(this, fs, logger, errorOnFailedEntryPoint) || this;
            _this.pkgJsonUpdater = pkgJsonUpdater;
            return _this;
        }
        NewEntryPointFileWriter.prototype.writeBundle = function (bundle, transformedFiles, formatProperties) {
            var _this = this;
            // The new folder is at the root of the overall package
            var entryPoint = bundle.entryPoint;
            var ngccFolder = file_system_1.join(entryPoint.packagePath, exports.NGCC_DIRECTORY);
            this.copyBundle(bundle, entryPoint.packagePath, ngccFolder);
            transformedFiles.forEach(function (file) { return _this.writeFile(file, entryPoint.packagePath, ngccFolder); });
            this.updatePackageJson(entryPoint, formatProperties, ngccFolder);
        };
        NewEntryPointFileWriter.prototype.revertBundle = function (entryPoint, transformedFilePaths, formatProperties) {
            // IMPLEMENTATION NOTE:
            //
            // The changes made by `copyBundle()` are not reverted here. The non-transformed copied files
            // are identical to the original ones and they will be overwritten when re-processing the
            // entry-point anyway.
            //
            // This way, we avoid the overhead of having to inform the master process about all source files
            // being copied in `copyBundle()`.
            var e_1, _a;
            try {
                // Revert the transformed files.
                for (var transformedFilePaths_1 = tslib_1.__values(transformedFilePaths), transformedFilePaths_1_1 = transformedFilePaths_1.next(); !transformedFilePaths_1_1.done; transformedFilePaths_1_1 = transformedFilePaths_1.next()) {
                    var filePath = transformedFilePaths_1_1.value;
                    this.revertFile(filePath, entryPoint.packagePath);
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (transformedFilePaths_1_1 && !transformedFilePaths_1_1.done && (_a = transformedFilePaths_1.return)) _a.call(transformedFilePaths_1);
                }
                finally { if (e_1) throw e_1.error; }
            }
            // Revert any changes to `package.json`.
            this.revertPackageJson(entryPoint, formatProperties);
        };
        NewEntryPointFileWriter.prototype.copyBundle = function (bundle, packagePath, ngccFolder) {
            var _this = this;
            bundle.src.program.getSourceFiles().forEach(function (sourceFile) {
                var relativePath = file_system_1.relative(packagePath, file_system_1.absoluteFromSourceFile(sourceFile));
                var isInsidePackage = file_system_1.isLocalRelativePath(relativePath);
                if (!sourceFile.isDeclarationFile && isInsidePackage) {
                    var newFilePath = file_system_1.resolve(ngccFolder, relativePath);
                    _this.fs.ensureDir(file_system_1.dirname(newFilePath));
                    _this.fs.copyFile(file_system_1.absoluteFromSourceFile(sourceFile), newFilePath);
                }
            });
        };
        NewEntryPointFileWriter.prototype.writeFile = function (file, packagePath, ngccFolder) {
            if (typescript_1.isDtsPath(file.path.replace(/\.map$/, ''))) {
                // This is either `.d.ts` or `.d.ts.map` file
                _super.prototype.writeFileAndBackup.call(this, file);
            }
            else {
                var relativePath = file_system_1.relative(packagePath, file.path);
                var newFilePath = file_system_1.resolve(ngccFolder, relativePath);
                this.fs.ensureDir(file_system_1.dirname(newFilePath));
                this.fs.writeFile(newFilePath, file.contents);
            }
        };
        NewEntryPointFileWriter.prototype.revertFile = function (filePath, packagePath) {
            if (typescript_1.isDtsPath(filePath.replace(/\.map$/, ''))) {
                // This is either `.d.ts` or `.d.ts.map` file
                _super.prototype.revertFileAndBackup.call(this, filePath);
            }
            else if (this.fs.exists(filePath)) {
                var relativePath = file_system_1.relative(packagePath, filePath);
                var newFilePath = file_system_1.resolve(packagePath, exports.NGCC_DIRECTORY, relativePath);
                this.fs.removeFile(newFilePath);
            }
        };
        NewEntryPointFileWriter.prototype.updatePackageJson = function (entryPoint, formatProperties, ngccFolder) {
            var e_2, _a;
            if (formatProperties.length === 0) {
                // No format properties need updating.
                return;
            }
            var packageJson = entryPoint.packageJson;
            var packageJsonPath = file_system_1.join(entryPoint.path, 'package.json');
            // All format properties point to the same format-path.
            var oldFormatProp = formatProperties[0];
            var oldFormatPath = packageJson[oldFormatProp];
            var oldAbsFormatPath = file_system_1.resolve(entryPoint.path, oldFormatPath);
            var newAbsFormatPath = file_system_1.resolve(ngccFolder, file_system_1.relative(entryPoint.packagePath, oldAbsFormatPath));
            var newFormatPath = file_system_1.relative(entryPoint.path, newAbsFormatPath);
            // Update all properties in `package.json` (both in memory and on disk).
            var update = this.pkgJsonUpdater.createUpdate();
            try {
                for (var formatProperties_1 = tslib_1.__values(formatProperties), formatProperties_1_1 = formatProperties_1.next(); !formatProperties_1_1.done; formatProperties_1_1 = formatProperties_1.next()) {
                    var formatProperty = formatProperties_1_1.value;
                    if (packageJson[formatProperty] !== oldFormatPath) {
                        throw new Error("Unable to update '" + packageJsonPath + "': Format properties " +
                            ("(" + formatProperties.join(', ') + ") map to more than one format-path."));
                    }
                    update.addChange(["" + formatProperty + exports.NGCC_PROPERTY_EXTENSION], newFormatPath, { before: formatProperty });
                }
            }
            catch (e_2_1) { e_2 = { error: e_2_1 }; }
            finally {
                try {
                    if (formatProperties_1_1 && !formatProperties_1_1.done && (_a = formatProperties_1.return)) _a.call(formatProperties_1);
                }
                finally { if (e_2) throw e_2.error; }
            }
            update.writeChanges(packageJsonPath, packageJson);
        };
        NewEntryPointFileWriter.prototype.revertPackageJson = function (entryPoint, formatProperties) {
            var e_3, _a;
            if (formatProperties.length === 0) {
                // No format properties need reverting.
                return;
            }
            var packageJson = entryPoint.packageJson;
            var packageJsonPath = file_system_1.join(entryPoint.path, 'package.json');
            // Revert all properties in `package.json` (both in memory and on disk).
            // Since `updatePackageJson()` only adds properties, it is safe to just remove them (if they
            // exist).
            var update = this.pkgJsonUpdater.createUpdate();
            try {
                for (var formatProperties_2 = tslib_1.__values(formatProperties), formatProperties_2_1 = formatProperties_2.next(); !formatProperties_2_1.done; formatProperties_2_1 = formatProperties_2.next()) {
                    var formatProperty = formatProperties_2_1.value;
                    update.addChange(["" + formatProperty + exports.NGCC_PROPERTY_EXTENSION], undefined);
                }
            }
            catch (e_3_1) { e_3 = { error: e_3_1 }; }
            finally {
                try {
                    if (formatProperties_2_1 && !formatProperties_2_1.done && (_a = formatProperties_2.return)) _a.call(formatProperties_2);
                }
                finally { if (e_3) throw e_3.error; }
            }
            update.writeChanges(packageJsonPath, packageJson);
        };
        return NewEntryPointFileWriter;
    }(in_place_file_writer_1.InPlaceFileWriter));
    exports.NewEntryPointFileWriter = NewEntryPointFileWriter;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmV3X2VudHJ5X3BvaW50X2ZpbGVfd3JpdGVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL25nY2Mvc3JjL3dyaXRpbmcvbmV3X2VudHJ5X3BvaW50X2ZpbGVfd3JpdGVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7SUFDQTs7Ozs7O09BTUc7SUFDSCwyRUFBeUo7SUFDekosa0ZBQWlFO0lBTWpFLG9HQUF5RDtJQUc1QyxRQUFBLGNBQWMsR0FBRyxjQUFjLENBQUM7SUFDaEMsUUFBQSx1QkFBdUIsR0FBRyxXQUFXLENBQUM7SUFFbkQ7Ozs7Ozs7T0FPRztJQUNIO1FBQTZDLG1EQUFpQjtRQUM1RCxpQ0FDSSxFQUFjLEVBQUUsTUFBYyxFQUFFLHVCQUFnQyxFQUN4RCxjQUFrQztZQUY5QyxZQUdFLGtCQUFNLEVBQUUsRUFBRSxNQUFNLEVBQUUsdUJBQXVCLENBQUMsU0FDM0M7WUFGVyxvQkFBYyxHQUFkLGNBQWMsQ0FBb0I7O1FBRTlDLENBQUM7UUFFRCw2Q0FBVyxHQUFYLFVBQ0ksTUFBd0IsRUFBRSxnQkFBK0IsRUFDekQsZ0JBQTBDO1lBRjlDLGlCQVNDO1lBTkMsdURBQXVEO1lBQ3ZELElBQU0sVUFBVSxHQUFHLE1BQU0sQ0FBQyxVQUFVLENBQUM7WUFDckMsSUFBTSxVQUFVLEdBQUcsa0JBQUksQ0FBQyxVQUFVLENBQUMsV0FBVyxFQUFFLHNCQUFjLENBQUMsQ0FBQztZQUNoRSxJQUFJLENBQUMsVUFBVSxDQUFDLE1BQU0sRUFBRSxVQUFVLENBQUMsV0FBVyxFQUFFLFVBQVUsQ0FBQyxDQUFDO1lBQzVELGdCQUFnQixDQUFDLE9BQU8sQ0FBQyxVQUFBLElBQUksSUFBSSxPQUFBLEtBQUksQ0FBQyxTQUFTLENBQUMsSUFBSSxFQUFFLFVBQVUsQ0FBQyxXQUFXLEVBQUUsVUFBVSxDQUFDLEVBQXhELENBQXdELENBQUMsQ0FBQztZQUMz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QXVCIiwic291cmNlc0NvbnRlbnQiOlsiXG4vKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCB7YWJzb2x1dGVGcm9tU291cmNlRmlsZSwgQWJzb2x1dGVGc1BhdGgsIGRpcm5hbWUsIEZpbGVTeXN0ZW0sIGlzTG9jYWxSZWxhdGl2ZVBhdGgsIGpvaW4sIHJlbGF0aXZlLCByZXNvbHZlfSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvZmlsZV9zeXN0ZW0nO1xuaW1wb3J0IHtpc0R0c1BhdGh9IGZyb20gJy4uLy4uLy4uL3NyYy9uZ3RzYy91dGlsL3NyYy90eXBlc2NyaXB0JztcbmltcG9ydCB7TG9nZ2VyfSBmcm9tICcuLi9sb2dnaW5nL2xvZ2dlcic7XG5pbXBvcnQge0VudHJ5UG9pbnQsIEVudHJ5UG9pbnRKc29uUHJvcGVydHl9IGZyb20gJy4uL3BhY2thZ2VzL2VudHJ5X3BvaW50JztcbmltcG9ydCB7RW50cnlQb2ludEJ1bmRsZX0gZnJvbSAnLi4vcGFja2FnZXMvZW50cnlfcG9pbnRfYnVuZGxlJztcbmltcG9ydCB7RmlsZVRvV3JpdGV9IGZyb20gJy4uL3JlbmRlcmluZy91dGlscyc7XG5cbmltcG9ydCB7SW5QbGFjZUZpbGVXcml0ZXJ9IGZyb20gJy4vaW5fcGxhY2VfZmlsZV93cml0ZXInO1xuaW1wb3J0IHtQYWNrYWdlSnNvblVwZGF0ZXJ9IGZyb20gJy4vcGFja2FnZV9qc29uX3VwZGF0ZXInO1xuXG5leHBvcnQgY29uc3QgTkdDQ19ESVJFQ1RPUlkgPSAnX19pdnlfbmdjY19fJztcbmV4cG9ydCBjb25zdCBOR0NDX1BST1BFUlRZX0VYVEVOU0lPTiA9ICdfaXZ5X25nY2MnO1xuXG4vKipcbiAqIFRoaXMgRmlsZVdyaXRlciBjcmVhdGVzIGEgY29weSBvZiB0aGUgb3JpZ2luYWwgZW50cnktcG9pbnQsIHRoZW4gd3JpdGVzIHRoZSB0cmFuc2Zvcm1lZFxuICogZmlsZXMgb250byB0aGUgZmlsZXMgaW4gdGhpcyBjb3B5LCBhbmQgZmluYWxseSB1cGRhdGVzIHRoZSBwYWNrYWdlLmpzb24gd2l0aCBhIG5ld1xuICogZW50cnktcG9pbnQgZm9ybWF0IHByb3BlcnR5IHRoYXQgcG9pbnRzIHRvIHRoaXMgbmV3IGVudHJ5LXBvaW50LlxuICpcbiAqIElmIHRoZXJlIGFyZSB0cmFuc2Zvcm1lZCB0eXBpbmdzIGZpbGVzIGluIHRoaXMgYnVuZGxlLCB0aGV5IGFyZSB1cGRhdGVkIGluLXBsYWNlIChzZWUgdGhlXG4gKiBgSW5QbGFjZUZpbGVXcml0ZXJgKS5cbiAqL1xuZXhwb3J0IGNsYXNzIE5ld0VudHJ5UG9pbnRGaWxlV3JpdGVyIGV4dGVuZHMgSW5QbGFjZUZpbGVXcml0ZXIge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIGZzOiBGaWxlU3lzdGVtLCBsb2dnZXI6IExvZ2dlciwgZXJyb3JPbkZhaWxlZEVudHJ5UG9pbnQ6IGJvb2xlYW4sXG4gICAgICBwcml2YXRlIHBrZ0pzb25VcGRhdGVyOiBQYWNrYWdlSnNvblVwZGF0ZXIpIHtcbiAgICBzdXBlcihmcywgbG9nZ2VyLCBlcnJvck9uRmFpbGVkRW50cnlQb2ludCk7XG4gIH1cblxuICB3cml0ZUJ1bmRsZShcbiAgICAgIGJ1bmRsZTogRW50cnlQb2ludEJ1bmRsZSwgdHJhbnNmb3JtZWRGaWxlczogRmlsZVRvV3JpdGVbXSxcbiAgICAgIGZvcm1hdFByb3BlcnRpZXM6IEVudHJ5UG9pbnRKc29uUHJvcGVydHlbXSkge1xuICAgIC8vIFRoZSBuZXcgZm9sZGVyIGlzIGF0IHRoZSByb290IG9mIHRoZSBvdmVyYWxsIHBhY2thZ2VcbiAgICBjb25zdCBlbnRyeVBvaW50ID0gYnVuZGxlLmVudHJ5UG9pbnQ7XG4gICAgY29uc3QgbmdjY0ZvbGRlciA9IGpvaW4oZW50cnlQb2ludC5wYWNrYWdlUGF0aCwgTkdDQ19ESVJFQ1RPUlkpO1xuICAgIHRoaXMuY29weUJ1bmRsZShidW5kbGUsIGVudHJ5UG9pbnQucGFja2FnZVBhdGgsIG5nY2NGb2xkZXIpO1xuICAgIHRyYW5zZm9ybWVkRmlsZXMuZm9yRWFjaChmaWxlID0+IHRoaXMud3JpdGVGaWxlKGZpbGUsIGVudHJ5UG9pbnQucGFja2FnZVBhdGgsIG5nY2NGb2xkZXIpKTtcbiAgICB0aGlzLnVwZGF0ZVBhY2thZ2VKc29uKGVudHJ5UG9pbnQsIGZvcm1hdFByb3BlcnRpZXMsIG5nY2NGb2xkZXIpO1xuICB9XG5cbiAgcmV2ZXJ0QnVuZGxlKFxuICAgICAgZW50cnlQb2ludDogRW50cnlQb2ludCwgdHJhbnNmb3JtZWRGaWxlUGF0aHM6IEFic29sdXRlRnNQYXRoW10sXG4gICAgICBmb3JtYXRQcm9wZXJ0aWVzOiBFbnRyeVBvaW50SnNvblByb3BlcnR5W10pOiB2b2lkIHtcbiAgICAvLyBJTVBMRU1FTlRBVElPTiBOT1RFOlxuICAgIC8vXG4gICAgLy8gVGhlIGNoYW5nZXMgbWFkZSBieSBgY29weUJ1bmRsZSgpYCBhcmUgbm90IHJldmVydGVkIGhlcmUuIFRoZSBub24tdHJhbnNmb3JtZWQgY29waWVkIGZpbGVzXG4gICAgLy8gYXJlIGlkZW50aWNhbCB0byB0aGUgb3JpZ2luYWwgb25lcyBhbmQgdGhleSB3aWxsIGJlIG92ZXJ3cml0dGVuIHdoZW4gcmUtcHJvY2Vzc2luZyB0aGVcbiAgICAvLyBlbnRyeS1wb2ludCBhbnl3YXkuXG4gICAgLy9cbiAgICAvLyBUaGlzIHdheSwgd2UgYXZvaWQgdGhlIG92ZXJoZWFkIG9mIGhhdmluZyB0byBpbmZvcm0gdGhlIG1hc3RlciBwcm9jZXNzIGFib3V0IGFsbCBzb3VyY2UgZmlsZXNcbiAgICAvLyBiZWluZyBjb3BpZWQgaW4gYGNvcHlCdW5kbGUoKWAuXG5cbiAgICAvLyBSZXZlcnQgdGhlIHRyYW5zZm9ybWVkIGZpbGVzLlxuICAgIGZvciAoY29uc3QgZmlsZVBhdGggb2YgdHJhbnNmb3JtZWRGaWxlUGF0aHMpIHtcbiAgICAgIHRoaXMucmV2ZXJ0RmlsZShmaWxlUGF0aCwgZW50cnlQb2ludC5wYWNrYWdlUGF0aCk7XG4gICAgfVxuXG4gICAgLy8gUmV2ZXJ0IGFueSBjaGFuZ2VzIHRvIGBwYWNrYWdlLmpzb25gLlxuICAgIHRoaXMucmV2ZXJ0UGFja2FnZUpzb24oZW50cnlQb2ludCwgZm9ybWF0UHJvcGVydGllcyk7XG4gIH1cblxuICBwcm90ZWN0ZWQgY29weUJ1bmRsZShcbiAgICAgIGJ1bmRsZTogRW50cnlQb2ludEJ1bmRsZSwgcGFja2FnZVBhdGg6IEFic29sdXRlRnNQYXRoLCBuZ2NjRm9sZGVyOiBBYnNvbHV0ZUZzUGF0aCkge1xuICAgIGJ1bmRsZS5zcmMucHJvZ3JhbS5nZXRTb3VyY2VGaWxlcygpLmZvckVhY2goc291cmNlRmlsZSA9PiB7XG4gICAgICBjb25zdCByZWxhdGl2ZVBhdGggPSByZWxhdGl2ZShwYWNrYWdlUGF0aCwgYWJzb2x1dGVGcm9tU291cmNlRmlsZShzb3VyY2VGaWxlKSk7XG4gICAgICBjb25zdCBpc0luc2lkZVBhY2thZ2UgPSBpc0xvY2FsUmVsYXRpdmVQYXRoKHJlbGF0aXZlUGF0aCk7XG4gICAgICBpZiAoIXNvdXJjZUZpbGUuaXNEZWNsYXJhdGlvbkZpbGUgJiYgaXNJbnNpZGVQYWNrYWdlKSB7XG4gICAgICAgIGNvbnN0IG5ld0ZpbGVQYXRoID0gcmVzb2x2ZShuZ2NjRm9sZGVyLCByZWxhdGl2ZVBhdGgpO1xuICAgICAgICB0aGlzLmZzLmVuc3VyZURpcihkaXJuYW1lKG5ld0ZpbGVQYXRoKSk7XG4gICAgICAgIHRoaXMuZnMuY29weUZpbGUoYWJzb2x1dGVGcm9tU291cmNlRmlsZShzb3VyY2VGaWxlKSwgbmV3RmlsZVBhdGgpO1xuICAgICAgfVxuICAgIH0pO1xuICB9XG5cbiAgcHJvdGVjdGVkIHdyaXRlRmlsZShmaWxlOiBGaWxlVG9Xcml0ZSwgcGFja2FnZVBhdGg6IEFic29sdXRlRnNQYXRoLCBuZ2NjRm9sZGVyOiBBYnNvbHV0ZUZzUGF0aCk6XG4gICAgICB2b2lkIHtcbiAgICBpZiAoaXNEdHNQYXRoKGZpbGUucGF0aC5yZXBsYWNlKC9cXC5tYXAkLywgJycpKSkge1xuICAgICAgLy8gVGhpcyBpcyBlaXRoZXIgYC5kLnRzYCBvciBgLmQudHMubWFwYCBmaWxlXG4gICAgICBzdXBlci53cml0ZUZpbGVBbmRCYWNrdXAoZmlsZSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIGNvbnN0IHJlbGF0aXZlUGF0aCA9IHJlbGF0aXZlKHBhY2thZ2VQYXRoLCBmaWxlLnBhdGgpO1xuICAgICAgY29uc3QgbmV3RmlsZVBhdGggPSByZXNvbHZlKG5nY2NGb2xkZXIsIHJlbGF0aXZlUGF0aCk7XG4gICAgICB0aGlzLmZzLmVuc3VyZURpcihkaXJuYW1lKG5ld0ZpbGVQYXRoKSk7XG4gICAgICB0aGlzLmZzLndyaXRlRmlsZShuZXdGaWxlUGF0aCwgZmlsZS5jb250ZW50cyk7XG4gICAgfVxuICB9XG5cbiAgcHJvdGVjdGVkIHJldmVydEZpbGUoZmlsZVBhdGg6IEFic29sdXRlRnNQYXRoLCBwYWNrYWdlUGF0aDogQWJzb2x1dGVGc1BhdGgpOiB2b2lkIHtcbiAgICBpZiAoaXNEdHNQYXRoKGZpbGVQYXRoLnJlcGxhY2UoL1xcLm1hcCQvLCAnJykpKSB7XG4gICAgICAvLyBUaGlzIGlzIGVpdGhlciBgLmQudHNgIG9yIGAuZC50cy5tYXBgIGZpbGVcbiAgICAgIHN1cGVyLnJldmVydEZpbGVBbmRCYWNrdXAoZmlsZVBhdGgpO1xuICAgIH0gZWxzZSBpZiAodGhpcy5mcy5leGlzdHMoZmlsZVBhdGgpKSB7XG4gICAgICBjb25zdCByZWxhdGl2ZVBhdGggPSByZWxhdGl2ZShwYWNrYWdlUGF0aCwgZmlsZVBhdGgpO1xuICAgICAgY29uc3QgbmV3RmlsZVBhdGggPSByZXNvbHZlKHBhY2thZ2VQYXRoLCBOR0NDX0RJUkVDVE9SWSwgcmVsYXRpdmVQYXRoKTtcbiAgICAgIHRoaXMuZnMucmVtb3ZlRmlsZShuZXdGaWxlUGF0aCk7XG4gICAgfVxuICB9XG5cbiAgcHJvdGVjdGVkIHVwZGF0ZVBhY2thZ2VKc29uKFxuICAgICAgZW50cnlQb2ludDogRW50cnlQb2ludCwgZm9ybWF0UHJvcGVydGllczogRW50cnlQb2ludEpzb25Qcm9wZXJ0eVtdLFxuICAgICAgbmdjY0ZvbGRlcjogQWJzb2x1dGVGc1BhdGgpIHtcbiAgICBpZiAoZm9ybWF0UHJvcGVydGllcy5sZW5ndGggPT09IDApIHtcbiAgICAgIC8vIE5vIGZvcm1hdCBwcm9wZXJ0aWVzIG5lZWQgdXBkYXRpbmcuXG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3QgcGFja2FnZUpzb24gPSBlbnRyeVBvaW50LnBhY2thZ2VKc29uO1xuICAgIGNvbnN0IHBhY2thZ2VKc29uUGF0aCA9IGpvaW4oZW50cnlQb2ludC5wYXRoLCAncGFja2FnZS5qc29uJyk7XG5cbiAgICAvLyBBbGwgZm9ybWF0IHByb3BlcnRpZXMgcG9pbnQgdG8gdGhlIHNhbWUgZm9ybWF0LXBhdGguXG4gICAgY29uc3Qgb2xkRm9ybWF0UHJvcCA9IGZvcm1hdFByb3BlcnRpZXNbMF0hO1xuICAgIGNvbnN0IG9sZEZvcm1hdFBhdGggPSBwYWNrYWdlSnNvbltvbGRGb3JtYXRQcm9wXSE7XG4gICAgY29uc3Qgb2xkQWJzRm9ybWF0UGF0aCA9IHJlc29sdmUoZW50cnlQb2ludC5wYXRoLCBvbGRGb3JtYXRQYXRoKTtcbiAgICBjb25zdCBuZXdBYnNGb3JtYXRQYXRoID1cbiAgICAgICAgcmVzb2x2ZShuZ2NjRm9sZGVyLCByZWxhdGl2ZShlbnRyeVBvaW50LnBhY2thZ2VQYXRoLCBvbGRBYnNGb3JtYXRQYXRoKSk7XG4gICAgY29uc3QgbmV3Rm9ybWF0UGF0aCA9IHJlbGF0aXZlKGVudHJ5UG9pbnQucGF0aCwgbmV3QWJzRm9ybWF0UGF0aCk7XG5cbiAgICAvLyBVcGRhdGUgYWxsIHByb3BlcnRpZXMgaW4gYHBhY2thZ2UuanNvbmAgKGJvdGggaW4gbWVtb3J5IGFuZCBvbiBkaXNrKS5cbiAgICBjb25zdCB1cGRhdGUgPSB0aGlzLnBrZ0pzb25VcGRhdGVyLmNyZWF0ZVVwZGF0ZSgpO1xuXG4gICAgZm9yIChjb25zdCBmb3JtYXRQcm9wZXJ0eSBvZiBmb3JtYXRQcm9wZXJ0aWVzKSB7XG4gICAgICBpZiAocGFja2FnZUpzb25bZm9ybWF0UHJvcGVydHldICE9PSBvbGRGb3JtYXRQYXRoKSB7XG4gICAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICAgIGBVbmFibGUgdG8gdXBkYXRlICcke3BhY2thZ2VKc29uUGF0aH0nOiBGb3JtYXQgcHJvcGVydGllcyBgICtcbiAgICAgICAgICAgIGAoJHtmb3JtYXRQcm9wZXJ0aWVzLmpvaW4oJywgJyl9KSBtYXAgdG8gbW9yZSB0aGFuIG9uZSBmb3JtYXQtcGF0aC5gKTtcbiAgICAgIH1cblxuICAgICAgdXBkYXRlLmFkZENoYW5nZShcbiAgICAgICAgICBbYCR7Zm9ybWF0UHJvcGVydHl9JHtOR0NDX1BST1BFUlRZX0VYVEVOU0lPTn1gXSwgbmV3Rm9ybWF0UGF0aCwge2JlZm9yZTogZm9ybWF0UHJvcGVydHl9KTtcbiAgICB9XG5cbiAgICB1cGRhdGUud3JpdGVDaGFuZ2VzKHBhY2thZ2VKc29uUGF0aCwgcGFja2FnZUpzb24pO1xuICB9XG5cbiAgcHJvdGVjdGVkIHJldmVydFBhY2thZ2VKc29uKGVudHJ5UG9pbnQ6IEVudHJ5UG9pbnQsIGZvcm1hdFByb3BlcnRpZXM6IEVudHJ5UG9pbnRKc29uUHJvcGVydHlbXSkge1xuICAgIGlmIChmb3JtYXRQcm9wZXJ0aWVzLmxlbmd0aCA9PT0gMCkge1xuICAgICAgLy8gTm8gZm9ybWF0IHByb3BlcnRpZXMgbmVlZCByZXZlcnRpbmcuXG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3QgcGFja2FnZUpzb24gPSBlbnRyeVBvaW50LnBhY2thZ2VKc29uO1xuICAgIGNvbnN0IHBhY2thZ2VKc29uUGF0aCA9IGpvaW4oZW50cnlQb2ludC5wYXRoLCAncGFja2FnZS5qc29uJyk7XG5cbiAgICAvLyBSZXZlcnQgYWxsIHByb3BlcnRpZXMgaW4gYHBhY2thZ2UuanNvbmAgKGJvdGggaW4gbWVtb3J5IGFuZCBvbiBkaXNrKS5cbiAgICAvLyBTaW5jZSBgdXBkYXRlUGFja2FnZUpzb24oKWAgb25seSBhZGRzIHByb3BlcnRpZXMsIGl0IGlzIHNhZmUgdG8ganVzdCByZW1vdmUgdGhlbSAoaWYgdGhleVxuICAgIC8vIGV4aXN0KS5cbiAgICBjb25zdCB1cGRhdGUgPSB0aGlzLnBrZ0pzb25VcGRhdGVyLmNyZWF0ZVVwZGF0ZSgpO1xuXG4gICAgZm9yIChjb25zdCBmb3JtYXRQcm9wZXJ0eSBvZiBmb3JtYXRQcm9wZXJ0aWVzKSB7XG4gICAgICB1cGRhdGUuYWRkQ2hhbmdlKFtgJHtmb3JtYXRQcm9wZXJ0eX0ke05HQ0NfUFJPUEVSVFlfRVhURU5TSU9OfWBdLCB1bmRlZmluZWQpO1xuICAgIH1cblxuICAgIHVwZGF0ZS53cml0ZUNoYW5nZXMocGFja2FnZUpzb25QYXRoLCBwYWNrYWdlSnNvbik7XG4gIH1cbn1cbiJdfQ==