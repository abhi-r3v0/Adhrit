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
        define("@angular/compiler-cli/src/ngtsc/transform", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/transform/src/api", "@angular/compiler-cli/src/ngtsc/transform/src/alias", "@angular/compiler-cli/src/ngtsc/transform/src/compilation", "@angular/compiler-cli/src/ngtsc/transform/src/declaration", "@angular/compiler-cli/src/ngtsc/transform/src/trait", "@angular/compiler-cli/src/ngtsc/transform/src/transform"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    tslib_1.__exportStar(require("@angular/compiler-cli/src/ngtsc/transform/src/api"), exports);
    var alias_1 = require("@angular/compiler-cli/src/ngtsc/transform/src/alias");
    Object.defineProperty(exports, "aliasTransformFactory", { enumerable: true, get: function () { return alias_1.aliasTransformFactory; } });
    var compilation_1 = require("@angular/compiler-cli/src/ngtsc/transform/src/compilation");
    Object.defineProperty(exports, "TraitCompiler", { enumerable: true, get: function () { return compilation_1.TraitCompiler; } });
    var declaration_1 = require("@angular/compiler-cli/src/ngtsc/transform/src/declaration");
    Object.defineProperty(exports, "declarationTransformFactory", { enumerable: true, get: function () { return declaration_1.declarationTransformFactory; } });
    Object.defineProperty(exports, "DtsTransformRegistry", { enumerable: true, get: function () { return declaration_1.DtsTransformRegistry; } });
    Object.defineProperty(exports, "IvyDeclarationDtsTransform", { enumerable: true, get: function () { return declaration_1.IvyDeclarationDtsTransform; } });
    Object.defineProperty(exports, "ReturnTypeTransform", { enumerable: true, get: function () { return declaration_1.ReturnTypeTransform; } });
    var trait_1 = require("@angular/compiler-cli/src/ngtsc/transform/src/trait");
    Object.defineProperty(exports, "Trait", { enumerable: true, get: function () { return trait_1.Trait; } });
    Object.defineProperty(exports, "TraitState", { enumerable: true, get: function () { return trait_1.TraitState; } });
    var transform_1 = require("@angular/compiler-cli/src/ngtsc/transform/src/transform");
    Object.defineProperty(exports, "ivyTransformFactory", { enumerable: true, get: function () { return transform_1.ivyTransformFactory; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3RyYW5zZm9ybS9pbmRleC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7SUFFSCw0RkFBMEI7SUFDMUIsNkVBQWtEO0lBQTFDLDhHQUFBLHFCQUFxQixPQUFBO0lBQzdCLHlGQUE2RDtJQUF4Qyw0R0FBQSxhQUFhLE9BQUE7SUFDbEMseUZBQXFJO0lBQTdILDBIQUFBLDJCQUEyQixPQUFBO0lBQUUsbUhBQUEsb0JBQW9CLE9BQUE7SUFBRSx5SEFBQSwwQkFBMEIsT0FBQTtJQUFFLGtIQUFBLG1CQUFtQixPQUFBO0lBQzFHLDZFQUFzSDtJQUF0Qyw4RkFBQSxLQUFLLE9BQUE7SUFBRSxtR0FBQSxVQUFVLE9BQUE7SUFDakcscUZBQW9EO0lBQTVDLGdIQUFBLG1CQUFtQixPQUFBIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmV4cG9ydCAqIGZyb20gJy4vc3JjL2FwaSc7XG5leHBvcnQge2FsaWFzVHJhbnNmb3JtRmFjdG9yeX0gZnJvbSAnLi9zcmMvYWxpYXMnO1xuZXhwb3J0IHtDbGFzc1JlY29yZCwgVHJhaXRDb21waWxlcn0gZnJvbSAnLi9zcmMvY29tcGlsYXRpb24nO1xuZXhwb3J0IHtkZWNsYXJhdGlvblRyYW5zZm9ybUZhY3RvcnksIER0c1RyYW5zZm9ybVJlZ2lzdHJ5LCBJdnlEZWNsYXJhdGlvbkR0c1RyYW5zZm9ybSwgUmV0dXJuVHlwZVRyYW5zZm9ybX0gZnJvbSAnLi9zcmMvZGVjbGFyYXRpb24nO1xuZXhwb3J0IHtBbmFseXplZFRyYWl0LCBFcnJvcmVkVHJhaXQsIFBlbmRpbmdUcmFpdCwgUmVzb2x2ZWRUcmFpdCwgU2tpcHBlZFRyYWl0LCBUcmFpdCwgVHJhaXRTdGF0ZX0gZnJvbSAnLi9zcmMvdHJhaXQnO1xuZXhwb3J0IHtpdnlUcmFuc2Zvcm1GYWN0b3J5fSBmcm9tICcuL3NyYy90cmFuc2Zvcm0nO1xuIl19