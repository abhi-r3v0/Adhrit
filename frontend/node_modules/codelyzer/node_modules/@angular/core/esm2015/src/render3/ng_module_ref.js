/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/ng_module_ref.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Injector } from '../di/injector';
import { INJECTOR } from '../di/injector_compatibility';
import { InjectFlags } from '../di/interface/injector';
import { createInjector } from '../di/r3_injector';
import { ComponentFactoryResolver as viewEngine_ComponentFactoryResolver } from '../linker/component_factory_resolver';
import { NgModuleFactory as viewEngine_NgModuleFactory, NgModuleRef as viewEngine_NgModuleRef } from '../linker/ng_module_factory';
import { registerNgModuleType } from '../linker/ng_module_factory_registration';
import { assertDefined } from '../util/assert';
import { stringify } from '../util/stringify';
import { ComponentFactoryResolver } from './component_ref';
import { getNgLocaleIdDef, getNgModuleDef } from './definition';
import { setLocaleId } from './i18n';
import { maybeUnwrapFn } from './util/misc_utils';
/**
 * @record
 * @template T
 */
export function NgModuleType() { }
if (false) {
    /** @type {?} */
    NgModuleType.prototype.ɵmod;
}
/** @type {?} */
const COMPONENT_FACTORY_RESOLVER = {
    provide: viewEngine_ComponentFactoryResolver,
    useClass: ComponentFactoryResolver,
    deps: [viewEngine_NgModuleRef],
};
/**
 * @template T
 */
export class NgModuleRef extends viewEngine_NgModuleRef {
    /**
     * @param {?} ngModuleType
     * @param {?} _parent
     */
    constructor(ngModuleType, _parent) {
        super();
        this._parent = _parent;
        // tslint:disable-next-line:require-internal-with-underscore
        this._bootstrapComponents = [];
        this.injector = this;
        this.destroyCbs = [];
        /** @type {?} */
        const ngModuleDef = getNgModuleDef(ngModuleType);
        ngDevMode && assertDefined(ngModuleDef, `NgModule '${stringify(ngModuleType)}' is not a subtype of 'NgModuleType'.`);
        /** @type {?} */
        const ngLocaleIdDef = getNgLocaleIdDef(ngModuleType);
        if (ngLocaleIdDef) {
            setLocaleId(ngLocaleIdDef);
        }
        this._bootstrapComponents = maybeUnwrapFn((/** @type {?} */ (ngModuleDef)).bootstrap);
        /** @type {?} */
        const additionalProviders = [
            {
                provide: viewEngine_NgModuleRef,
                useValue: this,
            },
            COMPONENT_FACTORY_RESOLVER
        ];
        this._r3Injector = (/** @type {?} */ (createInjector(ngModuleType, _parent, additionalProviders, stringify(ngModuleType))));
        this.instance = this.get(ngModuleType);
    }
    /**
     * @param {?} token
     * @param {?=} notFoundValue
     * @param {?=} injectFlags
     * @return {?}
     */
    get(token, notFoundValue = Injector.THROW_IF_NOT_FOUND, injectFlags = InjectFlags.Default) {
        if (token === Injector || token === viewEngine_NgModuleRef || token === INJECTOR) {
            return this;
        }
        return this._r3Injector.get(token, notFoundValue, injectFlags);
    }
    /**
     * @return {?}
     */
    get componentFactoryResolver() {
        return this.get(viewEngine_ComponentFactoryResolver);
    }
    /**
     * @return {?}
     */
    destroy() {
        ngDevMode && assertDefined(this.destroyCbs, 'NgModule already destroyed');
        /** @type {?} */
        const injector = this._r3Injector;
        !injector.destroyed && injector.destroy();
        (/** @type {?} */ (this.destroyCbs)).forEach((/**
         * @param {?} fn
         * @return {?}
         */
        fn => fn()));
        this.destroyCbs = null;
    }
    /**
     * @param {?} callback
     * @return {?}
     */
    onDestroy(callback) {
        ngDevMode && assertDefined(this.destroyCbs, 'NgModule already destroyed');
        (/** @type {?} */ (this.destroyCbs)).push(callback);
    }
}
if (false) {
    /** @type {?} */
    NgModuleRef.prototype._bootstrapComponents;
    /** @type {?} */
    NgModuleRef.prototype._r3Injector;
    /** @type {?} */
    NgModuleRef.prototype.injector;
    /** @type {?} */
    NgModuleRef.prototype.instance;
    /** @type {?} */
    NgModuleRef.prototype.destroyCbs;
    /** @type {?} */
    NgModuleRef.prototype._parent;
}
/**
 * @template T
 */
export class NgModuleFactory extends viewEngine_NgModuleFactory {
    /**
     * @param {?} moduleType
     */
    constructor(moduleType) {
        super();
        this.moduleType = moduleType;
        /** @type {?} */
        const ngModuleDef = getNgModuleDef(moduleType);
        if (ngModuleDef !== null) {
            // Register the NgModule with Angular's module registry. The location (and hence timing) of
            // this call is critical to ensure this works correctly (modules get registered when expected)
            // without bloating bundles (modules are registered when otherwise not referenced).
            //
            // In View Engine, registration occurs in the .ngfactory.js file as a side effect. This has
            // several practical consequences:
            //
            // - If an .ngfactory file is not imported from, the module won't be registered (and can be
            //   tree shaken).
            // - If an .ngfactory file is imported from, the module will be registered even if an instance
            //   is not actually created (via `create` below).
            // - Since an .ngfactory file in View Engine references the .ngfactory files of the NgModule's
            //   imports,
            //
            // In Ivy, things are a bit different. .ngfactory files still exist for compatibility, but are
            // not a required API to use - there are other ways to obtain an NgModuleFactory for a given
            // NgModule. Thus, relying on a side effect in the .ngfactory file is not sufficient. Instead,
            // the side effect of registration is added here, in the constructor of NgModuleFactory,
            // ensuring no matter how a factory is created, the module is registered correctly.
            //
            // An alternative would be to include the registration side effect inline following the actual
            // NgModule definition. This also has the correct timing, but breaks tree-shaking - modules
            // will be registered and retained even if they're otherwise never referenced.
            registerNgModuleType((/** @type {?} */ (moduleType)));
        }
    }
    /**
     * @param {?} parentInjector
     * @return {?}
     */
    create(parentInjector) {
        return new NgModuleRef(this.moduleType, parentInjector);
    }
}
if (false) {
    /** @type {?} */
    NgModuleFactory.prototype.moduleType;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmdfbW9kdWxlX3JlZi5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3JlbmRlcjMvbmdfbW9kdWxlX3JlZi50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7QUFRQSxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFDeEMsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLDhCQUE4QixDQUFDO0FBQ3RELE9BQU8sRUFBQyxXQUFXLEVBQUMsTUFBTSwwQkFBMEIsQ0FBQztBQUVyRCxPQUFPLEVBQWEsY0FBYyxFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFFN0QsT0FBTyxFQUFDLHdCQUF3QixJQUFJLG1DQUFtQyxFQUFDLE1BQU0sc0NBQXNDLENBQUM7QUFDckgsT0FBTyxFQUFzQixlQUFlLElBQUksMEJBQTBCLEVBQUUsV0FBVyxJQUFJLHNCQUFzQixFQUFDLE1BQU0sNkJBQTZCLENBQUM7QUFDdEosT0FBTyxFQUFDLG9CQUFvQixFQUFDLE1BQU0sMENBQTBDLENBQUM7QUFFOUUsT0FBTyxFQUFDLGFBQWEsRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBQzdDLE9BQU8sRUFBQyxTQUFTLEVBQUMsTUFBTSxtQkFBbUIsQ0FBQztBQUU1QyxPQUFPLEVBQUMsd0JBQXdCLEVBQUMsTUFBTSxpQkFBaUIsQ0FBQztBQUN6RCxPQUFPLEVBQUMsZ0JBQWdCLEVBQUUsY0FBYyxFQUFDLE1BQU0sY0FBYyxDQUFDO0FBQzlELE9BQU8sRUFBQyxXQUFXLEVBQUMsTUFBTSxRQUFRLENBQUM7QUFDbkMsT0FBTyxFQUFDLGFBQWEsRUFBQyxNQUFNLG1CQUFtQixDQUFDOzs7OztBQUVoRCxrQ0FBZ0Y7OztJQUF2Qiw0QkFBcUI7OztNQUV4RSwwQkFBMEIsR0FBbUI7SUFDakQsT0FBTyxFQUFFLG1DQUFtQztJQUM1QyxRQUFRLEVBQUUsd0JBQXdCO0lBQ2xDLElBQUksRUFB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QUFjLENBQUMsVUFBVSxDQUFDO1FBQzlDLElBQUksV0FBVyxLQUFLLElBQUksRUFBRTtZQUN4QiwyRkFBMkY7WUFDM0YsOEZBQThGO1lBQzlGLG1GQUFtRjtZQUNuRixFQUFFO1lBQ0YsMkZBQTJGO1lBQzNGLGtDQUFrQztZQUNsQyxFQUFFO1lBQ0YsMkZBQTJGO1lBQzNGLGtCQUFrQjtZQUNsQiw4RkFBOEY7WUFDOUYsa0RBQWtEO1lBQ2xELDhGQUE4RjtZQUM5RixhQUFhO1lBQ2IsRUFBRTtZQUNGLDhGQUE4RjtZQUM5Riw0RkFBNEY7WUFDNUYsOEZBQThGO1lBQzlGLHdGQUF3RjtZQUN4RixtRkFBbUY7WUFDbkYsRUFBRTtZQUNGLDhGQUE4RjtZQUM5RiwyRkFBMkY7WUFDM0YsOEVBQThFO1lBQzlFLG9CQUFvQixDQUFDLG1CQUFBLFVBQVUsRUFBZ0IsQ0FBQyxDQUFDO1NBQ2xEO0lBQ0gsQ0FBQzs7Ozs7SUFFRCxNQUFNLENBQUMsY0FBNkI7UUFDbEMsT0FBTyxJQUFJLFdBQVcsQ0FBQyxJQUFJLENBQUMsVUFBVSxFQUFFLGNBQWMsQ0FBQyxDQUFDO0lBQzFELENBQUM7Q0FDRjs7O0lBbkNhLHFDQUEwQiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtJbmplY3Rvcn0gZnJvbSAnLi4vZGkvaW5qZWN0b3InO1xuaW1wb3J0IHtJTkpFQ1RPUn0gZnJvbSAnLi4vZGkvaW5qZWN0b3JfY29tcGF0aWJpbGl0eSc7XG5pbXBvcnQge0luamVjdEZsYWdzfSBmcm9tICcuLi9kaS9pbnRlcmZhY2UvaW5qZWN0b3InO1xuaW1wb3J0IHtTdGF0aWNQcm92aWRlcn0gZnJvbSAnLi4vZGkvaW50ZXJmYWNlL3Byb3ZpZGVyJztcbmltcG9ydCB7UjNJbmplY3RvciwgY3JlYXRlSW5qZWN0b3J9IGZyb20gJy4uL2RpL3IzX2luamVjdG9yJztcbmltcG9ydCB7VHlwZX0gZnJvbSAnLi4vaW50ZXJmYWNlL3R5cGUnO1xuaW1wb3J0IHtDb21wb25lbnRGYWN0b3J5UmVzb2x2ZXIgYXMgdmlld0VuZ2luZV9Db21wb25lbnRGYWN0b3J5UmVzb2x2ZXJ9IGZyb20gJy4uL2xpbmtlci9jb21wb25lbnRfZmFjdG9yeV9yZXNvbHZlcic7XG5pbXBvcnQge0ludGVybmFsTmdNb2R1bGVSZWYsIE5nTW9kdWxlRmFjdG9yeSBhcyB2aWV3RW5naW5lX05nTW9kdWxlRmFjdG9yeSwgTmdNb2R1bGVSZWYgYXMgdmlld0VuZ2luZV9OZ01vZHVsZVJlZn0gZnJvbSAnLi4vbGlua2VyL25nX21vZHVsZV9mYWN0b3J5JztcbmltcG9ydCB7cmVnaXN0ZXJOZ01vZHVsZVR5cGV9IGZyb20gJy4uL2xpbmtlci9uZ19tb2R1bGVfZmFjdG9yeV9yZWdpc3RyYXRpb24nO1xuaW1wb3J0IHtOZ01vZHVsZURlZn0gZnJvbSAnLi4vbWV0YWRhdGEvbmdfbW9kdWxlJztcbmltcG9ydCB7YXNzZXJ0RGVmaW5lZH0gZnJvbSAnLi4vdXRpbC9hc3NlcnQnO1xuaW1wb3J0IHtzdHJpbmdpZnl9IGZyb20gJy4uL3V0aWwvc3RyaW5naWZ5JztcblxuaW1wb3J0IHtDb21wb25lbnRGYWN0b3J5UmVzb2x2ZXJ9IGZyb20gJy4vY29tcG9uZW50X3JlZic7XG5pbXBvcnQge2dldE5nTG9jYWxlSWREZWYsIGdldE5nTW9kdWxlRGVmfSBmcm9tICcuL2RlZmluaXRpb24nO1xuaW1wb3J0IHtzZXRMb2NhbGVJZH0gZnJvbSAnLi9pMThuJztcbmltcG9ydCB7bWF5YmVVbndyYXBGbn0gZnJvbSAnLi91dGlsL21pc2NfdXRpbHMnO1xuXG5leHBvcnQgaW50ZXJmYWNlIE5nTW9kdWxlVHlwZTxUID0gYW55PiBleHRlbmRzIFR5cGU8VD4geyDJtW1vZDogTmdNb2R1bGVEZWY8VD47IH1cblxuY29uc3QgQ09NUE9ORU5UX0ZBQ1RPUllfUkVTT0xWRVI6IFN0YXRpY1Byb3ZpZGVyID0ge1xuICBwcm92aWRlOiB2aWV3RW5naW5lX0NvbXBvbmVudEZhY3RvcnlSZXNvbHZlcixcbiAgdXNlQ2xhc3M6IENvbXBvbmVudEZhY3RvcnlSZXNvbHZlcixcbiAgZGVwczogW3ZpZXdFbmdpbmVfTmdNb2R1bGVSZWZdLFxufTtcblxuZXhwb3J0IGNsYXNzIE5nTW9kdWxlUmVmPFQ+IGV4dGVuZHMgdmlld0VuZ2luZV9OZ01vZHVsZVJlZjxUPiBpbXBsZW1lbnRzIEludGVybmFsTmdNb2R1bGVSZWY8VD4ge1xuICAvLyB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6cmVxdWlyZS1pbnRlcm5hbC13aXRoLXVuZGVyc2NvcmVcbiAgX2Jvb3RzdHJhcENvbXBvbmVudHM6IFR5cGU8YW55PltdID0gW107XG4gIC8vIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTpyZXF1aXJlLWludGVybmFsLXdpdGgtdW5kZXJzY29yZVxuICBfcjNJbmplY3RvcjogUjNJbmplY3RvcjtcbiAgaW5qZWN0b3I6IEluamVjdG9yID0gdGhpcztcbiAgaW5zdGFuY2U6IFQ7XG4gIGRlc3Ryb3lDYnM6ICgoKSA9PiB2b2lkKVtdfG51bGwgPSBbXTtcblxuICBjb25zdHJ1Y3RvcihuZ01vZHVsZVR5cGU6IFR5cGU8VD4sIHB1YmxpYyBfcGFyZW50OiBJbmplY3RvcnxudWxsKSB7XG4gICAgc3VwZXIoKTtcbiAgICBjb25zdCBuZ01vZHVsZURlZiA9IGdldE5nTW9kdWxlRGVmKG5nTW9kdWxlVHlwZSk7XG4gICAgbmdEZXZNb2RlICYmIGFzc2VydERlZmluZWQoXG4gICAgICAgICAgICAgICAgICAgICBuZ01vZHVsZURlZixcbiAgICAgICAgICAgICAgICAgICAgIGBOZ01vZHVsZSAnJHtzdHJpbmdpZnkobmdNb2R1bGVUeXBlKX0nIGlzIG5vdCBhIHN1YnR5cGUgb2YgJ05nTW9kdWxlVHlwZScuYCk7XG5cbiAgICBjb25zdCBuZ0xvY2FsZUlkRGVmID0gZ2V0TmdMb2NhbGVJZERlZihuZ01vZHVsZVR5cGUpO1xuICAgIGlmIChuZ0xvY2FsZUlkRGVmKSB7XG4gICAgICBzZXRMb2NhbGVJZChuZ0xvY2FsZUlkRGVmKTtcbiAgICB9XG5cbiAgICB0aGlzLl9ib290c3RyYXBDb21wb25lbnRzID0gbWF5YmVVbndyYXBGbihuZ01vZHVsZURlZiAhLmJvb3RzdHJhcCk7XG4gICAgY29uc3QgYWRkaXRpb25hbFByb3ZpZGVyczogU3RhdGljUHJvdmlkZXJbXSA9IFtcbiAgICAgIHtcbiAgICAgICAgcHJvdmlkZTogdmlld0VuZ2luZV9OZ01vZHVsZVJlZixcbiAgICAgICAgdXNlVmFsdWU6IHRoaXMsXG4gICAgICB9LFxuICAgICAgQ09NUE9ORU5UX0ZBQ1RPUllfUkVTT0xWRVJcbiAgICBdO1xuICAgIHRoaXMuX3IzSW5qZWN0b3IgPSBjcmVhdGVJbmplY3RvcihcbiAgICAgICAgbmdNb2R1bGVUeXBlLCBfcGFyZW50LCBhZGRpdGlvbmFsUHJvdmlkZXJzLCBzdHJpbmdpZnkobmdNb2R1bGVUeXBlKSkgYXMgUjNJbmplY3RvcjtcbiAgICB0aGlzLmluc3RhbmNlID0gdGhpcy5nZXQobmdNb2R1bGVUeXBlKTtcbiAgfVxuXG4gIGdldCh0b2tlbjogYW55LCBub3RGb3VuZFZhbHVlOiBhbnkgPSBJbmplY3Rvci5USFJPV19JRl9OT1RfRk9VTkQsXG4gICAgICBpbmplY3RGbGFnczogSW5qZWN0RmxhZ3MgPSBJbmplY3RGbGFncy5EZWZhdWx0KTogYW55IHtcbiAgICBpZiAodG9rZW4gPT09IEluamVjdG9yIHx8IHRva2VuID09PSB2aWV3RW5naW5lX05nTW9kdWxlUmVmIHx8IHRva2VuID09PSBJTkpFQ1RPUikge1xuICAgICAgcmV0dXJuIHRoaXM7XG4gICAgfVxuICAgIHJldHVybiB0aGlzLl9yM0luamVjdG9yLmdldCh0b2tlbiwgbm90Rm91bmRWYWx1ZSwgaW5qZWN0RmxhZ3MpO1xuICB9XG5cbiAgZ2V0IGNvbXBvbmVudEZhY3RvcnlSZXNvbHZlcigpOiB2aWV3RW5naW5lX0NvbXBvbmVudEZhY3RvcnlSZXNvbHZlciB7XG4gICAgcmV0dXJuIHRoaXMuZ2V0KHZpZXdFbmdpbmVfQ29tcG9uZW50RmFjdG9yeVJlc29sdmVyKTtcbiAgfVxuXG4gIGRlc3Ryb3koKTogdm9pZCB7XG4gICAgbmdEZXZNb2RlICYmIGFzc2VydERlZmluZWQodGhpcy5kZXN0cm95Q2JzLCAnTmdNb2R1bGUgYWxyZWFkeSBkZXN0cm95ZWQnKTtcbiAgICBjb25zdCBpbmplY3RvciA9IHRoaXMuX3IzSW5qZWN0b3I7XG4gICAgIWluamVjdG9yLmRlc3Ryb3llZCAmJiBpbmplY3Rvci5kZXN0cm95KCk7XG4gICAgdGhpcy5kZXN0cm95Q2JzICEuZm9yRWFjaChmbiA9PiBmbigpKTtcbiAgICB0aGlzLmRlc3Ryb3lDYnMgPSBudWxsO1xuICB9XG4gIG9uRGVzdHJveShjYWxsYmFjazogKCkgPT4gdm9pZCk6IHZvaWQge1xuICAgIG5nRGV2TW9kZSAmJiBhc3NlcnREZWZpbmVkKHRoaXMuZGVzdHJveUNicywgJ05nTW9kdWxlIGFscmVhZHkgZGVzdHJveWVkJyk7XG4gICAgdGhpcy5kZXN0cm95Q2JzICEucHVzaChjYWxsYmFjayk7XG4gIH1cbn1cblxuZXhwb3J0IGNsYXNzIE5nTW9kdWxlRmFjdG9yeTxUPiBleHRlbmRzIHZpZXdFbmdpbmVfTmdNb2R1bGVGYWN0b3J5PFQ+IHtcbiAgY29uc3RydWN0b3IocHVibGljIG1vZHVsZVR5cGU6IFR5cGU8VD4pIHtcbiAgICBzdXBlcigpO1xuXG4gICAgY29uc3QgbmdNb2R1bGVEZWYgPSBnZXROZ01vZHVsZURlZihtb2R1bGVUeXBlKTtcbiAgICBpZiAobmdNb2R1bGVEZWYgIT09IG51bGwpIHtcbiAgICAgIC8vIFJlZ2lzdGVyIHRoZSBOZ01vZHVsZSB3aXRoIEFuZ3VsYXIncyBtb2R1bGUgcmVnaXN0cnkuIFRoZSBsb2NhdGlvbiAoYW5kIGhlbmNlIHRpbWluZykgb2ZcbiAgICAgIC8vIHRoaXMgY2FsbCBpcyBjcml0aWNhbCB0byBlbnN1cmUgdGhpcyB3b3JrcyBjb3JyZWN0bHkgKG1vZHVsZXMgZ2V0IHJlZ2lzdGVyZWQgd2hlbiBleHBlY3RlZClcbiAgICAgIC8vIHdpdGhvdXQgYmxvYXRpbmcgYnVuZGxlcyAobW9kdWxlcyBhcmUgcmVnaXN0ZXJlZCB3aGVuIG90aGVyd2lzZSBub3QgcmVmZXJlbmNlZCkuXG4gICAgICAvL1xuICAgICAgLy8gSW4gVmlldyBFbmdpbmUsIHJlZ2lzdHJhdGlvbiBvY2N1cnMgaW4gdGhlIC5uZ2ZhY3RvcnkuanMgZmlsZSBhcyBhIHNpZGUgZWZmZWN0LiBUaGlzIGhhc1xuICAgICAgLy8gc2V2ZXJhbCBwcmFjdGljYWwgY29uc2VxdWVuY2VzOlxuICAgICAgLy9cbiAgICAgIC8vIC0gSWYgYW4gLm5nZmFjdG9yeSBmaWxlIGlzIG5vdCBpbXBvcnRlZCBmcm9tLCB0aGUgbW9kdWxlIHdvbid0IGJlIHJlZ2lzdGVyZWQgKGFuZCBjYW4gYmVcbiAgICAgIC8vICAgdHJlZSBzaGFrZW4pLlxuICAgICAgLy8gLSBJZiBhbiAubmdmYWN0b3J5IGZpbGUgaXMgaW1wb3J0ZWQgZnJvbSwgdGhlIG1vZHVsZSB3aWxsIGJlIHJlZ2lzdGVyZWQgZXZlbiBpZiBhbiBpbnN0YW5jZVxuICAgICAgLy8gICBpcyBub3QgYWN0dWFsbHkgY3JlYXRlZCAodmlhIGBjcmVhdGVgIGJlbG93KS5cbiAgICAgIC8vIC0gU2luY2UgYW4gLm5nZmFjdG9yeSBmaWxlIGluIFZpZXcgRW5naW5lIHJlZmVyZW5jZXMgdGhlIC5uZ2ZhY3RvcnkgZmlsZXMgb2YgdGhlIE5nTW9kdWxlJ3NcbiAgICAgIC8vICAgaW1wb3J0cyxcbiAgICAgIC8vXG4gICAgICAvLyBJbiBJdnksIHRoaW5ncyBhcmUgYSBiaXQgZGlmZmVyZW50LiAubmdmYWN0b3J5IGZpbGVzIHN0aWxsIGV4aXN0IGZvciBjb21wYXRpYmlsaXR5LCBidXQgYXJlXG4gICAgICAvLyBub3QgYSByZXF1aXJlZCBBUEkgdG8gdXNlIC0gdGhlcmUgYXJlIG90aGVyIHdheXMgdG8gb2J0YWluIGFuIE5nTW9kdWxlRmFjdG9yeSBmb3IgYSBnaXZlblxuICAgICAgLy8gTmdNb2R1bGUuIFRodXMsIHJlbHlpbmcgb24gYSBzaWRlIGVmZmVjdCBpbiB0aGUgLm5nZmFjdG9yeSBmaWxlIGlzIG5vdCBzdWZmaWNpZW50LiBJbnN0ZWFkLFxuICAgICAgLy8gdGhlIHNpZGUgZWZmZWN0IG9mIHJlZ2lzdHJhdGlvbiBpcyBhZGRlZCBoZXJlLCBpbiB0aGUgY29uc3RydWN0b3Igb2YgTmdNb2R1bGVGYWN0b3J5LFxuICAgICAgLy8gZW5zdXJpbmcgbm8gbWF0dGVyIGhvdyBhIGZhY3RvcnkgaXMgY3JlYXRlZCwgdGhlIG1vZHVsZSBpcyByZWdpc3RlcmVkIGNvcnJlY3RseS5cbiAgICAgIC8vXG4gICAgICAvLyBBbiBhbHRlcm5hdGl2ZSB3b3VsZCBiZSB0byBpbmNsdWRlIHRoZSByZWdpc3RyYXRpb24gc2lkZSBlZmZlY3QgaW5saW5lIGZvbGxvd2luZyB0aGUgYWN0dWFsXG4gICAgICAvLyBOZ01vZHVsZSBkZWZpbml0aW9uLiBUaGlzIGFsc28gaGFzIHRoZSBjb3JyZWN0IHRpbWluZywgYnV0IGJyZWFrcyB0cmVlLXNoYWtpbmcgLSBtb2R1bGVzXG4gICAgICAvLyB3aWxsIGJlIHJlZ2lzdGVyZWQgYW5kIHJldGFpbmVkIGV2ZW4gaWYgdGhleSdyZSBvdGhlcndpc2UgbmV2ZXIgcmVmZXJlbmNlZC5cbiAgICAgIHJlZ2lzdGVyTmdNb2R1bGVUeXBlKG1vZHVsZVR5cGUgYXMgTmdNb2R1bGVUeXBlKTtcbiAgICB9XG4gIH1cblxuICBjcmVhdGUocGFyZW50SW5qZWN0b3I6IEluamVjdG9yfG51bGwpOiB2aWV3RW5naW5lX05nTW9kdWxlUmVmPFQ+IHtcbiAgICByZXR1cm4gbmV3IE5nTW9kdWxlUmVmKHRoaXMubW9kdWxlVHlwZSwgcGFyZW50SW5qZWN0b3IpO1xuICB9XG59XG4iXX0=