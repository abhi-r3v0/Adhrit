/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/** Cached result of the way the browser handles the horizontal scroll axis in RTL mode. */
let rtlScrollAxisType;
/** Cached result of the check that indicates whether the browser supports scroll behaviors. */
let scrollBehaviorSupported;
/** Check whether the browser supports scroll behaviors. */
export function supportsScrollBehavior() {
    if (scrollBehaviorSupported == null) {
        // If we're not in the browser, it can't be supported.
        if (typeof document !== 'object' || !document) {
            scrollBehaviorSupported = false;
        }
        // If the element can have a `scrollBehavior` style, we can be sure that it's supported.
        if ('scrollBehavior' in document.documentElement.style) {
            scrollBehaviorSupported = true;
        }
        else {
            // At this point we have 3 possibilities: `scrollTo` isn't supported at all, it's
            // supported but it doesn't handle scroll behavior, or it has been polyfilled.
            const scrollToFunction = Element.prototype.scrollTo;
            if (scrollToFunction) {
                // We can detect if the function has been polyfilled by calling `toString` on it. Native
                // functions are obfuscated using `[native code]`, whereas if it was overwritten we'd get
                // the actual function source. Via https://davidwalsh.name/detect-native-function. Consider
                // polyfilled functions as supporting scroll behavior.
                scrollBehaviorSupported = !/\{\s*\[native code\]\s*\}/.test(scrollToFunction.toString());
            }
            else {
                scrollBehaviorSupported = false;
            }
        }
    }
    return scrollBehaviorSupported;
}
/**
 * Checks the type of RTL scroll axis used by this browser. As of time of writing, Chrome is NORMAL,
 * Firefox & Safari are NEGATED, and IE & Edge are INVERTED.
 */
export function getRtlScrollAxisType() {
    // We can't check unless we're on the browser. Just assume 'normal' if we're not.
    if (typeof document !== 'object' || !document) {
        return 0 /* NORMAL */;
    }
    if (rtlScrollAxisType == null) {
        // Create a 1px wide scrolling container and a 2px wide content element.
        const scrollContainer = document.createElement('div');
        const containerStyle = scrollContainer.style;
        scrollContainer.dir = 'rtl';
        containerStyle.width = '1px';
        containerStyle.overflow = 'auto';
        containerStyle.visibility = 'hidden';
        containerStyle.pointerEvents = 'none';
        containerStyle.position = 'absolute';
        const content = document.createElement('div');
        const contentStyle = content.style;
        contentStyle.width = '2px';
        contentStyle.height = '1px';
        scrollContainer.appendChild(content);
        document.body.appendChild(scrollContainer);
        rtlScrollAxisType = 0 /* NORMAL */;
        // The viewport starts scrolled all the way to the right in RTL mode. If we are in a NORMAL
        // browser this would mean that the scrollLeft should be 1. If it's zero instead we know we're
        // dealing with one of the other two types of browsers.
        if (scrollContainer.scrollLeft === 0) {
            // In a NEGATED browser the scrollLeft is always somewhere in [-maxScrollAmount, 0]. For an
            // INVERTED browser it is always somewhere in [0, maxScrollAmount]. We can determine which by
            // setting to the scrollLeft to 1. This is past the max for a NEGATED browser, so it will
            // return 0 when we read it again.
            scrollContainer.scrollLeft = 1;
            rtlScrollAxisType =
                scrollContainer.scrollLeft === 0 ? 1 /* NEGATED */ : 2 /* INVERTED */;
        }
        scrollContainer.parentNode.removeChild(scrollContainer);
    }
    return rtlScrollAxisType;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic2Nyb2xsaW5nLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9wbGF0Zm9ybS9mZWF0dXJlcy9zY3JvbGxpbmcudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBcUJILDJGQUEyRjtBQUMzRixJQUFJLGlCQUE4QyxDQUFDO0FBRW5ELCtGQUErRjtBQUMvRixJQUFJLHVCQUEwQyxDQUFDO0FBRS9DLDJEQUEyRDtBQUMzRCxNQUFNLFVBQVUsc0JBQXNCO0lBQ3BDLElBQUksdUJBQXVCLElBQUksSUFBSSxFQUFFO1FBQ25DLHNEQUFzRDtRQUN0RCxJQUFJLE9BQU8sUUFBUSxLQUFLLFFBQVEsSUFBSSxDQUFDLFFBQVEsRUFBRTtZQUM3Qyx1QkFBdUIsR0FBRyxLQUFLLENBQUM7U0FDakM7UUFFRCx3RkFBd0Y7UUFDeEYsSUFBSSxnQkFBZ0IsSUFBSSxRQUFRLENBQUMsZUFBZ0IsQ0FBQyxLQUFLLEVBQUU7WUFDdkQsdUJBQXVCLEdBQUcsSUFBSSxDQUFDO1NBQ2hDO2FBQU07WUFDTCxpRkFBaUY7WUFDakYsOEVBQThFO1lBQzlFLE1BQU0sZ0JBQWdCLEdBQXVCLE9BQU8sQ0FBQyxTQUFTLENBQUMsUUFBUSxDQUFDO1lBRXhFLElBQUksZ0JBQWdCLEVBQUU7Z0JBQ3BCLHdGQUF3RjtnQkFDeEYseUZBQXlGO2dCQUN6RiwyRkFBMkY7Z0JBQzNGLHNEQUFzRDtnQkFDdEQsdUJBQXVCLEdBQUcsQ0FBQywyQkFBMkIsQ0FBQyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsUUFBUSxFQUFFLENBQUMsQ0FBQzthQUMxRjtpQkFBTTtnQkFDTCx1QkFBdUIsR0FBRyxLQUFLLENBQUM7YUFDakM7U0FDRjtLQUNGO0lBRUQsT0FBTyx1QkFBdUIsQ0FBQztBQUNqQyxDQUFDO0FBRUQ7OztHQUdHO0FBQ0gsTUFBTSxVQUFVLG9CQUFvQjtJQUNsQyxpRkFBaUY7SUFDakYsSUFBSSxPQUFPLFFBQVEsS0FBSyxRQUFRLElBQUksQ0FBQyxRQUFRLEVBQUU7UUFDN0Msc0JBQWdDO0tBQ2pDO0lBRUQsSUFBSSxpQkFBaUIsSUFBSSxJQUFJLEVBQUU7UUFDN0Isd0VBQXdFO1FBQ3hFLE1BQU0sZUFBZSxHQUFHLFFBQVEsQ0FBQyxhQUFhLENBQUMsS0FBSyxDQUFDLENBQUM7UUFDdEQsTUFBTSxjQUFjLEdBQUcsZUFBZSxDQUFDLEtBQUssQ0FBQztRQUM3QyxlQUFlLENBQUMsR0FBRyxHQUFHLEtBQUssQ0FBQztRQUM1QixjQUFjLENBQUMsS0FBSyxHQUFHLEtBQUssQ0FBQztRQUM3QixjQUFjLENBQUMsUUFBUSxHQUFHLE1BQU0sQ0FBQztRQUNqQyxjQUFjLENBQUMsVUFBVSxHQUFHLFFBQVEsQ0FBQztRQUNyQyxjQUFjLENBQUMsYUFBYSxHQUFHLE1BQU0sQ0FBQztRQUN0QyxjQUFjLENBQUMsUUFBUSxHQUFHLFVBQVUsQ0FBQztRQUVyQyxNQUFNLE9BQU8sR0FBRyxRQUFRLENBQUMsYUFBYSxDQUFDLEtBQUssQ0FBQyxDQUFDO1FBQzlDLE1BQU0sWUFBWSxHQUFHLE9BQU8sQ0FBQyxLQUFLLENBQUM7UUFDbkMsWUFBWSxDQUFDLEtBQUssR0FBRyxLQUFLLENBQUM7UUFDM0IsWUFBWSxDQUFDLE1BQU0sR0FBRyxLQUFLLENBQUM7UUFFNUIsZUFBZSxDQUFDLFdBQVcsQ0FBQyxPQUFPLENBQUMsQ0FBQztRQUNyQyxRQUFRLENBQUMsSUFBSSxDQUFDLFdBQVcsQ0FBQyxlQUFlLENBQUMsQ0FBQztRQUUzQyxpQkFBaUIsaUJBQTJCLENBQUM7UUFFN0MsMkZBQTJGO1FBQzNGLDhGQUE4RjtRQUM5Rix1REFBdUQ7UUFDdkQsSUFBSSxlQUFlLENBQUMsVUFBVSxLQUFLLENBQUMsRUFBRTtZQUNwQywyRkFBMkY7WUFDM0YsNkZBQTZGO1lBQzdGLHlGQUF5RjtZQUN6RixrQ0FBa0M7WUFDbEMsZUFBZSxDQUFDLFVBQVUsR0FBRyxDQUFDLENBQUM7WUFDL0IsaUJBQWlCO2dCQUNiLGVBQWUsQ0FBQyxVQUFVLEtBQUssQ0FBQyxDQUFDLENBQUMsaUJBQTJCLENBQUMsaUJBQTJCLENBQUM7U0FDL0Y7UUFFRCxlQUFlLENBQUMsVUFBVyxDQUFDLFdBQVcsQ0FBQyxlQUFlLENBQUMsQ0FBQztLQUMxRDtJQUNELE9BQU8saUJBQWlCLENBQUM7QUFDM0IsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG4vKiogVGhlIHBvc3NpYmxlIHdheXMgdGhlIGJyb3dzZXIgbWF5IGhhbmRsZSB0aGUgaG9yaXpvbnRhbCBzY3JvbGwgYXhpcyBpbiBSVEwgbGFuZ3VhZ2VzLiAqL1xuZXhwb3J0IGNvbnN0IGVudW0gUnRsU2Nyb2xsQXhpc1R5cGUge1xuICAvKipcbiAgICogc2Nyb2xsTGVmdCBpcyAwIHdoZW4gc2Nyb2xsZWQgYWxsIHRoZSB3YXkgbGVmdCBhbmQgKHNjcm9sbFdpZHRoIC0gY2xpZW50V2lkdGgpIHdoZW4gc2Nyb2xsZWRcbiAgICogYWxsIHRoZSB3YXkgcmlnaHQuXG4gICAqL1xuICBOT1JNQUwsXG4gIC8qKlxuICAgKiBzY3JvbGxMZWZ0IGlzIC0oc2Nyb2xsV2lkdGggLSBjbGllbnRXaWR0aCkgd2hlbiBzY3JvbGxlZCBhbGwgdGhlIHdheSBsZWZ0IGFuZCAwIHdoZW4gc2Nyb2xsZWRcbiAgICogYWxsIHRoZSB3YXkgcmlnaHQuXG4gICAqL1xuICBORUdBVEVELFxuICAvKipcbiAgICogc2Nyb2xsTGVmdCBpcyAoc2Nyb2xsV2lkdGggLSBjbGllbnRXaWR0aCkgd2hlbiBzY3JvbGxlZCBhbGwgdGhlIHdheSBsZWZ0IGFuZCAwIHdoZW4gc2Nyb2xsZWRcbiAgICogYWxsIHRoZSB3YXkgcmlnaHQuXG4gICAqL1xuICBJTlZFUlRFRFxufVxuXG4vKiogQ2FjaGVkIHJlc3VsdCBvZiB0aGUgd2F5IHRoZSBicm93c2VyIGhhbmRsZXMgdGhlIGhvcml6b250YWwgc2Nyb2xsIGF4aXMgaW4gUlRMIG1vZGUuICovXG5sZXQgcnRsU2Nyb2xsQXhpc1R5cGU6IFJ0bFNjcm9sbEF4aXNUeXBlfHVuZGVmaW5lZDtcblxuLyoqIENhY2hlZCByZXN1bHQgb2YgdGhlIGNoZWNrIHRoYXQgaW5kaWNhdGVzIHdoZXRoZXIgdGhlIGJyb3dzZXIgc3VwcG9ydHMgc2Nyb2xsIGJlaGF2aW9ycy4gKi9cbmxldCBzY3JvbGxCZWhhdmlvclN1cHBvcnRlZDogYm9vbGVhbnx1bmRlZmluZWQ7XG5cbi8qKiBDaGVjayB3aGV0aGVyIHRoZSBicm93c2VyIHN1cHBvcnRzIHNjcm9sbCBiZWhhdmlvcnMuICovXG5leHBvcnQgZnVuY3Rpb24gc3VwcG9ydHNTY3JvbGxCZWhhdmlvcigpOiBib29sZWFuIHtcbiAgaWYgKHNjcm9sbEJlaGF2aW9yU3VwcG9ydGVkID09IG51bGwpIHtcbiAgICAvLyBJZiB3ZSdyZSBub3QgaW4gdGhlIGJyb3dzZXIsIGl0IGNhbid0IGJlIHN1cHBvcnRlZC5cbiAgICBpZiAodHlwZW9mIGRvY3VtZW50ICE9PSAnb2JqZWN0JyB8fCAhZG9jdW1lbnQpIHtcbiAgICAgIHNjcm9sbEJlaGF2aW9yU3VwcG9ydGVkID0gZmFsc2U7XG4gICAgfVxuXG4gICAgLy8gSWYgdGhlIGVsZW1lbnQgY2FuIGhhdmUgYSBgc2Nyb2xsQmVoYXZpb3JgIHN0eWxlLCB3ZSBjYW4gYmUgc3VyZSB0aGF0IGl0J3Mgc3VwcG9ydGVkLlxuICAgIGlmICgnc2Nyb2xsQmVoYXZpb3InIGluIGRvY3VtZW50LmRvY3VtZW50RWxlbWVudCEuc3R5bGUpIHtcbiAgICAgIHNjcm9sbEJlaGF2aW9yU3VwcG9ydGVkID0gdHJ1ZTtcbiAgICB9IGVsc2Uge1xuICAgICAgLy8gQXQgdGhpcyBwb2ludCB3ZSBoYXZlIDMgcG9zc2liaWxpdGllczogYHNjcm9sbFRvYCBpc24ndCBzdXBwb3J0ZWQgYXQgYWxsLCBpdCdzXG4gICAgICAvLyBzdXBwb3J0ZWQgYnV0IGl0IGRvZXNuJ3QgaGFuZGxlIHNjcm9sbCBiZWhhdmlvciwgb3IgaXQgaGFzIGJlZW4gcG9seWZpbGxlZC5cbiAgICAgIGNvbnN0IHNjcm9sbFRvRnVuY3Rpb246IEZ1bmN0aW9ufHVuZGVmaW5lZCA9IEVsZW1lbnQucHJvdG90eXBlLnNjcm9sbFRvO1xuXG4gICAgICBpZiAoc2Nyb2xsVG9GdW5jdGlvbikge1xuICAgICAgICAvLyBXZSBjYW4gZGV0ZWN0IGlmIHRoZSBmdW5jdGlvbiBoYXMgYmVlbiBwb2x5ZmlsbGVkIGJ5IGNhbGxpbmcgYHRvU3RyaW5nYCBvbiBpdC4gTmF0aXZlXG4gICAgICAgIC8vIGZ1bmN0aW9ucyBhcmUgb2JmdXNjYXRlZCB1c2luZyBgW25hdGl2ZSBjb2RlXWAsIHdoZXJlYXMgaWYgaXQgd2FzIG92ZXJ3cml0dGVuIHdlJ2QgZ2V0XG4gICAgICAgIC8vIHRoZSBhY3R1YWwgZnVuY3Rpb24gc291cmNlLiBWaWEgaHR0cHM6Ly9kYXZpZHdhbHNoLm5hbWUvZGV0ZWN0LW5hdGl2ZS1mdW5jdGlvbi4gQ29uc2lkZXJcbiAgICAgICAgLy8gcG9seWZpbGxlZCBmdW5jdGlvbnMgYXMgc3VwcG9ydGluZyBzY3JvbGwgYmVoYXZpb3IuXG4gICAgICAgIHNjcm9sbEJlaGF2aW9yU3VwcG9ydGVkID0gIS9cXHtcXHMqXFxbbmF0aXZlIGNvZGVcXF1cXHMqXFx9Ly50ZXN0KHNjcm9sbFRvRnVuY3Rpb24udG9TdHJpbmcoKSk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBzY3JvbGxCZWhhdmlvclN1cHBvcnRlZCA9IGZhbHNlO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHJldHVybiBzY3JvbGxCZWhhdmlvclN1cHBvcnRlZDtcbn1cblxuLyoqXG4gKiBDaGVja3MgdGhlIHR5cGUgb2YgUlRMIHNjcm9sbCBheGlzIHVzZWQgYnkgdGhpcyBicm93c2VyLiBBcyBvZiB0aW1lIG9mIHdyaXRpbmcsIENocm9tZSBpcyBOT1JNQUwsXG4gKiBGaXJlZm94ICYgU2FmYXJpIGFyZSBORUdBVEVELCBhbmQgSUUgJiBFZGdlIGFyZSBJTlZFUlRFRC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldFJ0bFNjcm9sbEF4aXNUeXBlKCk6IFJ0bFNjcm9sbEF4aXNUeXBlIHtcbiAgLy8gV2UgY2FuJ3QgY2hlY2sgdW5sZXNzIHdlJ3JlIG9uIHRoZSBicm93c2VyLiBKdXN0IGFzc3VtZSAnbm9ybWFsJyBpZiB3ZSdyZSBub3QuXG4gIGlmICh0eXBlb2YgZG9jdW1lbnQgIT09ICdvYmplY3QnIHx8ICFkb2N1bWVudCkge1xuICAgIHJldHVybiBSdGxTY3JvbGxBeGlzVHlwZS5OT1JNQUw7XG4gIH1cblxuICBpZiAocnRsU2Nyb2xsQXhpc1R5cGUgPT0gbnVsbCkge1xuICAgIC8vIENyZWF0ZSBhIDFweCB3aWRlIHNjcm9sbGluZyBjb250YWluZXIgYW5kIGEgMnB4IHdpZGUgY29udGVudCBlbGVtZW50LlxuICAgIGNvbnN0IHNjcm9sbENvbnRhaW5lciA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoJ2RpdicpO1xuICAgIGNvbnN0IGNvbnRhaW5lclN0eWxlID0gc2Nyb2xsQ29udGFpbmVyLnN0eWxlO1xuICAgIHNjcm9sbENvbnRhaW5lci5kaXIgPSAncnRsJztcbiAgICBjb250YWluZXJTdHlsZS53aWR0aCA9ICcxcHgnO1xuICAgIGNvbnRhaW5lclN0eWxlLm92ZXJmbG93ID0gJ2F1dG8nO1xuICAgIGNvbnRhaW5lclN0eWxlLnZpc2liaWxpdHkgPSAnaGlkZGVuJztcbiAgICBjb250YWluZXJTdHlsZS5wb2ludGVyRXZlbnRzID0gJ25vbmUnO1xuICAgIGNvbnRhaW5lclN0eWxlLnBvc2l0aW9uID0gJ2Fic29sdXRlJztcblxuICAgIGNvbnN0IGNvbnRlbnQgPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50KCdkaXYnKTtcbiAgICBjb25zdCBjb250ZW50U3R5bGUgPSBjb250ZW50LnN0eWxlO1xuICAgIGNvbnRlbnRTdHlsZS53aWR0aCA9ICcycHgnO1xuICAgIGNvbnRlbnRTdHlsZS5oZWlnaHQgPSAnMXB4JztcblxuICAgIHNjcm9sbENvbnRhaW5lci5hcHBlbmRDaGlsZChjb250ZW50KTtcbiAgICBkb2N1bWVudC5ib2R5LmFwcGVuZENoaWxkKHNjcm9sbENvbnRhaW5lcik7XG5cbiAgICBydGxTY3JvbGxBeGlzVHlwZSA9IFJ0bFNjcm9sbEF4aXNUeXBlLk5PUk1BTDtcblxuICAgIC8vIFRoZSB2aWV3cG9ydCBzdGFydHMgc2Nyb2xsZWQgYWxsIHRoZSB3YXkgdG8gdGhlIHJpZ2h0IGluIFJUTCBtb2RlLiBJZiB3ZSBhcmUgaW4gYSBOT1JNQUxcbiAgICAvLyBicm93c2VyIHRoaXMgd291bGQgbWVhbiB0aGF0IHRoZSBzY3JvbGxMZWZ0IHNob3VsZCBiZSAxLiBJZiBpdCdzIHplcm8gaW5zdGVhZCB3ZSBrbm93IHdlJ3JlXG4gICAgLy8gZGVhbGluZyB3aXRoIG9uZSBvZiB0aGUgb3RoZXIgdHdvIHR5cGVzIG9mIGJyb3dzZXJzLlxuICAgIGlmIChzY3JvbGxDb250YWluZXIuc2Nyb2xsTGVmdCA9PT0gMCkge1xuICAgICAgLy8gSW4gYSBORUdBVEVEIGJyb3dzZXIgdGhlIHNjcm9sbExlZnQgaXMgYWx3YXlzIHNvbWV3aGVyZSBpbiBbLW1heFNjcm9sbEFtb3VudCwgMF0uIEZvciBhblxuICAgICAgLy8gSU5WRVJURUQgYnJvd3NlciBpdCBpcyBhbHdheXMgc29tZXdoZXJlIGluIFswLCBtYXhTY3JvbGxBbW91bnRdLiBXZSBjYW4gZGV0ZXJtaW5lIHdoaWNoIGJ5XG4gICAgICAvLyBzZXR0aW5nIHRvIHRoZSBzY3JvbGxMZWZ0IHRvIDEuIFRoaXMgaXMgcGFzdCB0aGUgbWF4IGZvciBhIE5FR0FURUQgYnJvd3Nlciwgc28gaXQgd2lsbFxuICAgICAgLy8gcmV0dXJuIDAgd2hlbiB3ZSByZWFkIGl0IGFnYWluLlxuICAgICAgc2Nyb2xsQ29udGFpbmVyLnNjcm9sbExlZnQgPSAxO1xuICAgICAgcnRsU2Nyb2xsQXhpc1R5cGUgPVxuICAgICAgICAgIHNjcm9sbENvbnRhaW5lci5zY3JvbGxMZWZ0ID09PSAwID8gUnRsU2Nyb2xsQXhpc1R5cGUuTkVHQVRFRCA6IFJ0bFNjcm9sbEF4aXNUeXBlLklOVkVSVEVEO1xuICAgIH1cblxuICAgIHNjcm9sbENvbnRhaW5lci5wYXJlbnROb2RlIS5yZW1vdmVDaGlsZChzY3JvbGxDb250YWluZXIpO1xuICB9XG4gIHJldHVybiBydGxTY3JvbGxBeGlzVHlwZTtcbn1cbiJdfQ==