/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/**
 * A repeater that caches views when they are removed from a
 * {@link ViewContainerRef}. When new items are inserted into the container,
 * the repeater will reuse one of the cached views instead of creating a new
 * embedded view. Recycling cached views reduces the quantity of expensive DOM
 * inserts.
 *
 * @template T The type for the embedded view's $implicit property.
 * @template R The type for the item in each IterableDiffer change record.
 * @template C The type for the context passed to each embedded view.
 */
export class _RecycleViewRepeaterStrategy {
    constructor() {
        /**
         * The size of the cache used to store unused views.
         * Setting the cache size to `0` will disable caching. Defaults to 20 views.
         */
        this.viewCacheSize = 20;
        /**
         * View cache that stores embedded view instances that have been previously stamped out,
         * but don't are not currently rendered. The view repeater will reuse these views rather than
         * creating brand new ones.
         *
         * TODO(michaeljamesparsons) Investigate whether using a linked list would improve performance.
         */
        this._viewCache = [];
    }
    /** Apply changes to the DOM. */
    applyChanges(changes, viewContainerRef, itemContextFactory, itemValueResolver, itemViewChanged) {
        // Rearrange the views to put them in the right location.
        changes.forEachOperation((record, adjustedPreviousIndex, currentIndex) => {
            let view;
            let operation;
            if (record.previousIndex == null) { // Item added.
                const viewArgsFactory = () => itemContextFactory(record, adjustedPreviousIndex, currentIndex);
                view = this._insertView(viewArgsFactory, currentIndex, viewContainerRef, itemValueResolver(record));
                operation = view ? 1 /* INSERTED */ : 0 /* REPLACED */;
            }
            else if (currentIndex == null) { // Item removed.
                this._detachAndCacheView(adjustedPreviousIndex, viewContainerRef);
                operation = 3 /* REMOVED */;
            }
            else { // Item moved.
                view = this._moveView(adjustedPreviousIndex, currentIndex, viewContainerRef, itemValueResolver(record));
                operation = 2 /* MOVED */;
            }
            if (itemViewChanged) {
                itemViewChanged({
                    context: view === null || view === void 0 ? void 0 : view.context,
                    operation,
                    record,
                });
            }
        });
    }
    detach() {
        for (const view of this._viewCache) {
            view.destroy();
        }
    }
    /**
     * Inserts a view for a new item, either from the cache or by creating a new
     * one. Returns `undefined` if the item was inserted into a cached view.
     */
    _insertView(viewArgsFactory, currentIndex, viewContainerRef, value) {
        let cachedView = this._insertViewFromCache(currentIndex, viewContainerRef);
        if (cachedView) {
            cachedView.context.$implicit = value;
            return undefined;
        }
        const viewArgs = viewArgsFactory();
        return viewContainerRef.createEmbeddedView(viewArgs.templateRef, viewArgs.context, viewArgs.index);
    }
    /** Detaches the view at the given index and inserts into the view cache. */
    _detachAndCacheView(index, viewContainerRef) {
        const detachedView = this._detachView(index, viewContainerRef);
        this._maybeCacheView(detachedView, viewContainerRef);
    }
    /** Moves view at the previous index to the current index. */
    _moveView(adjustedPreviousIndex, currentIndex, viewContainerRef, value) {
        const view = viewContainerRef.get(adjustedPreviousIndex);
        viewContainerRef.move(view, currentIndex);
        view.context.$implicit = value;
        return view;
    }
    /**
     * Cache the given detached view. If the cache is full, the view will be
     * destroyed.
     */
    _maybeCacheView(view, viewContainerRef) {
        if (this._viewCache.length < this.viewCacheSize) {
            this._viewCache.push(view);
        }
        else {
            const index = viewContainerRef.indexOf(view);
            // The host component could remove views from the container outside of
            // the view repeater. It's unlikely this will occur, but just in case,
            // destroy the view on its own, otherwise destroy it through the
            // container to ensure that all the references are removed.
            if (index === -1) {
                view.destroy();
            }
            else {
                viewContainerRef.remove(index);
            }
        }
    }
    /** Inserts a recycled view from the cache at the given index. */
    _insertViewFromCache(index, viewContainerRef) {
        const cachedView = this._viewCache.pop();
        if (cachedView) {
            viewContainerRef.insert(cachedView, index);
        }
        return cachedView || null;
    }
    /** Detaches the embedded view at the given index. */
    _detachView(index, viewContainerRef) {
        return viewContainerRef.detach(index);
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicmVjeWNsZS12aWV3LXJlcGVhdGVyLXN0cmF0ZWd5LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9jb2xsZWN0aW9ucy9yZWN5Y2xlLXZpZXctcmVwZWF0ZXItc3RyYXRlZ3kudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBbUJIOzs7Ozs7Ozs7O0dBVUc7QUFDSCxNQUFNLE9BQU8sNEJBQTRCO0lBQXpDO1FBRUU7OztXQUdHO1FBQ0gsa0JBQWEsR0FBVyxFQUFFLENBQUM7UUFFM0I7Ozs7OztXQU1HO1FBQ0ssZUFBVSxHQUF5QixFQUFFLENBQUM7SUFtSGhELENBQUM7SUFqSEMsZ0NBQWdDO0lBQ2hDLFlBQVksQ0FBQyxPQUEyQixFQUMzQixnQkFBa0MsRUFDbEMsa0JBQTRELEVBQzVELGlCQUF1RCxFQUN2RCxlQUFnRDtRQUMzRCx5REFBeUQ7UUFDekQsT0FBTyxDQUFDLGdCQUFnQixDQUFDLENBQUMsTUFBK0IsRUFDL0IscUJBQW9DLEVBQ3BDLFlBQTJCLEVBQUUsRUFBRTtZQUN2RCxJQUFJLElBQW9DLENBQUM7WUFDekMsSUFBSSxTQUFpQyxDQUFDO1lBQ3RDLElBQUksTUFBTSxDQUFDLGFBQWEsSUFBSSxJQUFJLEVBQUUsRUFBRyxjQUFjO2dCQUNqRCxNQUFNLGVBQWUsR0FBRyxHQUFHLEVBQUUsQ0FBQyxrQkFBa0IsQ0FDNUMsTUFBTSxFQUFFLHFCQUFxQixFQUFFLFlBQVksQ0FBQyxDQUFDO2dCQUNqRCxJQUFJLEdBQUcsSUFBSSxDQUFDLFdBQVcsQ0FBQyxlQUFlLEVBQUUsWUFBYSxFQUFFLGdCQUFnQixFQUNwRSxpQkFBaUIsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDO2dCQUMvQixTQUFTLEdBQUcsSUFBSSxDQUFDLENBQUMsa0JBQWlDLENBQUMsaUJBQWdDLENBQUM7YUFDdEY7aUJBQU0sSUFBSSxZQUFZLElBQUksSUFBSSxFQUFFLEVBQUcsZ0JBQWdCO2dC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VSxHQUFHLElBQUksQ0FBQyxVQUFVLENBQUMsR0FBRyxFQUFFLENBQUM7UUFDekMsSUFBSSxVQUFVLEVBQUU7WUFDZCxnQkFBZ0IsQ0FBQyxNQUFNLENBQUMsVUFBVSxFQUFFLEtBQUssQ0FBQyxDQUFDO1NBQzVDO1FBQ0QsT0FBTyxVQUFVLElBQUksSUFBSSxDQUFDO0lBQzVCLENBQUM7SUFFRCxxREFBcUQ7SUFDN0MsV0FBVyxDQUFDLEtBQWEsRUFBRSxnQkFBa0M7UUFDbkUsT0FBTyxnQkFBZ0IsQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUF1QixDQUFDO0lBQzlELENBQUM7Q0FDRiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1xuICBFbWJlZGRlZFZpZXdSZWYsXG4gIEl0ZXJhYmxlQ2hhbmdlUmVjb3JkLFxuICBJdGVyYWJsZUNoYW5nZXMsXG4gIFZpZXdDb250YWluZXJSZWZcbn0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge1xuICBfVmlld1JlcGVhdGVyLFxuICBfVmlld1JlcGVhdGVySXRlbUNoYW5nZWQsXG4gIF9WaWV3UmVwZWF0ZXJJdGVtQ29udGV4dCxcbiAgX1ZpZXdSZXBlYXRlckl0ZW1Db250ZXh0RmFjdG9yeSxcbiAgX1ZpZXdSZXBlYXRlckl0ZW1JbnNlcnRBcmdzLFxuICBfVmlld1JlcGVhdGVySXRlbVZhbHVlUmVzb2x2ZXIsXG4gIF9WaWV3UmVwZWF0ZXJPcGVyYXRpb25cbn0gZnJvbSAnLi92aWV3LXJlcGVhdGVyJztcblxuXG4vKipcbiAqIEEgcmVwZWF0ZXIgdGhhdCBjYWNoZXMgdmlld3Mgd2hlbiB0aGV5IGFyZSByZW1vdmVkIGZyb20gYVxuICoge0BsaW5rIFZpZXdDb250YWluZXJSZWZ9LiBXaGVuIG5ldyBpdGVtcyBhcmUgaW5zZXJ0ZWQgaW50byB0aGUgY29udGFpbmVyLFxuICogdGhlIHJlcGVhdGVyIHdpbGwgcmV1c2Ugb25lIG9mIHRoZSBjYWNoZWQgdmlld3MgaW5zdGVhZCBvZiBjcmVhdGluZyBhIG5ld1xuICogZW1iZWRkZWQgdmlldy4gUmVjeWNsaW5nIGNhY2hlZCB2aWV3cyByZWR1Y2VzIHRoZSBxdWFudGl0eSBvZiBleHBlbnNpdmUgRE9NXG4gKiBpbnNlcnRzLlxuICpcbiAqIEB0ZW1wbGF0ZSBUIFRoZSB0eXBlIGZvciB0aGUgZW1iZWRkZWQgdmlldydzICRpbXBsaWNpdCBwcm9wZXJ0eS5cbiAqIEB0ZW1wbGF0ZSBSIFRoZSB0eXBlIGZvciB0aGUgaXRlbSBpbiBlYWNoIEl0ZXJhYmxlRGlmZmVyIGNoYW5nZSByZWNvcmQuXG4gKiBAdGVtcGxhdGUgQyBUaGUgdHlwZSBmb3IgdGhlIGNvbnRleHQgcGFzc2VkIHRvIGVhY2ggZW1iZWRkZWQgdmlldy5cbiAqL1xuZXhwb3J0IGNsYXNzIF9SZWN5Y2xlVmlld1JlcGVhdGVyU3RyYXRlZ3k8VCwgUiwgQyBleHRlbmRzIF9WaWV3UmVwZWF0ZXJJdGVtQ29udGV4dDxUPj5cbiAgICBpbXBsZW1lbnRzIF9WaWV3UmVwZWF0ZXI8VCwgUiwgQz4ge1xuICAvKipcbiAgICogVGhlIHNpemUgb2YgdGhlIGNhY2hlIHVzZWQgdG8gc3RvcmUgdW51c2VkIHZpZXdzLlxuICAgKiBTZXR0aW5nIHRoZSBjYWNoZSBzaXplIHRvIGAwYCB3aWxsIGRpc2FibGUgY2FjaGluZy4gRGVmYXVsdHMgdG8gMjAgdmlld3MuXG4gICAqL1xuICB2aWV3Q2FjaGVTaXplOiBudW1iZXIgPSAyMDtcblxuICAvKipcbiAgICogVmlldyBjYWNoZSB0aGF0IHN0b3JlcyBlbWJlZGRlZCB2aWV3IGluc3RhbmNlcyB0aGF0IGhhdmUgYmVlbiBwcmV2aW91c2x5IHN0YW1wZWQgb3V0LFxuICAgKiBidXQgZG9uJ3QgYXJlIG5vdCBjdXJyZW50bHkgcmVuZGVyZWQuIFRoZSB2aWV3IHJlcGVhdGVyIHdpbGwgcmV1c2UgdGhlc2Ugdmlld3MgcmF0aGVyIHRoYW5cbiAgICogY3JlYXRpbmcgYnJhbmQgbmV3IG9uZXMuXG4gICAqXG4gICAqIFRPRE8obWljaGFlbGphbWVzcGFyc29ucykgSW52ZXN0aWdhdGUgd2hldGhlciB1c2luZyBhIGxpbmtlZCBsaXN0IHdvdWxkIGltcHJvdmUgcGVyZm9ybWFuY2UuXG4gICAqL1xuICBwcml2YXRlIF92aWV3Q2FjaGU6IEVtYmVkZGVkVmlld1JlZjxDPltdID0gW107XG5cbiAgLyoqIEFwcGx5IGNoYW5nZXMgdG8gdGhlIERPTS4gKi9cbiAgYXBwbHlDaGFuZ2VzKGNoYW5nZXM6IEl0ZXJhYmxlQ2hhbmdlczxSPixcbiAgICAgICAgICAgICAgIHZpZXdDb250YWluZXJSZWY6IFZpZXdDb250YWluZXJSZWYsXG4gICAgICAgICAgICAgICBpdGVtQ29udGV4dEZhY3Rvcnk6IF9WaWV3UmVwZWF0ZXJJdGVtQ29udGV4dEZhY3Rvcnk8VCwgUiwgQz4sXG4gICAgICAgICAgICAgICBpdGVtVmFsdWVSZXNvbHZlcjogX1ZpZXdSZXBlYXRlckl0ZW1WYWx1ZVJlc29sdmVyPFQsIFI+LFxuICAgICAgICAgICAgICAgaXRlbVZpZXdDaGFuZ2VkPzogX1ZpZXdSZXBlYXRlckl0ZW1DaGFuZ2VkPFIsIEM+KSB7XG4gICAgLy8gUmVhcnJhbmdlIHRoZSB2aWV3cyB0byBwdXQgdGhlbSBpbiB0aGUgcmlnaHQgbG9jYXRpb24uXG4gICAgY2hhbmdlcy5mb3JFYWNoT3BlcmF0aW9uKChyZWNvcmQ6IEl0ZXJhYmxlQ2hhbmdlUmVjb3JkPFI+LFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYWRqdXN0ZWRQcmV2aW91c0luZGV4OiBudW1iZXIgfCBudWxsLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY3VycmVudEluZGV4OiBudW1iZXIgfCBudWxsKSA9PiB7XG4gICAgICBsZXQgdmlldzogRW1iZWRkZWRWaWV3UmVmPEM+IHwgdW5kZWZpbmVkO1xuICAgICAgbGV0IG9wZXJhdGlvbjogX1ZpZXdSZXBlYXRlck9wZXJhdGlvbjtcbiAgICAgIGlmIChyZWNvcmQucHJldmlvdXNJbmRleCA9PSBudWxsKSB7ICAvLyBJdGVtIGFkZGVkLlxuICAgICAgICBjb25zdCB2aWV3QXJnc0ZhY3RvcnkgPSAoKSA9PiBpdGVtQ29udGV4dEZhY3RvcnkoXG4gICAgICAgICAgICByZWNvcmQsIGFkanVzdGVkUHJldmlvdXNJbmRleCwgY3VycmVudEluZGV4KTtcbiAgICAgICAgdmlldyA9IHRoaXMuX2luc2VydFZpZXcodmlld0FyZ3NGYWN0b3J5LCBjdXJyZW50SW5kZXghLCB2aWV3Q29udGFpbmVyUmVmLFxuICAgICAgICAgICAgaXRlbVZhbHVlUmVzb2x2ZXIocmVjb3JkKSk7XG4gICAgICAgIG9wZXJhdGlvbiA9IHZpZXcgPyBfVmlld1JlcGVhdGVyT3BlcmF0aW9uLklOU0VSVEVEIDogX1ZpZXdSZXBlYXRlck9wZXJhdGlvbi5SRVBMQUNFRDtcbiAgICAgIH0gZWxzZSBpZiAoY3VycmVudEluZGV4ID09IG51bGwpIHsgIC8vIEl0ZW0gcmVtb3ZlZC5cbiAgICAgICAgdGhpcy5fZGV0YWNoQW5kQ2FjaGVWaWV3KGFkanVzdGVkUHJldmlvdXNJbmRleCEsIHZpZXdDb250YWluZXJSZWYpO1xuICAgICAgICBvcGVyYXRpb24gPSBfVmlld1JlcGVhdGVyT3BlcmF0aW9uLlJFTU9WRUQ7XG4gICAgICB9IGVsc2UgeyAgLy8gSXRlbSBtb3ZlZC5cbiAgICAgICAgdmlldyA9IHRoaXMuX21vdmVWaWV3KGFkanVzdGVkUHJldmlvdXNJbmRleCEsIGN1cnJlbnRJbmRleCEsIHZpZXdDb250YWluZXJSZWYsXG4gICAgICAgICAgICBpdGVtVmFsdWVSZXNvbHZlcihyZWNvcmQpKTtcbiAgICAgICAgb3BlcmF0aW9uID0gX1ZpZXdSZXBlYXRlck9wZXJhdGlvbi5NT1ZFRDtcbiAgICAgIH1cblxuICAgICAgaWYgKGl0ZW1WaWV3Q2hhbmdlZCkge1xuICAgICAgICBpdGVtVmlld0NoYW5nZWQoe1xuICAgICAgICAgIGNvbnRleHQ6IHZpZXc/LmNvbnRleHQsXG4gICAgICAgICAgb3BlcmF0aW9uLFxuICAgICAgICAgIHJlY29yZCxcbiAgICAgICAgfSk7XG4gICAgICB9XG4gICAgfSk7XG4gIH1cblxuICBkZXRhY2goKSB7XG4gICAgZm9yIChjb25zdCB2aWV3IG9mIHRoaXMuX3ZpZXdDYWNoZSkge1xuICAgICAgdmlldy5kZXN0cm95KCk7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIEluc2VydHMgYSB2aWV3IGZvciBhIG5ldyBpdGVtLCBlaXRoZXIgZnJvbSB0aGUgY2FjaGUgb3IgYnkgY3JlYXRpbmcgYSBuZXdcbiAgICogb25lLiBSZXR1cm5zIGB1bmRlZmluZWRgIGlmIHRoZSBpdGVtIHdhcyBpbnNlcnRlZCBpbnRvIGEgY2FjaGVkIHZpZXcuXG4gICAqL1xuICBwcml2YXRlIF9pbnNlcnRWaWV3KHZpZXdBcmdzRmFjdG9yeTogKCkgPT4gX1ZpZXdSZXBlYXRlckl0ZW1JbnNlcnRBcmdzPEM+LCBjdXJyZW50SW5kZXg6IG51bWJlcixcbiAgICAgICAgICAgICAgICAgICAgICB2aWV3Q29udGFpbmVyUmVmOiBWaWV3Q29udGFpbmVyUmVmLFxuICAgICAgICAgICAgICAgICAgICAgIHZhbHVlOiBUKTogRW1iZWRkZWRWaWV3UmVmPEM+IHwgdW5kZWZpbmVkIHtcbiAgICBsZXQgY2FjaGVkVmlldyA9IHRoaXMuX2luc2VydFZpZXdGcm9tQ2FjaGUoY3VycmVudEluZGV4ISwgdmlld0NvbnRhaW5lclJlZik7XG4gICAgaWYgKGNhY2hlZFZpZXcpIHtcbiAgICAgIGNhY2hlZFZpZXcuY29udGV4dC4kaW1wbGljaXQgPSB2YWx1ZTtcbiAgICAgIHJldHVybiB1bmRlZmluZWQ7XG4gICAgfVxuXG4gICAgY29uc3Qgdmlld0FyZ3MgPSB2aWV3QXJnc0ZhY3RvcnkoKTtcbiAgICByZXR1cm4gdmlld0NvbnRhaW5lclJlZi5jcmVhdGVFbWJlZGRlZFZpZXcoXG4gICAgICAgIHZpZXdBcmdzLnRlbXBsYXRlUmVmLCB2aWV3QXJncy5jb250ZXh0LCB2aWV3QXJncy5pbmRleCk7XG4gIH1cblxuICAvKiogRGV0YWNoZXMgdGhlIHZpZXcgYXQgdGhlIGdpdmVuIGluZGV4IGFuZCBpbnNlcnRzIGludG8gdGhlIHZpZXcgY2FjaGUuICovXG4gIHByaXZhdGUgX2RldGFjaEFuZENhY2hlVmlldyhpbmRleDogbnVtYmVyLCB2aWV3Q29udGFpbmVyUmVmOiBWaWV3Q29udGFpbmVyUmVmKSB7XG4gICAgY29uc3QgZGV0YWNoZWRWaWV3ID0gdGhpcy5fZGV0YWNoVmlldyhpbmRleCwgdmlld0NvbnRhaW5lclJlZik7XG4gICAgdGhpcy5fbWF5YmVDYWNoZVZpZXcoZGV0YWNoZWRWaWV3LCB2aWV3Q29udGFpbmVyUmVmKTtcbiAgfVxuXG4gIC8qKiBNb3ZlcyB2aWV3IGF0IHRoZSBwcmV2aW91cyBpbmRleCB0byB0aGUgY3VycmVudCBpbmRleC4gKi9cbiAgcHJpdmF0ZSBfbW92ZVZpZXcoYWRqdXN0ZWRQcmV2aW91c0luZGV4OiBudW1iZXIsIGN1cnJlbnRJbmRleDogbnVtYmVyLFxuICAgICAgICAgICAgICAgICAgICB2aWV3Q29udGFpbmVyUmVmOiBWaWV3Q29udGFpbmVyUmVmLCB2YWx1ZTogVCk6IEVtYmVkZGVkVmlld1JlZjxDPiB7XG4gICAgY29uc3QgdmlldyA9IHZpZXdDb250YWluZXJSZWYuZ2V0KGFkanVzdGVkUHJldmlvdXNJbmRleCEpIGFzXG4gICAgICAgIEVtYmVkZGVkVmlld1JlZjxDPjtcbiAgICB2aWV3Q29udGFpbmVyUmVmLm1vdmUodmlldywgY3VycmVudEluZGV4KTtcbiAgICB2aWV3LmNvbnRleHQuJGltcGxpY2l0ID0gdmFsdWU7XG4gICAgcmV0dXJuIHZpZXc7XG4gIH1cblxuICAvKipcbiAgICogQ2FjaGUgdGhlIGdpdmVuIGRldGFjaGVkIHZpZXcuIElmIHRoZSBjYWNoZSBpcyBmdWxsLCB0aGUgdmlldyB3aWxsIGJlXG4gICAqIGRlc3Ryb3llZC5cbiAgICovXG4gIHByaXZhdGUgX21heWJlQ2FjaGVWaWV3KHZpZXc6IEVtYmVkZGVkVmlld1JlZjxDPiwgdmlld0NvbnRhaW5lclJlZjogVmlld0NvbnRhaW5lclJlZikge1xuICAgIGlmICh0aGlzLl92aWV3Q2FjaGUubGVuZ3RoIDwgdGhpcy52aWV3Q2FjaGVTaXplKSB7XG4gICAgICB0aGlzLl92aWV3Q2FjaGUucHVzaCh2aWV3KTtcbiAgICB9IGVsc2Uge1xuICAgICAgY29uc3QgaW5kZXggPSB2aWV3Q29udGFpbmVyUmVmLmluZGV4T2Yodmlldyk7XG5cbiAgICAgIC8vIFRoZSBob3N0IGNvbXBvbmVudCBjb3VsZCByZW1vdmUgdmlld3MgZnJvbSB0aGUgY29udGFpbmVyIG91dHNpZGUgb2ZcbiAgICAgIC8vIHRoZSB2aWV3IHJlcGVhdGVyLiBJdCdzIHVubGlrZWx5IHRoaXMgd2lsbCBvY2N1ciwgYnV0IGp1c3QgaW4gY2FzZSxcbiAgICAgIC8vIGRlc3Ryb3kgdGhlIHZpZXcgb24gaXRzIG93biwgb3RoZXJ3aXNlIGRlc3Ryb3kgaXQgdGhyb3VnaCB0aGVcbiAgICAgIC8vIGNvbnRhaW5lciB0byBlbnN1cmUgdGhhdCBhbGwgdGhlIHJlZmVyZW5jZXMgYXJlIHJlbW92ZWQuXG4gICAgICBpZiAoaW5kZXggPT09IC0xKSB7XG4gICAgICAgIHZpZXcuZGVzdHJveSgpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdmlld0NvbnRhaW5lclJlZi5yZW1vdmUoaW5kZXgpO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIC8qKiBJbnNlcnRzIGEgcmVjeWNsZWQgdmlldyBmcm9tIHRoZSBjYWNoZSBhdCB0aGUgZ2l2ZW4gaW5kZXguICovXG4gIHByaXZhdGUgX2luc2VydFZpZXdGcm9tQ2FjaGUoaW5kZXg6IG51bWJlcixcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB2aWV3Q29udGFpbmVyUmVmOiBWaWV3Q29udGFpbmVyUmVmKTogRW1iZWRkZWRWaWV3UmVmPEM+IHwgbnVsbCB7XG4gICAgY29uc3QgY2FjaGVkVmlldyA9IHRoaXMuX3ZpZXdDYWNoZS5wb3AoKTtcbiAgICBpZiAoY2FjaGVkVmlldykge1xuICAgICAgdmlld0NvbnRhaW5lclJlZi5pbnNlcnQoY2FjaGVkVmlldywgaW5kZXgpO1xuICAgIH1cbiAgICByZXR1cm4gY2FjaGVkVmlldyB8fCBudWxsO1xuICB9XG5cbiAgLyoqIERldGFjaGVzIHRoZSBlbWJlZGRlZCB2aWV3IGF0IHRoZSBnaXZlbiBpbmRleC4gKi9cbiAgcHJpdmF0ZSBfZGV0YWNoVmlldyhpbmRleDogbnVtYmVyLCB2aWV3Q29udGFpbmVyUmVmOiBWaWV3Q29udGFpbmVyUmVmKTogRW1iZWRkZWRWaWV3UmVmPEM+IHtcbiAgICByZXR1cm4gdmlld0NvbnRhaW5lclJlZi5kZXRhY2goaW5kZXgpIGFzIEVtYmVkZGVkVmlld1JlZjxDPjtcbiAgfVxufVxuIl19