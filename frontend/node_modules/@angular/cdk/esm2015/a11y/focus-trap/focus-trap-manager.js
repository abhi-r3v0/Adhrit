/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Injectable } from '@angular/core';
import * as i0 from "@angular/core";
/** Injectable that ensures only the most recently enabled FocusTrap is active. */
export class FocusTrapManager {
    constructor() {
        // A stack of the FocusTraps on the page. Only the FocusTrap at the
        // top of the stack is active.
        this._focusTrapStack = [];
    }
    /**
     * Disables the FocusTrap at the top of the stack, and then pushes
     * the new FocusTrap onto the stack.
     */
    register(focusTrap) {
        // Dedupe focusTraps that register multiple times.
        this._focusTrapStack = this._focusTrapStack.filter((ft) => ft !== focusTrap);
        let stack = this._focusTrapStack;
        if (stack.length) {
            stack[stack.length - 1]._disable();
        }
        stack.push(focusTrap);
        focusTrap._enable();
    }
    /**
     * Removes the FocusTrap from the stack, and activates the
     * FocusTrap that is the new top of the stack.
     */
    deregister(focusTrap) {
        focusTrap._disable();
        const stack = this._focusTrapStack;
        const i = stack.indexOf(focusTrap);
        if (i !== -1) {
            stack.splice(i, 1);
            if (stack.length) {
                stack[stack.length - 1]._enable();
            }
        }
    }
}
FocusTrapManager.ɵprov = i0.ɵɵdefineInjectable({ factory: function FocusTrapManager_Factory() { return new FocusTrapManager(); }, token: FocusTrapManager, providedIn: "root" });
FocusTrapManager.decorators = [
    { type: Injectable, args: [{ providedIn: 'root' },] }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZm9jdXMtdHJhcC1tYW5hZ2VyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9hMTF5L2ZvY3VzLXRyYXAvZm9jdXMtdHJhcC1tYW5hZ2VyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBQyxVQUFVLEVBQUMsTUFBTSxlQUFlLENBQUM7O0FBWXpDLGtGQUFrRjtBQUVsRixNQUFNLE9BQU8sZ0JBQWdCO0lBRDdCO1FBRUUsbUVBQW1FO1FBQ25FLDhCQUE4QjtRQUN0QixvQkFBZSxHQUF1QixFQUFFLENBQUM7S0FxQ2xEO0lBbkNDOzs7T0FHRztJQUNILFFBQVEsQ0FBQyxTQUEyQjtRQUNsQyxrREFBa0Q7UUFDbEQsSUFBSSxDQUFDLGVBQWUsR0FBRyxJQUFJLENBQUMsZUFBZSxDQUFDLE1BQU0sQ0FBQyxDQUFDLEVBQUUsRUFBRSxFQUFFLENBQUMsRUFBRSxLQUFLLFNBQVMsQ0FBQyxDQUFDO1FBRTdFLElBQUksS0FBSyxHQUFHLElBQUksQ0FBQyxlQUFlLENBQUM7UUFFakMsSUFBSSxLQUFLLENBQUMsTUFBTSxFQUFFO1lBQ2hCLEtBQUssQ0FBQyxLQUFLLENBQUMsTUFBTSxHQUFHLENBQUMsQ0FBQyxDQUFDLFFBQVEsRUFBRSxDQUFDO1NBQ3BDO1FBRUQsS0FBSyxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztRQUN0QixTQUFTLENBQUMsT0FBTyxFQUFFLENBQUM7SUFDdEIsQ0FBQztJQUVEOzs7T0FHRztJQUNILFVBQVUsQ0FBQyxTQUEyQjtRQUNwQyxTQUFTLENBQUMsUUFBUSxFQUFFLENBQUM7UUFFckIsTUFBTSxLQUFLLEdBQUcsSUFBSSxDQUFDLGVBQWUsQ0FBQztRQUVuQyxNQUFNLENBQUMsR0FBRyxLQUFLLENBQUMsT0FBTyxDQUFDLFNBQVMsQ0FBQyxDQUFDO1FBQ25DLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQyxFQUFFO1lBQ1osS0FBSyxDQUFDLE1BQU0sQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDLENBQUM7WUFDbkIsSUFBSSxLQUFLLENBQUMsTUFBTSxFQUFFO2dCQUNoQixLQUFLLENBQUMsS0FBSyxDQUFDLE1BQU0sR0FBRyxDQUFDLENBQUMsQ0FBQyxPQUFPLEVBQUUsQ0FBQzthQUNuQztTQUNGO0lBQ0gsQ0FBQzs7OztZQXhDRixVQUFVLFNBQUMsRUFBQyxVQUFVLEVBQUUsTUFBTSxFQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7SW5qZWN0YWJsZX0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbi8qKlxuICogQSBGb2N1c1RyYXAgbWFuYWdlZCBieSBGb2N1c1RyYXBNYW5hZ2VyLlxuICogSW1wbGVtZW50ZWQgYnkgQ29uZmlndXJhYmxlRm9jdXNUcmFwIHRvIGF2b2lkIGNpcmN1bGFyIGRlcGVuZGVuY3kuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgTWFuYWdlZEZvY3VzVHJhcCB7XG4gIF9lbmFibGUoKTogdm9pZDtcbiAgX2Rpc2FibGUoKTogdm9pZDtcbiAgZm9jdXNJbml0aWFsRWxlbWVudFdoZW5SZWFkeSgpOiBQcm9taXNlPGJvb2xlYW4+O1xufVxuXG4vKiogSW5qZWN0YWJsZSB0aGF0IGVuc3VyZXMgb25seSB0aGUgbW9zdCByZWNlbnRseSBlbmFibGVkIEZvY3VzVHJhcCBpcyBhY3RpdmUuICovXG5ASW5qZWN0YWJsZSh7cHJvdmlkZWRJbjogJ3Jvb3QnfSlcbmV4cG9ydCBjbGFzcyBGb2N1c1RyYXBNYW5hZ2VyIHtcbiAgLy8gQSBzdGFjayBvZiB0aGUgRm9jdXNUcmFwcyBvbiB0aGUgcGFnZS4gT25seSB0aGUgRm9jdXNUcmFwIGF0IHRoZVxuICAvLyB0b3Agb2YgdGhlIHN0YWNrIGlzIGFjdGl2ZS5cbiAgcHJpdmF0ZSBfZm9jdXNUcmFwU3RhY2s6IE1hbmFnZWRGb2N1c1RyYXBbXSA9IFtdO1xuXG4gIC8qKlxuICAgKiBEaXNhYmxlcyB0aGUgRm9jdXNUcmFwIGF0IHRoZSB0b3Agb2YgdGhlIHN0YWNrLCBhbmQgdGhlbiBwdXNoZXNcbiAgICogdGhlIG5ldyBGb2N1c1RyYXAgb250byB0aGUgc3RhY2suXG4gICAqL1xuICByZWdpc3Rlcihmb2N1c1RyYXA6IE1hbmFnZWRGb2N1c1RyYXApOiB2b2lkIHtcbiAgICAvLyBEZWR1cGUgZm9jdXNUcmFwcyB0aGF0IHJlZ2lzdGVyIG11bHRpcGxlIHRpbWVzLlxuICAgIHRoaXMuX2ZvY3VzVHJhcFN0YWNrID0gdGhpcy5fZm9jdXNUcmFwU3RhY2suZmlsdGVyKChmdCkgPT4gZnQgIT09IGZvY3VzVHJhcCk7XG5cbiAgICBsZXQgc3RhY2sgPSB0aGlzLl9mb2N1c1RyYXBTdGFjaztcblxuICAgIGlmIChzdGFjay5sZW5ndGgpIHtcbiAgICAgIHN0YWNrW3N0YWNrLmxlbmd0aCAtIDFdLl9kaXNhYmxlKCk7XG4gICAgfVxuXG4gICAgc3RhY2sucHVzaChmb2N1c1RyYXApO1xuICAgIGZvY3VzVHJhcC5fZW5hYmxlKCk7XG4gIH1cblxuICAvKipcbiAgICogUmVtb3ZlcyB0aGUgRm9jdXNUcmFwIGZyb20gdGhlIHN0YWNrLCBhbmQgYWN0aXZhdGVzIHRoZVxuICAgKiBGb2N1c1RyYXAgdGhhdCBpcyB0aGUgbmV3IHRvcCBvZiB0aGUgc3RhY2suXG4gICAqL1xuICBkZXJlZ2lzdGVyKGZvY3VzVHJhcDogTWFuYWdlZEZvY3VzVHJhcCk6IHZvaWQge1xuICAgIGZvY3VzVHJhcC5fZGlzYWJsZSgpO1xuXG4gICAgY29uc3Qgc3RhY2sgPSB0aGlzLl9mb2N1c1RyYXBTdGFjaztcblxuICAgIGNvbnN0IGkgPSBzdGFjay5pbmRleE9mKGZvY3VzVHJhcCk7XG4gICAgaWYgKGkgIT09IC0xKSB7XG4gICAgICBzdGFjay5zcGxpY2UoaSwgMSk7XG4gICAgICBpZiAoc3RhY2subGVuZ3RoKSB7XG4gICAgICAgIHN0YWNrW3N0YWNrLmxlbmd0aCAtIDFdLl9lbmFibGUoKTtcbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cbiJdfQ==