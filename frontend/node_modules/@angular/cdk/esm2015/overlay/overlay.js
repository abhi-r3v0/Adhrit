/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Directionality } from '@angular/cdk/bidi';
import { DomPortalOutlet } from '@angular/cdk/portal';
import { DOCUMENT, Location } from '@angular/common';
import { ApplicationRef, ComponentFactoryResolver, Inject, Injectable, Injector, NgZone, } from '@angular/core';
import { OverlayKeyboardDispatcher } from './dispatchers/overlay-keyboard-dispatcher';
import { OverlayOutsideClickDispatcher } from './dispatchers/overlay-outside-click-dispatcher';
import { OverlayConfig } from './overlay-config';
import { OverlayContainer } from './overlay-container';
import { OverlayRef } from './overlay-ref';
import { OverlayPositionBuilder } from './position/overlay-position-builder';
import { ScrollStrategyOptions } from './scroll/index';
/** Next overlay unique ID. */
let nextUniqueId = 0;
// Note that Overlay is *not* scoped to the app root because of the ComponentFactoryResolver
// which needs to be different depending on where OverlayModule is imported.
/**
 * Service to create Overlays. Overlays are dynamically added pieces of floating UI, meant to be
 * used as a low-level building block for other components. Dialogs, tooltips, menus,
 * selects, etc. can all be built using overlays. The service should primarily be used by authors
 * of re-usable components rather than developers building end-user applications.
 *
 * An overlay *is* a PortalOutlet, so any kind of Portal can be loaded into one.
 */
export class Overlay {
    constructor(
    /** Scrolling strategies that can be used when creating an overlay. */
    scrollStrategies, _overlayContainer, _componentFactoryResolver, _positionBuilder, _keyboardDispatcher, _injector, _ngZone, _document, _directionality, 
    // @breaking-change 8.0.0 `_location` parameter to be made required.
    _location, 
    // @breaking-change 9.0.0 `_outsideClickDispatcher` parameter to be made required.
    _outsideClickDispatcher) {
        this.scrollStrategies = scrollStrategies;
        this._overlayContainer = _overlayContainer;
        this._componentFactoryResolver = _componentFactoryResolver;
        this._positionBuilder = _positionBuilder;
        this._keyboardDispatcher = _keyboardDispatcher;
        this._injector = _injector;
        this._ngZone = _ngZone;
        this._document = _document;
        this._directionality = _directionality;
        this._location = _location;
        this._outsideClickDispatcher = _outsideClickDispatcher;
    }
    /**
     * Creates an overlay.
     * @param config Configuration applied to the overlay.
     * @returns Reference to the created overlay.
     */
    create(config) {
        const host = this._createHostElement();
        const pane = this._createPaneElement(host);
        const portalOutlet = this._createPortalOutlet(pane);
        const overlayConfig = new OverlayConfig(config);
        overlayConfig.direction = overlayConfig.direction || this._directionality.value;
        return new OverlayRef(portalOutlet, host, pane, overlayConfig, this._ngZone, this._keyboardDispatcher, this._document, this._location, this._outsideClickDispatcher);
    }
    /**
     * Gets a position builder that can be used, via fluent API,
     * to construct and configure a position strategy.
     * @returns An overlay position builder.
     */
    position() {
        return this._positionBuilder;
    }
    /**
     * Creates the DOM element for an overlay and appends it to the overlay container.
     * @returns Newly-created pane element
     */
    _createPaneElement(host) {
        const pane = this._document.createElement('div');
        pane.id = `cdk-overlay-${nextUniqueId++}`;
        pane.classList.add('cdk-overlay-pane');
        host.appendChild(pane);
        return pane;
    }
    /**
     * Creates the host element that wraps around an overlay
     * and can be used for advanced positioning.
     * @returns Newly-create host element.
     */
    _createHostElement() {
        const host = this._document.createElement('div');
        this._overlayContainer.getContainerElement().appendChild(host);
        return host;
    }
    /**
     * Create a DomPortalOutlet into which the overlay content can be loaded.
     * @param pane The DOM element to turn into a portal outlet.
     * @returns A portal outlet for the given DOM element.
     */
    _createPortalOutlet(pane) {
        // We have to resolve the ApplicationRef later in order to allow people
        // to use overlay-based providers during app initialization.
        if (!this._appRef) {
            this._appRef = this._injector.get(ApplicationRef);
        }
        return new DomPortalOutlet(pane, this._componentFactoryResolver, this._appRef, this._injector, this._document);
    }
}
Overlay.decorators = [
    { type: Injectable }
];
Overlay.ctorParameters = () => [
    { type: ScrollStrategyOptions },
    { type: OverlayContainer },
    { type: ComponentFactoryResolver },
    { type: OverlayPositionBuilder },
    { type: OverlayKeyboardDispatcher },
    { type: Injector },
    { type: NgZone },
    { type: undefined, decorators: [{ type: Inject, args: [DOCUMENT,] }] },
    { type: Directionality },
    { type: Location },
    { type: OverlayOutsideClickDispatcher }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoib3ZlcmxheS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvb3ZlcmxheS9vdmVybGF5LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBQyxjQUFjLEVBQUMsTUFBTSxtQkFBbUIsQ0FBQztBQUNqRCxPQUFPLEVBQUMsZUFBZSxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFDcEQsT0FBTyxFQUFDLFFBQVEsRUFBRSxRQUFRLEVBQUMsTUFBTSxpQkFBaUIsQ0FBQztBQUNuRCxPQUFPLEVBQ0wsY0FBYyxFQUNkLHdCQUF3QixFQUN4QixNQUFNLEVBQ04sVUFBVSxFQUNWLFFBQVEsRUFDUixNQUFNLEdBQ1AsTUFBTSxlQUFlLENBQUM7QUFDdkIsT0FBTyxFQUFDLHlCQUF5QixFQUFDLE1BQU0sMkNBQTJDLENBQUM7QUFDcEYsT0FBTyxFQUFDLDZCQUE2QixFQUFDLE1BQU0sZ0RBQWdELENBQUM7QUFDN0YsT0FBTyxFQUFDLGFBQWEsRUFBQyxNQUFNLGtCQUFrQixDQUFDO0FBQy9DLE9BQU8sRUFBQyxnQkFBZ0IsRUFBQyxNQUFNLHFCQUFxQixDQUFDO0FBQ3JELE9BQU8sRUFBQyxVQUFVLEVBQUMsTUFBTSxlQUFlLENBQUM7QUFDekMsT0FBTyxFQUFDLHNCQUFzQixFQUFDLE1BQU0scUNBQXFDLENBQUM7QUFDM0UsT0FBTyxFQUFDLHFCQUFxQixFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFHckQsOEJBQThCO0FBQzlCLElBQUksWUFBWSxHQUFHLENBQUMsQ0FBQztBQUVyQiw0RkFBNEY7QUFDNUYsNEVBQTRFO0FBRTVFOzs7Ozs7O0dBT0c7QUFFSCxNQUFNLE9BQU8sT0FBTztJQUdsQjtJQUNZLHNFQUFzRTtJQUMvRCxnQkFBdUMsRUFDdEMsaUJBQW1DLEVBQ25DLHlCQUFtRCxFQUNuRCxnQkFBd0MsRUFDeEMsbUJBQThDLEVBQzlDLFNBQW1CLEVBQ25CLE9BQWUs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QUFnQjtZQVR0Qix3QkFBd0I7WUFXbEIsc0JBQXNCO1lBTHRCLHlCQUF5QjtZQUgvQixRQUFRO1lBQ1IsTUFBTTs0Q0FzQ08sTUFBTSxTQUFDLFFBQVE7WUEvQ3RCLGNBQWM7WUFFSixRQUFRO1lBVWxCLDZCQUE2QiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0RpcmVjdGlvbmFsaXR5fSBmcm9tICdAYW5ndWxhci9jZGsvYmlkaSc7XG5pbXBvcnQge0RvbVBvcnRhbE91dGxldH0gZnJvbSAnQGFuZ3VsYXIvY2RrL3BvcnRhbCc7XG5pbXBvcnQge0RPQ1VNRU5ULCBMb2NhdGlvbn0gZnJvbSAnQGFuZ3VsYXIvY29tbW9uJztcbmltcG9ydCB7XG4gIEFwcGxpY2F0aW9uUmVmLFxuICBDb21wb25lbnRGYWN0b3J5UmVzb2x2ZXIsXG4gIEluamVjdCxcbiAgSW5qZWN0YWJsZSxcbiAgSW5qZWN0b3IsXG4gIE5nWm9uZSxcbn0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge092ZXJsYXlLZXlib2FyZERpc3BhdGNoZXJ9IGZyb20gJy4vZGlzcGF0Y2hlcnMvb3ZlcmxheS1rZXlib2FyZC1kaXNwYXRjaGVyJztcbmltcG9ydCB7T3ZlcmxheU91dHNpZGVDbGlja0Rpc3BhdGNoZXJ9IGZyb20gJy4vZGlzcGF0Y2hlcnMvb3ZlcmxheS1vdXRzaWRlLWNsaWNrLWRpc3BhdGNoZXInO1xuaW1wb3J0IHtPdmVybGF5Q29uZmlnfSBmcm9tICcuL292ZXJsYXktY29uZmlnJztcbmltcG9ydCB7T3ZlcmxheUNvbnRhaW5lcn0gZnJvbSAnLi9vdmVybGF5LWNvbnRhaW5lcic7XG5pbXBvcnQge092ZXJsYXlSZWZ9IGZyb20gJy4vb3ZlcmxheS1yZWYnO1xuaW1wb3J0IHtPdmVybGF5UG9zaXRpb25CdWlsZGVyfSBmcm9tICcuL3Bvc2l0aW9uL292ZXJsYXktcG9zaXRpb24tYnVpbGRlcic7XG5pbXBvcnQge1Njcm9sbFN0cmF0ZWd5T3B0aW9uc30gZnJvbSAnLi9zY3JvbGwvaW5kZXgnO1xuXG5cbi8qKiBOZXh0IG92ZXJsYXkgdW5pcXVlIElELiAqL1xubGV0IG5leHRVbmlxdWVJZCA9IDA7XG5cbi8vIE5vdGUgdGhhdCBPdmVybGF5IGlzICpub3QqIHNjb3BlZCB0byB0aGUgYXBwIHJvb3QgYmVjYXVzZSBvZiB0aGUgQ29tcG9uZW50RmFjdG9yeVJlc29sdmVyXG4vLyB3aGljaCBuZWVkcyB0byBiZSBkaWZmZXJlbnQgZGVwZW5kaW5nIG9uIHdoZXJlIE92ZXJsYXlNb2R1bGUgaXMgaW1wb3J0ZWQuXG5cbi8qKlxuICogU2VydmljZSB0byBjcmVhdGUgT3ZlcmxheXMuIE92ZXJsYXlzIGFyZSBkeW5hbWljYWxseSBhZGRlZCBwaWVjZXMgb2YgZmxvYXRpbmcgVUksIG1lYW50IHRvIGJlXG4gKiB1c2VkIGFzIGEgbG93LWxldmVsIGJ1aWxkaW5nIGJsb2NrIGZvciBvdGhlciBjb21wb25lbnRzLiBEaWFsb2dzLCB0b29sdGlwcywgbWVudXMsXG4gKiBzZWxlY3RzLCBldGMuIGNhbiBhbGwgYmUgYnVpbHQgdXNpbmcgb3ZlcmxheXMuIFRoZSBzZXJ2aWNlIHNob3VsZCBwcmltYXJpbHkgYmUgdXNlZCBieSBhdXRob3JzXG4gKiBvZiByZS11c2FibGUgY29tcG9uZW50cyByYXRoZXIgdGhhbiBkZXZlbG9wZXJzIGJ1aWxkaW5nIGVuZC11c2VyIGFwcGxpY2F0aW9ucy5cbiAqXG4gKiBBbiBvdmVybGF5ICppcyogYSBQb3J0YWxPdXRsZXQsIHNvIGFueSBraW5kIG9mIFBvcnRhbCBjYW4gYmUgbG9hZGVkIGludG8gb25lLlxuICovXG5ASW5qZWN0YWJsZSgpXG5leHBvcnQgY2xhc3MgT3ZlcmxheSB7XG4gIHByaXZhdGUgX2FwcFJlZjogQXBwbGljYXRpb25SZWY7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICAgICAgICAgIC8qKiBTY3JvbGxpbmcgc3RyYXRlZ2llcyB0aGF0IGNhbiBiZSB1c2VkIHdoZW4gY3JlYXRpbmcgYW4gb3ZlcmxheS4gKi9cbiAgICAgICAgICAgICAgcHVibGljIHNjcm9sbFN0cmF0ZWdpZXM6IFNjcm9sbFN0cmF0ZWd5T3B0aW9ucyxcbiAgICAgICAgICAgICAgcHJpdmF0ZSBfb3ZlcmxheUNvbnRhaW5lcjogT3ZlcmxheUNvbnRhaW5lcixcbiAgICAgICAgICAgICAgcHJpdmF0ZSBfY29tcG9uZW50RmFjdG9yeVJlc29sdmVyOiBDb21wb25lbnRGYWN0b3J5UmVzb2x2ZXIsXG4gICAgICAgICAgICAgIHByaXZhdGUgX3Bvc2l0aW9uQnVpbGRlcjogT3ZlcmxheVBvc2l0aW9uQnVpbGRlcixcbiAgICAgICAgICAgICAgcHJpdmF0ZSBfa2V5Ym9hcmREaXNwYXRjaGVyOiBPdmVybGF5S2V5Ym9hcmREaXNwYXRjaGVyLFxuICAgICAgICAgICAgICBwcml2YXRlIF9pbmplY3RvcjogSW5qZWN0b3IsXG4gICAgICAgICAgICAgIHByaXZhdGUgX25nWm9uZTogTmdab25lLFxuICAgICAgICAgICAgICBASW5qZWN0KERPQ1VNRU5UKSBwcml2YXRlIF9kb2N1bWVudDogYW55LFxuICAgICAgICAgICAgICBwcml2YXRlIF9kaXJlY3Rpb25hbGl0eTogRGlyZWN0aW9uYWxpdHksXG4gICAgICAgICAgICAgIC8vIEBicmVha2luZy1jaGFuZ2UgOC4wLjAgYF9sb2NhdGlvbmAgcGFyYW1ldGVyIHRvIGJlIG1hZGUgcmVxdWlyZWQuXG4gICAgICAgICAgICAgIHByaXZhdGUgX2xvY2F0aW9uPzogTG9jYXRpb24sXG4gICAgICAgICAgICAgIC8vIEBicmVha2luZy1jaGFuZ2UgOS4wLjAgYF9vdXRzaWRlQ2xpY2tEaXNwYXRjaGVyYCBwYXJhbWV0ZXIgdG8gYmUgbWFkZSByZXF1aXJlZC5cbiAgICAgICAgICAgICAgcHJpdmF0ZSBfb3V0c2lkZUNsaWNrRGlzcGF0Y2hlcj86IE92ZXJsYXlPdXRzaWRlQ2xpY2tEaXNwYXRjaGVyKSB7IH1cblxuICAvKipcbiAgICogQ3JlYXRlcyBhbiBvdmVybGF5LlxuICAgKiBAcGFyYW0gY29uZmlnIENvbmZpZ3VyYXRpb24gYXBwbGllZCB0byB0aGUgb3ZlcmxheS5cbiAgICogQHJldHVybnMgUmVmZXJlbmNlIHRvIHRoZSBjcmVhdGVkIG92ZXJsYXkuXG4gICAqL1xuICBjcmVhdGUoY29uZmlnPzogT3ZlcmxheUNvbmZpZyk6IE92ZXJsYXlSZWYge1xuICAgIGNvbnN0IGhvc3QgPSB0aGlzLl9jcmVhdGVIb3N0RWxlbWVudCgpO1xuICAgIGNvbnN0IHBhbmUgPSB0aGlzLl9jcmVhdGVQYW5lRWxlbWVudChob3N0KTtcbiAgICBjb25zdCBwb3J0YWxPdXRsZXQgPSB0aGlzLl9jcmVhdGVQb3J0YWxPdXRsZXQocGFuZSk7XG4gICAgY29uc3Qgb3ZlcmxheUNvbmZpZyA9IG5ldyBPdmVybGF5Q29uZmlnKGNvbmZpZyk7XG5cbiAgICBvdmVybGF5Q29uZmlnLmRpcmVjdGlvbiA9IG92ZXJsYXlDb25maWcuZGlyZWN0aW9uIHx8IHRoaXMuX2RpcmVjdGlvbmFsaXR5LnZhbHVlO1xuXG4gICAgcmV0dXJuIG5ldyBPdmVybGF5UmVmKHBvcnRhbE91dGxldCwgaG9zdCwgcGFuZSwgb3ZlcmxheUNvbmZpZywgdGhpcy5fbmdab25lLFxuICAgICAgdGhpcy5fa2V5Ym9hcmREaXNwYXRjaGVyLCB0aGlzLl9kb2N1bWVudCwgdGhpcy5fbG9jYXRpb24sIHRoaXMuX291dHNpZGVDbGlja0Rpc3BhdGNoZXIpO1xuICB9XG5cbiAgLyoqXG4gICAqIEdldHMgYSBwb3NpdGlvbiBidWlsZGVyIHRoYXQgY2FuIGJlIHVzZWQsIHZpYSBmbHVlbnQgQVBJLFxuICAgKiB0byBjb25zdHJ1Y3QgYW5kIGNvbmZpZ3VyZSBhIHBvc2l0aW9uIHN0cmF0ZWd5LlxuICAgKiBAcmV0dXJucyBBbiBvdmVybGF5IHBvc2l0aW9uIGJ1aWxkZXIuXG4gICAqL1xuICBwb3NpdGlvbigpOiBPdmVybGF5UG9zaXRpb25CdWlsZGVyIHtcbiAgICByZXR1cm4gdGhpcy5fcG9zaXRpb25CdWlsZGVyO1xuICB9XG5cbiAgLyoqXG4gICAqIENyZWF0ZXMgdGhlIERPTSBlbGVtZW50IGZvciBhbiBvdmVybGF5IGFuZCBhcHBlbmRzIGl0IHRvIHRoZSBvdmVybGF5IGNvbnRhaW5lci5cbiAgICogQHJldHVybnMgTmV3bHktY3JlYXRlZCBwYW5lIGVsZW1lbnRcbiAgICovXG4gIHByaXZhdGUgX2NyZWF0ZVBhbmVFbGVtZW50KGhvc3Q6IEhUTUxFbGVtZW50KTogSFRNTEVsZW1lbnQge1xuICAgIGNvbnN0IHBhbmUgPSB0aGlzLl9kb2N1bWVudC5jcmVhdGVFbGVtZW50KCdkaXYnKTtcblxuICAgIHBhbmUuaWQgPSBgY2RrLW92ZXJsYXktJHtuZXh0VW5pcXVlSWQrK31gO1xuICAgIHBhbmUuY2xhc3NMaXN0LmFkZCgnY2RrLW92ZXJsYXktcGFuZScpO1xuICAgIGhvc3QuYXBwZW5kQ2hpbGQocGFuZSk7XG5cbiAgICByZXR1cm4gcGFuZTtcbiAgfVxuXG4gIC8qKlxuICAgKiBDcmVhdGVzIHRoZSBob3N0IGVsZW1lbnQgdGhhdCB3cmFwcyBhcm91bmQgYW4gb3ZlcmxheVxuICAgKiBhbmQgY2FuIGJlIHVzZWQgZm9yIGFkdmFuY2VkIHBvc2l0aW9uaW5nLlxuICAgKiBAcmV0dXJucyBOZXdseS1jcmVhdGUgaG9zdCBlbGVtZW50LlxuICAgKi9cbiAgcHJpdmF0ZSBfY3JlYXRlSG9zdEVsZW1lbnQoKTogSFRNTEVsZW1lbnQge1xuICAgIGNvbnN0IGhvc3QgPSB0aGlzLl9kb2N1bWVudC5jcmVhdGVFbGVtZW50KCdkaXYnKTtcbiAgICB0aGlzLl9vdmVybGF5Q29udGFpbmVyLmdldENvbnRhaW5lckVsZW1lbnQoKS5hcHBlbmRDaGlsZChob3N0KTtcbiAgICByZXR1cm4gaG9zdDtcbiAgfVxuXG4gIC8qKlxuICAgKiBDcmVhdGUgYSBEb21Qb3J0YWxPdXRsZXQgaW50byB3aGljaCB0aGUgb3ZlcmxheSBjb250ZW50IGNhbiBiZSBsb2FkZWQuXG4gICAqIEBwYXJhbSBwYW5lIFRoZSBET00gZWxlbWVudCB0byB0dXJuIGludG8gYSBwb3J0YWwgb3V0bGV0LlxuICAgKiBAcmV0dXJucyBBIHBvcnRhbCBvdXRsZXQgZm9yIHRoZSBnaXZlbiBET00gZWxlbWVudC5cbiAgICovXG4gIHByaXZhdGUgX2NyZWF0ZVBvcnRhbE91dGxldChwYW5lOiBIVE1MRWxlbWVudCk6IERvbVBvcnRhbE91dGxldCB7XG4gICAgLy8gV2UgaGF2ZSB0byByZXNvbHZlIHRoZSBBcHBsaWNhdGlvblJlZiBsYXRlciBpbiBvcmRlciB0byBhbGxvdyBwZW9wbGVcbiAgICAvLyB0byB1c2Ugb3ZlcmxheS1iYXNlZCBwcm92aWRlcnMgZHVyaW5nIGFwcCBpbml0aWFsaXphdGlvbi5cbiAgICBpZiAoIXRoaXMuX2FwcFJlZikge1xuICAgICAgdGhpcy5fYXBwUmVmID0gdGhpcy5faW5qZWN0b3IuZ2V0PEFwcGxpY2F0aW9uUmVmPihBcHBsaWNhdGlvblJlZik7XG4gICAgfVxuXG4gICAgcmV0dXJuIG5ldyBEb21Qb3J0YWxPdXRsZXQocGFuZSwgdGhpcy5fY29tcG9uZW50RmFjdG9yeVJlc29sdmVyLCB0aGlzLl9hcHBSZWYsIHRoaXMuX2luamVjdG9yLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRoaXMuX2RvY3VtZW50KTtcbiAgfVxufVxuIl19