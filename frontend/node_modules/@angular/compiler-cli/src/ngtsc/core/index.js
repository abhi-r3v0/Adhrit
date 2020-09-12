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
        define("@angular/compiler-cli/src/ngtsc/core", ["require", "exports", "@angular/compiler-cli/src/ngtsc/core/src/compiler", "@angular/compiler-cli/src/ngtsc/core/src/host"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var compiler_1 = require("@angular/compiler-cli/src/ngtsc/core/src/compiler");
    Object.defineProperty(exports, "NgCompiler", { enumerable: true, get: function () { return compiler_1.NgCompiler; } });
    var host_1 = require("@angular/compiler-cli/src/ngtsc/core/src/host");
    Object.defineProperty(exports, "NgCompilerHost", { enumerable: true, get: function () { return host_1.NgCompilerHost; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL2NvcmUvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7SUFFSCw4RUFBMEM7SUFBbEMsc0dBQUEsVUFBVSxPQUFBO0lBQ2xCLHNFQUEwQztJQUFsQyxzR0FBQSxjQUFjLE9BQUEiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuZXhwb3J0IHtOZ0NvbXBpbGVyfSBmcm9tICcuL3NyYy9jb21waWxlcic7XG5leHBvcnQge05nQ29tcGlsZXJIb3N0fSBmcm9tICcuL3NyYy9ob3N0JztcbiJdfQ==