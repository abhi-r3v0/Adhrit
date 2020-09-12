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
        define("@angular/compiler-cli/src/tooling", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/reflection", "@angular/compiler-cli/src/transformers/downlevel_decorators_transform"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.constructorParametersDownlevelTransform = exports.GLOBAL_DEFS_FOR_TERSER_WITH_AOT = exports.GLOBAL_DEFS_FOR_TERSER = void 0;
    var tslib_1 = require("tslib");
    var reflection_1 = require("@angular/compiler-cli/src/ngtsc/reflection");
    var downlevel_decorators_transform_1 = require("@angular/compiler-cli/src/transformers/downlevel_decorators_transform");
    /**
     * Known values for global variables in `@angular/core` that Terser should set using
     * https://github.com/terser-js/terser#conditional-compilation
     */
    exports.GLOBAL_DEFS_FOR_TERSER = {
        ngDevMode: false,
        ngI18nClosureMode: false,
    };
    exports.GLOBAL_DEFS_FOR_TERSER_WITH_AOT = tslib_1.__assign(tslib_1.__assign({}, exports.GLOBAL_DEFS_FOR_TERSER), { ngJitMode: false });
    /**
     * Transform for downleveling Angular decorators and Angular-decorated class constructor
     * parameters for dependency injection. This transform can be used by the CLI for JIT-mode
     * compilation where constructor parameters and associated Angular decorators should be
     * downleveled so that apps are not exposed to the ES2015 temporal dead zone limitation
     * in TypeScript. See https://github.com/angular/angular-cli/pull/14473 for more details.
     */
    function constructorParametersDownlevelTransform(program) {
        var typeChecker = program.getTypeChecker();
        var reflectionHost = new reflection_1.TypeScriptReflectionHost(typeChecker);
        return downlevel_decorators_transform_1.getDownlevelDecoratorsTransform(typeChecker, reflectionHost, [], /* isCore */ false, 
        /* enableClosureCompiler */ false, /* skipClassDecorators */ true);
    }
    exports.constructorParametersDownlevelTransform = constructorParametersDownlevelTransform;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidG9vbGluZy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvdG9vbGluZy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7O0lBV0gseUVBQTREO0lBQzVELHdIQUE4RjtJQUU5Rjs7O09BR0c7SUFDVSxRQUFBLHNCQUFzQixHQUFHO1FBQ3BDLFNBQVMsRUFBRSxLQUFLO1FBQ2hCLGlCQUFpQixFQUFFLEtBQUs7S0FDekIsQ0FBQztJQUVXLFFBQUEsK0JBQStCLHlDQUN2Qyw4QkFBc0IsS0FDekIsU0FBUyxFQUFFLEtBQUssSUFDaEI7SUFFRjs7Ozs7O09BTUc7SUFDSCxTQUFnQix1Q0FBdUMsQ0FBQyxPQUFtQjtRQUV6RSxJQUFNLFdBQVcsR0FBRyxPQUFPLENBQUMsY0FBYyxFQUFFLENBQUM7UUFDN0MsSUFBTSxjQUFjLEdBQUcsSUFBSSxxQ0FBd0IsQ0FBQyxXQUFXLENBQUMsQ0FBQztRQUNqRSxPQUFPLGdFQUErQixDQUNsQyxXQUFXLEVBQUUsY0FBYyxFQUFFLEVBQUUsRUFBRSxZQUFZLENBQUMsS0FBSztRQUNuRCwyQkFBMkIsQ0FBQyxLQUFLLEVBQUUseUJBQXlCLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDekUsQ0FBQztJQVBELDBGQU9DIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbi8qKlxuICogQGZpbGVvdmVydmlld1xuICogVGhpcyBmaWxlIGlzIHVzZWQgYXMgYSBwcml2YXRlIEFQSSBjaGFubmVsIHRvIHNoYXJlZCBBbmd1bGFyIEZXIEFQSXMgd2l0aCBAYW5ndWxhci9jbGkuXG4gKlxuICogQW55IGNoYW5nZXMgdG8gdGhpcyBmaWxlIHNob3VsZCBiZSBkaXNjdXNzZWQgd2l0aCB0aGUgQW5ndWxhciBDTEkgdGVhbS5cbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtUeXBlU2NyaXB0UmVmbGVjdGlvbkhvc3R9IGZyb20gJy4vbmd0c2MvcmVmbGVjdGlvbic7XG5pbXBvcnQge2dldERvd25sZXZlbERlY29yYXRvcnNUcmFuc2Zvcm19IGZyb20gJy4vdHJhbnNmb3JtZXJzL2Rvd25sZXZlbF9kZWNvcmF0b3JzX3RyYW5zZm9ybSc7XG5cbi8qKlxuICogS25vd24gdmFsdWVzIGZvciBnbG9iYWwgdmFyaWFibGVzIGluIGBAYW5ndWxhci9jb3JlYCB0aGF0IFRlcnNlciBzaG91bGQgc2V0IHVzaW5nXG4gKiBodHRwczovL2dpdGh1Yi5jb20vdGVyc2VyLWpzL3RlcnNlciNjb25kaXRpb25hbC1jb21waWxhdGlvblxuICovXG5leHBvcnQgY29uc3QgR0xPQkFMX0RFRlNfRk9SX1RFUlNFUiA9IHtcbiAgbmdEZXZNb2RlOiBmYWxzZSxcbiAgbmdJMThuQ2xvc3VyZU1vZGU6IGZhbHNlLFxufTtcblxuZXhwb3J0IGNvbnN0IEdMT0JBTF9ERUZTX0ZPUl9URVJTRVJfV0lUSF9BT1QgPSB7XG4gIC4uLkdMT0JBTF9ERUZTX0ZPUl9URVJTRVIsXG4gIG5nSml0TW9kZTogZmFsc2UsXG59O1xuXG4vKipcbiAqIFRyYW5zZm9ybSBmb3IgZG93bmxldmVsaW5nIEFuZ3VsYXIgZGVjb3JhdG9ycyBhbmQgQW5ndWxhci1kZWNvcmF0ZWQgY2xhc3MgY29uc3RydWN0b3JcbiAqIHBhcmFtZXRlcnMgZm9yIGRlcGVuZGVuY3kgaW5qZWN0aW9uLiBUaGlzIHRyYW5zZm9ybSBjYW4gYmUgdXNlZCBieSB0aGUgQ0xJIGZvciBKSVQtbW9kZVxuICogY29tcGlsYXRpb24gd2hlcmUgY29uc3RydWN0b3IgcGFyYW1ldGVycyBhbmQgYXNzb2NpYXRlZCBBbmd1bGFyIGRlY29yYXRvcnMgc2hvdWxkIGJlXG4gKiBkb3dubGV2ZWxlZCBzbyB0aGF0IGFwcHMgYXJlIG5vdCBleHBvc2VkIHRvIHRoZSBFUzIwMTUgdGVtcG9yYWwgZGVhZCB6b25lIGxpbWl0YXRpb25cbiAqIGluIFR5cGVTY3JpcHQuIFNlZSBodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9hbmd1bGFyLWNsaS9wdWxsLzE0NDczIGZvciBtb3JlIGRldGFpbHMuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBjb25zdHJ1Y3RvclBhcmFtZXRlcnNEb3dubGV2ZWxUcmFuc2Zvcm0ocHJvZ3JhbTogdHMuUHJvZ3JhbSk6XG4gICAgdHMuVHJhbnNmb3JtZXJGYWN0b3J5PHRzLlNvdXJjZUZpbGU+IHtcbiAgY29uc3QgdHlwZUNoZWNrZXIgPSBwcm9ncmFtLmdldFR5cGVDaGVja2VyKCk7XG4gIGNvbnN0IHJlZmxlY3Rpb25Ib3N0ID0gbmV3IFR5cGVTY3JpcHRSZWZsZWN0aW9uSG9zdCh0eXBlQ2hlY2tlcik7XG4gIHJldHVybiBnZXREb3dubGV2ZWxEZWNvcmF0b3JzVHJhbnNmb3JtKFxuICAgICAgdHlwZUNoZWNrZXIsIHJlZmxlY3Rpb25Ib3N0LCBbXSwgLyogaXNDb3JlICovIGZhbHNlLFxuICAgICAgLyogZW5hYmxlQ2xvc3VyZUNvbXBpbGVyICovIGZhbHNlLCAvKiBza2lwQ2xhc3NEZWNvcmF0b3JzICovIHRydWUpO1xufVxuIl19