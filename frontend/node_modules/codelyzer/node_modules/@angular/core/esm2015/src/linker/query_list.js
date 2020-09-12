/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/linker/query_list.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { EventEmitter } from '../event_emitter';
import { flatten } from '../util/array_utils';
import { getSymbolIterator } from '../util/symbol';
/**
 * @template T
 * @this {?}
 * @return {?}
 */
function symbolIterator() {
    return ((/** @type {?} */ (((/** @type {?} */ ((/** @type {?} */ (this)))))._results)))[getSymbolIterator()]();
}
/**
 * An unmodifiable list of items that Angular keeps up to date when the state
 * of the application changes.
 *
 * The type of object that {\@link ViewChildren}, {\@link ContentChildren}, and {\@link QueryList}
 * provide.
 *
 * Implements an iterable interface, therefore it can be used in both ES6
 * javascript `for (var i of items)` loops as well as in Angular templates with
 * `*ngFor="let i of myList"`.
 *
 * Changes can be observed by subscribing to the changes `Observable`.
 *
 * NOTE: In the future this class will implement an `Observable` interface.
 *
 * \@usageNotes
 * ### Example
 * ```typescript
 * \@Component({...})
 * class Container {
 * \@ViewChildren(Item) items:QueryList<Item>;
 * }
 * ```
 *
 * \@publicApi
 * @template T
 */
export class QueryList {
    constructor() {
        this.dirty = true;
        this._results = [];
        this.changes = new EventEmitter();
        this.length = 0;
        // This function should be declared on the prototype, but doing so there will cause the class
        // declaration to have side-effects and become not tree-shakable. For this reason we do it in
        // the constructor.
        // [getSymbolIterator()](): Iterator<T> { ... }
        /** @type {?} */
        const symbol = getSymbolIterator();
        /** @type {?} */
        const proto = (/** @type {?} */ (QueryList.prototype));
        if (!proto[symbol])
            proto[symbol] = symbolIterator;
    }
    /**
     * See
     * [Array.map](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map)
     * @template U
     * @param {?} fn
     * @return {?}
     */
    map(fn) { return this._results.map(fn); }
    /**
     * See
     * [Array.filter](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter)
     * @param {?} fn
     * @return {?}
     */
    filter(fn) {
        return this._results.filter(fn);
    }
    /**
     * See
     * [Array.find](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/find)
     * @param {?} fn
     * @return {?}
     */
    find(fn) {
        return this._results.find(fn);
    }
    /**
     * See
     * [Array.reduce](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)
     * @template U
     * @param {?} fn
     * @param {?} init
     * @return {?}
     */
    reduce(fn, init) {
        return this._results.reduce(fn, init);
    }
    /**
     * See
     * [Array.forEach](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach)
     * @param {?} fn
     * @return {?}
     */
    forEach(fn) { this._results.forEach(fn); }
    /**
     * See
     * [Array.some](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some)
     * @param {?} fn
     * @return {?}
     */
    some(fn) {
        return this._results.some(fn);
    }
    /**
     * Returns a copy of the internal results list as an Array.
     * @return {?}
     */
    toArray() { return this._results.slice(); }
    /**
     * @return {?}
     */
    toString() { return this._results.toString(); }
    /**
     * Updates the stored data of the query list, and resets the `dirty` flag to `false`, so that
     * on change detection, it will not notify of changes to the queries, unless a new change
     * occurs.
     *
     * @param {?} resultsTree The query results to store
     * @return {?}
     */
    reset(resultsTree) {
        this._results = flatten(resultsTree);
        ((/** @type {?} */ (this))).dirty = false;
        ((/** @type {?} */ (this))).length = this._results.length;
        ((/** @type {?} */ (this))).last = this._results[this.length - 1];
        ((/** @type {?} */ (this))).first = this._results[0];
    }
    /**
     * Triggers a change event by emitting on the `changes` {\@link EventEmitter}.
     * @return {?}
     */
    notifyOnChanges() { ((/** @type {?} */ (this.changes))).emit(this); }
    /**
     * internal
     * @return {?}
     */
    setDirty() { ((/** @type {?} */ (this))).dirty = true; }
    /**
     * internal
     * @return {?}
     */
    destroy() {
        ((/** @type {?} */ (this.changes))).complete();
        ((/** @type {?} */ (this.changes))).unsubscribe();
    }
}
if (false) {
    /** @type {?} */
    QueryList.prototype.dirty;
    /**
     * @type {?}
     * @private
     */
    QueryList.prototype._results;
    /** @type {?} */
    QueryList.prototype.changes;
    /** @type {?} */
    QueryList.prototype.length;
    /** @type {?} */
    QueryList.prototype.first;
    /** @type {?} */
    QueryList.prototype.last;
    /* Skipping unnamed member:
    [Symbol.iterator] !: () => Iterator<T>;*/
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicXVlcnlfbGlzdC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL2xpbmtlci9xdWVyeV9saXN0LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQVVBLE9BQU8sRUFBQyxZQUFZLEVBQUMsTUFBTSxrQkFBa0IsQ0FBQztBQUM5QyxPQUFPLEVBQUMsT0FBTyxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFDNUMsT0FBTyxFQUFDLGlCQUFpQixFQUFDLE1BQU0sZ0JBQWdCLENBQUM7Ozs7OztBQUVqRCxTQUFTLGNBQWM7SUFDckIsT0FBTyxDQUFDLG1CQUFBLENBQUMsbUJBQUEsbUJBQUEsSUFBSSxFQUFPLEVBQXVCLENBQUMsQ0FBQyxRQUFRLEVBQU8sQ0FBQyxDQUFDLGlCQUFpQixFQUFFLENBQUMsRUFBRSxDQUFDO0FBQ3ZGLENBQUM7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUE0QkQsTUFBTSxPQUFPLFNBQVM7SUFXcEI7UUFWZ0IsVUFBSyxHQUFHLElBQUksQ0FBQztRQUNyQixhQUFRLEdBQWEsRUFBRSxDQUFDO1FBQ2hCLFlBQU8sR0FBb0IsSUFBSSxZQUFZLEVBQUUsQ0FBQztRQUVyRCxXQUFNLEdBQVcsQ0FBQyxDQUFDOzs7Ozs7Y0FXcEIsTUFBTSxHQUFHLGlCQUFpQixFQUFFOztjQUM1QixLQUFLLEdBQUcsbUJBQUEsU0FBUyxDQUFDLFNBQVMsRUFBTztRQUN4QyxJQUFJLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQztZQUFFLEtBQUssQ0FBQyxNQUFNLENBQUMsR0FBRyxjQUFjLENBQUM7SUFDckQsQ0FBQzs7Ozs7Ozs7SUFNRCxHQUFHLENBQUksRUFBNkMsSUFBUyxPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQzs7Ozs7OztJQU01RixNQUFNLENBQUMsRUFBbUQ7UUFDeEQsT0FBTyxJQUFJLENBQUMsUUFBUSxDQUFDLE1BQU0sQ0FBQyxFQUFFLENBQUMsQ0FBQztJQUNsQyxDQUFDOzs7Ozs7O0lBTUQsSUFBSSxDQUFDLEVBQW1EO1FBQ3RELE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLENBQUM7SUFDaEMsQ0FBQzs7Ozs7Ozs7O0lBTUQsTUFBTSxDQUFJLEVBQWtFLEVBQUUsSUFBTztRQUNuRixPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMsTUFBTSxDQUFDLEVBQUUsRUFBRSxJQUFJLENBQUMsQ0FBQztJQUN4QyxDQUFDOzs7Ozs7O0lBTUQsT0FBTyxDQUFDLEVBQWdELElBQVUsSUFBSSxDQUFDLFFBQVEsQ0FBQyxPQUFPLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQyxDQUFDOzs7Ozs7O0lBTTlGLElBQUksQ0FBQyxFQUFvRDtRQUN2RCxPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxDQUFDO0lBQ2hDLENBQUM7Ozs7O0lBS0QsT0FBTyxLQUFVLE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxLQUFLLEVBQUUsQ0FBQyxDQUFDLENBQUM7Ozs7SUFFaEQsUUFBUSxLQUFhLE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxRQUFRLEVBQUUsQ0FBQyxDQUFDLENBQUM7Ozs7Ozs7OztJQVN2RCxLQUFLLENBQUMsV0FBMkI7UUFDL0IsSUFBSSxDQUFDLFFBQVEsR0FBRyxPQUFPLENBQUMsV0FBVyxDQUFDLENBQUM7UUFDckMsQ0FBQyxtQkFBQSxJQUFJLEVBQW1CLENBQUMsQ0FBQyxLQUFLLEdBQUcsS0FBSyxDQUFDO1FBQ3hDLENBQUMsbUJBQUEsSUFBSSxFQUFtQixDQUFDLENBQUMsTUFBTSxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsTUFBTSxDQUFDO1FBQ3hELENBQUMsbUJBQUEsSUFBSSxFQUFZLENBQUMsQ0FBQyxJQUFJLEdBQUcsSUFBSSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsTUFBTSxHQUFHLENBQUMsQ0FBQyxDQUFDO1FBQ3pELENBQUMsbUJBQUEsSUFBSSxFQUFhLENBQUMsQ0FBQyxLQUFLLEdBQUcsSUFBSSxDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUMvQyxDQUFDOzs7OztJQUtELGVBQWUsS0FBVyxDQUFDLG1CQUFBLElBQUksQ0FBQyxPQUFPLEVBQXFCLENBQUMsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDOzs7OztJQUczRSxRQUFRLEtBQUssQ0FBQyxtQkFBQSxJQUFJLEVBQW1CLENBQUMsQ0FBQyxLQUFLLEdBQUcsSUFBSSxDQUFDLENBQUMsQ0FBQzs7Ozs7SUFHdEQsT0FBTztRQUNMLENBQUMsbUJBQUEsSUFBSSxDQUFDLE9BQU8sRUFBcUIsQ0FBQyxDQUFDLFFBQVEsRUFBRSxDQUFDO1FBQy9DLENBQUMsbUJBQUEsSUFBSSxDQUFDLE9BQU8sRUFBcUIsQ0FBQyxDQUFDLFdBQVcsRUFBRSxDQUFDO0lBQ3BELENBQUM7Q0FRRjs7O0lBMUdDLDBCQUE2Qjs7Ozs7SUFDN0IsNkJBQWdDOztJQUNoQyw0QkFBOEQ7O0lBRTlELDJCQUE0Qjs7SUFFNUIsMEJBQW9COztJQUVwQix5QkFBbUIiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7T2JzZXJ2YWJsZX0gZnJvbSAncnhqcyc7XG5cbmltcG9ydCB7RXZlbnRFbWl0dGVyfSBmcm9tICcuLi9ldmVudF9lbWl0dGVyJztcbmltcG9ydCB7ZmxhdHRlbn0gZnJvbSAnLi4vdXRpbC9hcnJheV91dGlscyc7XG5pbXBvcnQge2dldFN5bWJvbEl0ZXJhdG9yfSBmcm9tICcuLi91dGlsL3N5bWJvbCc7XG5cbmZ1bmN0aW9uIHN5bWJvbEl0ZXJhdG9yPFQ+KHRoaXM6IFF1ZXJ5TGlzdDxUPik6IEl0ZXJhdG9yPFQ+IHtcbiAgcmV0dXJuICgodGhpcyBhcyBhbnkgYXN7X3Jlc3VsdHM6IEFycmF5PFQ+fSkuX3Jlc3VsdHMgYXMgYW55KVtnZXRTeW1ib2xJdGVyYXRvcigpXSgpO1xufVxuXG4vKipcbiAqIEFuIHVubW9kaWZpYWJsZSBsaXN0IG9mIGl0ZW1zIHRoYXQgQW5ndWxhciBrZWVwcyB1cCB0byBkYXRlIHdoZW4gdGhlIHN0YXRlXG4gKiBvZiB0aGUgYXBwbGljYXRpb24gY2hhbmdlcy5cbiAqXG4gKiBUaGUgdHlwZSBvZiBvYmplY3QgdGhhdCB7QGxpbmsgVmlld0NoaWxkcmVufSwge0BsaW5rIENvbnRlbnRDaGlsZHJlbn0sIGFuZCB7QGxpbmsgUXVlcnlMaXN0fVxuICogcHJvdmlkZS5cbiAqXG4gKiBJbXBsZW1lbnRzIGFuIGl0ZXJhYmxlIGludGVyZmFjZSwgdGhlcmVmb3JlIGl0IGNhbiBiZSB1c2VkIGluIGJvdGggRVM2XG4gKiBqYXZhc2NyaXB0IGBmb3IgKHZhciBpIG9mIGl0ZW1zKWAgbG9vcHMgYXMgd2VsbCBhcyBpbiBBbmd1bGFyIHRlbXBsYXRlcyB3aXRoXG4gKiBgKm5nRm9yPVwibGV0IGkgb2YgbXlMaXN0XCJgLlxuICpcbiAqIENoYW5nZXMgY2FuIGJlIG9ic2VydmVkIGJ5IHN1YnNjcmliaW5nIHRvIHRoZSBjaGFuZ2VzIGBPYnNlcnZhYmxlYC5cbiAqXG4gKiBOT1RFOiBJbiB0aGUgZnV0dXJlIHRoaXMgY2xhc3Mgd2lsbCBpbXBsZW1lbnQgYW4gYE9ic2VydmFibGVgIGludGVyZmFjZS5cbiAqXG4gKiBAdXNhZ2VOb3Rlc1xuICogIyMjIEV4YW1wbGVcbiAqIGBgYHR5cGVzY3JpcHRcbiAqIEBDb21wb25lbnQoey4uLn0pXG4gKiBjbGFzcyBDb250YWluZXIge1xuICogICBAVmlld0NoaWxkcmVuKEl0ZW0pIGl0ZW1zOlF1ZXJ5TGlzdDxJdGVtPjtcbiAqIH1cbiAqIGBgYFxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGNsYXNzIFF1ZXJ5TGlzdDxUPiBpbXBsZW1lbnRzIEl0ZXJhYmxlPFQ+IHtcbiAgcHVibGljIHJlYWRvbmx5IGRpcnR5ID0gdHJ1ZTtcbiAgcHJpdmF0ZSBfcmVzdWx0czogQXJyYXk8VD4gPSBbXTtcbiAgcHVibGljIHJlYWRvbmx5IGNoYW5nZXM6IE9ic2VydmFibGU8YW55PiA9IG5ldyBFdmVudEVtaXR0ZXIoKTtcblxuICByZWFkb25seSBsZW5ndGg6IG51bWJlciA9IDA7XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICByZWFkb25seSBmaXJzdCAhOiBUO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcmVhZG9ubHkgbGFzdCAhOiBUO1xuXG4gIGNvbnN0cnVjdG9yKCkge1xuICAgIC8vIFRoaXMgZnVuY3Rpb24gc2hvdWxkIGJlIGRlY2xhcmVkIG9uIHRoZSBwcm90b3R5cGUsIGJ1dCBkb2luZyBzbyB0aGVyZSB3aWxsIGNhdXNlIHRoZSBjbGFzc1xuICAgIC8vIGRlY2xhcmF0aW9uIHRvIGhhdmUgc2lkZS1lZmZlY3RzIGFuZCBiZWNvbWUgbm90IHRyZWUtc2hha2FibGUuIEZvciB0aGlzIHJlYXNvbiB3ZSBkbyBpdCBpblxuICAgIC8vIHRoZSBjb25zdHJ1Y3Rvci5cbiAgICAvLyBbZ2V0U3ltYm9sSXRlcmF0b3IoKV0oKTogSXRlcmF0b3I8VD4geyAuLi4gfVxuICAgIGNvbnN0IHN5bWJvbCA9IGdldFN5bWJvbEl0ZXJhdG9yKCk7XG4gICAgY29uc3QgcHJvdG8gPSBRdWVyeUxpc3QucHJvdG90eXBlIGFzIGFueTtcbiAgICBpZiAoIXByb3RvW3N5bWJvbF0pIHByb3RvW3N5bWJvbF0gPSBzeW1ib2xJdGVyYXRvcjtcbiAgfVxuXG4gIC8qKlxuICAgKiBTZWVcbiAgICogW0FycmF5Lm1hcF0oaHR0cHM6Ly9kZXZlbG9wZXIubW96aWxsYS5vcmcvZW4tVVMvZG9jcy9XZWIvSmF2YVNjcmlwdC9SZWZlcmVuY2UvR2xvYmFsX09iamVjdHMvQXJyYXkvbWFwKVxuICAgKi9cbiAgbWFwPFU+KGZuOiAoaXRlbTogVCwgaW5kZXg6IG51bWJlciwgYXJyYXk6IFRbXSkgPT4gVSk6IFVbXSB7IHJldHVybiB0aGlzLl9yZXN1bHRzLm1hcChmbik7IH1cblxuICAvKipcbiAgICogU2VlXG4gICAqIFtBcnJheS5maWx0ZXJdKGh0dHBzOi8vZGV2ZWxvcGVyLm1vemlsbGEub3JnL2VuLVVTL2RvY3MvV2ViL0phdmFTY3JpcHQvUmVmZXJlbmNlL0dsb2JhbF9PYmplY3RzL0FycmF5L2ZpbHRlcilcbiAgICovXG4gIGZpbHRlcihmbjogKGl0ZW06IFQsIGluZGV4OiBudW1iZXIsIGFycmF5OiBUW10pID0+IGJvb2xlYW4pOiBUW10ge1xuICAgIHJldHVybiB0aGlzLl9yZXN1bHRzLmZpbHRlcihmbik7XG4gIH1cblxuICAvKipcbiAgICogU2VlXG4gICAqIFtBcnJheS5maW5kXShodHRwczovL2RldmVsb3Blci5tb3ppbGxhLm9yZy9lbi1VUy9kb2NzL1dlYi9KYXZhU2NyaXB0L1JlZmVyZW5jZS9HbG9iYWxfT2JqZWN0cy9BcnJheS9maW5kKVxuICAgKi9cbiAgZmluZChmbjogKGl0ZW06IFQsIGluZGV4OiBudW1iZXIsIGFycmF5OiBUW10pID0+IGJvb2xlYW4pOiBUfHVuZGVmaW5lZCB7XG4gICAgcmV0dXJuIHRoaXMuX3Jlc3VsdHMuZmluZChmbik7XG4gIH1cblxuICAvKipcbiAgICogU2VlXG4gICAqIFtBcnJheS5yZWR1Y2VdKGh0dHBzOi8vZGV2ZWxvcGVyLm1vemlsbGEub3JnL2VuLVVTL2RvY3MvV2ViL0phdmFTY3JpcHQvUmVmZXJlbmNlL0dsb2JhbF9PYmplY3RzL0FycmF5L3JlZHVjZSlcbiAgICovXG4gIHJlZHVjZTxVPihmbjogKHByZXZWYWx1ZTogVSwgY3VyVmFsdWU6IFQsIGN1ckluZGV4OiBudW1iZXIsIGFycmF5OiBUW10pID0+IFUsIGluaXQ6IFUpOiBVIHtcbiAgICByZXR1cm4gdGhpcy5fcmVzdWx0cy5yZWR1Y2UoZm4sIGluaXQpO1xuICB9XG5cbiAgLyoqXG4gICAqIFNlZVxuICAgKiBbQXJyYXkuZm9yRWFjaF0oaHR0cHM6Ly9kZXZlbG9wZXIubW96aWxsYS5vcmcvZW4tVVMvZG9jcy9XZWIvSmF2YVNjcmlwdC9SZWZlcmVuY2UvR2xvYmFsX09iamVjdHMvQXJyYXkvZm9yRWFjaClcbiAgICovXG4gIGZvckVhY2goZm46IChpdGVtOiBULCBpbmRleDogbnVtYmVyLCBhcnJheTogVFtdKSA9PiB2b2lkKTogdm9pZCB7IHRoaXMuX3Jlc3VsdHMuZm9yRWFjaChmbik7IH1cblxuICAvKipcbiAgICogU2VlXG4gICAqIFtBcnJheS5zb21lXShodHRwczovL2RldmVsb3Blci5tb3ppbGxhLm9yZy9lbi1VUy9kb2NzL1dlYi9KYXZhU2NyaXB0L1JlZmVyZW5jZS9HbG9iYWxfT2JqZWN0cy9BcnJheS9zb21lKVxuICAgKi9cbiAgc29tZShmbjogKHZhbHVlOiBULCBpbmRleDogbnVtYmVyLCBhcnJheTogVFtdKSA9PiBib29sZWFuKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRoaXMuX3Jlc3VsdHMuc29tZShmbik7XG4gIH1cblxuICAvKipcbiAgICogUmV0dXJucyBhIGNvcHkgb2YgdGhlIGludGVybmFsIHJlc3VsdHMgbGlzdCBhcyBhbiBBcnJheS5cbiAgICovXG4gIHRvQXJyYXkoKTogVFtdIHsgcmV0dXJuIHRoaXMuX3Jlc3VsdHMuc2xpY2UoKTsgfVxuXG4gIHRvU3RyaW5nKCk6IHN0cmluZyB7IHJldHVybiB0aGlzLl9yZXN1bHRzLnRvU3RyaW5nKCk7IH1cblxuICAvKipcbiAgICogVXBkYXRlcyB0aGUgc3RvcmVkIGRhdGEgb2YgdGhlIHF1ZXJ5IGxpc3QsIGFuZCByZXNldHMgdGhlIGBkaXJ0eWAgZmxhZyB0byBgZmFsc2VgLCBzbyB0aGF0XG4gICAqIG9uIGNoYW5nZSBkZXRlY3Rpb24sIGl0IHdpbGwgbm90IG5vdGlmeSBvZiBjaGFuZ2VzIHRvIHRoZSBxdWVyaWVzLCB1bmxlc3MgYSBuZXcgY2hhbmdlXG4gICAqIG9jY3Vycy5cbiAgICpcbiAgICogQHBhcmFtIHJlc3VsdHNUcmVlIFRoZSBxdWVyeSByZXN1bHRzIHRvIHN0b3JlXG4gICAqL1xuICByZXNldChyZXN1bHRzVHJlZTogQXJyYXk8VHxhbnlbXT4pOiB2b2lkIHtcbiAgICB0aGlzLl9yZXN1bHRzID0gZmxhdHRlbihyZXN1bHRzVHJlZSk7XG4gICAgKHRoaXMgYXN7ZGlydHk6IGJvb2xlYW59KS5kaXJ0eSA9IGZhbHNlO1xuICAgICh0aGlzIGFze2xlbmd0aDogbnVtYmVyfSkubGVuZ3RoID0gdGhpcy5fcmVzdWx0cy5sZW5ndGg7XG4gICAgKHRoaXMgYXN7bGFzdDogVH0pLmxhc3QgPSB0aGlzLl9yZXN1bHRzW3RoaXMubGVuZ3RoIC0gMV07XG4gICAgKHRoaXMgYXN7Zmlyc3Q6IFR9KS5maXJzdCA9IHRoaXMuX3Jlc3VsdHNbMF07XG4gIH1cblxuICAvKipcbiAgICogVHJpZ2dlcnMgYSBjaGFuZ2UgZXZlbnQgYnkgZW1pdHRpbmcgb24gdGhlIGBjaGFuZ2VzYCB7QGxpbmsgRXZlbnRFbWl0dGVyfS5cbiAgICovXG4gIG5vdGlmeU9uQ2hhbmdlcygpOiB2b2lkIHsgKHRoaXMuY2hhbmdlcyBhcyBFdmVudEVtaXR0ZXI8YW55PikuZW1pdCh0aGlzKTsgfVxuXG4gIC8qKiBpbnRlcm5hbCAqL1xuICBzZXREaXJ0eSgpIHsgKHRoaXMgYXN7ZGlydHk6IGJvb2xlYW59KS5kaXJ0eSA9IHRydWU7IH1cblxuICAvKiogaW50ZXJuYWwgKi9cbiAgZGVzdHJveSgpOiB2b2lkIHtcbiAgICAodGhpcy5jaGFuZ2VzIGFzIEV2ZW50RW1pdHRlcjxhbnk+KS5jb21wbGV0ZSgpO1xuICAgICh0aGlzLmNoYW5nZXMgYXMgRXZlbnRFbWl0dGVyPGFueT4pLnVuc3Vic2NyaWJlKCk7XG4gIH1cblxuICAvLyBUaGUgaW1wbGVtZW50YXRpb24gb2YgYFN5bWJvbC5pdGVyYXRvcmAgc2hvdWxkIGJlIGRlY2xhcmVkIGhlcmUsIGJ1dCB0aGlzIHdvdWxkIGNhdXNlXG4gIC8vIHRyZWUtc2hha2luZyBpc3N1ZXMgd2l0aCBgUXVlcnlMaXN0LiBTbyBpbnN0ZWFkLCBpdCdzIGFkZGVkIGluIHRoZSBjb25zdHJ1Y3RvciAoc2VlIGNvbW1lbnRzXG4gIC8vIHRoZXJlKSBhbmQgdGhpcyBkZWNsYXJhdGlvbiBpcyBsZWZ0IGhlcmUgdG8gZW5zdXJlIHRoYXQgVHlwZVNjcmlwdCBjb25zaWRlcnMgUXVlcnlMaXN0IHRvXG4gIC8vIGltcGxlbWVudCB0aGUgSXRlcmFibGUgaW50ZXJmYWNlLiBUaGlzIGlzIHJlcXVpcmVkIGZvciB0ZW1wbGF0ZSB0eXBlLWNoZWNraW5nIG9mIE5nRm9yIGxvb3BzXG4gIC8vIG92ZXIgUXVlcnlMaXN0cyB0byB3b3JrIGNvcnJlY3RseSwgc2luY2UgUXVlcnlMaXN0IG11c3QgYmUgYXNzaWduYWJsZSB0byBOZ0l0ZXJhYmxlLlxuICBbU3ltYm9sLml0ZXJhdG9yXSAhOiAoKSA9PiBJdGVyYXRvcjxUPjtcbn1cbiJdfQ==