/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { assertDefined, assertEqual } from '../util/assert';
export function assertNodeType(tNode, type) {
    assertDefined(tNode, 'should be called with a TNode');
    assertEqual(tNode.type, type, "should be a " + typeName(type));
}
export function assertNodeOfPossibleTypes(tNode) {
    var types = [];
    for (var _i = 1; _i < arguments.length; _i++) {
        types[_i - 1] = arguments[_i];
    }
    assertDefined(tNode, 'should be called with a TNode');
    var found = types.some(function (type) { return tNode.type === type; });
    assertEqual(found, true, "Should be one of " + types.map(typeName).join(', ') + " but got " + typeName(tNode.type));
}
function typeName(type) {
    if (type == 1 /* Projection */)
        return 'Projection';
    if (type == 0 /* Container */)
        return 'Container';
    if (type == 5 /* IcuContainer */)
        return 'IcuContainer';
    if (type == 2 /* View */)
        return 'View';
    if (type == 3 /* Element */)
        return 'Element';
    if (type == 4 /* ElementContainer */)
        return 'ElementContainer';
    return '<unknown>';
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibm9kZV9hc3NlcnQuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL25vZGVfYXNzZXJ0LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBQyxhQUFhLEVBQUUsV0FBVyxFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFHMUQsTUFBTSxVQUFVLGNBQWMsQ0FBQyxLQUFZLEVBQUUsSUFBZTtJQUMxRCxhQUFhLENBQUMsS0FBSyxFQUFFLCtCQUErQixDQUFDLENBQUM7SUFDdEQsV0FBVyxDQUFDLEtBQUssQ0FBQyxJQUFJLEVBQUUsSUFBSSxFQUFFLGlCQUFlLFFBQVEsQ0FBQyxJQUFJLENBQUcsQ0FBQyxDQUFDO0FBQ2pFLENBQUM7QUFFRCxNQUFNLFVBQVUseUJBQXlCLENBQUMsS0FBWTtJQUFFLGVBQXFCO1NBQXJCLFVBQXFCLEVBQXJCLHFCQUFxQixFQUFyQixJQUFxQjtRQUFyQiw4QkFBcUI7O0lBQzNFLGFBQWEsQ0FBQyxLQUFLLEVBQUUsK0JBQStCLENBQUMsQ0FBQztJQUN0RCxJQUFNLEtBQUssR0FBRyxLQUFLLENBQUMsSUFBSSxDQUFDLFVBQUEsSUFBSSxJQUFJLE9BQUEsS0FBSyxDQUFDLElBQUksS0FBSyxJQUFJLEVBQW5CLENBQW1CLENBQUMsQ0FBQztJQUN0RCxXQUFXLENBQ1AsS0FBSyxFQUFFLElBQUksRUFDWCxzQkFBb0IsS0FBSyxDQUFDLEdBQUcsQ0FBQyxRQUFRLENBQUMsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLGlCQUFZLFFBQVEsQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFHLENBQUMsQ0FBQztBQUM1RixDQUFDO0FBRUQsU0FBUyxRQUFRLENBQUMsSUFBZTtJQUMvQixJQUFJLElBQUksc0JBQXdCO1FBQUUsT0FBTyxZQUFZLENBQUM7SUFDdEQsSUFBSSxJQUFJLHFCQUF1QjtRQUFFLE9BQU8sV0FBVyxDQUFDO0lBQ3BELElBQUksSUFBSSx3QkFBMEI7UUFBRSxPQUFPLGNBQWMsQ0FBQztJQUMxRCxJQUFJLElBQUksZ0JBQWtCO1FBQUUsT0FBTyxNQUFNLENBQUM7SUFDMUMsSUFBSSxJQUFJLG1CQUFxQjtRQUFFLE9BQU8sU0FBUyxDQUFDO0lBQ2hELElBQUksSUFBSSw0QkFBOEI7UUFBRSxPQUFPLGtCQUFrQixDQUFDO0lBQ2xFLE9BQU8sV0FBVyxDQUFDO0FBQ3JCLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7YXNzZXJ0RGVmaW5lZCwgYXNzZXJ0RXF1YWx9IGZyb20gJy4uL3V0aWwvYXNzZXJ0JztcbmltcG9ydCB7VE5vZGUsIFROb2RlVHlwZX0gZnJvbSAnLi9pbnRlcmZhY2VzL25vZGUnO1xuXG5leHBvcnQgZnVuY3Rpb24gYXNzZXJ0Tm9kZVR5cGUodE5vZGU6IFROb2RlLCB0eXBlOiBUTm9kZVR5cGUpIHtcbiAgYXNzZXJ0RGVmaW5lZCh0Tm9kZSwgJ3Nob3VsZCBiZSBjYWxsZWQgd2l0aCBhIFROb2RlJyk7XG4gIGFzc2VydEVxdWFsKHROb2RlLnR5cGUsIHR5cGUsIGBzaG91bGQgYmUgYSAke3R5cGVOYW1lKHR5cGUpfWApO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gYXNzZXJ0Tm9kZU9mUG9zc2libGVUeXBlcyh0Tm9kZTogVE5vZGUsIC4uLnR5cGVzOiBUTm9kZVR5cGVbXSkge1xuICBhc3NlcnREZWZpbmVkKHROb2RlLCAnc2hvdWxkIGJlIGNhbGxlZCB3aXRoIGEgVE5vZGUnKTtcbiAgY29uc3QgZm91bmQgPSB0eXBlcy5zb21lKHR5cGUgPT4gdE5vZGUudHlwZSA9PT0gdHlwZSk7XG4gIGFzc2VydEVxdWFsKFxuICAgICAgZm91bmQsIHRydWUsXG4gICAgICBgU2hvdWxkIGJlIG9uZSBvZiAke3R5cGVzLm1hcCh0eXBlTmFtZSkuam9pbignLCAnKX0gYnV0IGdvdCAke3R5cGVOYW1lKHROb2RlLnR5cGUpfWApO1xufVxuXG5mdW5jdGlvbiB0eXBlTmFtZSh0eXBlOiBUTm9kZVR5cGUpOiBzdHJpbmcge1xuICBpZiAodHlwZSA9PSBUTm9kZVR5cGUuUHJvamVjdGlvbikgcmV0dXJuICdQcm9qZWN0aW9uJztcbiAgaWYgKHR5cGUgPT0gVE5vZGVUeXBlLkNvbnRhaW5lcikgcmV0dXJuICdDb250YWluZXInO1xuICBpZiAodHlwZSA9PSBUTm9kZVR5cGUuSWN1Q29udGFpbmVyKSByZXR1cm4gJ0ljdUNvbnRhaW5lcic7XG4gIGlmICh0eXBlID09IFROb2RlVHlwZS5WaWV3KSByZXR1cm4gJ1ZpZXcnO1xuICBpZiAodHlwZSA9PSBUTm9kZVR5cGUuRWxlbWVudCkgcmV0dXJuICdFbGVtZW50JztcbiAgaWYgKHR5cGUgPT0gVE5vZGVUeXBlLkVsZW1lbnRDb250YWluZXIpIHJldHVybiAnRWxlbWVudENvbnRhaW5lcic7XG4gIHJldHVybiAnPHVua25vd24+Jztcbn1cbiJdfQ==