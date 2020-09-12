/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Platform } from '@angular/cdk/platform';
import { Injectable, NgZone, Optional, Inject } from '@angular/core';
import { Subject } from 'rxjs';
import { auditTime } from 'rxjs/operators';
import { DOCUMENT } from '@angular/common';
import * as i0 from "@angular/core";
import * as i1 from "@angular/cdk/platform";
import * as i2 from "@angular/common";
/** Time in ms to throttle the resize events by default. */
export const DEFAULT_RESIZE_TIME = 20;
/**
 * Simple utility for getting the bounds of the browser viewport.
 * @docs-private
 */
export class ViewportRuler {
    constructor(_platform, ngZone, 
    /** @breaking-change 11.0.0 make document required */
    document) {
        this._platform = _platform;
        /** Stream of viewport change events. */
        this._change = new Subject();
        /** Event listener that will be used to handle the viewport change events. */
        this._changeListener = (event) => {
            this._change.next(event);
        };
        this._document = document;
        ngZone.runOutsideAngular(() => {
            if (_platform.isBrowser) {
                const window = this._getWindow();
                // Note that bind the events ourselves, rather than going through something like RxJS's
                // `fromEvent` so that we can ensure that they're bound outside of the NgZone.
                window.addEventListener('resize', this._changeListener);
                window.addEventListener('orientationchange', this._changeListener);
            }
            // We don't need to keep track of the subscription,
            // because we complete the `change` stream on destroy.
            this.change().subscribe(() => this._updateViewportSize());
        });
    }
    ngOnDestroy() {
        if (this._platform.isBrowser) {
            const window = this._getWindow();
            window.removeEventListener('resize', this._changeListener);
            window.removeEventListener('orientationchange', this._changeListener);
        }
        this._change.complete();
    }
    /** Returns the viewport's width and height. */
    getViewportSize() {
        if (!this._viewportSize) {
            this._updateViewportSize();
        }
        const output = { width: this._viewportSize.width, height: this._viewportSize.height };
        // If we're not on a browser, don't cache the size since it'll be mocked out anyway.
        if (!this._platform.isBrowser) {
            this._viewportSize = null;
        }
        return output;
    }
    /** Gets a ClientRect for the viewport's bounds. */
    getViewportRect() {
        // Use the document element's bounding rect rather than the window scroll properties
        // (e.g. pageYOffset, scrollY) due to in issue in Chrome and IE where window scroll
        // properties and client coordinates (boundingClientRect, clientX/Y, etc.) are in different
        // conceptual viewports. Under most circumstances these viewports are equivalent, but they
        // can disagree when the page is pinch-zoomed (on devices that support touch).
        // See https://bugs.chromium.org/p/chromium/issues/detail?id=489206#c4
        // We use the documentElement instead of the body because, by default (without a css reset)
        // browsers typically give the document body an 8px margin, which is not included in
        // getBoundingClientRect().
        const scrollPosition = this.getViewportScrollPosition();
        const { width, height } = this.getViewportSize();
        return {
            top: scrollPosition.top,
            left: scrollPosition.left,
            bottom: scrollPosition.top + height,
            right: scrollPosition.left + width,
            height,
            width,
        };
    }
    /** Gets the (top, left) scroll position of the viewport. */
    getViewportScrollPosition() {
        // While we can get a reference to the fake document
        // during SSR, it doesn't have getBoundingClientRect.
        if (!this._platform.isBrowser) {
            return { top: 0, left: 0 };
        }
        // The top-left-corner of the viewport is determined by the scroll position of the document
        // body, normally just (scrollLeft, scrollTop). However, Chrome and Firefox disagree about
        // whether `document.body` or `document.documentElement` is the scrolled element, so reading
        // `scrollTop` and `scrollLeft` is inconsistent. However, using the bounding rect of
        // `document.documentElement` works consistently, where the `top` and `left` values will
        // equal negative the scroll position.
        const document = this._getDocument();
        const window = this._getWindow();
        const documentElement = document.documentElement;
        const documentRect = documentElement.getBoundingClientRect();
        const top = -documentRect.top || document.body.scrollTop || window.scrollY ||
            documentElement.scrollTop || 0;
        const left = -documentRect.left || document.body.scrollLeft || window.scrollX ||
            documentElement.scrollLeft || 0;
        return { top, left };
    }
    /**
     * Returns a stream that emits whenever the size of the viewport changes.
     * @param throttleTime Time in milliseconds to throttle the stream.
     */
    change(throttleTime = DEFAULT_RESIZE_TIME) {
        return throttleTime > 0 ? this._change.pipe(auditTime(throttleTime)) : this._change;
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
    /** Updates the cached viewport size. */
    _updateViewportSize() {
        const window = this._getWindow();
        this._viewportSize = this._platform.isBrowser ?
            { width: window.innerWidth, height: window.innerHeight } :
            { width: 0, height: 0 };
    }
}
ViewportRuler.ɵprov = i0.ɵɵdefineInjectable({ factory: function ViewportRuler_Factory() { return new ViewportRuler(i0.ɵɵinject(i1.Platform), i0.ɵɵinject(i0.NgZone), i0.ɵɵinject(i2.DOCUMENT, 8)); }, token: ViewportRuler, providedIn: "root" });
ViewportRuler.decorators = [
    { type: Injectable, args: [{ providedIn: 'root' },] }
];
ViewportRuler.ctorParameters = () => [
    { type: Platform },
    { type: NgZone },
    { type: undefined, decorators: [{ type: Optional }, { type: Inject, args: [DOCUMENT,] }] }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlld3BvcnQtcnVsZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL3Njcm9sbGluZy92aWV3cG9ydC1ydWxlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFDL0MsT0FBTyxFQUFDLFVBQVUsRUFBRSxNQUFNLEVBQWEsUUFBUSxFQUFFLE1BQU0sRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUM5RSxPQUFPLEVBQWEsT0FBTyxFQUFDLE1BQU0sTUFBTSxDQUFDO0FBQ3pDLE9BQU8sRUFBQyxTQUFTLEVBQUMsTUFBTSxnQkFBZ0IsQ0FBQztBQUN6QyxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0saUJBQWlCLENBQUM7Ozs7QUFFekMsMkRBQTJEO0FBQzNELE1BQU0sQ0FBQyxNQUFNLG1CQUFtQixHQUFHLEVBQUUsQ0FBQztBQVF0Qzs7O0dBR0c7QUFFSCxNQUFNLE9BQU8sYUFBYTtJQWV4QixZQUFvQixTQUFtQixFQUMzQixNQUFjO0lBQ2QscURBQXFEO0lBQ3ZCLFFBQWM7UUFIcEMsY0FBUyxHQUFULFNBQVMsQ0FBVTtRQVh2Qyx3Q0FBd0M7UUFDaEMsWUFBTyxHQUFHLElBQUksT0FBTyxFQUFTLENBQUM7UUFFdkMsNkVBQTZFO1FBQ3JFLG9CQUFlLEdBQUcsQ0FBQyxLQUFZLEVBQUUsRUFBRTtZQUN6QyxJQUFJLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQztRQUMzQixDQUFDLENBQUE7UUFTQyxJQUFJLENBQUMsU0FBUyxHQUFHLFFBQVEsQ0FBQztRQUUxQixNQUFNLENBQUMsaUJBQWlCLENBQUMsR0FBRyxFQUFFO1lBQzVCLElBQUksU0FBUyxDQUFDLFNBQVMsRUFBRTtnQkFDdkIsTUFBTSxNQUFNLEdBQUcsSUFBSSxDQUFDLFVBQVUsRUFBRSxDQUFDO2dCQUVqQyx1RkFB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LEVBQUUsQ0FBQyxFQUFFLE1BQU0sRUFBRSxDQUFDLEVBQUMsQ0FBQztJQUM1QixDQUFDOzs7O1lBN0lGLFVBQVUsU0FBQyxFQUFDLFVBQVUsRUFBRSxNQUFNLEVBQUM7OztZQW5CeEIsUUFBUTtZQUNJLE1BQU07NENBcUNYLFFBQVEsWUFBSSxNQUFNLFNBQUMsUUFBUSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1BsYXRmb3JtfSBmcm9tICdAYW5ndWxhci9jZGsvcGxhdGZvcm0nO1xuaW1wb3J0IHtJbmplY3RhYmxlLCBOZ1pvbmUsIE9uRGVzdHJveSwgT3B0aW9uYWwsIEluamVjdH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge09ic2VydmFibGUsIFN1YmplY3R9IGZyb20gJ3J4anMnO1xuaW1wb3J0IHthdWRpdFRpbWV9IGZyb20gJ3J4anMvb3BlcmF0b3JzJztcbmltcG9ydCB7RE9DVU1FTlR9IGZyb20gJ0Bhbmd1bGFyL2NvbW1vbic7XG5cbi8qKiBUaW1lIGluIG1zIHRvIHRocm90dGxlIHRoZSByZXNpemUgZXZlbnRzIGJ5IGRlZmF1bHQuICovXG5leHBvcnQgY29uc3QgREVGQVVMVF9SRVNJWkVfVElNRSA9IDIwO1xuXG4vKiogT2JqZWN0IHRoYXQgaG9sZHMgdGhlIHNjcm9sbCBwb3NpdGlvbiBvZiB0aGUgdmlld3BvcnQgaW4gZWFjaCBkaXJlY3Rpb24uICovXG5leHBvcnQgaW50ZXJmYWNlIFZpZXdwb3J0U2Nyb2xsUG9zaXRpb24ge1xuICB0b3A6IG51bWJlcjtcbiAgbGVmdDogbnVtYmVyO1xufVxuXG4vKipcbiAqIFNpbXBsZSB1dGlsaXR5IGZvciBnZXR0aW5nIHRoZSBib3VuZHMgb2YgdGhlIGJyb3dzZXIgdmlld3BvcnQuXG4gKiBAZG9jcy1wcml2YXRlXG4gKi9cbkBJbmplY3RhYmxlKHtwcm92aWRlZEluOiAncm9vdCd9KVxuZXhwb3J0IGNsYXNzIFZpZXdwb3J0UnVsZXIgaW1wbGVtZW50cyBPbkRlc3Ryb3kge1xuICAvKiogQ2FjaGVkIHZpZXdwb3J0IGRpbWVuc2lvbnMuICovXG4gIHByaXZhdGUgX3ZpZXdwb3J0U2l6ZToge3dpZHRoOiBudW1iZXI7IGhlaWdodDogbnVtYmVyfTtcblxuICAvKiogU3RyZWFtIG9mIHZpZXdwb3J0IGNoYW5nZSBldmVudHMuICovXG4gIHByaXZhdGUgX2NoYW5nZSA9IG5ldyBTdWJqZWN0PEV2ZW50PigpO1xuXG4gIC8qKiBFdmVudCBsaXN0ZW5lciB0aGF0IHdpbGwgYmUgdXNlZCB0byBoYW5kbGUgdGhlIHZpZXdwb3J0IGNoYW5nZSBldmVudHMuICovXG4gIHByaXZhdGUgX2NoYW5nZUxpc3RlbmVyID0gKGV2ZW50OiBFdmVudCkgPT4ge1xuICAgIHRoaXMuX2NoYW5nZS5uZXh0KGV2ZW50KTtcbiAgfVxuXG4gIC8qKiBVc2VkIHRvIHJlZmVyZW5jZSBjb3JyZWN0IGRvY3VtZW50L3dpbmRvdyAqL1xuICBwcm90ZWN0ZWQgX2RvY3VtZW50PzogRG9jdW1lbnQ7XG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSBfcGxhdGZvcm06IFBsYXRmb3JtLFxuICAgICAgICAgICAgICBuZ1pvbmU6IE5nWm9uZSxcbiAgICAgICAgICAgICAgLyoqIEBicmVha2luZy1jaGFuZ2UgMTEuMC4wIG1ha2UgZG9jdW1lbnQgcmVxdWlyZWQgKi9cbiAgICAgICAgICAgICAgQE9wdGlvbmFsKCkgQEluamVjdChET0NVTUVOVCkgZG9jdW1lbnQ/OiBhbnkpIHtcbiAgICB0aGlzLl9kb2N1bWVudCA9IGRvY3VtZW50O1xuXG4gICAgbmdab25lLnJ1bk91dHNpZGVBbmd1bGFyKCgpID0+IHtcbiAgICAgIGlmIChfcGxhdGZvcm0uaXNCcm93c2VyKSB7XG4gICAgICAgIGNvbnN0IHdpbmRvdyA9IHRoaXMuX2dldFdpbmRvdygpO1xuXG4gICAgICAgIC8vIE5vdGUgdGhhdCBiaW5kIHRoZSBldmVudHMgb3Vyc2VsdmVzLCByYXRoZXIgdGhhbiBnb2luZyB0aHJvdWdoIHNvbWV0aGluZyBsaWtlIFJ4SlMnc1xuICAgICAgICAvLyBgZnJvbUV2ZW50YCBzbyB0aGF0IHdlIGNhbiBlbnN1cmUgdGhhdCB0aGV5J3JlIGJvdW5kIG91dHNpZGUgb2YgdGhlIE5nWm9uZS5cbiAgICAgICAgd2luZG93LmFkZEV2ZW50TGlzdGVuZXIoJ3Jlc2l6ZScsIHRoaXMuX2NoYW5nZUxpc3RlbmVyKTtcbiAgICAgICAgd2luZG93LmFkZEV2ZW50TGlzdGVuZXIoJ29yaWVudGF0aW9uY2hhbmdlJywgdGhpcy5fY2hhbmdlTGlzdGVuZXIpO1xuICAgICAgfVxuXG4gICAgICAvLyBXZSBkb24ndCBuZWVkIHRvIGtlZXAgdHJhY2sgb2YgdGhlIHN1YnNjcmlwdGlvbixcbiAgICAgIC8vIGJlY2F1c2Ugd2UgY29tcGxldGUgdGhlIGBjaGFuZ2VgIHN0cmVhbSBvbiBkZXN0cm95LlxuICAgICAgdGhpcy5jaGFuZ2UoKS5zdWJzY3JpYmUoKCkgPT4gdGhpcy5fdXBkYXRlVmlld3BvcnRTaXplKCkpO1xuICAgIH0pO1xuICB9XG5cbiAgbmdPbkRlc3Ryb3koKSB7XG4gICAgaWYgKHRoaXMuX3BsYXRmb3JtLmlzQnJvd3Nlcikge1xuICAgICAgY29uc3Qgd2luZG93ID0gdGhpcy5fZ2V0V2luZG93KCk7XG4gICAgICB3aW5kb3cucmVtb3ZlRXZlbnRMaXN0ZW5lcigncmVzaXplJywgdGhpcy5fY2hhbmdlTGlzdGVuZXIpO1xuICAgICAgd2luZG93LnJlbW92ZUV2ZW50TGlzdGVuZXIoJ29yaWVudGF0aW9uY2hhbmdlJywgdGhpcy5fY2hhbmdlTGlzdGVuZXIpO1xuICAgIH1cblxuICAgIHRoaXMuX2NoYW5nZS5jb21wbGV0ZSgpO1xuICB9XG5cbiAgLyoqIFJldHVybnMgdGhlIHZpZXdwb3J0J3Mgd2lkdGggYW5kIGhlaWdodC4gKi9cbiAgZ2V0Vmlld3BvcnRTaXplKCk6IFJlYWRvbmx5PHt3aWR0aDogbnVtYmVyLCBoZWlnaHQ6IG51bWJlcn0+IHtcbiAgICBpZiAoIXRoaXMuX3ZpZXdwb3J0U2l6ZSkge1xuICAgICAgdGhpcy5fdXBkYXRlVmlld3BvcnRTaXplKCk7XG4gICAgfVxuXG4gICAgY29uc3Qgb3V0cHV0ID0ge3dpZHRoOiB0aGlzLl92aWV3cG9ydFNpemUud2lkdGgsIGhlaWdodDogdGhpcy5fdmlld3BvcnRTaXplLmhlaWdodH07XG5cbiAgICAvLyBJZiB3ZSdyZSBub3Qgb24gYSBicm93c2VyLCBkb24ndCBjYWNoZSB0aGUgc2l6ZSBzaW5jZSBpdCdsbCBiZSBtb2NrZWQgb3V0IGFueXdheS5cbiAgICBpZiAoIXRoaXMuX3BsYXRmb3JtLmlzQnJvd3Nlcikge1xuICAgICAgdGhpcy5fdmlld3BvcnRTaXplID0gbnVsbCE7XG4gICAgfVxuXG4gICAgcmV0dXJuIG91dHB1dDtcbiAgfVxuXG4gIC8qKiBHZXRzIGEgQ2xpZW50UmVjdCBmb3IgdGhlIHZpZXdwb3J0J3MgYm91bmRzLiAqL1xuICBnZXRWaWV3cG9ydFJlY3QoKTogQ2xpZW50UmVjdCB7XG4gICAgLy8gVXNlIHRoZSBkb2N1bWVudCBlbGVtZW50J3MgYm91bmRpbmcgcmVjdCByYXRoZXIgdGhhbiB0aGUgd2luZG93IHNjcm9sbCBwcm9wZXJ0aWVzXG4gICAgLy8gKGUuZy4gcGFnZVlPZmZzZXQsIHNjcm9sbFkpIGR1ZSB0byBpbiBpc3N1ZSBpbiBDaHJvbWUgYW5kIElFIHdoZXJlIHdpbmRvdyBzY3JvbGxcbiAgICAvLyBwcm9wZXJ0aWVzIGFuZCBjbGllbnQgY29vcmRpbmF0ZXMgKGJvdW5kaW5nQ2xpZW50UmVjdCwgY2xpZW50WC9ZLCBldGMuKSBhcmUgaW4gZGlmZmVyZW50XG4gICAgLy8gY29uY2VwdHVhbCB2aWV3cG9ydHMuIFVuZGVyIG1vc3QgY2lyY3Vtc3RhbmNlcyB0aGVzZSB2aWV3cG9ydHMgYXJlIGVxdWl2YWxlbnQsIGJ1dCB0aGV5XG4gICAgLy8gY2FuIGRpc2FncmVlIHdoZW4gdGhlIHBhZ2UgaXMgcGluY2gtem9vbWVkIChvbiBkZXZpY2VzIHRoYXQgc3VwcG9ydCB0b3VjaCkuXG4gICAgLy8gU2VlIGh0dHBzOi8vYnVncy5jaHJvbWl1bS5vcmcvcC9jaHJvbWl1bS9pc3N1ZXMvZGV0YWlsP2lkPTQ4OTIwNiNjNFxuICAgIC8vIFdlIHVzZSB0aGUgZG9jdW1lbnRFbGVtZW50IGluc3RlYWQgb2YgdGhlIGJvZHkgYmVjYXVzZSwgYnkgZGVmYXVsdCAod2l0aG91dCBhIGNzcyByZXNldClcbiAgICAvLyBicm93c2VycyB0eXBpY2FsbHkgZ2l2ZSB0aGUgZG9jdW1lbnQgYm9keSBhbiA4cHggbWFyZ2luLCB3aGljaCBpcyBub3QgaW5jbHVkZWQgaW5cbiAgICAvLyBnZXRCb3VuZGluZ0NsaWVudFJlY3QoKS5cbiAgICBjb25zdCBzY3JvbGxQb3NpdGlvbiA9IHRoaXMuZ2V0Vmlld3BvcnRTY3JvbGxQb3NpdGlvbigpO1xuICAgIGNvbnN0IHt3aWR0aCwgaGVpZ2h0fSA9IHRoaXMuZ2V0Vmlld3BvcnRTaXplKCk7XG5cbiAgICByZXR1cm4ge1xuICAgICAgdG9wOiBzY3JvbGxQb3NpdGlvbi50b3AsXG4gICAgICBsZWZ0OiBzY3JvbGxQb3NpdGlvbi5sZWZ0LFxuICAgICAgYm90dG9tOiBzY3JvbGxQb3NpdGlvbi50b3AgKyBoZWlnaHQsXG4gICAgICByaWdodDogc2Nyb2xsUG9zaXRpb24ubGVmdCArIHdpZHRoLFxuICAgICAgaGVpZ2h0LFxuICAgICAgd2lkdGgsXG4gICAgfTtcbiAgfVxuXG4gIC8qKiBHZXRzIHRoZSAodG9wLCBsZWZ0KSBzY3JvbGwgcG9zaXRpb24gb2YgdGhlIHZpZXdwb3J0LiAqL1xuICBnZXRWaWV3cG9ydFNjcm9sbFBvc2l0aW9uKCk6IFZpZXdwb3J0U2Nyb2xsUG9zaXRpb24ge1xuICAgIC8vIFdoaWxlIHdlIGNhbiBnZXQgYSByZWZlcmVuY2UgdG8gdGhlIGZha2UgZG9jdW1lbnRcbiAgICAvLyBkdXJpbmcgU1NSLCBpdCBkb2Vzbid0IGhhdmUgZ2V0Qm91bmRpbmdDbGllbnRSZWN0LlxuICAgIGlmICghdGhpcy5fcGxhdGZvcm0uaXNCcm93c2VyKSB7XG4gICAgICByZXR1cm4ge3RvcDogMCwgbGVmdDogMH07XG4gICAgfVxuXG4gICAgLy8gVGhlIHRvcC1sZWZ0LWNvcm5lciBvZiB0aGUgdmlld3BvcnQgaXMgZGV0ZXJtaW5lZCBieSB0aGUgc2Nyb2xsIHBvc2l0aW9uIG9mIHRoZSBkb2N1bWVudFxuICAgIC8vIGJvZHksIG5vcm1hbGx5IGp1c3QgKHNjcm9sbExlZnQsIHNjcm9sbFRvcCkuIEhvd2V2ZXIsIENocm9tZSBhbmQgRmlyZWZveCBkaXNhZ3JlZSBhYm91dFxuICAgIC8vIHdoZXRoZXIgYGRvY3VtZW50LmJvZHlgIG9yIGBkb2N1bWVudC5kb2N1bWVudEVsZW1lbnRgIGlzIHRoZSBzY3JvbGxlZCBlbGVtZW50LCBzbyByZWFkaW5nXG4gICAgLy8gYHNjcm9sbFRvcGAgYW5kIGBzY3JvbGxMZWZ0YCBpcyBpbmNvbnNpc3RlbnQuIEhvd2V2ZXIsIHVzaW5nIHRoZSBib3VuZGluZyByZWN0IG9mXG4gICAgLy8gYGRvY3VtZW50LmRvY3VtZW50RWxlbWVudGAgd29ya3MgY29uc2lzdGVudGx5LCB3aGVyZSB0aGUgYHRvcGAgYW5kIGBsZWZ0YCB2YWx1ZXMgd2lsbFxuICAgIC8vIGVxdWFsIG5lZ2F0aXZlIHRoZSBzY3JvbGwgcG9zaXRpb24uXG4gICAgY29uc3QgZG9jdW1lbnQgPSB0aGlzLl9nZXREb2N1bWVudCgpO1xuICAgIGNvbnN0IHdpbmRvdyA9IHRoaXMuX2dldFdpbmRvdygpO1xuICAgIGNvbnN0IGRvY3VtZW50RWxlbWVudCA9IGRvY3VtZW50LmRvY3VtZW50RWxlbWVudCE7XG4gICAgY29uc3QgZG9jdW1lbnRSZWN0ID0gZG9jdW1lbnRFbGVtZW50LmdldEJvdW5kaW5nQ2xpZW50UmVjdCgpO1xuXG4gICAgY29uc3QgdG9wID0gLWRvY3VtZW50UmVjdC50b3AgfHwgZG9jdW1lbnQuYm9keS5zY3JvbGxUb3AgfHwgd2luZG93LnNjcm9sbFkgfHxcbiAgICAgICAgICAgICAgICAgZG9jdW1lbnRFbGVtZW50LnNjcm9sbFRvcCB8fCAwO1xuXG4gICAgY29uc3QgbGVmdCA9IC1kb2N1bWVudFJlY3QubGVmdCB8fCBkb2N1bWVudC5ib2R5LnNjcm9sbExlZnQgfHwgd2luZG93LnNjcm9sbFggfHxcbiAgICAgICAgICAgICAgICAgIGRvY3VtZW50RWxlbWVudC5zY3JvbGxMZWZ0IHx8IDA7XG5cbiAgICByZXR1cm4ge3RvcCwgbGVmdH07XG4gIH1cblxuICAvKipcbiAgICogUmV0dXJucyBhIHN0cmVhbSB0aGF0IGVtaXRzIHdoZW5ldmVyIHRoZSBzaXplIG9mIHRoZSB2aWV3cG9ydCBjaGFuZ2VzLlxuICAgKiBAcGFyYW0gdGhyb3R0bGVUaW1lIFRpbWUgaW4gbWlsbGlzZWNvbmRzIHRvIHRocm90dGxlIHRoZSBzdHJlYW0uXG4gICAqL1xuICBjaGFuZ2UodGhyb3R0bGVUaW1lOiBudW1iZXIgPSBERUZBVUxUX1JFU0laRV9USU1FKTogT2JzZXJ2YWJsZTxFdmVudD4ge1xuICAgIHJldHVybiB0aHJvdHRsZVRpbWUgPiAwID8gdGhpcy5fY2hhbmdlLnBpcGUoYXVkaXRUaW1lKHRocm90dGxlVGltZSkpIDogdGhpcy5fY2hhbmdlO1xuICB9XG5cbiAgLyoqIEFjY2VzcyBpbmplY3RlZCBkb2N1bWVudCBpZiBhdmFpbGFibGUgb3IgZmFsbGJhY2sgdG8gZ2xvYmFsIGRvY3VtZW50IHJlZmVyZW5jZSAqL1xuICBwcml2YXRlIF9nZXREb2N1bWVudCgpOiBEb2N1bWVudCB7XG4gICAgcmV0dXJuIHRoaXMuX2RvY3VtZW50IHx8IGRvY3VtZW50O1xuICB9XG5cbiAgLyoqIFVzZSBkZWZhdWx0VmlldyBvZiBpbmplY3RlZCBkb2N1bWVudCBpZiBhdmFpbGFibGUgb3IgZmFsbGJhY2sgdG8gZ2xvYmFsIHdpbmRvdyByZWZlcmVuY2UgKi9cbiAgcHJpdmF0ZSBfZ2V0V2luZG93KCk6IFdpbmRvdyB7XG4gICAgY29uc3QgZG9jID0gdGhpcy5fZ2V0RG9jdW1lbnQoKTtcbiAgICByZXR1cm4gZG9jLmRlZmF1bHRWaWV3IHx8IHdpbmRvdztcbiAgfVxuXG4gIC8qKiBVcGRhdGVzIHRoZSBjYWNoZWQgdmlld3BvcnQgc2l6ZS4gKi9cbiAgcHJpdmF0ZSBfdXBkYXRlVmlld3BvcnRTaXplKCkge1xuICAgIGNvbnN0IHdpbmRvdyA9IHRoaXMuX2dldFdpbmRvdygpO1xuICAgIHRoaXMuX3ZpZXdwb3J0U2l6ZSA9IHRoaXMuX3BsYXRmb3JtLmlzQnJvd3NlciA/XG4gICAgICAgIHt3aWR0aDogd2luZG93LmlubmVyV2lkdGgsIGhlaWdodDogd2luZG93LmlubmVySGVpZ2h0fSA6XG4gICAgICAgIHt3aWR0aDogMCwgaGVpZ2h0OiAwfTtcbiAgfVxufVxuIl19