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
        define("@angular/compiler-cli/src/transformers/r3_transform", ["require", "exports", "tslib", "@angular/compiler-cli/src/transformers/node_emitter"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.getAngularClassTransformerFactory = void 0;
    var tslib_1 = require("tslib");
    var node_emitter_1 = require("@angular/compiler-cli/src/transformers/node_emitter");
    /**
     * Returns a transformer that adds the requested static methods specified by modules.
     */
    function getAngularClassTransformerFactory(modules, annotateForClosureCompiler) {
        if (modules.length === 0) {
            // If no modules are specified, just return an identity transform.
            return function () { return function (sf) { return sf; }; };
        }
        var moduleMap = new Map(modules.map(function (m) { return [m.fileName, m]; }));
        return function (context) {
            return function (sourceFile) {
                var module = moduleMap.get(sourceFile.fileName);
                if (module && module.statements.length > 0) {
                    var _a = tslib_1.__read(node_emitter_1.updateSourceFile(sourceFile, module, annotateForClosureCompiler), 1), newSourceFile = _a[0];
                    return newSourceFile;
                }
                return sourceFile;
            };
        };
    }
    exports.getAngularClassTransformerFactory = getAngularClassTransformerFactory;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicjNfdHJhbnNmb3JtLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy90cmFuc2Zvcm1lcnMvcjNfdHJhbnNmb3JtLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFLSCxvRkFBZ0Q7SUFLaEQ7O09BRUc7SUFDSCxTQUFnQixpQ0FBaUMsQ0FDN0MsT0FBd0IsRUFBRSwwQkFBbUM7UUFDL0QsSUFBSSxPQUFPLENBQUMsTUFBTSxLQUFLLENBQUMsRUFBRTtZQUN4QixrRUFBa0U7WUFDbEUsT0FBTyxjQUFNLE9BQUEsVUFBQSxFQUFFLElBQUksT0FBQSxFQUFFLEVBQUYsQ0FBRSxFQUFSLENBQVEsQ0FBQztTQUN2QjtRQUNELElBQU0sU0FBUyxHQUFHLElBQUksR0FBRyxDQUFDLE9BQU8sQ0FBQyxHQUFHLENBQTBCLFVBQUEsQ0FBQyxJQUFJLE9BQUEsQ0FBQyxDQUFDLENBQUMsUUFBUSxFQUFFLENBQUMsQ0FBQyxFQUFmLENBQWUsQ0FBQyxDQUFDLENBQUM7UUFDdEYsT0FBTyxVQUFTLE9BQWlDO1lBQy9DLE9BQU8sVUFBUyxVQUF5QjtnQkFDdkMsSUFBTSxNQUFNLEdBQUcsU0FBUyxDQUFDLEdBQUcsQ0FBQyxVQUFVLENBQUMsUUFBUSxDQUFDLENBQUM7Z0JBQ2xELElBQUksTUFBTSxJQUFJLE1BQU0sQ0FBQyxVQUFVLENBQUMsTUFBTSxHQUFHLENBQUMsRUFBRTtvQkFDcEMsSUFBQSxLQUFBLGVBQWtCLCtCQUFnQixDQUFDLFVBQVUsRUFBRSxNQUFNLEVBQUUsMEJBQTBCLENBQUMsSUFBQSxFQUFqRixhQUFhLFFBQW9FLENBQUM7b0JBQ3pGLE9BQU8sYUFBYSxDQUFDO2lCQUN0QjtnQkFDRCxPQUFPLFVBQVUsQ0FBQztZQUNwQixDQUFDLENBQUM7UUFDSixDQUFDLENBQUM7SUFDSixDQUFDO0lBakJELDhFQWlCQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1BhcnRpYWxNb2R1bGUsIFN0YXRlbWVudCwgU3RhdGljU3ltYm9sfSBmcm9tICdAYW5ndWxhci9jb21waWxlcic7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHt1cGRhdGVTb3VyY2VGaWxlfSBmcm9tICcuL25vZGVfZW1pdHRlcic7XG5cbmV4cG9ydCB0eXBlIFRyYW5zZm9ybWVyID0gKHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUpID0+IHRzLlNvdXJjZUZpbGU7XG5leHBvcnQgdHlwZSBUcmFuc2Zvcm1lckZhY3RvcnkgPSAoY29udGV4dDogdHMuVHJhbnNmb3JtYXRpb25Db250ZXh0KSA9PiBUcmFuc2Zvcm1lcjtcblxuLyoqXG4gKiBSZXR1cm5zIGEgdHJhbnNmb3JtZXIgdGhhdCBhZGRzIHRoZSByZXF1ZXN0ZWQgc3RhdGljIG1ldGhvZHMgc3BlY2lmaWVkIGJ5IG1vZHVsZXMuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRBbmd1bGFyQ2xhc3NUcmFuc2Zvcm1lckZhY3RvcnkoXG4gICAgbW9kdWxlczogUGFydGlhbE1vZHVsZVtdLCBhbm5vdGF0ZUZvckNsb3N1cmVDb21waWxlcjogYm9vbGVhbik6IFRyYW5zZm9ybWVyRmFjdG9yeSB7XG4gIGlmIChtb2R1bGVzLmxlbmd0aCA9PT0gMCkge1xuICAgIC8vIElmIG5vIG1vZHVsZXMgYXJlIHNwZWNpZmllZCwganVzdCByZXR1cm4gYW4gaWRlbnRpdHkgdHJhbnNmb3JtLlxuICAgIHJldHVybiAoKSA9PiBzZiA9PiBzZjtcbiAgfVxuICBjb25zdCBtb2R1bGVNYXAgPSBuZXcgTWFwKG1vZHVsZXMubWFwPFtzdHJpbmcsIFBhcnRpYWxNb2R1bGVdPihtID0+IFttLmZpbGVOYW1lLCBtXSkpO1xuICByZXR1cm4gZnVuY3Rpb24oY29udGV4dDogdHMuVHJhbnNmb3JtYXRpb25Db250ZXh0KSB7XG4gICAgcmV0dXJuIGZ1bmN0aW9uKHNvdXJjZUZpbGU6IHRzLlNvdXJjZUZpbGUpOiB0cy5Tb3VyY2VGaWxlIHtcbiAgICAgIGNvbnN0IG1vZHVsZSA9IG1vZHVsZU1hcC5nZXQoc291cmNlRmlsZS5maWxlTmFtZSk7XG4gICAgICBpZiAobW9kdWxlICYmIG1vZHVsZS5zdGF0ZW1lbnRzLmxlbmd0aCA+IDApIHtcbiAgICAgICAgY29uc3QgW25ld1NvdXJjZUZpbGVdID0gdXBkYXRlU291cmNlRmlsZShzb3VyY2VGaWxlLCBtb2R1bGUsIGFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyKTtcbiAgICAgICAgcmV0dXJuIG5ld1NvdXJjZUZpbGU7XG4gICAgICB9XG4gICAgICByZXR1cm4gc291cmNlRmlsZTtcbiAgICB9O1xuICB9O1xufVxuIl19