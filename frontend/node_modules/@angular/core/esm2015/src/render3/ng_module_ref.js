/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Injector } from '../di/injector';
import { INJECTOR } from '../di/injector_compatibility';
import { InjectFlags } from '../di/interface/injector';
import { createInjectorWithoutInjectorInstances } from '../di/r3_injector';
import { ComponentFactoryResolver as viewEngine_ComponentFactoryResolver } from '../linker/component_factory_resolver';
import { NgModuleFactory as viewEngine_NgModuleFactory, NgModuleRef as viewEngine_NgModuleRef } from '../linker/ng_module_factory';
import { registerNgModuleType } from '../linker/ng_module_factory_registration';
import { assertDefined } from '../util/assert';
import { stringify } from '../util/stringify';
import { ComponentFactoryResolver } from './component_ref';
import { getNgLocaleIdDef, getNgModuleDef } from './definition';
import { setLocaleId } from './i18n/i18n_locale_id';
import { maybeUnwrapFn } from './util/misc_utils';
export class NgModuleRef extends viewEngine_NgModuleRef {
    constructor(ngModuleType, _parent) {
        super();
        this._parent = _parent;
        // tslint:disable-next-line:require-internal-with-underscore
        this._bootstrapComponents = [];
        this.injector = this;
        this.destroyCbs = [];
        // When bootstrapping a module we have a dependency graph that looks like this:
        // ApplicationRef -> ComponentFactoryResolver -> NgModuleRef. The problem is that if the
        // module being resolved tries to inject the ComponentFactoryResolver, it'll create a
        // circular dependency which will result in a runtime error, because the injector doesn't
        // exist yet. We work around the issue by creating the ComponentFactoryResolver ourselves
        // and providing it, rather than letting the injector resolve it.
        this.componentFactoryResolver = new ComponentFactoryResolver(this);
        const ngModuleDef = getNgModuleDef(ngModuleType);
        ngDevMode &&
            assertDefined(ngModuleDef, `NgModule '${stringify(ngModuleType)}' is not a subtype of 'NgModuleType'.`);
        const ngLocaleIdDef = getNgLocaleIdDef(ngModuleType);
        ngLocaleIdDef && setLocaleId(ngLocaleIdDef);
        this._bootstrapComponents = maybeUnwrapFn(ngModuleDef.bootstrap);
        this._r3Injector = createInjectorWithoutInjectorInstances(ngModuleType, _parent, [
            { provide: viewEngine_NgModuleRef, useValue: this }, {
                provide: viewEngine_ComponentFactoryResolver,
                useValue: this.componentFactoryResolver
            }
        ], stringify(ngModuleType));
        // We need to resolve the injector types separately from the injector creation, because
        // the module might be trying to use this ref in its contructor for DI which will cause a
        // circular error that will eventually error out, because the injector isn't created yet.
        this._r3Injector._resolveInjectorDefTypes();
        this.instance = this.get(ngModuleType);
    }
    get(token, notFoundValue = Injector.THROW_IF_NOT_FOUND, injectFlags = InjectFlags.Default) {
        if (token === Injector || token === viewEngine_NgModuleRef || token === INJECTOR) {
            return this;
        }
        return this._r3Injector.get(token, notFoundValue, injectFlags);
    }
    destroy() {
        ngDevMode && assertDefined(this.destroyCbs, 'NgModule already destroyed');
        const injector = this._r3Injector;
        !injector.destroyed && injector.destroy();
        this.destroyCbs.forEach(fn => fn());
        this.destroyCbs = null;
    }
    onDestroy(callback) {
        ngDevMode && assertDefined(this.destroyCbs, 'NgModule already destroyed');
        this.destroyCbs.push(callback);
    }
}
export class NgModuleFactory extends viewEngine_NgModuleFactory {
    constructor(moduleType) {
        super();
        this.moduleType = moduleType;
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
            registerNgModuleType(moduleType);
        }
    }
    create(parentInjector) {
        return new NgModuleRef(this.moduleType, parentInjector);
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmdfbW9kdWxlX3JlZi5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3JlbmRlcjMvbmdfbW9kdWxlX3JlZi50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFDeEMsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLDhCQUE4QixDQUFDO0FBQ3RELE9BQU8sRUFBQyxXQUFXLEVBQUMsTUFBTSwwQkFBMEIsQ0FBQztBQUNyRCxPQUFPLEVBQUMsc0NBQXNDLEVBQWEsTUFBTSxtQkFBbUIsQ0FBQztBQUVyRixPQUFPLEVBQUMsd0JBQXdCLElBQUksbUNBQW1DLEVBQUMsTUFBTSxzQ0FBc0MsQ0FBQztBQUNySCxPQUFPLEVBQXNCLGVBQWUsSUFBSSwwQkFBMEIsRUFBRSxXQUFXLElBQUksc0JBQXNCLEVBQUMsTUFBTSw2QkFBNkIsQ0FBQztBQUN0SixPQUFPLEVBQUMsb0JBQW9CLEVBQUMsTUFBTSwwQ0FBMEMsQ0FBQztBQUU5RSxPQUFPLEVBQUMsYUFBYSxFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFDN0MsT0FBTyxFQUFDLFNBQVMsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBRTVDLE9BQU8sRUFBQyx3QkFBd0IsRUFBQyxNQUFNLGlCQUFpQixDQUFDO0FBQ3pELE9BQU8sRUFBQyxnQkFBZ0IsRUFBRSxjQUFjLEVBQUMsTUFBTSxjQUFjLENBQUM7QUFDOUQsT0FBTyxFQUFDLFdBQVcsRUFBQyxNQUFNLHVCQUF1QixDQUFDO0FBQ2xELE9BQU8sRUFBQyxhQUFhLEVBQUMsTUFBTSxtQkFBbUIsQ0FBQztBQU1oRCxNQUFNLE9BQU8sV0FBZSxTQUFRLHNCQUF5QjtJQWlCM0QsWUFBWSxZQUFxQixFQUFTLE9BQXNCO1FBQzlELEtBQUssRUFBRSxDQUFDO1FBRGdDLFlBQU8sR0FBUCxPQUFPLENB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RixFQUFFO1lBQ0YsMkZBQTJGO1lBQzNGLGtDQUFrQztZQUNsQyxFQUFFO1lBQ0YsMkZBQTJGO1lBQzNGLGtCQUFrQjtZQUNsQiw4RkFBOEY7WUFDOUYsa0RBQWtEO1lBQ2xELDhGQUE4RjtZQUM5RixhQUFhO1lBQ2IsRUFBRTtZQUNGLDhGQUE4RjtZQUM5Riw0RkFBNEY7WUFDNUYsOEZBQThGO1lBQzlGLHdGQUF3RjtZQUN4RixtRkFBbUY7WUFDbkYsRUFBRTtZQUNGLDhGQUE4RjtZQUM5RiwyRkFBMkY7WUFDM0YsOEVBQThFO1lBQzlFLG9CQUFvQixDQUFDLFVBQTBCLENBQUMsQ0FBQztTQUNsRDtJQUNILENBQUM7SUFFRCxNQUFNLENBQUMsY0FBNkI7UUFDbEMsT0FBTyxJQUFJLFdBQVcsQ0FBQyxJQUFJLENBQUMsVUFBVSxFQUFFLGNBQWMsQ0FBQyxDQUFDO0lBQzFELENBQUM7Q0FDRiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0luamVjdG9yfSBmcm9tICcuLi9kaS9pbmplY3Rvcic7XG5pbXBvcnQge0lOSkVDVE9SfSBmcm9tICcuLi9kaS9pbmplY3Rvcl9jb21wYXRpYmlsaXR5JztcbmltcG9ydCB7SW5qZWN0RmxhZ3N9IGZyb20gJy4uL2RpL2ludGVyZmFjZS9pbmplY3Rvcic7XG5pbXBvcnQge2NyZWF0ZUluamVjdG9yV2l0aG91dEluamVjdG9ySW5zdGFuY2VzLCBSM0luamVjdG9yfSBmcm9tICcuLi9kaS9yM19pbmplY3Rvcic7XG5pbXBvcnQge1R5cGV9IGZyb20gJy4uL2ludGVyZmFjZS90eXBlJztcbmltcG9ydCB7Q29tcG9uZW50RmFjdG9yeVJlc29sdmVyIGFzIHZpZXdFbmdpbmVfQ29tcG9uZW50RmFjdG9yeVJlc29sdmVyfSBmcm9tICcuLi9saW5rZXIvY29tcG9uZW50X2ZhY3RvcnlfcmVzb2x2ZXInO1xuaW1wb3J0IHtJbnRlcm5hbE5nTW9kdWxlUmVmLCBOZ01vZHVsZUZhY3RvcnkgYXMgdmlld0VuZ2luZV9OZ01vZHVsZUZhY3RvcnksIE5nTW9kdWxlUmVmIGFzIHZpZXdFbmdpbmVfTmdNb2R1bGVSZWZ9IGZyb20gJy4uL2xpbmtlci9uZ19tb2R1bGVfZmFjdG9yeSc7XG5pbXBvcnQge3JlZ2lzdGVyTmdNb2R1bGVUeXBlfSBmcm9tICcuLi9saW5rZXIvbmdfbW9kdWxlX2ZhY3RvcnlfcmVnaXN0cmF0aW9uJztcbmltcG9ydCB7TmdNb2R1bGVEZWZ9IGZyb20gJy4uL21ldGFkYXRhL25nX21vZHVsZSc7XG5pbXBvcnQge2Fzc2VydERlZmluZWR9IGZyb20gJy4uL3V0aWwvYXNzZXJ0JztcbmltcG9ydCB7c3RyaW5naWZ5fSBmcm9tICcuLi91dGlsL3N0cmluZ2lmeSc7XG5cbmltcG9ydCB7Q29tcG9uZW50RmFjdG9yeVJlc29sdmVyfSBmcm9tICcuL2NvbXBvbmVudF9yZWYnO1xuaW1wb3J0IHtnZXROZ0xvY2FsZUlkRGVmLCBnZXROZ01vZHVsZURlZn0gZnJvbSAnLi9kZWZpbml0aW9uJztcbmltcG9ydCB7c2V0TG9jYWxlSWR9IGZyb20gJy4vaTE4bi9pMThuX2xvY2FsZV9pZCc7XG5pbXBvcnQge21heWJlVW53cmFwRm59IGZyb20gJy4vdXRpbC9taXNjX3V0aWxzJztcblxuZXhwb3J0IGludGVyZmFjZSBOZ01vZHVsZVR5cGU8VCA9IGFueT4gZXh0ZW5kcyBUeXBlPFQ+IHtcbiAgybVtb2Q6IE5nTW9kdWxlRGVmPFQ+O1xufVxuXG5leHBvcnQgY2xhc3MgTmdNb2R1bGVSZWY8VD4gZXh0ZW5kcyB2aWV3RW5naW5lX05nTW9kdWxlUmVmPFQ+IGltcGxlbWVudHMgSW50ZXJuYWxOZ01vZHVsZVJlZjxUPiB7XG4gIC8vIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTpyZXF1aXJlLWludGVybmFsLXdpdGgtdW5kZXJzY29yZVxuICBfYm9vdHN0cmFwQ29tcG9uZW50czogVHlwZTxhbnk+W10gPSBbXTtcbiAgLy8gdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOnJlcXVpcmUtaW50ZXJuYWwtd2l0aC11bmRlcnNjb3JlXG4gIF9yM0luamVjdG9yOiBSM0luamVjdG9yO1xuICBpbmplY3RvcjogSW5qZWN0b3IgPSB0aGlzO1xuICBpbnN0YW5jZTogVDtcbiAgZGVzdHJveUNiczogKCgpID0+IHZvaWQpW118bnVsbCA9IFtdO1xuXG4gIC8vIFdoZW4gYm9vdHN0cmFwcGluZyBhIG1vZHVsZSB3ZSBoYXZlIGEgZGVwZW5kZW5jeSBncmFwaCB0aGF0IGxvb2tzIGxpa2UgdGhpczpcbiAgLy8gQXBwbGljYXRpb25SZWYgLT4gQ29tcG9uZW50RmFjdG9yeVJlc29sdmVyIC0+IE5nTW9kdWxlUmVmLiBUaGUgcHJvYmxlbSBpcyB0aGF0IGlmIHRoZVxuICAvLyBtb2R1bGUgYmVpbmcgcmVzb2x2ZWQgdHJpZXMgdG8gaW5qZWN0IHRoZSBDb21wb25lbnRGYWN0b3J5UmVzb2x2ZXIsIGl0J2xsIGNyZWF0ZSBhXG4gIC8vIGNpcmN1bGFyIGRlcGVuZGVuY3kgd2hpY2ggd2lsbCByZXN1bHQgaW4gYSBydW50aW1lIGVycm9yLCBiZWNhdXNlIHRoZSBpbmplY3RvciBkb2Vzbid0XG4gIC8vIGV4aXN0IHlldC4gV2Ugd29yayBhcm91bmQgdGhlIGlzc3VlIGJ5IGNyZWF0aW5nIHRoZSBDb21wb25lbnRGYWN0b3J5UmVzb2x2ZXIgb3Vyc2VsdmVzXG4gIC8vIGFuZCBwcm92aWRpbmcgaXQsIHJhdGhlciB0aGFuIGxldHRpbmcgdGhlIGluamVjdG9yIHJlc29sdmUgaXQuXG4gIHJlYWRvbmx5IGNvbXBvbmVudEZhY3RvcnlSZXNvbHZlcjogQ29tcG9uZW50RmFjdG9yeVJlc29sdmVyID0gbmV3IENvbXBvbmVudEZhY3RvcnlSZXNvbHZlcih0aGlzKTtcblxuICBjb25zdHJ1Y3RvcihuZ01vZHVsZVR5cGU6IFR5cGU8VD4sIHB1YmxpYyBfcGFyZW50OiBJbmplY3RvcnxudWxsKSB7XG4gICAgc3VwZXIoKTtcbiAgICBjb25zdCBuZ01vZHVsZURlZiA9IGdldE5nTW9kdWxlRGVmKG5nTW9kdWxlVHlwZSk7XG4gICAgbmdEZXZNb2RlICYmXG4gICAgICAgIGFzc2VydERlZmluZWQoXG4gICAgICAgICAgICBuZ01vZHVsZURlZixcbiAgICAgICAgICAgIGBOZ01vZHVsZSAnJHtzdHJpbmdpZnkobmdNb2R1bGVUeXBlKX0nIGlzIG5vdCBhIHN1YnR5cGUgb2YgJ05nTW9kdWxlVHlwZScuYCk7XG5cbiAgICBjb25zdCBuZ0xvY2FsZUlkRGVmID0gZ2V0TmdMb2NhbGVJZERlZihuZ01vZHVsZVR5cGUpO1xuICAgIG5nTG9jYWxlSWREZWYgJiYgc2V0TG9jYWxlSWQobmdMb2NhbGVJZERlZik7XG4gICAgdGhpcy5fYm9vdHN0cmFwQ29tcG9uZW50cyA9IG1heWJlVW53cmFwRm4obmdNb2R1bGVEZWYhLmJvb3RzdHJhcCk7XG4gICAgdGhpcy5fcjNJbmplY3RvciA9IGNyZWF0ZUluamVjdG9yV2l0aG91dEluamVjdG9ySW5zdGFuY2VzKFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgbmdNb2R1bGVUeXBlLCBfcGFyZW50LFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgW1xuICAgICAgICAgICAgICAgICAgICAgICAgICAgICB7cHJvdmlkZTogdmlld0VuZ2luZV9OZ01vZHVsZVJlZiwgdXNlVmFsdWU6IHRoaXN9LCB7XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJvdmlkZTogdmlld0VuZ2luZV9Db21wb25lbnRGYWN0b3J5UmVzb2x2ZXIsXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdXNlVmFsdWU6IHRoaXMuY29tcG9uZW50RmFjdG9yeVJlc29sdmVyXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICAgICAgICAgICAgIF0sXG4gICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJpbmdpZnkobmdNb2R1bGVUeXBlKSkgYXMgUjNJbmplY3RvcjtcblxuICAgIC8vIFdlIG5lZWQgdG8gcmVzb2x2ZSB0aGUgaW5qZWN0b3IgdHlwZXMgc2VwYXJhdGVseSBmcm9tIHRoZSBpbmplY3RvciBjcmVhdGlvbiwgYmVjYXVzZVxuICAgIC8vIHRoZSBtb2R1bGUgbWlnaHQgYmUgdHJ5aW5nIHRvIHVzZSB0aGlzIHJlZiBpbiBpdHMgY29udHJ1Y3RvciBmb3IgREkgd2hpY2ggd2lsbCBjYXVzZSBhXG4gICAgLy8gY2lyY3VsYXIgZXJyb3IgdGhhdCB3aWxsIGV2ZW50dWFsbHkgZXJyb3Igb3V0LCBiZWNhdXNlIHRoZSBpbmplY3RvciBpc24ndCBjcmVhdGVkIHlldC5cbiAgICB0aGlzLl9yM0luamVjdG9yLl9yZXNvbHZlSW5qZWN0b3JEZWZUeXBlcygpO1xuICAgIHRoaXMuaW5zdGFuY2UgPSB0aGlzLmdldChuZ01vZHVsZVR5cGUpO1xuICB9XG5cbiAgZ2V0KHRva2VuOiBhbnksIG5vdEZvdW5kVmFsdWU6IGFueSA9IEluamVjdG9yLlRIUk9XX0lGX05PVF9GT1VORCxcbiAgICAgIGluamVjdEZsYWdzOiBJbmplY3RGbGFncyA9IEluamVjdEZsYWdzLkRlZmF1bHQpOiBhbnkge1xuICAgIGlmICh0b2tlbiA9PT0gSW5qZWN0b3IgfHwgdG9rZW4gPT09IHZpZXdFbmdpbmVfTmdNb2R1bGVSZWYgfHwgdG9rZW4gPT09IElOSkVDVE9SKSB7XG4gICAgICByZXR1cm4gdGhpcztcbiAgICB9XG4gICAgcmV0dXJuIHRoaXMuX3IzSW5qZWN0b3IuZ2V0KHRva2VuLCBub3RGb3VuZFZhbHVlLCBpbmplY3RGbGFncyk7XG4gIH1cblxuICBkZXN0cm95KCk6IHZvaWQge1xuICAgIG5nRGV2TW9kZSAmJiBhc3NlcnREZWZpbmVkKHRoaXMuZGVzdHJveUNicywgJ05nTW9kdWxlIGFscmVhZHkgZGVzdHJveWVkJyk7XG4gICAgY29uc3QgaW5qZWN0b3IgPSB0aGlzLl9yM0luamVjdG9yO1xuICAgICFpbmplY3Rvci5kZXN0cm95ZWQgJiYgaW5qZWN0b3IuZGVzdHJveSgpO1xuICAgIHRoaXMuZGVzdHJveUNicyEuZm9yRWFjaChmbiA9PiBmbigpKTtcbiAgICB0aGlzLmRlc3Ryb3lDYnMgPSBudWxsO1xuICB9XG4gIG9uRGVzdHJveShjYWxsYmFjazogKCkgPT4gdm9pZCk6IHZvaWQge1xuICAgIG5nRGV2TW9kZSAmJiBhc3NlcnREZWZpbmVkKHRoaXMuZGVzdHJveUNicywgJ05nTW9kdWxlIGFscmVhZHkgZGVzdHJveWVkJyk7XG4gICAgdGhpcy5kZXN0cm95Q2JzIS5wdXNoKGNhbGxiYWNrKTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgTmdNb2R1bGVGYWN0b3J5PFQ+IGV4dGVuZHMgdmlld0VuZ2luZV9OZ01vZHVsZUZhY3Rvcnk8VD4ge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgbW9kdWxlVHlwZTogVHlwZTxUPikge1xuICAgIHN1cGVyKCk7XG5cbiAgICBjb25zdCBuZ01vZHVsZURlZiA9IGdldE5nTW9kdWxlRGVmKG1vZHVsZVR5cGUpO1xuICAgIGlmIChuZ01vZHVsZURlZiAhPT0gbnVsbCkge1xuICAgICAgLy8gUmVnaXN0ZXIgdGhlIE5nTW9kdWxlIHdpdGggQW5ndWxhcidzIG1vZHVsZSByZWdpc3RyeS4gVGhlIGxvY2F0aW9uIChhbmQgaGVuY2UgdGltaW5nKSBvZlxuICAgICAgLy8gdGhpcyBjYWxsIGlzIGNyaXRpY2FsIHRvIGVuc3VyZSB0aGlzIHdvcmtzIGNvcnJlY3RseSAobW9kdWxlcyBnZXQgcmVnaXN0ZXJlZCB3aGVuIGV4cGVjdGVkKVxuICAgICAgLy8gd2l0aG91dCBibG9hdGluZyBidW5kbGVzIChtb2R1bGVzIGFyZSByZWdpc3RlcmVkIHdoZW4gb3RoZXJ3aXNlIG5vdCByZWZlcmVuY2VkKS5cbiAgICAgIC8vXG4gICAgICAvLyBJbiBWaWV3IEVuZ2luZSwgcmVnaXN0cmF0aW9uIG9jY3VycyBpbiB0aGUgLm5nZmFjdG9yeS5qcyBmaWxlIGFzIGEgc2lkZSBlZmZlY3QuIFRoaXMgaGFzXG4gICAgICAvLyBzZXZlcmFsIHByYWN0aWNhbCBjb25zZXF1ZW5jZXM6XG4gICAgICAvL1xuICAgICAgLy8gLSBJZiBhbiAubmdmYWN0b3J5IGZpbGUgaXMgbm90IGltcG9ydGVkIGZyb20sIHRoZSBtb2R1bGUgd29uJ3QgYmUgcmVnaXN0ZXJlZCAoYW5kIGNhbiBiZVxuICAgICAgLy8gICB0cmVlIHNoYWtlbikuXG4gICAgICAvLyAtIElmIGFuIC5uZ2ZhY3RvcnkgZmlsZSBpcyBpbXBvcnRlZCBmcm9tLCB0aGUgbW9kdWxlIHdpbGwgYmUgcmVnaXN0ZXJlZCBldmVuIGlmIGFuIGluc3RhbmNlXG4gICAgICAvLyAgIGlzIG5vdCBhY3R1YWxseSBjcmVhdGVkICh2aWEgYGNyZWF0ZWAgYmVsb3cpLlxuICAgICAgLy8gLSBTaW5jZSBhbiAubmdmYWN0b3J5IGZpbGUgaW4gVmlldyBFbmdpbmUgcmVmZXJlbmNlcyB0aGUgLm5nZmFjdG9yeSBmaWxlcyBvZiB0aGUgTmdNb2R1bGUnc1xuICAgICAgLy8gICBpbXBvcnRzLFxuICAgICAgLy9cbiAgICAgIC8vIEluIEl2eSwgdGhpbmdzIGFyZSBhIGJpdCBkaWZmZXJlbnQuIC5uZ2ZhY3RvcnkgZmlsZXMgc3RpbGwgZXhpc3QgZm9yIGNvbXBhdGliaWxpdHksIGJ1dCBhcmVcbiAgICAgIC8vIG5vdCBhIHJlcXVpcmVkIEFQSSB0byB1c2UgLSB0aGVyZSBhcmUgb3RoZXIgd2F5cyB0byBvYnRhaW4gYW4gTmdNb2R1bGVGYWN0b3J5IGZvciBhIGdpdmVuXG4gICAgICAvLyBOZ01vZHVsZS4gVGh1cywgcmVseWluZyBvbiBhIHNpZGUgZWZmZWN0IGluIHRoZSAubmdmYWN0b3J5IGZpbGUgaXMgbm90IHN1ZmZpY2llbnQuIEluc3RlYWQsXG4gICAgICAvLyB0aGUgc2lkZSBlZmZlY3Qgb2YgcmVnaXN0cmF0aW9uIGlzIGFkZGVkIGhlcmUsIGluIHRoZSBjb25zdHJ1Y3RvciBvZiBOZ01vZHVsZUZhY3RvcnksXG4gICAgICAvLyBlbnN1cmluZyBubyBtYXR0ZXIgaG93IGEgZmFjdG9yeSBpcyBjcmVhdGVkLCB0aGUgbW9kdWxlIGlzIHJlZ2lzdGVyZWQgY29ycmVjdGx5LlxuICAgICAgLy9cbiAgICAgIC8vIEFuIGFsdGVybmF0aXZlIHdvdWxkIGJlIHRvIGluY2x1ZGUgdGhlIHJlZ2lzdHJhdGlvbiBzaWRlIGVmZmVjdCBpbmxpbmUgZm9sbG93aW5nIHRoZSBhY3R1YWxcbiAgICAgIC8vIE5nTW9kdWxlIGRlZmluaXRpb24uIFRoaXMgYWxzbyBoYXMgdGhlIGNvcnJlY3QgdGltaW5nLCBidXQgYnJlYWtzIHRyZWUtc2hha2luZyAtIG1vZHVsZXNcbiAgICAgIC8vIHdpbGwgYmUgcmVnaXN0ZXJlZCBhbmQgcmV0YWluZWQgZXZlbiBpZiB0aGV5J3JlIG90aGVyd2lzZSBuZXZlciByZWZlcmVuY2VkLlxuICAgICAgcmVnaXN0ZXJOZ01vZHVsZVR5cGUobW9kdWxlVHlwZSBhcyBOZ01vZHVsZVR5cGUpO1xuICAgIH1cbiAgfVxuXG4gIGNyZWF0ZShwYXJlbnRJbmplY3RvcjogSW5qZWN0b3J8bnVsbCk6IHZpZXdFbmdpbmVfTmdNb2R1bGVSZWY8VD4ge1xuICAgIHJldHVybiBuZXcgTmdNb2R1bGVSZWYodGhpcy5tb2R1bGVUeXBlLCBwYXJlbnRJbmplY3Rvcik7XG4gIH1cbn1cbiJdfQ==