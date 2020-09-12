/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ContentChildren, Directive, ElementRef, IterableDiffers, QueryList, } from '@angular/core';
import { isObservable } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { CDK_TREE_NODE_OUTLET_NODE, CdkTreeNodeOutlet } from './outlet';
import { CdkTree, CdkTreeNode } from './tree';
import { getTreeControlFunctionsMissingError } from './tree-errors';
/**
 * Nested node is a child of `<cdk-tree>`. It works with nested tree.
 * By using `cdk-nested-tree-node` component in tree node template, children of the parent node will
 * be added in the `cdkTreeNodeOutlet` in tree node template.
 * The children of node will be automatically added to `cdkTreeNodeOutlet`.
 */
export class CdkNestedTreeNode extends CdkTreeNode {
    constructor(_elementRef, _tree, _differs) {
        super(_elementRef, _tree);
        this._elementRef = _elementRef;
        this._tree = _tree;
        this._differs = _differs;
    }
    ngAfterContentInit() {
        this._dataDiffer = this._differs.find([]).create(this._tree.trackBy);
        if (!this._tree.treeControl.getChildren && (typeof ngDevMode === 'undefined' || ngDevMode)) {
            throw getTreeControlFunctionsMissingError();
        }
        const childrenNodes = this._tree.treeControl.getChildren(this.data);
        if (Array.isArray(childrenNodes)) {
            this.updateChildrenNodes(childrenNodes);
        }
        else if (isObservable(childrenNodes)) {
            childrenNodes.pipe(takeUntil(this._destroyed))
                .subscribe(result => this.updateChildrenNodes(result));
        }
        this.nodeOutlet.changes.pipe(takeUntil(this._destroyed))
            .subscribe(() => this.updateChildrenNodes());
    }
    ngOnDestroy() {
        this._clear();
        super.ngOnDestroy();
    }
    /** Add children dataNodes to the NodeOutlet */
    updateChildrenNodes(children) {
        const outlet = this._getNodeOutlet();
        if (children) {
            this._children = children;
        }
        if (outlet && this._children) {
            const viewContainer = outlet.viewContainer;
            this._tree.renderNodeChanges(this._children, this._dataDiffer, viewContainer, this._data);
        }
        else {
            // Reset the data differ if there's no children nodes displayed
            this._dataDiffer.diff([]);
        }
    }
    /** Clear the children dataNodes. */
    _clear() {
        const outlet = this._getNodeOutlet();
        if (outlet) {
            outlet.viewContainer.clear();
            this._dataDiffer.diff([]);
        }
    }
    /** Gets the outlet for the current node. */
    _getNodeOutlet() {
        const outlets = this.nodeOutlet;
        // Note that since we use `descendants: true` on the query, we have to ensure
        // that we don't pick up the outlet of a child node by accident.
        return outlets && outlets.find(outlet => !outlet._node || outlet._node === this);
    }
}
CdkNestedTreeNode.decorators = [
    { type: Directive, args: [{
                selector: 'cdk-nested-tree-node',
                exportAs: 'cdkNestedTreeNode',
                host: {
                    '[attr.aria-expanded]': 'isExpanded',
                    '[attr.role]': 'role',
                    'class': 'cdk-tree-node cdk-nested-tree-node',
                },
                providers: [
                    { provide: CdkTreeNode, useExisting: CdkNestedTreeNode },
                    { provide: CDK_TREE_NODE_OUTLET_NODE, useExisting: CdkNestedTreeNode }
                ]
            },] }
];
CdkNestedTreeNode.ctorParameters = () => [
    { type: ElementRef },
    { type: CdkTree },
    { type: IterableDiffers }
];
CdkNestedTreeNode.propDecorators = {
    nodeOutlet: [{ type: ContentChildren, args: [CdkTreeNodeOutlet, {
                    // We need to use `descendants: true`, because Ivy will no longer match
                    // indirect descendants if it's left as false.
                    descendants: true
                },] }]
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmVzdGVkLW5vZGUuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL3RyZWUvbmVzdGVkLW5vZGUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBQ0gsT0FBTyxFQUVMLGVBQWUsRUFDZixTQUFTLEVBQ1QsVUFBVSxFQUVWLGVBQWUsRUFFZixTQUFTLEdBQ1YsTUFBTSxlQUFlLENBQUM7QUFDdkIsT0FBTyxFQUFDLFlBQVksRUFBQyxNQUFNLE1BQU0sQ0FBQztBQUNsQyxPQUFPLEVBQUMsU0FBUyxFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFFekMsT0FBTyxFQUFDLHlCQUF5QixFQUFFLGlCQUFpQixFQUFDLE1BQU0sVUFBVSxDQUFDO0FBQ3RFLE9BQU8sRUFBQyxPQUFPLEVBQUUsV0FBVyxFQUFDLE1BQU0sUUFBUSxDQUFDO0FBQzVDLE9BQU8sRUFBQyxtQ0FBbUMsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUVsRTs7Ozs7R0FLRztBQWNILE1BQU0sT0FBTyxpQkFBcUIsU0FBUSxXQUFjO0lBZXRELFlBQXNCLFdBQW9DLEVBQ3BDLEtBQWlCLEVBQ2pCLFFBQXlCO1FBQzdDLEtBQUssQ0FBQyxXQUFXLEVBQUUsS0FBSyxDQUFDLENBQUM7UUFITixnQkFBVyxHQUFYLFdBQVcsQ0FBeUI7UUFDcEMsVUFBSyxHQUFMLEtBQUssQ0FBWTtRQUNqQixhQUFRLEdBQVIsUUFBUSxDQUFpQjtJQUUvQyxDQUFDO0lBRUQsa0JBQWtCO1FBQ2hCLElBQUksQ0FBQyxXQUFXLEdBQUcsSUFBSSxDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLENBQUMsTUFBTSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsT0FBTyxDQUFDLENBQUM7UUFDckUsSUFBSSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsV0FBVyxDQUFDLFdBQVcsSUFBSSxDQUFDLE9BQU8sU0FBUyxLQUFLLFdBQVcsSUFBSSxT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VUosT0FBTztZQVJiLGVBQWU7Ozt5QkFzQ2QsZUFBZSxTQUFDLGlCQUFpQixFQUFFO29CQUNsQyx1RUFBdUU7b0JBQ3ZFLDhDQUE4QztvQkFDOUMsV0FBVyxFQUFFLElBQUk7aUJBQ2xCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5pbXBvcnQge1xuICBBZnRlckNvbnRlbnRJbml0LFxuICBDb250ZW50Q2hpbGRyZW4sXG4gIERpcmVjdGl2ZSxcbiAgRWxlbWVudFJlZixcbiAgSXRlcmFibGVEaWZmZXIsXG4gIEl0ZXJhYmxlRGlmZmVycyxcbiAgT25EZXN0cm95LFxuICBRdWVyeUxpc3QsXG59IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHtpc09ic2VydmFibGV9IGZyb20gJ3J4anMnO1xuaW1wb3J0IHt0YWtlVW50aWx9IGZyb20gJ3J4anMvb3BlcmF0b3JzJztcblxuaW1wb3J0IHtDREtfVFJFRV9OT0RFX09VVExFVF9OT0RFLCBDZGtUcmVlTm9kZU91dGxldH0gZnJvbSAnLi9vdXRsZXQnO1xuaW1wb3J0IHtDZGtUcmVlLCBDZGtUcmVlTm9kZX0gZnJvbSAnLi90cmVlJztcbmltcG9ydCB7Z2V0VHJlZUNvbnRyb2xGdW5jdGlvbnNNaXNzaW5nRXJyb3J9IGZyb20gJy4vdHJlZS1lcnJvcnMnO1xuXG4vKipcbiAqIE5lc3RlZCBub2RlIGlzIGEgY2hpbGQgb2YgYDxjZGstdHJlZT5gLiBJdCB3b3JrcyB3aXRoIG5lc3RlZCB0cmVlLlxuICogQnkgdXNpbmcgYGNkay1uZXN0ZWQtdHJlZS1ub2RlYCBjb21wb25lbnQgaW4gdHJlZSBub2RlIHRlbXBsYXRlLCBjaGlsZHJlbiBvZiB0aGUgcGFyZW50IG5vZGUgd2lsbFxuICogYmUgYWRkZWQgaW4gdGhlIGBjZGtUcmVlTm9kZU91dGxldGAgaW4gdHJlZSBub2RlIHRlbXBsYXRlLlxuICogVGhlIGNoaWxkcmVuIG9mIG5vZGUgd2lsbCBiZSBhdXRvbWF0aWNhbGx5IGFkZGVkIHRvIGBjZGtUcmVlTm9kZU91dGxldGAuXG4gKi9cbkBEaXJlY3RpdmUoe1xuICBzZWxlY3RvcjogJ2Nkay1uZXN0ZWQtdHJlZS1ub2RlJyxcbiAgZXhwb3J0QXM6ICdjZGtOZXN0ZWRUcmVlTm9kZScsXG4gIGhvc3Q6IHtcbiAgICAnW2F0dHIuYXJpYS1leHBhbmRlZF0nOiAnaXNFeHBhbmRlZCcsXG4gICAgJ1thdHRyLnJvbGVdJzogJ3JvbGUnLFxuICAgICdjbGFzcyc6ICdjZGstdHJlZS1ub2RlIGNkay1uZXN0ZWQtdHJlZS1ub2RlJyxcbiAgfSxcbiAgcHJvdmlkZXJzOiBbXG4gICAge3Byb3ZpZGU6IENka1RyZWVOb2RlLCB1c2VFeGlzdGluZzogQ2RrTmVzdGVkVHJlZU5vZGV9LFxuICAgIHtwcm92aWRlOiBDREtfVFJFRV9OT0RFX09VVExFVF9OT0RFLCB1c2VFeGlzdGluZzogQ2RrTmVzdGVkVHJlZU5vZGV9XG4gIF1cbn0pXG5leHBvcnQgY2xhc3MgQ2RrTmVzdGVkVHJlZU5vZGU8VD4gZXh0ZW5kcyBDZGtUcmVlTm9kZTxUPiBpbXBsZW1lbnRzIEFmdGVyQ29udGVudEluaXQsIE9uRGVzdHJveSB7XG4gIC8qKiBEaWZmZXIgdXNlZCB0byBmaW5kIHRoZSBjaGFuZ2VzIGluIHRoZSBkYXRhIHByb3ZpZGVkIGJ5IHRoZSBkYXRhIHNvdXJjZS4gKi9cbiAgcHJpdmF0ZSBfZGF0YURpZmZlcjogSXRlcmFibGVEaWZmZXI8VD47XG5cbiAgLyoqIFRoZSBjaGlsZHJlbiBkYXRhIGRhdGFOb2RlcyBvZiBjdXJyZW50IG5vZGUuIFRoZXkgd2lsbCBiZSBwbGFjZWQgaW4gYENka1RyZWVOb2RlT3V0bGV0YC4gKi9cbiAgcHJvdGVjdGVkIF9jaGlsZHJlbjogVFtdO1xuXG4gIC8qKiBUaGUgY2hpbGRyZW4gbm9kZSBwbGFjZWhvbGRlci4gKi9cbiAgQENvbnRlbnRDaGlsZHJlbihDZGtUcmVlTm9kZU91dGxldCwge1xuICAgIC8vIFdlIG5lZWQgdG8gdXNlIGBkZXNjZW5kYW50czogdHJ1ZWAsIGJlY2F1c2UgSXZ5IHdpbGwgbm8gbG9uZ2VyIG1hdGNoXG4gICAgLy8gaW5kaXJlY3QgZGVzY2VuZGFudHMgaWYgaXQncyBsZWZ0IGFzIGZhbHNlLlxuICAgIGRlc2NlbmRhbnRzOiB0cnVlXG4gIH0pXG4gIG5vZGVPdXRsZXQ6IFF1ZXJ5TGlzdDxDZGtUcmVlTm9kZU91dGxldD47XG5cbiAgY29uc3RydWN0b3IocHJvdGVjdGVkIF9lbGVtZW50UmVmOiBFbGVtZW50UmVmPEhUTUxFbGVtZW50PixcbiAgICAgICAgICAgICAgcHJvdGVjdGVkIF90cmVlOiBDZGtUcmVlPFQ+LFxuICAgICAgICAgICAgICBwcm90ZWN0ZWQgX2RpZmZlcnM6IEl0ZXJhYmxlRGlmZmVycykge1xuICAgIHN1cGVyKF9lbGVtZW50UmVmLCBfdHJlZSk7XG4gIH1cblxuICBuZ0FmdGVyQ29udGVudEluaXQoKSB7XG4gICAgdGhpcy5fZGF0YURpZmZlciA9IHRoaXMuX2RpZmZlcnMuZmluZChbXSkuY3JlYXRlKHRoaXMuX3RyZWUudHJhY2tCeSk7XG4gICAgaWYgKCF0aGlzLl90cmVlLnRyZWVDb250cm9sLmdldENoaWxkcmVuICYmICh0eXBlb2YgbmdEZXZNb2RlID09PSAndW5kZWZpbmVkJyB8fCBuZ0Rldk1vZGUpKSB7XG4gICAgICB0aHJvdyBnZXRUcmVlQ29udHJvbEZ1bmN0aW9uc01pc3NpbmdFcnJvcigpO1xuICAgIH1cbiAgICBjb25zdCBjaGlsZHJlbk5vZGVzID0gdGhpcy5fdHJlZS50cmVlQ29udHJvbC5nZXRDaGlsZHJlbih0aGlzLmRhdGEpO1xuICAgIGlmIChBcnJheS5pc0FycmF5KGNoaWxkcmVuTm9kZXMpKSB7XG4gICAgICB0aGlzLnVwZGF0ZUNoaWxkcmVuTm9kZXMoY2hpbGRyZW5Ob2RlcyBhcyBUW10pO1xuICAgIH0gZWxzZSBpZiAoaXNPYnNlcnZhYmxlKGNoaWxkcmVuTm9kZXMpKSB7XG4gICAgICBjaGlsZHJlbk5vZGVzLnBpcGUodGFrZVVudGlsKHRoaXMuX2Rlc3Ryb3llZCkpXG4gICAgICAgIC5zdWJzY3JpYmUocmVzdWx0ID0+IHRoaXMudXBkYXRlQ2hpbGRyZW5Ob2RlcyhyZXN1bHQpKTtcbiAgICB9XG4gICAgdGhpcy5ub2RlT3V0bGV0LmNoYW5nZXMucGlwZSh0YWtlVW50aWwodGhpcy5fZGVzdHJveWVkKSlcbiAgICAgICAgLnN1YnNjcmliZSgoKSA9PiB0aGlzLnVwZGF0ZUNoaWxkcmVuTm9kZXMoKSk7XG4gIH1cblxuICBuZ09uRGVzdHJveSgpIHtcbiAgICB0aGlzLl9jbGVhcigpO1xuICAgIHN1cGVyLm5nT25EZXN0cm95KCk7XG4gIH1cblxuICAvKiogQWRkIGNoaWxkcmVuIGRhdGFOb2RlcyB0byB0aGUgTm9kZU91dGxldCAqL1xuICBwcm90ZWN0ZWQgdXBkYXRlQ2hpbGRyZW5Ob2RlcyhjaGlsZHJlbj86IFRbXSk6IHZvaWQge1xuICAgIGNvbnN0IG91dGxldCA9IHRoaXMuX2dldE5vZGVPdXRsZXQoKTtcbiAgICBpZiAoY2hpbGRyZW4pIHtcbiAgICAgIHRoaXMuX2NoaWxkcmVuID0gY2hpbGRyZW47XG4gICAgfVxuICAgIGlmIChvdXRsZXQgJiYgdGhpcy5fY2hpbGRyZW4pIHtcbiAgICAgIGNvbnN0IHZpZXdDb250YWluZXIgPSBvdXRsZXQudmlld0NvbnRhaW5lcjtcbiAgICAgIHRoaXMuX3RyZWUucmVuZGVyTm9kZUNoYW5nZXModGhpcy5fY2hpbGRyZW4sIHRoaXMuX2RhdGFEaWZmZXIsIHZpZXdDb250YWluZXIsIHRoaXMuX2RhdGEpO1xuICAgIH0gZWxzZSB7XG4gICAgICAvLyBSZXNldCB0aGUgZGF0YSBkaWZmZXIgaWYgdGhlcmUncyBubyBjaGlsZHJlbiBub2RlcyBkaXNwbGF5ZWRcbiAgICAgIHRoaXMuX2RhdGFEaWZmZXIuZGlmZihbXSk7XG4gICAgfVxuICB9XG5cbiAgLyoqIENsZWFyIHRoZSBjaGlsZHJlbiBkYXRhTm9kZXMuICovXG4gIHByb3RlY3RlZCBfY2xlYXIoKTogdm9pZCB7XG4gICAgY29uc3Qgb3V0bGV0ID0gdGhpcy5fZ2V0Tm9kZU91dGxldCgpO1xuICAgIGlmIChvdXRsZXQpIHtcbiAgICAgIG91dGxldC52aWV3Q29udGFpbmVyLmNsZWFyKCk7XG4gICAgICB0aGlzLl9kYXRhRGlmZmVyLmRpZmYoW10pO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBHZXRzIHRoZSBvdXRsZXQgZm9yIHRoZSBjdXJyZW50IG5vZGUuICovXG4gIHByaXZhdGUgX2dldE5vZGVPdXRsZXQoKSB7XG4gICAgY29uc3Qgb3V0bGV0cyA9IHRoaXMubm9kZU91dGxldDtcblxuICAgIC8vIE5vdGUgdGhhdCBzaW5jZSB3ZSB1c2UgYGRlc2NlbmRhbnRzOiB0cnVlYCBvbiB0aGUgcXVlcnksIHdlIGhhdmUgdG8gZW5zdXJlXG4gICAgLy8gdGhhdCB3ZSBkb24ndCBwaWNrIHVwIHRoZSBvdXRsZXQgb2YgYSBjaGlsZCBub2RlIGJ5IGFjY2lkZW50LlxuICAgIHJldHVybiBvdXRsZXRzICYmIG91dGxldHMuZmluZChvdXRsZXQgPT4gIW91dGxldC5fbm9kZSB8fCBvdXRsZXQuX25vZGUgPT09IHRoaXMpO1xuICB9XG59XG4iXX0=