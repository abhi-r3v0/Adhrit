/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { coerceBooleanProperty } from '@angular/cdk/coercion';
import { DOCUMENT } from '@angular/common';
import { Directive, ElementRef, Inject, Injectable, Input, NgZone, } from '@angular/core';
import { take } from 'rxjs/operators';
import { InteractivityChecker } from '../interactivity-checker/interactivity-checker';
import * as i0 from "@angular/core";
import * as i1 from "../interactivity-checker/interactivity-checker";
import * as i2 from "@angular/common";
/**
 * Class that allows for trapping focus within a DOM element.
 *
 * This class currently uses a relatively simple approach to focus trapping.
 * It assumes that the tab order is the same as DOM order, which is not necessarily true.
 * Things like `tabIndex > 0`, flex `order`, and shadow roots can cause the two to misalign.
 *
 * @deprecated Use `ConfigurableFocusTrap` instead.
 * @breaking-change for 11.0.0 Remove this class.
 */
export class FocusTrap {
    constructor(_element, _checker, _ngZone, _document, deferAnchors = false) {
        this._element = _element;
        this._checker = _checker;
        this._ngZone = _ngZone;
        this._document = _document;
        this._hasAttached = false;
        // Event listeners for the anchors. Need to be regular functions so that we can unbind them later.
        this.startAnchorListener = () => this.focusLastTabbableElement();
        this.endAnchorListener = () => this.focusFirstTabbableElement();
        this._enabled = true;
        if (!deferAnchors) {
            this.attachAnchors();
        }
    }
    /** Whether the focus trap is active. */
    get enabled() { return this._enabled; }
    set enabled(value) {
        this._enabled = value;
        if (this._startAnchor && this._endAnchor) {
            this._toggleAnchorTabIndex(value, this._startAnchor);
            this._toggleAnchorTabIndex(value, this._endAnchor);
        }
    }
    /** Destroys the focus trap by cleaning up the anchors. */
    destroy() {
        const startAnchor = this._startAnchor;
        const endAnchor = this._endAnchor;
        if (startAnchor) {
            startAnchor.removeEventListener('focus', this.startAnchorListener);
            if (startAnchor.parentNode) {
                startAnchor.parentNode.removeChild(startAnchor);
            }
        }
        if (endAnchor) {
            endAnchor.removeEventListener('focus', this.endAnchorListener);
            if (endAnchor.parentNode) {
                endAnchor.parentNode.removeChild(endAnchor);
            }
        }
        this._startAnchor = this._endAnchor = null;
        this._hasAttached = false;
    }
    /**
     * Inserts the anchors into the DOM. This is usually done automatically
     * in the constructor, but can be deferred for cases like directives with `*ngIf`.
     * @returns Whether the focus trap managed to attach successfuly. This may not be the case
     * if the target element isn't currently in the DOM.
     */
    attachAnchors() {
        // If we're not on the browser, there can be no focus to trap.
        if (this._hasAttached) {
            return true;
        }
        this._ngZone.runOutsideAngular(() => {
            if (!this._startAnchor) {
                this._startAnchor = this._createAnchor();
                this._startAnchor.addEventListener('focus', this.startAnchorListener);
            }
            if (!this._endAnchor) {
                this._endAnchor = this._createAnchor();
                this._endAnchor.addEventListener('focus', this.endAnchorListener);
            }
        });
        if (this._element.parentNode) {
            this._element.parentNode.insertBefore(this._startAnchor, this._element);
            this._element.parentNode.insertBefore(this._endAnchor, this._element.nextSibling);
            this._hasAttached = true;
        }
        return this._hasAttached;
    }
    /**
     * Waits for the zone to stabilize, then either focuses the first element that the
     * user specified, or the first tabbable element.
     * @returns Returns a promise that resolves with a boolean, depending
     * on whether focus was moved successfuly.
     */
    focusInitialElementWhenReady() {
        return new Promise(resolve => {
            this._executeOnStable(() => resolve(this.focusInitialElement()));
        });
    }
    /**
     * Waits for the zone to stabilize, then focuses
     * the first tabbable element within the focus trap region.
     * @returns Returns a promise that resolves with a boolean, depending
     * on whether focus was moved successfuly.
     */
    focusFirstTabbableElementWhenReady() {
        return new Promise(resolve => {
            this._executeOnStable(() => resolve(this.focusFirstTabbableElement()));
        });
    }
    /**
     * Waits for the zone to stabilize, then focuses
     * the last tabbable element within the focus trap region.
     * @returns Returns a promise that resolves with a boolean, depending
     * on whether focus was moved successfuly.
     */
    focusLastTabbableElementWhenReady() {
        return new Promise(resolve => {
            this._executeOnStable(() => resolve(this.focusLastTabbableElement()));
        });
    }
    /**
     * Get the specified boundary element of the trapped region.
     * @param bound The boundary to get (start or end of trapped region).
     * @returns The boundary element.
     */
    _getRegionBoundary(bound) {
        // Contains the deprecated version of selector, for temporary backwards comparability.
        let markers = this._element.querySelectorAll(`[cdk-focus-region-${bound}], ` +
            `[cdkFocusRegion${bound}], ` +
            `[cdk-focus-${bound}]`);
        for (let i = 0; i < markers.length; i++) {
            // @breaking-change 8.0.0
            if (markers[i].hasAttribute(`cdk-focus-${bound}`)) {
                console.warn(`Found use of deprecated attribute 'cdk-focus-${bound}', ` +
                    `use 'cdkFocusRegion${bound}' instead. The deprecated ` +
                    `attribute will be removed in 8.0.0.`, markers[i]);
            }
            else if (markers[i].hasAttribute(`cdk-focus-region-${bound}`)) {
                console.warn(`Found use of deprecated attribute 'cdk-focus-region-${bound}', ` +
                    `use 'cdkFocusRegion${bound}' instead. The deprecated attribute ` +
                    `will be removed in 8.0.0.`, markers[i]);
            }
        }
        if (bound == 'start') {
            return markers.length ? markers[0] : this._getFirstTabbableElement(this._element);
        }
        return markers.length ?
            markers[markers.length - 1] : this._getLastTabbableElement(this._element);
    }
    /**
     * Focuses the element that should be focused when the focus trap is initialized.
     * @returns Whether focus was moved successfuly.
     */
    focusInitialElement() {
        // Contains the deprecated version of selector, for temporary backwards comparability.
        const redirectToElement = this._element.querySelector(`[cdk-focus-initial], ` +
            `[cdkFocusInitial]`);
        if (redirectToElement) {
            // @breaking-change 8.0.0
            if (redirectToElement.hasAttribute(`cdk-focus-initial`)) {
                console.warn(`Found use of deprecated attribute 'cdk-focus-initial', ` +
                    `use 'cdkFocusInitial' instead. The deprecated attribute ` +
                    `will be removed in 8.0.0`, redirectToElement);
            }
            // Warn the consumer if the element they've pointed to
            // isn't focusable, when not in production mode.
            if ((typeof ngDevMode === 'undefined' || ngDevMode) &&
                !this._checker.isFocusable(redirectToElement)) {
                console.warn(`Element matching '[cdkFocusInitial]' is not focusable.`, redirectToElement);
            }
            redirectToElement.focus();
            return true;
        }
        return this.focusFirstTabbableElement();
    }
    /**
     * Focuses the first tabbable element within the focus trap region.
     * @returns Whether focus was moved successfuly.
     */
    focusFirstTabbableElement() {
        const redirectToElement = this._getRegionBoundary('start');
        if (redirectToElement) {
            redirectToElement.focus();
        }
        return !!redirectToElement;
    }
    /**
     * Focuses the last tabbable element within the focus trap region.
     * @returns Whether focus was moved successfuly.
     */
    focusLastTabbableElement() {
        const redirectToElement = this._getRegionBoundary('end');
        if (redirectToElement) {
            redirectToElement.focus();
        }
        return !!redirectToElement;
    }
    /**
     * Checks whether the focus trap has successfuly been attached.
     */
    hasAttached() {
        return this._hasAttached;
    }
    /** Get the first tabbable element from a DOM subtree (inclusive). */
    _getFirstTabbableElement(root) {
        if (this._checker.isFocusable(root) && this._checker.isTabbable(root)) {
            return root;
        }
        // Iterate in DOM order. Note that IE doesn't have `children` for SVG so we fall
        // back to `childNodes` which includes text nodes, comments etc.
        let children = root.children || root.childNodes;
        for (let i = 0; i < children.length; i++) {
            let tabbableChild = children[i].nodeType === this._document.ELEMENT_NODE ?
                this._getFirstTabbableElement(children[i]) :
                null;
            if (tabbableChild) {
                return tabbableChild;
            }
        }
        return null;
    }
    /** Get the last tabbable element from a DOM subtree (inclusive). */
    _getLastTabbableElement(root) {
        if (this._checker.isFocusable(root) && this._checker.isTabbable(root)) {
            return root;
        }
        // Iterate in reverse DOM order.
        let children = root.children || root.childNodes;
        for (let i = children.length - 1; i >= 0; i--) {
            let tabbableChild = children[i].nodeType === this._document.ELEMENT_NODE ?
                this._getLastTabbableElement(children[i]) :
                null;
            if (tabbableChild) {
                return tabbableChild;
            }
        }
        return null;
    }
    /** Creates an anchor element. */
    _createAnchor() {
        const anchor = this._document.createElement('div');
        this._toggleAnchorTabIndex(this._enabled, anchor);
        anchor.classList.add('cdk-visually-hidden');
        anchor.classList.add('cdk-focus-trap-anchor');
        anchor.setAttribute('aria-hidden', 'true');
        return anchor;
    }
    /**
     * Toggles the `tabindex` of an anchor, based on the enabled state of the focus trap.
     * @param isEnabled Whether the focus trap is enabled.
     * @param anchor Anchor on which to toggle the tabindex.
     */
    _toggleAnchorTabIndex(isEnabled, anchor) {
        // Remove the tabindex completely, rather than setting it to -1, because if the
        // element has a tabindex, the user might still hit it when navigating with the arrow keys.
        isEnabled ? anchor.setAttribute('tabindex', '0') : anchor.removeAttribute('tabindex');
    }
    /**
     * Toggles the`tabindex` of both anchors to either trap Tab focus or allow it to escape.
     * @param enabled: Whether the anchors should trap Tab.
     */
    toggleAnchors(enabled) {
        if (this._startAnchor && this._endAnchor) {
            this._toggleAnchorTabIndex(enabled, this._startAnchor);
            this._toggleAnchorTabIndex(enabled, this._endAnchor);
        }
    }
    /** Executes a function when the zone is stable. */
    _executeOnStable(fn) {
        if (this._ngZone.isStable) {
            fn();
        }
        else {
            this._ngZone.onStable.pipe(take(1)).subscribe(fn);
        }
    }
}
/**
 * Factory that allows easy instantiation of focus traps.
 * @deprecated Use `ConfigurableFocusTrapFactory` instead.
 * @breaking-change for 11.0.0 Remove this class.
 */
export class FocusTrapFactory {
    constructor(_checker, _ngZone, _document) {
        this._checker = _checker;
        this._ngZone = _ngZone;
        this._document = _document;
    }
    /**
     * Creates a focus-trapped region around the given element.
     * @param element The element around which focus will be trapped.
     * @param deferCaptureElements Defers the creation of focus-capturing elements to be done
     *     manually by the user.
     * @returns The created focus trap instance.
     */
    create(element, deferCaptureElements = false) {
        return new FocusTrap(element, this._checker, this._ngZone, this._document, deferCaptureElements);
    }
}
FocusTrapFactory.ɵprov = i0.ɵɵdefineInjectable({ factory: function FocusTrapFactory_Factory() { return new FocusTrapFactory(i0.ɵɵinject(i1.InteractivityChecker), i0.ɵɵinject(i0.NgZone), i0.ɵɵinject(i2.DOCUMENT)); }, token: FocusTrapFactory, providedIn: "root" });
FocusTrapFactory.decorators = [
    { type: Injectable, args: [{ providedIn: 'root' },] }
];
FocusTrapFactory.ctorParameters = () => [
    { type: InteractivityChecker },
    { type: NgZone },
    { type: undefined, decorators: [{ type: Inject, args: [DOCUMENT,] }] }
];
/** Directive for trapping focus within a region. */
export class CdkTrapFocus {
    constructor(_elementRef, _focusTrapFactory, _document) {
        this._elementRef = _elementRef;
        this._focusTrapFactory = _focusTrapFactory;
        /** Previously focused element to restore focus to upon destroy when using autoCapture. */
        this._previouslyFocusedElement = null;
        this._document = _document;
        this.focusTrap = this._focusTrapFactory.create(this._elementRef.nativeElement, true);
    }
    /** Whether the focus trap is active. */
    get enabled() { return this.focusTrap.enabled; }
    set enabled(value) { this.focusTrap.enabled = coerceBooleanProperty(value); }
    /**
     * Whether the directive should automatially move focus into the trapped region upon
     * initialization and return focus to the previous activeElement upon destruction.
     */
    get autoCapture() { return this._autoCapture; }
    set autoCapture(value) { this._autoCapture = coerceBooleanProperty(value); }
    ngOnDestroy() {
        this.focusTrap.destroy();
        // If we stored a previously focused element when using autoCapture, return focus to that
        // element now that the trapped region is being destroyed.
        if (this._previouslyFocusedElement) {
            this._previouslyFocusedElement.focus();
            this._previouslyFocusedElement = null;
        }
    }
    ngAfterContentInit() {
        this.focusTrap.attachAnchors();
        if (this.autoCapture) {
            this._captureFocus();
        }
    }
    ngDoCheck() {
        if (!this.focusTrap.hasAttached()) {
            this.focusTrap.attachAnchors();
        }
    }
    ngOnChanges(changes) {
        const autoCaptureChange = changes['autoCapture'];
        if (autoCaptureChange && !autoCaptureChange.firstChange && this.autoCapture &&
            this.focusTrap.hasAttached()) {
            this._captureFocus();
        }
    }
    _captureFocus() {
        this._previouslyFocusedElement = this._document.activeElement;
        this.focusTrap.focusInitialElementWhenReady();
    }
}
CdkTrapFocus.decorators = [
    { type: Directive, args: [{
                selector: '[cdkTrapFocus]',
                exportAs: 'cdkTrapFocus',
            },] }
];
CdkTrapFocus.ctorParameters = () => [
    { type: ElementRef },
    { type: FocusTrapFactory },
    { type: undefined, decorators: [{ type: Inject, args: [DOCUMENT,] }] }
];
CdkTrapFocus.propDecorators = {
    enabled: [{ type: Input, args: ['cdkTrapFocus',] }],
    autoCapture: [{ type: Input, args: ['cdkTrapFocusAutoCapture',] }]
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZm9jdXMtdHJhcC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvYTExeS9mb2N1cy10cmFwL2ZvY3VzLXRyYXAudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFlLHFCQUFxQixFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFDMUUsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLGlCQUFpQixDQUFDO0FBQ3pDLE9BQU8sRUFFTCxTQUFTLEVBQ1QsVUFBVSxFQUNWLE1BQU0sRUFDTixVQUFVLEVBQ1YsS0FBSyxFQUNMLE1BQU0sR0FLUCxNQUFNLGVBQWUsQ0FBQztBQUN2QixPQUFPLEVBQUMsSUFBSSxFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFDcEMsT0FBTyxFQUFDLG9CQUFvQixFQUFDLE1BQU0sZ0RBQWdELENBQUM7Ozs7QUFHcEY7Ozs7Ozs7OztHQVNHO0FBQ0gsTUFBTSxPQUFPLFNBQVM7SUFxQnBCLFlBQ1csUUFBcUIsRUFDdEIsUUFBOEIsRUFDN0IsT0FBZSxFQUNmLFNBQW1CLEVBQzVCLFlBQVksR0FBRyxLQUFLO1FBSlgsYUFBUSxHQUFSLFFBQVEsQ0FBYTtRQUN0QixhQUFRLEdBQVIsUUFBUSxDQUFzQjtRQUM3QixZQUFPLEdBQVAsT0FBTyxDQUFRO1FBQ2YsY0FBUyxHQUFULFNBQVMsQ0FBVTtRQXRCdEIsaUJBQVksR0FBRyxLQUFLLENBQUM7UUFFN0Isa0dBQWtHO1FBQ3hGLHdCQUFtQixHQUFHLEdBQUcsRUFBRSxDQUFDLElBQUksQ0FBQyx3QkFBd0IsRUFBRSxDQUFDO1FBQzVELHNCQUFpQixHQUFHLEdBQUcsRUFBRSxDQUFDLElBQUksQ0FBQyx5QkFBeUIsRUFBRSxDQUFDO1FBWTNELGFBQVEsR0FBWSxJQUFJLENBQUM7UUFTakMsSUFBSSxDQUFDLFlBQVksRUFBRTtZQUNqQixJQUFJLENBQUMsYUFBYSxFQUFFLENBQUM7U0FDdEI7SUFD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aUJBQWlCLElBQUksQ0FBQyxpQkFBaUIsQ0FBQyxXQUFXLElBQUksSUFBSSxDQUFDLFdBQVc7WUFDdkUsSUFBSSxDQUFDLFNBQVMsQ0FBQyxXQUFXLEVBQUUsRUFBRTtZQUNoQyxJQUFJLENBQUMsYUFBYSxFQUFFLENBQUM7U0FDdEI7SUFDSCxDQUFDO0lBRU8sYUFBYTtRQUNuQixJQUFJLENBQUMseUJBQXlCLEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQyxhQUE0QixDQUFDO1FBQzdFLElBQUksQ0FBQyxTQUFTLENBQUMsNEJBQTRCLEVBQUUsQ0FBQztJQUNoRCxDQUFDOzs7WUF6RUYsU0FBUyxTQUFDO2dCQUNULFFBQVEsRUFBRSxnQkFBZ0I7Z0JBQzFCLFFBQVEsRUFBRSxjQUFjO2FBQ3pCOzs7WUFqWEMsVUFBVTtZQTJZcUIsZ0JBQWdCOzRDQUMxQyxNQUFNLFNBQUMsUUFBUTs7O3NCQWhCbkIsS0FBSyxTQUFDLGNBQWM7MEJBUXBCLEtBQUssU0FBQyx5QkFBeUIiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtCb29sZWFuSW5wdXQsIGNvZXJjZUJvb2xlYW5Qcm9wZXJ0eX0gZnJvbSAnQGFuZ3VsYXIvY2RrL2NvZXJjaW9uJztcbmltcG9ydCB7RE9DVU1FTlR9IGZyb20gJ0Bhbmd1bGFyL2NvbW1vbic7XG5pbXBvcnQge1xuICBBZnRlckNvbnRlbnRJbml0LFxuICBEaXJlY3RpdmUsXG4gIEVsZW1lbnRSZWYsXG4gIEluamVjdCxcbiAgSW5qZWN0YWJsZSxcbiAgSW5wdXQsXG4gIE5nWm9uZSxcbiAgT25EZXN0cm95LFxuICBEb0NoZWNrLFxuICBTaW1wbGVDaGFuZ2VzLFxuICBPbkNoYW5nZXMsXG59IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHt0YWtlfSBmcm9tICdyeGpzL29wZXJhdG9ycyc7XG5pbXBvcnQge0ludGVyYWN0aXZpdHlDaGVja2VyfSBmcm9tICcuLi9pbnRlcmFjdGl2aXR5LWNoZWNrZXIvaW50ZXJhY3Rpdml0eS1jaGVja2VyJztcblxuXG4vKipcbiAqIENsYXNzIHRoYXQgYWxsb3dzIGZvciB0cmFwcGluZyBmb2N1cyB3aXRoaW4gYSBET00gZWxlbWVudC5cbiAqXG4gKiBUaGlzIGNsYXNzIGN1cnJlbnRseSB1c2VzIGEgcmVsYXRpdmVseSBzaW1wbGUgYXBwcm9hY2ggdG8gZm9jdXMgdHJhcHBpbmcuXG4gKiBJdCBhc3N1bWVzIHRoYXQgdGhlIHRhYiBvcmRlciBpcyB0aGUgc2FtZSBhcyBET00gb3JkZXIsIHdoaWNoIGlzIG5vdCBuZWNlc3NhcmlseSB0cnVlLlxuICogVGhpbmdzIGxpa2UgYHRhYkluZGV4ID4gMGAsIGZsZXggYG9yZGVyYCwgYW5kIHNoYWRvdyByb290cyBjYW4gY2F1c2UgdGhlIHR3byB0byBtaXNhbGlnbi5cbiAqXG4gKiBAZGVwcmVjYXRlZCBVc2UgYENvbmZpZ3VyYWJsZUZvY3VzVHJhcGAgaW5zdGVhZC5cbiAqIEBicmVha2luZy1jaGFuZ2UgZm9yIDExLjAuMCBSZW1vdmUgdGhpcyBjbGFzcy5cbiAqL1xuZXhwb3J0IGNsYXNzIEZvY3VzVHJhcCB7XG4gIHByaXZhdGUgX3N0YXJ0QW5jaG9yOiBIVE1MRWxlbWVudCB8IG51bGw7XG4gIHByaXZhdGUgX2VuZEFuY2hvcjogSFRNTEVsZW1lbnQgfCBudWxsO1xuICBwcml2YXRlIF9oYXNBdHRhY2hlZCA9IGZhbHNlO1xuXG4gIC8vIEV2ZW50IGxpc3RlbmVycyBmb3IgdGhlIGFuY2hvcnMuIE5lZWQgdG8gYmUgcmVndWxhciBmdW5jdGlvbnMgc28gdGhhdCB3ZSBjYW4gdW5iaW5kIHRoZW0gbGF0ZXIuXG4gIHByb3RlY3RlZCBzdGFydEFuY2hvckxpc3RlbmVyID0gKCkgPT4gdGhpcy5mb2N1c0xhc3RUYWJiYWJsZUVsZW1lbnQoKTtcbiAgcHJvdGVjdGVkIGVuZEFuY2hvckxpc3RlbmVyID0gKCkgPT4gdGhpcy5mb2N1c0ZpcnN0VGFiYmFibGVFbGVtZW50KCk7XG5cbiAgLyoqIFdoZXRoZXIgdGhlIGZvY3VzIHRyYXAgaXMgYWN0aXZlLiAqL1xuICBnZXQgZW5hYmxlZCgpOiBib29sZWFuIHsgcmV0dXJuIHRoaXMuX2VuYWJsZWQ7IH1cbiAgc2V0IGVuYWJsZWQodmFsdWU6IGJvb2xlYW4pIHtcbiAgICB0aGlzLl9lbmFibGVkID0gdmFsdWU7XG5cbiAgICBpZiAodGhpcy5fc3RhcnRBbmNob3IgJiYgdGhpcy5fZW5kQW5jaG9yKSB7XG4gICAgICB0aGlzLl90b2dnbGVBbmNob3JUYWJJbmRleCh2YWx1ZSwgdGhpcy5fc3RhcnRBbmNob3IpO1xuICAgICAgdGhpcy5fdG9nZ2xlQW5jaG9yVGFiSW5kZXgodmFsdWUsIHRoaXMuX2VuZEFuY2hvcik7XG4gICAgfVxuICB9XG4gIHByb3RlY3RlZCBfZW5hYmxlZDogYm9vbGVhbiA9IHRydWU7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgcmVhZG9ubHkgX2VsZW1lbnQ6IEhUTUxFbGVtZW50LFxuICAgIHByaXZhdGUgX2NoZWNrZXI6IEludGVyYWN0aXZpdHlDaGVja2VyLFxuICAgIHJlYWRvbmx5IF9uZ1pvbmU6IE5nWm9uZSxcbiAgICByZWFkb25seSBfZG9jdW1lbnQ6IERvY3VtZW50LFxuICAgIGRlZmVyQW5jaG9ycyA9IGZhbHNlKSB7XG5cbiAgICBpZiAoIWRlZmVyQW5jaG9ycykge1xuICAgICAgdGhpcy5hdHRhY2hBbmNob3JzKCk7XG4gICAgfVxuICB9XG5cbiAgLyoqIERlc3Ryb3lzIHRoZSBmb2N1cyB0cmFwIGJ5IGNsZWFuaW5nIHVwIHRoZSBhbmNob3JzLiAqL1xuICBkZXN0cm95KCkge1xuICAgIGNvbnN0IHN0YXJ0QW5jaG9yID0gdGhpcy5fc3RhcnRBbmNob3I7XG4gICAgY29uc3QgZW5kQW5jaG9yID0gdGhpcy5fZW5kQW5jaG9yO1xuXG4gICAgaWYgKHN0YXJ0QW5jaG9yKSB7XG4gICAgICBzdGFydEFuY2hvci5yZW1vdmVFdmVudExpc3RlbmVyKCdmb2N1cycsIHRoaXMuc3RhcnRBbmNob3JMaXN0ZW5lcik7XG5cbiAgICAgIGlmIChzdGFydEFuY2hvci5wYXJlbnROb2RlKSB7XG4gICAgICAgIHN0YXJ0QW5jaG9yLnBhcmVudE5vZGUucmVtb3ZlQ2hpbGQoc3RhcnRBbmNob3IpO1xuICAgICAgfVxuICAgIH1cblxuICAgIGlmIChlbmRBbmNob3IpIHtcbiAgICAgIGVuZEFuY2hvci5yZW1vdmVFdmVudExpc3RlbmVyKCdmb2N1cycsIHRoaXMuZW5kQW5jaG9yTGlzdGVuZXIpO1xuXG4gICAgICBpZiAoZW5kQW5jaG9yLnBhcmVudE5vZGUpIHtcbiAgICAgICAgZW5kQW5jaG9yLnBhcmVudE5vZGUucmVtb3ZlQ2hpbGQoZW5kQW5jaG9yKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICB0aGlzLl9zdGFydEFuY2hvciA9IHRoaXMuX2VuZEFuY2hvciA9IG51bGw7XG4gICAgdGhpcy5faGFzQXR0YWNoZWQgPSBmYWxzZTtcbiAgfVxuXG4gIC8qKlxuICAgKiBJbnNlcnRzIHRoZSBhbmNob3JzIGludG8gdGhlIERPTS4gVGhpcyBpcyB1c3VhbGx5IGRvbmUgYXV0b21hdGljYWxseVxuICAgKiBpbiB0aGUgY29uc3RydWN0b3IsIGJ1dCBjYW4gYmUgZGVmZXJyZWQgZm9yIGNhc2VzIGxpa2UgZGlyZWN0aXZlcyB3aXRoIGAqbmdJZmAuXG4gICAqIEByZXR1cm5zIFdoZXRoZXIgdGhlIGZvY3VzIHRyYXAgbWFuYWdlZCB0byBhdHRhY2ggc3VjY2Vzc2Z1bHkuIFRoaXMgbWF5IG5vdCBiZSB0aGUgY2FzZVxuICAgKiBpZiB0aGUgdGFyZ2V0IGVsZW1lbnQgaXNuJ3QgY3VycmVudGx5IGluIHRoZSBET00uXG4gICAqL1xuICBhdHRhY2hBbmNob3JzKCk6IGJvb2xlYW4ge1xuICAgIC8vIElmIHdlJ3JlIG5vdCBvbiB0aGUgYnJvd3NlciwgdGhlcmUgY2FuIGJlIG5vIGZvY3VzIHRvIHRyYXAuXG4gICAgaWYgKHRoaXMuX2hhc0F0dGFjaGVkKSB7XG4gICAgICByZXR1cm4gdHJ1ZTtcbiAgICB9XG5cbiAgICB0aGlzLl9uZ1pvbmUucnVuT3V0c2lkZUFuZ3VsYXIoKCkgPT4ge1xuICAgICAgaWYgKCF0aGlzLl9zdGFydEFuY2hvcikge1xuICAgICAgICB0aGlzLl9zdGFydEFuY2hvciA9IHRoaXMuX2NyZWF0ZUFuY2hvcigpO1xuICAgICAgICB0aGlzLl9zdGFydEFuY2hvciEuYWRkRXZlbnRMaXN0ZW5lcignZm9jdXMnLCB0aGlzLnN0YXJ0QW5jaG9yTGlzdGVuZXIpO1xuICAgICAgfVxuXG4gICAgICBpZiAoIXRoaXMuX2VuZEFuY2hvcikge1xuICAgICAgICB0aGlzLl9lbmRBbmNob3IgPSB0aGlzLl9jcmVhdGVBbmNob3IoKTtcbiAgICAgICAgdGhpcy5fZW5kQW5jaG9yIS5hZGRFdmVudExpc3RlbmVyKCdmb2N1cycsIHRoaXMuZW5kQW5jaG9yTGlzdGVuZXIpO1xuICAgICAgfVxuICAgIH0pO1xuXG4gICAgaWYgKHRoaXMuX2VsZW1lbnQucGFyZW50Tm9kZSkge1xuICAgICAgdGhpcy5fZWxlbWVudC5wYXJlbnROb2RlLmluc2VydEJlZm9yZSh0aGlzLl9zdGFydEFuY2hvciEsIHRoaXMuX2VsZW1lbnQpO1xuICAgICAgdGhpcy5fZWxlbWVudC5wYXJlbnROb2RlLmluc2VydEJlZm9yZSh0aGlzLl9lbmRBbmNob3IhLCB0aGlzLl9lbGVtZW50Lm5leHRTaWJsaW5nKTtcbiAgICAgIHRoaXMuX2hhc0F0dGFjaGVkID0gdHJ1ZTtcbiAgICB9XG5cbiAgICByZXR1cm4gdGhpcy5faGFzQXR0YWNoZWQ7XG4gIH1cblxuICAvKipcbiAgICogV2FpdHMgZm9yIHRoZSB6b25lIHRvIHN0YWJpbGl6ZSwgdGhlbiBlaXRoZXIgZm9jdXNlcyB0aGUgZmlyc3QgZWxlbWVudCB0aGF0IHRoZVxuICAgKiB1c2VyIHNwZWNpZmllZCwgb3IgdGhlIGZpcnN0IHRhYmJhYmxlIGVsZW1lbnQuXG4gICAqIEByZXR1cm5zIFJldHVybnMgYSBwcm9taXNlIHRoYXQgcmVzb2x2ZXMgd2l0aCBhIGJvb2xlYW4sIGRlcGVuZGluZ1xuICAgKiBvbiB3aGV0aGVyIGZvY3VzIHdhcyBtb3ZlZCBzdWNjZXNzZnVseS5cbiAgICovXG4gIGZvY3VzSW5pdGlhbEVsZW1lbnRXaGVuUmVhZHkoKTogUHJvbWlzZTxib29sZWFuPiB7XG4gICAgcmV0dXJuIG5ldyBQcm9taXNlPGJvb2xlYW4+KHJlc29sdmUgPT4ge1xuICAgICAgdGhpcy5fZXhlY3V0ZU9uU3RhYmxlKCgpID0+IHJlc29sdmUodGhpcy5mb2N1c0luaXRpYWxFbGVtZW50KCkpKTtcbiAgICB9KTtcbiAgfVxuXG4gIC8qKlxuICAgKiBXYWl0cyBmb3IgdGhlIHpvbmUgdG8gc3RhYmlsaXplLCB0aGVuIGZvY3VzZXNcbiAgICogdGhlIGZpcnN0IHRhYmJhYmxlIGVsZW1lbnQgd2l0aGluIHRoZSBmb2N1cyB0cmFwIHJlZ2lvbi5cbiAgICogQHJldHVybnMgUmV0dXJucyBhIHByb21pc2UgdGhhdCByZXNvbHZlcyB3aXRoIGEgYm9vbGVhbiwgZGVwZW5kaW5nXG4gICAqIG9uIHdoZXRoZXIgZm9jdXMgd2FzIG1vdmVkIHN1Y2Nlc3NmdWx5LlxuICAgKi9cbiAgZm9jdXNGaXJzdFRhYmJhYmxlRWxlbWVudFdoZW5SZWFkeSgpOiBQcm9taXNlPGJvb2xlYW4+IHtcbiAgICByZXR1cm4gbmV3IFByb21pc2U8Ym9vbGVhbj4ocmVzb2x2ZSA9PiB7XG4gICAgICB0aGlzLl9leGVjdXRlT25TdGFibGUoKCkgPT4gcmVzb2x2ZSh0aGlzLmZvY3VzRmlyc3RUYWJiYWJsZUVsZW1lbnQoKSkpO1xuICAgIH0pO1xuICB9XG5cbiAgLyoqXG4gICAqIFdhaXRzIGZvciB0aGUgem9uZSB0byBzdGFiaWxpemUsIHRoZW4gZm9jdXNlc1xuICAgKiB0aGUgbGFzdCB0YWJiYWJsZSBlbGVtZW50IHdpdGhpbiB0aGUgZm9jdXMgdHJhcCByZWdpb24uXG4gICAqIEByZXR1cm5zIFJldHVybnMgYSBwcm9taXNlIHRoYXQgcmVzb2x2ZXMgd2l0aCBhIGJvb2xlYW4sIGRlcGVuZGluZ1xuICAgKiBvbiB3aGV0aGVyIGZvY3VzIHdhcyBtb3ZlZCBzdWNjZXNzZnVseS5cbiAgICovXG4gIGZvY3VzTGFzdFRhYmJhYmxlRWxlbWVudFdoZW5SZWFkeSgpOiBQcm9taXNlPGJvb2xlYW4+IHtcbiAgICByZXR1cm4gbmV3IFByb21pc2U8Ym9vbGVhbj4ocmVzb2x2ZSA9PiB7XG4gICAgICB0aGlzLl9leGVjdXRlT25TdGFibGUoKCkgPT4gcmVzb2x2ZSh0aGlzLmZvY3VzTGFzdFRhYmJhYmxlRWxlbWVudCgpKSk7XG4gICAgfSk7XG4gIH1cblxuICAvKipcbiAgICogR2V0IHRoZSBzcGVjaWZpZWQgYm91bmRhcnkgZWxlbWVudCBvZiB0aGUgdHJhcHBlZCByZWdpb24uXG4gICAqIEBwYXJhbSBib3VuZCBUaGUgYm91bmRhcnkgdG8gZ2V0IChzdGFydCBvciBlbmQgb2YgdHJhcHBlZCByZWdpb24pLlxuICAgKiBAcmV0dXJucyBUaGUgYm91bmRhcnkgZWxlbWVudC5cbiAgICovXG4gIHByaXZhdGUgX2dldFJlZ2lvbkJvdW5kYXJ5KGJvdW5kOiAnc3RhcnQnIHwgJ2VuZCcpOiBIVE1MRWxlbWVudCB8IG51bGwge1xuICAgIC8vIENvbnRhaW5zIHRoZSBkZXByZWNhdGVkIHZlcnNpb24gb2Ygc2VsZWN0b3IsIGZvciB0ZW1wb3JhcnkgYmFja3dhcmRzIGNvbXBhcmFiaWxpdHkuXG4gICAgbGV0IG1hcmtlcnMgPSB0aGlzLl9lbGVtZW50LnF1ZXJ5U2VsZWN0b3JBbGwoYFtjZGstZm9jdXMtcmVnaW9uLSR7Ym91bmR9XSwgYCArXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYFtjZGtGb2N1c1JlZ2lvbiR7Ym91bmR9XSwgYCArXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYFtjZGstZm9jdXMtJHtib3VuZH1dYCkgYXMgTm9kZUxpc3RPZjxIVE1MRWxlbWVudD47XG5cbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IG1hcmtlcnMubGVuZ3RoOyBpKyspIHtcbiAgICAgIC8vIEBicmVha2luZy1jaGFuZ2UgOC4wLjBcbiAgICAgIGlmIChtYXJrZXJzW2ldLmhhc0F0dHJpYnV0ZShgY2RrLWZvY3VzLSR7Ym91bmR9YCkpIHtcbiAgICAgICAgY29uc29sZS53YXJuKGBGb3VuZCB1c2Ugb2YgZGVwcmVjYXRlZCBhdHRyaWJ1dGUgJ2Nkay1mb2N1cy0ke2JvdW5kfScsIGAgK1xuICAgICAgICAgICAgICAgICAgICAgYHVzZSAnY2RrRm9jdXNSZWdpb24ke2JvdW5kfScgaW5zdGVhZC4gVGhlIGRlcHJlY2F0ZWQgYCArXG4gICAgICAgICAgICAgICAgICAgICBgYXR0cmlidXRlIHdpbGwgYmUgcmVtb3ZlZCBpbiA4LjAuMC5gLCBtYXJrZXJzW2ldKTtcbiAgICAgIH0gZWxzZSBpZiAobWFya2Vyc1tpXS5oYXNBdHRyaWJ1dGUoYGNkay1mb2N1cy1yZWdpb24tJHtib3VuZH1gKSkge1xuICAgICAgICBjb25zb2xlLndhcm4oYEZvdW5kIHVzZSBvZiBkZXByZWNhdGVkIGF0dHJpYnV0ZSAnY2RrLWZvY3VzLXJlZ2lvbi0ke2JvdW5kfScsIGAgK1xuICAgICAgICAgICAgICAgICAgICAgYHVzZSAnY2RrRm9jdXNSZWdpb24ke2JvdW5kfScgaW5zdGVhZC4gVGhlIGRlcHJlY2F0ZWQgYXR0cmlidXRlIGAgK1xuICAgICAgICAgICAgICAgICAgICAgYHdpbGwgYmUgcmVtb3ZlZCBpbiA4LjAuMC5gLCBtYXJrZXJzW2ldKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICBpZiAoYm91bmQgPT0gJ3N0YXJ0Jykge1xuICAgICAgcmV0dXJuIG1hcmtlcnMubGVuZ3RoID8gbWFya2Vyc1swXSA6IHRoaXMuX2dldEZpcnN0VGFiYmFibGVFbGVtZW50KHRoaXMuX2VsZW1lbnQpO1xuICAgIH1cbiAgICByZXR1cm4gbWFya2Vycy5sZW5ndGggP1xuICAgICAgICBtYXJrZXJzW21hcmtlcnMubGVuZ3RoIC0gMV0gOiB0aGlzLl9nZXRMYXN0VGFiYmFibGVFbGVtZW50KHRoaXMuX2VsZW1lbnQpO1xuICB9XG5cbiAgLyoqXG4gICAqIEZvY3VzZXMgdGhlIGVsZW1lbnQgdGhhdCBzaG91bGQgYmUgZm9jdXNlZCB3aGVuIHRoZSBmb2N1cyB0cmFwIGlzIGluaXRpYWxpemVkLlxuICAgKiBAcmV0dXJucyBXaGV0aGVyIGZvY3VzIHdhcyBtb3ZlZCBzdWNjZXNzZnVseS5cbiAgICovXG4gIGZvY3VzSW5pdGlhbEVsZW1lbnQoKTogYm9vbGVhbiB7XG4gICAgLy8gQ29udGFpbnMgdGhlIGRlcHJlY2F0ZWQgdmVyc2lvbiBvZiBzZWxlY3RvciwgZm9yIHRlbXBvcmFyeSBiYWNrd2FyZHMgY29tcGFyYWJpbGl0eS5cbiAgICBjb25zdCByZWRpcmVjdFRvRWxlbWVudCA9IHRoaXMuX2VsZW1lbnQucXVlcnlTZWxlY3RvcihgW2Nkay1mb2N1cy1pbml0aWFsXSwgYCArXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYFtjZGtGb2N1c0luaXRpYWxdYCkgYXMgSFRNTEVsZW1lbnQ7XG5cbiAgICBpZiAocmVkaXJlY3RUb0VsZW1lbnQpIHtcbiAgICAgIC8vIEBicmVha2luZy1jaGFuZ2UgOC4wLjBcbiAgICAgIGlmIChyZWRpcmVjdFRvRWxlbWVudC5oYXNBdHRyaWJ1dGUoYGNkay1mb2N1cy1pbml0aWFsYCkpIHtcbiAgICAgICAgY29uc29sZS53YXJuKGBGb3VuZCB1c2Ugb2YgZGVwcmVjYXRlZCBhdHRyaWJ1dGUgJ2Nkay1mb2N1cy1pbml0aWFsJywgYCArXG4gICAgICAgICAgICAgICAgICAgIGB1c2UgJ2Nka0ZvY3VzSW5pdGlhbCcgaW5zdGVhZC4gVGhlIGRlcHJlY2F0ZWQgYXR0cmlidXRlIGAgK1xuICAgICAgICAgICAgICAgICAgICBgd2lsbCBiZSByZW1vdmVkIGluIDguMC4wYCwgcmVkaXJlY3RUb0VsZW1lbnQpO1xuICAgICAgfVxuXG4gICAgICAvLyBXYXJuIHRoZSBjb25zdW1lciBpZiB0aGUgZWxlbWVudCB0aGV5J3ZlIHBvaW50ZWQgdG9cbiAgICAgIC8vIGlzbid0IGZvY3VzYWJsZSwgd2hlbiBub3QgaW4gcHJvZHVjdGlvbiBtb2RlLlxuICAgICAgaWYgKCh0eXBlb2YgbmdEZXZNb2RlID09PSAndW5kZWZpbmVkJyB8fCBuZ0Rldk1vZGUpICYmXG4gICAgICAgICF0aGlzLl9jaGVja2VyLmlzRm9jdXNhYmxlKHJlZGlyZWN0VG9FbGVtZW50KSkge1xuICAgICAgICBjb25zb2xlLndhcm4oYEVsZW1lbnQgbWF0Y2hpbmcgJ1tjZGtGb2N1c0luaXRpYWxdJyBpcyBub3QgZm9jdXNhYmxlLmAsIHJlZGlyZWN0VG9FbGVtZW50KTtcbiAgICAgIH1cblxuICAgICAgcmVkaXJlY3RUb0VsZW1lbnQuZm9jdXMoKTtcbiAgICAgIHJldHVybiB0cnVlO1xuICAgIH1cblxuICAgIHJldHVybiB0aGlzLmZvY3VzRmlyc3RUYWJiYWJsZUVsZW1lbnQoKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBGb2N1c2VzIHRoZSBmaXJzdCB0YWJiYWJsZSBlbGVtZW50IHdpdGhpbiB0aGUgZm9jdXMgdHJhcCByZWdpb24uXG4gICAqIEByZXR1cm5zIFdoZXRoZXIgZm9jdXMgd2FzIG1vdmVkIHN1Y2Nlc3NmdWx5LlxuICAgKi9cbiAgZm9jdXNGaXJzdFRhYmJhYmxlRWxlbWVudCgpOiBib29sZWFuIHtcbiAgICBjb25zdCByZWRpcmVjdFRvRWxlbWVudCA9IHRoaXMuX2dldFJlZ2lvbkJvdW5kYXJ5KCdzdGFydCcpO1xuXG4gICAgaWYgKHJlZGlyZWN0VG9FbGVtZW50KSB7XG4gICAgICByZWRpcmVjdFRvRWxlbWVudC5mb2N1cygpO1xuICAgIH1cblxuICAgIHJldHVybiAhIXJlZGlyZWN0VG9FbGVtZW50O1xuICB9XG5cbiAgLyoqXG4gICAqIEZvY3VzZXMgdGhlIGxhc3QgdGFiYmFibGUgZWxlbWVudCB3aXRoaW4gdGhlIGZvY3VzIHRyYXAgcmVnaW9uLlxuICAgKiBAcmV0dXJucyBXaGV0aGVyIGZvY3VzIHdhcyBtb3ZlZCBzdWNjZXNzZnVseS5cbiAgICovXG4gIGZvY3VzTGFzdFRhYmJhYmxlRWxlbWVudCgpOiBib29sZWFuIHtcbiAgICBjb25zdCByZWRpcmVjdFRvRWxlbWVudCA9IHRoaXMuX2dldFJlZ2lvbkJvdW5kYXJ5KCdlbmQnKTtcblxuICAgIGlmIChyZWRpcmVjdFRvRWxlbWVudCkge1xuICAgICAgcmVkaXJlY3RUb0VsZW1lbnQuZm9jdXMoKTtcbiAgICB9XG5cbiAgICByZXR1cm4gISFyZWRpcmVjdFRvRWxlbWVudDtcbiAgfVxuXG4gIC8qKlxuICAgKiBDaGVja3Mgd2hldGhlciB0aGUgZm9jdXMgdHJhcCBoYXMgc3VjY2Vzc2Z1bHkgYmVlbiBhdHRhY2hlZC5cbiAgICovXG4gIGhhc0F0dGFjaGVkKCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiB0aGlzLl9oYXNBdHRhY2hlZDtcbiAgfVxuXG4gIC8qKiBHZXQgdGhlIGZpcnN0IHRhYmJhYmxlIGVsZW1lbnQgZnJvbSBhIERPTSBzdWJ0cmVlIChpbmNsdXNpdmUpLiAqL1xuICBwcml2YXRlIF9nZXRGaXJzdFRhYmJhYmxlRWxlbWVudChyb290OiBIVE1MRWxlbWVudCk6IEhUTUxFbGVtZW50IHwgbnVsbCB7XG4gICAgaWYgKHRoaXMuX2NoZWNrZXIuaXNGb2N1c2FibGUocm9vdCkgJiYgdGhpcy5fY2hlY2tlci5pc1RhYmJhYmxlKHJvb3QpKSB7XG4gICAgICByZXR1cm4gcm9vdDtcbiAgICB9XG5cbiAgICAvLyBJdGVyYXRlIGluIERPTSBvcmRlci4gTm90ZSB0aGF0IElFIGRvZXNuJ3QgaGF2ZSBgY2hpbGRyZW5gIGZvciBTVkcgc28gd2UgZmFsbFxuICAgIC8vIGJhY2sgdG8gYGNoaWxkTm9kZXNgIHdoaWNoIGluY2x1ZGVzIHRleHQgbm9kZXMsIGNvbW1lbnRzIGV0Yy5cbiAgICBsZXQgY2hpbGRyZW4gPSByb290LmNoaWxkcmVuIHx8IHJvb3QuY2hpbGROb2RlcztcblxuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgY2hpbGRyZW4ubGVuZ3RoOyBpKyspIHtcbiAgICAgIGxldCB0YWJiYWJsZUNoaWxkID0gY2hpbGRyZW5baV0ubm9kZVR5cGUgPT09IHRoaXMuX2RvY3VtZW50LkVMRU1FTlRfTk9ERSA/XG4gICAgICAgIHRoaXMuX2dldEZpcnN0VGFiYmFibGVFbGVtZW50KGNoaWxkcmVuW2ldIGFzIEhUTUxFbGVtZW50KSA6XG4gICAgICAgIG51bGw7XG5cbiAgICAgIGlmICh0YWJiYWJsZUNoaWxkKSB7XG4gICAgICAgIHJldHVybiB0YWJiYWJsZUNoaWxkO1xuICAgICAgfVxuICAgIH1cblxuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgLyoqIEdldCB0aGUgbGFzdCB0YWJiYWJsZSBlbGVtZW50IGZyb20gYSBET00gc3VidHJlZSAoaW5jbHVzaXZlKS4gKi9cbiAgcHJpdmF0ZSBfZ2V0TGFzdFRhYmJhYmxlRWxlbWVudChyb290OiBIVE1MRWxlbWVudCk6IEhUTUxFbGVtZW50IHwgbnVsbCB7XG4gICAgaWYgKHRoaXMuX2NoZWNrZXIuaXNGb2N1c2FibGUocm9vdCkgJiYgdGhpcy5fY2hlY2tlci5pc1RhYmJhYmxlKHJvb3QpKSB7XG4gICAgICByZXR1cm4gcm9vdDtcbiAgICB9XG5cbiAgICAvLyBJdGVyYXRlIGluIHJldmVyc2UgRE9NIG9yZGVyLlxuICAgIGxldCBjaGlsZHJlbiA9IHJvb3QuY2hpbGRyZW4gfHwgcm9vdC5jaGlsZE5vZGVzO1xuXG4gICAgZm9yIChsZXQgaSA9IGNoaWxkcmVuLmxlbmd0aCAtIDE7IGkgPj0gMDsgaS0tKSB7XG4gICAgICBsZXQgdGFiYmFibGVDaGlsZCA9IGNoaWxkcmVuW2ldLm5vZGVUeXBlID09PSB0aGlzLl9kb2N1bWVudC5FTEVNRU5UX05PREUgP1xuICAgICAgICB0aGlzLl9nZXRMYXN0VGFiYmFibGVFbGVtZW50KGNoaWxkcmVuW2ldIGFzIEhUTUxFbGVtZW50KSA6XG4gICAgICAgIG51bGw7XG5cbiAgICAgIGlmICh0YWJiYWJsZUNoaWxkKSB7XG4gICAgICAgIHJldHVybiB0YWJiYWJsZUNoaWxkO1xuICAgICAgfVxuICAgIH1cblxuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgLyoqIENyZWF0ZXMgYW4gYW5jaG9yIGVsZW1lbnQuICovXG4gIHByaXZhdGUgX2NyZWF0ZUFuY2hvcigpOiBIVE1MRWxlbWVudCB7XG4gICAgY29uc3QgYW5jaG9yID0gdGhpcy5fZG9jdW1lbnQuY3JlYXRlRWxlbWVudCgnZGl2Jyk7XG4gICAgdGhpcy5fdG9nZ2xlQW5jaG9yVGFiSW5kZXgodGhpcy5fZW5hYmxlZCwgYW5jaG9yKTtcbiAgICBhbmNob3IuY2xhc3NMaXN0LmFkZCgnY2RrLXZpc3VhbGx5LWhpZGRlbicpO1xuICAgIGFuY2hvci5jbGFzc0xpc3QuYWRkKCdjZGstZm9jdXMtdHJhcC1hbmNob3InKTtcbiAgICBhbmNob3Iuc2V0QXR0cmlidXRlKCdhcmlhLWhpZGRlbicsICd0cnVlJyk7XG4gICAgcmV0dXJuIGFuY2hvcjtcbiAgfVxuXG4gIC8qKlxuICAgKiBUb2dnbGVzIHRoZSBgdGFiaW5kZXhgIG9mIGFuIGFuY2hvciwgYmFzZWQgb24gdGhlIGVuYWJsZWQgc3RhdGUgb2YgdGhlIGZvY3VzIHRyYXAuXG4gICAqIEBwYXJhbSBpc0VuYWJsZWQgV2hldGhlciB0aGUgZm9jdXMgdHJhcCBpcyBlbmFibGVkLlxuICAgKiBAcGFyYW0gYW5jaG9yIEFuY2hvciBvbiB3aGljaCB0byB0b2dnbGUgdGhlIHRhYmluZGV4LlxuICAgKi9cbiAgcHJpdmF0ZSBfdG9nZ2xlQW5jaG9yVGFiSW5kZXgoaXNFbmFibGVkOiBib29sZWFuLCBhbmNob3I6IEhUTUxFbGVtZW50KSB7XG4gICAgLy8gUmVtb3ZlIHRoZSB0YWJpbmRleCBjb21wbGV0ZWx5LCByYXRoZXIgdGhhbiBzZXR0aW5nIGl0IHRvIC0xLCBiZWNhdXNlIGlmIHRoZVxuICAgIC8vIGVsZW1lbnQgaGFzIGEgdGFiaW5kZXgsIHRoZSB1c2VyIG1pZ2h0IHN0aWxsIGhpdCBpdCB3aGVuIG5hdmlnYXRpbmcgd2l0aCB0aGUgYXJyb3cga2V5cy5cbiAgICBpc0VuYWJsZWQgPyBhbmNob3Iuc2V0QXR0cmlidXRlKCd0YWJpbmRleCcsICcwJykgOiBhbmNob3IucmVtb3ZlQXR0cmlidXRlKCd0YWJpbmRleCcpO1xuICB9XG5cbiAgLyoqXG4gICAqIFRvZ2dsZXMgdGhlYHRhYmluZGV4YCBvZiBib3RoIGFuY2hvcnMgdG8gZWl0aGVyIHRyYXAgVGFiIGZvY3VzIG9yIGFsbG93IGl0IHRvIGVzY2FwZS5cbiAgICogQHBhcmFtIGVuYWJsZWQ6IFdoZXRoZXIgdGhlIGFuY2hvcnMgc2hvdWxkIHRyYXAgVGFiLlxuICAgKi9cbiAgcHJvdGVjdGVkIHRvZ2dsZUFuY2hvcnMoZW5hYmxlZDogYm9vbGVhbikge1xuICAgIGlmICh0aGlzLl9zdGFydEFuY2hvciAmJiB0aGlzLl9lbmRBbmNob3IpIHtcbiAgICAgIHRoaXMuX3RvZ2dsZUFuY2hvclRhYkluZGV4KGVuYWJsZWQsIHRoaXMuX3N0YXJ0QW5jaG9yKTtcbiAgICAgIHRoaXMuX3RvZ2dsZUFuY2hvclRhYkluZGV4KGVuYWJsZWQsIHRoaXMuX2VuZEFuY2hvcik7XG4gICAgfVxuICB9XG5cbiAgLyoqIEV4ZWN1dGVzIGEgZnVuY3Rpb24gd2hlbiB0aGUgem9uZSBpcyBzdGFibGUuICovXG4gIHByaXZhdGUgX2V4ZWN1dGVPblN0YWJsZShmbjogKCkgPT4gYW55KTogdm9pZCB7XG4gICAgaWYgKHRoaXMuX25nWm9uZS5pc1N0YWJsZSkge1xuICAgICAgZm4oKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5fbmdab25lLm9uU3RhYmxlLnBpcGUodGFrZSgxKSkuc3Vic2NyaWJlKGZuKTtcbiAgICB9XG4gIH1cbn1cblxuLyoqXG4gKiBGYWN0b3J5IHRoYXQgYWxsb3dzIGVhc3kgaW5zdGFudGlhdGlvbiBvZiBmb2N1cyB0cmFwcy5cbiAqIEBkZXByZWNhdGVkIFVzZSBgQ29uZmlndXJhYmxlRm9jdXNUcmFwRmFjdG9yeWAgaW5zdGVhZC5cbiAqIEBicmVha2luZy1jaGFuZ2UgZm9yIDExLjAuMCBSZW1vdmUgdGhpcyBjbGFzcy5cbiAqL1xuQEluamVjdGFibGUoe3Byb3ZpZGVkSW46ICdyb290J30pXG5leHBvcnQgY2xhc3MgRm9jdXNUcmFwRmFjdG9yeSB7XG4gIHByaXZhdGUgX2RvY3VtZW50OiBEb2N1bWVudDtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHByaXZhdGUgX2NoZWNrZXI6IEludGVyYWN0aXZpdHlDaGVja2VyLFxuICAgICAgcHJpdmF0ZSBfbmdab25lOiBOZ1pvbmUsXG4gICAgICBASW5qZWN0KERPQ1VNRU5UKSBfZG9jdW1lbnQ6IGFueSkge1xuXG4gICAgdGhpcy5fZG9jdW1lbnQgPSBfZG9jdW1lbnQ7XG4gIH1cblxuICAvKipcbiAgICogQ3JlYXRlcyBhIGZvY3VzLXRyYXBwZWQgcmVnaW9uIGFyb3VuZCB0aGUgZ2l2ZW4gZWxlbWVudC5cbiAgICogQHBhcmFtIGVsZW1lbnQgVGhlIGVsZW1lbnQgYXJvdW5kIHdoaWNoIGZvY3VzIHdpbGwgYmUgdHJhcHBlZC5cbiAgICogQHBhcmFtIGRlZmVyQ2FwdHVyZUVsZW1lbnRzIERlZmVycyB0aGUgY3JlYXRpb24gb2YgZm9jdXMtY2FwdHVyaW5nIGVsZW1lbnRzIHRvIGJlIGRvbmVcbiAgICogICAgIG1hbnVhbGx5IGJ5IHRoZSB1c2VyLlxuICAgKiBAcmV0dXJucyBUaGUgY3JlYXRlZCBmb2N1cyB0cmFwIGluc3RhbmNlLlxuICAgKi9cbiAgY3JlYXRlKGVsZW1lbnQ6IEhUTUxFbGVtZW50LCBkZWZlckNhcHR1cmVFbGVtZW50czogYm9vbGVhbiA9IGZhbHNlKTogRm9jdXNUcmFwIHtcbiAgICByZXR1cm4gbmV3IEZvY3VzVHJhcChcbiAgICAgICAgZWxlbWVudCwgdGhpcy5fY2hlY2tlciwgdGhpcy5fbmdab25lLCB0aGlzLl9kb2N1bWVudCwgZGVmZXJDYXB0dXJlRWxlbWVudHMpO1xuICB9XG59XG5cbi8qKiBEaXJlY3RpdmUgZm9yIHRyYXBwaW5nIGZvY3VzIHdpdGhpbiBhIHJlZ2lvbi4gKi9cbkBEaXJlY3RpdmUoe1xuICBzZWxlY3RvcjogJ1tjZGtUcmFwRm9jdXNdJyxcbiAgZXhwb3J0QXM6ICdjZGtUcmFwRm9jdXMnLFxufSlcbmV4cG9ydCBjbGFzcyBDZGtUcmFwRm9jdXMgaW1wbGVtZW50cyBPbkRlc3Ryb3ksIEFmdGVyQ29udGVudEluaXQsIE9uQ2hhbmdlcywgRG9DaGVjayB7XG4gIHByaXZhdGUgX2RvY3VtZW50OiBEb2N1bWVudDtcblxuICAvKiogVW5kZXJseWluZyBGb2N1c1RyYXAgaW5zdGFuY2UuICovXG4gIGZvY3VzVHJhcDogRm9jdXNUcmFwO1xuXG4gIC8qKiBQcmV2aW91c2x5IGZvY3VzZWQgZWxlbWVudCB0byByZXN0b3JlIGZvY3VzIHRvIHVwb24gZGVzdHJveSB3aGVuIHVzaW5nIGF1dG9DYXB0dXJlLiAqL1xuICBwcml2YXRlIF9wcmV2aW91c2x5Rm9jdXNlZEVsZW1lbnQ6IEhUTUxFbGVtZW50IHwgbnVsbCA9IG51bGw7XG5cbiAgLyoqIFdoZXRoZXIgdGhlIGZvY3VzIHRyYXAgaXMgYWN0aXZlLiAqL1xuICBASW5wdXQoJ2Nka1RyYXBGb2N1cycpXG4gIGdldCBlbmFibGVkKCk6IGJvb2xlYW4geyByZXR1cm4gdGhpcy5mb2N1c1RyYXAuZW5hYmxlZDsgfVxuICBzZXQgZW5hYmxlZCh2YWx1ZTogYm9vbGVhbikgeyB0aGlzLmZvY3VzVHJhcC5lbmFibGVkID0gY29lcmNlQm9vbGVhblByb3BlcnR5KHZhbHVlKTsgfVxuXG4gIC8qKlxuICAgKiBXaGV0aGVyIHRoZSBkaXJlY3RpdmUgc2hvdWxkIGF1dG9tYXRpYWxseSBtb3ZlIGZvY3VzIGludG8gdGhlIHRyYXBwZWQgcmVnaW9uIHVwb25cbiAgICogaW5pdGlhbGl6YXRpb24gYW5kIHJldHVybiBmb2N1cyB0byB0aGUgcHJldmlvdXMgYWN0aXZlRWxlbWVudCB1cG9uIGRlc3RydWN0aW9uLlxuICAgKi9cbiAgQElucHV0KCdjZGtUcmFwRm9jdXNBdXRvQ2FwdHVyZScpXG4gIGdldCBhdXRvQ2FwdHVyZSgpOiBib29sZWFuIHsgcmV0dXJuIHRoaXMuX2F1dG9DYXB0dXJlOyB9XG4gIHNldCBhdXRvQ2FwdHVyZSh2YWx1ZTogYm9vbGVhbikgeyB0aGlzLl9hdXRvQ2FwdHVyZSA9IGNvZXJjZUJvb2xlYW5Qcm9wZXJ0eSh2YWx1ZSk7IH1cbiAgcHJpdmF0ZSBfYXV0b0NhcHR1cmU6IGJvb2xlYW47XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIF9lbGVtZW50UmVmOiBFbGVtZW50UmVmPEhUTUxFbGVtZW50PixcbiAgICAgIHByaXZhdGUgX2ZvY3VzVHJhcEZhY3Rvcnk6IEZvY3VzVHJhcEZhY3RvcnksXG4gICAgICBASW5qZWN0KERPQ1VNRU5UKSBfZG9jdW1lbnQ6IGFueSkge1xuXG4gICAgdGhpcy5fZG9jdW1lbnQgPSBfZG9jdW1lbnQ7XG4gICAgdGhpcy5mb2N1c1RyYXAgPSB0aGlzLl9mb2N1c1RyYXBGYWN0b3J5LmNyZWF0ZSh0aGlzLl9lbGVtZW50UmVmLm5hdGl2ZUVsZW1lbnQsIHRydWUpO1xuICB9XG5cbiAgbmdPbkRlc3Ryb3koKSB7XG4gICAgdGhpcy5mb2N1c1RyYXAuZGVzdHJveSgpO1xuXG4gICAgLy8gSWYgd2Ugc3RvcmVkIGEgcHJldmlvdXNseSBmb2N1c2VkIGVsZW1lbnQgd2hlbiB1c2luZyBhdXRvQ2FwdHVyZSwgcmV0dXJuIGZvY3VzIHRvIHRoYXRcbiAgICAvLyBlbGVtZW50IG5vdyB0aGF0IHRoZSB0cmFwcGVkIHJlZ2lvbiBpcyBiZWluZyBkZXN0cm95ZWQuXG4gICAgaWYgKHRoaXMuX3ByZXZpb3VzbHlGb2N1c2VkRWxlbWVudCkge1xuICAgICAgdGhpcy5fcHJldmlvdXNseUZvY3VzZWRFbGVtZW50LmZvY3VzKCk7XG4gICAgICB0aGlzLl9wcmV2aW91c2x5Rm9jdXNlZEVsZW1lbnQgPSBudWxsO1xuICAgIH1cbiAgfVxuXG4gIG5nQWZ0ZXJDb250ZW50SW5pdCgpIHtcbiAgICB0aGlzLmZvY3VzVHJhcC5hdHRhY2hBbmNob3JzKCk7XG5cbiAgICBpZiAodGhpcy5hdXRvQ2FwdHVyZSkge1xuICAgICAgdGhpcy5fY2FwdHVyZUZvY3VzKCk7XG4gICAgfVxuICB9XG5cbiAgbmdEb0NoZWNrKCkge1xuICAgIGlmICghdGhpcy5mb2N1c1RyYXAuaGFzQXR0YWNoZWQoKSkge1xuICAgICAgdGhpcy5mb2N1c1RyYXAuYXR0YWNoQW5jaG9ycygpO1xuICAgIH1cbiAgfVxuXG4gIG5nT25DaGFuZ2VzKGNoYW5nZXM6IFNpbXBsZUNoYW5nZXMpIHtcbiAgICBjb25zdCBhdXRvQ2FwdHVyZUNoYW5nZSA9IGNoYW5nZXNbJ2F1dG9DYXB0dXJlJ107XG5cbiAgICBpZiAoYXV0b0NhcHR1cmVDaGFuZ2UgJiYgIWF1dG9DYXB0dXJlQ2hhbmdlLmZpcnN0Q2hhbmdlICYmIHRoaXMuYXV0b0NhcHR1cmUgJiZcbiAgICAgICAgdGhpcy5mb2N1c1RyYXAuaGFzQXR0YWNoZWQoKSkge1xuICAgICAgdGhpcy5fY2FwdHVyZUZvY3VzKCk7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBfY2FwdHVyZUZvY3VzKCkge1xuICAgIHRoaXMuX3ByZXZpb3VzbHlGb2N1c2VkRWxlbWVudCA9IHRoaXMuX2RvY3VtZW50LmFjdGl2ZUVsZW1lbnQgYXMgSFRNTEVsZW1lbnQ7XG4gICAgdGhpcy5mb2N1c1RyYXAuZm9jdXNJbml0aWFsRWxlbWVudFdoZW5SZWFkeSgpO1xuICB9XG5cbiAgc3RhdGljIG5nQWNjZXB0SW5wdXRUeXBlX2VuYWJsZWQ6IEJvb2xlYW5JbnB1dDtcbiAgc3RhdGljIG5nQWNjZXB0SW5wdXRUeXBlX2F1dG9DYXB0dXJlOiBCb29sZWFuSW5wdXQ7XG59XG4iXX0=