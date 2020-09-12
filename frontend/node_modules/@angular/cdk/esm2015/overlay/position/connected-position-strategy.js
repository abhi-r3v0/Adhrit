/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ConnectionPositionPair, } from './connected-position';
import { FlexibleConnectedPositionStrategy } from './flexible-connected-position-strategy';
/**
 * A strategy for positioning overlays. Using this strategy, an overlay is given an
 * implicit position relative to some origin element. The relative position is defined in terms of
 * a point on the origin element that is connected to a point on the overlay element. For example,
 * a basic dropdown is connecting the bottom-left corner of the origin to the top-left corner
 * of the overlay.
 * @deprecated Use `FlexibleConnectedPositionStrategy` instead.
 * @breaking-change 8.0.0
 */
export class ConnectedPositionStrategy {
    constructor(originPos, overlayPos, connectedTo, viewportRuler, document, platform, overlayContainer) {
        /** Ordered list of preferred positions, from most to least desirable. */
        this._preferredPositions = [];
        // Since the `ConnectedPositionStrategy` is deprecated and we don't want to maintain
        // the extra logic, we create an instance of the positioning strategy that has some
        // defaults that make it behave as the old position strategy and to which we'll
        // proxy all of the API calls.
        this._positionStrategy = new FlexibleConnectedPositionStrategy(connectedTo, viewportRuler, document, platform, overlayContainer)
            .withFlexibleDimensions(false)
            .withPush(false)
            .withViewportMargin(0);
        this.withFallbackPosition(originPos, overlayPos);
        this.onPositionChange = this._positionStrategy.positionChanges;
    }
    /** Ordered list of preferred positions, from most to least desirable. */
    get positions() {
        return this._preferredPositions;
    }
    /** Attach this position strategy to an overlay. */
    attach(overlayRef) {
        this._overlayRef = overlayRef;
        this._positionStrategy.attach(overlayRef);
        if (this._direction) {
            overlayRef.setDirection(this._direction);
            this._direction = null;
        }
    }
    /** Disposes all resources used by the position strategy. */
    dispose() {
        this._positionStrategy.dispose();
    }
    /** @docs-private */
    detach() {
        this._positionStrategy.detach();
    }
    /**
     * Updates the position of the overlay element, using whichever preferred position relative
     * to the origin fits on-screen.
     * @docs-private
     */
    apply() {
        this._positionStrategy.apply();
    }
    /**
     * Re-positions the overlay element with the trigger in its last calculated position,
     * even if a position higher in the "preferred positions" list would now fit. This
     * allows one to re-align the panel without changing the orientation of the panel.
     */
    recalculateLastPosition() {
        this._positionStrategy.reapplyLastPosition();
    }
    /**
     * Sets the list of Scrollable containers that host the origin element so that
     * on reposition we can evaluate if it or the overlay has been clipped or outside view. Every
     * Scrollable must be an ancestor element of the strategy's origin element.
     */
    withScrollableContainers(scrollables) {
        this._positionStrategy.withScrollableContainers(scrollables);
    }
    /**
     * Adds a new preferred fallback position.
     * @param originPos
     * @param overlayPos
     */
    withFallbackPosition(originPos, overlayPos, offsetX, offsetY) {
        const position = new ConnectionPositionPair(originPos, overlayPos, offsetX, offsetY);
        this._preferredPositions.push(position);
        this._positionStrategy.withPositions(this._preferredPositions);
        return this;
    }
    /**
     * Sets the layout direction so the overlay's position can be adjusted to match.
     * @param dir New layout direction.
     */
    withDirection(dir) {
        // Since the direction might be declared before the strategy is attached,
        // we save the value in a temporary property and we'll transfer it to the
        // overlay ref on attachment.
        if (this._overlayRef) {
            this._overlayRef.setDirection(dir);
        }
        else {
            this._direction = dir;
        }
        return this;
    }
    /**
     * Sets an offset for the overlay's connection point on the x-axis
     * @param offset New offset in the X axis.
     */
    withOffsetX(offset) {
        this._positionStrategy.withDefaultOffsetX(offset);
        return this;
    }
    /**
     * Sets an offset for the overlay's connection point on the y-axis
     * @param  offset New offset in the Y axis.
     */
    withOffsetY(offset) {
        this._positionStrategy.withDefaultOffsetY(offset);
        return this;
    }
    /**
     * Sets whether the overlay's position should be locked in after it is positioned
     * initially. When an overlay is locked in, it won't attempt to reposition itself
     * when the position is re-applied (e.g. when the user scrolls away).
     * @param isLocked Whether the overlay should locked in.
     */
    withLockedPosition(isLocked) {
        this._positionStrategy.withLockedPosition(isLocked);
        return this;
    }
    /**
     * Overwrites the current set of positions with an array of new ones.
     * @param positions Position pairs to be set on the strategy.
     */
    withPositions(positions) {
        this._preferredPositions = positions.slice();
        this._positionStrategy.withPositions(this._preferredPositions);
        return this;
    }
    /**
     * Sets the origin element, relative to which to position the overlay.
     * @param origin Reference to the new origin element.
     */
    setOrigin(origin) {
        this._positionStrategy.setOrigin(origin);
        return this;
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29ubmVjdGVkLXBvc2l0aW9uLXN0cmF0ZWd5LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9vdmVybGF5L3Bvc2l0aW9uL2Nvbm5lY3RlZC1wb3NpdGlvbi1zdHJhdGVneS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFXSCxPQUFPLEVBRUwsc0JBQXNCLEdBR3ZCLE1BQU0sc0JBQXNCLENBQUM7QUFDOUIsT0FBTyxFQUFDLGlDQUFpQyxFQUFDLE1BQU0sd0NBQXdDLENBQUM7QUFHekY7Ozs7Ozs7O0dBUUc7QUFDSCxNQUFNLE9BQU8seUJBQXlCO0lBa0JwQyxZQUNJLFNBQW1DLEVBQUUsVUFBcUMsRUFDMUUsV0FBb0MsRUFBRSxhQUE0QixFQUFFLFFBQWtCLEVBQ3RGLFFBQWtCLEVBQUUsZ0JBQWtDO1FBVDFELHlFQUF5RTtRQUN6RSx3QkFBbUIsR0FBNkIsRUFBRSxDQUFDO1FBU2pELG9GQUFvRjtRQUNwRixtRkFBbUY7UUFDbkYsK0VBQStFO1FBQy9FLDhCQUE4QjtRQUM5QixJQUFJLENBQUMsaUJBQWlCLEdBQUcsSUFBSSxpQ0FBaUMsQ0FDakMsV0FBVyxFQUFFLGFBQWEsRUFBRSxRQUFRLEVBQUUsUUFBUSxFQUFFLGdCQUFnQixDQUFDO2FBQ2hFLHNCQUFzQixDQUFDLEtBQUssQ0FBQzthQUM3QixRQUFRLENBQUMsS0FBSyxDQUFDO2FBQ2Ysa0JBQWtCLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFFcEQsSUFBSSxDQUFDLG9CQUFvQixDQUFDLFNBQVMsRUFBRSxVQUFVLENBQUMsQ0FBQztRQUNqRCxJQUFJLENBQUMsZ0JBQWdCLEdBQUcsSUFBSSxDQUFDLGlCQUFpQixDQUFDLGVBQWUsQ0FBQztJQUNqRSxDQUFDO0lBRUQseUVBQXlFO0lBQ3pFLElBQUksU0FBUztRQUNYLE9BQU8sSUFBSSxDQUFDLG1CQUFtQixDQUFDO0lBQ2xDLENBQUM7SUFFRCxtREFBbUQ7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QUFTLENBQUMsTUFBTSxDQUFDLENBQUM7UUFDekMsT0FBTyxJQUFJLENBQUM7SUFDZCxDQUFDO0NBQ0YiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtEaXJlY3Rpb259IGZyb20gJ0Bhbmd1bGFyL2Nkay9iaWRpJztcbmltcG9ydCB7UGxhdGZvcm19IGZyb20gJ0Bhbmd1bGFyL2Nkay9wbGF0Zm9ybSc7XG5pbXBvcnQge0Nka1Njcm9sbGFibGUsIFZpZXdwb3J0UnVsZXJ9IGZyb20gJ0Bhbmd1bGFyL2Nkay9zY3JvbGxpbmcnO1xuaW1wb3J0IHtFbGVtZW50UmVmfSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7T2JzZXJ2YWJsZX0gZnJvbSAncnhqcyc7XG5cbmltcG9ydCB7T3ZlcmxheUNvbnRhaW5lcn0gZnJvbSAnLi4vb3ZlcmxheS1jb250YWluZXInO1xuaW1wb3J0IHtPdmVybGF5UmVmZXJlbmNlfSBmcm9tICcuLi9vdmVybGF5LXJlZmVyZW5jZSc7XG5cbmltcG9ydCB7XG4gIENvbm5lY3RlZE92ZXJsYXlQb3NpdGlvbkNoYW5nZSxcbiAgQ29ubmVjdGlvblBvc2l0aW9uUGFpcixcbiAgT3JpZ2luQ29ubmVjdGlvblBvc2l0aW9uLFxuICBPdmVybGF5Q29ubmVjdGlvblBvc2l0aW9uLFxufSBmcm9tICcuL2Nvbm5lY3RlZC1wb3NpdGlvbic7XG5pbXBvcnQge0ZsZXhpYmxlQ29ubmVjdGVkUG9zaXRpb25TdHJhdGVneX0gZnJvbSAnLi9mbGV4aWJsZS1jb25uZWN0ZWQtcG9zaXRpb24tc3RyYXRlZ3knO1xuaW1wb3J0IHtQb3NpdGlvblN0cmF0ZWd5fSBmcm9tICcuL3Bvc2l0aW9uLXN0cmF0ZWd5JztcblxuLyoqXG4gKiBBIHN0cmF0ZWd5IGZvciBwb3NpdGlvbmluZyBvdmVybGF5cy4gVXNpbmcgdGhpcyBzdHJhdGVneSwgYW4gb3ZlcmxheSBpcyBnaXZlbiBhblxuICogaW1wbGljaXQgcG9zaXRpb24gcmVsYXRpdmUgdG8gc29tZSBvcmlnaW4gZWxlbWVudC4gVGhlIHJlbGF0aXZlIHBvc2l0aW9uIGlzIGRlZmluZWQgaW4gdGVybXMgb2ZcbiAqIGEgcG9pbnQgb24gdGhlIG9yaWdpbiBlbGVtZW50IHRoYXQgaXMgY29ubmVjdGVkIHRvIGEgcG9pbnQgb24gdGhlIG92ZXJsYXkgZWxlbWVudC4gRm9yIGV4YW1wbGUsXG4gKiBhIGJhc2ljIGRyb3Bkb3duIGlzIGNvbm5lY3RpbmcgdGhlIGJvdHRvbS1sZWZ0IGNvcm5lciBvZiB0aGUgb3JpZ2luIHRvIHRoZSB0b3AtbGVmdCBjb3JuZXJcbiAqIG9mIHRoZSBvdmVybGF5LlxuICogQGRlcHJlY2F0ZWQgVXNlIGBGbGV4aWJsZUNvbm5lY3RlZFBvc2l0aW9uU3RyYXRlZ3lgIGluc3RlYWQuXG4gKiBAYnJlYWtpbmctY2hhbmdlIDguMC4wXG4gKi9cbmV4cG9ydCBjbGFzcyBDb25uZWN0ZWRQb3NpdGlvblN0cmF0ZWd5IGltcGxlbWVudHMgUG9zaXRpb25TdHJhdGVneSB7XG4gIC8qKlxuICAgKiBSZWZlcmVuY2UgdG8gdGhlIHVuZGVybHlpbmcgcG9zaXRpb24gc3RyYXRlZ3kgdG8gd2hpY2ggYWxsIHRoZSBBUEkgY2FsbHMgYXJlIHByb3hpZWQuXG4gICAqIEBkb2NzLXByaXZhdGVcbiAgICovXG4gIF9wb3NpdGlvblN0cmF0ZWd5OiBGbGV4aWJsZUNvbm5lY3RlZFBvc2l0aW9uU3RyYXRlZ3k7XG5cbiAgLyoqIFRoZSBvdmVybGF5IHRvIHdoaWNoIHRoaXMgc3RyYXRlZ3kgaXMgYXR0YWNoZWQuICovXG4gIHByaXZhdGUgX292ZXJsYXlSZWY6IE92ZXJsYXlSZWZlcmVuY2U7XG5cbiAgcHJpdmF0ZSBfZGlyZWN0aW9uOiBEaXJlY3Rpb24gfCBudWxsO1xuXG4gIC8qKiBPcmRlcmVkIGxpc3Qgb2YgcHJlZmVycmVkIHBvc2l0aW9ucywgZnJvbSBtb3N0IHRvIGxlYXN0IGRlc2lyYWJsZS4gKi9cbiAgX3ByZWZlcnJlZFBvc2l0aW9uczogQ29ubmVjdGlvblBvc2l0aW9uUGFpcltdID0gW107XG5cbiAgLyoqIEVtaXRzIGFuIGV2ZW50IHdoZW4gdGhlIGNvbm5lY3Rpb24gcG9pbnQgY2hhbmdlcy4gKi9cbiAgcmVhZG9ubHkgb25Qb3NpdGlvbkNoYW5nZTogT2JzZXJ2YWJsZTxDb25uZWN0ZWRPdmVybGF5UG9zaXRpb25DaGFuZ2U+O1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgb3JpZ2luUG9zOiBPcmlnaW5Db25uZWN0aW9uUG9zaXRpb24sIG92ZXJsYXlQb3M6IE92ZXJsYXlDb25uZWN0aW9uUG9zaXRpb24sXG4gICAgICBjb25uZWN0ZWRUbzogRWxlbWVudFJlZjxIVE1MRWxlbWVudD4sIHZpZXdwb3J0UnVsZXI6IFZpZXdwb3J0UnVsZXIsIGRvY3VtZW50OiBEb2N1bWVudCxcbiAgICAgIHBsYXRmb3JtOiBQbGF0Zm9ybSwgb3ZlcmxheUNvbnRhaW5lcjogT3ZlcmxheUNvbnRhaW5lcikge1xuICAgIC8vIFNpbmNlIHRoZSBgQ29ubmVjdGVkUG9zaXRpb25TdHJhdGVneWAgaXMgZGVwcmVjYXRlZCBhbmQgd2UgZG9uJ3Qgd2FudCB0byBtYWludGFpblxuICAgIC8vIHRoZSBleHRyYSBsb2dpYywgd2UgY3JlYXRlIGFuIGluc3RhbmNlIG9mIHRoZSBwb3NpdGlvbmluZyBzdHJhdGVneSB0aGF0IGhhcyBzb21lXG4gICAgLy8gZGVmYXVsdHMgdGhhdCBtYWtlIGl0IGJlaGF2ZSBhcyB0aGUgb2xkIHBvc2l0aW9uIHN0cmF0ZWd5IGFuZCB0byB3aGljaCB3ZSdsbFxuICAgIC8vIHByb3h5IGFsbCBvZiB0aGUgQVBJIGNhbGxzLlxuICAgIHRoaXMuX3Bvc2l0aW9uU3RyYXRlZ3kgPSBuZXcgRmxleGlibGVDb25uZWN0ZWRQb3NpdGlvblN0cmF0ZWd5KFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29ubmVjdGVkVG8sIHZpZXdwb3J0UnVsZXIsIGRvY3VtZW50LCBwbGF0Zm9ybSwgb3ZlcmxheUNvbnRhaW5lcilcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC53aXRoRmxleGlibGVEaW1lbnNpb25zKGZhbHNlKVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLndpdGhQdXNoKGZhbHNlKVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLndpdGhWaWV3cG9ydE1hcmdpbigwKTtcblxuICAgIHRoaXMud2l0aEZhbGxiYWNrUG9zaXRpb24ob3JpZ2luUG9zLCBvdmVybGF5UG9zKTtcbiAgICB0aGlzLm9uUG9zaXRpb25DaGFuZ2UgPSB0aGlzLl9wb3NpdGlvblN0cmF0ZWd5LnBvc2l0aW9uQ2hhbmdlcztcbiAgfVxuXG4gIC8qKiBPcmRlcmVkIGxpc3Qgb2YgcHJlZmVycmVkIHBvc2l0aW9ucywgZnJvbSBtb3N0IHRvIGxlYXN0IGRlc2lyYWJsZS4gKi9cbiAgZ2V0IHBvc2l0aW9ucygpOiBDb25uZWN0aW9uUG9zaXRpb25QYWlyW10ge1xuICAgIHJldHVybiB0aGlzLl9wcmVmZXJyZWRQb3NpdGlvbnM7XG4gIH1cblxuICAvKiogQXR0YWNoIHRoaXMgcG9zaXRpb24gc3RyYXRlZ3kgdG8gYW4gb3ZlcmxheS4gKi9cbiAgYXR0YWNoKG92ZXJsYXlSZWY6IE92ZXJsYXlSZWZlcmVuY2UpOiB2b2lkIHtcbiAgICB0aGlzLl9vdmVybGF5UmVmID0gb3ZlcmxheVJlZjtcbiAgICB0aGlzLl9wb3NpdGlvblN0cmF0ZWd5LmF0dGFjaChvdmVybGF5UmVmKTtcblxuICAgIGlmICh0aGlzLl9kaXJlY3Rpb24pIHtcbiAgICAgIG92ZXJsYXlSZWYuc2V0RGlyZWN0aW9uKHRoaXMuX2RpcmVjdGlvbik7XG4gICAgICB0aGlzLl9kaXJlY3Rpb24gPSBudWxsO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBEaXNwb3NlcyBhbGwgcmVzb3VyY2VzIHVzZWQgYnkgdGhlIHBvc2l0aW9uIHN0cmF0ZWd5LiAqL1xuICBkaXNwb3NlKCkge1xuICAgIHRoaXMuX3Bvc2l0aW9uU3RyYXRlZ3kuZGlzcG9zZSgpO1xuICB9XG5cbiAgLyoqIEBkb2NzLXByaXZhdGUgKi9cbiAgZGV0YWNoKCkge1xuICAgIHRoaXMuX3Bvc2l0aW9uU3RyYXRlZ3kuZGV0YWNoKCk7XG4gIH1cblxuICAvKipcbiAgICogVXBkYXRlcyB0aGUgcG9zaXRpb24gb2YgdGhlIG92ZXJsYXkgZWxlbWVudCwgdXNpbmcgd2hpY2hldmVyIHByZWZlcnJlZCBwb3NpdGlvbiByZWxhdGl2ZVxuICAgKiB0byB0aGUgb3JpZ2luIGZpdHMgb24tc2NyZWVuLlxuICAgKiBAZG9jcy1wcml2YXRlXG4gICAqL1xuICBhcHBseSgpOiB2b2lkIHtcbiAgICB0aGlzLl9wb3NpdGlvblN0cmF0ZWd5LmFwcGx5KCk7XG4gIH1cblxuICAvKipcbiAgICogUmUtcG9zaXRpb25zIHRoZSBvdmVybGF5IGVsZW1lbnQgd2l0aCB0aGUgdHJpZ2dlciBpbiBpdHMgbGFzdCBjYWxjdWxhdGVkIHBvc2l0aW9uLFxuICAgKiBldmVuIGlmIGEgcG9zaXRpb24gaGlnaGVyIGluIHRoZSBcInByZWZlcnJlZCBwb3NpdGlvbnNcIiBsaXN0IHdvdWxkIG5vdyBmaXQuIFRoaXNcbiAgICogYWxsb3dzIG9uZSB0byByZS1hbGlnbiB0aGUgcGFuZWwgd2l0aG91dCBjaGFuZ2luZyB0aGUgb3JpZW50YXRpb24gb2YgdGhlIHBhbmVsLlxuICAgKi9cbiAgcmVjYWxjdWxhdGVMYXN0UG9zaXRpb24oKTogdm9pZCB7XG4gICAgdGhpcy5fcG9zaXRpb25TdHJhdGVneS5yZWFwcGx5TGFzdFBvc2l0aW9uKCk7XG4gIH1cblxuICAvKipcbiAgICogU2V0cyB0aGUgbGlzdCBvZiBTY3JvbGxhYmxlIGNvbnRhaW5lcnMgdGhhdCBob3N0IHRoZSBvcmlnaW4gZWxlbWVudCBzbyB0aGF0XG4gICAqIG9uIHJlcG9zaXRpb24gd2UgY2FuIGV2YWx1YXRlIGlmIGl0IG9yIHRoZSBvdmVybGF5IGhhcyBiZWVuIGNsaXBwZWQgb3Igb3V0c2lkZSB2aWV3LiBFdmVyeVxuICAgKiBTY3JvbGxhYmxlIG11c3QgYmUgYW4gYW5jZXN0b3IgZWxlbWVudCBvZiB0aGUgc3RyYXRlZ3kncyBvcmlnaW4gZWxlbWVudC5cbiAgICovXG4gIHdpdGhTY3JvbGxhYmxlQ29udGFpbmVycyhzY3JvbGxhYmxlczogQ2RrU2Nyb2xsYWJsZVtdKSB7XG4gICAgdGhpcy5fcG9zaXRpb25TdHJhdGVneS53aXRoU2Nyb2xsYWJsZUNvbnRhaW5lcnMoc2Nyb2xsYWJsZXMpO1xuICB9XG5cbiAgLyoqXG4gICAqIEFkZHMgYSBuZXcgcHJlZmVycmVkIGZhbGxiYWNrIHBvc2l0aW9uLlxuICAgKiBAcGFyYW0gb3JpZ2luUG9zXG4gICAqIEBwYXJhbSBvdmVybGF5UG9zXG4gICAqL1xuICB3aXRoRmFsbGJhY2tQb3NpdGlvbihcbiAgICAgIG9yaWdpblBvczogT3JpZ2luQ29ubmVjdGlvblBvc2l0aW9uLFxuICAgICAgb3ZlcmxheVBvczogT3ZlcmxheUNvbm5lY3Rpb25Qb3NpdGlvbixcbiAgICAgIG9mZnNldFg/OiBudW1iZXIsXG4gICAgICBvZmZzZXRZPzogbnVtYmVyKTogdGhpcyB7XG5cbiAgICBjb25zdCBwb3NpdGlvbiA9IG5ldyBDb25uZWN0aW9uUG9zaXRpb25QYWlyKG9yaWdpblBvcywgb3ZlcmxheVBvcywgb2Zmc2V0WCwgb2Zmc2V0WSk7XG4gICAgdGhpcy5fcHJlZmVycmVkUG9zaXRpb25zLnB1c2gocG9zaXRpb24pO1xuICAgIHRoaXMuX3Bvc2l0aW9uU3RyYXRlZ3kud2l0aFBvc2l0aW9ucyh0aGlzLl9wcmVmZXJyZWRQb3NpdGlvbnMpO1xuICAgIHJldHVybiB0aGlzO1xuICB9XG5cbiAgLyoqXG4gICAqIFNldHMgdGhlIGxheW91dCBkaXJlY3Rpb24gc28gdGhlIG92ZXJsYXkncyBwb3NpdGlvbiBjYW4gYmUgYWRqdXN0ZWQgdG8gbWF0Y2guXG4gICAqIEBwYXJhbSBkaXIgTmV3IGxheW91dCBkaXJlY3Rpb24uXG4gICAqL1xuICB3aXRoRGlyZWN0aW9uKGRpcjogJ2x0cicgfCAncnRsJyk6IHRoaXMge1xuICAgIC8vIFNpbmNlIHRoZSBkaXJlY3Rpb24gbWlnaHQgYmUgZGVjbGFyZWQgYmVmb3JlIHRoZSBzdHJhdGVneSBpcyBhdHRhY2hlZCxcbiAgICAvLyB3ZSBzYXZlIHRoZSB2YWx1ZSBpbiBhIHRlbXBvcmFyeSBwcm9wZXJ0eSBhbmQgd2UnbGwgdHJhbnNmZXIgaXQgdG8gdGhlXG4gICAgLy8gb3ZlcmxheSByZWYgb24gYXR0YWNobWVudC5cbiAgICBpZiAodGhpcy5fb3ZlcmxheVJlZikge1xuICAgICAgdGhpcy5fb3ZlcmxheVJlZi5zZXREaXJlY3Rpb24oZGlyKTtcbiAgICB9IGVsc2Uge1xuICAgICAgdGhpcy5fZGlyZWN0aW9uID0gZGlyO1xuICAgIH1cblxuICAgIHJldHVybiB0aGlzO1xuICB9XG5cbiAgLyoqXG4gICAqIFNldHMgYW4gb2Zmc2V0IGZvciB0aGUgb3ZlcmxheSdzIGNvbm5lY3Rpb24gcG9pbnQgb24gdGhlIHgtYXhpc1xuICAgKiBAcGFyYW0gb2Zmc2V0IE5ldyBvZmZzZXQgaW4gdGhlIFggYXhpcy5cbiAgICovXG4gIHdpdGhPZmZzZXRYKG9mZnNldDogbnVtYmVyKTogdGhpcyB7XG4gICAgdGhpcy5fcG9zaXRpb25TdHJhdGVneS53aXRoRGVmYXVsdE9mZnNldFgob2Zmc2V0KTtcbiAgICByZXR1cm4gdGhpcztcbiAgfVxuXG4gIC8qKlxuICAgKiBTZXRzIGFuIG9mZnNldCBmb3IgdGhlIG92ZXJsYXkncyBjb25uZWN0aW9uIHBvaW50IG9uIHRoZSB5LWF4aXNcbiAgICogQHBhcmFtICBvZmZzZXQgTmV3IG9mZnNldCBpbiB0aGUgWSBheGlzLlxuICAgKi9cbiAgd2l0aE9mZnNldFkob2Zmc2V0OiBudW1iZXIpOiB0aGlzIHtcbiAgICB0aGlzLl9wb3NpdGlvblN0cmF0ZWd5LndpdGhEZWZhdWx0T2Zmc2V0WShvZmZzZXQpO1xuICAgIHJldHVybiB0aGlzO1xuICB9XG5cbiAgLyoqXG4gICAqIFNldHMgd2hldGhlciB0aGUgb3ZlcmxheSdzIHBvc2l0aW9uIHNob3VsZCBiZSBsb2NrZWQgaW4gYWZ0ZXIgaXQgaXMgcG9zaXRpb25lZFxuICAgKiBpbml0aWFsbHkuIFdoZW4gYW4gb3ZlcmxheSBpcyBsb2NrZWQgaW4sIGl0IHdvbid0IGF0dGVtcHQgdG8gcmVwb3NpdGlvbiBpdHNlbGZcbiAgICogd2hlbiB0aGUgcG9zaXRpb24gaXMgcmUtYXBwbGllZCAoZS5nLiB3aGVuIHRoZSB1c2VyIHNjcm9sbHMgYXdheSkuXG4gICAqIEBwYXJhbSBpc0xvY2tlZCBXaGV0aGVyIHRoZSBvdmVybGF5IHNob3VsZCBsb2NrZWQgaW4uXG4gICAqL1xuICB3aXRoTG9ja2VkUG9zaXRpb24oaXNMb2NrZWQ6IGJvb2xlYW4pOiB0aGlzIHtcbiAgICB0aGlzLl9wb3NpdGlvblN0cmF0ZWd5LndpdGhMb2NrZWRQb3NpdGlvbihpc0xvY2tlZCk7XG4gICAgcmV0dXJuIHRoaXM7XG4gIH1cblxuICAvKipcbiAgICogT3ZlcndyaXRlcyB0aGUgY3VycmVudCBzZXQgb2YgcG9zaXRpb25zIHdpdGggYW4gYXJyYXkgb2YgbmV3IG9uZXMuXG4gICAqIEBwYXJhbSBwb3NpdGlvbnMgUG9zaXRpb24gcGFpcnMgdG8gYmUgc2V0IG9uIHRoZSBzdHJhdGVneS5cbiAgICovXG4gIHdpdGhQb3NpdGlvbnMocG9zaXRpb25zOiBDb25uZWN0aW9uUG9zaXRpb25QYWlyW10pOiB0aGlzIHtcbiAgICB0aGlzLl9wcmVmZXJyZWRQb3NpdGlvbnMgPSBwb3NpdGlvbnMuc2xpY2UoKTtcbiAgICB0aGlzLl9wb3NpdGlvblN0cmF0ZWd5LndpdGhQb3NpdGlvbnModGhpcy5fcHJlZmVycmVkUG9zaXRpb25zKTtcbiAgICByZXR1cm4gdGhpcztcbiAgfVxuXG4gIC8qKlxuICAgKiBTZXRzIHRoZSBvcmlnaW4gZWxlbWVudCwgcmVsYXRpdmUgdG8gd2hpY2ggdG8gcG9zaXRpb24gdGhlIG92ZXJsYXkuXG4gICAqIEBwYXJhbSBvcmlnaW4gUmVmZXJlbmNlIHRvIHRoZSBuZXcgb3JpZ2luIGVsZW1lbnQuXG4gICAqL1xuICBzZXRPcmlnaW4ob3JpZ2luOiBFbGVtZW50UmVmKTogdGhpcyB7XG4gICAgdGhpcy5fcG9zaXRpb25TdHJhdGVneS5zZXRPcmlnaW4ob3JpZ2luKTtcbiAgICByZXR1cm4gdGhpcztcbiAgfVxufVxuIl19