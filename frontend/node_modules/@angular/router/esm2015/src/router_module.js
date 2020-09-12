/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { APP_BASE_HREF, HashLocationStrategy, Location, LOCATION_INITIALIZED, LocationStrategy, PathLocationStrategy, PlatformLocation, ViewportScroller, ɵgetDOM as getDOM } from '@angular/common';
import { ANALYZE_FOR_ENTRY_COMPONENTS, APP_BOOTSTRAP_LISTENER, APP_INITIALIZER, ApplicationRef, Compiler, Inject, Injectable, InjectionToken, Injector, NgModule, NgModuleFactoryLoader, NgProbeToken, Optional, SkipSelf, SystemJsNgModuleLoader } from '@angular/core';
import { of, Subject } from 'rxjs';
import { EmptyOutletComponent } from './components/empty_outlet';
import { RouterLink, RouterLinkWithHref } from './directives/router_link';
import { RouterLinkActive } from './directives/router_link_active';
import { RouterOutlet } from './directives/router_outlet';
import { RouteReuseStrategy } from './route_reuse_strategy';
import { Router } from './router';
import { ROUTES } from './router_config_loader';
import { ChildrenOutletContexts } from './router_outlet_context';
import { NoPreloading, PreloadAllModules, PreloadingStrategy, RouterPreloader } from './router_preloader';
import { RouterScroller } from './router_scroller';
import { ActivatedRoute } from './router_state';
import { UrlHandlingStrategy } from './url_handling_strategy';
import { DefaultUrlSerializer, UrlSerializer } from './url_tree';
import { flatten } from './utils/collection';
/**
 * The directives defined in the `RouterModule`.
 */
const ROUTER_DIRECTIVES = [RouterOutlet, RouterLink, RouterLinkWithHref, RouterLinkActive, EmptyOutletComponent];
/**
 * A [DI token](guide/glossary/#di-token) for the router service.
 *
 * @publicApi
 */
export const ROUTER_CONFIGURATION = new InjectionToken('ROUTER_CONFIGURATION');
/**
 * @docsNotRequired
 */
export const ROUTER_FORROOT_GUARD = new InjectionToken('ROUTER_FORROOT_GUARD');
const ɵ0 = { enableTracing: false };
export const ROUTER_PROVIDERS = [
    Location,
    { provide: UrlSerializer, useClass: DefaultUrlSerializer },
    {
        provide: Router,
        useFactory: setupRouter,
        deps: [
            UrlSerializer, ChildrenOutletContexts, Location, Injector, NgModuleFactoryLoader, Compiler,
            ROUTES, ROUTER_CONFIGURATION, [UrlHandlingStrategy, new Optional()],
            [RouteReuseStrategy, new Optional()]
        ]
    },
    ChildrenOutletContexts,
    { provide: ActivatedRoute, useFactory: rootRoute, deps: [Router] },
    { provide: NgModuleFactoryLoader, useClass: SystemJsNgModuleLoader },
    RouterPreloader,
    NoPreloading,
    PreloadAllModules,
    { provide: ROUTER_CONFIGURATION, useValue: ɵ0 },
];
export function routerNgProbeToken() {
    return new NgProbeToken('Router', Router);
}
/**
 * @description
 *
 * Adds directives and providers for in-app navigation among views defined in an application.
 * Use the Angular `Router` service to declaratively specify application states and manage state
 * transitions.
 *
 * You can import this NgModule multiple times, once for each lazy-loaded bundle.
 * However, only one `Router` service can be active.
 * To ensure this, there are two ways to register routes when importing this module:
 *
 * * The `forRoot()` method creates an `NgModule` that contains all the directives, the given
 * routes, and the `Router` service itself.
 * * The `forChild()` method creates an `NgModule` that contains all the directives and the given
 * routes, but does not include the `Router` service.
 *
 * @see [Routing and Navigation guide](guide/router) for an
 * overview of how the `Router` service should be used.
 *
 * @publicApi
 */
export class RouterModule {
    // Note: We are injecting the Router so it gets created eagerly...
    constructor(guard, router) { }
    /**
     * Creates and configures a module with all the router providers and directives.
     * Optionally sets up an application listener to perform an initial navigation.
     *
     * When registering the NgModule at the root, import as follows:
     *
     * ```
     * @NgModule({
     *   imports: [RouterModule.forRoot(ROUTES)]
     * })
     * class MyNgModule {}
     * ```
     *
     * @param routes An array of `Route` objects that define the navigation paths for the application.
     * @param config An `ExtraOptions` configuration object that controls how navigation is performed.
     * @return The new `NgModule`.
     *
     */
    static forRoot(routes, config) {
        return {
            ngModule: RouterModule,
            providers: [
                ROUTER_PROVIDERS,
                provideRoutes(routes),
                {
                    provide: ROUTER_FORROOT_GUARD,
                    useFactory: provideForRootGuard,
                    deps: [[Router, new Optional(), new SkipSelf()]]
                },
                { provide: ROUTER_CONFIGURATION, useValue: config ? config : {} },
                {
                    provide: LocationStrategy,
                    useFactory: provideLocationStrategy,
                    deps: [PlatformLocation, [new Inject(APP_BASE_HREF), new Optional()], ROUTER_CONFIGURATION]
                },
                {
                    provide: RouterScroller,
                    useFactory: createRouterScroller,
                    deps: [Router, ViewportScroller, ROUTER_CONFIGURATION]
                },
                {
                    provide: PreloadingStrategy,
                    useExisting: config && config.preloadingStrategy ? config.preloadingStrategy :
                        NoPreloading
                },
                { provide: NgProbeToken, multi: true, useFactory: routerNgProbeToken },
                provideRouterInitializer(),
            ],
        };
    }
    /**
     * Creates a module with all the router directives and a provider registering routes,
     * without creating a new Router service.
     * When registering for submodules and lazy-loaded submodules, create the NgModule as follows:
     *
     * ```
     * @NgModule({
     *   imports: [RouterModule.forChild(ROUTES)]
     * })
     * class MyNgModule {}
     * ```
     *
     * @param routes An array of `Route` objects that define the navigation paths for the submodule.
     * @return The new NgModule.
     *
     */
    static forChild(routes) {
        return { ngModule: RouterModule, providers: [provideRoutes(routes)] };
    }
}
RouterModule.decorators = [
    { type: NgModule, args: [{
                declarations: ROUTER_DIRECTIVES,
                exports: ROUTER_DIRECTIVES,
                entryComponents: [EmptyOutletComponent]
            },] }
];
RouterModule.ctorParameters = () => [
    { type: undefined, decorators: [{ type: Optional }, { type: Inject, args: [ROUTER_FORROOT_GUARD,] }] },
    { type: Router, decorators: [{ type: Optional }] }
];
export function createRouterScroller(router, viewportScroller, config) {
    if (config.scrollOffset) {
        viewportScroller.setOffset(config.scrollOffset);
    }
    return new RouterScroller(router, viewportScroller, config);
}
export function provideLocationStrategy(platformLocationStrategy, baseHref, options = {}) {
    return options.useHash ? new HashLocationStrategy(platformLocationStrategy, baseHref) :
        new PathLocationStrategy(platformLocationStrategy, baseHref);
}
export function provideForRootGuard(router) {
    if (router) {
        throw new Error(`RouterModule.forRoot() called twice. Lazy loaded modules should use RouterModule.forChild() instead.`);
    }
    return 'guarded';
}
/**
 * Registers a [DI provider](guide/glossary#provider) for a set of routes.
 * @param routes The route configuration to provide.
 *
 * @usageNotes
 *
 * ```
 * @NgModule({
 *   imports: [RouterModule.forChild(ROUTES)],
 *   providers: [provideRoutes(EXTRA_ROUTES)]
 * })
 * class MyNgModule {}
 * ```
 *
 * @publicApi
 */
export function provideRoutes(routes) {
    return [
        { provide: ANALYZE_FOR_ENTRY_COMPONENTS, multi: true, useValue: routes },
        { provide: ROUTES, multi: true, useValue: routes },
    ];
}
export function setupRouter(urlSerializer, contexts, location, injector, loader, compiler, config, opts = {}, urlHandlingStrategy, routeReuseStrategy) {
    const router = new Router(null, urlSerializer, contexts, location, injector, loader, compiler, flatten(config));
    if (urlHandlingStrategy) {
        router.urlHandlingStrategy = urlHandlingStrategy;
    }
    if (routeReuseStrategy) {
        router.routeReuseStrategy = routeReuseStrategy;
    }
    if (opts.errorHandler) {
        router.errorHandler = opts.errorHandler;
    }
    if (opts.malformedUriErrorHandler) {
        router.malformedUriErrorHandler = opts.malformedUriErrorHandler;
    }
    if (opts.enableTracing) {
        const dom = getDOM();
        router.events.subscribe((e) => {
            dom.logGroup(`Router Event: ${e.constructor.name}`);
            dom.log(e.toString());
            dom.log(e);
            dom.logGroupEnd();
        });
    }
    if (opts.onSameUrlNavigation) {
        router.onSameUrlNavigation = opts.onSameUrlNavigation;
    }
    if (opts.paramsInheritanceStrategy) {
        router.paramsInheritanceStrategy = opts.paramsInheritanceStrategy;
    }
    if (opts.urlUpdateStrategy) {
        router.urlUpdateStrategy = opts.urlUpdateStrategy;
    }
    if (opts.relativeLinkResolution) {
        router.relativeLinkResolution = opts.relativeLinkResolution;
    }
    return router;
}
export function rootRoute(router) {
    return router.routerState.root;
}
/**
 * Router initialization requires two steps:
 *
 * First, we start the navigation in a `APP_INITIALIZER` to block the bootstrap if
 * a resolver or a guard executes asynchronously.
 *
 * Next, we actually run activation in a `BOOTSTRAP_LISTENER`, using the
 * `afterPreactivation` hook provided by the router.
 * The router navigation starts, reaches the point when preactivation is done, and then
 * pauses. It waits for the hook to be resolved. We then resolve it only in a bootstrap listener.
 */
export class RouterInitializer {
    constructor(injector) {
        this.injector = injector;
        this.initNavigation = false;
        this.resultOfPreactivationDone = new Subject();
    }
    appInitializer() {
        const p = this.injector.get(LOCATION_INITIALIZED, Promise.resolve(null));
        return p.then(() => {
            let resolve = null;
            const res = new Promise(r => resolve = r);
            const router = this.injector.get(Router);
            const opts = this.injector.get(ROUTER_CONFIGURATION);
            if (this.isLegacyDisabled(opts) || this.isLegacyEnabled(opts)) {
                resolve(true);
            }
            else if (opts.initialNavigation === 'disabled') {
                router.setUpLocationChangeListener();
                resolve(true);
            }
            else if (opts.initialNavigation === 'enabled') {
                router.hooks.afterPreactivation = () => {
                    // only the initial navigation should be delayed
                    if (!this.initNavigation) {
                        this.initNavigation = true;
                        resolve(true);
                        return this.resultOfPreactivationDone;
                        // subsequent navigations should not be delayed
                    }
                    else {
                        return of(null);
                    }
                };
                router.initialNavigation();
            }
            else {
                throw new Error(`Invalid initialNavigation options: '${opts.initialNavigation}'`);
            }
            return res;
        });
    }
    bootstrapListener(bootstrappedComponentRef) {
        const opts = this.injector.get(ROUTER_CONFIGURATION);
        const preloader = this.injector.get(RouterPreloader);
        const routerScroller = this.injector.get(RouterScroller);
        const router = this.injector.get(Router);
        const ref = this.injector.get(ApplicationRef);
        if (bootstrappedComponentRef !== ref.components[0]) {
            return;
        }
        if (this.isLegacyEnabled(opts)) {
            router.initialNavigation();
        }
        else if (this.isLegacyDisabled(opts)) {
            router.setUpLocationChangeListener();
        }
        preloader.setUpPreloading();
        routerScroller.init();
        router.resetRootComponentType(ref.componentTypes[0]);
        this.resultOfPreactivationDone.next(null);
        this.resultOfPreactivationDone.complete();
    }
    isLegacyEnabled(opts) {
        return opts.initialNavigation === 'legacy_enabled' || opts.initialNavigation === true ||
            opts.initialNavigation === undefined;
    }
    isLegacyDisabled(opts) {
        return opts.initialNavigation === 'legacy_disabled' || opts.initialNavigation === false;
    }
}
RouterInitializer.decorators = [
    { type: Injectable }
];
RouterInitializer.ctorParameters = () => [
    { type: Injector }
];
export function getAppInitializer(r) {
    return r.appInitializer.bind(r);
}
export function getBootstrapListener(r) {
    return r.bootstrapListener.bind(r);
}
/**
 * A [DI token](guide/glossary/#di-token) for the router initializer that
 * is called after the app is bootstrapped.
 *
 * @publicApi
 */
export const ROUTER_INITIALIZER = new InjectionToken('Router Initializer');
export function provideRouterInitializer() {
    return [
        RouterInitializer,
        {
            provide: APP_INITIALIZER,
            multi: true,
            useFactory: getAppInitializer,
            deps: [RouterInitializer]
        },
        { provide: ROUTER_INITIALIZER, useFactory: getBootstrapListener, deps: [RouterInitializer] },
        { provide: APP_BOOTSTRAP_LISTENER, multi: true, useExisting: ROUTER_INITIALIZER },
    ];
}
export { ɵ0 };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicm91dGVyX21vZHVsZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL3JvdXRlci9zcmMvcm91dGVyX21vZHVsZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsYUFBYSxFQUFFLG9CQUFvQixFQUFFLFFBQVEsRUFBRSxvQkFBb0IsRUFBRSxnQkFBZ0IsRUFBRSxvQkFBb0IsRUFBRSxnQkFBZ0IsRUFBRSxnQkFBZ0IsRUFBRSxPQUFPLElBQUksTUFBTSxFQUFDLE1BQU0saUJBQWlCLENBQUM7QUFDbk0sT0FBTyxFQUFDLDRCQUE0QixFQUFFLHNCQUFzQixFQUFFLGVBQWUsRUFBRSxjQUFjLEVBQUUsUUFBUSxFQUFnQixNQUFNLEVBQUUsVUFBVSxFQUFFLGNBQWMsRUFBRSxRQUFRLEVBQXVCLFFBQVEsRUFBRSxxQkFBcUIsRUFBRSxZQUFZLEVBQUUsUUFBUSxFQUFZLFFBQVEsRUFBRSxzQkFBc0IsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUNwVCxPQUFPLEVBQUMsRUFBRSxFQUFFLE9BQU8sRUFBQyxNQUFNLE1BQU0sQ0FBQztBQUVqQyxPQUFPLEVBQUMsb0JBQW9CLEVBQUMsTUFBTSwyQkFBMkIsQ0FBQztBQUUvRCxPQUFPLEVBQUMsVUFBVSxFQUFFLGtCQUFrQixFQUFDLE1BQU0sMEJBQTBCLENBQUM7QUFDeEUsT0FBTyxFQUFDLGdCQUFnQixFQUFDLE1BQU0saUNBQWlDLENBQUM7QUFDakUsT0FBTyxFQUFDLFlBQVksRUFBQyxNQUFNLDRCQUE0QixDQUFDO0FBRXhELE9BQU8sRUFBQyxrQkFBa0IsRUFBQyxNQUFNLHdCQUF3QixDQUFDO0FBQzFELE9BQU8sRUFBZSxNQUFNLEVBQUMsTUFBTSxVQUFVLENBQUM7QUFDOUMsT0FBTyxFQUFDLE1BQU0sRUFBQyxNQUFNLHdCQUF3QixDQUFDO0FBQzlDLE9BQU8sRUFBQyxzQkFBc0IsRUFBQyxNQUFNLHlC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O1lBNWVnSixRQUFROztBQTJqQm5LLE1BQU0sVUFBVSxpQkFBaUIsQ0FBQyxDQUFvQjtJQUNwRCxPQUFPLENBQUMsQ0FBQyxjQUFjLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDO0FBQ2xDLENBQUM7QUFFRCxNQUFNLFVBQVUsb0JBQW9CLENBQUMsQ0FBb0I7SUFDdkQsT0FBTyxDQUFDLENBQUMsaUJBQWlCLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDO0FBQ3JDLENBQUM7QUFFRDs7Ozs7R0FLRztBQUNILE1BQU0sQ0FBQyxNQUFNLGtCQUFrQixHQUMzQixJQUFJLGNBQWMsQ0FBdUMsb0JBQW9CLENBQUMsQ0FBQztBQUVuRixNQUFNLFVBQVUsd0JBQXdCO0lBQ3RDLE9BQU87UUFDTCxpQkFBaUI7UUFDakI7WUFDRSxPQUFPLEVBQUUsZUFBZTtZQUN4QixLQUFLLEVBQUUsSUFBSTtZQUNYLFVBQVUsRUFBRSxpQkFBaUI7WUFDN0IsSUFBSSxFQUFFLENBQUMsaUJBQWlCLENBQUM7U0FDMUI7UUFDRCxFQUFDLE9BQU8sRUFBRSxrQkFBa0IsRUFBRSxVQUFVLEVBQUUsb0JBQW9CLEVBQUUsSUFBSSxFQUFFLENBQUMsaUJBQWlCLENBQUMsRUFBQztRQUMxRixFQUFDLE9BQU8sRUFBRSxzQkFBc0IsRUFBRSxLQUFLLEVBQUUsSUFBSSxFQUFFLFdBQVcsRUFBRSxrQkFBa0IsRUFBQztLQUNoRixDQUFDO0FBQ0osQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0FQUF9CQVNFX0hSRUYsIEhhc2hMb2NhdGlvblN0cmF0ZWd5LCBMb2NhdGlvbiwgTE9DQVRJT05fSU5JVElBTElaRUQsIExvY2F0aW9uU3RyYXRlZ3ksIFBhdGhMb2NhdGlvblN0cmF0ZWd5LCBQbGF0Zm9ybUxvY2F0aW9uLCBWaWV3cG9ydFNjcm9sbGVyLCDJtWdldERPTSBhcyBnZXRET019IGZyb20gJ0Bhbmd1bGFyL2NvbW1vbic7XG5pbXBvcnQge0FOQUxZWkVfRk9SX0VOVFJZX0NPTVBPTkVOVFMsIEFQUF9CT09UU1RSQVBfTElTVEVORVIsIEFQUF9JTklUSUFMSVpFUiwgQXBwbGljYXRpb25SZWYsIENvbXBpbGVyLCBDb21wb25lbnRSZWYsIEluamVjdCwgSW5qZWN0YWJsZSwgSW5qZWN0aW9uVG9rZW4sIEluamVjdG9yLCBNb2R1bGVXaXRoUHJvdmlkZXJzLCBOZ01vZHVsZSwgTmdNb2R1bGVGYWN0b3J5TG9hZGVyLCBOZ1Byb2JlVG9rZW4sIE9wdGlvbmFsLCBQcm92aWRlciwgU2tpcFNlbGYsIFN5c3RlbUpzTmdNb2R1bGVMb2FkZXJ9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHtvZiwgU3ViamVjdH0gZnJvbSAncnhqcyc7XG5cbmltcG9ydCB7RW1wdHlPdXRsZXRDb21wb25lbnR9IGZyb20gJy4vY29tcG9uZW50cy9lbXB0eV9vdXRsZXQnO1xuaW1wb3J0IHtSb3V0ZSwgUm91dGVzfSBmcm9tICcuL2NvbmZpZyc7XG5pbXBvcnQge1JvdXRlckxpbmssIFJvdXRlckxpbmtXaXRoSHJlZn0gZnJvbSAnLi9kaXJlY3RpdmVzL3JvdXRlcl9saW5rJztcbmltcG9ydCB7Um91dGVyTGlua0FjdGl2ZX0gZnJvbSAnLi9kaXJlY3RpdmVzL3JvdXRlcl9saW5rX2FjdGl2ZSc7XG5pbXBvcnQge1JvdXRlck91dGxldH0gZnJvbSAnLi9kaXJlY3RpdmVzL3JvdXRlcl9vdXRsZXQnO1xuaW1wb3J0IHtFdmVudH0gZnJvbSAnLi9ldmVudHMnO1xuaW1wb3J0IHtSb3V0ZVJldXNlU3RyYXRlZ3l9IGZyb20gJy4vcm91dGVfcmV1c2Vfc3RyYXRlZ3knO1xuaW1wb3J0IHtFcnJvckhhbmRsZXIsIFJvdXRlcn0gZnJvbSAnLi9yb3V0ZXInO1xuaW1wb3J0IHtST1VURVN9IGZyb20gJy4vcm91dGVyX2NvbmZpZ19sb2FkZXInO1xuaW1wb3J0IHtDaGlsZHJlbk91dGxldENvbnRleHRzfSBmcm9tICcuL3JvdXRlcl9vdXRsZXRfY29udGV4dCc7XG5pbXBvcnQge05vUHJlbG9hZGluZywgUHJlbG9hZEFsbE1vZHVsZXMsIFByZWxvYWRpbmdTdHJhdGVneSwgUm91dGVyUHJlbG9hZGVyfSBmcm9tICcuL3JvdXRlcl9wcmVsb2FkZXInO1xuaW1wb3J0IHtSb3V0ZXJTY3JvbGxlcn0gZnJvbSAnLi9yb3V0ZXJfc2Nyb2xsZXInO1xuaW1wb3J0IHtBY3RpdmF0ZWRSb3V0ZX0gZnJvbSAnLi9yb3V0ZXJfc3RhdGUnO1xuaW1wb3J0IHtVcmxIYW5kbGluZ1N0cmF0ZWd5fSBmcm9tICcuL3VybF9oYW5kbGluZ19zdHJhdGVneSc7XG5pbXBvcnQge0RlZmF1bHRVcmxTZXJpYWxpemVyLCBVcmxTZXJpYWxpemVyLCBVcmxUcmVlfSBmcm9tICcuL3VybF90cmVlJztcbmltcG9ydCB7ZmxhdHRlbn0gZnJvbSAnLi91dGlscy9jb2xsZWN0aW9uJztcblxuLyoqXG4gKiBUaGUgZGlyZWN0aXZlcyBkZWZpbmVkIGluIHRoZSBgUm91dGVyTW9kdWxlYC5cbiAqL1xuY29uc3QgUk9VVEVSX0RJUkVDVElWRVMgPVxuICAgIFtSb3V0ZXJPdXRsZXQsIFJvdXRlckxpbmssIFJvdXRlckxpbmtXaXRoSHJlZiwgUm91dGVyTGlua0FjdGl2ZSwgRW1wdHlPdXRsZXRDb21wb25lbnRdO1xuXG4vKipcbiAqIEEgW0RJIHRva2VuXShndWlkZS9nbG9zc2FyeS8jZGktdG9rZW4pIGZvciB0aGUgcm91dGVyIHNlcnZpY2UuXG4gKlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgY29uc3QgUk9VVEVSX0NPTkZJR1VSQVRJT04gPSBuZXcgSW5qZWN0aW9uVG9rZW48RXh0cmFPcHRpb25zPignUk9VVEVSX0NPTkZJR1VSQVRJT04nKTtcblxuLyoqXG4gKiBAZG9jc05vdFJlcXVpcmVkXG4gKi9cbmV4cG9ydCBjb25zdCBST1VURVJfRk9SUk9PVF9HVUFSRCA9IG5ldyBJbmplY3Rpb25Ub2tlbjx2b2lkPignUk9VVEVSX0ZPUlJPT1RfR1VBUkQnKTtcblxuZXhwb3J0IGNvbnN0IFJPVVRFUl9QUk9WSURFUlM6IFByb3ZpZGVyW10gPSBbXG4gIExvY2F0aW9uLFxuICB7cHJvdmlkZTogVXJsU2VyaWFsaXplciwgdXNlQ2xhc3M6IERlZmF1bHRVcmxTZXJpYWxpemVyfSxcbiAge1xuICAgIHByb3ZpZGU6IFJvdXRlcixcbiAgICB1c2VGYWN0b3J5OiBzZXR1cFJvdXRlcixcbiAgICBkZXBzOiBbXG4gICAgICBVcmxTZXJpYWxpemVyLCBDaGlsZHJlbk91dGxldENvbnRleHRzLCBMb2NhdGlvbiwgSW5qZWN0b3IsIE5nTW9kdWxlRmFjdG9yeUxvYWRlciwgQ29tcGlsZXIsXG4gICAgICBST1VURVMsIFJPVVRFUl9DT05GSUdVUkFUSU9OLCBbVXJsSGFuZGxpbmdTdHJhdGVneSwgbmV3IE9wdGlvbmFsKCldLFxuICAgICAgW1JvdXRlUmV1c2VTdHJhdGVneSwgbmV3IE9wdGlvbmFsKCldXG4gICAgXVxuICB9LFxuICBDaGlsZHJlbk91dGxldENvbnRleHRzLFxuICB7cHJvdmlkZTogQWN0aXZhdGVkUm91dGUsIHVzZUZhY3Rvcnk6IHJvb3RSb3V0ZSwgZGVwczogW1JvdXRlcl19LFxuICB7cHJvdmlkZTogTmdNb2R1bGVGYWN0b3J5TG9hZGVyLCB1c2VDbGFzczogU3lzdGVtSnNOZ01vZHVsZUxvYWRlcn0sXG4gIFJvdXRlclByZWxvYWRlcixcbiAgTm9QcmVsb2FkaW5nLFxuICBQcmVsb2FkQWxsTW9kdWxlcyxcbiAge3Byb3ZpZGU6IFJPVVRFUl9DT05GSUdVUkFUSU9OLCB1c2VWYWx1ZToge2VuYWJsZVRyYWNpbmc6IGZhbHNlfX0sXG5dO1xuXG5leHBvcnQgZnVuY3Rpb24gcm91dGVyTmdQcm9iZVRva2VuKCkge1xuICByZXR1cm4gbmV3IE5nUHJvYmVUb2tlbignUm91dGVyJywgUm91dGVyKTtcbn1cblxuLyoqXG4gKiBAZGVzY3JpcHRpb25cbiAqXG4gKiBBZGRzIGRpcmVjdGl2ZXMgYW5kIHByb3ZpZGVycyBmb3IgaW4tYXBwIG5hdmlnYXRpb24gYW1vbmcgdmlld3MgZGVmaW5lZCBpbiBhbiBhcHBsaWNhdGlvbi5cbiAqIFVzZSB0aGUgQW5ndWxhciBgUm91dGVyYCBzZXJ2aWNlIHRvIGRlY2xhcmF0aXZlbHkgc3BlY2lmeSBhcHBsaWNhdGlvbiBzdGF0ZXMgYW5kIG1hbmFnZSBzdGF0ZVxuICogdHJhbnNpdGlvbnMuXG4gKlxuICogWW91IGNhbiBpbXBvcnQgdGhpcyBOZ01vZHVsZSBtdWx0aXBsZSB0aW1lcywgb25jZSBmb3IgZWFjaCBsYXp5LWxvYWRlZCBidW5kbGUuXG4gKiBIb3dldmVyLCBvbmx5IG9uZSBgUm91dGVyYCBzZXJ2aWNlIGNhbiBiZSBhY3RpdmUuXG4gKiBUbyBlbnN1cmUgdGhpcywgdGhlcmUgYXJlIHR3byB3YXlzIHRvIHJlZ2lzdGVyIHJvdXRlcyB3aGVuIGltcG9ydGluZyB0aGlzIG1vZHVsZTpcbiAqXG4gKiAqIFRoZSBgZm9yUm9vdCgpYCBtZXRob2QgY3JlYXRlcyBhbiBgTmdNb2R1bGVgIHRoYXQgY29udGFpbnMgYWxsIHRoZSBkaXJlY3RpdmVzLCB0aGUgZ2l2ZW5cbiAqIHJvdXRlcywgYW5kIHRoZSBgUm91dGVyYCBzZXJ2aWNlIGl0c2VsZi5cbiAqICogVGhlIGBmb3JDaGlsZCgpYCBtZXRob2QgY3JlYXRlcyBhbiBgTmdNb2R1bGVgIHRoYXQgY29udGFpbnMgYWxsIHRoZSBkaXJlY3RpdmVzIGFuZCB0aGUgZ2l2ZW5cbiAqIHJvdXRlcywgYnV0IGRvZXMgbm90IGluY2x1ZGUgdGhlIGBSb3V0ZXJgIHNlcnZpY2UuXG4gKlxuICogQHNlZSBbUm91dGluZyBhbmQgTmF2aWdhdGlvbiBndWlkZV0oZ3VpZGUvcm91dGVyKSBmb3IgYW5cbiAqIG92ZXJ2aWV3IG9mIGhvdyB0aGUgYFJvdXRlcmAgc2VydmljZSBzaG91bGQgYmUgdXNlZC5cbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbkBOZ01vZHVsZSh7XG4gIGRlY2xhcmF0aW9uczogUk9VVEVSX0RJUkVDVElWRVMsXG4gIGV4cG9ydHM6IFJPVVRFUl9ESVJFQ1RJVkVTLFxuICBlbnRyeUNvbXBvbmVudHM6IFtFbXB0eU91dGxldENvbXBvbmVudF1cbn0pXG5leHBvcnQgY2xhc3MgUm91dGVyTW9kdWxlIHtcbiAgLy8gTm90ZTogV2UgYXJlIGluamVjdGluZyB0aGUgUm91dGVyIHNvIGl0IGdldHMgY3JlYXRlZCBlYWdlcmx5Li4uXG4gIGNvbnN0cnVjdG9yKEBPcHRpb25hbCgpIEBJbmplY3QoUk9VVEVSX0ZPUlJPT1RfR1VBUkQpIGd1YXJkOiBhbnksIEBPcHRpb25hbCgpIHJvdXRlcjogUm91dGVyKSB7fVxuXG4gIC8qKlxuICAgKiBDcmVhdGVzIGFuZCBjb25maWd1cmVzIGEgbW9kdWxlIHdpdGggYWxsIHRoZSByb3V0ZXIgcHJvdmlkZXJzIGFuZCBkaXJlY3RpdmVzLlxuICAgKiBPcHRpb25hbGx5IHNldHMgdXAgYW4gYXBwbGljYXRpb24gbGlzdGVuZXIgdG8gcGVyZm9ybSBhbiBpbml0aWFsIG5hdmlnYXRpb24uXG4gICAqXG4gICAqIFdoZW4gcmVnaXN0ZXJpbmcgdGhlIE5nTW9kdWxlIGF0IHRoZSByb290LCBpbXBvcnQgYXMgZm9sbG93czpcbiAgICpcbiAgICogYGBgXG4gICAqIEBOZ01vZHVsZSh7XG4gICAqICAgaW1wb3J0czogW1JvdXRlck1vZHVsZS5mb3JSb290KFJPVVRFUyldXG4gICAqIH0pXG4gICAqIGNsYXNzIE15TmdNb2R1bGUge31cbiAgICogYGBgXG4gICAqXG4gICAqIEBwYXJhbSByb3V0ZXMgQW4gYXJyYXkgb2YgYFJvdXRlYCBvYmplY3RzIHRoYXQgZGVmaW5lIHRoZSBuYXZpZ2F0aW9uIHBhdGhzIGZvciB0aGUgYXBwbGljYXRpb24uXG4gICAqIEBwYXJhbSBjb25maWcgQW4gYEV4dHJhT3B0aW9uc2AgY29uZmlndXJhdGlvbiBvYmplY3QgdGhhdCBjb250cm9scyBob3cgbmF2aWdhdGlvbiBpcyBwZXJmb3JtZWQuXG4gICAqIEByZXR1cm4gVGhlIG5ldyBgTmdNb2R1bGVgLlxuICAgKlxuICAgKi9cbiAgc3RhdGljIGZvclJvb3Qocm91dGVzOiBSb3V0ZXMsIGNvbmZpZz86IEV4dHJhT3B0aW9ucyk6IE1vZHVsZVdpdGhQcm92aWRlcnM8Um91dGVyTW9kdWxlPiB7XG4gICAgcmV0dXJuIHtcbiAgICAgIG5nTW9kdWxlOiBSb3V0ZXJNb2R1bGUsXG4gICAgICBwcm92aWRlcnM6IFtcbiAgICAgICAgUk9VVEVSX1BST1ZJREVSUyxcbiAgICAgICAgcHJvdmlkZVJvdXRlcyhyb3V0ZXMpLFxuICAgICAgICB7XG4gICAgICAgICAgcHJvdmlkZTogUk9VVEVSX0ZPUlJPT1RfR1VBUkQsXG4gICAgICAgICAgdXNlRmFjdG9yeTogcHJvdmlkZUZvclJvb3RHdWFyZCxcbiAgICAgICAgICBkZXBzOiBbW1JvdXRlciwgbmV3IE9wdGlvbmFsKCksIG5ldyBTa2lwU2VsZigpXV1cbiAgICAgICAgfSxcbiAgICAgICAge3Byb3ZpZGU6IFJPVVRFUl9DT05GSUdVUkFUSU9OLCB1c2VWYWx1ZTogY29uZmlnID8gY29uZmlnIDoge319LFxuICAgICAgICB7XG4gICAgICAgICAgcHJvdmlkZTogTG9jYXRpb25TdHJhdGVneSxcbiAgICAgICAgICB1c2VGYWN0b3J5OiBwcm92aWRlTG9jYXRpb25TdHJhdGVneSxcbiAgICAgICAgICBkZXBzOlxuICAgICAgICAgICAgICBbUGxhdGZvcm1Mb2NhdGlvbiwgW25ldyBJbmplY3QoQVBQX0JBU0VfSFJFRiksIG5ldyBPcHRpb25hbCgpXSwgUk9VVEVSX0NPTkZJR1VSQVRJT05dXG4gICAgICAgIH0sXG4gICAgICAgIHtcbiAgICAgICAgICBwcm92aWRlOiBSb3V0ZXJTY3JvbGxlcixcbiAgICAgICAgICB1c2VGYWN0b3J5OiBjcmVhdGVSb3V0ZXJTY3JvbGxlcixcbiAgICAgICAgICBkZXBzOiBbUm91dGVyLCBWaWV3cG9ydFNjcm9sbGVyLCBST1VURVJfQ09ORklHVVJBVElPTl1cbiAgICAgICAgfSxcbiAgICAgICAge1xuICAgICAgICAgIHByb3ZpZGU6IFByZWxvYWRpbmdTdHJhdGVneSxcbiAgICAgICAgICB1c2VFeGlzdGluZzogY29uZmlnICYmIGNvbmZpZy5wcmVsb2FkaW5nU3RyYXRlZ3kgPyBjb25maWcucHJlbG9hZGluZ1N0cmF0ZWd5IDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBOb1ByZWxvYWRpbmdcbiAgICAgICAgfSxcbiAgICAgICAge3Byb3ZpZGU6IE5nUHJvYmVUb2tlbiwgbXVsdGk6IHRydWUsIHVzZUZhY3Rvcnk6IHJvdXRlck5nUHJvYmVUb2tlbn0sXG4gICAgICAgIHByb3ZpZGVSb3V0ZXJJbml0aWFsaXplcigpLFxuICAgICAgXSxcbiAgICB9O1xuICB9XG5cbiAgLyoqXG4gICAqIENyZWF0ZXMgYSBtb2R1bGUgd2l0aCBhbGwgdGhlIHJvdXRlciBkaXJlY3RpdmVzIGFuZCBhIHByb3ZpZGVyIHJlZ2lzdGVyaW5nIHJvdXRlcyxcbiAgICogd2l0aG91dCBjcmVhdGluZyBhIG5ldyBSb3V0ZXIgc2VydmljZS5cbiAgICogV2hlbiByZWdpc3RlcmluZyBmb3Igc3VibW9kdWxlcyBhbmQgbGF6eS1sb2FkZWQgc3VibW9kdWxlcywgY3JlYXRlIHRoZSBOZ01vZHVsZSBhcyBmb2xsb3dzOlxuICAgKlxuICAgKiBgYGBcbiAgICogQE5nTW9kdWxlKHtcbiAgICogICBpbXBvcnRzOiBbUm91dGVyTW9kdWxlLmZvckNoaWxkKFJPVVRFUyldXG4gICAqIH0pXG4gICAqIGNsYXNzIE15TmdNb2R1bGUge31cbiAgICogYGBgXG4gICAqXG4gICAqIEBwYXJhbSByb3V0ZXMgQW4gYXJyYXkgb2YgYFJvdXRlYCBvYmplY3RzIHRoYXQgZGVmaW5lIHRoZSBuYXZpZ2F0aW9uIHBhdGhzIGZvciB0aGUgc3VibW9kdWxlLlxuICAgKiBAcmV0dXJuIFRoZSBuZXcgTmdNb2R1bGUuXG4gICAqXG4gICAqL1xuICBzdGF0aWMgZm9yQ2hpbGQocm91dGVzOiBSb3V0ZXMpOiBNb2R1bGVXaXRoUHJvdmlkZXJzPFJvdXRlck1vZHVsZT4ge1xuICAgIHJldHVybiB7bmdNb2R1bGU6IFJvdXRlck1vZHVsZSwgcHJvdmlkZXJzOiBbcHJvdmlkZVJvdXRlcyhyb3V0ZXMpXX07XG4gIH1cbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGNyZWF0ZVJvdXRlclNjcm9sbGVyKFxuICAgIHJvdXRlcjogUm91dGVyLCB2aWV3cG9ydFNjcm9sbGVyOiBWaWV3cG9ydFNjcm9sbGVyLCBjb25maWc6IEV4dHJhT3B0aW9ucyk6IFJvdXRlclNjcm9sbGVyIHtcbiAgaWYgKGNvbmZpZy5zY3JvbGxPZmZzZXQpIHtcbiAgICB2aWV3cG9ydFNjcm9sbGVyLnNldE9mZnNldChjb25maWcuc2Nyb2xsT2Zmc2V0KTtcbiAgfVxuICByZXR1cm4gbmV3IFJvdXRlclNjcm9sbGVyKHJvdXRlciwgdmlld3BvcnRTY3JvbGxlciwgY29uZmlnKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHByb3ZpZGVMb2NhdGlvblN0cmF0ZWd5KFxuICAgIHBsYXRmb3JtTG9jYXRpb25TdHJhdGVneTogUGxhdGZvcm1Mb2NhdGlvbiwgYmFzZUhyZWY6IHN0cmluZywgb3B0aW9uczogRXh0cmFPcHRpb25zID0ge30pIHtcbiAgcmV0dXJuIG9wdGlvbnMudXNlSGFzaCA/IG5ldyBIYXNoTG9jYXRpb25TdHJhdGVneShwbGF0Zm9ybUxvY2F0aW9uU3RyYXRlZ3ksIGJhc2VIcmVmKSA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICBuZXcgUGF0aExvY2F0aW9uU3RyYXRlZ3kocGxhdGZvcm1Mb2NhdGlvblN0cmF0ZWd5LCBiYXNlSHJlZik7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBwcm92aWRlRm9yUm9vdEd1YXJkKHJvdXRlcjogUm91dGVyKTogYW55IHtcbiAgaWYgKHJvdXRlcikge1xuICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgYFJvdXRlck1vZHVsZS5mb3JSb290KCkgY2FsbGVkIHR3aWNlLiBMYXp5IGxvYWRlZCBtb2R1bGVzIHNob3VsZCB1c2UgUm91dGVyTW9kdWxlLmZvckNoaWxkKCkgaW5zdGVhZC5gKTtcbiAgfVxuICByZXR1cm4gJ2d1YXJkZWQnO1xufVxuXG4vKipcbiAqIFJlZ2lzdGVycyBhIFtESSBwcm92aWRlcl0oZ3VpZGUvZ2xvc3NhcnkjcHJvdmlkZXIpIGZvciBhIHNldCBvZiByb3V0ZXMuXG4gKiBAcGFyYW0gcm91dGVzIFRoZSByb3V0ZSBjb25maWd1cmF0aW9uIHRvIHByb3ZpZGUuXG4gKlxuICogQHVzYWdlTm90ZXNcbiAqXG4gKiBgYGBcbiAqIEBOZ01vZHVsZSh7XG4gKiAgIGltcG9ydHM6IFtSb3V0ZXJNb2R1bGUuZm9yQ2hpbGQoUk9VVEVTKV0sXG4gKiAgIHByb3ZpZGVyczogW3Byb3ZpZGVSb3V0ZXMoRVhUUkFfUk9VVEVTKV1cbiAqIH0pXG4gKiBjbGFzcyBNeU5nTW9kdWxlIHt9XG4gKiBgYGBcbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBwcm92aWRlUm91dGVzKHJvdXRlczogUm91dGVzKTogYW55IHtcbiAgcmV0dXJuIFtcbiAgICB7cHJvdmlkZTogQU5BTFlaRV9GT1JfRU5UUllfQ09NUE9ORU5UUywgbXVsdGk6IHRydWUsIHVzZVZhbHVlOiByb3V0ZXN9LFxuICAgIHtwcm92aWRlOiBST1VURVMsIG11bHRpOiB0cnVlLCB1c2VWYWx1ZTogcm91dGVzfSxcbiAgXTtcbn1cblxuLyoqXG4gKiBBbGxvd2VkIHZhbHVlcyBpbiBhbiBgRXh0cmFPcHRpb25zYCBvYmplY3QgdGhhdCBjb25maWd1cmVcbiAqIHdoZW4gdGhlIHJvdXRlciBwZXJmb3JtcyB0aGUgaW5pdGlhbCBuYXZpZ2F0aW9uIG9wZXJhdGlvbi5cbiAqXG4gKiAqICdlbmFibGVkJyAtIFRoZSBpbml0aWFsIG5hdmlnYXRpb24gc3RhcnRzIGJlZm9yZSB0aGUgcm9vdCBjb21wb25lbnQgaXMgY3JlYXRlZC5cbiAqIFRoZSBib290c3RyYXAgaXMgYmxvY2tlZCB1bnRpbCB0aGUgaW5pdGlhbCBuYXZpZ2F0aW9uIGlzIGNvbXBsZXRlLiBUaGlzIHZhbHVlIGlzIHJlcXVpcmVkXG4gKiBmb3IgW3NlcnZlci1zaWRlIHJlbmRlcmluZ10oZ3VpZGUvdW5pdmVyc2FsKSB0byB3b3JrLlxuICogKiAnZGlzYWJsZWQnIC0gVGhlIGluaXRpYWwgbmF2aWdhdGlvbiBpcyBub3QgcGVyZm9ybWVkLiBUaGUgbG9jYXRpb24gbGlzdGVuZXIgaXMgc2V0IHVwIGJlZm9yZVxuICogdGhlIHJvb3QgY29tcG9uZW50IGdldHMgY3JlYXRlZC4gVXNlIGlmIHRoZXJlIGlzIGEgcmVhc29uIHRvIGhhdmVcbiAqIG1vcmUgY29udHJvbCBvdmVyIHdoZW4gdGhlIHJvdXRlciBzdGFydHMgaXRzIGluaXRpYWwgbmF2aWdhdGlvbiBkdWUgdG8gc29tZSBjb21wbGV4XG4gKiBpbml0aWFsaXphdGlvbiBsb2dpYy5cbiAqXG4gKiBUaGUgZm9sbG93aW5nIHZhbHVlcyBoYXZlIGJlZW4gW2RlcHJlY2F0ZWRdKGd1aWRlL3JlbGVhc2VzI2RlcHJlY2F0aW9uLXByYWN0aWNlcykgc2luY2UgdjQsXG4gKiBhbmQgc2hvdWxkIG5vdCBiZSB1c2VkIGZvciBuZXcgYXBwbGljYXRpb25zLlxuICpcbiAqICogJ2xlZ2FjeV9lbmFibGVkJy0gKERlZmF1bHQsIGZvciBjb21wYXRpYmlsaXR5LikgVGhlIGluaXRpYWwgbmF2aWdhdGlvbiBzdGFydHMgYWZ0ZXIgdGhlIHJvb3RcbiAqIGNvbXBvbmVudCBoYXMgYmVlbiBjcmVhdGVkLiBUaGUgYm9vdHN0cmFwIGlzIG5vdCBibG9ja2VkIHVudGlsIHRoZSBpbml0aWFsIG5hdmlnYXRpb24gaXNcbiAqIGNvbXBsZXRlLlxuICogKiAnbGVnYWN5X2Rpc2FibGVkJy0gVGhlIGluaXRpYWwgbmF2aWdhdGlvbiBpcyBub3QgcGVyZm9ybWVkLiBUaGUgbG9jYXRpb24gbGlzdGVuZXIgaXMgc2V0IHVwXG4gKiBhZnRlciB0aGUgcm9vdCBjb21wb25lbnQgZ2V0cyBjcmVhdGVkLlxuICogKiBgdHJ1ZWAgLSBzYW1lIGFzICdsZWdhY3lfZW5hYmxlZCcuXG4gKiAqIGBmYWxzZWAgLSBzYW1lIGFzICdsZWdhY3lfZGlzYWJsZWQnLlxuICpcbiAqIFRoZSAnbGVnYWN5X2VuYWJsZWQnIGFuZCAnbGVnYWN5X2Rpc2FibGVkJyBzaG91bGQgbm90IGJlIHVzZWQgZm9yIG5ldyBhcHBsaWNhdGlvbnMuXG4gKlxuICogQHNlZSBgZm9yUm9vdCgpYFxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IHR5cGUgSW5pdGlhbE5hdmlnYXRpb24gPSB0cnVlfGZhbHNlfCdlbmFibGVkJ3wnZGlzYWJsZWQnfCdsZWdhY3lfZW5hYmxlZCd8J2xlZ2FjeV9kaXNhYmxlZCc7XG5cbi8qKlxuICogQSBzZXQgb2YgY29uZmlndXJhdGlvbiBvcHRpb25zIGZvciBhIHJvdXRlciBtb2R1bGUsIHByb3ZpZGVkIGluIHRoZVxuICogYGZvclJvb3QoKWAgbWV0aG9kLlxuICpcbiAqIEBzZWUgYGZvclJvb3QoKWBcbiAqXG4gKlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgaW50ZXJmYWNlIEV4dHJhT3B0aW9ucyB7XG4gIC8qKlxuICAgKiBXaGVuIHRydWUsIGxvZyBhbGwgaW50ZXJuYWwgbmF2aWdhdGlvbiBldmVudHMgdG8gdGhlIGNvbnNvbGUuXG4gICAqIFVzZSBmb3IgZGVidWdnaW5nLlxuICAgKi9cbiAgZW5hYmxlVHJhY2luZz86IGJvb2xlYW47XG5cbiAgLyoqXG4gICAqIFdoZW4gdHJ1ZSwgZW5hYmxlIHRoZSBsb2NhdGlvbiBzdHJhdGVneSB0aGF0IHVzZXMgdGhlIFVSTCBmcmFnbWVudFxuICAgKiBpbnN0ZWFkIG9mIHRoZSBoaXN0b3J5IEFQSS5cbiAgICovXG4gIHVzZUhhc2g/OiBib29sZWFuO1xuXG4gIC8qKlxuICAgKiBPbmUgb2YgYGVuYWJsZWRgIG9yIGBkaXNhYmxlZGAuXG4gICAqIFdoZW4gc2V0IHRvIGBlbmFibGVkYCwgdGhlIGluaXRpYWwgbmF2aWdhdGlvbiBzdGFydHMgYmVmb3JlIHRoZSByb290IGNvbXBvbmVudCBpcyBjcmVhdGVkLlxuICAgKiBUaGUgYm9vdHN0cmFwIGlzIGJsb2NrZWQgdW50aWwgdGhlIGluaXRpYWwgbmF2aWdhdGlvbiBpcyBjb21wbGV0ZS4gVGhpcyB2YWx1ZSBpcyByZXF1aXJlZCBmb3JcbiAgICogW3NlcnZlci1zaWRlIHJlbmRlcmluZ10oZ3VpZGUvdW5pdmVyc2FsKSB0byB3b3JrLlxuICAgKiBXaGVuIHNldCB0byBgZGlzYWJsZWRgLCB0aGUgaW5pdGlhbCBuYXZpZ2F0aW9uIGlzIG5vdCBwZXJmb3JtZWQuXG4gICAqIFRoZSBsb2NhdGlvbiBsaXN0ZW5lciBpcyBzZXQgdXAgYmVmb3JlIHRoZSByb290IGNvbXBvbmVudCBnZXRzIGNyZWF0ZWQuXG4gICAqIFVzZSBpZiB0aGVyZSBpcyBhIHJlYXNvbiB0byBoYXZlIG1vcmUgY29udHJvbCBvdmVyIHdoZW4gdGhlIHJvdXRlclxuICAgKiBzdGFydHMgaXRzIGluaXRpYWwgbmF2aWdhdGlvbiBkdWUgdG8gc29tZSBjb21wbGV4IGluaXRpYWxpemF0aW9uIGxvZ2ljLlxuICAgKlxuICAgKiBMZWdhY3kgdmFsdWVzIGFyZSBkZXByZWNhdGVkIHNpbmNlIHY0IGFuZCBzaG91bGQgbm90IGJlIHVzZWQgZm9yIG5ldyBhcHBsaWNhdGlvbnM6XG4gICAqXG4gICAqICogYGxlZ2FjeV9lbmFibGVkYCAtIERlZmF1bHQgZm9yIGNvbXBhdGliaWxpdHkuXG4gICAqIFRoZSBpbml0aWFsIG5hdmlnYXRpb24gc3RhcnRzIGFmdGVyIHRoZSByb290IGNvbXBvbmVudCBoYXMgYmVlbiBjcmVhdGVkLFxuICAgKiBidXQgdGhlIGJvb3RzdHJhcCBpcyBub3QgYmxvY2tlZCB1bnRpbCB0aGUgaW5pdGlhbCBuYXZpZ2F0aW9uIGlzIGNvbXBsZXRlLlxuICAgKiAqIGBsZWdhY3lfZGlzYWJsZWRgIC0gVGhlIGluaXRpYWwgbmF2aWdhdGlvbiBpcyBub3QgcGVyZm9ybWVkLlxuICAgKiBUaGUgbG9jYXRpb24gbGlzdGVuZXIgaXMgc2V0IHVwIGFmdGVyIHRoZSByb290IGNvbXBvbmVudCBnZXRzIGNyZWF0ZWQuXG4gICAqICogYHRydWVgIC0gc2FtZSBhcyBgbGVnYWN5X2VuYWJsZWRgLlxuICAgKiAqIGBmYWxzZWAgLSBzYW1lIGFzIGBsZWdhY3lfZGlzYWJsZWRgLlxuICAgKi9cbiAgaW5pdGlhbE5hdmlnYXRpb24/OiBJbml0aWFsTmF2aWdhdGlvbjtcblxuICAvKipcbiAgICogQSBjdXN0b20gZXJyb3IgaGFuZGxlciBmb3IgZmFpbGVkIG5hdmlnYXRpb25zLlxuICAgKiBJZiB0aGUgaGFuZGxlciByZXR1cm5zIGEgdmFsdWUsIHRoZSBuYXZpZ2F0aW9uIFByb21pc2UgaXMgcmVzb2x2ZWQgd2l0aCB0aGlzIHZhbHVlLlxuICAgKiBJZiB0aGUgaGFuZGxlciB0aHJvd3MgYW4gZXhjZXB0aW9uLCB0aGUgbmF2aWdhdGlvbiBQcm9taXNlIGlzIHJlamVjdGVkIHdpdGggdGhlIGV4Y2VwdGlvbi5cbiAgICpcbiAgICovXG4gIGVycm9ySGFuZGxlcj86IEVycm9ySGFuZGxlcjtcblxuICAvKipcbiAgICogQ29uZmlndXJlcyBhIHByZWxvYWRpbmcgc3RyYXRlZ3kuXG4gICAqIE9uZSBvZiBgUHJlbG9hZEFsbE1vZHVsZXNgIG9yIGBOb1ByZWxvYWRpbmdgICh0aGUgZGVmYXVsdCkuXG4gICAqL1xuICBwcmVsb2FkaW5nU3RyYXRlZ3k/OiBhbnk7XG5cbiAgLyoqXG4gICAqIERlZmluZSB3aGF0IHRoZSByb3V0ZXIgc2hvdWxkIGRvIGlmIGl0IHJlY2VpdmVzIGEgbmF2aWdhdGlvbiByZXF1ZXN0IHRvIHRoZSBjdXJyZW50IFVSTC5cbiAgICogRGVmYXVsdCBpcyBgaWdub3JlYCwgd2hpY2ggY2F1c2VzIHRoZSByb3V0ZXIgaWdub3JlcyB0aGUgbmF2aWdhdGlvbi5cbiAgICogVGhpcyBjYW4gZGlzYWJsZSBmZWF0dXJlcyBzdWNoIGFzIGEgXCJyZWZyZXNoXCIgYnV0dG9uLlxuICAgKiBVc2UgdGhpcyBvcHRpb24gdG8gY29uZmlndXJlIHRoZSBiZWhhdmlvciB3aGVuIG5hdmlnYXRpbmcgdG8gdGhlXG4gICAqIGN1cnJlbnQgVVJMLiBEZWZhdWx0IGlzICdpZ25vcmUnLlxuICAgKi9cbiAgb25TYW1lVXJsTmF2aWdhdGlvbj86ICdyZWxvYWQnfCdpZ25vcmUnO1xuXG4gIC8qKlxuICAgKiBDb25maWd1cmVzIGlmIHRoZSBzY3JvbGwgcG9zaXRpb24gbmVlZHMgdG8gYmUgcmVzdG9yZWQgd2hlbiBuYXZpZ2F0aW5nIGJhY2suXG4gICAqXG4gICAqICogJ2Rpc2FibGVkJy0gKERlZmF1bHQpIERvZXMgbm90aGluZy4gU2Nyb2xsIHBvc2l0aW9uIGlzIG1haW50YWluZWQgb24gbmF2aWdhdGlvbi5cbiAgICogKiAndG9wJy0gU2V0cyB0aGUgc2Nyb2xsIHBvc2l0aW9uIHRvIHggPSAwLCB5ID0gMCBvbiBhbGwgbmF2aWdhdGlvbi5cbiAgICogKiAnZW5hYmxlZCctIFJlc3RvcmVzIHRoZSBwcmV2aW91cyBzY3JvbGwgcG9zaXRpb24gb24gYmFja3dhcmQgbmF2aWdhdGlvbiwgZWxzZSBzZXRzIHRoZVxuICAgKiBwb3NpdGlvbiB0byB0aGUgYW5jaG9yIGlmIG9uZSBpcyBwcm92aWRlZCwgb3Igc2V0cyB0aGUgc2Nyb2xsIHBvc2l0aW9uIHRvIFswLCAwXSAoZm9yd2FyZFxuICAgKiBuYXZpZ2F0aW9uKS4gVGhpcyBvcHRpb24gd2lsbCBiZSB0aGUgZGVmYXVsdCBpbiB0aGUgZnV0dXJlLlxuICAgKlxuICAgKiBZb3UgY2FuIGltcGxlbWVudCBjdXN0b20gc2Nyb2xsIHJlc3RvcmF0aW9uIGJlaGF2aW9yIGJ5IGFkYXB0aW5nIHRoZSBlbmFibGVkIGJlaGF2aW9yIGFzXG4gICAqIGluIHRoZSBmb2xsb3dpbmcgZXhhbXBsZS5cbiAgICpcbiAgICogYGBgdHlwZXNjcmlwdFxuICAgKiBjbGFzcyBBcHBNb2R1bGUge1xuICAgKiAgIGNvbnN0cnVjdG9yKHJvdXRlcjogUm91dGVyLCB2aWV3cG9ydFNjcm9sbGVyOiBWaWV3cG9ydFNjcm9sbGVyKSB7XG4gICAqICAgICByb3V0ZXIuZXZlbnRzLnBpcGUoXG4gICAqICAgICAgIGZpbHRlcigoZTogRXZlbnQpOiBlIGlzIFNjcm9sbCA9PiBlIGluc3RhbmNlb2YgU2Nyb2xsKVxuICAgKiAgICAgKS5zdWJzY3JpYmUoZSA9PiB7XG4gICAqICAgICAgIGlmIChlLnBvc2l0aW9uKSB7XG4gICAqICAgICAgICAgLy8gYmFja3dhcmQgbmF2aWdhdGlvblxuICAgKiAgICAgICAgIHZpZXdwb3J0U2Nyb2xsZXIuc2Nyb2xsVG9Qb3NpdGlvbihlLnBvc2l0aW9uKTtcbiAgICogICAgICAgfSBlbHNlIGlmIChlLmFuY2hvcikge1xuICAgKiAgICAgICAgIC8vIGFuY2hvciBuYXZpZ2F0aW9uXG4gICAqICAgICAgICAgdmlld3BvcnRTY3JvbGxlci5zY3JvbGxUb0FuY2hvcihlLmFuY2hvcik7XG4gICAqICAgICAgIH0gZWxzZSB7XG4gICAqICAgICAgICAgLy8gZm9yd2FyZCBuYXZpZ2F0aW9uXG4gICAqICAgICAgICAgdmlld3BvcnRTY3JvbGxlci5zY3JvbGxUb1Bvc2l0aW9uKFswLCAwXSk7XG4gICAqICAgICAgIH1cbiAgICogICAgIH0pO1xuICAgKiAgIH1cbiAgICogfVxuICAgKiBgYGBcbiAgICovXG4gIHNjcm9sbFBvc2l0aW9uUmVzdG9yYXRpb24/OiAnZGlzYWJsZWQnfCdlbmFibGVkJ3wndG9wJztcblxuICAvKipcbiAgICogV2hlbiBzZXQgdG8gJ2VuYWJsZWQnLCBzY3JvbGxzIHRvIHRoZSBhbmNob3IgZWxlbWVudCB3aGVuIHRoZSBVUkwgaGFzIGEgZnJhZ21lbnQuXG4gICAqIEFuY2hvciBzY3JvbGxpbmcgaXMgZGlzYWJsZWQgYnkgZGVmYXVsdC5cbiAgICpcbiAgICogQW5jaG9yIHNjcm9sbGluZyBkb2VzIG5vdCBoYXBwZW4gb24gJ3BvcHN0YXRlJy4gSW5zdGVhZCwgd2UgcmVzdG9yZSB0aGUgcG9zaXRpb25cbiAgICogdGhhdCB3ZSBzdG9yZWQgb3Igc2Nyb2xsIHRvIHRoZSB0b3AuXG4gICAqL1xuICBhbmNob3JTY3JvbGxpbmc/OiAnZGlzYWJsZWQnfCdlbmFibGVkJztcblxuICAvKipcbiAgICogQ29uZmlndXJlcyB0aGUgc2Nyb2xsIG9mZnNldCB0aGUgcm91dGVyIHdpbGwgdXNlIHdoZW4gc2Nyb2xsaW5nIHRvIGFuIGVsZW1lbnQuXG4gICAqXG4gICAqIFdoZW4gZ2l2ZW4gYSB0dXBsZSB3aXRoIHggYW5kIHkgcG9zaXRpb24gdmFsdWUsXG4gICAqIHRoZSByb3V0ZXIgdXNlcyB0aGF0IG9mZnNldCBlYWNoIHRpbWUgaXQgc2Nyb2xscy5cbiAgICogV2hlbiBnaXZlbiBhIGZ1bmN0aW9uLCB0aGUgcm91dGVyIGludm9rZXMgdGhlIGZ1bmN0aW9uIGV2ZXJ5IHRpbWVcbiAgICogaXQgcmVzdG9yZXMgc2Nyb2xsIHBvc2l0aW9uLlxuICAgKi9cbiAgc2Nyb2xsT2Zmc2V0PzogW251bWJlciwgbnVtYmVyXXwoKCkgPT4gW251bWJlciwgbnVtYmVyXSk7XG5cbiAgLyoqXG4gICAqIERlZmluZXMgaG93IHRoZSByb3V0ZXIgbWVyZ2VzIHBhcmFtZXRlcnMsIGRhdGEsIGFuZCByZXNvbHZlZCBkYXRhIGZyb20gcGFyZW50IHRvIGNoaWxkXG4gICAqIHJvdXRlcy4gQnkgZGVmYXVsdCAoJ2VtcHR5T25seScpLCBpbmhlcml0cyBwYXJlbnQgcGFyYW1ldGVycyBvbmx5IGZvclxuICAgKiBwYXRoLWxlc3Mgb3IgY29tcG9uZW50LWxlc3Mgcm91dGVzLlxuICAgKiBTZXQgdG8gJ2Fsd2F5cycgdG8gZW5hYmxlIHVuY29uZGl0aW9uYWwgaW5oZXJpdGFuY2Ugb2YgcGFyZW50IHBhcmFtZXRlcnMuXG4gICAqL1xuICBwYXJhbXNJbmhlcml0YW5jZVN0cmF0ZWd5PzogJ2VtcHR5T25seSd8J2Fsd2F5cyc7XG5cbiAgLyoqXG4gICAqIEEgY3VzdG9tIGhhbmRsZXIgZm9yIG1hbGZvcm1lZCBVUkkgZXJyb3JzLiBUaGUgaGFuZGxlciBpcyBpbnZva2VkIHdoZW4gYGVuY29kZWRVUklgIGNvbnRhaW5zXG4gICAqIGludmFsaWQgY2hhcmFjdGVyIHNlcXVlbmNlcy5cbiAgICogVGhlIGRlZmF1bHQgaW1wbGVtZW50YXRpb24gaXMgdG8gcmVkaXJlY3QgdG8gdGhlIHJvb3QgVVJMLCBkcm9wcGluZ1xuICAgKiBhbnkgcGF0aCBvciBwYXJhbWV0ZXIgaW5mb3JtYXRpb24uIFRoZSBmdW5jdGlvbiB0YWtlcyB0aHJlZSBwYXJhbWV0ZXJzOlxuICAgKlxuICAgKiAtIGAnVVJJRXJyb3InYCAtIEVycm9yIHRocm93biB3aGVuIHBhcnNpbmcgYSBiYWQgVVJMLlxuICAgKiAtIGAnVXJsU2VyaWFsaXplcidgIC0gVXJsU2VyaWFsaXplciB0aGF04oCZcyBjb25maWd1cmVkIHdpdGggdGhlIHJvdXRlci5cbiAgICogLSBgJ3VybCdgIC0gIFRoZSBtYWxmb3JtZWQgVVJMIHRoYXQgY2F1c2VkIHRoZSBVUklFcnJvclxuICAgKiAqL1xuICBtYWxmb3JtZWRVcmlFcnJvckhhbmRsZXI/OlxuICAgICAgKGVycm9yOiBVUklFcnJvciwgdXJsU2VyaWFsaXplcjogVXJsU2VyaWFsaXplciwgdXJsOiBzdHJpbmcpID0+IFVybFRyZWU7XG5cbiAgLyoqXG4gICAqIERlZmluZXMgd2hlbiB0aGUgcm91dGVyIHVwZGF0ZXMgdGhlIGJyb3dzZXIgVVJMLiBCeSBkZWZhdWx0ICgnZGVmZXJyZWQnKSxcbiAgICogdXBkYXRlIGFmdGVyIHN1Y2Nlc3NmdWwgbmF2aWdhdGlvbi5cbiAgICogU2V0IHRvICdlYWdlcicgaWYgcHJlZmVyIHRvIHVwZGF0ZSB0aGUgVVJMIGF0IHRoZSBiZWdpbm5pbmcgb2YgbmF2aWdhdGlvbi5cbiAgICogVXBkYXRpbmcgdGhlIFVSTCBlYXJseSBhbGxvd3MgeW91IHRvIGhhbmRsZSBhIGZhaWx1cmUgb2YgbmF2aWdhdGlvbiBieVxuICAgKiBzaG93aW5nIGFuIGVycm9yIG1lc3NhZ2Ugd2l0aCB0aGUgVVJMIHRoYXQgZmFpbGVkLlxuICAgKi9cbiAgdXJsVXBkYXRlU3RyYXRlZ3k/OiAnZGVmZXJyZWQnfCdlYWdlcic7XG5cbiAgLyoqXG4gICAqIEVuYWJsZXMgYSBidWcgZml4IHRoYXQgY29ycmVjdHMgcmVsYXRpdmUgbGluayByZXNvbHV0aW9uIGluIGNvbXBvbmVudHMgd2l0aCBlbXB0eSBwYXRocy5cbiAgICogRXhhbXBsZTpcbiAgICpcbiAgICogYGBgXG4gICAqIGNvbnN0IHJvdXRlcyA9IFtcbiAgICogICB7XG4gICAqICAgICBwYXRoOiAnJyxcbiAgICogICAgIGNvbXBvbmVudDogQ29udGFpbmVyQ29tcG9uZW50LFxuICAgKiAgICAgY2hpbGRyZW46IFtcbiAgICogICAgICAgeyBwYXRoOiAnYScsIGNvbXBvbmVudDogQUNvbXBvbmVudCB9LFxuICAgKiAgICAgICB7IHBhdGg6ICdiJywgY29tcG9uZW50OiBCQ29tcG9uZW50IH0sXG4gICAqICAgICBdXG4gICAqICAgfVxuICAgKiBdO1xuICAgKiBgYGBcbiAgICpcbiAgICogRnJvbSB0aGUgYENvbnRhaW5lckNvbXBvbmVudGAsIHRoaXMgd2lsbCBub3Qgd29yazpcbiAgICpcbiAgICogYDxhIFtyb3V0ZXJMaW5rXT1cIlsnLi9hJ11cIj5MaW5rIHRvIEE8L2E+YFxuICAgKlxuICAgKiBIb3dldmVyLCB0aGlzIHdpbGwgd29yazpcbiAgICpcbiAgICogYDxhIFtyb3V0ZXJMaW5rXT1cIlsnLi4vYSddXCI+TGluayB0byBBPC9hPmBcbiAgICpcbiAgICogSW4gb3RoZXIgd29yZHMsIHlvdSdyZSByZXF1aXJlZCB0byB1c2UgYC4uL2AgcmF0aGVyIHRoYW4gYC4vYC4gVGhpcyBpcyBjdXJyZW50bHkgdGhlIGRlZmF1bHRcbiAgICogYmVoYXZpb3IuIFNldHRpbmcgdGhpcyBvcHRpb24gdG8gYGNvcnJlY3RlZGAgZW5hYmxlcyB0aGUgZml4LlxuICAgKi9cbiAgcmVsYXRpdmVMaW5rUmVzb2x1dGlvbj86ICdsZWdhY3knfCdjb3JyZWN0ZWQnO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gc2V0dXBSb3V0ZXIoXG4gICAgdXJsU2VyaWFsaXplcjogVXJsU2VyaWFsaXplciwgY29udGV4dHM6IENoaWxkcmVuT3V0bGV0Q29udGV4dHMsIGxvY2F0aW9uOiBMb2NhdGlvbixcbiAgICBpbmplY3RvcjogSW5qZWN0b3IsIGxvYWRlcjogTmdNb2R1bGVGYWN0b3J5TG9hZGVyLCBjb21waWxlcjogQ29tcGlsZXIsIGNvbmZpZzogUm91dGVbXVtdLFxuICAgIG9wdHM6IEV4dHJhT3B0aW9ucyA9IHt9LCB1cmxIYW5kbGluZ1N0cmF0ZWd5PzogVXJsSGFuZGxpbmdTdHJhdGVneSxcbiAgICByb3V0ZVJldXNlU3RyYXRlZ3k/OiBSb3V0ZVJldXNlU3RyYXRlZ3kpIHtcbiAgY29uc3Qgcm91dGVyID0gbmV3IFJvdXRlcihcbiAgICAgIG51bGwsIHVybFNlcmlhbGl6ZXIsIGNvbnRleHRzLCBsb2NhdGlvbiwgaW5qZWN0b3IsIGxvYWRlciwgY29tcGlsZXIsIGZsYXR0ZW4oY29uZmlnKSk7XG5cbiAgaWYgKHVybEhhbmRsaW5nU3RyYXRlZ3kpIHtcbiAgICByb3V0ZXIudXJsSGFuZGxpbmdTdHJhdGVneSA9IHVybEhhbmRsaW5nU3RyYXRlZ3k7XG4gIH1cblxuICBpZiAocm91dGVSZXVzZVN0cmF0ZWd5KSB7XG4gICAgcm91dGVyLnJvdXRlUmV1c2VTdHJhdGVneSA9IHJvdXRlUmV1c2VTdHJhdGVneTtcbiAgfVxuXG4gIGlmIChvcHRzLmVycm9ySGFuZGxlcikge1xuICAgIHJvdXRlci5lcnJvckhhbmRsZXIgPSBvcHRzLmVycm9ySGFuZGxlcjtcbiAgfVxuXG4gIGlmIChvcHRzLm1hbGZvcm1lZFVyaUVycm9ySGFuZGxlcikge1xuICAgIHJvdXRlci5tYWxmb3JtZWRVcmlFcnJvckhhbmRsZXIgPSBvcHRzLm1hbGZvcm1lZFVyaUVycm9ySGFuZGxlcjtcbiAgfVxuXG4gIGlmIChvcHRzLmVuYWJsZVRyYWNpbmcpIHtcbiAgICBjb25zdCBkb20gPSBnZXRET00oKTtcbiAgICByb3V0ZXIuZXZlbnRzLnN1YnNjcmliZSgoZTogRXZlbnQpID0+IHtcbiAgICAgIGRvbS5sb2dHcm91cChgUm91dGVyIEV2ZW50OiAkeyg8YW55PmUuY29uc3RydWN0b3IpLm5hbWV9YCk7XG4gICAgICBkb20ubG9nKGUudG9TdHJpbmcoKSk7XG4gICAgICBkb20ubG9nKGUpO1xuICAgICAgZG9tLmxvZ0dyb3VwRW5kKCk7XG4gICAgfSk7XG4gIH1cblxuICBpZiAob3B0cy5vblNhbWVVcmxOYXZpZ2F0aW9uKSB7XG4gICAgcm91dGVyLm9uU2FtZVVybE5hdmlnYXRpb24gPSBvcHRzLm9uU2FtZVVybE5hdmlnYXRpb247XG4gIH1cblxuICBpZiAob3B0cy5wYXJhbXNJbmhlcml0YW5jZVN0cmF0ZWd5KSB7XG4gICAgcm91dGVyLnBhcmFtc0luaGVyaXRhbmNlU3RyYXRlZ3kgPSBvcHRzLnBhcmFtc0luaGVyaXRhbmNlU3RyYXRlZ3k7XG4gIH1cblxuICBpZiAob3B0cy51cmxVcGRhdGVTdHJhdGVneSkge1xuICAgIHJvdXRlci51cmxVcGRhdGVTdHJhdGVneSA9IG9wdHMudXJsVXBkYXRlU3RyYXRlZ3k7XG4gIH1cblxuICBpZiAob3B0cy5yZWxhdGl2ZUxpbmtSZXNvbHV0aW9uKSB7XG4gICAgcm91dGVyLnJlbGF0aXZlTGlua1Jlc29sdXRpb24gPSBvcHRzLnJlbGF0aXZlTGlua1Jlc29sdXRpb247XG4gIH1cblxuICByZXR1cm4gcm91dGVyO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gcm9vdFJvdXRlKHJvdXRlcjogUm91dGVyKTogQWN0aXZhdGVkUm91dGUge1xuICByZXR1cm4gcm91dGVyLnJvdXRlclN0YXRlLnJvb3Q7XG59XG5cbi8qKlxuICogUm91dGVyIGluaXRpYWxpemF0aW9uIHJlcXVpcmVzIHR3byBzdGVwczpcbiAqXG4gKiBGaXJzdCwgd2Ugc3RhcnQgdGhlIG5hdmlnYXRpb24gaW4gYSBgQVBQX0lOSVRJQUxJWkVSYCB0byBibG9jayB0aGUgYm9vdHN0cmFwIGlmXG4gKiBhIHJlc29sdmVyIG9yIGEgZ3VhcmQgZXhlY3V0ZXMgYXN5bmNocm9ub3VzbHkuXG4gKlxuICogTmV4dCwgd2UgYWN0dWFsbHkgcnVuIGFjdGl2YXRpb24gaW4gYSBgQk9PVFNUUkFQX0xJU1RFTkVSYCwgdXNpbmcgdGhlXG4gKiBgYWZ0ZXJQcmVhY3RpdmF0aW9uYCBob29rIHByb3ZpZGVkIGJ5IHRoZSByb3V0ZXIuXG4gKiBUaGUgcm91dGVyIG5hdmlnYXRpb24gc3RhcnRzLCByZWFjaGVzIHRoZSBwb2ludCB3aGVuIHByZWFjdGl2YXRpb24gaXMgZG9uZSwgYW5kIHRoZW5cbiAqIHBhdXNlcy4gSXQgd2FpdHMgZm9yIHRoZSBob29rIHRvIGJlIHJlc29sdmVkLiBXZSB0aGVuIHJlc29sdmUgaXQgb25seSBpbiBhIGJvb3RzdHJhcCBsaXN0ZW5lci5cbiAqL1xuQEluamVjdGFibGUoKVxuZXhwb3J0IGNsYXNzIFJvdXRlckluaXRpYWxpemVyIHtcbiAgcHJpdmF0ZSBpbml0TmF2aWdhdGlvbjogYm9vbGVhbiA9IGZhbHNlO1xuICBwcml2YXRlIHJlc3VsdE9mUHJlYWN0aXZhdGlvbkRvbmUgPSBuZXcgU3ViamVjdDx2b2lkPigpO1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgaW5qZWN0b3I6IEluamVjdG9yKSB7fVxuXG4gIGFwcEluaXRpYWxpemVyKCk6IFByb21pc2U8YW55PiB7XG4gICAgY29uc3QgcDogUHJvbWlzZTxhbnk+ID0gdGhpcy5pbmplY3Rvci5nZXQoTE9DQVRJT05fSU5JVElBTElaRUQsIFByb21pc2UucmVzb2x2ZShudWxsKSk7XG4gICAgcmV0dXJuIHAudGhlbigoKSA9PiB7XG4gICAgICBsZXQgcmVzb2x2ZTogRnVuY3Rpb24gPSBudWxsITtcbiAgICAgIGNvbnN0IHJlcyA9IG5ldyBQcm9taXNlKHIgPT4gcmVzb2x2ZSA9IHIpO1xuICAgICAgY29uc3Qgcm91dGVyID0gdGhpcy5pbmplY3Rvci5nZXQoUm91dGVyKTtcbiAgICAgIGNvbnN0IG9wdHMgPSB0aGlzLmluamVjdG9yLmdldChST1VURVJfQ09ORklHVVJBVElPTik7XG5cbiAgICAgIGlmICh0aGlzLmlzTGVnYWN5RGlzYWJsZWQob3B0cykgfHwgdGhpcy5pc0xlZ2FjeUVuYWJsZWQob3B0cykpIHtcbiAgICAgICAgcmVzb2x2ZSh0cnVlKTtcblxuICAgICAgfSBlbHNlIGlmIChvcHRzLmluaXRpYWxOYXZpZ2F0aW9uID09PSAnZGlzYWJsZWQnKSB7XG4gICAgICAgIHJvdXRlci5zZXRVcExvY2F0aW9uQ2hhbmdlTGlzdGVuZXIoKTtcbiAgICAgICAgcmVzb2x2ZSh0cnVlKTtcblxuICAgICAgfSBlbHNlIGlmIChvcHRzLmluaXRpYWxOYXZpZ2F0aW9uID09PSAnZW5hYmxlZCcpIHtcbiAgICAgICAgcm91dGVyLmhvb2tzLmFmdGVyUHJlYWN0aXZhdGlvbiA9ICgpID0+IHtcbiAgICAgICAgICAvLyBvbmx5IHRoZSBpbml0aWFsIG5hdmlnYXRpb24gc2hvdWxkIGJlIGRlbGF5ZWRcbiAgICAgICAgICBpZiAoIXRoaXMuaW5pdE5hdmlnYXRpb24pIHtcbiAgICAgICAgICAgIHRoaXMuaW5pdE5hdmlnYXRpb24gPSB0cnVlO1xuICAgICAgICAgICAgcmVzb2x2ZSh0cnVlKTtcbiAgICAgICAgICAgIHJldHVybiB0aGlzLnJlc3VsdE9mUHJlYWN0aXZhdGlvbkRvbmU7XG5cbiAgICAgICAgICAgIC8vIHN1YnNlcXVlbnQgbmF2aWdhdGlvbnMgc2hvdWxkIG5vdCBiZSBkZWxheWVkXG4gICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIHJldHVybiBvZihudWxsKSBhcyBhbnk7XG4gICAgICAgICAgfVxuICAgICAgICB9O1xuICAgICAgICByb3V0ZXIuaW5pdGlhbE5hdmlnYXRpb24oKTtcblxuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKGBJbnZhbGlkIGluaXRpYWxOYXZpZ2F0aW9uIG9wdGlvbnM6ICcke29wdHMuaW5pdGlhbE5hdmlnYXRpb259J2ApO1xuICAgICAgfVxuXG4gICAgICByZXR1cm4gcmVzO1xuICAgIH0pO1xuICB9XG5cbiAgYm9vdHN0cmFwTGlzdGVuZXIoYm9vdHN0cmFwcGVkQ29tcG9uZW50UmVmOiBDb21wb25lbnRSZWY8YW55Pik6IHZvaWQge1xuICAgIGNvbnN0IG9wdHMgPSB0aGlzLmluamVjdG9yLmdldChST1VURVJfQ09ORklHVVJBVElPTik7XG4gICAgY29uc3QgcHJlbG9hZGVyID0gdGhpcy5pbmplY3Rvci5nZXQoUm91dGVyUHJlbG9hZGVyKTtcbiAgICBjb25zdCByb3V0ZXJTY3JvbGxlciA9IHRoaXMuaW5qZWN0b3IuZ2V0KFJvdXRlclNjcm9sbGVyKTtcbiAgICBjb25zdCByb3V0ZXIgPSB0aGlzLmluamVjdG9yLmdldChSb3V0ZXIpO1xuICAgIGNvbnN0IHJlZiA9IHRoaXMuaW5qZWN0b3IuZ2V0PEFwcGxpY2F0aW9uUmVmPihBcHBsaWNhdGlvblJlZik7XG5cbiAgICBpZiAoYm9vdHN0cmFwcGVkQ29tcG9uZW50UmVmICE9PSByZWYuY29tcG9uZW50c1swXSkge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIGlmICh0aGlzLmlzTGVnYWN5RW5hYmxlZChvcHRzKSkge1xuICAgICAgcm91dGVyLmluaXRpYWxOYXZpZ2F0aW9uKCk7XG4gICAgfSBlbHNlIGlmICh0aGlzLmlzTGVnYWN5RGlzYWJsZWQob3B0cykpIHtcbiAgICAgIHJvdXRlci5zZXRVcExvY2F0aW9uQ2hhbmdlTGlzdGVuZXIoKTtcbiAgICB9XG5cbiAgICBwcmVsb2FkZXIuc2V0VXBQcmVsb2FkaW5nKCk7XG4gICAgcm91dGVyU2Nyb2xsZXIuaW5pdCgpO1xuICAgIHJvdXRlci5yZXNldFJvb3RDb21wb25lbnRUeXBlKHJlZi5jb21wb25lbnRUeXBlc1swXSk7XG4gICAgdGhpcy5yZXN1bHRPZlByZWFjdGl2YXRpb25Eb25lLm5leHQobnVsbCEpO1xuICAgIHRoaXMucmVzdWx0T2ZQcmVhY3RpdmF0aW9uRG9uZS5jb21wbGV0ZSgpO1xuICB9XG5cbiAgcHJpdmF0ZSBpc0xlZ2FjeUVuYWJsZWQob3B0czogRXh0cmFPcHRpb25zKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIG9wdHMuaW5pdGlhbE5hdmlnYXRpb24gPT09ICdsZWdhY3lfZW5hYmxlZCcgfHwgb3B0cy5pbml0aWFsTmF2aWdhdGlvbiA9PT0gdHJ1ZSB8fFxuICAgICAgICBvcHRzLmluaXRpYWxOYXZpZ2F0aW9uID09PSB1bmRlZmluZWQ7XG4gIH1cblxuICBwcml2YXRlIGlzTGVnYWN5RGlzYWJsZWQob3B0czogRXh0cmFPcHRpb25zKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIG9wdHMuaW5pdGlhbE5hdmlnYXRpb24gPT09ICdsZWdhY3lfZGlzYWJsZWQnIHx8IG9wdHMuaW5pdGlhbE5hdmlnYXRpb24gPT09IGZhbHNlO1xuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRBcHBJbml0aWFsaXplcihyOiBSb3V0ZXJJbml0aWFsaXplcikge1xuICByZXR1cm4gci5hcHBJbml0aWFsaXplci5iaW5kKHIpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0Qm9vdHN0cmFwTGlzdGVuZXIocjogUm91dGVySW5pdGlhbGl6ZXIpIHtcbiAgcmV0dXJuIHIuYm9vdHN0cmFwTGlzdGVuZXIuYmluZChyKTtcbn1cblxuLyoqXG4gKiBBIFtESSB0b2tlbl0oZ3VpZGUvZ2xvc3NhcnkvI2RpLXRva2VuKSBmb3IgdGhlIHJvdXRlciBpbml0aWFsaXplciB0aGF0XG4gKiBpcyBjYWxsZWQgYWZ0ZXIgdGhlIGFwcCBpcyBib290c3RyYXBwZWQuXG4gKlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgY29uc3QgUk9VVEVSX0lOSVRJQUxJWkVSID1cbiAgICBuZXcgSW5qZWN0aW9uVG9rZW48KGNvbXBSZWY6IENvbXBvbmVudFJlZjxhbnk+KSA9PiB2b2lkPignUm91dGVyIEluaXRpYWxpemVyJyk7XG5cbmV4cG9ydCBmdW5jdGlvbiBwcm92aWRlUm91dGVySW5pdGlhbGl6ZXIoKSB7XG4gIHJldHVybiBbXG4gICAgUm91dGVySW5pdGlhbGl6ZXIsXG4gICAge1xuICAgICAgcHJvdmlkZTogQVBQX0lOSVRJQUxJWkVSLFxuICAgICAgbXVsdGk6IHRydWUsXG4gICAgICB1c2VGYWN0b3J5OiBnZXRBcHBJbml0aWFsaXplcixcbiAgICAgIGRlcHM6IFtSb3V0ZXJJbml0aWFsaXplcl1cbiAgICB9LFxuICAgIHtwcm92aWRlOiBST1VURVJfSU5JVElBTElaRVIsIHVzZUZhY3Rvcnk6IGdldEJvb3RzdHJhcExpc3RlbmVyLCBkZXBzOiBbUm91dGVySW5pdGlhbGl6ZXJdfSxcbiAgICB7cHJvdmlkZTogQVBQX0JPT1RTVFJBUF9MSVNURU5FUiwgbXVsdGk6IHRydWUsIHVzZUV4aXN0aW5nOiBST1VURVJfSU5JVElBTElaRVJ9LFxuICBdO1xufVxuIl19