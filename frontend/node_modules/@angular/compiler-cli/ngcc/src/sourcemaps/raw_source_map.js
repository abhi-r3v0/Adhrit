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
        define("@angular/compiler-cli/ngcc/src/sourcemaps/raw_source_map", ["require", "exports"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicmF3X3NvdXJjZV9tYXAuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvc291cmNlbWFwcy9yYXdfc291cmNlX21hcC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUciLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuLyoqXG4gKiBUaGlzIGludGVyZmFjZSBpcyB0aGUgYmFzaWMgc3RydWN0dXJlIG9mIHRoZSBKU09OIGluIGEgcmF3IHNvdXJjZSBtYXAgdGhhdCBvbmUgbWlnaHQgbG9hZCBmcm9tXG4gKiBkaXNrLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIFJhd1NvdXJjZU1hcCB7XG4gIHZlcnNpb246IG51bWJlcnxzdHJpbmc7XG4gIGZpbGU/OiBzdHJpbmc7XG4gIHNvdXJjZVJvb3Q/OiBzdHJpbmc7XG4gIHNvdXJjZXM6IHN0cmluZ1tdO1xuICBuYW1lczogc3RyaW5nW107XG4gIHNvdXJjZXNDb250ZW50PzogKHN0cmluZ3xudWxsKVtdO1xuICBtYXBwaW5nczogc3RyaW5nO1xufVxuIl19