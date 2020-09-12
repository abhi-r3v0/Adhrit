import { __decorate, __metadata } from "tslib";
import { Component, Input, ElementRef, OnInit, Renderer2, ChangeDetectionStrategy, } from '@angular/core';
import { Utils } from '../utils';
var MdbIconComponent = /** @class */ (function () {
    function MdbIconComponent(_el, _renderer) {
        this._el = _el;
        this._renderer = _renderer;
        this.fab = false;
        this.far = false;
        this.fal = false;
        this.fad = false;
        this.fas = true;
        this.sizeClass = '';
        this.utils = new Utils();
    }
    MdbIconComponent.prototype.ngOnInit = function () {
        var _this = this;
        if (this.size) {
            this.sizeClass = "fa-" + this.size;
        }
        var classList = this._el.nativeElement.classList;
        this.fab = classList.contains('fab');
        this.far = classList.contains('far');
        this.fas = classList.contains('fas');
        this.fal = classList.contains('fal');
        this.fad = classList.contains('fad');
        var formWrapper = this.utils.getClosestEl(this._el.nativeElement, '.md-form') ||
            this.utils.getClosestEl(this._el.nativeElement, '.md-outline');
        if (formWrapper) {
            formWrapper.childNodes.forEach(function (el) {
                if (el.tagName === 'INPUT' || 'TEXTAREA') {
                    _this._renderer.listen(el, 'focus', function () {
                        _this._renderer.addClass(_this._el.nativeElement, 'active');
                    });
                    _this._renderer.listen(el, 'blur', function () {
                        _this._renderer.removeClass(_this._el.nativeElement, 'active');
                    });
                }
            });
        }
    };
    MdbIconComponent.ctorParameters = function () { return [
        { type: ElementRef },
        { type: Renderer2 }
    ]; };
    __decorate([
        Input(),
        __metadata("design:type", String)
    ], MdbIconComponent.prototype, "icon", void 0);
    __decorate([
        Input(),
        __metadata("design:type", String)
    ], MdbIconComponent.prototype, "size", void 0);
    __decorate([
        Input(),
        __metadata("design:type", String)
    ], MdbIconComponent.prototype, "class", void 0);
    __decorate([
        Input(),
        __metadata("design:type", String)
    ], MdbIconComponent.prototype, "classInside", void 0);
    MdbIconComponent = __decorate([
        Component({
            selector: 'mdb-icon',
            template: "<i\n  [ngClass]=\"{ fas: fas, far: far, fab: fab, fal: fal, fad: fad }\"\n  class=\"fa-{{ icon }} {{ class }} {{ classInside }} {{ sizeClass }}\"\n></i>\n",
            changeDetection: ChangeDetectionStrategy.OnPush
        }),
        __metadata("design:paramtypes", [ElementRef, Renderer2])
    ], MdbIconComponent);
    return MdbIconComponent;
}());
export { MdbIconComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaWNvbi5jb21wb25lbnQuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL2ljb25zL2ljb24uY29tcG9uZW50LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQ0wsU0FBUyxFQUNULEtBQUssRUFDTCxVQUFVLEVBQ1YsTUFBTSxFQUNOLFNBQVMsRUFDVCx1QkFBdUIsR0FDeEIsTUFBTSxlQUFlLENBQUM7QUFDdkIsT0FBTyxFQUFFLEtBQUssRUFBRSxNQUFNLFVBQVUsQ0FBQztBQU9qQztJQWdCRSwwQkFBb0IsR0FBZSxFQUFVLFNBQW9CO1FBQTdDLFFBQUcsR0FBSCxHQUFHLENBQVk7UUFBVSxjQUFTLEdBQVQsU0FBUyxDQUFXO1FBVmpFLFFBQUcsR0FBRyxLQUFLLENBQUM7UUFDWixRQUFHLEdBQUcsS0FBSyxDQUFDO1FBQ1osUUFBRyxHQUFHLEtBQUssQ0FBQztRQUNaLFFBQUcsR0FBRyxLQUFLLENBQUM7UUFDWixRQUFHLEdBQUcsSUFBSSxDQUFDO1FBRVgsY0FBUyxHQUFHLEVBQUUsQ0FBQztRQUVmLFVBQUssR0FBVSxJQUFJLEtBQUssRUFBRSxDQUFDO0lBRXlDLENBQUM7SUFFckUsbUNBQVEsR0FBUjtRQUFBLGlCQTRCQztRQTNCQyxJQUFJLElBQUksQ0FBQyxJQUFJLEVBQUU7WUFDYixJQUFJLENBQUMsU0FBUyxHQUFHLFFBQU0sSUFBSSxDQUFDLElBQU0sQ0FBQztTQUNwQztRQUVELElBQU0sU0FBUyxHQUFHLElBQUksQ0FBQyxHQUFHLENBQUMsYUFBYSxDQUFDLFNBQVMsQ0FBQztRQUNuRCxJQUFJLENBQUMsR0FBRyxHQUFHLFNBQVMsQ0FBQyxRQUFRLENBQUMsS0FBSyxDQUFDLENBQUM7UUFDckMsSUFBSSxDQUFDLEdBQUcsR0FBRyxTQUFTLENBQUMsUUFBUSxDQUFDLEtBQUssQ0FBQyxDQUFDO1FBQ3JDLElBQUksQ0FBQyxHQUFHLEdBQUcsU0FBUyxDQUFDLFFBQVEsQ0FBQyxLQUFLLENBQUMsQ0FBQztRQUNyQyxJQUFJLENBQUMsR0FBRyxHQUFHLFNBQVMsQ0FBQyxRQUFRLENBQUMsS0FBSyxDQUFDLENBQUM7UUFDckMsSUFBSSxDQUFDLEdBQUcsR0FBRyxTQUFTLENBQUMsUUFBUSxDQUFDLEtBQUssQ0FBQyxDQUFDO1FBRXJDLElBQU0sV0FBVyxHQUNmLElBQUksQ0FBQyxLQUFLLENBQUMsWUFBWSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsYUFBYSxFQUFFLFVBQVUsQ0FBQztZQUMzRCxJQUFJLENBQUMsS0FBSyxDQUFDLFlBQVksQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLGFBQWEsRUFBRSxhQUFhLENBQUMsQ0FBQztRQUVqRSxJQUFJLFdBQVcsRUFBRTtZQUNmLFdBQVcsQ0FBQyxVQUFVLENBQUMsT0FBTyxDQUFDLFVBQUMsRUFBTztnQkFDckMsSUFBSSxFQUFFLENBQUMsT0FBTyxLQUFLLE9BQU8sSUFBSSxVQUFVLEVBQUU7b0JBQ3hDLEtBQUksQ0FBQyxTQUFTLENBQUMsTUFBTSxDQUFDLEVBQUUsRUFBRSxPQUFPLEVBQUU7d0JBQ2pDLEtBQUksQ0FBQyxTQUFTLENBQUMsUUFBUSxDQUFDLEtBQUksQ0FBQyxHQUFHLENBQUMsYUFBYSxFQUFFLFFBQVEsQ0FBQyxDQUFDO29CQUM1RCxDQUFDLENBQUMsQ0FBQztvQkFDSCxLQUFJLENBQUMsU0FBUyxDQUFDLE1BQU0sQ0FBQyxFQUFFLEVBQUUsTUFBTSxFQUFFO3dCQUNoQyxLQUFJLENBQUMsU0FBUyxDQUFDLFdBQVcsQ0FBQyxLQUFJLENBQUMsR0FBRyxDQUFDLGFBQWEsRUFBRSxRQUFRLENBQUMsQ0FBQztvQkFDL0QsQ0FBQyxDQUFDLENBQUM7aUJBQ0o7WUFDSCxDQUFDLENBQUMsQ0FBQztTQUNKO0lBQ0gsQ0FBQzs7Z0JBOUJ3QixVQUFVO2dCQUFxQixTQUFTOztJQWZ4RDtRQUFSLEtBQUssRUFBRTs7a0RBQWM7SUFDYjtRQUFSLEtBQUssRUFBRTs7a0RBQWM7SUFDYjtRQUFSLEtBQUssRUFBRTs7bURBQWU7SUFDZDtRQUFSLEtBQUssRUFBRTs7eURBQXFCO0lBSmxCLGdCQUFnQjtRQUw1QixTQUFTLENBQUM7WUFDVCxRQUFRLEVBQUUsVUFBVTtZQUNwQixzS0FBb0M7WUFDcEMsZUFBZSxFQUFFLHVCQUF1QixDQUFDLE1BQU07U0FDaEQsQ0FBQzt5Q0FpQnlCLFVBQVUsRUFBcUIsU0FBUztPQWhCdEQsZ0JBQWdCLENBK0M1QjtJQUFELHVCQUFDO0NBQUEsQUEvQ0QsSUErQ0M7U0EvQ1ksZ0JBQWdCIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtcbiAgQ29tcG9uZW50LFxuICBJbnB1dCxcbiAgRWxlbWVudFJlZixcbiAgT25Jbml0LFxuICBSZW5kZXJlcjIsXG4gIENoYW5nZURldGVjdGlvblN0cmF0ZWd5LFxufSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7IFV0aWxzIH0gZnJvbSAnLi4vdXRpbHMnO1xuXG5AQ29tcG9uZW50KHtcbiAgc2VsZWN0b3I6ICdtZGItaWNvbicsXG4gIHRlbXBsYXRlVXJsOiAnLi9pY29uLmNvbXBvbmVudC5odG1sJyxcbiAgY2hhbmdlRGV0ZWN0aW9uOiBDaGFuZ2VEZXRlY3Rpb25TdHJhdGVneS5PblB1c2gsXG59KVxuZXhwb3J0IGNsYXNzIE1kYkljb25Db21wb25lbnQgaW1wbGVtZW50cyBPbkluaXQge1xuICBASW5wdXQoKSBpY29uOiBzdHJpbmc7XG4gIEBJbnB1dCgpIHNpemU6IHN0cmluZztcbiAgQElucHV0KCkgY2xhc3M6IHN0cmluZztcbiAgQElucHV0KCkgY2xhc3NJbnNpZGU6IHN0cmluZztcblxuICBmYWIgPSBmYWxzZTtcbiAgZmFyID0gZmFsc2U7XG4gIGZhbCA9IGZhbHNlO1xuICBmYWQgPSBmYWxzZTtcbiAgZmFzID0gdHJ1ZTtcblxuICBzaXplQ2xhc3MgPSAnJztcblxuICB1dGlsczogVXRpbHMgPSBuZXcgVXRpbHMoKTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9lbDogRWxlbWVudFJlZiwgcHJpdmF0ZSBfcmVuZGVyZXI6IFJlbmRlcmVyMikge31cblxuICBuZ09uSW5pdCgpIHtcbiAgICBpZiAodGhpcy5zaXplKSB7XG4gICAgICB0aGlzLnNpemVDbGFzcyA9IGBmYS0ke3RoaXMuc2l6ZX1gO1xuICAgIH1cblxuICAgIGNvbnN0IGNsYXNzTGlzdCA9IHRoaXMuX2VsLm5hdGl2ZUVsZW1lbnQuY2xhc3NMaXN0O1xuICAgIHRoaXMuZmFiID0gY2xhc3NMaXN0LmNvbnRhaW5zKCdmYWInKTtcbiAgICB0aGlzLmZhciA9IGNsYXNzTGlzdC5jb250YWlucygnZmFyJyk7XG4gICAgdGhpcy5mYXMgPSBjbGFzc0xpc3QuY29udGFpbnMoJ2ZhcycpO1xuICAgIHRoaXMuZmFsID0gY2xhc3NMaXN0LmNvbnRhaW5zKCdmYWwnKTtcbiAgICB0aGlzLmZhZCA9IGNsYXNzTGlzdC5jb250YWlucygnZmFkJyk7XG5cbiAgICBjb25zdCBmb3JtV3JhcHBlciA9XG4gICAgICB0aGlzLnV0aWxzLmdldENsb3Nlc3RFbCh0aGlzLl9lbC5uYXRpdmVFbGVtZW50LCAnLm1kLWZvcm0nKSB8fFxuICAgICAgdGhpcy51dGlscy5nZXRDbG9zZXN0RWwodGhpcy5fZWwubmF0aXZlRWxlbWVudCwgJy5tZC1vdXRsaW5lJyk7XG5cbiAgICBpZiAoZm9ybVdyYXBwZXIpIHtcbiAgICAgIGZvcm1XcmFwcGVyLmNoaWxkTm9kZXMuZm9yRWFjaCgoZWw6IGFueSkgPT4ge1xuICAgICAgICBpZiAoZWwudGFnTmFtZSA9PT0gJ0lOUFVUJyB8fCAnVEVYVEFSRUEnKSB7XG4gICAgICAgICAgdGhpcy5fcmVuZGVyZXIubGlzdGVuKGVsLCAnZm9jdXMnLCAoKSA9PiB7XG4gICAgICAgICAgICB0aGlzLl9yZW5kZXJlci5hZGRDbGFzcyh0aGlzLl9lbC5uYXRpdmVFbGVtZW50LCAnYWN0aXZlJyk7XG4gICAgICAgICAgfSk7XG4gICAgICAgICAgdGhpcy5fcmVuZGVyZXIubGlzdGVuKGVsLCAnYmx1cicsICgpID0+IHtcbiAgICAgICAgICAgIHRoaXMuX3JlbmRlcmVyLnJlbW92ZUNsYXNzKHRoaXMuX2VsLm5hdGl2ZUVsZW1lbnQsICdhY3RpdmUnKTtcbiAgICAgICAgICB9KTtcbiAgICAgICAgfVxuICAgICAgfSk7XG4gICAgfVxuICB9XG59XG4iXX0=