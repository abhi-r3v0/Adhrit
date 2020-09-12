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
        define("@angular/compiler-cli/src/ngtsc/typecheck/src/environment", ["require", "exports", "tslib", "@angular/compiler", "typescript", "@angular/compiler-cli/src/ngtsc/imports", "@angular/compiler-cli/src/ngtsc/translator", "@angular/compiler-cli/src/ngtsc/typecheck/src/ts_util", "@angular/compiler-cli/src/ngtsc/typecheck/src/type_constructor", "@angular/compiler-cli/src/ngtsc/typecheck/src/type_parameter_emitter"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    exports.Environment = void 0;
    var tslib_1 = require("tslib");
    var compiler_1 = require("@angular/compiler");
    var ts = require("typescript");
    var imports_1 = require("@angular/compiler-cli/src/ngtsc/imports");
    var translator_1 = require("@angular/compiler-cli/src/ngtsc/translator");
    var ts_util_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/ts_util");
    var type_constructor_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/type_constructor");
    var type_parameter_emitter_1 = require("@angular/compiler-cli/src/ngtsc/typecheck/src/type_parameter_emitter");
    /**
     * A context which hosts one or more Type Check Blocks (TCBs).
     *
     * An `Environment` supports the generation of TCBs by tracking necessary imports, declarations of
     * type constructors, and other statements beyond the type-checking code within the TCB itself.
     * Through method calls on `Environment`, the TCB generator can request `ts.Expression`s which
     * reference declarations in the `Environment` for these artifacts`.
     *
     * `Environment` can be used in a standalone fashion, or can be extended to support more specialized
     * usage.
     */
    var Environment = /** @class */ (function () {
        function Environment(config, importManager, refEmitter, reflector, contextFile) {
            this.config = config;
            this.importManager = importManager;
            this.refEmitter = refEmitter;
            this.reflector = reflector;
            this.contextFile = contextFile;
            this.nextIds = {
                pipeInst: 1,
                typeCtor: 1,
            };
            this.typeCtors = new Map();
            this.typeCtorStatements = [];
            this.pipeInsts = new Map();
            this.pipeInstStatements = [];
            this.outputHelperIdent = null;
            this.helperStatements = [];
        }
        /**
         * Get an expression referring to a type constructor for the given directive.
         *
         * Depending on the shape of the directive itself, this could be either a reference to a declared
         * type constructor, or to an inline type constructor.
         */
        Environment.prototype.typeCtorFor = function (dir) {
            var dirRef = dir.ref;
            var node = dirRef.node;
            if (this.typeCtors.has(node)) {
                return this.typeCtors.get(node);
            }
            if (type_constructor_1.requiresInlineTypeCtor(node, this.reflector)) {
                // The constructor has already been created inline, we just need to construct a reference to
                // it.
                var ref = this.reference(dirRef);
                var typeCtorExpr = ts.createPropertyAccess(ref, 'ngTypeCtor');
                this.typeCtors.set(node, typeCtorExpr);
                return typeCtorExpr;
            }
            else {
                var fnName = "_ctor" + this.nextIds.typeCtor++;
                var nodeTypeRef = this.referenceType(dirRef);
                if (!ts.isTypeReferenceNode(nodeTypeRef)) {
                    throw new Error("Expected TypeReferenceNode from reference to " + dirRef.debugName);
                }
                var meta = {
                    fnName: fnName,
                    body: true,
                    fields: {
                        inputs: Object.keys(dir.inputs),
                        outputs: Object.keys(dir.outputs),
                        // TODO: support queries
                        queries: dir.queries,
                    },
                    coercedInputFields: dir.coercedInputFields,
                };
                var typeParams = this.emitTypeParameters(node);
                var typeCtor = type_constructor_1.generateTypeCtorDeclarationFn(node, meta, nodeTypeRef.typeName, typeParams, this.reflector);
                this.typeCtorStatements.push(typeCtor);
                var fnId = ts.createIdentifier(fnName);
                this.typeCtors.set(node, fnId);
                return fnId;
            }
        };
        /*
         * Get an expression referring to an instance of the given pipe.
         */
        Environment.prototype.pipeInst = function (ref) {
            if (this.pipeInsts.has(ref.node)) {
                return this.pipeInsts.get(ref.node);
            }
            var pipeType = this.referenceType(ref);
            var pipeInstId = ts.createIdentifier("_pipe" + this.nextIds.pipeInst++);
            this.pipeInstStatements.push(ts_util_1.tsDeclareVariable(pipeInstId, pipeType));
            this.pipeInsts.set(ref.node, pipeInstId);
            return pipeInstId;
        };
        /**
         * Declares a helper function to be able to cast directive outputs of type `EventEmitter<T>` to
         * have an accurate `subscribe()` method that properly carries over the generic type `T` into the
         * listener function passed as argument to `subscribe`. This is done to work around a typing
         * deficiency in `EventEmitter.subscribe`, where the listener function is typed as any.
         */
        Environment.prototype.declareOutputHelper = function () {
            if (this.outputHelperIdent !== null) {
                return this.outputHelperIdent;
            }
            var outputHelperIdent = ts.createIdentifier('_outputHelper');
            var genericTypeDecl = ts.createTypeParameterDeclaration('T');
            var genericTypeRef = ts.createTypeReferenceNode('T', /* typeParameters */ undefined);
            var eventEmitter = this.referenceExternalType('@angular/core', 'EventEmitter', [new compiler_1.ExpressionType(new compiler_1.WrappedNodeExpr(genericTypeRef))]);
            // Declare a type that has a `subscribe` method that carries over type `T` as parameter
            // into the callback. The below code generates the following type literal:
            // `{subscribe(cb: (event: T) => any): void;}`
            var observableLike = ts.createTypeLiteralNode([ts.createMethodSignature(
                /* typeParameters */ undefined, 
                /* parameters */ [ts.createParameter(
                    /* decorators */ undefined, 
                    /* modifiers */ undefined, 
                    /* dotDotDotToken */ undefined, 
                    /* name */ 'cb', 
                    /* questionToken */ undefined, 
                    /* type */
                    ts.createFunctionTypeNode(
                    /* typeParameters */ undefined, 
                    /* parameters */ [ts.createParameter(
                        /* decorators */ undefined, 
                        /* modifiers */ undefined, 
                        /* dotDotDotToken */ undefined, 
                        /* name */ 'event', 
                        /* questionToken */ undefined, 
                        /* type */ genericTypeRef)], 
                    /* type */ ts.createKeywordTypeNode(ts.SyntaxKind.AnyKeyword)))], 
                /* type */ ts.createKeywordTypeNode(ts.SyntaxKind.VoidKeyword), 
                /* name */ 'subscribe', 
                /* questionToken */ undefined)]);
            // Declares the first signature of `_outputHelper` that matches arguments of type
            // `EventEmitter`, to convert them into `observableLike` defined above. The following
            // statement is generated:
            // `declare function _outputHelper<T>(output: EventEmitter<T>): observableLike;`
            this.helperStatements.push(ts.createFunctionDeclaration(
            /* decorators */ undefined, 
            /* modifiers */ [ts.createModifier(ts.SyntaxKind.DeclareKeyword)], 
            /* asteriskToken */ undefined, 
            /* name */ outputHelperIdent, 
            /* typeParameters */ [genericTypeDecl], 
            /* parameters */ [ts.createParameter(
                /* decorators */ undefined, 
                /* modifiers */ undefined, 
                /* dotDotDotToken */ undefined, 
                /* name */ 'output', 
                /* questionToken */ undefined, 
                /* type */ eventEmitter)], 
            /* type */ observableLike, 
            /* body */ undefined));
            // Declares the second signature of `_outputHelper` that matches all other argument types,
            // i.e. ensures type identity for output types other than `EventEmitter`. This corresponds
            // with the following statement:
            // `declare function _outputHelper<T>(output: T): T;`
            this.helperStatements.push(ts.createFunctionDeclaration(
            /* decorators */ undefined, 
            /* modifiers */ [ts.createModifier(ts.SyntaxKind.DeclareKeyword)], 
            /* asteriskToken */ undefined, 
            /* name */ outputHelperIdent, 
            /* typeParameters */ [genericTypeDecl], 
            /* parameters */ [ts.createParameter(
                /* decorators */ undefined, 
                /* modifiers */ undefined, 
                /* dotDotDotToken */ undefined, 
                /* name */ 'output', 
                /* questionToken */ undefined, 
                /* type */ genericTypeRef)], 
            /* type */ genericTypeRef, 
            /* body */ undefined));
            return this.outputHelperIdent = outputHelperIdent;
        };
        /**
         * Generate a `ts.Expression` that references the given node.
         *
         * This may involve importing the node into the file if it's not declared there already.
         */
        Environment.prototype.reference = function (ref) {
            // Disable aliasing for imports generated in a template type-checking context, as there is no
            // guarantee that any alias re-exports exist in the .d.ts files. It's safe to use direct imports
            // in these cases as there is no strict dependency checking during the template type-checking
            // pass.
            var ngExpr = this.refEmitter.emit(ref, this.contextFile, imports_1.ImportFlags.NoAliasing);
            // Use `translateExpression` to convert the `Expression` into a `ts.Expression`.
            return translator_1.translateExpression(ngExpr, this.importManager, imports_1.NOOP_DEFAULT_IMPORT_RECORDER, ts.ScriptTarget.ES2015);
        };
        /**
         * Generate a `ts.TypeNode` that references the given node as a type.
         *
         * This may involve importing the node into the file if it's not declared there already.
         */
        Environment.prototype.referenceType = function (ref) {
            var ngExpr = this.refEmitter.emit(ref, this.contextFile, imports_1.ImportFlags.NoAliasing | imports_1.ImportFlags.AllowTypeImports);
            // Create an `ExpressionType` from the `Expression` and translate it via `translateType`.
            // TODO(alxhub): support references to types with generic arguments in a clean way.
            return translator_1.translateType(new compiler_1.ExpressionType(ngExpr), this.importManager);
        };
        Environment.prototype.emitTypeParameters = function (declaration) {
            var _this = this;
            var emitter = new type_parameter_emitter_1.TypeParameterEmitter(declaration.typeParameters, this.reflector);
            return emitter.emit(function (ref) { return _this.referenceType(ref); });
        };
        /**
         * Generate a `ts.TypeNode` that references a given type from the provided module.
         *
         * This will involve importing the type into the file, and will also add type parameters if
         * provided.
         */
        Environment.prototype.referenceExternalType = function (moduleName, name, typeParams) {
            var external = new compiler_1.ExternalExpr({ moduleName: moduleName, name: name });
            return translator_1.translateType(new compiler_1.ExpressionType(external, null, typeParams), this.importManager);
        };
        Environment.prototype.getPreludeStatements = function () {
            return tslib_1.__spread(this.helperStatements, this.pipeInstStatements, this.typeCtorStatements);
        };
        return Environment;
    }());
    exports.Environment = Environment;
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZW52aXJvbm1lbnQuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb21waWxlci1jbGkvc3JjL25ndHNjL3R5cGVjaGVjay9zcmMvZW52aXJvbm1lbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOzs7Ozs7Ozs7Ozs7OztJQUVILDhDQUFzRjtJQUN0RiwrQkFBaUM7SUFFakMsbUVBQXFHO0lBRXJHLHlFQUFtRjtJQUduRixpRkFBNEM7SUFDNUMsbUdBQXlGO0lBQ3pGLCtHQUE4RDtJQUU5RDs7Ozs7Ozs7OztPQVVHO0lBQ0g7UUFlRSxxQkFDYSxNQUEwQixFQUFZLGFBQTRCLEVBQ25FLFVBQTRCLEVBQVUsU0FBeUIsRUFDN0QsV0FBMEI7WUFGM0IsV0FBTSxHQUFOLE1BQU0sQ0FBb0I7WUFBWSxrQkFBYSxHQUFiLGFBQWEsQ0FBZTtZQUNuRSxlQUFVLEdBQVYsVUFBVSxDQUFrQjtZQUFVLGNBQVMsR0FBVCxTQUFTLENBQWdCO1lBQzdELGdCQUFXLEdBQVgsV0FBVyxDQUFlO1lBakJoQyxZQUFPLEdBQUc7Z0JBQ2hCLFFBQVEsRUFBRSxDQUFDO2dCQUNYLFFBQVEsRUFBRSxDQUFDO2FBQ1osQ0FBQztZQUVNLGNBQVMsR0FBRyxJQUFJLEdBQUcsRUFBbUMsQ0FBQztZQUNyRCx1QkFBa0IsR0FBbUIsRUFBRSxDQUFDO1lBRTFDLGNBQVMsR0FBRyxJQUFJLEdBQUcsRUFBbUMsQ0FBQztZQUNyRCx1QkFBa0IsR0FBbUIsRUFBRSxDQUFDO1lBRTFDLHNCQUFpQixHQUF1QixJQUFJLENBQUM7WUFDM0MscUJBQWdCLEdBQW1CLEVBQUUsQ0FBQztRQUtMLENBQUM7UUFFNUM7Ozs7O1dBS0c7UUFDSCxpQ0FBVyxHQUFYLFVBQVksR0FBK0I7WUFDekMsSUFBTSxNQUFNLEdBQUcsR0FBRyxDQUFDLEdBQXVELENBQUM7WUFDM0UsSUFBTSxJQUFJLEdBQUcsTUFBTSxDQUFD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c291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7RXhwcmVzc2lvblR5cGUsIEV4dGVybmFsRXhwciwgVHlwZSwgV3JhcHBlZE5vZGVFeHByfSBmcm9tICdAYW5ndWxhci9jb21waWxlcic7XG5pbXBvcnQgKiBhcyB0cyBmcm9tICd0eXBlc2NyaXB0JztcblxuaW1wb3J0IHtJbXBvcnRGbGFncywgTk9PUF9ERUZBVUxUX0lNUE9SVF9SRUNPUkRFUiwgUmVmZXJlbmNlLCBSZWZlcmVuY2VFbWl0dGVyfSBmcm9tICcuLi8uLi9pbXBvcnRzJztcbmltcG9ydCB7Q2xhc3NEZWNsYXJhdGlvbiwgUmVmbGVjdGlvbkhvc3R9IGZyb20gJy4uLy4uL3JlZmxlY3Rpb24nO1xuaW1wb3J0IHtJbXBvcnRNYW5hZ2VyLCB0cmFuc2xhdGVFeHByZXNzaW9uLCB0cmFuc2xhdGVUeXBlfSBmcm9tICcuLi8uLi90cmFuc2xhdG9yJztcbmltcG9ydCB7VHlwZUNoZWNrYWJsZURpcmVjdGl2ZU1ldGEsIFR5cGVDaGVja2luZ0NvbmZpZywgVHlwZUN0b3JNZXRhZGF0YX0gZnJvbSAnLi4vYXBpJztcblxuaW1wb3J0IHt0c0RlY2xhcmVWYXJpYWJsZX0gZnJvbSAnLi90c191dGlsJztcbmltcG9ydCB7Z2VuZXJhdGVUeXBlQ3RvckRlY2xhcmF0aW9uRm4sIHJlcXVpcmVzSW5saW5lVHlwZUN0b3J9IGZyb20gJy4vdHlwZV9jb25zdHJ1Y3Rvcic7XG5pbXBvcnQge1R5cGVQYXJhbWV0ZXJFbWl0dGVyfSBmcm9tICcuL3R5cGVfcGFyYW1ldGVyX2VtaXR0ZXInO1xuXG4vKipcbiAqIEEgY29udGV4dCB3aGljaCBob3N0cyBvbmUgb3IgbW9yZSBUeXBlIENoZWNrIEJsb2NrcyAoVENCcykuXG4gKlxuICogQW4gYEVudmlyb25tZW50YCBzdXBwb3J0cyB0aGUgZ2VuZXJhdGlvbiBvZiBUQ0JzIGJ5IHRyYWNraW5nIG5lY2Vzc2FyeSBpbXBvcnRzLCBkZWNsYXJhdGlvbnMgb2ZcbiAqIHR5cGUgY29uc3RydWN0b3JzLCBhbmQgb3RoZXIgc3RhdGVtZW50cyBiZXlvbmQgdGhlIHR5cGUtY2hlY2tpbmcgY29kZSB3aXRoaW4gdGhlIFRDQiBpdHNlbGYuXG4gKiBUaHJvdWdoIG1ldGhvZCBjYWxscyBvbiBgRW52aXJvbm1lbnRgLCB0aGUgVENCIGdlbmVyYXRvciBjYW4gcmVxdWVzdCBgdHMuRXhwcmVzc2lvbmBzIHdoaWNoXG4gKiByZWZlcmVuY2UgZGVjbGFyYXRpb25zIGluIHRoZSBgRW52aXJvbm1lbnRgIGZvciB0aGVzZSBhcnRpZmFjdHNgLlxuICpcbiAqIGBFbnZpcm9ubWVudGAgY2FuIGJlIHVzZWQgaW4gYSBzdGFuZGFsb25lIGZhc2hpb24sIG9yIGNhbiBiZSBleHRlbmRlZCB0byBzdXBwb3J0IG1vcmUgc3BlY2lhbGl6ZWRcbiAqIHVzYWdlLlxuICovXG5leHBvcnQgY2xhc3MgRW52aXJvbm1lbnQge1xuICBwcml2YXRlIG5leHRJZHMgPSB7XG4gICAgcGlwZUluc3Q6IDEsXG4gICAgdHlwZUN0b3I6IDEsXG4gIH07XG5cbiAgcHJpdmF0ZSB0eXBlQ3RvcnMgPSBuZXcgTWFwPENsYXNzRGVjbGFyYXRpb24sIHRzLkV4cHJlc3Npb24+KCk7XG4gIHByb3RlY3RlZCB0eXBlQ3RvclN0YXRlbWVudHM6IHRzLlN0YXRlbWVudFtdID0gW107XG5cbiAgcHJpdmF0ZSBwaXBlSW5zdHMgPSBuZXcgTWFwPENsYXNzRGVjbGFyYXRpb24sIHRzLkV4cHJlc3Npb24+KCk7XG4gIHByb3RlY3RlZCBwaXBlSW5zdFN0YXRlbWVudHM6IHRzLlN0YXRlbWVudFtdID0gW107XG5cbiAgcHJpdmF0ZSBvdXRwdXRIZWxwZXJJZGVudDogdHMuSWRlbnRpZmllcnxudWxsID0gbnVsbDtcbiAgcHJvdGVjdGVkIGhlbHBlclN0YXRlbWVudHM6IHRzLlN0YXRlbWVudFtdID0gW107XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICByZWFkb25seSBjb25maWc6IFR5cGVDaGVja2luZ0NvbmZpZywgcHJvdGVjdGVkIGltcG9ydE1hbmFnZXI6IEltcG9ydE1hbmFnZXIsXG4gICAgICBwcml2YXRlIHJlZkVtaXR0ZXI6IFJlZmVyZW5jZUVtaXR0ZXIsIHByaXZhdGUgcmVmbGVjdG9yOiBSZWZsZWN0aW9uSG9zdCxcbiAgICAgIHByb3RlY3RlZCBjb250ZXh0RmlsZTogdHMuU291cmNlRmlsZSkge31cblxuICAvKipcbiAgICogR2V0IGFuIGV4cHJlc3Npb24gcmVmZXJyaW5nIHRvIGEgdHlwZSBjb25zdHJ1Y3RvciBmb3IgdGhlIGdpdmVuIGRpcmVjdGl2ZS5cbiAgICpcbiAgICogRGVwZW5kaW5nIG9uIHRoZSBzaGFwZSBvZiB0aGUgZGlyZWN0aXZlIGl0c2VsZiwgdGhpcyBjb3VsZCBiZSBlaXRoZXIgYSByZWZlcmVuY2UgdG8gYSBkZWNsYXJlZFxuICAgKiB0eXBlIGNvbnN0cnVjdG9yLCBvciB0byBhbiBpbmxpbmUgdHlwZSBjb25zdHJ1Y3Rvci5cbiAgICovXG4gIHR5cGVDdG9yRm9yKGRpcjogVHlwZUNoZWNrYWJsZURpcmVjdGl2ZU1ldGEpOiB0cy5FeHByZXNzaW9uIHtcbiAgICBjb25zdCBkaXJSZWYgPSBkaXIucmVmIGFzIFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPHRzLkNsYXNzRGVjbGFyYXRpb24+PjtcbiAgICBjb25zdCBub2RlID0gZGlyUmVmLm5vZGU7XG4gICAgaWYgKHRoaXMudHlwZUN0b3JzLmhhcyhub2RlKSkge1xuICAgICAgcmV0dXJuIHRoaXMudHlwZUN0b3JzLmdldChub2RlKSE7XG4gICAgfVxuXG4gICAgaWYgKHJlcXVpcmVzSW5saW5lVHlwZUN0b3Iobm9kZSwgdGhpcy5yZWZsZWN0b3IpKSB7XG4gICAgICAvLyBUaGUgY29uc3RydWN0b3IgaGFzIGFscmVhZHkgYmVlbiBjcmVhdGVkIGlubGluZSwgd2UganVzdCBuZWVkIHRvIGNvbnN0cnVjdCBhIHJlZmVyZW5jZSB0b1xuICAgICAgLy8gaXQuXG4gICAgICBjb25zdCByZWYgPSB0aGlzLnJlZmVyZW5jZShkaXJSZWYpO1xuICAgICAgY29uc3QgdHlwZUN0b3JFeHByID0gdHMuY3JlYXRlUHJvcGVydHlBY2Nlc3MocmVmLCAnbmdUeXBlQ3RvcicpO1xuICAgICAgdGhpcy50eXBlQ3RvcnMuc2V0KG5vZGUsIHR5cGVDdG9yRXhwcik7XG4gICAgICByZXR1cm4gdHlwZUN0b3JFeHByO1xuICAgIH0gZWxzZSB7XG4gICAgICBjb25zdCBmbk5hbWUgPSBgX2N0b3Ike3RoaXMubmV4dElkcy50eXBlQ3RvcisrfWA7XG4gICAgICBjb25zdCBub2RlVHlwZVJlZiA9IHRoaXMucmVmZXJlbmNlVHlwZShkaXJSZWYpO1xuICAgICAgaWYgKCF0cy5pc1R5cGVSZWZlcmVuY2VOb2RlKG5vZGVUeXBlUmVmKSkge1xuICAgICAgICB0aHJvdyBuZXcgRXJyb3IoYEV4cGVjdGVkIFR5cGVSZWZlcmVuY2VOb2RlIGZyb20gcmVmZXJlbmNlIHRvICR7ZGlyUmVmLmRlYnVnTmFtZX1gKTtcbiAgICAgIH1cbiAgICAgIGNvbnN0IG1ldGE6IFR5cGVDdG9yTWV0YWRhdGEgPSB7XG4gICAgICAgIGZuTmFtZSxcbiAgICAgICAgYm9keTogdHJ1ZSxcbiAgICAgICAgZmllbGRzOiB7XG4gICAgICAgICAgaW5wdXRzOiBPYmplY3Qua2V5cyhkaXIuaW5wdXRzKSxcbiAgICAgICAgICBvdXRwdXRzOiBPYmplY3Qua2V5cyhkaXIub3V0cHV0cyksXG4gICAgICAgICAgLy8gVE9ETzogc3VwcG9ydCBxdWVyaWVzXG4gICAgICAgICAgcXVlcmllczogZGlyLnF1ZXJpZXMsXG4gICAgICAgIH0sXG4gICAgICAgIGNvZXJjZWRJbnB1dEZpZWxkczogZGlyLmNvZXJjZWRJbnB1dEZpZWxkcyxcbiAgICAgIH07XG4gICAgICBjb25zdCB0eXBlUGFyYW1zID0gdGhpcy5lbWl0VHlwZVBhcmFtZXRlcnMobm9kZSk7XG4gICAgICBjb25zdCB0eXBlQ3RvciA9IGdlbmVyYXRlVHlwZUN0b3JEZWNsYXJhdGlvbkZuKFxuICAgICAgICAgIG5vZGUsIG1ldGEsIG5vZGVUeXBlUmVmLnR5cGVOYW1lLCB0eXBlUGFyYW1zLCB0aGlzLnJlZmxlY3Rvcik7XG4gICAgICB0aGlzLnR5cGVDdG9yU3RhdGVtZW50cy5wdXNoKHR5cGVDdG9yKTtcbiAgICAgIGNvbnN0IGZuSWQgPSB0cy5jcmVhdGVJZGVudGlmaWVyKGZuTmFtZSk7XG4gICAgICB0aGlzLnR5cGVDdG9ycy5zZXQobm9kZSwgZm5JZCk7XG4gICAgICByZXR1cm4gZm5JZDtcbiAgICB9XG4gIH1cblxuICAvKlxuICAgKiBHZXQgYW4gZXhwcmVzc2lvbiByZWZlcnJpbmcgdG8gYW4gaW5zdGFuY2Ugb2YgdGhlIGdpdmVuIHBpcGUuXG4gICAqL1xuICBwaXBlSW5zdChyZWY6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPHRzLkNsYXNzRGVjbGFyYXRpb24+Pik6IHRzLkV4cHJlc3Npb24ge1xuICAgIGlmICh0aGlzLnBpcGVJbnN0cy5oYXMocmVmLm5vZGUpKSB7XG4gICAgICByZXR1cm4gdGhpcy5waXBlSW5zdHMuZ2V0KHJlZi5ub2RlKSE7XG4gICAgfVxuXG4gICAgY29uc3QgcGlwZVR5cGUgPSB0aGlzLnJlZmVyZW5jZVR5cGUocmVmKTtcbiAgICBjb25zdCBwaXBlSW5zdElkID0gdHMuY3JlYXRlSWRlbnRpZmllcihgX3BpcGUke3RoaXMubmV4dElkcy5waXBlSW5zdCsrfWApO1xuXG4gICAgdGhpcy5waXBlSW5zdFN0YXRlbWVudHMucHVzaCh0c0RlY2xhcmVWYXJpYWJsZShwaXBlSW5zdElkLCBwaXBlVHlwZSkpO1xuICAgIHRoaXMucGlwZUluc3RzLnNldChyZWYubm9kZSwgcGlwZUluc3RJZCk7XG5cbiAgICByZXR1cm4gcGlwZUluc3RJZDtcbiAgfVxuXG4gIC8qKlxuICAgKiBEZWNsYXJlcyBhIGhlbHBlciBmdW5jdGlvbiB0byBiZSBhYmxlIHRvIGNhc3QgZGlyZWN0aXZlIG91dHB1dHMgb2YgdHlwZSBgRXZlbnRFbWl0dGVyPFQ+YCB0b1xuICAgKiBoYXZlIGFuIGFjY3VyYXRlIGBzdWJzY3JpYmUoKWAgbWV0aG9kIHRoYXQgcHJvcGVybHkgY2FycmllcyBvdmVyIHRoZSBnZW5lcmljIHR5cGUgYFRgIGludG8gdGhlXG4gICAqIGxpc3RlbmVyIGZ1bmN0aW9uIHBhc3NlZCBhcyBhcmd1bWVudCB0byBgc3Vic2NyaWJlYC4gVGhpcyBpcyBkb25lIHRvIHdvcmsgYXJvdW5kIGEgdHlwaW5nXG4gICAqIGRlZmljaWVuY3kgaW4gYEV2ZW50RW1pdHRlci5zdWJzY3JpYmVgLCB3aGVyZSB0aGUgbGlzdGVuZXIgZnVuY3Rpb24gaXMgdHlwZWQgYXMgYW55LlxuICAgKi9cbiAgZGVjbGFyZU91dHB1dEhlbHBlcigpOiB0cy5FeHByZXNzaW9uIHtcbiAgICBpZiAodGhpcy5vdXRwdXRIZWxwZXJJZGVudCAhPT0gbnVsbCkge1xuICAgICAgcmV0dXJuIHRoaXMub3V0cHV0SGVscGVySWRlbnQ7XG4gICAgfVxuXG4gICAgY29uc3Qgb3V0cHV0SGVscGVySWRlbnQgPSB0cy5jcmVhdGVJZGVudGlmaWVyKCdfb3V0cHV0SGVscGVyJyk7XG4gICAgY29uc3QgZ2VuZXJpY1R5cGVEZWNsID0gdHMuY3JlYXRlVHlwZVBhcmFtZXRlckRlY2xhcmF0aW9uKCdUJyk7XG4gICAgY29uc3QgZ2VuZXJpY1R5cGVSZWYgPSB0cy5jcmVhdGVUeXBlUmVmZXJlbmNlTm9kZSgnVCcsIC8qIHR5cGVQYXJhbWV0ZXJzICovIHVuZGVmaW5lZCk7XG5cbiAgICBjb25zdCBldmVudEVtaXR0ZXIgPSB0aGlzLnJlZmVyZW5jZUV4dGVybmFsVHlwZShcbiAgICAgICAgJ0Bhbmd1bGFyL2NvcmUnLCAnRXZlbnRFbWl0dGVyJywgW25ldyBFeHByZXNzaW9uVHlwZShuZXcgV3JhcHBlZE5vZGVFeHByKGdlbmVyaWNUeXBlUmVmKSldKTtcblxuICAgIC8vIERlY2xhcmUgYSB0eXBlIHRoYXQgaGFzIGEgYHN1YnNjcmliZWAgbWV0aG9kIHRoYXQgY2FycmllcyBvdmVyIHR5cGUgYFRgIGFzIHBhcmFtZXRlclxuICAgIC8vIGludG8gdGhlIGNhbGxiYWNrLiBUaGUgYmVsb3cgY29kZSBnZW5lcmF0ZXMgdGhlIGZvbGxvd2luZyB0eXBlIGxpdGVyYWw6XG4gICAgLy8gYHtzdWJzY3JpYmUoY2I6IChldmVudDogVCkgPT4gYW55KTogdm9pZDt9YFxuICAgIGNvbnN0IG9ic2VydmFibGVMaWtlID0gdHMuY3JlYXRlVHlwZUxpdGVyYWxOb2RlKFt0cy5jcmVhdGVNZXRob2RTaWduYXR1cmUoXG4gICAgICAgIC8qIHR5cGVQYXJhbWV0ZXJzICovIHVuZGVmaW5lZCxcbiAgICAgICAgLyogcGFyYW1ldGVycyAqL1t0cy5jcmVhdGVQYXJhbWV0ZXIoXG4gICAgICAgICAgICAvKiBkZWNvcmF0b3JzICovIHVuZGVmaW5lZCxcbiAgICAgICAgICAgIC8qIG1vZGlmaWVycyAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICAvKiBkb3REb3REb3RUb2tlbiAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICAvKiBuYW1lICovICdjYicsXG4gICAgICAgICAgICAvKiBxdWVzdGlvblRva2VuICovIHVuZGVmaW5lZCxcbiAgICAgICAgICAgIC8qIHR5cGUgKi9cbiAgICAgICAgICAgIHRzLmNyZWF0ZUZ1bmN0aW9uVHlwZU5vZGUoXG4gICAgICAgICAgICAgICAgLyogdHlwZVBhcmFtZXRlcnMgKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgICAgIC8qIHBhcmFtZXRlcnMgKi9bdHMuY3JlYXRlUGFyYW1ldGVyKFxuICAgICAgICAgICAgICAgICAgICAvKiBkZWNvcmF0b3JzICovIHVuZGVmaW5lZCxcbiAgICAgICAgICAgICAgICAgICAgLyogbW9kaWZpZXJzICovIHVuZGVmaW5lZCxcbiAgICAgICAgICAgICAgICAgICAgLyogZG90RG90RG90VG9rZW4gKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgICAgICAgICAvKiBuYW1lICovICdldmVudCcsXG4gICAgICAgICAgICAgICAgICAgIC8qIHF1ZXN0aW9uVG9rZW4gKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgICAgICAgICAvKiB0eXBlICovIGdlbmVyaWNUeXBlUmVmKV0sXG4gICAgICAgICAgICAgICAgLyogdHlwZSAqLyB0cy5jcmVhdGVLZXl3b3JkVHlwZU5vZGUodHMuU3ludGF4S2luZC5BbnlLZXl3b3JkKSkpXSxcbiAgICAgICAgLyogdHlwZSAqLyB0cy5jcmVhdGVLZXl3b3JkVHlwZU5vZGUodHMuU3ludGF4S2luZC5Wb2lkS2V5d29yZCksXG4gICAgICAgIC8qIG5hbWUgKi8gJ3N1YnNjcmliZScsXG4gICAgICAgIC8qIHF1ZXN0aW9uVG9rZW4gKi8gdW5kZWZpbmVkKV0pO1xuXG4gICAgLy8gRGVjbGFyZXMgdGhlIGZpcnN0IHNpZ25hdHVyZSBvZiBgX291dHB1dEhlbHBlcmAgdGhhdCBtYXRjaGVzIGFyZ3VtZW50cyBvZiB0eXBlXG4gICAgLy8gYEV2ZW50RW1pdHRlcmAsIHRvIGNvbnZlcnQgdGhlbSBpbnRvIGBvYnNlcnZhYmxlTGlrZWAgZGVmaW5lZCBhYm92ZS4gVGhlIGZvbGxvd2luZ1xuICAgIC8vIHN0YXRlbWVudCBpcyBnZW5lcmF0ZWQ6XG4gICAgLy8gYGRlY2xhcmUgZnVuY3Rpb24gX291dHB1dEhlbHBlcjxUPihvdXRwdXQ6IEV2ZW50RW1pdHRlcjxUPik6IG9ic2VydmFibGVMaWtlO2BcbiAgICB0aGlzLmhlbHBlclN0YXRlbWVudHMucHVzaCh0cy5jcmVhdGVGdW5jdGlvbkRlY2xhcmF0aW9uKFxuICAgICAgICAvKiBkZWNvcmF0b3JzICovIHVuZGVmaW5lZCxcbiAgICAgICAgLyogbW9kaWZpZXJzICovW3RzLmNyZWF0ZU1vZGlmaWVyKHRzLlN5bnRheEtpbmQuRGVjbGFyZUtleXdvcmQpXSxcbiAgICAgICAgLyogYXN0ZXJpc2tUb2tlbiAqLyB1bmRlZmluZWQsXG4gICAgICAgIC8qIG5hbWUgKi8gb3V0cHV0SGVscGVySWRlbnQsXG4gICAgICAgIC8qIHR5cGVQYXJhbWV0ZXJzICovW2dlbmVyaWNUeXBlRGVjbF0sXG4gICAgICAgIC8qIHBhcmFtZXRlcnMgKi9bdHMuY3JlYXRlUGFyYW1ldGVyKFxuICAgICAgICAgICAgLyogZGVjb3JhdG9ycyAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICAvKiBtb2RpZmllcnMgKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgLyogZG90RG90RG90VG9rZW4gKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgLyogbmFtZSAqLyAnb3V0cHV0JyxcbiAgICAgICAgICAgIC8qIHF1ZXN0aW9uVG9rZW4gKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgLyogdHlwZSAqLyBldmVudEVtaXR0ZXIpXSxcbiAgICAgICAgLyogdHlwZSAqLyBvYnNlcnZhYmxlTGlrZSxcbiAgICAgICAgLyogYm9keSAqLyB1bmRlZmluZWQpKTtcblxuICAgIC8vIERlY2xhcmVzIHRoZSBzZWNvbmQgc2lnbmF0dXJlIG9mIGBfb3V0cHV0SGVscGVyYCB0aGF0IG1hdGNoZXMgYWxsIG90aGVyIGFyZ3VtZW50IHR5cGVzLFxuICAgIC8vIGkuZS4gZW5zdXJlcyB0eXBlIGlkZW50aXR5IGZvciBvdXRwdXQgdHlwZXMgb3RoZXIgdGhhbiBgRXZlbnRFbWl0dGVyYC4gVGhpcyBjb3JyZXNwb25kc1xuICAgIC8vIHdpdGggdGhlIGZvbGxvd2luZyBzdGF0ZW1lbnQ6XG4gICAgLy8gYGRlY2xhcmUgZnVuY3Rpb24gX291dHB1dEhlbHBlcjxUPihvdXRwdXQ6IFQpOiBUO2BcbiAgICB0aGlzLmhlbHBlclN0YXRlbWVudHMucHVzaCh0cy5jcmVhdGVGdW5jdGlvbkRlY2xhcmF0aW9uKFxuICAgICAgICAvKiBkZWNvcmF0b3JzICovIHVuZGVmaW5lZCxcbiAgICAgICAgLyogbW9kaWZpZXJzICovW3RzLmNyZWF0ZU1vZGlmaWVyKHRzLlN5bnRheEtpbmQuRGVjbGFyZUtleXdvcmQpXSxcbiAgICAgICAgLyogYXN0ZXJpc2tUb2tlbiAqLyB1bmRlZmluZWQsXG4gICAgICAgIC8qIG5hbWUgKi8gb3V0cHV0SGVscGVySWRlbnQsXG4gICAgICAgIC8qIHR5cGVQYXJhbWV0ZXJzICovW2dlbmVyaWNUeXBlRGVjbF0sXG4gICAgICAgIC8qIHBhcmFtZXRlcnMgKi9bdHMuY3JlYXRlUGFyYW1ldGVyKFxuICAgICAgICAgICAgLyogZGVjb3JhdG9ycyAqLyB1bmRlZmluZWQsXG4gICAgICAgICAgICAvKiBtb2RpZmllcnMgKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgLyogZG90RG90RG90VG9rZW4gKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgLyogbmFtZSAqLyAnb3V0cHV0JyxcbiAgICAgICAgICAgIC8qIHF1ZXN0aW9uVG9rZW4gKi8gdW5kZWZpbmVkLFxuICAgICAgICAgICAgLyogdHlwZSAqLyBnZW5lcmljVHlwZVJlZildLFxuICAgICAgICAvKiB0eXBlICovIGdlbmVyaWNUeXBlUmVmLFxuICAgICAgICAvKiBib2R5ICovIHVuZGVmaW5lZCkpO1xuXG4gICAgcmV0dXJuIHRoaXMub3V0cHV0SGVscGVySWRlbnQgPSBvdXRwdXRIZWxwZXJJZGVudDtcbiAgfVxuXG4gIC8qKlxuICAgKiBHZW5lcmF0ZSBhIGB0cy5FeHByZXNzaW9uYCB0aGF0IHJlZmVyZW5jZXMgdGhlIGdpdmVuIG5vZGUuXG4gICAqXG4gICAqIFRoaXMgbWF5IGludm9sdmUgaW1wb3J0aW5nIHRoZSBub2RlIGludG8gdGhlIGZpbGUgaWYgaXQncyBub3QgZGVjbGFyZWQgdGhlcmUgYWxyZWFkeS5cbiAgICovXG4gIHJlZmVyZW5jZShyZWY6IFJlZmVyZW5jZTxDbGFzc0RlY2xhcmF0aW9uPHRzLkNsYXNzRGVjbGFyYXRpb24+Pik6IHRzLkV4cHJlc3Npb24ge1xuICAgIC8vIERpc2FibGUgYWxpYXNpbmcgZm9yIGltcG9ydHMgZ2VuZXJhdGVkIGluIGEgdGVtcGxhdGUgdHlwZS1jaGVja2luZyBjb250ZXh0LCBhcyB0aGVyZSBpcyBub1xuICAgIC8vIGd1YXJhbnRlZSB0aGF0IGFueSBhbGlhcyByZS1leHBvcnRzIGV4aXN0IGluIHRoZSAuZC50cyBmaWxlcy4gSXQncyBzYWZlIHRvIHVzZSBkaXJlY3QgaW1wb3J0c1xuICAgIC8vIGluIHRoZXNlIGNhc2VzIGFzIHRoZXJlIGlzIG5vIHN0cmljdCBkZXBlbmRlbmN5IGNoZWNraW5nIGR1cmluZyB0aGUgdGVtcGxhdGUgdHlwZS1jaGVja2luZ1xuICAgIC8vIHBhc3MuXG4gICAgY29uc3QgbmdFeHByID0gdGhpcy5yZWZFbWl0dGVyLmVtaXQocmVmLCB0aGlzLmNvbnRleHRGaWxlLCBJbXBvcnRGbGFncy5Ob0FsaWFzaW5nKTtcblxuICAgIC8vIFVzZSBgdHJhbnNsYXRlRXhwcmVzc2lvbmAgdG8gY29udmVydCB0aGUgYEV4cHJlc3Npb25gIGludG8gYSBgdHMuRXhwcmVzc2lvbmAuXG4gICAgcmV0dXJuIHRyYW5zbGF0ZUV4cHJlc3Npb24oXG4gICAgICAgIG5nRXhwciwgdGhpcy5pbXBvcnRNYW5hZ2VyLCBOT09QX0RFRkFVTFRfSU1QT1JUX1JFQ09SREVSLCB0cy5TY3JpcHRUYXJnZXQuRVMyMDE1KTtcbiAgfVxuXG4gIC8qKlxuICAgKiBHZW5lcmF0ZSBhIGB0cy5UeXBlTm9kZWAgdGhhdCByZWZlcmVuY2VzIHRoZSBnaXZlbiBub2RlIGFzIGEgdHlwZS5cbiAgICpcbiAgICogVGhpcyBtYXkgaW52b2x2ZSBpbXBvcnRpbmcgdGhlIG5vZGUgaW50byB0aGUgZmlsZSBpZiBpdCdzIG5vdCBkZWNsYXJlZCB0aGVyZSBhbHJlYWR5LlxuICAgKi9cbiAgcmVmZXJlbmNlVHlwZShyZWY6IFJlZmVyZW5jZSk6IHRzLlR5cGVOb2RlIHtcbiAgICBjb25zdCBuZ0V4cHIgPSB0aGlzLnJlZkVtaXR0ZXIuZW1pdChcbiAgICAgICAgcmVmLCB0aGlzLmNvbnRleHRGaWxlLCBJbXBvcnRGbGFncy5Ob0FsaWFzaW5nIHwgSW1wb3J0RmxhZ3MuQWxsb3dUeXBlSW1wb3J0cyk7XG5cbiAgICAvLyBDcmVhdGUgYW4gYEV4cHJlc3Npb25UeXBlYCBmcm9tIHRoZSBgRXhwcmVzc2lvbmAgYW5kIHRyYW5zbGF0ZSBpdCB2aWEgYHRyYW5zbGF0ZVR5cGVgLlxuICAgIC8vIFRPRE8oYWx4aHViKTogc3VwcG9ydCByZWZlcmVuY2VzIHRvIHR5cGVzIHdpdGggZ2VuZXJpYyBhcmd1bWVudHMgaW4gYSBjbGVhbiB3YXkuXG4gICAgcmV0dXJuIHRyYW5zbGF0ZVR5cGUobmV3IEV4cHJlc3Npb25UeXBlKG5nRXhwciksIHRoaXMuaW1wb3J0TWFuYWdlcik7XG4gIH1cblxuICBwcml2YXRlIGVtaXRUeXBlUGFyYW1ldGVycyhkZWNsYXJhdGlvbjogQ2xhc3NEZWNsYXJhdGlvbjx0cy5DbGFzc0RlY2xhcmF0aW9uPik6XG4gICAgICB0cy5UeXBlUGFyYW1ldGVyRGVjbGFyYXRpb25bXXx1bmRlZmluZWQge1xuICAgIGNvbnN0IGVtaXR0ZXIgPSBuZXcgVHlwZVBhcmFtZXRlckVtaXR0ZXIoZGVjbGFyYXRpb24udHlwZVBhcmFtZXRlcnMsIHRoaXMucmVmbGVjdG9yKTtcbiAgICByZXR1cm4gZW1pdHRlci5lbWl0KHJlZiA9PiB0aGlzLnJlZmVyZW5jZVR5cGUocmVmKSk7XG4gIH1cblxuICAvKipcbiAgICogR2VuZXJhdGUgYSBgdHMuVHlwZU5vZGVgIHRoYXQgcmVmZXJlbmNlcyBhIGdpdmVuIHR5cGUgZnJvbSB0aGUgcHJvdmlkZWQgbW9kdWxlLlxuICAgKlxuICAgKiBUaGlzIHdpbGwgaW52b2x2ZSBpbXBvcnRpbmcgdGhlIHR5cGUgaW50byB0aGUgZmlsZSwgYW5kIHdpbGwgYWxzbyBhZGQgdHlwZSBwYXJhbWV0ZXJzIGlmXG4gICAqIHByb3ZpZGVkLlxuICAgKi9cbiAgcmVmZXJlbmNlRXh0ZXJuYWxUeXBlKG1vZHVsZU5hbWU6IHN0cmluZywgbmFtZTogc3RyaW5nLCB0eXBlUGFyYW1zPzogVHlwZVtdKTogdHMuVHlwZU5vZGUge1xuICAgIGNvbnN0IGV4dGVybmFsID0gbmV3IEV4dGVybmFsRXhwcih7bW9kdWxlTmFtZSwgbmFtZX0pO1xuICAgIHJldHVybiB0cmFuc2xhdGVUeXBlKG5ldyBFeHByZXNzaW9uVHlwZShleHRlcm5hbCwgbnVsbCwgdHlwZVBhcmFtcyksIHRoaXMuaW1wb3J0TWFuYWdlcik7XG4gIH1cblxuICBnZXRQcmVsdWRlU3RhdGVtZW50cygpOiB0cy5TdGF0ZW1lbnRbXSB7XG4gICAgcmV0dXJuIFtcbiAgICAgIC4uLnRoaXMuaGVscGVyU3RhdGVtZW50cyxcbiAgICAgIC4uLnRoaXMucGlwZUluc3RTdGF0ZW1lbnRzLFxuICAgICAgLi4udGhpcy50eXBlQ3RvclN0YXRlbWVudHMsXG4gICAgXTtcbiAgfVxufVxuIl19