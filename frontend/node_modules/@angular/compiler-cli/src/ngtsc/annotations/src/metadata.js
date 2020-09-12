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
        define("@angular/compiler-cli/src/ngtsc/annotations/src/metadata", ["require", "exports", "@angular/compiler", "typescript", "@angular/compiler-cli/src/ngtsc/annotations/src/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.generateSetClassMetadataCall = void 0;
    var compiler_1 = require("@angular/compiler");
    var ts = require("typescript");
    var util_1 = require("@angular/compiler-cli/src/ngtsc/annotations/src/util");
    /**
     * Given a class declaration, generate a call to `setClassMetadata` with the Angular metadata
     * present on the class or its member fields.
     *
     * If no such metadata is present, this function returns `null`. Otherwise, the call is returned
     * as a `Statement` for inclusion along with the class.
     */
    function generateSetClassMetadataCall(clazz, reflection, defaultImportRecorder, isCore, annotateForClosureCompiler) {
        if (!reflection.isClass(clazz)) {
            return null;
        }
        var id = ts.updateIdentifier(reflection.getAdjacentNameOfClass(clazz));
        // Reflect over the class decorators. If none are present, or those that are aren't from
        // Angular, then return null. Otherwise, turn them into metadata.
        var classDecorators = reflection.getDecoratorsOfDeclaration(clazz);
        if (classDecorators === null) {
            return null;
        }
        var ngClassDecorators = classDecorators.filter(function (dec) { return isAngularDecorator(dec, isCore); })
            .map(function (decorator) { return decoratorToMetadata(decorator, annotateForClosureCompiler); });
        if (ngClassDecorators.length === 0) {
            return null;
        }
        var metaDecorators = ts.createArrayLiteral(ngClassDecorators);
        // Convert the constructor parameters to metadata, passing null if none are present.
        var metaCtorParameters = new compiler_1.LiteralExpr(null);
        var classCtorParameters = reflection.getConstructorParameters(clazz);
        if (classCtorParameters !== null) {
            var ctorParameters = classCtorParameters.map(function (param) { return ctorParameterToMetadata(param, defaultImportRecorder, isCore); });
            metaCtorParameters = new compiler_1.FunctionExpr([], [
                new compiler_1.ReturnStatement(new compiler_1.LiteralArrayExpr(ctorParameters)),
            ]);
        }
        // Do the same for property decorators.
        var metaPropDecorators = ts.createNull();
        var classMembers = reflection.getMembersOfClass(clazz).filter(function (member) { return !member.isStatic && member.decorators !== null && member.decorators.length > 0; });
        var duplicateDecoratedMemberNames = classMembers.map(function (member) { return member.name; }).filter(function (name, i, arr) { return arr.indexOf(name) < i; });
        if (duplicateDecoratedMemberNames.length > 0) {
            // This should theoretically never happen, because the only way to have duplicate instance
            // member names is getter/setter pairs and decorators cannot appear in both a getter and the
            // corresponding setter.
            throw new Error("Duplicate decorated properties found on class '" + clazz.name.text + "': " +
                duplicateDecoratedMemberNames.join(', '));
        }
        var decoratedMembers = classMembers.map(function (member) { var _a; return classMemberToMetadata((_a = member.nameNode) !== null && _a !== void 0 ? _a : member.name, member.decorators, isCore); });
        if (decoratedMembers.length > 0) {
            metaPropDecorators = ts.createObjectLiteral(decoratedMembers);
        }
        // Generate a pure call to setClassMetadata with the class identifier and its metadata.
        var setClassMetadata = new compiler_1.ExternalExpr(compiler_1.Identifiers.setClassMetadata);
        var fnCall = new compiler_1.InvokeFunctionExpr(
        /* fn */ setClassMetadata, 
        /* args */
        [
            new compiler_1.WrappedNodeExpr(id),
            new compiler_1.WrappedNodeExpr(metaDecorators),
            metaCtorParameters,
            new compiler_1.WrappedNodeExpr(metaPropDecorators),
        ]);
        var iifeFn = new compiler_1.FunctionExpr([], [fnCall.toStmt()], compiler_1.NONE_TYPE);
        var iife = new compiler_1.InvokeFunctionExpr(
        /* fn */ iifeFn, 
        /* args */ [], 
        /* type */ undefined, 
        /* sourceSpan */ undefined, 
        /* pure */ true);
        return iife.toStmt();
    }
    exports.generateSetClassMetadataCall = generateSetClassMetadataCall;
    /**
     * Convert a reflected constructor parameter to metadata.
     */
    function ctorParameterToMetadata(param, defaultImportRecorder, isCore) {
        // Parameters sometimes have a type that can be referenced. If so, then use it, otherwise
        // its type is undefined.
        var type = param.typeValueReference.kind !== 2 /* UNAVAILABLE */ ?
            util_1.valueReferenceToExpression(param.typeValueReference, defaultImportRecorder) :
            new compiler_1.LiteralExpr(undefined);
        var mapEntries = [
            { key: 'type', value: type, quoted: false },
        ];
        // If the parameter has decorators, include the ones from Angular.
        if (param.decorators !== null) {
            var ngDecorators = param.decorators.filter(function (dec) { return isAngularDecorator(dec, isCore); })
                .map(function (decorator) { return decoratorToMetadata(decorator); });
            var value = new compiler_1.WrappedNodeExpr(ts.createArrayLiteral(ngDecorators));
            mapEntries.push({ key: 'decorators', value: value, quoted: false });
        }
        return compiler_1.literalMap(mapEntries);
    }
    /**
     * Convert a reflected class member to metadata.
     */
    function classMemberToMetadata(name, decorators, isCore) {
        var ngDecorators = decorators.filter(function (dec) { return isAngularDecorator(dec, isCore); })
            .map(function (decorator) { return decoratorToMetadata(decorator); });
        var decoratorMeta = ts.createArrayLiteral(ngDecorators);
        return ts.createPropertyAssignment(name, decoratorMeta);
    }
    /**
     * Convert a reflected decorator to metadata.
     */
    function decoratorToMetadata(decorator, wrapFunctionsInParens) {
        if (decorator.identifier === null) {
            throw new Error('Illegal state: synthesized decorator cannot be emitted in class metadata.');
        }
        // Decorators have a type.
        var properties = [
            ts.createPropertyAssignment('type', ts.getMutableClone(decorator.identifier)),
        ];
        // Sometimes they have arguments.
        if (decorator.args !== null && decorator.args.length > 0) {
            var args = decorator.args.map(function (arg) {
                var expr = ts.getMutableClone(arg);
                return wrapFunctionsInParens ? util_1.wrapFunctionExpressionsInParens(expr) : expr;
            });
            properties.push(ts.createPropertyAssignment('args', ts.createArrayLiteral(args)));
        }
        return ts.createObjectLiteral(properties, true);
    }
    /**
     * Whether a given decorator should be treated as an Angular decorator.
     *
     * Either it's used in @angular/core, or it's imported from there.
     */
    function isAngularDecorator(decorator, isCore) {
        return isCore || (decorator.import !== null && decorator.import.from === '@angular/core');
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWV0YWRhdGEuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL2Fubm90YXRpb25zL3NyYy9tZXRhZGF0YS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7Ozs7Ozs7Ozs7Ozs7SUFFSCw4Q0FBNk07SUFDN00sK0JBQWlDO0lBS2pDLDZFQUFtRjtJQUduRjs7Ozs7O09BTUc7SUFDSCxTQUFnQiw0QkFBNEIsQ0FDeEMsS0FBcUIsRUFBRSxVQUEwQixFQUFFLHFCQUE0QyxFQUMvRixNQUFlLEVBQUUsMEJBQW9DO1FBQ3ZELElBQUksQ0FBQyxVQUFVLENBQUMsT0FBTyxDQUFDLEtBQUssQ0FBQyxFQUFFO1lBQzlCLE9BQU8sSUFBSSxDQUFDO1NBQ2I7UUFDRCxJQUFNLEVBQUUsR0FBRyxFQUFFLENBQUMsZ0JBQWdCLENBQUMsVUFBVSxDQUFDLHNCQUFzQixDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUM7UUFFekUsd0ZBQXdGO1FBQ3hGLGlFQUFpRTtRQUNqRSxJQUFNLGVBQWUsR0FBRyxVQUFVLENBQUMsMEJBQTBCLENBQUMsS0FBSyxDQUFDLENBQUM7UUFDckUsSUFBSSxlQUFlLEtBQUssSUFBSSxFQUFFO1lBQzVCLE9BQU8sSUFBSSxDQUFDO1NBQ2I7UUFDRCxJQUFNLGlCQUFpQixHQUNuQixlQUFlLENBQUMsTUFBTSxDQUFDLFVBQUEsR0FBRyxJQUFJLE9BQUEsa0JBQWtCLENBQUMsR0FBRyxFQUFFLE1BQU0sQ0FBQyxFQUEvQixDQUErQixDQUFDO2FBQ3pELEdBQUcsQ0FDQSxVQUFDLFNBQW9CLElBQUssT0FBQSxtQkFBbUIsQ0FBQyxTQUFTLEVBQUUsMEJBQTBCLENBQUMsRUFBMUQsQ0FBMEQsQ0FBQyxDQUFDO1FBQ2xHLElBQUksaUJBQWlCLENBQUMsTUFBTSxLQUFLLENBQUMsRUFBRTtZQUNsQyxPQUFPLElBQUksQ0FB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LEdBQUcsU0FBUyxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsVUFBQSxHQUFHO2dCQUNqQyxJQUFNLElBQUksR0FBRyxFQUFFLENBQUMsZUFBZSxDQUFDLEdBQUcsQ0FBQyxDQUFDO2dCQUNyQyxPQUFPLHFCQUFxQixDQUFDLENBQUMsQ0FBQyxzQ0FBK0IsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDO1lBQzlFLENBQUMsQ0FBQyxDQUFDO1lBQ0gsVUFBVSxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsd0JBQXdCLENBQUMsTUFBTSxFQUFFLEVBQUUsQ0FBQyxrQkFBa0IsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUM7U0FDbkY7UUFDRCxPQUFPLEVBQUUsQ0FBQyxtQkFBbUIsQ0FBQyxVQUFVLEVBQUUsSUFBSSxDQUFDLENBQUM7SUFDbEQsQ0FBQztJQUVEOzs7O09BSUc7SUFDSCxTQUFTLGtCQUFrQixDQUFDLFNBQW9CLEVBQUUsTUFBZTtRQUMvRCxPQUFPLE1BQU0sSUFBSSxDQUFDLFNBQVMsQ0FBQyxNQUFNLEtBQUssSUFBSSxJQUFJLFNBQVMsQ0FBQyxNQUFNLENBQUMsSUFBSSxLQUFLLGVBQWUsQ0FBQyxDQUFDO0lBQzVGLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtFeHByZXNzaW9uLCBFeHRlcm5hbEV4cHIsIEZ1bmN0aW9uRXhwciwgSWRlbnRpZmllcnMsIEludm9rZUZ1bmN0aW9uRXhwciwgTGl0ZXJhbEFycmF5RXhwciwgTGl0ZXJhbEV4cHIsIGxpdGVyYWxNYXAsIE5PTkVfVFlQRSwgUmV0dXJuU3RhdGVtZW50LCBTdGF0ZW1lbnQsIFdyYXBwZWROb2RlRXhwcn0gZnJvbSAnQGFuZ3VsYXIvY29tcGlsZXInO1xuaW1wb3J0ICogYXMgdHMgZnJvbSAndHlwZXNjcmlwdCc7XG5cbmltcG9ydCB7RGVmYXVsdEltcG9ydFJlY29yZGVyfSBmcm9tICcuLi8uLi9pbXBvcnRzJztcbmltcG9ydCB7Q3RvclBhcmFtZXRlciwgRGVjb3JhdG9yLCBSZWZsZWN0aW9uSG9zdCwgVHlwZVZhbHVlUmVmZXJlbmNlS2luZH0gZnJvbSAnLi4vLi4vcmVmbGVjdGlvbic7XG5cbmltcG9ydCB7dmFsdWVSZWZlcmVuY2VUb0V4cHJlc3Npb24sIHdyYXBGdW5jdGlvbkV4cHJlc3Npb25zSW5QYXJlbnN9IGZyb20gJy4vdXRpbCc7XG5cblxuLyoqXG4gKiBHaXZlbiBhIGNsYXNzIGRlY2xhcmF0aW9uLCBnZW5lcmF0ZSBhIGNhbGwgdG8gYHNldENsYXNzTWV0YWRhdGFgIHdpdGggdGhlIEFuZ3VsYXIgbWV0YWRhdGFcbiAqIHByZXNlbnQgb24gdGhlIGNsYXNzIG9yIGl0cyBtZW1iZXIgZmllbGRzLlxuICpcbiAqIElmIG5vIHN1Y2ggbWV0YWRhdGEgaXMgcHJlc2VudCwgdGhpcyBmdW5jdGlvbiByZXR1cm5zIGBudWxsYC4gT3RoZXJ3aXNlLCB0aGUgY2FsbCBpcyByZXR1cm5lZFxuICogYXMgYSBgU3RhdGVtZW50YCBmb3IgaW5jbHVzaW9uIGFsb25nIHdpdGggdGhlIGNsYXNzLlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2VuZXJhdGVTZXRDbGFzc01ldGFkYXRhQ2FsbChcbiAgICBjbGF6ejogdHMuRGVjbGFyYXRpb24sIHJlZmxlY3Rpb246IFJlZmxlY3Rpb25Ib3N0LCBkZWZhdWx0SW1wb3J0UmVjb3JkZXI6IERlZmF1bHRJbXBvcnRSZWNvcmRlcixcbiAgICBpc0NvcmU6IGJvb2xlYW4sIGFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyPzogYm9vbGVhbik6IFN0YXRlbWVudHxudWxsIHtcbiAgaWYgKCFyZWZsZWN0aW9uLmlzQ2xhc3MoY2xhenopKSB7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgY29uc3QgaWQgPSB0cy51cGRhdGVJZGVudGlmaWVyKHJlZmxlY3Rpb24uZ2V0QWRqYWNlbnROYW1lT2ZDbGFzcyhjbGF6eikpO1xuXG4gIC8vIFJlZmxlY3Qgb3ZlciB0aGUgY2xhc3MgZGVjb3JhdG9ycy4gSWYgbm9uZSBhcmUgcHJlc2VudCwgb3IgdGhvc2UgdGhhdCBhcmUgYXJlbid0IGZyb21cbiAgLy8gQW5ndWxhciwgdGhlbiByZXR1cm4gbnVsbC4gT3RoZXJ3aXNlLCB0dXJuIHRoZW0gaW50byBtZXRhZGF0YS5cbiAgY29uc3QgY2xhc3NEZWNvcmF0b3JzID0gcmVmbGVjdGlvbi5nZXREZWNvcmF0b3JzT2ZEZWNsYXJhdGlvbihjbGF6eik7XG4gIGlmIChjbGFzc0RlY29yYXRvcnMgPT09IG51bGwpIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuICBjb25zdCBuZ0NsYXNzRGVjb3JhdG9ycyA9XG4gICAgICBjbGFzc0RlY29yYXRvcnMuZmlsdGVyKGRlYyA9PiBpc0FuZ3VsYXJEZWNvcmF0b3IoZGVjLCBpc0NvcmUpKVxuICAgICAgICAgIC5tYXAoXG4gICAgICAgICAgICAgIChkZWNvcmF0b3I6IERlY29yYXRvcikgPT4gZGVjb3JhdG9yVG9NZXRhZGF0YShkZWNvcmF0b3IsIGFubm90YXRlRm9yQ2xvc3VyZUNvbXBpbGVyKSk7XG4gIGlmIChuZ0NsYXNzRGVjb3JhdG9ycy5sZW5ndGggPT09IDApIHtcbiAgICByZXR1cm4gbnVsbDtcbiAgfVxuICBjb25zdCBtZXRhRGVjb3JhdG9ycyA9IHRzLmNyZWF0ZUFycmF5TGl0ZXJhbChuZ0NsYXNzRGVjb3JhdG9ycyk7XG5cbiAgLy8gQ29udmVydCB0aGUgY29uc3RydWN0b3IgcGFyYW1ldGVycyB0byBtZXRhZGF0YSwgcGFzc2luZyBudWxsIGlmIG5vbmUgYXJlIHByZXNlbnQuXG4gIGxldCBtZXRhQ3RvclBhcmFtZXRlcnM6IEV4cHJlc3Npb24gPSBuZXcgTGl0ZXJhbEV4cHIobnVsbCk7XG4gIGNvbnN0IGNsYXNzQ3RvclBhcmFtZXRlcnMgPSByZWZsZWN0aW9uLmdldENvbnN0cnVjdG9yUGFyYW1ldGVycyhjbGF6eik7XG4gIGlmIChjbGFzc0N0b3JQYXJhbWV0ZXJzICE9PSBudWxsKSB7XG4gICAgY29uc3QgY3RvclBhcmFtZXRlcnMgPSBjbGFzc0N0b3JQYXJhbWV0ZXJzLm1hcChcbiAgICAgICAgcGFyYW0gPT4gY3RvclBhcmFtZXRlclRvTWV0YWRhdGEocGFyYW0sIGRlZmF1bHRJbXBvcnRSZWNvcmRlciwgaXNDb3JlKSk7XG4gICAgbWV0YUN0b3JQYXJhbWV0ZXJzID0gbmV3IEZ1bmN0aW9uRXhwcihbXSwgW1xuICAgICAgbmV3IFJldHVyblN0YXRlbWVudChuZXcgTGl0ZXJhbEFycmF5RXhwcihjdG9yUGFyYW1ldGVycykpLFxuICAgIF0pO1xuICB9XG5cbiAgLy8gRG8gdGhlIHNhbWUgZm9yIHByb3BlcnR5IGRlY29yYXRvcnMuXG4gIGxldCBtZXRhUHJvcERlY29yYXRvcnM6IHRzLkV4cHJlc3Npb24gPSB0cy5jcmVhdGVOdWxsKCk7XG4gIGNvbnN0IGNsYXNzTWVtYmVycyA9IHJlZmxlY3Rpb24uZ2V0TWVtYmVyc09mQ2xhc3MoY2xhenopLmZpbHRlcihcbiAgICAgIG1lbWJlciA9PiAhbWVtYmVyLmlzU3RhdGljICYmIG1lbWJlci5kZWNvcmF0b3JzICE9PSBudWxsICYmIG1lbWJlci5kZWNvcmF0b3JzLmxlbmd0aCA+IDApO1xuICBjb25zdCBkdXBsaWNhdGVEZWNvcmF0ZWRNZW1iZXJOYW1lcyA9XG4gICAgICBjbGFzc01lbWJlcnMubWFwKG1lbWJlciA9PiBtZW1iZXIubmFtZSkuZmlsdGVyKChuYW1lLCBpLCBhcnIpID0+IGFyci5pbmRleE9mKG5hbWUpIDwgaSk7XG4gIGlmIChkdXBsaWNhdGVEZWNvcmF0ZWRNZW1iZXJOYW1lcy5sZW5ndGggPiAwKSB7XG4gICAgLy8gVGhpcyBzaG91bGQgdGhlb3JldGljYWxseSBuZXZlciBoYXBwZW4sIGJlY2F1c2UgdGhlIG9ubHkgd2F5IHRvIGhhdmUgZHVwbGljYXRlIGluc3RhbmNlXG4gICAgLy8gbWVtYmVyIG5hbWVzIGlzIGdldHRlci9zZXR0ZXIgcGFpcnMgYW5kIGRlY29yYXRvcnMgY2Fubm90IGFwcGVhciBpbiBib3RoIGEgZ2V0dGVyIGFuZCB0aGVcbiAgICAvLyBjb3JyZXNwb25kaW5nIHNldHRlci5cbiAgICB0aHJvdyBuZXcgRXJyb3IoXG4gICAgICAgIGBEdXBsaWNhdGUgZGVjb3JhdGVkIHByb3BlcnRpZXMgZm91bmQgb24gY2xhc3MgJyR7Y2xhenoubmFtZS50ZXh0fSc6IGAgK1xuICAgICAgICBkdXBsaWNhdGVEZWNvcmF0ZWRNZW1iZXJOYW1lcy5qb2luKCcsICcpKTtcbiAgfVxuICBjb25zdCBkZWNvcmF0ZWRNZW1iZXJzID0gY2xhc3NNZW1iZXJzLm1hcChcbiAgICAgIG1lbWJlciA9PiBjbGFzc01lbWJlclRvTWV0YWRhdGEobWVtYmVyLm5hbWVOb2RlID8/IG1lbWJlci5uYW1lLCBtZW1iZXIuZGVjb3JhdG9ycyEsIGlzQ29yZSkpO1xuICBpZiAoZGVjb3JhdGVkTWVtYmVycy5sZW5ndGggPiAwKSB7XG4gICAgbWV0YVByb3BEZWNvcmF0b3JzID0gdHMuY3JlYXRlT2JqZWN0TGl0ZXJhbChkZWNvcmF0ZWRNZW1iZXJzKTtcbiAgfVxuXG4gIC8vIEdlbmVyYXRlIGEgcHVyZSBjYWxsIHRvIHNldENsYXNzTWV0YWRhdGEgd2l0aCB0aGUgY2xhc3MgaWRlbnRpZmllciBhbmQgaXRzIG1ldGFkYXRhLlxuICBjb25zdCBzZXRDbGFzc01ldGFkYXRhID0gbmV3IEV4dGVybmFsRXhwcihJZGVudGlmaWVycy5zZXRDbGFzc01ldGFkYXRhKTtcbiAgY29uc3QgZm5DYWxsID0gbmV3IEludm9rZUZ1bmN0aW9uRXhwcihcbiAgICAgIC8qIGZuICovIHNldENsYXNzTWV0YWRhdGEsXG4gICAgICAvKiBhcmdzICovXG4gICAgICBbXG4gICAgICAgIG5ldyBXcmFwcGVkTm9kZUV4cHIoaWQpLFxuICAgICAgICBuZXcgV3JhcHBlZE5vZGVFeHByKG1ldGFEZWNvcmF0b3JzKSxcbiAgICAgICAgbWV0YUN0b3JQYXJhbWV0ZXJzLFxuICAgICAgICBuZXcgV3JhcHBlZE5vZGVFeHByKG1ldGFQcm9wRGVjb3JhdG9ycyksXG4gICAgICBdKTtcbiAgY29uc3QgaWlmZUZuID0gbmV3IEZ1bmN0aW9uRXhwcihbXSwgW2ZuQ2FsbC50b1N0bXQoKV0sIE5PTkVfVFlQRSk7XG4gIGNvbnN0IGlpZmUgPSBuZXcgSW52b2tlRnVuY3Rpb25FeHByKFxuICAgICAgLyogZm4gKi8gaWlmZUZuLFxuICAgICAgLyogYXJncyAqL1tdLFxuICAgICAgLyogdHlwZSAqLyB1bmRlZmluZWQsXG4gICAgICAvKiBzb3VyY2VTcGFuICovIHVuZGVmaW5lZCxcbiAgICAgIC8qIHB1cmUgKi8gdHJ1ZSk7XG4gIHJldHVybiBpaWZlLnRvU3RtdCgpO1xufVxuXG4vKipcbiAqIENvbnZlcnQgYSByZWZsZWN0ZWQgY29uc3RydWN0b3IgcGFyYW1ldGVyIHRvIG1ldGFkYXRhLlxuICovXG5mdW5jdGlvbiBjdG9yUGFyYW1ldGVyVG9NZXRhZGF0YShcbiAgICBwYXJhbTogQ3RvclBhcmFtZXRlciwgZGVmYXVsdEltcG9ydFJlY29yZGVyOiBEZWZhdWx0SW1wb3J0UmVjb3JkZXIsXG4gICAgaXNDb3JlOiBib29sZWFuKTogRXhwcmVzc2lvbiB7XG4gIC8vIFBhcmFtZXRlcnMgc29tZXRpbWVzIGhhdmUgYSB0eXBlIHRoYXQgY2FuIGJlIHJlZmVyZW5jZWQuIElmIHNvLCB0aGVuIHVzZSBpdCwgb3RoZXJ3aXNlXG4gIC8vIGl0cyB0eXBlIGlzIHVuZGVmaW5lZC5cbiAgY29uc3QgdHlwZSA9IHBhcmFtLnR5cGVWYWx1ZVJlZmVyZW5jZS5raW5kICE9PSBUeXBlVmFsdWVSZWZlcmVuY2VLaW5kLlVOQVZBSUxBQkxFID9cbiAgICAgIHZhbHVlUmVmZXJlbmNlVG9FeHByZXNzaW9uKHBhcmFtLnR5cGVWYWx1ZVJlZmVyZW5jZSwgZGVmYXVsdEltcG9ydFJlY29yZGVyKSA6XG4gICAgICBuZXcgTGl0ZXJhbEV4cHIodW5kZWZpbmVkKTtcblxuICBjb25zdCBtYXBFbnRyaWVzOiB7a2V5OiBzdHJpbmcsIHZhbHVlOiBFeHByZXNzaW9uLCBxdW90ZWQ6IGZhbHNlfVtdID0gW1xuICAgIHtrZXk6ICd0eXBlJywgdmFsdWU6IHR5cGUsIHF1b3RlZDogZmFsc2V9LFxuICBdO1xuXG4gIC8vIElmIHRoZSBwYXJhbWV0ZXIgaGFzIGRlY29yYXRvcnMsIGluY2x1ZGUgdGhlIG9uZXMgZnJvbSBBbmd1bGFyLlxuICBpZiAocGFyYW0uZGVjb3JhdG9ycyAhPT0gbnVsbCkge1xuICAgIGNvbnN0IG5nRGVjb3JhdG9ycyA9IHBhcmFtLmRlY29yYXRvcnMuZmlsdGVyKGRlYyA9PiBpc0FuZ3VsYXJEZWNvcmF0b3IoZGVjLCBpc0NvcmUpKVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAubWFwKChkZWNvcmF0b3I6IERlY29yYXRvcikgPT4gZGVjb3JhdG9yVG9NZXRhZGF0YShkZWNvcmF0b3IpKTtcbiAgICBjb25zdCB2YWx1ZSA9IG5ldyBXcmFwcGVkTm9kZUV4cHIodHMuY3JlYXRlQXJyYXlMaXRlcmFsKG5nRGVjb3JhdG9ycykpO1xuICAgIG1hcEVudHJpZXMucHVzaCh7a2V5OiAnZGVjb3JhdG9ycycsIHZhbHVlLCBxdW90ZWQ6IGZhbHNlfSk7XG4gIH1cbiAgcmV0dXJuIGxpdGVyYWxNYXAobWFwRW50cmllcyk7XG59XG5cbi8qKlxuICogQ29udmVydCBhIHJlZmxlY3RlZCBjbGFzcyBtZW1iZXIgdG8gbWV0YWRhdGEuXG4gKi9cbmZ1bmN0aW9uIGNsYXNzTWVtYmVyVG9NZXRhZGF0YShcbiAgICBuYW1lOiB0cy5Qcm9wZXJ0eU5hbWV8c3RyaW5nLCBkZWNvcmF0b3JzOiBEZWNvcmF0b3JbXSwgaXNDb3JlOiBib29sZWFuKTogdHMuUHJvcGVydHlBc3NpZ25tZW50IHtcbiAgY29uc3QgbmdEZWNvcmF0b3JzID0gZGVjb3JhdG9ycy5maWx0ZXIoZGVjID0+IGlzQW5ndWxhckRlY29yYXRvcihkZWMsIGlzQ29yZSkpXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAubWFwKChkZWNvcmF0b3I6IERlY29yYXRvcikgPT4gZGVjb3JhdG9yVG9NZXRhZGF0YShkZWNvcmF0b3IpKTtcbiAgY29uc3QgZGVjb3JhdG9yTWV0YSA9IHRzLmNyZWF0ZUFycmF5TGl0ZXJhbChuZ0RlY29yYXRvcnMpO1xuICByZXR1cm4gdHMuY3JlYXRlUHJvcGVydHlBc3NpZ25tZW50KG5hbWUsIGRlY29yYXRvck1ldGEpO1xufVxuXG4vKipcbiAqIENvbnZlcnQgYSByZWZsZWN0ZWQgZGVjb3JhdG9yIHRvIG1ldGFkYXRhLlxuICovXG5mdW5jdGlvbiBkZWNvcmF0b3JUb01ldGFkYXRhKFxuICAgIGRlY29yYXRvcjogRGVjb3JhdG9yLCB3cmFwRnVuY3Rpb25zSW5QYXJlbnM/OiBib29sZWFuKTogdHMuT2JqZWN0TGl0ZXJhbEV4cHJlc3Npb24ge1xuICBpZiAoZGVjb3JhdG9yLmlkZW50aWZpZXIgPT09IG51bGwpIHtcbiAgICB0aHJvdyBuZXcgRXJyb3IoJ0lsbGVnYWwgc3RhdGU6IHN5bnRoZXNpemVkIGRlY29yYXRvciBjYW5ub3QgYmUgZW1pdHRlZCBpbiBjbGFzcyBtZXRhZGF0YS4nKTtcbiAgfVxuICAvLyBEZWNvcmF0b3JzIGhhdmUgYSB0eXBlLlxuICBjb25zdCBwcm9wZXJ0aWVzOiB0cy5PYmplY3RMaXRlcmFsRWxlbWVudExpa2VbXSA9IFtcbiAgICB0cy5jcmVhdGVQcm9wZXJ0eUFzc2lnbm1lbnQoJ3R5cGUnLCB0cy5nZXRNdXRhYmxlQ2xvbmUoZGVjb3JhdG9yLmlkZW50aWZpZXIpKSxcbiAgXTtcbiAgLy8gU29tZXRpbWVzIHRoZXkgaGF2ZSBhcmd1bWVudHMuXG4gIGlmIChkZWNvcmF0b3IuYXJncyAhPT0gbnVsbCAmJiBkZWNvcmF0b3IuYXJncy5sZW5ndGggPiAwKSB7XG4gICAgY29uc3QgYXJncyA9IGRlY29yYXRvci5hcmdzLm1hcChhcmcgPT4ge1xuICAgICAgY29uc3QgZXhwciA9IHRzLmdldE11dGFibGVDbG9uZShhcmcpO1xuICAgICAgcmV0dXJuIHdyYXBGdW5jdGlvbnNJblBhcmVucyA/IHdyYXBGdW5jdGlvbkV4cHJlc3Npb25zSW5QYXJlbnMoZXhwcikgOiBleHByO1xuICAgIH0pO1xuICAgIHByb3BlcnRpZXMucHVzaCh0cy5jcmVhdGVQcm9wZXJ0eUFzc2lnbm1lbnQoJ2FyZ3MnLCB0cy5jcmVhdGVBcnJheUxpdGVyYWwoYXJncykpKTtcbiAgfVxuICByZXR1cm4gdHMuY3JlYXRlT2JqZWN0TGl0ZXJhbChwcm9wZXJ0aWVzLCB0cnVlKTtcbn1cblxuLyoqXG4gKiBXaGV0aGVyIGEgZ2l2ZW4gZGVjb3JhdG9yIHNob3VsZCBiZSB0cmVhdGVkIGFzIGFuIEFuZ3VsYXIgZGVjb3JhdG9yLlxuICpcbiAqIEVpdGhlciBpdCdzIHVzZWQgaW4gQGFuZ3VsYXIvY29yZSwgb3IgaXQncyBpbXBvcnRlZCBmcm9tIHRoZXJlLlxuICovXG5mdW5jdGlvbiBpc0FuZ3VsYXJEZWNvcmF0b3IoZGVjb3JhdG9yOiBEZWNvcmF0b3IsIGlzQ29yZTogYm9vbGVhbik6IGJvb2xlYW4ge1xuICByZXR1cm4gaXNDb3JlIHx8IChkZWNvcmF0b3IuaW1wb3J0ICE9PSBudWxsICYmIGRlY29yYXRvci5pbXBvcnQuZnJvbSA9PT0gJ0Bhbmd1bGFyL2NvcmUnKTtcbn1cbiJdfQ==