/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { StaticSymbol } from '../aot/static_symbol';
import { tokenReference } from '../compile_metadata';
import { Identifiers } from '../identifiers';
import * as o from '../output/output_ast';
import { Identifiers as R3 } from '../render3/r3_identifiers';
import { typeWithParameters } from './util';
import { unsupported } from './view/util';
export var R3FactoryDelegateType;
(function (R3FactoryDelegateType) {
    R3FactoryDelegateType[R3FactoryDelegateType["Class"] = 0] = "Class";
    R3FactoryDelegateType[R3FactoryDelegateType["Function"] = 1] = "Function";
    R3FactoryDelegateType[R3FactoryDelegateType["Factory"] = 2] = "Factory";
})(R3FactoryDelegateType || (R3FactoryDelegateType = {}));
export var R3FactoryTarget;
(function (R3FactoryTarget) {
    R3FactoryTarget[R3FactoryTarget["Directive"] = 0] = "Directive";
    R3FactoryTarget[R3FactoryTarget["Component"] = 1] = "Component";
    R3FactoryTarget[R3FactoryTarget["Injectable"] = 2] = "Injectable";
    R3FactoryTarget[R3FactoryTarget["Pipe"] = 3] = "Pipe";
    R3FactoryTarget[R3FactoryTarget["NgModule"] = 4] = "NgModule";
})(R3FactoryTarget || (R3FactoryTarget = {}));
/**
 * Resolved type of a dependency.
 *
 * Occasionally, dependencies will have special significance which is known statically. In that
 * case the `R3ResolvedDependencyType` informs the factory generator that a particular dependency
 * should be generated specially (usually by calling a special injection function instead of the
 * standard one).
 */
export var R3ResolvedDependencyType;
(function (R3ResolvedDependencyType) {
    /**
     * A normal token dependency.
     */
    R3ResolvedDependencyType[R3ResolvedDependencyType["Token"] = 0] = "Token";
    /**
     * The dependency is for an attribute.
     *
     * The token expression is a string representing the attribute name.
     */
    R3ResolvedDependencyType[R3ResolvedDependencyType["Attribute"] = 1] = "Attribute";
    /**
     * Injecting the `ChangeDetectorRef` token. Needs special handling when injected into a pipe.
     */
    R3ResolvedDependencyType[R3ResolvedDependencyType["ChangeDetectorRef"] = 2] = "ChangeDetectorRef";
    /**
     * An invalid dependency (no token could be determined). An error should be thrown at runtime.
     */
    R3ResolvedDependencyType[R3ResolvedDependencyType["Invalid"] = 3] = "Invalid";
})(R3ResolvedDependencyType || (R3ResolvedDependencyType = {}));
/**
 * Construct a factory function expression for the given `R3FactoryMetadata`.
 */
export function compileFactoryFunction(meta) {
    const t = o.variable('t');
    const statements = [];
    let ctorDepsType = o.NONE_TYPE;
    // The type to instantiate via constructor invocation. If there is no delegated factory, meaning
    // this type is always created by constructor invocation, then this is the type-to-create
    // parameter provided by the user (t) if specified, or the current type if not. If there is a
    // delegated factory (which is used to create the current type) then this is only the type-to-
    // create parameter (t).
    const typeForCtor = !isDelegatedMetadata(meta) ?
        new o.BinaryOperatorExpr(o.BinaryOperator.Or, t, meta.internalType) :
        t;
    let ctorExpr = null;
    if (meta.deps !== null) {
        // There is a constructor (either explicitly or implicitly defined).
        if (meta.deps !== 'invalid') {
            ctorExpr = new o.InstantiateExpr(typeForCtor, injectDependencies(meta.deps, meta.injectFn, meta.target === R3FactoryTarget.Pipe));
            ctorDepsType = createCtorDepsType(meta.deps);
        }
    }
    else {
        const baseFactory = o.variable(`ɵ${meta.name}_BaseFactory`);
        const getInheritedFactory = o.importExpr(R3.getInheritedFactory);
        const baseFactoryStmt = baseFactory
            .set(getInheritedFactory.callFn([meta.internalType], /* sourceSpan */ undefined, /* pure */ true))
            .toDeclStmt(o.INFERRED_TYPE, [o.StmtModifier.Exported, o.StmtModifier.Final]);
        statements.push(baseFactoryStmt);
        // There is no constructor, use the base class' factory to construct typeForCtor.
        ctorExpr = baseFactory.callFn([typeForCtor]);
    }
    const ctorExprFinal = ctorExpr;
    const body = [];
    let retExpr = null;
    function makeConditionalFactory(nonCtorExpr) {
        const r = o.variable('r');
        body.push(r.set(o.NULL_EXPR).toDeclStmt());
        let ctorStmt = null;
        if (ctorExprFinal !== null) {
            ctorStmt = r.set(ctorExprFinal).toStmt();
        }
        else {
            ctorStmt = o.importExpr(R3.invalidFactory).callFn([]).toStmt();
        }
        body.push(o.ifStmt(t, [ctorStmt], [r.set(nonCtorExpr).toStmt()]));
        return r;
    }
    if (isDelegatedMetadata(meta) && meta.delegateType === R3FactoryDelegateType.Factory) {
        const delegateFactory = o.variable(`ɵ${meta.name}_BaseFactory`);
        const getFactoryOf = o.importExpr(R3.getFactoryOf);
        if (meta.delegate.isEquivalent(meta.internalType)) {
            throw new Error(`Illegal state: compiling factory that delegates to itself`);
        }
        const delegateFactoryStmt = delegateFactory.set(getFactoryOf.callFn([meta.delegate])).toDeclStmt(o.INFERRED_TYPE, [
            o.StmtModifier.Exported, o.StmtModifier.Final
        ]);
        statements.push(delegateFactoryStmt);
        retExpr = makeConditionalFactory(delegateFactory.callFn([]));
    }
    else if (isDelegatedMetadata(meta)) {
        // This type is created with a delegated factory. If a type parameter is not specified, call
        // the factory instead.
        const delegateArgs = injectDependencies(meta.delegateDeps, meta.injectFn, meta.target === R3FactoryTarget.Pipe);
        // Either call `new delegate(...)` or `delegate(...)` depending on meta.delegateType.
        const factoryExpr = new (meta.delegateType === R3FactoryDelegateType.Class ?
            o.InstantiateExpr :
            o.InvokeFunctionExpr)(meta.delegate, delegateArgs);
        retExpr = makeConditionalFactory(factoryExpr);
    }
    else if (isExpressionFactoryMetadata(meta)) {
        // TODO(alxhub): decide whether to lower the value here or in the caller
        retExpr = makeConditionalFactory(meta.expression);
    }
    else {
        retExpr = ctorExpr;
    }
    if (retExpr !== null) {
        body.push(new o.ReturnStatement(retExpr));
    }
    else {
        body.push(o.importExpr(R3.invalidFactory).callFn([]).toStmt());
    }
    return {
        factory: o.fn([new o.FnParam('t', o.DYNAMIC_TYPE)], body, o.INFERRED_TYPE, undefined, `${meta.name}_Factory`),
        statements,
        type: o.expressionType(o.importExpr(R3.FactoryDef, [typeWithParameters(meta.type.type, meta.typeArgumentCount), ctorDepsType]))
    };
}
function injectDependencies(deps, injectFn, isPipe) {
    return deps.map((dep, index) => compileInjectDependency(dep, injectFn, isPipe, index));
}
function compileInjectDependency(dep, injectFn, isPipe, index) {
    // Interpret the dependency according to its resolved type.
    switch (dep.resolved) {
        case R3ResolvedDependencyType.Token:
        case R3ResolvedDependencyType.ChangeDetectorRef:
            // Build up the injection flags according to the metadata.
            const flags = 0 /* Default */ | (dep.self ? 2 /* Self */ : 0) |
                (dep.skipSelf ? 4 /* SkipSelf */ : 0) | (dep.host ? 1 /* Host */ : 0) |
                (dep.optional ? 8 /* Optional */ : 0);
            // If this dependency is optional or otherwise has non-default flags, then additional
            // parameters describing how to inject the dependency must be passed to the inject function
            // that's being used.
            let flagsParam = (flags !== 0 /* Default */ || dep.optional) ? o.literal(flags) : null;
            // We have a separate instruction for injecting ChangeDetectorRef into a pipe.
            if (isPipe && dep.resolved === R3ResolvedDependencyType.ChangeDetectorRef) {
                return o.importExpr(R3.injectPipeChangeDetectorRef).callFn(flagsParam ? [flagsParam] : []);
            }
            // Build up the arguments to the injectFn call.
            const injectArgs = [dep.token];
            if (flagsParam) {
                injectArgs.push(flagsParam);
            }
            return o.importExpr(injectFn).callFn(injectArgs);
        case R3ResolvedDependencyType.Attribute:
            // In the case of attributes, the attribute name in question is given as the token.
            return o.importExpr(R3.injectAttribute).callFn([dep.token]);
        case R3ResolvedDependencyType.Invalid:
            return o.importExpr(R3.invalidFactoryDep).callFn([o.literal(index)]);
        default:
            return unsupported(`Unknown R3ResolvedDependencyType: ${R3ResolvedDependencyType[dep.resolved]}`);
    }
}
function createCtorDepsType(deps) {
    let hasTypes = false;
    const attributeTypes = deps.map(dep => {
        const type = createCtorDepType(dep);
        if (type !== null) {
            hasTypes = true;
            return type;
        }
        else {
            return o.literal(null);
        }
    });
    if (hasTypes) {
        return o.expressionType(o.literalArr(attributeTypes));
    }
    else {
        return o.NONE_TYPE;
    }
}
function createCtorDepType(dep) {
    const entries = [];
    if (dep.resolved === R3ResolvedDependencyType.Attribute) {
        if (dep.attribute !== null) {
            entries.push({ key: 'attribute', value: dep.attribute, quoted: false });
        }
    }
    if (dep.optional) {
        entries.push({ key: 'optional', value: o.literal(true), quoted: false });
    }
    if (dep.host) {
        entries.push({ key: 'host', value: o.literal(true), quoted: false });
    }
    if (dep.self) {
        entries.push({ key: 'self', value: o.literal(true), quoted: false });
    }
    if (dep.skipSelf) {
        entries.push({ key: 'skipSelf', value: o.literal(true), quoted: false });
    }
    return entries.length > 0 ? o.literalMap(entries) : null;
}
/**
 * A helper function useful for extracting `R3DependencyMetadata` from a Render2
 * `CompileTypeMetadata` instance.
 */
export function dependenciesFromGlobalMetadata(type, outputCtx, reflector) {
    // Use the `CompileReflector` to look up references to some well-known Angular types. These will
    // be compared with the token to statically determine whether the token has significance to
    // Angular, and set the correct `R3ResolvedDependencyType` as a result.
    const injectorRef = reflector.resolveExternalReference(Identifiers.Injector);
    // Iterate through the type's DI dependencies and produce `R3DependencyMetadata` for each of them.
    const deps = [];
    for (let dependency of type.diDeps) {
        if (dependency.token) {
            const tokenRef = tokenReference(dependency.token);
            let resolved = dependency.isAttribute ?
                R3ResolvedDependencyType.Attribute :
                R3ResolvedDependencyType.Token;
            // In the case of most dependencies, the token will be a reference to a type. Sometimes,
            // however, it can be a string, in the case of older Angular code or @Attribute injection.
            const token = tokenRef instanceof StaticSymbol ? outputCtx.importExpr(tokenRef) : o.literal(tokenRef);
            // Construct the dependency.
            deps.push({
                token,
                attribute: null,
                resolved,
                host: !!dependency.isHost,
                optional: !!dependency.isOptional,
                self: !!dependency.isSelf,
                skipSelf: !!dependency.isSkipSelf,
            });
        }
        else {
            unsupported('dependency without a token');
        }
    }
    return deps;
}
function isDelegatedMetadata(meta) {
    return meta.delegateType !== undefined;
}
function isExpressionFactoryMetadata(meta) {
    return meta.expression !== undefined;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicjNfZmFjdG9yeS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9yZW5kZXIzL3IzX2ZhY3RvcnkudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFDLFlBQVksRUFBQyxNQUFNLHNCQUFzQixDQUFDO0FBQ2xELE9BQU8sRUFBc0IsY0FBYyxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFHeEUsT0FBTyxFQUFDLFdBQVcsRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBQzNDLE9BQU8sS0FBSyxDQUFDLE1BQU0sc0JBQXNCLENBQUM7QUFDMUMsT0FBTyxFQUFDLFdBQVcsSUFBSSxFQUFFLEVBQUMsTUFBTSwyQkFBMkIsQ0FBQztBQUc1RCxPQUFPLEVBQWMsa0JBQWtCLEVBQUMsTUFBTSxRQUFRLENBQUM7QUFDdkQsT0FBTyxFQUFDLFdBQVcsRUFBQyxNQUFNLGFBQWEsQ0FBQztBQW9EeEMsTUFBTSxDQUFOLElBQVkscUJBSVg7QUFKRCxXQUFZLHFCQUFxQjtJQUMvQixtRUFBSyxDQUFBO0lBQ0wseUVBQVEsQ0FBQTtJQUNSLHVFQUFPLENBQUE7QUFDVCxDQUFDLEVBSlcscUJBQXFCLEtBQXJCLHFCQUFxQixRQUloQztBQW9CRCxNQUFNLENBQU4sSUFBWSxlQU1YO0FBTkQsV0FBWSxlQUFlO0lBQ3pCLCtEQUFhLENBQUE7SUFDYiwrREFBYSxDQUFBO0lBQ2IsaUVBQWMsQ0FBQTtJQUNkLHFEQUFRLENBQUE7SUFDUiw2REFBWSxDQUFBO0FBQ2QsQ0FBQyxFQU5XLGVBQWUsS0FBZixlQUFlLFFBTTFCO0FBRUQ7Ozs7Ozs7R0FPRztBQUNILE1BQU0sQ0FBTixJQUFZLHdCQXNCWDtBQXRCRCxXQUFZLHdCQUF3QjtJQUNsQzs7T0FFRztJQUNILHlFQUFTLENBQUE7SUFFVDs7OztPQUlHO0lBQ0gsaUZBQWEsQ0FBQTtJQUViOztPQUVHO0lBQ0gs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MkIsQ0FBQyxJQUF1QjtJQUMxRCxPQUFRLElBQVksQ0FBQyxVQUFVLEtBQUssU0FBUyxDQUFDO0FBQ2hELENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtTdGF0aWNTeW1ib2x9IGZyb20gJy4uL2FvdC9zdGF0aWNfc3ltYm9sJztcbmltcG9ydCB7Q29tcGlsZVR5cGVNZXRhZGF0YSwgdG9rZW5SZWZlcmVuY2V9IGZyb20gJy4uL2NvbXBpbGVfbWV0YWRhdGEnO1xuaW1wb3J0IHtDb21waWxlUmVmbGVjdG9yfSBmcm9tICcuLi9jb21waWxlX3JlZmxlY3Rvcic7XG5pbXBvcnQge0luamVjdEZsYWdzfSBmcm9tICcuLi9jb3JlJztcbmltcG9ydCB7SWRlbnRpZmllcnN9IGZyb20gJy4uL2lkZW50aWZpZXJzJztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi4vb3V0cHV0L291dHB1dF9hc3QnO1xuaW1wb3J0IHtJZGVudGlmaWVycyBhcyBSM30gZnJvbSAnLi4vcmVuZGVyMy9yM19pZGVudGlmaWVycyc7XG5pbXBvcnQge091dHB1dENvbnRleHR9IGZyb20gJy4uL3V0aWwnO1xuXG5pbXBvcnQge1IzUmVmZXJlbmNlLCB0eXBlV2l0aFBhcmFtZXRlcnN9IGZyb20gJy4vdXRpbCc7XG5pbXBvcnQge3Vuc3VwcG9ydGVkfSBmcm9tICcuL3ZpZXcvdXRpbCc7XG5cblxuXG4vKipcbiAqIE1ldGFkYXRhIHJlcXVpcmVkIGJ5IHRoZSBmYWN0b3J5IGdlbmVyYXRvciB0byBnZW5lcmF0ZSBhIGBmYWN0b3J5YCBmdW5jdGlvbiBmb3IgYSB0eXBlLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIFIzQ29uc3RydWN0b3JGYWN0b3J5TWV0YWRhdGEge1xuICAvKipcbiAgICogU3RyaW5nIG5hbWUgb2YgdGhlIHR5cGUgYmVpbmcgZ2VuZXJhdGVkICh1c2VkIHRvIG5hbWUgdGhlIGZhY3RvcnkgZnVuY3Rpb24pLlxuICAgKi9cbiAgbmFtZTogc3RyaW5nO1xuXG4gIC8qKlxuICAgKiBBbiBleHByZXNzaW9uIHJlcHJlc2VudGluZyB0aGUgaW50ZXJmYWNlIHR5cGUgYmVpbmcgY29uc3RydWN0ZWQuXG4gICAqL1xuICB0eXBlOiBSM1JlZmVyZW5jZTtcblxuICAvKipcbiAgICogQW4gZXhwcmVzc2lvbiByZXByZXNlbnRpbmcgdGhlIGNvbnN0cnVjdG9yIHR5cGUsIGludGVuZGVkIGZvciB1c2Ugd2l0aGluIGEgY2xhc3MgZGVmaW5pdGlvblxuICAgKiBpdHNlbGYuXG4gICAqXG4gICAqIFRoaXMgY2FuIGRpZmZlciBmcm9tIHRoZSBvdXRlciBgdHlwZWAgaWYgdGhlIGNsYXNzIGlzIGJlaW5nIGNvbXBpbGVkIGJ5IG5nY2MgYW5kIGlzIGluc2lkZVxuICAgKiBhbiBJSUZFIHN0cnVjdHVyZSB0aGF0IHVzZXMgYSBkaWZmZXJlbnQgbmFtZSBpbnRlcm5hbGx5LlxuICAgKi9cbiAgaW50ZXJuYWxUeXBlOiBvLkV4cHJlc3Npb247XG5cbiAgLyoqIE51bWJlciBvZiBhcmd1bWVudHMgZm9yIHRoZSBgdHlwZWAuICovXG4gIHR5cGVBcmd1bWVudENvdW50OiBudW1iZXI7XG5cbiAgLyoqXG4gICAqIFJlZ2FyZGxlc3Mgb2Ygd2hldGhlciBgZm5PckNsYXNzYCBpcyBhIGNvbnN0cnVjdG9yIGZ1bmN0aW9uIG9yIGEgdXNlci1kZWZpbmVkIGZhY3RvcnksIGl0XG4gICAqIG1heSBoYXZlIDAgb3IgbW9yZSBwYXJhbWV0ZXJzLCB3aGljaCB3aWxsIGJlIGluamVjdGVkIGFjY29yZGluZyB0byB0aGUgYFIzRGVwZW5kZW5jeU1ldGFkYXRhYFxuICAgKiBmb3IgdGhvc2UgcGFyYW1ldGVycy4gSWYgdGhpcyBpcyBgbnVsbGAsIHRoZW4gdGhlIHR5cGUncyBjb25zdHJ1Y3RvciBpcyBub25leGlzdGVudCBhbmQgd2lsbFxuICAgKiBiZSBpbmhlcml0ZWQgZnJvbSBgZm5PckNsYXNzYCB3aGljaCBpcyBpbnRlcnByZXRlZCBhcyB0aGUgY3VycmVudCB0eXBlLiBJZiB0aGlzIGlzIGAnaW52YWxpZCdgLFxuICAgKiB0aGVuIG9uZSBvciBtb3JlIG9mIHRoZSBwYXJhbWV0ZXJzIHdhc24ndCByZXNvbHZhYmxlIGFuZCBhbnkgYXR0ZW1wdCB0byB1c2UgdGhlc2UgZGVwcyB3aWxsXG4gICAqIHJlc3VsdCBpbiBhIHJ1bnRpbWUgZXJyb3IuXG4gICAqL1xuICBkZXBzOiBSM0RlcGVuZGVuY3lNZXRhZGF0YVtdfCdpbnZhbGlkJ3xudWxsO1xuXG4gIC8qKlxuICAgKiBBbiBleHByZXNzaW9uIGZvciB0aGUgZnVuY3Rpb24gd2hpY2ggd2lsbCBiZSB1c2VkIHRvIGluamVjdCBkZXBlbmRlbmNpZXMuIFRoZSBBUEkgb2YgdGhpc1xuICAgKiBmdW5jdGlvbiBjb3VsZCBiZSBkaWZmZXJlbnQsIGFuZCBvdGhlciBvcHRpb25zIGNvbnRyb2wgaG93IGl0IHdpbGwgYmUgaW52b2tlZC5cbiAgICovXG4gIGluamVjdEZuOiBvLkV4dGVybmFsUmVmZXJlbmNlO1xuXG4gIC8qKlxuICAgKiBUeXBlIG9mIHRoZSB0YXJnZXQgYmVpbmcgY3JlYXRlZCBieSB0aGUgZmFjdG9yeS5cbiAgICovXG4gIHRhcmdldDogUjNGYWN0b3J5VGFyZ2V0O1xufVxuXG5leHBvcnQgZW51bSBSM0ZhY3RvcnlEZWxlZ2F0ZVR5cGUge1xuICBDbGFzcyxcbiAgRnVuY3Rpb24sXG4gIEZhY3RvcnksXG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgUjNEZWxlZ2F0ZWRGYWN0b3J5TWV0YWRhdGEgZXh0ZW5kcyBSM0NvbnN0cnVjdG9yRmFjdG9yeU1ldGFkYXRhIHtcbiAgZGVsZWdhdGU6IG8uRXhwcmVzc2lvbjtcbiAgZGVsZWdhdGVUeXBlOiBSM0ZhY3RvcnlEZWxlZ2F0ZVR5cGUuRmFjdG9yeTtcbn1cblxuZXhwb3J0IGludGVyZmFjZSBSM0RlbGVnYXRlZEZuT3JDbGFzc01ldGFkYXRhIGV4dGVuZHMgUjNDb25zdHJ1Y3RvckZhY3RvcnlNZXRhZGF0YSB7XG4gIGRlbGVnYXRlOiBvLkV4cHJlc3Npb247XG4gIGRlbGVnYXRlVHlwZTogUjNGYWN0b3J5RGVsZWdhdGVUeXBlLkNsYXNzfFIzRmFjdG9yeURlbGVnYXRlVHlwZS5GdW5jdGlvbjtcbiAgZGVsZWdhdGVEZXBzOiBSM0RlcGVuZGVuY3lNZXRhZGF0YVtdO1xufVxuXG5leHBvcnQgaW50ZXJmYWNlIFIzRXhwcmVzc2lvbkZhY3RvcnlNZXRhZGF0YSBleHRlbmRzIFIzQ29uc3RydWN0b3JGYWN0b3J5TWV0YWRhdGEge1xuICBleHByZXNzaW9uOiBvLkV4cHJlc3Npb247XG59XG5cbmV4cG9ydCB0eXBlIFIzRmFjdG9yeU1ldGFkYXRhID0gUjNDb25zdHJ1Y3RvckZhY3RvcnlNZXRhZGF0YXxSM0RlbGVnYXRlZEZhY3RvcnlNZXRhZGF0YXxcbiAgICBSM0RlbGVnYXRlZEZuT3JDbGFzc01ldGFkYXRhfFIzRXhwcmVzc2lvbkZhY3RvcnlNZXRhZGF0YTtcblxuZXhwb3J0IGVudW0gUjNGYWN0b3J5VGFyZ2V0IHtcbiAgRGlyZWN0aXZlID0gMCxcbiAgQ29tcG9uZW50ID0gMSxcbiAgSW5qZWN0YWJsZSA9IDIsXG4gIFBpcGUgPSAzLFxuICBOZ01vZHVsZSA9IDQsXG59XG5cbi8qKlxuICogUmVzb2x2ZWQgdHlwZSBvZiBhIGRlcGVuZGVuY3kuXG4gKlxuICogT2NjYXNpb25hbGx5LCBkZXBlbmRlbmNpZXMgd2lsbCBoYXZlIHNwZWNpYWwgc2lnbmlmaWNhbmNlIHdoaWNoIGlzIGtub3duIHN0YXRpY2FsbHkuIEluIHRoYXRcbiAqIGNhc2UgdGhlIGBSM1Jlc29sdmVkRGVwZW5kZW5jeVR5cGVgIGluZm9ybXMgdGhlIGZhY3RvcnkgZ2VuZXJhdG9yIHRoYXQgYSBwYXJ0aWN1bGFyIGRlcGVuZGVuY3lcbiAqIHNob3VsZCBiZSBnZW5lcmF0ZWQgc3BlY2lhbGx5ICh1c3VhbGx5IGJ5IGNhbGxpbmcgYSBzcGVjaWFsIGluamVjdGlvbiBmdW5jdGlvbiBpbnN0ZWFkIG9mIHRoZVxuICogc3RhbmRhcmQgb25lKS5cbiAqL1xuZXhwb3J0IGVudW0gUjNSZXNvbHZlZERlcGVuZGVuY3lUeXBlIHtcbiAgLyoqXG4gICAqIEEgbm9ybWFsIHRva2VuIGRlcGVuZGVuY3kuXG4gICAqL1xuICBUb2tlbiA9IDAsXG5cbiAgLyoqXG4gICAqIFRoZSBkZXBlbmRlbmN5IGlzIGZvciBhbiBhdHRyaWJ1dGUuXG4gICAqXG4gICAqIFRoZSB0b2tlbiBleHByZXNzaW9uIGlzIGEgc3RyaW5nIHJlcHJlc2VudGluZyB0aGUgYXR0cmlidXRlIG5hbWUuXG4gICAqL1xuICBBdHRyaWJ1dGUgPSAxLFxuXG4gIC8qKlxuICAgKiBJbmplY3RpbmcgdGhlIGBDaGFuZ2VEZXRlY3RvclJlZmAgdG9rZW4uIE5lZWRzIHNwZWNpYWwgaGFuZGxpbmcgd2hlbiBpbmplY3RlZCBpbnRvIGEgcGlwZS5cbiAgICovXG4gIENoYW5nZURldGVjdG9yUmVmID0gMixcblxuICAvKipcbiAgICogQW4gaW52YWxpZCBkZXBlbmRlbmN5IChubyB0b2tlbiBjb3VsZCBiZSBkZXRlcm1pbmVkKS4gQW4gZXJyb3Igc2hvdWxkIGJlIHRocm93biBhdCBydW50aW1lLlxuICAgKi9cbiAgSW52YWxpZCA9IDMsXG59XG5cbi8qKlxuICogTWV0YWRhdGEgcmVwcmVzZW50aW5nIGEgc2luZ2xlIGRlcGVuZGVuY3kgdG8gYmUgaW5qZWN0ZWQgaW50byBhIGNvbnN0cnVjdG9yIG9yIGZ1bmN0aW9uIGNhbGwuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgUjNEZXBlbmRlbmN5TWV0YWRhdGEge1xuICAvKipcbiAgICogQW4gZXhwcmVzc2lvbiByZXByZXNlbnRpbmcgdGhlIHRva2VuIG9yIHZhbHVlIHRvIGJlIGluamVjdGVkLlxuICAgKi9cbiAgdG9rZW46IG8uRXhwcmVzc2lvbjtcblxuICAvKipcbiAgICogSWYgYW4gQEF0dHJpYnV0ZSBkZWNvcmF0b3IgaXMgcHJlc2VudCwgdGhpcyBpcyB0aGUgbGl0ZXJhbCB0eXBlIG9mIHRoZSBhdHRyaWJ1dGUgbmFtZSwgb3JcbiAgICogdGhlIHVua25vd24gdHlwZSBpZiBubyBsaXRlcmFsIHR5cGUgaXMgYXZhaWxhYmxlIChlLmcuIHRoZSBhdHRyaWJ1dGUgbmFtZSBpcyBhbiBleHByZXNzaW9uKS5cbiAgICogV2lsbCBiZSBudWxsIG90aGVyd2lzZS5cbiAgICovXG4gIGF0dHJpYnV0ZTogby5FeHByZXNzaW9ufG51bGw7XG5cbiAgLyoqXG4gICAqIEFuIGVudW0gaW5kaWNhdGluZyB3aGV0aGVyIHRoaXMgZGVwZW5kZW5jeSBoYXMgc3BlY2lhbCBtZWFuaW5nIHRvIEFuZ3VsYXIgYW5kIG5lZWRzIHRvIGJlXG4gICAqIGluamVjdGVkIHNwZWNpYWxseS5cbiAgICovXG4gIHJlc29sdmVkOiBSM1Jlc29sdmVkRGVwZW5kZW5jeVR5cGU7XG5cbiAgLyoqXG4gICAqIFdoZXRoZXIgdGhlIGRlcGVuZGVuY3kgaGFzIGFuIEBIb3N0IHF1YWxpZmllci5cbiAgICovXG4gIGhvc3Q6IGJvb2xlYW47XG5cbiAgLyoqXG4gICAqIFdoZXRoZXIgdGhlIGRlcGVuZGVuY3kgaGFzIGFuIEBPcHRpb25hbCBxdWFsaWZpZXIuXG4gICAqL1xuICBvcHRpb25hbDogYm9vbGVhbjtcblxuICAvKipcbiAgICogV2hldGhlciB0aGUgZGVwZW5kZW5jeSBoYXMgYW4gQFNlbGYgcXVhbGlmaWVyLlxuICAgKi9cbiAgc2VsZjogYm9vbGVhbjtcblxuICAvKipcbiAgICogV2hldGhlciB0aGUgZGVwZW5kZW5jeSBoYXMgYW4gQFNraXBTZWxmIHF1YWxpZmllci5cbiAgICovXG4gIHNraXBTZWxmOiBib29sZWFuO1xufVxuXG5leHBvcnQgaW50ZXJmYWNlIFIzRmFjdG9yeUZuIHtcbiAgZmFjdG9yeTogby5FeHByZXNzaW9uO1xuICBzdGF0ZW1lbnRzOiBvLlN0YXRlbWVudFtdO1xuICB0eXBlOiBvLkV4cHJlc3Npb25UeXBlO1xufVxuXG4vKipcbiAqIENvbnN0cnVjdCBhIGZhY3RvcnkgZnVuY3Rpb24gZXhwcmVzc2lvbiBmb3IgdGhlIGdpdmVuIGBSM0ZhY3RvcnlNZXRhZGF0YWAuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBjb21waWxlRmFjdG9yeUZ1bmN0aW9uKG1ldGE6IFIzRmFjdG9yeU1ldGFkYXRhKTogUjNGYWN0b3J5Rm4ge1xuICBjb25zdCB0ID0gby52YXJpYWJsZSgndCcpO1xuICBjb25zdCBzdGF0ZW1lbnRzOiBvLlN0YXRlbWVudFtdID0gW107XG4gIGxldCBjdG9yRGVwc1R5cGU6IG8uVHlwZSA9IG8uTk9ORV9UWVBFO1xuXG4gIC8vIFRoZSB0eXBlIHRvIGluc3RhbnRpYXRlIHZpYSBjb25zdHJ1Y3RvciBpbnZvY2F0aW9uLiBJZiB0aGVyZSBpcyBubyBkZWxlZ2F0ZWQgZmFjdG9yeSwgbWVhbmluZ1xuICAvLyB0aGlzIHR5cGUgaXMgYWx3YXlzIGNyZWF0ZWQgYnkgY29uc3RydWN0b3IgaW52b2NhdGlvbiwgdGhlbiB0aGlzIGlzIHRoZSB0eXBlLXRvLWNyZWF0ZVxuICAvLyBwYXJhbWV0ZXIgcHJvdmlkZWQgYnkgdGhlIHVzZXIgKHQpIGlmIHNwZWNpZmllZCwgb3IgdGhlIGN1cnJlbnQgdHlwZSBpZiBub3QuIElmIHRoZXJlIGlzIGFcbiAgLy8gZGVsZWdhdGVkIGZhY3RvcnkgKHdoaWNoIGlzIHVzZWQgdG8gY3JlYXRlIHRoZSBjdXJyZW50IHR5cGUpIHRoZW4gdGhpcyBpcyBvbmx5IHRoZSB0eXBlLXRvLVxuICAvLyBjcmVhdGUgcGFyYW1ldGVyICh0KS5cbiAgY29uc3QgdHlwZUZvckN0b3IgPSAhaXNEZWxlZ2F0ZWRNZXRhZGF0YShtZXRhKSA/XG4gICAgICBuZXcgby5CaW5hcnlPcGVyYXRvckV4cHIoby5CaW5hcnlPcGVyYXRvci5PciwgdCwgbWV0YS5pbnRlcm5hbFR5cGUpIDpcbiAgICAgIHQ7XG5cbiAgbGV0IGN0b3JFeHByOiBvLkV4cHJlc3Npb258bnVsbCA9IG51bGw7XG4gIGlmIChtZXRhLmRlcHMgIT09IG51bGwpIHtcbiAgICAvLyBUaGVyZSBpcyBhIGNvbnN0cnVjdG9yIChlaXRoZXIgZXhwbGljaXRseSBvciBpbXBsaWNpdGx5IGRlZmluZWQpLlxuICAgIGlmIChtZXRhLmRlcHMgIT09ICdpbnZhbGlkJykge1xuICAgICAgY3RvckV4cHIgPSBuZXcgby5JbnN0YW50aWF0ZUV4cHIoXG4gICAgICAgICAgdHlwZUZvckN0b3IsXG4gICAgICAgICAgaW5qZWN0RGVwZW5kZW5jaWVzKG1ldGEuZGVwcywgbWV0YS5pbmplY3RGbiwgbWV0YS50YXJnZXQgPT09IFIzRmFjdG9yeVRhcmdldC5QaXBlKSk7XG5cbiAgICAgIGN0b3JEZXBzVHlwZSA9IGNyZWF0ZUN0b3JEZXBzVHlwZShtZXRhLmRlcHMpO1xuICAgIH1cbiAgfSBlbHNlIHtcbiAgICBjb25zdCBiYXNlRmFjdG9yeSA9IG8udmFyaWFibGUoYMm1JHttZXRhLm5hbWV9X0Jhc2VGYWN0b3J5YCk7XG4gICAgY29uc3QgZ2V0SW5oZXJpdGVkRmFjdG9yeSA9IG8uaW1wb3J0RXhwcihSMy5nZXRJbmhlcml0ZWRGYWN0b3J5KTtcbiAgICBjb25zdCBiYXNlRmFjdG9yeVN0bXQgPVxuICAgICAgICBiYXNlRmFjdG9yeVxuICAgICAgICAgICAgLnNldChnZXRJbmhlcml0ZWRGYWN0b3J5LmNhbGxGbihcbiAgICAgICAgICAgICAgICBbbWV0YS5pbnRlcm5hbFR5cGVdLCAvKiBzb3VyY2VTcGFuICovIHVuZGVmaW5lZCwgLyogcHVyZSAqLyB0cnVlKSlcbiAgICAgICAgICAgIC50b0RlY2xTdG10KG8uSU5GRVJSRURfVFlQRSwgW28uU3RtdE1vZGlmaWVyLkV4cG9ydGVkLCBvLlN0bXRNb2RpZmllci5GaW5hbF0pO1xuICAgIHN0YXRlbWVudHMucHVzaChiYXNlRmFjdG9yeVN0bXQpO1xuXG4gICAgLy8gVGhlcmUgaXMgbm8gY29uc3RydWN0b3IsIHVzZSB0aGUgYmFzZSBjbGFzcycgZmFjdG9yeSB0byBjb25zdHJ1Y3QgdHlwZUZvckN0b3IuXG4gICAgY3RvckV4cHIgPSBiYXNlRmFjdG9yeS5jYWxsRm4oW3R5cGVGb3JDdG9yXSk7XG4gIH1cbiAgY29uc3QgY3RvckV4cHJGaW5hbCA9IGN0b3JFeHByO1xuXG4gIGNvbnN0IGJvZHk6IG8uU3RhdGVtZW50W10gPSBbXTtcbiAgbGV0IHJldEV4cHI6IG8uRXhwcmVzc2lvbnxudWxsID0gbnVsbDtcblxuICBmdW5jdGlvbiBtYWtlQ29uZGl0aW9uYWxGYWN0b3J5KG5vbkN0b3JFeHByOiBvLkV4cHJlc3Npb24pOiBvLlJlYWRWYXJFeHByIHtcbiAgICBjb25zdCByID0gby52YXJpYWJsZSgncicpO1xuICAgIGJvZHkucHVzaChyLnNldChvLk5VTExfRVhQUikudG9EZWNsU3RtdCgpKTtcbiAgICBsZXQgY3RvclN0bXQ6IG8uU3RhdGVtZW50fG51bGwgPSBudWxsO1xuICAgIGlmIChjdG9yRXhwckZpbmFsICE9PSBudWxsKSB7XG4gICAgICBjdG9yU3RtdCA9IHIuc2V0KGN0b3JFeHByRmluYWwpLnRvU3RtdCgpO1xuICAgIH0gZWxzZSB7XG4gICAgICBjdG9yU3RtdCA9IG8uaW1wb3J0RXhwcihSMy5pbnZhbGlkRmFjdG9yeSkuY2FsbEZuKFtdKS50b1N0bXQoKTtcbiAgICB9XG4gICAgYm9keS5wdXNoKG8uaWZTdG10KHQsIFtjdG9yU3RtdF0sIFtyLnNldChub25DdG9yRXhwcikudG9TdG10KCldKSk7XG4gICAgcmV0dXJuIHI7XG4gIH1cblxuICBpZiAoaXNEZWxlZ2F0ZWRNZXRhZGF0YShtZXRhKSAmJiBtZXRhLmRlbGVnYXRlVHlwZSA9PT0gUjNGYWN0b3J5RGVsZWdhdGVUeXBlLkZhY3RvcnkpIHtcbiAgICBjb25zdCBkZWxlZ2F0ZUZhY3RvcnkgPSBvLnZhcmlhYmxlKGDJtSR7bWV0YS5uYW1lfV9CYXNlRmFjdG9yeWApO1xuICAgIGNvbnN0IGdldEZhY3RvcnlPZiA9IG8uaW1wb3J0RXhwcihSMy5nZXRGYWN0b3J5T2YpO1xuICAgIGlmIChtZXRhLmRlbGVnYXRlLmlzRXF1aXZhbGVudChtZXRhLmludGVybmFsVHlwZSkpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihgSWxsZWdhbCBzdGF0ZTogY29tcGlsaW5nIGZhY3RvcnkgdGhhdCBkZWxlZ2F0ZXMgdG8gaXRzZWxmYCk7XG4gICAgfVxuICAgIGNvbnN0IGRlbGVnYXRlRmFjdG9yeVN0bXQgPVxuICAgICAgICBkZWxlZ2F0ZUZhY3Rvcnkuc2V0KGdldEZhY3RvcnlPZi5jYWxsRm4oW21ldGEuZGVsZWdhdGVdKSkudG9EZWNsU3RtdChvLklORkVSUkVEX1RZUEUsIFtcbiAgICAgICAgICBvLlN0bXRNb2RpZmllci5FeHBvcnRlZCwgby5TdG10TW9kaWZpZXIuRmluYWxcbiAgICAgICAgXSk7XG5cbiAgICBzdGF0ZW1lbnRzLnB1c2goZGVsZWdhdGVGYWN0b3J5U3RtdCk7XG4gICAgcmV0RXhwciA9IG1ha2VDb25kaXRpb25hbEZhY3RvcnkoZGVsZWdhdGVGYWN0b3J5LmNhbGxGbihbXSkpO1xuICB9IGVsc2UgaWYgKGlzRGVsZWdhdGVkTWV0YWRhdGEobWV0YSkpIHtcbiAgICAvLyBUaGlzIHR5cGUgaXMgY3JlYXRlZCB3aXRoIGEgZGVsZWdhdGVkIGZhY3RvcnkuIElmIGEgdHlwZSBwYXJhbWV0ZXIgaXMgbm90IHNwZWNpZmllZCwgY2FsbFxuICAgIC8vIHRoZSBmYWN0b3J5IGluc3RlYWQuXG4gICAgY29uc3QgZGVsZWdhdGVBcmdzID1cbiAgICAgICAgaW5qZWN0RGVwZW5kZW5jaWVzKG1ldGEuZGVsZWdhdGVEZXBzLCBtZXRhLmluamVjdEZuLCBtZXRhLnRhcmdldCA9PT0gUjNGYWN0b3J5VGFyZ2V0LlBpcGUpO1xuICAgIC8vIEVpdGhlciBjYWxsIGBuZXcgZGVsZWdhdGUoLi4uKWAgb3IgYGRlbGVnYXRlKC4uLilgIGRlcGVuZGluZyBvbiBtZXRhLmRlbGVnYXRlVHlwZS5cbiAgICBjb25zdCBmYWN0b3J5RXhwciA9IG5ldyAoXG4gICAgICAgIG1ldGEuZGVsZWdhdGVUeXBlID09PSBSM0ZhY3RvcnlEZWxlZ2F0ZVR5cGUuQ2xhc3MgP1xuICAgICAgICAgICAgby5JbnN0YW50aWF0ZUV4cHIgOlxuICAgICAgICAgICAgby5JbnZva2VGdW5jdGlvbkV4cHIpKG1ldGEuZGVsZWdhdGUsIGRlbGVnYXRlQXJncyk7XG4gICAgcmV0RXhwciA9IG1ha2VDb25kaXRpb25hbEZhY3RvcnkoZmFjdG9yeUV4cHIpO1xuICB9IGVsc2UgaWYgKGlzRXhwcmVzc2lvbkZhY3RvcnlNZXRhZGF0YShtZXRhKSkge1xuICAgIC8vIFRPRE8oYWx4aHViKTogZGVjaWRlIHdoZXRoZXIgdG8gbG93ZXIgdGhlIHZhbHVlIGhlcmUgb3IgaW4gdGhlIGNhbGxlclxuICAgIHJldEV4cHIgPSBtYWtlQ29uZGl0aW9uYWxGYWN0b3J5KG1ldGEuZXhwcmVzc2lvbik7XG4gIH0gZWxzZSB7XG4gICAgcmV0RXhwciA9IGN0b3JFeHByO1xuICB9XG5cbiAgaWYgKHJldEV4cHIgIT09IG51bGwpIHtcbiAgICBib2R5LnB1c2gobmV3IG8uUmV0dXJuU3RhdGVtZW50KHJldEV4cHIpKTtcbiAgfSBlbHNlIHtcbiAgICBib2R5LnB1c2goby5pbXBvcnRFeHByKFIzLmludmFsaWRGYWN0b3J5KS5jYWxsRm4oW10pLnRvU3RtdCgpKTtcbiAgfVxuXG4gIHJldHVybiB7XG4gICAgZmFjdG9yeTogby5mbihcbiAgICAgICAgW25ldyBvLkZuUGFyYW0oJ3QnLCBvLkRZTkFNSUNfVFlQRSldLCBib2R5LCBvLklORkVSUkVEX1RZUEUsIHVuZGVmaW5lZCxcbiAgICAgICAgYCR7bWV0YS5uYW1lfV9GYWN0b3J5YCksXG4gICAgc3RhdGVtZW50cyxcbiAgICB0eXBlOiBvLmV4cHJlc3Npb25UeXBlKG8uaW1wb3J0RXhwcihcbiAgICAgICAgUjMuRmFjdG9yeURlZiwgW3R5cGVXaXRoUGFyYW1ldGVycyhtZXRhLnR5cGUudHlwZSwgbWV0YS50eXBlQXJndW1lbnRDb3VudCksIGN0b3JEZXBzVHlwZV0pKVxuICB9O1xufVxuXG5mdW5jdGlvbiBpbmplY3REZXBlbmRlbmNpZXMoXG4gICAgZGVwczogUjNEZXBlbmRlbmN5TWV0YWRhdGFbXSwgaW5qZWN0Rm46IG8uRXh0ZXJuYWxSZWZlcmVuY2UsIGlzUGlwZTogYm9vbGVhbik6IG8uRXhwcmVzc2lvbltdIHtcbiAgcmV0dXJuIGRlcHMubWFwKChkZXAsIGluZGV4KSA9PiBjb21waWxlSW5qZWN0RGVwZW5kZW5jeShkZXAsIGluamVjdEZuLCBpc1BpcGUsIGluZGV4KSk7XG59XG5cbmZ1bmN0aW9uIGNvbXBpbGVJbmplY3REZXBlbmRlbmN5KFxuICAgIGRlcDogUjNEZXBlbmRlbmN5TWV0YWRhdGEsIGluamVjdEZuOiBvLkV4dGVybmFsUmVmZXJlbmNlLCBpc1BpcGU6IGJvb2xlYW4sXG4gICAgaW5kZXg6IG51bWJlcik6IG8uRXhwcmVzc2lvbiB7XG4gIC8vIEludGVycHJldCB0aGUgZGVwZW5kZW5jeSBhY2NvcmRpbmcgdG8gaXRzIHJlc29sdmVkIHR5cGUuXG4gIHN3aXRjaCAoZGVwLnJlc29sdmVkKSB7XG4gICAgY2FzZSBSM1Jlc29sdmVkRGVwZW5kZW5jeVR5cGUuVG9rZW46XG4gICAgY2FzZSBSM1Jlc29sdmVkRGVwZW5kZW5jeVR5cGUuQ2hhbmdlRGV0ZWN0b3JSZWY6XG4gICAgICAvLyBCdWlsZCB1cCB0aGUgaW5qZWN0aW9uIGZsYWdzIGFjY29yZGluZyB0byB0aGUgbWV0YWRhdGEuXG4gICAgICBjb25zdCBmbGFncyA9IEluamVjdEZsYWdzLkRlZmF1bHQgfCAoZGVwLnNlbGYgPyBJbmplY3RGbGFncy5TZWxmIDogMCkgfFxuICAgICAgICAgIChkZXAuc2tpcFNlbGYgPyBJbmplY3RGbGFncy5Ta2lwU2VsZiA6IDApIHwgKGRlcC5ob3N0ID8gSW5qZWN0RmxhZ3MuSG9zdCA6IDApIHxcbiAgICAgICAgICAoZGVwLm9wdGlvbmFsID8gSW5qZWN0RmxhZ3MuT3B0aW9uYWwgOiAwKTtcblxuICAgICAgLy8gSWYgdGhpcyBkZXBlbmRlbmN5IGlzIG9wdGlvbmFsIG9yIG90aGVyd2lzZSBoYXMgbm9uLWRlZmF1bHQgZmxhZ3MsIHRoZW4gYWRkaXRpb25hbFxuICAgICAgLy8gcGFyYW1ldGVycyBkZXNjcmliaW5nIGhvdyB0byBpbmplY3QgdGhlIGRlcGVuZGVuY3kgbXVzdCBiZSBwYXNzZWQgdG8gdGhlIGluamVjdCBmdW5jdGlvblxuICAgICAgLy8gdGhhdCdzIGJlaW5nIHVzZWQuXG4gICAgICBsZXQgZmxhZ3NQYXJhbTogby5MaXRlcmFsRXhwcnxudWxsID1cbiAgICAgICAgICAoZmxhZ3MgIT09IEluamVjdEZsYWdzLkRlZmF1bHQgfHwgZGVwLm9wdGlvbmFsKSA/IG8ubGl0ZXJhbChmbGFncykgOiBudWxsO1xuXG4gICAgICAvLyBXZSBoYXZlIGEgc2VwYXJhdGUgaW5zdHJ1Y3Rpb24gZm9yIGluamVjdGluZyBDaGFuZ2VEZXRlY3RvclJlZiBpbnRvIGEgcGlwZS5cbiAgICAgIGlmIChpc1BpcGUgJiYgZGVwLnJlc29sdmVkID09PSBSM1Jlc29sdmVkRGVwZW5kZW5jeVR5cGUuQ2hhbmdlRGV0ZWN0b3JSZWYpIHtcbiAgICAgICAgcmV0dXJuIG8uaW1wb3J0RXhwcihSMy5pbmplY3RQaXBlQ2hhbmdlRGV0ZWN0b3JSZWYpLmNhbGxGbihmbGFnc1BhcmFtID8gW2ZsYWdzUGFyYW1dIDogW10pO1xuICAgICAgfVxuXG4gICAgICAvLyBCdWlsZCB1cCB0aGUgYXJndW1lbnRzIHRvIHRoZSBpbmplY3RGbiBjYWxsLlxuICAgICAgY29uc3QgaW5qZWN0QXJncyA9IFtkZXAudG9rZW5dO1xuICAgICAgaWYgKGZsYWdzUGFyYW0pIHtcbiAgICAgICAgaW5qZWN0QXJncy5wdXNoKGZsYWdzUGFyYW0pO1xuICAgICAgfVxuICAgICAgcmV0dXJuIG8uaW1wb3J0RXhwcihpbmplY3RGbikuY2FsbEZuKGluamVjdEFyZ3MpO1xuICAgIGNhc2UgUjNSZXNvbHZlZERlcGVuZGVuY3lUeXBlLkF0dHJpYnV0ZTpcbiAgICAgIC8vIEluIHRoZSBjYXNlIG9mIGF0dHJpYnV0ZXMsIHRoZSBhdHRyaWJ1dGUgbmFtZSBpbiBxdWVzdGlvbiBpcyBnaXZlbiBhcyB0aGUgdG9rZW4uXG4gICAgICByZXR1cm4gby5pbXBvcnRFeHByKFIzLmluamVjdEF0dHJpYnV0ZSkuY2FsbEZuKFtkZXAudG9rZW5dKTtcbiAgICBjYXNlIFIzUmVzb2x2ZWREZXBlbmRlbmN5VHlwZS5JbnZhbGlkOlxuICAgICAgcmV0dXJuIG8uaW1wb3J0RXhwcihSMy5pbnZhbGlkRmFjdG9yeURlcCkuY2FsbEZuKFtvLmxpdGVyYWwoaW5kZXgpXSk7XG4gICAgZGVmYXVsdDpcbiAgICAgIHJldHVybiB1bnN1cHBvcnRlZChcbiAgICAgICAgICBgVW5rbm93biBSM1Jlc29sdmVkRGVwZW5kZW5jeVR5cGU6ICR7UjNSZXNvbHZlZERlcGVuZGVuY3lUeXBlW2RlcC5yZXNvbHZlZF19YCk7XG4gIH1cbn1cblxuZnVuY3Rpb24gY3JlYXRlQ3RvckRlcHNUeXBlKGRlcHM6IFIzRGVwZW5kZW5jeU1ldGFkYXRhW10pOiBvLlR5cGUge1xuICBsZXQgaGFzVHlwZXMgPSBmYWxzZTtcbiAgY29uc3QgYXR0cmlidXRlVHlwZXMgPSBkZXBzLm1hcChkZXAgPT4ge1xuICAgIGNvbnN0IHR5cGUgPSBjcmVhdGVDdG9yRGVwVHlwZShkZXApO1xuICAgIGlmICh0eXBlICE9PSBudWxsKSB7XG4gICAgICBoYXNUeXBlcyA9IHRydWU7XG4gICAgICByZXR1cm4gdHlwZTtcbiAgICB9IGVsc2Uge1xuICAgICAgcmV0dXJuIG8ubGl0ZXJhbChudWxsKTtcbiAgICB9XG4gIH0pO1xuXG4gIGlmIChoYXNUeXBlcykge1xuICAgIHJldHVybiBvLmV4cHJlc3Npb25UeXBlKG8ubGl0ZXJhbEFycihhdHRyaWJ1dGVUeXBlcykpO1xuICB9IGVsc2Uge1xuICAgIHJldHVybiBvLk5PTkVfVFlQRTtcbiAgfVxufVxuXG5mdW5jdGlvbiBjcmVhdGVDdG9yRGVwVHlwZShkZXA6IFIzRGVwZW5kZW5jeU1ldGFkYXRhKTogby5MaXRlcmFsTWFwRXhwcnxudWxsIHtcbiAgY29uc3QgZW50cmllczoge2tleTogc3RyaW5nLCBxdW90ZWQ6IGJvb2xlYW4sIHZhbHVlOiBvLkV4cHJlc3Npb259W10gPSBbXTtcblxuICBpZiAoZGVwLnJlc29sdmVkID09PSBSM1Jlc29sdmVkRGVwZW5kZW5jeVR5cGUuQXR0cmlidXRlKSB7XG4gICAgaWYgKGRlcC5hdHRyaWJ1dGUgIT09IG51bGwpIHtcbiAgICAgIGVudHJpZXMucHVzaCh7a2V5OiAnYXR0cmlidXRlJywgdmFsdWU6IGRlcC5hdHRyaWJ1dGUsIHF1b3RlZDogZmFsc2V9KTtcbiAgICB9XG4gIH1cbiAgaWYgKGRlcC5vcHRpb25hbCkge1xuICAgIGVudHJpZXMucHVzaCh7a2V5OiAnb3B0aW9uYWwnLCB2YWx1ZTogby5saXRlcmFsKHRydWUpLCBxdW90ZWQ6IGZhbHNlfSk7XG4gIH1cbiAgaWYgKGRlcC5ob3N0KSB7XG4gICAgZW50cmllcy5wdXNoKHtrZXk6ICdob3N0JywgdmFsdWU6IG8ubGl0ZXJhbCh0cnVlKSwgcXVvdGVkOiBmYWxzZX0pO1xuICB9XG4gIGlmIChkZXAuc2VsZikge1xuICAgIGVudHJpZXMucHVzaCh7a2V5OiAnc2VsZicsIHZhbHVlOiBvLmxpdGVyYWwodHJ1ZSksIHF1b3RlZDogZmFsc2V9KTtcbiAgfVxuICBpZiAoZGVwLnNraXBTZWxmKSB7XG4gICAgZW50cmllcy5wdXNoKHtrZXk6ICdza2lwU2VsZicsIHZhbHVlOiBvLmxpdGVyYWwodHJ1ZSksIHF1b3RlZDogZmFsc2V9KTtcbiAgfVxuXG4gIHJldHVybiBlbnRyaWVzLmxlbmd0aCA+IDAgPyBvLmxpdGVyYWxNYXAoZW50cmllcykgOiBudWxsO1xufVxuXG4vKipcbiAqIEEgaGVscGVyIGZ1bmN0aW9uIHVzZWZ1bCBmb3IgZXh0cmFjdGluZyBgUjNEZXBlbmRlbmN5TWV0YWRhdGFgIGZyb20gYSBSZW5kZXIyXG4gKiBgQ29tcGlsZVR5cGVNZXRhZGF0YWAgaW5zdGFuY2UuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBkZXBlbmRlbmNpZXNGcm9tR2xvYmFsTWV0YWRhdGEoXG4gICAgdHlwZTogQ29tcGlsZVR5cGVNZXRhZGF0YSwgb3V0cHV0Q3R4OiBPdXRwdXRDb250ZXh0LFxuICAgIHJlZmxlY3RvcjogQ29tcGlsZVJlZmxlY3Rvcik6IFIzRGVwZW5kZW5jeU1ldGFkYXRhW10ge1xuICAvLyBVc2UgdGhlIGBDb21waWxlUmVmbGVjdG9yYCB0byBsb29rIHVwIHJlZmVyZW5jZXMgdG8gc29tZSB3ZWxsLWtub3duIEFuZ3VsYXIgdHlwZXMuIFRoZXNlIHdpbGxcbiAgLy8gYmUgY29tcGFyZWQgd2l0aCB0aGUgdG9rZW4gdG8gc3RhdGljYWxseSBkZXRlcm1pbmUgd2hldGhlciB0aGUgdG9rZW4gaGFzIHNpZ25pZmljYW5jZSB0b1xuICAvLyBBbmd1bGFyLCBhbmQgc2V0IHRoZSBjb3JyZWN0IGBSM1Jlc29sdmVkRGVwZW5kZW5jeVR5cGVgIGFzIGEgcmVzdWx0LlxuICBjb25zdCBpbmplY3RvclJlZiA9IHJlZmxlY3Rvci5yZXNvbHZlRXh0ZXJuYWxSZWZlcmVuY2UoSWRlbnRpZmllcnMuSW5qZWN0b3IpO1xuXG4gIC8vIEl0ZXJhdGUgdGhyb3VnaCB0aGUgdHlwZSdzIERJIGRlcGVuZGVuY2llcyBhbmQgcHJvZHVjZSBgUjNEZXBlbmRlbmN5TWV0YWRhdGFgIGZvciBlYWNoIG9mIHRoZW0uXG4gIGNvbnN0IGRlcHM6IFIzRGVwZW5kZW5jeU1ldGFkYXRhW10gPSBbXTtcbiAgZm9yIChsZXQgZGVwZW5kZW5jeSBvZiB0eXBlLmRpRGVwcykge1xuICAgIGlmIChkZXBlbmRlbmN5LnRva2VuKSB7XG4gICAgICBjb25zdCB0b2tlblJlZiA9IHRva2VuUmVmZXJlbmNlKGRlcGVuZGVuY3kudG9rZW4pO1xuICAgICAgbGV0IHJlc29sdmVkOiBSM1Jlc29sdmVkRGVwZW5kZW5jeVR5cGUgPSBkZXBlbmRlbmN5LmlzQXR0cmlidXRlID9cbiAgICAgICAgICBSM1Jlc29sdmVkRGVwZW5kZW5jeVR5cGUuQXR0cmlidXRlIDpcbiAgICAgICAgICBSM1Jlc29sdmVkRGVwZW5kZW5jeVR5cGUuVG9rZW47XG5cbiAgICAgIC8vIEluIHRoZSBjYXNlIG9mIG1vc3QgZGVwZW5kZW5jaWVzLCB0aGUgdG9rZW4gd2lsbCBiZSBhIHJlZmVyZW5jZSB0byBhIHR5cGUuIFNvbWV0aW1lcyxcbiAgICAgIC8vIGhvd2V2ZXIsIGl0IGNhbiBiZSBhIHN0cmluZywgaW4gdGhlIGNhc2Ugb2Ygb2xkZXIgQW5ndWxhciBjb2RlIG9yIEBBdHRyaWJ1dGUgaW5qZWN0aW9uLlxuICAgICAgY29uc3QgdG9rZW4gPVxuICAgICAgICAgIHRva2VuUmVmIGluc3RhbmNlb2YgU3RhdGljU3ltYm9sID8gb3V0cHV0Q3R4LmltcG9ydEV4cHIodG9rZW5SZWYpIDogby5saXRlcmFsKHRva2VuUmVmKTtcblxuICAgICAgLy8gQ29uc3RydWN0IHRoZSBkZXBlbmRlbmN5LlxuICAgICAgZGVwcy5wdXNoKHtcbiAgICAgICAgdG9rZW4sXG4gICAgICAgIGF0dHJpYnV0ZTogbnVsbCxcbiAgICAgICAgcmVzb2x2ZWQsXG4gICAgICAgIGhvc3Q6ICEhZGVwZW5kZW5jeS5pc0hvc3QsXG4gICAgICAgIG9wdGlvbmFsOiAhIWRlcGVuZGVuY3kuaXNPcHRpb25hbCxcbiAgICAgICAgc2VsZjogISFkZXBlbmRlbmN5LmlzU2VsZixcbiAgICAgICAgc2tpcFNlbGY6ICEhZGVwZW5kZW5jeS5pc1NraXBTZWxmLFxuICAgICAgfSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHVuc3VwcG9ydGVkKCdkZXBlbmRlbmN5IHdpdGhvdXQgYSB0b2tlbicpO1xuICAgIH1cbiAgfVxuXG4gIHJldHVybiBkZXBzO1xufVxuXG5mdW5jdGlvbiBpc0RlbGVnYXRlZE1ldGFkYXRhKG1ldGE6IFIzRmFjdG9yeU1ldGFkYXRhKTogbWV0YSBpcyBSM0RlbGVnYXRlZEZhY3RvcnlNZXRhZGF0YXxcbiAgICBSM0RlbGVnYXRlZEZuT3JDbGFzc01ldGFkYXRhIHtcbiAgcmV0dXJuIChtZXRhIGFzIGFueSkuZGVsZWdhdGVUeXBlICE9PSB1bmRlZmluZWQ7XG59XG5cbmZ1bmN0aW9uIGlzRXhwcmVzc2lvbkZhY3RvcnlNZXRhZGF0YShtZXRhOiBSM0ZhY3RvcnlNZXRhZGF0YSk6IG1ldGEgaXMgUjNFeHByZXNzaW9uRmFjdG9yeU1ldGFkYXRhIHtcbiAgcmV0dXJuIChtZXRhIGFzIGFueSkuZXhwcmVzc2lvbiAhPT0gdW5kZWZpbmVkO1xufVxuIl19