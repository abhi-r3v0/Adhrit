import { __decorate, __metadata } from "tslib";
import { Component, Input, ChangeDetectionStrategy } from '@angular/core';
var MdbCardImageComponent = /** @class */ (function () {
    function MdbCardImageComponent() {
    }
    __decorate([
        Input(),
        __metadata("design:type", String)
    ], MdbCardImageComponent.prototype, "src", void 0);
    __decorate([
        Input(),
        __metadata("design:type", String)
    ], MdbCardImageComponent.prototype, "alt", void 0);
    MdbCardImageComponent = __decorate([
        Component({
            selector: 'mdb-card-img',
            template: "<img class=\"img-fluid\" [src]=\"src\" [alt]=\"alt\">",
            changeDetection: ChangeDetectionStrategy.OnPush
        })
    ], MdbCardImageComponent);
    return MdbCardImageComponent;
}());
export { MdbCardImageComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWRiLWNhcmQtaW1hZ2UuY29tcG9uZW50LmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9jYXJkcy9tZGItY2FyZC1pbWFnZS5jb21wb25lbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxTQUFTLEVBQUUsS0FBSyxFQUFFLHVCQUF1QixFQUFFLE1BQU0sZUFBZSxDQUFDO0FBTzFFO0lBQUE7SUFHQSxDQUFDO0lBRlU7UUFBUixLQUFLLEVBQUU7O3NEQUFhO0lBQ1o7UUFBUixLQUFLLEVBQUU7O3NEQUFhO0lBRlYscUJBQXFCO1FBTGpDLFNBQVMsQ0FBQztZQUNULFFBQVEsRUFBRSxjQUFjO1lBQ3hCLGlFQUE4QztZQUM5QyxlQUFlLEVBQUUsdUJBQXVCLENBQUMsTUFBTTtTQUNoRCxDQUFDO09BQ1cscUJBQXFCLENBR2pDO0lBQUQsNEJBQUM7Q0FBQSxBQUhELElBR0M7U0FIWSxxQkFBcUIiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBDb21wb25lbnQsIElucHV0LCBDaGFuZ2VEZXRlY3Rpb25TdHJhdGVneSB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG5AQ29tcG9uZW50KHtcbiAgc2VsZWN0b3I6ICdtZGItY2FyZC1pbWcnLFxuICB0ZW1wbGF0ZVVybDogJy4vbWRiLWNhcmQtaW1hZ2UuY29tcG9uZW50Lmh0bWwnLFxuICBjaGFuZ2VEZXRlY3Rpb246IENoYW5nZURldGVjdGlvblN0cmF0ZWd5Lk9uUHVzaCxcbn0pXG5leHBvcnQgY2xhc3MgTWRiQ2FyZEltYWdlQ29tcG9uZW50IHtcbiAgQElucHV0KCkgc3JjOiBzdHJpbmc7XG4gIEBJbnB1dCgpIGFsdDogc3RyaW5nO1xufVxuIl19