/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { NgModuleRef } from '@angular/core';
import { EmptyError, from, Observable, of } from 'rxjs';
import { catchError, concatAll, every, first, map, mergeMap, tap } from 'rxjs/operators';
import { LoadedRouterConfig } from './config';
import { defaultUrlMatcher, navigationCancelingError, PRIMARY_OUTLET } from './shared';
import { UrlSegmentGroup, UrlTree } from './url_tree';
import { forEach, waitForMap, wrapIntoObservable } from './utils/collection';
import { isCanLoad, isFunction, isUrlTree } from './utils/type_guards';
class NoMatch {
    constructor(segmentGroup) {
        this.segmentGroup = segmentGroup || null;
    }
}
class AbsoluteRedirect {
    constructor(urlTree) {
        this.urlTree = urlTree;
    }
}
function noMatch(segmentGroup) {
    return new Observable((obs) => obs.error(new NoMatch(segmentGroup)));
}
function absoluteRedirect(newTree) {
    return new Observable((obs) => obs.error(new AbsoluteRedirect(newTree)));
}
function namedOutletsRedirect(redirectTo) {
    return new Observable((obs) => obs.error(new Error(`Only absolute redirects can have named outlets. redirectTo: '${redirectTo}'`)));
}
function canLoadFails(route) {
    return new Observable((obs) => obs.error(navigationCancelingError(`Cannot load children because the guard of the route "path: '${route.path}'" returned false`)));
}
/**
 * Returns the `UrlTree` with the redirection applied.
 *
 * Lazy modules are loaded along the way.
 */
export function applyRedirects(moduleInjector, configLoader, urlSerializer, urlTree, config) {
    return new ApplyRedirects(moduleInjector, configLoader, urlSerializer, urlTree, config).apply();
}
class ApplyRedirects {
    constructor(moduleInjector, configLoader, urlSerializer, urlTree, config) {
        this.configLoader = configLoader;
        this.urlSerializer = urlSerializer;
        this.urlTree = urlTree;
        this.config = config;
        this.allowRedirects = true;
        this.ngModule = moduleInjector.get(NgModuleRef);
    }
    apply() {
        const expanded$ = this.expandSegmentGroup(this.ngModule, this.config, this.urlTree.root, PRIMARY_OUTLET);
        const urlTrees$ = expanded$.pipe(map((rootSegmentGroup) => this.createUrlTree(rootSegmentGroup, this.urlTree.queryParams, this.urlTree.fragment)));
        return urlTrees$.pipe(catchError((e) => {
            if (e instanceof AbsoluteRedirect) {
                // after an absolute redirect we do not apply any more redirects!
                this.allowRedirects = false;
                // we need to run matching, so we can fetch all lazy-loaded modules
                return this.match(e.urlTree);
            }
            if (e instanceof NoMatch) {
                throw this.noMatchError(e);
            }
            throw e;
        }));
    }
    match(tree) {
        const expanded$ = this.expandSegmentGroup(this.ngModule, this.config, tree.root, PRIMARY_OUTLET);
        const mapped$ = expanded$.pipe(map((rootSegmentGroup) => this.createUrlTree(rootSegmentGroup, tree.queryParams, tree.fragment)));
        return mapped$.pipe(catchError((e) => {
            if (e instanceof NoMatch) {
                throw this.noMatchError(e);
            }
            throw e;
        }));
    }
    noMatchError(e) {
        return new Error(`Cannot match any routes. URL Segment: '${e.segmentGroup}'`);
    }
    createUrlTree(rootCandidate, queryParams, fragment) {
        const root = rootCandidate.segments.length > 0 ?
            new UrlSegmentGroup([], { [PRIMARY_OUTLET]: rootCandidate }) :
            rootCandidate;
        return new UrlTree(root, queryParams, fragment);
    }
    expandSegmentGroup(ngModule, routes, segmentGroup, outlet) {
        if (segmentGroup.segments.length === 0 && segmentGroup.hasChildren()) {
            return this.expandChildren(ngModule, routes, segmentGroup)
                .pipe(map((children) => new UrlSegmentGroup([], children)));
        }
        return this.expandSegment(ngModule, segmentGroup, routes, segmentGroup.segments, outlet, true);
    }
    // Recursively expand segment groups for all the child outlets
    expandChildren(ngModule, routes, segmentGroup) {
        return waitForMap(segmentGroup.children, (childOutlet, child) => this.expandSegmentGroup(ngModule, routes, child, childOutlet));
    }
    expandSegment(ngModule, segmentGroup, routes, segments, outlet, allowRedirects) {
        return of(...routes).pipe(map((r) => {
            const expanded$ = this.expandSegmentAgainstRoute(ngModule, segmentGroup, routes, r, segments, outlet, allowRedirects);
            return expanded$.pipe(catchError((e) => {
                if (e instanceof NoMatch) {
                    // TODO(i): this return type doesn't match the declared Observable<UrlSegmentGroup> -
                    // talk to Jason
                    return of(null);
                }
                throw e;
            }));
        }), concatAll(), first((s) => !!s), catchError((e, _) => {
            if (e instanceof EmptyError || e.name === 'EmptyError') {
                if (this.noLeftoversInUrl(segmentGroup, segments, outlet)) {
                    return of(new UrlSegmentGroup([], {}));
                }
                throw new NoMatch(segmentGroup);
            }
            throw e;
        }));
    }
    noLeftoversInUrl(segmentGroup, segments, outlet) {
        return segments.length === 0 && !segmentGroup.children[outlet];
    }
    expandSegmentAgainstRoute(ngModule, segmentGroup, routes, route, paths, outlet, allowRedirects) {
        if (getOutlet(route) !== outlet) {
            return noMatch(segmentGroup);
        }
        if (route.redirectTo === undefined) {
            return this.matchSegmentAgainstRoute(ngModule, segmentGroup, route, paths);
        }
        if (allowRedirects && this.allowRedirects) {
            return this.expandSegmentAgainstRouteUsingRedirect(ngModule, segmentGroup, routes, route, paths, outlet);
        }
        return noMatch(segmentGroup);
    }
    expandSegmentAgainstRouteUsingRedirect(ngModule, segmentGroup, routes, route, segments, outlet) {
        if (route.path === '**') {
            return this.expandWildCardWithParamsAgainstRouteUsingRedirect(ngModule, routes, route, outlet);
        }
        return this.expandRegularSegmentAgainstRouteUsingRedirect(ngModule, segmentGroup, routes, route, segments, outlet);
    }
    expandWildCardWithParamsAgainstRouteUsingRedirect(ngModule, routes, route, outlet) {
        const newTree = this.applyRedirectCommands([], route.redirectTo, {});
        if (route.redirectTo.startsWith('/')) {
            return absoluteRedirect(newTree);
        }
        return this.lineralizeSegments(route, newTree).pipe(mergeMap((newSegments) => {
            const group = new UrlSegmentGroup(newSegments, {});
            return this.expandSegment(ngModule, group, routes, newSegments, outlet, false);
        }));
    }
    expandRegularSegmentAgainstRouteUsingRedirect(ngModule, segmentGroup, routes, route, segments, outlet) {
        const { matched, consumedSegments, lastChild, positionalParamSegments } = match(segmentGroup, route, segments);
        if (!matched)
            return noMatch(segmentGroup);
        const newTree = this.applyRedirectCommands(consumedSegments, route.redirectTo, positionalParamSegments);
        if (route.redirectTo.startsWith('/')) {
            return absoluteRedirect(newTree);
        }
        return this.lineralizeSegments(route, newTree).pipe(mergeMap((newSegments) => {
            return this.expandSegment(ngModule, segmentGroup, routes, newSegments.concat(segments.slice(lastChild)), outlet, false);
        }));
    }
    matchSegmentAgainstRoute(ngModule, rawSegmentGroup, route, segments) {
        if (route.path === '**') {
            if (route.loadChildren) {
                return this.configLoader.load(ngModule.injector, route)
                    .pipe(map((cfg) => {
                    route._loadedConfig = cfg;
                    return new UrlSegmentGroup(segments, {});
                }));
            }
            return of(new UrlSegmentGroup(segments, {}));
        }
        const { matched, consumedSegments, lastChild } = match(rawSegmentGroup, route, segments);
        if (!matched)
            return noMatch(rawSegmentGroup);
        const rawSlicedSegments = segments.slice(lastChild);
        const childConfig$ = this.getChildConfig(ngModule, route, segments);
        return childConfig$.pipe(mergeMap((routerConfig) => {
            const childModule = routerConfig.module;
            const childConfig = routerConfig.routes;
            const { segmentGroup, slicedSegments } = split(rawSegmentGroup, consumedSegments, rawSlicedSegments, childConfig);
            if (slicedSegments.length === 0 && segmentGroup.hasChildren()) {
                const expanded$ = this.expandChildren(childModule, childConfig, segmentGroup);
                return expanded$.pipe(map((children) => new UrlSegmentGroup(consumedSegments, children)));
            }
            if (childConfig.length === 0 && slicedSegments.length === 0) {
                return of(new UrlSegmentGroup(consumedSegments, {}));
            }
            const expanded$ = this.expandSegment(childModule, segmentGroup, childConfig, slicedSegments, PRIMARY_OUTLET, true);
            return expanded$.pipe(map((cs) => new UrlSegmentGroup(consumedSegments.concat(cs.segments), cs.children)));
        }));
    }
    getChildConfig(ngModule, route, segments) {
        if (route.children) {
            // The children belong to the same module
            return of(new LoadedRouterConfig(route.children, ngModule));
        }
        if (route.loadChildren) {
            // lazy children belong to the loaded module
            if (route._loadedConfig !== undefined) {
                return of(route._loadedConfig);
            }
            return this.runCanLoadGuards(ngModule.injector, route, segments)
                .pipe(mergeMap((shouldLoadResult) => {
                if (shouldLoadResult) {
                    return this.configLoader.load(ngModule.injector, route)
                        .pipe(map((cfg) => {
                        route._loadedConfig = cfg;
                        return cfg;
                    }));
                }
                return canLoadFails(route);
            }));
        }
        return of(new LoadedRouterConfig([], ngModule));
    }
    runCanLoadGuards(moduleInjector, route, segments) {
        const canLoad = route.canLoad;
        if (!canLoad || canLoad.length === 0)
            return of(true);
        const obs = from(canLoad).pipe(map((injectionToken) => {
            const guard = moduleInjector.get(injectionToken);
            let guardVal;
            if (isCanLoad(guard)) {
                guardVal = guard.canLoad(route, segments);
            }
            else if (isFunction(guard)) {
                guardVal = guard(route, segments);
            }
            else {
                throw new Error('Invalid CanLoad guard');
            }
            return wrapIntoObservable(guardVal);
        }));
        return obs.pipe(concatAll(), tap((result) => {
            if (!isUrlTree(result))
                return;
            const error = navigationCancelingError(`Redirecting to "${this.urlSerializer.serialize(result)}"`);
            error.url = result;
            throw error;
        }), every(result => result === true));
    }
    lineralizeSegments(route, urlTree) {
        let res = [];
        let c = urlTree.root;
        while (true) {
            res = res.concat(c.segments);
            if (c.numberOfChildren === 0) {
                return of(res);
            }
            if (c.numberOfChildren > 1 || !c.children[PRIMARY_OUTLET]) {
                return namedOutletsRedirect(route.redirectTo);
            }
            c = c.children[PRIMARY_OUTLET];
        }
    }
    applyRedirectCommands(segments, redirectTo, posParams) {
        return this.applyRedirectCreatreUrlTree(redirectTo, this.urlSerializer.parse(redirectTo), segments, posParams);
    }
    applyRedirectCreatreUrlTree(redirectTo, urlTree, segments, posParams) {
        const newRoot = this.createSegmentGroup(redirectTo, urlTree.root, segments, posParams);
        return new UrlTree(newRoot, this.createQueryParams(urlTree.queryParams, this.urlTree.queryParams), urlTree.fragment);
    }
    createQueryParams(redirectToParams, actualParams) {
        const res = {};
        forEach(redirectToParams, (v, k) => {
            const copySourceValue = typeof v === 'string' && v.startsWith(':');
            if (copySourceValue) {
                const sourceName = v.substring(1);
                res[k] = actualParams[sourceName];
            }
            else {
                res[k] = v;
            }
        });
        return res;
    }
    createSegmentGroup(redirectTo, group, segments, posParams) {
        const updatedSegments = this.createSegments(redirectTo, group.segments, segments, posParams);
        let children = {};
        forEach(group.children, (child, name) => {
            children[name] = this.createSegmentGroup(redirectTo, child, segments, posParams);
        });
        return new UrlSegmentGroup(updatedSegments, children);
    }
    createSegments(redirectTo, redirectToSegments, actualSegments, posParams) {
        return redirectToSegments.map(s => s.path.startsWith(':') ? this.findPosParam(redirectTo, s, posParams) :
            this.findOrReturn(s, actualSegments));
    }
    findPosParam(redirectTo, redirectToUrlSegment, posParams) {
        const pos = posParams[redirectToUrlSegment.path.substring(1)];
        if (!pos)
            throw new Error(`Cannot redirect to '${redirectTo}'. Cannot find '${redirectToUrlSegment.path}'.`);
        return pos;
    }
    findOrReturn(redirectToUrlSegment, actualSegments) {
        let idx = 0;
        for (const s of actualSegments) {
            if (s.path === redirectToUrlSegment.path) {
                actualSegments.splice(idx);
                return s;
            }
            idx++;
        }
        return redirectToUrlSegment;
    }
}
function match(segmentGroup, route, segments) {
    if (route.path === '') {
        if ((route.pathMatch === 'full') && (segmentGroup.hasChildren() || segments.length > 0)) {
            return { matched: false, consumedSegments: [], lastChild: 0, positionalParamSegments: {} };
        }
        return { matched: true, consumedSegments: [], lastChild: 0, positionalParamSegments: {} };
    }
    const matcher = route.matcher || defaultUrlMatcher;
    const res = matcher(segments, segmentGroup, route);
    if (!res) {
        return {
            matched: false,
            consumedSegments: [],
            lastChild: 0,
            positionalParamSegments: {},
        };
    }
    return {
        matched: true,
        consumedSegments: res.consumed,
        lastChild: res.consumed.length,
        positionalParamSegments: res.posParams,
    };
}
function split(segmentGroup, consumedSegments, slicedSegments, config) {
    if (slicedSegments.length > 0 &&
        containsEmptyPathRedirectsWithNamedOutlets(segmentGroup, slicedSegments, config)) {
        const s = new UrlSegmentGroup(consumedSegments, createChildrenForEmptySegments(config, new UrlSegmentGroup(slicedSegments, segmentGroup.children)));
        return { segmentGroup: mergeTrivialChildren(s), slicedSegments: [] };
    }
    if (slicedSegments.length === 0 &&
        containsEmptyPathRedirects(segmentGroup, slicedSegments, config)) {
        const s = new UrlSegmentGroup(segmentGroup.segments, addEmptySegmentsToChildrenIfNeeded(segmentGroup, slicedSegments, config, segmentGroup.children));
        return { segmentGroup: mergeTrivialChildren(s), slicedSegments };
    }
    return { segmentGroup, slicedSegments };
}
function mergeTrivialChildren(s) {
    if (s.numberOfChildren === 1 && s.children[PRIMARY_OUTLET]) {
        const c = s.children[PRIMARY_OUTLET];
        return new UrlSegmentGroup(s.segments.concat(c.segments), c.children);
    }
    return s;
}
function addEmptySegmentsToChildrenIfNeeded(segmentGroup, slicedSegments, routes, children) {
    const res = {};
    for (const r of routes) {
        if (isEmptyPathRedirect(segmentGroup, slicedSegments, r) && !children[getOutlet(r)]) {
            res[getOutlet(r)] = new UrlSegmentGroup([], {});
        }
    }
    return Object.assign(Object.assign({}, children), res);
}
function createChildrenForEmptySegments(routes, primarySegmentGroup) {
    const res = {};
    res[PRIMARY_OUTLET] = primarySegmentGroup;
    for (const r of routes) {
        if (r.path === '' && getOutlet(r) !== PRIMARY_OUTLET) {
            res[getOutlet(r)] = new UrlSegmentGroup([], {});
        }
    }
    return res;
}
function containsEmptyPathRedirectsWithNamedOutlets(segmentGroup, segments, routes) {
    return routes.some(r => isEmptyPathRedirect(segmentGroup, segments, r) && getOutlet(r) !== PRIMARY_OUTLET);
}
function containsEmptyPathRedirects(segmentGroup, segments, routes) {
    return routes.some(r => isEmptyPathRedirect(segmentGroup, segments, r));
}
function isEmptyPathRedirect(segmentGroup, segments, r) {
    if ((segmentGroup.hasChildren() || segments.length > 0) && r.pathMatch === 'full') {
        return false;
    }
    return r.path === '' && r.redirectTo !== undefined;
}
function getOutlet(route) {
    return route.outlet || PRIMARY_OUTLET;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXBwbHlfcmVkaXJlY3RzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvcm91dGVyL3NyYy9hcHBseV9yZWRpcmVjdHMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFXLFdBQVcsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUNwRCxPQUFPLEVBQUMsVUFBVSxFQUFFLElBQUksRUFBRSxVQUFVLEVBQVksRUFBRSxFQUFDLE1BQU0sTUFBTSxDQUFDO0FBQ2hFLE9BQU8sRUFBQyxVQUFVLEVBQUUsU0FBUyxFQUFFLEtBQUssRUFBRSxLQUFLLEVBQUUsR0FBRyxFQUFFLFFBQVEsRUFBRSxHQUFHLEVBQUMsTUFBTSxnQkFBZ0IsQ0FBQztBQUV2RixPQUFPLEVBQUMsa0JBQWtCLEVBQWdCLE1BQU0sVUFBVSxDQUFDO0FBRzNELE9BQU8sRUFBQyxpQkFBaUIsRUFBRSx3QkFBd0IsRUFBVSxjQUFjLEVBQUMsTUFBTSxVQUFVLENBQUM7QUFDN0YsT0FBTyxFQUFhLGVBQWUsRUFBaUIsT0FBTyxFQUFDLE1BQU0sWUFBWSxDQUFDO0FBQy9FLE9BQU8sRUFBQyxPQUFPLEVBQUUsVUFBVSxFQUFFLGtCQUFrQixFQUFDLE1BQU0sb0JBQW9CLENBQUM7QUFDM0UsT0FBTyxFQUFDLFNBQVMsRUFBRSxVQUFVLEVBQUUsU0FBUyxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFFckUsTUFBTSxPQUFPO0lBR1gsWUFBWSxZQUE4QjtRQUN4QyxJQUFJLENBQUMsWUFBWSxHQUFHLFlBQVksSUFBSSxJQUFJLENBQUM7SUFDM0MsQ0FBQztDQUNGO0FBRUQsTUFBTSxnQkFBZ0I7SUFDcEIsWUFBbUIsT0FBZ0I7UUFBaEIsWUFBTyxHQUFQLE9BQU8sQ0FBUztJQUFHLENBQUM7Q0FDeEM7QUFFRCxTQUFTLE9BQU8sQ0FBQyxZQUE2QjtJQUM1QyxPQUFPLElBQUksVUFBVSxDQUNqQixDQUFDLEdBQThCLEVBQUUsRUFBRSxDQUFDLEdBQUcsQ0FBQyxLQUFLLENBQUMsSUFBSSxPQUFPLENBQUMsWUFBWSxDQUFDLENBQUMsQ0FBQyxDQUFDO0FBQ2hGLENBQUM7QUFFRCxTQUFTLGdCQUFnQixDQUFDLE9BQWdCO0lBQ3hDLE9BQU8sSUFBSSxVQUFVLENBQ2pCLENBQUMsR0FBOEIsRUFBRSxFQUFFLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBQyxJQUFJLGdCQUFnQixDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUMsQ0FBQztBQUNwRixDQUFDO0FBRUQsU0FBUyxvQkFBb0IsQ0FBQyxVQUFrQjtJQUM5QyxPQUFPLElBQUksVUFBVSxDQUNqQixDQUFDLEdBQThCLEVBQUUsRUFBRSxDQUFDLEdBQUcsQ0FBQyxLQUFLLENBQUMsSUFBSSxLQUFLLENBQ25ELGdFQUFnRSxVQUFVLEdBQUcsQ0FBQyxDQUFDLENBQUMsQ0FBQztBQUMzRixDQUFDO0FBRUQsU0FBUyxZQUFZLENBQUMsS0FBWTtJQUNoQyxPQUFPLElBQUksVUFBVSxDQUNqQixDQUFDLEdBQWlDLEVBQUUsRUFBRSxDQUFDLEdBQUcsQ0FBQyxLQUFLLENBQzVDLHdCQUF3QixDQUFDLCtEQUNyQixLQUFLLENBQUMsSUFBSSxtQkFBbUIsQ0FBQyxDQUFDLENBQUMsQ0FBQztBQUMvQyxDQUFDO0FBRUQ7Ozs7R0FJRztBQUNILE1BQU0sVUFBVSxjQUFjLENBQzFCLGNBQXdCLEVBQUUsWUFBZ0MsRUFBRSxhQUE0QixFQUN4RixPQUFnQixFQUFFLE1BQWM7SUFDbEMsT0FBTyxJQUFJLGNBQWMsQ0FBQyxjQUFjLEVBQUUsWUFBWSxFQUFFLGFBQWEsRUFBRSxPQUFPLEVBQUUsTUFBTSxDQUFDLENBQUMsS0FBSyxFQUFFLENBQUM7QUFDbEcsQ0FBQztBQUVELE1BQU0sY0FBYztJQUlsQixZQUNJLGNBQXdCLEVBQVUsWUFBZ0MsRUFDMUQsYUFBNEIsRUFBVSxPQUFnQixFQUFVLE1BQWM7UUFEcEQsaUJBQVksR0FBWixZQUFZLENBQW9CO1FBQzFELGtCQUFhLEdBQWIsYUFBYSxDQUFlO1FBQVUsWUFBTyxHQUFQLE9BQU8sQ0FBUztRQUFVLFdBQU0sR0FBTixNQUFNLENBQVE7UUFMbEYsbUJBQWMsR0FBWSxJQUFJLENBQUM7UUFNckMsSUFBSSxDQUFDLFFBQVEsR0FBRyxjQUFjLENBQUMsR0FBRyxDQUFDLFdBQVcsQ0FBQyxDQUFDO0lBQ2xELENBQUM7SUFFRCxLQUFLO1FBQ0gsTUFBTSxTQUFTLEdBQ1gsSUFBSSxDQUFDLGtCQUFrQixDQUFDLElBQUksQ0FBQyxRQUFRLEVBQUUsSUFBSSxDQUFDLE1BQU0sRUFBRSxJQUFJLENBQUMsT0FBTyxDQUFDLElBQUksRUFBRSxjQUFjLENBQUMsQ0FBQztRQUMzRixNQUFNLFNBQVMsR0FBRyxTQUFTLENBQUMsSUFBSSxDQUM1QixHQUFHLENBQUMsQ0FBQyxnQkFBaUMsRUFBRSxFQUFFLENBQUMsSUFBSSxDQUFDLGFBQWEsQ0FDckQsZ0JBQWdCLEVBQUUsSUFBSSxDQUFDLE9BQU8sQ0FBQyxXQUFXLEVBQUUsSUFBSSxDQUFDLE9BQU8sQ0FBQyxRQUFTLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDbEYsT0FBTyxTQUFTLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQU0sRUFBRSxFQUFFO1lBQzFDLElBQUksQ0FBQyxZQUFZLGdCQUFnQixFQUFFO2dCQUNqQyxpRUFBaUU7Z0JBQ2pFLElBQUksQ0FBQyxjQUFjLEdBQUcsS0FBSyxDQUFDO2dCQUM1QixtRUFBbUU7Z0JBQ25FLE9BQU8sSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsT0FBTyxDQUFDLENBQUM7YUFDOUI7WUFFRCxJQUFJLENBQUMsWUFBWSxPQUFPLEVBQUU7Z0JBQ3hCLE1BQU0sSUFBSSxDQUFDLFlBQVksQ0FBQyxDQUFDLENBQUMsQ0FBQzthQUM1QjtZQUVELE1BQU0sQ0FBQyxDQUFDO1FBQ1YsQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUNOLENBQUM7SUFFTyxLQUFLLENBQUMsSUFBYTtRQUN6QixNQUFNLFNBQVMsR0FDWCxJQUFJLENBQUMsa0JBQWtCLENBQUMsSUFBSSxDQUFDLFFBQVEsRUFBRSxJQUFJLENBQUMsTUFBTSxFQUFFLElBQUksQ0FBQyxJQUFJLEVBQUUsY0FBYyxDQUFDLENBQUM7UUFDbkYsTUFBTSxPQUFPLEdBQUcsU0FBUyxDQUFDLElBQUksQ0FDMUIsR0FBRyxDQUFDLENBQUMsZ0JBQWlDLEVBQUUsRUFBRSxDQUNsQyxJQUFJLENBQUMsYUFBYSxDQUFDLGdCQUFnQixFQUFFLElBQUksQ0FBQyxXQUFXLEVBQUUsSUFBSSxDQUFDLFFBQVMsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNyRixPQUFPLE9BQU8sQ0FBQyxJQUFJLENBQUMsVUFBVSxDQUFDLENBQUMsQ0FBTSxFQUF1QixFQUFFO1lBQzdELElBQUksQ0FBQyxZQUFZLE9BQU8sRUFBRTtnQkFDeEIsTUFBTSxJQUFJLENBQUMsWUFBWSxDQUFDLENBQUMsQ0FBQyxDQUFDO2FBQzVCO1lBRUQsTUFBTSxDQUFDLENBQUM7UUFDVixDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQ04sQ0FBQztJQUVPLFlBQVksQ0FBQyxDQUFVO1FBQzdCLE9BQU8sSUFBSSxLQUFLLENBQUMsMENBQTBDLENBQUMsQ0FBQyxZQUFZLEdBQUcsQ0FBQyxDQUFDO0lBQ2hGLENBQUM7SUFFTyxhQUFhLENBQUMsYUFBOEIsRUFBRSxXQUFtQixFQUFFLFFBQWdCO1FBRXpGLE1BQU0sSUFBSSxHQUFHLGFBQWEsQ0FBQyxRQUFRLENBQUMsTUFBTSxHQUFHLENBQUMsQ0FBQyxDQUFDO1lBQzVDLElBQUksZUFBZSxDQUFDLEVBQUUsRUFBRSxFQUFDLENBQUMsY0FBYyxDQUFDLEVBQUUsYUFBYSxFQUFDLENBQUMsQ0FBQyxDQUFDO1lBQzVELGFBQWEsQ0FBQztRQUNsQixPQUFPLElBQUksT0FBTyxDQUFDLElBQUksRUFBRSxXQUFXLEVBQUUsUUFBUSxDQUFDLENBQUM7SUFDbEQsQ0FBQztJQUVPLGtCQUFrQixDQUN0QixRQUEwQixFQUFFLE1BQWUsRUFBRSxZQUE2QixFQUMxRSxNQUFjO1FBQ2hCLElBQUksWUFBWSxDQUFDLFFBQVEsQ0FBQyxNQUFNLEtBQUssQ0FBQyxJQUFJLFlBQVksQ0FBQyxXQUFXLEVBQUUsRUFBRTtZQUNwRSxPQUFPLElBQUksQ0FBQyxjQUFjLENBQUMsUUFBUSxFQUFFLE1BQU0sRUFBRSxZQUFZLENBQUM7aUJBQ3JELElBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQyxRQUFhLEVBQUUsRUFBRSxDQUFDLElBQUksZUFBZSxDQUFDLEVBQUUsRUFBRSxRQUFRLENBQUMsQ0FBQyxDQUFDLENBQUM7U0FDdEU7UUFFRCxPQUFPLElBQUksQ0FBQyxhQUFhLENBQUMsUUFBUSxFQUFFLFlBQVksRUFBRSxNQUFNLEVBQUUsWUFBWSxDQUFDLFFBQVEsRUFBRSxNQUFNLEVBQUUsSUFBSSxDQUFDLENBQUM7SUFDakcsQ0FBQztJQUVELDhEQUE4RDtJQUN0RCxjQUFjLENBQ2xCLFFBQTBCLEVBQUUsTUFBZSxFQUMzQyxZQUE2QjtRQUMvQixPQUFPLFVBQVUsQ0FDYixZQUFZLENBQUMsUUFBUSxFQUNyQixDQUFDLFdBQVcsRUFBRSxLQUFLLEVBQUUsRUFBRSxDQUFDLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxRQUFRLEVBQUUsTUFBTSxFQUFFLEtBQUssRUFBRSxXQUFXLENBQUMsQ0FBQyxDQUFDO0lBQzdGLENBQUM7SUFFTyxhQUFhLENBQ2pCLFFBQTBCLEVBQUUsWUFBNkIsRUFBRSxNQUFlLEVBQzFFLFFBQXNCLEVBQUUsTUFBYyxFQUN0QyxjQUF1QjtRQUN6QixPQUFPLEVBQUUsQ0FBQyxHQUFHLE1BQU0sQ0FBQyxDQUFDLElBQUksQ0FDckIsR0FBRyxDQUFDLENBQUMsQ0FBTSxFQUFFLEVBQUU7WUFDYixNQUFNLFNBQVMsR0FBRyxJQUFJLENBQUMseUJBQXlCLENBQzVDLFFBQVEsRUFBRSxZQUFZLEVBQUUsTUFBTSxFQUFFLENBQUMsRUFBRSxRQUFRLEVBQUUsTUFBTSxFQUFFLGNBQWMsQ0FBQyxDQUFDO1lBQ3pFLE9BQU8sU0FBUyxDQUFDLElBQUksQ0FBQyxVQUFVLENBQUMsQ0FBQyxDQUFNLEVBQUUsRUFBRTtnQkFDMUMsSUFBSSxDQUFDLFlBQVksT0FBTyxFQUFFO29CQUN4QixxRkFBcUY7b0JBQ3JGLGdCQUFnQjtvQkFDaEIsT0FBTyxFQUFFLENBQUMsSUFBSSxDQUFRLENBQUM7aUJBQ3hCO2dCQUNELE1BQU0sQ0FBQyxDQUFDO1lBQ1YsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNOLENBQUMsQ0FBQyxFQUNGLFNBQVMsRUFBRSxFQUFFLEtBQUssQ0FBQyxDQUFDLENBQU0sRUFBRSxFQUFFLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFFLFVBQVUsQ0FBQyxDQUFDLENBQU0sRUFBRSxDQUFNLEVBQUUsRUFBRTtZQUNqRSxJQUFJLENBQUMsWUFBWSxVQUFVLElBQUksQ0FBQyxDQUFDLElBQUksS0FBSyxZQUFZLEVBQUU7Z0JBQ3RELElBQUksSUFBSSxDQUFDLGdCQUFnQixDQUFDLFlBQVksRUFBRSxRQUFRLEVBQUUsTUFBTSxDQUFDLEVBQUU7b0JBQ3pELE9BQU8sRUFBRSxDQUFDLElBQUksZUFBZSxDQUFDLEVBQUUsRUFBRSxFQUFFLENBQUMsQ0FBQyxDQUFDO2lCQUN4QztnQkFDRCxNQUFNLElBQUksT0FBTyxDQUFDLFlBQVksQ0FBQyxDQUFDO2FBQ2pDO1lBQ0QsTUFBTSxDQUFDLENBQUM7UUFDVixDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQ1YsQ0FBQztJQUVPLGdCQUFnQixDQUFDLFlBQTZCLEVBQUUsUUFBc0IsRUFBRSxNQUFjO1FBRTVGLE9BQU8sUUFBUSxDQUFDLE1BQU0sS0FBSyxDQUFDLElBQUksQ0FBQyxZQUFZLENBQUMsUUFBUSxDQUFDLE1BQU0sQ0FBQyxDQUFDO0lBQ2pFLENBQUM7SUFFTyx5QkFBeUIsQ0FDN0IsUUFBMEIsRUFBRSxZQUE2QixFQUFFLE1BQWUsRUFBRSxLQUFZLEVBQ3hGLEtBQW1CLEVBQUUsTUFBYyxFQUFFLGNBQXVCO1FBQzlELElBQUksU0FBUyxDQUFDLEtBQUssQ0FBQyxLQUFLLE1BQU0sRUFBRTtZQUMvQixPQUFPLE9BQU8sQ0FBQyxZQUFZLENBQUMsQ0FBQztTQUM5QjtRQUVELElBQUksS0FBSyxDQUFDLFVBQVUsS0FBSyxTQUFTLEVBQUU7WUFDbEMsT0FBTyxJQUFJLENBQUMsd0JBQXdCLENBQUMsUUFBUSxFQUFFLFlBQVksRUFBRSxLQUFLLEVBQUUsS0FBSyxDQUFDLENBQUM7U0FDNUU7UUFFRCxJQUFJLGNBQWMsSUFBSSxJQUFJLENBQUMsY0FBYyxFQUFFO1lBQ3pDLE9BQU8sSUFBSSxDQUFDLHNDQUFzQyxDQUM5QyxRQUFRLEVBQUUsWUFBWSxFQUFFLE1BQU0sRUFBRSxLQUFLLEVBQUUsS0FBSyxFQUFFLE1BQU0sQ0FBQyxDQUFDO1NBQzNEO1FBRUQsT0FBTyxPQUFPLENBQUMsWUFBWSxDQUFDLENBQUM7SUFDL0IsQ0FBQztJQUVPLHNDQUFzQyxDQUMxQyxRQUEwQixFQUFFLFlBQTZCLEVBQUUsTUFBZSxFQUFFLEtBQVksRUFDeEYsUUFBc0IsRUFBRSxNQUFjO1FBQ3hDLElBQUksS0FBSyxDQUFDLElBQUksS0FBSyxJQUFJLEVBQUU7WUFDdkIsT0FBTyxJQUFJLENBQUMsaURBQWlELENBQ3pELFFBQVEsRUFBRSxNQUFNLEVBQUUsS0FBSyxFQUFFLE1BQU0sQ0FBQyxDQUFDO1NBQ3RDO1FBRUQsT0FBTyxJQUFJLENBQUMsNkNBQTZDLENBQ3JELFFBQVEsRUFBRSxZQUFZLEVBQUUsTUFBTSxFQUFFLEtBQUssRUFBRSxRQUFRLEVBQUUsTUFBTSxDQUFDLENBQUM7SUFDL0QsQ0FBQztJQUVPLGlEQUFpRCxDQUNyRCxRQUEwQixFQUFFLE1BQWUsRUFBRSxLQUFZLEVBQ3pELE1BQWM7UUFDaEIsTUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLHFCQUFxQixDQUFDLEVBQUUsRUFBRSxLQUFLLENBQUMsVUFBVyxFQUFFLEVBQUUsQ0FBQyxDQUFDO1FBQ3RFLElBQUksS0FBSyxDQUFDLFVBQVcsQ0FBQyxVQUFVLENBQUMsR0FBRyxDQUFDLEVBQUU7WUFDckMsT0FBTyxnQkFBZ0IsQ0FBQyxPQUFPLENBQUMsQ0FBQztTQUNsQztRQUVELE9BQU8sSUFBSSxDQUFDLGtCQUFrQixDQUFDLEtBQUssRUFBRSxPQUFPLENBQUMsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUMsV0FBeUIsRUFBRSxFQUFFO1lBQ3pGLE1BQU0sS0FBSyxHQUFHLElBQUksZUFBZSxDQUFDLFdBQVcsRUFBRSxFQUFFLENBQUMsQ0FBQztZQUNuRCxPQUFPLElBQUksQ0FBQyxhQUFhLENBQUMsUUFBUSxFQUFFLEtBQUssRUFBRSxNQUFNLEVBQUUsV0FBVyxFQUFFLE1BQU0sRUFBRSxLQUFLLENBQUMsQ0FBQztRQUNqRixDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQ04sQ0FBQztJQUVPLDZDQUE2QyxDQUNqRCxRQUEwQixFQUFFLFlBQTZCLEVBQUUsTUFBZSxFQUFFLEtBQVksRUFDeEYsUUFBc0IsRUFBRSxNQUFjO1FBQ3hDLE1BQU0sRUFBQyxPQUFPLEVBQUUsZ0JBQWdCLEVBQUUsU0FBUyxFQUFFLHVCQUF1QixFQUFDLEdBQ2pFLEtBQUssQ0FBQyxZQUFZLEVBQUUsS0FBSyxFQUFFLFFBQVEsQ0FBQyxDQUFDO1FBQ3pDLElBQUksQ0FBQyxPQUFPO1lBQUUsT0FBTyxPQUFPLENBQUMsWUFBWSxDQUFDLENBQUM7UUFFM0MsTUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLHFCQUFxQixDQUN0QyxnQkFBZ0IsRUFBRSxLQUFLLENBQUMsVUFBVyxFQUFPLHVCQUF1QixDQUFDLENBQUM7UUFDdkUsSUFBSSxLQUFLLENBQUMsVUFBVyxDQUFDLFVBQVUsQ0FBQyxHQUFHLENBQUMsRUFBRTtZQUNyQyxPQUFPLGdCQUFnQixDQUFDLE9BQU8sQ0FBQyxDQUFDO1NBQ2xDO1FBRUQsT0FBTyxJQUFJLENBQUMsa0JBQWtCLENBQUMsS0FBSyxFQUFFLE9BQU8sQ0FBQyxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUMsQ0FBQyxXQUF5QixFQUFFLEVBQUU7WUFDekYsT0FBTyxJQUFJLENBQUMsYUFBYSxDQUNyQixRQUFRLEVBQUUsWUFBWSxFQUFFLE1BQU0sRUFBRSxXQUFXLENBQUMsTUFBTSxDQUFDLFFBQVEsQ0FBQyxLQUFLLENBQUMsU0FBUyxDQUFDLENBQUMsRUFBRSxNQUFNLEVBQ3JGLEtBQUssQ0FBQyxDQUFDO1FBQ2IsQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUNOLENBQUM7SUFFTyx3QkFBd0IsQ0FDNUIsUUFBMEIsRUFBRSxlQUFnQyxFQUFFLEtBQVksRUFDMUUsUUFBc0I7UUFDeEIsSUFBSSxLQUFLLENBQUMsSUFBSSxLQUFLLElBQUksRUFBRTtZQUN2QixJQUFJLEtBQUssQ0FBQyxZQUFZLEVBQUU7Z0JBQ3RCLE9BQU8sSUFBSSxDQUFDLFlBQVksQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsRUFBRSxLQUFLLENBQUM7cUJBQ2xELElBQUksQ0FBQyxHQUFHLENBQUMsQ0FBQyxHQUF1QixFQUFFLEVBQUU7b0JBQ3BDLEtBQUssQ0FBQyxhQUFhLEdBQUcsR0FBRyxDQUFDO29CQUMxQixPQUFPLElBQUksZUFBZSxDQUFDLFFBQVEsRUFBRSxFQUFFLENBQUMsQ0FBQztnQkFDM0MsQ0FBQyxDQUFDLENBQUMsQ0FBQzthQUNUO1lBRUQsT0FBTyxFQUFFLENBQUMsSUFBSSxlQUFlLENBQUMsUUFBUSxFQUFFLEVBQUUsQ0FBQyxDQUFDLENBQUM7U0FDOUM7UUFFRCxNQUFNLEVBQUMsT0FBTyxFQUFFLGdCQUFnQixFQUFFLFNBQVMsRUFBQyxHQUFHLEtBQUssQ0FBQyxlQUFlLEVBQUUsS0FBSyxFQUFFLFFBQVEsQ0FBQyxDQUFDO1FBQ3ZGLElBQUksQ0FBQyxPQUFPO1lBQUUsT0FBTyxPQUFPLENBQUMsZUFBZSxDQUFDLENBQUM7UUFFOUMsTUFBTSxpQkFBaUIsR0FBRyxRQUFRLENBQUMsS0FBSyxDQUFDLFNBQVMsQ0FBQyxDQUFDO1FBQ3BELE1BQU0sWUFBWSxHQUFHLElBQUksQ0FBQyxjQUFjLENBQUMsUUFBUSxFQUFFLEtBQUssRUFBRSxRQUFRLENBQUMsQ0FBQztRQUVwRSxPQUFPLFlBQVksQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUMsWUFBZ0MsRUFBRSxFQUFFO1lBQ3JFLE1BQU0sV0FBVyxHQUFHLFlBQVksQ0FBQyxNQUFNLENBQUM7WUFDeEMsTUFBTSxXQUFXLEdBQUcsWUFBWSxDQUFDLE1BQU0sQ0FBQztZQUV4QyxNQUFNLEVBQUMsWUFBWSxFQUFFLGNBQWMsRUFBQyxHQUNoQyxLQUFLLENBQUMsZUFBZSxFQUFFLGdCQUFnQixFQUFFLGlCQUFpQixFQUFFLFdBQVcsQ0FBQyxDQUFDO1lBRTdFLElBQUksY0FBYyxDQUFDLE1BQU0sS0FBSyxDQUFDLElBQUksWUFBWSxDQUFDLFdBQVcsRUFBRSxFQUFFO2dCQUM3RCxNQUFNLFNBQVMsR0FBRyxJQUFJLENBQUMsY0FBYyxDQUFDLFdBQVcsRUFBRSxXQUFXLEVBQUUsWUFBWSxDQUFDLENBQUM7Z0JBQzlFLE9BQU8sU0FBUyxDQUFDLElBQUksQ0FDakIsR0FBRyxDQUFDLENBQUMsUUFBYSxFQUFFLEVBQUUsQ0FBQyxJQUFJLGVBQWUsQ0FBQyxnQkFBZ0IsRUFBRSxRQUFRLENBQUMsQ0FBQyxDQUFDLENBQUM7YUFDOUU7WUFFRCxJQUFJLFdBQVcsQ0FBQyxNQUFNLEtBQUssQ0FBQyxJQUFJLGNBQWMsQ0FBQyxNQUFNLEtBQUssQ0FBQyxFQUFFO2dCQUMzRCxPQUFPLEVBQUUsQ0FBQyxJQUFJLGVBQWUsQ0FBQyxnQkFBZ0IsRUFBRSxFQUFFLENBQUMsQ0FBQyxDQUFDO2FBQ3REO1lBRUQsTUFBTSxTQUFTLEdBQUcsSUFBSSxDQUFDLGFBQWEsQ0FDaEMsV0FBVyxFQUFFLFlBQVksRUFBRSxXQUFXLEVBQUUsY0FBYyxFQUFFLGNBQWMsRUFBRSxJQUFJLENBQUMsQ0FBQztZQUNsRixPQUFPLFNBQVMsQ0FBQyxJQUFJLENBQ2pCLEdBQUcsQ0FBQyxDQUFDLEVBQW1CLEVBQUUsRUFBRSxDQUNwQixJQUFJLGVBQWUsQ0FBQyxnQkFBZ0IsQ0FBQyxNQUFNLENBQUMsRUFBRSxDQUFDLFFBQVEsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxRQUFRLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDdkYsQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUNOLENBQUM7SUFFTyxjQUFjLENBQUMsUUFBMEIsRUFBRSxLQUFZLEVBQUUsUUFBc0I7UUFFckYsSUFBSSxLQUFLLENBQUMsUUFBUSxFQUFFO1lBQ2xCLHlDQUF5QztZQUN6QyxPQUFPLEVBQUUsQ0FBQyxJQUFJLGtCQUFrQixDQUFDLEtBQUssQ0FBQyxRQUFRLEVBQUUsUUFBUSxDQUFDLENBQUMsQ0FBQztTQUM3RDtRQUVELElBQUksS0FBSyxDQUFDLFlBQVksRUFBRTtZQUN0Qiw0Q0FBNEM7WUFDNUMsSUFBSSxLQUFLLENBQUMsYUFBYSxLQUFLLFNBQVMsRUFBRTtnQkFDckMsT0FBTyxFQUFFLENBQUMsS0FBSyxDQUFDLGFBQWEsQ0FBQyxDQUFDO2FBQ2hDO1lBRUQsT0FBTyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsUUFBUSxDQUFDLFFBQVEsRUFBRSxLQUFLLEVBQUUsUUFBUSxDQUFDO2lCQUMzRCxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUMsZ0JBQXlCLEVBQUUsRUFBRTtnQkFDM0MsSUFBSSxnQkFBZ0IsRUFBRTtvQkFDcEIsT0FBTyxJQUFJLENBQUMsWUFBWSxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUMsUUFBUSxFQUFFLEtBQUssQ0FBQzt5QkFDbEQsSUFBSSxDQUFDLEdBQUcsQ0FBQyxDQUFDLEdBQXVCLEVBQUUsRUFBRTt3QkFDcEMsS0FBSyxDQUFDLGFBQWEsR0FBRyxHQUFHLENBQUM7d0JBQzFCLE9BQU8sR0FBRyxDQUFDO29CQUNiLENBQUMsQ0FBQyxDQUFDLENBQUM7aUJBQ1Q7Z0JBQ0QsT0FBTyxZQUFZLENBQUMsS0FBSyxDQUFDLENBQUM7WUFDN0IsQ0FBQyxDQUFDLENBQUMsQ0FBQztTQUNUO1FBRUQsT0FBTyxFQUFFLENBQUMsSUFBSSxrQkFBa0IsQ0FBQyxFQUFFLEVBQUUsUUFBUSxDQUFDLENBQUMsQ0FBQztJQUNsRCxDQUFDO0lBRU8sZ0JBQWdCLENBQUMsY0FBd0IsRUFBRSxLQUFZLEVBQUUsUUFBc0I7UUFFckYsTUFBTSxPQUFPLEdBQUcsS0FBSyxDQUFDLE9BQU8sQ0FBQztRQUM5QixJQUFJLENBQUMsT0FBTyxJQUFJLE9BQU8sQ0FBQyxNQUFNLEtBQUssQ0FBQztZQUFFLE9BQU8sRUFBRSxDQUFDLElBQUksQ0FBQyxDQUFDO1FBRXRELE1BQU0sR0FBRyxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUMsQ0FBQyxJQUFJLENBQUMsR0FBRyxDQUFDLENBQUMsY0FBbUIsRUFBRSxFQUFFO1lBQ3pELE1BQU0sS0FBSyxHQUFHLGNBQWMsQ0FBQyxHQUFHLENBQUMsY0FBYyxDQUFDLENBQUM7WUFDakQsSUFBSSxRQUFRLENBQUM7WUFDYixJQUFJLFNBQVMsQ0FBQyxLQUFLLENBQUMsRUFBRTtnQkFDcEIsUUFBUSxHQUFHLEtBQUssQ0FBQyxPQUFPLENBQUMsS0FBSyxFQUFFLFFBQVEsQ0FBQyxDQUFDO2FBQzNDO2lCQUFNLElBQUksVUFBVSxDQUFZLEtBQUssQ0FBQyxFQUFFO2dCQUN2QyxRQUFRLEdBQUcsS0FBSyxDQUFDLEtBQUssRUFBRSxRQUFRLENBQUMsQ0FBQzthQUNuQztpQkFBTTtnQkFDTCxNQUFNLElBQUksS0FBSyxDQUFDLHVCQUF1QixDQUFDLENBQUM7YUFDMUM7WUFDRCxPQUFPLGtCQUFrQixDQUFDLFFBQVEsQ0FBQyxDQUFDO1FBQ3RDLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFFSixPQUFPLEdBQUcsQ0FBQyxJQUFJLENBQ1gsU0FBUyxFQUFFLEVBQ1gsR0FBRyxDQUFDLENBQUMsTUFBdUIsRUFBRSxFQUFFO1lBQzlCLElBQUksQ0FBQyxTQUFTLENBQUMsTUFBTSxDQUFDO2dCQUFFLE9BQU87WUFFL0IsTUFBTSxLQUFLLEdBQ1Asd0JBQXdCLENBQUMsbUJBQW1CLElBQUksQ0FBQyxhQUFhLENBQUMsU0FBUyxDQUFDLE1BQU0sQ0FBQyxHQUFHLENBQUMsQ0FBQztZQUN6RixLQUFLLENBQUMsR0FBRyxHQUFHLE1BQU0sQ0FBQztZQUNuQixNQUFNLEtBQUssQ0FBQztRQUNkLENBQUMsQ0FBQyxFQUNGLEtBQUssQ0FBQyxNQUFNLENBQUMsRUFBRSxDQUFDLE1BQU0sS0FBSyxJQUFJLENBQUMsQ0FDbkMsQ0FBQztJQUNKLENBQUM7SUFFTyxrQkFBa0IsQ0FBQyxLQUFZLEVBQUUsT0FBZ0I7UUFDdkQsSUFBSSxHQUFHLEdBQWlCLEVBQUUsQ0FBQztRQUMzQixJQUFJLENBQUMsR0FBRyxPQUFPLENBQUMsSUFBSSxDQUFDO1FBQ3JCLE9BQU8sSUFBSSxFQUFFO1lBQ1gsR0FBRyxHQUFHLEdBQUcsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLFFBQVEsQ0FBQyxDQUFDO1lBQzdCLElBQUksQ0FBQyxDQUFDLGdCQUFnQixLQUFLLENBQUMsRUFBRTtnQkFDNUIsT0FBTyxFQUFFLENBQUMsR0FBRyxDQUFDLENBQUM7YUFDaEI7WUFFRCxJQUFJLENBQUMsQ0FBQyxnQkFBZ0IsR0FBRyxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsUUFBUSxDQUFDLGNBQWMsQ0FBQyxFQUFFO2dCQUN6RCxPQUFPLG9CQUFvQixDQUFDLEtBQUssQ0FBQyxVQUFXLENBQUMsQ0FBQzthQUNoRDtZQUVELENBQUMsR0FBRyxDQUFDLENBQUMsUUFBUSxDQUFDLGNBQWMsQ0FBQyxDQUFDO1NBQ2hDO0lBQ0gsQ0FBQztJQUVPLHFCQUFxQixDQUN6QixRQUFzQixFQUFFLFVBQWtCLEVBQUUsU0FBb0M7UUFDbEYsT0FBTyxJQUFJLENBQUMsMkJBQTJCLENBQ25DLFVBQVUsRUFBRSxJQUFJLENBQUMsYUFBYSxDQUFDLEtBQUssQ0FBQyxVQUFVLENBQUMsRUFBRSxRQUFRLEVBQUUsU0FBUyxDQUFDLENBQUM7SUFDN0UsQ0FBQztJQUVPLDJCQUEyQixDQUMvQixVQUFrQixFQUFFLE9BQWdCLEVBQUUsUUFBc0IsRUFDNUQsU0FBb0M7UUFDdEMsTUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLGtCQUFrQixDQUFDLFVBQVUsRUFBRSxPQUFPLENBQUMsSUFBSSxFQUFFLFFBQVEsRUFBRSxTQUFTLENBQUMsQ0FBQztRQUN2RixPQUFPLElBQUksT0FBTyxDQUNkLE9BQU8sRUFBRSxJQUFJLENBQUMsaUJBQWlCLENBQUMsT0FBTyxDQUFDLFdBQVcsRUFBRSxJQUFJLENBQUMsT0FBTyxDQUFDLFdBQVcsQ0FBQyxFQUM5RSxPQUFPLENBQUMsUUFBUSxDQUFDLENBQUM7SUFDeEIsQ0FBQztJQUVPLGlCQUFpQixDQUFDLGdCQUF3QixFQUFFLFlBQW9CO1FBQ3RFLE1BQU0sR0FBRyxHQUFXLEVBQUUsQ0FBQztRQUN2QixPQUFPLENBQUMsZ0JBQWdCLEVBQUUsQ0FBQyxDQUFNLEVBQUUsQ0FBUyxFQUFFLEVBQUU7WUFDOUMsTUFBTSxlQUFlLEdBQUcsT0FBTyxDQUFDLEtBQUssUUFBUSxJQUFJLENBQUMsQ0FBQyxVQUFVLENBQUMsR0FBRyxDQUFDLENBQUM7WUFDbkUsSUFBSSxlQUFlLEVBQUU7Z0JBQ25CLE1BQU0sVUFBVSxHQUFHLENBQUMsQ0FBQyxTQUFTLENBQUMsQ0FBQyxDQUFDLENBQUM7Z0JBQ2xDLEdBQUcsQ0FBQyxDQUFDLENBQUMsR0FBRyxZQUFZLENBQUMsVUFBVSxDQUFDLENBQUM7YUFDbkM7aUJBQU07Z0JBQ0wsR0FBRyxDQUFDLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQzthQUNaO1FBQ0gsQ0FBQyxDQUFDLENBQUM7UUFDSCxPQUFPLEdBQUcsQ0FBQztJQUNiLENBQUM7SUFFTyxrQkFBa0IsQ0FDdEIsVUFBa0IsRUFBRSxLQUFzQixFQUFFLFFBQXNCLEVBQ2xFLFNBQW9DO1FBQ3RDLE1BQU0sZUFBZSxHQUFHLElBQUksQ0FBQyxjQUFjLENBQUMsVUFBVSxFQUFFLEtBQUssQ0FBQyxRQUFRLEVBQUUsUUFBUSxFQUFFLFNBQVMsQ0FBQyxDQUFDO1FBRTdGLElBQUksUUFBUSxHQUFtQyxFQUFFLENBQUM7UUFDbEQsT0FBTyxDQUFDLEtBQUssQ0FBQyxRQUFRLEVBQUUsQ0FBQyxLQUFzQixFQUFFLElBQVksRUFBRSxFQUFFO1lBQy9ELFFBQVEsQ0FBQyxJQUFJLENBQUMsR0FBRyxJQUFJLENBQUMsa0JBQWtCLENBQUMsVUFBVSxFQUFFLEtBQUssRUFBRSxRQUFRLEVBQUUsU0FBUyxDQUFDLENBQUM7UUFDbkYsQ0FBQyxDQUFDLENBQUM7UUFFSCxPQUFPLElBQUksZUFBZSxDQUFDLGVBQWUsRUFBRSxRQUFRLENBQUMsQ0FBQztJQUN4RCxDQUFDO0lBRU8sY0FBYyxDQUNsQixVQUFrQixFQUFFLGtCQUFnQyxFQUFFLGNBQTRCLEVBQ2xGLFNBQW9DO1FBQ3RDLE9BQU8sa0JBQWtCLENBQUMsR0FBRyxDQUN6QixDQUFDLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsVUFBVSxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsWUFBWSxDQUFDLFVBQVUsRUFBRSxDQUFDLEVBQUUsU0FBUyxDQUFDLENBQUMsQ0FBQztZQUM3QyxJQUFJLENBQUMsWUFBWSxDQUFDLENBQUMsRUFBRSxjQUFjLENBQUMsQ0FBQyxDQUFDO0lBQzFFLENBQUM7SUFFTyxZQUFZLENBQ2hCLFVBQWtCLEVBQUUsb0JBQWdDLEVBQ3BELFNBQW9DO1FBQ3RDLE1BQU0sR0FBRyxHQUFHLFNBQVMsQ0FBQyxvQkFBb0IsQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDOUQsSUFBSSxDQUFDLEdBQUc7WUFDTixNQUFNLElBQUksS0FBSyxDQUNYLHVCQUF1QixVQUFVLG1CQUFtQixvQkFBb0IsQ0FBQyxJQUFJLElBQUksQ0FBQyxDQUFDO1FBQ3pGLE9BQU8sR0FBRyxDQUFDO0lBQ2IsQ0FBQztJQUVPLFlBQVksQ0FBQyxvQkFBZ0MsRUFBRSxjQUE0QjtRQUNqRixJQUFJLEdBQUcsR0FBRyxDQUFDLENBQUM7UUFDWixLQUFLLE1BQU0sQ0FBQyxJQUFJLGNBQWMsRUFBRTtZQUM5QixJQUFJLENBQUMsQ0FBQyxJQUFJLEtBQUssb0JBQW9CLENBQUMsSUFBSSxFQUFFO2dCQUN4QyxjQUFjLENBQUMsTUFBTSxDQUFDLEdBQUcsQ0FBQyxDQUFDO2dCQUMzQixPQUFPLENBQUMsQ0FBQzthQUNWO1lBQ0QsR0FBRyxFQUFFLENBQUM7U0FDUDtRQUNELE9BQU8sb0JBQW9CLENBQUM7SUFDOUIsQ0FBQztDQUNGO0FBRUQsU0FBUyxLQUFLLENBQUMsWUFBNkIsRUFBRSxLQUFZLEVBQUUsUUFBc0I7SUFNaEYsSUFBSSxLQUFLLENBQUMsSUFBSSxLQUFLLEVBQUUsRUFBRTtRQUNyQixJQUFJLENBQUMsS0FBSyxDQUFDLFNBQVMsS0FBSyxNQUFNLENBQUMsSUFBSSxDQUFDLFlBQVksQ0FBQyxXQUFXLEVBQUUsSUFBSSxRQUFRLENBQUMsTUFBTSxHQUFHLENBQUMsQ0FBQyxFQUFFO1lBQ3ZGLE9BQU8sRUFBQyxPQUFPLEVBQUUsS0FBSyxFQUFFLGdCQUFnQixFQUFFLEVBQUUsRUFBRSxTQUFTLEVBQUUsQ0FBQyxFQUFFLHVCQUF1QixFQUFFLEVBQUUsRUFBQyxDQUFDO1NBQzFGO1FBRUQsT0FBTyxFQUFDLE9BQU8sRUFBRSxJQUFJLEVBQUUsZ0JBQWdCLEVBQUUsRUFBRSxFQUFFLFNBQVMsRUFBRSxDQUFDLEVBQUUsdUJBQXVCLEVBQUUsRUFBRSxFQUFDLENBQUM7S0FDekY7SUFFRCxNQUFNLE9BQU8sR0FBRyxLQUFLLENBQUMsT0FBTyxJQUFJLGlCQUFpQixDQUFDO0lBQ25ELE1BQU0sR0FBRyxHQUFHLE9BQU8sQ0FBQyxRQUFRLEVBQUUsWUFBWSxFQUFFLEtBQUssQ0FBQyxDQUFDO0lBRW5ELElBQUksQ0FBQyxHQUFHLEVBQUU7UUFDUixPQUFPO1lBQ0wsT0FBTyxFQUFFLEtBQUs7WUFDZCxnQkFBZ0IsRUFBUyxFQUFFO1lBQzNCLFNBQVMsRUFBRSxDQUFDO1lBQ1osdUJBQXVCLEVBQUUsRUFBRTtTQUM1QixDQUFDO0tBQ0g7SUFFRCxPQUFPO1FBQ0wsT0FBTyxFQUFFLElBQUk7UUFDYixnQkFBZ0IsRUFBRSxHQUFHLENBQUMsUUFBUztRQUMvQixTQUFTLEVBQUUsR0FBRyxDQUFDLFFBQVEsQ0FBQyxNQUFPO1FBQy9CLHVCQUF1QixFQUFFLEdBQUcsQ0FBQyxTQUFVO0tBQ3hDLENBQUM7QUFDSixDQUFDO0FBRUQsU0FBUyxLQUFLLENBQ1YsWUFBNkIsRUFBRSxnQkFBOEIsRUFBRSxjQUE0QixFQUMzRixNQUFlO0lBQ2pCLElBQUksY0FBYyxDQUFDLE1BQU0sR0FBRyxDQUFDO1FBQ3pCLDBDQUEwQyxDQUFDLFlBQVksRUFBRSxjQUFjLEVBQUUsTUFBTSxDQUFDLEVBQUU7UUFDcEYsTUFBTSxDQUFDLEdBQUcsSUFBSSxlQUFlLENBQ3pCLGdCQUFnQixFQUNoQiw4QkFBOEIsQ0FDMUIsTUFBTSxFQUFFLElBQUksZUFBZSxDQUFDLGNBQWMsRUFBRSxZQUFZLENBQUMsUUFBUSxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQzdFLE9BQU8sRUFBQyxZQUFZLEVBQUUsb0JBQW9CLENBQUMsQ0FBQyxDQUFDLEVBQUUsY0FBYyxFQUFFLEVBQUUsRUFBQyxDQUFDO0tBQ3BFO0lBRUQsSUFBSSxjQUFjLENBQUMsTUFBTSxLQUFLLENBQUM7UUFDM0IsMEJBQTBCLENBQUMsWUFBWSxFQUFFLGNBQWMsRUFBRSxNQUFNLENBQUMsRUFBRTtRQUNwRSxNQUFNLENBQUMsR0FBRyxJQUFJLGVBQWUsQ0FDekIsWUFBWSxDQUFDLFFBQVEsRUFDckIsa0NBQWtDLENBQzlCLFlBQVksRUFBRSxjQUFjLEVBQUUsTUFBTSxFQUFFLFlBQVksQ0FBQyxRQUFRLENBQUMsQ0FBQyxDQUFDO1FBQ3RFLE9BQU8sRUFBQyxZQUFZLEVBQUUsb0JBQW9CLENBQUMsQ0FBQyxDQUFDLEVBQUUsY0FBYyxFQUFDLENBQUM7S0FDaEU7SUFFRCxPQUFPLEVBQUMsWUFBWSxFQUFFLGNBQWMsRUFBQyxDQUFDO0FBQ3hDLENBQUM7QUFFRCxTQUFTLG9CQUFvQixDQUFDLENBQWtCO0lBQzlDLElBQUksQ0FBQyxDQUFDLGdCQUFnQixLQUFLLENBQUMsSUFBSSxDQUFDLENBQUMsUUFBUSxDQUFDLGNBQWMsQ0FBQyxFQUFFO1FBQzFELE1BQU0sQ0FBQyxHQUFHLENBQUMsQ0FBQyxRQUFRLENBQUMsY0FBYyxDQUFDLENBQUM7UUFDckMsT0FBTyxJQUFJLGVBQWUsQ0FBQyxDQUFDLENBQUMsUUFBUSxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsUUFBUSxDQUFDLEVBQUUsQ0FBQyxDQUFDLFFBQVEsQ0FBQyxDQUFDO0tBQ3ZFO0lBRUQsT0FBTyxDQUFDLENBQUM7QUFDWCxDQUFDO0FBRUQsU0FBUyxrQ0FBa0MsQ0FDdkMsWUFBNkIsRUFBRSxjQUE0QixFQUFFLE1BQWUsRUFDNUUsUUFBMkM7SUFDN0MsTUFBTSxHQUFHLEdBQXNDLEVBQUUsQ0FBQztJQUNsRCxLQUFLLE1BQU0sQ0FBQyxJQUFJLE1BQU0sRUFBRTtRQUN0QixJQUFJLG1CQUFtQixDQUFDLFlBQVksRUFBRSxjQUFjLEVBQUUsQ0FBQyxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUMsU0FBUyxDQUFDLENBQUMsQ0FBQyxDQUFDLEVBQUU7WUFDbkYsR0FBRyxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxHQUFHLElBQUksZUFBZSxDQUFDLEVBQUUsRUFBRSxFQUFFLENBQUMsQ0FBQztTQUNqRDtLQUNGO0lBQ0QsdUNBQVcsUUFBUSxHQUFLLEdBQUcsRUFBRTtBQUMvQixDQUFDO0FBRUQsU0FBUyw4QkFBOEIsQ0FDbkMsTUFBZSxFQUFFLG1CQUFvQztJQUN2RCxNQUFNLEdBQUcsR0FBc0MsRUFBRSxDQUFDO0lBQ2xELEdBQUcsQ0FBQyxjQUFjLENBQUMsR0FBRyxtQkFBbUIsQ0FBQztJQUMxQyxLQUFLLE1BQU0sQ0FBQyxJQUFJLE1BQU0sRUFBRTtRQUN0QixJQUFJLENBQUMsQ0FBQyxJQUFJLEtBQUssRUFBRSxJQUFJLFNBQVMsQ0FBQyxDQUFDLENBQUMsS0FBSyxjQUFjLEVBQUU7WUFDcEQsR0FBRyxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxHQUFHLElBQUksZUFBZSxDQUFDLEVBQUUsRUFBRSxFQUFFLENBQUMsQ0FBQztTQUNqRDtLQUNGO0lBQ0QsT0FBTyxHQUFHLENBQUM7QUFDYixDQUFDO0FBRUQsU0FBUywwQ0FBMEMsQ0FDL0MsWUFBNkIsRUFBRSxRQUFzQixFQUFFLE1BQWU7SUFDeEUsT0FBTyxNQUFNLENBQUMsSUFBSSxDQUNkLENBQUMsQ0FBQyxFQUFFLENBQUMsbUJBQW1CLENBQUMsWUFBWSxFQUFFLFFBQVEsRUFBRSxDQUFDLENBQUMsSUFBSSxTQUFTLENBQUMsQ0FBQyxDQUFDLEtBQUssY0FBYyxDQUFDLENBQUM7QUFDOUYsQ0FBQztBQUVELFNBQVMsMEJBQTBCLENBQy9CLFlBQTZCLEVBQUUsUUFBc0IsRUFBRSxNQUFlO0lBQ3hFLE9BQU8sTUFBTSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLG1CQUFtQixDQUFDLFlBQVksRUFBRSxRQUFRLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQztBQUMxRSxDQUFDO0FBRUQsU0FBUyxtQkFBbUIsQ0FDeEIsWUFBNkIsRUFBRSxRQUFzQixFQUFFLENBQVE7SUFDakUsSUFBSSxDQUFDLFlBQVksQ0FBQyxXQUFXLEVBQUUsSUFBSSxRQUFRLENBQUMsTUFBTSxHQUFHLENBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQyxTQUFTLEtBQUssTUFBTSxFQUFFO1FBQ2pGLE9BQU8sS0FBSyxDQUFDO0tBQ2Q7SUFFRCxPQUFPLENBQUMsQ0FBQyxJQUFJLEtBQUssRUFBRSxJQUFJLENBQUMsQ0FBQyxVQUFVLEtBQUssU0FBUyxDQUFDO0FBQ3JELENBQUM7QUFFRCxTQUFTLFNBQVMsQ0FBQyxLQUFZO0lBQzdCLE9BQU8sS0FBSyxDQUFDLE1BQU0sSUFBSSxjQUFjLENBQUM7QUFDeEMsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0luamVjdG9yLCBOZ01vZHVsZVJlZn0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge0VtcHR5RXJyb3IsIGZyb20sIE9ic2VydmFibGUsIE9ic2VydmVyLCBvZn0gZnJvbSAncnhqcyc7XG5pbXBvcnQge2NhdGNoRXJyb3IsIGNvbmNhdEFsbCwgZXZlcnksIGZpcnN0LCBtYXAsIG1lcmdlTWFwLCB0YXB9IGZyb20gJ3J4anMvb3BlcmF0b3JzJztcblxuaW1wb3J0IHtMb2FkZWRSb3V0ZXJDb25maWcsIFJvdXRlLCBSb3V0ZXN9IGZyb20gJy4vY29uZmlnJztcbmltcG9ydCB7Q2FuTG9hZEZufSBmcm9tICcuL2ludGVyZmFjZXMnO1xuaW1wb3J0IHtSb3V0ZXJDb25maWdMb2FkZXJ9IGZyb20gJy4vcm91dGVyX2NvbmZpZ19sb2FkZXInO1xuaW1wb3J0IHtkZWZhdWx0VXJsTWF0Y2hlciwgbmF2aWdhdGlvbkNhbmNlbGluZ0Vycm9yLCBQYXJhbXMsIFBSSU1BUllfT1VUTEVUfSBmcm9tICcuL3NoYXJlZCc7XG5pbXBvcnQge1VybFNlZ21lbnQsIFVybFNlZ21lbnRHcm91cCwgVXJsU2VyaWFsaXplciwgVXJsVHJlZX0gZnJvbSAnLi91cmxfdHJlZSc7XG5pbXBvcnQge2ZvckVhY2gsIHdhaXRGb3JNYXAsIHdyYXBJbnRvT2JzZXJ2YWJsZX0gZnJvbSAnLi91dGlscy9jb2xsZWN0aW9uJztcbmltcG9ydCB7aXNDYW5Mb2FkLCBpc0Z1bmN0aW9uLCBpc1VybFRyZWV9IGZyb20gJy4vdXRpbHMvdHlwZV9ndWFyZHMnO1xuXG5jbGFzcyBOb01hdGNoIHtcbiAgcHVibGljIHNlZ21lbnRHcm91cDogVXJsU2VnbWVudEdyb3VwfG51bGw7XG5cbiAgY29uc3RydWN0b3Ioc2VnbWVudEdyb3VwPzogVXJsU2VnbWVudEdyb3VwKSB7XG4gICAgdGhpcy5zZWdtZW50R3JvdXAgPSBzZWdtZW50R3JvdXAgfHwgbnVsbDtcbiAgfVxufVxuXG5jbGFzcyBBYnNvbHV0ZVJlZGlyZWN0IHtcbiAgY29uc3RydWN0b3IocHVibGljIHVybFRyZWU6IFVybFRyZWUpIHt9XG59XG5cbmZ1bmN0aW9uIG5vTWF0Y2goc2VnbWVudEdyb3VwOiBVcmxTZWdtZW50R3JvdXApOiBPYnNlcnZhYmxlPFVybFNlZ21lbnRHcm91cD4ge1xuICByZXR1cm4gbmV3IE9ic2VydmFibGU8VXJsU2VnbWVudEdyb3VwPihcbiAgICAgIChvYnM6IE9ic2VydmVyPFVybFNlZ21lbnRHcm91cD4pID0+IG9icy5lcnJvcihuZXcgTm9NYXRjaChzZWdtZW50R3JvdXApKSk7XG59XG5cbmZ1bmN0aW9uIGFic29sdXRlUmVkaXJlY3QobmV3VHJlZTogVXJsVHJlZSk6IE9ic2VydmFibGU8YW55PiB7XG4gIHJldHVybiBuZXcgT2JzZXJ2YWJsZTxVcmxTZWdtZW50R3JvdXA+KFxuICAgICAgKG9iczogT2JzZXJ2ZXI8VXJsU2VnbWVudEdyb3VwPikgPT4gb2JzLmVycm9yKG5ldyBBYnNvbHV0ZVJlZGlyZWN0KG5ld1RyZWUpKSk7XG59XG5cbmZ1bmN0aW9uIG5hbWVkT3V0bGV0c1JlZGlyZWN0KHJlZGlyZWN0VG86IHN0cmluZyk6IE9ic2VydmFibGU8YW55PiB7XG4gIHJldHVybiBuZXcgT2JzZXJ2YWJsZTxVcmxTZWdtZW50R3JvdXA+KFxuICAgICAgKG9iczogT2JzZXJ2ZXI8VXJsU2VnbWVudEdyb3VwPikgPT4gb2JzLmVycm9yKG5ldyBFcnJvcihcbiAgICAgICAgICBgT25seSBhYnNvbHV0ZSByZWRpcmVjdHMgY2FuIGhhdmUgbmFtZWQgb3V0bGV0cy4gcmVkaXJlY3RUbzogJyR7cmVkaXJlY3RUb30nYCkpKTtcbn1cblxuZnVuY3Rpb24gY2FuTG9hZEZhaWxzKHJvdXRlOiBSb3V0ZSk6IE9ic2VydmFibGU8TG9hZGVkUm91dGVyQ29uZmlnPiB7XG4gIHJldHVybiBuZXcgT2JzZXJ2YWJsZTxMb2FkZWRSb3V0ZXJDb25maWc+KFxuICAgICAgKG9iczogT2JzZXJ2ZXI8TG9hZGVkUm91dGVyQ29uZmlnPikgPT4gb2JzLmVycm9yKFxuICAgICAgICAgIG5hdmlnYXRpb25DYW5jZWxpbmdFcnJvcihgQ2Fubm90IGxvYWQgY2hpbGRyZW4gYmVjYXVzZSB0aGUgZ3VhcmQgb2YgdGhlIHJvdXRlIFwicGF0aDogJyR7XG4gICAgICAgICAgICAgIHJvdXRlLnBhdGh9J1wiIHJldHVybmVkIGZhbHNlYCkpKTtcbn1cblxuLyoqXG4gKiBSZXR1cm5zIHRoZSBgVXJsVHJlZWAgd2l0aCB0aGUgcmVkaXJlY3Rpb24gYXBwbGllZC5cbiAqXG4gKiBMYXp5IG1vZHVsZXMgYXJlIGxvYWRlZCBhbG9uZyB0aGUgd2F5LlxuICovXG5leHBvcnQgZnVuY3Rpb24gYXBwbHlSZWRpcmVjdHMoXG4gICAgbW9kdWxlSW5qZWN0b3I6IEluamVjdG9yLCBjb25maWdMb2FkZXI6IFJvdXRlckNvbmZpZ0xvYWRlciwgdXJsU2VyaWFsaXplcjogVXJsU2VyaWFsaXplcixcbiAgICB1cmxUcmVlOiBVcmxUcmVlLCBjb25maWc6IFJvdXRlcyk6IE9ic2VydmFibGU8VXJsVHJlZT4ge1xuICByZXR1cm4gbmV3IEFwcGx5UmVkaXJlY3RzKG1vZHVsZUluamVjdG9yLCBjb25maWdMb2FkZXIsIHVybFNlcmlhbGl6ZXIsIHVybFRyZWUsIGNvbmZpZykuYXBwbHkoKTtcbn1cblxuY2xhc3MgQXBwbHlSZWRpcmVjdHMge1xuICBwcml2YXRlIGFsbG93UmVkaXJlY3RzOiBib29sZWFuID0gdHJ1ZTtcbiAgcHJpdmF0ZSBuZ01vZHVsZTogTmdNb2R1bGVSZWY8YW55PjtcblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIG1vZHVsZUluamVjdG9yOiBJbmplY3RvciwgcHJpdmF0ZSBjb25maWdMb2FkZXI6IFJvdXRlckNvbmZpZ0xvYWRlcixcbiAgICAgIHByaXZhdGUgdXJsU2VyaWFsaXplcjogVXJsU2VyaWFsaXplciwgcHJpdmF0ZSB1cmxUcmVlOiBVcmxUcmVlLCBwcml2YXRlIGNvbmZpZzogUm91dGVzKSB7XG4gICAgdGhpcy5uZ01vZHVsZSA9IG1vZHVsZUluamVjdG9yLmdldChOZ01vZHVsZVJlZik7XG4gIH1cblxuICBhcHBseSgpOiBPYnNlcnZhYmxlPFVybFRyZWU+IHtcbiAgICBjb25zdCBleHBhbmRlZCQgPVxuICAgICAgICB0aGlzLmV4cGFuZFNlZ21lbnRHcm91cCh0aGlzLm5nTW9kdWxlLCB0aGlzLmNvbmZpZywgdGhpcy51cmxUcmVlLnJvb3QsIFBSSU1BUllfT1VUTEVUKTtcbiAgICBjb25zdCB1cmxUcmVlcyQgPSBleHBhbmRlZCQucGlwZShcbiAgICAgICAgbWFwKChyb290U2VnbWVudEdyb3VwOiBVcmxTZWdtZW50R3JvdXApID0+IHRoaXMuY3JlYXRlVXJsVHJlZShcbiAgICAgICAgICAgICAgICByb290U2VnbWVudEdyb3VwLCB0aGlzLnVybFRyZWUucXVlcnlQYXJhbXMsIHRoaXMudXJsVHJlZS5mcmFnbWVudCEpKSk7XG4gICAgcmV0dXJuIHVybFRyZWVzJC5waXBlKGNhdGNoRXJyb3IoKGU6IGFueSkgPT4ge1xuICAgICAgaWYgKGUgaW5zdGFuY2VvZiBBYnNvbHV0ZVJlZGlyZWN0KSB7XG4gICAgICAgIC8vIGFmdGVyIGFuIGFic29sdXRlIHJlZGlyZWN0IHdlIGRvIG5vdCBhcHBseSBhbnkgbW9yZSByZWRpcmVjdHMhXG4gICAgICAgIHRoaXMuYWxsb3dSZWRpcmVjdHMgPSBmYWxzZTtcbiAgICAgICAgLy8gd2UgbmVlZCB0byBydW4gbWF0Y2hpbmcsIHNvIHdlIGNhbiBmZXRjaCBhbGwgbGF6eS1sb2FkZWQgbW9kdWxlc1xuICAgICAgICByZXR1cm4gdGhpcy5tYXRjaChlLnVybFRyZWUpO1xuICAgICAgfVxuXG4gICAgICBpZiAoZSBpbnN0YW5jZW9mIE5vTWF0Y2gpIHtcbiAgICAgICAgdGhyb3cgdGhpcy5ub01hdGNoRXJyb3IoZSk7XG4gICAgICB9XG5cbiAgICAgIHRocm93IGU7XG4gICAgfSkpO1xuICB9XG5cbiAgcHJpdmF0ZSBtYXRjaCh0cmVlOiBVcmxUcmVlKTogT2JzZXJ2YWJsZTxVcmxUcmVlPiB7XG4gICAgY29uc3QgZXhwYW5kZWQkID1cbiAgICAgICAgdGhpcy5leHBhbmRTZWdtZW50R3JvdXAodGhpcy5uZ01vZHVsZSwgdGhpcy5jb25maWcsIHRyZWUucm9vdCwgUFJJTUFSWV9PVVRMRVQpO1xuICAgIGNvbnN0IG1hcHBlZCQgPSBleHBhbmRlZCQucGlwZShcbiAgICAgICAgbWFwKChyb290U2VnbWVudEdyb3VwOiBVcmxTZWdtZW50R3JvdXApID0+XG4gICAgICAgICAgICAgICAgdGhpcy5jcmVhdGVVcmxUcmVlKHJvb3RTZWdtZW50R3JvdXAsIHRyZWUucXVlcnlQYXJhbXMsIHRyZWUuZnJhZ21lbnQhKSkpO1xuICAgIHJldHVybiBtYXBwZWQkLnBpcGUoY2F0Y2hFcnJvcigoZTogYW55KTogT2JzZXJ2YWJsZTxVcmxUcmVlPiA9PiB7XG4gICAgICBpZiAoZSBpbnN0YW5jZW9mIE5vTWF0Y2gpIHtcbiAgICAgICAgdGhyb3cgdGhpcy5ub01hdGNoRXJyb3IoZSk7XG4gICAgICB9XG5cbiAgICAgIHRocm93IGU7XG4gICAgfSkpO1xuICB9XG5cbiAgcHJpdmF0ZSBub01hdGNoRXJyb3IoZTogTm9NYXRjaCk6IGFueSB7XG4gICAgcmV0dXJuIG5ldyBFcnJvcihgQ2Fubm90IG1hdGNoIGFueSByb3V0ZXMuIFVSTCBTZWdtZW50OiAnJHtlLnNlZ21lbnRHcm91cH0nYCk7XG4gIH1cblxuICBwcml2YXRlIGNyZWF0ZVVybFRyZWUocm9vdENhbmRpZGF0ZTogVXJsU2VnbWVudEdyb3VwLCBxdWVyeVBhcmFtczogUGFyYW1zLCBmcmFnbWVudDogc3RyaW5nKTpcbiAgICAgIFVybFRyZWUge1xuICAgIGNvbnN0IHJvb3QgPSByb290Q2FuZGlkYXRlLnNlZ21lbnRzLmxlbmd0aCA+IDAgP1xuICAgICAgICBuZXcgVXJsU2VnbWVudEdyb3VwKFtdLCB7W1BSSU1BUllfT1VUTEVUXTogcm9vdENhbmRpZGF0ZX0pIDpcbiAgICAgICAgcm9vdENhbmRpZGF0ZTtcbiAgICByZXR1cm4gbmV3IFVybFRyZWUocm9vdCwgcXVlcnlQYXJhbXMsIGZyYWdtZW50KTtcbiAgfVxuXG4gIHByaXZhdGUgZXhwYW5kU2VnbWVudEdyb3VwKFxuICAgICAgbmdNb2R1bGU6IE5nTW9kdWxlUmVmPGFueT4sIHJvdXRlczogUm91dGVbXSwgc2VnbWVudEdyb3VwOiBVcmxTZWdtZW50R3JvdXAsXG4gICAgICBvdXRsZXQ6IHN0cmluZyk6IE9ic2VydmFibGU8VXJsU2VnbWVudEdyb3VwPiB7XG4gICAgaWYgKHNlZ21lbnRHcm91cC5zZWdtZW50cy5sZW5ndGggPT09IDAgJiYgc2VnbWVudEdyb3VwLmhhc0NoaWxkcmVuKCkpIHtcbiAgICAgIHJldHVybiB0aGlzLmV4cGFuZENoaWxkcmVuKG5nTW9kdWxlLCByb3V0ZXMsIHNlZ21lbnRHcm91cClcbiAgICAgICAgICAucGlwZShtYXAoKGNoaWxkcmVuOiBhbnkpID0+IG5ldyBVcmxTZWdtZW50R3JvdXAoW10sIGNoaWxkcmVuKSkpO1xuICAgIH1cblxuICAgIHJldHVybiB0aGlzLmV4cGFuZFNlZ21lbnQobmdNb2R1bGUsIHNlZ21lbnRHcm91cCwgcm91dGVzLCBzZWdtZW50R3JvdXAuc2VnbWVudHMsIG91dGxldCwgdHJ1ZSk7XG4gIH1cblxuICAvLyBSZWN1cnNpdmVseSBleHBhbmQgc2VnbWVudCBncm91cHMgZm9yIGFsbCB0aGUgY2hpbGQgb3V0bGV0c1xuICBwcml2YXRlIGV4cGFuZENoaWxkcmVuKFxuICAgICAgbmdNb2R1bGU6IE5nTW9kdWxlUmVmPGFueT4sIHJvdXRlczogUm91dGVbXSxcbiAgICAgIHNlZ21lbnRHcm91cDogVXJsU2VnbWVudEdyb3VwKTogT2JzZXJ2YWJsZTx7W25hbWU6IHN0cmluZ106IFVybFNlZ21lbnRHcm91cH0+IHtcbiAgICByZXR1cm4gd2FpdEZvck1hcChcbiAgICAgICAgc2VnbWVudEdyb3VwLmNoaWxkcmVuLFxuICAgICAgICAoY2hpbGRPdXRsZXQsIGNoaWxkKSA9PiB0aGlzLmV4cGFuZFNlZ21lbnRHcm91cChuZ01vZHVsZSwgcm91dGVzLCBjaGlsZCwgY2hpbGRPdXRsZXQpKTtcbiAgfVxuXG4gIHByaXZhdGUgZXhwYW5kU2VnbWVudChcbiAgICAgIG5nTW9kdWxlOiBOZ01vZHVsZVJlZjxhbnk+LCBzZWdtZW50R3JvdXA6IFVybFNlZ21lbnRHcm91cCwgcm91dGVzOiBSb3V0ZVtdLFxuICAgICAgc2VnbWVudHM6IFVybFNlZ21lbnRbXSwgb3V0bGV0OiBzdHJpbmcsXG4gICAgICBhbGxvd1JlZGlyZWN0czogYm9vbGVhbik6IE9ic2VydmFibGU8VXJsU2VnbWVudEdyb3VwPiB7XG4gICAgcmV0dXJuIG9mKC4uLnJvdXRlcykucGlwZShcbiAgICAgICAgbWFwKChyOiBhbnkpID0+IHtcbiAgICAgICAgICBjb25zdCBleHBhbmRlZCQgPSB0aGlzLmV4cGFuZFNlZ21lbnRBZ2FpbnN0Um91dGUoXG4gICAgICAgICAgICAgIG5nTW9kdWxlLCBzZWdtZW50R3JvdXAsIHJvdXRlcywgciwgc2VnbWVudHMsIG91dGxldCwgYWxsb3dSZWRpcmVjdHMpO1xuICAgICAgICAgIHJldHVybiBleHBhbmRlZCQucGlwZShjYXRjaEVycm9yKChlOiBhbnkpID0+IHtcbiAgICAgICAgICAgIGlmIChlIGluc3RhbmNlb2YgTm9NYXRjaCkge1xuICAgICAgICAgICAgICAvLyBUT0RPKGkpOiB0aGlzIHJldHVybiB0eXBlIGRvZXNuJ3QgbWF0Y2ggdGhlIGRlY2xhcmVkIE9ic2VydmFibGU8VXJsU2VnbWVudEdyb3VwPiAtXG4gICAgICAgICAgICAgIC8vIHRhbGsgdG8gSmFzb25cbiAgICAgICAgICAgICAgcmV0dXJuIG9mKG51bGwpIGFzIGFueTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIHRocm93IGU7XG4gICAgICAgICAgfSkpO1xuICAgICAgICB9KSxcbiAgICAgICAgY29uY2F0QWxsKCksIGZpcnN0KChzOiBhbnkpID0+ICEhcyksIGNhdGNoRXJyb3IoKGU6IGFueSwgXzogYW55KSA9PiB7XG4gICAgICAgICAgaWYgKGUgaW5zdGFuY2VvZiBFbXB0eUVycm9yIHx8IGUubmFtZSA9PT0gJ0VtcHR5RXJyb3InKSB7XG4gICAgICAgICAgICBpZiAodGhpcy5ub0xlZnRvdmVyc0luVXJsKHNlZ21lbnRHcm91cCwgc2VnbWVudHMsIG91dGxldCkpIHtcbiAgICAgICAgICAgICAgcmV0dXJuIG9mKG5ldyBVcmxTZWdtZW50R3JvdXAoW10sIHt9KSk7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgICB0aHJvdyBuZXcgTm9NYXRjaChzZWdtZW50R3JvdXApO1xuICAgICAgICAgIH1cbiAgICAgICAgICB0aHJvdyBlO1xuICAgICAgICB9KSk7XG4gIH1cblxuICBwcml2YXRlIG5vTGVmdG92ZXJzSW5Vcmwoc2VnbWVudEdyb3VwOiBVcmxTZWdtZW50R3JvdXAsIHNlZ21lbnRzOiBVcmxTZWdtZW50W10sIG91dGxldDogc3RyaW5nKTpcbiAgICAgIGJvb2xlYW4ge1xuICAgIHJldHVybiBzZWdtZW50cy5sZW5ndGggPT09IDAgJiYgIXNlZ21lbnRHcm91cC5jaGlsZHJlbltvdXRsZXRdO1xuICB9XG5cbiAgcHJpdmF0ZSBleHBhbmRTZWdtZW50QWdhaW5zdFJvdXRlKFxuICAgICAgbmdNb2R1bGU6IE5nTW9kdWxlUmVmPGFueT4sIHNlZ21lbnRHcm91cDogVXJsU2VnbWVudEdyb3VwLCByb3V0ZXM6IFJvdXRlW10sIHJvdXRlOiBSb3V0ZSxcbiAgICAgIHBhdGhzOiBVcmxTZWdtZW50W10sIG91dGxldDogc3RyaW5nLCBhbGxvd1JlZGlyZWN0czogYm9vbGVhbik6IE9ic2VydmFibGU8VXJsU2VnbWVudEdyb3VwPiB7XG4gICAgaWYgKGdldE91dGxldChyb3V0ZSkgIT09IG91dGxldCkge1xuICAgICAgcmV0dXJuIG5vTWF0Y2goc2VnbWVudEdyb3VwKTtcbiAgICB9XG5cbiAgICBpZiAocm91dGUucmVkaXJlY3RUbyA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICByZXR1cm4gdGhpcy5tYXRjaFNlZ21lbnRBZ2FpbnN0Um91dGUobmdNb2R1bGUsIHNlZ21lbnRHcm91cCwgcm91dGUsIHBhdGhzKTtcbiAgICB9XG5cbiAgICBpZiAoYWxsb3dSZWRpcmVjdHMgJiYgdGhpcy5hbGxvd1JlZGlyZWN0cykge1xuICAgICAgcmV0dXJuIHRoaXMuZXhwYW5kU2VnbWVudEFnYWluc3RSb3V0ZVVzaW5nUmVkaXJlY3QoXG4gICAgICAgICAgbmdNb2R1bGUsIHNlZ21lbnRHcm91cCwgcm91dGVzLCByb3V0ZSwgcGF0aHMsIG91dGxldCk7XG4gICAgfVxuXG4gICAgcmV0dXJuIG5vTWF0Y2goc2VnbWVudEdyb3VwKTtcbiAgfVxuXG4gIHByaXZhdGUgZXhwYW5kU2VnbWVudEFnYWluc3RSb3V0ZVVzaW5nUmVkaXJlY3QoXG4gICAgICBuZ01vZHVsZTogTmdNb2R1bGVSZWY8YW55Piwgc2VnbWVudEdyb3VwOiBVcmxTZWdtZW50R3JvdXAsIHJvdXRlczogUm91dGVbXSwgcm91dGU6IFJvdXRlLFxuICAgICAgc2VnbWVudHM6IFVybFNlZ21lbnRbXSwgb3V0bGV0OiBzdHJpbmcpOiBPYnNlcnZhYmxlPFVybFNlZ21lbnRHcm91cD4ge1xuICAgIGlmIChyb3V0ZS5wYXRoID09PSAnKionKSB7XG4gICAgICByZXR1cm4gdGhpcy5leHBhbmRXaWxkQ2FyZFdpdGhQYXJhbXNBZ2FpbnN0Um91dGVVc2luZ1JlZGlyZWN0KFxuICAgICAgICAgIG5nTW9kdWxlLCByb3V0ZXMsIHJvdXRlLCBvdXRsZXQpO1xuICAgIH1cblxuICAgIHJldHVybiB0aGlzLmV4cGFuZFJlZ3VsYXJTZWdtZW50QWdhaW5zdFJvdXRlVXNpbmdSZWRpcmVjdChcbiAgICAgICAgbmdNb2R1bGUsIHNlZ21lbnRHcm91cCwgcm91dGVzLCByb3V0ZSwgc2VnbWVudHMsIG91dGxldCk7XG4gIH1cblxuICBwcml2YXRlIGV4cGFuZFdpbGRDYXJkV2l0aFBhcmFtc0FnYWluc3RSb3V0ZVVzaW5nUmVkaXJlY3QoXG4gICAgICBuZ01vZHVsZTogTmdNb2R1bGVSZWY8YW55Piwgcm91dGVzOiBSb3V0ZVtdLCByb3V0ZTogUm91dGUsXG4gICAgICBvdXRsZXQ6IHN0cmluZyk6IE9ic2VydmFibGU8VXJsU2VnbWVudEdyb3VwPiB7XG4gICAgY29uc3QgbmV3VHJlZSA9IHRoaXMuYXBwbHlSZWRpcmVjdENvbW1hbmRzKFtdLCByb3V0ZS5yZWRpcmVjdFRvISwge30pO1xuICAgIGlmIChyb3V0ZS5yZWRpcmVjdFRvIS5zdGFydHNXaXRoKCcvJykpIHtcbiAgICAgIHJldHVybiBhYnNvbHV0ZVJlZGlyZWN0KG5ld1RyZWUpO1xuICAgIH1cblxuICAgIHJldHVybiB0aGlzLmxpbmVyYWxpemVTZWdtZW50cyhyb3V0ZSwgbmV3VHJlZSkucGlwZShtZXJnZU1hcCgobmV3U2VnbWVudHM6IFVybFNlZ21lbnRbXSkgPT4ge1xuICAgICAgY29uc3QgZ3JvdXAgPSBuZXcgVXJsU2VnbWVudEdyb3VwKG5ld1NlZ21lbnRzLCB7fSk7XG4gICAgICByZXR1cm4gdGhpcy5leHBhbmRTZWdtZW50KG5nTW9kdWxlLCBncm91cCwgcm91dGVzLCBuZXdTZWdtZW50cywgb3V0bGV0LCBmYWxzZSk7XG4gICAgfSkpO1xuICB9XG5cbiAgcHJpdmF0ZSBleHBhbmRSZWd1bGFyU2VnbWVudEFnYWluc3RSb3V0ZVVzaW5nUmVkaXJlY3QoXG4gICAgICBuZ01vZHVsZTogTmdNb2R1bGVSZWY8YW55Piwgc2VnbWVudEdyb3VwOiBVcmxTZWdtZW50R3JvdXAsIHJvdXRlczogUm91dGVbXSwgcm91dGU6IFJvdXRlLFxuICAgICAgc2VnbWVudHM6IFVybFNlZ21lbnRbXSwgb3V0bGV0OiBzdHJpbmcpOiBPYnNlcnZhYmxlPFVybFNlZ21lbnRHcm91cD4ge1xuICAgIGNvbnN0IHttYXRjaGVkLCBjb25zdW1lZFNlZ21lbnRzLCBsYXN0Q2hpbGQsIHBvc2l0aW9uYWxQYXJhbVNlZ21lbnRzfSA9XG4gICAgICAgIG1hdGNoKHNlZ21lbnRHcm91cCwgcm91dGUsIHNlZ21lbnRzKTtcbiAgICBpZiAoIW1hdGNoZWQpIHJldHVybiBub01hdGNoKHNlZ21lbnRHcm91cCk7XG5cbiAgICBjb25zdCBuZXdUcmVlID0gdGhpcy5hcHBseVJlZGlyZWN0Q29tbWFuZHMoXG4gICAgICAgIGNvbnN1bWVkU2VnbWVudHMsIHJvdXRlLnJlZGlyZWN0VG8hLCA8YW55PnBvc2l0aW9uYWxQYXJhbVNlZ21lbnRzKTtcbiAgICBpZiAocm91dGUucmVkaXJlY3RUbyEuc3RhcnRzV2l0aCgnLycpKSB7XG4gICAgICByZXR1cm4gYWJzb2x1dGVSZWRpcmVjdChuZXdUcmVlKTtcbiAgICB9XG5cbiAgICByZXR1cm4gdGhpcy5saW5lcmFsaXplU2VnbWVudHMocm91dGUsIG5ld1RyZWUpLnBpcGUobWVyZ2VNYXAoKG5ld1NlZ21lbnRzOiBVcmxTZWdtZW50W10pID0+IHtcbiAgICAgIHJldHVybiB0aGlzLmV4cGFuZFNlZ21lbnQoXG4gICAgICAgICAgbmdNb2R1bGUsIHNlZ21lbnRHcm91cCwgcm91dGVzLCBuZXdTZWdtZW50cy5jb25jYXQoc2VnbWVudHMuc2xpY2UobGFzdENoaWxkKSksIG91dGxldCxcbiAgICAgICAgICBmYWxzZSk7XG4gICAgfSkpO1xuICB9XG5cbiAgcHJpdmF0ZSBtYXRjaFNlZ21lbnRBZ2FpbnN0Um91dGUoXG4gICAgICBuZ01vZHVsZTogTmdNb2R1bGVSZWY8YW55PiwgcmF3U2VnbWVudEdyb3VwOiBVcmxTZWdtZW50R3JvdXAsIHJvdXRlOiBSb3V0ZSxcbiAgICAgIHNlZ21lbnRzOiBVcmxTZWdtZW50W10pOiBPYnNlcnZhYmxlPFVybFNlZ21lbnRHcm91cD4ge1xuICAgIGlmIChyb3V0ZS5wYXRoID09PSAnKionKSB7XG4gICAgICBpZiAocm91dGUubG9hZENoaWxkcmVuKSB7XG4gICAgICAgIHJldHVybiB0aGlzLmNvbmZpZ0xvYWRlci5sb2FkKG5nTW9kdWxlLmluamVjdG9yLCByb3V0ZSlcbiAgICAgICAgICAgIC5waXBlKG1hcCgoY2ZnOiBMb2FkZWRSb3V0ZXJDb25maWcpID0+IHtcbiAgICAgICAgICAgICAgcm91dGUuX2xvYWRlZENvbmZpZyA9IGNmZztcbiAgICAgICAgICAgICAgcmV0dXJuIG5ldyBVcmxTZWdtZW50R3JvdXAoc2VnbWVudHMsIHt9KTtcbiAgICAgICAgICAgIH0pKTtcbiAgICAgIH1cblxuICAgICAgcmV0dXJuIG9mKG5ldyBVcmxTZWdtZW50R3JvdXAoc2VnbWVudHMsIHt9KSk7XG4gICAgfVxuXG4gICAgY29uc3Qge21hdGNoZWQsIGNvbnN1bWVkU2VnbWVudHMsIGxhc3RDaGlsZH0gPSBtYXRjaChyYXdTZWdtZW50R3JvdXAsIHJvdXRlLCBzZWdtZW50cyk7XG4gICAgaWYgKCFtYXRjaGVkKSByZXR1cm4gbm9NYXRjaChyYXdTZWdtZW50R3JvdXApO1xuXG4gICAgY29uc3QgcmF3U2xpY2VkU2VnbWVudHMgPSBzZWdtZW50cy5zbGljZShsYXN0Q2hpbGQpO1xuICAgIGNvbnN0IGNoaWxkQ29uZmlnJCA9IHRoaXMuZ2V0Q2hpbGRDb25maWcobmdNb2R1bGUsIHJvdXRlLCBzZWdtZW50cyk7XG5cbiAgICByZXR1cm4gY2hpbGRDb25maWckLnBpcGUobWVyZ2VNYXAoKHJvdXRlckNvbmZpZzogTG9hZGVkUm91dGVyQ29uZmlnKSA9PiB7XG4gICAgICBjb25zdCBjaGlsZE1vZHVsZSA9IHJvdXRlckNvbmZpZy5tb2R1bGU7XG4gICAgICBjb25zdCBjaGlsZENvbmZpZyA9IHJvdXRlckNvbmZpZy5yb3V0ZXM7XG5cbiAgICAgIGNvbnN0IHtzZWdtZW50R3JvdXAsIHNsaWNlZFNlZ21lbnRzfSA9XG4gICAgICAgICAgc3BsaXQocmF3U2VnbWVudEdyb3VwLCBjb25zdW1lZFNlZ21lbnRzLCByYXdTbGljZWRTZWdtZW50cywgY2hpbGRDb25maWcpO1xuXG4gICAgICBpZiAoc2xpY2VkU2VnbWVudHMubGVuZ3RoID09PSAwICYmIHNlZ21lbnRHcm91cC5oYXNDaGlsZHJlbigpKSB7XG4gICAgICAgIGNvbnN0IGV4cGFuZGVkJCA9IHRoaXMuZXhwYW5kQ2hpbGRyZW4oY2hpbGRNb2R1bGUsIGNoaWxkQ29uZmlnLCBzZWdtZW50R3JvdXApO1xuICAgICAgICByZXR1cm4gZXhwYW5kZWQkLnBpcGUoXG4gICAgICAgICAgICBtYXAoKGNoaWxkcmVuOiBhbnkpID0+IG5ldyBVcmxTZWdtZW50R3JvdXAoY29uc3VtZWRTZWdtZW50cywgY2hpbGRyZW4pKSk7XG4gICAgICB9XG5cbiAgICAgIGlmIChjaGlsZENvbmZpZy5sZW5ndGggPT09IDAgJiYgc2xpY2VkU2VnbWVudHMubGVuZ3RoID09PSAwKSB7XG4gICAgICAgIHJldHVybiBvZihuZXcgVXJsU2VnbWVudEdyb3VwKGNvbnN1bWVkU2VnbWVudHMsIHt9KSk7XG4gICAgICB9XG5cbiAgICAgIGNvbnN0IGV4cGFuZGVkJCA9IHRoaXMuZXhwYW5kU2VnbWVudChcbiAgICAgICAgICBjaGlsZE1vZHVsZSwgc2VnbWVudEdyb3VwLCBjaGlsZENvbmZpZywgc2xpY2VkU2VnbWVudHMsIFBSSU1BUllfT1VUTEVULCB0cnVlKTtcbiAgICAgIHJldHVybiBleHBhbmRlZCQucGlwZShcbiAgICAgICAgICBtYXAoKGNzOiBVcmxTZWdtZW50R3JvdXApID0+XG4gICAgICAgICAgICAgICAgICBuZXcgVXJsU2VnbWVudEdyb3VwKGNvbnN1bWVkU2VnbWVudHMuY29uY2F0KGNzLnNlZ21lbnRzKSwgY3MuY2hpbGRyZW4pKSk7XG4gICAgfSkpO1xuICB9XG5cbiAgcHJpdmF0ZSBnZXRDaGlsZENvbmZpZyhuZ01vZHVsZTogTmdNb2R1bGVSZWY8YW55Piwgcm91dGU6IFJvdXRlLCBzZWdtZW50czogVXJsU2VnbWVudFtdKTpcbiAgICAgIE9ic2VydmFibGU8TG9hZGVkUm91dGVyQ29uZmlnPiB7XG4gICAgaWYgKHJvdXRlLmNoaWxkcmVuKSB7XG4gICAgICAvLyBUaGUgY2hpbGRyZW4gYmVsb25nIHRvIHRoZSBzYW1lIG1vZHVsZVxuICAgICAgcmV0dXJuIG9mKG5ldyBMb2FkZWRSb3V0ZXJDb25maWcocm91dGUuY2hpbGRyZW4sIG5nTW9kdWxlKSk7XG4gICAgfVxuXG4gICAgaWYgKHJvdXRlLmxvYWRDaGlsZHJlbikge1xuICAgICAgLy8gbGF6eSBjaGlsZHJlbiBiZWxvbmcgdG8gdGhlIGxvYWRlZCBtb2R1bGVcbiAgICAgIGlmIChyb3V0ZS5fbG9hZGVkQ29uZmlnICE9PSB1bmRlZmluZWQpIHtcbiAgICAgICAgcmV0dXJuIG9mKHJvdXRlLl9sb2FkZWRDb25maWcpO1xuICAgICAgfVxuXG4gICAgICByZXR1cm4gdGhpcy5ydW5DYW5Mb2FkR3VhcmRzKG5nTW9kdWxlLmluamVjdG9yLCByb3V0ZSwgc2VnbWVudHMpXG4gICAgICAgICAgLnBpcGUobWVyZ2VNYXAoKHNob3VsZExvYWRSZXN1bHQ6IGJvb2xlYW4pID0+IHtcbiAgICAgICAgICAgIGlmIChzaG91bGRMb2FkUmVzdWx0KSB7XG4gICAgICAgICAgICAgIHJldHVybiB0aGlzLmNvbmZpZ0xvYWRlci5sb2FkKG5nTW9kdWxlLmluamVjdG9yLCByb3V0ZSlcbiAgICAgICAgICAgICAgICAgIC5waXBlKG1hcCgoY2ZnOiBMb2FkZWRSb3V0ZXJDb25maWcpID0+IHtcbiAgICAgICAgICAgICAgICAgICAgcm91dGUuX2xvYWRlZENvbmZpZyA9IGNmZztcbiAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGNmZztcbiAgICAgICAgICAgICAgICAgIH0pKTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIHJldHVybiBjYW5Mb2FkRmFpbHMocm91dGUpO1xuICAgICAgICAgIH0pKTtcbiAgICB9XG5cbiAgICByZXR1cm4gb2YobmV3IExvYWRlZFJvdXRlckNvbmZpZyhbXSwgbmdNb2R1bGUpKTtcbiAgfVxuXG4gIHByaXZhdGUgcnVuQ2FuTG9hZEd1YXJkcyhtb2R1bGVJbmplY3RvcjogSW5qZWN0b3IsIHJvdXRlOiBSb3V0ZSwgc2VnbWVudHM6IFVybFNlZ21lbnRbXSk6XG4gICAgICBPYnNlcnZhYmxlPGJvb2xlYW4+IHtcbiAgICBjb25zdCBjYW5Mb2FkID0gcm91dGUuY2FuTG9hZDtcbiAgICBpZiAoIWNhbkxvYWQgfHwgY2FuTG9hZC5sZW5ndGggPT09IDApIHJldHVybiBvZih0cnVlKTtcblxuICAgIGNvbnN0IG9icyA9IGZyb20oY2FuTG9hZCkucGlwZShtYXAoKGluamVjdGlvblRva2VuOiBhbnkpID0+IHtcbiAgICAgIGNvbnN0IGd1YXJkID0gbW9kdWxlSW5qZWN0b3IuZ2V0KGluamVjdGlvblRva2VuKTtcbiAgICAgIGxldCBndWFyZFZhbDtcbiAgICAgIGlmIChpc0NhbkxvYWQoZ3VhcmQpKSB7XG4gICAgICAgIGd1YXJkVmFsID0gZ3VhcmQuY2FuTG9hZChyb3V0ZSwgc2VnbWVudHMpO1xuICAgICAgfSBlbHNlIGlmIChpc0Z1bmN0aW9uPENhbkxvYWRGbj4oZ3VhcmQpKSB7XG4gICAgICAgIGd1YXJkVmFsID0gZ3VhcmQocm91dGUsIHNlZ21lbnRzKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHRocm93IG5ldyBFcnJvcignSW52YWxpZCBDYW5Mb2FkIGd1YXJkJyk7XG4gICAgICB9XG4gICAgICByZXR1cm4gd3JhcEludG9PYnNlcnZhYmxlKGd1YXJkVmFsKTtcbiAgICB9KSk7XG5cbiAgICByZXR1cm4gb2JzLnBpcGUoXG4gICAgICAgIGNvbmNhdEFsbCgpLFxuICAgICAgICB0YXAoKHJlc3VsdDogVXJsVHJlZXxib29sZWFuKSA9PiB7XG4gICAgICAgICAgaWYgKCFpc1VybFRyZWUocmVzdWx0KSkgcmV0dXJuO1xuXG4gICAgICAgICAgY29uc3QgZXJyb3I6IEVycm9yJnt1cmw/OiBVcmxUcmVlfSA9XG4gICAgICAgICAgICAgIG5hdmlnYXRpb25DYW5jZWxpbmdFcnJvcihgUmVkaXJlY3RpbmcgdG8gXCIke3RoaXMudXJsU2VyaWFsaXplci5zZXJpYWxpemUocmVzdWx0KX1cImApO1xuICAgICAgICAgIGVycm9yLnVybCA9IHJlc3VsdDtcbiAgICAgICAgICB0aHJvdyBlcnJvcjtcbiAgICAgICAgfSksXG4gICAgICAgIGV2ZXJ5KHJlc3VsdCA9PiByZXN1bHQgPT09IHRydWUpLFxuICAgICk7XG4gIH1cblxuICBwcml2YXRlIGxpbmVyYWxpemVTZWdtZW50cyhyb3V0ZTogUm91dGUsIHVybFRyZWU6IFVybFRyZWUpOiBPYnNlcnZhYmxlPFVybFNlZ21lbnRbXT4ge1xuICAgIGxldCByZXM6IFVybFNlZ21lbnRbXSA9IFtdO1xuICAgIGxldCBjID0gdXJsVHJlZS5yb290O1xuICAgIHdoaWxlICh0cnVlKSB7XG4gICAgICByZXMgPSByZXMuY29uY2F0KGMuc2VnbWVudHMpO1xuICAgICAgaWYgKGMubnVtYmVyT2ZDaGlsZHJlbiA9PT0gMCkge1xuICAgICAgICByZXR1cm4gb2YocmVzKTtcbiAgICAgIH1cblxuICAgICAgaWYgKGMubnVtYmVyT2ZDaGlsZHJlbiA+IDEgfHwgIWMuY2hpbGRyZW5bUFJJTUFSWV9PVVRMRVRdKSB7XG4gICAgICAgIHJldHVybiBuYW1lZE91dGxldHNSZWRpcmVjdChyb3V0ZS5yZWRpcmVjdFRvISk7XG4gICAgICB9XG5cbiAgICAgIGMgPSBjLmNoaWxkcmVuW1BSSU1BUllfT1VUTEVUXTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIGFwcGx5UmVkaXJlY3RDb21tYW5kcyhcbiAgICAgIHNlZ21lbnRzOiBVcmxTZWdtZW50W10sIHJlZGlyZWN0VG86IHN0cmluZywgcG9zUGFyYW1zOiB7W2s6IHN0cmluZ106IFVybFNlZ21lbnR9KTogVXJsVHJlZSB7XG4gICAgcmV0dXJuIHRoaXMuYXBwbHlSZWRpcmVjdENyZWF0cmVVcmxUcmVlKFxuICAgICAgICByZWRpcmVjdFRvLCB0aGlzLnVybFNlcmlhbGl6ZXIucGFyc2UocmVkaXJlY3RUbyksIHNlZ21lbnRzLCBwb3NQYXJhbXMpO1xuICB9XG5cbiAgcHJpdmF0ZSBhcHBseVJlZGlyZWN0Q3JlYXRyZVVybFRyZWUoXG4gICAgICByZWRpcmVjdFRvOiBzdHJpbmcsIHVybFRyZWU6IFVybFRyZWUsIHNlZ21lbnRzOiBVcmxTZWdtZW50W10sXG4gICAgICBwb3NQYXJhbXM6IHtbazogc3RyaW5nXTogVXJsU2VnbWVudH0pOiBVcmxUcmVlIHtcbiAgICBjb25zdCBuZXdSb290ID0gdGhpcy5jcmVhdGVTZWdtZW50R3JvdXAocmVkaXJlY3RUbywgdXJsVHJlZS5yb290LCBzZWdtZW50cywgcG9zUGFyYW1zKTtcbiAgICByZXR1cm4gbmV3IFVybFRyZWUoXG4gICAgICAgIG5ld1Jvb3QsIHRoaXMuY3JlYXRlUXVlcnlQYXJhbXModXJsVHJlZS5xdWVyeVBhcmFtcywgdGhpcy51cmxUcmVlLnF1ZXJ5UGFyYW1zKSxcbiAgICAgICAgdXJsVHJlZS5mcmFnbWVudCk7XG4gIH1cblxuICBwcml2YXRlIGNyZWF0ZVF1ZXJ5UGFyYW1zKHJlZGlyZWN0VG9QYXJhbXM6IFBhcmFtcywgYWN0dWFsUGFyYW1zOiBQYXJhbXMpOiBQYXJhbXMge1xuICAgIGNvbnN0IHJlczogUGFyYW1zID0ge307XG4gICAgZm9yRWFjaChyZWRpcmVjdFRvUGFyYW1zLCAodjogYW55LCBrOiBzdHJpbmcpID0+IHtcbiAgICAgIGNvbnN0IGNvcHlTb3VyY2VWYWx1ZSA9IHR5cGVvZiB2ID09PSAnc3RyaW5nJyAmJiB2LnN0YXJ0c1dpdGgoJzonKTtcbiAgICAgIGlmIChjb3B5U291cmNlVmFsdWUpIHtcbiAgICAgICAgY29uc3Qgc291cmNlTmFtZSA9IHYuc3Vic3RyaW5nKDEpO1xuICAgICAgICByZXNba10gPSBhY3R1YWxQYXJhbXNbc291cmNlTmFtZV07XG4gICAgICB9IGVsc2Uge1xuICAgICAgICByZXNba10gPSB2O1xuICAgICAgfVxuICAgIH0pO1xuICAgIHJldHVybiByZXM7XG4gIH1cblxuICBwcml2YXRlIGNyZWF0ZVNlZ21lbnRHcm91cChcbiAgICAgIHJlZGlyZWN0VG86IHN0cmluZywgZ3JvdXA6IFVybFNlZ21lbnRHcm91cCwgc2VnbWVudHM6IFVybFNlZ21lbnRbXSxcbiAgICAgIHBvc1BhcmFtczoge1trOiBzdHJpbmddOiBVcmxTZWdtZW50fSk6IFVybFNlZ21lbnRHcm91cCB7XG4gICAgY29uc3QgdXBkYXRlZFNlZ21lbnRzID0gdGhpcy5jcmVhdGVTZWdtZW50cyhyZWRpcmVjdFRvLCBncm91cC5zZWdtZW50cywgc2VnbWVudHMsIHBvc1BhcmFtcyk7XG5cbiAgICBsZXQgY2hpbGRyZW46IHtbbjogc3RyaW5nXTogVXJsU2VnbWVudEdyb3VwfSA9IHt9O1xuICAgIGZvckVhY2goZ3JvdXAuY2hpbGRyZW4sIChjaGlsZDogVXJsU2VnbWVudEdyb3VwLCBuYW1lOiBzdHJpbmcpID0+IHtcbiAgICAgIGNoaWxkcmVuW25hbWVdID0gdGhpcy5jcmVhdGVTZWdtZW50R3JvdXAocmVkaXJlY3RUbywgY2hpbGQsIHNlZ21lbnRzLCBwb3NQYXJhbXMpO1xuICAgIH0pO1xuXG4gICAgcmV0dXJuIG5ldyBVcmxTZWdtZW50R3JvdXAodXBkYXRlZFNlZ21lbnRzLCBjaGlsZHJlbik7XG4gIH1cblxuICBwcml2YXRlIGNyZWF0ZVNlZ21lbnRzKFxuICAgICAgcmVkaXJlY3RUbzogc3RyaW5nLCByZWRpcmVjdFRvU2VnbWVudHM6IFVybFNlZ21lbnRbXSwgYWN0dWFsU2VnbWVudHM6IFVybFNlZ21lbnRbXSxcbiAgICAgIHBvc1BhcmFtczoge1trOiBzdHJpbmddOiBVcmxTZWdtZW50fSk6IFVybFNlZ21lbnRbXSB7XG4gICAgcmV0dXJuIHJlZGlyZWN0VG9TZWdtZW50cy5tYXAoXG4gICAgICAgIHMgPT4gcy5wYXRoLnN0YXJ0c1dpdGgoJzonKSA/IHRoaXMuZmluZFBvc1BhcmFtKHJlZGlyZWN0VG8sIHMsIHBvc1BhcmFtcykgOlxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0aGlzLmZpbmRPclJldHVybihzLCBhY3R1YWxTZWdtZW50cykpO1xuICB9XG5cbiAgcHJpdmF0ZSBmaW5kUG9zUGFyYW0oXG4gICAgICByZWRpcmVjdFRvOiBzdHJpbmcsIHJlZGlyZWN0VG9VcmxTZWdtZW50OiBVcmxTZWdtZW50LFxuICAgICAgcG9zUGFyYW1zOiB7W2s6IHN0cmluZ106IFVybFNlZ21lbnR9KTogVXJsU2VnbWVudCB7XG4gICAgY29uc3QgcG9zID0gcG9zUGFyYW1zW3JlZGlyZWN0VG9VcmxTZWdtZW50LnBhdGguc3Vic3RyaW5nKDEpXTtcbiAgICBpZiAoIXBvcylcbiAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICBgQ2Fubm90IHJlZGlyZWN0IHRvICcke3JlZGlyZWN0VG99Jy4gQ2Fubm90IGZpbmQgJyR7cmVkaXJlY3RUb1VybFNlZ21lbnQucGF0aH0nLmApO1xuICAgIHJldHVybiBwb3M7XG4gIH1cblxuICBwcml2YXRlIGZpbmRPclJldHVybihyZWRpcmVjdFRvVXJsU2VnbWVudDogVXJsU2VnbWVudCwgYWN0dWFsU2VnbWVudHM6IFVybFNlZ21lbnRbXSk6IFVybFNlZ21lbnQge1xuICAgIGxldCBpZHggPSAwO1xuICAgIGZvciAoY29uc3QgcyBvZiBhY3R1YWxTZWdtZW50cykge1xuICAgICAgaWYgKHMucGF0aCA9PT0gcmVkaXJlY3RUb1VybFNlZ21lbnQucGF0aCkge1xuICAgICAgICBhY3R1YWxTZWdtZW50cy5zcGxpY2UoaWR4KTtcbiAgICAgICAgcmV0dXJuIHM7XG4gICAgICB9XG4gICAgICBpZHgrKztcbiAgICB9XG4gICAgcmV0dXJuIHJlZGlyZWN0VG9VcmxTZWdtZW50O1xuICB9XG59XG5cbmZ1bmN0aW9uIG1hdGNoKHNlZ21lbnRHcm91cDogVXJsU2VnbWVudEdyb3VwLCByb3V0ZTogUm91dGUsIHNlZ21lbnRzOiBVcmxTZWdtZW50W10pOiB7XG4gIG1hdGNoZWQ6IGJvb2xlYW4sXG4gIGNvbnN1bWVkU2VnbWVudHM6IFVybFNlZ21lbnRbXSxcbiAgbGFzdENoaWxkOiBudW1iZXIsXG4gIHBvc2l0aW9uYWxQYXJhbVNlZ21lbnRzOiB7W2s6IHN0cmluZ106IFVybFNlZ21lbnR9XG59IHtcbiAgaWYgKHJvdXRlLnBhdGggPT09ICcnKSB7XG4gICAgaWYgKChyb3V0ZS5wYXRoTWF0Y2ggPT09ICdmdWxsJykgJiYgKHNlZ21lbnRHcm91cC5oYXNDaGlsZHJlbigpIHx8IHNlZ21lbnRzLmxlbmd0aCA+IDApKSB7XG4gICAgICByZXR1cm4ge21hdGNoZWQ6IGZhbHNlLCBjb25zdW1lZFNlZ21lbnRzOiBbXSwgbGFzdENoaWxkOiAwLCBwb3NpdGlvbmFsUGFyYW1TZWdtZW50czoge319O1xuICAgIH1cblxuICAgIHJldHVybiB7bWF0Y2hlZDogdHJ1ZSwgY29uc3VtZWRTZWdtZW50czogW10sIGxhc3RDaGlsZDogMCwgcG9zaXRpb25hbFBhcmFtU2VnbWVudHM6IHt9fTtcbiAgfVxuXG4gIGNvbnN0IG1hdGNoZXIgPSByb3V0ZS5tYXRjaGVyIHx8IGRlZmF1bHRVcmxNYXRjaGVyO1xuICBjb25zdCByZXMgPSBtYXRjaGVyKHNlZ21lbnRzLCBzZWdtZW50R3JvdXAsIHJvdXRlKTtcblxuICBpZiAoIXJlcykge1xuICAgIHJldHVybiB7XG4gICAgICBtYXRjaGVkOiBmYWxzZSxcbiAgICAgIGNvbnN1bWVkU2VnbWVudHM6IDxhbnlbXT5bXSxcbiAgICAgIGxhc3RDaGlsZDogMCxcbiAgICAgIHBvc2l0aW9uYWxQYXJhbVNlZ21lbnRzOiB7fSxcbiAgICB9O1xuICB9XG5cbiAgcmV0dXJuIHtcbiAgICBtYXRjaGVkOiB0cnVlLFxuICAgIGNvbnN1bWVkU2VnbWVudHM6IHJlcy5jb25zdW1lZCEsXG4gICAgbGFzdENoaWxkOiByZXMuY29uc3VtZWQubGVuZ3RoISxcbiAgICBwb3NpdGlvbmFsUGFyYW1TZWdtZW50czogcmVzLnBvc1BhcmFtcyEsXG4gIH07XG59XG5cbmZ1bmN0aW9uIHNwbGl0KFxuICAgIHNlZ21lbnRHcm91cDogVXJsU2VnbWVudEdyb3VwLCBjb25zdW1lZFNlZ21lbnRzOiBVcmxTZWdtZW50W10sIHNsaWNlZFNlZ21lbnRzOiBVcmxTZWdtZW50W10sXG4gICAgY29uZmlnOiBSb3V0ZVtdKSB7XG4gIGlmIChzbGljZWRTZWdtZW50cy5sZW5ndGggPiAwICYmXG4gICAgICBjb250YWluc0VtcHR5UGF0aFJlZGlyZWN0c1dpdGhOYW1lZE91dGxldHMoc2VnbWVudEdyb3VwLCBzbGljZWRTZWdtZW50cywgY29uZmlnKSkge1xuICAgIGNvbnN0IHMgPSBuZXcgVXJsU2VnbWVudEdyb3VwKFxuICAgICAgICBjb25zdW1lZFNlZ21lbnRzLFxuICAgICAgICBjcmVhdGVDaGlsZHJlbkZvckVtcHR5U2VnbWVudHMoXG4gICAgICAgICAgICBjb25maWcsIG5ldyBVcmxTZWdtZW50R3JvdXAoc2xpY2VkU2VnbWVudHMsIHNlZ21lbnRHcm91cC5jaGlsZHJlbikpKTtcbiAgICByZXR1cm4ge3NlZ21lbnRHcm91cDogbWVyZ2VUcml2aWFsQ2hpbGRyZW4ocyksIHNsaWNlZFNlZ21lbnRzOiBbXX07XG4gIH1cblxuICBpZiAoc2xpY2VkU2VnbWVudHMubGVuZ3RoID09PSAwICYmXG4gICAgICBjb250YWluc0VtcHR5UGF0aFJlZGlyZWN0cyhzZWdtZW50R3JvdXAsIHNsaWNlZFNlZ21lbnRzLCBjb25maWcpKSB7XG4gICAgY29uc3QgcyA9IG5ldyBVcmxTZWdtZW50R3JvdXAoXG4gICAgICAgIHNlZ21lbnRHcm91cC5zZWdtZW50cyxcbiAgICAgICAgYWRkRW1wdHlTZWdtZW50c1RvQ2hpbGRyZW5JZk5lZWRlZChcbiAgICAgICAgICAgIHNlZ21lbnRHcm91cCwgc2xpY2VkU2VnbWVudHMsIGNvbmZpZywgc2VnbWVudEdyb3VwLmNoaWxkcmVuKSk7XG4gICAgcmV0dXJuIHtzZWdtZW50R3JvdXA6IG1lcmdlVHJpdmlhbENoaWxkcmVuKHMpLCBzbGljZWRTZWdtZW50c307XG4gIH1cblxuICByZXR1cm4ge3NlZ21lbnRHcm91cCwgc2xpY2VkU2VnbWVudHN9O1xufVxuXG5mdW5jdGlvbiBtZXJnZVRyaXZpYWxDaGlsZHJlbihzOiBVcmxTZWdtZW50R3JvdXApOiBVcmxTZWdtZW50R3JvdXAge1xuICBpZiAocy5udW1iZXJPZkNoaWxkcmVuID09PSAxICYmIHMuY2hpbGRyZW5bUFJJTUFSWV9PVVRMRVRdKSB7XG4gICAgY29uc3QgYyA9IHMuY2hpbGRyZW5bUFJJTUFSWV9PVVRMRVRdO1xuICAgIHJldHVybiBuZXcgVXJsU2VnbWVudEdyb3VwKHMuc2VnbWVudHMuY29uY2F0KGMuc2VnbWVudHMpLCBjLmNoaWxkcmVuKTtcbiAgfVxuXG4gIHJldHVybiBzO1xufVxuXG5mdW5jdGlvbiBhZGRFbXB0eVNlZ21lbnRzVG9DaGlsZHJlbklmTmVlZGVkKFxuICAgIHNlZ21lbnRHcm91cDogVXJsU2VnbWVudEdyb3VwLCBzbGljZWRTZWdtZW50czogVXJsU2VnbWVudFtdLCByb3V0ZXM6IFJvdXRlW10sXG4gICAgY2hpbGRyZW46IHtbbmFtZTogc3RyaW5nXTogVXJsU2VnbWVudEdyb3VwfSk6IHtbbmFtZTogc3RyaW5nXTogVXJsU2VnbWVudEdyb3VwfSB7XG4gIGNvbnN0IHJlczoge1tuYW1lOiBzdHJpbmddOiBVcmxTZWdtZW50R3JvdXB9ID0ge307XG4gIGZvciAoY29uc3QgciBvZiByb3V0ZXMpIHtcbiAgICBpZiAoaXNFbXB0eVBhdGhSZWRpcmVjdChzZWdtZW50R3JvdXAsIHNsaWNlZFNlZ21lbnRzLCByKSAmJiAhY2hpbGRyZW5bZ2V0T3V0bGV0KHIpXSkge1xuICAgICAgcmVzW2dldE91dGxldChyKV0gPSBuZXcgVXJsU2VnbWVudEdyb3VwKFtdLCB7fSk7XG4gICAgfVxuICB9XG4gIHJldHVybiB7Li4uY2hpbGRyZW4sIC4uLnJlc307XG59XG5cbmZ1bmN0aW9uIGNyZWF0ZUNoaWxkcmVuRm9yRW1wdHlTZWdtZW50cyhcbiAgICByb3V0ZXM6IFJvdXRlW10sIHByaW1hcnlTZWdtZW50R3JvdXA6IFVybFNlZ21lbnRHcm91cCk6IHtbbmFtZTogc3RyaW5nXTogVXJsU2VnbWVudEdyb3VwfSB7XG4gIGNvbnN0IHJlczoge1tuYW1lOiBzdHJpbmddOiBVcmxTZWdtZW50R3JvdXB9ID0ge307XG4gIHJlc1tQUklNQVJZX09VVExFVF0gPSBwcmltYXJ5U2VnbWVudEdyb3VwO1xuICBmb3IgKGNvbnN0IHIgb2Ygcm91dGVzKSB7XG4gICAgaWYgKHIucGF0aCA9PT0gJycgJiYgZ2V0T3V0bGV0KHIpICE9PSBQUklNQVJZX09VVExFVCkge1xuICAgICAgcmVzW2dldE91dGxldChyKV0gPSBuZXcgVXJsU2VnbWVudEdyb3VwKFtdLCB7fSk7XG4gICAgfVxuICB9XG4gIHJldHVybiByZXM7XG59XG5cbmZ1bmN0aW9uIGNvbnRhaW5zRW1wdHlQYXRoUmVkaXJlY3RzV2l0aE5hbWVkT3V0bGV0cyhcbiAgICBzZWdtZW50R3JvdXA6IFVybFNlZ21lbnRHcm91cCwgc2VnbWVudHM6IFVybFNlZ21lbnRbXSwgcm91dGVzOiBSb3V0ZVtdKTogYm9vbGVhbiB7XG4gIHJldHVybiByb3V0ZXMuc29tZShcbiAgICAgIHIgPT4gaXNFbXB0eVBhdGhSZWRpcmVjdChzZWdtZW50R3JvdXAsIHNlZ21lbnRzLCByKSAmJiBnZXRPdXRsZXQocikgIT09IFBSSU1BUllfT1VUTEVUKTtcbn1cblxuZnVuY3Rpb24gY29udGFpbnNFbXB0eVBhdGhSZWRpcmVjdHMoXG4gICAgc2VnbWVudEdyb3VwOiBVcmxTZWdtZW50R3JvdXAsIHNlZ21lbnRzOiBVcmxTZWdtZW50W10sIHJvdXRlczogUm91dGVbXSk6IGJvb2xlYW4ge1xuICByZXR1cm4gcm91dGVzLnNvbWUociA9PiBpc0VtcHR5UGF0aFJlZGlyZWN0KHNlZ21lbnRHcm91cCwgc2VnbWVudHMsIHIpKTtcbn1cblxuZnVuY3Rpb24gaXNFbXB0eVBhdGhSZWRpcmVjdChcbiAgICBzZWdtZW50R3JvdXA6IFVybFNlZ21lbnRHcm91cCwgc2VnbWVudHM6IFVybFNlZ21lbnRbXSwgcjogUm91dGUpOiBib29sZWFuIHtcbiAgaWYgKChzZWdtZW50R3JvdXAuaGFzQ2hpbGRyZW4oKSB8fCBzZWdtZW50cy5sZW5ndGggPiAwKSAmJiByLnBhdGhNYXRjaCA9PT0gJ2Z1bGwnKSB7XG4gICAgcmV0dXJuIGZhbHNlO1xuICB9XG5cbiAgcmV0dXJuIHIucGF0aCA9PT0gJycgJiYgci5yZWRpcmVjdFRvICE9PSB1bmRlZmluZWQ7XG59XG5cbmZ1bmN0aW9uIGdldE91dGxldChyb3V0ZTogUm91dGUpOiBzdHJpbmcge1xuICByZXR1cm4gcm91dGUub3V0bGV0IHx8IFBSSU1BUllfT1VUTEVUO1xufVxuIl19