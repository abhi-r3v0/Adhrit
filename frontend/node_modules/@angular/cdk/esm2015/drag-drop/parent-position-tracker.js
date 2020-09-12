/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { getMutableClientRect, adjustClientRect } from './client-rect';
/** Keeps track of the scroll position and dimensions of the parents of an element. */
export class ParentPositionTracker {
    constructor(_document, _viewportRuler) {
        this._document = _document;
        this._viewportRuler = _viewportRuler;
        /** Cached positions of the scrollable parent elements. */
        this.positions = new Map();
    }
    /** Clears the cached positions. */
    clear() {
        this.positions.clear();
    }
    /** Caches the positions. Should be called at the beginning of a drag sequence. */
    cache(elements) {
        this.clear();
        this.positions.set(this._document, {
            scrollPosition: this._viewportRuler.getViewportScrollPosition(),
        });
        elements.forEach(element => {
            this.positions.set(element, {
                scrollPosition: { top: element.scrollTop, left: element.scrollLeft },
                clientRect: getMutableClientRect(element)
            });
        });
    }
    /** Handles scrolling while a drag is taking place. */
    handleScroll(event) {
        const target = event.target;
        const cachedPosition = this.positions.get(target);
        if (!cachedPosition) {
            return null;
        }
        // Used when figuring out whether an element is inside the scroll parent. If the scrolled
        // parent is the `document`, we use the `documentElement`, because IE doesn't support
        // `contains` on the `document`.
        const scrolledParentNode = target === this._document ? target.documentElement : target;
        const scrollPosition = cachedPosition.scrollPosition;
        let newTop;
        let newLeft;
        if (target === this._document) {
            const viewportScrollPosition = this._viewportRuler.getViewportScrollPosition();
            newTop = viewportScrollPosition.top;
            newLeft = viewportScrollPosition.left;
        }
        else {
            newTop = target.scrollTop;
            newLeft = target.scrollLeft;
        }
        const topDifference = scrollPosition.top - newTop;
        const leftDifference = scrollPosition.left - newLeft;
        // Go through and update the cached positions of the scroll
        // parents that are inside the element that was scrolled.
        this.positions.forEach((position, node) => {
            if (position.clientRect && target !== node && scrolledParentNode.contains(node)) {
                adjustClientRect(position.clientRect, topDifference, leftDifference);
            }
        });
        scrollPosition.top = newTop;
        scrollPosition.left = newLeft;
        return { top: topDifference, left: leftDifference };
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicGFyZW50LXBvc2l0aW9uLXRyYWNrZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL2RyYWctZHJvcC9wYXJlbnQtcG9zaXRpb24tdHJhY2tlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFHSCxPQUFPLEVBQUMsb0JBQW9CLEVBQUUsZ0JBQWdCLEVBQUMsTUFBTSxlQUFlLENBQUM7QUFRckUsc0ZBQXNGO0FBQ3RGLE1BQU0sT0FBTyxxQkFBcUI7SUFPaEMsWUFBb0IsU0FBbUIsRUFBVSxjQUE2QjtRQUExRCxjQUFTLEdBQVQsU0FBUyxDQUFVO1FBQVUsbUJBQWMsR0FBZCxjQUFjLENBQWU7UUFOOUUsMERBQTBEO1FBQ2pELGNBQVMsR0FBRyxJQUFJLEdBQUcsRUFHeEIsQ0FBQztJQUU0RSxDQUFDO0lBRWxGLG1DQUFtQztJQUNuQyxLQUFLO1FBQ0gsSUFBSSxDQUFDLFNBQVMsQ0FBQyxLQUFLLEVBQUUsQ0FBQztJQUN6QixDQUFDO0lBRUQsa0ZBQWtGO0lBQ2xGLEtBQUssQ0FBQyxRQUFvRDtRQUN4RCxJQUFJLENBQUMsS0FBSyxFQUFFLENBQUM7UUFDYixJQUFJLENBQUMsU0FBUyxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsU0FBUyxFQUFFO1lBQ2pDLGNBQWMsRUFBRSxJQUFJLENBQUMsY0FBYyxDQUFDLHlCQUF5QixFQUFFO1NBQ2hFLENBQUMsQ0FBQztRQUVILFFBQVEsQ0FBQyxPQUFPLENBQUMsT0FBTyxDQUFDLEVBQUU7WUFDekIsSUFBSSxDQUFDLFNBQVMsQ0FBQyxHQUFHLENBQUMsT0FBTyxFQUFFO2dCQUMxQixjQUFjLEVBQUUsRUFBQyxHQUFHLEVBQUUsT0FBTyxDQUFDLFNBQVMsRUFBRSxJQUFJLEVBQUUsT0FBTyxDQUFDLFVBQVUsRUFBQztnQkFDbEUsVUFBVSxFQUFFLG9CQUFvQixDQUFDLE9BQU8sQ0FBQzthQUMxQyxDQUFDLENBQUM7UUFDTCxDQUFDLENBQUMsQ0FBQztJQUNMLENBQUM7SUFFRCxzREFBc0Q7SUFDdEQsWUFBWSxDQUFDLEtBQVk7UUFDdkIsTUFBTSxNQUFNLEdBQUcsS0FBSyxDQUFDLE1BQWdDLENBQUM7UUFDdEQsTUFBTSxjQUFjLEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQyxHQUFHLENBQUMsTUFBTSxDQUFDLENBQUM7UUFFbEQsSUFBSSxDQUFDLGNBQWMsRUFBRTtZQUNuQixPQUFPLElBQUksQ0FBQztTQUNiO1FBRUQseUZBQXlGO1FBQ3pGLHFGQUFxRjtRQUNyRixnQ0FBZ0M7UUFDaEMsTUFBTSxrQkFBa0IsR0FBRyxNQUFNLEtBQUssSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUMsTUFBTSxDQUFDLGVBQWUsQ0FBQyxDQUFDLENBQUMsTUFBTSxDQUFDO1FBQ3ZGLE1BQU0sY0FBYyxHQUFHLGNBQWMsQ0FBQyxjQUFjLENBQUM7UUFDckQsSUFBSSxNQUFjLENBQUM7UUFDbkIsSUFBSSxPQUFlLENBQUM7UUFFcEIsSUFBSSxNQUFNLEtBQUssSUFBSSxDQUFDLFNBQVMsRUFBRTtZQUM3QixNQUFNLHNCQUFzQixHQUFHLElBQUksQ0FBQyxjQUFlLENBQUMseUJBQXlCLEVBQUUsQ0FBQztZQUNoRixNQUFNLEdBQUcsc0JBQXNCLENBQUMsR0FBRyxDQUFDO1lBQ3BDLE9BQU8sR0FBRyxzQkFBc0IsQ0FBQyxJQUFJLENBQUM7U0FDdkM7YUFBTTtZQUNMLE1BQU0sR0FBSSxNQUFzQixDQUFDLFNBQVMsQ0FBQztZQUMzQyxPQUFPLEdBQUksTUFBc0IsQ0FBQyxVQUFVLENBQUM7U0FDOUM7UUFFRCxNQUFNLGFBQWEsR0FBRyxjQUFjLENBQUMsR0FBRyxHQUFHLE1BQU0sQ0FBQztRQUNsRCxNQUFNLGNBQWMsR0FBRyxjQUFjLENBQUMsSUFBSSxHQUFHLE9BQU8sQ0FBQztRQUVyRCwyREFBMkQ7UUFDM0QseURBQXlEO1FBQ3pELElBQUksQ0FBQyxTQUFTLENBQUMsT0FBTyxDQUFDLENBQUMsUUFBUSxFQUFFLElBQUksRUFBRSxFQUFFO1lBQ3hDLElBQUksUUFBUSxDQUFDLFVBQVUsSUFBSSxNQUFNLEtBQUssSUFBSSxJQUFJLGtCQUFrQixDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsRUFBRTtnQkFDL0UsZ0JBQWdCLENBQUMsUUFBUSxDQUFDLFVBQVUsRUFBRSxhQUFhLEVBQUUsY0FBYyxDQUFDLENBQUM7YUFDdEU7UUFDSCxDQUFDLENBQUMsQ0FBQztRQUVILGNBQWMsQ0FBQyxHQUFHLEdBQUcsTUFBTSxDQUFDO1FBQzVCLGNBQWMsQ0FBQyxJQUFJLEdBQUcsT0FBTyxDQUFDO1FBRTlCLE9BQU8sRUFBQyxHQUFHLEVBQUUsYUFBYSxFQUFFLElBQUksRUFBRSxjQUFjLEVBQUMsQ0FBQztJQUNwRCxDQUFDO0NBQ0YiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtWaWV3cG9ydFJ1bGVyfSBmcm9tICdAYW5ndWxhci9jZGsvc2Nyb2xsaW5nJztcbmltcG9ydCB7Z2V0TXV0YWJsZUNsaWVudFJlY3QsIGFkanVzdENsaWVudFJlY3R9IGZyb20gJy4vY2xpZW50LXJlY3QnO1xuXG4vKiogT2JqZWN0IGhvbGRpbmcgdGhlIHNjcm9sbCBwb3NpdGlvbiBvZiBzb21ldGhpbmcuICovXG5pbnRlcmZhY2UgU2Nyb2xsUG9zaXRpb24ge1xuICB0b3A6IG51bWJlcjtcbiAgbGVmdDogbnVtYmVyO1xufVxuXG4vKiogS2VlcHMgdHJhY2sgb2YgdGhlIHNjcm9sbCBwb3NpdGlvbiBhbmQgZGltZW5zaW9ucyBvZiB0aGUgcGFyZW50cyBvZiBhbiBlbGVtZW50LiAqL1xuZXhwb3J0IGNsYXNzIFBhcmVudFBvc2l0aW9uVHJhY2tlciB7XG4gIC8qKiBDYWNoZWQgcG9zaXRpb25zIG9mIHRoZSBzY3JvbGxhYmxlIHBhcmVudCBlbGVtZW50cy4gKi9cbiAgcmVhZG9ubHkgcG9zaXRpb25zID0gbmV3IE1hcDxEb2N1bWVudHxIVE1MRWxlbWVudCwge1xuICAgIHNjcm9sbFBvc2l0aW9uOiBTY3JvbGxQb3NpdGlvbixcbiAgICBjbGllbnRSZWN0PzogQ2xpZW50UmVjdFxuICB9PigpO1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgX2RvY3VtZW50OiBEb2N1bWVudCwgcHJpdmF0ZSBfdmlld3BvcnRSdWxlcjogVmlld3BvcnRSdWxlcikge31cblxuICAvKiogQ2xlYXJzIHRoZSBjYWNoZWQgcG9zaXRpb25zLiAqL1xuICBjbGVhcigpIHtcbiAgICB0aGlzLnBvc2l0aW9ucy5jbGVhcigpO1xuICB9XG5cbiAgLyoqIENhY2hlcyB0aGUgcG9zaXRpb25zLiBTaG91bGQgYmUgY2FsbGVkIGF0IHRoZSBiZWdpbm5pbmcgb2YgYSBkcmFnIHNlcXVlbmNlLiAqL1xuICBjYWNoZShlbGVtZW50czogSFRNTEVsZW1lbnRbXSB8IFJlYWRvbmx5QXJyYXk8SFRNTEVsZW1lbnQ+KSB7XG4gICAgdGhpcy5jbGVhcigpO1xuICAgIHRoaXMucG9zaXRpb25zLnNldCh0aGlzLl9kb2N1bWVudCwge1xuICAgICAgc2Nyb2xsUG9zaXRpb246IHRoaXMuX3ZpZXdwb3J0UnVsZXIuZ2V0Vmlld3BvcnRTY3JvbGxQb3NpdGlvbigpLFxuICAgIH0pO1xuXG4gICAgZWxlbWVudHMuZm9yRWFjaChlbGVtZW50ID0+IHtcbiAgICAgIHRoaXMucG9zaXRpb25zLnNldChlbGVtZW50LCB7XG4gICAgICAgIHNjcm9sbFBvc2l0aW9uOiB7dG9wOiBlbGVtZW50LnNjcm9sbFRvcCwgbGVmdDogZWxlbWVudC5zY3JvbGxMZWZ0fSxcbiAgICAgICAgY2xpZW50UmVjdDogZ2V0TXV0YWJsZUNsaWVudFJlY3QoZWxlbWVudClcbiAgICAgIH0pO1xuICAgIH0pO1xuICB9XG5cbiAgLyoqIEhhbmRsZXMgc2Nyb2xsaW5nIHdoaWxlIGEgZHJhZyBpcyB0YWtpbmcgcGxhY2UuICovXG4gIGhhbmRsZVNjcm9sbChldmVudDogRXZlbnQpOiBTY3JvbGxQb3NpdGlvbiB8IG51bGwge1xuICAgIGNvbnN0IHRhcmdldCA9IGV2ZW50LnRhcmdldCBhcyBIVE1MRWxlbWVudCB8IERvY3VtZW50O1xuICAgIGNvbnN0IGNhY2hlZFBvc2l0aW9uID0gdGhpcy5wb3NpdGlvbnMuZ2V0KHRhcmdldCk7XG5cbiAgICBpZiAoIWNhY2hlZFBvc2l0aW9uKSB7XG4gICAgICByZXR1cm4gbnVsbDtcbiAgICB9XG5cbiAgICAvLyBVc2VkIHdoZW4gZmlndXJpbmcgb3V0IHdoZXRoZXIgYW4gZWxlbWVudCBpcyBpbnNpZGUgdGhlIHNjcm9sbCBwYXJlbnQuIElmIHRoZSBzY3JvbGxlZFxuICAgIC8vIHBhcmVudCBpcyB0aGUgYGRvY3VtZW50YCwgd2UgdXNlIHRoZSBgZG9jdW1lbnRFbGVtZW50YCwgYmVjYXVzZSBJRSBkb2Vzbid0IHN1cHBvcnRcbiAgICAvLyBgY29udGFpbnNgIG9uIHRoZSBgZG9jdW1lbnRgLlxuICAgIGNvbnN0IHNjcm9sbGVkUGFyZW50Tm9kZSA9IHRhcmdldCA9PT0gdGhpcy5fZG9jdW1lbnQgPyB0YXJnZXQuZG9jdW1lbnRFbGVtZW50IDogdGFyZ2V0O1xuICAgIGNvbnN0IHNjcm9sbFBvc2l0aW9uID0gY2FjaGVkUG9zaXRpb24uc2Nyb2xsUG9zaXRpb247XG4gICAgbGV0IG5ld1RvcDogbnVtYmVyO1xuICAgIGxldCBuZXdMZWZ0OiBudW1iZXI7XG5cbiAgICBpZiAodGFyZ2V0ID09PSB0aGlzLl9kb2N1bWVudCkge1xuICAgICAgY29uc3Qgdmlld3BvcnRTY3JvbGxQb3NpdGlvbiA9IHRoaXMuX3ZpZXdwb3J0UnVsZXIhLmdldFZpZXdwb3J0U2Nyb2xsUG9zaXRpb24oKTtcbiAgICAgIG5ld1RvcCA9IHZpZXdwb3J0U2Nyb2xsUG9zaXRpb24udG9wO1xuICAgICAgbmV3TGVmdCA9IHZpZXdwb3J0U2Nyb2xsUG9zaXRpb24ubGVmdDtcbiAgICB9IGVsc2Uge1xuICAgICAgbmV3VG9wID0gKHRhcmdldCBhcyBIVE1MRWxlbWVudCkuc2Nyb2xsVG9wO1xuICAgICAgbmV3TGVmdCA9ICh0YXJnZXQgYXMgSFRNTEVsZW1lbnQpLnNjcm9sbExlZnQ7XG4gICAgfVxuXG4gICAgY29uc3QgdG9wRGlmZmVyZW5jZSA9IHNjcm9sbFBvc2l0aW9uLnRvcCAtIG5ld1RvcDtcbiAgICBjb25zdCBsZWZ0RGlmZmVyZW5jZSA9IHNjcm9sbFBvc2l0aW9uLmxlZnQgLSBuZXdMZWZ0O1xuXG4gICAgLy8gR28gdGhyb3VnaCBhbmQgdXBkYXRlIHRoZSBjYWNoZWQgcG9zaXRpb25zIG9mIHRoZSBzY3JvbGxcbiAgICAvLyBwYXJlbnRzIHRoYXQgYXJlIGluc2lkZSB0aGUgZWxlbWVudCB0aGF0IHdhcyBzY3JvbGxlZC5cbiAgICB0aGlzLnBvc2l0aW9ucy5mb3JFYWNoKChwb3NpdGlvbiwgbm9kZSkgPT4ge1xuICAgICAgaWYgKHBvc2l0aW9uLmNsaWVudFJlY3QgJiYgdGFyZ2V0ICE9PSBub2RlICYmIHNjcm9sbGVkUGFyZW50Tm9kZS5jb250YWlucyhub2RlKSkge1xuICAgICAgICBhZGp1c3RDbGllbnRSZWN0KHBvc2l0aW9uLmNsaWVudFJlY3QsIHRvcERpZmZlcmVuY2UsIGxlZnREaWZmZXJlbmNlKTtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIHNjcm9sbFBvc2l0aW9uLnRvcCA9IG5ld1RvcDtcbiAgICBzY3JvbGxQb3NpdGlvbi5sZWZ0ID0gbmV3TGVmdDtcblxuICAgIHJldHVybiB7dG9wOiB0b3BEaWZmZXJlbmNlLCBsZWZ0OiBsZWZ0RGlmZmVyZW5jZX07XG4gIH1cbn1cbiJdfQ==