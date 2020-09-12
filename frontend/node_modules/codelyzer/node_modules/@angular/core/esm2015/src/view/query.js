/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/view/query.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ElementRef } from '../linker/element_ref';
import { QueryList } from '../linker/query_list';
import { asElementData, asProviderData, asQueryList } from './types';
import { declaredViewContainer, filterQueryId, isEmbeddedView } from './util';
/**
 * @param {?} flags
 * @param {?} id
 * @param {?} bindings
 * @return {?}
 */
export function queryDef(flags, id, bindings) {
    /** @type {?} */
    let bindingDefs = [];
    for (let propName in bindings) {
        /** @type {?} */
        const bindingType = bindings[propName];
        bindingDefs.push({ propName, bindingType });
    }
    return {
        // will bet set by the view definition
        nodeIndex: -1,
        parent: null,
        renderParent: null,
        bindingIndex: -1,
        outputIndex: -1,
        // regular values
        // TODO(vicb): check
        checkIndex: -1, flags,
        childFlags: 0,
        directChildFlags: 0,
        childMatchedQueries: 0,
        ngContentIndex: -1,
        matchedQueries: {},
        matchedQueryIds: 0,
        references: {},
        childCount: 0,
        bindings: [],
        bindingFlags: 0,
        outputs: [],
        element: null,
        provider: null,
        text: null,
        query: { id, filterId: filterQueryId(id), bindings: bindingDefs },
        ngContent: null
    };
}
/**
 * @return {?}
 */
export function createQuery() {
    return new QueryList();
}
/**
 * @param {?} view
 * @return {?}
 */
export function dirtyParentQueries(view) {
    /** @type {?} */
    const queryIds = view.def.nodeMatchedQueries;
    while (view.parent && isEmbeddedView(view)) {
        /** @type {?} */
        let tplDef = (/** @type {?} */ (view.parentNodeDef));
        view = view.parent;
        // content queries
        /** @type {?} */
        const end = tplDef.nodeIndex + tplDef.childCount;
        for (let i = 0; i <= end; i++) {
            /** @type {?} */
            const nodeDef = view.def.nodes[i];
            if ((nodeDef.flags & 67108864 /* TypeContentQuery */) &&
                (nodeDef.flags & 536870912 /* DynamicQuery */) &&
                ((/** @type {?} */ (nodeDef.query)).filterId & queryIds) === (/** @type {?} */ (nodeDef.query)).filterId) {
                asQueryList(view, i).setDirty();
            }
            if ((nodeDef.flags & 1 /* TypeElement */ && i + nodeDef.childCount < tplDef.nodeIndex) ||
                !(nodeDef.childFlags & 67108864 /* TypeContentQuery */) ||
                !(nodeDef.childFlags & 536870912 /* DynamicQuery */)) {
                // skip elements that don't contain the template element or no query.
                i += nodeDef.childCount;
            }
        }
    }
    // view queries
    if (view.def.nodeFlags & 134217728 /* TypeViewQuery */) {
        for (let i = 0; i < view.def.nodes.length; i++) {
            /** @type {?} */
            const nodeDef = view.def.nodes[i];
            if ((nodeDef.flags & 134217728 /* TypeViewQuery */) && (nodeDef.flags & 536870912 /* DynamicQuery */)) {
                asQueryList(view, i).setDirty();
            }
            // only visit the root nodes
            i += nodeDef.childCount;
        }
    }
}
/**
 * @param {?} view
 * @param {?} nodeDef
 * @return {?}
 */
export function checkAndUpdateQuery(view, nodeDef) {
    /** @type {?} */
    const queryList = asQueryList(view, nodeDef.nodeIndex);
    if (!queryList.dirty) {
        return;
    }
    /** @type {?} */
    let directiveInstance;
    /** @type {?} */
    let newValues = (/** @type {?} */ (undefined));
    if (nodeDef.flags & 67108864 /* TypeContentQuery */) {
        /** @type {?} */
        const elementDef = (/** @type {?} */ ((/** @type {?} */ (nodeDef.parent)).parent));
        newValues = calcQueryValues(view, elementDef.nodeIndex, elementDef.nodeIndex + elementDef.childCount, (/** @type {?} */ (nodeDef.query)), []);
        directiveInstance = asProviderData(view, (/** @type {?} */ (nodeDef.parent)).nodeIndex).instance;
    }
    else if (nodeDef.flags & 134217728 /* TypeViewQuery */) {
        newValues = calcQueryValues(view, 0, view.def.nodes.length - 1, (/** @type {?} */ (nodeDef.query)), []);
        directiveInstance = view.component;
    }
    queryList.reset(newValues);
    /** @type {?} */
    const bindings = (/** @type {?} */ (nodeDef.query)).bindings;
    /** @type {?} */
    let notify = false;
    for (let i = 0; i < bindings.length; i++) {
        /** @type {?} */
        const binding = bindings[i];
        /** @type {?} */
        let boundValue;
        switch (binding.bindingType) {
            case 0 /* First */:
                boundValue = queryList.first;
                break;
            case 1 /* All */:
                boundValue = queryList;
                notify = true;
                break;
        }
        directiveInstance[binding.propName] = boundValue;
    }
    if (notify) {
        queryList.notifyOnChanges();
    }
}
/**
 * @param {?} view
 * @param {?} startIndex
 * @param {?} endIndex
 * @param {?} queryDef
 * @param {?} values
 * @return {?}
 */
function calcQueryValues(view, startIndex, endIndex, queryDef, values) {
    for (let i = startIndex; i <= endIndex; i++) {
        /** @type {?} */
        const nodeDef = view.def.nodes[i];
        /** @type {?} */
        const valueType = nodeDef.matchedQueries[queryDef.id];
        if (valueType != null) {
            values.push(getQueryValue(view, nodeDef, valueType));
        }
        if (nodeDef.flags & 1 /* TypeElement */ && (/** @type {?} */ (nodeDef.element)).template &&
            ((/** @type {?} */ ((/** @type {?} */ (nodeDef.element)).template)).nodeMatchedQueries & queryDef.filterId) ===
                queryDef.filterId) {
            /** @type {?} */
            const elementData = asElementData(view, i);
            // check embedded views that were attached at the place of their template,
            // but process child nodes first if some match the query (see issue #16568)
            if ((nodeDef.childMatchedQueries & queryDef.filterId) === queryDef.filterId) {
                calcQueryValues(view, i + 1, i + nodeDef.childCount, queryDef, values);
                i += nodeDef.childCount;
            }
            if (nodeDef.flags & 16777216 /* EmbeddedViews */) {
                /** @type {?} */
                const embeddedViews = (/** @type {?} */ (elementData.viewContainer))._embeddedViews;
                for (let k = 0; k < embeddedViews.length; k++) {
                    /** @type {?} */
                    const embeddedView = embeddedViews[k];
                    /** @type {?} */
                    const dvc = declaredViewContainer(embeddedView);
                    if (dvc && dvc === elementData) {
                        calcQueryValues(embeddedView, 0, embeddedView.def.nodes.length - 1, queryDef, values);
                    }
                }
            }
            /** @type {?} */
            const projectedViews = elementData.template._projectedViews;
            if (projectedViews) {
                for (let k = 0; k < projectedViews.length; k++) {
                    /** @type {?} */
                    const projectedView = projectedViews[k];
                    calcQueryValues(projectedView, 0, projectedView.def.nodes.length - 1, queryDef, values);
                }
            }
        }
        if ((nodeDef.childMatchedQueries & queryDef.filterId) !== queryDef.filterId) {
            // if no child matches the query, skip the children.
            i += nodeDef.childCount;
        }
    }
    return values;
}
/**
 * @param {?} view
 * @param {?} nodeDef
 * @param {?} queryValueType
 * @return {?}
 */
export function getQueryValue(view, nodeDef, queryValueType) {
    if (queryValueType != null) {
        // a match
        switch (queryValueType) {
            case 1 /* RenderElement */:
                return asElementData(view, nodeDef.nodeIndex).renderElement;
            case 0 /* ElementRef */:
                return new ElementRef(asElementData(view, nodeDef.nodeIndex).renderElement);
            case 2 /* TemplateRef */:
                return asElementData(view, nodeDef.nodeIndex).template;
            case 3 /* ViewContainerRef */:
                return asElementData(view, nodeDef.nodeIndex).viewContainer;
            case 4 /* Provider */:
                return asProviderData(view, nodeDef.nodeIndex).instance;
        }
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicXVlcnkuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy92aWV3L3F1ZXJ5LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQVFBLE9BQU8sRUFBQyxVQUFVLEVBQUMsTUFBTSx1QkFBdUIsQ0FBQztBQUNqRCxPQUFPLEVBQUMsU0FBUyxFQUFDLE1BQU0sc0JBQXNCLENBQUM7QUFFL0MsT0FBTyxFQUE0RixhQUFhLEVBQUUsY0FBYyxFQUFFLFdBQVcsRUFBQyxNQUFNLFNBQVMsQ0FBQztBQUM5SixPQUFPLEVBQUMscUJBQXFCLEVBQUUsYUFBYSxFQUFFLGNBQWMsRUFBQyxNQUFNLFFBQVEsQ0FBQzs7Ozs7OztBQUU1RSxNQUFNLFVBQVUsUUFBUSxDQUNwQixLQUFnQixFQUFFLEVBQVUsRUFBRSxRQUFnRDs7UUFDNUUsV0FBVyxHQUFzQixFQUFFO0lBQ3ZDLEtBQUssSUFBSSxRQUFRLElBQUksUUFBUSxFQUFFOztjQUN2QixXQUFXLEdBQUcsUUFBUSxDQUFDLFFBQVEsQ0FBQztRQUN0QyxXQUFXLENBQUMsSUFBSSxDQUFDLEVBQUMsUUFBUSxFQUFFLFdBQVcsRUFBQyxDQUFDLENBQUM7S0FDM0M7SUFFRCxPQUFPOztRQUVMLFNBQVMsRUFBRSxDQUFDLENBQUM7UUFDYixNQUFNLEVBQUUsSUFBSTtRQUNaLFlBQVksRUFBRSxJQUFJO1FBQ2xCLFlBQVksRUFBRSxDQUFDLENBQUM7UUFDaEIsV0FBVyxFQUFFLENBQUMsQ0FBQzs7O1FBR2YsVUFBVSxFQUFFLENBQUMsQ0FBQyxFQUFFLEtBQUs7UUFDckIsVUFBVSxFQUFFLENBQUM7UUFDYixnQkFBZ0IsRUFBRSxDQUFDO1FBQ25CLG1CQUFtQixFQUFFLENBQUM7UUFDdEIsY0FBYyxFQUFFLENBQUMsQ0FBQztRQUNsQixjQUFjLEVBQUUsRUFBRTtRQUNsQixlQUFlLEVBQUUsQ0FBQztRQUNsQixVQUFVLEVBQUUsRUFB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QUMsS0FBSyxDQUFDLE1BQU0sR0FBRyxDQUFDLEVBQUUsUUFBUSxFQUFFLE1BQU0sQ0FBQyxDQUFDO2lCQUN6RjthQUNGO1NBQ0Y7UUFDRCxJQUFJLENBQUMsT0FBTyxDQUFDLG1CQUFtQixHQUFHLFFBQVEsQ0FBQyxRQUFRLENBQUMsS0FBSyxRQUFRLENBQUMsUUFBUSxFQUFFO1lBQzNFLG9EQUFvRDtZQUNwRCxDQUFDLElBQUksT0FBTyxDQUFDLFVBQVUsQ0FBQztTQUN6QjtLQUNGO0lBQ0QsT0FBTyxNQUFNLENBQUM7QUFDaEIsQ0FBQzs7Ozs7OztBQUVELE1BQU0sVUFBVSxhQUFhLENBQ3pCLElBQWMsRUFBRSxPQUFnQixFQUFFLGNBQThCO0lBQ2xFLElBQUksY0FBYyxJQUFJLElBQUksRUFBRTtRQUMxQixVQUFVO1FBQ1YsUUFBUSxjQUFjLEVBQUU7WUFDdEI7Z0JBQ0UsT0FBTyxhQUFhLENBQUMsSUFBSSxFQUFFLE9BQU8sQ0FBQyxTQUFTLENBQUMsQ0FBQyxhQUFhLENBQUM7WUFDOUQ7Z0JBQ0UsT0FBTyxJQUFJLFVBQVUsQ0FBQyxhQUFhLENBQUMsSUFBSSxFQUFFLE9BQU8sQ0FBQyxTQUFTLENBQUMsQ0FBQyxhQUFhLENBQUMsQ0FBQztZQUM5RTtnQkFDRSxPQUFPLGFBQWEsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLFNBQVMsQ0FBQyxDQUFDLFFBQVEsQ0FBQztZQUN6RDtnQkFDRSxPQUFPLGFBQWEsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLFNBQVMsQ0FBQyxDQUFDLGFBQWEsQ0FBQztZQUM5RDtnQkFDRSxPQUFPLGNBQWMsQ0FBQyxJQUFJLEVBQUUsT0FBTyxDQUFDLFNBQVMsQ0FBQyxDQUFDLFFBQVEsQ0FBQztTQUMzRDtLQUNGO0FBQ0gsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtFbGVtZW50UmVmfSBmcm9tICcuLi9saW5rZXIvZWxlbWVudF9yZWYnO1xuaW1wb3J0IHtRdWVyeUxpc3R9IGZyb20gJy4uL2xpbmtlci9xdWVyeV9saXN0JztcblxuaW1wb3J0IHtOb2RlRGVmLCBOb2RlRmxhZ3MsIFF1ZXJ5QmluZGluZ0RlZiwgUXVlcnlCaW5kaW5nVHlwZSwgUXVlcnlEZWYsIFF1ZXJ5VmFsdWVUeXBlLCBWaWV3RGF0YSwgYXNFbGVtZW50RGF0YSwgYXNQcm92aWRlckRhdGEsIGFzUXVlcnlMaXN0fSBmcm9tICcuL3R5cGVzJztcbmltcG9ydCB7ZGVjbGFyZWRWaWV3Q29udGFpbmVyLCBmaWx0ZXJRdWVyeUlkLCBpc0VtYmVkZGVkVmlld30gZnJvbSAnLi91dGlsJztcblxuZXhwb3J0IGZ1bmN0aW9uIHF1ZXJ5RGVmKFxuICAgIGZsYWdzOiBOb2RlRmxhZ3MsIGlkOiBudW1iZXIsIGJpbmRpbmdzOiB7W3Byb3BOYW1lOiBzdHJpbmddOiBRdWVyeUJpbmRpbmdUeXBlfSk6IE5vZGVEZWYge1xuICBsZXQgYmluZGluZ0RlZnM6IFF1ZXJ5QmluZGluZ0RlZltdID0gW107XG4gIGZvciAobGV0IHByb3BOYW1lIGluIGJpbmRpbmdzKSB7XG4gICAgY29uc3QgYmluZGluZ1R5cGUgPSBiaW5kaW5nc1twcm9wTmFtZV07XG4gICAgYmluZGluZ0RlZnMucHVzaCh7cHJvcE5hbWUsIGJpbmRpbmdUeXBlfSk7XG4gIH1cblxuICByZXR1cm4ge1xuICAgIC8vIHdpbGwgYmV0IHNldCBieSB0aGUgdmlldyBkZWZpbml0aW9uXG4gICAgbm9kZUluZGV4OiAtMSxcbiAgICBwYXJlbnQ6IG51bGwsXG4gICAgcmVuZGVyUGFyZW50OiBudWxsLFxuICAgIGJpbmRpbmdJbmRleDogLTEsXG4gICAgb3V0cHV0SW5kZXg6IC0xLFxuICAgIC8vIHJlZ3VsYXIgdmFsdWVzXG4gICAgLy8gVE9ETyh2aWNiKTogY2hlY2tcbiAgICBjaGVja0luZGV4OiAtMSwgZmxhZ3MsXG4gICAgY2hpbGRGbGFnczogMCxcbiAgICBkaXJlY3RDaGlsZEZsYWdzOiAwLFxuICAgIGNoaWxkTWF0Y2hlZFF1ZXJpZXM6IDAsXG4gICAgbmdDb250ZW50SW5kZXg6IC0xLFxuICAgIG1hdGNoZWRRdWVyaWVzOiB7fSxcbiAgICBtYXRjaGVkUXVlcnlJZHM6IDAsXG4gICAgcmVmZXJlbmNlczoge30sXG4gICAgY2hpbGRDb3VudDogMCxcbiAgICBiaW5kaW5nczogW10sXG4gICAgYmluZGluZ0ZsYWdzOiAwLFxuICAgIG91dHB1dHM6IFtdLFxuICAgIGVsZW1lbnQ6IG51bGwsXG4gICAgcHJvdmlkZXI6IG51bGwsXG4gICAgdGV4dDogbnVsbCxcbiAgICBxdWVyeToge2lkLCBmaWx0ZXJJZDogZmlsdGVyUXVlcnlJZChpZCksIGJpbmRpbmdzOiBiaW5kaW5nRGVmc30sXG4gICAgbmdDb250ZW50OiBudWxsXG4gIH07XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBjcmVhdGVRdWVyeSgpOiBRdWVyeUxpc3Q8YW55PiB7XG4gIHJldHVybiBuZXcgUXVlcnlMaXN0KCk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBkaXJ0eVBhcmVudFF1ZXJpZXModmlldzogVmlld0RhdGEpIHtcbiAgY29uc3QgcXVlcnlJZHMgPSB2aWV3LmRlZi5ub2RlTWF0Y2hlZFF1ZXJpZXM7XG4gIHdoaWxlICh2aWV3LnBhcmVudCAmJiBpc0VtYmVkZGVkVmlldyh2aWV3KSkge1xuICAgIGxldCB0cGxEZWYgPSB2aWV3LnBhcmVudE5vZGVEZWYgITtcbiAgICB2aWV3ID0gdmlldy5wYXJlbnQ7XG4gICAgLy8gY29udGVudCBxdWVyaWVzXG4gICAgY29uc3QgZW5kID0gdHBsRGVmLm5vZGVJbmRleCArIHRwbERlZi5jaGlsZENvdW50O1xuICAgIGZvciAobGV0IGkgPSAwOyBpIDw9IGVuZDsgaSsrKSB7XG4gICAgICBjb25zdCBub2RlRGVmID0gdmlldy5kZWYubm9kZXNbaV07XG4gICAgICBpZiAoKG5vZGVEZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuVHlwZUNvbnRlbnRRdWVyeSkgJiZcbiAgICAgICAgICAobm9kZURlZi5mbGFncyAmIE5vZGVGbGFncy5EeW5hbWljUXVlcnkpICYmXG4gICAgICAgICAgKG5vZGVEZWYucXVlcnkgIS5maWx0ZXJJZCAmIHF1ZXJ5SWRzKSA9PT0gbm9kZURlZi5xdWVyeSAhLmZpbHRlcklkKSB7XG4gICAgICAgIGFzUXVlcnlMaXN0KHZpZXcsIGkpLnNldERpcnR5KCk7XG4gICAgICB9XG4gICAgICBpZiAoKG5vZGVEZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuVHlwZUVsZW1lbnQgJiYgaSArIG5vZGVEZWYuY2hpbGRDb3VudCA8IHRwbERlZi5ub2RlSW5kZXgpIHx8XG4gICAgICAgICAgIShub2RlRGVmLmNoaWxkRmxhZ3MgJiBOb2RlRmxhZ3MuVHlwZUNvbnRlbnRRdWVyeSkgfHxcbiAgICAgICAgICAhKG5vZGVEZWYuY2hpbGRGbGFncyAmIE5vZGVGbGFncy5EeW5hbWljUXVlcnkpKSB7XG4gICAgICAgIC8vIHNraXAgZWxlbWVudHMgdGhhdCBkb24ndCBjb250YWluIHRoZSB0ZW1wbGF0ZSBlbGVtZW50IG9yIG5vIHF1ZXJ5LlxuICAgICAgICBpICs9IG5vZGVEZWYuY2hpbGRDb3VudDtcbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICAvLyB2aWV3IHF1ZXJpZXNcbiAgaWYgKHZpZXcuZGVmLm5vZGVGbGFncyAmIE5vZGVGbGFncy5UeXBlVmlld1F1ZXJ5KSB7XG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCB2aWV3LmRlZi5ub2Rlcy5sZW5ndGg7IGkrKykge1xuICAgICAgY29uc3Qgbm9kZURlZiA9IHZpZXcuZGVmLm5vZGVzW2ldO1xuICAgICAgaWYgKChub2RlRGVmLmZsYWdzICYgTm9kZUZsYWdzLlR5cGVWaWV3UXVlcnkpICYmIChub2RlRGVmLmZsYWdzICYgTm9kZUZsYWdzLkR5bmFtaWNRdWVyeSkpIHtcbiAgICAgICAgYXNRdWVyeUxpc3QodmlldywgaSkuc2V0RGlydHkoKTtcbiAgICAgIH1cbiAgICAgIC8vIG9ubHkgdmlzaXQgdGhlIHJvb3Qgbm9kZXNcbiAgICAgIGkgKz0gbm9kZURlZi5jaGlsZENvdW50O1xuICAgIH1cbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gY2hlY2tBbmRVcGRhdGVRdWVyeSh2aWV3OiBWaWV3RGF0YSwgbm9kZURlZjogTm9kZURlZikge1xuICBjb25zdCBxdWVyeUxpc3QgPSBhc1F1ZXJ5TGlzdCh2aWV3LCBub2RlRGVmLm5vZGVJbmRleCk7XG4gIGlmICghcXVlcnlMaXN0LmRpcnR5KSB7XG4gICAgcmV0dXJuO1xuICB9XG4gIGxldCBkaXJlY3RpdmVJbnN0YW5jZTogYW55O1xuICBsZXQgbmV3VmFsdWVzOiBhbnlbXSA9IHVuZGVmaW5lZCAhO1xuICBpZiAobm9kZURlZi5mbGFncyAmIE5vZGVGbGFncy5UeXBlQ29udGVudFF1ZXJ5KSB7XG4gICAgY29uc3QgZWxlbWVudERlZiA9IG5vZGVEZWYucGFyZW50ICEucGFyZW50ICE7XG4gICAgbmV3VmFsdWVzID0gY2FsY1F1ZXJ5VmFsdWVzKFxuICAgICAgICB2aWV3LCBlbGVtZW50RGVmLm5vZGVJbmRleCwgZWxlbWVudERlZi5ub2RlSW5kZXggKyBlbGVtZW50RGVmLmNoaWxkQ291bnQsIG5vZGVEZWYucXVlcnkgISxcbiAgICAgICAgW10pO1xuICAgIGRpcmVjdGl2ZUluc3RhbmNlID0gYXNQcm92aWRlckRhdGEodmlldywgbm9kZURlZi5wYXJlbnQgIS5ub2RlSW5kZXgpLmluc3RhbmNlO1xuICB9IGVsc2UgaWYgKG5vZGVEZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuVHlwZVZpZXdRdWVyeSkge1xuICAgIG5ld1ZhbHVlcyA9IGNhbGNRdWVyeVZhbHVlcyh2aWV3LCAwLCB2aWV3LmRlZi5ub2Rlcy5sZW5ndGggLSAxLCBub2RlRGVmLnF1ZXJ5ICEsIFtdKTtcbiAgICBkaXJlY3RpdmVJbnN0YW5jZSA9IHZpZXcuY29tcG9uZW50O1xuICB9XG4gIHF1ZXJ5TGlzdC5yZXNldChuZXdWYWx1ZXMpO1xuICBjb25zdCBiaW5kaW5ncyA9IG5vZGVEZWYucXVlcnkgIS5iaW5kaW5ncztcbiAgbGV0IG5vdGlmeSA9IGZhbHNlO1xuICBmb3IgKGxldCBpID0gMDsgaSA8IGJpbmRpbmdzLmxlbmd0aDsgaSsrKSB7XG4gICAgY29uc3QgYmluZGluZyA9IGJpbmRpbmdzW2ldO1xuICAgIGxldCBib3VuZFZhbHVlOiBhbnk7XG4gICAgc3dpdGNoIChiaW5kaW5nLmJpbmRpbmdUeXBlKSB7XG4gICAgICBjYXNlIFF1ZXJ5QmluZGluZ1R5cGUuRmlyc3Q6XG4gICAgICAgIGJvdW5kVmFsdWUgPSBxdWVyeUxpc3QuZmlyc3Q7XG4gICAgICAgIGJyZWFrO1xuICAgICAgY2FzZSBRdWVyeUJpbmRpbmdUeXBlLkFsbDpcbiAgICAgICAgYm91bmRWYWx1ZSA9IHF1ZXJ5TGlzdDtcbiAgICAgICAgbm90aWZ5ID0gdHJ1ZTtcbiAgICAgICAgYnJlYWs7XG4gICAgfVxuICAgIGRpcmVjdGl2ZUluc3RhbmNlW2JpbmRpbmcucHJvcE5hbWVdID0gYm91bmRWYWx1ZTtcbiAgfVxuICBpZiAobm90aWZ5KSB7XG4gICAgcXVlcnlMaXN0Lm5vdGlmeU9uQ2hhbmdlcygpO1xuICB9XG59XG5cbmZ1bmN0aW9uIGNhbGNRdWVyeVZhbHVlcyhcbiAgICB2aWV3OiBWaWV3RGF0YSwgc3RhcnRJbmRleDogbnVtYmVyLCBlbmRJbmRleDogbnVtYmVyLCBxdWVyeURlZjogUXVlcnlEZWYsXG4gICAgdmFsdWVzOiBhbnlbXSk6IGFueVtdIHtcbiAgZm9yIChsZXQgaSA9IHN0YXJ0SW5kZXg7IGkgPD0gZW5kSW5kZXg7IGkrKykge1xuICAgIGNvbnN0IG5vZGVEZWYgPSB2aWV3LmRlZi5ub2Rlc1tpXTtcbiAgICBjb25zdCB2YWx1ZVR5cGUgPSBub2RlRGVmLm1hdGNoZWRRdWVyaWVzW3F1ZXJ5RGVmLmlkXTtcbiAgICBpZiAodmFsdWVUeXBlICE9IG51bGwpIHtcbiAgICAgIHZhbHVlcy5wdXNoKGdldFF1ZXJ5VmFsdWUodmlldywgbm9kZURlZiwgdmFsdWVUeXBlKSk7XG4gICAgfVxuICAgIGlmIChub2RlRGVmLmZsYWdzICYgTm9kZUZsYWdzLlR5cGVFbGVtZW50ICYmIG5vZGVEZWYuZWxlbWVudCAhLnRlbXBsYXRlICYmXG4gICAgICAgIChub2RlRGVmLmVsZW1lbnQgIS50ZW1wbGF0ZSAhLm5vZGVNYXRjaGVkUXVlcmllcyAmIHF1ZXJ5RGVmLmZpbHRlcklkKSA9PT1cbiAgICAgICAgICAgIHF1ZXJ5RGVmLmZpbHRlcklkKSB7XG4gICAgICBjb25zdCBlbGVtZW50RGF0YSA9IGFzRWxlbWVudERhdGEodmlldywgaSk7XG4gICAgICAvLyBjaGVjayBlbWJlZGRlZCB2aWV3cyB0aGF0IHdlcmUgYXR0YWNoZWQgYXQgdGhlIHBsYWNlIG9mIHRoZWlyIHRlbXBsYXRlLFxuICAgICAgLy8gYnV0IHByb2Nlc3MgY2hpbGQgbm9kZXMgZmlyc3QgaWYgc29tZSBtYXRjaCB0aGUgcXVlcnkgKHNlZSBpc3N1ZSAjMTY1NjgpXG4gICAgICBpZiAoKG5vZGVEZWYuY2hpbGRNYXRjaGVkUXVlcmllcyAmIHF1ZXJ5RGVmLmZpbHRlcklkKSA9PT0gcXVlcnlEZWYuZmlsdGVySWQpIHtcbiAgICAgICAgY2FsY1F1ZXJ5VmFsdWVzKHZpZXcsIGkgKyAxLCBpICsgbm9kZURlZi5jaGlsZENvdW50LCBxdWVyeURlZiwgdmFsdWVzKTtcbiAgICAgICAgaSArPSBub2RlRGVmLmNoaWxkQ291bnQ7XG4gICAgICB9XG4gICAgICBpZiAobm9kZURlZi5mbGFncyAmIE5vZGVGbGFncy5FbWJlZGRlZFZpZXdzKSB7XG4gICAgICAgIGNvbnN0IGVtYmVkZGVkVmlld3MgPSBlbGVtZW50RGF0YS52aWV3Q29udGFpbmVyICEuX2VtYmVkZGVkVmlld3M7XG4gICAgICAgIGZvciAobGV0IGsgPSAwOyBrIDwgZW1iZWRkZWRWaWV3cy5sZW5ndGg7IGsrKykge1xuICAgICAgICAgIGNvbnN0IGVtYmVkZGVkVmlldyA9IGVtYmVkZGVkVmlld3Nba107XG4gICAgICAgICAgY29uc3QgZHZjID0gZGVjbGFyZWRWaWV3Q29udGFpbmVyKGVtYmVkZGVkVmlldyk7XG4gICAgICAgICAgaWYgKGR2YyAmJiBkdmMgPT09IGVsZW1lbnREYXRhKSB7XG4gICAgICAgICAgICBjYWxjUXVlcnlWYWx1ZXMoZW1iZWRkZWRWaWV3LCAwLCBlbWJlZGRlZFZpZXcuZGVmLm5vZGVzLmxlbmd0aCAtIDEsIHF1ZXJ5RGVmLCB2YWx1ZXMpO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgICAgY29uc3QgcHJvamVjdGVkVmlld3MgPSBlbGVtZW50RGF0YS50ZW1wbGF0ZS5fcHJvamVjdGVkVmlld3M7XG4gICAgICBpZiAocHJvamVjdGVkVmlld3MpIHtcbiAgICAgICAgZm9yIChsZXQgayA9IDA7IGsgPCBwcm9qZWN0ZWRWaWV3cy5sZW5ndGg7IGsrKykge1xuICAgICAgICAgIGNvbnN0IHByb2plY3RlZFZpZXcgPSBwcm9qZWN0ZWRWaWV3c1trXTtcbiAgICAgICAgICBjYWxjUXVlcnlWYWx1ZXMocHJvamVjdGVkVmlldywgMCwgcHJvamVjdGVkVmlldy5kZWYubm9kZXMubGVuZ3RoIC0gMSwgcXVlcnlEZWYsIHZhbHVlcyk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gICAgaWYgKChub2RlRGVmLmNoaWxkTWF0Y2hlZFF1ZXJpZXMgJiBxdWVyeURlZi5maWx0ZXJJZCkgIT09IHF1ZXJ5RGVmLmZpbHRlcklkKSB7XG4gICAgICAvLyBpZiBubyBjaGlsZCBtYXRjaGVzIHRoZSBxdWVyeSwgc2tpcCB0aGUgY2hpbGRyZW4uXG4gICAgICBpICs9IG5vZGVEZWYuY2hpbGRDb3VudDtcbiAgICB9XG4gIH1cbiAgcmV0dXJuIHZhbHVlcztcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdldFF1ZXJ5VmFsdWUoXG4gICAgdmlldzogVmlld0RhdGEsIG5vZGVEZWY6IE5vZGVEZWYsIHF1ZXJ5VmFsdWVUeXBlOiBRdWVyeVZhbHVlVHlwZSk6IGFueSB7XG4gIGlmIChxdWVyeVZhbHVlVHlwZSAhPSBudWxsKSB7XG4gICAgLy8gYSBtYXRjaFxuICAgIHN3aXRjaCAocXVlcnlWYWx1ZVR5cGUpIHtcbiAgICAgIGNhc2UgUXVlcnlWYWx1ZVR5cGUuUmVuZGVyRWxlbWVudDpcbiAgICAgICAgcmV0dXJuIGFzRWxlbWVudERhdGEodmlldywgbm9kZURlZi5ub2RlSW5kZXgpLnJlbmRlckVsZW1lbnQ7XG4gICAgICBjYXNlIFF1ZXJ5VmFsdWVUeXBlLkVsZW1lbnRSZWY6XG4gICAgICAgIHJldHVybiBuZXcgRWxlbWVudFJlZihhc0VsZW1lbnREYXRhKHZpZXcsIG5vZGVEZWYubm9kZUluZGV4KS5yZW5kZXJFbGVtZW50KTtcbiAgICAgIGNhc2UgUXVlcnlWYWx1ZVR5cGUuVGVtcGxhdGVSZWY6XG4gICAgICAgIHJldHVybiBhc0VsZW1lbnREYXRhKHZpZXcsIG5vZGVEZWYubm9kZUluZGV4KS50ZW1wbGF0ZTtcbiAgICAgIGNhc2UgUXVlcnlWYWx1ZVR5cGUuVmlld0NvbnRhaW5lclJlZjpcbiAgICAgICAgcmV0dXJuIGFzRWxlbWVudERhdGEodmlldywgbm9kZURlZi5ub2RlSW5kZXgpLnZpZXdDb250YWluZXI7XG4gICAgICBjYXNlIFF1ZXJ5VmFsdWVUeXBlLlByb3ZpZGVyOlxuICAgICAgICByZXR1cm4gYXNQcm92aWRlckRhdGEodmlldywgbm9kZURlZi5ub2RlSW5kZXgpLmluc3RhbmNlO1xuICAgIH1cbiAgfVxufVxuIl19