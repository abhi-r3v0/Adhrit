/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/di/reflective_provider.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Type } from '../interface/type';
import { reflector } from '../reflection/reflection';
import { resolveForwardRef } from './forward_ref';
import { InjectionToken } from './injection_token';
import { Inject, Optional, Self, SkipSelf } from './metadata';
import { invalidProviderError, mixingMultiProvidersWithRegularProvidersError, noAnnotationError } from './reflective_errors';
import { ReflectiveKey } from './reflective_key';
/**
 * @record
 */
function NormalizedProvider() { }
/**
 * `Dependency` is used by the framework to extend DI.
 * This is internal to Angular and should not be used directly.
 */
export class ReflectiveDependency {
    /**
     * @param {?} key
     * @param {?} optional
     * @param {?} visibility
     */
    constructor(key, optional, visibility) {
        this.key = key;
        this.optional = optional;
        this.visibility = visibility;
    }
    /**
     * @param {?} key
     * @return {?}
     */
    static fromKey(key) {
        return new ReflectiveDependency(key, false, null);
    }
}
if (false) {
    /** @type {?} */
    ReflectiveDependency.prototype.key;
    /** @type {?} */
    ReflectiveDependency.prototype.optional;
    /** @type {?} */
    ReflectiveDependency.prototype.visibility;
}
/** @type {?} */
const _EMPTY_LIST = [];
/**
 * An internal resolved representation of a `Provider` used by the `Injector`.
 *
 * \@usageNotes
 * This is usually created automatically by `Injector.resolveAndCreate`.
 *
 * It can be created manually, as follows:
 *
 * ### Example
 *
 * ```typescript
 * var resolvedProviders = Injector.resolve([{ provide: 'message', useValue: 'Hello' }]);
 * var injector = Injector.fromResolvedProviders(resolvedProviders);
 *
 * expect(injector.get('message')).toEqual('Hello');
 * ```
 *
 * \@publicApi
 * @record
 */
export function ResolvedReflectiveProvider() { }
if (false) {
    /**
     * A key, usually a `Type<any>`.
     * @type {?}
     */
    ResolvedReflectiveProvider.prototype.key;
    /**
     * Factory function which can return an instance of an object represented by a key.
     * @type {?}
     */
    ResolvedReflectiveProvider.prototype.resolvedFactories;
    /**
     * Indicates if the provider is a multi-provider or a regular provider.
     * @type {?}
     */
    ResolvedReflectiveProvider.prototype.multiProvider;
}
export class ResolvedReflectiveProvider_ {
    /**
     * @param {?} key
     * @param {?} resolvedFactories
     * @param {?} multiProvider
     */
    constructor(key, resolvedFactories, multiProvider) {
        this.key = key;
        this.resolvedFactories = resolvedFactories;
        this.multiProvider = multiProvider;
        this.resolvedFactory = this.resolvedFactories[0];
    }
}
if (false) {
    /** @type {?} */
    ResolvedReflectiveProvider_.prototype.resolvedFactory;
    /** @type {?} */
    ResolvedReflectiveProvider_.prototype.key;
    /** @type {?} */
    ResolvedReflectiveProvider_.prototype.resolvedFactories;
    /** @type {?} */
    ResolvedReflectiveProvider_.prototype.multiProvider;
}
/**
 * An internal resolved representation of a factory function created by resolving `Provider`.
 * \@publicApi
 */
export class ResolvedReflectiveFactory {
    /**
     * @param {?} factory
     * @param {?} dependencies
     */
    constructor(factory, dependencies) {
        this.factory = factory;
        this.dependencies = dependencies;
    }
}
if (false) {
    /**
     * Factory function which can return an instance of an object represented by a key.
     * @type {?}
     */
    ResolvedReflectiveFactory.prototype.factory;
    /**
     * Arguments (dependencies) to the `factory` function.
     * @type {?}
     */
    ResolvedReflectiveFactory.prototype.dependencies;
}
/**
 * Resolve a single provider.
 * @param {?} provider
 * @return {?}
 */
function resolveReflectiveFactory(provider) {
    /** @type {?} */
    let factoryFn;
    /** @type {?} */
    let resolvedDeps;
    if (provider.useClass) {
        /** @type {?} */
        const useClass = resolveForwardRef(provider.useClass);
        factoryFn = reflector.factory(useClass);
        resolvedDeps = _dependenciesFor(useClass);
    }
    else if (provider.useExisting) {
        factoryFn = (/**
         * @param {?} aliasInstance
         * @return {?}
         */
        (aliasInstance) => aliasInstance);
        resolvedDeps = [ReflectiveDependency.fromKey(ReflectiveKey.get(provider.useExisting))];
    }
    else if (provider.useFactory) {
        factoryFn = provider.useFactory;
        resolvedDeps = constructDependencies(provider.useFactory, provider.deps);
    }
    else {
        factoryFn = (/**
         * @return {?}
         */
        () => provider.useValue);
        resolvedDeps = _EMPTY_LIST;
    }
    return new ResolvedReflectiveFactory(factoryFn, resolvedDeps);
}
/**
 * Converts the `Provider` into `ResolvedProvider`.
 *
 * `Injector` internally only uses `ResolvedProvider`, `Provider` contains convenience provider
 * syntax.
 * @param {?} provider
 * @return {?}
 */
function resolveReflectiveProvider(provider) {
    return new ResolvedReflectiveProvider_(ReflectiveKey.get(provider.provide), [resolveReflectiveFactory(provider)], provider.multi || false);
}
/**
 * Resolve a list of Providers.
 * @param {?} providers
 * @return {?}
 */
export function resolveReflectiveProviders(providers) {
    /** @type {?} */
    const normalized = _normalizeProviders(providers, []);
    /** @type {?} */
    const resolved = normalized.map(resolveReflectiveProvider);
    /** @type {?} */
    const resolvedProviderMap = mergeResolvedReflectiveProviders(resolved, new Map());
    return Array.from(resolvedProviderMap.values());
}
/**
 * Merges a list of ResolvedProviders into a list where each key is contained exactly once and
 * multi providers have been merged.
 * @param {?} providers
 * @param {?} normalizedProvidersMap
 * @return {?}
 */
export function mergeResolvedReflectiveProviders(providers, normalizedProvidersMap) {
    for (let i = 0; i < providers.length; i++) {
        /** @type {?} */
        const provider = providers[i];
        /** @type {?} */
        const existing = normalizedProvidersMap.get(provider.key.id);
        if (existing) {
            if (provider.multiProvider !== existing.multiProvider) {
                throw mixingMultiProvidersWithRegularProvidersError(existing, provider);
            }
            if (provider.multiProvider) {
                for (let j = 0; j < provider.resolvedFactories.length; j++) {
                    existing.resolvedFactories.push(provider.resolvedFactories[j]);
                }
            }
            else {
                normalizedProvidersMap.set(provider.key.id, provider);
            }
        }
        else {
            /** @type {?} */
            let resolvedProvider;
            if (provider.multiProvider) {
                resolvedProvider = new ResolvedReflectiveProvider_(provider.key, provider.resolvedFactories.slice(), provider.multiProvider);
            }
            else {
                resolvedProvider = provider;
            }
            normalizedProvidersMap.set(provider.key.id, resolvedProvider);
        }
    }
    return normalizedProvidersMap;
}
/**
 * @param {?} providers
 * @param {?} res
 * @return {?}
 */
function _normalizeProviders(providers, res) {
    providers.forEach((/**
     * @param {?} b
     * @return {?}
     */
    b => {
        if (b instanceof Type) {
            res.push((/** @type {?} */ ({ provide: b, useClass: b })));
        }
        else if (b && typeof b == 'object' && ((/** @type {?} */ (b))).provide !== undefined) {
            res.push((/** @type {?} */ (b)));
        }
        else if (Array.isArray(b)) {
            _normalizeProviders(b, res);
        }
        else {
            throw invalidProviderError(b);
        }
    }));
    return res;
}
/**
 * @param {?} typeOrFunc
 * @param {?=} dependencies
 * @return {?}
 */
export function constructDependencies(typeOrFunc, dependencies) {
    if (!dependencies) {
        return _dependenciesFor(typeOrFunc);
    }
    else {
        /** @type {?} */
        const params = dependencies.map((/**
         * @param {?} t
         * @return {?}
         */
        t => [t]));
        return dependencies.map((/**
         * @param {?} t
         * @return {?}
         */
        t => _extractToken(typeOrFunc, t, params)));
    }
}
/**
 * @param {?} typeOrFunc
 * @return {?}
 */
function _dependenciesFor(typeOrFunc) {
    /** @type {?} */
    const params = reflector.parameters(typeOrFunc);
    if (!params)
        return [];
    if (params.some((/**
     * @param {?} p
     * @return {?}
     */
    p => p == null))) {
        throw noAnnotationError(typeOrFunc, params);
    }
    return params.map((/**
     * @param {?} p
     * @return {?}
     */
    p => _extractToken(typeOrFunc, p, params)));
}
/**
 * @param {?} typeOrFunc
 * @param {?} metadata
 * @param {?} params
 * @return {?}
 */
function _extractToken(typeOrFunc, metadata, params) {
    /** @type {?} */
    let token = null;
    /** @type {?} */
    let optional = false;
    if (!Array.isArray(metadata)) {
        if (metadata instanceof Inject) {
            return _createDependency(metadata.token, optional, null);
        }
        else {
            return _createDependency(metadata, optional, null);
        }
    }
    /** @type {?} */
    let visibility = null;
    for (let i = 0; i < metadata.length; ++i) {
        /** @type {?} */
        const paramMetadata = metadata[i];
        if (paramMetadata instanceof Type) {
            token = paramMetadata;
        }
        else if (paramMetadata instanceof Inject) {
            token = paramMetadata.token;
        }
        else if (paramMetadata instanceof Optional) {
            optional = true;
        }
        else if (paramMetadata instanceof Self || paramMetadata instanceof SkipSelf) {
            visibility = paramMetadata;
        }
        else if (paramMetadata instanceof InjectionToken) {
            token = paramMetadata;
        }
    }
    token = resolveForwardRef(token);
    if (token != null) {
        return _createDependency(token, optional, visibility);
    }
    else {
        throw noAnnotationError(typeOrFunc, params);
    }
}
/**
 * @param {?} token
 * @param {?} optional
 * @param {?} visibility
 * @return {?}
 */
function _createDependency(token, optional, visibility) {
    return new ReflectiveDependency(ReflectiveKey.get(token), optional, visibility);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicmVmbGVjdGl2ZV9wcm92aWRlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL2RpL3JlZmxlY3RpdmVfcHJvdmlkZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBUUEsT0FBTyxFQUFDLElBQUksRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBQ3ZDLE9BQU8sRUFBQyxTQUFTLEVBQUMsTUFBTSwwQkFBMEIsQ0FBQztBQUVuRCxPQUFPLEVBQUMsaUJBQWlCLEVBQUMsTUFBTSxlQUFlLENBQUM7QUFDaEQsT0FBTyxFQUFDLGNBQWMsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBRWpELE9BQU8sRUFBQyxNQUFNLEVBQUUsUUFBUSxFQUFFLElBQUksRUFBRSxRQUFRLEVBQUMsTUFBTSxZQUFZLENBQUM7QUFDNUQsT0FBTyxFQUFDLG9CQUFvQixFQUFFLDZDQUE2QyxFQUFFLGlCQUFpQixFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFDM0gsT0FBTyxFQUFDLGFBQWEsRUFBQyxNQUFNLGtCQUFrQixDQUFDOzs7O0FBRy9DLGlDQUNzQjs7Ozs7QUFNdEIsTUFBTSxPQUFPLG9CQUFvQjs7Ozs7O0lBQy9CLFlBQ1csR0FBa0IsRUFBUyxRQUFpQixFQUFTLFVBQThCO1FBQW5GLFFBQUcsR0FBSCxHQUFHLENBQWU7UUFBUyxhQUFRLEdBQVIsUUFBUSxDQUFTO1FBQVMsZUFBVSxHQUFWLFVBQVUsQ0FBb0I7SUFBRyxDQUFDOzs7OztJQUVsRyxNQUFNLENBQUMsT0FBTyxDQUFDLEdBQWtCO1FBQy9CLE9BQU8sSUFBSSxvQkFBb0IsQ0FBQyxHQUFHLEVBQUUsS0FBSyxFQUFFLElBQUksQ0FBQyxDQUFDO0lBQ3BELENBQUM7Q0FDRjs7O0lBTEssbUNBQXlCOztJQUFFLHdDQUF3Qjs7SUFBRSwwQ0FBcUM7OztNQU8xRixXQUFXLEdBQVUsRUFBRTs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBcUI3QixnREFlQzs7Ozs7O0lBWEMseUNBQW1COzs7OztJQUtuQix1REFBK0M7Ozs7O0lBSy9DLG1EQUF1Qjs7QUFHekIsTUFBTSxPQUFPLDJCQUEyQjs7Ozs7O0lBR3RDLFlBQ1csR0FBa0IsRUFBUyxpQkFBOEMsRUFDekUsYUFBc0I7UUFEdEIsUUFBRyxHQUFILEdBQUcsQ0FBZTtRQUFTLHNCQUFpQixHQUFqQixpQkFBaUIsQ0FBNkI7UUFDekUsa0JBQWEsR0FBYixhQUFhLENBQVM7UUFDL0IsSUFBSSxDQUFDLGVBQWUsR0FBRyxJQUFJLENBQUMsaUJBQWlCLENBQUMsQ0FBQyxDQUFDLENBQUM7SUFDbkQsQ0FBQztDQUNGOzs7SUFQQyxzREFBb0Q7O0lBR2hELDBDQUF5Qjs7SUFBRSx3REFBcUQ7O0lBQ2hGLG9EQUE2Qjs7Ozs7O0FBU25DLE1BQU0sT0FBTyx5QkFBeUI7Ozs7O0lBQ3BDLFlBSVcsT0FBaUIsRUFLakIsWUFBb0M7UUFMcEMsWUFBTyxHQUFQLE9BQU8sQ0FBVTtRQUtqQixpQkFBWSxHQUFaLFlBQVksQ0FBd0I7SUFBRyxDQUFDO0NBQ3BEOzs7Ozs7SUFOSyw0Q0FBd0I7Ozs7O0lBS3hCLGlEQUEyQzs7Ozs7OztBQU9qRCxTQUFTLHdCQUF3QixDQUFDLFFBQTRCOztRQUN4RCxTQUFtQjs7UUFDbkIsWUFBb0M7SUFDeEMsSUFBSSxRQUFRLENBQUMsUUFBUSxFQUFFOztjQUNmLFFBQVEsR0FBRyxpQkFBaUIsQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDO1FBQ3JELFNBQVMsR0FBRyxTQUFTLENBQUMsT0FBTyxDQUFDLFFBQVEsQ0FBQyxDQUFDO1FBQ3hDLFlBQVksR0FBRyxnQkFBZ0IsQ0FBQyxRQUFRLENBQUMsQ0FBQztLQUMzQztTQUFNLElBQUksUUFBUSxDQUFDLFdBQVcsRUFBRTtRQUMvQixTQUFTOzs7O1FBQUcsQ0FBQyxhQUFrQixFQUFFLEVBQUUsQ0FBQyxhQUFhLENBQUEsQ0FBQztRQUNsRCxZQUFZLEdBQUcsQ0FBQyxvQkFBb0IsQ0FBQyxPQUFPLENBQUMsYUFBYSxDQUFDLEdBQUcsQ0FBQyxRQUFRLENBQUMsV0FBVyxDQUFDLENBQUMsQ0FBQyxDQUFDO0tBQ3hGO1NBQU0sSUFBSSxRQUFRLENBQUMsVUFBVSxFQUFFO1FBQzlCLFNBQVMsR0FBRyxRQUFRLENBQUMsVUFBVSxDQUFDO1FBQ2hDLFlBQVksR0FBRyxxQkFBcUIsQ0FBQyxRQUFRLENBQUMsVUFBVSxFQUFFLFFBQVEsQ0FBQyxJQUFJLENBQUMsQ0FBQztLQUMxRTtTQUFNO1FBQ0wsU0FBUzs7O1FBQUcsR0FBRyxFQUFFLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQSxDQUFDO1FBQ3BDLFlBQVksR0FBRyxXQUFXLENBQUM7S0FDNUI7SUFDRCxPQUFPLElBQUkseUJBQXlCLENBQUMsU0FBUyxFQUFFLFlBQVksQ0FBQyxDQUFDO0FBQ2hFLENBQUM7Ozs7Ozs7OztBQVFELFNBQVMseUJBQXlCLENBQUMsUUFBNEI7SUFDN0QsT0FBTyxJQUFJLDJCQUEyQixDQUNsQyxhQUFhLENBQUMsR0FBRyxDQUFDLFFBQVEsQ0FBQyxPQUFPLENBQUMsRUFBRSxDQUFDLHdCQUF3QixDQUFDLFFBQVEsQ0FBQyxDQUFDLEVBQ3pFLFFBQVEsQ0FBQyxLQUFLLElBQUksS0FBSyxDQUFDLENBQUM7QUFDL0IsQ0FBQzs7Ozs7O0FBS0QsTUFBTSxVQUFVLDBCQUEwQixDQUFDLFNBQXFCOztVQUN4RCxVQUFVLEdBQUcsbUJBQW1CLENBQUMsU0FBUyxFQUFFLEVBQUUsQ0FBQzs7VUFDL0MsUUFBUSxHQUFHLFVBQVUsQ0FBQyxHQUFHLENBQUMseUJBQXlCLENBQUM7O1VBQ3BELG1CQUFtQixHQUFHLGdDQUFnQyxDQUFDLFFBQVEsRUFBRSxJQUFJLEdBQUcsRUFBRSxDQUFDO0lBQ2pGLE9BQU8sS0FBSyxDQUFDLElBQUksQ0FBQyxtQkFBbUIsQ0FBQyxNQUFNLEVBQUUsQ0FBQyxDQUFDO0FBQ2xELENBQUM7Ozs7Ozs7O0FBTUQsTUFBTSxVQUFVLGdDQUFnQyxDQUM1QyxTQUF1QyxFQUN2QyxzQkFBK0Q7SUFFakUsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLFNBQVMsQ0FBQyxNQUFNLEVBQUUsQ0FBQyxFQUFFLEVBQUU7O2NBQ25DLFFBQVEsR0FBRyxTQUFTLENBQUMsQ0FBQyxDQUFDOztjQUN2QixRQUFRLEdBQUcsc0JBQXNCLENBQUMsR0FBRyxDQUFDLFFBQVEsQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDO1FBQzVELElBQUksUUFBUSxFQUFFO1lBQ1osSUFBSSxRQUFRLENBQUMsYUFBYSxLQUFLLFFBQVEsQ0FBQyxhQUFhLEVBQUU7Z0JBQ3JELE1BQU0sNkNBQTZDLENBQUMsUUFBUSxFQUFFLFFBQVEsQ0FBQyxDQUFDO2FBQ3pFO1lBQ0QsSUFBSSxRQUFRLENBQUMsYUFBYSxFQUFFO2dCQUMxQixLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsUUFBUSxDQUFDLGlCQUFpQixDQUFDLE1BQU0sRUFBRSxDQUFDLEVBQUUsRUFBRTtvQkFDMUQsUUFBUSxDQUFDLGlCQUFpQixDQUFDLElBQUksQ0FBQyxRQUFRLENBQUMsaUJBQWlCLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztpQkFDaEU7YUFDRjtpQkFBTTtnQkFDTCxzQkFBc0IsQ0FBQyxHQUFHLENBQUMsUUFBUSxDQUFDLEdBQUcsQ0FBQyxFQUFFLEVBQUUsUUFBUSxDQUFDLENBQUM7YUFDdkQ7U0FDRjthQUFNOztnQkFDRCxnQkFBNEM7WUFDaEQsSUFBSSxRQUFRLENBQUMsYUFBYSxFQUFFO2dCQUMxQixnQkFBZ0IsR0FBRyxJQUFJLDJCQUEyQixDQUM5QyxRQUFRLENBQUMsR0FBRyxFQUFFLFFBQVEsQ0FBQyxpQkFBaUIsQ0FBQyxLQUFLLEVBQUUsRUFBRSxRQUFRLENBQUMsYUFBYSxDQUFDLENBQUM7YUFDL0U7aUJBQU07Z0JBQ0wsZ0JBQWdCLEdBQUcsUUFBUSxDQUFDO2FBQzdCO1lBQ0Qsc0JBQXNCLENBQUMsR0FBRyxDQUFDLFFBQVEsQ0FBQyxHQUFHLENBQUMsRUFBRSxFQUFFLGdCQUFnQixDQUFDLENBQUM7U0FDL0Q7S0FDRjtJQUNELE9BQU8sc0JBQXNCLENBQUM7QUFDaEMsQ0FBQzs7Ozs7O0FBRUQsU0FBUyxtQkFBbUIsQ0FDeEIsU0FBcUIsRUFBRSxHQUF5QjtJQUNsRCxTQUFTLENBQUMsT0FBTzs7OztJQUFDLENBQUMsQ0FBQyxFQUFFO1FBQ3BCLElBQUksQ0FBQyxZQUFZLElBQUksRUFBRTtZQUNyQixHQUFHLENBQUMsSUFBSSxDQUFDLG1CQUFBLEVBQUUsT0FBTyxFQUFFLENBQUMsRUFBRSxRQUFRLEVBQUUsQ0FBQyxFQUFFLEVBQXNCLENBQUMsQ0FBQztTQUU3RDthQUFNLElBQUksQ0FBQyxJQUFJLE9BQU8sQ0FBQyxJQUFJLFFBQVEsSUFBSSxDQUFDLG1CQUFBLENBQUMsRUFBTyxDQUFDLENBQUMsT0FBTyxLQUFLLFNBQVMsRUFBRTtZQUN4RSxHQUFHLENBQUMsSUFBSSxDQUFDLG1CQUFBLENBQUMsRUFBc0IsQ0FBQyxDQUFDO1NBRW5DO2FBQU0sSUFBSSxLQUFLLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxFQUFFO1lBQzNCLG1CQUFtQixDQUFDLENBQUMsRUFBRSxHQUFHLENBQUMsQ0FBQztTQUU3QjthQUFNO1lBQ0wsTUFBTSxvQkFBb0IsQ0FBQyxDQUFDLENBQUMsQ0FBQztTQUMvQjtJQUNILENBQUMsRUFBQyxDQUFDO0lBRUgsT0FBTyxHQUFHLENBQUM7QUFDYixDQUFDOzs7Ozs7QUFFRCxNQUFNLFVBQVUscUJBQXFCLENBQ2pDLFVBQWUsRUFBRSxZQUFvQjtJQUN2QyxJQUFJLENBQUMsWUFBWSxFQUFFO1FBQ2pCLE9BQU8sZ0JBQWdCLENBQUMsVUFBVSxDQUFDLENBQUM7S0FDckM7U0FBTTs7Y0FDQyxNQUFNLEdBQVksWUFBWSxDQUFDLEdBQUc7Ozs7UUFBQyxDQUFDLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQyxDQUFDLEVBQUM7UUFDbEQsT0FBTyxZQUFZLENBQUMsR0FBRzs7OztRQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsYUFBYSxDQUFDLFVBQVUsRUFBRSxDQUFDLEVBQUUsTUFBTSxDQUFDLEVBQUMsQ0FBQztLQUNwRTtBQUNILENBQUM7Ozs7O0FBRUQsU0FBUyxnQkFBZ0IsQ0FBQyxVQUFlOztVQUNqQyxNQUFNLEdBQUcsU0FBUyxDQUFDLFVBQVUsQ0FBQyxVQUFVLENBQUM7SUFFL0MsSUFBSSxDQUFDLE1BQU07UUFBRSxPQUFPLEVBQUUsQ0FBQztJQUN2QixJQUFJLE1BQU0sQ0FBQyxJQUFJOzs7O0lBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLElBQUksSUFBSSxFQUFDLEVBQUU7UUFDL0IsTUFBTSxpQkFBaUIsQ0FBQyxVQUFVLEVBQUUsTUFBTSxDQUFDLENBQUM7S0FDN0M7SUFDRCxPQUFPLE1BQU0sQ0FBQyxHQUFHOzs7O0lBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxhQUFhLENBQUMsVUFBVSxFQUFFLENBQUMsRUFBRSxNQUFNLENBQUMsRUFBQyxDQUFDO0FBQy9ELENBQUM7Ozs7Ozs7QUFFRCxTQUFTLGFBQWEsQ0FDbEIsVUFBZSxFQUFFLFFBQXFCLEVBQUUsTUFBZTs7UUFDckQsS0FBSyxHQUFRLElBQUk7O1FBQ2pCLFFBQVEsR0FBRyxLQUFLO0lBRXBCLElBQUksQ0FBQyxLQUFLLENBQUMsT0FBTyxDQUFDLFFBQVEsQ0FBQyxFQUFFO1FBQzVCLElBQUksUUFBUSxZQUFZLE1BQU0sRUFBRTtZQUM5QixPQUFPLGlCQUFpQixDQUFDLFFBQVEsQ0FBQyxLQUFLLEVBQUUsUUFBUSxFQUFFLElBQUksQ0FBQyxDQUFDO1NBQzFEO2FBQU07WUFDTCxPQUFPLGlCQUFpQixDQUFDLFFBQVEsRUFBRSxRQUFRLEVBQUUsSUFBSSxDQUFDLENBQUM7U0FDcEQ7S0FDRjs7UUFFRyxVQUFVLEdBQXVCLElBQUk7SUFFekMsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLFFBQVEsQ0FBQyxNQUFNLEVBQUUsRUFBRSxDQUFDLEVBQUU7O2NBQ2xDLGFBQWEsR0FBRyxRQUFRLENBQUMsQ0FBQyxDQUFDO1FBRWpDLElBQUksYUFBYSxZQUFZLElBQUksRUFBRTtZQUNqQyxLQUFLLEdBQUcsYUFBYSxDQUFDO1NBRXZCO2FBQU0sSUFBSSxhQUFhLFlBQVksTUFBTSxFQUFFO1lBQzFDLEtBQUssR0FBRyxhQUFhLENBQUMsS0FBSyxDQUFDO1NBRTdCO2FBQU0sSUFBSSxhQUFhLFlBQVksUUFBUSxFQUFFO1lBQzVDLFFBQVEsR0FBRyxJQUFJLENBQUM7U0FFakI7YUFBTSxJQUFJLGFBQWEsWUFBWSxJQUFJLElBQUksYUFBYSxZQUFZLFFBQVEsRUFBRTtZQUM3RSxVQUFVLEdBQUcsYUFBYSxDQUFDO1NBQzVCO2FBQU0sSUFBSSxhQUFhLFlBQVksY0FBYyxFQUFFO1lBQ2xELEtBQUssR0FBRyxhQUFhLENBQUM7U0FDdkI7S0FDRjtJQUVELEtBQUssR0FBRyxpQkFBaUIsQ0FBQyxLQUFLLENBQUMsQ0FBQztJQUVqQyxJQUFJLEtBQUssSUFBSSxJQUFJLEVBQUU7UUFDakIsT0FBTyxpQkFBaUIsQ0FBQyxLQUFLLEVBQUUsUUFBUSxFQUFFLFVBQVUsQ0FBQyxDQUFDO0tBQ3ZEO1NBQU07UUFDTCxNQUFNLGlCQUFpQixDQUFDLFVBQVUsRUFBRSxNQUFNLENBQUMsQ0FBQztLQUM3QztBQUNILENBQUM7Ozs7Ozs7QUFFRCxTQUFTLGlCQUFpQixDQUN0QixLQUFVLEVBQUUsUUFBaUIsRUFBRSxVQUFrQztJQUNuRSxPQUFPLElBQUksb0JBQW9CLENBQUMsYUFBYSxDQUFDLEdBQUcsQ0FBQyxLQUFLLENBQUMsRUFBRSxRQUFRLEVBQUUsVUFBVSxDQUFDLENBQUM7QUFDbEYsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtUeXBlfSBmcm9tICcuLi9pbnRlcmZhY2UvdHlwZSc7XG5pbXBvcnQge3JlZmxlY3Rvcn0gZnJvbSAnLi4vcmVmbGVjdGlvbi9yZWZsZWN0aW9uJztcblxuaW1wb3J0IHtyZXNvbHZlRm9yd2FyZFJlZn0gZnJvbSAnLi9mb3J3YXJkX3JlZic7XG5pbXBvcnQge0luamVjdGlvblRva2VufSBmcm9tICcuL2luamVjdGlvbl90b2tlbic7XG5pbXBvcnQge0NsYXNzUHJvdmlkZXIsIEV4aXN0aW5nUHJvdmlkZXIsIEZhY3RvcnlQcm92aWRlciwgUHJvdmlkZXIsIFR5cGVQcm92aWRlciwgVmFsdWVQcm92aWRlcn0gZnJvbSAnLi9pbnRlcmZhY2UvcHJvdmlkZXInO1xuaW1wb3J0IHtJbmplY3QsIE9wdGlvbmFsLCBTZWxmLCBTa2lwU2VsZn0gZnJvbSAnLi9tZXRhZGF0YSc7XG5pbXBvcnQge2ludmFsaWRQcm92aWRlckVycm9yLCBtaXhpbmdNdWx0aVByb3ZpZGVyc1dpdGhSZWd1bGFyUHJvdmlkZXJzRXJyb3IsIG5vQW5ub3RhdGlvbkVycm9yfSBmcm9tICcuL3JlZmxlY3RpdmVfZXJyb3JzJztcbmltcG9ydCB7UmVmbGVjdGl2ZUtleX0gZnJvbSAnLi9yZWZsZWN0aXZlX2tleSc7XG5cblxuaW50ZXJmYWNlIE5vcm1hbGl6ZWRQcm92aWRlciBleHRlbmRzIFR5cGVQcm92aWRlciwgVmFsdWVQcm92aWRlciwgQ2xhc3NQcm92aWRlciwgRXhpc3RpbmdQcm92aWRlcixcbiAgICBGYWN0b3J5UHJvdmlkZXIge31cblxuLyoqXG4gKiBgRGVwZW5kZW5jeWAgaXMgdXNlZCBieSB0aGUgZnJhbWV3b3JrIHRvIGV4dGVuZCBESS5cbiAqIFRoaXMgaXMgaW50ZXJuYWwgdG8gQW5ndWxhciBhbmQgc2hvdWxkIG5vdCBiZSB1c2VkIGRpcmVjdGx5LlxuICovXG5leHBvcnQgY2xhc3MgUmVmbGVjdGl2ZURlcGVuZGVuY3kge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBrZXk6IFJlZmxlY3RpdmVLZXksIHB1YmxpYyBvcHRpb25hbDogYm9vbGVhbiwgcHVibGljIHZpc2liaWxpdHk6IFNlbGZ8U2tpcFNlbGZ8bnVsbCkge31cblxuICBzdGF0aWMgZnJvbUtleShrZXk6IFJlZmxlY3RpdmVLZXkpOiBSZWZsZWN0aXZlRGVwZW5kZW5jeSB7XG4gICAgcmV0dXJuIG5ldyBSZWZsZWN0aXZlRGVwZW5kZW5jeShrZXksIGZhbHNlLCBudWxsKTtcbiAgfVxufVxuXG5jb25zdCBfRU1QVFlfTElTVDogYW55W10gPSBbXTtcblxuLyoqXG4gKiBBbiBpbnRlcm5hbCByZXNvbHZlZCByZXByZXNlbnRhdGlvbiBvZiBhIGBQcm92aWRlcmAgdXNlZCBieSB0aGUgYEluamVjdG9yYC5cbiAqXG4gKiBAdXNhZ2VOb3Rlc1xuICogVGhpcyBpcyB1c3VhbGx5IGNyZWF0ZWQgYXV0b21hdGljYWxseSBieSBgSW5qZWN0b3IucmVzb2x2ZUFuZENyZWF0ZWAuXG4gKlxuICogSXQgY2FuIGJlIGNyZWF0ZWQgbWFudWFsbHksIGFzIGZvbGxvd3M6XG4gKlxuICogIyMjIEV4YW1wbGVcbiAqXG4gKiBgYGB0eXBlc2NyaXB0XG4gKiB2YXIgcmVzb2x2ZWRQcm92aWRlcnMgPSBJbmplY3Rvci5yZXNvbHZlKFt7IHByb3ZpZGU6ICdtZXNzYWdlJywgdXNlVmFsdWU6ICdIZWxsbycgfV0pO1xuICogdmFyIGluamVjdG9yID0gSW5qZWN0b3IuZnJvbVJlc29sdmVkUHJvdmlkZXJzKHJlc29sdmVkUHJvdmlkZXJzKTtcbiAqXG4gKiBleHBlY3QoaW5qZWN0b3IuZ2V0KCdtZXNzYWdlJykpLnRvRXF1YWwoJ0hlbGxvJyk7XG4gKiBgYGBcbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgUmVzb2x2ZWRSZWZsZWN0aXZlUHJvdmlkZXIge1xuICAvKipcbiAgICogQSBrZXksIHVzdWFsbHkgYSBgVHlwZTxhbnk+YC5cbiAgICovXG4gIGtleTogUmVmbGVjdGl2ZUtleTtcblxuICAvKipcbiAgICogRmFjdG9yeSBmdW5jdGlvbiB3aGljaCBjYW4gcmV0dXJuIGFuIGluc3RhbmNlIG9mIGFuIG9iamVjdCByZXByZXNlbnRlZCBieSBhIGtleS5cbiAgICovXG4gIHJlc29sdmVkRmFjdG9yaWVzOiBSZXNvbHZlZFJlZmxlY3RpdmVGYWN0b3J5W107XG5cbiAgLyoqXG4gICAqIEluZGljYXRlcyBpZiB0aGUgcHJvdmlkZXIgaXMgYSBtdWx0aS1wcm92aWRlciBvciBhIHJlZ3VsYXIgcHJvdmlkZXIuXG4gICAqL1xuICBtdWx0aVByb3ZpZGVyOiBib29sZWFuO1xufVxuXG5leHBvcnQgY2xhc3MgUmVzb2x2ZWRSZWZsZWN0aXZlUHJvdmlkZXJfIGltcGxlbWVudHMgUmVzb2x2ZWRSZWZsZWN0aXZlUHJvdmlkZXIge1xuICByZWFkb25seSByZXNvbHZlZEZhY3Rvcnk6IFJlc29sdmVkUmVmbGVjdGl2ZUZhY3Rvcnk7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMga2V5OiBSZWZsZWN0aXZlS2V5LCBwdWJsaWMgcmVzb2x2ZWRGYWN0b3JpZXM6IFJlc29sdmVkUmVmbGVjdGl2ZUZhY3RvcnlbXSxcbiAgICAgIHB1YmxpYyBtdWx0aVByb3ZpZGVyOiBib29sZWFuKSB7XG4gICAgdGhpcy5yZXNvbHZlZEZhY3RvcnkgPSB0aGlzLnJlc29sdmVkRmFjdG9yaWVzWzBdO1xuICB9XG59XG5cbi8qKlxuICogQW4gaW50ZXJuYWwgcmVzb2x2ZWQgcmVwcmVzZW50YXRpb24gb2YgYSBmYWN0b3J5IGZ1bmN0aW9uIGNyZWF0ZWQgYnkgcmVzb2x2aW5nIGBQcm92aWRlcmAuXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBjbGFzcyBSZXNvbHZlZFJlZmxlY3RpdmVGYWN0b3J5IHtcbiAgY29uc3RydWN0b3IoXG4gICAgICAvKipcbiAgICAgICAqIEZhY3RvcnkgZnVuY3Rpb24gd2hpY2ggY2FuIHJldHVybiBhbiBpbnN0YW5jZSBvZiBhbiBvYmplY3QgcmVwcmVzZW50ZWQgYnkgYSBrZXkuXG4gICAgICAgKi9cbiAgICAgIHB1YmxpYyBmYWN0b3J5OiBGdW5jdGlvbixcblxuICAgICAgLyoqXG4gICAgICAgKiBBcmd1bWVudHMgKGRlcGVuZGVuY2llcykgdG8gdGhlIGBmYWN0b3J5YCBmdW5jdGlvbi5cbiAgICAgICAqL1xuICAgICAgcHVibGljIGRlcGVuZGVuY2llczogUmVmbGVjdGl2ZURlcGVuZGVuY3lbXSkge31cbn1cblxuXG4vKipcbiAqIFJlc29sdmUgYSBzaW5nbGUgcHJvdmlkZXIuXG4gKi9cbmZ1bmN0aW9uIHJlc29sdmVSZWZsZWN0aXZlRmFjdG9yeShwcm92aWRlcjogTm9ybWFsaXplZFByb3ZpZGVyKTogUmVzb2x2ZWRSZWZsZWN0aXZlRmFjdG9yeSB7XG4gIGxldCBmYWN0b3J5Rm46IEZ1bmN0aW9uO1xuICBsZXQgcmVzb2x2ZWREZXBzOiBSZWZsZWN0aXZlRGVwZW5kZW5jeVtdO1xuICBpZiAocHJvdmlkZXIudXNlQ2xhc3MpIHtcbiAgICBjb25zdCB1c2VDbGFzcyA9IHJlc29sdmVGb3J3YXJkUmVmKHByb3ZpZGVyLnVzZUNsYXNzKTtcbiAgICBmYWN0b3J5Rm4gPSByZWZsZWN0b3IuZmFjdG9yeSh1c2VDbGFzcyk7XG4gICAgcmVzb2x2ZWREZXBzID0gX2RlcGVuZGVuY2llc0Zvcih1c2VDbGFzcyk7XG4gIH0gZWxzZSBpZiAocHJvdmlkZXIudXNlRXhpc3RpbmcpIHtcbiAgICBmYWN0b3J5Rm4gPSAoYWxpYXNJbnN0YW5jZTogYW55KSA9PiBhbGlhc0luc3RhbmNlO1xuICAgIHJlc29sdmVkRGVwcyA9IFtSZWZsZWN0aXZlRGVwZW5kZW5jeS5mcm9tS2V5KFJlZmxlY3RpdmVLZXkuZ2V0KHByb3ZpZGVyLnVzZUV4aXN0aW5nKSldO1xuICB9IGVsc2UgaWYgKHByb3ZpZGVyLnVzZUZhY3RvcnkpIHtcbiAgICBmYWN0b3J5Rm4gPSBwcm92aWRlci51c2VGYWN0b3J5O1xuICAgIHJlc29sdmVkRGVwcyA9IGNvbnN0cnVjdERlcGVuZGVuY2llcyhwcm92aWRlci51c2VGYWN0b3J5LCBwcm92aWRlci5kZXBzKTtcbiAgfSBlbHNlIHtcbiAgICBmYWN0b3J5Rm4gPSAoKSA9PiBwcm92aWRlci51c2VWYWx1ZTtcbiAgICByZXNvbHZlZERlcHMgPSBfRU1QVFlfTElTVDtcbiAgfVxuICByZXR1cm4gbmV3IFJlc29sdmVkUmVmbGVjdGl2ZUZhY3RvcnkoZmFjdG9yeUZuLCByZXNvbHZlZERlcHMpO1xufVxuXG4vKipcbiAqIENvbnZlcnRzIHRoZSBgUHJvdmlkZXJgIGludG8gYFJlc29sdmVkUHJvdmlkZXJgLlxuICpcbiAqIGBJbmplY3RvcmAgaW50ZXJuYWxseSBvbmx5IHVzZXMgYFJlc29sdmVkUHJvdmlkZXJgLCBgUHJvdmlkZXJgIGNvbnRhaW5zIGNvbnZlbmllbmNlIHByb3ZpZGVyXG4gKiBzeW50YXguXG4gKi9cbmZ1bmN0aW9uIHJlc29sdmVSZWZsZWN0aXZlUHJvdmlkZXIocHJvdmlkZXI6IE5vcm1hbGl6ZWRQcm92aWRlcik6IFJlc29sdmVkUmVmbGVjdGl2ZVByb3ZpZGVyIHtcbiAgcmV0dXJuIG5ldyBSZXNvbHZlZFJlZmxlY3RpdmVQcm92aWRlcl8oXG4gICAgICBSZWZsZWN0aXZlS2V5LmdldChwcm92aWRlci5wcm92aWRlKSwgW3Jlc29sdmVSZWZsZWN0aXZlRmFjdG9yeShwcm92aWRlcildLFxuICAgICAgcHJvdmlkZXIubXVsdGkgfHwgZmFsc2UpO1xufVxuXG4vKipcbiAqIFJlc29sdmUgYSBsaXN0IG9mIFByb3ZpZGVycy5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHJlc29sdmVSZWZsZWN0aXZlUHJvdmlkZXJzKHByb3ZpZGVyczogUHJvdmlkZXJbXSk6IFJlc29sdmVkUmVmbGVjdGl2ZVByb3ZpZGVyW10ge1xuICBjb25zdCBub3JtYWxpemVkID0gX25vcm1hbGl6ZVByb3ZpZGVycyhwcm92aWRlcnMsIFtdKTtcbiAgY29uc3QgcmVzb2x2ZWQgPSBub3JtYWxpemVkLm1hcChyZXNvbHZlUmVmbGVjdGl2ZVByb3ZpZGVyKTtcbiAgY29uc3QgcmVzb2x2ZWRQcm92aWRlck1hcCA9IG1lcmdlUmVzb2x2ZWRSZWZsZWN0aXZlUHJvdmlkZXJzKHJlc29sdmVkLCBuZXcgTWFwKCkpO1xuICByZXR1cm4gQXJyYXkuZnJvbShyZXNvbHZlZFByb3ZpZGVyTWFwLnZhbHVlcygpKTtcbn1cblxuLyoqXG4gKiBNZXJnZXMgYSBsaXN0IG9mIFJlc29sdmVkUHJvdmlkZXJzIGludG8gYSBsaXN0IHdoZXJlIGVhY2gga2V5IGlzIGNvbnRhaW5lZCBleGFjdGx5IG9uY2UgYW5kXG4gKiBtdWx0aSBwcm92aWRlcnMgaGF2ZSBiZWVuIG1lcmdlZC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIG1lcmdlUmVzb2x2ZWRSZWZsZWN0aXZlUHJvdmlkZXJzKFxuICAgIHByb3ZpZGVyczogUmVzb2x2ZWRSZWZsZWN0aXZlUHJvdmlkZXJbXSxcbiAgICBub3JtYWxpemVkUHJvdmlkZXJzTWFwOiBNYXA8bnVtYmVyLCBSZXNvbHZlZFJlZmxlY3RpdmVQcm92aWRlcj4pOlxuICAgIE1hcDxudW1iZXIsIFJlc29sdmVkUmVmbGVjdGl2ZVByb3ZpZGVyPiB7XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgcHJvdmlkZXJzLmxlbmd0aDsgaSsrKSB7XG4gICAgY29uc3QgcHJvdmlkZXIgPSBwcm92aWRlcnNbaV07XG4gICAgY29uc3QgZXhpc3RpbmcgPSBub3JtYWxpemVkUHJvdmlkZXJzTWFwLmdldChwcm92aWRlci5rZXkuaWQpO1xuICAgIGlmIChleGlzdGluZykge1xuICAgICAgaWYgKHByb3ZpZGVyLm11bHRpUHJvdmlkZXIgIT09IGV4aXN0aW5nLm11bHRpUHJvdmlkZXIpIHtcbiAgICAgICAgdGhyb3cgbWl4aW5nTXVsdGlQcm92aWRlcnNXaXRoUmVndWxhclByb3ZpZGVyc0Vycm9yKGV4aXN0aW5nLCBwcm92aWRlcik7XG4gICAgICB9XG4gICAgICBpZiAocHJvdmlkZXIubXVsdGlQcm92aWRlcikge1xuICAgICAgICBmb3IgKGxldCBqID0gMDsgaiA8IHByb3ZpZGVyLnJlc29sdmVkRmFjdG9yaWVzLmxlbmd0aDsgaisrKSB7XG4gICAgICAgICAgZXhpc3RpbmcucmVzb2x2ZWRGYWN0b3JpZXMucHVzaChwcm92aWRlci5yZXNvbHZlZEZhY3Rvcmllc1tqXSk7XG4gICAgICAgIH1cbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIG5vcm1hbGl6ZWRQcm92aWRlcnNNYXAuc2V0KHByb3ZpZGVyLmtleS5pZCwgcHJvdmlkZXIpO1xuICAgICAgfVxuICAgIH0gZWxzZSB7XG4gICAgICBsZXQgcmVzb2x2ZWRQcm92aWRlcjogUmVzb2x2ZWRSZWZsZWN0aXZlUHJvdmlkZXI7XG4gICAgICBpZiAocHJvdmlkZXIubXVsdGlQcm92aWRlcikge1xuICAgICAgICByZXNvbHZlZFByb3ZpZGVyID0gbmV3IFJlc29sdmVkUmVmbGVjdGl2ZVByb3ZpZGVyXyhcbiAgICAgICAgICAgIHByb3ZpZGVyLmtleSwgcHJvdmlkZXIucmVzb2x2ZWRGYWN0b3JpZXMuc2xpY2UoKSwgcHJvdmlkZXIubXVsdGlQcm92aWRlcik7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICByZXNvbHZlZFByb3ZpZGVyID0gcHJvdmlkZXI7XG4gICAgICB9XG4gICAgICBub3JtYWxpemVkUHJvdmlkZXJzTWFwLnNldChwcm92aWRlci5rZXkuaWQsIHJlc29sdmVkUHJvdmlkZXIpO1xuICAgIH1cbiAgfVxuICByZXR1cm4gbm9ybWFsaXplZFByb3ZpZGVyc01hcDtcbn1cblxuZnVuY3Rpb24gX25vcm1hbGl6ZVByb3ZpZGVycyhcbiAgICBwcm92aWRlcnM6IFByb3ZpZGVyW10sIHJlczogTm9ybWFsaXplZFByb3ZpZGVyW10pOiBOb3JtYWxpemVkUHJvdmlkZXJbXSB7XG4gIHByb3ZpZGVycy5mb3JFYWNoKGIgPT4ge1xuICAgIGlmIChiIGluc3RhbmNlb2YgVHlwZSkge1xuICAgICAgcmVzLnB1c2goeyBwcm92aWRlOiBiLCB1c2VDbGFzczogYiB9IGFzIE5vcm1hbGl6ZWRQcm92aWRlcik7XG5cbiAgICB9IGVsc2UgaWYgKGIgJiYgdHlwZW9mIGIgPT0gJ29iamVjdCcgJiYgKGIgYXMgYW55KS5wcm92aWRlICE9PSB1bmRlZmluZWQpIHtcbiAgICAgIHJlcy5wdXNoKGIgYXMgTm9ybWFsaXplZFByb3ZpZGVyKTtcblxuICAgIH0gZWxzZSBpZiAoQXJyYXkuaXNBcnJheShiKSkge1xuICAgICAgX25vcm1hbGl6ZVByb3ZpZGVycyhiLCByZXMpO1xuXG4gICAgfSBlbHNlIHtcbiAgICAgIHRocm93IGludmFsaWRQcm92aWRlckVycm9yKGIpO1xuICAgIH1cbiAgfSk7XG5cbiAgcmV0dXJuIHJlcztcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGNvbnN0cnVjdERlcGVuZGVuY2llcyhcbiAgICB0eXBlT3JGdW5jOiBhbnksIGRlcGVuZGVuY2llcz86IGFueVtdKTogUmVmbGVjdGl2ZURlcGVuZGVuY3lbXSB7XG4gIGlmICghZGVwZW5kZW5jaWVzKSB7XG4gICAgcmV0dXJuIF9kZXBlbmRlbmNpZXNGb3IodHlwZU9yRnVuYyk7XG4gIH0gZWxzZSB7XG4gICAgY29uc3QgcGFyYW1zOiBhbnlbXVtdID0gZGVwZW5kZW5jaWVzLm1hcCh0ID0+IFt0XSk7XG4gICAgcmV0dXJuIGRlcGVuZGVuY2llcy5tYXAodCA9PiBfZXh0cmFjdFRva2VuKHR5cGVPckZ1bmMsIHQsIHBhcmFtcykpO1xuICB9XG59XG5cbmZ1bmN0aW9uIF9kZXBlbmRlbmNpZXNGb3IodHlwZU9yRnVuYzogYW55KTogUmVmbGVjdGl2ZURlcGVuZGVuY3lbXSB7XG4gIGNvbnN0IHBhcmFtcyA9IHJlZmxlY3Rvci5wYXJhbWV0ZXJzKHR5cGVPckZ1bmMpO1xuXG4gIGlmICghcGFyYW1zKSByZXR1cm4gW107XG4gIGlmIChwYXJhbXMuc29tZShwID0+IHAgPT0gbnVsbCkpIHtcbiAgICB0aHJvdyBub0Fubm90YXRpb25FcnJvcih0eXBlT3JGdW5jLCBwYXJhbXMpO1xuICB9XG4gIHJldHVybiBwYXJhbXMubWFwKHAgPT4gX2V4dHJhY3RUb2tlbih0eXBlT3JGdW5jLCBwLCBwYXJhbXMpKTtcbn1cblxuZnVuY3Rpb24gX2V4dHJhY3RUb2tlbihcbiAgICB0eXBlT3JGdW5jOiBhbnksIG1ldGFkYXRhOiBhbnlbXSB8IGFueSwgcGFyYW1zOiBhbnlbXVtdKTogUmVmbGVjdGl2ZURlcGVuZGVuY3kge1xuICBsZXQgdG9rZW46IGFueSA9IG51bGw7XG4gIGxldCBvcHRpb25hbCA9IGZhbHNlO1xuXG4gIGlmICghQXJyYXkuaXNBcnJheShtZXRhZGF0YSkpIHtcbiAgICBpZiAobWV0YWRhdGEgaW5zdGFuY2VvZiBJbmplY3QpIHtcbiAgICAgIHJldHVybiBfY3JlYXRlRGVwZW5kZW5jeShtZXRhZGF0YS50b2tlbiwgb3B0aW9uYWwsIG51bGwpO1xuICAgIH0gZWxzZSB7XG4gICAgICByZXR1cm4gX2NyZWF0ZURlcGVuZGVuY3kobWV0YWRhdGEsIG9wdGlvbmFsLCBudWxsKTtcbiAgICB9XG4gIH1cblxuICBsZXQgdmlzaWJpbGl0eTogU2VsZnxTa2lwU2VsZnxudWxsID0gbnVsbDtcblxuICBmb3IgKGxldCBpID0gMDsgaSA8IG1ldGFkYXRhLmxlbmd0aDsgKytpKSB7XG4gICAgY29uc3QgcGFyYW1NZXRhZGF0YSA9IG1ldGFkYXRhW2ldO1xuXG4gICAgaWYgKHBhcmFtTWV0YWRhdGEgaW5zdGFuY2VvZiBUeXBlKSB7XG4gICAgICB0b2tlbiA9IHBhcmFtTWV0YWRhdGE7XG5cbiAgICB9IGVsc2UgaWYgKHBhcmFtTWV0YWRhdGEgaW5zdGFuY2VvZiBJbmplY3QpIHtcbiAgICAgIHRva2VuID0gcGFyYW1NZXRhZGF0YS50b2tlbjtcblxuICAgIH0gZWxzZSBpZiAocGFyYW1NZXRhZGF0YSBpbnN0YW5jZW9mIE9wdGlvbmFsKSB7XG4gICAgICBvcHRpb25hbCA9IHRydWU7XG5cbiAgICB9IGVsc2UgaWYgKHBhcmFtTWV0YWRhdGEgaW5zdGFuY2VvZiBTZWxmIHx8IHBhcmFtTWV0YWRhdGEgaW5zdGFuY2VvZiBTa2lwU2VsZikge1xuICAgICAgdmlzaWJpbGl0eSA9IHBhcmFtTWV0YWRhdGE7XG4gICAgfSBlbHNlIGlmIChwYXJhbU1ldGFkYXRhIGluc3RhbmNlb2YgSW5qZWN0aW9uVG9rZW4pIHtcbiAgICAgIHRva2VuID0gcGFyYW1NZXRhZGF0YTtcbiAgICB9XG4gIH1cblxuICB0b2tlbiA9IHJlc29sdmVGb3J3YXJkUmVmKHRva2VuKTtcblxuICBpZiAodG9rZW4gIT0gbnVsbCkge1xuICAgIHJldHVybiBfY3JlYXRlRGVwZW5kZW5jeSh0b2tlbiwgb3B0aW9uYWwsIHZpc2liaWxpdHkpO1xuICB9IGVsc2Uge1xuICAgIHRocm93IG5vQW5ub3RhdGlvbkVycm9yKHR5cGVPckZ1bmMsIHBhcmFtcyk7XG4gIH1cbn1cblxuZnVuY3Rpb24gX2NyZWF0ZURlcGVuZGVuY3koXG4gICAgdG9rZW46IGFueSwgb3B0aW9uYWw6IGJvb2xlYW4sIHZpc2liaWxpdHk6IFNlbGYgfCBTa2lwU2VsZiB8IG51bGwpOiBSZWZsZWN0aXZlRGVwZW5kZW5jeSB7XG4gIHJldHVybiBuZXcgUmVmbGVjdGl2ZURlcGVuZGVuY3koUmVmbGVjdGl2ZUtleS5nZXQodG9rZW4pLCBvcHRpb25hbCwgdmlzaWJpbGl0eSk7XG59XG4iXX0=