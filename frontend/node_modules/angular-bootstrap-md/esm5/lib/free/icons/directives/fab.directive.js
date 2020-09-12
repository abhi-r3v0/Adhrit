import { __decorate, __metadata } from "tslib";
import { Directive, ElementRef, Renderer2 } from '@angular/core';
// tslint:disable-next-line:directive-selector
var FabDirective = /** @class */ (function () {
    function FabDirective(_el, _r) {
        this._el = _el;
        this._r = _r;
        this._r.addClass(this._el.nativeElement, 'fab');
    }
    FabDirective.ctorParameters = function () { return [
        { type: ElementRef },
        { type: Renderer2 }
    ]; };
    FabDirective = __decorate([
        Directive({ selector: '[fab], [brands]' }),
        __metadata("design:paramtypes", [ElementRef, Renderer2])
    ], FabDirective);
    return FabDirective;
}());
export { FabDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZmFiLmRpcmVjdGl2ZS5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvaWNvbnMvZGlyZWN0aXZlcy9mYWIuZGlyZWN0aXZlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLFVBQVUsRUFBRSxTQUFTLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFFakUsOENBQThDO0FBRTlDO0lBQ0Usc0JBQW9CLEdBQWUsRUFBVSxFQUFhO1FBQXRDLFFBQUcsR0FBSCxHQUFHLENBQVk7UUFBVSxPQUFFLEdBQUYsRUFBRSxDQUFXO1FBQ3hELElBQUksQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsYUFBYSxFQUFFLEtBQUssQ0FBQyxDQUFDO0lBQ2xELENBQUM7O2dCQUZ3QixVQUFVO2dCQUFjLFNBQVM7O0lBRC9DLFlBQVk7UUFEeEIsU0FBUyxDQUFDLEVBQUUsUUFBUSxFQUFFLGlCQUFpQixFQUFFLENBQUM7eUNBRWhCLFVBQVUsRUFBYyxTQUFTO09BRC9DLFlBQVksQ0FJeEI7SUFBRCxtQkFBQztDQUFBLEFBSkQsSUFJQztTQUpZLFlBQVkiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBEaXJlY3RpdmUsIEVsZW1lbnRSZWYsIFJlbmRlcmVyMiB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG4vLyB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6ZGlyZWN0aXZlLXNlbGVjdG9yXG5ARGlyZWN0aXZlKHsgc2VsZWN0b3I6ICdbZmFiXSwgW2JyYW5kc10nIH0pXG5leHBvcnQgY2xhc3MgRmFiRGlyZWN0aXZlIHtcbiAgY29uc3RydWN0b3IocHJpdmF0ZSBfZWw6IEVsZW1lbnRSZWYsIHByaXZhdGUgX3I6IFJlbmRlcmVyMikge1xuICAgIHRoaXMuX3IuYWRkQ2xhc3ModGhpcy5fZWwubmF0aXZlRWxlbWVudCwgJ2ZhYicpO1xuICB9XG59XG4iXX0=