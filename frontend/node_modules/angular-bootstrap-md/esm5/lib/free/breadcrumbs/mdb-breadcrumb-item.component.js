import { __decorate, __metadata } from "tslib";
import { Component, ElementRef, Input, OnInit, Renderer2, ViewEncapsulation } from '@angular/core';
var MdbBreadcrumbItemComponent = /** @class */ (function () {
    function MdbBreadcrumbItemComponent(_el, _renderer) {
        this._el = _el;
        this._renderer = _renderer;
    }
    MdbBreadcrumbItemComponent.prototype.ngOnInit = function () {
        this._renderer.addClass(this._el.nativeElement, 'breadcrumb-item');
    };
    MdbBreadcrumbItemComponent.ctorParameters = function () { return [
        { type: ElementRef },
        { type: Renderer2 }
    ]; };
    __decorate([
        Input(),
        __metadata("design:type", String)
    ], MdbBreadcrumbItemComponent.prototype, "fontWeight", void 0);
    MdbBreadcrumbItemComponent = __decorate([
        Component({
            selector: 'mdb-breadcrumb-item',
            template: "<li class=\"list-inline-item breadcrumb-item font-weight-{{fontWeight}}\">\n  <ng-content></ng-content>\n</li>\n",
            encapsulation: ViewEncapsulation.None,
            styles: [".breadcrumb-item{cursor:pointer}.breadcrumb-item.active{color:#6c757d!important}.breadcrumb-item.active>.breadcrumb-item{cursor:default}.light-font .breadcrumb-item:before{color:#fff}.light-font .breadcrumb-item.active{color:#cfd8dc!important}.light-font .breadcrumb-item.active>.breadcrumb-item{cursor:default}.dark-font .breadcrumb-item:before{color:#000}.dark-font .breadcrumb-item.active{color:#455a64!important}.dark-font .breadcrumb-item.active>.breadcrumb-item{cursor:default}"]
        }),
        __metadata("design:paramtypes", [ElementRef, Renderer2])
    ], MdbBreadcrumbItemComponent);
    return MdbBreadcrumbItemComponent;
}());
export { MdbBreadcrumbItemComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWRiLWJyZWFkY3J1bWItaXRlbS5jb21wb25lbnQuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL2JyZWFkY3J1bWJzL21kYi1icmVhZGNydW1iLWl0ZW0uY29tcG9uZW50LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLFVBQVUsRUFBRSxLQUFLLEVBQUUsTUFBTSxFQUFFLFNBQVMsRUFBRSxpQkFBaUIsRUFBRSxNQUFNLGVBQWUsQ0FBQztBQVFuRztJQUdFLG9DQUFvQixHQUFlLEVBQVUsU0FBb0I7UUFBN0MsUUFBRyxHQUFILEdBQUcsQ0FBWTtRQUFVLGNBQVMsR0FBVCxTQUFTLENBQVc7SUFBRyxDQUFDO0lBRXJFLDZDQUFRLEdBQVI7UUFDRSxJQUFJLENBQUMsU0FBUyxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLGFBQWEsRUFBRSxpQkFBaUIsQ0FBQyxDQUFDO0lBQ3JFLENBQUM7O2dCQUp3QixVQUFVO2dCQUFxQixTQUFTOztJQUZ4RDtRQUFSLEtBQUssRUFBRTs7a0VBQW9CO0lBRGpCLDBCQUEwQjtRQU50QyxTQUFTLENBQUM7WUFDVCxRQUFRLEVBQUUscUJBQXFCO1lBQy9CLDRIQUFtRDtZQUVuRCxhQUFhLEVBQUUsaUJBQWlCLENBQUMsSUFBSTs7U0FDdEMsQ0FBQzt5Q0FJeUIsVUFBVSxFQUFxQixTQUFTO09BSHRELDBCQUEwQixDQVF0QztJQUFELGlDQUFDO0NBQUEsQUFSRCxJQVFDO1NBUlksMEJBQTBCIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgQ29tcG9uZW50LCBFbGVtZW50UmVmLCBJbnB1dCwgT25Jbml0LCBSZW5kZXJlcjIsIFZpZXdFbmNhcHN1bGF0aW9uIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbkBDb21wb25lbnQoe1xuICBzZWxlY3RvcjogJ21kYi1icmVhZGNydW1iLWl0ZW0nLFxuICB0ZW1wbGF0ZVVybDogJy4vbWRiLWJyZWFkY3J1bWItaXRlbS5jb21wb25lbnQuaHRtbCcsXG4gIHN0eWxlVXJsczogWycuL19icmVhZGNydW1icy5zY3NzJ10sXG4gIGVuY2Fwc3VsYXRpb246IFZpZXdFbmNhcHN1bGF0aW9uLk5vbmUsXG59KVxuZXhwb3J0IGNsYXNzIE1kYkJyZWFkY3J1bWJJdGVtQ29tcG9uZW50IGltcGxlbWVudHMgT25Jbml0IHtcbiAgQElucHV0KCkgZm9udFdlaWdodDogc3RyaW5nO1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgX2VsOiBFbGVtZW50UmVmLCBwcml2YXRlIF9yZW5kZXJlcjogUmVuZGVyZXIyKSB7fVxuXG4gIG5nT25Jbml0KCkge1xuICAgIHRoaXMuX3JlbmRlcmVyLmFkZENsYXNzKHRoaXMuX2VsLm5hdGl2ZUVsZW1lbnQsICdicmVhZGNydW1iLWl0ZW0nKTtcbiAgfVxufVxuIl19