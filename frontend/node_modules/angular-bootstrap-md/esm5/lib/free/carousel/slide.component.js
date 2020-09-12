import { __decorate, __metadata } from "tslib";
import { Component, HostBinding, Input, ElementRef } from '@angular/core';
var SlideComponent = /** @class */ (function () {
    function SlideComponent(el) {
        this.animated = false;
        this.directionNext = false;
        this.directionLeft = false;
        this.directionPrev = false;
        this.directionRight = false;
        /** Wraps element by appropriate CSS classes */
        this.el = null;
        this.el = el;
    }
    SlideComponent.ctorParameters = function () { return [
        { type: ElementRef }
    ]; };
    __decorate([
        HostBinding('class.active'),
        Input(),
        __metadata("design:type", Boolean)
    ], SlideComponent.prototype, "active", void 0);
    __decorate([
        HostBinding('class.animated'),
        __metadata("design:type", Object)
    ], SlideComponent.prototype, "animated", void 0);
    __decorate([
        HostBinding('class.carousel-item-next'),
        __metadata("design:type", Object)
    ], SlideComponent.prototype, "directionNext", void 0);
    __decorate([
        HostBinding('class.carousel-item-left'),
        __metadata("design:type", Object)
    ], SlideComponent.prototype, "directionLeft", void 0);
    __decorate([
        HostBinding('class.carousel-item-prev'),
        __metadata("design:type", Object)
    ], SlideComponent.prototype, "directionPrev", void 0);
    __decorate([
        HostBinding('class.carousel-item-right'),
        __metadata("design:type", Object)
    ], SlideComponent.prototype, "directionRight", void 0);
    __decorate([
        HostBinding('class.carousel-item'),
        __metadata("design:type", Object)
    ], SlideComponent.prototype, "el", void 0);
    SlideComponent = __decorate([
        Component({
            selector: 'mdb-slide, mdb-carousel-item',
            template: "\n    <ng-content></ng-content>\n  "
        }),
        __metadata("design:paramtypes", [ElementRef])
    ], SlideComponent);
    return SlideComponent;
}());
export { SlideComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic2xpZGUuY29tcG9uZW50LmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9jYXJvdXNlbC9zbGlkZS5jb21wb25lbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxTQUFTLEVBQUUsV0FBVyxFQUFFLEtBQUssRUFBRSxVQUFVLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFRMUU7SUFnQkUsd0JBQW1CLEVBQWM7UUFYRixhQUFRLEdBQUcsS0FBSyxDQUFDO1FBQ1Asa0JBQWEsR0FBRyxLQUFLLENBQUM7UUFDdEIsa0JBQWEsR0FBRyxLQUFLLENBQUM7UUFDdEIsa0JBQWEsR0FBRyxLQUFLLENBQUM7UUFDckIsbUJBQWMsR0FBRyxLQUFLLENBQUM7UUFDakUsK0NBQStDO1FBSXhDLE9BQUUsR0FBcUIsSUFBSSxDQUFDO1FBR2pDLElBQUksQ0FBQyxFQUFFLEdBQUcsRUFBRSxDQUFDO0lBQ2YsQ0FBQzs7Z0JBRnNCLFVBQVU7O0lBWmpDO1FBRkMsV0FBVyxDQUFDLGNBQWMsQ0FBQztRQUMzQixLQUFLLEVBQUU7O2tEQUNlO0lBQ1E7UUFBOUIsV0FBVyxDQUFDLGdCQUFnQixDQUFDOztvREFBa0I7SUFDUDtRQUF4QyxXQUFXLENBQUMsMEJBQTBCLENBQUM7O3lEQUF1QjtJQUN0QjtRQUF4QyxXQUFXLENBQUMsMEJBQTBCLENBQUM7O3lEQUF1QjtJQUN0QjtRQUF4QyxXQUFXLENBQUMsMEJBQTBCLENBQUM7O3lEQUF1QjtJQUNyQjtRQUF6QyxXQUFXLENBQUMsMkJBQTJCLENBQUM7OzBEQUF3QjtJQUtqRTtRQUhDLFdBQVcsQ0FBQyxxQkFBcUIsQ0FBQzs7OENBR0E7SUFkeEIsY0FBYztRQU4xQixTQUFTLENBQUM7WUFDVCxRQUFRLEVBQUUsOEJBQThCO1lBQ3hDLFFBQVEsRUFBRSxxQ0FFVDtTQUNGLENBQUM7eUNBaUJ1QixVQUFVO09BaEJ0QixjQUFjLENBbUIxQjtJQUFELHFCQUFDO0NBQUEsQUFuQkQsSUFtQkM7U0FuQlksY0FBYyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IENvbXBvbmVudCwgSG9zdEJpbmRpbmcsIElucHV0LCBFbGVtZW50UmVmIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbkBDb21wb25lbnQoe1xuICBzZWxlY3RvcjogJ21kYi1zbGlkZSwgbWRiLWNhcm91c2VsLWl0ZW0nLFxuICB0ZW1wbGF0ZTogYFxuICAgIDxuZy1jb250ZW50PjwvbmctY29udGVudD5cbiAgYCxcbn0pXG5leHBvcnQgY2xhc3MgU2xpZGVDb21wb25lbnQge1xuICAvKiogSXMgY3VycmVudCBzbGlkZSBhY3RpdmUgKi9cbiAgQEhvc3RCaW5kaW5nKCdjbGFzcy5hY3RpdmUnKVxuICBASW5wdXQoKVxuICBwdWJsaWMgYWN0aXZlOiBib29sZWFuO1xuICBASG9zdEJpbmRpbmcoJ2NsYXNzLmFuaW1hdGVkJykgYW5pbWF0ZWQgPSBmYWxzZTtcbiAgQEhvc3RCaW5kaW5nKCdjbGFzcy5jYXJvdXNlbC1pdGVtLW5leHQnKSBkaXJlY3Rpb25OZXh0ID0gZmFsc2U7XG4gIEBIb3N0QmluZGluZygnY2xhc3MuY2Fyb3VzZWwtaXRlbS1sZWZ0JykgZGlyZWN0aW9uTGVmdCA9IGZhbHNlO1xuICBASG9zdEJpbmRpbmcoJ2NsYXNzLmNhcm91c2VsLWl0ZW0tcHJldicpIGRpcmVjdGlvblByZXYgPSBmYWxzZTtcbiAgQEhvc3RCaW5kaW5nKCdjbGFzcy5jYXJvdXNlbC1pdGVtLXJpZ2h0JykgZGlyZWN0aW9uUmlnaHQgPSBmYWxzZTtcbiAgLyoqIFdyYXBzIGVsZW1lbnQgYnkgYXBwcm9wcmlhdGUgQ1NTIGNsYXNzZXMgKi9cbiAgQEhvc3RCaW5kaW5nKCdjbGFzcy5jYXJvdXNlbC1pdGVtJylcblxuICAvKiogTGluayB0byBQYXJlbnQoY29udGFpbmVyLWNvbGxlY3Rpb24pIGNvbXBvbmVudCAqL1xuICBwdWJsaWMgZWw6IEVsZW1lbnRSZWYgfCBhbnkgPSBudWxsO1xuXG4gIHB1YmxpYyBjb25zdHJ1Y3RvcihlbDogRWxlbWVudFJlZikge1xuICAgIHRoaXMuZWwgPSBlbDtcbiAgfVxufVxuIl19