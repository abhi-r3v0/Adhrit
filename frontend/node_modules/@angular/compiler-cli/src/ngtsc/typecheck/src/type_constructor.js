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
        define("@angular/compiler-cli/src/ngtsc/typecheck/src/type_constructor", ["require", "exports", "tslib", "typescript", "@angular/compiler-cli/src/ngtsc/typecheck/src/type_parameter_emitter"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.requiresInlineTypeCtor = exports.generateInlineTypeCtor = exports.generateTypeCtorDeclarationFn = void 0;
    var tslib_1 = require("tslib");
    var ts = require("typescript");
    var type_parameter_emitter_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/type_parameter_emitter");
    function generateTypeCtorDeclarationFn(node, meta, nodeTypeRef, typeParams, reflector) {
        if (requiresInlineTypeCtor(node, reflector)) {
            throw new Error(node.name.text + " requires an inline type constructor");
        }
        var rawTypeArgs = typeParams !== undefined ? generateGenericArgs(typeParams) : undefined;
        var rawType = ts.createTypeReferenceNode(nodeTypeRef, rawTypeArgs);
        var initParam = constructTypeCtorParameter(node, meta, rawType);
        var typeParameters = typeParametersWithDefaultTypes(typeParams);
        if (meta.body) {
            var fnType = ts.createFunctionTypeNode(
            /* typeParameters */ typeParameters, 
            /* parameters */ [initParam], 
            /* type */ rawType);
            var decl = ts.createVariableDeclaration(
            /* name */ meta.fnName, 
            /* type */ fnType, 
            /* body */ ts.createNonNullExpression(ts.createNull()));
            var declList = ts.createVariableDeclarationList([decl], ts.NodeFlags.Const);
            return ts.createVariableStatement(
            /* modifiers */ undefined, 
            /* declarationList */ declList);
        }
        else {
            return ts.createFunctionDeclaration(
            /* decorators */ undefined, 
            /* modifiers */ [ts.createModifier(ts.SyntaxKind.DeclareKeyword)], 
            /* asteriskToken */ undefined, 
            /* name */ meta.fnName, 
            /* typeParameters */ typeParameters, 
            /* parameters */ [initParam], 
            /* type */ rawType, 
            /* body */ undefined);
        }
    }
    exports.generateTypeCtorDeclarationFn = generateTypeCtorDeclarationFn;
    /**
     * Generate an inline type constructor for the given class and metadata.
     *
     * An inline type constructor is a specially shaped TypeScript static method, intended to be placed
     * within a directive class itself, that permits type inference of any generic type parameters of
     * the class from the types of expressions bound to inputs or outputs, and the types of elements
     * that match queries performed by the directive. It also catches any errors in the types of these
     * expressions. This method is never called at runtime, but is used in type-check blocks to
     * construct directive types.
     *
     * An inline type constructor for NgFor looks like:
     *
     * static ngTypeCtor<T>(init: Pick<NgForOf<T>, 'ngForOf'|'ngForTrackBy'|'ngForTemplate'>):
     *   NgForOf<T>;
     *
     * A typical constructor would be:
     *
     * NgForOf.ngTypeCtor(init: {
     *   ngForOf: ['foo', 'bar'],
     *   ngForTrackBy: null as any,
     *   ngForTemplate: null as any,
     * }); // Infers a type of NgForOf<string>.
     *
     * Any inputs declared on the type for which no property binding is present are assigned a value of
     * type `any`, to avoid producing any type errors for unset inputs.
     *
     * Inline type constructors are used when the type being created has bounded generic types which
     * make writing a declared type constructor (via `generateTypeCtorDeclarationFn`) difficult or
     * impossible.
     *
     * @param node the `ClassDeclaration<ts.ClassDeclaration>` for which a type constructor will be
     * generated.
     * @param meta additional metadata required to generate the type constructor.
     * @returns a `ts.MethodDeclaration` for the type constructor.
     */
    function generateInlineTypeCtor(node, meta) {
        // Build rawType, a `ts.TypeNode` of the class with its generic parameters passed through from
        // the definition without any type bounds. For example, if the class is
        // `FooDirective<T extends Bar>`, its rawType would be `FooDirective<T>`.
        var rawTypeArgs = node.typeParameters !== undefined ? generateGenericArgs(node.typeParameters) : undefined;
        var rawType = ts.createTypeReferenceNode(node.name, rawTypeArgs);
        var initParam = constructTypeCtorParameter(node, meta, rawType);
        // If this constructor is being generated into a .ts file, then it needs a fake body. The body
        // is set to a return of `null!`. If the type constructor is being generated into a .d.ts file,
        // it needs no body.
        var body = undefined;
        if (meta.body) {
            body = ts.createBlock([
                ts.createReturn(ts.createNonNullExpression(ts.createNull())),
            ]);
        }
        // Create the type constructor method declaration.
        return ts.createMethod(
        /* decorators */ undefined, 
        /* modifiers */ [ts.createModifier(ts.SyntaxKind.StaticKeyword)], 
        /* asteriskToken */ undefined, 
        /* name */ meta.fnName, 
        /* questionToken */ undefined, 
        /* typeParameters */ typeParametersWithDefaultTypes(node.typeParameters), 
        /* parameters */ [initParam], 
        /* type */ rawType, 
        /* body */ body);
    }
    exports.generateInlineTypeCtor = generateInlineTypeCtor;
    function constructTypeCtorParameter(node, meta, rawType) {
        var e_1, _a;
        // initType is the type of 'init', the single argument to the type constructor method.
        // If the Directive has any inputs, its initType will be:
        //
        // Pick<rawType, 'inputA'|'inputB'>
        //
        // Pick here is used to select only those fields from which the generic type parameters of the
        // directive will be inferred.
        //
        // In the special case there are no inputs, initType is set to {}.
        var initType = null;
        var keys = meta.fields.inputs;
        var plainKeys = [];
        var coercedKeys = [];
        try {
            for (var keys_1 = tslib_1.__values(keys), keys_1_1 = keys_1.next(); !keys_1_1.done; keys_1_1 = keys_1.next()) {
                var key = keys_1_1.value;
                if (!meta.coercedInputFields.has(key)) {
                    plainKeys.push(ts.createLiteralTypeNode(ts.createStringLiteral(key)));
                }
                else {
                    coercedKeys.push(ts.createPropertySignature(
                    /* modifiers */ undefined, 
                    /* name */ key, 
                    /* questionToken */ undefined, 
                    /* type */
                    ts.createTypeQueryNode(ts.createQualifiedName(rawType.typeName, "ngAcceptInputType_" + key)), 
                    /* initializer */ undefined));
                }
            }
        }
        catch (e_1_1) { e_1 = { error: e_1_1 }; }
        finally {
            try {
                if (keys_1_1 && !keys_1_1.done && (_a = keys_1.return)) _a.call(keys_1);
            }
            finally { if (e_1) throw e_1.error; }
        }
        if (plainKeys.length > 0) {
            // Construct a union of all the field names.
            var keyTypeUnion = ts.createUnionTypeNode(plainKeys);
            // Construct the Pick<rawType, keyTypeUnion>.
            initType = ts.createTypeReferenceNode('Pick', [rawType, keyTypeUnion]);
        }
        if (coercedKeys.length > 0) {
            var coercedLiteral = ts.createTypeLiteralNode(coercedKeys);
            initType =
                initType !== null ? ts.createUnionTypeNode([initType, coercedLiteral]) : coercedLiteral;
        }
        if (initType === null) {
            // Special case - no inputs, outputs, or other fields which could influence the result type.
            initType = ts.createTypeLiteralNode([]);
        }
        // Create the 'init' parameter itself.
        return ts.createParameter(
        /* decorators */ undefined, 
        /* modifiers */ undefined, 
        /* dotDotDotToken */ undefined, 
        /* name */ 'init', 
        /* questionToken */ undefined, 
        /* type */ initType, 
        /* initializer */ undefined);
    }
    function generateGenericArgs(params) {
        return params.map(function (param) { return ts.createTypeReferenceNode(param.name, undefined); });
    }
    function requiresInlineTypeCtor(node, host) {
        // The class requires an inline type constructor if it has generic type bounds that can not be
        // emitted into a different context.
        return !checkIfGenericTypeBoundsAreContextFree(node, host);
    }
    exports.requiresInlineTypeCtor = requiresInlineTypeCtor;
    function checkIfGenericTypeBoundsAreContextFree(node, reflector) {
        // Generic type parameters are considered context free if they can be emitted into any context.
        return new type_parameter_emitter_1.TypeParameterEmitter(node.typeParameters, reflector).canEmit();
    }
    /**
     * Add a default `= any` to type parameters that don't have a default value already.
     *
     * TypeScript uses the default type of a type parameter whenever inference of that parameter fails.
     * This can happen when inferring a complex type from 'any'. For example, if `NgFor`'s inference is
     * done with the TCB code:
     *
     * ```
     * class NgFor<T> {
     *   ngForOf: T[];
     * }
     *
     * declare function ctor<T>(o: Pick<NgFor<T>, 'ngForOf'|'ngForTrackBy'|'ngForTemplate'>): NgFor<T>;
     * ```
     *
     * An invocation looks like:
     *
     * ```
     * var _t1 = ctor({ngForOf: [1, 2], ngForTrackBy: null as any, ngForTemplate: null as any});
     * ```
     *
     * This correctly infers the type `NgFor<number>` for `_t1`, since `T` is inferred from the
     * assignment of type `number[]` to `ngForOf`'s type `T[]`. However, if `any` is passed instead:
     *
     * ```
     * var _t2 = ctor({ngForOf: [1, 2] as any, ngForTrackBy: null as any, ngForTemplate: null as any});
     * ```
     *
     * then inference for `T` fails (it cannot be inferred from `T[] = any`). In this case, `T` takes
     * the type `{}`, and so `_t2` is inferred as `NgFor<{}>`. This is obviously wrong.
     *
     * Adding a default type to the generic declaration in the constructor solves this problem, as the
     * default type will be used in the event that inference fails.
     *
     * ```
     * declare function ctor<T = any>(o: Pick<NgFor<T>, 'ngForOf'>): NgFor<T>;
     *
     * var _t3 = ctor({ngForOf: [1, 2] as any});
     * ```
     *
     * This correctly infers `T` as `any`, and therefore `_t3` as `NgFor<any>`.
     */
    function typeParametersWithDefaultTypes(params) {
        if (params === undefined) {
            return undefined;
        }
        return params.map(function (param) {
            if (param.default === undefined) {
                return ts.updateTypeParameterDeclaration(
                /* node */ param, 
                /* name */ param.name, 
                /* constraint */ param.constraint, 
                /* defaultType */ ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword));
            }
            else {
                return param;
            }
        });
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidHlwZV9jb25zdHJ1Y3Rvci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyLWNsaS9zcmMvbmd0c2MvdHlwZWNoZWNrL3NyYy90eXBlX2NvbnN0cnVjdG9yLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7Ozs7SUFFSCwrQkFBaUM7SUFLakMsK0dBQThEO0lBRTlELFNBQWdCLDZCQUE2QixDQUN6QyxJQUEyQyxFQUFFLElBQXNCLEVBQUUsV0FBMEIsRUFDL0YsVUFBbUQsRUFBRSxTQUF5QjtRQUNoRixJQUFJLHNCQUFzQixDQUFDLElBQUksRUFBRSxTQUFTLENBQUMsRUFBRTtZQUMzQyxNQUFNLElBQUksS0FBSyxDQUFJLElBQUksQ0FBQyxJQUFJLENBQUMsSUFBSSx5Q0FBc0MsQ0FBQyxDQUFDO1NBQzFFO1FBRUQsSUFBTSxXQUFXLEdBQUcsVUFBVSxLQUFLLFNBQVMsQ0FBQyxDQUFDLENBQUMsbUJBQW1CLENBQUMsVUFBVSxDQUFDLENBQUMsQ0FBQyxDQUFDLFNBQVMsQ0FBQztRQUMzRixJQUFNLE9BQU8sR0FBRyxFQUFFLENBQUMsdUJBQXVCLENBQUMsV0FBVyxFQUFFLFdBQVcsQ0FBQyxDQUFDO1FBRXJFLElBQU0sU0FBUyxHQUFHLDBCQUEwQixDQUFDLElBQUksRUFBRSxJQUFJLEVBQUUsT0FBTyxDQUFDLENBQUM7UUFFbEUsSUFBTSxjQUFjLEdBQUcsOEJBQThCLENBQUMsVUFBVSxDQUFDLENBQUM7UUFFbEUsSUFBSSxJQUFJLENBQUMsSUFBSSxFQUFFO1lBQ2IsSUFBTSxNQUFNLEdBQUcsRUFBRSxDQUFDLHNCQUFzQjtZQUNwQyxvQkFBb0IsQ0FBQyxjQUFjO1lBQ25DLGdCQUFnQixDQUFBLENBQUMsU0FBUyxDQUFDO1lBQzNCLFVBQVUsQ0FBQyxPQUFPLENBQ3JCLENBQUM7WUFFRixJQUFNLElBQUksR0FBRyxFQUFF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QUFJLDZDQUFvQixDQUFDLElBQUksQ0FBQyxjQUFjLEVBQUUsU0FBUyxDQUFDLENBQUMsT0FBTyxFQUFFLENBQUM7SUFDNUUsQ0FBQztJQUVEOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztPQXlDRztJQUNILFNBQVMsOEJBQThCLENBQUMsTUFDUztRQUMvQyxJQUFJLE1BQU0sS0FBSyxTQUFTLEVBQUU7WUFDeEIsT0FBTyxTQUFTLENBQUM7U0FDbEI7UUFFRCxPQUFPLE1BQU0sQ0FBQyxHQUFHLENBQUMsVUFBQSxLQUFLO1lBQ3JCLElBQUksS0FBSyxDQUFDLE9BQU8sS0FBSyxTQUFTLEVBQUU7Z0JBQy9CLE9BQU8sRUFBRSxDQUFDLDhCQUE4QjtnQkFDcEMsVUFBVSxDQUFDLEtBQUs7Z0JBQ2hCLFVBQVUsQ0FBQyxLQUFLLENBQUMsSUFBSTtnQkFDckIsZ0JBQWdCLENBQUMsS0FBSyxDQUFDLFVBQVU7Z0JBQ2pDLGlCQUFpQixDQUFDLEVBQUUsQ0FBQyxxQkFBcUIsQ0FBQyxFQUFFLENBQUMsVUFBVSxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUM7YUFDM0U7aUJBQU07Z0JBQ0wsT0FBTyxLQUFLLENBQUM7YUFDZDtRQUNILENBQUMsQ0FBQyxDQUFDO0lBQ0wsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtDbGFzc0RlY2xhcmF0aW9uLCBSZWZsZWN0aW9uSG9zdH0gZnJvbSAnLi4vLi4vcmVmbGVjdGlvbic7XG5pbXBvcnQge1R5cGVDdG9yTWV0YWRhdGF9IGZyb20gJy4uL2FwaSc7XG5cbmltcG9ydCB7VHlwZVBhcmFtZXRlckVtaXR0ZXJ9IGZyb20gJy4vdHlwZV9wYXJhbWV0ZXJfZW1pdHRlcic7XG5cbmV4cG9ydCBmdW5jdGlvbiBnZW5lcmF0ZVR5cGVDdG9yRGVjbGFyYXRpb25GbihcbiAgICBub2RlOiBDbGFzc0RlY2xhcmF0aW9uPHRzLkNsYXNzRGVjbGFyYXRpb24+LCBtZXRhOiBUeXBlQ3Rvck1ldGFkYXRhLCBub2RlVHlwZVJlZjogdHMuRW50aXR5TmFtZSxcbiAgICB0eXBlUGFyYW1zOiB0cy5UeXBlUGFyYW1ldGVyRGVjbGFyYXRpb25bXXx1bmRlZmluZWQsIHJlZmxlY3RvcjogUmVmbGVjdGlvbkhvc3QpOiB0cy5TdGF0ZW1lbnQge1xuICBpZiAocmVxdWlyZXNJbmxpbmVUeXBlQ3Rvcihub2RlLCByZWZsZWN0b3IpKSB7XG4gICAgdGhyb3cgbmV3IEVycm9yKGAke25vZGUubmFtZS50ZXh0fSByZXF1aXJlcyBhbiBpbmxpbmUgdHlwZSBjb25zdHJ1Y3RvcmApO1xuICB9XG5cbiAgY29uc3QgcmF3VHlwZUFyZ3MgPSB0eXBlUGFyYW1zICE9PSB1bmRlZmluZWQgPyBnZW5lcmF0ZUdlbmVyaWNBcmdzKHR5cGVQYXJhbXMpIDogdW5kZWZpbmVkO1xuICBjb25zdCByYXdUeXBlID0gdHMuY3JlYXRlVHlwZVJlZmVyZW5jZU5vZGUobm9kZVR5cGVSZWYsIHJhd1R5cGVBcmdzKTtcblxuICBjb25zdCBpbml0UGFyYW0gPSBjb25zdHJ1Y3RUeXBlQ3RvclBhcmFtZXRlcihub2RlLCBtZXRhLCByYXdUeXBlKTtcblxuICBjb25zdCB0eXBlUGFyYW1ldGVycyA9IHR5cGVQYXJhbWV0ZXJzV2l0aERlZmF1bHRUeXBlcyh0eXBlUGFyYW1zKTtcblxuICBpZiAobWV0YS5ib2R5KSB7XG4gICAgY29uc3QgZm5UeXBlID0gdHMuY3JlYXRlRnVuY3Rpb25UeXBlTm9kZShcbiAgICAgICAgLyogdHlwZVBhcmFtZXRlcnMgKi8gdHlwZVBhcmFtZXRlcnMsXG4gICAgICAgIC8qIHBhcmFtZXRlcnMgKi9baW5pdFBhcmFtXSxcbiAgICAgICAgLyogdHlwZSAqLyByYXdUeXBlLFxuICAgICk7XG5cbiAgICBjb25zdCBkZWNsID0gdHMuY3JlYXRlVmFyaWFibGVEZWNsYXJhdGlvbihcbiAgICAgICAgLyogbmFtZSAqLyBtZXRhLmZuTmFtZSxcbiAgICAgICAgLyogdHlwZSAqLyBmblR5cGUsXG4gICAgICAgIC8qIGJvZHkgKi8gdHMuY3JlYXRlTm9uTnVsbEV4cHJlc3Npb24odHMuY3JlYXRlTnVsbCgpKSk7XG4gICAgY29uc3QgZGVjbExpc3QgPSB0cy5jcmVhdGVWYXJpYWJsZURlY2xhcmF0aW9uTGlzdChbZGVjbF0sIHRzLk5vZGVGbGFncy5Db25zdCk7XG4gICAgcmV0dXJuIHRzLmNyZWF0ZVZhcmlhYmxlU3RhdGVtZW50KFxuICAgICAgICAvKiBtb2RpZmllcnMgKi8gdW5kZWZpbmVkLFxuICAgICAgICAvKiBkZWNsYXJhdGlvbkxpc3QgKi8gZGVjbExpc3QpO1xuICB9IGVsc2Uge1xuICAgIHJldHVybiB0cy5jcmVhdGVGdW5jdGlvbkRlY2xhcmF0aW9uKFxuICAgICAgICAvKiBkZWNvcmF0b3JzICovIHVuZGVmaW5lZCxcbiAgICAgICAgLyogbW9kaWZpZXJzICovW3RzLmNyZWF0ZU1vZGlmaWVyKHRzLlN5bnRheEtpbmQuRGVjbGFyZUtleXdvcmQpXSxcbiAgICAgICAgLyogYXN0ZXJpc2tUb2tlbiAqLyB1bmRlZmluZWQsXG4gICAgICAgIC8qIG5hbWUgKi8gbWV0YS5mbk5hbWUsXG4gICAgICAgIC8qIHR5cGVQYXJhbWV0ZXJzICovIHR5cGVQYXJhbWV0ZXJzLFxuICAgICAgICAvKiBwYXJhbWV0ZXJzICovW2luaXRQYXJhbV0sXG4gICAgICAgIC8qIHR5cGUgKi8gcmF3VHlwZSxcbiAgICAgICAgLyogYm9keSAqLyB1bmRlZmluZWQpO1xuICB9XG59XG5cbi8qKlxuICogR2VuZXJhdGUgYW4gaW5saW5lIHR5cGUgY29uc3RydWN0b3IgZm9yIHRoZSBnaXZlbiBjbGFzcyBhbmQgbWV0YWRhdGEuXG4gKlxuICogQW4gaW5saW5lIHR5cGUgY29uc3RydWN0b3IgaXMgYSBzcGVjaWFsbHkgc2hhcGVkIFR5cGVTY3JpcHQgc3RhdGljIG1ldGhvZCwgaW50ZW5kZWQgdG8gYmUgcGxhY2VkXG4gKiB3aXRoaW4gYSBkaXJlY3RpdmUgY2xhc3MgaXRzZWxmLCB0aGF0IHBlcm1pdHMgdHlwZSBpbmZlcmVuY2Ugb2YgYW55IGdlbmVyaWMgdHlwZSBwYXJhbWV0ZXJzIG9mXG4gKiB0aGUgY2xhc3MgZnJvbSB0aGUgdHlwZXMgb2YgZXhwcmVzc2lvbnMgYm91bmQgdG8gaW5wdXRzIG9yIG91dHB1dHMsIGFuZCB0aGUgdHlwZXMgb2YgZWxlbWVudHNcbiAqIHRoYXQgbWF0Y2ggcXVlcmllcyBwZXJmb3JtZWQgYnkgdGhlIGRpcmVjdGl2ZS4gSXQgYWxzbyBjYXRjaGVzIGFueSBlcnJvcnMgaW4gdGhlIHR5cGVzIG9mIHRoZXNlXG4gKiBleHByZXNzaW9ucy4gVGhpcyBtZXRob2QgaXMgbmV2ZXIgY2FsbGVkIGF0IHJ1bnRpbWUsIGJ1dCBpcyB1c2VkIGluIHR5cGUtY2hlY2sgYmxvY2tzIHRvXG4gKiBjb25zdHJ1Y3QgZGlyZWN0aXZlIHR5cGVzLlxuICpcbiAqIEFuIGlubGluZSB0eXBlIGNvbnN0cnVjdG9yIGZvciBOZ0ZvciBsb29rcyBsaWtlOlxuICpcbiAqIHN0YXRpYyBuZ1R5cGVDdG9yPFQ+KGluaXQ6IFBpY2s8TmdGb3JPZjxUPiwgJ25nRm9yT2YnfCduZ0ZvclRyYWNrQnknfCduZ0ZvclRlbXBsYXRlJz4pOlxuICogICBOZ0Zvck9mPFQ+O1xuICpcbiAqIEEgdHlwaWNhbCBjb25zdHJ1Y3RvciB3b3VsZCBiZTpcbiAqXG4gKiBOZ0Zvck9mLm5nVHlwZUN0b3IoaW5pdDoge1xuICogICBuZ0Zvck9mOiBbJ2ZvbycsICdiYXInXSxcbiAqICAgbmdGb3JUcmFja0J5OiBudWxsIGFzIGFueSxcbiAqICAgbmdGb3JUZW1wbGF0ZTogbnVsbCBhcyBhbnksXG4gKiB9KTsgLy8gSW5mZXJzIGEgdHlwZSBvZiBOZ0Zvck9mPHN0cmluZz4uXG4gKlxuICogQW55IGlucHV0cyBkZWNsYXJlZCBvbiB0aGUgdHlwZSBmb3Igd2hpY2ggbm8gcHJvcGVydHkgYmluZGluZyBpcyBwcmVzZW50IGFyZSBhc3NpZ25lZCBhIHZhbHVlIG9mXG4gKiB0eXBlIGBhbnlgLCB0byBhdm9pZCBwcm9kdWNpbmcgYW55IHR5cGUgZXJyb3JzIGZvciB1bnNldCBpbnB1dHMuXG4gKlxuICogSW5saW5lIHR5cGUgY29uc3RydWN0b3JzIGFyZSB1c2VkIHdoZW4gdGhlIHR5cGUgYmVpbmcgY3JlYXRlZCBoYXMgYm91bmRlZCBnZW5lcmljIHR5cGVzIHdoaWNoXG4gKiBtYWtlIHdyaXRpbmcgYSBkZWNsYXJlZCB0eXBlIGNvbnN0cnVjdG9yICh2aWEgYGdlbmVyYXRlVHlwZUN0b3JEZWNsYXJhdGlvbkZuYCkgZGlmZmljdWx0IG9yXG4gKiBpbXBvc3NpYmxlLlxuICpcbiAqIEBwYXJhbSBub2RlIHRoZSBgQ2xhc3NEZWNsYXJhdGlvbjx0cy5DbGFzc0RlY2xhcmF0aW9uPmAgZm9yIHdoaWNoIGEgdHlwZSBjb25zdHJ1Y3RvciB3aWxsIGJlXG4gKiBnZW5lcmF0ZWQuXG4gKiBAcGFyYW0gbWV0YSBhZGRpdGlvbmFsIG1ldGFkYXRhIHJlcXVpcmVkIHRvIGdlbmVyYXRlIHRoZSB0eXBlIGNvbnN0cnVjdG9yLlxuICogQHJldHVybnMgYSBgdHMuTWV0aG9kRGVjbGFyYXRpb25gIGZvciB0aGUgdHlwZSBjb25zdHJ1Y3Rvci5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdlbmVyYXRlSW5saW5lVHlwZUN0b3IoXG4gICAgbm9kZTogQ2xhc3NEZWNsYXJhdGlvbjx0cy5DbGFzc0RlY2xhcmF0aW9uPiwgbWV0YTogVHlwZUN0b3JNZXRhZGF0YSk6IHRzLk1ldGhvZERlY2xhcmF0aW9uIHtcbiAgLy8gQnVpbGQgcmF3VHlwZSwgYSBgdHMuVHlwZU5vZGVgIG9mIHRoZSBjbGFzcyB3aXRoIGl0cyBnZW5lcmljIHBhcmFtZXRlcnMgcGFzc2VkIHRocm91Z2ggZnJvbVxuICAvLyB0aGUgZGVmaW5pdGlvbiB3aXRob3V0IGFueSB0eXBlIGJvdW5kcy4gRm9yIGV4YW1wbGUsIGlmIHRoZSBjbGFzcyBpc1xuICAvLyBgRm9vRGlyZWN0aXZlPFQgZXh0ZW5kcyBCYXI+YCwgaXRzIHJhd1R5cGUgd291bGQgYmUgYEZvb0RpcmVjdGl2ZTxUPmAuXG4gIGNvbnN0IHJhd1R5cGVBcmdzID1cbiAgICAgIG5vZGUudHlwZVBhcmFtZXRlcnMgIT09IHVuZGVmaW5lZCA/IGdlbmVyYXRlR2VuZXJpY0FyZ3Mobm9kZS50eXBlUGFyYW1ldGVycykgOiB1bmRlZmluZWQ7XG4gIGNvbnN0IHJhd1R5cGUgPSB0cy5jcmVhdGVUeXBlUmVmZXJlbmNlTm9kZShub2RlLm5hbWUsIHJhd1R5cGVBcmdzKTtcblxuICBjb25zdCBpbml0UGFyYW0gPSBjb25zdHJ1Y3RUeXBlQ3RvclBhcmFtZXRlcihub2RlLCBtZXRhLCByYXdUeXBlKTtcblxuICAvLyBJZiB0aGlzIGNvbnN0cnVjdG9yIGlzIGJlaW5nIGdlbmVyYXRlZCBpbnRvIGEgLnRzIGZpbGUsIHRoZW4gaXQgbmVlZHMgYSBmYWtlIGJvZHkuIFRoZSBib2R5XG4gIC8vIGlzIHNldCB0byBhIHJldHVybiBvZiBgbnVsbCFgLiBJZiB0aGUgdHlwZSBjb25zdHJ1Y3RvciBpcyBiZWluZyBnZW5lcmF0ZWQgaW50byBhIC5kLnRzIGZpbGUsXG4gIC8vIGl0IG5lZWRzIG5vIGJvZHkuXG4gIGxldCBib2R5OiB0cy5CbG9ja3x1bmRlZmluZWQgPSB1bmRlZmluZWQ7XG4gIGlmIChtZXRhLmJvZHkpIHtcbiAgICBib2R5ID0gdHMuY3JlYXRlQmxvY2soW1xuICAgICAgdHMuY3JlYXRlUmV0dXJuKHRzLmNyZWF0ZU5vbk51bGxFeHByZXNzaW9uKHRzLmNyZWF0ZU51bGwoKSkpLFxuICAgIF0pO1xuICB9XG5cbiAgLy8gQ3JlYXRlIHRoZSB0eXBlIGNvbnN0cnVjdG9yIG1ldGhvZCBkZWNsYXJhdGlvbi5cbiAgcmV0dXJuIHRzLmNyZWF0ZU1ldGhvZChcbiAgICAgIC8qIGRlY29yYXRvcnMgKi8gdW5kZWZpbmVkLFxuICAgICAgLyogbW9kaWZpZXJzICovW3RzLmNyZWF0ZU1vZGlmaWVyKHRzLlN5bnRheEtpbmQuU3RhdGljS2V5d29yZCldLFxuICAgICAgLyogYXN0ZXJpc2tUb2tlbiAqLyB1bmRlZmluZWQsXG4gICAgICAvKiBuYW1lICovIG1ldGEuZm5OYW1lLFxuICAgICAgLyogcXVlc3Rpb25Ub2tlbiAqLyB1bmRlZmluZWQsXG4gICAgICAvKiB0eXBlUGFyYW1ldGVycyAqLyB0eXBlUGFyYW1ldGVyc1dpdGhEZWZhdWx0VHlwZXMobm9kZS50eXBlUGFyYW1ldGVycyksXG4gICAgICAvKiBwYXJhbWV0ZXJzICovW2luaXRQYXJhbV0sXG4gICAgICAvKiB0eXBlICovIHJhd1R5cGUsXG4gICAgICAvKiBib2R5ICovIGJvZHksXG4gICk7XG59XG5cbmZ1bmN0aW9uIGNvbnN0cnVjdFR5cGVDdG9yUGFyYW1ldGVyKFxuICAgIG5vZGU6IENsYXNzRGVjbGFyYXRpb248dHMuQ2xhc3NEZWNsYXJhdGlvbj4sIG1ldGE6IFR5cGVDdG9yTWV0YWRhdGEsXG4gICAgcmF3VHlwZTogdHMuVHlwZVJlZmVyZW5jZU5vZGUpOiB0cy5QYXJhbWV0ZXJEZWNsYXJhdGlvbiB7XG4gIC8vIGluaXRUeXBlIGlzIHRoZSB0eXBlIG9mICdpbml0JywgdGhlIHNpbmdsZSBhcmd1bWVudCB0byB0aGUgdHlwZSBjb25zdHJ1Y3RvciBtZXRob2QuXG4gIC8vIElmIHRoZSBEaXJlY3RpdmUgaGFzIGFueSBpbnB1dHMsIGl0cyBpbml0VHlwZSB3aWxsIGJlOlxuICAvL1xuICAvLyBQaWNrPHJhd1R5cGUsICdpbnB1dEEnfCdpbnB1dEInPlxuICAvL1xuICAvLyBQaWNrIGhlcmUgaXMgdXNlZCB0byBzZWxlY3Qgb25seSB0aG9zZSBmaWVsZHMgZnJvbSB3aGljaCB0aGUgZ2VuZXJpYyB0eXBlIHBhcmFtZXRlcnMgb2YgdGhlXG4gIC8vIGRpcmVjdGl2ZSB3aWxsIGJlIGluZmVycmVkLlxuICAvL1xuICAvLyBJbiB0aGUgc3BlY2lhbCBjYXNlIHRoZXJlIGFyZSBubyBpbnB1dHMsIGluaXRUeXBlIGlzIHNldCB0byB7fS5cbiAgbGV0IGluaXRUeXBlOiB0cy5UeXBlTm9kZXxudWxsID0gbnVsbDtcblxuICBjb25zdCBrZXlzOiBzdHJpbmdbXSA9IG1ldGEuZmllbGRzLmlucHV0cztcbiAgY29uc3QgcGxhaW5LZXlzOiB0cy5MaXRlcmFsVHlwZU5vZGVbXSA9IFtdO1xuICBjb25zdCBjb2VyY2VkS2V5czogdHMuUHJvcGVydHlTaWduYXR1cmVbXSA9IFtdO1xuICBmb3IgKGNvbnN0IGtleSBvZiBrZXlzKSB7XG4gICAgaWYgKCFtZXRhLmNvZXJjZWRJbnB1dEZpZWxkcy5oYXMoa2V5KSkge1xuICAgICAgcGxhaW5LZXlzLnB1c2godHMuY3JlYXRlTGl0ZXJhbFR5cGVOb2RlKHRzLmNyZWF0ZVN0cmluZ0xpdGVyYWwoa2V5KSkpO1xuICAgIH0gZWxzZSB7XG4gICAgICBjb2VyY2VkS2V5cy5wdXNoKHRzLmNyZWF0ZVByb3BlcnR5U2lnbmF0dXJlKFxuICAgICAgICAgIC8qIG1vZGlmaWVycyAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgLyogbmFtZSAqLyBrZXksXG4gICAgICAgICAgLyogcXVlc3Rpb25Ub2tlbiAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgLyogdHlwZSAqL1xuICAgICAgICAgIHRzLmNyZWF0ZVR5cGVRdWVyeU5vZGUoXG4gICAgICAgICAgICAgIHRzLmNyZWF0ZVF1YWxpZmllZE5hbWUocmF3VHlwZS50eXBlTmFtZSwgYG5nQWNjZXB0SW5wdXRUeXBlXyR7a2V5fWApKSxcbiAgICAgICAgICAvKiBpbml0aWFsaXplciAqLyB1bmRlZmluZWQpKTtcbiAgICB9XG4gIH1cbiAgaWYgKHBsYWluS2V5cy5sZW5ndGggPiAwKSB7XG4gICAgLy8gQ29uc3RydWN0IGEgdW5pb24gb2YgYWxsIHRoZSBmaWVsZCBuYW1lcy5cbiAgICBjb25zdCBrZXlUeXBlVW5pb24gPSB0cy5jcmVhdGVVbmlvblR5cGVOb2RlKHBsYWluS2V5cyk7XG5cbiAgICAvLyBDb25zdHJ1Y3QgdGhlIFBpY2s8cmF3VHlwZSwga2V5VHlwZVVuaW9uPi5cbiAgICBpbml0VHlwZSA9IHRzLmNyZWF0ZVR5cGVSZWZlcmVuY2VOb2RlKCdQaWNrJywgW3Jhd1R5cGUsIGtleVR5cGVVbmlvbl0pO1xuICB9XG4gIGlmIChjb2VyY2VkS2V5cy5sZW5ndGggPiAwKSB7XG4gICAgY29uc3QgY29lcmNlZExpdGVyYWwgPSB0cy5jcmVhdGVUeXBlTGl0ZXJhbE5vZGUoY29lcmNlZEtleXMpO1xuXG4gICAgaW5pdFR5cGUgPVxuICAgICAgICBpbml0VHlwZSAhPT0gbnVsbCA/IHRzLmNyZWF0ZVVuaW9uVHlwZU5vZGUoW2luaXRUeXBlLCBjb2VyY2VkTGl0ZXJhbF0pIDogY29lcmNlZExpdGVyYWw7XG4gIH1cblxuICBpZiAoaW5pdFR5cGUgPT09IG51bGwpIHtcbiAgICAvLyBTcGVjaWFsIGNhc2UgLSBubyBpbnB1dHMsIG91dHB1dHMsIG9yIG90aGVyIGZpZWxkcyB3aGljaCBjb3VsZCBpbmZsdWVuY2UgdGhlIHJlc3VsdCB0eXBlLlxuICAgIGluaXRUeXBlID0gdHMuY3JlYXRlVHlwZUxpdGVyYWxOb2RlKFtdKTtcbiAgfVxuXG4gIC8vIENyZWF0ZSB0aGUgJ2luaXQnIHBhcmFtZXRlciBpdHNlbGYuXG4gIHJldHVybiB0cy5jcmVhdGVQYXJhbWV0ZXIoXG4gICAgICAvKiBkZWNvcmF0b3JzICovIHVuZGVmaW5lZCxcbiAgICAgIC8qIG1vZGlmaWVycyAqLyB1bmRlZmluZWQsXG4gICAgICAvKiBkb3REb3REb3RUb2tlbiAqLyB1bmRlZmluZWQsXG4gICAgICAvKiBuYW1lICovICdpbml0JyxcbiAgICAgIC8qIHF1ZXN0aW9uVG9rZW4gKi8gdW5kZWZpbmVkLFxuICAgICAgLyogdHlwZSAqLyBpbml0VHlwZSxcbiAgICAgIC8qIGluaXRpYWxpemVyICovIHVuZGVmaW5lZCk7XG59XG5cbmZ1bmN0aW9uIGdlbmVyYXRlR2VuZXJpY0FyZ3MocGFyYW1zOiBSZWFkb25seUFycmF5PHRzLlR5cGVQYXJhbWV0ZXJEZWNsYXJhdGlvbj4pOiB0cy5UeXBlTm9kZVtdIHtcbiAgcmV0dXJuIHBhcmFtcy5tYXAocGFyYW0gPT4gdHMuY3JlYXRlVHlwZVJlZmVyZW5jZU5vZGUocGFyYW0ubmFtZSwgdW5kZWZpbmVkKSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiByZXF1aXJlc0lubGluZVR5cGVDdG9yKFxuICAgIG5vZGU6IENsYXNzRGVjbGFyYXRpb248dHMuQ2xhc3NEZWNsYXJhdGlvbj4sIGhvc3Q6IFJlZmxlY3Rpb25Ib3N0KTogYm9vbGVhbiB7XG4gIC8vIFRoZSBjbGFzcyByZXF1aXJlcyBhbiBpbmxpbmUgdHlwZSBjb25zdHJ1Y3RvciBpZiBpdCBoYXMgZ2VuZXJpYyB0eXBlIGJvdW5kcyB0aGF0IGNhbiBub3QgYmVcbiAgLy8gZW1pdHRlZCBpbnRvIGEgZGlmZmVyZW50IGNvbnRleHQuXG4gIHJldHVybiAhY2hlY2tJZkdlbmVyaWNUeXBlQm91bmRzQXJlQ29udGV4dEZyZWUobm9kZSwgaG9zdCk7XG59XG5cbmZ1bmN0aW9uIGNoZWNrSWZHZW5lcmljVHlwZUJvdW5kc0FyZUNvbnRleHRGcmVlKFxuICAgIG5vZGU6IENsYXNzRGVjbGFyYXRpb248dHMuQ2xhc3NEZWNsYXJhdGlvbj4sIHJlZmxlY3RvcjogUmVmbGVjdGlvbkhvc3QpOiBib29sZWFuIHtcbiAgLy8gR2VuZXJpYyB0eXBlIHBhcmFtZXRlcnMgYXJlIGNvbnNpZGVyZWQgY29udGV4dCBmcmVlIGlmIHRoZXkgY2FuIGJlIGVtaXR0ZWQgaW50byBhbnkgY29udGV4dC5cbiAgcmV0dXJuIG5ldyBUeXBlUGFyYW1ldGVyRW1pdHRlcihub2RlLnR5cGVQYXJhbWV0ZXJzLCByZWZsZWN0b3IpLmNhbkVtaXQoKTtcbn1cblxuLyoqXG4gKiBBZGQgYSBkZWZhdWx0IGA9IGFueWAgdG8gdHlwZSBwYXJhbWV0ZXJzIHRoYXQgZG9uJ3QgaGF2ZSBhIGRlZmF1bHQgdmFsdWUgYWxyZWFkeS5cbiAqXG4gKiBUeXBlU2NyaXB0IHVzZXMgdGhlIGRlZmF1bHQgdHlwZSBvZiBhIHR5cGUgcGFyYW1ldGVyIHdoZW5ldmVyIGluZmVyZW5jZSBvZiB0aGF0IHBhcmFtZXRlciBmYWlscy5cbiAqIFRoaXMgY2FuIGhhcHBlbiB3aGVuIGluZmVycmluZyBhIGNvbXBsZXggdHlwZSBmcm9tICdhbnknLiBGb3IgZXhhbXBsZSwgaWYgYE5nRm9yYCdzIGluZmVyZW5jZSBpc1xuICogZG9uZSB3aXRoIHRoZSBUQ0IgY29kZTpcbiAqXG4gKiBgYGBcbiAqIGNsYXNzIE5nRm9yPFQ+IHtcbiAqICAgbmdGb3JPZjogVFtdO1xuICogfVxuICpcbiAqIGRlY2xhcmUgZnVuY3Rpb24gY3RvcjxUPihvOiBQaWNrPE5nRm9yPFQ+LCAnbmdGb3JPZid8J25nRm9yVHJhY2tCeSd8J25nRm9yVGVtcGxhdGUnPik6IE5nRm9yPFQ+O1xuICogYGBgXG4gKlxuICogQW4gaW52b2NhdGlvbiBsb29rcyBsaWtlOlxuICpcbiAqIGBgYFxuICogdmFyIF90MSA9IGN0b3Ioe25nRm9yT2Y6IFsxLCAyXSwgbmdGb3JUcmFja0J5OiBudWxsIGFzIGFueSwgbmdGb3JUZW1wbGF0ZTogbnVsbCBhcyBhbnl9KTtcbiAqIGBgYFxuICpcbiAqIFRoaXMgY29ycmVjdGx5IGluZmVycyB0aGUgdHlwZSBgTmdGb3I8bnVtYmVyPmAgZm9yIGBfdDFgLCBzaW5jZSBgVGAgaXMgaW5mZXJyZWQgZnJvbSB0aGVcbiAqIGFzc2lnbm1lbnQgb2YgdHlwZSBgbnVtYmVyW11gIHRvIGBuZ0Zvck9mYCdzIHR5cGUgYFRbXWAuIEhvd2V2ZXIsIGlmIGBhbnlgIGlzIHBhc3NlZCBpbnN0ZWFkOlxuICpcbiAqIGBgYFxuICogdmFyIF90MiA9IGN0b3Ioe25nRm9yT2Y6IFsxLCAyXSBhcyBhbnksIG5nRm9yVHJhY2tCeTogbnVsbCBhcyBhbnksIG5nRm9yVGVtcGxhdGU6IG51bGwgYXMgYW55fSk7XG4gKiBgYGBcbiAqXG4gKiB0aGVuIGluZmVyZW5jZSBmb3IgYFRgIGZhaWxzIChpdCBjYW5ub3QgYmUgaW5mZXJyZWQgZnJvbSBgVFtdID0gYW55YCkuIEluIHRoaXMgY2FzZSwgYFRgIHRha2VzXG4gKiB0aGUgdHlwZSBge31gLCBhbmQgc28gYF90MmAgaXMgaW5mZXJyZWQgYXMgYE5nRm9yPHt9PmAuIFRoaXMgaXMgb2J2aW91c2x5IHdyb25nLlxuICpcbiAqIEFkZGluZyBhIGRlZmF1bHQgdHlwZSB0byB0aGUgZ2VuZXJpYyBkZWNsYXJhdGlvbiBpbiB0aGUgY29uc3RydWN0b3Igc29sdmVzIHRoaXMgcHJvYmxlbSwgYXMgdGhlXG4gKiBkZWZhdWx0IHR5cGUgd2lsbCBiZSB1c2VkIGluIHRoZSBldmVudCB0aGF0IGluZmVyZW5jZSBmYWlscy5cbiAqXG4gKiBgYGBcbiAqIGRlY2xhcmUgZnVuY3Rpb24gY3RvcjxUID0gYW55PihvOiBQaWNrPE5nRm9yPFQ+LCAnbmdGb3JPZic+KTogTmdGb3I8VD47XG4gKlxuICogdmFyIF90MyA9IGN0b3Ioe25nRm9yT2Y6IFsxLCAyXSBhcyBhbnl9KTtcbiAqIGBgYFxuICpcbiAqIFRoaXMgY29ycmVjdGx5IGluZmVycyBgVGAgYXMgYGFueWAsIGFuZCB0aGVyZWZvcmUgYF90M2AgYXMgYE5nRm9yPGFueT5gLlxuICovXG5mdW5jdGlvbiB0eXBlUGFyYW1ldGVyc1dpdGhEZWZhdWx0VHlwZXMocGFyYW1zOiBSZWFkb25seUFycmF5PHRzLlR5cGVQYXJhbWV0ZXJEZWNsYXJhdGlvbj58XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdW5kZWZpbmVkKTogdHMuVHlwZVBhcmFtZXRlckRlY2xhcmF0aW9uW118dW5kZWZpbmVkIHtcbiAgaWYgKHBhcmFtcyA9PT0gdW5kZWZpbmVkKSB7XG4gICAgcmV0dXJuIHVuZGVmaW5lZDtcbiAgfVxuXG4gIHJldHVybiBwYXJhbXMubWFwKHBhcmFtID0+IHtcbiAgICBpZiAocGFyYW0uZGVmYXVsdCA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICByZXR1cm4gdHMudXBkYXRlVHlwZVBhcmFtZXRlckRlY2xhcmF0aW9uKFxuICAgICAgICAgIC8qIG5vZGUgKi8gcGFyYW0sXG4gICAgICAgICAgLyogbmFtZSAqLyBwYXJhbS5uYW1lLFxuICAgICAgICAgIC8qIGNvbnN0cmFpbnQgKi8gcGFyYW0uY29uc3RyYWludCxcbiAgICAgICAgICAvKiBkZWZhdWx0VHlwZSAqLyB0cy5jcmVhdGVLZXl3b3JkVHlwZU5vZGUodHMuU3ludGF4S2luZC5BbnlLZXl3b3JkKSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHJldHVybiBwYXJhbTtcbiAgICB9XG4gIH0pO1xufVxuIl19