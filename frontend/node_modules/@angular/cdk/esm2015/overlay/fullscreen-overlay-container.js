/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Injectable, Inject } from '@angular/core';
import { OverlayContainer } from './overlay-container';
import { DOCUMENT } from '@angular/common';
import { Platform } from '@angular/cdk/platform';
import * as i0 from "@angular/core";
import * as i1 from "@angular/common";
import * as i2 from "@angular/cdk/platform";
/**
 * Alternative to OverlayContainer that supports correct displaying of overlay elements in
 * Fullscreen mode
 * https://developer.mozilla.org/en-US/docs/Web/API/Element/requestFullScreen
 *
 * Should be provided in the root component.
 */
export class FullscreenOverlayContainer extends OverlayContainer {
    constructor(_document, 
    /**
     * @deprecated `platform` parameter to become required.
     * @breaking-change 10.0.0
     */
    platform) {
        super(_document, platform);
    }
    ngOnDestroy() {
        super.ngOnDestroy();
        if (this._fullScreenEventName && this._fullScreenListener) {
            this._document.removeEventListener(this._fullScreenEventName, this._fullScreenListener);
        }
    }
    _createContainer() {
        super._createContainer();
        this._adjustParentForFullscreenChange();
        this._addFullscreenChangeListener(() => this._adjustParentForFullscreenChange());
    }
    _adjustParentForFullscreenChange() {
        if (!this._containerElement) {
            return;
        }
        const fullscreenElement = this.getFullscreenElement();
        const parent = fullscreenElement || this._document.body;
        parent.appendChild(this._containerElement);
    }
    _addFullscreenChangeListener(fn) {
        const eventName = this._getEventName();
        if (eventName) {
            if (this._fullScreenListener) {
                this._document.removeEventListener(eventName, this._fullScreenListener);
            }
            this._document.addEventListener(eventName, fn);
            this._fullScreenListener = fn;
        }
    }
    _getEventName() {
        if (!this._fullScreenEventName) {
            const _document = this._document;
            if (_document.fullscreenEnabled) {
                this._fullScreenEventName = 'fullscreenchange';
            }
            else if (_document.webkitFullscreenEnabled) {
                this._fullScreenEventName = 'webkitfullscreenchange';
            }
            else if (_document.mozFullScreenEnabled) {
                this._fullScreenEventName = 'mozfullscreenchange';
            }
            else if (_document.msFullscreenEnabled) {
                this._fullScreenEventName = 'MSFullscreenChange';
            }
        }
        return this._fullScreenEventName;
    }
    /**
     * When the page is put into fullscreen mode, a specific element is specified.
     * Only that element and its children are visible when in fullscreen mode.
     */
    getFullscreenElement() {
        const _document = this._document;
        return _document.fullscreenElement ||
            _document.webkitFullscreenElement ||
            _document.mozFullScreenElement ||
            _document.msFullscreenElement ||
            null;
    }
}
FullscreenOverlayContainer.ɵprov = i0.ɵɵdefineInjectable({ factory: function FullscreenOverlayContainer_Factory() { return new FullscreenOverlayContainer(i0.ɵɵinject(i1.DOCUMENT), i0.ɵɵinject(i2.Platform)); }, token: FullscreenOverlayContainer, providedIn: "root" });
FullscreenOverlayContainer.decorators = [
    { type: Injectable, args: [{ providedIn: 'root' },] }
];
FullscreenOverlayContainer.ctorParameters = () => [
    { type: undefined, decorators: [{ type: Inject, args: [DOCUMENT,] }] },
    { type: Platform }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZnVsbHNjcmVlbi1vdmVybGF5LWNvbnRhaW5lci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvb3ZlcmxheS9mdWxsc2NyZWVuLW92ZXJsYXktY29udGFpbmVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBQyxVQUFVLEVBQUUsTUFBTSxFQUFZLE1BQU0sZUFBZSxDQUFDO0FBQzVELE9BQU8sRUFBQyxnQkFBZ0IsRUFBQyxNQUFNLHFCQUFxQixDQUFDO0FBQ3JELE9BQU8sRUFBQyxRQUFRLEVBQUMsTUFBTSxpQkFBaUIsQ0FBQztBQUN6QyxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0sdUJBQXVCLENBQUM7Ozs7QUFHL0M7Ozs7OztHQU1HO0FBRUgsTUFBTSxPQUFPLDBCQUEyQixTQUFRLGdCQUFnQjtJQUk5RCxZQUNvQixTQUFjO0lBQ2hDOzs7T0FHRztJQUNILFFBQW1CO1FBQ25CLEtBQUssQ0FBQyxTQUFTLEVBQUUsUUFBUSxDQUFDLENBQUM7SUFDN0IsQ0FBQztJQUVELFdBQVc7UUFDVCxLQUFLLENBQUMsV0FBVyxFQUFFLENBQUM7UUFFcEIsSUFBSSxJQUFJLENBQUMsb0JBQW9CLElBQUksSUFBSSxDQUFDLG1CQUFtQixFQUFFO1lBQ3pELElBQUksQ0FBQyxTQUFTLENBQUMsbUJBQW1CLENBQUMsSUFBSSxDQUFDLG9CQUFvQixFQUFFLElBQUksQ0FBQyxtQkFBbUIsQ0FBQyxDQUFDO1NBQ3pGO0lBQ0gsQ0FBQztJQUVTLGdCQUFnQjtRQUN4QixLQUFLLENBQUMsZ0JBQWdCLEVBQUUsQ0FBQztRQUN6QixJQUFJLENBQUMsZ0NBQWdDLEVBQUUsQ0FBQztRQUN4QyxJQUFJLENBQUMsNEJBQTRCLENBQUMsR0FBRyxFQUFFLENBQUMsSUFBSSxDQUFDLGdDQUFnQyxFQUFFLENBQUMsQ0FBQztJQUNuRixDQUFDO0lBRU8sZ0NBQWdDO1FBQ3RDLElBQUksQ0FBQyxJQUFJLENBQUMsaUJBQWlCLEVBQUU7WUFDM0IsT0FBTztTQUNSO1FBRUQsTUFBTSxpQkFBaUIsR0FBRyxJQUFJLENBQUMsb0JBQW9CLEVBQUUsQ0FBQztRQUN0RCxNQUFNLE1BQU0sR0FBRyxpQkFBaUIsSUFBSSxJQUFJLENBQUMsU0FBUyxDQUFDLElBQUksQ0FBQztRQUN4RCxNQUFNLENBQUMsV0FBVyxDQUFDLElBQUksQ0FBQyxpQkFBaUIsQ0FBQyxDQUFDO0lBQzdDLENBQUM7SUFFTyw0QkFBNEIsQ0FBQyxFQUFjO1FBQ2pELE1BQU0sU0FBUyxHQUFHLElBQUksQ0FBQyxhQUFhLEVBQUUsQ0FBQztRQUV2QyxJQUFJLFNBQVMsRUFBRTtZQUNiLElBQUksSUFBSSxDQUFDLG1CQUFtQixFQUFFO2dCQUM1QixJQUFJLENBQUMsU0FBUyxDQUFDLG1CQUFtQixDQUFDLFNBQVMsRUFBRSxJQUFJLENBQUMsbUJBQW1CLENBQUMsQ0FBQzthQUN6RTtZQUVELElBQUksQ0FBQyxTQUFTLENBQUMsZ0JBQWdCLENBQUMsU0FBUyxFQUFFLEVBQUUsQ0FBQyxDQUFDO1lBQy9DLElBQUksQ0FBQyxtQkFBbUIsR0FBRyxFQUFFLENBQUM7U0FDL0I7SUFDSCxDQUFDO0lBRU8sYUFBYTtRQUNuQixJQUFJLENBQUMsSUFBSSxDQUFDLG9CQUFvQixFQUFFO1lBQzlCLE1BQU0sU0FBUyxHQUFHLElBQUksQ0FBQyxTQUFnQixDQUFDO1lBRXhDLElBQUksU0FBUyxDQUFDLGlCQUFpQixFQUFFO2dCQUMvQixJQUFJLENBQUMsb0JBQW9CLEdBQUcsa0JBQWtCLENBQUM7YUFDaEQ7aUJBQU0sSUFBSSxTQUFTLENBQUMsdUJBQXVCLEVBQUU7Z0JBQzVDLElBQUksQ0FBQyxvQkFBb0IsR0FBRyx3QkFBd0IsQ0FBQzthQUN0RDtpQkFBTSxJQUFJLFNBQVMsQ0FBQyxvQkFBb0IsRUFBRTtnQkFDekMsSUFBSSxDQUFDLG9CQUFvQixHQUFHLHFCQUFxQixDQUFDO2FBQ25EO2lCQUFNLElBQUksU0FBUyxDQUFDLG1CQUFtQixFQUFFO2dCQUN4QyxJQUFJLENBQUMsb0JBQW9CLEdBQUcsb0JBQW9CLENBQUM7YUFDbEQ7U0FDRjtRQUVELE9BQU8sSUFBSSxDQUFDLG9CQUFvQixDQUFDO0lBQ25DLENBQUM7SUFFRDs7O09BR0c7SUFDSCxvQkFBb0I7UUFDbEIsTUFBTSxTQUFTLEdBQUcsSUFBSSxDQUFDLFNBQWdCLENBQUM7UUFFeEMsT0FBTyxTQUFTLENBQUMsaUJBQWlCO1lBQzNCLFNBQVMsQ0FBQyx1QkFBdUI7WUFDakMsU0FBUyxDQUFDLG9CQUFvQjtZQUM5QixTQUFTLENBQUMsbUJBQW1CO1lBQzdCLElBQUksQ0FBQztJQUNkLENBQUM7Ozs7WUFsRkYsVUFBVSxTQUFDLEVBQUMsVUFBVSxFQUFFLE1BQU0sRUFBQzs7OzRDQU0zQixNQUFNLFNBQUMsUUFBUTtZQWhCWixRQUFRIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7SW5qZWN0YWJsZSwgSW5qZWN0LCBPbkRlc3Ryb3l9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHtPdmVybGF5Q29udGFpbmVyfSBmcm9tICcuL292ZXJsYXktY29udGFpbmVyJztcbmltcG9ydCB7RE9DVU1FTlR9IGZyb20gJ0Bhbmd1bGFyL2NvbW1vbic7XG5pbXBvcnQge1BsYXRmb3JtfSBmcm9tICdAYW5ndWxhci9jZGsvcGxhdGZvcm0nO1xuXG5cbi8qKlxuICogQWx0ZXJuYXRpdmUgdG8gT3ZlcmxheUNvbnRhaW5lciB0aGF0IHN1cHBvcnRzIGNvcnJlY3QgZGlzcGxheWluZyBvZiBvdmVybGF5IGVsZW1lbnRzIGluXG4gKiBGdWxsc2NyZWVuIG1vZGVcbiAqIGh0dHBzOi8vZGV2ZWxvcGVyLm1vemlsbGEub3JnL2VuLVVTL2RvY3MvV2ViL0FQSS9FbGVtZW50L3JlcXVlc3RGdWxsU2NyZWVuXG4gKlxuICogU2hvdWxkIGJlIHByb3ZpZGVkIGluIHRoZSByb290IGNvbXBvbmVudC5cbiAqL1xuQEluamVjdGFibGUoe3Byb3ZpZGVkSW46ICdyb290J30pXG5leHBvcnQgY2xhc3MgRnVsbHNjcmVlbk92ZXJsYXlDb250YWluZXIgZXh0ZW5kcyBPdmVybGF5Q29udGFpbmVyIGltcGxlbWVudHMgT25EZXN0cm95IHtcbiAgcHJpdmF0ZSBfZnVsbFNjcmVlbkV2ZW50TmFtZTogc3RyaW5nIHwgdW5kZWZpbmVkO1xuICBwcml2YXRlIF9mdWxsU2NyZWVuTGlzdGVuZXI6ICgpID0+IHZvaWQ7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgQEluamVjdChET0NVTUVOVCkgX2RvY3VtZW50OiBhbnksXG4gICAgLyoqXG4gICAgICogQGRlcHJlY2F0ZWQgYHBsYXRmb3JtYCBwYXJhbWV0ZXIgdG8gYmVjb21lIHJlcXVpcmVkLlxuICAgICAqIEBicmVha2luZy1jaGFuZ2UgMTAuMC4wXG4gICAgICovXG4gICAgcGxhdGZvcm0/OiBQbGF0Zm9ybSkge1xuICAgIHN1cGVyKF9kb2N1bWVudCwgcGxhdGZvcm0pO1xuICB9XG5cbiAgbmdPbkRlc3Ryb3koKSB7XG4gICAgc3VwZXIubmdPbkRlc3Ryb3koKTtcblxuICAgIGlmICh0aGlzLl9mdWxsU2NyZWVuRXZlbnROYW1lICYmIHRoaXMuX2Z1bGxTY3JlZW5MaXN0ZW5lcikge1xuICAgICAgdGhpcy5fZG9jdW1lbnQucmVtb3ZlRXZlbnRMaXN0ZW5lcih0aGlzLl9mdWxsU2NyZWVuRXZlbnROYW1lLCB0aGlzLl9mdWxsU2NyZWVuTGlzdGVuZXIpO1xuICAgIH1cbiAgfVxuXG4gIHByb3RlY3RlZCBfY3JlYXRlQ29udGFpbmVyKCk6IHZvaWQge1xuICAgIHN1cGVyLl9jcmVhdGVDb250YWluZXIoKTtcbiAgICB0aGlzLl9hZGp1c3RQYXJlbnRGb3JGdWxsc2NyZWVuQ2hhbmdlKCk7XG4gICAgdGhpcy5fYWRkRnVsbHNjcmVlbkNoYW5nZUxpc3RlbmVyKCgpID0+IHRoaXMuX2FkanVzdFBhcmVudEZvckZ1bGxzY3JlZW5DaGFuZ2UoKSk7XG4gIH1cblxuICBwcml2YXRlIF9hZGp1c3RQYXJlbnRGb3JGdWxsc2NyZWVuQ2hhbmdlKCk6IHZvaWQge1xuICAgIGlmICghdGhpcy5fY29udGFpbmVyRWxlbWVudCkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIGNvbnN0IGZ1bGxzY3JlZW5FbGVtZW50ID0gdGhpcy5nZXRGdWxsc2NyZWVuRWxlbWVudCgpO1xuICAgIGNvbnN0IHBhcmVudCA9IGZ1bGxzY3JlZW5FbGVtZW50IHx8IHRoaXMuX2RvY3VtZW50LmJvZHk7XG4gICAgcGFyZW50LmFwcGVuZENoaWxkKHRoaXMuX2NvbnRhaW5lckVsZW1lbnQpO1xuICB9XG5cbiAgcHJpdmF0ZSBfYWRkRnVsbHNjcmVlbkNoYW5nZUxpc3RlbmVyKGZuOiAoKSA9PiB2b2lkKSB7XG4gICAgY29uc3QgZXZlbnROYW1lID0gdGhpcy5fZ2V0RXZlbnROYW1lKCk7XG5cbiAgICBpZiAoZXZlbnROYW1lKSB7XG4gICAgICBpZiAodGhpcy5fZnVsbFNjcmVlbkxpc3RlbmVyKSB7XG4gICAgICAgIHRoaXMuX2RvY3VtZW50LnJlbW92ZUV2ZW50TGlzdGVuZXIoZXZlbnROYW1lLCB0aGlzLl9mdWxsU2NyZWVuTGlzdGVuZXIpO1xuICAgICAgfVxuXG4gICAgICB0aGlzLl9kb2N1bWVudC5hZGRFdmVudExpc3RlbmVyKGV2ZW50TmFtZSwgZm4pO1xuICAgICAgdGhpcy5fZnVsbFNjcmVlbkxpc3RlbmVyID0gZm47XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0RXZlbnROYW1lKCk6IHN0cmluZyB8IHVuZGVmaW5lZCB7XG4gICAgaWYgKCF0aGlzLl9mdWxsU2NyZWVuRXZlbnROYW1lKSB7XG4gICAgICBjb25zdCBfZG9jdW1lbnQgPSB0aGlzLl9kb2N1bWVudCBhcyBhbnk7XG5cbiAgICAgIGlmIChfZG9jdW1lbnQuZnVsbHNjcmVlbkVuYWJsZWQpIHtcbiAgICAgICAgdGhpcy5fZnVsbFNjcmVlbkV2ZW50TmFtZSA9ICdmdWxsc2NyZWVuY2hhbmdlJztcbiAgICAgIH0gZWxzZSBpZiAoX2RvY3VtZW50LndlYmtpdEZ1bGxzY3JlZW5FbmFibGVkKSB7XG4gICAgICAgIHRoaXMuX2Z1bGxTY3JlZW5FdmVudE5hbWUgPSAnd2Via2l0ZnVsbHNjcmVlbmNoYW5nZSc7XG4gICAgICB9IGVsc2UgaWYgKF9kb2N1bWVudC5tb3pGdWxsU2NyZWVuRW5hYmxlZCkge1xuICAgICAgICB0aGlzLl9mdWxsU2NyZWVuRXZlbnROYW1lID0gJ21vemZ1bGxzY3JlZW5jaGFuZ2UnO1xuICAgICAgfSBlbHNlIGlmIChfZG9jdW1lbnQubXNGdWxsc2NyZWVuRW5hYmxlZCkge1xuICAgICAgICB0aGlzLl9mdWxsU2NyZWVuRXZlbnROYW1lID0gJ01TRnVsbHNjcmVlbkNoYW5nZSc7XG4gICAgICB9XG4gICAgfVxuXG4gICAgcmV0dXJuIHRoaXMuX2Z1bGxTY3JlZW5FdmVudE5hbWU7XG4gIH1cblxuICAvKipcbiAgICogV2hlbiB0aGUgcGFnZSBpcyBwdXQgaW50byBmdWxsc2NyZWVuIG1vZGUsIGEgc3BlY2lmaWMgZWxlbWVudCBpcyBzcGVjaWZpZWQuXG4gICAqIE9ubHkgdGhhdCBlbGVtZW50IGFuZCBpdHMgY2hpbGRyZW4gYXJlIHZpc2libGUgd2hlbiBpbiBmdWxsc2NyZWVuIG1vZGUuXG4gICAqL1xuICBnZXRGdWxsc2NyZWVuRWxlbWVudCgpOiBFbGVtZW50IHtcbiAgICBjb25zdCBfZG9jdW1lbnQgPSB0aGlzLl9kb2N1bWVudCBhcyBhbnk7XG5cbiAgICByZXR1cm4gX2RvY3VtZW50LmZ1bGxzY3JlZW5FbGVtZW50IHx8XG4gICAgICAgICAgIF9kb2N1bWVudC53ZWJraXRGdWxsc2NyZWVuRWxlbWVudCB8fFxuICAgICAgICAgICBfZG9jdW1lbnQubW96RnVsbFNjcmVlbkVsZW1lbnQgfHxcbiAgICAgICAgICAgX2RvY3VtZW50Lm1zRnVsbHNjcmVlbkVsZW1lbnQgfHxcbiAgICAgICAgICAgbnVsbDtcbiAgfVxufVxuIl19