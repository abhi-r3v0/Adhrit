import { getMatScrollStrategyAlreadyAttachedError } from './scroll-strategy';
/**
 * Strategy that will close the overlay as soon as the user starts scrolling.
 */
export class CloseScrollStrategy {
    constructor(_scrollDispatcher, _ngZone, _viewportRuler, _config) {
        this._scrollDispatcher = _scrollDispatcher;
        this._ngZone = _ngZone;
        this._viewportRuler = _viewportRuler;
        this._config = _config;
        this._scrollSubscription = null;
        /** Detaches the overlay ref and disables the scroll strategy. */
        this._detach = () => {
            this.disable();
            if (this._overlayRef.hasAttached()) {
                this._ngZone.run(() => this._overlayRef.detach());
            }
        };
    }
    /** Attaches this scroll strategy to an overlay. */
    attach(overlayRef) {
        if (this._overlayRef && (typeof ngDevMode === 'undefined' || ngDevMode)) {
            throw getMatScrollStrategyAlreadyAttachedError();
        }
        this._overlayRef = overlayRef;
    }
    /** Enables the closing of the attached overlay on scroll. */
    enable() {
        if (this._scrollSubscription) {
            return;
        }
        const stream = this._scrollDispatcher.scrolled(0);
        if (this._config && this._config.threshold && this._config.threshold > 1) {
            this._initialScrollPosition = this._viewportRuler.getViewportScrollPosition().top;
            this._scrollSubscription = stream.subscribe(() => {
                const scrollPosition = this._viewportRuler.getViewportScrollPosition().top;
                if (Math.abs(scrollPosition - this._initialScrollPosition) > this._config.threshold) {
                    this._detach();
                }
                else {
                    this._overlayRef.updatePosition();
                }
            });
        }
        else {
            this._scrollSubscription = stream.subscribe(this._detach);
        }
    }
    /** Disables the closing the attached overlay on scroll. */
    disable() {
        if (this._scrollSubscription) {
            this._scrollSubscription.unsubscribe();
            this._scrollSubscription = null;
        }
    }
    detach() {
        this.disable();
        this._overlayRef = null;
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY2xvc2Utc2Nyb2xsLXN0cmF0ZWd5LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9vdmVybGF5L3Njcm9sbC9jbG9zZS1zY3JvbGwtc3RyYXRlZ3kudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBUUEsT0FBTyxFQUFpQix3Q0FBd0MsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBYTNGOztHQUVHO0FBQ0gsTUFBTSxPQUFPLG1CQUFtQjtJQUs5QixZQUNVLGlCQUFtQyxFQUNuQyxPQUFlLEVBQ2YsY0FBNkIsRUFDN0IsT0FBbUM7UUFIbkMsc0JBQWlCLEdBQWpCLGlCQUFpQixDQUFrQjtRQUNuQyxZQUFPLEdBQVAsT0FBTyxDQUFRO1FBQ2YsbUJBQWMsR0FBZCxjQUFjLENBQWU7UUFDN0IsWUFBTyxHQUFQLE9BQU8sQ0FBNEI7UUFSckMsd0JBQW1CLEdBQXNCLElBQUksQ0FBQztRQXlEdEQsaUVBQWlFO1FBQ3pELFlBQU8sR0FBRyxHQUFHLEVBQUU7WUFDckIsSUFBSSxDQUFDLE9BQU8sRUFBRSxDQUFDO1lBRWYsSUFBSSxJQUFJLENBQUMsV0FBVyxDQUFDLFdBQVcsRUFBRSxFQUFFO2dCQUNsQyxJQUFJLENBQUMsT0FBTyxDQUFDLEdBQUcsQ0FBQyxHQUFHLEVBQUUsQ0FBQyxJQUFJLENBQUMsV0FBVyxDQUFDLE1BQU0sRUFBRSxDQUFDLENBQUM7YUFDbkQ7UUFDSCxDQUFDLENBQUE7SUF4RCtDLENBQUM7SUFFakQsbURBQW1EO0lBQ25ELE1BQU0sQ0FBQyxVQUE0QjtRQUNqQyxJQUFJLElBQUksQ0FBQyxXQUFXLElBQUksQ0FBQyxPQUFPLFNBQVMsS0FBSyxXQUFXLElBQUksU0FBUyxDQUFDLEVBQUU7WUFDdkUsTUFBTSx3Q0FBd0MsRUFBRSxDQUFDO1NBQ2xEO1FBRUQsSUFBSSxDQUFDLFdBQVcsR0FBRyxVQUFVLENBQUM7SUFDaEMsQ0FBQztJQUVELDZEQUE2RDtJQUM3RCxNQUFNO1FBQ0osSUFBSSxJQUFJLENBQUMsbUJBQW1CLEVBQUU7WUFDNUIsT0FBTztTQUNSO1FBRUQsTUFBTSxNQUFNLEdBQUcsSUFBSSxDQUFDLGlCQUFpQixDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUVsRCxJQUFJLElBQUksQ0FBQyxPQUFPLElBQUksSUFBSSxDQUFDLE9BQU8sQ0FBQyxTQUFTLElBQUksSUFBSSxDQUFDLE9BQU8sQ0FBQyxTQUFTLEdBQUcsQ0FBQyxFQUFFO1lBQ3hFLElBQUksQ0FBQyxzQkFBc0IsR0FBRyxJQUFJLENBQUMsY0FBYyxDQUFDLHlCQUF5QixFQUFFLENBQUMsR0FBRyxDQUFDO1lBRWxGLElBQUksQ0FBQyxtQkFBbUIsR0FBRyxNQUFNLENBQUMsU0FBUyxDQUFDLEdBQUcsRUFBRTtnQkFDL0MsTUFBTSxjQUFjLEdBQUcsSUFBSSxDQUFDLGNBQWMsQ0FBQyx5QkFBeUIsRUFBRSxDQUFDLEdBQUcsQ0FBQztnQkFFM0UsSUFBSSxJQUFJLENBQUMsR0FBRyxDQUFDLGNBQWMsR0FBRyxJQUFJLENBQUMsc0JBQXNCLENBQUMsR0FBRyxJQUFJLENBQUMsT0FBUSxDQUFDLFNBQVUsRUFBRTtvQkFDckYsSUFBSSxDQUFDLE9BQU8sRUFBRSxDQUFDO2lCQUNoQjtxQkFBTTtvQkFDTCxJQUFJLENBQUMsV0FBVyxDQUFDLGNBQWMsRUFBRSxDQUFDO2lCQUNuQztZQUNILENBQUMsQ0FBQyxDQUFDO1NBQ0o7YUFBTTtZQUNMLElBQUksQ0FBQyxtQkFBbUIsR0FBRyxNQUFNLENBQUMsU0FBUyxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsQ0FBQztTQUMzRDtJQUNILENBQUM7SUFFRCwyREFBMkQ7SUFDM0QsT0FBTztRQUNMLElBQUksSUFBSSxDQUFDLG1CQUFtQixFQUFFO1lBQzVCLElBQUksQ0FBQyxtQkFBbUIsQ0FBQyxXQUFXLEVBQUUsQ0FBQztZQUN2QyxJQUFJLENBQUMsbUJBQW1CLEdBQUcsSUFBSSxDQUFDO1NBQ2pDO0lBQ0gsQ0FBQztJQUVELE1BQU07UUFDSixJQUFJLENBQUMsT0FBTyxFQUFFLENBQUM7UUFDZixJQUFJLENBQUMsV0FBVyxHQUFHLElBQUssQ0FBQztJQUMzQixDQUFDO0NBVUYiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCB7Tmdab25lfSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7U2Nyb2xsU3RyYXRlZ3ksIGdldE1hdFNjcm9sbFN0cmF0ZWd5QWxyZWFkeUF0dGFjaGVkRXJyb3J9IGZyb20gJy4vc2Nyb2xsLXN0cmF0ZWd5JztcbmltcG9ydCB7T3ZlcmxheVJlZmVyZW5jZX0gZnJvbSAnLi4vb3ZlcmxheS1yZWZlcmVuY2UnO1xuaW1wb3J0IHtTdWJzY3JpcHRpb259IGZyb20gJ3J4anMnO1xuaW1wb3J0IHtTY3JvbGxEaXNwYXRjaGVyLCBWaWV3cG9ydFJ1bGVyfSBmcm9tICdAYW5ndWxhci9jZGsvc2Nyb2xsaW5nJztcblxuLyoqXG4gKiBDb25maWcgb3B0aW9ucyBmb3IgdGhlIENsb3NlU2Nyb2xsU3RyYXRlZ3kuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgQ2xvc2VTY3JvbGxTdHJhdGVneUNvbmZpZyB7XG4gIC8qKiBBbW91bnQgb2YgcGl4ZWxzIHRoZSB1c2VyIGhhcyB0byBzY3JvbGwgYmVmb3JlIHRoZSBvdmVybGF5IGlzIGNsb3NlZC4gKi9cbiAgdGhyZXNob2xkPzogbnVtYmVyO1xufVxuXG4vKipcbiAqIFN0cmF0ZWd5IHRoYXQgd2lsbCBjbG9zZSB0aGUgb3ZlcmxheSBhcyBzb29uIGFzIHRoZSB1c2VyIHN0YXJ0cyBzY3JvbGxpbmcuXG4gKi9cbmV4cG9ydCBjbGFzcyBDbG9zZVNjcm9sbFN0cmF0ZWd5IGltcGxlbWVudHMgU2Nyb2xsU3RyYXRlZ3kge1xuICBwcml2YXRlIF9zY3JvbGxTdWJzY3JpcHRpb246IFN1YnNjcmlwdGlvbnxudWxsID0gbnVsbDtcbiAgcHJpdmF0ZSBfb3ZlcmxheVJlZjogT3ZlcmxheVJlZmVyZW5jZTtcbiAgcHJpdmF0ZSBfaW5pdGlhbFNjcm9sbFBvc2l0aW9uOiBudW1iZXI7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgcHJpdmF0ZSBfc2Nyb2xsRGlzcGF0Y2hlcjogU2Nyb2xsRGlzcGF0Y2hlcixcbiAgICBwcml2YXRlIF9uZ1pvbmU6IE5nWm9uZSxcbiAgICBwcml2YXRlIF92aWV3cG9ydFJ1bGVyOiBWaWV3cG9ydFJ1bGVyLFxuICAgIHByaXZhdGUgX2NvbmZpZz86IENsb3NlU2Nyb2xsU3RyYXRlZ3lDb25maWcpIHt9XG5cbiAgLyoqIEF0dGFjaGVzIHRoaXMgc2Nyb2xsIHN0cmF0ZWd5IHRvIGFuIG92ZXJsYXkuICovXG4gIGF0dGFjaChvdmVybGF5UmVmOiBPdmVybGF5UmVmZXJlbmNlKSB7XG4gICAgaWYgKHRoaXMuX292ZXJsYXlSZWYgJiYgKHR5cGVvZiBuZ0Rldk1vZGUgPT09ICd1bmRlZmluZWQnIHx8IG5nRGV2TW9kZSkpIHtcbiAgICAgIHRocm93IGdldE1hdFNjcm9sbFN0cmF0ZWd5QWxyZWFkeUF0dGFjaGVkRXJyb3IoKTtcbiAgICB9XG5cbiAgICB0aGlzLl9vdmVybGF5UmVmID0gb3ZlcmxheVJlZjtcbiAgfVxuXG4gIC8qKiBFbmFibGVzIHRoZSBjbG9zaW5nIG9mIHRoZSBhdHRhY2hlZCBvdmVybGF5IG9uIHNjcm9sbC4gKi9cbiAgZW5hYmxlKCkge1xuICAgIGlmICh0aGlzLl9zY3JvbGxTdWJzY3JpcHRpb24pIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG5cbiAgICBjb25zdCBzdHJlYW0gPSB0aGlzLl9zY3JvbGxEaXNwYXRjaGVyLnNjcm9sbGVkKDApO1xuXG4gICAgaWYgKHRoaXMuX2NvbmZpZyAmJiB0aGlzLl9jb25maWcudGhyZXNob2xkICYmIHRoaXMuX2NvbmZpZy50aHJlc2hvbGQgPiAxKSB7XG4gICAgICB0aGlzLl9pbml0aWFsU2Nyb2xsUG9zaXRpb24gPSB0aGlzLl92aWV3cG9ydFJ1bGVyLmdldFZpZXdwb3J0U2Nyb2xsUG9zaXRpb24oKS50b3A7XG5cbiAgICAgIHRoaXMuX3Njcm9sbFN1YnNjcmlwdGlvbiA9IHN0cmVhbS5zdWJzY3JpYmUoKCkgPT4ge1xuICAgICAgICBjb25zdCBzY3JvbGxQb3NpdGlvbiA9IHRoaXMuX3ZpZXdwb3J0UnVsZXIuZ2V0Vmlld3BvcnRTY3JvbGxQb3NpdGlvbigpLnRvcDtcblxuICAgICAgICBpZiAoTWF0aC5hYnMoc2Nyb2xsUG9zaXRpb24gLSB0aGlzLl9pbml0aWFsU2Nyb2xsUG9zaXRpb24pID4gdGhpcy5fY29uZmlnIS50aHJlc2hvbGQhKSB7XG4gICAgICAgICAgdGhpcy5fZGV0YWNoKCk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgdGhpcy5fb3ZlcmxheVJlZi51cGRhdGVQb3NpdGlvbigpO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5fc2Nyb2xsU3Vic2NyaXB0aW9uID0gc3RyZWFtLnN1YnNjcmliZSh0aGlzLl9kZXRhY2gpO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBEaXNhYmxlcyB0aGUgY2xvc2luZyB0aGUgYXR0YWNoZWQgb3ZlcmxheSBvbiBzY3JvbGwuICovXG4gIGRpc2FibGUoKSB7XG4gICAgaWYgKHRoaXMuX3Njcm9sbFN1YnNjcmlwdGlvbikge1xuICAgICAgdGhpcy5fc2Nyb2xsU3Vic2NyaXB0aW9uLnVuc3Vic2NyaWJlKCk7XG4gICAgICB0aGlzLl9zY3JvbGxTdWJzY3JpcHRpb24gPSBudWxsO1xuICAgIH1cbiAgfVxuXG4gIGRldGFjaCgpIHtcbiAgICB0aGlzLmRpc2FibGUoKTtcbiAgICB0aGlzLl9vdmVybGF5UmVmID0gbnVsbCE7XG4gIH1cblxuICAvKiogRGV0YWNoZXMgdGhlIG92ZXJsYXkgcmVmIGFuZCBkaXNhYmxlcyB0aGUgc2Nyb2xsIHN0cmF0ZWd5LiAqL1xuICBwcml2YXRlIF9kZXRhY2ggPSAoKSA9PiB7XG4gICAgdGhpcy5kaXNhYmxlKCk7XG5cbiAgICBpZiAodGhpcy5fb3ZlcmxheVJlZi5oYXNBdHRhY2hlZCgpKSB7XG4gICAgICB0aGlzLl9uZ1pvbmUucnVuKCgpID0+IHRoaXMuX292ZXJsYXlSZWYuZGV0YWNoKCkpO1xuICAgIH1cbiAgfVxufVxuIl19