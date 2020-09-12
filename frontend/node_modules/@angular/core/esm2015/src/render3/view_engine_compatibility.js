/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { NgModuleRef as viewEngine_NgModuleRef } from '../linker/ng_module_factory';
import { addToArray, removeFromArray } from '../util/array_utils';
import { assertDefined, assertEqual, assertGreaterThan, assertLessThan } from '../util/assert';
import { assertLContainer } from './assert';
import { getParentInjectorLocation, NodeInjector } from './di';
import { addToViewTree, createLContainer, createLView, renderView } from './instructions/shared';
import { CONTAINER_HEADER_OFFSET, VIEW_REFS } from './interfaces/container';
import { isProceduralRenderer } from './interfaces/renderer';
import { isComponentHost, isLContainer, isLView, isRootView } from './interfaces/type_checks';
import { DECLARATION_COMPONENT_VIEW, DECLARATION_LCONTAINER, PARENT, QUERIES, RENDERER, T_HOST, TVIEW } from './interfaces/view';
import { assertNodeOfPossibleTypes } from './node_assert';
import { addRemoveViewFromContainer, appendChild, destroyLView, detachView, getBeforeNodeForView, insertView, nativeInsertBefore, nativeNextSibling, nativeParentNode } from './node_manipulation';
import { getParentInjectorTNode } from './node_util';
import { getLView, getPreviousOrParentTNode } from './state';
import { getParentInjectorView, hasParentInjector } from './util/injector_utils';
import { getComponentLViewByIndex, getNativeByTNode, unwrapRNode, viewAttachedToContainer } from './util/view_utils';
import { ViewRef } from './view_ref';
/**
 * Creates an ElementRef from the most recent node.
 *
 * @returns The ElementRef instance to use
 */
export function injectElementRef(ElementRefToken) {
    return createElementRef(ElementRefToken, getPreviousOrParentTNode(), getLView());
}
let R3ElementRef;
/**
 * Creates an ElementRef given a node.
 *
 * @param ElementRefToken The ElementRef type
 * @param tNode The node for which you'd like an ElementRef
 * @param view The view to which the node belongs
 * @returns The ElementRef instance to use
 */
export function createElementRef(ElementRefToken, tNode, view) {
    if (!R3ElementRef) {
        R3ElementRef = class ElementRef extends ElementRefToken {
        };
    }
    return new R3ElementRef(getNativeByTNode(tNode, view));
}
let R3TemplateRef;
/**
 * Creates a TemplateRef given a node.
 *
 * @returns The TemplateRef instance to use
 */
export function injectTemplateRef(TemplateRefToken, ElementRefToken) {
    return createTemplateRef(TemplateRefToken, ElementRefToken, getPreviousOrParentTNode(), getLView());
}
/**
 * Creates a TemplateRef and stores it on the injector.
 *
 * @param TemplateRefToken The TemplateRef type
 * @param ElementRefToken The ElementRef type
 * @param hostTNode The node on which a TemplateRef is requested
 * @param hostView The view to which the node belongs
 * @returns The TemplateRef instance or null if we can't create a TemplateRef on a given node type
 */
export function createTemplateRef(TemplateRefToken, ElementRefToken, hostTNode, hostView) {
    if (!R3TemplateRef) {
        R3TemplateRef = class TemplateRef extends TemplateRefToken {
            constructor(_declarationView, _declarationTContainer, elementRef) {
                super();
                this._declarationView = _declarationView;
                this._declarationTContainer = _declarationTContainer;
                this.elementRef = elementRef;
            }
            createEmbeddedView(context) {
                const embeddedTView = this._declarationTContainer.tViews;
                const embeddedLView = createLView(this._declarationView, embeddedTView, context, 16 /* CheckAlways */, null, embeddedTView.node);
                const declarationLContainer = this._declarationView[this._declarationTContainer.index];
                ngDevMode && assertLContainer(declarationLContainer);
                embeddedLView[DECLARATION_LCONTAINER] = declarationLContainer;
                const declarationViewLQueries = this._declarationView[QUERIES];
                if (declarationViewLQueries !== null) {
                    embeddedLView[QUERIES] = declarationViewLQueries.createEmbeddedView(embeddedTView);
                }
                renderView(embeddedTView, embeddedLView, context);
                return new ViewRef(embeddedLView);
            }
        };
    }
    if (hostTNode.type === 0 /* Container */) {
        ngDevMode && assertDefined(hostTNode.tViews, 'TView must be allocated');
        return new R3TemplateRef(hostView, hostTNode, createElementRef(ElementRefToken, hostTNode, hostView));
    }
    else {
        return null;
    }
}
let R3ViewContainerRef;
/**
 * Creates a ViewContainerRef and stores it on the injector. Or, if the ViewContainerRef
 * already exists, retrieves the existing ViewContainerRef.
 *
 * @returns The ViewContainerRef instance to use
 */
export function injectViewContainerRef(ViewContainerRefToken, ElementRefToken) {
    const previousTNode = getPreviousOrParentTNode();
    return createContainerRef(ViewContainerRefToken, ElementRefToken, previousTNode, getLView());
}
/**
 * Creates a ViewContainerRef and stores it on the injector.
 *
 * @param ViewContainerRefToken The ViewContainerRef type
 * @param ElementRefToken The ElementRef type
 * @param hostTNode The node that is requesting a ViewContainerRef
 * @param hostView The view to which the node belongs
 * @returns The ViewContainerRef instance to use
 */
export function createContainerRef(ViewContainerRefToken, ElementRefToken, hostTNode, hostView) {
    if (!R3ViewContainerRef) {
        R3ViewContainerRef = class ViewContainerRef extends ViewContainerRefToken {
            constructor(_lContainer, _hostTNode, _hostView) {
                super();
                this._lContainer = _lContainer;
                this._hostTNode = _hostTNode;
                this._hostView = _hostView;
            }
            get element() {
                return createElementRef(ElementRefToken, this._hostTNode, this._hostView);
            }
            get injector() {
                return new NodeInjector(this._hostTNode, this._hostView);
            }
            /** @deprecated No replacement */
            get parentInjector() {
                const parentLocation = getParentInjectorLocation(this._hostTNode, this._hostView);
                const parentView = getParentInjectorView(parentLocation, this._hostView);
                const parentTNode = getParentInjectorTNode(parentLocation, this._hostView, this._hostTNode);
                return !hasParentInjector(parentLocation) || parentTNode == null ?
                    new NodeInjector(null, this._hostView) :
                    new NodeInjector(parentTNode, parentView);
            }
            clear() {
                while (this.length > 0) {
                    this.remove(this.length - 1);
                }
            }
            get(index) {
                return this._lContainer[VIEW_REFS] !== null && this._lContainer[VIEW_REFS][index] || null;
            }
            get length() {
                return this._lContainer.length - CONTAINER_HEADER_OFFSET;
            }
            createEmbeddedView(templateRef, context, index) {
                const viewRef = templateRef.createEmbeddedView(context || {});
                this.insert(viewRef, index);
                return viewRef;
            }
            createComponent(componentFactory, index, injector, projectableNodes, ngModuleRef) {
                const contextInjector = injector || this.parentInjector;
                if (!ngModuleRef && componentFactory.ngModule == null && contextInjector) {
                    // DO NOT REFACTOR. The code here used to have a `value || undefined` expression
                    // which seems to cause internal google apps to fail. This is documented in the
                    // following internal bug issue: go/b/142967802
                    const result = contextInjector.get(viewEngine_NgModuleRef, null);
                    if (result) {
                        ngModuleRef = result;
                    }
                }
                const componentRef = componentFactory.create(contextInjector, projectableNodes, undefined, ngModuleRef);
                this.insert(componentRef.hostView, index);
                return componentRef;
            }
            insert(viewRef, index) {
                const lView = viewRef._lView;
                const tView = lView[TVIEW];
                if (viewRef.destroyed) {
                    throw new Error('Cannot insert a destroyed View in a ViewContainer!');
                }
                this.allocateContainerIfNeeded();
                if (viewAttachedToContainer(lView)) {
                    // If view is already attached, detach it first so we clean up references appropriately.
                    const prevIdx = this.indexOf(viewRef);
                    // A view might be attached either to this or a different container. The `prevIdx` for
                    // those cases will be:
                    // equal to -1 for views attached to this ViewContainerRef
                    // >= 0 for views attached to a different ViewContainerRef
                    if (prevIdx !== -1) {
                        this.detach(prevIdx);
                    }
                    else {
                        const prevLContainer = lView[PARENT];
                        ngDevMode &&
                            assertEqual(isLContainer(prevLContainer), true, 'An attached view should have its PARENT point to a container.');
                        // We need to re-create a R3ViewContainerRef instance since those are not stored on
                        // LView (nor anywhere else).
                        const prevVCRef = new R3ViewContainerRef(prevLContainer, prevLContainer[T_HOST], prevLContainer[PARENT]);
                        prevVCRef.detach(prevVCRef.indexOf(viewRef));
                    }
                }
                const adjustedIdx = this._adjustIndex(index);
                insertView(tView, lView, this._lContainer, adjustedIdx);
                const beforeNode = getBeforeNodeForView(adjustedIdx, this._lContainer);
                addRemoveViewFromContainer(tView, lView, true, beforeNode);
                viewRef.attachToViewContainerRef(this);
                addToArray(this._lContainer[VIEW_REFS], adjustedIdx, viewRef);
                return viewRef;
            }
            move(viewRef, newIndex) {
                if (viewRef.destroyed) {
                    throw new Error('Cannot move a destroyed View in a ViewContainer!');
                }
                return this.insert(viewRef, newIndex);
            }
            indexOf(viewRef) {
                const viewRefsArr = this._lContainer[VIEW_REFS];
                return viewRefsArr !== null ? viewRefsArr.indexOf(viewRef) : -1;
            }
            remove(index) {
                this.allocateContainerIfNeeded();
                const adjustedIdx = this._adjustIndex(index, -1);
                const detachedView = detachView(this._lContainer, adjustedIdx);
                if (detachedView) {
                    // Before destroying the view, remove it from the container's array of `ViewRef`s.
                    // This ensures the view container length is updated before calling
                    // `destroyLView`, which could recursively call view container methods that
                    // rely on an accurate container length.
                    // (e.g. a method on this view container being called by a child directive's OnDestroy
                    // lifecycle hook)
                    removeFromArray(this._lContainer[VIEW_REFS], adjustedIdx);
                    destroyLView(detachedView[TVIEW], detachedView);
                }
            }
            detach(index) {
                this.allocateContainerIfNeeded();
                const adjustedIdx = this._adjustIndex(index, -1);
                const view = detachView(this._lContainer, adjustedIdx);
                const wasDetached = view && removeFromArray(this._lContainer[VIEW_REFS], adjustedIdx) != null;
                return wasDetached ? new ViewRef(view) : null;
            }
            _adjustIndex(index, shift = 0) {
                if (index == null) {
                    return this.length + shift;
                }
                if (ngDevMode) {
                    assertGreaterThan(index, -1, `ViewRef index must be positive, got ${index}`);
                    // +1 because it's legal to insert at the end.
                    assertLessThan(index, this.length + 1 + shift, 'index');
                }
                return index;
            }
            allocateContainerIfNeeded() {
                if (this._lContainer[VIEW_REFS] === null) {
                    this._lContainer[VIEW_REFS] = [];
                }
            }
        };
    }
    ngDevMode &&
        assertNodeOfPossibleTypes(hostTNode, [0 /* Container */, 3 /* Element */, 4 /* ElementContainer */]);
    let lContainer;
    const slotValue = hostView[hostTNode.index];
    if (isLContainer(slotValue)) {
        // If the host is a container, we don't need to create a new LContainer
        lContainer = slotValue;
    }
    else {
        let commentNode;
        // If the host is an element container, the native host element is guaranteed to be a
        // comment and we can reuse that comment as anchor element for the new LContainer.
        // The comment node in question is already part of the DOM structure so we don't need to append
        // it again.
        if (hostTNode.type === 4 /* ElementContainer */) {
            commentNode = unwrapRNode(slotValue);
        }
        else {
            ngDevMode && ngDevMode.rendererCreateComment++;
            commentNode = hostView[RENDERER].createComment(ngDevMode ? 'container' : '');
            // A `ViewContainerRef` can be injected by the root (topmost / bootstrapped) component. In
            // this case we can't use TView / TNode data structures to insert container's marker node
            // (both a parent of a comment node and the comment node itself are not part of any view). In
            // this specific case we use low-level DOM manipulation to insert container's marker (comment)
            // node.
            if (isRootView(hostView)) {
                const renderer = hostView[RENDERER];
                const hostNative = getNativeByTNode(hostTNode, hostView);
                const parentOfHostNative = nativeParentNode(renderer, hostNative);
                nativeInsertBefore(renderer, parentOfHostNative, commentNode, nativeNextSibling(renderer, hostNative));
            }
            else {
                appendChild(hostView[TVIEW], hostView, commentNode, hostTNode);
            }
        }
        hostView[hostTNode.index] = lContainer =
            createLContainer(slotValue, hostView, commentNode, hostTNode);
        addToViewTree(hostView, lContainer);
    }
    return new R3ViewContainerRef(lContainer, hostTNode, hostView);
}
/** Returns a ChangeDetectorRef (a.k.a. a ViewRef) */
export function injectChangeDetectorRef(isPipe = false) {
    return createViewRef(getPreviousOrParentTNode(), getLView(), isPipe);
}
/**
 * Creates a ViewRef and stores it on the injector as ChangeDetectorRef (public alias).
 *
 * @param tNode The node that is requesting a ChangeDetectorRef
 * @param lView The view to which the node belongs
 * @param isPipe Whether the view is being injected into a pipe.
 * @returns The ChangeDetectorRef to use
 */
function createViewRef(tNode, lView, isPipe) {
    // `isComponentView` will be true for Component and Directives (but not for Pipes).
    // See https://github.com/angular/angular/pull/33072 for proper fix
    const isComponentView = !isPipe && isComponentHost(tNode);
    if (isComponentView) {
        // The LView represents the location where the component is declared.
        // Instead we want the LView for the component View and so we need to look it up.
        const componentView = getComponentLViewByIndex(tNode.index, lView); // look down
        return new ViewRef(componentView, componentView);
    }
    else if (tNode.type === 3 /* Element */ || tNode.type === 0 /* Container */ ||
        tNode.type === 4 /* ElementContainer */ || tNode.type === 5 /* IcuContainer */) {
        // The LView represents the location where the injection is requested from.
        // We need to locate the containing LView (in case where the `lView` is an embedded view)
        const hostComponentView = lView[DECLARATION_COMPONENT_VIEW]; // look up
        return new ViewRef(hostComponentView, lView);
    }
    return null;
}
/** Returns a Renderer2 (or throws when application was bootstrapped with Renderer3) */
function getOrCreateRenderer2(view) {
    const renderer = view[RENDERER];
    if (isProceduralRenderer(renderer)) {
        return renderer;
    }
    else {
        throw new Error('Cannot inject Renderer2 when the application uses Renderer3!');
    }
}
/** Injects a Renderer2 for the current component. */
export function injectRenderer2() {
    // We need the Renderer to be based on the component that it's being injected into, however since
    // DI happens before we've entered its view, `getLView` will return the parent view instead.
    const lView = getLView();
    const tNode = getPreviousOrParentTNode();
    const nodeAtIndex = getComponentLViewByIndex(tNode.index, lView);
    return getOrCreateRenderer2(isLView(nodeAtIndex) ? nodeAtIndex : lView);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlld19lbmdpbmVfY29tcGF0aWJpbGl0eS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3JlbmRlcjMvdmlld19lbmdpbmVfY29tcGF0aWJpbGl0eS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFNSCxPQUFPLEVBQUMsV0FBVyxJQUFJLHNCQUFzQixFQUFDLE1BQU0sNkJBQTZCLENBQUM7QUFLbEYsT0FBTyxFQUFDLFVBQVUsRUFBRSxlQUFlLEVBQUMsTUFBTSxxQkFBcUIsQ0FBQztBQUNoRSxPQUFPLEVBQUMsYUFBYSxFQUFFLFdBQVcsRUFBRSxpQkFBaUIsRUFBRSxjQUFjLEVBQUMsTUFBTSxnQkFBZ0IsQ0FBQztBQUU3RixPQUFPLEVBQUMsZ0JBQWdCLEVBQUMsTUFBTSxVQUFVLENBQUM7QUFDMUMsT0FBTyxFQUFDLHlCQUF5QixFQUFFLFlBQVksRUFBQyxNQUFNLE1BQU0sQ0FBQztBQUM3RCxPQUFPLEVBQUMsYUFBYSxFQUFFLGdCQUFnQixFQUFFLFdBQVcsRUFBRSxVQUFVLEVBQUMsTUFBTSx1QkFBdUIsQ0FBQztBQUMvRixPQUFPLEVBQUMsdUJBQXVCLEVBQWMsU0FBUyxFQUFDLE1BQU0sd0JBQXdCLENBQUM7QUFFdEYsT0FBTyxFQUFDLG9CQUFvQixFQUFxQixNQUFNLHVCQUF1QixDQUFDO0FBQy9FLE9BQU8sRUFBQyxlQUFlLEVBQUUsWUFBWSxFQUFFLE9BQU8sRUFBRSxVQUFVLEVBQUMsTUFBTSwwQkFBMEIsQ0FBQztBQUM1RixPQUFPLEVBQUMsMEJBQTBCLEVBQUUsc0JBQXNCLEVBQXFCLE1BQU0sRUFBRSxPQUFPLEVBQUUsUUFBUSxFQUFFLE1BQU0sRUFBRSxLQUFLLEVBQVEsTUFBTSxtQkFBbUIsQ0FBQztBQUN6SixPQUFPLEVBQUMseUJBQXlCLEVBQUMsTUFBTSxlQUFlLENBQUM7QUFDeEQsT0FBTyxFQUFDLDBCQUEwQixFQUFFLFdBQVcsRUFBRSxZQUFZLEVBQUUsVUFBVSxFQUFFLG9CQUFvQixFQUFFLFVBQVUsRUFBRSxrQkFBa0IsRUFBRSxpQkFBaUIsRUFBRSxnQkFBZ0IsRUFBQyxNQUFNLHFCQUFxQixDQUFDO0FBQ2pNLE9BQU8sRUFBQyxzQkFBc0IsRUFBQyxNQUFNLGFBQWEsQ0FBQztBQUNuRCxPQUFPLEVBQUMsUUFBUSxFQUFFLHdCQUF3QixFQUFDLE1BQU0sU0FBUyxDQUFDO0FBQzNELE9BQU8sRUFBQyxxQkFBcUIsRUFBRSxpQkFBaUIsRUFBQyxNQUFNLHVCQUF1QixDQUFDO0FBQy9FLE9BQU8sRUFBQyx3QkFBd0IsRUFBRSxnQkFBZ0IsRUFBRSxXQUFXLEVBQUUsdUJBQXVCLEVBQUMsTUFBTSxtQkFBbUIsQ0FBQztBQUNuSCxPQUFPLEVBQUMsT0FBTyxFQUFDLE1BQU0sWUFBWSxDQUFDO0FBSW5DOzs7O0dBSUc7QUFDSCxNQUFNLFVBQVUsZ0JBQWdCLENBQUMsZUFBNkM7SUFFNUUsT0FBTyxnQkFBZ0IsQ0FBQyxlQUFlLEVBQUUsd0JBQXdCLEVBQUUsRUFBRSxRQUFRLEVBQUUsQ0FBQyxDQUFDO0FBQ25GLENBQUM7QUFFRCxJQUFJLFlBQXNFLENBQUM7QUFFM0U7Ozs7Ozs7R0FPRztBQUNILE1BQU0sVUFBVSxnQkFBZ0IsQ0FDNUIsZUFBNkMsRUFBRSxLQUFZLEVBQzNELElBQVc7SUFDYixJQUFJLENBQUMsWUFBWSxFQUFFO1FBQ2pCLFlBQVksR0FBRyxNQUFNLFVBQVcsU0FBUSxlQUFlO1NBQUcsQ0FBQztLQUM1RDtJQUNELE9BQU8sSUFBSSxZQUFZLENBQUMsZ0JBQWdCLENBQUMsS0FBSyxFQUFFLElBQUksQ0FBYSxDQUFDLENBQUM7QUFDckUsQ0FBQztBQUVELElBQUksYUFHSCxDQUFDO0FBRUY7Ozs7R0FJRztBQUNILE1BQU0sVUFBVSxpQkFBaUIsQ0FDN0IsZ0JBQStDLEVBQy9DLGVBQTZDO0lBQy9DLE9BQU8saUJBQWlCLENBQ3BCLGdCQUFnQixFQUFFLGVBQWUsRUFBRSx3QkFBd0IsRUFBRSxFQUFFLFFBQVEsRUFBRSxDQUFDLENBQUM7QUFDakYsQ0FBQztBQUVEOzs7Ozs7OztHQVFHO0FBQ0gsTUFBTSxVQUFVLGlCQUFpQixDQUM3QixnQkFBK0MsRUFBRSxlQUE2QyxFQUM5RixTQUFnQixFQUFFLFFBQWU7SUFDbkMsSUFBSSxDQUFDLGFBQWEsRUFBRTtRQUNsQixhQUFhLEdBQUcsTUFBTSxXQUFlLFNBQVEsZ0JBQW1CO1lBQzlELFlBQ1ksZ0JBQXVCLEVBQVUsc0JBQXNDLEVBQ3RFLFVBQWlDO2dCQUM1QyxLQUFLLEVBQUUsQ0FBQztnQkFGRSxxQkFBZ0IsR0FBaEIsZ0JBQWdCLENBQU87Z0JBQVUsMkJBQXNCLEdBQXRCLHNCQUFzQixDQUFnQjtnQkFDdEUsZUFBVSxHQUFWLFVBQVUsQ0FBdUI7WUFFOUMsQ0FBQztZQUVELGtCQUFrQixDQUFDLE9BQVU7Z0JBQzNCLE1BQU0sYUFBYSxHQUFHLElBQUksQ0FBQyxzQkFBc0IsQ0FBQyxNQUFlLENBQUM7Z0JBQ2xFLE1BQU0sYUFBYSxHQUFHLFdBQVcsQ0FDN0IsSUFBSSxDQUFDLGdCQUFnQixFQUFFLGFBQWEsRUFBRSxPQUFPLHdCQUEwQixJQUFJLEVBQzNFLGFBQWEsQ0FBQyxJQUFJLENBQUMsQ0FBQztnQkFFeEIsTUFBTSxxQkFBcUIsR0FBRyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsSUFBSSxDQUFDLHNCQUFzQixDQUFDLEtBQUssQ0FBQyxDQUFDO2dCQUN2RixTQUFTLElBQUksZ0JBQWdCLENBQUMscUJBQXFCLENBQUMsQ0FBQztnQkFDckQsYUFBYSxDQUFDLHNCQUFzQixDQUFDLEdBQUcscUJBQXFCLENBQUM7Z0JBRTlELE1BQU0sdUJBQXVCLEdBQUcsSUFBSSxDQUFDLGdCQUFnQixDQUFDLE9BQU8sQ0FBQyxDQUFDO2dCQUMvRCxJQUFJLHVCQUF1QixLQUFLLElBQUksRUFBRTtvQkFDcEMsYUFBYSxDQUFDLE9BQU8sQ0FBQyxHQUFHLHVCQUF1QixDQUFDLGtCQUFrQixDQUFDLGFBQWEsQ0FBQyxDQUFDO2lCQUNwRjtnQkFFRCxVQUFVLENBQUMsYUFBYSxFQUFFLGFBQWEsRUFBRSxPQUFPLENBQUMsQ0FBQztnQkFFbEQsT0FBTyxJQUFJLE9BQU8sQ0FBSSxhQUFhLENBQUMsQ0FBQztZQUN2QyxDQUFDO1NBQ0YsQ0FBQztLQUNIO0lBRUQsSUFBSSxTQUFTLENBQUMsSUFBSSxzQkFBd0IsRUFBRTtRQUMxQyxTQUFTLElBQUksYUFBYSxDQUFDLFNBQVMsQ0FBQyxNQUFNLEVBQUUseUJBQXlCLENBQUMsQ0FBQztRQUN4RSxPQUFPLElBQUksYUFBYSxDQUNwQixRQUFRLEVBQUUsU0FBMkIsRUFDckMsZ0JBQWdCLENBQUMsZUFBZSxFQUFFLFNBQVMsRUFBRSxRQUFRLENBQUMsQ0FBQyxDQUFDO0tBQzdEO1NBQU07UUFDTCxPQUFPLElBQUksQ0FBQztLQUNiO0FBQ0gsQ0FBQztBQUVELElBQUksa0JBSUgsQ0FBQztBQUVGOzs7OztHQUtHO0FBQ0gsTUFBTSxVQUFVLHNCQUFzQixDQUNsQyxxQkFBeUQsRUFDekQsZUFBNkM7SUFDL0MsTUFBTSxhQUFhLEdBQ2Ysd0JBQXdCLEVBQTJELENBQUM7SUFDeEYsT0FBTyxrQkFBa0IsQ0FBQyxxQkFBcUIsRUFBRSxlQUFlLEVBQUUsYUFBYSxFQUFFLFFBQVEsRUFBRSxDQUFDLENBQUM7QUFDL0YsQ0FBQztBQUVEOzs7Ozs7OztHQVFHO0FBQ0gsTUFBTSxVQUFVLGtCQUFrQixDQUM5QixxQkFBeUQsRUFDekQsZUFBNkMsRUFDN0MsU0FBNEQsRUFDNUQsUUFBZTtJQUNqQixJQUFJLENBQUMsa0JBQWtCLEVBQUU7UUFDdkIsa0JBQWtCLEdBQUcsTUFBTSxnQkFBaUIsU0FBUSxxQkFBcUI7WUFDdkUsWUFDWSxXQUF1QixFQUN2QixVQUE2RCxFQUM3RCxTQUFnQjtnQkFDMUIsS0FBSyxFQUFFLENBQUM7Z0JBSEUsZ0JBQVcsR0FBWCxXQUFXLENBQVk7Z0JBQ3ZCLGVBQVUsR0FBVixVQUFVLENBQW1EO2dCQUM3RCxjQUFTLEdBQVQsU0FBUyxDQUFPO1lBRTVCLENBQUM7WUFFRCxJQUFJLE9BQU87Z0JBQ1QsT0FBTyxnQkFBZ0IsQ0FBQyxlQUFlLEVBQUUsSUFBSSxDQUFDLFVBQVUsRUFBRSxJQUFJLENBQUMsU0FBUyxDQUFDLENBQUM7WUFDNUUsQ0FBQztZQUVELElBQUksUUFBUTtnQkFDVixPQUFPLElBQUksWUFBWSxDQUFDLElBQUksQ0FBQyxVQUFVLEVBQUUsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDO1lBQzNELENBQUM7WUFFRCxpQ0FBaUM7WUFDakMsSUFBSSxjQUFjO2dCQUNoQixNQUFNLGNBQWMsR0FBRyx5QkFBeUIsQ0FBQyxJQUFJLENBQUMsVUFBVSxFQUFFLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztnQkFDbEYsTUFBTSxVQUFVLEdBQUcscUJBQXFCLENBQUMsY0FBYyxFQUFFLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztnQkFDekUsTUFBTSxXQUFXLEdBQUcsc0JBQXNCLENBQUMsY0FBYyxFQUFFLElBQUksQ0FBQyxTQUFTLEVBQUUsSUFBSSxDQUFDLFVBQVUsQ0FBQyxDQUFDO2dCQUU1RixPQUFPLENBQUMsaUJBQWlCLENBQUMsY0FBYyxDQUFDLElBQUksV0FBVyxJQUFJLElBQUksQ0FBQyxDQUFDO29CQUM5RCxJQUFJLFlBQVksQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUM7b0JBQ3hDLElBQUksWUFBWSxDQUFDLFdBQVcsRUFBRSxVQUFVLENBQUMsQ0FBQztZQUNoRCxDQUFDO1lBRUQsS0FBSztnQkFDSCxPQUFPLElBQUksQ0FBQyxNQUFNLEdBQUcsQ0FBQyxFQUFFO29CQUN0QixJQUFJLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxNQUFNLEdBQUcsQ0FBQyxDQUFDLENBQUM7aUJBQzlCO1lBQ0gsQ0FBQztZQUVELEdBQUcsQ0FBQyxLQUFhO2dCQUNmLE9BQU8sSUFBSSxDQUFDLFdBQVcsQ0FBQyxTQUFTLENBQUMsS0FBSyxJQUFJLElBQUksSUFBSSxDQUFDLFdBQVcsQ0FBQyxTQUFTLENBQUUsQ0FBQyxLQUFLLENBQUMsSUFBSSxJQUFJLENBQUM7WUFDN0YsQ0FBQztZQUVELElBQUksTUFBTTtnQkFDUixPQUFPLElBQUksQ0FBQyxXQUFXLENBQUMsTUFBTSxHQUFHLHVCQUF1QixDQUFDO1lBQzNELENBQUM7WUFFRCxrQkFBa0IsQ0FBSSxXQUFzQyxFQUFFLE9BQVcsRUFBRSxLQUFjO2dCQUV2RixNQUFNLE9BQU8sR0FBRyxXQUFXLENBQUMsa0JBQWtCLENBQUMsT0FBTyxJQUFTLEVBQUUsQ0FBQyxDQUFDO2dCQUNuRSxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sRUFBRSxLQUFLLENBQUMsQ0FBQztnQkFDNUIsT0FBTyxPQUFPLENBQUM7WUFDakIsQ0FBQztZQUVELGVBQWUsQ0FDWCxnQkFBZ0QsRUFBRSxLQUF3QixFQUMxRSxRQUE2QixFQUFFLGdCQUFvQyxFQUNuRSxXQUFtRDtnQkFDckQsTUFBTSxlQUFlLEdBQUcsUUFBUSxJQUFJLElBQUksQ0FBQyxjQUFjLENBQUM7Z0JBQ3hELElBQUksQ0FBQyxXQUFXLElBQUssZ0JBQXdCLENBQUMsUUFBUSxJQUFJLElBQUksSUFBSSxlQUFlLEVBQUU7b0JBQ2pGLGdGQUFnRjtvQkFDaEYsK0VBQStFO29CQUMvRSwrQ0FBK0M7b0JBQy9DLE1BQU0sTUFBTSxHQUFHLGVBQWUsQ0FBQyxHQUFHLENBQUMsc0JBQXNCLEVBQUUsSUFBSSxDQUFDLENBQUM7b0JBQ2pFLElBQUksTUFBTSxFQUFFO3dCQUNWLFdBQVcsR0FBRyxNQUFNLENBQUM7cUJBQ3RCO2lCQUNGO2dCQUVELE1BQU0sWUFBWSxHQUNkLGdCQUFnQixDQUFDLE1BQU0sQ0FBQyxlQUFlLEVBQUUsZ0JBQWdCLEVBQUUsU0FBUyxFQUFFLFdBQVcsQ0FBQyxDQUFDO2dCQUN2RixJQUFJLENBQUMsTUFBTSxDQUFDLFlBQVksQ0FBQyxRQUFRLEVBQUUsS0FBSyxDQUFDLENBQUM7Z0JBQzFDLE9BQU8sWUFBWSxDQUFDO1lBQ3RCLENBQUM7WUFFRCxNQUFNLENBQUMsT0FBMkIsRUFBRSxLQUFjO2dCQUNoRCxNQUFNLEtBQUssR0FBSSxPQUF3QixDQUFDLE1BQU8sQ0FBQztnQkFDaEQsTUFBTSxLQUFLLEdBQUcsS0FBSyxDQUFDLEtBQUssQ0FBQyxDQUFDO2dCQUUzQixJQUFJLE9BQU8sQ0FBQyxTQUFTLEVBQUU7b0JBQ3JCLE1BQU0sSUFBSSxLQUFLLENBQUMsb0RBQW9ELENBQUMsQ0FBQztpQkFDdkU7Z0JBRUQsSUFBSSxDQUFDLHlCQUF5QixFQUFFLENBQUM7Z0JBRWpDLElBQUksdUJBQXVCLENBQUMsS0FBSyxDQUFDLEVBQUU7b0JBQ2xDLHdGQUF3RjtvQkFFeEYsTUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsQ0FBQztvQkFFdEMsc0ZBQXNGO29CQUN0Rix1QkFBdUI7b0JBQ3ZCLDBEQUEwRDtvQkFDMUQsMERBQTBEO29CQUMxRCxJQUFJLE9BQU8sS0FBSyxDQUFDLENBQUMsRUFBRTt3QkFDbEIsSUFBSSxDQUFDLE1BQU0sQ0FBQyxPQUFPLENBQUMsQ0FBQztxQkFDdEI7eUJBQU07d0JBQ0wsTUFBTSxjQUFjLEdBQUcsS0FBSyxDQUFDLE1BQU0sQ0FBZSxDQUFDO3dCQUNuRCxTQUFTOzRCQUNMLFdBQVcsQ0FDUCxZQUFZLENBQUMsY0FBYyxDQUFDLEVBQUUsSUFBSSxFQUNsQywrREFBK0QsQ0FBQyxDQUFDO3dCQUd6RSxtRkFBbUY7d0JBQ25GLDZCQUE2Qjt3QkFDN0IsTUFBTSxTQUFTLEdBQUcsSUFBSSxrQkFBa0IsQ0FDcEMsY0FBYyxFQUFFLGNBQWMsQ0FBQyxNQUFNLENBQXVCLEVBQzVELGNBQWMsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDO3dCQUU1QixTQUFTLENBQUMsTUFBTSxDQUFDLFNBQVMsQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQztxQkFDOUM7aUJBQ0Y7Z0JBRUQsTUFBTSxXQUFXLEdBQUcsSUFBSSxDQUFDLFlBQVksQ0FBQyxLQUFLLENBQUMsQ0FBQztnQkFDN0MsVUFBVSxDQUFDLEtBQUssRUFBRSxLQUFLLEVBQUUsSUFBSSxDQUFDLFdBQVcsRUFBRSxXQUFXLENBQUMsQ0FBQztnQkFFeEQsTUFBTSxVQUFVLEdBQUcsb0JBQW9CLENBQUMsV0FBVyxFQUFFLElBQUksQ0FBQyxXQUFXLENBQUMsQ0FBQztnQkFDdkUsMEJBQTBCLENBQUMsS0FBSyxFQUFFLEtBQUssRUFBRSxJQUFJLEVBQUUsVUFBVSxDQUFDLENBQUM7Z0JBRTFELE9BQXdCLENBQUMsd0JBQXdCLENBQUMsSUFBSSxDQUFDLENBQUM7Z0JBQ3pELFVBQVUsQ0FBQyxJQUFJLENBQUMsV0FBVyxDQUFDLFNBQVMsQ0FBRSxFQUFFLFdBQVcsRUFBRSxPQUFPLENBQUMsQ0FBQztnQkFFL0QsT0FBTyxPQUFPLENBQUM7WUFDakIsQ0FBQztZQUVELElBQUksQ0FBQyxPQUEyQixFQUFFLFFBQWdCO2dCQUNoRCxJQUFJLE9BQU8sQ0FBQyxTQUFTLEVBQUU7b0JBQ3JCLE1BQU0sSUFBSSxLQUFLLENBQUMsa0RBQWtELENBQUMsQ0FBQztpQkFDckU7Z0JBQ0QsT0FBTyxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sRUFBRSxRQUFRLENBQUMsQ0FBQztZQUN4QyxDQUFDO1lBRUQsT0FBTyxDQUFDLE9BQTJCO2dCQUNqQyxNQUFNLFdBQVcsR0FBRyxJQUFJLENBQUMsV0FBVyxDQUFDLFNBQVMsQ0FBQyxDQUFDO2dCQUNoRCxPQUFPLFdBQVcsS0FBSyxJQUFJLENBQUMsQ0FBQyxDQUFDLFdBQVcsQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1lBQ2xFLENBQUM7WUFFRCxNQUFNLENBQUMsS0FBYztnQkFDbkIsSUFBSSxDQUFDLHlCQUF5QixFQUFFLENBQUM7Z0JBQ2pDLE1BQU0sV0FBVyxHQUFHLElBQUksQ0FBQyxZQUFZLENBQUMsS0FBSyxFQUFFLENBQUMsQ0FBQyxDQUFDLENBQUM7Z0JBQ2pELE1BQU0sWUFBWSxHQUFHLFVBQVUsQ0FBQyxJQUFJLENBQUMsV0FBVyxFQUFFLFdBQVcsQ0FBQyxDQUFDO2dCQUUvRCxJQUFJLFlBQVksRUFBRTtvQkFDaEIsa0ZBQWtGO29CQUNsRixtRUFBbUU7b0JBQ25FLDJFQUEyRTtvQkFDM0Usd0NBQXdDO29CQUN4QyxzRkFBc0Y7b0JBQ3RGLGtCQUFrQjtvQkFDbEIsZUFBZSxDQUFDLElBQUksQ0FBQyxXQUFXLENBQUMsU0FBUyxDQUFFLEVBQUUsV0FBVyxDQUFDLENBQUM7b0JBQzNELFlBQVksQ0FBQyxZQUFZLENBQUMsS0FBSyxDQUFDLEVBQUUsWUFBWSxDQUFDLENBQUM7aUJBQ2pEO1lBQ0gsQ0FBQztZQUVELE1BQU0sQ0FBQyxLQUFjO2dCQUNuQixJQUFJLENBQUMseUJBQXlCLEVBQUUsQ0FBQztnQkFDakMsTUFBTSxXQUFXLEdBQUcsSUFBSSxDQUFDLFlBQVksQ0FBQyxLQUFLLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQztnQkFDakQsTUFBTSxJQUFJLEdBQUcsVUFBVSxDQUFDLElBQUksQ0FBQyxXQUFXLEVBQUUsV0FBVyxDQUFDLENBQUM7Z0JBRXZELE1BQU0sV0FBVyxHQUNiLElBQUksSUFBSSxlQUFlLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxTQUFTLENBQUUsRUFBRSxXQUFXLENBQUMsSUFBSSxJQUFJLENBQUM7Z0JBQy9FLE9BQU8sV0FBVyxDQUFDLENBQUMsQ0FBQyxJQUFJLE9BQU8sQ0FBQyxJQUFLLENBQUMsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDO1lBQ2pELENBQUM7WUFFTyxZQUFZLENBQUMsS0FBYyxFQUFFLFFBQWdCLENBQUM7Z0JBQ3BELElBQUksS0FBSyxJQUFJLElBQUksRUFBRTtvQkFDakIsT0FBTyxJQUFJLENBQUMsTUFBTSxHQUFHLEtBQUssQ0FBQztpQkFDNUI7Z0JBQ0QsSUFBSSxTQUFTLEVBQUU7b0JBQ2IsaUJBQWlCLENBQUMsS0FBSyxFQUFFLENBQUMsQ0FBQyxFQUFFLHVDQUF1QyxLQUFLLEVBQUUsQ0FBQyxDQUFDO29CQUM3RSw4Q0FBOEM7b0JBQzlDLGNBQWMsQ0FBQyxLQUFLLEVBQUUsSUFBSSxDQUFDLE1BQU0sR0FBRyxDQUFDLEdBQUcsS0FBSyxFQUFFLE9BQU8sQ0FBQyxDQUFDO2lCQUN6RDtnQkFDRCxPQUFPLEtBQUssQ0FBQztZQUNmLENBQUM7WUFFTyx5QkFBeUI7Z0JBQy9CLElBQUksSUFBSSxDQUFDLFdBQVcsQ0FBQyxTQUFTLENBQUMsS0FBSyxJQUFJLEVBQUU7b0JBQ3hDLElBQUksQ0FBQyxXQUFXLENBQUMsU0FBUyxDQUFDLEdBQUcsRUFBRSxDQUFDO2lCQUNsQztZQUNILENBQUM7U0FDRixDQUFDO0tBQ0g7SUFFRCxTQUFTO1FBQ0wseUJBQXlCLENBQ3JCLFNBQVMsRUFBRSw4REFBb0UsQ0FBQyxDQUFDO0lBRXpGLElBQUksVUFBc0IsQ0FBQztJQUMzQixNQUFNLFNBQVMsR0FBRyxRQUFRLENBQUMsU0FBUyxDQUFDLEtBQUssQ0FBQyxDQUFDO0lBQzVDLElBQUksWUFBWSxDQUFDLFNBQVMsQ0FBQyxFQUFFO1FBQzNCLHVFQUF1RTtRQUN2RSxVQUFVLEdBQUcsU0FBUyxDQUFDO0tBQ3hCO1NBQU07UUFDTCxJQUFJLFdBQXFCLENBQUM7UUFDMUIscUZBQXFGO1FBQ3JGLGtGQUFrRjtRQUNsRiwrRkFBK0Y7UUFDL0YsWUFBWTtRQUNaLElBQUksU0FBUyxDQUFDLElBQUksNkJBQStCLEVBQUU7WUFDakQsV0FBVyxHQUFHLFdBQVcsQ0FBQyxTQUFTLENBQWEsQ0FBQztTQUNsRDthQUFNO1lBQ0wsU0FBUyxJQUFJLFNBQVMsQ0FBQyxxQkFBcUIsRUFBRSxDQUFDO1lBQy9DLFdBQVcsR0FBRyxRQUFRLENBQUMsUUFBUSxDQUFDLENBQUMsYUFBYSxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUMsV0FBVyxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQztZQUU3RSwwRkFBMEY7WUFDMUYseUZBQXlGO1lBQ3pGLDZGQUE2RjtZQUM3Riw4RkFBOEY7WUFDOUYsUUFBUTtZQUNSLElBQUksVUFBVSxDQUFDLFFBQVEsQ0FBQyxFQUFFO2dCQUN4QixNQUFNLFFBQVEsR0FBRyxRQUFRLENBQUMsUUFBUSxDQUFDLENBQUM7Z0JBQ3BDLE1BQU0sVUFBVSxHQUFHLGdCQUFnQixDQUFDLFNBQVMsRUFBRSxRQUFRLENBQUUsQ0FBQztnQkFDMUQsTUFBTSxrQkFBa0IsR0FBRyxnQkFBZ0IsQ0FBQyxRQUFRLEVBQUUsVUFBVSxDQUFDLENBQUM7Z0JBQ2xFLGtCQUFrQixDQUNkLFFBQVEsRUFBRSxrQkFBbUIsRUFBRSxXQUFXLEVBQUUsaUJBQWlCLENBQUMsUUFBUSxFQUFFLFVBQVUsQ0FBQyxDQUFDLENBQUM7YUFDMUY7aUJBQU07Z0JBQ0wsV0FBVyxDQUFDLFFBQVEsQ0FBQyxLQUFLLENBQUMsRUFBRSxRQUFRLEVBQUUsV0FBVyxFQUFFLFNBQVMsQ0FBQyxDQUFDO2FBQ2hFO1NBQ0Y7UUFFRCxRQUFRLENBQUMsU0FBUyxDQUFDLEtBQUssQ0FBQyxHQUFHLFVBQVU7WUFDbEMsZ0JBQWdCLENBQUMsU0FBUyxFQUFFLFFBQVEsRUFBRSxXQUFXLEVBQUUsU0FBUyxDQUFDLENBQUM7UUFFbEUsYUFBYSxDQUFDLFFBQVEsRUFBRSxVQUFVLENBQUMsQ0FBQztLQUNyQztJQUVELE9BQU8sSUFBSSxrQkFBa0IsQ0FBQyxVQUFVLEVBQUUsU0FBUyxFQUFFLFFBQVEsQ0FBQyxDQUFDO0FBQ2pFLENBQUM7QUFHRCxxREFBcUQ7QUFDckQsTUFBTSxVQUFVLHVCQUF1QixDQUFDLE1BQU0sR0FBRyxLQUFLO0lBQ3BELE9BQU8sYUFBYSxDQUFDLHdCQUF3QixFQUFFLEVBQUUsUUFBUSxFQUFFLEVBQUUsTUFBTSxDQUFDLENBQUM7QUFDdkUsQ0FBQztBQUVEOzs7Ozs7O0dBT0c7QUFDSCxTQUFTLGFBQWEsQ0FBQyxLQUFZLEVBQUUsS0FBWSxFQUFFLE1BQWU7SUFDaEUsbUZBQW1GO0lBQ25GLG1FQUFtRTtJQUNuRSxNQUFNLGVBQWUsR0FBRyxDQUFDLE1BQU0sSUFBSSxlQUFlLENBQUMsS0FBSyxDQUFDLENBQUM7SUFDMUQsSUFBSSxlQUFlLEVBQUU7UUFDbkIscUVBQXFFO1FBQ3JFLGlGQUFpRjtRQUNqRixNQUFNLGFBQWEsR0FBRyx3QkFBd0IsQ0FBQyxLQUFLLENBQUMsS0FBSyxFQUFFLEtBQUssQ0FBQyxDQUFDLENBQUUsWUFBWTtRQUNqRixPQUFPLElBQUksT0FBTyxDQUFDLGFBQWEsRUFBRSxhQUFhLENBQUMsQ0FBQztLQUNsRDtTQUFNLElBQ0gsS0FBSyxDQUFDLElBQUksb0JBQXNCLElBQUksS0FBSyxDQUFDLElBQUksc0JBQXdCO1FBQ3RFLEtBQUssQ0FBQyxJQUFJLDZCQUErQixJQUFJLEtBQUssQ0FBQyxJQUFJLHlCQUEyQixFQUFFO1FBQ3RGLDJFQUEyRTtRQUMzRSx5RkFBeUY7UUFDekYsTUFBTSxpQkFBaUIsR0FBRyxLQUFLLENBQUMsMEJBQTBCLENBQUMsQ0FBQyxDQUFFLFVBQVU7UUFDeEUsT0FBTyxJQUFJLE9BQU8sQ0FBQyxpQkFBaUIsRUFBRSxLQUFLLENBQUMsQ0FBQztLQUM5QztJQUNELE9BQU8sSUFBSyxDQUFDO0FBQ2YsQ0FBQztBQUVELHVGQUF1RjtBQUN2RixTQUFTLG9CQUFvQixDQUFDLElBQVc7SUFDdkMsTUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLFFBQVEsQ0FBQyxDQUFDO0lBQ2hDLElBQUksb0JBQW9CLENBQUMsUUFBUSxDQUFDLEVBQUU7UUFDbEMsT0FBTyxRQUFxQixDQUFDO0tBQzlCO1NBQU07UUFDTCxNQUFNLElBQUksS0FBSyxDQUFDLDhEQUE4RCxDQUFDLENBQUM7S0FDakY7QUFDSCxDQUFDO0FBRUQscURBQXFEO0FBQ3JELE1BQU0sVUFBVSxlQUFlO0lBQzdCLGlHQUFpRztJQUNqRyw0RkFBNEY7SUFDNUYsTUFBTSxLQUFLLEdBQUcsUUFBUSxFQUFFLENBQUM7SUFDekIsTUFBTSxLQUFLLEdBQUcsd0JBQXdCLEVBQUUsQ0FBQztJQUN6QyxNQUFNLFdBQVcsR0FBRyx3QkFBd0IsQ0FBQyxLQUFLLENBQUMsS0FBSyxFQUFFLEtBQUssQ0FBQyxDQUFDO0lBQ2pFLE9BQU8sb0JBQW9CLENBQUMsT0FBTyxDQUFDLFdBQVcsQ0FBQyxDQUFDLENBQUMsQ0FBQyxXQUFXLENBQUMsQ0FBQyxDQUFDLEtBQUssQ0FBQyxDQUFDO0FBQzFFLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtDaGFuZ2VEZXRlY3RvclJlZiBhcyBWaWV3RW5naW5lX0NoYW5nZURldGVjdG9yUmVmfSBmcm9tICcuLi9jaGFuZ2VfZGV0ZWN0aW9uL2NoYW5nZV9kZXRlY3Rvcl9yZWYnO1xuaW1wb3J0IHtJbmplY3Rvcn0gZnJvbSAnLi4vZGkvaW5qZWN0b3InO1xuaW1wb3J0IHtDb21wb25lbnRGYWN0b3J5IGFzIHZpZXdFbmdpbmVfQ29tcG9uZW50RmFjdG9yeSwgQ29tcG9uZW50UmVmIGFzIHZpZXdFbmdpbmVfQ29tcG9uZW50UmVmfSBmcm9tICcuLi9saW5rZXIvY29tcG9uZW50X2ZhY3RvcnknO1xuaW1wb3J0IHtFbGVtZW50UmVmIGFzIFZpZXdFbmdpbmVfRWxlbWVudFJlZn0gZnJvbSAnLi4vbGlua2VyL2VsZW1lbnRfcmVmJztcbmltcG9ydCB7TmdNb2R1bGVSZWYgYXMgdmlld0VuZ2luZV9OZ01vZHVsZVJlZn0gZnJvbSAnLi4vbGlua2VyL25nX21vZHVsZV9mYWN0b3J5JztcbmltcG9ydCB7VGVtcGxhdGVSZWYgYXMgVmlld0VuZ2luZV9UZW1wbGF0ZVJlZn0gZnJvbSAnLi4vbGlua2VyL3RlbXBsYXRlX3JlZic7XG5pbXBvcnQge1ZpZXdDb250YWluZXJSZWYgYXMgVmlld0VuZ2luZV9WaWV3Q29udGFpbmVyUmVmfSBmcm9tICcuLi9saW5rZXIvdmlld19jb250YWluZXJfcmVmJztcbmltcG9ydCB7RW1iZWRkZWRWaWV3UmVmIGFzIHZpZXdFbmdpbmVfRW1iZWRkZWRWaWV3UmVmLCBWaWV3UmVmIGFzIHZpZXdFbmdpbmVfVmlld1JlZn0gZnJvbSAnLi4vbGlua2VyL3ZpZXdfcmVmJztcbmltcG9ydCB7UmVuZGVyZXIyfSBmcm9tICcuLi9yZW5kZXIvYXBpJztcbmltcG9ydCB7YWRkVG9BcnJheSwgcmVtb3ZlRnJvbUFycmF5fSBmcm9tICcuLi91dGlsL2FycmF5X3V0aWxzJztcbmltcG9ydCB7YXNzZXJ0RGVmaW5lZCwgYXNzZXJ0RXF1YWwsIGFzc2VydEdyZWF0ZXJUaGFuLCBhc3NlcnRMZXNzVGhhbn0gZnJvbSAnLi4vdXRpbC9hc3NlcnQnO1xuXG5pbXBvcnQge2Fzc2VydExDb250YWluZXJ9IGZyb20gJy4vYXNzZXJ0JztcbmltcG9ydCB7Z2V0UGFyZW50SW5qZWN0b3JMb2NhdGlvbiwgTm9kZUluamVjdG9yfSBmcm9tICcuL2RpJztcbmltcG9ydCB7YWRkVG9WaWV3VHJlZSwgY3JlYXRlTENvbnRhaW5lciwgY3JlYXRlTFZpZXcsIHJlbmRlclZpZXd9IGZyb20gJy4vaW5zdHJ1Y3Rpb25zL3NoYXJlZCc7XG5pbXBvcnQge0NPTlRBSU5FUl9IRUFERVJfT0ZGU0VULCBMQ29udGFpbmVyLCBWSUVXX1JFRlN9IGZyb20gJy4vaW50ZXJmYWNlcy9jb250YWluZXInO1xuaW1wb3J0IHtUQ29udGFpbmVyTm9kZSwgVERpcmVjdGl2ZUhvc3ROb2RlLCBURWxlbWVudENvbnRhaW5lck5vZGUsIFRFbGVtZW50Tm9kZSwgVE5vZGUsIFROb2RlVHlwZX0gZnJvbSAnLi9pbnRlcmZhY2VzL25vZGUnO1xuaW1wb3J0IHtpc1Byb2NlZHVyYWxSZW5kZXJlciwgUkNvbW1lbnQsIFJFbGVtZW50fSBmcm9tICcuL2ludGVyZmFjZXMvcmVuZGVyZXInO1xuaW1wb3J0IHtpc0NvbXBvbmVudEhvc3QsIGlzTENvbnRhaW5lciwgaXNMVmlldywgaXNSb290Vmlld30gZnJvbSAnLi9pbnRlcmZhY2VzL3R5cGVfY2hlY2tzJztcbmltcG9ydCB7REVDTEFSQVRJT05fQ09NUE9ORU5UX1ZJRVcsIERFQ0xBUkFUSU9OX0xDT05UQUlORVIsIExWaWV3LCBMVmlld0ZsYWdzLCBQQVJFTlQsIFFVRVJJRVMsIFJFTkRFUkVSLCBUX0hPU1QsIFRWSUVXLCBUVmlld30gZnJvbSAnLi9pbnRlcmZhY2VzL3ZpZXcnO1xuaW1wb3J0IHthc3NlcnROb2RlT2ZQb3NzaWJsZVR5cGVzfSBmcm9tICcuL25vZGVfYXNzZXJ0JztcbmltcG9ydCB7YWRkUmVtb3ZlVmlld0Zyb21Db250YWluZXIsIGFwcGVuZENoaWxkLCBkZXN0cm95TFZpZXcsIGRldGFjaFZpZXcsIGdldEJlZm9yZU5vZGVGb3JWaWV3LCBpbnNlcnRWaWV3LCBuYXRpdmVJbnNlcnRCZWZvcmUsIG5hdGl2ZU5leHRTaWJsaW5nLCBuYXRpdmVQYXJlbnROb2RlfSBmcm9tICcuL25vZGVfbWFuaXB1bGF0aW9uJztcbmltcG9ydCB7Z2V0UGFyZW50SW5qZWN0b3JUTm9kZX0gZnJvbSAnLi9ub2RlX3V0aWwnO1xuaW1wb3J0IHtnZXRMVmlldywgZ2V0UHJldmlvdXNPclBhcmVudFROb2RlfSBmcm9tICcuL3N0YXRlJztcbmltcG9ydCB7Z2V0UGFyZW50SW5qZWN0b3JWaWV3LCBoYXNQYXJlbnRJbmplY3Rvcn0gZnJvbSAnLi91dGlsL2luamVjdG9yX3V0aWxzJztcbmltcG9ydCB7Z2V0Q29tcG9uZW50TFZpZXdCeUluZGV4LCBnZXROYXRpdmVCeVROb2RlLCB1bndyYXBSTm9kZSwgdmlld0F0dGFjaGVkVG9Db250YWluZXJ9IGZyb20gJy4vdXRpbC92aWV3X3V0aWxzJztcbmltcG9ydCB7Vmlld1JlZn0gZnJvbSAnLi92aWV3X3JlZic7XG5cblxuXG4vKipcbiAqIENyZWF0ZXMgYW4gRWxlbWVudFJlZiBmcm9tIHRoZSBtb3N0IHJlY2VudCBub2RlLlxuICpcbiAqIEByZXR1cm5zIFRoZSBFbGVtZW50UmVmIGluc3RhbmNlIHRvIHVzZVxuICovXG5leHBvcnQgZnVuY3Rpb24gaW5qZWN0RWxlbWVudFJlZihFbGVtZW50UmVmVG9rZW46IHR5cGVvZiBWaWV3RW5naW5lX0VsZW1lbnRSZWYpOlxuICAgIFZpZXdFbmdpbmVfRWxlbWVudFJlZiB7XG4gIHJldHVybiBjcmVhdGVFbGVtZW50UmVmKEVsZW1lbnRSZWZUb2tlbiwgZ2V0UHJldmlvdXNPclBhcmVudFROb2RlKCksIGdldExWaWV3KCkpO1xufVxuXG5sZXQgUjNFbGVtZW50UmVmOiB7bmV3IChuYXRpdmU6IFJFbGVtZW50fFJDb21tZW50KTogVmlld0VuZ2luZV9FbGVtZW50UmVmfTtcblxuLyoqXG4gKiBDcmVhdGVzIGFuIEVsZW1lbnRSZWYgZ2l2ZW4gYSBub2RlLlxuICpcbiAqIEBwYXJhbSBFbGVtZW50UmVmVG9rZW4gVGhlIEVsZW1lbnRSZWYgdHlwZVxuICogQHBhcmFtIHROb2RlIFRoZSBub2RlIGZvciB3aGljaCB5b3UnZCBsaWtlIGFuIEVsZW1lbnRSZWZcbiAqIEBwYXJhbSB2aWV3IFRoZSB2aWV3IHRvIHdoaWNoIHRoZSBub2RlIGJlbG9uZ3NcbiAqIEByZXR1cm5zIFRoZSBFbGVtZW50UmVmIGluc3RhbmNlIHRvIHVzZVxuICovXG5leHBvcnQgZnVuY3Rpb24gY3JlYXRlRWxlbWVudFJlZihcbiAgICBFbGVtZW50UmVmVG9rZW46IHR5cGVvZiBWaWV3RW5naW5lX0VsZW1lbnRSZWYsIHROb2RlOiBUTm9kZSxcbiAgICB2aWV3OiBMVmlldyk6IFZpZXdFbmdpbmVfRWxlbWVudFJlZiB7XG4gIGlmICghUjNFbGVtZW50UmVmKSB7XG4gICAgUjNFbGVtZW50UmVmID0gY2xhc3MgRWxlbWVudFJlZiBleHRlbmRzIEVsZW1lbnRSZWZUb2tlbiB7fTtcbiAgfVxuICByZXR1cm4gbmV3IFIzRWxlbWVudFJlZihnZXROYXRpdmVCeVROb2RlKHROb2RlLCB2aWV3KSBhcyBSRWxlbWVudCk7XG59XG5cbmxldCBSM1RlbXBsYXRlUmVmOiB7XG4gIG5ldyAoX2RlY2xhcmF0aW9uUGFyZW50VmlldzogTFZpZXcsIGhvc3RUTm9kZTogVENvbnRhaW5lck5vZGUsIGVsZW1lbnRSZWY6IFZpZXdFbmdpbmVfRWxlbWVudFJlZik6XG4gICAgICBWaWV3RW5naW5lX1RlbXBsYXRlUmVmPGFueT5cbn07XG5cbi8qKlxuICogQ3JlYXRlcyBhIFRlbXBsYXRlUmVmIGdpdmVuIGEgbm9kZS5cbiAqXG4gKiBAcmV0dXJucyBUaGUgVGVtcGxhdGVSZWYgaW5zdGFuY2UgdG8gdXNlXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBpbmplY3RUZW1wbGF0ZVJlZjxUPihcbiAgICBUZW1wbGF0ZVJlZlRva2VuOiB0eXBlb2YgVmlld0VuZ2luZV9UZW1wbGF0ZVJlZixcbiAgICBFbGVtZW50UmVmVG9rZW46IHR5cGVvZiBWaWV3RW5naW5lX0VsZW1lbnRSZWYpOiBWaWV3RW5naW5lX1RlbXBsYXRlUmVmPFQ+fG51bGwge1xuICByZXR1cm4gY3JlYXRlVGVtcGxhdGVSZWY8VD4oXG4gICAgICBUZW1wbGF0ZVJlZlRva2VuLCBFbGVtZW50UmVmVG9rZW4sIGdldFByZXZpb3VzT3JQYXJlbnRUTm9kZSgpLCBnZXRMVmlldygpKTtcbn1cblxuLyoqXG4gKiBDcmVhdGVzIGEgVGVtcGxhdGVSZWYgYW5kIHN0b3JlcyBpdCBvbiB0aGUgaW5qZWN0b3IuXG4gKlxuICogQHBhcmFtIFRlbXBsYXRlUmVmVG9rZW4gVGhlIFRlbXBsYXRlUmVmIHR5cGVcbiAqIEBwYXJhbSBFbGVtZW50UmVmVG9rZW4gVGhlIEVsZW1lbnRSZWYgdHlwZVxuICogQHBhcmFtIGhvc3RUTm9kZSBUaGUgbm9kZSBvbiB3aGljaCBhIFRlbXBsYXRlUmVmIGlzIHJlcXVlc3RlZFxuICogQHBhcmFtIGhvc3RWaWV3IFRoZSB2aWV3IHRvIHdoaWNoIHRoZSBub2RlIGJlbG9uZ3NcbiAqIEByZXR1cm5zIFRoZSBUZW1wbGF0ZVJlZiBpbnN0YW5jZSBvciBudWxsIGlmIHdlIGNhbid0IGNyZWF0ZSBhIFRlbXBsYXRlUmVmIG9uIGEgZ2l2ZW4gbm9kZSB0eXBlXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBjcmVhdGVUZW1wbGF0ZVJlZjxUPihcbiAgICBUZW1wbGF0ZVJlZlRva2VuOiB0eXBlb2YgVmlld0VuZ2luZV9UZW1wbGF0ZVJlZiwgRWxlbWVudFJlZlRva2VuOiB0eXBlb2YgVmlld0VuZ2luZV9FbGVtZW50UmVmLFxuICAgIGhvc3RUTm9kZTogVE5vZGUsIGhvc3RWaWV3OiBMVmlldyk6IFZpZXdFbmdpbmVfVGVtcGxhdGVSZWY8VD58bnVsbCB7XG4gIGlmICghUjNUZW1wbGF0ZVJlZikge1xuICAgIFIzVGVtcGxhdGVSZWYgPSBjbGFzcyBUZW1wbGF0ZVJlZjxUPiBleHRlbmRzIFRlbXBsYXRlUmVmVG9rZW48VD57XG4gICAgICBjb25zdHJ1Y3RvcihcbiAgICAgICAgICBwcml2YXRlIF9kZWNsYXJhdGlvblZpZXc6IExWaWV3LCBwcml2YXRlIF9kZWNsYXJhdGlvblRDb250YWluZXI6IFRDb250YWluZXJOb2RlLFxuICAgICAgICAgIHJlYWRvbmx5IGVsZW1lbnRSZWY6IFZpZXdFbmdpbmVfRWxlbWVudFJlZikge1xuICAgICAgICBzdXBlcigpO1xuICAgICAgfVxuXG4gICAgICBjcmVhdGVFbWJlZGRlZFZpZXcoY29udGV4dDogVCk6IHZpZXdFbmdpbmVfRW1iZWRkZWRWaWV3UmVmPFQ+IHtcbiAgICAgICAgY29uc3QgZW1iZWRkZWRUVmlldyA9IHRoaXMuX2RlY2xhcmF0aW9uVENvbnRhaW5lci50Vmlld3MgYXMgVFZpZXc7XG4gICAgICAgIGNvbnN0IGVtYmVkZGVkTFZpZXcgPSBjcmVhdGVMVmlldyhcbiAgICAgICAgICAgIHRoaXMuX2RlY2xhcmF0aW9uVmlldywgZW1iZWRkZWRUVmlldywgY29udGV4dCwgTFZpZXdGbGFncy5DaGVja0Fsd2F5cywgbnVsbCxcbiAgICAgICAgICAgIGVtYmVkZGVkVFZpZXcubm9kZSk7XG5cbiAgICAgICAgY29uc3QgZGVjbGFyYXRpb25MQ29udGFpbmVyID0gdGhpcy5fZGVjbGFyYXRpb25WaWV3W3RoaXMuX2RlY2xhcmF0aW9uVENvbnRhaW5lci5pbmRleF07XG4gICAgICAgIG5nRGV2TW9kZSAmJiBhc3NlcnRMQ29udGFpbmVyKGRlY2xhcmF0aW9uTENvbnRhaW5lcik7XG4gICAgICAgIGVtYmVkZGVkTFZpZXdbREVDTEFSQVRJT05fTENPTlRBSU5FUl0gPSBkZWNsYXJhdGlvbkxDb250YWluZXI7XG5cbiAgICAgICAgY29uc3QgZGVjbGFyYXRpb25WaWV3TFF1ZXJpZXMgPSB0aGlzLl9kZWNsYXJhdGlvblZpZXdbUVVFUklFU107XG4gICAgICAgIGlmIChkZWNsYXJhdGlvblZpZXdMUXVlcmllcyAhPT0gbnVsbCkge1xuICAgICAgICAgIGVtYmVkZGVkTFZpZXdbUVVFUklFU10gPSBkZWNsYXJhdGlvblZpZXdMUXVlcmllcy5jcmVhdGVFbWJlZGRlZFZpZXcoZW1iZWRkZWRUVmlldyk7XG4gICAgICAgIH1cblxuICAgICAgICByZW5kZXJWaWV3KGVtYmVkZGVkVFZpZXcsIGVtYmVkZGVkTFZpZXcsIGNvbnRleHQpO1xuXG4gICAgICAgIHJldHVybiBuZXcgVmlld1JlZjxUPihlbWJlZGRlZExWaWV3KTtcbiAgICAgIH1cbiAgICB9O1xuICB9XG5cbiAgaWYgKGhvc3RUTm9kZS50eXBlID09PSBUTm9kZVR5cGUuQ29udGFpbmVyKSB7XG4gICAgbmdEZXZNb2RlICYmIGFzc2VydERlZmluZWQoaG9zdFROb2RlLnRWaWV3cywgJ1RWaWV3IG11c3QgYmUgYWxsb2NhdGVkJyk7XG4gICAgcmV0dXJuIG5ldyBSM1RlbXBsYXRlUmVmKFxuICAgICAgICBob3N0VmlldywgaG9zdFROb2RlIGFzIFRDb250YWluZXJOb2RlLFxuICAgICAgICBjcmVhdGVFbGVtZW50UmVmKEVsZW1lbnRSZWZUb2tlbiwgaG9zdFROb2RlLCBob3N0VmlldykpO1xuICB9IGVsc2Uge1xuICAgIHJldHVybiBudWxsO1xuICB9XG59XG5cbmxldCBSM1ZpZXdDb250YWluZXJSZWY6IHtcbiAgbmV3IChcbiAgICAgIGxDb250YWluZXI6IExDb250YWluZXIsIGhvc3RUTm9kZTogVEVsZW1lbnROb2RlfFRDb250YWluZXJOb2RlfFRFbGVtZW50Q29udGFpbmVyTm9kZSxcbiAgICAgIGhvc3RWaWV3OiBMVmlldyk6IFZpZXdFbmdpbmVfVmlld0NvbnRhaW5lclJlZlxufTtcblxuLyoqXG4gKiBDcmVhdGVzIGEgVmlld0NvbnRhaW5lclJlZiBhbmQgc3RvcmVzIGl0IG9uIHRoZSBpbmplY3Rvci4gT3IsIGlmIHRoZSBWaWV3Q29udGFpbmVyUmVmXG4gKiBhbHJlYWR5IGV4aXN0cywgcmV0cmlldmVzIHRoZSBleGlzdGluZyBWaWV3Q29udGFpbmVyUmVmLlxuICpcbiAqIEByZXR1cm5zIFRoZSBWaWV3Q29udGFpbmVyUmVmIGluc3RhbmNlIHRvIHVzZVxuICovXG5leHBvcnQgZnVuY3Rpb24gaW5qZWN0Vmlld0NvbnRhaW5lclJlZihcbiAgICBWaWV3Q29udGFpbmVyUmVmVG9rZW46IHR5cGVvZiBWaWV3RW5naW5lX1ZpZXdDb250YWluZXJSZWYsXG4gICAgRWxlbWVudFJlZlRva2VuOiB0eXBlb2YgVmlld0VuZ2luZV9FbGVtZW50UmVmKTogVmlld0VuZ2luZV9WaWV3Q29udGFpbmVyUmVmIHtcbiAgY29uc3QgcHJldmlvdXNUTm9kZSA9XG4gICAgICBnZXRQcmV2aW91c09yUGFyZW50VE5vZGUoKSBhcyBURWxlbWVudE5vZGUgfCBURWxlbWVudENvbnRhaW5lck5vZGUgfCBUQ29udGFpbmVyTm9kZTtcbiAgcmV0dXJuIGNyZWF0ZUNvbnRhaW5lclJlZihWaWV3Q29udGFpbmVyUmVmVG9rZW4sIEVsZW1lbnRSZWZUb2tlbiwgcHJldmlvdXNUTm9kZSwgZ2V0TFZpZXcoKSk7XG59XG5cbi8qKlxuICogQ3JlYXRlcyBhIFZpZXdDb250YWluZXJSZWYgYW5kIHN0b3JlcyBpdCBvbiB0aGUgaW5qZWN0b3IuXG4gKlxuICogQHBhcmFtIFZpZXdDb250YWluZXJSZWZUb2tlbiBUaGUgVmlld0NvbnRhaW5lclJlZiB0eXBlXG4gKiBAcGFyYW0gRWxlbWVudFJlZlRva2VuIFRoZSBFbGVtZW50UmVmIHR5cGVcbiAqIEBwYXJhbSBob3N0VE5vZGUgVGhlIG5vZGUgdGhhdCBpcyByZXF1ZXN0aW5nIGEgVmlld0NvbnRhaW5lclJlZlxuICogQHBhcmFtIGhvc3RWaWV3IFRoZSB2aWV3IHRvIHdoaWNoIHRoZSBub2RlIGJlbG9uZ3NcbiAqIEByZXR1cm5zIFRoZSBWaWV3Q29udGFpbmVyUmVmIGluc3RhbmNlIHRvIHVzZVxuICovXG5leHBvcnQgZnVuY3Rpb24gY3JlYXRlQ29udGFpbmVyUmVmKFxuICAgIFZpZXdDb250YWluZXJSZWZUb2tlbjogdHlwZW9mIFZpZXdFbmdpbmVfVmlld0NvbnRhaW5lclJlZixcbiAgICBFbGVtZW50UmVmVG9rZW46IHR5cGVvZiBWaWV3RW5naW5lX0VsZW1lbnRSZWYsXG4gICAgaG9zdFROb2RlOiBURWxlbWVudE5vZGV8VENvbnRhaW5lck5vZGV8VEVsZW1lbnRDb250YWluZXJOb2RlLFxuICAgIGhvc3RWaWV3OiBMVmlldyk6IFZpZXdFbmdpbmVfVmlld0NvbnRhaW5lclJlZiB7XG4gIGlmICghUjNWaWV3Q29udGFpbmVyUmVmKSB7XG4gICAgUjNWaWV3Q29udGFpbmVyUmVmID0gY2xhc3MgVmlld0NvbnRhaW5lclJlZiBleHRlbmRzIFZpZXdDb250YWluZXJSZWZUb2tlbiB7XG4gICAgICBjb25zdHJ1Y3RvcihcbiAgICAgICAgICBwcml2YXRlIF9sQ29udGFpbmVyOiBMQ29udGFpbmVyLFxuICAgICAgICAgIHByaXZhdGUgX2hvc3RUTm9kZTogVEVsZW1lbnROb2RlfFRDb250YWluZXJOb2RlfFRFbGVtZW50Q29udGFpbmVyTm9kZSxcbiAgICAgICAgICBwcml2YXRlIF9ob3N0VmlldzogTFZpZXcpIHtcbiAgICAgICAgc3VwZXIoKTtcbiAgICAgIH1cblxuICAgICAgZ2V0IGVsZW1lbnQoKTogVmlld0VuZ2luZV9FbGVtZW50UmVmIHtcbiAgICAgICAgcmV0dXJuIGNyZWF0ZUVsZW1lbnRSZWYoRWxlbWVudFJlZlRva2VuLCB0aGlzLl9ob3N0VE5vZGUsIHRoaXMuX2hvc3RWaWV3KTtcbiAgICAgIH1cblxuICAgICAgZ2V0IGluamVjdG9yKCk6IEluamVjdG9yIHtcbiAgICAgICAgcmV0dXJuIG5ldyBOb2RlSW5qZWN0b3IodGhpcy5faG9zdFROb2RlLCB0aGlzLl9ob3N0Vmlldyk7XG4gICAgICB9XG5cbiAgICAgIC8qKiBAZGVwcmVjYXRlZCBObyByZXBsYWNlbWVudCAqL1xuICAgICAgZ2V0IHBhcmVudEluamVjdG9yKCk6IEluamVjdG9yIHtcbiAgICAgICAgY29uc3QgcGFyZW50TG9jYXRpb24gPSBnZXRQYXJlbnRJbmplY3RvckxvY2F0aW9uKHRoaXMuX2hvc3RUTm9kZSwgdGhpcy5faG9zdFZpZXcpO1xuICAgICAgICBjb25zdCBwYXJlbnRWaWV3ID0gZ2V0UGFyZW50SW5qZWN0b3JWaWV3KHBhcmVudExvY2F0aW9uLCB0aGlzLl9ob3N0Vmlldyk7XG4gICAgICAgIGNvbnN0IHBhcmVudFROb2RlID0gZ2V0UGFyZW50SW5qZWN0b3JUTm9kZShwYXJlbnRMb2NhdGlvbiwgdGhpcy5faG9zdFZpZXcsIHRoaXMuX2hvc3RUTm9kZSk7XG5cbiAgICAgICAgcmV0dXJuICFoYXNQYXJlbnRJbmplY3RvcihwYXJlbnRMb2NhdGlvbikgfHwgcGFyZW50VE5vZGUgPT0gbnVsbCA/XG4gICAgICAgICAgICBuZXcgTm9kZUluamVjdG9yKG51bGwsIHRoaXMuX2hvc3RWaWV3KSA6XG4gICAgICAgICAgICBuZXcgTm9kZUluamVjdG9yKHBhcmVudFROb2RlLCBwYXJlbnRWaWV3KTtcbiAgICAgIH1cblxuICAgICAgY2xlYXIoKTogdm9pZCB7XG4gICAgICAgIHdoaWxlICh0aGlzLmxlbmd0aCA+IDApIHtcbiAgICAgICAgICB0aGlzLnJlbW92ZSh0aGlzLmxlbmd0aCAtIDEpO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIGdldChpbmRleDogbnVtYmVyKTogdmlld0VuZ2luZV9WaWV3UmVmfG51bGwge1xuICAgICAgICByZXR1cm4gdGhpcy5fbENvbnRhaW5lcltWSUVXX1JFRlNdICE9PSBudWxsICYmIHRoaXMuX2xDb250YWluZXJbVklFV19SRUZTXSFbaW5kZXhdIHx8IG51bGw7XG4gICAgICB9XG5cbiAgICAgIGdldCBsZW5ndGgoKTogbnVtYmVyIHtcbiAgICAgICAgcmV0dXJuIHRoaXMuX2xDb250YWluZXIubGVuZ3RoIC0gQ09OVEFJTkVSX0hFQURFUl9PRkZTRVQ7XG4gICAgICB9XG5cbiAgICAgIGNyZWF0ZUVtYmVkZGVkVmlldzxDPih0ZW1wbGF0ZVJlZjogVmlld0VuZ2luZV9UZW1wbGF0ZVJlZjxDPiwgY29udGV4dD86IEMsIGluZGV4PzogbnVtYmVyKTpcbiAgICAgICAgICB2aWV3RW5naW5lX0VtYmVkZGVkVmlld1JlZjxDPiB7XG4gICAgICAgIGNvbnN0IHZpZXdSZWYgPSB0ZW1wbGF0ZVJlZi5jcmVhdGVFbWJlZGRlZFZpZXcoY29udGV4dCB8fCA8YW55Pnt9KTtcbiAgICAgICAgdGhpcy5pbnNlcnQodmlld1JlZiwgaW5kZXgpO1xuICAgICAgICByZXR1cm4gdmlld1JlZjtcbiAgICAgIH1cblxuICAgICAgY3JlYXRlQ29tcG9uZW50PEM+KFxuICAgICAgICAgIGNvbXBvbmVudEZhY3Rvcnk6IHZpZXdFbmdpbmVfQ29tcG9uZW50RmFjdG9yeTxDPiwgaW5kZXg/OiBudW1iZXJ8dW5kZWZpbmVkLFxuICAgICAgICAgIGluamVjdG9yPzogSW5qZWN0b3J8dW5kZWZpbmVkLCBwcm9qZWN0YWJsZU5vZGVzPzogYW55W11bXXx1bmRlZmluZWQsXG4gICAgICAgICAgbmdNb2R1bGVSZWY/OiB2aWV3RW5naW5lX05nTW9kdWxlUmVmPGFueT58dW5kZWZpbmVkKTogdmlld0VuZ2luZV9Db21wb25lbnRSZWY8Qz4ge1xuICAgICAgICBjb25zdCBjb250ZXh0SW5qZWN0b3IgPSBpbmplY3RvciB8fCB0aGlzLnBhcmVudEluamVjdG9yO1xuICAgICAgICBpZiAoIW5nTW9kdWxlUmVmICYmIChjb21wb25lbnRGYWN0b3J5IGFzIGFueSkubmdNb2R1bGUgPT0gbnVsbCAmJiBjb250ZXh0SW5qZWN0b3IpIHtcbiAgICAgICAgICAvLyBETyBOT1QgUkVGQUNUT1IuIFRoZSBjb2RlIGhlcmUgdXNlZCB0byBoYXZlIGEgYHZhbHVlIHx8IHVuZGVmaW5lZGAgZXhwcmVzc2lvblxuICAgICAgICAgIC8vIHdoaWNoIHNlZW1zIHRvIGNhdXNlIGludGVybmFsIGdvb2dsZSBhcHBzIHRvIGZhaWwuIFRoaXMgaXMgZG9jdW1lbnRlZCBpbiB0aGVcbiAgICAgICAgICAvLyBmb2xsb3dpbmcgaW50ZXJuYWwgYnVnIGlzc3VlOiBnby9iLzE0Mjk2NzgwMlxuICAgICAgICAgIGNvbnN0IHJlc3VsdCA9IGNvbnRleHRJbmplY3Rvci5nZXQodmlld0VuZ2luZV9OZ01vZHVsZVJlZiwgbnVsbCk7XG4gICAgICAgICAgaWYgKHJlc3VsdCkge1xuICAgICAgICAgICAgbmdNb2R1bGVSZWYgPSByZXN1bHQ7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgY29uc3QgY29tcG9uZW50UmVmID1cbiAgICAgICAgICAgIGNvbXBvbmVudEZhY3RvcnkuY3JlYXRlKGNvbnRleHRJbmplY3RvciwgcHJvamVjdGFibGVOb2RlcywgdW5kZWZpbmVkLCBuZ01vZHVsZVJlZik7XG4gICAgICAgIHRoaXMuaW5zZXJ0KGNvbXBvbmVudFJlZi5ob3N0VmlldywgaW5kZXgpO1xuICAgICAgICByZXR1cm4gY29tcG9uZW50UmVmO1xuICAgICAgfVxuXG4gICAgICBpbnNlcnQodmlld1JlZjogdmlld0VuZ2luZV9WaWV3UmVmLCBpbmRleD86IG51bWJlcik6IHZpZXdFbmdpbmVfVmlld1JlZiB7XG4gICAgICAgIGNvbnN0IGxWaWV3ID0gKHZpZXdSZWYgYXMgVmlld1JlZjxhbnk+KS5fbFZpZXchO1xuICAgICAgICBjb25zdCB0VmlldyA9IGxWaWV3W1RWSUVXXTtcblxuICAgICAgICBpZiAodmlld1JlZi5kZXN0cm95ZWQpIHtcbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoJ0Nhbm5vdCBpbnNlcnQgYSBkZXN0cm95ZWQgVmlldyBpbiBhIFZpZXdDb250YWluZXIhJyk7XG4gICAgICAgIH1cblxuICAgICAgICB0aGlzLmFsbG9jYXRlQ29udGFpbmVySWZOZWVkZWQoKTtcblxuICAgICAgICBpZiAodmlld0F0dGFjaGVkVG9Db250YWluZXIobFZpZXcpKSB7XG4gICAgICAgICAgLy8gSWYgdmlldyBpcyBhbHJlYWR5IGF0dGFjaGVkLCBkZXRhY2ggaXQgZmlyc3Qgc28gd2UgY2xlYW4gdXAgcmVmZXJlbmNlcyBhcHByb3ByaWF0ZWx5LlxuXG4gICAgICAgICAgY29uc3QgcHJldklkeCA9IHRoaXMuaW5kZXhPZih2aWV3UmVmKTtcblxuICAgICAgICAgIC8vIEEgdmlldyBtaWdodCBiZSBhdHRhY2hlZCBlaXRoZXIgdG8gdGhpcyBvciBhIGRpZmZlcmVudCBjb250YWluZXIuIFRoZSBgcHJldklkeGAgZm9yXG4gICAgICAgICAgLy8gdGhvc2UgY2FzZXMgd2lsbCBiZTpcbiAgICAgICAgICAvLyBlcXVhbCB0byAtMSBmb3Igdmlld3MgYXR0YWNoZWQgdG8gdGhpcyBWaWV3Q29udGFpbmVyUmVmXG4gICAgICAgICAgLy8gPj0gMCBmb3Igdmlld3MgYXR0YWNoZWQgdG8gYSBkaWZmZXJlbnQgVmlld0NvbnRhaW5lclJlZlxuICAgICAgICAgIGlmIChwcmV2SWR4ICE9PSAtMSkge1xuICAgICAgICAgICAgdGhpcy5kZXRhY2gocHJldklkeCk7XG4gICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIGNvbnN0IHByZXZMQ29udGFpbmVyID0gbFZpZXdbUEFSRU5UXSBhcyBMQ29udGFpbmVyO1xuICAgICAgICAgICAgbmdEZXZNb2RlICYmXG4gICAgICAgICAgICAgICAgYXNzZXJ0RXF1YWwoXG4gICAgICAgICAgICAgICAgICAgIGlzTENvbnRhaW5lcihwcmV2TENvbnRhaW5lciksIHRydWUsXG4gICAgICAgICAgICAgICAgICAgICdBbiBhdHRhY2hlZCB2aWV3IHNob3VsZCBoYXZlIGl0cyBQQVJFTlQgcG9pbnQgdG8gYSBjb250YWluZXIuJyk7XG5cblxuICAgICAgICAgICAgLy8gV2UgbmVlZCB0byByZS1jcmVhdGUgYSBSM1ZpZXdDb250YWluZXJSZWYgaW5zdGFuY2Ugc2luY2UgdGhvc2UgYXJlIG5vdCBzdG9yZWQgb25cbiAgICAgICAgICAgIC8vIExWaWV3IChub3IgYW55d2hlcmUgZWxzZSkuXG4gICAgICAgICAgICBjb25zdCBwcmV2VkNSZWYgPSBuZXcgUjNWaWV3Q29udGFpbmVyUmVmKFxuICAgICAgICAgICAgICAgIHByZXZMQ29udGFpbmVyLCBwcmV2TENvbnRhaW5lcltUX0hPU1RdIGFzIFREaXJlY3RpdmVIb3N0Tm9kZSxcbiAgICAgICAgICAgICAgICBwcmV2TENvbnRhaW5lcltQQVJFTlRdKTtcblxuICAgICAgICAgICAgcHJldlZDUmVmLmRldGFjaChwcmV2VkNSZWYuaW5kZXhPZih2aWV3UmVmKSk7XG4gICAgICAgICAgfVxuICAgICAgICB9XG5cbiAgICAgICAgY29uc3QgYWRqdXN0ZWRJZHggPSB0aGlzLl9hZGp1c3RJbmRleChpbmRleCk7XG4gICAgICAgIGluc2VydFZpZXcodFZpZXcsIGxWaWV3LCB0aGlzLl9sQ29udGFpbmVyLCBhZGp1c3RlZElkeCk7XG5cbiAgICAgICAgY29uc3QgYmVmb3JlTm9kZSA9IGdldEJlZm9yZU5vZGVGb3JWaWV3KGFkanVzdGVkSWR4LCB0aGlzLl9sQ29udGFpbmVyKTtcbiAgICAgICAgYWRkUmVtb3ZlVmlld0Zyb21Db250YWluZXIodFZpZXcsIGxWaWV3LCB0cnVlLCBiZWZvcmVOb2RlKTtcblxuICAgICAgICAodmlld1JlZiBhcyBWaWV3UmVmPGFueT4pLmF0dGFjaFRvVmlld0NvbnRhaW5lclJlZih0aGlzKTtcbiAgICAgICAgYWRkVG9BcnJheSh0aGlzLl9sQ29udGFpbmVyW1ZJRVdfUkVGU10hLCBhZGp1c3RlZElkeCwgdmlld1JlZik7XG5cbiAgICAgICAgcmV0dXJuIHZpZXdSZWY7XG4gICAgICB9XG5cbiAgICAgIG1vdmUodmlld1JlZjogdmlld0VuZ2luZV9WaWV3UmVmLCBuZXdJbmRleDogbnVtYmVyKTogdmlld0VuZ2luZV9WaWV3UmVmIHtcbiAgICAgICAgaWYgKHZpZXdSZWYuZGVzdHJveWVkKSB7XG4gICAgICAgICAgdGhyb3cgbmV3IEVycm9yKCdDYW5ub3QgbW92ZSBhIGRlc3Ryb3llZCBWaWV3IGluIGEgVmlld0NvbnRhaW5lciEnKTtcbiAgICAgICAgfVxuICAgICAgICByZXR1cm4gdGhpcy5pbnNlcnQodmlld1JlZiwgbmV3SW5kZXgpO1xuICAgICAgfVxuXG4gICAgICBpbmRleE9mKHZpZXdSZWY6IHZpZXdFbmdpbmVfVmlld1JlZik6IG51bWJlciB7XG4gICAgICAgIGNvbnN0IHZpZXdSZWZzQXJyID0gdGhpcy5fbENvbnRhaW5lcltWSUVXX1JFRlNdO1xuICAgICAgICByZXR1cm4gdmlld1JlZnNBcnIgIT09IG51bGwgPyB2aWV3UmVmc0Fyci5pbmRleE9mKHZpZXdSZWYpIDogLTE7XG4gICAgICB9XG5cbiAgICAgIHJlbW92ZShpbmRleD86IG51bWJlcik6IHZvaWQge1xuICAgICAgICB0aGlzLmFsbG9jYXRlQ29udGFpbmVySWZOZWVkZWQoKTtcbiAgICAgICAgY29uc3QgYWRqdXN0ZWRJZHggPSB0aGlzLl9hZGp1c3RJbmRleChpbmRleCwgLTEpO1xuICAgICAgICBjb25zdCBkZXRhY2hlZFZpZXcgPSBkZXRhY2hWaWV3KHRoaXMuX2xDb250YWluZXIsIGFkanVzdGVkSWR4KTtcblxuICAgICAgICBpZiAoZGV0YWNoZWRWaWV3KSB7XG4gICAgICAgICAgLy8gQmVmb3JlIGRlc3Ryb3lpbmcgdGhlIHZpZXcsIHJlbW92ZSBpdCBmcm9tIHRoZSBjb250YWluZXIncyBhcnJheSBvZiBgVmlld1JlZmBzLlxuICAgICAgICAgIC8vIFRoaXMgZW5zdXJlcyB0aGUgdmlldyBjb250YWluZXIgbGVuZ3RoIGlzIHVwZGF0ZWQgYmVmb3JlIGNhbGxpbmdcbiAgICAgICAgICAvLyBgZGVzdHJveUxWaWV3YCwgd2hpY2ggY291bGQgcmVjdXJzaXZlbHkgY2FsbCB2aWV3IGNvbnRhaW5lciBtZXRob2RzIHRoYXRcbiAgICAgICAgICAvLyByZWx5IG9uIGFuIGFjY3VyYXRlIGNvbnRhaW5lciBsZW5ndGguXG4gICAgICAgICAgLy8gKGUuZy4gYSBtZXRob2Qgb24gdGhpcyB2aWV3IGNvbnRhaW5lciBiZWluZyBjYWxsZWQgYnkgYSBjaGlsZCBkaXJlY3RpdmUncyBPbkRlc3Ryb3lcbiAgICAgICAgICAvLyBsaWZlY3ljbGUgaG9vaylcbiAgICAgICAgICByZW1vdmVGcm9tQXJyYXkodGhpcy5fbENvbnRhaW5lcltWSUVXX1JFRlNdISwgYWRqdXN0ZWRJZHgpO1xuICAgICAgICAgIGRlc3Ryb3lMVmlldyhkZXRhY2hlZFZpZXdbVFZJRVddLCBkZXRhY2hlZFZpZXcpO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIGRldGFjaChpbmRleD86IG51bWJlcik6IHZpZXdFbmdpbmVfVmlld1JlZnxudWxsIHtcbiAgICAgICAgdGhpcy5hbGxvY2F0ZUNvbnRhaW5lcklmTmVlZGVkKCk7XG4gICAgICAgIGNvbnN0IGFkanVzdGVkSWR4ID0gdGhpcy5fYWRqdXN0SW5kZXgoaW5kZXgsIC0xKTtcbiAgICAgICAgY29uc3QgdmlldyA9IGRldGFjaFZpZXcodGhpcy5fbENvbnRhaW5lciwgYWRqdXN0ZWRJZHgpO1xuXG4gICAgICAgIGNvbnN0IHdhc0RldGFjaGVkID1cbiAgICAgICAgICAgIHZpZXcgJiYgcmVtb3ZlRnJvbUFycmF5KHRoaXMuX2xDb250YWluZXJbVklFV19SRUZTXSEsIGFkanVzdGVkSWR4KSAhPSBudWxsO1xuICAgICAgICByZXR1cm4gd2FzRGV0YWNoZWQgPyBuZXcgVmlld1JlZih2aWV3ISkgOiBudWxsO1xuICAgICAgfVxuXG4gICAgICBwcml2YXRlIF9hZGp1c3RJbmRleChpbmRleD86IG51bWJlciwgc2hpZnQ6IG51bWJlciA9IDApIHtcbiAgICAgICAgaWYgKGluZGV4ID09IG51bGwpIHtcbiAgICAgICAgICByZXR1cm4gdGhpcy5sZW5ndGggKyBzaGlmdDtcbiAgICAgICAgfVxuICAgICAgICBpZiAobmdEZXZNb2RlKSB7XG4gICAgICAgICAgYXNzZXJ0R3JlYXRlclRoYW4oaW5kZXgsIC0xLCBgVmlld1JlZiBpbmRleCBtdXN0IGJlIHBvc2l0aXZlLCBnb3QgJHtpbmRleH1gKTtcbiAgICAgICAgICAvLyArMSBiZWNhdXNlIGl0J3MgbGVnYWwgdG8gaW5zZXJ0IGF0IHRoZSBlbmQuXG4gICAgICAgICAgYXNzZXJ0TGVzc1RoYW4oaW5kZXgsIHRoaXMubGVuZ3RoICsgMSArIHNoaWZ0LCAnaW5kZXgnKTtcbiAgICAgICAgfVxuICAgICAgICByZXR1cm4gaW5kZXg7XG4gICAgICB9XG5cbiAgICAgIHByaXZhdGUgYWxsb2NhdGVDb250YWluZXJJZk5lZWRlZCgpOiB2b2lkIHtcbiAgICAgICAgaWYgKHRoaXMuX2xDb250YWluZXJbVklFV19SRUZTXSA9PT0gbnVsbCkge1xuICAgICAgICAgIHRoaXMuX2xDb250YWluZXJbVklFV19SRUZTXSA9IFtdO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfTtcbiAgfVxuXG4gIG5nRGV2TW9kZSAmJlxuICAgICAgYXNzZXJ0Tm9kZU9mUG9zc2libGVUeXBlcyhcbiAgICAgICAgICBob3N0VE5vZGUsIFtUTm9kZVR5cGUuQ29udGFpbmVyLCBUTm9kZVR5cGUuRWxlbWVudCwgVE5vZGVUeXBlLkVsZW1lbnRDb250YWluZXJdKTtcblxuICBsZXQgbENvbnRhaW5lcjogTENvbnRhaW5lcjtcbiAgY29uc3Qgc2xvdFZhbHVlID0gaG9zdFZpZXdbaG9zdFROb2RlLmluZGV4XTtcbiAgaWYgKGlzTENvbnRhaW5lcihzbG90VmFsdWUpKSB7XG4gICAgLy8gSWYgdGhlIGhvc3QgaXMgYSBjb250YWluZXIsIHdlIGRvbid0IG5lZWQgdG8gY3JlYXRlIGEgbmV3IExDb250YWluZXJcbiAgICBsQ29udGFpbmVyID0gc2xvdFZhbHVlO1xuICB9IGVsc2Uge1xuICAgIGxldCBjb21tZW50Tm9kZTogUkNvbW1lbnQ7XG4gICAgLy8gSWYgdGhlIGhvc3QgaXMgYW4gZWxlbWVudCBjb250YWluZXIsIHRoZSBuYXRpdmUgaG9zdCBlbGVtZW50IGlzIGd1YXJhbnRlZWQgdG8gYmUgYVxuICAgIC8vIGNvbW1lbnQgYW5kIHdlIGNhbiByZXVzZSB0aGF0IGNvbW1lbnQgYXMgYW5jaG9yIGVsZW1lbnQgZm9yIHRoZSBuZXcgTENvbnRhaW5lci5cbiAgICAvLyBUaGUgY29tbWVudCBub2RlIGluIHF1ZXN0aW9uIGlzIGFscmVhZHkgcGFydCBvZiB0aGUgRE9NIHN0cnVjdHVyZSBzbyB3ZSBkb24ndCBuZWVkIHRvIGFwcGVuZFxuICAgIC8vIGl0IGFnYWluLlxuICAgIGlmIChob3N0VE5vZGUudHlwZSA9PT0gVE5vZGVUeXBlLkVsZW1lbnRDb250YWluZXIpIHtcbiAgICAgIGNvbW1lbnROb2RlID0gdW53cmFwUk5vZGUoc2xvdFZhbHVlKSBhcyBSQ29tbWVudDtcbiAgICB9IGVsc2Uge1xuICAgICAgbmdEZXZNb2RlICYmIG5nRGV2TW9kZS5yZW5kZXJlckNyZWF0ZUNvbW1lbnQrKztcbiAgICAgIGNvbW1lbnROb2RlID0gaG9zdFZpZXdbUkVOREVSRVJdLmNyZWF0ZUNvbW1lbnQobmdEZXZNb2RlID8gJ2NvbnRhaW5lcicgOiAnJyk7XG5cbiAgICAgIC8vIEEgYFZpZXdDb250YWluZXJSZWZgIGNhbiBiZSBpbmplY3RlZCBieSB0aGUgcm9vdCAodG9wbW9zdCAvIGJvb3RzdHJhcHBlZCkgY29tcG9uZW50LiBJblxuICAgICAgLy8gdGhpcyBjYXNlIHdlIGNhbid0IHVzZSBUVmlldyAvIFROb2RlIGRhdGEgc3RydWN0dXJlcyB0byBpbnNlcnQgY29udGFpbmVyJ3MgbWFya2VyIG5vZGVcbiAgICAgIC8vIChib3RoIGEgcGFyZW50IG9mIGEgY29tbWVudCBub2RlIGFuZCB0aGUgY29tbWVudCBub2RlIGl0c2VsZiBhcmUgbm90IHBhcnQgb2YgYW55IHZpZXcpLiBJblxuICAgICAgLy8gdGhpcyBzcGVjaWZpYyBjYXNlIHdlIHVzZSBsb3ctbGV2ZWwgRE9NIG1hbmlwdWxhdGlvbiB0byBpbnNlcnQgY29udGFpbmVyJ3MgbWFya2VyIChjb21tZW50KVxuICAgICAgLy8gbm9kZS5cbiAgICAgIGlmIChpc1Jvb3RWaWV3KGhvc3RWaWV3KSkge1xuICAgICAgICBjb25zdCByZW5kZXJlciA9IGhvc3RWaWV3W1JFTkRFUkVSXTtcbiAgICAgICAgY29uc3QgaG9zdE5hdGl2ZSA9IGdldE5hdGl2ZUJ5VE5vZGUoaG9zdFROb2RlLCBob3N0VmlldykhO1xuICAgICAgICBjb25zdCBwYXJlbnRPZkhvc3ROYXRpdmUgPSBuYXRpdmVQYXJlbnROb2RlKHJlbmRlcmVyLCBob3N0TmF0aXZlKTtcbiAgICAgICAgbmF0aXZlSW5zZXJ0QmVmb3JlKFxuICAgICAgICAgICAgcmVuZGVyZXIsIHBhcmVudE9mSG9zdE5hdGl2ZSEsIGNvbW1lbnROb2RlLCBuYXRpdmVOZXh0U2libGluZyhyZW5kZXJlciwgaG9zdE5hdGl2ZSkpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgYXBwZW5kQ2hpbGQoaG9zdFZpZXdbVFZJRVddLCBob3N0VmlldywgY29tbWVudE5vZGUsIGhvc3RUTm9kZSk7XG4gICAgICB9XG4gICAgfVxuXG4gICAgaG9zdFZpZXdbaG9zdFROb2RlLmluZGV4XSA9IGxDb250YWluZXIgPVxuICAgICAgICBjcmVhdGVMQ29udGFpbmVyKHNsb3RWYWx1ZSwgaG9zdFZpZXcsIGNvbW1lbnROb2RlLCBob3N0VE5vZGUpO1xuXG4gICAgYWRkVG9WaWV3VHJlZShob3N0VmlldywgbENvbnRhaW5lcik7XG4gIH1cblxuICByZXR1cm4gbmV3IFIzVmlld0NvbnRhaW5lclJlZihsQ29udGFpbmVyLCBob3N0VE5vZGUsIGhvc3RWaWV3KTtcbn1cblxuXG4vKiogUmV0dXJucyBhIENoYW5nZURldGVjdG9yUmVmIChhLmsuYS4gYSBWaWV3UmVmKSAqL1xuZXhwb3J0IGZ1bmN0aW9uIGluamVjdENoYW5nZURldGVjdG9yUmVmKGlzUGlwZSA9IGZhbHNlKTogVmlld0VuZ2luZV9DaGFuZ2VEZXRlY3RvclJlZiB7XG4gIHJldHVybiBjcmVhdGVWaWV3UmVmKGdldFByZXZpb3VzT3JQYXJlbnRUTm9kZSgpLCBnZXRMVmlldygpLCBpc1BpcGUpO1xufVxuXG4vKipcbiAqIENyZWF0ZXMgYSBWaWV3UmVmIGFuZCBzdG9yZXMgaXQgb24gdGhlIGluamVjdG9yIGFzIENoYW5nZURldGVjdG9yUmVmIChwdWJsaWMgYWxpYXMpLlxuICpcbiAqIEBwYXJhbSB0Tm9kZSBUaGUgbm9kZSB0aGF0IGlzIHJlcXVlc3RpbmcgYSBDaGFuZ2VEZXRlY3RvclJlZlxuICogQHBhcmFtIGxWaWV3IFRoZSB2aWV3IHRvIHdoaWNoIHRoZSBub2RlIGJlbG9uZ3NcbiAqIEBwYXJhbSBpc1BpcGUgV2hldGhlciB0aGUgdmlldyBpcyBiZWluZyBpbmplY3RlZCBpbnRvIGEgcGlwZS5cbiAqIEByZXR1cm5zIFRoZSBDaGFuZ2VEZXRlY3RvclJlZiB0byB1c2VcbiAqL1xuZnVuY3Rpb24gY3JlYXRlVmlld1JlZih0Tm9kZTogVE5vZGUsIGxWaWV3OiBMVmlldywgaXNQaXBlOiBib29sZWFuKTogVmlld0VuZ2luZV9DaGFuZ2VEZXRlY3RvclJlZiB7XG4gIC8vIGBpc0NvbXBvbmVudFZpZXdgIHdpbGwgYmUgdHJ1ZSBmb3IgQ29tcG9uZW50IGFuZCBEaXJlY3RpdmVzIChidXQgbm90IGZvciBQaXBlcykuXG4gIC8vIFNlZSBodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9hbmd1bGFyL3B1bGwvMzMwNzIgZm9yIHByb3BlciBmaXhcbiAgY29uc3QgaXNDb21wb25lbnRWaWV3ID0gIWlzUGlwZSAmJiBpc0NvbXBvbmVudEhvc3QodE5vZGUpO1xuICBpZiAoaXNDb21wb25lbnRWaWV3KSB7XG4gICAgLy8gVGhlIExWaWV3IHJlcHJlc2VudHMgdGhlIGxvY2F0aW9uIHdoZXJlIHRoZSBjb21wb25lbnQgaXMgZGVjbGFyZWQuXG4gICAgLy8gSW5zdGVhZCB3ZSB3YW50IHRoZSBMVmlldyBmb3IgdGhlIGNvbXBvbmVudCBWaWV3IGFuZCBzbyB3ZSBuZWVkIHRvIGxvb2sgaXQgdXAuXG4gICAgY29uc3QgY29tcG9uZW50VmlldyA9IGdldENvbXBvbmVudExWaWV3QnlJbmRleCh0Tm9kZS5pbmRleCwgbFZpZXcpOyAgLy8gbG9vayBkb3duXG4gICAgcmV0dXJuIG5ldyBWaWV3UmVmKGNvbXBvbmVudFZpZXcsIGNvbXBvbmVudFZpZXcpO1xuICB9IGVsc2UgaWYgKFxuICAgICAgdE5vZGUudHlwZSA9PT0gVE5vZGVUeXBlLkVsZW1lbnQgfHwgdE5vZGUudHlwZSA9PT0gVE5vZGVUeXBlLkNvbnRhaW5lciB8fFxuICAgICAgdE5vZGUudHlwZSA9PT0gVE5vZGVUeXBlLkVsZW1lbnRDb250YWluZXIgfHwgdE5vZGUudHlwZSA9PT0gVE5vZGVUeXBlLkljdUNvbnRhaW5lcikge1xuICAgIC8vIFRoZSBMVmlldyByZXByZXNlbnRzIHRoZSBsb2NhdGlvbiB3aGVyZSB0aGUgaW5qZWN0aW9uIGlzIHJlcXVlc3RlZCBmcm9tLlxuICAgIC8vIFdlIG5lZWQgdG8gbG9jYXRlIHRoZSBjb250YWluaW5nIExWaWV3IChpbiBjYXNlIHdoZXJlIHRoZSBgbFZpZXdgIGlzIGFuIGVtYmVkZGVkIHZpZXcpXG4gICAgY29uc3QgaG9zdENvbXBvbmVudFZpZXcgPSBsVmlld1tERUNMQVJBVElPTl9DT01QT05FTlRfVklFV107ICAvLyBsb29rIHVwXG4gICAgcmV0dXJuIG5ldyBWaWV3UmVmKGhvc3RDb21wb25lbnRWaWV3LCBsVmlldyk7XG4gIH1cbiAgcmV0dXJuIG51bGwhO1xufVxuXG4vKiogUmV0dXJucyBhIFJlbmRlcmVyMiAob3IgdGhyb3dzIHdoZW4gYXBwbGljYXRpb24gd2FzIGJvb3RzdHJhcHBlZCB3aXRoIFJlbmRlcmVyMykgKi9cbmZ1bmN0aW9uIGdldE9yQ3JlYXRlUmVuZGVyZXIyKHZpZXc6IExWaWV3KTogUmVuZGVyZXIyIHtcbiAgY29uc3QgcmVuZGVyZXIgPSB2aWV3W1JFTkRFUkVSXTtcbiAgaWYgKGlzUHJvY2VkdXJhbFJlbmRlcmVyKHJlbmRlcmVyKSkge1xuICAgIHJldHVybiByZW5kZXJlciBhcyBSZW5kZXJlcjI7XG4gIH0gZWxzZSB7XG4gICAgdGhyb3cgbmV3IEVycm9yKCdDYW5ub3QgaW5qZWN0IFJlbmRlcmVyMiB3aGVuIHRoZSBhcHBsaWNhdGlvbiB1c2VzIFJlbmRlcmVyMyEnKTtcbiAgfVxufVxuXG4vKiogSW5qZWN0cyBhIFJlbmRlcmVyMiBmb3IgdGhlIGN1cnJlbnQgY29tcG9uZW50LiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGluamVjdFJlbmRlcmVyMigpOiBSZW5kZXJlcjIge1xuICAvLyBXZSBuZWVkIHRoZSBSZW5kZXJlciB0byBiZSBiYXNlZCBvbiB0aGUgY29tcG9uZW50IHRoYXQgaXQncyBiZWluZyBpbmplY3RlZCBpbnRvLCBob3dldmVyIHNpbmNlXG4gIC8vIERJIGhhcHBlbnMgYmVmb3JlIHdlJ3ZlIGVudGVyZWQgaXRzIHZpZXcsIGBnZXRMVmlld2Agd2lsbCByZXR1cm4gdGhlIHBhcmVudCB2aWV3IGluc3RlYWQuXG4gIGNvbnN0IGxWaWV3ID0gZ2V0TFZpZXcoKTtcbiAgY29uc3QgdE5vZGUgPSBnZXRQcmV2aW91c09yUGFyZW50VE5vZGUoKTtcbiAgY29uc3Qgbm9kZUF0SW5kZXggPSBnZXRDb21wb25lbnRMVmlld0J5SW5kZXgodE5vZGUuaW5kZXgsIGxWaWV3KTtcbiAgcmV0dXJuIGdldE9yQ3JlYXRlUmVuZGVyZXIyKGlzTFZpZXcobm9kZUF0SW5kZXgpID8gbm9kZUF0SW5kZXggOiBsVmlldyk7XG59XG4iXX0=