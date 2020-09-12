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
        define("@angular/compiler-cli/src/ngtsc/scope", ["require", "exports", "@angular/compiler-cli/src/ngtsc/scope/src/component_scope", "@angular/compiler-cli/src/ngtsc/scope/src/dependency", "@angular/compiler-cli/src/ngtsc/scope/src/local"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var component_scope_1 = require("@angular/compiler-cli/src/ngtsc/scope/src/component_scope");
    Object.defineProperty(exports, "CompoundComponentScopeReader", { enumerable: true, get: function () { return component_scope_1.CompoundComponentScopeReader; } });
    var dependency_1 = require("@angular/compiler-cli/src/ngtsc/scope/src/dependency");
    Object.defineProperty(exports, "MetadataDtsModuleScopeResolver", { enumerable: true, get: function () { return dependency_1.MetadataDtsModuleScopeResolver; } });
    var local_1 = require("@angular/compiler-cli/src/ngtsc/scope/src/local");
    Object.defineProperty(exports, "LocalModuleScopeRegistry", { enumerable: true, get: function () { return local_1.LocalModuleScopeRegistry; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3Njb3BlL2luZGV4LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7O0lBR0gsNkZBQXlGO0lBQTNELCtIQUFBLDRCQUE0QixPQUFBO0lBQzFELG1GQUF3RjtJQUF4RCw0SEFBQSw4QkFBOEIsT0FBQTtJQUM5RCx5RUFBMkc7SUFBaEUsaUhBQUEsd0JBQXdCLE9BQUEiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuZXhwb3J0IHtFeHBvcnRTY29wZSwgU2NvcGVEYXRhfSBmcm9tICcuL3NyYy9hcGknO1xuZXhwb3J0IHtDb21wb25lbnRTY29wZVJlYWRlciwgQ29tcG91bmRDb21wb25lbnRTY29wZVJlYWRlcn0gZnJvbSAnLi9zcmMvY29tcG9uZW50X3Njb3BlJztcbmV4cG9ydCB7RHRzTW9kdWxlU2NvcGVSZXNvbHZlciwgTWV0YWRhdGFEdHNNb2R1bGVTY29wZVJlc29sdmVyfSBmcm9tICcuL3NyYy9kZXBlbmRlbmN5JztcbmV4cG9ydCB7RGVjbGFyYXRpb25EYXRhLCBMb2NhbE1vZHVsZVNjb3BlLCBMb2NhbE1vZHVsZVNjb3BlUmVnaXN0cnksIExvY2FsTmdNb2R1bGVEYXRhfSBmcm9tICcuL3NyYy9sb2NhbCc7XG4iXX0=