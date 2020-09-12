/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { DOCUMENT } from '@angular/common';
import { Inject, Injectable } from '@angular/core';
import { Platform } from '@angular/cdk/platform';
import { BaseOverlayDispatcher } from './base-overlay-dispatcher';
import * as i0 from "@angular/core";
import * as i1 from "@angular/common";
import * as i2 from "@angular/cdk/platform";
/**
 * Service for dispatching mouse click events that land on the body to appropriate overlay ref,
 * if any. It maintains a list of attached overlays to determine best suited overlay based
 * on event target and order of overlay opens.
 */
export class OverlayOutsideClickDispatcher extends BaseOverlayDispatcher {
    constructor(document, _platform) {
        super(document);
        this._platform = _platform;
        this._cursorStyleIsSet = false;
        /** Click event listener that will be attached to the body propagate phase. */
        this._clickListener = (event) => {
            // Get the target through the `composedPath` if possible to account for shadow DOM.
            const target = event.composedPath ? event.composedPath()[0] : event.target;
            // We copy the array because the original may be modified asynchronously if the
            // outsidePointerEvents listener decides to detach overlays resulting in index errors inside
            // the for loop.
            const overlays = this._attachedOverlays.slice();
            // Dispatch the mouse event to the top overlay which has subscribers to its mouse events.
            // We want to target all overlays for which the click could be considered as outside click.
            // As soon as we reach an overlay for which the click is not outside click we break off
            // the loop.
            for (let i = overlays.length - 1; i > -1; i--) {
                const overlayRef = overlays[i];
                if (overlayRef._outsidePointerEvents.observers.length < 1 || !overlayRef.hasAttached()) {
                    continue;
                }
                // If it's a click inside the overlay, just break - we should do nothing
                // If it's an outside click dispatch the mouse event, and proceed with the next overlay
                if (overlayRef.overlayElement.contains(target)) {
                    break;
                }
                overlayRef._outsidePointerEvents.next(event);
            }
        };
    }
    /** Add a new overlay to the list of attached overlay refs. */
    add(overlayRef) {
        super.add(overlayRef);
        // tslint:disable: max-line-length
        // Safari on iOS does not generate click events for non-interactive
        // elements. However, we want to receive a click for any element outside
        // the overlay. We can force a "clickable" state by setting
        // `cursor: pointer` on the document body.
        // See https://developer.mozilla.org/en-US/docs/Web/API/Element/click_event#Safari_Mobile
        // and https://developer.apple.com/library/archive/documentation/AppleApplications/Reference/SafariWebContent/HandlingEvents/HandlingEvents.html
        // tslint:enable: max-line-length
        if (!this._isAttached) {
            this._document.body.addEventListener('click', this._clickListener, true);
            this._document.body.addEventListener('contextmenu', this._clickListener, true);
            // click event is not fired on iOS. To make element "clickable" we are
            // setting the cursor to pointer
            if (this._platform.IOS && !this._cursorStyleIsSet) {
                this._cursorOriginalValue = this._document.body.style.cursor;
                this._document.body.style.cursor = 'pointer';
                this._cursorStyleIsSet = true;
            }
            this._isAttached = true;
        }
    }
    /** Detaches the global keyboard event listener. */
    detach() {
        if (this._isAttached) {
            this._document.body.removeEventListener('click', this._clickListener, true);
            this._document.body.removeEventListener('contextmenu', this._clickListener, true);
            if (this._platform.IOS && this._cursorStyleIsSet) {
                this._document.body.style.cursor = this._cursorOriginalValue;
                this._cursorStyleIsSet = false;
            }
            this._isAttached = false;
        }
    }
}
OverlayOutsideClickDispatcher.ɵprov = i0.ɵɵdefineInjectable({ factory: function OverlayOutsideClickDispatcher_Factory() { return new OverlayOutsideClickDispatcher(i0.ɵɵinject(i1.DOCUMENT), i0.ɵɵinject(i2.Platform)); }, token: OverlayOutsideClickDispatcher, providedIn: "root" });
OverlayOutsideClickDispatcher.decorators = [
    { type: Injectable, args: [{ providedIn: 'root' },] }
];
OverlayOutsideClickDispatcher.ctorParameters = () => [
    { type: undefined, decorators: [{ type: Inject, args: [DOCUMENT,] }] },
    { type: Platform }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoib3ZlcmxheS1vdXRzaWRlLWNsaWNrLWRpc3BhdGNoZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL292ZXJsYXkvZGlzcGF0Y2hlcnMvb3ZlcmxheS1vdXRzaWRlLWNsaWNrLWRpc3BhdGNoZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLGlCQUFpQixDQUFDO0FBQ3pDLE9BQU8sRUFBQyxNQUFNLEVBQUUsVUFBVSxFQUFDLE1BQU0sZUFBZSxDQUFDO0FBRWpELE9BQU8sRUFBQyxRQUFRLEVBQUMsTUFBTSx1QkFBdUIsQ0FBQztBQUMvQyxPQUFPLEVBQUMscUJBQXFCLEVBQUMsTUFBTSwyQkFBMkIsQ0FBQzs7OztBQUVoRTs7OztHQUlHO0FBRUgsTUFBTSxPQUFPLDZCQUE4QixTQUFRLHFCQUFxQjtJQUl0RSxZQUE4QixRQUFhLEVBQVUsU0FBbUI7UUFDdEUsS0FBSyxDQUFDLFFBQVEsQ0FBQyxDQUFDO1FBRG1DLGNBQVMsR0FBVCxTQUFTLENBQVU7UUFGaEUsc0JBQWlCLEdBQUcsS0FBSyxDQUFDO1FBK0NsQyw4RUFBOEU7UUFDdEUsbUJBQWMsR0FBRyxDQUFDLEtBQWlCLEVBQUUsRUFBRTtZQUM3QyxtRkFBbUY7WUFDbkYsTUFBTSxNQUFNLEdBQUcsS0FBSyxDQUFDLFlBQVksQ0FBQyxDQUFDLENBQUMsS0FBSyxDQUFDLFlBQVksRUFBRSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDO1lBQzNFLCtFQUErRTtZQUMvRSw0RkFBNEY7WUFDNUYsZ0JBQWdCO1lBQ2hCLE1BQU0sUUFBUSxHQUFHLElBQUksQ0FBQyxpQkFBaUIsQ0FBQyxLQUFLLEVBQUUsQ0FBQztZQUVoRCx5RkFBeUY7WUFDekYsMkZBQTJGO1lBQzNGLHVGQUF1RjtZQUN2RixZQUFZO1lBQ1osS0FBSyxJQUFJLENBQUMsR0FBRyxRQUFRLENBQUMsTUFBTSxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxFQUFFLEVBQUU7Z0JBQzdDLE1BQU0sVUFBVSxHQUFHLFFBQVEsQ0FBQyxDQUFDLENBQUMsQ0FBQztnQkFDL0IsSUFBSSxVQUFVLENBQUMscUJBQXFCLENBQUMsU0FBUyxDQUFDLE1BQU0sR0FBRyxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsV0FBVyxFQUFFLEVBQUU7b0JBQ3RGLFNBQVM7aUJBQ1Y7Z0JBRUQsd0VBQXdFO2dCQUN4RSx1RkFBdUY7Z0JBQ3ZGLElBQUksVUFBVSxDQUFDLGNBQWMsQ0FBQyxRQUFRLENBQUMsTUFBYyxDQUFDLEVBQUU7b0JBQ3RELE1BQU07aUJBQ1A7Z0JBRUQsVUFBVSxDQUFDLHFCQUFxQixDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQzthQUM5QztRQUNILENBQUMsQ0FBQTtJQXRFRCxDQUFDO0lBRUQsOERBQThEO0lBQzlELEdBQUcsQ0FBQyxVQUE0QjtRQUM5QixLQUFLLENBQUMsR0FBRyxDQUFDLFVBQVUsQ0FBQyxDQUFDO1FBRXRCLGtDQUFrQztRQUNsQyxtRUFBbUU7UUFDbkUsd0VBQXdFO1FBQ3hFLDJEQUEyRDtRQUMzRCwwQ0FBMEM7UUFDMUMseUZBQXlGO1FBQ3pGLGdKQUFnSjtRQUNoSixpQ0FBaUM7UUFDakMsSUFBSSxDQUFDLElBQUksQ0FBQyxXQUFXLEVBQUU7WUFDckIsSUFBSSxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsT0FBTyxFQUFFLElBQUksQ0FBQyxjQUFjLEVBQUUsSUFBSSxDQUFDLENBQUM7WUFDekUsSUFBSSxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsYUFBYSxFQUFFLElBQUksQ0FBQyxjQUFjLEVBQUUsSUFBSSxDQUFDLENBQUM7WUFFL0Usc0VBQXNFO1lBQ3RFLGdDQUFnQztZQUNoQyxJQUFJLElBQUksQ0FBQyxTQUFTLENBQUMsR0FBRyxJQUFJLENBQUMsSUFBSSxDQUFDLGlCQUFpQixFQUFFO2dCQUNqRCxJQUFJLENBQUMsb0JBQW9CLEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQztnQkFDN0QsSUFBSSxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLE1BQU0sR0FBRyxTQUFTLENBQUM7Z0JBQzdDLElBQUksQ0FBQyxpQkFBaUIsR0FBRyxJQUFJLENBQUM7YUFDL0I7WUFFRCxJQUFJLENBQUMsV0FBVyxHQUFHLElBQUksQ0FBQztTQUN6QjtJQUNILENBQUM7SUFFRCxtREFBbUQ7SUFDekMsTUFBTTtRQUNkLElBQUksSUFBSSxDQUFDLFdBQVcsRUFBRTtZQUNwQixJQUFJLENBQUMsU0FBUyxDQUFDLElBQUksQ0FBQyxtQkFBbUIsQ0FBQyxPQUFPLEVBQUUsSUFBSSxDQUFDLGNBQWMsRUFBRSxJQUFJLENBQUMsQ0FBQztZQUM1RSxJQUFJLENBQUMsU0FBUyxDQUFDLElBQUksQ0FBQyxtQkFBbUIsQ0FBQyxhQUFhLEVBQUUsSUFBSSxDQUFDLGNBQWMsRUFBRSxJQUFJLENBQUMsQ0FBQztZQUNsRixJQUFJLElBQUksQ0FBQyxTQUFTLENBQUMsR0FBRyxJQUFJLElBQUksQ0FBQyxpQkFBaUIsRUFBRTtnQkFDaEQsSUFBSSxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLE1BQU0sR0FBRyxJQUFJLENBQUMsb0JBQW9CLENBQUM7Z0JBQzdELElBQUksQ0FBQyxpQkFBaUIsR0FBRyxLQUFLLENBQUM7YUFDaEM7WUFDRCxJQUFJLENBQUMsV0FBVyxHQUFHLEtBQUssQ0FBQztTQUMxQjtJQUNILENBQUM7Ozs7WUFoREYsVUFBVSxTQUFDLEVBQUMsVUFBVSxFQUFFLE1BQU0sRUFBQzs7OzRDQUtqQixNQUFNLFNBQUMsUUFBUTtZQWJ0QixRQUFRIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7RE9DVU1FTlR9IGZyb20gJ0Bhbmd1bGFyL2NvbW1vbic7XG5pbXBvcnQge0luamVjdCwgSW5qZWN0YWJsZX0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge092ZXJsYXlSZWZlcmVuY2V9IGZyb20gJy4uL292ZXJsYXktcmVmZXJlbmNlJztcbmltcG9ydCB7UGxhdGZvcm19IGZyb20gJ0Bhbmd1bGFyL2Nkay9wbGF0Zm9ybSc7XG5pbXBvcnQge0Jhc2VPdmVybGF5RGlzcGF0Y2hlcn0gZnJvbSAnLi9iYXNlLW92ZXJsYXktZGlzcGF0Y2hlcic7XG5cbi8qKlxuICogU2VydmljZSBmb3IgZGlzcGF0Y2hpbmcgbW91c2UgY2xpY2sgZXZlbnRzIHRoYXQgbGFuZCBvbiB0aGUgYm9keSB0byBhcHByb3ByaWF0ZSBvdmVybGF5IHJlZixcbiAqIGlmIGFueS4gSXQgbWFpbnRhaW5zIGEgbGlzdCBvZiBhdHRhY2hlZCBvdmVybGF5cyB0byBkZXRlcm1pbmUgYmVzdCBzdWl0ZWQgb3ZlcmxheSBiYXNlZFxuICogb24gZXZlbnQgdGFyZ2V0IGFuZCBvcmRlciBvZiBvdmVybGF5IG9wZW5zLlxuICovXG5ASW5qZWN0YWJsZSh7cHJvdmlkZWRJbjogJ3Jvb3QnfSlcbmV4cG9ydCBjbGFzcyBPdmVybGF5T3V0c2lkZUNsaWNrRGlzcGF0Y2hlciBleHRlbmRzIEJhc2VPdmVybGF5RGlzcGF0Y2hlciB7XG4gIHByaXZhdGUgX2N1cnNvck9yaWdpbmFsVmFsdWU6IHN0cmluZztcbiAgcHJpdmF0ZSBfY3Vyc29yU3R5bGVJc1NldCA9IGZhbHNlO1xuXG4gIGNvbnN0cnVjdG9yKEBJbmplY3QoRE9DVU1FTlQpIGRvY3VtZW50OiBhbnksIHByaXZhdGUgX3BsYXRmb3JtOiBQbGF0Zm9ybSkge1xuICAgIHN1cGVyKGRvY3VtZW50KTtcbiAgfVxuXG4gIC8qKiBBZGQgYSBuZXcgb3ZlcmxheSB0byB0aGUgbGlzdCBvZiBhdHRhY2hlZCBvdmVybGF5IHJlZnMuICovXG4gIGFkZChvdmVybGF5UmVmOiBPdmVybGF5UmVmZXJlbmNlKTogdm9pZCB7XG4gICAgc3VwZXIuYWRkKG92ZXJsYXlSZWYpO1xuXG4gICAgLy8gdHNsaW50OmRpc2FibGU6IG1heC1saW5lLWxlbmd0aFxuICAgIC8vIFNhZmFyaSBvbiBpT1MgZG9lcyBub3QgZ2VuZXJhdGUgY2xpY2sgZXZlbnRzIGZvciBub24taW50ZXJhY3RpdmVcbiAgICAvLyBlbGVtZW50cy4gSG93ZXZlciwgd2Ugd2FudCB0byByZWNlaXZlIGEgY2xpY2sgZm9yIGFueSBlbGVtZW50IG91dHNpZGVcbiAgICAvLyB0aGUgb3ZlcmxheS4gV2UgY2FuIGZvcmNlIGEgXCJjbGlja2FibGVcIiBzdGF0ZSBieSBzZXR0aW5nXG4gICAgLy8gYGN1cnNvcjogcG9pbnRlcmAgb24gdGhlIGRvY3VtZW50IGJvZHkuXG4gICAgLy8gU2VlIGh0dHBzOi8vZGV2ZWxvcGVyLm1vemlsbGEub3JnL2VuLVVTL2RvY3MvV2ViL0FQSS9FbGVtZW50L2NsaWNrX2V2ZW50I1NhZmFyaV9Nb2JpbGVcbiAgICAvLyBhbmQgaHR0cHM6Ly9kZXZlbG9wZXIuYXBwbGUuY29tL2xpYnJhcnkvYXJjaGl2ZS9kb2N1bWVudGF0aW9uL0FwcGxlQXBwbGljYXRpb25zL1JlZmVyZW5jZS9TYWZhcmlXZWJDb250ZW50L0hhbmRsaW5nRXZlbnRzL0hhbmRsaW5nRXZlbnRzLmh0bWxcbiAgICAvLyB0c2xpbnQ6ZW5hYmxlOiBtYXgtbGluZS1sZW5ndGhcbiAgICBpZiAoIXRoaXMuX2lzQXR0YWNoZWQpIHtcbiAgICAgIHRoaXMuX2RvY3VtZW50LmJvZHkuYWRkRXZlbnRMaXN0ZW5lcignY2xpY2snLCB0aGlzLl9jbGlja0xpc3RlbmVyLCB0cnVlKTtcbiAgICAgIHRoaXMuX2RvY3VtZW50LmJvZHkuYWRkRXZlbnRMaXN0ZW5lcignY29udGV4dG1lbnUnLCB0aGlzLl9jbGlja0xpc3RlbmVyLCB0cnVlKTtcblxuICAgICAgLy8gY2xpY2sgZXZlbnQgaXMgbm90IGZpcmVkIG9uIGlPUy4gVG8gbWFrZSBlbGVtZW50IFwiY2xpY2thYmxlXCIgd2UgYXJlXG4gICAgICAvLyBzZXR0aW5nIHRoZSBjdXJzb3IgdG8gcG9pbnRlclxuICAgICAgaWYgKHRoaXMuX3BsYXRmb3JtLklPUyAmJiAhdGhpcy5fY3Vyc29yU3R5bGVJc1NldCkge1xuICAgICAgICB0aGlzLl9jdXJzb3JPcmlnaW5hbFZhbHVlID0gdGhpcy5fZG9jdW1lbnQuYm9keS5zdHlsZS5jdXJzb3I7XG4gICAgICAgIHRoaXMuX2RvY3VtZW50LmJvZHkuc3R5bGUuY3Vyc29yID0gJ3BvaW50ZXInO1xuICAgICAgICB0aGlzLl9jdXJzb3JTdHlsZUlzU2V0ID0gdHJ1ZTtcbiAgICAgIH1cblxuICAgICAgdGhpcy5faXNBdHRhY2hlZCA9IHRydWU7XG4gICAgfVxuICB9XG5cbiAgLyoqIERldGFjaGVzIHRoZSBnbG9iYWwga2V5Ym9hcmQgZXZlbnQgbGlzdGVuZXIuICovXG4gIHByb3RlY3RlZCBkZXRhY2goKSB7XG4gICAgaWYgKHRoaXMuX2lzQXR0YWNoZWQpIHtcbiAgICAgIHRoaXMuX2RvY3VtZW50LmJvZHkucmVtb3ZlRXZlbnRMaXN0ZW5lcignY2xpY2snLCB0aGlzLl9jbGlja0xpc3RlbmVyLCB0cnVlKTtcbiAgICAgIHRoaXMuX2RvY3VtZW50LmJvZHkucmVtb3ZlRXZlbnRMaXN0ZW5lcignY29udGV4dG1lbnUnLCB0aGlzLl9jbGlja0xpc3RlbmVyLCB0cnVlKTtcbiAgICAgIGlmICh0aGlzLl9wbGF0Zm9ybS5JT1MgJiYgdGhpcy5fY3Vyc29yU3R5bGVJc1NldCkge1xuICAgICAgICB0aGlzLl9kb2N1bWVudC5ib2R5LnN0eWxlLmN1cnNvciA9IHRoaXMuX2N1cnNvck9yaWdpbmFsVmFsdWU7XG4gICAgICAgIHRoaXMuX2N1cnNvclN0eWxlSXNTZXQgPSBmYWxzZTtcbiAgICAgIH1cbiAgICAgIHRoaXMuX2lzQXR0YWNoZWQgPSBmYWxzZTtcbiAgICB9XG4gIH1cblxuICAvKiogQ2xpY2sgZXZlbnQgbGlzdGVuZXIgdGhhdCB3aWxsIGJlIGF0dGFjaGVkIHRvIHRoZSBib2R5IHByb3BhZ2F0ZSBwaGFzZS4gKi9cbiAgcHJpdmF0ZSBfY2xpY2tMaXN0ZW5lciA9IChldmVudDogTW91c2VFdmVudCkgPT4ge1xuICAgIC8vIEdldCB0aGUgdGFyZ2V0IHRocm91Z2ggdGhlIGBjb21wb3NlZFBhdGhgIGlmIHBvc3NpYmxlIHRvIGFjY291bnQgZm9yIHNoYWRvdyBET00uXG4gICAgY29uc3QgdGFyZ2V0ID0gZXZlbnQuY29tcG9zZWRQYXRoID8gZXZlbnQuY29tcG9zZWRQYXRoKClbMF0gOiBldmVudC50YXJnZXQ7XG4gICAgLy8gV2UgY29weSB0aGUgYXJyYXkgYmVjYXVzZSB0aGUgb3JpZ2luYWwgbWF5IGJlIG1vZGlmaWVkIGFzeW5jaHJvbm91c2x5IGlmIHRoZVxuICAgIC8vIG91dHNpZGVQb2ludGVyRXZlbnRzIGxpc3RlbmVyIGRlY2lkZXMgdG8gZGV0YWNoIG92ZXJsYXlzIHJlc3VsdGluZyBpbiBpbmRleCBlcnJvcnMgaW5zaWRlXG4gICAgLy8gdGhlIGZvciBsb29wLlxuICAgIGNvbnN0IG92ZXJsYXlzID0gdGhpcy5fYXR0YWNoZWRPdmVybGF5cy5zbGljZSgpO1xuXG4gICAgLy8gRGlzcGF0Y2ggdGhlIG1vdXNlIGV2ZW50IHRvIHRoZSB0b3Agb3ZlcmxheSB3aGljaCBoYXMgc3Vic2NyaWJlcnMgdG8gaXRzIG1vdXNlIGV2ZW50cy5cbiAgICAvLyBXZSB3YW50IHRvIHRhcmdldCBhbGwgb3ZlcmxheXMgZm9yIHdoaWNoIHRoZSBjbGljayBjb3VsZCBiZSBjb25zaWRlcmVkIGFzIG91dHNpZGUgY2xpY2suXG4gICAgLy8gQXMgc29vbiBhcyB3ZSByZWFjaCBhbiBvdmVybGF5IGZvciB3aGljaCB0aGUgY2xpY2sgaXMgbm90IG91dHNpZGUgY2xpY2sgd2UgYnJlYWsgb2ZmXG4gICAgLy8gdGhlIGxvb3AuXG4gICAgZm9yIChsZXQgaSA9IG92ZXJsYXlzLmxlbmd0aCAtIDE7IGkgPiAtMTsgaS0tKSB7XG4gICAgICBjb25zdCBvdmVybGF5UmVmID0gb3ZlcmxheXNbaV07XG4gICAgICBpZiAob3ZlcmxheVJlZi5fb3V0c2lkZVBvaW50ZXJFdmVudHMub2JzZXJ2ZXJzLmxlbmd0aCA8IDEgfHwgIW92ZXJsYXlSZWYuaGFzQXR0YWNoZWQoKSkge1xuICAgICAgICBjb250aW51ZTtcbiAgICAgIH1cblxuICAgICAgLy8gSWYgaXQncyBhIGNsaWNrIGluc2lkZSB0aGUgb3ZlcmxheSwganVzdCBicmVhayAtIHdlIHNob3VsZCBkbyBub3RoaW5nXG4gICAgICAvLyBJZiBpdCdzIGFuIG91dHNpZGUgY2xpY2sgZGlzcGF0Y2ggdGhlIG1vdXNlIGV2ZW50LCBhbmQgcHJvY2VlZCB3aXRoIHRoZSBuZXh0IG92ZXJsYXlcbiAgICAgIGlmIChvdmVybGF5UmVmLm92ZXJsYXlFbGVtZW50LmNvbnRhaW5zKHRhcmdldCBhcyBOb2RlKSkge1xuICAgICAgICBicmVhaztcbiAgICAgIH1cblxuICAgICAgb3ZlcmxheVJlZi5fb3V0c2lkZVBvaW50ZXJFdmVudHMubmV4dChldmVudCk7XG4gICAgfVxuICB9XG59XG4iXX0=