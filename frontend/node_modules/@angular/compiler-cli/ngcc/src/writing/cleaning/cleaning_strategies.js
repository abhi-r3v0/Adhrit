(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/writing/cleaning/cleaning_strategies", ["require", "exports", "@angular/compiler-cli/src/ngtsc/file_system", "@angular/compiler-cli/ngcc/src/packages/build_marker", "@angular/compiler-cli/ngcc/src/writing/in_place_file_writer", "@angular/compiler-cli/ngcc/src/writing/new_entry_point_file_writer", "@angular/compiler-cli/ngcc/src/writing/cleaning/utils"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.BackupFileCleaner = exports.NgccDirectoryCleaner = exports.PackageJsonCleaner = void 0;
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    var build_marker_1 = require("@angular/compiler-cli/ngcc/src/packages/build_marker");
    var in_place_file_writer_1 = require("@angular/compiler-cli/ngcc/src/writing/in_place_file_writer");
    var new_entry_point_file_writer_1 = require("@angular/compiler-cli/ngcc/src/writing/new_entry_point_file_writer");
    var utils_1 = require("@angular/compiler-cli/ngcc/src/writing/cleaning/utils");
    /**
     * A CleaningStrategy that reverts changes to package.json files by removing the build marker and
     * other properties.
     */
    var PackageJsonCleaner = /** @class */ (function () {
        function PackageJsonCleaner(fs) {
            this.fs = fs;
        }
        PackageJsonCleaner.prototype.canClean = function (_path, basename) {
            return basename === 'package.json';
        };
        PackageJsonCleaner.prototype.clean = function (path, _basename) {
            var packageJson = JSON.parse(this.fs.readFile(path));
            if (build_marker_1.cleanPackageJson(packageJson)) {
                this.fs.writeFile(path, JSON.stringify(packageJson, null, 2) + "\n");
            }
        };
        return PackageJsonCleaner;
    }());
    exports.PackageJsonCleaner = PackageJsonCleaner;
    /**
     * A CleaningStrategy that removes the extra directory containing generated entry-point formats.
     */
    var NgccDirectoryCleaner = /** @class */ (function () {
        function NgccDirectoryCleaner(fs) {
            this.fs = fs;
        }
        NgccDirectoryCleaner.prototype.canClean = function (path, basename) {
            return basename === new_entry_point_file_writer_1.NGCC_DIRECTORY && utils_1.isLocalDirectory(this.fs, path);
        };
        NgccDirectoryCleaner.prototype.clean = function (path, _basename) {
            this.fs.removeDeep(path);
        };
        return NgccDirectoryCleaner;
    }());
    exports.NgccDirectoryCleaner = NgccDirectoryCleaner;
    /**
     * A CleaningStrategy that reverts files that were overwritten and removes the backup files that
     * ngcc created.
     */
    var BackupFileCleaner = /** @class */ (function () {
        function BackupFileCleaner(fs) {
            this.fs = fs;
        }
        BackupFileCleaner.prototype.canClean = function (path, basename) {
            return this.fs.extname(basename) === in_place_file_writer_1.NGCC_BACKUP_EXTENSION &&
                this.fs.exists(file_system_1.absoluteFrom(path.replace(in_place_file_writer_1.NGCC_BACKUP_EXTENSION, '')));
        };
        BackupFileCleaner.prototype.clean = function (path, _basename) {
            this.fs.moveFile(path, file_system_1.absoluteFrom(path.replace(in_place_file_writer_1.NGCC_BACKUP_EXTENSION, '')));
        };
        return BackupFileCleaner;
    }());
    exports.BackupFileCleaner = BackupFileCleaner;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY2xlYW5pbmdfc3RyYXRlZ2llcy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9uZ2NjL3NyYy93cml0aW5nL2NsZWFuaW5nL2NsZWFuaW5nX3N0cmF0ZWdpZXMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0lBQUE7Ozs7OztPQU1HO0lBQ0gsMkVBQXdHO0lBQ3hHLHFGQUE2RDtJQUM3RCxvR0FBOEQ7SUFDOUQsa0hBQThEO0lBRTlELCtFQUF5QztJQVV6Qzs7O09BR0c7SUFDSDtRQUNFLDRCQUFvQixFQUFjO1lBQWQsT0FBRSxHQUFGLEVBQUUsQ0FBWTtRQUFHLENBQUM7UUFDdEMscUNBQVEsR0FBUixVQUFTLEtBQXFCLEVBQUUsUUFBcUI7WUFDbkQsT0FBTyxRQUFRLEtBQUssY0FBYyxDQUFDO1FBQ3JDLENBQUM7UUFDRCxrQ0FBSyxHQUFMLFVBQU0sSUFBb0IsRUFBRSxTQUFzQjtZQUNoRCxJQUFNLFdBQVcsR0FBRyxJQUFJLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7WUFDdkQsSUFBSSwrQkFBZ0IsQ0FBQyxXQUFXLENBQUMsRUFBRTtnQkFDakMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxTQUFTLENBQUMsSUFBSSxFQUFLLElBQUksQ0FBQyxTQUFTLENBQUMsV0FBVyxFQUFFLElBQUksRUFBRSxDQUFDLENBQUMsT0FBSSxDQUFDLENBQUM7YUFDdEU7UUFDSCxDQUFDO1FBQ0gseUJBQUM7SUFBRCxDQUFDLEFBWEQsSUFXQztJQVhZLGdEQUFrQjtJQWEvQjs7T0FFRztJQUNIO1FBQ0UsOEJBQW9CLEVBQWM7WUFBZCxPQUFFLEdBQUYsRUFBRSxDQUFZO1FBQUcsQ0FBQztRQUN0Qyx1Q0FBUSxHQUFSLFVBQVMsSUFBb0IsRUFBRSxRQUFxQjtZQUNsRCxPQUFPLFFBQVEsS0FBSyw0Q0FBYyxJQUFJLHdCQUFnQixDQUFDLElBQUksQ0FBQyxFQUFFLEVBQUUsSUFBSSxDQUFDLENBQUM7UUFDeEUsQ0FBQztRQUNELG9DQUFLLEdBQUwsVUFBTSxJQUFvQixFQUFFLFNBQXNCO1lBQ2hELElBQUksQ0FBQyxFQUFFLENBQUMsVUFBVSxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQzNCLENBQUM7UUFDSCwyQkFBQztJQUFELENBQUMsQUFSRCxJQVFDO0lBUlksb0RBQW9CO0lBVWpDOzs7T0FHRztJQUNIO1FBQ0UsMkJBQW9CLEVBQWM7WUFBZCxPQUFFLEdBQUYsRUFBRSxDQUFZO1FBQUcsQ0FBQztRQUN0QyxvQ0FBUSxHQUFSLFVBQVMsSUFBb0IsRUFBRSxRQUFxQjtZQUNsRCxPQUFPLElBQUksQ0FBQyxFQUFFLENBQUMsT0FBTyxDQUFDLFFBQVEsQ0FBQyxLQUFLLDRDQUFxQjtnQkFDdEQsSUFBSSxDQUFDLEVBQUUsQ0FBQyxNQUFNLENBQUMsMEJBQVksQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLDRDQUFxQixFQUFFLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUM1RSxDQUFDO1FBQ0QsaUNBQUssR0FBTCxVQUFNLElBQW9CLEVBQUUsU0FBc0I7WUFDaEQsSUFBSSxDQUFDLEVBQUUsQ0FBQyxRQUFRLENBQUMsSUFBSSxFQUFFLDBCQUFZLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyw0Q0FBcUIsRUFBRSxFQUFFLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDaEYsQ0FBQztRQUNILHdCQUFDO0lBQUQsQ0FBQyxBQVRELElBU0M7SUFUWSw4Q0FBaUIiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCB7YWJzb2x1dGVGcm9tLCBBYnNvbHV0ZUZzUGF0aCwgRmlsZVN5c3RlbSwgUGF0aFNlZ21lbnR9IGZyb20gJy4uLy4uLy4uLy4uL3NyYy9uZ3RzYy9maWxlX3N5c3RlbSc7XG5pbXBvcnQge2NsZWFuUGFja2FnZUpzb259IGZyb20gJy4uLy4uL3BhY2thZ2VzL2J1aWxkX21hcmtlcic7XG5pbXBvcnQge05HQ0NfQkFDS1VQX0VYVEVOU0lPTn0gZnJvbSAnLi4vaW5fcGxhY2VfZmlsZV93cml0ZXInO1xuaW1wb3J0IHtOR0NDX0RJUkVDVE9SWX0gZnJvbSAnLi4vbmV3X2VudHJ5X3BvaW50X2ZpbGVfd3JpdGVyJztcblxuaW1wb3J0IHtpc0xvY2FsRGlyZWN0b3J5fSBmcm9tICcuL3V0aWxzJztcblxuLyoqXG4gKiBJbXBsZW1lbnQgdGhpcyBpbnRlcmZhY2UgdG8gZXh0ZW5kIHRoZSBjbGVhbmluZyBzdHJhdGVnaWVzIG9mIHRoZSBgUGFja2FnZUNsZWFuZXJgLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIENsZWFuaW5nU3RyYXRlZ3kge1xuICBjYW5DbGVhbihwYXRoOiBBYnNvbHV0ZUZzUGF0aCwgYmFzZW5hbWU6IFBhdGhTZWdtZW50KTogYm9vbGVhbjtcbiAgY2xlYW4ocGF0aDogQWJzb2x1dGVGc1BhdGgsIGJhc2VuYW1lOiBQYXRoU2VnbWVudCk6IHZvaWQ7XG59XG5cbi8qKlxuICogQSBDbGVhbmluZ1N0cmF0ZWd5IHRoYXQgcmV2ZXJ0cyBjaGFuZ2VzIHRvIHBhY2thZ2UuanNvbiBmaWxlcyBieSByZW1vdmluZyB0aGUgYnVpbGQgbWFya2VyIGFuZFxuICogb3RoZXIgcHJvcGVydGllcy5cbiAqL1xuZXhwb3J0IGNsYXNzIFBhY2thZ2VKc29uQ2xlYW5lciBpbXBsZW1lbnRzIENsZWFuaW5nU3RyYXRlZ3kge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGZzOiBGaWxlU3lzdGVtKSB7fVxuICBjYW5DbGVhbihfcGF0aDogQWJzb2x1dGVGc1BhdGgsIGJhc2VuYW1lOiBQYXRoU2VnbWVudCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBiYXNlbmFtZSA9PT0gJ3BhY2thZ2UuanNvbic7XG4gIH1cbiAgY2xlYW4ocGF0aDogQWJzb2x1dGVGc1BhdGgsIF9iYXNlbmFtZTogUGF0aFNlZ21lbnQpOiB2b2lkIHtcbiAgICBjb25zdCBwYWNrYWdlSnNvbiA9IEpTT04ucGFyc2UodGhpcy5mcy5yZWFkRmlsZShwYXRoKSk7XG4gICAgaWYgKGNsZWFuUGFja2FnZUpzb24ocGFja2FnZUpzb24pKSB7XG4gICAgICB0aGlzLmZzLndyaXRlRmlsZShwYXRoLCBgJHtKU09OLnN0cmluZ2lmeShwYWNrYWdlSnNvbiwgbnVsbCwgMil9XFxuYCk7XG4gICAgfVxuICB9XG59XG5cbi8qKlxuICogQSBDbGVhbmluZ1N0cmF0ZWd5IHRoYXQgcmVtb3ZlcyB0aGUgZXh0cmEgZGlyZWN0b3J5IGNvbnRhaW5pbmcgZ2VuZXJhdGVkIGVudHJ5LXBvaW50IGZvcm1hdHMuXG4gKi9cbmV4cG9ydCBjbGFzcyBOZ2NjRGlyZWN0b3J5Q2xlYW5lciBpbXBsZW1lbnRzIENsZWFuaW5nU3RyYXRlZ3kge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGZzOiBGaWxlU3lzdGVtKSB7fVxuICBjYW5DbGVhbihwYXRoOiBBYnNvbHV0ZUZzUGF0aCwgYmFzZW5hbWU6IFBhdGhTZWdtZW50KTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIGJhc2VuYW1lID09PSBOR0NDX0RJUkVDVE9SWSAmJiBpc0xvY2FsRGlyZWN0b3J5KHRoaXMuZnMsIHBhdGgpO1xuICB9XG4gIGNsZWFuKHBhdGg6IEFic29sdXRlRnNQYXRoLCBfYmFzZW5hbWU6IFBhdGhTZWdtZW50KTogdm9pZCB7XG4gICAgdGhpcy5mcy5yZW1vdmVEZWVwKHBhdGgpO1xuICB9XG59XG5cbi8qKlxuICogQSBDbGVhbmluZ1N0cmF0ZWd5IHRoYXQgcmV2ZXJ0cyBmaWxlcyB0aGF0IHdlcmUgb3ZlcndyaXR0ZW4gYW5kIHJlbW92ZXMgdGhlIGJhY2t1cCBmaWxlcyB0aGF0XG4gKiBuZ2NjIGNyZWF0ZWQuXG4gKi9cbmV4cG9ydCBjbGFzcyBCYWNrdXBGaWxlQ2xlYW5lciBpbXBsZW1lbnRzIENsZWFuaW5nU3RyYXRlZ3kge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGZzOiBGaWxlU3lzdGVtKSB7fVxuICBjYW5DbGVhbihwYXRoOiBBYnNvbHV0ZUZzUGF0aCwgYmFzZW5hbWU6IFBhdGhTZWdtZW50KTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRoaXMuZnMuZXh0bmFtZShiYXNlbmFtZSkgPT09IE5HQ0NfQkFDS1VQX0VYVEVOU0lPTiAmJlxuICAgICAgICB0aGlzLmZzLmV4aXN0cyhhYnNvbHV0ZUZyb20ocGF0aC5yZXBsYWNlKE5HQ0NfQkFDS1VQX0VYVEVOU0lPTiwgJycpKSk7XG4gIH1cbiAgY2xlYW4ocGF0aDogQWJzb2x1dGVGc1BhdGgsIF9iYXNlbmFtZTogUGF0aFNlZ21lbnQpOiB2b2lkIHtcbiAgICB0aGlzLmZzLm1vdmVGaWxlKHBhdGgsIGFic29sdXRlRnJvbShwYXRoLnJlcGxhY2UoTkdDQ19CQUNLVVBfRVhURU5TSU9OLCAnJykpKTtcbiAgfVxufVxuIl19