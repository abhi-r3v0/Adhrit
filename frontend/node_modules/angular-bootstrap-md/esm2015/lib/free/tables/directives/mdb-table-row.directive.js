import { __decorate, __metadata } from "tslib";
import { Directive, Output, EventEmitter, OnInit, OnDestroy, ElementRef } from '@angular/core';
let MdbTableRowDirective = class MdbTableRowDirective {
    constructor(el) {
        this.el = el;
        this.rowCreated = new EventEmitter();
        this.rowRemoved = new EventEmitter();
    }
    ngOnInit() {
        this.rowCreated.emit({ created: true, el: this.el.nativeElement });
    }
    ngOnDestroy() {
        this.rowRemoved.emit({ removed: true });
    }
};
MdbTableRowDirective.ctorParameters = () => [
    { type: ElementRef }
];
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
export { MdbTableRowDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWRiLXRhYmxlLXJvdy5kaXJlY3RpdmUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL3RhYmxlcy9kaXJlY3RpdmVzL21kYi10YWJsZS1yb3cuZGlyZWN0aXZlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLE1BQU0sRUFBRSxZQUFZLEVBQUUsTUFBTSxFQUFFLFNBQVMsRUFBRSxVQUFVLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFLL0YsSUFBYSxvQkFBb0IsR0FBakMsTUFBYSxvQkFBb0I7SUFLL0IsWUFBb0IsRUFBYztRQUFkLE9BQUUsR0FBRixFQUFFLENBQVk7UUFIeEIsZUFBVSxHQUFHLElBQUksWUFBWSxFQUFPLENBQUM7UUFDckMsZUFBVSxHQUFHLElBQUksWUFBWSxFQUFPLENBQUM7SUFHL0MsQ0FBQztJQUVELFFBQVE7UUFDTixJQUFJLENBQUMsVUFBVSxDQUFDLElBQUksQ0FBQyxFQUFFLE9BQU8sRUFBRSxJQUFJLEVBQUUsRUFBRSxFQUFFLElBQUksQ0FBQyxFQUFFLENBQUMsYUFBYSxFQUFFLENBQUMsQ0FBQztJQUNyRSxDQUFDO0lBRUQsV0FBVztRQUNULElBQUksQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLEVBQUUsT0FBTyxFQUFFLElBQUksRUFBRSxDQUFDLENBQUM7SUFDMUMsQ0FBQztDQUVGLENBQUE7O1lBWHlCLFVBQVU7O0FBSHhCO0lBQVQsTUFBTSxFQUFFOzt3REFBc0M7QUFDckM7SUFBVCxNQUFNLEVBQUU7O3dEQUFzQztBQUhwQyxvQkFBb0I7SUFIaEMsU0FBUyxDQUFDO1FBQ1QsUUFBUSxFQUFFLGVBQWU7S0FDMUIsQ0FBQztxQ0FNd0IsVUFBVTtHQUx2QixvQkFBb0IsQ0FnQmhDO1NBaEJZLG9CQUFvQiIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IERpcmVjdGl2ZSwgT3V0cHV0LCBFdmVudEVtaXR0ZXIsIE9uSW5pdCwgT25EZXN0cm95LCBFbGVtZW50UmVmIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbkBEaXJlY3RpdmUoe1xuICBzZWxlY3RvcjogJ1ttZGJUYWJsZVJvd10nXG59KVxuZXhwb3J0IGNsYXNzIE1kYlRhYmxlUm93RGlyZWN0aXZlIGltcGxlbWVudHMgT25Jbml0LCBPbkRlc3Ryb3kge1xuXG4gIEBPdXRwdXQoKSByb3dDcmVhdGVkID0gbmV3IEV2ZW50RW1pdHRlcjxhbnk+KCk7XG4gIEBPdXRwdXQoKSByb3dSZW1vdmVkID0gbmV3IEV2ZW50RW1pdHRlcjxhbnk+KCk7XG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSBlbDogRWxlbWVudFJlZikge1xuICB9XG5cbiAgbmdPbkluaXQoKSB7XG4gICAgdGhpcy5yb3dDcmVhdGVkLmVtaXQoeyBjcmVhdGVkOiB0cnVlLCBlbDogdGhpcy5lbC5uYXRpdmVFbGVtZW50IH0pO1xuICB9XG5cbiAgbmdPbkRlc3Ryb3koKSB7XG4gICAgdGhpcy5yb3dSZW1vdmVkLmVtaXQoeyByZW1vdmVkOiB0cnVlIH0pO1xuICB9XG5cbn1cbiJdfQ==