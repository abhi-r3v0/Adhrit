/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { isObservable } from 'rxjs';
import { take, filter } from 'rxjs/operators';
import { BaseTreeControl } from './base-tree-control';
/** Nested tree control. Able to expand/collapse a subtree recursively for NestedNode type. */
export class NestedTreeControl extends BaseTreeControl {
    /** Construct with nested tree function getChildren. */
    constructor(getChildren, options) {
        super();
        this.getChildren = getChildren;
        this.options = options;
        if (this.options) {
            this.trackBy = this.options.trackBy;
        }
    }
    /**
     * Expands all dataNodes in the tree.
     *
     * To make this working, the `dataNodes` variable of the TreeControl must be set to all root level
     * data nodes of the tree.
     */
    expandAll() {
        this.expansionModel.clear();
        const allNodes = this.dataNodes.reduce((accumulator, dataNode) => [...accumulator, ...this.getDescendants(dataNode), dataNode], []);
        this.expansionModel.select(...allNodes.map(node => this._trackByValue(node)));
    }
    /** Gets a list of descendant dataNodes of a subtree rooted at given data node recursively. */
    getDescendants(dataNode) {
        const descendants = [];
        this._getDescendants(descendants, dataNode);
        // Remove the node itself
        return descendants.splice(1);
    }
    /** A helper function to get descendants recursively. */
    _getDescendants(descendants, dataNode) {
        descendants.push(dataNode);
        const childrenNodes = this.getChildren(dataNode);
        if (Array.isArray(childrenNodes)) {
            childrenNodes.forEach((child) => this._getDescendants(descendants, child));
        }
        else if (isObservable(childrenNodes)) {
            // TypeScript as of version 3.5 doesn't seem to treat `Boolean` like a function that
            // returns a `boolean` specifically in the context of `filter`, so we manually clarify that.
            childrenNodes.pipe(take(1), filter(Boolean))
                .subscribe(children => {
                for (const child of children) {
                    this._getDescendants(descendants, child);
                }
            });
        }
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmVzdGVkLXRyZWUtY29udHJvbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvdHJlZS9jb250cm9sL25lc3RlZC10cmVlLWNvbnRyb2wudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBQ0gsT0FBTyxFQUFhLFlBQVksRUFBQyxNQUFNLE1BQU0sQ0FBQztBQUM5QyxPQUFPLEVBQUMsSUFBSSxFQUFFLE1BQU0sRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBQzVDLE9BQU8sRUFBQyxlQUFlLEVBQUMsTUFBTSxxQkFBcUIsQ0FBQztBQU9wRCw4RkFBOEY7QUFDOUYsTUFBTSxPQUFPLGlCQUE0QixTQUFRLGVBQXFCO0lBQ3BFLHVEQUF1RDtJQUN2RCxZQUNXLFdBQXVFLEVBQ3ZFLE9BQXdDO1FBQ2pELEtBQUssRUFBRSxDQUFDO1FBRkMsZ0JBQVcsR0FBWCxXQUFXLENBQTREO1FBQ3ZFLFlBQU8sR0FBUCxPQUFPLENBQWlDO1FBR2pELElBQUksSUFBSSxDQUFDLE9BQU8sRUFBRTtZQUNoQixJQUFJLENBQUMsT0FBTyxHQUFHLElBQUksQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDO1NBQ3JDO0lBQ0gsQ0FBQztJQUVEOzs7OztPQUtHO0lBQ0gsU0FBUztRQUNQLElBQUksQ0FBQyxjQUFjLENBQUMsS0FBSyxFQUFFLENBQUM7UUFDNUIsTUFBTSxRQUFRLEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQyxNQUFNLENBQUMsQ0FBQyxXQUFnQixFQUFFLFFBQVEsRUFBRSxFQUFFLENBQ2xFLENBQUMsR0FBRyxXQUFXLEVBQUUsR0FBRyxJQUFJLENBQUMsY0FBYyxDQUFDLFFBQVEsQ0FBQyxFQUFFLFFBQVEsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxDQUFDO1FBQ3RFLElBQUksQ0FBQyxjQUFjLENBQUMsTUFBTSxDQUFDLEdBQUcsUUFBUSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxhQUFhLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQ2hGLENBQUM7SUFFRCw4RkFBOEY7SUFDOUYsY0FBYyxDQUFDLFFBQVc7UUFDeEIsTUFBTSxXQUFXLEdBQVEsRUFBRSxDQUFDO1FBRTVCLElBQUksQ0FBQyxlQUFlLENBQUMsV0FBVyxFQUFFLFFBQVEsQ0FBQyxDQUFDO1FBQzVDLHlCQUF5QjtRQUN6QixPQUFPLFdBQVcsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLENBQUM7SUFDL0IsQ0FBQztJQUVELHdEQUF3RDtJQUM5QyxlQUFlLENBQUMsV0FBZ0IsRUFBRSxRQUFXO1FBQ3JELFdBQVcsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUM7UUFDM0IsTUFBTSxhQUFhLEdBQUcsSUFBSSxDQUFDLFdBQVcsQ0FBQyxRQUFRLENBQUMsQ0FBQztRQUNqRCxJQUFJLEtBQUssQ0FBQyxPQUFPLENBQUMsYUFBYSxDQUFDLEVBQUU7WUFDaEMsYUFBYSxDQUFDLE9BQU8sQ0FBQyxDQUFDLEtBQVEsRUFBRSxFQUFFLENBQUMsSUFBSSxDQUFDLGVBQWUsQ0FBQyxXQUFXLEVBQUUsS0FBSyxDQUFDLENBQUMsQ0FBQztTQUMvRTthQUFNLElBQUksWUFBWSxDQUFDLGFBQWEsQ0FBQyxFQUFFO1lBQ3RDLG9GQUFvRjtZQUNwRiw0RkFBNEY7WUFDNUYsYUFBYSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLEVBQUUsTUFBTSxDQUFDLE9BQXdCLENBQUMsQ0FBQztpQkFDeEQsU0FBUyxDQUFDLFFBQVEsQ0FBQyxFQUFFO2dCQUNwQixLQUFLLE1BQU0sS0FBSyxJQUFJLFFBQVEsRUFBRTtvQkFDNUIsSUFBSSxDQUFDLGVBQWUsQ0FBQyxXQUFXLEVBQUUsS0FBSyxDQUFDLENBQUM7aUJBQzFDO1lBQ0gsQ0FBQyxDQUFDLENBQUM7U0FDUjtJQUNILENBQUM7Q0FDRiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IHtPYnNlcnZhYmxlLCBpc09ic2VydmFibGV9IGZyb20gJ3J4anMnO1xuaW1wb3J0IHt0YWtlLCBmaWx0ZXJ9IGZyb20gJ3J4anMvb3BlcmF0b3JzJztcbmltcG9ydCB7QmFzZVRyZWVDb250cm9sfSBmcm9tICcuL2Jhc2UtdHJlZS1jb250cm9sJztcblxuLyoqIE9wdGlvbmFsIHNldCBvZiBjb25maWd1cmF0aW9uIHRoYXQgY2FuIGJlIHByb3ZpZGVkIHRvIHRoZSBOZXN0ZWRUcmVlQ29udHJvbC4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgTmVzdGVkVHJlZUNvbnRyb2xPcHRpb25zPFQsIEs+IHtcbiAgdHJhY2tCeT86IChkYXRhTm9kZTogVCkgPT4gSztcbn1cblxuLyoqIE5lc3RlZCB0cmVlIGNvbnRyb2wuIEFibGUgdG8gZXhwYW5kL2NvbGxhcHNlIGEgc3VidHJlZSByZWN1cnNpdmVseSBmb3IgTmVzdGVkTm9kZSB0eXBlLiAqL1xuZXhwb3J0IGNsYXNzIE5lc3RlZFRyZWVDb250cm9sPFQsIEsgPSBUPiBleHRlbmRzIEJhc2VUcmVlQ29udHJvbDxULCBLPiB7XG4gIC8qKiBDb25zdHJ1Y3Qgd2l0aCBuZXN0ZWQgdHJlZSBmdW5jdGlvbiBnZXRDaGlsZHJlbi4gKi9cbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgZ2V0Q2hpbGRyZW46IChkYXRhTm9kZTogVCkgPT4gKE9ic2VydmFibGU8VFtdPnwgVFtdIHwgdW5kZWZpbmVkIHwgbnVsbCksXG4gICAgICBwdWJsaWMgb3B0aW9ucz86IE5lc3RlZFRyZWVDb250cm9sT3B0aW9uczxULCBLPikge1xuICAgIHN1cGVyKCk7XG5cbiAgICBpZiAodGhpcy5vcHRpb25zKSB7XG4gICAgICB0aGlzLnRyYWNrQnkgPSB0aGlzLm9wdGlvbnMudHJhY2tCeTtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogRXhwYW5kcyBhbGwgZGF0YU5vZGVzIGluIHRoZSB0cmVlLlxuICAgKlxuICAgKiBUbyBtYWtlIHRoaXMgd29ya2luZywgdGhlIGBkYXRhTm9kZXNgIHZhcmlhYmxlIG9mIHRoZSBUcmVlQ29udHJvbCBtdXN0IGJlIHNldCB0byBhbGwgcm9vdCBsZXZlbFxuICAgKiBkYXRhIG5vZGVzIG9mIHRoZSB0cmVlLlxuICAgKi9cbiAgZXhwYW5kQWxsKCk6IHZvaWQge1xuICAgIHRoaXMuZXhwYW5zaW9uTW9kZWwuY2xlYXIoKTtcbiAgICBjb25zdCBhbGxOb2RlcyA9IHRoaXMuZGF0YU5vZGVzLnJlZHVjZSgoYWNjdW11bGF0b3I6IFRbXSwgZGF0YU5vZGUpID0+XG4gICAgICAgIFsuLi5hY2N1bXVsYXRvciwgLi4udGhpcy5nZXREZXNjZW5kYW50cyhkYXRhTm9kZSksIGRhdGFOb2RlXSwgW10pO1xuICAgIHRoaXMuZXhwYW5zaW9uTW9kZWwuc2VsZWN0KC4uLmFsbE5vZGVzLm1hcChub2RlID0+IHRoaXMuX3RyYWNrQnlWYWx1ZShub2RlKSkpO1xuICB9XG5cbiAgLyoqIEdldHMgYSBsaXN0IG9mIGRlc2NlbmRhbnQgZGF0YU5vZGVzIG9mIGEgc3VidHJlZSByb290ZWQgYXQgZ2l2ZW4gZGF0YSBub2RlIHJlY3Vyc2l2ZWx5LiAqL1xuICBnZXREZXNjZW5kYW50cyhkYXRhTm9kZTogVCk6IFRbXSB7XG4gICAgY29uc3QgZGVzY2VuZGFudHM6IFRbXSA9IFtdO1xuXG4gICAgdGhpcy5fZ2V0RGVzY2VuZGFudHMoZGVzY2VuZGFudHMsIGRhdGFOb2RlKTtcbiAgICAvLyBSZW1vdmUgdGhlIG5vZGUgaXRzZWxmXG4gICAgcmV0dXJuIGRlc2NlbmRhbnRzLnNwbGljZSgxKTtcbiAgfVxuXG4gIC8qKiBBIGhlbHBlciBmdW5jdGlvbiB0byBnZXQgZGVzY2VuZGFudHMgcmVjdXJzaXZlbHkuICovXG4gIHByb3RlY3RlZCBfZ2V0RGVzY2VuZGFudHMoZGVzY2VuZGFudHM6IFRbXSwgZGF0YU5vZGU6IFQpOiB2b2lkIHtcbiAgICBkZXNjZW5kYW50cy5wdXNoKGRhdGFOb2RlKTtcbiAgICBjb25zdCBjaGlsZHJlbk5vZGVzID0gdGhpcy5nZXRDaGlsZHJlbihkYXRhTm9kZSk7XG4gICAgaWYgKEFycmF5LmlzQXJyYXkoY2hpbGRyZW5Ob2RlcykpIHtcbiAgICAgIGNoaWxkcmVuTm9kZXMuZm9yRWFjaCgoY2hpbGQ6IFQpID0+IHRoaXMuX2dldERlc2NlbmRhbnRzKGRlc2NlbmRhbnRzLCBjaGlsZCkpO1xuICAgIH0gZWxzZSBpZiAoaXNPYnNlcnZhYmxlKGNoaWxkcmVuTm9kZXMpKSB7XG4gICAgICAvLyBUeXBlU2NyaXB0IGFzIG9mIHZlcnNpb24gMy41IGRvZXNuJ3Qgc2VlbSB0byB0cmVhdCBgQm9vbGVhbmAgbGlrZSBhIGZ1bmN0aW9uIHRoYXRcbiAgICAgIC8vIHJldHVybnMgYSBgYm9vbGVhbmAgc3BlY2lmaWNhbGx5IGluIHRoZSBjb250ZXh0IG9mIGBmaWx0ZXJgLCBzbyB3ZSBtYW51YWxseSBjbGFyaWZ5IHRoYXQuXG4gICAgICBjaGlsZHJlbk5vZGVzLnBpcGUodGFrZSgxKSwgZmlsdGVyKEJvb2xlYW4gYXMgKCkgPT4gYm9vbGVhbikpXG4gICAgICAgICAgLnN1YnNjcmliZShjaGlsZHJlbiA9PiB7XG4gICAgICAgICAgICBmb3IgKGNvbnN0IGNoaWxkIG9mIGNoaWxkcmVuKSB7XG4gICAgICAgICAgICAgIHRoaXMuX2dldERlc2NlbmRhbnRzKGRlc2NlbmRhbnRzLCBjaGlsZCk7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfSk7XG4gICAgfVxuICB9XG59XG4iXX0=