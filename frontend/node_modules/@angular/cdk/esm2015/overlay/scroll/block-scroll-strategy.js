/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { coerceCssPixelValue } from '@angular/cdk/coercion';
/**
 * Strategy that will prevent the user from scrolling while the overlay is visible.
 */
export class BlockScrollStrategy {
    constructor(_viewportRuler, document) {
        this._viewportRuler = _viewportRuler;
        this._previousHTMLStyles = { top: '', left: '' };
        this._isEnabled = false;
        this._document = document;
    }
    /** Attaches this scroll strategy to an overlay. */
    attach() { }
    /** Blocks page-level scroll while the attached overlay is open. */
    enable() {
        if (this._canBeEnabled()) {
            const root = this._document.documentElement;
            this._previousScrollPosition = this._viewportRuler.getViewportScrollPosition();
            // Cache the previous inline styles in case the user had set them.
            this._previousHTMLStyles.left = root.style.left || '';
            this._previousHTMLStyles.top = root.style.top || '';
            // Note: we're using the `html` node, instead of the `body`, because the `body` may
            // have the user agent margin, whereas the `html` is guaranteed not to have one.
            root.style.left = coerceCssPixelValue(-this._previousScrollPosition.left);
            root.style.top = coerceCssPixelValue(-this._previousScrollPosition.top);
            root.classList.add('cdk-global-scrollblock');
            this._isEnabled = true;
        }
    }
    /** Unblocks page-level scroll while the attached overlay is open. */
    disable() {
        if (this._isEnabled) {
            const html = this._document.documentElement;
            const body = this._document.body;
            const htmlStyle = html.style;
            const bodyStyle = body.style;
            const previousHtmlScrollBehavior = htmlStyle.scrollBehavior || '';
            const previousBodyScrollBehavior = bodyStyle.scrollBehavior || '';
            this._isEnabled = false;
            htmlStyle.left = this._previousHTMLStyles.left;
            htmlStyle.top = this._previousHTMLStyles.top;
            html.classList.remove('cdk-global-scrollblock');
            // Disable user-defined smooth scrolling temporarily while we restore the scroll position.
            // See https://developer.mozilla.org/en-US/docs/Web/CSS/scroll-behavior
            htmlStyle.scrollBehavior = bodyStyle.scrollBehavior = 'auto';
            window.scroll(this._previousScrollPosition.left, this._previousScrollPosition.top);
            htmlStyle.scrollBehavior = previousHtmlScrollBehavior;
            bodyStyle.scrollBehavior = previousBodyScrollBehavior;
        }
    }
    _canBeEnabled() {
        // Since the scroll strategies can't be singletons, we have to use a global CSS class
        // (`cdk-global-scrollblock`) to make sure that we don't try to disable global
        // scrolling multiple times.
        const html = this._document.documentElement;
        if (html.classList.contains('cdk-global-scrollblock') || this._isEnabled) {
            return false;
        }
        const body = this._document.body;
        const viewport = this._viewportRuler.getViewportSize();
        return body.scrollHeight > viewport.height || body.scrollWidth > viewport.width;
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYmxvY2stc2Nyb2xsLXN0cmF0ZWd5LmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9vdmVybGF5L3Njcm9sbC9ibG9jay1zY3JvbGwtc3RyYXRlZ3kudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBSUgsT0FBTyxFQUFDLG1CQUFtQixFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFTMUQ7O0dBRUc7QUFDSCxNQUFNLE9BQU8sbUJBQW1CO0lBTTlCLFlBQW9CLGNBQTZCLEVBQUUsUUFBYTtRQUE1QyxtQkFBYyxHQUFkLGNBQWMsQ0FBZTtRQUx6Qyx3QkFBbUIsR0FBRyxFQUFDLEdBQUcsRUFBRSxFQUFFLEVBQUUsSUFBSSxFQUFFLEVBQUUsRUFBQyxDQUFDO1FBRTFDLGVBQVUsR0FBRyxLQUFLLENBQUM7UUFJekIsSUFBSSxDQUFDLFNBQVMsR0FBRyxRQUFRLENBQUM7SUFDNUIsQ0FBQztJQUVELG1EQUFtRDtJQUNuRCxNQUFNLEtBQUssQ0FBQztJQUVaLG1FQUFtRTtJQUNuRSxNQUFNO1FBQ0osSUFBSSxJQUFJLENBQUMsYUFBYSxFQUFFLEVBQUU7WUFDeEIsTUFBTSxJQUFJLEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQyxlQUFnQixDQUFDO1lBRTdDLElBQUksQ0FBQyx1QkFBdUIsR0FBRyxJQUFJLENBQUMsY0FBYyxDQUFDLHlCQUF5QixFQUFFLENBQUM7WUFFL0Usa0VBQWtFO1lBQ2xFLElBQUksQ0FBQyxtQkFBbUIsQ0FBQyxJQUFJLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLElBQUksRUFBRSxDQUFDO1lBQ3RELElBQUksQ0FBQyxtQkFBbUIsQ0FBQyxHQUFHLEdBQUcsSUFBSSxDQUFDLEtBQUssQ0FBQyxHQUFHLElBQUksRUFBRSxDQUFDO1lBRXBELG1GQUFtRjtZQUNuRixnRkFBZ0Y7WUFDaEYsSUFBSSxDQUFDLEtBQUssQ0FBQyxJQUFJLEdBQUcsbUJBQW1CLENBQUMsQ0FBQyxJQUFJLENBQUMsdUJBQXVCLENBQUMsSUFBSSxDQUFDLENBQUM7WUFDMUUsSUFBSSxDQUFDLEtBQUssQ0FBQyxHQUFHLEdBQUcsbUJBQW1CLENBQUMsQ0FBQyxJQUFJLENBQUMsdUJBQXVCLENBQUMsR0FBRyxDQUFDLENBQUM7WUFDeEUsSUFBSSxDQUFDLFNBQVMsQ0FBQyxHQUFHLENBQUMsd0JBQXdCLENBQUMsQ0FBQztZQUM3QyxJQUFJLENBQUMsVUFBVSxHQUFHLElBQUksQ0FBQztTQUN4QjtJQUNILENBQUM7SUFFRCxxRUFBcUU7SUFDckUsT0FBTztRQUNMLElBQUksSUFBSSxDQUFDLFVBQVUsRUFBRTtZQUNuQixNQUFNLElBQUksR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDLGVBQWdCLENBQUM7WUFDN0MsTUFBTSxJQUFJLEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQyxJQUFLLENBQUM7WUFDbEMsTUFBTSxTQUFTLEdBQUcsSUFBSSxDQUFDLEtBQTBDLENBQUM7WUFDbEUsTUFBTSxTQUFTLEdBQUcsSUFBSSxDQUFDLEtBQTBDLENBQUM7WUFDbEUsTUFBTSwwQkFBMEIsR0FBRyxTQUFTLENBQUMsY0FBYyxJQUFJLEVBQUUsQ0FBQztZQUNsRSxNQUFNLDBCQUEwQixHQUFHLFNBQVMsQ0FBQyxjQUFjLElBQUksRUFBRSxDQUFDO1lBRWxFLElBQUksQ0FBQyxVQUFVLEdBQUcsS0FBSyxDQUFDO1lBRXhCLFNBQVMsQ0FBQyxJQUFJLEdBQUcsSUFBSSxDQUFDLG1CQUFtQixDQUFDLElBQUksQ0FBQztZQUMvQyxTQUFTLENBQUMsR0FBRyxHQUFHLElBQUksQ0FBQyxtQkFBbUIsQ0FBQyxHQUFHLENBQUM7WUFDN0MsSUFBSSxDQUFDLFNBQVMsQ0FBQyxNQUFNLENBQUMsd0JBQXdCLENBQUMsQ0FBQztZQUVoRCwwRkFBMEY7WUFDMUYsdUVBQXVFO1lBQ3ZFLFNBQVMsQ0FBQyxjQUFjLEdBQUcsU0FBUyxDQUFDLGNBQWMsR0FBRyxNQUFNLENBQUM7WUFFN0QsTUFBTSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsdUJBQXVCLENBQUMsSUFBSSxFQUFFLElBQUksQ0FBQyx1QkFBdUIsQ0FBQyxHQUFHLENBQUMsQ0FBQztZQUVuRixTQUFTLENBQUMsY0FBYyxHQUFHLDBCQUEwQixDQUFDO1lBQ3RELFNBQVMsQ0FBQyxjQUFjLEdBQUcsMEJBQTBCLENBQUM7U0FDdkQ7SUFDSCxDQUFDO0lBRU8sYUFBYTtRQUNuQixxRkFBcUY7UUFDckYsOEVBQThFO1FBQzlFLDRCQUE0QjtRQUM1QixNQUFNLElBQUksR0FBRyxJQUFJLENBQUMsU0FBUyxDQUFDLGVBQWdCLENBQUM7UUFFN0MsSUFBSSxJQUFJLENBQUMsU0FBUyxDQUFDLFFBQVEsQ0FBQyx3QkFBd0IsQ0FBQyxJQUFJLElBQUksQ0FBQyxVQUFVLEVBQUU7WUFDeEUsT0FBTyxLQUFLLENBQUM7U0FDZDtRQUVELE1BQU0sSUFBSSxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsSUFBSSxDQUFDO1FBQ2pDLE1BQU0sUUFBUSxHQUFHLElBQUksQ0FBQyxjQUFjLENBQUMsZUFBZSxFQUFFLENBQUM7UUFDdkQsT0FBTyxJQUFJLENBQUMsWUFBWSxHQUFHLFFBQVEsQ0FBQyxNQUFNLElBQUksSUFBSSxDQUFDLFdBQVcsR0FBRyxRQUFRLENBQUMsS0FBSyxDQUFDO0lBQ2xGLENBQUM7Q0FDRiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1Njcm9sbFN0cmF0ZWd5fSBmcm9tICcuL3Njcm9sbC1zdHJhdGVneSc7XG5pbXBvcnQge1ZpZXdwb3J0UnVsZXJ9IGZyb20gJ0Bhbmd1bGFyL2Nkay9zY3JvbGxpbmcnO1xuaW1wb3J0IHtjb2VyY2VDc3NQaXhlbFZhbHVlfSBmcm9tICdAYW5ndWxhci9jZGsvY29lcmNpb24nO1xuXG4vKipcbiAqIEV4dGVuZGVkIGBDU1NTdHlsZURlY2xhcmF0aW9uYCB0aGF0IGluY2x1ZGVzIGBzY3JvbGxCZWhhdmlvcmAgd2hpY2ggaXNuJ3QgcGFydCBvZiB0aGVcbiAqIGJ1aWx0LWluIFRTIHR5cGluZ3MuIE9uY2UgaXQgaXMsIHRoaXMgZGVjbGFyYXRpb24gY2FuIGJlIHJlbW92ZWQgc2FmZWx5LlxuICogQGRvY3MtcHJpdmF0ZVxuICovXG50eXBlIFNjcm9sbEJlaGF2aW9yQ1NTU3R5bGVEZWNsYXJhdGlvbiA9IENTU1N0eWxlRGVjbGFyYXRpb24gJiB7c2Nyb2xsQmVoYXZpb3I6IHN0cmluZ307XG5cbi8qKlxuICogU3RyYXRlZ3kgdGhhdCB3aWxsIHByZXZlbnQgdGhlIHVzZXIgZnJvbSBzY3JvbGxpbmcgd2hpbGUgdGhlIG92ZXJsYXkgaXMgdmlzaWJsZS5cbiAqL1xuZXhwb3J0IGNsYXNzIEJsb2NrU2Nyb2xsU3RyYXRlZ3kgaW1wbGVtZW50cyBTY3JvbGxTdHJhdGVneSB7XG4gIHByaXZhdGUgX3ByZXZpb3VzSFRNTFN0eWxlcyA9IHt0b3A6ICcnLCBsZWZ0OiAnJ307XG4gIHByaXZhdGUgX3ByZXZpb3VzU2Nyb2xsUG9zaXRpb246IHsgdG9wOiBudW1iZXIsIGxlZnQ6IG51bWJlciB9O1xuICBwcml2YXRlIF9pc0VuYWJsZWQgPSBmYWxzZTtcbiAgcHJpdmF0ZSBfZG9jdW1lbnQ6IERvY3VtZW50O1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgX3ZpZXdwb3J0UnVsZXI6IFZpZXdwb3J0UnVsZXIsIGRvY3VtZW50OiBhbnkpIHtcbiAgICB0aGlzLl9kb2N1bWVudCA9IGRvY3VtZW50O1xuICB9XG5cbiAgLyoqIEF0dGFjaGVzIHRoaXMgc2Nyb2xsIHN0cmF0ZWd5IHRvIGFuIG92ZXJsYXkuICovXG4gIGF0dGFjaCgpIHsgfVxuXG4gIC8qKiBCbG9ja3MgcGFnZS1sZXZlbCBzY3JvbGwgd2hpbGUgdGhlIGF0dGFjaGVkIG92ZXJsYXkgaXMgb3Blbi4gKi9cbiAgZW5hYmxlKCkge1xuICAgIGlmICh0aGlzLl9jYW5CZUVuYWJsZWQoKSkge1xuICAgICAgY29uc3Qgcm9vdCA9IHRoaXMuX2RvY3VtZW50LmRvY3VtZW50RWxlbWVudCE7XG5cbiAgICAgIHRoaXMuX3ByZXZpb3VzU2Nyb2xsUG9zaXRpb24gPSB0aGlzLl92aWV3cG9ydFJ1bGVyLmdldFZpZXdwb3J0U2Nyb2xsUG9zaXRpb24oKTtcblxuICAgICAgLy8gQ2FjaGUgdGhlIHByZXZpb3VzIGlubGluZSBzdHlsZXMgaW4gY2FzZSB0aGUgdXNlciBoYWQgc2V0IHRoZW0uXG4gICAgICB0aGlzLl9wcmV2aW91c0hUTUxTdHlsZXMubGVmdCA9IHJvb3Quc3R5bGUubGVmdCB8fCAnJztcbiAgICAgIHRoaXMuX3ByZXZpb3VzSFRNTFN0eWxlcy50b3AgPSByb290LnN0eWxlLnRvcCB8fCAnJztcblxuICAgICAgLy8gTm90ZTogd2UncmUgdXNpbmcgdGhlIGBodG1sYCBub2RlLCBpbnN0ZWFkIG9mIHRoZSBgYm9keWAsIGJlY2F1c2UgdGhlIGBib2R5YCBtYXlcbiAgICAgIC8vIGhhdmUgdGhlIHVzZXIgYWdlbnQgbWFyZ2luLCB3aGVyZWFzIHRoZSBgaHRtbGAgaXMgZ3VhcmFudGVlZCBub3QgdG8gaGF2ZSBvbmUuXG4gICAgICByb290LnN0eWxlLmxlZnQgPSBjb2VyY2VDc3NQaXhlbFZhbHVlKC10aGlzLl9wcmV2aW91c1Njcm9sbFBvc2l0aW9uLmxlZnQpO1xuICAgICAgcm9vdC5zdHlsZS50b3AgPSBjb2VyY2VDc3NQaXhlbFZhbHVlKC10aGlzLl9wcmV2aW91c1Njcm9sbFBvc2l0aW9uLnRvcCk7XG4gICAgICByb290LmNsYXNzTGlzdC5hZGQoJ2Nkay1nbG9iYWwtc2Nyb2xsYmxvY2snKTtcbiAgICAgIHRoaXMuX2lzRW5hYmxlZCA9IHRydWU7XG4gICAgfVxuICB9XG5cbiAgLyoqIFVuYmxvY2tzIHBhZ2UtbGV2ZWwgc2Nyb2xsIHdoaWxlIHRoZSBhdHRhY2hlZCBvdmVybGF5IGlzIG9wZW4uICovXG4gIGRpc2FibGUoKSB7XG4gICAgaWYgKHRoaXMuX2lzRW5hYmxlZCkge1xuICAgICAgY29uc3QgaHRtbCA9IHRoaXMuX2RvY3VtZW50LmRvY3VtZW50RWxlbWVudCE7XG4gICAgICBjb25zdCBib2R5ID0gdGhpcy5fZG9jdW1lbnQuYm9keSE7XG4gICAgICBjb25zdCBodG1sU3R5bGUgPSBodG1sLnN0eWxlIGFzIFNjcm9sbEJlaGF2aW9yQ1NTU3R5bGVEZWNsYXJhdGlvbjtcbiAgICAgIGNvbnN0IGJvZHlTdHlsZSA9IGJvZHkuc3R5bGUgYXMgU2Nyb2xsQmVoYXZpb3JDU1NTdHlsZURlY2xhcmF0aW9uO1xuICAgICAgY29uc3QgcHJldmlvdXNIdG1sU2Nyb2xsQmVoYXZpb3IgPSBodG1sU3R5bGUuc2Nyb2xsQmVoYXZpb3IgfHwgJyc7XG4gICAgICBjb25zdCBwcmV2aW91c0JvZHlTY3JvbGxCZWhhdmlvciA9IGJvZHlTdHlsZS5zY3JvbGxCZWhhdmlvciB8fCAnJztcblxuICAgICAgdGhpcy5faXNFbmFibGVkID0gZmFsc2U7XG5cbiAgICAgIGh0bWxTdHlsZS5sZWZ0ID0gdGhpcy5fcHJldmlvdXNIVE1MU3R5bGVzLmxlZnQ7XG4gICAgICBodG1sU3R5bGUudG9wID0gdGhpcy5fcHJldmlvdXNIVE1MU3R5bGVzLnRvcDtcbiAgICAgIGh0bWwuY2xhc3NMaXN0LnJlbW92ZSgnY2RrLWdsb2JhbC1zY3JvbGxibG9jaycpO1xuXG4gICAgICAvLyBEaXNhYmxlIHVzZXItZGVmaW5lZCBzbW9vdGggc2Nyb2xsaW5nIHRlbXBvcmFyaWx5IHdoaWxlIHdlIHJlc3RvcmUgdGhlIHNjcm9sbCBwb3NpdGlvbi5cbiAgICAgIC8vIFNlZSBodHRwczovL2RldmVsb3Blci5tb3ppbGxhLm9yZy9lbi1VUy9kb2NzL1dlYi9DU1Mvc2Nyb2xsLWJlaGF2aW9yXG4gICAgICBodG1sU3R5bGUuc2Nyb2xsQmVoYXZpb3IgPSBib2R5U3R5bGUuc2Nyb2xsQmVoYXZpb3IgPSAnYXV0byc7XG5cbiAgICAgIHdpbmRvdy5zY3JvbGwodGhpcy5fcHJldmlvdXNTY3JvbGxQb3NpdGlvbi5sZWZ0LCB0aGlzLl9wcmV2aW91c1Njcm9sbFBvc2l0aW9uLnRvcCk7XG5cbiAgICAgIGh0bWxTdHlsZS5zY3JvbGxCZWhhdmlvciA9IHByZXZpb3VzSHRtbFNjcm9sbEJlaGF2aW9yO1xuICAgICAgYm9keVN0eWxlLnNjcm9sbEJlaGF2aW9yID0gcHJldmlvdXNCb2R5U2Nyb2xsQmVoYXZpb3I7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBfY2FuQmVFbmFibGVkKCk6IGJvb2xlYW4ge1xuICAgIC8vIFNpbmNlIHRoZSBzY3JvbGwgc3RyYXRlZ2llcyBjYW4ndCBiZSBzaW5nbGV0b25zLCB3ZSBoYXZlIHRvIHVzZSBhIGdsb2JhbCBDU1MgY2xhc3NcbiAgICAvLyAoYGNkay1nbG9iYWwtc2Nyb2xsYmxvY2tgKSB0byBtYWtlIHN1cmUgdGhhdCB3ZSBkb24ndCB0cnkgdG8gZGlzYWJsZSBnbG9iYWxcbiAgICAvLyBzY3JvbGxpbmcgbXVsdGlwbGUgdGltZXMuXG4gICAgY29uc3QgaHRtbCA9IHRoaXMuX2RvY3VtZW50LmRvY3VtZW50RWxlbWVudCE7XG5cbiAgICBpZiAoaHRtbC5jbGFzc0xpc3QuY29udGFpbnMoJ2Nkay1nbG9iYWwtc2Nyb2xsYmxvY2snKSB8fCB0aGlzLl9pc0VuYWJsZWQpIHtcbiAgICAgIHJldHVybiBmYWxzZTtcbiAgICB9XG5cbiAgICBjb25zdCBib2R5ID0gdGhpcy5fZG9jdW1lbnQuYm9keTtcbiAgICBjb25zdCB2aWV3cG9ydCA9IHRoaXMuX3ZpZXdwb3J0UnVsZXIuZ2V0Vmlld3BvcnRTaXplKCk7XG4gICAgcmV0dXJuIGJvZHkuc2Nyb2xsSGVpZ2h0ID4gdmlld3BvcnQuaGVpZ2h0IHx8IGJvZHkuc2Nyb2xsV2lkdGggPiB2aWV3cG9ydC53aWR0aDtcbiAgfVxufVxuIl19