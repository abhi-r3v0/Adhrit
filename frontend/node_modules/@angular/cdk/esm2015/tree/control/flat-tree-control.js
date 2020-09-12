/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { BaseTreeControl } from './base-tree-control';
/** Flat tree control. Able to expand/collapse a subtree recursively for flattened tree. */
export class FlatTreeControl extends BaseTreeControl {
    /** Construct with flat tree data node functions getLevel and isExpandable. */
    constructor(getLevel, isExpandable, options) {
        super();
        this.getLevel = getLevel;
        this.isExpandable = isExpandable;
        this.options = options;
        if (this.options) {
            this.trackBy = this.options.trackBy;
        }
    }
    /**
     * Gets a list of the data node's subtree of descendent data nodes.
     *
     * To make this working, the `dataNodes` of the TreeControl must be flattened tree nodes
     * with correct levels.
     */
    getDescendants(dataNode) {
        const startIndex = this.dataNodes.indexOf(dataNode);
        const results = [];
        // Goes through flattened tree nodes in the `dataNodes` array, and get all descendants.
        // The level of descendants of a tree node must be greater than the level of the given
        // tree node.
        // If we reach a node whose level is equal to the level of the tree node, we hit a sibling.
        // If we reach a node whose level is greater than the level of the tree node, we hit a
        // sibling of an ancestor.
        for (let i = startIndex + 1; i < this.dataNodes.length && this.getLevel(dataNode) < this.getLevel(this.dataNodes[i]); i++) {
            results.push(this.dataNodes[i]);
        }
        return results;
    }
    /**
     * Expands all data nodes in the tree.
     *
     * To make this working, the `dataNodes` variable of the TreeControl must be set to all flattened
     * data nodes of the tree.
     */
    expandAll() {
        this.expansionModel.select(...this.dataNodes.map(node => this._trackByValue(node)));
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZmxhdC10cmVlLWNvbnRyb2wuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL3RyZWUvY29udHJvbC9mbGF0LXRyZWUtY29udHJvbC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsZUFBZSxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFPcEQsMkZBQTJGO0FBQzNGLE1BQU0sT0FBTyxlQUEwQixTQUFRLGVBQXFCO0lBRWxFLDhFQUE4RTtJQUM5RSxZQUNXLFFBQWlDLEVBQVMsWUFBc0MsRUFDaEYsT0FBc0M7UUFDL0MsS0FBSyxFQUFFLENBQUM7UUFGQyxhQUFRLEdBQVIsUUFBUSxDQUF5QjtRQUFTLGlCQUFZLEdBQVosWUFBWSxDQUEwQjtRQUNoRixZQUFPLEdBQVAsT0FBTyxDQUErQjtRQUcvQyxJQUFJLElBQUksQ0FBQyxPQUFPLEVBQUU7WUFDaEIsSUFBSSxDQUFDLE9BQU8sR0FBRyxJQUFJLENBQUMsT0FBTyxDQUFDLE9BQU8sQ0FBQztTQUNyQztJQUNILENBQUM7SUFFRDs7Ozs7T0FLRztJQUNILGNBQWMsQ0FBQyxRQUFXO1FBQ3hCLE1BQU0sVUFBVSxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsT0FBTyxDQUFDLFFBQVEsQ0FBQyxDQUFDO1FBQ3BELE1BQU0sT0FBTyxHQUFRLEVBQUUsQ0FBQztRQUV4Qix1RkFBdUY7UUFDdkYsc0ZBQXNGO1FBQ3RGLGFBQWE7UUFDYiwyRkFBMkY7UUFDM0Ysc0ZBQXNGO1FBQ3RGLDBCQUEwQjtRQUMxQixLQUFLLElBQUksQ0FBQyxHQUFHLFVBQVUsR0FBRyxDQUFDLEVBQ3ZCLENBQUMsR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDLE1BQU0sSUFBSSxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxHQUFHLElBQUksQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUN2RixDQUFDLEVBQUUsRUFBRTtZQUNQLE9BQU8sQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1NBQ2pDO1FBQ0QsT0FBTyxPQUFPLENBQUM7SUFDakIsQ0FBQztJQUVEOzs7OztPQUtHO0lBQ0gsU0FBUztRQUNQLElBQUksQ0FBQyxjQUFjLENBQUMsTUFBTSxDQUFDLEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLEVBQUUsQ0FBQyxJQUFJLENBQUMsYUFBYSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUN0RixDQUFDO0NBQ0YiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtCYXNlVHJlZUNvbnRyb2x9IGZyb20gJy4vYmFzZS10cmVlLWNvbnRyb2wnO1xuXG4vKiogT3B0aW9uYWwgc2V0IG9mIGNvbmZpZ3VyYXRpb24gdGhhdCBjYW4gYmUgcHJvdmlkZWQgdG8gdGhlIEZsYXRUcmVlQ29udHJvbC4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgRmxhdFRyZWVDb250cm9sT3B0aW9uczxULCBLPiB7XG4gIHRyYWNrQnk/OiAoZGF0YU5vZGU6IFQpID0+IEs7XG59XG5cbi8qKiBGbGF0IHRyZWUgY29udHJvbC4gQWJsZSB0byBleHBhbmQvY29sbGFwc2UgYSBzdWJ0cmVlIHJlY3Vyc2l2ZWx5IGZvciBmbGF0dGVuZWQgdHJlZS4gKi9cbmV4cG9ydCBjbGFzcyBGbGF0VHJlZUNvbnRyb2w8VCwgSyA9IFQ+IGV4dGVuZHMgQmFzZVRyZWVDb250cm9sPFQsIEs+IHtcblxuICAvKiogQ29uc3RydWN0IHdpdGggZmxhdCB0cmVlIGRhdGEgbm9kZSBmdW5jdGlvbnMgZ2V0TGV2ZWwgYW5kIGlzRXhwYW5kYWJsZS4gKi9cbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgZ2V0TGV2ZWw6IChkYXRhTm9kZTogVCkgPT4gbnVtYmVyLCBwdWJsaWMgaXNFeHBhbmRhYmxlOiAoZGF0YU5vZGU6IFQpID0+IGJvb2xlYW4sXG4gICAgICBwdWJsaWMgb3B0aW9ucz86IEZsYXRUcmVlQ29udHJvbE9wdGlvbnM8VCwgSz4pIHtcbiAgICBzdXBlcigpO1xuXG4gICAgaWYgKHRoaXMub3B0aW9ucykge1xuICAgICAgdGhpcy50cmFja0J5ID0gdGhpcy5vcHRpb25zLnRyYWNrQnk7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIEdldHMgYSBsaXN0IG9mIHRoZSBkYXRhIG5vZGUncyBzdWJ0cmVlIG9mIGRlc2NlbmRlbnQgZGF0YSBub2Rlcy5cbiAgICpcbiAgICogVG8gbWFrZSB0aGlzIHdvcmtpbmcsIHRoZSBgZGF0YU5vZGVzYCBvZiB0aGUgVHJlZUNvbnRyb2wgbXVzdCBiZSBmbGF0dGVuZWQgdHJlZSBub2Rlc1xuICAgKiB3aXRoIGNvcnJlY3QgbGV2ZWxzLlxuICAgKi9cbiAgZ2V0RGVzY2VuZGFudHMoZGF0YU5vZGU6IFQpOiBUW10ge1xuICAgIGNvbnN0IHN0YXJ0SW5kZXggPSB0aGlzLmRhdGFOb2Rlcy5pbmRleE9mKGRhdGFOb2RlKTtcbiAgICBjb25zdCByZXN1bHRzOiBUW10gPSBbXTtcblxuICAgIC8vIEdvZXMgdGhyb3VnaCBmbGF0dGVuZWQgdHJlZSBub2RlcyBpbiB0aGUgYGRhdGFOb2Rlc2AgYXJyYXksIGFuZCBnZXQgYWxsIGRlc2NlbmRhbnRzLlxuICAgIC8vIFRoZSBsZXZlbCBvZiBkZXNjZW5kYW50cyBvZiBhIHRyZWUgbm9kZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiB0aGUgbGV2ZWwgb2YgdGhlIGdpdmVuXG4gICAgLy8gdHJlZSBub2RlLlxuICAgIC8vIElmIHdlIHJlYWNoIGEgbm9kZSB3aG9zZSBsZXZlbCBpcyBlcXVhbCB0byB0aGUgbGV2ZWwgb2YgdGhlIHRyZWUgbm9kZSwgd2UgaGl0IGEgc2libGluZy5cbiAgICAvLyBJZiB3ZSByZWFjaCBhIG5vZGUgd2hvc2UgbGV2ZWwgaXMgZ3JlYXRlciB0aGFuIHRoZSBsZXZlbCBvZiB0aGUgdHJlZSBub2RlLCB3ZSBoaXQgYVxuICAgIC8vIHNpYmxpbmcgb2YgYW4gYW5jZXN0b3IuXG4gICAgZm9yIChsZXQgaSA9IHN0YXJ0SW5kZXggKyAxO1xuICAgICAgICBpIDwgdGhpcy5kYXRhTm9kZXMubGVuZ3RoICYmIHRoaXMuZ2V0TGV2ZWwoZGF0YU5vZGUpIDwgdGhpcy5nZXRMZXZlbCh0aGlzLmRhdGFOb2Rlc1tpXSk7XG4gICAgICAgIGkrKykge1xuICAgICAgcmVzdWx0cy5wdXNoKHRoaXMuZGF0YU5vZGVzW2ldKTtcbiAgICB9XG4gICAgcmV0dXJuIHJlc3VsdHM7XG4gIH1cblxuICAvKipcbiAgICogRXhwYW5kcyBhbGwgZGF0YSBub2RlcyBpbiB0aGUgdHJlZS5cbiAgICpcbiAgICogVG8gbWFrZSB0aGlzIHdvcmtpbmcsIHRoZSBgZGF0YU5vZGVzYCB2YXJpYWJsZSBvZiB0aGUgVHJlZUNvbnRyb2wgbXVzdCBiZSBzZXQgdG8gYWxsIGZsYXR0ZW5lZFxuICAgKiBkYXRhIG5vZGVzIG9mIHRoZSB0cmVlLlxuICAgKi9cbiAgZXhwYW5kQWxsKCk6IHZvaWQge1xuICAgIHRoaXMuZXhwYW5zaW9uTW9kZWwuc2VsZWN0KC4uLnRoaXMuZGF0YU5vZGVzLm1hcChub2RlID0+IHRoaXMuX3RyYWNrQnlWYWx1ZShub2RlKSkpO1xuICB9XG59XG4iXX0=