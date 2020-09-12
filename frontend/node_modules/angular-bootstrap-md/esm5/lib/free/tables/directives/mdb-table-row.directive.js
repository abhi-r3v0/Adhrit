import { __decorate, __metadata } from "tslib";
import { Directive, Output, EventEmitter, OnInit, OnDestroy, ElementRef } from '@angular/core';
var MdbTableRowDirective = /** @class */ (function () {
    function MdbTableRowDirective(el) {
        this.el = el;
        this.rowCreated = new EventEmitter();
        this.rowRemoved = new EventEmitter();
    }
    MdbTableRowDirective.prototype.ngOnInit = function () {
        this.rowCreated.emit({ created: true, el: this.el.nativeElement });
    };
    MdbTableRowDirective.prototype.ngOnDestroy = function () {
        this.rowRemoved.emit({ removed: true });
    };
    MdbTableRowDirective.ctorParameters = function () { return [
        { type: ElementRef }
    ]; };
    __decorate([
        Output(),
        __metadata("design:type", Object)
    ], MdbTableRowDirective.prototype, "rowCreated", void 0);
    __decorate([
        Output(),
        __metadata("design:type", Object)
    ], MdbTableRowDirective.prototype, "rowRemoved", void 0);
    MdbTableRowDirective = __decorate([
        Directive({
            selector: '[mdbTableRow]'
        }),
        __metadata("design:paramtypes", [ElementRef])
    ], MdbTableRowDirective);
    return MdbTableRowDirective;
}());
export { MdbTableRowDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWRiLXRhYmxlLXJvdy5kaXJlY3RpdmUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL3RhYmxlcy9kaXJlY3RpdmVzL21kYi10YWJsZS1yb3cuZGlyZWN0aXZlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLE1BQU0sRUFBRSxZQUFZLEVBQUUsTUFBTSxFQUFFLFNBQVMsRUFBRSxVQUFVLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFLL0Y7SUFLRSw4QkFBb0IsRUFBYztRQUFkLE9BQUUsR0FBRixFQUFFLENBQVk7UUFIeEIsZUFBVSxHQUFHLElBQUksWUFBWSxFQUFPLENBQUM7UUFDckMsZUFBVSxHQUFHLElBQUksWUFBWSxFQUFPLENBQUM7SUFHL0MsQ0FBQztJQUVELHVDQUFRLEdBQVI7UUFDRSxJQUFJLENBQUMsVUFBVSxDQUFDLElBQUksQ0FBQyxFQUFFLE9BQU8sRUFBRSxJQUFJLEVBQUUsRUFBRSxFQUFFLElBQUksQ0FBQyxFQUFFLENBQUMsYUFBYSxFQUFFLENBQUMsQ0FBQztJQUNyRSxDQUFDO0lBRUQsMENBQVcsR0FBWDtRQUNFLElBQUksQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLEVBQUUsT0FBTyxFQUFFLElBQUksRUFBRSxDQUFDLENBQUM7SUFDMUMsQ0FBQzs7Z0JBVHVCLFVBQVU7O0lBSHhCO1FBQVQsTUFBTSxFQUFFOzs0REFBc0M7SUFDckM7UUFBVCxNQUFNLEVBQUU7OzREQUFzQztJQUhwQyxvQkFBb0I7UUFIaEMsU0FBUyxDQUFDO1lBQ1QsUUFBUSxFQUFFLGVBQWU7U0FDMUIsQ0FBQzt5Q0FNd0IsVUFBVTtPQUx2QixvQkFBb0IsQ0FnQmhDO0lBQUQsMkJBQUM7Q0FBQSxBQWhCRCxJQWdCQztTQWhCWSxvQkFBb0IiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBEaXJlY3RpdmUsIE91dHB1dCwgRXZlbnRFbWl0dGVyLCBPbkluaXQsIE9uRGVzdHJveSwgRWxlbWVudFJlZiB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG5ARGlyZWN0aXZlKHtcbiAgc2VsZWN0b3I6ICdbbWRiVGFibGVSb3ddJ1xufSlcbmV4cG9ydCBjbGFzcyBNZGJUYWJsZVJvd0RpcmVjdGl2ZSBpbXBsZW1lbnRzIE9uSW5pdCwgT25EZXN0cm95IHtcblxuICBAT3V0cHV0KCkgcm93Q3JlYXRlZCA9IG5ldyBFdmVudEVtaXR0ZXI8YW55PigpO1xuICBAT3V0cHV0KCkgcm93UmVtb3ZlZCA9IG5ldyBFdmVudEVtaXR0ZXI8YW55PigpO1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgZWw6IEVsZW1lbnRSZWYpIHtcbiAgfVxuXG4gIG5nT25Jbml0KCkge1xuICAgIHRoaXMucm93Q3JlYXRlZC5lbWl0KHsgY3JlYXRlZDogdHJ1ZSwgZWw6IHRoaXMuZWwubmF0aXZlRWxlbWVudCB9KTtcbiAgfVxuXG4gIG5nT25EZXN0cm95KCkge1xuICAgIHRoaXMucm93UmVtb3ZlZC5lbWl0KHsgcmVtb3ZlZDogdHJ1ZSB9KTtcbiAgfVxuXG59XG4iXX0=