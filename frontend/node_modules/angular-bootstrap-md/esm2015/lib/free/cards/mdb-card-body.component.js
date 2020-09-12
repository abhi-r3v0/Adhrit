import { __decorate, __metadata } from "tslib";
import { Component, Input, ElementRef, Renderer2, OnInit, ViewEncapsulation, ChangeDetectionStrategy, } from '@angular/core';
let MdbCardBodyComponent = class MdbCardBodyComponent {
    constructor(_el, _r) {
        this._el = _el;
        this._r = _r;
    }
    set cascade(cascade) {
        if (cascade) {
            this._r.addClass(this._el.nativeElement, 'card-body-cascade');
        }
    }
    ngOnInit() {
        this._r.addClass(this._el.nativeElement, 'card-body');
        if (this.class) {
            this.class.split(' ').forEach((element) => {
                this._r.addClass(this._el.nativeElement, element);
            });
        }
    }
};
MdbCardBodyComponent.ctorParameters = () => [
    { type: ElementRef },
    { type: Renderer2 }
];
__decorate([
    Input(),
    __metadata("design:type", String)
], MdbCardBodyComponent.prototype, "class", void 0);
__decorate([
    Input(),
    __metadata("design:type", Boolean),
    __metadata("design:paramtypes", [Boolean])
], MdbCardBodyComponent.prototype, "cascade", null);
MdbCardBodyComponent = __decorate([
    Component({
        selector: 'mdb-card-body',
        template: "<ng-content></ng-content>\n",
        encapsulation: ViewEncapsulation.None,
        changeDetection: ChangeDetectionStrategy.OnPush
    }),
    __metadata("design:paramtypes", [ElementRef, Renderer2])
], MdbCardBodyComponent);
export { MdbCardBodyComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWRiLWNhcmQtYm9keS5jb21wb25lbnQuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL2NhcmRzL21kYi1jYXJkLWJvZHkuY29tcG9uZW50LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQ0wsU0FBUyxFQUNULEtBQUssRUFDTCxVQUFVLEVBQ1YsU0FBUyxFQUNULE1BQU0sRUFDTixpQkFBaUIsRUFDakIsdUJBQXVCLEdBQ3hCLE1BQU0sZUFBZSxDQUFDO0FBUXZCLElBQWEsb0JBQW9CLEdBQWpDLE1BQWEsb0JBQW9CO0lBUy9CLFlBQW9CLEdBQWUsRUFBVSxFQUFhO1FBQXRDLFFBQUcsR0FBSCxHQUFHLENBQVk7UUFBVSxPQUFFLEdBQUYsRUFBRSxDQUFXO0lBQUcsQ0FBQztJQU5yRCxJQUFJLE9BQU8sQ0FBQyxPQUFnQjtRQUNuQyxJQUFJLE9BQU8sRUFBRTtZQUNYLElBQUksQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsYUFBYSxFQUFFLG1CQUFtQixDQUFDLENBQUM7U0FDL0Q7SUFDSCxDQUFDO0lBSUQsUUFBUTtRQUNOLElBQUksQ0FBQyxFQUFFLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsYUFBYSxFQUFFLFdBQVcsQ0FBQyxDQUFDO1FBQ3RELElBQUksSUFBSSxDQUFDLEtBQUssRUFBRTtZQUNkLElBQUksQ0FBQyxLQUFLLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxDQUFDLE9BQU8sQ0FBQyxDQUFDLE9BQVksRUFBRSxFQUFFO2dCQUM3QyxJQUFJLENBQUMsRUFBRSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLGFBQWEsRUFBRSxPQUFPLENBQUMsQ0FBQztZQUNwRCxDQUFDLENBQUMsQ0FBQztTQUNKO0lBQ0gsQ0FBQztDQUNGLENBQUE7O1lBVjBCLFVBQVU7WUFBYyxTQUFTOztBQVJqRDtJQUFSLEtBQUssRUFBRTs7bURBQWU7QUFFZDtJQUFSLEtBQUssRUFBRTs7O21EQUlQO0FBUFUsb0JBQW9CO0lBTmhDLFNBQVMsQ0FBQztRQUNULFFBQVEsRUFBRSxlQUFlO1FBQ3pCLHVDQUE2QztRQUM3QyxhQUFhLEVBQUUsaUJBQWlCLENBQUMsSUFBSTtRQUNyQyxlQUFlLEVBQUUsdUJBQXVCLENBQUMsTUFBTTtLQUNoRCxDQUFDO3FDQVV5QixVQUFVLEVBQWMsU0FBUztHQVQvQyxvQkFBb0IsQ0FtQmhDO1NBbkJZLG9CQUFvQiIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7XG4gIENvbXBvbmVudCxcbiAgSW5wdXQsXG4gIEVsZW1lbnRSZWYsXG4gIFJlbmRlcmVyMixcbiAgT25Jbml0LFxuICBWaWV3RW5jYXBzdWxhdGlvbixcbiAgQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3ksXG59IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG5AQ29tcG9uZW50KHtcbiAgc2VsZWN0b3I6ICdtZGItY2FyZC1ib2R5JyxcbiAgdGVtcGxhdGVVcmw6ICcuL21kYi1jYXJkLWJvZHkuY29tcG9uZW50Lmh0bWwnLFxuICBlbmNhcHN1bGF0aW9uOiBWaWV3RW5jYXBzdWxhdGlvbi5Ob25lLFxuICBjaGFuZ2VEZXRlY3Rpb246IENoYW5nZURldGVjdGlvblN0cmF0ZWd5Lk9uUHVzaCxcbn0pXG5leHBvcnQgY2xhc3MgTWRiQ2FyZEJvZHlDb21wb25lbnQgaW1wbGVtZW50cyBPbkluaXQge1xuICBASW5wdXQoKSBjbGFzczogc3RyaW5nO1xuXG4gIEBJbnB1dCgpIHNldCBjYXNjYWRlKGNhc2NhZGU6IGJvb2xlYW4pIHtcbiAgICBpZiAoY2FzY2FkZSkge1xuICAgICAgdGhpcy5fci5hZGRDbGFzcyh0aGlzLl9lbC5uYXRpdmVFbGVtZW50LCAnY2FyZC1ib2R5LWNhc2NhZGUnKTtcbiAgICB9XG4gIH1cblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9lbDogRWxlbWVudFJlZiwgcHJpdmF0ZSBfcjogUmVuZGVyZXIyKSB7fVxuXG4gIG5nT25Jbml0KCkge1xuICAgIHRoaXMuX3IuYWRkQ2xhc3ModGhpcy5fZWwubmF0aXZlRWxlbWVudCwgJ2NhcmQtYm9keScpO1xuICAgIGlmICh0aGlzLmNsYXNzKSB7XG4gICAgICB0aGlzLmNsYXNzLnNwbGl0KCcgJykuZm9yRWFjaCgoZWxlbWVudDogYW55KSA9PiB7XG4gICAgICAgIHRoaXMuX3IuYWRkQ2xhc3ModGhpcy5fZWwubmF0aXZlRWxlbWVudCwgZWxlbWVudCk7XG4gICAgICB9KTtcbiAgICB9XG4gIH1cbn1cbiJdfQ==