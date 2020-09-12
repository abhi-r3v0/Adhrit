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
        define("@angular/compiler-cli/src/ngtsc/incremental/src/noop", ["require", "exports"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.NOOP_INCREMENTAL_BUILD = void 0;
    exports.NOOP_INCREMENTAL_BUILD = {
        priorWorkFor: function () { return null; },
        priorTypeCheckingResultsFor: function () { return null; },
        recordSuccessfulTypeCheck: function () { },
    };
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibm9vcC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvaW5jcmVtZW50YWwvc3JjL25vb3AudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7O0lBSVUsUUFBQSxzQkFBc0IsR0FBK0I7UUFDaEUsWUFBWSxFQUFFLGNBQU0sT0FBQSxJQUFJLEVBQUosQ0FBSTtRQUN4QiwyQkFBMkIsRUFBRSxjQUFNLE9BQUEsSUFBSSxFQUFKLENBQUk7UUFDdkMseUJBQXlCLEVBQUUsY0FBTyxDQUFDO0tBQ3BDLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtJbmNyZW1lbnRhbEJ1aWxkfSBmcm9tICcuLi9hcGknO1xuXG5leHBvcnQgY29uc3QgTk9PUF9JTkNSRU1FTlRBTF9CVUlMRDogSW5jcmVtZW50YWxCdWlsZDxhbnksIGFueT4gPSB7XG4gIHByaW9yV29ya0ZvcjogKCkgPT4gbnVsbCxcbiAgcHJpb3JUeXBlQ2hlY2tpbmdSZXN1bHRzRm9yOiAoKSA9PiBudWxsLFxuICByZWNvcmRTdWNjZXNzZnVsVHlwZUNoZWNrOiAoKSA9PiB7fSxcbn07XG4iXX0=