/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Platform } from '@angular/cdk/platform';
import { Injectable } from '@angular/core';
import * as i0 from "@angular/core";
import * as i1 from "@angular/cdk/platform";
/**
 * Configuration for the isFocusable method.
 */
export class IsFocusableConfig {
    constructor() {
        /**
         * Whether to count an element as focusable even if it is not currently visible.
         */
        this.ignoreVisibility = false;
    }
}
// The InteractivityChecker leans heavily on the ally.js accessibility utilities.
// Methods like `isTabbable` are only covering specific edge-cases for the browsers which are
// supported.
/**
 * Utility for checking the interactivity of an element, such as whether is is focusable or
 * tabbable.
 */
export class InteractivityChecker {
    constructor(_platform) {
        this._platform = _platform;
    }
    /**
     * Gets whether an element is disabled.
     *
     * @param element Element to be checked.
     * @returns Whether the element is disabled.
     */
    isDisabled(element) {
        // This does not capture some cases, such as a non-form control with a disabled attribute or
        // a form control inside of a disabled form, but should capture the most common cases.
        return element.hasAttribute('disabled');
    }
    /**
     * Gets whether an element is visible for the purposes of interactivity.
     *
     * This will capture states like `display: none` and `visibility: hidden`, but not things like
     * being clipped by an `overflow: hidden` parent or being outside the viewport.
     *
     * @returns Whether the element is visible.
     */
    isVisible(element) {
        return hasGeometry(element) && getComputedStyle(element).visibility === 'visible';
    }
    /**
     * Gets whether an element can be reached via Tab key.
     * Assumes that the element has already been checked with isFocusable.
     *
     * @param element Element to be checked.
     * @returns Whether the element is tabbable.
     */
    isTabbable(element) {
        // Nothing is tabbable on the server 😎
        if (!this._platform.isBrowser) {
            return false;
        }
        const frameElement = getFrameElement(getWindow(element));
        if (frameElement) {
            // Frame elements inherit their tabindex onto all child elements.
            if (getTabIndexValue(frameElement) === -1) {
                return false;
            }
            // Browsers disable tabbing to an element inside of an invisible frame.
            if (!this.isVisible(frameElement)) {
                return false;
            }
        }
        let nodeName = element.nodeName.toLowerCase();
        let tabIndexValue = getTabIndexValue(element);
        if (element.hasAttribute('contenteditable')) {
            return tabIndexValue !== -1;
        }
        if (nodeName === 'iframe' || nodeName === 'object') {
            // The frame or object's content may be tabbable depending on the content, but it's
            // not possibly to reliably detect the content of the frames. We always consider such
            // elements as non-tabbable.
            return false;
        }
        // In iOS, the browser only considers some specific elements as tabbable.
        if (this._platform.WEBKIT && this._platform.IOS && !isPotentiallyTabbableIOS(element)) {
            return false;
        }
        if (nodeName === 'audio') {
            // Audio elements without controls enabled are never tabbable, regardless
            // of the tabindex attribute explicitly being set.
            if (!element.hasAttribute('controls')) {
                return false;
            }
            // Audio elements with controls are by default tabbable unless the
            // tabindex attribute is set to `-1` explicitly.
            return tabIndexValue !== -1;
        }
        if (nodeName === 'video') {
            // For all video elements, if the tabindex attribute is set to `-1`, the video
            // is not tabbable. Note: We cannot rely on the default `HTMLElement.tabIndex`
            // property as that one is set to `-1` in Chrome, Edge and Safari v13.1. The
            // tabindex attribute is the source of truth here.
            if (tabIndexValue === -1) {
                return false;
            }
            // If the tabindex is explicitly set, and not `-1` (as per check before), the
            // video element is always tabbable (regardless of whether it has controls or not).
            if (tabIndexValue !== null) {
                return true;
            }
            // Otherwise (when no explicit tabindex is set), a video is only tabbable if it
            // has controls enabled. Firefox is special as videos are always tabbable regardless
            // of whether there are controls or not.
            return this._platform.FIREFOX || element.hasAttribute('controls');
        }
        return element.tabIndex >= 0;
    }
    /**
     * Gets whether an element can be focused by the user.
     *
     * @param element Element to be checked.
     * @param config The config object with options to customize this method's behavior
     * @returns Whether the element is focusable.
     */
    isFocusable(element, config) {
        // Perform checks in order of left to most expensive.
        // Again, naive approach that does not capture many edge cases and browser quirks.
        return isPotentiallyFocusable(element) && !this.isDisabled(element) &&
            ((config === null || config === void 0 ? void 0 : config.ignoreVisibility) || this.isVisible(element));
    }
}
InteractivityChecker.ɵprov = i0.ɵɵdefineInjectable({ factory: function InteractivityChecker_Factory() { return new InteractivityChecker(i0.ɵɵinject(i1.Platform)); }, token: InteractivityChecker, providedIn: "root" });
InteractivityChecker.decorators = [
    { type: Injectable, args: [{ providedIn: 'root' },] }
];
InteractivityChecker.ctorParameters = () => [
    { type: Platform }
];
/**
 * Returns the frame element from a window object. Since browsers like MS Edge throw errors if
 * the frameElement property is being accessed from a different host address, this property
 * should be accessed carefully.
 */
function getFrameElement(window) {
    try {
        return window.frameElement;
    }
    catch (_a) {
        return null;
    }
}
/** Checks whether the specified element has any geometry / rectangles. */
function hasGeometry(element) {
    // Use logic from jQuery to check for an invisible element.
    // See https://github.com/jquery/jquery/blob/master/src/css/hiddenVisibleSelectors.js#L12
    return !!(element.offsetWidth || element.offsetHeight ||
        (typeof element.getClientRects === 'function' && element.getClientRects().length));
}
/** Gets whether an element's  */
function isNativeFormElement(element) {
    let nodeName = element.nodeName.toLowerCase();
    return nodeName === 'input' ||
        nodeName === 'select' ||
        nodeName === 'button' ||
        nodeName === 'textarea';
}
/** Gets whether an element is an `<input type="hidden">`. */
function isHiddenInput(element) {
    return isInputElement(element) && element.type == 'hidden';
}
/** Gets whether an element is an anchor that has an href attribute. */
function isAnchorWithHref(element) {
    return isAnchorElement(element) && element.hasAttribute('href');
}
/** Gets whether an element is an input element. */
function isInputElement(element) {
    return element.nodeName.toLowerCase() == 'input';
}
/** Gets whether an element is an anchor element. */
function isAnchorElement(element) {
    return element.nodeName.toLowerCase() == 'a';
}
/** Gets whether an element has a valid tabindex. */
function hasValidTabIndex(element) {
    if (!element.hasAttribute('tabindex') || element.tabIndex === undefined) {
        return false;
    }
    let tabIndex = element.getAttribute('tabindex');
    // IE11 parses tabindex="" as the value "-32768"
    if (tabIndex == '-32768') {
        return false;
    }
    return !!(tabIndex && !isNaN(parseInt(tabIndex, 10)));
}
/**
 * Returns the parsed tabindex from the element attributes instead of returning the
 * evaluated tabindex from the browsers defaults.
 */
function getTabIndexValue(element) {
    if (!hasValidTabIndex(element)) {
        return null;
    }
    // See browser issue in Gecko https://bugzilla.mozilla.org/show_bug.cgi?id=1128054
    const tabIndex = parseInt(element.getAttribute('tabindex') || '', 10);
    return isNaN(tabIndex) ? -1 : tabIndex;
}
/** Checks whether the specified element is potentially tabbable on iOS */
function isPotentiallyTabbableIOS(element) {
    let nodeName = element.nodeName.toLowerCase();
    let inputType = nodeName === 'input' && element.type;
    return inputType === 'text'
        || inputType === 'password'
        || nodeName === 'select'
        || nodeName === 'textarea';
}
/**
 * Gets whether an element is potentially focusable without taking current visible/disabled state
 * into account.
 */
function isPotentiallyFocusable(element) {
    // Inputs are potentially focusable *unless* they're type="hidden".
    if (isHiddenInput(element)) {
        return false;
    }
    return isNativeFormElement(element) ||
        isAnchorWithHref(element) ||
        element.hasAttribute('contenteditable') ||
        hasValidTabIndex(element);
}
/** Gets the parent window of a DOM node with regards of being inside of an iframe. */
function getWindow(node) {
    // ownerDocument is null if `node` itself *is* a document.
    return node.ownerDocument && node.ownerDocument.defaultView || window;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW50ZXJhY3Rpdml0eS1jaGVja2VyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9hMTF5L2ludGVyYWN0aXZpdHktY2hlY2tlci9pbnRlcmFjdGl2aXR5LWNoZWNrZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLHVCQUF1QixDQUFDO0FBQy9DLE9BQU8sRUFBQyxVQUFVLEVBQUMsTUFBTSxlQUFlLENBQUM7OztBQUV6Qzs7R0FFRztBQUNILE1BQU0sT0FBTyxpQkFBaUI7SUFBOUI7UUFDRTs7V0FFRztRQUNILHFCQUFnQixHQUFZLEtBQUssQ0FBQztJQUNwQyxDQUFDO0NBQUE7QUFFRCxpRkFBaUY7QUFDakYsNkZBQTZGO0FBQzdGLGFBQWE7QUFFYjs7O0dBR0c7QUFFSCxNQUFNLE9BQU8sb0JBQW9CO0lBRS9CLFlBQW9CLFNBQW1CO1FBQW5CLGNBQVMsR0FBVCxTQUFTLENBQVU7SUFBRyxDQUFDO0lBRTNDOzs7OztPQUtHO0lBQ0gsVUFBVSxDQUFDLE9BQW9CO1FBQzdCLDRGQUE0RjtRQUM1RixzRkFBc0Y7UUFDdEYsT0FBTyxPQUFPLENBQUMsWUFBWSxDQUFDLFVBQVUsQ0FBQyxDQUFDO0lBQzFDLENBQUM7SUFFRDs7Ozs7OztPQU9HO0lBQ0gsU0FBUyxDQUFDLE9BQW9CO1FBQzVCLE9BQU8sV0FBVyxDQUFDLE9BQU8sQ0FBQyxJQUFJLGdCQUFnQixDQUFDLE9BQU8sQ0FBQyxDQUFDLFVBQVUsS0FBSyxTQUFTLENBQUM7SUFDcEYsQ0FBQztJQUVEOzs7Ozs7T0FNRztJQUNILFVBQVUsQ0FBQyxPQUFvQjtRQUM3Qix1Q0FBdUM7UUFDdkMsSUFBSSxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsU0FBUyxFQUFFO1lBQzdCLE9BQU8sS0FBSyxDQUFDO1NBQ2Q7UUFFRCxNQUFNLFlBQVksR0FBRyxlQUFlLENBQUMs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b0I7SUFDbEQsbUVBQW1FO0lBQ25FLElBQUksYUFBYSxDQUFDLE9BQU8sQ0FBQyxFQUFFO1FBQzFCLE9BQU8sS0FBSyxDQUFDO0tBQ2Q7SUFFRCxPQUFPLG1CQUFtQixDQUFDLE9BQU8sQ0FBQztRQUMvQixnQkFBZ0IsQ0FBQyxPQUFPLENBQUM7UUFDekIsT0FBTyxDQUFDLFlBQVksQ0FBQyxpQkFBaUIsQ0FBQztRQUN2QyxnQkFBZ0IsQ0FBQyxPQUFPLENBQUMsQ0FBQztBQUNoQyxDQUFDO0FBRUQsc0ZBQXNGO0FBQ3RGLFNBQVMsU0FBUyxDQUFDLElBQWlCO0lBQ2xDLDBEQUEwRDtJQUMxRCxPQUFPLElBQUksQ0FBQyxhQUFhLElBQUksSUFBSSxDQUFDLGFBQWEsQ0FBQyxXQUFXLElBQUksTUFBTSxDQUFDO0FBQ3hFLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtQbGF0Zm9ybX0gZnJvbSAnQGFuZ3VsYXIvY2RrL3BsYXRmb3JtJztcbmltcG9ydCB7SW5qZWN0YWJsZX0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbi8qKlxuICogQ29uZmlndXJhdGlvbiBmb3IgdGhlIGlzRm9jdXNhYmxlIG1ldGhvZC5cbiAqL1xuZXhwb3J0IGNsYXNzIElzRm9jdXNhYmxlQ29uZmlnIHtcbiAgLyoqXG4gICAqIFdoZXRoZXIgdG8gY291bnQgYW4gZWxlbWVudCBhcyBmb2N1c2FibGUgZXZlbiBpZiBpdCBpcyBub3QgY3VycmVudGx5IHZpc2libGUuXG4gICAqL1xuICBpZ25vcmVWaXNpYmlsaXR5OiBib29sZWFuID0gZmFsc2U7XG59XG5cbi8vIFRoZSBJbnRlcmFjdGl2aXR5Q2hlY2tlciBsZWFucyBoZWF2aWx5IG9uIHRoZSBhbGx5LmpzIGFjY2Vzc2liaWxpdHkgdXRpbGl0aWVzLlxuLy8gTWV0aG9kcyBsaWtlIGBpc1RhYmJhYmxlYCBhcmUgb25seSBjb3ZlcmluZyBzcGVjaWZpYyBlZGdlLWNhc2VzIGZvciB0aGUgYnJvd3NlcnMgd2hpY2ggYXJlXG4vLyBzdXBwb3J0ZWQuXG5cbi8qKlxuICogVXRpbGl0eSBmb3IgY2hlY2tpbmcgdGhlIGludGVyYWN0aXZpdHkgb2YgYW4gZWxlbWVudCwgc3VjaCBhcyB3aGV0aGVyIGlzIGlzIGZvY3VzYWJsZSBvclxuICogdGFiYmFibGUuXG4gKi9cbkBJbmplY3RhYmxlKHtwcm92aWRlZEluOiAncm9vdCd9KVxuZXhwb3J0IGNsYXNzIEludGVyYWN0aXZpdHlDaGVja2VyIHtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9wbGF0Zm9ybTogUGxhdGZvcm0pIHt9XG5cbiAgLyoqXG4gICAqIEdldHMgd2hldGhlciBhbiBlbGVtZW50IGlzIGRpc2FibGVkLlxuICAgKlxuICAgKiBAcGFyYW0gZWxlbWVudCBFbGVtZW50IHRvIGJlIGNoZWNrZWQuXG4gICAqIEByZXR1cm5zIFdoZXRoZXIgdGhlIGVsZW1lbnQgaXMgZGlzYWJsZWQuXG4gICAqL1xuICBpc0Rpc2FibGVkKGVsZW1lbnQ6IEhUTUxFbGVtZW50KTogYm9vbGVhbiB7XG4gICAgLy8gVGhpcyBkb2VzIG5vdCBjYXB0dXJlIHNvbWUgY2FzZXMsIHN1Y2ggYXMgYSBub24tZm9ybSBjb250cm9sIHdpdGggYSBkaXNhYmxlZCBhdHRyaWJ1dGUgb3JcbiAgICAvLyBhIGZvcm0gY29udHJvbCBpbnNpZGUgb2YgYSBkaXNhYmxlZCBmb3JtLCBidXQgc2hvdWxkIGNhcHR1cmUgdGhlIG1vc3QgY29tbW9uIGNhc2VzLlxuICAgIHJldHVybiBlbGVtZW50Lmhhc0F0dHJpYnV0ZSgnZGlzYWJsZWQnKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBHZXRzIHdoZXRoZXIgYW4gZWxlbWVudCBpcyB2aXNpYmxlIGZvciB0aGUgcHVycG9zZXMgb2YgaW50ZXJhY3Rpdml0eS5cbiAgICpcbiAgICogVGhpcyB3aWxsIGNhcHR1cmUgc3RhdGVzIGxpa2UgYGRpc3BsYXk6IG5vbmVgIGFuZCBgdmlzaWJpbGl0eTogaGlkZGVuYCwgYnV0IG5vdCB0aGluZ3MgbGlrZVxuICAgKiBiZWluZyBjbGlwcGVkIGJ5IGFuIGBvdmVyZmxvdzogaGlkZGVuYCBwYXJlbnQgb3IgYmVpbmcgb3V0c2lkZSB0aGUgdmlld3BvcnQuXG4gICAqXG4gICAqIEByZXR1cm5zIFdoZXRoZXIgdGhlIGVsZW1lbnQgaXMgdmlzaWJsZS5cbiAgICovXG4gIGlzVmlzaWJsZShlbGVtZW50OiBIVE1MRWxlbWVudCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiBoYXNHZW9tZXRyeShlbGVtZW50KSAmJiBnZXRDb21wdXRlZFN0eWxlKGVsZW1lbnQpLnZpc2liaWxpdHkgPT09ICd2aXNpYmxlJztcbiAgfVxuXG4gIC8qKlxuICAgKiBHZXRzIHdoZXRoZXIgYW4gZWxlbWVudCBjYW4gYmUgcmVhY2hlZCB2aWEgVGFiIGtleS5cbiAgICogQXNzdW1lcyB0aGF0IHRoZSBlbGVtZW50IGhhcyBhbHJlYWR5IGJlZW4gY2hlY2tlZCB3aXRoIGlzRm9jdXNhYmxlLlxuICAgKlxuICAgKiBAcGFyYW0gZWxlbWVudCBFbGVtZW50IHRvIGJlIGNoZWNrZWQuXG4gICAqIEByZXR1cm5zIFdoZXRoZXIgdGhlIGVsZW1lbnQgaXMgdGFiYmFibGUuXG4gICAqL1xuICBpc1RhYmJhYmxlKGVsZW1lbnQ6IEhUTUxFbGVtZW50KTogYm9vbGVhbiB7XG4gICAgLy8gTm90aGluZyBpcyB0YWJiYWJsZSBvbiB0aGUgc2VydmVyIPCfmI5cbiAgICBpZiAoIXRoaXMuX3BsYXRmb3JtLmlzQnJvd3Nlcikge1xuICAgICAgcmV0dXJuIGZhbHNlO1xuICAgIH1cblxuICAgIGNvbnN0IGZyYW1lRWxlbWVudCA9IGdldEZyYW1lRWxlbWVudChnZXRXaW5kb3coZWxlbWVudCkpO1xuXG4gICAgaWYgKGZyYW1lRWxlbWVudCkge1xuICAgICAgLy8gRnJhbWUgZWxlbWVudHMgaW5oZXJpdCB0aGVpciB0YWJpbmRleCBvbnRvIGFsbCBjaGlsZCBlbGVtZW50cy5cbiAgICAgIGlmIChnZXRUYWJJbmRleFZhbHVlKGZyYW1lRWxlbWVudCkgPT09IC0xKSB7XG4gICAgICAgIHJldHVybiBmYWxzZTtcbiAgICAgIH1cblxuICAgICAgLy8gQnJvd3NlcnMgZGlzYWJsZSB0YWJiaW5nIHRvIGFuIGVsZW1lbnQgaW5zaWRlIG9mIGFuIGludmlzaWJsZSBmcmFtZS5cbiAgICAgIGlmICghdGhpcy5pc1Zpc2libGUoZnJhbWVFbGVtZW50KSkge1xuICAgICAgICByZXR1cm4gZmFsc2U7XG4gICAgICB9XG4gICAgfVxuXG4gICAgbGV0IG5vZGVOYW1lID0gZWxlbWVudC5ub2RlTmFtZS50b0xvd2VyQ2FzZSgpO1xuICAgIGxldCB0YWJJbmRleFZhbHVlID0gZ2V0VGFiSW5kZXhWYWx1ZShlbGVtZW50KTtcblxuICAgIGlmIChlbGVtZW50Lmhhc0F0dHJpYnV0ZSgnY29udGVudGVkaXRhYmxlJykpIHtcbiAgICAgIHJldHVybiB0YWJJbmRleFZhbHVlICE9PSAtMTtcbiAgICB9XG5cbiAgICBpZiAobm9kZU5hbWUgPT09ICdpZnJhbWUnIHx8IG5vZGVOYW1lID09PSAnb2JqZWN0Jykge1xuICAgICAgLy8gVGhlIGZyYW1lIG9yIG9iamVjdCdzIGNvbnRlbnQgbWF5IGJlIHRhYmJhYmxlIGRlcGVuZGluZyBvbiB0aGUgY29udGVudCwgYnV0IGl0J3NcbiAgICAgIC8vIG5vdCBwb3NzaWJseSB0byByZWxpYWJseSBkZXRlY3QgdGhlIGNvbnRlbnQgb2YgdGhlIGZyYW1lcy4gV2UgYWx3YXlzIGNvbnNpZGVyIHN1Y2hcbiAgICAgIC8vIGVsZW1lbnRzIGFzIG5vbi10YWJiYWJsZS5cbiAgICAgIHJldHVybiBmYWxzZTtcbiAgICB9XG5cbiAgICAvLyBJbiBpT1MsIHRoZSBicm93c2VyIG9ubHkgY29uc2lkZXJzIHNvbWUgc3BlY2lmaWMgZWxlbWVudHMgYXMgdGFiYmFibGUuXG4gICAgaWYgKHRoaXMuX3BsYXRmb3JtLldFQktJVCAmJiB0aGlzLl9wbGF0Zm9ybS5JT1MgJiYgIWlzUG90ZW50aWFsbHlUYWJiYWJsZUlPUyhlbGVtZW50KSkge1xuICAgICAgcmV0dXJuIGZhbHNlO1xuICAgIH1cblxuICAgIGlmIChub2RlTmFtZSA9PT0gJ2F1ZGlvJykge1xuICAgICAgLy8gQXVkaW8gZWxlbWVudHMgd2l0aG91dCBjb250cm9scyBlbmFibGVkIGFyZSBuZXZlciB0YWJiYWJsZSwgcmVnYXJkbGVzc1xuICAgICAgLy8gb2YgdGhlIHRhYmluZGV4IGF0dHJpYnV0ZSBleHBsaWNpdGx5IGJlaW5nIHNldC5cbiAgICAgIGlmICghZWxlbWVudC5oYXNBdHRyaWJ1dGUoJ2NvbnRyb2xzJykpIHtcbiAgICAgICAgcmV0dXJuIGZhbHNlO1xuICAgICAgfVxuICAgICAgLy8gQXVkaW8gZWxlbWVudHMgd2l0aCBjb250cm9scyBhcmUgYnkgZGVmYXVsdCB0YWJiYWJsZSB1bmxlc3MgdGhlXG4gICAgICAvLyB0YWJpbmRleCBhdHRyaWJ1dGUgaXMgc2V0IHRvIGAtMWAgZXhwbGljaXRseS5cbiAgICAgIHJldHVybiB0YWJJbmRleFZhbHVlICE9PSAtMTtcbiAgICB9XG5cbiAgICBpZiAobm9kZU5hbWUgPT09ICd2aWRlbycpIHtcbiAgICAgIC8vIEZvciBhbGwgdmlkZW8gZWxlbWVudHMsIGlmIHRoZSB0YWJpbmRleCBhdHRyaWJ1dGUgaXMgc2V0IHRvIGAtMWAsIHRoZSB2aWRlb1xuICAgICAgLy8gaXMgbm90IHRhYmJhYmxlLiBOb3RlOiBXZSBjYW5ub3QgcmVseSBvbiB0aGUgZGVmYXVsdCBgSFRNTEVsZW1lbnQudGFiSW5kZXhgXG4gICAgICAvLyBwcm9wZXJ0eSBhcyB0aGF0IG9uZSBpcyBzZXQgdG8gYC0xYCBpbiBDaHJvbWUsIEVkZ2UgYW5kIFNhZmFyaSB2MTMuMS4gVGhlXG4gICAgICAvLyB0YWJpbmRleCBhdHRyaWJ1dGUgaXMgdGhlIHNvdXJjZSBvZiB0cnV0aCBoZXJlLlxuICAgICAgaWYgKHRhYkluZGV4VmFsdWUgPT09IC0xKSB7XG4gICAgICAgIHJldHVybiBmYWxzZTtcbiAgICAgIH1cbiAgICAgIC8vIElmIHRoZSB0YWJpbmRleCBpcyBleHBsaWNpdGx5IHNldCwgYW5kIG5vdCBgLTFgIChhcyBwZXIgY2hlY2sgYmVmb3JlKSwgdGhlXG4gICAgICAvLyB2aWRlbyBlbGVtZW50IGlzIGFsd2F5cyB0YWJiYWJsZSAocmVnYXJkbGVzcyBvZiB3aGV0aGVyIGl0IGhhcyBjb250cm9scyBvciBub3QpLlxuICAgICAgaWYgKHRhYkluZGV4VmFsdWUgIT09IG51bGwpIHtcbiAgICAgICAgcmV0dXJuIHRydWU7XG4gICAgICB9XG4gICAgICAvLyBPdGhlcndpc2UgKHdoZW4gbm8gZXhwbGljaXQgdGFiaW5kZXggaXMgc2V0KSwgYSB2aWRlbyBpcyBvbmx5IHRhYmJhYmxlIGlmIGl0XG4gICAgICAvLyBoYXMgY29udHJvbHMgZW5hYmxlZC4gRmlyZWZveCBpcyBzcGVjaWFsIGFzIHZpZGVvcyBhcmUgYWx3YXlzIHRhYmJhYmxlIHJlZ2FyZGxlc3NcbiAgICAgIC8vIG9mIHdoZXRoZXIgdGhlcmUgYXJlIGNvbnRyb2xzIG9yIG5vdC5cbiAgICAgIHJldHVybiB0aGlzLl9wbGF0Zm9ybS5GSVJFRk9YIHx8IGVsZW1lbnQuaGFzQXR0cmlidXRlKCdjb250cm9scycpO1xuICAgIH1cblxuICAgIHJldHVybiBlbGVtZW50LnRhYkluZGV4ID49IDA7XG4gIH1cblxuICAvKipcbiAgICogR2V0cyB3aGV0aGVyIGFuIGVsZW1lbnQgY2FuIGJlIGZvY3VzZWQgYnkgdGhlIHVzZXIuXG4gICAqXG4gICAqIEBwYXJhbSBlbGVtZW50IEVsZW1lbnQgdG8gYmUgY2hlY2tlZC5cbiAgICogQHBhcmFtIGNvbmZpZyBUaGUgY29uZmlnIG9iamVjdCB3aXRoIG9wdGlvbnMgdG8gY3VzdG9taXplIHRoaXMgbWV0aG9kJ3MgYmVoYXZpb3JcbiAgICogQHJldHVybnMgV2hldGhlciB0aGUgZWxlbWVudCBpcyBmb2N1c2FibGUuXG4gICAqL1xuICBpc0ZvY3VzYWJsZShlbGVtZW50OiBIVE1MRWxlbWVudCwgY29uZmlnPzogSXNGb2N1c2FibGVDb25maWcpOiBib29sZWFuIHtcbiAgICAvLyBQZXJmb3JtIGNoZWNrcyBpbiBvcmRlciBvZiBsZWZ0IHRvIG1vc3QgZXhwZW5zaXZlLlxuICAgIC8vIEFnYWluLCBuYWl2ZSBhcHByb2FjaCB0aGF0IGRvZXMgbm90IGNhcHR1cmUgbWFueSBlZGdlIGNhc2VzIGFuZCBicm93c2VyIHF1aXJrcy5cbiAgICByZXR1cm4gaXNQb3RlbnRpYWxseUZvY3VzYWJsZShlbGVtZW50KSAmJiAhdGhpcy5pc0Rpc2FibGVkKGVsZW1lbnQpICYmXG4gICAgICAoY29uZmlnPy5pZ25vcmVWaXNpYmlsaXR5IHx8IHRoaXMuaXNWaXNpYmxlKGVsZW1lbnQpKTtcbiAgfVxuXG59XG5cbi8qKlxuICogUmV0dXJucyB0aGUgZnJhbWUgZWxlbWVudCBmcm9tIGEgd2luZG93IG9iamVjdC4gU2luY2UgYnJvd3NlcnMgbGlrZSBNUyBFZGdlIHRocm93IGVycm9ycyBpZlxuICogdGhlIGZyYW1lRWxlbWVudCBwcm9wZXJ0eSBpcyBiZWluZyBhY2Nlc3NlZCBmcm9tIGEgZGlmZmVyZW50IGhvc3QgYWRkcmVzcywgdGhpcyBwcm9wZXJ0eVxuICogc2hvdWxkIGJlIGFjY2Vzc2VkIGNhcmVmdWxseS5cbiAqL1xuZnVuY3Rpb24gZ2V0RnJhbWVFbGVtZW50KHdpbmRvdzogV2luZG93KSB7XG4gIHRyeSB7XG4gICAgcmV0dXJuIHdpbmRvdy5mcmFtZUVsZW1lbnQgYXMgSFRNTEVsZW1lbnQ7XG4gIH0gY2F0Y2gge1xuICAgIHJldHVybiBudWxsO1xuICB9XG59XG5cbi8qKiBDaGVja3Mgd2hldGhlciB0aGUgc3BlY2lmaWVkIGVsZW1lbnQgaGFzIGFueSBnZW9tZXRyeSAvIHJlY3RhbmdsZXMuICovXG5mdW5jdGlvbiBoYXNHZW9tZXRyeShlbGVtZW50OiBIVE1MRWxlbWVudCk6IGJvb2xlYW4ge1xuICAvLyBVc2UgbG9naWMgZnJvbSBqUXVlcnkgdG8gY2hlY2sgZm9yIGFuIGludmlzaWJsZSBlbGVtZW50LlxuICAvLyBTZWUgaHR0cHM6Ly9naXRodWIuY29tL2pxdWVyeS9qcXVlcnkvYmxvYi9tYXN0ZXIvc3JjL2Nzcy9oaWRkZW5WaXNpYmxlU2VsZWN0b3JzLmpzI0wxMlxuICByZXR1cm4gISEoZWxlbWVudC5vZmZzZXRXaWR0aCB8fCBlbGVtZW50Lm9mZnNldEhlaWdodCB8fFxuICAgICAgKHR5cGVvZiBlbGVtZW50LmdldENsaWVudFJlY3RzID09PSAnZnVuY3Rpb24nICYmIGVsZW1lbnQuZ2V0Q2xpZW50UmVjdHMoKS5sZW5ndGgpKTtcbn1cblxuLyoqIEdldHMgd2hldGhlciBhbiBlbGVtZW50J3MgICovXG5mdW5jdGlvbiBpc05hdGl2ZUZvcm1FbGVtZW50KGVsZW1lbnQ6IE5vZGUpIHtcbiAgbGV0IG5vZGVOYW1lID0gZWxlbWVudC5ub2RlTmFtZS50b0xvd2VyQ2FzZSgpO1xuICByZXR1cm4gbm9kZU5hbWUgPT09ICdpbnB1dCcgfHxcbiAgICAgIG5vZGVOYW1lID09PSAnc2VsZWN0JyB8fFxuICAgICAgbm9kZU5hbWUgPT09ICdidXR0b24nIHx8XG4gICAgICBub2RlTmFtZSA9PT0gJ3RleHRhcmVhJztcbn1cblxuLyoqIEdldHMgd2hldGhlciBhbiBlbGVtZW50IGlzIGFuIGA8aW5wdXQgdHlwZT1cImhpZGRlblwiPmAuICovXG5mdW5jdGlvbiBpc0hpZGRlbklucHV0KGVsZW1lbnQ6IEhUTUxFbGVtZW50KTogYm9vbGVhbiB7XG4gIHJldHVybiBpc0lucHV0RWxlbWVudChlbGVtZW50KSAmJiBlbGVtZW50LnR5cGUgPT0gJ2hpZGRlbic7XG59XG5cbi8qKiBHZXRzIHdoZXRoZXIgYW4gZWxlbWVudCBpcyBhbiBhbmNob3IgdGhhdCBoYXMgYW4gaHJlZiBhdHRyaWJ1dGUuICovXG5mdW5jdGlvbiBpc0FuY2hvcldpdGhIcmVmKGVsZW1lbnQ6IEhUTUxFbGVtZW50KTogYm9vbGVhbiB7XG4gIHJldHVybiBpc0FuY2hvckVsZW1lbnQoZWxlbWVudCkgJiYgZWxlbWVudC5oYXNBdHRyaWJ1dGUoJ2hyZWYnKTtcbn1cblxuLyoqIEdldHMgd2hldGhlciBhbiBlbGVtZW50IGlzIGFuIGlucHV0IGVsZW1lbnQuICovXG5mdW5jdGlvbiBpc0lucHV0RWxlbWVudChlbGVtZW50OiBIVE1MRWxlbWVudCk6IGVsZW1lbnQgaXMgSFRNTElucHV0RWxlbWVudCB7XG4gIHJldHVybiBlbGVtZW50Lm5vZGVOYW1lLnRvTG93ZXJDYXNlKCkgPT0gJ2lucHV0Jztcbn1cblxuLyoqIEdldHMgd2hldGhlciBhbiBlbGVtZW50IGlzIGFuIGFuY2hvciBlbGVtZW50LiAqL1xuZnVuY3Rpb24gaXNBbmNob3JFbGVtZW50KGVsZW1lbnQ6IEhUTUxFbGVtZW50KTogZWxlbWVudCBpcyBIVE1MQW5jaG9yRWxlbWVudCB7XG4gIHJldHVybiBlbGVtZW50Lm5vZGVOYW1lLnRvTG93ZXJDYXNlKCkgPT0gJ2EnO1xufVxuXG4vKiogR2V0cyB3aGV0aGVyIGFuIGVsZW1lbnQgaGFzIGEgdmFsaWQgdGFiaW5kZXguICovXG5mdW5jdGlvbiBoYXNWYWxpZFRhYkluZGV4KGVsZW1lbnQ6IEhUTUxFbGVtZW50KTogYm9vbGVhbiB7XG4gIGlmICghZWxlbWVudC5oYXNBdHRyaWJ1dGUoJ3RhYmluZGV4JykgfHwgZWxlbWVudC50YWJJbmRleCA9PT0gdW5kZWZpbmVkKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgbGV0IHRhYkluZGV4ID0gZWxlbWVudC5nZXRBdHRyaWJ1dGUoJ3RhYmluZGV4Jyk7XG5cbiAgLy8gSUUxMSBwYXJzZXMgdGFiaW5kZXg9XCJcIiBhcyB0aGUgdmFsdWUgXCItMzI3NjhcIlxuICBpZiAodGFiSW5kZXggPT0gJy0zMjc2OCcpIHtcbiAgICByZXR1cm4gZmFsc2U7XG4gIH1cblxuICByZXR1cm4gISEodGFiSW5kZXggJiYgIWlzTmFOKHBhcnNlSW50KHRhYkluZGV4LCAxMCkpKTtcbn1cblxuLyoqXG4gKiBSZXR1cm5zIHRoZSBwYXJzZWQgdGFiaW5kZXggZnJvbSB0aGUgZWxlbWVudCBhdHRyaWJ1dGVzIGluc3RlYWQgb2YgcmV0dXJuaW5nIHRoZVxuICogZXZhbHVhdGVkIHRhYmluZGV4IGZyb20gdGhlIGJyb3dzZXJzIGRlZmF1bHRzLlxuICovXG5mdW5jdGlvbiBnZXRUYWJJbmRleFZhbHVlKGVsZW1lbnQ6IEhUTUxFbGVtZW50KTogbnVtYmVyIHwgbnVsbCB7XG4gIGlmICghaGFzVmFsaWRUYWJJbmRleChlbGVtZW50KSkge1xuICAgIHJldHVybiBudWxsO1xuICB9XG5cbiAgLy8gU2VlIGJyb3dzZXIgaXNzdWUgaW4gR2Vja28gaHR0cHM6Ly9idWd6aWxsYS5tb3ppbGxhLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyODA1NFxuICBjb25zdCB0YWJJbmRleCA9IHBhcnNlSW50KGVsZW1lbnQuZ2V0QXR0cmlidXRlKCd0YWJpbmRleCcpIHx8ICcnLCAxMCk7XG5cbiAgcmV0dXJuIGlzTmFOKHRhYkluZGV4KSA/IC0xIDogdGFiSW5kZXg7XG59XG5cbi8qKiBDaGVja3Mgd2hldGhlciB0aGUgc3BlY2lmaWVkIGVsZW1lbnQgaXMgcG90ZW50aWFsbHkgdGFiYmFibGUgb24gaU9TICovXG5mdW5jdGlvbiBpc1BvdGVudGlhbGx5VGFiYmFibGVJT1MoZWxlbWVudDogSFRNTEVsZW1lbnQpOiBib29sZWFuIHtcbiAgbGV0IG5vZGVOYW1lID0gZWxlbWVudC5ub2RlTmFtZS50b0xvd2VyQ2FzZSgpO1xuICBsZXQgaW5wdXRUeXBlID0gbm9kZU5hbWUgPT09ICdpbnB1dCcgJiYgKGVsZW1lbnQgYXMgSFRNTElucHV0RWxlbWVudCkudHlwZTtcblxuICByZXR1cm4gaW5wdXRUeXBlID09PSAndGV4dCdcbiAgICAgIHx8IGlucHV0VHlwZSA9PT0gJ3Bhc3N3b3JkJ1xuICAgICAgfHwgbm9kZU5hbWUgPT09ICdzZWxlY3QnXG4gICAgICB8fCBub2RlTmFtZSA9PT0gJ3RleHRhcmVhJztcbn1cblxuLyoqXG4gKiBHZXRzIHdoZXRoZXIgYW4gZWxlbWVudCBpcyBwb3RlbnRpYWxseSBmb2N1c2FibGUgd2l0aG91dCB0YWtpbmcgY3VycmVudCB2aXNpYmxlL2Rpc2FibGVkIHN0YXRlXG4gKiBpbnRvIGFjY291bnQuXG4gKi9cbmZ1bmN0aW9uIGlzUG90ZW50aWFsbHlGb2N1c2FibGUoZWxlbWVudDogSFRNTEVsZW1lbnQpOiBib29sZWFuIHtcbiAgLy8gSW5wdXRzIGFyZSBwb3RlbnRpYWxseSBmb2N1c2FibGUgKnVubGVzcyogdGhleSdyZSB0eXBlPVwiaGlkZGVuXCIuXG4gIGlmIChpc0hpZGRlbklucHV0KGVsZW1lbnQpKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgcmV0dXJuIGlzTmF0aXZlRm9ybUVsZW1lbnQoZWxlbWVudCkgfHxcbiAgICAgIGlzQW5jaG9yV2l0aEhyZWYoZWxlbWVudCkgfHxcbiAgICAgIGVsZW1lbnQuaGFzQXR0cmlidXRlKCdjb250ZW50ZWRpdGFibGUnKSB8fFxuICAgICAgaGFzVmFsaWRUYWJJbmRleChlbGVtZW50KTtcbn1cblxuLyoqIEdldHMgdGhlIHBhcmVudCB3aW5kb3cgb2YgYSBET00gbm9kZSB3aXRoIHJlZ2FyZHMgb2YgYmVpbmcgaW5zaWRlIG9mIGFuIGlmcmFtZS4gKi9cbmZ1bmN0aW9uIGdldFdpbmRvdyhub2RlOiBIVE1MRWxlbWVudCk6IFdpbmRvdyB7XG4gIC8vIG93bmVyRG9jdW1lbnQgaXMgbnVsbCBpZiBgbm9kZWAgaXRzZWxmICppcyogYSBkb2N1bWVudC5cbiAgcmV0dXJuIG5vZGUub3duZXJEb2N1bWVudCAmJiBub2RlLm93bmVyRG9jdW1lbnQuZGVmYXVsdFZpZXcgfHwgd2luZG93O1xufVxuIl19