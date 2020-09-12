/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/view/view_attach.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { addToArray, removeFromArray } from '../util/array_utils';
import { Services } from './types';
import { declaredViewContainer, renderNode, visitRootRenderNodes } from './util';
/**
 * @param {?} parentView
 * @param {?} elementData
 * @param {?} viewIndex
 * @param {?} view
 * @return {?}
 */
export function attachEmbeddedView(parentView, elementData, viewIndex, view) {
    /** @type {?} */
    let embeddedViews = (/** @type {?} */ (elementData.viewContainer))._embeddedViews;
    if (viewIndex === null || viewIndex === undefined) {
        viewIndex = embeddedViews.length;
    }
    view.viewContainerParent = parentView;
    addToArray(embeddedViews, (/** @type {?} */ (viewIndex)), view);
    attachProjectedView(elementData, view);
    Services.dirtyParentQueries(view);
    /** @type {?} */
    const prevView = (/** @type {?} */ (viewIndex)) > 0 ? embeddedViews[(/** @type {?} */ (viewIndex)) - 1] : null;
    renderAttachEmbeddedView(elementData, prevView, view);
}
/**
 * @param {?} vcElementData
 * @param {?} view
 * @return {?}
 */
function attachProjectedView(vcElementData, view) {
    /** @type {?} */
    const dvcElementData = declaredViewContainer(view);
    if (!dvcElementData || dvcElementData === vcElementData ||
        view.state & 16 /* IsProjectedView */) {
        return;
    }
    // Note: For performance reasons, we
    // - add a view to template._projectedViews only 1x throughout its lifetime,
    //   and remove it not until the view is destroyed.
    //   (hard, as when a parent view is attached/detached we would need to attach/detach all
    //    nested projected views as well, even across component boundaries).
    // - don't track the insertion order of views in the projected views array
    //   (hard, as when the views of the same template are inserted different view containers)
    view.state |= 16 /* IsProjectedView */;
    /** @type {?} */
    let projectedViews = dvcElementData.template._projectedViews;
    if (!projectedViews) {
        projectedViews = dvcElementData.template._projectedViews = [];
    }
    projectedViews.push(view);
    // Note: we are changing the NodeDef here as we cannot calculate
    // the fact whether a template is used for projection during compilation.
    markNodeAsProjectedTemplate((/** @type {?} */ (view.parent)).def, (/** @type {?} */ (view.parentNodeDef)));
}
/**
 * @param {?} viewDef
 * @param {?} nodeDef
 * @return {?}
 */
function markNodeAsProjectedTemplate(viewDef, nodeDef) {
    if (nodeDef.flags & 4 /* ProjectedTemplate */) {
        return;
    }
    viewDef.nodeFlags |= 4 /* ProjectedTemplate */;
    nodeDef.flags |= 4 /* ProjectedTemplate */;
    /** @type {?} */
    let parentNodeDef = nodeDef.parent;
    while (parentNodeDef) {
        parentNodeDef.childFlags |= 4 /* ProjectedTemplate */;
        parentNodeDef = parentNodeDef.parent;
    }
}
/**
 * @param {?} elementData
 * @param {?=} viewIndex
 * @return {?}
 */
export function detachEmbeddedView(elementData, viewIndex) {
    /** @type {?} */
    const embeddedViews = (/** @type {?} */ (elementData.viewContainer))._embeddedViews;
    if (viewIndex == null || viewIndex >= embeddedViews.length) {
        viewIndex = embeddedViews.length - 1;
    }
    if (viewIndex < 0) {
        return null;
    }
    /** @type {?} */
    const view = embeddedViews[viewIndex];
    view.viewContainerParent = null;
    removeFromArray(embeddedViews, viewIndex);
    // See attachProjectedView for why we don't update projectedViews here.
    Services.dirtyParentQueries(view);
    renderDetachView(view);
    return view;
}
/**
 * @param {?} view
 * @return {?}
 */
export function detachProjectedView(view) {
    if (!(view.state & 16 /* IsProjectedView */)) {
        return;
    }
    /** @type {?} */
    const dvcElementData = declaredViewContainer(view);
    if (dvcElementData) {
        /** @type {?} */
        const projectedViews = dvcElementData.template._projectedViews;
        if (projectedViews) {
            removeFromArray(projectedViews, projectedViews.indexOf(view));
            Services.dirtyParentQueries(view);
        }
    }
}
/**
 * @param {?} elementData
 * @param {?} oldViewIndex
 * @param {?} newViewIndex
 * @return {?}
 */
export function moveEmbeddedView(elementData, oldViewIndex, newViewIndex) {
    /** @type {?} */
    const embeddedViews = (/** @type {?} */ (elementData.viewContainer))._embeddedViews;
    /** @type {?} */
    const view = embeddedViews[oldViewIndex];
    removeFromArray(embeddedViews, oldViewIndex);
    if (newViewIndex == null) {
        newViewIndex = embeddedViews.length;
    }
    addToArray(embeddedViews, newViewIndex, view);
    // Note: Don't need to change projectedViews as the order in there
    // as always invalid...
    Services.dirtyParentQueries(view);
    renderDetachView(view);
    /** @type {?} */
    const prevView = newViewIndex > 0 ? embeddedViews[newViewIndex - 1] : null;
    renderAttachEmbeddedView(elementData, prevView, view);
    return view;
}
/**
 * @param {?} elementData
 * @param {?} prevView
 * @param {?} view
 * @return {?}
 */
function renderAttachEmbeddedView(elementData, prevView, view) {
    /** @type {?} */
    const prevRenderNode = prevView ? renderNode(prevView, (/** @type {?} */ (prevView.def.lastRenderRootNode))) :
        elementData.renderElement;
    /** @type {?} */
    const parentNode = view.renderer.parentNode(prevRenderNode);
    /** @type {?} */
    const nextSibling = view.renderer.nextSibling(prevRenderNode);
    // Note: We can't check if `nextSibling` is present, as on WebWorkers it will always be!
    // However, browsers automatically do `appendChild` when there is no `nextSibling`.
    visitRootRenderNodes(view, 2 /* InsertBefore */, parentNode, nextSibling, undefined);
}
/**
 * @param {?} view
 * @return {?}
 */
export function renderDetachView(view) {
    visitRootRenderNodes(view, 3 /* RemoveChild */, null, null, undefined);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlld19hdHRhY2guanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy92aWV3L3ZpZXdfYXR0YWNoLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQVFBLE9BQU8sRUFBQyxVQUFVLEVBQUUsZUFBZSxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFDaEUsT0FBTyxFQUFrQyxRQUFRLEVBQXNDLE1BQU0sU0FBUyxDQUFDO0FBQ3ZHLE9BQU8sRUFBbUIscUJBQXFCLEVBQUUsVUFBVSxFQUFFLG9CQUFvQixFQUFDLE1BQU0sUUFBUSxDQUFDOzs7Ozs7OztBQUVqRyxNQUFNLFVBQVUsa0JBQWtCLENBQzlCLFVBQW9CLEVBQUUsV0FBd0IsRUFBRSxTQUFvQyxFQUNwRixJQUFjOztRQUNaLGFBQWEsR0FBRyxtQkFBQSxXQUFXLENBQUMsYUFBYSxFQUFFLENBQUMsY0FBYztJQUM5RCxJQUFJLFNBQVMsS0FBSyxJQUFJLElBQUksU0FBUyxLQUFLLFNBQVMsRUFBRTtRQUNqRCxTQUFTLEdBQUcsYUFBYSxDQUFDLE1BQU0sQ0FBQztLQUNsQztJQUNELElBQUksQ0FBQyxtQkFBbUIsR0FBRyxVQUFVLENBQUM7SUFDdEMsVUFBVSxDQUFDLGFBQWEsRUFBRSxtQkFBQSxTQUFTLEVBQUUsRUFBRSxJQUFJLENBQUMsQ0FBQztJQUM3QyxtQkFBbUIsQ0FBQyxXQUFXLEVBQUUsSUFBSSxDQUFDLENBQUM7SUFFdkMsUUFBUSxDQUFDLGtCQUFrQixDQUFDLElBQUksQ0FBQyxDQUFDOztVQUU1QixRQUFRLEdBQUcsbUJBQUEsU0FBUyxFQUFFLEdBQUcsQ0FBQyxDQUFDLENBQUMsQ0FBQyxhQUFhLENBQUMsbUJBQUEsU0FBUyxFQUFFLEdBQUcsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLElBQUk7SUFDeEUsd0JBQXdCLENBQUMsV0FBVyxFQUFFLFFBQVEsRUFBRSxJQUFJLENBQUMsQ0FBQztB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RixvQkFBb0IsQ0FBQyxJQUFJLHdCQUFpQyxVQUFVLEVBQUUsV0FBVyxFQUFFLFNBQVMsQ0FBQyxDQUFDO0FBQ2hHLENBQUM7Ozs7O0FBRUQsTUFBTSxVQUFVLGdCQUFnQixDQUFDLElBQWM7SUFDN0Msb0JBQW9CLENBQUMsSUFBSSx1QkFBZ0MsSUFBSSxFQUFFLElBQUksRUFBRSxTQUFTLENBQUMsQ0FBQztBQUNsRixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge2FkZFRvQXJyYXksIHJlbW92ZUZyb21BcnJheX0gZnJvbSAnLi4vdXRpbC9hcnJheV91dGlscyc7XG5pbXBvcnQge0VsZW1lbnREYXRhLCBOb2RlRGVmLCBOb2RlRmxhZ3MsIFNlcnZpY2VzLCBWaWV3RGF0YSwgVmlld0RlZmluaXRpb24sIFZpZXdTdGF0ZX0gZnJvbSAnLi90eXBlcyc7XG5pbXBvcnQge1JlbmRlck5vZGVBY3Rpb24sIGRlY2xhcmVkVmlld0NvbnRhaW5lciwgcmVuZGVyTm9kZSwgdmlzaXRSb290UmVuZGVyTm9kZXN9IGZyb20gJy4vdXRpbCc7XG5cbmV4cG9ydCBmdW5jdGlvbiBhdHRhY2hFbWJlZGRlZFZpZXcoXG4gICAgcGFyZW50VmlldzogVmlld0RhdGEsIGVsZW1lbnREYXRhOiBFbGVtZW50RGF0YSwgdmlld0luZGV4OiBudW1iZXIgfCB1bmRlZmluZWQgfCBudWxsLFxuICAgIHZpZXc6IFZpZXdEYXRhKSB7XG4gIGxldCBlbWJlZGRlZFZpZXdzID0gZWxlbWVudERhdGEudmlld0NvbnRhaW5lciAhLl9lbWJlZGRlZFZpZXdzO1xuICBpZiAodmlld0luZGV4ID09PSBudWxsIHx8IHZpZXdJbmRleCA9PT0gdW5kZWZpbmVkKSB7XG4gICAgdmlld0luZGV4ID0gZW1iZWRkZWRWaWV3cy5sZW5ndGg7XG4gIH1cbiAgdmlldy52aWV3Q29udGFpbmVyUGFyZW50ID0gcGFyZW50VmlldztcbiAgYWRkVG9BcnJheShlbWJlZGRlZFZpZXdzLCB2aWV3SW5kZXggISwgdmlldyk7XG4gIGF0dGFjaFByb2plY3RlZFZpZXcoZWxlbWVudERhdGEsIHZpZXcpO1xuXG4gIFNlcnZpY2VzLmRpcnR5UGFyZW50UXVlcmllcyh2aWV3KTtcblxuICBjb25zdCBwcmV2VmlldyA9IHZpZXdJbmRleCAhID4gMCA/IGVtYmVkZGVkVmlld3Nbdmlld0luZGV4ICEgLSAxXSA6IG51bGw7XG4gIHJlbmRlckF0dGFjaEVtYmVkZGVkVmlldyhlbGVtZW50RGF0YSwgcHJldlZpZXcsIHZpZXcpO1xufVxuXG5mdW5jdGlvbiBhdHRhY2hQcm9qZWN0ZWRWaWV3KHZjRWxlbWVudERhdGE6IEVsZW1lbnREYXRhLCB2aWV3OiBWaWV3RGF0YSkge1xuICBjb25zdCBkdmNFbGVtZW50RGF0YSA9IGRlY2xhcmVkVmlld0NvbnRhaW5lcih2aWV3KTtcbiAgaWYgKCFkdmNFbGVtZW50RGF0YSB8fCBkdmNFbGVtZW50RGF0YSA9PT0gdmNFbGVtZW50RGF0YSB8fFxuICAgICAgdmlldy5zdGF0ZSAmIFZpZXdTdGF0ZS5Jc1Byb2plY3RlZFZpZXcpIHtcbiAgICByZXR1cm47XG4gIH1cbiAgLy8gTm90ZTogRm9yIHBlcmZvcm1hbmNlIHJlYXNvbnMsIHdlXG4gIC8vIC0gYWRkIGEgdmlldyB0byB0ZW1wbGF0ZS5fcHJvamVjdGVkVmlld3Mgb25seSAxeCB0aHJvdWdob3V0IGl0cyBsaWZldGltZSxcbiAgLy8gICBhbmQgcmVtb3ZlIGl0IG5vdCB1bnRpbCB0aGUgdmlldyBpcyBkZXN0cm95ZWQuXG4gIC8vICAgKGhhcmQsIGFzIHdoZW4gYSBwYXJlbnQgdmlldyBpcyBhdHRhY2hlZC9kZXRhY2hlZCB3ZSB3b3VsZCBuZWVkIHRvIGF0dGFjaC9kZXRhY2ggYWxsXG4gIC8vICAgIG5lc3RlZCBwcm9qZWN0ZWQgdmlld3MgYXMgd2VsbCwgZXZlbiBhY3Jvc3MgY29tcG9uZW50IGJvdW5kYXJpZXMpLlxuICAvLyAtIGRvbid0IHRyYWNrIHRoZSBpbnNlcnRpb24gb3JkZXIgb2Ygdmlld3MgaW4gdGhlIHByb2plY3RlZCB2aWV3cyBhcnJheVxuICAvLyAgIChoYXJkLCBhcyB3aGVuIHRoZSB2aWV3cyBvZiB0aGUgc2FtZSB0ZW1wbGF0ZSBhcmUgaW5zZXJ0ZWQgZGlmZmVyZW50IHZpZXcgY29udGFpbmVycylcbiAgdmlldy5zdGF0ZSB8PSBWaWV3U3RhdGUuSXNQcm9qZWN0ZWRWaWV3O1xuICBsZXQgcHJvamVjdGVkVmlld3MgPSBkdmNFbGVtZW50RGF0YS50ZW1wbGF0ZS5fcHJvamVjdGVkVmlld3M7XG4gIGlmICghcHJvamVjdGVkVmlld3MpIHtcbiAgICBwcm9qZWN0ZWRWaWV3cyA9IGR2Y0VsZW1lbnREYXRhLnRlbXBsYXRlLl9wcm9qZWN0ZWRWaWV3cyA9IFtdO1xuICB9XG4gIHByb2plY3RlZFZpZXdzLnB1c2godmlldyk7XG4gIC8vIE5vdGU6IHdlIGFyZSBjaGFuZ2luZyB0aGUgTm9kZURlZiBoZXJlIGFzIHdlIGNhbm5vdCBjYWxjdWxhdGVcbiAgLy8gdGhlIGZhY3Qgd2hldGhlciBhIHRlbXBsYXRlIGlzIHVzZWQgZm9yIHByb2plY3Rpb24gZHVyaW5nIGNvbXBpbGF0aW9uLlxuICBtYXJrTm9kZUFzUHJvamVjdGVkVGVtcGxhdGUodmlldy5wYXJlbnQgIS5kZWYsIHZpZXcucGFyZW50Tm9kZURlZiAhKTtcbn1cblxuZnVuY3Rpb24gbWFya05vZGVBc1Byb2plY3RlZFRlbXBsYXRlKHZpZXdEZWY6IFZpZXdEZWZpbml0aW9uLCBub2RlRGVmOiBOb2RlRGVmKSB7XG4gIGlmIChub2RlRGVmLmZsYWdzICYgTm9kZUZsYWdzLlByb2plY3RlZFRlbXBsYXRlKSB7XG4gICAgcmV0dXJuO1xuICB9XG4gIHZpZXdEZWYubm9kZUZsYWdzIHw9IE5vZGVGbGFncy5Qcm9qZWN0ZWRUZW1wbGF0ZTtcbiAgbm9kZURlZi5mbGFncyB8PSBOb2RlRmxhZ3MuUHJvamVjdGVkVGVtcGxhdGU7XG4gIGxldCBwYXJlbnROb2RlRGVmID0gbm9kZURlZi5wYXJlbnQ7XG4gIHdoaWxlIChwYXJlbnROb2RlRGVmKSB7XG4gICAgcGFyZW50Tm9kZURlZi5jaGlsZEZsYWdzIHw9IE5vZGVGbGFncy5Qcm9qZWN0ZWRUZW1wbGF0ZTtcbiAgICBwYXJlbnROb2RlRGVmID0gcGFyZW50Tm9kZURlZi5wYXJlbnQ7XG4gIH1cbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGRldGFjaEVtYmVkZGVkVmlldyhlbGVtZW50RGF0YTogRWxlbWVudERhdGEsIHZpZXdJbmRleD86IG51bWJlcik6IFZpZXdEYXRhfG51bGwge1xuICBjb25zdCBlbWJlZGRlZFZpZXdzID0gZWxlbWVudERhdGEudmlld0NvbnRhaW5lciAhLl9lbWJlZGRlZFZpZXdzO1xuICBpZiAodmlld0luZGV4ID09IG51bGwgfHwgdmlld0luZGV4ID49IGVtYmVkZGVkVmlld3MubGVuZ3RoKSB7XG4gICAgdmlld0luZGV4ID0gZW1iZWRkZWRWaWV3cy5sZW5ndGggLSAxO1xuICB9XG4gIGlmICh2aWV3SW5kZXggPCAwKSB7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbiAgY29uc3QgdmlldyA9IGVtYmVkZGVkVmlld3Nbdmlld0luZGV4XTtcbiAgdmlldy52aWV3Q29udGFpbmVyUGFyZW50ID0gbnVsbDtcbiAgcmVtb3ZlRnJvbUFycmF5KGVtYmVkZGVkVmlld3MsIHZpZXdJbmRleCk7XG5cbiAgLy8gU2VlIGF0dGFjaFByb2plY3RlZFZpZXcgZm9yIHdoeSB3ZSBkb24ndCB1cGRhdGUgcHJvamVjdGVkVmlld3MgaGVyZS5cbiAgU2VydmljZXMuZGlydHlQYXJlbnRRdWVyaWVzKHZpZXcpO1xuXG4gIHJlbmRlckRldGFjaFZpZXcodmlldyk7XG5cbiAgcmV0dXJuIHZpZXc7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBkZXRhY2hQcm9qZWN0ZWRWaWV3KHZpZXc6IFZpZXdEYXRhKSB7XG4gIGlmICghKHZpZXcuc3RhdGUgJiBWaWV3U3RhdGUuSXNQcm9qZWN0ZWRWaWV3KSkge1xuICAgIHJldHVybjtcbiAgfVxuICBjb25zdCBkdmNFbGVtZW50RGF0YSA9IGRlY2xhcmVkVmlld0NvbnRhaW5lcih2aWV3KTtcbiAgaWYgKGR2Y0VsZW1lbnREYXRhKSB7XG4gICAgY29uc3QgcHJvamVjdGVkVmlld3MgPSBkdmNFbGVtZW50RGF0YS50ZW1wbGF0ZS5fcHJvamVjdGVkVmlld3M7XG4gICAgaWYgKHByb2plY3RlZFZpZXdzKSB7XG4gICAgICByZW1vdmVGcm9tQXJyYXkocHJvamVjdGVkVmlld3MsIHByb2plY3RlZFZpZXdzLmluZGV4T2YodmlldykpO1xuICAgICAgU2VydmljZXMuZGlydHlQYXJlbnRRdWVyaWVzKHZpZXcpO1xuICAgIH1cbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gbW92ZUVtYmVkZGVkVmlldyhcbiAgICBlbGVtZW50RGF0YTogRWxlbWVudERhdGEsIG9sZFZpZXdJbmRleDogbnVtYmVyLCBuZXdWaWV3SW5kZXg6IG51bWJlcik6IFZpZXdEYXRhIHtcbiAgY29uc3QgZW1iZWRkZWRWaWV3cyA9IGVsZW1lbnREYXRhLnZpZXdDb250YWluZXIgIS5fZW1iZWRkZWRWaWV3cztcbiAgY29uc3QgdmlldyA9IGVtYmVkZGVkVmlld3Nbb2xkVmlld0luZGV4XTtcbiAgcmVtb3ZlRnJvbUFycmF5KGVtYmVkZGVkVmlld3MsIG9sZFZpZXdJbmRleCk7XG4gIGlmIChuZXdWaWV3SW5kZXggPT0gbnVsbCkge1xuICAgIG5ld1ZpZXdJbmRleCA9IGVtYmVkZGVkVmlld3MubGVuZ3RoO1xuICB9XG4gIGFkZFRvQXJyYXkoZW1iZWRkZWRWaWV3cywgbmV3Vmlld0luZGV4LCB2aWV3KTtcblxuICAvLyBOb3RlOiBEb24ndCBuZWVkIHRvIGNoYW5nZSBwcm9qZWN0ZWRWaWV3cyBhcyB0aGUgb3JkZXIgaW4gdGhlcmVcbiAgLy8gYXMgYWx3YXlzIGludmFsaWQuLi5cblxuICBTZXJ2aWNlcy5kaXJ0eVBhcmVudFF1ZXJpZXModmlldyk7XG5cbiAgcmVuZGVyRGV0YWNoVmlldyh2aWV3KTtcbiAgY29uc3QgcHJldlZpZXcgPSBuZXdWaWV3SW5kZXggPiAwID8gZW1iZWRkZWRWaWV3c1tuZXdWaWV3SW5kZXggLSAxXSA6IG51bGw7XG4gIHJlbmRlckF0dGFjaEVtYmVkZGVkVmlldyhlbGVtZW50RGF0YSwgcHJldlZpZXcsIHZpZXcpO1xuXG4gIHJldHVybiB2aWV3O1xufVxuXG5mdW5jdGlvbiByZW5kZXJBdHRhY2hFbWJlZGRlZFZpZXcoXG4gICAgZWxlbWVudERhdGE6IEVsZW1lbnREYXRhLCBwcmV2VmlldzogVmlld0RhdGEgfCBudWxsLCB2aWV3OiBWaWV3RGF0YSkge1xuICBjb25zdCBwcmV2UmVuZGVyTm9kZSA9IHByZXZWaWV3ID8gcmVuZGVyTm9kZShwcmV2VmlldywgcHJldlZpZXcuZGVmLmxhc3RSZW5kZXJSb290Tm9kZSAhKSA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBlbGVtZW50RGF0YS5yZW5kZXJFbGVtZW50O1xuICBjb25zdCBwYXJlbnROb2RlID0gdmlldy5yZW5kZXJlci5wYXJlbnROb2RlKHByZXZSZW5kZXJOb2RlKTtcbiAgY29uc3QgbmV4dFNpYmxpbmcgPSB2aWV3LnJlbmRlcmVyLm5leHRTaWJsaW5nKHByZXZSZW5kZXJOb2RlKTtcbiAgLy8gTm90ZTogV2UgY2FuJ3QgY2hlY2sgaWYgYG5leHRTaWJsaW5nYCBpcyBwcmVzZW50LCBhcyBvbiBXZWJXb3JrZXJzIGl0IHdpbGwgYWx3YXlzIGJlIVxuICAvLyBIb3dldmVyLCBicm93c2VycyBhdXRvbWF0aWNhbGx5IGRvIGBhcHBlbmRDaGlsZGAgd2hlbiB0aGVyZSBpcyBubyBgbmV4dFNpYmxpbmdgLlxuICB2aXNpdFJvb3RSZW5kZXJOb2Rlcyh2aWV3LCBSZW5kZXJOb2RlQWN0aW9uLkluc2VydEJlZm9yZSwgcGFyZW50Tm9kZSwgbmV4dFNpYmxpbmcsIHVuZGVmaW5lZCk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiByZW5kZXJEZXRhY2hWaWV3KHZpZXc6IFZpZXdEYXRhKSB7XG4gIHZpc2l0Um9vdFJlbmRlck5vZGVzKHZpZXcsIFJlbmRlck5vZGVBY3Rpb24uUmVtb3ZlQ2hpbGQsIG51bGwsIG51bGwsIHVuZGVmaW5lZCk7XG59XG4iXX0=