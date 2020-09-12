(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/packages/configuration", ["require", "exports", "tslib", "crypto", "semver", "vm", "@angular/compiler-cli/src/ngtsc/file_system"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.NgccConfiguration = exports.ProcessedNgccPackageConfig = exports.DEFAULT_NGCC_CONFIG = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var crypto_1 = require("crypto");
    var semver_1 = require("semver");
    var vm = require("vm");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    /**
     * The default configuration for ngcc.
     *
     * This is the ultimate fallback configuration that ngcc will use if there is no configuration
     * for a package at the package level or project level.
     *
     * This configuration is for packages that are "dead" - i.e. no longer maintained and so are
     * unlikely to be fixed to work with ngcc, nor provide a package level config of their own.
     *
     * The fallback process for looking up configuration is:
     *
     * Project -> Package -> Default
     *
     * If a package provides its own configuration then that would override this default one.
     *
     * Also application developers can always provide configuration at their project level which
     * will override everything else.
     *
     * Note that the fallback is package based not entry-point based.
     * For example, if a there is configuration for a package at the project level this will replace all
     * entry-point configurations that may have been provided in the package level or default level
     * configurations, even if the project level configuration does not provide for a given entry-point.
     */
    exports.DEFAULT_NGCC_CONFIG = {
        packages: {
            // Add default package configuration here. For example:
            // '@angular/fire@^5.2.0': {
            //   entryPoints: {
            //     './database-deprecated': {ignore: true},
            //   },
            // },
            // The package does not contain any `.metadata.json` files in the root directory but only inside
            // `dist/`. Without this config, ngcc does not realize this is a ViewEngine-built Angular
            // package that needs to be compiled to Ivy.
            'angular2-highcharts': {
                entryPoints: {
                    '.': {
                        override: {
                            main: './index.js',
                        },
                    },
                },
            },
            // The `dist/` directory has a duplicate `package.json` pointing to the same files, which (under
            // certain configurations) can causes ngcc to try to process the files twice and fail.
            // Ignore the `dist/` entry-point.
            'ng2-dragula': {
                entryPoints: {
                    './dist': { ignore: true },
                },
            },
        },
        locking: {
            retryDelay: 500,
            retryAttempts: 500,
        }
    };
    var NGCC_CONFIG_FILENAME = 'ngcc.config.js';
    /**
     * The processed package level configuration as a result of processing a raw package level config.
     */
    var ProcessedNgccPackageConfig = /** @class */ (function () {
        function ProcessedNgccPackageConfig(packagePath, _a) {
            var _b = _a.entryPoints, entryPoints = _b === void 0 ? {} : _b, _c = _a.ignorableDeepImportMatchers, ignorableDeepImportMatchers = _c === void 0 ? [] : _c;
            var absolutePathEntries = Object.entries(entryPoints).map(function (_a) {
                var _b = tslib_1.__read(_a, 2), relativePath = _b[0], config = _b[1];
                return [file_system_1.resolve(packagePath, relativePath), config];
            });
            this.packagePath = packagePath;
            this.entryPoints = new Map(absolutePathEntries);
            this.ignorableDeepImportMatchers = ignorableDeepImportMatchers;
        }
        return ProcessedNgccPackageConfig;
    }());
    exports.ProcessedNgccPackageConfig = ProcessedNgccPackageConfig;
    /**
     * Ngcc has a hierarchical configuration system that lets us "fix up" packages that do not
     * work with ngcc out of the box.
     *
     * There are three levels at which configuration can be declared:
     *
     * * Default level - ngcc comes with built-in configuration for well known cases.
     * * Package level - a library author publishes a configuration with their package to fix known
     *   issues.
     * * Project level - the application developer provides a configuration that fixes issues specific
     *   to the libraries used in their application.
     *
     * Ngcc will match configuration based on the package name but also on its version. This allows
     * configuration to provide different fixes to different version ranges of a package.
     *
     * * Package level configuration is specific to the package version where the configuration is
     *   found.
     * * Default and project level configuration should provide version ranges to ensure that the
     *   configuration is only applied to the appropriate versions of a package.
     *
     * When getting a configuration for a package (via `getConfig()`) the caller should provide the
     * version of the package in question, if available. If it is not provided then the first available
     * configuration for a package is returned.
     */
    var NgccConfiguration = /** @class */ (function () {
        function NgccConfiguration(fs, baseDir) {
            this.fs = fs;
            this.cache = new Map();
            this.defaultConfig = this.processProjectConfig(exports.DEFAULT_NGCC_CONFIG);
            this.projectConfig = this.processProjectConfig(this.loadProjectConfig(baseDir));
            this.hash = this.computeHash();
        }
        /**
         * Get the configuration options for locking the ngcc process.
         */
        NgccConfiguration.prototype.getLockingConfig = function () {
            var _a = this.projectConfig.locking, retryAttempts = _a.retryAttempts, retryDelay = _a.retryDelay;
            if (retryAttempts === undefined) {
                retryAttempts = this.defaultConfig.locking.retryAttempts;
            }
            if (retryDelay === undefined) {
                retryDelay = this.defaultConfig.locking.retryDelay;
            }
            return { retryAttempts: retryAttempts, retryDelay: retryDelay };
        };
        /**
         * Get a configuration for the given `version` of a package at `packagePath`.
         *
         * @param packageName The name of the package whose config we want.
         * @param packagePath The path to the package whose config we want.
         * @param version The version of the package whose config we want, or `null` if the package's
         * package.json did not exist or was invalid.
         */
        NgccConfiguration.prototype.getPackageConfig = function (packageName, packagePath, version) {
            var rawPackageConfig = this.getRawPackageConfig(packageName, packagePath, version);
            return new ProcessedNgccPackageConfig(packagePath, rawPackageConfig);
        };
        NgccConfiguration.prototype.getRawPackageConfig = function (packageName, packagePath, version) {
            var cacheKey = packageName + (version !== null ? "@" + version : '');
            if (this.cache.has(cacheKey)) {
                return this.cache.get(cacheKey);
            }
            var projectLevelConfig = this.projectConfig.packages ?
                findSatisfactoryVersion(this.projectConfig.packages[packageName], version) :
                null;
            if (projectLevelConfig !== null) {
                this.cache.set(cacheKey, projectLevelConfig);
                return projectLevelConfig;
            }
            var packageLevelConfig = this.loadPackageConfig(packagePath, version);
            if (packageLevelConfig !== null) {
                this.cache.set(cacheKey, packageLevelConfig);
                return packageLevelConfig;
            }
            var defaultLevelConfig = this.defaultConfig.packages ?
                findSatisfactoryVersion(this.defaultConfig.packages[packageName], version) :
                null;
            if (defaultLevelConfig !== null) {
                this.cache.set(cacheKey, defaultLevelConfig);
                return defaultLevelConfig;
            }
            return { versionRange: '*' };
        };
        NgccConfiguration.prototype.processProjectConfig = function (projectConfig) {
            var processedConfig = { packages: {}, locking: {} };
            // locking configuration
            if (projectConfig.locking !== undefined) {
                processedConfig.locking = projectConfig.locking;
            }
            // packages configuration
            for (var packageNameAndVersion in projectConfig.packages) {
                var packageConfig = projectConfig.packages[packageNameAndVersion];
                if (packageConfig) {
                    var _a = tslib_1.__read(this.splitNameAndVersion(packageNameAndVersion), 2), packageName = _a[0], _b = _a[1], versionRange = _b === void 0 ? '*' : _b;
                    var packageConfigs = processedConfig.packages[packageName] || (processedConfig.packages[packageName] = []);
                    packageConfigs.push(tslib_1.__assign(tslib_1.__assign({}, packageConfig), { versionRange: versionRange }));
                }
            }
            return processedConfig;
        };
        NgccConfiguration.prototype.loadProjectConfig = function (baseDir) {
            var configFilePath = file_system_1.join(baseDir, NGCC_CONFIG_FILENAME);
            if (this.fs.exists(configFilePath)) {
                try {
                    return this.evalSrcFile(configFilePath);
                }
                catch (e) {
                    throw new Error("Invalid project configuration file at \"" + configFilePath + "\": " + e.message);
                }
            }
            else {
                return { packages: {} };
            }
        };
        NgccConfiguration.prototype.loadPackageConfig = function (packagePath, version) {
            var configFilePath = file_system_1.join(packagePath, NGCC_CONFIG_FILENAME);
            if (this.fs.exists(configFilePath)) {
                try {
                    var packageConfig = this.evalSrcFile(configFilePath);
                    return tslib_1.__assign(tslib_1.__assign({}, packageConfig), { versionRange: version || '*' });
                }
                catch (e) {
                    throw new Error("Invalid package configuration file at \"" + configFilePath + "\": " + e.message);
                }
            }
            else {
                return null;
            }
        };
        NgccConfiguration.prototype.evalSrcFile = function (srcPath) {
            var src = this.fs.readFile(srcPath);
            var theExports = {};
            var sandbox = {
                module: { exports: theExports },
                exports: theExports,
                require: require,
                __dirname: file_system_1.dirname(srcPath),
                __filename: srcPath
            };
            vm.runInNewContext(src, sandbox, { filename: srcPath });
            return sandbox.module.exports;
        };
        NgccConfiguration.prototype.splitNameAndVersion = function (packageNameAndVersion) {
            var versionIndex = packageNameAndVersion.lastIndexOf('@');
            // Note that > 0 is because we don't want to match @ at the start of the line
            // which is what you would have with a namespaced package, e.g. `@angular/common`.
            return versionIndex > 0 ?
                [
                    packageNameAndVersion.substring(0, versionIndex),
                    packageNameAndVersion.substring(versionIndex + 1),
                ] :
                [packageNameAndVersion, undefined];
        };
        NgccConfiguration.prototype.computeHash = function () {
            return crypto_1.createHash('md5').update(JSON.stringify(this.projectConfig)).digest('hex');
        };
        return NgccConfiguration;
    }());
    exports.NgccConfiguration = NgccConfiguration;
    function findSatisfactoryVersion(configs, version) {
        if (configs === undefined) {
            return null;
        }
        if (version === null) {
            // The package has no version (!) - perhaps the entry-point was from a deep import, which made
            // it impossible to find the package.json.
            // So just return the first config that matches the package name.
            return configs[0];
        }
        return configs.find(function (config) { return semver_1.satisfies(version, config.versionRange, { includePrerelease: true }); }) ||
            null;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29uZmlndXJhdGlvbi5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9uZ2NjL3NyYy9wYWNrYWdlcy9jb25maWd1cmF0aW9uLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7SUFBQTs7Ozs7O09BTUc7SUFDSCxpQ0FBa0M7SUFDbEMsaUNBQWlDO0lBQ2pDLHVCQUF5QjtJQUV6QiwyRUFBa0c7SUF5RmxHOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O09Bc0JHO0lBQ1UsUUFBQSxtQkFBbUIsR0FBc0I7UUFDcEQsUUFBUSxFQUFFO1lBQ1IsdURBQXVEO1lBQ3ZELDRCQUE0QjtZQUM1QixtQkFBbUI7WUFDbkIsK0NBQStDO1lBQy9DLE9BQU87WUFDUCxLQUFLO1lBRUwsZ0dBQWdHO1lBQ2hHLHlGQUF5RjtZQUN6Riw0Q0FBNEM7WUFDNUMscUJBQXFCLEVBQUU7Z0JBQ3JCLFdBQVcsRUFBRTtvQkFDWCxHQUFHLEVBQUU7d0JBQ0gsUUFBUSxFQUFFOzRCQUNSLElBQUksRUFBRSxZQUFZO3lCQUNuQjtxQkFDRjtpQkFDRjthQUNGO1lBRUQsZ0dBQWdHO1lBQ2hHLHNGQUFzRjtZQUN0RixrQ0FBa0M7WUFDbEMsYUFBYSxFQUFFO2dCQUNiLFdBQVcsRUFBRTtvQkFDWCxRQUFRLEVBQUUsRUFBQyxNQUFNLEVBQUUsSUFBSSxFQUFDO2lCQUN6QjthQUNGO1NBQ0Y7UUFDRCxPQUFPLEVBQUU7WUFDUCxVQUFVLEVBQUUsR0FBRztZQUNmLGFBQWEsRUFBRSxHQUFHO1NBQ25CO0tBQ0YsQ0FBQztJQUVGLElBQU0sb0JBQW9CLEdBQUcsZ0JBQWdCLENBQUM7SUFFOUM7O09BRUc7SUFDSDtRQXVCRSxvQ0FBWSxXQUEyQixFQUFFLEVBR2xCO2dCQUZyQixtQkFBZ0IsRUFBaEIsV0FBVyxtQkFBRyxFQUFFLEtBQUEsRUFDaEIsbUNBQWdDLEVBQWhDLDJCQUEyQixtQkFBRyxF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QUNyQjtvQkFDRSxxQkFBcUIsQ0FBQyxTQUFTLENBQUMsQ0FBQyxFQUFFLFlBQVksQ0FBQztvQkFDaEQscUJBQXFCLENBQUMsU0FBUyxDQUFDLFlBQVksR0FBRyxDQUFDLENBQUM7aUJBQ2xELENBQUMsQ0FBQztnQkFDSCxDQUFDLHFCQUFxQixFQUFFLFNBQVMsQ0FBQyxDQUFDO1FBQ3pDLENBQUM7UUFFTyx1Q0FBVyxHQUFuQjtZQUNFLE9BQU8sbUJBQVUsQ0FBQyxLQUFLLENBQUMsQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsYUFBYSxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDLENBQUM7UUFDcEYsQ0FBQztRQUNILHdCQUFDO0lBQUQsQ0FBQyxBQTNKRCxJQTJKQztJQTNKWSw4Q0FBaUI7SUE2SjlCLFNBQVMsdUJBQXVCLENBQUMsT0FBMkMsRUFBRSxPQUFvQjtRQUVoRyxJQUFJLE9BQU8sS0FBSyxTQUFTLEVBQUU7WUFDekIsT0FBTyxJQUFJLENBQUM7U0FDYjtRQUNELElBQUksT0FBTyxLQUFLLElBQUksRUFBRTtZQUNwQiw4RkFBOEY7WUFDOUYsMENBQTBDO1lBQzFDLGlFQUFpRTtZQUNqRSxPQUFPLE9BQU8sQ0FBQyxDQUFDLENBQUMsQ0FBQztTQUNuQjtRQUNELE9BQU8sT0FBTyxDQUFDLElBQUksQ0FDUixVQUFBLE1BQU0sSUFBSSxPQUFBLGtCQUFTLENBQUMsT0FBTyxFQUFFLE1BQU0sQ0FBQyxZQUFZLEVBQUUsRUFBQyxpQkFBaUIsRUFBRSxJQUFJLEVBQUMsQ0FBQyxFQUFsRSxDQUFrRSxDQUFDO1lBQ3BGLElBQUksQ0FBQztJQUNYLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCB7Y3JlYXRlSGFzaH0gZnJvbSAnY3J5cHRvJztcbmltcG9ydCB7c2F0aXNmaWVzfSBmcm9tICdzZW12ZXInO1xuaW1wb3J0ICogYXMgdm0gZnJvbSAndm0nO1xuXG5pbXBvcnQge0Fic29sdXRlRnNQYXRoLCBkaXJuYW1lLCBGaWxlU3lzdGVtLCBqb2luLCByZXNvbHZlfSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvZmlsZV9zeXN0ZW0nO1xuXG5pbXBvcnQge1BhY2thZ2VKc29uRm9ybWF0UHJvcGVydGllc01hcH0gZnJvbSAnLi9lbnRyeV9wb2ludCc7XG5cbi8qKlxuICogVGhlIGZvcm1hdCBvZiBhIHByb2plY3QgbGV2ZWwgY29uZmlndXJhdGlvbiBmaWxlLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIE5nY2NQcm9qZWN0Q29uZmlnPFQgPSBSYXdOZ2NjUGFja2FnZUNvbmZpZz4ge1xuICAvKipcbiAgICogVGhlIHBhY2thZ2VzIHRoYXQgYXJlIGNvbmZpZ3VyZWQgYnkgdGhpcyBwcm9qZWN0IGNvbmZpZy5cbiAgICovXG4gIHBhY2thZ2VzPzoge1twYWNrYWdlUGF0aDogc3RyaW5nXTogVHx1bmRlZmluZWR9O1xuICAvKipcbiAgICogT3B0aW9ucyB0aGF0IGNvbnRyb2wgaG93IGxvY2tpbmcgdGhlIHByb2Nlc3MgaXMgaGFuZGxlZC5cbiAgICovXG4gIGxvY2tpbmc/OiBQcm9jZXNzTG9ja2luZ0NvbmZpZ3VyYXRpb247XG59XG5cbi8qKlxuICogT3B0aW9ucyB0aGF0IGNvbnRyb2wgaG93IGxvY2tpbmcgdGhlIHByb2Nlc3MgaXMgaGFuZGxlZC5cbiAqL1xuZXhwb3J0IGludGVyZmFjZSBQcm9jZXNzTG9ja2luZ0NvbmZpZ3VyYXRpb24ge1xuICAvKipcbiAgICogVGhlIG51bWJlciBvZiB0aW1lcyB0aGUgQXN5bmNMb2NrZXIgd2lsbCBhdHRlbXB0IHRvIGxvY2sgdGhlIHByb2Nlc3MgYmVmb3JlIGZhaWxpbmcuXG4gICAqIERlZmF1bHRzIHRvIDUwMC5cbiAgICovXG4gIHJldHJ5QXR0ZW1wdHM/OiBudW1iZXI7XG4gIC8qKlxuICAgKiBUaGUgbnVtYmVyIG9mIG1pbGxpc2Vjb25kcyBiZXR3ZWVuIGF0dGVtcHRzIHRvIGxvY2sgdGhlIHByb2Nlc3MuXG4gICAqIERlZmF1bHRzIHRvIDUwMG1zLlxuICAgKiAqL1xuICByZXRyeURlbGF5PzogbnVtYmVyO1xufVxuXG4vKipcbiAqIFRoZSByYXcgZm9ybWF0IG9mIGEgcGFja2FnZSBsZXZlbCBjb25maWd1cmF0aW9uIChhcyBpdCBhcHBlYXJzIGluIGNvbmZpZ3VyYXRpb24gZmlsZXMpLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIFJhd05nY2NQYWNrYWdlQ29uZmlnIHtcbiAgLyoqXG4gICAqIFRoZSBlbnRyeS1wb2ludHMgdG8gY29uZmlndXJlIGZvciB0aGlzIHBhY2thZ2UuXG4gICAqXG4gICAqIEluIHRoZSBjb25maWcgZmlsZSB0aGUga2V5cyBhcmUgcGF0aHMgcmVsYXRpdmUgdG8gdGhlIHBhY2thZ2UgcGF0aC5cbiAgICovXG4gIGVudHJ5UG9pbnRzPzoge1tlbnRyeVBvaW50UGF0aDogc3RyaW5nXTogTmdjY0VudHJ5UG9pbnRDb25maWd9O1xuXG4gIC8qKlxuICAgKiBBIGNvbGxlY3Rpb24gb2YgcmVnZXhlcyB0aGF0IG1hdGNoIGRlZXAgaW1wb3J0cyB0byBpZ25vcmUsIGZvciB0aGlzIHBhY2thZ2UsIHJhdGhlciB0aGFuXG4gICAqIGRpc3BsYXlpbmcgYSB3YXJuaW5nLlxuICAgKi9cbiAgaWdub3JhYmxlRGVlcEltcG9ydE1hdGNoZXJzPzogUmVnRXhwW107XG59XG5cbi8qKlxuICogQ29uZmlndXJhdGlvbiBvcHRpb25zIGZvciBhbiBlbnRyeS1wb2ludC5cbiAqXG4gKiBUaGUgZXhpc3RlbmNlIG9mIGEgY29uZmlndXJhdGlvbiBmb3IgYSBwYXRoIHRlbGxzIG5nY2MgdGhhdCB0aGlzIHNob3VsZCBiZSBjb25zaWRlcmVkIGZvclxuICogcHJvY2Vzc2luZyBhcyBhbiBlbnRyeS1wb2ludC5cbiAqL1xuZXhwb3J0IGludGVyZmFjZSBOZ2NjRW50cnlQb2ludENvbmZpZyB7XG4gIC8qKiBEbyBub3QgcHJvY2VzcyAob3IgZXZlbiBhY2tub3dsZWRnZSB0aGUgZXhpc3RlbmNlIG9mKSB0aGlzIGVudHJ5LXBvaW50LCBpZiB0cnVlLiAqL1xuICBpZ25vcmU/OiBib29sZWFuO1xuXG4gIC8qKlxuICAgKiBUaGlzIHByb3BlcnR5LCBpZiBwcm92aWRlZCwgaG9sZHMgdmFsdWVzIHRoYXQgd2lsbCBvdmVycmlkZSBlcXVpdmFsZW50IHByb3BlcnRpZXMgaW4gYW5cbiAgICogZW50cnktcG9pbnQncyBwYWNrYWdlLmpzb24gZmlsZS5cbiAgICovXG4gIG92ZXJyaWRlPzogUGFja2FnZUpzb25Gb3JtYXRQcm9wZXJ0aWVzTWFwO1xuXG4gIC8qKlxuICAgKiBOb3JtYWxseSwgbmdjYyB3aWxsIHNraXAgY29tcGlsYXRpb24gb2YgZW50cnlwb2ludHMgdGhhdCBjb250YWluIGltcG9ydHMgdGhhdCBjYW4ndCBiZSByZXNvbHZlZFxuICAgKiBvciB1bmRlcnN0b29kLiBJZiB0aGlzIG9wdGlvbiBpcyBzcGVjaWZpZWQsIG5nY2Mgd2lsbCBwcm9jZWVkIHdpdGggY29tcGlsaW5nIHRoZSBlbnRyeXBvaW50XG4gICAqIGV2ZW4gaW4gdGhlIGZhY2Ugb2Ygc3VjaCBtaXNzaW5nIGRlcGVuZGVuY2llcy5cbiAgICovXG4gIGlnbm9yZU1pc3NpbmdEZXBlbmRlbmNpZXM/OiBib29sZWFuO1xuXG4gIC8qKlxuICAgKiBFbmFibGluZyB0aGlzIG9wdGlvbiBmb3IgYW4gZW50cnlwb2ludCB0ZWxscyBuZ2NjIHRoYXQgZGVlcCBpbXBvcnRzIG1pZ2h0IGJlIHVzZWQgZm9yIHRoZSBmaWxlc1xuICAgKiBpdCBjb250YWlucywgYW5kIHRoYXQgaXQgc2hvdWxkIGdlbmVyYXRlIHByaXZhdGUgcmUtZXhwb3J0cyBhbG9uZ3NpZGUgdGhlIE5nTW9kdWxlIG9mIGFsbCB0aGVcbiAgICogZGlyZWN0aXZlcy9waXBlcyBpdCBtYWtlcyBhdmFpbGFibGUgaW4gc3VwcG9ydCBvZiB0aG9zZSBpbXBvcnRzLlxuICAgKi9cbiAgZ2VuZXJhdGVEZWVwUmVleHBvcnRzPzogYm9vbGVhbjtcbn1cblxuaW50ZXJmYWNlIFZlcnNpb25lZFBhY2thZ2VDb25maWcgZXh0ZW5kcyBSYXdOZ2NjUGFja2FnZUNvbmZpZyB7XG4gIHZlcnNpb25SYW5nZTogc3RyaW5nO1xufVxuXG50eXBlIFBhcnRpYWxseVByb2Nlc3NlZENvbmZpZyA9IFJlcXVpcmVkPE5nY2NQcm9qZWN0Q29uZmlnPFZlcnNpb25lZFBhY2thZ2VDb25maWdbXT4+O1xuXG4vKipcbiAqIFRoZSBkZWZhdWx0IGNvbmZpZ3VyYXRpb24gZm9yIG5nY2MuXG4gKlxuICogVGhpcyBpcyB0aGUgdWx0aW1hdGUgZmFsbGJhY2sgY29uZmlndXJhdGlvbiB0aGF0IG5nY2Mgd2lsbCB1c2UgaWYgdGhlcmUgaXMgbm8gY29uZmlndXJhdGlvblxuICogZm9yIGEgcGFja2FnZSBhdCB0aGUgcGFja2FnZSBsZXZlbCBvciBwcm9qZWN0IGxldmVsLlxuICpcbiAqIFRoaXMgY29uZmlndXJhdGlvbiBpcyBmb3IgcGFja2FnZXMgdGhhdCBhcmUgXCJkZWFkXCIgLSBpLmUuIG5vIGxvbmdlciBtYWludGFpbmVkIGFuZCBzbyBhcmVcbiAqIHVubGlrZWx5IHRvIGJlIGZpeGVkIHRvIHdvcmsgd2l0aCBuZ2NjLCBub3IgcHJvdmlkZSBhIHBhY2thZ2UgbGV2ZWwgY29uZmlnIG9mIHRoZWlyIG93bi5cbiAqXG4gKiBUaGUgZmFsbGJhY2sgcHJvY2VzcyBmb3IgbG9va2luZyB1cCBjb25maWd1cmF0aW9uIGlzOlxuICpcbiAqIFByb2plY3QgLT4gUGFja2FnZSAtPiBEZWZhdWx0XG4gKlxuICogSWYgYSBwYWNrYWdlIHByb3ZpZGVzIGl0cyBvd24gY29uZmlndXJhdGlvbiB0aGVuIHRoYXQgd291bGQgb3ZlcnJpZGUgdGhpcyBkZWZhdWx0IG9uZS5cbiAqXG4gKiBBbHNvIGFwcGxpY2F0aW9uIGRldmVsb3BlcnMgY2FuIGFsd2F5cyBwcm92aWRlIGNvbmZpZ3VyYXRpb24gYXQgdGhlaXIgcHJvamVjdCBsZXZlbCB3aGljaFxuICogd2lsbCBvdmVycmlkZSBldmVyeXRoaW5nIGVsc2UuXG4gKlxuICogTm90ZSB0aGF0IHRoZSBmYWxsYmFjayBpcyBwYWNrYWdlIGJhc2VkIG5vdCBlbnRyeS1wb2ludCBiYXNlZC5cbiAqIEZvciBleGFtcGxlLCBpZiBhIHRoZXJlIGlzIGNvbmZpZ3VyYXRpb24gZm9yIGEgcGFja2FnZSBhdCB0aGUgcHJvamVjdCBsZXZlbCB0aGlzIHdpbGwgcmVwbGFjZSBhbGxcbiAqIGVudHJ5LXBvaW50IGNvbmZpZ3VyYXRpb25zIHRoYXQgbWF5IGhhdmUgYmVlbiBwcm92aWRlZCBpbiB0aGUgcGFja2FnZSBsZXZlbCBvciBkZWZhdWx0IGxldmVsXG4gKiBjb25maWd1cmF0aW9ucywgZXZlbiBpZiB0aGUgcHJvamVjdCBsZXZlbCBjb25maWd1cmF0aW9uIGRvZXMgbm90IHByb3ZpZGUgZm9yIGEgZ2l2ZW4gZW50cnktcG9pbnQuXG4gKi9cbmV4cG9ydCBjb25zdCBERUZBVUxUX05HQ0NfQ09ORklHOiBOZ2NjUHJvamVjdENvbmZpZyA9IHtcbiAgcGFja2FnZXM6IHtcbiAgICAvLyBBZGQgZGVmYXVsdCBwYWNrYWdlIGNvbmZpZ3VyYXRpb24gaGVyZS4gRm9yIGV4YW1wbGU6XG4gICAgLy8gJ0Bhbmd1bGFyL2ZpcmVAXjUuMi4wJzoge1xuICAgIC8vICAgZW50cnlQb2ludHM6IHtcbiAgICAvLyAgICAgJy4vZGF0YWJhc2UtZGVwcmVjYXRlZCc6IHtpZ25vcmU6IHRydWV9LFxuICAgIC8vICAgfSxcbiAgICAvLyB9LFxuXG4gICAgLy8gVGhlIHBhY2thZ2UgZG9lcyBub3QgY29udGFpbiBhbnkgYC5tZXRhZGF0YS5qc29uYCBmaWxlcyBpbiB0aGUgcm9vdCBkaXJlY3RvcnkgYnV0IG9ubHkgaW5zaWRlXG4gICAgLy8gYGRpc3QvYC4gV2l0aG91dCB0aGlzIGNvbmZpZywgbmdjYyBkb2VzIG5vdCByZWFsaXplIHRoaXMgaXMgYSBWaWV3RW5naW5lLWJ1aWx0IEFuZ3VsYXJcbiAgICAvLyBwYWNrYWdlIHRoYXQgbmVlZHMgdG8gYmUgY29tcGlsZWQgdG8gSXZ5LlxuICAgICdhbmd1bGFyMi1oaWdoY2hhcnRzJzoge1xuICAgICAgZW50cnlQb2ludHM6IHtcbiAgICAgICAgJy4nOiB7XG4gICAgICAgICAgb3ZlcnJpZGU6IHtcbiAgICAgICAgICAgIG1haW46ICcuL2luZGV4LmpzJyxcbiAgICAgICAgICB9LFxuICAgICAgICB9LFxuICAgICAgfSxcbiAgICB9LFxuXG4gICAgLy8gVGhlIGBkaXN0L2AgZGlyZWN0b3J5IGhhcyBhIGR1cGxpY2F0ZSBgcGFja2FnZS5qc29uYCBwb2ludGluZyB0byB0aGUgc2FtZSBmaWxlcywgd2hpY2ggKHVuZGVyXG4gICAgLy8gY2VydGFpbiBjb25maWd1cmF0aW9ucykgY2FuIGNhdXNlcyBuZ2NjIHRvIHRyeSB0byBwcm9jZXNzIHRoZSBmaWxlcyB0d2ljZSBhbmQgZmFpbC5cbiAgICAvLyBJZ25vcmUgdGhlIGBkaXN0L2AgZW50cnktcG9pbnQuXG4gICAgJ25nMi1kcmFndWxhJzoge1xuICAgICAgZW50cnlQb2ludHM6IHtcbiAgICAgICAgJy4vZGlzdCc6IHtpZ25vcmU6IHRydWV9LFxuICAgICAgfSxcbiAgICB9LFxuICB9LFxuICBsb2NraW5nOiB7XG4gICAgcmV0cnlEZWxheTogNTAwLFxuICAgIHJldHJ5QXR0ZW1wdHM6IDUwMCxcbiAgfVxufTtcblxuY29uc3QgTkdDQ19DT05GSUdfRklMRU5BTUUgPSAnbmdjYy5jb25maWcuanMnO1xuXG4vKipcbiAqIFRoZSBwcm9jZXNzZWQgcGFja2FnZSBsZXZlbCBjb25maWd1cmF0aW9uIGFzIGEgcmVzdWx0IG9mIHByb2Nlc3NpbmcgYSByYXcgcGFja2FnZSBsZXZlbCBjb25maWcuXG4gKi9cbmV4cG9ydCBjbGFzcyBQcm9jZXNzZWROZ2NjUGFja2FnZUNvbmZpZyBpbXBsZW1lbnRzIE9taXQ8UmF3TmdjY1BhY2thZ2VDb25maWcsICdlbnRyeVBvaW50cyc+IHtcbiAgLyoqXG4gICAqIFRoZSBhYnNvbHV0ZSBwYXRoIHRvIHRoaXMgaW5zdGFuY2Ugb2YgdGhlIHBhY2thZ2UuXG4gICAqIE5vdGUgdGhhdCB0aGVyZSBtYXkgYmUgbXVsdGlwbGUgaW5zdGFuY2VzIG9mIGEgcGFja2FnZSBpbnNpZGUgYSBwcm9qZWN0IGluIG5lc3RlZFxuICAgKiBgbm9kZV9tb2R1bGVzL2AuIEZvciBleGFtcGxlLCBvbmUgYXQgYDxwcm9qZWN0LXJvb3Q+L25vZGVfbW9kdWxlcy9zb21lLXBhY2thZ2UvYCBhbmQgb25lIGF0XG4gICAqIGA8cHJvamVjdC1yb290Pi9ub2RlX21vZHVsZXMvb3RoZXItcGFja2FnZS9ub2RlX21vZHVsZXMvc29tZS1wYWNrYWdlL2AuXG4gICAqL1xuICBwYWNrYWdlUGF0aDogQWJzb2x1dGVGc1BhdGg7XG5cbiAgLyoqXG4gICAqIFRoZSBlbnRyeS1wb2ludHMgdG8gY29uZmlndXJlIGZvciB0aGlzIHBhY2thZ2UuXG4gICAqXG4gICAqIEluIGNvbnRyYXN0IHRvIGBSYXdOZ2NjUGFja2FnZUNvbmZpZ2AsIHRoZSBwYXRocyBhcmUgYWJzb2x1dGUgYW5kIHRha2UgdGhlIHBhdGggb2YgdGhlIHNwZWNpZmljXG4gICAqIGluc3RhbmNlIG9mIHRoZSBwYWNrYWdlIGludG8gYWNjb3VudC5cbiAgICovXG4gIGVudHJ5UG9pbnRzOiBNYXA8QWJzb2x1dGVGc1BhdGgsIE5nY2NFbnRyeVBvaW50Q29uZmlnPjtcblxuICAvKipcbiAgICogQSBjb2xsZWN0aW9uIG9mIHJlZ2V4ZXMgdGhhdCBtYXRjaCBkZWVwIGltcG9ydHMgdG8gaWdub3JlLCBmb3IgdGhpcyBwYWNrYWdlLCByYXRoZXIgdGhhblxuICAgKiBkaXNwbGF5aW5nIGEgd2FybmluZy5cbiAgICovXG4gIGlnbm9yYWJsZURlZXBJbXBvcnRNYXRjaGVyczogUmVnRXhwW107XG5cbiAgY29uc3RydWN0b3IocGFja2FnZVBhdGg6IEFic29sdXRlRnNQYXRoLCB7XG4gICAgZW50cnlQb2ludHMgPSB7fSxcbiAgICBpZ25vcmFibGVEZWVwSW1wb3J0TWF0Y2hlcnMgPSBbXSxcbiAgfTogUmF3TmdjY1BhY2thZ2VDb25maWcpIHtcbiAgICBjb25zdCBhYnNvbHV0ZVBhdGhFbnRyaWVzOiBbQWJzb2x1dGVGc1BhdGgsIE5nY2NFbnRyeVBvaW50Q29uZmlnXVtdID1cbiAgICAgICAgT2JqZWN0LmVudHJpZXMoZW50cnlQb2ludHMpLm1hcCgoW3JlbGF0aXZlUGF0aCxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbmZpZ10pID0+IFtyZXNvbHZlKHBhY2thZ2VQYXRoLCByZWxhdGl2ZVBhdGgpLCBjb25maWddKTtcblxuICAgIHRoaXMucGFja2FnZVBhdGggPSBwYWNrYWdlUGF0aDtcbiAgICB0aGlzLmVudHJ5UG9pbnRzID0gbmV3IE1hcChhYnNvbHV0ZVBhdGhFbnRyaWVzKTtcbiAgICB0aGlzLmlnbm9yYWJsZURlZXBJbXBvcnRNYXRjaGVycyA9IGlnbm9yYWJsZURlZXBJbXBvcnRNYXRjaGVycztcbiAgfVxufVxuXG4vKipcbiAqIE5nY2MgaGFzIGEgaGllcmFyY2hpY2FsIGNvbmZpZ3VyYXRpb24gc3lzdGVtIHRoYXQgbGV0cyB1cyBcImZpeCB1cFwiIHBhY2thZ2VzIHRoYXQgZG8gbm90XG4gKiB3b3JrIHdpdGggbmdjYyBvdXQgb2YgdGhlIGJveC5cbiAqXG4gKiBUaGVyZSBhcmUgdGhyZWUgbGV2ZWxzIGF0IHdoaWNoIGNvbmZpZ3VyYXRpb24gY2FuIGJlIGRlY2xhcmVkOlxuICpcbiAqICogRGVmYXVsdCBsZXZlbCAtIG5nY2MgY29tZXMgd2l0aCBidWlsdC1pbiBjb25maWd1cmF0aW9uIGZvciB3ZWxsIGtub3duIGNhc2VzLlxuICogKiBQYWNrYWdlIGxldmVsIC0gYSBsaWJyYXJ5IGF1dGhvciBwdWJsaXNoZXMgYSBjb25maWd1cmF0aW9uIHdpdGggdGhlaXIgcGFja2FnZSB0byBmaXgga25vd25cbiAqICAgaXNzdWVzLlxuICogKiBQcm9qZWN0IGxldmVsIC0gdGhlIGFwcGxpY2F0aW9uIGRldmVsb3BlciBwcm92aWRlcyBhIGNvbmZpZ3VyYXRpb24gdGhhdCBmaXhlcyBpc3N1ZXMgc3BlY2lmaWNcbiAqICAgdG8gdGhlIGxpYnJhcmllcyB1c2VkIGluIHRoZWlyIGFwcGxpY2F0aW9uLlxuICpcbiAqIE5nY2Mgd2lsbCBtYXRjaCBjb25maWd1cmF0aW9uIGJhc2VkIG9uIHRoZSBwYWNrYWdlIG5hbWUgYnV0IGFsc28gb24gaXRzIHZlcnNpb24uIFRoaXMgYWxsb3dzXG4gKiBjb25maWd1cmF0aW9uIHRvIHByb3ZpZGUgZGlmZmVyZW50IGZpeGVzIHRvIGRpZmZlcmVudCB2ZXJzaW9uIHJhbmdlcyBvZiBhIHBhY2thZ2UuXG4gKlxuICogKiBQYWNrYWdlIGxldmVsIGNvbmZpZ3VyYXRpb24gaXMgc3BlY2lmaWMgdG8gdGhlIHBhY2thZ2UgdmVyc2lvbiB3aGVyZSB0aGUgY29uZmlndXJhdGlvbiBpc1xuICogICBmb3VuZC5cbiAqICogRGVmYXVsdCBhbmQgcHJvamVjdCBsZXZlbCBjb25maWd1cmF0aW9uIHNob3VsZCBwcm92aWRlIHZlcnNpb24gcmFuZ2VzIHRvIGVuc3VyZSB0aGF0IHRoZVxuICogICBjb25maWd1cmF0aW9uIGlzIG9ubHkgYXBwbGllZCB0byB0aGUgYXBwcm9wcmlhdGUgdmVyc2lvbnMgb2YgYSBwYWNrYWdlLlxuICpcbiAqIFdoZW4gZ2V0dGluZyBhIGNvbmZpZ3VyYXRpb24gZm9yIGEgcGFja2FnZSAodmlhIGBnZXRDb25maWcoKWApIHRoZSBjYWxsZXIgc2hvdWxkIHByb3ZpZGUgdGhlXG4gKiB2ZXJzaW9uIG9mIHRoZSBwYWNrYWdlIGluIHF1ZXN0aW9uLCBpZiBhdmFpbGFibGUuIElmIGl0IGlzIG5vdCBwcm92aWRlZCB0aGVuIHRoZSBmaXJzdCBhdmFpbGFibGVcbiAqIGNvbmZpZ3VyYXRpb24gZm9yIGEgcGFja2FnZSBpcyByZXR1cm5lZC5cbiAqL1xuZXhwb3J0IGNsYXNzIE5nY2NDb25maWd1cmF0aW9uIHtcbiAgcHJpdmF0ZSBkZWZhdWx0Q29uZmlnOiBQYXJ0aWFsbHlQcm9jZXNzZWRDb25maWc7XG4gIHByaXZhdGUgcHJvamVjdENvbmZpZzogUGFydGlhbGx5UHJvY2Vzc2VkQ29uZmlnO1xuICBwcml2YXRlIGNhY2hlID0gbmV3IE1hcDxzdHJpbmcsIFZlcnNpb25lZFBhY2thZ2VDb25maWc+KCk7XG4gIHJlYWRvbmx5IGhhc2g6IHN0cmluZztcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGZzOiBGaWxlU3lzdGVtLCBiYXNlRGlyOiBBYnNvbHV0ZUZzUGF0aCkge1xuICAgIHRoaXMuZGVmYXVsdENvbmZpZyA9IHRoaXMucHJvY2Vzc1Byb2plY3RDb25maWcoREVGQVVMVF9OR0NDX0NPTkZJRyk7XG4gICAgdGhpcy5wcm9qZWN0Q29uZmlnID0gdGhpcy5wcm9jZXNzUHJvamVjdENvbmZpZyh0aGlzLmxvYWRQcm9qZWN0Q29uZmlnKGJhc2VEaXIpKTtcbiAgICB0aGlzLmhhc2ggPSB0aGlzLmNvbXB1dGVIYXNoKCk7XG4gIH1cblxuICAvKipcbiAgICogR2V0IHRoZSBjb25maWd1cmF0aW9uIG9wdGlvbnMgZm9yIGxvY2tpbmcgdGhlIG5nY2MgcHJvY2Vzcy5cbiAgICovXG4gIGdldExvY2tpbmdDb25maWcoKTogUmVxdWlyZWQ8UHJvY2Vzc0xvY2tpbmdDb25maWd1cmF0aW9uPiB7XG4gICAgbGV0IHtyZXRyeUF0dGVtcHRzLCByZXRyeURlbGF5fSA9IHRoaXMucHJvamVjdENvbmZpZy5sb2NraW5nO1xuICAgIGlmIChyZXRyeUF0dGVtcHRzID09PSB1bmRlZmluZWQpIHtcbiAgICAgIHJldHJ5QXR0ZW1wdHMgPSB0aGlzLmRlZmF1bHRDb25maWcubG9ja2luZy5yZXRyeUF0dGVtcHRzITtcbiAgICB9XG4gICAgaWYgKHJldHJ5RGVsYXkgPT09IHVuZGVmaW5lZCkge1xuICAgICAgcmV0cnlEZWxheSA9IHRoaXMuZGVmYXVsdENvbmZpZy5sb2NraW5nLnJldHJ5RGVsYXkhO1xuICAgIH1cbiAgICByZXR1cm4ge3JldHJ5QXR0ZW1wdHMsIHJldHJ5RGVsYXl9O1xuICB9XG5cbiAgLyoqXG4gICAqIEdldCBhIGNvbmZpZ3VyYXRpb24gZm9yIHRoZSBnaXZlbiBgdmVyc2lvbmAgb2YgYSBwYWNrYWdlIGF0IGBwYWNrYWdlUGF0aGAuXG4gICAqXG4gICAqIEBwYXJhbSBwYWNrYWdlTmFtZSBUaGUgbmFtZSBvZiB0aGUgcGFja2FnZSB3aG9zZSBjb25maWcgd2Ugd2FudC5cbiAgICogQHBhcmFtIHBhY2thZ2VQYXRoIFRoZSBwYXRoIHRvIHRoZSBwYWNrYWdlIHdob3NlIGNvbmZpZyB3ZSB3YW50LlxuICAgKiBAcGFyYW0gdmVyc2lvbiBUaGUgdmVyc2lvbiBvZiB0aGUgcGFja2FnZSB3aG9zZSBjb25maWcgd2Ugd2FudCwgb3IgYG51bGxgIGlmIHRoZSBwYWNrYWdlJ3NcbiAgICogcGFja2FnZS5qc29uIGRpZCBub3QgZXhpc3Qgb3Igd2FzIGludmFsaWQuXG4gICAqL1xuICBnZXRQYWNrYWdlQ29uZmlnKHBhY2thZ2VOYW1lOiBzdHJpbmcsIHBhY2thZ2VQYXRoOiBBYnNvbHV0ZUZzUGF0aCwgdmVyc2lvbjogc3RyaW5nfG51bGwpOlxuICAgICAgUHJvY2Vzc2VkTmdjY1BhY2thZ2VDb25maWcge1xuICAgIGNvbnN0IHJhd1BhY2thZ2VDb25maWcgPSB0aGlzLmdldFJhd1BhY2thZ2VDb25maWcocGFja2FnZU5hbWUsIHBhY2thZ2VQYXRoLCB2ZXJzaW9uKTtcbiAgICByZXR1cm4gbmV3IFByb2Nlc3NlZE5nY2NQYWNrYWdlQ29uZmlnKHBhY2thZ2VQYXRoLCByYXdQYWNrYWdlQ29uZmlnKTtcbiAgfVxuXG4gIHByaXZhdGUgZ2V0UmF3UGFja2FnZUNvbmZpZyhcbiAgICAgIHBhY2thZ2VOYW1lOiBzdHJpbmcsIHBhY2thZ2VQYXRoOiBBYnNvbHV0ZUZzUGF0aCxcbiAgICAgIHZlcnNpb246IHN0cmluZ3xudWxsKTogVmVyc2lvbmVkUGFja2FnZUNvbmZpZyB7XG4gICAgY29uc3QgY2FjaGVLZXkgPSBwYWNrYWdlTmFtZSArICh2ZXJzaW9uICE9PSBudWxsID8gYEAke3ZlcnNpb259YCA6ICcnKTtcbiAgICBpZiAodGhpcy5jYWNoZS5oYXMoY2FjaGVLZXkpKSB7XG4gICAgICByZXR1cm4gdGhpcy5jYWNoZS5nZXQoY2FjaGVLZXkpITtcbiAgICB9XG5cbiAgICBjb25zdCBwcm9qZWN0TGV2ZWxDb25maWcgPSB0aGlzLnByb2plY3RDb25maWcucGFja2FnZXMgP1xuICAgICAgICBmaW5kU2F0aXNmYWN0b3J5VmVyc2lvbih0aGlzLnByb2plY3RDb25maWcucGFja2FnZXNbcGFja2FnZU5hbWVdLCB2ZXJzaW9uKSA6XG4gICAgICAgIG51bGw7XG4gICAgaWYgKHByb2plY3RMZXZlbENvbmZpZyAhPT0gbnVsbCkge1xuICAgICAgdGhpcy5jYWNoZS5zZXQoY2FjaGVLZXksIHByb2plY3RMZXZlbENvbmZpZyk7XG4gICAgICByZXR1cm4gcHJvamVjdExldmVsQ29uZmlnO1xuICAgIH1cblxuICAgIGNvbnN0IHBhY2thZ2VMZXZlbENvbmZpZyA9IHRoaXMubG9hZFBhY2thZ2VDb25maWcocGFja2FnZVBhdGgsIHZlcnNpb24pO1xuICAgIGlmIChwYWNrYWdlTGV2ZWxDb25maWcgIT09IG51bGwpIHtcbiAgICAgIHRoaXMuY2FjaGUuc2V0KGNhY2hlS2V5LCBwYWNrYWdlTGV2ZWxDb25maWcpO1xuICAgICAgcmV0dXJuIHBhY2thZ2VMZXZlbENvbmZpZztcbiAgICB9XG5cbiAgICBjb25zdCBkZWZhdWx0TGV2ZWxDb25maWcgPSB0aGlzLmRlZmF1bHRDb25maWcucGFja2FnZXMgP1xuICAgICAgICBmaW5kU2F0aXNmYWN0b3J5VmVyc2lvbih0aGlzLmRlZmF1bHRDb25maWcucGFja2FnZXNbcGFja2FnZU5hbWVdLCB2ZXJzaW9uKSA6XG4gICAgICAgIG51bGw7XG4gICAgaWYgKGRlZmF1bHRMZXZlbENvbmZpZyAhPT0gbnVsbCkge1xuICAgICAgdGhpcy5jYWNoZS5zZXQoY2FjaGVLZXksIGRlZmF1bHRMZXZlbENvbmZpZyk7XG4gICAgICByZXR1cm4gZGVmYXVsdExldmVsQ29uZmlnO1xuICAgIH1cblxuICAgIHJldHVybiB7dmVyc2lvblJhbmdlOiAnKid9O1xuICB9XG5cbiAgcHJpdmF0ZSBwcm9jZXNzUHJvamVjdENvbmZpZyhwcm9qZWN0Q29uZmlnOiBOZ2NjUHJvamVjdENvbmZpZyk6IFBhcnRpYWxseVByb2Nlc3NlZENvbmZpZyB7XG4gICAgY29uc3QgcHJvY2Vzc2VkQ29uZmlnOiBQYXJ0aWFsbHlQcm9jZXNzZWRDb25maWcgPSB7cGFja2FnZXM6IHt9LCBsb2NraW5nOiB7fX07XG5cbiAgICAvLyBsb2NraW5nIGNvbmZpZ3VyYXRpb25cbiAgICBpZiAocHJvamVjdENvbmZpZy5sb2NraW5nICE9PSB1bmRlZmluZWQpIHtcbiAgICAgIHByb2Nlc3NlZENvbmZpZy5sb2NraW5nID0gcHJvamVjdENvbmZpZy5sb2NraW5nO1xuICAgIH1cblxuICAgIC8vIHBhY2thZ2VzIGNvbmZpZ3VyYXRpb25cbiAgICBmb3IgKGNvbnN0IHBhY2thZ2VOYW1lQW5kVmVyc2lvbiBpbiBwcm9qZWN0Q29uZmlnLnBhY2thZ2VzKSB7XG4gICAgICBjb25zdCBwYWNrYWdlQ29uZmlnID0gcHJvamVjdENvbmZpZy5wYWNrYWdlc1twYWNrYWdlTmFtZUFuZFZlcnNpb25dO1xuICAgICAgaWYgKHBhY2thZ2VDb25maWcpIHtcbiAgICAgICAgY29uc3QgW3BhY2thZ2VOYW1lLCB2ZXJzaW9uUmFuZ2UgPSAnKiddID0gdGhpcy5zcGxpdE5hbWVBbmRWZXJzaW9uKHBhY2thZ2VOYW1lQW5kVmVyc2lvbik7XG4gICAgICAgIGNvbnN0IHBhY2thZ2VDb25maWdzID1cbiAgICAgICAgICAgIHByb2Nlc3NlZENvbmZpZy5wYWNrYWdlc1twYWNrYWdlTmFtZV0gfHwgKHByb2Nlc3NlZENvbmZpZy5wYWNrYWdlc1twYWNrYWdlTmFtZV0gPSBbXSk7XG4gICAgICAgIHBhY2thZ2VDb25maWdzIS5wdXNoKHsuLi5wYWNrYWdlQ29uZmlnLCB2ZXJzaW9uUmFuZ2V9KTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gcHJvY2Vzc2VkQ29uZmlnO1xuICB9XG5cbiAgcHJpdmF0ZSBsb2FkUHJvamVjdENvbmZpZyhiYXNlRGlyOiBBYnNvbHV0ZUZzUGF0aCk6IE5nY2NQcm9qZWN0Q29uZmlnIHtcbiAgICBjb25zdCBjb25maWdGaWxlUGF0aCA9IGpvaW4oYmFzZURpciwgTkdDQ19DT05GSUdfRklMRU5BTUUpO1xuICAgIGlmICh0aGlzLmZzLmV4aXN0cyhjb25maWdGaWxlUGF0aCkpIHtcbiAgICAgIHRyeSB7XG4gICAgICAgIHJldHVybiB0aGlzLmV2YWxTcmNGaWxlKGNvbmZpZ0ZpbGVQYXRoKTtcbiAgICAgIH0gY2F0Y2ggKGUpIHtcbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKGBJbnZhbGlkIHByb2plY3QgY29uZmlndXJhdGlvbiBmaWxlIGF0IFwiJHtjb25maWdGaWxlUGF0aH1cIjogYCArIGUubWVzc2FnZSk7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIHJldHVybiB7cGFja2FnZXM6IHt9fTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIGxvYWRQYWNrYWdlQ29uZmlnKHBhY2thZ2VQYXRoOiBBYnNvbHV0ZUZzUGF0aCwgdmVyc2lvbjogc3RyaW5nfG51bGwpOlxuICAgICAgVmVyc2lvbmVkUGFja2FnZUNvbmZpZ3xudWxsIHtcbiAgICBjb25zdCBjb25maWdGaWxlUGF0aCA9IGpvaW4ocGFja2FnZVBhdGgsIE5HQ0NfQ09ORklHX0ZJTEVOQU1FKTtcbiAgICBpZiAodGhpcy5mcy5leGlzdHMoY29uZmlnRmlsZVBhdGgpKSB7XG4gICAgICB0cnkge1xuICAgICAgICBjb25zdCBwYWNrYWdlQ29uZmlnID0gdGhpcy5ldmFsU3JjRmlsZShjb25maWdGaWxlUGF0aCk7XG4gICAgICAgIHJldHVybiB7XG4gICAgICAgICAgLi4ucGFja2FnZUNvbmZpZyxcbiAgICAgICAgICB2ZXJzaW9uUmFuZ2U6IHZlcnNpb24gfHwgJyonLFxuICAgICAgICB9O1xuICAgICAgfSBjYXRjaCAoZSkge1xuICAgICAgICB0aHJvdyBuZXcgRXJyb3IoYEludmFsaWQgcGFja2FnZSBjb25maWd1cmF0aW9uIGZpbGUgYXQgXCIke2NvbmZpZ0ZpbGVQYXRofVwiOiBgICsgZS5tZXNzYWdlKTtcbiAgICAgIH1cbiAgICB9IGVsc2Uge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBldmFsU3JjRmlsZShzcmNQYXRoOiBBYnNvbHV0ZUZzUGF0aCk6IGFueSB7XG4gICAgY29uc3Qgc3JjID0gdGhpcy5mcy5yZWFkRmlsZShzcmNQYXRoKTtcbiAgICBjb25zdCB0aGVFeHBvcnRzID0ge307XG4gICAgY29uc3Qgc2FuZGJveCA9IHtcbiAgICAgIG1vZHVsZToge2V4cG9ydHM6IHRoZUV4cG9ydHN9LFxuICAgICAgZXhwb3J0czogdGhlRXhwb3J0cyxcbiAgICAgIHJlcXVpcmUsXG4gICAgICBfX2Rpcm5hbWU6IGRpcm5hbWUoc3JjUGF0aCksXG4gICAgICBfX2ZpbGVuYW1lOiBzcmNQYXRoXG4gICAgfTtcbiAgICB2bS5ydW5Jbk5ld0NvbnRleHQoc3JjLCBzYW5kYm94LCB7ZmlsZW5hbWU6IHNyY1BhdGh9KTtcbiAgICByZXR1cm4gc2FuZGJveC5tb2R1bGUuZXhwb3J0cztcbiAgfVxuXG4gIHByaXZhdGUgc3BsaXROYW1lQW5kVmVyc2lvbihwYWNrYWdlTmFtZUFuZFZlcnNpb246IHN0cmluZyk6IFtzdHJpbmcsIHN0cmluZ3x1bmRlZmluZWRdIHtcbiAgICBjb25zdCB2ZXJzaW9uSW5kZXggPSBwYWNrYWdlTmFtZUFuZFZlcnNpb24ubGFzdEluZGV4T2YoJ0AnKTtcbiAgICAvLyBOb3RlIHRoYXQgPiAwIGlzIGJlY2F1c2Ugd2UgZG9uJ3Qgd2FudCB0byBtYXRjaCBAIGF0IHRoZSBzdGFydCBvZiB0aGUgbGluZVxuICAgIC8vIHdoaWNoIGlzIHdoYXQgeW91IHdvdWxkIGhhdmUgd2l0aCBhIG5hbWVzcGFjZWQgcGFja2FnZSwgZS5nLiBgQGFuZ3VsYXIvY29tbW9uYC5cbiAgICByZXR1cm4gdmVyc2lvbkluZGV4ID4gMCA/XG4gICAgICAgIFtcbiAgICAgICAgICBwYWNrYWdlTmFtZUFuZFZlcnNpb24uc3Vic3RyaW5nKDAsIHZlcnNpb25JbmRleCksXG4gICAgICAgICAgcGFja2FnZU5hbWVBbmRWZXJzaW9uLnN1YnN0cmluZyh2ZXJzaW9uSW5kZXggKyAxKSxcbiAgICAgICAgXSA6XG4gICAgICAgIFtwYWNrYWdlTmFtZUFuZFZlcnNpb24sIHVuZGVmaW5lZF07XG4gIH1cblxuICBwcml2YXRlIGNvbXB1dGVIYXNoKCk6IHN0cmluZyB7XG4gICAgcmV0dXJuIGNyZWF0ZUhhc2goJ21kNScpLnVwZGF0ZShKU09OLnN0cmluZ2lmeSh0aGlzLnByb2plY3RDb25maWcpKS5kaWdlc3QoJ2hleCcpO1xuICB9XG59XG5cbmZ1bmN0aW9uIGZpbmRTYXRpc2ZhY3RvcnlWZXJzaW9uKGNvbmZpZ3M6IFZlcnNpb25lZFBhY2thZ2VDb25maWdbXXx1bmRlZmluZWQsIHZlcnNpb246IHN0cmluZ3xudWxsKTpcbiAgICBWZXJzaW9uZWRQYWNrYWdlQ29uZmlnfG51bGwge1xuICBpZiAoY29uZmlncyA9PT0gdW5kZWZpbmVkKSB7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgaWYgKHZlcnNpb24gPT09IG51bGwpIHtcbiAgICAvLyBUaGUgcGFja2FnZSBoYXMgbm8gdmVyc2lvbiAoISkgLSBwZXJoYXBzIHRoZSBlbnRyeS1wb2ludCB3YXMgZnJvbSBhIGRlZXAgaW1wb3J0LCB3aGljaCBtYWRlXG4gICAgLy8gaXQgaW1wb3NzaWJsZSB0byBmaW5kIHRoZSBwYWNrYWdlLmpzb24uXG4gICAgLy8gU28ganVzdCByZXR1cm4gdGhlIGZpcnN0IGNvbmZpZyB0aGF0IG1hdGNoZXMgdGhlIHBhY2thZ2UgbmFtZS5cbiAgICByZXR1cm4gY29uZmlnc1swXTtcbiAgfVxuICByZXR1cm4gY29uZmlncy5maW5kKFxuICAgICAgICAgICAgIGNvbmZpZyA9PiBzYXRpc2ZpZXModmVyc2lvbiwgY29uZmlnLnZlcnNpb25SYW5nZSwge2luY2x1ZGVQcmVyZWxlYXNlOiB0cnVlfSkpIHx8XG4gICAgICBudWxsO1xufVxuIl19