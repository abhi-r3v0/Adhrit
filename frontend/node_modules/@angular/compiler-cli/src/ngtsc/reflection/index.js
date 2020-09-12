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
        define("@angular/compiler-cli/src/ngtsc/reflection", ["require", "exports", "tslib", "@angular/compiler-cli/src/ngtsc/reflection/src/host", "@angular/compiler-cli/src/ngtsc/reflection/src/type_to_value", "@angular/compiler-cli/src/ngtsc/reflection/src/typescript", "@angular/compiler-cli/src/ngtsc/reflection/src/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    tslib_1.__exportStar(require("@angular/compiler-cli/src/ngtsc/reflection/src/host"), exports);
    var type_to_value_1 = require("@angular/compiler-cli/src/ngtsc/reflection/src/type_to_value");
    Object.defineProperty(exports, "typeNodeToValueExpr", { enumerable: true, get: function () { return type_to_value_1.typeNodeToValueExpr; } });
    var typescript_1 = require("@angular/compiler-cli/src/ngtsc/reflection/src/typescript");
    Object.defineProperty(exports, "TypeScriptReflectionHost", { enumerable: true, get: function () { return typescript_1.TypeScriptReflectionHost; } });
    Object.defineProperty(exports, "filterToMembersWithDecorator", { enumerable: true, get: function () { return typescript_1.filterToMembersWithDecorator; } });
    Object.defineProperty(exports, "reflectIdentifierOfDeclaration", { enumerable: true, get: function () { return typescript_1.reflectIdentifierOfDeclaration; } });
    Object.defineProperty(exports, "reflectNameOfDeclaration", { enumerable: true, get: function () { return typescript_1.reflectNameOfDeclaration; } });
    Object.defineProperty(exports, "reflectObjectLiteral", { enumerable: true, get: function () { return typescript_1.reflectObjectLiteral; } });
    Object.defineProperty(exports, "reflectTypeEntityToDeclaration", { enumerable: true, get: function () { return typescript_1.reflectTypeEntityToDeclaration; } });
    var util_1 = require("@angular/compiler-cli/src/ngtsc/reflection/src/util");
    Object.defineProperty(exports, "isNamedClassDeclaration", { enumerable: true, get: function () { return util_1.isNamedClassDeclaration; } });
    Object.defineProperty(exports, "isNamedFunctionDeclaration", { enumerable: true, get: function () { return util_1.isNamedFunctionDeclaration; } });
    Object.defineProperty(exports, "isNamedVariableDeclaration", { enumerable: true, get: function () { return util_1.isNamedVariableDeclaration; } });
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3JlZmxlY3Rpb24vaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7O0lBRUgsOEZBQTJCO0lBQzNCLDhGQUF3RDtJQUFoRCxvSEFBQSxtQkFBbUIsT0FBQTtJQUMzQix3RkFBd007SUFBaE0sc0hBQUEsd0JBQXdCLE9BQUE7SUFBRSwwSEFBQSw0QkFBNEIsT0FBQTtJQUFFLDRIQUFBLDhCQUE4QixPQUFBO0lBQUUsc0hBQUEsd0JBQXdCLE9BQUE7SUFBRSxrSEFBQSxvQkFBb0IsT0FBQTtJQUFFLDRIQUFBLDhCQUE4QixPQUFBO0lBQzlLLDRFQUEyRztJQUFuRywrR0FBQSx1QkFBdUIsT0FBQTtJQUFFLGtIQUFBLDBCQUEwQixPQUFBO0lBQUUsa0hBQUEsMEJBQTBCLE9BQUEiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuZXhwb3J0ICogZnJvbSAnLi9zcmMvaG9zdCc7XG5leHBvcnQge3R5cGVOb2RlVG9WYWx1ZUV4cHJ9IGZyb20gJy4vc3JjL3R5cGVfdG9fdmFsdWUnO1xuZXhwb3J0IHtUeXBlU2NyaXB0UmVmbGVjdGlvbkhvc3QsIGZpbHRlclRvTWVtYmVyc1dpdGhEZWNvcmF0b3IsIHJlZmxlY3RJZGVudGlmaWVyT2ZEZWNsYXJhdGlvbiwgcmVmbGVjdE5hbWVPZkRlY2xhcmF0aW9uLCByZWZsZWN0T2JqZWN0TGl0ZXJhbCwgcmVmbGVjdFR5cGVFbnRpdHlUb0RlY2xhcmF0aW9ufSBmcm9tICcuL3NyYy90eXBlc2NyaXB0JztcbmV4cG9ydCB7aXNOYW1lZENsYXNzRGVjbGFyYXRpb24sIGlzTmFtZWRGdW5jdGlvbkRlY2xhcmF0aW9uLCBpc05hbWVkVmFyaWFibGVEZWNsYXJhdGlvbn0gZnJvbSAnLi9zcmMvdXRpbCc7XG4iXX0=