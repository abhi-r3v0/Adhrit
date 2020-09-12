import { __decorate, __metadata } from "tslib";
import { Directive, ElementRef, Renderer2, OnInit, Input } from '@angular/core';
var MdbTableScrollDirective = /** @class */ (function () {
    function MdbTableScrollDirective(renderer, el) {
        this.renderer = renderer;
        this.el = el;
        this.scrollY = false;
        this.maxHeight = null;
        this.scrollX = false;
        this.maxWidth = null;
    }
    MdbTableScrollDirective.prototype.wrapTableWithVerticalScrollingWrapper = function (tableWrapper) {
        this.renderer.setStyle(tableWrapper, 'max-height', this.maxHeight + 'px');
        this.renderer.setStyle(tableWrapper, 'overflow-y', 'auto');
        this.renderer.setStyle(tableWrapper, 'display', 'block');
    };
    MdbTableScrollDirective.prototype.wrapTableWithHorizontalScrollingWrapper = function (tableWrapper) {
        this.renderer.setStyle(tableWrapper, 'max-width', this.maxWidth + 'px');
        this.renderer.setStyle(tableWrapper, 'overflow-x', 'auto');
        this.renderer.setStyle(tableWrapper, 'display', 'block');
    };
    MdbTableScrollDirective.prototype.wrapTableWithHorizontalAndVerticalScrollingWrapper = function (tableWrapper) {
        this.renderer.setStyle(tableWrapper, 'max-height', this.maxHeight + 'px');
        this.renderer.setStyle(tableWrapper, 'max-width', this.maxWidth + 'px');
        this.renderer.setStyle(tableWrapper, 'overflow-x', 'auto');
        this.renderer.setStyle(tableWrapper, 'display', 'block');
    };
    MdbTableScrollDirective.prototype.ngOnInit = function () {
        var parent = this.el.nativeElement.parentNode;
        var tableWrapper = this.renderer.createElement('div');
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
    };
    MdbTableScrollDirective.ctorParameters = function () { return [
        { type: Renderer2 },
        { type: ElementRef }
    ]; };
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
    return MdbTableScrollDirective;
}());
export { MdbTableScrollDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWRiLXRhYmxlLXNjcm9sbC5kaXJlY3RpdmUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL3RhYmxlcy9kaXJlY3RpdmVzL21kYi10YWJsZS1zY3JvbGwuZGlyZWN0aXZlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLFVBQVUsRUFBRSxTQUFTLEVBQUUsTUFBTSxFQUFFLEtBQUssRUFBRSxNQUFNLGVBQWUsQ0FBQztBQUtoRjtJQU9FLGlDQUFvQixRQUFtQixFQUFVLEVBQWM7UUFBM0MsYUFBUSxHQUFSLFFBQVEsQ0FBVztRQUFVLE9BQUUsR0FBRixFQUFFLENBQVk7UUFOdEQsWUFBTyxHQUFHLEtBQUssQ0FBQztRQUNoQixjQUFTLEdBQVEsSUFBSSxDQUFDO1FBRXRCLFlBQU8sR0FBRyxLQUFLLENBQUM7UUFDaEIsYUFBUSxHQUFRLElBQUksQ0FBQztJQUVvQyxDQUFDO0lBRW5FLHVFQUFxQyxHQUFyQyxVQUFzQyxZQUF3QjtRQUM1RCxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxZQUFZLEVBQUUsWUFBWSxFQUFFLElBQUksQ0FBQyxTQUFTLEdBQUcsSUFBSSxDQUFDLENBQUM7UUFDMUUsSUFBSSxDQUFDLFFBQVEsQ0FBQyxRQUFRLENBQUMsWUFBWSxFQUFFLFlBQVksRUFBRSxNQUFNLENBQUMsQ0FBQztRQUMzRCxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxZQUFZLEVBQUUsU0FBUyxFQUFFLE9BQU8sQ0FBQyxDQUFDO0lBQzNELENBQUM7SUFFRCx5RUFBdUMsR0FBdkMsVUFBd0MsWUFBd0I7UUFDOUQsSUFBSSxDQUFDLFFBQVEsQ0FBQyxRQUFRLENBQUMsWUFBWSxFQUFFLFdBQVcsRUFBRSxJQUFJLENBQUMsUUFBUSxHQUFHLElBQUksQ0FBQyxDQUFDO1FBQ3hFLElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLFlBQVksRUFBRSxZQUFZLEVBQUUsTUFBTSxDQUFDLENBQUM7UUFDM0QsSUFBSSxDQUFDLFFBQVEsQ0FBQyxRQUFRLENBQUMsWUFBWSxFQUFFLFNBQVMsRUFBRSxPQUFPLENBQUMsQ0FBQztJQUMzRCxDQUFDO0lBRUQsb0ZBQWtELEdBQWxELFVBQW1ELFlBQXdCO1FBQ3pFLElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxDQUFDLFlBQVksRUFBRSxZQUFZLEVBQUUsSUFBSSxDQUFDLFNBQVMsR0FBRyxJQUFJLENBQUMsQ0FBQztRQUMxRSxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxZQUFZLEVBQUUsV0FBVyxFQUFFLElBQUksQ0FBQyxRQUFRLEdBQUcsSUFBSSxDQUFDLENBQUM7UUFDeEUsSUFBSSxDQUFDLFFBQVEsQ0FBQyxRQUFRLENBQUMsWUFBWSxFQUFFLFlBQVksRUFBRSxNQUFNLENBQUMsQ0FBQztRQUMzRCxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxZQUFZLEVBQUUsU0FBUyxFQUFFLE9BQU8sQ0FBQyxDQUFDO0lBQzNELENBQUM7SUFFRCwwQ0FBUSxHQUFSO1FBQ0UsSUFBTSxNQUFNLEdBQUcsSUFBSSxDQUFDLEVBQUUsQ0FBQyxhQUFhLENBQUMsVUFBVSxDQUFDO1FBQ2hELElBQU0sWUFBWSxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsYUFBYSxDQUFDLEtBQUssQ0FBQyxDQUFDO1FBRXhELElBQUksSUFBSSxDQUFDLE9BQU8sSUFBSSxJQUFJLENBQUMsT0FBTyxJQUFJLElBQUksQ0FBQyxTQUFTLElBQUksSUFBSSxDQUFDLFFBQVEsRUFBRTtZQUNuRSxJQUFJLENBQUMsa0RBQWtELENBQUMsWUFBWSxDQUFDLENBQUM7U0FDdkU7UUFFRCxJQUFJLElBQUksQ0FBQyxPQUFPLElBQUksSUFBSSxDQUFDLFNBQVMsRUFBRTtZQUNsQyxJQUFJLENBQUMscUNBQXFDLENBQUMsWUFBWSxDQUFDLENBQUM7U0FDMUQ7UUFFRCxJQUFJLElBQUksQ0FBQyxPQUFPLElBQUksSUFBSSxDQUFDLFFBQVEsRUFBRTtZQUNqQyxJQUFJLENBQUMsdUNBQXVDLENBQUMsWUFBWSxDQUFDLENBQUM7U0FDNUQ7UUFFRCxJQUFJLENBQUMsUUFBUSxDQUFDLFlBQVksQ0FBQyxNQUFNLEVBQUUsWUFBWSxFQUFFLElBQUksQ0FBQyxFQUFFLENBQUMsYUFBYSxDQUFDLENBQUM7UUFDeEUsSUFBSSxDQUFDLFFBQVEsQ0FBQyxXQUFXLENBQUMsTUFBTSxFQUFFLElBQUksQ0FBQyxFQUFFLENBQUMsYUFBYSxDQUFDLENBQUM7UUFDekQsSUFBSSxDQUFDLFFBQVEsQ0FBQyxXQUFXLENBQUMsWUFBWSxFQUFFLElBQUksQ0FBQyxFQUFFLENBQUMsYUFBYSxDQUFDLENBQUM7SUFDakUsQ0FBQzs7Z0JBeEM2QixTQUFTO2dCQUFjLFVBQVU7O0lBTnREO1FBQVIsS0FBSyxFQUFFOzs0REFBaUI7SUFDaEI7UUFBUixLQUFLLEVBQUU7OzhEQUF1QjtJQUV0QjtRQUFSLEtBQUssRUFBRTs7NERBQWlCO0lBQ2hCO1FBQVIsS0FBSyxFQUFFOzs2REFBc0I7SUFMbkIsdUJBQXVCO1FBSG5DLFNBQVMsQ0FBQztZQUNULFFBQVEsRUFBRSxrQkFBa0I7U0FDN0IsQ0FBQzt5Q0FROEIsU0FBUyxFQUFjLFVBQVU7T0FQcEQsdUJBQXVCLENBZ0RuQztJQUFELDhCQUFDO0NBQUEsQUFoREQsSUFnREM7U0FoRFksdUJBQXVCIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgRGlyZWN0aXZlLCBFbGVtZW50UmVmLCBSZW5kZXJlcjIsIE9uSW5pdCwgSW5wdXQgfSBmcm9tICdAYW5ndWxhci9jb3JlJztcblxuQERpcmVjdGl2ZSh7XG4gIHNlbGVjdG9yOiAnW21kYlRhYmxlU2Nyb2xsXScsXG59KVxuZXhwb3J0IGNsYXNzIE1kYlRhYmxlU2Nyb2xsRGlyZWN0aXZlIGltcGxlbWVudHMgT25Jbml0IHtcbiAgQElucHV0KCkgc2Nyb2xsWSA9IGZhbHNlO1xuICBASW5wdXQoKSBtYXhIZWlnaHQ6IGFueSA9IG51bGw7XG5cbiAgQElucHV0KCkgc2Nyb2xsWCA9IGZhbHNlO1xuICBASW5wdXQoKSBtYXhXaWR0aDogYW55ID0gbnVsbDtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIHJlbmRlcmVyOiBSZW5kZXJlcjIsIHByaXZhdGUgZWw6IEVsZW1lbnRSZWYpIHt9XG5cbiAgd3JhcFRhYmxlV2l0aFZlcnRpY2FsU2Nyb2xsaW5nV3JhcHBlcih0YWJsZVdyYXBwZXI6IEVsZW1lbnRSZWYpIHtcbiAgICB0aGlzLnJlbmRlcmVyLnNldFN0eWxlKHRhYmxlV3JhcHBlciwgJ21heC1oZWlnaHQnLCB0aGlzLm1heEhlaWdodCArICdweCcpO1xuICAgIHRoaXMucmVuZGVyZXIuc2V0U3R5bGUodGFibGVXcmFwcGVyLCAnb3ZlcmZsb3cteScsICdhdXRvJyk7XG4gICAgdGhpcy5yZW5kZXJlci5zZXRTdHlsZSh0YWJsZVdyYXBwZXIsICdkaXNwbGF5JywgJ2Jsb2NrJyk7XG4gIH1cblxuICB3cmFwVGFibGVXaXRoSG9yaXpvbnRhbFNjcm9sbGluZ1dyYXBwZXIodGFibGVXcmFwcGVyOiBFbGVtZW50UmVmKSB7XG4gICAgdGhpcy5yZW5kZXJlci5zZXRTdHlsZSh0YWJsZVdyYXBwZXIsICdtYXgtd2lkdGgnLCB0aGlzLm1heFdpZHRoICsgJ3B4Jyk7XG4gICAgdGhpcy5yZW5kZXJlci5zZXRTdHlsZSh0YWJsZVdyYXBwZXIsICdvdmVyZmxvdy14JywgJ2F1dG8nKTtcbiAgICB0aGlzLnJlbmRlcmVyLnNldFN0eWxlKHRhYmxlV3JhcHBlciwgJ2Rpc3BsYXknLCAnYmxvY2snKTtcbiAgfVxuXG4gIHdyYXBUYWJsZVdpdGhIb3Jpem9udGFsQW5kVmVydGljYWxTY3JvbGxpbmdXcmFwcGVyKHRhYmxlV3JhcHBlcjogRWxlbWVudFJlZikge1xuICAgIHRoaXMucmVuZGVyZXIuc2V0U3R5bGUodGFibGVXcmFwcGVyLCAnbWF4LWhlaWdodCcsIHRoaXMubWF4SGVpZ2h0ICsgJ3B4Jyk7XG4gICAgdGhpcy5yZW5kZXJlci5zZXRTdHlsZSh0YWJsZVdyYXBwZXIsICdtYXgtd2lkdGgnLCB0aGlzLm1heFdpZHRoICsgJ3B4Jyk7XG4gICAgdGhpcy5yZW5kZXJlci5zZXRTdHlsZSh0YWJsZVdyYXBwZXIsICdvdmVyZmxvdy14JywgJ2F1dG8nKTtcbiAgICB0aGlzLnJlbmRlcmVyLnNldFN0eWxlKHRhYmxlV3JhcHBlciwgJ2Rpc3BsYXknLCAnYmxvY2snKTtcbiAgfVxuXG4gIG5nT25Jbml0KCkge1xuICAgIGNvbnN0IHBhcmVudCA9IHRoaXMuZWwubmF0aXZlRWxlbWVudC5wYXJlbnROb2RlO1xuICAgIGNvbnN0IHRhYmxlV3JhcHBlciA9IHRoaXMucmVuZGVyZXIuY3JlYXRlRWxlbWVudCgnZGl2Jyk7XG5cbiAgICBpZiAodGhpcy5zY3JvbGxZICYmIHRoaXMuc2Nyb2xsWCAmJiB0aGlzLm1heEhlaWdodCAmJiB0aGlzLm1heFdpZHRoKSB7XG4gICAgICB0aGlzLndyYXBUYWJsZVdpdGhIb3Jpem9udGFsQW5kVmVydGljYWxTY3JvbGxpbmdXcmFwcGVyKHRhYmxlV3JhcHBlcik7XG4gICAgfVxuXG4gICAgaWYgKHRoaXMuc2Nyb2xsWSAmJiB0aGlzLm1heEhlaWdodCkge1xuICAgICAgdGhpcy53cmFwVGFibGVXaXRoVmVydGljYWxTY3JvbGxpbmdXcmFwcGVyKHRhYmxlV3JhcHBlcik7XG4gICAgfVxuXG4gICAgaWYgKHRoaXMuc2Nyb2xsWCAmJiB0aGlzLm1heFdpZHRoKSB7XG4gICAgICB0aGlzLndyYXBUYWJsZVdpdGhIb3Jpem9udGFsU2Nyb2xsaW5nV3JhcHBlcih0YWJsZVdyYXBwZXIpO1xuICAgIH1cblxuICAgIHRoaXMucmVuZGVyZXIuaW5zZXJ0QmVmb3JlKHBhcmVudCwgdGFibGVXcmFwcGVyLCB0aGlzLmVsLm5hdGl2ZUVsZW1lbnQpO1xuICAgIHRoaXMucmVuZGVyZXIucmVtb3ZlQ2hpbGQocGFyZW50LCB0aGlzLmVsLm5hdGl2ZUVsZW1lbnQpO1xuICAgIHRoaXMucmVuZGVyZXIuYXBwZW5kQ2hpbGQodGFibGVXcmFwcGVyLCB0aGlzLmVsLm5hdGl2ZUVsZW1lbnQpO1xuICB9XG59XG4iXX0=