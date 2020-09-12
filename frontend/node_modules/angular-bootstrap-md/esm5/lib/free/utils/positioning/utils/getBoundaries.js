/**
 * Computed the boundaries limits and return them
 */
import { getScrollParent } from './getScrollParent';
import { getParentNode } from './getParentNode';
import { findCommonOffsetParent } from './findCommonOffsetParent';
import { getOffsetRectRelativeToArbitraryNode } from './getOffsetRectRelativeToArbitraryNode';
import { getViewportOffsetRectRelativeToArtbitraryNode } from './getViewportOffsetRectRelativeToArtbitraryNode';
import { getWindowSizes } from './getWindowSizes';
import { isFixed } from './isFixed';
import { getFixedPositionOffsetParent } from './getFixedPositionOffsetParent';
export function getBoundaries(target, host, padding, boundariesElement, fixedPosition) {
    // NOTE: 1 DOM access here
    if (padding === void 0) { padding = 0; }
    if (fixedPosition === void 0) { fixedPosition = false; }
    var boundaries = { top: 0, left: 0 };
    var offsetParent = fixedPosition ? getFixedPositionOffsetParent(target) : findCommonOffsetParent(target, host);
    // Handle viewport case
    if (boundariesElement === 'viewport') {
        boundaries = getViewportOffsetRectRelativeToArtbitraryNode(offsetParent, fixedPosition);
    }
    else {
        // Handle other cases based on DOM element used as boundaries
        var boundariesNode = void 0;
        if (boundariesElement === 'scrollParent') {
            boundariesNode = getScrollParent(getParentNode(host));
            if (boundariesNode.nodeName === 'BODY') {
                boundariesNode = target.ownerDocument.documentElement;
            }
        }
        else if (boundariesElement === 'window') {
            boundariesNode = target.ownerDocument.documentElement;
        }
        else {
            boundariesNode = boundariesElement;
        }
        var offsets = getOffsetRectRelativeToArbitraryNode(boundariesNode, offsetParent, fixedPosition);
        // In case of HTML, we need a different computation
        if (boundariesNode.nodeName === 'HTML' && !isFixed(offsetParent)) {
            var _a = getWindowSizes(target.ownerDocument), height = _a.height, width = _a.width;
            boundaries.top += offsets.top - offsets.marginTop;
            boundaries.bottom = Number(height) + Number(offsets.top);
            boundaries.left += offsets.left - offsets.marginLeft;
            boundaries.right = Number(width) + Number(offsets.left);
        }
        else {
            // for all the other DOM elements, this one is good
            boundaries = offsets;
        }
    }
    // Add paddings
    boundaries.left += padding;
    boundaries.top += padding;
    boundaries.right -= padding;
    boundaries.bottom -= padding;
    return boundaries;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZ2V0Qm91bmRhcmllcy5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvdXRpbHMvcG9zaXRpb25pbmcvdXRpbHMvZ2V0Qm91bmRhcmllcy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7R0FFRztBQUNILE9BQU8sRUFBRSxlQUFlLEVBQUUsTUFBTSxtQkFBbUIsQ0FBQztBQUNwRCxPQUFPLEVBQUUsYUFBYSxFQUFFLE1BQU0saUJBQWlCLENBQUM7QUFDaEQsT0FBTyxFQUFFLHNCQUFzQixFQUFFLE1BQU0sMEJBQTBCLENBQUM7QUFDbEUsT0FBTyxFQUFFLG9DQUFvQyxFQUFFLE1BQU0sd0NBQXdDLENBQUM7QUFDOUYsT0FBTyxFQUFFLDZDQUE2QyxFQUFFLE1BQU0saURBQWlELENBQUM7QUFDaEgsT0FBTyxFQUFFLGNBQWMsRUFBRSxNQUFNLGtCQUFrQixDQUFDO0FBQ2xELE9BQU8sRUFBRSxPQUFPLEVBQUUsTUFBTSxXQUFXLENBQUM7QUFDcEMsT0FBTyxFQUFFLDRCQUE0QixFQUFFLE1BQU0sZ0NBQWdDLENBQUM7QUFFOUUsTUFBTSxVQUFVLGFBQWEsQ0FDM0IsTUFBVyxFQUNYLElBQWlCLEVBQ2pCLE9BQVcsRUFDWCxpQkFBeUIsRUFDekIsYUFBcUI7SUFFckIsMEJBQTBCO0lBSjFCLHdCQUFBLEVBQUEsV0FBVztJQUVYLDhCQUFBLEVBQUEscUJBQXFCO0lBSXJCLElBQUksVUFBVSxHQUFRLEVBQUUsR0FBRyxFQUFFLENBQUMsRUFBRSxJQUFJLEVBQUUsQ0FBQyxFQUFFLENBQUM7SUFDMUMsSUFBTSxZQUFZLEdBQUcsYUFBYSxDQUFDLENBQUMsQ0FBQyw0QkFBNEIsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLENBQUMsc0JBQXNCLENBQUMsTUFBTSxFQUFFLElBQUksQ0FBQyxDQUFDO0lBRWpILHVCQUF1QjtJQUN2QixJQUFJLGlCQUFpQixLQUFLLFVBQVUsRUFBRTtRQUNwQyxVQUFVLEdBQUcsNkNBQTZDLENBQUMsWUFBWSxFQUFFLGFBQWEsQ0FBQyxDQUFDO0tBQ3pGO1NBQU07UUFDTCw2REFBNkQ7UUFDN0QsSUFBSSxjQUFjLFNBQUEsQ0FBQztRQUNuQixJQUFJLGlCQUFpQixLQUFLLGNBQWMsRUFBRTtZQUN4QyxjQUFjLEdBQUcsZUFBZSxDQUFDLGFBQWEsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDO1lBQ3RELElBQUksY0FBYyxDQUFDLFFBQVEsS0FBSyxNQUFNLEVBQUU7Z0JBQ3RDLGNBQWMsR0FBRyxNQUFNLENBQUMsYUFBYSxDQUFDLGVBQWUsQ0FBQzthQUN2RDtTQUNGO2FBQU0sSUFBSSxpQkFBaUIsS0FBSyxRQUFRLEVBQUU7WUFDekMsY0FBYyxHQUFHLE1BQU0sQ0FBQyxhQUFhLENBQUMsZUFBZSxDQUFDO1NBQ3ZEO2FBQU07WUFDTCxjQUFjLEdBQUcsaUJBQWlCLENBQUM7U0FDcEM7UUFFRCxJQUFNLE9BQU8sR0FBRyxvQ0FBb0MsQ0FDbEQsY0FBYyxFQUNkLFlBQVksRUFDWixhQUFhLENBQ2QsQ0FBQztRQUVGLG1EQUFtRDtRQUNuRCxJQUFJLGNBQWMsQ0FBQyxRQUFRLEtBQUssTUFBTSxJQUFJLENBQUMsT0FBTyxDQUFDLFlBQVksQ0FBQyxFQUFFO1lBQzFELElBQUEseUNBQXdELEVBQXRELGtCQUFNLEVBQUUsZ0JBQThDLENBQUM7WUFDL0QsVUFBVSxDQUFDLEdBQUcsSUFBSSxPQUFPLENBQUMsR0FBRyxHQUFHLE9BQU8sQ0FBQyxTQUFTLENBQUM7WUFDbEQsVUFBVSxDQUFDLE1BQU0sR0FBRyxNQUFNLENBQUMsTUFBTSxDQUFDLEdBQUcsTUFBTSxDQUFDLE9BQU8sQ0FBQyxHQUFHLENBQUMsQ0FBQztZQUN6RCxVQUFVLENBQUMsSUFBSSxJQUFJLE9BQU8sQ0FBQyxJQUFJLEdBQUcsT0FBTyxDQUFDLFVBQVUsQ0FBQztZQUNyRCxVQUFVLENBQUMsS0FBSyxHQUFHLE1BQU0sQ0FBQyxLQUFLLENBQUMsR0FBRyxNQUFNLENBQUMsT0FBTyxDQUFDLElBQUksQ0FBQyxDQUFDO1NBQ3pEO2FBQU07WUFDTCxtREFBbUQ7WUFDbkQsVUFBVSxHQUFHLE9BQU8sQ0FBQztTQUN0QjtLQUNGO0lBRUQsZUFBZTtJQUNmLFVBQVUsQ0FBQyxJQUFJLElBQUksT0FBTyxDQUFDO0lBQzNCLFVBQVUsQ0FBQyxHQUFHLElBQUksT0FBTyxDQUFDO0lBQzFCLFVBQVUsQ0FBQyxLQUFLLElBQUksT0FBTyxDQUFDO0lBQzVCLFVBQVUsQ0FBQyxNQUFNLElBQUksT0FBTyxDQUFDO0lBRTdCLE9BQU8sVUFBVSxDQUFDO0FBQ3BCLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIENvbXB1dGVkIHRoZSBib3VuZGFyaWVzIGxpbWl0cyBhbmQgcmV0dXJuIHRoZW1cbiAqL1xuaW1wb3J0IHsgZ2V0U2Nyb2xsUGFyZW50IH0gZnJvbSAnLi9nZXRTY3JvbGxQYXJlbnQnO1xuaW1wb3J0IHsgZ2V0UGFyZW50Tm9kZSB9IGZyb20gJy4vZ2V0UGFyZW50Tm9kZSc7XG5pbXBvcnQgeyBmaW5kQ29tbW9uT2Zmc2V0UGFyZW50IH0gZnJvbSAnLi9maW5kQ29tbW9uT2Zmc2V0UGFyZW50JztcbmltcG9ydCB7IGdldE9mZnNldFJlY3RSZWxhdGl2ZVRvQXJiaXRyYXJ5Tm9kZSB9IGZyb20gJy4vZ2V0T2Zmc2V0UmVjdFJlbGF0aXZlVG9BcmJpdHJhcnlOb2RlJztcbmltcG9ydCB7IGdldFZpZXdwb3J0T2Zmc2V0UmVjdFJlbGF0aXZlVG9BcnRiaXRyYXJ5Tm9kZSB9IGZyb20gJy4vZ2V0Vmlld3BvcnRPZmZzZXRSZWN0UmVsYXRpdmVUb0FydGJpdHJhcnlOb2RlJztcbmltcG9ydCB7IGdldFdpbmRvd1NpemVzIH0gZnJvbSAnLi9nZXRXaW5kb3dTaXplcyc7XG5pbXBvcnQgeyBpc0ZpeGVkIH0gZnJvbSAnLi9pc0ZpeGVkJztcbmltcG9ydCB7IGdldEZpeGVkUG9zaXRpb25PZmZzZXRQYXJlbnQgfSBmcm9tICcuL2dldEZpeGVkUG9zaXRpb25PZmZzZXRQYXJlbnQnO1xuXG5leHBvcnQgZnVuY3Rpb24gZ2V0Qm91bmRhcmllcyhcbiAgdGFyZ2V0OiBhbnksXG4gIGhvc3Q6IEhUTUxFbGVtZW50LFxuICBwYWRkaW5nID0gMCxcbiAgYm91bmRhcmllc0VsZW1lbnQ6IHN0cmluZyxcbiAgZml4ZWRQb3NpdGlvbiA9IGZhbHNlXG4pIHtcbiAgLy8gTk9URTogMSBET00gYWNjZXNzIGhlcmVcblxuICBsZXQgYm91bmRhcmllczogYW55ID0geyB0b3A6IDAsIGxlZnQ6IDAgfTtcbiAgY29uc3Qgb2Zmc2V0UGFyZW50ID0gZml4ZWRQb3NpdGlvbiA/IGdldEZpeGVkUG9zaXRpb25PZmZzZXRQYXJlbnQodGFyZ2V0KSA6IGZpbmRDb21tb25PZmZzZXRQYXJlbnQodGFyZ2V0LCBob3N0KTtcblxuICAvLyBIYW5kbGUgdmlld3BvcnQgY2FzZVxuICBpZiAoYm91bmRhcmllc0VsZW1lbnQgPT09ICd2aWV3cG9ydCcpIHtcbiAgICBib3VuZGFyaWVzID0gZ2V0Vmlld3BvcnRPZmZzZXRSZWN0UmVsYXRpdmVUb0FydGJpdHJhcnlOb2RlKG9mZnNldFBhcmVudCwgZml4ZWRQb3NpdGlvbik7XG4gIH0gZWxzZSB7XG4gICAgLy8gSGFuZGxlIG90aGVyIGNhc2VzIGJhc2VkIG9uIERPTSBlbGVtZW50IHVzZWQgYXMgYm91bmRhcmllc1xuICAgIGxldCBib3VuZGFyaWVzTm9kZTtcbiAgICBpZiAoYm91bmRhcmllc0VsZW1lbnQgPT09ICdzY3JvbGxQYXJlbnQnKSB7XG4gICAgICBib3VuZGFyaWVzTm9kZSA9IGdldFNjcm9sbFBhcmVudChnZXRQYXJlbnROb2RlKGhvc3QpKTtcbiAgICAgIGlmIChib3VuZGFyaWVzTm9kZS5ub2RlTmFtZSA9PT0gJ0JPRFknKSB7XG4gICAgICAgIGJvdW5kYXJpZXNOb2RlID0gdGFyZ2V0Lm93bmVyRG9jdW1lbnQuZG9jdW1lbnRFbGVtZW50O1xuICAgICAgfVxuICAgIH0gZWxzZSBpZiAoYm91bmRhcmllc0VsZW1lbnQgPT09ICd3aW5kb3cnKSB7XG4gICAgICBib3VuZGFyaWVzTm9kZSA9IHRhcmdldC5vd25lckRvY3VtZW50LmRvY3VtZW50RWxlbWVudDtcbiAgICB9IGVsc2Uge1xuICAgICAgYm91bmRhcmllc05vZGUgPSBib3VuZGFyaWVzRWxlbWVudDtcbiAgICB9XG5cbiAgICBjb25zdCBvZmZzZXRzID0gZ2V0T2Zmc2V0UmVjdFJlbGF0aXZlVG9BcmJpdHJhcnlOb2RlKFxuICAgICAgYm91bmRhcmllc05vZGUsXG4gICAgICBvZmZzZXRQYXJlbnQsXG4gICAgICBmaXhlZFBvc2l0aW9uXG4gICAgKTtcblxuICAgIC8vIEluIGNhc2Ugb2YgSFRNTCwgd2UgbmVlZCBhIGRpZmZlcmVudCBjb21wdXRhdGlvblxuICAgIGlmIChib3VuZGFyaWVzTm9kZS5ub2RlTmFtZSA9PT0gJ0hUTUwnICYmICFpc0ZpeGVkKG9mZnNldFBhcmVudCkpIHtcbiAgICAgIGNvbnN0IHsgaGVpZ2h0LCB3aWR0aCB9ID0gZ2V0V2luZG93U2l6ZXModGFyZ2V0Lm93bmVyRG9jdW1lbnQpO1xuICAgICAgYm91bmRhcmllcy50b3AgKz0gb2Zmc2V0cy50b3AgLSBvZmZzZXRzLm1hcmdpblRvcDtcbiAgICAgIGJvdW5kYXJpZXMuYm90dG9tID0gTnVtYmVyKGhlaWdodCkgKyBOdW1iZXIob2Zmc2V0cy50b3ApO1xuICAgICAgYm91bmRhcmllcy5sZWZ0ICs9IG9mZnNldHMubGVmdCAtIG9mZnNldHMubWFyZ2luTGVmdDtcbiAgICAgIGJvdW5kYXJpZXMucmlnaHQgPSBOdW1iZXIod2lkdGgpICsgTnVtYmVyKG9mZnNldHMubGVmdCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIGZvciBhbGwgdGhlIG90aGVyIERPTSBlbGVtZW50cywgdGhpcyBvbmUgaXMgZ29vZFxuICAgICAgYm91bmRhcmllcyA9IG9mZnNldHM7XG4gICAgfVxuICB9XG5cbiAgLy8gQWRkIHBhZGRpbmdzXG4gIGJvdW5kYXJpZXMubGVmdCArPSBwYWRkaW5nO1xuICBib3VuZGFyaWVzLnRvcCArPSBwYWRkaW5nO1xuICBib3VuZGFyaWVzLnJpZ2h0IC09IHBhZGRpbmc7XG4gIGJvdW5kYXJpZXMuYm90dG9tIC09IHBhZGRpbmc7XG5cbiAgcmV0dXJuIGJvdW5kYXJpZXM7XG59XG4iXX0=