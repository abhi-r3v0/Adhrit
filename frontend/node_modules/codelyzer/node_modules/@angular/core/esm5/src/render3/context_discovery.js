/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import '../util/ng_dev_mode';
import { assertDomNode } from '../util/assert';
import { EMPTY_ARRAY } from './empty';
import { MONKEY_PATCH_KEY_NAME } from './interfaces/context';
import { CONTEXT, HEADER_OFFSET, HOST, TVIEW } from './interfaces/view';
import { getComponentLViewByIndex, getNativeByTNodeOrNull, readPatchedData, unwrapRNode } from './util/view_utils';
/** Returns the matching `LContext` data for a given DOM node, directive or component instance.
 *
 * This function will examine the provided DOM element, component, or directive instance\'s
 * monkey-patched property to derive the `LContext` data. Once called then the monkey-patched
 * value will be that of the newly created `LContext`.
 *
 * If the monkey-patched value is the `LView` instance then the context value for that
 * target will be created and the monkey-patch reference will be updated. Therefore when this
 * function is called it may mutate the provided element\'s, component\'s or any of the associated
 * directive\'s monkey-patch values.
 *
 * If the monkey-patch value is not detected then the code will walk up the DOM until an element
 * is found which contains a monkey-patch reference. When that occurs then the provided element
 * will be updated with a new context (which is then returned). If the monkey-patch value is not
 * detected for a component/directive instance then it will throw an error (all components and
 * directives should be automatically monkey-patched by ivy).
 *
 * @param target Component, Directive or DOM Node.
 */
export function getLContext(target) {
    var mpValue = readPatchedData(target);
    if (mpValue) {
        // only when it's an array is it considered an LView instance
        // ... otherwise it's an already constructed LContext instance
        if (Array.isArray(mpValue)) {
            var lView = mpValue;
            var nodeIndex = void 0;
            var component = undefined;
            var directives = undefined;
            if (isComponentInstance(target)) {
                nodeIndex = findViaComponent(lView, target);
                if (nodeIndex == -1) {
                    throw new Error('The provided component was not found in the application');
                }
                component = target;
            }
            else if (isDirectiveInstance(target)) {
                nodeIndex = findViaDirective(lView, target);
                if (nodeIndex == -1) {
                    throw new Error('The provided directive was not found in the application');
                }
                directives = getDirectivesAtNodeIndex(nodeIndex, lView, false);
            }
            else {
                nodeIndex = findViaNativeElement(lView, target);
                if (nodeIndex == -1) {
                    return null;
                }
            }
            // the goal is not to fill the entire context full of data because the lookups
            // are expensive. Instead, only the target data (the element, component, container, ICU
            // expression or directive details) are filled into the context. If called multiple times
            // with different target values then the missing target data will be filled in.
            var native = unwrapRNode(lView[nodeIndex]);
            var existingCtx = readPatchedData(native);
            var context = (existingCtx && !Array.isArray(existingCtx)) ?
                existingCtx :
                createLContext(lView, nodeIndex, native);
            // only when the component has been discovered then update the monkey-patch
            if (component && context.component === undefined) {
                context.component = component;
                attachPatchData(context.component, context);
            }
            // only when the directives have been discovered then update the monkey-patch
            if (directives && context.directives === undefined) {
                context.directives = directives;
                for (var i = 0; i < directives.length; i++) {
                    attachPatchData(directives[i], context);
                }
            }
            attachPatchData(context.native, context);
            mpValue = context;
        }
    }
    else {
        var rElement = target;
        ngDevMode && assertDomNode(rElement);
        // if the context is not found then we need to traverse upwards up the DOM
        // to find the nearest element that has already been monkey patched with data
        var parent_1 = rElement;
        while (parent_1 = parent_1.parentNode) {
            var parentContext = readPatchedData(parent_1);
            if (parentContext) {
                var lView = void 0;
                if (Array.isArray(parentContext)) {
                    lView = parentContext;
                }
                else {
                    lView = parentContext.lView;
                }
                // the edge of the app was also reached here through another means
                // (maybe because the DOM was changed manually).
                if (!lView) {
                    return null;
                }
                var index = findViaNativeElement(lView, rElement);
                if (index >= 0) {
                    var native = unwrapRNode(lView[index]);
                    var context = createLContext(lView, index, native);
                    attachPatchData(native, context);
                    mpValue = context;
                    break;
                }
            }
        }
    }
    return mpValue || null;
}
/**
 * Creates an empty instance of a `LContext` context
 */
function createLContext(lView, nodeIndex, native) {
    return {
        lView: lView,
        nodeIndex: nodeIndex,
        native: native,
        component: undefined,
        directives: undefined,
        localRefs: undefined,
    };
}
/**
 * Takes a component instance and returns the view for that component.
 *
 * @param componentInstance
 * @returns The component's view
 */
export function getComponentViewByInstance(componentInstance) {
    var lView = readPatchedData(componentInstance);
    var view;
    if (Array.isArray(lView)) {
        var nodeIndex = findViaComponent(lView, componentInstance);
        view = getComponentLViewByIndex(nodeIndex, lView);
        var context = createLContext(lView, nodeIndex, view[HOST]);
        context.component = componentInstance;
        attachPatchData(componentInstance, context);
        attachPatchData(context.native, context);
    }
    else {
        var context = lView;
        view = getComponentLViewByIndex(context.nodeIndex, context.lView);
    }
    return view;
}
/**
 * Assigns the given data to the given target (which could be a component,
 * directive or DOM node instance) using monkey-patching.
 */
export function attachPatchData(target, data) {
    target[MONKEY_PATCH_KEY_NAME] = data;
}
export function isComponentInstance(instance) {
    return instance && instance.constructor && instance.constructor.ɵcmp;
}
export function isDirectiveInstance(instance) {
    return instance && instance.constructor && instance.constructor.ɵdir;
}
/**
 * Locates the element within the given LView and returns the matching index
 */
function findViaNativeElement(lView, target) {
    var tNode = lView[TVIEW].firstChild;
    while (tNode) {
        var native = getNativeByTNodeOrNull(tNode, lView);
        if (native === target) {
            return tNode.index;
        }
        tNode = traverseNextElement(tNode);
    }
    return -1;
}
/**
 * Locates the next tNode (child, sibling or parent).
 */
function traverseNextElement(tNode) {
    if (tNode.child) {
        return tNode.child;
    }
    else if (tNode.next) {
        return tNode.next;
    }
    else {
        // Let's take the following template: <div><span>text</span></div><component/>
        // After checking the text node, we need to find the next parent that has a "next" TNode,
        // in this case the parent `div`, so that we can find the component.
        while (tNode.parent && !tNode.parent.next) {
            tNode = tNode.parent;
        }
        return tNode.parent && tNode.parent.next;
    }
}
/**
 * Locates the component within the given LView and returns the matching index
 */
function findViaComponent(lView, componentInstance) {
    var componentIndices = lView[TVIEW].components;
    if (componentIndices) {
        for (var i = 0; i < componentIndices.length; i++) {
            var elementComponentIndex = componentIndices[i];
            var componentView = getComponentLViewByIndex(elementComponentIndex, lView);
            if (componentView[CONTEXT] === componentInstance) {
                return elementComponentIndex;
            }
        }
    }
    else {
        var rootComponentView = getComponentLViewByIndex(HEADER_OFFSET, lView);
        var rootComponent = rootComponentView[CONTEXT];
        if (rootComponent === componentInstance) {
            // we are dealing with the root element here therefore we know that the
            // element is the very first element after the HEADER data in the lView
            return HEADER_OFFSET;
        }
    }
    return -1;
}
/**
 * Locates the directive within the given LView and returns the matching index
 */
function findViaDirective(lView, directiveInstance) {
    // if a directive is monkey patched then it will (by default)
    // have a reference to the LView of the current view. The
    // element bound to the directive being search lives somewhere
    // in the view data. We loop through the nodes and check their
    // list of directives for the instance.
    var tNode = lView[TVIEW].firstChild;
    while (tNode) {
        var directiveIndexStart = tNode.directiveStart;
        var directiveIndexEnd = tNode.directiveEnd;
        for (var i = directiveIndexStart; i < directiveIndexEnd; i++) {
            if (lView[i] === directiveInstance) {
                return tNode.index;
            }
        }
        tNode = traverseNextElement(tNode);
    }
    return -1;
}
/**
 * Returns a list of directives extracted from the given view based on the
 * provided list of directive index values.
 *
 * @param nodeIndex The node index
 * @param lView The target view data
 * @param includeComponents Whether or not to include components in returned directives
 */
export function getDirectivesAtNodeIndex(nodeIndex, lView, includeComponents) {
    var tNode = lView[TVIEW].data[nodeIndex];
    var directiveStartIndex = tNode.directiveStart;
    if (directiveStartIndex == 0)
        return EMPTY_ARRAY;
    var directiveEndIndex = tNode.directiveEnd;
    if (!includeComponents && tNode.flags & 2 /* isComponentHost */)
        directiveStartIndex++;
    return lView.slice(directiveStartIndex, directiveEndIndex);
}
export function getComponentAtNodeIndex(nodeIndex, lView) {
    var tNode = lView[TVIEW].data[nodeIndex];
    var directiveStartIndex = tNode.directiveStart;
    return tNode.flags & 2 /* isComponentHost */ ? lView[directiveStartIndex] : null;
}
/**
 * Returns a map of local references (local reference name => element or directive instance) that
 * exist on a given element.
 */
export function discoverLocalRefs(lView, nodeIndex) {
    var tNode = lView[TVIEW].data[nodeIndex];
    if (tNode && tNode.localNames) {
        var result = {};
        var localIndex = tNode.index + 1;
        for (var i = 0; i < tNode.localNames.length; i += 2) {
            result[tNode.localNames[i]] = lView[localIndex];
            localIndex++;
        }
        return result;
    }
    return null;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29udGV4dF9kaXNjb3ZlcnkuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL2NvbnRleHRfZGlzY292ZXJ5LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUNILE9BQU8scUJBQXFCLENBQUM7QUFFN0IsT0FBTyxFQUFDLGFBQWEsRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBRTdDLE9BQU8sRUFBQyxXQUFXLEVBQUMsTUFBTSxTQUFTLENBQUM7QUFDcEMsT0FBTyxFQUFXLHFCQUFxQixFQUFDLE1BQU0sc0JBQXNCLENBQUM7QUFHckUsT0FBTyxFQUFDLE9BQU8sRUFBRSxhQUFhLEVBQUUsSUFBSSxFQUFTLEtBQUssRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBQzdFLE9BQU8sRUFBQyx3QkFBd0IsRUFBRSxzQkFBc0IsRUFBRSxlQUFlLEVBQUUsV0FBVyxFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFJakg7Ozs7Ozs7Ozs7Ozs7Ozs7OztHQWtCRztBQUNILE1BQU0sVUFBVSxXQUFXLENBQUMsTUFBVztJQUNyQyxJQUFJLE9BQU8sR0FBRyxlQUFlLENBQUMsTUFBTSxDQUFDLENBQUM7SUFDdEMsSUFBSSxPQUFPLEVBQUU7UUFDWCw2REFBNkQ7UUFDN0QsOERBQThEO1FBQzlELElBQUksS0FBSyxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsRUFBRTtZQUMxQixJQUFNLEtBQUssR0FBVSxPQUFTLENBQUM7WUFDL0IsSUFBSSxTQUFTLFNBQVEsQ0FBQztZQUN0QixJQUFJLFNBQVMsR0FBUSxTQUFTLENBQUM7WUFDL0IsSUFBSSxVQUFVLEdBQXlCLFNBQVMsQ0FBQztZQUVqRCxJQUFJLG1CQUFtQixDQUFDLE1BQU0sQ0FBQyxFQUFFO2dCQUMvQixTQUFTLEdBQUcsZ0JBQWdCLENBQUMsS0FBSyxFQUFFLE1BQU0sQ0FBQyxDQUFDO2dC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QUFDLENBQUMsQ0FBQyxHQUFHLEtBQUssQ0FBQyxVQUFVLENBQUMsQ0FBQztZQUNoRCxVQUFVLEVBQUUsQ0FBQztTQUNkO1FBQ0QsT0FBTyxNQUFNLENBQUM7S0FDZjtJQUVELE9BQU8sSUFBSSxDQUFDO0FBQ2QsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCAnLi4vdXRpbC9uZ19kZXZfbW9kZSc7XG5cbmltcG9ydCB7YXNzZXJ0RG9tTm9kZX0gZnJvbSAnLi4vdXRpbC9hc3NlcnQnO1xuXG5pbXBvcnQge0VNUFRZX0FSUkFZfSBmcm9tICcuL2VtcHR5JztcbmltcG9ydCB7TENvbnRleHQsIE1PTktFWV9QQVRDSF9LRVlfTkFNRX0gZnJvbSAnLi9pbnRlcmZhY2VzL2NvbnRleHQnO1xuaW1wb3J0IHtUTm9kZSwgVE5vZGVGbGFnc30gZnJvbSAnLi9pbnRlcmZhY2VzL25vZGUnO1xuaW1wb3J0IHtSRWxlbWVudCwgUk5vZGV9IGZyb20gJy4vaW50ZXJmYWNlcy9yZW5kZXJlcic7XG5pbXBvcnQge0NPTlRFWFQsIEhFQURFUl9PRkZTRVQsIEhPU1QsIExWaWV3LCBUVklFV30gZnJvbSAnLi9pbnRlcmZhY2VzL3ZpZXcnO1xuaW1wb3J0IHtnZXRDb21wb25lbnRMVmlld0J5SW5kZXgsIGdldE5hdGl2ZUJ5VE5vZGVPck51bGwsIHJlYWRQYXRjaGVkRGF0YSwgdW53cmFwUk5vZGV9IGZyb20gJy4vdXRpbC92aWV3X3V0aWxzJztcblxuXG5cbi8qKiBSZXR1cm5zIHRoZSBtYXRjaGluZyBgTENvbnRleHRgIGRhdGEgZm9yIGEgZ2l2ZW4gRE9NIG5vZGUsIGRpcmVjdGl2ZSBvciBjb21wb25lbnQgaW5zdGFuY2UuXG4gKlxuICogVGhpcyBmdW5jdGlvbiB3aWxsIGV4YW1pbmUgdGhlIHByb3ZpZGVkIERPTSBlbGVtZW50LCBjb21wb25lbnQsIG9yIGRpcmVjdGl2ZSBpbnN0YW5jZVxcJ3NcbiAqIG1vbmtleS1wYXRjaGVkIHByb3BlcnR5IHRvIGRlcml2ZSB0aGUgYExDb250ZXh0YCBkYXRhLiBPbmNlIGNhbGxlZCB0aGVuIHRoZSBtb25rZXktcGF0Y2hlZFxuICogdmFsdWUgd2lsbCBiZSB0aGF0IG9mIHRoZSBuZXdseSBjcmVhdGVkIGBMQ29udGV4dGAuXG4gKlxuICogSWYgdGhlIG1vbmtleS1wYXRjaGVkIHZhbHVlIGlzIHRoZSBgTFZpZXdgIGluc3RhbmNlIHRoZW4gdGhlIGNvbnRleHQgdmFsdWUgZm9yIHRoYXRcbiAqIHRhcmdldCB3aWxsIGJlIGNyZWF0ZWQgYW5kIHRoZSBtb25rZXktcGF0Y2ggcmVmZXJlbmNlIHdpbGwgYmUgdXBkYXRlZC4gVGhlcmVmb3JlIHdoZW4gdGhpc1xuICogZnVuY3Rpb24gaXMgY2FsbGVkIGl0IG1heSBtdXRhdGUgdGhlIHByb3ZpZGVkIGVsZW1lbnRcXCdzLCBjb21wb25lbnRcXCdzIG9yIGFueSBvZiB0aGUgYXNzb2NpYXRlZFxuICogZGlyZWN0aXZlXFwncyBtb25rZXktcGF0Y2ggdmFsdWVzLlxuICpcbiAqIElmIHRoZSBtb25rZXktcGF0Y2ggdmFsdWUgaXMgbm90IGRldGVjdGVkIHRoZW4gdGhlIGNvZGUgd2lsbCB3YWxrIHVwIHRoZSBET00gdW50aWwgYW4gZWxlbWVudFxuICogaXMgZm91bmQgd2hpY2ggY29udGFpbnMgYSBtb25rZXktcGF0Y2ggcmVmZXJlbmNlLiBXaGVuIHRoYXQgb2NjdXJzIHRoZW4gdGhlIHByb3ZpZGVkIGVsZW1lbnRcbiAqIHdpbGwgYmUgdXBkYXRlZCB3aXRoIGEgbmV3IGNvbnRleHQgKHdoaWNoIGlzIHRoZW4gcmV0dXJuZWQpLiBJZiB0aGUgbW9ua2V5LXBhdGNoIHZhbHVlIGlzIG5vdFxuICogZGV0ZWN0ZWQgZm9yIGEgY29tcG9uZW50L2RpcmVjdGl2ZSBpbnN0YW5jZSB0aGVuIGl0IHdpbGwgdGhyb3cgYW4gZXJyb3IgKGFsbCBjb21wb25lbnRzIGFuZFxuICogZGlyZWN0aXZlcyBzaG91bGQgYmUgYXV0b21hdGljYWxseSBtb25rZXktcGF0Y2hlZCBieSBpdnkpLlxuICpcbiAqIEBwYXJhbSB0YXJnZXQgQ29tcG9uZW50LCBEaXJlY3RpdmUgb3IgRE9NIE5vZGUuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRMQ29udGV4dCh0YXJnZXQ6IGFueSk6IExDb250ZXh0fG51bGwge1xuICBsZXQgbXBWYWx1ZSA9IHJlYWRQYXRjaGVkRGF0YSh0YXJnZXQpO1xuICBpZiAobXBWYWx1ZSkge1xuICAgIC8vIG9ubHkgd2hlbiBpdCdzIGFuIGFycmF5IGlzIGl0IGNvbnNpZGVyZWQgYW4gTFZpZXcgaW5zdGFuY2VcbiAgICAvLyAuLi4gb3RoZXJ3aXNlIGl0J3MgYW4gYWxyZWFkeSBjb25zdHJ1Y3RlZCBMQ29udGV4dCBpbnN0YW5jZVxuICAgIGlmIChBcnJheS5pc0FycmF5KG1wVmFsdWUpKSB7XG4gICAgICBjb25zdCBsVmlldzogTFZpZXcgPSBtcFZhbHVlICE7XG4gICAgICBsZXQgbm9kZUluZGV4OiBudW1iZXI7XG4gICAgICBsZXQgY29tcG9uZW50OiBhbnkgPSB1bmRlZmluZWQ7XG4gICAgICBsZXQgZGlyZWN0aXZlczogYW55W118bnVsbHx1bmRlZmluZWQgPSB1bmRlZmluZWQ7XG5cbiAgICAgIGlmIChpc0NvbXBvbmVudEluc3RhbmNlKHRhcmdldCkpIHtcbiAgICAgICAgbm9kZUluZGV4ID0gZmluZFZpYUNvbXBvbmVudChsVmlldywgdGFyZ2V0KTtcbiAgICAgICAgaWYgKG5vZGVJbmRleCA9PSAtMSkge1xuICAgICAgICAgIHRocm93IG5ldyBFcnJvcignVGhlIHByb3ZpZGVkIGNvbXBvbmVudCB3YXMgbm90IGZvdW5kIGluIHRoZSBhcHBsaWNhdGlvbicpO1xuICAgICAgICB9XG4gICAgICAgIGNvbXBvbmVudCA9IHRhcmdldDtcbiAgICAgIH0gZWxzZSBpZiAoaXNEaXJlY3RpdmVJbnN0YW5jZSh0YXJnZXQpKSB7XG4gICAgICAgIG5vZGVJbmRleCA9IGZpbmRWaWFEaXJlY3RpdmUobFZpZXcsIHRhcmdldCk7XG4gICAgICAgIGlmIChub2RlSW5kZXggPT0gLTEpIHtcbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoJ1RoZSBwcm92aWRlZCBkaXJlY3RpdmUgd2FzIG5vdCBmb3VuZCBpbiB0aGUgYXBwbGljYXRpb24nKTtcbiAgICAgICAgfVxuICAgICAgICBkaXJlY3RpdmVzID0gZ2V0RGlyZWN0aXZlc0F0Tm9kZUluZGV4KG5vZGVJbmRleCwgbFZpZXcsIGZhbHNlKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIG5vZGVJbmRleCA9IGZpbmRWaWFOYXRpdmVFbGVtZW50KGxWaWV3LCB0YXJnZXQgYXMgUkVsZW1lbnQpO1xuICAgICAgICBpZiAobm9kZUluZGV4ID09IC0xKSB7XG4gICAgICAgICAgcmV0dXJuIG51bGw7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgLy8gdGhlIGdvYWwgaXMgbm90IHRvIGZpbGwgdGhlIGVudGlyZSBjb250ZXh0IGZ1bGwgb2YgZGF0YSBiZWNhdXNlIHRoZSBsb29rdXBzXG4gICAgICAvLyBhcmUgZXhwZW5zaXZlLiBJbnN0ZWFkLCBvbmx5IHRoZSB0YXJnZXQgZGF0YSAodGhlIGVsZW1lbnQsIGNvbXBvbmVudCwgY29udGFpbmVyLCBJQ1VcbiAgICAgIC8vIGV4cHJlc3Npb24gb3IgZGlyZWN0aXZlIGRldGFpbHMpIGFyZSBmaWxsZWQgaW50byB0aGUgY29udGV4dC4gSWYgY2FsbGVkIG11bHRpcGxlIHRpbWVzXG4gICAgICAvLyB3aXRoIGRpZmZlcmVudCB0YXJnZXQgdmFsdWVzIHRoZW4gdGhlIG1pc3NpbmcgdGFyZ2V0IGRhdGEgd2lsbCBiZSBmaWxsZWQgaW4uXG4gICAgICBjb25zdCBuYXRpdmUgPSB1bndyYXBSTm9kZShsVmlld1tub2RlSW5kZXhdKTtcbiAgICAgIGNvbnN0IGV4aXN0aW5nQ3R4ID0gcmVhZFBhdGNoZWREYXRhKG5hdGl2ZSk7XG4gICAgICBjb25zdCBjb250ZXh0OiBMQ29udGV4dCA9IChleGlzdGluZ0N0eCAmJiAhQXJyYXkuaXNBcnJheShleGlzdGluZ0N0eCkpID9cbiAgICAgICAgICBleGlzdGluZ0N0eCA6XG4gICAgICAgICAgY3JlYXRlTENvbnRleHQobFZpZXcsIG5vZGVJbmRleCwgbmF0aXZlKTtcblxuICAgICAgLy8gb25seSB3aGVuIHRoZSBjb21wb25lbnQgaGFzIGJlZW4gZGlzY292ZXJlZCB0aGVuIHVwZGF0ZSB0aGUgbW9ua2V5LXBhdGNoXG4gICAgICBpZiAoY29tcG9uZW50ICYmIGNvbnRleHQuY29tcG9uZW50ID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgY29udGV4dC5jb21wb25lbnQgPSBjb21wb25lbnQ7XG4gICAgICAgIGF0dGFjaFBhdGNoRGF0YShjb250ZXh0LmNvbXBvbmVudCwgY29udGV4dCk7XG4gICAgICB9XG5cbiAgICAgIC8vIG9ubHkgd2hlbiB0aGUgZGlyZWN0aXZlcyBoYXZlIGJlZW4gZGlzY292ZXJlZCB0aGVuIHVwZGF0ZSB0aGUgbW9ua2V5LXBhdGNoXG4gICAgICBpZiAoZGlyZWN0aXZlcyAmJiBjb250ZXh0LmRpcmVjdGl2ZXMgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICBjb250ZXh0LmRpcmVjdGl2ZXMgPSBkaXJlY3RpdmVzO1xuICAgICAgICBmb3IgKGxldCBpID0gMDsgaSA8IGRpcmVjdGl2ZXMubGVuZ3RoOyBpKyspIHtcbiAgICAgICAgICBhdHRhY2hQYXRjaERhdGEoZGlyZWN0aXZlc1tpXSwgY29udGV4dCk7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgYXR0YWNoUGF0Y2hEYXRhKGNvbnRleHQubmF0aXZlLCBjb250ZXh0KTtcbiAgICAgIG1wVmFsdWUgPSBjb250ZXh0O1xuICAgIH1cbiAgfSBlbHNlIHtcbiAgICBjb25zdCByRWxlbWVudCA9IHRhcmdldCBhcyBSRWxlbWVudDtcbiAgICBuZ0Rldk1vZGUgJiYgYXNzZXJ0RG9tTm9kZShyRWxlbWVudCk7XG5cbiAgICAvLyBpZiB0aGUgY29udGV4dCBpcyBub3QgZm91bmQgdGhlbiB3ZSBuZWVkIHRvIHRyYXZlcnNlIHVwd2FyZHMgdXAgdGhlIERPTVxuICAgIC8vIHRvIGZpbmQgdGhlIG5lYXJlc3QgZWxlbWVudCB0aGF0IGhhcyBhbHJlYWR5IGJlZW4gbW9ua2V5IHBhdGNoZWQgd2l0aCBkYXRhXG4gICAgbGV0IHBhcmVudCA9IHJFbGVtZW50IGFzIGFueTtcbiAgICB3aGlsZSAocGFyZW50ID0gcGFyZW50LnBhcmVudE5vZGUpIHtcbiAgICAgIGNvbnN0IHBhcmVudENvbnRleHQgPSByZWFkUGF0Y2hlZERhdGEocGFyZW50KTtcbiAgICAgIGlmIChwYXJlbnRDb250ZXh0KSB7XG4gICAgICAgIGxldCBsVmlldzogTFZpZXd8bnVsbDtcbiAgICAgICAgaWYgKEFycmF5LmlzQXJyYXkocGFyZW50Q29udGV4dCkpIHtcbiAgICAgICAgICBsVmlldyA9IHBhcmVudENvbnRleHQgYXMgTFZpZXc7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgbFZpZXcgPSBwYXJlbnRDb250ZXh0LmxWaWV3O1xuICAgICAgICB9XG5cbiAgICAgICAgLy8gdGhlIGVkZ2Ugb2YgdGhlIGFwcCB3YXMgYWxzbyByZWFjaGVkIGhlcmUgdGhyb3VnaCBhbm90aGVyIG1lYW5zXG4gICAgICAgIC8vIChtYXliZSBiZWNhdXNlIHRoZSBET00gd2FzIGNoYW5nZWQgbWFudWFsbHkpLlxuICAgICAgICBpZiAoIWxWaWV3KSB7XG4gICAgICAgICAgcmV0dXJuIG51bGw7XG4gICAgICAgIH1cblxuICAgICAgICBjb25zdCBpbmRleCA9IGZpbmRWaWFOYXRpdmVFbGVtZW50KGxWaWV3LCByRWxlbWVudCk7XG4gICAgICAgIGlmIChpbmRleCA+PSAwKSB7XG4gICAgICAgICAgY29uc3QgbmF0aXZlID0gdW53cmFwUk5vZGUobFZpZXdbaW5kZXhdKTtcbiAgICAgICAgICBjb25zdCBjb250ZXh0ID0gY3JlYXRlTENvbnRleHQobFZpZXcsIGluZGV4LCBuYXRpdmUpO1xuICAgICAgICAgIGF0dGFjaFBhdGNoRGF0YShuYXRpdmUsIGNvbnRleHQpO1xuICAgICAgICAgIG1wVmFsdWUgPSBjb250ZXh0O1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICB9XG4gIHJldHVybiAobXBWYWx1ZSBhcyBMQ29udGV4dCkgfHwgbnVsbDtcbn1cblxuLyoqXG4gKiBDcmVhdGVzIGFuIGVtcHR5IGluc3RhbmNlIG9mIGEgYExDb250ZXh0YCBjb250ZXh0XG4gKi9cbmZ1bmN0aW9uIGNyZWF0ZUxDb250ZXh0KGxWaWV3OiBMVmlldywgbm9kZUluZGV4OiBudW1iZXIsIG5hdGl2ZTogUk5vZGUpOiBMQ29udGV4dCB7XG4gIHJldHVybiB7XG4gICAgbFZpZXcsXG4gICAgbm9kZUluZGV4LFxuICAgIG5hdGl2ZSxcbiAgICBjb21wb25lbnQ6IHVuZGVmaW5lZCxcbiAgICBkaXJlY3RpdmVzOiB1bmRlZmluZWQsXG4gICAgbG9jYWxSZWZzOiB1bmRlZmluZWQsXG4gIH07XG59XG5cbi8qKlxuICogVGFrZXMgYSBjb21wb25lbnQgaW5zdGFuY2UgYW5kIHJldHVybnMgdGhlIHZpZXcgZm9yIHRoYXQgY29tcG9uZW50LlxuICpcbiAqIEBwYXJhbSBjb21wb25lbnRJbnN0YW5jZVxuICogQHJldHVybnMgVGhlIGNvbXBvbmVudCdzIHZpZXdcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldENvbXBvbmVudFZpZXdCeUluc3RhbmNlKGNvbXBvbmVudEluc3RhbmNlOiB7fSk6IExWaWV3IHtcbiAgbGV0IGxWaWV3ID0gcmVhZFBhdGNoZWREYXRhKGNvbXBvbmVudEluc3RhbmNlKTtcbiAgbGV0IHZpZXc6IExWaWV3O1xuXG4gIGlmIChBcnJheS5pc0FycmF5KGxWaWV3KSkge1xuICAgIGNvbnN0IG5vZGVJbmRleCA9IGZpbmRWaWFDb21wb25lbnQobFZpZXcsIGNvbXBvbmVudEluc3RhbmNlKTtcbiAgICB2aWV3ID0gZ2V0Q29tcG9uZW50TFZpZXdCeUluZGV4KG5vZGVJbmRleCwgbFZpZXcpO1xuICAgIGNvbnN0IGNvbnRleHQgPSBjcmVhdGVMQ29udGV4dChsVmlldywgbm9kZUluZGV4LCB2aWV3W0hPU1RdIGFzIFJFbGVtZW50KTtcbiAgICBjb250ZXh0LmNvbXBvbmVudCA9IGNvbXBvbmVudEluc3RhbmNlO1xuICAgIGF0dGFjaFBhdGNoRGF0YShjb21wb25lbnRJbnN0YW5jZSwgY29udGV4dCk7XG4gICAgYXR0YWNoUGF0Y2hEYXRhKGNvbnRleHQubmF0aXZlLCBjb250ZXh0KTtcbiAgfSBlbHNlIHtcbiAgICBjb25zdCBjb250ZXh0ID0gbFZpZXcgYXMgYW55IGFzIExDb250ZXh0O1xuICAgIHZpZXcgPSBnZXRDb21wb25lbnRMVmlld0J5SW5kZXgoY29udGV4dC5ub2RlSW5kZXgsIGNvbnRleHQubFZpZXcpO1xuICB9XG4gIHJldHVybiB2aWV3O1xufVxuXG4vKipcbiAqIEFzc2lnbnMgdGhlIGdpdmVuIGRhdGEgdG8gdGhlIGdpdmVuIHRhcmdldCAod2hpY2ggY291bGQgYmUgYSBjb21wb25lbnQsXG4gKiBkaXJlY3RpdmUgb3IgRE9NIG5vZGUgaW5zdGFuY2UpIHVzaW5nIG1vbmtleS1wYXRjaGluZy5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGF0dGFjaFBhdGNoRGF0YSh0YXJnZXQ6IGFueSwgZGF0YTogTFZpZXcgfCBMQ29udGV4dCkge1xuICB0YXJnZXRbTU9OS0VZX1BBVENIX0tFWV9OQU1FXSA9IGRhdGE7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpc0NvbXBvbmVudEluc3RhbmNlKGluc3RhbmNlOiBhbnkpOiBib29sZWFuIHtcbiAgcmV0dXJuIGluc3RhbmNlICYmIGluc3RhbmNlLmNvbnN0cnVjdG9yICYmIGluc3RhbmNlLmNvbnN0cnVjdG9yLsm1Y21wO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gaXNEaXJlY3RpdmVJbnN0YW5jZShpbnN0YW5jZTogYW55KTogYm9vbGVhbiB7XG4gIHJldHVybiBpbnN0YW5jZSAmJiBpbnN0YW5jZS5jb25zdHJ1Y3RvciAmJiBpbnN0YW5jZS5jb25zdHJ1Y3Rvci7JtWRpcjtcbn1cblxuLyoqXG4gKiBMb2NhdGVzIHRoZSBlbGVtZW50IHdpdGhpbiB0aGUgZ2l2ZW4gTFZpZXcgYW5kIHJldHVybnMgdGhlIG1hdGNoaW5nIGluZGV4XG4gKi9cbmZ1bmN0aW9uIGZpbmRWaWFOYXRpdmVFbGVtZW50KGxWaWV3OiBMVmlldywgdGFyZ2V0OiBSRWxlbWVudCk6IG51bWJlciB7XG4gIGxldCB0Tm9kZSA9IGxWaWV3W1RWSUVXXS5maXJzdENoaWxkO1xuICB3aGlsZSAodE5vZGUpIHtcbiAgICBjb25zdCBuYXRpdmUgPSBnZXROYXRpdmVCeVROb2RlT3JOdWxsKHROb2RlLCBsVmlldykgITtcbiAgICBpZiAobmF0aXZlID09PSB0YXJnZXQpIHtcbiAgICAgIHJldHVybiB0Tm9kZS5pbmRleDtcbiAgICB9XG4gICAgdE5vZGUgPSB0cmF2ZXJzZU5leHRFbGVtZW50KHROb2RlKTtcbiAgfVxuXG4gIHJldHVybiAtMTtcbn1cblxuLyoqXG4gKiBMb2NhdGVzIHRoZSBuZXh0IHROb2RlIChjaGlsZCwgc2libGluZyBvciBwYXJlbnQpLlxuICovXG5mdW5jdGlvbiB0cmF2ZXJzZU5leHRFbGVtZW50KHROb2RlOiBUTm9kZSk6IFROb2RlfG51bGwge1xuICBpZiAodE5vZGUuY2hpbGQpIHtcbiAgICByZXR1cm4gdE5vZGUuY2hpbGQ7XG4gIH0gZWxzZSBpZiAodE5vZGUubmV4dCkge1xuICAgIHJldHVybiB0Tm9kZS5uZXh0O1xuICB9IGVsc2Uge1xuICAgIC8vIExldCdzIHRha2UgdGhlIGZvbGxvd2luZyB0ZW1wbGF0ZTogPGRpdj48c3Bhbj50ZXh0PC9zcGFuPjwvZGl2Pjxjb21wb25lbnQvPlxuICAgIC8vIEFmdGVyIGNoZWNraW5nIHRoZSB0ZXh0IG5vZGUsIHdlIG5lZWQgdG8gZmluZCB0aGUgbmV4dCBwYXJlbnQgdGhhdCBoYXMgYSBcIm5leHRcIiBUTm9kZSxcbiAgICAvLyBpbiB0aGlzIGNhc2UgdGhlIHBhcmVudCBgZGl2YCwgc28gdGhhdCB3ZSBjYW4gZmluZCB0aGUgY29tcG9uZW50LlxuICAgIHdoaWxlICh0Tm9kZS5wYXJlbnQgJiYgIXROb2RlLnBhcmVudC5uZXh0KSB7XG4gICAgICB0Tm9kZSA9IHROb2RlLnBhcmVudDtcbiAgICB9XG4gICAgcmV0dXJuIHROb2RlLnBhcmVudCAmJiB0Tm9kZS5wYXJlbnQubmV4dDtcbiAgfVxufVxuXG4vKipcbiAqIExvY2F0ZXMgdGhlIGNvbXBvbmVudCB3aXRoaW4gdGhlIGdpdmVuIExWaWV3IGFuZCByZXR1cm5zIHRoZSBtYXRjaGluZyBpbmRleFxuICovXG5mdW5jdGlvbiBmaW5kVmlhQ29tcG9uZW50KGxWaWV3OiBMVmlldywgY29tcG9uZW50SW5zdGFuY2U6IHt9KTogbnVtYmVyIHtcbiAgY29uc3QgY29tcG9uZW50SW5kaWNlcyA9IGxWaWV3W1RWSUVXXS5jb21wb25lbnRzO1xuICBpZiAoY29tcG9uZW50SW5kaWNlcykge1xuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgY29tcG9uZW50SW5kaWNlcy5sZW5ndGg7IGkrKykge1xuICAgICAgY29uc3QgZWxlbWVudENvbXBvbmVudEluZGV4ID0gY29tcG9uZW50SW5kaWNlc1tpXTtcbiAgICAgIGNvbnN0IGNvbXBvbmVudFZpZXcgPSBnZXRDb21wb25lbnRMVmlld0J5SW5kZXgoZWxlbWVudENvbXBvbmVudEluZGV4LCBsVmlldyk7XG4gICAgICBpZiAoY29tcG9uZW50Vmlld1tDT05URVhUXSA9PT0gY29tcG9uZW50SW5zdGFuY2UpIHtcbiAgICAgICAgcmV0dXJuIGVsZW1lbnRDb21wb25lbnRJbmRleDtcbiAgICAgIH1cbiAgICB9XG4gIH0gZWxzZSB7XG4gICAgY29uc3Qgcm9vdENvbXBvbmVudFZpZXcgPSBnZXRDb21wb25lbnRMVmlld0J5SW5kZXgoSEVBREVSX09GRlNFVCwgbFZpZXcpO1xuICAgIGNvbnN0IHJvb3RDb21wb25lbnQgPSByb290Q29tcG9uZW50Vmlld1tDT05URVhUXTtcbiAgICBpZiAocm9vdENvbXBvbmVudCA9PT0gY29tcG9uZW50SW5zdGFuY2UpIHtcbiAgICAgIC8vIHdlIGFyZSBkZWFsaW5nIHdpdGggdGhlIHJvb3QgZWxlbWVudCBoZXJlIHRoZXJlZm9yZSB3ZSBrbm93IHRoYXQgdGhlXG4gICAgICAvLyBlbGVtZW50IGlzIHRoZSB2ZXJ5IGZpcnN0IGVsZW1lbnQgYWZ0ZXIgdGhlIEhFQURFUiBkYXRhIGluIHRoZSBsVmlld1xuICAgICAgcmV0dXJuIEhFQURFUl9PRkZTRVQ7XG4gICAgfVxuICB9XG4gIHJldHVybiAtMTtcbn1cblxuLyoqXG4gKiBMb2NhdGVzIHRoZSBkaXJlY3RpdmUgd2l0aGluIHRoZSBnaXZlbiBMVmlldyBhbmQgcmV0dXJucyB0aGUgbWF0Y2hpbmcgaW5kZXhcbiAqL1xuZnVuY3Rpb24gZmluZFZpYURpcmVjdGl2ZShsVmlldzogTFZpZXcsIGRpcmVjdGl2ZUluc3RhbmNlOiB7fSk6IG51bWJlciB7XG4gIC8vIGlmIGEgZGlyZWN0aXZlIGlzIG1vbmtleSBwYXRjaGVkIHRoZW4gaXQgd2lsbCAoYnkgZGVmYXVsdClcbiAgLy8gaGF2ZSBhIHJlZmVyZW5jZSB0byB0aGUgTFZpZXcgb2YgdGhlIGN1cnJlbnQgdmlldy4gVGhlXG4gIC8vIGVsZW1lbnQgYm91bmQgdG8gdGhlIGRpcmVjdGl2ZSBiZWluZyBzZWFyY2ggbGl2ZXMgc29tZXdoZXJlXG4gIC8vIGluIHRoZSB2aWV3IGRhdGEuIFdlIGxvb3AgdGhyb3VnaCB0aGUgbm9kZXMgYW5kIGNoZWNrIHRoZWlyXG4gIC8vIGxpc3Qgb2YgZGlyZWN0aXZlcyBmb3IgdGhlIGluc3RhbmNlLlxuICBsZXQgdE5vZGUgPSBsVmlld1tUVklFV10uZmlyc3RDaGlsZDtcbiAgd2hpbGUgKHROb2RlKSB7XG4gICAgY29uc3QgZGlyZWN0aXZlSW5kZXhTdGFydCA9IHROb2RlLmRpcmVjdGl2ZVN0YXJ0O1xuICAgIGNvbnN0IGRpcmVjdGl2ZUluZGV4RW5kID0gdE5vZGUuZGlyZWN0aXZlRW5kO1xuICAgIGZvciAobGV0IGkgPSBkaXJlY3RpdmVJbmRleFN0YXJ0OyBpIDwgZGlyZWN0aXZlSW5kZXhFbmQ7IGkrKykge1xuICAgICAgaWYgKGxWaWV3W2ldID09PSBkaXJlY3RpdmVJbnN0YW5jZSkge1xuICAgICAgICByZXR1cm4gdE5vZGUuaW5kZXg7XG4gICAgICB9XG4gICAgfVxuICAgIHROb2RlID0gdHJhdmVyc2VOZXh0RWxlbWVudCh0Tm9kZSk7XG4gIH1cbiAgcmV0dXJuIC0xO1xufVxuXG4vKipcbiAqIFJldHVybnMgYSBsaXN0IG9mIGRpcmVjdGl2ZXMgZXh0cmFjdGVkIGZyb20gdGhlIGdpdmVuIHZpZXcgYmFzZWQgb24gdGhlXG4gKiBwcm92aWRlZCBsaXN0IG9mIGRpcmVjdGl2ZSBpbmRleCB2YWx1ZXMuXG4gKlxuICogQHBhcmFtIG5vZGVJbmRleCBUaGUgbm9kZSBpbmRleFxuICogQHBhcmFtIGxWaWV3IFRoZSB0YXJnZXQgdmlldyBkYXRhXG4gKiBAcGFyYW0gaW5jbHVkZUNvbXBvbmVudHMgV2hldGhlciBvciBub3QgdG8gaW5jbHVkZSBjb21wb25lbnRzIGluIHJldHVybmVkIGRpcmVjdGl2ZXNcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldERpcmVjdGl2ZXNBdE5vZGVJbmRleChcbiAgICBub2RlSW5kZXg6IG51bWJlciwgbFZpZXc6IExWaWV3LCBpbmNsdWRlQ29tcG9uZW50czogYm9vbGVhbik6IGFueVtdfG51bGwge1xuICBjb25zdCB0Tm9kZSA9IGxWaWV3W1RWSUVXXS5kYXRhW25vZGVJbmRleF0gYXMgVE5vZGU7XG4gIGxldCBkaXJlY3RpdmVTdGFydEluZGV4ID0gdE5vZGUuZGlyZWN0aXZlU3RhcnQ7XG4gIGlmIChkaXJlY3RpdmVTdGFydEluZGV4ID09IDApIHJldHVybiBFTVBUWV9BUlJBWTtcbiAgY29uc3QgZGlyZWN0aXZlRW5kSW5kZXggPSB0Tm9kZS5kaXJlY3RpdmVFbmQ7XG4gIGlmICghaW5jbHVkZUNvbXBvbmVudHMgJiYgdE5vZGUuZmxhZ3MgJiBUTm9kZUZsYWdzLmlzQ29tcG9uZW50SG9zdCkgZGlyZWN0aXZlU3RhcnRJbmRleCsrO1xuICByZXR1cm4gbFZpZXcuc2xpY2UoZGlyZWN0aXZlU3RhcnRJbmRleCwgZGlyZWN0aXZlRW5kSW5kZXgpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0Q29tcG9uZW50QXROb2RlSW5kZXgobm9kZUluZGV4OiBudW1iZXIsIGxWaWV3OiBMVmlldyk6IHt9fG51bGwge1xuICBjb25zdCB0Tm9kZSA9IGxWaWV3W1RWSUVXXS5kYXRhW25vZGVJbmRleF0gYXMgVE5vZGU7XG4gIGxldCBkaXJlY3RpdmVTdGFydEluZGV4ID0gdE5vZGUuZGlyZWN0aXZlU3RhcnQ7XG4gIHJldHVybiB0Tm9kZS5mbGFncyAmIFROb2RlRmxhZ3MuaXNDb21wb25lbnRIb3N0ID8gbFZpZXdbZGlyZWN0aXZlU3RhcnRJbmRleF0gOiBudWxsO1xufVxuXG4vKipcbiAqIFJldHVybnMgYSBtYXAgb2YgbG9jYWwgcmVmZXJlbmNlcyAobG9jYWwgcmVmZXJlbmNlIG5hbWUgPT4gZWxlbWVudCBvciBkaXJlY3RpdmUgaW5zdGFuY2UpIHRoYXRcbiAqIGV4aXN0IG9uIGEgZ2l2ZW4gZWxlbWVudC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGRpc2NvdmVyTG9jYWxSZWZzKGxWaWV3OiBMVmlldywgbm9kZUluZGV4OiBudW1iZXIpOiB7W2tleTogc3RyaW5nXTogYW55fXxudWxsIHtcbiAgY29uc3QgdE5vZGUgPSBsVmlld1tUVklFV10uZGF0YVtub2RlSW5kZXhdIGFzIFROb2RlO1xuICBpZiAodE5vZGUgJiYgdE5vZGUubG9jYWxOYW1lcykge1xuICAgIGNvbnN0IHJlc3VsdDoge1trZXk6IHN0cmluZ106IGFueX0gPSB7fTtcbiAgICBsZXQgbG9jYWxJbmRleCA9IHROb2RlLmluZGV4ICsgMTtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IHROb2RlLmxvY2FsTmFtZXMubGVuZ3RoOyBpICs9IDIpIHtcbiAgICAgIHJlc3VsdFt0Tm9kZS5sb2NhbE5hbWVzW2ldXSA9IGxWaWV3W2xvY2FsSW5kZXhdO1xuICAgICAgbG9jYWxJbmRleCsrO1xuICAgIH1cbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgcmV0dXJuIG51bGw7XG59XG4iXX0=