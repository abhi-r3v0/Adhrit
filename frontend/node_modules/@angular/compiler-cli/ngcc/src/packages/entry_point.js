(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/packages/entry_point", ["require", "exports", "tslib", "canonical-path", "path", "typescript", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/ngcc/src/host/umd_host", "@angular/compiler-cli/ngcc/src/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.getEntryPointFormat = exports.isEntryPoint = exports.getEntryPointInfo = exports.INCOMPATIBLE_ENTRY_POINT = exports.IGNORED_ENTRY_POINT = exports.NO_ENTRY_POINT = exports.SUPPORTED_FORMAT_PROPERTIES = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var canonical_path_1 = require("canonical-path");
    var path_1 = require("path");
    var ts = require("typescript");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var umd_host_1 = require("@angular/compiler-cli/ngcc/src/host/umd_host");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/utils");
    // We need to keep the elements of this const and the `EntryPointJsonProperty` type in sync.
    exports.SUPPORTED_FORMAT_PROPERTIES = ['fesm2015', 'fesm5', 'es2015', 'esm2015', 'esm5', 'main', 'module', 'browser'];
    /**
     * The path does not represent an entry-point, i.e. there is no package.json at the path and there
     * is no config to force an entry-point.
     */
    exports.NO_ENTRY_POINT = 'no-entry-point';
    /**
     * The path represents an entry-point that is `ignored` by an ngcc config.
     */
    exports.IGNORED_ENTRY_POINT = 'ignored-entry-point';
    /**
     * The path has a package.json, but it is not a valid entry-point for ngcc processing.
     */
    exports.INCOMPATIBLE_ENTRY_POINT = 'incompatible-entry-point';
    /**
     * Try to create an entry-point from the given paths and properties.
     *
     * @param packagePath the absolute path to the containing npm package
     * @param entryPointPath the absolute path to the potential entry-point.
     * @returns
     * - An entry-point if it is valid and not ignored.
     * - `NO_ENTRY_POINT` when there is no package.json at the path and there is no config to force an
     *   entry-point,
     * - `IGNORED_ENTRY_POINT` when the entry-point is ignored by an ngcc config.
     * - `INCOMPATIBLE_ENTRY_POINT` when there is a package.json but it is not a valid Angular compiled
     *   entry-point.
     */
    function getEntryPointInfo(fs, config, logger, packagePath, entryPointPath) {
        var packagePackageJsonPath = file_system_1.resolve(packagePath, 'package.json');
        var entryPointPackageJsonPath = file_system_1.resolve(entryPointPath, 'package.json');
        var loadedPackagePackageJson = loadPackageJson(fs, packagePackageJsonPath);
        var loadedEntryPointPackageJson = (packagePackageJsonPath === entryPointPackageJsonPath) ?
            loadedPackagePackageJson :
            loadPackageJson(fs, entryPointPackageJsonPath);
        var _a = getPackageNameAndVersion(fs, packagePath, loadedPackagePackageJson, loadedEntryPointPackageJson), packageName = _a.packageName, packageVersion = _a.packageVersion;
        var packageConfig = config.getPackageConfig(packageName, packagePath, packageVersion);
        var entryPointConfig = packageConfig.entryPoints.get(entryPointPath);
        var entryPointPackageJson;
        if (entryPointConfig === undefined) {
            if (!fs.exists(entryPointPackageJsonPath)) {
                // No `package.json` and no config.
                return exports.NO_ENTRY_POINT;
            }
            else if (loadedEntryPointPackageJson === null) {
                // `package.json` exists but could not be parsed and there is no redeeming config.
                logger.warn("Failed to read entry point info from invalid 'package.json' file: " + entryPointPackageJsonPath);
                return exports.INCOMPATIBLE_ENTRY_POINT;
            }
            else {
                entryPointPackageJson = loadedEntryPointPackageJson;
            }
        }
        else if (entryPointConfig.ignore === true) {
            // Explicitly ignored entry-point.
            return exports.IGNORED_ENTRY_POINT;
        }
        else {
            entryPointPackageJson = mergeConfigAndPackageJson(loadedEntryPointPackageJson, entryPointConfig, packagePath, entryPointPath);
        }
        var typings = entryPointPackageJson.typings || entryPointPackageJson.types ||
            guessTypingsFromPackageJson(fs, entryPointPath, entryPointPackageJson);
        if (typeof typings !== 'string') {
            // Missing the required `typings` property
            return exports.INCOMPATIBLE_ENTRY_POINT;
        }
        // An entry-point is assumed to be compiled by Angular if there is either:
        // * a `metadata.json` file next to the typings entry-point
        // * a custom config for this entry-point
        var metadataPath = file_system_1.resolve(entryPointPath, typings.replace(/\.d\.ts$/, '') + '.metadata.json');
        var compiledByAngular = entryPointConfig !== undefined || fs.exists(metadataPath);
        var entryPointInfo = {
            name: entryPointPackageJson.name,
            path: entryPointPath,
            packageName: packageName,
            packagePath: packagePath,
            packageJson: entryPointPackageJson,
            typings: file_system_1.resolve(entryPointPath, typings),
            compiledByAngular: compiledByAngular,
            ignoreMissingDependencies: entryPointConfig !== undefined ? !!entryPointConfig.ignoreMissingDependencies : false,
            generateDeepReexports: entryPointConfig !== undefined ? !!entryPointConfig.generateDeepReexports : false,
        };
        return entryPointInfo;
    }
    exports.getEntryPointInfo = getEntryPointInfo;
    function isEntryPoint(result) {
        return result !== exports.NO_ENTRY_POINT && result !== exports.INCOMPATIBLE_ENTRY_POINT &&
            result !== exports.IGNORED_ENTRY_POINT;
    }
    exports.isEntryPoint = isEntryPoint;
    /**
     * Convert a package.json property into an entry-point format.
     *
     * @param property The property to convert to a format.
     * @returns An entry-point format or `undefined` if none match the given property.
     */
    function getEntryPointFormat(fs, entryPoint, property) {
        switch (property) {
            case 'fesm2015':
                return 'esm2015';
            case 'fesm5':
                return 'esm5';
            case 'es2015':
                return 'esm2015';
            case 'esm2015':
                return 'esm2015';
            case 'esm5':
                return 'esm5';
            case 'browser':
                var browserFile = entryPoint.packageJson['browser'];
                if (typeof browserFile !== 'string') {
                    return undefined;
                }
                return sniffModuleFormat(fs, file_system_1.join(entryPoint.path, browserFile));
            case 'main':
                var mainFile = entryPoint.packageJson['main'];
                if (mainFile === undefined) {
                    return undefined;
                }
                return sniffModuleFormat(fs, file_system_1.join(entryPoint.path, mainFile));
            case 'module':
                var moduleFilePath = entryPoint.packageJson['module'];
                // As of version 10, the `module` property in `package.json` should point to
                // the ESM2015 format output as per Angular Package format specification. This
                // means that the `module` property captures multiple formats, as old libraries
                // built with the old APF can still be processed. We detect the format by checking
                // the paths that should be used as per APF specification.
                if (typeof moduleFilePath === 'string' && moduleFilePath.includes('esm2015')) {
                    return "esm2015";
                }
                return 'esm5';
            default:
                return undefined;
        }
    }
    exports.getEntryPointFormat = getEntryPointFormat;
    /**
     * Parse the JSON from a `package.json` file.
     * @param packageJsonPath the absolute path to the `package.json` file.
     * @returns JSON from the `package.json` file if it is valid, `null` otherwise.
     */
    function loadPackageJson(fs, packageJsonPath) {
        try {
            return JSON.parse(fs.readFile(packageJsonPath));
        }
        catch (_a) {
            return null;
        }
    }
    function sniffModuleFormat(fs, sourceFilePath) {
        var resolvedPath = utils_1.resolveFileWithPostfixes(fs, sourceFilePath, ['', '.js', '/index.js']);
        if (resolvedPath === null) {
            return undefined;
        }
        var sourceFile = ts.createSourceFile(sourceFilePath, fs.readFile(resolvedPath), ts.ScriptTarget.ES5);
        if (sourceFile.statements.length === 0) {
            return undefined;
        }
        if (ts.isExternalModule(sourceFile)) {
            return 'esm5';
        }
        else if (umd_host_1.parseStatementForUmdModule(sourceFile.statements[0]) !== null) {
            return 'umd';
        }
        else {
            return 'commonjs';
        }
    }
    function mergeConfigAndPackageJson(entryPointPackageJson, entryPointConfig, packagePath, entryPointPath) {
        if (entryPointPackageJson !== null) {
            return tslib_1.__assign(tslib_1.__assign({}, entryPointPackageJson), entryPointConfig.override);
        }
        else {
            var name = path_1.basename(packagePath) + "/" + canonical_path_1.relative(packagePath, entryPointPath);
            return tslib_1.__assign({ name: name }, entryPointConfig.override);
        }
    }
    function guessTypingsFromPackageJson(fs, entryPointPath, entryPointPackageJson) {
        var e_1, _a;
        try {
            for (var SUPPORTED_FORMAT_PROPERTIES_1 = tslib_1.__values(exports.SUPPORTED_FORMAT_PROPERTIES), SUPPORTED_FORMAT_PROPERTIES_1_1 = SUPPORTED_FORMAT_PROPERTIES_1.next(); !SUPPORTED_FORMAT_PROPERTIES_1_1.done; SUPPORTED_FORMAT_PROPERTIES_1_1 = SUPPORTED_FORMAT_PROPERTIES_1.next()) {
                var prop = SUPPORTED_FORMAT_PROPERTIES_1_1.value;
                var field = entryPointPackageJson[prop];
                if (typeof field !== 'string') {
                    // Some crazy packages have things like arrays in these fields!
                    continue;
                }
                var relativeTypingsPath = field.replace(/\.js$/, '.d.ts');
                var typingsPath = file_system_1.resolve(entryPointPath, relativeTypingsPath);
                if (fs.exists(typingsPath)) {
                    return typingsPath;
                }
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (SUPPORTED_FORMAT_PROPERTIES_1_1 && !SUPPORTED_FORMAT_PROPERTIES_1_1.done && (_a = SUPPORTED_FORMAT_PROPERTIES_1.return)) _a.call(SUPPORTED_FORMAT_PROPERTIES_1);
            }
            finally { if (e_1) throw e_1.error; }
        }
        return null;
    }
    /**
     * Find or infer the name and version of a package.
     *
     * - The name is computed based on the `name` property of the package's or the entry-point's
     *   `package.json` file (if available) or inferred from the package's path.
     * - The version is read off of the `version` property of the package's `package.json` file (if
     *   available).
     *
     * @param fs The `FileSystem` instance to use for parsing `packagePath` (if needed).
     * @param packagePath the absolute path to the package.
     * @param packagePackageJson the parsed `package.json` of the package (if available).
     * @param entryPointPackageJson the parsed `package.json` of an entry-point (if available).
     * @returns the computed name and version of the package.
     */
    function getPackageNameAndVersion(fs, packagePath, packagePackageJson, entryPointPackageJson) {
        var _a;
        var packageName;
        if (packagePackageJson !== null) {
            // We have a valid `package.json` for the package: Get the package name from that.
            packageName = packagePackageJson.name;
        }
        else if (entryPointPackageJson !== null) {
            // We have a valid `package.json` for the entry-point: Get the package name from that.
            // This might be a secondary entry-point, so make sure we only keep the main package's name
            // (e.g. only keep `@angular/common` from `@angular/common/http`).
            packageName = /^(?:@[^/]+\/)?[^/]*/.exec(entryPointPackageJson.name)[0];
        }
        else {
            // We don't have a valid `package.json`: Infer the package name from the package's path.
            var lastSegment = fs.basename(packagePath);
            var secondLastSegment = fs.basename(fs.dirname(packagePath));
            packageName =
                secondLastSegment.startsWith('@') ? secondLastSegment + "/" + lastSegment : lastSegment;
        }
        return {
            packageName: packageName,
            packageVersion: (_a = packagePackageJson === null || packagePackageJson === void 0 ? void 0 : packagePackageJson.version) !== null && _a !== void 0 ? _a : null,
        };
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZW50cnlfcG9pbnQuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvcGFja2FnZXMvZW50cnlfcG9pbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztJQUFBOzs7Ozs7T0FNRztJQUNILGlEQUF3QztJQUN4Qyw2QkFBOEI7SUFDOUIsK0JBQWlDO0lBQ2pDLDJFQUF5RjtJQUN6Rix5RUFBNEQ7SUFFNUQsOERBQWtEO0lBcUVsRCw0RkFBNEY7SUFDL0UsUUFBQSwyQkFBMkIsR0FDcEMsQ0FBQyxVQUFVLEVBQUUsT0FBTyxFQUFFLFFBQVEsRUFBRSxTQUFTLEVBQUUsTUFBTSxFQUFFLE1BQU0sRUFBRSxRQUFRLEVBQUUsU0FBUyxDQUFDLENBQUM7SUFHcEY7OztPQUdHO0lBQ1UsUUFBQSxjQUFjLEdBQUcsZ0JBQWdCLENBQUM7SUFFL0M7O09BRUc7SUFDVSxRQUFBLG1CQUFtQixHQUFHLHFCQUFxQixDQUFDO0lBRXpEOztPQUVHO0lBQ1UsUUFBQSx3QkFBd0IsR0FBRywwQkFBMEIsQ0FBQztJQWVuRTs7Ozs7Ozs7Ozs7O09BWUc7SUFDSCxTQUFnQixpQkFBaUIsQ0FDN0IsRUFBYyxFQUFFLE1BQXlCLEVBQUUsTUFBYyxFQUFFLFdBQTJCLEVBQ3RGLGNBQThCO1FBQ2hDLElBQU0sc0JBQXNCLEdBQUcscUJBQU8sQ0FBQyxXQUFXLEVBQUUsY0FBYyxDQUFDLENBQUM7UUFDcEUsSUFBTSx5QkFBeUIsR0FBRyxxQkFBTyxDQUFDLGNBQWMsRUFBRSxjQUFjLENBQUMsQ0FBQztRQUMxRSxJQUFNLHdCQUF3QixHQUFHLGVBQWUsQ0FBQyxFQUFFLEVBQUUsc0JBQXNCLENBQUMsQ0FBQztRQUM3RSxJQUFNLDJCQUEyQixHQUFHLENBQUMsc0JBQXNCLEtBQUsseUJBQXlCLENBQUMsQ0FBQyxDQUFDO1lBQ3hGLHdCQUF3QixDQUFDLENBQUM7WUFD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QixDQUFDO1FBRXhCLElBQUksa0JBQWtCLEtBQUssSUFBSSxFQUFFO1lBQy9CLGtGQUFrRjtZQUNsRixXQUFXLEdBQUcsa0JBQWtCLENBQUMsSUFBSSxDQUFDO1NBQ3ZDO2FBQU0sSUFBSSxxQkFBcUIsS0FBSyxJQUFJLEVBQUU7WUFDekMsc0ZBQXNGO1lBQ3RGLDJGQUEyRjtZQUMzRixrRUFBa0U7WUFDbEUsV0FBVyxHQUFHLHFCQUFxQixDQUFDLElBQUksQ0FBQyxxQkFBcUIsQ0FBQyxJQUFJLENBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQztTQUMxRTthQUFNO1lBQ0wsd0ZBQXdGO1lBQ3hGLElBQU0sV0FBVyxHQUFHLEVBQUUsQ0FBQyxRQUFRLENBQUMsV0FBVyxDQUFDLENBQUM7WUFDN0MsSUFBTSxpQkFBaUIsR0FBRyxFQUFFLENBQUMsUUFBUSxDQUFDLEVBQUUsQ0FBQyxPQUFPLENBQUMsV0FBVyxDQUFDLENBQUMsQ0FBQztZQUUvRCxXQUFXO2dCQUNQLGlCQUFpQixDQUFDLFVBQVUsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUksaUJBQWlCLFNBQUksV0FBYSxDQUFDLENBQUMsQ0FBQyxXQUFXLENBQUM7U0FDN0Y7UUFFRCxPQUFPO1lBQ0wsV0FBVyxhQUFBO1lBQ1gsY0FBYyxRQUFFLGtCQUFrQixhQUFsQixrQkFBa0IsdUJBQWxCLGtCQUFrQixDQUFFLE9BQU8sbUNBQUksSUFBSTtTQUNwRCxDQUFDO0lBQ0osQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IHtyZWxhdGl2ZX0gZnJvbSAnY2Fub25pY2FsLXBhdGgnO1xuaW1wb3J0IHtiYXNlbmFtZX0gZnJvbSAncGF0aCc7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcbmltcG9ydCB7QWJzb2x1dGVGc1BhdGgsIEZpbGVTeXN0ZW0sIGpvaW4sIHJlc29sdmV9IGZyb20gJy4uLy4uLy4uL3NyYy9uZ3RzYy9maWxlX3N5c3RlbSc7XG5pbXBvcnQge3BhcnNlU3RhdGVtZW50Rm9yVW1kTW9kdWxlfSBmcm9tICcuLi9ob3N0L3VtZF9ob3N0JztcbmltcG9ydCB7TG9nZ2VyfSBmcm9tICcuLi9sb2dnaW5nL2xvZ2dlcic7XG5pbXBvcnQge3Jlc29sdmVGaWxlV2l0aFBvc3RmaXhlc30gZnJvbSAnLi4vdXRpbHMnO1xuaW1wb3J0IHtOZ2NjQ29uZmlndXJhdGlvbiwgTmdjY0VudHJ5UG9pbnRDb25maWd9IGZyb20gJy4vY29uZmlndXJhdGlvbic7XG5cbi8qKlxuICogVGhlIHBvc3NpYmxlIHZhbHVlcyBmb3IgdGhlIGZvcm1hdCBvZiBhbiBlbnRyeS1wb2ludC5cbiAqL1xuZXhwb3J0IHR5cGUgRW50cnlQb2ludEZvcm1hdCA9ICdlc201J3wnZXNtMjAxNSd8J3VtZCd8J2NvbW1vbmpzJztcblxuLyoqXG4gKiBBbiBvYmplY3QgY29udGFpbmluZyBpbmZvcm1hdGlvbiBhYm91dCBhbiBlbnRyeS1wb2ludCwgaW5jbHVkaW5nIHBhdGhzXG4gKiB0byBlYWNoIG9mIHRoZSBwb3NzaWJsZSBlbnRyeS1wb2ludCBmb3JtYXRzLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIEVudHJ5UG9pbnQgZXh0ZW5kcyBKc29uT2JqZWN0IHtcbiAgLyoqIFRoZSBuYW1lIG9mIHRoZSBlbnRyeS1wb2ludCAoZS5nLiBgQGFuZ3VsYXIvY29yZWAgb3IgYEBhbmd1bGFyL2NvbW1vbi9odHRwYCkuICovXG4gIG5hbWU6IHN0cmluZztcbiAgLyoqIFRoZSBwYXRoIHRvIHRoaXMgZW50cnkgcG9pbnQuICovXG4gIHBhdGg6IEFic29sdXRlRnNQYXRoO1xuICAvKipcbiAgICogVGhlIG5hbWUgb2YgdGhlIHBhY2thZ2UgdGhhdCBjb250YWlucyB0aGlzIGVudHJ5LXBvaW50IChlLmcuIGBAYW5ndWxhci9jb3JlYCBvclxuICAgKiBgQGFuZ3VsYXIvY29tbW9uYCkuXG4gICAqL1xuICBwYWNrYWdlTmFtZTogc3RyaW5nO1xuICAvKiogVGhlIHBhdGggdG8gdGhlIHBhY2thZ2UgdGhhdCBjb250YWlucyB0aGlzIGVudHJ5LXBvaW50LiAqL1xuICBwYWNrYWdlUGF0aDogQWJzb2x1dGVGc1BhdGg7XG4gIC8qKiBUaGUgcGFyc2VkIHBhY2thZ2UuanNvbiBmaWxlIGZvciB0aGlzIGVudHJ5LXBvaW50LiAqL1xuICBwYWNrYWdlSnNvbjogRW50cnlQb2ludFBhY2thZ2VKc29uO1xuICAvKiogVGhlIHBhdGggdG8gYSB0eXBpbmdzICguZC50cykgZmlsZSBmb3IgdGhpcyBlbnRyeS1wb2ludC4gKi9cbiAgdHlwaW5nczogQWJzb2x1dGVGc1BhdGg7XG4gIC8qKiBJcyB0aGlzIEVudHJ5UG9pbnQgY29tcGlsZWQgd2l0aCB0aGUgQW5ndWxhciBWaWV3IEVuZ2luZSBjb21waWxlcj8gKi9cbiAgY29tcGlsZWRCeUFuZ3VsYXI6IGJvb2xlYW47XG4gIC8qKiBTaG91bGQgbmdjYyBpZ25vcmUgbWlzc2luZyBkZXBlbmRlbmNpZXMgYW5kIHByb2Nlc3MgdGhpcyBlbnRyeXBvaW50IGFueXdheT8gKi9cbiAgaWdub3JlTWlzc2luZ0RlcGVuZGVuY2llczogYm9vbGVhbjtcbiAgLyoqIFNob3VsZCBuZ2NjIGdlbmVyYXRlIGRlZXAgcmUtZXhwb3J0cyBmb3IgdGhpcyBlbnRyeXBvaW50PyAqL1xuICBnZW5lcmF0ZURlZXBSZWV4cG9ydHM6IGJvb2xlYW47XG59XG5cbmV4cG9ydCB0eXBlIEpzb25QcmltaXRpdmUgPSBzdHJpbmd8bnVtYmVyfGJvb2xlYW58bnVsbDtcbmV4cG9ydCB0eXBlIEpzb25WYWx1ZSA9IEpzb25QcmltaXRpdmV8SnNvbkFycmF5fEpzb25PYmplY3R8dW5kZWZpbmVkO1xuZXhwb3J0IGludGVyZmFjZSBKc29uQXJyYXkgZXh0ZW5kcyBBcnJheTxKc29uVmFsdWU+IHt9XG5leHBvcnQgaW50ZXJmYWNlIEpzb25PYmplY3Qge1xuICBba2V5OiBzdHJpbmddOiBKc29uVmFsdWU7XG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgUGFja2FnZUpzb25Gb3JtYXRQcm9wZXJ0aWVzTWFwIHtcbiAgYnJvd3Nlcj86IHN0cmluZztcbiAgZmVzbTIwMTU/OiBzdHJpbmc7XG4gIGZlc201Pzogc3RyaW5nO1xuICBlczIwMTU/OiBzdHJpbmc7ICAvLyBpZiBleGlzdHMgdGhlbiBpdCBpcyBhY3R1YWxseSBGRVNNMjAxNVxuICBlc20yMDE1Pzogc3RyaW5nO1xuICBlc201Pzogc3RyaW5nO1xuICBtYWluPzogc3RyaW5nOyAgICAgLy8gVU1EXG4gIG1vZHVsZT86IHN0cmluZzsgICAvLyBpZiBleGlzdHMgdGhlbiBpdCBpcyBhY3R1YWxseSBGRVNNNVxuICB0eXBlcz86IHN0cmluZzsgICAgLy8gU3lub255bW91cyB0byBgdHlwaW5nc2AgcHJvcGVydHkgLSBzZWUgaHR0cHM6Ly9iaXQubHkvMk9nV3AySFxuICB0eXBpbmdzPzogc3RyaW5nOyAgLy8gVHlwZVNjcmlwdCAuZC50cyBmaWxlc1xufVxuXG5leHBvcnQgdHlwZSBQYWNrYWdlSnNvbkZvcm1hdFByb3BlcnRpZXMgPSBrZXlvZiBQYWNrYWdlSnNvbkZvcm1hdFByb3BlcnRpZXNNYXA7XG5cbi8qKlxuICogVGhlIHByb3BlcnRpZXMgdGhhdCBtYXkgYmUgbG9hZGVkIGZyb20gdGhlIGBwYWNrYWdlLmpzb25gIGZpbGUuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgRW50cnlQb2ludFBhY2thZ2VKc29uIGV4dGVuZHMgSnNvbk9iamVjdCwgUGFja2FnZUpzb25Gb3JtYXRQcm9wZXJ0aWVzTWFwIHtcbiAgbmFtZTogc3RyaW5nO1xuICB2ZXJzaW9uPzogc3RyaW5nO1xuICBzY3JpcHRzPzogUmVjb3JkPHN0cmluZywgc3RyaW5nPjtcbiAgX19wcm9jZXNzZWRfYnlfaXZ5X25nY2NfXz86IFJlY29yZDxzdHJpbmcsIHN0cmluZz47XG59XG5cbmV4cG9ydCB0eXBlIEVudHJ5UG9pbnRKc29uUHJvcGVydHkgPSBFeGNsdWRlPFBhY2thZ2VKc29uRm9ybWF0UHJvcGVydGllcywgJ3R5cGVzJ3wndHlwaW5ncyc+O1xuLy8gV2UgbmVlZCB0byBrZWVwIHRoZSBlbGVtZW50cyBvZiB0aGlzIGNvbnN0IGFuZCB0aGUgYEVudHJ5UG9pbnRKc29uUHJvcGVydHlgIHR5cGUgaW4gc3luYy5cbmV4cG9ydCBjb25zdCBTVVBQT1JURURfRk9STUFUX1BST1BFUlRJRVM6IEVudHJ5UG9pbnRKc29uUHJvcGVydHlbXSA9XG4gICAgWydmZXNtMjAxNScsICdmZXNtNScsICdlczIwMTUnLCAnZXNtMjAxNScsICdlc201JywgJ21haW4nLCAnbW9kdWxlJywgJ2Jyb3dzZXInXTtcblxuXG4vKipcbiAqIFRoZSBwYXRoIGRvZXMgbm90IHJlcHJlc2VudCBhbiBlbnRyeS1wb2ludCwgaS5lLiB0aGVyZSBpcyBubyBwYWNrYWdlLmpzb24gYXQgdGhlIHBhdGggYW5kIHRoZXJlXG4gKiBpcyBubyBjb25maWcgdG8gZm9yY2UgYW4gZW50cnktcG9pbnQuXG4gKi9cbmV4cG9ydCBjb25zdCBOT19FTlRSWV9QT0lOVCA9ICduby1lbnRyeS1wb2ludCc7XG5cbi8qKlxuICogVGhlIHBhdGggcmVwcmVzZW50cyBhbiBlbnRyeS1wb2ludCB0aGF0IGlzIGBpZ25vcmVkYCBieSBhbiBuZ2NjIGNvbmZpZy5cbiAqL1xuZXhwb3J0IGNvbnN0IElHTk9SRURfRU5UUllfUE9JTlQgPSAnaWdub3JlZC1lbnRyeS1wb2ludCc7XG5cbi8qKlxuICogVGhlIHBhdGggaGFzIGEgcGFja2FnZS5qc29uLCBidXQgaXQgaXMgbm90IGEgdmFsaWQgZW50cnktcG9pbnQgZm9yIG5nY2MgcHJvY2Vzc2luZy5cbiAqL1xuZXhwb3J0IGNvbnN0IElOQ09NUEFUSUJMRV9FTlRSWV9QT0lOVCA9ICdpbmNvbXBhdGlibGUtZW50cnktcG9pbnQnO1xuXG4vKipcbiAqIFRoZSByZXN1bHQgb2YgY2FsbGluZyBgZ2V0RW50cnlQb2ludEluZm8oKWAuXG4gKlxuICogVGhpcyB3aWxsIGJlIGFuIGBFbnRyeVBvaW50YCBvYmplY3QgaWYgYW4gQW5ndWxhciBlbnRyeS1wb2ludCB3YXMgaWRlbnRpZmllZDtcbiAqIE90aGVyd2lzZSBpdCB3aWxsIGJlIGEgZmxhZyBpbmRpY2F0aW5nIG9uZSBvZjpcbiAqICogTk9fRU5UUllfUE9JTlQgLSB0aGUgcGF0aCBpcyBub3QgYW4gZW50cnktcG9pbnQgb3IgbmdjYyBpcyBjb25maWd1cmVkIHRvIGlnbm9yZSBpdFxuICogKiBJTkNPTVBBVElCTEVfRU5UUllfUE9JTlQgLSB0aGUgcGF0aCB3YXMgYSBub24tcHJvY2Vzc2FibGUgZW50cnktcG9pbnQgdGhhdCBzaG91bGQgYmUgc2VhcmNoZWRcbiAqIGZvciBzdWItZW50cnktcG9pbnRzXG4gKi9cbmV4cG9ydCB0eXBlIEdldEVudHJ5UG9pbnRSZXN1bHQgPVxuICAgIEVudHJ5UG9pbnR8dHlwZW9mIElHTk9SRURfRU5UUllfUE9JTlR8dHlwZW9mIElOQ09NUEFUSUJMRV9FTlRSWV9QT0lOVHx0eXBlb2YgTk9fRU5UUllfUE9JTlQ7XG5cblxuLyoqXG4gKiBUcnkgdG8gY3JlYXRlIGFuIGVudHJ5LXBvaW50IGZyb20gdGhlIGdpdmVuIHBhdGhzIGFuZCBwcm9wZXJ0aWVzLlxuICpcbiAqIEBwYXJhbSBwYWNrYWdlUGF0aCB0aGUgYWJzb2x1dGUgcGF0aCB0byB0aGUgY29udGFpbmluZyBucG0gcGFja2FnZVxuICogQHBhcmFtIGVudHJ5UG9pbnRQYXRoIHRoZSBhYnNvbHV0ZSBwYXRoIHRvIHRoZSBwb3RlbnRpYWwgZW50cnktcG9pbnQuXG4gKiBAcmV0dXJuc1xuICogLSBBbiBlbnRyeS1wb2ludCBpZiBpdCBpcyB2YWxpZCBhbmQgbm90IGlnbm9yZWQuXG4gKiAtIGBOT19FTlRSWV9QT0lOVGAgd2hlbiB0aGVyZSBpcyBubyBwYWNrYWdlLmpzb24gYXQgdGhlIHBhdGggYW5kIHRoZXJlIGlzIG5vIGNvbmZpZyB0byBmb3JjZSBhblxuICogICBlbnRyeS1wb2ludCxcbiAqIC0gYElHTk9SRURfRU5UUllfUE9JTlRgIHdoZW4gdGhlIGVudHJ5LXBvaW50IGlzIGlnbm9yZWQgYnkgYW4gbmdjYyBjb25maWcuXG4gKiAtIGBJTkNPTVBBVElCTEVfRU5UUllfUE9JTlRgIHdoZW4gdGhlcmUgaXMgYSBwYWNrYWdlLmpzb24gYnV0IGl0IGlzIG5vdCBhIHZhbGlkIEFuZ3VsYXIgY29tcGlsZWRcbiAqICAgZW50cnktcG9pbnQuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRFbnRyeVBvaW50SW5mbyhcbiAgICBmczogRmlsZVN5c3RlbSwgY29uZmlnOiBOZ2NjQ29uZmlndXJhdGlvbiwgbG9nZ2VyOiBMb2dnZXIsIHBhY2thZ2VQYXRoOiBBYnNvbHV0ZUZzUGF0aCxcbiAgICBlbnRyeVBvaW50UGF0aDogQWJzb2x1dGVGc1BhdGgpOiBHZXRFbnRyeVBvaW50UmVzdWx0IHtcbiAgY29uc3QgcGFja2FnZVBhY2thZ2VKc29uUGF0aCA9IHJlc29sdmUocGFja2FnZVBhdGgsICdwYWNrYWdlLmpzb24nKTtcbiAgY29uc3QgZW50cnlQb2ludFBhY2thZ2VKc29uUGF0aCA9IHJlc29sdmUoZW50cnlQb2ludFBhdGgsICdwYWNrYWdlLmpzb24nKTtcbiAgY29uc3QgbG9hZGVkUGFja2FnZVBhY2thZ2VKc29uID0gbG9hZFBhY2thZ2VKc29uKGZzLCBwYWNrYWdlUGFja2FnZUpzb25QYXRoKTtcbiAgY29uc3QgbG9hZGVkRW50cnlQb2ludFBhY2thZ2VKc29uID0gKHBhY2thZ2VQYWNrYWdlSnNvblBhdGggPT09IGVudHJ5UG9pbnRQYWNrYWdlSnNvblBhdGgpID9cbiAgICAgIGxvYWRlZFBhY2thZ2VQYWNrYWdlSnNvbiA6XG4gICAgICBsb2FkUGFja2FnZUpzb24oZnMsIGVudHJ5UG9pbnRQYWNrYWdlSnNvblBhdGgpO1xuICBjb25zdCB7cGFja2FnZU5hbWUsIHBhY2thZ2VWZXJzaW9ufSA9IGdldFBhY2thZ2VOYW1lQW5kVmVyc2lvbihcbiAgICAgIGZzLCBwYWNrYWdlUGF0aCwgbG9hZGVkUGFja2FnZVBhY2thZ2VKc29uLCBsb2FkZWRFbnRyeVBvaW50UGFja2FnZUpzb24pO1xuXG4gIGNvbnN0IHBhY2thZ2VDb25maWcgPSBjb25maWcuZ2V0UGFja2FnZUNvbmZpZyhwYWNrYWdlTmFtZSwgcGFja2FnZVBhdGgsIHBhY2thZ2VWZXJzaW9uKTtcbiAgY29uc3QgZW50cnlQb2ludENvbmZpZyA9IHBhY2thZ2VDb25maWcuZW50cnlQb2ludHMuZ2V0KGVudHJ5UG9pbnRQYXRoKTtcbiAgbGV0IGVudHJ5UG9pbnRQYWNrYWdlSnNvbjogRW50cnlQb2ludFBhY2thZ2VKc29uO1xuXG4gIGlmIChlbnRyeVBvaW50Q29uZmlnID09PSB1bmRlZmluZWQpIHtcbiAgICBpZiAoIWZzLmV4aXN0cyhlbnRyeVBvaW50UGFja2FnZUpzb25QYXRoKSkge1xuICAgICAgLy8gTm8gYHBhY2thZ2UuanNvbmAgYW5kIG5vIGNvbmZpZy5cbiAgICAgIHJldHVybiBOT19FTlRSWV9QT0lOVDtcbiAgICB9IGVsc2UgaWYgKGxvYWRlZEVudHJ5UG9pbnRQYWNrYWdlSnNvbiA9PT0gbnVsbCkge1xuICAgICAgLy8gYHBhY2thZ2UuanNvbmAgZXhpc3RzIGJ1dCBjb3VsZCBub3QgYmUgcGFyc2VkIGFuZCB0aGVyZSBpcyBubyByZWRlZW1pbmcgY29uZmlnLlxuICAgICAgbG9nZ2VyLndhcm4oYEZhaWxlZCB0byByZWFkIGVudHJ5IHBvaW50IGluZm8gZnJvbSBpbnZhbGlkICdwYWNrYWdlLmpzb24nIGZpbGU6ICR7XG4gICAgICAgICAgZW50cnlQb2ludFBhY2thZ2VKc29uUGF0aH1gKTtcblxuICAgICAgcmV0dXJuIElOQ09NUEFUSUJMRV9FTlRSWV9QT0lOVDtcbiAgICB9IGVsc2Uge1xuICAgICAgZW50cnlQb2ludFBhY2thZ2VKc29uID0gbG9hZGVkRW50cnlQb2ludFBhY2thZ2VKc29uO1xuICAgIH1cbiAgfSBlbHNlIGlmIChlbnRyeVBvaW50Q29uZmlnLmlnbm9yZSA9PT0gdHJ1ZSkge1xuICAgIC8vIEV4cGxpY2l0bHkgaWdub3JlZCBlbnRyeS1wb2ludC5cbiAgICByZXR1cm4gSUdOT1JFRF9FTlRSWV9QT0lOVDtcbiAgfSBlbHNlIHtcbiAgICBlbnRyeVBvaW50UGFja2FnZUpzb24gPSBtZXJnZUNvbmZpZ0FuZFBhY2thZ2VKc29uKFxuICAgICAgICBsb2FkZWRFbnRyeVBvaW50UGFja2FnZUpzb24sIGVudHJ5UG9pbnRDb25maWcsIHBhY2thZ2VQYXRoLCBlbnRyeVBvaW50UGF0aCk7XG4gIH1cblxuICBjb25zdCB0eXBpbmdzID0gZW50cnlQb2ludFBhY2thZ2VKc29uLnR5cGluZ3MgfHwgZW50cnlQb2ludFBhY2thZ2VKc29uLnR5cGVzIHx8XG4gICAgICBndWVzc1R5cGluZ3NGcm9tUGFja2FnZUpzb24oZnMsIGVudHJ5UG9pbnRQYXRoLCBlbnRyeVBvaW50UGFja2FnZUpzb24pO1xuICBpZiAodHlwZW9mIHR5cGluZ3MgIT09ICdzdHJpbmcnKSB7XG4gICAgLy8gTWlzc2luZyB0aGUgcmVxdWlyZWQgYHR5cGluZ3NgIHByb3BlcnR5XG4gICAgcmV0dXJuIElOQ09NUEFUSUJMRV9FTlRSWV9QT0lOVDtcbiAgfVxuXG4gIC8vIEFuIGVudHJ5LXBvaW50IGlzIGFzc3VtZWQgdG8gYmUgY29tcGlsZWQgYnkgQW5ndWxhciBpZiB0aGVyZSBpcyBlaXRoZXI6XG4gIC8vICogYSBgbWV0YWRhdGEuanNvbmAgZmlsZSBuZXh0IHRvIHRoZSB0eXBpbmdzIGVudHJ5LXBvaW50XG4gIC8vICogYSBjdXN0b20gY29uZmlnIGZvciB0aGlzIGVudHJ5LXBvaW50XG4gIGNvbnN0IG1ldGFkYXRhUGF0aCA9IHJlc29sdmUoZW50cnlQb2ludFBhdGgsIHR5cGluZ3MucmVwbGFjZSgvXFwuZFxcLnRzJC8sICcnKSArICcubWV0YWRhdGEuanNvbicpO1xuICBjb25zdCBjb21waWxlZEJ5QW5ndWxhciA9IGVudHJ5UG9pbnRDb25maWcgIT09IHVuZGVmaW5lZCB8fCBmcy5leGlzdHMobWV0YWRhdGFQYXRoKTtcblxuICBjb25zdCBlbnRyeVBvaW50SW5mbzogRW50cnlQb2ludCA9IHtcbiAgICBuYW1lOiBlbnRyeVBvaW50UGFja2FnZUpzb24ubmFtZSxcbiAgICBwYXRoOiBlbnRyeVBvaW50UGF0aCxcbiAgICBwYWNrYWdlTmFtZSxcbiAgICBwYWNrYWdlUGF0aCxcbiAgICBwYWNrYWdlSnNvbjogZW50cnlQb2ludFBhY2thZ2VKc29uLFxuICAgIHR5cGluZ3M6IHJlc29sdmUoZW50cnlQb2ludFBhdGgsIHR5cGluZ3MpLFxuICAgIGNvbXBpbGVkQnlBbmd1bGFyLFxuICAgIGlnbm9yZU1pc3NpbmdEZXBlbmRlbmNpZXM6XG4gICAgICAgIGVudHJ5UG9pbnRDb25maWcgIT09IHVuZGVmaW5lZCA/ICEhZW50cnlQb2ludENvbmZpZy5pZ25vcmVNaXNzaW5nRGVwZW5kZW5jaWVzIDogZmFsc2UsXG4gICAgZ2VuZXJhdGVEZWVwUmVleHBvcnRzOlxuICAgICAgICBlbnRyeVBvaW50Q29uZmlnICE9PSB1bmRlZmluZWQgPyAhIWVudHJ5UG9pbnRDb25maWcuZ2VuZXJhdGVEZWVwUmVleHBvcnRzIDogZmFsc2UsXG4gIH07XG5cbiAgcmV0dXJuIGVudHJ5UG9pbnRJbmZvO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaXNFbnRyeVBvaW50KHJlc3VsdDogR2V0RW50cnlQb2ludFJlc3VsdCk6IHJlc3VsdCBpcyBFbnRyeVBvaW50IHtcbiAgcmV0dXJuIHJlc3VsdCAhPT0gTk9fRU5UUllfUE9JTlQgJiYgcmVzdWx0ICE9PSBJTkNPTVBBVElCTEVfRU5UUllfUE9JTlQgJiZcbiAgICAgIHJlc3VsdCAhPT0gSUdOT1JFRF9FTlRSWV9QT0lOVDtcbn1cblxuLyoqXG4gKiBDb252ZXJ0IGEgcGFja2FnZS5qc29uIHByb3BlcnR5IGludG8gYW4gZW50cnktcG9pbnQgZm9ybWF0LlxuICpcbiAqIEBwYXJhbSBwcm9wZXJ0eSBUaGUgcHJvcGVydHkgdG8gY29udmVydCB0byBhIGZvcm1hdC5cbiAqIEByZXR1cm5zIEFuIGVudHJ5LXBvaW50IGZvcm1hdCBvciBgdW5kZWZpbmVkYCBpZiBub25lIG1hdGNoIHRoZSBnaXZlbiBwcm9wZXJ0eS5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldEVudHJ5UG9pbnRGb3JtYXQoXG4gICAgZnM6IEZpbGVTeXN0ZW0sIGVudHJ5UG9pbnQ6IEVudHJ5UG9pbnQsIHByb3BlcnR5OiBFbnRyeVBvaW50SnNvblByb3BlcnR5KTogRW50cnlQb2ludEZvcm1hdHxcbiAgICB1bmRlZmluZWQge1xuICBzd2l0Y2ggKHByb3BlcnR5KSB7XG4gICAgY2FzZSAnZmVzbTIwMTUnOlxuICAgICAgcmV0dXJuICdlc20yMDE1JztcbiAgICBjYXNlICdmZXNtNSc6XG4gICAgICByZXR1cm4gJ2VzbTUnO1xuICAgIGNhc2UgJ2VzMjAxNSc6XG4gICAgICByZXR1cm4gJ2VzbTIwMTUnO1xuICAgIGNhc2UgJ2VzbTIwMTUnOlxuICAgICAgcmV0dXJuICdlc20yMDE1JztcbiAgICBjYXNlICdlc201JzpcbiAgICAgIHJldHVybiAnZXNtNSc7XG4gICAgY2FzZSAnYnJvd3Nlcic6XG4gICAgICBjb25zdCBicm93c2VyRmlsZSA9IGVudHJ5UG9pbnQucGFja2FnZUpzb25bJ2Jyb3dzZXInXTtcbiAgICAgIGlmICh0eXBlb2YgYnJvd3NlckZpbGUgIT09ICdzdHJpbmcnKSB7XG4gICAgICAgIHJldHVybiB1bmRlZmluZWQ7XG4gICAgICB9XG4gICAgICByZXR1cm4gc25pZmZNb2R1bGVGb3JtYXQoZnMsIGpvaW4oZW50cnlQb2ludC5wYXRoLCBicm93c2VyRmlsZSkpO1xuICAgIGNhc2UgJ21haW4nOlxuICAgICAgY29uc3QgbWFpbkZpbGUgPSBlbnRyeVBvaW50LnBhY2thZ2VKc29uWydtYWluJ107XG4gICAgICBpZiAobWFpbkZpbGUgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICByZXR1cm4gdW5kZWZpbmVkO1xuICAgICAgfVxuICAgICAgcmV0dXJuIHNuaWZmTW9kdWxlRm9ybWF0KGZzLCBqb2luKGVudHJ5UG9pbnQucGF0aCwgbWFpbkZpbGUpKTtcbiAgICBjYXNlICdtb2R1bGUnOlxuICAgICAgY29uc3QgbW9kdWxlRmlsZVBhdGggPSBlbnRyeVBvaW50LnBhY2thZ2VKc29uWydtb2R1bGUnXTtcbiAgICAgIC8vIEFzIG9mIHZlcnNpb24gMTAsIHRoZSBgbW9kdWxlYCBwcm9wZXJ0eSBpbiBgcGFja2FnZS5qc29uYCBzaG91bGQgcG9pbnQgdG9cbiAgICAgIC8vIHRoZSBFU00yMDE1IGZvcm1hdCBvdXRwdXQgYXMgcGVyIEFuZ3VsYXIgUGFja2FnZSBmb3JtYXQgc3BlY2lmaWNhdGlvbi4gVGhpc1xuICAgICAgLy8gbWVhbnMgdGhhdCB0aGUgYG1vZHVsZWAgcHJvcGVydHkgY2FwdHVyZXMgbXVsdGlwbGUgZm9ybWF0cywgYXMgb2xkIGxpYnJhcmllc1xuICAgICAgLy8gYnVpbHQgd2l0aCB0aGUgb2xkIEFQRiBjYW4gc3RpbGwgYmUgcHJvY2Vzc2VkLiBXZSBkZXRlY3QgdGhlIGZvcm1hdCBieSBjaGVja2luZ1xuICAgICAgLy8gdGhlIHBhdGhzIHRoYXQgc2hvdWxkIGJlIHVzZWQgYXMgcGVyIEFQRiBzcGVjaWZpY2F0aW9uLlxuICAgICAgaWYgKHR5cGVvZiBtb2R1bGVGaWxlUGF0aCA9PT0gJ3N0cmluZycgJiYgbW9kdWxlRmlsZVBhdGguaW5jbHVkZXMoJ2VzbTIwMTUnKSkge1xuICAgICAgICByZXR1cm4gYGVzbTIwMTVgO1xuICAgICAgfVxuICAgICAgcmV0dXJuICdlc201JztcbiAgICBkZWZhdWx0OlxuICAgICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgfVxufVxuXG4vKipcbiAqIFBhcnNlIHRoZSBKU09OIGZyb20gYSBgcGFja2FnZS5qc29uYCBmaWxlLlxuICogQHBhcmFtIHBhY2thZ2VKc29uUGF0aCB0aGUgYWJzb2x1dGUgcGF0aCB0byB0aGUgYHBhY2thZ2UuanNvbmAgZmlsZS5cbiAqIEByZXR1cm5zIEpTT04gZnJvbSB0aGUgYHBhY2thZ2UuanNvbmAgZmlsZSBpZiBpdCBpcyB2YWxpZCwgYG51bGxgIG90aGVyd2lzZS5cbiAqL1xuZnVuY3Rpb24gbG9hZFBhY2thZ2VKc29uKGZzOiBGaWxlU3lzdGVtLCBwYWNrYWdlSnNvblBhdGg6IEFic29sdXRlRnNQYXRoKTogRW50cnlQb2ludFBhY2thZ2VKc29ufFxuICAgIG51bGwge1xuICB0cnkge1xuICAgIHJldHVybiBKU09OLnBhcnNlKGZzLnJlYWRGaWxlKHBhY2thZ2VKc29uUGF0aCkpO1xuICB9IGNhdGNoIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxufVxuXG5mdW5jdGlvbiBzbmlmZk1vZHVsZUZvcm1hdChmczogRmlsZVN5c3RlbSwgc291cmNlRmlsZVBhdGg6IEFic29sdXRlRnNQYXRoKTogRW50cnlQb2ludEZvcm1hdHxcbiAgICB1bmRlZmluZWQge1xuICBjb25zdCByZXNvbHZlZFBhdGggPSByZXNvbHZlRmlsZVdpdGhQb3N0Zml4ZXMoZnMsIHNvdXJjZUZpbGVQYXRoLCBbJycsICcuanMnLCAnL2luZGV4LmpzJ10pO1xuICBpZiAocmVzb2x2ZWRQYXRoID09PSBudWxsKSB7XG4gICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgfVxuXG4gIGNvbnN0IHNvdXJjZUZpbGUgPVxuICAgICAgdHMuY3JlYXRlU291cmNlRmlsZShzb3VyY2VGaWxlUGF0aCwgZnMucmVhZEZpbGUocmVzb2x2ZWRQYXRoKSwgdHMuU2NyaXB0VGFyZ2V0LkVTNSk7XG4gIGlmIChzb3VyY2VGaWxlLnN0YXRlbWVudHMubGVuZ3RoID09PSAwKSB7XG4gICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgfVxuICBpZiAodHMuaXNFeHRlcm5hbE1vZHVsZShzb3VyY2VGaWxlKSkge1xuICAgIHJldHVybiAnZXNtNSc7XG4gIH0gZWxzZSBpZiAocGFyc2VTdGF0ZW1lbnRGb3JVbWRNb2R1bGUoc291cmNlRmlsZS5zdGF0ZW1lbnRzWzBdKSAhPT0gbnVsbCkge1xuICAgIHJldHVybiAndW1kJztcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gJ2NvbW1vbmpzJztcbiAgfVxufVxuXG5mdW5jdGlvbiBtZXJnZUNvbmZpZ0FuZFBhY2thZ2VKc29uKFxuICAgIGVudHJ5UG9pbnRQYWNrYWdlSnNvbjogRW50cnlQb2ludFBhY2thZ2VKc29ufG51bGwsIGVudHJ5UG9pbnRDb25maWc6IE5nY2NFbnRyeVBvaW50Q29uZmlnLFxuICAgIHBhY2thZ2VQYXRoOiBBYnNvbHV0ZUZzUGF0aCwgZW50cnlQb2ludFBhdGg6IEFic29sdXRlRnNQYXRoKTogRW50cnlQb2ludFBhY2thZ2VKc29uIHtcbiAgaWYgKGVudHJ5UG9pbnRQYWNrYWdlSnNvbiAhPT0gbnVsbCkge1xuICAgIHJldHVybiB7Li4uZW50cnlQb2ludFBhY2thZ2VKc29uLCAuLi5lbnRyeVBvaW50Q29uZmlnLm92ZXJyaWRlfTtcbiAgfSBlbHNlIHtcbiAgICBjb25zdCBuYW1lID0gYCR7YmFzZW5hbWUocGFja2FnZVBhdGgpfS8ke3JlbGF0aXZlKHBhY2thZ2VQYXRoLCBlbnRyeVBvaW50UGF0aCl9YDtcbiAgICByZXR1cm4ge25hbWUsIC4uLmVudHJ5UG9pbnRDb25maWcub3ZlcnJpZGV9O1xuICB9XG59XG5cbmZ1bmN0aW9uIGd1ZXNzVHlwaW5nc0Zyb21QYWNrYWdlSnNvbihcbiAgICBmczogRmlsZVN5c3RlbSwgZW50cnlQb2ludFBhdGg6IEFic29sdXRlRnNQYXRoLFxuICAgIGVudHJ5UG9pbnRQYWNrYWdlSnNvbjogRW50cnlQb2ludFBhY2thZ2VKc29uKTogQWJzb2x1dGVGc1BhdGh8bnVsbCB7XG4gIGZvciAoY29uc3QgcHJvcCBvZiBTVVBQT1JURURfRk9STUFUX1BST1BFUlRJRVMpIHtcbiAgICBjb25zdCBmaWVsZCA9IGVudHJ5UG9pbnRQYWNrYWdlSnNvbltwcm9wXTtcbiAgICBpZiAodHlwZW9mIGZpZWxkICE9PSAnc3RyaW5nJykge1xuICAgICAgLy8gU29tZSBjcmF6eSBwYWNrYWdlcyBoYXZlIHRoaW5ncyBsaWtlIGFycmF5cyBpbiB0aGVzZSBmaWVsZHMhXG4gICAgICBjb250aW51ZTtcbiAgICB9XG4gICAgY29uc3QgcmVsYXRpdmVUeXBpbmdzUGF0aCA9IGZpZWxkLnJlcGxhY2UoL1xcLmpzJC8sICcuZC50cycpO1xuICAgIGNvbnN0IHR5cGluZ3NQYXRoID0gcmVzb2x2ZShlbnRyeVBvaW50UGF0aCwgcmVsYXRpdmVUeXBpbmdzUGF0aCk7XG4gICAgaWYgKGZzLmV4aXN0cyh0eXBpbmdzUGF0aCkpIHtcbiAgICAgIHJldHVybiB0eXBpbmdzUGF0aDtcbiAgICB9XG4gIH1cbiAgcmV0dXJuIG51bGw7XG59XG5cbi8qKlxuICogRmluZCBvciBpbmZlciB0aGUgbmFtZSBhbmQgdmVyc2lvbiBvZiBhIHBhY2thZ2UuXG4gKlxuICogLSBUaGUgbmFtZSBpcyBjb21wdXRlZCBiYXNlZCBvbiB0aGUgYG5hbWVgIHByb3BlcnR5IG9mIHRoZSBwYWNrYWdlJ3Mgb3IgdGhlIGVudHJ5LXBvaW50J3NcbiAqICAgYHBhY2thZ2UuanNvbmAgZmlsZSAoaWYgYXZhaWxhYmxlKSBvciBpbmZlcnJlZCBmcm9tIHRoZSBwYWNrYWdlJ3MgcGF0aC5cbiAqIC0gVGhlIHZlcnNpb24gaXMgcmVhZCBvZmYgb2YgdGhlIGB2ZXJzaW9uYCBwcm9wZXJ0eSBvZiB0aGUgcGFja2FnZSdzIGBwYWNrYWdlLmpzb25gIGZpbGUgKGlmXG4gKiAgIGF2YWlsYWJsZSkuXG4gKlxuICogQHBhcmFtIGZzIFRoZSBgRmlsZVN5c3RlbWAgaW5zdGFuY2UgdG8gdXNlIGZvciBwYXJzaW5nIGBwYWNrYWdlUGF0aGAgKGlmIG5lZWRlZCkuXG4gKiBAcGFyYW0gcGFja2FnZVBhdGggdGhlIGFic29sdXRlIHBhdGggdG8gdGhlIHBhY2thZ2UuXG4gKiBAcGFyYW0gcGFja2FnZVBhY2thZ2VKc29uIHRoZSBwYXJzZWQgYHBhY2thZ2UuanNvbmAgb2YgdGhlIHBhY2thZ2UgKGlmIGF2YWlsYWJsZSkuXG4gKiBAcGFyYW0gZW50cnlQb2ludFBhY2thZ2VKc29uIHRoZSBwYXJzZWQgYHBhY2thZ2UuanNvbmAgb2YgYW4gZW50cnktcG9pbnQgKGlmIGF2YWlsYWJsZSkuXG4gKiBAcmV0dXJucyB0aGUgY29tcHV0ZWQgbmFtZSBhbmQgdmVyc2lvbiBvZiB0aGUgcGFja2FnZS5cbiAqL1xuZnVuY3Rpb24gZ2V0UGFja2FnZU5hbWVBbmRWZXJzaW9uKFxuICAgIGZzOiBGaWxlU3lzdGVtLCBwYWNrYWdlUGF0aDogQWJzb2x1dGVGc1BhdGgsIHBhY2thZ2VQYWNrYWdlSnNvbjogRW50cnlQb2ludFBhY2thZ2VKc29ufG51bGwsXG4gICAgZW50cnlQb2ludFBhY2thZ2VKc29uOiBFbnRyeVBvaW50UGFja2FnZUpzb258XG4gICAgbnVsbCk6IHtwYWNrYWdlTmFtZTogc3RyaW5nLCBwYWNrYWdlVmVyc2lvbjogc3RyaW5nfG51bGx9IHtcbiAgbGV0IHBhY2thZ2VOYW1lOiBzdHJpbmc7XG5cbiAgaWYgKHBhY2thZ2VQYWNrYWdlSnNvbiAhPT0gbnVsbCkge1xuICAgIC8vIFdlIGhhdmUgYSB2YWxpZCBgcGFja2FnZS5qc29uYCBmb3IgdGhlIHBhY2thZ2U6IEdldCB0aGUgcGFja2FnZSBuYW1lIGZyb20gdGhhdC5cbiAgICBwYWNrYWdlTmFtZSA9IHBhY2thZ2VQYWNrYWdlSnNvbi5uYW1lO1xuICB9IGVsc2UgaWYgKGVudHJ5UG9pbnRQYWNrYWdlSnNvbiAhPT0gbnVsbCkge1xuICAgIC8vIFdlIGhhdmUgYSB2YWxpZCBgcGFja2FnZS5qc29uYCBmb3IgdGhlIGVudHJ5LXBvaW50OiBHZXQgdGhlIHBhY2thZ2UgbmFtZSBmcm9tIHRoYXQuXG4gICAgLy8gVGhpcyBtaWdodCBiZSBhIHNlY29uZGFyeSBlbnRyeS1wb2ludCwgc28gbWFrZSBzdXJlIHdlIG9ubHkga2VlcCB0aGUgbWFpbiBwYWNrYWdlJ3MgbmFtZVxuICAgIC8vIChlLmcuIG9ubHkga2VlcCBgQGFuZ3VsYXIvY29tbW9uYCBmcm9tIGBAYW5ndWxhci9jb21tb24vaHR0cGApLlxuICAgIHBhY2thZ2VOYW1lID0gL14oPzpAW14vXStcXC8pP1teL10qLy5leGVjKGVudHJ5UG9pbnRQYWNrYWdlSnNvbi5uYW1lKSFbMF07XG4gIH0gZWxzZSB7XG4gICAgLy8gV2UgZG9uJ3QgaGF2ZSBhIHZhbGlkIGBwYWNrYWdlLmpzb25gOiBJbmZlciB0aGUgcGFja2FnZSBuYW1lIGZyb20gdGhlIHBhY2thZ2UncyBwYXRoLlxuICAgIGNvbnN0IGxhc3RTZWdtZW50ID0gZnMuYmFzZW5hbWUocGFja2FnZVBhdGgpO1xuICAgIGNvbnN0IHNlY29uZExhc3RTZWdtZW50ID0gZnMuYmFzZW5hbWUoZnMuZGlybmFtZShwYWNrYWdlUGF0aCkpO1xuXG4gICAgcGFja2FnZU5hbWUgPVxuICAgICAgICBzZWNvbmRMYXN0U2VnbWVudC5zdGFydHNXaXRoKCdAJykgPyBgJHtzZWNvbmRMYXN0U2VnbWVudH0vJHtsYXN0U2VnbWVudH1gIDogbGFzdFNlZ21lbnQ7XG4gIH1cblxuICByZXR1cm4ge1xuICAgIHBhY2thZ2VOYW1lLFxuICAgIHBhY2thZ2VWZXJzaW9uOiBwYWNrYWdlUGFja2FnZUpzb24/LnZlcnNpb24gPz8gbnVsbCxcbiAgfTtcbn1cbiJdfQ==