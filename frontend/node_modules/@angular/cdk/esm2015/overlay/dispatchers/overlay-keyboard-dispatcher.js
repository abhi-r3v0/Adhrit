/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { DOCUMENT } from '@angular/common';
import { Inject, Injectable, Optional, SkipSelf, } from '@angular/core';
import { BaseOverlayDispatcher } from './base-overlay-dispatcher';
import * as i0 from "@angular/core";
import * as i1 from "@angular/common";
/**
 * Service for dispatching keyboard events that land on the body to appropriate overlay ref,
 * if any. It maintains a list of attached overlays to determine best suited overlay based
 * on event target and order of overlay opens.
 */
export class OverlayKeyboardDispatcher extends BaseOverlayDispatcher {
    constructor(document) {
        super(document);
        /** Keyboard event listener that will be attached to the body. */
        this._keydownListener = (event) => {
            const overlays = this._attachedOverlays;
            for (let i = overlays.length - 1; i > -1; i--) {
                // Dispatch the keydown event to the top overlay which has subscribers to its keydown events.
                // We want to target the most recent overlay, rather than trying to match where the event came
                // from, because some components might open an overlay, but keep focus on a trigger element
                // (e.g. for select and autocomplete). We skip overlays without keydown event subscriptions,
                // because we don't want overlays that don't handle keyboard events to block the ones below
                // them that do.
                if (overlays[i]._keydownEvents.observers.length > 0) {
                    overlays[i]._keydownEvents.next(event);
                    break;
                }
            }
        };
    }
    /** Add a new overlay to the list of attached overlay refs. */
    add(overlayRef) {
        super.add(overlayRef);
        // Lazily start dispatcher once first overlay is added
        if (!this._isAttached) {
            this._document.body.addEventListener('keydown', this._keydownListener);
            this._isAttached = true;
        }
    }
    /** Detaches the global keyboard event listener. */
    detach() {
        if (this._isAttached) {
            this._document.body.removeEventListener('keydown', this._keydownListener);
            this._isAttached = false;
        }
    }
}
OverlayKeyboardDispatcher.ɵprov = i0.ɵɵdefineInjectable({ factory: function OverlayKeyboardDispatcher_Factory() { return new OverlayKeyboardDispatcher(i0.ɵɵinject(i1.DOCUMENT)); }, token: OverlayKeyboardDispatcher, providedIn: "root" });
OverlayKeyboardDispatcher.decorators = [
    { type: Injectable, args: [{ providedIn: 'root' },] }
];
OverlayKeyboardDispatcher.ctorParameters = () => [
    { type: undefined, decorators: [{ type: Inject, args: [DOCUMENT,] }] }
];
/** @docs-private @deprecated @breaking-change 8.0.0 */
export function OVERLAY_KEYBOARD_DISPATCHER_PROVIDER_FACTORY(dispatcher, _document) {
    return dispatcher || new OverlayKeyboardDispatcher(_document);
}
/** @docs-private @deprecated @breaking-change 8.0.0 */
export const OVERLAY_KEYBOARD_DISPATCHER_PROVIDER = {
    // If there is already an OverlayKeyboardDispatcher available, use that.
    // Otherwise, provide a new one.
    provide: OverlayKeyboardDispatcher,
    deps: [
        [new Optional(), new SkipSelf(), OverlayKeyboardDispatcher],
        // Coerce to `InjectionToken` so that the `deps` match the "shape"
        // of the type expected by Angular
        DOCUMENT
    ],
    useFactory: OVERLAY_KEYBOARD_DISPATCHER_PROVIDER_FACTORY
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoib3ZlcmxheS1rZXlib2FyZC1kaXNwYXRjaGVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9vdmVybGF5L2Rpc3BhdGNoZXJzL292ZXJsYXkta2V5Ym9hcmQtZGlzcGF0Y2hlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0saUJBQWlCLENBQUM7QUFDekMsT0FBTyxFQUNMLE1BQU0sRUFDTixVQUFVLEVBRVYsUUFBUSxFQUNSLFFBQVEsR0FDVCxNQUFNLGVBQWUsQ0FBQztBQUV2QixPQUFPLEVBQUMscUJBQXFCLEVBQUMsTUFBTSwyQkFBMkIsQ0FBQzs7O0FBR2hFOzs7O0dBSUc7QUFFSCxNQUFNLE9BQU8seUJBQTBCLFNBQVEscUJBQXFCO0lBRWxFLFlBQThCLFFBQWE7UUFDekMsS0FBSyxDQUFDLFFBQVEsQ0FBQyxDQUFDO1FBc0JsQixpRUFBaUU7UUFDekQscUJBQWdCLEdBQUcsQ0FBQyxLQUFvQixFQUFFLEVBQUU7WUFDbEQsTUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLGlCQUFpQixDQUFDO1lBRXhDLEtBQUssSUFBSSxDQUFDLEdBQUcsUUFBUSxDQUFDLE1BQU0sR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLENBQUMsQ0FBQyxFQUFFLENBQUMsRUFBRSxFQUFFO2dCQUM3Qyw2RkFBNkY7Z0JBQzdGLDhGQUE4RjtnQkFDOUYsMkZBQTJGO2dCQUMzRiw0RkFBNEY7Z0JBQzVGLDJGQUEyRjtnQkFDM0YsZ0JBQWdCO2dCQUNoQixJQUFJLFFBQVEsQ0FBQyxDQUFDLENBQUMsQ0FBQyxjQUFjLENBQUMsU0FBUyxDQUFDLE1BQU0sR0FBRyxDQUFDLEVBQUU7b0JBQ25ELFFBQVEsQ0FBQyxDQUFDLENBQUMsQ0FBQyxjQUFjLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDO29CQUN2QyxNQUFNO2lCQUNQO2FBQ0Y7UUFDSCxDQUFDLENBQUE7SUFyQ0QsQ0FBQztJQUVELDhEQUE4RDtJQUM5RCxHQUFHLENBQUMsVUFBNEI7UUFDOUIsS0FBSyxDQUFDLEdBQUcsQ0FBQyxVQUFVLENBQUMsQ0FBQztRQUV0QixzREFBc0Q7UUFDdEQsSUFBSSxDQUFDLElBQUksQ0FBQyxXQUFXLEVBQUU7WUFDckIsSUFBSSxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsU0FBUyxFQUFFLElBQUksQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDO1lBQ3ZFLElBQUksQ0FBQyxXQUFXLEdBQUcsSUFBSSxDQUFDO1NBQ3pCO0lBQ0gsQ0FBQztJQUVELG1EQUFtRDtJQUN6QyxNQUFNO1FBQ2QsSUFBSSxJQUFJLENBQUMsV0FBVyxFQUFFO1lBQ3BCLElBQUksQ0FBQyxTQUFTLENBQUMsSUFBSSxDQUFDLG1CQUFtQixDQUFDLFNBQVMsRUFBRSxJQUFJLENBQUMsZ0JBQWdCLENBQUMsQ0FBQztZQUMxRSxJQUFJLENBQUMsV0FBVyxHQUFHLEtBQUssQ0FBQztTQUMxQjtJQUNILENBQUM7Ozs7WUF4QkYsVUFBVSxTQUFDLEVBQUMsVUFBVSxFQUFFLE1BQU0sRUFBQzs7OzRDQUdqQixNQUFNLFNBQUMsUUFBUTs7QUEyQzlCLHVEQUF1RDtBQUN2RCxNQUFNLFVBQVUsNENBQTRDLENBQ3hELFVBQXFDLEVBQUUsU0FBYztJQUN2RCxPQUFPLFVBQVUsSUFBSSxJQUFJLHlCQUF5QixDQUFDLFNBQVMsQ0FBQyxDQUFDO0FBQ2hFLENBQUM7QUFFRCx1REFBdUQ7QUFDdkQsTUFBTSxDQUFDLE1BQU0sb0NBQW9DLEdBQUc7SUFDbEQsd0VBQXdFO0lBQ3hFLGdDQUFnQztJQUNoQyxPQUFPLEVBQUUseUJBQXlCO0lBQ2xDLElBQUksRUFBRTtRQUNKLENBQUMsSUFBSSxRQUFRLEVBQUUsRUFBRSxJQUFJLFFBQVEsRUFBRSxFQUFFLHlCQUF5QixDQUFDO1FBRTNELGtFQUFrRTtRQUNsRSxrQ0FBa0M7UUFDbEMsUUFBK0I7S0FDaEM7SUFDRCxVQUFVLEVBQUUsNENBQTRDO0NBQ3pELENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtET0NVTUVOVH0gZnJvbSAnQGFuZ3VsYXIvY29tbW9uJztcbmltcG9ydCB7XG4gIEluamVjdCxcbiAgSW5qZWN0YWJsZSxcbiAgSW5qZWN0aW9uVG9rZW4sXG4gIE9wdGlvbmFsLFxuICBTa2lwU2VsZixcbn0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge092ZXJsYXlSZWZlcmVuY2V9IGZyb20gJy4uL292ZXJsYXktcmVmZXJlbmNlJztcbmltcG9ydCB7QmFzZU92ZXJsYXlEaXNwYXRjaGVyfSBmcm9tICcuL2Jhc2Utb3ZlcmxheS1kaXNwYXRjaGVyJztcblxuXG4vKipcbiAqIFNlcnZpY2UgZm9yIGRpc3BhdGNoaW5nIGtleWJvYXJkIGV2ZW50cyB0aGF0IGxhbmQgb24gdGhlIGJvZHkgdG8gYXBwcm9wcmlhdGUgb3ZlcmxheSByZWYsXG4gKiBpZiBhbnkuIEl0IG1haW50YWlucyBhIGxpc3Qgb2YgYXR0YWNoZWQgb3ZlcmxheXMgdG8gZGV0ZXJtaW5lIGJlc3Qgc3VpdGVkIG92ZXJsYXkgYmFzZWRcbiAqIG9uIGV2ZW50IHRhcmdldCBhbmQgb3JkZXIgb2Ygb3ZlcmxheSBvcGVucy5cbiAqL1xuQEluamVjdGFibGUoe3Byb3ZpZGVkSW46ICdyb290J30pXG5leHBvcnQgY2xhc3MgT3ZlcmxheUtleWJvYXJkRGlzcGF0Y2hlciBleHRlbmRzIEJhc2VPdmVybGF5RGlzcGF0Y2hlciB7XG5cbiAgY29uc3RydWN0b3IoQEluamVjdChET0NVTUVOVCkgZG9jdW1lbnQ6IGFueSkge1xuICAgIHN1cGVyKGRvY3VtZW50KTtcbiAgfVxuXG4gIC8qKiBBZGQgYSBuZXcgb3ZlcmxheSB0byB0aGUgbGlzdCBvZiBhdHRhY2hlZCBvdmVybGF5IHJlZnMuICovXG4gIGFkZChvdmVybGF5UmVmOiBPdmVybGF5UmVmZXJlbmNlKTogdm9pZCB7XG4gICAgc3VwZXIuYWRkKG92ZXJsYXlSZWYpO1xuXG4gICAgLy8gTGF6aWx5IHN0YXJ0IGRpc3BhdGNoZXIgb25jZSBmaXJzdCBvdmVybGF5IGlzIGFkZGVkXG4gICAgaWYgKCF0aGlzLl9pc0F0dGFjaGVkKSB7XG4gICAgICB0aGlzLl9kb2N1bWVudC5ib2R5LmFkZEV2ZW50TGlzdGVuZXIoJ2tleWRvd24nLCB0aGlzLl9rZXlkb3duTGlzdGVuZXIpO1xuICAgICAgdGhpcy5faXNBdHRhY2hlZCA9IHRydWU7XG4gICAgfVxuICB9XG5cbiAgLyoqIERldGFjaGVzIHRoZSBnbG9iYWwga2V5Ym9hcmQgZXZlbnQgbGlzdGVuZXIuICovXG4gIHByb3RlY3RlZCBkZXRhY2goKSB7XG4gICAgaWYgKHRoaXMuX2lzQXR0YWNoZWQpIHtcbiAgICAgIHRoaXMuX2RvY3VtZW50LmJvZHkucmVtb3ZlRXZlbnRMaXN0ZW5lcigna2V5ZG93bicsIHRoaXMuX2tleWRvd25MaXN0ZW5lcik7XG4gICAgICB0aGlzLl9pc0F0dGFjaGVkID0gZmFsc2U7XG4gICAgfVxuICB9XG5cbiAgLyoqIEtleWJvYXJkIGV2ZW50IGxpc3RlbmVyIHRoYXQgd2lsbCBiZSBhdHRhY2hlZCB0byB0aGUgYm9keS4gKi9cbiAgcHJpdmF0ZSBfa2V5ZG93bkxpc3RlbmVyID0gKGV2ZW50OiBLZXlib2FyZEV2ZW50KSA9PiB7XG4gICAgY29uc3Qgb3ZlcmxheXMgPSB0aGlzLl9hdHRhY2hlZE92ZXJsYXlzO1xuXG4gICAgZm9yIChsZXQgaSA9IG92ZXJsYXlzLmxlbmd0aCAtIDE7IGkgPiAtMTsgaS0tKSB7XG4gICAgICAvLyBEaXNwYXRjaCB0aGUga2V5ZG93biBldmVudCB0byB0aGUgdG9wIG92ZXJsYXkgd2hpY2ggaGFzIHN1YnNjcmliZXJzIHRvIGl0cyBrZXlkb3duIGV2ZW50cy5cbiAgICAgIC8vIFdlIHdhbnQgdG8gdGFyZ2V0IHRoZSBtb3N0IHJlY2VudCBvdmVybGF5LCByYXRoZXIgdGhhbiB0cnlpbmcgdG8gbWF0Y2ggd2hlcmUgdGhlIGV2ZW50IGNhbWVcbiAgICAgIC8vIGZyb20sIGJlY2F1c2Ugc29tZSBjb21wb25lbnRzIG1pZ2h0IG9wZW4gYW4gb3ZlcmxheSwgYnV0IGtlZXAgZm9jdXMgb24gYSB0cmlnZ2VyIGVsZW1lbnRcbiAgICAgIC8vIChlLmcuIGZvciBzZWxlY3QgYW5kIGF1dG9jb21wbGV0ZSkuIFdlIHNraXAgb3ZlcmxheXMgd2l0aG91dCBrZXlkb3duIGV2ZW50IHN1YnNjcmlwdGlvbnMsXG4gICAgICAvLyBiZWNhdXNlIHdlIGRvbid0IHdhbnQgb3ZlcmxheXMgdGhhdCBkb24ndCBoYW5kbGUga2V5Ym9hcmQgZXZlbnRzIHRvIGJsb2NrIHRoZSBvbmVzIGJlbG93XG4gICAgICAvLyB0aGVtIHRoYXQgZG8uXG4gICAgICBpZiAob3ZlcmxheXNbaV0uX2tleWRvd25FdmVudHMub2JzZXJ2ZXJzLmxlbmd0aCA+IDApIHtcbiAgICAgICAgb3ZlcmxheXNbaV0uX2tleWRvd25FdmVudHMubmV4dChldmVudCk7XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgIH1cbiAgfVxufVxuXG5cbi8qKiBAZG9jcy1wcml2YXRlIEBkZXByZWNhdGVkIEBicmVha2luZy1jaGFuZ2UgOC4wLjAgKi9cbmV4cG9ydCBmdW5jdGlvbiBPVkVSTEFZX0tFWUJPQVJEX0RJU1BBVENIRVJfUFJPVklERVJfRkFDVE9SWShcbiAgICBkaXNwYXRjaGVyOiBPdmVybGF5S2V5Ym9hcmREaXNwYXRjaGVyLCBfZG9jdW1lbnQ6IGFueSkge1xuICByZXR1cm4gZGlzcGF0Y2hlciB8fCBuZXcgT3ZlcmxheUtleWJvYXJkRGlzcGF0Y2hlcihfZG9jdW1lbnQpO1xufVxuXG4vKiogQGRvY3MtcHJpdmF0ZSBAZGVwcmVjYXRlZCBAYnJlYWtpbmctY2hhbmdlIDguMC4wICovXG5leHBvcnQgY29uc3QgT1ZFUkxBWV9LRVlCT0FSRF9ESVNQQVRDSEVSX1BST1ZJREVSID0ge1xuICAvLyBJZiB0aGVyZSBpcyBhbHJlYWR5IGFuIE92ZXJsYXlLZXlib2FyZERpc3BhdGNoZXIgYXZhaWxhYmxlLCB1c2UgdGhhdC5cbiAgLy8gT3RoZXJ3aXNlLCBwcm92aWRlIGEgbmV3IG9uZS5cbiAgcHJvdmlkZTogT3ZlcmxheUtleWJvYXJkRGlzcGF0Y2hlcixcbiAgZGVwczogW1xuICAgIFtuZXcgT3B0aW9uYWwoKSwgbmV3IFNraXBTZWxmKCksIE92ZXJsYXlLZXlib2FyZERpc3BhdGNoZXJdLFxuXG4gICAgLy8gQ29lcmNlIHRvIGBJbmplY3Rpb25Ub2tlbmAgc28gdGhhdCB0aGUgYGRlcHNgIG1hdGNoIHRoZSBcInNoYXBlXCJcbiAgICAvLyBvZiB0aGUgdHlwZSBleHBlY3RlZCBieSBBbmd1bGFyXG4gICAgRE9DVU1FTlQgYXMgSW5qZWN0aW9uVG9rZW48YW55PlxuICBdLFxuICB1c2VGYWN0b3J5OiBPVkVSTEFZX0tFWUJPQVJEX0RJU1BBVENIRVJfUFJPVklERVJfRkFDVE9SWVxufTtcbiJdfQ==