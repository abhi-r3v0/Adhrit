"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.DevkitFileSystem = void 0;
const core_1 = require("@angular-devkit/core");
const file_system_1 = require("../update-tool/file-system");
const path = require("path");
/**
 * File system that leverages the virtual tree from the CLI devkit. This file
 * system is commonly used by `ng update` migrations that run as part of the
 * Angular CLI.
 */
class DevkitFileSystem extends file_system_1.FileSystem {
    constructor(_tree) {
        super();
        this._tree = _tree;
        this._updateRecorderCache = new Map();
    }
    resolve(...segments) {
        // Note: We use `posix.resolve` as the devkit paths are using posix separators.
        return core_1.normalize(path.posix.resolve('/', ...segments.map(core_1.normalize)));
    }
    edit(filePath) {
        if (this._updateRecorderCache.has(filePath)) {
            return this._updateRecorderCache.get(filePath);
        }
        const recorder = this._tree.beginUpdate(filePath);
        this._updateRecorderCache.set(filePath, recorder);
        return recorder;
    }
    commitEdits() {
        this._updateRecorderCache.forEach(r => this._tree.commitUpdate(r));
        this._updateRecorderCache.clear();
    }
    exists(fileOrDirPath) {
        // The devkit tree does not expose an API for checking whether a given
        // directory exists. It throws a specific error though if a directory
        // is being read as a file. We use that to check if a directory exists.
        try {
            return this._tree.get(fileOrDirPath) !== null;
        }
        catch (e) {
            if (e instanceof core_1.PathIsDirectoryException) {
                return true;
            }
        }
        return false;
    }
    overwrite(filePath, content) {
        this._tree.overwrite(filePath, content);
    }
    create(filePath, content) {
        this._tree.create(filePath, content);
    }
    delete(filePath) {
        this._tree.delete(filePath);
    }
    read(filePath) {
        const buffer = this._tree.read(filePath);
        return buffer !== null ? buffer.toString() : null;
    }
    readDirectory(dirPath) {
        const { subdirs: directories, subfiles: files } = this._tree.getDir(dirPath);
        return { directories, files };
    }
}
exports.DevkitFileSystem = DevkitFileSystem;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGV2a2l0LWZpbGUtc3lzdGVtLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9zY2hlbWF0aWNzL25nLXVwZGF0ZS9kZXZraXQtZmlsZS1zeXN0ZW0udHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBOzs7Ozs7R0FNRzs7O0FBRUgsK0NBQStFO0FBRS9FLDREQUFzRTtBQUN0RSw2QkFBNkI7QUFFN0I7Ozs7R0FJRztBQUNILE1BQWEsZ0JBQWlCLFNBQVEsd0JBQVU7SUFHOUMsWUFBb0IsS0FBVztRQUM3QixLQUFLLEVBQUUsQ0FBQztRQURVLFVBQUssR0FBTCxLQUFLLENBQU07UUFGdkIseUJBQW9CLEdBQUcsSUFBSSxHQUFHLEVBQTBCLENBQUM7SUFJakUsQ0FBQztJQUVELE9BQU8sQ0FBQyxHQUFHLFFBQWtCO1FBQzNCLCtFQUErRTtRQUMvRSxPQUFPLGdCQUFTLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxPQUFPLENBQUMsR0FBRyxFQUFFLEdBQUcsUUFBUSxDQUFDLEdBQUcsQ0FBQyxnQkFBUyxDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQ3hFLENBQUM7SUFFRCxJQUFJLENBQUMsUUFBYztRQUNqQixJQUFJLElBQUksQ0FBQyxvQkFBb0IsQ0FBQyxHQUFHLENBQUMsUUFBUSxDQUFDLEVBQUU7WUFDM0MsT0FBTyxJQUFJLENBQUMsb0JBQW9CLENBQUMsR0FBRyxDQUFDLFFBQVEsQ0FBRSxDQUFDO1NBQ2pEO1FBQ0QsTUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxXQUFXLENBQUMsUUFBUSxDQUFDLENBQUM7UUFDbEQsSUFBSSxDQUFDLG9CQUFvQixDQUFDLEdBQUcsQ0FBQyxRQUFRLEVBQUUsUUFBUSxDQUFDLENBQUM7UUFDbEQsT0FBTyxRQUFRLENBQUM7SUFDbEIsQ0FBQztJQUVELFdBQVc7UUFDVCxJQUFJLENBQUMsb0JBQW9CLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxZQUFZLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNuRSxJQUFJLENBQUMsb0JBQW9CLENBQUMsS0FBSyxFQUFFLENBQUM7SUFDcEMsQ0FBQztJQUVELE1BQU0sQ0FBQyxhQUFtQjtRQUN4QixzRUFBc0U7UUFDdEUscUVBQXFFO1FBQ3JFLHVFQUF1RTtRQUN2RSxJQUFJO1lBQ0YsT0FBTyxJQUFJLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxhQUFhLENBQUMsS0FBSyxJQUFJLENBQUM7U0FDL0M7UUFBQyxPQUFPLENBQUMsRUFBRTtZQUNWLElBQUksQ0FBQyxZQUFZLCtCQUF3QixFQUFFO2dCQUN6QyxPQUFPLElBQUksQ0FBQzthQUNiO1NBQ0Y7UUFDRCxPQUFPLEtBQUssQ0FBQztJQUNmLENBQUM7SUFFRCxTQUFTLENBQUMsUUFBYyxFQUFFLE9BQWU7UUFDdkMsSUFBSSxDQUFDLEtBQUssQ0FBQyxTQUFTLENBQUMsUUFBUSxFQUFFLE9BQU8sQ0FBQyxDQUFDO0lBQzFDLENBQUM7SUFFRCxNQUFNLENBQUMsUUFBYyxFQUFFLE9BQWU7UUFDcEMsSUFBSSxDQUFDLEtBQUssQ0FBQyxNQUFNLENBQUMsUUFBUSxFQUFFLE9BQU8sQ0FBQyxDQUFDO0lBQ3ZDLENBQUM7SUFFRCxNQUFNLENBQUMsUUFBYztRQUNuQixJQUFJLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxRQUFRLENBQUMsQ0FBQztJQUM5QixDQUFDO0lBRUQsSUFBSSxDQUFDLFFBQWM7UUFDakIsTUFBTSxNQUFNLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUM7UUFDekMsT0FBTyxNQUFNLEtBQUssSUFBSSxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsUUFBUSxFQUFFLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQztJQUNwRCxDQUFDO0lBRUQsYUFBYSxDQUFDLE9BQWE7UUFDekIsTUFBTSxFQUFDLE9BQU8sRUFBRSxXQUFXLEVBQUUsUUFBUSxFQUFFLEtBQUssRUFBQyxHQUFHLElBQUksQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQzNFLE9BQU8sRUFBQyxXQUFXLEVBQUUsS0FBSyxFQUFDLENBQUM7SUFDOUIsQ0FBQztDQUNGO0FBN0RELDRDQTZEQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge25vcm1hbGl6ZSwgUGF0aCwgUGF0aElzRGlyZWN0b3J5RXhjZXB0aW9ufSBmcm9tICdAYW5ndWxhci1kZXZraXQvY29yZSc7XG5pbXBvcnQge1RyZWUsIFVwZGF0ZVJlY29yZGVyfSBmcm9tICdAYW5ndWxhci1kZXZraXQvc2NoZW1hdGljcyc7XG5pbXBvcnQge0RpcmVjdG9yeUVudHJ5LCBGaWxlU3lzdGVtfSBmcm9tICcuLi91cGRhdGUtdG9vbC9maWxlLXN5c3RlbSc7XG5pbXBvcnQgKiBhcyBwYXRoIGZyb20gJ3BhdGgnO1xuXG4vKipcbiAqIEZpbGUgc3lzdGVtIHRoYXQgbGV2ZXJhZ2VzIHRoZSB2aXJ0dWFsIHRyZWUgZnJvbSB0aGUgQ0xJIGRldmtpdC4gVGhpcyBmaWxlXG4gKiBzeXN0ZW0gaXMgY29tbW9ubHkgdXNlZCBieSBgbmcgdXBkYXRlYCBtaWdyYXRpb25zIHRoYXQgcnVuIGFzIHBhcnQgb2YgdGhlXG4gKiBBbmd1bGFyIENMSS5cbiAqL1xuZXhwb3J0IGNsYXNzIERldmtpdEZpbGVTeXN0ZW0gZXh0ZW5kcyBGaWxlU3lzdGVtIHtcbiAgcHJpdmF0ZSBfdXBkYXRlUmVjb3JkZXJDYWNoZSA9IG5ldyBNYXA8c3RyaW5nLCBVcGRhdGVSZWNvcmRlcj4oKTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF90cmVlOiBUcmVlKSB7XG4gICAgc3VwZXIoKTtcbiAgfVxuXG4gIHJlc29sdmUoLi4uc2VnbWVudHM6IHN0cmluZ1tdKTogUGF0aCB7XG4gICAgLy8gTm90ZTogV2UgdXNlIGBwb3NpeC5yZXNvbHZlYCBhcyB0aGUgZGV2a2l0IHBhdGhzIGFyZSB1c2luZyBwb3NpeCBzZXBhcmF0b3JzLlxuICAgIHJldHVybiBub3JtYWxpemUocGF0aC5wb3NpeC5yZXNvbHZlKCcvJywgLi4uc2VnbWVudHMubWFwKG5vcm1hbGl6ZSkpKTtcbiAgfVxuXG4gIGVkaXQoZmlsZVBhdGg6IFBhdGgpIHtcbiAgICBpZiAodGhpcy5fdXBkYXRlUmVjb3JkZXJDYWNoZS5oYXMoZmlsZVBhdGgpKSB7XG4gICAgICByZXR1cm4gdGhpcy5fdXBkYXRlUmVjb3JkZXJDYWNoZS5nZXQoZmlsZVBhdGgpITtcbiAgICB9XG4gICAgY29uc3QgcmVjb3JkZXIgPSB0aGlzLl90cmVlLmJlZ2luVXBkYXRlKGZpbGVQYXRoKTtcbiAgICB0aGlzLl91cGRhdGVSZWNvcmRlckNhY2hlLnNldChmaWxlUGF0aCwgcmVjb3JkZXIpO1xuICAgIHJldHVybiByZWNvcmRlcjtcbiAgfVxuXG4gIGNvbW1pdEVkaXRzKCkge1xuICAgIHRoaXMuX3VwZGF0ZVJlY29yZGVyQ2FjaGUuZm9yRWFjaChyID0+IHRoaXMuX3RyZWUuY29tbWl0VXBkYXRlKHIpKTtcbiAgICB0aGlzLl91cGRhdGVSZWNvcmRlckNhY2hlLmNsZWFyKCk7XG4gIH1cblxuICBleGlzdHMoZmlsZU9yRGlyUGF0aDogUGF0aCkge1xuICAgIC8vIFRoZSBkZXZraXQgdHJlZSBkb2VzIG5vdCBleHBvc2UgYW4gQVBJIGZvciBjaGVja2luZyB3aGV0aGVyIGEgZ2l2ZW5cbiAgICAvLyBkaXJlY3RvcnkgZXhpc3RzLiBJdCB0aHJvd3MgYSBzcGVjaWZpYyBlcnJvciB0aG91Z2ggaWYgYSBkaXJlY3RvcnlcbiAgICAvLyBpcyBiZWluZyByZWFkIGFzIGEgZmlsZS4gV2UgdXNlIHRoYXQgdG8gY2hlY2sgaWYgYSBkaXJlY3RvcnkgZXhpc3RzLlxuICAgIHRyeSB7XG4gICAgICByZXR1cm4gdGhpcy5fdHJlZS5nZXQoZmlsZU9yRGlyUGF0aCkgIT09IG51bGw7XG4gICAgfSBjYXRjaCAoZSkge1xuICAgICAgaWYgKGUgaW5zdGFuY2VvZiBQYXRoSXNEaXJlY3RvcnlFeGNlcHRpb24pIHtcbiAgICAgICAgcmV0dXJuIHRydWU7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuXG4gIG92ZXJ3cml0ZShmaWxlUGF0aDogUGF0aCwgY29udGVudDogc3RyaW5nKSB7XG4gICAgdGhpcy5fdHJlZS5vdmVyd3JpdGUoZmlsZVBhdGgsIGNvbnRlbnQpO1xuICB9XG5cbiAgY3JlYXRlKGZpbGVQYXRoOiBQYXRoLCBjb250ZW50OiBzdHJpbmcpIHtcbiAgICB0aGlzLl90cmVlLmNyZWF0ZShmaWxlUGF0aCwgY29udGVudCk7XG4gIH1cblxuICBkZWxldGUoZmlsZVBhdGg6IFBhdGgpIHtcbiAgICB0aGlzLl90cmVlLmRlbGV0ZShmaWxlUGF0aCk7XG4gIH1cblxuICByZWFkKGZpbGVQYXRoOiBQYXRoKSB7XG4gICAgY29uc3QgYnVmZmVyID0gdGhpcy5fdHJlZS5yZWFkKGZpbGVQYXRoKTtcbiAgICByZXR1cm4gYnVmZmVyICE9PSBudWxsID8gYnVmZmVyLnRvU3RyaW5nKCkgOiBudWxsO1xuICB9XG5cbiAgcmVhZERpcmVjdG9yeShkaXJQYXRoOiBQYXRoKTogRGlyZWN0b3J5RW50cnkge1xuICAgIGNvbnN0IHtzdWJkaXJzOiBkaXJlY3Rvcmllcywgc3ViZmlsZXM6IGZpbGVzfSA9IHRoaXMuX3RyZWUuZ2V0RGlyKGRpclBhdGgpO1xuICAgIHJldHVybiB7ZGlyZWN0b3JpZXMsIGZpbGVzfTtcbiAgfVxufVxuIl19