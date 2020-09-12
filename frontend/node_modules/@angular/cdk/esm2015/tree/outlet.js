/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Directive, Inject, InjectionToken, Optional, ViewContainerRef, } from '@angular/core';
/**
 * Injection token used to provide a `CdkTreeNode` to its outlet.
 * Used primarily to avoid circular imports.
 * @docs-private
 */
export const CDK_TREE_NODE_OUTLET_NODE = new InjectionToken('CDK_TREE_NODE_OUTLET_NODE');
/**
 * Outlet for nested CdkNode. Put `[cdkTreeNodeOutlet]` on a tag to place children dataNodes
 * inside the outlet.
 */
export class CdkTreeNodeOutlet {
    constructor(viewContainer, _node) {
        this.viewContainer = viewContainer;
        this._node = _node;
    }
}
CdkTreeNodeOutlet.decorators = [
    { type: Directive, args: [{
                selector: '[cdkTreeNodeOutlet]'
            },] }
];
CdkTreeNodeOutlet.ctorParameters = () => [
    { type: ViewContainerRef },
    { type: undefined, decorators: [{ type: Inject, args: [CDK_TREE_NODE_OUTLET_NODE,] }, { type: Optional }] }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoib3V0bGV0LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay90cmVlL291dGxldC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFDSCxPQUFPLEVBQ0wsU0FBUyxFQUNULE1BQU0sRUFDTixjQUFjLEVBQ2QsUUFBUSxFQUNSLGdCQUFnQixHQUNqQixNQUFNLGVBQWUsQ0FBQztBQUV2Qjs7OztHQUlHO0FBQ0gsTUFBTSxDQUFDLE1BQU0seUJBQXlCLEdBQUcsSUFBSSxjQUFjLENBQUssMkJBQTJCLENBQUMsQ0FBQztBQUU3Rjs7O0dBR0c7QUFJSCxNQUFNLE9BQU8saUJBQWlCO0lBQzVCLFlBQ1csYUFBK0IsRUFDZ0IsS0FBVztRQUQxRCxrQkFBYSxHQUFiLGFBQWEsQ0FBa0I7UUFDZ0IsVUFBSyxHQUFMLEtBQUssQ0FBTTtJQUFHLENBQUM7OztZQU4xRSxTQUFTLFNBQUM7Z0JBQ1QsUUFBUSxFQUFFLHFCQUFxQjthQUNoQzs7O1lBaEJDLGdCQUFnQjs0Q0FvQlgsTUFBTSxTQUFDLHlCQUF5QixjQUFHLFFBQVEiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCB7XG4gIERpcmVjdGl2ZSxcbiAgSW5qZWN0LFxuICBJbmplY3Rpb25Ub2tlbixcbiAgT3B0aW9uYWwsXG4gIFZpZXdDb250YWluZXJSZWYsXG59IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG4vKipcbiAqIEluamVjdGlvbiB0b2tlbiB1c2VkIHRvIHByb3ZpZGUgYSBgQ2RrVHJlZU5vZGVgIHRvIGl0cyBvdXRsZXQuXG4gKiBVc2VkIHByaW1hcmlseSB0byBhdm9pZCBjaXJjdWxhciBpbXBvcnRzLlxuICogQGRvY3MtcHJpdmF0ZVxuICovXG5leHBvcnQgY29uc3QgQ0RLX1RSRUVfTk9ERV9PVVRMRVRfTk9ERSA9IG5ldyBJbmplY3Rpb25Ub2tlbjx7fT4oJ0NES19UUkVFX05PREVfT1VUTEVUX05PREUnKTtcblxuLyoqXG4gKiBPdXRsZXQgZm9yIG5lc3RlZCBDZGtOb2RlLiBQdXQgYFtjZGtUcmVlTm9kZU91dGxldF1gIG9uIGEgdGFnIHRvIHBsYWNlIGNoaWxkcmVuIGRhdGFOb2Rlc1xuICogaW5zaWRlIHRoZSBvdXRsZXQuXG4gKi9cbkBEaXJlY3RpdmUoe1xuICBzZWxlY3RvcjogJ1tjZGtUcmVlTm9kZU91dGxldF0nXG59KVxuZXhwb3J0IGNsYXNzIENka1RyZWVOb2RlT3V0bGV0IHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgdmlld0NvbnRhaW5lcjogVmlld0NvbnRhaW5lclJlZixcbiAgICAgIEBJbmplY3QoQ0RLX1RSRUVfTk9ERV9PVVRMRVRfTk9ERSkgQE9wdGlvbmFsKCkgcHVibGljIF9ub2RlPzogYW55KSB7fVxufVxuIl19