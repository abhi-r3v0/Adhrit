/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Subject, merge, Subscription } from 'rxjs';
import { take, takeUntil } from 'rxjs/operators';
import { coerceCssPixelValue, coerceArray } from '@angular/cdk/coercion';
/**
 * Reference to an overlay that has been created with the Overlay service.
 * Used to manipulate or dispose of said overlay.
 */
export class OverlayRef {
    constructor(_portalOutlet, _host, _pane, _config, _ngZone, _keyboardDispatcher, _document, 
    // @breaking-change 8.0.0 `_location` parameter to be made required.
    _location, 
    // @breaking-change 9.0.0 `_mouseClickDispatcher` parameter to be made required.
    _outsideClickDispatcher) {
        this._portalOutlet = _portalOutlet;
        this._host = _host;
        this._pane = _pane;
        this._config = _config;
        this._ngZone = _ngZone;
        this._keyboardDispatcher = _keyboardDispatcher;
        this._document = _document;
        this._location = _location;
        this._outsideClickDispatcher = _outsideClickDispatcher;
        this._backdropElement = null;
        this._backdropClick = new Subject();
        this._attachments = new Subject();
        this._detachments = new Subject();
        this._locationChanges = Subscription.EMPTY;
        this._backdropClickHandler = (event) => this._backdropClick.next(event);
        /** Stream of keydown events dispatched to this overlay. */
        this._keydownEvents = new Subject();
        /** Stream of mouse outside events dispatched to this overlay. */
        this._outsidePointerEvents = new Subject();
        if (_config.scrollStrategy) {
            this._scrollStrategy = _config.scrollStrategy;
            this._scrollStrategy.attach(this);
        }
        this._positionStrategy = _config.positionStrategy;
    }
    /** The overlay's HTML element */
    get overlayElement() {
        return this._pane;
    }
    /** The overlay's backdrop HTML element. */
    get backdropElement() {
        return this._backdropElement;
    }
    /**
     * Wrapper around the panel element. Can be used for advanced
     * positioning where a wrapper with specific styling is
     * required around the overlay pane.
     */
    get hostElement() {
        return this._host;
    }
    /**
     * Attaches content, given via a Portal, to the overlay.
     * If the overlay is configured to have a backdrop, it will be created.
     *
     * @param portal Portal instance to which to attach the overlay.
     * @returns The portal attachment result.
     */
    attach(portal) {
        let attachResult = this._portalOutlet.attach(portal);
        // Update the pane element with the given configuration.
        if (!this._host.parentElement && this._previousHostParent) {
            this._previousHostParent.appendChild(this._host);
        }
        if (this._positionStrategy) {
            this._positionStrategy.attach(this);
        }
        this._updateStackingOrder();
        this._updateElementSize();
        this._updateElementDirection();
        if (this._scrollStrategy) {
            this._scrollStrategy.enable();
        }
        // Update the position once the zone is stable so that the overlay will be fully rendered
        // before attempting to position it, as the position may depend on the size of the rendered
        // content.
        this._ngZone.onStable
            .pipe(take(1))
            .subscribe(() => {
            // The overlay could've been detached before the zone has stabilized.
            if (this.hasAttached()) {
                this.updatePosition();
            }
        });
        // Enable pointer events for the overlay pane element.
        this._togglePointerEvents(true);
        if (this._config.hasBackdrop) {
            this._attachBackdrop();
        }
        if (this._config.panelClass) {
            this._toggleClasses(this._pane, this._config.panelClass, true);
        }
        // Only emit the `attachments` event once all other setup is done.
        this._attachments.next();
        // Track this overlay by the keyboard dispatcher
        this._keyboardDispatcher.add(this);
        // @breaking-change 8.0.0 remove the null check for `_location`
        // once the constructor parameter is made required.
        if (this._config.disposeOnNavigation && this._location) {
            this._locationChanges = this._location.subscribe(() => this.dispose());
        }
        // @breaking-change 9.0.0 remove the null check for `_mouseClickDispatcher`
        if (this._outsideClickDispatcher) {
            this._outsideClickDispatcher.add(this);
        }
        return attachResult;
    }
    /**
     * Detaches an overlay from a portal.
     * @returns The portal detachment result.
     */
    detach() {
        if (!this.hasAttached()) {
            return;
        }
        this.detachBackdrop();
        // When the overlay is detached, the pane element should disable pointer events.
        // This is necessary because otherwise the pane element will cover the page and disable
        // pointer events therefore. Depends on the position strategy and the applied pane boundaries.
        this._togglePointerEvents(false);
        if (this._positionStrategy && this._positionStrategy.detach) {
            this._positionStrategy.detach();
        }
        if (this._scrollStrategy) {
            this._scrollStrategy.disable();
        }
        const detachmentResult = this._portalOutlet.detach();
        // Only emit after everything is detached.
        this._detachments.next();
        // Remove this overlay from keyboard dispatcher tracking.
        this._keyboardDispatcher.remove(this);
        // Keeping the host element in the DOM can cause scroll jank, because it still gets
        // rendered, even though it's transparent and unclickable which is why we remove it.
        this._detachContentWhenStable();
        // Stop listening for location changes.
        this._locationChanges.unsubscribe();
        // @breaking-change 9.0.0 remove the null check for `_outsideClickDispatcher`
        if (this._outsideClickDispatcher) {
            this._outsideClickDispatcher.remove(this);
        }
        return detachmentResult;
    }
    /** Cleans up the overlay from the DOM. */
    dispose() {
        const isAttached = this.hasAttached();
        if (this._positionStrategy) {
            this._positionStrategy.dispose();
        }
        this._disposeScrollStrategy();
        this.detachBackdrop();
        this._locationChanges.unsubscribe();
        this._keyboardDispatcher.remove(this);
        this._portalOutlet.dispose();
        this._attachments.complete();
        this._backdropClick.complete();
        this._keydownEvents.complete();
        this._outsidePointerEvents.complete();
        // @breaking-change 9.0.0 remove the null check for `_outsideClickDispatcher`
        if (this._outsideClickDispatcher) {
            this._outsideClickDispatcher.remove(this);
        }
        if (this._host && this._host.parentNode) {
            this._host.parentNode.removeChild(this._host);
            this._host = null;
        }
        this._previousHostParent = this._pane = null;
        if (isAttached) {
            this._detachments.next();
        }
        this._detachments.complete();
    }
    /** Whether the overlay has attached content. */
    hasAttached() {
        return this._portalOutlet.hasAttached();
    }
    /** Gets an observable that emits when the backdrop has been clicked. */
    backdropClick() {
        return this._backdropClick;
    }
    /** Gets an observable that emits when the overlay has been attached. */
    attachments() {
        return this._attachments;
    }
    /** Gets an observable that emits when the overlay has been detached. */
    detachments() {
        return this._detachments;
    }
    /** Gets an observable of keydown events targeted to this overlay. */
    keydownEvents() {
        return this._keydownEvents;
    }
    /** Gets an observable of pointer events targeted outside this overlay. */
    outsidePointerEvents() {
        return this._outsidePointerEvents;
    }
    /** Gets the current overlay configuration, which is immutable. */
    getConfig() {
        return this._config;
    }
    /** Updates the position of the overlay based on the position strategy. */
    updatePosition() {
        if (this._positionStrategy) {
            this._positionStrategy.apply();
        }
    }
    /** Switches to a new position strategy and updates the overlay position. */
    updatePositionStrategy(strategy) {
        if (strategy === this._positionStrategy) {
            return;
        }
        if (this._positionStrategy) {
            this._positionStrategy.dispose();
        }
        this._positionStrategy = strategy;
        if (this.hasAttached()) {
            strategy.attach(this);
            this.updatePosition();
        }
    }
    /** Update the size properties of the overlay. */
    updateSize(sizeConfig) {
        this._config = Object.assign(Object.assign({}, this._config), sizeConfig);
        this._updateElementSize();
    }
    /** Sets the LTR/RTL direction for the overlay. */
    setDirection(dir) {
        this._config = Object.assign(Object.assign({}, this._config), { direction: dir });
        this._updateElementDirection();
    }
    /** Add a CSS class or an array of classes to the overlay pane. */
    addPanelClass(classes) {
        if (this._pane) {
            this._toggleClasses(this._pane, classes, true);
        }
    }
    /** Remove a CSS class or an array of classes from the overlay pane. */
    removePanelClass(classes) {
        if (this._pane) {
            this._toggleClasses(this._pane, classes, false);
        }
    }
    /**
     * Returns the layout direction of the overlay panel.
     */
    getDirection() {
        const direction = this._config.direction;
        if (!direction) {
            return 'ltr';
        }
        return typeof direction === 'string' ? direction : direction.value;
    }
    /** Switches to a new scroll strategy. */
    updateScrollStrategy(strategy) {
        if (strategy === this._scrollStrategy) {
            return;
        }
        this._disposeScrollStrategy();
        this._scrollStrategy = strategy;
        if (this.hasAttached()) {
            strategy.attach(this);
            strategy.enable();
        }
    }
    /** Updates the text direction of the overlay panel. */
    _updateElementDirection() {
        this._host.setAttribute('dir', this.getDirection());
    }
    /** Updates the size of the overlay element based on the overlay config. */
    _updateElementSize() {
        if (!this._pane) {
            return;
        }
        const style = this._pane.style;
        style.width = coerceCssPixelValue(this._config.width);
        style.height = coerceCssPixelValue(this._config.height);
        style.minWidth = coerceCssPixelValue(this._config.minWidth);
        style.minHeight = coerceCssPixelValue(this._config.minHeight);
        style.maxWidth = coerceCssPixelValue(this._config.maxWidth);
        style.maxHeight = coerceCssPixelValue(this._config.maxHeight);
    }
    /** Toggles the pointer events for the overlay pane element. */
    _togglePointerEvents(enablePointer) {
        this._pane.style.pointerEvents = enablePointer ? 'auto' : 'none';
    }
    /** Attaches a backdrop for this overlay. */
    _attachBackdrop() {
        const showingClass = 'cdk-overlay-backdrop-showing';
        this._backdropElement = this._document.createElement('div');
        this._backdropElement.classList.add('cdk-overlay-backdrop');
        if (this._config.backdropClass) {
            this._toggleClasses(this._backdropElement, this._config.backdropClass, true);
        }
        // Insert the backdrop before the pane in the DOM order,
        // in order to handle stacked overlays properly.
        this._host.parentElement.insertBefore(this._backdropElement, this._host);
        // Forward backdrop clicks such that the consumer of the overlay can perform whatever
        // action desired when such a click occurs (usually closing the overlay).
        this._backdropElement.addEventListener('click', this._backdropClickHandler);
        // Add class to fade-in the backdrop after one frame.
        if (typeof requestAnimationFrame !== 'undefined') {
            this._ngZone.runOutsideAngular(() => {
                requestAnimationFrame(() => {
                    if (this._backdropElement) {
                        this._backdropElement.classList.add(showingClass);
                    }
                });
            });
        }
        else {
            this._backdropElement.classList.add(showingClass);
        }
    }
    /**
     * Updates the stacking order of the element, moving it to the top if necessary.
     * This is required in cases where one overlay was detached, while another one,
     * that should be behind it, was destroyed. The next time both of them are opened,
     * the stacking will be wrong, because the detached element's pane will still be
     * in its original DOM position.
     */
    _updateStackingOrder() {
        if (this._host.nextSibling) {
            this._host.parentNode.appendChild(this._host);
        }
    }
    /** Detaches the backdrop (if any) associated with the overlay. */
    detachBackdrop() {
        let backdropToDetach = this._backdropElement;
        if (!backdropToDetach) {
            return;
        }
        let timeoutId;
        let finishDetach = () => {
            // It may not be attached to anything in certain cases (e.g. unit tests).
            if (backdropToDetach) {
                backdropToDetach.removeEventListener('click', this._backdropClickHandler);
                backdropToDetach.removeEventListener('transitionend', finishDetach);
                if (backdropToDetach.parentNode) {
                    backdropToDetach.parentNode.removeChild(backdropToDetach);
                }
            }
            // It is possible that a new portal has been attached to this overlay since we started
            // removing the backdrop. If that is the case, only clear the backdrop reference if it
            // is still the same instance that we started to remove.
            if (this._backdropElement == backdropToDetach) {
                this._backdropElement = null;
            }
            if (this._config.backdropClass) {
                this._toggleClasses(backdropToDetach, this._config.backdropClass, false);
            }
            clearTimeout(timeoutId);
        };
        backdropToDetach.classList.remove('cdk-overlay-backdrop-showing');
        this._ngZone.runOutsideAngular(() => {
            backdropToDetach.addEventListener('transitionend', finishDetach);
        });
        // If the backdrop doesn't have a transition, the `transitionend` event won't fire.
        // In this case we make it unclickable and we try to remove it after a delay.
        backdropToDetach.style.pointerEvents = 'none';
        // Run this outside the Angular zone because there's nothing that Angular cares about.
        // If it were to run inside the Angular zone, every test that used Overlay would have to be
        // either async or fakeAsync.
        timeoutId = this._ngZone.runOutsideAngular(() => setTimeout(finishDetach, 500));
    }
    /** Toggles a single CSS class or an array of classes on an element. */
    _toggleClasses(element, cssClasses, isAdd) {
        const classList = element.classList;
        coerceArray(cssClasses).forEach(cssClass => {
            // We can't do a spread here, because IE doesn't support setting multiple classes.
            // Also trying to add an empty string to a DOMTokenList will throw.
            if (cssClass) {
                isAdd ? classList.add(cssClass) : classList.remove(cssClass);
            }
        });
    }
    /** Detaches the overlay content next time the zone stabilizes. */
    _detachContentWhenStable() {
        // Normally we wouldn't have to explicitly run this outside the `NgZone`, however
        // if the consumer is using `zone-patch-rxjs`, the `Subscription.unsubscribe` call will
        // be patched to run inside the zone, which will throw us into an infinite loop.
        this._ngZone.runOutsideAngular(() => {
            // We can't remove the host here immediately, because the overlay pane's content
            // might still be animating. This stream helps us avoid interrupting the animation
            // by waiting for the pane to become empty.
            const subscription = this._ngZone.onStable
                .pipe(takeUntil(merge(this._attachments, this._detachments)))
                .subscribe(() => {
                // Needs a couple of checks for the pane and host, because
                // they may have been removed by the time the zone stabilizes.
                if (!this._pane || !this._host || this._pane.children.length === 0) {
                    if (this._pane && this._config.panelClass) {
                        this._toggleClasses(this._pane, this._config.panelClass, false);
                    }
                    if (this._host && this._host.parentElement) {
                        this._previousHostParent = this._host.parentElement;
                        this._previousHostParent.removeChild(this._host);
                    }
                    subscription.unsubscribe();
                }
            });
        });
    }
    /** Disposes of a scroll strategy. */
    _disposeScrollStrategy() {
        const scrollStrategy = this._scrollStrategy;
        if (scrollStrategy) {
            scrollStrategy.disable();
            if (scrollStrategy.detach) {
                scrollStrategy.detach();
            }
        }
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoib3ZlcmxheS1yZWYuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL292ZXJsYXkvb3ZlcmxheS1yZWYudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBTUgsT0FBTyxFQUFhLE9BQU8sRUFBRSxLQUFLLEVBQW9CLFlBQVksRUFBQyxNQUFNLE1BQU0sQ0FBQztBQUNoRixPQUFPLEVBQUMsSUFBSSxFQUFFLFNBQVMsRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBSS9DLE9BQU8sRUFBQyxtQkFBbUIsRUFBRSxXQUFXLEVBQUMsTUFBTSx1QkFBdUIsQ0FBQztBQVd2RTs7O0dBR0c7QUFDSCxNQUFNLE9BQU8sVUFBVTtJQXNCckIsWUFDWSxhQUEyQixFQUMzQixLQUFrQixFQUNsQixLQUFrQixFQUNsQixPQUF1QyxFQUN2QyxPQUFlLEVBQ2YsbUJBQThDLEVBQzlDLFNBQW1CO0lBQzNCLG9FQUFvRTtJQUM1RCxTQUFvQjtJQUM1QixnRkFBZ0Y7SUFDeEUsdUJBQXVEO1FBVnZELGtCQUFhLEdBQWIsYUFBYSxDQUFjO1FBQzNCLFVBQUssR0FBTCxLQUFLLENBQWE7UUFDbEIsVUFBSyxHQUFMLEtBQUssQ0FBYTtRQUNsQixZQUFPLEdBQVAsT0FBTyxDQUFnQztRQUN2QyxZQUFPLEdBQVAsT0FBTyxDQUFRO1FBQ2Ysd0JBQW1CLEdBQW5CLG1CQUFtQixDQUEyQjtRQUM5QyxjQUFTLEdBQVQsU0FBUyxDQUFVO1FBRW5CLGNBQVMsR0FBVCxTQUFTLENBQVc7UUFFcEIsNEJBQXVCLEdBQXZCLHVCQUF1QixDQUFnQztRQWhDM0QscUJBQWdCLEdBQXVCLElBQUksQ0FBQztRQUM1QyxtQkFBYyxHQUF3QixJQUFJLE9BQU8sRUFBRSxDQUFDO1FBQ3BELGlCQUFZLEdBQUcsSUFBSSxPQUFPLEVBQVEsQ0FBQztRQUNuQyxpQkFBWSxHQUFHLElBQUksT0FBTyxFQUFRLENBQUM7UUFHbkMscUJBQWdCLEdB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QUMsS0FBSyxJQUFJLElBQUksQ0FBQyxLQUFLLENBQUMsYUFBYSxFQUFFO3dCQUMxQyxJQUFJLENBQUMsbUJBQW1CLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxhQUFhLENBQUM7d0JBQ3BELElBQUksQ0FBQyxtQkFBbUIsQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDO3FCQUNsRDtvQkFFRCxZQUFZLENBQUMsV0FBVyxFQUFFLENBQUM7aUJBQzVCO1lBQ0gsQ0FBQyxDQUFDLENBQUM7UUFDUCxDQUFDLENBQUMsQ0FBQztJQUNMLENBQUM7SUFFRCxxQ0FBcUM7SUFDN0Isc0JBQXNCO1FBQzVCLE1BQU0sY0FBYyxHQUFHLElBQUksQ0FBQyxlQUFlLENBQUM7UUFFNUMsSUFBSSxjQUFjLEVBQUU7WUFDbEIsY0FBYyxDQUFDLE9BQU8sRUFBRSxDQUFDO1lBRXpCLElBQUksY0FBYyxDQUFDLE1BQU0sRUFBRTtnQkFDekIsY0FBYyxDQUFDLE1BQU0sRUFBRSxDQUFDO2FBQ3pCO1NBQ0Y7SUFDSCxDQUFDO0NBQ0YiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtEaXJlY3Rpb24sIERpcmVjdGlvbmFsaXR5fSBmcm9tICdAYW5ndWxhci9jZGsvYmlkaSc7XG5pbXBvcnQge0NvbXBvbmVudFBvcnRhbCwgUG9ydGFsLCBQb3J0YWxPdXRsZXQsIFRlbXBsYXRlUG9ydGFsfSBmcm9tICdAYW5ndWxhci9jZGsvcG9ydGFsJztcbmltcG9ydCB7Q29tcG9uZW50UmVmLCBFbWJlZGRlZFZpZXdSZWYsIE5nWm9uZX0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge0xvY2F0aW9ufSBmcm9tICdAYW5ndWxhci9jb21tb24nO1xuaW1wb3J0IHtPYnNlcnZhYmxlLCBTdWJqZWN0LCBtZXJnZSwgU3Vic2NyaXB0aW9uTGlrZSwgU3Vic2NyaXB0aW9ufSBmcm9tICdyeGpzJztcbmltcG9ydCB7dGFrZSwgdGFrZVVudGlsfSBmcm9tICdyeGpzL29wZXJhdG9ycyc7XG5pbXBvcnQge092ZXJsYXlLZXlib2FyZERpc3BhdGNoZXJ9IGZyb20gJy4vZGlzcGF0Y2hlcnMvb3ZlcmxheS1rZXlib2FyZC1kaXNwYXRjaGVyJztcbmltcG9ydCB7T3ZlcmxheU91dHNpZGVDbGlja0Rpc3BhdGNoZXJ9IGZyb20gJy4vZGlzcGF0Y2hlcnMvb3ZlcmxheS1vdXRzaWRlLWNsaWNrLWRpc3BhdGNoZXInO1xuaW1wb3J0IHtPdmVybGF5Q29uZmlnfSBmcm9tICcuL292ZXJsYXktY29uZmlnJztcbmltcG9ydCB7Y29lcmNlQ3NzUGl4ZWxWYWx1ZSwgY29lcmNlQXJyYXl9IGZyb20gJ0Bhbmd1bGFyL2Nkay9jb2VyY2lvbic7XG5pbXBvcnQge092ZXJsYXlSZWZlcmVuY2V9IGZyb20gJy4vb3ZlcmxheS1yZWZlcmVuY2UnO1xuaW1wb3J0IHtQb3NpdGlvblN0cmF0ZWd5fSBmcm9tICcuL3Bvc2l0aW9uL3Bvc2l0aW9uLXN0cmF0ZWd5JztcbmltcG9ydCB7U2Nyb2xsU3RyYXRlZ3l9IGZyb20gJy4vc2Nyb2xsJztcblxuXG4vKiogQW4gb2JqZWN0IHdoZXJlIGFsbCBvZiBpdHMgcHJvcGVydGllcyBjYW5ub3QgYmUgd3JpdHRlbi4gKi9cbmV4cG9ydCB0eXBlIEltbXV0YWJsZU9iamVjdDxUPiA9IHtcbiAgcmVhZG9ubHkgW1AgaW4ga2V5b2YgVF06IFRbUF07XG59O1xuXG4vKipcbiAqIFJlZmVyZW5jZSB0byBhbiBvdmVybGF5IHRoYXQgaGFzIGJlZW4gY3JlYXRlZCB3aXRoIHRoZSBPdmVybGF5IHNlcnZpY2UuXG4gKiBVc2VkIHRvIG1hbmlwdWxhdGUgb3IgZGlzcG9zZSBvZiBzYWlkIG92ZXJsYXkuXG4gKi9cbmV4cG9ydCBjbGFzcyBPdmVybGF5UmVmIGltcGxlbWVudHMgUG9ydGFsT3V0bGV0LCBPdmVybGF5UmVmZXJlbmNlIHtcbiAgcHJpdmF0ZSBfYmFja2Ryb3BFbGVtZW50OiBIVE1MRWxlbWVudCB8IG51bGwgPSBudWxsO1xuICBwcml2YXRlIF9iYWNrZHJvcENsaWNrOiBTdWJqZWN0PE1vdXNlRXZlbnQ+ID0gbmV3IFN1YmplY3QoKTtcbiAgcHJpdmF0ZSBfYXR0YWNobWVudHMgPSBuZXcgU3ViamVjdDx2b2lkPigpO1xuICBwcml2YXRlIF9kZXRhY2htZW50cyA9IG5ldyBTdWJqZWN0PHZvaWQ+KCk7XG4gIHByaXZhdGUgX3Bvc2l0aW9uU3RyYXRlZ3k6IFBvc2l0aW9uU3RyYXRlZ3kgfCB1bmRlZmluZWQ7XG4gIHByaXZhdGUgX3Njcm9sbFN0cmF0ZWd5OiBTY3JvbGxTdHJhdGVneSB8IHVuZGVmaW5lZDtcbiAgcHJpdmF0ZSBfbG9jYXRpb25DaGFuZ2VzOiBTdWJzY3JpcHRpb25MaWtlID0gU3Vic2NyaXB0aW9uLkVNUFRZO1xuICBwcml2YXRlIF9iYWNrZHJvcENsaWNrSGFuZGxlciA9IChldmVudDogTW91c2VFdmVudCkgPT4gdGhpcy5fYmFja2Ryb3BDbGljay5uZXh0KGV2ZW50KTtcblxuICAvKipcbiAgICogUmVmZXJlbmNlIHRvIHRoZSBwYXJlbnQgb2YgdGhlIGBfaG9zdGAgYXQgdGhlIHRpbWUgaXQgd2FzIGRldGFjaGVkLiBVc2VkIHRvIHJlc3RvcmVcbiAgICogdGhlIGBfaG9zdGAgdG8gaXRzIG9yaWdpbmFsIHBvc2l0aW9uIGluIHRoZSBET00gd2hlbiBpdCBnZXRzIHJlLWF0dGFjaGVkLlxuICAgKi9cbiAgcHJpdmF0ZSBfcHJldmlvdXNIb3N0UGFyZW50OiBIVE1MRWxlbWVudDtcblxuICAvKiogU3RyZWFtIG9mIGtleWRvd24gZXZlbnRzIGRpc3BhdGNoZWQgdG8gdGhpcyBvdmVybGF5LiAqL1xuICBfa2V5ZG93bkV2ZW50cyA9IG5ldyBTdWJqZWN0PEtleWJvYXJkRXZlbnQ+KCk7XG5cbiAgLyoqIFN0cmVhbSBvZiBtb3VzZSBvdXRzaWRlIGV2ZW50cyBkaXNwYXRjaGVkIHRvIHRoaXMgb3ZlcmxheS4gKi9cbiAgX291dHNpZGVQb2ludGVyRXZlbnRzID0gbmV3IFN1YmplY3Q8TW91c2VFdmVudD4oKTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgX3BvcnRhbE91dGxldDogUG9ydGFsT3V0bGV0LFxuICAgICAgcHJpdmF0ZSBfaG9zdDogSFRNTEVsZW1lbnQsXG4gICAgICBwcml2YXRlIF9wYW5lOiBIVE1MRWxlbWVudCxcbiAgICAgIHByaXZhdGUgX2NvbmZpZzogSW1tdXRhYmxlT2JqZWN0PE92ZXJsYXlDb25maWc+LFxuICAgICAgcHJpdmF0ZSBfbmdab25lOiBOZ1pvbmUsXG4gICAgICBwcml2YXRlIF9rZXlib2FyZERpc3BhdGNoZXI6IE92ZXJsYXlLZXlib2FyZERpc3BhdGNoZXIsXG4gICAgICBwcml2YXRlIF9kb2N1bWVudDogRG9jdW1lbnQsXG4gICAgICAvLyBAYnJlYWtpbmctY2hhbmdlIDguMC4wIGBfbG9jYXRpb25gIHBhcmFtZXRlciB0byBiZSBtYWRlIHJlcXVpcmVkLlxuICAgICAgcHJpdmF0ZSBfbG9jYXRpb24/OiBMb2NhdGlvbixcbiAgICAgIC8vIEBicmVha2luZy1jaGFuZ2UgOS4wLjAgYF9tb3VzZUNsaWNrRGlzcGF0Y2hlcmAgcGFyYW1ldGVyIHRvIGJlIG1hZGUgcmVxdWlyZWQuXG4gICAgICBwcml2YXRlIF9vdXRzaWRlQ2xpY2tEaXNwYXRjaGVyPzogT3ZlcmxheU91dHNpZGVDbGlja0Rpc3BhdGNoZXIpIHtcblxuICAgIGlmIChfY29uZmlnLnNjcm9sbFN0cmF0ZWd5KSB7XG4gICAgICB0aGlzLl9zY3JvbGxTdHJhdGVneSA9IF9jb25maWcuc2Nyb2xsU3RyYXRlZ3k7XG4gICAgICB0aGlzLl9zY3JvbGxTdHJhdGVneS5hdHRhY2godGhpcyk7XG4gICAgfVxuXG4gICAgdGhpcy5fcG9zaXRpb25TdHJhdGVneSA9IF9jb25maWcucG9zaXRpb25TdHJhdGVneTtcbiAgfVxuXG4gIC8qKiBUaGUgb3ZlcmxheSdzIEhUTUwgZWxlbWVudCAqL1xuICBnZXQgb3ZlcmxheUVsZW1lbnQoKTogSFRNTEVsZW1lbnQge1xuICAgIHJldHVybiB0aGlzLl9wYW5lO1xuICB9XG5cbiAgLyoqIFRoZSBvdmVybGF5J3MgYmFja2Ryb3AgSFRNTCBlbGVtZW50LiAqL1xuICBnZXQgYmFja2Ryb3BFbGVtZW50KCk6IEhUTUxFbGVtZW50IHwgbnVsbCB7XG4gICAgcmV0dXJuIHRoaXMuX2JhY2tkcm9wRWxlbWVudDtcbiAgfVxuXG4gIC8qKlxuICAgKiBXcmFwcGVyIGFyb3VuZCB0aGUgcGFuZWwgZWxlbWVudC4gQ2FuIGJlIHVzZWQgZm9yIGFkdmFuY2VkXG4gICAqIHBvc2l0aW9uaW5nIHdoZXJlIGEgd3JhcHBlciB3aXRoIHNwZWNpZmljIHN0eWxpbmcgaXNcbiAgICogcmVxdWlyZWQgYXJvdW5kIHRoZSBvdmVybGF5IHBhbmUuXG4gICAqL1xuICBnZXQgaG9zdEVsZW1lbnQoKTogSFRNTEVsZW1lbnQge1xuICAgIHJldHVybiB0aGlzLl9ob3N0O1xuICB9XG5cbiAgYXR0YWNoPFQ+KHBvcnRhbDogQ29tcG9uZW50UG9ydGFsPFQ+KTogQ29tcG9uZW50UmVmPFQ+O1xuICBhdHRhY2g8VD4ocG9ydGFsOiBUZW1wbGF0ZVBvcnRhbDxUPik6IEVtYmVkZGVkVmlld1JlZjxUPjtcbiAgYXR0YWNoKHBvcnRhbDogYW55KTogYW55O1xuXG4gIC8qKlxuICAgKiBBdHRhY2hlcyBjb250ZW50LCBnaXZlbiB2aWEgYSBQb3J0YWwsIHRvIHRoZSBvdmVybGF5LlxuICAgKiBJZiB0aGUgb3ZlcmxheSBpcyBjb25maWd1cmVkIHRvIGhhdmUgYSBiYWNrZHJvcCwgaXQgd2lsbCBiZSBjcmVhdGVkLlxuICAgKlxuICAgKiBAcGFyYW0gcG9ydGFsIFBvcnRhbCBpbnN0YW5jZSB0byB3aGljaCB0byBhdHRhY2ggdGhlIG92ZXJsYXkuXG4gICAqIEByZXR1cm5zIFRoZSBwb3J0YWwgYXR0YWNobWVudCByZXN1bHQuXG4gICAqL1xuICBhdHRhY2gocG9ydGFsOiBQb3J0YWw8YW55Pik6IGFueSB7XG4gICAgbGV0IGF0dGFjaFJlc3VsdCA9IHRoaXMuX3BvcnRhbE91dGxldC5hdHRhY2gocG9ydGFsKTtcblxuICAgIC8vIFVwZGF0ZSB0aGUgcGFuZSBlbGVtZW50IHdpdGggdGhlIGdpdmVuIGNvbmZpZ3VyYXRpb24uXG4gICAgaWYgKCF0aGlzLl9ob3N0LnBhcmVudEVsZW1lbnQgJiYgdGhpcy5fcHJldmlvdXNIb3N0UGFyZW50KSB7XG4gICAgICB0aGlzLl9wcmV2aW91c0hvc3RQYXJlbnQuYXBwZW5kQ2hpbGQodGhpcy5faG9zdCk7XG4gICAgfVxuXG4gICAgaWYgKHRoaXMuX3Bvc2l0aW9uU3RyYXRlZ3kpIHtcbiAgICAgIHRoaXMuX3Bvc2l0aW9uU3RyYXRlZ3kuYXR0YWNoKHRoaXMpO1xuICAgIH1cblxuICAgIHRoaXMuX3VwZGF0ZVN0YWNraW5nT3JkZXIoKTtcbiAgICB0aGlzLl91cGRhdGVFbGVtZW50U2l6ZSgpO1xuICAgIHRoaXMuX3VwZGF0ZUVsZW1lbnREaXJlY3Rpb24oKTtcblxuICAgIGlmICh0aGlzLl9zY3JvbGxTdHJhdGVneSkge1xuICAgICAgdGhpcy5fc2Nyb2xsU3RyYXRlZ3kuZW5hYmxlKCk7XG4gICAgfVxuXG4gICAgLy8gVXBkYXRlIHRoZSBwb3NpdGlvbiBvbmNlIHRoZSB6b25lIGlzIHN0YWJsZSBzbyB0aGF0IHRoZSBvdmVybGF5IHdpbGwgYmUgZnVsbHkgcmVuZGVyZWRcbiAgICAvLyBiZWZvcmUgYXR0ZW1wdGluZyB0byBwb3NpdGlvbiBpdCwgYXMgdGhlIHBvc2l0aW9uIG1heSBkZXBlbmQgb24gdGhlIHNpemUgb2YgdGhlIHJlbmRlcmVkXG4gICAgLy8gY29udGVudC5cbiAgICB0aGlzLl9uZ1pvbmUub25TdGFibGVcbiAgICAgIC5waXBlKHRha2UoMSkpXG4gICAgICAuc3Vic2NyaWJlKCgpID0+IHtcbiAgICAgICAgLy8gVGhlIG92ZXJsYXkgY291bGQndmUgYmVlbiBkZXRhY2hlZCBiZWZvcmUgdGhlIHpvbmUgaGFzIHN0YWJpbGl6ZWQuXG4gICAgICAgIGlmICh0aGlzLmhhc0F0dGFjaGVkKCkpIHtcbiAgICAgICAgICB0aGlzLnVwZGF0ZVBvc2l0aW9uKCk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuXG4gICAgLy8gRW5hYmxlIHBvaW50ZXIgZXZlbnRzIGZvciB0aGUgb3ZlcmxheSBwYW5lIGVsZW1lbnQuXG4gICAgdGhpcy5fdG9nZ2xlUG9pbnRlckV2ZW50cyh0cnVlKTtcblxuICAgIGlmICh0aGlzLl9jb25maWcuaGFzQmFja2Ryb3ApIHtcbiAgICAgIHRoaXMuX2F0dGFjaEJhY2tkcm9wKCk7XG4gICAgfVxuXG4gICAgaWYgKHRoaXMuX2NvbmZpZy5wYW5lbENsYXNzKSB7XG4gICAgICB0aGlzLl90b2dnbGVDbGFzc2VzKHRoaXMuX3BhbmUsIHRoaXMuX2NvbmZpZy5wYW5lbENsYXNzLCB0cnVlKTtcbiAgICB9XG5cbiAgICAvLyBPbmx5IGVtaXQgdGhlIGBhdHRhY2htZW50c2AgZXZlbnQgb25jZSBhbGwgb3RoZXIgc2V0dXAgaXMgZG9uZS5cbiAgICB0aGlzLl9hdHRhY2htZW50cy5uZXh0KCk7XG5cbiAgICAvLyBUcmFjayB0aGlzIG92ZXJsYXkgYnkgdGhlIGtleWJvYXJkIGRpc3BhdGNoZXJcbiAgICB0aGlzLl9rZXlib2FyZERpc3BhdGNoZXIuYWRkKHRoaXMpO1xuXG4gICAgLy8gQGJyZWFraW5nLWNoYW5nZSA4LjAuMCByZW1vdmUgdGhlIG51bGwgY2hlY2sgZm9yIGBfbG9jYXRpb25gXG4gICAgLy8gb25jZSB0aGUgY29uc3RydWN0b3IgcGFyYW1ldGVyIGlzIG1hZGUgcmVxdWlyZWQuXG4gICAgaWYgKHRoaXMuX2NvbmZpZy5kaXNwb3NlT25OYXZpZ2F0aW9uICYmIHRoaXMuX2xvY2F0aW9uKSB7XG4gICAgICB0aGlzLl9sb2NhdGlvbkNoYW5nZXMgPSB0aGlzLl9sb2NhdGlvbi5zdWJzY3JpYmUoKCkgPT4gdGhpcy5kaXNwb3NlKCkpO1xuICAgIH1cblxuICAgIC8vIEBicmVha2luZy1jaGFuZ2UgOS4wLjAgcmVtb3ZlIHRoZSBudWxsIGNoZWNrIGZvciBgX21vdXNlQ2xpY2tEaXNwYXRjaGVyYFxuICAgIGlmICh0aGlzLl9vdXRzaWRlQ2xpY2tEaXNwYXRjaGVyKSB7XG4gICAgICB0aGlzLl9vdXRzaWRlQ2xpY2tEaXNwYXRjaGVyLmFkZCh0aGlzKTtcbiAgICB9XG5cbiAgICByZXR1cm4gYXR0YWNoUmVzdWx0O1xuICB9XG5cbiAgLyoqXG4gICAqIERldGFjaGVzIGFuIG92ZXJsYXkgZnJvbSBhIHBvcnRhbC5cbiAgICogQHJldHVybnMgVGhlIHBvcnRhbCBkZXRhY2htZW50IHJlc3VsdC5cbiAgICovXG4gIGRldGFjaCgpOiBhbnkge1xuICAgIGlmICghdGhpcy5oYXNBdHRhY2hlZCgpKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgdGhpcy5kZXRhY2hCYWNrZHJvcCgpO1xuXG4gICAgLy8gV2hlbiB0aGUgb3ZlcmxheSBpcyBkZXRhY2hlZCwgdGhlIHBhbmUgZWxlbWVudCBzaG91bGQgZGlzYWJsZSBwb2ludGVyIGV2ZW50cy5cbiAgICAvLyBUaGlzIGlzIG5lY2Vzc2FyeSBiZWNhdXNlIG90aGVyd2lzZSB0aGUgcGFuZSBlbGVtZW50IHdpbGwgY292ZXIgdGhlIHBhZ2UgYW5kIGRpc2FibGVcbiAgICAvLyBwb2ludGVyIGV2ZW50cyB0aGVyZWZvcmUuIERlcGVuZHMgb24gdGhlIHBvc2l0aW9uIHN0cmF0ZWd5IGFuZCB0aGUgYXBwbGllZCBwYW5lIGJvdW5kYXJpZXMuXG4gICAgdGhpcy5fdG9nZ2xlUG9pbnRlckV2ZW50cyhmYWxzZSk7XG5cbiAgICBpZiAodGhpcy5fcG9zaXRpb25TdHJhdGVneSAmJiB0aGlzLl9wb3NpdGlvblN0cmF0ZWd5LmRldGFjaCkge1xuICAgICAgdGhpcy5fcG9zaXRpb25TdHJhdGVneS5kZXRhY2goKTtcbiAgICB9XG5cbiAgICBpZiAodGhpcy5fc2Nyb2xsU3RyYXRlZ3kpIHtcbiAgICAgIHRoaXMuX3Njcm9sbFN0cmF0ZWd5LmRpc2FibGUoKTtcbiAgICB9XG5cbiAgICBjb25zdCBkZXRhY2htZW50UmVzdWx0ID0gdGhpcy5fcG9ydGFsT3V0bGV0LmRldGFjaCgpO1xuXG4gICAgLy8gT25seSBlbWl0IGFmdGVyIGV2ZXJ5dGhpbmcgaXMgZGV0YWNoZWQuXG4gICAgdGhpcy5fZGV0YWNobWVudHMubmV4dCgpO1xuXG4gICAgLy8gUmVtb3ZlIHRoaXMgb3ZlcmxheSBmcm9tIGtleWJvYXJkIGRpc3BhdGNoZXIgdHJhY2tpbmcuXG4gICAgdGhpcy5fa2V5Ym9hcmREaXNwYXRjaGVyLnJlbW92ZSh0aGlzKTtcblxuICAgIC8vIEtlZXBpbmcgdGhlIGhvc3QgZWxlbWVudCBpbiB0aGUgRE9NIGNhbiBjYXVzZSBzY3JvbGwgamFuaywgYmVjYXVzZSBpdCBzdGlsbCBnZXRzXG4gICAgLy8gcmVuZGVyZWQsIGV2ZW4gdGhvdWdoIGl0J3MgdHJhbnNwYXJlbnQgYW5kIHVuY2xpY2thYmxlIHdoaWNoIGlzIHdoeSB3ZSByZW1vdmUgaXQuXG4gICAgdGhpcy5fZGV0YWNoQ29udGVudFdoZW5TdGFibGUoKTtcblxuICAgIC8vIFN0b3AgbGlzdGVuaW5nIGZvciBsb2NhdGlvbiBjaGFuZ2VzLlxuICAgIHRoaXMuX2xvY2F0aW9uQ2hhbmdlcy51bnN1YnNjcmliZSgpO1xuXG4gICAgLy8gQGJyZWFraW5nLWNoYW5nZSA5LjAuMCByZW1vdmUgdGhlIG51bGwgY2hlY2sgZm9yIGBfb3V0c2lkZUNsaWNrRGlzcGF0Y2hlcmBcbiAgICBpZiAodGhpcy5fb3V0c2lkZUNsaWNrRGlzcGF0Y2hlcikge1xuICAgICAgdGhpcy5fb3V0c2lkZUNsaWNrRGlzcGF0Y2hlci5yZW1vdmUodGhpcyk7XG4gICAgfVxuXG4gICAgcmV0dXJuIGRldGFjaG1lbnRSZXN1bHQ7XG4gIH1cblxuICAvKiogQ2xlYW5zIHVwIHRoZSBvdmVybGF5IGZyb20gdGhlIERPTS4gKi9cbiAgZGlzcG9zZSgpOiB2b2lkIHtcbiAgICBjb25zdCBpc0F0dGFjaGVkID0gdGhpcy5oYXNBdHRhY2hlZCgpO1xuXG4gICAgaWYgKHRoaXMuX3Bvc2l0aW9uU3RyYXRlZ3kpIHtcbiAgICAgIHRoaXMuX3Bvc2l0aW9uU3RyYXRlZ3kuZGlzcG9zZSgpO1xuICAgIH1cblxuICAgIHRoaXMuX2Rpc3Bvc2VTY3JvbGxTdHJhdGVneSgpO1xuICAgIHRoaXMuZGV0YWNoQmFja2Ryb3AoKTtcbiAgICB0aGlzLl9sb2NhdGlvbkNoYW5nZXMudW5zdWJzY3JpYmUoKTtcbiAgICB0aGlzLl9rZXlib2FyZERpc3BhdGNoZXIucmVtb3ZlKHRoaXMpO1xuICAgIHRoaXMuX3BvcnRhbE91dGxldC5kaXNwb3NlKCk7XG4gICAgdGhpcy5fYXR0YWNobWVudHMuY29tcGxldGUoKTtcbiAgICB0aGlzLl9iYWNrZHJvcENsaWNrLmNvbXBsZXRlKCk7XG4gICAgdGhpcy5fa2V5ZG93bkV2ZW50cy5jb21wbGV0ZSgpO1xuICAgIHRoaXMuX291dHNpZGVQb2ludGVyRXZlbnRzLmNvbXBsZXRlKCk7XG5cbiAgICAvLyBAYnJlYWtpbmctY2hhbmdlIDkuMC4wIHJlbW92ZSB0aGUgbnVsbCBjaGVjayBmb3IgYF9vdXRzaWRlQ2xpY2tEaXNwYXRjaGVyYFxuICAgIGlmICh0aGlzLl9vdXRzaWRlQ2xpY2tEaXNwYXRjaGVyKSB7XG4gICAgICB0aGlzLl9vdXRzaWRlQ2xpY2tEaXNwYXRjaGVyLnJlbW92ZSh0aGlzKTtcbiAgICB9XG5cbiAgICBpZiAodGhpcy5faG9zdCAmJiB0aGlzLl9ob3N0LnBhcmVudE5vZGUpIHtcbiAgICAgIHRoaXMuX2hvc3QucGFyZW50Tm9kZS5yZW1vdmVDaGlsZCh0aGlzLl9ob3N0KTtcbiAgICAgIHRoaXMuX2hvc3QgPSBudWxsITtcbiAgICB9XG5cbiAgICB0aGlzLl9wcmV2aW91c0hvc3RQYXJlbnQgPSB0aGlzLl9wYW5lID0gbnVsbCE7XG5cbiAgICBpZiAoaXNBdHRhY2hlZCkge1xuICAgICAgdGhpcy5fZGV0YWNobWVudHMubmV4dCgpO1xuICAgIH1cblxuICAgIHRoaXMuX2RldGFjaG1lbnRzLmNvbXBsZXRlKCk7XG4gIH1cblxuICAvKiogV2hldGhlciB0aGUgb3ZlcmxheSBoYXMgYXR0YWNoZWQgY29udGVudC4gKi9cbiAgaGFzQXR0YWNoZWQoKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRoaXMuX3BvcnRhbE91dGxldC5oYXNBdHRhY2hlZCgpO1xuICB9XG5cbiAgLyoqIEdldHMgYW4gb2JzZXJ2YWJsZSB0aGF0IGVtaXRzIHdoZW4gdGhlIGJhY2tkcm9wIGhhcyBiZWVuIGNsaWNrZWQuICovXG4gIGJhY2tkcm9wQ2xpY2soKTogT2JzZXJ2YWJsZTxNb3VzZUV2ZW50PiB7XG4gICAgcmV0dXJuIHRoaXMuX2JhY2tkcm9wQ2xpY2s7XG4gIH1cblxuICAvKiogR2V0cyBhbiBvYnNlcnZhYmxlIHRoYXQgZW1pdHMgd2hlbiB0aGUgb3ZlcmxheSBoYXMgYmVlbiBhdHRhY2hlZC4gKi9cbiAgYXR0YWNobWVudHMoKTogT2JzZXJ2YWJsZTx2b2lkPiB7XG4gICAgcmV0dXJuIHRoaXMuX2F0dGFjaG1lbnRzO1xuICB9XG5cbiAgLyoqIEdldHMgYW4gb2JzZXJ2YWJsZSB0aGF0IGVtaXRzIHdoZW4gdGhlIG92ZXJsYXkgaGFzIGJlZW4gZGV0YWNoZWQuICovXG4gIGRldGFjaG1lbnRzKCk6IE9ic2VydmFibGU8dm9pZD4ge1xuICAgIHJldHVybiB0aGlzLl9kZXRhY2htZW50cztcbiAgfVxuXG4gIC8qKiBHZXRzIGFuIG9ic2VydmFibGUgb2Yga2V5ZG93biBldmVudHMgdGFyZ2V0ZWQgdG8gdGhpcyBvdmVybGF5LiAqL1xuICBrZXlkb3duRXZlbnRzKCk6IE9ic2VydmFibGU8S2V5Ym9hcmRFdmVudD4ge1xuICAgIHJldHVybiB0aGlzLl9rZXlkb3duRXZlbnRzO1xuICB9XG5cbiAgLyoqIEdldHMgYW4gb2JzZXJ2YWJsZSBvZiBwb2ludGVyIGV2ZW50cyB0YXJnZXRlZCBvdXRzaWRlIHRoaXMgb3ZlcmxheS4gKi9cbiAgb3V0c2lkZVBvaW50ZXJFdmVudHMoKTogT2JzZXJ2YWJsZTxNb3VzZUV2ZW50PiB7XG4gICAgcmV0dXJuIHRoaXMuX291dHNpZGVQb2ludGVyRXZlbnRzO1xuICB9XG5cbiAgLyoqIEdldHMgdGhlIGN1cnJlbnQgb3ZlcmxheSBjb25maWd1cmF0aW9uLCB3aGljaCBpcyBpbW11dGFibGUuICovXG4gIGdldENvbmZpZygpOiBPdmVybGF5Q29uZmlnIHtcbiAgICByZXR1cm4gdGhpcy5fY29uZmlnO1xuICB9XG5cbiAgLyoqIFVwZGF0ZXMgdGhlIHBvc2l0aW9uIG9mIHRoZSBvdmVybGF5IGJhc2VkIG9uIHRoZSBwb3NpdGlvbiBzdHJhdGVneS4gKi9cbiAgdXBkYXRlUG9zaXRpb24oKTogdm9pZCB7XG4gICAgaWYgKHRoaXMuX3Bvc2l0aW9uU3RyYXRlZ3kpIHtcbiAgICAgIHRoaXMuX3Bvc2l0aW9uU3RyYXRlZ3kuYXBwbHkoKTtcbiAgICB9XG4gIH1cblxuICAvKiogU3dpdGNoZXMgdG8gYSBuZXcgcG9zaXRpb24gc3RyYXRlZ3kgYW5kIHVwZGF0ZXMgdGhlIG92ZXJsYXkgcG9zaXRpb24uICovXG4gIHVwZGF0ZVBvc2l0aW9uU3RyYXRlZ3koc3RyYXRlZ3k6IFBvc2l0aW9uU3RyYXRlZ3kpOiB2b2lkIHtcbiAgICBpZiAoc3RyYXRlZ3kgPT09IHRoaXMuX3Bvc2l0aW9uU3RyYXRlZ3kpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG5cbiAgICBpZiAodGhpcy5fcG9zaXRpb25TdHJhdGVneSkge1xuICAgICAgdGhpcy5fcG9zaXRpb25TdHJhdGVneS5kaXNwb3NlKCk7XG4gICAgfVxuXG4gICAgdGhpcy5fcG9zaXRpb25TdHJhdGVneSA9IHN0cmF0ZWd5O1xuXG4gICAgaWYgKHRoaXMuaGFzQXR0YWNoZWQoKSkge1xuICAgICAgc3RyYXRlZ3kuYXR0YWNoKHRoaXMpO1xuICAgICAgdGhpcy51cGRhdGVQb3NpdGlvbigpO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBVcGRhdGUgdGhlIHNpemUgcHJvcGVydGllcyBvZiB0aGUgb3ZlcmxheS4gKi9cbiAgdXBkYXRlU2l6ZShzaXplQ29uZmlnOiBPdmVybGF5U2l6ZUNvbmZpZyk6IHZvaWQge1xuICAgIHRoaXMuX2NvbmZpZyA9IHsuLi50aGlzLl9jb25maWcsIC4uLnNpemVDb25maWd9O1xuICAgIHRoaXMuX3VwZGF0ZUVsZW1lbnRTaXplKCk7XG4gIH1cblxuICAvKiogU2V0cyB0aGUgTFRSL1JUTCBkaXJlY3Rpb24gZm9yIHRoZSBvdmVybGF5LiAqL1xuICBzZXREaXJlY3Rpb24oZGlyOiBEaXJlY3Rpb24gfCBEaXJlY3Rpb25hbGl0eSk6IHZvaWQge1xuICAgIHRoaXMuX2NvbmZpZyA9IHsuLi50aGlzLl9jb25maWcsIGRpcmVjdGlvbjogZGlyfTtcbiAgICB0aGlzLl91cGRhdGVFbGVtZW50RGlyZWN0aW9uKCk7XG4gIH1cblxuICAvKiogQWRkIGEgQ1NTIGNsYXNzIG9yIGFuIGFycmF5IG9mIGNsYXNzZXMgdG8gdGhlIG92ZXJsYXkgcGFuZS4gKi9cbiAgYWRkUGFuZWxDbGFzcyhjbGFzc2VzOiBzdHJpbmcgfCBzdHJpbmdbXSk6IHZvaWQge1xuICAgIGlmICh0aGlzLl9wYW5lKSB7XG4gICAgICB0aGlzLl90b2dnbGVDbGFzc2VzKHRoaXMuX3BhbmUsIGNsYXNzZXMsIHRydWUpO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBSZW1vdmUgYSBDU1MgY2xhc3Mgb3IgYW4gYXJyYXkgb2YgY2xhc3NlcyBmcm9tIHRoZSBvdmVybGF5IHBhbmUuICovXG4gIHJlbW92ZVBhbmVsQ2xhc3MoY2xhc3Nlczogc3RyaW5nIHwgc3RyaW5nW10pOiB2b2lkIHtcbiAgICBpZiAodGhpcy5fcGFuZSkge1xuICAgICAgdGhpcy5fdG9nZ2xlQ2xhc3Nlcyh0aGlzLl9wYW5lLCBjbGFzc2VzLCBmYWxzZSk7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIFJldHVybnMgdGhlIGxheW91dCBkaXJlY3Rpb24gb2YgdGhlIG92ZXJsYXkgcGFuZWwuXG4gICAqL1xuICBnZXREaXJlY3Rpb24oKTogRGlyZWN0aW9uIHtcbiAgICBjb25zdCBkaXJlY3Rpb24gPSB0aGlzLl9jb25maWcuZGlyZWN0aW9uO1xuXG4gICAgaWYgKCFkaXJlY3Rpb24pIHtcbiAgICAgIHJldHVybiAnbHRyJztcbiAgICB9XG5cbiAgICByZXR1cm4gdHlwZW9mIGRpcmVjdGlvbiA9PT0gJ3N0cmluZycgPyBkaXJlY3Rpb24gOiBkaXJlY3Rpb24udmFsdWU7XG4gIH1cblxuICAvKiogU3dpdGNoZXMgdG8gYSBuZXcgc2Nyb2xsIHN0cmF0ZWd5LiAqL1xuICB1cGRhdGVTY3JvbGxTdHJhdGVneShzdHJhdGVneTogU2Nyb2xsU3RyYXRlZ3kpOiB2b2lkIHtcbiAgICBpZiAoc3RyYXRlZ3kgPT09IHRoaXMuX3Njcm9sbFN0cmF0ZWd5KSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgdGhpcy5fZGlzcG9zZVNjcm9sbFN0cmF0ZWd5KCk7XG4gICAgdGhpcy5fc2Nyb2xsU3RyYXRlZ3kgPSBzdHJhdGVneTtcblxuICAgIGlmICh0aGlzLmhhc0F0dGFjaGVkKCkpIHtcbiAgICAgIHN0cmF0ZWd5LmF0dGFjaCh0aGlzKTtcbiAgICAgIHN0cmF0ZWd5LmVuYWJsZSgpO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBVcGRhdGVzIHRoZSB0ZXh0IGRpcmVjdGlvbiBvZiB0aGUgb3ZlcmxheSBwYW5lbC4gKi9cbiAgcHJpdmF0ZSBfdXBkYXRlRWxlbWVudERpcmVjdGlvbigpIHtcbiAgICB0aGlzLl9ob3N0LnNldEF0dHJpYnV0ZSgnZGlyJywgdGhpcy5nZXREaXJlY3Rpb24oKSk7XG4gIH1cblxuICAvKiogVXBkYXRlcyB0aGUgc2l6ZSBvZiB0aGUgb3ZlcmxheSBlbGVtZW50IGJhc2VkIG9uIHRoZSBvdmVybGF5IGNvbmZpZy4gKi9cbiAgcHJpdmF0ZSBfdXBkYXRlRWxlbWVudFNpemUoKSB7XG4gICAgaWYgKCF0aGlzLl9wYW5lKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgY29uc3Qgc3R5bGUgPSB0aGlzLl9wYW5lLnN0eWxlO1xuXG4gICAgc3R5bGUud2lkdGggPSBjb2VyY2VDc3NQaXhlbFZhbHVlKHRoaXMuX2NvbmZpZy53aWR0aCk7XG4gICAgc3R5bGUuaGVpZ2h0ID0gY29lcmNlQ3NzUGl4ZWxWYWx1ZSh0aGlzLl9jb25maWcuaGVpZ2h0KTtcbiAgICBzdHlsZS5taW5XaWR0aCA9IGNvZXJjZUNzc1BpeGVsVmFsdWUodGhpcy5fY29uZmlnLm1pbldpZHRoKTtcbiAgICBzdHlsZS5taW5IZWlnaHQgPSBjb2VyY2VDc3NQaXhlbFZhbHVlKHRoaXMuX2NvbmZpZy5taW5IZWlnaHQpO1xuICAgIHN0eWxlLm1heFdpZHRoID0gY29lcmNlQ3NzUGl4ZWxWYWx1ZSh0aGlzLl9jb25maWcubWF4V2lkdGgpO1xuICAgIHN0eWxlLm1heEhlaWdodCA9IGNvZXJjZUNzc1BpeGVsVmFsdWUodGhpcy5fY29uZmlnLm1heEhlaWdodCk7XG4gIH1cblxuICAvKiogVG9nZ2xlcyB0aGUgcG9pbnRlciBldmVudHMgZm9yIHRoZSBvdmVybGF5IHBhbmUgZWxlbWVudC4gKi9cbiAgcHJpdmF0ZSBfdG9nZ2xlUG9pbnRlckV2ZW50cyhlbmFibGVQb2ludGVyOiBib29sZWFuKSB7XG4gICAgdGhpcy5fcGFuZS5zdHlsZS5wb2ludGVyRXZlbnRzID0gZW5hYmxlUG9pbnRlciA/ICdhdXRvJyA6ICdub25lJztcbiAgfVxuXG4gIC8qKiBBdHRhY2hlcyBhIGJhY2tkcm9wIGZvciB0aGlzIG92ZXJsYXkuICovXG4gIHByaXZhdGUgX2F0dGFjaEJhY2tkcm9wKCkge1xuICAgIGNvbnN0IHNob3dpbmdDbGFzcyA9ICdjZGstb3ZlcmxheS1iYWNrZHJvcC1zaG93aW5nJztcblxuICAgIHRoaXMuX2JhY2tkcm9wRWxlbWVudCA9IHRoaXMuX2RvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ2RpdicpO1xuICAgIHRoaXMuX2JhY2tkcm9wRWxlbWVudC5jbGFzc0xpc3QuYWRkKCdjZGstb3ZlcmxheS1iYWNrZHJvcCcpO1xuXG4gICAgaWYgKHRoaXMuX2NvbmZpZy5iYWNrZHJvcENsYXNzKSB7XG4gICAgICB0aGlzLl90b2dnbGVDbGFzc2VzKHRoaXMuX2JhY2tkcm9wRWxlbWVudCwgdGhpcy5fY29uZmlnLmJhY2tkcm9wQ2xhc3MsIHRydWUpO1xuICAgIH1cblxuICAgIC8vIEluc2VydCB0aGUgYmFja2Ryb3AgYmVmb3JlIHRoZSBwYW5lIGluIHRoZSBET00gb3JkZXIsXG4gICAgLy8gaW4gb3JkZXIgdG8gaGFuZGxlIHN0YWNrZWQgb3ZlcmxheXMgcHJvcGVybHkuXG4gICAgdGhpcy5faG9zdC5wYXJlbnRFbGVtZW50IS5pbnNlcnRCZWZvcmUodGhpcy5fYmFja2Ryb3BFbGVtZW50LCB0aGlzLl9ob3N0KTtcblxuICAgIC8vIEZvcndhcmQgYmFja2Ryb3AgY2xpY2tzIHN1Y2ggdGhhdCB0aGUgY29uc3VtZXIgb2YgdGhlIG92ZXJsYXkgY2FuIHBlcmZvcm0gd2hhdGV2ZXJcbiAgICAvLyBhY3Rpb24gZGVzaXJlZCB3aGVuIHN1Y2ggYSBjbGljayBvY2N1cnMgKHVzdWFsbHkgY2xvc2luZyB0aGUgb3ZlcmxheSkuXG4gICAgdGhpcy5fYmFja2Ryb3BFbGVtZW50LmFkZEV2ZW50TGlzdGVuZXIoJ2NsaWNrJywgdGhpcy5fYmFja2Ryb3BDbGlja0hhbmRsZXIpO1xuXG4gICAgLy8gQWRkIGNsYXNzIHRvIGZhZGUtaW4gdGhlIGJhY2tkcm9wIGFmdGVyIG9uZSBmcmFtZS5cbiAgICBpZiAodHlwZW9mIHJlcXVlc3RBbmltYXRpb25GcmFtZSAhPT0gJ3VuZGVmaW5lZCcpIHtcbiAgICAgIHRoaXMuX25nWm9uZS5ydW5PdXRzaWRlQW5ndWxhcigoKSA9PiB7XG4gICAgICAgIHJlcXVlc3RBbmltYXRpb25GcmFtZSgoKSA9PiB7XG4gICAgICAgICAgaWYgKHRoaXMuX2JhY2tkcm9wRWxlbWVudCkge1xuICAgICAgICAgICAgdGhpcy5fYmFja2Ryb3BFbGVtZW50LmNsYXNzTGlzdC5hZGQoc2hvd2luZ0NsYXNzKTtcbiAgICAgICAgICB9XG4gICAgICAgIH0pO1xuICAgICAgfSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMuX2JhY2tkcm9wRWxlbWVudC5jbGFzc0xpc3QuYWRkKHNob3dpbmdDbGFzcyk7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIFVwZGF0ZXMgdGhlIHN0YWNraW5nIG9yZGVyIG9mIHRoZSBlbGVtZW50LCBtb3ZpbmcgaXQgdG8gdGhlIHRvcCBpZiBuZWNlc3NhcnkuXG4gICAqIFRoaXMgaXMgcmVxdWlyZWQgaW4gY2FzZXMgd2hlcmUgb25lIG92ZXJsYXkgd2FzIGRldGFjaGVkLCB3aGlsZSBhbm90aGVyIG9uZSxcbiAgICogdGhhdCBzaG91bGQgYmUgYmVoaW5kIGl0LCB3YXMgZGVzdHJveWVkLiBUaGUgbmV4dCB0aW1lIGJvdGggb2YgdGhlbSBhcmUgb3BlbmVkLFxuICAgKiB0aGUgc3RhY2tpbmcgd2lsbCBiZSB3cm9uZywgYmVjYXVzZSB0aGUgZGV0YWNoZWQgZWxlbWVudCdzIHBhbmUgd2lsbCBzdGlsbCBiZVxuICAgKiBpbiBpdHMgb3JpZ2luYWwgRE9NIHBvc2l0aW9uLlxuICAgKi9cbiAgcHJpdmF0ZSBfdXBkYXRlU3RhY2tpbmdPcmRlcigpIHtcbiAgICBpZiAodGhpcy5faG9zdC5uZXh0U2libGluZykge1xuICAgICAgdGhpcy5faG9zdC5wYXJlbnROb2RlIS5hcHBlbmRDaGlsZCh0aGlzLl9ob3N0KTtcbiAgICB9XG4gIH1cblxuICAvKiogRGV0YWNoZXMgdGhlIGJhY2tkcm9wIChpZiBhbnkpIGFzc29jaWF0ZWQgd2l0aCB0aGUgb3ZlcmxheS4gKi9cbiAgZGV0YWNoQmFja2Ryb3AoKTogdm9pZCB7XG4gICAgbGV0IGJhY2tkcm9wVG9EZXRhY2ggPSB0aGlzLl9iYWNrZHJvcEVsZW1lbnQ7XG5cbiAgICBpZiAoIWJhY2tkcm9wVG9EZXRhY2gpIHtcbiAgICAgIHJldHVybjtcbiAgICB9XG5cbiAgICBsZXQgdGltZW91dElkOiBudW1iZXI7XG4gICAgbGV0IGZpbmlzaERldGFjaCA9ICgpID0+IHtcbiAgICAgIC8vIEl0IG1heSBub3QgYmUgYXR0YWNoZWQgdG8gYW55dGhpbmcgaW4gY2VydGFpbiBjYXNlcyAoZS5nLiB1bml0IHRlc3RzKS5cbiAgICAgIGlmIChiYWNrZHJvcFRvRGV0YWNoKSB7XG4gICAgICAgIGJhY2tkcm9wVG9EZXRhY2gucmVtb3ZlRXZlbnRMaXN0ZW5lcignY2xpY2snLCB0aGlzLl9iYWNrZHJvcENsaWNrSGFuZGxlcik7XG4gICAgICAgIGJhY2tkcm9wVG9EZXRhY2gucmVtb3ZlRXZlbnRMaXN0ZW5lcigndHJhbnNpdGlvbmVuZCcsIGZpbmlzaERldGFjaCk7XG5cbiAgICAgICAgaWYgKGJhY2tkcm9wVG9EZXRhY2gucGFyZW50Tm9kZSkge1xuICAgICAgICAgIGJhY2tkcm9wVG9EZXRhY2gucGFyZW50Tm9kZS5yZW1vdmVDaGlsZChiYWNrZHJvcFRvRGV0YWNoKTtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICAvLyBJdCBpcyBwb3NzaWJsZSB0aGF0IGEgbmV3IHBvcnRhbCBoYXMgYmVlbiBhdHRhY2hlZCB0byB0aGlzIG92ZXJsYXkgc2luY2Ugd2Ugc3RhcnRlZFxuICAgICAgLy8gcmVtb3ZpbmcgdGhlIGJhY2tkcm9wLiBJZiB0aGF0IGlzIHRoZSBjYXNlLCBvbmx5IGNsZWFyIHRoZSBiYWNrZHJvcCByZWZlcmVuY2UgaWYgaXRcbiAgICAgIC8vIGlzIHN0aWxsIHRoZSBzYW1lIGluc3RhbmNlIHRoYXQgd2Ugc3RhcnRlZCB0byByZW1vdmUuXG4gICAgICBpZiAodGhpcy5fYmFja2Ryb3BFbGVtZW50ID09IGJhY2tkcm9wVG9EZXRhY2gpIHtcbiAgICAgICAgdGhpcy5fYmFja2Ryb3BFbGVtZW50ID0gbnVsbDtcbiAgICAgIH1cblxuICAgICAgaWYgKHRoaXMuX2NvbmZpZy5iYWNrZHJvcENsYXNzKSB7XG4gICAgICAgIHRoaXMuX3RvZ2dsZUNsYXNzZXMoYmFja2Ryb3BUb0RldGFjaCEsIHRoaXMuX2NvbmZpZy5iYWNrZHJvcENsYXNzLCBmYWxzZSk7XG4gICAgICB9XG5cbiAgICAgIGNsZWFyVGltZW91dCh0aW1lb3V0SWQpO1xuICAgIH07XG5cbiAgICBiYWNrZHJvcFRvRGV0YWNoLmNsYXNzTGlzdC5yZW1vdmUoJ2Nkay1vdmVybGF5LWJhY2tkcm9wLXNob3dpbmcnKTtcblxuICAgIHRoaXMuX25nWm9uZS5ydW5PdXRzaWRlQW5ndWxhcigoKSA9PiB7XG4gICAgICBiYWNrZHJvcFRvRGV0YWNoIS5hZGRFdmVudExpc3RlbmVyKCd0cmFuc2l0aW9uZW5kJywgZmluaXNoRGV0YWNoKTtcbiAgICB9KTtcblxuICAgIC8vIElmIHRoZSBiYWNrZHJvcCBkb2Vzbid0IGhhdmUgYSB0cmFuc2l0aW9uLCB0aGUgYHRyYW5zaXRpb25lbmRgIGV2ZW50IHdvbid0IGZpcmUuXG4gICAgLy8gSW4gdGhpcyBjYXNlIHdlIG1ha2UgaXQgdW5jbGlja2FibGUgYW5kIHdlIHRyeSB0byByZW1vdmUgaXQgYWZ0ZXIgYSBkZWxheS5cbiAgICBiYWNrZHJvcFRvRGV0YWNoLnN0eWxlLnBvaW50ZXJFdmVudHMgPSAnbm9uZSc7XG5cbiAgICAvLyBSdW4gdGhpcyBvdXRzaWRlIHRoZSBBbmd1bGFyIHpvbmUgYmVjYXVzZSB0aGVyZSdzIG5vdGhpbmcgdGhhdCBBbmd1bGFyIGNhcmVzIGFib3V0LlxuICAgIC8vIElmIGl0IHdlcmUgdG8gcnVuIGluc2lkZSB0aGUgQW5ndWxhciB6b25lLCBldmVyeSB0ZXN0IHRoYXQgdXNlZCBPdmVybGF5IHdvdWxkIGhhdmUgdG8gYmVcbiAgICAvLyBlaXRoZXIgYXN5bmMgb3IgZmFrZUFzeW5jLlxuICAgIHRpbWVvdXRJZCA9IHRoaXMuX25nWm9uZS5ydW5PdXRzaWRlQW5ndWxhcigoKSA9PiBzZXRUaW1lb3V0KGZpbmlzaERldGFjaCwgNTAwKSk7XG4gIH1cblxuICAvKiogVG9nZ2xlcyBhIHNpbmdsZSBDU1MgY2xhc3Mgb3IgYW4gYXJyYXkgb2YgY2xhc3NlcyBvbiBhbiBlbGVtZW50LiAqL1xuICBwcml2YXRlIF90b2dnbGVDbGFzc2VzKGVsZW1lbnQ6IEhUTUxFbGVtZW50LCBjc3NDbGFzc2VzOiBzdHJpbmcgfCBzdHJpbmdbXSwgaXNBZGQ6IGJvb2xlYW4pIHtcbiAgICBjb25zdCBjbGFzc0xpc3QgPSBlbGVtZW50LmNsYXNzTGlzdDtcblxuICAgIGNvZXJjZUFycmF5KGNzc0NsYXNzZXMpLmZvckVhY2goY3NzQ2xhc3MgPT4ge1xuICAgICAgLy8gV2UgY2FuJ3QgZG8gYSBzcHJlYWQgaGVyZSwgYmVjYXVzZSBJRSBkb2Vzbid0IHN1cHBvcnQgc2V0dGluZyBtdWx0aXBsZSBjbGFzc2VzLlxuICAgICAgLy8gQWxzbyB0cnlpbmcgdG8gYWRkIGFuIGVtcHR5IHN0cmluZyB0byBhIERPTVRva2VuTGlzdCB3aWxsIHRocm93LlxuICAgICAgaWYgKGNzc0NsYXNzKSB7XG4gICAgICAgIGlzQWRkID8gY2xhc3NMaXN0LmFkZChjc3NDbGFzcykgOiBjbGFzc0xpc3QucmVtb3ZlKGNzc0NsYXNzKTtcbiAgICAgIH1cbiAgICB9KTtcbiAgfVxuXG4gIC8qKiBEZXRhY2hlcyB0aGUgb3ZlcmxheSBjb250ZW50IG5leHQgdGltZSB0aGUgem9uZSBzdGFiaWxpemVzLiAqL1xuICBwcml2YXRlIF9kZXRhY2hDb250ZW50V2hlblN0YWJsZSgpIHtcbiAgICAvLyBOb3JtYWxseSB3ZSB3b3VsZG4ndCBoYXZlIHRvIGV4cGxpY2l0bHkgcnVuIHRoaXMgb3V0c2lkZSB0aGUgYE5nWm9uZWAsIGhvd2V2ZXJcbiAgICAvLyBpZiB0aGUgY29uc3VtZXIgaXMgdXNpbmcgYHpvbmUtcGF0Y2gtcnhqc2AsIHRoZSBgU3Vic2NyaXB0aW9uLnVuc3Vic2NyaWJlYCBjYWxsIHdpbGxcbiAgICAvLyBiZSBwYXRjaGVkIHRvIHJ1biBpbnNpZGUgdGhlIHpvbmUsIHdoaWNoIHdpbGwgdGhyb3cgdXMgaW50byBhbiBpbmZpbml0ZSBsb29wLlxuICAgIHRoaXMuX25nWm9uZS5ydW5PdXRzaWRlQW5ndWxhcigoKSA9PiB7XG4gICAgICAvLyBXZSBjYW4ndCByZW1vdmUgdGhlIGhvc3QgaGVyZSBpbW1lZGlhdGVseSwgYmVjYXVzZSB0aGUgb3ZlcmxheSBwYW5lJ3MgY29udGVudFxuICAgICAgLy8gbWlnaHQgc3RpbGwgYmUgYW5pbWF0aW5nLiBUaGlzIHN0cmVhbSBoZWxwcyB1cyBhdm9pZCBpbnRlcnJ1cHRpbmcgdGhlIGFuaW1hdGlvblxuICAgICAgLy8gYnkgd2FpdGluZyBmb3IgdGhlIHBhbmUgdG8gYmVjb21lIGVtcHR5LlxuICAgICAgY29uc3Qgc3Vic2NyaXB0aW9uID0gdGhpcy5fbmdab25lLm9uU3RhYmxlXG4gICAgICAgIC5waXBlKHRha2VVbnRpbChtZXJnZSh0aGlzLl9hdHRhY2htZW50cywgdGhpcy5fZGV0YWNobWVudHMpKSlcbiAgICAgICAgLnN1YnNjcmliZSgoKSA9PiB7XG4gICAgICAgICAgLy8gTmVlZHMgYSBjb3VwbGUgb2YgY2hlY2tzIGZvciB0aGUgcGFuZSBhbmQgaG9zdCwgYmVjYXVzZVxuICAgICAgICAgIC8vIHRoZXkgbWF5IGhhdmUgYmVlbiByZW1vdmVkIGJ5IHRoZSB0aW1lIHRoZSB6b25lIHN0YWJpbGl6ZXMuXG4gICAgICAgICAgaWYgKCF0aGlzLl9wYW5lIHx8ICF0aGlzLl9ob3N0IHx8IHRoaXMuX3BhbmUuY2hpbGRyZW4ubGVuZ3RoID09PSAwKSB7XG4gICAgICAgICAgICBpZiAodGhpcy5fcGFuZSAmJiB0aGlzLl9jb25maWcucGFuZWxDbGFzcykge1xuICAgICAgICAgICAgICB0aGlzLl90b2dnbGVDbGFzc2VzKHRoaXMuX3BhbmUsIHRoaXMuX2NvbmZpZy5wYW5lbENsYXNzLCBmYWxzZSk7XG4gICAgICAgICAgICB9XG5cbiAgICAgICAgICAgIGlmICh0aGlzLl9ob3N0ICYmIHRoaXMuX2hvc3QucGFyZW50RWxlbWVudCkge1xuICAgICAgICAgICAgICB0aGlzLl9wcmV2aW91c0hvc3RQYXJlbnQgPSB0aGlzLl9ob3N0LnBhcmVudEVsZW1lbnQ7XG4gICAgICAgICAgICAgIHRoaXMuX3ByZXZpb3VzSG9zdFBhcmVudC5yZW1vdmVDaGlsZCh0aGlzLl9ob3N0KTtcbiAgICAgICAgICAgIH1cblxuICAgICAgICAgICAgc3Vic2NyaXB0aW9uLnVuc3Vic2NyaWJlKCk7XG4gICAgICAgICAgfVxuICAgICAgICB9KTtcbiAgICB9KTtcbiAgfVxuXG4gIC8qKiBEaXNwb3NlcyBvZiBhIHNjcm9sbCBzdHJhdGVneS4gKi9cbiAgcHJpdmF0ZSBfZGlzcG9zZVNjcm9sbFN0cmF0ZWd5KCkge1xuICAgIGNvbnN0IHNjcm9sbFN0cmF0ZWd5ID0gdGhpcy5fc2Nyb2xsU3RyYXRlZ3k7XG5cbiAgICBpZiAoc2Nyb2xsU3RyYXRlZ3kpIHtcbiAgICAgIHNjcm9sbFN0cmF0ZWd5LmRpc2FibGUoKTtcblxuICAgICAgaWYgKHNjcm9sbFN0cmF0ZWd5LmRldGFjaCkge1xuICAgICAgICBzY3JvbGxTdHJhdGVneS5kZXRhY2goKTtcbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cblxuXG4vKiogU2l6ZSBwcm9wZXJ0aWVzIGZvciBhbiBvdmVybGF5LiAqL1xuZXhwb3J0IGludGVyZmFjZSBPdmVybGF5U2l6ZUNvbmZpZyB7XG4gIHdpZHRoPzogbnVtYmVyIHwgc3RyaW5nO1xuICBoZWlnaHQ/OiBudW1iZXIgfCBzdHJpbmc7XG4gIG1pbldpZHRoPzogbnVtYmVyIHwgc3RyaW5nO1xuICBtaW5IZWlnaHQ/OiBudW1iZXIgfCBzdHJpbmc7XG4gIG1heFdpZHRoPzogbnVtYmVyIHwgc3RyaW5nO1xuICBtYXhIZWlnaHQ/OiBudW1iZXIgfCBzdHJpbmc7XG59XG4iXX0=