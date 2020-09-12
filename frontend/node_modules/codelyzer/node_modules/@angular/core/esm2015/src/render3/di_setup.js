/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/di_setup.ts
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
import { isClassProvider, isTypeProvider, providerToFactory } from '../di/r3_injector';
import { diPublicInInjector, getNodeInjectable, getOrCreateNodeInjectorForNode } from './di';
import { ɵɵdirectiveInject } from './instructions/all';
import { NodeInjectorFactory } from './interfaces/injector';
import { isComponentDef } from './interfaces/type_checks';
import { TVIEW } from './interfaces/view';
import { getLView, getPreviousOrParentTNode, getTView } from './state';
/**
 * Resolves the providers which are defined in the DirectiveDef.
 *
 * When inserting the tokens and the factories in their respective arrays, we can assume that
 * this method is called first for the component (if any), and then for other directives on the same
 * node.
 * As a consequence,the providers are always processed in that order:
 * 1) The view providers of the component
 * 2) The providers of the component
 * 3) The providers of the other directives
 * This matches the structure of the injectables arrays of a view (for each node).
 * So the tokens and the factories can be pushed at the end of the arrays, except
 * in one case for multi providers.
 *
 * @template T
 * @param {?} def the directive definition
 * @param {?} providers
 * @param {?} viewProviders
 * @return {?}
 */
export function providersResolver(def, providers, viewProviders) {
    /** @type {?} */
    const tView = getTView();
    if (tView.firstCreatePass) {
        /** @type {?} */
        const isComponent = isComponentDef(def);
        // The list of view providers is processed first, and the flags are updated
        resolveProvider(viewProviders, tView.data, tView.blueprint, isComponent, true);
        // Then, the list of providers is processed, and the flags are updated
        resolveProvider(providers, tView.data, tView.blueprint, isComponent, false);
    }
}
/**
 * Resolves a provider and publishes it to the DI system.
 * @param {?} provider
 * @param {?} tInjectables
 * @param {?} lInjectablesBlueprint
 * @param {?} isComponent
 * @param {?} isViewProvider
 * @return {?}
 */
function resolveProvider(provider, tInjectables, lInjectablesBlueprint, isComponent, isViewProvider) {
    provider = resolveForwardRef(provider);
    if (Array.isArray(provider)) {
        // Recursively call `resolveProvider`
        // Recursion is OK in this case because this code will not be in hot-path once we implement
        // cloning of the initial state.
        for (let i = 0; i < provider.length; i++) {
            resolveProvider(provider[i], tInjectables, lInjectablesBlueprint, isComponent, isViewProvider);
        }
    }
    else {
        /** @type {?} */
        const tView = getTView();
        /** @type {?} */
        const lView = getLView();
        /** @type {?} */
        let token = isTypeProvider(provider) ? provider : resolveForwardRef(provider.provide);
        /** @type {?} */
        let providerFactory = providerToFactory(provider);
        /** @type {?} */
        const tNode = getPreviousOrParentTNode();
        /** @type {?} */
        const beginIndex = tNode.providerIndexes & 65535 /* ProvidersStartIndexMask */;
        /** @type {?} */
        const endIndex = tNode.directiveStart;
        /** @type {?} */
        const cptViewProvidersCount = tNode.providerIndexes >> 16 /* CptViewProvidersCountShift */;
        if (isClassProvider(provider) || isTypeProvider(provider)) {
            /** @type {?} */
            const prototype = (((/** @type {?} */ (provider))).useClass || provider).prototype;
            /** @type {?} */
            const ngOnDestroy = prototype.ngOnDestroy;
            if (ngOnDestroy) {
                (tView.destroyHooks || (tView.destroyHooks = [])).push(tInjectables.length, ngOnDestroy);
            }
        }
        if (isTypeProvider(provider) || !provider.multi) {
            // Single provider case: the factory is created and pushed immediately
            /** @type {?} */
            const factory = new NodeInjectorFactory(providerFactory, isViewProvider, ɵɵdirectiveInject);
            /** @type {?} */
            const existingFactoryIndex = indexOf(token, tInjectables, isViewProvider ? beginIndex : beginIndex + cptViewProvidersCount, endIndex);
            if (existingFactoryIndex == -1) {
                diPublicInInjector(getOrCreateNodeInjectorForNode((/** @type {?} */ (tNode)), lView), tView, token);
                tInjectables.push(token);
                tNode.directiveStart++;
                tNode.directiveEnd++;
                if (isViewProvider) {
                    tNode.providerIndexes += 65536 /* CptViewProvidersCountShifter */;
                }
                lInjectablesBlueprint.push(factory);
                lView.push(factory);
            }
            else {
                lInjectablesBlueprint[existingFactoryIndex] = factory;
                lView[existingFactoryIndex] = factory;
            }
        }
        else {
            // Multi provider case:
            // We create a multi factory which is going to aggregate all the values.
            // Since the output of such a factory depends on content or view injection,
            // we create two of them, which are linked together.
            //
            // The first one (for view providers) is always in the first block of the injectables array,
            // and the second one (for providers) is always in the second block.
            // This is important because view providers have higher priority. When a multi token
            // is being looked up, the view providers should be found first.
            // Note that it is not possible to have a multi factory in the third block (directive block).
            //
            // The algorithm to process multi providers is as follows:
            // 1) If the multi provider comes from the `viewProviders` of the component:
            //   a) If the special view providers factory doesn't exist, it is created and pushed.
            //   b) Else, the multi provider is added to the existing multi factory.
            // 2) If the multi provider comes from the `providers` of the component or of another
            // directive:
            //   a) If the multi factory doesn't exist, it is created and provider pushed into it.
            //      It is also linked to the multi factory for view providers, if it exists.
            //   b) Else, the multi provider is added to the existing multi factory.
            /** @type {?} */
            const existingProvidersFactoryIndex = indexOf(token, tInjectables, beginIndex + cptViewProvidersCount, endIndex);
            /** @type {?} */
            const existingViewProvidersFactoryIndex = indexOf(token, tInjectables, beginIndex, beginIndex + cptViewProvidersCount);
            /** @type {?} */
            const doesProvidersFactoryExist = existingProvidersFactoryIndex >= 0 &&
                lInjectablesBlueprint[existingProvidersFactoryIndex];
            /** @type {?} */
            const doesViewProvidersFactoryExist = existingViewProvidersFactoryIndex >= 0 &&
                lInjectablesBlueprint[existingViewProvidersFactoryIndex];
            if (isViewProvider && !doesViewProvidersFactoryExist ||
                !isViewProvider && !doesProvidersFactoryExist) {
                // Cases 1.a and 2.a
                diPublicInInjector(getOrCreateNodeInjectorForNode((/** @type {?} */ (tNode)), lView), tView, token);
                /** @type {?} */
                const factory = multiFactory(isViewProvider ? multiViewProvidersFactoryResolver : multiProvidersFactoryResolver, lInjectablesBlueprint.length, isViewProvider, isComponent, providerFactory);
                if (!isViewProvider && doesViewProvidersFactoryExist) {
                    lInjectablesBlueprint[existingViewProvidersFactoryIndex].providerFactory = factory;
                }
                tInjectables.push(token);
                tNode.directiveStart++;
                tNode.directiveEnd++;
                if (isViewProvider) {
                    tNode.providerIndexes += 65536 /* CptViewProvidersCountShifter */;
                }
                lInjectablesBlueprint.push(factory);
                lView.push(factory);
            }
            else {
                // Cases 1.b and 2.b
                multiFactoryAdd((/** @type {?} */ (lInjectablesBlueprint))[isViewProvider ? existingViewProvidersFactoryIndex : existingProvidersFactoryIndex], providerFactory, !isViewProvider && isComponent);
            }
            if (!isViewProvider && isComponent && doesViewProvidersFactoryExist) {
                (/** @type {?} */ (lInjectablesBlueprint[existingViewProvidersFactoryIndex].componentProviders))++;
            }
        }
    }
}
/**
 * Add a factory in a multi factory.
 * @param {?} multiFactory
 * @param {?} factory
 * @param {?} isComponentProvider
 * @return {?}
 */
function multiFactoryAdd(multiFactory, factory, isComponentProvider) {
    (/** @type {?} */ (multiFactory.multi)).push(factory);
    if (isComponentProvider) {
        (/** @type {?} */ (multiFactory.componentProviders))++;
    }
}
/**
 * Returns the index of item in the array, but only in the begin to end range.
 * @param {?} item
 * @param {?} arr
 * @param {?} begin
 * @param {?} end
 * @return {?}
 */
function indexOf(item, arr, begin, end) {
    for (let i = begin; i < end; i++) {
        if (arr[i] === item)
            return i;
    }
    return -1;
}
/**
 * Use this with `multi` `providers`.
 * @this {?}
 * @param {?} _
 * @param {?} tData
 * @param {?} lData
 * @param {?} tNode
 * @return {?}
 */
function multiProvidersFactoryResolver(_, tData, lData, tNode) {
    return multiResolve((/** @type {?} */ (this.multi)), []);
}
/**
 * Use this with `multi` `viewProviders`.
 *
 * This factory knows how to concatenate itself with the existing `multi` `providers`.
 * @this {?}
 * @param {?} _
 * @param {?} tData
 * @param {?} lView
 * @param {?} tNode
 * @return {?}
 */
function multiViewProvidersFactoryResolver(_, tData, lView, tNode) {
    /** @type {?} */
    const factories = (/** @type {?} */ (this.multi));
    /** @type {?} */
    let result;
    if (this.providerFactory) {
        /** @type {?} */
        const componentCount = (/** @type {?} */ (this.providerFactory.componentProviders));
        /** @type {?} */
        const multiProviders = getNodeInjectable(lView, lView[TVIEW], (/** @type {?} */ ((/** @type {?} */ (this.providerFactory)).index)), tNode);
        // Copy the section of the array which contains `multi` `providers` from the component
        result = multiProviders.slice(0, componentCount);
        // Insert the `viewProvider` instances.
        multiResolve(factories, result);
        // Copy the section of the array which contains `multi` `providers` from other directives
        for (let i = componentCount; i < multiProviders.length; i++) {
            result.push(multiProviders[i]);
        }
    }
    else {
        result = [];
        // Insert the `viewProvider` instances.
        multiResolve(factories, result);
    }
    return result;
}
/**
 * Maps an array of factories into an array of values.
 * @param {?} factories
 * @param {?} result
 * @return {?}
 */
function multiResolve(factories, result) {
    for (let i = 0; i < factories.length; i++) {
        /** @type {?} */
        const factory = (/** @type {?} */ ((/** @type {?} */ (factories[i]))));
        result.push(factory());
    }
    return result;
}
/**
 * Creates a multi factory.
 * @param {?} factoryFn
 * @param {?} index
 * @param {?} isViewProvider
 * @param {?} isComponent
 * @param {?} f
 * @return {?}
 */
function multiFactory(factoryFn, index, isViewProvider, isComponent, f) {
    /** @type {?} */
    const factory = new NodeInjectorFactory(factoryFn, isViewProvider, ɵɵdirectiveInject);
    factory.multi = [];
    factory.index = index;
    factory.componentProviders = 0;
    multiFactoryAdd(factory, f, isComponent && !isViewProvider);
    return factory;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGlfc2V0dXAuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL2RpX3NldHVwLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQVNBLE9BQU8sRUFBQyxpQkFBaUIsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBRXBELE9BQU8sRUFBQyxlQUFlLEVBQUUsY0FBYyxFQUFFLGlCQUFpQixFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFFckYsT0FBTyxFQUFDLGtCQUFrQixFQUFFLGlCQUFpQixFQUFFLDhCQUE4QixFQUFDLE1BQU0sTUFBTSxDQUFDO0FBQzNGLE9BQU8sRUFBQyxpQkFBaUIsRUFBQyxNQUFNLG9CQUFvQixDQUFDO0FBRXJELE9BQU8sRUFBQyxtQkFBbUIsRUFBQyxNQUFNLHVCQUF1QixDQUFDO0FBRTFELE9BQU8sRUFBQyxjQUFjLEVBQUMsTUFBTSwwQkFBMEIsQ0FBQztBQUN4RCxPQUFPLEVBQWUsS0FBSyxFQUFRLE1BQU0sbUJBQW1CLENBQUM7QUFDN0QsT0FBTyxFQUFDLFFBQVEsRUFBRSx3QkFBd0IsRUFBRSxRQUFRLEVBQUMsTUFBTSxTQUFTLENBQUM7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQXNCckUsTUFBTSxVQUFVLGlCQUFpQixDQUM3QixHQUFvQixFQUFFLFNBQXFCLEVBQUUsYUFBeUI7O1VBQ2xFLEtBQUssR0FBRyxRQUFRLEVBQUU7SUFDeEIsSUFBSSxLQUFLLENBQUMsZUFBZSxFQUFFOztjQUNuQixXQUFXLEdBQUcsY0FBYyxDQUFDLEdBQUcsQ0FBQztRQUV2QywyRUFBMkU7UUFDM0UsZUFBZSxDQUFDLGFBQWEsRUFBRSxLQUFLLENBQUMsSUFBSSxFQUFFLEtBQUssQ0FBQyxTQUFTLEVBQUUsV0FBVyxFQUFFLElBQUksQ0FBQyxDQUFDO1FBRS9FLHNFQUFzRTtRQUN0RSxlQUFlLENBQUMsU0FBUyxFQUFFLEtBQUssQ0FBQyxJ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LE1BQU0sQ0FBQztBQUNoQixDQUFDOzs7Ozs7O0FBS0QsU0FBUyxZQUFZLENBQUMsU0FBMkIsRUFBRSxNQUFhO0lBQzlELEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxTQUFTLENBQUMsTUFBTSxFQUFFLENBQUMsRUFBRSxFQUFFOztjQUNuQyxPQUFPLEdBQUcsbUJBQUEsbUJBQUEsU0FBUyxDQUFDLENBQUMsQ0FBQyxFQUFFLEVBQVk7UUFDMUMsTUFBTSxDQUFDLElBQUksQ0FBQyxPQUFPLEVBQUUsQ0FBQyxDQUFDO0tBQ3hCO0lBQ0QsT0FBTyxNQUFNLENBQUM7QUFDaEIsQ0FBQzs7Ozs7Ozs7OztBQUtELFNBQVMsWUFBWSxDQUNqQixTQUVxQyxFQUNyQyxLQUFhLEVBQUUsY0FBdUIsRUFBRSxXQUFvQixFQUM1RCxDQUFZOztVQUNSLE9BQU8sR0FBRyxJQUFJLG1CQUFtQixDQUFDLFNBQVMsRUFBRSxjQUFjLEVBQUUsaUJBQWlCLENBQUM7SUFDckYsT0FBTyxDQUFDLEtBQUssR0FBRyxFQUFFLENBQUM7SUFDbkIsT0FBTyxDQUFDLEtBQUssR0FBRyxLQUFLLENBQUM7SUFDdEIsT0FBTyxDQUFDLGtCQUFrQixHQUFHLENBQUMsQ0FBQztJQUMvQixlQUFlLENBQUMsT0FBTyxFQUFFLENBQUMsRUFBRSxXQUFXLElBQUksQ0FBQyxjQUFjLENBQUMsQ0FBQztJQUM1RCxPQUFPLE9BQU8sQ0FBQztBQUNqQixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5cbmltcG9ydCB7cmVzb2x2ZUZvcndhcmRSZWZ9IGZyb20gJy4uL2RpL2ZvcndhcmRfcmVmJztcbmltcG9ydCB7Q2xhc3NQcm92aWRlciwgUHJvdmlkZXJ9IGZyb20gJy4uL2RpL2ludGVyZmFjZS9wcm92aWRlcic7XG5pbXBvcnQge2lzQ2xhc3NQcm92aWRlciwgaXNUeXBlUHJvdmlkZXIsIHByb3ZpZGVyVG9GYWN0b3J5fSBmcm9tICcuLi9kaS9yM19pbmplY3Rvcic7XG5cbmltcG9ydCB7ZGlQdWJsaWNJbkluamVjdG9yLCBnZXROb2RlSW5qZWN0YWJsZSwgZ2V0T3JDcmVhdGVOb2RlSW5qZWN0b3JGb3JOb2RlfSBmcm9tICcuL2RpJztcbmltcG9ydCB7ybXJtWRpcmVjdGl2ZUluamVjdH0gZnJvbSAnLi9pbnN0cnVjdGlvbnMvYWxsJztcbmltcG9ydCB7RGlyZWN0aXZlRGVmfSBmcm9tICcuL2ludGVyZmFjZXMvZGVmaW5pdGlvbic7XG5pbXBvcnQge05vZGVJbmplY3RvckZhY3Rvcnl9IGZyb20gJy4vaW50ZXJmYWNlcy9pbmplY3Rvcic7XG5pbXBvcnQge1RDb250YWluZXJOb2RlLCBURGlyZWN0aXZlSG9zdE5vZGUsIFRFbGVtZW50Q29udGFpbmVyTm9kZSwgVEVsZW1lbnROb2RlLCBUTm9kZVByb3ZpZGVySW5kZXhlc30gZnJvbSAnLi9pbnRlcmZhY2VzL25vZGUnO1xuaW1wb3J0IHtpc0NvbXBvbmVudERlZn0gZnJvbSAnLi9pbnRlcmZhY2VzL3R5cGVfY2hlY2tzJztcbmltcG9ydCB7TFZpZXcsIFREYXRhLCBUVklFVywgVFZpZXd9IGZyb20gJy4vaW50ZXJmYWNlcy92aWV3JztcbmltcG9ydCB7Z2V0TFZpZXcsIGdldFByZXZpb3VzT3JQYXJlbnRUTm9kZSwgZ2V0VFZpZXd9IGZyb20gJy4vc3RhdGUnO1xuXG5cblxuLyoqXG4gKiBSZXNvbHZlcyB0aGUgcHJvdmlkZXJzIHdoaWNoIGFyZSBkZWZpbmVkIGluIHRoZSBEaXJlY3RpdmVEZWYuXG4gKlxuICogV2hlbiBpbnNlcnRpbmcgdGhlIHRva2VucyBhbmQgdGhlIGZhY3RvcmllcyBpbiB0aGVpciByZXNwZWN0aXZlIGFycmF5cywgd2UgY2FuIGFzc3VtZSB0aGF0XG4gKiB0aGlzIG1ldGhvZCBpcyBjYWxsZWQgZmlyc3QgZm9yIHRoZSBjb21wb25lbnQgKGlmIGFueSksIGFuZCB0aGVuIGZvciBvdGhlciBkaXJlY3RpdmVzIG9uIHRoZSBzYW1lXG4gKiBub2RlLlxuICogQXMgYSBjb25zZXF1ZW5jZSx0aGUgcHJvdmlkZXJzIGFyZSBhbHdheXMgcHJvY2Vzc2VkIGluIHRoYXQgb3JkZXI6XG4gKiAxKSBUaGUgdmlldyBwcm92aWRlcnMgb2YgdGhlIGNvbXBvbmVudFxuICogMikgVGhlIHByb3ZpZGVycyBvZiB0aGUgY29tcG9uZW50XG4gKiAzKSBUaGUgcHJvdmlkZXJzIG9mIHRoZSBvdGhlciBkaXJlY3RpdmVzXG4gKiBUaGlzIG1hdGNoZXMgdGhlIHN0cnVjdHVyZSBvZiB0aGUgaW5qZWN0YWJsZXMgYXJyYXlzIG9mIGEgdmlldyAoZm9yIGVhY2ggbm9kZSkuXG4gKiBTbyB0aGUgdG9rZW5zIGFuZCB0aGUgZmFjdG9yaWVzIGNhbiBiZSBwdXNoZWQgYXQgdGhlIGVuZCBvZiB0aGUgYXJyYXlzLCBleGNlcHRcbiAqIGluIG9uZSBjYXNlIGZvciBtdWx0aSBwcm92aWRlcnMuXG4gKlxuICogQHBhcmFtIGRlZiB0aGUgZGlyZWN0aXZlIGRlZmluaXRpb25cbiAqIEBwYXJhbSBwcm92aWRlcnM6IEFycmF5IG9mIGBwcm92aWRlcnNgLlxuICogQHBhcmFtIHZpZXdQcm92aWRlcnM6IEFycmF5IG9mIGB2aWV3UHJvdmlkZXJzYC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHByb3ZpZGVyc1Jlc29sdmVyPFQ+KFxuICAgIGRlZjogRGlyZWN0aXZlRGVmPFQ+LCBwcm92aWRlcnM6IFByb3ZpZGVyW10sIHZpZXdQcm92aWRlcnM6IFByb3ZpZGVyW10pOiB2b2lkIHtcbiAgY29uc3QgdFZpZXcgPSBnZXRUVmlldygpO1xuICBpZiAodFZpZXcuZmlyc3RDcmVhdGVQYXNzKSB7XG4gICAgY29uc3QgaXNDb21wb25lbnQgPSBpc0NvbXBvbmVudERlZihkZWYpO1xuXG4gICAgLy8gVGhlIGxpc3Qgb2YgdmlldyBwcm92aWRlcnMgaXMgcHJvY2Vzc2VkIGZpcnN0LCBhbmQgdGhlIGZsYWdzIGFyZSB1cGRhdGVkXG4gICAgcmVzb2x2ZVByb3ZpZGVyKHZpZXdQcm92aWRlcnMsIHRWaWV3LmRhdGEsIHRWaWV3LmJsdWVwcmludCwgaXNDb21wb25lbnQsIHRydWUpO1xuXG4gICAgLy8gVGhlbiwgdGhlIGxpc3Qgb2YgcHJvdmlkZXJzIGlzIHByb2Nlc3NlZCwgYW5kIHRoZSBmbGFncyBhcmUgdXBkYXRlZFxuICAgIHJlc29sdmVQcm92aWRlcihwcm92aWRlcnMsIHRWaWV3LmRhdGEsIHRWaWV3LmJsdWVwcmludCwgaXNDb21wb25lbnQsIGZhbHNlKTtcbiAgfVxufVxuXG4vKipcbiAqIFJlc29sdmVzIGEgcHJvdmlkZXIgYW5kIHB1Ymxpc2hlcyBpdCB0byB0aGUgREkgc3lzdGVtLlxuICovXG5mdW5jdGlvbiByZXNvbHZlUHJvdmlkZXIoXG4gICAgcHJvdmlkZXI6IFByb3ZpZGVyLCB0SW5qZWN0YWJsZXM6IFREYXRhLCBsSW5qZWN0YWJsZXNCbHVlcHJpbnQ6IE5vZGVJbmplY3RvckZhY3RvcnlbXSxcbiAgICBpc0NvbXBvbmVudDogYm9vbGVhbiwgaXNWaWV3UHJvdmlkZXI6IGJvb2xlYW4pOiB2b2lkIHtcbiAgcHJvdmlkZXIgPSByZXNvbHZlRm9yd2FyZFJlZihwcm92aWRlcik7XG4gIGlmIChBcnJheS5pc0FycmF5KHByb3ZpZGVyKSkge1xuICAgIC8vIFJlY3Vyc2l2ZWx5IGNhbGwgYHJlc29sdmVQcm92aWRlcmBcbiAgICAvLyBSZWN1cnNpb24gaXMgT0sgaW4gdGhpcyBjYXNlIGJlY2F1c2UgdGhpcyBjb2RlIHdpbGwgbm90IGJlIGluIGhvdC1wYXRoIG9uY2Ugd2UgaW1wbGVtZW50XG4gICAgLy8gY2xvbmluZyBvZiB0aGUgaW5pdGlhbCBzdGF0ZS5cbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IHByb3ZpZGVyLmxlbmd0aDsgaSsrKSB7XG4gICAgICByZXNvbHZlUHJvdmlkZXIoXG4gICAgICAgICAgcHJvdmlkZXJbaV0sIHRJbmplY3RhYmxlcywgbEluamVjdGFibGVzQmx1ZXByaW50LCBpc0NvbXBvbmVudCwgaXNWaWV3UHJvdmlkZXIpO1xuICAgIH1cbiAgfSBlbHNlIHtcbiAgICBjb25zdCB0VmlldyA9IGdldFRWaWV3KCk7XG4gICAgY29uc3QgbFZpZXcgPSBnZXRMVmlldygpO1xuICAgIGxldCB0b2tlbjogYW55ID0gaXNUeXBlUHJvdmlkZXIocHJvdmlkZXIpID8gcHJvdmlkZXIgOiByZXNvbHZlRm9yd2FyZFJlZihwcm92aWRlci5wcm92aWRlKTtcbiAgICBsZXQgcHJvdmlkZXJGYWN0b3J5OiAoKSA9PiBhbnkgPSBwcm92aWRlclRvRmFjdG9yeShwcm92aWRlcik7XG5cbiAgICBjb25zdCB0Tm9kZSA9IGdldFByZXZpb3VzT3JQYXJlbnRUTm9kZSgpO1xuICAgIGNvbnN0IGJlZ2luSW5kZXggPSB0Tm9kZS5wcm92aWRlckluZGV4ZXMgJiBUTm9kZVByb3ZpZGVySW5kZXhlcy5Qcm92aWRlcnNTdGFydEluZGV4TWFzaztcbiAgICBjb25zdCBlbmRJbmRleCA9IHROb2RlLmRpcmVjdGl2ZVN0YXJ0O1xuICAgIGNvbnN0IGNwdFZpZXdQcm92aWRlcnNDb3VudCA9XG4gICAgICAgIHROb2RlLnByb3ZpZGVySW5kZXhlcyA+PiBUTm9kZVByb3ZpZGVySW5kZXhlcy5DcHRWaWV3UHJvdmlkZXJzQ291bnRTaGlmdDtcblxuICAgIGlmIChpc0NsYXNzUHJvdmlkZXIocHJvdmlkZXIpIHx8IGlzVHlwZVByb3ZpZGVyKHByb3ZpZGVyKSkge1xuICAgICAgY29uc3QgcHJvdG90eXBlID0gKChwcm92aWRlciBhcyBDbGFzc1Byb3ZpZGVyKS51c2VDbGFzcyB8fCBwcm92aWRlcikucHJvdG90eXBlO1xuICAgICAgY29uc3QgbmdPbkRlc3Ryb3kgPSBwcm90b3R5cGUubmdPbkRlc3Ryb3k7XG5cbiAgICAgIGlmIChuZ09uRGVzdHJveSkge1xuICAgICAgICAodFZpZXcuZGVzdHJveUhvb2tzIHx8ICh0Vmlldy5kZXN0cm95SG9va3MgPSBbXSkpLnB1c2godEluamVjdGFibGVzLmxlbmd0aCwgbmdPbkRlc3Ryb3kpO1xuICAgICAgfVxuICAgIH1cblxuICAgIGlmIChpc1R5cGVQcm92aWRlcihwcm92aWRlcikgfHwgIXByb3ZpZGVyLm11bHRpKSB7XG4gICAgICAvLyBTaW5nbGUgcHJvdmlkZXIgY2FzZTogdGhlIGZhY3RvcnkgaXMgY3JlYXRlZCBhbmQgcHVzaGVkIGltbWVkaWF0ZWx5XG4gICAgICBjb25zdCBmYWN0b3J5ID0gbmV3IE5vZGVJbmplY3RvckZhY3RvcnkocHJvdmlkZXJGYWN0b3J5LCBpc1ZpZXdQcm92aWRlciwgybXJtWRpcmVjdGl2ZUluamVjdCk7XG4gICAgICBjb25zdCBleGlzdGluZ0ZhY3RvcnlJbmRleCA9IGluZGV4T2YoXG4gICAgICAgICAgdG9rZW4sIHRJbmplY3RhYmxlcywgaXNWaWV3UHJvdmlkZXIgPyBiZWdpbkluZGV4IDogYmVnaW5JbmRleCArIGNwdFZpZXdQcm92aWRlcnNDb3VudCxcbiAgICAgICAgICBlbmRJbmRleCk7XG4gICAgICBpZiAoZXhpc3RpbmdGYWN0b3J5SW5kZXggPT0gLTEpIHtcbiAgICAgICAgZGlQdWJsaWNJbkluamVjdG9yKFxuICAgICAgICAgICAgZ2V0T3JDcmVhdGVOb2RlSW5qZWN0b3JGb3JOb2RlKFxuICAgICAgICAgICAgICAgIHROb2RlIGFzIFRFbGVtZW50Tm9kZSB8IFRDb250YWluZXJOb2RlIHwgVEVsZW1lbnRDb250YWluZXJOb2RlLCBsVmlldyksXG4gICAgICAgICAgICB0VmlldywgdG9rZW4pO1xuICAgICAgICB0SW5qZWN0YWJsZXMucHVzaCh0b2tlbik7XG4gICAgICAgIHROb2RlLmRpcmVjdGl2ZVN0YXJ0Kys7XG4gICAgICAgIHROb2RlLmRpcmVjdGl2ZUVuZCsrO1xuICAgICAgICBpZiAoaXNWaWV3UHJvdmlkZXIpIHtcbiAgICAgICAgICB0Tm9kZS5wcm92aWRlckluZGV4ZXMgKz0gVE5vZGVQcm92aWRlckluZGV4ZXMuQ3B0Vmlld1Byb3ZpZGVyc0NvdW50U2hpZnRlcjtcbiAgICAgICAgfVxuICAgICAgICBsSW5qZWN0YWJsZXNCbHVlcHJpbnQucHVzaChmYWN0b3J5KTtcbiAgICAgICAgbFZpZXcucHVzaChmYWN0b3J5KTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIGxJbmplY3RhYmxlc0JsdWVwcmludFtleGlzdGluZ0ZhY3RvcnlJbmRleF0gPSBmYWN0b3J5O1xuICAgICAgICBsVmlld1tleGlzdGluZ0ZhY3RvcnlJbmRleF0gPSBmYWN0b3J5O1xuICAgICAgfVxuICAgIH0gZWxzZSB7XG4gICAgICAvLyBNdWx0aSBwcm92aWRlciBjYXNlOlxuICAgICAgLy8gV2UgY3JlYXRlIGEgbXVsdGkgZmFjdG9yeSB3aGljaCBpcyBnb2luZyB0byBhZ2dyZWdhdGUgYWxsIHRoZSB2YWx1ZXMuXG4gICAgICAvLyBTaW5jZSB0aGUgb3V0cHV0IG9mIHN1Y2ggYSBmYWN0b3J5IGRlcGVuZHMgb24gY29udGVudCBvciB2aWV3IGluamVjdGlvbixcbiAgICAgIC8vIHdlIGNyZWF0ZSB0d28gb2YgdGhlbSwgd2hpY2ggYXJlIGxpbmtlZCB0b2dldGhlci5cbiAgICAgIC8vXG4gICAgICAvLyBUaGUgZmlyc3Qgb25lIChmb3IgdmlldyBwcm92aWRlcnMpIGlzIGFsd2F5cyBpbiB0aGUgZmlyc3QgYmxvY2sgb2YgdGhlIGluamVjdGFibGVzIGFycmF5LFxuICAgICAgLy8gYW5kIHRoZSBzZWNvbmQgb25lIChmb3IgcHJvdmlkZXJzKSBpcyBhbHdheXMgaW4gdGhlIHNlY29uZCBibG9jay5cbiAgICAgIC8vIFRoaXMgaXMgaW1wb3J0YW50IGJlY2F1c2UgdmlldyBwcm92aWRlcnMgaGF2ZSBoaWdoZXIgcHJpb3JpdHkuIFdoZW4gYSBtdWx0aSB0b2tlblxuICAgICAgLy8gaXMgYmVpbmcgbG9va2VkIHVwLCB0aGUgdmlldyBwcm92aWRlcnMgc2hvdWxkIGJlIGZvdW5kIGZpcnN0LlxuICAgICAgLy8gTm90ZSB0aGF0IGl0IGlzIG5vdCBwb3NzaWJsZSB0byBoYXZlIGEgbXVsdGkgZmFjdG9yeSBpbiB0aGUgdGhpcmQgYmxvY2sgKGRpcmVjdGl2ZSBibG9jaykuXG4gICAgICAvL1xuICAgICAgLy8gVGhlIGFsZ29yaXRobSB0byBwcm9jZXNzIG11bHRpIHByb3ZpZGVycyBpcyBhcyBmb2xsb3dzOlxuICAgICAgLy8gMSkgSWYgdGhlIG11bHRpIHByb3ZpZGVyIGNvbWVzIGZyb20gdGhlIGB2aWV3UHJvdmlkZXJzYCBvZiB0aGUgY29tcG9uZW50OlxuICAgICAgLy8gICBhKSBJZiB0aGUgc3BlY2lhbCB2aWV3IHByb3ZpZGVycyBmYWN0b3J5IGRvZXNuJ3QgZXhpc3QsIGl0IGlzIGNyZWF0ZWQgYW5kIHB1c2hlZC5cbiAgICAgIC8vICAgYikgRWxzZSwgdGhlIG11bHRpIHByb3ZpZGVyIGlzIGFkZGVkIHRvIHRoZSBleGlzdGluZyBtdWx0aSBmYWN0b3J5LlxuICAgICAgLy8gMikgSWYgdGhlIG11bHRpIHByb3ZpZGVyIGNvbWVzIGZyb20gdGhlIGBwcm92aWRlcnNgIG9mIHRoZSBjb21wb25lbnQgb3Igb2YgYW5vdGhlclxuICAgICAgLy8gZGlyZWN0aXZlOlxuICAgICAgLy8gICBhKSBJZiB0aGUgbXVsdGkgZmFjdG9yeSBkb2Vzbid0IGV4aXN0LCBpdCBpcyBjcmVhdGVkIGFuZCBwcm92aWRlciBwdXNoZWQgaW50byBpdC5cbiAgICAgIC8vICAgICAgSXQgaXMgYWxzbyBsaW5rZWQgdG8gdGhlIG11bHRpIGZhY3RvcnkgZm9yIHZpZXcgcHJvdmlkZXJzLCBpZiBpdCBleGlzdHMuXG4gICAgICAvLyAgIGIpIEVsc2UsIHRoZSBtdWx0aSBwcm92aWRlciBpcyBhZGRlZCB0byB0aGUgZXhpc3RpbmcgbXVsdGkgZmFjdG9yeS5cblxuICAgICAgY29uc3QgZXhpc3RpbmdQcm92aWRlcnNGYWN0b3J5SW5kZXggPVxuICAgICAgICAgIGluZGV4T2YodG9rZW4sIHRJbmplY3RhYmxlcywgYmVnaW5JbmRleCArIGNwdFZpZXdQcm92aWRlcnNDb3VudCwgZW5kSW5kZXgpO1xuICAgICAgY29uc3QgZXhpc3RpbmdWaWV3UHJvdmlkZXJzRmFjdG9yeUluZGV4ID1cbiAgICAgICAgICBpbmRleE9mKHRva2VuLCB0SW5qZWN0YWJsZXMsIGJlZ2luSW5kZXgsIGJlZ2luSW5kZXggKyBjcHRWaWV3UHJvdmlkZXJzQ291bnQpO1xuICAgICAgY29uc3QgZG9lc1Byb3ZpZGVyc0ZhY3RvcnlFeGlzdCA9IGV4aXN0aW5nUHJvdmlkZXJzRmFjdG9yeUluZGV4ID49IDAgJiZcbiAgICAgICAgICBsSW5qZWN0YWJsZXNCbHVlcHJpbnRbZXhpc3RpbmdQcm92aWRlcnNGYWN0b3J5SW5kZXhdO1xuICAgICAgY29uc3QgZG9lc1ZpZXdQcm92aWRlcnNGYWN0b3J5RXhpc3QgPSBleGlzdGluZ1ZpZXdQcm92aWRlcnNGYWN0b3J5SW5kZXggPj0gMCAmJlxuICAgICAgICAgIGxJbmplY3RhYmxlc0JsdWVwcmludFtleGlzdGluZ1ZpZXdQcm92aWRlcnNGYWN0b3J5SW5kZXhdO1xuXG4gICAgICBpZiAoaXNWaWV3UHJvdmlkZXIgJiYgIWRvZXNWaWV3UHJvdmlkZXJzRmFjdG9yeUV4aXN0IHx8XG4gICAgICAgICAgIWlzVmlld1Byb3ZpZGVyICYmICFkb2VzUHJvdmlkZXJzRmFjdG9yeUV4aXN0KSB7XG4gICAgICAgIC8vIENhc2VzIDEuYSBhbmQgMi5hXG4gICAgICAgIGRpUHVibGljSW5JbmplY3RvcihcbiAgICAgICAgICAgIGdldE9yQ3JlYXRlTm9kZUluamVjdG9yRm9yTm9kZShcbiAgICAgICAgICAgICAgICB0Tm9kZSBhcyBURWxlbWVudE5vZGUgfCBUQ29udGFpbmVyTm9kZSB8IFRFbGVtZW50Q29udGFpbmVyTm9kZSwgbFZpZXcpLFxuICAgICAgICAgICAgdFZpZXcsIHRva2VuKTtcbiAgICAgICAgY29uc3QgZmFjdG9yeSA9IG11bHRpRmFjdG9yeShcbiAgICAgICAgICAgIGlzVmlld1Byb3ZpZGVyID8gbXVsdGlWaWV3UHJvdmlkZXJzRmFjdG9yeVJlc29sdmVyIDogbXVsdGlQcm92aWRlcnNGYWN0b3J5UmVzb2x2ZXIsXG4gICAgICAgICAgICBsSW5qZWN0YWJsZXNCbHVlcHJpbnQubGVuZ3RoLCBpc1ZpZXdQcm92aWRlciwgaXNDb21wb25lbnQsIHByb3ZpZGVyRmFjdG9yeSk7XG4gICAgICAgIGlmICghaXNWaWV3UHJvdmlkZXIgJiYgZG9lc1ZpZXdQcm92aWRlcnNGYWN0b3J5RXhpc3QpIHtcbiAgICAgICAgICBsSW5qZWN0YWJsZXNCbHVlcHJpbnRbZXhpc3RpbmdWaWV3UHJvdmlkZXJzRmFjdG9yeUluZGV4XS5wcm92aWRlckZhY3RvcnkgPSBmYWN0b3J5O1xuICAgICAgICB9XG4gICAgICAgIHRJbmplY3RhYmxlcy5wdXNoKHRva2VuKTtcbiAgICAgICAgdE5vZGUuZGlyZWN0aXZlU3RhcnQrKztcbiAgICAgICAgdE5vZGUuZGlyZWN0aXZlRW5kKys7XG4gICAgICAgIGlmIChpc1ZpZXdQcm92aWRlcikge1xuICAgICAgICAgIHROb2RlLnByb3ZpZGVySW5kZXhlcyArPSBUTm9kZVByb3ZpZGVySW5kZXhlcy5DcHRWaWV3UHJvdmlkZXJzQ291bnRTaGlmdGVyO1xuICAgICAgICB9XG4gICAgICAgIGxJbmplY3RhYmxlc0JsdWVwcmludC5wdXNoKGZhY3RvcnkpO1xuICAgICAgICBsVmlldy5wdXNoKGZhY3RvcnkpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgLy8gQ2FzZXMgMS5iIGFuZCAyLmJcbiAgICAgICAgbXVsdGlGYWN0b3J5QWRkKFxuICAgICAgICAgICAgbEluamVjdGFibGVzQmx1ZXByaW50ICFbaXNWaWV3UHJvdmlkZXIgPyBleGlzdGluZ1ZpZXdQcm92aWRlcnNGYWN0b3J5SW5kZXggOiBleGlzdGluZ1Byb3ZpZGVyc0ZhY3RvcnlJbmRleF0sXG4gICAgICAgICAgICBwcm92aWRlckZhY3RvcnksICFpc1ZpZXdQcm92aWRlciAmJiBpc0NvbXBvbmVudCk7XG4gICAgICB9XG4gICAgICBpZiAoIWlzVmlld1Byb3ZpZGVyICYmIGlzQ29tcG9uZW50ICYmIGRvZXNWaWV3UHJvdmlkZXJzRmFjdG9yeUV4aXN0KSB7XG4gICAgICAgIGxJbmplY3RhYmxlc0JsdWVwcmludFtleGlzdGluZ1ZpZXdQcm92aWRlcnNGYWN0b3J5SW5kZXhdLmNvbXBvbmVudFByb3ZpZGVycyAhKys7XG4gICAgICB9XG4gICAgfVxuICB9XG59XG5cbi8qKlxuICogQWRkIGEgZmFjdG9yeSBpbiBhIG11bHRpIGZhY3RvcnkuXG4gKi9cbmZ1bmN0aW9uIG11bHRpRmFjdG9yeUFkZChcbiAgICBtdWx0aUZhY3Rvcnk6IE5vZGVJbmplY3RvckZhY3RvcnksIGZhY3Rvcnk6ICgpID0+IGFueSwgaXNDb21wb25lbnRQcm92aWRlcjogYm9vbGVhbik6IHZvaWQge1xuICBtdWx0aUZhY3RvcnkubXVsdGkgIS5wdXNoKGZhY3RvcnkpO1xuICBpZiAoaXNDb21wb25lbnRQcm92aWRlcikge1xuICAgIG11bHRpRmFjdG9yeS5jb21wb25lbnRQcm92aWRlcnMgISsrO1xuICB9XG59XG5cbi8qKlxuICogUmV0dXJucyB0aGUgaW5kZXggb2YgaXRlbSBpbiB0aGUgYXJyYXksIGJ1dCBvbmx5IGluIHRoZSBiZWdpbiB0byBlbmQgcmFuZ2UuXG4gKi9cbmZ1bmN0aW9uIGluZGV4T2YoaXRlbTogYW55LCBhcnI6IGFueVtdLCBiZWdpbjogbnVtYmVyLCBlbmQ6IG51bWJlcikge1xuICBmb3IgKGxldCBpID0gYmVnaW47IGkgPCBlbmQ7IGkrKykge1xuICAgIGlmIChhcnJbaV0gPT09IGl0ZW0pIHJldHVybiBpO1xuICB9XG4gIHJldHVybiAtMTtcbn1cblxuLyoqXG4gKiBVc2UgdGhpcyB3aXRoIGBtdWx0aWAgYHByb3ZpZGVyc2AuXG4gKi9cbmZ1bmN0aW9uIG11bHRpUHJvdmlkZXJzRmFjdG9yeVJlc29sdmVyKFxuICAgIHRoaXM6IE5vZGVJbmplY3RvckZhY3RvcnksIF86IHVuZGVmaW5lZCwgdERhdGE6IFREYXRhLCBsRGF0YTogTFZpZXcsXG4gICAgdE5vZGU6IFREaXJlY3RpdmVIb3N0Tm9kZSk6IGFueVtdIHtcbiAgcmV0dXJuIG11bHRpUmVzb2x2ZSh0aGlzLm11bHRpICEsIFtdKTtcbn1cblxuLyoqXG4gKiBVc2UgdGhpcyB3aXRoIGBtdWx0aWAgYHZpZXdQcm92aWRlcnNgLlxuICpcbiAqIFRoaXMgZmFjdG9yeSBrbm93cyBob3cgdG8gY29uY2F0ZW5hdGUgaXRzZWxmIHdpdGggdGhlIGV4aXN0aW5nIGBtdWx0aWAgYHByb3ZpZGVyc2AuXG4gKi9cbmZ1bmN0aW9uIG11bHRpVmlld1Byb3ZpZGVyc0ZhY3RvcnlSZXNvbHZlcihcbiAgICB0aGlzOiBOb2RlSW5qZWN0b3JGYWN0b3J5LCBfOiB1bmRlZmluZWQsIHREYXRhOiBURGF0YSwgbFZpZXc6IExWaWV3LFxuICAgIHROb2RlOiBURGlyZWN0aXZlSG9zdE5vZGUpOiBhbnlbXSB7XG4gIGNvbnN0IGZhY3RvcmllcyA9IHRoaXMubXVsdGkgITtcbiAgbGV0IHJlc3VsdDogYW55W107XG4gIGlmICh0aGlzLnByb3ZpZGVyRmFjdG9yeSkge1xuICAgIGNvbnN0IGNvbXBvbmVudENvdW50ID0gdGhpcy5wcm92aWRlckZhY3RvcnkuY29tcG9uZW50UHJvdmlkZXJzICE7XG4gICAgY29uc3QgbXVsdGlQcm92aWRlcnMgPVxuICAgICAgICBnZXROb2RlSW5qZWN0YWJsZShsVmlldywgbFZpZXdbVFZJRVddLCB0aGlzLnByb3ZpZGVyRmFjdG9yeSAhLmluZGV4ICEsIHROb2RlKTtcbiAgICAvLyBDb3B5IHRoZSBzZWN0aW9uIG9mIHRoZSBhcnJheSB3aGljaCBjb250YWlucyBgbXVsdGlgIGBwcm92aWRlcnNgIGZyb20gdGhlIGNvbXBvbmVudFxuICAgIHJlc3VsdCA9IG11bHRpUHJvdmlkZXJzLnNsaWNlKDAsIGNvbXBvbmVudENvdW50KTtcbiAgICAvLyBJbnNlcnQgdGhlIGB2aWV3UHJvdmlkZXJgIGluc3RhbmNlcy5cbiAgICBtdWx0aVJlc29sdmUoZmFjdG9yaWVzLCByZXN1bHQpO1xuICAgIC8vIENvcHkgdGhlIHNlY3Rpb24gb2YgdGhlIGFycmF5IHdoaWNoIGNvbnRhaW5zIGBtdWx0aWAgYHByb3ZpZGVyc2AgZnJvbSBvdGhlciBkaXJlY3RpdmVzXG4gICAgZm9yIChsZXQgaSA9IGNvbXBvbmVudENvdW50OyBpIDwgbXVsdGlQcm92aWRlcnMubGVuZ3RoOyBpKyspIHtcbiAgICAgIHJlc3VsdC5wdXNoKG11bHRpUHJvdmlkZXJzW2ldKTtcbiAgICB9XG4gIH0gZWxzZSB7XG4gICAgcmVzdWx0ID0gW107XG4gICAgLy8gSW5zZXJ0IHRoZSBgdmlld1Byb3ZpZGVyYCBpbnN0YW5jZXMuXG4gICAgbXVsdGlSZXNvbHZlKGZhY3RvcmllcywgcmVzdWx0KTtcbiAgfVxuICByZXR1cm4gcmVzdWx0O1xufVxuXG4vKipcbiAqIE1hcHMgYW4gYXJyYXkgb2YgZmFjdG9yaWVzIGludG8gYW4gYXJyYXkgb2YgdmFsdWVzLlxuICovXG5mdW5jdGlvbiBtdWx0aVJlc29sdmUoZmFjdG9yaWVzOiBBcnJheTwoKSA9PiBhbnk+LCByZXN1bHQ6IGFueVtdKTogYW55W10ge1xuICBmb3IgKGxldCBpID0gMDsgaSA8IGZhY3Rvcmllcy5sZW5ndGg7IGkrKykge1xuICAgIGNvbnN0IGZhY3RvcnkgPSBmYWN0b3JpZXNbaV0gIWFzKCkgPT4gbnVsbDtcbiAgICByZXN1bHQucHVzaChmYWN0b3J5KCkpO1xuICB9XG4gIHJldHVybiByZXN1bHQ7XG59XG5cbi8qKlxuICogQ3JlYXRlcyBhIG11bHRpIGZhY3RvcnkuXG4gKi9cbmZ1bmN0aW9uIG11bHRpRmFjdG9yeShcbiAgICBmYWN0b3J5Rm46IChcbiAgICAgICAgdGhpczogTm9kZUluamVjdG9yRmFjdG9yeSwgXzogdW5kZWZpbmVkLCB0RGF0YTogVERhdGEsIGxEYXRhOiBMVmlldyxcbiAgICAgICAgdE5vZGU6IFREaXJlY3RpdmVIb3N0Tm9kZSkgPT4gYW55LFxuICAgIGluZGV4OiBudW1iZXIsIGlzVmlld1Byb3ZpZGVyOiBib29sZWFuLCBpc0NvbXBvbmVudDogYm9vbGVhbixcbiAgICBmOiAoKSA9PiBhbnkpOiBOb2RlSW5qZWN0b3JGYWN0b3J5IHtcbiAgY29uc3QgZmFjdG9yeSA9IG5ldyBOb2RlSW5qZWN0b3JGYWN0b3J5KGZhY3RvcnlGbiwgaXNWaWV3UHJvdmlkZXIsIMm1ybVkaXJlY3RpdmVJbmplY3QpO1xuICBmYWN0b3J5Lm11bHRpID0gW107XG4gIGZhY3RvcnkuaW5kZXggPSBpbmRleDtcbiAgZmFjdG9yeS5jb21wb25lbnRQcm92aWRlcnMgPSAwO1xuICBtdWx0aUZhY3RvcnlBZGQoZmFjdG9yeSwgZiwgaXNDb21wb25lbnQgJiYgIWlzVmlld1Byb3ZpZGVyKTtcbiAgcmV0dXJuIGZhY3Rvcnk7XG59XG4iXX0=