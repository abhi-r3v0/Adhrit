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
        define("@angular/core/schematics/migrations/undecorated-classes-with-di/find_base_classes", ["require", "exports", "typescript", "@angular/core/schematics/utils/typescript/class_declaration"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const ts = require("typescript");
    const class_declaration_1 = require("@angular/core/schematics/utils/typescript/class_declaration");
    /** Gets all base class declarations of the specified class declaration. */
    function findBaseClassDeclarations(node, typeChecker) {
        const result = [];
        let currentClass = node;
        while (currentClass) {
            const baseTypes = class_declaration_1.getBaseTypeIdentifiers(currentClass);
            if (!baseTypes || baseTypes.length !== 1) {
                break;
            }
            const symbol = typeChecker.getTypeAtLocation(baseTypes[0]).getSymbol();
            if (!symbol || !ts.isClassDeclaration(symbol.valueDeclaration)) {
                break;
            }
            result.push({ identifier: baseTypes[0], node: symbol.valueDeclaration });
            currentClass = symbol.valueDeclaration;
        }
        return result;
    }
    exports.findBaseClassDeclarations = findBaseClassDeclarations;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZmluZF9iYXNlX2NsYXNzZXMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NjaGVtYXRpY3MvbWlncmF0aW9ucy91bmRlY29yYXRlZC1jbGFzc2VzLXdpdGgtZGkvZmluZF9iYXNlX2NsYXNzZXMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7SUFFSCxpQ0FBaUM7SUFDakMsbUdBQWdGO0lBRWhGLDJFQUEyRTtJQUMzRSxTQUFnQix5QkFBeUIsQ0FBQyxJQUF5QixFQUFFLFdBQTJCO1FBQzlGLE1BQU0sTUFBTSxHQUE2RCxFQUFFLENBQUM7UUFDNUUsSUFBSSxZQUFZLEdBQUcsSUFBSSxDQUFDO1FBRXhCLE9BQU8sWUFBWSxFQUFFO1lBQ25CLE1BQU0sU0FBUyxHQUFHLDBDQUFzQixDQUFDLFlBQVksQ0FBQyxDQUFDO1lBQ3ZELElBQUksQ0FBQyxTQUFTLElBQUksU0FBUyxDQUFDLE1BQU0sS0FBSyxDQUFDLEVBQUU7Z0JBQ3hDLE1BQU07YUFDUDtZQUNELE1BQU0sTUFBTSxHQUFHLFdBQVcsQ0FBQyxpQkFBaUIsQ0FBQyxTQUFTLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxTQUFTLEVBQUUsQ0FBQztZQUN2RSxJQUFJLENBQUMsTUFBTSxJQUFJLENBQUMsRUFBRSxDQUFDLGtCQUFrQixDQUFDLE1BQU0sQ0FBQyxnQkFBZ0IsQ0FBQyxFQUFFO2dCQUM5RCxNQUFNO2FBQ1A7WUFDRCxNQUFNLENBQUMsSUFBSSxDQUFDLEVBQUMsVUFBVSxFQUFFLFNBQVMsQ0FBQyxDQUFDLENBQUMsRUFBRSxJQUFJLEVBQUUsTUFBTSxDQUFDLGdCQUFnQixFQUFDLENBQUMsQ0FBQztZQUN2RSxZQUFZLEdBQUcsTUFBTSxDQUFDLGdCQUFnQixDQUFDO1NBQ3hDO1FBQ0QsT0FBTyxNQUFNLENBQUM7SUFDaEIsQ0FBQztJQWpCRCw4REFpQkMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuaW1wb3J0IHtnZXRCYXNlVHlwZUlkZW50aWZpZXJzfSBmcm9tICcuLi8uLi91dGlscy90eXBlc2NyaXB0L2NsYXNzX2RlY2xhcmF0aW9uJztcblxuLyoqIEdldHMgYWxsIGJhc2UgY2xhc3MgZGVjbGFyYXRpb25zIG9mIHRoZSBzcGVjaWZpZWQgY2xhc3MgZGVjbGFyYXRpb24uICovXG5leHBvcnQgZnVuY3Rpb24gZmluZEJhc2VDbGFzc0RlY2xhcmF0aW9ucyhub2RlOiB0cy5DbGFzc0RlY2xhcmF0aW9uLCB0eXBlQ2hlY2tlcjogdHMuVHlwZUNoZWNrZXIpIHtcbiAgY29uc3QgcmVzdWx0OiB7aWRlbnRpZmllcjogdHMuSWRlbnRpZmllciwgbm9kZTogdHMuQ2xhc3NEZWNsYXJhdGlvbn1bXSA9IFtdO1xuICBsZXQgY3VycmVudENsYXNzID0gbm9kZTtcblxuICB3aGlsZSAoY3VycmVudENsYXNzKSB7XG4gICAgY29uc3QgYmFzZVR5cGVzID0gZ2V0QmFzZVR5cGVJZGVudGlmaWVycyhjdXJyZW50Q2xhc3MpO1xuICAgIGlmICghYmFzZVR5cGVzIHx8IGJhc2VUeXBlcy5sZW5ndGggIT09IDEpIHtcbiAgICAgIGJyZWFrO1xuICAgIH1cbiAgICBjb25zdCBzeW1ib2wgPSB0eXBlQ2hlY2tlci5nZXRUeXBlQXRMb2NhdGlvbihiYXNlVHlwZXNbMF0pLmdldFN5bWJvbCgpO1xuICAgIGlmICghc3ltYm9sIHx8ICF0cy5pc0NsYXNzRGVjbGFyYXRpb24oc3ltYm9sLnZhbHVlRGVjbGFyYXRpb24pKSB7XG4gICAgICBicmVhaztcbiAgICB9XG4gICAgcmVzdWx0LnB1c2goe2lkZW50aWZpZXI6IGJhc2VUeXBlc1swXSwgbm9kZTogc3ltYm9sLnZhbHVlRGVjbGFyYXRpb259KTtcbiAgICBjdXJyZW50Q2xhc3MgPSBzeW1ib2wudmFsdWVEZWNsYXJhdGlvbjtcbiAgfVxuICByZXR1cm4gcmVzdWx0O1xufVxuIl19