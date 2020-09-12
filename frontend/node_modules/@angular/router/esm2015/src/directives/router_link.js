/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { LocationStrategy } from '@angular/common';
import { Attribute, Directive, ElementRef, HostBinding, HostListener, Input, isDevMode, Renderer2 } from '@angular/core';
import { Subject } from 'rxjs';
import { NavigationEnd } from '../events';
import { Router } from '../router';
import { ActivatedRoute } from '../router_state';
/**
 * @description
 *
 * When applied to an element in a template, makes that element a link
 * that initiates navigation to a route. Navigation opens one or more routed components
 * in one or more `<router-outlet>` locations on the page.
 *
 * Given a route configuration `[{ path: 'user/:name', component: UserCmp }]`,
 * the following creates a static link to the route:
 * `<a routerLink="/user/bob">link to user component</a>`
 *
 * You can use dynamic values to generate the link.
 * For a dynamic link, pass an array of path segments,
 * followed by the params for each segment.
 * For example, `['/team', teamId, 'user', userName, {details: true}]`
 * generates a link to `/team/11/user/bob;details=true`.
 *
 * Multiple static segments can be merged into one term and combined with dynamic segements.
 * For example, `['/team/11/user', userName, {details: true}]`
 *
 * The input that you provide to the link is treated as a delta to the current URL.
 * For instance, suppose the current URL is `/user/(box//aux:team)`.
 * The link `<a [routerLink]="['/user/jim']">Jim</a>` creates the URL
 * `/user/(jim//aux:team)`.
 * See {@link Router#createUrlTree createUrlTree} for more information.
 *
 * @usageNotes
 *
 * You can use absolute or relative paths in a link, set query parameters,
 * control how parameters are handled, and keep a history of navigation states.
 *
 * ### Relative link paths
 *
 * The first segment name can be prepended with `/`, `./`, or `../`.
 * * If the first segment begins with `/`, the router looks up the route from the root of the
 *   app.
 * * If the first segment begins with `./`, or doesn't begin with a slash, the router
 *   looks in the children of the current activated route.
 * * If the first segment begins with `../`, the router goes up one level in the route tree.
 *
 * ### Setting and handling query params and fragments
 *
 * The following link adds a query parameter and a fragment to the generated URL:
 *
 * ```
 * <a [routerLink]="['/user/bob']" [queryParams]="{debug: true}" fragment="education">
 *   link to user component
 * </a>
 * ```
 * By default, the directive constructs the new URL using the given query parameters.
 * The example generates the link: `/user/bob?debug=true#education`.
 *
 * You can instruct the directive to handle query parameters differently
 * by specifying the `queryParamsHandling` option in the link.
 * Allowed values are:
 *
 *  - `'merge'`: Merge the given `queryParams` into the current query params.
 *  - `'preserve'`: Preserve the current query params.
 *
 * For example:
 *
 * ```
 * <a [routerLink]="['/user/bob']" [queryParams]="{debug: true}" queryParamsHandling="merge">
 *   link to user component
 * </a>
 * ```
 *
 * See {@link NavigationExtras.queryParamsHandling NavigationExtras#queryParamsHandling}.
 *
 * ### Preserving navigation history
 *
 * You can provide a `state` value to be persisted to the browser's
 * [`History.state` property](https://developer.mozilla.org/en-US/docs/Web/API/History#Properties).
 * For example:
 *
 * ```
 * <a [routerLink]="['/user/bob']" [state]="{tracingId: 123}">
 *   link to user component
 * </a>
 * ```
 *
 * Use {@link Router.getCurrentNavigation() Router#getCurrentNavigation} to retrieve a saved
 * navigation-state value. For example, to capture the `tracingId` during the `NavigationStart`
 * event:
 *
 * ```
 * // Get NavigationStart events
 * router.events.pipe(filter(e => e instanceof NavigationStart)).subscribe(e => {
 *   const navigation = router.getCurrentNavigation();
 *   tracingService.trace({id: navigation.extras.state.tracingId});
 * });
 * ```
 *
 * @ngModule RouterModule
 *
 * @publicApi
 */
export class RouterLink {
    constructor(router, route, tabIndex, renderer, el) {
        this.router = router;
        this.route = route;
        this.commands = [];
        /** @internal */
        this.onChanges = new Subject();
        if (tabIndex == null) {
            renderer.setAttribute(el.nativeElement, 'tabindex', '0');
        }
    }
    /** @nodoc */
    ngOnChanges(changes) {
        // This is subscribed to by `RouterLinkActive` so that it knows to update when there are changes
        // to the RouterLinks it's tracking.
        this.onChanges.next(this);
    }
    /**
     * Commands to pass to {@link Router#createUrlTree Router#createUrlTree}.
     *   - **array**: commands to pass to {@link Router#createUrlTree Router#createUrlTree}.
     *   - **string**: shorthand for array of commands with just the string, i.e. `['/route']`
     *   - **null|undefined**: shorthand for an empty array of commands, i.e. `[]`
     * @see {@link Router#createUrlTree Router#createUrlTree}
     */
    set routerLink(commands) {
        if (commands != null) {
            this.commands = Array.isArray(commands) ? commands : [commands];
        }
        else {
            this.commands = [];
        }
    }
    /**
     * @deprecated As of Angular v4.0 use `queryParamsHandling` instead.
     */
    set preserveQueryParams(value) {
        if (isDevMode() && console && console.warn) {
            console.warn('preserveQueryParams is deprecated!, use queryParamsHandling instead.');
        }
        this.preserve = value;
    }
    /** @nodoc */
    onClick() {
        const extras = {
            skipLocationChange: attrBoolValue(this.skipLocationChange),
            replaceUrl: attrBoolValue(this.replaceUrl),
            state: this.state,
        };
        this.router.navigateByUrl(this.urlTree, extras);
        return true;
    }
    get urlTree() {
        return this.router.createUrlTree(this.commands, {
            relativeTo: this.route,
            queryParams: this.queryParams,
            fragment: this.fragment,
            preserveQueryParams: attrBoolValue(this.preserve),
            queryParamsHandling: this.queryParamsHandling,
            preserveFragment: attrBoolValue(this.preserveFragment),
        });
    }
}
RouterLink.decorators = [
    { type: Directive, args: [{ selector: ':not(a):not(area)[routerLink]' },] }
];
RouterLink.ctorParameters = () => [
    { type: Router },
    { type: ActivatedRoute },
    { type: String, decorators: [{ type: Attribute, args: ['tabindex',] }] },
    { type: Renderer2 },
    { type: ElementRef }
];
RouterLink.propDecorators = {
    queryParams: [{ type: Input }],
    fragment: [{ type: Input }],
    queryParamsHandling: [{ type: Input }],
    preserveFragment: [{ type: Input }],
    skipLocationChange: [{ type: Input }],
    replaceUrl: [{ type: Input }],
    state: [{ type: Input }],
    routerLink: [{ type: Input }],
    preserveQueryParams: [{ type: Input }],
    onClick: [{ type: HostListener, args: ['click',] }]
};
/**
 * @description
 *
 * Lets you link to specific routes in your app.
 *
 * See `RouterLink` for more information.
 *
 * @ngModule RouterModule
 *
 * @publicApi
 */
export class RouterLinkWithHref {
    constructor(router, route, locationStrategy) {
        this.router = router;
        this.route = route;
        this.locationStrategy = locationStrategy;
        this.commands = [];
        /** @internal */
        this.onChanges = new Subject();
        this.subscription = router.events.subscribe((s) => {
            if (s instanceof NavigationEnd) {
                this.updateTargetUrlAndHref();
            }
        });
    }
    /**
     * Commands to pass to {@link Router#createUrlTree Router#createUrlTree}.
     *   - **array**: commands to pass to {@link Router#createUrlTree Router#createUrlTree}.
     *   - **string**: shorthand for array of commands with just the string, i.e. `['/route']`
     *   - **null|undefined**: shorthand for an empty array of commands, i.e. `[]`
     * @see {@link Router#createUrlTree Router#createUrlTree}
     */
    set routerLink(commands) {
        if (commands != null) {
            this.commands = Array.isArray(commands) ? commands : [commands];
        }
        else {
            this.commands = [];
        }
    }
    /**
     * @deprecated As of Angular v4.0 use `queryParamsHandling` instead.
     */
    set preserveQueryParams(value) {
        if (isDevMode() && console && console.warn) {
            console.warn('preserveQueryParams is deprecated, use queryParamsHandling instead.');
        }
        this.preserve = value;
    }
    /** @nodoc */
    ngOnChanges(changes) {
        this.updateTargetUrlAndHref();
        this.onChanges.next(this);
    }
    /** @nodoc */
    ngOnDestroy() {
        this.subscription.unsubscribe();
    }
    /** @nodoc */
    onClick(button, ctrlKey, metaKey, shiftKey) {
        if (button !== 0 || ctrlKey || metaKey || shiftKey) {
            return true;
        }
        if (typeof this.target === 'string' && this.target != '_self') {
            return true;
        }
        const extras = {
            skipLocationChange: attrBoolValue(this.skipLocationChange),
            replaceUrl: attrBoolValue(this.replaceUrl),
            state: this.state
        };
        this.router.navigateByUrl(this.urlTree, extras);
        return false;
    }
    updateTargetUrlAndHref() {
        this.href = this.locationStrategy.prepareExternalUrl(this.router.serializeUrl(this.urlTree));
    }
    get urlTree() {
        return this.router.createUrlTree(this.commands, {
            relativeTo: this.route,
            queryParams: this.queryParams,
            fragment: this.fragment,
            preserveQueryParams: attrBoolValue(this.preserve),
            queryParamsHandling: this.queryParamsHandling,
            preserveFragment: attrBoolValue(this.preserveFragment),
        });
    }
}
RouterLinkWithHref.decorators = [
    { type: Directive, args: [{ selector: 'a[routerLink],area[routerLink]' },] }
];
RouterLinkWithHref.ctorParameters = () => [
    { type: Router },
    { type: ActivatedRoute },
    { type: LocationStrategy }
];
RouterLinkWithHref.propDecorators = {
    target: [{ type: HostBinding, args: ['attr.target',] }, { type: Input }],
    queryParams: [{ type: Input }],
    fragment: [{ type: Input }],
    queryParamsHandling: [{ type: Input }],
    preserveFragment: [{ type: Input }],
    skipLocationChange: [{ type: Input }],
    replaceUrl: [{ type: Input }],
    state: [{ type: Input }],
    href: [{ type: HostBinding }],
    routerLink: [{ type: Input }],
    preserveQueryParams: [{ type: Input }],
    onClick: [{ type: HostListener, args: ['click', ['$event.button', '$event.ctrlKey', '$event.metaKey', '$event.shiftKey'],] }]
};
function attrBoolValue(s) {
    return s === '' || !!s;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicm91dGVyX2xpbmsuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9yb3V0ZXIvc3JjL2RpcmVjdGl2ZXMvcm91dGVyX2xpbmsudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFDLGdCQUFnQixFQUFDLE1BQU0saUJBQWlCLENBQUM7QUFDakQsT0FBTyxFQUFDLFNBQVMsRUFBRSxTQUFTLEVBQUUsVUFBVSxFQUFFLFdBQVcsRUFBRSxZQUFZLEVBQUUsS0FBSyxFQUFFLFNBQVMsRUFBd0IsU0FBUyxFQUFnQixNQUFNLGVBQWUsQ0FBQztBQUM1SixPQUFPLEVBQUMsT0FBTyxFQUFlLE1BQU0sTUFBTSxDQUFDO0FBRzNDLE9BQU8sRUFBUSxhQUFhLEVBQUMsTUFBTSxXQUFXLENBQUM7QUFDL0MsT0FBTyxFQUFDLE1BQU0sRUFBQyxNQUFNLFdBQVcsQ0FBQztBQUNqQyxPQUFPLEVBQUMsY0FBYyxFQUFDLE1BQU0saUJBQWlCLENBQUM7QUFJL0M7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztHQWdHRztBQUVILE1BQU0sT0FBTyxVQUFVO0lBdURyQixZQUNZLE1BQWMsRUFBVSxLQUFxQixFQUM5QixRQUFnQixFQUFFLFFBQW1CLEVBQUUsRUFBYztRQURwRSxXQUFNLEdBQU4sTUFBTSxDQUFRO1FBQVUsVUFBSyxHQUFMLEtBQUssQ0FBZ0I7UUFQakQsYUFBUSxHQUFVLEVBQUUsQ0FBQztRQUc3QixnQkFBZ0I7UUFDaEIsY0FBUyxHQUFHLElBQUksT0FBTyxFQUFjLENBQUM7UUFLcEMsSUFBSSxRQUFRLElBQUksSUFBSSxFQUFFO1lBQ3BCLFFBQVEsQ0FBQyxZQUFZLENBQUMsRUFBRSxDQUFDLGFBQWEsRUFBRSxVQUFVLEVBQUUsR0FB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TCxLQUFLOytCQU9MLEtBQUs7aUNBT0wsS0FBSzt5QkFPTCxLQUFLO29CQU1MLEtBQUs7bUJBUUwsV0FBVzt5QkFzQlgsS0FBSztrQ0FZTCxLQUFLO3NCQW1CTCxZQUFZLFNBQUMsT0FBTyxFQUFFLENBQUMsZUFBZSxFQUFFLGdCQUFnQixFQUFFLGdCQUFnQixFQUFFLGlCQUFpQixDQUFDOztBQW1DakcsU0FBUyxhQUFhLENBQUMsQ0FBTTtJQUMzQixPQUFPLENBQUMsS0FBSyxFQUFFLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQztBQUN6QixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7TG9jYXRpb25TdHJhdGVneX0gZnJvbSAnQGFuZ3VsYXIvY29tbW9uJztcbmltcG9ydCB7QXR0cmlidXRlLCBEaXJlY3RpdmUsIEVsZW1lbnRSZWYsIEhvc3RCaW5kaW5nLCBIb3N0TGlzdGVuZXIsIElucHV0LCBpc0Rldk1vZGUsIE9uQ2hhbmdlcywgT25EZXN0cm95LCBSZW5kZXJlcjIsIFNpbXBsZUNoYW5nZXN9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHtTdWJqZWN0LCBTdWJzY3JpcHRpb259IGZyb20gJ3J4anMnO1xuXG5pbXBvcnQge1F1ZXJ5UGFyYW1zSGFuZGxpbmd9IGZyb20gJy4uL2NvbmZpZyc7XG5pbXBvcnQge0V2ZW50LCBOYXZpZ2F0aW9uRW5kfSBmcm9tICcuLi9ldmVudHMnO1xuaW1wb3J0IHtSb3V0ZXJ9IGZyb20gJy4uL3JvdXRlcic7XG5pbXBvcnQge0FjdGl2YXRlZFJvdXRlfSBmcm9tICcuLi9yb3V0ZXJfc3RhdGUnO1xuaW1wb3J0IHtVcmxUcmVlfSBmcm9tICcuLi91cmxfdHJlZSc7XG5cblxuLyoqXG4gKiBAZGVzY3JpcHRpb25cbiAqXG4gKiBXaGVuIGFwcGxpZWQgdG8gYW4gZWxlbWVudCBpbiBhIHRlbXBsYXRlLCBtYWtlcyB0aGF0IGVsZW1lbnQgYSBsaW5rXG4gKiB0aGF0IGluaXRpYXRlcyBuYXZpZ2F0aW9uIHRvIGEgcm91dGUuIE5hdmlnYXRpb24gb3BlbnMgb25lIG9yIG1vcmUgcm91dGVkIGNvbXBvbmVudHNcbiAqIGluIG9uZSBvciBtb3JlIGA8cm91dGVyLW91dGxldD5gIGxvY2F0aW9ucyBvbiB0aGUgcGFnZS5cbiAqXG4gKiBHaXZlbiBhIHJvdXRlIGNvbmZpZ3VyYXRpb24gYFt7IHBhdGg6ICd1c2VyLzpuYW1lJywgY29tcG9uZW50OiBVc2VyQ21wIH1dYCxcbiAqIHRoZSBmb2xsb3dpbmcgY3JlYXRlcyBhIHN0YXRpYyBsaW5rIHRvIHRoZSByb3V0ZTpcbiAqIGA8YSByb3V0ZXJMaW5rPVwiL3VzZXIvYm9iXCI+bGluayB0byB1c2VyIGNvbXBvbmVudDwvYT5gXG4gKlxuICogWW91IGNhbiB1c2UgZHluYW1pYyB2YWx1ZXMgdG8gZ2VuZXJhdGUgdGhlIGxpbmsuXG4gKiBGb3IgYSBkeW5hbWljIGxpbmssIHBhc3MgYW4gYXJyYXkgb2YgcGF0aCBzZWdtZW50cyxcbiAqIGZvbGxvd2VkIGJ5IHRoZSBwYXJhbXMgZm9yIGVhY2ggc2VnbWVudC5cbiAqIEZvciBleGFtcGxlLCBgWycvdGVhbScsIHRlYW1JZCwgJ3VzZXInLCB1c2VyTmFtZSwge2RldGFpbHM6IHRydWV9XWBcbiAqIGdlbmVyYXRlcyBhIGxpbmsgdG8gYC90ZWFtLzExL3VzZXIvYm9iO2RldGFpbHM9dHJ1ZWAuXG4gKlxuICogTXVsdGlwbGUgc3RhdGljIHNlZ21lbnRzIGNhbiBiZSBtZXJnZWQgaW50byBvbmUgdGVybSBhbmQgY29tYmluZWQgd2l0aCBkeW5hbWljIHNlZ2VtZW50cy5cbiAqIEZvciBleGFtcGxlLCBgWycvdGVhbS8xMS91c2VyJywgdXNlck5hbWUsIHtkZXRhaWxzOiB0cnVlfV1gXG4gKlxuICogVGhlIGlucHV0IHRoYXQgeW91IHByb3ZpZGUgdG8gdGhlIGxpbmsgaXMgdHJlYXRlZCBhcyBhIGRlbHRhIHRvIHRoZSBjdXJyZW50IFVSTC5cbiAqIEZvciBpbnN0YW5jZSwgc3VwcG9zZSB0aGUgY3VycmVudCBVUkwgaXMgYC91c2VyLyhib3gvL2F1eDp0ZWFtKWAuXG4gKiBUaGUgbGluayBgPGEgW3JvdXRlckxpbmtdPVwiWycvdXNlci9qaW0nXVwiPkppbTwvYT5gIGNyZWF0ZXMgdGhlIFVSTFxuICogYC91c2VyLyhqaW0vL2F1eDp0ZWFtKWAuXG4gKiBTZWUge0BsaW5rIFJvdXRlciNjcmVhdGVVcmxUcmVlIGNyZWF0ZVVybFRyZWV9IGZvciBtb3JlIGluZm9ybWF0aW9uLlxuICpcbiAqIEB1c2FnZU5vdGVzXG4gKlxuICogWW91IGNhbiB1c2UgYWJzb2x1dGUgb3IgcmVsYXRpdmUgcGF0aHMgaW4gYSBsaW5rLCBzZXQgcXVlcnkgcGFyYW1ldGVycyxcbiAqIGNvbnRyb2wgaG93IHBhcmFtZXRlcnMgYXJlIGhhbmRsZWQsIGFuZCBrZWVwIGEgaGlzdG9yeSBvZiBuYXZpZ2F0aW9uIHN0YXRlcy5cbiAqXG4gKiAjIyMgUmVsYXRpdmUgbGluayBwYXRoc1xuICpcbiAqIFRoZSBmaXJzdCBzZWdtZW50IG5hbWUgY2FuIGJlIHByZXBlbmRlZCB3aXRoIGAvYCwgYC4vYCwgb3IgYC4uL2AuXG4gKiAqIElmIHRoZSBmaXJzdCBzZWdtZW50IGJlZ2lucyB3aXRoIGAvYCwgdGhlIHJvdXRlciBsb29rcyB1cCB0aGUgcm91dGUgZnJvbSB0aGUgcm9vdCBvZiB0aGVcbiAqICAgYXBwLlxuICogKiBJZiB0aGUgZmlyc3Qgc2VnbWVudCBiZWdpbnMgd2l0aCBgLi9gLCBvciBkb2Vzbid0IGJlZ2luIHdpdGggYSBzbGFzaCwgdGhlIHJvdXRlclxuICogICBsb29rcyBpbiB0aGUgY2hpbGRyZW4gb2YgdGhlIGN1cnJlbnQgYWN0aXZhdGVkIHJvdXRlLlxuICogKiBJZiB0aGUgZmlyc3Qgc2VnbWVudCBiZWdpbnMgd2l0aCBgLi4vYCwgdGhlIHJvdXRlciBnb2VzIHVwIG9uZSBsZXZlbCBpbiB0aGUgcm91dGUgdHJlZS5cbiAqXG4gKiAjIyMgU2V0dGluZyBhbmQgaGFuZGxpbmcgcXVlcnkgcGFyYW1zIGFuZCBmcmFnbWVudHNcbiAqXG4gKiBUaGUgZm9sbG93aW5nIGxpbmsgYWRkcyBhIHF1ZXJ5IHBhcmFtZXRlciBhbmQgYSBmcmFnbWVudCB0byB0aGUgZ2VuZXJhdGVkIFVSTDpcbiAqXG4gKiBgYGBcbiAqIDxhIFtyb3V0ZXJMaW5rXT1cIlsnL3VzZXIvYm9iJ11cIiBbcXVlcnlQYXJhbXNdPVwie2RlYnVnOiB0cnVlfVwiIGZyYWdtZW50PVwiZWR1Y2F0aW9uXCI+XG4gKiAgIGxpbmsgdG8gdXNlciBjb21wb25lbnRcbiAqIDwvYT5cbiAqIGBgYFxuICogQnkgZGVmYXVsdCwgdGhlIGRpcmVjdGl2ZSBjb25zdHJ1Y3RzIHRoZSBuZXcgVVJMIHVzaW5nIHRoZSBnaXZlbiBxdWVyeSBwYXJhbWV0ZXJzLlxuICogVGhlIGV4YW1wbGUgZ2VuZXJhdGVzIHRoZSBsaW5rOiBgL3VzZXIvYm9iP2RlYnVnPXRydWUjZWR1Y2F0aW9uYC5cbiAqXG4gKiBZb3UgY2FuIGluc3RydWN0IHRoZSBkaXJlY3RpdmUgdG8gaGFuZGxlIHF1ZXJ5IHBhcmFtZXRlcnMgZGlmZmVyZW50bHlcbiAqIGJ5IHNwZWNpZnlpbmcgdGhlIGBxdWVyeVBhcmFtc0hhbmRsaW5nYCBvcHRpb24gaW4gdGhlIGxpbmsuXG4gKiBBbGxvd2VkIHZhbHVlcyBhcmU6XG4gKlxuICogIC0gYCdtZXJnZSdgOiBNZXJnZSB0aGUgZ2l2ZW4gYHF1ZXJ5UGFyYW1zYCBpbnRvIHRoZSBjdXJyZW50IHF1ZXJ5IHBhcmFtcy5cbiAqICAtIGAncHJlc2VydmUnYDogUHJlc2VydmUgdGhlIGN1cnJlbnQgcXVlcnkgcGFyYW1zLlxuICpcbiAqIEZvciBleGFtcGxlOlxuICpcbiAqIGBgYFxuICogPGEgW3JvdXRlckxpbmtdPVwiWycvdXNlci9ib2InXVwiIFtxdWVyeVBhcmFtc109XCJ7ZGVidWc6IHRydWV9XCIgcXVlcnlQYXJhbXNIYW5kbGluZz1cIm1lcmdlXCI+XG4gKiAgIGxpbmsgdG8gdXNlciBjb21wb25lbnRcbiAqIDwvYT5cbiAqIGBgYFxuICpcbiAqIFNlZSB7QGxpbmsgTmF2aWdhdGlvbkV4dHJhcy5xdWVyeVBhcmFtc0hhbmRsaW5nIE5hdmlnYXRpb25FeHRyYXMjcXVlcnlQYXJhbXNIYW5kbGluZ30uXG4gKlxuICogIyMjIFByZXNlcnZpbmcgbmF2aWdhdGlvbiBoaXN0b3J5XG4gKlxuICogWW91IGNhbiBwcm92aWRlIGEgYHN0YXRlYCB2YWx1ZSB0byBiZSBwZXJzaXN0ZWQgdG8gdGhlIGJyb3dzZXInc1xuICogW2BIaXN0b3J5LnN0YXRlYCBwcm9wZXJ0eV0oaHR0cHM6Ly9kZXZlbG9wZXIubW96aWxsYS5vcmcvZW4tVVMvZG9jcy9XZWIvQVBJL0hpc3RvcnkjUHJvcGVydGllcykuXG4gKiBGb3IgZXhhbXBsZTpcbiAqXG4gKiBgYGBcbiAqIDxhIFtyb3V0ZXJMaW5rXT1cIlsnL3VzZXIvYm9iJ11cIiBbc3RhdGVdPVwie3RyYWNpbmdJZDogMTIzfVwiPlxuICogICBsaW5rIHRvIHVzZXIgY29tcG9uZW50XG4gKiA8L2E+XG4gKiBgYGBcbiAqXG4gKiBVc2Uge0BsaW5rIFJvdXRlci5nZXRDdXJyZW50TmF2aWdhdGlvbigpIFJvdXRlciNnZXRDdXJyZW50TmF2aWdhdGlvbn0gdG8gcmV0cmlldmUgYSBzYXZlZFxuICogbmF2aWdhdGlvbi1zdGF0ZSB2YWx1ZS4gRm9yIGV4YW1wbGUsIHRvIGNhcHR1cmUgdGhlIGB0cmFjaW5nSWRgIGR1cmluZyB0aGUgYE5hdmlnYXRpb25TdGFydGBcbiAqIGV2ZW50OlxuICpcbiAqIGBgYFxuICogLy8gR2V0IE5hdmlnYXRpb25TdGFydCBldmVudHNcbiAqIHJvdXRlci5ldmVudHMucGlwZShmaWx0ZXIoZSA9PiBlIGluc3RhbmNlb2YgTmF2aWdhdGlvblN0YXJ0KSkuc3Vic2NyaWJlKGUgPT4ge1xuICogICBjb25zdCBuYXZpZ2F0aW9uID0gcm91dGVyLmdldEN1cnJlbnROYXZpZ2F0aW9uKCk7XG4gKiAgIHRyYWNpbmdTZXJ2aWNlLnRyYWNlKHtpZDogbmF2aWdhdGlvbi5leHRyYXMuc3RhdGUudHJhY2luZ0lkfSk7XG4gKiB9KTtcbiAqIGBgYFxuICpcbiAqIEBuZ01vZHVsZSBSb3V0ZXJNb2R1bGVcbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbkBEaXJlY3RpdmUoe3NlbGVjdG9yOiAnOm5vdChhKTpub3QoYXJlYSlbcm91dGVyTGlua10nfSlcbmV4cG9ydCBjbGFzcyBSb3V0ZXJMaW5rIGltcGxlbWVudHMgT25DaGFuZ2VzIHtcbiAgLyoqXG4gICAqIFBhc3NlZCB0byB7QGxpbmsgUm91dGVyI2NyZWF0ZVVybFRyZWUgUm91dGVyI2NyZWF0ZVVybFRyZWV9IGFzIHBhcnQgb2YgdGhlIGBOYXZpZ2F0aW9uRXh0cmFzYC5cbiAgICogQHNlZSB7QGxpbmsgTmF2aWdhdGlvbkV4dHJhcyNxdWVyeVBhcmFtcyBOYXZpZ2F0aW9uRXh0cmFzI3F1ZXJ5UGFyYW1zfVxuICAgKiBAc2VlIHtAbGluayBSb3V0ZXIjY3JlYXRlVXJsVHJlZSBSb3V0ZXIjY3JlYXRlVXJsVHJlZX1cbiAgICovXG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBASW5wdXQoKSBxdWVyeVBhcmFtcyE6IHtbazogc3RyaW5nXTogYW55fTtcbiAgLyoqXG4gICAqIFBhc3NlZCB0byB7QGxpbmsgUm91dGVyI2NyZWF0ZVVybFRyZWUgUm91dGVyI2NyZWF0ZVVybFRyZWV9IGFzIHBhcnQgb2YgdGhlIGBOYXZpZ2F0aW9uRXh0cmFzYC5cbiAgICogQHNlZSB7QGxpbmsgTmF2aWdhdGlvbkV4dHJhcyNmcmFnbWVudCBOYXZpZ2F0aW9uRXh0cmFzI2ZyYWdtZW50fVxuICAgKiBAc2VlIHtAbGluayBSb3V0ZXIjY3JlYXRlVXJsVHJlZSBSb3V0ZXIjY3JlYXRlVXJsVHJlZX1cbiAgICovXG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBASW5wdXQoKSBmcmFnbWVudCE6IHN0cmluZztcbiAgLyoqXG4gICAqIFBhc3NlZCB0byB7QGxpbmsgUm91dGVyI2NyZWF0ZVVybFRyZWUgUm91dGVyI2NyZWF0ZVVybFRyZWV9IGFzIHBhcnQgb2YgdGhlIGBOYXZpZ2F0aW9uRXh0cmFzYC5cbiAgICogQHNlZSB7QGxpbmsgTmF2aWdhdGlvbkV4dHJhcyNxdWVyeVBhcmFtc0hhbmRsaW5nIE5hdmlnYXRpb25FeHRyYXMjcXVlcnlQYXJhbXNIYW5kbGluZ31cbiAgICogQHNlZSB7QGxpbmsgUm91dGVyI2NyZWF0ZVVybFRyZWUgUm91dGVyI2NyZWF0ZVVybFRyZWV9XG4gICAqL1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgQElucHV0KCkgcXVlcnlQYXJhbXNIYW5kbGluZyE6IFF1ZXJ5UGFyYW1zSGFuZGxpbmc7XG4gIC8qKlxuICAgKiBQYXNzZWQgdG8ge0BsaW5rIFJvdXRlciNjcmVhdGVVcmxUcmVlIFJvdXRlciNjcmVhdGVVcmxUcmVlfSBhcyBwYXJ0IG9mIHRoZSBgTmF2aWdhdGlvbkV4dHJhc2AuXG4gICAqIEBzZWUge0BsaW5rIE5hdmlnYXRpb25FeHRyYXMjcHJlc2VydmVGcmFnbWVudCBOYXZpZ2F0aW9uRXh0cmFzI3ByZXNlcnZlRnJhZ21lbnR9XG4gICAqIEBzZWUge0BsaW5rIFJvdXRlciNjcmVhdGVVcmxUcmVlIFJvdXRlciNjcmVhdGVVcmxUcmVlfVxuICAgKi9cbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIEBJbnB1dCgpIHByZXNlcnZlRnJhZ21lbnQhOiBib29sZWFuO1xuICAvKipcbiAgICogUGFzc2VkIHRvIHtAbGluayBSb3V0ZXIjY3JlYXRlVXJsVHJlZSBSb3V0ZXIjY3JlYXRlVXJsVHJlZX0gYXMgcGFydCBvZiB0aGUgYE5hdmlnYXRpb25FeHRyYXNgLlxuICAgKiBAc2VlIHtAbGluayBOYXZpZ2F0aW9uRXh0cmFzI3NraXBMb2NhdGlvbkNoYW5nZSBOYXZpZ2F0aW9uRXh0cmFzI3NraXBMb2NhdGlvbkNoYW5nZX1cbiAgICogQHNlZSB7QGxpbmsgUm91dGVyI2NyZWF0ZVVybFRyZWUgUm91dGVyI2NyZWF0ZVVybFRyZWV9XG4gICAqL1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgQElucHV0KCkgc2tpcExvY2F0aW9uQ2hhbmdlITogYm9vbGVhbjtcbiAgLyoqXG4gICAqIFBhc3NlZCB0byB7QGxpbmsgUm91dGVyI2NyZWF0ZVVybFRyZWUgUm91dGVyI2NyZWF0ZVVybFRyZWV9IGFzIHBhcnQgb2YgdGhlIGBOYXZpZ2F0aW9uRXh0cmFzYC5cbiAgICogQHNlZSB7QGxpbmsgTmF2aWdhdGlvbkV4dHJhcyNyZXBsYWNlVXJsIE5hdmlnYXRpb25FeHRyYXMjcmVwbGFjZVVybH1cbiAgICogQHNlZSB7QGxpbmsgUm91dGVyI2NyZWF0ZVVybFRyZWUgUm91dGVyI2NyZWF0ZVVybFRyZWV9XG4gICAqL1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgQElucHV0KCkgcmVwbGFjZVVybCE6IGJvb2xlYW47XG4gIC8qKlxuICAgKiBQYXNzZWQgdG8ge0BsaW5rIFJvdXRlciNjcmVhdGVVcmxUcmVlIFJvdXRlciNjcmVhdGVVcmxUcmVlfSBhcyBwYXJ0IG9mIHRoZSBgTmF2aWdhdGlvbkV4dHJhc2AuXG4gICAqIEBzZWUge0BsaW5rIE5hdmlnYXRpb25FeHRyYXMjc3RhdGUgTmF2aWdhdGlvbkV4dHJhcyNzdGF0ZX1cbiAgICogQHNlZSB7QGxpbmsgUm91dGVyI2NyZWF0ZVVybFRyZWUgUm91dGVyI2NyZWF0ZVVybFRyZWV9XG4gICAqL1xuICBASW5wdXQoKSBzdGF0ZT86IHtbazogc3RyaW5nXTogYW55fTtcbiAgcHJpdmF0ZSBjb21tYW5kczogYW55W10gPSBbXTtcbiAgcHJpdmF0ZSBwcmVzZXJ2ZSE6IGJvb2xlYW47XG5cbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBvbkNoYW5nZXMgPSBuZXcgU3ViamVjdDxSb3V0ZXJMaW5rPigpO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSByb3V0ZXI6IFJvdXRlciwgcHJpdmF0ZSByb3V0ZTogQWN0aXZhdGVkUm91dGUsXG4gICAgICBAQXR0cmlidXRlKCd0YWJpbmRleCcpIHRhYkluZGV4OiBzdHJpbmcsIHJlbmRlcmVyOiBSZW5kZXJlcjIsIGVsOiBFbGVtZW50UmVmKSB7XG4gICAgaWYgKHRhYkluZGV4ID09IG51bGwpIHtcbiAgICAgIHJlbmRlcmVyLnNldEF0dHJpYnV0ZShlbC5uYXRpdmVFbGVtZW50LCAndGFiaW5kZXgnLCAnMCcpO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBAbm9kb2MgKi9cbiAgbmdPbkNoYW5nZXMoY2hhbmdlczogU2ltcGxlQ2hhbmdlcykge1xuICAgIC8vIFRoaXMgaXMgc3Vic2NyaWJlZCB0byBieSBgUm91dGVyTGlua0FjdGl2ZWAgc28gdGhhdCBpdCBrbm93cyB0byB1cGRhdGUgd2hlbiB0aGVyZSBhcmUgY2hhbmdlc1xuICAgIC8vIHRvIHRoZSBSb3V0ZXJMaW5rcyBpdCdzIHRyYWNraW5nLlxuICAgIHRoaXMub25DaGFuZ2VzLm5leHQodGhpcyk7XG4gIH1cblxuICAvKipcbiAgICogQ29tbWFuZHMgdG8gcGFzcyB0byB7QGxpbmsgUm91dGVyI2NyZWF0ZVVybFRyZWUgUm91dGVyI2NyZWF0ZVVybFRyZWV9LlxuICAgKiAgIC0gKiphcnJheSoqOiBjb21tYW5kcyB0byBwYXNzIHRvIHtAbGluayBSb3V0ZXIjY3JlYXRlVXJsVHJlZSBSb3V0ZXIjY3JlYXRlVXJsVHJlZX0uXG4gICAqICAgLSAqKnN0cmluZyoqOiBzaG9ydGhhbmQgZm9yIGFycmF5IG9mIGNvbW1hbmRzIHdpdGgganVzdCB0aGUgc3RyaW5nLCBpLmUuIGBbJy9yb3V0ZSddYFxuICAgKiAgIC0gKipudWxsfHVuZGVmaW5lZCoqOiBzaG9ydGhhbmQgZm9yIGFuIGVtcHR5IGFycmF5IG9mIGNvbW1hbmRzLCBpLmUuIGBbXWBcbiAgICogQHNlZSB7QGxpbmsgUm91dGVyI2NyZWF0ZVVybFRyZWUgUm91dGVyI2NyZWF0ZVVybFRyZWV9XG4gICAqL1xuICBASW5wdXQoKVxuICBzZXQgcm91dGVyTGluayhjb21tYW5kczogYW55W118c3RyaW5nfG51bGx8dW5kZWZpbmVkKSB7XG4gICAgaWYgKGNvbW1hbmRzICE9IG51bGwpIHtcbiAgICAgIHRoaXMuY29tbWFuZHMgPSBBcnJheS5pc0FycmF5KGNvbW1hbmRzKSA/IGNvbW1hbmRzIDogW2NvbW1hbmRzXTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5jb21tYW5kcyA9IFtdO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBAZGVwcmVjYXRlZCBBcyBvZiBBbmd1bGFyIHY0LjAgdXNlIGBxdWVyeVBhcmFtc0hhbmRsaW5nYCBpbnN0ZWFkLlxuICAgKi9cbiAgQElucHV0KClcbiAgc2V0IHByZXNlcnZlUXVlcnlQYXJhbXModmFsdWU6IGJvb2xlYW4pIHtcbiAgICBpZiAoaXNEZXZNb2RlKCkgJiYgPGFueT5jb25zb2xlICYmIDxhbnk+Y29uc29sZS53YXJuKSB7XG4gICAgICBjb25zb2xlLndhcm4oJ3ByZXNlcnZlUXVlcnlQYXJhbXMgaXMgZGVwcmVjYXRlZCEsIHVzZSBxdWVyeVBhcmFtc0hhbmRsaW5nIGluc3RlYWQuJyk7XG4gICAgfVxuICAgIHRoaXMucHJlc2VydmUgPSB2YWx1ZTtcbiAgfVxuXG4gIC8qKiBAbm9kb2MgKi9cbiAgQEhvc3RMaXN0ZW5lcignY2xpY2snKVxuICBvbkNsaWNrKCk6IGJvb2xlYW4ge1xuICAgIGNvbnN0IGV4dHJhcyA9IHtcbiAgICAgIHNraXBMb2NhdGlvbkNoYW5nZTogYXR0ckJvb2xWYWx1ZSh0aGlzLnNraXBMb2NhdGlvbkNoYW5nZSksXG4gICAgICByZXBsYWNlVXJsOiBhdHRyQm9vbFZhbHVlKHRoaXMucmVwbGFjZVVybCksXG4gICAgICBzdGF0ZTogdGhpcy5zdGF0ZSxcbiAgICB9O1xuICAgIHRoaXMucm91dGVyLm5hdmlnYXRlQnlVcmwodGhpcy51cmxUcmVlLCBleHRyYXMpO1xuICAgIHJldHVybiB0cnVlO1xuICB9XG5cbiAgZ2V0IHVybFRyZWUoKTogVXJsVHJlZSB7XG4gICAgcmV0dXJuIHRoaXMucm91dGVyLmNyZWF0ZVVybFRyZWUodGhpcy5jb21tYW5kcywge1xuICAgICAgcmVsYXRpdmVUbzogdGhpcy5yb3V0ZSxcbiAgICAgIHF1ZXJ5UGFyYW1zOiB0aGlzLnF1ZXJ5UGFyYW1zLFxuICAgICAgZnJhZ21lbnQ6IHRoaXMuZnJhZ21lbnQsXG4gICAgICBwcmVzZXJ2ZVF1ZXJ5UGFyYW1zOiBhdHRyQm9vbFZhbHVlKHRoaXMucHJlc2VydmUpLFxuICAgICAgcXVlcnlQYXJhbXNIYW5kbGluZzogdGhpcy5xdWVyeVBhcmFtc0hhbmRsaW5nLFxuICAgICAgcHJlc2VydmVGcmFnbWVudDogYXR0ckJvb2xWYWx1ZSh0aGlzLnByZXNlcnZlRnJhZ21lbnQpLFxuICAgIH0pO1xuICB9XG59XG5cbi8qKlxuICogQGRlc2NyaXB0aW9uXG4gKlxuICogTGV0cyB5b3UgbGluayB0byBzcGVjaWZpYyByb3V0ZXMgaW4geW91ciBhcHAuXG4gKlxuICogU2VlIGBSb3V0ZXJMaW5rYCBmb3IgbW9yZSBpbmZvcm1hdGlvbi5cbiAqXG4gKiBAbmdNb2R1bGUgUm91dGVyTW9kdWxlXG4gKlxuICogQHB1YmxpY0FwaVxuICovXG5ARGlyZWN0aXZlKHtzZWxlY3RvcjogJ2Fbcm91dGVyTGlua10sYXJlYVtyb3V0ZXJMaW5rXSd9KVxuZXhwb3J0IGNsYXNzIFJvdXRlckxpbmtXaXRoSHJlZiBpbXBsZW1lbnRzIE9uQ2hhbmdlcywgT25EZXN0cm95IHtcbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIEBIb3N0QmluZGluZygnYXR0ci50YXJnZXQnKSBASW5wdXQoKSB0YXJnZXQhOiBzdHJpbmc7XG4gIC8qKlxuICAgKiBQYXNzZWQgdG8ge0BsaW5rIFJvdXRlciNjcmVhdGVVcmxUcmVlIFJvdXRlciNjcmVhdGVVcmxUcmVlfSBhcyBwYXJ0IG9mIHRoZSBgTmF2aWdhdGlvbkV4dHJhc2AuXG4gICAqIEBzZWUge0BsaW5rIE5hdmlnYXRpb25FeHRyYXMjcXVlcnlQYXJhbXMgTmF2aWdhdGlvbkV4dHJhcyNxdWVyeVBhcmFtc31cbiAgICogQHNlZSB7QGxpbmsgUm91dGVyI2NyZWF0ZVVybFRyZWUgUm91dGVyI2NyZWF0ZVVybFRyZWV9XG4gICAqL1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgQElucHV0KCkgcXVlcnlQYXJhbXMhOiB7W2s6IHN0cmluZ106IGFueX07XG4gIC8qKlxuICAgKiBQYXNzZWQgdG8ge0BsaW5rIFJvdXRlciNjcmVhdGVVcmxUcmVlIFJvdXRlciNjcmVhdGVVcmxUcmVlfSBhcyBwYXJ0IG9mIHRoZSBgTmF2aWdhdGlvbkV4dHJhc2AuXG4gICAqIEBzZWUge0BsaW5rIE5hdmlnYXRpb25FeHRyYXMjZnJhZ21lbnQgTmF2aWdhdGlvbkV4dHJhcyNmcmFnbWVudH1cbiAgICogQHNlZSB7QGxpbmsgUm91dGVyI2NyZWF0ZVVybFRyZWUgUm91dGVyI2NyZWF0ZVVybFRyZWV9XG4gICAqL1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgQElucHV0KCkgZnJhZ21lbnQhOiBzdHJpbmc7XG4gIC8qKlxuICAgKiBQYXNzZWQgdG8ge0BsaW5rIFJvdXRlciNjcmVhdGVVcmxUcmVlIFJvdXRlciNjcmVhdGVVcmxUcmVlfSBhcyBwYXJ0IG9mIHRoZSBgTmF2aWdhdGlvbkV4dHJhc2AuXG4gICAqIEBzZWUge0BsaW5rIE5hdmlnYXRpb25FeHRyYXMjcXVlcnlQYXJhbXNIYW5kbGluZyBOYXZpZ2F0aW9uRXh0cmFzI3F1ZXJ5UGFyYW1zSGFuZGxpbmd9XG4gICAqIEBzZWUge0BsaW5rIFJvdXRlciNjcmVhdGVVcmxUcmVlIFJvdXRlciNjcmVhdGVVcmxUcmVlfVxuICAgKi9cbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIEBJbnB1dCgpIHF1ZXJ5UGFyYW1zSGFuZGxpbmchOiBRdWVyeVBhcmFtc0hhbmRsaW5nO1xuICAvKipcbiAgICogUGFzc2VkIHRvIHtAbGluayBSb3V0ZXIjY3JlYXRlVXJsVHJlZSBSb3V0ZXIjY3JlYXRlVXJsVHJlZX0gYXMgcGFydCBvZiB0aGUgYE5hdmlnYXRpb25FeHRyYXNgLlxuICAgKiBAc2VlIHtAbGluayBOYXZpZ2F0aW9uRXh0cmFzI3ByZXNlcnZlRnJhZ21lbnQgTmF2aWdhdGlvbkV4dHJhcyNwcmVzZXJ2ZUZyYWdtZW50fVxuICAgKiBAc2VlIHtAbGluayBSb3V0ZXIjY3JlYXRlVXJsVHJlZSBSb3V0ZXIjY3JlYXRlVXJsVHJlZX1cbiAgICovXG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBASW5wdXQoKSBwcmVzZXJ2ZUZyYWdtZW50ITogYm9vbGVhbjtcbiAgLyoqXG4gICAqIFBhc3NlZCB0byB7QGxpbmsgUm91dGVyI2NyZWF0ZVVybFRyZWUgUm91dGVyI2NyZWF0ZVVybFRyZWV9IGFzIHBhcnQgb2YgdGhlIGBOYXZpZ2F0aW9uRXh0cmFzYC5cbiAgICogQHNlZSB7QGxpbmsgTmF2aWdhdGlvbkV4dHJhcyNza2lwTG9jYXRpb25DaGFuZ2UgTmF2aWdhdGlvbkV4dHJhcyNza2lwTG9jYXRpb25DaGFuZ2V9XG4gICAqIEBzZWUge0BsaW5rIFJvdXRlciNjcmVhdGVVcmxUcmVlIFJvdXRlciNjcmVhdGVVcmxUcmVlfVxuICAgKi9cbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIEBJbnB1dCgpIHNraXBMb2NhdGlvbkNoYW5nZSE6IGJvb2xlYW47XG4gIC8qKlxuICAgKiBQYXNzZWQgdG8ge0BsaW5rIFJvdXRlciNjcmVhdGVVcmxUcmVlIFJvdXRlciNjcmVhdGVVcmxUcmVlfSBhcyBwYXJ0IG9mIHRoZSBgTmF2aWdhdGlvbkV4dHJhc2AuXG4gICAqIEBzZWUge0BsaW5rIE5hdmlnYXRpb25FeHRyYXMjcmVwbGFjZVVybCBOYXZpZ2F0aW9uRXh0cmFzI3JlcGxhY2VVcmx9XG4gICAqIEBzZWUge0BsaW5rIFJvdXRlciNjcmVhdGVVcmxUcmVlIFJvdXRlciNjcmVhdGVVcmxUcmVlfVxuICAgKi9cbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIEBJbnB1dCgpIHJlcGxhY2VVcmwhOiBib29sZWFuO1xuICAvKipcbiAgICogUGFzc2VkIHRvIHtAbGluayBSb3V0ZXIjY3JlYXRlVXJsVHJlZSBSb3V0ZXIjY3JlYXRlVXJsVHJlZX0gYXMgcGFydCBvZiB0aGUgYE5hdmlnYXRpb25FeHRyYXNgLlxuICAgKiBAc2VlIHtAbGluayBOYXZpZ2F0aW9uRXh0cmFzI3N0YXRlIE5hdmlnYXRpb25FeHRyYXMjc3RhdGV9XG4gICAqIEBzZWUge0BsaW5rIFJvdXRlciNjcmVhdGVVcmxUcmVlIFJvdXRlciNjcmVhdGVVcmxUcmVlfVxuICAgKi9cbiAgQElucHV0KCkgc3RhdGU/OiB7W2s6IHN0cmluZ106IGFueX07XG4gIHByaXZhdGUgY29tbWFuZHM6IGFueVtdID0gW107XG4gIHByaXZhdGUgc3Vic2NyaXB0aW9uOiBTdWJzY3JpcHRpb247XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIHByZXNlcnZlITogYm9vbGVhbjtcblxuICAvLyB0aGUgdXJsIGRpc3BsYXllZCBvbiB0aGUgYW5jaG9yIGVsZW1lbnQuXG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBASG9zdEJpbmRpbmcoKSBocmVmITogc3RyaW5nO1xuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgb25DaGFuZ2VzID0gbmV3IFN1YmplY3Q8Um91dGVyTGlua1dpdGhIcmVmPigpO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSByb3V0ZXI6IFJvdXRlciwgcHJpdmF0ZSByb3V0ZTogQWN0aXZhdGVkUm91dGUsXG4gICAgICBwcml2YXRlIGxvY2F0aW9uU3RyYXRlZ3k6IExvY2F0aW9uU3RyYXRlZ3kpIHtcbiAgICB0aGlzLnN1YnNjcmlwdGlvbiA9IHJvdXRlci5ldmVudHMuc3Vic2NyaWJlKChzOiBFdmVudCkgPT4ge1xuICAgICAgaWYgKHMgaW5zdGFuY2VvZiBOYXZpZ2F0aW9uRW5kKSB7XG4gICAgICAgIHRoaXMudXBkYXRlVGFyZ2V0VXJsQW5kSHJlZigpO1xuICAgICAgfVxuICAgIH0pO1xuICB9XG5cbiAgLyoqXG4gICAqIENvbW1hbmRzIHRvIHBhc3MgdG8ge0BsaW5rIFJvdXRlciNjcmVhdGVVcmxUcmVlIFJvdXRlciNjcmVhdGVVcmxUcmVlfS5cbiAgICogICAtICoqYXJyYXkqKjogY29tbWFuZHMgdG8gcGFzcyB0byB7QGxpbmsgUm91dGVyI2NyZWF0ZVVybFRyZWUgUm91dGVyI2NyZWF0ZVVybFRyZWV9LlxuICAgKiAgIC0gKipzdHJpbmcqKjogc2hvcnRoYW5kIGZvciBhcnJheSBvZiBjb21tYW5kcyB3aXRoIGp1c3QgdGhlIHN0cmluZywgaS5lLiBgWycvcm91dGUnXWBcbiAgICogICAtICoqbnVsbHx1bmRlZmluZWQqKjogc2hvcnRoYW5kIGZvciBhbiBlbXB0eSBhcnJheSBvZiBjb21tYW5kcywgaS5lLiBgW11gXG4gICAqIEBzZWUge0BsaW5rIFJvdXRlciNjcmVhdGVVcmxUcmVlIFJvdXRlciNjcmVhdGVVcmxUcmVlfVxuICAgKi9cbiAgQElucHV0KClcbiAgc2V0IHJvdXRlckxpbmsoY29tbWFuZHM6IGFueVtdfHN0cmluZ3xudWxsfHVuZGVmaW5lZCkge1xuICAgIGlmIChjb21tYW5kcyAhPSBudWxsKSB7XG4gICAgICB0aGlzLmNvbW1hbmRzID0gQXJyYXkuaXNBcnJheShjb21tYW5kcykgPyBjb21tYW5kcyA6IFtjb21tYW5kc107XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMuY29tbWFuZHMgPSBbXTtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogQGRlcHJlY2F0ZWQgQXMgb2YgQW5ndWxhciB2NC4wIHVzZSBgcXVlcnlQYXJhbXNIYW5kbGluZ2AgaW5zdGVhZC5cbiAgICovXG4gIEBJbnB1dCgpXG4gIHNldCBwcmVzZXJ2ZVF1ZXJ5UGFyYW1zKHZhbHVlOiBib29sZWFuKSB7XG4gICAgaWYgKGlzRGV2TW9kZSgpICYmIDxhbnk+Y29uc29sZSAmJiA8YW55PmNvbnNvbGUud2Fybikge1xuICAgICAgY29uc29sZS53YXJuKCdwcmVzZXJ2ZVF1ZXJ5UGFyYW1zIGlzIGRlcHJlY2F0ZWQsIHVzZSBxdWVyeVBhcmFtc0hhbmRsaW5nIGluc3RlYWQuJyk7XG4gICAgfVxuICAgIHRoaXMucHJlc2VydmUgPSB2YWx1ZTtcbiAgfVxuXG4gIC8qKiBAbm9kb2MgKi9cbiAgbmdPbkNoYW5nZXMoY2hhbmdlczogU2ltcGxlQ2hhbmdlcyk6IGFueSB7XG4gICAgdGhpcy51cGRhdGVUYXJnZXRVcmxBbmRIcmVmKCk7XG4gICAgdGhpcy5vbkNoYW5nZXMubmV4dCh0aGlzKTtcbiAgfVxuICAvKiogQG5vZG9jICovXG4gIG5nT25EZXN0cm95KCk6IGFueSB7XG4gICAgdGhpcy5zdWJzY3JpcHRpb24udW5zdWJzY3JpYmUoKTtcbiAgfVxuXG4gIC8qKiBAbm9kb2MgKi9cbiAgQEhvc3RMaXN0ZW5lcignY2xpY2snLCBbJyRldmVudC5idXR0b24nLCAnJGV2ZW50LmN0cmxLZXknLCAnJGV2ZW50Lm1ldGFLZXknLCAnJGV2ZW50LnNoaWZ0S2V5J10pXG4gIG9uQ2xpY2soYnV0dG9uOiBudW1iZXIsIGN0cmxLZXk6IGJvb2xlYW4sIG1ldGFLZXk6IGJvb2xlYW4sIHNoaWZ0S2V5OiBib29sZWFuKTogYm9vbGVhbiB7XG4gICAgaWYgKGJ1dHRvbiAhPT0gMCB8fCBjdHJsS2V5IHx8IG1ldGFLZXkgfHwgc2hpZnRLZXkpIHtcbiAgICAgIHJldHVybiB0cnVlO1xuICAgIH1cblxuICAgIGlmICh0eXBlb2YgdGhpcy50YXJnZXQgPT09ICdzdHJpbmcnICYmIHRoaXMudGFyZ2V0ICE9ICdfc2VsZicpIHtcbiAgICAgIHJldHVybiB0cnVlO1xuICAgIH1cblxuICAgIGNvbnN0IGV4dHJhcyA9IHtcbiAgICAgIHNraXBMb2NhdGlvbkNoYW5nZTogYXR0ckJvb2xWYWx1ZSh0aGlzLnNraXBMb2NhdGlvbkNoYW5nZSksXG4gICAgICByZXBsYWNlVXJsOiBhdHRyQm9vbFZhbHVlKHRoaXMucmVwbGFjZVVybCksXG4gICAgICBzdGF0ZTogdGhpcy5zdGF0ZVxuICAgIH07XG4gICAgdGhpcy5yb3V0ZXIubmF2aWdhdGVCeVVybCh0aGlzLnVybFRyZWUsIGV4dHJhcyk7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgcHJpdmF0ZSB1cGRhdGVUYXJnZXRVcmxBbmRIcmVmKCk6IHZvaWQge1xuICAgIHRoaXMuaHJlZiA9IHRoaXMubG9jYXRpb25TdHJhdGVneS5wcmVwYXJlRXh0ZXJuYWxVcmwodGhpcy5yb3V0ZXIuc2VyaWFsaXplVXJsKHRoaXMudXJsVHJlZSkpO1xuICB9XG5cbiAgZ2V0IHVybFRyZWUoKTogVXJsVHJlZSB7XG4gICAgcmV0dXJuIHRoaXMucm91dGVyLmNyZWF0ZVVybFRyZWUodGhpcy5jb21tYW5kcywge1xuICAgICAgcmVsYXRpdmVUbzogdGhpcy5yb3V0ZSxcbiAgICAgIHF1ZXJ5UGFyYW1zOiB0aGlzLnF1ZXJ5UGFyYW1zLFxuICAgICAgZnJhZ21lbnQ6IHRoaXMuZnJhZ21lbnQsXG4gICAgICBwcmVzZXJ2ZVF1ZXJ5UGFyYW1zOiBhdHRyQm9vbFZhbHVlKHRoaXMucHJlc2VydmUpLFxuICAgICAgcXVlcnlQYXJhbXNIYW5kbGluZzogdGhpcy5xdWVyeVBhcmFtc0hhbmRsaW5nLFxuICAgICAgcHJlc2VydmVGcmFnbWVudDogYXR0ckJvb2xWYWx1ZSh0aGlzLnByZXNlcnZlRnJhZ21lbnQpLFxuICAgIH0pO1xuICB9XG59XG5cbmZ1bmN0aW9uIGF0dHJCb29sVmFsdWUoczogYW55KTogYm9vbGVhbiB7XG4gIHJldHVybiBzID09PSAnJyB8fCAhIXM7XG59XG4iXX0=