/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/view/ng_module.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { resolveForwardRef } from '../di/forward_ref';
import { Injector } from '../di/injector';
import { INJECTOR, setCurrentInjector } from '../di/injector_compatibility';
import { getInjectableDef } from '../di/interface/defs';
import { INJECTOR_SCOPE } from '../di/scope';
import { NgModuleRef } from '../linker/ng_module_factory';
import { newArray } from '../util/array_utils';
import { stringify } from '../util/stringify';
import { splitDepsDsl, tokenKey } from './util';
/** @type {?} */
const UNDEFINED_VALUE = {};
/** @type {?} */
const InjectorRefTokenKey = tokenKey(Injector);
/** @type {?} */
const INJECTORRefTokenKey = tokenKey(INJECTOR);
/** @type {?} */
const NgModuleRefTokenKey = tokenKey(NgModuleRef);
/**
 * @param {?} flags
 * @param {?} token
 * @param {?} value
 * @param {?} deps
 * @return {?}
 */
export function moduleProvideDef(flags, token, value, deps) {
    // Need to resolve forwardRefs as e.g. for `useValue` we
    // lowered the expression and then stopped evaluating it,
    // i.e. also didn't unwrap it.
    value = resolveForwardRef(value);
    /** @type {?} */
    const depDefs = splitDepsDsl(deps, stringify(token));
    return {
        // will bet set by the module definition
        index: -1,
        deps: depDefs, flags, token, value
    };
}
/**
 * @param {?} providers
 * @return {?}
 */
export function moduleDef(providers) {
    /** @type {?} */
    const providersByKey = {};
    /** @type {?} */
    const modules = [];
    /** @type {?} */
    let scope = null;
    for (let i = 0; i < providers.length; i++) {
        /** @type {?} */
        const provider = providers[i];
        if (provider.token === INJECTOR_SCOPE) {
            scope = provider.value;
        }
        if (provider.flags & 1073741824 /* TypeNgModule */) {
            modules.push(provider.token);
        }
        provider.index = i;
        providersByKey[tokenKey(provider.token)] = provider;
    }
    return {
        // Will be filled later...
        factory: null,
        providersByKey,
        providers,
        modules,
        scope: scope,
    };
}
/**
 * @param {?} data
 * @return {?}
 */
export function initNgModule(data) {
    /** @type {?} */
    const def = data._def;
    /** @type {?} */
    const providers = data._providers = newArray(def.providers.length);
    for (let i = 0; i < def.providers.length; i++) {
        /** @type {?} */
        const provDef = def.providers[i];
        if (!(provDef.flags & 4096 /* LazyProvider */)) {
            // Make sure the provider has not been already initialized outside this loop.
            if (providers[i] === undefined) {
                providers[i] = _createProviderInstance(data, provDef);
            }
        }
    }
}
/**
 * @param {?} data
 * @param {?} depDef
 * @param {?=} notFoundValue
 * @return {?}
 */
export function resolveNgModuleDep(data, depDef, notFoundValue = Injector.THROW_IF_NOT_FOUND) {
    /** @type {?} */
    const former = setCurrentInjector(data);
    try {
        if (depDef.flags & 8 /* Value */) {
            return depDef.token;
        }
        if (depDef.flags & 2 /* Optional */) {
            notFoundValue = null;
        }
        if (depDef.flags & 1 /* SkipSelf */) {
            return data._parent.get(depDef.token, notFoundValue);
        }
        /** @type {?} */
        const tokenKey = depDef.tokenKey;
        switch (tokenKey) {
            case InjectorRefTokenKey:
            case INJECTORRefTokenKey:
            case NgModuleRefTokenKey:
                return data;
        }
        /** @type {?} */
        const providerDef = data._def.providersByKey[tokenKey];
        /** @type {?} */
        let injectableDef;
        if (providerDef) {
            /** @type {?} */
            let providerInstance = data._providers[providerDef.index];
            if (providerInstance === undefined) {
                providerInstance = data._providers[providerDef.index] =
                    _createProviderInstance(data, providerDef);
            }
            return providerInstance === UNDEFINED_VALUE ? undefined : providerInstance;
        }
        else if ((injectableDef = getInjectableDef(depDef.token)) && targetsModule(data, injectableDef)) {
            /** @type {?} */
            const index = data._providers.length;
            data._def.providers[index] = data._def.providersByKey[depDef.tokenKey] = {
                flags: 1024 /* TypeFactoryProvider */ | 4096 /* LazyProvider */,
                value: injectableDef.factory,
                deps: [], index,
                token: depDef.token,
            };
            data._providers[index] = UNDEFINED_VALUE;
            return (data._providers[index] =
                _createProviderInstance(data, data._def.providersByKey[depDef.tokenKey]));
        }
        else if (depDef.flags & 4 /* Self */) {
            return notFoundValue;
        }
        return data._parent.get(depDef.token, notFoundValue);
    }
    finally {
        setCurrentInjector(former);
    }
}
/**
 * @param {?} ngModule
 * @param {?} scope
 * @return {?}
 */
function moduleTransitivelyPresent(ngModule, scope) {
    return ngModule._def.modules.indexOf(scope) > -1;
}
/**
 * @param {?} ngModule
 * @param {?} def
 * @return {?}
 */
function targetsModule(ngModule, def) {
    /** @type {?} */
    const providedIn = def.providedIn;
    return providedIn != null && (providedIn === 'any' || providedIn === ngModule._def.scope ||
        moduleTransitivelyPresent(ngModule, providedIn));
}
/**
 * @param {?} ngModule
 * @param {?} providerDef
 * @return {?}
 */
function _createProviderInstance(ngModule, providerDef) {
    /** @type {?} */
    let injectable;
    switch (providerDef.flags & 201347067 /* Types */) {
        case 512 /* TypeClassProvider */:
            injectable = _createClass(ngModule, providerDef.value, providerDef.deps);
            break;
        case 1024 /* TypeFactoryProvider */:
            injectable = _callFactory(ngModule, providerDef.value, providerDef.deps);
            break;
        case 2048 /* TypeUseExistingProvider */:
            injectable = resolveNgModuleDep(ngModule, providerDef.deps[0]);
            break;
        case 256 /* TypeValueProvider */:
            injectable = providerDef.value;
            break;
    }
    // The read of `ngOnDestroy` here is slightly expensive as it's megamorphic, so it should be
    // avoided if possible. The sequence of checks here determines whether ngOnDestroy needs to be
    // checked. It might not if the `injectable` isn't an object or if NodeFlags.OnDestroy is already
    // set (ngOnDestroy was detected statically).
    if (injectable !== UNDEFINED_VALUE && injectable !== null && typeof injectable === 'object' &&
        !(providerDef.flags & 131072 /* OnDestroy */) && typeof injectable.ngOnDestroy === 'function') {
        providerDef.flags |= 131072 /* OnDestroy */;
    }
    return injectable === undefined ? UNDEFINED_VALUE : injectable;
}
/**
 * @param {?} ngModule
 * @param {?} ctor
 * @param {?} deps
 * @return {?}
 */
function _createClass(ngModule, ctor, deps) {
    /** @type {?} */
    const len = deps.length;
    switch (len) {
        case 0:
            return new ctor();
        case 1:
            return new ctor(resolveNgModuleDep(ngModule, deps[0]));
        case 2:
            return new ctor(resolveNgModuleDep(ngModule, deps[0]), resolveNgModuleDep(ngModule, deps[1]));
        case 3:
            return new ctor(resolveNgModuleDep(ngModule, deps[0]), resolveNgModuleDep(ngModule, deps[1]), resolveNgModuleDep(ngModule, deps[2]));
        default:
            /** @type {?} */
            const depValues = [];
            for (let i = 0; i < len; i++) {
                depValues[i] = resolveNgModuleDep(ngModule, deps[i]);
            }
            return new ctor(...depValues);
    }
}
/**
 * @param {?} ngModule
 * @param {?} factory
 * @param {?} deps
 * @return {?}
 */
function _callFactory(ngModule, factory, deps) {
    /** @type {?} */
    const len = deps.length;
    switch (len) {
        case 0:
            return factory();
        case 1:
            return factory(resolveNgModuleDep(ngModule, deps[0]));
        case 2:
            return factory(resolveNgModuleDep(ngModule, deps[0]), resolveNgModuleDep(ngModule, deps[1]));
        case 3:
            return factory(resolveNgModuleDep(ngModule, deps[0]), resolveNgModuleDep(ngModule, deps[1]), resolveNgModuleDep(ngModule, deps[2]));
        default:
            /** @type {?} */
            const depValues = [];
            for (let i = 0; i < len; i++) {
                depValues[i] = resolveNgModuleDep(ngModule, deps[i]);
            }
            return factory(...depValues);
    }
}
/**
 * @param {?} ngModule
 * @param {?} lifecycles
 * @return {?}
 */
export function callNgModuleLifecycle(ngModule, lifecycles) {
    /** @type {?} */
    const def = ngModule._def;
    /** @type {?} */
    const destroyed = new Set();
    for (let i = 0; i < def.providers.length; i++) {
        /** @type {?} */
        const provDef = def.providers[i];
        if (provDef.flags & 131072 /* OnDestroy */) {
            /** @type {?} */
            const instance = ngModule._providers[i];
            if (instance && instance !== UNDEFINED_VALUE) {
                /** @type {?} */
                const onDestroy = instance.ngOnDestroy;
                if (typeof onDestroy === 'function' && !destroyed.has(instance)) {
                    onDestroy.apply(instance);
                    destroyed.add(instance);
                }
            }
        }
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmdfbW9kdWxlLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvdmlldy9uZ19tb2R1bGUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBUUEsT0FBTyxFQUFDLGlCQUFpQixFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFDcEQsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBQ3hDLE9BQU8sRUFBQyxRQUFRLEVBQUUsa0JBQWtCLEVBQUMsTUFBTSw4QkFBOEIsQ0FBQztBQUMxRSxPQUFPLEVBQUMsZ0JBQWdCLEVBQWtCLE1BQU0sc0JBQXNCLENBQUM7QUFDdkUsT0FBTyxFQUFDLGNBQWMsRUFBQyxNQUFNLGFBQWEsQ0FBQztBQUMzQyxPQUFPLEVBQUMsV0FBVyxFQUFDLE1BQU0sNkJBQTZCLENBQUM7QUFDeEQsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLHFCQUFxQixDQUFDO0FBQzdDLE9BQU8sRUFBQyxTQUFTLEVBQUMsTUFBTSxtQkFBbUIsQ0FBQztBQUc1QyxPQUFPLEVBQUMsWUFBWSxFQUFFLFFBQVEsRUFBQyxNQUFNLFFBQVEsQ0FBQzs7TUFFeEMsZUFBZSxHQUFHLEVBQUU7O01BRXBCLG1CQUFtQixHQUFHLFFBQVEsQ0FBQyxRQUFRLENBQUM7O01BQ3hDLG1CQUFtQixHQUFHLFFBQVEsQ0FBQyxRQUFRLENBQUM7O01BQ3hDLG1CQUFtQixHQUFHLFFBQVEsQ0FBQyxXQUFXLENBQUM7Ozs7Ozs7O0FBRWpELE1BQU0sVUFBVSxnQkFBZ0IsQ0FDNUIsS0FBZ0IsRUFBRSxLQUFVLEVBQUUsS0FBVSxFQUN4QyxJQUErQjtJQUNqQyx3REFBd0Q7SUFDeEQseURBQXlEO0lBQ3pELDhCQUE4QjtJQUM5QixLQUFLLEdBQUcsaUJBQWlCLENBQUMsS0FBSyxDQUFDLENBQUM7O1VBQzNCLE9BQU8sR0FBRyxZQUFZLENBQUMsSUFBSSxFQUFFLFNBQVMsQ0FBQyxLQUFLLENBQUMsQ0FBQztJQUNwRCxPQUFPOztRQUVMLEtBQUssRUFBRSxDQUFDLENBQUM7UUFDVCxJQUFJLEVBQUUsT0FBTyxFQUFFLEtBQUssRUFBRSxLQUFLLEVBQUUsS0FBSztLQUNuQyxDQUFDO0FBQ0osQ0FBQzs7Ozs7QUFFRCxNQUFNLFVBQVUsU0FBUyxDQUFDLFNBQWdDOztVQUNsRCxjQUFjLEdBQXlDLEVBQUU7O1VBQ3pELE9BQU8sR0FBRyxFQUFFOztRQUNkLEtBQUssR0FBMkIsSUFBSTtJQUN4QyxLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsU0FBUyxDQUFDLE1BQU0sRUFBRSxDQUFDLEVBQUUsRUFBRTs7Y0FDbkMsUUFBUSxHQUFHLFNBQVMsQ0FBQyxDQUFDLENBQUM7UUFDN0IsSUFBSSxRQUFRLENBQUMsS0FBSyxLQUFLLGNBQWMsRUFBRTtZQUNyQyxLQUFLLEdBQUcsUUFBUSxDQUFDLEtBQUssQ0FBQztTQUN4QjtRQUNELElBQUksUUFBUSxDQUFDLEtBQUssZ0NBQXlCLEVBQUU7WUFDM0MsT0FBTyxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUMsS0FBSyxDQUFDLENBQUM7U0FDOUI7UUFDRCxRQUFRLENBQUMsS0FBSyxHQUFHLENBQUMsQ0FBQztRQUNuQixjQUFjLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxLQUFLLENBQUMsQ0FBQyxHQUFHLFFBQVEsQ0FBQztLQUNyRDtJQUNELE9BQU87O1FBRUwsT0FBTyxFQUFFLElBQUk7UUFDYixjQUFjO1FBQ2QsU0FBUztRQUNULE9BQU87UUFDUCxLQUFLLEVBQUUsS0FBSztLQUNiLENBQUM7QUFDSixDQUFDOzs7OztBQUVELE1BQU0sVUFBVSxZQUFZLENBQUMsSUFBa0I7O1VBQ3ZDLEdBQUcsR0FBRyxJQUFJLENBQUMsSUFBSTs7VUFDZixTQUFTLEdBQUcsSUFBSSxDQUFDLFVBQVUsR0FBRyxRQUFRLENBQUMsR0FBRyxDQUFDLFNBQVMsQ0FBQyxNQUFNLENBQUM7SUFDbEUsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLEdBQUcsQ0FBQyxTQUFTLENBQUMsTUFBTSxFQUFFLENBQUMsRUFBRSxFQUFFOztjQUN2QyxPQUFPLEdBQUcsR0FBRyxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUM7UUFDaEMsSUFBSSxDQUFDLENBQUMsT0FBTyxDQUFDLEtBQUssMEJBQXlCLENBQUMsRUFBRTtZQUM3Qyw2RUFBNkU7WUFDN0UsSUFBSSxTQUFTLENBQUMsQ0FBQyxDQUFDLEtBQUssU0FBUyxFQUFFO2dCQUM5QixTQUFTLENBQUMsQ0FBQyxDQUFDLEdBQUcsdUJBQXVCLENBQUMsSUFBSSxFQUFFLE9BQU8sQ0FBQyxDQUFDO2FBQ3ZEO1NBQ0Y7S0FDRjtBQUNILENBQUM7Ozs7Ozs7QUFFRCxNQUFNLFVBQVUsa0JBQWtCLENBQzlCLElBQWtCLEVBQUUsTUFBYyxFQUFFLGdCQUFxQixRQUFRLENBQUMsa0JBQWtCOztVQUNoRixNQUFNLEdBQUcsa0JBQWtCLENBQUMsSUFBSSxDQUFDO0lBQ3ZDLElBQUk7UUFDRixJQUFJLE1BQU0sQ0FBQyxLQUFLLGdCQUFpQixFQUFFO1lBQ2pDLE9BQU8sTUFBTSxDQUFDLEtBQUssQ0FBQztTQUNyQjtRQUNELElBQUksTUFBTSxDQUFDLEtBQUssbUJBQW9CLEVBQUU7WUFDcEMsYUFBYSxHQUFHLElBQUksQ0FBQztTQUN0QjtRQUNELElBQUksTUFBTSxDQUFDLEtBQUssbUJBQW9CLEVBQUU7WUFDcEMsT0FBTyxJQUFJLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxNQUFNLENBQUMsS0FBSyxFQUFFLGFBQWEsQ0FBQyxDQUFDO1NBQ3REOztjQUNLLFFBQVEsR0FBRyxNQUFNLENBQUMsUUFBUTtRQUNoQyxRQUFRLFFBQVEsRUFBRTtZQUNoQixLQUFLLG1CQUFtQixDQUFDO1lBQ3pCLEtBQUssbUJBQW1CLENBQUM7WUFDekIsS0FBSyxtQkFBbUI7Z0JBQ3RCLE9BQU8sSUFBSSxDQUFDO1NBQ2Y7O2NBQ0ssV0FBVyxHQUFHLElBQUksQ0FBQyxJQUFJLENBQUMsY0FBYyxDQUFDLFFBQVEsQ0FBQzs7WUFDbEQsYUFBd0M7UUFDNUMsSUFBSSxXQUFXLEVBQUU7O2dCQUNYLGdCQUFnQixHQUFHLElBQUksQ0FBQyxVQUFVLENBQUMsV0FBVyxDQUFDLEtBQUssQ0FBQztZQUN6RCxJQUFJLGdCQUFnQixLQUFLLFNBQVMsRUFBRTtnQkFDbEMsZ0JBQWdCLEdBQUcsSUFBSSxDQUFDLFVBQVUsQ0FBQyxXQUFXLENBQUMsS0FBSyxDQUFDO29CQUNqRCx1QkFBdUIsQ0FBQyxJQUFJLEVBQUUsV0FBVyxDQUFDLENBQUM7YUFDaEQ7WUFDRCxPQUFPLGdCQUFnQixLQUFLLGVBQWUsQ0FBQyxDQUFDLENBQUMsU0FBUyxDQUFDLENBQUMsQ0FBQyxnQkFBZ0IsQ0FBQztTQUM1RTthQUFNLElBQ0gsQ0FBQyxhQUFhLEdBQUcsZ0JBQWdCLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyxDQUFDLElBQUksYUFBYSxDQUFDLElBQUksRUFBRSxhQUFhLENBQUMsRUFBRTs7a0JBQ3BGLEtBQUssR0FBRyxJQUFJLENBQUMsVUFBVSxDQUFDLE1BQU07WUFDcEMsSUFBSSxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsS0FBSyxDQUFDLEdBQUcsSUFBSSxDQUFDLElBQUksQ0FBQyxjQUFjLENBQUMsTUFBTSxDQUFDLFFBQVEsQ0FBQyxHQUFHO2dCQUN2RSxLQUFLLEVBQUUsd0RBQXNEO2dCQUM3RCxLQUFLLEVBQUUsYUFBYSxDQUFDLE9BQU87Z0JBQzVCLElBQUksRUFBRSxFQUFFLEVBQUUsS0FBSztnQkFDZixLQUFLLEVBQUUsTUFBTSxDQUFDLEtBQUs7YUFDcEIsQ0FBQztZQUNGLElBQUksQ0FBQyxVQUFVLENBQUMsS0FBSyxDQUFDLEdBQUcsZUFBZSxDQUFDO1lBQ3pDLE9BQU8sQ0FDSCxJQUFJLENBQUMsVUFBVSxDQUFDLEtBQUssQ0FBQztnQkFDbEIsdUJBQXVCLENBQUMsSUFBSSxFQUFFLElBQUksQ0FBQyxJQUFJLENBQUMsY0FBYyxDQUFDLE1BQU0sQ0FBQyxRQUFRLENBQUMsQ0FBQyxDQUFDLENBQUM7U0FDbkY7YUFBTSxJQUFJLE1BQU0sQ0FBQyxLQUFLLGVBQWdCLEVBQUU7WUFDdkMsT0FBTyxhQUFhLENBQUM7U0FDdEI7UUFDRCxPQUFPLElBQUksQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLE1BQU0sQ0FBQyxLQUFLLEVBQUUsYUFBYSxDQUFDLENBQUM7S0FDdEQ7WUFBUztRQUNSLGtCQUFrQixDQUFDLE1BQU0sQ0FBQyxDQUFDO0tBQzVCO0FBQ0gsQ0FBQzs7Ozs7O0FBRUQsU0FBUyx5QkFBeUIsQ0FBQyxRQUFzQixFQUFFLEtBQVU7SUFDbkUsT0FBTyxRQUFRLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUM7QUFDbkQsQ0FBQzs7Ozs7O0FBRUQsU0FBUyxhQUFhLENBQUMsUUFBc0IsRUFBRSxHQUF5Qjs7VUFDaEUsVUFBVSxHQUFHLEdBQUcsQ0FBQyxVQUFVO0lBQ2pDLE9BQU8sVUFBVSxJQUFJLElBQUksSUFBSSxDQUFDLFVBQVUsS0FBSyxLQUFLLElBQUksVUFBVSxLQUFLLFFBQVEsQ0FBQyxJQUFJLENBQUMsS0FBSztRQUMxRCx5QkFBeUIsQ0FBQyxRQUFRLEVBQUUsVUFBVSxDQUFDLENBQUMsQ0FBQztBQUNqRixDQUFDOzs7Ozs7QUFFRCxTQUFTLHVCQUF1QixDQUFDLFFBQXNCLEVBQUUsV0FBZ0M7O1FBQ25GLFVBQWU7SUFDbkIsUUFBUSxXQUFXLENBQUMsS0FBSyx3QkFBa0IsRUFBRTtRQUMzQztZQUNFLFVBQVUsR0FBRyxZQUFZLENBQUMsUUFBUSxFQUFFLFdBQVcsQ0FBQyxLQUFLLEVBQUUsV0FBVyxDQUFDLElBQUksQ0FBQyxDQUFDO1lBQ3pFLE1BQU07UUFDUjtZQUNFLFVBQVUsR0FBRyxZQUFZLENBQUMsUUFBUSxFQUFFLFdBQVcsQ0FBQyxLQUFLLEVBQUUsV0FBVyxDQUFDLElBQUksQ0FBQyxDQUFDO1lBQ3pFLE1BQU07UUFDUjtZQUNFLFVBQVUsR0FBRyxrQkFBa0IsQ0FBQyxRQUFRLEVBQUUsV0FBVyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1lBQy9ELE1BQU07UUFDUjtZQUNFLFVBQVUsR0FBRyxXQUFXLENBQUMsS0FBSyxDQUFDO1lBQy9CLE1BQU07S0FDVDtJQUVELDRGQUE0RjtJQUM1Riw4RkFBOEY7SUFDOUYsaUdBQWlHO0lBQ2pHLDZDQUE2QztJQUM3QyxJQUFJLFVBQVUsS0FBSyxlQUFlLElBQUksVUFBVSxLQUFLLElBQUksSUFBSSxPQUFPLFVBQVUsS0FBSyxRQUFRO1FBQ3ZGLENBQUMsQ0FBQyxXQUFXLENBQUMsS0FBSyx5QkFBc0IsQ0FBQyxJQUFJLE9BQU8sVUFBVSxDQUFDLFdBQVcsS0FBSyxVQUFVLEVBQUU7UUFDOUYsV0FBVyxDQUFDLEtBQUssMEJBQXVCLENBQUM7S0FDMUM7SUFDRCxPQUFPLFVBQVUsS0FBSyxTQUFTLENBQUMsQ0FBQyxDQUFDLGVBQWUsQ0FBQyxDQUFDLENBQUMsVUFBVSxDQUFDO0FBQ2pFLENBQUM7Ozs7Ozs7QUFFRCxTQUFTLFlBQVksQ0FBQyxRQUFzQixFQUFFLElBQVMsRUFBRSxJQUFjOztVQUMvRCxHQUFHLEdBQUcsSUFBSSxDQUFDLE1BQU07SUFDdkIsUUFBUSxHQUFHLEVBQUU7UUFDWCxLQUFLLENBQUM7WUFDSixPQUFPLElBQUksSUFBSSxFQUFFLENBQUM7UUFDcEIsS0FBSyxDQUFDO1lBQ0osT0FBTyxJQUFJLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxRQUFRLEVBQUUsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUN6RCxLQUFLLENBQUM7WUFDSixPQUFPLElBQUksSUFBSSxDQUFDLGtCQUFrQixDQUFDLFFBQVEsRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsRUFBRSxrQkFBa0IsQ0FBQyxRQUFRLEVBQUUsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNoRyxLQUFLLENBQUM7WUFDSixPQUFPLElBQUksSUFBSSxDQUNYLGtCQUFrQixDQUFDLFFBQVEsRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsRUFBRSxrQkFBa0IsQ0FBQyxRQUFRLEVBQUUsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDLEVBQzVFLGtCQUFrQixDQUFDLFFBQVEsRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQzdDOztrQkFDUSxTQUFTLEdBQUcsRUFBRTtZQUNwQixLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsR0FBRyxFQUFFLENBQUMsRUFBRSxFQUFFO2dCQUM1QixTQUFTLENBQUMsQ0FBQyxDQUFDLEdBQUcsa0JBQWtCLENBQUMsUUFBUSxFQUFFLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO2FBQ3REO1lBQ0QsT0FBTyxJQUFJLElBQUksQ0FBQyxHQUFHLFNBQVMsQ0FBQyxDQUFDO0tBQ2pDO0FBQ0gsQ0FBQzs7Ozs7OztBQUVELFNBQVMsWUFBWSxDQUFDLFFBQXNCLEVBQUUsT0FBWSxFQUFFLElBQWM7O1VBQ2xFLEdBQUcsR0FBRyxJQUFJLENBQUMsTUFBTTtJQUN2QixRQUFRLEdBQUcsRUFBRTtRQUNYLEtBQUssQ0FBQztZQUNKLE9BQU8sT0FBTyxFQUFFLENBQUM7UUFDbkIsS0FBSyxDQUFDO1lBQ0osT0FBTyxPQUFPLENBQUMsa0JBQWtCLENBQUMsUUFBUSxFQUFFLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDeEQsS0FBSyxDQUFDO1lBQ0osT0FBTyxPQUFPLENBQUMsa0JBQWtCLENBQUMsUUFBUSxFQUFFLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFFLGtCQUFrQixDQUFDLFFBQVEsRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQy9GLEtBQUssQ0FBQztZQUNKLE9BQU8sT0FBTyxDQUNWLGtCQUFrQixDQUFDLFFBQVEsRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsRUFBRSxrQkFBa0IsQ0FBQyxRQUFRLEVBQUUsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDLEVBQzVFLGtCQUFrQixDQUFDLFFBQVEsRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQzdDOztrQkFDUSxTQUFTLEdBQUcsRUFBRTtZQUNwQixLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsR0FBRyxFQUFFLENBQUMsRUFBRSxFQUFFO2dCQUM1QixTQUFTLENBQUMsQ0FBQyxDQUFDLEdBQUcsa0JBQWtCLENBQUMsUUFBUSxFQUFFLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO2FBQ3REO1lBQ0QsT0FBTyxPQUFPLENBQUMsR0FBRyxTQUFTLENBQUMsQ0FBQztLQUNoQztBQUNILENBQUM7Ozs7OztBQUVELE1BQU0sVUFBVSxxQkFBcUIsQ0FBQyxRQUFzQixFQUFFLFVBQXFCOztVQUMzRSxHQUFHLEdBQUcsUUFBUSxDQUFDLElBQUk7O1VBQ25CLFNBQVMsR0FBRyxJQUFJLEdBQUcsRUFBTztJQUNoQyxLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsR0FBRyxDQUFDLFNBQVMsQ0FBQyxNQUFNLEVBQUUsQ0FBQyxFQUFFLEVBQUU7O2NBQ3ZDLE9BQU8sR0FBRyxHQUFHLENBQUMsU0FBUyxDQUFDLENBQUMsQ0FBQztRQUNoQyxJQUFJLE9BQU8sQ0FBQyxLQUFLLHlCQUFzQixFQUFFOztrQkFDakMsUUFBUSxHQUFHLFFBQVEsQ0FBQyxVQUFVLENBQUMsQ0FBQyxDQUFDO1lBQ3ZDLElBQUksUUFBUSxJQUFJLFFBQVEsS0FBSyxlQUFlLEVBQUU7O3NCQUN0QyxTQUFTLEdBQXVCLFFBQVEsQ0FBQyxXQUFXO2dCQUMxRCxJQUFJLE9BQU8sU0FBUyxLQUFLLFVBQVUsSUFBSSxDQUFDLFNBQVMsQ0FBQyxHQUFHLENBQUMsUUFBUSxDQUFDLEVBQUU7b0JBQy9ELFNBQVMsQ0FBQyxLQUFLLENBQUMsUUFBUSxDQUFDLENBQUM7b0JBQzFCLFNBQVMsQ0FBQyxHQUFHLENBQUMsUUFBUSxDQUFDLENBQUM7aUJBQ3pCO2FBQ0Y7U0FDRjtLQUNGO0FBQ0gsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtyZXNvbHZlRm9yd2FyZFJlZn0gZnJvbSAnLi4vZGkvZm9yd2FyZF9yZWYnO1xuaW1wb3J0IHtJbmplY3Rvcn0gZnJvbSAnLi4vZGkvaW5qZWN0b3InO1xuaW1wb3J0IHtJTkpFQ1RPUiwgc2V0Q3VycmVudEluamVjdG9yfSBmcm9tICcuLi9kaS9pbmplY3Rvcl9jb21wYXRpYmlsaXR5JztcbmltcG9ydCB7Z2V0SW5qZWN0YWJsZURlZiwgybXJtUluamVjdGFibGVEZWZ9IGZyb20gJy4uL2RpL2ludGVyZmFjZS9kZWZzJztcbmltcG9ydCB7SU5KRUNUT1JfU0NPUEV9IGZyb20gJy4uL2RpL3Njb3BlJztcbmltcG9ydCB7TmdNb2R1bGVSZWZ9IGZyb20gJy4uL2xpbmtlci9uZ19tb2R1bGVfZmFjdG9yeSc7XG5pbXBvcnQge25ld0FycmF5fSBmcm9tICcuLi91dGlsL2FycmF5X3V0aWxzJztcbmltcG9ydCB7c3RyaW5naWZ5fSBmcm9tICcuLi91dGlsL3N0cmluZ2lmeSc7XG5cbmltcG9ydCB7RGVwRGVmLCBEZXBGbGFncywgTmdNb2R1bGVEYXRhLCBOZ01vZHVsZURlZmluaXRpb24sIE5nTW9kdWxlUHJvdmlkZXJEZWYsIE5vZGVGbGFnc30gZnJvbSAnLi90eXBlcyc7XG5pbXBvcnQge3NwbGl0RGVwc0RzbCwgdG9rZW5LZXl9IGZyb20gJy4vdXRpbCc7XG5cbmNvbnN0IFVOREVGSU5FRF9WQUxVRSA9IHt9O1xuXG5jb25zdCBJbmplY3RvclJlZlRva2VuS2V5ID0gdG9rZW5LZXkoSW5qZWN0b3IpO1xuY29uc3QgSU5KRUNUT1JSZWZUb2tlbktleSA9IHRva2VuS2V5KElOSkVDVE9SKTtcbmNvbnN0IE5nTW9kdWxlUmVmVG9rZW5LZXkgPSB0b2tlbktleShOZ01vZHVsZVJlZik7XG5cbmV4cG9ydCBmdW5jdGlvbiBtb2R1bGVQcm92aWRlRGVmKFxuICAgIGZsYWdzOiBOb2RlRmxhZ3MsIHRva2VuOiBhbnksIHZhbHVlOiBhbnksXG4gICAgZGVwczogKFtEZXBGbGFncywgYW55XSB8IGFueSlbXSk6IE5nTW9kdWxlUHJvdmlkZXJEZWYge1xuICAvLyBOZWVkIHRvIHJlc29sdmUgZm9yd2FyZFJlZnMgYXMgZS5nLiBmb3IgYHVzZVZhbHVlYCB3ZVxuICAvLyBsb3dlcmVkIHRoZSBleHByZXNzaW9uIGFuZCB0aGVuIHN0b3BwZWQgZXZhbHVhdGluZyBpdCxcbiAgLy8gaS5lLiBhbHNvIGRpZG4ndCB1bndyYXAgaXQuXG4gIHZhbHVlID0gcmVzb2x2ZUZvcndhcmRSZWYodmFsdWUpO1xuICBjb25zdCBkZXBEZWZzID0gc3BsaXREZXBzRHNsKGRlcHMsIHN0cmluZ2lmeSh0b2tlbikpO1xuICByZXR1cm4ge1xuICAgIC8vIHdpbGwgYmV0IHNldCBieSB0aGUgbW9kdWxlIGRlZmluaXRpb25cbiAgICBpbmRleDogLTEsXG4gICAgZGVwczogZGVwRGVmcywgZmxhZ3MsIHRva2VuLCB2YWx1ZVxuICB9O1xufVxuXG5leHBvcnQgZnVuY3Rpb24gbW9kdWxlRGVmKHByb3ZpZGVyczogTmdNb2R1bGVQcm92aWRlckRlZltdKTogTmdNb2R1bGVEZWZpbml0aW9uIHtcbiAgY29uc3QgcHJvdmlkZXJzQnlLZXk6IHtba2V5OiBzdHJpbmddOiBOZ01vZHVsZVByb3ZpZGVyRGVmfSA9IHt9O1xuICBjb25zdCBtb2R1bGVzID0gW107XG4gIGxldCBzY29wZTogJ3Jvb3QnfCdwbGF0Zm9ybSd8bnVsbCA9IG51bGw7XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgcHJvdmlkZXJzLmxlbmd0aDsgaSsrKSB7XG4gICAgY29uc3QgcHJvdmlkZXIgPSBwcm92aWRlcnNbaV07XG4gICAgaWYgKHByb3ZpZGVyLnRva2VuID09PSBJTkpFQ1RPUl9TQ09QRSkge1xuICAgICAgc2NvcGUgPSBwcm92aWRlci52YWx1ZTtcbiAgICB9XG4gICAgaWYgKHByb3ZpZGVyLmZsYWdzICYgTm9kZUZsYWdzLlR5cGVOZ01vZHVsZSkge1xuICAgICAgbW9kdWxlcy5wdXNoKHByb3ZpZGVyLnRva2VuKTtcbiAgICB9XG4gICAgcHJvdmlkZXIuaW5kZXggPSBpO1xuICAgIHByb3ZpZGVyc0J5S2V5W3Rva2VuS2V5KHByb3ZpZGVyLnRva2VuKV0gPSBwcm92aWRlcjtcbiAgfVxuICByZXR1cm4ge1xuICAgIC8vIFdpbGwgYmUgZmlsbGVkIGxhdGVyLi4uXG4gICAgZmFjdG9yeTogbnVsbCxcbiAgICBwcm92aWRlcnNCeUtleSxcbiAgICBwcm92aWRlcnMsXG4gICAgbW9kdWxlcyxcbiAgICBzY29wZTogc2NvcGUsXG4gIH07XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpbml0TmdNb2R1bGUoZGF0YTogTmdNb2R1bGVEYXRhKSB7XG4gIGNvbnN0IGRlZiA9IGRhdGEuX2RlZjtcbiAgY29uc3QgcHJvdmlkZXJzID0gZGF0YS5fcHJvdmlkZXJzID0gbmV3QXJyYXkoZGVmLnByb3ZpZGVycy5sZW5ndGgpO1xuICBmb3IgKGxldCBpID0gMDsgaSA8IGRlZi5wcm92aWRlcnMubGVuZ3RoOyBpKyspIHtcbiAgICBjb25zdCBwcm92RGVmID0gZGVmLnByb3ZpZGVyc1tpXTtcbiAgICBpZiAoIShwcm92RGVmLmZsYWdzICYgTm9kZUZsYWdzLkxhenlQcm92aWRlcikpIHtcbiAgICAgIC8vIE1ha2Ugc3VyZSB0aGUgcHJvdmlkZXIgaGFzIG5vdCBiZWVuIGFscmVhZHkgaW5pdGlhbGl6ZWQgb3V0c2lkZSB0aGlzIGxvb3AuXG4gICAgICBpZiAocHJvdmlkZXJzW2ldID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgcHJvdmlkZXJzW2ldID0gX2NyZWF0ZVByb3ZpZGVySW5zdGFuY2UoZGF0YSwgcHJvdkRlZik7XG4gICAgICB9XG4gICAgfVxuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiByZXNvbHZlTmdNb2R1bGVEZXAoXG4gICAgZGF0YTogTmdNb2R1bGVEYXRhLCBkZXBEZWY6IERlcERlZiwgbm90Rm91bmRWYWx1ZTogYW55ID0gSW5qZWN0b3IuVEhST1dfSUZfTk9UX0ZPVU5EKTogYW55IHtcbiAgY29uc3QgZm9ybWVyID0gc2V0Q3VycmVudEluamVjdG9yKGRhdGEpO1xuICB0cnkge1xuICAgIGlmIChkZXBEZWYuZmxhZ3MgJiBEZXBGbGFncy5WYWx1ZSkge1xuICAgICAgcmV0dXJuIGRlcERlZi50b2tlbjtcbiAgICB9XG4gICAgaWYgKGRlcERlZi5mbGFncyAmIERlcEZsYWdzLk9wdGlvbmFsKSB7XG4gICAgICBub3RGb3VuZFZhbHVlID0gbnVsbDtcbiAgICB9XG4gICAgaWYgKGRlcERlZi5mbGFncyAmIERlcEZsYWdzLlNraXBTZWxmKSB7XG4gICAgICByZXR1cm4gZGF0YS5fcGFyZW50LmdldChkZXBEZWYudG9rZW4sIG5vdEZvdW5kVmFsdWUpO1xuICAgIH1cbiAgICBjb25zdCB0b2tlbktleSA9IGRlcERlZi50b2tlbktleTtcbiAgICBzd2l0Y2ggKHRva2VuS2V5KSB7XG4gICAgICBjYXNlIEluamVjdG9yUmVmVG9rZW5LZXk6XG4gICAgICBjYXNlIElOSkVDVE9SUmVmVG9rZW5LZXk6XG4gICAgICBjYXNlIE5nTW9kdWxlUmVmVG9rZW5LZXk6XG4gICAgICAgIHJldHVybiBkYXRhO1xuICAgIH1cbiAgICBjb25zdCBwcm92aWRlckRlZiA9IGRhdGEuX2RlZi5wcm92aWRlcnNCeUtleVt0b2tlbktleV07XG4gICAgbGV0IGluamVjdGFibGVEZWY6IMm1ybVJbmplY3RhYmxlRGVmPGFueT58bnVsbDtcbiAgICBpZiAocHJvdmlkZXJEZWYpIHtcbiAgICAgIGxldCBwcm92aWRlckluc3RhbmNlID0gZGF0YS5fcHJvdmlkZXJzW3Byb3ZpZGVyRGVmLmluZGV4XTtcbiAgICAgIGlmIChwcm92aWRlckluc3RhbmNlID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgcHJvdmlkZXJJbnN0YW5jZSA9IGRhdGEuX3Byb3ZpZGVyc1twcm92aWRlckRlZi5pbmRleF0gPVxuICAgICAgICAgICAgX2NyZWF0ZVByb3ZpZGVySW5zdGFuY2UoZGF0YSwgcHJvdmlkZXJEZWYpO1xuICAgICAgfVxuICAgICAgcmV0dXJuIHByb3ZpZGVySW5zdGFuY2UgPT09IFVOREVGSU5FRF9WQUxVRSA/IHVuZGVmaW5lZCA6IHByb3ZpZGVySW5zdGFuY2U7XG4gICAgfSBlbHNlIGlmIChcbiAgICAgICAgKGluamVjdGFibGVEZWYgPSBnZXRJbmplY3RhYmxlRGVmKGRlcERlZi50b2tlbikpICYmIHRhcmdldHNNb2R1bGUoZGF0YSwgaW5qZWN0YWJsZURlZikpIHtcbiAgICAgIGNvbnN0IGluZGV4ID0gZGF0YS5fcHJvdmlkZXJzLmxlbmd0aDtcbiAgICAgIGRhdGEuX2RlZi5wcm92aWRlcnNbaW5kZXhdID0gZGF0YS5fZGVmLnByb3ZpZGVyc0J5S2V5W2RlcERlZi50b2tlbktleV0gPSB7XG4gICAgICAgIGZsYWdzOiBOb2RlRmxhZ3MuVHlwZUZhY3RvcnlQcm92aWRlciB8IE5vZGVGbGFncy5MYXp5UHJvdmlkZXIsXG4gICAgICAgIHZhbHVlOiBpbmplY3RhYmxlRGVmLmZhY3RvcnksXG4gICAgICAgIGRlcHM6IFtdLCBpbmRleCxcbiAgICAgICAgdG9rZW46IGRlcERlZi50b2tlbixcbiAgICAgIH07XG4gICAgICBkYXRhLl9wcm92aWRlcnNbaW5kZXhdID0gVU5ERUZJTkVEX1ZBTFVFO1xuICAgICAgcmV0dXJuIChcbiAgICAgICAgICBkYXRhLl9wcm92aWRlcnNbaW5kZXhdID1cbiAgICAgICAgICAgICAgX2NyZWF0ZVByb3ZpZGVySW5zdGFuY2UoZGF0YSwgZGF0YS5fZGVmLnByb3ZpZGVyc0J5S2V5W2RlcERlZi50b2tlbktleV0pKTtcbiAgICB9IGVsc2UgaWYgKGRlcERlZi5mbGFncyAmIERlcEZsYWdzLlNlbGYpIHtcbiAgICAgIHJldHVybiBub3RGb3VuZFZhbHVlO1xuICAgIH1cbiAgICByZXR1cm4gZGF0YS5fcGFyZW50LmdldChkZXBEZWYudG9rZW4sIG5vdEZvdW5kVmFsdWUpO1xuICB9IGZpbmFsbHkge1xuICAgIHNldEN1cnJlbnRJbmplY3Rvcihmb3JtZXIpO1xuICB9XG59XG5cbmZ1bmN0aW9uIG1vZHVsZVRyYW5zaXRpdmVseVByZXNlbnQobmdNb2R1bGU6IE5nTW9kdWxlRGF0YSwgc2NvcGU6IGFueSk6IGJvb2xlYW4ge1xuICByZXR1cm4gbmdNb2R1bGUuX2RlZi5tb2R1bGVzLmluZGV4T2Yoc2NvcGUpID4gLTE7XG59XG5cbmZ1bmN0aW9uIHRhcmdldHNNb2R1bGUobmdNb2R1bGU6IE5nTW9kdWxlRGF0YSwgZGVmOiDJtcm1SW5qZWN0YWJsZURlZjxhbnk+KTogYm9vbGVhbiB7XG4gIGNvbnN0IHByb3ZpZGVkSW4gPSBkZWYucHJvdmlkZWRJbjtcbiAgcmV0dXJuIHByb3ZpZGVkSW4gIT0gbnVsbCAmJiAocHJvdmlkZWRJbiA9PT0gJ2FueScgfHwgcHJvdmlkZWRJbiA9PT0gbmdNb2R1bGUuX2RlZi5zY29wZSB8fFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtb2R1bGVUcmFuc2l0aXZlbHlQcmVzZW50KG5nTW9kdWxlLCBwcm92aWRlZEluKSk7XG59XG5cbmZ1bmN0aW9uIF9jcmVhdGVQcm92aWRlckluc3RhbmNlKG5nTW9kdWxlOiBOZ01vZHVsZURhdGEsIHByb3ZpZGVyRGVmOiBOZ01vZHVsZVByb3ZpZGVyRGVmKTogYW55IHtcbiAgbGV0IGluamVjdGFibGU6IGFueTtcbiAgc3dpdGNoIChwcm92aWRlckRlZi5mbGFncyAmIE5vZGVGbGFncy5UeXBlcykge1xuICAgIGNhc2UgTm9kZUZsYWdzLlR5cGVDbGFzc1Byb3ZpZGVyOlxuICAgICAgaW5qZWN0YWJsZSA9IF9jcmVhdGVDbGFzcyhuZ01vZHVsZSwgcHJvdmlkZXJEZWYudmFsdWUsIHByb3ZpZGVyRGVmLmRlcHMpO1xuICAgICAgYnJlYWs7XG4gICAgY2FzZSBOb2RlRmxhZ3MuVHlwZUZhY3RvcnlQcm92aWRlcjpcbiAgICAgIGluamVjdGFibGUgPSBfY2FsbEZhY3RvcnkobmdNb2R1bGUsIHByb3ZpZGVyRGVmLnZhbHVlLCBwcm92aWRlckRlZi5kZXBzKTtcbiAgICAgIGJyZWFrO1xuICAgIGNhc2UgTm9kZUZsYWdzLlR5cGVVc2VFeGlzdGluZ1Byb3ZpZGVyOlxuICAgICAgaW5qZWN0YWJsZSA9IHJlc29sdmVOZ01vZHVsZURlcChuZ01vZHVsZSwgcHJvdmlkZXJEZWYuZGVwc1swXSk7XG4gICAgICBicmVhaztcbiAgICBjYXNlIE5vZGVGbGFncy5UeXBlVmFsdWVQcm92aWRlcjpcbiAgICAgIGluamVjdGFibGUgPSBwcm92aWRlckRlZi52YWx1ZTtcbiAgICAgIGJyZWFrO1xuICB9XG5cbiAgLy8gVGhlIHJlYWQgb2YgYG5nT25EZXN0cm95YCBoZXJlIGlzIHNsaWdodGx5IGV4cGVuc2l2ZSBhcyBpdCdzIG1lZ2Ftb3JwaGljLCBzbyBpdCBzaG91bGQgYmVcbiAgLy8gYXZvaWRlZCBpZiBwb3NzaWJsZS4gVGhlIHNlcXVlbmNlIG9mIGNoZWNrcyBoZXJlIGRldGVybWluZXMgd2hldGhlciBuZ09uRGVzdHJveSBuZWVkcyB0byBiZVxuICAvLyBjaGVja2VkLiBJdCBtaWdodCBub3QgaWYgdGhlIGBpbmplY3RhYmxlYCBpc24ndCBhbiBvYmplY3Qgb3IgaWYgTm9kZUZsYWdzLk9uRGVzdHJveSBpcyBhbHJlYWR5XG4gIC8vIHNldCAobmdPbkRlc3Ryb3kgd2FzIGRldGVjdGVkIHN0YXRpY2FsbHkpLlxuICBpZiAoaW5qZWN0YWJsZSAhPT0gVU5ERUZJTkVEX1ZBTFVFICYmIGluamVjdGFibGUgIT09IG51bGwgJiYgdHlwZW9mIGluamVjdGFibGUgPT09ICdvYmplY3QnICYmXG4gICAgICAhKHByb3ZpZGVyRGVmLmZsYWdzICYgTm9kZUZsYWdzLk9uRGVzdHJveSkgJiYgdHlwZW9mIGluamVjdGFibGUubmdPbkRlc3Ryb3kgPT09ICdmdW5jdGlvbicpIHtcbiAgICBwcm92aWRlckRlZi5mbGFncyB8PSBOb2RlRmxhZ3MuT25EZXN0cm95O1xuICB9XG4gIHJldHVybiBpbmplY3RhYmxlID09PSB1bmRlZmluZWQgPyBVTkRFRklORURfVkFMVUUgOiBpbmplY3RhYmxlO1xufVxuXG5mdW5jdGlvbiBfY3JlYXRlQ2xhc3MobmdNb2R1bGU6IE5nTW9kdWxlRGF0YSwgY3RvcjogYW55LCBkZXBzOiBEZXBEZWZbXSk6IGFueSB7XG4gIGNvbnN0IGxlbiA9IGRlcHMubGVuZ3RoO1xuICBzd2l0Y2ggKGxlbikge1xuICAgIGNhc2UgMDpcbiAgICAgIHJldHVybiBuZXcgY3RvcigpO1xuICAgIGNhc2UgMTpcbiAgICAgIHJldHVybiBuZXcgY3RvcihyZXNvbHZlTmdNb2R1bGVEZXAobmdNb2R1bGUsIGRlcHNbMF0pKTtcbiAgICBjYXNlIDI6XG4gICAgICByZXR1cm4gbmV3IGN0b3IocmVzb2x2ZU5nTW9kdWxlRGVwKG5nTW9kdWxlLCBkZXBzWzBdKSwgcmVzb2x2ZU5nTW9kdWxlRGVwKG5nTW9kdWxlLCBkZXBzWzFdKSk7XG4gICAgY2FzZSAzOlxuICAgICAgcmV0dXJuIG5ldyBjdG9yKFxuICAgICAgICAgIHJlc29sdmVOZ01vZHVsZURlcChuZ01vZHVsZSwgZGVwc1swXSksIHJlc29sdmVOZ01vZHVsZURlcChuZ01vZHVsZSwgZGVwc1sxXSksXG4gICAgICAgICAgcmVzb2x2ZU5nTW9kdWxlRGVwKG5nTW9kdWxlLCBkZXBzWzJdKSk7XG4gICAgZGVmYXVsdDpcbiAgICAgIGNvbnN0IGRlcFZhbHVlcyA9IFtdO1xuICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBsZW47IGkrKykge1xuICAgICAgICBkZXBWYWx1ZXNbaV0gPSByZXNvbHZlTmdNb2R1bGVEZXAobmdNb2R1bGUsIGRlcHNbaV0pO1xuICAgICAgfVxuICAgICAgcmV0dXJuIG5ldyBjdG9yKC4uLmRlcFZhbHVlcyk7XG4gIH1cbn1cblxuZnVuY3Rpb24gX2NhbGxGYWN0b3J5KG5nTW9kdWxlOiBOZ01vZHVsZURhdGEsIGZhY3Rvcnk6IGFueSwgZGVwczogRGVwRGVmW10pOiBhbnkge1xuICBjb25zdCBsZW4gPSBkZXBzLmxlbmd0aDtcbiAgc3dpdGNoIChsZW4pIHtcbiAgICBjYXNlIDA6XG4gICAgICByZXR1cm4gZmFjdG9yeSgpO1xuICAgIGNhc2UgMTpcbiAgICAgIHJldHVybiBmYWN0b3J5KHJlc29sdmVOZ01vZHVsZURlcChuZ01vZHVsZSwgZGVwc1swXSkpO1xuICAgIGNhc2UgMjpcbiAgICAgIHJldHVybiBmYWN0b3J5KHJlc29sdmVOZ01vZHVsZURlcChuZ01vZHVsZSwgZGVwc1swXSksIHJlc29sdmVOZ01vZHVsZURlcChuZ01vZHVsZSwgZGVwc1sxXSkpO1xuICAgIGNhc2UgMzpcbiAgICAgIHJldHVybiBmYWN0b3J5KFxuICAgICAgICAgIHJlc29sdmVOZ01vZHVsZURlcChuZ01vZHVsZSwgZGVwc1swXSksIHJlc29sdmVOZ01vZHVsZURlcChuZ01vZHVsZSwgZGVwc1sxXSksXG4gICAgICAgICAgcmVzb2x2ZU5nTW9kdWxlRGVwKG5nTW9kdWxlLCBkZXBzWzJdKSk7XG4gICAgZGVmYXVsdDpcbiAgICAgIGNvbnN0IGRlcFZhbHVlcyA9IFtdO1xuICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBsZW47IGkrKykge1xuICAgICAgICBkZXBWYWx1ZXNbaV0gPSByZXNvbHZlTmdNb2R1bGVEZXAobmdNb2R1bGUsIGRlcHNbaV0pO1xuICAgICAgfVxuICAgICAgcmV0dXJuIGZhY3RvcnkoLi4uZGVwVmFsdWVzKTtcbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gY2FsbE5nTW9kdWxlTGlmZWN5Y2xlKG5nTW9kdWxlOiBOZ01vZHVsZURhdGEsIGxpZmVjeWNsZXM6IE5vZGVGbGFncykge1xuICBjb25zdCBkZWYgPSBuZ01vZHVsZS5fZGVmO1xuICBjb25zdCBkZXN0cm95ZWQgPSBuZXcgU2V0PGFueT4oKTtcbiAgZm9yIChsZXQgaSA9IDA7IGkgPCBkZWYucHJvdmlkZXJzLmxlbmd0aDsgaSsrKSB7XG4gICAgY29uc3QgcHJvdkRlZiA9IGRlZi5wcm92aWRlcnNbaV07XG4gICAgaWYgKHByb3ZEZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuT25EZXN0cm95KSB7XG4gICAgICBjb25zdCBpbnN0YW5jZSA9IG5nTW9kdWxlLl9wcm92aWRlcnNbaV07XG4gICAgICBpZiAoaW5zdGFuY2UgJiYgaW5zdGFuY2UgIT09IFVOREVGSU5FRF9WQUxVRSkge1xuICAgICAgICBjb25zdCBvbkRlc3Ryb3k6IEZ1bmN0aW9ufHVuZGVmaW5lZCA9IGluc3RhbmNlLm5nT25EZXN0cm95O1xuICAgICAgICBpZiAodHlwZW9mIG9uRGVzdHJveSA9PT0gJ2Z1bmN0aW9uJyAmJiAhZGVzdHJveWVkLmhhcyhpbnN0YW5jZSkpIHtcbiAgICAgICAgICBvbkRlc3Ryb3kuYXBwbHkoaW5zdGFuY2UpO1xuICAgICAgICAgIGRlc3Ryb3llZC5hZGQoaW5zdGFuY2UpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG59XG4iXX0=