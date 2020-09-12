/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { BasePortalOutlet } from './portal';
/**
 * A PortalOutlet for attaching portals to an arbitrary DOM element outside of the Angular
 * application context.
 */
export class DomPortalOutlet extends BasePortalOutlet {
    constructor(
    /** Element into which the content is projected. */
    outletElement, _componentFactoryResolver, _appRef, _defaultInjector, 
    /**
     * @deprecated `_document` Parameter to be made required.
     * @breaking-change 10.0.0
     */
    _document) {
        super();
        this.outletElement = outletElement;
        this._componentFactoryResolver = _componentFactoryResolver;
        this._appRef = _appRef;
        this._defaultInjector = _defaultInjector;
        /**
         * Attaches a DOM portal by transferring its content into the outlet.
         * @param portal Portal to be attached.
         * @deprecated To be turned into a method.
         * @breaking-change 10.0.0
         */
        this.attachDomPortal = (portal) => {
            // @breaking-change 10.0.0 Remove check and error once the
            // `_document` constructor parameter is required.
            if (!this._document && (typeof ngDevMode === 'undefined' || ngDevMode)) {
                throw Error('Cannot attach DOM portal without _document constructor parameter');
            }
            const element = portal.element;
            if (!element.parentNode && (typeof ngDevMode === 'undefined' || ngDevMode)) {
                throw Error('DOM portal content must be attached to a parent node.');
            }
            // Anchor used to save the element's previous position so
            // that we can restore it when the portal is detached.
            const anchorNode = this._document.createComment('dom-portal');
            element.parentNode.insertBefore(anchorNode, element);
            this.outletElement.appendChild(element);
            super.setDisposeFn(() => {
                // We can't use `replaceWith` here because IE doesn't support it.
                if (anchorNode.parentNode) {
                    anchorNode.parentNode.replaceChild(element, anchorNode);
                }
            });
        };
        this._document = _document;
    }
    /**
     * Attach the given ComponentPortal to DOM element using the ComponentFactoryResolver.
     * @param portal Portal to be attached
     * @returns Reference to the created component.
     */
    attachComponentPortal(portal) {
        const resolver = portal.componentFactoryResolver || this._componentFactoryResolver;
        const componentFactory = resolver.resolveComponentFactory(portal.component);
        let componentRef;
        // If the portal specifies a ViewContainerRef, we will use that as the attachment point
        // for the component (in terms of Angular's component tree, not rendering).
        // When the ViewContainerRef is missing, we use the factory to create the component directly
        // and then manually attach the view to the application.
        if (portal.viewContainerRef) {
            componentRef = portal.viewContainerRef.createComponent(componentFactory, portal.viewContainerRef.length, portal.injector || portal.viewContainerRef.injector);
            this.setDisposeFn(() => componentRef.destroy());
        }
        else {
            componentRef = componentFactory.create(portal.injector || this._defaultInjector);
            this._appRef.attachView(componentRef.hostView);
            this.setDisposeFn(() => {
                this._appRef.detachView(componentRef.hostView);
                componentRef.destroy();
            });
        }
        // At this point the component has been instantiated, so we move it to the location in the DOM
        // where we want it to be rendered.
        this.outletElement.appendChild(this._getComponentRootNode(componentRef));
        return componentRef;
    }
    /**
     * Attaches a template portal to the DOM as an embedded view.
     * @param portal Portal to be attached.
     * @returns Reference to the created embedded view.
     */
    attachTemplatePortal(portal) {
        let viewContainer = portal.viewContainerRef;
        let viewRef = viewContainer.createEmbeddedView(portal.templateRef, portal.context);
        // The method `createEmbeddedView` will add the view as a child of the viewContainer.
        // But for the DomPortalOutlet the view can be added everywhere in the DOM
        // (e.g Overlay Container) To move the view to the specified host element. We just
        // re-append the existing root nodes.
        viewRef.rootNodes.forEach(rootNode => this.outletElement.appendChild(rootNode));
        // Note that we want to detect changes after the nodes have been moved so that
        // any directives inside the portal that are looking at the DOM inside a lifecycle
        // hook won't be invoked too early.
        viewRef.detectChanges();
        this.setDisposeFn((() => {
            let index = viewContainer.indexOf(viewRef);
            if (index !== -1) {
                viewContainer.remove(index);
            }
        }));
        // TODO(jelbourn): Return locals from view.
        return viewRef;
    }
    /**
     * Clears out a portal from the DOM.
     */
    dispose() {
        super.dispose();
        if (this.outletElement.parentNode != null) {
            this.outletElement.parentNode.removeChild(this.outletElement);
        }
    }
    /** Gets the root HTMLElement for an instantiated component. */
    _getComponentRootNode(componentRef) {
        return componentRef.hostView.rootNodes[0];
    }
}
/**
 * @deprecated Use `DomPortalOutlet` instead.
 * @breaking-change 9.0.0
 */
export class DomPortalHost extends DomPortalOutlet {
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZG9tLXBvcnRhbC1vdXRsZXQuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL3BvcnRhbC9kb20tcG9ydGFsLW91dGxldC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFTSCxPQUFPLEVBQUMsZ0JBQWdCLEVBQTZDLE1BQU0sVUFBVSxDQUFDO0FBR3RGOzs7R0FHRztBQUNILE1BQU0sT0FBTyxlQUFnQixTQUFRLGdCQUFnQjtJQUduRDtJQUNJLG1EQUFtRDtJQUM1QyxhQUFzQixFQUNyQix5QkFBbUQsRUFDbkQsT0FBdUIsRUFDdkIsZ0JBQTBCO0lBRWxDOzs7T0FHRztJQUNILFNBQWU7UUFDakIsS0FBSyxFQUFFLENBQUM7UUFWQyxrQkFBYSxHQUFiLGFBQWEsQ0FBUztRQUNyQiw4QkFBeUIsR0FBekIseUJBQXlCLENBQTBCO1FBQ25ELFlBQU8sR0FBUCxPQUFPLENBQWdCO1FBQ3ZCLHFCQUFnQixHQUFoQixnQkFBZ0IsQ0FBVTtRQThFdEM7Ozs7O1dBS0c7UUFDSCxvQkFBZSxHQUFHLENBQUMsTUFBaUIsRUFBRSxFQUFFO1lBQ3RDLDBEQUEwRDtZQUMxRCxpREFBaUQ7WUFDakQsSUFBSSxDQUFDLElBQUksQ0FBQyxTQUFTLElBQUksQ0FBQyxPQUFPLFNBQVMsS0FBSyxXQUFXLElBQUksU0FBUyxDQUFDLEVBQUU7Z0JBQ3RFLE1BQU0sS0FBSyxDQUFDLGtFQUFrRSxDQUFDLENBQUM7YUFDakY7WUFFRCxNQUFNLE9BQU8sR0FBRyxNQUFNLENBQUMsT0FBTyxDQUFDO1lBQy9CLElBQUksQ0FBQyxPQUFPLENBQUMsVUFBVSxJQUFJLENBQUMsT0FBTyxTQUFTLEtBQUssV0FBVyxJQUFJLFNBQVMsQ0FBQyxFQUFFO2dCQUMxRSxNQUFNLEtBQUssQ0FBQyx1REFBdUQsQ0FBQyxDQUFDO2FBQ3RFO1lBRUQseURBQXlEO1lBQ3pELHNEQUFzRDtZQUN0RCxNQUFNLFVBQVUsR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDLGFBQWEsQ0FBQyxZQUFZLENBQUMsQ0FBQztZQUU5RCxPQUFPLENBQUMsVUFBVyxDQUFDLFlBQVksQ0FBQyxVQUFVLEVBQUUsT0FBTyxDQUFDLENBQUM7WUFDdEQsSUFBSSxDQUFDLGFBQWEsQ0FBQyxXQUFXLENBQUMsT0FBTyxDQUFDLENBQUM7WUFFeEMsS0FBSyxDQUFDLFlBQVksQ0FBQyxHQUFHLEVBQUU7Z0JBQ3RCLGlFQUFpRTtnQkFDakUsSUFBSSxVQUFVLENBQUMsVUFBVSxFQUFFO29CQUN6QixVQUFVLENBQUMsVUFBVSxDQUFDLFlBQVksQ0FBQyxPQUFPLEVBQUUsVUFBVSxDQUFDLENBQUM7aUJBQ3pEO1lBQ0gsQ0FBQyxDQUFDLENBQUM7UUFDTCxDQUFDLENBQUE7UUFyR0MsSUFBSSxDQUFDLFNBQVMsR0FBRyxTQUFTLENBQUM7SUFDN0IsQ0FBQztJQUVEOzs7O09BSUc7SUFDSCxxQkFBcUIsQ0FBSSxNQUEwQjtRQUNqRCxNQUFNLFFBQVEsR0FBRyxNQUFNLENBQUMsd0JBQXdCLElBQUksSUFBSSxDQUFDLHlCQUF5QixDQUFDO1FBQ25GLE1BQU0sZ0JBQWdCLEdBQUcsUUFBUSxDQUFDLHVCQUF1QixDQUFDLE1BQU0sQ0FBQyxTQUFTLENBQUMsQ0FBQztRQUM1RSxJQUFJLFlBQTZCLENBQUM7UUFFbEMsdUZBQXVGO1FBQ3ZGLDJFQUEyRTtRQUMzRSw0RkFBNEY7UUFDNUYsd0RBQXdEO1FBQ3hELElBQUksTUFBTSxDQUFDLGdCQUFnQixFQUFFO1lBQzNCLFlBQVksR0FBRyxNQUFNLENBQUMsZ0JBQWdCLENBQUMsZUFBZSxDQUNsRCxnQkFBZ0IsRUFDaEIsTUFBTSxDQUFDLGdCQUFnQixDQUFDLE1BQU0sRUFDOUIsTUFBTSxDQUFDLFFBQVEsSUFBSSxNQUFNLENBQUMsZ0JBQWdCLENBQUMsUUFBUSxDQUFDLENBQUM7WUFFekQsSUFBSSxDQUFDLFlBQVksQ0FBQyxHQUFHLEVBQUUsQ0FBQyxZQUFZLENBQUMsT0FBTyxFQUFFLENBQUMsQ0FBQztTQUNqRDthQUFNO1lBQ0wsWUFBWSxHQUFHLGdCQUFnQixDQUFDLE1BQU0sQ0FBQyxNQUFNLENBQUMsUUFBUSxJQUFJLElBQUksQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDO1lBQ2pGLElBQUksQ0FBQyxPQUFPLENBQUMsVUFBVSxDQUFDLFlBQVksQ0FBQyxRQUFRLENBQUMsQ0FBQztZQUMvQyxJQUFJLENBQUMsWUFBWSxDQUFDLEdBQUcsRUFBRTtnQkFDckIsSUFBSSxDQUFDLE9BQU8sQ0FBQyxVQUFVLENBQUMsWUFBWSxDQUFDLFFBQVEsQ0FBQyxDQUFDO2dCQUMvQyxZQUFZLENBQUMsT0FBTyxFQUFFLENBQUM7WUFDekIsQ0FBQyxDQUFDLENBQUM7U0FDSjtRQUNELDhGQUE4RjtRQUM5RixtQ0FBbUM7UUFDbkMsSUFBSSxDQUFDLGFBQWEsQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUFDLHFCQUFxQixDQUFDLFlBQVksQ0FBQyxDQUFDLENBQUM7UUFFekUsT0FBTyxZQUFZLENBQUM7SUFDdEIsQ0FBQztJQUVEOzs7O09BSUc7SUFDSCxvQkFBb0IsQ0FBSSxNQUF5QjtRQUMvQyxJQUFJLGFBQWEsR0FBRyxNQUFNLENBQUMsZ0JBQWdCLENBQUM7UUFDNUMsSUFBSSxPQUFPLEdBQUcsYUFBYSxDQUFDLGtCQUFrQixDQUFDLE1BQU0sQ0FBQyxXQUFXLEVBQUUsTUFBTSxDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBRW5GLHFGQUFxRjtRQUNyRiwwRUFBMEU7UUFDMUUsa0ZBQWtGO1FBQ2xGLHFDQUFxQztRQUNyQyxPQUFPLENBQUMsU0FBUyxDQUFDLE9BQU8sQ0FBQyxRQUFRLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxhQUFhLENBQUMsV0FBVyxDQUFDLFFBQVEsQ0FBQyxDQUFDLENBQUM7UUFFaEYsOEVBQThFO1FBQzlFLGtGQUFrRjtRQUNsRixtQ0FBbUM7UUFDbkMsT0FBTyxDQUFDLGFBQWEsRUFBRSxDQUFDO1FBRXhCLElBQUksQ0FBQyxZQUFZLENBQUMsQ0FBQyxHQUFHLEVBQUU7WUFDdEIsSUFBSSxLQUFLLEdBQUcsYUFBYSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsQ0FBQztZQUMzQyxJQUFJLEtBQUssS0FBSyxDQUFDLENBQUMsRUFBRTtnQkFDaEIsYUFBYSxDQUFDLE1BQU0sQ0FBQyxLQUFLLENBQUMsQ0FBQzthQUM3QjtRQUNILENBQUMsQ0FBQyxDQUFDLENBQUM7UUFFSiwyQ0FBMkM7UUFDM0MsT0FBTyxPQUFPLENBQUM7SUFDakIsQ0FBQztJQW1DRDs7T0FFRztJQUNILE9BQU87UUFDTCxLQUFLLENBQUMsT0FBTyxFQUFFLENBQUM7UUFDaEIsSUFBSSxJQUFJLENBQUMsYUFBYSxDQUFDLFVBQVUsSUFBSSxJQUFJLEVBQUU7WUFDekMsSUFBSSxDQUFDLGFBQWEsQ0FBQyxVQUFVLENBQUMsV0FBVyxDQUFDLElBQUksQ0FBQyxhQUFhLENBQUMsQ0FBQztTQUMvRDtJQUNILENBQUM7SUFFRCwrREFBK0Q7SUFDdkQscUJBQXFCLENBQUMsWUFBK0I7UUFDM0QsT0FBUSxZQUFZLENBQUMsUUFBaUMsQ0FBQyxTQUFTLENBQUMsQ0FBQyxDQUFnQixDQUFDO0lBQ3JGLENBQUM7Q0FDRjtBQUVEOzs7R0FHRztBQUNILE1BQU0sT0FBTyxhQUFjLFNBQVEsZUFBZTtDQUFHIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7XG4gIENvbXBvbmVudEZhY3RvcnlSZXNvbHZlcixcbiAgQ29tcG9uZW50UmVmLFxuICBFbWJlZGRlZFZpZXdSZWYsXG4gIEFwcGxpY2F0aW9uUmVmLFxuICBJbmplY3Rvcixcbn0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge0Jhc2VQb3J0YWxPdXRsZXQsIENvbXBvbmVudFBvcnRhbCwgVGVtcGxhdGVQb3J0YWwsIERvbVBvcnRhbH0gZnJvbSAnLi9wb3J0YWwnO1xuXG5cbi8qKlxuICogQSBQb3J0YWxPdXRsZXQgZm9yIGF0dGFjaGluZyBwb3J0YWxzIHRvIGFuIGFyYml0cmFyeSBET00gZWxlbWVudCBvdXRzaWRlIG9mIHRoZSBBbmd1bGFyXG4gKiBhcHBsaWNhdGlvbiBjb250ZXh0LlxuICovXG5leHBvcnQgY2xhc3MgRG9tUG9ydGFsT3V0bGV0IGV4dGVuZHMgQmFzZVBvcnRhbE91dGxldCB7XG4gIHByaXZhdGUgX2RvY3VtZW50OiBEb2N1bWVudDtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIC8qKiBFbGVtZW50IGludG8gd2hpY2ggdGhlIGNvbnRlbnQgaXMgcHJvamVjdGVkLiAqL1xuICAgICAgcHVibGljIG91dGxldEVsZW1lbnQ6IEVsZW1lbnQsXG4gICAgICBwcml2YXRlIF9jb21wb25lbnRGYWN0b3J5UmVzb2x2ZXI6IENvbXBvbmVudEZhY3RvcnlSZXNvbHZlcixcbiAgICAgIHByaXZhdGUgX2FwcFJlZjogQXBwbGljYXRpb25SZWYsXG4gICAgICBwcml2YXRlIF9kZWZhdWx0SW5qZWN0b3I6IEluamVjdG9yLFxuXG4gICAgICAvKipcbiAgICAgICAqIEBkZXByZWNhdGVkIGBfZG9jdW1lbnRgIFBhcmFtZXRlciB0byBiZSBtYWRlIHJlcXVpcmVkLlxuICAgICAgICogQGJyZWFraW5nLWNoYW5nZSAxMC4wLjBcbiAgICAgICAqL1xuICAgICAgX2RvY3VtZW50PzogYW55KSB7XG4gICAgc3VwZXIoKTtcbiAgICB0aGlzLl9kb2N1bWVudCA9IF9kb2N1bWVudDtcbiAgfVxuXG4gIC8qKlxuICAgKiBBdHRhY2ggdGhlIGdpdmVuIENvbXBvbmVudFBvcnRhbCB0byBET00gZWxlbWVudCB1c2luZyB0aGUgQ29tcG9uZW50RmFjdG9yeVJlc29sdmVyLlxuICAgKiBAcGFyYW0gcG9ydGFsIFBvcnRhbCB0byBiZSBhdHRhY2hlZFxuICAgKiBAcmV0dXJucyBSZWZlcmVuY2UgdG8gdGhlIGNyZWF0ZWQgY29tcG9uZW50LlxuICAgKi9cbiAgYXR0YWNoQ29tcG9uZW50UG9ydGFsPFQ+KHBvcnRhbDogQ29tcG9uZW50UG9ydGFsPFQ+KTogQ29tcG9uZW50UmVmPFQ+IHtcbiAgICBjb25zdCByZXNvbHZlciA9IHBvcnRhbC5jb21wb25lbnRGYWN0b3J5UmVzb2x2ZXIgfHwgdGhpcy5fY29tcG9uZW50RmFjdG9yeVJlc29sdmVyO1xuICAgIGNvbnN0IGNvbXBvbmVudEZhY3RvcnkgPSByZXNvbHZlci5yZXNvbHZlQ29tcG9uZW50RmFjdG9yeShwb3J0YWwuY29tcG9uZW50KTtcbiAgICBsZXQgY29tcG9uZW50UmVmOiBDb21wb25lbnRSZWY8VD47XG5cbiAgICAvLyBJZiB0aGUgcG9ydGFsIHNwZWNpZmllcyBhIFZpZXdDb250YWluZXJSZWYsIHdlIHdpbGwgdXNlIHRoYXQgYXMgdGhlIGF0dGFjaG1lbnQgcG9pbnRcbiAgICAvLyBmb3IgdGhlIGNvbXBvbmVudCAoaW4gdGVybXMgb2YgQW5ndWxhcidzIGNvbXBvbmVudCB0cmVlLCBub3QgcmVuZGVyaW5nKS5cbiAgICAvLyBXaGVuIHRoZSBWaWV3Q29udGFpbmVyUmVmIGlzIG1pc3NpbmcsIHdlIHVzZSB0aGUgZmFjdG9yeSB0byBjcmVhdGUgdGhlIGNvbXBvbmVudCBkaXJlY3RseVxuICAgIC8vIGFuZCB0aGVuIG1hbnVhbGx5IGF0dGFjaCB0aGUgdmlldyB0byB0aGUgYXBwbGljYXRpb24uXG4gICAgaWYgKHBvcnRhbC52aWV3Q29udGFpbmVyUmVmKSB7XG4gICAgICBjb21wb25lbnRSZWYgPSBwb3J0YWwudmlld0NvbnRhaW5lclJlZi5jcmVhdGVDb21wb25lbnQoXG4gICAgICAgICAgY29tcG9uZW50RmFjdG9yeSxcbiAgICAgICAgICBwb3J0YWwudmlld0NvbnRhaW5lclJlZi5sZW5ndGgsXG4gICAgICAgICAgcG9ydGFsLmluamVjdG9yIHx8IHBvcnRhbC52aWV3Q29udGFpbmVyUmVmLmluamVjdG9yKTtcblxuICAgICAgdGhpcy5zZXREaXNwb3NlRm4oKCkgPT4gY29tcG9uZW50UmVmLmRlc3Ryb3koKSk7XG4gICAgfSBlbHNlIHtcbiAgICAgIGNvbXBvbmVudFJlZiA9IGNvbXBvbmVudEZhY3RvcnkuY3JlYXRlKHBvcnRhbC5pbmplY3RvciB8fCB0aGlzLl9kZWZhdWx0SW5qZWN0b3IpO1xuICAgICAgdGhpcy5fYXBwUmVmLmF0dGFjaFZpZXcoY29tcG9uZW50UmVmLmhvc3RWaWV3KTtcbiAgICAgIHRoaXMuc2V0RGlzcG9zZUZuKCgpID0+IHtcbiAgICAgICAgdGhpcy5fYXBwUmVmLmRldGFjaFZpZXcoY29tcG9uZW50UmVmLmhvc3RWaWV3KTtcbiAgICAgICAgY29tcG9uZW50UmVmLmRlc3Ryb3koKTtcbiAgICAgIH0pO1xuICAgIH1cbiAgICAvLyBBdCB0aGlzIHBvaW50IHRoZSBjb21wb25lbnQgaGFzIGJlZW4gaW5zdGFudGlhdGVkLCBzbyB3ZSBtb3ZlIGl0IHRvIHRoZSBsb2NhdGlvbiBpbiB0aGUgRE9NXG4gICAgLy8gd2hlcmUgd2Ugd2FudCBpdCB0byBiZSByZW5kZXJlZC5cbiAgICB0aGlzLm91dGxldEVsZW1lbnQuYXBwZW5kQ2hpbGQodGhpcy5fZ2V0Q29tcG9uZW50Um9vdE5vZGUoY29tcG9uZW50UmVmKSk7XG5cbiAgICByZXR1cm4gY29tcG9uZW50UmVmO1xuICB9XG5cbiAgLyoqXG4gICAqIEF0dGFjaGVzIGEgdGVtcGxhdGUgcG9ydGFsIHRvIHRoZSBET00gYXMgYW4gZW1iZWRkZWQgdmlldy5cbiAgICogQHBhcmFtIHBvcnRhbCBQb3J0YWwgdG8gYmUgYXR0YWNoZWQuXG4gICAqIEByZXR1cm5zIFJlZmVyZW5jZSB0byB0aGUgY3JlYXRlZCBlbWJlZGRlZCB2aWV3LlxuICAgKi9cbiAgYXR0YWNoVGVtcGxhdGVQb3J0YWw8Qz4ocG9ydGFsOiBUZW1wbGF0ZVBvcnRhbDxDPik6IEVtYmVkZGVkVmlld1JlZjxDPiB7XG4gICAgbGV0IHZpZXdDb250YWluZXIgPSBwb3J0YWwudmlld0NvbnRhaW5lclJlZjtcbiAgICBsZXQgdmlld1JlZiA9IHZpZXdDb250YWluZXIuY3JlYXRlRW1iZWRkZWRWaWV3KHBvcnRhbC50ZW1wbGF0ZVJlZiwgcG9ydGFsLmNvbnRleHQpO1xuXG4gICAgLy8gVGhlIG1ldGhvZCBgY3JlYXRlRW1iZWRkZWRWaWV3YCB3aWxsIGFkZCB0aGUgdmlldyBhcyBhIGNoaWxkIG9mIHRoZSB2aWV3Q29udGFpbmVyLlxuICAgIC8vIEJ1dCBmb3IgdGhlIERvbVBvcnRhbE91dGxldCB0aGUgdmlldyBjYW4gYmUgYWRkZWQgZXZlcnl3aGVyZSBpbiB0aGUgRE9NXG4gICAgLy8gKGUuZyBPdmVybGF5IENvbnRhaW5lcikgVG8gbW92ZSB0aGUgdmlldyB0byB0aGUgc3BlY2lmaWVkIGhvc3QgZWxlbWVudC4gV2UganVzdFxuICAgIC8vIHJlLWFwcGVuZCB0aGUgZXhpc3Rpbmcgcm9vdCBub2Rlcy5cbiAgICB2aWV3UmVmLnJvb3ROb2Rlcy5mb3JFYWNoKHJvb3ROb2RlID0+IHRoaXMub3V0bGV0RWxlbWVudC5hcHBlbmRDaGlsZChyb290Tm9kZSkpO1xuXG4gICAgLy8gTm90ZSB0aGF0IHdlIHdhbnQgdG8gZGV0ZWN0IGNoYW5nZXMgYWZ0ZXIgdGhlIG5vZGVzIGhhdmUgYmVlbiBtb3ZlZCBzbyB0aGF0XG4gICAgLy8gYW55IGRpcmVjdGl2ZXMgaW5zaWRlIHRoZSBwb3J0YWwgdGhhdCBhcmUgbG9va2luZyBhdCB0aGUgRE9NIGluc2lkZSBhIGxpZmVjeWNsZVxuICAgIC8vIGhvb2sgd29uJ3QgYmUgaW52b2tlZCB0b28gZWFybHkuXG4gICAgdmlld1JlZi5kZXRlY3RDaGFuZ2VzKCk7XG5cbiAgICB0aGlzLnNldERpc3Bvc2VGbigoKCkgPT4ge1xuICAgICAgbGV0IGluZGV4ID0gdmlld0NvbnRhaW5lci5pbmRleE9mKHZpZXdSZWYpO1xuICAgICAgaWYgKGluZGV4ICE9PSAtMSkge1xuICAgICAgICB2aWV3Q29udGFpbmVyLnJlbW92ZShpbmRleCk7XG4gICAgICB9XG4gICAgfSkpO1xuXG4gICAgLy8gVE9ETyhqZWxib3Vybik6IFJldHVybiBsb2NhbHMgZnJvbSB2aWV3LlxuICAgIHJldHVybiB2aWV3UmVmO1xuICB9XG5cbiAgLyoqXG4gICAqIEF0dGFjaGVzIGEgRE9NIHBvcnRhbCBieSB0cmFuc2ZlcnJpbmcgaXRzIGNvbnRlbnQgaW50byB0aGUgb3V0bGV0LlxuICAgKiBAcGFyYW0gcG9ydGFsIFBvcnRhbCB0byBiZSBhdHRhY2hlZC5cbiAgICogQGRlcHJlY2F0ZWQgVG8gYmUgdHVybmVkIGludG8gYSBtZXRob2QuXG4gICAqIEBicmVha2luZy1jaGFuZ2UgMTAuMC4wXG4gICAqL1xuICBhdHRhY2hEb21Qb3J0YWwgPSAocG9ydGFsOiBEb21Qb3J0YWwpID0+IHtcbiAgICAvLyBAYnJlYWtpbmctY2hhbmdlIDEwLjAuMCBSZW1vdmUgY2hlY2sgYW5kIGVycm9yIG9uY2UgdGhlXG4gICAgLy8gYF9kb2N1bWVudGAgY29uc3RydWN0b3IgcGFyYW1ldGVyIGlzIHJlcXVpcmVkLlxuICAgIGlmICghdGhpcy5fZG9jdW1lbnQgJiYgKHR5cGVvZiBuZ0Rldk1vZGUgPT09ICd1bmRlZmluZWQnIHx8IG5nRGV2TW9kZSkpIHtcbiAgICAgIHRocm93IEVycm9yKCdDYW5ub3QgYXR0YWNoIERPTSBwb3J0YWwgd2l0aG91dCBfZG9jdW1lbnQgY29uc3RydWN0b3IgcGFyYW1ldGVyJyk7XG4gICAgfVxuXG4gICAgY29uc3QgZWxlbWVudCA9IHBvcnRhbC5lbGVtZW50O1xuICAgIGlmICghZWxlbWVudC5wYXJlbnROb2RlICYmICh0eXBlb2YgbmdEZXZNb2RlID09PSAndW5kZWZpbmVkJyB8fCBuZ0Rldk1vZGUpKSB7XG4gICAgICB0aHJvdyBFcnJvcignRE9NIHBvcnRhbCBjb250ZW50IG11c3QgYmUgYXR0YWNoZWQgdG8gYSBwYXJlbnQgbm9kZS4nKTtcbiAgICB9XG5cbiAgICAvLyBBbmNob3IgdXNlZCB0byBzYXZlIHRoZSBlbGVtZW50J3MgcHJldmlvdXMgcG9zaXRpb24gc29cbiAgICAvLyB0aGF0IHdlIGNhbiByZXN0b3JlIGl0IHdoZW4gdGhlIHBvcnRhbCBpcyBkZXRhY2hlZC5cbiAgICBjb25zdCBhbmNob3JOb2RlID0gdGhpcy5fZG9jdW1lbnQuY3JlYXRlQ29tbWVudCgnZG9tLXBvcnRhbCcpO1xuXG4gICAgZWxlbWVudC5wYXJlbnROb2RlIS5pbnNlcnRCZWZvcmUoYW5jaG9yTm9kZSwgZWxlbWVudCk7XG4gICAgdGhpcy5vdXRsZXRFbGVtZW50LmFwcGVuZENoaWxkKGVsZW1lbnQpO1xuXG4gICAgc3VwZXIuc2V0RGlzcG9zZUZuKCgpID0+IHtcbiAgICAgIC8vIFdlIGNhbid0IHVzZSBgcmVwbGFjZVdpdGhgIGhlcmUgYmVjYXVzZSBJRSBkb2Vzbid0IHN1cHBvcnQgaXQuXG4gICAgICBpZiAoYW5jaG9yTm9kZS5wYXJlbnROb2RlKSB7XG4gICAgICAgIGFuY2hvck5vZGUucGFyZW50Tm9kZS5yZXBsYWNlQ2hpbGQoZWxlbWVudCwgYW5jaG9yTm9kZSk7XG4gICAgICB9XG4gICAgfSk7XG4gIH1cblxuICAvKipcbiAgICogQ2xlYXJzIG91dCBhIHBvcnRhbCBmcm9tIHRoZSBET00uXG4gICAqL1xuICBkaXNwb3NlKCk6IHZvaWQge1xuICAgIHN1cGVyLmRpc3Bvc2UoKTtcbiAgICBpZiAodGhpcy5vdXRsZXRFbGVtZW50LnBhcmVudE5vZGUgIT0gbnVsbCkge1xuICAgICAgdGhpcy5vdXRsZXRFbGVtZW50LnBhcmVudE5vZGUucmVtb3ZlQ2hpbGQodGhpcy5vdXRsZXRFbGVtZW50KTtcbiAgICB9XG4gIH1cblxuICAvKiogR2V0cyB0aGUgcm9vdCBIVE1MRWxlbWVudCBmb3IgYW4gaW5zdGFudGlhdGVkIGNvbXBvbmVudC4gKi9cbiAgcHJpdmF0ZSBfZ2V0Q29tcG9uZW50Um9vdE5vZGUoY29tcG9uZW50UmVmOiBDb21wb25lbnRSZWY8YW55Pik6IEhUTUxFbGVtZW50IHtcbiAgICByZXR1cm4gKGNvbXBvbmVudFJlZi5ob3N0VmlldyBhcyBFbWJlZGRlZFZpZXdSZWY8YW55Pikucm9vdE5vZGVzWzBdIGFzIEhUTUxFbGVtZW50O1xuICB9XG59XG5cbi8qKlxuICogQGRlcHJlY2F0ZWQgVXNlIGBEb21Qb3J0YWxPdXRsZXRgIGluc3RlYWQuXG4gKiBAYnJlYWtpbmctY2hhbmdlIDkuMC4wXG4gKi9cbmV4cG9ydCBjbGFzcyBEb21Qb3J0YWxIb3N0IGV4dGVuZHMgRG9tUG9ydGFsT3V0bGV0IHt9XG4iXX0=