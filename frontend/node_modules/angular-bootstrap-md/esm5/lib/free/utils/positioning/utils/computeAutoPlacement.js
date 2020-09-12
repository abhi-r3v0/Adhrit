import { __assign } from "tslib";
/**
 * Utility used to transform the `auto` placement to the placement with more
 * available space.
 */
import { getBoundaries } from './getBoundaries';
function getArea(_a) {
    var width = _a.width, height = _a.height;
    return width * height;
}
export function computeAutoPlacement(placement, refRect, target, host, allowedPositions, boundariesElement, padding) {
    if (allowedPositions === void 0) { allowedPositions = ['top', 'left', 'bottom', 'right']; }
    if (boundariesElement === void 0) { boundariesElement = 'viewport'; }
    if (padding === void 0) { padding = 0; }
    if (placement.indexOf('auto') === -1) {
        return placement;
    }
    var boundaries = getBoundaries(target, host, padding, boundariesElement);
    var rects = {
        top: {
            width: boundaries.width,
            height: refRect.top - boundaries.top
        },
        right: {
            width: boundaries.right - refRect.right,
            height: boundaries.height
        },
        bottom: {
            width: boundaries.width,
            height: boundaries.bottom - refRect.bottom
        },
        left: {
            width: refRect.left - boundaries.left,
            height: boundaries.height
        }
    };
    var sortedAreas = Object.keys(rects)
        .map(function (key) { return (__assign(__assign({ key: key }, rects[key]), { area: getArea(rects[key]) })); })
        .sort(function (a, b) { return b.area - a.area; });
    var filteredAreas = sortedAreas.filter(function (_a) {
        var width = _a.width, height = _a.height;
        return width >= target.clientWidth && height >= target.clientHeight;
    });
    filteredAreas = allowedPositions
        .reduce(function (obj, key) {
        var _a;
        return __assign(__assign({}, obj), (_a = {}, _a[key] = filteredAreas[key], _a));
    }, {});
    var computedPlacement = filteredAreas.length > 0
        ? filteredAreas[0].key
        : sortedAreas[0].key;
    var variation = placement.split(' ')[1];
    target.className = target.className.replace(/auto/g, computedPlacement);
    return computedPlacement + (variation ? "-" + variation : '');
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29tcHV0ZUF1dG9QbGFjZW1lbnQuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL3V0aWxzL3Bvc2l0aW9uaW5nL3V0aWxzL2NvbXB1dGVBdXRvUGxhY2VtZW50LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQTs7O0dBR0c7QUFDSCxPQUFPLEVBQUUsYUFBYSxFQUFFLE1BQU0saUJBQWlCLENBQUM7QUFFaEQsU0FBUyxPQUFPLENBQUMsRUFBNEM7UUFBMUMsZ0JBQUssRUFBRSxrQkFBTTtJQUM5QixPQUFPLEtBQUssR0FBRyxNQUFNLENBQUM7QUFDeEIsQ0FBQztBQUVELE1BQU0sVUFBVSxvQkFBb0IsQ0FDbEMsU0FBaUIsRUFDakIsT0FBWSxFQUNaLE1BQW1CLEVBQ25CLElBQWlCLEVBQ2pCLGdCQUE0RCxFQUM1RCxpQkFBOEIsRUFDOUIsT0FBVztJQUZYLGlDQUFBLEVBQUEsb0JBQTJCLEtBQUssRUFBRSxNQUFNLEVBQUUsUUFBUSxFQUFFLE9BQU8sQ0FBQztJQUM1RCxrQ0FBQSxFQUFBLDhCQUE4QjtJQUM5Qix3QkFBQSxFQUFBLFdBQVc7SUFFWCxJQUFJLFNBQVMsQ0FBQyxPQUFPLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyxDQUFDLEVBQUU7UUFDcEMsT0FBTyxTQUFTLENBQUM7S0FDbEI7SUFFRCxJQUFNLFVBQVUsR0FBRyxhQUFhLENBQUMsTUFBTSxFQUFFLElBQUksRUFBRSxPQUFPLEVBQUUsaUJBQWlCLENBQUMsQ0FBQztJQUUzRSxJQUFNLEtBQUssR0FBUTtRQUNqQixHQUFHLEVBQUU7WUFDSCxLQUFLLEVBQUUsVUFBVSxDQUFDLEtBQUs7WUFDdkIsTUFBTSxFQUFFLE9BQU8sQ0FBQyxHQUFHLEdBQUcsVUFBVSxDQUFDLEdBQUc7U0FDckM7UUFDRCxLQUFLLEVBQUU7WUFDTCxLQUFLLEVBQUUsVUFBVSxDQUFDLEtBQUssR0FBRyxPQUFPLENBQUMsS0FBSztZQUN2QyxNQUFNLEVBQUUsVUFBVSxDQUFDLE1BQU07U0FDMUI7UUFDRCxNQUFNLEVBQUU7WUFDTixLQUFLLEVBQUUsVUFBVSxDQUFDLEtBQUs7WUFDdkIsTUFBTSxFQUFFLFVBQVUsQ0FBQyxNQUFNLEdBQUcsT0FBTyxDQUFDLE1BQU07U0FDM0M7UUFDRCxJQUFJLEVBQUU7WUFDSixLQUFLLEVBQUUsT0FBTyxDQUFDLElBQUksR0FBRyxVQUFVLENBQUMsSUFBSTtZQUNyQyxNQUFNLEVBQUUsVUFBVSxDQUFDLE1BQU07U0FDMUI7S0FDRixDQUFDO0lBRUYsSUFBTSxXQUFXLEdBQUcsTUFBTSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUM7U0FDbkMsR0FBRyxDQUFDLFVBQUEsR0FBRyxJQUFJLE9BQUEscUJBQ1YsR0FBRyxLQUFBLElBQ0EsS0FBSyxDQUFDLEdBQUcsQ0FBQyxLQUNiLElBQUksRUFBRSxPQUFPLENBQUMsS0FBSyxDQUFDLEdBQUcsQ0FBQyxDQUFDLElBQ3pCLEVBSlUsQ0FJVixDQUFDO1NBQ0YsSUFBSSxDQUFDLFVBQUMsQ0FBQyxFQUFFLENBQUMsSUFBSyxPQUFBLENBQUMsQ0FBQyxJQUFJLEdBQUcsQ0FBQyxDQUFDLElBQUksRUFBZixDQUFlLENBQUMsQ0FBQztJQUVuQyxJQUFJLGFBQWEsR0FBVSxXQUFXLENBQUMsTUFBTSxDQUMzQyxVQUFDLEVBQWlCO1lBQWYsZ0JBQUssRUFBRSxrQkFBTTtRQUNkLE9BQUEsS0FBSyxJQUFJLE1BQU0sQ0FBQyxXQUFXLElBQUksTUFBTSxJQUFJLE1BQU0sQ0FBQyxZQUFZO0lBQTVELENBQTRELENBQy9ELENBQUM7SUFFRixhQUFhLEdBQUcsZ0JBQWdCO1NBQzdCLE1BQU0sQ0FBQyxVQUFDLEdBQUcsRUFBRSxHQUFHOztRQUNmLDZCQUFZLEdBQUcsZ0JBQUcsR0FBRyxJQUFHLGFBQWEsQ0FBQyxHQUFHLENBQUMsT0FBRztJQUMvQyxDQUFDLEVBQUUsRUFBRSxDQUFDLENBQUM7SUFFVCxJQUFNLGlCQUFpQixHQUFXLGFBQWEsQ0FBQyxNQUFNLEdBQUcsQ0FBQztRQUN4RCxDQUFDLENBQUMsYUFBYSxDQUFDLENBQUMsQ0FBQyxDQUFDLEdBQUc7UUFDdEIsQ0FBQyxDQUFDLFdBQVcsQ0FBQyxDQUFDLENBQUMsQ0FBQyxHQUFHLENBQUM7SUFFdkIsSUFBTSxTQUFTLEdBQUcsU0FBUyxDQUFDLEtBQUssQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUUxQyxNQUFNLENBQUMsU0FBUyxHQUFHLE1BQU0sQ0FBQyxTQUFTLENBQUMsT0FBTyxDQUFDLE9BQU8sRUFBRSxpQkFBaUIsQ0FBQyxDQUFDO0lBRXhFLE9BQU8saUJBQWlCLEdBQUcsQ0FBQyxTQUFTLENBQUMsQ0FBQyxDQUFDLE1BQUksU0FBVyxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQztBQUNoRSxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBVdGlsaXR5IHVzZWQgdG8gdHJhbnNmb3JtIHRoZSBgYXV0b2AgcGxhY2VtZW50IHRvIHRoZSBwbGFjZW1lbnQgd2l0aCBtb3JlXG4gKiBhdmFpbGFibGUgc3BhY2UuXG4gKi9cbmltcG9ydCB7IGdldEJvdW5kYXJpZXMgfSBmcm9tICcuL2dldEJvdW5kYXJpZXMnO1xuXG5mdW5jdGlvbiBnZXRBcmVhKHsgd2lkdGgsIGhlaWdodCB9OiB7IFtrZXk6IHN0cmluZ106IG51bWJlciB9KSB7XG4gIHJldHVybiB3aWR0aCAqIGhlaWdodDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGNvbXB1dGVBdXRvUGxhY2VtZW50KFxuICBwbGFjZW1lbnQ6IHN0cmluZyxcbiAgcmVmUmVjdDogYW55LFxuICB0YXJnZXQ6IEhUTUxFbGVtZW50LFxuICBob3N0OiBIVE1MRWxlbWVudCxcbiAgYWxsb3dlZFBvc2l0aW9uczogYW55W10gPSBbJ3RvcCcsICdsZWZ0JywgJ2JvdHRvbScsICdyaWdodCddLFxuICBib3VuZGFyaWVzRWxlbWVudCA9ICd2aWV3cG9ydCcsXG4gIHBhZGRpbmcgPSAwXG4pIHtcbiAgaWYgKHBsYWNlbWVudC5pbmRleE9mKCdhdXRvJykgPT09IC0xKSB7XG4gICAgcmV0dXJuIHBsYWNlbWVudDtcbiAgfVxuXG4gIGNvbnN0IGJvdW5kYXJpZXMgPSBnZXRCb3VuZGFyaWVzKHRhcmdldCwgaG9zdCwgcGFkZGluZywgYm91bmRhcmllc0VsZW1lbnQpO1xuXG4gIGNvbnN0IHJlY3RzOiBhbnkgPSB7XG4gICAgdG9wOiB7XG4gICAgICB3aWR0aDogYm91bmRhcmllcy53aWR0aCxcbiAgICAgIGhlaWdodDogcmVmUmVjdC50b3AgLSBib3VuZGFyaWVzLnRvcFxuICAgIH0sXG4gICAgcmlnaHQ6IHtcbiAgICAgIHdpZHRoOiBib3VuZGFyaWVzLnJpZ2h0IC0gcmVmUmVjdC5yaWdodCxcbiAgICAgIGhlaWdodDogYm91bmRhcmllcy5oZWlnaHRcbiAgICB9LFxuICAgIGJvdHRvbToge1xuICAgICAgd2lkdGg6IGJvdW5kYXJpZXMud2lkdGgsXG4gICAgICBoZWlnaHQ6IGJvdW5kYXJpZXMuYm90dG9tIC0gcmVmUmVjdC5ib3R0b21cbiAgICB9LFxuICAgIGxlZnQ6IHtcbiAgICAgIHdpZHRoOiByZWZSZWN0LmxlZnQgLSBib3VuZGFyaWVzLmxlZnQsXG4gICAgICBoZWlnaHQ6IGJvdW5kYXJpZXMuaGVpZ2h0XG4gICAgfVxuICB9O1xuXG4gIGNvbnN0IHNvcnRlZEFyZWFzID0gT2JqZWN0LmtleXMocmVjdHMpXG4gICAgLm1hcChrZXkgPT4gKHtcbiAgICAgIGtleSxcbiAgICAgIC4uLnJlY3RzW2tleV0sXG4gICAgICBhcmVhOiBnZXRBcmVhKHJlY3RzW2tleV0pXG4gICAgfSkpXG4gICAgLnNvcnQoKGEsIGIpID0+IGIuYXJlYSAtIGEuYXJlYSk7XG5cbiAgbGV0IGZpbHRlcmVkQXJlYXM6IGFueVtdID0gc29ydGVkQXJlYXMuZmlsdGVyKFxuICAgICh7IHdpZHRoLCBoZWlnaHQgfSkgPT5cbiAgICAgIHdpZHRoID49IHRhcmdldC5jbGllbnRXaWR0aCAmJiBoZWlnaHQgPj0gdGFyZ2V0LmNsaWVudEhlaWdodFxuICApO1xuXG4gIGZpbHRlcmVkQXJlYXMgPSBhbGxvd2VkUG9zaXRpb25zXG4gICAgLnJlZHVjZSgob2JqLCBrZXkpID0+IHtcbiAgICAgIHJldHVybiB7IC4uLm9iaiwgW2tleV06IGZpbHRlcmVkQXJlYXNba2V5XSB9O1xuICAgIH0sIHt9KTtcblxuICBjb25zdCBjb21wdXRlZFBsYWNlbWVudDogc3RyaW5nID0gZmlsdGVyZWRBcmVhcy5sZW5ndGggPiAwXG4gICAgPyBmaWx0ZXJlZEFyZWFzWzBdLmtleVxuICAgIDogc29ydGVkQXJlYXNbMF0ua2V5O1xuXG4gIGNvbnN0IHZhcmlhdGlvbiA9IHBsYWNlbWVudC5zcGxpdCgnICcpWzFdO1xuXG4gIHRhcmdldC5jbGFzc05hbWUgPSB0YXJnZXQuY2xhc3NOYW1lLnJlcGxhY2UoL2F1dG8vZywgY29tcHV0ZWRQbGFjZW1lbnQpO1xuXG4gIHJldHVybiBjb21wdXRlZFBsYWNlbWVudCArICh2YXJpYXRpb24gPyBgLSR7dmFyaWF0aW9ufWAgOiAnJyk7XG59XG4iXX0=