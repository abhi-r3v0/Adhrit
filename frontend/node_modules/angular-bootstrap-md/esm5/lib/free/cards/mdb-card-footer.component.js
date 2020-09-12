import { __decorate, __metadata } from "tslib";
import { ChangeDetectionStrategy, Component, ElementRef, OnInit, Renderer2 } from '@angular/core';
var MdbCardFooterComponent = /** @class */ (function () {
    function MdbCardFooterComponent(_el, _r) {
        this._el = _el;
        this._r = _r;
    }
    MdbCardFooterComponent.prototype.ngOnInit = function () {
        this._r.addClass(this._el.nativeElement, 'card-footer');
    };
    MdbCardFooterComponent.ctorParameters = function () { return [
        { type: ElementRef },
        { type: Renderer2 }
    ]; };
    MdbCardFooterComponent = __decorate([
        Component({
            selector: 'mdb-card-footer',
            template: "<ng-content></ng-content>\n",
            changeDetection: ChangeDetectionStrategy.OnPush
        }),
        __metadata("design:paramtypes", [ElementRef, Renderer2])
    ], MdbCardFooterComponent);
    return MdbCardFooterComponent;
}());
export { MdbCardFooterComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWRiLWNhcmQtZm9vdGVyLmNvbXBvbmVudC5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvY2FyZHMvbWRiLWNhcmQtZm9vdGVyLmNvbXBvbmVudC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUEsT0FBTyxFQUFFLHVCQUF1QixFQUFFLFNBQVMsRUFBRSxVQUFVLEVBQUUsTUFBTSxFQUFFLFNBQVMsRUFBRSxNQUFNLGVBQWUsQ0FBQztBQU9sRztJQUNFLGdDQUFvQixHQUFlLEVBQVUsRUFBYTtRQUF0QyxRQUFHLEdBQUgsR0FBRyxDQUFZO1FBQVUsT0FBRSxHQUFGLEVBQUUsQ0FBVztJQUFHLENBQUM7SUFFOUQseUNBQVEsR0FBUjtRQUNFLElBQUksQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsYUFBYSxFQUFFLGFBQWEsQ0FBQyxDQUFDO0lBQzFELENBQUM7O2dCQUp3QixVQUFVO2dCQUFjLFNBQVM7O0lBRC9DLHNCQUFzQjtRQUxsQyxTQUFTLENBQUM7WUFDVCxRQUFRLEVBQUUsaUJBQWlCO1lBQzNCLHVDQUErQztZQUMvQyxlQUFlLEVBQUUsdUJBQXVCLENBQUMsTUFBTTtTQUNoRCxDQUFDO3lDQUV5QixVQUFVLEVBQWMsU0FBUztPQUQvQyxzQkFBc0IsQ0FNbEM7SUFBRCw2QkFBQztDQUFBLEFBTkQsSUFNQztTQU5ZLHNCQUFzQiIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IENoYW5nZURldGVjdGlvblN0cmF0ZWd5LCBDb21wb25lbnQsIEVsZW1lbnRSZWYsIE9uSW5pdCwgUmVuZGVyZXIyIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbkBDb21wb25lbnQoe1xuICBzZWxlY3RvcjogJ21kYi1jYXJkLWZvb3RlcicsXG4gIHRlbXBsYXRlVXJsOiAnLi9tZGItY2FyZC1mb290ZXIuY29tcG9uZW50Lmh0bWwnLFxuICBjaGFuZ2VEZXRlY3Rpb246IENoYW5nZURldGVjdGlvblN0cmF0ZWd5Lk9uUHVzaCxcbn0pXG5leHBvcnQgY2xhc3MgTWRiQ2FyZEZvb3RlckNvbXBvbmVudCBpbXBsZW1lbnRzIE9uSW5pdCB7XG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgX2VsOiBFbGVtZW50UmVmLCBwcml2YXRlIF9yOiBSZW5kZXJlcjIpIHt9XG5cbiAgbmdPbkluaXQoKSB7XG4gICAgdGhpcy5fci5hZGRDbGFzcyh0aGlzLl9lbC5uYXRpdmVFbGVtZW50LCAnY2FyZC1mb290ZXInKTtcbiAgfVxufVxuIl19