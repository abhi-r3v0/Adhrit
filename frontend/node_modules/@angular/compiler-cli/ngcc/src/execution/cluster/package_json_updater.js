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
        define("@angular/compiler-cli/ngcc/src/execution/cluster/package_json_updater", ["require", "exports", "tslib", "cluster", "@angular/compiler-cli/ngcc/src/writing/package_json_updater", "@angular/compiler-cli/ngcc/src/execution/cluster/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.ClusterWorkerPackageJsonUpdater = void 0;
    var tslib_1 = require("tslib");
    /// <reference types="node" />
    var cluster = require("cluster");
    var package_json_updater_1 = require("@angular/compiler-cli/ngcc/src/writing/package_json_updater");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/execution/cluster/utils");
    /**
     * A `PackageJsonUpdater` for cluster workers that will send update changes to the master process so
     * that it can safely handle update operations on multiple processes.
     */
    var ClusterWorkerPackageJsonUpdater = /** @class */ (function () {
        function ClusterWorkerPackageJsonUpdater() {
            if (cluster.isMaster) {
                throw new Error('Tried to create cluster worker PackageJsonUpdater on the master process.');
            }
        }
        ClusterWorkerPackageJsonUpdater.prototype.createUpdate = function () {
            var _this = this;
            return new package_json_updater_1.PackageJsonUpdate(function () {
                var args = [];
                for (var _i = 0; _i < arguments.length; _i++) {
                    args[_i] = arguments[_i];
                }
                return _this.writeChanges.apply(_this, tslib_1.__spread(args));
            });
        };
        /**
         * Apply the changes in-memory (if necessary) and send a message to the master process.
         */
        ClusterWorkerPackageJsonUpdater.prototype.writeChanges = function (changes, packageJsonPath, preExistingParsedJson) {
            var e_1, _a;
            if (preExistingParsedJson) {
                try {
                    for (var changes_1 = tslib_1.__values(changes), changes_1_1 = changes_1.next(); !changes_1_1.done; changes_1_1 = changes_1.next()) {
                        var _b = tslib_1.__read(changes_1_1.value, 2), propPath = _b[0], value = _b[1];
                        if (propPath.length === 0) {
                            throw new Error("Missing property path for writing value to '" + packageJsonPath + "'.");
                        }
                        // No need to take property positioning into account for in-memory representations.
                        package_json_updater_1.applyChange(preExistingParsedJson, propPath, value, 'unimportant');
                    }
                }
                catch (e_1_1) { e_1 = { error: e_1_1 }; }
                finally {
                    try {
                        if (changes_1_1 && !changes_1_1.done && (_a = changes_1.return)) _a.call(changes_1);
                    }
                    finally { if (e_1) throw e_1.error; }
                }
            }
            utils_1.sendMessageToMaster({
                type: 'update-package-json',
                packageJsonPath: packageJsonPath,
                changes: changes,
            });
        };
        return ClusterWorkerPackageJsonUpdater;
    }());
    exports.ClusterWorkerPackageJsonUpdater = ClusterWorkerPackageJsonUpdater;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicGFja2FnZV9qc29uX3VwZGF0ZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvZXhlY3V0aW9uL2NsdXN0ZXIvcGFja2FnZV9qc29uX3VwZGF0ZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUVILDhCQUE4QjtJQUU5QixpQ0FBbUM7SUFJbkMsb0dBQXlIO0lBRXpILGdGQUE0QztJQUc1Qzs7O09BR0c7SUFDSDtRQUNFO1lBQ0UsSUFBSSxPQUFPLENBQUMsUUFBUSxFQUFFO2dCQUNwQixNQUFNLElBQUksS0FBSyxDQUFDLDBFQUEwRSxDQUFDLENBQUM7YUFDN0Y7UUFDSCxDQUFDO1FBRUQsc0RBQVksR0FBWjtZQUFBLGlCQUVDO1lBREMsT0FBTyxJQUFJLHdDQUFpQixDQUFDO2dCQUFDLGNBQU87cUJBQVAsVUFBTyxFQUFQLHFCQUFPLEVBQVAsSUFBTztvQkFBUCx5QkFBTzs7Z0JBQUssT0FBQSxLQUFJLENBQUMsWUFBWSxPQUFqQixLQUFJLG1CQUFpQixJQUFJO1lBQXpCLENBQTBCLENBQUMsQ0FBQztRQUN4RSxDQUFDO1FBRUQ7O1dBRUc7UUFDSCxzREFBWSxHQUFaLFVBQ0ksT0FBNEIsRUFBRSxlQUErQixFQUM3RCxxQkFBa0M7O1lBQ3BDLElBQUkscUJBQXFCLEVBQUU7O29CQUN6QixLQUFnQyxJQUFBLFlBQUEsaUJBQUEsT0FBTyxDQUFBLGdDQUFBLHFEQUFFO3dCQUE5QixJQUFBLEtBQUEsb0NBQWlCLEVBQWhCLFFBQVEsUUFBQSxFQUFFLEtBQUssUUFBQTt3QkFDekIsSUFBSSxRQUFRLENBQUMsTUFBTSxLQUFLLENBQUMsRUFBRTs0QkFDekIsTUFBTSxJQUFJLEtBQUssQ0FBQyxpREFBK0MsZUFBZSxPQUFJLENBQUMsQ0FBQzt5QkFDckY7d0JBRUQsbUZBQW1GO3dCQUNuRixrQ0FBVyxDQUFDLHFCQUFxQixFQUFFLFFBQVEsRUFBRSxLQUFLLEVBQUUsYUFBYSxDQUFDLENBQUM7cUJBQ3BFOzs7Ozs7Ozs7YUFDRjtZQUVELDJCQUFtQixDQUFDO2dCQUNsQixJQUFJLEVBQUUscUJBQXFCO2dCQUMzQixlQUFlLGlCQUFBO2dCQUNmLE9BQU8sU0FBQTthQUNSLENBQUMsQ0FBQztRQUNMLENBQUM7UUFDSCxzQ0FBQztJQUFELENBQUMsQUFsQ0QsSUFrQ0M7SUFsQ1ksMEVBQStCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbi8vLyA8cmVmZXJlbmNlIHR5cGVzPVwibm9kZVwiIC8+XG5cbmltcG9ydCAqIGFzIGNsdXN0ZXIgZnJvbSAnY2x1c3Rlcic7XG5cbmltcG9ydCB7QWJzb2x1dGVGc1BhdGh9IGZyb20gJy4uLy4uLy4uLy4uL3NyYy9uZ3RzYy9maWxlX3N5c3RlbSc7XG5pbXBvcnQge0pzb25PYmplY3R9IGZyb20gJy4uLy4uL3BhY2thZ2VzL2VudHJ5X3BvaW50JztcbmltcG9ydCB7YXBwbHlDaGFuZ2UsIFBhY2thZ2VKc29uQ2hhbmdlLCBQYWNrYWdlSnNvblVwZGF0ZSwgUGFja2FnZUpzb25VcGRhdGVyfSBmcm9tICcuLi8uLi93cml0aW5nL3BhY2thZ2VfanNvbl91cGRhdGVyJztcblxuaW1wb3J0IHtzZW5kTWVzc2FnZVRvTWFzdGVyfSBmcm9tICcuL3V0aWxzJztcblxuXG4vKipcbiAqIEEgYFBhY2thZ2VKc29uVXBkYXRlcmAgZm9yIGNsdXN0ZXIgd29ya2VycyB0aGF0IHdpbGwgc2VuZCB1cGRhdGUgY2hhbmdlcyB0byB0aGUgbWFzdGVyIHByb2Nlc3Mgc29cbiAqIHRoYXQgaXQgY2FuIHNhZmVseSBoYW5kbGUgdXBkYXRlIG9wZXJhdGlvbnMgb24gbXVsdGlwbGUgcHJvY2Vzc2VzLlxuICovXG5leHBvcnQgY2xhc3MgQ2x1c3RlcldvcmtlclBhY2thZ2VKc29uVXBkYXRlciBpbXBsZW1lbnRzIFBhY2thZ2VKc29uVXBkYXRlciB7XG4gIGNvbnN0cnVjdG9yKCkge1xuICAgIGlmIChjbHVzdGVyLmlzTWFzdGVyKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoJ1RyaWVkIHRvIGNyZWF0ZSBjbHVzdGVyIHdvcmtlciBQYWNrYWdlSnNvblVwZGF0ZXIgb24gdGhlIG1hc3RlciBwcm9jZXNzLicpO1xuICAgIH1cbiAgfVxuXG4gIGNyZWF0ZVVwZGF0ZSgpOiBQYWNrYWdlSnNvblVwZGF0ZSB7XG4gICAgcmV0dXJuIG5ldyBQYWNrYWdlSnNvblVwZGF0ZSgoLi4uYXJncykgPT4gdGhpcy53cml0ZUNoYW5nZXMoLi4uYXJncykpO1xuICB9XG5cbiAgLyoqXG4gICAqIEFwcGx5IHRoZSBjaGFuZ2VzIGluLW1lbW9yeSAoaWYgbmVjZXNzYXJ5KSBhbmQgc2VuZCBhIG1lc3NhZ2UgdG8gdGhlIG1hc3RlciBwcm9jZXNzLlxuICAgKi9cbiAgd3JpdGVDaGFuZ2VzKFxuICAgICAgY2hhbmdlczogUGFja2FnZUpzb25DaGFuZ2VbXSwgcGFja2FnZUpzb25QYXRoOiBBYnNvbHV0ZUZzUGF0aCxcbiAgICAgIHByZUV4aXN0aW5nUGFyc2VkSnNvbj86IEpzb25PYmplY3QpOiB2b2lkIHtcbiAgICBpZiAocHJlRXhpc3RpbmdQYXJzZWRKc29uKSB7XG4gICAgICBmb3IgKGNvbnN0IFtwcm9wUGF0aCwgdmFsdWVdIG9mIGNoYW5nZXMpIHtcbiAgICAgICAgaWYgKHByb3BQYXRoLmxlbmd0aCA9PT0gMCkge1xuICAgICAgICAgIHRocm93IG5ldyBFcnJvcihgTWlzc2luZyBwcm9wZXJ0eSBwYXRoIGZvciB3cml0aW5nIHZhbHVlIHRvICcke3BhY2thZ2VKc29uUGF0aH0nLmApO1xuICAgICAgICB9XG5cbiAgICAgICAgLy8gTm8gbmVlZCB0byB0YWtlIHByb3BlcnR5IHBvc2l0aW9uaW5nIGludG8gYWNjb3VudCBmb3IgaW4tbWVtb3J5IHJlcHJlc2VudGF0aW9ucy5cbiAgICAgICAgYXBwbHlDaGFuZ2UocHJlRXhpc3RpbmdQYXJzZWRKc29uLCBwcm9wUGF0aCwgdmFsdWUsICd1bmltcG9ydGFudCcpO1xuICAgICAgfVxuICAgIH1cblxuICAgIHNlbmRNZXNzYWdlVG9NYXN0ZXIoe1xuICAgICAgdHlwZTogJ3VwZGF0ZS1wYWNrYWdlLWpzb24nLFxuICAgICAgcGFja2FnZUpzb25QYXRoLFxuICAgICAgY2hhbmdlcyxcbiAgICB9KTtcbiAgfVxufVxuIl19