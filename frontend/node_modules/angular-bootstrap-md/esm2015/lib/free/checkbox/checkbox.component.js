import { __decorate, __metadata } from "tslib";
import { Component, EventEmitter, forwardRef, HostListener, Input, OnChanges, OnInit, Output, SimpleChanges, ViewChild, ViewEncapsulation, ChangeDetectionStrategy, ChangeDetectorRef, } from '@angular/core';
import { NG_VALUE_ACCESSOR } from '@angular/forms';
import { Subject, timer } from 'rxjs';
import { take } from 'rxjs/operators';
export const CHECKBOX_VALUE_ACCESSOR = {
    provide: NG_VALUE_ACCESSOR,
    // tslint:disable-next-line: no-use-before-declare
    useExisting: forwardRef(() => CheckboxComponent),
    multi: true,
};
let defaultIdNumber = 0;
export class MdbCheckboxChange {
}
let CheckboxComponent = class CheckboxComponent {
    constructor(_cdRef) {
        this._cdRef = _cdRef;
        this.defaultId = `mdb-checkbox-${++defaultIdNumber}`;
        this.id = this.defaultId;
        this.checked = false;
        this.filledIn = false;
        this.indeterminate = false;
        this.rounded = false;
        this.checkboxPosition = 'left';
        this.default = false;
        this.inline = false;
        this.change = new EventEmitter();
        this.checkboxClicked = new Subject();
        // Control Value Accessor Methods
        this.onChange = (_) => { };
        this.onTouched = () => { };
    }
    onLabelClick(event) {
        event.stopPropagation();
        this.checkboxClicked.next(true);
    }
    onDocumentClick() {
        this.checkboxClicked.next(false);
    }
    ngOnInit() {
        if (this.indeterminate && !this.filledIn && !this.rounded) {
            this.inputEl.indeterminate = true;
        }
    }
    ngOnChanges(changes) {
        if (changes.hasOwnProperty('checked')) {
            this.checked = changes.checked.currentValue;
        }
    }
    get changeEvent() {
        const newChangeEvent = new MdbCheckboxChange();
        newChangeEvent.element = this;
        newChangeEvent.checked = this.checked;
        return newChangeEvent;
    }
    toggle() {
        if (this.disabled) {
            return;
        }
        this.checked = !this.checked;
        this.indeterminate = false;
        this.onChange(this.checked);
        this._cdRef.markForCheck();
    }
    onCheckboxClick(event) {
        event.stopPropagation();
        this.toggle();
    }
    onCheckboxChange(event) {
        event.stopPropagation();
        timer(0).subscribe(() => this.change.emit(this.changeEvent));
    }
    onBlur() {
        this.checkboxClicked.pipe(take(1)).subscribe(val => {
            if (!val) {
                this.onTouched();
            }
        });
    }
    writeValue(value) {
        this.value = value;
        this.checked = !!value;
        this._cdRef.markForCheck();
    }
    registerOnChange(fn) {
        this.onChange = fn;
    }
    registerOnTouched(fn) {
        this.onTouched = fn;
    }
    setDisabledState(isDisabled) {
        this.disabled = isDisabled;
    }
};
CheckboxComponent.ctorParameters = () => [
    { type: ChangeDetectorRef }
];
__decorate([
    ViewChild('input', { static: true }),
    __metadata("design:type", Object)
], CheckboxComponent.prototype, "inputEl", void 0);
__decorate([
    Input(),
    __metadata("design:type", String)
], CheckboxComponent.prototype, "class", void 0);
__decorate([
    Input(),
    __metadata("design:type", String)
], CheckboxComponent.prototype, "id", void 0);
__decorate([
    Input(),
    __metadata("design:type", Boolean)
], CheckboxComponent.prototype, "required", void 0);
__decorate([
    Input(),
    __metadata("design:type", String)
], CheckboxComponent.prototype, "name", void 0);
__decorate([
    Input(),
    __metadata("design:type", String)
], CheckboxComponent.prototype, "value", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], CheckboxComponent.prototype, "checked", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], CheckboxComponent.prototype, "filledIn", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], CheckboxComponent.prototype, "indeterminate", void 0);
__decorate([
    Input(),
    __metadata("design:type", Boolean)
], CheckboxComponent.prototype, "disabled", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], CheckboxComponent.prototype, "rounded", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], CheckboxComponent.prototype, "checkboxPosition", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], CheckboxComponent.prototype, "default", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], CheckboxComponent.prototype, "inline", void 0);
__decorate([
    Input(),
    __metadata("design:type", Number)
], CheckboxComponent.prototype, "tabIndex", void 0);
__decorate([
    Output(),
    __metadata("design:type", EventEmitter)
], CheckboxComponent.prototype, "change", void 0);
__decorate([
    HostListener('click', ['$event']),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", void 0)
], CheckboxComponent.prototype, "onLabelClick", null);
__decorate([
    HostListener('document:click'),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", void 0)
], CheckboxComponent.prototype, "onDocumentClick", null);
CheckboxComponent = __decorate([
    Component({
        selector: 'mdb-checkbox',
        template: "<div\n  [ngClass]=\"{\n  'custom-control custom-checkbox': default,\n  'form-check': !default,\n  'custom-control-inline': inline,\n  'form-check-inline': inline && !default }\">\n  <input\n    #input\n    type=\"checkbox\"\n    class=\"custom-control-input\"\n    [ngClass]=\"{\n      'filled-in': filledIn || rounded,\n      'custom-control-input': default,\n      'form-check-input': !default }\"\n    [id]=\"id\"\n    [checked]=\"checked\"\n    [disabled]=\"disabled\"\n    [required]=\"required\"\n    [indeterminate]=\"indeterminate\"\n    [attr.name]=\"name\"\n    [attr.value]=\"value\"\n    [tabIndex]=\"tabIndex\"\n    (blur)=\"onBlur()\"\n    (click)=\"onCheckboxClick($event)\"\n    (change)=\"onCheckboxChange($event)\">\n  <label\n    [ngClass]=\"{\n      'custom-control-label': default,\n      'form-check-label': !default,\n      'label-before': checkboxPosition === 'right',\n      'checkbox-rounded': rounded,\n      'disabled': disabled }\"\n    [attr.for]=\"id\">\n    <ng-content></ng-content>\n  </label>\n</div>\n",
        encapsulation: ViewEncapsulation.None,
        providers: [CHECKBOX_VALUE_ACCESSOR],
        changeDetection: ChangeDetectionStrategy.OnPush,
        styles: [".form-check-label.label-before:after,.form-check-label.label-before:before{top:0!important;right:0!important;left:auto!important}.custom-control-label.label-before:after,.custom-control-label.label-before:before{top:.25rem!important;right:0!important;left:auto!important}.custom-control-label.label-before{position:absolute}.custom-control-inline .label-before{position:relative}.form-check-label.label-before{padding-left:0!important;padding-right:35px}.custom-control-label.label-before{padding-left:0!important;padding-right:25px!important}.form-check-input[type=checkbox]:checked+.label-before:before,label.btn input[type=checkbox]:checked+.label-before:before{top:-4px!important;right:10px!important;left:auto!important}.form-check-input[type=checkbox]:indeterminate+.label-before:before,label.btn input[type=checkbox]:indeterminate+.label-before:before{top:-11px!important;right:16px!important;left:auto!important}.form-check-input[type=checkbox].filled-in+.label-before:before,.form-check-input[type=checkbox].filled-in:checked+.label-before:before,label.btn input[type=checkbox].filled-in+.label-before:before,label.btn input[type=checkbox].filled-in:checked+.label-before:before{top:0!important;right:10px!important;left:auto!important}.form-check-input[type=checkbox].filled-in+.label-before:after,label.btn input[type=checkbox].filled-in+.label-before:after{top:0!important;left:auto!important}.checkbox-rounded:after{border-radius:50%!important}mdb-checkbox .form-check{padding-left:0!important}"]
    }),
    __metadata("design:paramtypes", [ChangeDetectorRef])
], CheckboxComponent);
export { CheckboxComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY2hlY2tib3guY29tcG9uZW50LmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9jaGVja2JveC9jaGVja2JveC5jb21wb25lbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFDTCxTQUFTLEVBQ1QsWUFBWSxFQUNaLFVBQVUsRUFDVixZQUFZLEVBQ1osS0FBSyxFQUNMLFNBQVMsRUFDVCxNQUFNLEVBQ04sTUFBTSxFQUNOLGFBQWEsRUFDYixTQUFTLEVBQ1QsaUJBQWlCLEVBQ2pCLHVCQUF1QixFQUN2QixpQkFBaUIsR0FDbEIsTUFBTSxlQUFlLENBQUM7QUFDdkIsT0FBTyxFQUFFLGlCQUFpQixFQUFFLE1BQU0sZ0JBQWdCLENBQUM7QUFDbkQsT0FBTyxFQUFFLE9BQU8sRUFBRSxLQUFLLEVBQUUsTUFBTSxNQUFNLENBQUM7QUFDdEMsT0FBTyxFQUFFLElBQUksRUFBRSxNQUFNLGdCQUFnQixDQUFDO0FBRXRDLE1BQU0sQ0FBQyxNQUFNLHVCQUF1QixHQUFRO0lBQzFDLE9BQU8sRUFBRSxpQkFBaUI7SUFDMUIsa0RBQWtEO0lBQ2xELFdBQVcsRUFBRSxVQUFVLENBQUMsR0FBRyxFQUFFLENBQUMsaUJBQWlCLENBQUM7SUFDaEQsS0FBSyxFQUFFLElBQUk7Q0FDWixDQUFDO0FBRUYsSUFBSSxlQUFlLEdBQUcsQ0FBQyxDQUFDO0FBRXhCLE1BQU0sT0FBTyxpQkFBaUI7Q0FHN0I7QUFVRCxJQUFhLGlCQUFpQixHQUE5QixNQUFhLGlCQUFpQjtJQXdCNUIsWUFBb0IsTUFBeUI7UUFBekIsV0FBTSxHQUFOLE1BQU0sQ0FBbUI7UUFyQnJDLGNBQVMsR0FBRyxnQkFBZ0IsRUFBRSxlQUFlLEVBQUUsQ0FBQztRQUcvQyxPQUFFLEdBQVcsSUFBSSxDQUFDLFNBQVMsQ0FBQztRQUk1QixZQUFPLEdBQUcsS0FBSyxDQUFDO1FBQ2hCLGFBQVEsR0FBRyxLQUFLLENBQUM7UUFD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QVMsQ0FBQztRQUNULFFBQVEsRUFBRSxjQUFjO1FBQ3hCLHloQ0FBd0M7UUFFeEMsYUFBYSxFQUFFLGlCQUFpQixDQUFDLElBQUk7UUFDckMsU0FBUyxFQUFFLENBQUMsdUJBQXVCLENBQUM7UUFDcEMsZUFBZSxFQUFFLHVCQUF1QixDQUFDLE1BQU07O0tBQ2hELENBQUM7cUNBeUI0QixpQkFBaUI7R0F4QmxDLGlCQUFpQixDQTBHN0I7U0ExR1ksaUJBQWlCIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtcbiAgQ29tcG9uZW50LFxuICBFdmVudEVtaXR0ZXIsXG4gIGZvcndhcmRSZWYsXG4gIEhvc3RMaXN0ZW5lcixcbiAgSW5wdXQsXG4gIE9uQ2hhbmdlcyxcbiAgT25Jbml0LFxuICBPdXRwdXQsXG4gIFNpbXBsZUNoYW5nZXMsXG4gIFZpZXdDaGlsZCxcbiAgVmlld0VuY2Fwc3VsYXRpb24sXG4gIENoYW5nZURldGVjdGlvblN0cmF0ZWd5LFxuICBDaGFuZ2VEZXRlY3RvclJlZixcbn0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQgeyBOR19WQUxVRV9BQ0NFU1NPUiB9IGZyb20gJ0Bhbmd1bGFyL2Zvcm1zJztcbmltcG9ydCB7IFN1YmplY3QsIHRpbWVyIH0gZnJvbSAncnhqcyc7XG5pbXBvcnQgeyB0YWtlIH0gZnJvbSAncnhqcy9vcGVyYXRvcnMnO1xuXG5leHBvcnQgY29uc3QgQ0hFQ0tCT1hfVkFMVUVfQUNDRVNTT1I6IGFueSA9IHtcbiAgcHJvdmlkZTogTkdfVkFMVUVfQUNDRVNTT1IsXG4gIC8vIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTogbm8tdXNlLWJlZm9yZS1kZWNsYXJlXG4gIHVzZUV4aXN0aW5nOiBmb3J3YXJkUmVmKCgpID0+IENoZWNrYm94Q29tcG9uZW50KSxcbiAgbXVsdGk6IHRydWUsXG59O1xuXG5sZXQgZGVmYXVsdElkTnVtYmVyID0gMDtcblxuZXhwb3J0IGNsYXNzIE1kYkNoZWNrYm94Q2hhbmdlIHtcbiAgZWxlbWVudDogQ2hlY2tib3hDb21wb25lbnQ7XG4gIGNoZWNrZWQ6IGJvb2xlYW47XG59XG5cbkBDb21wb25lbnQoe1xuICBzZWxlY3RvcjogJ21kYi1jaGVja2JveCcsXG4gIHRlbXBsYXRlVXJsOiAnLi9jaGVja2JveC5jb21wb25lbnQuaHRtbCcsXG4gIHN0eWxlVXJsczogWydjaGVja2JveC1tb2R1bGUuc2NzcyddLFxuICBlbmNhcHN1bGF0aW9uOiBWaWV3RW5jYXBzdWxhdGlvbi5Ob25lLFxuICBwcm92aWRlcnM6IFtDSEVDS0JPWF9WQUxVRV9BQ0NFU1NPUl0sXG4gIGNoYW5nZURldGVjdGlvbjogQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kuT25QdXNoLFxufSlcbmV4cG9ydCBjbGFzcyBDaGVja2JveENvbXBvbmVudCBpbXBsZW1lbnRzIE9uSW5pdCwgT25DaGFuZ2VzIHtcbiAgQFZpZXdDaGlsZCgnaW5wdXQnLCB7IHN0YXRpYzogdHJ1ZSB9KSBpbnB1dEVsOiBhbnk7XG5cbiAgcHJpdmF0ZSBkZWZhdWx0SWQgPSBgbWRiLWNoZWNrYm94LSR7KytkZWZhdWx0SWROdW1iZXJ9YDtcblxuICBASW5wdXQoKSBjbGFzczogc3RyaW5nO1xuICBASW5wdXQoKSBpZDogc3RyaW5nID0gdGhpcy5kZWZhdWx0SWQ7XG4gIEBJbnB1dCgpIHJlcXVpcmVkOiBib29sZWFuO1xuICBASW5wdXQoKSBuYW1lOiBzdHJpbmc7XG4gIEBJbnB1dCgpIHZhbHVlOiBzdHJpbmc7XG4gIEBJbnB1dCgpIGNoZWNrZWQgPSBmYWxzZTtcbiAgQElucHV0KCkgZmlsbGVkSW4gPSBmYWxzZTtcbiAgQElucHV0KCkgaW5kZXRlcm1pbmF0ZSA9IGZhbHNlO1xuICBASW5wdXQoKSBkaXNhYmxlZDogYm9vbGVhbjtcbiAgQElucHV0KCkgcm91bmRlZCA9IGZhbHNlO1xuICBASW5wdXQoKSBjaGVja2JveFBvc2l0aW9uID0gJ2xlZnQnO1xuICBASW5wdXQoKSBkZWZhdWx0ID0gZmFsc2U7XG4gIEBJbnB1dCgpIGlubGluZSA9IGZhbHNlO1xuICBASW5wdXQoKSB0YWJJbmRleDogbnVtYmVyO1xuXG4gIEBPdXRwdXQoKSBjaGFuZ2U6IEV2ZW50RW1pdHRlcjxNZGJDaGVja2JveENoYW5nZT4gPSBuZXcgRXZlbnRFbWl0dGVyPE1kYkNoZWNrYm94Q2hhbmdlPigpO1xuXG4gIHByaXZhdGUgY2hlY2tib3hDbGlja2VkID0gbmV3IFN1YmplY3Q8Ym9vbGVhbj4oKTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9jZFJlZjogQ2hhbmdlRGV0ZWN0b3JSZWYpIHt9XG5cbiAgQEhvc3RMaXN0ZW5lcignY2xpY2snLCBbJyRldmVudCddKVxuICBvbkxhYmVsQ2xpY2soZXZlbnQ6IGFueSkge1xuICAgIGV2ZW50LnN0b3BQcm9wYWdhdGlvbigpO1xuICAgIHRoaXMuY2hlY2tib3hDbGlja2VkLm5leHQodHJ1ZSk7XG4gIH1cblxuICBASG9zdExpc3RlbmVyKCdkb2N1bWVudDpjbGljaycpXG4gIG9uRG9jdW1lbnRDbGljaygpIHtcbiAgICB0aGlzLmNoZWNrYm94Q2xpY2tlZC5uZXh0KGZhbHNlKTtcbiAgfVxuXG4gIG5nT25Jbml0KCkge1xuICAgIGlmICh0aGlzLmluZGV0ZXJtaW5hdGUgJiYgIXRoaXMuZmlsbGVkSW4gJiYgIXRoaXMucm91bmRlZCkge1xuICAgICAgdGhpcy5pbnB1dEVsLmluZGV0ZXJtaW5hdGUgPSB0cnVlO1xuICAgIH1cbiAgfVxuXG4gIG5nT25DaGFuZ2VzKGNoYW5nZXM6IFNpbXBsZUNoYW5nZXMpIHtcbiAgICBpZiAoY2hhbmdlcy5oYXNPd25Qcm9wZXJ0eSgnY2hlY2tlZCcpKSB7XG4gICAgICB0aGlzLmNoZWNrZWQgPSBjaGFuZ2VzLmNoZWNrZWQuY3VycmVudFZhbHVlO1xuICAgIH1cbiAgfVxuXG4gIGdldCBjaGFuZ2VFdmVudCgpIHtcbiAgICBjb25zdCBuZXdDaGFuZ2VFdmVudCA9IG5ldyBNZGJDaGVja2JveENoYW5nZSgpO1xuICAgIG5ld0NoYW5nZUV2ZW50LmVsZW1lbnQgPSB0aGlzO1xuICAgIG5ld0NoYW5nZUV2ZW50LmNoZWNrZWQgPSB0aGlzLmNoZWNrZWQ7XG4gICAgcmV0dXJuIG5ld0NoYW5nZUV2ZW50O1xuICB9XG5cbiAgdG9nZ2xlKCkge1xuICAgIGlmICh0aGlzLmRpc2FibGVkKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuICAgIHRoaXMuY2hlY2tlZCA9ICF0aGlzLmNoZWNrZWQ7XG4gICAgdGhpcy5pbmRldGVybWluYXRlID0gZmFsc2U7XG4gICAgdGhpcy5vbkNoYW5nZSh0aGlzLmNoZWNrZWQpO1xuXG4gICAgdGhpcy5fY2RSZWYubWFya0ZvckNoZWNrKCk7XG4gIH1cblxuICBvbkNoZWNrYm94Q2xpY2soZXZlbnQ6IGFueSkge1xuICAgIGV2ZW50LnN0b3BQcm9wYWdhdGlvbigpO1xuICAgIHRoaXMudG9nZ2xlKCk7XG4gIH1cblxuICBvbkNoZWNrYm94Q2hhbmdlKGV2ZW50OiBhbnkpIHtcbiAgICBldmVudC5zdG9wUHJvcGFnYXRpb24oKTtcbiAgICB0aW1lcigwKS5zdWJzY3JpYmUoKCkgPT4gdGhpcy5jaGFuZ2UuZW1pdCh0aGlzLmNoYW5nZUV2ZW50KSk7XG4gIH1cblxuICBvbkJsdXIoKSB7XG4gICAgdGhpcy5jaGVja2JveENsaWNrZWQucGlwZSh0YWtlKDEpKS5zdWJzY3JpYmUodmFsID0+IHtcbiAgICAgIGlmICghdmFsKSB7XG4gICAgICAgIHRoaXMub25Ub3VjaGVkKCk7XG4gICAgICB9XG4gICAgfSk7XG4gIH1cblxuICAvLyBDb250cm9sIFZhbHVlIEFjY2Vzc29yIE1ldGhvZHNcbiAgb25DaGFuZ2UgPSAoXzogYW55KSA9PiB7fTtcbiAgb25Ub3VjaGVkID0gKCkgPT4ge307XG5cbiAgd3JpdGVWYWx1ZSh2YWx1ZTogYW55KSB7XG4gICAgdGhpcy52YWx1ZSA9IHZhbHVlO1xuICAgIHRoaXMuY2hlY2tlZCA9ICEhdmFsdWU7XG4gICAgdGhpcy5fY2RSZWYubWFya0ZvckNoZWNrKCk7XG4gIH1cblxuICByZWdpc3Rlck9uQ2hhbmdlKGZuOiAoXzogYW55KSA9PiB2b2lkKSB7XG4gICAgdGhpcy5vbkNoYW5nZSA9IGZuO1xuICB9XG5cbiAgcmVnaXN0ZXJPblRvdWNoZWQoZm46ICgpID0+IHZvaWQpIHtcbiAgICB0aGlzLm9uVG91Y2hlZCA9IGZuO1xuICB9XG5cbiAgc2V0RGlzYWJsZWRTdGF0ZShpc0Rpc2FibGVkOiBib29sZWFuKSB7XG4gICAgdGhpcy5kaXNhYmxlZCA9IGlzRGlzYWJsZWQ7XG4gIH1cbn1cbiJdfQ==