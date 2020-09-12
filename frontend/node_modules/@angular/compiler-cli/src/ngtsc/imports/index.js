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
        define("@angular/compiler-cli/src/ngtsc/imports", ["require", "exports", "@angular/compiler-cli/src/ngtsc/imports/src/alias", "@angular/compiler-cli/src/ngtsc/imports/src/core", "@angular/compiler-cli/src/ngtsc/imports/src/default", "@angular/compiler-cli/src/ngtsc/imports/src/emitter", "@angular/compiler-cli/src/ngtsc/imports/src/references", "@angular/compiler-cli/src/ngtsc/imports/src/resolver"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var alias_1 = require("@angular/compiler-cli/src/ngtsc/imports/src/alias");
    Object.defineProperty(exports, "AliasStrategy", { enumerable: true, get: function () { return alias_1.AliasStrategy; } });
    Object.defineProperty(exports, "PrivateExportAliasingHost", { enumerable: true, get: function () { return alias_1.PrivateExportAliasingHost; } });
    Object.defineProperty(exports, "UnifiedModulesAliasingHost", { enumerable: true, get: function () { return alias_1.UnifiedModulesAliasingHost; } });
    var core_1 = require("@angular/compiler-cli/src/ngtsc/imports/src/core");
    Object.defineProperty(exports, "NoopImportRewriter", { enumerable: true, get: function () { return core_1.NoopImportRewriter; } });
    Object.defineProperty(exports, "R3SymbolsImportRewriter", { enumerable: true, get: function () { return core_1.R3SymbolsImportRewriter; } });
    Object.defineProperty(exports, "validateAndRewriteCoreSymbol", { enumerable: true, get: function () { return core_1.validateAndRewriteCoreSymbol; } });
    var default_1 = require("@angular/compiler-cli/src/ngtsc/imports/src/default");
    Object.defineProperty(exports, "DefaultImportTracker", { enumerable: true, get: function () { return default_1.DefaultImportTracker; } });
    Object.defineProperty(exports, "NOOP_DEFAULT_IMPORT_RECORDER", { enumerable: true, get: function () { return default_1.NOOP_DEFAULT_IMPORT_RECORDER; } });
    var emitter_1 = require("@angular/compiler-cli/src/ngtsc/imports/src/emitter");
    Object.defineProperty(exports, "AbsoluteModuleStrategy", { enumerable: true, get: function () { return emitter_1.AbsoluteModuleStrategy; } });
    Object.defineProperty(exports, "ImportFlags", { enumerable: true, get: function () { return emitter_1.ImportFlags; } });
    Object.defineProperty(exports, "LocalIdentifierStrategy", { enumerable: true, get: function () { return emitter_1.LocalIdentifierStrategy; } });
    Object.defineProperty(exports, "LogicalProjectStrategy", { enumerable: true, get: function () { return emitter_1.LogicalProjectStrategy; } });
    Object.defineProperty(exports, "ReferenceEmitter", { enumerable: true, get: function () { return emitter_1.ReferenceEmitter; } });
    Object.defineProperty(exports, "RelativePathStrategy", { enumerable: true, get: function () { return emitter_1.RelativePathStrategy; } });
    Object.defineProperty(exports, "UnifiedModulesStrategy", { enumerable: true, get: function () { return emitter_1.UnifiedModulesStrategy; } });
    var references_1 = require("@angular/compiler-cli/src/ngtsc/imports/src/references");
    Object.defineProperty(exports, "Reference", { enumerable: true, get: function () { return references_1.Reference; } });
    var resolver_1 = require("@angular/compiler-cli/src/ngtsc/imports/src/resolver");
    Object.defineProperty(exports, "ModuleResolver", { enumerable: true, get: function () { return resolver_1.ModuleResolver; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL2ltcG9ydHMvaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7SUFFSCwyRUFBK0c7SUFBekYsc0dBQUEsYUFBYSxPQUFBO0lBQUUsa0hBQUEseUJBQXlCLE9BQUE7SUFBRSxtSEFBQSwwQkFBMEIsT0FBQTtJQUMxRix5RUFBcUg7SUFBN0YsMEdBQUEsa0JBQWtCLE9BQUE7SUFBRSwrR0FBQSx1QkFBdUIsT0FBQTtJQUFFLG9IQUFBLDRCQUE0QixPQUFBO0lBQ2pHLCtFQUF3RztJQUF6RSwrR0FBQSxvQkFBb0IsT0FBQTtJQUFFLHVIQUFBLDRCQUE0QixPQUFBO0lBQ2pGLCtFQUEwTTtJQUFsTSxpSEFBQSxzQkFBc0IsT0FBQTtJQUFFLHNHQUFBLFdBQVcsT0FBQTtJQUFFLGtIQUFBLHVCQUF1QixPQUFBO0lBQUUsaUhBQUEsc0JBQXNCLE9BQUE7SUFBeUIsMkdBQUEsZ0JBQWdCLE9BQUE7SUFBRSwrR0FBQSxvQkFBb0IsT0FBQTtJQUFFLGlIQUFBLHNCQUFzQixPQUFBO0lBRW5MLHFGQUF5RDtJQUFuQyx1R0FBQSxTQUFTLE9BQUE7SUFDL0IsaUZBQThDO0lBQXRDLDBHQUFBLGNBQWMsT0FBQSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5leHBvcnQge0FsaWFzaW5nSG9zdCwgQWxpYXNTdHJhdGVneSwgUHJpdmF0ZUV4cG9ydEFsaWFzaW5nSG9zdCwgVW5pZmllZE1vZHVsZXNBbGlhc2luZ0hvc3R9IGZyb20gJy4vc3JjL2FsaWFzJztcbmV4cG9ydCB7SW1wb3J0UmV3cml0ZXIsIE5vb3BJbXBvcnRSZXdyaXRlciwgUjNTeW1ib2xzSW1wb3J0UmV3cml0ZXIsIHZhbGlkYXRlQW5kUmV3cml0ZUNvcmVTeW1ib2x9IGZyb20gJy4vc3JjL2NvcmUnO1xuZXhwb3J0IHtEZWZhdWx0SW1wb3J0UmVjb3JkZXIsIERlZmF1bHRJbXBvcnRUcmFja2VyLCBOT09QX0RFRkFVTFRfSU1QT1JUX1JFQ09SREVSfSBmcm9tICcuL3NyYy9kZWZhdWx0JztcbmV4cG9ydCB7QWJzb2x1dGVNb2R1bGVTdHJhdGVneSwgSW1wb3J0RmxhZ3MsIExvY2FsSWRlbnRpZmllclN0cmF0ZWd5LCBMb2dpY2FsUHJvamVjdFN0cmF0ZWd5LCBSZWZlcmVuY2VFbWl0U3RyYXRlZ3ksIFJlZmVyZW5jZUVtaXR0ZXIsIFJlbGF0aXZlUGF0aFN0cmF0ZWd5LCBVbmlmaWVkTW9kdWxlc1N0cmF0ZWd5fSBmcm9tICcuL3NyYy9lbWl0dGVyJztcbmV4cG9ydCB7UmVleHBvcnR9IGZyb20gJy4vc3JjL3JlZXhwb3J0JztcbmV4cG9ydCB7T3duaW5nTW9kdWxlLCBSZWZlcmVuY2V9IGZyb20gJy4vc3JjL3JlZmVyZW5jZXMnO1xuZXhwb3J0IHtNb2R1bGVSZXNvbHZlcn0gZnJvbSAnLi9zcmMvcmVzb2x2ZXInO1xuIl19