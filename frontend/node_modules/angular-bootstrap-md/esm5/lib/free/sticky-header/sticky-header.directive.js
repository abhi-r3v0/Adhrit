import { __decorate, __metadata, __read } from "tslib";
import { AfterViewInit, Directive, ElementRef, EventEmitter, Input, Output, Renderer2, OnDestroy, } from '@angular/core';
import { fromEvent, Subject } from 'rxjs';
import { window } from '../utils/facade/browser';
import { distinctUntilChanged, filter, map, pairwise, share, skip, throttleTime, takeUntil, } from 'rxjs/operators';
var Direction;
(function (Direction) {
    Direction["Up"] = "Up";
    Direction["Down"] = "Down";
})(Direction || (Direction = {}));
var StickyHeaderDirective = /** @class */ (function () {
    function StickyHeaderDirective(_renderer, _el) {
        this._renderer = _renderer;
        this._el = _el;
        this.animationDuration = 200;
        this.transitionEnd = new EventEmitter();
        this._destroy$ = new Subject();
    }
    StickyHeaderDirective.prototype.ngAfterViewInit = function () {
        var _this = this;
        var scroll$ = fromEvent(window, 'scroll').pipe(throttleTime(10), map(function () { return window.pageYOffset; }), pairwise(), map(function (_a) {
            var _b = __read(_a, 2), y1 = _b[0], y2 = _b[1];
            return (y2 < y1 ? Direction.Up : Direction.Down);
        }), distinctUntilChanged(), share());
        this.scrollUp$ = scroll$.pipe(filter(function (direction) { return direction === Direction.Up; }));
        this.scrollDown$ = scroll$.pipe(filter(function (direction) { return direction === Direction.Down; }));
        this._renderer.setStyle(this._el.nativeElement, 'position', 'fixed');
        this._renderer.setStyle(this._el.nativeElement, 'top', '0');
        this._renderer.setStyle(this._el.nativeElement, 'width', '100%');
        this._renderer.setStyle(this._el.nativeElement, 'z-index', '1030');
        setTimeout(function () {
            _this.scrollUp$
                .pipe(skip(0), takeUntil(_this._destroy$))
                .subscribe(function () {
                _this._renderer.setStyle(_this._el.nativeElement, 'transition', "all " + _this.animationDuration + "ms ease-in");
                _this._renderer.setStyle(_this._el.nativeElement, 'transform', 'translateY(0%)');
                _this.transitionEnd.emit({ state: 'Visible' });
            });
            _this.scrollDown$
                .pipe(skip(0), takeUntil(_this._destroy$))
                .subscribe(function () {
                _this._renderer.setStyle(_this._el.nativeElement, 'transition', "all " + _this.animationDuration + "ms ease-in");
                _this._renderer.setStyle(_this._el.nativeElement, 'transform', 'translateY(-100%)');
                _this.transitionEnd.emit({ state: 'Hidden' });
            });
        }, 0);
    };
    StickyHeaderDirective.prototype.ngOnDestroy = function () {
        this._destroy$.next();
        this._destroy$.complete();
    };
    StickyHeaderDirective.ctorParameters = function () { return [
        { type: Renderer2 },
        { type: ElementRef }
    ]; };
    __decorate([
        Input(),
        __metadata("design:type", Object)
    ], StickyHeaderDirective.prototype, "animationDuration", void 0);
    __decorate([
        Output(),
        __metadata("design:type", EventEmitter)
    ], StickyHeaderDirective.prototype, "transitionEnd", void 0);
    StickyHeaderDirective = __decorate([
        Directive({
            selector: '[mdbStickyHeader]',
            exportAs: 'mdbStickyHeader',
        }),
        __metadata("design:paramtypes", [Renderer2, ElementRef])
    ], StickyHeaderDirective);
    return StickyHeaderDirective;
}());
export { StickyHeaderDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic3RpY2t5LWhlYWRlci5kaXJlY3RpdmUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL3N0aWNreS1oZWFkZXIvc3RpY2t5LWhlYWRlci5kaXJlY3RpdmUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFDTCxhQUFhLEVBQ2IsU0FBUyxFQUNULFVBQVUsRUFDVixZQUFZLEVBQ1osS0FBSyxFQUNMLE1BQU0sRUFDTixTQUFTLEVBQ1QsU0FBUyxHQUNWLE1BQU0sZUFBZSxDQUFDO0FBQ3ZCLE9BQU8sRUFBRSxTQUFTLEVBQUUsT0FBTyxFQUFFLE1BQU0sTUFBTSxDQUFDO0FBQzFDLE9BQU8sRUFBRSxNQUFNLEVBQUUsTUFBTSx5QkFBeUIsQ0FBQztBQUNqRCxPQUFPLEVBQ0wsb0JBQW9CLEVBQ3BCLE1BQU0sRUFDTixHQUFHLEVBQ0gsUUFBUSxFQUNSLEtBQUssRUFDTCxJQUFJLEVBQ0osWUFBWSxFQUNaLFNBQVMsR0FDVixNQUFNLGdCQUFnQixDQUFDO0FBRXhCLElBQUssU0FHSjtBQUhELFdBQUssU0FBUztJQUNaLHNCQUFTLENBQUE7SUFDVCwwQkFBYSxDQUFBO0FBQ2YsQ0FBQyxFQUhJLFNBQVMsS0FBVCxTQUFTLFFBR2I7QUFNRDtJQVNFLCtCQUFvQixTQUFvQixFQUFVLEdBQWU7UUFBN0MsY0FBUyxHQUFULFNBQVMsQ0FBVztRQUFVLFFBQUcsR0FBSCxHQUFHLENBQVk7UUFSeEQsc0JBQWlCLEdBQUcsR0FBRyxDQUFDO1FBQ3ZCLGtCQUFhLEdBQW9DLElBQUksWUFBWSxFQUFxQixDQUFDO1FBRXpGLGNBQVMsR0FBa0IsSUFBSSxPQUFPLEVBQUUsQ0FBQztJQUttQixDQUFDO0lBRXJFLCtDQUFlLEdBQWY7UUFBQSxpQkFnREM7UUEvQ0MsSUFBTSxPQUFPLEdBQUcsU0FBUyxDQUFDLE1BQU0sRUFBRSxRQUFRLENBQUMsQ0FBQyxJQUFJLENBQzlDLFlBQVksQ0FB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Q0FBQztJQUVELDJDQUFXLEdBQVg7UUFDRSxJQUFJLENBQUMsU0FBUyxDQUFDLElBQUksRUFBRSxDQUFDO1FBQ3RCLElBQUksQ0FBQyxTQUFTLENBQUMsUUFBUSxFQUFFLENBQUM7SUFDNUIsQ0FBQzs7Z0JBdkQ4QixTQUFTO2dCQUFlLFVBQVU7O0lBUnhEO1FBQVIsS0FBSyxFQUFFOztvRUFBeUI7SUFDdkI7UUFBVCxNQUFNLEVBQUU7a0NBQWdCLFlBQVk7Z0VBQTREO0lBRnRGLHFCQUFxQjtRQUpqQyxTQUFTLENBQUM7WUFDVCxRQUFRLEVBQUUsbUJBQW1CO1lBQzdCLFFBQVEsRUFBRSxpQkFBaUI7U0FDNUIsQ0FBQzt5Q0FVK0IsU0FBUyxFQUFlLFVBQVU7T0FUdEQscUJBQXFCLENBaUVqQztJQUFELDRCQUFDO0NBQUEsQUFqRUQsSUFpRUM7U0FqRVkscUJBQXFCIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtcbiAgQWZ0ZXJWaWV3SW5pdCxcbiAgRGlyZWN0aXZlLFxuICBFbGVtZW50UmVmLFxuICBFdmVudEVtaXR0ZXIsXG4gIElucHV0LFxuICBPdXRwdXQsXG4gIFJlbmRlcmVyMixcbiAgT25EZXN0cm95LFxufSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7IGZyb21FdmVudCwgU3ViamVjdCB9IGZyb20gJ3J4anMnO1xuaW1wb3J0IHsgd2luZG93IH0gZnJvbSAnLi4vdXRpbHMvZmFjYWRlL2Jyb3dzZXInO1xuaW1wb3J0IHtcbiAgZGlzdGluY3RVbnRpbENoYW5nZWQsXG4gIGZpbHRlcixcbiAgbWFwLFxuICBwYWlyd2lzZSxcbiAgc2hhcmUsXG4gIHNraXAsXG4gIHRocm90dGxlVGltZSxcbiAgdGFrZVVudGlsLFxufSBmcm9tICdyeGpzL29wZXJhdG9ycyc7XG5cbmVudW0gRGlyZWN0aW9uIHtcbiAgVXAgPSAnVXAnLFxuICBEb3duID0gJ0Rvd24nLFxufVxuXG5ARGlyZWN0aXZlKHtcbiAgc2VsZWN0b3I6ICdbbWRiU3RpY2t5SGVhZGVyXScsXG4gIGV4cG9ydEFzOiAnbWRiU3RpY2t5SGVhZGVyJyxcbn0pXG5leHBvcnQgY2xhc3MgU3RpY2t5SGVhZGVyRGlyZWN0aXZlIGltcGxlbWVudHMgQWZ0ZXJWaWV3SW5pdCwgT25EZXN0cm95IHtcbiAgQElucHV0KCkgYW5pbWF0aW9uRHVyYXRpb24gPSAyMDA7XG4gIEBPdXRwdXQoKSB0cmFuc2l0aW9uRW5kOiBFdmVudEVtaXR0ZXI8eyBzdGF0ZTogc3RyaW5nIH0+ID0gbmV3IEV2ZW50RW1pdHRlcjx7IHN0YXRlOiBzdHJpbmcgfT4oKTtcblxuICBwcml2YXRlIF9kZXN0cm95JDogU3ViamVjdDx2b2lkPiA9IG5ldyBTdWJqZWN0KCk7XG5cbiAgcHJpdmF0ZSBzY3JvbGxEb3duJDogYW55O1xuICBwcml2YXRlIHNjcm9sbFVwJDogYW55O1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgX3JlbmRlcmVyOiBSZW5kZXJlcjIsIHByaXZhdGUgX2VsOiBFbGVtZW50UmVmKSB7fVxuXG4gIG5nQWZ0ZXJWaWV3SW5pdCgpIHtcbiAgICBjb25zdCBzY3JvbGwkID0gZnJvbUV2ZW50KHdpbmRvdywgJ3Njcm9sbCcpLnBpcGUoXG4gICAgICB0aHJvdHRsZVRpbWUoMTApLFxuICAgICAgbWFwKCgpID0+IHdpbmRvdy5wYWdlWU9mZnNldCksXG4gICAgICBwYWlyd2lzZSgpLFxuICAgICAgbWFwKChbeTEsIHkyXSk6IERpcmVjdGlvbiA9PiAoeTIgPCB5MSA/IERpcmVjdGlvbi5VcCA6IERpcmVjdGlvbi5Eb3duKSksXG4gICAgICBkaXN0aW5jdFVudGlsQ2hhbmdlZCgpLFxuICAgICAgc2hhcmUoKVxuICAgICk7XG5cbiAgICB0aGlzLnNjcm9sbFVwJCA9IHNjcm9sbCQucGlwZShmaWx0ZXIoZGlyZWN0aW9uID0+IGRpcmVjdGlvbiA9PT0gRGlyZWN0aW9uLlVwKSk7XG4gICAgdGhpcy5zY3JvbGxEb3duJCA9IHNjcm9sbCQucGlwZShmaWx0ZXIoZGlyZWN0aW9uID0+IGRpcmVjdGlvbiA9PT0gRGlyZWN0aW9uLkRvd24pKTtcblxuICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKHRoaXMuX2VsLm5hdGl2ZUVsZW1lbnQsICdwb3NpdGlvbicsICdmaXhlZCcpO1xuICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKHRoaXMuX2VsLm5hdGl2ZUVsZW1lbnQsICd0b3AnLCAnMCcpO1xuICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKHRoaXMuX2VsLm5hdGl2ZUVsZW1lbnQsICd3aWR0aCcsICcxMDAlJyk7XG4gICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUodGhpcy5fZWwubmF0aXZlRWxlbWVudCwgJ3otaW5kZXgnLCAnMTAzMCcpO1xuXG4gICAgc2V0VGltZW91dCgoKSA9PiB7XG4gICAgICB0aGlzLnNjcm9sbFVwJFxuICAgICAgICAucGlwZShcbiAgICAgICAgICBza2lwKDApLFxuICAgICAgICAgIHRha2VVbnRpbCh0aGlzLl9kZXN0cm95JClcbiAgICAgICAgKVxuICAgICAgICAuc3Vic2NyaWJlKCgpID0+IHtcbiAgICAgICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZShcbiAgICAgICAgICAgIHRoaXMuX2VsLm5hdGl2ZUVsZW1lbnQsXG4gICAgICAgICAgICAndHJhbnNpdGlvbicsXG4gICAgICAgICAgICBgYWxsICR7dGhpcy5hbmltYXRpb25EdXJhdGlvbn1tcyBlYXNlLWluYFxuICAgICAgICAgICk7XG4gICAgICAgICAgdGhpcy5fcmVuZGVyZXIuc2V0U3R5bGUodGhpcy5fZWwubmF0aXZlRWxlbWVudCwgJ3RyYW5zZm9ybScsICd0cmFuc2xhdGVZKDAlKScpO1xuICAgICAgICAgIHRoaXMudHJhbnNpdGlvbkVuZC5lbWl0KHsgc3RhdGU6ICdWaXNpYmxlJyB9KTtcbiAgICAgICAgfSk7XG4gICAgICB0aGlzLnNjcm9sbERvd24kXG4gICAgICAgIC5waXBlKFxuICAgICAgICAgIHNraXAoMCksXG4gICAgICAgICAgdGFrZVVudGlsKHRoaXMuX2Rlc3Ryb3kkKVxuICAgICAgICApXG4gICAgICAgIC5zdWJzY3JpYmUoKCkgPT4ge1xuICAgICAgICAgIHRoaXMuX3JlbmRlcmVyLnNldFN0eWxlKFxuICAgICAgICAgICAgdGhpcy5fZWwubmF0aXZlRWxlbWVudCxcbiAgICAgICAgICAgICd0cmFuc2l0aW9uJyxcbiAgICAgICAgICAgIGBhbGwgJHt0aGlzLmFuaW1hdGlvbkR1cmF0aW9ufW1zIGVhc2UtaW5gXG4gICAgICAgICAgKTtcbiAgICAgICAgICB0aGlzLl9yZW5kZXJlci5zZXRTdHlsZSh0aGlzLl9lbC5uYXRpdmVFbGVtZW50LCAndHJhbnNmb3JtJywgJ3RyYW5zbGF0ZVkoLTEwMCUpJyk7XG4gICAgICAgICAgdGhpcy50cmFuc2l0aW9uRW5kLmVtaXQoeyBzdGF0ZTogJ0hpZGRlbicgfSk7XG4gICAgICAgIH0pO1xuICAgIH0sIDApO1xuICB9XG5cbiAgbmdPbkRlc3Ryb3koKSB7XG4gICAgdGhpcy5fZGVzdHJveSQubmV4dCgpO1xuICAgIHRoaXMuX2Rlc3Ryb3kkLmNvbXBsZXRlKCk7XG4gIH1cbn1cbiJdfQ==