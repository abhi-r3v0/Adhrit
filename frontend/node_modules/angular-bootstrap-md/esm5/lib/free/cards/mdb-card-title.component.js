import { __decorate, __metadata } from "tslib";
import { Component, OnInit, ElementRef, Renderer2, ChangeDetectionStrategy } from '@angular/core';
var MdbCardTitleComponent = /** @class */ (function () {
    function MdbCardTitleComponent(_el, _r) {
        this._el = _el;
        this._r = _r;
    }
    MdbCardTitleComponent.prototype.ngOnInit = function () {
        this._r.addClass(this._el.nativeElement, 'card-title');
    };
    MdbCardTitleComponent.ctorParameters = function () { return [
        { type: ElementRef },
        { type: Renderer2 }
    ]; };
    MdbCardTitleComponent = __decorate([
        Component({
            selector: 'mdb-card-title',
            template: "<ng-content></ng-content>",
            changeDetection: ChangeDetectionStrategy.OnPush
        }),
        __metadata("design:paramtypes", [ElementRef, Renderer2])
    ], MdbCardTitleComponent);
    return MdbCardTitleComponent;
}());
export { MdbCardTitleComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWRiLWNhcmQtdGl0bGUuY29tcG9uZW50LmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9jYXJkcy9tZGItY2FyZC10aXRsZS5jb21wb25lbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxTQUFTLEVBQUUsTUFBTSxFQUFFLFVBQVUsRUFBRSxTQUFTLEVBQUUsdUJBQXVCLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFPbEc7SUFDRSwrQkFBb0IsR0FBZSxFQUFVLEVBQWE7UUFBdEMsUUFBRyxHQUFILEdBQUcsQ0FBWTtRQUFVLE9BQUUsR0FBRixFQUFFLENBQVc7SUFBRyxDQUFDO0lBRTlELHdDQUFRLEdBQVI7UUFDRSxJQUFJLENBQUMsRUFBRSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLGFBQWEsRUFBRSxZQUFZLENBQUMsQ0FBQztJQUN6RCxDQUFDOztnQkFKd0IsVUFBVTtnQkFBYyxTQUFTOztJQUQvQyxxQkFBcUI7UUFMakMsU0FBUyxDQUFDO1lBQ1QsUUFBUSxFQUFFLGdCQUFnQjtZQUMxQixxQ0FBOEM7WUFDOUMsZUFBZSxFQUFFLHVCQUF1QixDQUFDLE1BQU07U0FDaEQsQ0FBQzt5Q0FFeUIsVUFBVSxFQUFjLFNBQVM7T0FEL0MscUJBQXFCLENBTWpDO0lBQUQsNEJBQUM7Q0FBQSxBQU5ELElBTUM7U0FOWSxxQkFBcUIiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBDb21wb25lbnQsIE9uSW5pdCwgRWxlbWVudFJlZiwgUmVuZGVyZXIyLCBDaGFuZ2VEZXRlY3Rpb25TdHJhdGVneSB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG5AQ29tcG9uZW50KHtcbiAgc2VsZWN0b3I6ICdtZGItY2FyZC10aXRsZScsXG4gIHRlbXBsYXRlVXJsOiAnLi9tZGItY2FyZC10aXRsZS5jb21wb25lbnQuaHRtbCcsXG4gIGNoYW5nZURldGVjdGlvbjogQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kuT25QdXNoLFxufSlcbmV4cG9ydCBjbGFzcyBNZGJDYXJkVGl0bGVDb21wb25lbnQgaW1wbGVtZW50cyBPbkluaXQge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9lbDogRWxlbWVudFJlZiwgcHJpdmF0ZSBfcjogUmVuZGVyZXIyKSB7fVxuXG4gIG5nT25Jbml0KCkge1xuICAgIHRoaXMuX3IuYWRkQ2xhc3ModGhpcy5fZWwubmF0aXZlRWxlbWVudCwgJ2NhcmQtdGl0bGUnKTtcbiAgfVxufVxuIl19