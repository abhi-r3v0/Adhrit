/**
 * @license
 * Copyright Google LLC All Rights Reserved.
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
import { CLEANUP, CONTEXT, FLAGS, HEADER_OFFSET, HOST, T_HOST, TVIEW } from '../interfaces/view';
import { stringifyForError } from './misc_utils';
import { getLViewParent, getRootContext } from './view_traversal_utils';
import { getTNode, unwrapRNode } from './view_utils';
/**
 * Retrieves the component instance associated with a given DOM element.
 *
 * @usageNotes
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
 * @param element DOM element from which the component should be retrieved.
 * @returns Component instance associated with the element or `null` if there
 *    is no component associated with it.
 *
 * @publicApi
 * @globalApi ng
 */
export function getComponent(element) {
    assertDomElement(element);
    const context = loadLContext(element, false);
    if (context === null)
        return null;
    if (context.component === undefined) {
        context.component = getComponentAtNodeIndex(context.nodeIndex, context.lView);
    }
    return context.component;
}
/**
 * If inside an embedded view (e.g. `*ngIf` or `*ngFor`), retrieves the context of the embedded
 * view that the element is part of. Otherwise retrieves the instance of the component whose view
 * owns the element (in this case, the result is the same as calling `getOwningComponent`).
 *
 * @param element Element for which to get the surrounding component instance.
 * @returns Instance of the component that is around the element or null if the element isn't
 *    inside any component.
 *
 * @publicApi
 * @globalApi ng
 */
export function getContext(element) {
    assertDomElement(element);
    const context = loadLContext(element, false);
    return context === null ? null : context.lView[CONTEXT];
}
/**
 * Retrieves the component instance whose view contains the DOM element.
 *
 * For example, if `<child-comp>` is used in the template of `<app-comp>`
 * (i.e. a `ViewChild` of `<app-comp>`), calling `getOwningComponent` on `<child-comp>`
 * would return `<app-comp>`.
 *
 * @param elementOrDir DOM element, component or directive instance
 *    for which to retrieve the root components.
 * @returns Component instance whose view owns the DOM element or null if the element is not
 *    part of a component view.
 *
 * @publicApi
 * @globalApi ng
 */
export function getOwningComponent(elementOrDir) {
    const context = loadLContext(elementOrDir, false);
    if (context === null)
        return null;
    let lView = context.lView;
    let parent;
    ngDevMode && assertLView(lView);
    while (lView[HOST] === null && (parent = getLViewParent(lView))) {
        // As long as lView[HOST] is null we know we are part of sub-template such as `*ngIf`
        lView = parent;
    }
    return lView[FLAGS] & 512 /* IsRoot */ ? null : lView[CONTEXT];
}
/**
 * Retrieves all root components associated with a DOM element, directive or component instance.
 * Root components are those which have been bootstrapped by Angular.
 *
 * @param elementOrDir DOM element, component or directive instance
 *    for which to retrieve the root components.
 * @returns Root components associated with the target object.
 *
 * @publicApi
 * @globalApi ng
 */
export function getRootComponents(elementOrDir) {
    return [...getRootContext(elementOrDir).components];
}
/**
 * Retrieves an `Injector` associated with an element, component or directive instance.
 *
 * @param elementOrDir DOM element, component or directive instance for which to
 *    retrieve the injector.
 * @returns Injector associated with the element, component or directive instance.
 *
 * @publicApi
 * @globalApi ng
 */
export function getInjector(elementOrDir) {
    const context = loadLContext(elementOrDir, false);
    if (context === null)
        return Injector.NULL;
    const tNode = context.lView[TVIEW].data[context.nodeIndex];
    return new NodeInjector(tNode, context.lView);
}
/**
 * Retrieve a set of injection tokens at a given DOM node.
 *
 * @param element Element for which the injection tokens should be retrieved.
 */
export function getInjectionTokens(element) {
    const context = loadLContext(element, false);
    if (context === null)
        return [];
    const lView = context.lView;
    const tView = lView[TVIEW];
    const tNode = tView.data[context.nodeIndex];
    const providerTokens = [];
    const startIndex = tNode.providerIndexes & 1048575 /* ProvidersStartIndexMask */;
    const endIndex = tNode.directiveEnd;
    for (let i = startIndex; i < endIndex; i++) {
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
 * @usageNotes
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
 * @param element DOM element for which to get the directives.
 * @returns Array of directives associated with the element.
 *
 * @publicApi
 * @globalApi ng
 */
export function getDirectives(element) {
    const context = loadLContext(element);
    if (context.directives === undefined) {
        context.directives = getDirectivesAtNodeIndex(context.nodeIndex, context.lView, false);
    }
    // The `directives` in this case are a named array called `LComponentView`. Clone the
    // result so we don't expose an internal data structure in the user's console.
    return context.directives === null ? [] : [...context.directives];
}
export function loadLContext(target, throwOnNotFound = true) {
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
 * @param target DOM element, component or directive instance for which to retrieve
 *    the local references.
 */
export function getLocalRefs(target) {
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
 * @param componentOrDirective Component or directive instance for which the host
 *     element should be retrieved.
 * @returns Host element of the target.
 *
 * @publicApi
 * @globalApi ng
 */
export function getHostElement(componentOrDirective) {
    return getLContext(componentOrDirective).native;
}
/**
 * Retrieves the rendered text for a given component.
 *
 * This function retrieves the host element of a component and
 * and then returns the `textContent` for that element. This implies
 * that the text returned will include re-projected content of
 * the component as well.
 *
 * @param component The component to return the content text for.
 */
export function getRenderedText(component) {
    const hostElement = getHostElement(component);
    return hostElement.textContent || '';
}
export function loadLContextFromNode(node) {
    if (!(node instanceof Node))
        throw new Error('Expecting instance of DOM Element');
    return loadLContext(node);
}
/**
 * Retrieves a list of event listeners associated with a DOM element. The list does include host
 * listeners, but it does not include event listeners defined outside of the Angular context
 * (e.g. through `addEventListener`).
 *
 * @usageNotes
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
 * @param element Element for which the DOM listeners should be retrieved.
 * @returns Array of event listeners on the DOM element.
 *
 * @publicApi
 * @globalApi ng
 */
export function getListeners(element) {
    assertDomElement(element);
    const lContext = loadLContext(element, false);
    if (lContext === null)
        return [];
    const lView = lContext.lView;
    const tView = lView[TVIEW];
    const lCleanup = lView[CLEANUP];
    const tCleanup = tView.cleanup;
    const listeners = [];
    if (tCleanup && lCleanup) {
        for (let i = 0; i < tCleanup.length;) {
            const firstParam = tCleanup[i++];
            const secondParam = tCleanup[i++];
            if (typeof firstParam === 'string') {
                const name = firstParam;
                const listenerElement = unwrapRNode(lView[secondParam]);
                const callback = lCleanup[tCleanup[i++]];
                const useCaptureOrIndx = tCleanup[i++];
                // if useCaptureOrIndx is boolean then report it as is.
                // if useCaptureOrIndx is positive number then it in unsubscribe method
                // if useCaptureOrIndx is negative number then it is a Subscription
                const type = (typeof useCaptureOrIndx === 'boolean' || useCaptureOrIndx >= 0) ? 'dom' : 'output';
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
function sortListeners(a, b) {
    if (a.name == b.name)
        return 0;
    return a.name < b.name ? -1 : 1;
}
/**
 * This function should not exist because it is megamorphic and only mostly correct.
 *
 * See call site for more info.
 */
function isDirectiveDefHack(obj) {
    return obj.type !== undefined && obj.template !== undefined && obj.declaredInputs !== undefined;
}
/**
 * Returns the attached `DebugNode` instance for an element in the DOM.
 *
 * @param element DOM element which is owned by an existing component's view.
 */
export function getDebugNode(element) {
    let debugNode = null;
    const lContext = loadLContextFromNode(element);
    const lView = lContext.lView;
    const nodeIndex = lContext.nodeIndex;
    if (nodeIndex !== -1) {
        const valueInLView = lView[nodeIndex];
        // this means that value in the lView is a component with its own
        // data. In this situation the TNode is not accessed at the same spot.
        const tNode = isLView(valueInLView) ? valueInLView[T_HOST] :
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
 * @param target DOM element or component instance for which to retrieve the LView.
 */
export function getComponentLView(target) {
    const lContext = loadLContext(target);
    const nodeIndx = lContext.nodeIndex;
    const lView = lContext.lView;
    const componentLView = lView[nodeIndx];
    ngDevMode && assertLView(componentLView);
    return componentLView;
}
/** Asserts that a value is a DOM Element. */
function assertDomElement(value) {
    if (typeof Element !== 'undefined' && !(value instanceof Element)) {
        throw new Error('Expecting instance of DOM Element');
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGlzY292ZXJ5X3V0aWxzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvcmVuZGVyMy91dGlsL2Rpc2NvdmVyeV91dGlscy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFDM0MsT0FBTyxFQUFDLFdBQVcsRUFBQyxNQUFNLFdBQVcsQ0FBQztBQUN0QyxPQUFPLEVBQUMsaUJBQWlCLEVBQUUsdUJBQXVCLEVBQUUsd0JBQXdCLEVBQUUsV0FBVyxFQUFDLE1BQU0sc0JBQXNCLENBQUM7QUFDdkgsT0FBTyxFQUFDLFlBQVksRUFBQyxNQUFNLE9BQU8sQ0FBQztBQUNuQyxPQUFPLEVBQUMsY0FBYyxFQUFDLE1BQU0sNkJBQTZCLENBQUM7QUFJM0QsT0FBTyxFQUFDLE9BQU8sRUFBQyxNQUFNLDJCQUEyQixDQUFDO0FBQ2xELE9BQU8sRUFBQyxPQUFPLEVBQUUsT0FBTyxFQUFhLEtBQUssRUFBRSxhQUFhLEVBQUUsSUFBSSxFQUFxQixNQUFNLEVBQUUsS0FBSyxFQUFDLE1BQU0sb0JBQW9CLENBQUM7QUFFN0gsT0FBTyxFQUFDLGlCQUFpQixFQUFDLE1BQU0sY0FBYyxDQUFDO0FBQy9DLE9BQU8sRUFBQyxjQUFjLEVBQUUsY0FBYyxFQUFDLE1BQU0sd0JBQXdCLENBQUM7QUFDdEUsT0FBTyxFQUFDLFFBQVEsRUFBRSxXQUFXLEVBQUMsTUFBTSxjQUFjLENBQUM7QUFJbkQ7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztHQXdCRztBQUNILE1BQU0sVUFBVSxZQUFZLENBQUksT0FBZ0I7SUFDOUMsZ0JBQWdCLENBQUMsT0FBTyxDQUFDLENBQUM7SUFDMUIsTUFBTSxPQUFPLEdBQUcsWUFBWSxDQUFDLE9BQU8sRUFBRSxLQUFLLENBQUMsQ0FBQztJQUM3QyxJQUFJLE9BQU8sS0FBSyxJ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cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7SW5qZWN0b3J9IGZyb20gJy4uLy4uL2RpL2luamVjdG9yJztcbmltcG9ydCB7YXNzZXJ0TFZpZXd9IGZyb20gJy4uL2Fzc2VydCc7XG5pbXBvcnQge2Rpc2NvdmVyTG9jYWxSZWZzLCBnZXRDb21wb25lbnRBdE5vZGVJbmRleCwgZ2V0RGlyZWN0aXZlc0F0Tm9kZUluZGV4LCBnZXRMQ29udGV4dH0gZnJvbSAnLi4vY29udGV4dF9kaXNjb3ZlcnknO1xuaW1wb3J0IHtOb2RlSW5qZWN0b3J9IGZyb20gJy4uL2RpJztcbmltcG9ydCB7YnVpbGREZWJ1Z05vZGV9IGZyb20gJy4uL2luc3RydWN0aW9ucy9sdmlld19kZWJ1Zyc7XG5pbXBvcnQge0xDb250ZXh0fSBmcm9tICcuLi9pbnRlcmZhY2VzL2NvbnRleHQnO1xuaW1wb3J0IHtEaXJlY3RpdmVEZWZ9IGZyb20gJy4uL2ludGVyZmFjZXMvZGVmaW5pdGlvbic7XG5pbXBvcnQge1RFbGVtZW50Tm9kZSwgVE5vZGUsIFROb2RlUHJvdmlkZXJJbmRleGVzfSBmcm9tICcuLi9pbnRlcmZhY2VzL25vZGUnO1xuaW1wb3J0IHtpc0xWaWV3fSBmcm9tICcuLi9pbnRlcmZhY2VzL3R5cGVfY2hlY2tzJztcbmltcG9ydCB7Q0xFQU5VUCwgQ09OVEVYVCwgRGVidWdOb2RlLCBGTEFHUywgSEVBREVSX09GRlNFVCwgSE9TVCwgTFZpZXcsIExWaWV3RmxhZ3MsIFRfSE9TVCwgVFZJRVd9IGZyb20gJy4uL2ludGVyZmFjZXMvdmlldyc7XG5cbmltcG9ydCB7c3RyaW5naWZ5Rm9yRXJyb3J9IGZyb20gJy4vbWlzY191dGlscyc7XG5pbXBvcnQge2dldExWaWV3UGFyZW50LCBnZXRSb290Q29udGV4dH0gZnJvbSAnLi92aWV3X3RyYXZlcnNhbF91dGlscyc7XG5pbXBvcnQge2dldFROb2RlLCB1bndyYXBSTm9kZX0gZnJvbSAnLi92aWV3X3V0aWxzJztcblxuXG5cbi8qKlxuICogUmV0cmlldmVzIHRoZSBjb21wb25lbnQgaW5zdGFuY2UgYXNzb2NpYXRlZCB3aXRoIGEgZ2l2ZW4gRE9NIGVsZW1lbnQuXG4gKlxuICogQHVzYWdlTm90ZXNcbiAqIEdpdmVuIHRoZSBmb2xsb3dpbmcgRE9NIHN0cnVjdHVyZTpcbiAqIGBgYGh0bWxcbiAqIDxteS1hcHA+XG4gKiAgIDxkaXY+XG4gKiAgICAgPGNoaWxkLWNvbXA+PC9jaGlsZC1jb21wPlxuICogICA8L2Rpdj5cbiAqIDwvbXktYXBwPlxuICogYGBgXG4gKiBDYWxsaW5nIGBnZXRDb21wb25lbnRgIG9uIGA8Y2hpbGQtY29tcD5gIHdpbGwgcmV0dXJuIHRoZSBpbnN0YW5jZSBvZiBgQ2hpbGRDb21wb25lbnRgXG4gKiBhc3NvY2lhdGVkIHdpdGggdGhpcyBET00gZWxlbWVudC5cbiAqXG4gKiBDYWxsaW5nIHRoZSBmdW5jdGlvbiBvbiBgPG15LWFwcD5gIHdpbGwgcmV0dXJuIHRoZSBgTXlBcHBgIGluc3RhbmNlLlxuICpcbiAqXG4gKiBAcGFyYW0gZWxlbWVudCBET00gZWxlbWVudCBmcm9tIHdoaWNoIHRoZSBjb21wb25lbnQgc2hvdWxkIGJlIHJldHJpZXZlZC5cbiAqIEByZXR1cm5zIENvbXBvbmVudCBpbnN0YW5jZSBhc3NvY2lhdGVkIHdpdGggdGhlIGVsZW1lbnQgb3IgYG51bGxgIGlmIHRoZXJlXG4gKiAgICBpcyBubyBjb21wb25lbnQgYXNzb2NpYXRlZCB3aXRoIGl0LlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqIEBnbG9iYWxBcGkgbmdcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldENvbXBvbmVudDxUPihlbGVtZW50OiBFbGVtZW50KTogVHxudWxsIHtcbiAgYXNzZXJ0RG9tRWxlbWVudChlbGVtZW50KTtcbiAgY29uc3QgY29udGV4dCA9IGxvYWRMQ29udGV4dChlbGVtZW50LCBmYWxzZSk7XG4gIGlmIChjb250ZXh0ID09PSBudWxsKSByZXR1cm4gbnVsbDtcblxuICBpZiAoY29udGV4dC5jb21wb25lbnQgPT09IHVuZGVmaW5lZCkge1xuICAgIGNvbnRleHQuY29tcG9uZW50ID0gZ2V0Q29tcG9uZW50QXROb2RlSW5kZXgoY29udGV4dC5ub2RlSW5kZXgsIGNvbnRleHQubFZpZXcpO1xuICB9XG5cbiAgcmV0dXJuIGNvbnRleHQuY29tcG9uZW50IGFzIFQ7XG59XG5cblxuLyoqXG4gKiBJZiBpbnNpZGUgYW4gZW1iZWRkZWQgdmlldyAoZS5nLiBgKm5nSWZgIG9yIGAqbmdGb3JgKSwgcmV0cmlldmVzIHRoZSBjb250ZXh0IG9mIHRoZSBlbWJlZGRlZFxuICogdmlldyB0aGF0IHRoZSBlbGVtZW50IGlzIHBhcnQgb2YuIE90aGVyd2lzZSByZXRyaWV2ZXMgdGhlIGluc3RhbmNlIG9mIHRoZSBjb21wb25lbnQgd2hvc2Ugdmlld1xuICogb3ducyB0aGUgZWxlbWVudCAoaW4gdGhpcyBjYXNlLCB0aGUgcmVzdWx0IGlzIHRoZSBzYW1lIGFzIGNhbGxpbmcgYGdldE93bmluZ0NvbXBvbmVudGApLlxuICpcbiAqIEBwYXJhbSBlbGVtZW50IEVsZW1lbnQgZm9yIHdoaWNoIHRvIGdldCB0aGUgc3Vycm91bmRpbmcgY29tcG9uZW50IGluc3RhbmNlLlxuICogQHJldHVybnMgSW5zdGFuY2Ugb2YgdGhlIGNvbXBvbmVudCB0aGF0IGlzIGFyb3VuZCB0aGUgZWxlbWVudCBvciBudWxsIGlmIHRoZSBlbGVtZW50IGlzbid0XG4gKiAgICBpbnNpZGUgYW55IGNvbXBvbmVudC5cbiAqXG4gKiBAcHVibGljQXBpXG4gKiBAZ2xvYmFsQXBpIG5nXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRDb250ZXh0PFQ+KGVsZW1lbnQ6IEVsZW1lbnQpOiBUfG51bGwge1xuICBhc3NlcnREb21FbGVtZW50KGVsZW1lbnQpO1xuICBjb25zdCBjb250ZXh0ID0gbG9hZExDb250ZXh0KGVsZW1lbnQsIGZhbHNlKTtcbiAgcmV0dXJuIGNvbnRleHQgPT09IG51bGwgPyBudWxsIDogY29udGV4dC5sVmlld1tDT05URVhUXSBhcyBUO1xufVxuXG4vKipcbiAqIFJldHJpZXZlcyB0aGUgY29tcG9uZW50IGluc3RhbmNlIHdob3NlIHZpZXcgY29udGFpbnMgdGhlIERPTSBlbGVtZW50LlxuICpcbiAqIEZvciBleGFtcGxlLCBpZiBgPGNoaWxkLWNvbXA+YCBpcyB1c2VkIGluIHRoZSB0ZW1wbGF0ZSBvZiBgPGFwcC1jb21wPmBcbiAqIChpLmUuIGEgYFZpZXdDaGlsZGAgb2YgYDxhcHAtY29tcD5gKSwgY2FsbGluZyBgZ2V0T3duaW5nQ29tcG9uZW50YCBvbiBgPGNoaWxkLWNvbXA+YFxuICogd291bGQgcmV0dXJuIGA8YXBwLWNvbXA+YC5cbiAqXG4gKiBAcGFyYW0gZWxlbWVudE9yRGlyIERPTSBlbGVtZW50LCBjb21wb25lbnQgb3IgZGlyZWN0aXZlIGluc3RhbmNlXG4gKiAgICBmb3Igd2hpY2ggdG8gcmV0cmlldmUgdGhlIHJvb3QgY29tcG9uZW50cy5cbiAqIEByZXR1cm5zIENvbXBvbmVudCBpbnN0YW5jZSB3aG9zZSB2aWV3IG93bnMgdGhlIERPTSBlbGVtZW50IG9yIG51bGwgaWYgdGhlIGVsZW1lbnQgaXMgbm90XG4gKiAgICBwYXJ0IG9mIGEgY29tcG9uZW50IHZpZXcuXG4gKlxuICogQHB1YmxpY0FwaVxuICogQGdsb2JhbEFwaSBuZ1xuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0T3duaW5nQ29tcG9uZW50PFQ+KGVsZW1lbnRPckRpcjogRWxlbWVudHx7fSk6IFR8bnVsbCB7XG4gIGNvbnN0IGNvbnRleHQgPSBsb2FkTENvbnRleHQoZWxlbWVudE9yRGlyLCBmYWxzZSk7XG4gIGlmIChjb250ZXh0ID09PSBudWxsKSByZXR1cm4gbnVsbDtcblxuICBsZXQgbFZpZXcgPSBjb250ZXh0LmxWaWV3O1xuICBsZXQgcGFyZW50OiBMVmlld3xudWxsO1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0TFZpZXcobFZpZXcpO1xuICB3aGlsZSAobFZpZXdbSE9TVF0gPT09IG51bGwgJiYgKHBhcmVudCA9IGdldExWaWV3UGFyZW50KGxWaWV3KSEpKSB7XG4gICAgLy8gQXMgbG9uZyBhcyBsVmlld1tIT1NUXSBpcyBudWxsIHdlIGtub3cgd2UgYXJlIHBhcnQgb2Ygc3ViLXRlbXBsYXRlIHN1Y2ggYXMgYCpuZ0lmYFxuICAgIGxWaWV3ID0gcGFyZW50O1xuICB9XG4gIHJldHVybiBsVmlld1tGTEFHU10gJiBMVmlld0ZsYWdzLklzUm9vdCA/IG51bGwgOiBsVmlld1tDT05URVhUXSBhcyBUO1xufVxuXG4vKipcbiAqIFJldHJpZXZlcyBhbGwgcm9vdCBjb21wb25lbnRzIGFzc29jaWF0ZWQgd2l0aCBhIERPTSBlbGVtZW50LCBkaXJlY3RpdmUgb3IgY29tcG9uZW50IGluc3RhbmNlLlxuICogUm9vdCBjb21wb25lbnRzIGFyZSB0aG9zZSB3aGljaCBoYXZlIGJlZW4gYm9vdHN0cmFwcGVkIGJ5IEFuZ3VsYXIuXG4gKlxuICogQHBhcmFtIGVsZW1lbnRPckRpciBET00gZWxlbWVudCwgY29tcG9uZW50IG9yIGRpcmVjdGl2ZSBpbnN0YW5jZVxuICogICAgZm9yIHdoaWNoIHRvIHJldHJpZXZlIHRoZSByb290IGNvbXBvbmVudHMuXG4gKiBAcmV0dXJucyBSb290IGNvbXBvbmVudHMgYXNzb2NpYXRlZCB3aXRoIHRoZSB0YXJnZXQgb2JqZWN0LlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqIEBnbG9iYWxBcGkgbmdcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldFJvb3RDb21wb25lbnRzKGVsZW1lbnRPckRpcjogRWxlbWVudHx7fSk6IHt9W10ge1xuICByZXR1cm4gWy4uLmdldFJvb3RDb250ZXh0KGVsZW1lbnRPckRpcikuY29tcG9uZW50c107XG59XG5cbi8qKlxuICogUmV0cmlldmVzIGFuIGBJbmplY3RvcmAgYXNzb2NpYXRlZCB3aXRoIGFuIGVsZW1lbnQsIGNvbXBvbmVudCBvciBkaXJlY3RpdmUgaW5zdGFuY2UuXG4gKlxuICogQHBhcmFtIGVsZW1lbnRPckRpciBET00gZWxlbWVudCwgY29tcG9uZW50IG9yIGRpcmVjdGl2ZSBpbnN0YW5jZSBmb3Igd2hpY2ggdG9cbiAqICAgIHJldHJpZXZlIHRoZSBpbmplY3Rvci5cbiAqIEByZXR1cm5zIEluamVjdG9yIGFzc29jaWF0ZWQgd2l0aCB0aGUgZWxlbWVudCwgY29tcG9uZW50IG9yIGRpcmVjdGl2ZSBpbnN0YW5jZS5cbiAqXG4gKiBAcHVibGljQXBpXG4gKiBAZ2xvYmFsQXBpIG5nXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRJbmplY3RvcihlbGVtZW50T3JEaXI6IEVsZW1lbnR8e30pOiBJbmplY3RvciB7XG4gIGNvbnN0IGNvbnRleHQgPSBsb2FkTENvbnRleHQoZWxlbWVudE9yRGlyLCBmYWxzZSk7XG4gIGlmIChjb250ZXh0ID09PSBudWxsKSByZXR1cm4gSW5qZWN0b3IuTlVMTDtcblxuICBjb25zdCB0Tm9kZSA9IGNvbnRleHQubFZpZXdbVFZJRVddLmRhdGFbY29udGV4dC5ub2RlSW5kZXhdIGFzIFRFbGVtZW50Tm9kZTtcbiAgcmV0dXJuIG5ldyBOb2RlSW5qZWN0b3IodE5vZGUsIGNvbnRleHQubFZpZXcpO1xufVxuXG4vKipcbiAqIFJldHJpZXZlIGEgc2V0IG9mIGluamVjdGlvbiB0b2tlbnMgYXQgYSBnaXZlbiBET00gbm9kZS5cbiAqXG4gKiBAcGFyYW0gZWxlbWVudCBFbGVtZW50IGZvciB3aGljaCB0aGUgaW5qZWN0aW9uIHRva2VucyBzaG91bGQgYmUgcmV0cmlldmVkLlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0SW5qZWN0aW9uVG9rZW5zKGVsZW1lbnQ6IEVsZW1lbnQpOiBhbnlbXSB7XG4gIGNvbnN0IGNvbnRleHQgPSBsb2FkTENvbnRleHQoZWxlbWVudCwgZmFsc2UpO1xuICBpZiAoY29udGV4dCA9PT0gbnVsbCkgcmV0dXJuIFtdO1xuICBjb25zdCBsVmlldyA9IGNvbnRleHQubFZpZXc7XG4gIGNvbnN0IHRWaWV3ID0gbFZpZXdbVFZJRVddO1xuICBjb25zdCB0Tm9kZSA9IHRWaWV3LmRhdGFbY29udGV4dC5ub2RlSW5kZXhdIGFzIFROb2RlO1xuICBjb25zdCBwcm92aWRlclRva2VuczogYW55W10gPSBbXTtcbiAgY29uc3Qgc3RhcnRJbmRleCA9IHROb2RlLnByb3ZpZGVySW5kZXhlcyAmIFROb2RlUHJvdmlkZXJJbmRleGVzLlByb3ZpZGVyc1N0YXJ0SW5kZXhNYXNrO1xuICBjb25zdCBlbmRJbmRleCA9IHROb2RlLmRpcmVjdGl2ZUVuZDtcbiAgZm9yIChsZXQgaSA9IHN0YXJ0SW5kZXg7IGkgPCBlbmRJbmRleDsgaSsrKSB7XG4gICAgbGV0IHZhbHVlID0gdFZpZXcuZGF0YVtpXTtcbiAgICBpZiAoaXNEaXJlY3RpdmVEZWZIYWNrKHZhbHVlKSkge1xuICAgICAgLy8gVGhlIGZhY3QgdGhhdCB3ZSBzb21ldGltZXMgc3RvcmUgVHlwZSBhbmQgc29tZXRpbWVzIERpcmVjdGl2ZURlZiBpbiB0aGlzIGxvY2F0aW9uIGlzIGFcbiAgICAgIC8vIGRlc2lnbiBmbGF3LiAgV2Ugc2hvdWxkIGFsd2F5cyBzdG9yZSBzYW1lIHR5cGUgc28gdGhhdCB3ZSBjYW4gYmUgbW9ub21vcnBoaWMuIFRoZSBpc3N1ZVxuICAgICAgLy8gaXMgdGhhdCBmb3IgQ29tcG9uZW50cy9EaXJlY3RpdmVzIHdlIHN0b3JlIHRoZSBkZWYgaW5zdGVhZCB0aGUgdHlwZS4gVGhlIGNvcnJlY3QgYmVoYXZpb3JcbiAgICAgIC8vIGlzIHRoYXQgd2Ugc2hvdWxkIGFsd2F5cyBiZSBzdG9yaW5nIGluamVjdGFibGUgdHlwZSBpbiB0aGlzIGxvY2F0aW9uLlxuICAgICAgdmFsdWUgPSB2YWx1ZS50eXBlO1xuICAgIH1cbiAgICBwcm92aWRlclRva2Vucy5wdXNoKHZhbHVlKTtcbiAgfVxuICByZXR1cm4gcHJvdmlkZXJUb2tlbnM7XG59XG5cbi8qKlxuICogUmV0cmlldmVzIGRpcmVjdGl2ZSBpbnN0YW5jZXMgYXNzb2NpYXRlZCB3aXRoIGEgZ2l2ZW4gRE9NIGVsZW1lbnQuIERvZXMgbm90IGluY2x1ZGVcbiAqIGNvbXBvbmVudCBpbnN0YW5jZXMuXG4gKlxuICogQHVzYWdlTm90ZXNcbiAqIEdpdmVuIHRoZSBmb2xsb3dpbmcgRE9NIHN0cnVjdHVyZTpcbiAqIGBgYFxuICogPG15LWFwcD5cbiAqICAgPGJ1dHRvbiBteS1idXR0b24+PC9idXR0b24+XG4gKiAgIDxteS1jb21wPjwvbXktY29tcD5cbiAqIDwvbXktYXBwPlxuICogYGBgXG4gKiBDYWxsaW5nIGBnZXREaXJlY3RpdmVzYCBvbiBgPGJ1dHRvbj5gIHdpbGwgcmV0dXJuIGFuIGFycmF5IHdpdGggYW4gaW5zdGFuY2Ugb2YgdGhlIGBNeUJ1dHRvbmBcbiAqIGRpcmVjdGl2ZSB0aGF0IGlzIGFzc29jaWF0ZWQgd2l0aCB0aGUgRE9NIGVsZW1lbnQuXG4gKlxuICogQ2FsbGluZyBgZ2V0RGlyZWN0aXZlc2Agb24gYDxteS1jb21wPmAgd2lsbCByZXR1cm4gYW4gZW1wdHkgYXJyYXkuXG4gKlxuICogQHBhcmFtIGVsZW1lbnQgRE9NIGVsZW1lbnQgZm9yIHdoaWNoIHRvIGdldCB0aGUgZGlyZWN0aXZlcy5cbiAqIEByZXR1cm5zIEFycmF5IG9mIGRpcmVjdGl2ZXMgYXNzb2NpYXRlZCB3aXRoIHRoZSBlbGVtZW50LlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqIEBnbG9iYWxBcGkgbmdcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldERpcmVjdGl2ZXMoZWxlbWVudDogRWxlbWVudCk6IHt9W10ge1xuICBjb25zdCBjb250ZXh0ID0gbG9hZExDb250ZXh0KGVsZW1lbnQpITtcblxuICBpZiAoY29udGV4dC5kaXJlY3RpdmVzID09PSB1bmRlZmluZWQpIHtcbiAgICBjb250ZXh0LmRpcmVjdGl2ZXMgPSBnZXREaXJlY3RpdmVzQXROb2RlSW5kZXgoY29udGV4dC5ub2RlSW5kZXgsIGNvbnRleHQubFZpZXcsIGZhbHNlKTtcbiAgfVxuXG4gIC8vIFRoZSBgZGlyZWN0aXZlc2AgaW4gdGhpcyBjYXNlIGFyZSBhIG5hbWVkIGFycmF5IGNhbGxlZCBgTENvbXBvbmVudFZpZXdgLiBDbG9uZSB0aGVcbiAgLy8gcmVzdWx0IHNvIHdlIGRvbid0IGV4cG9zZSBhbiBpbnRlcm5hbCBkYXRhIHN0cnVjdHVyZSBpbiB0aGUgdXNlcidzIGNvbnNvbGUuXG4gIHJldHVybiBjb250ZXh0LmRpcmVjdGl2ZXMgPT09IG51bGwgPyBbXSA6IFsuLi5jb250ZXh0LmRpcmVjdGl2ZXNdO1xufVxuXG4vKipcbiAqIFJldHVybnMgTENvbnRleHQgYXNzb2NpYXRlZCB3aXRoIGEgdGFyZ2V0IHBhc3NlZCBhcyBhbiBhcmd1bWVudC5cbiAqIFRocm93cyBpZiBhIGdpdmVuIHRhcmdldCBkb2Vzbid0IGhhdmUgYXNzb2NpYXRlZCBMQ29udGV4dC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGxvYWRMQ29udGV4dCh0YXJnZXQ6IHt9KTogTENvbnRleHQ7XG5leHBvcnQgZnVuY3Rpb24gbG9hZExDb250ZXh0KHRhcmdldDoge30sIHRocm93T25Ob3RGb3VuZDogZmFsc2UpOiBMQ29udGV4dHxudWxsO1xuZXhwb3J0IGZ1bmN0aW9uIGxvYWRMQ29udGV4dCh0YXJnZXQ6IHt9LCB0aHJvd09uTm90Rm91bmQ6IGJvb2xlYW4gPSB0cnVlKTogTENvbnRleHR8bnVsbCB7XG4gIGNvbnN0IGNvbnRleHQgPSBnZXRMQ29udGV4dCh0YXJnZXQpO1xuICBpZiAoIWNvbnRleHQgJiYgdGhyb3dPbk5vdEZvdW5kKSB7XG4gICAgdGhyb3cgbmV3IEVycm9yKFxuICAgICAgICBuZ0Rldk1vZGUgPyBgVW5hYmxlIHRvIGZpbmQgY29udGV4dCBhc3NvY2lhdGVkIHdpdGggJHtzdHJpbmdpZnlGb3JFcnJvcih0YXJnZXQpfWAgOlxuICAgICAgICAgICAgICAgICAgICAnSW52YWxpZCBuZyB0YXJnZXQnKTtcbiAgfVxuICByZXR1cm4gY29udGV4dDtcbn1cblxuLyoqXG4gKiBSZXRyaWV2ZSBtYXAgb2YgbG9jYWwgcmVmZXJlbmNlcy5cbiAqXG4gKiBUaGUgcmVmZXJlbmNlcyBhcmUgcmV0cmlldmVkIGFzIGEgbWFwIG9mIGxvY2FsIHJlZmVyZW5jZSBuYW1lIHRvIGVsZW1lbnQgb3IgZGlyZWN0aXZlIGluc3RhbmNlLlxuICpcbiAqIEBwYXJhbSB0YXJnZXQgRE9NIGVsZW1lbnQsIGNvbXBvbmVudCBvciBkaXJlY3RpdmUgaW5zdGFuY2UgZm9yIHdoaWNoIHRvIHJldHJpZXZlXG4gKiAgICB0aGUgbG9jYWwgcmVmZXJlbmNlcy5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldExvY2FsUmVmcyh0YXJnZXQ6IHt9KToge1trZXk6IHN0cmluZ106IGFueX0ge1xuICBjb25zdCBjb250ZXh0ID0gbG9hZExDb250ZXh0KHRhcmdldCwgZmFsc2UpO1xuICBpZiAoY29udGV4dCA9PT0gbnVsbCkgcmV0dXJuIHt9O1xuXG4gIGlmIChjb250ZXh0LmxvY2FsUmVmcyA9PT0gdW5kZWZpbmVkKSB7XG4gICAgY29udGV4dC5sb2NhbFJlZnMgPSBkaXNjb3ZlckxvY2FsUmVmcyhjb250ZXh0LmxWaWV3LCBjb250ZXh0Lm5vZGVJbmRleCk7XG4gIH1cblxuICByZXR1cm4gY29udGV4dC5sb2NhbFJlZnMgfHwge307XG59XG5cbi8qKlxuICogUmV0cmlldmVzIHRoZSBob3N0IGVsZW1lbnQgb2YgYSBjb21wb25lbnQgb3IgZGlyZWN0aXZlIGluc3RhbmNlLlxuICogVGhlIGhvc3QgZWxlbWVudCBpcyB0aGUgRE9NIGVsZW1lbnQgdGhhdCBtYXRjaGVkIHRoZSBzZWxlY3RvciBvZiB0aGUgZGlyZWN0aXZlLlxuICpcbiAqIEBwYXJhbSBjb21wb25lbnRPckRpcmVjdGl2ZSBDb21wb25lbnQgb3IgZGlyZWN0aXZlIGluc3RhbmNlIGZvciB3aGljaCB0aGUgaG9zdFxuICogICAgIGVsZW1lbnQgc2hvdWxkIGJlIHJldHJpZXZlZC5cbiAqIEByZXR1cm5zIEhvc3QgZWxlbWVudCBvZiB0aGUgdGFyZ2V0LlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqIEBnbG9iYWxBcGkgbmdcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldEhvc3RFbGVtZW50KGNvbXBvbmVudE9yRGlyZWN0aXZlOiB7fSk6IEVsZW1lbnQge1xuICByZXR1cm4gZ2V0TENvbnRleHQoY29tcG9uZW50T3JEaXJlY3RpdmUpIS5uYXRpdmUgYXMgbmV2ZXIgYXMgRWxlbWVudDtcbn1cblxuLyoqXG4gKiBSZXRyaWV2ZXMgdGhlIHJlbmRlcmVkIHRleHQgZm9yIGEgZ2l2ZW4gY29tcG9uZW50LlxuICpcbiAqIFRoaXMgZnVuY3Rpb24gcmV0cmlldmVzIHRoZSBob3N0IGVsZW1lbnQgb2YgYSBjb21wb25lbnQgYW5kXG4gKiBhbmQgdGhlbiByZXR1cm5zIHRoZSBgdGV4dENvbnRlbnRgIGZvciB0aGF0IGVsZW1lbnQuIFRoaXMgaW1wbGllc1xuICogdGhhdCB0aGUgdGV4dCByZXR1cm5lZCB3aWxsIGluY2x1ZGUgcmUtcHJvamVjdGVkIGNvbnRlbnQgb2ZcbiAqIHRoZSBjb21wb25lbnQgYXMgd2VsbC5cbiAqXG4gKiBAcGFyYW0gY29tcG9uZW50IFRoZSBjb21wb25lbnQgdG8gcmV0dXJuIHRoZSBjb250ZW50IHRleHQgZm9yLlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0UmVuZGVyZWRUZXh0KGNvbXBvbmVudDogYW55KTogc3RyaW5nIHtcbiAgY29uc3QgaG9zdEVsZW1lbnQgPSBnZXRIb3N0RWxlbWVudChjb21wb25lbnQpO1xuICByZXR1cm4gaG9zdEVsZW1lbnQudGV4dENvbnRlbnQgfHwgJyc7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBsb2FkTENvbnRleHRGcm9tTm9kZShub2RlOiBOb2RlKTogTENvbnRleHQge1xuICBpZiAoIShub2RlIGluc3RhbmNlb2YgTm9kZSkpIHRocm93IG5ldyBFcnJvcignRXhwZWN0aW5nIGluc3RhbmNlIG9mIERPTSBFbGVtZW50Jyk7XG4gIHJldHVybiBsb2FkTENvbnRleHQobm9kZSkhO1xufVxuXG4vKipcbiAqIEV2ZW50IGxpc3RlbmVyIGNvbmZpZ3VyYXRpb24gcmV0dXJuZWQgZnJvbSBgZ2V0TGlzdGVuZXJzYC5cbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGludGVyZmFjZSBMaXN0ZW5lciB7XG4gIC8qKiBOYW1lIG9mIHRoZSBldmVudCBsaXN0ZW5lci4gKi9cbiAgbmFtZTogc3RyaW5nO1xuICAvKiogRWxlbWVudCB0aGF0IHRoZSBsaXN0ZW5lciBpcyBib3VuZCB0by4gKi9cbiAgZWxlbWVudDogRWxlbWVudDtcbiAgLyoqIENhbGxiYWNrIHRoYXQgaXMgaW52b2tlZCB3aGVuIHRoZSBldmVudCBpcyB0cmlnZ2VyZWQuICovXG4gIGNhbGxiYWNrOiAodmFsdWU6IGFueSkgPT4gYW55O1xuICAvKiogV2hldGhlciB0aGUgbGlzdGVuZXIgaXMgdXNpbmcgZXZlbnQgY2FwdHVyaW5nLiAqL1xuICB1c2VDYXB0dXJlOiBib29sZWFuO1xuICAvKipcbiAgICogVHlwZSBvZiB0aGUgbGlzdGVuZXIgKGUuZy4gYSBuYXRpdmUgRE9NIGV2ZW50IG9yIGEgY3VzdG9tIEBPdXRwdXQpLlxuICAgKi9cbiAgdHlwZTogJ2RvbSd8J291dHB1dCc7XG59XG5cblxuLyoqXG4gKiBSZXRyaWV2ZXMgYSBsaXN0IG9mIGV2ZW50IGxpc3RlbmVycyBhc3NvY2lhdGVkIHdpdGggYSBET00gZWxlbWVudC4gVGhlIGxpc3QgZG9lcyBpbmNsdWRlIGhvc3RcbiAqIGxpc3RlbmVycywgYnV0IGl0IGRvZXMgbm90IGluY2x1ZGUgZXZlbnQgbGlzdGVuZXJzIGRlZmluZWQgb3V0c2lkZSBvZiB0aGUgQW5ndWxhciBjb250ZXh0XG4gKiAoZS5nLiB0aHJvdWdoIGBhZGRFdmVudExpc3RlbmVyYCkuXG4gKlxuICogQHVzYWdlTm90ZXNcbiAqIEdpdmVuIHRoZSBmb2xsb3dpbmcgRE9NIHN0cnVjdHVyZTpcbiAqIGBgYFxuICogPG15LWFwcD5cbiAqICAgPGRpdiAoY2xpY2spPVwiZG9Tb21ldGhpbmcoKVwiPjwvZGl2PlxuICogPC9teS1hcHA+XG4gKlxuICogYGBgXG4gKiBDYWxsaW5nIGBnZXRMaXN0ZW5lcnNgIG9uIGA8ZGl2PmAgd2lsbCByZXR1cm4gYW4gb2JqZWN0IHRoYXQgbG9va3MgYXMgZm9sbG93czpcbiAqIGBgYFxuICoge1xuICogICBuYW1lOiAnY2xpY2snLFxuICogICBlbGVtZW50OiA8ZGl2PixcbiAqICAgY2FsbGJhY2s6ICgpID0+IGRvU29tZXRoaW5nKCksXG4gKiAgIHVzZUNhcHR1cmU6IGZhbHNlXG4gKiB9XG4gKiBgYGBcbiAqXG4gKiBAcGFyYW0gZWxlbWVudCBFbGVtZW50IGZvciB3aGljaCB0aGUgRE9NIGxpc3RlbmVycyBzaG91bGQgYmUgcmV0cmlldmVkLlxuICogQHJldHVybnMgQXJyYXkgb2YgZXZlbnQgbGlzdGVuZXJzIG9uIHRoZSBET00gZWxlbWVudC5cbiAqXG4gKiBAcHVibGljQXBpXG4gKiBAZ2xvYmFsQXBpIG5nXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRMaXN0ZW5lcnMoZWxlbWVudDogRWxlbWVudCk6IExpc3RlbmVyW10ge1xuICBhc3NlcnREb21FbGVtZW50KGVsZW1lbnQpO1xuICBjb25zdCBsQ29udGV4dCA9IGxvYWRMQ29udGV4dChlbGVtZW50LCBmYWxzZSk7XG4gIGlmIChsQ29udGV4dCA9PT0gbnVsbCkgcmV0dXJuIFtdO1xuXG4gIGNvbnN0IGxWaWV3ID0gbENvbnRleHQubFZpZXc7XG4gIGNvbnN0IHRWaWV3ID0gbFZpZXdbVFZJRVddO1xuICBjb25zdCBsQ2xlYW51cCA9IGxWaWV3W0NMRUFOVVBdO1xuICBjb25zdCB0Q2xlYW51cCA9IHRWaWV3LmNsZWFudXA7XG4gIGNvbnN0IGxpc3RlbmVyczogTGlzdGVuZXJbXSA9IFtdO1xuICBpZiAodENsZWFudXAgJiYgbENsZWFudXApIHtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IHRDbGVhbnVwLmxlbmd0aDspIHtcbiAgICAgIGNvbnN0IGZpcnN0UGFyYW0gPSB0Q2xlYW51cFtpKytdO1xuICAgICAgY29uc3Qgc2Vjb25kUGFyYW0gPSB0Q2xlYW51cFtpKytdO1xuICAgICAgaWYgKHR5cGVvZiBmaXJzdFBhcmFtID09PSAnc3RyaW5nJykge1xuICAgICAgICBjb25zdCBuYW1lOiBzdHJpbmcgPSBmaXJzdFBhcmFtO1xuICAgICAgICBjb25zdCBsaXN0ZW5lckVsZW1lbnQgPSB1bndyYXBSTm9kZShsVmlld1tzZWNvbmRQYXJhbV0pIGFzIGFueSBhcyBFbGVtZW50O1xuICAgICAgICBjb25zdCBjYWxsYmFjazogKHZhbHVlOiBhbnkpID0+IGFueSA9IGxDbGVhbnVwW3RDbGVhbnVwW2krK11dO1xuICAgICAgICBjb25zdCB1c2VDYXB0dXJlT3JJbmR4ID0gdENsZWFudXBbaSsrXTtcbiAgICAgICAgLy8gaWYgdXNlQ2FwdHVyZU9ySW5keCBpcyBib29sZWFuIHRoZW4gcmVwb3J0IGl0IGFzIGlzLlxuICAgICAgICAvLyBpZiB1c2VDYXB0dXJlT3JJbmR4IGlzIHBvc2l0aXZlIG51bWJlciB0aGVuIGl0IGluIHVuc3Vic2NyaWJlIG1ldGhvZFxuICAgICAgICAvLyBpZiB1c2VDYXB0dXJlT3JJbmR4IGlzIG5lZ2F0aXZlIG51bWJlciB0aGVuIGl0IGlzIGEgU3Vic2NyaXB0aW9uXG4gICAgICAgIGNvbnN0IHR5cGUgPVxuICAgICAgICAgICAgKHR5cGVvZiB1c2VDYXB0dXJlT3JJbmR4ID09PSAnYm9vbGVhbicgfHwgdXNlQ2FwdHVyZU9ySW5keCA+PSAwKSA/ICdkb20nIDogJ291dHB1dCc7XG4gICAgICAgIGNvbnN0IHVzZUNhcHR1cmUgPSB0eXBlb2YgdXNlQ2FwdHVyZU9ySW5keCA9PT0gJ2Jvb2xlYW4nID8gdXNlQ2FwdHVyZU9ySW5keCA6IGZhbHNlO1xuICAgICAgICBpZiAoZWxlbWVudCA9PSBsaXN0ZW5lckVsZW1lbnQpIHtcbiAgICAgICAgICBsaXN0ZW5lcnMucHVzaCh7ZWxlbWVudCwgbmFtZSwgY2FsbGJhY2ssIHVzZUNhcHR1cmUsIHR5cGV9KTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuICBsaXN0ZW5lcnMuc29ydChzb3J0TGlzdGVuZXJzKTtcbiAgcmV0dXJuIGxpc3RlbmVycztcbn1cblxuZnVuY3Rpb24gc29ydExpc3RlbmVycyhhOiBMaXN0ZW5lciwgYjogTGlzdGVuZXIpIHtcbiAgaWYgKGEubmFtZSA9PSBiLm5hbWUpIHJldHVybiAwO1xuICByZXR1cm4gYS5uYW1lIDwgYi5uYW1lID8gLTEgOiAxO1xufVxuXG4vKipcbiAqIFRoaXMgZnVuY3Rpb24gc2hvdWxkIG5vdCBleGlzdCBiZWNhdXNlIGl0IGlzIG1lZ2Ftb3JwaGljIGFuZCBvbmx5IG1vc3RseSBjb3JyZWN0LlxuICpcbiAqIFNlZSBjYWxsIHNpdGUgZm9yIG1vcmUgaW5mby5cbiAqL1xuZnVuY3Rpb24gaXNEaXJlY3RpdmVEZWZIYWNrKG9iajogYW55KTogb2JqIGlzIERpcmVjdGl2ZURlZjxhbnk+IHtcbiAgcmV0dXJuIG9iai50eXBlICE9PSB1bmRlZmluZWQgJiYgb2JqLnRlbXBsYXRlICE9PSB1bmRlZmluZWQgJiYgb2JqLmRlY2xhcmVkSW5wdXRzICE9PSB1bmRlZmluZWQ7XG59XG5cbi8qKlxuICogUmV0dXJucyB0aGUgYXR0YWNoZWQgYERlYnVnTm9kZWAgaW5zdGFuY2UgZm9yIGFuIGVsZW1lbnQgaW4gdGhlIERPTS5cbiAqXG4gKiBAcGFyYW0gZWxlbWVudCBET00gZWxlbWVudCB3aGljaCBpcyBvd25lZCBieSBhbiBleGlzdGluZyBjb21wb25lbnQncyB2aWV3LlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0RGVidWdOb2RlKGVsZW1lbnQ6IEVsZW1lbnQpOiBEZWJ1Z05vZGV8bnVsbCB7XG4gIGxldCBkZWJ1Z05vZGU6IERlYnVnTm9kZXxudWxsID0gbnVsbDtcblxuICBjb25zdCBsQ29udGV4dCA9IGxvYWRMQ29udGV4dEZyb21Ob2RlKGVsZW1lbnQpO1xuICBjb25zdCBsVmlldyA9IGxDb250ZXh0LmxWaWV3O1xuICBjb25zdCBub2RlSW5kZXggPSBsQ29udGV4dC5ub2RlSW5kZXg7XG4gIGlmIChub2RlSW5kZXggIT09IC0xKSB7XG4gICAgY29uc3QgdmFsdWVJbkxWaWV3ID0gbFZpZXdbbm9kZUluZGV4XTtcbiAgICAvLyB0aGlzIG1lYW5zIHRoYXQgdmFsdWUgaW4gdGhlIGxWaWV3IGlzIGEgY29tcG9uZW50IHdpdGggaXRzIG93blxuICAgIC8vIGRhdGEuIEluIHRoaXMgc2l0dWF0aW9uIHRoZSBUTm9kZSBpcyBub3QgYWNjZXNzZWQgYXQgdGhlIHNhbWUgc3BvdC5cbiAgICBjb25zdCB0Tm9kZSA9IGlzTFZpZXcodmFsdWVJbkxWaWV3KSA/ICh2YWx1ZUluTFZpZXdbVF9IT1NUXSBhcyBUTm9kZSkgOlxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ2V0VE5vZGUobFZpZXdbVFZJRVddLCBub2RlSW5kZXggLSBIRUFERVJfT0ZGU0VUKTtcbiAgICBkZWJ1Z05vZGUgPSBidWlsZERlYnVnTm9kZSh0Tm9kZSwgbFZpZXcsIG5vZGVJbmRleCk7XG4gIH1cblxuICByZXR1cm4gZGVidWdOb2RlO1xufVxuXG4vKipcbiAqIFJldHJpZXZlIHRoZSBjb21wb25lbnQgYExWaWV3YCBmcm9tIGNvbXBvbmVudC9lbGVtZW50LlxuICpcbiAqIE5PVEU6IGBMVmlld2AgaXMgYSBwcml2YXRlIGFuZCBzaG91bGQgbm90IGJlIGxlYWtlZCBvdXRzaWRlLlxuICogICAgICAgRG9uJ3QgZXhwb3J0IHRoaXMgbWV0aG9kIHRvIGBuZy4qYCBvbiB3aW5kb3cuXG4gKlxuICogQHBhcmFtIHRhcmdldCBET00gZWxlbWVudCBvciBjb21wb25lbnQgaW5zdGFuY2UgZm9yIHdoaWNoIHRvIHJldHJpZXZlIHRoZSBMVmlldy5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldENvbXBvbmVudExWaWV3KHRhcmdldDogYW55KTogTFZpZXcge1xuICBjb25zdCBsQ29udGV4dCA9IGxvYWRMQ29udGV4dCh0YXJnZXQpO1xuICBjb25zdCBub2RlSW5keCA9IGxDb250ZXh0Lm5vZGVJbmRleDtcbiAgY29uc3QgbFZpZXcgPSBsQ29udGV4dC5sVmlldztcbiAgY29uc3QgY29tcG9uZW50TFZpZXcgPSBsVmlld1tub2RlSW5keF07XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnRMVmlldyhjb21wb25lbnRMVmlldyk7XG4gIHJldHVybiBjb21wb25lbnRMVmlldztcbn1cblxuLyoqIEFzc2VydHMgdGhhdCBhIHZhbHVlIGlzIGEgRE9NIEVsZW1lbnQuICovXG5mdW5jdGlvbiBhc3NlcnREb21FbGVtZW50KHZhbHVlOiBhbnkpIHtcbiAgaWYgKHR5cGVvZiBFbGVtZW50ICE9PSAndW5kZWZpbmVkJyAmJiAhKHZhbHVlIGluc3RhbmNlb2YgRWxlbWVudCkpIHtcbiAgICB0aHJvdyBuZXcgRXJyb3IoJ0V4cGVjdGluZyBpbnN0YW5jZSBvZiBET00gRWxlbWVudCcpO1xuICB9XG59XG4iXX0=