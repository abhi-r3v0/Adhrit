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
        define("@angular/compiler-cli/src/transformers/entry_points", ["require", "exports", "@angular/compiler-cli/src/transformers/compiler_host", "@angular/compiler-cli/src/transformers/program"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var compiler_host_1 = require("@angular/compiler-cli/src/transformers/compiler_host");
    Object.defineProperty(exports, "createCompilerHost", { enumerable: true, get: function () { return compiler_host_1.createCompilerHost; } });
    var program_1 = require("@angular/compiler-cli/src/transformers/program");
    Object.defineProperty(exports, "createProgram", { enumerable: true, get: function () { return program_1.createProgram; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZW50cnlfcG9pbnRzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy90cmFuc2Zvcm1lcnMvZW50cnlfcG9pbnRzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7O0lBTUgsc0ZBQW1EO0lBQTNDLG1IQUFBLGtCQUFrQixPQUFBO0lBQzFCLDBFQUF3QztJQUFoQyx3R0FBQSxhQUFhLE9BQUEiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7Q29tcGlsZXJIb3N0LCBDb21waWxlck9wdGlvbnMsIFByb2dyYW19IGZyb20gJy4vYXBpJztcblxuZXhwb3J0IHtjcmVhdGVDb21waWxlckhvc3R9IGZyb20gJy4vY29tcGlsZXJfaG9zdCc7XG5leHBvcnQge2NyZWF0ZVByb2dyYW19IGZyb20gJy4vcHJvZ3JhbSc7XG4iXX0=