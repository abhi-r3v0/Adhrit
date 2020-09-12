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
        define("@angular/compiler-cli/src/ngtsc/perf/src/clock", ["require", "exports"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.timeSinceInMicros = exports.mark = void 0;
    function mark() {
        return process.hrtime();
    }
    exports.mark = mark;
    function timeSinceInMicros(mark) {
        var delta = process.hrtime(mark);
        return (delta[0] * 1000000) + Math.floor(delta[1] / 1000);
    }
    exports.timeSinceInMicros = timeSinceInMicros;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY2xvY2suanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3BlcmYvc3JjL2Nsb2NrLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQU9ILFNBQWdCLElBQUk7UUFDbEIsT0FBTyxPQUFPLENBQUMsTUFBTSxFQUFFLENBQUM7SUFDMUIsQ0FBQztJQUZELG9CQUVDO0lBRUQsU0FBZ0IsaUJBQWlCLENBQUMsSUFBWTtRQUM1QyxJQUFNLEtBQUssR0FBRyxPQUFPLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQ25DLE9BQU8sQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLEdBQUcsT0FBTyxDQUFDLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLEdBQUcsSUFBSSxDQUFDLENBQUM7SUFDNUQsQ0FBQztJQUhELDhDQUdDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbi8vIFRoaXMgZmlsZSB1c2VzICdwcm9jZXNzJ1xuLy8vIDxyZWZlcmVuY2UgdHlwZXM9XCJub2RlXCIgLz5cblxuZXhwb3J0IHR5cGUgSHJUaW1lID0gW251bWJlciwgbnVtYmVyXTtcblxuZXhwb3J0IGZ1bmN0aW9uIG1hcmsoKTogSHJUaW1lIHtcbiAgcmV0dXJuIHByb2Nlc3MuaHJ0aW1lKCk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiB0aW1lU2luY2VJbk1pY3JvcyhtYXJrOiBIclRpbWUpOiBudW1iZXIge1xuICBjb25zdCBkZWx0YSA9IHByb2Nlc3MuaHJ0aW1lKG1hcmspO1xuICByZXR1cm4gKGRlbHRhWzBdICogMTAwMDAwMCkgKyBNYXRoLmZsb29yKGRlbHRhWzFdIC8gMTAwMCk7XG59XG4iXX0=