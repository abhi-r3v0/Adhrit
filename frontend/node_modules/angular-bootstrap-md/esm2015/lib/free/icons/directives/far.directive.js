import { __decorate, __metadata } from "tslib";
import { Directive, ElementRef, Renderer2 } from '@angular/core';
// tslint:disable-next-line:directive-selector
let FarDirective = class FarDirective {
    constructor(_el, _r) {
        this._el = _el;
        this._r = _r;
        this._r.addClass(this._el.nativeElement, 'far');
    }
};
FarDirective.ctorParameters = () => [
    { type: ElementRef },
    { type: Renderer2 }
];
FarDirective = __decorate([
    Directive({ selector: '[far], [regular]' }),
    __metadata("design:paramtypes", [ElementRef, Renderer2])
], FarDirective);
export { FarDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZmFyLmRpcmVjdGl2ZS5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvaWNvbnMvZGlyZWN0aXZlcy9mYXIuZGlyZWN0aXZlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLFVBQVUsRUFBRSxTQUFTLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFFakUsOENBQThDO0FBRTlDLElBQWEsWUFBWSxHQUF6QixNQUFhLFlBQVk7SUFDdkIsWUFBb0IsR0FBZSxFQUFVLEVBQWE7UUFBdEMsUUFBRyxHQUFILEdBQUcsQ0FBWTtRQUFVLE9BQUUsR0FBRixFQUFFLENBQVc7UUFDeEQsSUFBSSxDQUFDLEVBQUUsQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxhQUFhLEVBQUUsS0FBSyxDQUFDLENBQUM7SUFDbEQsQ0FBQztDQUNGLENBQUE7O1lBSDBCLFVBQVU7WUFBYyxTQUFTOztBQUQvQyxZQUFZO0lBRHhCLFNBQVMsQ0FBQyxFQUFFLFFBQVEsRUFBRSxrQkFBa0IsRUFBRSxDQUFDO3FDQUVqQixVQUFVLEVBQWMsU0FBUztHQUQvQyxZQUFZLENBSXhCO1NBSlksWUFBWSIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IERpcmVjdGl2ZSwgRWxlbWVudFJlZiwgUmVuZGVyZXIyIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbi8vIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTpkaXJlY3RpdmUtc2VsZWN0b3JcbkBEaXJlY3RpdmUoeyBzZWxlY3RvcjogJ1tmYXJdLCBbcmVndWxhcl0nIH0pXG5leHBvcnQgY2xhc3MgRmFyRGlyZWN0aXZlIHtcbiAgY29uc3RydWN0b3IocHJpdmF0ZSBfZWw6IEVsZW1lbnRSZWYsIHByaXZhdGUgX3I6IFJlbmRlcmVyMikge1xuICAgIHRoaXMuX3IuYWRkQ2xhc3ModGhpcy5fZWwubmF0aXZlRWxlbWVudCwgJ2ZhcicpO1xuICB9XG59XG4iXX0=