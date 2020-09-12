import { __decorate, __metadata } from "tslib";
import { Directive, ElementRef, Input, OnInit, Renderer2 } from '@angular/core';
let FixedButtonCaptionDirective = class FixedButtonCaptionDirective {
    constructor(renderer, el) {
        this.renderer = renderer;
        this.el = el;
    }
    ngOnInit() {
        this.createCaptionElement();
    }
    createCaptionElement() {
        const paragraph = this.renderer.createElement('p');
        const text = this.renderer.createText(this.caption);
        this.renderer.appendChild(paragraph, text);
        this.renderer.appendChild(this.el.nativeElement, paragraph);
        this.paragraphEl = paragraph;
    }
    showCaption() {
        this.renderer.addClass(this.paragraphEl, 'fixed-button-caption');
        this.renderer.setStyle(this.paragraphEl, 'position', 'absolute');
        this.renderer.setStyle(this.paragraphEl, 'right', `60px`);
        this.renderer.setStyle(this.paragraphEl, 'top', '10px');
        this.renderer.setStyle(this.el.nativeElement, 'overflow', 'visible');
    }
};
FixedButtonCaptionDirective.ctorParameters = () => [
    { type: Renderer2 },
    { type: ElementRef }
];
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
export { FixedButtonCaptionDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZml4ZWQtY2FwdGlvbi5kaXJlY3RpdmUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL2J1dHRvbnMvZml4ZWQtY2FwdGlvbi5kaXJlY3RpdmUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxTQUFTLEVBQUUsVUFBVSxFQUFFLEtBQUssRUFBRSxNQUFNLEVBQUUsU0FBUyxFQUFFLE1BQU0sZUFBZSxDQUFDO0FBR2hGLElBQWEsMkJBQTJCLEdBQXhDLE1BQWEsMkJBQTJCO0lBS3RDLFlBQW9CLFFBQW1CLEVBQVUsRUFBYztRQUEzQyxhQUFRLEdBQVIsUUFBUSxDQUFXO1FBQVUsT0FBRSxHQUFGLEVBQUUsQ0FBWTtJQUFHLENBQUM7SUFFbkUsUUFBUTtRQUNOLElBQUksQ0FBQyxvQkFBb0IsRUFBRSxDQUFDO0lBQzlCLENBQUM7SUFFRCxvQkFBb0I7UUFDbEIsTUFBTSxTQUFTLEdBQUcsSUFBSSxDQUFDLFFBQVEsQ0FBQyxhQUFhLENBQUMsR0FBRyxDQUFDLENBQUM7UUFDbkQsTUFBTSxJQUFJLEdBQUcsSUFBSSxDQUFDLFFBQVEsQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQ3BELElBQUksQ0FBQyxRQUFRLENBQUMsV0FBVyxDQUFDLFNBQVMsRUFBRSxJQUFJLENBQUMsQ0FBQztRQUMzQyxJQUFJLENBQUMsUUFBUSxDQUFDLFdBQVcsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLGFBQWEsRUFBRSxTQUFTLENBQUMsQ0FBQztRQUM1RCxJQUFJLENBQUMsV0FBVyxHQUFHLFNBQVMsQ0FBQztJQUMvQixDQUFDO0lBRUQsV0FBVztRQUNULElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxXQUFXLEVBQUUsc0JBQXNCLENBQUMsQ0FBQztRQUNqRSxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsV0FBVyxFQUFFLFVBQVUsRUFBRSxVQUFVLENBQUMsQ0FBQztRQUNqRSxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsV0FBVyxFQUFFLE9BQU8sRUFBRSxNQUFNLENBQUMsQ0FBQztRQUMxRCxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsV0FBVyxFQUFFLEtBQUssRUFBRSxNQUFNLENBQUMsQ0FBQztRQUN4RCxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLGFBQWEsRUFBRSxVQUFVLEVBQUUsU0FBUyxDQUFDLENBQUM7SUFDdkUsQ0FBQztDQUNGLENBQUE7O1lBckIrQixTQUFTO1lBQWMsVUFBVTs7QUFKckM7SUFBekIsS0FBSyxDQUFDLGlCQUFpQixDQUFDOzs0REFBaUI7QUFFakI7SUFBeEIsS0FBSyxDQUFDLGdCQUFnQixDQUFDOzs0RUFBOEI7QUFIM0MsMkJBQTJCO0lBRHZDLFNBQVMsQ0FBQyxFQUFFLFFBQVEsRUFBRSxtQkFBbUIsRUFBRSxDQUFDO3FDQU1iLFNBQVMsRUFBYyxVQUFVO0dBTHBELDJCQUEyQixDQTBCdkM7U0ExQlksMkJBQTJCIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgRGlyZWN0aXZlLCBFbGVtZW50UmVmLCBJbnB1dCwgT25Jbml0LCBSZW5kZXJlcjIgfSBmcm9tICdAYW5ndWxhci9jb3JlJztcblxuQERpcmVjdGl2ZSh7IHNlbGVjdG9yOiAnW21kYkZpeGVkQ2FwdGlvbl0nIH0pXG5leHBvcnQgY2xhc3MgRml4ZWRCdXR0b25DYXB0aW9uRGlyZWN0aXZlIGltcGxlbWVudHMgT25Jbml0IHtcbiAgQElucHV0KCdtZGJGaXhlZENhcHRpb24nKSBjYXB0aW9uOiBzdHJpbmc7XG4gIC8vIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTpuby1pbnB1dC1yZW5hbWVcbiAgQElucHV0KCdjb2xsYXBzZUJ1dHRvbicpIGNvbGxhcHNlQnV0dG9uQWN0aXZhdG9yOiBhbnk7XG4gIHByaXZhdGUgcGFyYWdyYXBoRWw6IGFueTtcbiAgY29uc3RydWN0b3IocHJpdmF0ZSByZW5kZXJlcjogUmVuZGVyZXIyLCBwcml2YXRlIGVsOiBFbGVtZW50UmVmKSB7fVxuXG4gIG5nT25Jbml0KCkge1xuICAgIHRoaXMuY3JlYXRlQ2FwdGlvbkVsZW1lbnQoKTtcbiAgfVxuXG4gIGNyZWF0ZUNhcHRpb25FbGVtZW50KCkge1xuICAgIGNvbnN0IHBhcmFncmFwaCA9IHRoaXMucmVuZGVyZXIuY3JlYXRlRWxlbWVudCgncCcpO1xuICAgIGNvbnN0IHRleHQgPSB0aGlzLnJlbmRlcmVyLmNyZWF0ZVRleHQodGhpcy5jYXB0aW9uKTtcbiAgICB0aGlzLnJlbmRlcmVyLmFwcGVuZENoaWxkKHBhcmFncmFwaCwgdGV4dCk7XG4gICAgdGhpcy5yZW5kZXJlci5hcHBlbmRDaGlsZCh0aGlzLmVsLm5hdGl2ZUVsZW1lbnQsIHBhcmFncmFwaCk7XG4gICAgdGhpcy5wYXJhZ3JhcGhFbCA9IHBhcmFncmFwaDtcbiAgfVxuXG4gIHNob3dDYXB0aW9uKCkge1xuICAgIHRoaXMucmVuZGVyZXIuYWRkQ2xhc3ModGhpcy5wYXJhZ3JhcGhFbCwgJ2ZpeGVkLWJ1dHRvbi1jYXB0aW9uJyk7XG4gICAgdGhpcy5yZW5kZXJlci5zZXRTdHlsZSh0aGlzLnBhcmFncmFwaEVsLCAncG9zaXRpb24nLCAnYWJzb2x1dGUnKTtcbiAgICB0aGlzLnJlbmRlcmVyLnNldFN0eWxlKHRoaXMucGFyYWdyYXBoRWwsICdyaWdodCcsIGA2MHB4YCk7XG4gICAgdGhpcy5yZW5kZXJlci5zZXRTdHlsZSh0aGlzLnBhcmFncmFwaEVsLCAndG9wJywgJzEwcHgnKTtcbiAgICB0aGlzLnJlbmRlcmVyLnNldFN0eWxlKHRoaXMuZWwubmF0aXZlRWxlbWVudCwgJ292ZXJmbG93JywgJ3Zpc2libGUnKTtcbiAgfVxufVxuIl19