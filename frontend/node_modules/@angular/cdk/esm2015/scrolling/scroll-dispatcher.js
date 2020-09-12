/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Platform } from '@angular/cdk/platform';
import { Injectable, NgZone, Optional, Inject } from '@angular/core';
import { fromEvent, of as observableOf, Subject, Observable } from 'rxjs';
import { auditTime, filter } from 'rxjs/operators';
import { DOCUMENT } from '@angular/common';
import * as i0 from "@angular/core";
import * as i1 from "@angular/cdk/platform";
import * as i2 from "@angular/common";
/** Time in ms to throttle the scrolling events by default. */
export const DEFAULT_SCROLL_TIME = 20;
/**
 * Service contained all registered Scrollable references and emits an event when any one of the
 * Scrollable references emit a scrolled event.
 */
export class ScrollDispatcher {
    constructor(_ngZone, _platform, 
    /** @breaking-change 11.0.0 make document required */
    document) {
        this._ngZone = _ngZone;
        this._platform = _platform;
        /** Subject for notifying that a registered scrollable reference element has been scrolled. */
        this._scrolled = new Subject();
        /** Keeps track of the global `scroll` and `resize` subscriptions. */
        this._globalSubscription = null;
        /** Keeps track of the amount of subscriptions to `scrolled`. Used for cleaning up afterwards. */
        this._scrolledCount = 0;
        /**
         * Map of all the scrollable references that are registered with the service and their
         * scroll event subscriptions.
         */
        this.scrollContainers = new Map();
        this._document = document;
    }
    /**
     * Registers a scrollable instance with the service and listens for its scrolled events. When the
     * scrollable is scrolled, the service emits the event to its scrolled observable.
     * @param scrollable Scrollable instance to be registered.
     */
    register(scrollable) {
        if (!this.scrollContainers.has(scrollable)) {
            this.scrollContainers.set(scrollable, scrollable.elementScrolled()
                .subscribe(() => this._scrolled.next(scrollable)));
        }
    }
    /**
     * Deregisters a Scrollable reference and unsubscribes from its scroll event observable.
     * @param scrollable Scrollable instance to be deregistered.
     */
    deregister(scrollable) {
        const scrollableReference = this.scrollContainers.get(scrollable);
        if (scrollableReference) {
            scrollableReference.unsubscribe();
            this.scrollContainers.delete(scrollable);
        }
    }
    /**
     * Returns an observable that emits an event whenever any of the registered Scrollable
     * references (or window, document, or body) fire a scrolled event. Can provide a time in ms
     * to override the default "throttle" time.
     *
     * **Note:** in order to avoid hitting change detection for every scroll event,
     * all of the events emitted from this stream will be run outside the Angular zone.
     * If you need to update any data bindings as a result of a scroll event, you have
     * to run the callback using `NgZone.run`.
     */
    scrolled(auditTimeInMs = DEFAULT_SCROLL_TIME) {
        if (!this._platform.isBrowser) {
            return observableOf();
        }
        return new Observable((observer) => {
            if (!this._globalSubscription) {
                this._addGlobalListener();
            }
            // In the case of a 0ms delay, use an observable without auditTime
            // since it does add a perceptible delay in processing overhead.
            const subscription = auditTimeInMs > 0 ?
                this._scrolled.pipe(auditTime(auditTimeInMs)).subscribe(observer) :
                this._scrolled.subscribe(observer);
            this._scrolledCount++;
            return () => {
                subscription.unsubscribe();
                this._scrolledCount--;
                if (!this._scrolledCount) {
                    this._removeGlobalListener();
                }
            };
        });
    }
    ngOnDestroy() {
        this._removeGlobalListener();
        this.scrollContainers.forEach((_, container) => this.deregister(container));
        this._scrolled.complete();
    }
    /**
     * Returns an observable that emits whenever any of the
     * scrollable ancestors of an element are scrolled.
     * @param elementRef Element whose ancestors to listen for.
     * @param auditTimeInMs Time to throttle the scroll events.
     */
    ancestorScrolled(elementRef, auditTimeInMs) {
        const ancestors = this.getAncestorScrollContainers(elementRef);
        return this.scrolled(auditTimeInMs).pipe(filter(target => {
            return !target || ancestors.indexOf(target) > -1;
        }));
    }
    /** Returns all registered Scrollables that contain the provided element. */
    getAncestorScrollContainers(elementRef) {
        const scrollingContainers = [];
        this.scrollContainers.forEach((_subscription, scrollable) => {
            if (this._scrollableContainsElement(scrollable, elementRef)) {
                scrollingContainers.push(scrollable);
            }
        });
        return scrollingContainers;
    }
    /** Access injected document if available or fallback to global document reference */
    _getDocument() {
        return this._document || document;
    }
    /** Use defaultView of injected document if available or fallback to global window reference */
    _getWindow() {
        const doc = this._getDocument();
        return doc.defaultView || window;
    }
    /** Returns true if the element is contained within the provided Scrollable. */
    _scrollableContainsElement(scrollable, elementRef) {
        let element = elementRef.nativeElement;
        let scrollableElement = scrollable.getElementRef().nativeElement;
        // Traverse through the element parents until we reach null, checking if any of the elements
        // are the scrollable's element.
        do {
            if (element == scrollableElement) {
                return true;
            }
        } while (element = element.parentElement);
        return false;
    }
    /** Sets up the global scroll listeners. */
    _addGlobalListener() {
        this._globalSubscription = this._ngZone.runOutsideAngular(() => {
            const window = this._getWindow();
            return fromEvent(window.document, 'scroll').subscribe(() => this._scrolled.next());
        });
    }
    /** Cleans up the global scroll listener. */
    _removeGlobalListener() {
        if (this._globalSubscription) {
            this._globalSubscription.unsubscribe();
            this._globalSubscription = null;
        }
    }
}
ScrollDispatcher.ɵprov = i0.ɵɵdefineInjectable({ factory: function ScrollDispatcher_Factory() { return new ScrollDispatcher(i0.ɵɵinject(i0.NgZone), i0.ɵɵinject(i1.Platform), i0.ɵɵinject(i2.DOCUMENT, 8)); }, token: ScrollDispatcher, providedIn: "root" });
ScrollDispatcher.decorators = [
    { type: Injectable, args: [{ providedIn: 'root' },] }
];
ScrollDispatcher.ctorParameters = () => [
    { type: NgZone },
    { type: Platform },
    { type: undefined, decorators: [{ type: Optional }, { type: Inject, args: [DOCUMENT,] }] }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic2Nyb2xsLWRpc3BhdGNoZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL3Njcm9sbGluZy9zY3JvbGwtZGlzcGF0Y2hlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFDL0MsT0FBTyxFQUFhLFVBQVUsRUFBRSxNQUFNLEVBQWEsUUFBUSxFQUFFLE1BQU0sRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUMxRixPQUFPLEVBQUMsU0FBUyxFQUFFLEVBQUUsSUFBSSxZQUFZLEVBQUUsT0FBTyxFQUFnQixVQUFVLEVBQVcsTUFBTSxNQUFNLENBQUM7QUFDaEcsT0FBTyxFQUFDLFNBQVMsRUFBRSxNQUFNLEVBQUMsTUFBTSxnQkFBZ0IsQ0FBQztBQUVqRCxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0saUJBQWlCLENBQUM7Ozs7QUFFekMsOERBQThEO0FBQzlELE1BQU0sQ0FBQyxNQUFNLG1CQUFtQixHQUFHLEVBQUUsQ0FBQztBQUV0Qzs7O0dBR0c7QUFFSCxNQUFNLE9BQU8sZ0JBQWdCO0lBSTNCLFlBQW9CLE9BQWUsRUFDZixTQUFtQjtJQUMzQixxREFBcUQ7SUFDdkIsUUFBYztRQUhwQyxZQUFPLEdBQVAsT0FBTyxDQUFRO1FBQ2YsY0FBUyxHQUFULFNBQVMsQ0FBVTtRQU12Qyw4RkFBOEY7UUFDdEYsY0FBUyxHQUFHLElBQUksT0FBTyxFQUFzQixDQUFDO1FBRXRELHFFQUFxRTtRQUNyRSx3QkFBbUIsR0FBd0IsSUFBSSxDQUFDO1FBRWhELGlHQUFpRztRQUN6RixtQkFBYyxHQUFHLENBQUMsQ0FBQztRQUUzQjs7O1dBR0c7UUFDSCxxQkFBZ0IsR0FBcUMsSUFBSSxHQUFHLEVBQUUsQ0FBQztRQWhCN0QsSUFBSSxDQUFDLFNBQVMsR0FBRyxRQUFRLENBQUM7SUFDNUIsQ0FBQztJQWlCRDs7OztPQUlH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Q0FBQyxTQUFTLENBQUMsR0FBRyxFQUFFLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxJQUFJLEVBQUUsQ0FBQyxDQUFDO1FBQ3JGLENBQUMsQ0FBQyxDQUFDO0lBQ0wsQ0FBQztJQUVELDRDQUE0QztJQUNwQyxxQkFBcUI7UUFDM0IsSUFBSSxJQUFJLENBQUMsbUJBQW1CLEVBQUU7WUFDNUIsSUFBSSxDQUFDLG1CQUFtQixDQUFDLFdBQVcsRUFBRSxDQUFDO1lBQ3ZDLElBQUksQ0FBQyxtQkFBbUIsR0FBRyxJQUFJLENBQUM7U0FDakM7SUFDSCxDQUFDOzs7O1lBbktGLFVBQVUsU0FBQyxFQUFDLFVBQVUsRUFBRSxNQUFNLEVBQUM7OztZQWJBLE1BQU07WUFEOUIsUUFBUTs0Q0FzQkQsUUFBUSxZQUFJLE1BQU0sU0FBQyxRQUFRIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7UGxhdGZvcm19IGZyb20gJ0Bhbmd1bGFyL2Nkay9wbGF0Zm9ybSc7XG5pbXBvcnQge0VsZW1lbnRSZWYsIEluamVjdGFibGUsIE5nWm9uZSwgT25EZXN0cm95LCBPcHRpb25hbCwgSW5qZWN0fSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7ZnJvbUV2ZW50LCBvZiBhcyBvYnNlcnZhYmxlT2YsIFN1YmplY3QsIFN1YnNjcmlwdGlvbiwgT2JzZXJ2YWJsZSwgT2JzZXJ2ZXJ9IGZyb20gJ3J4anMnO1xuaW1wb3J0IHthdWRpdFRpbWUsIGZpbHRlcn0gZnJvbSAncnhqcy9vcGVyYXRvcnMnO1xuaW1wb3J0IHtDZGtTY3JvbGxhYmxlfSBmcm9tICcuL3Njcm9sbGFibGUnO1xuaW1wb3J0IHtET0NVTUVOVH0gZnJvbSAnQGFuZ3VsYXIvY29tbW9uJztcblxuLyoqIFRpbWUgaW4gbXMgdG8gdGhyb3R0bGUgdGhlIHNjcm9sbGluZyBldmVudHMgYnkgZGVmYXVsdC4gKi9cbmV4cG9ydCBjb25zdCBERUZBVUxUX1NDUk9MTF9USU1FID0gMjA7XG5cbi8qKlxuICogU2VydmljZSBjb250YWluZWQgYWxsIHJlZ2lzdGVyZWQgU2Nyb2xsYWJsZSByZWZlcmVuY2VzIGFuZCBlbWl0cyBhbiBldmVudCB3aGVuIGFueSBvbmUgb2YgdGhlXG4gKiBTY3JvbGxhYmxlIHJlZmVyZW5jZXMgZW1pdCBhIHNjcm9sbGVkIGV2ZW50LlxuICovXG5ASW5qZWN0YWJsZSh7cHJvdmlkZWRJbjogJ3Jvb3QnfSlcbmV4cG9ydCBjbGFzcyBTY3JvbGxEaXNwYXRjaGVyIGltcGxlbWVudHMgT25EZXN0cm95IHtcbiAgLyoqIFVzZWQgdG8gcmVmZXJlbmNlIGNvcnJlY3QgZG9jdW1lbnQvd2luZG93ICovXG4gIHByb3RlY3RlZCBfZG9jdW1lbnQ/OiBEb2N1bWVudDtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9uZ1pvbmU6IE5nWm9uZSxcbiAgICAgICAgICAgICAgcHJpdmF0ZSBfcGxhdGZvcm06IFBsYXRmb3JtLFxuICAgICAgICAgICAgICAvKiogQGJyZWFraW5nLWNoYW5nZSAxMS4wLjAgbWFrZSBkb2N1bWVudCByZXF1aXJlZCAqL1xuICAgICAgICAgICAgICBAT3B0aW9uYWwoKSBASW5qZWN0KERPQ1VNRU5UKSBkb2N1bWVudD86IGFueSkge1xuICAgIHRoaXMuX2RvY3VtZW50ID0gZG9jdW1lbnQ7XG4gIH1cblxuICAvKiogU3ViamVjdCBmb3Igbm90aWZ5aW5nIHRoYXQgYSByZWdpc3RlcmVkIHNjcm9sbGFibGUgcmVmZXJlbmNlIGVsZW1lbnQgaGFzIGJlZW4gc2Nyb2xsZWQuICovXG4gIHByaXZhdGUgX3Njcm9sbGVkID0gbmV3IFN1YmplY3Q8Q2RrU2Nyb2xsYWJsZXx2b2lkPigpO1xuXG4gIC8qKiBLZWVwcyB0cmFjayBvZiB0aGUgZ2xvYmFsIGBzY3JvbGxgIGFuZCBgcmVzaXplYCBzdWJzY3JpcHRpb25zLiAqL1xuICBfZ2xvYmFsU3Vic2NyaXB0aW9uOiBTdWJzY3JpcHRpb24gfCBudWxsID0gbnVsbDtcblxuICAvKiogS2VlcHMgdHJhY2sgb2YgdGhlIGFtb3VudCBvZiBzdWJzY3JpcHRpb25zIHRvIGBzY3JvbGxlZGAuIFVzZWQgZm9yIGNsZWFuaW5nIHVwIGFmdGVyd2FyZHMuICovXG4gIHByaXZhdGUgX3Njcm9sbGVkQ291bnQgPSAwO1xuXG4gIC8qKlxuICAgKiBNYXAgb2YgYWxsIHRoZSBzY3JvbGxhYmxlIHJlZmVyZW5jZXMgdGhhdCBhcmUgcmVnaXN0ZXJlZCB3aXRoIHRoZSBzZXJ2aWNlIGFuZCB0aGVpclxuICAgKiBzY3JvbGwgZXZlbnQgc3Vic2NyaXB0aW9ucy5cbiAgICovXG4gIHNjcm9sbENvbnRhaW5lcnM6IE1hcDxDZGtTY3JvbGxhYmxlLCBTdWJzY3JpcHRpb24+ID0gbmV3IE1hcCgpO1xuXG4gIC8qKlxuICAgKiBSZWdpc3RlcnMgYSBzY3JvbGxhYmxlIGluc3RhbmNlIHdpdGggdGhlIHNlcnZpY2UgYW5kIGxpc3RlbnMgZm9yIGl0cyBzY3JvbGxlZCBldmVudHMuIFdoZW4gdGhlXG4gICAqIHNjcm9sbGFibGUgaXMgc2Nyb2xsZWQsIHRoZSBzZXJ2aWNlIGVtaXRzIHRoZSBldmVudCB0byBpdHMgc2Nyb2xsZWQgb2JzZXJ2YWJsZS5cbiAgICogQHBhcmFtIHNjcm9sbGFibGUgU2Nyb2xsYWJsZSBpbnN0YW5jZSB0byBiZSByZWdpc3RlcmVkLlxuICAgKi9cbiAgcmVnaXN0ZXIoc2Nyb2xsYWJsZTogQ2RrU2Nyb2xsYWJsZSk6IHZvaWQge1xuICAgIGlmICghdGhpcy5zY3JvbGxDb250YWluZXJzLmhhcyhzY3JvbGxhYmxlKSkge1xuICAgICAgdGhpcy5zY3JvbGxDb250YWluZXJzLnNldChzY3JvbGxhYmxlLCBzY3JvbGxhYmxlLmVsZW1lbnRTY3JvbGxlZCgpXG4gICAgICAgICAgLnN1YnNjcmliZSgoKSA9PiB0aGlzLl9zY3JvbGxlZC5uZXh0KHNjcm9sbGFibGUpKSk7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIERlcmVnaXN0ZXJzIGEgU2Nyb2xsYWJsZSByZWZlcmVuY2UgYW5kIHVuc3Vic2NyaWJlcyBmcm9tIGl0cyBzY3JvbGwgZXZlbnQgb2JzZXJ2YWJsZS5cbiAgICogQHBhcmFtIHNjcm9sbGFibGUgU2Nyb2xsYWJsZSBpbnN0YW5jZSB0byBiZSBkZXJlZ2lzdGVyZWQuXG4gICAqL1xuICBkZXJlZ2lzdGVyKHNjcm9sbGFibGU6IENka1Njcm9sbGFibGUpOiB2b2lkIHtcbiAgICBjb25zdCBzY3JvbGxhYmxlUmVmZXJlbmNlID0gdGhpcy5zY3JvbGxDb250YWluZXJzLmdldChzY3JvbGxhYmxlKTtcblxuICAgIGlmIChzY3JvbGxhYmxlUmVmZXJlbmNlKSB7XG4gICAgICBzY3JvbGxhYmxlUmVmZXJlbmNlLnVuc3Vic2NyaWJlKCk7XG4gICAgICB0aGlzLnNjcm9sbENvbnRhaW5lcnMuZGVsZXRlKHNjcm9sbGFibGUpO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBSZXR1cm5zIGFuIG9ic2VydmFibGUgdGhhdCBlbWl0cyBhbiBldmVudCB3aGVuZXZlciBhbnkgb2YgdGhlIHJlZ2lzdGVyZWQgU2Nyb2xsYWJsZVxuICAgKiByZWZlcmVuY2VzIChvciB3aW5kb3csIGRvY3VtZW50LCBvciBib2R5KSBmaXJlIGEgc2Nyb2xsZWQgZXZlbnQuIENhbiBwcm92aWRlIGEgdGltZSBpbiBtc1xuICAgKiB0byBvdmVycmlkZSB0aGUgZGVmYXVsdCBcInRocm90dGxlXCIgdGltZS5cbiAgICpcbiAgICogKipOb3RlOioqIGluIG9yZGVyIHRvIGF2b2lkIGhpdHRpbmcgY2hhbmdlIGRldGVjdGlvbiBmb3IgZXZlcnkgc2Nyb2xsIGV2ZW50LFxuICAgKiBhbGwgb2YgdGhlIGV2ZW50cyBlbWl0dGVkIGZyb20gdGhpcyBzdHJlYW0gd2lsbCBiZSBydW4gb3V0c2lkZSB0aGUgQW5ndWxhciB6b25lLlxuICAgKiBJZiB5b3UgbmVlZCB0byB1cGRhdGUgYW55IGRhdGEgYmluZGluZ3MgYXMgYSByZXN1bHQgb2YgYSBzY3JvbGwgZXZlbnQsIHlvdSBoYXZlXG4gICAqIHRvIHJ1biB0aGUgY2FsbGJhY2sgdXNpbmcgYE5nWm9uZS5ydW5gLlxuICAgKi9cbiAgc2Nyb2xsZWQoYXVkaXRUaW1lSW5NczogbnVtYmVyID0gREVGQVVMVF9TQ1JPTExfVElNRSk6IE9ic2VydmFibGU8Q2RrU2Nyb2xsYWJsZXx2b2lkPiB7XG4gICAgaWYgKCF0aGlzLl9wbGF0Zm9ybS5pc0Jyb3dzZXIpIHtcbiAgICAgIHJldHVybiBvYnNlcnZhYmxlT2Y8dm9pZD4oKTtcbiAgICB9XG5cbiAgICByZXR1cm4gbmV3IE9ic2VydmFibGUoKG9ic2VydmVyOiBPYnNlcnZlcjxDZGtTY3JvbGxhYmxlfHZvaWQ+KSA9PiB7XG4gICAgICBpZiAoIXRoaXMuX2dsb2JhbFN1YnNjcmlwdGlvbikge1xuICAgICAgICB0aGlzLl9hZGRHbG9iYWxMaXN0ZW5lcigpO1xuICAgICAgfVxuXG4gICAgICAvLyBJbiB0aGUgY2FzZSBvZiBhIDBtcyBkZWxheSwgdXNlIGFuIG9ic2VydmFibGUgd2l0aG91dCBhdWRpdFRpbWVcbiAgICAgIC8vIHNpbmNlIGl0IGRvZXMgYWRkIGEgcGVyY2VwdGlibGUgZGVsYXkgaW4gcHJvY2Vzc2luZyBvdmVyaGVhZC5cbiAgICAgIGNvbnN0IHN1YnNjcmlwdGlvbiA9IGF1ZGl0VGltZUluTXMgPiAwID9cbiAgICAgICAgdGhpcy5fc2Nyb2xsZWQucGlwZShhdWRpdFRpbWUoYXVkaXRUaW1lSW5NcykpLnN1YnNjcmliZShvYnNlcnZlcikgOlxuICAgICAgICB0aGlzLl9zY3JvbGxlZC5zdWJzY3JpYmUob2JzZXJ2ZXIpO1xuXG4gICAgICB0aGlzLl9zY3JvbGxlZENvdW50Kys7XG5cbiAgICAgIHJldHVybiAoKSA9PiB7XG4gICAgICAgIHN1YnNjcmlwdGlvbi51bnN1YnNjcmliZSgpO1xuICAgICAgICB0aGlzLl9zY3JvbGxlZENvdW50LS07XG5cbiAgICAgICAgaWYgKCF0aGlzLl9zY3JvbGxlZENvdW50KSB7XG4gICAgICAgICAgdGhpcy5fcmVtb3ZlR2xvYmFsTGlzdGVuZXIoKTtcbiAgICAgICAgfVxuICAgICAgfTtcbiAgICB9KTtcbiAgfVxuXG4gIG5nT25EZXN0cm95KCkge1xuICAgIHRoaXMuX3JlbW92ZUdsb2JhbExpc3RlbmVyKCk7XG4gICAgdGhpcy5zY3JvbGxDb250YWluZXJzLmZvckVhY2goKF8sIGNvbnRhaW5lcikgPT4gdGhpcy5kZXJlZ2lzdGVyKGNvbnRhaW5lcikpO1xuICAgIHRoaXMuX3Njcm9sbGVkLmNvbXBsZXRlKCk7XG4gIH1cblxuICAvKipcbiAgICogUmV0dXJucyBhbiBvYnNlcnZhYmxlIHRoYXQgZW1pdHMgd2hlbmV2ZXIgYW55IG9mIHRoZVxuICAgKiBzY3JvbGxhYmxlIGFuY2VzdG9ycyBvZiBhbiBlbGVtZW50IGFyZSBzY3JvbGxlZC5cbiAgICogQHBhcmFtIGVsZW1lbnRSZWYgRWxlbWVudCB3aG9zZSBhbmNlc3RvcnMgdG8gbGlzdGVuIGZvci5cbiAgICogQHBhcmFtIGF1ZGl0VGltZUluTXMgVGltZSB0byB0aHJvdHRsZSB0aGUgc2Nyb2xsIGV2ZW50cy5cbiAgICovXG4gIGFuY2VzdG9yU2Nyb2xsZWQoZWxlbWVudFJlZjogRWxlbWVudFJlZiwgYXVkaXRUaW1lSW5Ncz86IG51bWJlcik6IE9ic2VydmFibGU8Q2RrU2Nyb2xsYWJsZXx2b2lkPiB7XG4gICAgY29uc3QgYW5jZXN0b3JzID0gdGhpcy5nZXRBbmNlc3RvclNjcm9sbENvbnRhaW5lcnMoZWxlbWVudFJlZik7XG5cbiAgICByZXR1cm4gdGhpcy5zY3JvbGxlZChhdWRpdFRpbWVJbk1zKS5waXBlKGZpbHRlcih0YXJnZXQgPT4ge1xuICAgICAgcmV0dXJuICF0YXJnZXQgfHwgYW5jZXN0b3JzLmluZGV4T2YodGFyZ2V0KSA+IC0xO1xuICAgIH0pKTtcbiAgfVxuXG4gIC8qKiBSZXR1cm5zIGFsbCByZWdpc3RlcmVkIFNjcm9sbGFibGVzIHRoYXQgY29udGFpbiB0aGUgcHJvdmlkZWQgZWxlbWVudC4gKi9cbiAgZ2V0QW5jZXN0b3JTY3JvbGxDb250YWluZXJzKGVsZW1lbnRSZWY6IEVsZW1lbnRSZWYpOiBDZGtTY3JvbGxhYmxlW10ge1xuICAgIGNvbnN0IHNjcm9sbGluZ0NvbnRhaW5lcnM6IENka1Njcm9sbGFibGVbXSA9IFtdO1xuXG4gICAgdGhpcy5zY3JvbGxDb250YWluZXJzLmZvckVhY2goKF9zdWJzY3JpcHRpb246IFN1YnNjcmlwdGlvbiwgc2Nyb2xsYWJsZTogQ2RrU2Nyb2xsYWJsZSkgPT4ge1xuICAgICAgaWYgKHRoaXMuX3Njcm9sbGFibGVDb250YWluc0VsZW1lbnQoc2Nyb2xsYWJsZSwgZWxlbWVudFJlZikpIHtcbiAgICAgICAgc2Nyb2xsaW5nQ29udGFpbmVycy5wdXNoKHNjcm9sbGFibGUpO1xuICAgICAgfVxuICAgIH0pO1xuXG4gICAgcmV0dXJuIHNjcm9sbGluZ0NvbnRhaW5lcnM7XG4gIH1cblxuICAvKiogQWNjZXNzIGluamVjdGVkIGRvY3VtZW50IGlmIGF2YWlsYWJsZSBvciBmYWxsYmFjayB0byBnbG9iYWwgZG9jdW1lbnQgcmVmZXJlbmNlICovXG4gIHByaXZhdGUgX2dldERvY3VtZW50KCk6IERvY3VtZW50IHtcbiAgICByZXR1cm4gdGhpcy5fZG9jdW1lbnQgfHwgZG9jdW1lbnQ7XG4gIH1cblxuICAvKiogVXNlIGRlZmF1bHRWaWV3IG9mIGluamVjdGVkIGRvY3VtZW50IGlmIGF2YWlsYWJsZSBvciBmYWxsYmFjayB0byBnbG9iYWwgd2luZG93IHJlZmVyZW5jZSAqL1xuICBwcml2YXRlIF9nZXRXaW5kb3coKTogV2luZG93IHtcbiAgICBjb25zdCBkb2MgPSB0aGlzLl9nZXREb2N1bWVudCgpO1xuICAgIHJldHVybiBkb2MuZGVmYXVsdFZpZXcgfHwgd2luZG93O1xuICB9XG5cbiAgLyoqIFJldHVybnMgdHJ1ZSBpZiB0aGUgZWxlbWVudCBpcyBjb250YWluZWQgd2l0aGluIHRoZSBwcm92aWRlZCBTY3JvbGxhYmxlLiAqL1xuICBwcml2YXRlIF9zY3JvbGxhYmxlQ29udGFpbnNFbGVtZW50KHNjcm9sbGFibGU6IENka1Njcm9sbGFibGUsIGVsZW1lbnRSZWY6IEVsZW1lbnRSZWYpOiBib29sZWFuIHtcbiAgICBsZXQgZWxlbWVudDogSFRNTEVsZW1lbnQgfCBudWxsID0gZWxlbWVudFJlZi5uYXRpdmVFbGVtZW50O1xuICAgIGxldCBzY3JvbGxhYmxlRWxlbWVudCA9IHNjcm9sbGFibGUuZ2V0RWxlbWVudFJlZigpLm5hdGl2ZUVsZW1lbnQ7XG5cbiAgICAvLyBUcmF2ZXJzZSB0aHJvdWdoIHRoZSBlbGVtZW50IHBhcmVudHMgdW50aWwgd2UgcmVhY2ggbnVsbCwgY2hlY2tpbmcgaWYgYW55IG9mIHRoZSBlbGVtZW50c1xuICAgIC8vIGFyZSB0aGUgc2Nyb2xsYWJsZSdzIGVsZW1lbnQuXG4gICAgZG8ge1xuICAgICAgaWYgKGVsZW1lbnQgPT0gc2Nyb2xsYWJsZUVsZW1lbnQpIHsgcmV0dXJuIHRydWU7IH1cbiAgICB9IHdoaWxlIChlbGVtZW50ID0gZWxlbWVudCEucGFyZW50RWxlbWVudCk7XG5cbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cblxuICAvKiogU2V0cyB1cCB0aGUgZ2xvYmFsIHNjcm9sbCBsaXN0ZW5lcnMuICovXG4gIHByaXZhdGUgX2FkZEdsb2JhbExpc3RlbmVyKCkge1xuICAgIHRoaXMuX2dsb2JhbFN1YnNjcmlwdGlvbiA9IHRoaXMuX25nWm9uZS5ydW5PdXRzaWRlQW5ndWxhcigoKSA9PiB7XG4gICAgICBjb25zdCB3aW5kb3cgPSB0aGlzLl9nZXRXaW5kb3coKTtcbiAgICAgIHJldHVybiBmcm9tRXZlbnQod2luZG93LmRvY3VtZW50LCAnc2Nyb2xsJykuc3Vic2NyaWJlKCgpID0+IHRoaXMuX3Njcm9sbGVkLm5leHQoKSk7XG4gICAgfSk7XG4gIH1cblxuICAvKiogQ2xlYW5zIHVwIHRoZSBnbG9iYWwgc2Nyb2xsIGxpc3RlbmVyLiAqL1xuICBwcml2YXRlIF9yZW1vdmVHbG9iYWxMaXN0ZW5lcigpIHtcbiAgICBpZiAodGhpcy5fZ2xvYmFsU3Vic2NyaXB0aW9uKSB7XG4gICAgICB0aGlzLl9nbG9iYWxTdWJzY3JpcHRpb24udW5zdWJzY3JpYmUoKTtcbiAgICAgIHRoaXMuX2dsb2JhbFN1YnNjcmlwdGlvbiA9IG51bGw7XG4gICAgfVxuICB9XG59XG4iXX0=