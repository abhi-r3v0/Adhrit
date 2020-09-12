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
        define("@angular/compiler-cli/src/ngtsc/translator", ["require", "exports", "@angular/compiler-cli/src/ngtsc/translator/src/translator"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var translator_1 = require("@angular/compiler-cli/src/ngtsc/translator/src/translator");
    Object.defineProperty(exports, "ImportManager", { enumerable: true, get: function () { return translator_1.ImportManager; } });
    Object.defineProperty(exports, "translateExpression", { enumerable: true, get: function () { return translator_1.translateExpression; } });
    Object.defineProperty(exports, "translateStatement", { enumerable: true, get: function () { return translator_1.translateStatement; } });
    Object.defineProperty(exports, "translateType", { enumerable: true, get: function () { return translator_1.translateType; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3RyYW5zbGF0b3IvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7SUFFSCx3RkFBNEg7SUFBNUcsMkdBQUEsYUFBYSxPQUFBO0lBQWUsaUhBQUEsbUJBQW1CLE9BQUE7SUFBRSxnSEFBQSxrQkFBa0IsT0FBQTtJQUFFLDJHQUFBLGFBQWEsT0FBQSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5leHBvcnQge0ltcG9ydCwgSW1wb3J0TWFuYWdlciwgTmFtZWRJbXBvcnQsIHRyYW5zbGF0ZUV4cHJlc3Npb24sIHRyYW5zbGF0ZVN0YXRlbWVudCwgdHJhbnNsYXRlVHlwZX0gZnJvbSAnLi9zcmMvdHJhbnNsYXRvcic7XG4iXX0=