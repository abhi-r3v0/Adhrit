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
function symbolIterator() {
    return this._results[getSymbolIterator()]();
}
/**
 * An unmodifiable list of items that Angular keeps up to date when the state
 * of the application changes.
 *
 * The type of object that {@link ViewChildren}, {@link ContentChildren}, and {@link QueryList}
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
 * @usageNotes
 * ### Example
 * ```typescript
 * @Component({...})
 * class Container {
 *   @ViewChildren(Item) items:QueryList<Item>;
 * }
 * ```
 *
 * @publicApi
 */
var QueryList = /** @class */ (function () {
    function QueryList() {
        this.dirty = true;
        this._results = [];
        this.changes = new EventEmitter();
        this.length = 0;
        // This function should be declared on the prototype, but doing so there will cause the class
        // declaration to have side-effects and become not tree-shakable. For this reason we do it in
        // the constructor.
        // [getSymbolIterator()](): Iterator<T> { ... }
        var symbol = getSymbolIterator();
        var proto = QueryList.prototype;
        if (!proto[symbol])
            proto[symbol] = symbolIterator;
    }
    /**
     * See
     * [Array.map](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/map)
     */
    QueryList.prototype.map = function (fn) { return this._results.map(fn); };
    /**
     * See
     * [Array.filter](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter)
     */
    QueryList.prototype.filter = function (fn) {
        return this._results.filter(fn);
    };
    /**
     * See
     * [Array.find](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/find)
     */
    QueryList.prototype.find = function (fn) {
        return this._results.find(fn);
    };
    /**
     * See
     * [Array.reduce](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)
     */
    QueryList.prototype.reduce = function (fn, init) {
        return this._results.reduce(fn, init);
    };
    /**
     * See
     * [Array.forEach](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/forEach)
     */
    QueryList.prototype.forEach = function (fn) { this._results.forEach(fn); };
    /**
     * See
     * [Array.some](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some)
     */
    QueryList.prototype.some = function (fn) {
        return this._results.some(fn);
    };
    /**
     * Returns a copy of the internal results list as an Array.
     */
    QueryList.prototype.toArray = function () { return this._results.slice(); };
    QueryList.prototype.toString = function () { return this._results.toString(); };
    /**
     * Updates the stored data of the query list, and resets the `dirty` flag to `false`, so that
     * on change detection, it will not notify of changes to the queries, unless a new change
     * occurs.
     *
     * @param resultsTree The query results to store
     */
    QueryList.prototype.reset = function (resultsTree) {
        this._results = flatten(resultsTree);
        this.dirty = false;
        this.length = this._results.length;
        this.last = this._results[this.length - 1];
        this.first = this._results[0];
    };
    /**
     * Triggers a change event by emitting on the `changes` {@link EventEmitter}.
     */
    QueryList.prototype.notifyOnChanges = function () { this.changes.emit(this); };
    /** internal */
    QueryList.prototype.setDirty = function () { this.dirty = true; };
    /** internal */
    QueryList.prototype.destroy = function () {
        this.changes.complete();
        this.changes.unsubscribe();
    };
    return QueryList;
}());
export { QueryList };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicXVlcnlfbGlzdC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL2xpbmtlci9xdWVyeV9saXN0LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUlILE9BQU8sRUFBQyxZQUFZLEVBQUMsTUFBTSxrQkFBa0IsQ0FBQztBQUM5QyxPQUFPLEVBQUMsT0FBTyxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFDNUMsT0FBTyxFQUFDLGlCQUFpQixFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFFakQsU0FBUyxjQUFjO0lBQ3JCLE9BQVMsSUFBbUMsQ0FBQyxRQUFnQixDQUFDLGlCQUFpQixFQUFFLENBQUMsRUFBRSxDQUFDO0FBQ3ZGLENBQUM7QUFFRDs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztHQXlCRztBQUNIO0lBV0U7UUFWZ0IsVUFBSyxHQUFHLElBQUksQ0FBQztRQUNyQixhQUFRLEdBQWEsRUFBRSxDQUFDO1FBQ2hCLFlBQU8sR0FBb0IsSUFBSSxZQUFZLEVBQUUsQ0FBQztRQUVyRCxXQUFNLEdBQVcsQ0FBQyxDQUFDO1FBTzFCLDZGQUE2RjtRQUM3Riw2RkFBNkY7UUFDN0YsbUJBQW1CO1FBQ25CLCtDQUErQztRQUMvQyxJQUFNLE1BQU0sR0FBRyxpQkFBaUIsRUFBRSxDQUFDO1FBQ25DLElBQU0sS0FBSyxHQUFHLFNBQVMsQ0FBQyxTQUFnQixDQUFDO1FBQ3pDLElBQUksQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDO1lBQUUsS0FBSyxDQUFDLE1BQU0sQ0FBQyxHQUFHLGNBQWMsQ0FBQztJQUNyRCxDQUFDO0lBRUQ7OztPQUdHO0lBQ0gsdUJBQUcsR0FBSCxVQUFPLEVBQTZDLElBQVMsT0FBTyxJQUFJLENBQUMsUUFBUSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLENBQUM7SUFFNUY7OztPQUdHO0lBQ0gsMEJBQU0sR0FBTixVQUFPLEVBQW1EO1FBQ3hELE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxNQUFNLENBQUMsRUFBRSxDQUFDLENBQUM7SUFDbEMsQ0FBQztJQUVEOzs7T0FHRztJQUNILHdCQUFJLEdBQUosVUFBSyxFQUFtRDtRQUN0RCxPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxDQUFDO0lBQ2hDLENBQUM7SUFFRDs7O09BR0c7SUFDSCwwQkFBTSxHQUFOLFVBQVUsRUFBa0UsRUFBRSxJQUFPO1FBQ25GLE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxNQUFNLENBQUMsRUFBRSxFQUFFLElBQUksQ0FBQyxDQUFDO0lBQ3hDLENBQUM7SUFFRDs7O09BR0c7SUFDSCwyQkFBTyxHQUFQLFVBQVEsRUFBZ0QsSUFBVSxJQUFJLENBQUMsUUFBUSxDQUFDLE9BQU8sQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLENBQUM7SUFFOUY7OztPQUdHO0lBQ0gsd0JBQUksR0FBSixVQUFLLEVBQW9EO1FBQ3ZELE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLENBQUM7SUFDaEMsQ0FBQztJQUVEOztPQUVHO0lBQ0gsMkJBQU8sR0FBUCxjQUFpQixPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMsS0FBSyxFQUFFLENBQUMsQ0FBQyxDQUFDO0lBRWhELDRCQUFRLEdBQVIsY0FBcUIsT0FBTyxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsRUFBRSxDQUFDLENBQUMsQ0FBQztJQUV2RDs7Ozs7O09BTUc7SUFDSCx5QkFBSyxHQUFMLFVBQU0sV0FBMkI7UUFDL0IsSUFBSSxDQUFDLFFBQVEsR0FBRyxPQUFPLENBQUMsV0FBVyxDQUFDLENBQUM7UUFDcEMsSUFBd0IsQ0FBQyxLQUFLLEdBQUcsS0FBSyxDQUFDO1FBQ3ZDLElBQXdCLENBQUMsTUFBTSxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsTUFBTSxDQUFDO1FBQ3ZELElBQWlCLENBQUMsSUFBSSxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLE1BQU0sR0FBRyxDQUFDLENBQUMsQ0FBQztRQUN4RCxJQUFrQixDQUFDLEtBQUssR0FBRyxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQy9DLENBQUM7SUFFRDs7T0FFRztJQUNILG1DQUFlLEdBQWYsY0FBMkIsSUFBSSxDQUFDLE9BQTZCLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUUzRSxlQUFlO0lBQ2YsNEJBQVEsR0FBUixjQUFjLElBQXdCLENBQUMsS0FBSyxHQUFHLElBQUksQ0FBQyxDQUFDLENBQUM7SUFFdEQsZUFBZTtJQUNmLDJCQUFPLEdBQVA7UUFDRyxJQUFJLENBQUMsT0FBNkIsQ0FBQyxRQUFRLEVBQUUsQ0FBQztRQUM5QyxJQUFJLENBQUMsT0FBNkIsQ0FBQyxXQUFXLEVBQUUsQ0FBQztJQUNwRCxDQUFDO0lBUUgsZ0JBQUM7QUFBRCxDQUFDLEFBM0dELElBMkdDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge09ic2VydmFibGV9IGZyb20gJ3J4anMnO1xuXG5pbXBvcnQge0V2ZW50RW1pdHRlcn0gZnJvbSAnLi4vZXZlbnRfZW1pdHRlcic7XG5pbXBvcnQge2ZsYXR0ZW59IGZyb20gJy4uL3V0aWwvYXJyYXlfdXRpbHMnO1xuaW1wb3J0IHtnZXRTeW1ib2xJdGVyYXRvcn0gZnJvbSAnLi4vdXRpbC9zeW1ib2wnO1xuXG5mdW5jdGlvbiBzeW1ib2xJdGVyYXRvcjxUPih0aGlzOiBRdWVyeUxpc3Q8VD4pOiBJdGVyYXRvcjxUPiB7XG4gIHJldHVybiAoKHRoaXMgYXMgYW55IGFze19yZXN1bHRzOiBBcnJheTxUPn0pLl9yZXN1bHRzIGFzIGFueSlbZ2V0U3ltYm9sSXRlcmF0b3IoKV0oKTtcbn1cblxuLyoqXG4gKiBBbiB1bm1vZGlmaWFibGUgbGlzdCBvZiBpdGVtcyB0aGF0IEFuZ3VsYXIga2VlcHMgdXAgdG8gZGF0ZSB3aGVuIHRoZSBzdGF0ZVxuICogb2YgdGhlIGFwcGxpY2F0aW9uIGNoYW5nZXMuXG4gKlxuICogVGhlIHR5cGUgb2Ygb2JqZWN0IHRoYXQge0BsaW5rIFZpZXdDaGlsZHJlbn0sIHtAbGluayBDb250ZW50Q2hpbGRyZW59LCBhbmQge0BsaW5rIFF1ZXJ5TGlzdH1cbiAqIHByb3ZpZGUuXG4gKlxuICogSW1wbGVtZW50cyBhbiBpdGVyYWJsZSBpbnRlcmZhY2UsIHRoZXJlZm9yZSBpdCBjYW4gYmUgdXNlZCBpbiBib3RoIEVTNlxuICogamF2YXNjcmlwdCBgZm9yICh2YXIgaSBvZiBpdGVtcylgIGxvb3BzIGFzIHdlbGwgYXMgaW4gQW5ndWxhciB0ZW1wbGF0ZXMgd2l0aFxuICogYCpuZ0Zvcj1cImxldCBpIG9mIG15TGlzdFwiYC5cbiAqXG4gKiBDaGFuZ2VzIGNhbiBiZSBvYnNlcnZlZCBieSBzdWJzY3JpYmluZyB0byB0aGUgY2hhbmdlcyBgT2JzZXJ2YWJsZWAuXG4gKlxuICogTk9URTogSW4gdGhlIGZ1dHVyZSB0aGlzIGNsYXNzIHdpbGwgaW1wbGVtZW50IGFuIGBPYnNlcnZhYmxlYCBpbnRlcmZhY2UuXG4gKlxuICogQHVzYWdlTm90ZXNcbiAqICMjIyBFeGFtcGxlXG4gKiBgYGB0eXBlc2NyaXB0XG4gKiBAQ29tcG9uZW50KHsuLi59KVxuICogY2xhc3MgQ29udGFpbmVyIHtcbiAqICAgQFZpZXdDaGlsZHJlbihJdGVtKSBpdGVtczpRdWVyeUxpc3Q8SXRlbT47XG4gKiB9XG4gKiBgYGBcbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBjbGFzcyBRdWVyeUxpc3Q8VD4gaW1wbGVtZW50cyBJdGVyYWJsZTxUPiB7XG4gIHB1YmxpYyByZWFkb25seSBkaXJ0eSA9IHRydWU7XG4gIHByaXZhdGUgX3Jlc3VsdHM6IEFycmF5PFQ+ID0gW107XG4gIHB1YmxpYyByZWFkb25seSBjaGFuZ2VzOiBPYnNlcnZhYmxlPGFueT4gPSBuZXcgRXZlbnRFbWl0dGVyKCk7XG5cbiAgcmVhZG9ubHkgbGVuZ3RoOiBudW1iZXIgPSAwO1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgcmVhZG9ubHkgZmlyc3QgITogVDtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIHJlYWRvbmx5IGxhc3QgITogVDtcblxuICBjb25zdHJ1Y3RvcigpIHtcbiAgICAvLyBUaGlzIGZ1bmN0aW9uIHNob3VsZCBiZSBkZWNsYXJlZCBvbiB0aGUgcHJvdG90eXBlLCBidXQgZG9pbmcgc28gdGhlcmUgd2lsbCBjYXVzZSB0aGUgY2xhc3NcbiAgICAvLyBkZWNsYXJhdGlvbiB0byBoYXZlIHNpZGUtZWZmZWN0cyBhbmQgYmVjb21lIG5vdCB0cmVlLXNoYWthYmxlLiBGb3IgdGhpcyByZWFzb24gd2UgZG8gaXQgaW5cbiAgICAvLyB0aGUgY29uc3RydWN0b3IuXG4gICAgLy8gW2dldFN5bWJvbEl0ZXJhdG9yKCldKCk6IEl0ZXJhdG9yPFQ+IHsgLi4uIH1cbiAgICBjb25zdCBzeW1ib2wgPSBnZXRTeW1ib2xJdGVyYXRvcigpO1xuICAgIGNvbnN0IHByb3RvID0gUXVlcnlMaXN0LnByb3RvdHlwZSBhcyBhbnk7XG4gICAgaWYgKCFwcm90b1tzeW1ib2xdKSBwcm90b1tzeW1ib2xdID0gc3ltYm9sSXRlcmF0b3I7XG4gIH1cblxuICAvKipcbiAgICogU2VlXG4gICAqIFtBcnJheS5tYXBdKGh0dHBzOi8vZGV2ZWxvcGVyLm1vemlsbGEub3JnL2VuLVVTL2RvY3MvV2ViL0phdmFTY3JpcHQvUmVmZXJlbmNlL0dsb2JhbF9PYmplY3RzL0FycmF5L21hcClcbiAgICovXG4gIG1hcDxVPihmbjogKGl0ZW06IFQsIGluZGV4OiBudW1iZXIsIGFycmF5OiBUW10pID0+IFUpOiBVW10geyByZXR1cm4gdGhpcy5fcmVzdWx0cy5tYXAoZm4pOyB9XG5cbiAgLyoqXG4gICAqIFNlZVxuICAgKiBbQXJyYXkuZmlsdGVyXShodHRwczovL2RldmVsb3Blci5tb3ppbGxhLm9yZy9lbi1VUy9kb2NzL1dlYi9KYXZhU2NyaXB0L1JlZmVyZW5jZS9HbG9iYWxfT2JqZWN0cy9BcnJheS9maWx0ZXIpXG4gICAqL1xuICBmaWx0ZXIoZm46IChpdGVtOiBULCBpbmRleDogbnVtYmVyLCBhcnJheTogVFtdKSA9PiBib29sZWFuKTogVFtdIHtcbiAgICByZXR1cm4gdGhpcy5fcmVzdWx0cy5maWx0ZXIoZm4pO1xuICB9XG5cbiAgLyoqXG4gICAqIFNlZVxuICAgKiBbQXJyYXkuZmluZF0oaHR0cHM6Ly9kZXZlbG9wZXIubW96aWxsYS5vcmcvZW4tVVMvZG9jcy9XZWIvSmF2YVNjcmlwdC9SZWZlcmVuY2UvR2xvYmFsX09iamVjdHMvQXJyYXkvZmluZClcbiAgICovXG4gIGZpbmQoZm46IChpdGVtOiBULCBpbmRleDogbnVtYmVyLCBhcnJheTogVFtdKSA9PiBib29sZWFuKTogVHx1bmRlZmluZWQge1xuICAgIHJldHVybiB0aGlzLl9yZXN1bHRzLmZpbmQoZm4pO1xuICB9XG5cbiAgLyoqXG4gICAqIFNlZVxuICAgKiBbQXJyYXkucmVkdWNlXShodHRwczovL2RldmVsb3Blci5tb3ppbGxhLm9yZy9lbi1VUy9kb2NzL1dlYi9KYXZhU2NyaXB0L1JlZmVyZW5jZS9HbG9iYWxfT2JqZWN0cy9BcnJheS9yZWR1Y2UpXG4gICAqL1xuICByZWR1Y2U8VT4oZm46IChwcmV2VmFsdWU6IFUsIGN1clZhbHVlOiBULCBjdXJJbmRleDogbnVtYmVyLCBhcnJheTogVFtdKSA9PiBVLCBpbml0OiBVKTogVSB7XG4gICAgcmV0dXJuIHRoaXMuX3Jlc3VsdHMucmVkdWNlKGZuLCBpbml0KTtcbiAgfVxuXG4gIC8qKlxuICAgKiBTZWVcbiAgICogW0FycmF5LmZvckVhY2hdKGh0dHBzOi8vZGV2ZWxvcGVyLm1vemlsbGEub3JnL2VuLVVTL2RvY3MvV2ViL0phdmFTY3JpcHQvUmVmZXJlbmNlL0dsb2JhbF9PYmplY3RzL0FycmF5L2ZvckVhY2gpXG4gICAqL1xuICBmb3JFYWNoKGZuOiAoaXRlbTogVCwgaW5kZXg6IG51bWJlciwgYXJyYXk6IFRbXSkgPT4gdm9pZCk6IHZvaWQgeyB0aGlzLl9yZXN1bHRzLmZvckVhY2goZm4pOyB9XG5cbiAgLyoqXG4gICAqIFNlZVxuICAgKiBbQXJyYXkuc29tZV0oaHR0cHM6Ly9kZXZlbG9wZXIubW96aWxsYS5vcmcvZW4tVVMvZG9jcy9XZWIvSmF2YVNjcmlwdC9SZWZlcmVuY2UvR2xvYmFsX09iamVjdHMvQXJyYXkvc29tZSlcbiAgICovXG4gIHNvbWUoZm46ICh2YWx1ZTogVCwgaW5kZXg6IG51bWJlciwgYXJyYXk6IFRbXSkgPT4gYm9vbGVhbik6IGJvb2xlYW4ge1xuICAgIHJldHVybiB0aGlzLl9yZXN1bHRzLnNvbWUoZm4pO1xuICB9XG5cbiAgLyoqXG4gICAqIFJldHVybnMgYSBjb3B5IG9mIHRoZSBpbnRlcm5hbCByZXN1bHRzIGxpc3QgYXMgYW4gQXJyYXkuXG4gICAqL1xuICB0b0FycmF5KCk6IFRbXSB7IHJldHVybiB0aGlzLl9yZXN1bHRzLnNsaWNlKCk7IH1cblxuICB0b1N0cmluZygpOiBzdHJpbmcgeyByZXR1cm4gdGhpcy5fcmVzdWx0cy50b1N0cmluZygpOyB9XG5cbiAgLyoqXG4gICAqIFVwZGF0ZXMgdGhlIHN0b3JlZCBkYXRhIG9mIHRoZSBxdWVyeSBsaXN0LCBhbmQgcmVzZXRzIHRoZSBgZGlydHlgIGZsYWcgdG8gYGZhbHNlYCwgc28gdGhhdFxuICAgKiBvbiBjaGFuZ2UgZGV0ZWN0aW9uLCBpdCB3aWxsIG5vdCBub3RpZnkgb2YgY2hhbmdlcyB0byB0aGUgcXVlcmllcywgdW5sZXNzIGEgbmV3IGNoYW5nZVxuICAgKiBvY2N1cnMuXG4gICAqXG4gICAqIEBwYXJhbSByZXN1bHRzVHJlZSBUaGUgcXVlcnkgcmVzdWx0cyB0byBzdG9yZVxuICAgKi9cbiAgcmVzZXQocmVzdWx0c1RyZWU6IEFycmF5PFR8YW55W10+KTogdm9pZCB7XG4gICAgdGhpcy5fcmVzdWx0cyA9IGZsYXR0ZW4ocmVzdWx0c1RyZWUpO1xuICAgICh0aGlzIGFze2RpcnR5OiBib29sZWFufSkuZGlydHkgPSBmYWxzZTtcbiAgICAodGhpcyBhc3tsZW5ndGg6IG51bWJlcn0pLmxlbmd0aCA9IHRoaXMuX3Jlc3VsdHMubGVuZ3RoO1xuICAgICh0aGlzIGFze2xhc3Q6IFR9KS5sYXN0ID0gdGhpcy5fcmVzdWx0c1t0aGlzLmxlbmd0aCAtIDFdO1xuICAgICh0aGlzIGFze2ZpcnN0OiBUfSkuZmlyc3QgPSB0aGlzLl9yZXN1bHRzWzBdO1xuICB9XG5cbiAgLyoqXG4gICAqIFRyaWdnZXJzIGEgY2hhbmdlIGV2ZW50IGJ5IGVtaXR0aW5nIG9uIHRoZSBgY2hhbmdlc2Age0BsaW5rIEV2ZW50RW1pdHRlcn0uXG4gICAqL1xuICBub3RpZnlPbkNoYW5nZXMoKTogdm9pZCB7ICh0aGlzLmNoYW5nZXMgYXMgRXZlbnRFbWl0dGVyPGFueT4pLmVtaXQodGhpcyk7IH1cblxuICAvKiogaW50ZXJuYWwgKi9cbiAgc2V0RGlydHkoKSB7ICh0aGlzIGFze2RpcnR5OiBib29sZWFufSkuZGlydHkgPSB0cnVlOyB9XG5cbiAgLyoqIGludGVybmFsICovXG4gIGRlc3Ryb3koKTogdm9pZCB7XG4gICAgKHRoaXMuY2hhbmdlcyBhcyBFdmVudEVtaXR0ZXI8YW55PikuY29tcGxldGUoKTtcbiAgICAodGhpcy5jaGFuZ2VzIGFzIEV2ZW50RW1pdHRlcjxhbnk+KS51bnN1YnNjcmliZSgpO1xuICB9XG5cbiAgLy8gVGhlIGltcGxlbWVudGF0aW9uIG9mIGBTeW1ib2wuaXRlcmF0b3JgIHNob3VsZCBiZSBkZWNsYXJlZCBoZXJlLCBidXQgdGhpcyB3b3VsZCBjYXVzZVxuICAvLyB0cmVlLXNoYWtpbmcgaXNzdWVzIHdpdGggYFF1ZXJ5TGlzdC4gU28gaW5zdGVhZCwgaXQncyBhZGRlZCBpbiB0aGUgY29uc3RydWN0b3IgKHNlZSBjb21tZW50c1xuICAvLyB0aGVyZSkgYW5kIHRoaXMgZGVjbGFyYXRpb24gaXMgbGVmdCBoZXJlIHRvIGVuc3VyZSB0aGF0IFR5cGVTY3JpcHQgY29uc2lkZXJzIFF1ZXJ5TGlzdCB0b1xuICAvLyBpbXBsZW1lbnQgdGhlIEl0ZXJhYmxlIGludGVyZmFjZS4gVGhpcyBpcyByZXF1aXJlZCBmb3IgdGVtcGxhdGUgdHlwZS1jaGVja2luZyBvZiBOZ0ZvciBsb29wc1xuICAvLyBvdmVyIFF1ZXJ5TGlzdHMgdG8gd29yayBjb3JyZWN0bHksIHNpbmNlIFF1ZXJ5TGlzdCBtdXN0IGJlIGFzc2lnbmFibGUgdG8gTmdJdGVyYWJsZS5cbiAgW1N5bWJvbC5pdGVyYXRvcl0gITogKCkgPT4gSXRlcmF0b3I8VD47XG59XG4iXX0=