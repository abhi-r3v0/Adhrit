/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/linker/component_factory_resolver.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { stringify } from '../util/stringify';
import { ComponentFactory } from './component_factory';
/**
 * @param {?} component
 * @return {?}
 */
export function noComponentFactoryError(component) {
    /** @type {?} */
    const error = Error(`No component factory found for ${stringify(component)}. Did you add it to @NgModule.entryComponents?`);
    ((/** @type {?} */ (error)))[ERROR_COMPONENT] = component;
    return error;
}
/** @type {?} */
const ERROR_COMPONENT = 'ngComponent';
/**
 * @param {?} error
 * @return {?}
 */
export function getComponent(error) {
    return ((/** @type {?} */ (error)))[ERROR_COMPONENT];
}
class _NullComponentFactoryResolver {
    /**
     * @template T
     * @param {?} component
     * @return {?}
     */
    resolveComponentFactory(component) {
        throw noComponentFactoryError(component);
    }
}
/**
 * A simple registry that maps `Components` to generated `ComponentFactory` classes
 * that can be used to create instances of components.
 * Use to obtain the factory for a given component type,
 * then use the factory's `create()` method to create a component of that type.
 *
 * @see [Dynamic Components](guide/dynamic-component-loader)
 * \@publicApi
 * @abstract
 */
export class ComponentFactoryResolver {
}
ComponentFactoryResolver.NULL = new _NullComponentFactoryResolver();
if (false) {
    /** @type {?} */
    ComponentFactoryResolver.NULL;
    /**
     * Retrieves the factory object that creates a component of the given type.
     * @abstract
     * @template T
     * @param {?} component The component type.
     * @return {?}
     */
    ComponentFactoryResolver.prototype.resolveComponentFactory = function (component) { };
}
export class CodegenComponentFactoryResolver {
    /**
     * @param {?} factories
     * @param {?} _parent
     * @param {?} _ngModule
     */
    constructor(factories, _parent, _ngModule) {
        this._parent = _parent;
        this._ngModule = _ngModule;
        this._factories = new Map();
        for (let i = 0; i < factories.length; i++) {
            /** @type {?} */
            const factory = factories[i];
            this._factories.set(factory.componentType, factory);
        }
    }
    /**
     * @template T
     * @param {?} component
     * @return {?}
     */
    resolveComponentFactory(component) {
        /** @type {?} */
        let factory = this._factories.get(component);
        if (!factory && this._parent) {
            factory = this._parent.resolveComponentFactory(component);
        }
        if (!factory) {
            throw noComponentFactoryError(component);
        }
        return new ComponentFactoryBoundToModule(factory, this._ngModule);
    }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    CodegenComponentFactoryResolver.prototype._factories;
    /**
     * @type {?}
     * @private
     */
    CodegenComponentFactoryResolver.prototype._parent;
    /**
     * @type {?}
     * @private
     */
    CodegenComponentFactoryResolver.prototype._ngModule;
}
/**
 * @template C
 */
export class ComponentFactoryBoundToModule extends ComponentFactory {
    /**
     * @param {?} factory
     * @param {?} ngModule
     */
    constructor(factory, ngModule) {
        super();
        this.factory = factory;
        this.ngModule = ngModule;
        this.selector = factory.selector;
        this.componentType = factory.componentType;
        this.ngContentSelectors = factory.ngContentSelectors;
        this.inputs = factory.inputs;
        this.outputs = factory.outputs;
    }
    /**
     * @param {?} injector
     * @param {?=} projectableNodes
     * @param {?=} rootSelectorOrNode
     * @param {?=} ngModule
     * @return {?}
     */
    create(injector, projectableNodes, rootSelectorOrNode, ngModule) {
        return this.factory.create(injector, projectableNodes, rootSelectorOrNode, ngModule || this.ngModule);
    }
}
if (false) {
    /** @type {?} */
    ComponentFactoryBoundToModule.prototype.selector;
    /** @type {?} */
    ComponentFactoryBoundToModule.prototype.componentType;
    /** @type {?} */
    ComponentFactoryBoundToModule.prototype.ngContentSelectors;
    /** @type {?} */
    ComponentFactoryBoundToModule.prototype.inputs;
    /** @type {?} */
    ComponentFactoryBoundToModule.prototype.outputs;
    /**
     * @type {?}
     * @private
     */
    ComponentFactoryBoundToModule.prototype.factory;
    /**
     * @type {?}
     * @private
     */
    ComponentFactoryBoundToModule.prototype.ngModule;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29tcG9uZW50X2ZhY3RvcnlfcmVzb2x2ZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9saW5rZXIvY29tcG9uZW50X2ZhY3RvcnlfcmVzb2x2ZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBVUEsT0FBTyxFQUFDLFNBQVMsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBRTVDLE9BQU8sRUFBQyxnQkFBZ0IsRUFBZSxNQUFNLHFCQUFxQixDQUFDOzs7OztBQUduRSxNQUFNLFVBQVUsdUJBQXVCLENBQUMsU0FBbUI7O1VBQ25ELEtBQUssR0FBRyxLQUFLLENBQ2Ysa0NBQWtDLFNBQVMsQ0FBQyxTQUFTLENBQUMsZ0RBQWdELENBQUM7SUFDM0csQ0FBQyxtQkFBQSxLQUFLLEVBQU8sQ0FBQyxDQUFDLGVBQWUsQ0FBQyxHQUFHLFNBQVMsQ0FBQztJQUM1QyxPQUFPLEtBQUssQ0FBQztBQUNmLENBQUM7O01BRUssZUFBZSxHQUFHLGFBQWE7Ozs7O0FBRXJDLE1BQU0sVUFBVSxZQUFZLENBQUMsS0FBWTtJQUN2QyxPQUFPLENBQUMsbUJBQUEsS0FBSyxFQUFPLENBQUMsQ0FBQyxlQUFlLENBQUMsQ0FBQztBQUN6QyxDQUFDO0FBR0QsTUFBTSw2QkFBNkI7Ozs7OztJQUNqQyx1QkFBdUIsQ0FBSSxTQUFvQztRQUM3RCxNQUFNLHVCQUF1QixDQUFDLFNBQVMsQ0FBQyxDQUFDO0lBQzNDLENBQUM7Q0FDRjs7Ozs7Ozs7Ozs7QUFXRCxNQUFNLE9BQWdCLHdCQUF3Qjs7QUFDckMsNkJBQUksR0FBNkIsSUFBSSw2QkFBNkIsRUFBRSxDQUFDOzs7SUFBNUUsOEJBQTRFOzs7Ozs7OztJQUs1RSxzRkFBNkU7O0FBRy9FLE1BQU0sT0FBTywrQkFBK0I7Ozs7OztJQUcxQyxZQUNJLFNBQWtDLEVBQVUsT0FBaUMsRUFDckUsU0FBMkI7UUFEUyxZQUFPLEdBQVAsT0FBTyxDQUEwQjtRQUNyRSxjQUFTLEdBQVQsU0FBUyxDQUFrQjtRQUovQixlQUFVLEdBQUcsSUFBSSxHQUFHLEVBQThCLENBQUM7UUFLekQsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLFNBQVMsQ0FBQyxNQUFNLEVBQUUsQ0FBQyxFQUFFLEVBQUU7O2tCQUNuQyxPQUFPLEdBQUcsU0FBUyxDQUFDLENBQUMsQ0FBQztZQUM1QixJQUFJLENBQUMsVUFBVSxDQUFDLEdBQUcsQ0FBQyxPQUFPLENBQUMsYUFBYSxFQUFFLE9BQU8sQ0FBQyxDQUFDO1NBQ3JEO0lBQ0gsQ0FBQzs7Ozs7O0lBRUQsdUJBQXVCLENBQUksU0FBb0M7O1lBQ3pELE9BQU8sR0FBRyxJQUFJLENBQUMsVUFBVSxDQUFDLEdBQUcsQ0FBQyxTQUFTLENBQUM7UUFDNUMsSUFBSSxDQUFDLE9BQU8sSUFBSSxJQUFJLENBQUMsT0FBTyxFQUFFO1lBQzVCLE9BQU8sR0FBRyxJQUFJLENBQUMsT0FBTyxDQUFDLHVCQUF1QixDQUFDLFNBQVMsQ0FBQyxDQUFDO1NBQzNEO1FBQ0QsSUFBSSxDQUFDLE9BQU8sRUFBRTtZQUNaLE1BQU0sdUJBQXVCLENBQUMsU0FBUyxDQUFDLENBQUM7U0FDMUM7UUFDRCxPQUFPLElBQUksNkJBQTZCLENBQUMsT0FBTyxFQUFFLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztJQUNwRSxDQUFDO0NBQ0Y7Ozs7OztJQXJCQyxxREFBMkQ7Ozs7O0lBR25CLGtEQUF5Qzs7Ozs7SUFDN0Usb0RBQW1DOzs7OztBQW1CekMsTUFBTSxPQUFPLDZCQUFpQyxTQUFRLGdCQUFtQjs7Ozs7SUFPdkUsWUFBb0IsT0FBNEIsRUFBVSxRQUEwQjtRQUNsRixLQUFLLEVBQUUsQ0FBQztRQURVLFlBQU8sR0FBUCxPQUFPLENBQXFCO1FBQVUsYUFBUSxHQUFSLFFBQVEsQ0FBa0I7UUFFbEYsSUFBSSxDQUFDLFFBQVEsR0FBRyxPQUFPLENBQUMsUUFBUSxDQUFDO1FBQ2pDLElBQUksQ0FBQyxhQUFhLEdBQUcsT0FBTyxDQUFDLGFBQWEsQ0FBQztRQUMzQyxJQUFJLENBQUMsa0JBQWtCLEdBQUcsT0FBTyxDQUFDLGtCQUFrQixDQUFDO1FBQ3JELElBQUksQ0FBQyxNQUFNLEdBQUcsT0FBTyxDQUFDLE1BQU0sQ0FBQztRQUM3QixJQUFJLENBQUMsT0FBTyxHQUFHLE9BQU8sQ0FBQyxPQUFPLENBQUM7SUFDakMsQ0FBQzs7Ozs7Ozs7SUFFRCxNQUFNLENBQ0YsUUFBa0IsRUFBRSxnQkFBMEIsRUFBRSxrQkFBK0IsRUFDL0UsUUFBMkI7UUFDN0IsT0FBTyxJQUFJLENBQUMsT0FBTyxDQUFDLE1BQU0sQ0FDdEIsUUFBUSxFQUFFLGdCQUFnQixFQUFFLGtCQUFrQixFQUFFLFFBQVEsSUFBSSxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUM7SUFDakYsQ0FBQztDQUNGOzs7SUFyQkMsaURBQTBCOztJQUMxQixzREFBa0M7O0lBQ2xDLDJEQUFzQzs7SUFDdEMsK0NBQTREOztJQUM1RCxnREFBNkQ7Ozs7O0lBRWpELGdEQUFvQzs7Ozs7SUFBRSxpREFBa0MiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7SW5qZWN0b3J9IGZyb20gJy4uL2RpL2luamVjdG9yJztcbmltcG9ydCB7VHlwZX0gZnJvbSAnLi4vaW50ZXJmYWNlL3R5cGUnO1xuaW1wb3J0IHtzdHJpbmdpZnl9IGZyb20gJy4uL3V0aWwvc3RyaW5naWZ5JztcblxuaW1wb3J0IHtDb21wb25lbnRGYWN0b3J5LCBDb21wb25lbnRSZWZ9IGZyb20gJy4vY29tcG9uZW50X2ZhY3RvcnknO1xuaW1wb3J0IHtOZ01vZHVsZVJlZn0gZnJvbSAnLi9uZ19tb2R1bGVfZmFjdG9yeSc7XG5cbmV4cG9ydCBmdW5jdGlvbiBub0NvbXBvbmVudEZhY3RvcnlFcnJvcihjb21wb25lbnQ6IEZ1bmN0aW9uKSB7XG4gIGNvbnN0IGVycm9yID0gRXJyb3IoXG4gICAgICBgTm8gY29tcG9uZW50IGZhY3RvcnkgZm91bmQgZm9yICR7c3RyaW5naWZ5KGNvbXBvbmVudCl9LiBEaWQgeW91IGFkZCBpdCB0byBATmdNb2R1bGUuZW50cnlDb21wb25lbnRzP2ApO1xuICAoZXJyb3IgYXMgYW55KVtFUlJPUl9DT01QT05FTlRdID0gY29tcG9uZW50O1xuICByZXR1cm4gZXJyb3I7XG59XG5cbmNvbnN0IEVSUk9SX0NPTVBPTkVOVCA9ICduZ0NvbXBvbmVudCc7XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRDb21wb25lbnQoZXJyb3I6IEVycm9yKTogVHlwZTxhbnk+IHtcbiAgcmV0dXJuIChlcnJvciBhcyBhbnkpW0VSUk9SX0NPTVBPTkVOVF07XG59XG5cblxuY2xhc3MgX051bGxDb21wb25lbnRGYWN0b3J5UmVzb2x2ZXIgaW1wbGVtZW50cyBDb21wb25lbnRGYWN0b3J5UmVzb2x2ZXIge1xuICByZXNvbHZlQ29tcG9uZW50RmFjdG9yeTxUPihjb21wb25lbnQ6IHtuZXcgKC4uLmFyZ3M6IGFueVtdKTogVH0pOiBDb21wb25lbnRGYWN0b3J5PFQ+IHtcbiAgICB0aHJvdyBub0NvbXBvbmVudEZhY3RvcnlFcnJvcihjb21wb25lbnQpO1xuICB9XG59XG5cbi8qKlxuICogQSBzaW1wbGUgcmVnaXN0cnkgdGhhdCBtYXBzIGBDb21wb25lbnRzYCB0byBnZW5lcmF0ZWQgYENvbXBvbmVudEZhY3RvcnlgIGNsYXNzZXNcbiAqIHRoYXQgY2FuIGJlIHVzZWQgdG8gY3JlYXRlIGluc3RhbmNlcyBvZiBjb21wb25lbnRzLlxuICogVXNlIHRvIG9idGFpbiB0aGUgZmFjdG9yeSBmb3IgYSBnaXZlbiBjb21wb25lbnQgdHlwZSxcbiAqIHRoZW4gdXNlIHRoZSBmYWN0b3J5J3MgYGNyZWF0ZSgpYCBtZXRob2QgdG8gY3JlYXRlIGEgY29tcG9uZW50IG9mIHRoYXQgdHlwZS5cbiAqXG4gKiBAc2VlIFtEeW5hbWljIENvbXBvbmVudHNdKGd1aWRlL2R5bmFtaWMtY29tcG9uZW50LWxvYWRlcilcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGFic3RyYWN0IGNsYXNzIENvbXBvbmVudEZhY3RvcnlSZXNvbHZlciB7XG4gIHN0YXRpYyBOVUxMOiBDb21wb25lbnRGYWN0b3J5UmVzb2x2ZXIgPSBuZXcgX051bGxDb21wb25lbnRGYWN0b3J5UmVzb2x2ZXIoKTtcbiAgLyoqXG4gICAqIFJldHJpZXZlcyB0aGUgZmFjdG9yeSBvYmplY3QgdGhhdCBjcmVhdGVzIGEgY29tcG9uZW50IG9mIHRoZSBnaXZlbiB0eXBlLlxuICAgKiBAcGFyYW0gY29tcG9uZW50IFRoZSBjb21wb25lbnQgdHlwZS5cbiAgICovXG4gIGFic3RyYWN0IHJlc29sdmVDb21wb25lbnRGYWN0b3J5PFQ+KGNvbXBvbmVudDogVHlwZTxUPik6IENvbXBvbmVudEZhY3Rvcnk8VD47XG59XG5cbmV4cG9ydCBjbGFzcyBDb2RlZ2VuQ29tcG9uZW50RmFjdG9yeVJlc29sdmVyIGltcGxlbWVudHMgQ29tcG9uZW50RmFjdG9yeVJlc29sdmVyIHtcbiAgcHJpdmF0ZSBfZmFjdG9yaWVzID0gbmV3IE1hcDxhbnksIENvbXBvbmVudEZhY3Rvcnk8YW55Pj4oKTtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIGZhY3RvcmllczogQ29tcG9uZW50RmFjdG9yeTxhbnk+W10sIHByaXZhdGUgX3BhcmVudDogQ29tcG9uZW50RmFjdG9yeVJlc29sdmVyLFxuICAgICAgcHJpdmF0ZSBfbmdNb2R1bGU6IE5nTW9kdWxlUmVmPGFueT4pIHtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IGZhY3Rvcmllcy5sZW5ndGg7IGkrKykge1xuICAgICAgY29uc3QgZmFjdG9yeSA9IGZhY3Rvcmllc1tpXTtcbiAgICAgIHRoaXMuX2ZhY3Rvcmllcy5zZXQoZmFjdG9yeS5jb21wb25lbnRUeXBlLCBmYWN0b3J5KTtcbiAgICB9XG4gIH1cblxuICByZXNvbHZlQ29tcG9uZW50RmFjdG9yeTxUPihjb21wb25lbnQ6IHtuZXcgKC4uLmFyZ3M6IGFueVtdKTogVH0pOiBDb21wb25lbnRGYWN0b3J5PFQ+IHtcbiAgICBsZXQgZmFjdG9yeSA9IHRoaXMuX2ZhY3Rvcmllcy5nZXQoY29tcG9uZW50KTtcbiAgICBpZiAoIWZhY3RvcnkgJiYgdGhpcy5fcGFyZW50KSB7XG4gICAgICBmYWN0b3J5ID0gdGhpcy5fcGFyZW50LnJlc29sdmVDb21wb25lbnRGYWN0b3J5KGNvbXBvbmVudCk7XG4gICAgfVxuICAgIGlmICghZmFjdG9yeSkge1xuICAgICAgdGhyb3cgbm9Db21wb25lbnRGYWN0b3J5RXJyb3IoY29tcG9uZW50KTtcbiAgICB9XG4gICAgcmV0dXJuIG5ldyBDb21wb25lbnRGYWN0b3J5Qm91bmRUb01vZHVsZShmYWN0b3J5LCB0aGlzLl9uZ01vZHVsZSk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIENvbXBvbmVudEZhY3RvcnlCb3VuZFRvTW9kdWxlPEM+IGV4dGVuZHMgQ29tcG9uZW50RmFjdG9yeTxDPiB7XG4gIHJlYWRvbmx5IHNlbGVjdG9yOiBzdHJpbmc7XG4gIHJlYWRvbmx5IGNvbXBvbmVudFR5cGU6IFR5cGU8YW55PjtcbiAgcmVhZG9ubHkgbmdDb250ZW50U2VsZWN0b3JzOiBzdHJpbmdbXTtcbiAgcmVhZG9ubHkgaW5wdXRzOiB7cHJvcE5hbWU6IHN0cmluZywgdGVtcGxhdGVOYW1lOiBzdHJpbmd9W107XG4gIHJlYWRvbmx5IG91dHB1dHM6IHtwcm9wTmFtZTogc3RyaW5nLCB0ZW1wbGF0ZU5hbWU6IHN0cmluZ31bXTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGZhY3Rvcnk6IENvbXBvbmVudEZhY3Rvcnk8Qz4sIHByaXZhdGUgbmdNb2R1bGU6IE5nTW9kdWxlUmVmPGFueT4pIHtcbiAgICBzdXBlcigpO1xuICAgIHRoaXMuc2VsZWN0b3IgPSBmYWN0b3J5LnNlbGVjdG9yO1xuICAgIHRoaXMuY29tcG9uZW50VHlwZSA9IGZhY3RvcnkuY29tcG9uZW50VHlwZTtcbiAgICB0aGlzLm5nQ29udGVudFNlbGVjdG9ycyA9IGZhY3RvcnkubmdDb250ZW50U2VsZWN0b3JzO1xuICAgIHRoaXMuaW5wdXRzID0gZmFjdG9yeS5pbnB1dHM7XG4gICAgdGhpcy5vdXRwdXRzID0gZmFjdG9yeS5vdXRwdXRzO1xuICB9XG5cbiAgY3JlYXRlKFxuICAgICAgaW5qZWN0b3I6IEluamVjdG9yLCBwcm9qZWN0YWJsZU5vZGVzPzogYW55W11bXSwgcm9vdFNlbGVjdG9yT3JOb2RlPzogc3RyaW5nfGFueSxcbiAgICAgIG5nTW9kdWxlPzogTmdNb2R1bGVSZWY8YW55Pik6IENvbXBvbmVudFJlZjxDPiB7XG4gICAgcmV0dXJuIHRoaXMuZmFjdG9yeS5jcmVhdGUoXG4gICAgICAgIGluamVjdG9yLCBwcm9qZWN0YWJsZU5vZGVzLCByb290U2VsZWN0b3JPck5vZGUsIG5nTW9kdWxlIHx8IHRoaXMubmdNb2R1bGUpO1xuICB9XG59XG4iXX0=