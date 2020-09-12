/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { coerceBooleanProperty } from '@angular/cdk/coercion';
import { Directive, InjectionToken, Input, TemplateRef } from '@angular/core';
/**
 * Injection token that can be used to reference instances of `CdkDragPreview`. It serves as
 * alternative token to the actual `CdkDragPreview` class which could cause unnecessary
 * retention of the class and its directive metadata.
 */
export const CDK_DRAG_PREVIEW = new InjectionToken('CdkDragPreview');
/**
 * Element that will be used as a template for the preview
 * of a CdkDrag when it is being dragged.
 */
export class CdkDragPreview {
    constructor(templateRef) {
        this.templateRef = templateRef;
        this._matchSize = false;
    }
    /** Whether the preview should preserve the same size as the item that is being dragged. */
    get matchSize() { return this._matchSize; }
    set matchSize(value) { this._matchSize = coerceBooleanProperty(value); }
}
CdkDragPreview.decorators = [
    { type: Directive, args: [{
                selector: 'ng-template[cdkDragPreview]',
                providers: [{ provide: CDK_DRAG_PREVIEW, useExisting: CdkDragPreview }],
            },] }
];
CdkDragPreview.ctorParameters = () => [
    { type: TemplateRef }
];
CdkDragPreview.propDecorators = {
    data: [{ type: Input }],
    matchSize: [{ type: Input }]
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZHJhZy1wcmV2aWV3LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9kcmFnLWRyb3AvZGlyZWN0aXZlcy9kcmFnLXByZXZpZXcudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFlLHFCQUFxQixFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFDMUUsT0FBTyxFQUFDLFNBQVMsRUFBRSxjQUFjLEVBQUUsS0FBSyxFQUFFLFdBQVcsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUU1RTs7OztHQUlHO0FBQ0gsTUFBTSxDQUFDLE1BQU0sZ0JBQWdCLEdBQUcsSUFBSSxjQUFjLENBQWlCLGdCQUFnQixDQUFDLENBQUM7QUFFckY7OztHQUdHO0FBS0gsTUFBTSxPQUFPLGNBQWM7SUFVekIsWUFBbUIsV0FBMkI7UUFBM0IsZ0JBQVcsR0FBWCxXQUFXLENBQWdCO1FBRnRDLGVBQVUsR0FBRyxLQUFLLENBQUM7SUFFc0IsQ0FBQztJQU5sRCwyRkFBMkY7SUFDM0YsSUFDSSxTQUFTLEtBQWMsT0FBTyxJQUFJLENBQUMsVUFBVSxDQUFDLENBQUMsQ0FBQztJQUNwRCxJQUFJLFNBQVMsQ0FBQyxLQUFjLElBQUksSUFBSSxDQUFDLFVBQVUsR0FBRyxxQkFBcUIsQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUM7OztZQVhsRixTQUFTLFNBQUM7Z0JBQ1QsUUFBUSxFQUFFLDZCQUE2QjtnQkFDdkMsU0FBUyxFQUFFLENBQUMsRUFBQyxPQUFPLEVBQUUsZ0JBQWdCLEVBQUUsV0FBVyxFQUFFLGNBQWMsRUFBQyxDQUFDO2FBQ3RFOzs7WUFoQnlDLFdBQVc7OzttQkFtQmxELEtBQUs7d0JBR0wsS0FBSyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0Jvb2xlYW5JbnB1dCwgY29lcmNlQm9vbGVhblByb3BlcnR5fSBmcm9tICdAYW5ndWxhci9jZGsvY29lcmNpb24nO1xuaW1wb3J0IHtEaXJlY3RpdmUsIEluamVjdGlvblRva2VuLCBJbnB1dCwgVGVtcGxhdGVSZWZ9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG4vKipcbiAqIEluamVjdGlvbiB0b2tlbiB0aGF0IGNhbiBiZSB1c2VkIHRvIHJlZmVyZW5jZSBpbnN0YW5jZXMgb2YgYENka0RyYWdQcmV2aWV3YC4gSXQgc2VydmVzIGFzXG4gKiBhbHRlcm5hdGl2ZSB0b2tlbiB0byB0aGUgYWN0dWFsIGBDZGtEcmFnUHJldmlld2AgY2xhc3Mgd2hpY2ggY291bGQgY2F1c2UgdW5uZWNlc3NhcnlcbiAqIHJldGVudGlvbiBvZiB0aGUgY2xhc3MgYW5kIGl0cyBkaXJlY3RpdmUgbWV0YWRhdGEuXG4gKi9cbmV4cG9ydCBjb25zdCBDREtfRFJBR19QUkVWSUVXID0gbmV3IEluamVjdGlvblRva2VuPENka0RyYWdQcmV2aWV3PignQ2RrRHJhZ1ByZXZpZXcnKTtcblxuLyoqXG4gKiBFbGVtZW50IHRoYXQgd2lsbCBiZSB1c2VkIGFzIGEgdGVtcGxhdGUgZm9yIHRoZSBwcmV2aWV3XG4gKiBvZiBhIENka0RyYWcgd2hlbiBpdCBpcyBiZWluZyBkcmFnZ2VkLlxuICovXG5ARGlyZWN0aXZlKHtcbiAgc2VsZWN0b3I6ICduZy10ZW1wbGF0ZVtjZGtEcmFnUHJldmlld10nLFxuICBwcm92aWRlcnM6IFt7cHJvdmlkZTogQ0RLX0RSQUdfUFJFVklFVywgdXNlRXhpc3Rpbmc6IENka0RyYWdQcmV2aWV3fV0sXG59KVxuZXhwb3J0IGNsYXNzIENka0RyYWdQcmV2aWV3PFQgPSBhbnk+IHtcbiAgLyoqIENvbnRleHQgZGF0YSB0byBiZSBhZGRlZCB0byB0aGUgcHJldmlldyB0ZW1wbGF0ZSBpbnN0YW5jZS4gKi9cbiAgQElucHV0KCkgZGF0YTogVDtcblxuICAvKiogV2hldGhlciB0aGUgcHJldmlldyBzaG91bGQgcHJlc2VydmUgdGhlIHNhbWUgc2l6ZSBhcyB0aGUgaXRlbSB0aGF0IGlzIGJlaW5nIGRyYWdnZWQuICovXG4gIEBJbnB1dCgpXG4gIGdldCBtYXRjaFNpemUoKTogYm9vbGVhbiB7IHJldHVybiB0aGlzLl9tYXRjaFNpemU7IH1cbiAgc2V0IG1hdGNoU2l6ZSh2YWx1ZTogYm9vbGVhbikgeyB0aGlzLl9tYXRjaFNpemUgPSBjb2VyY2VCb29sZWFuUHJvcGVydHkodmFsdWUpOyB9XG4gIHByaXZhdGUgX21hdGNoU2l6ZSA9IGZhbHNlO1xuXG4gIGNvbnN0cnVjdG9yKHB1YmxpYyB0ZW1wbGF0ZVJlZjogVGVtcGxhdGVSZWY8VD4pIHt9XG5cbiAgc3RhdGljIG5nQWNjZXB0SW5wdXRUeXBlX21hdGNoU2l6ZTogQm9vbGVhbklucHV0O1xufVxuIl19