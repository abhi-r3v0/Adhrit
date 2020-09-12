/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/view/element.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ViewEncapsulation } from '../metadata/view';
import { SecurityContext } from '../sanitization/security';
import { asElementData } from './types';
import { NOOP, calcBindingFlags, checkAndUpdateBinding, dispatchEvent, elementEventFullName, getParentRenderElement, resolveDefinition, resolveRendererType2, splitMatchedQueriesDsl, splitNamespace } from './util';
/**
 * @param {?} flags
 * @param {?} matchedQueriesDsl
 * @param {?} ngContentIndex
 * @param {?} childCount
 * @param {?=} handleEvent
 * @param {?=} templateFactory
 * @return {?}
 */
export function anchorDef(flags, matchedQueriesDsl, ngContentIndex, childCount, handleEvent, templateFactory) {
    flags |= 1 /* TypeElement */;
    const { matchedQueries, references, matchedQueryIds } = splitMatchedQueriesDsl(matchedQueriesDsl);
    /** @type {?} */
    const template = templateFactory ? resolveDefinition(templateFactory) : null;
    return {
        // will bet set by the view definition
        nodeIndex: -1,
        parent: null,
        renderParent: null,
        bindingIndex: -1,
        outputIndex: -1,
        // regular values
        flags,
        checkIndex: -1,
        childFlags: 0,
        directChildFlags: 0,
        childMatchedQueries: 0, matchedQueries, matchedQueryIds, references, ngContentIndex, childCount,
        bindings: [],
        bindingFlags: 0,
        outputs: [],
        element: {
            ns: null,
            name: null,
            attrs: null, template,
            componentProvider: null,
            componentView: null,
            componentRendererType: null,
            publicProviders: null,
            allProviders: null,
            handleEvent: handleEvent || NOOP
        },
        provider: null,
        text: null,
        query: null,
        ngContent: null
    };
}
/**
 * @param {?} checkIndex
 * @param {?} flags
 * @param {?} matchedQueriesDsl
 * @param {?} ngContentIndex
 * @param {?} childCount
 * @param {?} namespaceAndName
 * @param {?=} fixedAttrs
 * @param {?=} bindings
 * @param {?=} outputs
 * @param {?=} handleEvent
 * @param {?=} componentView
 * @param {?=} componentRendererType
 * @return {?}
 */
export function elementDef(checkIndex, flags, matchedQueriesDsl, ngContentIndex, childCount, namespaceAndName, fixedAttrs = [], bindings, outputs, handleEvent, componentView, componentRendererType) {
    if (!handleEvent) {
        handleEvent = NOOP;
    }
    const { matchedQueries, references, matchedQueryIds } = splitMatchedQueriesDsl(matchedQueriesDsl);
    /** @type {?} */
    let ns = (/** @type {?} */ (null));
    /** @type {?} */
    let name = (/** @type {?} */ (null));
    if (namespaceAndName) {
        [ns, name] = splitNamespace(namespaceAndName);
    }
    bindings = bindings || [];
    /** @type {?} */
    const bindingDefs = [];
    for (let i = 0; i < bindings.length; i++) {
        const [bindingFlags, namespaceAndName, suffixOrSecurityContext] = bindings[i];
        const [ns, name] = splitNamespace(namespaceAndName);
        /** @type {?} */
        let securityContext = (/** @type {?} */ (undefined));
        /** @type {?} */
        let suffix = (/** @type {?} */ (undefined));
        switch (bindingFlags & 15 /* Types */) {
            case 4 /* TypeElementStyle */:
                suffix = (/** @type {?} */ (suffixOrSecurityContext));
                break;
            case 1 /* TypeElementAttribute */:
            case 8 /* TypeProperty */:
                securityContext = (/** @type {?} */ (suffixOrSecurityContext));
                break;
        }
        bindingDefs[i] =
            { flags: bindingFlags, ns, name, nonMinifiedName: name, securityContext, suffix };
    }
    outputs = outputs || [];
    /** @type {?} */
    const outputDefs = [];
    for (let i = 0; i < outputs.length; i++) {
        const [target, eventName] = outputs[i];
        outputDefs[i] = {
            type: 0 /* ElementOutput */,
            target: (/** @type {?} */ (target)), eventName,
            propName: null
        };
    }
    fixedAttrs = fixedAttrs || [];
    /** @type {?} */
    const attrs = (/** @type {?} */ (fixedAttrs.map((/**
     * @param {?} __0
     * @return {?}
     */
    ([namespaceAndName, value]) => {
        const [ns, name] = splitNamespace(namespaceAndName);
        return [ns, name, value];
    }))));
    componentRendererType = resolveRendererType2(componentRendererType);
    if (componentView) {
        flags |= 33554432 /* ComponentView */;
    }
    flags |= 1 /* TypeElement */;
    return {
        // will bet set by the view definition
        nodeIndex: -1,
        parent: null,
        renderParent: null,
        bindingIndex: -1,
        outputIndex: -1,
        // regular values
        checkIndex,
        flags,
        childFlags: 0,
        directChildFlags: 0,
        childMatchedQueries: 0, matchedQueries, matchedQueryIds, references, ngContentIndex, childCount,
        bindings: bindingDefs,
        bindingFlags: calcBindingFlags(bindingDefs),
        outputs: outputDefs,
        element: {
            ns,
            name,
            attrs,
            template: null,
            // will bet set by the view definition
            componentProvider: null,
            componentView: componentView || null,
            componentRendererType: componentRendererType,
            publicProviders: null,
            allProviders: null,
            handleEvent: handleEvent || NOOP,
        },
        provider: null,
        text: null,
        query: null,
        ngContent: null
    };
}
/**
 * @param {?} view
 * @param {?} renderHost
 * @param {?} def
 * @return {?}
 */
export function createElement(view, renderHost, def) {
    /** @type {?} */
    const elDef = (/** @type {?} */ (def.element));
    /** @type {?} */
    const rootSelectorOrNode = view.root.selectorOrNode;
    /** @type {?} */
    const renderer = view.renderer;
    /** @type {?} */
    let el;
    if (view.parent || !rootSelectorOrNode) {
        if (elDef.name) {
            el = renderer.createElement(elDef.name, elDef.ns);
        }
        else {
            el = renderer.createComment('');
        }
        /** @type {?} */
        const parentEl = getParentRenderElement(view, renderHost, def);
        if (parentEl) {
            renderer.appendChild(parentEl, el);
        }
    }
    else {
        // when using native Shadow DOM, do not clear the root element contents to allow slot projection
        /** @type {?} */
        const preserveContent = (!!elDef.componentRendererType &&
            elDef.componentRendererType.encapsulation === ViewEncapsulation.ShadowDom);
        el = renderer.selectRootElement(rootSelectorOrNode, preserveContent);
    }
    if (elDef.attrs) {
        for (let i = 0; i < elDef.attrs.length; i++) {
            const [ns, name, value] = elDef.attrs[i];
            renderer.setAttribute(el, name, value, ns);
        }
    }
    return el;
}
/**
 * @param {?} view
 * @param {?} compView
 * @param {?} def
 * @param {?} el
 * @return {?}
 */
export function listenToElementOutputs(view, compView, def, el) {
    for (let i = 0; i < def.outputs.length; i++) {
        /** @type {?} */
        const output = def.outputs[i];
        /** @type {?} */
        const handleEventClosure = renderEventHandlerClosure(view, def.nodeIndex, elementEventFullName(output.target, output.eventName));
        /** @type {?} */
        let listenTarget = output.target;
        /** @type {?} */
        let listenerView = view;
        if (output.target === 'component') {
            listenTarget = null;
            listenerView = compView;
        }
        /** @type {?} */
        const disposable = (/** @type {?} */ (listenerView.renderer.listen(listenTarget || el, output.eventName, handleEventClosure)));
        (/** @type {?} */ (view.disposables))[def.outputIndex + i] = disposable;
    }
}
/**
 * @param {?} view
 * @param {?} index
 * @param {?} eventName
 * @return {?}
 */
function renderEventHandlerClosure(view, index, eventName) {
    return (/**
     * @param {?} event
     * @return {?}
     */
    (event) => dispatchEvent(view, index, eventName, event));
}
/**
 * @param {?} view
 * @param {?} def
 * @param {?} v0
 * @param {?} v1
 * @param {?} v2
 * @param {?} v3
 * @param {?} v4
 * @param {?} v5
 * @param {?} v6
 * @param {?} v7
 * @param {?} v8
 * @param {?} v9
 * @return {?}
 */
export function checkAndUpdateElementInline(view, def, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9) {
    /** @type {?} */
    const bindLen = def.bindings.length;
    /** @type {?} */
    let changed = false;
    if (bindLen > 0 && checkAndUpdateElementValue(view, def, 0, v0))
        changed = true;
    if (bindLen > 1 && checkAndUpdateElementValue(view, def, 1, v1))
        changed = true;
    if (bindLen > 2 && checkAndUpdateElementValue(view, def, 2, v2))
        changed = true;
    if (bindLen > 3 && checkAndUpdateElementValue(view, def, 3, v3))
        changed = true;
    if (bindLen > 4 && checkAndUpdateElementValue(view, def, 4, v4))
        changed = true;
    if (bindLen > 5 && checkAndUpdateElementValue(view, def, 5, v5))
        changed = true;
    if (bindLen > 6 && checkAndUpdateElementValue(view, def, 6, v6))
        changed = true;
    if (bindLen > 7 && checkAndUpdateElementValue(view, def, 7, v7))
        changed = true;
    if (bindLen > 8 && checkAndUpdateElementValue(view, def, 8, v8))
        changed = true;
    if (bindLen > 9 && checkAndUpdateElementValue(view, def, 9, v9))
        changed = true;
    return changed;
}
/**
 * @param {?} view
 * @param {?} def
 * @param {?} values
 * @return {?}
 */
export function checkAndUpdateElementDynamic(view, def, values) {
    /** @type {?} */
    let changed = false;
    for (let i = 0; i < values.length; i++) {
        if (checkAndUpdateElementValue(view, def, i, values[i]))
            changed = true;
    }
    return changed;
}
/**
 * @param {?} view
 * @param {?} def
 * @param {?} bindingIdx
 * @param {?} value
 * @return {?}
 */
function checkAndUpdateElementValue(view, def, bindingIdx, value) {
    if (!checkAndUpdateBinding(view, def, bindingIdx, value)) {
        return false;
    }
    /** @type {?} */
    const binding = def.bindings[bindingIdx];
    /** @type {?} */
    const elData = asElementData(view, def.nodeIndex);
    /** @type {?} */
    const renderNode = elData.renderElement;
    /** @type {?} */
    const name = (/** @type {?} */ (binding.name));
    switch (binding.flags & 15 /* Types */) {
        case 1 /* TypeElementAttribute */:
            setElementAttribute(view, binding, renderNode, binding.ns, name, value);
            break;
        case 2 /* TypeElementClass */:
            setElementClass(view, renderNode, name, value);
            break;
        case 4 /* TypeElementStyle */:
            setElementStyle(view, binding, renderNode, name, value);
            break;
        case 8 /* TypeProperty */:
            /** @type {?} */
            const bindView = (def.flags & 33554432 /* ComponentView */ &&
                binding.flags & 32 /* SyntheticHostProperty */) ?
                elData.componentView :
                view;
            setElementProperty(bindView, binding, renderNode, name, value);
            break;
    }
    return true;
}
/**
 * @param {?} view
 * @param {?} binding
 * @param {?} renderNode
 * @param {?} ns
 * @param {?} name
 * @param {?} value
 * @return {?}
 */
function setElementAttribute(view, binding, renderNode, ns, name, value) {
    /** @type {?} */
    const securityContext = binding.securityContext;
    /** @type {?} */
    let renderValue = securityContext ? view.root.sanitizer.sanitize(securityContext, value) : value;
    renderValue = renderValue != null ? renderValue.toString() : null;
    /** @type {?} */
    const renderer = view.renderer;
    if (value != null) {
        renderer.setAttribute(renderNode, name, renderValue, ns);
    }
    else {
        renderer.removeAttribute(renderNode, name, ns);
    }
}
/**
 * @param {?} view
 * @param {?} renderNode
 * @param {?} name
 * @param {?} value
 * @return {?}
 */
function setElementClass(view, renderNode, name, value) {
    /** @type {?} */
    const renderer = view.renderer;
    if (value) {
        renderer.addClass(renderNode, name);
    }
    else {
        renderer.removeClass(renderNode, name);
    }
}
/**
 * @param {?} view
 * @param {?} binding
 * @param {?} renderNode
 * @param {?} name
 * @param {?} value
 * @return {?}
 */
function setElementStyle(view, binding, renderNode, name, value) {
    /** @type {?} */
    let renderValue = view.root.sanitizer.sanitize(SecurityContext.STYLE, (/** @type {?} */ (value)));
    if (renderValue != null) {
        renderValue = renderValue.toString();
        /** @type {?} */
        const unit = binding.suffix;
        if (unit != null) {
            renderValue = renderValue + unit;
        }
    }
    else {
        renderValue = null;
    }
    /** @type {?} */
    const renderer = view.renderer;
    if (renderValue != null) {
        renderer.setStyle(renderNode, name, renderValue);
    }
    else {
        renderer.removeStyle(renderNode, name);
    }
}
/**
 * @param {?} view
 * @param {?} binding
 * @param {?} renderNode
 * @param {?} name
 * @param {?} value
 * @return {?}
 */
function setElementProperty(view, binding, renderNode, name, value) {
    /** @type {?} */
    const securityContext = binding.securityContext;
    /** @type {?} */
    let renderValue = securityContext ? view.root.sanitizer.sanitize(securityContext, value) : value;
    view.renderer.setProperty(renderNode, name, renderValue);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZWxlbWVudC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3ZpZXcvZWxlbWVudC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7QUFRQSxPQUFPLEVBQUMsaUJBQWlCLEVBQUMsTUFBTSxrQkFBa0IsQ0FBQztBQUVuRCxPQUFPLEVBQUMsZUFBZSxFQUFDLE1BQU0sMEJBQTBCLENBQUM7QUFFekQsT0FBTyxFQUEwSixhQUFhLEVBQUMsTUFBTSxTQUFTLENBQUM7QUFDL0wsT0FBTyxFQUFDLElBQUksRUFBRSxnQkFBZ0IsRUFBRSxxQkFBcUIsRUFBRSxhQUFhLEVBQUUsb0JBQW9CLEVBQUUsc0JBQXNCLEVBQUUsaUJBQWlCLEVBQUUsb0JBQW9CLEVBQUUsc0JBQXNCLEVBQUUsY0FBYyxFQUFDLE1BQU0sUUFBUSxDQUFDOzs7Ozs7Ozs7O0FBRW5OLE1BQU0sVUFBVSxTQUFTLENBQ3JCLEtBQWdCLEVBQUUsaUJBQTZELEVBQy9FLGNBQTZCLEVBQUUsVUFBa0IsRUFBRSxXQUF5QyxFQUM1RixlQUF1QztJQUN6QyxLQUFLLHVCQUF5QixDQUFDO1VBQ3pCLEVBQUMsY0FBYyxFQUFFLFVBQVUsRUFBRSxlQUFlLEVBQUMsR0FBRyxzQkFBc0IsQ0FBQyxpQkFBaUIsQ0FBQzs7VUFDekYsUUFBUSxHQUFHLGVBQWUsQ0FBQyxDQUFDLENBQUMsaUJBQWlCLENBQUMsZUFBZSxDQUFDLENBQUMsQ0FBQyxDQUFDLElBQUk7SUFFNUUsT0FBTzs7UUFFTCxTQUFTLEVBQUUsQ0FBQyxDQUFDO1FBQ2IsTUFBTSxFQUFFLElBQUk7UUFDWixZQUFZLEVBQUUsSUFBSTtRQUNsQixZQUFZLEVBQUUsQ0FBQyxDQUFDO1FBQ2hCLFdBQVcsRUFBRSxDQUFDLENBQUM7UUFDZixpQkFBaUI7UUFDakIsS0FBSztRQUNMLFVBQVUsRUFBRSxDQUFDLENBQUM7UUFDZCxVQUFVLEVBQUUsQ0FBQztRQUNi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SSxDQUFDLFFBQVEsQ0FBQyxXQUFXLENBQUMsVUFBVSxFQUFFLElBQUksRUFBRSxXQUFXLENBQUMsQ0FBQztBQUMzRCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1ZpZXdFbmNhcHN1bGF0aW9ufSBmcm9tICcuLi9tZXRhZGF0YS92aWV3JztcbmltcG9ydCB7UmVuZGVyZXJUeXBlMn0gZnJvbSAnLi4vcmVuZGVyL2FwaSc7XG5pbXBvcnQge1NlY3VyaXR5Q29udGV4dH0gZnJvbSAnLi4vc2FuaXRpemF0aW9uL3NlY3VyaXR5JztcblxuaW1wb3J0IHtCaW5kaW5nRGVmLCBCaW5kaW5nRmxhZ3MsIEVsZW1lbnREYXRhLCBFbGVtZW50SGFuZGxlRXZlbnRGbiwgTm9kZURlZiwgTm9kZUZsYWdzLCBPdXRwdXREZWYsIE91dHB1dFR5cGUsIFF1ZXJ5VmFsdWVUeXBlLCBWaWV3RGF0YSwgVmlld0RlZmluaXRpb25GYWN0b3J5LCBhc0VsZW1lbnREYXRhfSBmcm9tICcuL3R5cGVzJztcbmltcG9ydCB7Tk9PUCwgY2FsY0JpbmRpbmdGbGFncywgY2hlY2tBbmRVcGRhdGVCaW5kaW5nLCBkaXNwYXRjaEV2ZW50LCBlbGVtZW50RXZlbnRGdWxsTmFtZSwgZ2V0UGFyZW50UmVuZGVyRWxlbWVudCwgcmVzb2x2ZURlZmluaXRpb24sIHJlc29sdmVSZW5kZXJlclR5cGUyLCBzcGxpdE1hdGNoZWRRdWVyaWVzRHNsLCBzcGxpdE5hbWVzcGFjZX0gZnJvbSAnLi91dGlsJztcblxuZXhwb3J0IGZ1bmN0aW9uIGFuY2hvckRlZihcbiAgICBmbGFnczogTm9kZUZsYWdzLCBtYXRjaGVkUXVlcmllc0RzbDogbnVsbCB8IFtzdHJpbmcgfCBudW1iZXIsIFF1ZXJ5VmFsdWVUeXBlXVtdLFxuICAgIG5nQ29udGVudEluZGV4OiBudWxsIHwgbnVtYmVyLCBjaGlsZENvdW50OiBudW1iZXIsIGhhbmRsZUV2ZW50PzogbnVsbCB8IEVsZW1lbnRIYW5kbGVFdmVudEZuLFxuICAgIHRlbXBsYXRlRmFjdG9yeT86IFZpZXdEZWZpbml0aW9uRmFjdG9yeSk6IE5vZGVEZWYge1xuICBmbGFncyB8PSBOb2RlRmxhZ3MuVHlwZUVsZW1lbnQ7XG4gIGNvbnN0IHttYXRjaGVkUXVlcmllcywgcmVmZXJlbmNlcywgbWF0Y2hlZFF1ZXJ5SWRzfSA9IHNwbGl0TWF0Y2hlZFF1ZXJpZXNEc2wobWF0Y2hlZFF1ZXJpZXNEc2wpO1xuICBjb25zdCB0ZW1wbGF0ZSA9IHRlbXBsYXRlRmFjdG9yeSA/IHJlc29sdmVEZWZpbml0aW9uKHRlbXBsYXRlRmFjdG9yeSkgOiBudWxsO1xuXG4gIHJldHVybiB7XG4gICAgLy8gd2lsbCBiZXQgc2V0IGJ5IHRoZSB2aWV3IGRlZmluaXRpb25cbiAgICBub2RlSW5kZXg6IC0xLFxuICAgIHBhcmVudDogbnVsbCxcbiAgICByZW5kZXJQYXJlbnQ6IG51bGwsXG4gICAgYmluZGluZ0luZGV4OiAtMSxcbiAgICBvdXRwdXRJbmRleDogLTEsXG4gICAgLy8gcmVndWxhciB2YWx1ZXNcbiAgICBmbGFncyxcbiAgICBjaGVja0luZGV4OiAtMSxcbiAgICBjaGlsZEZsYWdzOiAwLFxuICAgIGRpcmVjdENoaWxkRmxhZ3M6IDAsXG4gICAgY2hpbGRNYXRjaGVkUXVlcmllczogMCwgbWF0Y2hlZFF1ZXJpZXMsIG1hdGNoZWRRdWVyeUlkcywgcmVmZXJlbmNlcywgbmdDb250ZW50SW5kZXgsIGNoaWxkQ291bnQsXG4gICAgYmluZGluZ3M6IFtdLFxuICAgIGJpbmRpbmdGbGFnczogMCxcbiAgICBvdXRwdXRzOiBbXSxcbiAgICBlbGVtZW50OiB7XG4gICAgICBuczogbnVsbCxcbiAgICAgIG5hbWU6IG51bGwsXG4gICAgICBhdHRyczogbnVsbCwgdGVtcGxhdGUsXG4gICAgICBjb21wb25lbnRQcm92aWRlcjogbnVsbCxcbiAgICAgIGNvbXBvbmVudFZpZXc6IG51bGwsXG4gICAgICBjb21wb25lbnRSZW5kZXJlclR5cGU6IG51bGwsXG4gICAgICBwdWJsaWNQcm92aWRlcnM6IG51bGwsXG4gICAgICBhbGxQcm92aWRlcnM6IG51bGwsXG4gICAgICBoYW5kbGVFdmVudDogaGFuZGxlRXZlbnQgfHwgTk9PUFxuICAgIH0sXG4gICAgcHJvdmlkZXI6IG51bGwsXG4gICAgdGV4dDogbnVsbCxcbiAgICBxdWVyeTogbnVsbCxcbiAgICBuZ0NvbnRlbnQ6IG51bGxcbiAgfTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGVsZW1lbnREZWYoXG4gICAgY2hlY2tJbmRleDogbnVtYmVyLCBmbGFnczogTm9kZUZsYWdzLFxuICAgIG1hdGNoZWRRdWVyaWVzRHNsOiBudWxsIHwgW3N0cmluZyB8IG51bWJlciwgUXVlcnlWYWx1ZVR5cGVdW10sIG5nQ29udGVudEluZGV4OiBudWxsIHwgbnVtYmVyLFxuICAgIGNoaWxkQ291bnQ6IG51bWJlciwgbmFtZXNwYWNlQW5kTmFtZTogc3RyaW5nIHwgbnVsbCwgZml4ZWRBdHRyczogbnVsbCB8IFtzdHJpbmcsIHN0cmluZ11bXSA9IFtdLFxuICAgIGJpbmRpbmdzPzogbnVsbCB8IFtCaW5kaW5nRmxhZ3MsIHN0cmluZywgc3RyaW5nIHwgU2VjdXJpdHlDb250ZXh0IHwgbnVsbF1bXSxcbiAgICBvdXRwdXRzPzogbnVsbCB8IChbc3RyaW5nLCBzdHJpbmddKVtdLCBoYW5kbGVFdmVudD86IG51bGwgfCBFbGVtZW50SGFuZGxlRXZlbnRGbixcbiAgICBjb21wb25lbnRWaWV3PzogbnVsbCB8IFZpZXdEZWZpbml0aW9uRmFjdG9yeSxcbiAgICBjb21wb25lbnRSZW5kZXJlclR5cGU/OiBSZW5kZXJlclR5cGUyIHwgbnVsbCk6IE5vZGVEZWYge1xuICBpZiAoIWhhbmRsZUV2ZW50KSB7XG4gICAgaGFuZGxlRXZlbnQgPSBOT09QO1xuICB9XG4gIGNvbnN0IHttYXRjaGVkUXVlcmllcywgcmVmZXJlbmNlcywgbWF0Y2hlZFF1ZXJ5SWRzfSA9IHNwbGl0TWF0Y2hlZFF1ZXJpZXNEc2wobWF0Y2hlZFF1ZXJpZXNEc2wpO1xuICBsZXQgbnM6IHN0cmluZyA9IG51bGwgITtcbiAgbGV0IG5hbWU6IHN0cmluZyA9IG51bGwgITtcbiAgaWYgKG5hbWVzcGFjZUFuZE5hbWUpIHtcbiAgICBbbnMsIG5hbWVdID0gc3BsaXROYW1lc3BhY2UobmFtZXNwYWNlQW5kTmFtZSk7XG4gIH1cbiAgYmluZGluZ3MgPSBiaW5kaW5ncyB8fCBbXTtcbiAgY29uc3QgYmluZGluZ0RlZnM6IEJpbmRpbmdEZWZbXSA9IFtdO1xuICBmb3IgKGxldCBpID0gMDsgaSA8IGJpbmRpbmdzLmxlbmd0aDsgaSsrKSB7XG4gICAgY29uc3QgW2JpbmRpbmdGbGFncywgbmFtZXNwYWNlQW5kTmFtZSwgc3VmZml4T3JTZWN1cml0eUNvbnRleHRdID0gYmluZGluZ3NbaV07XG5cbiAgICBjb25zdCBbbnMsIG5hbWVdID0gc3BsaXROYW1lc3BhY2UobmFtZXNwYWNlQW5kTmFtZSk7XG4gICAgbGV0IHNlY3VyaXR5Q29udGV4dDogU2VjdXJpdHlDb250ZXh0ID0gdW5kZWZpbmVkICE7XG4gICAgbGV0IHN1ZmZpeDogc3RyaW5nID0gdW5kZWZpbmVkICE7XG4gICAgc3dpdGNoIChiaW5kaW5nRmxhZ3MgJiBCaW5kaW5nRmxhZ3MuVHlwZXMpIHtcbiAgICAgIGNhc2UgQmluZGluZ0ZsYWdzLlR5cGVFbGVtZW50U3R5bGU6XG4gICAgICAgIHN1ZmZpeCA9IDxzdHJpbmc+c3VmZml4T3JTZWN1cml0eUNvbnRleHQ7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBCaW5kaW5nRmxhZ3MuVHlwZUVsZW1lbnRBdHRyaWJ1dGU6XG4gICAgICBjYXNlIEJpbmRpbmdGbGFncy5UeXBlUHJvcGVydHk6XG4gICAgICAgIHNlY3VyaXR5Q29udGV4dCA9IDxTZWN1cml0eUNvbnRleHQ+c3VmZml4T3JTZWN1cml0eUNvbnRleHQ7XG4gICAgICAgIGJyZWFrO1xuICAgIH1cbiAgICBiaW5kaW5nRGVmc1tpXSA9XG4gICAgICAgIHtmbGFnczogYmluZGluZ0ZsYWdzLCBucywgbmFtZSwgbm9uTWluaWZpZWROYW1lOiBuYW1lLCBzZWN1cml0eUNvbnRleHQsIHN1ZmZpeH07XG4gIH1cbiAgb3V0cHV0cyA9IG91dHB1dHMgfHwgW107XG4gIGNvbnN0IG91dHB1dERlZnM6IE91dHB1dERlZltdID0gW107XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgb3V0cHV0cy5sZW5ndGg7IGkrKykge1xuICAgIGNvbnN0IFt0YXJnZXQsIGV2ZW50TmFtZV0gPSBvdXRwdXRzW2ldO1xuICAgIG91dHB1dERlZnNbaV0gPSB7XG4gICAgICB0eXBlOiBPdXRwdXRUeXBlLkVsZW1lbnRPdXRwdXQsXG4gICAgICB0YXJnZXQ6IDxhbnk+dGFyZ2V0LCBldmVudE5hbWUsXG4gICAgICBwcm9wTmFtZTogbnVsbFxuICAgIH07XG4gIH1cbiAgZml4ZWRBdHRycyA9IGZpeGVkQXR0cnMgfHwgW107XG4gIGNvbnN0IGF0dHJzID0gPFtzdHJpbmcsIHN0cmluZywgc3RyaW5nXVtdPmZpeGVkQXR0cnMubWFwKChbbmFtZXNwYWNlQW5kTmFtZSwgdmFsdWVdKSA9PiB7XG4gICAgY29uc3QgW25zLCBuYW1lXSA9IHNwbGl0TmFtZXNwYWNlKG5hbWVzcGFjZUFuZE5hbWUpO1xuICAgIHJldHVybiBbbnMsIG5hbWUsIHZhbHVlXTtcbiAgfSk7XG4gIGNvbXBvbmVudFJlbmRlcmVyVHlwZSA9IHJlc29sdmVSZW5kZXJlclR5cGUyKGNvbXBvbmVudFJlbmRlcmVyVHlwZSk7XG4gIGlmIChjb21wb25lbnRWaWV3KSB7XG4gICAgZmxhZ3MgfD0gTm9kZUZsYWdzLkNvbXBvbmVudFZpZXc7XG4gIH1cbiAgZmxhZ3MgfD0gTm9kZUZsYWdzLlR5cGVFbGVtZW50O1xuICByZXR1cm4ge1xuICAgIC8vIHdpbGwgYmV0IHNldCBieSB0aGUgdmlldyBkZWZpbml0aW9uXG4gICAgbm9kZUluZGV4OiAtMSxcbiAgICBwYXJlbnQ6IG51bGwsXG4gICAgcmVuZGVyUGFyZW50OiBudWxsLFxuICAgIGJpbmRpbmdJbmRleDogLTEsXG4gICAgb3V0cHV0SW5kZXg6IC0xLFxuICAgIC8vIHJlZ3VsYXIgdmFsdWVzXG4gICAgY2hlY2tJbmRleCxcbiAgICBmbGFncyxcbiAgICBjaGlsZEZsYWdzOiAwLFxuICAgIGRpcmVjdENoaWxkRmxhZ3M6IDAsXG4gICAgY2hpbGRNYXRjaGVkUXVlcmllczogMCwgbWF0Y2hlZFF1ZXJpZXMsIG1hdGNoZWRRdWVyeUlkcywgcmVmZXJlbmNlcywgbmdDb250ZW50SW5kZXgsIGNoaWxkQ291bnQsXG4gICAgYmluZGluZ3M6IGJpbmRpbmdEZWZzLFxuICAgIGJpbmRpbmdGbGFnczogY2FsY0JpbmRpbmdGbGFncyhiaW5kaW5nRGVmcyksXG4gICAgb3V0cHV0czogb3V0cHV0RGVmcyxcbiAgICBlbGVtZW50OiB7XG4gICAgICBucyxcbiAgICAgIG5hbWUsXG4gICAgICBhdHRycyxcbiAgICAgIHRlbXBsYXRlOiBudWxsLFxuICAgICAgLy8gd2lsbCBiZXQgc2V0IGJ5IHRoZSB2aWV3IGRlZmluaXRpb25cbiAgICAgIGNvbXBvbmVudFByb3ZpZGVyOiBudWxsLFxuICAgICAgY29tcG9uZW50VmlldzogY29tcG9uZW50VmlldyB8fCBudWxsLFxuICAgICAgY29tcG9uZW50UmVuZGVyZXJUeXBlOiBjb21wb25lbnRSZW5kZXJlclR5cGUsXG4gICAgICBwdWJsaWNQcm92aWRlcnM6IG51bGwsXG4gICAgICBhbGxQcm92aWRlcnM6IG51bGwsXG4gICAgICBoYW5kbGVFdmVudDogaGFuZGxlRXZlbnQgfHwgTk9PUCxcbiAgICB9LFxuICAgIHByb3ZpZGVyOiBudWxsLFxuICAgIHRleHQ6IG51bGwsXG4gICAgcXVlcnk6IG51bGwsXG4gICAgbmdDb250ZW50OiBudWxsXG4gIH07XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBjcmVhdGVFbGVtZW50KHZpZXc6IFZpZXdEYXRhLCByZW5kZXJIb3N0OiBhbnksIGRlZjogTm9kZURlZik6IEVsZW1lbnREYXRhIHtcbiAgY29uc3QgZWxEZWYgPSBkZWYuZWxlbWVudCAhO1xuICBjb25zdCByb290U2VsZWN0b3JPck5vZGUgPSB2aWV3LnJvb3Quc2VsZWN0b3JPck5vZGU7XG4gIGNvbnN0IHJlbmRlcmVyID0gdmlldy5yZW5kZXJlcjtcbiAgbGV0IGVsOiBhbnk7XG4gIGlmICh2aWV3LnBhcmVudCB8fCAhcm9vdFNlbGVjdG9yT3JOb2RlKSB7XG4gICAgaWYgKGVsRGVmLm5hbWUpIHtcbiAgICAgIGVsID0gcmVuZGVyZXIuY3JlYXRlRWxlbWVudChlbERlZi5uYW1lLCBlbERlZi5ucyk7XG4gICAgfSBlbHNlIHtcbiAgICAgIGVsID0gcmVuZGVyZXIuY3JlYXRlQ29tbWVudCgnJyk7XG4gICAgfVxuICAgIGNvbnN0IHBhcmVudEVsID0gZ2V0UGFyZW50UmVuZGVyRWxlbWVudCh2aWV3LCByZW5kZXJIb3N0LCBkZWYpO1xuICAgIGlmIChwYXJlbnRFbCkge1xuICAgICAgcmVuZGVyZXIuYXBwZW5kQ2hpbGQocGFyZW50RWwsIGVsKTtcbiAgICB9XG4gIH0gZWxzZSB7XG4gICAgLy8gd2hlbiB1c2luZyBuYXRpdmUgU2hhZG93IERPTSwgZG8gbm90IGNsZWFyIHRoZSByb290IGVsZW1lbnQgY29udGVudHMgdG8gYWxsb3cgc2xvdCBwcm9qZWN0aW9uXG4gICAgY29uc3QgcHJlc2VydmVDb250ZW50ID1cbiAgICAgICAgKCEhZWxEZWYuY29tcG9uZW50UmVuZGVyZXJUeXBlICYmXG4gICAgICAgICBlbERlZi5jb21wb25lbnRSZW5kZXJlclR5cGUuZW5jYXBzdWxhdGlvbiA9PT0gVmlld0VuY2Fwc3VsYXRpb24uU2hhZG93RG9tKTtcbiAgICBlbCA9IHJlbmRlcmVyLnNlbGVjdFJvb3RFbGVtZW50KHJvb3RTZWxlY3Rvck9yTm9kZSwgcHJlc2VydmVDb250ZW50KTtcbiAgfVxuICBpZiAoZWxEZWYuYXR0cnMpIHtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IGVsRGVmLmF0dHJzLmxlbmd0aDsgaSsrKSB7XG4gICAgICBjb25zdCBbbnMsIG5hbWUsIHZhbHVlXSA9IGVsRGVmLmF0dHJzW2ldO1xuICAgICAgcmVuZGVyZXIuc2V0QXR0cmlidXRlKGVsLCBuYW1lLCB2YWx1ZSwgbnMpO1xuICAgIH1cbiAgfVxuICByZXR1cm4gZWw7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBsaXN0ZW5Ub0VsZW1lbnRPdXRwdXRzKHZpZXc6IFZpZXdEYXRhLCBjb21wVmlldzogVmlld0RhdGEsIGRlZjogTm9kZURlZiwgZWw6IGFueSkge1xuICBmb3IgKGxldCBpID0gMDsgaSA8IGRlZi5vdXRwdXRzLmxlbmd0aDsgaSsrKSB7XG4gICAgY29uc3Qgb3V0cHV0ID0gZGVmLm91dHB1dHNbaV07XG4gICAgY29uc3QgaGFuZGxlRXZlbnRDbG9zdXJlID0gcmVuZGVyRXZlbnRIYW5kbGVyQ2xvc3VyZShcbiAgICAgICAgdmlldywgZGVmLm5vZGVJbmRleCwgZWxlbWVudEV2ZW50RnVsbE5hbWUob3V0cHV0LnRhcmdldCwgb3V0cHV0LmV2ZW50TmFtZSkpO1xuICAgIGxldCBsaXN0ZW5UYXJnZXQ6ICd3aW5kb3cnfCdkb2N1bWVudCd8J2JvZHknfCdjb21wb25lbnQnfG51bGwgPSBvdXRwdXQudGFyZ2V0O1xuICAgIGxldCBsaXN0ZW5lclZpZXcgPSB2aWV3O1xuICAgIGlmIChvdXRwdXQudGFyZ2V0ID09PSAnY29tcG9uZW50Jykge1xuICAgICAgbGlzdGVuVGFyZ2V0ID0gbnVsbDtcbiAgICAgIGxpc3RlbmVyVmlldyA9IGNvbXBWaWV3O1xuICAgIH1cbiAgICBjb25zdCBkaXNwb3NhYmxlID1cbiAgICAgICAgPGFueT5saXN0ZW5lclZpZXcucmVuZGVyZXIubGlzdGVuKGxpc3RlblRhcmdldCB8fCBlbCwgb3V0cHV0LmV2ZW50TmFtZSwgaGFuZGxlRXZlbnRDbG9zdXJlKTtcbiAgICB2aWV3LmRpc3Bvc2FibGVzICFbZGVmLm91dHB1dEluZGV4ICsgaV0gPSBkaXNwb3NhYmxlO1xuICB9XG59XG5cbmZ1bmN0aW9uIHJlbmRlckV2ZW50SGFuZGxlckNsb3N1cmUodmlldzogVmlld0RhdGEsIGluZGV4OiBudW1iZXIsIGV2ZW50TmFtZTogc3RyaW5nKSB7XG4gIHJldHVybiAoZXZlbnQ6IGFueSkgPT4gZGlzcGF0Y2hFdmVudCh2aWV3LCBpbmRleCwgZXZlbnROYW1lLCBldmVudCk7XG59XG5cblxuZXhwb3J0IGZ1bmN0aW9uIGNoZWNrQW5kVXBkYXRlRWxlbWVudElubGluZShcbiAgICB2aWV3OiBWaWV3RGF0YSwgZGVmOiBOb2RlRGVmLCB2MDogYW55LCB2MTogYW55LCB2MjogYW55LCB2MzogYW55LCB2NDogYW55LCB2NTogYW55LCB2NjogYW55LFxuICAgIHY3OiBhbnksIHY4OiBhbnksIHY5OiBhbnkpOiBib29sZWFuIHtcbiAgY29uc3QgYmluZExlbiA9IGRlZi5iaW5kaW5ncy5sZW5ndGg7XG4gIGxldCBjaGFuZ2VkID0gZmFsc2U7XG4gIGlmIChiaW5kTGVuID4gMCAmJiBjaGVja0FuZFVwZGF0ZUVsZW1lbnRWYWx1ZSh2aWV3LCBkZWYsIDAsIHYwKSkgY2hhbmdlZCA9IHRydWU7XG4gIGlmIChiaW5kTGVuID4gMSAmJiBjaGVja0FuZFVwZGF0ZUVsZW1lbnRWYWx1ZSh2aWV3LCBkZWYsIDEsIHYxKSkgY2hhbmdlZCA9IHRydWU7XG4gIGlmIChiaW5kTGVuID4gMiAmJiBjaGVja0FuZFVwZGF0ZUVsZW1lbnRWYWx1ZSh2aWV3LCBkZWYsIDIsIHYyKSkgY2hhbmdlZCA9IHRydWU7XG4gIGlmIChiaW5kTGVuID4gMyAmJiBjaGVja0FuZFVwZGF0ZUVsZW1lbnRWYWx1ZSh2aWV3LCBkZWYsIDMsIHYzKSkgY2hhbmdlZCA9IHRydWU7XG4gIGlmIChiaW5kTGVuID4gNCAmJiBjaGVja0FuZFVwZGF0ZUVsZW1lbnRWYWx1ZSh2aWV3LCBkZWYsIDQsIHY0KSkgY2hhbmdlZCA9IHRydWU7XG4gIGlmIChiaW5kTGVuID4gNSAmJiBjaGVja0FuZFVwZGF0ZUVsZW1lbnRWYWx1ZSh2aWV3LCBkZWYsIDUsIHY1KSkgY2hhbmdlZCA9IHRydWU7XG4gIGlmIChiaW5kTGVuID4gNiAmJiBjaGVja0FuZFVwZGF0ZUVsZW1lbnRWYWx1ZSh2aWV3LCBkZWYsIDYsIHY2KSkgY2hhbmdlZCA9IHRydWU7XG4gIGlmIChiaW5kTGVuID4gNyAmJiBjaGVja0FuZFVwZGF0ZUVsZW1lbnRWYWx1ZSh2aWV3LCBkZWYsIDcsIHY3KSkgY2hhbmdlZCA9IHRydWU7XG4gIGlmIChiaW5kTGVuID4gOCAmJiBjaGVja0FuZFVwZGF0ZUVsZW1lbnRWYWx1ZSh2aWV3LCBkZWYsIDgsIHY4KSkgY2hhbmdlZCA9IHRydWU7XG4gIGlmIChiaW5kTGVuID4gOSAmJiBjaGVja0FuZFVwZGF0ZUVsZW1lbnRWYWx1ZSh2aWV3LCBkZWYsIDksIHY5KSkgY2hhbmdlZCA9IHRydWU7XG4gIHJldHVybiBjaGFuZ2VkO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gY2hlY2tBbmRVcGRhdGVFbGVtZW50RHluYW1pYyh2aWV3OiBWaWV3RGF0YSwgZGVmOiBOb2RlRGVmLCB2YWx1ZXM6IGFueVtdKTogYm9vbGVhbiB7XG4gIGxldCBjaGFuZ2VkID0gZmFsc2U7XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgdmFsdWVzLmxlbmd0aDsgaSsrKSB7XG4gICAgaWYgKGNoZWNrQW5kVXBkYXRlRWxlbWVudFZhbHVlKHZpZXcsIGRlZiwgaSwgdmFsdWVzW2ldKSkgY2hhbmdlZCA9IHRydWU7XG4gIH1cbiAgcmV0dXJuIGNoYW5nZWQ7XG59XG5cbmZ1bmN0aW9uIGNoZWNrQW5kVXBkYXRlRWxlbWVudFZhbHVlKHZpZXc6IFZpZXdEYXRhLCBkZWY6IE5vZGVEZWYsIGJpbmRpbmdJZHg6IG51bWJlciwgdmFsdWU6IGFueSkge1xuICBpZiAoIWNoZWNrQW5kVXBkYXRlQmluZGluZyh2aWV3LCBkZWYsIGJpbmRpbmdJZHgsIHZhbHVlKSkge1xuICAgIHJldHVybiBmYWxzZTtcbiAgfVxuICBjb25zdCBiaW5kaW5nID0gZGVmLmJpbmRpbmdzW2JpbmRpbmdJZHhdO1xuICBjb25zdCBlbERhdGEgPSBhc0VsZW1lbnREYXRhKHZpZXcsIGRlZi5ub2RlSW5kZXgpO1xuICBjb25zdCByZW5kZXJOb2RlID0gZWxEYXRhLnJlbmRlckVsZW1lbnQ7XG4gIGNvbnN0IG5hbWUgPSBiaW5kaW5nLm5hbWUgITtcbiAgc3dpdGNoIChiaW5kaW5nLmZsYWdzICYgQmluZGluZ0ZsYWdzLlR5cGVzKSB7XG4gICAgY2FzZSBCaW5kaW5nRmxhZ3MuVHlwZUVsZW1lbnRBdHRyaWJ1dGU6XG4gICAgICBzZXRFbGVtZW50QXR0cmlidXRlKHZpZXcsIGJpbmRpbmcsIHJlbmRlck5vZGUsIGJpbmRpbmcubnMsIG5hbWUsIHZhbHVlKTtcbiAgICAgIGJyZWFrO1xuICAgIGNhc2UgQmluZGluZ0ZsYWdzLlR5cGVFbGVtZW50Q2xhc3M6XG4gICAgICBzZXRFbGVtZW50Q2xhc3ModmlldywgcmVuZGVyTm9kZSwgbmFtZSwgdmFsdWUpO1xuICAgICAgYnJlYWs7XG4gICAgY2FzZSBCaW5kaW5nRmxhZ3MuVHlwZUVsZW1lbnRTdHlsZTpcbiAgICAgIHNldEVsZW1lbnRTdHlsZSh2aWV3LCBiaW5kaW5nLCByZW5kZXJOb2RlLCBuYW1lLCB2YWx1ZSk7XG4gICAgICBicmVhaztcbiAgICBjYXNlIEJpbmRpbmdGbGFncy5UeXBlUHJvcGVydHk6XG4gICAgICBjb25zdCBiaW5kVmlldyA9IChkZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuQ29tcG9uZW50VmlldyAmJlxuICAgICAgICAgICAgICAgICAgICAgICAgYmluZGluZy5mbGFncyAmIEJpbmRpbmdGbGFncy5TeW50aGV0aWNIb3N0UHJvcGVydHkpID9cbiAgICAgICAgICBlbERhdGEuY29tcG9uZW50VmlldyA6XG4gICAgICAgICAgdmlldztcbiAgICAgIHNldEVsZW1lbnRQcm9wZXJ0eShiaW5kVmlldywgYmluZGluZywgcmVuZGVyTm9kZSwgbmFtZSwgdmFsdWUpO1xuICAgICAgYnJlYWs7XG4gIH1cbiAgcmV0dXJuIHRydWU7XG59XG5cbmZ1bmN0aW9uIHNldEVsZW1lbnRBdHRyaWJ1dGUoXG4gICAgdmlldzogVmlld0RhdGEsIGJpbmRpbmc6IEJpbmRpbmdEZWYsIHJlbmRlck5vZGU6IGFueSwgbnM6IHN0cmluZyB8IG51bGwsIG5hbWU6IHN0cmluZyxcbiAgICB2YWx1ZTogYW55KSB7XG4gIGNvbnN0IHNlY3VyaXR5Q29udGV4dCA9IGJpbmRpbmcuc2VjdXJpdHlDb250ZXh0O1xuICBsZXQgcmVuZGVyVmFsdWUgPSBzZWN1cml0eUNvbnRleHQgPyB2aWV3LnJvb3Quc2FuaXRpemVyLnNhbml0aXplKHNlY3VyaXR5Q29udGV4dCwgdmFsdWUpIDogdmFsdWU7XG4gIHJlbmRlclZhbHVlID0gcmVuZGVyVmFsdWUgIT0gbnVsbCA/IHJlbmRlclZhbHVlLnRvU3RyaW5nKCkgOiBudWxsO1xuICBjb25zdCByZW5kZXJlciA9IHZpZXcucmVuZGVyZXI7XG4gIGlmICh2YWx1ZSAhPSBudWxsKSB7XG4gICAgcmVuZGVyZXIuc2V0QXR0cmlidXRlKHJlbmRlck5vZGUsIG5hbWUsIHJlbmRlclZhbHVlLCBucyk7XG4gIH0gZWxzZSB7XG4gICAgcmVuZGVyZXIucmVtb3ZlQXR0cmlidXRlKHJlbmRlck5vZGUsIG5hbWUsIG5zKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBzZXRFbGVtZW50Q2xhc3ModmlldzogVmlld0RhdGEsIHJlbmRlck5vZGU6IGFueSwgbmFtZTogc3RyaW5nLCB2YWx1ZTogYm9vbGVhbikge1xuICBjb25zdCByZW5kZXJlciA9IHZpZXcucmVuZGVyZXI7XG4gIGlmICh2YWx1ZSkge1xuICAgIHJlbmRlcmVyLmFkZENsYXNzKHJlbmRlck5vZGUsIG5hbWUpO1xuICB9IGVsc2Uge1xuICAgIHJlbmRlcmVyLnJlbW92ZUNsYXNzKHJlbmRlck5vZGUsIG5hbWUpO1xuICB9XG59XG5cbmZ1bmN0aW9uIHNldEVsZW1lbnRTdHlsZShcbiAgICB2aWV3OiBWaWV3RGF0YSwgYmluZGluZzogQmluZGluZ0RlZiwgcmVuZGVyTm9kZTogYW55LCBuYW1lOiBzdHJpbmcsIHZhbHVlOiBhbnkpIHtcbiAgbGV0IHJlbmRlclZhbHVlOiBzdHJpbmd8bnVsbCA9XG4gICAgICB2aWV3LnJvb3Quc2FuaXRpemVyLnNhbml0aXplKFNlY3VyaXR5Q29udGV4dC5TVFlMRSwgdmFsdWUgYXN7fSB8IHN0cmluZyk7XG4gIGlmIChyZW5kZXJWYWx1ZSAhPSBudWxsKSB7XG4gICAgcmVuZGVyVmFsdWUgPSByZW5kZXJWYWx1ZS50b1N0cmluZygpO1xuICAgIGNvbnN0IHVuaXQgPSBiaW5kaW5nLnN1ZmZpeDtcbiAgICBpZiAodW5pdCAhPSBudWxsKSB7XG4gICAgICByZW5kZXJWYWx1ZSA9IHJlbmRlclZhbHVlICsgdW5pdDtcbiAgICB9XG4gIH0gZWxzZSB7XG4gICAgcmVuZGVyVmFsdWUgPSBudWxsO1xuICB9XG4gIGNvbnN0IHJlbmRlcmVyID0gdmlldy5yZW5kZXJlcjtcbiAgaWYgKHJlbmRlclZhbHVlICE9IG51bGwpIHtcbiAgICByZW5kZXJlci5zZXRTdHlsZShyZW5kZXJOb2RlLCBuYW1lLCByZW5kZXJWYWx1ZSk7XG4gIH0gZWxzZSB7XG4gICAgcmVuZGVyZXIucmVtb3ZlU3R5bGUocmVuZGVyTm9kZSwgbmFtZSk7XG4gIH1cbn1cblxuZnVuY3Rpb24gc2V0RWxlbWVudFByb3BlcnR5KFxuICAgIHZpZXc6IFZpZXdEYXRhLCBiaW5kaW5nOiBCaW5kaW5nRGVmLCByZW5kZXJOb2RlOiBhbnksIG5hbWU6IHN0cmluZywgdmFsdWU6IGFueSkge1xuICBjb25zdCBzZWN1cml0eUNvbnRleHQgPSBiaW5kaW5nLnNlY3VyaXR5Q29udGV4dDtcbiAgbGV0IHJlbmRlclZhbHVlID0gc2VjdXJpdHlDb250ZXh0ID8gdmlldy5yb290LnNhbml0aXplci5zYW5pdGl6ZShzZWN1cml0eUNvbnRleHQsIHZhbHVlKSA6IHZhbHVlO1xuICB2aWV3LnJlbmRlcmVyLnNldFByb3BlcnR5KHJlbmRlck5vZGUsIG5hbWUsIHJlbmRlclZhbHVlKTtcbn1cbiJdfQ==