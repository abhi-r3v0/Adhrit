import { __decorate, __metadata } from "tslib";
import { Directive, ElementRef, HostBinding, forwardRef, HostListener, Input, OnInit, Renderer2, } from '@angular/core';
import { NG_VALUE_ACCESSOR } from '@angular/forms';
export const RADIO_CONTROL_VALUE_ACCESSOR = {
    provide: NG_VALUE_ACCESSOR,
    // tslint:disable-next-line: no-use-before-declare
    useExisting: forwardRef(() => ButtonRadioDirective),
    multi: true,
};
/**
 * Create radio buttons or groups of buttons.
 * A value of a selected button is bound to a variable specified via ngModel.
 */
let ButtonRadioDirective = class ButtonRadioDirective {
    constructor(el, renderer) {
        this.el = el;
        this.renderer = renderer;
        this.onChange = Function.prototype;
        this.onTouched = Function.prototype;
        this.radioElementsArray = [];
    }
    get isActive() {
        return this.mdbRadio === this.value;
    }
    onClick(event) {
        try {
            this.el.nativeElement.parentElement.childNodes.forEach((element) => {
                this.radioElementsArray.push(element);
            });
            this.radioElementsArray.forEach(element => {
                this.renderer.removeClass(element, 'active');
            });
            this.renderer.addClass(event.target, 'active');
        }
        catch (error) { }
        if (this.el.nativeElement.attributes.disabled) {
            return;
        }
        if (this.uncheckable && this.mdbRadio === this.value) {
            this.value = undefined;
        }
        else {
            this.value = this.mdbRadio;
        }
        this.onTouched();
        this.onChange(this.value);
    }
    ngOnInit() {
        this.uncheckable = typeof this.uncheckable !== 'undefined';
    }
    onBlur() {
        this.onTouched();
    }
    // ControlValueAccessor
    // model -> view
    writeValue(value) {
        this.value = value;
    }
    registerOnChange(fn) {
        this.onChange = fn;
    }
    registerOnTouched(fn) {
        this.onTouched = fn;
    }
};
ButtonRadioDirective.ctorParameters = () => [
    { type: ElementRef },
    { type: Renderer2 }
];
__decorate([
    Input(),
    __metadata("design:type", Object)
], ButtonRadioDirective.prototype, "mdbRadio", void 0);
__decorate([
    Input(),
    __metadata("design:type", Boolean)
], ButtonRadioDirective.prototype, "uncheckable", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], ButtonRadioDirective.prototype, "value", void 0);
__decorate([
    HostBinding('class.active'),
    __metadata("design:type", Boolean),
    __metadata("design:paramtypes", [])
], ButtonRadioDirective.prototype, "isActive", null);
__decorate([
    HostListener('click', ['$event']),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", void 0)
], ButtonRadioDirective.prototype, "onClick", null);
ButtonRadioDirective = __decorate([
    Directive({ selector: '[mdbRadio]', providers: [RADIO_CONTROL_VALUE_ACCESSOR] }),
    __metadata("design:paramtypes", [ElementRef, Renderer2])
], ButtonRadioDirective);
export { ButtonRadioDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicmFkaW8uZGlyZWN0aXZlLmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9idXR0b25zL3JhZGlvLmRpcmVjdGl2ZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUEsT0FBTyxFQUNMLFNBQVMsRUFDVCxVQUFVLEVBQ1YsV0FBVyxFQUNYLFVBQVUsRUFDVixZQUFZLEVBQ1osS0FBSyxFQUNMLE1BQU0sRUFDTixTQUFTLEdBQ1YsTUFBTSxlQUFlLENBQUM7QUFDdkIsT0FBTyxFQUF3QixpQkFBaUIsRUFBRSxNQUFNLGdCQUFnQixDQUFDO0FBRXpFLE1BQU0sQ0FBQyxNQUFNLDRCQUE0QixHQUFRO0lBQy9DLE9BQU8sRUFBRSxpQkFBaUI7SUFDMUIsa0RBQWtEO0lBQ2xELFdBQVcsRUFBRSxVQUFVLENBQUMsR0FBRyxFQUFFLENBQUMsb0JBQW9CLENBQUM7SUFDbkQsS0FBSyxFQUFFLElBQUk7Q0FDWixDQUFDO0FBRUY7OztHQUdHO0FBRUgsSUFBYSxvQkFBb0IsR0FBakMsTUFBYSxvQkFBb0I7SUEwQy9CLFlBQTZCLEVBQWMsRUFBVSxRQUFtQjtRQUEzQyxPQUFFLEdBQUYsRUFBRSxDQUFZO1FBQVUsYUFBUSxHQUFSLFFBQVEsQ0FBVztRQXpDakUsYUFBUSxHQUFRLFFBQVEsQ0FBQyxTQUFTLENBQUM7UUFDbkMsY0FBUyxHQUFRLFFBQVEsQ0FBQyxTQUFTLENBQUM7UUFFM0MsdUJBQWtCLEdBQWUsRUFBRSxDQUFDO0lBc0N1QyxDQUFDO0lBN0I1RSxJQUFXLFFBQVE7UUFDakIsT0FBTyxJQUFJLENBQUMsUUFBUSxLQUFLLElBQUksQ0FBQyxLQUFLLENBQUM7SUFDdEMsQ0FBQztJQUdNLE9BQU8sQ0FBQyxLQUFXO1FBQ3hCLElBQUk7WUFDRixJQUFJLENBQUMsRUFBRSxDQUFDLGFBQWEsQ0FBQyxhQUFhLENBQUMsVUFBVSxDQUFDLE9BQU8sQ0FBQyxDQUFDLE9BQVksRUFBRSxFQUFFO2dCQUN0RSxJQUFJLENBQUMsa0JBQWtCLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxDQUFDO1lBQ3hDLENBQUMsQ0FBQyxDQUFDO1lBQ0gsSUFBSSxDQUFDLGtCQUFrQixDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsRUFBRTtnQkFDeEMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxXQUFXLENBQUMsT0FBTyxFQUFFLFFBQVEsQ0FBQyxDQUFDO1lBQy9DLENBQUMsQ0FBQyxDQUFDO1lBQ0gsSUFBSSxDQUFDLFFBQVEsQ0FBQyxRQUFRLENBQUMsS0FBSyxDQUFDLE1BQU0sRUFBRSxRQUFRLENBQUMsQ0FBQztTQUNoRDtRQUFDLE9BQU8sS0FBSyxFQUFFLEdBQUU7UUFDbEIsSUFBSSxJQUFJLENBQUMsRUFBRSxDQUFDLGFBQWEsQ0FBQyxVQUFVLENBQUMsUUFBUSxFQUFFO1lBQzdDLE9BQU87U0FDUjtRQUVELElBQUksSUFBSSxDQUFDLFdBQVcsSUFBSSxJQUFJLENBQUMsUUFBUSxLQUFLLElBQUksQ0FBQyxLQUFLLEVBQUU7WUFDcEQsSUFBSSxDQUFDLEtBQUssR0FBRyxTQUFTLENBQUM7U0FDeEI7YUFBTTtZQUNMLElBQUksQ0FBQyxLQUFLLEdBQUcsSUFBSSxDQUFDLFFBQVEsQ0FBQztTQUM1QjtRQUVELElBQUksQ0FBQyxTQUFTLEVBQUUsQ0FBQztRQUNqQixJQUFJLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQztJQUM1QixDQUFDO0lBSU0sUUFBUTtRQUNiLElBQUksQ0FBQyxXQUFXLEdBQUcsT0FBTyxJQUFJLENBQUMsV0FBVyxLQUFLLFdBQVcsQ0FBQztJQUM3RCxDQUFDO0lBRU0sTUFBTTtRQUNYLElBQUksQ0FBQyxTQUFTLEVBQUUsQ0FBQztJQUNuQixDQUFDO0lBRUQsdUJBQXVCO0lBQ3ZCLGdCQUFnQjtJQUNULFVBQVUsQ0FBQyxLQUFVO1FBQzFCLElBQUksQ0FBQyxLQUFLLEdBQUcsS0FBSyxDQUFDO0lBQ3JCLENBQUM7SUFFTSxnQkFBZ0IsQ0FBQyxFQUFPO1FBQzdCLElBQUksQ0FBQyxRQUFRLEdBQUcsRUFBRSxDQUFDO0lBQ3JCLENBQUM7SUFFTSxpQkFBaUIsQ0FBQyxFQUFPO1FBQzlCLElBQUksQ0FBQyxTQUFTLEdBQUcsRUFBRSxDQUFDO0lBQ3RCLENBQUM7Q0FDRixDQUFBOztZQXZCa0MsVUFBVTtZQUFvQixTQUFTOztBQXBDL0Q7SUFBUixLQUFLLEVBQUU7O3NEQUFzQjtBQUVyQjtJQUFSLEtBQUssRUFBRTs7eURBQTZCO0FBRTVCO0lBQVIsS0FBSyxFQUFFOzttREFBbUI7QUFHM0I7SUFEQyxXQUFXLENBQUMsY0FBYyxDQUFDOzs7b0RBRzNCO0FBR0Q7SUFEQyxZQUFZLENBQUMsT0FBTyxFQUFFLENBQUMsUUFBUSxDQUFDLENBQUM7Ozs7bURBdUJqQztBQXhDVSxvQkFBb0I7SUFEaEMsU0FBUyxDQUFDLEVBQUUsUUFBUSxFQUFFLFlBQVksRUFBRSxTQUFTLEVBQUUsQ0FBQyw0QkFBNEIsQ0FBQyxFQUFFLENBQUM7cUNBMkM5QyxVQUFVLEVBQW9CLFNBQVM7R0ExQzdELG9CQUFvQixDQWlFaEM7U0FqRVksb0JBQW9CIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtcbiAgRGlyZWN0aXZlLFxuICBFbGVtZW50UmVmLFxuICBIb3N0QmluZGluZyxcbiAgZm9yd2FyZFJlZixcbiAgSG9zdExpc3RlbmVyLFxuICBJbnB1dCxcbiAgT25Jbml0LFxuICBSZW5kZXJlcjIsXG59IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgQ29udHJvbFZhbHVlQWNjZXNzb3IsIE5HX1ZBTFVFX0FDQ0VTU09SIH0gZnJvbSAnQGFuZ3VsYXIvZm9ybXMnO1xuXG5leHBvcnQgY29uc3QgUkFESU9fQ09OVFJPTF9WQUxVRV9BQ0NFU1NPUjogYW55ID0ge1xuICBwcm92aWRlOiBOR19WQUxVRV9BQ0NFU1NPUixcbiAgLy8gdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOiBuby11c2UtYmVmb3JlLWRlY2xhcmVcbiAgdXNlRXhpc3Rpbmc6IGZvcndhcmRSZWYoKCkgPT4gQnV0dG9uUmFkaW9EaXJlY3RpdmUpLFxuICBtdWx0aTogdHJ1ZSxcbn07XG5cbi8qKlxuICogQ3JlYXRlIHJhZGlvIGJ1dHRvbnMgb3IgZ3JvdXBzIG9mIGJ1dHRvbnMuXG4gKiBBIHZhbHVlIG9mIGEgc2VsZWN0ZWQgYnV0dG9uIGlzIGJvdW5kIHRvIGEgdmFyaWFibGUgc3BlY2lmaWVkIHZpYSBuZ01vZGVsLlxuICovXG5ARGlyZWN0aXZlKHsgc2VsZWN0b3I6ICdbbWRiUmFkaW9dJywgcHJvdmlkZXJzOiBbUkFESU9fQ09OVFJPTF9WQUxVRV9BQ0NFU1NPUl0gfSlcbmV4cG9ydCBjbGFzcyBCdXR0b25SYWRpb0RpcmVjdGl2ZSBpbXBsZW1lbnRzIENvbnRyb2xWYWx1ZUFjY2Vzc29yLCBPbkluaXQge1xuICBwdWJsaWMgb25DaGFuZ2U6IGFueSA9IEZ1bmN0aW9uLnByb3RvdHlwZTtcbiAgcHVibGljIG9uVG91Y2hlZDogYW55ID0gRnVuY3Rpb24ucHJvdG90eXBlO1xuXG4gIHJhZGlvRWxlbWVudHNBcnJheTogQXJyYXk8YW55PiA9IFtdO1xuICAvKiogUmFkaW8gYnV0dG9uIHZhbHVlLCB3aWxsIGJlIHNldCB0byBgbmdNb2RlbGAgKi9cbiAgQElucHV0KCkgcHVibGljIG1kYlJhZGlvOiBhbnk7XG4gIC8qKiBJZiBgdHJ1ZWAg4oCUIHJhZGlvIGJ1dHRvbiBjYW4gYmUgdW5jaGVja2VkICovXG4gIEBJbnB1dCgpIHB1YmxpYyB1bmNoZWNrYWJsZTogYm9vbGVhbjtcbiAgLyoqIEN1cnJlbnQgdmFsdWUgb2YgcmFkaW8gY29tcG9uZW50IG9yIGdyb3VwICovXG4gIEBJbnB1dCgpIHB1YmxpYyB2YWx1ZTogYW55O1xuXG4gIEBIb3N0QmluZGluZygnY2xhc3MuYWN0aXZlJylcbiAgcHVibGljIGdldCBpc0FjdGl2ZSgpOiBib29sZWFuIHtcbiAgICByZXR1cm4gdGhpcy5tZGJSYWRpbyA9PT0gdGhpcy52YWx1ZTtcbiAgfVxuXG4gIEBIb3N0TGlzdGVuZXIoJ2NsaWNrJywgWyckZXZlbnQnXSlcbiAgcHVibGljIG9uQ2xpY2soZXZlbnQ/OiBhbnkpOiB2b2lkIHtcbiAgICB0cnkge1xuICAgICAgdGhpcy5lbC5uYXRpdmVFbGVtZW50LnBhcmVudEVsZW1lbnQuY2hpbGROb2Rlcy5mb3JFYWNoKChlbGVtZW50OiBhbnkpID0+IHtcbiAgICAgICAgdGhpcy5yYWRpb0VsZW1lbnRzQXJyYXkucHVzaChlbGVtZW50KTtcbiAgICAgIH0pO1xuICAgICAgdGhpcy5yYWRpb0VsZW1lbnRzQXJyYXkuZm9yRWFjaChlbGVtZW50ID0+IHtcbiAgICAgICAgdGhpcy5yZW5kZXJlci5yZW1vdmVDbGFzcyhlbGVtZW50LCAnYWN0aXZlJyk7XG4gICAgICB9KTtcbiAgICAgIHRoaXMucmVuZGVyZXIuYWRkQ2xhc3MoZXZlbnQudGFyZ2V0LCAnYWN0aXZlJyk7XG4gICAgfSBjYXRjaCAoZXJyb3IpIHt9XG4gICAgaWYgKHRoaXMuZWwubmF0aXZlRWxlbWVudC5hdHRyaWJ1dGVzLmRpc2FibGVkKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgaWYgKHRoaXMudW5jaGVja2FibGUgJiYgdGhpcy5tZGJSYWRpbyA9PT0gdGhpcy52YWx1ZSkge1xuICAgICAgdGhpcy52YWx1ZSA9IHVuZGVmaW5lZDtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy52YWx1ZSA9IHRoaXMubWRiUmFkaW87XG4gICAgfVxuXG4gICAgdGhpcy5vblRvdWNoZWQoKTtcbiAgICB0aGlzLm9uQ2hhbmdlKHRoaXMudmFsdWUpO1xuICB9XG5cbiAgcHVibGljIGNvbnN0cnVjdG9yKHByb3RlY3RlZCBlbDogRWxlbWVudFJlZiwgcHJpdmF0ZSByZW5kZXJlcjogUmVuZGVyZXIyKSB7fVxuXG4gIHB1YmxpYyBuZ09uSW5pdCgpOiB2b2lkIHtcbiAgICB0aGlzLnVuY2hlY2thYmxlID0gdHlwZW9mIHRoaXMudW5jaGVja2FibGUgIT09ICd1bmRlZmluZWQnO1xuICB9XG5cbiAgcHVibGljIG9uQmx1cigpOiB2b2lkIHtcbiAgICB0aGlzLm9uVG91Y2hlZCgpO1xuICB9XG5cbiAgLy8gQ29udHJvbFZhbHVlQWNjZXNzb3JcbiAgLy8gbW9kZWwgLT4gdmlld1xuICBwdWJsaWMgd3JpdGVWYWx1ZSh2YWx1ZTogYW55KTogdm9pZCB7XG4gICAgdGhpcy52YWx1ZSA9IHZhbHVlO1xuICB9XG5cbiAgcHVibGljIHJlZ2lzdGVyT25DaGFuZ2UoZm46IGFueSk6IHZvaWQge1xuICAgIHRoaXMub25DaGFuZ2UgPSBmbjtcbiAgfVxuXG4gIHB1YmxpYyByZWdpc3Rlck9uVG91Y2hlZChmbjogYW55KTogdm9pZCB7XG4gICAgdGhpcy5vblRvdWNoZWQgPSBmbjtcbiAgfVxufVxuIl19