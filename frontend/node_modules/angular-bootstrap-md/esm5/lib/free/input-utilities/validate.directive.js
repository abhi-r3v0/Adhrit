import { __decorate, __metadata } from "tslib";
import { Directive, ElementRef, Input, OnInit, Renderer2 } from '@angular/core';
var MdbValidateDirective = /** @class */ (function () {
    function MdbValidateDirective(renderer, el) {
        this.renderer = renderer;
        this.el = el;
        this._validate = true;
        this._validateSuccess = true;
        this._validateError = true;
    }
    Object.defineProperty(MdbValidateDirective.prototype, "validate", {
        get: function () {
            return this._validate;
        },
        set: function (value) {
            this._validate = value;
            this.updateErrorClass();
            this.updateSuccessClass();
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(MdbValidateDirective.prototype, "validateSuccess", {
        get: function () {
            return this._validateSuccess;
        },
        set: function (value) {
            this._validateSuccess = value;
            this.updateSuccessClass();
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(MdbValidateDirective.prototype, "validateError", {
        get: function () {
            return this._validateError;
        },
        set: function (value) {
            this._validateError = value;
            this.updateErrorClass();
            this.updateSuccessClass();
        },
        enumerable: true,
        configurable: true
    });
    MdbValidateDirective.prototype.updateSuccessClass = function () {
        if (this.validate && this.validateSuccess) {
            this.renderer.addClass(this.el.nativeElement, 'validate-success');
        }
        else {
            this.renderer.removeClass(this.el.nativeElement, 'validate-success');
        }
    };
    MdbValidateDirective.prototype.updateErrorClass = function () {
        if (this.validate && this.validateError) {
            this.renderer.addClass(this.el.nativeElement, 'validate-error');
        }
        else {
            this.renderer.removeClass(this.el.nativeElement, 'validate-error');
        }
    };
    MdbValidateDirective.prototype.ngOnInit = function () {
        this.updateSuccessClass();
        this.updateErrorClass();
    };
    MdbValidateDirective.ctorParameters = function () { return [
        { type: Renderer2 },
        { type: ElementRef }
    ]; };
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
    return MdbValidateDirective;
}());
export { MdbValidateDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmFsaWRhdGUuZGlyZWN0aXZlLmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9pbnB1dC11dGlsaXRpZXMvdmFsaWRhdGUuZGlyZWN0aXZlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLFVBQVUsRUFBRSxLQUFLLEVBQUUsTUFBTSxFQUFFLFNBQVMsRUFBRSxNQUFNLGVBQWUsQ0FBQztBQUtoRjtJQW1DRSw4QkFBb0IsUUFBbUIsRUFBVSxFQUFjO1FBQTNDLGFBQVEsR0FBUixRQUFRLENBQVc7UUFBVSxPQUFFLEdBQUYsRUFBRSxDQUFZO1FBbEN2RCxjQUFTLEdBQUcsSUFBSSxDQUFDO1FBQ2pCLHFCQUFnQixHQUFHLElBQUksQ0FBQztRQUN4QixtQkFBYyxHQUFHLElBQUksQ0FBQztJQWdDb0MsQ0FBQztJQTVCbkUsc0JBQUksMENBQVE7YUFBWjtZQUNFLE9BQU8sSUFBSSxDQUFDLFNBQVMsQ0FBQztRQUN4QixDQUFDO2FBQ0QsVUFBYSxLQUFjO1lBQ3pCLElBQUksQ0FBQyxTQUFTLEdBQUcsS0FBSyxDQUFDO1lBQ3ZCLElBQUksQ0FBQyxnQkFBZ0IsRUFBRSxDQUFDO1lBQ3hCLElBQUksQ0FBQyxrQkFBa0IsRUFBRSxDQUFDO1FBQzVCLENBQUM7OztPQUxBO0lBUUQsc0JBQUksaURBQWU7YUFBbkI7WUFDRSxPQUFPLElBQUksQ0FBQyxnQkFBZ0IsQ0FBQztRQUMvQixDQUFDO2FBQ0QsVUFBb0IsS0FBYztZQUNoQyxJQUFJLENBQUMsZ0JBQWdCLEdBQUcsS0FBSyxDQUFDO1lBQzlCLElBQUksQ0FBQyxrQkFBa0IsRUFBRSxDQUFDO1FBQzVCLENBQUM7OztPQUpBO0lBT0Qsc0JBQUksK0NBQWE7YUFBakI7WUFDRSxPQUFPLElBQUksQ0FBQyxjQUFjLENBQUM7UUFDN0IsQ0FBQzthQUNELFVBQWtCLEtBQWM7WUFDOUIsSUFBSSxDQUFDLGNBQWMsR0FBRyxLQUFLLENBQUM7WUFDNUIsSUFBSSxDQUFDLGdCQUFnQixFQUFFLENBQUM7WUFDeEIsSUFBSSxDQUFDLGtCQUFrQixFQUFFLENBQUM7UUFDNUIsQ0FBQzs7O09BTEE7SUFTRCxpREFBa0IsR0FBbEI7UUFDRSxJQUFJLElBQUksQ0FBQyxRQUFRLElBQUksSUFBSSxDQUFDLGVBQWUsRUFBRTtZQUN6QyxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLGFBQWEsRUFBRSxrQkFBa0IsQ0FBQyxDQUFDO1NBQ25FO2FBQU07WUFDTCxJQUFJLENBQUMsUUFBUSxDQUFDLFdBQVcsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLGFBQWEsRUFBRSxrQkFBa0IsQ0FBQyxDQUFDO1NBQ3RFO0lBQ0gsQ0FBQztJQUVELCtDQUFnQixHQUFoQjtRQUNFLElBQUksSUFBSSxDQUFDLFFBQVEsSUFBSSxJQUFJLENBQUMsYUFBYSxFQUFFO1lBQ3ZDLElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsYUFBYSxFQUFFLGdCQUFnQixDQUFDLENBQUM7U0FDakU7YUFBTTtZQUNMLElBQUksQ0FBQyxRQUFRLENBQUMsV0FBVyxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsYUFBYSxFQUFFLGdCQUFnQixDQUFDLENBQUM7U0FDcEU7SUFDSCxDQUFDO0lBRUQsdUNBQVEsR0FBUjtRQUNFLElBQUksQ0FBQyxrQkFBa0IsRUFBRSxDQUFDO1FBQzFCLElBQUksQ0FBQyxnQkFBZ0IsRUFBRSxDQUFDO0lBQzFCLENBQUM7O2dCQXJCNkIsU0FBUztnQkFBYyxVQUFVOztJQTlCdEQ7UUFBUixLQUFLLEVBQUU7OzZEQUFzQjtJQUU5QjtRQURDLEtBQUssRUFBRTs7O3dEQUdQO0lBUUQ7UUFEQyxLQUFLLEVBQUU7OzsrREFHUDtJQU9EO1FBREMsS0FBSyxFQUFFOzs7NkRBR1A7SUE1QlUsb0JBQW9CO1FBSGhDLFNBQVMsQ0FBQztZQUNULFFBQVEsRUFBRSxlQUFlO1NBQzFCLENBQUM7eUNBb0M4QixTQUFTLEVBQWMsVUFBVTtPQW5DcEQsb0JBQW9CLENBeURoQztJQUFELDJCQUFDO0NBQUEsQUF6REQsSUF5REM7U0F6RFksb0JBQW9CIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgRGlyZWN0aXZlLCBFbGVtZW50UmVmLCBJbnB1dCwgT25Jbml0LCBSZW5kZXJlcjIgfSBmcm9tICdAYW5ndWxhci9jb3JlJztcblxuQERpcmVjdGl2ZSh7XG4gIHNlbGVjdG9yOiAnW21kYlZhbGlkYXRlXScsXG59KVxuZXhwb3J0IGNsYXNzIE1kYlZhbGlkYXRlRGlyZWN0aXZlIGltcGxlbWVudHMgT25Jbml0IHtcbiAgcHJpdmF0ZSBfdmFsaWRhdGUgPSB0cnVlO1xuICBwcml2YXRlIF92YWxpZGF0ZVN1Y2Nlc3MgPSB0cnVlO1xuICBwcml2YXRlIF92YWxpZGF0ZUVycm9yID0gdHJ1ZTtcblxuICBASW5wdXQoKSBtZGJWYWxpZGF0ZTogYm9vbGVhbjtcbiAgQElucHV0KClcbiAgZ2V0IHZhbGlkYXRlKCkge1xuICAgIHJldHVybiB0aGlzLl92YWxpZGF0ZTtcbiAgfVxuICBzZXQgdmFsaWRhdGUodmFsdWU6IGJvb2xlYW4pIHtcbiAgICB0aGlzLl92YWxpZGF0ZSA9IHZhbHVlO1xuICAgIHRoaXMudXBkYXRlRXJyb3JDbGFzcygpO1xuICAgIHRoaXMudXBkYXRlU3VjY2Vzc0NsYXNzKCk7XG4gIH1cblxuICBASW5wdXQoKVxuICBnZXQgdmFsaWRhdGVTdWNjZXNzKCkge1xuICAgIHJldHVybiB0aGlzLl92YWxpZGF0ZVN1Y2Nlc3M7XG4gIH1cbiAgc2V0IHZhbGlkYXRlU3VjY2Vzcyh2YWx1ZTogYm9vbGVhbikge1xuICAgIHRoaXMuX3ZhbGlkYXRlU3VjY2VzcyA9IHZhbHVlO1xuICAgIHRoaXMudXBkYXRlU3VjY2Vzc0NsYXNzKCk7XG4gIH1cblxuICBASW5wdXQoKVxuICBnZXQgdmFsaWRhdGVFcnJvcigpIHtcbiAgICByZXR1cm4gdGhpcy5fdmFsaWRhdGVFcnJvcjtcbiAgfVxuICBzZXQgdmFsaWRhdGVFcnJvcih2YWx1ZTogYm9vbGVhbikge1xuICAgIHRoaXMuX3ZhbGlkYXRlRXJyb3IgPSB2YWx1ZTtcbiAgICB0aGlzLnVwZGF0ZUVycm9yQ2xhc3MoKTtcbiAgICB0aGlzLnVwZGF0ZVN1Y2Nlc3NDbGFzcygpO1xuICB9XG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSByZW5kZXJlcjogUmVuZGVyZXIyLCBwcml2YXRlIGVsOiBFbGVtZW50UmVmKSB7fVxuXG4gIHVwZGF0ZVN1Y2Nlc3NDbGFzcygpIHtcbiAgICBpZiAodGhpcy52YWxpZGF0ZSAmJiB0aGlzLnZhbGlkYXRlU3VjY2Vzcykge1xuICAgICAgdGhpcy5yZW5kZXJlci5hZGRDbGFzcyh0aGlzLmVsLm5hdGl2ZUVsZW1lbnQsICd2YWxpZGF0ZS1zdWNjZXNzJyk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMucmVuZGVyZXIucmVtb3ZlQ2xhc3ModGhpcy5lbC5uYXRpdmVFbGVtZW50LCAndmFsaWRhdGUtc3VjY2VzcycpO1xuICAgIH1cbiAgfVxuXG4gIHVwZGF0ZUVycm9yQ2xhc3MoKSB7XG4gICAgaWYgKHRoaXMudmFsaWRhdGUgJiYgdGhpcy52YWxpZGF0ZUVycm9yKSB7XG4gICAgICB0aGlzLnJlbmRlcmVyLmFkZENsYXNzKHRoaXMuZWwubmF0aXZlRWxlbWVudCwgJ3ZhbGlkYXRlLWVycm9yJyk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMucmVuZGVyZXIucmVtb3ZlQ2xhc3ModGhpcy5lbC5uYXRpdmVFbGVtZW50LCAndmFsaWRhdGUtZXJyb3InKTtcbiAgICB9XG4gIH1cblxuICBuZ09uSW5pdCgpIHtcbiAgICB0aGlzLnVwZGF0ZVN1Y2Nlc3NDbGFzcygpO1xuICAgIHRoaXMudXBkYXRlRXJyb3JDbGFzcygpO1xuICB9XG59XG4iXX0=