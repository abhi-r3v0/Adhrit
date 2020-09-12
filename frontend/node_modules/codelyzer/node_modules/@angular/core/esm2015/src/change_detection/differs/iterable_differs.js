/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/change_detection/differs/iterable_differs.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ɵɵdefineInjectable } from '../../di/interface/defs';
import { Optional, SkipSelf } from '../../di/metadata';
import { DefaultIterableDifferFactory } from '../differs/default_iterable_differ';
/**
 * A strategy for tracking changes over time to an iterable. Used by {\@link NgForOf} to
 * respond to changes in an iterable by effecting equivalent changes in the DOM.
 *
 * \@publicApi
 * @record
 * @template V
 */
export function IterableDiffer() { }
if (false) {
    /**
     * Compute a difference between the previous state and the new `object` state.
     *
     * @param {?} object containing the new value.
     * @return {?} an object describing the difference. The return value is only valid until the next
     * `diff()` invocation.
     */
    IterableDiffer.prototype.diff = function (object) { };
}
/**
 * An object describing the changes in the `Iterable` collection since last time
 * `IterableDiffer#diff()` was invoked.
 *
 * \@publicApi
 * @record
 * @template V
 */
export function IterableChanges() { }
if (false) {
    /**
     * Iterate over all changes. `IterableChangeRecord` will contain information about changes
     * to each item.
     * @param {?} fn
     * @return {?}
     */
    IterableChanges.prototype.forEachItem = function (fn) { };
    /**
     * Iterate over a set of operations which when applied to the original `Iterable` will produce the
     * new `Iterable`.
     *
     * NOTE: These are not necessarily the actual operations which were applied to the original
     * `Iterable`, rather these are a set of computed operations which may not be the same as the
     * ones applied.
     *
     * @param {?} fn
     * @return {?}
     */
    IterableChanges.prototype.forEachOperation = function (fn) { };
    /**
     * Iterate over changes in the order of original `Iterable` showing where the original items
     * have moved.
     * @param {?} fn
     * @return {?}
     */
    IterableChanges.prototype.forEachPreviousItem = function (fn) { };
    /**
     * Iterate over all added items.
     * @param {?} fn
     * @return {?}
     */
    IterableChanges.prototype.forEachAddedItem = function (fn) { };
    /**
     * Iterate over all moved items.
     * @param {?} fn
     * @return {?}
     */
    IterableChanges.prototype.forEachMovedItem = function (fn) { };
    /**
     * Iterate over all removed items.
     * @param {?} fn
     * @return {?}
     */
    IterableChanges.prototype.forEachRemovedItem = function (fn) { };
    /**
     * Iterate over all items which had their identity (as computed by the `TrackByFunction`)
     * changed.
     * @param {?} fn
     * @return {?}
     */
    IterableChanges.prototype.forEachIdentityChange = function (fn) { };
}
/**
 * Record representing the item change information.
 *
 * \@publicApi
 * @record
 * @template V
 */
export function IterableChangeRecord() { }
if (false) {
    /**
     * Current index of the item in `Iterable` or null if removed.
     * @type {?}
     */
    IterableChangeRecord.prototype.currentIndex;
    /**
     * Previous index of the item in `Iterable` or null if added.
     * @type {?}
     */
    IterableChangeRecord.prototype.previousIndex;
    /**
     * The item.
     * @type {?}
     */
    IterableChangeRecord.prototype.item;
    /**
     * Track by identity as computed by the `TrackByFunction`.
     * @type {?}
     */
    IterableChangeRecord.prototype.trackById;
}
/**
 * @deprecated v4.0.0 - Use IterableChangeRecord instead.
 * \@publicApi
 * @record
 * @template V
 */
export function CollectionChangeRecord() { }
/**
 * An optional function passed into the `NgForOf` directive that defines how to track
 * changes for items in an iterable.
 * The function takes the iteration index and item ID.
 * When supplied, Angular tracks changes by the return value of the function.
 *
 * \@publicApi
 * @record
 * @template T
 */
export function TrackByFunction() { }
/**
 * Provides a factory for {\@link IterableDiffer}.
 *
 * \@publicApi
 * @record
 */
export function IterableDifferFactory() { }
if (false) {
    /**
     * @param {?} objects
     * @return {?}
     */
    IterableDifferFactory.prototype.supports = function (objects) { };
    /**
     * @template V
     * @param {?=} trackByFn
     * @return {?}
     */
    IterableDifferFactory.prototype.create = function (trackByFn) { };
}
/**
 * A repository of different iterable diffing strategies used by NgFor, NgClass, and others.
 *
 * \@publicApi
 */
export class IterableDiffers {
    /**
     * @param {?} factories
     */
    constructor(factories) {
        this.factories = factories;
    }
    /**
     * @param {?} factories
     * @param {?=} parent
     * @return {?}
     */
    static create(factories, parent) {
        if (parent != null) {
            /** @type {?} */
            const copied = parent.factories.slice();
            factories = factories.concat(copied);
        }
        return new IterableDiffers(factories);
    }
    /**
     * Takes an array of {\@link IterableDifferFactory} and returns a provider used to extend the
     * inherited {\@link IterableDiffers} instance with the provided factories and return a new
     * {\@link IterableDiffers} instance.
     *
     * \@usageNotes
     * ### Example
     *
     * The following example shows how to extend an existing list of factories,
     * which will only be applied to the injector for this component and its children.
     * This step is all that's required to make a new {\@link IterableDiffer} available.
     *
     * ```
     * \@Component({
     *   viewProviders: [
     *     IterableDiffers.extend([new ImmutableListDiffer()])
     *   ]
     * })
     * ```
     * @param {?} factories
     * @return {?}
     */
    static extend(factories) {
        return {
            provide: IterableDiffers,
            useFactory: (/**
             * @param {?} parent
             * @return {?}
             */
            (parent) => {
                if (!parent) {
                    // Typically would occur when calling IterableDiffers.extend inside of dependencies passed
                    // to
                    // bootstrap(), which would override default pipes instead of extending them.
                    throw new Error('Cannot extend IterableDiffers without a parent injector');
                }
                return IterableDiffers.create(factories, parent);
            }),
            // Dependency technically isn't optional, but we can provide a better error message this way.
            deps: [[IterableDiffers, new SkipSelf(), new Optional()]]
        };
    }
    /**
     * @param {?} iterable
     * @return {?}
     */
    find(iterable) {
        /** @type {?} */
        const factory = this.factories.find((/**
         * @param {?} f
         * @return {?}
         */
        f => f.supports(iterable)));
        if (factory != null) {
            return factory;
        }
        else {
            throw new Error(`Cannot find a differ supporting object '${iterable}' of type '${getTypeNameForDebugging(iterable)}'`);
        }
    }
}
/** @nocollapse */
/** @nocollapse */ IterableDiffers.ɵprov = ɵɵdefineInjectable({
    token: IterableDiffers,
    providedIn: 'root',
    factory: (/**
     * @nocollapse @return {?}
     */
    () => new IterableDiffers([new DefaultIterableDifferFactory()]))
});
if (false) {
    /**
     * @nocollapse
     * @type {?}
     */
    IterableDiffers.ɵprov;
    /**
     * @deprecated v4.0.0 - Should be private
     * @type {?}
     */
    IterableDiffers.prototype.factories;
}
/**
 * @param {?} type
 * @return {?}
 */
export function getTypeNameForDebugging(type) {
    return type['name'] || typeof type;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaXRlcmFibGVfZGlmZmVycy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL2NoYW5nZV9kZXRlY3Rpb24vZGlmZmVycy9pdGVyYWJsZV9kaWZmZXJzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQVFBLE9BQU8sRUFBQyxrQkFBa0IsRUFBQyxNQUFNLHlCQUF5QixDQUFDO0FBRTNELE9BQU8sRUFBQyxRQUFRLEVBQUUsUUFBUSxFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFDckQsT0FBTyxFQUFDLDRCQUE0QixFQUFDLE1BQU0sb0NBQW9DLENBQUM7Ozs7Ozs7OztBQWlCaEYsb0NBU0M7Ozs7Ozs7OztJQURDLHNEQUFvRTs7Ozs7Ozs7OztBQVN0RSxxQ0E4Q0M7Ozs7Ozs7O0lBekNDLDBEQUFpRTs7Ozs7Ozs7Ozs7O0lBa0JqRSwrREFHbUQ7Ozs7Ozs7SUFNbkQsa0VBQXlFOzs7Ozs7SUFHekUsK0RBQXNFOzs7Ozs7SUFHdEUsK0RBQXNFOzs7Ozs7SUFHdEUsaUVBQXdFOzs7Ozs7O0lBSXhFLG9FQUEyRTs7Ozs7Ozs7O0FBUTdFLDBDQVlDOzs7Ozs7SUFWQyw0Q0FBbUM7Ozs7O0lBR25DLDZDQUFvQzs7Ozs7SUFHcEMsb0NBQWlCOzs7OztJQUdqQix5Q0FBd0I7Ozs7Ozs7O0FBTzFCLDRDQUE2RTs7Ozs7Ozs7Ozs7QUFVN0UscUNBQXNFOzs7Ozs7O0FBT3RFLDJDQUdDOzs7Ozs7SUFGQyxrRUFBZ0M7Ozs7OztJQUNoQyxrRUFBNkQ7Ozs7Ozs7QUFRL0QsTUFBTSxPQUFPLGVBQWU7Ozs7SUFZMUIsWUFBWSxTQUFrQztRQUFJLElBQUksQ0FBQyxTQUFTLEdBQUcsU0FBUyxDQUFDO0lBQUMsQ0FBQzs7Ozs7O0lBRS9FLE1BQU0sQ0FBQyxNQUFNLENBQUMsU0FBa0MsRUFBRSxNQUF3QjtRQUN4RSxJQUFJLE1BQU0sSUFBSSxJQUFJLEVBQUU7O2tCQUNaLE1BQU0sR0FBRyxNQUFNLENBQUMsU0FBUyxDQUFDLEtBQUssRUFBRTtZQUN2QyxTQUFTLEdBQUcsU0FBUyxDQUFDLE1BQU0sQ0FBQyxNQUFNLENBQUMsQ0FBQztTQUN0QztRQUVELE9BQU8sSUFBSSxlQUFlLENBQUMsU0FBUyxDQUFDLENBQUM7SUFDeEMsQ0FBQzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7SUFzQkQsTUFBTSxDQUFDLE1BQU0sQ0FBQyxTQUFrQztRQUM5QyxPQUFPO1lBQ0wsT0FBTyxFQUFFLGVBQWU7WUFDeEIsVUFBVTs7OztZQUFFLENBQUMsTUFBdUIsRUFBRSxFQUFFO2dCQUN0QyxJQUFJLENBQUMsTUFBTSxFQUFFO29CQUNYLDBGQUEwRjtvQkFDMUYsS0FBSztvQkFDTCw2RUFBNkU7b0JBQzdFLE1BQU0sSUFBSSxLQUFLLENBQUMseURBQXlELENBQUMsQ0FBQztpQkFDNUU7Z0JBQ0QsT0FBTyxlQUFlLENBQUMsTUFBTSxDQUFDLFNBQVMsRUFBRSxNQUFNLENBQUMsQ0FBQztZQUNuRCxDQUFDLENBQUE7O1lBRUQsSUFBSSxFQUFFLENBQUMsQ0FBQyxlQUFlLEVBQUUsSUFBSSxRQUFRLEVBQUUsRUFBRSxJQUFJLFFBQVEsRUFBRSxDQUFDLENBQUM7U0FDMUQsQ0FBQztJQUNKLENBQUM7Ozs7O0lBRUQsSUFBSSxDQUFDLFFBQWE7O2NBQ1YsT0FBTyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsSUFBSTs7OztRQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLFFBQVEsQ0FBQyxRQUFRLENBQUMsRUFBQztRQUM5RCxJQUFJLE9BQU8sSUFBSSxJQUFJLEVBQUU7WUFDbkIsT0FBTyxPQUFPLENBQUM7U0FDaEI7YUFBTTtZQUNMLE1BQU0sSUFBSSxLQUFLLENBQ1gsMkNBQTJDLFFBQVEsY0FBYyx1QkFBdUIsQ0FBQyxRQUFRLENBQUMsR0FBRyxDQUFDLENBQUM7U0FDNUc7SUFDSCxDQUFDOzs7QUFsRU0scUJBQUssR0FBRyxrQkFBa0IsQ0FBQztJQUNoQyxLQUFLLEVBQUUsZUFBZTtJQUN0QixVQUFVLEVBQUUsTUFBTTtJQUNsQixPQUFPOzs7SUFBRSxHQUFHLEVBQUUsQ0FBQyxJQUFJLGVBQWUsQ0FBQyxDQUFDLElBQUksNEJBQTRCLEVBQUUsQ0FBQyxDQUFDLENBQUE7Q0FDekUsQ0FBQyxDQUFDOzs7Ozs7SUFKSCxzQkFJRzs7Ozs7SUFLSCxvQ0FBbUM7Ozs7OztBQTREckMsTUFBTSxVQUFVLHVCQUF1QixDQUFDLElBQVM7SUFDL0MsT0FBTyxJQUFJLENBQUMsTUFBTSxDQUFDLElBQUksT0FBTyxJQUFJLENBQUM7QUFDckMsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHvJtcm1ZGVmaW5lSW5qZWN0YWJsZX0gZnJvbSAnLi4vLi4vZGkvaW50ZXJmYWNlL2RlZnMnO1xuaW1wb3J0IHtTdGF0aWNQcm92aWRlcn0gZnJvbSAnLi4vLi4vZGkvaW50ZXJmYWNlL3Byb3ZpZGVyJztcbmltcG9ydCB7T3B0aW9uYWwsIFNraXBTZWxmfSBmcm9tICcuLi8uLi9kaS9tZXRhZGF0YSc7XG5pbXBvcnQge0RlZmF1bHRJdGVyYWJsZURpZmZlckZhY3Rvcnl9IGZyb20gJy4uL2RpZmZlcnMvZGVmYXVsdF9pdGVyYWJsZV9kaWZmZXInO1xuXG5cblxuLyoqXG4gKiBBIHR5cGUgZGVzY3JpYmluZyBzdXBwb3J0ZWQgaXRlcmFibGUgdHlwZXMuXG4gKlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgdHlwZSBOZ0l0ZXJhYmxlPFQ+ID0gQXJyYXk8VD58IEl0ZXJhYmxlPFQ+O1xuXG4vKipcbiAqIEEgc3RyYXRlZ3kgZm9yIHRyYWNraW5nIGNoYW5nZXMgb3ZlciB0aW1lIHRvIGFuIGl0ZXJhYmxlLiBVc2VkIGJ5IHtAbGluayBOZ0Zvck9mfSB0b1xuICogcmVzcG9uZCB0byBjaGFuZ2VzIGluIGFuIGl0ZXJhYmxlIGJ5IGVmZmVjdGluZyBlcXVpdmFsZW50IGNoYW5nZXMgaW4gdGhlIERPTS5cbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgSXRlcmFibGVEaWZmZXI8Vj4ge1xuICAvKipcbiAgICogQ29tcHV0ZSBhIGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgcHJldmlvdXMgc3RhdGUgYW5kIHRoZSBuZXcgYG9iamVjdGAgc3RhdGUuXG4gICAqXG4gICAqIEBwYXJhbSBvYmplY3QgY29udGFpbmluZyB0aGUgbmV3IHZhbHVlLlxuICAgKiBAcmV0dXJucyBhbiBvYmplY3QgZGVzY3JpYmluZyB0aGUgZGlmZmVyZW5jZS4gVGhlIHJldHVybiB2YWx1ZSBpcyBvbmx5IHZhbGlkIHVudGlsIHRoZSBuZXh0XG4gICAqIGBkaWZmKClgIGludm9jYXRpb24uXG4gICAqL1xuICBkaWZmKG9iamVjdDogTmdJdGVyYWJsZTxWPnx1bmRlZmluZWR8bnVsbCk6IEl0ZXJhYmxlQ2hhbmdlczxWPnxudWxsO1xufVxuXG4vKipcbiAqIEFuIG9iamVjdCBkZXNjcmliaW5nIHRoZSBjaGFuZ2VzIGluIHRoZSBgSXRlcmFibGVgIGNvbGxlY3Rpb24gc2luY2UgbGFzdCB0aW1lXG4gKiBgSXRlcmFibGVEaWZmZXIjZGlmZigpYCB3YXMgaW52b2tlZC5cbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgSXRlcmFibGVDaGFuZ2VzPFY+IHtcbiAgLyoqXG4gICAqIEl0ZXJhdGUgb3ZlciBhbGwgY2hhbmdlcy4gYEl0ZXJhYmxlQ2hhbmdlUmVjb3JkYCB3aWxsIGNvbnRhaW4gaW5mb3JtYXRpb24gYWJvdXQgY2hhbmdlc1xuICAgKiB0byBlYWNoIGl0ZW0uXG4gICAqL1xuICBmb3JFYWNoSXRlbShmbjogKHJlY29yZDogSXRlcmFibGVDaGFuZ2VSZWNvcmQ8Vj4pID0+IHZvaWQpOiB2b2lkO1xuXG4gIC8qKlxuICAgKiBJdGVyYXRlIG92ZXIgYSBzZXQgb2Ygb3BlcmF0aW9ucyB3aGljaCB3aGVuIGFwcGxpZWQgdG8gdGhlIG9yaWdpbmFsIGBJdGVyYWJsZWAgd2lsbCBwcm9kdWNlIHRoZVxuICAgKiBuZXcgYEl0ZXJhYmxlYC5cbiAgICpcbiAgICogTk9URTogVGhlc2UgYXJlIG5vdCBuZWNlc3NhcmlseSB0aGUgYWN0dWFsIG9wZXJhdGlvbnMgd2hpY2ggd2VyZSBhcHBsaWVkIHRvIHRoZSBvcmlnaW5hbFxuICAgKiBgSXRlcmFibGVgLCByYXRoZXIgdGhlc2UgYXJlIGEgc2V0IG9mIGNvbXB1dGVkIG9wZXJhdGlvbnMgd2hpY2ggbWF5IG5vdCBiZSB0aGUgc2FtZSBhcyB0aGVcbiAgICogb25lcyBhcHBsaWVkLlxuICAgKlxuICAgKiBAcGFyYW0gcmVjb3JkIEEgY2hhbmdlIHdoaWNoIG5lZWRzIHRvIGJlIGFwcGxpZWRcbiAgICogQHBhcmFtIHByZXZpb3VzSW5kZXggVGhlIGBJdGVyYWJsZUNoYW5nZVJlY29yZCNwcmV2aW91c0luZGV4YCBvZiB0aGUgYHJlY29yZGAgcmVmZXJzIHRvIHRoZVxuICAgKiAgICAgICAgb3JpZ2luYWwgYEl0ZXJhYmxlYCBsb2NhdGlvbiwgd2hlcmUgYXMgYHByZXZpb3VzSW5kZXhgIHJlZmVycyB0byB0aGUgdHJhbnNpZW50IGxvY2F0aW9uXG4gICAqICAgICAgICBvZiB0aGUgaXRlbSwgYWZ0ZXIgYXBwbHlpbmcgdGhlIG9wZXJhdGlvbnMgdXAgdG8gdGhpcyBwb2ludC5cbiAgICogQHBhcmFtIGN1cnJlbnRJbmRleCBUaGUgYEl0ZXJhYmxlQ2hhbmdlUmVjb3JkI2N1cnJlbnRJbmRleGAgb2YgdGhlIGByZWNvcmRgIHJlZmVycyB0byB0aGVcbiAgICogICAgICAgIG9yaWdpbmFsIGBJdGVyYWJsZWAgbG9jYXRpb24sIHdoZXJlIGFzIGBjdXJyZW50SW5kZXhgIHJlZmVycyB0byB0aGUgdHJhbnNpZW50IGxvY2F0aW9uXG4gICAqICAgICAgICBvZiB0aGUgaXRlbSwgYWZ0ZXIgYXBwbHlpbmcgdGhlIG9wZXJhdGlvbnMgdXAgdG8gdGhpcyBwb2ludC5cbiAgICovXG4gIGZvckVhY2hPcGVyYXRpb24oXG4gICAgICBmbjpcbiAgICAgICAgICAocmVjb3JkOiBJdGVyYWJsZUNoYW5nZVJlY29yZDxWPiwgcHJldmlvdXNJbmRleDogbnVtYmVyfG51bGwsXG4gICAgICAgICAgIGN1cnJlbnRJbmRleDogbnVtYmVyfG51bGwpID0+IHZvaWQpOiB2b2lkO1xuXG4gIC8qKlxuICAgKiBJdGVyYXRlIG92ZXIgY2hhbmdlcyBpbiB0aGUgb3JkZXIgb2Ygb3JpZ2luYWwgYEl0ZXJhYmxlYCBzaG93aW5nIHdoZXJlIHRoZSBvcmlnaW5hbCBpdGVtc1xuICAgKiBoYXZlIG1vdmVkLlxuICAgKi9cbiAgZm9yRWFjaFByZXZpb3VzSXRlbShmbjogKHJlY29yZDogSXRlcmFibGVDaGFuZ2VSZWNvcmQ8Vj4pID0+IHZvaWQpOiB2b2lkO1xuXG4gIC8qKiBJdGVyYXRlIG92ZXIgYWxsIGFkZGVkIGl0ZW1zLiAqL1xuICBmb3JFYWNoQWRkZWRJdGVtKGZuOiAocmVjb3JkOiBJdGVyYWJsZUNoYW5nZVJlY29yZDxWPikgPT4gdm9pZCk6IHZvaWQ7XG5cbiAgLyoqIEl0ZXJhdGUgb3ZlciBhbGwgbW92ZWQgaXRlbXMuICovXG4gIGZvckVhY2hNb3ZlZEl0ZW0oZm46IChyZWNvcmQ6IEl0ZXJhYmxlQ2hhbmdlUmVjb3JkPFY+KSA9PiB2b2lkKTogdm9pZDtcblxuICAvKiogSXRlcmF0ZSBvdmVyIGFsbCByZW1vdmVkIGl0ZW1zLiAqL1xuICBmb3JFYWNoUmVtb3ZlZEl0ZW0oZm46IChyZWNvcmQ6IEl0ZXJhYmxlQ2hhbmdlUmVjb3JkPFY+KSA9PiB2b2lkKTogdm9pZDtcblxuICAvKiogSXRlcmF0ZSBvdmVyIGFsbCBpdGVtcyB3aGljaCBoYWQgdGhlaXIgaWRlbnRpdHkgKGFzIGNvbXB1dGVkIGJ5IHRoZSBgVHJhY2tCeUZ1bmN0aW9uYClcbiAgICogY2hhbmdlZC4gKi9cbiAgZm9yRWFjaElkZW50aXR5Q2hhbmdlKGZuOiAocmVjb3JkOiBJdGVyYWJsZUNoYW5nZVJlY29yZDxWPikgPT4gdm9pZCk6IHZvaWQ7XG59XG5cbi8qKlxuICogUmVjb3JkIHJlcHJlc2VudGluZyB0aGUgaXRlbSBjaGFuZ2UgaW5mb3JtYXRpb24uXG4gKlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgaW50ZXJmYWNlIEl0ZXJhYmxlQ2hhbmdlUmVjb3JkPFY+IHtcbiAgLyoqIEN1cnJlbnQgaW5kZXggb2YgdGhlIGl0ZW0gaW4gYEl0ZXJhYmxlYCBvciBudWxsIGlmIHJlbW92ZWQuICovXG4gIHJlYWRvbmx5IGN1cnJlbnRJbmRleDogbnVtYmVyfG51bGw7XG5cbiAgLyoqIFByZXZpb3VzIGluZGV4IG9mIHRoZSBpdGVtIGluIGBJdGVyYWJsZWAgb3IgbnVsbCBpZiBhZGRlZC4gKi9cbiAgcmVhZG9ubHkgcHJldmlvdXNJbmRleDogbnVtYmVyfG51bGw7XG5cbiAgLyoqIFRoZSBpdGVtLiAqL1xuICByZWFkb25seSBpdGVtOiBWO1xuXG4gIC8qKiBUcmFjayBieSBpZGVudGl0eSBhcyBjb21wdXRlZCBieSB0aGUgYFRyYWNrQnlGdW5jdGlvbmAuICovXG4gIHJlYWRvbmx5IHRyYWNrQnlJZDogYW55O1xufVxuXG4vKipcbiAqIEBkZXByZWNhdGVkIHY0LjAuMCAtIFVzZSBJdGVyYWJsZUNoYW5nZVJlY29yZCBpbnN0ZWFkLlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgaW50ZXJmYWNlIENvbGxlY3Rpb25DaGFuZ2VSZWNvcmQ8Vj4gZXh0ZW5kcyBJdGVyYWJsZUNoYW5nZVJlY29yZDxWPiB7fVxuXG4vKipcbiAqIEFuIG9wdGlvbmFsIGZ1bmN0aW9uIHBhc3NlZCBpbnRvIHRoZSBgTmdGb3JPZmAgZGlyZWN0aXZlIHRoYXQgZGVmaW5lcyBob3cgdG8gdHJhY2tcbiAqIGNoYW5nZXMgZm9yIGl0ZW1zIGluIGFuIGl0ZXJhYmxlLlxuICogVGhlIGZ1bmN0aW9uIHRha2VzIHRoZSBpdGVyYXRpb24gaW5kZXggYW5kIGl0ZW0gSUQuXG4gKiBXaGVuIHN1cHBsaWVkLCBBbmd1bGFyIHRyYWNrcyBjaGFuZ2VzIGJ5IHRoZSByZXR1cm4gdmFsdWUgb2YgdGhlIGZ1bmN0aW9uLlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGludGVyZmFjZSBUcmFja0J5RnVuY3Rpb248VD4geyAoaW5kZXg6IG51bWJlciwgaXRlbTogVCk6IGFueTsgfVxuXG4vKipcbiAqIFByb3ZpZGVzIGEgZmFjdG9yeSBmb3Ige0BsaW5rIEl0ZXJhYmxlRGlmZmVyfS5cbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgSXRlcmFibGVEaWZmZXJGYWN0b3J5IHtcbiAgc3VwcG9ydHMob2JqZWN0czogYW55KTogYm9vbGVhbjtcbiAgY3JlYXRlPFY+KHRyYWNrQnlGbj86IFRyYWNrQnlGdW5jdGlvbjxWPik6IEl0ZXJhYmxlRGlmZmVyPFY+O1xufVxuXG4vKipcbiAqIEEgcmVwb3NpdG9yeSBvZiBkaWZmZXJlbnQgaXRlcmFibGUgZGlmZmluZyBzdHJhdGVnaWVzIHVzZWQgYnkgTmdGb3IsIE5nQ2xhc3MsIGFuZCBvdGhlcnMuXG4gKlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgY2xhc3MgSXRlcmFibGVEaWZmZXJzIHtcbiAgLyoqIEBub2NvbGxhcHNlICovXG4gIHN0YXRpYyDJtXByb3YgPSDJtcm1ZGVmaW5lSW5qZWN0YWJsZSh7XG4gICAgdG9rZW46IEl0ZXJhYmxlRGlmZmVycyxcbiAgICBwcm92aWRlZEluOiAncm9vdCcsXG4gICAgZmFjdG9yeTogKCkgPT4gbmV3IEl0ZXJhYmxlRGlmZmVycyhbbmV3IERlZmF1bHRJdGVyYWJsZURpZmZlckZhY3RvcnkoKV0pXG4gIH0pO1xuXG4gIC8qKlxuICAgKiBAZGVwcmVjYXRlZCB2NC4wLjAgLSBTaG91bGQgYmUgcHJpdmF0ZVxuICAgKi9cbiAgZmFjdG9yaWVzOiBJdGVyYWJsZURpZmZlckZhY3RvcnlbXTtcbiAgY29uc3RydWN0b3IoZmFjdG9yaWVzOiBJdGVyYWJsZURpZmZlckZhY3RvcnlbXSkgeyB0aGlzLmZhY3RvcmllcyA9IGZhY3RvcmllczsgfVxuXG4gIHN0YXRpYyBjcmVhdGUoZmFjdG9yaWVzOiBJdGVyYWJsZURpZmZlckZhY3RvcnlbXSwgcGFyZW50PzogSXRlcmFibGVEaWZmZXJzKTogSXRlcmFibGVEaWZmZXJzIHtcbiAgICBpZiAocGFyZW50ICE9IG51bGwpIHtcbiAgICAgIGNvbnN0IGNvcGllZCA9IHBhcmVudC5mYWN0b3JpZXMuc2xpY2UoKTtcbiAgICAgIGZhY3RvcmllcyA9IGZhY3Rvcmllcy5jb25jYXQoY29waWVkKTtcbiAgICB9XG5cbiAgICByZXR1cm4gbmV3IEl0ZXJhYmxlRGlmZmVycyhmYWN0b3JpZXMpO1xuICB9XG5cbiAgLyoqXG4gICAqIFRha2VzIGFuIGFycmF5IG9mIHtAbGluayBJdGVyYWJsZURpZmZlckZhY3Rvcnl9IGFuZCByZXR1cm5zIGEgcHJvdmlkZXIgdXNlZCB0byBleHRlbmQgdGhlXG4gICAqIGluaGVyaXRlZCB7QGxpbmsgSXRlcmFibGVEaWZmZXJzfSBpbnN0YW5jZSB3aXRoIHRoZSBwcm92aWRlZCBmYWN0b3JpZXMgYW5kIHJldHVybiBhIG5ld1xuICAgKiB7QGxpbmsgSXRlcmFibGVEaWZmZXJzfSBpbnN0YW5jZS5cbiAgICpcbiAgICogQHVzYWdlTm90ZXNcbiAgICogIyMjIEV4YW1wbGVcbiAgICpcbiAgICogVGhlIGZvbGxvd2luZyBleGFtcGxlIHNob3dzIGhvdyB0byBleHRlbmQgYW4gZXhpc3RpbmcgbGlzdCBvZiBmYWN0b3JpZXMsXG4gICAqIHdoaWNoIHdpbGwgb25seSBiZSBhcHBsaWVkIHRvIHRoZSBpbmplY3RvciBmb3IgdGhpcyBjb21wb25lbnQgYW5kIGl0cyBjaGlsZHJlbi5cbiAgICogVGhpcyBzdGVwIGlzIGFsbCB0aGF0J3MgcmVxdWlyZWQgdG8gbWFrZSBhIG5ldyB7QGxpbmsgSXRlcmFibGVEaWZmZXJ9IGF2YWlsYWJsZS5cbiAgICpcbiAgICogYGBgXG4gICAqIEBDb21wb25lbnQoe1xuICAgKiAgIHZpZXdQcm92aWRlcnM6IFtcbiAgICogICAgIEl0ZXJhYmxlRGlmZmVycy5leHRlbmQoW25ldyBJbW11dGFibGVMaXN0RGlmZmVyKCldKVxuICAgKiAgIF1cbiAgICogfSlcbiAgICogYGBgXG4gICAqL1xuICBzdGF0aWMgZXh0ZW5kKGZhY3RvcmllczogSXRlcmFibGVEaWZmZXJGYWN0b3J5W10pOiBTdGF0aWNQcm92aWRlciB7XG4gICAgcmV0dXJuIHtcbiAgICAgIHByb3ZpZGU6IEl0ZXJhYmxlRGlmZmVycyxcbiAgICAgIHVzZUZhY3Rvcnk6IChwYXJlbnQ6IEl0ZXJhYmxlRGlmZmVycykgPT4ge1xuICAgICAgICBpZiAoIXBhcmVudCkge1xuICAgICAgICAgIC8vIFR5cGljYWxseSB3b3VsZCBvY2N1ciB3aGVuIGNhbGxpbmcgSXRlcmFibGVEaWZmZXJzLmV4dGVuZCBpbnNpZGUgb2YgZGVwZW5kZW5jaWVzIHBhc3NlZFxuICAgICAgICAgIC8vIHRvXG4gICAgICAgICAgLy8gYm9vdHN0cmFwKCksIHdoaWNoIHdvdWxkIG92ZXJyaWRlIGRlZmF1bHQgcGlwZXMgaW5zdGVhZCBvZiBleHRlbmRpbmcgdGhlbS5cbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoJ0Nhbm5vdCBleHRlbmQgSXRlcmFibGVEaWZmZXJzIHdpdGhvdXQgYSBwYXJlbnQgaW5qZWN0b3InKTtcbiAgICAgICAgfVxuICAgICAgICByZXR1cm4gSXRlcmFibGVEaWZmZXJzLmNyZWF0ZShmYWN0b3JpZXMsIHBhcmVudCk7XG4gICAgICB9LFxuICAgICAgLy8gRGVwZW5kZW5jeSB0ZWNobmljYWxseSBpc24ndCBvcHRpb25hbCwgYnV0IHdlIGNhbiBwcm92aWRlIGEgYmV0dGVyIGVycm9yIG1lc3NhZ2UgdGhpcyB3YXkuXG4gICAgICBkZXBzOiBbW0l0ZXJhYmxlRGlmZmVycywgbmV3IFNraXBTZWxmKCksIG5ldyBPcHRpb25hbCgpXV1cbiAgICB9O1xuICB9XG5cbiAgZmluZChpdGVyYWJsZTogYW55KTogSXRlcmFibGVEaWZmZXJGYWN0b3J5IHtcbiAgICBjb25zdCBmYWN0b3J5ID0gdGhpcy5mYWN0b3JpZXMuZmluZChmID0+IGYuc3VwcG9ydHMoaXRlcmFibGUpKTtcbiAgICBpZiAoZmFjdG9yeSAhPSBudWxsKSB7XG4gICAgICByZXR1cm4gZmFjdG9yeTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKFxuICAgICAgICAgIGBDYW5ub3QgZmluZCBhIGRpZmZlciBzdXBwb3J0aW5nIG9iamVjdCAnJHtpdGVyYWJsZX0nIG9mIHR5cGUgJyR7Z2V0VHlwZU5hbWVGb3JEZWJ1Z2dpbmcoaXRlcmFibGUpfSdgKTtcbiAgICB9XG4gIH1cbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdldFR5cGVOYW1lRm9yRGVidWdnaW5nKHR5cGU6IGFueSk6IHN0cmluZyB7XG4gIHJldHVybiB0eXBlWyduYW1lJ10gfHwgdHlwZW9mIHR5cGU7XG59XG4iXX0=