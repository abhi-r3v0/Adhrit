/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/interfaces/injector.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/** @type {?} */
export const TNODE = 8;
/** @type {?} */
export const PARENT_INJECTOR = 8;
/** @type {?} */
export const INJECTOR_BLOOM_PARENT_SIZE = 9;
/**
 * Represents a relative location of parent injector.
 *
 * The interfaces encodes number of parents `LView`s to traverse and index in the `LView`
 * pointing to the parent injector.
 * @record
 */
export function RelativeInjectorLocation() { }
if (false) {
    /** @type {?} */
    RelativeInjectorLocation.prototype.__brand__;
}
/** @enum {number} */
const RelativeInjectorLocationFlags = {
    InjectorIndexMask: 32767,
    ViewOffsetShift: 16,
    NO_PARENT: -1,
};
export { RelativeInjectorLocationFlags };
/** @type {?} */
export const NO_PARENT_INJECTOR = (/** @type {?} */ (-1));
/**
 * Each injector is saved in 9 contiguous slots in `LView` and 9 contiguous slots in
 * `TView.data`. This allows us to store information about the current node's tokens (which
 * can be shared in `TView`) as well as the tokens of its ancestor nodes (which cannot be
 * shared, so they live in `LView`).
 *
 * Each of these slots (aside from the last slot) contains a bloom filter. This bloom filter
 * determines whether a directive is available on the associated node or not. This prevents us
 * from searching the directives array at this level unless it's probable the directive is in it.
 *
 * See: https://en.wikipedia.org/wiki/Bloom_filter for more about bloom filters.
 *
 * Because all injectors have been flattened into `LView` and `TViewData`, they cannot typed
 * using interfaces as they were previously. The start index of each `LInjector` and `TInjector`
 * will differ based on where it is flattened into the main array, so it's not possible to know
 * the indices ahead of time and save their types here. The interfaces are still included here
 * for documentation purposes.
 *
 * export interface LInjector extends Array<any> {
 *
 *    // Cumulative bloom for directive IDs 0-31  (IDs are % BLOOM_SIZE)
 *    [0]: number;
 *
 *    // Cumulative bloom for directive IDs 32-63
 *    [1]: number;
 *
 *    // Cumulative bloom for directive IDs 64-95
 *    [2]: number;
 *
 *    // Cumulative bloom for directive IDs 96-127
 *    [3]: number;
 *
 *    // Cumulative bloom for directive IDs 128-159
 *    [4]: number;
 *
 *    // Cumulative bloom for directive IDs 160 - 191
 *    [5]: number;
 *
 *    // Cumulative bloom for directive IDs 192 - 223
 *    [6]: number;
 *
 *    // Cumulative bloom for directive IDs 224 - 255
 *    [7]: number;
 *
 *    // We need to store a reference to the injector's parent so DI can keep looking up
 *    // the injector tree until it finds the dependency it's looking for.
 *    [PARENT_INJECTOR]: number;
 * }
 *
 * export interface TInjector extends Array<any> {
 *
 *    // Shared node bloom for directive IDs 0-31  (IDs are % BLOOM_SIZE)
 *    [0]: number;
 *
 *    // Shared node bloom for directive IDs 32-63
 *    [1]: number;
 *
 *    // Shared node bloom for directive IDs 64-95
 *    [2]: number;
 *
 *    // Shared node bloom for directive IDs 96-127
 *    [3]: number;
 *
 *    // Shared node bloom for directive IDs 128-159
 *    [4]: number;
 *
 *    // Shared node bloom for directive IDs 160 - 191
 *    [5]: number;
 *
 *    // Shared node bloom for directive IDs 192 - 223
 *    [6]: number;
 *
 *    // Shared node bloom for directive IDs 224 - 255
 *    [7]: number;
 *
 *    // Necessary to find directive indices for a particular node.
 *    [TNODE]: TElementNode|TElementContainerNode|TContainerNode;
 *  }
 */
/**
 * Factory for creating instances of injectors in the NodeInjector.
 *
 * This factory is complicated by the fact that it can resolve `multi` factories as well.
 *
 * NOTE: Some of the fields are optional which means that this class has two hidden classes.
 * - One without `multi` support (most common)
 * - One with `multi` values, (rare).
 *
 * Since VMs can cache up to 4 inline hidden classes this is OK.
 *
 * - Single factory: Only `resolving` and `factory` is defined.
 * - `providers` factory: `componentProviders` is a number and `index = -1`.
 * - `viewProviders` factory: `componentProviders` is a number and `index` points to `providers`.
 */
export class NodeInjectorFactory {
    /**
     * @param {?} factory
     * @param {?} isViewProvider
     * @param {?} injectImplementation
     */
    constructor(factory, 
    /**
     * Set to `true` if the token is declared in `viewProviders` (or if it is component).
     */
    isViewProvider, injectImplementation) {
        this.factory = factory;
        /**
         * Marker set to true during factory invocation to see if we get into recursive loop.
         * Recursive loop causes an error to be displayed.
         */
        this.resolving = false;
        this.canSeeViewProviders = isViewProvider;
        this.injectImpl = injectImplementation;
    }
}
if (false) {
    /**
     * The inject implementation to be activated when using the factory.
     * @type {?}
     */
    NodeInjectorFactory.prototype.injectImpl;
    /**
     * Marker set to true during factory invocation to see if we get into recursive loop.
     * Recursive loop causes an error to be displayed.
     * @type {?}
     */
    NodeInjectorFactory.prototype.resolving;
    /**
     * Marks that the token can see other Tokens declared in `viewProviders` on the same node.
     * @type {?}
     */
    NodeInjectorFactory.prototype.canSeeViewProviders;
    /**
     * An array of factories to use in case of `multi` provider.
     * @type {?}
     */
    NodeInjectorFactory.prototype.multi;
    /**
     * Number of `multi`-providers which belong to the component.
     *
     * This is needed because when multiple components and directives declare the `multi` provider
     * they have to be concatenated in the correct order.
     *
     * Example:
     *
     * If we have a component and directive active an a single element as declared here
     * ```
     * component:
     *   provides: [ {provide: String, useValue: 'component', multi: true} ],
     *   viewProvides: [ {provide: String, useValue: 'componentView', multi: true} ],
     *
     * directive:
     *   provides: [ {provide: String, useValue: 'directive', multi: true} ],
     * ```
     *
     * Then the expected results are:
     *
     * ```
     * providers: ['component', 'directive']
     * viewProviders: ['component', 'componentView', 'directive']
     * ```
     *
     * The way to think about it is that the `viewProviders` have been inserted after the component
     * but before the directives, which is why we need to know how many `multi`s have been declared by
     * the component.
     * @type {?}
     */
    NodeInjectorFactory.prototype.componentProviders;
    /**
     * Current index of the Factory in the `data`. Needed for `viewProviders` and `providers` merging.
     * See `providerFactory`.
     * @type {?}
     */
    NodeInjectorFactory.prototype.index;
    /**
     * Because the same `multi` provider can be declared in `provides` and `viewProvides` it is
     * possible for `viewProvides` to shadow the `provides`. For this reason we store the
     * `provideFactory` of the `providers` so that `providers` can be extended with `viewProviders`.
     *
     * Example:
     *
     * Given:
     * ```
     * provides: [ {provide: String, useValue: 'all', multi: true} ],
     * viewProvides: [ {provide: String, useValue: 'viewOnly', multi: true} ],
     * ```
     *
     * We have to return `['all']` in case of content injection, but `['all', 'viewOnly']` in case
     * of view injection. We further have to make sure that the shared instances (in our case
     * `all`) are the exact same instance in both the content as well as the view injection. (We
     * have to make sure that we don't double instantiate.) For this reason the `viewProvides`
     * `Factory` has a pointer to the shadowed `provides` factory so that it can instantiate the
     * `providers` (`['all']`) and then extend it with `viewProviders` (`['all'] + ['viewOnly'] =
     * ['all', 'viewOnly']`).
     * @type {?}
     */
    NodeInjectorFactory.prototype.providerFactory;
    /**
     * Factory to invoke in order to create a new instance.
     * @type {?}
     */
    NodeInjectorFactory.prototype.factory;
}
/**
 * @param {?} obj
 * @return {?}
 */
export function isFactory(obj) {
    return obj instanceof NodeInjectorFactory;
}
// Note: This hack is necessary so we don't erroneously get a circular dependency
// failure based on types.
/** @type {?} */
export const unusedValueExportToPlacateAjd = 1;
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5qZWN0b3IuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL2ludGVyZmFjZXMvaW5qZWN0b3IudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7OztBQWVBLE1BQU0sT0FBTyxLQUFLLEdBQUcsQ0FBQzs7QUFDdEIsTUFBTSxPQUFPLGVBQWUsR0FBRyxDQUFDOztBQUNoQyxNQUFNLE9BQU8sMEJBQTBCLEdBQUcsQ0FBQzs7Ozs7Ozs7QUFRM0MsOENBQXlGOzs7SUFBN0MsNkNBQTJDOzs7QUFFdkYsTUFBa0IsNkJBQTZCO0lBQzdDLGlCQUFpQixPQUFvQjtJQUNyQyxlQUFlLElBQUs7SUFDcEIsU0FBUyxJQUFLO0VBQ2Y7OztBQUVELE1BQU0sT0FBTyxrQkFBa0IsR0FBNkIsbUJBQUEsQ0FBQyxDQUFDLEVBQU87Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBaUdyRSxNQUFNLE9BQU8sbUJBQW1COzs7Ozs7SUFtRjlCLFlBSVcsT0FlK0I7SUFDdEM7O09BRUc7SUFDSCxjQUF1QixFQUFFLG9CQUN3QztRQXBCMUQsWUFBTyxHQUFQLE9BQU8sQ0Fld0I7Ozs7O1FBNUYxQyxjQUFTLEdBQUcsS0FBSyxDQUFDO1FBa0doQixJQUFJLENBQUMsbUJBQW1CLEdBQUcsY0FBYyxDQUFDO1FBQzFDLElBQUksQ0FBQyxVQUFVLEdBQUcsb0JBQW9CLENBQUM7SUFDekMsQ0FBQztDQUNGOzs7Ozs7SUEzR0MseUNBQW1GOzs7Ozs7SUFNbkYsd0NBQWtCOzs7OztJQUtsQixrREFBNkI7Ozs7O0lBSzdCLG9DQUF5Qjs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztJQStCekIsaURBQTRCOzs7Ozs7SUFNNUIsb0NBQWU7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0lBdUJmLDhDQUEyQzs7Ozs7SUFPdkMsc0NBZXNDOzs7Ozs7QUFXNUMsTUFBTSxVQUFVLFNBQVMsQ0FBQyxHQUFRO0lBQ2hDLE9BQU8sR0FBRyxZQUFZLG1CQUFtQixDQUFDO0FBQzVDLENBQUM7Ozs7QUFJRCxNQUFNLE9BQU8sNkJBQTZCLEdBQUcsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtJbmplY3Rpb25Ub2tlbn0gZnJvbSAnLi4vLi4vZGkvaW5qZWN0aW9uX3Rva2VuJztcbmltcG9ydCB7SW5qZWN0RmxhZ3N9IGZyb20gJy4uLy4uL2RpL2ludGVyZmFjZS9pbmplY3Rvcic7XG5pbXBvcnQge1R5cGV9IGZyb20gJy4uLy4uL2ludGVyZmFjZS90eXBlJztcblxuaW1wb3J0IHtURGlyZWN0aXZlSG9zdE5vZGV9IGZyb20gJy4vbm9kZSc7XG5pbXBvcnQge0xWaWV3LCBURGF0YX0gZnJvbSAnLi92aWV3JztcblxuZXhwb3J0IGNvbnN0IFROT0RFID0gODtcbmV4cG9ydCBjb25zdCBQQVJFTlRfSU5KRUNUT1IgPSA4O1xuZXhwb3J0IGNvbnN0IElOSkVDVE9SX0JMT09NX1BBUkVOVF9TSVpFID0gOTtcblxuLyoqXG4gKiBSZXByZXNlbnRzIGEgcmVsYXRpdmUgbG9jYXRpb24gb2YgcGFyZW50IGluamVjdG9yLlxuICpcbiAqIFRoZSBpbnRlcmZhY2VzIGVuY29kZXMgbnVtYmVyIG9mIHBhcmVudHMgYExWaWV3YHMgdG8gdHJhdmVyc2UgYW5kIGluZGV4IGluIHRoZSBgTFZpZXdgXG4gKiBwb2ludGluZyB0byB0aGUgcGFyZW50IGluamVjdG9yLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIFJlbGF0aXZlSW5qZWN0b3JMb2NhdGlvbiB7IF9fYnJhbmRfXzogJ1JlbGF0aXZlSW5qZWN0b3JMb2NhdGlvbkZsYWdzJzsgfVxuXG5leHBvcnQgY29uc3QgZW51bSBSZWxhdGl2ZUluamVjdG9yTG9jYXRpb25GbGFncyB7XG4gIEluamVjdG9ySW5kZXhNYXNrID0gMGIxMTExMTExMTExMTExMTEsXG4gIFZpZXdPZmZzZXRTaGlmdCA9IDE2LFxuICBOT19QQVJFTlQgPSAtMSxcbn1cblxuZXhwb3J0IGNvbnN0IE5PX1BBUkVOVF9JTkpFQ1RPUjogUmVsYXRpdmVJbmplY3RvckxvY2F0aW9uID0gLTEgYXMgYW55O1xuXG4vKipcbiAqIEVhY2ggaW5qZWN0b3IgaXMgc2F2ZWQgaW4gOSBjb250aWd1b3VzIHNsb3RzIGluIGBMVmlld2AgYW5kIDkgY29udGlndW91cyBzbG90cyBpblxuICogYFRWaWV3LmRhdGFgLiBUaGlzIGFsbG93cyB1cyB0byBzdG9yZSBpbmZvcm1hdGlvbiBhYm91dCB0aGUgY3VycmVudCBub2RlJ3MgdG9rZW5zICh3aGljaFxuICogY2FuIGJlIHNoYXJlZCBpbiBgVFZpZXdgKSBhcyB3ZWxsIGFzIHRoZSB0b2tlbnMgb2YgaXRzIGFuY2VzdG9yIG5vZGVzICh3aGljaCBjYW5ub3QgYmVcbiAqIHNoYXJlZCwgc28gdGhleSBsaXZlIGluIGBMVmlld2ApLlxuICpcbiAqIEVhY2ggb2YgdGhlc2Ugc2xvdHMgKGFzaWRlIGZyb20gdGhlIGxhc3Qgc2xvdCkgY29udGFpbnMgYSBibG9vbSBmaWx0ZXIuIFRoaXMgYmxvb20gZmlsdGVyXG4gKiBkZXRlcm1pbmVzIHdoZXRoZXIgYSBkaXJlY3RpdmUgaXMgYXZhaWxhYmxlIG9uIHRoZSBhc3NvY2lhdGVkIG5vZGUgb3Igbm90LiBUaGlzIHByZXZlbnRzIHVzXG4gKiBmcm9tIHNlYXJjaGluZyB0aGUgZGlyZWN0aXZlcyBhcnJheSBhdCB0aGlzIGxldmVsIHVubGVzcyBpdCdzIHByb2JhYmxlIHRoZSBkaXJlY3RpdmUgaXMgaW4gaXQuXG4gKlxuICogU2VlOiBodHRwczovL2VuLndpa2lwZWRpYS5vcmcvd2lraS9CbG9vbV9maWx0ZXIgZm9yIG1vcmUgYWJvdXQgYmxvb20gZmlsdGVycy5cbiAqXG4gKiBCZWNhdXNlIGFsbCBpbmplY3RvcnMgaGF2ZSBiZWVuIGZsYXR0ZW5lZCBpbnRvIGBMVmlld2AgYW5kIGBUVmlld0RhdGFgLCB0aGV5IGNhbm5vdCB0eXBlZFxuICogdXNpbmcgaW50ZXJmYWNlcyBhcyB0aGV5IHdlcmUgcHJldmlvdXNseS4gVGhlIHN0YXJ0IGluZGV4IG9mIGVhY2ggYExJbmplY3RvcmAgYW5kIGBUSW5qZWN0b3JgXG4gKiB3aWxsIGRpZmZlciBiYXNlZCBvbiB3aGVyZSBpdCBpcyBmbGF0dGVuZWQgaW50byB0aGUgbWFpbiBhcnJheSwgc28gaXQncyBub3QgcG9zc2libGUgdG8ga25vd1xuICogdGhlIGluZGljZXMgYWhlYWQgb2YgdGltZSBhbmQgc2F2ZSB0aGVpciB0eXBlcyBoZXJlLiBUaGUgaW50ZXJmYWNlcyBhcmUgc3RpbGwgaW5jbHVkZWQgaGVyZVxuICogZm9yIGRvY3VtZW50YXRpb24gcHVycG9zZXMuXG4gKlxuICogZXhwb3J0IGludGVyZmFjZSBMSW5qZWN0b3IgZXh0ZW5kcyBBcnJheTxhbnk+IHtcbiAqXG4gKiAgICAvLyBDdW11bGF0aXZlIGJsb29tIGZvciBkaXJlY3RpdmUgSURzIDAtMzEgIChJRHMgYXJlICUgQkxPT01fU0laRSlcbiAqICAgIFswXTogbnVtYmVyO1xuICpcbiAqICAgIC8vIEN1bXVsYXRpdmUgYmxvb20gZm9yIGRpcmVjdGl2ZSBJRHMgMzItNjNcbiAqICAgIFsxXTogbnVtYmVyO1xuICpcbiAqICAgIC8vIEN1bXVsYXRpdmUgYmxvb20gZm9yIGRpcmVjdGl2ZSBJRHMgNjQtOTVcbiAqICAgIFsyXTogbnVtYmVyO1xuICpcbiAqICAgIC8vIEN1bXVsYXRpdmUgYmxvb20gZm9yIGRpcmVjdGl2ZSBJRHMgOTYtMTI3XG4gKiAgICBbM106IG51bWJlcjtcbiAqXG4gKiAgICAvLyBDdW11bGF0aXZlIGJsb29tIGZvciBkaXJlY3RpdmUgSURzIDEyOC0xNTlcbiAqICAgIFs0XTogbnVtYmVyO1xuICpcbiAqICAgIC8vIEN1bXVsYXRpdmUgYmxvb20gZm9yIGRpcmVjdGl2ZSBJRHMgMTYwIC0gMTkxXG4gKiAgICBbNV06IG51bWJlcjtcbiAqXG4gKiAgICAvLyBDdW11bGF0aXZlIGJsb29tIGZvciBkaXJlY3RpdmUgSURzIDE5MiAtIDIyM1xuICogICAgWzZdOiBudW1iZXI7XG4gKlxuICogICAgLy8gQ3VtdWxhdGl2ZSBibG9vbSBmb3IgZGlyZWN0aXZlIElEcyAyMjQgLSAyNTVcbiAqICAgIFs3XTogbnVtYmVyO1xuICpcbiAqICAgIC8vIFdlIG5lZWQgdG8gc3RvcmUgYSByZWZlcmVuY2UgdG8gdGhlIGluamVjdG9yJ3MgcGFyZW50IHNvIERJIGNhbiBrZWVwIGxvb2tpbmcgdXBcbiAqICAgIC8vIHRoZSBpbmplY3RvciB0cmVlIHVudGlsIGl0IGZpbmRzIHRoZSBkZXBlbmRlbmN5IGl0J3MgbG9va2luZyBmb3IuXG4gKiAgICBbUEFSRU5UX0lOSkVDVE9SXTogbnVtYmVyO1xuICogfVxuICpcbiAqIGV4cG9ydCBpbnRlcmZhY2UgVEluamVjdG9yIGV4dGVuZHMgQXJyYXk8YW55PiB7XG4gKlxuICogICAgLy8gU2hhcmVkIG5vZGUgYmxvb20gZm9yIGRpcmVjdGl2ZSBJRHMgMC0zMSAgKElEcyBhcmUgJSBCTE9PTV9TSVpFKVxuICogICAgWzBdOiBudW1iZXI7XG4gKlxuICogICAgLy8gU2hhcmVkIG5vZGUgYmxvb20gZm9yIGRpcmVjdGl2ZSBJRHMgMzItNjNcbiAqICAgIFsxXTogbnVtYmVyO1xuICpcbiAqICAgIC8vIFNoYXJlZCBub2RlIGJsb29tIGZvciBkaXJlY3RpdmUgSURzIDY0LTk1XG4gKiAgICBbMl06IG51bWJlcjtcbiAqXG4gKiAgICAvLyBTaGFyZWQgbm9kZSBibG9vbSBmb3IgZGlyZWN0aXZlIElEcyA5Ni0xMjdcbiAqICAgIFszXTogbnVtYmVyO1xuICpcbiAqICAgIC8vIFNoYXJlZCBub2RlIGJsb29tIGZvciBkaXJlY3RpdmUgSURzIDEyOC0xNTlcbiAqICAgIFs0XTogbnVtYmVyO1xuICpcbiAqICAgIC8vIFNoYXJlZCBub2RlIGJsb29tIGZvciBkaXJlY3RpdmUgSURzIDE2MCAtIDE5MVxuICogICAgWzVdOiBudW1iZXI7XG4gKlxuICogICAgLy8gU2hhcmVkIG5vZGUgYmxvb20gZm9yIGRpcmVjdGl2ZSBJRHMgMTkyIC0gMjIzXG4gKiAgICBbNl06IG51bWJlcjtcbiAqXG4gKiAgICAvLyBTaGFyZWQgbm9kZSBibG9vbSBmb3IgZGlyZWN0aXZlIElEcyAyMjQgLSAyNTVcbiAqICAgIFs3XTogbnVtYmVyO1xuICpcbiAqICAgIC8vIE5lY2Vzc2FyeSB0byBmaW5kIGRpcmVjdGl2ZSBpbmRpY2VzIGZvciBhIHBhcnRpY3VsYXIgbm9kZS5cbiAqICAgIFtUTk9ERV06IFRFbGVtZW50Tm9kZXxURWxlbWVudENvbnRhaW5lck5vZGV8VENvbnRhaW5lck5vZGU7XG4gKiAgfVxuICovXG5cbi8qKlxuKiBGYWN0b3J5IGZvciBjcmVhdGluZyBpbnN0YW5jZXMgb2YgaW5qZWN0b3JzIGluIHRoZSBOb2RlSW5qZWN0b3IuXG4qXG4qIFRoaXMgZmFjdG9yeSBpcyBjb21wbGljYXRlZCBieSB0aGUgZmFjdCB0aGF0IGl0IGNhbiByZXNvbHZlIGBtdWx0aWAgZmFjdG9yaWVzIGFzIHdlbGwuXG4qXG4qIE5PVEU6IFNvbWUgb2YgdGhlIGZpZWxkcyBhcmUgb3B0aW9uYWwgd2hpY2ggbWVhbnMgdGhhdCB0aGlzIGNsYXNzIGhhcyB0d28gaGlkZGVuIGNsYXNzZXMuXG4qIC0gT25lIHdpdGhvdXQgYG11bHRpYCBzdXBwb3J0IChtb3N0IGNvbW1vbilcbiogLSBPbmUgd2l0aCBgbXVsdGlgIHZhbHVlcywgKHJhcmUpLlxuKlxuKiBTaW5jZSBWTXMgY2FuIGNhY2hlIHVwIHRvIDQgaW5saW5lIGhpZGRlbiBjbGFzc2VzIHRoaXMgaXMgT0suXG4qXG4qIC0gU2luZ2xlIGZhY3Rvcnk6IE9ubHkgYHJlc29sdmluZ2AgYW5kIGBmYWN0b3J5YCBpcyBkZWZpbmVkLlxuKiAtIGBwcm92aWRlcnNgIGZhY3Rvcnk6IGBjb21wb25lbnRQcm92aWRlcnNgIGlzIGEgbnVtYmVyIGFuZCBgaW5kZXggPSAtMWAuXG4qIC0gYHZpZXdQcm92aWRlcnNgIGZhY3Rvcnk6IGBjb21wb25lbnRQcm92aWRlcnNgIGlzIGEgbnVtYmVyIGFuZCBgaW5kZXhgIHBvaW50cyB0byBgcHJvdmlkZXJzYC5cbiovXG5leHBvcnQgY2xhc3MgTm9kZUluamVjdG9yRmFjdG9yeSB7XG4gIC8qKlxuICAgKiBUaGUgaW5qZWN0IGltcGxlbWVudGF0aW9uIHRvIGJlIGFjdGl2YXRlZCB3aGVuIHVzaW5nIHRoZSBmYWN0b3J5LlxuICAgKi9cbiAgaW5qZWN0SW1wbDogbnVsbHwoPFQ+KHRva2VuOiBUeXBlPFQ+fEluamVjdGlvblRva2VuPFQ+LCBmbGFncz86IEluamVjdEZsYWdzKSA9PiBUKTtcblxuICAvKipcbiAgICogTWFya2VyIHNldCB0byB0cnVlIGR1cmluZyBmYWN0b3J5IGludm9jYXRpb24gdG8gc2VlIGlmIHdlIGdldCBpbnRvIHJlY3Vyc2l2ZSBsb29wLlxuICAgKiBSZWN1cnNpdmUgbG9vcCBjYXVzZXMgYW4gZXJyb3IgdG8gYmUgZGlzcGxheWVkLlxuICAgKi9cbiAgcmVzb2x2aW5nID0gZmFsc2U7XG5cbiAgLyoqXG4gICAqIE1hcmtzIHRoYXQgdGhlIHRva2VuIGNhbiBzZWUgb3RoZXIgVG9rZW5zIGRlY2xhcmVkIGluIGB2aWV3UHJvdmlkZXJzYCBvbiB0aGUgc2FtZSBub2RlLlxuICAgKi9cbiAgY2FuU2VlVmlld1Byb3ZpZGVyczogYm9vbGVhbjtcblxuICAvKipcbiAgICogQW4gYXJyYXkgb2YgZmFjdG9yaWVzIHRvIHVzZSBpbiBjYXNlIG9mIGBtdWx0aWAgcHJvdmlkZXIuXG4gICAqL1xuICBtdWx0aT86IEFycmF5PCgpID0+IGFueT47XG5cbiAgLyoqXG4gICAqIE51bWJlciBvZiBgbXVsdGlgLXByb3ZpZGVycyB3aGljaCBiZWxvbmcgdG8gdGhlIGNvbXBvbmVudC5cbiAgICpcbiAgICogVGhpcyBpcyBuZWVkZWQgYmVjYXVzZSB3aGVuIG11bHRpcGxlIGNvbXBvbmVudHMgYW5kIGRpcmVjdGl2ZXMgZGVjbGFyZSB0aGUgYG11bHRpYCBwcm92aWRlclxuICAgKiB0aGV5IGhhdmUgdG8gYmUgY29uY2F0ZW5hdGVkIGluIHRoZSBjb3JyZWN0IG9yZGVyLlxuICAgKlxuICAgKiBFeGFtcGxlOlxuICAgKlxuICAgKiBJZiB3ZSBoYXZlIGEgY29tcG9uZW50IGFuZCBkaXJlY3RpdmUgYWN0aXZlIGFuIGEgc2luZ2xlIGVsZW1lbnQgYXMgZGVjbGFyZWQgaGVyZVxuICAgKiBgYGBcbiAgICogY29tcG9uZW50OlxuICAgKiAgIHByb3ZpZGVzOiBbIHtwcm92aWRlOiBTdHJpbmcsIHVzZVZhbHVlOiAnY29tcG9uZW50JywgbXVsdGk6IHRydWV9IF0sXG4gICAqICAgdmlld1Byb3ZpZGVzOiBbIHtwcm92aWRlOiBTdHJpbmcsIHVzZVZhbHVlOiAnY29tcG9uZW50VmlldycsIG11bHRpOiB0cnVlfSBdLFxuICAgKlxuICAgKiBkaXJlY3RpdmU6XG4gICAqICAgcHJvdmlkZXM6IFsge3Byb3ZpZGU6IFN0cmluZywgdXNlVmFsdWU6ICdkaXJlY3RpdmUnLCBtdWx0aTogdHJ1ZX0gXSxcbiAgICogYGBgXG4gICAqXG4gICAqIFRoZW4gdGhlIGV4cGVjdGVkIHJlc3VsdHMgYXJlOlxuICAgKlxuICAgKiBgYGBcbiAgICogcHJvdmlkZXJzOiBbJ2NvbXBvbmVudCcsICdkaXJlY3RpdmUnXVxuICAgKiB2aWV3UHJvdmlkZXJzOiBbJ2NvbXBvbmVudCcsICdjb21wb25lbnRWaWV3JywgJ2RpcmVjdGl2ZSddXG4gICAqIGBgYFxuICAgKlxuICAgKiBUaGUgd2F5IHRvIHRoaW5rIGFib3V0IGl0IGlzIHRoYXQgdGhlIGB2aWV3UHJvdmlkZXJzYCBoYXZlIGJlZW4gaW5zZXJ0ZWQgYWZ0ZXIgdGhlIGNvbXBvbmVudFxuICAgKiBidXQgYmVmb3JlIHRoZSBkaXJlY3RpdmVzLCB3aGljaCBpcyB3aHkgd2UgbmVlZCB0byBrbm93IGhvdyBtYW55IGBtdWx0aWBzIGhhdmUgYmVlbiBkZWNsYXJlZCBieVxuICAgKiB0aGUgY29tcG9uZW50LlxuICAgKi9cbiAgY29tcG9uZW50UHJvdmlkZXJzPzogbnVtYmVyO1xuXG4gIC8qKlxuICAgKiBDdXJyZW50IGluZGV4IG9mIHRoZSBGYWN0b3J5IGluIHRoZSBgZGF0YWAuIE5lZWRlZCBmb3IgYHZpZXdQcm92aWRlcnNgIGFuZCBgcHJvdmlkZXJzYCBtZXJnaW5nLlxuICAgKiBTZWUgYHByb3ZpZGVyRmFjdG9yeWAuXG4gICAqL1xuICBpbmRleD86IG51bWJlcjtcblxuICAvKipcbiAgICogQmVjYXVzZSB0aGUgc2FtZSBgbXVsdGlgIHByb3ZpZGVyIGNhbiBiZSBkZWNsYXJlZCBpbiBgcHJvdmlkZXNgIGFuZCBgdmlld1Byb3ZpZGVzYCBpdCBpc1xuICAgKiBwb3NzaWJsZSBmb3IgYHZpZXdQcm92aWRlc2AgdG8gc2hhZG93IHRoZSBgcHJvdmlkZXNgLiBGb3IgdGhpcyByZWFzb24gd2Ugc3RvcmUgdGhlXG4gICAqIGBwcm92aWRlRmFjdG9yeWAgb2YgdGhlIGBwcm92aWRlcnNgIHNvIHRoYXQgYHByb3ZpZGVyc2AgY2FuIGJlIGV4dGVuZGVkIHdpdGggYHZpZXdQcm92aWRlcnNgLlxuICAgKlxuICAgKiBFeGFtcGxlOlxuICAgKlxuICAgKiBHaXZlbjpcbiAgICogYGBgXG4gICAqIHByb3ZpZGVzOiBbIHtwcm92aWRlOiBTdHJpbmcsIHVzZVZhbHVlOiAnYWxsJywgbXVsdGk6IHRydWV9IF0sXG4gICAqIHZpZXdQcm92aWRlczogWyB7cHJvdmlkZTogU3RyaW5nLCB1c2VWYWx1ZTogJ3ZpZXdPbmx5JywgbXVsdGk6IHRydWV9IF0sXG4gICAqIGBgYFxuICAgKlxuICAgKiBXZSBoYXZlIHRvIHJldHVybiBgWydhbGwnXWAgaW4gY2FzZSBvZiBjb250ZW50IGluamVjdGlvbiwgYnV0IGBbJ2FsbCcsICd2aWV3T25seSddYCBpbiBjYXNlXG4gICAqIG9mIHZpZXcgaW5qZWN0aW9uLiBXZSBmdXJ0aGVyIGhhdmUgdG8gbWFrZSBzdXJlIHRoYXQgdGhlIHNoYXJlZCBpbnN0YW5jZXMgKGluIG91ciBjYXNlXG4gICAqIGBhbGxgKSBhcmUgdGhlIGV4YWN0IHNhbWUgaW5zdGFuY2UgaW4gYm90aCB0aGUgY29udGVudCBhcyB3ZWxsIGFzIHRoZSB2aWV3IGluamVjdGlvbi4gKFdlXG4gICAqIGhhdmUgdG8gbWFrZSBzdXJlIHRoYXQgd2UgZG9uJ3QgZG91YmxlIGluc3RhbnRpYXRlLikgRm9yIHRoaXMgcmVhc29uIHRoZSBgdmlld1Byb3ZpZGVzYFxuICAgKiBgRmFjdG9yeWAgaGFzIGEgcG9pbnRlciB0byB0aGUgc2hhZG93ZWQgYHByb3ZpZGVzYCBmYWN0b3J5IHNvIHRoYXQgaXQgY2FuIGluc3RhbnRpYXRlIHRoZVxuICAgKiBgcHJvdmlkZXJzYCAoYFsnYWxsJ11gKSBhbmQgdGhlbiBleHRlbmQgaXQgd2l0aCBgdmlld1Byb3ZpZGVyc2AgKGBbJ2FsbCddICsgWyd2aWV3T25seSddID1cbiAgICogWydhbGwnLCAndmlld09ubHknXWApLlxuICAgKi9cbiAgcHJvdmlkZXJGYWN0b3J5PzogTm9kZUluamVjdG9yRmFjdG9yeXxudWxsO1xuXG5cbiAgY29uc3RydWN0b3IoXG4gICAgICAvKipcbiAgICAgICAqIEZhY3RvcnkgdG8gaW52b2tlIGluIG9yZGVyIHRvIGNyZWF0ZSBhIG5ldyBpbnN0YW5jZS5cbiAgICAgICAqL1xuICAgICAgcHVibGljIGZhY3Rvcnk6XG4gICAgICAgICAgKHRoaXM6IE5vZGVJbmplY3RvckZhY3RvcnksIF86IHVuZGVmaW5lZCxcbiAgICAgICAgICAgLyoqXG4gICAgICAgICAgICAqIGFycmF5IHdoZXJlIGluamVjdGFibGVzIHRva2VucyBhcmUgc3RvcmVkLiBUaGlzIGlzIHVzZWQgaW5cbiAgICAgICAgICAgICogY2FzZSBvZiBhbiBlcnJvciByZXBvcnRpbmcgdG8gcHJvZHVjZSBmcmllbmRsaWVyIGVycm9ycy5cbiAgICAgICAgICAgICovXG4gICAgICAgICAgIHREYXRhOiBURGF0YSxcbiAgICAgICAgICAgLyoqXG4gICAgICAgICAgICAqIGFycmF5IHdoZXJlIGV4aXN0aW5nIGluc3RhbmNlcyBvZiBpbmplY3RhYmxlcyBhcmUgc3RvcmVkLiBUaGlzIGlzIHVzZWQgaW4gY2FzZVxuICAgICAgICAgICAgKiBvZiBtdWx0aSBzaGFkb3cgaXMgbmVlZGVkLiBTZWUgYG11bHRpYCBmaWVsZCBkb2N1bWVudGF0aW9uLlxuICAgICAgICAgICAgKi9cbiAgICAgICAgICAgbFZpZXc6IExWaWV3LFxuICAgICAgICAgICAvKipcbiAgICAgICAgICAgICogVGhlIFROb2RlIG9mIHRoZSBzYW1lIGVsZW1lbnQgaW5qZWN0b3IuXG4gICAgICAgICAgICAqL1xuICAgICAgICAgICB0Tm9kZTogVERpcmVjdGl2ZUhvc3ROb2RlKSA9PiBhbnksXG4gICAgICAvKipcbiAgICAgICAqIFNldCB0byBgdHJ1ZWAgaWYgdGhlIHRva2VuIGlzIGRlY2xhcmVkIGluIGB2aWV3UHJvdmlkZXJzYCAob3IgaWYgaXQgaXMgY29tcG9uZW50KS5cbiAgICAgICAqL1xuICAgICAgaXNWaWV3UHJvdmlkZXI6IGJvb2xlYW4sIGluamVjdEltcGxlbWVudGF0aW9uOiBudWxsfFxuICAgICAgKDxUPih0b2tlbjogVHlwZTxUPnxJbmplY3Rpb25Ub2tlbjxUPiwgZmxhZ3M/OiBJbmplY3RGbGFncykgPT4gVCkpIHtcbiAgICB0aGlzLmNhblNlZVZpZXdQcm92aWRlcnMgPSBpc1ZpZXdQcm92aWRlcjtcbiAgICB0aGlzLmluamVjdEltcGwgPSBpbmplY3RJbXBsZW1lbnRhdGlvbjtcbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gaXNGYWN0b3J5KG9iajogYW55KTogb2JqIGlzIE5vZGVJbmplY3RvckZhY3Rvcnkge1xuICByZXR1cm4gb2JqIGluc3RhbmNlb2YgTm9kZUluamVjdG9yRmFjdG9yeTtcbn1cblxuLy8gTm90ZTogVGhpcyBoYWNrIGlzIG5lY2Vzc2FyeSBzbyB3ZSBkb24ndCBlcnJvbmVvdXNseSBnZXQgYSBjaXJjdWxhciBkZXBlbmRlbmN5XG4vLyBmYWlsdXJlIGJhc2VkIG9uIHR5cGVzLlxuZXhwb3J0IGNvbnN0IHVudXNlZFZhbHVlRXhwb3J0VG9QbGFjYXRlQWpkID0gMTtcbiJdfQ==