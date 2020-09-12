/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __read, __spread } from "tslib";
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
    var context = loadLContext(element, false);
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
    var context = loadLContext(element, false);
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
    var context = loadLContext(elementOrDir, false);
    if (context === null)
        return null;
    var lView = context.lView;
    var parent;
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
    return __spread(getRootContext(elementOrDir).components);
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
    var context = loadLContext(elementOrDir, false);
    if (context === null)
        return Injector.NULL;
    var tNode = context.lView[TVIEW].data[context.nodeIndex];
    return new NodeInjector(tNode, context.lView);
}
/**
 * Retrieve a set of injection tokens at a given DOM node.
 *
 * @param element Element for which the injection tokens should be retrieved.
 */
export function getInjectionTokens(element) {
    var context = loadLContext(element, false);
    if (context === null)
        return [];
    var lView = context.lView;
    var tView = lView[TVIEW];
    var tNode = tView.data[context.nodeIndex];
    var providerTokens = [];
    var startIndex = tNode.providerIndexes & 65535 /* ProvidersStartIndexMask */;
    var endIndex = tNode.directiveEnd;
    for (var i = startIndex; i < endIndex; i++) {
        var value = tView.data[i];
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
    var context = loadLContext(element);
    if (context.directives === undefined) {
        context.directives = getDirectivesAtNodeIndex(context.nodeIndex, context.lView, false);
    }
    // The `directives` in this case are a named array called `LComponentView`. Clone the
    // result so we don't expose an internal data structure in the user's console.
    return context.directives === null ? [] : __spread(context.directives);
}
export function loadLContext(target, throwOnNotFound) {
    if (throwOnNotFound === void 0) { throwOnNotFound = true; }
    var context = getLContext(target);
    if (!context && throwOnNotFound) {
        throw new Error(ngDevMode ? "Unable to find context associated with " + stringifyForError(target) :
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
    var context = loadLContext(target, false);
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
    var hostElement = getHostElement(component);
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
    var lContext = loadLContext(element, false);
    if (lContext === null)
        return [];
    var lView = lContext.lView;
    var tView = lView[TVIEW];
    var lCleanup = lView[CLEANUP];
    var tCleanup = tView.cleanup;
    var listeners = [];
    if (tCleanup && lCleanup) {
        for (var i = 0; i < tCleanup.length;) {
            var firstParam = tCleanup[i++];
            var secondParam = tCleanup[i++];
            if (typeof firstParam === 'string') {
                var name_1 = firstParam;
                var listenerElement = unwrapRNode(lView[secondParam]);
                var callback = lCleanup[tCleanup[i++]];
                var useCaptureOrIndx = tCleanup[i++];
                // if useCaptureOrIndx is boolean then report it as is.
                // if useCaptureOrIndx is positive number then it in unsubscribe method
                // if useCaptureOrIndx is negative number then it is a Subscription
                var type = (typeof useCaptureOrIndx === 'boolean' || useCaptureOrIndx >= 0) ? 'dom' : 'output';
                var useCapture = typeof useCaptureOrIndx === 'boolean' ? useCaptureOrIndx : false;
                if (element == listenerElement) {
                    listeners.push({ element: element, name: name_1, callback: callback, useCapture: useCapture, type: type });
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
    var debugNode = null;
    var lContext = loadLContextFromNode(element);
    var lView = lContext.lView;
    var nodeIndex = lContext.nodeIndex;
    if (nodeIndex !== -1) {
        var valueInLView = lView[nodeIndex];
        // this means that value in the lView is a component with its own
        // data. In this situation the TNode is not accessed at the same spot.
        var tNode = isLView(valueInLView) ? valueInLView[T_HOST] :
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
    var lContext = loadLContext(target);
    var nodeIndx = lContext.nodeIndex;
    var lView = lContext.lView;
    var componentLView = lView[nodeIndx];
    ngDevMode && assertLView(componentLView);
    return componentLView;
}
/** Asserts that a value is a DOM Element. */
function assertDomElement(value) {
    if (typeof Element !== 'undefined' && !(value instanceof Element)) {
        throw new Error('Expecting instance of DOM Element');
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGlzY292ZXJ5X3V0aWxzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvcmVuZGVyMy91dGlsL2Rpc2NvdmVyeV91dGlscy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7O0FBRUgsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBQzNDLE9BQU8sRUFBQyxXQUFXLEVBQUMsTUFBTSxXQUFXLENBQUM7QUFDdEMsT0FBTyxFQUFDLGlCQUFpQixFQUFFLHVCQUF1QixFQUFFLHdCQUF3QixFQUFFLFdBQVcsRUFBQyxNQUFNLHNCQUFzQixDQUFDO0FBQ3ZILE9BQU8sRUFBQyxZQUFZLEVBQUMsTUFBTSxPQUFPLENBQUM7QUFDbkMsT0FBTyxFQUFZLGNBQWMsRUFBQyxNQUFNLDZCQUE2QixDQUFDO0FBSXRFLE9BQU8sRUFBQyxPQUFPLEVBQUMsTUFBTSwyQkFBMkIsQ0FBQztBQUNsRCxPQUFPLEVBQUMsT0FBTyxFQUFFLE9BQU8sRUFBRSxLQUFLLEVBQUUsYUFBYSxFQUFFLElBQUksRUFBcUIsS0FBSyxFQUFFLE1BQU0sRUFBQyxNQUFNLG9CQUFvQixDQUFDO0FBQ2xILE9BQU8sRUFBQyxpQkFBaUIsRUFBQyxNQUFNLGNBQWMsQ0FBQztBQUMvQyxPQUFPLEVBQUMsY0FBYyxFQUFFLGNBQWMsRUFBQyxNQUFNLHdCQUF3QixDQUFDO0FBQ3RFLE9BQU8sRUFBQyxRQUFRLEVBQUUsV0FBVyxFQUFDLE1BQU0sY0FBYyxDQUFDO0FBSW5EOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7R0F3Qkc7QUFDSCxNQUFNLFVBQVUsWUFBWSxDQUFJLE9BQWdCO0lBQzlDLGdCQUFnQixDQUFDLE9BQU8sQ0FBQyxDQUFDO0lBQzFCLElBQU0sT0FBTyxHQUFHLFlBQVksQ0FBQyxPQUFPLEVBQUUsS0FBSyxDQUFDLENBQUM7SUFDN0MsSUFBSSxP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QUM7S0FDdEQ7QUFDSCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0luamVjdG9yfSBmcm9tICcuLi8uLi9kaS9pbmplY3Rvcic7XG5pbXBvcnQge2Fzc2VydExWaWV3fSBmcm9tICcuLi9hc3NlcnQnO1xuaW1wb3J0IHtkaXNjb3ZlckxvY2FsUmVmcywgZ2V0Q29tcG9uZW50QXROb2RlSW5kZXgsIGdldERpcmVjdGl2ZXNBdE5vZGVJbmRleCwgZ2V0TENvbnRleHR9IGZyb20gJy4uL2NvbnRleHRfZGlzY292ZXJ5JztcbmltcG9ydCB7Tm9kZUluamVjdG9yfSBmcm9tICcuLi9kaSc7XG5pbXBvcnQge0RlYnVnTm9kZSwgYnVpbGREZWJ1Z05vZGV9IGZyb20gJy4uL2luc3RydWN0aW9ucy9sdmlld19kZWJ1Zyc7XG5pbXBvcnQge0xDb250ZXh0fSBmcm9tICcuLi9pbnRlcmZhY2VzL2NvbnRleHQnO1xuaW1wb3J0IHtEaXJlY3RpdmVEZWZ9IGZyb20gJy4uL2ludGVyZmFjZXMvZGVmaW5pdGlvbic7XG5pbXBvcnQge1RFbGVtZW50Tm9kZSwgVE5vZGUsIFROb2RlUHJvdmlkZXJJbmRleGVzfSBmcm9tICcuLi9pbnRlcmZhY2VzL25vZGUnO1xuaW1wb3J0IHtpc0xWaWV3fSBmcm9tICcuLi9pbnRlcmZhY2VzL3R5cGVfY2hlY2tzJztcbmltcG9ydCB7Q0xFQU5VUCwgQ09OVEVYVCwgRkxBR1MsIEhFQURFUl9PRkZTRVQsIEhPU1QsIExWaWV3LCBMVmlld0ZsYWdzLCBUVklFVywgVF9IT1NUfSBmcm9tICcuLi9pbnRlcmZhY2VzL3ZpZXcnO1xuaW1wb3J0IHtzdHJpbmdpZnlGb3JFcnJvcn0gZnJvbSAnLi9taXNjX3V0aWxzJztcbmltcG9ydCB7Z2V0TFZpZXdQYXJlbnQsIGdldFJvb3RDb250ZXh0fSBmcm9tICcuL3ZpZXdfdHJhdmVyc2FsX3V0aWxzJztcbmltcG9ydCB7Z2V0VE5vZGUsIHVud3JhcFJOb2RlfSBmcm9tICcuL3ZpZXdfdXRpbHMnO1xuXG5cblxuLyoqXG4gKiBSZXRyaWV2ZXMgdGhlIGNvbXBvbmVudCBpbnN0YW5jZSBhc3NvY2lhdGVkIHdpdGggYSBnaXZlbiBET00gZWxlbWVudC5cbiAqXG4gKiBAdXNhZ2VOb3Rlc1xuICogR2l2ZW4gdGhlIGZvbGxvd2luZyBET00gc3RydWN0dXJlOlxuICogYGBgaHRtbFxuICogPG15LWFwcD5cbiAqICAgPGRpdj5cbiAqICAgICA8Y2hpbGQtY29tcD48L2NoaWxkLWNvbXA+XG4gKiAgIDwvZGl2PlxuICogPC9teS1hcHA+XG4gKiBgYGBcbiAqIENhbGxpbmcgYGdldENvbXBvbmVudGAgb24gYDxjaGlsZC1jb21wPmAgd2lsbCByZXR1cm4gdGhlIGluc3RhbmNlIG9mIGBDaGlsZENvbXBvbmVudGBcbiAqIGFzc29jaWF0ZWQgd2l0aCB0aGlzIERPTSBlbGVtZW50LlxuICpcbiAqIENhbGxpbmcgdGhlIGZ1bmN0aW9uIG9uIGA8bXktYXBwPmAgd2lsbCByZXR1cm4gdGhlIGBNeUFwcGAgaW5zdGFuY2UuXG4gKlxuICpcbiAqIEBwYXJhbSBlbGVtZW50IERPTSBlbGVtZW50IGZyb20gd2hpY2ggdGhlIGNvbXBvbmVudCBzaG91bGQgYmUgcmV0cmlldmVkLlxuICogQHJldHVybnMgQ29tcG9uZW50IGluc3RhbmNlIGFzc29jaWF0ZWQgd2l0aCB0aGUgZWxlbWVudCBvciBgbnVsbGAgaWYgdGhlcmVcbiAqICAgIGlzIG5vIGNvbXBvbmVudCBhc3NvY2lhdGVkIHdpdGggaXQuXG4gKlxuICogQHB1YmxpY0FwaVxuICogQGdsb2JhbEFwaSBuZ1xuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0Q29tcG9uZW50PFQ+KGVsZW1lbnQ6IEVsZW1lbnQpOiBUfG51bGwge1xuICBhc3NlcnREb21FbGVtZW50KGVsZW1lbnQpO1xuICBjb25zdCBjb250ZXh0ID0gbG9hZExDb250ZXh0KGVsZW1lbnQsIGZhbHNlKTtcbiAgaWYgKGNvbnRleHQgPT09IG51bGwpIHJldHVybiBudWxsO1xuXG4gIGlmIChjb250ZXh0LmNvbXBvbmVudCA9PT0gdW5kZWZpbmVkKSB7XG4gICAgY29udGV4dC5jb21wb25lbnQgPSBnZXRDb21wb25lbnRBdE5vZGVJbmRleChjb250ZXh0Lm5vZGVJbmRleCwgY29udGV4dC5sVmlldyk7XG4gIH1cblxuICByZXR1cm4gY29udGV4dC5jb21wb25lbnQgYXMgVDtcbn1cblxuXG4vKipcbiAqIElmIGluc2lkZSBhbiBlbWJlZGRlZCB2aWV3IChlLmcuIGAqbmdJZmAgb3IgYCpuZ0ZvcmApLCByZXRyaWV2ZXMgdGhlIGNvbnRleHQgb2YgdGhlIGVtYmVkZGVkXG4gKiB2aWV3IHRoYXQgdGhlIGVsZW1lbnQgaXMgcGFydCBvZi4gT3RoZXJ3aXNlIHJldHJpZXZlcyB0aGUgaW5zdGFuY2Ugb2YgdGhlIGNvbXBvbmVudCB3aG9zZSB2aWV3XG4gKiBvd25zIHRoZSBlbGVtZW50IChpbiB0aGlzIGNhc2UsIHRoZSByZXN1bHQgaXMgdGhlIHNhbWUgYXMgY2FsbGluZyBgZ2V0T3duaW5nQ29tcG9uZW50YCkuXG4gKlxuICogQHBhcmFtIGVsZW1lbnQgRWxlbWVudCBmb3Igd2hpY2ggdG8gZ2V0IHRoZSBzdXJyb3VuZGluZyBjb21wb25lbnQgaW5zdGFuY2UuXG4gKiBAcmV0dXJucyBJbnN0YW5jZSBvZiB0aGUgY29tcG9uZW50IHRoYXQgaXMgYXJvdW5kIHRoZSBlbGVtZW50IG9yIG51bGwgaWYgdGhlIGVsZW1lbnQgaXNuJ3RcbiAqICAgIGluc2lkZSBhbnkgY29tcG9uZW50LlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqIEBnbG9iYWxBcGkgbmdcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldENvbnRleHQ8VD4oZWxlbWVudDogRWxlbWVudCk6IFR8bnVsbCB7XG4gIGFzc2VydERvbUVsZW1lbnQoZWxlbWVudCk7XG4gIGNvbnN0IGNvbnRleHQgPSBsb2FkTENvbnRleHQoZWxlbWVudCwgZmFsc2UpO1xuICByZXR1cm4gY29udGV4dCA9PT0gbnVsbCA/IG51bGwgOiBjb250ZXh0LmxWaWV3W0NPTlRFWFRdIGFzIFQ7XG59XG5cbi8qKlxuICogUmV0cmlldmVzIHRoZSBjb21wb25lbnQgaW5zdGFuY2Ugd2hvc2UgdmlldyBjb250YWlucyB0aGUgRE9NIGVsZW1lbnQuXG4gKlxuICogRm9yIGV4YW1wbGUsIGlmIGA8Y2hpbGQtY29tcD5gIGlzIHVzZWQgaW4gdGhlIHRlbXBsYXRlIG9mIGA8YXBwLWNvbXA+YFxuICogKGkuZS4gYSBgVmlld0NoaWxkYCBvZiBgPGFwcC1jb21wPmApLCBjYWxsaW5nIGBnZXRPd25pbmdDb21wb25lbnRgIG9uIGA8Y2hpbGQtY29tcD5gXG4gKiB3b3VsZCByZXR1cm4gYDxhcHAtY29tcD5gLlxuICpcbiAqIEBwYXJhbSBlbGVtZW50T3JEaXIgRE9NIGVsZW1lbnQsIGNvbXBvbmVudCBvciBkaXJlY3RpdmUgaW5zdGFuY2VcbiAqICAgIGZvciB3aGljaCB0byByZXRyaWV2ZSB0aGUgcm9vdCBjb21wb25lbnRzLlxuICogQHJldHVybnMgQ29tcG9uZW50IGluc3RhbmNlIHdob3NlIHZpZXcgb3ducyB0aGUgRE9NIGVsZW1lbnQgb3IgbnVsbCBpZiB0aGUgZWxlbWVudCBpcyBub3RcbiAqICAgIHBhcnQgb2YgYSBjb21wb25lbnQgdmlldy5cbiAqXG4gKiBAcHVibGljQXBpXG4gKiBAZ2xvYmFsQXBpIG5nXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRPd25pbmdDb21wb25lbnQ8VD4oZWxlbWVudE9yRGlyOiBFbGVtZW50IHwge30pOiBUfG51bGwge1xuICBjb25zdCBjb250ZXh0ID0gbG9hZExDb250ZXh0KGVsZW1lbnRPckRpciwgZmFsc2UpO1xuICBpZiAoY29udGV4dCA9PT0gbnVsbCkgcmV0dXJuIG51bGw7XG5cbiAgbGV0IGxWaWV3ID0gY29udGV4dC5sVmlldztcbiAgbGV0IHBhcmVudDogTFZpZXd8bnVsbDtcbiAgbmdEZXZNb2RlICYmIGFzc2VydExWaWV3KGxWaWV3KTtcbiAgd2hpbGUgKGxWaWV3W0hPU1RdID09PSBudWxsICYmIChwYXJlbnQgPSBnZXRMVmlld1BhcmVudChsVmlldykgISkpIHtcbiAgICAvLyBBcyBsb25nIGFzIGxWaWV3W0hPU1RdIGlzIG51bGwgd2Uga25vdyB3ZSBhcmUgcGFydCBvZiBzdWItdGVtcGxhdGUgc3VjaCBhcyBgKm5nSWZgXG4gICAgbFZpZXcgPSBwYXJlbnQ7XG4gIH1cbiAgcmV0dXJuIGxWaWV3W0ZMQUdTXSAmIExWaWV3RmxhZ3MuSXNSb290ID8gbnVsbCA6IGxWaWV3W0NPTlRFWFRdIGFzIFQ7XG59XG5cbi8qKlxuICogUmV0cmlldmVzIGFsbCByb290IGNvbXBvbmVudHMgYXNzb2NpYXRlZCB3aXRoIGEgRE9NIGVsZW1lbnQsIGRpcmVjdGl2ZSBvciBjb21wb25lbnQgaW5zdGFuY2UuXG4gKiBSb290IGNvbXBvbmVudHMgYXJlIHRob3NlIHdoaWNoIGhhdmUgYmVlbiBib290c3RyYXBwZWQgYnkgQW5ndWxhci5cbiAqXG4gKiBAcGFyYW0gZWxlbWVudE9yRGlyIERPTSBlbGVtZW50LCBjb21wb25lbnQgb3IgZGlyZWN0aXZlIGluc3RhbmNlXG4gKiAgICBmb3Igd2hpY2ggdG8gcmV0cmlldmUgdGhlIHJvb3QgY29tcG9uZW50cy5cbiAqIEByZXR1cm5zIFJvb3QgY29tcG9uZW50cyBhc3NvY2lhdGVkIHdpdGggdGhlIHRhcmdldCBvYmplY3QuXG4gKlxuICogQHB1YmxpY0FwaVxuICogQGdsb2JhbEFwaSBuZ1xuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0Um9vdENvbXBvbmVudHMoZWxlbWVudE9yRGlyOiBFbGVtZW50IHwge30pOiB7fVtdIHtcbiAgcmV0dXJuIFsuLi5nZXRSb290Q29udGV4dChlbGVtZW50T3JEaXIpLmNvbXBvbmVudHNdO1xufVxuXG4vKipcbiAqIFJldHJpZXZlcyBhbiBgSW5qZWN0b3JgIGFzc29jaWF0ZWQgd2l0aCBhbiBlbGVtZW50LCBjb21wb25lbnQgb3IgZGlyZWN0aXZlIGluc3RhbmNlLlxuICpcbiAqIEBwYXJhbSBlbGVtZW50T3JEaXIgRE9NIGVsZW1lbnQsIGNvbXBvbmVudCBvciBkaXJlY3RpdmUgaW5zdGFuY2UgZm9yIHdoaWNoIHRvXG4gKiAgICByZXRyaWV2ZSB0aGUgaW5qZWN0b3IuXG4gKiBAcmV0dXJucyBJbmplY3RvciBhc3NvY2lhdGVkIHdpdGggdGhlIGVsZW1lbnQsIGNvbXBvbmVudCBvciBkaXJlY3RpdmUgaW5zdGFuY2UuXG4gKlxuICogQHB1YmxpY0FwaVxuICogQGdsb2JhbEFwaSBuZ1xuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0SW5qZWN0b3IoZWxlbWVudE9yRGlyOiBFbGVtZW50IHwge30pOiBJbmplY3RvciB7XG4gIGNvbnN0IGNvbnRleHQgPSBsb2FkTENvbnRleHQoZWxlbWVudE9yRGlyLCBmYWxzZSk7XG4gIGlmIChjb250ZXh0ID09PSBudWxsKSByZXR1cm4gSW5qZWN0b3IuTlVMTDtcblxuICBjb25zdCB0Tm9kZSA9IGNvbnRleHQubFZpZXdbVFZJRVddLmRhdGFbY29udGV4dC5ub2RlSW5kZXhdIGFzIFRFbGVtZW50Tm9kZTtcbiAgcmV0dXJuIG5ldyBOb2RlSW5qZWN0b3IodE5vZGUsIGNvbnRleHQubFZpZXcpO1xufVxuXG4vKipcbiAqIFJldHJpZXZlIGEgc2V0IG9mIGluamVjdGlvbiB0b2tlbnMgYXQgYSBnaXZlbiBET00gbm9kZS5cbiAqXG4gKiBAcGFyYW0gZWxlbWVudCBFbGVtZW50IGZvciB3aGljaCB0aGUgaW5qZWN0aW9uIHRva2VucyBzaG91bGQgYmUgcmV0cmlldmVkLlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0SW5qZWN0aW9uVG9rZW5zKGVsZW1lbnQ6IEVsZW1lbnQpOiBhbnlbXSB7XG4gIGNvbnN0IGNvbnRleHQgPSBsb2FkTENvbnRleHQoZWxlbWVudCwgZmFsc2UpO1xuICBpZiAoY29udGV4dCA9PT0gbnVsbCkgcmV0dXJuIFtdO1xuICBjb25zdCBsVmlldyA9IGNvbnRleHQubFZpZXc7XG4gIGNvbnN0IHRWaWV3ID0gbFZpZXdbVFZJRVddO1xuICBjb25zdCB0Tm9kZSA9IHRWaWV3LmRhdGFbY29udGV4dC5ub2RlSW5kZXhdIGFzIFROb2RlO1xuICBjb25zdCBwcm92aWRlclRva2VuczogYW55W10gPSBbXTtcbiAgY29uc3Qgc3RhcnRJbmRleCA9IHROb2RlLnByb3ZpZGVySW5kZXhlcyAmIFROb2RlUHJvdmlkZXJJbmRleGVzLlByb3ZpZGVyc1N0YXJ0SW5kZXhNYXNrO1xuICBjb25zdCBlbmRJbmRleCA9IHROb2RlLmRpcmVjdGl2ZUVuZDtcbiAgZm9yIChsZXQgaSA9IHN0YXJ0SW5kZXg7IGkgPCBlbmRJbmRleDsgaSsrKSB7XG4gICAgbGV0IHZhbHVlID0gdFZpZXcuZGF0YVtpXTtcbiAgICBpZiAoaXNEaXJlY3RpdmVEZWZIYWNrKHZhbHVlKSkge1xuICAgICAgLy8gVGhlIGZhY3QgdGhhdCB3ZSBzb21ldGltZXMgc3RvcmUgVHlwZSBhbmQgc29tZXRpbWVzIERpcmVjdGl2ZURlZiBpbiB0aGlzIGxvY2F0aW9uIGlzIGFcbiAgICAgIC8vIGRlc2lnbiBmbGF3LiAgV2Ugc2hvdWxkIGFsd2F5cyBzdG9yZSBzYW1lIHR5cGUgc28gdGhhdCB3ZSBjYW4gYmUgbW9ub21vcnBoaWMuIFRoZSBpc3N1ZVxuICAgICAgLy8gaXMgdGhhdCBmb3IgQ29tcG9uZW50cy9EaXJlY3RpdmVzIHdlIHN0b3JlIHRoZSBkZWYgaW5zdGVhZCB0aGUgdHlwZS4gVGhlIGNvcnJlY3QgYmVoYXZpb3JcbiAgICAgIC8vIGlzIHRoYXQgd2Ugc2hvdWxkIGFsd2F5cyBiZSBzdG9yaW5nIGluamVjdGFibGUgdHlwZSBpbiB0aGlzIGxvY2F0aW9uLlxuICAgICAgdmFsdWUgPSB2YWx1ZS50eXBlO1xuICAgIH1cbiAgICBwcm92aWRlclRva2Vucy5wdXNoKHZhbHVlKTtcbiAgfVxuICByZXR1cm4gcHJvdmlkZXJUb2tlbnM7XG59XG5cbi8qKlxuICogUmV0cmlldmVzIGRpcmVjdGl2ZSBpbnN0YW5jZXMgYXNzb2NpYXRlZCB3aXRoIGEgZ2l2ZW4gRE9NIGVsZW1lbnQuIERvZXMgbm90IGluY2x1ZGVcbiAqIGNvbXBvbmVudCBpbnN0YW5jZXMuXG4gKlxuICogQHVzYWdlTm90ZXNcbiAqIEdpdmVuIHRoZSBmb2xsb3dpbmcgRE9NIHN0cnVjdHVyZTpcbiAqIGBgYFxuICogPG15LWFwcD5cbiAqICAgPGJ1dHRvbiBteS1idXR0b24+PC9idXR0b24+XG4gKiAgIDxteS1jb21wPjwvbXktY29tcD5cbiAqIDwvbXktYXBwPlxuICogYGBgXG4gKiBDYWxsaW5nIGBnZXREaXJlY3RpdmVzYCBvbiBgPGJ1dHRvbj5gIHdpbGwgcmV0dXJuIGFuIGFycmF5IHdpdGggYW4gaW5zdGFuY2Ugb2YgdGhlIGBNeUJ1dHRvbmBcbiAqIGRpcmVjdGl2ZSB0aGF0IGlzIGFzc29jaWF0ZWQgd2l0aCB0aGUgRE9NIGVsZW1lbnQuXG4gKlxuICogQ2FsbGluZyBgZ2V0RGlyZWN0aXZlc2Agb24gYDxteS1jb21wPmAgd2lsbCByZXR1cm4gYW4gZW1wdHkgYXJyYXkuXG4gKlxuICogQHBhcmFtIGVsZW1lbnQgRE9NIGVsZW1lbnQgZm9yIHdoaWNoIHRvIGdldCB0aGUgZGlyZWN0aXZlcy5cbiAqIEByZXR1cm5zIEFycmF5IG9mIGRpcmVjdGl2ZXMgYXNzb2NpYXRlZCB3aXRoIHRoZSBlbGVtZW50LlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqIEBnbG9iYWxBcGkgbmdcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldERpcmVjdGl2ZXMoZWxlbWVudDogRWxlbWVudCk6IHt9W10ge1xuICBjb25zdCBjb250ZXh0ID0gbG9hZExDb250ZXh0KGVsZW1lbnQpICE7XG5cbiAgaWYgKGNvbnRleHQuZGlyZWN0aXZlcyA9PT0gdW5kZWZpbmVkKSB7XG4gICAgY29udGV4dC5kaXJlY3RpdmVzID0gZ2V0RGlyZWN0aXZlc0F0Tm9kZUluZGV4KGNvbnRleHQubm9kZUluZGV4LCBjb250ZXh0LmxWaWV3LCBmYWxzZSk7XG4gIH1cblxuICAvLyBUaGUgYGRpcmVjdGl2ZXNgIGluIHRoaXMgY2FzZSBhcmUgYSBuYW1lZCBhcnJheSBjYWxsZWQgYExDb21wb25lbnRWaWV3YC4gQ2xvbmUgdGhlXG4gIC8vIHJlc3VsdCBzbyB3ZSBkb24ndCBleHBvc2UgYW4gaW50ZXJuYWwgZGF0YSBzdHJ1Y3R1cmUgaW4gdGhlIHVzZXIncyBjb25zb2xlLlxuICByZXR1cm4gY29udGV4dC5kaXJlY3RpdmVzID09PSBudWxsID8gW10gOiBbLi4uY29udGV4dC5kaXJlY3RpdmVzXTtcbn1cblxuLyoqXG4gKiBSZXR1cm5zIExDb250ZXh0IGFzc29jaWF0ZWQgd2l0aCBhIHRhcmdldCBwYXNzZWQgYXMgYW4gYXJndW1lbnQuXG4gKiBUaHJvd3MgaWYgYSBnaXZlbiB0YXJnZXQgZG9lc24ndCBoYXZlIGFzc29jaWF0ZWQgTENvbnRleHQuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBsb2FkTENvbnRleHQodGFyZ2V0OiB7fSk6IExDb250ZXh0O1xuZXhwb3J0IGZ1bmN0aW9uIGxvYWRMQ29udGV4dCh0YXJnZXQ6IHt9LCB0aHJvd09uTm90Rm91bmQ6IGZhbHNlKTogTENvbnRleHR8bnVsbDtcbmV4cG9ydCBmdW5jdGlvbiBsb2FkTENvbnRleHQodGFyZ2V0OiB7fSwgdGhyb3dPbk5vdEZvdW5kOiBib29sZWFuID0gdHJ1ZSk6IExDb250ZXh0fG51bGwge1xuICBjb25zdCBjb250ZXh0ID0gZ2V0TENvbnRleHQodGFyZ2V0KTtcbiAgaWYgKCFjb250ZXh0ICYmIHRocm93T25Ob3RGb3VuZCkge1xuICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgbmdEZXZNb2RlID8gYFVuYWJsZSB0byBmaW5kIGNvbnRleHQgYXNzb2NpYXRlZCB3aXRoICR7c3RyaW5naWZ5Rm9yRXJyb3IodGFyZ2V0KX1gIDpcbiAgICAgICAgICAgICAgICAgICAgJ0ludmFsaWQgbmcgdGFyZ2V0Jyk7XG4gIH1cbiAgcmV0dXJuIGNvbnRleHQ7XG59XG5cbi8qKlxuICogUmV0cmlldmUgbWFwIG9mIGxvY2FsIHJlZmVyZW5jZXMuXG4gKlxuICogVGhlIHJlZmVyZW5jZXMgYXJlIHJldHJpZXZlZCBhcyBhIG1hcCBvZiBsb2NhbCByZWZlcmVuY2UgbmFtZSB0byBlbGVtZW50IG9yIGRpcmVjdGl2ZSBpbnN0YW5jZS5cbiAqXG4gKiBAcGFyYW0gdGFyZ2V0IERPTSBlbGVtZW50LCBjb21wb25lbnQgb3IgZGlyZWN0aXZlIGluc3RhbmNlIGZvciB3aGljaCB0byByZXRyaWV2ZVxuICogICAgdGhlIGxvY2FsIHJlZmVyZW5jZXMuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRMb2NhbFJlZnModGFyZ2V0OiB7fSk6IHtba2V5OiBzdHJpbmddOiBhbnl9IHtcbiAgY29uc3QgY29udGV4dCA9IGxvYWRMQ29udGV4dCh0YXJnZXQsIGZhbHNlKTtcbiAgaWYgKGNvbnRleHQgPT09IG51bGwpIHJldHVybiB7fTtcblxuICBpZiAoY29udGV4dC5sb2NhbFJlZnMgPT09IHVuZGVmaW5lZCkge1xuICAgIGNvbnRleHQubG9jYWxSZWZzID0gZGlzY292ZXJMb2NhbFJlZnMoY29udGV4dC5sVmlldywgY29udGV4dC5ub2RlSW5kZXgpO1xuICB9XG5cbiAgcmV0dXJuIGNvbnRleHQubG9jYWxSZWZzIHx8IHt9O1xufVxuXG4vKipcbiAqIFJldHJpZXZlcyB0aGUgaG9zdCBlbGVtZW50IG9mIGEgY29tcG9uZW50IG9yIGRpcmVjdGl2ZSBpbnN0YW5jZS5cbiAqIFRoZSBob3N0IGVsZW1lbnQgaXMgdGhlIERPTSBlbGVtZW50IHRoYXQgbWF0Y2hlZCB0aGUgc2VsZWN0b3Igb2YgdGhlIGRpcmVjdGl2ZS5cbiAqXG4gKiBAcGFyYW0gY29tcG9uZW50T3JEaXJlY3RpdmUgQ29tcG9uZW50IG9yIGRpcmVjdGl2ZSBpbnN0YW5jZSBmb3Igd2hpY2ggdGhlIGhvc3RcbiAqICAgICBlbGVtZW50IHNob3VsZCBiZSByZXRyaWV2ZWQuXG4gKiBAcmV0dXJucyBIb3N0IGVsZW1lbnQgb2YgdGhlIHRhcmdldC5cbiAqXG4gKiBAcHVibGljQXBpXG4gKiBAZ2xvYmFsQXBpIG5nXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRIb3N0RWxlbWVudChjb21wb25lbnRPckRpcmVjdGl2ZToge30pOiBFbGVtZW50IHtcbiAgcmV0dXJuIGdldExDb250ZXh0KGNvbXBvbmVudE9yRGlyZWN0aXZlKSAhLm5hdGl2ZSBhcyBuZXZlciBhcyBFbGVtZW50O1xufVxuXG4vKipcbiAqIFJldHJpZXZlcyB0aGUgcmVuZGVyZWQgdGV4dCBmb3IgYSBnaXZlbiBjb21wb25lbnQuXG4gKlxuICogVGhpcyBmdW5jdGlvbiByZXRyaWV2ZXMgdGhlIGhvc3QgZWxlbWVudCBvZiBhIGNvbXBvbmVudCBhbmRcbiAqIGFuZCB0aGVuIHJldHVybnMgdGhlIGB0ZXh0Q29udGVudGAgZm9yIHRoYXQgZWxlbWVudC4gVGhpcyBpbXBsaWVzXG4gKiB0aGF0IHRoZSB0ZXh0IHJldHVybmVkIHdpbGwgaW5jbHVkZSByZS1wcm9qZWN0ZWQgY29udGVudCBvZlxuICogdGhlIGNvbXBvbmVudCBhcyB3ZWxsLlxuICpcbiAqIEBwYXJhbSBjb21wb25lbnQgVGhlIGNvbXBvbmVudCB0byByZXR1cm4gdGhlIGNvbnRlbnQgdGV4dCBmb3IuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRSZW5kZXJlZFRleHQoY29tcG9uZW50OiBhbnkpOiBzdHJpbmcge1xuICBjb25zdCBob3N0RWxlbWVudCA9IGdldEhvc3RFbGVtZW50KGNvbXBvbmVudCk7XG4gIHJldHVybiBob3N0RWxlbWVudC50ZXh0Q29udGVudCB8fCAnJztcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGxvYWRMQ29udGV4dEZyb21Ob2RlKG5vZGU6IE5vZGUpOiBMQ29udGV4dCB7XG4gIGlmICghKG5vZGUgaW5zdGFuY2VvZiBOb2RlKSkgdGhyb3cgbmV3IEVycm9yKCdFeHBlY3RpbmcgaW5zdGFuY2Ugb2YgRE9NIEVsZW1lbnQnKTtcbiAgcmV0dXJuIGxvYWRMQ29udGV4dChub2RlKSAhO1xufVxuXG4vKipcbiAqIEV2ZW50IGxpc3RlbmVyIGNvbmZpZ3VyYXRpb24gcmV0dXJuZWQgZnJvbSBgZ2V0TGlzdGVuZXJzYC5cbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGludGVyZmFjZSBMaXN0ZW5lciB7XG4gIC8qKiBOYW1lIG9mIHRoZSBldmVudCBsaXN0ZW5lci4gKi9cbiAgbmFtZTogc3RyaW5nO1xuICAvKiogRWxlbWVudCB0aGF0IHRoZSBsaXN0ZW5lciBpcyBib3VuZCB0by4gKi9cbiAgZWxlbWVudDogRWxlbWVudDtcbiAgLyoqIENhbGxiYWNrIHRoYXQgaXMgaW52b2tlZCB3aGVuIHRoZSBldmVudCBpcyB0cmlnZ2VyZWQuICovXG4gIGNhbGxiYWNrOiAodmFsdWU6IGFueSkgPT4gYW55O1xuICAvKiogV2hldGhlciB0aGUgbGlzdGVuZXIgaXMgdXNpbmcgZXZlbnQgY2FwdHVyaW5nLiAqL1xuICB1c2VDYXB0dXJlOiBib29sZWFuO1xuICAvKipcbiAgICogVHlwZSBvZiB0aGUgbGlzdGVuZXIgKGUuZy4gYSBuYXRpdmUgRE9NIGV2ZW50IG9yIGEgY3VzdG9tIEBPdXRwdXQpLlxuICAgKi9cbiAgdHlwZTogJ2RvbSd8J291dHB1dCc7XG59XG5cblxuLyoqXG4gKiBSZXRyaWV2ZXMgYSBsaXN0IG9mIGV2ZW50IGxpc3RlbmVycyBhc3NvY2lhdGVkIHdpdGggYSBET00gZWxlbWVudC4gVGhlIGxpc3QgZG9lcyBpbmNsdWRlIGhvc3RcbiAqIGxpc3RlbmVycywgYnV0IGl0IGRvZXMgbm90IGluY2x1ZGUgZXZlbnQgbGlzdGVuZXJzIGRlZmluZWQgb3V0c2lkZSBvZiB0aGUgQW5ndWxhciBjb250ZXh0XG4gKiAoZS5nLiB0aHJvdWdoIGBhZGRFdmVudExpc3RlbmVyYCkuXG4gKlxuICogQHVzYWdlTm90ZXNcbiAqIEdpdmVuIHRoZSBmb2xsb3dpbmcgRE9NIHN0cnVjdHVyZTpcbiAqIGBgYFxuICogPG15LWFwcD5cbiAqICAgPGRpdiAoY2xpY2spPVwiZG9Tb21ldGhpbmcoKVwiPjwvZGl2PlxuICogPC9teS1hcHA+XG4gKlxuICogYGBgXG4gKiBDYWxsaW5nIGBnZXRMaXN0ZW5lcnNgIG9uIGA8ZGl2PmAgd2lsbCByZXR1cm4gYW4gb2JqZWN0IHRoYXQgbG9va3MgYXMgZm9sbG93czpcbiAqIGBgYFxuICoge1xuICogICBuYW1lOiAnY2xpY2snLFxuICogICBlbGVtZW50OiA8ZGl2PixcbiAqICAgY2FsbGJhY2s6ICgpID0+IGRvU29tZXRoaW5nKCksXG4gKiAgIHVzZUNhcHR1cmU6IGZhbHNlXG4gKiB9XG4gKiBgYGBcbiAqXG4gKiBAcGFyYW0gZWxlbWVudCBFbGVtZW50IGZvciB3aGljaCB0aGUgRE9NIGxpc3RlbmVycyBzaG91bGQgYmUgcmV0cmlldmVkLlxuICogQHJldHVybnMgQXJyYXkgb2YgZXZlbnQgbGlzdGVuZXJzIG9uIHRoZSBET00gZWxlbWVudC5cbiAqXG4gKiBAcHVibGljQXBpXG4gKiBAZ2xvYmFsQXBpIG5nXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRMaXN0ZW5lcnMoZWxlbWVudDogRWxlbWVudCk6IExpc3RlbmVyW10ge1xuICBhc3NlcnREb21FbGVtZW50KGVsZW1lbnQpO1xuICBjb25zdCBsQ29udGV4dCA9IGxvYWRMQ29udGV4dChlbGVtZW50LCBmYWxzZSk7XG4gIGlmIChsQ29udGV4dCA9PT0gbnVsbCkgcmV0dXJuIFtdO1xuXG4gIGNvbnN0IGxWaWV3ID0gbENvbnRleHQubFZpZXc7XG4gIGNvbnN0IHRWaWV3ID0gbFZpZXdbVFZJRVddO1xuICBjb25zdCBsQ2xlYW51cCA9IGxWaWV3W0NMRUFOVVBdO1xuICBjb25zdCB0Q2xlYW51cCA9IHRWaWV3LmNsZWFudXA7XG4gIGNvbnN0IGxpc3RlbmVyczogTGlzdGVuZXJbXSA9IFtdO1xuICBpZiAodENsZWFudXAgJiYgbENsZWFudXApIHtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IHRDbGVhbnVwLmxlbmd0aDspIHtcbiAgICAgIGNvbnN0IGZpcnN0UGFyYW0gPSB0Q2xlYW51cFtpKytdO1xuICAgICAgY29uc3Qgc2Vjb25kUGFyYW0gPSB0Q2xlYW51cFtpKytdO1xuICAgICAgaWYgKHR5cGVvZiBmaXJzdFBhcmFtID09PSAnc3RyaW5nJykge1xuICAgICAgICBjb25zdCBuYW1lOiBzdHJpbmcgPSBmaXJzdFBhcmFtO1xuICAgICAgICBjb25zdCBsaXN0ZW5lckVsZW1lbnQgPSB1bndyYXBSTm9kZShsVmlld1tzZWNvbmRQYXJhbV0pIGFzIGFueSBhcyBFbGVtZW50O1xuICAgICAgICBjb25zdCBjYWxsYmFjazogKHZhbHVlOiBhbnkpID0+IGFueSA9IGxDbGVhbnVwW3RDbGVhbnVwW2krK11dO1xuICAgICAgICBjb25zdCB1c2VDYXB0dXJlT3JJbmR4ID0gdENsZWFudXBbaSsrXTtcbiAgICAgICAgLy8gaWYgdXNlQ2FwdHVyZU9ySW5keCBpcyBib29sZWFuIHRoZW4gcmVwb3J0IGl0IGFzIGlzLlxuICAgICAgICAvLyBpZiB1c2VDYXB0dXJlT3JJbmR4IGlzIHBvc2l0aXZlIG51bWJlciB0aGVuIGl0IGluIHVuc3Vic2NyaWJlIG1ldGhvZFxuICAgICAgICAvLyBpZiB1c2VDYXB0dXJlT3JJbmR4IGlzIG5lZ2F0aXZlIG51bWJlciB0aGVuIGl0IGlzIGEgU3Vic2NyaXB0aW9uXG4gICAgICAgIGNvbnN0IHR5cGUgPVxuICAgICAgICAgICAgKHR5cGVvZiB1c2VDYXB0dXJlT3JJbmR4ID09PSAnYm9vbGVhbicgfHwgdXNlQ2FwdHVyZU9ySW5keCA+PSAwKSA/ICdkb20nIDogJ291dHB1dCc7XG4gICAgICAgIGNvbnN0IHVzZUNhcHR1cmUgPSB0eXBlb2YgdXNlQ2FwdHVyZU9ySW5keCA9PT0gJ2Jvb2xlYW4nID8gdXNlQ2FwdHVyZU9ySW5keCA6IGZhbHNlO1xuICAgICAgICBpZiAoZWxlbWVudCA9PSBsaXN0ZW5lckVsZW1lbnQpIHtcbiAgICAgICAgICBsaXN0ZW5lcnMucHVzaCh7ZWxlbWVudCwgbmFtZSwgY2FsbGJhY2ssIHVzZUNhcHR1cmUsIHR5cGV9KTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxuICBsaXN0ZW5lcnMuc29ydChzb3J0TGlzdGVuZXJzKTtcbiAgcmV0dXJuIGxpc3RlbmVycztcbn1cblxuZnVuY3Rpb24gc29ydExpc3RlbmVycyhhOiBMaXN0ZW5lciwgYjogTGlzdGVuZXIpIHtcbiAgaWYgKGEubmFtZSA9PSBiLm5hbWUpIHJldHVybiAwO1xuICByZXR1cm4gYS5uYW1lIDwgYi5uYW1lID8gLTEgOiAxO1xufVxuXG4vKipcbiAqIFRoaXMgZnVuY3Rpb24gc2hvdWxkIG5vdCBleGlzdCBiZWNhdXNlIGl0IGlzIG1lZ2Ftb3JwaGljIGFuZCBvbmx5IG1vc3RseSBjb3JyZWN0LlxuICpcbiAqIFNlZSBjYWxsIHNpdGUgZm9yIG1vcmUgaW5mby5cbiAqL1xuZnVuY3Rpb24gaXNEaXJlY3RpdmVEZWZIYWNrKG9iajogYW55KTogb2JqIGlzIERpcmVjdGl2ZURlZjxhbnk+IHtcbiAgcmV0dXJuIG9iai50eXBlICE9PSB1bmRlZmluZWQgJiYgb2JqLnRlbXBsYXRlICE9PSB1bmRlZmluZWQgJiYgb2JqLmRlY2xhcmVkSW5wdXRzICE9PSB1bmRlZmluZWQ7XG59XG5cbi8qKlxuICogUmV0dXJucyB0aGUgYXR0YWNoZWQgYERlYnVnTm9kZWAgaW5zdGFuY2UgZm9yIGFuIGVsZW1lbnQgaW4gdGhlIERPTS5cbiAqXG4gKiBAcGFyYW0gZWxlbWVudCBET00gZWxlbWVudCB3aGljaCBpcyBvd25lZCBieSBhbiBleGlzdGluZyBjb21wb25lbnQncyB2aWV3LlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0RGVidWdOb2RlKGVsZW1lbnQ6IEVsZW1lbnQpOiBEZWJ1Z05vZGV8bnVsbCB7XG4gIGxldCBkZWJ1Z05vZGU6IERlYnVnTm9kZXxudWxsID0gbnVsbDtcblxuICBjb25zdCBsQ29udGV4dCA9IGxvYWRMQ29udGV4dEZyb21Ob2RlKGVsZW1lbnQpO1xuICBjb25zdCBsVmlldyA9IGxDb250ZXh0LmxWaWV3O1xuICBjb25zdCBub2RlSW5kZXggPSBsQ29udGV4dC5ub2RlSW5kZXg7XG4gIGlmIChub2RlSW5kZXggIT09IC0xKSB7XG4gICAgY29uc3QgdmFsdWVJbkxWaWV3ID0gbFZpZXdbbm9kZUluZGV4XTtcbiAgICAvLyB0aGlzIG1lYW5zIHRoYXQgdmFsdWUgaW4gdGhlIGxWaWV3IGlzIGEgY29tcG9uZW50IHdpdGggaXRzIG93blxuICAgIC8vIGRhdGEuIEluIHRoaXMgc2l0dWF0aW9uIHRoZSBUTm9kZSBpcyBub3QgYWNjZXNzZWQgYXQgdGhlIHNhbWUgc3BvdC5cbiAgICBjb25zdCB0Tm9kZSA9IGlzTFZpZXcodmFsdWVJbkxWaWV3KSA/ICh2YWx1ZUluTFZpZXdbVF9IT1NUXSBhcyBUTm9kZSkgOlxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZ2V0VE5vZGUobFZpZXdbVFZJRVddLCBub2RlSW5kZXggLSBIRUFERVJfT0ZGU0VUKTtcbiAgICBkZWJ1Z05vZGUgPSBidWlsZERlYnVnTm9kZSh0Tm9kZSwgbFZpZXcsIG5vZGVJbmRleCk7XG4gIH1cblxuICByZXR1cm4gZGVidWdOb2RlO1xufVxuXG4vKipcbiAqIFJldHJpZXZlIHRoZSBjb21wb25lbnQgYExWaWV3YCBmcm9tIGNvbXBvbmVudC9lbGVtZW50LlxuICpcbiAqIE5PVEU6IGBMVmlld2AgaXMgYSBwcml2YXRlIGFuZCBzaG91bGQgbm90IGJlIGxlYWtlZCBvdXRzaWRlLlxuICogICAgICAgRG9uJ3QgZXhwb3J0IHRoaXMgbWV0aG9kIHRvIGBuZy4qYCBvbiB3aW5kb3cuXG4gKlxuICogQHBhcmFtIHRhcmdldCBET00gZWxlbWVudCBvciBjb21wb25lbnQgaW5zdGFuY2UgZm9yIHdoaWNoIHRvIHJldHJpZXZlIHRoZSBMVmlldy5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldENvbXBvbmVudExWaWV3KHRhcmdldDogYW55KTogTFZpZXcge1xuICBjb25zdCBsQ29udGV4dCA9IGxvYWRMQ29udGV4dCh0YXJnZXQpO1xuICBjb25zdCBub2RlSW5keCA9IGxDb250ZXh0Lm5vZGVJbmRleDtcbiAgY29uc3QgbFZpZXcgPSBsQ29udGV4dC5sVmlldztcbiAgY29uc3QgY29tcG9uZW50TFZpZXcgPSBsVmlld1tub2RlSW5keF07XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnRMVmlldyhjb21wb25lbnRMVmlldyk7XG4gIHJldHVybiBjb21wb25lbnRMVmlldztcbn1cblxuLyoqIEFzc2VydHMgdGhhdCBhIHZhbHVlIGlzIGEgRE9NIEVsZW1lbnQuICovXG5mdW5jdGlvbiBhc3NlcnREb21FbGVtZW50KHZhbHVlOiBhbnkpIHtcbiAgaWYgKHR5cGVvZiBFbGVtZW50ICE9PSAndW5kZWZpbmVkJyAmJiAhKHZhbHVlIGluc3RhbmNlb2YgRWxlbWVudCkpIHtcbiAgICB0aHJvdyBuZXcgRXJyb3IoJ0V4cGVjdGluZyBpbnN0YW5jZSBvZiBET00gRWxlbWVudCcpO1xuICB9XG59XG4iXX0=