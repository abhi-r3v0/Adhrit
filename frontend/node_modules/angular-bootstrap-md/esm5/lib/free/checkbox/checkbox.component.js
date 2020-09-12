import { __decorate, __metadata } from "tslib";
import { Component, EventEmitter, forwardRef, HostListener, Input, OnChanges, OnInit, Output, SimpleChanges, ViewChild, ViewEncapsulation, ChangeDetectionStrategy, ChangeDetectorRef, } from '@angular/core';
import { NG_VALUE_ACCESSOR } from '@angular/forms';
import { Subject, timer } from 'rxjs';
import { take } from 'rxjs/operators';
export var CHECKBOX_VALUE_ACCESSOR = {
    provide: NG_VALUE_ACCESSOR,
    // tslint:disable-next-line: no-use-before-declare
    useExisting: forwardRef(function () { return CheckboxComponent; }),
    multi: true,
};
var defaultIdNumber = 0;
var MdbCheckboxChange = /** @class */ (function () {
    function MdbCheckboxChange() {
    }
    return MdbCheckboxChange;
}());
export { MdbCheckboxChange };
var CheckboxComponent = /** @class */ (function () {
    function CheckboxComponent(_cdRef) {
        this._cdRef = _cdRef;
        this.defaultId = "mdb-checkbox-" + ++defaultIdNumber;
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
        this.onChange = function (_) { };
        this.onTouched = function () { };
    }
    CheckboxComponent.prototype.onLabelClick = function (event) {
        event.stopPropagation();
        this.checkboxClicked.next(true);
    };
    CheckboxComponent.prototype.onDocumentClick = function () {
        this.checkboxClicked.next(false);
    };
    CheckboxComponent.prototype.ngOnInit = function () {
        if (this.indeterminate && !this.filledIn && !this.rounded) {
            this.inputEl.indeterminate = true;
        }
    };
    CheckboxComponent.prototype.ngOnChanges = function (changes) {
        if (changes.hasOwnProperty('checked')) {
            this.checked = changes.checked.currentValue;
        }
    };
    Object.defineProperty(CheckboxComponent.prototype, "changeEvent", {
        get: function () {
            var newChangeEvent = new MdbCheckboxChange();
            newChangeEvent.element = this;
            newChangeEvent.checked = this.checked;
            return newChangeEvent;
        },
        enumerable: true,
        configurable: true
    });
    CheckboxComponent.prototype.toggle = function () {
        if (this.disabled) {
            return;
        }
        this.checked = !this.checked;
        this.indeterminate = false;
        this.onChange(this.checked);
        this._cdRef.markForCheck();
    };
    CheckboxComponent.prototype.onCheckboxClick = function (event) {
        event.stopPropagation();
        this.toggle();
    };
    CheckboxComponent.prototype.onCheckboxChange = function (event) {
        var _this = this;
        event.stopPropagation();
        timer(0).subscribe(function () { return _this.change.emit(_this.changeEvent); });
    };
    CheckboxComponent.prototype.onBlur = function () {
        var _this = this;
        this.checkboxClicked.pipe(take(1)).subscribe(function (val) {
            if (!val) {
                _this.onTouched();
            }
        });
    };
    CheckboxComponent.prototype.writeValue = function (value) {
        this.value = value;
        this.checked = !!value;
        this._cdRef.markForCheck();
    };
    CheckboxComponent.prototype.registerOnChange = function (fn) {
        this.onChange = fn;
    };
    CheckboxComponent.prototype.registerOnTouched = function (fn) {
        this.onTouched = fn;
    };
    CheckboxComponent.prototype.setDisabledState = function (isDisabled) {
        this.disabled = isDisabled;
    };
    CheckboxComponent.ctorParameters = function () { return [
        { type: ChangeDetectorRef }
    ]; };
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
    return CheckboxComponent;
}());
export { CheckboxComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY2hlY2tib3guY29tcG9uZW50LmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9jaGVja2JveC9jaGVja2JveC5jb21wb25lbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFDTCxTQUFTLEVBQ1QsWUFBWSxFQUNaLFVBQVUsRUFDVixZQUFZLEVBQ1osS0FBSyxFQUNMLFNBQVMsRUFDVCxNQUFNLEVBQ04sTUFBTSxFQUNOLGFBQWEsRUFDYixTQUFTLEVBQ1QsaUJBQWlCLEVBQ2pCLHVCQUF1QixFQUN2QixpQkFBaUIsR0FDbEIsTUFBTSxlQUFlLENBQUM7QUFDdkIsT0FBTyxFQUFFLGlCQUFpQixFQUFFLE1BQU0sZ0JBQWdCLENBQUM7QUFDbkQsT0FBTyxFQUFFLE9BQU8sRUFBRSxLQUFLLEVBQUUsTUFBTSxNQUFNLENBQUM7QUFDdEMsT0FBTyxFQUFFLElBQUksRUFBRSxNQUFNLGdCQUFnQixDQUFDO0FBRXRDLE1BQU0sQ0FBQyxJQUFNLHVCQUF1QixHQUFRO0lBQzFDLE9BQU8sRUFBRSxpQkFBaUI7SUFDMUIsa0RBQWtEO0lBQ2xELFdBQVcsRUFBRSxVQUFVLENBQUMsY0FBTSxPQUFBLGlCQUFpQixFQUFqQixDQUFpQixDQUFDO0lBQ2hELEtBQUssRUFBRSxJQUFJO0NBQ1osQ0FBQztBQUVGLElBQUksZUFBZSxHQUFHLENBQUMsQ0FBQztBQUV4QjtJQUFBO0lBR0EsQ0FBQztJQUFELHdCQUFDO0FBQUQsQ0FBQyxBQUhELElBR0M7O0FBVUQ7SUF3QkUsMkJBQW9CLE1BQXlCO1FBQXpCLFdBQU0sR0FBTixNQUFNLENBQW1CO1FBckJyQyxjQUFTLEdBQUcsa0JBQWdCLEVBQUUsZUFBaUIsQ0FBQztRQUcvQyxPQUFFLEdBQVcsSUFBSSxDQUFDLFNBQVMsQ0FBQztRQUk1QixZQUFPLEdBQUcsS0FBSyxDQUFDO1FBQ2hCLGFBQVEsR0FBRyxLQUFLLENBQUM7UUFDakIs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Q0FBQyxDQUFDOzs7O3lEQUlqQztJQUdEO1FBREMsWUFBWSxDQUFDLGdCQUFnQixDQUFDOzs7OzREQUc5QjtJQW5DVSxpQkFBaUI7UUFSN0IsU0FBUyxDQUFDO1lBQ1QsUUFBUSxFQUFFLGNBQWM7WUFDeEIseWhDQUF3QztZQUV4QyxhQUFhLEVBQUUsaUJBQWlCLENBQUMsSUFBSTtZQUNyQyxTQUFTLEVBQUUsQ0FBQyx1QkFBdUIsQ0FBQztZQUNwQyxlQUFlLEVBQUUsdUJBQXVCLENBQUMsTUFBTTs7U0FDaEQsQ0FBQzt5Q0F5QjRCLGlCQUFpQjtPQXhCbEMsaUJBQWlCLENBMEc3QjtJQUFELHdCQUFDO0NBQUEsQUExR0QsSUEwR0M7U0ExR1ksaUJBQWlCIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtcbiAgQ29tcG9uZW50LFxuICBFdmVudEVtaXR0ZXIsXG4gIGZvcndhcmRSZWYsXG4gIEhvc3RMaXN0ZW5lcixcbiAgSW5wdXQsXG4gIE9uQ2hhbmdlcyxcbiAgT25Jbml0LFxuICBPdXRwdXQsXG4gIFNpbXBsZUNoYW5nZXMsXG4gIFZpZXdDaGlsZCxcbiAgVmlld0VuY2Fwc3VsYXRpb24sXG4gIENoYW5nZURldGVjdGlvblN0cmF0ZWd5LFxuICBDaGFuZ2VEZXRlY3RvclJlZixcbn0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQgeyBOR19WQUxVRV9BQ0NFU1NPUiB9IGZyb20gJ0Bhbmd1bGFyL2Zvcm1zJztcbmltcG9ydCB7IFN1YmplY3QsIHRpbWVyIH0gZnJvbSAncnhqcyc7XG5pbXBvcnQgeyB0YWtlIH0gZnJvbSAncnhqcy9vcGVyYXRvcnMnO1xuXG5leHBvcnQgY29uc3QgQ0hFQ0tCT1hfVkFMVUVfQUNDRVNTT1I6IGFueSA9IHtcbiAgcHJvdmlkZTogTkdfVkFMVUVfQUNDRVNTT1IsXG4gIC8vIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTogbm8tdXNlLWJlZm9yZS1kZWNsYXJlXG4gIHVzZUV4aXN0aW5nOiBmb3J3YXJkUmVmKCgpID0+IENoZWNrYm94Q29tcG9uZW50KSxcbiAgbXVsdGk6IHRydWUsXG59O1xuXG5sZXQgZGVmYXVsdElkTnVtYmVyID0gMDtcblxuZXhwb3J0IGNsYXNzIE1kYkNoZWNrYm94Q2hhbmdlIHtcbiAgZWxlbWVudDogQ2hlY2tib3hDb21wb25lbnQ7XG4gIGNoZWNrZWQ6IGJvb2xlYW47XG59XG5cbkBDb21wb25lbnQoe1xuICBzZWxlY3RvcjogJ21kYi1jaGVja2JveCcsXG4gIHRlbXBsYXRlVXJsOiAnLi9jaGVja2JveC5jb21wb25lbnQuaHRtbCcsXG4gIHN0eWxlVXJsczogWydjaGVja2JveC1tb2R1bGUuc2NzcyddLFxuICBlbmNhcHN1bGF0aW9uOiBWaWV3RW5jYXBzdWxhdGlvbi5Ob25lLFxuICBwcm92aWRlcnM6IFtDSEVDS0JPWF9WQUxVRV9BQ0NFU1NPUl0sXG4gIGNoYW5nZURldGVjdGlvbjogQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kuT25QdXNoLFxufSlcbmV4cG9ydCBjbGFzcyBDaGVja2JveENvbXBvbmVudCBpbXBsZW1lbnRzIE9uSW5pdCwgT25DaGFuZ2VzIHtcbiAgQFZpZXdDaGlsZCgnaW5wdXQnLCB7IHN0YXRpYzogdHJ1ZSB9KSBpbnB1dEVsOiBhbnk7XG5cbiAgcHJpdmF0ZSBkZWZhdWx0SWQgPSBgbWRiLWNoZWNrYm94LSR7KytkZWZhdWx0SWROdW1iZXJ9YDtcblxuICBASW5wdXQoKSBjbGFzczogc3RyaW5nO1xuICBASW5wdXQoKSBpZDogc3RyaW5nID0gdGhpcy5kZWZhdWx0SWQ7XG4gIEBJbnB1dCgpIHJlcXVpcmVkOiBib29sZWFuO1xuICBASW5wdXQoKSBuYW1lOiBzdHJpbmc7XG4gIEBJbnB1dCgpIHZhbHVlOiBzdHJpbmc7XG4gIEBJbnB1dCgpIGNoZWNrZWQgPSBmYWxzZTtcbiAgQElucHV0KCkgZmlsbGVkSW4gPSBmYWxzZTtcbiAgQElucHV0KCkgaW5kZXRlcm1pbmF0ZSA9IGZhbHNlO1xuICBASW5wdXQoKSBkaXNhYmxlZDogYm9vbGVhbjtcbiAgQElucHV0KCkgcm91bmRlZCA9IGZhbHNlO1xuICBASW5wdXQoKSBjaGVja2JveFBvc2l0aW9uID0gJ2xlZnQnO1xuICBASW5wdXQoKSBkZWZhdWx0ID0gZmFsc2U7XG4gIEBJbnB1dCgpIGlubGluZSA9IGZhbHNlO1xuICBASW5wdXQoKSB0YWJJbmRleDogbnVtYmVyO1xuXG4gIEBPdXRwdXQoKSBjaGFuZ2U6IEV2ZW50RW1pdHRlcjxNZGJDaGVja2JveENoYW5nZT4gPSBuZXcgRXZlbnRFbWl0dGVyPE1kYkNoZWNrYm94Q2hhbmdlPigpO1xuXG4gIHByaXZhdGUgY2hlY2tib3hDbGlja2VkID0gbmV3IFN1YmplY3Q8Ym9vbGVhbj4oKTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9jZFJlZjogQ2hhbmdlRGV0ZWN0b3JSZWYpIHt9XG5cbiAgQEhvc3RMaXN0ZW5lcignY2xpY2snLCBbJyRldmVudCddKVxuICBvbkxhYmVsQ2xpY2soZXZlbnQ6IGFueSkge1xuICAgIGV2ZW50LnN0b3BQcm9wYWdhdGlvbigpO1xuICAgIHRoaXMuY2hlY2tib3hDbGlja2VkLm5leHQodHJ1ZSk7XG4gIH1cblxuICBASG9zdExpc3RlbmVyKCdkb2N1bWVudDpjbGljaycpXG4gIG9uRG9jdW1lbnRDbGljaygpIHtcbiAgICB0aGlzLmNoZWNrYm94Q2xpY2tlZC5uZXh0KGZhbHNlKTtcbiAgfVxuXG4gIG5nT25Jbml0KCkge1xuICAgIGlmICh0aGlzLmluZGV0ZXJtaW5hdGUgJiYgIXRoaXMuZmlsbGVkSW4gJiYgIXRoaXMucm91bmRlZCkge1xuICAgICAgdGhpcy5pbnB1dEVsLmluZGV0ZXJtaW5hdGUgPSB0cnVlO1xuICAgIH1cbiAgfVxuXG4gIG5nT25DaGFuZ2VzKGNoYW5nZXM6IFNpbXBsZUNoYW5nZXMpIHtcbiAgICBpZiAoY2hhbmdlcy5oYXNPd25Qcm9wZXJ0eSgnY2hlY2tlZCcpKSB7XG4gICAgICB0aGlzLmNoZWNrZWQgPSBjaGFuZ2VzLmNoZWNrZWQuY3VycmVudFZhbHVlO1xuICAgIH1cbiAgfVxuXG4gIGdldCBjaGFuZ2VFdmVudCgpIHtcbiAgICBjb25zdCBuZXdDaGFuZ2VFdmVudCA9IG5ldyBNZGJDaGVja2JveENoYW5nZSgpO1xuICAgIG5ld0NoYW5nZUV2ZW50LmVsZW1lbnQgPSB0aGlzO1xuICAgIG5ld0NoYW5nZUV2ZW50LmNoZWNrZWQgPSB0aGlzLmNoZWNrZWQ7XG4gICAgcmV0dXJuIG5ld0NoYW5nZUV2ZW50O1xuICB9XG5cbiAgdG9nZ2xlKCkge1xuICAgIGlmICh0aGlzLmRpc2FibGVkKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuICAgIHRoaXMuY2hlY2tlZCA9ICF0aGlzLmNoZWNrZWQ7XG4gICAgdGhpcy5pbmRldGVybWluYXRlID0gZmFsc2U7XG4gICAgdGhpcy5vbkNoYW5nZSh0aGlzLmNoZWNrZWQpO1xuXG4gICAgdGhpcy5fY2RSZWYubWFya0ZvckNoZWNrKCk7XG4gIH1cblxuICBvbkNoZWNrYm94Q2xpY2soZXZlbnQ6IGFueSkge1xuICAgIGV2ZW50LnN0b3BQcm9wYWdhdGlvbigpO1xuICAgIHRoaXMudG9nZ2xlKCk7XG4gIH1cblxuICBvbkNoZWNrYm94Q2hhbmdlKGV2ZW50OiBhbnkpIHtcbiAgICBldmVudC5zdG9wUHJvcGFnYXRpb24oKTtcbiAgICB0aW1lcigwKS5zdWJzY3JpYmUoKCkgPT4gdGhpcy5jaGFuZ2UuZW1pdCh0aGlzLmNoYW5nZUV2ZW50KSk7XG4gIH1cblxuICBvbkJsdXIoKSB7XG4gICAgdGhpcy5jaGVja2JveENsaWNrZWQucGlwZSh0YWtlKDEpKS5zdWJzY3JpYmUodmFsID0+IHtcbiAgICAgIGlmICghdmFsKSB7XG4gICAgICAgIHRoaXMub25Ub3VjaGVkKCk7XG4gICAgICB9XG4gICAgfSk7XG4gIH1cblxuICAvLyBDb250cm9sIFZhbHVlIEFjY2Vzc29yIE1ldGhvZHNcbiAgb25DaGFuZ2UgPSAoXzogYW55KSA9PiB7fTtcbiAgb25Ub3VjaGVkID0gKCkgPT4ge307XG5cbiAgd3JpdGVWYWx1ZSh2YWx1ZTogYW55KSB7XG4gICAgdGhpcy52YWx1ZSA9IHZhbHVlO1xuICAgIHRoaXMuY2hlY2tlZCA9ICEhdmFsdWU7XG4gICAgdGhpcy5fY2RSZWYubWFya0ZvckNoZWNrKCk7XG4gIH1cblxuICByZWdpc3Rlck9uQ2hhbmdlKGZuOiAoXzogYW55KSA9PiB2b2lkKSB7XG4gICAgdGhpcy5vbkNoYW5nZSA9IGZuO1xuICB9XG5cbiAgcmVnaXN0ZXJPblRvdWNoZWQoZm46ICgpID0+IHZvaWQpIHtcbiAgICB0aGlzLm9uVG91Y2hlZCA9IGZuO1xuICB9XG5cbiAgc2V0RGlzYWJsZWRTdGF0ZShpc0Rpc2FibGVkOiBib29sZWFuKSB7XG4gICAgdGhpcy5kaXNhYmxlZCA9IGlzRGlzYWJsZWQ7XG4gIH1cbn1cbiJdfQ==