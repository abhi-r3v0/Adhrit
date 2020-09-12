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
        define("@angular/compiler-cli/src/ngtsc/typecheck/src/shim", ["require", "exports", "typescript", "@angular/compiler-cli/src/ngtsc/file_system"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.TypeCheckShimGenerator = void 0;
    var ts = require("typescript");
    var file_system_1 = require("@angular/compiler-cli/src/ngtsc/file_system");
    /**
     * A `ShimGenerator` which adds type-checking files to the `ts.Program`.
     *
     * This is a requirement for performant template type-checking, as TypeScript will only reuse
     * information in the main program when creating the type-checking program if the set of files in
     * each are exactly the same. Thus, the main program also needs the synthetic type-checking files.
     */
    var TypeCheckShimGenerator = /** @class */ (function () {
        function TypeCheckShimGenerator() {
            this.extensionPrefix = 'ngtypecheck';
            this.shouldEmit = false;
        }
        TypeCheckShimGenerator.prototype.generateShimForFile = function (sf, genFilePath, priorShimSf) {
            if (priorShimSf !== null) {
                // If this shim existed in the previous program, reuse it now. It might not be correct, but
                // reusing it in the main program allows the shape of its imports to potentially remain the
                // same and TS can then use the fastest path for incremental program creation. Later during
                // the type-checking phase it's going to either be reused, or replaced anyways. Thus there's
                // no harm in reuse here even if it's out of date.
                return priorShimSf;
            }
            return ts.createSourceFile(genFilePath, 'export const USED_FOR_NG_TYPE_CHECKING = true;', ts.ScriptTarget.Latest, true, ts.ScriptKind.TS);
        };
        TypeCheckShimGenerator.shimFor = function (fileName) {
            return file_system_1.absoluteFrom(fileName.replace(/\.tsx?$/, '.ngtypecheck.ts'));
        };
        return TypeCheckShimGenerator;
    }());
    exports.TypeCheckShimGenerator = TypeCheckShimGenerator;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic2hpbS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvdHlwZWNoZWNrL3NyYy9zaGltLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQUVILCtCQUFpQztJQUVqQywyRUFBcUY7SUFHckY7Ozs7OztPQU1HO0lBQ0g7UUFBQTtZQUNXLG9CQUFlLEdBQUcsYUFBYSxDQUFDO1lBQ2hDLGVBQVUsR0FBRyxLQUFLLENBQUM7UUFxQjlCLENBQUM7UUFuQkMsb0RBQW1CLEdBQW5CLFVBQ0ksRUFBaUIsRUFBRSxXQUEyQixFQUM5QyxXQUErQjtZQUNqQyxJQUFJLFdBQVcsS0FBSyxJQUFJLEVBQUU7Z0JBQ3hCLDJGQUEyRjtnQkFDM0YsMkZBQTJGO2dCQUMzRiwyRkFBMkY7Z0JBQzNGLDRGQUE0RjtnQkFDNUYsa0RBQWtEO2dCQUNsRCxPQUFPLFdBQVcsQ0FBQzthQUNwQjtZQUNELE9BQU8sRUFBRSxDQUFDLGdCQUFnQixDQUN0QixXQUFXLEVBQUUsZ0RBQWdELEVBQUUsRUFBRSxDQUFDLFlBQVksQ0FBQyxNQUFNLEVBQUUsSUFBSSxFQUMzRixFQUFFLENBQUMsVUFBVSxDQUFDLEVBQUUsQ0FBQyxDQUFDO1FBQ3hCLENBQUM7UUFFTSw4QkFBTyxHQUFkLFVBQWUsUUFBd0I7WUFDckMsT0FBTywwQkFBWSxDQUFDLFFBQVEsQ0FBQyxPQUFPLENBQUMsU0FBUyxFQUFFLGlCQUFpQixDQUFDLENBQUMsQ0FBQztRQUN0RSxDQUFDO1FBQ0gsNkJBQUM7SUFBRCxDQUFDLEFBdkJELElBdUJDO0lBdkJZLHdEQUFzQiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHthYnNvbHV0ZUZyb20sIEFic29sdXRlRnNQYXRoLCBnZXRTb3VyY2VGaWxlT3JFcnJvcn0gZnJvbSAnLi4vLi4vZmlsZV9zeXN0ZW0nO1xuaW1wb3J0IHtQZXJGaWxlU2hpbUdlbmVyYXRvciwgVG9wTGV2ZWxTaGltR2VuZXJhdG9yfSBmcm9tICcuLi8uLi9zaGltcy9hcGknO1xuXG4vKipcbiAqIEEgYFNoaW1HZW5lcmF0b3JgIHdoaWNoIGFkZHMgdHlwZS1jaGVja2luZyBmaWxlcyB0byB0aGUgYHRzLlByb2dyYW1gLlxuICpcbiAqIFRoaXMgaXMgYSByZXF1aXJlbWVudCBmb3IgcGVyZm9ybWFudCB0ZW1wbGF0ZSB0eXBlLWNoZWNraW5nLCBhcyBUeXBlU2NyaXB0IHdpbGwgb25seSByZXVzZVxuICogaW5mb3JtYXRpb24gaW4gdGhlIG1haW4gcHJvZ3JhbSB3aGVuIGNyZWF0aW5nIHRoZSB0eXBlLWNoZWNraW5nIHByb2dyYW0gaWYgdGhlIHNldCBvZiBmaWxlcyBpblxuICogZWFjaCBhcmUgZXhhY3RseSB0aGUgc2FtZS4gVGh1cywgdGhlIG1haW4gcHJvZ3JhbSBhbHNvIG5lZWRzIHRoZSBzeW50aGV0aWMgdHlwZS1jaGVja2luZyBmaWxlcy5cbiAqL1xuZXhwb3J0IGNsYXNzIFR5cGVDaGVja1NoaW1HZW5lcmF0b3IgaW1wbGVtZW50cyBQZXJGaWxlU2hpbUdlbmVyYXRvciB7XG4gIHJlYWRvbmx5IGV4dGVuc2lvblByZWZpeCA9ICduZ3R5cGVjaGVjayc7XG4gIHJlYWRvbmx5IHNob3VsZEVtaXQgPSBmYWxzZTtcblxuICBnZW5lcmF0ZVNoaW1Gb3JGaWxlKFxuICAgICAgc2Y6IHRzLlNvdXJjZUZpbGUsIGdlbkZpbGVQYXRoOiBBYnNvbHV0ZUZzUGF0aCxcbiAgICAgIHByaW9yU2hpbVNmOiB0cy5Tb3VyY2VGaWxlfG51bGwpOiB0cy5Tb3VyY2VGaWxlIHtcbiAgICBpZiAocHJpb3JTaGltU2YgIT09IG51bGwpIHtcbiAgICAgIC8vIElmIHRoaXMgc2hpbSBleGlzdGVkIGluIHRoZSBwcmV2aW91cyBwcm9ncmFtLCByZXVzZSBpdCBub3cuIEl0IG1pZ2h0IG5vdCBiZSBjb3JyZWN0LCBidXRcbiAgICAgIC8vIHJldXNpbmcgaXQgaW4gdGhlIG1haW4gcHJvZ3JhbSBhbGxvd3MgdGhlIHNoYXBlIG9mIGl0cyBpbXBvcnRzIHRvIHBvdGVudGlhbGx5IHJlbWFpbiB0aGVcbiAgICAgIC8vIHNhbWUgYW5kIFRTIGNhbiB0aGVuIHVzZSB0aGUgZmFzdGVzdCBwYXRoIGZvciBpbmNyZW1lbnRhbCBwcm9ncmFtIGNyZWF0aW9uLiBMYXRlciBkdXJpbmdcbiAgICAgIC8vIHRoZSB0eXBlLWNoZWNraW5nIHBoYXNlIGl0J3MgZ29pbmcgdG8gZWl0aGVyIGJlIHJldXNlZCwgb3IgcmVwbGFjZWQgYW55d2F5cy4gVGh1cyB0aGVyZSdzXG4gICAgICAvLyBubyBoYXJtIGluIHJldXNlIGhlcmUgZXZlbiBpZiBpdCdzIG91dCBvZiBkYXRlLlxuICAgICAgcmV0dXJuIHByaW9yU2hpbVNmO1xuICAgIH1cbiAgICByZXR1cm4gdHMuY3JlYXRlU291cmNlRmlsZShcbiAgICAgICAgZ2VuRmlsZVBhdGgsICdleHBvcnQgY29uc3QgVVNFRF9GT1JfTkdfVFlQRV9DSEVDS0lORyA9IHRydWU7JywgdHMuU2NyaXB0VGFyZ2V0LkxhdGVzdCwgdHJ1ZSxcbiAgICAgICAgdHMuU2NyaXB0S2luZC5UUyk7XG4gIH1cblxuICBzdGF0aWMgc2hpbUZvcihmaWxlTmFtZTogQWJzb2x1dGVGc1BhdGgpOiBBYnNvbHV0ZUZzUGF0aCB7XG4gICAgcmV0dXJuIGFic29sdXRlRnJvbShmaWxlTmFtZS5yZXBsYWNlKC9cXC50c3g/JC8sICcubmd0eXBlY2hlY2sudHMnKSk7XG4gIH1cbn1cbiJdfQ==