/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/util/discovery_utils.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Injector } from '../../di/injector';
import { assertLView } from '../assert';
import { discoverLocalRefs, getComponentAtNodeIndex, getDirectivesAtNodeIndex, getLContext } from '../context_discovery';
import { NodeInjector } from '../di';
import { buildDebugNode } from '../instructions/lview_debug';
import { isLView } from '../interfaces/type_checks';
import { CLEANUP, CONTEXT, FLAGS, HEADER_OFFSET, HOST, TVIEW, T_HOST } from '../interfaces/view';
import { stringifyForError } from './misc_utils';
import { getLViewParent, getRootContext } from './view_traversal_utils';
import { getTNode, unwrapRNode } from './view_utils';
/**
 * Retrieves the component instance associated with a given DOM element.
 *
 * \@usageNotes
 * Given the following DOM structure:
 * ```html
 * <my-app>
 *   <div>
 *     <child-comp></child-comp>
 *   </div>
 * </my-app>
 * ```
 * Calling `getComponent` on `<child-comp>` will return the instance of `ChildComponent`
 * associated with this DOM element.
 *
 * Calling the function on `<my-app>` will return the `MyApp` instance.
 *
 *
 * \@publicApi
 * \@globalApi ng
 * @template T
 * @param {?} element DOM element from which the component should be retrieved.
 * @return {?} Component instance associated with the element or `null` if there
 *    is no component associated with it.
 *
 */
export function getComponent(element) {
    assertDomElement(element);
    /** @type {?} */
    const context = loadLContext(element, false);
    if (context === null)
        return null;
    if (context.component === undefined) {
        context.component = getComponentAtNodeIndex(context.nodeIndex, context.lView);
    }
    return (/** @type {?} */ (context.component));
}
/**
 * If inside an embedded view (e.g. `*ngIf` or `*ngFor`), retrieves the context of the embedded
 * view that the element is part of. Otherwise retrieves the instance of the component whose view
 * owns the element (in this case, the result is the same as calling `getOwningComponent`).
 *
 * \@publicApi
 * \@globalApi ng
 * @template T
 * @param {?} element Element for which to get the surrounding component instance.
 * @return {?} Instance of the component that is around the element or null if the element isn't
 *    inside any component.
 *
 */
export function getContext(element) {
    assertDomElement(element);
    /** @type {?} */
    const context = loadLContext(element, false);
    return context === null ? null : (/** @type {?} */ (context.lView[CONTEXT]));
}
/**
 * Retrieves the component instance whose view contains the DOM element.
 *
 * For example, if `<child-comp>` is used in the template of `<app-comp>`
 * (i.e. a `ViewChild` of `<app-comp>`), calling `getOwningComponent` on `<child-comp>`
 * would return `<app-comp>`.
 *
 * \@publicApi
 * \@globalApi ng
 * @template T
 * @param {?} elementOrDir DOM element, component or directive instance
 *    for which to retrieve the root components.
 * @return {?} Component instance whose view owns the DOM element or null if the element is not
 *    part of a component view.
 *
 */
export function getOwningComponent(elementOrDir) {
    /** @type {?} */
    const context = loadLContext(elementOrDir, false);
    if (context === null)
        return null;
    /** @type {?} */
    let lView = context.lView;
    /** @type {?} */
    let parent;
    ngDevMode && assertLView(lView);
    while (lView[HOST] === null && (parent = (/** @type {?} */ (getLViewParent(lView))))) {
        // As long as lView[HOST] is null we know we are part of sub-template such as `*ngIf`
        lView = parent;
    }
    return lView[FLAGS] & 512 /* IsRoot */ ? null : (/** @type {?} */ (lView[CONTEXT]));
}
/**
 * Retrieves all root components associated with a DOM element, directive or component instance.
 * Root components are those which have been bootstrapped by Angular.
 *
 * \@publicApi
 * \@globalApi ng
 * @param {?} elementOrDir DOM element, component or directive instance
 *    for which to retrieve the root components.
 * @return {?} Root components associated with the target object.
 *
 */
export function getRootComponents(elementOrDir) {
    return [...getRootContext(elementOrDir).components];
}
/**
 * Retrieves an `Injector` associated with an element, component or directive instance.
 *
 * \@publicApi
 * \@globalApi ng
 * @param {?} elementOrDir DOM element, component or directive instance for which to
 *    retrieve the injector.
 * @return {?} Injector associated with the element, component or directive instance.
 *
 */
export function getInjector(elementOrDir) {
    /** @type {?} */
    const context = loadLContext(elementOrDir, false);
    if (context === null)
        return Injector.NULL;
    /** @type {?} */
    const tNode = (/** @type {?} */ (context.lView[TVIEW].data[context.nodeIndex]));
    return new NodeInjector(tNode, context.lView);
}
/**
 * Retrieve a set of injection tokens at a given DOM node.
 *
 * @param {?} element Element for which the injection tokens should be retrieved.
 * @return {?}
 */
export function getInjectionTokens(element) {
    /** @type {?} */
    const context = loadLContext(element, false);
    if (context === null)
        return [];
    /** @type {?} */
    const lView = context.lView;
    /** @type {?} */
    const tView = lView[TVIEW];
    /** @type {?} */
    const tNode = (/** @type {?} */ (tView.data[context.nodeIndex]));
    /** @type {?} */
    const providerTokens = [];
    /** @type {?} */
    const startIndex = tNode.providerIndexes & 65535 /* ProvidersStartIndexMask */;
    /** @type {?} */
    const endIndex = tNode.directiveEnd;
    for (let i = startIndex; i < endIndex; i++) {
        /** @type {?} */
        let value = tView.data[i];
        if (isDirectiveDefHack(value)) {
            // The fact that we sometimes store Type and sometimes DirectiveDef in this location is a
            // design flaw.  We should always store same type so that we can be monomorphic. The issue
            // is that for Components/Directives we store the def instead the type. The correct behavior
            // is that we should always be storing injectable type in this location.
            value = value.type;
        }
        providerTokens.push(value);
    }
    return providerTokens;
}
/**
 * Retrieves directive instances associated with a given DOM element. Does not include
 * component instances.
 *
 * \@usageNotes
 * Given the following DOM structure:
 * ```
 * <my-app>
 *   <button my-button></button>
 *   <my-comp></my-comp>
 * </my-app>
 * ```
 * Calling `getDirectives` on `<button>` will return an array with an instance of the `MyButton`
 * directive that is associated with the DOM element.
 *
 * Calling `getDirectives` on `<my-comp>` will return an empty array.
 *
 * \@publicApi
 * \@globalApi ng
 * @param {?} element DOM element for which to get the directives.
 * @return {?} Array of directives associated with the element.
 *
 */
export function getDirectives(element) {
    /** @type {?} */
    const context = (/** @type {?} */ (loadLContext(element)));
    if (context.directives === undefined) {
        context.directives = getDirectivesAtNodeIndex(context.nodeIndex, context.lView, false);
    }
    // The `directives` in this case are a named array called `LComponentView`. Clone the
    // result so we don't expose an internal data structure in the user's console.
    return context.directives === null ? [] : [...context.directives];
}
/**
 * @param {?} target
 * @param {?=} throwOnNotFound
 * @return {?}
 */
export function loadLContext(target, throwOnNotFound = true) {
    /** @type {?} */
    const context = getLContext(target);
    if (!context && throwOnNotFound) {
        throw new Error(ngDevMode ? `Unable to find context associated with ${stringifyForError(target)}` :
            'Invalid ng target');
    }
    return context;
}
/**
 * Retrieve map of local references.
 *
 * The references are retrieved as a map of local reference name to element or directive instance.
 *
 * @param {?} target DOM element, component or directive instance for which to retrieve
 *    the local references.
 * @return {?}
 */
export function getLocalRefs(target) {
    /** @type {?} */
    const context = loadLContext(target, false);
    if (context === null)
        return {};
    if (context.localRefs === undefined) {
        context.localRefs = discoverLocalRefs(context.lView, context.nodeIndex);
    }
    return context.localRefs || {};
}
/**
 * Retrieves the host element of a component or directive instance.
 * The host element is the DOM element that matched the selector of the directive.
 *
 * \@publicApi
 * \@globalApi ng
 * @param {?} componentOrDirective Component or directive instance for which the host
 *     element should be retrieved.
 * @return {?} Host element of the target.
 *
 */
export function getHostElement(componentOrDirective) {
    return (/** @type {?} */ ((/** @type {?} */ ((/** @type {?} */ (getLContext(componentOrDirective))).native))));
}
/**
 * Retrieves the rendered text for a given component.
 *
 * This function retrieves the host element of a component and
 * and then returns the `textContent` for that element. This implies
 * that the text returned will include re-projected content of
 * the component as well.
 *
 * @param {?} component The component to return the content text for.
 * @return {?}
 */
export function getRenderedText(component) {
    /** @type {?} */
    const hostElement = getHostElement(component);
    return hostElement.textContent || '';
}
/**
 * @param {?} node
 * @return {?}
 */
export function loadLContextFromNode(node) {
    if (!(node instanceof Node))
        throw new Error('Expecting instance of DOM Element');
    return (/** @type {?} */ (loadLContext(node)));
}
/**
 * Event listener configuration returned from `getListeners`.
 * \@publicApi
 * @record
 */
export function Listener() { }
if (false) {
    /**
     * Name of the event listener.
     * @type {?}
     */
    Listener.prototype.name;
    /**
     * Element that the listener is bound to.
     * @type {?}
     */
    Listener.prototype.element;
    /**
     * Callback that is invoked when the event is triggered.
     * @type {?}
     */
    Listener.prototype.callback;
    /**
     * Whether the listener is using event capturing.
     * @type {?}
     */
    Listener.prototype.useCapture;
    /**
     * Type of the listener (e.g. a native DOM event or a custom \@Output).
     * @type {?}
     */
    Listener.prototype.type;
}
/**
 * Retrieves a list of event listeners associated with a DOM element. The list does include host
 * listeners, but it does not include event listeners defined outside of the Angular context
 * (e.g. through `addEventListener`).
 *
 * \@usageNotes
 * Given the following DOM structure:
 * ```
 * <my-app>
 *   <div (click)="doSomething()"></div>
 * </my-app>
 *
 * ```
 * Calling `getListeners` on `<div>` will return an object that looks as follows:
 * ```
 * {
 *   name: 'click',
 *   element: <div>,
 *   callback: () => doSomething(),
 *   useCapture: false
 * }
 * ```
 *
 * \@publicApi
 * \@globalApi ng
 * @param {?} element Element for which the DOM listeners should be retrieved.
 * @return {?} Array of event listeners on the DOM element.
 *
 */
export function getListeners(element) {
    assertDomElement(element);
    /** @type {?} */
    const lContext = loadLContext(element, false);
    if (lContext === null)
        return [];
    /** @type {?} */
    const lView = lContext.lView;
    /** @type {?} */
    const tView = lView[TVIEW];
    /** @type {?} */
    const lCleanup = lView[CLEANUP];
    /** @type {?} */
    const tCleanup = tView.cleanup;
    /** @type {?} */
    const listeners = [];
    if (tCleanup && lCleanup) {
        for (let i = 0; i < tCleanup.length;) {
            /** @type {?} */
            const firstParam = tCleanup[i++];
            /** @type {?} */
            const secondParam = tCleanup[i++];
            if (typeof firstParam === 'string') {
                /** @type {?} */
                const name = firstParam;
                /** @type {?} */
                const listenerElement = (/** @type {?} */ ((/** @type {?} */ (unwrapRNode(lView[secondParam])))));
                /** @type {?} */
                const callback = lCleanup[tCleanup[i++]];
                /** @type {?} */
                const useCaptureOrIndx = tCleanup[i++];
                // if useCaptureOrIndx is boolean then report it as is.
                // if useCaptureOrIndx is positive number then it in unsubscribe method
                // if useCaptureOrIndx is negative number then it is a Subscription
                /** @type {?} */
                const type = (typeof useCaptureOrIndx === 'boolean' || useCaptureOrIndx >= 0) ? 'dom' : 'output';
                /** @type {?} */
                const useCapture = typeof useCaptureOrIndx === 'boolean' ? useCaptureOrIndx : false;
                if (element == listenerElement) {
                    listeners.push({ element, name, callback, useCapture, type });
                }
            }
        }
    }
    listeners.sort(sortListeners);
    return listeners;
}
/**
 * @param {?} a
 * @param {?} b
 * @return {?}
 */
function sortListeners(a, b) {
    if (a.name == b.name)
        return 0;
    return a.name < b.name ? -1 : 1;
}
/**
 * This function should not exist because it is megamorphic and only mostly correct.
 *
 * See call site for more info.
 * @param {?} obj
 * @return {?}
 */
function isDirectiveDefHack(obj) {
    return obj.type !== undefined && obj.template !== undefined && obj.declaredInputs !== undefined;
}
/**
 * Returns the attached `DebugNode` instance for an element in the DOM.
 *
 * @param {?} element DOM element which is owned by an existing component's view.
 * @return {?}
 */
export function getDebugNode(element) {
    /** @type {?} */
    let debugNode = null;
    /** @type {?} */
    const lContext = loadLContextFromNode(element);
    /** @type {?} */
    const lView = lContext.lView;
    /** @type {?} */
    const nodeIndex = lContext.nodeIndex;
    if (nodeIndex !== -1) {
        /** @type {?} */
        const valueInLView = lView[nodeIndex];
        // this means that value in the lView is a component with its own
        // data. In this situation the TNode is not accessed at the same spot.
        /** @type {?} */
        const tNode = isLView(valueInLView) ? ((/** @type {?} */ (valueInLView[T_HOST]))) :
            getTNode(lView[TVIEW], nodeIndex - HEADER_OFFSET);
        debugNode = buildDebugNode(tNode, lView, nodeIndex);
    }
    return debugNode;
}
/**
 * Retrieve the component `LView` from component/element.
 *
 * NOTE: `LView` is a private and should not be leaked outside.
 *       Don't export this method to `ng.*` on window.
 *
 * @param {?} target DOM element or component instance for which to retrieve the LView.
 * @return {?}
 */
export function getComponentLView(target) {
    /** @type {?} */
    const lContext = loadLContext(target);
    /** @type {?} */
    const nodeIndx = lContext.nodeIndex;
    /** @type {?} */
    const lView = lContext.lView;
    /** @type {?} */
    const componentLView = lView[nodeIndx];
    ngDevMode && assertLView(componentLView);
    return componentLView;
}
/**
 * Asserts that a value is a DOM Element.
 * @param {?} value
 * @return {?}
 */
function assertDomElement(value) {
    if (typeof Element !== 'undefined' && !(value instanceof Element)) {
        throw new Error('Expecting instance of DOM Element');
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGlzY292ZXJ5X3V0aWxzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvcmVuZGVyMy91dGlsL2Rpc2NvdmVyeV91dGlscy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7QUFRQSxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFDM0MsT0FBTyxFQUFDLFdBQVcsRUFBQyxNQUFNLFdBQVcsQ0FBQztBQUN0QyxPQUFPLEVBQUMsaUJBQWlCLEVBQUUsdUJBQXVCLEVBQUUsd0JBQXdCLEVBQUUsV0FBVyxFQUFDLE1BQU0sc0JBQXNCLENBQUM7QUFDdkgsT0FBTyxFQUFDLFlBQVksRUFBQyxNQUFNLE9BQU8sQ0FBQztBQUNuQyxPQUFPLEVBQVksY0FBYyxFQUFDLE1BQU0sNkJBQTZCLENBQUM7QUFJdEUsT0FBTyxFQUFDLE9BQU8sRUFBQyxNQUFNLDJCQUEyQixDQUFDO0FBQ2xELE9BQU8sRUFBQyxPQUFPLEVBQUUsT0FBTyxFQUFFLEtBQUssRUFBRSxhQUFhLEVBQUUsSUFBSSxFQUFxQixLQUFLLEVBQUUsTUFBTSxFQUFDLE1BQU0sb0JBQW9CLENBQUM7QUFDbEgsT0FBTyxFQUFDLGlCQUFpQixFQUFDLE1BQU0sY0FBYyxDQUFDO0FBQy9DLE9BQU8sRUFBQyxjQUFjLEVBQUUsY0FBYyxFQUFDLE1BQU0sd0JBQXdCLENBQUM7QUFDdEUsT0FBTyxFQUFDLFFBQVEsRUFBRSxXQUFXLEVBQUMsTUFBTSxjQUFjLENBQUM7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQTZCbkQsTUFBTSxVQUFVLFlBQVksQ0FBSSxPQUFnQjtJQUM5QyxnQkFBZ0IsQ0FBQyxPQUFPLENBQUMsQ0FBQzs7VUFDcEIsT0FBTyxHQUFHLFlBQVksQ0FBQyxPQUFPLEVBQUUsS0FBSyxDQUFDO0lBQzVDLElBQUksT0FBTyxLQUFLLElBQUk7UUFBRSxPQUFPLElBQUks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WSxDQUFDLE1BQU0sQ0FBQyxFQUFTLENBQUMsQ0FBQyxDQUFDO1lBQ2pDLFFBQVEsQ0FBQyxLQUFLLENBQUMsS0FBSyxDQUFDLEVBQUUsU0FBUyxHQUFHLGFBQWEsQ0FBQztRQUN2RixTQUFTLEdBQUcsY0FBYyxDQUFDLEtBQUssRUFBRSxLQUFLLEVBQUUsU0FBUyxDQUFDLENBQUM7S0FDckQ7SUFFRCxPQUFPLFNBQVMsQ0FBQztBQUNuQixDQUFDOzs7Ozs7Ozs7O0FBVUQsTUFBTSxVQUFVLGlCQUFpQixDQUFDLE1BQVc7O1VBQ3JDLFFBQVEsR0FBRyxZQUFZLENBQUMsTUFBTSxDQUFDOztVQUMvQixRQUFRLEdBQUcsUUFBUSxDQUFDLFNBQVM7O1VBQzdCLEtBQUssR0FBRyxRQUFRLENBQUMsS0FBSzs7VUFDdEIsY0FBYyxHQUFHLEtBQUssQ0FBQyxRQUFRLENBQUM7SUFDdEMsU0FBUyxJQUFJLFdBQVcsQ0FBQyxjQUFjLENBQUMsQ0FBQztJQUN6QyxPQUFPLGNBQWMsQ0FBQztBQUN4QixDQUFDOzs7Ozs7QUFHRCxTQUFTLGdCQUFnQixDQUFDLEtBQVU7SUFDbEMsSUFBSSxPQUFPLE9BQU8sS0FBSyxXQUFXLElBQUksQ0FBQyxDQUFDLEtBQUssWUFBWSxPQUFPLENBQUMsRUFBRTtRQUNqRSxNQUFNLElBQUksS0FBSyxDQUFDLG1DQUFtQyxDQUFDLENBQUM7S0FDdEQ7QUFDSCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0luamVjdG9yfSBmcm9tICcuLi8uLi9kaS9pbmplY3Rvcic7XG5pbXBvcnQge2Fzc2VydExWaWV3fSBmcm9tICcuLi9hc3NlcnQnO1xuaW1wb3J0IHtkaXNjb3ZlckxvY2FsUmVmcywgZ2V0Q29tcG9uZW50QXROb2RlSW5kZXgsIGdldERpcmVjdGl2ZXNBdE5vZGVJbmRleCwgZ2V0TENvbnRleHR9IGZyb20gJy4uL2NvbnRleHRfZGlzY292ZXJ5JztcbmltcG9ydCB7Tm9kZUluamVjdG9yfSBmcm9tICcuLi9kaSc7XG5pbXBvcnQge0RlYnVnTm9kZSwgYnVpbGREZWJ1Z05vZGV9IGZyb20gJy4uL2luc3RydWN0aW9ucy9sdmlld19kZWJ1Zyc7XG5pbXBvcnQge0xDb250ZXh0fSBmcm9tICcuLi9pbnRlcmZhY2VzL2NvbnRleHQnO1xuaW1wb3J0IHtEaXJlY3RpdmVEZWZ9IGZyb20gJy4uL2ludGVyZmFjZXMvZGVmaW5pdGlvbic7XG5pbXBvcnQge1RFbGVtZW50Tm9kZSwgVE5vZGUsIFROb2RlUHJvdmlkZXJJbmRleGVzfSBmcm9tICcuLi9pbnRlcmZhY2VzL25vZGUnO1xuaW1wb3J0IHtpc0xWaWV3fSBmcm9tICcuLi9pbnRlcmZhY2VzL3R5cGVfY2hlY2tzJztcbmltcG9ydCB7Q0xFQU5VUCwgQ09OVEVYVCwgRkxBR1MsIEhFQURFUl9PRkZTRVQsIEhPU1QsIExWaWV3LCBMVmlld0ZsYWdzLCBUVklFVywgVF9IT1NUfSBmcm9tICcuLi9pbnRlcmZhY2VzL3ZpZXcnO1xuaW1wb3J0IHtzdHJpbmdpZnlGb3JFcnJvcn0gZnJvbSAnLi9taXNjX3V0aWxzJztcbmltcG9ydCB7Z2V0TFZpZXdQYXJlbnQsIGdldFJvb3RDb250ZXh0fSBmcm9tICcuL3ZpZXdfdHJhdmVyc2FsX3V0aWxzJztcbmltcG9ydCB7Z2V0VE5vZGUsIHVud3JhcFJOb2RlfSBmcm9tICcuL3ZpZXdfdXRpbHMnO1xuXG5cblxuLyoqXG4gKiBSZXRyaWV2ZXMgdGhlIGNvbXBvbmVudCBpbnN0YW5jZSBhc3NvY2lhdGVkIHdpdGggYSBnaXZlbiBET00gZWxlbWVudC5cbiAqXG4gKiBAdXNhZ2VOb3Rlc1xuICogR2l2ZW4gdGhlIGZvbGxvd2luZyBET00gc3RydWN0dXJlOlxuICogYGBgaHRtbFxuICogPG15LWFwcD5cbiAqICAgPGRpdj5cbiAqICAgICA8Y2hpbGQtY29tcD48L2NoaWxkLWNvbXA+XG4gKiAgIDwvZGl2PlxuICogPC9teS1hcHA+XG4gKiBgYGBcbiAqIENhbGxpbmcgYGdldENvbXBvbmVudGAgb24gYDxjaGlsZC1jb21wPmAgd2lsbCByZXR1cm4gdGhlIGluc3RhbmNlIG9mIGBDaGlsZENvbXBvbmVudGBcbiAqIGFzc29jaWF0ZWQgd2l0aCB0aGlzIERPTSBlbGVtZW50LlxuICpcbiAqIENhbGxpbmcgdGhlIGZ1bmN0aW9uIG9uIGA8bXktYXBwPmAgd2lsbCByZXR1cm4gdGhlIGBNeUFwcGAgaW5zdGFuY2UuXG4gKlxuICpcbiAqIEBwYXJhbSBlbGVtZW50IERPTSBlbGVtZW50IGZyb20gd2hpY2ggdGhlIGNvbXBvbmVudCBzaG91bGQgYmUgcmV0cmlldmVkLlxuICogQHJldHVybnMgQ29tcG9uZW50IGluc3RhbmNlIGFzc29jaWF0ZWQgd2l0aCB0aGUgZWxlbWVudCBvciBgbnVsbGAgaWYgdGhlcmVcbiAqICAgIGlzIG5vIGNvbXBvbmVudCBhc3NvY2lhdGVkIHdpdGggaXQuXG4gKlxuICogQHB1YmxpY0FwaVxuICogQGdsb2JhbEFwaSBuZ1xuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0Q29tcG9uZW50PFQ+KGVsZW1lbnQ6IEVsZW1lbnQpOiBUfG51bGwge1xuICBhc3NlcnREb21FbGVtZW50KGVsZW1lbnQpO1xuICBjb25zdCBjb250ZXh0ID0gbG9hZExDb250ZXh0KGVsZW1lbnQsIGZhbHNlKTtcbiAgaWYgKGNvbnRleHQgPT09IG51bGwpIHJldHVybiBudWxsO1xuXG4gIGlmIChjb250ZXh0LmNvbXBvbmVudCA9PT0gdW5kZWZpbmVkKSB7XG4gICAgY29udGV4dC5jb21wb25lbnQgPSBnZXRDb21wb25lbnRBdE5vZGVJbmRleChjb250ZXh0Lm5vZGVJbmRleCwgY29udGV4dC5sVmlldyk7XG4gIH1cblxuICByZXR1cm4gY29udGV4dC5jb21wb25lbnQgYXMgVDtcbn1cblxuXG4vKipcbiAqIElmIGluc2lkZSBhbiBlbWJlZGRlZCB2aWV3IChlLmcuIGAqbmdJZmAgb3IgYCpuZ0ZvcmApLCByZXRyaWV2ZXMgdGhlIGNvbnRleHQgb2YgdGhlIGVtYmVkZGVkXG4gKiB2aWV3IHRoYXQgdGhlIGVsZW1lbnQgaXMgcGFydCBvZi4gT3RoZXJ3aXNlIHJldHJpZXZlcyB0aGUgaW5zdGFuY2Ugb2YgdGhlIGNvbXBvbmVudCB3aG9zZSB2aWV3XG4gKiBvd25zIHRoZSBlbGVtZW50IChpbiB0aGlzIGNhc2UsIHRoZSByZXN1bHQgaXMgdGhlIHNhbWUgYXMgY2FsbGluZyBgZ2V0T3duaW5nQ29tcG9uZW50YCkuXG4gKlxuICogQHBhcmFtIGVsZW1lbnQgRWxlbWVudCBmb3Igd2hpY2ggdG8gZ2V0IHRoZSBzdXJyb3VuZGluZyBjb21wb25lbnQgaW5zdGFuY2UuXG4gKiBAcmV0dXJucyBJbnN0YW5jZSBvZiB0aGUgY29tcG9uZW50IHRoYXQgaXMgYXJvdW5kIHRoZSBlbGVtZW50IG9yIG51bGwgaWYgdGhlIGVsZW1lbnQgaXNuJ3RcbiAqICAgIGluc2lkZSBhbnkgY29tcG9uZW50LlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqIEBnbG9iYWxBcGkgbmdcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldENvbnRleHQ8VD4oZWxlbWVudDogRWxlbWVudCk6IFR8bnVsbCB7XG4gIGFzc2VydERvbUVsZW1lbnQoZWxlbWVudCk7XG4gIGNvbnN0IGNvbnRleHQgPSBsb2FkTENvbnRleHQoZWxlbWVudCwgZmFsc2UpO1xuICByZXR1cm4gY29udGV4dCA9PT0gbnVsbCA/IG51bGwgOiBjb250ZXh0LmxWaWV3W0NPTlRFWFRdIGFzIFQ7XG59XG5cbi8qKlxuICogUmV0cmlldmVzIHRoZSBjb21wb25lbnQgaW5zdGFuY2Ugd2hvc2UgdmlldyBjb250YWlucyB0aGUgRE9NIGVsZW1lbnQuXG4gKlxuICogRm9yIGV4YW1wbGUsIGlmIGA8Y2hpbGQtY29tcD5gIGlzIHVzZWQgaW4gdGhlIHRlbXBsYXRlIG9mIGA8YXBwLWNvbXA+YFxuICogKGkuZS4gYSBgVmlld0NoaWxkYCBvZiBgPGFwcC1jb21wPmApLCBjYWxsaW5nIGBnZXRPd25pbmdDb21wb25lbnRgIG9uIGA8Y2hpbGQtY29tcD5gXG4gKiB3b3VsZCByZXR1cm4gYDxhcHAtY29tcD5gLlxuICpcbiAqIEBwYXJhbSBlbGVtZW50T3JEaXIgRE9NIGVsZW1lbnQsIGNvbXBvbmVudCBvciBkaXJlY3RpdmUgaW5zdGFuY2VcbiAqICAgIGZvciB3aGljaCB0byByZXRyaWV2ZSB0aGUgcm9vdCBjb21wb25lbnRzLlxuICogQHJldHVybnMgQ29tcG9uZW50IGluc3RhbmNlIHdob3NlIHZpZXcgb3ducyB0aGUgRE9NIGVsZW1lbnQgb3IgbnVsbCBpZiB0aGUgZWxlbWVudCBpcyBub3RcbiAqICAgIHBhcnQgb2YgYSBjb21wb25lbnQgdmlldy5cbiAqXG4gKiBAcHVibGljQXBpXG4gKiBAZ2xvYmFsQXBpIG5nXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRPd25pbmdDb21wb25lbnQ8VD4oZWxlbWVudE9yRGlyOiBFbGVtZW50IHwge30pOiBUfG51bGwge1xuICBjb25zdCBjb250ZXh0ID0gbG9hZExDb250ZXh0KGVsZW1lbnRPckRpciwgZmFsc2UpO1xuICBpZiAoY29udGV4dCA9PT0gbnVsbCkgcmV0dXJuIG51bGw7XG5cbiAgbGV0IGxWaWV3ID0gY29udGV4dC5sVmlldztcbiAgbGV0IHBhcmVudDogTFZpZXd8bnVsbDtcbiAgbmdEZXZNb2RlICYmIGFzc2VydExWaWV3KGxWaWV3KTtcbiAgd2hpbGUgKGxWaWV3W0hPU1RdID09PSBudWxsICYmIChwYXJlbnQgPSBnZXRMVmlld1BhcmVudChsVmlldykgISkpIHtcbiAgICAvLyBBcyBsb25nIGFzIGxWaWV3W0hPU1RdIGlzIG51bGwgd2Uga25vdyB3ZSBhcmUgcGFydCBvZiBzdWItdGVtcGxhdGUgc3VjaCBhcyBgKm5nSWZgXG4gICAgbFZpZXcgPSBwYXJlbnQ7XG4gIH1cbiAgcmV0dXJuIGxWaWV3W0ZMQUdTXSAmIExWaWV3RmxhZ3MuSXNSb290ID8gbnVsbCA6IGxWaWV3W0NPTlRFWFRdIGFzIFQ7XG59XG5cbi8qKlxuICogUmV0cmlldmVzIGFsbCByb290IGNvbXBvbmVudHMgYXNzb2NpYXRlZCB3aXRoIGEgRE9NIGVsZW1lbnQsIGRpcmVjdGl2ZSBvciBjb21wb25lbnQgaW5zdGFuY2UuXG4gKiBSb290IGNvbXBvbmVudHMgYXJlIHRob3NlIHdoaWNoIGhhdmUgYmVlbiBib290c3RyYXBwZWQgYnkgQW5ndWxhci5cbiAqXG4gKiBAcGFyYW0gZWxlbWVudE9yRGlyIERPTSBlbGVtZW50LCBjb21wb25lbnQgb3IgZGlyZWN0aXZlIGluc3RhbmNlXG4gKiAgICBmb3Igd2hpY2ggdG8gcmV0cmlldmUgdGhlIHJvb3QgY29tcG9uZW50cy5cbiAqIEByZXR1cm5zIFJvb3QgY29tcG9uZW50cyBhc3NvY2lhdGVkIHdpdGggdGhlIHRhcmdldCBvYmplY3QuXG4gKlxuICogQHB1YmxpY0FwaVxuICogQGdsb2JhbEFwaSBuZ1xuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0Um9vdENvbXBvbmVudHMoZWxlbWVudE9yRGlyOiBFbGVtZW50IHwge30pOiB7fVtdIHtcbiAgcmV0dXJuIFsuLi5nZXRSb290Q29udGV4dChlbGVtZW50T3JEaXIpLmNvbXBvbmVudHNdO1xufVxuXG4vKipcbiAqIFJldHJpZXZlcyBhbiBgSW5qZWN0b3JgIGFzc29jaWF0ZWQgd2l0aCBhbiBlbGVtZW50LCBjb21wb25lbnQgb3IgZGlyZWN0aXZlIGluc3RhbmNlLlxuICpcbiAqIEBwYXJhbSBlbGVtZW50T3JEaXIgRE9NIGVsZW1lbnQsIGNvbXBvbmVudCBvciBkaXJlY3RpdmUgaW5zdGFuY2UgZm9yIHdoaWNoIHRvXG4gKiAgICByZXRyaWV2ZSB0aGUgaW5qZWN0b3IuXG4gKiBAcmV0dXJucyBJbmplY3RvciBhc3NvY2lhdGVkIHdpdGggdGhlIGVsZW1lbnQsIGNvbXBvbmVudCBvciBkaXJlY3RpdmUgaW5zdGFuY2UuXG4gKlxuICogQHB1YmxpY0FwaVxuICogQGdsb2JhbEFwaSBuZ1xuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0SW5qZWN0b3IoZWxlbWVudE9yRGlyOiBFbGVtZW50IHwge30pOiBJbmplY3RvciB7XG4gIGNvbnN0IGNvbnRleHQgPSBsb2FkTENvbnRleHQoZWxlbWVudE9yRGlyLCBmYWxzZSk7XG4gIGlmIChjb250ZXh0ID09PSBudWxsKSByZXR1cm4gSW5qZWN0b3IuTlVMTDtcblxuICBjb25zdCB0Tm9kZSA9IGNvbnRleHQubFZpZXdbVFZJRVddLmRhdGFbY29udGV4dC5ub2RlSW5kZXhdIGFzIFRFbGVtZW50Tm9kZTtcbiAgcmV0dXJuIG5ldyBOb2RlSW5qZWN0b3IodE5vZGUsIGNvbnRleHQubFZpZXcpO1xufVxuXG4vKipcbiAqIFJldHJpZXZlIGEgc2V0IG9mIGluamVjdGlvbiB0b2tlbnMgYXQgYSBnaXZlbiBET00gbm9kZS5cbiAqXG4gKiBAcGFyYW0gZWxlbWVudCBFbGVtZW50IGZvciB3aGljaCB0aGUgaW5qZWN0aW9uIHRva2VucyBzaG91bGQgYmUgcmV0cmlldmVkLlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0SW5qZWN0aW9uVG9rZW5zKGVsZW1lbnQ6IEVsZW1lbnQpOiBhbnlbXSB7XG4gIGNvbnN0IGNvbnRleHQgPSBsb2FkTENvbnRleHQoZWxlbWVudCwgZmFsc2UpO1xuICBpZiAoY29udGV4dCA9PT0gbnVsbCkgcmV0dXJuIFtdO1xuICBjb25zdCBsVmlldyA9IGNvbnRleHQubFZpZXc7XG4gIGNvbnN0IHRWaWV3ID0gbFZpZXdbVFZJRVddO1xuICBjb25zdCB0Tm9kZSA9IHRWaWV3LmRhdGFbY29udGV4dC5ub2RlSW5kZXhdIGFzIFROb2RlO1xuICBjb25zdCBwcm92aWRlclRva2VuczogYW55W10gPSBbXTtcbiAgY29uc3Qgc3RhcnRJbmRleCA9IHROb2RlLnByb3ZpZGVySW5kZXhlcyAmIFROb2RlUHJvdmlkZXJJbmRleGVzLlByb3ZpZGVyc1N0YXJ0SW5kZXhNYXNrO1xuICBjb25zdCBlbmRJbmRleCA9IHROb2RlLmRpcmVjdGl2ZUVuZDtcbiAgZm9yIChsZXQgaSA9IHN0YXJ0SW5kZXg7IGkgPCBlbmRJbmRleDsgaSsrKSB7XG4gICAgbGV0IHZhbHVlID0gdFZpZXcuZGF0YVtpXTtcbiAgICBpZiAoaXNEaXJlY3RpdmVEZWZIYWNrKHZhbHVlKSkge1xuICAgICAgLy8gVGhlIGZhY3QgdGhhdCB3ZSBzb21ldGltZXMgc3RvcmUgVHlwZSBhbmQgc29tZXRpbWVzIERpcmVjdGl2ZURlZiBpbiB0aGlzIGxvY2F0aW9uIGlzIGFcbiAgICAgIC8vIGRlc2lnbiBmbGF3LiAgV2Ugc2hvdWxkIGFsd2F5cyBzdG9yZSBzYW1lIHR5cGUgc28gdGhhdCB3ZSBjYW4gYmUgbW9ub21vcnBoaWMuIFRoZSBpc3N1ZVxuICAgICAgLy8gaXMgdGhhdCBmb3IgQ29tcG9uZW50cy9EaXJlY3RpdmVzIHdlIHN0b3JlIHRoZSBkZWYgaW5zdGVhZCB0aGUgdHlwZS4gVGhlIGNvcnJlY3QgYmVoYXZpb3JcbiAgICAgIC8vIGlzIHRoYXQgd2Ugc2hvdWxkIGFsd2F5cyBiZSBzdG9yaW5nIGluamVjdGFibGUgdHlwZSBpbiB0aGlzIGxvY2F0aW9uLlxuICAgICAgdmFsdWUgPSB2YWx1ZS50eXBlO1xuICAgIH1cbiAgICBwcm92aWRlclRva2Vucy5wdXNoKHZhbHVlKTtcbiAgfVxuICByZXR1cm4gcHJvdmlkZXJUb2tlbnM7XG59XG5cbi8qKlxuICogUmV0cmlldmVzIGRpcmVjdGl2ZSBpbnN0YW5jZXMgYXNzb2NpYXRlZCB3aXRoIGEgZ2l2ZW4gRE9NIGVsZW1lbnQuIERvZXMgbm90IGluY2x1ZGVcbiAqIGNvbXBvbmVudCBpbnN0YW5jZXMuXG4gKlxuICogQHVzYWdlTm90ZXNcbiAqIEdpdmVuIHRoZSBmb2xsb3dpbmcgRE9NIHN0cnVjdHVyZTpcbiAqIGBgYFxuICogPG15LWFwcD5cbiAqICAgPGJ1dHRvbiBteS1idXR0b24+PC9idXR0b24+XG4gKiAgIDxteS1jb21wPjwvbXktY29tcD5cbiAqIDwvbXktYXBwPlxuICogYGBgXG4gKiBDYWxsaW5nIGBnZXREaXJlY3RpdmVzYCBvbiBgPGJ1dHRvbj5gIHdpbGwgcmV0dXJuIGFuIGFycmF5IHdpdGggYW4gaW5zdGFuY2Ugb2YgdGhlIGBNeUJ1dHRvbmBcbiAqIGRpcmVjdGl2ZSB0aGF0IGlzIGFzc29jaWF0ZWQgd2l0aCB0aGUgRE9NIGVsZW1lbnQuXG4gKlxuICogQ2FsbGluZyBgZ2V0RGlyZWN0aXZlc2Agb24gYDxteS1jb21wPmAgd2lsbCByZXR1cm4gYW4gZW1wdHkgYXJyYXkuXG4gKlxuICogQHBhcmFtIGVsZW1lbnQgRE9NIGVsZW1lbnQgZm9yIHdoaWNoIHRvIGdldCB0aGUgZGlyZWN0aXZlcy5cbiAqIEByZXR1cm5zIEFycmF5IG9mIGRpcmVjdGl2ZXMgYXNzb2NpYXRlZCB3aXRoIHRoZSBlbGVtZW50LlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqIEBnbG9iYWxBcGkgbmdcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldERpcmVjdGl2ZXMoZWxlbWVudDogRWxlbWVudCk6IHt9W10ge1xuICBjb25zdCBjb250ZXh0ID0gbG9hZExDb250ZXh0KGVsZW1lbnQpICE7XG5cbiAgaWYgKGNvbnRleHQuZGlyZWN0aXZlcyA9PT0gdW5kZWZpbmVkKSB7XG4gICAgY29udGV4dC5kaXJlY3RpdmVzID0gZ2V0RGlyZWN0aXZlc0F0Tm9kZUluZGV4KGNvbnRleHQubm9kZUluZGV4LCBjb250ZXh0LmxWaWV3LCBmYWxzZSk7XG4gIH1cblxuICAvLyBUaGUgYGRpcmVjdGl2ZXNgIGluIHRoaXMgY2FzZSBhcmUgYSBuYW1lZCBhcnJheSBjYWxsZWQgYExDb21wb25lbnRWaWV3YC4gQ2xvbmUgdGhlXG4gIC8vIHJlc3VsdCBzbyB3ZSBkb24ndCBleHBvc2UgYW4gaW50ZXJuYWwgZGF0YSBzdHJ1Y3R1cmUgaW4gdGhlIHVzZXIncyBjb25zb2xlLlxuICByZXR1cm4gY29udGV4dC5kaXJlY3RpdmVzID09PSBudWxsID8gW10gOiBbLi4uY29udGV4dC5kaXJlY3RpdmVzXTtcbn1cblxuLyoqXG4gKiBSZXR1cm5zIExDb250ZXh0IGFzc29jaWF0ZWQgd2l0aCBhIHRhcmdldCBwYXNzZWQgYXMgYW4gYXJndW1lbnQuXG4gKiBUaHJvd3MgaWYgYSBnaXZlbiB0YXJnZXQgZG9lc24ndCBoYXZlIGFzc29jaWF0ZWQgTENvbnRleHQuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBsb2FkTENvbnRleHQodGFyZ2V0OiB7fSk6IExDb250ZXh0O1xuZXhwb3J0IGZ1bmN0aW9uIGxvYWRMQ29udGV4dCh0YXJnZXQ6IHt9LCB0aHJvd09uTm90Rm91bmQ6IGZhbHNlKTogTENvbnRleHR8bnVsbDtcbmV4cG9ydCBmdW5jdGlvbiBsb2FkTENvbnRleHQodGFyZ2V0OiB7fSwgdGhyb3dPbk5vdEZvdW5kOiBib29sZWFuID0gdHJ1ZSk6IExDb250ZXh0fG51bGwge1xuICBjb25zdCBjb250ZXh0ID0gZ2V0TENvbnRleHQodGFyZ2V0KTtcbiAgaWYgKCFjb250ZXh0ICYmIHRocm93T25Ob3RGb3VuZCkge1xuICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgbmdEZXZNb2RlID8gYFVuYWJsZSB0byBmaW5kIGNvbnRleHQgYXNzb2NpYXRlZCB3aXRoICR7c3RyaW5naWZ5Rm9yRXJyb3IodGFyZ2V0KX1gIDpcbiAgICAgICAgICAgICAgICAgICAgJ0ludmFsaWQgbmcgdGFyZ2V0Jyk7XG4gIH1cbiAgcmV0dXJuIGNvbnRleHQ7XG59XG5cbi8qKlxuICogUmV0cmlldmUgbWFwIG9mIGxvY2FsIHJlZmVyZW5jZXMuXG4gKlxuICogVGhlIHJlZmVyZW5jZXMgYXJlIHJldHJpZXZlZCBhcyBhIG1hcCBvZiBsb2NhbCByZWZlcmVuY2UgbmFtZSB0byBlbGVtZW50IG9yIGRpcmVjdGl2ZSBpbnN0YW5jZS5cbiAqXG4gKiBAcGFyYW0gdGFyZ2V0IERPTSBlbGVtZW50LCBjb21wb25lbnQgb3IgZGlyZWN0aXZlIGluc3RhbmNlIGZvciB3aGljaCB0byByZXRyaWV2ZVxuICogICAgdGhlIGxvY2FsIHJlZmVyZW5jZXMuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRMb2NhbFJlZnModGFyZ2V0OiB7fSk6IHtba2V5OiBzdHJpbmddOiBhbnl9IHtcbiAgY29uc3QgY29udGV4dCA9IGxvYWRMQ29udGV4dCh0YXJnZXQsIGZhbHNlKTtcbiAgaWYgKGNvbnRleHQgPT09IG51bGwpIHJldHVybiB7fTtcblxuICBpZiAoY29udGV4dC5sb2NhbFJlZnMgPT09IHVuZGVmaW5lZCkge1xuICAgIGNvbnRleHQubG9jYWxSZWZzID0gZGlzY292ZXJMb2NhbFJlZnMoY29udGV4dC5sVmlldywgY29udGV4dC5ub2RlSW5kZXgpO1xuICB9XG5cbiAgcmV0dXJuIGNvbnRleHQubG9jYWxSZWZzIHx8IHt9O1xufVxuXG4vKipcbiAqIFJldHJpZXZlcyB0aGUgaG9zdCBlbGVtZW50IG9mIGEgY29tcG9uZW50IG9yIGRpcmVjdGl2ZSBpbnN0YW5jZS5cbiAqIFRoZSBob3N0IGVsZW1lbnQgaXMgdGhlIERPTSBlbGVtZW50IHRoYXQgbWF0Y2hlZCB0aGUgc2VsZWN0b3Igb2YgdGhlIGRpcmVjdGl2ZS5cbiAqXG4gKiBAcGFyYW0gY29tcG9uZW50T3JEaXJlY3RpdmUgQ29tcG9uZW50IG9yIGRpcmVjdGl2ZSBpbnN0YW5jZSBmb3Igd2hpY2ggdGhlIGhvc3RcbiAqICAgICBlbGVtZW50IHNob3VsZCBiZSByZXRyaWV2ZWQuXG4gKiBAcmV0dXJucyBIb3N0IGVsZW1lbnQgb2YgdGhlIHRhcmdldC5cbiAqXG4gKiBAcHVibGljQXBpXG4gKiBAZ2xvYmFsQXBpIG5nXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRIb3N0RWxlbWVudChjb21wb25lbnRPckRpcmVjdGl2ZToge30pOiBFbGVtZW50IHtcbiAgcmV0dXJuIGdldExDb250ZXh0KGNvbXBvbmVudE9yRGlyZWN0aXZlKSAhLm5hdGl2ZSBhcyBuZXZlciBhcyBFbGVtZW50O1xufVxuXG4vKipcbiAqIFJldHJpZXZlcyB0aGUgcmVuZGVyZWQgdGV4dCBmb3IgYSBnaXZlbiBjb21wb25lbnQuXG4gKlxuICogVGhpcyBmdW5jdGlvbiByZXRyaWV2ZXMgdGhlIGhvc3QgZWxlbWVudCBvZiBhIGNvbXBvbmVudCBhbmRcbiAqIGFuZCB0aGVuIHJldHVybnMgdGhlIGB0ZXh0Q29udGVudGAgZm9yIHRoYXQgZWxlbWVudC4gVGhpcyBpbXBsaWVzXG4gKiB0aGF0IHRoZSB0ZXh0IHJldHVybmVkIHdpbGwgaW5jbHVkZSByZS1wcm9qZWN0ZWQgY29udGVudCBvZlxuICogdGhlIGNvbXBvbmVudCBhcyB3ZWxsLlxuICpcbiAqIEBwYXJhbSBjb21wb25lbnQgVGhlIGNvbXBvbmVudCB0byByZXR1cm4gdGhlIGNvbnRlbnQgdGV4dCBmb3IuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRSZW5kZXJlZFRleHQoY29tcG9uZW50OiBhbnkpOiBzdHJpbmcge1xuICBjb25zdCBob3N0RWxlbWVudCA9IGdldEhvc3RFbGVtZW50KGNvbXBvbmVudCk7XG4gIHJldHVybiBob3N0RWxlbWVudC50ZXh0Q29udGVudCB8fCAnJztcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGxvYWRMQ29udGV4dEZyb21Ob2RlKG5vZGU6IE5vZGUpOiBMQ29udGV4dCB7XG4gIGlmICghKG5vZGUgaW5zdGFuY2VvZiBOb2RlKSkgdGhyb3cgbmV3IEVycm9yKCdFeHBlY3RpbmcgaW5zdGFuY2Ugb2YgRE9NIEVsZW1lbnQnKTtcbiAgcmV0dXJuIGxvYWRMQ29udGV4dChub2RlKSAhO1xufVxuXG4vKipcbiAqIEV2ZW50IGxpc3RlbmVyIGNvbmZpZ3VyYXRpb24gcmV0dXJuZWQgZnJvbSBgZ2V0TGlzdGVuZXJzYC5cbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGludGVyZmFjZSBMaXN0ZW5lciB7XG4gIC8qKiBOYW1lIG9mIHRoZSBldmVudCBsaXN0ZW5lci4gKi9cbiAgbmFtZTogc3RyaW5nO1xuICAvKiogRWxlbWVudCB0aGF0IHRoZSBsaXN0ZW5lciBpcyBib3VuZCB0by4gKi9cbiAgZWxlbWVudDogRWxlbWVudDtcbiAgLyoqIENhbGxiYWNrIHRoYXQgaXMgaW52b2tlZCB3aGVuIHRoZSBldmVudCBpcyB0cmlnZ2VyZWQuICovXG4gIGNhbGxiYWNrOiAodmFsdWU6IGFueSkgPT4gYW55O1xuICAvKiogV2hldGhlciB0aGUgbGlzdGVuZXIgaXMgdXNpbmcgZXZlbnQgY2FwdHVyaW5nLiAqL1xuICB1c2VDYXB0dXJlOiBib29sZWFuO1xuICAvKipcbiAgICogVHlwZSBvZiB0aGUgbGlzdGVuZXIgKGUuZy4gYSBuYXRpdmUgRE9NIGV2ZW50IG9yIGEgY3VzdG9tIEBPdXRwdXQpLlxuICAgKi9cbiAgdHlwZTogJ2RvbSd8J291dHB1dCc7XG59XG5cblxuLyoqXG4gKiBSZXRyaWV2ZXMgYSBsaXN0IG9mIGV2ZW50IGxpc3RlbmVycyBhc3NvY2lhdGVkIHdpdGggYSBET00gZWxlbWVudC4gVGhlIGxpc3QgZG9lcyBpbmNsdWRlIGhvc3RcbiAqIGxpc3RlbmVycywgYnV0IGl0IGRvZXMgbm90IGluY2x1ZGUgZXZlbnQgbGlzdGVuZXJzIGRlZmluZWQgb3V0c2lkZSBvZiB0aGUgQW5ndWxhciBjb250ZXh0XG4gKiAoZS5nLiB0aHJvdWdoIGBhZGRFdmVudExpc3RlbmVyYCkuXG4gKlxuICogQHVzYWdlTm90ZXNcbiAqIEdpdmVuIHRoZSBmb2xsb3dpbmcgRE9NIHN0cnVjdHVyZTpcbiAqIGBgYFxuICogPG15LWFwcD5cbiAqICAgPGRpdiAoY2xpY2spPVwiZG9Tb21ldGhpbmcoKVwiPjwvZGl2PlxuICogPC9teS1hcHA+XG4gKlxuICogYGBgXG4gKiBDYWxsaW5nIGBnZXRMaXN0ZW5lcnNgIG9uIGA8ZGl2PmAgd2lsbCByZXR1cm4gYW4gb2JqZWN0IHRoYXQgbG9va3MgYXMgZm9sbG93czpcbiAqIGBgYFxuICoge1xuICogICBuYW1lOiAnY2xpY2snLFxuICogICBlbGVtZW50OiA8ZGl2PixcbiAqICAgY2FsbGJhY2s6ICgpID0+IGRvU29tZXRoaW5nKCksXG4gKiAgIHVzZUNhcHR1cmU6IGZhbHNlXG4gKiB9XG4gKiBgYGBcbiAqXG4gKiBAcGFyYW0gZWxlbWVudCBFbGVtZW50IGZvciB3aGljaCB0aGUgRE9NIGxpc3RlbmVycyBzaG91bGQgYmUgcmV0cmlldmVkLlxuICogQHJldHVybnMgQXJyYXkgb2YgZXZlbnQgbGlzdGVuZXJzIG9uIHRoZSBET00gZWxlbWVudC5cbiAqXG4gKiBAcHVibGljQXBpXG4gKiBAZ2xvYmFsQXBpIG5nXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRMaXN0ZW5lcnMoZWxlbWVudDogRWxlbWVudCk6IExpc3RlbmVyW10ge1xuICBhc3NlcnREb21FbGVtZW50KGVsZW1lbnQpO1xuICBjb25zdCBsQ29udGV4dCA9IGxvYWRMQ29udGV4dChlbGVtZW50LCBmYWxzZSk7XG4gIGlmIChsQ29udGV4dCA9PT0gbnVsbCkgcmV0dXJuIFtdO1xuXG4gIGNvbnN0IGxWaWV3ID0gbENvbnRleHQubFZpZXc7XG4gIGNvbnN0IHRWaWV3ID0gbFZpZXdbVFZJRVddO1xuICBjb25zdCBsQ2xlYW51cCA9IGxWaWV3W0NMRUFOVVBdO1xuICBjb25zdCB0Q2xlYW51cCA9IHRWaWV3LmNsZWFudXA7XG4gIGNvbnN0IGxpc3RlbmVyczogTGlzdGVuZXJbXSA9IFtdO1xuICBpZiAodENsZWFudXAgJiYgbENsZWFudXApIHtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IHRDbGVhbnVwLmxlbmd0aDspIHtcbiAgICAgIGNvbnN0IGZpcnN0UGFyYW0gPSB0Q2xlYW51cFtpKytdO1xuICAgICAgY29uc3Qgc2Vjb25kUGFyYW0gPSB0Q2xlYW51cFtpKytdO1xuICAgICAgaWYgKHR5cGVvZiBmaXJzdFBhcmFtID09PSAnc3RyaW5nJykge1xuICAgICAgICBjb25zdCBuYW1lOiBzdHJpbmcgPSBmaXJzdFBhcmFtO1xuICAgICAgICBjb25zdCBsaXN0ZW5lckVsZW1lbnQgPSB1bndyYXBSTm9kZShsVmlld1tzZWNvbmRQYXJhbV0pIGFzIGFueSBhcyBFbGVtZW50O1xuICAgICAgICBjb25zdCBjYWxsYmFjazogKHZhbHVlOiBhbnkpID0+IGFueSA9IGxDbGVhbnVwW3RDbGVhbnVwW2krK11dO1xuICAgICAgICBjb25zdCB1c2VDYXB0dXJlT3JJbmR4ID0gdENsZWFudXBbaSsrXTtcbiAgICAgICAgLy8gaWYgdXNlQ2FwdHVyZU9ySW5keCBpcyBib29sZWFuIHRoZW4gcmVwb3J0IGl0IGFzIGlzLlxuICAgICAgICAvLyBpZiB1c2VDYXB0dXJlT3JJbmR4IGlzIHBvc2l0aXZlIG51bWJlciB0aGVuIGl0IGluIHVuc3Vic2NyaWJlIG1ldGhvZFxuICAgICAgICAvLyBpZiB1c2VDYXB0dXJlT3JJbmR4IGlzIG5lZ2F0aXZlIG51bWJlciB0aGVuIGl0IGlzIGEgU3Vic2NyaXB0aW9uXG4gICAgICAgIGNvbnN0IHR5cGUgPVxuICAgICAgICAgICAgKHR5cGVvZiB1c2VDYXB0dXJlT3JJbmR4ID09PSAnYm9vbGVhbicgfHwgdXNlQ2FwdHVyZU9ySW5keCA+PSAwKSA/ICdkb20nIDogJ291dHB1dCc7XG4gICAgICAgIGNvbnN0IHVzZUNhcHR1cmUgPSB0eXBlb2YgdXNlQ2FwdHVyZU9ySW5keCA9PT0gJ2Jvb2xlYW4nID8gdXNlQ2FwdHVyZU9ySW5keCA6IGZhbHNlO1xuICAgICAgICBpZiAoZWxlbWVudCA9PSBsaXN0ZW5lckVsZW1lbnQpIHtcbiAgICAgICAgICBsaXN0ZW5lcnMucHVzaCh7ZWxlbWVudCwgbmFtZSwgY2FsbGJhY2ssIHVzZUNhcHR1cmUsIHR5cGV9KTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuICBsaXN0ZW5lcnMuc29ydChzb3J0TGlzdGVuZXJzKTtcbiAgcmV0dXJuIGxpc3RlbmVycztcbn1cblxuZnVuY3Rpb24gc29ydExpc3RlbmVycyhhOiBMaXN0ZW5lciwgYjogTGlzdGVuZXIpIHtcbiAgaWYgKGEubmFtZSA9PSBiLm5hbWUpIHJldHVybiAwO1xuICByZXR1cm4gYS5uYW1lIDwgYi5uYW1lID8gLTEgOiAxO1xufVxuXG4vKipcbiAqIFRoaXMgZnVuY3Rpb24gc2hvdWxkIG5vdCBleGlzdCBiZWNhdXNlIGl0IGlzIG1lZ2Ftb3JwaGljIGFuZCBvbmx5IG1vc3RseSBjb3JyZWN0LlxuICpcbiAqIFNlZSBjYWxsIHNpdGUgZm9yIG1vcmUgaW5mby5cbiAqL1xuZnVuY3Rpb24gaXNEaXJlY3RpdmVEZWZIYWNrKG9iajogYW55KTogb2JqIGlzIERpcmVjdGl2ZURlZjxhbnk+IHtcbiAgcmV0dXJuIG9iai50eXBlICE9PSB1bmRlZmluZWQgJiYgb2JqLnRlbXBsYXRlICE9PSB1bmRlZmluZWQgJiYgb2JqLmRlY2xhcmVkSW5wdXRzICE9PSB1bmRlZmluZWQ7XG59XG5cbi8qKlxuICogUmV0dXJucyB0aGUgYXR0YWNoZWQgYERlYnVnTm9kZWAgaW5zdGFuY2UgZm9yIGFuIGVsZW1lbnQgaW4gdGhlIERPTS5cbiAqXG4gKiBAcGFyYW0gZWxlbWVudCBET00gZWxlbWVudCB3aGljaCBpcyBvd25lZCBieSBhbiBleGlzdGluZyBjb21wb25lbnQncyB2aWV3LlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0RGVidWdOb2RlKGVsZW1lbnQ6IEVsZW1lbnQpOiBEZWJ1Z05vZGV8bnVsbCB7XG4gIGxldCBkZWJ1Z05vZGU6IERlYnVnTm9kZXxudWxsID0gbnVsbDtcblxuICBjb25zdCBsQ29udGV4dCA9IGxvYWRMQ29udGV4dEZyb21Ob2RlKGVsZW1lbnQpO1xuICBjb25zdCBsVmlldyA9IGxDb250ZXh0LmxWaWV3O1xuICBjb25zdCBub2RlSW5kZXggPSBsQ29udGV4dC5ub2RlSW5kZXg7XG4gIGlmIChub2RlSW5kZXggIT09IC0xKSB7XG4gICAgY29uc3QgdmFsdWVJbkxWaWV3ID0gbFZpZXdbbm9kZUluZGV4XTtcbiAgICAvLyB0aGlzIG1lYW5zIHRoYXQgdmFsdWUgaW4gdGhlIGxWaWV3IGlzIGEgY29tcG9uZW50IHdpdGggaXRzIG93blxuICAgIC8vIGRhdGEuIEluIHRoaXMgc2l0dWF0aW9uIHRoZSBUTm9kZSBpcyBub3QgYWNjZXNzZWQgYXQgdGhlIHNhbWUgc3BvdC5cbiAgICBjb25zdCB0Tm9kZSA9IGlzTFZpZXcodmFsdWVJbkxWaWV3KSA/ICh2YWx1ZUluTFZpZXdbVF9IT1NUXSBhcyBUTm9kZSkgOlxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ2V0VE5vZGUobFZpZXdbVFZJRVddLCBub2RlSW5kZXggLSBIRUFERVJfT0ZGU0VUKTtcbiAgICBkZWJ1Z05vZGUgPSBidWlsZERlYnVnTm9kZSh0Tm9kZSwgbFZpZXcsIG5vZGVJbmRleCk7XG4gIH1cblxuICByZXR1cm4gZGVidWdOb2RlO1xufVxuXG4vKipcbiAqIFJldHJpZXZlIHRoZSBjb21wb25lbnQgYExWaWV3YCBmcm9tIGNvbXBvbmVudC9lbGVtZW50LlxuICpcbiAqIE5PVEU6IGBMVmlld2AgaXMgYSBwcml2YXRlIGFuZCBzaG91bGQgbm90IGJlIGxlYWtlZCBvdXRzaWRlLlxuICogICAgICAgRG9uJ3QgZXhwb3J0IHRoaXMgbWV0aG9kIHRvIGBuZy4qYCBvbiB3aW5kb3cuXG4gKlxuICogQHBhcmFtIHRhcmdldCBET00gZWxlbWVudCBvciBjb21wb25lbnQgaW5zdGFuY2UgZm9yIHdoaWNoIHRvIHJldHJpZXZlIHRoZSBMVmlldy5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldENvbXBvbmVudExWaWV3KHRhcmdldDogYW55KTogTFZpZXcge1xuICBjb25zdCBsQ29udGV4dCA9IGxvYWRMQ29udGV4dCh0YXJnZXQpO1xuICBjb25zdCBub2RlSW5keCA9IGxDb250ZXh0Lm5vZGVJbmRleDtcbiAgY29uc3QgbFZpZXcgPSBsQ29udGV4dC5sVmlldztcbiAgY29uc3QgY29tcG9uZW50TFZpZXcgPSBsVmlld1tub2RlSW5keF07XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnRMVmlldyhjb21wb25lbnRMVmlldyk7XG4gIHJldHVybiBjb21wb25lbnRMVmlldztcbn1cblxuLyoqIEFzc2VydHMgdGhhdCBhIHZhbHVlIGlzIGEgRE9NIEVsZW1lbnQuICovXG5mdW5jdGlvbiBhc3NlcnREb21FbGVtZW50KHZhbHVlOiBhbnkpIHtcbiAgaWYgKHR5cGVvZiBFbGVtZW50ICE9PSAndW5kZWZpbmVkJyAmJiAhKHZhbHVlIGluc3RhbmNlb2YgRWxlbWVudCkpIHtcbiAgICB0aHJvdyBuZXcgRXJyb3IoJ0V4cGVjdGluZyBpbnN0YW5jZSBvZiBET00gRWxlbWVudCcpO1xuICB9XG59XG4iXX0=