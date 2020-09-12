/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Injectable } from '@angular/core';
import { Platform } from '@angular/cdk/platform';
import * as i0 from "@angular/core";
import * as i1 from "@angular/cdk/platform";
/** Global registry for all dynamically-created, injected media queries. */
const mediaQueriesForWebkitCompatibility = new Set();
/** Style tag that holds all of the dynamically-created media queries. */
let mediaQueryStyleNode;
/** A utility for calling matchMedia queries. */
export class MediaMatcher {
    constructor(_platform) {
        this._platform = _platform;
        this._matchMedia = this._platform.isBrowser && window.matchMedia ?
            // matchMedia is bound to the window scope intentionally as it is an illegal invocation to
            // call it from a different scope.
            window.matchMedia.bind(window) :
            noopMatchMedia;
    }
    /**
     * Evaluates the given media query and returns the native MediaQueryList from which results
     * can be retrieved.
     * Confirms the layout engine will trigger for the selector query provided and returns the
     * MediaQueryList for the query provided.
     */
    matchMedia(query) {
        if (this._platform.WEBKIT) {
            createEmptyStyleRule(query);
        }
        return this._matchMedia(query);
    }
}
MediaMatcher.ɵprov = i0.ɵɵdefineInjectable({ factory: function MediaMatcher_Factory() { return new MediaMatcher(i0.ɵɵinject(i1.Platform)); }, token: MediaMatcher, providedIn: "root" });
MediaMatcher.decorators = [
    { type: Injectable, args: [{ providedIn: 'root' },] }
];
MediaMatcher.ctorParameters = () => [
    { type: Platform }
];
/**
 * For Webkit engines that only trigger the MediaQueryListListener when
 * there is at least one CSS selector for the respective media query.
 */
function createEmptyStyleRule(query) {
    if (mediaQueriesForWebkitCompatibility.has(query)) {
        return;
    }
    try {
        if (!mediaQueryStyleNode) {
            mediaQueryStyleNode = document.createElement('style');
            mediaQueryStyleNode.setAttribute('type', 'text/css');
            document.head.appendChild(mediaQueryStyleNode);
        }
        if (mediaQueryStyleNode.sheet) {
            mediaQueryStyleNode.sheet
                .insertRule(`@media ${query} {.fx-query-test{ }}`, 0);
            mediaQueriesForWebkitCompatibility.add(query);
        }
    }
    catch (e) {
        console.error(e);
    }
}
/** No-op matchMedia replacement for non-browser platforms. */
function noopMatchMedia(query) {
    // Use `as any` here to avoid adding additional necessary properties for
    // the noop matcher.
    return {
        matches: query === 'all' || query === '',
        media: query,
        addListener: () => { },
        removeListener: () => { }
    };
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWVkaWEtbWF0Y2hlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvbGF5b3V0L21lZGlhLW1hdGNoZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBQ0gsT0FBTyxFQUFDLFVBQVUsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUN6QyxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0sdUJBQXVCLENBQUM7OztBQUUvQywyRUFBMkU7QUFDM0UsTUFBTSxrQ0FBa0MsR0FBZ0IsSUFBSSxHQUFHLEVBQVUsQ0FBQztBQUUxRSx5RUFBeUU7QUFDekUsSUFBSSxtQkFBaUQsQ0FBQztBQUV0RCxnREFBZ0Q7QUFFaEQsTUFBTSxPQUFPLFlBQVk7SUFJdkIsWUFBb0IsU0FBbUI7UUFBbkIsY0FBUyxHQUFULFNBQVMsQ0FBVTtRQUNyQyxJQUFJLENBQUMsV0FBVyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsU0FBUyxJQUFJLE1BQU0sQ0FBQyxVQUFVLENBQUMsQ0FBQztZQUNoRSwwRkFBMEY7WUFDMUYsa0NBQWtDO1lBQ2xDLE1BQU0sQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUM7WUFDaEMsY0FBYyxDQUFDO0lBQ25CLENBQUM7SUFFRDs7Ozs7T0FLRztJQUNILFVBQVUsQ0FBQyxLQUFhO1FBQ3RCLElBQUksSUFBSSxDQUFDLFNBQVMsQ0FBQyxNQUFNLEVBQUU7WUFDekIsb0JBQW9CLENBQUMsS0FBSyxDQUFDLENBQUM7U0FDN0I7UUFDRCxPQUFPLElBQUksQ0FBQyxXQUFXLENBQUMsS0FBSyxDQUFDLENBQUM7SUFDakMsQ0FBQzs7OztZQXhCRixVQUFVLFNBQUMsRUFBQyxVQUFVLEVBQUUsTUFBTSxFQUFDOzs7WUFUeEIsUUFBUTs7QUFvQ2hCOzs7R0FHRztBQUNILFNBQVMsb0JBQW9CLENBQUMsS0FBYTtJQUN6QyxJQUFJLGtDQUFrQyxDQUFDLEdBQUcsQ0FBQyxLQUFLLENBQUMsRUFBRTtRQUNqRCxPQUFPO0tBQ1I7SUFFRCxJQUFJO1FBQ0YsSUFBSSxDQUFDLG1CQUFtQixFQUFFO1lBQ3hCLG1CQUFtQixHQUFHLFFBQVEsQ0FBQyxhQUFhLENBQUMsT0FBTyxDQUFDLENBQUM7WUFDdEQsbUJBQW1CLENBQUMsWUFBWSxDQUFDLE1BQU0sRUFBRSxVQUFVLENBQUMsQ0FBQztZQUNyRCxRQUFRLENBQUMsSUFBSyxDQUFDLFdBQVcsQ0FBQyxtQkFBbUIsQ0FBQyxDQUFDO1NBQ2pEO1FBRUQsSUFBSSxtQkFBbUIsQ0FBQyxLQUFLLEVBQUU7WUFDNUIsbUJBQW1CLENBQUMsS0FBdUI7aUJBQ3ZDLFVBQVUsQ0FBQyxVQUFVLEtBQUssc0JBQXNCLEVBQUUsQ0FBQyxDQUFDLENBQUM7WUFDMUQsa0NBQWtDLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBQyxDQUFDO1NBQy9DO0tBQ0Y7SUFBQyxPQUFPLENBQUMsRUFBRTtRQUNWLE9BQU8sQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUM7S0FDbEI7QUFDSCxDQUFDO0FBRUQsOERBQThEO0FBQzlELFNBQVMsY0FBYyxDQUFDLEtBQWE7SUFDbkMsd0VBQXdFO0lBQ3hFLG9CQUFvQjtJQUNwQixPQUFPO1FBQ0wsT0FBTyxFQUFFLEtBQUssS0FBSyxLQUFLLElBQUksS0FBSyxLQUFLLEVBQUU7UUFDeEMsS0FBSyxFQUFFLEtBQUs7UUFDWixXQUFXLEVBQUUsR0FBRyxFQUFFLEdBQUUsQ0FBQztRQUNyQixjQUFjLEVBQUUsR0FBRyxFQUFFLEdBQUUsQ0FBQztLQUNsQixDQUFDO0FBQ1gsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IHtJbmplY3RhYmxlfSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7UGxhdGZvcm19IGZyb20gJ0Bhbmd1bGFyL2Nkay9wbGF0Zm9ybSc7XG5cbi8qKiBHbG9iYWwgcmVnaXN0cnkgZm9yIGFsbCBkeW5hbWljYWxseS1jcmVhdGVkLCBpbmplY3RlZCBtZWRpYSBxdWVyaWVzLiAqL1xuY29uc3QgbWVkaWFRdWVyaWVzRm9yV2Via2l0Q29tcGF0aWJpbGl0eTogU2V0PHN0cmluZz4gPSBuZXcgU2V0PHN0cmluZz4oKTtcblxuLyoqIFN0eWxlIHRhZyB0aGF0IGhvbGRzIGFsbCBvZiB0aGUgZHluYW1pY2FsbHktY3JlYXRlZCBtZWRpYSBxdWVyaWVzLiAqL1xubGV0IG1lZGlhUXVlcnlTdHlsZU5vZGU6IEhUTUxTdHlsZUVsZW1lbnQgfCB1bmRlZmluZWQ7XG5cbi8qKiBBIHV0aWxpdHkgZm9yIGNhbGxpbmcgbWF0Y2hNZWRpYSBxdWVyaWVzLiAqL1xuQEluamVjdGFibGUoe3Byb3ZpZGVkSW46ICdyb290J30pXG5leHBvcnQgY2xhc3MgTWVkaWFNYXRjaGVyIHtcbiAgLyoqIFRoZSBpbnRlcm5hbCBtYXRjaE1lZGlhIG1ldGhvZCB0byByZXR1cm4gYmFjayBhIE1lZGlhUXVlcnlMaXN0IGxpa2Ugb2JqZWN0LiAqL1xuICBwcml2YXRlIF9tYXRjaE1lZGlhOiAocXVlcnk6IHN0cmluZykgPT4gTWVkaWFRdWVyeUxpc3Q7XG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSBfcGxhdGZvcm06IFBsYXRmb3JtKSB7XG4gICAgdGhpcy5fbWF0Y2hNZWRpYSA9IHRoaXMuX3BsYXRmb3JtLmlzQnJvd3NlciAmJiB3aW5kb3cubWF0Y2hNZWRpYSA/XG4gICAgICAvLyBtYXRjaE1lZGlhIGlzIGJvdW5kIHRvIHRoZSB3aW5kb3cgc2NvcGUgaW50ZW50aW9uYWxseSBhcyBpdCBpcyBhbiBpbGxlZ2FsIGludm9jYXRpb24gdG9cbiAgICAgIC8vIGNhbGwgaXQgZnJvbSBhIGRpZmZlcmVudCBzY29wZS5cbiAgICAgIHdpbmRvdy5tYXRjaE1lZGlhLmJpbmQod2luZG93KSA6XG4gICAgICBub29wTWF0Y2hNZWRpYTtcbiAgfVxuXG4gIC8qKlxuICAgKiBFdmFsdWF0ZXMgdGhlIGdpdmVuIG1lZGlhIHF1ZXJ5IGFuZCByZXR1cm5zIHRoZSBuYXRpdmUgTWVkaWFRdWVyeUxpc3QgZnJvbSB3aGljaCByZXN1bHRzXG4gICAqIGNhbiBiZSByZXRyaWV2ZWQuXG4gICAqIENvbmZpcm1zIHRoZSBsYXlvdXQgZW5naW5lIHdpbGwgdHJpZ2dlciBmb3IgdGhlIHNlbGVjdG9yIHF1ZXJ5IHByb3ZpZGVkIGFuZCByZXR1cm5zIHRoZVxuICAgKiBNZWRpYVF1ZXJ5TGlzdCBmb3IgdGhlIHF1ZXJ5IHByb3ZpZGVkLlxuICAgKi9cbiAgbWF0Y2hNZWRpYShxdWVyeTogc3RyaW5nKTogTWVkaWFRdWVyeUxpc3Qge1xuICAgIGlmICh0aGlzLl9wbGF0Zm9ybS5XRUJLSVQpIHtcbiAgICAgIGNyZWF0ZUVtcHR5U3R5bGVSdWxlKHF1ZXJ5KTtcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMuX21hdGNoTWVkaWEocXVlcnkpO1xuICB9XG59XG5cbi8qKlxuICogRm9yIFdlYmtpdCBlbmdpbmVzIHRoYXQgb25seSB0cmlnZ2VyIHRoZSBNZWRpYVF1ZXJ5TGlzdExpc3RlbmVyIHdoZW5cbiAqIHRoZXJlIGlzIGF0IGxlYXN0IG9uZSBDU1Mgc2VsZWN0b3IgZm9yIHRoZSByZXNwZWN0aXZlIG1lZGlhIHF1ZXJ5LlxuICovXG5mdW5jdGlvbiBjcmVhdGVFbXB0eVN0eWxlUnVsZShxdWVyeTogc3RyaW5nKSB7XG4gIGlmIChtZWRpYVF1ZXJpZXNGb3JXZWJraXRDb21wYXRpYmlsaXR5LmhhcyhxdWVyeSkpIHtcbiAgICByZXR1cm47XG4gIH1cblxuICB0cnkge1xuICAgIGlmICghbWVkaWFRdWVyeVN0eWxlTm9kZSkge1xuICAgICAgbWVkaWFRdWVyeVN0eWxlTm9kZSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ3N0eWxlJyk7XG4gICAgICBtZWRpYVF1ZXJ5U3R5bGVOb2RlLnNldEF0dHJpYnV0ZSgndHlwZScsICd0ZXh0L2NzcycpO1xuICAgICAgZG9jdW1lbnQuaGVhZCEuYXBwZW5kQ2hpbGQobWVkaWFRdWVyeVN0eWxlTm9kZSk7XG4gICAgfVxuXG4gICAgaWYgKG1lZGlhUXVlcnlTdHlsZU5vZGUuc2hlZXQpIHtcbiAgICAgIChtZWRpYVF1ZXJ5U3R5bGVOb2RlLnNoZWV0IGFzIENTU1N0eWxlU2hlZXQpXG4gICAgICAgICAgLmluc2VydFJ1bGUoYEBtZWRpYSAke3F1ZXJ5fSB7LmZ4LXF1ZXJ5LXRlc3R7IH19YCwgMCk7XG4gICAgICBtZWRpYVF1ZXJpZXNGb3JXZWJraXRDb21wYXRpYmlsaXR5LmFkZChxdWVyeSk7XG4gICAgfVxuICB9IGNhdGNoIChlKSB7XG4gICAgY29uc29sZS5lcnJvcihlKTtcbiAgfVxufVxuXG4vKiogTm8tb3AgbWF0Y2hNZWRpYSByZXBsYWNlbWVudCBmb3Igbm9uLWJyb3dzZXIgcGxhdGZvcm1zLiAqL1xuZnVuY3Rpb24gbm9vcE1hdGNoTWVkaWEocXVlcnk6IHN0cmluZyk6IE1lZGlhUXVlcnlMaXN0IHtcbiAgLy8gVXNlIGBhcyBhbnlgIGhlcmUgdG8gYXZvaWQgYWRkaW5nIGFkZGl0aW9uYWwgbmVjZXNzYXJ5IHByb3BlcnRpZXMgZm9yXG4gIC8vIHRoZSBub29wIG1hdGNoZXIuXG4gIHJldHVybiB7XG4gICAgbWF0Y2hlczogcXVlcnkgPT09ICdhbGwnIHx8IHF1ZXJ5ID09PSAnJyxcbiAgICBtZWRpYTogcXVlcnksXG4gICAgYWRkTGlzdGVuZXI6ICgpID0+IHt9LFxuICAgIHJlbW92ZUxpc3RlbmVyOiAoKSA9PiB7fVxuICB9IGFzIGFueTtcbn1cbiJdfQ==