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
        define("@angular/compiler-cli/src/ngtsc/file_system/src/compiler_host", ["require", "exports", "os", "typescript", "@angular/compiler-cli/src/ngtsc/file_system/src/helpers"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.NgtscCompilerHost = void 0;
    /// <reference types="node" />
    var os = require("os");
    var ts = require("typescript");
    var helpers_1 = require("@angular/compiler-cli/src/ngtsc/file_system/src/helpers");
    var NgtscCompilerHost = /** @class */ (function () {
        function NgtscCompilerHost(fs, options) {
            if (options === void 0) { options = {}; }
            this.fs = fs;
            this.options = options;
        }
        NgtscCompilerHost.prototype.getSourceFile = function (fileName, languageVersion) {
            var text = this.readFile(fileName);
            return text !== undefined ? ts.createSourceFile(fileName, text, languageVersion, true) :
                undefined;
        };
        NgtscCompilerHost.prototype.getDefaultLibFileName = function (options) {
            return this.fs.join(this.getDefaultLibLocation(), ts.getDefaultLibFileName(options));
        };
        NgtscCompilerHost.prototype.getDefaultLibLocation = function () {
            return this.fs.getDefaultLibLocation();
        };
        NgtscCompilerHost.prototype.writeFile = function (fileName, data, writeByteOrderMark, onError, sourceFiles) {
            var path = helpers_1.absoluteFrom(fileName);
            this.fs.ensureDir(this.fs.dirname(path));
            this.fs.writeFile(path, data);
        };
        NgtscCompilerHost.prototype.getCurrentDirectory = function () {
            return this.fs.pwd();
        };
        NgtscCompilerHost.prototype.getCanonicalFileName = function (fileName) {
            return this.useCaseSensitiveFileNames() ? fileName : fileName.toLowerCase();
        };
        NgtscCompilerHost.prototype.useCaseSensitiveFileNames = function () {
            return this.fs.isCaseSensitive();
        };
        NgtscCompilerHost.prototype.getNewLine = function () {
            switch (this.options.newLine) {
                case ts.NewLineKind.CarriageReturnLineFeed:
                    return '\r\n';
                case ts.NewLineKind.LineFeed:
                    return '\n';
                default:
                    return os.EOL;
            }
        };
        NgtscCompilerHost.prototype.fileExists = function (fileName) {
            var absPath = this.fs.resolve(fileName);
            return this.fs.exists(absPath) && this.fs.stat(absPath).isFile();
        };
        NgtscCompilerHost.prototype.readFile = function (fileName) {
            var absPath = this.fs.resolve(fileName);
            if (!this.fileExists(absPath)) {
                return undefined;
            }
            return this.fs.readFile(absPath);
        };
        return NgtscCompilerHost;
    }());
    exports.NgtscCompilerHost = NgtscCompilerHost;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29tcGlsZXJfaG9zdC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvZmlsZV9zeXN0ZW0vc3JjL2NvbXBpbGVyX2hvc3QudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7O0lBRUgsOEJBQThCO0lBQzlCLHVCQUF5QjtJQUN6QiwrQkFBaUM7SUFFakMsbUZBQXVDO0lBR3ZDO1FBQ0UsMkJBQXNCLEVBQWMsRUFBWSxPQUFnQztZQUFoQyx3QkFBQSxFQUFBLFlBQWdDO1lBQTFELE9BQUUsR0FBRixFQUFFLENBQVk7WUFBWSxZQUFPLEdBQVAsT0FBTyxDQUF5QjtRQUFHLENBQUM7UUFFcEYseUNBQWEsR0FBYixVQUFjLFFBQWdCLEVBQUUsZUFBZ0M7WUFDOUQsSUFBTSxJQUFJLEdBQUcsSUFBSSxDQUFDLFFBQVEsQ0FBQyxRQUFRLENBQUMsQ0FBQztZQUNyQyxPQUFPLElBQUksS0FBSyxTQUFTLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxnQkFBZ0IsQ0FBQyxRQUFRLEVBQUUsSUFBSSxFQUFFLGVBQWUsRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDO2dCQUM1RCxTQUFTLENBQUM7UUFDeEMsQ0FBQztRQUVELGlEQUFxQixHQUFyQixVQUFzQixPQUEyQjtZQUMvQyxPQUFPLElBQUksQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxxQkFBcUIsRUFBRSxFQUFFLEVBQUUsQ0FBQyxxQkFBcUIsQ0FBQyxPQUFPLENBQUMsQ0FBQyxDQUFDO1FBQ3ZGLENBQUM7UUFFRCxpREFBcUIsR0FBckI7WUFDRSxPQUFPLElBQUksQ0FBQyxFQUFFLENBQUMscUJBQXFCLEVBQUUsQ0FBQztRQUN6QyxDQUFDO1FBRUQscUNBQVMsR0FBVCxVQUNJLFFBQWdCLEVBQUUsSUFBWSxFQUFFLGtCQUEyQixFQUMzRCxPQUE4QyxFQUM5QyxXQUEwQztZQUM1QyxJQUFNLElBQUksR0FBRyxzQkFBWSxDQUFDLFFBQVEsQ0FBQyxDQUFDO1lBQ3BDLElBQUksQ0FBQyxFQUFFLENBQUMsU0FBUyxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7WUFDekMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxTQUFTLENBQUMsSUFBSSxFQUFFLElBQUksQ0FBQyxDQUFDO1FBQ2hDLENBQUM7UUFFRCwrQ0FBbUIsR0FBbkI7WUFDRSxPQUFPLElBQUksQ0FBQyxFQUFFLENBQUMsR0FBRyxFQUFFLENBQUM7UUFDdkIsQ0FBQztRQUVELGdEQUFvQixHQUFwQixVQUFxQixRQUFnQjtZQUNuQyxPQUFPLElBQUksQ0FBQyx5QkFBeUIsRUFBRSxDQUFDLENBQUMsQ0FBQyxRQUFRLENBQUMsQ0FBQyxDQUFDLFFBQVEsQ0FBQyxXQUFXLEVBQUUsQ0FBQztRQUM5RSxDQUFDO1FBRUQscURBQXlCLEdBQXpCO1lBQ0UsT0FBTyxJQUFJLENBQUMsRUFBRSxDQUFDLGVBQWUsRUFBRSxDQUFDO1FBQ25DLENBQUM7UUFFRCxzQ0FBVSxHQUFWO1lBQ0UsUUFBUSxJQUFJLENBQUMsT0FBTyxDQUFDLE9BQU8sRUFBRTtnQkFDNUIsS0FBSyxFQUFFLENBQUMsV0FBVyxDQUFDLHNCQUFzQjtvQkFDeEMsT0FBTyxNQUFNLENBQUM7Z0JBQ2hCLEtBQUssRUFBRSxDQUFDLFdBQVcsQ0FBQyxRQUFRO29CQUMxQixPQUFPLElBQUksQ0FBQztnQkFDZDtvQkFDRSxPQUFPLEVBQUUsQ0FBQyxHQUFHLENBQUM7YUFDakI7UUFDSCxDQUFDO1FBRUQsc0NBQVUsR0FBVixVQUFXLFFBQWdCO1lBQ3pCLElBQU0sT0FBTyxHQUFHLElBQUksQ0FBQyxFQUFFLENBQUMsT0FBTyxDQUFDLFFBQVEsQ0FBQyxDQUFDO1lBQzFDLE9BQU8sSUFBSSxDQUFDLEVBQUUsQ0FBQyxNQUFNLENBQUMsT0FBTyxDQUFDLElBQUksSUFBSSxDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUMsTUFBTSxFQUFFLENBQUM7UUFDbkUsQ0FBQztRQUVELG9DQUFRLEdBQVIsVUFBUyxRQUFnQjtZQUN2QixJQUFNLE9BQU8sR0FBRyxJQUFJLENBQUMsRUFBRSxDQUFDLE9BQU8sQ0FBQyxRQUFRLENBQUMsQ0FBQztZQUMxQyxJQUFJLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxPQUFPLENBQUMsRUFBRTtnQkFDN0IsT0FBTyxTQUFTLENBQUM7YUFDbEI7WUFDRCxPQUFPLElBQUksQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQ25DLENBQUM7UUFDSCx3QkFBQztJQUFELENBQUMsQUE3REQsSUE2REM7SUE3RFksOENBQWlCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbi8vLyA8cmVmZXJlbmNlIHR5cGVzPVwibm9kZVwiIC8+XG5pbXBvcnQgKiBhcyBvcyBmcm9tICdvcyc7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHthYnNvbHV0ZUZyb219IGZyb20gJy4vaGVscGVycyc7XG5pbXBvcnQge0ZpbGVTeXN0ZW19IGZyb20gJy4vdHlwZXMnO1xuXG5leHBvcnQgY2xhc3MgTmd0c2NDb21waWxlckhvc3QgaW1wbGVtZW50cyB0cy5Db21waWxlckhvc3Qge1xuICBjb25zdHJ1Y3Rvcihwcm90ZWN0ZWQgZnM6IEZpbGVTeXN0ZW0sIHByb3RlY3RlZCBvcHRpb25zOiB0cy5Db21waWxlck9wdGlvbnMgPSB7fSkge31cblxuICBnZXRTb3VyY2VGaWxlKGZpbGVOYW1lOiBzdHJpbmcsIGxhbmd1YWdlVmVyc2lvbjogdHMuU2NyaXB0VGFyZ2V0KTogdHMuU291cmNlRmlsZXx1bmRlZmluZWQge1xuICAgIGNvbnN0IHRleHQgPSB0aGlzLnJlYWRGaWxlKGZpbGVOYW1lKTtcbiAgICByZXR1cm4gdGV4dCAhPT0gdW5kZWZpbmVkID8gdHMuY3JlYXRlU291cmNlRmlsZShmaWxlTmFtZSwgdGV4dCwgbGFuZ3VhZ2VWZXJzaW9uLCB0cnVlKSA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHVuZGVmaW5lZDtcbiAgfVxuXG4gIGdldERlZmF1bHRMaWJGaWxlTmFtZShvcHRpb25zOiB0cy5Db21waWxlck9wdGlvbnMpOiBzdHJpbmcge1xuICAgIHJldHVybiB0aGlzLmZzLmpvaW4odGhpcy5nZXREZWZhdWx0TGliTG9jYXRpb24oKSwgdHMuZ2V0RGVmYXVsdExpYkZpbGVOYW1lKG9wdGlvbnMpKTtcbiAgfVxuXG4gIGdldERlZmF1bHRMaWJMb2NhdGlvbigpOiBzdHJpbmcge1xuICAgIHJldHVybiB0aGlzLmZzLmdldERlZmF1bHRMaWJMb2NhdGlvbigpO1xuICB9XG5cbiAgd3JpdGVGaWxlKFxuICAgICAgZmlsZU5hbWU6IHN0cmluZywgZGF0YTogc3RyaW5nLCB3cml0ZUJ5dGVPcmRlck1hcms6IGJvb2xlYW4sXG4gICAgICBvbkVycm9yOiAoKG1lc3NhZ2U6IHN0cmluZykgPT4gdm9pZCl8dW5kZWZpbmVkLFxuICAgICAgc291cmNlRmlsZXM/OiBSZWFkb25seUFycmF5PHRzLlNvdXJjZUZpbGU+KTogdm9pZCB7XG4gICAgY29uc3QgcGF0aCA9IGFic29sdXRlRnJvbShmaWxlTmFtZSk7XG4gICAgdGhpcy5mcy5lbnN1cmVEaXIodGhpcy5mcy5kaXJuYW1lKHBhdGgpKTtcbiAgICB0aGlzLmZzLndyaXRlRmlsZShwYXRoLCBkYXRhKTtcbiAgfVxuXG4gIGdldEN1cnJlbnREaXJlY3RvcnkoKTogc3RyaW5nIHtcbiAgICByZXR1cm4gdGhpcy5mcy5wd2QoKTtcbiAgfVxuXG4gIGdldENhbm9uaWNhbEZpbGVOYW1lKGZpbGVOYW1lOiBzdHJpbmcpOiBzdHJpbmcge1xuICAgIHJldHVybiB0aGlzLnVzZUNhc2VTZW5zaXRpdmVGaWxlTmFtZXMoKSA/IGZpbGVOYW1lIDogZmlsZU5hbWUudG9Mb3dlckNhc2UoKTtcbiAgfVxuXG4gIHVzZUNhc2VTZW5zaXRpdmVGaWxlTmFtZXMoKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRoaXMuZnMuaXNDYXNlU2Vuc2l0aXZlKCk7XG4gIH1cblxuICBnZXROZXdMaW5lKCk6IHN0cmluZyB7XG4gICAgc3dpdGNoICh0aGlzLm9wdGlvbnMubmV3TGluZSkge1xuICAgICAgY2FzZSB0cy5OZXdMaW5lS2luZC5DYXJyaWFnZVJldHVybkxpbmVGZWVkOlxuICAgICAgICByZXR1cm4gJ1xcclxcbic7XG4gICAgICBjYXNlIHRzLk5ld0xpbmVLaW5kLkxpbmVGZWVkOlxuICAgICAgICByZXR1cm4gJ1xcbic7XG4gICAgICBkZWZhdWx0OlxuICAgICAgICByZXR1cm4gb3MuRU9MO1xuICAgIH1cbiAgfVxuXG4gIGZpbGVFeGlzdHMoZmlsZU5hbWU6IHN0cmluZyk6IGJvb2xlYW4ge1xuICAgIGNvbnN0IGFic1BhdGggPSB0aGlzLmZzLnJlc29sdmUoZmlsZU5hbWUpO1xuICAgIHJldHVybiB0aGlzLmZzLmV4aXN0cyhhYnNQYXRoKSAmJiB0aGlzLmZzLnN0YXQoYWJzUGF0aCkuaXNGaWxlKCk7XG4gIH1cblxuICByZWFkRmlsZShmaWxlTmFtZTogc3RyaW5nKTogc3RyaW5nfHVuZGVmaW5lZCB7XG4gICAgY29uc3QgYWJzUGF0aCA9IHRoaXMuZnMucmVzb2x2ZShmaWxlTmFtZSk7XG4gICAgaWYgKCF0aGlzLmZpbGVFeGlzdHMoYWJzUGF0aCkpIHtcbiAgICAgIHJldHVybiB1bmRlZmluZWQ7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLmZzLnJlYWRGaWxlKGFic1BhdGgpO1xuICB9XG59XG4iXX0=