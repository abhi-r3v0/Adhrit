/**
 * Get bounding client rect of given element
 */
import { getStyleComputedProperty } from './getStyleComputedProperty';
import { getBordersSize } from './getBordersSize';
import { getWindowSizes } from './getWindowSizes';
import { getScroll } from './getScroll';
import { getClientRect } from './getClientRect';
import { isIE } from './isIE';
export function getBoundingClientRect(element) {
    let rect = {};
    // IE10 10 FIX: Please, don't ask, the element isn't
    // considered in DOM in some circumstances...
    // This isn't reproducible in IE10 compatibility mode of IE11
    try {
        if (isIE(10)) {
            rect = element.getBoundingClientRect();
            const scrollTop = getScroll(element, 'top');
            const scrollLeft = getScroll(element, 'left');
            rect.top += scrollTop;
            rect.left += scrollLeft;
            rect.bottom += scrollTop;
            rect.right += scrollLeft;
        }
        else {
            rect = element.getBoundingClientRect();
        }
    }
    catch (e) {
        return undefined;
    }
    const result = {
        left: rect.left,
        top: rect.top,
        width: rect.right - rect.left,
        height: rect.bottom - rect.top
    };
    // subtract scrollbar size from sizes
    const sizes = element.nodeName === 'HTML' ? getWindowSizes(element.ownerDocument) : {};
    const width = sizes.width || element.clientWidth || result.right - result.left;
    const height = sizes.height || element.clientHeight || result.bottom - result.top;
    let horizScrollbar = element.offsetWidth - width;
    let vertScrollbar = element.offsetHeight - height;
    // if an hypothetical scrollbar is detected, we must be sure it's not a `border`
    // we make this check conditional for performance reasons
    if (horizScrollbar || vertScrollbar) {
        const styles = getStyleComputedProperty(element);
        horizScrollbar -= getBordersSize(styles, 'x');
        vertScrollbar -= getBordersSize(styles, 'y');
        result.width -= horizScrollbar;
        result.height -= vertScrollbar;
    }
    return getClientRect(result);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZ2V0Qm91bmRpbmdDbGllbnRSZWN0LmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS91dGlscy9wb3NpdGlvbmluZy91dGlscy9nZXRCb3VuZGluZ0NsaWVudFJlY3QudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7O0dBRUc7QUFDSCxPQUFPLEVBQUUsd0JBQXdCLEVBQUUsTUFBTSw0QkFBNEIsQ0FBQztBQUN0RSxPQUFPLEVBQUUsY0FBYyxFQUFFLE1BQU0sa0JBQWtCLENBQUM7QUFDbEQsT0FBTyxFQUFFLGNBQWMsRUFBRSxNQUFNLGtCQUFrQixDQUFDO0FBQ2xELE9BQU8sRUFBRSxTQUFTLEVBQUUsTUFBTSxhQUFhLENBQUM7QUFDeEMsT0FBTyxFQUFFLGFBQWEsRUFBRSxNQUFNLGlCQUFpQixDQUFDO0FBQ2hELE9BQU8sRUFBRSxJQUFJLEVBQUUsTUFBTSxRQUFRLENBQUM7QUFFOUIsTUFBTSxVQUFVLHFCQUFxQixDQUFDLE9BQW9CO0lBQ3hELElBQUksSUFBSSxHQUFRLEVBQUUsQ0FBQztJQUVuQixvREFBb0Q7SUFDcEQsNkNBQTZDO0lBQzdDLDZEQUE2RDtJQUM3RCxJQUFJO1FBQ0YsSUFBSSxJQUFJLENBQUMsRUFBRSxDQUFDLEVBQUU7WUFDWixJQUFJLEdBQUcsT0FBTyxDQUFDLHFCQUFxQixFQUFFLENBQUM7WUFDdkMsTUFBTSxTQUFTLEdBQUcsU0FBUyxDQUFDLE9BQU8sRUFBRSxLQUFLLENBQUMsQ0FBQztZQUM1QyxNQUFNLFVBQVUsR0FBRyxTQUFTLENBQUMsT0FBTyxFQUFFLE1BQU0sQ0FBQyxDQUFDO1lBQzlDLElBQUksQ0FBQyxHQUFHLElBQUksU0FBUyxDQUFDO1lBQ3RCLElBQUksQ0FBQyxJQUFJLElBQUksVUFBVSxDQUFDO1lBQ3hCLElBQUksQ0FBQyxNQUFNLElBQUksU0FBUyxDQUFDO1lBQ3pCLElBQUksQ0FBQyxLQUFLLElBQUksVUFBVSxDQUFDO1NBQzFCO2FBQU07WUFDTCxJQUFJLEdBQUcsT0FBTyxDQUFDLHFCQUFxQixFQUFFLENBQUM7U0FDeEM7S0FDRjtJQUFDLE9BQU8sQ0FBQyxFQUFFO1FBQ1YsT0FBTyxTQUFTLENBQUM7S0FDbEI7SUFFRCxNQUFNLE1BQU0sR0FBUTtRQUNsQixJQUFJLEVBQUUsSUFBSSxDQUFDLElBQUk7UUFDZixHQUFHLEVBQUUsSUFBSSxDQUFDLEdBQUc7UUFDYixLQUFLLEVBQUUsSUFBSSxDQUFDLEtBQUssR0FBRyxJQUFJLENBQUMsSUFBSTtRQUM3QixNQUFNLEVBQUUsSUFBSSxDQUFDLE1BQU0sR0FBRyxJQUFJLENBQUMsR0FBRztLQUMvQixDQUFDO0lBRUYscUNBQXFDO0lBQ3JDLE1BQU0sS0FBSyxHQUFRLE9BQU8sQ0FBQyxRQUFRLEtBQUssTUFBTSxDQUFDLENBQUMsQ0FBQyxjQUFjLENBQUMsT0FBTyxDQUFDLGFBQWEsQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUM7SUFDNUYsTUFBTSxLQUFLLEdBQ1QsS0FBSyxDQUFDLEtBQUssSUFBSSxPQUFPLENBQUMsV0FBVyxJQUFJLE1BQU0sQ0FBQyxLQUFLLEdBQUcsTUFBTSxDQUFDLElBQUksQ0FBQztJQUNuRSxNQUFNLE1BQU0sR0FDVixLQUFLLENBQUMsTUFBTSxJQUFJLE9BQU8sQ0FBQyxZQUFZLElBQUksTUFBTSxDQUFDLE1BQU0sR0FBRyxNQUFNLENBQUMsR0FBRyxDQUFDO0lBRXJFLElBQUksY0FBYyxHQUFHLE9BQU8sQ0FBQyxXQUFXLEdBQUcsS0FBSyxDQUFDO0lBQ2pELElBQUksYUFBYSxHQUFHLE9BQU8sQ0FBQyxZQUFZLEdBQUcsTUFBTSxDQUFDO0lBRWxELGdGQUFnRjtJQUNoRix5REFBeUQ7SUFDekQsSUFBSSxjQUFjLElBQUksYUFBYSxFQUFFO1FBQ25DLE1BQU0sTUFBTSxHQUFHLHdCQUF3QixDQUFDLE9BQU8sQ0FBQyxDQUFDO1FBQ2pELGNBQWMsSUFBSSxjQUFjLENBQUMsTUFBTSxFQUFFLEdBQUcsQ0FBQyxDQUFDO1FBQzlDLGFBQWEsSUFBSSxjQUFjLENBQUMsTUFBTSxFQUFFLEdBQUcsQ0FBQyxDQUFDO1FBRTdDLE1BQU0sQ0FBQyxLQUFLLElBQUksY0FBYyxDQUFDO1FBQy9CLE1BQU0sQ0FBQyxNQUFNLElBQUksYUFBYSxDQUFDO0tBQ2hDO0lBRUQsT0FBTyxhQUFhLENBQUMsTUFBTSxDQUFDLENBQUM7QUFDL0IsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogR2V0IGJvdW5kaW5nIGNsaWVudCByZWN0IG9mIGdpdmVuIGVsZW1lbnRcbiAqL1xuaW1wb3J0IHsgZ2V0U3R5bGVDb21wdXRlZFByb3BlcnR5IH0gZnJvbSAnLi9nZXRTdHlsZUNvbXB1dGVkUHJvcGVydHknO1xuaW1wb3J0IHsgZ2V0Qm9yZGVyc1NpemUgfSBmcm9tICcuL2dldEJvcmRlcnNTaXplJztcbmltcG9ydCB7IGdldFdpbmRvd1NpemVzIH0gZnJvbSAnLi9nZXRXaW5kb3dTaXplcyc7XG5pbXBvcnQgeyBnZXRTY3JvbGwgfSBmcm9tICcuL2dldFNjcm9sbCc7XG5pbXBvcnQgeyBnZXRDbGllbnRSZWN0IH0gZnJvbSAnLi9nZXRDbGllbnRSZWN0JztcbmltcG9ydCB7IGlzSUUgfSBmcm9tICcuL2lzSUUnO1xuXG5leHBvcnQgZnVuY3Rpb24gZ2V0Qm91bmRpbmdDbGllbnRSZWN0KGVsZW1lbnQ6IEhUTUxFbGVtZW50KTogYW55IHtcbiAgbGV0IHJlY3Q6IGFueSA9IHt9O1xuXG4gIC8vIElFMTAgMTAgRklYOiBQbGVhc2UsIGRvbid0IGFzaywgdGhlIGVsZW1lbnQgaXNuJ3RcbiAgLy8gY29uc2lkZXJlZCBpbiBET00gaW4gc29tZSBjaXJjdW1zdGFuY2VzLi4uXG4gIC8vIFRoaXMgaXNuJ3QgcmVwcm9kdWNpYmxlIGluIElFMTAgY29tcGF0aWJpbGl0eSBtb2RlIG9mIElFMTFcbiAgdHJ5IHtcbiAgICBpZiAoaXNJRSgxMCkpIHtcbiAgICAgIHJlY3QgPSBlbGVtZW50LmdldEJvdW5kaW5nQ2xpZW50UmVjdCgpO1xuICAgICAgY29uc3Qgc2Nyb2xsVG9wID0gZ2V0U2Nyb2xsKGVsZW1lbnQsICd0b3AnKTtcbiAgICAgIGNvbnN0IHNjcm9sbExlZnQgPSBnZXRTY3JvbGwoZWxlbWVudCwgJ2xlZnQnKTtcbiAgICAgIHJlY3QudG9wICs9IHNjcm9sbFRvcDtcbiAgICAgIHJlY3QubGVmdCArPSBzY3JvbGxMZWZ0O1xuICAgICAgcmVjdC5ib3R0b20gKz0gc2Nyb2xsVG9wO1xuICAgICAgcmVjdC5yaWdodCArPSBzY3JvbGxMZWZ0O1xuICAgIH0gZWxzZSB7XG4gICAgICByZWN0ID0gZWxlbWVudC5nZXRCb3VuZGluZ0NsaWVudFJlY3QoKTtcbiAgICB9XG4gIH0gY2F0Y2ggKGUpIHtcbiAgICByZXR1cm4gdW5kZWZpbmVkO1xuICB9XG5cbiAgY29uc3QgcmVzdWx0OiBhbnkgPSB7XG4gICAgbGVmdDogcmVjdC5sZWZ0LFxuICAgIHRvcDogcmVjdC50b3AsXG4gICAgd2lkdGg6IHJlY3QucmlnaHQgLSByZWN0LmxlZnQsXG4gICAgaGVpZ2h0OiByZWN0LmJvdHRvbSAtIHJlY3QudG9wXG4gIH07XG5cbiAgLy8gc3VidHJhY3Qgc2Nyb2xsYmFyIHNpemUgZnJvbSBzaXplc1xuICBjb25zdCBzaXplczogYW55ID0gZWxlbWVudC5ub2RlTmFtZSA9PT0gJ0hUTUwnID8gZ2V0V2luZG93U2l6ZXMoZWxlbWVudC5vd25lckRvY3VtZW50KSA6IHt9O1xuICBjb25zdCB3aWR0aCA9XG4gICAgc2l6ZXMud2lkdGggfHwgZWxlbWVudC5jbGllbnRXaWR0aCB8fCByZXN1bHQucmlnaHQgLSByZXN1bHQubGVmdDtcbiAgY29uc3QgaGVpZ2h0ID1cbiAgICBzaXplcy5oZWlnaHQgfHwgZWxlbWVudC5jbGllbnRIZWlnaHQgfHwgcmVzdWx0LmJvdHRvbSAtIHJlc3VsdC50b3A7XG5cbiAgbGV0IGhvcml6U2Nyb2xsYmFyID0gZWxlbWVudC5vZmZzZXRXaWR0aCAtIHdpZHRoO1xuICBsZXQgdmVydFNjcm9sbGJhciA9IGVsZW1lbnQub2Zmc2V0SGVpZ2h0IC0gaGVpZ2h0O1xuXG4gIC8vIGlmIGFuIGh5cG90aGV0aWNhbCBzY3JvbGxiYXIgaXMgZGV0ZWN0ZWQsIHdlIG11c3QgYmUgc3VyZSBpdCdzIG5vdCBhIGBib3JkZXJgXG4gIC8vIHdlIG1ha2UgdGhpcyBjaGVjayBjb25kaXRpb25hbCBmb3IgcGVyZm9ybWFuY2UgcmVhc29uc1xuICBpZiAoaG9yaXpTY3JvbGxiYXIgfHwgdmVydFNjcm9sbGJhcikge1xuICAgIGNvbnN0IHN0eWxlcyA9IGdldFN0eWxlQ29tcHV0ZWRQcm9wZXJ0eShlbGVtZW50KTtcbiAgICBob3JpelNjcm9sbGJhciAtPSBnZXRCb3JkZXJzU2l6ZShzdHlsZXMsICd4Jyk7XG4gICAgdmVydFNjcm9sbGJhciAtPSBnZXRCb3JkZXJzU2l6ZShzdHlsZXMsICd5Jyk7XG5cbiAgICByZXN1bHQud2lkdGggLT0gaG9yaXpTY3JvbGxiYXI7XG4gICAgcmVzdWx0LmhlaWdodCAtPSB2ZXJ0U2Nyb2xsYmFyO1xuICB9XG5cbiAgcmV0dXJuIGdldENsaWVudFJlY3QocmVzdWx0KTtcbn1cbiJdfQ==