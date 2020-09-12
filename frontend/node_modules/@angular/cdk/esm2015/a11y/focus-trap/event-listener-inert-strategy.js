/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { closest } from './polyfill';
/**
 * Lightweight FocusTrapInertStrategy that adds a document focus event
 * listener to redirect focus back inside the FocusTrap.
 */
export class EventListenerFocusTrapInertStrategy {
    constructor() {
        /** Focus event handler. */
        this._listener = null;
    }
    /** Adds a document event listener that keeps focus inside the FocusTrap. */
    preventFocus(focusTrap) {
        // Ensure there's only one listener per document
        if (this._listener) {
            focusTrap._document.removeEventListener('focus', this._listener, true);
        }
        this._listener = (e) => this._trapFocus(focusTrap, e);
        focusTrap._ngZone.runOutsideAngular(() => {
            focusTrap._document.addEventListener('focus', this._listener, true);
        });
    }
    /** Removes the event listener added in preventFocus. */
    allowFocus(focusTrap) {
        if (!this._listener) {
            return;
        }
        focusTrap._document.removeEventListener('focus', this._listener, true);
        this._listener = null;
    }
    /**
     * Refocuses the first element in the FocusTrap if the focus event target was outside
     * the FocusTrap.
     *
     * This is an event listener callback. The event listener is added in runOutsideAngular,
     * so all this code runs outside Angular as well.
     */
    _trapFocus(focusTrap, event) {
        const target = event.target;
        const focusTrapRoot = focusTrap._element;
        // Don't refocus if target was in an overlay, because the overlay might be associated
        // with an element inside the FocusTrap, ex. mat-select.
        if (!focusTrapRoot.contains(target) && closest(target, 'div.cdk-overlay-pane') === null) {
            // Some legacy FocusTrap usages have logic that focuses some element on the page
            // just before FocusTrap is destroyed. For backwards compatibility, wait
            // to be sure FocusTrap is still enabled before refocusing.
            setTimeout(() => {
                // Check whether focus wasn't put back into the focus trap while the timeout was pending.
                if (focusTrap.enabled && !focusTrapRoot.contains(focusTrap._document.activeElement)) {
                    focusTrap.focusFirstTabbableElement();
                }
            });
        }
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXZlbnQtbGlzdGVuZXItaW5lcnQtc3RyYXRlZ3kuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL2ExMXkvZm9jdXMtdHJhcC9ldmVudC1saXN0ZW5lci1pbmVydC1zdHJhdGVneS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFJSCxPQUFPLEVBQUMsT0FBTyxFQUFDLE1BQU0sWUFBWSxDQUFDO0FBRW5DOzs7R0FHRztBQUNILE1BQU0sT0FBTyxtQ0FBbUM7SUFBaEQ7UUFDRSwyQkFBMkI7UUFDbkIsY0FBUyxHQUFxQyxJQUFJLENBQUM7SUFpRDdELENBQUM7SUEvQ0MsNEVBQTRFO0lBQzVFLFlBQVksQ0FBQyxTQUFnQztRQUMzQyxnREFBZ0Q7UUFDaEQsSUFBSSxJQUFJLENBQUMsU0FBUyxFQUFFO1lBQ2xCLFNBQVMsQ0FBQyxTQUFTLENBQUMsbUJBQW1CLENBQUMsT0FBTyxFQUFFLElBQUksQ0FBQyxTQUFVLEVBQUUsSUFBSSxDQUFDLENBQUM7U0FDekU7UUFFRCxJQUFJLENBQUMsU0FBUyxHQUFHLENBQUMsQ0FBYSxFQUFFLEVBQUUsQ0FBQyxJQUFJLENBQUMsVUFBVSxDQUFDLFNBQVMsRUFBRSxDQUFDLENBQUMsQ0FBQztRQUNsRSxTQUFTLENBQUMsT0FBTyxDQUFDLGlCQUFpQixDQUFDLEdBQUcsRUFBRTtZQUN2QyxTQUFTLENBQUMsU0FBUyxDQUFDLGdCQUFnQixDQUFDLE9BQU8sRUFBRSxJQUFJLENBQUMsU0FBVSxFQUFFLElBQUksQ0FBQyxDQUFDO1FBQ3ZFLENBQUMsQ0FBQyxDQUFDO0lBQ0wsQ0FBQztJQUVELHdEQUF3RDtJQUN4RCxVQUFVLENBQUMsU0FBZ0M7UUFDekMsSUFBSSxDQUFDLElBQUksQ0FBQyxTQUFTLEVBQUU7WUFDbkIsT0FBTztTQUNSO1FBQ0QsU0FBUyxDQUFDLFNBQVMsQ0FBQyxtQkFBbUIsQ0FBQyxPQUFPLEVBQUUsSUFBSSxDQUFDLFNBQVUsRUFBRSxJQUFJLENBQUMsQ0FBQztRQUN4RSxJQUFJLENBQUMsU0FBUyxHQUFHLElBQUksQ0FBQztJQUN4QixDQUFDO0lBRUQ7Ozs7OztPQU1HO0lBQ0ssVUFBVSxDQUFDLFNBQWdDLEVBQUUsS0FBaUI7UUFDcEUsTUFBTSxNQUFNLEdBQUcsS0FBSyxDQUFDLE1BQXFCLENBQUM7UUFDM0MsTUFBTSxhQUFhLEdBQUcsU0FBUyxDQUFDLFFBQVEsQ0FBQztRQUV6QyxxRkFBcUY7UUFDckYsd0RBQXdEO1FBQ3hELElBQUksQ0FBQyxhQUFhLENBQUMsUUFBUSxDQUFDLE1BQU0sQ0FBQyxJQUFJLE9BQU8sQ0FBQyxNQUFNLEVBQUUsc0JBQXNCLENBQUMsS0FBSyxJQUFJLEVBQUU7WUFDckYsZ0ZBQWdGO1lBQ2hGLHdFQUF3RTtZQUN4RSwyREFBMkQ7WUFDM0QsVUFBVSxDQUFDLEdBQUcsRUFBRTtnQkFDZCx5RkFBeUY7Z0JBQ3pGLElBQUksU0FBUyxDQUFDLE9BQU8sSUFBSSxDQUFDLGFBQWEsQ0FBQyxRQUFRLENBQUMsU0FBUyxDQUFDLFNBQVMsQ0FBQyxhQUFhLENBQUMsRUFBRTtvQkFDbkYsU0FBUyxDQUFDLHlCQUF5QixFQUFFLENBQUM7aUJBQ3ZDO1lBQ0gsQ0FBQyxDQUFDLENBQUM7U0FDSjtJQUNMLENBQUM7Q0FDRiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0ZvY3VzVHJhcEluZXJ0U3RyYXRlZ3l9IGZyb20gJy4vZm9jdXMtdHJhcC1pbmVydC1zdHJhdGVneSc7XG5pbXBvcnQge0NvbmZpZ3VyYWJsZUZvY3VzVHJhcH0gZnJvbSAnLi9jb25maWd1cmFibGUtZm9jdXMtdHJhcCc7XG5pbXBvcnQge2Nsb3Nlc3R9IGZyb20gJy4vcG9seWZpbGwnO1xuXG4vKipcbiAqIExpZ2h0d2VpZ2h0IEZvY3VzVHJhcEluZXJ0U3RyYXRlZ3kgdGhhdCBhZGRzIGEgZG9jdW1lbnQgZm9jdXMgZXZlbnRcbiAqIGxpc3RlbmVyIHRvIHJlZGlyZWN0IGZvY3VzIGJhY2sgaW5zaWRlIHRoZSBGb2N1c1RyYXAuXG4gKi9cbmV4cG9ydCBjbGFzcyBFdmVudExpc3RlbmVyRm9jdXNUcmFwSW5lcnRTdHJhdGVneSBpbXBsZW1lbnRzIEZvY3VzVHJhcEluZXJ0U3RyYXRlZ3kge1xuICAvKiogRm9jdXMgZXZlbnQgaGFuZGxlci4gKi9cbiAgcHJpdmF0ZSBfbGlzdGVuZXI6ICgoZTogRm9jdXNFdmVudCkgPT4gdm9pZCkgfCBudWxsID0gbnVsbDtcblxuICAvKiogQWRkcyBhIGRvY3VtZW50IGV2ZW50IGxpc3RlbmVyIHRoYXQga2VlcHMgZm9jdXMgaW5zaWRlIHRoZSBGb2N1c1RyYXAuICovXG4gIHByZXZlbnRGb2N1cyhmb2N1c1RyYXA6IENvbmZpZ3VyYWJsZUZvY3VzVHJhcCk6IHZvaWQge1xuICAgIC8vIEVuc3VyZSB0aGVyZSdzIG9ubHkgb25lIGxpc3RlbmVyIHBlciBkb2N1bWVudFxuICAgIGlmICh0aGlzLl9saXN0ZW5lcikge1xuICAgICAgZm9jdXNUcmFwLl9kb2N1bWVudC5yZW1vdmVFdmVudExpc3RlbmVyKCdmb2N1cycsIHRoaXMuX2xpc3RlbmVyISwgdHJ1ZSk7XG4gICAgfVxuXG4gICAgdGhpcy5fbGlzdGVuZXIgPSAoZTogRm9jdXNFdmVudCkgPT4gdGhpcy5fdHJhcEZvY3VzKGZvY3VzVHJhcCwgZSk7XG4gICAgZm9jdXNUcmFwLl9uZ1pvbmUucnVuT3V0c2lkZUFuZ3VsYXIoKCkgPT4ge1xuICAgICAgZm9jdXNUcmFwLl9kb2N1bWVudC5hZGRFdmVudExpc3RlbmVyKCdmb2N1cycsIHRoaXMuX2xpc3RlbmVyISwgdHJ1ZSk7XG4gICAgfSk7XG4gIH1cblxuICAvKiogUmVtb3ZlcyB0aGUgZXZlbnQgbGlzdGVuZXIgYWRkZWQgaW4gcHJldmVudEZvY3VzLiAqL1xuICBhbGxvd0ZvY3VzKGZvY3VzVHJhcDogQ29uZmlndXJhYmxlRm9jdXNUcmFwKTogdm9pZCB7XG4gICAgaWYgKCF0aGlzLl9saXN0ZW5lcikge1xuICAgICAgcmV0dXJuO1xuICAgIH1cbiAgICBmb2N1c1RyYXAuX2RvY3VtZW50LnJlbW92ZUV2ZW50TGlzdGVuZXIoJ2ZvY3VzJywgdGhpcy5fbGlzdGVuZXIhLCB0cnVlKTtcbiAgICB0aGlzLl9saXN0ZW5lciA9IG51bGw7XG4gIH1cblxuICAvKipcbiAgICogUmVmb2N1c2VzIHRoZSBmaXJzdCBlbGVtZW50IGluIHRoZSBGb2N1c1RyYXAgaWYgdGhlIGZvY3VzIGV2ZW50IHRhcmdldCB3YXMgb3V0c2lkZVxuICAgKiB0aGUgRm9jdXNUcmFwLlxuICAgKlxuICAgKiBUaGlzIGlzIGFuIGV2ZW50IGxpc3RlbmVyIGNhbGxiYWNrLiBUaGUgZXZlbnQgbGlzdGVuZXIgaXMgYWRkZWQgaW4gcnVuT3V0c2lkZUFuZ3VsYXIsXG4gICAqIHNvIGFsbCB0aGlzIGNvZGUgcnVucyBvdXRzaWRlIEFuZ3VsYXIgYXMgd2VsbC5cbiAgICovXG4gIHByaXZhdGUgX3RyYXBGb2N1cyhmb2N1c1RyYXA6IENvbmZpZ3VyYWJsZUZvY3VzVHJhcCwgZXZlbnQ6IEZvY3VzRXZlbnQpIHtcbiAgICBjb25zdCB0YXJnZXQgPSBldmVudC50YXJnZXQgYXMgSFRNTEVsZW1lbnQ7XG4gICAgY29uc3QgZm9jdXNUcmFwUm9vdCA9IGZvY3VzVHJhcC5fZWxlbWVudDtcblxuICAgIC8vIERvbid0IHJlZm9jdXMgaWYgdGFyZ2V0IHdhcyBpbiBhbiBvdmVybGF5LCBiZWNhdXNlIHRoZSBvdmVybGF5IG1pZ2h0IGJlIGFzc29jaWF0ZWRcbiAgICAvLyB3aXRoIGFuIGVsZW1lbnQgaW5zaWRlIHRoZSBGb2N1c1RyYXAsIGV4LiBtYXQtc2VsZWN0LlxuICAgIGlmICghZm9jdXNUcmFwUm9vdC5jb250YWlucyh0YXJnZXQpICYmIGNsb3Nlc3QodGFyZ2V0LCAnZGl2LmNkay1vdmVybGF5LXBhbmUnKSA9PT0gbnVsbCkge1xuICAgICAgICAvLyBTb21lIGxlZ2FjeSBGb2N1c1RyYXAgdXNhZ2VzIGhhdmUgbG9naWMgdGhhdCBmb2N1c2VzIHNvbWUgZWxlbWVudCBvbiB0aGUgcGFnZVxuICAgICAgICAvLyBqdXN0IGJlZm9yZSBGb2N1c1RyYXAgaXMgZGVzdHJveWVkLiBGb3IgYmFja3dhcmRzIGNvbXBhdGliaWxpdHksIHdhaXRcbiAgICAgICAgLy8gdG8gYmUgc3VyZSBGb2N1c1RyYXAgaXMgc3RpbGwgZW5hYmxlZCBiZWZvcmUgcmVmb2N1c2luZy5cbiAgICAgICAgc2V0VGltZW91dCgoKSA9PiB7XG4gICAgICAgICAgLy8gQ2hlY2sgd2hldGhlciBmb2N1cyB3YXNuJ3QgcHV0IGJhY2sgaW50byB0aGUgZm9jdXMgdHJhcCB3aGlsZSB0aGUgdGltZW91dCB3YXMgcGVuZGluZy5cbiAgICAgICAgICBpZiAoZm9jdXNUcmFwLmVuYWJsZWQgJiYgIWZvY3VzVHJhcFJvb3QuY29udGFpbnMoZm9jdXNUcmFwLl9kb2N1bWVudC5hY3RpdmVFbGVtZW50KSkge1xuICAgICAgICAgICAgZm9jdXNUcmFwLmZvY3VzRmlyc3RUYWJiYWJsZUVsZW1lbnQoKTtcbiAgICAgICAgICB9XG4gICAgICAgIH0pO1xuICAgICAgfVxuICB9XG59XG4iXX0=