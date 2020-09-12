import { __decorate, __metadata } from "tslib";
import { Directive, ElementRef, Renderer2, OnInit, Input } from '@angular/core';
let MdbTableScrollDirective = class MdbTableScrollDirective {
    constructor(renderer, el) {
        this.renderer = renderer;
        this.el = el;
        this.scrollY = false;
        this.maxHeight = null;
        this.scrollX = false;
        this.maxWidth = null;
    }
    wrapTableWithVerticalScrollingWrapper(tableWrapper) {
        this.renderer.setStyle(tableWrapper, 'max-height', this.maxHeight + 'px');
        this.renderer.setStyle(tableWrapper, 'overflow-y', 'auto');
        this.renderer.setStyle(tableWrapper, 'display', 'block');
    }
    wrapTableWithHorizontalScrollingWrapper(tableWrapper) {
        this.renderer.setStyle(tableWrapper, 'max-width', this.maxWidth + 'px');
        this.renderer.setStyle(tableWrapper, 'overflow-x', 'auto');
        this.renderer.setStyle(tableWrapper, 'display', 'block');
    }
    wrapTableWithHorizontalAndVerticalScrollingWrapper(tableWrapper) {
        this.renderer.setStyle(tableWrapper, 'max-height', this.maxHeight + 'px');
        this.renderer.setStyle(tableWrapper, 'max-width', this.maxWidth + 'px');
        this.renderer.setStyle(tableWrapper, 'overflow-x', 'auto');
        this.renderer.setStyle(tableWrapper, 'display', 'block');
    }
    ngOnInit() {
        const parent = this.el.nativeElement.parentNode;
        const tableWrapper = this.renderer.createElement('div');
        if (this.scrollY && this.scrollX && this.maxHeight && this.maxWidth) {
            this.wrapTableWithHorizontalAndVerticalScrollingWrapper(tableWrapper);
        }
        if (this.scrollY && this.maxHeight) {
            this.wrapTableWithVerticalScrollingWrapper(tableWrapper);
        }
        if (this.scrollX && this.maxWidth) {
            this.wrapTableWithHorizontalScrollingWrapper(tableWrapper);
        }
        this.renderer.insertBefore(parent, tableWrapper, this.el.nativeElement);
        this.renderer.removeChild(parent, this.el.nativeElement);
        this.renderer.appendChild(tableWrapper, this.el.nativeElement);
    }
};
MdbTableScrollDirective.ctorParameters = () => [
    { type: Renderer2 },
    { type: ElementRef }
];
__decorate([
    Input(),
    __metadata("design:type", Object)
], MdbTableScrollDirective.prototype, "scrollY", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], MdbTableScrollDirective.prototype, "maxHeight", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], MdbTableScrollDirective.prototype, "scrollX", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], MdbTableScrollDirective.prototype, "maxWidth", void 0);
MdbTableScrollDirective = __decorate([
    Directive({
        selector: '[mdbTableScroll]',
    }),
    __metadata("design:paramtypes", [Renderer2, ElementRef])
], MdbTableScrollDirective);
export { MdbTableScrollDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWRiLXRhYmxlLXNjcm9sbC5kaXJlY3RpdmUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL3RhYmxlcy9kaXJlY3RpdmVzL21kYi10YWJsZS1zY3JvbGwuZGlyZWN0aXZlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLFVBQVUsRUFBRSxTQUFTLEVBQUUsTUFBTSxFQUFFLEtBQUssRUFBRSxNQUFNLGVBQWUsQ0FBQztBQUtoRixJQUFhLHVCQUF1QixHQUFwQyxNQUFhLHVCQUF1QjtJQU9sQyxZQUFvQixRQUFtQixFQUFVLEVBQWM7UUFBM0MsYUFBUSxHQUFSLFFBQVEsQ0FBVztRQUFVLE9BQUUsR0FBRixFQUFFLENBQVk7UUFOdEQsWUFBTyxHQUFHLEtBQUssQ0FBQztRQUNoQixjQUFTLEdBQVEsSUFBSSxDQUFDO1FBRXRCLFlBQU8sR0FBRyxLQUFLLENBQUM7UUFDaEIsYUFBUSxHQUFRLElBQUksQ0FBQztJQUVvQyxDQUFDO0lBRW5FLHFDQUFxQyxDQUFDLFlBQXdCO1FBQzVELElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLFlBQVksRUFBRSxZQUFZLEVBQUUsSUFBSSxDQUFDLFNBQVMsR0FBRyxJQUFJLENBQUMsQ0FBQztRQUMxRSxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxZQUFZLEVBQUUsWUFBWSxFQUFFLE1BQU0sQ0FBQyxDQUFDO1FBQzNELElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLFlBQVksRUFBRSxTQUFTLEVBQUUsT0FBTyxDQUFDLENBQUM7SUFDM0QsQ0FBQztJQUVELHVDQUF1QyxDQUFDLFlBQXdCO1FBQzlELElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLFlBQVksRUFBRSxXQUFXLEVBQUUsSUFBSSxDQUFDLFFBQVEsR0FBRyxJQUFJLENBQUMsQ0FBQztRQUN4RSxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxZQUFZLEVBQUUsWUFBWSxFQUFFLE1BQU0sQ0FBQyxDQUFDO1FBQzNELElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLFlBQVksRUFBRSxTQUFTLEVBQUUsT0FBTyxDQUFDLENBQUM7SUFDM0QsQ0FBQztJQUVELGtEQUFrRCxDQUFDLFlBQXdCO1FBQ3pFLElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLFlBQVksRUFBRSxZQUFZLEVBQUUsSUFBSSxDQUFDLFNBQVMsR0FBRyxJQUFJLENBQUMsQ0FBQztRQUMxRSxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxZQUFZLEVBQUUsV0FBVyxFQUFFLElBQUksQ0FBQyxRQUFRLEdBQUcsSUFBSSxDQUFDLENBQUM7UUFDeEUsSUFBSSxDQUFDLFFBQVEsQ0FBQyxRQUFRLENBQUMsWUFBWSxFQUFFLFlBQVksRUFBRSxNQUFNLENBQUMsQ0FBQztRQUMzRCxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxZQUFZLEVBQUUsU0FBUyxFQUFFLE9BQU8sQ0FBQyxDQUFDO0lBQzNELENBQUM7SUFFRCxRQUFRO1FBQ04sTUFBTSxNQUFNLEdBQUcsSUFBSSxDQUFDLEVBQUUsQ0FBQyxhQUFhLENBQUMsVUFBVSxDQUFDO1FBQ2hELE1BQU0sWUFBWSxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsYUFBYSxDQUFDLEtBQUssQ0FBQyxDQUFDO1FBRXhELElBQUksSUFBSSxDQUFDLE9BQU8sSUFBSSxJQUFJLENBQUMsT0FBTyxJQUFJLElBQUksQ0FBQyxTQUFTLElBQUksSUFBSSxDQUFDLFFBQVEsRUFBRTtZQUNuRSxJQUFJLENBQUMsa0RBQWtELENBQUMsWUFBWSxDQUFDLENBQUM7U0FDdkU7UUFFRCxJQUFJLElBQUksQ0FBQyxPQUFPLElBQUksSUFBSSxDQUFDLFNBQVMsRUFBRTtZQUNsQyxJQUFJLENBQUMscUNBQXFDLENBQUMsWUFBWSxDQUFDLENBQUM7U0FDMUQ7UUFFRCxJQUFJLElBQUksQ0FBQyxPQUFPLElBQUksSUFBSSxDQUFDLFFBQVEsRUFBRTtZQUNqQyxJQUFJLENBQUMsdUNBQXVDLENBQUMsWUFBWSxDQUFDLENBQUM7U0FDNUQ7UUFFRCxJQUFJLENBQUMsUUFBUSxDQUFDLFlBQVksQ0FBQyxNQUFNLEVBQUUsWUFBWSxFQUFFLElBQUksQ0FBQyxFQUFFLENBQUMsYUFBYSxDQUFDLENBQUM7UUFDeEUsSUFBSSxDQUFDLFFBQVEsQ0FBQyxXQUFXLENBQUMsTUFBTSxFQUFFLElBQUksQ0FBQyxFQUFFLENBQUMsYUFBYSxDQUFDLENBQUM7UUFDekQsSUFBSSxDQUFDLFFBQVEsQ0FBQyxXQUFXLENBQUMsWUFBWSxFQUFFLElBQUksQ0FBQyxFQUFFLENBQUMsYUFBYSxDQUFDLENBQUM7SUFDakUsQ0FBQztDQUNGLENBQUE7O1lBekMrQixTQUFTO1lBQWMsVUFBVTs7QUFOdEQ7SUFBUixLQUFLLEVBQUU7O3dEQUFpQjtBQUNoQjtJQUFSLEtBQUssRUFBRTs7MERBQXVCO0FBRXRCO0lBQVIsS0FBSyxFQUFFOzt3REFBaUI7QUFDaEI7SUFBUixLQUFLLEVBQUU7O3lEQUFzQjtBQUxuQix1QkFBdUI7SUFIbkMsU0FBUyxDQUFDO1FBQ1QsUUFBUSxFQUFFLGtCQUFrQjtLQUM3QixDQUFDO3FDQVE4QixTQUFTLEVBQWMsVUFBVTtHQVBwRCx1QkFBdUIsQ0FnRG5DO1NBaERZLHVCQUF1QiIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IERpcmVjdGl2ZSwgRWxlbWVudFJlZiwgUmVuZGVyZXIyLCBPbkluaXQsIElucHV0IH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbkBEaXJlY3RpdmUoe1xuICBzZWxlY3RvcjogJ1ttZGJUYWJsZVNjcm9sbF0nLFxufSlcbmV4cG9ydCBjbGFzcyBNZGJUYWJsZVNjcm9sbERpcmVjdGl2ZSBpbXBsZW1lbnRzIE9uSW5pdCB7XG4gIEBJbnB1dCgpIHNjcm9sbFkgPSBmYWxzZTtcbiAgQElucHV0KCkgbWF4SGVpZ2h0OiBhbnkgPSBudWxsO1xuXG4gIEBJbnB1dCgpIHNjcm9sbFggPSBmYWxzZTtcbiAgQElucHV0KCkgbWF4V2lkdGg6IGFueSA9IG51bGw7XG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSByZW5kZXJlcjogUmVuZGVyZXIyLCBwcml2YXRlIGVsOiBFbGVtZW50UmVmKSB7fVxuXG4gIHdyYXBUYWJsZVdpdGhWZXJ0aWNhbFNjcm9sbGluZ1dyYXBwZXIodGFibGVXcmFwcGVyOiBFbGVtZW50UmVmKSB7XG4gICAgdGhpcy5yZW5kZXJlci5zZXRTdHlsZSh0YWJsZVdyYXBwZXIsICdtYXgtaGVpZ2h0JywgdGhpcy5tYXhIZWlnaHQgKyAncHgnKTtcbiAgICB0aGlzLnJlbmRlcmVyLnNldFN0eWxlKHRhYmxlV3JhcHBlciwgJ292ZXJmbG93LXknLCAnYXV0bycpO1xuICAgIHRoaXMucmVuZGVyZXIuc2V0U3R5bGUodGFibGVXcmFwcGVyLCAnZGlzcGxheScsICdibG9jaycpO1xuICB9XG5cbiAgd3JhcFRhYmxlV2l0aEhvcml6b250YWxTY3JvbGxpbmdXcmFwcGVyKHRhYmxlV3JhcHBlcjogRWxlbWVudFJlZikge1xuICAgIHRoaXMucmVuZGVyZXIuc2V0U3R5bGUodGFibGVXcmFwcGVyLCAnbWF4LXdpZHRoJywgdGhpcy5tYXhXaWR0aCArICdweCcpO1xuICAgIHRoaXMucmVuZGVyZXIuc2V0U3R5bGUodGFibGVXcmFwcGVyLCAnb3ZlcmZsb3cteCcsICdhdXRvJyk7XG4gICAgdGhpcy5yZW5kZXJlci5zZXRTdHlsZSh0YWJsZVdyYXBwZXIsICdkaXNwbGF5JywgJ2Jsb2NrJyk7XG4gIH1cblxuICB3cmFwVGFibGVXaXRoSG9yaXpvbnRhbEFuZFZlcnRpY2FsU2Nyb2xsaW5nV3JhcHBlcih0YWJsZVdyYXBwZXI6IEVsZW1lbnRSZWYpIHtcbiAgICB0aGlzLnJlbmRlcmVyLnNldFN0eWxlKHRhYmxlV3JhcHBlciwgJ21heC1oZWlnaHQnLCB0aGlzLm1heEhlaWdodCArICdweCcpO1xuICAgIHRoaXMucmVuZGVyZXIuc2V0U3R5bGUodGFibGVXcmFwcGVyLCAnbWF4LXdpZHRoJywgdGhpcy5tYXhXaWR0aCArICdweCcpO1xuICAgIHRoaXMucmVuZGVyZXIuc2V0U3R5bGUodGFibGVXcmFwcGVyLCAnb3ZlcmZsb3cteCcsICdhdXRvJyk7XG4gICAgdGhpcy5yZW5kZXJlci5zZXRTdHlsZSh0YWJsZVdyYXBwZXIsICdkaXNwbGF5JywgJ2Jsb2NrJyk7XG4gIH1cblxuICBuZ09uSW5pdCgpIHtcbiAgICBjb25zdCBwYXJlbnQgPSB0aGlzLmVsLm5hdGl2ZUVsZW1lbnQucGFyZW50Tm9kZTtcbiAgICBjb25zdCB0YWJsZVdyYXBwZXIgPSB0aGlzLnJlbmRlcmVyLmNyZWF0ZUVsZW1lbnQoJ2RpdicpO1xuXG4gICAgaWYgKHRoaXMuc2Nyb2xsWSAmJiB0aGlzLnNjcm9sbFggJiYgdGhpcy5tYXhIZWlnaHQgJiYgdGhpcy5tYXhXaWR0aCkge1xuICAgICAgdGhpcy53cmFwVGFibGVXaXRoSG9yaXpvbnRhbEFuZFZlcnRpY2FsU2Nyb2xsaW5nV3JhcHBlcih0YWJsZVdyYXBwZXIpO1xuICAgIH1cblxuICAgIGlmICh0aGlzLnNjcm9sbFkgJiYgdGhpcy5tYXhIZWlnaHQpIHtcbiAgICAgIHRoaXMud3JhcFRhYmxlV2l0aFZlcnRpY2FsU2Nyb2xsaW5nV3JhcHBlcih0YWJsZVdyYXBwZXIpO1xuICAgIH1cblxuICAgIGlmICh0aGlzLnNjcm9sbFggJiYgdGhpcy5tYXhXaWR0aCkge1xuICAgICAgdGhpcy53cmFwVGFibGVXaXRoSG9yaXpvbnRhbFNjcm9sbGluZ1dyYXBwZXIodGFibGVXcmFwcGVyKTtcbiAgICB9XG5cbiAgICB0aGlzLnJlbmRlcmVyLmluc2VydEJlZm9yZShwYXJlbnQsIHRhYmxlV3JhcHBlciwgdGhpcy5lbC5uYXRpdmVFbGVtZW50KTtcbiAgICB0aGlzLnJlbmRlcmVyLnJlbW92ZUNoaWxkKHBhcmVudCwgdGhpcy5lbC5uYXRpdmVFbGVtZW50KTtcbiAgICB0aGlzLnJlbmRlcmVyLmFwcGVuZENoaWxkKHRhYmxlV3JhcHBlciwgdGhpcy5lbC5uYXRpdmVFbGVtZW50KTtcbiAgfVxufVxuIl19