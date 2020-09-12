/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ScrollDispatcher, ViewportRuler } from '@angular/cdk/scrolling';
import { DOCUMENT } from '@angular/common';
import { Inject, Injectable, NgZone } from '@angular/core';
import { BlockScrollStrategy } from './block-scroll-strategy';
import { CloseScrollStrategy } from './close-scroll-strategy';
import { NoopScrollStrategy } from './noop-scroll-strategy';
import { RepositionScrollStrategy, } from './reposition-scroll-strategy';
import * as i0 from "@angular/core";
import * as i1 from "@angular/cdk/scrolling";
import * as i2 from "@angular/common";
/**
 * Options for how an overlay will handle scrolling.
 *
 * Users can provide a custom value for `ScrollStrategyOptions` to replace the default
 * behaviors. This class primarily acts as a factory for ScrollStrategy instances.
 */
export class ScrollStrategyOptions {
    constructor(_scrollDispatcher, _viewportRuler, _ngZone, document) {
        this._scrollDispatcher = _scrollDispatcher;
        this._viewportRuler = _viewportRuler;
        this._ngZone = _ngZone;
        /** Do nothing on scroll. */
        this.noop = () => new NoopScrollStrategy();
        /**
         * Close the overlay as soon as the user scrolls.
         * @param config Configuration to be used inside the scroll strategy.
         */
        this.close = (config) => new CloseScrollStrategy(this._scrollDispatcher, this._ngZone, this._viewportRuler, config);
        /** Block scrolling. */
        this.block = () => new BlockScrollStrategy(this._viewportRuler, this._document);
        /**
         * Update the overlay's position on scroll.
         * @param config Configuration to be used inside the scroll strategy.
         * Allows debouncing the reposition calls.
         */
        this.reposition = (config) => new RepositionScrollStrategy(this._scrollDispatcher, this._viewportRuler, this._ngZone, config);
        this._document = document;
    }
}
ScrollStrategyOptions.ɵprov = i0.ɵɵdefineInjectable({ factory: function ScrollStrategyOptions_Factory() { return new ScrollStrategyOptions(i0.ɵɵinject(i1.ScrollDispatcher), i0.ɵɵinject(i1.ViewportRuler), i0.ɵɵinject(i0.NgZone), i0.ɵɵinject(i2.DOCUMENT)); }, token: ScrollStrategyOptions, providedIn: "root" });
ScrollStrategyOptions.decorators = [
    { type: Injectable, args: [{ providedIn: 'root' },] }
];
ScrollStrategyOptions.ctorParameters = () => [
    { type: ScrollDispatcher },
    { type: ViewportRuler },
    { type: NgZone },
    { type: undefined, decorators: [{ type: Inject, args: [DOCUMENT,] }] }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic2Nyb2xsLXN0cmF0ZWd5LW9wdGlvbnMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL292ZXJsYXkvc2Nyb2xsL3Njcm9sbC1zdHJhdGVneS1vcHRpb25zLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBQyxnQkFBZ0IsRUFBRSxhQUFhLEVBQUMsTUFBTSx3QkFBd0IsQ0FBQztBQUN2RSxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0saUJBQWlCLENBQUM7QUFDekMsT0FBTyxFQUFDLE1BQU0sRUFBRSxVQUFVLEVBQUUsTUFBTSxFQUFDLE1BQU0sZUFBZSxDQUFDO0FBQ3pELE9BQU8sRUFBQyxtQkFBbUIsRUFBQyxNQUFNLHlCQUF5QixDQUFDO0FBQzVELE9BQU8sRUFBQyxtQkFBbUIsRUFBNEIsTUFBTSx5QkFBeUIsQ0FBQztBQUN2RixPQUFPLEVBQUMsa0JBQWtCLEVBQUMsTUFBTSx3QkFBd0IsQ0FBQztBQUMxRCxPQUFPLEVBQ0wsd0JBQXdCLEdBRXpCLE1BQU0sOEJBQThCLENBQUM7Ozs7QUFHdEM7Ozs7O0dBS0c7QUFFSCxNQUFNLE9BQU8scUJBQXFCO0lBR2hDLFlBQ1UsaUJBQW1DLEVBQ25DLGNBQTZCLEVBQzdCLE9BQWUsRUFDTCxRQUFhO1FBSHZCLHNCQUFpQixHQUFqQixpQkFBaUIsQ0FBa0I7UUFDbkMsbUJBQWMsR0FBZCxjQUFjLENBQWU7UUFDN0IsWUFBTyxHQUFQLE9BQU8sQ0FBUTtRQUt6Qiw0QkFBNEI7UUFDNUIsU0FBSSxHQUFHLEdBQUcsRUFBRSxDQUFDLElBQUksa0JBQWtCLEVBQUUsQ0FBQztRQUV0Qzs7O1dBR0c7UUFDSCxVQUFLLEdBQUcsQ0FBQyxNQUFrQyxFQUFFLEVBQUUsQ0FBQyxJQUFJLG1CQUFtQixDQUFDLElBQUksQ0FBQyxpQkFBaUIsRUFDMUYsSUFBSSxDQUFDLE9BQU8sRUFBRSxJQUFJLENBQUMsY0FBYyxFQUFFLE1BQU0sQ0FBQyxDQUFBO1FBRTlDLHVCQUF1QjtRQUN2QixVQUFLLEdBQUcsR0FBRyxFQUFFLENBQUMsSUFBSSxtQkFBbUIsQ0FBQyxJQUFJLENBQUMsY0FBYyxFQUFFLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztRQUUzRTs7OztXQUlHO1FBQ0gsZUFBVSxHQUFHLENBQUMsTUFBdUMsRUFBRSxFQUFFLENBQUMsSUFBSSx3QkFBd0IsQ0FDbEYsSUFBSSxDQUFDLGlCQUFpQixFQUFFLElBQUksQ0FBQyxjQUFjLEVBQUUsSUFBSSxDQUFDLE9BQU8sRUFBRSxNQUFNLENBQUMsQ0FBQTtRQXRCbEUsSUFBSSxDQUFDLFNBQVMsR0FBRyxRQUFRLENBQUM7SUFDNUIsQ0FBQzs7OztZQVZKLFVBQVUsU0FBQyxFQUFDLFVBQVUsRUFBRSxNQUFNLEVBQUM7OztZQWxCeEIsZ0JBQWdCO1lBQUUsYUFBYTtZQUVYLE1BQU07NENBd0I3QixNQUFNLFNBQUMsUUFBUSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1Njcm9sbERpc3BhdGNoZXIsIFZpZXdwb3J0UnVsZXJ9IGZyb20gJ0Bhbmd1bGFyL2Nkay9zY3JvbGxpbmcnO1xuaW1wb3J0IHtET0NVTUVOVH0gZnJvbSAnQGFuZ3VsYXIvY29tbW9uJztcbmltcG9ydCB7SW5qZWN0LCBJbmplY3RhYmxlLCBOZ1pvbmV9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHtCbG9ja1Njcm9sbFN0cmF0ZWd5fSBmcm9tICcuL2Jsb2NrLXNjcm9sbC1zdHJhdGVneSc7XG5pbXBvcnQge0Nsb3NlU2Nyb2xsU3RyYXRlZ3ksIENsb3NlU2Nyb2xsU3RyYXRlZ3lDb25maWd9IGZyb20gJy4vY2xvc2Utc2Nyb2xsLXN0cmF0ZWd5JztcbmltcG9ydCB7Tm9vcFNjcm9sbFN0cmF0ZWd5fSBmcm9tICcuL25vb3Atc2Nyb2xsLXN0cmF0ZWd5JztcbmltcG9ydCB7XG4gIFJlcG9zaXRpb25TY3JvbGxTdHJhdGVneSxcbiAgUmVwb3NpdGlvblNjcm9sbFN0cmF0ZWd5Q29uZmlnLFxufSBmcm9tICcuL3JlcG9zaXRpb24tc2Nyb2xsLXN0cmF0ZWd5JztcblxuXG4vKipcbiAqIE9wdGlvbnMgZm9yIGhvdyBhbiBvdmVybGF5IHdpbGwgaGFuZGxlIHNjcm9sbGluZy5cbiAqXG4gKiBVc2VycyBjYW4gcHJvdmlkZSBhIGN1c3RvbSB2YWx1ZSBmb3IgYFNjcm9sbFN0cmF0ZWd5T3B0aW9uc2AgdG8gcmVwbGFjZSB0aGUgZGVmYXVsdFxuICogYmVoYXZpb3JzLiBUaGlzIGNsYXNzIHByaW1hcmlseSBhY3RzIGFzIGEgZmFjdG9yeSBmb3IgU2Nyb2xsU3RyYXRlZ3kgaW5zdGFuY2VzLlxuICovXG5ASW5qZWN0YWJsZSh7cHJvdmlkZWRJbjogJ3Jvb3QnfSlcbmV4cG9ydCBjbGFzcyBTY3JvbGxTdHJhdGVneU9wdGlvbnMge1xuICBwcml2YXRlIF9kb2N1bWVudDogRG9jdW1lbnQ7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgcHJpdmF0ZSBfc2Nyb2xsRGlzcGF0Y2hlcjogU2Nyb2xsRGlzcGF0Y2hlcixcbiAgICBwcml2YXRlIF92aWV3cG9ydFJ1bGVyOiBWaWV3cG9ydFJ1bGVyLFxuICAgIHByaXZhdGUgX25nWm9uZTogTmdab25lLFxuICAgIEBJbmplY3QoRE9DVU1FTlQpIGRvY3VtZW50OiBhbnkpIHtcbiAgICAgIHRoaXMuX2RvY3VtZW50ID0gZG9jdW1lbnQ7XG4gICAgfVxuXG4gIC8qKiBEbyBub3RoaW5nIG9uIHNjcm9sbC4gKi9cbiAgbm9vcCA9ICgpID0+IG5ldyBOb29wU2Nyb2xsU3RyYXRlZ3koKTtcblxuICAvKipcbiAgICogQ2xvc2UgdGhlIG92ZXJsYXkgYXMgc29vbiBhcyB0aGUgdXNlciBzY3JvbGxzLlxuICAgKiBAcGFyYW0gY29uZmlnIENvbmZpZ3VyYXRpb24gdG8gYmUgdXNlZCBpbnNpZGUgdGhlIHNjcm9sbCBzdHJhdGVneS5cbiAgICovXG4gIGNsb3NlID0gKGNvbmZpZz86IENsb3NlU2Nyb2xsU3RyYXRlZ3lDb25maWcpID0+IG5ldyBDbG9zZVNjcm9sbFN0cmF0ZWd5KHRoaXMuX3Njcm9sbERpc3BhdGNoZXIsXG4gICAgICB0aGlzLl9uZ1pvbmUsIHRoaXMuX3ZpZXdwb3J0UnVsZXIsIGNvbmZpZylcblxuICAvKiogQmxvY2sgc2Nyb2xsaW5nLiAqL1xuICBibG9jayA9ICgpID0+IG5ldyBCbG9ja1Njcm9sbFN0cmF0ZWd5KHRoaXMuX3ZpZXdwb3J0UnVsZXIsIHRoaXMuX2RvY3VtZW50KTtcblxuICAvKipcbiAgICogVXBkYXRlIHRoZSBvdmVybGF5J3MgcG9zaXRpb24gb24gc2Nyb2xsLlxuICAgKiBAcGFyYW0gY29uZmlnIENvbmZpZ3VyYXRpb24gdG8gYmUgdXNlZCBpbnNpZGUgdGhlIHNjcm9sbCBzdHJhdGVneS5cbiAgICogQWxsb3dzIGRlYm91bmNpbmcgdGhlIHJlcG9zaXRpb24gY2FsbHMuXG4gICAqL1xuICByZXBvc2l0aW9uID0gKGNvbmZpZz86IFJlcG9zaXRpb25TY3JvbGxTdHJhdGVneUNvbmZpZykgPT4gbmV3IFJlcG9zaXRpb25TY3JvbGxTdHJhdGVneShcbiAgICAgIHRoaXMuX3Njcm9sbERpc3BhdGNoZXIsIHRoaXMuX3ZpZXdwb3J0UnVsZXIsIHRoaXMuX25nWm9uZSwgY29uZmlnKVxufVxuIl19