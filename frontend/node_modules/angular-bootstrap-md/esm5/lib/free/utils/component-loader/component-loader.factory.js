import { __decorate, __metadata } from "tslib";
import { ApplicationRef, ComponentFactoryResolver, ElementRef, Injectable, Injector, NgZone, Renderer2, ViewContainerRef } from '@angular/core';
import { ComponentLoader } from './component-loader.class';
import { PositioningService } from './../positioning/positioning.service';
var ComponentLoaderFactory = /** @class */ (function () {
    function ComponentLoaderFactory(_componentFactoryResolver, _ngZone, _injector, _posService, _applicationRef) {
        this._componentFactoryResolver = _componentFactoryResolver;
        this._ngZone = _ngZone;
        this._injector = _injector;
        this._posService = _posService;
        this._applicationRef = _applicationRef;
    }
    ComponentLoaderFactory.prototype.createLoader = function (_elementRef, _viewContainerRef, _renderer) {
        return new ComponentLoader(_viewContainerRef, _renderer, _elementRef, this._injector, this._componentFactoryResolver, this._ngZone, this._applicationRef, this._posService);
    };
    ComponentLoaderFactory.ctorParameters = function () { return [
        { type: ComponentFactoryResolver },
        { type: NgZone },
        { type: Injector },
        { type: PositioningService },
        { type: ApplicationRef }
    ]; };
    ComponentLoaderFactory = __decorate([
        Injectable(),
        __metadata("design:paramtypes", [ComponentFactoryResolver,
            NgZone,
            Injector,
            PositioningService,
            ApplicationRef])
    ], ComponentLoaderFactory);
    return ComponentLoaderFactory;
}());
export { ComponentLoaderFactory };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29tcG9uZW50LWxvYWRlci5mYWN0b3J5LmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS91dGlscy9jb21wb25lbnQtbG9hZGVyL2NvbXBvbmVudC1sb2FkZXIuZmFjdG9yeS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUEsT0FBTyxFQUNMLGNBQWMsRUFBRSx3QkFBd0IsRUFBRSxVQUFVLEVBQUUsVUFBVSxFQUFFLFFBQVEsRUFDMUUsTUFBTSxFQUFFLFNBQVMsRUFBRSxnQkFBZ0IsRUFDcEMsTUFBTSxlQUFlLENBQUM7QUFDdkIsT0FBTyxFQUFFLGVBQWUsRUFBRSxNQUFNLDBCQUEwQixDQUFDO0FBQzNELE9BQU8sRUFBRSxrQkFBa0IsRUFBRSxNQUFNLHNDQUFzQyxDQUFDO0FBRzFFO0lBQ0UsZ0NBQW9CLHlCQUFtRCxFQUNuRCxPQUFlLEVBQ2YsU0FBbUIsRUFDbkIsV0FBK0IsRUFDL0IsZUFBK0I7UUFKL0IsOEJBQXlCLEdBQXpCLHlCQUF5QixDQUEwQjtRQUNuRCxZQUFPLEdBQVAsT0FBTyxDQUFRO1FBQ2YsY0FBUyxHQUFULFNBQVMsQ0FBVTtRQUNuQixnQkFBVyxHQUFYLFdBQVcsQ0FBb0I7UUFDL0Isb0JBQWUsR0FBZixlQUFlLENBQWdCO0lBQUcsQ0FBQztJQUV2RCw2Q0FBWSxHQUFaLFVBQWdCLFdBQXVCLEVBQ3ZCLGlCQUFtQyxFQUNuQyxTQUFvQjtRQUNsQyxPQUFPLElBQUksZUFBZSxDQUN4QixpQkFBaUIsRUFDakIsU0FBUyxFQUNULFdBQVcsRUFDWCxJQUFJLENBQUMsU0FBUyxFQUNkLElBQUksQ0FBQyx5QkFBeUIsRUFDOUIsSUFBSSxDQUFDLE9BQU8sRUFDWixJQUFJLENBQUMsZUFBZSxFQUNwQixJQUFJLENBQUMsV0FBVyxDQUNqQixDQUFDO0lBQ0osQ0FBQzs7Z0JBbkI4Qyx3QkFBd0I7Z0JBQzFDLE1BQU07Z0JBQ0osUUFBUTtnQkFDTixrQkFBa0I7Z0JBQ2QsY0FBYzs7SUFMeEMsc0JBQXNCO1FBRGxDLFVBQVUsRUFBRTt5Q0FFb0Msd0JBQXdCO1lBQzFDLE1BQU07WUFDSixRQUFRO1lBQ04sa0JBQWtCO1lBQ2QsY0FBYztPQUx4QyxzQkFBc0IsQ0FxQmxDO0lBQUQsNkJBQUM7Q0FBQSxBQXJCRCxJQXFCQztTQXJCWSxzQkFBc0IiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1xuICBBcHBsaWNhdGlvblJlZiwgQ29tcG9uZW50RmFjdG9yeVJlc29sdmVyLCBFbGVtZW50UmVmLCBJbmplY3RhYmxlLCBJbmplY3RvcixcbiAgTmdab25lLCBSZW5kZXJlcjIsIFZpZXdDb250YWluZXJSZWZcbn0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQgeyBDb21wb25lbnRMb2FkZXIgfSBmcm9tICcuL2NvbXBvbmVudC1sb2FkZXIuY2xhc3MnO1xuaW1wb3J0IHsgUG9zaXRpb25pbmdTZXJ2aWNlIH0gZnJvbSAnLi8uLi9wb3NpdGlvbmluZy9wb3NpdGlvbmluZy5zZXJ2aWNlJztcblxuQEluamVjdGFibGUoKVxuZXhwb3J0IGNsYXNzIENvbXBvbmVudExvYWRlckZhY3Rvcnkge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9jb21wb25lbnRGYWN0b3J5UmVzb2x2ZXI6IENvbXBvbmVudEZhY3RvcnlSZXNvbHZlcixcbiAgICAgICAgICAgICAgcHJpdmF0ZSBfbmdab25lOiBOZ1pvbmUsXG4gICAgICAgICAgICAgIHByaXZhdGUgX2luamVjdG9yOiBJbmplY3RvcixcbiAgICAgICAgICAgICAgcHJpdmF0ZSBfcG9zU2VydmljZTogUG9zaXRpb25pbmdTZXJ2aWNlLFxuICAgICAgICAgICAgICBwcml2YXRlIF9hcHBsaWNhdGlvblJlZjogQXBwbGljYXRpb25SZWYpIHt9XG5cbiAgY3JlYXRlTG9hZGVyPFQ+KF9lbGVtZW50UmVmOiBFbGVtZW50UmVmLFxuICAgICAgICAgICAgICAgICAgX3ZpZXdDb250YWluZXJSZWY6IFZpZXdDb250YWluZXJSZWYsXG4gICAgICAgICAgICAgICAgICBfcmVuZGVyZXI6IFJlbmRlcmVyMik6IENvbXBvbmVudExvYWRlcjxUPiB7XG4gICAgcmV0dXJuIG5ldyBDb21wb25lbnRMb2FkZXI8VD4oXG4gICAgICBfdmlld0NvbnRhaW5lclJlZixcbiAgICAgIF9yZW5kZXJlcixcbiAgICAgIF9lbGVtZW50UmVmLFxuICAgICAgdGhpcy5faW5qZWN0b3IsXG4gICAgICB0aGlzLl9jb21wb25lbnRGYWN0b3J5UmVzb2x2ZXIsXG4gICAgICB0aGlzLl9uZ1pvbmUsXG4gICAgICB0aGlzLl9hcHBsaWNhdGlvblJlZixcbiAgICAgIHRoaXMuX3Bvc1NlcnZpY2VcbiAgICApO1xuICB9XG59XG4iXX0=