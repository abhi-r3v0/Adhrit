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
        define("@angular/compiler-cli/src/ngtsc/shims", ["require", "exports", "@angular/compiler-cli/src/ngtsc/shims/src/adapter", "@angular/compiler-cli/src/ngtsc/shims/src/expando", "@angular/compiler-cli/src/ngtsc/shims/src/factory_generator", "@angular/compiler-cli/src/ngtsc/shims/src/reference_tagger", "@angular/compiler-cli/src/ngtsc/shims/src/summary_generator"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    /// <reference types="node" />
    var adapter_1 = require("@angular/compiler-cli/src/ngtsc/shims/src/adapter");
    Object.defineProperty(exports, "ShimAdapter", { enumerable: true, get: function () { return adapter_1.ShimAdapter; } });
    var expando_1 = require("@angular/compiler-cli/src/ngtsc/shims/src/expando");
    Object.defineProperty(exports, "copyFileShimData", { enumerable: true, get: function () { return expando_1.copyFileShimData; } });
    Object.defineProperty(exports, "isShim", { enumerable: true, get: function () { return expando_1.isShim; } });
    Object.defineProperty(exports, "retagAllTsFiles", { enumerable: true, get: function () { return expando_1.retagAllTsFiles; } });
    Object.defineProperty(exports, "retagTsFile", { enumerable: true, get: function () { return expando_1.retagTsFile; } });
    Object.defineProperty(exports, "sfExtensionData", { enumerable: true, get: function () { return expando_1.sfExtensionData; } });
    Object.defineProperty(exports, "untagAllTsFiles", { enumerable: true, get: function () { return expando_1.untagAllTsFiles; } });
    Object.defineProperty(exports, "untagTsFile", { enumerable: true, get: function () { return expando_1.untagTsFile; } });
    var factory_generator_1 = require("@angular/compiler-cli/src/ngtsc/shims/src/factory_generator");
    Object.defineProperty(exports, "FactoryGenerator", { enumerable: true, get: function () { return factory_generator_1.FactoryGenerator; } });
    Object.defineProperty(exports, "generatedFactoryTransform", { enumerable: true, get: function () { return factory_generator_1.generatedFactoryTransform; } });
    var reference_tagger_1 = require("@angular/compiler-cli/src/ngtsc/shims/src/reference_tagger");
    Object.defineProperty(exports, "ShimReferenceTagger", { enumerable: true, get: function () { return reference_tagger_1.ShimReferenceTagger; } });
    var summary_generator_1 = require("@angular/compiler-cli/src/ngtsc/shims/src/summary_generator");
    Object.defineProperty(exports, "SummaryGenerator", { enumerable: true, get: function () { return summary_generator_1.SummaryGenerator; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3NoaW1zL2luZGV4LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7O0lBRUgsOEJBQThCO0lBRTlCLDZFQUEwQztJQUFsQyxzR0FBQSxXQUFXLE9BQUE7SUFDbkIsNkVBQW9JO0lBQTVILDJHQUFBLGdCQUFnQixPQUFBO0lBQUUsaUdBQUEsTUFBTSxPQUFBO0lBQUUsMEdBQUEsZUFBZSxPQUFBO0lBQUUsc0dBQUEsV0FBVyxPQUFBO0lBQUUsMEdBQUEsZUFBZSxPQUFBO0lBQUUsMEdBQUEsZUFBZSxPQUFBO0lBQUUsc0dBQUEsV0FBVyxPQUFBO0lBQzdHLGlHQUFvRjtJQUE1RSxxSEFBQSxnQkFBZ0IsT0FBQTtJQUFFLDhIQUFBLHlCQUF5QixPQUFBO0lBQ25ELCtGQUEyRDtJQUFuRCx1SEFBQSxtQkFBbUIsT0FBQTtJQUMzQixpR0FBeUQ7SUFBakQscUhBQUEsZ0JBQWdCLE9BQUEiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuLy8vIDxyZWZlcmVuY2UgdHlwZXM9XCJub2RlXCIgLz5cblxuZXhwb3J0IHtTaGltQWRhcHRlcn0gZnJvbSAnLi9zcmMvYWRhcHRlcic7XG5leHBvcnQge2NvcHlGaWxlU2hpbURhdGEsIGlzU2hpbSwgcmV0YWdBbGxUc0ZpbGVzLCByZXRhZ1RzRmlsZSwgc2ZFeHRlbnNpb25EYXRhLCB1bnRhZ0FsbFRzRmlsZXMsIHVudGFnVHNGaWxlfSBmcm9tICcuL3NyYy9leHBhbmRvJztcbmV4cG9ydCB7RmFjdG9yeUdlbmVyYXRvciwgZ2VuZXJhdGVkRmFjdG9yeVRyYW5zZm9ybX0gZnJvbSAnLi9zcmMvZmFjdG9yeV9nZW5lcmF0b3InO1xuZXhwb3J0IHtTaGltUmVmZXJlbmNlVGFnZ2VyfSBmcm9tICcuL3NyYy9yZWZlcmVuY2VfdGFnZ2VyJztcbmV4cG9ydCB7U3VtbWFyeUdlbmVyYXRvcn0gZnJvbSAnLi9zcmMvc3VtbWFyeV9nZW5lcmF0b3InO1xuIl19