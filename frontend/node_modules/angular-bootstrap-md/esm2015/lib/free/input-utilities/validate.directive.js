import { __decorate, __metadata } from "tslib";
import { Directive, ElementRef, Input, OnInit, Renderer2 } from '@angular/core';
let MdbValidateDirective = class MdbValidateDirective {
    constructor(renderer, el) {
        this.renderer = renderer;
        this.el = el;
        this._validate = true;
        this._validateSuccess = true;
        this._validateError = true;
    }
    get validate() {
        return this._validate;
    }
    set validate(value) {
        this._validate = value;
        this.updateErrorClass();
        this.updateSuccessClass();
    }
    get validateSuccess() {
        return this._validateSuccess;
    }
    set validateSuccess(value) {
        this._validateSuccess = value;
        this.updateSuccessClass();
    }
    get validateError() {
        return this._validateError;
    }
    set validateError(value) {
        this._validateError = value;
        this.updateErrorClass();
        this.updateSuccessClass();
    }
    updateSuccessClass() {
        if (this.validate && this.validateSuccess) {
            this.renderer.addClass(this.el.nativeElement, 'validate-success');
        }
        else {
            this.renderer.removeClass(this.el.nativeElement, 'validate-success');
        }
    }
    updateErrorClass() {
        if (this.validate && this.validateError) {
            this.renderer.addClass(this.el.nativeElement, 'validate-error');
        }
        else {
            this.renderer.removeClass(this.el.nativeElement, 'validate-error');
        }
    }
    ngOnInit() {
        this.updateSuccessClass();
        this.updateErrorClass();
    }
};
MdbValidateDirective.ctorParameters = () => [
    { type: Renderer2 },
    { type: ElementRef }
];
__decorate([
    Input(),
    __metadata("design:type", Boolean)
], MdbValidateDirective.prototype, "mdbValidate", void 0);
__decorate([
    Input(),
    __metadata("design:type", Boolean),
    __metadata("design:paramtypes", [Boolean])
], MdbValidateDirective.prototype, "validate", null);
__decorate([
    Input(),
    __metadata("design:type", Boolean),
    __metadata("design:paramtypes", [Boolean])
], MdbValidateDirective.prototype, "validateSuccess", null);
__decorate([
    Input(),
    __metadata("design:type", Boolean),
    __metadata("design:paramtypes", [Boolean])
], MdbValidateDirective.prototype, "validateError", null);
MdbValidateDirective = __decorate([
    Directive({
        selector: '[mdbValidate]',
    }),
    __metadata("design:paramtypes", [Renderer2, ElementRef])
], MdbValidateDirective);
export { MdbValidateDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmFsaWRhdGUuZGlyZWN0aXZlLmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9pbnB1dC11dGlsaXRpZXMvdmFsaWRhdGUuZGlyZWN0aXZlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLFVBQVUsRUFBRSxLQUFLLEVBQUUsTUFBTSxFQUFFLFNBQVMsRUFBRSxNQUFNLGVBQWUsQ0FBQztBQUtoRixJQUFhLG9CQUFvQixHQUFqQyxNQUFhLG9CQUFvQjtJQW1DL0IsWUFBb0IsUUFBbUIsRUFBVSxFQUFjO1FBQTNDLGFBQVEsR0FBUixRQUFRLENBQVc7UUFBVSxPQUFFLEdBQUYsRUFBRSxDQUFZO1FBbEN2RCxjQUFTLEdBQUcsSUFBSSxDQUFDO1FBQ2pCLHFCQUFnQixHQUFHLElBQUksQ0FBQztRQUN4QixtQkFBYyxHQUFHLElBQUksQ0FBQztJQWdDb0MsQ0FBQztJQTVCbkUsSUFBSSxRQUFRO1FBQ1YsT0FBTyxJQUFJLENBQUMsU0FBUyxDQUFDO0lBQ3hCLENBQUM7SUFDRCxJQUFJLFFBQVEsQ0FBQyxLQUFjO1FBQ3pCLElBQUksQ0FBQyxTQUFTLEdBQUcsS0FBSyxDQUFDO1FBQ3ZCLElBQUksQ0FBQyxnQkFBZ0IsRUFBRSxDQUFDO1FBQ3hCLElBQUksQ0FBQyxrQkFBa0IsRUFBRSxDQUFDO0lBQzVCLENBQUM7SUFHRCxJQUFJLGVBQWU7UUFDakIsT0FBTyxJQUFJLENBQUMsZ0JBQWdCLENBQUM7SUFDL0IsQ0FBQztJQUNELElBQUksZUFBZSxDQUFDLEtBQWM7UUFDaEMsSUFBSSxDQUFDLGdCQUFnQixHQUFHLEtBQUssQ0FBQztRQUM5QixJQUFJLENBQUMsa0JBQWtCLEVBQUUsQ0FBQztJQUM1QixDQUFDO0lBR0QsSUFBSSxhQUFhO1FBQ2YsT0FBTyxJQUFJLENBQUMsY0FBYyxDQUFDO0lBQzdCLENBQUM7SUFDRCxJQUFJLGFBQWEsQ0FBQyxLQUFjO1FBQzlCLElBQUksQ0FBQyxjQUFjLEdBQUcsS0FBSyxDQUFDO1FBQzVCLElBQUksQ0FBQyxnQkFBZ0IsRUFBRSxDQUFDO1FBQ3hCLElBQUksQ0FBQyxrQkFBa0IsRUFBRSxDQUFDO0lBQzVCLENBQUM7SUFJRCxrQkFBa0I7UUFDaEIsSUFBSSxJQUFJLENBQUMsUUFBUSxJQUFJLElBQUksQ0FBQyxlQUFlLEVBQUU7WUFDekMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxhQUFhLEVBQUUsa0JBQWtCLENBQUMsQ0FBQztTQUNuRTthQUFNO1lBQ0wsSUFBSSxDQUFDLFFBQVEsQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxhQUFhLEVBQUUsa0JBQWtCLENBQUMsQ0FBQztTQUN0RTtJQUNILENBQUM7SUFFRCxnQkFBZ0I7UUFDZCxJQUFJLElBQUksQ0FBQyxRQUFRLElBQUksSUFBSSxDQUFDLGFBQWEsRUFBRTtZQUN2QyxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLGFBQWEsRUFBRSxnQkFBZ0IsQ0FBQyxDQUFDO1NBQ2pFO2FBQU07WUFDTCxJQUFJLENBQUMsUUFBUSxDQUFDLFdBQVcsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLGFBQWEsRUFBRSxnQkFBZ0IsQ0FBQyxDQUFDO1NBQ3BFO0lBQ0gsQ0FBQztJQUVELFFBQVE7UUFDTixJQUFJLENBQUMsa0JBQWtCLEVBQUUsQ0FBQztRQUMxQixJQUFJLENBQUMsZ0JBQWdCLEVBQUUsQ0FBQztJQUMxQixDQUFDO0NBQ0YsQ0FBQTs7WUF0QitCLFNBQVM7WUFBYyxVQUFVOztBQTlCdEQ7SUFBUixLQUFLLEVBQUU7O3lEQUFzQjtBQUU5QjtJQURDLEtBQUssRUFBRTs7O29EQUdQO0FBUUQ7SUFEQyxLQUFLLEVBQUU7OzsyREFHUDtBQU9EO0lBREMsS0FBSyxFQUFFOzs7eURBR1A7QUE1QlUsb0JBQW9CO0lBSGhDLFNBQVMsQ0FBQztRQUNULFFBQVEsRUFBRSxlQUFlO0tBQzFCLENBQUM7cUNBb0M4QixTQUFTLEVBQWMsVUFBVTtHQW5DcEQsb0JBQW9CLENBeURoQztTQXpEWSxvQkFBb0IiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBEaXJlY3RpdmUsIEVsZW1lbnRSZWYsIElucHV0LCBPbkluaXQsIFJlbmRlcmVyMiB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG5ARGlyZWN0aXZlKHtcbiAgc2VsZWN0b3I6ICdbbWRiVmFsaWRhdGVdJyxcbn0pXG5leHBvcnQgY2xhc3MgTWRiVmFsaWRhdGVEaXJlY3RpdmUgaW1wbGVtZW50cyBPbkluaXQge1xuICBwcml2YXRlIF92YWxpZGF0ZSA9IHRydWU7XG4gIHByaXZhdGUgX3ZhbGlkYXRlU3VjY2VzcyA9IHRydWU7XG4gIHByaXZhdGUgX3ZhbGlkYXRlRXJyb3IgPSB0cnVlO1xuXG4gIEBJbnB1dCgpIG1kYlZhbGlkYXRlOiBib29sZWFuO1xuICBASW5wdXQoKVxuICBnZXQgdmFsaWRhdGUoKSB7XG4gICAgcmV0dXJuIHRoaXMuX3ZhbGlkYXRlO1xuICB9XG4gIHNldCB2YWxpZGF0ZSh2YWx1ZTogYm9vbGVhbikge1xuICAgIHRoaXMuX3ZhbGlkYXRlID0gdmFsdWU7XG4gICAgdGhpcy51cGRhdGVFcnJvckNsYXNzKCk7XG4gICAgdGhpcy51cGRhdGVTdWNjZXNzQ2xhc3MoKTtcbiAgfVxuXG4gIEBJbnB1dCgpXG4gIGdldCB2YWxpZGF0ZVN1Y2Nlc3MoKSB7XG4gICAgcmV0dXJuIHRoaXMuX3ZhbGlkYXRlU3VjY2VzcztcbiAgfVxuICBzZXQgdmFsaWRhdGVTdWNjZXNzKHZhbHVlOiBib29sZWFuKSB7XG4gICAgdGhpcy5fdmFsaWRhdGVTdWNjZXNzID0gdmFsdWU7XG4gICAgdGhpcy51cGRhdGVTdWNjZXNzQ2xhc3MoKTtcbiAgfVxuXG4gIEBJbnB1dCgpXG4gIGdldCB2YWxpZGF0ZUVycm9yKCkge1xuICAgIHJldHVybiB0aGlzLl92YWxpZGF0ZUVycm9yO1xuICB9XG4gIHNldCB2YWxpZGF0ZUVycm9yKHZhbHVlOiBib29sZWFuKSB7XG4gICAgdGhpcy5fdmFsaWRhdGVFcnJvciA9IHZhbHVlO1xuICAgIHRoaXMudXBkYXRlRXJyb3JDbGFzcygpO1xuICAgIHRoaXMudXBkYXRlU3VjY2Vzc0NsYXNzKCk7XG4gIH1cblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIHJlbmRlcmVyOiBSZW5kZXJlcjIsIHByaXZhdGUgZWw6IEVsZW1lbnRSZWYpIHt9XG5cbiAgdXBkYXRlU3VjY2Vzc0NsYXNzKCkge1xuICAgIGlmICh0aGlzLnZhbGlkYXRlICYmIHRoaXMudmFsaWRhdGVTdWNjZXNzKSB7XG4gICAgICB0aGlzLnJlbmRlcmVyLmFkZENsYXNzKHRoaXMuZWwubmF0aXZlRWxlbWVudCwgJ3ZhbGlkYXRlLXN1Y2Nlc3MnKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5yZW5kZXJlci5yZW1vdmVDbGFzcyh0aGlzLmVsLm5hdGl2ZUVsZW1lbnQsICd2YWxpZGF0ZS1zdWNjZXNzJyk7XG4gICAgfVxuICB9XG5cbiAgdXBkYXRlRXJyb3JDbGFzcygpIHtcbiAgICBpZiAodGhpcy52YWxpZGF0ZSAmJiB0aGlzLnZhbGlkYXRlRXJyb3IpIHtcbiAgICAgIHRoaXMucmVuZGVyZXIuYWRkQ2xhc3ModGhpcy5lbC5uYXRpdmVFbGVtZW50LCAndmFsaWRhdGUtZXJyb3InKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5yZW5kZXJlci5yZW1vdmVDbGFzcyh0aGlzLmVsLm5hdGl2ZUVsZW1lbnQsICd2YWxpZGF0ZS1lcnJvcicpO1xuICAgIH1cbiAgfVxuXG4gIG5nT25Jbml0KCkge1xuICAgIHRoaXMudXBkYXRlU3VjY2Vzc0NsYXNzKCk7XG4gICAgdGhpcy51cGRhdGVFcnJvckNsYXNzKCk7XG4gIH1cbn1cbiJdfQ==