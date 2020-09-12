/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/view/ng_content.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { getParentRenderElement, visitProjectedRenderNodes } from './util';
/**
 * @param {?} ngContentIndex
 * @param {?} index
 * @return {?}
 */
export function ngContentDef(ngContentIndex, index) {
    return {
        // will bet set by the view definition
        nodeIndex: -1,
        parent: null,
        renderParent: null,
        bindingIndex: -1,
        outputIndex: -1,
        // regular values
        checkIndex: -1,
        flags: 8 /* TypeNgContent */,
        childFlags: 0,
        directChildFlags: 0,
        childMatchedQueries: 0,
        matchedQueries: {},
        matchedQueryIds: 0,
        references: {}, ngContentIndex,
        childCount: 0,
        bindings: [],
        bindingFlags: 0,
        outputs: [],
        element: null,
        provider: null,
        text: null,
        query: null,
        ngContent: { index }
    };
}
/**
 * @param {?} view
 * @param {?} renderHost
 * @param {?} def
 * @return {?}
 */
export function appendNgContent(view, renderHost, def) {
    /** @type {?} */
    const parentEl = getParentRenderElement(view, renderHost, def);
    if (!parentEl) {
        // Nothing to do if there is no parent element.
        return;
    }
    /** @type {?} */
    const ngContentIndex = (/** @type {?} */ (def.ngContent)).index;
    visitProjectedRenderNodes(view, ngContentIndex, 1 /* AppendChild */, parentEl, null, undefined);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmdfY29udGVudC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3ZpZXcvbmdfY29udGVudC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7QUFTQSxPQUFPLEVBQW1CLHNCQUFzQixFQUFFLHlCQUF5QixFQUFDLE1BQU0sUUFBUSxDQUFDOzs7Ozs7QUFFM0YsTUFBTSxVQUFVLFlBQVksQ0FBQyxjQUE2QixFQUFFLEtBQWE7SUFDdkUsT0FBTzs7UUFFTCxTQUFTLEVBQUUsQ0FBQyxDQUFDO1FBQ2IsTUFBTSxFQUFFLElBQUk7UUFDWixZQUFZLEVBQUUsSUFBSTtRQUNsQixZQUFZLEVBQUUsQ0FBQyxDQUFDO1FBQ2hCLFdBQVcsRUFBRSxDQUFDLENBQUM7O1FBRWYsVUFBVSxFQUFFLENBQUMsQ0FBQztRQUNkLEtBQUssdUJBQXlCO1FBQzlCLFVBQVUsRUFBRSxDQUFDO1FBQ2IsZ0JBQWdCLEVBQUUsQ0FBQztRQUNuQixtQkFBbUIsRUFBRSxDQUFDO1FBQ3RCLGNBQWMsRUFBRSxFQUFFO1FBQ2xCLGVBQWUsRUFBRSxDQUFDO1FBQ2xCLFVBQVUsRUFBRSxFQUFFLEVBQUUsY0FBYztRQUM5QixVQUFVLEVBQUUsQ0FBQztRQUNiLFFBQVEsRUFBRSxFQUFFO1FBQ1osWUFBWSxFQUFFLENBQUM7UUFDZixPQUFPLEVBQUUsRUFBRTtRQUNYLE9BQU8sRUFBRSxJQUFJO1FBQ2IsUUFBUSxFQUFFLElBQUk7UUFDZCxJQUFJLEVBQUUsSUFBSTtRQUNWLEtBQUssRUFBRSxJQUFJO1FBQ1gsU0FBUyxFQUFFLEVBQUMsS0FBSyxFQUFDO0tBQ25CLENBQUM7QUFDSixDQUFDOzs7Ozs7O0FBRUQsTUFBTSxVQUFVLGVBQWUsQ0FBQyxJQUFjLEVBQUUsVUFBZSxFQUFFLEdBQVk7O1VBQ3JFLFFBQVEsR0FBRyxzQkFBc0IsQ0FBQyxJQUFJLEVBQUUsVUFBVSxFQUFFLEdBQUcsQ0FBQztJQUM5RCxJQUFJLENBQUMsUUFBUSxFQUFFO1FBQ2IsK0NBQStDO1FBQy9DLE9BQU87S0FDUjs7VUFDSyxjQUFjLEdBQUcsbUJBQUEsR0FBRyxDQUFDLFNBQVMsRUFBRSxDQUFDLEtBQUs7SUFDNUMseUJBQXlCLENBQ3JCLElBQUksRUFBRSxjQUFjLHVCQUFnQyxRQUFRLEVBQUUsSUFBSSxFQUFFLFNBQVMsQ0FBQyxDQUFDO0FBQ3JGLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Tm9kZURlZiwgTm9kZUZsYWdzLCBWaWV3RGF0YX0gZnJvbSAnLi90eXBlcyc7XG5pbXBvcnQge1JlbmRlck5vZGVBY3Rpb24sIGdldFBhcmVudFJlbmRlckVsZW1lbnQsIHZpc2l0UHJvamVjdGVkUmVuZGVyTm9kZXN9IGZyb20gJy4vdXRpbCc7XG5cbmV4cG9ydCBmdW5jdGlvbiBuZ0NvbnRlbnREZWYobmdDb250ZW50SW5kZXg6IG51bGwgfCBudW1iZXIsIGluZGV4OiBudW1iZXIpOiBOb2RlRGVmIHtcbiAgcmV0dXJuIHtcbiAgICAvLyB3aWxsIGJldCBzZXQgYnkgdGhlIHZpZXcgZGVmaW5pdGlvblxuICAgIG5vZGVJbmRleDogLTEsXG4gICAgcGFyZW50OiBudWxsLFxuICAgIHJlbmRlclBhcmVudDogbnVsbCxcbiAgICBiaW5kaW5nSW5kZXg6IC0xLFxuICAgIG91dHB1dEluZGV4OiAtMSxcbiAgICAvLyByZWd1bGFyIHZhbHVlc1xuICAgIGNoZWNrSW5kZXg6IC0xLFxuICAgIGZsYWdzOiBOb2RlRmxhZ3MuVHlwZU5nQ29udGVudCxcbiAgICBjaGlsZEZsYWdzOiAwLFxuICAgIGRpcmVjdENoaWxkRmxhZ3M6IDAsXG4gICAgY2hpbGRNYXRjaGVkUXVlcmllczogMCxcbiAgICBtYXRjaGVkUXVlcmllczoge30sXG4gICAgbWF0Y2hlZFF1ZXJ5SWRzOiAwLFxuICAgIHJlZmVyZW5jZXM6IHt9LCBuZ0NvbnRlbnRJbmRleCxcbiAgICBjaGlsZENvdW50OiAwLFxuICAgIGJpbmRpbmdzOiBbXSxcbiAgICBiaW5kaW5nRmxhZ3M6IDAsXG4gICAgb3V0cHV0czogW10sXG4gICAgZWxlbWVudDogbnVsbCxcbiAgICBwcm92aWRlcjogbnVsbCxcbiAgICB0ZXh0OiBudWxsLFxuICAgIHF1ZXJ5OiBudWxsLFxuICAgIG5nQ29udGVudDoge2luZGV4fVxuICB9O1xufVxuXG5leHBvcnQgZnVuY3Rpb24gYXBwZW5kTmdDb250ZW50KHZpZXc6IFZpZXdEYXRhLCByZW5kZXJIb3N0OiBhbnksIGRlZjogTm9kZURlZikge1xuICBjb25zdCBwYXJlbnRFbCA9IGdldFBhcmVudFJlbmRlckVsZW1lbnQodmlldywgcmVuZGVySG9zdCwgZGVmKTtcbiAgaWYgKCFwYXJlbnRFbCkge1xuICAgIC8vIE5vdGhpbmcgdG8gZG8gaWYgdGhlcmUgaXMgbm8gcGFyZW50IGVsZW1lbnQuXG4gICAgcmV0dXJuO1xuICB9XG4gIGNvbnN0IG5nQ29udGVudEluZGV4ID0gZGVmLm5nQ29udGVudCAhLmluZGV4O1xuICB2aXNpdFByb2plY3RlZFJlbmRlck5vZGVzKFxuICAgICAgdmlldywgbmdDb250ZW50SW5kZXgsIFJlbmRlck5vZGVBY3Rpb24uQXBwZW5kQ2hpbGQsIHBhcmVudEVsLCBudWxsLCB1bmRlZmluZWQpO1xufVxuIl19