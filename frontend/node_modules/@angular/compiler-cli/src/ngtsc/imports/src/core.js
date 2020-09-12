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
        define("@angular/compiler-cli/src/ngtsc/imports/src/core", ["require", "exports", "@angular/compiler-cli/src/ngtsc/util/src/path"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.validateAndRewriteCoreSymbol = exports.R3SymbolsImportRewriter = exports.NoopImportRewriter = void 0;
    var path_1 = require("@angular/compiler-cli/src/ngtsc/util/src/path");
    /**
     * `ImportRewriter` that does no rewriting.
     */
    var NoopImportRewriter = /** @class */ (function () {
        function NoopImportRewriter() {
        }
        NoopImportRewriter.prototype.shouldImportSymbol = function (symbol, specifier) {
            return true;
        };
        NoopImportRewriter.prototype.rewriteSymbol = function (symbol, specifier) {
            return symbol;
        };
        NoopImportRewriter.prototype.rewriteSpecifier = function (specifier, inContextOfFile) {
            return specifier;
        };
        return NoopImportRewriter;
    }());
    exports.NoopImportRewriter = NoopImportRewriter;
    /**
     * A mapping of supported symbols that can be imported from within @angular/core, and the names by
     * which they're exported from r3_symbols.
     */
    var CORE_SUPPORTED_SYMBOLS = new Map([
        ['ɵɵdefineInjectable', 'ɵɵdefineInjectable'],
        ['ɵɵdefineInjector', 'ɵɵdefineInjector'],
        ['ɵɵdefineNgModule', 'ɵɵdefineNgModule'],
        ['ɵɵsetNgModuleScope', 'ɵɵsetNgModuleScope'],
        ['ɵɵinject', 'ɵɵinject'],
        ['ɵɵFactoryDef', 'ɵɵFactoryDef'],
        ['ɵsetClassMetadata', 'setClassMetadata'],
        ['ɵɵInjectableDef', 'ɵɵInjectableDef'],
        ['ɵɵInjectorDef', 'ɵɵInjectorDef'],
        ['ɵɵNgModuleDefWithMeta', 'ɵɵNgModuleDefWithMeta'],
        ['ɵNgModuleFactory', 'NgModuleFactory'],
        ['ɵnoSideEffects', 'ɵnoSideEffects'],
    ]);
    var CORE_MODULE = '@angular/core';
    /**
     * `ImportRewriter` that rewrites imports from '@angular/core' to be imported from the r3_symbols.ts
     * file instead.
     */
    var R3SymbolsImportRewriter = /** @class */ (function () {
        function R3SymbolsImportRewriter(r3SymbolsPath) {
            this.r3SymbolsPath = r3SymbolsPath;
        }
        R3SymbolsImportRewriter.prototype.shouldImportSymbol = function (symbol, specifier) {
            return true;
        };
        R3SymbolsImportRewriter.prototype.rewriteSymbol = function (symbol, specifier) {
            if (specifier !== CORE_MODULE) {
                // This import isn't from core, so ignore it.
                return symbol;
            }
            return validateAndRewriteCoreSymbol(symbol);
        };
        R3SymbolsImportRewriter.prototype.rewriteSpecifier = function (specifier, inContextOfFile) {
            if (specifier !== CORE_MODULE) {
                // This module isn't core, so ignore it.
                return specifier;
            }
            var relativePathToR3Symbols = path_1.relativePathBetween(inContextOfFile, this.r3SymbolsPath);
            if (relativePathToR3Symbols === null) {
                throw new Error("Failed to rewrite import inside " + CORE_MODULE + ": " + inContextOfFile + " -> " + this.r3SymbolsPath);
            }
            return relativePathToR3Symbols;
        };
        return R3SymbolsImportRewriter;
    }());
    exports.R3SymbolsImportRewriter = R3SymbolsImportRewriter;
    function validateAndRewriteCoreSymbol(name) {
        if (!CORE_SUPPORTED_SYMBOLS.has(name)) {
            throw new Error("Importing unexpected symbol " + name + " while compiling " + CORE_MODULE);
        }
        return CORE_SUPPORTED_SYMBOLS.get(name);
    }
    exports.validateAndRewriteCoreSymbol = validateAndRewriteCoreSymbol;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29yZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvaW1wb3J0cy9zcmMvY29yZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7SUFFSCxzRUFBd0Q7SUEwQnhEOztPQUVHO0lBQ0g7UUFBQTtRQVlBLENBQUM7UUFYQywrQ0FBa0IsR0FBbEIsVUFBbUIsTUFBYyxFQUFFLFNBQWlCO1lBQ2xELE9BQU8sSUFBSSxDQUFDO1FBQ2QsQ0FBQztRQUVELDBDQUFhLEdBQWIsVUFBYyxNQUFjLEVBQUUsU0FBaUI7WUFDN0MsT0FBTyxNQUFNLENBQUM7UUFDaEIsQ0FBQztRQUVELDZDQUFnQixHQUFoQixVQUFpQixTQUFpQixFQUFFLGVBQXVCO1lBQ3pELE9BQU8sU0FBUyxDQUFDO1FBQ25CLENBQUM7UUFDSCx5QkFBQztJQUFELENBQUMsQUFaRCxJQVlDO0lBWlksZ0RBQWtCO0lBYy9COzs7T0FHRztJQUNILElBQU0sc0JBQXNCLEdBQUcsSUFBSSxHQUFHLENBQWlCO1FBQ3JELENBQUMsb0JBQW9CLEVBQUUsb0JBQW9CLENBQUM7UUFDNUMsQ0FBQyxrQkFBa0IsRUFBRSxrQkFBa0IsQ0FBQztRQUN4QyxDQUFDLGtCQUFrQixFQUFFLGtCQUFrQixDQUFDO1FBQ3hDLENBQUMsb0JBQW9CLEVBQUUsb0JBQW9CLENBQUM7UUFDNUMsQ0FBQyxVQUFVLEVBQUUsVUFBVSxDQUFDO1FBQ3hCLENBQUMsY0FBYyxFQUFFLGNBQWMsQ0FBQztRQUNoQyxDQUFDLG1CQUFtQixFQUFFLGtCQUFrQixDQUFDO1FBQ3pDLENBQUMsaUJBQWlCLEVBQUUsaUJBQWlCLENBQUM7UUFDdEMsQ0FBQyxlQUFlLEVBQUUsZUFBZSxDQUFDO1FBQ2xDLENBQUMsdUJBQXVCLEVBQUUsdUJBQXVCLENBQUM7UUFDbEQsQ0FBQyxrQkFBa0IsRUFBRSxpQkFBaUIsQ0FBQztRQUN2QyxDQUFDLGdCQUFnQixFQUFFLGdCQUFnQixDQUFDO0tBQ3JDLENBQUMsQ0FBQztJQUVILElBQU0sV0FBVyxHQUFHLGVBQWUsQ0FBQztJQUVwQzs7O09BR0c7SUFDSDtRQUNFLGlDQUFvQixhQUFxQjtZQUFyQixrQkFBYSxHQUFiLGFBQWEsQ0FBUTtRQUFHLENBQUM7UUFFN0Msb0RBQWtCLEdBQWxCLFVBQW1CLE1BQWMsRUFBRSxTQUFpQjtZQUNsRCxPQUFPLElBQUksQ0FBQztRQUNkLENBQUM7UUFFRCwrQ0FBYSxHQUFiLFVBQWMsTUFBYyxFQUFFLFNBQWlCO1lBQzdDLElBQUksU0FBUyxLQUFLLFdBQVcsRUFBRTtnQkFDN0IsNkNBQTZDO2dCQUM3QyxPQUFPLE1BQU0sQ0FBQzthQUNmO1lBRUQsT0FBTyw0QkFBNEIsQ0FBQyxNQUFNLENBQUMsQ0FBQztRQUM5QyxDQUFDO1FBRUQsa0RBQWdCLEdBQWhCLFVBQWlCLFNBQWlCLEVBQUUsZUFBdUI7WUFDekQsSUFBSSxTQUFTLEtBQUssV0FBVyxFQUFFO2dCQUM3Qix3Q0FBd0M7Z0JBQ3hDLE9BQU8sU0FBUyxDQUFDO2FBQ2xCO1lBRUQsSUFBTSx1QkFBdUIsR0FBRywwQkFBbUIsQ0FBQyxlQUFlLEVBQUUsSUFBSSxDQUFDLGFBQWEsQ0FBQyxDQUFDO1lBQ3pGLElBQUksdUJBQXVCLEtBQUssSUFBSSxFQUFFO2dCQUNwQyxNQUFNLElBQUksS0FBSyxDQUFDLHFDQUFtQyxXQUFXLFVBQUssZUFBZSxZQUM5RSxJQUFJLENBQUMsYUFBZSxDQUFDLENBQUM7YUFDM0I7WUFFRCxPQUFPLHVCQUF1QixDQUFDO1FBQ2pDLENBQUM7UUFDSCw4QkFBQztJQUFELENBQUMsQUE5QkQsSUE4QkM7SUE5QlksMERBQXVCO0lBZ0NwQyxTQUFnQiw0QkFBNEIsQ0FBQyxJQUFZO1FBQ3ZELElBQUksQ0FBQyxzQkFBc0IsQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLEVBQUU7WUFDckMsTUFBTSxJQUFJLEtBQUssQ0FBQyxpQ0FBK0IsSUFBSSx5QkFBb0IsV0FBYSxDQUFDLENBQUM7U0FDdkY7UUFDRCxPQUFPLHNCQUFzQixDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUUsQ0FBQztJQUMzQyxDQUFDO0lBTEQsb0VBS0MiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtyZWxhdGl2ZVBhdGhCZXR3ZWVufSBmcm9tICcuLi8uLi91dGlsL3NyYy9wYXRoJztcblxuLyoqXG4gKiBSZXdyaXRlcyBpbXBvcnRzIG9mIHN5bWJvbHMgYmVpbmcgd3JpdHRlbiBpbnRvIGdlbmVyYXRlZCBjb2RlLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIEltcG9ydFJld3JpdGVyIHtcbiAgLyoqXG4gICAqIFNob3VsZCB0aGUgZ2l2ZW4gc3ltYm9sIGJlIGltcG9ydGVkIGF0IGFsbD9cbiAgICpcbiAgICogSWYgYHRydWVgLCB0aGUgc3ltYm9sIHNob3VsZCBiZSBpbXBvcnRlZCBmcm9tIHRoZSBnaXZlbiBzcGVjaWZpZXIuIElmIGBmYWxzZWAsIHRoZSBzeW1ib2xcbiAgICogc2hvdWxkIGJlIHJlZmVyZW5jZWQgZGlyZWN0bHksIHdpdGhvdXQgYW4gaW1wb3J0LlxuICAgKi9cbiAgc2hvdWxkSW1wb3J0U3ltYm9sKHN5bWJvbDogc3RyaW5nLCBzcGVjaWZpZXI6IHN0cmluZyk6IGJvb2xlYW47XG5cbiAgLyoqXG4gICAqIE9wdGlvbmFsbHkgcmV3cml0ZSBhIHJlZmVyZW5jZSB0byBhbiBpbXBvcnRlZCBzeW1ib2wsIGNoYW5naW5nIGVpdGhlciB0aGUgYmluZGluZyBwcmVmaXggb3IgdGhlXG4gICAqIHN5bWJvbCBuYW1lIGl0c2VsZi5cbiAgICovXG4gIHJld3JpdGVTeW1ib2woc3ltYm9sOiBzdHJpbmcsIHNwZWNpZmllcjogc3RyaW5nKTogc3RyaW5nO1xuXG4gIC8qKlxuICAgKiBPcHRpb25hbGx5IHJld3JpdGUgdGhlIGdpdmVuIG1vZHVsZSBzcGVjaWZpZXIgaW4gdGhlIGNvbnRleHQgb2YgYSBnaXZlbiBmaWxlLlxuICAgKi9cbiAgcmV3cml0ZVNwZWNpZmllcihzcGVjaWZpZXI6IHN0cmluZywgaW5Db250ZXh0T2ZGaWxlOiBzdHJpbmcpOiBzdHJpbmc7XG59XG5cbi8qKlxuICogYEltcG9ydFJld3JpdGVyYCB0aGF0IGRvZXMgbm8gcmV3cml0aW5nLlxuICovXG5leHBvcnQgY2xhc3MgTm9vcEltcG9ydFJld3JpdGVyIGltcGxlbWVudHMgSW1wb3J0UmV3cml0ZXIge1xuICBzaG91bGRJbXBvcnRTeW1ib2woc3ltYm9sOiBzdHJpbmcsIHNwZWNpZmllcjogc3RyaW5nKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRydWU7XG4gIH1cblxuICByZXdyaXRlU3ltYm9sKHN5bWJvbDogc3RyaW5nLCBzcGVjaWZpZXI6IHN0cmluZyk6IHN0cmluZyB7XG4gICAgcmV0dXJuIHN5bWJvbDtcbiAgfVxuXG4gIHJld3JpdGVTcGVjaWZpZXIoc3BlY2lmaWVyOiBzdHJpbmcsIGluQ29udGV4dE9mRmlsZTogc3RyaW5nKTogc3RyaW5nIHtcbiAgICByZXR1cm4gc3BlY2lmaWVyO1xuICB9XG59XG5cbi8qKlxuICogQSBtYXBwaW5nIG9mIHN1cHBvcnRlZCBzeW1ib2xzIHRoYXQgY2FuIGJlIGltcG9ydGVkIGZyb20gd2l0aGluIEBhbmd1bGFyL2NvcmUsIGFuZCB0aGUgbmFtZXMgYnlcbiAqIHdoaWNoIHRoZXkncmUgZXhwb3J0ZWQgZnJvbSByM19zeW1ib2xzLlxuICovXG5jb25zdCBDT1JFX1NVUFBPUlRFRF9TWU1CT0xTID0gbmV3IE1hcDxzdHJpbmcsIHN0cmluZz4oW1xuICBbJ8m1ybVkZWZpbmVJbmplY3RhYmxlJywgJ8m1ybVkZWZpbmVJbmplY3RhYmxlJ10sXG4gIFsnybXJtWRlZmluZUluamVjdG9yJywgJ8m1ybVkZWZpbmVJbmplY3RvciddLFxuICBbJ8m1ybVkZWZpbmVOZ01vZHVsZScsICfJtcm1ZGVmaW5lTmdNb2R1bGUnXSxcbiAgWyfJtcm1c2V0TmdNb2R1bGVTY29wZScsICfJtcm1c2V0TmdNb2R1bGVTY29wZSddLFxuICBbJ8m1ybVpbmplY3QnLCAnybXJtWluamVjdCddLFxuICBbJ8m1ybVGYWN0b3J5RGVmJywgJ8m1ybVGYWN0b3J5RGVmJ10sXG4gIFsnybVzZXRDbGFzc01ldGFkYXRhJywgJ3NldENsYXNzTWV0YWRhdGEnXSxcbiAgWyfJtcm1SW5qZWN0YWJsZURlZicsICfJtcm1SW5qZWN0YWJsZURlZiddLFxuICBbJ8m1ybVJbmplY3RvckRlZicsICfJtcm1SW5qZWN0b3JEZWYnXSxcbiAgWyfJtcm1TmdNb2R1bGVEZWZXaXRoTWV0YScsICfJtcm1TmdNb2R1bGVEZWZXaXRoTWV0YSddLFxuICBbJ8m1TmdNb2R1bGVGYWN0b3J5JywgJ05nTW9kdWxlRmFjdG9yeSddLFxuICBbJ8m1bm9TaWRlRWZmZWN0cycsICfJtW5vU2lkZUVmZmVjdHMnXSxcbl0pO1xuXG5jb25zdCBDT1JFX01PRFVMRSA9ICdAYW5ndWxhci9jb3JlJztcblxuLyoqXG4gKiBgSW1wb3J0UmV3cml0ZXJgIHRoYXQgcmV3cml0ZXMgaW1wb3J0cyBmcm9tICdAYW5ndWxhci9jb3JlJyB0byBiZSBpbXBvcnRlZCBmcm9tIHRoZSByM19zeW1ib2xzLnRzXG4gKiBmaWxlIGluc3RlYWQuXG4gKi9cbmV4cG9ydCBjbGFzcyBSM1N5bWJvbHNJbXBvcnRSZXdyaXRlciBpbXBsZW1lbnRzIEltcG9ydFJld3JpdGVyIHtcbiAgY29uc3RydWN0b3IocHJpdmF0ZSByM1N5bWJvbHNQYXRoOiBzdHJpbmcpIHt9XG5cbiAgc2hvdWxkSW1wb3J0U3ltYm9sKHN5bWJvbDogc3RyaW5nLCBzcGVjaWZpZXI6IHN0cmluZyk6IGJvb2xlYW4ge1xuICAgIHJldHVybiB0cnVlO1xuICB9XG5cbiAgcmV3cml0ZVN5bWJvbChzeW1ib2w6IHN0cmluZywgc3BlY2lmaWVyOiBzdHJpbmcpOiBzdHJpbmcge1xuICAgIGlmIChzcGVjaWZpZXIgIT09IENPUkVfTU9EVUxFKSB7XG4gICAgICAvLyBUaGlzIGltcG9ydCBpc24ndCBmcm9tIGNvcmUsIHNvIGlnbm9yZSBpdC5cbiAgICAgIHJldHVybiBzeW1ib2w7XG4gICAgfVxuXG4gICAgcmV0dXJuIHZhbGlkYXRlQW5kUmV3cml0ZUNvcmVTeW1ib2woc3ltYm9sKTtcbiAgfVxuXG4gIHJld3JpdGVTcGVjaWZpZXIoc3BlY2lmaWVyOiBzdHJpbmcsIGluQ29udGV4dE9mRmlsZTogc3RyaW5nKTogc3RyaW5nIHtcbiAgICBpZiAoc3BlY2lmaWVyICE9PSBDT1JFX01PRFVMRSkge1xuICAgICAgLy8gVGhpcyBtb2R1bGUgaXNuJ3QgY29yZSwgc28gaWdub3JlIGl0LlxuICAgICAgcmV0dXJuIHNwZWNpZmllcjtcbiAgICB9XG5cbiAgICBjb25zdCByZWxhdGl2ZVBhdGhUb1IzU3ltYm9scyA9IHJlbGF0aXZlUGF0aEJldHdlZW4oaW5Db250ZXh0T2ZGaWxlLCB0aGlzLnIzU3ltYm9sc1BhdGgpO1xuICAgIGlmIChyZWxhdGl2ZVBhdGhUb1IzU3ltYm9scyA9PT0gbnVsbCkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKGBGYWlsZWQgdG8gcmV3cml0ZSBpbXBvcnQgaW5zaWRlICR7Q09SRV9NT0RVTEV9OiAke2luQ29udGV4dE9mRmlsZX0gLT4gJHtcbiAgICAgICAgICB0aGlzLnIzU3ltYm9sc1BhdGh9YCk7XG4gICAgfVxuXG4gICAgcmV0dXJuIHJlbGF0aXZlUGF0aFRvUjNTeW1ib2xzO1xuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiB2YWxpZGF0ZUFuZFJld3JpdGVDb3JlU3ltYm9sKG5hbWU6IHN0cmluZyk6IHN0cmluZyB7XG4gIGlmICghQ09SRV9TVVBQT1JURURfU1lNQk9MUy5oYXMobmFtZSkpIHtcbiAgICB0aHJvdyBuZXcgRXJyb3IoYEltcG9ydGluZyB1bmV4cGVjdGVkIHN5bWJvbCAke25hbWV9IHdoaWxlIGNvbXBpbGluZyAke0NPUkVfTU9EVUxFfWApO1xuICB9XG4gIHJldHVybiBDT1JFX1NVUFBPUlRFRF9TWU1CT0xTLmdldChuYW1lKSE7XG59XG4iXX0=