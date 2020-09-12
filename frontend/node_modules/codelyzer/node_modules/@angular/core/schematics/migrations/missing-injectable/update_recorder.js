/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
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
        define("@angular/core/schematics/migrations/missing-injectable/update_recorder", ["require", "exports"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXBkYXRlX3JlY29yZGVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zY2hlbWF0aWNzL21pZ3JhdGlvbnMvbWlzc2luZy1pbmplY3RhYmxlL3VwZGF0ZV9yZWNvcmRlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUciLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuXG4vKipcbiAqIFVwZGF0ZSByZWNvcmRlciBpbnRlcmZhY2UgdGhhdCBpcyB1c2VkIHRvIHRyYW5zZm9ybSBzb3VyY2UgZmlsZXMgaW4gYSBub24tY29sbGlkaW5nXG4gKiB3YXkuIEFsc28gdGhpcyBpbmRpcmVjdGlvbiBtYWtlcyBpdCBwb3NzaWJsZSB0byByZS11c2UgbG9naWMgZm9yIGJvdGggVFNMaW50IHJ1bGVzXG4gKiBhbmQgQ0xJIGRldmtpdCBzY2hlbWF0aWMgdXBkYXRlcy5cbiAqL1xuZXhwb3J0IGludGVyZmFjZSBVcGRhdGVSZWNvcmRlciB7XG4gIGFkZE5ld0ltcG9ydChzdGFydDogbnVtYmVyLCBpbXBvcnRUZXh0OiBzdHJpbmcpOiB2b2lkO1xuICB1cGRhdGVFeGlzdGluZ0ltcG9ydChuYW1lZEJpbmRpbmdzOiB0cy5OYW1lZEltcG9ydHMsIG5ld05hbWVkQmluZGluZ3M6IHN0cmluZyk6IHZvaWQ7XG4gIGFkZENsYXNzRGVjb3JhdG9yKG5vZGU6IHRzLkNsYXNzRGVjbGFyYXRpb24sIHRleHQ6IHN0cmluZywgY2xhc3NOYW1lOiBzdHJpbmcpOiB2b2lkO1xuICByZXBsYWNlRGVjb3JhdG9yKG5vZGU6IHRzLkRlY29yYXRvciwgbmV3VGV4dDogc3RyaW5nLCBjbGFzc05hbWU6IHN0cmluZyk6IHZvaWQ7XG4gIHVwZGF0ZU9iamVjdExpdGVyYWwobm9kZTogdHMuT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24sIG5ld1RleHQ6IHN0cmluZyk6IHZvaWQ7XG4gIGNvbW1pdFVwZGF0ZSgpOiB2b2lkO1xufVxuIl19