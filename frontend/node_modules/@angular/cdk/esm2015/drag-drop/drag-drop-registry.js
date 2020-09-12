/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Injectable, NgZone, Inject } from '@angular/core';
import { DOCUMENT } from '@angular/common';
import { normalizePassiveListenerOptions } from '@angular/cdk/platform';
import { Subject } from 'rxjs';
import * as i0 from "@angular/core";
import * as i1 from "@angular/common";
/** Event options that can be used to bind an active, capturing event. */
const activeCapturingEventOptions = normalizePassiveListenerOptions({
    passive: false,
    capture: true
});
/**
 * Service that keeps track of all the drag item and drop container
 * instances, and manages global event listeners on the `document`.
 * @docs-private
 */
// Note: this class is generic, rather than referencing CdkDrag and CdkDropList directly, in order
// to avoid circular imports. If we were to reference them here, importing the registry into the
// classes that are registering themselves will introduce a circular import.
export class DragDropRegistry {
    constructor(_ngZone, _document) {
        this._ngZone = _ngZone;
        /** Registered drop container instances. */
        this._dropInstances = new Set();
        /** Registered drag item instances. */
        this._dragInstances = new Set();
        /** Drag item instances that are currently being dragged. */
        this._activeDragInstances = new Set();
        /** Keeps track of the event listeners that we've bound to the `document`. */
        this._globalListeners = new Map();
        /**
         * Emits the `touchmove` or `mousemove` events that are dispatched
         * while the user is dragging a drag item instance.
         */
        this.pointerMove = new Subject();
        /**
         * Emits the `touchend` or `mouseup` events that are dispatched
         * while the user is dragging a drag item instance.
         */
        this.pointerUp = new Subject();
        /** Emits when the viewport has been scrolled while the user is dragging an item. */
        this.scroll = new Subject();
        /**
         * Event listener that will prevent the default browser action while the user is dragging.
         * @param event Event whose default action should be prevented.
         */
        this._preventDefaultWhileDragging = (event) => {
            if (this._activeDragInstances.size) {
                event.preventDefault();
            }
        };
        this._document = _document;
    }
    /** Adds a drop container to the registry. */
    registerDropContainer(drop) {
        if (!this._dropInstances.has(drop)) {
            this._dropInstances.add(drop);
        }
    }
    /** Adds a drag item instance to the registry. */
    registerDragItem(drag) {
        this._dragInstances.add(drag);
        // The `touchmove` event gets bound once, ahead of time, because WebKit
        // won't preventDefault on a dynamically-added `touchmove` listener.
        // See https://bugs.webkit.org/show_bug.cgi?id=184250.
        if (this._dragInstances.size === 1) {
            this._ngZone.runOutsideAngular(() => {
                // The event handler has to be explicitly active,
                // because newer browsers make it passive by default.
                this._document.addEventListener('touchmove', this._preventDefaultWhileDragging, activeCapturingEventOptions);
            });
        }
    }
    /** Removes a drop container from the registry. */
    removeDropContainer(drop) {
        this._dropInstances.delete(drop);
    }
    /** Removes a drag item instance from the registry. */
    removeDragItem(drag) {
        this._dragInstances.delete(drag);
        this.stopDragging(drag);
        if (this._dragInstances.size === 0) {
            this._document.removeEventListener('touchmove', this._preventDefaultWhileDragging, activeCapturingEventOptions);
        }
    }
    /**
     * Starts the dragging sequence for a drag instance.
     * @param drag Drag instance which is being dragged.
     * @param event Event that initiated the dragging.
     */
    startDragging(drag, event) {
        // Do not process the same drag twice to avoid memory leaks and redundant listeners
        if (this._activeDragInstances.has(drag)) {
            return;
        }
        this._activeDragInstances.add(drag);
        if (this._activeDragInstances.size === 1) {
            const isTouchEvent = event.type.startsWith('touch');
            const moveEvent = isTouchEvent ? 'touchmove' : 'mousemove';
            const upEvent = isTouchEvent ? 'touchend' : 'mouseup';
            // We explicitly bind __active__ listeners here, because newer browsers will default to
            // passive ones for `mousemove` and `touchmove`. The events need to be active, because we
            // use `preventDefault` to prevent the page from scrolling while the user is dragging.
            this._globalListeners
                .set(moveEvent, {
                handler: (e) => this.pointerMove.next(e),
                options: activeCapturingEventOptions
            })
                .set(upEvent, {
                handler: (e) => this.pointerUp.next(e),
                options: true
            })
                .set('scroll', {
                handler: (e) => this.scroll.next(e),
                // Use capturing so that we pick up scroll changes in any scrollable nodes that aren't
                // the document. See https://github.com/angular/components/issues/17144.
                options: true
            })
                // Preventing the default action on `mousemove` isn't enough to disable text selection
                // on Safari so we need to prevent the selection event as well. Alternatively this can
                // be done by setting `user-select: none` on the `body`, however it has causes a style
                // recalculation which can be expensive on pages with a lot of elements.
                .set('selectstart', {
                handler: this._preventDefaultWhileDragging,
                options: activeCapturingEventOptions
            });
            this._ngZone.runOutsideAngular(() => {
                this._globalListeners.forEach((config, name) => {
                    this._document.addEventListener(name, config.handler, config.options);
                });
            });
        }
    }
    /** Stops dragging a drag item instance. */
    stopDragging(drag) {
        this._activeDragInstances.delete(drag);
        if (this._activeDragInstances.size === 0) {
            this._clearGlobalListeners();
        }
    }
    /** Gets whether a drag item instance is currently being dragged. */
    isDragging(drag) {
        return this._activeDragInstances.has(drag);
    }
    ngOnDestroy() {
        this._dragInstances.forEach(instance => this.removeDragItem(instance));
        this._dropInstances.forEach(instance => this.removeDropContainer(instance));
        this._clearGlobalListeners();
        this.pointerMove.complete();
        this.pointerUp.complete();
    }
    /** Clears out the global event listeners from the `document`. */
    _clearGlobalListeners() {
        this._globalListeners.forEach((config, name) => {
            this._document.removeEventListener(name, config.handler, config.options);
        });
        this._globalListeners.clear();
    }
}
DragDropRegistry.ɵprov = i0.ɵɵdefineInjectable({ factory: function DragDropRegistry_Factory() { return new DragDropRegistry(i0.ɵɵinject(i0.NgZone), i0.ɵɵinject(i1.DOCUMENT)); }, token: DragDropRegistry, providedIn: "root" });
DragDropRegistry.decorators = [
    { type: Injectable, args: [{ providedIn: 'root' },] }
];
DragDropRegistry.ctorParameters = () => [
    { type: NgZone },
    { type: undefined, decorators: [{ type: Inject, args: [DOCUMENT,] }] }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZHJhZy1kcm9wLXJlZ2lzdHJ5LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9kcmFnLWRyb3AvZHJhZy1kcm9wLXJlZ2lzdHJ5LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBQyxVQUFVLEVBQUUsTUFBTSxFQUFhLE1BQU0sRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUNwRSxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0saUJBQWlCLENBQUM7QUFDekMsT0FBTyxFQUFDLCtCQUErQixFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFDdEUsT0FBTyxFQUFDLE9BQU8sRUFBQyxNQUFNLE1BQU0sQ0FBQzs7O0FBRTdCLHlFQUF5RTtBQUN6RSxNQUFNLDJCQUEyQixHQUFHLCtCQUErQixDQUFDO0lBQ2xFLE9BQU8sRUFBRSxLQUFLO0lBQ2QsT0FBTyxFQUFFLElBQUk7Q0FDZCxDQUFDLENBQUM7QUFFSDs7OztHQUlHO0FBQ0gsa0dBQWtHO0FBQ2xHLGdHQUFnRztBQUNoRyw0RUFBNEU7QUFFNUUsTUFBTSxPQUFPLGdCQUFnQjtJQWlDM0IsWUFDVSxPQUFlLEVBQ0wsU0FBYztRQUR4QixZQUFPLEdBQVAsT0FBTyxDQUFRO1FBL0J6QiwyQ0FBMkM7UUFDbkMsbUJBQWMsR0FBRyxJQUFJLEdBQUcsRUFBSyxDQUFDO1FBRXRDLHNDQUFzQztRQUM5QixtQkFBYyxHQUFHLElBQUksR0FBRyxFQUFLLENBQUM7UUFFdEMsNERBQTREO1FBQ3BELHlCQUFvQixHQUFHLElBQUksR0FBRyxFQUFLLENBQUM7UUFFNUMsNkVBQTZFO1FBQ3JFLHFCQUFnQixHQUFHLElBQUksR0FBRyxFQUc5QixDQUFDO1FBRUw7OztXQUdHO1FBQ00sZ0JBQVcsR0FBcUMsSUFBSSxPQUFPLEVBQTJCLENBQUM7UUFFaEc7OztXQUdHO1FBQ00sY0FBUyxHQUFxQyxJQUFJLE9BQU8sRUFBMkIsQ0FBQztRQUU5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QUFFLENBQUM7U0FDOUI7SUFDSCxDQUFDO0lBRUQsb0VBQW9FO0lBQ3BFLFVBQVUsQ0FBQyxJQUFPO1FBQ2hCLE9BQU8sSUFBSSxDQUFDLG9CQUFvQixDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsQ0FBQztJQUM3QyxDQUFDO0lBRUQsV0FBVztRQUNULElBQUksQ0FBQyxjQUFjLENBQUMsT0FBTyxDQUFDLFFBQVEsQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLGNBQWMsQ0FBQyxRQUFRLENBQUMsQ0FBQyxDQUFDO1FBQ3ZFLElBQUksQ0FBQyxjQUFjLENBQUMsT0FBTyxDQUFDLFFBQVEsQ0FBQyxFQUFFLENBQUMsSUFBSSxDQUFDLG1CQUFtQixDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUM7UUFDNUUsSUFBSSxDQUFDLHFCQUFxQixFQUFFLENBQUM7UUFDN0IsSUFBSSxDQUFDLFdBQVcsQ0FBQyxRQUFRLEVBQUUsQ0FBQztRQUM1QixJQUFJLENBQUMsU0FBUyxDQUFDLFFBQVEsRUFBRSxDQUFDO0lBQzVCLENBQUM7SUFZRCxpRUFBaUU7SUFDekQscUJBQXFCO1FBQzNCLElBQUksQ0FBQyxnQkFBZ0IsQ0FBQyxPQUFPLENBQUMsQ0FBQyxNQUFNLEVBQUUsSUFBSSxFQUFFLEVBQUU7WUFDN0MsSUFBSSxDQUFDLFNBQVMsQ0FBQyxtQkFBbUIsQ0FBQyxJQUFJLEVBQUUsTUFBTSxDQUFDLE9BQU8sRUFBRSxNQUFNLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDM0UsQ0FBQyxDQUFDLENBQUM7UUFFSCxJQUFJLENBQUMsZ0JBQWdCLENBQUMsS0FBSyxFQUFFLENBQUM7SUFDaEMsQ0FBQzs7OztZQTVLRixVQUFVLFNBQUMsRUFBQyxVQUFVLEVBQUUsTUFBTSxFQUFDOzs7WUFuQlosTUFBTTs0Q0F1RHJCLE1BQU0sU0FBQyxRQUFRIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7SW5qZWN0YWJsZSwgTmdab25lLCBPbkRlc3Ryb3ksIEluamVjdH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge0RPQ1VNRU5UfSBmcm9tICdAYW5ndWxhci9jb21tb24nO1xuaW1wb3J0IHtub3JtYWxpemVQYXNzaXZlTGlzdGVuZXJPcHRpb25zfSBmcm9tICdAYW5ndWxhci9jZGsvcGxhdGZvcm0nO1xuaW1wb3J0IHtTdWJqZWN0fSBmcm9tICdyeGpzJztcblxuLyoqIEV2ZW50IG9wdGlvbnMgdGhhdCBjYW4gYmUgdXNlZCB0byBiaW5kIGFuIGFjdGl2ZSwgY2FwdHVyaW5nIGV2ZW50LiAqL1xuY29uc3QgYWN0aXZlQ2FwdHVyaW5nRXZlbnRPcHRpb25zID0gbm9ybWFsaXplUGFzc2l2ZUxpc3RlbmVyT3B0aW9ucyh7XG4gIHBhc3NpdmU6IGZhbHNlLFxuICBjYXB0dXJlOiB0cnVlXG59KTtcblxuLyoqXG4gKiBTZXJ2aWNlIHRoYXQga2VlcHMgdHJhY2sgb2YgYWxsIHRoZSBkcmFnIGl0ZW0gYW5kIGRyb3AgY29udGFpbmVyXG4gKiBpbnN0YW5jZXMsIGFuZCBtYW5hZ2VzIGdsb2JhbCBldmVudCBsaXN0ZW5lcnMgb24gdGhlIGBkb2N1bWVudGAuXG4gKiBAZG9jcy1wcml2YXRlXG4gKi9cbi8vIE5vdGU6IHRoaXMgY2xhc3MgaXMgZ2VuZXJpYywgcmF0aGVyIHRoYW4gcmVmZXJlbmNpbmcgQ2RrRHJhZyBhbmQgQ2RrRHJvcExpc3QgZGlyZWN0bHksIGluIG9yZGVyXG4vLyB0byBhdm9pZCBjaXJjdWxhciBpbXBvcnRzLiBJZiB3ZSB3ZXJlIHRvIHJlZmVyZW5jZSB0aGVtIGhlcmUsIGltcG9ydGluZyB0aGUgcmVnaXN0cnkgaW50byB0aGVcbi8vIGNsYXNzZXMgdGhhdCBhcmUgcmVnaXN0ZXJpbmcgdGhlbXNlbHZlcyB3aWxsIGludHJvZHVjZSBhIGNpcmN1bGFyIGltcG9ydC5cbkBJbmplY3RhYmxlKHtwcm92aWRlZEluOiAncm9vdCd9KVxuZXhwb3J0IGNsYXNzIERyYWdEcm9wUmVnaXN0cnk8SSwgQz4gaW1wbGVtZW50cyBPbkRlc3Ryb3kge1xuICBwcml2YXRlIF9kb2N1bWVudDogRG9jdW1lbnQ7XG5cbiAgLyoqIFJlZ2lzdGVyZWQgZHJvcCBjb250YWluZXIgaW5zdGFuY2VzLiAqL1xuICBwcml2YXRlIF9kcm9wSW5zdGFuY2VzID0gbmV3IFNldDxDPigpO1xuXG4gIC8qKiBSZWdpc3RlcmVkIGRyYWcgaXRlbSBpbnN0YW5jZXMuICovXG4gIHByaXZhdGUgX2RyYWdJbnN0YW5jZXMgPSBuZXcgU2V0PEk+KCk7XG5cbiAgLyoqIERyYWcgaXRlbSBpbnN0YW5jZXMgdGhhdCBhcmUgY3VycmVudGx5IGJlaW5nIGRyYWdnZWQuICovXG4gIHByaXZhdGUgX2FjdGl2ZURyYWdJbnN0YW5jZXMgPSBuZXcgU2V0PEk+KCk7XG5cbiAgLyoqIEtlZXBzIHRyYWNrIG9mIHRoZSBldmVudCBsaXN0ZW5lcnMgdGhhdCB3ZSd2ZSBib3VuZCB0byB0aGUgYGRvY3VtZW50YC4gKi9cbiAgcHJpdmF0ZSBfZ2xvYmFsTGlzdGVuZXJzID0gbmV3IE1hcDxzdHJpbmcsIHtcbiAgICBoYW5kbGVyOiAoZXZlbnQ6IEV2ZW50KSA9PiB2b2lkLFxuICAgIG9wdGlvbnM/OiBBZGRFdmVudExpc3RlbmVyT3B0aW9ucyB8IGJvb2xlYW5cbiAgfT4oKTtcblxuICAvKipcbiAgICogRW1pdHMgdGhlIGB0b3VjaG1vdmVgIG9yIGBtb3VzZW1vdmVgIGV2ZW50cyB0aGF0IGFyZSBkaXNwYXRjaGVkXG4gICAqIHdoaWxlIHRoZSB1c2VyIGlzIGRyYWdnaW5nIGEgZHJhZyBpdGVtIGluc3RhbmNlLlxuICAgKi9cbiAgcmVhZG9ubHkgcG9pbnRlck1vdmU6IFN1YmplY3Q8VG91Y2hFdmVudCB8IE1vdXNlRXZlbnQ+ID0gbmV3IFN1YmplY3Q8VG91Y2hFdmVudCB8IE1vdXNlRXZlbnQ+KCk7XG5cbiAgLyoqXG4gICAqIEVtaXRzIHRoZSBgdG91Y2hlbmRgIG9yIGBtb3VzZXVwYCBldmVudHMgdGhhdCBhcmUgZGlzcGF0Y2hlZFxuICAgKiB3aGlsZSB0aGUgdXNlciBpcyBkcmFnZ2luZyBhIGRyYWcgaXRlbSBpbnN0YW5jZS5cbiAgICovXG4gIHJlYWRvbmx5IHBvaW50ZXJVcDogU3ViamVjdDxUb3VjaEV2ZW50IHwgTW91c2VFdmVudD4gPSBuZXcgU3ViamVjdDxUb3VjaEV2ZW50IHwgTW91c2VFdmVudD4oKTtcblxuICAvKiogRW1pdHMgd2hlbiB0aGUgdmlld3BvcnQgaGFzIGJlZW4gc2Nyb2xsZWQgd2hpbGUgdGhlIHVzZXIgaXMgZHJhZ2dpbmcgYW4gaXRlbS4gKi9cbiAgcmVhZG9ubHkgc2Nyb2xsOiBTdWJqZWN0PEV2ZW50PiA9IG5ldyBTdWJqZWN0PEV2ZW50PigpO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgIHByaXZhdGUgX25nWm9uZTogTmdab25lLFxuICAgIEBJbmplY3QoRE9DVU1FTlQpIF9kb2N1bWVudDogYW55KSB7XG4gICAgdGhpcy5fZG9jdW1lbnQgPSBfZG9jdW1lbnQ7XG4gIH1cblxuICAvKiogQWRkcyBhIGRyb3AgY29udGFpbmVyIHRvIHRoZSByZWdpc3RyeS4gKi9cbiAgcmVnaXN0ZXJEcm9wQ29udGFpbmVyKGRyb3A6IEMpIHtcbiAgICBpZiAoIXRoaXMuX2Ryb3BJbnN0YW5jZXMuaGFzKGRyb3ApKSB7XG4gICAgICB0aGlzLl9kcm9wSW5zdGFuY2VzLmFkZChkcm9wKTtcbiAgICB9XG4gIH1cblxuICAvKiogQWRkcyBhIGRyYWcgaXRlbSBpbnN0YW5jZSB0byB0aGUgcmVnaXN0cnkuICovXG4gIHJlZ2lzdGVyRHJhZ0l0ZW0oZHJhZzogSSkge1xuICAgIHRoaXMuX2RyYWdJbnN0YW5jZXMuYWRkKGRyYWcpO1xuXG4gICAgLy8gVGhlIGB0b3VjaG1vdmVgIGV2ZW50IGdldHMgYm91bmQgb25jZSwgYWhlYWQgb2YgdGltZSwgYmVjYXVzZSBXZWJLaXRcbiAgICAvLyB3b24ndCBwcmV2ZW50RGVmYXVsdCBvbiBhIGR5bmFtaWNhbGx5LWFkZGVkIGB0b3VjaG1vdmVgIGxpc3RlbmVyLlxuICAgIC8vIFNlZSBodHRwczovL2J1Z3Mud2Via2l0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTg0MjUwLlxuICAgIGlmICh0aGlzLl9kcmFnSW5zdGFuY2VzLnNpemUgPT09IDEpIHtcbiAgICAgIHRoaXMuX25nWm9uZS5ydW5PdXRzaWRlQW5ndWxhcigoKSA9PiB7XG4gICAgICAgIC8vIFRoZSBldmVudCBoYW5kbGVyIGhhcyB0byBiZSBleHBsaWNpdGx5IGFjdGl2ZSxcbiAgICAgICAgLy8gYmVjYXVzZSBuZXdlciBicm93c2VycyBtYWtlIGl0IHBhc3NpdmUgYnkgZGVmYXVsdC5cbiAgICAgICAgdGhpcy5fZG9jdW1lbnQuYWRkRXZlbnRMaXN0ZW5lcigndG91Y2htb3ZlJywgdGhpcy5fcHJldmVudERlZmF1bHRXaGlsZURyYWdnaW5nLFxuICAgICAgICAgICAgYWN0aXZlQ2FwdHVyaW5nRXZlbnRPcHRpb25zKTtcbiAgICAgIH0pO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBSZW1vdmVzIGEgZHJvcCBjb250YWluZXIgZnJvbSB0aGUgcmVnaXN0cnkuICovXG4gIHJlbW92ZURyb3BDb250YWluZXIoZHJvcDogQykge1xuICAgIHRoaXMuX2Ryb3BJbnN0YW5jZXMuZGVsZXRlKGRyb3ApO1xuICB9XG5cbiAgLyoqIFJlbW92ZXMgYSBkcmFnIGl0ZW0gaW5zdGFuY2UgZnJvbSB0aGUgcmVnaXN0cnkuICovXG4gIHJlbW92ZURyYWdJdGVtKGRyYWc6IEkpIHtcbiAgICB0aGlzLl9kcmFnSW5zdGFuY2VzLmRlbGV0ZShkcmFnKTtcbiAgICB0aGlzLnN0b3BEcmFnZ2luZyhkcmFnKTtcblxuICAgIGlmICh0aGlzLl9kcmFnSW5zdGFuY2VzLnNpemUgPT09IDApIHtcbiAgICAgIHRoaXMuX2RvY3VtZW50LnJlbW92ZUV2ZW50TGlzdGVuZXIoJ3RvdWNobW92ZScsIHRoaXMuX3ByZXZlbnREZWZhdWx0V2hpbGVEcmFnZ2luZyxcbiAgICAgICAgICBhY3RpdmVDYXB0dXJpbmdFdmVudE9wdGlvbnMpO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBTdGFydHMgdGhlIGRyYWdnaW5nIHNlcXVlbmNlIGZvciBhIGRyYWcgaW5zdGFuY2UuXG4gICAqIEBwYXJhbSBkcmFnIERyYWcgaW5zdGFuY2Ugd2hpY2ggaXMgYmVpbmcgZHJhZ2dlZC5cbiAgICogQHBhcmFtIGV2ZW50IEV2ZW50IHRoYXQgaW5pdGlhdGVkIHRoZSBkcmFnZ2luZy5cbiAgICovXG4gIHN0YXJ0RHJhZ2dpbmcoZHJhZzogSSwgZXZlbnQ6IFRvdWNoRXZlbnQgfCBNb3VzZUV2ZW50KSB7XG4gICAgLy8gRG8gbm90IHByb2Nlc3MgdGhlIHNhbWUgZHJhZyB0d2ljZSB0byBhdm9pZCBtZW1vcnkgbGVha3MgYW5kIHJlZHVuZGFudCBsaXN0ZW5lcnNcbiAgICBpZiAodGhpcy5fYWN0aXZlRHJhZ0luc3RhbmNlcy5oYXMoZHJhZykpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG5cbiAgICB0aGlzLl9hY3RpdmVEcmFnSW5zdGFuY2VzLmFkZChkcmFnKTtcblxuICAgIGlmICh0aGlzLl9hY3RpdmVEcmFnSW5zdGFuY2VzLnNpemUgPT09IDEpIHtcbiAgICAgIGNvbnN0IGlzVG91Y2hFdmVudCA9IGV2ZW50LnR5cGUuc3RhcnRzV2l0aCgndG91Y2gnKTtcbiAgICAgIGNvbnN0IG1vdmVFdmVudCA9IGlzVG91Y2hFdmVudCA/ICd0b3VjaG1vdmUnIDogJ21vdXNlbW92ZSc7XG4gICAgICBjb25zdCB1cEV2ZW50ID0gaXNUb3VjaEV2ZW50ID8gJ3RvdWNoZW5kJyA6ICdtb3VzZXVwJztcblxuICAgICAgLy8gV2UgZXhwbGljaXRseSBiaW5kIF9fYWN0aXZlX18gbGlzdGVuZXJzIGhlcmUsIGJlY2F1c2UgbmV3ZXIgYnJvd3NlcnMgd2lsbCBkZWZhdWx0IHRvXG4gICAgICAvLyBwYXNzaXZlIG9uZXMgZm9yIGBtb3VzZW1vdmVgIGFuZCBgdG91Y2htb3ZlYC4gVGhlIGV2ZW50cyBuZWVkIHRvIGJlIGFjdGl2ZSwgYmVjYXVzZSB3ZVxuICAgICAgLy8gdXNlIGBwcmV2ZW50RGVmYXVsdGAgdG8gcHJldmVudCB0aGUgcGFnZSBmcm9tIHNjcm9sbGluZyB3aGlsZSB0aGUgdXNlciBpcyBkcmFnZ2luZy5cbiAgICAgIHRoaXMuX2dsb2JhbExpc3RlbmVyc1xuICAgICAgICAuc2V0KG1vdmVFdmVudCwge1xuICAgICAgICAgIGhhbmRsZXI6IChlOiBFdmVudCkgPT4gdGhpcy5wb2ludGVyTW92ZS5uZXh0KGUgYXMgVG91Y2hFdmVudCB8IE1vdXNlRXZlbnQpLFxuICAgICAgICAgIG9wdGlvbnM6IGFjdGl2ZUNhcHR1cmluZ0V2ZW50T3B0aW9uc1xuICAgICAgICB9KVxuICAgICAgICAuc2V0KHVwRXZlbnQsIHtcbiAgICAgICAgICBoYW5kbGVyOiAoZTogRXZlbnQpID0+IHRoaXMucG9pbnRlclVwLm5leHQoZSBhcyBUb3VjaEV2ZW50IHwgTW91c2VFdmVudCksXG4gICAgICAgICAgb3B0aW9uczogdHJ1ZVxuICAgICAgICB9KVxuICAgICAgICAuc2V0KCdzY3JvbGwnLCB7XG4gICAgICAgICAgaGFuZGxlcjogKGU6IEV2ZW50KSA9PiB0aGlzLnNjcm9sbC5uZXh0KGUpLFxuICAgICAgICAgIC8vIFVzZSBjYXB0dXJpbmcgc28gdGhhdCB3ZSBwaWNrIHVwIHNjcm9sbCBjaGFuZ2VzIGluIGFueSBzY3JvbGxhYmxlIG5vZGVzIHRoYXQgYXJlbid0XG4gICAgICAgICAgLy8gdGhlIGRvY3VtZW50LiBTZWUgaHR0cHM6Ly9naXRodWIuY29tL2FuZ3VsYXIvY29tcG9uZW50cy9pc3N1ZXMvMTcxNDQuXG4gICAgICAgICAgb3B0aW9uczogdHJ1ZVxuICAgICAgICB9KVxuICAgICAgICAvLyBQcmV2ZW50aW5nIHRoZSBkZWZhdWx0IGFjdGlvbiBvbiBgbW91c2Vtb3ZlYCBpc24ndCBlbm91Z2ggdG8gZGlzYWJsZSB0ZXh0IHNlbGVjdGlvblxuICAgICAgICAvLyBvbiBTYWZhcmkgc28gd2UgbmVlZCB0byBwcmV2ZW50IHRoZSBzZWxlY3Rpb24gZXZlbnQgYXMgd2VsbC4gQWx0ZXJuYXRpdmVseSB0aGlzIGNhblxuICAgICAgICAvLyBiZSBkb25lIGJ5IHNldHRpbmcgYHVzZXItc2VsZWN0OiBub25lYCBvbiB0aGUgYGJvZHlgLCBob3dldmVyIGl0IGhhcyBjYXVzZXMgYSBzdHlsZVxuICAgICAgICAvLyByZWNhbGN1bGF0aW9uIHdoaWNoIGNhbiBiZSBleHBlbnNpdmUgb24gcGFnZXMgd2l0aCBhIGxvdCBvZiBlbGVtZW50cy5cbiAgICAgICAgLnNldCgnc2VsZWN0c3RhcnQnLCB7XG4gICAgICAgICAgaGFuZGxlcjogdGhpcy5fcHJldmVudERlZmF1bHRXaGlsZURyYWdnaW5nLFxuICAgICAgICAgIG9wdGlvbnM6IGFjdGl2ZUNhcHR1cmluZ0V2ZW50T3B0aW9uc1xuICAgICAgICB9KTtcblxuICAgICAgdGhpcy5fbmdab25lLnJ1bk91dHNpZGVBbmd1bGFyKCgpID0+IHtcbiAgICAgICAgdGhpcy5fZ2xvYmFsTGlzdGVuZXJzLmZvckVhY2goKGNvbmZpZywgbmFtZSkgPT4ge1xuICAgICAgICAgIHRoaXMuX2RvY3VtZW50LmFkZEV2ZW50TGlzdGVuZXIobmFtZSwgY29uZmlnLmhhbmRsZXIsIGNvbmZpZy5vcHRpb25zKTtcbiAgICAgICAgfSk7XG4gICAgICB9KTtcbiAgICB9XG4gIH1cblxuICAvKiogU3RvcHMgZHJhZ2dpbmcgYSBkcmFnIGl0ZW0gaW5zdGFuY2UuICovXG4gIHN0b3BEcmFnZ2luZyhkcmFnOiBJKSB7XG4gICAgdGhpcy5fYWN0aXZlRHJhZ0luc3RhbmNlcy5kZWxldGUoZHJhZyk7XG5cbiAgICBpZiAodGhpcy5fYWN0aXZlRHJhZ0luc3RhbmNlcy5zaXplID09PSAwKSB7XG4gICAgICB0aGlzLl9jbGVhckdsb2JhbExpc3RlbmVycygpO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBHZXRzIHdoZXRoZXIgYSBkcmFnIGl0ZW0gaW5zdGFuY2UgaXMgY3VycmVudGx5IGJlaW5nIGRyYWdnZWQuICovXG4gIGlzRHJhZ2dpbmcoZHJhZzogSSkge1xuICAgIHJldHVybiB0aGlzLl9hY3RpdmVEcmFnSW5zdGFuY2VzLmhhcyhkcmFnKTtcbiAgfVxuXG4gIG5nT25EZXN0cm95KCkge1xuICAgIHRoaXMuX2RyYWdJbnN0YW5jZXMuZm9yRWFjaChpbnN0YW5jZSA9PiB0aGlzLnJlbW92ZURyYWdJdGVtKGluc3RhbmNlKSk7XG4gICAgdGhpcy5fZHJvcEluc3RhbmNlcy5mb3JFYWNoKGluc3RhbmNlID0+IHRoaXMucmVtb3ZlRHJvcENvbnRhaW5lcihpbnN0YW5jZSkpO1xuICAgIHRoaXMuX2NsZWFyR2xvYmFsTGlzdGVuZXJzKCk7XG4gICAgdGhpcy5wb2ludGVyTW92ZS5jb21wbGV0ZSgpO1xuICAgIHRoaXMucG9pbnRlclVwLmNvbXBsZXRlKCk7XG4gIH1cblxuICAvKipcbiAgICogRXZlbnQgbGlzdGVuZXIgdGhhdCB3aWxsIHByZXZlbnQgdGhlIGRlZmF1bHQgYnJvd3NlciBhY3Rpb24gd2hpbGUgdGhlIHVzZXIgaXMgZHJhZ2dpbmcuXG4gICAqIEBwYXJhbSBldmVudCBFdmVudCB3aG9zZSBkZWZhdWx0IGFjdGlvbiBzaG91bGQgYmUgcHJldmVudGVkLlxuICAgKi9cbiAgcHJpdmF0ZSBfcHJldmVudERlZmF1bHRXaGlsZURyYWdnaW5nID0gKGV2ZW50OiBFdmVudCkgPT4ge1xuICAgIGlmICh0aGlzLl9hY3RpdmVEcmFnSW5zdGFuY2VzLnNpemUpIHtcbiAgICAgIGV2ZW50LnByZXZlbnREZWZhdWx0KCk7XG4gICAgfVxuICB9XG5cbiAgLyoqIENsZWFycyBvdXQgdGhlIGdsb2JhbCBldmVudCBsaXN0ZW5lcnMgZnJvbSB0aGUgYGRvY3VtZW50YC4gKi9cbiAgcHJpdmF0ZSBfY2xlYXJHbG9iYWxMaXN0ZW5lcnMoKSB7XG4gICAgdGhpcy5fZ2xvYmFsTGlzdGVuZXJzLmZvckVhY2goKGNvbmZpZywgbmFtZSkgPT4ge1xuICAgICAgdGhpcy5fZG9jdW1lbnQucmVtb3ZlRXZlbnRMaXN0ZW5lcihuYW1lLCBjb25maWcuaGFuZGxlciwgY29uZmlnLm9wdGlvbnMpO1xuICAgIH0pO1xuXG4gICAgdGhpcy5fZ2xvYmFsTGlzdGVuZXJzLmNsZWFyKCk7XG4gIH1cbn1cbiJdfQ==