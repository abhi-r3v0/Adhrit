/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Directionality } from '@angular/cdk/bidi';
import { coerceNumberProperty } from '@angular/cdk/coercion';
import { Directive, ElementRef, Input, Optional, Renderer2 } from '@angular/core';
import { takeUntil } from 'rxjs/operators';
import { Subject } from 'rxjs';
import { CdkTree, CdkTreeNode } from './tree';
/** Regex used to split a string on its CSS units. */
const cssUnitPattern = /([A-Za-z%]+)$/;
/**
 * Indent for the children tree dataNodes.
 * This directive will add left-padding to the node to show hierarchy.
 */
export class CdkTreeNodePadding {
    constructor(_treeNode, _tree, 
    /**
     * @deprecated _renderer parameter no longer being used. To be removed.
     * @breaking-change 11.0.0
     */
    _renderer, _element, _dir) {
        this._treeNode = _treeNode;
        this._tree = _tree;
        this._element = _element;
        this._dir = _dir;
        /** Subject that emits when the component has been destroyed. */
        this._destroyed = new Subject();
        /** CSS units used for the indentation value. */
        this.indentUnits = 'px';
        this._indent = 40;
        this._setPadding();
        if (_dir) {
            _dir.change.pipe(takeUntil(this._destroyed)).subscribe(() => this._setPadding(true));
        }
        // In Ivy the indentation binding might be set before the tree node's data has been added,
        // which means that we'll miss the first render. We have to subscribe to changes in the
        // data to ensure that everything is up to date.
        _treeNode._dataChanges.subscribe(() => this._setPadding());
    }
    /** The level of depth of the tree node. The padding will be `level * indent` pixels. */
    get level() { return this._level; }
    set level(value) { this._setLevelInput(value); }
    /**
     * The indent for each level. Can be a number or a CSS string.
     * Default number 40px from material design menu sub-menu spec.
     */
    get indent() { return this._indent; }
    set indent(indent) { this._setIndentInput(indent); }
    ngOnDestroy() {
        this._destroyed.next();
        this._destroyed.complete();
    }
    /** The padding indent value for the tree node. Returns a string with px numbers if not null. */
    _paddingIndent() {
        const nodeLevel = (this._treeNode.data && this._tree.treeControl.getLevel)
            ? this._tree.treeControl.getLevel(this._treeNode.data)
            : null;
        const level = this._level == null ? nodeLevel : this._level;
        return typeof level === 'number' ? `${level * this._indent}${this.indentUnits}` : null;
    }
    _setPadding(forceChange = false) {
        const padding = this._paddingIndent();
        if (padding !== this._currentPadding || forceChange) {
            const element = this._element.nativeElement;
            const paddingProp = this._dir && this._dir.value === 'rtl' ? 'paddingRight' : 'paddingLeft';
            const resetProp = paddingProp === 'paddingLeft' ? 'paddingRight' : 'paddingLeft';
            element.style[paddingProp] = padding || '';
            element.style[resetProp] = '';
            this._currentPadding = padding;
        }
    }
    /**
     * This has been extracted to a util because of TS 4 and VE.
     * View Engine doesn't support property rename inheritance.
     * TS 4.0 doesn't allow properties to override accessors or vice-versa.
     * @docs-private
     */
    _setLevelInput(value) {
        // Set to null as the fallback value so that _setPadding can fall back to the node level if the
        // consumer set the directive as `cdkTreeNodePadding=""`. We still want to take this value if
        // they set 0 explicitly.
        this._level = coerceNumberProperty(value, null);
        this._setPadding();
    }
    /**
     * This has been extracted to a util because of TS 4 and VE.
     * View Engine doesn't support property rename inheritance.
     * TS 4.0 doesn't allow properties to override accessors or vice-versa.
     * @docs-private
     */
    _setIndentInput(indent) {
        let value = indent;
        let units = 'px';
        if (typeof indent === 'string') {
            const parts = indent.split(cssUnitPattern);
            value = parts[0];
            units = parts[1] || units;
        }
        this.indentUnits = units;
        this._indent = coerceNumberProperty(value);
        this._setPadding();
    }
}
CdkTreeNodePadding.decorators = [
    { type: Directive, args: [{
                selector: '[cdkTreeNodePadding]',
            },] }
];
CdkTreeNodePadding.ctorParameters = () => [
    { type: CdkTreeNode },
    { type: CdkTree },
    { type: Renderer2 },
    { type: ElementRef },
    { type: Directionality, decorators: [{ type: Optional }] }
];
CdkTreeNodePadding.propDecorators = {
    level: [{ type: Input, args: ['cdkTreeNodePadding',] }],
    indent: [{ type: Input, args: ['cdkTreeNodePaddingIndent',] }]
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicGFkZGluZy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvdHJlZS9wYWRkaW5nLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBQyxjQUFjLEVBQUMsTUFBTSxtQkFBbUIsQ0FBQztBQUNqRCxPQUFPLEVBQUMsb0JBQW9CLEVBQWMsTUFBTSx1QkFBdUIsQ0FBQztBQUN4RSxPQUFPLEVBQUMsU0FBUyxFQUFFLFVBQVUsRUFBRSxLQUFLLEVBQWEsUUFBUSxFQUFFLFNBQVMsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUMzRixPQUFPLEVBQUMsU0FBUyxFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFDekMsT0FBTyxFQUFDLE9BQU8sRUFBQyxNQUFNLE1BQU0sQ0FBQztBQUM3QixPQUFPLEVBQUMsT0FBTyxFQUFFLFdBQVcsRUFBQyxNQUFNLFFBQVEsQ0FBQztBQUU1QyxxREFBcUQ7QUFDckQsTUFBTSxjQUFjLEdBQUcsZUFBZSxDQUFDO0FBRXZDOzs7R0FHRztBQUlILE1BQU0sT0FBTyxrQkFBa0I7SUF5QjdCLFlBQW9CLFNBQXlCLEVBQ3pCLEtBQWlCO0lBQ3pCOzs7T0FHRztJQUNILFNBQW9CLEVBQ1osUUFBaUMsRUFDckIsSUFBb0I7UUFSaEMsY0FBUyxHQUFULFNBQVMsQ0FBZ0I7UUFDekIsVUFBSyxHQUFMLEtBQUssQ0FBWTtRQU1qQixhQUFRLEdBQVIsUUFBUSxDQUF5QjtRQUNyQixTQUFJLEdBQUosSUFBSSxDQUFnQjtRQTdCcEQsZ0VBQWdFO1FBQ3hELGVBQVUsR0FBRyxJQUFJLE9BQU8sRUFBUSxDQUFDO1FBRXpDLGdEQUFnRDtRQUNoRCxnQkFBVyxHQUFHLElBQUksQ0FBQztRQWVuQixZQUFPLEdBQVcsRUFBRSxDQUFDO1FBV25CLElBQUksQ0FBQyxXQUFXLEVBQUUsQ0FBQztRQUNuQixJQUFJLElBQUksRUFBRTtZQUNSLElBQUksQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsVUFBVSxDQUFDLENBQUMsQ0FBQyxTQUFTLENBQUMsR0FBRyxFQUFFLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDO1NBQ3RGO1FBRUQsMEZBQTBGO1FBQzFGLHVGQUF1RjtRQUN2RixnREFBZ0Q7UUFDaEQsU0FBUyxDQUFDLFlBQVksQ0FBQyxTQUFTLENBQUMsR0FBRyxFQUFFLENBQUMsSUFBSSxDQUFDLFdBQVcsRUFBRSxDQUFDLENBQUM7SUFDN0QsQ0FBQztJQWpDRCx3RkFBd0Y7SUFDeEYsSUFDSSxLQUFLLEtBQWEsT0FBTyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQztJQUMzQyxJQUFJLEtBQUssQ0FBQyxLQUFhLElBQUksSUFBSSxDQUFDLGNBQWMsQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUM7SUFHeEQ7OztPQUdHO0lBQ0gsSUFDSSxNQUFNLEtBQXNCLE9BQU8sSUFBSSxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUM7SUFDdEQsSUFBSSxNQUFNLENBQUMsTUFBdUIsSUFBSSxJQUFJLENBQUMsZUFBZSxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQztJQXVCckUsV0FBVztRQUNULElBQUksQ0FBQyxVQUFVLENBQUMsSUFBSSxFQUFFLENBQUM7UUFDdkIsSUFBSSxDQUFDLFVBQVUsQ0FBQyxRQUFRLEVBQUUsQ0FBQztJQUM3QixDQUFDO0lBRUQsZ0dBQWdHO0lBQ2hHLGNBQWM7UUFDWixNQUFNLFNBQVMsR0FBRyxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsSUFBSSxJQUFJLElBQUksQ0FBQyxLQUFLLENBQUMsV0FBVyxDQUFDLFFBQVEsQ0FBQztZQUN4RSxDQUFDLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxXQUFXLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsSUFBSSxDQUFDO1lBQ3RELENBQUMsQ0FBQyxJQUFJLENBQUM7UUFDVCxNQUFNLEtBQUssR0FBRyxJQUFJLENBQUMsTUFBTSxJQUFJLElBQUksQ0FBQyxDQUFDLENBQUMsU0FBUyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDO1FBQzVELE9BQU8sT0FBTyxLQUFLLEtBQUssUUFBUSxDQUFDLENBQUMsQ0FBQyxHQUFHLEtBQUssR0FBRyxJQUFJLENBQUMsT0FBTyxHQUFHLElBQUksQ0FBQyxXQUFXLEVBQUUsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDO0lBQ3pGLENBQUM7SUFFRCxXQUFXLENBQUMsV0FBVyxHQUFHLEtBQUs7UUFDN0IsTUFBTSxPQUFPLEdBQUcsSUFBSSxDQUFDLGNBQWMsRUFBRSxDQUFDO1FBRXRDLElBQUksT0FBTyxLQUFLLElBQUksQ0FBQyxlQUFlLElBQUksV0FBVyxFQUFFO1lBQ25ELE1BQU0sT0FBTyxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsYUFBYSxDQUFDO1lBQzVDLE1BQU0sV0FBVyxHQUFHLElBQUksQ0FBQyxJQUFJLElBQUksSUFBSSxDQUFDLElBQUksQ0FBQyxLQUFLLEtBQUssS0FBSyxDQUFDLENBQUMsQ0FBQyxjQUFjLENBQUMsQ0FBQyxDQUFDLGFBQWEsQ0FBQztZQUM1RixNQUFNLFNBQVMsR0FBRyxXQUFXLEtBQUssYUFBYSxDQUFDLENBQUMsQ0FBQyxjQUFjLENBQUMsQ0FBQyxDQUFDLGFBQWEsQ0FBQztZQUNqRixPQUFPLENBQUMsS0FBSyxDQUFDLFdBQVcsQ0FBQyxHQUFHLE9BQU8sSUFBSSxFQUFFLENBQUM7WUFDM0MsT0FBTyxDQUFDLEtBQUssQ0FBQyxTQUFTLENBQUMsR0FBRyxFQUFFLENBQUM7WUFDOUIsSUFBSSxDQUFDLGVBQWUsR0FBRyxPQUFPLENBQUM7U0FDaEM7SUFDSCxDQUFDO0lBRUQ7Ozs7O09BS0c7SUFDTyxjQUFjLENBQUMsS0FBYTtRQUNwQywrRkFBK0Y7UUFDL0YsNkZBQTZGO1FBQzdGLHlCQUF5QjtRQUN6QixJQUFJLENBQUMsTUFBTSxHQUFHLG9CQUFvQixDQUFDLEtBQUssRUFBRSxJQUFJLENBQUUsQ0FBQztRQUNqRCxJQUFJLENBQUMsV0FBVyxFQUFFLENBQUM7SUFDckIsQ0FBQztJQUVEOzs7OztPQUtHO0lBQ08sZUFBZSxDQUFDLE1BQXVCO1FBQy9DLElBQUksS0FBSyxHQUFHLE1BQU0sQ0FBQztRQUNuQixJQUFJLEtBQUssR0FBRyxJQUFJLENBQUM7UUFFakIsSUFBSSxPQUFPLE1BQU0sS0FBSyxRQUFRLEVBQUU7WUFDOUIsTUFBTSxLQUFLLEdBQUcsTUFBTSxDQUFDLEtBQUssQ0FBQyxjQUFjLENBQUMsQ0FBQztZQUMzQyxLQUFLLEdBQUcsS0FBSyxDQUFDLENBQUMsQ0FBQyxDQUFDO1lBQ2pCLEtBQUssR0FBRyxLQUFLLENBQUMsQ0FBQyxDQUFDLElBQUksS0FBSyxDQUFDO1NBQzNCO1FBRUQsSUFBSSxDQUFDLFdBQVcsR0FBRyxLQUFLLENBQUM7UUFDekIsSUFBSSxDQUFDLE9BQU8sR0FBRyxvQkFBb0IsQ0FBQyxLQUFLLENBQUMsQ0FBQztRQUMzQyxJQUFJLENBQUMsV0FBVyxFQUFFLENBQUM7SUFDckIsQ0FBQzs7O1lBNUdGLFNBQVMsU0FBQztnQkFDVCxRQUFRLEVBQUUsc0JBQXNCO2FBQ2pDOzs7WUFYZ0IsV0FBVztZQUFwQixPQUFPO1lBSDRDLFNBQVM7WUFBakQsVUFBVTtZQUZyQixjQUFjLHVCQWtEUCxRQUFROzs7b0JBdEJwQixLQUFLLFNBQUMsb0JBQW9CO3FCQVMxQixLQUFLLFNBQUMsMEJBQTBCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7RGlyZWN0aW9uYWxpdHl9IGZyb20gJ0Bhbmd1bGFyL2Nkay9iaWRpJztcbmltcG9ydCB7Y29lcmNlTnVtYmVyUHJvcGVydHksIE51bWJlcklucHV0fSBmcm9tICdAYW5ndWxhci9jZGsvY29lcmNpb24nO1xuaW1wb3J0IHtEaXJlY3RpdmUsIEVsZW1lbnRSZWYsIElucHV0LCBPbkRlc3Ryb3ksIE9wdGlvbmFsLCBSZW5kZXJlcjJ9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHt0YWtlVW50aWx9IGZyb20gJ3J4anMvb3BlcmF0b3JzJztcbmltcG9ydCB7U3ViamVjdH0gZnJvbSAncnhqcyc7XG5pbXBvcnQge0Nka1RyZWUsIENka1RyZWVOb2RlfSBmcm9tICcuL3RyZWUnO1xuXG4vKiogUmVnZXggdXNlZCB0byBzcGxpdCBhIHN0cmluZyBvbiBpdHMgQ1NTIHVuaXRzLiAqL1xuY29uc3QgY3NzVW5pdFBhdHRlcm4gPSAvKFtBLVphLXolXSspJC87XG5cbi8qKlxuICogSW5kZW50IGZvciB0aGUgY2hpbGRyZW4gdHJlZSBkYXRhTm9kZXMuXG4gKiBUaGlzIGRpcmVjdGl2ZSB3aWxsIGFkZCBsZWZ0LXBhZGRpbmcgdG8gdGhlIG5vZGUgdG8gc2hvdyBoaWVyYXJjaHkuXG4gKi9cbkBEaXJlY3RpdmUoe1xuICBzZWxlY3RvcjogJ1tjZGtUcmVlTm9kZVBhZGRpbmddJyxcbn0pXG5leHBvcnQgY2xhc3MgQ2RrVHJlZU5vZGVQYWRkaW5nPFQ+IGltcGxlbWVudHMgT25EZXN0cm95IHtcbiAgLyoqIEN1cnJlbnQgcGFkZGluZyB2YWx1ZSBhcHBsaWVkIHRvIHRoZSBlbGVtZW50LiBVc2VkIHRvIGF2b2lkIHVubmVjZXNzYXJpbHkgaGl0dGluZyB0aGUgRE9NLiAqL1xuICBwcml2YXRlIF9jdXJyZW50UGFkZGluZzogc3RyaW5nfG51bGw7XG5cbiAgLyoqIFN1YmplY3QgdGhhdCBlbWl0cyB3aGVuIHRoZSBjb21wb25lbnQgaGFzIGJlZW4gZGVzdHJveWVkLiAqL1xuICBwcml2YXRlIF9kZXN0cm95ZWQgPSBuZXcgU3ViamVjdDx2b2lkPigpO1xuXG4gIC8qKiBDU1MgdW5pdHMgdXNlZCBmb3IgdGhlIGluZGVudGF0aW9uIHZhbHVlLiAqL1xuICBpbmRlbnRVbml0cyA9ICdweCc7XG5cbiAgLyoqIFRoZSBsZXZlbCBvZiBkZXB0aCBvZiB0aGUgdHJlZSBub2RlLiBUaGUgcGFkZGluZyB3aWxsIGJlIGBsZXZlbCAqIGluZGVudGAgcGl4ZWxzLiAqL1xuICBASW5wdXQoJ2Nka1RyZWVOb2RlUGFkZGluZycpXG4gIGdldCBsZXZlbCgpOiBudW1iZXIgeyByZXR1cm4gdGhpcy5fbGV2ZWw7IH1cbiAgc2V0IGxldmVsKHZhbHVlOiBudW1iZXIpIHsgdGhpcy5fc2V0TGV2ZWxJbnB1dCh2YWx1ZSk7IH1cbiAgX2xldmVsOiBudW1iZXI7XG5cbiAgLyoqXG4gICAqIFRoZSBpbmRlbnQgZm9yIGVhY2ggbGV2ZWwuIENhbiBiZSBhIG51bWJlciBvciBhIENTUyBzdHJpbmcuXG4gICAqIERlZmF1bHQgbnVtYmVyIDQwcHggZnJvbSBtYXRlcmlhbCBkZXNpZ24gbWVudSBzdWItbWVudSBzcGVjLlxuICAgKi9cbiAgQElucHV0KCdjZGtUcmVlTm9kZVBhZGRpbmdJbmRlbnQnKVxuICBnZXQgaW5kZW50KCk6IG51bWJlciB8IHN0cmluZyB7IHJldHVybiB0aGlzLl9pbmRlbnQ7IH1cbiAgc2V0IGluZGVudChpbmRlbnQ6IG51bWJlciB8IHN0cmluZykgeyB0aGlzLl9zZXRJbmRlbnRJbnB1dChpbmRlbnQpOyB9XG4gIF9pbmRlbnQ6IG51bWJlciA9IDQwO1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgX3RyZWVOb2RlOiBDZGtUcmVlTm9kZTxUPixcbiAgICAgICAgICAgICAgcHJpdmF0ZSBfdHJlZTogQ2RrVHJlZTxUPixcbiAgICAgICAgICAgICAgLyoqXG4gICAgICAgICAgICAgICAqIEBkZXByZWNhdGVkIF9yZW5kZXJlciBwYXJhbWV0ZXIgbm8gbG9uZ2VyIGJlaW5nIHVzZWQuIFRvIGJlIHJlbW92ZWQuXG4gICAgICAgICAgICAgICAqIEBicmVha2luZy1jaGFuZ2UgMTEuMC4wXG4gICAgICAgICAgICAgICAqL1xuICAgICAgICAgICAgICBfcmVuZGVyZXI6IFJlbmRlcmVyMixcbiAgICAgICAgICAgICAgcHJpdmF0ZSBfZWxlbWVudDogRWxlbWVudFJlZjxIVE1MRWxlbWVudD4sXG4gICAgICAgICAgICAgIEBPcHRpb25hbCgpIHByaXZhdGUgX2RpcjogRGlyZWN0aW9uYWxpdHkpIHtcbiAgICB0aGlzLl9zZXRQYWRkaW5nKCk7XG4gICAgaWYgKF9kaXIpIHtcbiAgICAgIF9kaXIuY2hhbmdlLnBpcGUodGFrZVVudGlsKHRoaXMuX2Rlc3Ryb3llZCkpLnN1YnNjcmliZSgoKSA9PiB0aGlzLl9zZXRQYWRkaW5nKHRydWUpKTtcbiAgICB9XG5cbiAgICAvLyBJbiBJdnkgdGhlIGluZGVudGF0aW9uIGJpbmRpbmcgbWlnaHQgYmUgc2V0IGJlZm9yZSB0aGUgdHJlZSBub2RlJ3MgZGF0YSBoYXMgYmVlbiBhZGRlZCxcbiAgICAvLyB3aGljaCBtZWFucyB0aGF0IHdlJ2xsIG1pc3MgdGhlIGZpcnN0IHJlbmRlci4gV2UgaGF2ZSB0byBzdWJzY3JpYmUgdG8gY2hhbmdlcyBpbiB0aGVcbiAgICAvLyBkYXRhIHRvIGVuc3VyZSB0aGF0IGV2ZXJ5dGhpbmcgaXMgdXAgdG8gZGF0ZS5cbiAgICBfdHJlZU5vZGUuX2RhdGFDaGFuZ2VzLnN1YnNjcmliZSgoKSA9PiB0aGlzLl9zZXRQYWRkaW5nKCkpO1xuICB9XG5cbiAgbmdPbkRlc3Ryb3koKSB7XG4gICAgdGhpcy5fZGVzdHJveWVkLm5leHQoKTtcbiAgICB0aGlzLl9kZXN0cm95ZWQuY29tcGxldGUoKTtcbiAgfVxuXG4gIC8qKiBUaGUgcGFkZGluZyBpbmRlbnQgdmFsdWUgZm9yIHRoZSB0cmVlIG5vZGUuIFJldHVybnMgYSBzdHJpbmcgd2l0aCBweCBudW1iZXJzIGlmIG5vdCBudWxsLiAqL1xuICBfcGFkZGluZ0luZGVudCgpOiBzdHJpbmd8bnVsbCB7XG4gICAgY29uc3Qgbm9kZUxldmVsID0gKHRoaXMuX3RyZWVOb2RlLmRhdGEgJiYgdGhpcy5fdHJlZS50cmVlQ29udHJvbC5nZXRMZXZlbClcbiAgICAgID8gdGhpcy5fdHJlZS50cmVlQ29udHJvbC5nZXRMZXZlbCh0aGlzLl90cmVlTm9kZS5kYXRhKVxuICAgICAgOiBudWxsO1xuICAgIGNvbnN0IGxldmVsID0gdGhpcy5fbGV2ZWwgPT0gbnVsbCA/IG5vZGVMZXZlbCA6IHRoaXMuX2xldmVsO1xuICAgIHJldHVybiB0eXBlb2YgbGV2ZWwgPT09ICdudW1iZXInID8gYCR7bGV2ZWwgKiB0aGlzLl9pbmRlbnR9JHt0aGlzLmluZGVudFVuaXRzfWAgOiBudWxsO1xuICB9XG5cbiAgX3NldFBhZGRpbmcoZm9yY2VDaGFuZ2UgPSBmYWxzZSkge1xuICAgIGNvbnN0IHBhZGRpbmcgPSB0aGlzLl9wYWRkaW5nSW5kZW50KCk7XG5cbiAgICBpZiAocGFkZGluZyAhPT0gdGhpcy5fY3VycmVudFBhZGRpbmcgfHwgZm9yY2VDaGFuZ2UpIHtcbiAgICAgIGNvbnN0IGVsZW1lbnQgPSB0aGlzLl9lbGVtZW50Lm5hdGl2ZUVsZW1lbnQ7XG4gICAgICBjb25zdCBwYWRkaW5nUHJvcCA9IHRoaXMuX2RpciAmJiB0aGlzLl9kaXIudmFsdWUgPT09ICdydGwnID8gJ3BhZGRpbmdSaWdodCcgOiAncGFkZGluZ0xlZnQnO1xuICAgICAgY29uc3QgcmVzZXRQcm9wID0gcGFkZGluZ1Byb3AgPT09ICdwYWRkaW5nTGVmdCcgPyAncGFkZGluZ1JpZ2h0JyA6ICdwYWRkaW5nTGVmdCc7XG4gICAgICBlbGVtZW50LnN0eWxlW3BhZGRpbmdQcm9wXSA9IHBhZGRpbmcgfHwgJyc7XG4gICAgICBlbGVtZW50LnN0eWxlW3Jlc2V0UHJvcF0gPSAnJztcbiAgICAgIHRoaXMuX2N1cnJlbnRQYWRkaW5nID0gcGFkZGluZztcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogVGhpcyBoYXMgYmVlbiBleHRyYWN0ZWQgdG8gYSB1dGlsIGJlY2F1c2Ugb2YgVFMgNCBhbmQgVkUuXG4gICAqIFZpZXcgRW5naW5lIGRvZXNuJ3Qgc3VwcG9ydCBwcm9wZXJ0eSByZW5hbWUgaW5oZXJpdGFuY2UuXG4gICAqIFRTIDQuMCBkb2Vzbid0IGFsbG93IHByb3BlcnRpZXMgdG8gb3ZlcnJpZGUgYWNjZXNzb3JzIG9yIHZpY2UtdmVyc2EuXG4gICAqIEBkb2NzLXByaXZhdGVcbiAgICovXG4gIHByb3RlY3RlZCBfc2V0TGV2ZWxJbnB1dCh2YWx1ZTogbnVtYmVyKSB7XG4gICAgLy8gU2V0IHRvIG51bGwgYXMgdGhlIGZhbGxiYWNrIHZhbHVlIHNvIHRoYXQgX3NldFBhZGRpbmcgY2FuIGZhbGwgYmFjayB0byB0aGUgbm9kZSBsZXZlbCBpZiB0aGVcbiAgICAvLyBjb25zdW1lciBzZXQgdGhlIGRpcmVjdGl2ZSBhcyBgY2RrVHJlZU5vZGVQYWRkaW5nPVwiXCJgLiBXZSBzdGlsbCB3YW50IHRvIHRha2UgdGhpcyB2YWx1ZSBpZlxuICAgIC8vIHRoZXkgc2V0IDAgZXhwbGljaXRseS5cbiAgICB0aGlzLl9sZXZlbCA9IGNvZXJjZU51bWJlclByb3BlcnR5KHZhbHVlLCBudWxsKSE7XG4gICAgdGhpcy5fc2V0UGFkZGluZygpO1xuICB9XG5cbiAgLyoqXG4gICAqIFRoaXMgaGFzIGJlZW4gZXh0cmFjdGVkIHRvIGEgdXRpbCBiZWNhdXNlIG9mIFRTIDQgYW5kIFZFLlxuICAgKiBWaWV3IEVuZ2luZSBkb2Vzbid0IHN1cHBvcnQgcHJvcGVydHkgcmVuYW1lIGluaGVyaXRhbmNlLlxuICAgKiBUUyA0LjAgZG9lc24ndCBhbGxvdyBwcm9wZXJ0aWVzIHRvIG92ZXJyaWRlIGFjY2Vzc29ycyBvciB2aWNlLXZlcnNhLlxuICAgKiBAZG9jcy1wcml2YXRlXG4gICAqL1xuICBwcm90ZWN0ZWQgX3NldEluZGVudElucHV0KGluZGVudDogbnVtYmVyIHwgc3RyaW5nKSB7XG4gICAgbGV0IHZhbHVlID0gaW5kZW50O1xuICAgIGxldCB1bml0cyA9ICdweCc7XG5cbiAgICBpZiAodHlwZW9mIGluZGVudCA9PT0gJ3N0cmluZycpIHtcbiAgICAgIGNvbnN0IHBhcnRzID0gaW5kZW50LnNwbGl0KGNzc1VuaXRQYXR0ZXJuKTtcbiAgICAgIHZhbHVlID0gcGFydHNbMF07XG4gICAgICB1bml0cyA9IHBhcnRzWzFdIHx8IHVuaXRzO1xuICAgIH1cblxuICAgIHRoaXMuaW5kZW50VW5pdHMgPSB1bml0cztcbiAgICB0aGlzLl9pbmRlbnQgPSBjb2VyY2VOdW1iZXJQcm9wZXJ0eSh2YWx1ZSk7XG4gICAgdGhpcy5fc2V0UGFkZGluZygpO1xuICB9XG5cbiAgc3RhdGljIG5nQWNjZXB0SW5wdXRUeXBlX2xldmVsOiBOdW1iZXJJbnB1dDtcbn1cbiJdfQ==