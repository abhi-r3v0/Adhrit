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
        define("@angular/compiler-cli/src/ngtsc/scope/src/api", ["require", "exports"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXBpLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tcGlsZXItY2xpL3NyYy9uZ3RzYy9zY29wZS9zcmMvYXBpLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0RpcmVjdGl2ZU1ldGEsIFBpcGVNZXRhfSBmcm9tICcuLi8uLi9tZXRhZGF0YSc7XG5pbXBvcnQge0NsYXNzRGVjbGFyYXRpb259IGZyb20gJy4uLy4uL3JlZmxlY3Rpb24nO1xuXG5cbi8qKlxuICogRGF0YSBmb3Igb25lIG9mIGEgZ2l2ZW4gTmdNb2R1bGUncyBzY29wZXMgKGVpdGhlciBjb21waWxhdGlvbiBzY29wZSBvciBleHBvcnQgc2NvcGVzKS5cbiAqL1xuZXhwb3J0IGludGVyZmFjZSBTY29wZURhdGEge1xuICAvKipcbiAgICogRGlyZWN0aXZlcyBpbiB0aGUgZXhwb3J0ZWQgc2NvcGUgb2YgdGhlIG1vZHVsZS5cbiAgICovXG4gIGRpcmVjdGl2ZXM6IERpcmVjdGl2ZU1ldGFbXTtcblxuICAvKipcbiAgICogUGlwZXMgaW4gdGhlIGV4cG9ydGVkIHNjb3BlIG9mIHRoZSBtb2R1bGUuXG4gICAqL1xuICBwaXBlczogUGlwZU1ldGFbXTtcblxuICAvKipcbiAgICogTmdNb2R1bGVzIHdoaWNoIGNvbnRyaWJ1dGVkIHRvIHRoZSBzY29wZSBvZiB0aGUgbW9kdWxlLlxuICAgKi9cbiAgbmdNb2R1bGVzOiBDbGFzc0RlY2xhcmF0aW9uW107XG59XG5cbi8qKlxuICogQW4gZXhwb3J0IHNjb3BlIG9mIGFuIE5nTW9kdWxlLCBjb250YWluaW5nIHRoZSBkaXJlY3RpdmVzL3BpcGVzIGl0IGNvbnRyaWJ1dGVzIHRvIG90aGVyIE5nTW9kdWxlc1xuICogd2hpY2ggaW1wb3J0IGl0LlxuICovXG5leHBvcnQgaW50ZXJmYWNlIEV4cG9ydFNjb3BlIHtcbiAgLyoqXG4gICAqIFRoZSBzY29wZSBleHBvcnRlZCBieSBhbiBOZ01vZHVsZSwgYW5kIGF2YWlsYWJsZSBmb3IgaW1wb3J0LlxuICAgKi9cbiAgZXhwb3J0ZWQ6IFNjb3BlRGF0YTtcbn1cbiJdfQ==