import { __decorate, __metadata } from "tslib";
import { Directive, ElementRef, Renderer2 } from '@angular/core';
// tslint:disable-next-line:directive-selector
var FarDirective = /** @class */ (function () {
    function FarDirective(_el, _r) {
        this._el = _el;
        this._r = _r;
        this._r.addClass(this._el.nativeElement, 'far');
    }
    FarDirective.ctorParameters = function () { return [
        { type: ElementRef },
        { type: Renderer2 }
    ]; };
    FarDirective = __decorate([
        Directive({ selector: '[far], [regular]' }),
        __metadata("design:paramtypes", [ElementRef, Renderer2])
    ], FarDirective);
    return FarDirective;
}());
export { FarDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZmFyLmRpcmVjdGl2ZS5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvaWNvbnMvZGlyZWN0aXZlcy9mYXIuZGlyZWN0aXZlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLFVBQVUsRUFBRSxTQUFTLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFFakUsOENBQThDO0FBRTlDO0lBQ0Usc0JBQW9CLEdBQWUsRUFBVSxFQUFhO1FBQXRDLFFBQUcsR0FBSCxHQUFHLENBQVk7UUFBVSxPQUFFLEdBQUYsRUFBRSxDQUFXO1FBQ3hELElBQUksQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsYUFBYSxFQUFFLEtBQUssQ0FBQyxDQUFDO0lBQ2xELENBQUM7O2dCQUZ3QixVQUFVO2dCQUFjLFNBQVM7O0lBRC9DLFlBQVk7UUFEeEIsU0FBUyxDQUFDLEVBQUUsUUFBUSxFQUFFLGtCQUFrQixFQUFFLENBQUM7eUNBRWpCLFVBQVUsRUFBYyxTQUFTO09BRC9DLFlBQVksQ0FJeEI7SUFBRCxtQkFBQztDQUFBLEFBSkQsSUFJQztTQUpZLFlBQVkiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBEaXJlY3RpdmUsIEVsZW1lbnRSZWYsIFJlbmRlcmVyMiB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG4vLyB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6ZGlyZWN0aXZlLXNlbGVjdG9yXG5ARGlyZWN0aXZlKHsgc2VsZWN0b3I6ICdbZmFyXSwgW3JlZ3VsYXJdJyB9KVxuZXhwb3J0IGNsYXNzIEZhckRpcmVjdGl2ZSB7XG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgX2VsOiBFbGVtZW50UmVmLCBwcml2YXRlIF9yOiBSZW5kZXJlcjIpIHtcbiAgICB0aGlzLl9yLmFkZENsYXNzKHRoaXMuX2VsLm5hdGl2ZUVsZW1lbnQsICdmYXInKTtcbiAgfVxufVxuIl19