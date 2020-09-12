/**
* @license
* Copyright Google Inc. All Rights Reserved.
*
* Use of this source code is governed by an MIT-style license that can be
* found in the LICENSE file at https://angular.io/license
*/
import { concatStringsWithSpace } from '../../util/stringify';
import { assertFirstCreatePass } from '../assert';
import { getTView } from '../state';
/**
 * Compute the static styling (class/style) from `TAttributes`.
 *
 * This function should be called during `firstCreatePass` only.
 *
 * @param tNode The `TNode` into which the styling information should be loaded.
 * @param attrs `TAttributes` containing the styling information.
 */
export function computeStaticStyling(tNode, attrs) {
    ngDevMode &&
        assertFirstCreatePass(getTView(), 'Expecting to be called in first template pass only');
    var styles = tNode.styles;
    var classes = tNode.classes;
    var mode = 0;
    for (var i = 0; i < attrs.length; i++) {
        var value = attrs[i];
        if (typeof value === 'number') {
            mode = value;
        }
        else if (mode == 1 /* Classes */) {
            classes = concatStringsWithSpace(classes, value);
        }
        else if (mode == 2 /* Styles */) {
            var style = value;
            var styleValue = attrs[++i];
            styles = concatStringsWithSpace(styles, style + ': ' + styleValue + ';');
        }
    }
    styles !== null && (tNode.styles = styles);
    classes !== null && (tNode.classes = classes);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic3RhdGljX3N0eWxpbmcuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL3N0eWxpbmcvc3RhdGljX3N0eWxpbmcudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztFQU1FO0FBRUYsT0FBTyxFQUFDLHNCQUFzQixFQUFDLE1BQU0sc0JBQXNCLENBQUM7QUFDNUQsT0FBTyxFQUFDLHFCQUFxQixFQUFDLE1BQU0sV0FBVyxDQUFDO0FBRWhELE9BQU8sRUFBQyxRQUFRLEVBQUMsTUFBTSxVQUFVLENBQUM7QUFFbEM7Ozs7Ozs7R0FPRztBQUNILE1BQU0sVUFBVSxvQkFBb0IsQ0FBQyxLQUFZLEVBQUUsS0FBa0I7SUFDbkUsU0FBUztRQUNMLHFCQUFxQixDQUFDLFFBQVEsRUFBRSxFQUFFLG9EQUFvRCxDQUFDLENBQUM7SUFDNUYsSUFBSSxNQUFNLEdBQWdCLEtBQUssQ0FBQyxNQUFNLENBQUM7SUFDdkMsSUFBSSxPQUFPLEdBQWdCLEtBQUssQ0FBQyxPQUFPLENBQUM7SUFDekMsSUFBSSxJQUFJLEdBQXNCLENBQUMsQ0FBQztJQUNoQyxLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsS0FBSyxDQUFDLE1BQU0sRUFBRSxDQUFDLEVBQUUsRUFBRTtRQUNyQyxJQUFNLEtBQUssR0FBRyxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDdkIsSUFBSSxPQUFPLEtBQUssS0FBSyxRQUFRLEVBQUU7WUFDN0IsSUFBSSxHQUFHLEtBQUssQ0FBQztTQUNkO2FBQU0sSUFBSSxJQUFJLG1CQUEyQixFQUFFO1lBQzFDLE9BQU8sR0FBRyxzQkFBc0IsQ0FBQyxPQUFPLEVBQUUsS0FBZSxDQUFDLENBQUM7U0FDNUQ7YUFBTSxJQUFJLElBQUksa0JBQTBCLEVBQUU7WUFDekMsSUFBTSxLQUFLLEdBQUcsS0FBZSxDQUFDO1lBQzlCLElBQU0sVUFBVSxHQUFHLEtBQUssQ0FBQyxFQUFFLENBQUMsQ0FBVyxDQUFDO1lBQ3hDLE1BQU0sR0FBRyxzQkFBc0IsQ0FBQyxNQUFNLEVBQUUsS0FBSyxHQUFHLElBQUksR0FBRyxVQUFVLEdBQUcsR0FBRyxDQUFDLENBQUM7U0FDMUU7S0FDRjtJQUNELE1BQU0sS0FBSyxJQUFJLElBQUksQ0FBQyxLQUFLLENBQUMsTUFBTSxHQUFHLE1BQU0sQ0FBQyxDQUFDO0lBQzNDLE9BQU8sS0FBSyxJQUFJLElBQUksQ0FBQyxLQUFLLENBQUMsT0FBTyxHQUFHLE9BQU8sQ0FBQyxDQUFDO0FBQ2hELENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiogQGxpY2Vuc2VcbiogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4qXG4qIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4qIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiovXG5cbmltcG9ydCB7Y29uY2F0U3RyaW5nc1dpdGhTcGFjZX0gZnJvbSAnLi4vLi4vdXRpbC9zdHJpbmdpZnknO1xuaW1wb3J0IHthc3NlcnRGaXJzdENyZWF0ZVBhc3N9IGZyb20gJy4uL2Fzc2VydCc7XG5pbXBvcnQge0F0dHJpYnV0ZU1hcmtlciwgVEF0dHJpYnV0ZXMsIFROb2RlfSBmcm9tICcuLi9pbnRlcmZhY2VzL25vZGUnO1xuaW1wb3J0IHtnZXRUVmlld30gZnJvbSAnLi4vc3RhdGUnO1xuXG4vKipcbiAqIENvbXB1dGUgdGhlIHN0YXRpYyBzdHlsaW5nIChjbGFzcy9zdHlsZSkgZnJvbSBgVEF0dHJpYnV0ZXNgLlxuICpcbiAqIFRoaXMgZnVuY3Rpb24gc2hvdWxkIGJlIGNhbGxlZCBkdXJpbmcgYGZpcnN0Q3JlYXRlUGFzc2Agb25seS5cbiAqXG4gKiBAcGFyYW0gdE5vZGUgVGhlIGBUTm9kZWAgaW50byB3aGljaCB0aGUgc3R5bGluZyBpbmZvcm1hdGlvbiBzaG91bGQgYmUgbG9hZGVkLlxuICogQHBhcmFtIGF0dHJzIGBUQXR0cmlidXRlc2AgY29udGFpbmluZyB0aGUgc3R5bGluZyBpbmZvcm1hdGlvbi5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGNvbXB1dGVTdGF0aWNTdHlsaW5nKHROb2RlOiBUTm9kZSwgYXR0cnM6IFRBdHRyaWJ1dGVzKTogdm9pZCB7XG4gIG5nRGV2TW9kZSAmJlxuICAgICAgYXNzZXJ0Rmlyc3RDcmVhdGVQYXNzKGdldFRWaWV3KCksICdFeHBlY3RpbmcgdG8gYmUgY2FsbGVkIGluIGZpcnN0IHRlbXBsYXRlIHBhc3Mgb25seScpO1xuICBsZXQgc3R5bGVzOiBzdHJpbmd8bnVsbCA9IHROb2RlLnN0eWxlcztcbiAgbGV0IGNsYXNzZXM6IHN0cmluZ3xudWxsID0gdE5vZGUuY2xhc3NlcztcbiAgbGV0IG1vZGU6IEF0dHJpYnV0ZU1hcmtlcnwwID0gMDtcbiAgZm9yIChsZXQgaSA9IDA7IGkgPCBhdHRycy5sZW5ndGg7IGkrKykge1xuICAgIGNvbnN0IHZhbHVlID0gYXR0cnNbaV07XG4gICAgaWYgKHR5cGVvZiB2YWx1ZSA9PT0gJ251bWJlcicpIHtcbiAgICAgIG1vZGUgPSB2YWx1ZTtcbiAgICB9IGVsc2UgaWYgKG1vZGUgPT0gQXR0cmlidXRlTWFya2VyLkNsYXNzZXMpIHtcbiAgICAgIGNsYXNzZXMgPSBjb25jYXRTdHJpbmdzV2l0aFNwYWNlKGNsYXNzZXMsIHZhbHVlIGFzIHN0cmluZyk7XG4gICAgfSBlbHNlIGlmIChtb2RlID09IEF0dHJpYnV0ZU1hcmtlci5TdHlsZXMpIHtcbiAgICAgIGNvbnN0IHN0eWxlID0gdmFsdWUgYXMgc3RyaW5nO1xuICAgICAgY29uc3Qgc3R5bGVWYWx1ZSA9IGF0dHJzWysraV0gYXMgc3RyaW5nO1xuICAgICAgc3R5bGVzID0gY29uY2F0U3RyaW5nc1dpdGhTcGFjZShzdHlsZXMsIHN0eWxlICsgJzogJyArIHN0eWxlVmFsdWUgKyAnOycpO1xuICAgIH1cbiAgfVxuICBzdHlsZXMgIT09IG51bGwgJiYgKHROb2RlLnN0eWxlcyA9IHN0eWxlcyk7XG4gIGNsYXNzZXMgIT09IG51bGwgJiYgKHROb2RlLmNsYXNzZXMgPSBjbGFzc2VzKTtcbn0iXX0=