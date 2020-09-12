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
        define("@angular/compiler-cli/src/ngtsc/routing/src/route", ["require", "exports", "tslib"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.entryPointKeyFor = exports.RouterEntryPointManager = exports.RouterEntryPoint = void 0;
    var tslib_1 = require("tslib");
    var RouterEntryPoint = /** @class */ (function () {
        function RouterEntryPoint() {
        }
        return RouterEntryPoint;
    }());
    exports.RouterEntryPoint = RouterEntryPoint;
    var RouterEntryPointImpl = /** @class */ (function () {
        function RouterEntryPointImpl(filePath, moduleName) {
            this.filePath = filePath;
            this.moduleName = moduleName;
        }
        Object.defineProperty(RouterEntryPointImpl.prototype, "name", {
            get: function () {
                return this.moduleName;
            },
            enumerable: false,
            configurable: true
        });
        // For debugging purposes.
        RouterEntryPointImpl.prototype.toString = function () {
            return "RouterEntryPoint(name: " + this.name + ", filePath: " + this.filePath + ")";
        };
        return RouterEntryPointImpl;
    }());
    var RouterEntryPointManager = /** @class */ (function () {
        function RouterEntryPointManager(moduleResolver) {
            this.moduleResolver = moduleResolver;
            this.map = new Map();
        }
        RouterEntryPointManager.prototype.resolveLoadChildrenIdentifier = function (loadChildrenIdentifier, context) {
            var _a = tslib_1.__read(loadChildrenIdentifier.split('#'), 2), relativeFile = _a[0], moduleName = _a[1];
            if (moduleName === undefined) {
                return null;
            }
            var resolvedSf = this.moduleResolver.resolveModule(relativeFile, context.fileName);
            if (resolvedSf === null) {
                return null;
            }
            return this.fromNgModule(resolvedSf, moduleName);
        };
        RouterEntryPointManager.prototype.fromNgModule = function (sf, moduleName) {
            var key = entryPointKeyFor(sf.fileName, moduleName);
            if (!this.map.has(key)) {
                this.map.set(key, new RouterEntryPointImpl(sf.fileName, moduleName));
            }
            return this.map.get(key);
        };
        return RouterEntryPointManager;
    }());
    exports.RouterEntryPointManager = RouterEntryPointManager;
    function entryPointKeyFor(filePath, moduleName) {
        // Drop the extension to be compatible with how cli calls `listLazyRoutes(entryRoute)`.
        return filePath.replace(/\.tsx?$/i, '') + "#" + moduleName;
    }
    exports.entryPointKeyFor = entryPointKeyFor;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicm91dGUuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3JvdXRpbmcvc3JjL3JvdXRlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFNSDtRQUFBO1FBT0EsQ0FBQztRQUFELHVCQUFDO0lBQUQsQ0FBQyxBQVBELElBT0M7SUFQcUIsNENBQWdCO0lBU3RDO1FBQ0UsOEJBQXFCLFFBQWdCLEVBQVcsVUFBa0I7WUFBN0MsYUFBUSxHQUFSLFFBQVEsQ0FBUTtZQUFXLGVBQVUsR0FBVixVQUFVLENBQVE7UUFBRyxDQUFDO1FBRXRFLHNCQUFJLHNDQUFJO2lCQUFSO2dCQUNFLE9BQU8sSUFBSSxDQUFDLFVBQVUsQ0FBQztZQUN6QixDQUFDOzs7V0FBQTtRQUVELDBCQUEwQjtRQUMxQix1Q0FBUSxHQUFSO1lBQ0UsT0FBTyw0QkFBMEIsSUFBSSxDQUFDLElBQUksb0JBQWUsSUFBSSxDQUFDLFFBQVEsTUFBRyxDQUFDO1FBQzVFLENBQUM7UUFDSCwyQkFBQztJQUFELENBQUMsQUFYRCxJQVdDO0lBRUQ7UUFHRSxpQ0FBb0IsY0FBOEI7WUFBOUIsbUJBQWMsR0FBZCxjQUFjLENBQWdCO1lBRjFDLFFBQUcsR0FBRyxJQUFJLEdBQUcsRUFBNEIsQ0FBQztRQUVHLENBQUM7UUFFdEQsK0RBQTZCLEdBQTdCLFVBQThCLHNCQUE4QixFQUFFLE9BQXNCO1lBRTVFLElBQUEsS0FBQSxlQUE2QixzQkFBc0IsQ0FBQyxLQUFLLENBQUMsR0FBRyxDQUFDLElBQUEsRUFBN0QsWUFBWSxRQUFBLEVBQUUsVUFBVSxRQUFxQyxDQUFDO1lBQ3JFLElBQUksVUFBVSxLQUFLLFNBQVMsRUFBRTtnQkFDNUIsT0FBTyxJQUFJLENBQUM7YUFDYjtZQUNELElBQU0sVUFBVSxHQUFHLElBQUksQ0FBQyxjQUFjLENBQUMsYUFBYSxDQUFDLFlBQVksRUFBRSxPQUFPLENBQUMsUUFBUSxDQUFDLENBQUM7WUFDckYsSUFBSSxVQUFVLEtBQUssSUFBSSxFQUFFO2dCQUN2QixPQUFPLElBQUksQ0FBQzthQUNiO1lBQ0QsT0FBTyxJQUFJLENBQUMsWUFBWSxDQUFDLFVBQVUsRUFBRSxVQUFVLENBQUMsQ0FBQztRQUNuRCxDQUFDO1FBRUQsOENBQVksR0FBWixVQUFhLEVBQWlCLEVBQUUsVUFBa0I7WUFDaEQsSUFBTSxHQUFHLEdBQUcsZ0JBQWdCLENBQUMsRUFBRSxDQUFDLFFBQVEsRUFBRSxVQUFVLENBQUMsQ0FBQztZQUN0RCxJQUFJLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxHQUFHLENBQUMsR0FBRyxDQUFDLEVBQUU7Z0JBQ3RCLElBQUksQ0FBQyxHQUFHLENBQUMsR0FBRyxDQUFDLEdBQUcsRUFBRSxJQUFJLG9CQUFvQixDQUFDLEVBQUUsQ0FBQyxRQUFRLEVBQUUsVUFBVSxDQUFDLENBQUMsQ0FBQzthQUN0RTtZQUNELE9BQU8sSUFBSSxDQUFDLEdBQUcsQ0FBQyxHQUFHLENBQUMsR0FBRyxDQUFFLENBQUM7UUFDNUIsQ0FBQztRQUNILDhCQUFDO0lBQUQsQ0FBQyxBQXpCRCxJQXlCQztJQXpCWSwwREFBdUI7SUEyQnBDLFNBQWdCLGdCQUFnQixDQUFDLFFBQWdCLEVBQUUsVUFBa0I7UUFDbkUsdUZBQXVGO1FBQ3ZGLE9BQVUsUUFBUSxDQUFDLE9BQU8sQ0FBQyxVQUFVLEVBQUUsRUFBRSxDQUFDLFNBQUksVUFBWSxDQUFDO0lBQzdELENBQUM7SUFIRCw0Q0FHQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtNb2R1bGVSZXNvbHZlcn0gZnJvbSAnLi4vLi4vaW1wb3J0cyc7XG5cbmV4cG9ydCBhYnN0cmFjdCBjbGFzcyBSb3V0ZXJFbnRyeVBvaW50IHtcbiAgYWJzdHJhY3QgcmVhZG9ubHkgZmlsZVBhdGg6IHN0cmluZztcblxuICBhYnN0cmFjdCByZWFkb25seSBtb2R1bGVOYW1lOiBzdHJpbmc7XG5cbiAgLy8gQWxpYXMgb2YgbW9kdWxlTmFtZSBmb3IgY29tcGF0aWJpbGl0eSB3aXRoIHdoYXQgYG5ndG9vbHNfYXBpYCByZXR1cm5lZC5cbiAgYWJzdHJhY3QgcmVhZG9ubHkgbmFtZTogc3RyaW5nO1xufVxuXG5jbGFzcyBSb3V0ZXJFbnRyeVBvaW50SW1wbCBpbXBsZW1lbnRzIFJvdXRlckVudHJ5UG9pbnQge1xuICBjb25zdHJ1Y3RvcihyZWFkb25seSBmaWxlUGF0aDogc3RyaW5nLCByZWFkb25seSBtb2R1bGVOYW1lOiBzdHJpbmcpIHt9XG5cbiAgZ2V0IG5hbWUoKTogc3RyaW5nIHtcbiAgICByZXR1cm4gdGhpcy5tb2R1bGVOYW1lO1xuICB9XG5cbiAgLy8gRm9yIGRlYnVnZ2luZyBwdXJwb3Nlcy5cbiAgdG9TdHJpbmcoKTogc3RyaW5nIHtcbiAgICByZXR1cm4gYFJvdXRlckVudHJ5UG9pbnQobmFtZTogJHt0aGlzLm5hbWV9LCBmaWxlUGF0aDogJHt0aGlzLmZpbGVQYXRofSlgO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBSb3V0ZXJFbnRyeVBvaW50TWFuYWdlciB7XG4gIHByaXZhdGUgbWFwID0gbmV3IE1hcDxzdHJpbmcsIFJvdXRlckVudHJ5UG9pbnQ+KCk7XG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSBtb2R1bGVSZXNvbHZlcjogTW9kdWxlUmVzb2x2ZXIpIHt9XG5cbiAgcmVzb2x2ZUxvYWRDaGlsZHJlbklkZW50aWZpZXIobG9hZENoaWxkcmVuSWRlbnRpZmllcjogc3RyaW5nLCBjb250ZXh0OiB0cy5Tb3VyY2VGaWxlKTpcbiAgICAgIFJvdXRlckVudHJ5UG9pbnR8bnVsbCB7XG4gICAgY29uc3QgW3JlbGF0aXZlRmlsZSwgbW9kdWxlTmFtZV0gPSBsb2FkQ2hpbGRyZW5JZGVudGlmaWVyLnNwbGl0KCcjJyk7XG4gICAgaWYgKG1vZHVsZU5hbWUgPT09IHVuZGVmaW5lZCkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIGNvbnN0IHJlc29sdmVkU2YgPSB0aGlzLm1vZHVsZVJlc29sdmVyLnJlc29sdmVNb2R1bGUocmVsYXRpdmVGaWxlLCBjb250ZXh0LmZpbGVOYW1lKTtcbiAgICBpZiAocmVzb2x2ZWRTZiA9PT0gbnVsbCkge1xuICAgICAgcmV0dXJuIG51bGw7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLmZyb21OZ01vZHVsZShyZXNvbHZlZFNmLCBtb2R1bGVOYW1lKTtcbiAgfVxuXG4gIGZyb21OZ01vZHVsZShzZjogdHMuU291cmNlRmlsZSwgbW9kdWxlTmFtZTogc3RyaW5nKTogUm91dGVyRW50cnlQb2ludCB7XG4gICAgY29uc3Qga2V5ID0gZW50cnlQb2ludEtleUZvcihzZi5maWxlTmFtZSwgbW9kdWxlTmFtZSk7XG4gICAgaWYgKCF0aGlzLm1hcC5oYXMoa2V5KSkge1xuICAgICAgdGhpcy5tYXAuc2V0KGtleSwgbmV3IFJvdXRlckVudHJ5UG9pbnRJbXBsKHNmLmZpbGVOYW1lLCBtb2R1bGVOYW1lKSk7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLm1hcC5nZXQoa2V5KSE7XG4gIH1cbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGVudHJ5UG9pbnRLZXlGb3IoZmlsZVBhdGg6IHN0cmluZywgbW9kdWxlTmFtZTogc3RyaW5nKTogc3RyaW5nIHtcbiAgLy8gRHJvcCB0aGUgZXh0ZW5zaW9uIHRvIGJlIGNvbXBhdGlibGUgd2l0aCBob3cgY2xpIGNhbGxzIGBsaXN0TGF6eVJvdXRlcyhlbnRyeVJvdXRlKWAuXG4gIHJldHVybiBgJHtmaWxlUGF0aC5yZXBsYWNlKC9cXC50c3g/JC9pLCAnJyl9IyR7bW9kdWxlTmFtZX1gO1xufVxuIl19