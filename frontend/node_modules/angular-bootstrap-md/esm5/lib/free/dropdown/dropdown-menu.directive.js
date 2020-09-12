import { __decorate, __metadata } from "tslib";
import { Directive, TemplateRef, ViewContainerRef } from '@angular/core';
import { BsDropdownState } from './dropdown.state';
var BsDropdownMenuDirective = /** @class */ (function () {
    function BsDropdownMenuDirective(_state, _viewContainer, _templateRef) {
        _state.resolveDropdownMenu({
            templateRef: _templateRef,
            viewContainer: _viewContainer
        });
    }
    BsDropdownMenuDirective.ctorParameters = function () { return [
        { type: BsDropdownState },
        { type: ViewContainerRef },
        { type: TemplateRef }
    ]; };
    BsDropdownMenuDirective = __decorate([
        Directive({
            selector: '[mdbDropdownMenu],[dropdownMenu]',
            exportAs: 'bs-dropdown-menu'
        }),
        __metadata("design:paramtypes", [BsDropdownState,
            ViewContainerRef,
            TemplateRef])
    ], BsDropdownMenuDirective);
    return BsDropdownMenuDirective;
}());
export { BsDropdownMenuDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZHJvcGRvd24tbWVudS5kaXJlY3RpdmUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL2Ryb3Bkb3duL2Ryb3Bkb3duLW1lbnUuZGlyZWN0aXZlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLFdBQVcsRUFBRSxnQkFBZ0IsRUFBRSxNQUFNLGVBQWUsQ0FBQztBQUN6RSxPQUFPLEVBQUUsZUFBZSxFQUFFLE1BQU0sa0JBQWtCLENBQUM7QUFNbkQ7SUFDRSxpQ0FBWSxNQUF1QixFQUNqQyxjQUFnQyxFQUNoQyxZQUE4QjtRQUM5QixNQUFNLENBQUMsbUJBQW1CLENBQUM7WUFDekIsV0FBVyxFQUFFLFlBQVk7WUFDekIsYUFBYSxFQUFFLGNBQWM7U0FDOUIsQ0FBQyxDQUFDO0lBQ0wsQ0FBQzs7Z0JBUG1CLGVBQWU7Z0JBQ2pCLGdCQUFnQjtnQkFDbEIsV0FBVzs7SUFIaEIsdUJBQXVCO1FBSm5DLFNBQVMsQ0FBQztZQUNULFFBQVEsRUFBRSxrQ0FBa0M7WUFDNUMsUUFBUSxFQUFFLGtCQUFrQjtTQUM3QixDQUFDO3lDQUVvQixlQUFlO1lBQ2pCLGdCQUFnQjtZQUNsQixXQUFXO09BSGhCLHVCQUF1QixDQVNuQztJQUFELDhCQUFDO0NBQUEsQUFURCxJQVNDO1NBVFksdUJBQXVCIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgRGlyZWN0aXZlLCBUZW1wbGF0ZVJlZiwgVmlld0NvbnRhaW5lclJlZiB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgQnNEcm9wZG93blN0YXRlIH0gZnJvbSAnLi9kcm9wZG93bi5zdGF0ZSc7XG5cbkBEaXJlY3RpdmUoe1xuICBzZWxlY3RvcjogJ1ttZGJEcm9wZG93bk1lbnVdLFtkcm9wZG93bk1lbnVdJyxcbiAgZXhwb3J0QXM6ICdicy1kcm9wZG93bi1tZW51J1xufSlcbmV4cG9ydCBjbGFzcyBCc0Ryb3Bkb3duTWVudURpcmVjdGl2ZSB7XG4gIGNvbnN0cnVjdG9yKF9zdGF0ZTogQnNEcm9wZG93blN0YXRlLFxuICAgIF92aWV3Q29udGFpbmVyOiBWaWV3Q29udGFpbmVyUmVmLFxuICAgIF90ZW1wbGF0ZVJlZjogVGVtcGxhdGVSZWY8YW55Pikge1xuICAgIF9zdGF0ZS5yZXNvbHZlRHJvcGRvd25NZW51KHtcbiAgICAgIHRlbXBsYXRlUmVmOiBfdGVtcGxhdGVSZWYsXG4gICAgICB2aWV3Q29udGFpbmVyOiBfdmlld0NvbnRhaW5lclxuICAgIH0pO1xuICB9XG59XG4iXX0=