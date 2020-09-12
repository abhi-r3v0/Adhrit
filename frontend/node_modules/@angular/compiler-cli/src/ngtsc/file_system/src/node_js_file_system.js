(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/src/ngtsc/file_system/src/node_js_file_system", ["require", "exports", "tslib", "fs", "fs-extra", "path", "@angular/compiler-cli/src/ngtsc/file_system/src/helpers"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.NodeJSFileSystem = void 0;
    var tslib_1 = require("tslib");
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    /// <reference types="node" />
    var fs = require("fs");
    var fsExtra = require("fs-extra");
    var p = require("path");
    var helpers_1 = require("@angular/compiler-cli/src/ngtsc/file_system/src/helpers");
    /**
     * A wrapper around the Node.js file-system (i.e the `fs` package).
     */
    var NodeJSFileSystem = /** @class */ (function () {
        function NodeJSFileSystem() {
            this._caseSensitive = undefined;
        }
        NodeJSFileSystem.prototype.exists = function (path) {
            return fs.existsSync(path);
        };
        NodeJSFileSystem.prototype.readFile = function (path) {
            return fs.readFileSync(path, 'utf8');
        };
        NodeJSFileSystem.prototype.readFileBuffer = function (path) {
            return fs.readFileSync(path);
        };
        NodeJSFileSystem.prototype.writeFile = function (path, data, exclusive) {
            if (exclusive === void 0) { exclusive = false; }
            fs.writeFileSync(path, data, exclusive ? { flag: 'wx' } : undefined);
        };
        NodeJSFileSystem.prototype.removeFile = function (path) {
            fs.unlinkSync(path);
        };
        NodeJSFileSystem.prototype.symlink = function (target, path) {
            fs.symlinkSync(target, path);
        };
        NodeJSFileSystem.prototype.readdir = function (path) {
            return fs.readdirSync(path);
        };
        NodeJSFileSystem.prototype.lstat = function (path) {
            return fs.lstatSync(path);
        };
        NodeJSFileSystem.prototype.stat = function (path) {
            return fs.statSync(path);
        };
        NodeJSFileSystem.prototype.pwd = function () {
            return this.normalize(process.cwd());
        };
        NodeJSFileSystem.prototype.chdir = function (dir) {
            process.chdir(dir);
        };
        NodeJSFileSystem.prototype.copyFile = function (from, to) {
            fs.copyFileSync(from, to);
        };
        NodeJSFileSystem.prototype.moveFile = function (from, to) {
            fs.renameSync(from, to);
        };
        NodeJSFileSystem.prototype.ensureDir = function (path) {
            var parents = [];
            while (!this.isRoot(path) && !this.exists(path)) {
                parents.push(path);
                path = this.dirname(path);
            }
            while (parents.length) {
                this.safeMkdir(parents.pop());
            }
        };
        NodeJSFileSystem.prototype.removeDeep = function (path) {
            fsExtra.removeSync(path);
        };
        NodeJSFileSystem.prototype.isCaseSensitive = function () {
            if (this._caseSensitive === undefined) {
                // Note the use of the real file-system is intentional:
                // `this.exists()` relies upon `isCaseSensitive()` so that would cause an infinite recursion.
                this._caseSensitive = !fs.existsSync(togglePathCase(__filename));
            }
            return this._caseSensitive;
        };
        NodeJSFileSystem.prototype.resolve = function () {
            var paths = [];
            for (var _i = 0; _i < arguments.length; _i++) {
                paths[_i] = arguments[_i];
            }
            return this.normalize(p.resolve.apply(p, tslib_1.__spread(paths)));
        };
        NodeJSFileSystem.prototype.dirname = function (file) {
            return this.normalize(p.dirname(file));
        };
        NodeJSFileSystem.prototype.join = function (basePath) {
            var paths = [];
            for (var _i = 1; _i < arguments.length; _i++) {
                paths[_i - 1] = arguments[_i];
            }
            return this.normalize(p.join.apply(p, tslib_1.__spread([basePath], paths)));
        };
        NodeJSFileSystem.prototype.isRoot = function (path) {
            return this.dirname(path) === this.normalize(path);
        };
        NodeJSFileSystem.prototype.isRooted = function (path) {
            return p.isAbsolute(path);
        };
        NodeJSFileSystem.prototype.relative = function (from, to) {
            return this.normalize(p.relative(from, to));
        };
        NodeJSFileSystem.prototype.basename = function (filePath, extension) {
            return p.basename(filePath, extension);
        };
        NodeJSFileSystem.prototype.extname = function (path) {
            return p.extname(path);
        };
        NodeJSFileSystem.prototype.realpath = function (path) {
            return this.resolve(fs.realpathSync(path));
        };
        NodeJSFileSystem.prototype.getDefaultLibLocation = function () {
            return this.resolve(require.resolve('typescript'), '..');
        };
        NodeJSFileSystem.prototype.normalize = function (path) {
            // Convert backslashes to forward slashes
            return path.replace(/\\/g, '/');
        };
        NodeJSFileSystem.prototype.safeMkdir = function (path) {
            try {
                fs.mkdirSync(path);
            }
            catch (err) {
                // Ignore the error, if the path already exists and points to a directory.
                // Re-throw otherwise.
                if (!this.exists(path) || !this.stat(path).isDirectory()) {
                    throw err;
                }
            }
        };
        return NodeJSFileSystem;
    }());
    exports.NodeJSFileSystem = NodeJSFileSystem;
    /**
     * Toggle the case of each character in a file path.
     */
    function togglePathCase(str) {
        return helpers_1.absoluteFrom(str.replace(/\w/g, function (ch) { return ch.toUpperCase() === ch ? ch.toLowerCase() : ch.toUpperCase(); }));
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibm9kZV9qc19maWxlX3N5c3RlbS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvZmlsZV9zeXN0ZW0vc3JjL25vZGVfanNfZmlsZV9zeXN0ZW0udHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztJQUFBOzs7Ozs7T0FNRztJQUNILDhCQUE4QjtJQUM5Qix1QkFBeUI7SUFDekIsa0NBQW9DO0lBQ3BDLHdCQUEwQjtJQUMxQixtRkFBdUM7SUFHdkM7O09BRUc7SUFDSDtRQUFBO1lBQ1UsbUJBQWMsR0FBc0IsU0FBUyxDQUFDO1FBNEd4RCxDQUFDO1FBM0dDLGlDQUFNLEdBQU4sVUFBTyxJQUFvQjtZQUN6QixPQUFPLEVBQUUsQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDN0IsQ0FBQztRQUNELG1DQUFRLEdBQVIsVUFBUyxJQUFvQjtZQUMzQixPQUFPLEVBQUUsQ0FBQyxZQUFZLENBQUMsSUFBSSxFQUFFLE1BQU0sQ0FBQyxDQUFDO1FBQ3ZDLENBQUM7UUFDRCx5Q0FBYyxHQUFkLFVBQWUsSUFBb0I7WUFDakMsT0FBTyxFQUFFLENBQUMsWUFBWSxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQy9CLENBQUM7UUFDRCxvQ0FBUyxHQUFULFVBQVUsSUFBb0IsRUFBRSxJQUFtQixFQUFFLFNBQTBCO1lBQTFCLDBCQUFBLEVBQUEsaUJBQTBCO1lBQzdFLEVBQUUsQ0FBQyxhQUFhLENBQUMsSUFBSSxFQUFFLElBQUksRUFBRSxTQUFTLENBQUMsQ0FBQyxDQUFDLEVBQUMsSUFBSSxFQUFFLElBQUksRUFBQyxDQUFDLENBQUMsQ0FBQyxTQUFTLENBQUMsQ0FBQztRQUNyRSxDQUFDO1FBQ0QscUNBQVUsR0FBVixVQUFXLElBQW9CO1lBQzdCLEVBQUUsQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDdEIsQ0FBQztRQUNE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QW9CO1lBQ3BDLElBQUk7Z0JBQ0YsRUFBRSxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsQ0FBQzthQUNwQjtZQUFDLE9BQU8sR0FBRyxFQUFFO2dCQUNaLDBFQUEwRTtnQkFDMUUsc0JBQXNCO2dCQUN0QixJQUFJLENBQUMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUMsV0FBVyxFQUFFLEVBQUU7b0JBQ3hELE1BQU0sR0FBRyxDQUFDO2lCQUNYO2FBQ0Y7UUFDSCxDQUFDO1FBQ0gsdUJBQUM7SUFBRCxDQUFDLEFBN0dELElBNkdDO0lBN0dZLDRDQUFnQjtJQStHN0I7O09BRUc7SUFDSCxTQUFTLGNBQWMsQ0FBQyxHQUFXO1FBQ2pDLE9BQU8sc0JBQVksQ0FDZixHQUFHLENBQUMsT0FBTyxDQUFDLEtBQUssRUFBRSxVQUFBLEVBQUUsSUFBSSxPQUFBLEVBQUUsQ0FBQyxXQUFXLEVBQUUsS0FBSyxFQUFFLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxXQUFXLEVBQUUsQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLFdBQVcsRUFBRSxFQUE3RCxDQUE2RCxDQUFDLENBQUMsQ0FBQztJQUMvRixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG4vLy8gPHJlZmVyZW5jZSB0eXBlcz1cIm5vZGVcIiAvPlxuaW1wb3J0ICogYXMgZnMgZnJvbSAnZnMnO1xuaW1wb3J0ICogYXMgZnNFeHRyYSBmcm9tICdmcy1leHRyYSc7XG5pbXBvcnQgKiBhcyBwIGZyb20gJ3BhdGgnO1xuaW1wb3J0IHthYnNvbHV0ZUZyb219IGZyb20gJy4vaGVscGVycyc7XG5pbXBvcnQge0Fic29sdXRlRnNQYXRoLCBGaWxlU3RhdHMsIEZpbGVTeXN0ZW0sIFBhdGhTZWdtZW50LCBQYXRoU3RyaW5nfSBmcm9tICcuL3R5cGVzJztcblxuLyoqXG4gKiBBIHdyYXBwZXIgYXJvdW5kIHRoZSBOb2RlLmpzIGZpbGUtc3lzdGVtIChpLmUgdGhlIGBmc2AgcGFja2FnZSkuXG4gKi9cbmV4cG9ydCBjbGFzcyBOb2RlSlNGaWxlU3lzdGVtIGltcGxlbWVudHMgRmlsZVN5c3RlbSB7XG4gIHByaXZhdGUgX2Nhc2VTZW5zaXRpdmU6IGJvb2xlYW58dW5kZWZpbmVkID0gdW5kZWZpbmVkO1xuICBleGlzdHMocGF0aDogQWJzb2x1dGVGc1BhdGgpOiBib29sZWFuIHtcbiAgICByZXR1cm4gZnMuZXhpc3RzU3luYyhwYXRoKTtcbiAgfVxuICByZWFkRmlsZShwYXRoOiBBYnNvbHV0ZUZzUGF0aCk6IHN0cmluZyB7XG4gICAgcmV0dXJuIGZzLnJlYWRGaWxlU3luYyhwYXRoLCAndXRmOCcpO1xuICB9XG4gIHJlYWRGaWxlQnVmZmVyKHBhdGg6IEFic29sdXRlRnNQYXRoKTogQnVmZmVyIHtcbiAgICByZXR1cm4gZnMucmVhZEZpbGVTeW5jKHBhdGgpO1xuICB9XG4gIHdyaXRlRmlsZShwYXRoOiBBYnNvbHV0ZUZzUGF0aCwgZGF0YTogc3RyaW5nfEJ1ZmZlciwgZXhjbHVzaXZlOiBib29sZWFuID0gZmFsc2UpOiB2b2lkIHtcbiAgICBmcy53cml0ZUZpbGVTeW5jKHBhdGgsIGRhdGEsIGV4Y2x1c2l2ZSA/IHtmbGFnOiAnd3gnfSA6IHVuZGVmaW5lZCk7XG4gIH1cbiAgcmVtb3ZlRmlsZShwYXRoOiBBYnNvbHV0ZUZzUGF0aCk6IHZvaWQge1xuICAgIGZzLnVubGlua1N5bmMocGF0aCk7XG4gIH1cbiAgc3ltbGluayh0YXJnZXQ6IEFic29sdXRlRnNQYXRoLCBwYXRoOiBBYnNvbHV0ZUZzUGF0aCk6IHZvaWQge1xuICAgIGZzLnN5bWxpbmtTeW5jKHRhcmdldCwgcGF0aCk7XG4gIH1cbiAgcmVhZGRpcihwYXRoOiBBYnNvbHV0ZUZzUGF0aCk6IFBhdGhTZWdtZW50W10ge1xuICAgIHJldHVybiBmcy5yZWFkZGlyU3luYyhwYXRoKSBhcyBQYXRoU2VnbWVudFtdO1xuICB9XG4gIGxzdGF0KHBhdGg6IEFic29sdXRlRnNQYXRoKTogRmlsZVN0YXRzIHtcbiAgICByZXR1cm4gZnMubHN0YXRTeW5jKHBhdGgpO1xuICB9XG4gIHN0YXQocGF0aDogQWJzb2x1dGVGc1BhdGgpOiBGaWxlU3RhdHMge1xuICAgIHJldHVybiBmcy5zdGF0U3luYyhwYXRoKTtcbiAgfVxuICBwd2QoKTogQWJzb2x1dGVGc1BhdGgge1xuICAgIHJldHVybiB0aGlzLm5vcm1hbGl6ZShwcm9jZXNzLmN3ZCgpKSBhcyBBYnNvbHV0ZUZzUGF0aDtcbiAgfVxuICBjaGRpcihkaXI6IEFic29sdXRlRnNQYXRoKTogdm9pZCB7XG4gICAgcHJvY2Vzcy5jaGRpcihkaXIpO1xuICB9XG4gIGNvcHlGaWxlKGZyb206IEFic29sdXRlRnNQYXRoLCB0bzogQWJzb2x1dGVGc1BhdGgpOiB2b2lkIHtcbiAgICBmcy5jb3B5RmlsZVN5bmMoZnJvbSwgdG8pO1xuICB9XG4gIG1vdmVGaWxlKGZyb206IEFic29sdXRlRnNQYXRoLCB0bzogQWJzb2x1dGVGc1BhdGgpOiB2b2lkIHtcbiAgICBmcy5yZW5hbWVTeW5jKGZyb20sIHRvKTtcbiAgfVxuICBlbnN1cmVEaXIocGF0aDogQWJzb2x1dGVGc1BhdGgpOiB2b2lkIHtcbiAgICBjb25zdCBwYXJlbnRzOiBBYnNvbHV0ZUZzUGF0aFtdID0gW107XG4gICAgd2hpbGUgKCF0aGlzLmlzUm9vdChwYXRoKSAmJiAhdGhpcy5leGlzdHMocGF0aCkpIHtcbiAgICAgIHBhcmVudHMucHVzaChwYXRoKTtcbiAgICAgIHBhdGggPSB0aGlzLmRpcm5hbWUocGF0aCk7XG4gICAgfVxuICAgIHdoaWxlIChwYXJlbnRzLmxlbmd0aCkge1xuICAgICAgdGhpcy5zYWZlTWtkaXIocGFyZW50cy5wb3AoKSEpO1xuICAgIH1cbiAgfVxuICByZW1vdmVEZWVwKHBhdGg6IEFic29sdXRlRnNQYXRoKTogdm9pZCB7XG4gICAgZnNFeHRyYS5yZW1vdmVTeW5jKHBhdGgpO1xuICB9XG4gIGlzQ2FzZVNlbnNpdGl2ZSgpOiBib29sZWFuIHtcbiAgICBpZiAodGhpcy5fY2FzZVNlbnNpdGl2ZSA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICAvLyBOb3RlIHRoZSB1c2Ugb2YgdGhlIHJlYWwgZmlsZS1zeXN0ZW0gaXMgaW50ZW50aW9uYWw6XG4gICAgICAvLyBgdGhpcy5leGlzdHMoKWAgcmVsaWVzIHVwb24gYGlzQ2FzZVNlbnNpdGl2ZSgpYCBzbyB0aGF0IHdvdWxkIGNhdXNlIGFuIGluZmluaXRlIHJlY3Vyc2lvbi5cbiAgICAgIHRoaXMuX2Nhc2VTZW5zaXRpdmUgPSAhZnMuZXhpc3RzU3luYyh0b2dnbGVQYXRoQ2FzZShfX2ZpbGVuYW1lKSk7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLl9jYXNlU2Vuc2l0aXZlO1xuICB9XG4gIHJlc29sdmUoLi4ucGF0aHM6IHN0cmluZ1tdKTogQWJzb2x1dGVGc1BhdGgge1xuICAgIHJldHVybiB0aGlzLm5vcm1hbGl6ZShwLnJlc29sdmUoLi4ucGF0aHMpKSBhcyBBYnNvbHV0ZUZzUGF0aDtcbiAgfVxuXG4gIGRpcm5hbWU8VCBleHRlbmRzIHN0cmluZz4oZmlsZTogVCk6IFQge1xuICAgIHJldHVybiB0aGlzLm5vcm1hbGl6ZShwLmRpcm5hbWUoZmlsZSkpIGFzIFQ7XG4gIH1cbiAgam9pbjxUIGV4dGVuZHMgc3RyaW5nPihiYXNlUGF0aDogVCwgLi4ucGF0aHM6IHN0cmluZ1tdKTogVCB7XG4gICAgcmV0dXJuIHRoaXMubm9ybWFsaXplKHAuam9pbihiYXNlUGF0aCwgLi4ucGF0aHMpKSBhcyBUO1xuICB9XG4gIGlzUm9vdChwYXRoOiBBYnNvbHV0ZUZzUGF0aCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiB0aGlzLmRpcm5hbWUocGF0aCkgPT09IHRoaXMubm9ybWFsaXplKHBhdGgpO1xuICB9XG4gIGlzUm9vdGVkKHBhdGg6IHN0cmluZyk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBwLmlzQWJzb2x1dGUocGF0aCk7XG4gIH1cbiAgcmVsYXRpdmU8VCBleHRlbmRzIFBhdGhTdHJpbmc+KGZyb206IFQsIHRvOiBUKTogUGF0aFNlZ21lbnR8QWJzb2x1dGVGc1BhdGgge1xuICAgIHJldHVybiB0aGlzLm5vcm1hbGl6ZShwLnJlbGF0aXZlKGZyb20sIHRvKSkgYXMgUGF0aFNlZ21lbnQgfCBBYnNvbHV0ZUZzUGF0aDtcbiAgfVxuICBiYXNlbmFtZShmaWxlUGF0aDogc3RyaW5nLCBleHRlbnNpb24/OiBzdHJpbmcpOiBQYXRoU2VnbWVudCB7XG4gICAgcmV0dXJuIHAuYmFzZW5hbWUoZmlsZVBhdGgsIGV4dGVuc2lvbikgYXMgUGF0aFNlZ21lbnQ7XG4gIH1cbiAgZXh0bmFtZShwYXRoOiBBYnNvbHV0ZUZzUGF0aHxQYXRoU2VnbWVudCk6IHN0cmluZyB7XG4gICAgcmV0dXJuIHAuZXh0bmFtZShwYXRoKTtcbiAgfVxuICByZWFscGF0aChwYXRoOiBBYnNvbHV0ZUZzUGF0aCk6IEFic29sdXRlRnNQYXRoIHtcbiAgICByZXR1cm4gdGhpcy5yZXNvbHZlKGZzLnJlYWxwYXRoU3luYyhwYXRoKSk7XG4gIH1cbiAgZ2V0RGVmYXVsdExpYkxvY2F0aW9uKCk6IEFic29sdXRlRnNQYXRoIHtcbiAgICByZXR1cm4gdGhpcy5yZXNvbHZlKHJlcXVpcmUucmVzb2x2ZSgndHlwZXNjcmlwdCcpLCAnLi4nKTtcbiAgfVxuICBub3JtYWxpemU8VCBleHRlbmRzIHN0cmluZz4ocGF0aDogVCk6IFQge1xuICAgIC8vIENvbnZlcnQgYmFja3NsYXNoZXMgdG8gZm9yd2FyZCBzbGFzaGVzXG4gICAgcmV0dXJuIHBhdGgucmVwbGFjZSgvXFxcXC9nLCAnLycpIGFzIFQ7XG4gIH1cblxuICBwcml2YXRlIHNhZmVNa2RpcihwYXRoOiBBYnNvbHV0ZUZzUGF0aCk6IHZvaWQge1xuICAgIHRyeSB7XG4gICAgICBmcy5ta2RpclN5bmMocGF0aCk7XG4gICAgfSBjYXRjaCAoZXJyKSB7XG4gICAgICAvLyBJZ25vcmUgdGhlIGVycm9yLCBpZiB0aGUgcGF0aCBhbHJlYWR5IGV4aXN0cyBhbmQgcG9pbnRzIHRvIGEgZGlyZWN0b3J5LlxuICAgICAgLy8gUmUtdGhyb3cgb3RoZXJ3aXNlLlxuICAgICAgaWYgKCF0aGlzLmV4aXN0cyhwYXRoKSB8fCAhdGhpcy5zdGF0KHBhdGgpLmlzRGlyZWN0b3J5KCkpIHtcbiAgICAgICAgdGhyb3cgZXJyO1xuICAgICAgfVxuICAgIH1cbiAgfVxufVxuXG4vKipcbiAqIFRvZ2dsZSB0aGUgY2FzZSBvZiBlYWNoIGNoYXJhY3RlciBpbiBhIGZpbGUgcGF0aC5cbiAqL1xuZnVuY3Rpb24gdG9nZ2xlUGF0aENhc2Uoc3RyOiBzdHJpbmcpOiBBYnNvbHV0ZUZzUGF0aCB7XG4gIHJldHVybiBhYnNvbHV0ZUZyb20oXG4gICAgICBzdHIucmVwbGFjZSgvXFx3L2csIGNoID0+IGNoLnRvVXBwZXJDYXNlKCkgPT09IGNoID8gY2gudG9Mb3dlckNhc2UoKSA6IGNoLnRvVXBwZXJDYXNlKCkpKTtcbn1cbiJdfQ==