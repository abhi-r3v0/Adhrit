/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/** Horizontal dimension of a connection point on the perimeter of the origin or overlay element. */
import { Optional } from '@angular/core';
/** The points of the origin element and the overlay element to connect. */
export class ConnectionPositionPair {
    constructor(origin, overlay, 
    /** Offset along the X axis. */
    offsetX, 
    /** Offset along the Y axis. */
    offsetY, 
    /** Class(es) to be applied to the panel while this position is active. */
    panelClass) {
        this.offsetX = offsetX;
        this.offsetY = offsetY;
        this.panelClass = panelClass;
        this.originX = origin.originX;
        this.originY = origin.originY;
        this.overlayX = overlay.overlayX;
        this.overlayY = overlay.overlayY;
    }
}
/**
 * Set of properties regarding the position of the origin and overlay relative to the viewport
 * with respect to the containing Scrollable elements.
 *
 * The overlay and origin are clipped if any part of their bounding client rectangle exceeds the
 * bounds of any one of the strategy's Scrollable's bounding client rectangle.
 *
 * The overlay and origin are outside view if there is no overlap between their bounding client
 * rectangle and any one of the strategy's Scrollable's bounding client rectangle.
 *
 *       -----------                    -----------
 *       | outside |                    | clipped |
 *       |  view   |              --------------------------
 *       |         |              |     |         |        |
 *       ----------               |     -----------        |
 *  --------------------------    |                        |
 *  |                        |    |      Scrollable        |
 *  |                        |    |                        |
 *  |                        |     --------------------------
 *  |      Scrollable        |
 *  |                        |
 *  --------------------------
 *
 *  @docs-private
 */
export class ScrollingVisibility {
}
/** The change event emitted by the strategy when a fallback position is used. */
export class ConnectedOverlayPositionChange {
    constructor(
    /** The position used as a result of this change. */
    connectionPair, 
    /** @docs-private */
    scrollableViewProperties) {
        this.connectionPair = connectionPair;
        this.scrollableViewProperties = scrollableViewProperties;
    }
}
ConnectedOverlayPositionChange.ctorParameters = () => [
    { type: ConnectionPositionPair },
    { type: ScrollingVisibility, decorators: [{ type: Optional }] }
];
/**
 * Validates whether a vertical position property matches the expected values.
 * @param property Name of the property being validated.
 * @param value Value of the property being validated.
 * @docs-private
 */
export function validateVerticalPosition(property, value) {
    if (value !== 'top' && value !== 'bottom' && value !== 'center') {
        throw Error(`ConnectedPosition: Invalid ${property} "${value}". ` +
            `Expected "top", "bottom" or "center".`);
    }
}
/**
 * Validates whether a horizontal position property matches the expected values.
 * @param property Name of the property being validated.
 * @param value Value of the property being validated.
 * @docs-private
 */
export function validateHorizontalPosition(property, value) {
    if (value !== 'start' && value !== 'end' && value !== 'center') {
        throw Error(`ConnectedPosition: Invalid ${property} "${value}". ` +
            `Expected "start", "end" or "center".`);
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29ubmVjdGVkLXBvc2l0aW9uLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9vdmVybGF5L3Bvc2l0aW9uL2Nvbm5lY3RlZC1wb3NpdGlvbi50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxvR0FBb0c7QUFDcEcsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQW1CdkMsMkVBQTJFO0FBQzNFLE1BQU0sT0FBTyxzQkFBc0I7SUFVakMsWUFDRSxNQUFnQyxFQUNoQyxPQUFrQztJQUNsQywrQkFBK0I7SUFDeEIsT0FBZ0I7SUFDdkIsK0JBQStCO0lBQ3hCLE9BQWdCO0lBQ3ZCLDBFQUEwRTtJQUNuRSxVQUE4QjtRQUo5QixZQUFPLEdBQVAsT0FBTyxDQUFTO1FBRWhCLFlBQU8sR0FBUCxPQUFPLENBQVM7UUFFaEIsZUFBVSxHQUFWLFVBQVUsQ0FBb0I7UUFFckMsSUFBSSxDQUFDLE9BQU8sR0FBRyxNQUFNLENBQUMsT0FBTyxDQUFDO1FBQzlCLElBQUksQ0FBQyxPQUFPLEdBQUcsTUFBTSxDQUFDLE9BQU8sQ0FBQztRQUM5QixJQUFJLENBQUMsUUFBUSxHQUFHLE9BQU8sQ0FBQyxRQUFRLENBQUM7UUFDakMsSUFBSSxDQUFDLFFBQVEsR0FBRyxPQUFPLENBQUMsUUFBUSxDQUFDO0lBQ25DLENBQUM7Q0FDRjtBQUVEOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7R0F3Qkc7QUFDSCxNQUFNLE9BQU8sbUJBQW1CO0NBSy9CO0FBRUQsaUZBQWlGO0FBQ2pGLE1BQU0sT0FBTyw4QkFBOEI7SUFDekM7SUFDSSxvREFBb0Q7SUFDN0MsY0FBc0M7SUFDN0Msb0JBQW9CO0lBQ0Qsd0JBQTZDO1FBRnpELG1CQUFjLEdBQWQsY0FBYyxDQUF3QjtRQUUxQiw2QkFBd0IsR0FBeEIsd0JBQXdCLENBQXFCO0lBQUcsQ0FBQzs7O1lBRjdDLHNCQUFzQjtZQUVBLG1CQUFtQix1QkFBL0QsUUFBUTs7QUFHZjs7Ozs7R0FLRztBQUNILE1BQU0sVUFBVSx3QkFBd0IsQ0FBQyxRQUFnQixFQUFFLEtBQTRCO0lBQ3JGLElBQUksS0FBSyxLQUFLLEtBQUssSUFBSSxLQUFLLEtBQUssUUFBUSxJQUFJLEtBQUssS0FBSyxRQUFRLEVBQUU7UUFDL0QsTUFBTSxLQUFLLENBQUMsOEJBQThCLFFBQVEsS0FBSyxLQUFLLEtBQUs7WUFDckQsdUNBQXVDLENBQUMsQ0FBQztLQUN0RDtBQUNILENBQUM7QUFFRDs7Ozs7R0FLRztBQUNILE1BQU0sVUFBVSwwQkFBMEIsQ0FBQyxRQUFnQixFQUFFLEtBQThCO0lBQ3pGLElBQUksS0FBSyxLQUFLLE9BQU8sSUFBSSxLQUFLLEtBQUssS0FBSyxJQUFJLEtBQUssS0FBSyxRQUFRLEVBQUU7UUFDOUQsTUFBTSxLQUFLLENBQUMsOEJBQThCLFFBQVEsS0FBSyxLQUFLLEtBQUs7WUFDckQsc0NBQXNDLENBQUMsQ0FBQztLQUNyRDtBQUNILENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuLyoqIEhvcml6b250YWwgZGltZW5zaW9uIG9mIGEgY29ubmVjdGlvbiBwb2ludCBvbiB0aGUgcGVyaW1ldGVyIG9mIHRoZSBvcmlnaW4gb3Igb3ZlcmxheSBlbGVtZW50LiAqL1xuaW1wb3J0IHtPcHRpb25hbH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5leHBvcnQgdHlwZSBIb3Jpem9udGFsQ29ubmVjdGlvblBvcyA9ICdzdGFydCcgfCAnY2VudGVyJyB8ICdlbmQnO1xuXG4vKiogVmVydGljYWwgZGltZW5zaW9uIG9mIGEgY29ubmVjdGlvbiBwb2ludCBvbiB0aGUgcGVyaW1ldGVyIG9mIHRoZSBvcmlnaW4gb3Igb3ZlcmxheSBlbGVtZW50LiAqL1xuZXhwb3J0IHR5cGUgVmVydGljYWxDb25uZWN0aW9uUG9zID0gJ3RvcCcgfCAnY2VudGVyJyB8ICdib3R0b20nO1xuXG5cbi8qKiBBIGNvbm5lY3Rpb24gcG9pbnQgb24gdGhlIG9yaWdpbiBlbGVtZW50LiAqL1xuZXhwb3J0IGludGVyZmFjZSBPcmlnaW5Db25uZWN0aW9uUG9zaXRpb24ge1xuICBvcmlnaW5YOiBIb3Jpem9udGFsQ29ubmVjdGlvblBvcztcbiAgb3JpZ2luWTogVmVydGljYWxDb25uZWN0aW9uUG9zO1xufVxuXG4vKiogQSBjb25uZWN0aW9uIHBvaW50IG9uIHRoZSBvdmVybGF5IGVsZW1lbnQuICovXG5leHBvcnQgaW50ZXJmYWNlIE92ZXJsYXlDb25uZWN0aW9uUG9zaXRpb24ge1xuICBvdmVybGF5WDogSG9yaXpvbnRhbENvbm5lY3Rpb25Qb3M7XG4gIG92ZXJsYXlZOiBWZXJ0aWNhbENvbm5lY3Rpb25Qb3M7XG59XG5cbi8qKiBUaGUgcG9pbnRzIG9mIHRoZSBvcmlnaW4gZWxlbWVudCBhbmQgdGhlIG92ZXJsYXkgZWxlbWVudCB0byBjb25uZWN0LiAqL1xuZXhwb3J0IGNsYXNzIENvbm5lY3Rpb25Qb3NpdGlvblBhaXIge1xuICAvKiogWC1heGlzIGF0dGFjaG1lbnQgcG9pbnQgZm9yIGNvbm5lY3RlZCBvdmVybGF5IG9yaWdpbi4gQ2FuIGJlICdzdGFydCcsICdlbmQnLCBvciAnY2VudGVyJy4gKi9cbiAgb3JpZ2luWDogSG9yaXpvbnRhbENvbm5lY3Rpb25Qb3M7XG4gIC8qKiBZLWF4aXMgYXR0YWNobWVudCBwb2ludCBmb3IgY29ubmVjdGVkIG92ZXJsYXkgb3JpZ2luLiBDYW4gYmUgJ3RvcCcsICdib3R0b20nLCBvciAnY2VudGVyJy4gKi9cbiAgb3JpZ2luWTogVmVydGljYWxDb25uZWN0aW9uUG9zO1xuICAvKiogWC1heGlzIGF0dGFjaG1lbnQgcG9pbnQgZm9yIGNvbm5lY3RlZCBvdmVybGF5LiBDYW4gYmUgJ3N0YXJ0JywgJ2VuZCcsIG9yICdjZW50ZXInLiAqL1xuICBvdmVybGF5WDogSG9yaXpvbnRhbENvbm5lY3Rpb25Qb3M7XG4gIC8qKiBZLWF4aXMgYXR0YWNobWVudCBwb2ludCBmb3IgY29ubmVjdGVkIG92ZXJsYXkuIENhbiBiZSAndG9wJywgJ2JvdHRvbScsIG9yICdjZW50ZXInLiAqL1xuICBvdmVybGF5WTogVmVydGljYWxDb25uZWN0aW9uUG9zO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgIG9yaWdpbjogT3JpZ2luQ29ubmVjdGlvblBvc2l0aW9uLFxuICAgIG92ZXJsYXk6IE92ZXJsYXlDb25uZWN0aW9uUG9zaXRpb24sXG4gICAgLyoqIE9mZnNldCBhbG9uZyB0aGUgWCBheGlzLiAqL1xuICAgIHB1YmxpYyBvZmZzZXRYPzogbnVtYmVyLFxuICAgIC8qKiBPZmZzZXQgYWxvbmcgdGhlIFkgYXhpcy4gKi9cbiAgICBwdWJsaWMgb2Zmc2V0WT86IG51bWJlcixcbiAgICAvKiogQ2xhc3MoZXMpIHRvIGJlIGFwcGxpZWQgdG8gdGhlIHBhbmVsIHdoaWxlIHRoaXMgcG9zaXRpb24gaXMgYWN0aXZlLiAqL1xuICAgIHB1YmxpYyBwYW5lbENsYXNzPzogc3RyaW5nIHwgc3RyaW5nW10pIHtcblxuICAgIHRoaXMub3JpZ2luWCA9IG9yaWdpbi5vcmlnaW5YO1xuICAgIHRoaXMub3JpZ2luWSA9IG9yaWdpbi5vcmlnaW5ZO1xuICAgIHRoaXMub3ZlcmxheVggPSBvdmVybGF5Lm92ZXJsYXlYO1xuICAgIHRoaXMub3ZlcmxheVkgPSBvdmVybGF5Lm92ZXJsYXlZO1xuICB9XG59XG5cbi8qKlxuICogU2V0IG9mIHByb3BlcnRpZXMgcmVnYXJkaW5nIHRoZSBwb3NpdGlvbiBvZiB0aGUgb3JpZ2luIGFuZCBvdmVybGF5IHJlbGF0aXZlIHRvIHRoZSB2aWV3cG9ydFxuICogd2l0aCByZXNwZWN0IHRvIHRoZSBjb250YWluaW5nIFNjcm9sbGFibGUgZWxlbWVudHMuXG4gKlxuICogVGhlIG92ZXJsYXkgYW5kIG9yaWdpbiBhcmUgY2xpcHBlZCBpZiBhbnkgcGFydCBvZiB0aGVpciBib3VuZGluZyBjbGllbnQgcmVjdGFuZ2xlIGV4Y2VlZHMgdGhlXG4gKiBib3VuZHMgb2YgYW55IG9uZSBvZiB0aGUgc3RyYXRlZ3kncyBTY3JvbGxhYmxlJ3MgYm91bmRpbmcgY2xpZW50IHJlY3RhbmdsZS5cbiAqXG4gKiBUaGUgb3ZlcmxheSBhbmQgb3JpZ2luIGFyZSBvdXRzaWRlIHZpZXcgaWYgdGhlcmUgaXMgbm8gb3ZlcmxhcCBiZXR3ZWVuIHRoZWlyIGJvdW5kaW5nIGNsaWVudFxuICogcmVjdGFuZ2xlIGFuZCBhbnkgb25lIG9mIHRoZSBzdHJhdGVneSdzIFNjcm9sbGFibGUncyBib3VuZGluZyBjbGllbnQgcmVjdGFuZ2xlLlxuICpcbiAqICAgICAgIC0tLS0tLS0tLS0tICAgICAgICAgICAgICAgICAgICAtLS0tLS0tLS0tLVxuICogICAgICAgfCBvdXRzaWRlIHwgICAgICAgICAgICAgICAgICAgIHwgY2xpcHBlZCB8XG4gKiAgICAgICB8ICB2aWV3ICAgfCAgICAgICAgICAgICAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS1cbiAqICAgICAgIHwgICAgICAgICB8ICAgICAgICAgICAgICB8ICAgICB8ICAgICAgICAgfCAgICAgICAgfFxuICogICAgICAgLS0tLS0tLS0tLSAgICAgICAgICAgICAgIHwgICAgIC0tLS0tLS0tLS0tICAgICAgICB8XG4gKiAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0gICAgfCAgICAgICAgICAgICAgICAgICAgICAgIHxcbiAqICB8ICAgICAgICAgICAgICAgICAgICAgICAgfCAgICB8ICAgICAgU2Nyb2xsYWJsZSAgICAgICAgfFxuICogIHwgICAgICAgICAgICAgICAgICAgICAgICB8ICAgIHwgICAgICAgICAgICAgICAgICAgICAgICB8XG4gKiAgfCAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXG4gKiAgfCAgICAgIFNjcm9sbGFibGUgICAgICAgIHxcbiAqICB8ICAgICAgICAgICAgICAgICAgICAgICAgfFxuICogIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXG4gKlxuICogIEBkb2NzLXByaXZhdGVcbiAqL1xuZXhwb3J0IGNsYXNzIFNjcm9sbGluZ1Zpc2liaWxpdHkge1xuICBpc09yaWdpbkNsaXBwZWQ6IGJvb2xlYW47XG4gIGlzT3JpZ2luT3V0c2lkZVZpZXc6IGJvb2xlYW47XG4gIGlzT3ZlcmxheUNsaXBwZWQ6IGJvb2xlYW47XG4gIGlzT3ZlcmxheU91dHNpZGVWaWV3OiBib29sZWFuO1xufVxuXG4vKiogVGhlIGNoYW5nZSBldmVudCBlbWl0dGVkIGJ5IHRoZSBzdHJhdGVneSB3aGVuIGEgZmFsbGJhY2sgcG9zaXRpb24gaXMgdXNlZC4gKi9cbmV4cG9ydCBjbGFzcyBDb25uZWN0ZWRPdmVybGF5UG9zaXRpb25DaGFuZ2Uge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIC8qKiBUaGUgcG9zaXRpb24gdXNlZCBhcyBhIHJlc3VsdCBvZiB0aGlzIGNoYW5nZS4gKi9cbiAgICAgIHB1YmxpYyBjb25uZWN0aW9uUGFpcjogQ29ubmVjdGlvblBvc2l0aW9uUGFpcixcbiAgICAgIC8qKiBAZG9jcy1wcml2YXRlICovXG4gICAgICBAT3B0aW9uYWwoKSBwdWJsaWMgc2Nyb2xsYWJsZVZpZXdQcm9wZXJ0aWVzOiBTY3JvbGxpbmdWaXNpYmlsaXR5KSB7fVxufVxuXG4vKipcbiAqIFZhbGlkYXRlcyB3aGV0aGVyIGEgdmVydGljYWwgcG9zaXRpb24gcHJvcGVydHkgbWF0Y2hlcyB0aGUgZXhwZWN0ZWQgdmFsdWVzLlxuICogQHBhcmFtIHByb3BlcnR5IE5hbWUgb2YgdGhlIHByb3BlcnR5IGJlaW5nIHZhbGlkYXRlZC5cbiAqIEBwYXJhbSB2YWx1ZSBWYWx1ZSBvZiB0aGUgcHJvcGVydHkgYmVpbmcgdmFsaWRhdGVkLlxuICogQGRvY3MtcHJpdmF0ZVxuICovXG5leHBvcnQgZnVuY3Rpb24gdmFsaWRhdGVWZXJ0aWNhbFBvc2l0aW9uKHByb3BlcnR5OiBzdHJpbmcsIHZhbHVlOiBWZXJ0aWNhbENvbm5lY3Rpb25Qb3MpIHtcbiAgaWYgKHZhbHVlICE9PSAndG9wJyAmJiB2YWx1ZSAhPT0gJ2JvdHRvbScgJiYgdmFsdWUgIT09ICdjZW50ZXInKSB7XG4gICAgdGhyb3cgRXJyb3IoYENvbm5lY3RlZFBvc2l0aW9uOiBJbnZhbGlkICR7cHJvcGVydHl9IFwiJHt2YWx1ZX1cIi4gYCArXG4gICAgICAgICAgICAgICAgYEV4cGVjdGVkIFwidG9wXCIsIFwiYm90dG9tXCIgb3IgXCJjZW50ZXJcIi5gKTtcbiAgfVxufVxuXG4vKipcbiAqIFZhbGlkYXRlcyB3aGV0aGVyIGEgaG9yaXpvbnRhbCBwb3NpdGlvbiBwcm9wZXJ0eSBtYXRjaGVzIHRoZSBleHBlY3RlZCB2YWx1ZXMuXG4gKiBAcGFyYW0gcHJvcGVydHkgTmFtZSBvZiB0aGUgcHJvcGVydHkgYmVpbmcgdmFsaWRhdGVkLlxuICogQHBhcmFtIHZhbHVlIFZhbHVlIG9mIHRoZSBwcm9wZXJ0eSBiZWluZyB2YWxpZGF0ZWQuXG4gKiBAZG9jcy1wcml2YXRlXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiB2YWxpZGF0ZUhvcml6b250YWxQb3NpdGlvbihwcm9wZXJ0eTogc3RyaW5nLCB2YWx1ZTogSG9yaXpvbnRhbENvbm5lY3Rpb25Qb3MpIHtcbiAgaWYgKHZhbHVlICE9PSAnc3RhcnQnICYmIHZhbHVlICE9PSAnZW5kJyAmJiB2YWx1ZSAhPT0gJ2NlbnRlcicpIHtcbiAgICB0aHJvdyBFcnJvcihgQ29ubmVjdGVkUG9zaXRpb246IEludmFsaWQgJHtwcm9wZXJ0eX0gXCIke3ZhbHVlfVwiLiBgICtcbiAgICAgICAgICAgICAgICBgRXhwZWN0ZWQgXCJzdGFydFwiLCBcImVuZFwiIG9yIFwiY2VudGVyXCIuYCk7XG4gIH1cbn1cbiJdfQ==