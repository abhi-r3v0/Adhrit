(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler-cli/ngcc/src/migrations/utils", ["require", "exports", "typescript", "@angular/compiler-cli/src/ngtsc/imports", "@angular/compiler-cli/src/ngtsc/reflection"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.createInjectableDecorator = exports.createComponentDecorator = exports.createDirectiveDecorator = exports.hasConstructor = exports.hasPipeDecorator = exports.hasDirectiveDecorator = exports.isClassDeclaration = void 0;
    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var ts = require("typescript");
    var imports_1 = require("@angular/compiler-cli/src/ngtsc/imports");
    var reflection_1 = require("@angular/compiler-cli/src/ngtsc/reflection");
    function isClassDeclaration(clazz) {
        return reflection_1.isNamedClassDeclaration(clazz) || reflection_1.isNamedFunctionDeclaration(clazz) ||
            reflection_1.isNamedVariableDeclaration(clazz);
    }
    exports.isClassDeclaration = isClassDeclaration;
    /**
     * Returns true if the `clazz` is decorated as a `Directive` or `Component`.
     */
    function hasDirectiveDecorator(host, clazz) {
        var ref = new imports_1.Reference(clazz);
        return host.metadata.getDirectiveMetadata(ref) !== null;
    }
    exports.hasDirectiveDecorator = hasDirectiveDecorator;
    /**
     * Returns true if the `clazz` is decorated as a `Pipe`.
     */
    function hasPipeDecorator(host, clazz) {
        var ref = new imports_1.Reference(clazz);
        return host.metadata.getPipeMetadata(ref) !== null;
    }
    exports.hasPipeDecorator = hasPipeDecorator;
    /**
     * Returns true if the `clazz` has its own constructor function.
     */
    function hasConstructor(host, clazz) {
        return host.reflectionHost.getConstructorParameters(clazz) !== null;
    }
    exports.hasConstructor = hasConstructor;
    /**
     * Create an empty `Directive` decorator that will be associated with the `clazz`.
     */
    function createDirectiveDecorator(clazz, metadata) {
        var args = [];
        if (metadata !== undefined) {
            var metaArgs = [];
            if (metadata.selector !== null) {
                metaArgs.push(property('selector', metadata.selector));
            }
            if (metadata.exportAs !== null) {
                metaArgs.push(property('exportAs', metadata.exportAs.join(', ')));
            }
            args.push(reifySourceFile(ts.createObjectLiteral(metaArgs)));
        }
        return {
            name: 'Directive',
            identifier: null,
            import: { name: 'Directive', from: '@angular/core' },
            node: null,
            synthesizedFor: clazz.name,
            args: args,
        };
    }
    exports.createDirectiveDecorator = createDirectiveDecorator;
    /**
     * Create an empty `Component` decorator that will be associated with the `clazz`.
     */
    function createComponentDecorator(clazz, metadata) {
        var metaArgs = [
            property('template', ''),
        ];
        if (metadata.selector !== null) {
            metaArgs.push(property('selector', metadata.selector));
        }
        if (metadata.exportAs !== null) {
            metaArgs.push(property('exportAs', metadata.exportAs.join(', ')));
        }
        return {
            name: 'Component',
            identifier: null,
            import: { name: 'Component', from: '@angular/core' },
            node: null,
            synthesizedFor: clazz.name,
            args: [
                reifySourceFile(ts.createObjectLiteral(metaArgs)),
            ],
        };
    }
    exports.createComponentDecorator = createComponentDecorator;
    /**
     * Create an empty `Injectable` decorator that will be associated with the `clazz`.
     */
    function createInjectableDecorator(clazz) {
        return {
            name: 'Injectable',
            identifier: null,
            import: { name: 'Injectable', from: '@angular/core' },
            node: null,
            synthesizedFor: clazz.name,
            args: [],
        };
    }
    exports.createInjectableDecorator = createInjectableDecorator;
    function property(name, value) {
        return ts.createPropertyAssignment(name, ts.createStringLiteral(value));
    }
    var EMPTY_SF = ts.createSourceFile('(empty)', '', ts.ScriptTarget.Latest);
    /**
     * Takes a `ts.Expression` and returns the same `ts.Expression`, but with an associated
     * `ts.SourceFile`.
     *
     * This transformation is necessary to use synthetic `ts.Expression`s with the `PartialEvaluator`,
     * and many decorator arguments are interpreted in this way.
     */
    function reifySourceFile(expr) {
        var printer = ts.createPrinter();
        var exprText = printer.printNode(ts.EmitHint.Unspecified, expr, EMPTY_SF);
        var sf = ts.createSourceFile('(synthetic)', "const expr = " + exprText + ";", ts.ScriptTarget.Latest, true, ts.ScriptKind.JS);
        var stmt = sf.statements[0];
        if (!ts.isVariableStatement(stmt)) {
            throw new Error("Expected VariableStatement, got " + ts.SyntaxKind[stmt.kind]);
        }
        return stmt.declarationList.declarations[0].initializer;
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbHMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvbmdjYy9zcmMvbWlncmF0aW9ucy91dGlscy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7SUFBQTs7Ozs7O09BTUc7SUFDSCwrQkFBaUM7SUFDakMsbUVBQXFEO0lBQ3JELHlFQUEySjtJQUczSixTQUFnQixrQkFBa0IsQ0FBQyxLQUFxQjtRQUN0RCxPQUFPLG9DQUF1QixDQUFDLEtBQUssQ0FBQyxJQUFJLHVDQUEwQixDQUFDLEtBQUssQ0FBQztZQUN0RSx1Q0FBMEIsQ0FBQyxLQUFLLENBQUMsQ0FBQztJQUN4QyxDQUFDO0lBSEQsZ0RBR0M7SUFFRDs7T0FFRztJQUNILFNBQWdCLHFCQUFxQixDQUFDLElBQW1CLEVBQUUsS0FBdUI7UUFDaEYsSUFBTSxHQUFHLEdBQUcsSUFBSSxtQkFBUyxDQUFDLEtBQUssQ0FBQyxDQUFDO1FBQ2pDLE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxvQkFBb0IsQ0FBQyxHQUFHLENBQUMsS0FBSyxJQUFJLENBQUM7SUFDMUQsQ0FBQztJQUhELHNEQUdDO0lBRUQ7O09BRUc7SUFDSCxTQUFnQixnQkFBZ0IsQ0FBQyxJQUFtQixFQUFFLEtBQXVCO1FBQzNFLElBQU0sR0FBRyxHQUFHLElBQUksbUJBQVMsQ0FBQyxLQUFLLENBQUMsQ0FBQztRQUNqQyxPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMsZUFBZSxDQUFDLEdBQUcsQ0FBQyxLQUFLLElBQUksQ0FBQztJQUNyRCxDQUFDO0lBSEQsNENBR0M7SUFFRDs7T0FFRztJQUNILFNBQWdCLGNBQWMsQ0FBQyxJQUFtQixFQUFFLEtBQXVCO1FBQ3pFLE9BQU8sSUFBSSxDQUFDLGNBQWMsQ0FBQyx3QkFBd0IsQ0FBQyxLQUFLLENBQUMsS0FBSyxJQUFJLENBQUM7SUFDdEUsQ0FBQztJQUZELHdDQUVDO0lBRUQ7O09BRUc7SUFDSCxTQUFnQix3QkFBd0IsQ0FDcEMsS0FBdUIsRUFDdkIsUUFBMkQ7UUFDN0QsSUFBTSxJQUFJLEdBQW9CLEVBQUUsQ0FBQztRQUNqQyxJQUFJLFFBQVEsS0FBSyxTQUFTLEVBQUU7WUFDMUIsSUFBTSxRQUFRLEdBQTRCLEVBQUUsQ0FBQztZQUM3QyxJQUFJLFFBQVEsQ0FBQyxRQUFRLEtBQUssSUFBSSxFQUFFO2dCQUM5QixRQUFRLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxVQUFVLEVBQUUsUUFBUSxDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUM7YUFDeEQ7WUFDRCxJQUFJLFFBQVEsQ0FBQyxRQUFRLEtBQUssSUFBSSxFQUFFO2dCQUM5QixRQUFRLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxVQUFVLEVBQUUsUUFBUSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDO2FBQ25FO1lBQ0QsSUFBSSxDQUFDLElBQUksQ0FBQyxlQUFlLENBQUMsRUFBRSxDQUFDLG1CQUFtQixDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUMsQ0FBQztTQUM5RDtRQUNELE9BQU87WUFDTCxJQUFJLEVBQUUsV0FBVztZQUNqQixVQUFVLEVBQUUsSUFBSTtZQUNoQixNQUFNLEVBQUUsRUFBQyxJQUFJLEVBQUUsV0FBVyxFQUFFLElBQUksRUFBRSxlQUFlLEVBQUM7WUFDbEQsSUFBSSxFQUFFLElBQUk7WUFDVixjQUFjLEVBQUUsS0FBSyxDQUFDLElBQUk7WUFDMUIsSUFBSSxNQUFBO1NBQ0wsQ0FBQztJQUNKLENBQUM7SUF0QkQsNERBc0JDO0lBRUQ7O09BRUc7SUFDSCxTQUFnQix3QkFBd0IsQ0FDcEMsS0FBdUIsRUFDdkIsUUFBMEQ7UUFDNUQsSUFBTSxRQUFRLEdBQTRCO1lBQ3hDLFFBQVEsQ0FBQyxVQUFVLEVBQUUsRUFBRSxDQUFDO1NBQ3pCLENBQUM7UUFDRixJQUFJLFFBQVEsQ0FBQyxRQUFRLEtBQUssSUFBSSxFQUFFO1lBQzlCLFFBQVEsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLFVBQVUsRUFBRSxRQUFRLENBQUMsUUFBUSxDQUFDLENBQUMsQ0FBQztTQUN4RDtRQUNELElBQUksUUFBUSxDQUFDLFFBQVEsS0FBSyxJQUFJLEVBQUU7WUFDOUIsUUFBUSxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUMsVUFBVSxFQUFFLFFBQVEsQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQztTQUNuRTtRQUNELE9BQU87WUFDTCxJQUFJLEVBQUUsV0FBVztZQUNqQixVQUFVLEVBQUUsSUFBSTtZQUNoQixNQUFNLEVBQUUsRUFBQyxJQUFJLEVBQUUsV0FBVyxFQUFFLElBQUksRUFBRSxlQUFlLEVBQUM7WUFDbEQsSUFBSSxFQUFFLElBQUk7WUFDVixjQUFjLEVBQUUsS0FBSyxDQUFDLElBQUk7WUFDMUIsSUFBSSxFQUFFO2dCQUNKLGVBQWUsQ0FBQyxFQUFFLENBQUMsbUJBQW1CLENBQUMsUUFBUSxDQUFDLENBQUM7YUFDbEQ7U0FDRixDQUFDO0lBQ0osQ0FBQztJQXRCRCw0REFzQkM7SUFFRDs7T0FFRztJQUNILFNBQWdCLHlCQUF5QixDQUFDLEtBQXVCO1FBQy9ELE9BQU87WUFDTCxJQUFJLEVBQUUsWUFBWTtZQUNsQixVQUFVLEVBQUUsSUFBSTtZQUNoQixNQUFNLEVBQUUsRUFBQyxJQUFJLEVBQUUsWUFBWSxFQUFFLElBQUksRUFBRSxlQUFlLEVBQUM7WUFDbkQsSUFBSSxFQUFFLElBQUk7WUFDVixjQUFjLEVBQUUsS0FBSyxDQUFDLElBQUk7WUFDMUIsSUFBSSxFQUFFLEVBQUU7U0FDVCxDQUFDO0lBQ0osQ0FBQztJQVRELDhEQVNDO0lBRUQsU0FBUyxRQUFRLENBQUMsSUFBWSxFQUFFLEtBQWE7UUFDM0MsT0FBTyxFQUFFLENBQUMsd0JBQXdCLENBQUMsSUFBSSxFQUFFLEVBQUUsQ0FBQyxtQkFBbUIsQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDO0lBQzFFLENBQUM7SUFFRCxJQUFNLFFBQVEsR0FBRyxFQUFFLENBQUMsZ0JBQWdCLENBQUMsU0FBUyxFQUFFLEVBQUUsRUFBRSxFQUFFLENBQUMsWUFBWSxDQUFDLE1BQU0sQ0FBQyxDQUFDO0lBRTVFOzs7Ozs7T0FNRztJQUNILFNBQVMsZUFBZSxDQUFDLElBQW1CO1FBQzFDLElBQU0sT0FBTyxHQUFHLEVBQUUsQ0FBQyxhQUFhLEVBQUUsQ0FBQztRQUNuQyxJQUFNLFFBQVEsR0FBRyxPQUFPLENBQUMsU0FBUyxDQUFDLEVBQUUsQ0FBQyxRQUFRLENBQUMsV0FBVyxFQUFFLElBQUksRUFBRSxRQUFRLENBQUMsQ0FBQztRQUM1RSxJQUFNLEVBQUUsR0FBRyxFQUFFLENBQUMsZ0JBQWdCLENBQzFCLGFBQWEsRUFBRSxrQkFBZ0IsUUFBUSxNQUFHLEVBQUUsRUFBRSxDQUFDLFlBQVksQ0FBQyxNQUFNLEVBQUUsSUFBSSxFQUFFLEVBQUUsQ0FBQyxVQUFVLENBQUMsRUFBRSxDQUFDLENBQUM7UUFDaEcsSUFBTSxJQUFJLEdBQUcsRUFBRSxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUM5QixJQUFJLENBQUMsRUFBRSxDQUFDLG1CQUFtQixDQUFDLElBQUksQ0FBQyxFQUFFO1lBQ2pDLE1BQU0sSUFBSSxLQUFLLENBQUMscUNBQW1DLEVBQUUsQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBRyxDQUFDLENBQUM7U0FDaEY7UUFDRCxPQUFPLElBQUksQ0FBQyxlQUFlLENBQUMsWUFBWSxDQUFDLENBQUMsQ0FBQyxDQUFDLFdBQVksQ0FBQztJQUMzRCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcbmltcG9ydCB7UmVmZXJlbmNlfSBmcm9tICcuLi8uLi8uLi9zcmMvbmd0c2MvaW1wb3J0cyc7XG5pbXBvcnQge0NsYXNzRGVjbGFyYXRpb24sIERlY29yYXRvciwgaXNOYW1lZENsYXNzRGVjbGFyYXRpb24sIGlzTmFtZWRGdW5jdGlvbkRlY2xhcmF0aW9uLCBpc05hbWVkVmFyaWFibGVEZWNsYXJhdGlvbn0gZnJvbSAnLi4vLi4vLi4vc3JjL25ndHNjL3JlZmxlY3Rpb24nO1xuaW1wb3J0IHtNaWdyYXRpb25Ib3N0fSBmcm9tICcuL21pZ3JhdGlvbic7XG5cbmV4cG9ydCBmdW5jdGlvbiBpc0NsYXNzRGVjbGFyYXRpb24oY2xheno6IHRzLkRlY2xhcmF0aW9uKTogY2xhenogaXMgQ2xhc3NEZWNsYXJhdGlvbiB7XG4gIHJldHVybiBpc05hbWVkQ2xhc3NEZWNsYXJhdGlvbihjbGF6eikgfHwgaXNOYW1lZEZ1bmN0aW9uRGVjbGFyYXRpb24oY2xhenopIHx8XG4gICAgICBpc05hbWVkVmFyaWFibGVEZWNsYXJhdGlvbihjbGF6eik7XG59XG5cbi8qKlxuICogUmV0dXJucyB0cnVlIGlmIHRoZSBgY2xhenpgIGlzIGRlY29yYXRlZCBhcyBhIGBEaXJlY3RpdmVgIG9yIGBDb21wb25lbnRgLlxuICovXG5leHBvcnQgZnVuY3Rpb24gaGFzRGlyZWN0aXZlRGVjb3JhdG9yKGhvc3Q6IE1pZ3JhdGlvbkhvc3QsIGNsYXp6OiBDbGFzc0RlY2xhcmF0aW9uKTogYm9vbGVhbiB7XG4gIGNvbnN0IHJlZiA9IG5ldyBSZWZlcmVuY2UoY2xhenopO1xuICByZXR1cm4gaG9zdC5tZXRhZGF0YS5nZXREaXJlY3RpdmVNZXRhZGF0YShyZWYpICE9PSBudWxsO1xufVxuXG4vKipcbiAqIFJldHVybnMgdHJ1ZSBpZiB0aGUgYGNsYXp6YCBpcyBkZWNvcmF0ZWQgYXMgYSBgUGlwZWAuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBoYXNQaXBlRGVjb3JhdG9yKGhvc3Q6IE1pZ3JhdGlvbkhvc3QsIGNsYXp6OiBDbGFzc0RlY2xhcmF0aW9uKTogYm9vbGVhbiB7XG4gIGNvbnN0IHJlZiA9IG5ldyBSZWZlcmVuY2UoY2xhenopO1xuICByZXR1cm4gaG9zdC5tZXRhZGF0YS5nZXRQaXBlTWV0YWRhdGEocmVmKSAhPT0gbnVsbDtcbn1cblxuLyoqXG4gKiBSZXR1cm5zIHRydWUgaWYgdGhlIGBjbGF6emAgaGFzIGl0cyBvd24gY29uc3RydWN0b3IgZnVuY3Rpb24uXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBoYXNDb25zdHJ1Y3Rvcihob3N0OiBNaWdyYXRpb25Ib3N0LCBjbGF6ejogQ2xhc3NEZWNsYXJhdGlvbik6IGJvb2xlYW4ge1xuICByZXR1cm4gaG9zdC5yZWZsZWN0aW9uSG9zdC5nZXRDb25zdHJ1Y3RvclBhcmFtZXRlcnMoY2xhenopICE9PSBudWxsO1xufVxuXG4vKipcbiAqIENyZWF0ZSBhbiBlbXB0eSBgRGlyZWN0aXZlYCBkZWNvcmF0b3IgdGhhdCB3aWxsIGJlIGFzc29jaWF0ZWQgd2l0aCB0aGUgYGNsYXp6YC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGNyZWF0ZURpcmVjdGl2ZURlY29yYXRvcihcbiAgICBjbGF6ejogQ2xhc3NEZWNsYXJhdGlvbixcbiAgICBtZXRhZGF0YT86IHtzZWxlY3Rvcjogc3RyaW5nfG51bGwsIGV4cG9ydEFzOiBzdHJpbmdbXXxudWxsfSk6IERlY29yYXRvciB7XG4gIGNvbnN0IGFyZ3M6IHRzLkV4cHJlc3Npb25bXSA9IFtdO1xuICBpZiAobWV0YWRhdGEgIT09IHVuZGVmaW5lZCkge1xuICAgIGNvbnN0IG1ldGFBcmdzOiB0cy5Qcm9wZXJ0eUFzc2lnbm1lbnRbXSA9IFtdO1xuICAgIGlmIChtZXRhZGF0YS5zZWxlY3RvciAhPT0gbnVsbCkge1xuICAgICAgbWV0YUFyZ3MucHVzaChwcm9wZXJ0eSgnc2VsZWN0b3InLCBtZXRhZGF0YS5zZWxlY3RvcikpO1xuICAgIH1cbiAgICBpZiAobWV0YWRhdGEuZXhwb3J0QXMgIT09IG51bGwpIHtcbiAgICAgIG1ldGFBcmdzLnB1c2gocHJvcGVydHkoJ2V4cG9ydEFzJywgbWV0YWRhdGEuZXhwb3J0QXMuam9pbignLCAnKSkpO1xuICAgIH1cbiAgICBhcmdzLnB1c2gocmVpZnlTb3VyY2VGaWxlKHRzLmNyZWF0ZU9iamVjdExpdGVyYWwobWV0YUFyZ3MpKSk7XG4gIH1cbiAgcmV0dXJuIHtcbiAgICBuYW1lOiAnRGlyZWN0aXZlJyxcbiAgICBpZGVudGlmaWVyOiBudWxsLFxuICAgIGltcG9ydDoge25hbWU6ICdEaXJlY3RpdmUnLCBmcm9tOiAnQGFuZ3VsYXIvY29yZSd9LFxuICAgIG5vZGU6IG51bGwsXG4gICAgc3ludGhlc2l6ZWRGb3I6IGNsYXp6Lm5hbWUsXG4gICAgYXJncyxcbiAgfTtcbn1cblxuLyoqXG4gKiBDcmVhdGUgYW4gZW1wdHkgYENvbXBvbmVudGAgZGVjb3JhdG9yIHRoYXQgd2lsbCBiZSBhc3NvY2lhdGVkIHdpdGggdGhlIGBjbGF6emAuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBjcmVhdGVDb21wb25lbnREZWNvcmF0b3IoXG4gICAgY2xheno6IENsYXNzRGVjbGFyYXRpb24sXG4gICAgbWV0YWRhdGE6IHtzZWxlY3Rvcjogc3RyaW5nfG51bGwsIGV4cG9ydEFzOiBzdHJpbmdbXXxudWxsfSk6IERlY29yYXRvciB7XG4gIGNvbnN0IG1ldGFBcmdzOiB0cy5Qcm9wZXJ0eUFzc2lnbm1lbnRbXSA9IFtcbiAgICBwcm9wZXJ0eSgndGVtcGxhdGUnLCAnJyksXG4gIF07XG4gIGlmIChtZXRhZGF0YS5zZWxlY3RvciAhPT0gbnVsbCkge1xuICAgIG1ldGFBcmdzLnB1c2gocHJvcGVydHkoJ3NlbGVjdG9yJywgbWV0YWRhdGEuc2VsZWN0b3IpKTtcbiAgfVxuICBpZiAobWV0YWRhdGEuZXhwb3J0QXMgIT09IG51bGwpIHtcbiAgICBtZXRhQXJncy5wdXNoKHByb3BlcnR5KCdleHBvcnRBcycsIG1ldGFkYXRhLmV4cG9ydEFzLmpvaW4oJywgJykpKTtcbiAgfVxuICByZXR1cm4ge1xuICAgIG5hbWU6ICdDb21wb25lbnQnLFxuICAgIGlkZW50aWZpZXI6IG51bGwsXG4gICAgaW1wb3J0OiB7bmFtZTogJ0NvbXBvbmVudCcsIGZyb206ICdAYW5ndWxhci9jb3JlJ30sXG4gICAgbm9kZTogbnVsbCxcbiAgICBzeW50aGVzaXplZEZvcjogY2xhenoubmFtZSxcbiAgICBhcmdzOiBbXG4gICAgICByZWlmeVNvdXJjZUZpbGUodHMuY3JlYXRlT2JqZWN0TGl0ZXJhbChtZXRhQXJncykpLFxuICAgIF0sXG4gIH07XG59XG5cbi8qKlxuICogQ3JlYXRlIGFuIGVtcHR5IGBJbmplY3RhYmxlYCBkZWNvcmF0b3IgdGhhdCB3aWxsIGJlIGFzc29jaWF0ZWQgd2l0aCB0aGUgYGNsYXp6YC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGNyZWF0ZUluamVjdGFibGVEZWNvcmF0b3IoY2xheno6IENsYXNzRGVjbGFyYXRpb24pOiBEZWNvcmF0b3Ige1xuICByZXR1cm4ge1xuICAgIG5hbWU6ICdJbmplY3RhYmxlJyxcbiAgICBpZGVudGlmaWVyOiBudWxsLFxuICAgIGltcG9ydDoge25hbWU6ICdJbmplY3RhYmxlJywgZnJvbTogJ0Bhbmd1bGFyL2NvcmUnfSxcbiAgICBub2RlOiBudWxsLFxuICAgIHN5bnRoZXNpemVkRm9yOiBjbGF6ei5uYW1lLFxuICAgIGFyZ3M6IFtdLFxuICB9O1xufVxuXG5mdW5jdGlvbiBwcm9wZXJ0eShuYW1lOiBzdHJpbmcsIHZhbHVlOiBzdHJpbmcpOiB0cy5Qcm9wZXJ0eUFzc2lnbm1lbnQge1xuICByZXR1cm4gdHMuY3JlYXRlUHJvcGVydHlBc3NpZ25tZW50KG5hbWUsIHRzLmNyZWF0ZVN0cmluZ0xpdGVyYWwodmFsdWUpKTtcbn1cblxuY29uc3QgRU1QVFlfU0YgPSB0cy5jcmVhdGVTb3VyY2VGaWxlKCcoZW1wdHkpJywgJycsIHRzLlNjcmlwdFRhcmdldC5MYXRlc3QpO1xuXG4vKipcbiAqIFRha2VzIGEgYHRzLkV4cHJlc3Npb25gIGFuZCByZXR1cm5zIHRoZSBzYW1lIGB0cy5FeHByZXNzaW9uYCwgYnV0IHdpdGggYW4gYXNzb2NpYXRlZFxuICogYHRzLlNvdXJjZUZpbGVgLlxuICpcbiAqIFRoaXMgdHJhbnNmb3JtYXRpb24gaXMgbmVjZXNzYXJ5IHRvIHVzZSBzeW50aGV0aWMgYHRzLkV4cHJlc3Npb25gcyB3aXRoIHRoZSBgUGFydGlhbEV2YWx1YXRvcmAsXG4gKiBhbmQgbWFueSBkZWNvcmF0b3IgYXJndW1lbnRzIGFyZSBpbnRlcnByZXRlZCBpbiB0aGlzIHdheS5cbiAqL1xuZnVuY3Rpb24gcmVpZnlTb3VyY2VGaWxlKGV4cHI6IHRzLkV4cHJlc3Npb24pOiB0cy5FeHByZXNzaW9uIHtcbiAgY29uc3QgcHJpbnRlciA9IHRzLmNyZWF0ZVByaW50ZXIoKTtcbiAgY29uc3QgZXhwclRleHQgPSBwcmludGVyLnByaW50Tm9kZSh0cy5FbWl0SGludC5VbnNwZWNpZmllZCwgZXhwciwgRU1QVFlfU0YpO1xuICBjb25zdCBzZiA9IHRzLmNyZWF0ZVNvdXJjZUZpbGUoXG4gICAgICAnKHN5bnRoZXRpYyknLCBgY29uc3QgZXhwciA9ICR7ZXhwclRleHR9O2AsIHRzLlNjcmlwdFRhcmdldC5MYXRlc3QsIHRydWUsIHRzLlNjcmlwdEtpbmQuSlMpO1xuICBjb25zdCBzdG10ID0gc2Yuc3RhdGVtZW50c1swXTtcbiAgaWYgKCF0cy5pc1ZhcmlhYmxlU3RhdGVtZW50KHN0bXQpKSB7XG4gICAgdGhyb3cgbmV3IEVycm9yKGBFeHBlY3RlZCBWYXJpYWJsZVN0YXRlbWVudCwgZ290ICR7dHMuU3ludGF4S2luZFtzdG10LmtpbmRdfWApO1xuICB9XG4gIHJldHVybiBzdG10LmRlY2xhcmF0aW9uTGlzdC5kZWNsYXJhdGlvbnNbMF0uaW5pdGlhbGl6ZXIhO1xufVxuIl19