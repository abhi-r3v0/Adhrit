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
        define("@angular/compiler-cli/src/ngtsc/routing/src/analyzer", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/routing/src/lazy", "@angular/compiler-cli/src/ngtsc/routing/src/route"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.NgModuleRouteAnalyzer = void 0;
    var tslib_1 = require("tslib");
    var lazy_1 = require("@angular/compiler-cli/src/ngtsc/routing/src/lazy");
    var route_1 = require("@angular/compiler-cli/src/ngtsc/routing/src/route");
    var NgModuleRouteAnalyzer = /** @class */ (function () {
        function NgModuleRouteAnalyzer(moduleResolver, evaluator) {
            this.evaluator = evaluator;
            this.modules = new Map();
            this.entryPointManager = new route_1.RouterEntryPointManager(moduleResolver);
        }
        NgModuleRouteAnalyzer.prototype.add = function (sourceFile, moduleName, imports, exports, providers) {
            var key = route_1.entryPointKeyFor(sourceFile.fileName, moduleName);
            if (this.modules.has(key)) {
                throw new Error("Double route analyzing for '" + key + "'.");
            }
            this.modules.set(key, {
                sourceFile: sourceFile,
                moduleName: moduleName,
                imports: imports,
                exports: exports,
                providers: providers,
            });
        };
        NgModuleRouteAnalyzer.prototype.listLazyRoutes = function (entryModuleKey) {
            var _this = this;
            if ((entryModuleKey !== undefined) && !this.modules.has(entryModuleKey)) {
                throw new Error("Failed to list lazy routes: Unknown module '" + entryModuleKey + "'.");
            }
            var routes = [];
            var scannedModuleKeys = new Set();
            var pendingModuleKeys = entryModuleKey ? [entryModuleKey] : Array.from(this.modules.keys());
            // When listing lazy routes for a specific entry module, we need to recursively extract
            // "transitive" routes from imported/exported modules. This is not necessary when listing all
            // lazy routes, because all analyzed modules will be scanned anyway.
            var scanRecursively = entryModuleKey !== undefined;
            while (pendingModuleKeys.length > 0) {
                var key = pendingModuleKeys.pop();
                if (scannedModuleKeys.has(key)) {
                    continue;
                }
                else {
                    scannedModuleKeys.add(key);
                }
                var data = this.modules.get(key);
                var entryPoints = lazy_1.scanForRouteEntryPoints(data.sourceFile, data.moduleName, data, this.entryPointManager, this.evaluator);
                routes.push.apply(routes, tslib_1.__spread(entryPoints.map(function (entryPoint) { return ({
                    route: entryPoint.loadChildren,
                    module: entryPoint.from,
                    referencedModule: entryPoint.resolvedTo,
                }); })));
                if (scanRecursively) {
                    pendingModuleKeys.push.apply(pendingModuleKeys, tslib_1.__spread(tslib_1.__spread(entryPoints.map(function (_a) {
                        var resolvedTo = _a.resolvedTo;
                        return route_1.entryPointKeyFor(resolvedTo.filePath, resolvedTo.moduleName);
                    }), lazy_1.scanForCandidateTransitiveModules(data.imports, this.evaluator), lazy_1.scanForCandidateTransitiveModules(data.exports, this.evaluator)).filter(function (key) { return _this.modules.has(key); })));
                }
            }
            return routes;
        };
        return NgModuleRouteAnalyzer;
    }());
    exports.NgModuleRouteAnalyzer = NgModuleRouteAnalyzer;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYW5hbHl6ZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3JvdXRpbmcvc3JjL2FuYWx5emVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFPSCx5RUFBa0Y7SUFDbEYsMkVBQWtFO0lBZ0JsRTtRQUlFLCtCQUFZLGNBQThCLEVBQVUsU0FBMkI7WUFBM0IsY0FBUyxHQUFULFNBQVMsQ0FBa0I7WUFIdkUsWUFBTyxHQUFHLElBQUksR0FBRyxFQUFnQyxDQUFDO1lBSXhELElBQUksQ0FBQyxpQkFBaUIsR0FBRyxJQUFJLCtCQUF1QixDQUFDLGNBQWMsQ0FBQyxDQUFDO1FBQ3ZFLENBQUM7UUFFRCxtQ0FBRyxHQUFILFVBQUksVUFBeUIsRUFBRSxVQUFrQixFQUFFLE9BQTJCLEVBQzFFLE9BQTJCLEVBQUUsU0FBNkI7WUFDNUQsSUFBTSxHQUFHLEdBQUcsd0JBQWdCLENBQUMsVUFBVSxDQUFDLFFBQVEsRUFBRSxVQUFVLENBQUMsQ0FBQztZQUM5RCxJQUFJLElBQUksQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLEdBQUcsQ0FBQyxFQUFFO2dCQUN6QixNQUFNLElBQUksS0FBSyxDQUFDLGlDQUErQixHQUFHLE9BQUksQ0FBQyxDQUFDO2FBQ3pEO1lBQ0QsSUFBSSxDQUFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsR0FBRyxFQUFFO2dCQUNwQixVQUFVLFlBQUE7Z0JBQ1YsVUFBVSxZQUFBO2dCQUNWLE9BQU8sU0FBQTtnQkFDUCxPQUFPLFNBQUE7Z0JBQ1AsU0FBUyxXQUFBO2FBQ1YsQ0FBQyxDQUFDO1FBQ0wsQ0FBQztRQUVELDhDQUFjLEdBQWQsVUFBZSxjQUFpQztZQUFoRCxpQkFnREM7WUEvQ0MsSUFBSSxDQUFDLGNBQWMsS0FBSyxTQUFTLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLGNBQWMsQ0FBQyxFQUFFO2dCQUN2RSxNQUFNLElBQUksS0FBSyxDQUFDLGlEQUErQyxjQUFjLE9BQUksQ0FBQyxDQUFDO2FBQ3BGO1lBRUQsSUFBTSxNQUFNLEdBQWdCLEVBQUUsQ0FBQztZQUMvQixJQUFNLGlCQUFpQixHQUFHLElBQUksR0FBRyxFQUFVLENBQUM7WUFDNUMsSUFBTSxpQkFBaUIsR0FBRyxjQUFjLENBQUMsQ0FBQyxDQUFDLENBQUMsY0FBYyxDQUFDLENBQUMsQ0FBQyxDQUFDLEtBQUssQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxJQUFJLEVBQUUsQ0FBQyxDQUFDO1lBRTlGLHVGQUF1RjtZQUN2Riw2RkFBNkY7WUFDN0Ysb0VBQW9FO1lBQ3BFLElBQU0sZUFBZSxHQUFHLGNBQWMsS0FBSyxTQUFTLENBQUM7WUFFckQsT0FBTyxpQkFBaUIsQ0FBQyxNQUFNLEdBQUcsQ0FBQyxFQUFFO2dCQUNuQyxJQUFNLEdBQUcsR0FBRyxpQkFBaUIsQ0FBQyxHQUFHLEVBQUcsQ0FBQztnQkFFckMsSUFBSSxpQkFBaUIsQ0FBQyxHQUFHLENBQUMsR0FBRyxDQUFDLEVBQUU7b0JBQzlCLFNBQVM7aUJBQ1Y7cUJBQU07b0JBQ0wsaUJBQWlCLENBQUMsR0FBRyxDQUFDLEdBQUcsQ0FBQyxDQUFDO2lCQUM1QjtnQkFFRCxJQUFNLElBQUksR0FBRyxJQUFJLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxHQUFHLENBQUUsQ0FBQztnQkFDcEMsSUFBTSxXQUFXLEdBQUcsOEJBQXVCLENBQ3ZDLElBQUksQ0FBQyxVQUFVLEVBQUUsSUFBSSxDQUFDLFVBQVUsRUFBRSxJQUFJLEVBQUUsSUFBSSxDQUFDLGlCQUFpQixFQUFFLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztnQkFFcEYsTUFBTSxDQUFDLElBQUksT0FBWCxNQUFNLG1CQUFTLFdBQVcsQ0FBQyxHQUFHLENBQUMsVUFBQSxVQUFVLElBQUksT0FBQSxDQUFDO29CQUNiLEtBQUssRUFBRSxVQUFVLENBQUMsWUFBWTtvQkFDOUIsTUFBTSxFQUFFLFVBQVUsQ0FBQyxJQUFJO29CQUN2QixnQkFBZ0IsRUFBRSxVQUFVLENBQUMsVUFBVTtpQkFDeEMsQ0FBQyxFQUpZLENBSVosQ0FBQyxHQUFFO2dCQUVwQyxJQUFJLGVBQWUsRUFBRTtvQkFDbkIsaUJBQWlCLENBQUMsSUFBSSxPQUF0QixpQkFBaUIsbUJBQ1YsaUJBRUksV0FBVyxDQUFDLEdBQUcsQ0FDZCxVQUFDLEVBQVk7NEJBQVgsVUFBVSxnQkFBQTt3QkFBTSxPQUFBLHdCQUFnQixDQUFDLFVBQVUsQ0FBQyxRQUFRLEVBQUUsVUFBVSxDQUFDLFVBQVUsQ0FBQztvQkFBNUQsQ0FBNEQsQ0FBQyxFQUVoRix3Q0FBaUMsQ0FBQyxJQUFJLENBQUMsT0FBTyxFQUFFLElBQUksQ0FBQyxTQUFTLENBQUMsRUFFL0Qsd0NBQWlDLENBQUMsSUFBSSxDQUFDLE9BQU8sRUFBRSxJQUFJLENBQUMsU0FBUyxDQUFDLEVBQ3hFLE1BQU0sQ0FBQyxVQUFBLEdBQUcsSUFBSSxPQUFBLEtBQUksQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLEdBQUcsQ0FBQyxFQUFyQixDQUFxQixDQUFDLEdBQUU7aUJBQ3pDO2FBQ0Y7WUFFRCxPQUFPLE1BQU0sQ0FBQztRQUNoQixDQUFDO1FBQ0gsNEJBQUM7SUFBRCxDQUFDLEFBeEVELElBd0VDO0lBeEVZLHNEQUFxQiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtNb2R1bGVSZXNvbHZlcn0gZnJvbSAnLi4vLi4vaW1wb3J0cyc7XG5pbXBvcnQge1BhcnRpYWxFdmFsdWF0b3J9IGZyb20gJy4uLy4uL3BhcnRpYWxfZXZhbHVhdG9yJztcblxuaW1wb3J0IHtzY2FuRm9yQ2FuZGlkYXRlVHJhbnNpdGl2ZU1vZHVsZXMsIHNjYW5Gb3JSb3V0ZUVudHJ5UG9pbnRzfSBmcm9tICcuL2xhenknO1xuaW1wb3J0IHtlbnRyeVBvaW50S2V5Rm9yLCBSb3V0ZXJFbnRyeVBvaW50TWFuYWdlcn0gZnJvbSAnLi9yb3V0ZSc7XG5cbmV4cG9ydCBpbnRlcmZhY2UgTmdNb2R1bGVSYXdSb3V0ZURhdGEge1xuICBzb3VyY2VGaWxlOiB0cy5Tb3VyY2VGaWxlO1xuICBtb2R1bGVOYW1lOiBzdHJpbmc7XG4gIGltcG9ydHM6IHRzLkV4cHJlc3Npb258bnVsbDtcbiAgZXhwb3J0czogdHMuRXhwcmVzc2lvbnxudWxsO1xuICBwcm92aWRlcnM6IHRzLkV4cHJlc3Npb258bnVsbDtcbn1cblxuZXhwb3J0IGludGVyZmFjZSBMYXp5Um91dGUge1xuICByb3V0ZTogc3RyaW5nO1xuICBtb2R1bGU6IHtuYW1lOiBzdHJpbmcsIGZpbGVQYXRoOiBzdHJpbmd9O1xuICByZWZlcmVuY2VkTW9kdWxlOiB7bmFtZTogc3RyaW5nLCBmaWxlUGF0aDogc3RyaW5nfTtcbn1cblxuZXhwb3J0IGNsYXNzIE5nTW9kdWxlUm91dGVBbmFseXplciB7XG4gIHByaXZhdGUgbW9kdWxlcyA9IG5ldyBNYXA8c3RyaW5nLCBOZ01vZHVsZVJhd1JvdXRlRGF0YT4oKTtcbiAgcHJpdmF0ZSBlbnRyeVBvaW50TWFuYWdlcjogUm91dGVyRW50cnlQb2ludE1hbmFnZXI7XG5cbiAgY29uc3RydWN0b3IobW9kdWxlUmVzb2x2ZXI6IE1vZHVsZVJlc29sdmVyLCBwcml2YXRlIGV2YWx1YXRvcjogUGFydGlhbEV2YWx1YXRvcikge1xuICAgIHRoaXMuZW50cnlQb2ludE1hbmFnZXIgPSBuZXcgUm91dGVyRW50cnlQb2ludE1hbmFnZXIobW9kdWxlUmVzb2x2ZXIpO1xuICB9XG5cbiAgYWRkKHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUsIG1vZHVsZU5hbWU6IHN0cmluZywgaW1wb3J0czogdHMuRXhwcmVzc2lvbnxudWxsLFxuICAgICAgZXhwb3J0czogdHMuRXhwcmVzc2lvbnxudWxsLCBwcm92aWRlcnM6IHRzLkV4cHJlc3Npb258bnVsbCk6IHZvaWQge1xuICAgIGNvbnN0IGtleSA9IGVudHJ5UG9pbnRLZXlGb3Ioc291cmNlRmlsZS5maWxlTmFtZSwgbW9kdWxlTmFtZSk7XG4gICAgaWYgKHRoaXMubW9kdWxlcy5oYXMoa2V5KSkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGBEb3VibGUgcm91dGUgYW5hbHl6aW5nIGZvciAnJHtrZXl9Jy5gKTtcbiAgICB9XG4gICAgdGhpcy5tb2R1bGVzLnNldChrZXksIHtcbiAgICAgIHNvdXJjZUZpbGUsXG4gICAgICBtb2R1bGVOYW1lLFxuICAgICAgaW1wb3J0cyxcbiAgICAgIGV4cG9ydHMsXG4gICAgICBwcm92aWRlcnMsXG4gICAgfSk7XG4gIH1cblxuICBsaXN0TGF6eVJvdXRlcyhlbnRyeU1vZHVsZUtleT86IHN0cmluZ3x1bmRlZmluZWQpOiBMYXp5Um91dGVbXSB7XG4gICAgaWYgKChlbnRyeU1vZHVsZUtleSAhPT0gdW5kZWZpbmVkKSAmJiAhdGhpcy5tb2R1bGVzLmhhcyhlbnRyeU1vZHVsZUtleSkpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihgRmFpbGVkIHRvIGxpc3QgbGF6eSByb3V0ZXM6IFVua25vd24gbW9kdWxlICcke2VudHJ5TW9kdWxlS2V5fScuYCk7XG4gICAgfVxuXG4gICAgY29uc3Qgcm91dGVzOiBMYXp5Um91dGVbXSA9IFtdO1xuICAgIGNvbnN0IHNjYW5uZWRNb2R1bGVLZXlzID0gbmV3IFNldDxzdHJpbmc+KCk7XG4gICAgY29uc3QgcGVuZGluZ01vZHVsZUtleXMgPSBlbnRyeU1vZHVsZUtleSA/IFtlbnRyeU1vZHVsZUtleV0gOiBBcnJheS5mcm9tKHRoaXMubW9kdWxlcy5rZXlzKCkpO1xuXG4gICAgLy8gV2hlbiBsaXN0aW5nIGxhenkgcm91dGVzIGZvciBhIHNwZWNpZmljIGVudHJ5IG1vZHVsZSwgd2UgbmVlZCB0byByZWN1cnNpdmVseSBleHRyYWN0XG4gICAgLy8gXCJ0cmFuc2l0aXZlXCIgcm91dGVzIGZyb20gaW1wb3J0ZWQvZXhwb3J0ZWQgbW9kdWxlcy4gVGhpcyBpcyBub3QgbmVjZXNzYXJ5IHdoZW4gbGlzdGluZyBhbGxcbiAgICAvLyBsYXp5IHJvdXRlcywgYmVjYXVzZSBhbGwgYW5hbHl6ZWQgbW9kdWxlcyB3aWxsIGJlIHNjYW5uZWQgYW55d2F5LlxuICAgIGNvbnN0IHNjYW5SZWN1cnNpdmVseSA9IGVudHJ5TW9kdWxlS2V5ICE9PSB1bmRlZmluZWQ7XG5cbiAgICB3aGlsZSAocGVuZGluZ01vZHVsZUtleXMubGVuZ3RoID4gMCkge1xuICAgICAgY29uc3Qga2V5ID0gcGVuZGluZ01vZHVsZUtleXMucG9wKCkhO1xuXG4gICAgICBpZiAoc2Nhbm5lZE1vZHVsZUtleXMuaGFzKGtleSkpIHtcbiAgICAgICAgY29udGludWU7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBzY2FubmVkTW9kdWxlS2V5cy5hZGQoa2V5KTtcbiAgICAgIH1cblxuICAgICAgY29uc3QgZGF0YSA9IHRoaXMubW9kdWxlcy5nZXQoa2V5KSE7XG4gICAgICBjb25zdCBlbnRyeVBvaW50cyA9IHNjYW5Gb3JSb3V0ZUVudHJ5UG9pbnRzKFxuICAgICAgICAgIGRhdGEuc291cmNlRmlsZSwgZGF0YS5tb2R1bGVOYW1lLCBkYXRhLCB0aGlzLmVudHJ5UG9pbnRNYW5hZ2VyLCB0aGlzLmV2YWx1YXRvcik7XG5cbiAgICAgIHJvdXRlcy5wdXNoKC4uLmVudHJ5UG9pbnRzLm1hcChlbnRyeVBvaW50ID0+ICh7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByb3V0ZTogZW50cnlQb2ludC5sb2FkQ2hpbGRyZW4sXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtb2R1bGU6IGVudHJ5UG9pbnQuZnJvbSxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlZmVyZW5jZWRNb2R1bGU6IGVudHJ5UG9pbnQucmVzb2x2ZWRUbyxcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9KSkpO1xuXG4gICAgICBpZiAoc2NhblJlY3Vyc2l2ZWx5KSB7XG4gICAgICAgIHBlbmRpbmdNb2R1bGVLZXlzLnB1c2goXG4gICAgICAgICAgICAuLi5bXG4gICAgICAgICAgICAgICAgLy8gU2NhbiB0aGUgcmV0cmlldmVkIGxhenkgcm91dGUgZW50cnkgcG9pbnRzLlxuICAgICAgICAgICAgICAgIC4uLmVudHJ5UG9pbnRzLm1hcChcbiAgICAgICAgICAgICAgICAgICAgKHtyZXNvbHZlZFRvfSkgPT4gZW50cnlQb2ludEtleUZvcihyZXNvbHZlZFRvLmZpbGVQYXRoLCByZXNvbHZlZFRvLm1vZHVsZU5hbWUpKSxcbiAgICAgICAgICAgICAgICAvLyBTY2FuIHRoZSBjdXJyZW50IG1vZHVsZSdzIGltcG9ydGVkIG1vZHVsZXMuXG4gICAgICAgICAgICAgICAgLi4uc2NhbkZvckNhbmRpZGF0ZVRyYW5zaXRpdmVNb2R1bGVzKGRhdGEuaW1wb3J0cywgdGhpcy5ldmFsdWF0b3IpLFxuICAgICAgICAgICAgICAgIC8vIFNjYW4gdGhlIGN1cnJlbnQgbW9kdWxlJ3MgZXhwb3J0ZWQgbW9kdWxlcy5cbiAgICAgICAgICAgICAgICAuLi5zY2FuRm9yQ2FuZGlkYXRlVHJhbnNpdGl2ZU1vZHVsZXMoZGF0YS5leHBvcnRzLCB0aGlzLmV2YWx1YXRvciksXG4gICAgICAgIF0uZmlsdGVyKGtleSA9PiB0aGlzLm1vZHVsZXMuaGFzKGtleSkpKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gcm91dGVzO1xuICB9XG59XG4iXX0=