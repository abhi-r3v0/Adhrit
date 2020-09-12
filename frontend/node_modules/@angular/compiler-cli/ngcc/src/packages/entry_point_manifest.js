(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/packages/entry_point_manifest", ["require", "exports", "tslib", "crypto", "@angular/compiler-cli/ngcc/src/packages/build_marker", "@angular/compiler-cli/ngcc/src/packages/entry_point"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.InvalidatingEntryPointManifest = exports.EntryPointManifest = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var crypto_1 = require("crypto");
    var build_marker_1 = require("@angular/compiler-cli/ngcc/src/packages/build_marker");
    var entry_point_1 = require("@angular/compiler-cli/ngcc/src/packages/entry_point");
    /**
     * Manages reading and writing a manifest file that contains a list of all the entry-points that
     * were found below a given basePath.
     *
     * This is a super-set of the entry-points that are actually processed for a given run of ngcc,
     * since some may already be processed, or excluded if they do not have the required format.
     */
    var EntryPointManifest = /** @class */ (function () {
        function EntryPointManifest(fs, config, logger) {
            this.fs = fs;
            this.config = config;
            this.logger = logger;
        }
        /**
         * Try to get the entry-point info from a manifest file for the given `basePath` if it exists and
         * is not out of date.
         *
         * Reasons for the manifest to be out of date are:
         *
         * * the file does not exist
         * * the ngcc version has changed
         * * the package lock-file (i.e. yarn.lock or package-lock.json) has changed
         * * the project configuration has changed
         * * one or more entry-points in the manifest are not valid
         *
         * @param basePath The path that would contain the entry-points and the manifest file.
         * @returns an array of entry-point information for all entry-points found below the given
         * `basePath` or `null` if the manifest was out of date.
         */
        EntryPointManifest.prototype.readEntryPointsUsingManifest = function (basePath) {
            var e_1, _a;
            try {
                if (this.fs.basename(basePath) !== 'node_modules') {
                    return null;
                }
                var manifestPath = this.getEntryPointManifestPath(basePath);
                if (!this.fs.exists(manifestPath)) {
                    return null;
                }
                var computedLockFileHash = this.computeLockFileHash(basePath);
                if (computedLockFileHash === null) {
                    return null;
                }
                var _b = JSON.parse(this.fs.readFile(manifestPath)), ngccVersion = _b.ngccVersion, configFileHash = _b.configFileHash, lockFileHash = _b.lockFileHash, entryPointPaths = _b.entryPointPaths;
                if (ngccVersion !== build_marker_1.NGCC_VERSION || configFileHash !== this.config.hash ||
                    lockFileHash !== computedLockFileHash) {
                    return null;
                }
                this.logger.debug("Entry-point manifest found for " + basePath + " so loading entry-point information directly.");
                var startTime = Date.now();
                var entryPoints = [];
                try {
                    for (var entryPointPaths_1 = tslib_1.__values(entryPointPaths), entryPointPaths_1_1 = entryPointPaths_1.next(); !entryPointPaths_1_1.done; entryPointPaths_1_1 = entryPointPaths_1.next()) {
                        var _c = tslib_1.__read(entryPointPaths_1_1.value, 5), packagePath = _c[0], entryPointPath = _c[1], _d = _c[2], dependencyPaths = _d === void 0 ? [] : _d, _e = _c[3], missingPaths = _e === void 0 ? [] : _e, _f = _c[4], deepImportPaths = _f === void 0 ? [] : _f;
                        var result = entry_point_1.getEntryPointInfo(this.fs, this.config, this.logger, this.fs.resolve(basePath, packagePath), this.fs.resolve(basePath, entryPointPath));
                        if (!entry_point_1.isEntryPoint(result)) {
                            throw new Error("The entry-point manifest at " + manifestPath + " contained an invalid pair of package paths: [" + packagePath + ", " + entryPointPath + "]");
                        }
                        else {
                            entryPoints.push({
                                entryPoint: result,
                                depInfo: {
                                    dependencies: new Set(dependencyPaths),
                                    missing: new Set(missingPaths),
                                    deepImports: new Set(deepImportPaths),
                                }
                            });
                        }
                    }
                }
                catch (e_1_1) { e_1 = { error: e_1_1 }; }
                finally {
                    try {
                        if (entryPointPaths_1_1 && !entryPointPaths_1_1.done && (_a = entryPointPaths_1.return)) _a.call(entryPointPaths_1);
                    }
                    finally { if (e_1) throw e_1.error; }
                }
                var duration = Math.round((Date.now() - startTime) / 100) / 10;
                this.logger.debug("Reading entry-points using the manifest entries took " + duration + "s.");
                return entryPoints;
            }
            catch (e) {
                this.logger.warn("Unable to read the entry-point manifest for " + basePath + ":\n", e.stack || e.toString());
                return null;
            }
        };
        /**
         * Write a manifest file at the given `basePath`.
         *
         * The manifest includes the current ngcc version and hashes of the package lock-file and current
         * project config. These will be used to check whether the manifest file is out of date. See
         * `readEntryPointsUsingManifest()`.
         *
         * @param basePath The path where the manifest file is to be written.
         * @param entryPoints A collection of entry-points to record in the manifest.
         */
        EntryPointManifest.prototype.writeEntryPointManifest = function (basePath, entryPoints) {
            var _this = this;
            if (this.fs.basename(basePath) !== 'node_modules') {
                return;
            }
            var lockFileHash = this.computeLockFileHash(basePath);
            if (lockFileHash === null) {
                return;
            }
            var manifest = {
                ngccVersion: build_marker_1.NGCC_VERSION,
                configFileHash: this.config.hash,
                lockFileHash: lockFileHash,
                entryPointPaths: entryPoints.map(function (e) {
                    var entryPointPaths = [
                        _this.fs.relative(basePath, e.entryPoint.packagePath),
                        _this.fs.relative(basePath, e.entryPoint.path),
                    ];
                    // Only add depInfo arrays if needed.
                    if (e.depInfo.dependencies.size > 0) {
                        entryPointPaths[2] = Array.from(e.depInfo.dependencies);
                    }
                    else if (e.depInfo.missing.size > 0 || e.depInfo.deepImports.size > 0) {
                        entryPointPaths[2] = [];
                    }
                    if (e.depInfo.missing.size > 0) {
                        entryPointPaths[3] = Array.from(e.depInfo.missing);
                    }
                    else if (e.depInfo.deepImports.size > 0) {
                        entryPointPaths[3] = [];
                    }
                    if (e.depInfo.deepImports.size > 0) {
                        entryPointPaths[4] = Array.from(e.depInfo.deepImports);
                    }
                    return entryPointPaths;
                }),
            };
            this.fs.writeFile(this.getEntryPointManifestPath(basePath), JSON.stringify(manifest));
        };
        EntryPointManifest.prototype.getEntryPointManifestPath = function (basePath) {
            return this.fs.resolve(basePath, '__ngcc_entry_points__.json');
        };
        EntryPointManifest.prototype.computeLockFileHash = function (basePath) {
            var e_2, _a;
            var directory = this.fs.dirname(basePath);
            try {
                for (var _b = tslib_1.__values(['yarn.lock', 'package-lock.json']), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var lockFileName = _c.value;
                    var lockFilePath = this.fs.resolve(directory, lockFileName);
                    if (this.fs.exists(lockFilePath)) {
                        var lockFileContents = this.fs.readFile(lockFilePath);
                        return crypto_1.createHash('md5').update(lockFileContents).digest('hex');
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
            return null;
        };
        return EntryPointManifest;
    }());
    exports.EntryPointManifest = EntryPointManifest;
    /**
     * A specialized implementation of the `EntryPointManifest` that can be used to invalidate the
     * current manifest file.
     *
     * It always returns `null` from the `readEntryPointsUsingManifest()` method, which forces a new
     * manifest to be created, which will overwrite the current file when `writeEntryPointManifest()`
     * is called.
     */
    var InvalidatingEntryPointManifest = /** @class */ (function (_super) {
        tslib_1.__extends(InvalidatingEntryPointManifest, _super);
        function InvalidatingEntryPointManifest() {
            return _super !== null && _super.apply(this, arguments) || this;
        }
        InvalidatingEntryPointManifest.prototype.readEntryPointsUsingManifest = function (_basePath) {
            return null;
        };
        return InvalidatingEntryPointManifest;
    }(EntryPointManifest));
    exports.InvalidatingEntryPointManifest = InvalidatingEntryPointManifest;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZW50cnlfcG9pbnRfbWFuaWZlc3QuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvcGFja2FnZXMvZW50cnlfcG9pbnRfbWFuaWZlc3QudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztJQUFBOzs7Ozs7T0FNRztJQUNILGlDQUFrQztJQU1sQyxxRkFBNEM7SUFFNUMsbUZBQThEO0lBRTlEOzs7Ozs7T0FNRztJQUNIO1FBQ0UsNEJBQW9CLEVBQWMsRUFBVSxNQUF5QixFQUFVLE1BQWM7WUFBekUsT0FBRSxHQUFGLEVBQUUsQ0FBWTtZQUFVLFdBQU0sR0FBTixNQUFNLENBQW1CO1lBQVUsV0FBTSxHQUFOLE1BQU0sQ0FBUTtRQUFHLENBQUM7UUFFakc7Ozs7Ozs7Ozs7Ozs7OztXQWVHO1FBQ0gseURBQTRCLEdBQTVCLFVBQTZCLFFBQXdCOztZQUNuRCxJQUFJO2dCQUNGLElBQUksSUFBSSxDQUFDLEVBQUUsQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLEtBQUssY0FBYyxFQUFFO29CQUNqRCxPQUFPLElBQUksQ0FBQztpQkFDYjtnQkFFRCxJQUFNLFlBQVksR0FBRyxJQUFJLENBQUMseUJBQXlCLENBQUMsUUFBUSxDQUFDLENBQUM7Z0JBQzlELElBQUksQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLE1BQU0sQ0FBQyxZQUFZLENBQUMsRUFBRTtvQkFDakMsT0FBTyxJQUFJLENBQUM7aUJBQ2I7Z0JBRUQsSUFBTSxvQkFBb0IsR0FBRyxJQUFJLENBQUMsbUJBQW1CLENBQUMsUUFBUSxDQUFDLENBQUM7Z0JBQ2hFLElBQUksb0JBQW9CLEtBQUssSUFBSSxFQUFFO29CQUNqQyxPQUFPLElBQUksQ0FBQztpQkFDYjtnQkFFSyxJQUFBLEtBQ0YsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLFFBQVEsQ0FBQyxZQUFZ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LENBQUMsQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDLENBQUM7cUJBQ2pFO2lCQUNGOzs7Ozs7Ozs7WUFDRCxPQUFPLElBQUksQ0FBQztRQUNkLENBQUM7UUFDSCx5QkFBQztJQUFELENBQUMsQUE5SUQsSUE4SUM7SUE5SVksZ0RBQWtCO0lBZ0ovQjs7Ozs7OztPQU9HO0lBQ0g7UUFBb0QsMERBQWtCO1FBQXRFOztRQUlBLENBQUM7UUFIQyxxRUFBNEIsR0FBNUIsVUFBNkIsU0FBeUI7WUFDcEQsT0FBTyxJQUFJLENBQUM7UUFDZCxDQUFDO1FBQ0gscUNBQUM7SUFBRCxDQUFDLEFBSkQsQ0FBb0Qsa0JBQWtCLEdBSXJFO0lBSlksd0VBQThCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQge2NyZWF0ZUhhc2h9IGZyb20gJ2NyeXB0byc7XG5cbmltcG9ydCB7QWJzb2x1dGVGc1BhdGgsIEZpbGVTeXN0ZW0sIFBhdGhTZWdtZW50fSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvZmlsZV9zeXN0ZW0nO1xuaW1wb3J0IHtFbnRyeVBvaW50V2l0aERlcGVuZGVuY2llc30gZnJvbSAnLi4vZGVwZW5kZW5jaWVzL2RlcGVuZGVuY3lfaG9zdCc7XG5pbXBvcnQge0xvZ2dlcn0gZnJvbSAnLi4vbG9nZ2luZy9sb2dnZXInO1xuXG5pbXBvcnQge05HQ0NfVkVSU0lPTn0gZnJvbSAnLi9idWlsZF9tYXJrZXInO1xuaW1wb3J0IHtOZ2NjQ29uZmlndXJhdGlvbn0gZnJvbSAnLi9jb25maWd1cmF0aW9uJztcbmltcG9ydCB7Z2V0RW50cnlQb2ludEluZm8sIGlzRW50cnlQb2ludH0gZnJvbSAnLi9lbnRyeV9wb2ludCc7XG5cbi8qKlxuICogTWFuYWdlcyByZWFkaW5nIGFuZCB3cml0aW5nIGEgbWFuaWZlc3QgZmlsZSB0aGF0IGNvbnRhaW5zIGEgbGlzdCBvZiBhbGwgdGhlIGVudHJ5LXBvaW50cyB0aGF0XG4gKiB3ZXJlIGZvdW5kIGJlbG93IGEgZ2l2ZW4gYmFzZVBhdGguXG4gKlxuICogVGhpcyBpcyBhIHN1cGVyLXNldCBvZiB0aGUgZW50cnktcG9pbnRzIHRoYXQgYXJlIGFjdHVhbGx5IHByb2Nlc3NlZCBmb3IgYSBnaXZlbiBydW4gb2YgbmdjYyxcbiAqIHNpbmNlIHNvbWUgbWF5IGFscmVhZHkgYmUgcHJvY2Vzc2VkLCBvciBleGNsdWRlZCBpZiB0aGV5IGRvIG5vdCBoYXZlIHRoZSByZXF1aXJlZCBmb3JtYXQuXG4gKi9cbmV4cG9ydCBjbGFzcyBFbnRyeVBvaW50TWFuaWZlc3Qge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGZzOiBGaWxlU3lzdGVtLCBwcml2YXRlIGNvbmZpZzogTmdjY0NvbmZpZ3VyYXRpb24sIHByaXZhdGUgbG9nZ2VyOiBMb2dnZXIpIHt9XG5cbiAgLyoqXG4gICAqIFRyeSB0byBnZXQgdGhlIGVudHJ5LXBvaW50IGluZm8gZnJvbSBhIG1hbmlmZXN0IGZpbGUgZm9yIHRoZSBnaXZlbiBgYmFzZVBhdGhgIGlmIGl0IGV4aXN0cyBhbmRcbiAgICogaXMgbm90IG91dCBvZiBkYXRlLlxuICAgKlxuICAgKiBSZWFzb25zIGZvciB0aGUgbWFuaWZlc3QgdG8gYmUgb3V0IG9mIGRhdGUgYXJlOlxuICAgKlxuICAgKiAqIHRoZSBmaWxlIGRvZXMgbm90IGV4aXN0XG4gICAqICogdGhlIG5nY2MgdmVyc2lvbiBoYXMgY2hhbmdlZFxuICAgKiAqIHRoZSBwYWNrYWdlIGxvY2stZmlsZSAoaS5lLiB5YXJuLmxvY2sgb3IgcGFja2FnZS1sb2NrLmpzb24pIGhhcyBjaGFuZ2VkXG4gICAqICogdGhlIHByb2plY3QgY29uZmlndXJhdGlvbiBoYXMgY2hhbmdlZFxuICAgKiAqIG9uZSBvciBtb3JlIGVudHJ5LXBvaW50cyBpbiB0aGUgbWFuaWZlc3QgYXJlIG5vdCB2YWxpZFxuICAgKlxuICAgKiBAcGFyYW0gYmFzZVBhdGggVGhlIHBhdGggdGhhdCB3b3VsZCBjb250YWluIHRoZSBlbnRyeS1wb2ludHMgYW5kIHRoZSBtYW5pZmVzdCBmaWxlLlxuICAgKiBAcmV0dXJucyBhbiBhcnJheSBvZiBlbnRyeS1wb2ludCBpbmZvcm1hdGlvbiBmb3IgYWxsIGVudHJ5LXBvaW50cyBmb3VuZCBiZWxvdyB0aGUgZ2l2ZW5cbiAgICogYGJhc2VQYXRoYCBvciBgbnVsbGAgaWYgdGhlIG1hbmlmZXN0IHdhcyBvdXQgb2YgZGF0ZS5cbiAgICovXG4gIHJlYWRFbnRyeVBvaW50c1VzaW5nTWFuaWZlc3QoYmFzZVBhdGg6IEFic29sdXRlRnNQYXRoKTogRW50cnlQb2ludFdpdGhEZXBlbmRlbmNpZXNbXXxudWxsIHtcbiAgICB0cnkge1xuICAgICAgaWYgKHRoaXMuZnMuYmFzZW5hbWUoYmFzZVBhdGgpICE9PSAnbm9kZV9tb2R1bGVzJykge1xuICAgICAgICByZXR1cm4gbnVsbDtcbiAgICAgIH1cblxuICAgICAgY29uc3QgbWFuaWZlc3RQYXRoID0gdGhpcy5nZXRFbnRyeVBvaW50TWFuaWZlc3RQYXRoKGJhc2VQYXRoKTtcbiAgICAgIGlmICghdGhpcy5mcy5leGlzdHMobWFuaWZlc3RQYXRoKSkge1xuICAgICAgICByZXR1cm4gbnVsbDtcbiAgICAgIH1cblxuICAgICAgY29uc3QgY29tcHV0ZWRMb2NrRmlsZUhhc2ggPSB0aGlzLmNvbXB1dGVMb2NrRmlsZUhhc2goYmFzZVBhdGgpO1xuICAgICAgaWYgKGNvbXB1dGVkTG9ja0ZpbGVIYXNoID09PSBudWxsKSB7XG4gICAgICAgIHJldHVybiBudWxsO1xuICAgICAgfVxuXG4gICAgICBjb25zdCB7bmdjY1ZlcnNpb24sIGNvbmZpZ0ZpbGVIYXNoLCBsb2NrRmlsZUhhc2gsIGVudHJ5UG9pbnRQYXRoc30gPVxuICAgICAgICAgIEpTT04ucGFyc2UodGhpcy5mcy5yZWFkRmlsZShtYW5pZmVzdFBhdGgpKSBhcyBFbnRyeVBvaW50TWFuaWZlc3RGaWxlO1xuICAgICAgaWYgKG5nY2NWZXJzaW9uICE9PSBOR0NDX1ZFUlNJT04gfHwgY29uZmlnRmlsZUhhc2ggIT09IHRoaXMuY29uZmlnLmhhc2ggfHxcbiAgICAgICAgICBsb2NrRmlsZUhhc2ggIT09IGNvbXB1dGVkTG9ja0ZpbGVIYXNoKSB7XG4gICAgICAgIHJldHVybiBudWxsO1xuICAgICAgfVxuXG4gICAgICB0aGlzLmxvZ2dlci5kZWJ1ZyhgRW50cnktcG9pbnQgbWFuaWZlc3QgZm91bmQgZm9yICR7XG4gICAgICAgICAgYmFzZVBhdGh9IHNvIGxvYWRpbmcgZW50cnktcG9pbnQgaW5mb3JtYXRpb24gZGlyZWN0bHkuYCk7XG4gICAgICBjb25zdCBzdGFydFRpbWUgPSBEYXRlLm5vdygpO1xuXG4gICAgICBjb25zdCBlbnRyeVBvaW50czogRW50cnlQb2ludFdpdGhEZXBlbmRlbmNpZXNbXSA9IFtdO1xuICAgICAgZm9yIChjb25zdFxuICAgICAgICAgICAgICAgW3BhY2thZ2VQYXRoLCBlbnRyeVBvaW50UGF0aCwgZGVwZW5kZW5jeVBhdGhzID0gW10sIG1pc3NpbmdQYXRocyA9IFtdLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGVlcEltcG9ydFBhdGhzID0gW11dIG9mIGVudHJ5UG9pbnRQYXRocykge1xuICAgICAgICBjb25zdCByZXN1bHQgPSBnZXRFbnRyeVBvaW50SW5mbyhcbiAgICAgICAgICAgIHRoaXMuZnMsIHRoaXMuY29uZmlnLCB0aGlzLmxvZ2dlciwgdGhpcy5mcy5yZXNvbHZlKGJhc2VQYXRoLCBwYWNrYWdlUGF0aCksXG4gICAgICAgICAgICB0aGlzLmZzLnJlc29sdmUoYmFzZVBhdGgsIGVudHJ5UG9pbnRQYXRoKSk7XG4gICAgICAgIGlmICghaXNFbnRyeVBvaW50KHJlc3VsdCkpIHtcbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoYFRoZSBlbnRyeS1wb2ludCBtYW5pZmVzdCBhdCAke1xuICAgICAgICAgICAgICBtYW5pZmVzdFBhdGh9IGNvbnRhaW5lZCBhbiBpbnZhbGlkIHBhaXIgb2YgcGFja2FnZSBwYXRoczogWyR7cGFja2FnZVBhdGh9LCAke1xuICAgICAgICAgICAgICBlbnRyeVBvaW50UGF0aH1dYCk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgZW50cnlQb2ludHMucHVzaCh7XG4gICAgICAgICAgICBlbnRyeVBvaW50OiByZXN1bHQsXG4gICAgICAgICAgICBkZXBJbmZvOiB7XG4gICAgICAgICAgICAgIGRlcGVuZGVuY2llczogbmV3IFNldChkZXBlbmRlbmN5UGF0aHMpLFxuICAgICAgICAgICAgICBtaXNzaW5nOiBuZXcgU2V0KG1pc3NpbmdQYXRocyksXG4gICAgICAgICAgICAgIGRlZXBJbXBvcnRzOiBuZXcgU2V0KGRlZXBJbXBvcnRQYXRocyksXG4gICAgICAgICAgICB9XG4gICAgICAgICAgfSk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIGNvbnN0IGR1cmF0aW9uID0gTWF0aC5yb3VuZCgoRGF0ZS5ub3coKSAtIHN0YXJ0VGltZSkgLyAxMDApIC8gMTA7XG4gICAgICB0aGlzLmxvZ2dlci5kZWJ1ZyhgUmVhZGluZyBlbnRyeS1wb2ludHMgdXNpbmcgdGhlIG1hbmlmZXN0IGVudHJpZXMgdG9vayAke2R1cmF0aW9ufXMuYCk7XG4gICAgICByZXR1cm4gZW50cnlQb2ludHM7XG4gICAgfSBjYXRjaCAoZSkge1xuICAgICAgdGhpcy5sb2dnZXIud2FybihcbiAgICAgICAgICBgVW5hYmxlIHRvIHJlYWQgdGhlIGVudHJ5LXBvaW50IG1hbmlmZXN0IGZvciAke2Jhc2VQYXRofTpcXG5gLCBlLnN0YWNrIHx8IGUudG9TdHJpbmcoKSk7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogV3JpdGUgYSBtYW5pZmVzdCBmaWxlIGF0IHRoZSBnaXZlbiBgYmFzZVBhdGhgLlxuICAgKlxuICAgKiBUaGUgbWFuaWZlc3QgaW5jbHVkZXMgdGhlIGN1cnJlbnQgbmdjYyB2ZXJzaW9uIGFuZCBoYXNoZXMgb2YgdGhlIHBhY2thZ2UgbG9jay1maWxlIGFuZCBjdXJyZW50XG4gICAqIHByb2plY3QgY29uZmlnLiBUaGVzZSB3aWxsIGJlIHVzZWQgdG8gY2hlY2sgd2hldGhlciB0aGUgbWFuaWZlc3QgZmlsZSBpcyBvdXQgb2YgZGF0ZS4gU2VlXG4gICAqIGByZWFkRW50cnlQb2ludHNVc2luZ01hbmlmZXN0KClgLlxuICAgKlxuICAgKiBAcGFyYW0gYmFzZVBhdGggVGhlIHBhdGggd2hlcmUgdGhlIG1hbmlmZXN0IGZpbGUgaXMgdG8gYmUgd3JpdHRlbi5cbiAgICogQHBhcmFtIGVudHJ5UG9pbnRzIEEgY29sbGVjdGlvbiBvZiBlbnRyeS1wb2ludHMgdG8gcmVjb3JkIGluIHRoZSBtYW5pZmVzdC5cbiAgICovXG4gIHdyaXRlRW50cnlQb2ludE1hbmlmZXN0KGJhc2VQYXRoOiBBYnNvbHV0ZUZzUGF0aCwgZW50cnlQb2ludHM6IEVudHJ5UG9pbnRXaXRoRGVwZW5kZW5jaWVzW10pOlxuICAgICAgdm9pZCB7XG4gICAgaWYgKHRoaXMuZnMuYmFzZW5hbWUoYmFzZVBhdGgpICE9PSAnbm9kZV9tb2R1bGVzJykge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIGNvbnN0IGxvY2tGaWxlSGFzaCA9IHRoaXMuY29tcHV0ZUxvY2tGaWxlSGFzaChiYXNlUGF0aCk7XG4gICAgaWYgKGxvY2tGaWxlSGFzaCA9PT0gbnVsbCkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cbiAgICBjb25zdCBtYW5pZmVzdDogRW50cnlQb2ludE1hbmlmZXN0RmlsZSA9IHtcbiAgICAgIG5nY2NWZXJzaW9uOiBOR0NDX1ZFUlNJT04sXG4gICAgICBjb25maWdGaWxlSGFzaDogdGhpcy5jb25maWcuaGFzaCxcbiAgICAgIGxvY2tGaWxlSGFzaDogbG9ja0ZpbGVIYXNoLFxuICAgICAgZW50cnlQb2ludFBhdGhzOiBlbnRyeVBvaW50cy5tYXAoZSA9PiB7XG4gICAgICAgIGNvbnN0IGVudHJ5UG9pbnRQYXRoczogRW50cnlQb2ludFBhdGhzID0gW1xuICAgICAgICAgIHRoaXMuZnMucmVsYXRpdmUoYmFzZVBhdGgsIGUuZW50cnlQb2ludC5wYWNrYWdlUGF0aCksXG4gICAgICAgICAgdGhpcy5mcy5yZWxhdGl2ZShiYXNlUGF0aCwgZS5lbnRyeVBvaW50LnBhdGgpLFxuICAgICAgICBdO1xuICAgICAgICAvLyBPbmx5IGFkZCBkZXBJbmZvIGFycmF5cyBpZiBuZWVkZWQuXG4gICAgICAgIGlmIChlLmRlcEluZm8uZGVwZW5kZW5jaWVzLnNpemUgPiAwKSB7XG4gICAgICAgICAgZW50cnlQb2ludFBhdGhzWzJdID0gQXJyYXkuZnJvbShlLmRlcEluZm8uZGVwZW5kZW5jaWVzKTtcbiAgICAgICAgfSBlbHNlIGlmIChlLmRlcEluZm8ubWlzc2luZy5zaXplID4gMCB8fCBlLmRlcEluZm8uZGVlcEltcG9ydHMuc2l6ZSA+IDApIHtcbiAgICAgICAgICBlbnRyeVBvaW50UGF0aHNbMl0gPSBbXTtcbiAgICAgICAgfVxuICAgICAgICBpZiAoZS5kZXBJbmZvLm1pc3Npbmcuc2l6ZSA+IDApIHtcbiAgICAgICAgICBlbnRyeVBvaW50UGF0aHNbM10gPSBBcnJheS5mcm9tKGUuZGVwSW5mby5taXNzaW5nKTtcbiAgICAgICAgfSBlbHNlIGlmIChlLmRlcEluZm8uZGVlcEltcG9ydHMuc2l6ZSA+IDApIHtcbiAgICAgICAgICBlbnRyeVBvaW50UGF0aHNbM10gPSBbXTtcbiAgICAgICAgfVxuICAgICAgICBpZiAoZS5kZXBJbmZvLmRlZXBJbXBvcnRzLnNpemUgPiAwKSB7XG4gICAgICAgICAgZW50cnlQb2ludFBhdGhzWzRdID0gQXJyYXkuZnJvbShlLmRlcEluZm8uZGVlcEltcG9ydHMpO1xuICAgICAgICB9XG4gICAgICAgIHJldHVybiBlbnRyeVBvaW50UGF0aHM7XG4gICAgICB9KSxcbiAgICB9O1xuICAgIHRoaXMuZnMud3JpdGVGaWxlKHRoaXMuZ2V0RW50cnlQb2ludE1hbmlmZXN0UGF0aChiYXNlUGF0aCksIEpTT04uc3RyaW5naWZ5KG1hbmlmZXN0KSk7XG4gIH1cblxuICBwcml2YXRlIGdldEVudHJ5UG9pbnRNYW5pZmVzdFBhdGgoYmFzZVBhdGg6IEFic29sdXRlRnNQYXRoKSB7XG4gICAgcmV0dXJuIHRoaXMuZnMucmVzb2x2ZShiYXNlUGF0aCwgJ19fbmdjY19lbnRyeV9wb2ludHNfXy5qc29uJyk7XG4gIH1cblxuICBwcml2YXRlIGNvbXB1dGVMb2NrRmlsZUhhc2goYmFzZVBhdGg6IEFic29sdXRlRnNQYXRoKTogc3RyaW5nfG51bGwge1xuICAgIGNvbnN0IGRpcmVjdG9yeSA9IHRoaXMuZnMuZGlybmFtZShiYXNlUGF0aCk7XG4gICAgZm9yIChjb25zdCBsb2NrRmlsZU5hbWUgb2YgWyd5YXJuLmxvY2snLCAncGFja2FnZS1sb2NrLmpzb24nXSkge1xuICAgICAgY29uc3QgbG9ja0ZpbGVQYXRoID0gdGhpcy5mcy5yZXNvbHZlKGRpcmVjdG9yeSwgbG9ja0ZpbGVOYW1lKTtcbiAgICAgIGlmICh0aGlzLmZzLmV4aXN0cyhsb2NrRmlsZVBhdGgpKSB7XG4gICAgICAgIGNvbnN0IGxvY2tGaWxlQ29udGVudHMgPSB0aGlzLmZzLnJlYWRGaWxlKGxvY2tGaWxlUGF0aCk7XG4gICAgICAgIHJldHVybiBjcmVhdGVIYXNoKCdtZDUnKS51cGRhdGUobG9ja0ZpbGVDb250ZW50cykuZGlnZXN0KCdoZXgnKTtcbiAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbn1cblxuLyoqXG4gKiBBIHNwZWNpYWxpemVkIGltcGxlbWVudGF0aW9uIG9mIHRoZSBgRW50cnlQb2ludE1hbmlmZXN0YCB0aGF0IGNhbiBiZSB1c2VkIHRvIGludmFsaWRhdGUgdGhlXG4gKiBjdXJyZW50IG1hbmlmZXN0IGZpbGUuXG4gKlxuICogSXQgYWx3YXlzIHJldHVybnMgYG51bGxgIGZyb20gdGhlIGByZWFkRW50cnlQb2ludHNVc2luZ01hbmlmZXN0KClgIG1ldGhvZCwgd2hpY2ggZm9yY2VzIGEgbmV3XG4gKiBtYW5pZmVzdCB0byBiZSBjcmVhdGVkLCB3aGljaCB3aWxsIG92ZXJ3cml0ZSB0aGUgY3VycmVudCBmaWxlIHdoZW4gYHdyaXRlRW50cnlQb2ludE1hbmlmZXN0KClgXG4gKiBpcyBjYWxsZWQuXG4gKi9cbmV4cG9ydCBjbGFzcyBJbnZhbGlkYXRpbmdFbnRyeVBvaW50TWFuaWZlc3QgZXh0ZW5kcyBFbnRyeVBvaW50TWFuaWZlc3Qge1xuICByZWFkRW50cnlQb2ludHNVc2luZ01hbmlmZXN0KF9iYXNlUGF0aDogQWJzb2x1dGVGc1BhdGgpOiBFbnRyeVBvaW50V2l0aERlcGVuZGVuY2llc1tdfG51bGwge1xuICAgIHJldHVybiBudWxsO1xuICB9XG59XG5cbmV4cG9ydCB0eXBlIEVudHJ5UG9pbnRQYXRocyA9IFtcbiAgc3RyaW5nLFxuICBzdHJpbmcsXG4gIEFycmF5PEFic29sdXRlRnNQYXRoPj8sXG4gIEFycmF5PEFic29sdXRlRnNQYXRofFBhdGhTZWdtZW50Pj8sXG4gIEFycmF5PEFic29sdXRlRnNQYXRoPj8sXG5dO1xuXG4vKipcbiAqIFRoZSBKU09OIGZvcm1hdCBvZiB0aGUgbWFuaWZlc3QgZmlsZSB0aGF0IGlzIHdyaXR0ZW4gdG8gZGlzay5cbiAqL1xuZXhwb3J0IGludGVyZmFjZSBFbnRyeVBvaW50TWFuaWZlc3RGaWxlIHtcbiAgbmdjY1ZlcnNpb246IHN0cmluZztcbiAgY29uZmlnRmlsZUhhc2g6IHN0cmluZztcbiAgbG9ja0ZpbGVIYXNoOiBzdHJpbmc7XG4gIGVudHJ5UG9pbnRQYXRoczogRW50cnlQb2ludFBhdGhzW107XG59XG4iXX0=