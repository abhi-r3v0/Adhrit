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
        define("@angular/core/schematics/migrations/undecorated-classes-with-decorated-fields/utils", ["require", "exports", "typescript", "@angular/core/schematics/utils/ng_decorators"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    const ts = require("typescript");
    const ng_decorators_1 = require("@angular/core/schematics/utils/ng_decorators");
    /** Name of the decorator that should be added to undecorated classes. */
    exports.FALLBACK_DECORATOR = 'Directive';
    /** Finds all of the undecorated classes that have decorated fields within a file. */
    function getUndecoratedClassesWithDecoratedFields(sourceFile, typeChecker) {
        const classes = [];
        sourceFile.forEachChild(function walk(node) {
            if (ts.isClassDeclaration(node) &&
                (!node.decorators || !ng_decorators_1.getAngularDecorators(typeChecker, node.decorators).length)) {
                for (const member of node.members) {
                    const angularDecorators = member.decorators && ng_decorators_1.getAngularDecorators(typeChecker, member.decorators);
                    if (angularDecorators && angularDecorators.length) {
                        classes.push({ classDeclaration: node, importDeclaration: angularDecorators[0].importNode });
                        return;
                    }
                }
            }
            node.forEachChild(walk);
        });
        return classes;
    }
    exports.getUndecoratedClassesWithDecoratedFields = getUndecoratedClassesWithDecoratedFields;
    /** Checks whether an import declaration has an import with a certain name. */
    function hasNamedImport(declaration, symbolName) {
        const namedImports = getNamedImports(declaration);
        if (namedImports) {
            return namedImports.elements.some(element => {
                const { name, propertyName } = element;
                return propertyName ? propertyName.text === symbolName : name.text === symbolName;
            });
        }
        return false;
    }
    exports.hasNamedImport = hasNamedImport;
    /** Extracts the NamedImports node from an import declaration. */
    function getNamedImports(declaration) {
        const namedBindings = declaration.importClause && declaration.importClause.namedBindings;
        return (namedBindings && ts.isNamedImports(namedBindings)) ? namedBindings : null;
    }
    exports.getNamedImports = getNamedImports;
    /** Adds a new import to a NamedImports node. */
    function addImport(declaration, symbolName) {
        return ts.updateNamedImports(declaration, [
            ...declaration.elements, ts.createImportSpecifier(undefined, ts.createIdentifier(symbolName))
        ]);
    }
    exports.addImport = addImport;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbHMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NjaGVtYXRpY3MvbWlncmF0aW9ucy91bmRlY29yYXRlZC1jbGFzc2VzLXdpdGgtZGVjb3JhdGVkLWZpZWxkcy91dGlscy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7OztJQUVILGlDQUFpQztJQUNqQyxnRkFBK0Q7SUFFL0QseUVBQXlFO0lBQzVELFFBQUEsa0JBQWtCLEdBQUcsV0FBVyxDQUFDO0lBRTlDLHFGQUFxRjtJQUNyRixTQUFnQix3Q0FBd0MsQ0FDcEQsVUFBeUIsRUFBRSxXQUEyQjtRQUN4RCxNQUFNLE9BQU8sR0FBMEMsRUFBRSxDQUFDO1FBRTFELFVBQVUsQ0FBQyxZQUFZLENBQUMsU0FBUyxJQUFJLENBQUMsSUFBYTtZQUNqRCxJQUFJLEVBQUUsQ0FBQyxrQkFBa0IsQ0FBQyxJQUFJLENBQUM7Z0JBQzNCLENBQUMsQ0FBQyxJQUFJLENBQUMsVUFBVSxJQUFJLENBQUMsb0NBQW9CLENBQUMsV0FBVyxFQUFFLElBQUksQ0FBQyxVQUFVLENBQUMsQ0FBQyxNQUFNLENBQUMsRUFBRTtnQkFDcEYsS0FBSyxNQUFNLE1BQU0sSUFBSSxJQUFJLENBQUMsT0FBTyxFQUFFO29CQUNqQyxNQUFNLGlCQUFpQixHQUNuQixNQUFNLENBQUMsVUFBVSxJQUFJLG9DQUFvQixDQUFDLFdBQVcsRUFBRSxNQUFNLENBQUMsVUFBVSxDQUFDLENBQUM7b0JBRTlFLElBQUksaUJBQWlCLElBQUksaUJBQWlCLENBQUMsTUFBTSxFQUFFO3dCQUNqRCxPQUFPLENBQUMsSUFBSSxDQUNSLEVBQUMsZ0JBQWdCLEVBQUUsSUFBSSxFQUFFLGlCQUFpQixFQUFFLGlCQUFpQixDQUFDLENBQUMsQ0FBQyxDQUFDLFVBQVUsRUFBQyxDQUFDLENBQUM7d0JBQ2xGLE9BQU87cUJBQ1I7aUJBQ0Y7YUFDRjtZQUVELElBQUksQ0FBQyxZQUFZLENBQUMsSUFBSSxDQUFDLENBQUM7UUFDMUIsQ0FBQyxDQUFDLENBQUM7UUFFSCxPQUFPLE9BQU8sQ0FBQztJQUNqQixDQUFDO0lBdkJELDRGQXVCQztJQUVELDhFQUE4RTtJQUM5RSxTQUFnQixjQUFjLENBQUMsV0FBaUMsRUFBRSxVQUFrQjtRQUNsRixNQUFNLFlBQVksR0FBRyxlQUFlLENBQUMsV0FBVyxDQUFDLENBQUM7UUFFbEQsSUFBSSxZQUFZLEVBQUU7WUFDaEIsT0FBTyxZQUFZLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsRUFBRTtnQkFDMUMsTUFBTSxFQUFDLElBQUksRUFBRSxZQUFZLEVBQUMsR0FBRyxPQUFPLENBQUM7Z0JBQ3JDLE9BQU8sWUFBWSxDQUFDLENBQUMsQ0FBQyxZQUFZLENBQUMsSUFBSSxLQUFLLFVBQVUsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDLElBQUksS0FBSyxVQUFVLENBQUM7WUFDcEYsQ0FBQyxDQUFDLENBQUM7U0FDSjtRQUVELE9BQU8sS0FBSyxDQUFDO0lBQ2YsQ0FBQztJQVhELHdDQVdDO0lBRUQsaUVBQWlFO0lBQ2pFLFNBQWdCLGVBQWUsQ0FBQyxXQUFpQztRQUMvRCxNQUFNLGFBQWEsR0FBRyxXQUFXLENBQUMsWUFBWSxJQUFJLFdBQVcsQ0FBQyxZQUFZLENBQUMsYUFBYSxDQUFDO1FBQ3pGLE9BQU8sQ0FBQyxhQUFhLElBQUksRUFBRSxDQUFDLGNBQWMsQ0FBQyxhQUFhLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxhQUFhLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQztJQUNwRixDQUFDO0lBSEQsMENBR0M7SUFFRCxnREFBZ0Q7SUFDaEQsU0FBZ0IsU0FBUyxDQUFDLFdBQTRCLEVBQUUsVUFBa0I7UUFDeEUsT0FBTyxFQUFFLENBQUMsa0JBQWtCLENBQUMsV0FBVyxFQUFFO1lBQ3hDLEdBQUcsV0FBVyxDQUFDLFFBQVEsRUFBRSxFQUFFLENBQUMscUJBQXFCLENBQUMsU0FBUyxFQUFFLEVBQUUsQ0FBQyxnQkFBZ0IsQ0FBQyxVQUFVLENBQUMsQ0FBQztTQUM5RixDQUFDLENBQUM7SUFDTCxDQUFDO0lBSkQsOEJBSUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCAqIGFzIHRzIGZyb20gJ3R5cGVzY3JpcHQnO1xuaW1wb3J0IHtnZXRBbmd1bGFyRGVjb3JhdG9yc30gZnJvbSAnLi4vLi4vdXRpbHMvbmdfZGVjb3JhdG9ycyc7XG5cbi8qKiBOYW1lIG9mIHRoZSBkZWNvcmF0b3IgdGhhdCBzaG91bGQgYmUgYWRkZWQgdG8gdW5kZWNvcmF0ZWQgY2xhc3Nlcy4gKi9cbmV4cG9ydCBjb25zdCBGQUxMQkFDS19ERUNPUkFUT1IgPSAnRGlyZWN0aXZlJztcblxuLyoqIEZpbmRzIGFsbCBvZiB0aGUgdW5kZWNvcmF0ZWQgY2xhc3NlcyB0aGF0IGhhdmUgZGVjb3JhdGVkIGZpZWxkcyB3aXRoaW4gYSBmaWxlLiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldFVuZGVjb3JhdGVkQ2xhc3Nlc1dpdGhEZWNvcmF0ZWRGaWVsZHMoXG4gICAgc291cmNlRmlsZTogdHMuU291cmNlRmlsZSwgdHlwZUNoZWNrZXI6IHRzLlR5cGVDaGVja2VyKSB7XG4gIGNvbnN0IGNsYXNzZXM6IFVuZGVjb3JhdGVkQ2xhc3NXaXRoRGVjb3JhdGVkRmllbGRzW10gPSBbXTtcblxuICBzb3VyY2VGaWxlLmZvckVhY2hDaGlsZChmdW5jdGlvbiB3YWxrKG5vZGU6IHRzLk5vZGUpIHtcbiAgICBpZiAodHMuaXNDbGFzc0RlY2xhcmF0aW9uKG5vZGUpICYmXG4gICAgICAgICghbm9kZS5kZWNvcmF0b3JzIHx8ICFnZXRBbmd1bGFyRGVjb3JhdG9ycyh0eXBlQ2hlY2tlciwgbm9kZS5kZWNvcmF0b3JzKS5sZW5ndGgpKSB7XG4gICAgICBmb3IgKGNvbnN0IG1lbWJlciBvZiBub2RlLm1lbWJlcnMpIHtcbiAgICAgICAgY29uc3QgYW5ndWxhckRlY29yYXRvcnMgPVxuICAgICAgICAgICAgbWVtYmVyLmRlY29yYXRvcnMgJiYgZ2V0QW5ndWxhckRlY29yYXRvcnModHlwZUNoZWNrZXIsIG1lbWJlci5kZWNvcmF0b3JzKTtcblxuICAgICAgICBpZiAoYW5ndWxhckRlY29yYXRvcnMgJiYgYW5ndWxhckRlY29yYXRvcnMubGVuZ3RoKSB7XG4gICAgICAgICAgY2xhc3Nlcy5wdXNoKFxuICAgICAgICAgICAgICB7Y2xhc3NEZWNsYXJhdGlvbjogbm9kZSwgaW1wb3J0RGVjbGFyYXRpb246IGFuZ3VsYXJEZWNvcmF0b3JzWzBdLmltcG9ydE5vZGV9KTtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICBub2RlLmZvckVhY2hDaGlsZCh3YWxrKTtcbiAgfSk7XG5cbiAgcmV0dXJuIGNsYXNzZXM7XG59XG5cbi8qKiBDaGVja3Mgd2hldGhlciBhbiBpbXBvcnQgZGVjbGFyYXRpb24gaGFzIGFuIGltcG9ydCB3aXRoIGEgY2VydGFpbiBuYW1lLiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGhhc05hbWVkSW1wb3J0KGRlY2xhcmF0aW9uOiB0cy5JbXBvcnREZWNsYXJhdGlvbiwgc3ltYm9sTmFtZTogc3RyaW5nKTogYm9vbGVhbiB7XG4gIGNvbnN0IG5hbWVkSW1wb3J0cyA9IGdldE5hbWVkSW1wb3J0cyhkZWNsYXJhdGlvbik7XG5cbiAgaWYgKG5hbWVkSW1wb3J0cykge1xuICAgIHJldHVybiBuYW1lZEltcG9ydHMuZWxlbWVudHMuc29tZShlbGVtZW50ID0+IHtcbiAgICAgIGNvbnN0IHtuYW1lLCBwcm9wZXJ0eU5hbWV9ID0gZWxlbWVudDtcbiAgICAgIHJldHVybiBwcm9wZXJ0eU5hbWUgPyBwcm9wZXJ0eU5hbWUudGV4dCA9PT0gc3ltYm9sTmFtZSA6IG5hbWUudGV4dCA9PT0gc3ltYm9sTmFtZTtcbiAgICB9KTtcbiAgfVxuXG4gIHJldHVybiBmYWxzZTtcbn1cblxuLyoqIEV4dHJhY3RzIHRoZSBOYW1lZEltcG9ydHMgbm9kZSBmcm9tIGFuIGltcG9ydCBkZWNsYXJhdGlvbi4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXROYW1lZEltcG9ydHMoZGVjbGFyYXRpb246IHRzLkltcG9ydERlY2xhcmF0aW9uKTogdHMuTmFtZWRJbXBvcnRzfG51bGwge1xuICBjb25zdCBuYW1lZEJpbmRpbmdzID0gZGVjbGFyYXRpb24uaW1wb3J0Q2xhdXNlICYmIGRlY2xhcmF0aW9uLmltcG9ydENsYXVzZS5uYW1lZEJpbmRpbmdzO1xuICByZXR1cm4gKG5hbWVkQmluZGluZ3MgJiYgdHMuaXNOYW1lZEltcG9ydHMobmFtZWRCaW5kaW5ncykpID8gbmFtZWRCaW5kaW5ncyA6IG51bGw7XG59XG5cbi8qKiBBZGRzIGEgbmV3IGltcG9ydCB0byBhIE5hbWVkSW1wb3J0cyBub2RlLiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGFkZEltcG9ydChkZWNsYXJhdGlvbjogdHMuTmFtZWRJbXBvcnRzLCBzeW1ib2xOYW1lOiBzdHJpbmcpIHtcbiAgcmV0dXJuIHRzLnVwZGF0ZU5hbWVkSW1wb3J0cyhkZWNsYXJhdGlvbiwgW1xuICAgIC4uLmRlY2xhcmF0aW9uLmVsZW1lbnRzLCB0cy5jcmVhdGVJbXBvcnRTcGVjaWZpZXIodW5kZWZpbmVkLCB0cy5jcmVhdGVJZGVudGlmaWVyKHN5bWJvbE5hbWUpKVxuICBdKTtcbn1cblxuaW50ZXJmYWNlIFVuZGVjb3JhdGVkQ2xhc3NXaXRoRGVjb3JhdGVkRmllbGRzIHtcbiAgY2xhc3NEZWNsYXJhdGlvbjogdHMuQ2xhc3NEZWNsYXJhdGlvbjtcbiAgaW1wb3J0RGVjbGFyYXRpb246IHRzLkltcG9ydERlY2xhcmF0aW9uO1xufVxuIl19