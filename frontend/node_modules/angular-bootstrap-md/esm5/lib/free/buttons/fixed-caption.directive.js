import { __decorate, __metadata } from "tslib";
import { Directive, ElementRef, Input, OnInit, Renderer2 } from '@angular/core';
var FixedButtonCaptionDirective = /** @class */ (function () {
    function FixedButtonCaptionDirective(renderer, el) {
        this.renderer = renderer;
        this.el = el;
    }
    FixedButtonCaptionDirective.prototype.ngOnInit = function () {
        this.createCaptionElement();
    };
    FixedButtonCaptionDirective.prototype.createCaptionElement = function () {
        var paragraph = this.renderer.createElement('p');
        var text = this.renderer.createText(this.caption);
        this.renderer.appendChild(paragraph, text);
        this.renderer.appendChild(this.el.nativeElement, paragraph);
        this.paragraphEl = paragraph;
    };
    FixedButtonCaptionDirective.prototype.showCaption = function () {
        this.renderer.addClass(this.paragraphEl, 'fixed-button-caption');
        this.renderer.setStyle(this.paragraphEl, 'position', 'absolute');
        this.renderer.setStyle(this.paragraphEl, 'right', "60px");
        this.renderer.setStyle(this.paragraphEl, 'top', '10px');
        this.renderer.setStyle(this.el.nativeElement, 'overflow', 'visible');
    };
    FixedButtonCaptionDirective.ctorParameters = function () { return [
        { type: Renderer2 },
        { type: ElementRef }
    ]; };
    __decorate([
        Input('mdbFixedCaption'),
        __metadata("design:type", String)
    ], FixedButtonCaptionDirective.prototype, "caption", void 0);
    __decorate([
        Input('collapseButton'),
        __metadata("design:type", Object)
    ], FixedButtonCaptionDirective.prototype, "collapseButtonActivator", void 0);
    FixedButtonCaptionDirective = __decorate([
        Directive({ selector: '[mdbFixedCaption]' }),
        __metadata("design:paramtypes", [Renderer2, ElementRef])
    ], FixedButtonCaptionDirective);
    return FixedButtonCaptionDirective;
}());
export { FixedButtonCaptionDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZml4ZWQtY2FwdGlvbi5kaXJlY3RpdmUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL2J1dHRvbnMvZml4ZWQtY2FwdGlvbi5kaXJlY3RpdmUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxTQUFTLEVBQUUsVUFBVSxFQUFFLEtBQUssRUFBRSxNQUFNLEVBQUUsU0FBUyxFQUFFLE1BQU0sZUFBZSxDQUFDO0FBR2hGO0lBS0UscUNBQW9CLFFBQW1CLEVBQVUsRUFBYztRQUEzQyxhQUFRLEdBQVIsUUFBUSxDQUFXO1FBQVUsT0FBRSxHQUFGLEVBQUUsQ0FBWTtJQUFHLENBQUM7SUFFbkUsOENBQVEsR0FBUjtRQUNFLElBQUksQ0FBQyxvQkFBb0IsRUFBRSxDQUFDO0lBQzlCLENBQUM7SUFFRCwwREFBb0IsR0FBcEI7UUFDRSxJQUFNLFNBQVMsR0FBRyxJQUFJLENBQUMsUUFBUSxDQUFDLGFBQWEsQ0FBQyxHQUFHLENBQUMsQ0FBQztRQUNuRCxJQUFNLElBQUksR0FBRyxJQUFJLENBQUMsUUFBUSxDQUFDLFVBQVUsQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDcEQsSUFBSSxDQUFDLFFBQVEsQ0FBQyxXQUFXLENBQUMsU0FBUyxFQUFFLElBQUksQ0FBQyxDQUFDO1FBQzNDLElBQUksQ0FBQyxRQUFRLENBQUMsV0FBVyxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsYUFBYSxFQUFFLFNBQVMsQ0FBQyxDQUFDO1FBQzVELElBQUksQ0FBQyxXQUFXLEdBQUcsU0FBUyxDQUFDO0lBQy9CLENBQUM7SUFFRCxpREFBVyxHQUFYO1FBQ0UsSUFBSSxDQUFDLFFBQVEsQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLFdBQVcsRUFBRSxzQkFBc0IsQ0FBQyxDQUFDO1FBQ2pFLElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxXQUFXLEVBQUUsVUFBVSxFQUFFLFVBQVUsQ0FBQyxDQUFDO1FBQ2pFLElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxXQUFXLEVBQUUsT0FBTyxFQUFFLE1BQU0sQ0FBQyxDQUFDO1FBQzFELElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxXQUFXLEVBQUUsS0FBSyxFQUFFLE1BQU0sQ0FBQyxDQUFDO1FBQ3hELElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsYUFBYSxFQUFFLFVBQVUsRUFBRSxTQUFTLENBQUMsQ0FBQztJQUN2RSxDQUFDOztnQkFwQjZCLFNBQVM7Z0JBQWMsVUFBVTs7SUFKckM7UUFBekIsS0FBSyxDQUFDLGlCQUFpQixDQUFDOztnRUFBaUI7SUFFakI7UUFBeEIsS0FBSyxDQUFDLGdCQUFnQixDQUFDOztnRkFBOEI7SUFIM0MsMkJBQTJCO1FBRHZDLFNBQVMsQ0FBQyxFQUFFLFFBQVEsRUFBRSxtQkFBbUIsRUFBRSxDQUFDO3lDQU1iLFNBQVMsRUFBYyxVQUFVO09BTHBELDJCQUEyQixDQTBCdkM7SUFBRCxrQ0FBQztDQUFBLEFBMUJELElBMEJDO1NBMUJZLDJCQUEyQiIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IERpcmVjdGl2ZSwgRWxlbWVudFJlZiwgSW5wdXQsIE9uSW5pdCwgUmVuZGVyZXIyIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbkBEaXJlY3RpdmUoeyBzZWxlY3RvcjogJ1ttZGJGaXhlZENhcHRpb25dJyB9KVxuZXhwb3J0IGNsYXNzIEZpeGVkQnV0dG9uQ2FwdGlvbkRpcmVjdGl2ZSBpbXBsZW1lbnRzIE9uSW5pdCB7XG4gIEBJbnB1dCgnbWRiRml4ZWRDYXB0aW9uJykgY2FwdGlvbjogc3RyaW5nO1xuICAvLyB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6bm8taW5wdXQtcmVuYW1lXG4gIEBJbnB1dCgnY29sbGFwc2VCdXR0b24nKSBjb2xsYXBzZUJ1dHRvbkFjdGl2YXRvcjogYW55O1xuICBwcml2YXRlIHBhcmFncmFwaEVsOiBhbnk7XG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgcmVuZGVyZXI6IFJlbmRlcmVyMiwgcHJpdmF0ZSBlbDogRWxlbWVudFJlZikge31cblxuICBuZ09uSW5pdCgpIHtcbiAgICB0aGlzLmNyZWF0ZUNhcHRpb25FbGVtZW50KCk7XG4gIH1cblxuICBjcmVhdGVDYXB0aW9uRWxlbWVudCgpIHtcbiAgICBjb25zdCBwYXJhZ3JhcGggPSB0aGlzLnJlbmRlcmVyLmNyZWF0ZUVsZW1lbnQoJ3AnKTtcbiAgICBjb25zdCB0ZXh0ID0gdGhpcy5yZW5kZXJlci5jcmVhdGVUZXh0KHRoaXMuY2FwdGlvbik7XG4gICAgdGhpcy5yZW5kZXJlci5hcHBlbmRDaGlsZChwYXJhZ3JhcGgsIHRleHQpO1xuICAgIHRoaXMucmVuZGVyZXIuYXBwZW5kQ2hpbGQodGhpcy5lbC5uYXRpdmVFbGVtZW50LCBwYXJhZ3JhcGgpO1xuICAgIHRoaXMucGFyYWdyYXBoRWwgPSBwYXJhZ3JhcGg7XG4gIH1cblxuICBzaG93Q2FwdGlvbigpIHtcbiAgICB0aGlzLnJlbmRlcmVyLmFkZENsYXNzKHRoaXMucGFyYWdyYXBoRWwsICdmaXhlZC1idXR0b24tY2FwdGlvbicpO1xuICAgIHRoaXMucmVuZGVyZXIuc2V0U3R5bGUodGhpcy5wYXJhZ3JhcGhFbCwgJ3Bvc2l0aW9uJywgJ2Fic29sdXRlJyk7XG4gICAgdGhpcy5yZW5kZXJlci5zZXRTdHlsZSh0aGlzLnBhcmFncmFwaEVsLCAncmlnaHQnLCBgNjBweGApO1xuICAgIHRoaXMucmVuZGVyZXIuc2V0U3R5bGUodGhpcy5wYXJhZ3JhcGhFbCwgJ3RvcCcsICcxMHB4Jyk7XG4gICAgdGhpcy5yZW5kZXJlci5zZXRTdHlsZSh0aGlzLmVsLm5hdGl2ZUVsZW1lbnQsICdvdmVyZmxvdycsICd2aXNpYmxlJyk7XG4gIH1cbn1cbiJdfQ==