/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/styling/static_styling.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
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
 * @param {?} tNode The `TNode` into which the styling information should be loaded.
 * @param {?} attrs `TAttributes` containing the styling information.
 * @return {?}
 */
export function computeStaticStyling(tNode, attrs) {
    ngDevMode &&
        assertFirstCreatePass(getTView(), 'Expecting to be called in first template pass only');
    /** @type {?} */
    let styles = tNode.styles;
    /** @type {?} */
    let classes = tNode.classes;
    /** @type {?} */
    let mode = 0;
    for (let i = 0; i < attrs.length; i++) {
        /** @type {?} */
        const value = attrs[i];
        if (typeof value === 'number') {
            mode = value;
        }
        else if (mode == 1 /* Classes */) {
            classes = concatStringsWithSpace(classes, (/** @type {?} */ (value)));
        }
        else if (mode == 2 /* Styles */) {
            /** @type {?} */
            const style = (/** @type {?} */ (value));
            /** @type {?} */
            const styleValue = (/** @type {?} */ (attrs[++i]));
            styles = concatStringsWithSpace(styles, style + ': ' + styleValue + ';');
        }
    }
    styles !== null && (tNode.styles = styles);
    classes !== null && (tNode.classes = classes);
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic3RhdGljX3N0eWxpbmcuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL3N0eWxpbmcvc3RhdGljX3N0eWxpbmcudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBUUEsT0FBTyxFQUFDLHNCQUFzQixFQUFDLE1BQU0sc0JBQXNCLENBQUM7QUFDNUQsT0FBTyxFQUFDLHFCQUFxQixFQUFDLE1BQU0sV0FBVyxDQUFDO0FBRWhELE9BQU8sRUFBQyxRQUFRLEVBQUMsTUFBTSxVQUFVLENBQUM7Ozs7Ozs7Ozs7QUFVbEMsTUFBTSxVQUFVLG9CQUFvQixDQUFDLEtBQVksRUFBRSxLQUFrQjtJQUNuRSxTQUFTO1FBQ0wscUJBQXFCLENBQUMsUUFBUSxFQUFFLEVBQUUsb0RBQW9ELENBQUMsQ0FBQzs7UUFDeEYsTUFBTSxHQUFnQixLQUFLLENBQUMsTUFBTTs7UUFDbEMsT0FBTyxHQUFnQixLQUFLLENBQUMsT0FBTzs7UUFDcEMsSUFBSSxHQUFzQixDQUFDO0lBQy9CLEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxLQUFLLENBQUMsTUFBTSxFQUFFLENBQUMsRUFBRSxFQUFFOztjQUMvQixLQUFLLEdBQUcsS0FBSyxDQUFDLENBQUMsQ0FBQztRQUN0QixJQUFJLE9BQU8sS0FBSyxLQUFLLFFBQVEsRUFBRTtZQUM3QixJQUFJLEdBQUcsS0FBSyxDQUFDO1NBQ2Q7YUFBTSxJQUFJLElBQUksbUJBQTJCLEVBQUU7WUFDMUMsT0FBTyxHQUFHLHNCQUFzQixDQUFDLE9BQU8sRUFBRSxtQkFBQSxLQUFLLEVBQVUsQ0FBQyxDQUFDO1NBQzVEO2FBQU0sSUFBSSxJQUFJLGtCQUEwQixFQUFFOztrQkFDbkMsS0FBSyxHQUFHLG1CQUFBLEtBQUssRUFBVTs7a0JBQ3ZCLFVBQVUsR0FBRyxtQkFBQSxLQUFLLENBQUMsRUFBRSxDQUFDLENBQUMsRUFBVTtZQUN2QyxNQUFNLEdBQUcsc0JBQXNCLENBQUMsTUFBTSxFQUFFLEtBQUssR0FBRyxJQUFJLEdBQUcsVUFBVSxHQUFHLEdBQUcsQ0FBQyxDQUFDO1NBQzFFO0tBQ0Y7SUFDRCxNQUFNLEtBQUssSUFBSSxJQUFJLENBQUMsS0FBSyxDQUFDLE1BQU0sR0FBRyxNQUFNLENBQUMsQ0FBQztJQUMzQyxPQUFPLEtBQUssSUFBSSxJQUFJLENBQUMsS0FBSyxDQUFDLE9BQU8sR0FBRyxPQUFPLENBQUMsQ0FBQztBQUNoRCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4qIEBsaWNlbnNlXG4qIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuKlxuKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4qL1xuXG5pbXBvcnQge2NvbmNhdFN0cmluZ3NXaXRoU3BhY2V9IGZyb20gJy4uLy4uL3V0aWwvc3RyaW5naWZ5JztcbmltcG9ydCB7YXNzZXJ0Rmlyc3RDcmVhdGVQYXNzfSBmcm9tICcuLi9hc3NlcnQnO1xuaW1wb3J0IHtBdHRyaWJ1dGVNYXJrZXIsIFRBdHRyaWJ1dGVzLCBUTm9kZX0gZnJvbSAnLi4vaW50ZXJmYWNlcy9ub2RlJztcbmltcG9ydCB7Z2V0VFZpZXd9IGZyb20gJy4uL3N0YXRlJztcblxuLyoqXG4gKiBDb21wdXRlIHRoZSBzdGF0aWMgc3R5bGluZyAoY2xhc3Mvc3R5bGUpIGZyb20gYFRBdHRyaWJ1dGVzYC5cbiAqXG4gKiBUaGlzIGZ1bmN0aW9uIHNob3VsZCBiZSBjYWxsZWQgZHVyaW5nIGBmaXJzdENyZWF0ZVBhc3NgIG9ubHkuXG4gKlxuICogQHBhcmFtIHROb2RlIFRoZSBgVE5vZGVgIGludG8gd2hpY2ggdGhlIHN0eWxpbmcgaW5mb3JtYXRpb24gc2hvdWxkIGJlIGxvYWRlZC5cbiAqIEBwYXJhbSBhdHRycyBgVEF0dHJpYnV0ZXNgIGNvbnRhaW5pbmcgdGhlIHN0eWxpbmcgaW5mb3JtYXRpb24uXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBjb21wdXRlU3RhdGljU3R5bGluZyh0Tm9kZTogVE5vZGUsIGF0dHJzOiBUQXR0cmlidXRlcyk6IHZvaWQge1xuICBuZ0Rldk1vZGUgJiZcbiAgICAgIGFzc2VydEZpcnN0Q3JlYXRlUGFzcyhnZXRUVmlldygpLCAnRXhwZWN0aW5nIHRvIGJlIGNhbGxlZCBpbiBmaXJzdCB0ZW1wbGF0ZSBwYXNzIG9ubHknKTtcbiAgbGV0IHN0eWxlczogc3RyaW5nfG51bGwgPSB0Tm9kZS5zdHlsZXM7XG4gIGxldCBjbGFzc2VzOiBzdHJpbmd8bnVsbCA9IHROb2RlLmNsYXNzZXM7XG4gIGxldCBtb2RlOiBBdHRyaWJ1dGVNYXJrZXJ8MCA9IDA7XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgYXR0cnMubGVuZ3RoOyBpKyspIHtcbiAgICBjb25zdCB2YWx1ZSA9IGF0dHJzW2ldO1xuICAgIGlmICh0eXBlb2YgdmFsdWUgPT09ICdudW1iZXInKSB7XG4gICAgICBtb2RlID0gdmFsdWU7XG4gICAgfSBlbHNlIGlmIChtb2RlID09IEF0dHJpYnV0ZU1hcmtlci5DbGFzc2VzKSB7XG4gICAgICBjbGFzc2VzID0gY29uY2F0U3RyaW5nc1dpdGhTcGFjZShjbGFzc2VzLCB2YWx1ZSBhcyBzdHJpbmcpO1xuICAgIH0gZWxzZSBpZiAobW9kZSA9PSBBdHRyaWJ1dGVNYXJrZXIuU3R5bGVzKSB7XG4gICAgICBjb25zdCBzdHlsZSA9IHZhbHVlIGFzIHN0cmluZztcbiAgICAgIGNvbnN0IHN0eWxlVmFsdWUgPSBhdHRyc1srK2ldIGFzIHN0cmluZztcbiAgICAgIHN0eWxlcyA9IGNvbmNhdFN0cmluZ3NXaXRoU3BhY2Uoc3R5bGVzLCBzdHlsZSArICc6ICcgKyBzdHlsZVZhbHVlICsgJzsnKTtcbiAgICB9XG4gIH1cbiAgc3R5bGVzICE9PSBudWxsICYmICh0Tm9kZS5zdHlsZXMgPSBzdHlsZXMpO1xuICBjbGFzc2VzICE9PSBudWxsICYmICh0Tm9kZS5jbGFzc2VzID0gY2xhc3Nlcyk7XG59Il19