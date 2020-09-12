/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { assertDefined } from '../util/assert';
import { checkNoChangesInRootView, checkNoChangesInternal, detectChangesInRootView, detectChangesInternal, markViewDirty, storeCleanupWithContext } from './instructions/shared';
import { CONTAINER_HEADER_OFFSET } from './interfaces/container';
import { isLContainer } from './interfaces/type_checks';
import { CONTEXT, DECLARATION_COMPONENT_VIEW, FLAGS, HOST, T_HOST, TVIEW } from './interfaces/view';
import { assertNodeOfPossibleTypes } from './node_assert';
import { destroyLView, renderDetachView } from './node_manipulation';
import { getLViewParent } from './util/view_traversal_utils';
import { unwrapRNode } from './util/view_utils';
export class ViewRef {
    constructor(
    /**
     * This represents `LView` associated with the component when ViewRef is a ChangeDetectorRef.
     *
     * When ViewRef is created for a dynamic component, this also represents the `LView` for the
     * component.
     *
     * For a "regular" ViewRef created for an embedded view, this is the `LView` for the embedded
     * view.
     *
     * @internal
     */
    _lView, 
    /**
     * This represents the `LView` associated with the point where `ChangeDetectorRef` was
     * requested.
     *
     * This may be different from `_lView` if the `_cdRefInjectingView` is an embedded view.
     */
    _cdRefInjectingView) {
        this._lView = _lView;
        this._cdRefInjectingView = _cdRefInjectingView;
        this._appRef = null;
        this._viewContainerRef = null;
    }
    get rootNodes() {
        const lView = this._lView;
        if (lView[HOST] == null) {
            const hostTView = lView[T_HOST];
            return collectNativeNodes(lView[TVIEW], lView, hostTView.child, []);
        }
        return [];
    }
    get context() {
        return this._lView[CONTEXT];
    }
    get destroyed() {
        return (this._lView[FLAGS] & 256 /* Destroyed */) === 256 /* Destroyed */;
    }
    destroy() {
        if (this._appRef) {
            this._appRef.detachView(this);
        }
        else if (this._viewContainerRef) {
            const index = this._viewContainerRef.indexOf(this);
            if (index > -1) {
                this._viewContainerRef.detach(index);
            }
            this._viewContainerRef = null;
        }
        destroyLView(this._lView[TVIEW], this._lView);
    }
    onDestroy(callback) {
        storeCleanupWithContext(this._lView[TVIEW], this._lView, null, callback);
    }
    /**
     * Marks a view and all of its ancestors dirty.
     *
     * It also triggers change detection by calling `scheduleTick` internally, which coalesces
     * multiple `markForCheck` calls to into one change detection run.
     *
     * This can be used to ensure an {@link ChangeDetectionStrategy#OnPush OnPush} component is
     * checked when it needs to be re-rendered but the two normal triggers haven't marked it
     * dirty (i.e. inputs haven't changed and events haven't fired in the view).
     *
     * <!-- TODO: Add a link to a chapter on OnPush components -->
     *
     * @usageNotes
     * ### Example
     *
     * ```typescript
     * @Component({
     *   selector: 'my-app',
     *   template: `Number of ticks: {{numberOfTicks}}`
     *   changeDetection: ChangeDetectionStrategy.OnPush,
     * })
     * class AppComponent {
     *   numberOfTicks = 0;
     *
     *   constructor(private ref: ChangeDetectorRef) {
     *     setInterval(() => {
     *       this.numberOfTicks++;
     *       // the following is required, otherwise the view will not be updated
     *       this.ref.markForCheck();
     *     }, 1000);
     *   }
     * }
     * ```
     */
    markForCheck() {
        markViewDirty(this._cdRefInjectingView || this._lView);
    }
    /**
     * Detaches the view from the change detection tree.
     *
     * Detached views will not be checked during change detection runs until they are
     * re-attached, even if they are dirty. `detach` can be used in combination with
     * {@link ChangeDetectorRef#detectChanges detectChanges} to implement local change
     * detection checks.
     *
     * <!-- TODO: Add a link to a chapter on detach/reattach/local digest -->
     * <!-- TODO: Add a live demo once ref.detectChanges is merged into master -->
     *
     * @usageNotes
     * ### Example
     *
     * The following example defines a component with a large list of readonly data.
     * Imagine the data changes constantly, many times per second. For performance reasons,
     * we want to check and update the list every five seconds. We can do that by detaching
     * the component's change detector and doing a local check every five seconds.
     *
     * ```typescript
     * class DataProvider {
     *   // in a real application the returned data will be different every time
     *   get data() {
     *     return [1,2,3,4,5];
     *   }
     * }
     *
     * @Component({
     *   selector: 'giant-list',
     *   template: `
     *     <li *ngFor="let d of dataProvider.data">Data {{d}}</li>
     *   `,
     * })
     * class GiantList {
     *   constructor(private ref: ChangeDetectorRef, private dataProvider: DataProvider) {
     *     ref.detach();
     *     setInterval(() => {
     *       this.ref.detectChanges();
     *     }, 5000);
     *   }
     * }
     *
     * @Component({
     *   selector: 'app',
     *   providers: [DataProvider],
     *   template: `
     *     <giant-list><giant-list>
     *   `,
     * })
     * class App {
     * }
     * ```
     */
    detach() {
        this._lView[FLAGS] &= ~128 /* Attached */;
    }
    /**
     * Re-attaches a view to the change detection tree.
     *
     * This can be used to re-attach views that were previously detached from the tree
     * using {@link ChangeDetectorRef#detach detach}. Views are attached to the tree by default.
     *
     * <!-- TODO: Add a link to a chapter on detach/reattach/local digest -->
     *
     * @usageNotes
     * ### Example
     *
     * The following example creates a component displaying `live` data. The component will detach
     * its change detector from the main change detector tree when the component's live property
     * is set to false.
     *
     * ```typescript
     * class DataProvider {
     *   data = 1;
     *
     *   constructor() {
     *     setInterval(() => {
     *       this.data = this.data * 2;
     *     }, 500);
     *   }
     * }
     *
     * @Component({
     *   selector: 'live-data',
     *   inputs: ['live'],
     *   template: 'Data: {{dataProvider.data}}'
     * })
     * class LiveData {
     *   constructor(private ref: ChangeDetectorRef, private dataProvider: DataProvider) {}
     *
     *   set live(value) {
     *     if (value) {
     *       this.ref.reattach();
     *     } else {
     *       this.ref.detach();
     *     }
     *   }
     * }
     *
     * @Component({
     *   selector: 'my-app',
     *   providers: [DataProvider],
     *   template: `
     *     Live Update: <input type="checkbox" [(ngModel)]="live">
     *     <live-data [live]="live"><live-data>
     *   `,
     * })
     * class AppComponent {
     *   live = true;
     * }
     * ```
     */
    reattach() {
        this._lView[FLAGS] |= 128 /* Attached */;
    }
    /**
     * Checks the view and its children.
     *
     * This can also be used in combination with {@link ChangeDetectorRef#detach detach} to implement
     * local change detection checks.
     *
     * <!-- TODO: Add a link to a chapter on detach/reattach/local digest -->
     * <!-- TODO: Add a live demo once ref.detectChanges is merged into master -->
     *
     * @usageNotes
     * ### Example
     *
     * The following example defines a component with a large list of readonly data.
     * Imagine, the data changes constantly, many times per second. For performance reasons,
     * we want to check and update the list every five seconds.
     *
     * We can do that by detaching the component's change detector and doing a local change detection
     * check every five seconds.
     *
     * See {@link ChangeDetectorRef#detach detach} for more information.
     */
    detectChanges() {
        detectChangesInternal(this._lView[TVIEW], this._lView, this.context);
    }
    /**
     * Checks the change detector and its children, and throws if any changes are detected.
     *
     * This is used in development mode to verify that running change detection doesn't
     * introduce other changes.
     */
    checkNoChanges() {
        checkNoChangesInternal(this._lView[TVIEW], this._lView, this.context);
    }
    attachToViewContainerRef(vcRef) {
        if (this._appRef) {
            throw new Error('This view is already attached directly to the ApplicationRef!');
        }
        this._viewContainerRef = vcRef;
    }
    detachFromAppRef() {
        this._appRef = null;
        renderDetachView(this._lView[TVIEW], this._lView);
    }
    attachToAppRef(appRef) {
        if (this._viewContainerRef) {
            throw new Error('This view is already attached to a ViewContainer!');
        }
        this._appRef = appRef;
    }
}
/** @internal */
export class RootViewRef extends ViewRef {
    constructor(_view) {
        super(_view);
        this._view = _view;
    }
    detectChanges() {
        detectChangesInRootView(this._view);
    }
    checkNoChanges() {
        checkNoChangesInRootView(this._view);
    }
    get context() {
        return null;
    }
}
function collectNativeNodes(tView, lView, tNode, result, isProjection = false) {
    while (tNode !== null) {
        ngDevMode && assertNodeOfPossibleTypes(tNode, [
            3 /* Element */, 0 /* Container */, 1 /* Projection */, 4 /* ElementContainer */,
            5 /* IcuContainer */
        ]);
        const lNode = lView[tNode.index];
        if (lNode !== null) {
            result.push(unwrapRNode(lNode));
        }
        // A given lNode can represent either a native node or a LContainer (when it is a host of a
        // ViewContainerRef). When we find a LContainer we need to descend into it to collect root nodes
        // from the views in this container.
        if (isLContainer(lNode)) {
            for (let i = CONTAINER_HEADER_OFFSET; i < lNode.length; i++) {
                const lViewInAContainer = lNode[i];
                const lViewFirstChildTNode = lViewInAContainer[TVIEW].firstChild;
                if (lViewFirstChildTNode !== null) {
                    collectNativeNodes(lViewInAContainer[TVIEW], lViewInAContainer, lViewFirstChildTNode, result);
                }
            }
        }
        const tNodeType = tNode.type;
        if (tNodeType === 4 /* ElementContainer */ || tNodeType === 5 /* IcuContainer */) {
            collectNativeNodes(tView, lView, tNode.child, result);
        }
        else if (tNodeType === 1 /* Projection */) {
            const componentView = lView[DECLARATION_COMPONENT_VIEW];
            const componentHost = componentView[T_HOST];
            const slotIdx = tNode.projection;
            ngDevMode &&
                assertDefined(componentHost.projection, 'Components with projection nodes (<ng-content>) must have projection slots defined.');
            const nodesInSlot = componentHost.projection[slotIdx];
            if (Array.isArray(nodesInSlot)) {
                result.push(...nodesInSlot);
            }
            else {
                const parentView = getLViewParent(componentView);
                ngDevMode &&
                    assertDefined(parentView, 'Component views should always have a parent view (component\'s host view)');
                collectNativeNodes(parentView[TVIEW], parentView, nodesInSlot, result, true);
            }
        }
        tNode = isProjection ? tNode.projectionNext : tNode.next;
    }
    return result;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlld19yZWYuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL3ZpZXdfcmVmLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQU1ILE9BQU8sRUFBQyxhQUFhLEVBQUMsTUFBTSxnQkFBZ0IsQ0FBQztBQUM3QyxPQUFPLEVBQUMsd0JBQXdCLEVBQUUsc0JBQXNCLEVBQUUsdUJBQXVCLEVBQUUscUJBQXFCLEVBQUUsYUFBYSxFQUFFLHVCQUF1QixFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFDL0ssT0FBTyxFQUFDLHVCQUF1QixFQUFDLE1BQU0sd0JBQXdCLENBQUM7QUFFL0QsT0FBTyxFQUFDLFlBQVksRUFBQyxNQUFNLDBCQUEwQixDQUFDO0FBQ3RELE9BQU8sRUFBQyxPQUFPLEVBQUUsMEJBQTBCLEVBQUUsS0FBSyxFQUFFLElBQUksRUFBcUIsTUFBTSxFQUFFLEtBQUssRUFBUSxNQUFNLG1CQUFtQixDQUFDO0FBQzVILE9BQU8sRUFBQyx5QkFBeUIsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUN4RCxPQUFPLEVBQUMsWUFBWSxFQUFFLGdCQUFnQixFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFDbkUsT0FBTyxFQUFDLGNBQWMsRUFBQyxNQUFNLDZCQUE2QixDQUFDO0FBQzNELE9BQU8sRUFBQyxXQUFXLEVBQUMsTUFBTSxtQkFBbUIsQ0FBQztBQVM5QyxNQUFNLE9BQU8sT0FBTztJQWNsQjtJQUNJOzs7Ozs7Ozs7O09BVUc7SUFDSSxNQUFhO0lBRXBCOzs7OztPQUtHO0lBQ0ssbUJBQTJCO1FBUjVCLFdBQU0sR0FBTixNQUFNLENBQU87UUFRWix3QkFBbUIsR0FBbkIsbUJBQW1CLENBQVE7UUFoQy9CLFlBQU8sR0FBd0IsSUFBSSxDQUFDO1FBQ3BDLHNCQUFpQixHQUFxQyxJQUFJLENBQUM7SUErQnpCLENBQUM7SUE3QjNDLElBQUksU0FBUztR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RUFBRTtnQkFDOUIsTUFBTSxDQUFDLElBQUksQ0FBQyxHQUFHLFdBQVcsQ0FBQyxDQUFDO2FBQzdCO2lCQUFNO2dCQUNMLE1BQU0sVUFBVSxHQUFHLGNBQWMsQ0FBQyxhQUFhLENBQUUsQ0FBQztnQkFDbEQsU0FBUztvQkFDTCxhQUFhLENBQ1QsVUFBVSxFQUNWLDJFQUEyRSxDQUFDLENBQUM7Z0JBQ3JGLGtCQUFrQixDQUFDLFVBQVUsQ0FBQyxLQUFLLENBQUMsRUFBRSxVQUFVLEVBQUUsV0FBVyxFQUFFLE1BQU0sRUFBRSxJQUFJLENBQUMsQ0FBQzthQUM5RTtTQUNGO1FBQ0QsS0FBSyxHQUFHLFlBQVksQ0FBQyxDQUFDLENBQUMsS0FBSyxDQUFDLGNBQWMsQ0FBQyxDQUFDLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQztLQUMxRDtJQUVELE9BQU8sTUFBTSxDQUFDO0FBQ2hCLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtBcHBsaWNhdGlvblJlZn0gZnJvbSAnLi4vYXBwbGljYXRpb25fcmVmJztcbmltcG9ydCB7Q2hhbmdlRGV0ZWN0b3JSZWYgYXMgdmlld0VuZ2luZV9DaGFuZ2VEZXRlY3RvclJlZn0gZnJvbSAnLi4vY2hhbmdlX2RldGVjdGlvbi9jaGFuZ2VfZGV0ZWN0b3JfcmVmJztcbmltcG9ydCB7Vmlld0NvbnRhaW5lclJlZiBhcyB2aWV3RW5naW5lX1ZpZXdDb250YWluZXJSZWZ9IGZyb20gJy4uL2xpbmtlci92aWV3X2NvbnRhaW5lcl9yZWYnO1xuaW1wb3J0IHtFbWJlZGRlZFZpZXdSZWYgYXMgdmlld0VuZ2luZV9FbWJlZGRlZFZpZXdSZWYsIEludGVybmFsVmlld1JlZiBhcyB2aWV3RW5naW5lX0ludGVybmFsVmlld1JlZn0gZnJvbSAnLi4vbGlua2VyL3ZpZXdfcmVmJztcbmltcG9ydCB7YXNzZXJ0RGVmaW5lZH0gZnJvbSAnLi4vdXRpbC9hc3NlcnQnO1xuaW1wb3J0IHtjaGVja05vQ2hhbmdlc0luUm9vdFZpZXcsIGNoZWNrTm9DaGFuZ2VzSW50ZXJuYWwsIGRldGVjdENoYW5nZXNJblJvb3RWaWV3LCBkZXRlY3RDaGFuZ2VzSW50ZXJuYWwsIG1hcmtWaWV3RGlydHksIHN0b3JlQ2xlYW51cFdpdGhDb250ZXh0fSBmcm9tICcuL2luc3RydWN0aW9ucy9zaGFyZWQnO1xuaW1wb3J0IHtDT05UQUlORVJfSEVBREVSX09GRlNFVH0gZnJvbSAnLi9pbnRlcmZhY2VzL2NvbnRhaW5lcic7XG5pbXBvcnQge1RFbGVtZW50Tm9kZSwgVE5vZGUsIFROb2RlVHlwZSwgVFZpZXdOb2RlfSBmcm9tICcuL2ludGVyZmFjZXMvbm9kZSc7XG5pbXBvcnQge2lzTENvbnRhaW5lcn0gZnJvbSAnLi9pbnRlcmZhY2VzL3R5cGVfY2hlY2tzJztcbmltcG9ydCB7Q09OVEVYVCwgREVDTEFSQVRJT05fQ09NUE9ORU5UX1ZJRVcsIEZMQUdTLCBIT1NULCBMVmlldywgTFZpZXdGbGFncywgVF9IT1NULCBUVklFVywgVFZpZXd9IGZyb20gJy4vaW50ZXJmYWNlcy92aWV3JztcbmltcG9ydCB7YXNzZXJ0Tm9kZU9mUG9zc2libGVUeXBlc30gZnJvbSAnLi9ub2RlX2Fzc2VydCc7XG5pbXBvcnQge2Rlc3Ryb3lMVmlldywgcmVuZGVyRGV0YWNoVmlld30gZnJvbSAnLi9ub2RlX21hbmlwdWxhdGlvbic7XG5pbXBvcnQge2dldExWaWV3UGFyZW50fSBmcm9tICcuL3V0aWwvdmlld190cmF2ZXJzYWxfdXRpbHMnO1xuaW1wb3J0IHt1bndyYXBSTm9kZX0gZnJvbSAnLi91dGlsL3ZpZXdfdXRpbHMnO1xuXG5cblxuLy8gTmVlZGVkIGR1ZSB0byB0c2lja2xlIGRvd25sZXZlbGluZyB3aGVyZSBtdWx0aXBsZSBgaW1wbGVtZW50c2Agd2l0aCBjbGFzc2VzIGNyZWF0ZXNcbi8vIG11bHRpcGxlIEBleHRlbmRzIGluIENsb3N1cmUgYW5ub3RhdGlvbnMsIHdoaWNoIGlzIGlsbGVnYWwuIFRoaXMgd29ya2Fyb3VuZCBmaXhlc1xuLy8gdGhlIG11bHRpcGxlIEBleHRlbmRzIGJ5IG1ha2luZyB0aGUgYW5ub3RhdGlvbiBAaW1wbGVtZW50cyBpbnN0ZWFkXG5leHBvcnQgaW50ZXJmYWNlIHZpZXdFbmdpbmVfQ2hhbmdlRGV0ZWN0b3JSZWZfaW50ZXJmYWNlIGV4dGVuZHMgdmlld0VuZ2luZV9DaGFuZ2VEZXRlY3RvclJlZiB7fVxuXG5leHBvcnQgY2xhc3MgVmlld1JlZjxUPiBpbXBsZW1lbnRzIHZpZXdFbmdpbmVfRW1iZWRkZWRWaWV3UmVmPFQ+LCB2aWV3RW5naW5lX0ludGVybmFsVmlld1JlZixcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdmlld0VuZ2luZV9DaGFuZ2VEZXRlY3RvclJlZl9pbnRlcmZhY2Uge1xuICBwcml2YXRlIF9hcHBSZWY6IEFwcGxpY2F0aW9uUmVmfG51bGwgPSBudWxsO1xuICBwcml2YXRlIF92aWV3Q29udGFpbmVyUmVmOiB2aWV3RW5naW5lX1ZpZXdDb250YWluZXJSZWZ8bnVsbCA9IG51bGw7XG5cbiAgZ2V0IHJvb3ROb2RlcygpOiBhbnlbXSB7XG4gICAgY29uc3QgbFZpZXcgPSB0aGlzLl9sVmlldztcbiAgICBpZiAobFZpZXdbSE9TVF0gPT0gbnVsbCkge1xuICAgICAgY29uc3QgaG9zdFRWaWV3ID0gbFZpZXdbVF9IT1NUXSBhcyBUVmlld05vZGU7XG4gICAgICByZXR1cm4gY29sbGVjdE5hdGl2ZU5vZGVzKGxWaWV3W1RWSUVXXSwgbFZpZXcsIGhvc3RUVmlldy5jaGlsZCwgW10pO1xuICAgIH1cbiAgICByZXR1cm4gW107XG4gIH1cblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIC8qKlxuICAgICAgICogVGhpcyByZXByZXNlbnRzIGBMVmlld2AgYXNzb2NpYXRlZCB3aXRoIHRoZSBjb21wb25lbnQgd2hlbiBWaWV3UmVmIGlzIGEgQ2hhbmdlRGV0ZWN0b3JSZWYuXG4gICAgICAgKlxuICAgICAgICogV2hlbiBWaWV3UmVmIGlzIGNyZWF0ZWQgZm9yIGEgZHluYW1pYyBjb21wb25lbnQsIHRoaXMgYWxzbyByZXByZXNlbnRzIHRoZSBgTFZpZXdgIGZvciB0aGVcbiAgICAgICAqIGNvbXBvbmVudC5cbiAgICAgICAqXG4gICAgICAgKiBGb3IgYSBcInJlZ3VsYXJcIiBWaWV3UmVmIGNyZWF0ZWQgZm9yIGFuIGVtYmVkZGVkIHZpZXcsIHRoaXMgaXMgdGhlIGBMVmlld2AgZm9yIHRoZSBlbWJlZGRlZFxuICAgICAgICogdmlldy5cbiAgICAgICAqXG4gICAgICAgKiBAaW50ZXJuYWxcbiAgICAgICAqL1xuICAgICAgcHVibGljIF9sVmlldzogTFZpZXcsXG5cbiAgICAgIC8qKlxuICAgICAgICogVGhpcyByZXByZXNlbnRzIHRoZSBgTFZpZXdgIGFzc29jaWF0ZWQgd2l0aCB0aGUgcG9pbnQgd2hlcmUgYENoYW5nZURldGVjdG9yUmVmYCB3YXNcbiAgICAgICAqIHJlcXVlc3RlZC5cbiAgICAgICAqXG4gICAgICAgKiBUaGlzIG1heSBiZSBkaWZmZXJlbnQgZnJvbSBgX2xWaWV3YCBpZiB0aGUgYF9jZFJlZkluamVjdGluZ1ZpZXdgIGlzIGFuIGVtYmVkZGVkIHZpZXcuXG4gICAgICAgKi9cbiAgICAgIHByaXZhdGUgX2NkUmVmSW5qZWN0aW5nVmlldz86IExWaWV3KSB7fVxuXG4gIGdldCBjb250ZXh0KCk6IFQge1xuICAgIHJldHVybiB0aGlzLl9sVmlld1tDT05URVhUXSBhcyBUO1xuICB9XG5cbiAgZ2V0IGRlc3Ryb3llZCgpOiBib29sZWFuIHtcbiAgICByZXR1cm4gKHRoaXMuX2xWaWV3W0ZMQUdTXSAmIExWaWV3RmxhZ3MuRGVzdHJveWVkKSA9PT0gTFZpZXdGbGFncy5EZXN0cm95ZWQ7XG4gIH1cblxuICBkZXN0cm95KCk6IHZvaWQge1xuICAgIGlmICh0aGlzLl9hcHBSZWYpIHtcbiAgICAgIHRoaXMuX2FwcFJlZi5kZXRhY2hWaWV3KHRoaXMpO1xuICAgIH0gZWxzZSBpZiAodGhpcy5fdmlld0NvbnRhaW5lclJlZikge1xuICAgICAgY29uc3QgaW5kZXggPSB0aGlzLl92aWV3Q29udGFpbmVyUmVmLmluZGV4T2YodGhpcyk7XG5cbiAgICAgIGlmIChpbmRleCA+IC0xKSB7XG4gICAgICAgIHRoaXMuX3ZpZXdDb250YWluZXJSZWYuZGV0YWNoKGluZGV4KTtcbiAgICAgIH1cblxuICAgICAgdGhpcy5fdmlld0NvbnRhaW5lclJlZiA9IG51bGw7XG4gICAgfVxuICAgIGRlc3Ryb3lMVmlldyh0aGlzLl9sVmlld1tUVklFV10sIHRoaXMuX2xWaWV3KTtcbiAgfVxuXG4gIG9uRGVzdHJveShjYWxsYmFjazogRnVuY3Rpb24pIHtcbiAgICBzdG9yZUNsZWFudXBXaXRoQ29udGV4dCh0aGlzLl9sVmlld1tUVklFV10sIHRoaXMuX2xWaWV3LCBudWxsLCBjYWxsYmFjayk7XG4gIH1cblxuICAvKipcbiAgICogTWFya3MgYSB2aWV3IGFuZCBhbGwgb2YgaXRzIGFuY2VzdG9ycyBkaXJ0eS5cbiAgICpcbiAgICogSXQgYWxzbyB0cmlnZ2VycyBjaGFuZ2UgZGV0ZWN0aW9uIGJ5IGNhbGxpbmcgYHNjaGVkdWxlVGlja2AgaW50ZXJuYWxseSwgd2hpY2ggY29hbGVzY2VzXG4gICAqIG11bHRpcGxlIGBtYXJrRm9yQ2hlY2tgIGNhbGxzIHRvIGludG8gb25lIGNoYW5nZSBkZXRlY3Rpb24gcnVuLlxuICAgKlxuICAgKiBUaGlzIGNhbiBiZSB1c2VkIHRvIGVuc3VyZSBhbiB7QGxpbmsgQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kjT25QdXNoIE9uUHVzaH0gY29tcG9uZW50IGlzXG4gICAqIGNoZWNrZWQgd2hlbiBpdCBuZWVkcyB0byBiZSByZS1yZW5kZXJlZCBidXQgdGhlIHR3byBub3JtYWwgdHJpZ2dlcnMgaGF2ZW4ndCBtYXJrZWQgaXRcbiAgICogZGlydHkgKGkuZS4gaW5wdXRzIGhhdmVuJ3QgY2hhbmdlZCBhbmQgZXZlbnRzIGhhdmVuJ3QgZmlyZWQgaW4gdGhlIHZpZXcpLlxuICAgKlxuICAgKiA8IS0tIFRPRE86IEFkZCBhIGxpbmsgdG8gYSBjaGFwdGVyIG9uIE9uUHVzaCBjb21wb25lbnRzIC0tPlxuICAgKlxuICAgKiBAdXNhZ2VOb3Rlc1xuICAgKiAjIyMgRXhhbXBsZVxuICAgKlxuICAgKiBgYGB0eXBlc2NyaXB0XG4gICAqIEBDb21wb25lbnQoe1xuICAgKiAgIHNlbGVjdG9yOiAnbXktYXBwJyxcbiAgICogICB0ZW1wbGF0ZTogYE51bWJlciBvZiB0aWNrczoge3tudW1iZXJPZlRpY2tzfX1gXG4gICAqICAgY2hhbmdlRGV0ZWN0aW9uOiBDaGFuZ2VEZXRlY3Rpb25TdHJhdGVneS5PblB1c2gsXG4gICAqIH0pXG4gICAqIGNsYXNzIEFwcENvbXBvbmVudCB7XG4gICAqICAgbnVtYmVyT2ZUaWNrcyA9IDA7XG4gICAqXG4gICAqICAgY29uc3RydWN0b3IocHJpdmF0ZSByZWY6IENoYW5nZURldGVjdG9yUmVmKSB7XG4gICAqICAgICBzZXRJbnRlcnZhbCgoKSA9PiB7XG4gICAqICAgICAgIHRoaXMubnVtYmVyT2ZUaWNrcysrO1xuICAgKiAgICAgICAvLyB0aGUgZm9sbG93aW5nIGlzIHJlcXVpcmVkLCBvdGhlcndpc2UgdGhlIHZpZXcgd2lsbCBub3QgYmUgdXBkYXRlZFxuICAgKiAgICAgICB0aGlzLnJlZi5tYXJrRm9yQ2hlY2soKTtcbiAgICogICAgIH0sIDEwMDApO1xuICAgKiAgIH1cbiAgICogfVxuICAgKiBgYGBcbiAgICovXG4gIG1hcmtGb3JDaGVjaygpOiB2b2lkIHtcbiAgICBtYXJrVmlld0RpcnR5KHRoaXMuX2NkUmVmSW5qZWN0aW5nVmlldyB8fCB0aGlzLl9sVmlldyk7XG4gIH1cblxuICAvKipcbiAgICogRGV0YWNoZXMgdGhlIHZpZXcgZnJvbSB0aGUgY2hhbmdlIGRldGVjdGlvbiB0cmVlLlxuICAgKlxuICAgKiBEZXRhY2hlZCB2aWV3cyB3aWxsIG5vdCBiZSBjaGVja2VkIGR1cmluZyBjaGFuZ2UgZGV0ZWN0aW9uIHJ1bnMgdW50aWwgdGhleSBhcmVcbiAgICogcmUtYXR0YWNoZWQsIGV2ZW4gaWYgdGhleSBhcmUgZGlydHkuIGBkZXRhY2hgIGNhbiBiZSB1c2VkIGluIGNvbWJpbmF0aW9uIHdpdGhcbiAgICoge0BsaW5rIENoYW5nZURldGVjdG9yUmVmI2RldGVjdENoYW5nZXMgZGV0ZWN0Q2hhbmdlc30gdG8gaW1wbGVtZW50IGxvY2FsIGNoYW5nZVxuICAgKiBkZXRlY3Rpb24gY2hlY2tzLlxuICAgKlxuICAgKiA8IS0tIFRPRE86IEFkZCBhIGxpbmsgdG8gYSBjaGFwdGVyIG9uIGRldGFjaC9yZWF0dGFjaC9sb2NhbCBkaWdlc3QgLS0+XG4gICAqIDwhLS0gVE9ETzogQWRkIGEgbGl2ZSBkZW1vIG9uY2UgcmVmLmRldGVjdENoYW5nZXMgaXMgbWVyZ2VkIGludG8gbWFzdGVyIC0tPlxuICAgKlxuICAgKiBAdXNhZ2VOb3Rlc1xuICAgKiAjIyMgRXhhbXBsZVxuICAgKlxuICAgKiBUaGUgZm9sbG93aW5nIGV4YW1wbGUgZGVmaW5lcyBhIGNvbXBvbmVudCB3aXRoIGEgbGFyZ2UgbGlzdCBvZiByZWFkb25seSBkYXRhLlxuICAgKiBJbWFnaW5lIHRoZSBkYXRhIGNoYW5nZXMgY29uc3RhbnRseSwgbWFueSB0aW1lcyBwZXIgc2Vjb25kLiBGb3IgcGVyZm9ybWFuY2UgcmVhc29ucyxcbiAgICogd2Ugd2FudCB0byBjaGVjayBhbmQgdXBkYXRlIHRoZSBsaXN0IGV2ZXJ5IGZpdmUgc2Vjb25kcy4gV2UgY2FuIGRvIHRoYXQgYnkgZGV0YWNoaW5nXG4gICAqIHRoZSBjb21wb25lbnQncyBjaGFuZ2UgZGV0ZWN0b3IgYW5kIGRvaW5nIGEgbG9jYWwgY2hlY2sgZXZlcnkgZml2ZSBzZWNvbmRzLlxuICAgKlxuICAgKiBgYGB0eXBlc2NyaXB0XG4gICAqIGNsYXNzIERhdGFQcm92aWRlciB7XG4gICAqICAgLy8gaW4gYSByZWFsIGFwcGxpY2F0aW9uIHRoZSByZXR1cm5lZCBkYXRhIHdpbGwgYmUgZGlmZmVyZW50IGV2ZXJ5IHRpbWVcbiAgICogICBnZXQgZGF0YSgpIHtcbiAgICogICAgIHJldHVybiBbMSwyLDMsNCw1XTtcbiAgICogICB9XG4gICAqIH1cbiAgICpcbiAgICogQENvbXBvbmVudCh7XG4gICAqICAgc2VsZWN0b3I6ICdnaWFudC1saXN0JyxcbiAgICogICB0ZW1wbGF0ZTogYFxuICAgKiAgICAgPGxpICpuZ0Zvcj1cImxldCBkIG9mIGRhdGFQcm92aWRlci5kYXRhXCI+RGF0YSB7e2R9fTwvbGk+XG4gICAqICAgYCxcbiAgICogfSlcbiAgICogY2xhc3MgR2lhbnRMaXN0IHtcbiAgICogICBjb25zdHJ1Y3Rvcihwcml2YXRlIHJlZjogQ2hhbmdlRGV0ZWN0b3JSZWYsIHByaXZhdGUgZGF0YVByb3ZpZGVyOiBEYXRhUHJvdmlkZXIpIHtcbiAgICogICAgIHJlZi5kZXRhY2goKTtcbiAgICogICAgIHNldEludGVydmFsKCgpID0+IHtcbiAgICogICAgICAgdGhpcy5yZWYuZGV0ZWN0Q2hhbmdlcygpO1xuICAgKiAgICAgfSwgNTAwMCk7XG4gICAqICAgfVxuICAgKiB9XG4gICAqXG4gICAqIEBDb21wb25lbnQoe1xuICAgKiAgIHNlbGVjdG9yOiAnYXBwJyxcbiAgICogICBwcm92aWRlcnM6IFtEYXRhUHJvdmlkZXJdLFxuICAgKiAgIHRlbXBsYXRlOiBgXG4gICAqICAgICA8Z2lhbnQtbGlzdD48Z2lhbnQtbGlzdD5cbiAgICogICBgLFxuICAgKiB9KVxuICAgKiBjbGFzcyBBcHAge1xuICAgKiB9XG4gICAqIGBgYFxuICAgKi9cbiAgZGV0YWNoKCk6IHZvaWQge1xuICAgIHRoaXMuX2xWaWV3W0ZMQUdTXSAmPSB+TFZpZXdGbGFncy5BdHRhY2hlZDtcbiAgfVxuXG4gIC8qKlxuICAgKiBSZS1hdHRhY2hlcyBhIHZpZXcgdG8gdGhlIGNoYW5nZSBkZXRlY3Rpb24gdHJlZS5cbiAgICpcbiAgICogVGhpcyBjYW4gYmUgdXNlZCB0byByZS1hdHRhY2ggdmlld3MgdGhhdCB3ZXJlIHByZXZpb3VzbHkgZGV0YWNoZWQgZnJvbSB0aGUgdHJlZVxuICAgKiB1c2luZyB7QGxpbmsgQ2hhbmdlRGV0ZWN0b3JSZWYjZGV0YWNoIGRldGFjaH0uIFZpZXdzIGFyZSBhdHRhY2hlZCB0byB0aGUgdHJlZSBieSBkZWZhdWx0LlxuICAgKlxuICAgKiA8IS0tIFRPRE86IEFkZCBhIGxpbmsgdG8gYSBjaGFwdGVyIG9uIGRldGFjaC9yZWF0dGFjaC9sb2NhbCBkaWdlc3QgLS0+XG4gICAqXG4gICAqIEB1c2FnZU5vdGVzXG4gICAqICMjIyBFeGFtcGxlXG4gICAqXG4gICAqIFRoZSBmb2xsb3dpbmcgZXhhbXBsZSBjcmVhdGVzIGEgY29tcG9uZW50IGRpc3BsYXlpbmcgYGxpdmVgIGRhdGEuIFRoZSBjb21wb25lbnQgd2lsbCBkZXRhY2hcbiAgICogaXRzIGNoYW5nZSBkZXRlY3RvciBmcm9tIHRoZSBtYWluIGNoYW5nZSBkZXRlY3RvciB0cmVlIHdoZW4gdGhlIGNvbXBvbmVudCdzIGxpdmUgcHJvcGVydHlcbiAgICogaXMgc2V0IHRvIGZhbHNlLlxuICAgKlxuICAgKiBgYGB0eXBlc2NyaXB0XG4gICAqIGNsYXNzIERhdGFQcm92aWRlciB7XG4gICAqICAgZGF0YSA9IDE7XG4gICAqXG4gICAqICAgY29uc3RydWN0b3IoKSB7XG4gICAqICAgICBzZXRJbnRlcnZhbCgoKSA9PiB7XG4gICAqICAgICAgIHRoaXMuZGF0YSA9IHRoaXMuZGF0YSAqIDI7XG4gICAqICAgICB9LCA1MDApO1xuICAgKiAgIH1cbiAgICogfVxuICAgKlxuICAgKiBAQ29tcG9uZW50KHtcbiAgICogICBzZWxlY3RvcjogJ2xpdmUtZGF0YScsXG4gICAqICAgaW5wdXRzOiBbJ2xpdmUnXSxcbiAgICogICB0ZW1wbGF0ZTogJ0RhdGE6IHt7ZGF0YVByb3ZpZGVyLmRhdGF9fSdcbiAgICogfSlcbiAgICogY2xhc3MgTGl2ZURhdGEge1xuICAgKiAgIGNvbnN0cnVjdG9yKHByaXZhdGUgcmVmOiBDaGFuZ2VEZXRlY3RvclJlZiwgcHJpdmF0ZSBkYXRhUHJvdmlkZXI6IERhdGFQcm92aWRlcikge31cbiAgICpcbiAgICogICBzZXQgbGl2ZSh2YWx1ZSkge1xuICAgKiAgICAgaWYgKHZhbHVlKSB7XG4gICAqICAgICAgIHRoaXMucmVmLnJlYXR0YWNoKCk7XG4gICAqICAgICB9IGVsc2Uge1xuICAgKiAgICAgICB0aGlzLnJlZi5kZXRhY2goKTtcbiAgICogICAgIH1cbiAgICogICB9XG4gICAqIH1cbiAgICpcbiAgICogQENvbXBvbmVudCh7XG4gICAqICAgc2VsZWN0b3I6ICdteS1hcHAnLFxuICAgKiAgIHByb3ZpZGVyczogW0RhdGFQcm92aWRlcl0sXG4gICAqICAgdGVtcGxhdGU6IGBcbiAgICogICAgIExpdmUgVXBkYXRlOiA8aW5wdXQgdHlwZT1cImNoZWNrYm94XCIgWyhuZ01vZGVsKV09XCJsaXZlXCI+XG4gICAqICAgICA8bGl2ZS1kYXRhIFtsaXZlXT1cImxpdmVcIj48bGl2ZS1kYXRhPlxuICAgKiAgIGAsXG4gICAqIH0pXG4gICAqIGNsYXNzIEFwcENvbXBvbmVudCB7XG4gICAqICAgbGl2ZSA9IHRydWU7XG4gICAqIH1cbiAgICogYGBgXG4gICAqL1xuICByZWF0dGFjaCgpOiB2b2lkIHtcbiAgICB0aGlzLl9sVmlld1tGTEFHU10gfD0gTFZpZXdGbGFncy5BdHRhY2hlZDtcbiAgfVxuXG4gIC8qKlxuICAgKiBDaGVja3MgdGhlIHZpZXcgYW5kIGl0cyBjaGlsZHJlbi5cbiAgICpcbiAgICogVGhpcyBjYW4gYWxzbyBiZSB1c2VkIGluIGNvbWJpbmF0aW9uIHdpdGgge0BsaW5rIENoYW5nZURldGVjdG9yUmVmI2RldGFjaCBkZXRhY2h9IHRvIGltcGxlbWVudFxuICAgKiBsb2NhbCBjaGFuZ2UgZGV0ZWN0aW9uIGNoZWNrcy5cbiAgICpcbiAgICogPCEtLSBUT0RPOiBBZGQgYSBsaW5rIHRvIGEgY2hhcHRlciBvbiBkZXRhY2gvcmVhdHRhY2gvbG9jYWwgZGlnZXN0IC0tPlxuICAgKiA8IS0tIFRPRE86IEFkZCBhIGxpdmUgZGVtbyBvbmNlIHJlZi5kZXRlY3RDaGFuZ2VzIGlzIG1lcmdlZCBpbnRvIG1hc3RlciAtLT5cbiAgICpcbiAgICogQHVzYWdlTm90ZXNcbiAgICogIyMjIEV4YW1wbGVcbiAgICpcbiAgICogVGhlIGZvbGxvd2luZyBleGFtcGxlIGRlZmluZXMgYSBjb21wb25lbnQgd2l0aCBhIGxhcmdlIGxpc3Qgb2YgcmVhZG9ubHkgZGF0YS5cbiAgICogSW1hZ2luZSwgdGhlIGRhdGEgY2hhbmdlcyBjb25zdGFudGx5LCBtYW55IHRpbWVzIHBlciBzZWNvbmQuIEZvciBwZXJmb3JtYW5jZSByZWFzb25zLFxuICAgKiB3ZSB3YW50IHRvIGNoZWNrIGFuZCB1cGRhdGUgdGhlIGxpc3QgZXZlcnkgZml2ZSBzZWNvbmRzLlxuICAgKlxuICAgKiBXZSBjYW4gZG8gdGhhdCBieSBkZXRhY2hpbmcgdGhlIGNvbXBvbmVudCdzIGNoYW5nZSBkZXRlY3RvciBhbmQgZG9pbmcgYSBsb2NhbCBjaGFuZ2UgZGV0ZWN0aW9uXG4gICAqIGNoZWNrIGV2ZXJ5IGZpdmUgc2Vjb25kcy5cbiAgICpcbiAgICogU2VlIHtAbGluayBDaGFuZ2VEZXRlY3RvclJlZiNkZXRhY2ggZGV0YWNofSBmb3IgbW9yZSBpbmZvcm1hdGlvbi5cbiAgICovXG4gIGRldGVjdENoYW5nZXMoKTogdm9pZCB7XG4gICAgZGV0ZWN0Q2hhbmdlc0ludGVybmFsKHRoaXMuX2xWaWV3W1RWSUVXXSwgdGhpcy5fbFZpZXcsIHRoaXMuY29udGV4dCk7XG4gIH1cblxuICAvKipcbiAgICogQ2hlY2tzIHRoZSBjaGFuZ2UgZGV0ZWN0b3IgYW5kIGl0cyBjaGlsZHJlbiwgYW5kIHRocm93cyBpZiBhbnkgY2hhbmdlcyBhcmUgZGV0ZWN0ZWQuXG4gICAqXG4gICAqIFRoaXMgaXMgdXNlZCBpbiBkZXZlbG9wbWVudCBtb2RlIHRvIHZlcmlmeSB0aGF0IHJ1bm5pbmcgY2hhbmdlIGRldGVjdGlvbiBkb2Vzbid0XG4gICAqIGludHJvZHVjZSBvdGhlciBjaGFuZ2VzLlxuICAgKi9cbiAgY2hlY2tOb0NoYW5nZXMoKTogdm9pZCB7XG4gICAgY2hlY2tOb0NoYW5nZXNJbnRlcm5hbCh0aGlzLl9sVmlld1tUVklFV10sIHRoaXMuX2xWaWV3LCB0aGlzLmNvbnRleHQpO1xuICB9XG5cbiAgYXR0YWNoVG9WaWV3Q29udGFpbmVyUmVmKHZjUmVmOiB2aWV3RW5naW5lX1ZpZXdDb250YWluZXJSZWYpIHtcbiAgICBpZiAodGhpcy5fYXBwUmVmKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoJ1RoaXMgdmlldyBpcyBhbHJlYWR5IGF0dGFjaGVkIGRpcmVjdGx5IHRvIHRoZSBBcHBsaWNhdGlvblJlZiEnKTtcbiAgICB9XG4gICAgdGhpcy5fdmlld0NvbnRhaW5lclJlZiA9IHZjUmVmO1xuICB9XG5cbiAgZGV0YWNoRnJvbUFwcFJlZigpIHtcbiAgICB0aGlzLl9hcHBSZWYgPSBudWxsO1xuICAgIHJlbmRlckRldGFjaFZpZXcodGhpcy5fbFZpZXdbVFZJRVddLCB0aGlzLl9sVmlldyk7XG4gIH1cblxuICBhdHRhY2hUb0FwcFJlZihhcHBSZWY6IEFwcGxpY2F0aW9uUmVmKSB7XG4gICAgaWYgKHRoaXMuX3ZpZXdDb250YWluZXJSZWYpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcignVGhpcyB2aWV3IGlzIGFscmVhZHkgYXR0YWNoZWQgdG8gYSBWaWV3Q29udGFpbmVyIScpO1xuICAgIH1cbiAgICB0aGlzLl9hcHBSZWYgPSBhcHBSZWY7XG4gIH1cbn1cblxuLyoqIEBpbnRlcm5hbCAqL1xuZXhwb3J0IGNsYXNzIFJvb3RWaWV3UmVmPFQ+IGV4dGVuZHMgVmlld1JlZjxUPiB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBfdmlldzogTFZpZXcpIHtcbiAgICBzdXBlcihfdmlldyk7XG4gIH1cblxuICBkZXRlY3RDaGFuZ2VzKCk6IHZvaWQge1xuICAgIGRldGVjdENoYW5nZXNJblJvb3RWaWV3KHRoaXMuX3ZpZXcpO1xuICB9XG5cbiAgY2hlY2tOb0NoYW5nZXMoKTogdm9pZCB7XG4gICAgY2hlY2tOb0NoYW5nZXNJblJvb3RWaWV3KHRoaXMuX3ZpZXcpO1xuICB9XG5cbiAgZ2V0IGNvbnRleHQoKTogVCB7XG4gICAgcmV0dXJuIG51bGwhO1xuICB9XG59XG5cbmZ1bmN0aW9uIGNvbGxlY3ROYXRpdmVOb2RlcyhcbiAgICB0VmlldzogVFZpZXcsIGxWaWV3OiBMVmlldywgdE5vZGU6IFROb2RlfG51bGwsIHJlc3VsdDogYW55W10sXG4gICAgaXNQcm9qZWN0aW9uOiBib29sZWFuID0gZmFsc2UpOiBhbnlbXSB7XG4gIHdoaWxlICh0Tm9kZSAhPT0gbnVsbCkge1xuICAgIG5nRGV2TW9kZSAmJiBhc3NlcnROb2RlT2ZQb3NzaWJsZVR5cGVzKHROb2RlLCBbXG4gICAgICBUTm9kZVR5cGUuRWxlbWVudCwgVE5vZGVUeXBlLkNvbnRhaW5lciwgVE5vZGVUeXBlLlByb2plY3Rpb24sIFROb2RlVHlwZS5FbGVtZW50Q29udGFpbmVyLFxuICAgICAgVE5vZGVUeXBlLkljdUNvbnRhaW5lclxuICAgIF0pO1xuXG4gICAgY29uc3QgbE5vZGUgPSBsVmlld1t0Tm9kZS5pbmRleF07XG4gICAgaWYgKGxOb2RlICE9PSBudWxsKSB7XG4gICAgICByZXN1bHQucHVzaCh1bndyYXBSTm9kZShsTm9kZSkpO1xuICAgIH1cblxuICAgIC8vIEEgZ2l2ZW4gbE5vZGUgY2FuIHJlcHJlc2VudCBlaXRoZXIgYSBuYXRpdmUgbm9kZSBvciBhIExDb250YWluZXIgKHdoZW4gaXQgaXMgYSBob3N0IG9mIGFcbiAgICAvLyBWaWV3Q29udGFpbmVyUmVmKS4gV2hlbiB3ZSBmaW5kIGEgTENvbnRhaW5lciB3ZSBuZWVkIHRvIGRlc2NlbmQgaW50byBpdCB0byBjb2xsZWN0IHJvb3Qgbm9kZXNcbiAgICAvLyBmcm9tIHRoZSB2aWV3cyBpbiB0aGlzIGNvbnRhaW5lci5cbiAgICBpZiAoaXNMQ29udGFpbmVyKGxOb2RlKSkge1xuICAgICAgZm9yIChsZXQgaSA9IENPTlRBSU5FUl9IRUFERVJfT0ZGU0VUOyBpIDwgbE5vZGUubGVuZ3RoOyBpKyspIHtcbiAgICAgICAgY29uc3QgbFZpZXdJbkFDb250YWluZXIgPSBsTm9kZVtpXTtcbiAgICAgICAgY29uc3QgbFZpZXdGaXJzdENoaWxkVE5vZGUgPSBsVmlld0luQUNvbnRhaW5lcltUVklFV10uZmlyc3RDaGlsZDtcbiAgICAgICAgaWYgKGxWaWV3Rmlyc3RDaGlsZFROb2RlICE9PSBudWxsKSB7XG4gICAgICAgICAgY29sbGVjdE5hdGl2ZU5vZGVzKFxuICAgICAgICAgICAgICBsVmlld0luQUNvbnRhaW5lcltUVklFV10sIGxWaWV3SW5BQ29udGFpbmVyLCBsVmlld0ZpcnN0Q2hpbGRUTm9kZSwgcmVzdWx0KTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICAgIGNvbnN0IHROb2RlVHlwZSA9IHROb2RlLnR5cGU7XG4gICAgaWYgKHROb2RlVHlwZSA9PT0gVE5vZGVUeXBlLkVsZW1lbnRDb250YWluZXIgfHwgdE5vZGVUeXBlID09PSBUTm9kZVR5cGUuSWN1Q29udGFpbmVyKSB7XG4gICAgICBjb2xsZWN0TmF0aXZlTm9kZXModFZpZXcsIGxWaWV3LCB0Tm9kZS5jaGlsZCwgcmVzdWx0KTtcbiAgICB9IGVsc2UgaWYgKHROb2RlVHlwZSA9PT0gVE5vZGVUeXBlLlByb2plY3Rpb24pIHtcbiAgICAgIGNvbnN0IGNvbXBvbmVudFZpZXcgPSBsVmlld1tERUNMQVJBVElPTl9DT01QT05FTlRfVklFV107XG4gICAgICBjb25zdCBjb21wb25lbnRIb3N0ID0gY29tcG9uZW50Vmlld1tUX0hPU1RdIGFzIFRFbGVtZW50Tm9kZTtcbiAgICAgIGNvbnN0IHNsb3RJZHggPSB0Tm9kZS5wcm9qZWN0aW9uIGFzIG51bWJlcjtcbiAgICAgIG5nRGV2TW9kZSAmJlxuICAgICAgICAgIGFzc2VydERlZmluZWQoXG4gICAgICAgICAgICAgIGNvbXBvbmVudEhvc3QucHJvamVjdGlvbixcbiAgICAgICAgICAgICAgJ0NvbXBvbmVudHMgd2l0aCBwcm9qZWN0aW9uIG5vZGVzICg8bmctY29udGVudD4pIG11c3QgaGF2ZSBwcm9qZWN0aW9uIHNsb3RzIGRlZmluZWQuJyk7XG5cbiAgICAgIGNvbnN0IG5vZGVzSW5TbG90ID0gY29tcG9uZW50SG9zdC5wcm9qZWN0aW9uIVtzbG90SWR4XTtcbiAgICAgIGlmIChBcnJheS5pc0FycmF5KG5vZGVzSW5TbG90KSkge1xuICAgICAgICByZXN1bHQucHVzaCguLi5ub2Rlc0luU2xvdCk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBjb25zdCBwYXJlbnRWaWV3ID0gZ2V0TFZpZXdQYXJlbnQoY29tcG9uZW50VmlldykhO1xuICAgICAgICBuZ0Rldk1vZGUgJiZcbiAgICAgICAgICAgIGFzc2VydERlZmluZWQoXG4gICAgICAgICAgICAgICAgcGFyZW50VmlldyxcbiAgICAgICAgICAgICAgICAnQ29tcG9uZW50IHZpZXdzIHNob3VsZCBhbHdheXMgaGF2ZSBhIHBhcmVudCB2aWV3IChjb21wb25lbnRcXCdzIGhvc3QgdmlldyknKTtcbiAgICAgICAgY29sbGVjdE5hdGl2ZU5vZGVzKHBhcmVudFZpZXdbVFZJRVddLCBwYXJlbnRWaWV3LCBub2Rlc0luU2xvdCwgcmVzdWx0LCB0cnVlKTtcbiAgICAgIH1cbiAgICB9XG4gICAgdE5vZGUgPSBpc1Byb2plY3Rpb24gPyB0Tm9kZS5wcm9qZWN0aW9uTmV4dCA6IHROb2RlLm5leHQ7XG4gIH1cblxuICByZXR1cm4gcmVzdWx0O1xufVxuIl19