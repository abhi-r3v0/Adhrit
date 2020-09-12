import { __decorate, __metadata } from "tslib";
import { Directive, ElementRef, Renderer2 } from '@angular/core';
// tslint:disable-next-line:directive-selector
let FasDirective = class FasDirective {
    constructor(_el, _r) {
        this._el = _el;
        this._r = _r;
        this._r.addClass(this._el.nativeElement, 'fas');
    }
};
FasDirective.ctorParameters = () => [
    { type: ElementRef },
    { type: Renderer2 }
];
FasDirective = __decorate([
    Directive({ selector: '[fas], [solid]' }),
    __metadata("design:paramtypes", [ElementRef, Renderer2])
], FasDirective);
export { FasDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZmFzLmRpcmVjdGl2ZS5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvaWNvbnMvZGlyZWN0aXZlcy9mYXMuZGlyZWN0aXZlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLFVBQVUsRUFBRSxTQUFTLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFFakUsOENBQThDO0FBRTlDLElBQWEsWUFBWSxHQUF6QixNQUFhLFlBQVk7SUFDdkIsWUFBb0IsR0FBZSxFQUFVLEVBQWE7UUFBdEMsUUFBRyxHQUFILEdBQUcsQ0FBWTtRQUFVLE9BQUUsR0FBRixFQUFFLENBQVc7UUFDeEQsSUFBSSxDQUFDLEVBQUUsQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxhQUFhLEVBQUUsS0FBSyxDQUFDLENBQUM7SUFDbEQsQ0FBQztDQUNGLENBQUE7O1lBSDBCLFVBQVU7WUFBYyxTQUFTOztBQUQvQyxZQUFZO0lBRHhCLFNBQVMsQ0FBQyxFQUFFLFFBQVEsRUFBRSxnQkFBZ0IsRUFBRSxDQUFDO3FDQUVmLFVBQVUsRUFBYyxTQUFTO0dBRC9DLFlBQVksQ0FJeEI7U0FKWSxZQUFZIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgRGlyZWN0aXZlLCBFbGVtZW50UmVmLCBSZW5kZXJlcjIgfSBmcm9tICdAYW5ndWxhci9jb3JlJztcblxuLy8gdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOmRpcmVjdGl2ZS1zZWxlY3RvclxuQERpcmVjdGl2ZSh7IHNlbGVjdG9yOiAnW2Zhc10sIFtzb2xpZF0nIH0pXG5leHBvcnQgY2xhc3MgRmFzRGlyZWN0aXZlIHtcbiAgY29uc3RydWN0b3IocHJpdmF0ZSBfZWw6IEVsZW1lbnRSZWYsIHByaXZhdGUgX3I6IFJlbmRlcmVyMikge1xuICAgIHRoaXMuX3IuYWRkQ2xhc3ModGhpcy5fZWwubmF0aXZlRWxlbWVudCwgJ2ZhcycpO1xuICB9XG59XG4iXX0=