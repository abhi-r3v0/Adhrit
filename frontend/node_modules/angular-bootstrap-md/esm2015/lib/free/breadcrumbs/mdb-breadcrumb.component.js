import { __decorate, __metadata } from "tslib";
import { Component, Input, ChangeDetectionStrategy } from '@angular/core';
let MdbBreadcrumbComponent = class MdbBreadcrumbComponent {
};
__decorate([
    Input(),
    __metadata("design:type", String)
], MdbBreadcrumbComponent.prototype, "customClass", void 0);
__decorate([
    Input(),
    __metadata("design:type", String)
], MdbBreadcrumbComponent.prototype, "textTransform", void 0);
MdbBreadcrumbComponent = __decorate([
    Component({
        selector: 'mdb-breadcrumb',
        template: "<ol class=\"breadcrumb list-inline list-unstyled {{customClass}} text-{{textTransform}}\">\n  <ng-content></ng-content>\n</ol>\n",
        changeDetection: ChangeDetectionStrategy.OnPush
    })
], MdbBreadcrumbComponent);
export { MdbBreadcrumbComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWRiLWJyZWFkY3J1bWIuY29tcG9uZW50LmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9icmVhZGNydW1icy9tZGItYnJlYWRjcnVtYi5jb21wb25lbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxTQUFTLEVBQUUsS0FBSyxFQUFFLHVCQUF1QixFQUFFLE1BQU0sZUFBZSxDQUFDO0FBTzFFLElBQWEsc0JBQXNCLEdBQW5DLE1BQWEsc0JBQXNCO0NBR2xDLENBQUE7QUFGVTtJQUFSLEtBQUssRUFBRTs7MkRBQXFCO0FBQ3BCO0lBQVIsS0FBSyxFQUFFOzs2REFBdUI7QUFGcEIsc0JBQXNCO0lBTGxDLFNBQVMsQ0FBQztRQUNULFFBQVEsRUFBRSxnQkFBZ0I7UUFDMUIsNElBQThDO1FBQzlDLGVBQWUsRUFBRSx1QkFBdUIsQ0FBQyxNQUFNO0tBQ2hELENBQUM7R0FDVyxzQkFBc0IsQ0FHbEM7U0FIWSxzQkFBc0IiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBDb21wb25lbnQsIElucHV0LCBDaGFuZ2VEZXRlY3Rpb25TdHJhdGVneSB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG5AQ29tcG9uZW50KHtcbiAgc2VsZWN0b3I6ICdtZGItYnJlYWRjcnVtYicsXG4gIHRlbXBsYXRlVXJsOiAnLi9tZGItYnJlYWRjcnVtYi5jb21wb25lbnQuaHRtbCcsXG4gIGNoYW5nZURldGVjdGlvbjogQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kuT25QdXNoLFxufSlcbmV4cG9ydCBjbGFzcyBNZGJCcmVhZGNydW1iQ29tcG9uZW50IHtcbiAgQElucHV0KCkgY3VzdG9tQ2xhc3M6IHN0cmluZztcbiAgQElucHV0KCkgdGV4dFRyYW5zZm9ybTogc3RyaW5nO1xufVxuIl19