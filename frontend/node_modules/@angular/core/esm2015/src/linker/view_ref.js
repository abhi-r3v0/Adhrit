/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ChangeDetectorRef } from '../change_detection/change_detector_ref';
/**
 * Represents an Angular [view](guide/glossary#view "Definition").
 *
 * @see {@link ChangeDetectorRef#usage-notes Change detection usage}
 *
 * @publicApi
 */
export class ViewRef extends ChangeDetectorRef {
}
/**
 * Represents an Angular [view](guide/glossary#view) in a view container.
 * An [embedded view](guide/glossary#view-tree) can be referenced from a component
 * other than the hosting component whose template defines it, or it can be defined
 * independently by a `TemplateRef`.
 *
 * Properties of elements in a view can change, but the structure (number and order) of elements in
 * a view cannot. Change the structure of elements by inserting, moving, or
 * removing nested views in a view container.
 *
 * @see `ViewContainerRef`
 *
 * @usageNotes
 *
 * The following template breaks down into two separate `TemplateRef` instances,
 * an outer one and an inner one.
 *
 * ```
 * Count: {{items.length}}
 * <ul>
 *   <li *ngFor="let  item of items">{{item}}</li>
 * </ul>
 * ```
 *
 * This is the outer `TemplateRef`:
 *
 * ```
 * Count: {{items.length}}
 * <ul>
 *   <ng-template ngFor let-item [ngForOf]="items"></ng-template>
 * </ul>
 * ```
 *
 * This is the inner `TemplateRef`:
 *
 * ```
 *   <li>{{item}}</li>
 * ```
 *
 * The outer and inner `TemplateRef` instances are assembled into views as follows:
 *
 * ```
 * <!-- ViewRef: outer-0 -->
 * Count: 2
 * <ul>
 *   <ng-template view-container-ref></ng-template>
 *   <!-- ViewRef: inner-1 --><li>first</li><!-- /ViewRef: inner-1 -->
 *   <!-- ViewRef: inner-2 --><li>second</li><!-- /ViewRef: inner-2 -->
 * </ul>
 * <!-- /ViewRef: outer-0 -->
 * ```
 * @publicApi
 */
export class EmbeddedViewRef extends ViewRef {
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidmlld19yZWYuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9saW5rZXIvdmlld19yZWYudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBR0gsT0FBTyxFQUFDLGlCQUFpQixFQUFDLE1BQU0seUNBQXlDLENBQUM7QUFFMUU7Ozs7OztHQU1HO0FBQ0gsTUFBTSxPQUFnQixPQUFRLFNBQVEsaUJBQWlCO0NBbUJ0RDtBQUVEOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O0dBb0RHO0FBQ0gsTUFBTSxPQUFnQixlQUFtQixTQUFRLE9BQU87Q0FVdkQiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtBcHBsaWNhdGlvblJlZn0gZnJvbSAnLi4vYXBwbGljYXRpb25fcmVmJztcbmltcG9ydCB7Q2hhbmdlRGV0ZWN0b3JSZWZ9IGZyb20gJy4uL2NoYW5nZV9kZXRlY3Rpb24vY2hhbmdlX2RldGVjdG9yX3JlZic7XG5cbi8qKlxuICogUmVwcmVzZW50cyBhbiBBbmd1bGFyIFt2aWV3XShndWlkZS9nbG9zc2FyeSN2aWV3IFwiRGVmaW5pdGlvblwiKS5cbiAqXG4gKiBAc2VlIHtAbGluayBDaGFuZ2VEZXRlY3RvclJlZiN1c2FnZS1ub3RlcyBDaGFuZ2UgZGV0ZWN0aW9uIHVzYWdlfVxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGFic3RyYWN0IGNsYXNzIFZpZXdSZWYgZXh0ZW5kcyBDaGFuZ2VEZXRlY3RvclJlZiB7XG4gIC8qKlxuICAgKiBEZXN0cm95cyB0aGlzIHZpZXcgYW5kIGFsbCBvZiB0aGUgZGF0YSBzdHJ1Y3R1cmVzIGFzc29jaWF0ZWQgd2l0aCBpdC5cbiAgICovXG4gIGFic3RyYWN0IGRlc3Ryb3koKTogdm9pZDtcblxuICAvKipcbiAgICogUmVwb3J0cyB3aGV0aGVyIHRoaXMgdmlldyBoYXMgYmVlbiBkZXN0cm95ZWQuXG4gICAqIEByZXR1cm5zIFRydWUgYWZ0ZXIgdGhlIGBkZXN0cm95KClgIG1ldGhvZCBoYXMgYmVlbiBjYWxsZWQsIGZhbHNlIG90aGVyd2lzZS5cbiAgICovXG4gIGFic3RyYWN0IGdldCBkZXN0cm95ZWQoKTogYm9vbGVhbjtcblxuICAvKipcbiAgICogQSBsaWZlY3ljbGUgaG9vayB0aGF0IHByb3ZpZGVzIGFkZGl0aW9uYWwgZGV2ZWxvcGVyLWRlZmluZWQgY2xlYW51cFxuICAgKiBmdW5jdGlvbmFsaXR5IGZvciB2aWV3cy5cbiAgICogQHBhcmFtIGNhbGxiYWNrIEEgaGFuZGxlciBmdW5jdGlvbiB0aGF0IGNsZWFucyB1cCBkZXZlbG9wZXItZGVmaW5lZCBkYXRhXG4gICAqIGFzc29jaWF0ZWQgd2l0aCBhIHZpZXcuIENhbGxlZCB3aGVuIHRoZSBgZGVzdHJveSgpYCBtZXRob2QgaXMgaW52b2tlZC5cbiAgICovXG4gIGFic3RyYWN0IG9uRGVzdHJveShjYWxsYmFjazogRnVuY3Rpb24pOiBhbnkgLyoqIFRPRE8gIzkxMDAgKi87XG59XG5cbi8qKlxuICogUmVwcmVzZW50cyBhbiBBbmd1bGFyIFt2aWV3XShndWlkZS9nbG9zc2FyeSN2aWV3KSBpbiBhIHZpZXcgY29udGFpbmVyLlxuICogQW4gW2VtYmVkZGVkIHZpZXddKGd1aWRlL2dsb3NzYXJ5I3ZpZXctdHJlZSkgY2FuIGJlIHJlZmVyZW5jZWQgZnJvbSBhIGNvbXBvbmVudFxuICogb3RoZXIgdGhhbiB0aGUgaG9zdGluZyBjb21wb25lbnQgd2hvc2UgdGVtcGxhdGUgZGVmaW5lcyBpdCwgb3IgaXQgY2FuIGJlIGRlZmluZWRcbiAqIGluZGVwZW5kZW50bHkgYnkgYSBgVGVtcGxhdGVSZWZgLlxuICpcbiAqIFByb3BlcnRpZXMgb2YgZWxlbWVudHMgaW4gYSB2aWV3IGNhbiBjaGFuZ2UsIGJ1dCB0aGUgc3RydWN0dXJlIChudW1iZXIgYW5kIG9yZGVyKSBvZiBlbGVtZW50cyBpblxuICogYSB2aWV3IGNhbm5vdC4gQ2hhbmdlIHRoZSBzdHJ1Y3R1cmUgb2YgZWxlbWVudHMgYnkgaW5zZXJ0aW5nLCBtb3ZpbmcsIG9yXG4gKiByZW1vdmluZyBuZXN0ZWQgdmlld3MgaW4gYSB2aWV3IGNvbnRhaW5lci5cbiAqXG4gKiBAc2VlIGBWaWV3Q29udGFpbmVyUmVmYFxuICpcbiAqIEB1c2FnZU5vdGVzXG4gKlxuICogVGhlIGZvbGxvd2luZyB0ZW1wbGF0ZSBicmVha3MgZG93biBpbnRvIHR3byBzZXBhcmF0ZSBgVGVtcGxhdGVSZWZgIGluc3RhbmNlcyxcbiAqIGFuIG91dGVyIG9uZSBhbmQgYW4gaW5uZXIgb25lLlxuICpcbiAqIGBgYFxuICogQ291bnQ6IHt7aXRlbXMubGVuZ3RofX1cbiAqIDx1bD5cbiAqICAgPGxpICpuZ0Zvcj1cImxldCAgaXRlbSBvZiBpdGVtc1wiPnt7aXRlbX19PC9saT5cbiAqIDwvdWw+XG4gKiBgYGBcbiAqXG4gKiBUaGlzIGlzIHRoZSBvdXRlciBgVGVtcGxhdGVSZWZgOlxuICpcbiAqIGBgYFxuICogQ291bnQ6IHt7aXRlbXMubGVuZ3RofX1cbiAqIDx1bD5cbiAqICAgPG5nLXRlbXBsYXRlIG5nRm9yIGxldC1pdGVtIFtuZ0Zvck9mXT1cIml0ZW1zXCI+PC9uZy10ZW1wbGF0ZT5cbiAqIDwvdWw+XG4gKiBgYGBcbiAqXG4gKiBUaGlzIGlzIHRoZSBpbm5lciBgVGVtcGxhdGVSZWZgOlxuICpcbiAqIGBgYFxuICogICA8bGk+e3tpdGVtfX08L2xpPlxuICogYGBgXG4gKlxuICogVGhlIG91dGVyIGFuZCBpbm5lciBgVGVtcGxhdGVSZWZgIGluc3RhbmNlcyBhcmUgYXNzZW1ibGVkIGludG8gdmlld3MgYXMgZm9sbG93czpcbiAqXG4gKiBgYGBcbiAqIDwhLS0gVmlld1JlZjogb3V0ZXItMCAtLT5cbiAqIENvdW50OiAyXG4gKiA8dWw+XG4gKiAgIDxuZy10ZW1wbGF0ZSB2aWV3LWNvbnRhaW5lci1yZWY+PC9uZy10ZW1wbGF0ZT5cbiAqICAgPCEtLSBWaWV3UmVmOiBpbm5lci0xIC0tPjxsaT5maXJzdDwvbGk+PCEtLSAvVmlld1JlZjogaW5uZXItMSAtLT5cbiAqICAgPCEtLSBWaWV3UmVmOiBpbm5lci0yIC0tPjxsaT5zZWNvbmQ8L2xpPjwhLS0gL1ZpZXdSZWY6IGlubmVyLTIgLS0+XG4gKiA8L3VsPlxuICogPCEtLSAvVmlld1JlZjogb3V0ZXItMCAtLT5cbiAqIGBgYFxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgYWJzdHJhY3QgY2xhc3MgRW1iZWRkZWRWaWV3UmVmPEM+IGV4dGVuZHMgVmlld1JlZiB7XG4gIC8qKlxuICAgKiBUaGUgY29udGV4dCBmb3IgdGhpcyB2aWV3LCBpbmhlcml0ZWQgZnJvbSB0aGUgYW5jaG9yIGVsZW1lbnQuXG4gICAqL1xuICBhYnN0cmFjdCBnZXQgY29udGV4dCgpOiBDO1xuXG4gIC8qKlxuICAgKiBUaGUgcm9vdCBub2RlcyBmb3IgdGhpcyBlbWJlZGRlZCB2aWV3LlxuICAgKi9cbiAgYWJzdHJhY3QgZ2V0IHJvb3ROb2RlcygpOiBhbnlbXTtcbn1cblxuZXhwb3J0IGludGVyZmFjZSBJbnRlcm5hbFZpZXdSZWYgZXh0ZW5kcyBWaWV3UmVmIHtcbiAgZGV0YWNoRnJvbUFwcFJlZigpOiB2b2lkO1xuICBhdHRhY2hUb0FwcFJlZihhcHBSZWY6IEFwcGxpY2F0aW9uUmVmKTogdm9pZDtcbn1cbiJdfQ==