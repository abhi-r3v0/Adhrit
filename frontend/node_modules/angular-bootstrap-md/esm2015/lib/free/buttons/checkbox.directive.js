import { __decorate, __metadata } from "tslib";
import { Directive, HostBinding, HostListener, Input, forwardRef } from '@angular/core';
import { NG_VALUE_ACCESSOR } from '@angular/forms';
export const CHECKBOX_CONTROL_VALUE_ACCESSOR = {
    provide: NG_VALUE_ACCESSOR,
    // tslint:disable-next-line: no-use-before-declare
    useExisting: forwardRef(() => ButtonCheckboxDirective),
    multi: true,
};
/**
 * Add checkbox functionality to any element
 */
let ButtonCheckboxDirective = class ButtonCheckboxDirective {
    constructor() {
        /** Truthy value, will be set to ngModel */
        this.btnCheckboxTrue = true;
        /** Falsy value, will be set to ngModel */
        this.btnCheckboxFalse = false;
        this.state = false;
        this.onChange = Function.prototype;
        this.onTouched = Function.prototype;
    }
    // view -> model
    onClick() {
        if (this.isDisabled) {
            return;
        }
        this.toggle(!this.state);
        this.onChange(this.value);
    }
    ngOnInit() {
        this.toggle(this.trueValue === this.value);
    }
    get trueValue() {
        return typeof this.btnCheckboxTrue !== 'undefined' ? this.btnCheckboxTrue : true;
    }
    get falseValue() {
        return typeof this.btnCheckboxFalse !== 'undefined' ? this.btnCheckboxFalse : false;
    }
    toggle(state) {
        this.state = state;
        this.value = this.state ? this.trueValue : this.falseValue;
    }
    // ControlValueAccessor
    // model -> view
    writeValue(value) {
        this.state = this.trueValue === value;
        this.value = value ? this.trueValue : this.falseValue;
    }
    setDisabledState(isDisabled) {
        this.isDisabled = isDisabled;
    }
    registerOnChange(fn) {
        this.onChange = fn;
    }
    registerOnTouched(fn) {
        this.onTouched = fn;
    }
};
__decorate([
    Input(),
    __metadata("design:type", Object)
], ButtonCheckboxDirective.prototype, "btnCheckboxTrue", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], ButtonCheckboxDirective.prototype, "btnCheckboxFalse", void 0);
__decorate([
    HostBinding('class.active'),
    __metadata("design:type", Object)
], ButtonCheckboxDirective.prototype, "state", void 0);
__decorate([
    HostListener('click'),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", void 0)
], ButtonCheckboxDirective.prototype, "onClick", null);
ButtonCheckboxDirective = __decorate([
    Directive({ selector: '[mdbCheckbox]', providers: [CHECKBOX_CONTROL_VALUE_ACCESSOR] })
], ButtonCheckboxDirective);
export { ButtonCheckboxDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY2hlY2tib3guZGlyZWN0aXZlLmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9idXR0b25zL2NoZWNrYm94LmRpcmVjdGl2ZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUEsT0FBTyxFQUFFLFNBQVMsRUFBRSxXQUFXLEVBQUUsWUFBWSxFQUFFLEtBQUssRUFBVSxVQUFVLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFDaEcsT0FBTyxFQUF3QixpQkFBaUIsRUFBRSxNQUFNLGdCQUFnQixDQUFDO0FBRXpFLE1BQU0sQ0FBQyxNQUFNLCtCQUErQixHQUFRO0lBQ2xELE9BQU8sRUFBRSxpQkFBaUI7SUFDMUIsa0RBQWtEO0lBQ2xELFdBQVcsRUFBRSxVQUFVLENBQUMsR0FBRyxFQUFFLENBQUMsdUJBQXVCLENBQUM7SUFDdEQsS0FBSyxFQUFFLElBQUk7Q0FDWixDQUFDO0FBRUY7O0dBRUc7QUFFSCxJQUFhLHVCQUF1QixHQUFwQyxNQUFhLHVCQUF1QjtJQUFwQztRQUNFLDJDQUEyQztRQUMzQixvQkFBZSxHQUFRLElBQUksQ0FBQztRQUM1QywwQ0FBMEM7UUFDMUIscUJBQWdCLEdBQVEsS0FBSyxDQUFDO1FBRVYsVUFBSyxHQUFHLEtBQUssQ0FBQztRQUt4QyxhQUFRLEdBQVEsUUFBUSxDQUFDLFNBQVMsQ0FBQztRQUNuQyxjQUFTLEdBQVEsUUFBUSxDQUFDLFNBQVMsQ0FBQztJQWdEaEQsQ0FBQztJQTlDQyxnQkFBZ0I7SUFFVCxPQUFPO1FBQ1osSUFBSSxJQUFJLENBQUMsVUFBVSxFQUFFO1lBQ25CLE9BQU87U0FDUjtRQUVELElBQUksQ0FBQyxNQUFNLENBQUMsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUM7UUFDekIsSUFBSSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUM7SUFDNUIsQ0FBQztJQUVNLFFBQVE7UUFDYixJQUFJLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxTQUFTLEtBQUssSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDO0lBQzdDLENBQUM7SUFFRCxJQUFjLFNBQVM7UUFDckIsT0FBTyxPQUFPLElBQUksQ0FBQyxlQUFlLEtBQUssV0FBVyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsZUFBZSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUM7SUFDbkYsQ0FBQztJQUVELElBQWMsVUFBVTtRQUN0QixPQUFPLE9BQU8sSUFBSSxDQUFDLGdCQUFnQixLQUFLLFdBQVcsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDLGdCQUFnQixDQUFDLENBQUMsQ0FBQyxLQUFLLENBQUM7SUFDdEYsQ0FBQztJQUVNLE1BQU0sQ0FBQyxLQUFjO1FBQzFCLElBQUksQ0FBQyxLQUFLLEdBQUcsS0FBSyxDQUFDO1FBQ25CLElBQUksQ0FBQyxLQUFLLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQztJQUM3RCxDQUFDO0lBRUQsdUJBQXVCO0lBQ3ZCLGdCQUFnQjtJQUNULFVBQVUsQ0FBQyxLQUFVO1FBQzFCLElBQUksQ0FBQyxLQUFLLEdBQUcsSUFBSSxDQUFDLFNBQVMsS0FBSyxLQUFLLENBQUM7UUFDdEMsSUFBSSxDQUFDLEtBQUssR0FBRyxLQUFLLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUM7SUFDeEQsQ0FBQztJQUVNLGdCQUFnQixDQUFDLFVBQW1CO1FBQ3pDLElBQUksQ0FBQyxVQUFVLEdBQUcsVUFBVSxDQUFDO0lBQy9CLENBQUM7SUFFTSxnQkFBZ0IsQ0FBQyxFQUFrQjtRQUN4QyxJQUFJLENBQUMsUUFBUSxHQUFHLEVBQUUsQ0FBQztJQUNyQixDQUFDO0lBRU0saUJBQWlCLENBQUMsRUFBWTtRQUNuQyxJQUFJLENBQUMsU0FBUyxHQUFHLEVBQUUsQ0FBQztJQUN0QixDQUFDO0NBQ0YsQ0FBQTtBQTFEVTtJQUFSLEtBQUssRUFBRTs7Z0VBQW9DO0FBRW5DO0lBQVIsS0FBSyxFQUFFOztpRUFBc0M7QUFFakI7SUFBNUIsV0FBVyxDQUFDLGNBQWMsQ0FBQzs7c0RBQXNCO0FBVWxEO0lBREMsWUFBWSxDQUFDLE9BQU8sQ0FBQzs7OztzREFRckI7QUF2QlUsdUJBQXVCO0lBRG5DLFNBQVMsQ0FBQyxFQUFFLFFBQVEsRUFBRSxlQUFlLEVBQUUsU0FBUyxFQUFFLENBQUMsK0JBQStCLENBQUMsRUFBRSxDQUFDO0dBQzFFLHVCQUF1QixDQTREbkM7U0E1RFksdUJBQXVCIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgRGlyZWN0aXZlLCBIb3N0QmluZGluZywgSG9zdExpc3RlbmVyLCBJbnB1dCwgT25Jbml0LCBmb3J3YXJkUmVmIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQgeyBDb250cm9sVmFsdWVBY2Nlc3NvciwgTkdfVkFMVUVfQUNDRVNTT1IgfSBmcm9tICdAYW5ndWxhci9mb3Jtcyc7XG5cbmV4cG9ydCBjb25zdCBDSEVDS0JPWF9DT05UUk9MX1ZBTFVFX0FDQ0VTU09SOiBhbnkgPSB7XG4gIHByb3ZpZGU6IE5HX1ZBTFVFX0FDQ0VTU09SLFxuICAvLyB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6IG5vLXVzZS1iZWZvcmUtZGVjbGFyZVxuICB1c2VFeGlzdGluZzogZm9yd2FyZFJlZigoKSA9PiBCdXR0b25DaGVja2JveERpcmVjdGl2ZSksXG4gIG11bHRpOiB0cnVlLFxufTtcblxuLyoqXG4gKiBBZGQgY2hlY2tib3ggZnVuY3Rpb25hbGl0eSB0byBhbnkgZWxlbWVudFxuICovXG5ARGlyZWN0aXZlKHsgc2VsZWN0b3I6ICdbbWRiQ2hlY2tib3hdJywgcHJvdmlkZXJzOiBbQ0hFQ0tCT1hfQ09OVFJPTF9WQUxVRV9BQ0NFU1NPUl0gfSlcbmV4cG9ydCBjbGFzcyBCdXR0b25DaGVja2JveERpcmVjdGl2ZSBpbXBsZW1lbnRzIENvbnRyb2xWYWx1ZUFjY2Vzc29yLCBPbkluaXQge1xuICAvKiogVHJ1dGh5IHZhbHVlLCB3aWxsIGJlIHNldCB0byBuZ01vZGVsICovXG4gIEBJbnB1dCgpIHB1YmxpYyBidG5DaGVja2JveFRydWU6IGFueSA9IHRydWU7XG4gIC8qKiBGYWxzeSB2YWx1ZSwgd2lsbCBiZSBzZXQgdG8gbmdNb2RlbCAqL1xuICBASW5wdXQoKSBwdWJsaWMgYnRuQ2hlY2tib3hGYWxzZTogYW55ID0gZmFsc2U7XG5cbiAgQEhvc3RCaW5kaW5nKCdjbGFzcy5hY3RpdmUnKSBwdWJsaWMgc3RhdGUgPSBmYWxzZTtcblxuICBwcm90ZWN0ZWQgdmFsdWU6IGFueTtcbiAgcHJvdGVjdGVkIGlzRGlzYWJsZWQ6IGJvb2xlYW47XG5cbiAgcHJvdGVjdGVkIG9uQ2hhbmdlOiBhbnkgPSBGdW5jdGlvbi5wcm90b3R5cGU7XG4gIHByb3RlY3RlZCBvblRvdWNoZWQ6IGFueSA9IEZ1bmN0aW9uLnByb3RvdHlwZTtcblxuICAvLyB2aWV3IC0+IG1vZGVsXG4gIEBIb3N0TGlzdGVuZXIoJ2NsaWNrJylcbiAgcHVibGljIG9uQ2xpY2soKTogdm9pZCB7XG4gICAgaWYgKHRoaXMuaXNEaXNhYmxlZCkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIHRoaXMudG9nZ2xlKCF0aGlzLnN0YXRlKTtcbiAgICB0aGlzLm9uQ2hhbmdlKHRoaXMudmFsdWUpO1xuICB9XG5cbiAgcHVibGljIG5nT25Jbml0KCk6IGFueSB7XG4gICAgdGhpcy50b2dnbGUodGhpcy50cnVlVmFsdWUgPT09IHRoaXMudmFsdWUpO1xuICB9XG5cbiAgcHJvdGVjdGVkIGdldCB0cnVlVmFsdWUoKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHR5cGVvZiB0aGlzLmJ0bkNoZWNrYm94VHJ1ZSAhPT0gJ3VuZGVmaW5lZCcgPyB0aGlzLmJ0bkNoZWNrYm94VHJ1ZSA6IHRydWU7XG4gIH1cblxuICBwcm90ZWN0ZWQgZ2V0IGZhbHNlVmFsdWUoKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHR5cGVvZiB0aGlzLmJ0bkNoZWNrYm94RmFsc2UgIT09ICd1bmRlZmluZWQnID8gdGhpcy5idG5DaGVja2JveEZhbHNlIDogZmFsc2U7XG4gIH1cblxuICBwdWJsaWMgdG9nZ2xlKHN0YXRlOiBib29sZWFuKTogdm9pZCB7XG4gICAgdGhpcy5zdGF0ZSA9IHN0YXRlO1xuICAgIHRoaXMudmFsdWUgPSB0aGlzLnN0YXRlID8gdGhpcy50cnVlVmFsdWUgOiB0aGlzLmZhbHNlVmFsdWU7XG4gIH1cblxuICAvLyBDb250cm9sVmFsdWVBY2Nlc3NvclxuICAvLyBtb2RlbCAtPiB2aWV3XG4gIHB1YmxpYyB3cml0ZVZhbHVlKHZhbHVlOiBhbnkpOiB2b2lkIHtcbiAgICB0aGlzLnN0YXRlID0gdGhpcy50cnVlVmFsdWUgPT09IHZhbHVlO1xuICAgIHRoaXMudmFsdWUgPSB2YWx1ZSA/IHRoaXMudHJ1ZVZhbHVlIDogdGhpcy5mYWxzZVZhbHVlO1xuICB9XG5cbiAgcHVibGljIHNldERpc2FibGVkU3RhdGUoaXNEaXNhYmxlZDogYm9vbGVhbik6IHZvaWQge1xuICAgIHRoaXMuaXNEaXNhYmxlZCA9IGlzRGlzYWJsZWQ7XG4gIH1cblxuICBwdWJsaWMgcmVnaXN0ZXJPbkNoYW5nZShmbjogKF86IGFueSkgPT4ge30pOiB2b2lkIHtcbiAgICB0aGlzLm9uQ2hhbmdlID0gZm47XG4gIH1cblxuICBwdWJsaWMgcmVnaXN0ZXJPblRvdWNoZWQoZm46ICgpID0+IHt9KTogdm9pZCB7XG4gICAgdGhpcy5vblRvdWNoZWQgPSBmbjtcbiAgfVxufVxuIl19