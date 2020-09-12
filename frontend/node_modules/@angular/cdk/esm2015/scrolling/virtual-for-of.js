/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ArrayDataSource, isDataSource, _RecycleViewRepeaterStrategy, _VIEW_REPEATER_STRATEGY, } from '@angular/cdk/collections';
import { Directive, Inject, Input, IterableDiffers, NgZone, SkipSelf, TemplateRef, ViewContainerRef, } from '@angular/core';
import { coerceNumberProperty } from '@angular/cdk/coercion';
import { Subject, of as observableOf, isObservable } from 'rxjs';
import { pairwise, shareReplay, startWith, switchMap, takeUntil } from 'rxjs/operators';
import { CdkVirtualScrollViewport } from './virtual-scroll-viewport';
/** Helper to extract the offset of a DOM Node in a certain direction. */
function getOffset(orientation, direction, node) {
    const el = node;
    if (!el.getBoundingClientRect) {
        return 0;
    }
    const rect = el.getBoundingClientRect();
    if (orientation === 'horizontal') {
        return direction === 'start' ? rect.left : rect.right;
    }
    return direction === 'start' ? rect.top : rect.bottom;
}
/**
 * A directive similar to `ngForOf` to be used for rendering data inside a virtual scrolling
 * container.
 */
export class CdkVirtualForOf {
    constructor(
    /** The view container to add items to. */
    _viewContainerRef, 
    /** The template to use when stamping out new items. */
    _template, 
    /** The set of available differs. */
    _differs, 
    /** The strategy used to render items in the virtual scroll viewport. */
    _viewRepeater, 
    /** The virtual scrolling viewport that these items are being rendered in. */
    _viewport, ngZone) {
        this._viewContainerRef = _viewContainerRef;
        this._template = _template;
        this._differs = _differs;
        this._viewRepeater = _viewRepeater;
        this._viewport = _viewport;
        /** Emits when the rendered view of the data changes. */
        this.viewChange = new Subject();
        /** Subject that emits when a new DataSource instance is given. */
        this._dataSourceChanges = new Subject();
        /** Emits whenever the data in the current DataSource changes. */
        this.dataStream = this._dataSourceChanges
            .pipe(
        // Start off with null `DataSource`.
        startWith(null), 
        // Bundle up the previous and current data sources so we can work with both.
        pairwise(), 
        // Use `_changeDataSource` to disconnect from the previous data source and connect to the
        // new one, passing back a stream of data changes which we run through `switchMap` to give
        // us a data stream that emits the latest data from whatever the current `DataSource` is.
        switchMap(([prev, cur]) => this._changeDataSource(prev, cur)), 
        // Replay the last emitted data when someone subscribes.
        shareReplay(1));
        /** The differ used to calculate changes to the data. */
        this._differ = null;
        /** Whether the rendered data should be updated during the next ngDoCheck cycle. */
        this._needsUpdate = false;
        this._destroyed = new Subject();
        this.dataStream.subscribe(data => {
            this._data = data;
            this._onRenderedDataChange();
        });
        this._viewport.renderedRangeStream.pipe(takeUntil(this._destroyed)).subscribe(range => {
            this._renderedRange = range;
            ngZone.run(() => this.viewChange.next(this._renderedRange));
            this._onRenderedDataChange();
        });
        this._viewport.attach(this);
    }
    /** The DataSource to display. */
    get cdkVirtualForOf() {
        return this._cdkVirtualForOf;
    }
    set cdkVirtualForOf(value) {
        this._cdkVirtualForOf = value;
        if (isDataSource(value)) {
            this._dataSourceChanges.next(value);
        }
        else {
            // Slice the value if its an NgIterable to ensure we're working with an array.
            this._dataSourceChanges.next(new ArrayDataSource(isObservable(value) ? value : Array.prototype.slice.call(value || [])));
        }
    }
    /**
     * The `TrackByFunction` to use for tracking changes. The `TrackByFunction` takes the index and
     * the item and produces a value to be used as the item's identity when tracking changes.
     */
    get cdkVirtualForTrackBy() {
        return this._cdkVirtualForTrackBy;
    }
    set cdkVirtualForTrackBy(fn) {
        this._needsUpdate = true;
        this._cdkVirtualForTrackBy = fn ?
            (index, item) => fn(index + (this._renderedRange ? this._renderedRange.start : 0), item) :
            undefined;
    }
    /** The template used to stamp out new elements. */
    set cdkVirtualForTemplate(value) {
        if (value) {
            this._needsUpdate = true;
            this._template = value;
        }
    }
    /**
     * The size of the cache used to store templates that are not being used for re-use later.
     * Setting the cache size to `0` will disable caching. Defaults to 20 templates.
     */
    get cdkVirtualForTemplateCacheSize() {
        return this._viewRepeater.viewCacheSize;
    }
    set cdkVirtualForTemplateCacheSize(size) {
        this._viewRepeater.viewCacheSize = coerceNumberProperty(size);
    }
    /**
     * Measures the combined size (width for horizontal orientation, height for vertical) of all items
     * in the specified range. Throws an error if the range includes items that are not currently
     * rendered.
     */
    measureRangeSize(range, orientation) {
        if (range.start >= range.end) {
            return 0;
        }
        if ((range.start < this._renderedRange.start || range.end > this._renderedRange.end) &&
            (typeof ngDevMode === 'undefined' || ngDevMode)) {
            throw Error(`Error: attempted to measure an item that isn't rendered.`);
        }
        // The index into the list of rendered views for the first item in the range.
        const renderedStartIndex = range.start - this._renderedRange.start;
        // The length of the range we're measuring.
        const rangeLen = range.end - range.start;
        // Loop over all the views, find the first and land node and compute the size by subtracting
        // the top of the first node from the bottom of the last one.
        let firstNode;
        let lastNode;
        // Find the first node by starting from the beginning and going forwards.
        for (let i = 0; i < rangeLen; i++) {
            const view = this._viewContainerRef.get(i + renderedStartIndex);
            if (view && view.rootNodes.length) {
                firstNode = lastNode = view.rootNodes[0];
                break;
            }
        }
        // Find the last node by starting from the end and going backwards.
        for (let i = rangeLen - 1; i > -1; i--) {
            const view = this._viewContainerRef.get(i + renderedStartIndex);
            if (view && view.rootNodes.length) {
                lastNode = view.rootNodes[view.rootNodes.length - 1];
                break;
            }
        }
        return firstNode && lastNode ?
            getOffset(orientation, 'end', lastNode) - getOffset(orientation, 'start', firstNode) : 0;
    }
    ngDoCheck() {
        if (this._differ && this._needsUpdate) {
            // TODO(mmalerba): We should differentiate needs update due to scrolling and a new portion of
            // this list being rendered (can use simpler algorithm) vs needs update due to data actually
            // changing (need to do this diff).
            const changes = this._differ.diff(this._renderedItems);
            if (!changes) {
                this._updateContext();
            }
            else {
                this._applyChanges(changes);
            }
            this._needsUpdate = false;
        }
    }
    ngOnDestroy() {
        this._viewport.detach();
        this._dataSourceChanges.next(undefined);
        this._dataSourceChanges.complete();
        this.viewChange.complete();
        this._destroyed.next();
        this._destroyed.complete();
        this._viewRepeater.detach();
    }
    /** React to scroll state changes in the viewport. */
    _onRenderedDataChange() {
        if (!this._renderedRange) {
            return;
        }
        this._renderedItems = this._data.slice(this._renderedRange.start, this._renderedRange.end);
        if (!this._differ) {
            this._differ = this._differs.find(this._renderedItems).create(this.cdkVirtualForTrackBy);
        }
        this._needsUpdate = true;
    }
    /** Swap out one `DataSource` for another. */
    _changeDataSource(oldDs, newDs) {
        if (oldDs) {
            oldDs.disconnect(this);
        }
        this._needsUpdate = true;
        return newDs ? newDs.connect(this) : observableOf();
    }
    /** Update the `CdkVirtualForOfContext` for all views. */
    _updateContext() {
        const count = this._data.length;
        let i = this._viewContainerRef.length;
        while (i--) {
            let view = this._viewContainerRef.get(i);
            view.context.index = this._renderedRange.start + i;
            view.context.count = count;
            this._updateComputedContextProperties(view.context);
            view.detectChanges();
        }
    }
    /** Apply changes to the DOM. */
    _applyChanges(changes) {
        this._viewRepeater.applyChanges(changes, this._viewContainerRef, (record, adjustedPreviousIndex, currentIndex) => this._getEmbeddedViewArgs(record, currentIndex), (record) => record.item);
        // Update $implicit for any items that had an identity change.
        changes.forEachIdentityChange((record) => {
            const view = this._viewContainerRef.get(record.currentIndex);
            view.context.$implicit = record.item;
        });
        // Update the context variables on all items.
        const count = this._data.length;
        let i = this._viewContainerRef.length;
        while (i--) {
            const view = this._viewContainerRef.get(i);
            view.context.index = this._renderedRange.start + i;
            view.context.count = count;
            this._updateComputedContextProperties(view.context);
        }
    }
    /** Update the computed properties on the `CdkVirtualForOfContext`. */
    _updateComputedContextProperties(context) {
        context.first = context.index === 0;
        context.last = context.index === context.count - 1;
        context.even = context.index % 2 === 0;
        context.odd = !context.even;
    }
    _getEmbeddedViewArgs(record, index) {
        // Note that it's important that we insert the item directly at the proper index,
        // rather than inserting it and the moving it in place, because if there's a directive
        // on the same node that injects the `ViewContainerRef`, Angular will insert another
        // comment node which can throw off the move when it's being repeated for all items.
        return {
            templateRef: this._template,
            context: {
                $implicit: record.item,
                // It's guaranteed that the iterable is not "undefined" or "null" because we only
                // generate views for elements if the "cdkVirtualForOf" iterable has elements.
                cdkVirtualForOf: this._cdkVirtualForOf,
                index: -1,
                count: -1,
                first: false,
                last: false,
                odd: false,
                even: false
            },
            index,
        };
    }
}
CdkVirtualForOf.decorators = [
    { type: Directive, args: [{
                selector: '[cdkVirtualFor][cdkVirtualForOf]',
                providers: [
                    { provide: _VIEW_REPEATER_STRATEGY, useClass: _RecycleViewRepeaterStrategy },
                ]
            },] }
];
CdkVirtualForOf.ctorParameters = () => [
    { type: ViewContainerRef },
    { type: TemplateRef },
    { type: IterableDiffers },
    { type: _RecycleViewRepeaterStrategy, decorators: [{ type: Inject, args: [_VIEW_REPEATER_STRATEGY,] }] },
    { type: CdkVirtualScrollViewport, decorators: [{ type: SkipSelf }] },
    { type: NgZone }
];
CdkVirtualForOf.propDecorators = {
    cdkVirtualForOf: [{ type: Input }],
    cdkVirtualForTrackBy: [{ type: Input }],
    cdkVirtualForTemplate: [{ type: Input }],
    cdkVirtualForTemplateCacheSize: [{ type: Input }]
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlydHVhbC1mb3Itb2YuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL3Njcm9sbGluZy92aXJ0dWFsLWZvci1vZi50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQ0wsZUFBZSxFQUlmLFlBQVksRUFDWiw0QkFBNEIsRUFDNUIsdUJBQXVCLEdBRXhCLE1BQU0sMEJBQTBCLENBQUM7QUFDbEMsT0FBTyxFQUNMLFNBQVMsRUFHVCxNQUFNLEVBQ04sS0FBSyxFQUlMLGVBQWUsRUFFZixNQUFNLEVBRU4sUUFBUSxFQUNSLFdBQVcsRUFFWCxnQkFBZ0IsR0FDakIsTUFBTSxlQUFlLENBQUM7QUFDdkIsT0FBTyxFQUFDLG9CQUFvQixFQUFjLE1BQU0sdUJBQXVCLENBQUM7QUFDeEUsT0FBTyxFQUFhLE9BQU8sRUFBRSxFQUFFLElBQUksWUFBWSxFQUFFLFlBQVksRUFBQyxNQUFNLE1BQU0sQ0FBQztBQUMzRSxPQUFPLEVBQUMsUUFBUSxFQUFFLFdBQVcsRUFBRSxTQUFTLEVBQUUsU0FBUyxFQUFFLFNBQVMsRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBRXRGLE9BQU8sRUFBQyx3QkFBd0IsRUFBQyxNQUFNLDJCQUEyQixDQUFDO0FBd0JuRSx5RUFBeUU7QUFDekUsU0FBUyxTQUFTLENBQUMsV0FBc0MsRUFBRSxTQUEwQixFQUFFLElBQVU7SUFDL0YsTUFBTSxFQUFFLEdBQUcsSUFBZSxDQUFDO0lBQzNCLElBQUksQ0FBQyxFQUFFLENBQUMscUJBQXFCLEVBQUU7UUFDN0IsT0FBTyxDQUFDLENBQUM7S0FDVjtJQUNELE1BQU0sSUFBSSxHQUFHLEVBQUUsQ0FBQyxxQkFBcUIsRUFBRSxDQUFDO0lBRXhDLElBQUksV0FBVyxLQUFLLFlBQVksRUFBRTtRQUNoQyxPQUFPLFNBQVMsS0FBSyxPQUFPLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQyxD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LEtBQUssRUFBRSxDQUFDLENBQUM7Z0JBQ1QsS0FBSyxFQUFFLEtBQUs7Z0JBQ1osSUFBSSxFQUFFLEtBQUs7Z0JBQ1gsR0FBRyxFQUFFLEtBQUs7Z0JBQ1YsSUFBSSxFQUFFLEtBQUs7YUFDWjtZQUNELEtBQUs7U0FDTixDQUFDO0lBQ0osQ0FBQzs7O1lBdlNGLFNBQVMsU0FBQztnQkFDVCxRQUFRLEVBQUUsa0NBQWtDO2dCQUM1QyxTQUFTLEVBQUU7b0JBQ1QsRUFBQyxPQUFPLEVBQUUsdUJBQXVCLEVBQUUsUUFBUSxFQUFFLDRCQUE0QixFQUFDO2lCQUMzRTthQUNGOzs7WUF0REMsZ0JBQWdCO1lBRmhCLFdBQVc7WUFMWCxlQUFlO1lBYmYsNEJBQTRCLHVCQWlMdkIsTUFBTSxTQUFDLHVCQUF1QjtZQXZKN0Isd0JBQXdCLHVCQTBKekIsUUFBUTtZQXJLYixNQUFNOzs7OEJBcUVMLEtBQUs7bUNBcUJMLEtBQUs7b0NBYUwsS0FBSzs2Q0FZTCxLQUFLIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7XG4gIEFycmF5RGF0YVNvdXJjZSxcbiAgQ29sbGVjdGlvblZpZXdlcixcbiAgRGF0YVNvdXJjZSxcbiAgTGlzdFJhbmdlLFxuICBpc0RhdGFTb3VyY2UsXG4gIF9SZWN5Y2xlVmlld1JlcGVhdGVyU3RyYXRlZ3ksXG4gIF9WSUVXX1JFUEVBVEVSX1NUUkFURUdZLFxuICBfVmlld1JlcGVhdGVySXRlbUluc2VydEFyZ3MsXG59IGZyb20gJ0Bhbmd1bGFyL2Nkay9jb2xsZWN0aW9ucyc7XG5pbXBvcnQge1xuICBEaXJlY3RpdmUsXG4gIERvQ2hlY2ssXG4gIEVtYmVkZGVkVmlld1JlZixcbiAgSW5qZWN0LFxuICBJbnB1dCxcbiAgSXRlcmFibGVDaGFuZ2VSZWNvcmQsXG4gIEl0ZXJhYmxlQ2hhbmdlcyxcbiAgSXRlcmFibGVEaWZmZXIsXG4gIEl0ZXJhYmxlRGlmZmVycyxcbiAgTmdJdGVyYWJsZSxcbiAgTmdab25lLFxuICBPbkRlc3Ryb3ksXG4gIFNraXBTZWxmLFxuICBUZW1wbGF0ZVJlZixcbiAgVHJhY2tCeUZ1bmN0aW9uLFxuICBWaWV3Q29udGFpbmVyUmVmLFxufSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7Y29lcmNlTnVtYmVyUHJvcGVydHksIE51bWJlcklucHV0fSBmcm9tICdAYW5ndWxhci9jZGsvY29lcmNpb24nO1xuaW1wb3J0IHtPYnNlcnZhYmxlLCBTdWJqZWN0LCBvZiBhcyBvYnNlcnZhYmxlT2YsIGlzT2JzZXJ2YWJsZX0gZnJvbSAncnhqcyc7XG5pbXBvcnQge3BhaXJ3aXNlLCBzaGFyZVJlcGxheSwgc3RhcnRXaXRoLCBzd2l0Y2hNYXAsIHRha2VVbnRpbH0gZnJvbSAncnhqcy9vcGVyYXRvcnMnO1xuaW1wb3J0IHtDZGtWaXJ0dWFsU2Nyb2xsUmVwZWF0ZXJ9IGZyb20gJy4vdmlydHVhbC1zY3JvbGwtcmVwZWF0ZXInO1xuaW1wb3J0IHtDZGtWaXJ0dWFsU2Nyb2xsVmlld3BvcnR9IGZyb20gJy4vdmlydHVhbC1zY3JvbGwtdmlld3BvcnQnO1xuXG5cbi8qKiBUaGUgY29udGV4dCBmb3IgYW4gaXRlbSByZW5kZXJlZCBieSBgQ2RrVmlydHVhbEZvck9mYCAqL1xuZXhwb3J0IHR5cGUgQ2RrVmlydHVhbEZvck9mQ29udGV4dDxUPiA9IHtcbiAgLyoqIFRoZSBpdGVtIHZhbHVlLiAqL1xuICAkaW1wbGljaXQ6IFQ7XG4gIC8qKiBUaGUgRGF0YVNvdXJjZSwgT2JzZXJ2YWJsZSwgb3IgTmdJdGVyYWJsZSB0aGF0IHdhcyBwYXNzZWQgdG8gKmNka1ZpcnR1YWxGb3IuICovXG4gIGNka1ZpcnR1YWxGb3JPZjogRGF0YVNvdXJjZTxUPiB8IE9ic2VydmFibGU8VFtdPiB8IE5nSXRlcmFibGU8VD47XG4gIC8qKiBUaGUgaW5kZXggb2YgdGhlIGl0ZW0gaW4gdGhlIERhdGFTb3VyY2UuICovXG4gIGluZGV4OiBudW1iZXI7XG4gIC8qKiBUaGUgbnVtYmVyIG9mIGl0ZW1zIGluIHRoZSBEYXRhU291cmNlLiAqL1xuICBjb3VudDogbnVtYmVyO1xuICAvKiogV2hldGhlciB0aGlzIGlzIHRoZSBmaXJzdCBpdGVtIGluIHRoZSBEYXRhU291cmNlLiAqL1xuICBmaXJzdDogYm9vbGVhbjtcbiAgLyoqIFdoZXRoZXIgdGhpcyBpcyB0aGUgbGFzdCBpdGVtIGluIHRoZSBEYXRhU291cmNlLiAqL1xuICBsYXN0OiBib29sZWFuO1xuICAvKiogV2hldGhlciB0aGUgaW5kZXggaXMgZXZlbi4gKi9cbiAgZXZlbjogYm9vbGVhbjtcbiAgLyoqIFdoZXRoZXIgdGhlIGluZGV4IGlzIG9kZC4gKi9cbiAgb2RkOiBib29sZWFuO1xufTtcblxuXG4vKiogSGVscGVyIHRvIGV4dHJhY3QgdGhlIG9mZnNldCBvZiBhIERPTSBOb2RlIGluIGEgY2VydGFpbiBkaXJlY3Rpb24uICovXG5mdW5jdGlvbiBnZXRPZmZzZXQob3JpZW50YXRpb246ICdob3Jpem9udGFsJyB8ICd2ZXJ0aWNhbCcsIGRpcmVjdGlvbjogJ3N0YXJ0JyB8ICdlbmQnLCBub2RlOiBOb2RlKSB7XG4gIGNvbnN0IGVsID0gbm9kZSBhcyBFbGVtZW50O1xuICBpZiAoIWVsLmdldEJvdW5kaW5nQ2xpZW50UmVjdCkge1xuICAgIHJldHVybiAwO1xuICB9XG4gIGNvbnN0IHJlY3QgPSBlbC5nZXRCb3VuZGluZ0NsaWVudFJlY3QoKTtcblxuICBpZiAob3JpZW50YXRpb24gPT09ICdob3Jpem9udGFsJykge1xuICAgIHJldHVybiBkaXJlY3Rpb24gPT09ICdzdGFydCcgPyByZWN0LmxlZnQgOiByZWN0LnJpZ2h0O1xuICB9XG5cbiAgcmV0dXJuIGRpcmVjdGlvbiA9PT0gJ3N0YXJ0JyA/IHJlY3QudG9wIDogcmVjdC5ib3R0b207XG59XG5cbi8qKlxuICogQSBkaXJlY3RpdmUgc2ltaWxhciB0byBgbmdGb3JPZmAgdG8gYmUgdXNlZCBmb3IgcmVuZGVyaW5nIGRhdGEgaW5zaWRlIGEgdmlydHVhbCBzY3JvbGxpbmdcbiAqIGNvbnRhaW5lci5cbiAqL1xuQERpcmVjdGl2ZSh7XG4gIHNlbGVjdG9yOiAnW2Nka1ZpcnR1YWxGb3JdW2Nka1ZpcnR1YWxGb3JPZl0nLFxuICBwcm92aWRlcnM6IFtcbiAgICB7cHJvdmlkZTogX1ZJRVdfUkVQRUFURVJfU1RSQVRFR1ksIHVzZUNsYXNzOiBfUmVjeWNsZVZpZXdSZXBlYXRlclN0cmF0ZWd5fSxcbiAgXVxufSlcbmV4cG9ydCBjbGFzcyBDZGtWaXJ0dWFsRm9yT2Y8VD4gaW1wbGVtZW50c1xuICAgIENka1ZpcnR1YWxTY3JvbGxSZXBlYXRlcjxUPiwgQ29sbGVjdGlvblZpZXdlciwgRG9DaGVjaywgT25EZXN0cm95IHtcbiAgLyoqIEVtaXRzIHdoZW4gdGhlIHJlbmRlcmVkIHZpZXcgb2YgdGhlIGRhdGEgY2hhbmdlcy4gKi9cbiAgdmlld0NoYW5nZSA9IG5ldyBTdWJqZWN0PExpc3RSYW5nZT4oKTtcblxuICAvKiogU3ViamVjdCB0aGF0IGVtaXRzIHdoZW4gYSBuZXcgRGF0YVNvdXJjZSBpbnN0YW5jZSBpcyBnaXZlbi4gKi9cbiAgcHJpdmF0ZSBfZGF0YVNvdXJjZUNoYW5nZXMgPSBuZXcgU3ViamVjdDxEYXRhU291cmNlPFQ+PigpO1xuXG4gIC8qKiBUaGUgRGF0YVNvdXJjZSB0byBkaXNwbGF5LiAqL1xuICBASW5wdXQoKVxuICBnZXQgY2RrVmlydHVhbEZvck9mKCk6IERhdGFTb3VyY2U8VD4gfCBPYnNlcnZhYmxlPFRbXT4gfCBOZ0l0ZXJhYmxlPFQ+IHwgbnVsbCB8IHVuZGVmaW5lZCB7XG4gICAgcmV0dXJuIHRoaXMuX2Nka1ZpcnR1YWxGb3JPZjtcbiAgfVxuICBzZXQgY2RrVmlydHVhbEZvck9mKHZhbHVlOiBEYXRhU291cmNlPFQ+IHwgT2JzZXJ2YWJsZTxUW10+IHwgTmdJdGVyYWJsZTxUPiB8IG51bGwgfCB1bmRlZmluZWQpIHtcbiAgICB0aGlzLl9jZGtWaXJ0dWFsRm9yT2YgPSB2YWx1ZTtcbiAgICBpZiAoaXNEYXRhU291cmNlKHZhbHVlKSkge1xuICAgICAgdGhpcy5fZGF0YVNvdXJjZUNoYW5nZXMubmV4dCh2YWx1ZSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIFNsaWNlIHRoZSB2YWx1ZSBpZiBpdHMgYW4gTmdJdGVyYWJsZSB0byBlbnN1cmUgd2UncmUgd29ya2luZyB3aXRoIGFuIGFycmF5LlxuICAgICAgdGhpcy5fZGF0YVNvdXJjZUNoYW5nZXMubmV4dChuZXcgQXJyYXlEYXRhU291cmNlPFQ+KFxuICAgICAgICAgIGlzT2JzZXJ2YWJsZSh2YWx1ZSkgPyB2YWx1ZSA6IEFycmF5LnByb3RvdHlwZS5zbGljZS5jYWxsKHZhbHVlIHx8IFtdKSkpO1xuICAgIH1cbiAgfVxuXG4gIF9jZGtWaXJ0dWFsRm9yT2Y6IERhdGFTb3VyY2U8VD4gfCBPYnNlcnZhYmxlPFRbXT4gfCBOZ0l0ZXJhYmxlPFQ+IHwgbnVsbCB8IHVuZGVmaW5lZDtcblxuICAvKipcbiAgICogVGhlIGBUcmFja0J5RnVuY3Rpb25gIHRvIHVzZSBmb3IgdHJhY2tpbmcgY2hhbmdlcy4gVGhlIGBUcmFja0J5RnVuY3Rpb25gIHRha2VzIHRoZSBpbmRleCBhbmRcbiAgICogdGhlIGl0ZW0gYW5kIHByb2R1Y2VzIGEgdmFsdWUgdG8gYmUgdXNlZCBhcyB0aGUgaXRlbSdzIGlkZW50aXR5IHdoZW4gdHJhY2tpbmcgY2hhbmdlcy5cbiAgICovXG4gIEBJbnB1dCgpXG4gIGdldCBjZGtWaXJ0dWFsRm9yVHJhY2tCeSgpOiBUcmFja0J5RnVuY3Rpb248VD4gfCB1bmRlZmluZWQge1xuICAgIHJldHVybiB0aGlzLl9jZGtWaXJ0dWFsRm9yVHJhY2tCeTtcbiAgfVxuICBzZXQgY2RrVmlydHVhbEZvclRyYWNrQnkoZm46IFRyYWNrQnlGdW5jdGlvbjxUPiB8IHVuZGVmaW5lZCkge1xuICAgIHRoaXMuX25lZWRzVXBkYXRlID0gdHJ1ZTtcbiAgICB0aGlzLl9jZGtWaXJ0dWFsRm9yVHJhY2tCeSA9IGZuID9cbiAgICAgICAgKGluZGV4LCBpdGVtKSA9PiBmbihpbmRleCArICh0aGlzLl9yZW5kZXJlZFJhbmdlID8gdGhpcy5fcmVuZGVyZWRSYW5nZS5zdGFydCA6IDApLCBpdGVtKSA6XG4gICAgICAgIHVuZGVmaW5lZDtcbiAgfVxuICBwcml2YXRlIF9jZGtWaXJ0dWFsRm9yVHJhY2tCeTogVHJhY2tCeUZ1bmN0aW9uPFQ+IHwgdW5kZWZpbmVkO1xuXG4gIC8qKiBUaGUgdGVtcGxhdGUgdXNlZCB0byBzdGFtcCBvdXQgbmV3IGVsZW1lbnRzLiAqL1xuICBASW5wdXQoKVxuICBzZXQgY2RrVmlydHVhbEZvclRlbXBsYXRlKHZhbHVlOiBUZW1wbGF0ZVJlZjxDZGtWaXJ0dWFsRm9yT2ZDb250ZXh0PFQ+Pikge1xuICAgIGlmICh2YWx1ZSkge1xuICAgICAgdGhpcy5fbmVlZHNVcGRhdGUgPSB0cnVlO1xuICAgICAgdGhpcy5fdGVtcGxhdGUgPSB2YWx1ZTtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogVGhlIHNpemUgb2YgdGhlIGNhY2hlIHVzZWQgdG8gc3RvcmUgdGVtcGxhdGVzIHRoYXQgYXJlIG5vdCBiZWluZyB1c2VkIGZvciByZS11c2UgbGF0ZXIuXG4gICAqIFNldHRpbmcgdGhlIGNhY2hlIHNpemUgdG8gYDBgIHdpbGwgZGlzYWJsZSBjYWNoaW5nLiBEZWZhdWx0cyB0byAyMCB0ZW1wbGF0ZXMuXG4gICAqL1xuICBASW5wdXQoKVxuICBnZXQgY2RrVmlydHVhbEZvclRlbXBsYXRlQ2FjaGVTaXplKCkge1xuICAgIHJldHVybiB0aGlzLl92aWV3UmVwZWF0ZXIudmlld0NhY2hlU2l6ZTtcbiAgfVxuICBzZXQgY2RrVmlydHVhbEZvclRlbXBsYXRlQ2FjaGVTaXplKHNpemU6IG51bWJlcikge1xuICAgIHRoaXMuX3ZpZXdSZXBlYXRlci52aWV3Q2FjaGVTaXplID0gY29lcmNlTnVtYmVyUHJvcGVydHkoc2l6ZSk7XG4gIH1cblxuICAvKiogRW1pdHMgd2hlbmV2ZXIgdGhlIGRhdGEgaW4gdGhlIGN1cnJlbnQgRGF0YVNvdXJjZSBjaGFuZ2VzLiAqL1xuICBkYXRhU3RyZWFtOiBPYnNlcnZhYmxlPFRbXSB8IFJlYWRvbmx5QXJyYXk8VD4+ID0gdGhpcy5fZGF0YVNvdXJjZUNoYW5nZXNcbiAgLnBpcGUoXG4gICAgICAvLyBTdGFydCBvZmYgd2l0aCBudWxsIGBEYXRhU291cmNlYC5cbiAgICAgIHN0YXJ0V2l0aChudWxsISksXG4gICAgICAvLyBCdW5kbGUgdXAgdGhlIHByZXZpb3VzIGFuZCBjdXJyZW50IGRhdGEgc291cmNlcyBzbyB3ZSBjYW4gd29yayB3aXRoIGJvdGguXG4gICAgICBwYWlyd2lzZSgpLFxuICAgICAgLy8gVXNlIGBfY2hhbmdlRGF0YVNvdXJjZWAgdG8gZGlzY29ubmVjdCBmcm9tIHRoZSBwcmV2aW91cyBkYXRhIHNvdXJjZSBhbmQgY29ubmVjdCB0byB0aGVcbiAgICAgIC8vIG5ldyBvbmUsIHBhc3NpbmcgYmFjayBhIHN0cmVhbSBvZiBkYXRhIGNoYW5nZXMgd2hpY2ggd2UgcnVuIHRocm91Z2ggYHN3aXRjaE1hcGAgdG8gZ2l2ZVxuICAgICAgLy8gdXMgYSBkYXRhIHN0cmVhbSB0aGF0IGVtaXRzIHRoZSBsYXRlc3QgZGF0YSBmcm9tIHdoYXRldmVyIHRoZSBjdXJyZW50IGBEYXRhU291cmNlYCBpcy5cbiAgICAgIHN3aXRjaE1hcCgoW3ByZXYsIGN1cl0pID0+IHRoaXMuX2NoYW5nZURhdGFTb3VyY2UocHJldiwgY3VyKSksXG4gICAgICAvLyBSZXBsYXkgdGhlIGxhc3QgZW1pdHRlZCBkYXRhIHdoZW4gc29tZW9uZSBzdWJzY3JpYmVzLlxuICAgICAgc2hhcmVSZXBsYXkoMSkpO1xuXG4gIC8qKiBUaGUgZGlmZmVyIHVzZWQgdG8gY2FsY3VsYXRlIGNoYW5nZXMgdG8gdGhlIGRhdGEuICovXG4gIHByaXZhdGUgX2RpZmZlcjogSXRlcmFibGVEaWZmZXI8VD4gfCBudWxsID0gbnVsbDtcblxuICAvKiogVGhlIG1vc3QgcmVjZW50IGRhdGEgZW1pdHRlZCBmcm9tIHRoZSBEYXRhU291cmNlLiAqL1xuICBwcml2YXRlIF9kYXRhOiBUW10gfCBSZWFkb25seUFycmF5PFQ+O1xuXG4gIC8qKiBUaGUgY3VycmVudGx5IHJlbmRlcmVkIGl0ZW1zLiAqL1xuICBwcml2YXRlIF9yZW5kZXJlZEl0ZW1zOiBUW107XG5cbiAgLyoqIFRoZSBjdXJyZW50bHkgcmVuZGVyZWQgcmFuZ2Ugb2YgaW5kaWNlcy4gKi9cbiAgcHJpdmF0ZSBfcmVuZGVyZWRSYW5nZTogTGlzdFJhbmdlO1xuXG4gIC8qKiBXaGV0aGVyIHRoZSByZW5kZXJlZCBkYXRhIHNob3VsZCBiZSB1cGRhdGVkIGR1cmluZyB0aGUgbmV4dCBuZ0RvQ2hlY2sgY3ljbGUuICovXG4gIHByaXZhdGUgX25lZWRzVXBkYXRlID0gZmFsc2U7XG5cbiAgcHJpdmF0ZSBfZGVzdHJveWVkID0gbmV3IFN1YmplY3Q8dm9pZD4oKTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIC8qKiBUaGUgdmlldyBjb250YWluZXIgdG8gYWRkIGl0ZW1zIHRvLiAqL1xuICAgICAgcHJpdmF0ZSBfdmlld0NvbnRhaW5lclJlZjogVmlld0NvbnRhaW5lclJlZixcbiAgICAgIC8qKiBUaGUgdGVtcGxhdGUgdG8gdXNlIHdoZW4gc3RhbXBpbmcgb3V0IG5ldyBpdGVtcy4gKi9cbiAgICAgIHByaXZhdGUgX3RlbXBsYXRlOiBUZW1wbGF0ZVJlZjxDZGtWaXJ0dWFsRm9yT2ZDb250ZXh0PFQ+PixcbiAgICAgIC8qKiBUaGUgc2V0IG9mIGF2YWlsYWJsZSBkaWZmZXJzLiAqL1xuICAgICAgcHJpdmF0ZSBfZGlmZmVyczogSXRlcmFibGVEaWZmZXJzLFxuICAgICAgLyoqIFRoZSBzdHJhdGVneSB1c2VkIHRvIHJlbmRlciBpdGVtcyBpbiB0aGUgdmlydHVhbCBzY3JvbGwgdmlld3BvcnQuICovXG4gICAgICBASW5qZWN0KF9WSUVXX1JFUEVBVEVSX1NUUkFURUdZKVxuICAgICAgcHJpdmF0ZSBfdmlld1JlcGVhdGVyOiBfUmVjeWNsZVZpZXdSZXBlYXRlclN0cmF0ZWd5PFQsIFQsIENka1ZpcnR1YWxGb3JPZkNvbnRleHQ8VD4+LFxuICAgICAgLyoqIFRoZSB2aXJ0dWFsIHNjcm9sbGluZyB2aWV3cG9ydCB0aGF0IHRoZXNlIGl0ZW1zIGFyZSBiZWluZyByZW5kZXJlZCBpbi4gKi9cbiAgICAgIEBTa2lwU2VsZigpIHByaXZhdGUgX3ZpZXdwb3J0OiBDZGtWaXJ0dWFsU2Nyb2xsVmlld3BvcnQsXG4gICAgICBuZ1pvbmU6IE5nWm9uZSkge1xuICAgIHRoaXMuZGF0YVN0cmVhbS5zdWJzY3JpYmUoZGF0YSA9PiB7XG4gICAgICB0aGlzLl9kYXRhID0gZGF0YTtcbiAgICAgIHRoaXMuX29uUmVuZGVyZWREYXRhQ2hhbmdlKCk7XG4gICAgfSk7XG4gICAgdGhpcy5fdmlld3BvcnQucmVuZGVyZWRSYW5nZVN0cmVhbS5waXBlKHRha2VVbnRpbCh0aGlzLl9kZXN0cm95ZWQpKS5zdWJzY3JpYmUocmFuZ2UgPT4ge1xuICAgICAgdGhpcy5fcmVuZGVyZWRSYW5nZSA9IHJhbmdlO1xuICAgICAgbmdab25lLnJ1bigoKSA9PiB0aGlzLnZpZXdDaGFuZ2UubmV4dCh0aGlzLl9yZW5kZXJlZFJhbmdlKSk7XG4gICAgICB0aGlzLl9vblJlbmRlcmVkRGF0YUNoYW5nZSgpO1xuICAgIH0pO1xuICAgIHRoaXMuX3ZpZXdwb3J0LmF0dGFjaCh0aGlzKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBNZWFzdXJlcyB0aGUgY29tYmluZWQgc2l6ZSAod2lkdGggZm9yIGhvcml6b250YWwgb3JpZW50YXRpb24sIGhlaWdodCBmb3IgdmVydGljYWwpIG9mIGFsbCBpdGVtc1xuICAgKiBpbiB0aGUgc3BlY2lmaWVkIHJhbmdlLiBUaHJvd3MgYW4gZXJyb3IgaWYgdGhlIHJhbmdlIGluY2x1ZGVzIGl0ZW1zIHRoYXQgYXJlIG5vdCBjdXJyZW50bHlcbiAgICogcmVuZGVyZWQuXG4gICAqL1xuICBtZWFzdXJlUmFuZ2VTaXplKHJhbmdlOiBMaXN0UmFuZ2UsIG9yaWVudGF0aW9uOiAnaG9yaXpvbnRhbCcgfCAndmVydGljYWwnKTogbnVtYmVyIHtcbiAgICBpZiAocmFuZ2Uuc3RhcnQgPj0gcmFuZ2UuZW5kKSB7XG4gICAgICByZXR1cm4gMDtcbiAgICB9XG4gICAgaWYgKChyYW5nZS5zdGFydCA8IHRoaXMuX3JlbmRlcmVkUmFuZ2Uuc3RhcnQgfHwgcmFuZ2UuZW5kID4gdGhpcy5fcmVuZGVyZWRSYW5nZS5lbmQpICYmXG4gICAgICAodHlwZW9mIG5nRGV2TW9kZSA9PT0gJ3VuZGVmaW5lZCcgfHwgbmdEZXZNb2RlKSkge1xuICAgICAgdGhyb3cgRXJyb3IoYEVycm9yOiBhdHRlbXB0ZWQgdG8gbWVhc3VyZSBhbiBpdGVtIHRoYXQgaXNuJ3QgcmVuZGVyZWQuYCk7XG4gICAgfVxuXG4gICAgLy8gVGhlIGluZGV4IGludG8gdGhlIGxpc3Qgb2YgcmVuZGVyZWQgdmlld3MgZm9yIHRoZSBmaXJzdCBpdGVtIGluIHRoZSByYW5nZS5cbiAgICBjb25zdCByZW5kZXJlZFN0YXJ0SW5kZXggPSByYW5nZS5zdGFydCAtIHRoaXMuX3JlbmRlcmVkUmFuZ2Uuc3RhcnQ7XG4gICAgLy8gVGhlIGxlbmd0aCBvZiB0aGUgcmFuZ2Ugd2UncmUgbWVhc3VyaW5nLlxuICAgIGNvbnN0IHJhbmdlTGVuID0gcmFuZ2UuZW5kIC0gcmFuZ2Uuc3RhcnQ7XG5cbiAgICAvLyBMb29wIG92ZXIgYWxsIHRoZSB2aWV3cywgZmluZCB0aGUgZmlyc3QgYW5kIGxhbmQgbm9kZSBhbmQgY29tcHV0ZSB0aGUgc2l6ZSBieSBzdWJ0cmFjdGluZ1xuICAgIC8vIHRoZSB0b3Agb2YgdGhlIGZpcnN0IG5vZGUgZnJvbSB0aGUgYm90dG9tIG9mIHRoZSBsYXN0IG9uZS5cbiAgICBsZXQgZmlyc3ROb2RlOiBIVE1MRWxlbWVudCB8IHVuZGVmaW5lZDtcbiAgICBsZXQgbGFzdE5vZGU6IEhUTUxFbGVtZW50IHwgdW5kZWZpbmVkO1xuXG4gICAgLy8gRmluZCB0aGUgZmlyc3Qgbm9kZSBieSBzdGFydGluZyBmcm9tIHRoZSBiZWdpbm5pbmcgYW5kIGdvaW5nIGZvcndhcmRzLlxuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgcmFuZ2VMZW47IGkrKykge1xuICAgICAgY29uc3QgdmlldyA9IHRoaXMuX3ZpZXdDb250YWluZXJSZWYuZ2V0KGkgKyByZW5kZXJlZFN0YXJ0SW5kZXgpIGFzXG4gICAgICAgICAgRW1iZWRkZWRWaWV3UmVmPENka1ZpcnR1YWxGb3JPZkNvbnRleHQ8VD4+IHwgbnVsbDtcbiAgICAgIGlmICh2aWV3ICYmIHZpZXcucm9vdE5vZGVzLmxlbmd0aCkge1xuICAgICAgICBmaXJzdE5vZGUgPSBsYXN0Tm9kZSA9IHZpZXcucm9vdE5vZGVzWzBdO1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyBGaW5kIHRoZSBsYXN0IG5vZGUgYnkgc3RhcnRpbmcgZnJvbSB0aGUgZW5kIGFuZCBnb2luZyBiYWNrd2FyZHMuXG4gICAgZm9yIChsZXQgaSA9IHJhbmdlTGVuIC0gMTsgaSA+IC0xOyBpLS0pIHtcbiAgICAgIGNvbnN0IHZpZXcgPSB0aGlzLl92aWV3Q29udGFpbmVyUmVmLmdldChpICsgcmVuZGVyZWRTdGFydEluZGV4KSBhc1xuICAgICAgICAgIEVtYmVkZGVkVmlld1JlZjxDZGtWaXJ0dWFsRm9yT2ZDb250ZXh0PFQ+PiB8IG51bGw7XG4gICAgICBpZiAodmlldyAmJiB2aWV3LnJvb3ROb2Rlcy5sZW5ndGgpIHtcbiAgICAgICAgbGFzdE5vZGUgPSB2aWV3LnJvb3ROb2Rlc1t2aWV3LnJvb3ROb2Rlcy5sZW5ndGggLSAxXTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgfVxuXG4gICAgcmV0dXJuIGZpcnN0Tm9kZSAmJiBsYXN0Tm9kZSA/XG4gICAgICAgIGdldE9mZnNldChvcmllbnRhdGlvbiwgJ2VuZCcsIGxhc3ROb2RlKSAtIGdldE9mZnNldChvcmllbnRhdGlvbiwgJ3N0YXJ0JywgZmlyc3ROb2RlKSA6IDA7XG4gIH1cblxuICBuZ0RvQ2hlY2soKSB7XG4gICAgaWYgKHRoaXMuX2RpZmZlciAmJiB0aGlzLl9uZWVkc1VwZGF0ZSkge1xuICAgICAgLy8gVE9ETyhtbWFsZXJiYSk6IFdlIHNob3VsZCBkaWZmZXJlbnRpYXRlIG5lZWRzIHVwZGF0ZSBkdWUgdG8gc2Nyb2xsaW5nIGFuZCBhIG5ldyBwb3J0aW9uIG9mXG4gICAgICAvLyB0aGlzIGxpc3QgYmVpbmcgcmVuZGVyZWQgKGNhbiB1c2Ugc2ltcGxlciBhbGdvcml0aG0pIHZzIG5lZWRzIHVwZGF0ZSBkdWUgdG8gZGF0YSBhY3R1YWxseVxuICAgICAgLy8gY2hhbmdpbmcgKG5lZWQgdG8gZG8gdGhpcyBkaWZmKS5cbiAgICAgIGNvbnN0IGNoYW5nZXMgPSB0aGlzLl9kaWZmZXIuZGlmZih0aGlzLl9yZW5kZXJlZEl0ZW1zKTtcbiAgICAgIGlmICghY2hhbmdlcykge1xuICAgICAgICB0aGlzLl91cGRhdGVDb250ZXh0KCk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICB0aGlzLl9hcHBseUNoYW5nZXMoY2hhbmdlcyk7XG4gICAgICB9XG4gICAgICB0aGlzLl9uZWVkc1VwZGF0ZSA9IGZhbHNlO1xuICAgIH1cbiAgfVxuXG4gIG5nT25EZXN0cm95KCkge1xuICAgIHRoaXMuX3ZpZXdwb3J0LmRldGFjaCgpO1xuXG4gICAgdGhpcy5fZGF0YVNvdXJjZUNoYW5nZXMubmV4dCh1bmRlZmluZWQhKTtcbiAgICB0aGlzLl9kYXRhU291cmNlQ2hhbmdlcy5jb21wbGV0ZSgpO1xuICAgIHRoaXMudmlld0NoYW5nZS5jb21wbGV0ZSgpO1xuXG4gICAgdGhpcy5fZGVzdHJveWVkLm5leHQoKTtcbiAgICB0aGlzLl9kZXN0cm95ZWQuY29tcGxldGUoKTtcbiAgICB0aGlzLl92aWV3UmVwZWF0ZXIuZGV0YWNoKCk7XG4gIH1cblxuICAvKiogUmVhY3QgdG8gc2Nyb2xsIHN0YXRlIGNoYW5nZXMgaW4gdGhlIHZpZXdwb3J0LiAqL1xuICBwcml2YXRlIF9vblJlbmRlcmVkRGF0YUNoYW5nZSgpIHtcbiAgICBpZiAoIXRoaXMuX3JlbmRlcmVkUmFuZ2UpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG4gICAgdGhpcy5fcmVuZGVyZWRJdGVtcyA9IHRoaXMuX2RhdGEuc2xpY2UodGhpcy5fcmVuZGVyZWRSYW5nZS5zdGFydCwgdGhpcy5fcmVuZGVyZWRSYW5nZS5lbmQpO1xuICAgIGlmICghdGhpcy5fZGlmZmVyKSB7XG4gICAgICB0aGlzLl9kaWZmZXIgPSB0aGlzLl9kaWZmZXJzLmZpbmQodGhpcy5fcmVuZGVyZWRJdGVtcykuY3JlYXRlKHRoaXMuY2RrVmlydHVhbEZvclRyYWNrQnkpO1xuICAgIH1cbiAgICB0aGlzLl9uZWVkc1VwZGF0ZSA9IHRydWU7XG4gIH1cblxuICAvKiogU3dhcCBvdXQgb25lIGBEYXRhU291cmNlYCBmb3IgYW5vdGhlci4gKi9cbiAgcHJpdmF0ZSBfY2hhbmdlRGF0YVNvdXJjZShvbGREczogRGF0YVNvdXJjZTxUPiB8IG51bGwsIG5ld0RzOiBEYXRhU291cmNlPFQ+IHwgbnVsbCk6XG4gICAgICBPYnNlcnZhYmxlPFRbXSB8IFJlYWRvbmx5QXJyYXk8VD4+IHtcblxuICAgIGlmIChvbGREcykge1xuICAgICAgb2xkRHMuZGlzY29ubmVjdCh0aGlzKTtcbiAgICB9XG5cbiAgICB0aGlzLl9uZWVkc1VwZGF0ZSA9IHRydWU7XG4gICAgcmV0dXJuIG5ld0RzID8gbmV3RHMuY29ubmVjdCh0aGlzKSA6IG9ic2VydmFibGVPZigpO1xuICB9XG5cbiAgLyoqIFVwZGF0ZSB0aGUgYENka1ZpcnR1YWxGb3JPZkNvbnRleHRgIGZvciBhbGwgdmlld3MuICovXG4gIHByaXZhdGUgX3VwZGF0ZUNvbnRleHQoKSB7XG4gICAgY29uc3QgY291bnQgPSB0aGlzLl9kYXRhLmxlbmd0aDtcbiAgICBsZXQgaSA9IHRoaXMuX3ZpZXdDb250YWluZXJSZWYubGVuZ3RoO1xuICAgIHdoaWxlIChpLS0pIHtcbiAgICAgIGxldCB2aWV3ID0gdGhpcy5fdmlld0NvbnRhaW5lclJlZi5nZXQoaSkgYXMgRW1iZWRkZWRWaWV3UmVmPENka1ZpcnR1YWxGb3JPZkNvbnRleHQ8VD4+O1xuICAgICAgdmlldy5jb250ZXh0LmluZGV4ID0gdGhpcy5fcmVuZGVyZWRSYW5nZS5zdGFydCArIGk7XG4gICAgICB2aWV3LmNvbnRleHQuY291bnQgPSBjb3VudDtcbiAgICAgIHRoaXMuX3VwZGF0ZUNvbXB1dGVkQ29udGV4dFByb3BlcnRpZXModmlldy5jb250ZXh0KTtcbiAgICAgIHZpZXcuZGV0ZWN0Q2hhbmdlcygpO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBBcHBseSBjaGFuZ2VzIHRvIHRoZSBET00uICovXG4gIHByaXZhdGUgX2FwcGx5Q2hhbmdlcyhjaGFuZ2VzOiBJdGVyYWJsZUNoYW5nZXM8VD4pIHtcbiAgICB0aGlzLl92aWV3UmVwZWF0ZXIuYXBwbHlDaGFuZ2VzKFxuICAgICAgICBjaGFuZ2VzLFxuICAgICAgICB0aGlzLl92aWV3Q29udGFpbmVyUmVmLFxuICAgICAgICAocmVjb3JkOiBJdGVyYWJsZUNoYW5nZVJlY29yZDxUPixcbiAgICAgICAgIGFkanVzdGVkUHJldmlvdXNJbmRleDogbnVtYmVyIHwgbnVsbCxcbiAgICAgICAgIGN1cnJlbnRJbmRleDogbnVtYmVyIHwgbnVsbCkgPT4gdGhpcy5fZ2V0RW1iZWRkZWRWaWV3QXJncyhyZWNvcmQsIGN1cnJlbnRJbmRleCEpLFxuICAgICAgICAocmVjb3JkKSA9PiByZWNvcmQuaXRlbSk7XG5cbiAgICAvLyBVcGRhdGUgJGltcGxpY2l0IGZvciBhbnkgaXRlbXMgdGhhdCBoYWQgYW4gaWRlbnRpdHkgY2hhbmdlLlxuICAgIGNoYW5nZXMuZm9yRWFjaElkZW50aXR5Q2hhbmdlKChyZWNvcmQ6IEl0ZXJhYmxlQ2hhbmdlUmVjb3JkPFQ+KSA9PiB7XG4gICAgICBjb25zdCB2aWV3ID0gdGhpcy5fdmlld0NvbnRhaW5lclJlZi5nZXQocmVjb3JkLmN1cnJlbnRJbmRleCEpIGFzXG4gICAgICAgICAgRW1iZWRkZWRWaWV3UmVmPENka1ZpcnR1YWxGb3JPZkNvbnRleHQ8VD4+O1xuICAgICAgdmlldy5jb250ZXh0LiRpbXBsaWNpdCA9IHJlY29yZC5pdGVtO1xuICAgIH0pO1xuXG4gICAgLy8gVXBkYXRlIHRoZSBjb250ZXh0IHZhcmlhYmxlcyBvbiBhbGwgaXRlbXMuXG4gICAgY29uc3QgY291bnQgPSB0aGlzLl9kYXRhLmxlbmd0aDtcbiAgICBsZXQgaSA9IHRoaXMuX3ZpZXdDb250YWluZXJSZWYubGVuZ3RoO1xuICAgIHdoaWxlIChpLS0pIHtcbiAgICAgIGNvbnN0IHZpZXcgPSB0aGlzLl92aWV3Q29udGFpbmVyUmVmLmdldChpKSBhcyBFbWJlZGRlZFZpZXdSZWY8Q2RrVmlydHVhbEZvck9mQ29udGV4dDxUPj47XG4gICAgICB2aWV3LmNvbnRleHQuaW5kZXggPSB0aGlzLl9yZW5kZXJlZFJhbmdlLnN0YXJ0ICsgaTtcbiAgICAgIHZpZXcuY29udGV4dC5jb3VudCA9IGNvdW50O1xuICAgICAgdGhpcy5fdXBkYXRlQ29tcHV0ZWRDb250ZXh0UHJvcGVydGllcyh2aWV3LmNvbnRleHQpO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBVcGRhdGUgdGhlIGNvbXB1dGVkIHByb3BlcnRpZXMgb24gdGhlIGBDZGtWaXJ0dWFsRm9yT2ZDb250ZXh0YC4gKi9cbiAgcHJpdmF0ZSBfdXBkYXRlQ29tcHV0ZWRDb250ZXh0UHJvcGVydGllcyhjb250ZXh0OiBDZGtWaXJ0dWFsRm9yT2ZDb250ZXh0PGFueT4pIHtcbiAgICBjb250ZXh0LmZpcnN0ID0gY29udGV4dC5pbmRleCA9PT0gMDtcbiAgICBjb250ZXh0Lmxhc3QgPSBjb250ZXh0LmluZGV4ID09PSBjb250ZXh0LmNvdW50IC0gMTtcbiAgICBjb250ZXh0LmV2ZW4gPSBjb250ZXh0LmluZGV4ICUgMiA9PT0gMDtcbiAgICBjb250ZXh0Lm9kZCA9ICFjb250ZXh0LmV2ZW47XG4gIH1cblxuICBwcml2YXRlIF9nZXRFbWJlZGRlZFZpZXdBcmdzKHJlY29yZDogSXRlcmFibGVDaGFuZ2VSZWNvcmQ8VD4sIGluZGV4OiBudW1iZXIpOlxuICAgICAgX1ZpZXdSZXBlYXRlckl0ZW1JbnNlcnRBcmdzPENka1ZpcnR1YWxGb3JPZkNvbnRleHQ8VD4+IHtcbiAgICAvLyBOb3RlIHRoYXQgaXQncyBpbXBvcnRhbnQgdGhhdCB3ZSBpbnNlcnQgdGhlIGl0ZW0gZGlyZWN0bHkgYXQgdGhlIHByb3BlciBpbmRleCxcbiAgICAvLyByYXRoZXIgdGhhbiBpbnNlcnRpbmcgaXQgYW5kIHRoZSBtb3ZpbmcgaXQgaW4gcGxhY2UsIGJlY2F1c2UgaWYgdGhlcmUncyBhIGRpcmVjdGl2ZVxuICAgIC8vIG9uIHRoZSBzYW1lIG5vZGUgdGhhdCBpbmplY3RzIHRoZSBgVmlld0NvbnRhaW5lclJlZmAsIEFuZ3VsYXIgd2lsbCBpbnNlcnQgYW5vdGhlclxuICAgIC8vIGNvbW1lbnQgbm9kZSB3aGljaCBjYW4gdGhyb3cgb2ZmIHRoZSBtb3ZlIHdoZW4gaXQncyBiZWluZyByZXBlYXRlZCBmb3IgYWxsIGl0ZW1zLlxuICAgIHJldHVybiB7XG4gICAgICB0ZW1wbGF0ZVJlZjogdGhpcy5fdGVtcGxhdGUsXG4gICAgICBjb250ZXh0OiB7XG4gICAgICAgICRpbXBsaWNpdDogcmVjb3JkLml0ZW0sXG4gICAgICAgIC8vIEl0J3MgZ3VhcmFudGVlZCB0aGF0IHRoZSBpdGVyYWJsZSBpcyBub3QgXCJ1bmRlZmluZWRcIiBvciBcIm51bGxcIiBiZWNhdXNlIHdlIG9ubHlcbiAgICAgICAgLy8gZ2VuZXJhdGUgdmlld3MgZm9yIGVsZW1lbnRzIGlmIHRoZSBcImNka1ZpcnR1YWxGb3JPZlwiIGl0ZXJhYmxlIGhhcyBlbGVtZW50cy5cbiAgICAgICAgY2RrVmlydHVhbEZvck9mOiB0aGlzLl9jZGtWaXJ0dWFsRm9yT2YhLFxuICAgICAgICBpbmRleDogLTEsXG4gICAgICAgIGNvdW50OiAtMSxcbiAgICAgICAgZmlyc3Q6IGZhbHNlLFxuICAgICAgICBsYXN0OiBmYWxzZSxcbiAgICAgICAgb2RkOiBmYWxzZSxcbiAgICAgICAgZXZlbjogZmFsc2VcbiAgICAgIH0sXG4gICAgICBpbmRleCxcbiAgICB9O1xuICB9XG5cbiAgc3RhdGljIG5nQWNjZXB0SW5wdXRUeXBlX2Nka1ZpcnR1YWxGb3JUZW1wbGF0ZUNhY2hlU2l6ZTogTnVtYmVySW5wdXQ7XG59XG4iXX0=