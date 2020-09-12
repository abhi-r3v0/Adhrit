import { __decorate, __metadata } from "tslib";
import { Component, Input, OnInit, ElementRef, Renderer2, ChangeDetectionStrategy } from '@angular/core';
var MdbCardHeaderComponent = /** @class */ (function () {
    function MdbCardHeaderComponent(_el, _r) {
        this._el = _el;
        this._r = _r;
    }
    MdbCardHeaderComponent.prototype.ngOnInit = function () {
        var _this = this;
        this._r.addClass(this._el.nativeElement, 'card-header');
        if (this.class) {
            this.class.split(' ').forEach(function (element) {
                _this._r.addClass(_this._el.nativeElement, element);
            });
        }
    };
    MdbCardHeaderComponent.ctorParameters = function () { return [
        { type: ElementRef },
        { type: Renderer2 }
    ]; };
    __decorate([
        Input(),
        __metadata("design:type", String)
    ], MdbCardHeaderComponent.prototype, "class", void 0);
    MdbCardHeaderComponent = __decorate([
        Component({
            selector: 'mdb-card-header',
            template: "<ng-content></ng-content>",
            changeDetection: ChangeDetectionStrategy.OnPush
        }),
        __metadata("design:paramtypes", [ElementRef, Renderer2])
    ], MdbCardHeaderComponent);
    return MdbCardHeaderComponent;
}());
export { MdbCardHeaderComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWRiLWNhcmQtaGVhZGVyLmNvbXBvbmVudC5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvY2FyZHMvbWRiLWNhcmQtaGVhZGVyLmNvbXBvbmVudC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUEsT0FBTyxFQUFFLFNBQVMsRUFBRSxLQUFLLEVBQUUsTUFBTSxFQUFFLFVBQVUsRUFBRSxTQUFTLEVBQUUsdUJBQXVCLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFRekc7SUFFSSxnQ0FBb0IsR0FBZSxFQUFVLEVBQWE7UUFBdEMsUUFBRyxHQUFILEdBQUcsQ0FBWTtRQUFVLE9BQUUsR0FBRixFQUFFLENBQVc7SUFBSSxDQUFDO0lBRS9ELHlDQUFRLEdBQVI7UUFBQSxpQkFPQztRQU5HLElBQUksQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsYUFBYSxFQUFFLGFBQWEsQ0FBQyxDQUFDO1FBQ3hELElBQUksSUFBSSxDQUFDLEtBQUssRUFBRTtZQUNaLElBQUksQ0FBQyxLQUFLLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxDQUFDLE9BQU8sQ0FBQyxVQUFDLE9BQVk7Z0JBQ3ZDLEtBQUksQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLEtBQUksQ0FBQyxHQUFHLENBQUMsYUFBYSxFQUFFLE9BQU8sQ0FBQyxDQUFDO1lBQ3RELENBQUMsQ0FBQyxDQUFDO1NBQ047SUFDTCxDQUFDOztnQkFUd0IsVUFBVTtnQkFBYyxTQUFTOztJQURqRDtRQUFSLEtBQUssRUFBRTs7eURBQWU7SUFEZCxzQkFBc0I7UUFObEMsU0FBUyxDQUFDO1lBQ1AsUUFBUSxFQUFFLGlCQUFpQjtZQUMzQixxQ0FBK0M7WUFDL0MsZUFBZSxFQUFFLHVCQUF1QixDQUFDLE1BQU07U0FDbEQsQ0FBQzt5Q0FJMkIsVUFBVSxFQUFjLFNBQVM7T0FGakQsc0JBQXNCLENBWWxDO0lBQUQsNkJBQUM7Q0FBQSxBQVpELElBWUM7U0FaWSxzQkFBc0IiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBDb21wb25lbnQsIElucHV0LCBPbkluaXQsIEVsZW1lbnRSZWYsIFJlbmRlcmVyMiwgQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kgfSBmcm9tICdAYW5ndWxhci9jb3JlJztcblxuQENvbXBvbmVudCh7XG4gICAgc2VsZWN0b3I6ICdtZGItY2FyZC1oZWFkZXInLFxuICAgIHRlbXBsYXRlVXJsOiAnLi9tZGItY2FyZC1oZWFkZXIuY29tcG9uZW50Lmh0bWwnLFxuICAgIGNoYW5nZURldGVjdGlvbjogQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kuT25QdXNoXG59KVxuXG5leHBvcnQgY2xhc3MgTWRiQ2FyZEhlYWRlckNvbXBvbmVudCBpbXBsZW1lbnRzIE9uSW5pdCB7XG4gICAgQElucHV0KCkgY2xhc3M6IHN0cmluZztcbiAgICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9lbDogRWxlbWVudFJlZiwgcHJpdmF0ZSBfcjogUmVuZGVyZXIyKSB7IH1cblxuICAgIG5nT25Jbml0KCkge1xuICAgICAgICB0aGlzLl9yLmFkZENsYXNzKHRoaXMuX2VsLm5hdGl2ZUVsZW1lbnQsICdjYXJkLWhlYWRlcicpO1xuICAgICAgICBpZiAodGhpcy5jbGFzcykge1xuICAgICAgICAgICAgdGhpcy5jbGFzcy5zcGxpdCgnICcpLmZvckVhY2goKGVsZW1lbnQ6IGFueSkgPT4ge1xuICAgICAgICAgICAgICAgIHRoaXMuX3IuYWRkQ2xhc3ModGhpcy5fZWwubmF0aXZlRWxlbWVudCwgZWxlbWVudCk7XG4gICAgICAgICAgICB9KTtcbiAgICAgICAgfVxuICAgIH1cbn1cbiJdfQ==