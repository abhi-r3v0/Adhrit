import { __decorate, __metadata } from "tslib";
import { Directive, TemplateRef, ViewContainerRef } from '@angular/core';
import { BsDropdownState } from './dropdown.state';
let BsDropdownMenuDirective = class BsDropdownMenuDirective {
    constructor(_state, _viewContainer, _templateRef) {
        _state.resolveDropdownMenu({
            templateRef: _templateRef,
            viewContainer: _viewContainer
        });
    }
};
BsDropdownMenuDirective.ctorParameters = () => [
    { type: BsDropdownState },
    { type: ViewContainerRef },
    { type: TemplateRef }
];
BsDropdownMenuDirective = __decorate([
    Directive({
        selector: '[mdbDropdownMenu],[dropdownMenu]',
        exportAs: 'bs-dropdown-menu'
    }),
    __metadata("design:paramtypes", [BsDropdownState,
        ViewContainerRef,
        TemplateRef])
], BsDropdownMenuDirective);
export { BsDropdownMenuDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZHJvcGRvd24tbWVudS5kaXJlY3RpdmUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL2Ryb3Bkb3duL2Ryb3Bkb3duLW1lbnUuZGlyZWN0aXZlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLFdBQVcsRUFBRSxnQkFBZ0IsRUFBRSxNQUFNLGVBQWUsQ0FBQztBQUN6RSxPQUFPLEVBQUUsZUFBZSxFQUFFLE1BQU0sa0JBQWtCLENBQUM7QUFNbkQsSUFBYSx1QkFBdUIsR0FBcEMsTUFBYSx1QkFBdUI7SUFDbEMsWUFBWSxNQUF1QixFQUNqQyxjQUFnQyxFQUNoQyxZQUE4QjtRQUM5QixNQUFNLENBQUMsbUJBQW1CLENBQUM7WUFDekIsV0FBVyxFQUFFLFlBQVk7WUFDekIsYUFBYSxFQUFFLGNBQWM7U0FDOUIsQ0FBQyxDQUFDO0lBQ0wsQ0FBQztDQUNGLENBQUE7O1lBUnFCLGVBQWU7WUFDakIsZ0JBQWdCO1lBQ2xCLFdBQVc7O0FBSGhCLHVCQUF1QjtJQUpuQyxTQUFTLENBQUM7UUFDVCxRQUFRLEVBQUUsa0NBQWtDO1FBQzVDLFFBQVEsRUFBRSxrQkFBa0I7S0FDN0IsQ0FBQztxQ0FFb0IsZUFBZTtRQUNqQixnQkFBZ0I7UUFDbEIsV0FBVztHQUhoQix1QkFBdUIsQ0FTbkM7U0FUWSx1QkFBdUIiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBEaXJlY3RpdmUsIFRlbXBsYXRlUmVmLCBWaWV3Q29udGFpbmVyUmVmIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQgeyBCc0Ryb3Bkb3duU3RhdGUgfSBmcm9tICcuL2Ryb3Bkb3duLnN0YXRlJztcblxuQERpcmVjdGl2ZSh7XG4gIHNlbGVjdG9yOiAnW21kYkRyb3Bkb3duTWVudV0sW2Ryb3Bkb3duTWVudV0nLFxuICBleHBvcnRBczogJ2JzLWRyb3Bkb3duLW1lbnUnXG59KVxuZXhwb3J0IGNsYXNzIEJzRHJvcGRvd25NZW51RGlyZWN0aXZlIHtcbiAgY29uc3RydWN0b3IoX3N0YXRlOiBCc0Ryb3Bkb3duU3RhdGUsXG4gICAgX3ZpZXdDb250YWluZXI6IFZpZXdDb250YWluZXJSZWYsXG4gICAgX3RlbXBsYXRlUmVmOiBUZW1wbGF0ZVJlZjxhbnk+KSB7XG4gICAgX3N0YXRlLnJlc29sdmVEcm9wZG93bk1lbnUoe1xuICAgICAgdGVtcGxhdGVSZWY6IF90ZW1wbGF0ZVJlZixcbiAgICAgIHZpZXdDb250YWluZXI6IF92aWV3Q29udGFpbmVyXG4gICAgfSk7XG4gIH1cbn1cbiJdfQ==