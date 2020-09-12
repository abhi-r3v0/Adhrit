import { __decorate, __metadata } from "tslib";
import { Directive, ElementRef, Renderer2 } from '@angular/core';
// tslint:disable-next-line:directive-selector
var FasDirective = /** @class */ (function () {
    function FasDirective(_el, _r) {
        this._el = _el;
        this._r = _r;
        this._r.addClass(this._el.nativeElement, 'fas');
    }
    FasDirective.ctorParameters = function () { return [
        { type: ElementRef },
        { type: Renderer2 }
    ]; };
    FasDirective = __decorate([
        Directive({ selector: '[fas], [solid]' }),
        __metadata("design:paramtypes", [ElementRef, Renderer2])
    ], FasDirective);
    return FasDirective;
}());
export { FasDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZmFzLmRpcmVjdGl2ZS5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvaWNvbnMvZGlyZWN0aXZlcy9mYXMuZGlyZWN0aXZlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLFVBQVUsRUFBRSxTQUFTLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFFakUsOENBQThDO0FBRTlDO0lBQ0Usc0JBQW9CLEdBQWUsRUFBVSxFQUFhO1FBQXRDLFFBQUcsR0FBSCxHQUFHLENBQVk7UUFBVSxPQUFFLEdBQUYsRUFBRSxDQUFXO1FBQ3hELElBQUksQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsYUFBYSxFQUFFLEtBQUssQ0FBQyxDQUFDO0lBQ2xELENBQUM7O2dCQUZ3QixVQUFVO2dCQUFjLFNBQVM7O0lBRC9DLFlBQVk7UUFEeEIsU0FBUyxDQUFDLEVBQUUsUUFBUSxFQUFFLGdCQUFnQixFQUFFLENBQUM7eUNBRWYsVUFBVSxFQUFjLFNBQVM7T0FEL0MsWUFBWSxDQUl4QjtJQUFELG1CQUFDO0NBQUEsQUFKRCxJQUlDO1NBSlksWUFBWSIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IERpcmVjdGl2ZSwgRWxlbWVudFJlZiwgUmVuZGVyZXIyIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbi8vIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTpkaXJlY3RpdmUtc2VsZWN0b3JcbkBEaXJlY3RpdmUoeyBzZWxlY3RvcjogJ1tmYXNdLCBbc29saWRdJyB9KVxuZXhwb3J0IGNsYXNzIEZhc0RpcmVjdGl2ZSB7XG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgX2VsOiBFbGVtZW50UmVmLCBwcml2YXRlIF9yOiBSZW5kZXJlcjIpIHtcbiAgICB0aGlzLl9yLmFkZENsYXNzKHRoaXMuX2VsLm5hdGl2ZUVsZW1lbnQsICdmYXMnKTtcbiAgfVxufVxuIl19