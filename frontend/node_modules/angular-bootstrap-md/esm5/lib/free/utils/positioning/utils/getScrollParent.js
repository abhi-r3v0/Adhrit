/**
 * Returns the scrolling parent of the given element
 */
import { getStyleComputedProperty } from './getStyleComputedProperty';
import { getParentNode } from './getParentNode';
export function getScrollParent(element) {
    // Return body, `getScroll` will take care to get the correct `scrollTop` from it
    if (!element) {
        return document.body;
    }
    switch (element.nodeName) {
        case 'HTML':
        case 'BODY':
            return element.ownerDocument.body;
        case '#document':
            return element.body;
        default:
    }
    // Firefox want us to check `-x` and `-y` variations as well
    var _a = getStyleComputedProperty(element), overflow = _a.overflow, overflowX = _a.overflowX, overflowY = _a.overflowY;
    if (/(auto|scroll|overlay)/.test(String(overflow) + String(overflowY) + String(overflowX))) {
        return element;
    }
    return getScrollParent(getParentNode(element));
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZ2V0U2Nyb2xsUGFyZW50LmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS91dGlscy9wb3NpdGlvbmluZy91dGlscy9nZXRTY3JvbGxQYXJlbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7O0dBRUc7QUFDSCxPQUFPLEVBQUUsd0JBQXdCLEVBQUUsTUFBTSw0QkFBNEIsQ0FBQztBQUN0RSxPQUFPLEVBQUUsYUFBYSxFQUFFLE1BQU0saUJBQWlCLENBQUM7QUFFaEQsTUFBTSxVQUFVLGVBQWUsQ0FBQyxPQUFZO0lBQzFDLGlGQUFpRjtJQUNqRixJQUFJLENBQUMsT0FBTyxFQUFFO1FBQ1osT0FBTyxRQUFRLENBQUMsSUFBSSxDQUFDO0tBQ3RCO0lBRUQsUUFBUSxPQUFPLENBQUMsUUFBUSxFQUFFO1FBQ3hCLEtBQUssTUFBTSxDQUFDO1FBQ1osS0FBSyxNQUFNO1lBQ1QsT0FBTyxPQUFPLENBQUMsYUFBYSxDQUFDLElBQUksQ0FBQztRQUNwQyxLQUFLLFdBQVc7WUFDZCxPQUFPLE9BQU8sQ0FBQyxJQUFJLENBQUM7UUFDdEIsUUFBUTtLQUNUO0lBRUQsNERBQTREO0lBQ3RELElBQUEsc0NBQXNFLEVBQXBFLHNCQUFRLEVBQUUsd0JBQVMsRUFBRSx3QkFBK0MsQ0FBQztJQUM3RSxJQUFJLHVCQUF1QixDQUFDLElBQUksQ0FBQyxNQUFNLENBQUMsUUFBUSxDQUFDLEdBQUcsTUFBTSxDQUFDLFNBQVMsQ0FBQyxHQUFHLE1BQU0sQ0FBQyxTQUFTLENBQUMsQ0FBQyxFQUFFO1FBQzFGLE9BQU8sT0FBTyxDQUFDO0tBQ2hCO0lBRUQsT0FBTyxlQUFlLENBQUMsYUFBYSxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQUM7QUFDakQsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogUmV0dXJucyB0aGUgc2Nyb2xsaW5nIHBhcmVudCBvZiB0aGUgZ2l2ZW4gZWxlbWVudFxuICovXG5pbXBvcnQgeyBnZXRTdHlsZUNvbXB1dGVkUHJvcGVydHkgfSBmcm9tICcuL2dldFN0eWxlQ29tcHV0ZWRQcm9wZXJ0eSc7XG5pbXBvcnQgeyBnZXRQYXJlbnROb2RlIH0gZnJvbSAnLi9nZXRQYXJlbnROb2RlJztcblxuZXhwb3J0IGZ1bmN0aW9uIGdldFNjcm9sbFBhcmVudChlbGVtZW50OiBhbnkpOiBhbnkge1xuICAvLyBSZXR1cm4gYm9keSwgYGdldFNjcm9sbGAgd2lsbCB0YWtlIGNhcmUgdG8gZ2V0IHRoZSBjb3JyZWN0IGBzY3JvbGxUb3BgIGZyb20gaXRcbiAgaWYgKCFlbGVtZW50KSB7XG4gICAgcmV0dXJuIGRvY3VtZW50LmJvZHk7XG4gIH1cblxuICBzd2l0Y2ggKGVsZW1lbnQubm9kZU5hbWUpIHtcbiAgICBjYXNlICdIVE1MJzpcbiAgICBjYXNlICdCT0RZJzpcbiAgICAgIHJldHVybiBlbGVtZW50Lm93bmVyRG9jdW1lbnQuYm9keTtcbiAgICBjYXNlICcjZG9jdW1lbnQnOlxuICAgICAgcmV0dXJuIGVsZW1lbnQuYm9keTtcbiAgICBkZWZhdWx0OlxuICB9XG5cbiAgLy8gRmlyZWZveCB3YW50IHVzIHRvIGNoZWNrIGAteGAgYW5kIGAteWAgdmFyaWF0aW9ucyBhcyB3ZWxsXG4gIGNvbnN0IHsgb3ZlcmZsb3csIG92ZXJmbG93WCwgb3ZlcmZsb3dZIH0gPSBnZXRTdHlsZUNvbXB1dGVkUHJvcGVydHkoZWxlbWVudCk7XG4gIGlmICgvKGF1dG98c2Nyb2xsfG92ZXJsYXkpLy50ZXN0KFN0cmluZyhvdmVyZmxvdykgKyBTdHJpbmcob3ZlcmZsb3dZKSArIFN0cmluZyhvdmVyZmxvd1gpKSkge1xuICAgIHJldHVybiBlbGVtZW50O1xuICB9XG5cbiAgcmV0dXJuIGdldFNjcm9sbFBhcmVudChnZXRQYXJlbnROb2RlKGVsZW1lbnQpKTtcbn1cbiJdfQ==