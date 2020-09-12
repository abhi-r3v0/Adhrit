/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __extends } from "tslib";
import { NgModuleRef as viewEngine_NgModuleRef } from '../linker/ng_module_factory';
import { addToArray, removeFromArray } from '../util/array_utils';
import { assertDefined, assertEqual, assertGreaterThan, assertLessThan } from '../util/assert';
import { assertLContainer } from './assert';
import { NodeInjector, getParentInjectorLocation } from './di';
import { addToViewTree, createLContainer, createLView, renderView } from './instructions/shared';
import { CONTAINER_HEADER_OFFSET, VIEW_REFS } from './interfaces/container';
import { isProceduralRenderer } from './interfaces/renderer';
import { isComponentHost, isLContainer, isLView, isRootView } from './interfaces/type_checks';
import { DECLARATION_COMPONENT_VIEW, DECLARATION_LCONTAINER, PARENT, QUERIES, RENDERER, TVIEW, T_HOST } from './interfaces/view';
import { assertNodeOfPossibleTypes } from './node_assert';
import { addRemoveViewFromContainer, appendChild, detachView, getBeforeNodeForView, insertView, nativeInsertBefore, nativeNextSibling, nativeParentNode, removeView } from './node_manipulation';
import { getParentInjectorTNode } from './node_util';
import { getLView, getPreviousOrParentTNode } from './state';
import { getParentInjectorView, hasParentInjector } from './util/injector_utils';
import { getComponentLViewByIndex, getNativeByTNode, setLContainerActiveIndex, unwrapRNode, viewAttachedToContainer } from './util/view_utils';
import { ViewRef } from './view_ref';
/**
 * Creates an ElementRef from the most recent node.
 *
 * @returns The ElementRef instance to use
 */
export function injectElementRef(ElementRefToken) {
    return createElementRef(ElementRefToken, getPreviousOrParentTNode(), getLView());
}
var R3ElementRef;
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
        R3ElementRef = /** @class */ (function (_super) {
            __extends(ElementRef, _super);
            function ElementRef() {
                return _super !== null && _super.apply(this, arguments) || this;
            }
            return ElementRef;
        }(ElementRefToken));
    }
    return new R3ElementRef(getNativeByTNode(tNode, view));
}
var R3TemplateRef;
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
        R3TemplateRef = /** @class */ (function (_super) {
            __extends(TemplateRef, _super);
            function TemplateRef(_declarationView, _declarationTContainer, elementRef) {
                var _this = _super.call(this) || this;
                _this._declarationView = _declarationView;
                _this._declarationTContainer = _declarationTContainer;
                _this.elementRef = elementRef;
                return _this;
            }
            TemplateRef.prototype.createEmbeddedView = function (context) {
                var embeddedTView = this._declarationTContainer.tViews;
                var embeddedLView = createLView(this._declarationView, embeddedTView, context, 16 /* CheckAlways */, null, embeddedTView.node);
                var declarationLContainer = this._declarationView[this._declarationTContainer.index];
                ngDevMode && assertLContainer(declarationLContainer);
                embeddedLView[DECLARATION_LCONTAINER] = declarationLContainer;
                var declarationViewLQueries = this._declarationView[QUERIES];
                if (declarationViewLQueries !== null) {
                    embeddedLView[QUERIES] = declarationViewLQueries.createEmbeddedView(embeddedTView);
                }
                renderView(embeddedTView, embeddedLView, context);
                var viewRef = new ViewRef(embeddedLView);
                viewRef._tViewNode = embeddedLView[T_HOST];
                return viewRef;
            };
            return TemplateRef;
        }(TemplateRefToken));
    }
    if (hostTNode.type === 0 /* Container */) {
        ngDevMode && assertDefined(hostTNode.tViews, 'TView must be allocated');
        return new R3TemplateRef(hostView, hostTNode, createElementRef(ElementRefToken, hostTNode, hostView));
    }
    else {
        return null;
    }
}
var R3ViewContainerRef;
/**
 * Creates a ViewContainerRef and stores it on the injector. Or, if the ViewContainerRef
 * already exists, retrieves the existing ViewContainerRef.
 *
 * @returns The ViewContainerRef instance to use
 */
export function injectViewContainerRef(ViewContainerRefToken, ElementRefToken) {
    var previousTNode = getPreviousOrParentTNode();
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
        R3ViewContainerRef = /** @class */ (function (_super) {
            __extends(ViewContainerRef, _super);
            function ViewContainerRef(_lContainer, _hostTNode, _hostView) {
                var _this = _super.call(this) || this;
                _this._lContainer = _lContainer;
                _this._hostTNode = _hostTNode;
                _this._hostView = _hostView;
                return _this;
            }
            Object.defineProperty(ViewContainerRef.prototype, "element", {
                get: function () {
                    return createElementRef(ElementRefToken, this._hostTNode, this._hostView);
                },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(ViewContainerRef.prototype, "injector", {
                get: function () { return new NodeInjector(this._hostTNode, this._hostView); },
                enumerable: true,
                configurable: true
            });
            Object.defineProperty(ViewContainerRef.prototype, "parentInjector", {
                /** @deprecated No replacement */
                get: function () {
                    var parentLocation = getParentInjectorLocation(this._hostTNode, this._hostView);
                    var parentView = getParentInjectorView(parentLocation, this._hostView);
                    var parentTNode = getParentInjectorTNode(parentLocation, this._hostView, this._hostTNode);
                    return !hasParentInjector(parentLocation) || parentTNode == null ?
                        new NodeInjector(null, this._hostView) :
                        new NodeInjector(parentTNode, parentView);
                },
                enumerable: true,
                configurable: true
            });
            ViewContainerRef.prototype.clear = function () {
                while (this.length > 0) {
                    this.remove(this.length - 1);
                }
            };
            ViewContainerRef.prototype.get = function (index) {
                return this._lContainer[VIEW_REFS] !== null && this._lContainer[VIEW_REFS][index] || null;
            };
            Object.defineProperty(ViewContainerRef.prototype, "length", {
                get: function () { return this._lContainer.length - CONTAINER_HEADER_OFFSET; },
                enumerable: true,
                configurable: true
            });
            ViewContainerRef.prototype.createEmbeddedView = function (templateRef, context, index) {
                var viewRef = templateRef.createEmbeddedView(context || {});
                this.insert(viewRef, index);
                return viewRef;
            };
            ViewContainerRef.prototype.createComponent = function (componentFactory, index, injector, projectableNodes, ngModuleRef) {
                var contextInjector = injector || this.parentInjector;
                if (!ngModuleRef && componentFactory.ngModule == null && contextInjector) {
                    // DO NOT REFACTOR. The code here used to have a `value || undefined` expression
                    // which seems to cause internal google apps to fail. This is documented in the
                    // following internal bug issue: go/b/142967802
                    var result = contextInjector.get(viewEngine_NgModuleRef, null);
                    if (result) {
                        ngModuleRef = result;
                    }
                }
                var componentRef = componentFactory.create(contextInjector, projectableNodes, undefined, ngModuleRef);
                this.insert(componentRef.hostView, index);
                return componentRef;
            };
            ViewContainerRef.prototype.insert = function (viewRef, index) {
                var lView = viewRef._lView;
                var tView = lView[TVIEW];
                if (viewRef.destroyed) {
                    throw new Error('Cannot insert a destroyed View in a ViewContainer!');
                }
                this.allocateContainerIfNeeded();
                if (viewAttachedToContainer(lView)) {
                    // If view is already attached, detach it first so we clean up references appropriately.
                    var prevIdx = this.indexOf(viewRef);
                    // A view might be attached either to this or a different container. The `prevIdx` for
                    // those cases will be:
                    // equal to -1 for views attached to this ViewContainerRef
                    // >= 0 for views attached to a different ViewContainerRef
                    if (prevIdx !== -1) {
                        this.detach(prevIdx);
                    }
                    else {
                        var prevLContainer = lView[PARENT];
                        ngDevMode && assertEqual(isLContainer(prevLContainer), true, 'An attached view should have its PARENT point to a container.');
                        // We need to re-create a R3ViewContainerRef instance since those are not stored on
                        // LView (nor anywhere else).
                        var prevVCRef = new R3ViewContainerRef(prevLContainer, prevLContainer[T_HOST], prevLContainer[PARENT]);
                        prevVCRef.detach(prevVCRef.indexOf(viewRef));
                    }
                }
                var adjustedIdx = this._adjustIndex(index);
                insertView(tView, lView, this._lContainer, adjustedIdx);
                var beforeNode = getBeforeNodeForView(adjustedIdx, this._lContainer);
                addRemoveViewFromContainer(tView, lView, true, beforeNode);
                viewRef.attachToViewContainerRef(this);
                addToArray(this._lContainer[VIEW_REFS], adjustedIdx, viewRef);
                return viewRef;
            };
            ViewContainerRef.prototype.move = function (viewRef, newIndex) {
                if (viewRef.destroyed) {
                    throw new Error('Cannot move a destroyed View in a ViewContainer!');
                }
                return this.insert(viewRef, newIndex);
            };
            ViewContainerRef.prototype.indexOf = function (viewRef) {
                var viewRefsArr = this._lContainer[VIEW_REFS];
                return viewRefsArr !== null ? viewRefsArr.indexOf(viewRef) : -1;
            };
            ViewContainerRef.prototype.remove = function (index) {
                this.allocateContainerIfNeeded();
                var adjustedIdx = this._adjustIndex(index, -1);
                removeView(this._lContainer, adjustedIdx);
                removeFromArray(this._lContainer[VIEW_REFS], adjustedIdx);
            };
            ViewContainerRef.prototype.detach = function (index) {
                this.allocateContainerIfNeeded();
                var adjustedIdx = this._adjustIndex(index, -1);
                var view = detachView(this._lContainer, adjustedIdx);
                var wasDetached = view && removeFromArray(this._lContainer[VIEW_REFS], adjustedIdx) != null;
                return wasDetached ? new ViewRef(view) : null;
            };
            ViewContainerRef.prototype._adjustIndex = function (index, shift) {
                if (shift === void 0) { shift = 0; }
                if (index == null) {
                    return this.length + shift;
                }
                if (ngDevMode) {
                    assertGreaterThan(index, -1, "ViewRef index must be positive, got " + index);
                    // +1 because it's legal to insert at the end.
                    assertLessThan(index, this.length + 1 + shift, 'index');
                }
                return index;
            };
            ViewContainerRef.prototype.allocateContainerIfNeeded = function () {
                if (this._lContainer[VIEW_REFS] === null) {
                    this._lContainer[VIEW_REFS] = [];
                }
            };
            return ViewContainerRef;
        }(ViewContainerRefToken));
    }
    ngDevMode && assertNodeOfPossibleTypes(hostTNode, 0 /* Container */, 3 /* Element */, 4 /* ElementContainer */);
    var lContainer;
    var slotValue = hostView[hostTNode.index];
    if (isLContainer(slotValue)) {
        // If the host is a container, we don't need to create a new LContainer
        lContainer = slotValue;
        setLContainerActiveIndex(lContainer, -1 /* DYNAMIC_EMBEDDED_VIEWS_ONLY */);
    }
    else {
        var commentNode = void 0;
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
                var renderer = hostView[RENDERER];
                var hostNative = getNativeByTNode(hostTNode, hostView);
                var parentOfHostNative = nativeParentNode(renderer, hostNative);
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
export function injectChangeDetectorRef(isPipe) {
    if (isPipe === void 0) { isPipe = false; }
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
    var isComponentView = !isPipe && isComponentHost(tNode);
    if (isComponentView) {
        // The LView represents the location where the component is declared.
        // Instead we want the LView for the component View and so we need to look it up.
        var componentView = getComponentLViewByIndex(tNode.index, lView); // look down
        return new ViewRef(componentView, componentView);
    }
    else if (tNode.type === 3 /* Element */ || tNode.type === 0 /* Container */ ||
        tNode.type === 4 /* ElementContainer */ || tNode.type === 5 /* IcuContainer */) {
        // The LView represents the location where the injection is requested from.
        // We need to locate the containing LView (in case where the `lView` is an embedded view)
        var hostComponentView = lView[DECLARATION_COMPONENT_VIEW]; // look up
        return new ViewRef(hostComponentView, lView);
    }
    return null;
}
/** Returns a Renderer2 (or throws when application was bootstrapped with Renderer3) */
function getOrCreateRenderer2(view) {
    var renderer = view[RENDERER];
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
    var lView = getLView();
    var tNode = getPreviousOrParentTNode();
    var nodeAtIndex = getComponentLViewByIndex(tNode.index, lView);
    return getOrCreateRenderer2(isLView(nodeAtIndex) ? nodeAtIndex : lView);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlld19lbmdpbmVfY29tcGF0aWJpbGl0eS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3JlbmRlcjMvdmlld19lbmdpbmVfY29tcGF0aWJpbGl0eS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7O0FBTUgsT0FBTyxFQUFDLFdBQVcsSUFBSSxzQkFBc0IsRUFBQyxNQUFNLDZCQUE2QixDQUFDO0FBS2xGLE9BQU8sRUFBQyxVQUFVLEVBQUUsZUFBZSxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFDaEUsT0FBTyxFQUFDLGFBQWEsRUFBRSxXQUFXLEVBQUUsaUJBQWlCLEVBQUUsY0FBYyxFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFFN0YsT0FBTyxFQUFDLGdCQUFnQixFQUFDLE1BQU0sVUFBVSxDQUFDO0FBQzFDLE9BQU8sRUFBQyxZQUFZLEVBQUUseUJBQXlCLEVBQUMsTUFBTSxNQUFNLENBQUM7QUFDN0QsT0FBTyxFQUFDLGFBQWEsRUFBRSxnQkFBZ0IsRUFBRSxXQUFXLEVBQUUsVUFBVSxFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFDL0YsT0FBTyxFQUFrQix1QkFBdUIsRUFBYyxTQUFTLEVBQUMsTUFBTSx3QkFBd0IsQ0FBQztBQUV2RyxPQUFPLEVBQXFCLG9CQUFvQixFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFDL0UsT0FBTyxFQUFDLGVBQWUsRUFBRSxZQUFZLEVBQUUsT0FBTyxFQUFFLFVBQVUsRUFBQyxNQUFNLDBCQUEwQixDQUFDO0FBQzVGLE9BQU8sRUFBQywwQkFBMEIsRUFBRSxzQkFBc0IsRUFBcUIsTUFBTSxFQUFFLE9BQU8sRUFBRSxRQUFRLEVBQUUsS0FBSyxFQUFTLE1BQU0sRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBQ3pKLE9BQU8sRUFBQyx5QkFBeUIsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUN4RCxPQUFPLEVBQUMs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RUFBRSxDQUFDO0lBQ3pDLElBQU0sV0FBVyxHQUFHLHdCQUF3QixDQUFDLEtBQUssQ0FBQyxLQUFLLEVBQUUsS0FBSyxDQUFDLENBQUM7SUFDakUsT0FBTyxvQkFBb0IsQ0FBQyxPQUFPLENBQUMsV0FBVyxDQUFDLENBQUMsQ0FBQyxDQUFDLFdBQVcsQ0FBQyxDQUFDLENBQUMsS0FBSyxDQUFDLENBQUM7QUFDMUUsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtDaGFuZ2VEZXRlY3RvclJlZiBhcyBWaWV3RW5naW5lX0NoYW5nZURldGVjdG9yUmVmfSBmcm9tICcuLi9jaGFuZ2VfZGV0ZWN0aW9uL2NoYW5nZV9kZXRlY3Rvcl9yZWYnO1xuaW1wb3J0IHtJbmplY3Rvcn0gZnJvbSAnLi4vZGkvaW5qZWN0b3InO1xuaW1wb3J0IHtDb21wb25lbnRGYWN0b3J5IGFzIHZpZXdFbmdpbmVfQ29tcG9uZW50RmFjdG9yeSwgQ29tcG9uZW50UmVmIGFzIHZpZXdFbmdpbmVfQ29tcG9uZW50UmVmfSBmcm9tICcuLi9saW5rZXIvY29tcG9uZW50X2ZhY3RvcnknO1xuaW1wb3J0IHtFbGVtZW50UmVmIGFzIFZpZXdFbmdpbmVfRWxlbWVudFJlZn0gZnJvbSAnLi4vbGlua2VyL2VsZW1lbnRfcmVmJztcbmltcG9ydCB7TmdNb2R1bGVSZWYgYXMgdmlld0VuZ2luZV9OZ01vZHVsZVJlZn0gZnJvbSAnLi4vbGlua2VyL25nX21vZHVsZV9mYWN0b3J5JztcbmltcG9ydCB7VGVtcGxhdGVSZWYgYXMgVmlld0VuZ2luZV9UZW1wbGF0ZVJlZn0gZnJvbSAnLi4vbGlua2VyL3RlbXBsYXRlX3JlZic7XG5pbXBvcnQge1ZpZXdDb250YWluZXJSZWYgYXMgVmlld0VuZ2luZV9WaWV3Q29udGFpbmVyUmVmfSBmcm9tICcuLi9saW5rZXIvdmlld19jb250YWluZXJfcmVmJztcbmltcG9ydCB7RW1iZWRkZWRWaWV3UmVmIGFzIHZpZXdFbmdpbmVfRW1iZWRkZWRWaWV3UmVmLCBWaWV3UmVmIGFzIHZpZXdFbmdpbmVfVmlld1JlZn0gZnJvbSAnLi4vbGlua2VyL3ZpZXdfcmVmJztcbmltcG9ydCB7UmVuZGVyZXIyfSBmcm9tICcuLi9yZW5kZXIvYXBpJztcbmltcG9ydCB7YWRkVG9BcnJheSwgcmVtb3ZlRnJvbUFycmF5fSBmcm9tICcuLi91dGlsL2FycmF5X3V0aWxzJztcbmltcG9ydCB7YXNzZXJ0RGVmaW5lZCwgYXNzZXJ0RXF1YWwsIGFzc2VydEdyZWF0ZXJUaGFuLCBhc3NlcnRMZXNzVGhhbn0gZnJvbSAnLi4vdXRpbC9hc3NlcnQnO1xuXG5pbXBvcnQge2Fzc2VydExDb250YWluZXJ9IGZyb20gJy4vYXNzZXJ0JztcbmltcG9ydCB7Tm9kZUluamVjdG9yLCBnZXRQYXJlbnRJbmplY3RvckxvY2F0aW9ufSBmcm9tICcuL2RpJztcbmltcG9ydCB7YWRkVG9WaWV3VHJlZSwgY3JlYXRlTENvbnRhaW5lciwgY3JlYXRlTFZpZXcsIHJlbmRlclZpZXd9IGZyb20gJy4vaW5zdHJ1Y3Rpb25zL3NoYXJlZCc7XG5pbXBvcnQge0FjdGl2ZUluZGV4RmxhZywgQ09OVEFJTkVSX0hFQURFUl9PRkZTRVQsIExDb250YWluZXIsIFZJRVdfUkVGU30gZnJvbSAnLi9pbnRlcmZhY2VzL2NvbnRhaW5lcic7XG5pbXBvcnQge1RDb250YWluZXJOb2RlLCBURGlyZWN0aXZlSG9zdE5vZGUsIFRFbGVtZW50Q29udGFpbmVyTm9kZSwgVEVsZW1lbnROb2RlLCBUTm9kZSwgVE5vZGVUeXBlLCBUVmlld05vZGV9IGZyb20gJy4vaW50ZXJmYWNlcy9ub2RlJztcbmltcG9ydCB7UkNvbW1lbnQsIFJFbGVtZW50LCBpc1Byb2NlZHVyYWxSZW5kZXJlcn0gZnJvbSAnLi9pbnRlcmZhY2VzL3JlbmRlcmVyJztcbmltcG9ydCB7aXNDb21wb25lbnRIb3N0LCBpc0xDb250YWluZXIsIGlzTFZpZXcsIGlzUm9vdFZpZXd9IGZyb20gJy4vaW50ZXJmYWNlcy90eXBlX2NoZWNrcyc7XG5pbXBvcnQge0RFQ0xBUkFUSU9OX0NPTVBPTkVOVF9WSUVXLCBERUNMQVJBVElPTl9MQ09OVEFJTkVSLCBMVmlldywgTFZpZXdGbGFncywgUEFSRU5ULCBRVUVSSUVTLCBSRU5ERVJFUiwgVFZJRVcsIFRWaWV3LCBUX0hPU1R9IGZyb20gJy4vaW50ZXJmYWNlcy92aWV3JztcbmltcG9ydCB7YXNzZXJ0Tm9kZU9mUG9zc2libGVUeXBlc30gZnJvbSAnLi9ub2RlX2Fzc2VydCc7XG5pbXBvcnQge2FkZFJlbW92ZVZpZXdGcm9tQ29udGFpbmVyLCBhcHBlbmRDaGlsZCwgZGV0YWNoVmlldywgZ2V0QmVmb3JlTm9kZUZvclZpZXcsIGluc2VydFZpZXcsIG5hdGl2ZUluc2VydEJlZm9yZSwgbmF0aXZlTmV4dFNpYmxpbmcsIG5hdGl2ZVBhcmVudE5vZGUsIHJlbW92ZVZpZXd9IGZyb20gJy4vbm9kZV9tYW5pcHVsYXRpb24nO1xuaW1wb3J0IHtnZXRQYXJlbnRJbmplY3RvclROb2RlfSBmcm9tICcuL25vZGVfdXRpbCc7XG5pbXBvcnQge2dldExWaWV3LCBnZXRQcmV2aW91c09yUGFyZW50VE5vZGV9IGZyb20gJy4vc3RhdGUnO1xuaW1wb3J0IHtnZXRQYXJlbnRJbmplY3RvclZpZXcsIGhhc1BhcmVudEluamVjdG9yfSBmcm9tICcuL3V0aWwvaW5qZWN0b3JfdXRpbHMnO1xuaW1wb3J0IHtnZXRDb21wb25lbnRMVmlld0J5SW5kZXgsIGdldE5hdGl2ZUJ5VE5vZGUsIHNldExDb250YWluZXJBY3RpdmVJbmRleCwgdW53cmFwUk5vZGUsIHZpZXdBdHRhY2hlZFRvQ29udGFpbmVyfSBmcm9tICcuL3V0aWwvdmlld191dGlscyc7XG5pbXBvcnQge1ZpZXdSZWZ9IGZyb20gJy4vdmlld19yZWYnO1xuXG5cblxuLyoqXG4gKiBDcmVhdGVzIGFuIEVsZW1lbnRSZWYgZnJvbSB0aGUgbW9zdCByZWNlbnQgbm9kZS5cbiAqXG4gKiBAcmV0dXJucyBUaGUgRWxlbWVudFJlZiBpbnN0YW5jZSB0byB1c2VcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGluamVjdEVsZW1lbnRSZWYoRWxlbWVudFJlZlRva2VuOiB0eXBlb2YgVmlld0VuZ2luZV9FbGVtZW50UmVmKTpcbiAgICBWaWV3RW5naW5lX0VsZW1lbnRSZWYge1xuICByZXR1cm4gY3JlYXRlRWxlbWVudFJlZihFbGVtZW50UmVmVG9rZW4sIGdldFByZXZpb3VzT3JQYXJlbnRUTm9kZSgpLCBnZXRMVmlldygpKTtcbn1cblxubGV0IFIzRWxlbWVudFJlZjoge25ldyAobmF0aXZlOiBSRWxlbWVudCB8IFJDb21tZW50KTogVmlld0VuZ2luZV9FbGVtZW50UmVmfTtcblxuLyoqXG4gKiBDcmVhdGVzIGFuIEVsZW1lbnRSZWYgZ2l2ZW4gYSBub2RlLlxuICpcbiAqIEBwYXJhbSBFbGVtZW50UmVmVG9rZW4gVGhlIEVsZW1lbnRSZWYgdHlwZVxuICogQHBhcmFtIHROb2RlIFRoZSBub2RlIGZvciB3aGljaCB5b3UnZCBsaWtlIGFuIEVsZW1lbnRSZWZcbiAqIEBwYXJhbSB2aWV3IFRoZSB2aWV3IHRvIHdoaWNoIHRoZSBub2RlIGJlbG9uZ3NcbiAqIEByZXR1cm5zIFRoZSBFbGVtZW50UmVmIGluc3RhbmNlIHRvIHVzZVxuICovXG5leHBvcnQgZnVuY3Rpb24gY3JlYXRlRWxlbWVudFJlZihcbiAgICBFbGVtZW50UmVmVG9rZW46IHR5cGVvZiBWaWV3RW5naW5lX0VsZW1lbnRSZWYsIHROb2RlOiBUTm9kZSxcbiAgICB2aWV3OiBMVmlldyk6IFZpZXdFbmdpbmVfRWxlbWVudFJlZiB7XG4gIGlmICghUjNFbGVtZW50UmVmKSB7XG4gICAgUjNFbGVtZW50UmVmID0gY2xhc3MgRWxlbWVudFJlZiBleHRlbmRzIEVsZW1lbnRSZWZUb2tlbiB7fTtcbiAgfVxuICByZXR1cm4gbmV3IFIzRWxlbWVudFJlZihnZXROYXRpdmVCeVROb2RlKHROb2RlLCB2aWV3KSBhcyBSRWxlbWVudCk7XG59XG5cbmxldCBSM1RlbXBsYXRlUmVmOiB7XG4gIG5ldyAoX2RlY2xhcmF0aW9uUGFyZW50VmlldzogTFZpZXcsIGhvc3RUTm9kZTogVENvbnRhaW5lck5vZGUsIGVsZW1lbnRSZWY6IFZpZXdFbmdpbmVfRWxlbWVudFJlZik6XG4gICAgICBWaWV3RW5naW5lX1RlbXBsYXRlUmVmPGFueT5cbn07XG5cbi8qKlxuICogQ3JlYXRlcyBhIFRlbXBsYXRlUmVmIGdpdmVuIGEgbm9kZS5cbiAqXG4gKiBAcmV0dXJucyBUaGUgVGVtcGxhdGVSZWYgaW5zdGFuY2UgdG8gdXNlXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBpbmplY3RUZW1wbGF0ZVJlZjxUPihcbiAgICBUZW1wbGF0ZVJlZlRva2VuOiB0eXBlb2YgVmlld0VuZ2luZV9UZW1wbGF0ZVJlZixcbiAgICBFbGVtZW50UmVmVG9rZW46IHR5cGVvZiBWaWV3RW5naW5lX0VsZW1lbnRSZWYpOiBWaWV3RW5naW5lX1RlbXBsYXRlUmVmPFQ+fG51bGwge1xuICByZXR1cm4gY3JlYXRlVGVtcGxhdGVSZWY8VD4oXG4gICAgICBUZW1wbGF0ZVJlZlRva2VuLCBFbGVtZW50UmVmVG9rZW4sIGdldFByZXZpb3VzT3JQYXJlbnRUTm9kZSgpLCBnZXRMVmlldygpKTtcbn1cblxuLyoqXG4gKiBDcmVhdGVzIGEgVGVtcGxhdGVSZWYgYW5kIHN0b3JlcyBpdCBvbiB0aGUgaW5qZWN0b3IuXG4gKlxuICogQHBhcmFtIFRlbXBsYXRlUmVmVG9rZW4gVGhlIFRlbXBsYXRlUmVmIHR5cGVcbiAqIEBwYXJhbSBFbGVtZW50UmVmVG9rZW4gVGhlIEVsZW1lbnRSZWYgdHlwZVxuICogQHBhcmFtIGhvc3RUTm9kZSBUaGUgbm9kZSBvbiB3aGljaCBhIFRlbXBsYXRlUmVmIGlzIHJlcXVlc3RlZFxuICogQHBhcmFtIGhvc3RWaWV3IFRoZSB2aWV3IHRvIHdoaWNoIHRoZSBub2RlIGJlbG9uZ3NcbiAqIEByZXR1cm5zIFRoZSBUZW1wbGF0ZVJlZiBpbnN0YW5jZSBvciBudWxsIGlmIHdlIGNhbid0IGNyZWF0ZSBhIFRlbXBsYXRlUmVmIG9uIGEgZ2l2ZW4gbm9kZSB0eXBlXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBjcmVhdGVUZW1wbGF0ZVJlZjxUPihcbiAgICBUZW1wbGF0ZVJlZlRva2VuOiB0eXBlb2YgVmlld0VuZ2luZV9UZW1wbGF0ZVJlZiwgRWxlbWVudFJlZlRva2VuOiB0eXBlb2YgVmlld0VuZ2luZV9FbGVtZW50UmVmLFxuICAgIGhvc3RUTm9kZTogVE5vZGUsIGhvc3RWaWV3OiBMVmlldyk6IFZpZXdFbmdpbmVfVGVtcGxhdGVSZWY8VD58bnVsbCB7XG4gIGlmICghUjNUZW1wbGF0ZVJlZikge1xuICAgIFIzVGVtcGxhdGVSZWYgPSBjbGFzcyBUZW1wbGF0ZVJlZjxUPiBleHRlbmRzIFRlbXBsYXRlUmVmVG9rZW48VD4ge1xuICAgICAgY29uc3RydWN0b3IoXG4gICAgICAgICAgcHJpdmF0ZSBfZGVjbGFyYXRpb25WaWV3OiBMVmlldywgcHJpdmF0ZSBfZGVjbGFyYXRpb25UQ29udGFpbmVyOiBUQ29udGFpbmVyTm9kZSxcbiAgICAgICAgICByZWFkb25seSBlbGVtZW50UmVmOiBWaWV3RW5naW5lX0VsZW1lbnRSZWYpIHtcbiAgICAgICAgc3VwZXIoKTtcbiAgICAgIH1cblxuICAgICAgY3JlYXRlRW1iZWRkZWRWaWV3KGNvbnRleHQ6IFQpOiB2aWV3RW5naW5lX0VtYmVkZGVkVmlld1JlZjxUPiB7XG4gICAgICAgIGNvbnN0IGVtYmVkZGVkVFZpZXcgPSB0aGlzLl9kZWNsYXJhdGlvblRDb250YWluZXIudFZpZXdzIGFzIFRWaWV3O1xuICAgICAgICBjb25zdCBlbWJlZGRlZExWaWV3ID0gY3JlYXRlTFZpZXcoXG4gICAgICAgICAgICB0aGlzLl9kZWNsYXJhdGlvblZpZXcsIGVtYmVkZGVkVFZpZXcsIGNvbnRleHQsIExWaWV3RmxhZ3MuQ2hlY2tBbHdheXMsIG51bGwsXG4gICAgICAgICAgICBlbWJlZGRlZFRWaWV3Lm5vZGUpO1xuXG4gICAgICAgIGNvbnN0IGRlY2xhcmF0aW9uTENvbnRhaW5lciA9IHRoaXMuX2RlY2xhcmF0aW9uVmlld1t0aGlzLl9kZWNsYXJhdGlvblRDb250YWluZXIuaW5kZXhdO1xuICAgICAgICBuZ0Rldk1vZGUgJiYgYXNzZXJ0TENvbnRhaW5lcihkZWNsYXJhdGlvbkxDb250YWluZXIpO1xuICAgICAgICBlbWJlZGRlZExWaWV3W0RFQ0xBUkFUSU9OX0xDT05UQUlORVJdID0gZGVjbGFyYXRpb25MQ29udGFpbmVyO1xuXG4gICAgICAgIGNvbnN0IGRlY2xhcmF0aW9uVmlld0xRdWVyaWVzID0gdGhpcy5fZGVjbGFyYXRpb25WaWV3W1FVRVJJRVNdO1xuICAgICAgICBpZiAoZGVjbGFyYXRpb25WaWV3TFF1ZXJpZXMgIT09IG51bGwpIHtcbiAgICAgICAgICBlbWJlZGRlZExWaWV3W1FVRVJJRVNdID0gZGVjbGFyYXRpb25WaWV3TFF1ZXJpZXMuY3JlYXRlRW1iZWRkZWRWaWV3KGVtYmVkZGVkVFZpZXcpO1xuICAgICAgICB9XG5cbiAgICAgICAgcmVuZGVyVmlldyhlbWJlZGRlZFRWaWV3LCBlbWJlZGRlZExWaWV3LCBjb250ZXh0KTtcblxuICAgICAgICBjb25zdCB2aWV3UmVmID0gbmV3IFZpZXdSZWY8VD4oZW1iZWRkZWRMVmlldyk7XG4gICAgICAgIHZpZXdSZWYuX3RWaWV3Tm9kZSA9IGVtYmVkZGVkTFZpZXdbVF9IT1NUXSBhcyBUVmlld05vZGU7XG4gICAgICAgIHJldHVybiB2aWV3UmVmO1xuICAgICAgfVxuICAgIH07XG4gIH1cblxuICBpZiAoaG9zdFROb2RlLnR5cGUgPT09IFROb2RlVHlwZS5Db250YWluZXIpIHtcbiAgICBuZ0Rldk1vZGUgJiYgYXNzZXJ0RGVmaW5lZChob3N0VE5vZGUudFZpZXdzLCAnVFZpZXcgbXVzdCBiZSBhbGxvY2F0ZWQnKTtcbiAgICByZXR1cm4gbmV3IFIzVGVtcGxhdGVSZWYoXG4gICAgICAgIGhvc3RWaWV3LCBob3N0VE5vZGUgYXMgVENvbnRhaW5lck5vZGUsXG4gICAgICAgIGNyZWF0ZUVsZW1lbnRSZWYoRWxlbWVudFJlZlRva2VuLCBob3N0VE5vZGUsIGhvc3RWaWV3KSk7XG4gIH0gZWxzZSB7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbn1cblxubGV0IFIzVmlld0NvbnRhaW5lclJlZjoge1xuICBuZXcgKFxuICAgICAgbENvbnRhaW5lcjogTENvbnRhaW5lciwgaG9zdFROb2RlOiBURWxlbWVudE5vZGUgfCBUQ29udGFpbmVyTm9kZSB8IFRFbGVtZW50Q29udGFpbmVyTm9kZSxcbiAgICAgIGhvc3RWaWV3OiBMVmlldyk6IFZpZXdFbmdpbmVfVmlld0NvbnRhaW5lclJlZlxufTtcblxuLyoqXG4gKiBDcmVhdGVzIGEgVmlld0NvbnRhaW5lclJlZiBhbmQgc3RvcmVzIGl0IG9uIHRoZSBpbmplY3Rvci4gT3IsIGlmIHRoZSBWaWV3Q29udGFpbmVyUmVmXG4gKiBhbHJlYWR5IGV4aXN0cywgcmV0cmlldmVzIHRoZSBleGlzdGluZyBWaWV3Q29udGFpbmVyUmVmLlxuICpcbiAqIEByZXR1cm5zIFRoZSBWaWV3Q29udGFpbmVyUmVmIGluc3RhbmNlIHRvIHVzZVxuICovXG5leHBvcnQgZnVuY3Rpb24gaW5qZWN0Vmlld0NvbnRhaW5lclJlZihcbiAgICBWaWV3Q29udGFpbmVyUmVmVG9rZW46IHR5cGVvZiBWaWV3RW5naW5lX1ZpZXdDb250YWluZXJSZWYsXG4gICAgRWxlbWVudFJlZlRva2VuOiB0eXBlb2YgVmlld0VuZ2luZV9FbGVtZW50UmVmKTogVmlld0VuZ2luZV9WaWV3Q29udGFpbmVyUmVmIHtcbiAgY29uc3QgcHJldmlvdXNUTm9kZSA9XG4gICAgICBnZXRQcmV2aW91c09yUGFyZW50VE5vZGUoKSBhcyBURWxlbWVudE5vZGUgfCBURWxlbWVudENvbnRhaW5lck5vZGUgfCBUQ29udGFpbmVyTm9kZTtcbiAgcmV0dXJuIGNyZWF0ZUNvbnRhaW5lclJlZihWaWV3Q29udGFpbmVyUmVmVG9rZW4sIEVsZW1lbnRSZWZUb2tlbiwgcHJldmlvdXNUTm9kZSwgZ2V0TFZpZXcoKSk7XG59XG5cbi8qKlxuICogQ3JlYXRlcyBhIFZpZXdDb250YWluZXJSZWYgYW5kIHN0b3JlcyBpdCBvbiB0aGUgaW5qZWN0b3IuXG4gKlxuICogQHBhcmFtIFZpZXdDb250YWluZXJSZWZUb2tlbiBUaGUgVmlld0NvbnRhaW5lclJlZiB0eXBlXG4gKiBAcGFyYW0gRWxlbWVudFJlZlRva2VuIFRoZSBFbGVtZW50UmVmIHR5cGVcbiAqIEBwYXJhbSBob3N0VE5vZGUgVGhlIG5vZGUgdGhhdCBpcyByZXF1ZXN0aW5nIGEgVmlld0NvbnRhaW5lclJlZlxuICogQHBhcmFtIGhvc3RWaWV3IFRoZSB2aWV3IHRvIHdoaWNoIHRoZSBub2RlIGJlbG9uZ3NcbiAqIEByZXR1cm5zIFRoZSBWaWV3Q29udGFpbmVyUmVmIGluc3RhbmNlIHRvIHVzZVxuICovXG5leHBvcnQgZnVuY3Rpb24gY3JlYXRlQ29udGFpbmVyUmVmKFxuICAgIFZpZXdDb250YWluZXJSZWZUb2tlbjogdHlwZW9mIFZpZXdFbmdpbmVfVmlld0NvbnRhaW5lclJlZixcbiAgICBFbGVtZW50UmVmVG9rZW46IHR5cGVvZiBWaWV3RW5naW5lX0VsZW1lbnRSZWYsXG4gICAgaG9zdFROb2RlOiBURWxlbWVudE5vZGV8VENvbnRhaW5lck5vZGV8VEVsZW1lbnRDb250YWluZXJOb2RlLFxuICAgIGhvc3RWaWV3OiBMVmlldyk6IFZpZXdFbmdpbmVfVmlld0NvbnRhaW5lclJlZiB7XG4gIGlmICghUjNWaWV3Q29udGFpbmVyUmVmKSB7XG4gICAgUjNWaWV3Q29udGFpbmVyUmVmID0gY2xhc3MgVmlld0NvbnRhaW5lclJlZiBleHRlbmRzIFZpZXdDb250YWluZXJSZWZUb2tlbiB7XG4gICAgICBjb25zdHJ1Y3RvcihcbiAgICAgICAgICBwcml2YXRlIF9sQ29udGFpbmVyOiBMQ29udGFpbmVyLFxuICAgICAgICAgIHByaXZhdGUgX2hvc3RUTm9kZTogVEVsZW1lbnROb2RlfFRDb250YWluZXJOb2RlfFRFbGVtZW50Q29udGFpbmVyTm9kZSxcbiAgICAgICAgICBwcml2YXRlIF9ob3N0VmlldzogTFZpZXcpIHtcbiAgICAgICAgc3VwZXIoKTtcbiAgICAgIH1cblxuICAgICAgZ2V0IGVsZW1lbnQoKTogVmlld0VuZ2luZV9FbGVtZW50UmVmIHtcbiAgICAgICAgcmV0dXJuIGNyZWF0ZUVsZW1lbnRSZWYoRWxlbWVudFJlZlRva2VuLCB0aGlzLl9ob3N0VE5vZGUsIHRoaXMuX2hvc3RWaWV3KTtcbiAgICAgIH1cblxuICAgICAgZ2V0IGluamVjdG9yKCk6IEluamVjdG9yIHsgcmV0dXJuIG5ldyBOb2RlSW5qZWN0b3IodGhpcy5faG9zdFROb2RlLCB0aGlzLl9ob3N0Vmlldyk7IH1cblxuICAgICAgLyoqIEBkZXByZWNhdGVkIE5vIHJlcGxhY2VtZW50ICovXG4gICAgICBnZXQgcGFyZW50SW5qZWN0b3IoKTogSW5qZWN0b3Ige1xuICAgICAgICBjb25zdCBwYXJlbnRMb2NhdGlvbiA9IGdldFBhcmVudEluamVjdG9yTG9jYXRpb24odGhpcy5faG9zdFROb2RlLCB0aGlzLl9ob3N0Vmlldyk7XG4gICAgICAgIGNvbnN0IHBhcmVudFZpZXcgPSBnZXRQYXJlbnRJbmplY3RvclZpZXcocGFyZW50TG9jYXRpb24sIHRoaXMuX2hvc3RWaWV3KTtcbiAgICAgICAgY29uc3QgcGFyZW50VE5vZGUgPSBnZXRQYXJlbnRJbmplY3RvclROb2RlKHBhcmVudExvY2F0aW9uLCB0aGlzLl9ob3N0VmlldywgdGhpcy5faG9zdFROb2RlKTtcblxuICAgICAgICByZXR1cm4gIWhhc1BhcmVudEluamVjdG9yKHBhcmVudExvY2F0aW9uKSB8fCBwYXJlbnRUTm9kZSA9PSBudWxsID9cbiAgICAgICAgICAgIG5ldyBOb2RlSW5qZWN0b3IobnVsbCwgdGhpcy5faG9zdFZpZXcpIDpcbiAgICAgICAgICAgIG5ldyBOb2RlSW5qZWN0b3IocGFyZW50VE5vZGUsIHBhcmVudFZpZXcpO1xuICAgICAgfVxuXG4gICAgICBjbGVhcigpOiB2b2lkIHtcbiAgICAgICAgd2hpbGUgKHRoaXMubGVuZ3RoID4gMCkge1xuICAgICAgICAgIHRoaXMucmVtb3ZlKHRoaXMubGVuZ3RoIC0gMSk7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgZ2V0KGluZGV4OiBudW1iZXIpOiB2aWV3RW5naW5lX1ZpZXdSZWZ8bnVsbCB7XG4gICAgICAgIHJldHVybiB0aGlzLl9sQ29udGFpbmVyW1ZJRVdfUkVGU10gIT09IG51bGwgJiYgdGhpcy5fbENvbnRhaW5lcltWSUVXX1JFRlNdICFbaW5kZXhdIHx8IG51bGw7XG4gICAgICB9XG5cbiAgICAgIGdldCBsZW5ndGgoKTogbnVtYmVyIHsgcmV0dXJuIHRoaXMuX2xDb250YWluZXIubGVuZ3RoIC0gQ09OVEFJTkVSX0hFQURFUl9PRkZTRVQ7IH1cblxuICAgICAgY3JlYXRlRW1iZWRkZWRWaWV3PEM+KHRlbXBsYXRlUmVmOiBWaWV3RW5naW5lX1RlbXBsYXRlUmVmPEM+LCBjb250ZXh0PzogQywgaW5kZXg/OiBudW1iZXIpOlxuICAgICAgICAgIHZpZXdFbmdpbmVfRW1iZWRkZWRWaWV3UmVmPEM+IHtcbiAgICAgICAgY29uc3Qgdmlld1JlZiA9IHRlbXBsYXRlUmVmLmNyZWF0ZUVtYmVkZGVkVmlldyhjb250ZXh0IHx8IDxhbnk+e30pO1xuICAgICAgICB0aGlzLmluc2VydCh2aWV3UmVmLCBpbmRleCk7XG4gICAgICAgIHJldHVybiB2aWV3UmVmO1xuICAgICAgfVxuXG4gICAgICBjcmVhdGVDb21wb25lbnQ8Qz4oXG4gICAgICAgICAgY29tcG9uZW50RmFjdG9yeTogdmlld0VuZ2luZV9Db21wb25lbnRGYWN0b3J5PEM+LCBpbmRleD86IG51bWJlcnx1bmRlZmluZWQsXG4gICAgICAgICAgaW5qZWN0b3I/OiBJbmplY3Rvcnx1bmRlZmluZWQsIHByb2plY3RhYmxlTm9kZXM/OiBhbnlbXVtdfHVuZGVmaW5lZCxcbiAgICAgICAgICBuZ01vZHVsZVJlZj86IHZpZXdFbmdpbmVfTmdNb2R1bGVSZWY8YW55Pnx1bmRlZmluZWQpOiB2aWV3RW5naW5lX0NvbXBvbmVudFJlZjxDPiB7XG4gICAgICAgIGNvbnN0IGNvbnRleHRJbmplY3RvciA9IGluamVjdG9yIHx8IHRoaXMucGFyZW50SW5qZWN0b3I7XG4gICAgICAgIGlmICghbmdNb2R1bGVSZWYgJiYgKGNvbXBvbmVudEZhY3RvcnkgYXMgYW55KS5uZ01vZHVsZSA9PSBudWxsICYmIGNvbnRleHRJbmplY3Rvcikge1xuICAgICAgICAgIC8vIERPIE5PVCBSRUZBQ1RPUi4gVGhlIGNvZGUgaGVyZSB1c2VkIHRvIGhhdmUgYSBgdmFsdWUgfHwgdW5kZWZpbmVkYCBleHByZXNzaW9uXG4gICAgICAgICAgLy8gd2hpY2ggc2VlbXMgdG8gY2F1c2UgaW50ZXJuYWwgZ29vZ2xlIGFwcHMgdG8gZmFpbC4gVGhpcyBpcyBkb2N1bWVudGVkIGluIHRoZVxuICAgICAgICAgIC8vIGZvbGxvd2luZyBpbnRlcm5hbCBidWcgaXNzdWU6IGdvL2IvMTQyOTY3ODAyXG4gICAgICAgICAgY29uc3QgcmVzdWx0ID0gY29udGV4dEluamVjdG9yLmdldCh2aWV3RW5naW5lX05nTW9kdWxlUmVmLCBudWxsKTtcbiAgICAgICAgICBpZiAocmVzdWx0KSB7XG4gICAgICAgICAgICBuZ01vZHVsZVJlZiA9IHJlc3VsdDtcbiAgICAgICAgICB9XG4gICAgICAgIH1cblxuICAgICAgICBjb25zdCBjb21wb25lbnRSZWYgPVxuICAgICAgICAgICAgY29tcG9uZW50RmFjdG9yeS5jcmVhdGUoY29udGV4dEluamVjdG9yLCBwcm9qZWN0YWJsZU5vZGVzLCB1bmRlZmluZWQsIG5nTW9kdWxlUmVmKTtcbiAgICAgICAgdGhpcy5pbnNlcnQoY29tcG9uZW50UmVmLmhvc3RWaWV3LCBpbmRleCk7XG4gICAgICAgIHJldHVybiBjb21wb25lbnRSZWY7XG4gICAgICB9XG5cbiAgICAgIGluc2VydCh2aWV3UmVmOiB2aWV3RW5naW5lX1ZpZXdSZWYsIGluZGV4PzogbnVtYmVyKTogdmlld0VuZ2luZV9WaWV3UmVmIHtcbiAgICAgICAgY29uc3QgbFZpZXcgPSAodmlld1JlZiBhcyBWaWV3UmVmPGFueT4pLl9sVmlldyAhO1xuICAgICAgICBjb25zdCB0VmlldyA9IGxWaWV3W1RWSUVXXTtcblxuICAgICAgICBpZiAodmlld1JlZi5kZXN0cm95ZWQpIHtcbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoJ0Nhbm5vdCBpbnNlcnQgYSBkZXN0cm95ZWQgVmlldyBpbiBhIFZpZXdDb250YWluZXIhJyk7XG4gICAgICAgIH1cblxuICAgICAgICB0aGlzLmFsbG9jYXRlQ29udGFpbmVySWZOZWVkZWQoKTtcblxuICAgICAgICBpZiAodmlld0F0dGFjaGVkVG9Db250YWluZXIobFZpZXcpKSB7XG4gICAgICAgICAgLy8gSWYgdmlldyBpcyBhbHJlYWR5IGF0dGFjaGVkLCBkZXRhY2ggaXQgZmlyc3Qgc28gd2UgY2xlYW4gdXAgcmVmZXJlbmNlcyBhcHByb3ByaWF0ZWx5LlxuXG4gICAgICAgICAgY29uc3QgcHJldklkeCA9IHRoaXMuaW5kZXhPZih2aWV3UmVmKTtcblxuICAgICAgICAgIC8vIEEgdmlldyBtaWdodCBiZSBhdHRhY2hlZCBlaXRoZXIgdG8gdGhpcyBvciBhIGRpZmZlcmVudCBjb250YWluZXIuIFRoZSBgcHJldklkeGAgZm9yXG4gICAgICAgICAgLy8gdGhvc2UgY2FzZXMgd2lsbCBiZTpcbiAgICAgICAgICAvLyBlcXVhbCB0byAtMSBmb3Igdmlld3MgYXR0YWNoZWQgdG8gdGhpcyBWaWV3Q29udGFpbmVyUmVmXG4gICAgICAgICAgLy8gPj0gMCBmb3Igdmlld3MgYXR0YWNoZWQgdG8gYSBkaWZmZXJlbnQgVmlld0NvbnRhaW5lclJlZlxuICAgICAgICAgIGlmIChwcmV2SWR4ICE9PSAtMSkge1xuICAgICAgICAgICAgdGhpcy5kZXRhY2gocHJldklkeCk7XG4gICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIGNvbnN0IHByZXZMQ29udGFpbmVyID0gbFZpZXdbUEFSRU5UXSBhcyBMQ29udGFpbmVyO1xuICAgICAgICAgICAgbmdEZXZNb2RlICYmIGFzc2VydEVxdWFsKFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpc0xDb250YWluZXIocHJldkxDb250YWluZXIpLCB0cnVlLFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAnQW4gYXR0YWNoZWQgdmlldyBzaG91bGQgaGF2ZSBpdHMgUEFSRU5UIHBvaW50IHRvIGEgY29udGFpbmVyLicpO1xuXG5cbiAgICAgICAgICAgIC8vIFdlIG5lZWQgdG8gcmUtY3JlYXRlIGEgUjNWaWV3Q29udGFpbmVyUmVmIGluc3RhbmNlIHNpbmNlIHRob3NlIGFyZSBub3Qgc3RvcmVkIG9uXG4gICAgICAgICAgICAvLyBMVmlldyAobm9yIGFueXdoZXJlIGVsc2UpLlxuICAgICAgICAgICAgY29uc3QgcHJldlZDUmVmID0gbmV3IFIzVmlld0NvbnRhaW5lclJlZihcbiAgICAgICAgICAgICAgICBwcmV2TENvbnRhaW5lciwgcHJldkxDb250YWluZXJbVF9IT1NUXSBhcyBURGlyZWN0aXZlSG9zdE5vZGUsXG4gICAgICAgICAgICAgICAgcHJldkxDb250YWluZXJbUEFSRU5UXSk7XG5cbiAgICAgICAgICAgIHByZXZWQ1JlZi5kZXRhY2gocHJldlZDUmVmLmluZGV4T2Yodmlld1JlZikpO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIGNvbnN0IGFkanVzdGVkSWR4ID0gdGhpcy5fYWRqdXN0SW5kZXgoaW5kZXgpO1xuICAgICAgICBpbnNlcnRWaWV3KHRWaWV3LCBsVmlldywgdGhpcy5fbENvbnRhaW5lciwgYWRqdXN0ZWRJZHgpO1xuXG4gICAgICAgIGNvbnN0IGJlZm9yZU5vZGUgPSBnZXRCZWZvcmVOb2RlRm9yVmlldyhhZGp1c3RlZElkeCwgdGhpcy5fbENvbnRhaW5lcik7XG4gICAgICAgIGFkZFJlbW92ZVZpZXdGcm9tQ29udGFpbmVyKHRWaWV3LCBsVmlldywgdHJ1ZSwgYmVmb3JlTm9kZSk7XG5cbiAgICAgICAgKHZpZXdSZWYgYXMgVmlld1JlZjxhbnk+KS5hdHRhY2hUb1ZpZXdDb250YWluZXJSZWYodGhpcyk7XG4gICAgICAgIGFkZFRvQXJyYXkodGhpcy5fbENvbnRhaW5lcltWSUVXX1JFRlNdICEsIGFkanVzdGVkSWR4LCB2aWV3UmVmKTtcblxuICAgICAgICByZXR1cm4gdmlld1JlZjtcbiAgICAgIH1cblxuICAgICAgbW92ZSh2aWV3UmVmOiB2aWV3RW5naW5lX1ZpZXdSZWYsIG5ld0luZGV4OiBudW1iZXIpOiB2aWV3RW5naW5lX1ZpZXdSZWYge1xuICAgICAgICBpZiAodmlld1JlZi5kZXN0cm95ZWQpIHtcbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoJ0Nhbm5vdCBtb3ZlIGEgZGVzdHJveWVkIFZpZXcgaW4gYSBWaWV3Q29udGFpbmVyIScpO1xuICAgICAgICB9XG4gICAgICAgIHJldHVybiB0aGlzLmluc2VydCh2aWV3UmVmLCBuZXdJbmRleCk7XG4gICAgICB9XG5cbiAgICAgIGluZGV4T2Yodmlld1JlZjogdmlld0VuZ2luZV9WaWV3UmVmKTogbnVtYmVyIHtcbiAgICAgICAgY29uc3Qgdmlld1JlZnNBcnIgPSB0aGlzLl9sQ29udGFpbmVyW1ZJRVdfUkVGU107XG4gICAgICAgIHJldHVybiB2aWV3UmVmc0FyciAhPT0gbnVsbCA/IHZpZXdSZWZzQXJyLmluZGV4T2Yodmlld1JlZikgOiAtMTtcbiAgICAgIH1cblxuICAgICAgcmVtb3ZlKGluZGV4PzogbnVtYmVyKTogdm9pZCB7XG4gICAgICAgIHRoaXMuYWxsb2NhdGVDb250YWluZXJJZk5lZWRlZCgpO1xuICAgICAgICBjb25zdCBhZGp1c3RlZElkeCA9IHRoaXMuX2FkanVzdEluZGV4KGluZGV4LCAtMSk7XG4gICAgICAgIHJlbW92ZVZpZXcodGhpcy5fbENvbnRhaW5lciwgYWRqdXN0ZWRJZHgpO1xuICAgICAgICByZW1vdmVGcm9tQXJyYXkodGhpcy5fbENvbnRhaW5lcltWSUVXX1JFRlNdICEsIGFkanVzdGVkSWR4KTtcbiAgICAgIH1cblxuICAgICAgZGV0YWNoKGluZGV4PzogbnVtYmVyKTogdmlld0VuZ2luZV9WaWV3UmVmfG51bGwge1xuICAgICAgICB0aGlzLmFsbG9jYXRlQ29udGFpbmVySWZOZWVkZWQoKTtcbiAgICAgICAgY29uc3QgYWRqdXN0ZWRJZHggPSB0aGlzLl9hZGp1c3RJbmRleChpbmRleCwgLTEpO1xuICAgICAgICBjb25zdCB2aWV3ID0gZGV0YWNoVmlldyh0aGlzLl9sQ29udGFpbmVyLCBhZGp1c3RlZElkeCk7XG5cbiAgICAgICAgY29uc3Qgd2FzRGV0YWNoZWQgPVxuICAgICAgICAgICAgdmlldyAmJiByZW1vdmVGcm9tQXJyYXkodGhpcy5fbENvbnRhaW5lcltWSUVXX1JFRlNdICEsIGFkanVzdGVkSWR4KSAhPSBudWxsO1xuICAgICAgICByZXR1cm4gd2FzRGV0YWNoZWQgPyBuZXcgVmlld1JlZih2aWV3ICEpIDogbnVsbDtcbiAgICAgIH1cblxuICAgICAgcHJpdmF0ZSBfYWRqdXN0SW5kZXgoaW5kZXg/OiBudW1iZXIsIHNoaWZ0OiBudW1iZXIgPSAwKSB7XG4gICAgICAgIGlmIChpbmRleCA9PSBudWxsKSB7XG4gICAgICAgICAgcmV0dXJuIHRoaXMubGVuZ3RoICsgc2hpZnQ7XG4gICAgICAgIH1cbiAgICAgICAgaWYgKG5nRGV2TW9kZSkge1xuICAgICAgICAgIGFzc2VydEdyZWF0ZXJUaGFuKGluZGV4LCAtMSwgYFZpZXdSZWYgaW5kZXggbXVzdCBiZSBwb3NpdGl2ZSwgZ290ICR7aW5kZXh9YCk7XG4gICAgICAgICAgLy8gKzEgYmVjYXVzZSBpdCdzIGxlZ2FsIHRvIGluc2VydCBhdCB0aGUgZW5kLlxuICAgICAgICAgIGFzc2VydExlc3NUaGFuKGluZGV4LCB0aGlzLmxlbmd0aCArIDEgKyBzaGlmdCwgJ2luZGV4Jyk7XG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuIGluZGV4O1xuICAgICAgfVxuXG4gICAgICBwcml2YXRlIGFsbG9jYXRlQ29udGFpbmVySWZOZWVkZWQoKTogdm9pZCB7XG4gICAgICAgIGlmICh0aGlzLl9sQ29udGFpbmVyW1ZJRVdfUkVGU10gPT09IG51bGwpIHtcbiAgICAgICAgICB0aGlzLl9sQ29udGFpbmVyW1ZJRVdfUkVGU10gPSBbXTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH07XG4gIH1cblxuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0Tm9kZU9mUG9zc2libGVUeXBlcyhcbiAgICAgICAgICAgICAgICAgICBob3N0VE5vZGUsIFROb2RlVHlwZS5Db250YWluZXIsIFROb2RlVHlwZS5FbGVtZW50LCBUTm9kZVR5cGUuRWxlbWVudENvbnRhaW5lcik7XG5cbiAgbGV0IGxDb250YWluZXI6IExDb250YWluZXI7XG4gIGNvbnN0IHNsb3RWYWx1ZSA9IGhvc3RWaWV3W2hvc3RUTm9kZS5pbmRleF07XG4gIGlmIChpc0xDb250YWluZXIoc2xvdFZhbHVlKSkge1xuICAgIC8vIElmIHRoZSBob3N0IGlzIGEgY29udGFpbmVyLCB3ZSBkb24ndCBuZWVkIHRvIGNyZWF0ZSBhIG5ldyBMQ29udGFpbmVyXG4gICAgbENvbnRhaW5lciA9IHNsb3RWYWx1ZTtcbiAgICBzZXRMQ29udGFpbmVyQWN0aXZlSW5kZXgobENvbnRhaW5lciwgQWN0aXZlSW5kZXhGbGFnLkRZTkFNSUNfRU1CRURERURfVklFV1NfT05MWSk7XG4gIH0gZWxzZSB7XG4gICAgbGV0IGNvbW1lbnROb2RlOiBSQ29tbWVudDtcbiAgICAvLyBJZiB0aGUgaG9zdCBpcyBhbiBlbGVtZW50IGNvbnRhaW5lciwgdGhlIG5hdGl2ZSBob3N0IGVsZW1lbnQgaXMgZ3VhcmFudGVlZCB0byBiZSBhXG4gICAgLy8gY29tbWVudCBhbmQgd2UgY2FuIHJldXNlIHRoYXQgY29tbWVudCBhcyBhbmNob3IgZWxlbWVudCBmb3IgdGhlIG5ldyBMQ29udGFpbmVyLlxuICAgIC8vIFRoZSBjb21tZW50IG5vZGUgaW4gcXVlc3Rpb24gaXMgYWxyZWFkeSBwYXJ0IG9mIHRoZSBET00gc3RydWN0dXJlIHNvIHdlIGRvbid0IG5lZWQgdG8gYXBwZW5kXG4gICAgLy8gaXQgYWdhaW4uXG4gICAgaWYgKGhvc3RUTm9kZS50eXBlID09PSBUTm9kZVR5cGUuRWxlbWVudENvbnRhaW5lcikge1xuICAgICAgY29tbWVudE5vZGUgPSB1bndyYXBSTm9kZShzbG90VmFsdWUpIGFzIFJDb21tZW50O1xuICAgIH0gZWxzZSB7XG4gICAgICBuZ0Rldk1vZGUgJiYgbmdEZXZNb2RlLnJlbmRlcmVyQ3JlYXRlQ29tbWVudCsrO1xuICAgICAgY29tbWVudE5vZGUgPSBob3N0Vmlld1tSRU5ERVJFUl0uY3JlYXRlQ29tbWVudChuZ0Rldk1vZGUgPyAnY29udGFpbmVyJyA6ICcnKTtcblxuICAgICAgLy8gQSBgVmlld0NvbnRhaW5lclJlZmAgY2FuIGJlIGluamVjdGVkIGJ5IHRoZSByb290ICh0b3Btb3N0IC8gYm9vdHN0cmFwcGVkKSBjb21wb25lbnQuIEluXG4gICAgICAvLyB0aGlzIGNhc2Ugd2UgY2FuJ3QgdXNlIFRWaWV3IC8gVE5vZGUgZGF0YSBzdHJ1Y3R1cmVzIHRvIGluc2VydCBjb250YWluZXIncyBtYXJrZXIgbm9kZVxuICAgICAgLy8gKGJvdGggYSBwYXJlbnQgb2YgYSBjb21tZW50IG5vZGUgYW5kIHRoZSBjb21tZW50IG5vZGUgaXRzZWxmIGFyZSBub3QgcGFydCBvZiBhbnkgdmlldykuIEluXG4gICAgICAvLyB0aGlzIHNwZWNpZmljIGNhc2Ugd2UgdXNlIGxvdy1sZXZlbCBET00gbWFuaXB1bGF0aW9uIHRvIGluc2VydCBjb250YWluZXIncyBtYXJrZXIgKGNvbW1lbnQpXG4gICAgICAvLyBub2RlLlxuICAgICAgaWYgKGlzUm9vdFZpZXcoaG9zdFZpZXcpKSB7XG4gICAgICAgIGNvbnN0IHJlbmRlcmVyID0gaG9zdFZpZXdbUkVOREVSRVJdO1xuICAgICAgICBjb25zdCBob3N0TmF0aXZlID0gZ2V0TmF0aXZlQnlUTm9kZShob3N0VE5vZGUsIGhvc3RWaWV3KSAhO1xuICAgICAgICBjb25zdCBwYXJlbnRPZkhvc3ROYXRpdmUgPSBuYXRpdmVQYXJlbnROb2RlKHJlbmRlcmVyLCBob3N0TmF0aXZlKTtcbiAgICAgICAgbmF0aXZlSW5zZXJ0QmVmb3JlKFxuICAgICAgICAgICAgcmVuZGVyZXIsIHBhcmVudE9mSG9zdE5hdGl2ZSAhLCBjb21tZW50Tm9kZSwgbmF0aXZlTmV4dFNpYmxpbmcocmVuZGVyZXIsIGhvc3ROYXRpdmUpKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIGFwcGVuZENoaWxkKGhvc3RWaWV3W1RWSUVXXSwgaG9zdFZpZXcsIGNvbW1lbnROb2RlLCBob3N0VE5vZGUpO1xuICAgICAgfVxuICAgIH1cblxuICAgIGhvc3RWaWV3W2hvc3RUTm9kZS5pbmRleF0gPSBsQ29udGFpbmVyID1cbiAgICAgICAgY3JlYXRlTENvbnRhaW5lcihzbG90VmFsdWUsIGhvc3RWaWV3LCBjb21tZW50Tm9kZSwgaG9zdFROb2RlKTtcblxuICAgIGFkZFRvVmlld1RyZWUoaG9zdFZpZXcsIGxDb250YWluZXIpO1xuICB9XG5cbiAgcmV0dXJuIG5ldyBSM1ZpZXdDb250YWluZXJSZWYobENvbnRhaW5lciwgaG9zdFROb2RlLCBob3N0Vmlldyk7XG59XG5cblxuLyoqIFJldHVybnMgYSBDaGFuZ2VEZXRlY3RvclJlZiAoYS5rLmEuIGEgVmlld1JlZikgKi9cbmV4cG9ydCBmdW5jdGlvbiBpbmplY3RDaGFuZ2VEZXRlY3RvclJlZihpc1BpcGUgPSBmYWxzZSk6IFZpZXdFbmdpbmVfQ2hhbmdlRGV0ZWN0b3JSZWYge1xuICByZXR1cm4gY3JlYXRlVmlld1JlZihnZXRQcmV2aW91c09yUGFyZW50VE5vZGUoKSwgZ2V0TFZpZXcoKSwgaXNQaXBlKTtcbn1cblxuLyoqXG4gKiBDcmVhdGVzIGEgVmlld1JlZiBhbmQgc3RvcmVzIGl0IG9uIHRoZSBpbmplY3RvciBhcyBDaGFuZ2VEZXRlY3RvclJlZiAocHVibGljIGFsaWFzKS5cbiAqXG4gKiBAcGFyYW0gdE5vZGUgVGhlIG5vZGUgdGhhdCBpcyByZXF1ZXN0aW5nIGEgQ2hhbmdlRGV0ZWN0b3JSZWZcbiAqIEBwYXJhbSBsVmlldyBUaGUgdmlldyB0byB3aGljaCB0aGUgbm9kZSBiZWxvbmdzXG4gKiBAcGFyYW0gaXNQaXBlIFdoZXRoZXIgdGhlIHZpZXcgaXMgYmVpbmcgaW5qZWN0ZWQgaW50byBhIHBpcGUuXG4gKiBAcmV0dXJucyBUaGUgQ2hhbmdlRGV0ZWN0b3JSZWYgdG8gdXNlXG4gKi9cbmZ1bmN0aW9uIGNyZWF0ZVZpZXdSZWYodE5vZGU6IFROb2RlLCBsVmlldzogTFZpZXcsIGlzUGlwZTogYm9vbGVhbik6IFZpZXdFbmdpbmVfQ2hhbmdlRGV0ZWN0b3JSZWYge1xuICAvLyBgaXNDb21wb25lbnRWaWV3YCB3aWxsIGJlIHRydWUgZm9yIENvbXBvbmVudCBhbmQgRGlyZWN0aXZlcyAoYnV0IG5vdCBmb3IgUGlwZXMpLlxuICAvLyBTZWUgaHR0cHM6Ly9naXRodWIuY29tL2FuZ3VsYXIvYW5ndWxhci9wdWxsLzMzMDcyIGZvciBwcm9wZXIgZml4XG4gIGNvbnN0IGlzQ29tcG9uZW50VmlldyA9ICFpc1BpcGUgJiYgaXNDb21wb25lbnRIb3N0KHROb2RlKTtcbiAgaWYgKGlzQ29tcG9uZW50Vmlldykge1xuICAgIC8vIFRoZSBMVmlldyByZXByZXNlbnRzIHRoZSBsb2NhdGlvbiB3aGVyZSB0aGUgY29tcG9uZW50IGlzIGRlY2xhcmVkLlxuICAgIC8vIEluc3RlYWQgd2Ugd2FudCB0aGUgTFZpZXcgZm9yIHRoZSBjb21wb25lbnQgVmlldyBhbmQgc28gd2UgbmVlZCB0byBsb29rIGl0IHVwLlxuICAgIGNvbnN0IGNvbXBvbmVudFZpZXcgPSBnZXRDb21wb25lbnRMVmlld0J5SW5kZXgodE5vZGUuaW5kZXgsIGxWaWV3KTsgIC8vIGxvb2sgZG93blxuICAgIHJldHVybiBuZXcgVmlld1JlZihjb21wb25lbnRWaWV3LCBjb21wb25lbnRWaWV3KTtcbiAgfSBlbHNlIGlmIChcbiAgICAgIHROb2RlLnR5cGUgPT09IFROb2RlVHlwZS5FbGVtZW50IHx8IHROb2RlLnR5cGUgPT09IFROb2RlVHlwZS5Db250YWluZXIgfHxcbiAgICAgIHROb2RlLnR5cGUgPT09IFROb2RlVHlwZS5FbGVtZW50Q29udGFpbmVyIHx8IHROb2RlLnR5cGUgPT09IFROb2RlVHlwZS5JY3VDb250YWluZXIpIHtcbiAgICAvLyBUaGUgTFZpZXcgcmVwcmVzZW50cyB0aGUgbG9jYXRpb24gd2hlcmUgdGhlIGluamVjdGlvbiBpcyByZXF1ZXN0ZWQgZnJvbS5cbiAgICAvLyBXZSBuZWVkIHRvIGxvY2F0ZSB0aGUgY29udGFpbmluZyBMVmlldyAoaW4gY2FzZSB3aGVyZSB0aGUgYGxWaWV3YCBpcyBhbiBlbWJlZGRlZCB2aWV3KVxuICAgIGNvbnN0IGhvc3RDb21wb25lbnRWaWV3ID0gbFZpZXdbREVDTEFSQVRJT05fQ09NUE9ORU5UX1ZJRVddOyAgLy8gbG9vayB1cFxuICAgIHJldHVybiBuZXcgVmlld1JlZihob3N0Q29tcG9uZW50VmlldywgbFZpZXcpO1xuICB9XG4gIHJldHVybiBudWxsICE7XG59XG5cbi8qKiBSZXR1cm5zIGEgUmVuZGVyZXIyIChvciB0aHJvd3Mgd2hlbiBhcHBsaWNhdGlvbiB3YXMgYm9vdHN0cmFwcGVkIHdpdGggUmVuZGVyZXIzKSAqL1xuZnVuY3Rpb24gZ2V0T3JDcmVhdGVSZW5kZXJlcjIodmlldzogTFZpZXcpOiBSZW5kZXJlcjIge1xuICBjb25zdCByZW5kZXJlciA9IHZpZXdbUkVOREVSRVJdO1xuICBpZiAoaXNQcm9jZWR1cmFsUmVuZGVyZXIocmVuZGVyZXIpKSB7XG4gICAgcmV0dXJuIHJlbmRlcmVyIGFzIFJlbmRlcmVyMjtcbiAgfSBlbHNlIHtcbiAgICB0aHJvdyBuZXcgRXJyb3IoJ0Nhbm5vdCBpbmplY3QgUmVuZGVyZXIyIHdoZW4gdGhlIGFwcGxpY2F0aW9uIHVzZXMgUmVuZGVyZXIzIScpO1xuICB9XG59XG5cbi8qKiBJbmplY3RzIGEgUmVuZGVyZXIyIGZvciB0aGUgY3VycmVudCBjb21wb25lbnQuICovXG5leHBvcnQgZnVuY3Rpb24gaW5qZWN0UmVuZGVyZXIyKCk6IFJlbmRlcmVyMiB7XG4gIC8vIFdlIG5lZWQgdGhlIFJlbmRlcmVyIHRvIGJlIGJhc2VkIG9uIHRoZSBjb21wb25lbnQgdGhhdCBpdCdzIGJlaW5nIGluamVjdGVkIGludG8sIGhvd2V2ZXIgc2luY2VcbiAgLy8gREkgaGFwcGVucyBiZWZvcmUgd2UndmUgZW50ZXJlZCBpdHMgdmlldywgYGdldExWaWV3YCB3aWxsIHJldHVybiB0aGUgcGFyZW50IHZpZXcgaW5zdGVhZC5cbiAgY29uc3QgbFZpZXcgPSBnZXRMVmlldygpO1xuICBjb25zdCB0Tm9kZSA9IGdldFByZXZpb3VzT3JQYXJlbnRUTm9kZSgpO1xuICBjb25zdCBub2RlQXRJbmRleCA9IGdldENvbXBvbmVudExWaWV3QnlJbmRleCh0Tm9kZS5pbmRleCwgbFZpZXcpO1xuICByZXR1cm4gZ2V0T3JDcmVhdGVSZW5kZXJlcjIoaXNMVmlldyhub2RlQXRJbmRleCkgPyBub2RlQXRJbmRleCA6IGxWaWV3KTtcbn1cbiJdfQ==