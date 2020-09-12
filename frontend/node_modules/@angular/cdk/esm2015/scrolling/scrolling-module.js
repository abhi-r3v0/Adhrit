/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { BidiModule } from '@angular/cdk/bidi';
import { PlatformModule } from '@angular/cdk/platform';
import { NgModule } from '@angular/core';
import { CdkFixedSizeVirtualScroll } from './fixed-size-virtual-scroll';
import { CdkScrollable } from './scrollable';
import { CdkVirtualForOf } from './virtual-for-of';
import { CdkVirtualScrollViewport } from './virtual-scroll-viewport';
export class CdkScrollableModule {
}
CdkScrollableModule.decorators = [
    { type: NgModule, args: [{
                exports: [CdkScrollable],
                declarations: [CdkScrollable]
            },] }
];
/**
 * @docs-primary-export
 */
export class ScrollingModule {
}
ScrollingModule.decorators = [
    { type: NgModule, args: [{
                imports: [
                    BidiModule,
                    PlatformModule,
                    CdkScrollableModule
                ],
                exports: [
                    BidiModule,
                    CdkScrollableModule,
                    CdkFixedSizeVirtualScroll,
                    CdkVirtualForOf,
                    CdkVirtualScrollViewport,
                ],
                declarations: [
                    CdkFixedSizeVirtualScroll,
                    CdkVirtualForOf,
                    CdkVirtualScrollViewport,
                ],
            },] }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic2Nyb2xsaW5nLW1vZHVsZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvc2Nyb2xsaW5nL3Njcm9sbGluZy1tb2R1bGUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFDLFVBQVUsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBQzdDLE9BQU8sRUFBQyxjQUFjLEVBQUMsTUFBTSx1QkFBdUIsQ0FBQztBQUNyRCxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0sZUFBZSxDQUFDO0FBQ3ZDLE9BQU8sRUFBQyx5QkFBeUIsRUFBQyxNQUFNLDZCQUE2QixDQUFDO0FBQ3RFLE9BQU8sRUFBQyxhQUFhLEVBQUMsTUFBTSxjQUFjLENBQUM7QUFDM0MsT0FBTyxFQUFDLGVBQWUsRUFBQyxNQUFNLGtCQUFrQixDQUFDO0FBQ2pELE9BQU8sRUFBQyx3QkFBd0IsRUFBQyxNQUFNLDJCQUEyQixDQUFDO0FBTW5FLE1BQU0sT0FBTyxtQkFBbUI7OztZQUovQixRQUFRLFNBQUM7Z0JBQ1IsT0FBTyxFQUFFLENBQUMsYUFBYSxDQUFDO2dCQUN4QixZQUFZLEVBQUUsQ0FBQyxhQUFhLENBQUM7YUFDOUI7O0FBR0Q7O0dBRUc7QUFvQkgsTUFBTSxPQUFPLGVBQWU7OztZQW5CM0IsUUFBUSxTQUFDO2dCQUNSLE9BQU8sRUFBRTtvQkFDUCxVQUFVO29CQUNWLGNBQWM7b0JBQ2QsbUJBQW1CO2lCQUNwQjtnQkFDRCxPQUFPLEVBQUU7b0JBQ1AsVUFBVTtvQkFDVixtQkFBbUI7b0JBQ25CLHlCQUF5QjtvQkFDekIsZUFBZTtvQkFDZix3QkFBd0I7aUJBQ3pCO2dCQUNELFlBQVksRUFBRTtvQkFDWix5QkFBeUI7b0JBQ3pCLGVBQWU7b0JBQ2Ysd0JBQXdCO2lCQUN6QjthQUNGIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7QmlkaU1vZHVsZX0gZnJvbSAnQGFuZ3VsYXIvY2RrL2JpZGknO1xuaW1wb3J0IHtQbGF0Zm9ybU1vZHVsZX0gZnJvbSAnQGFuZ3VsYXIvY2RrL3BsYXRmb3JtJztcbmltcG9ydCB7TmdNb2R1bGV9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHtDZGtGaXhlZFNpemVWaXJ0dWFsU2Nyb2xsfSBmcm9tICcuL2ZpeGVkLXNpemUtdmlydHVhbC1zY3JvbGwnO1xuaW1wb3J0IHtDZGtTY3JvbGxhYmxlfSBmcm9tICcuL3Njcm9sbGFibGUnO1xuaW1wb3J0IHtDZGtWaXJ0dWFsRm9yT2Z9IGZyb20gJy4vdmlydHVhbC1mb3Itb2YnO1xuaW1wb3J0IHtDZGtWaXJ0dWFsU2Nyb2xsVmlld3BvcnR9IGZyb20gJy4vdmlydHVhbC1zY3JvbGwtdmlld3BvcnQnO1xuXG5ATmdNb2R1bGUoe1xuICBleHBvcnRzOiBbQ2RrU2Nyb2xsYWJsZV0sXG4gIGRlY2xhcmF0aW9uczogW0Nka1Njcm9sbGFibGVdXG59KVxuZXhwb3J0IGNsYXNzIENka1Njcm9sbGFibGVNb2R1bGUge31cblxuLyoqXG4gKiBAZG9jcy1wcmltYXJ5LWV4cG9ydFxuICovXG5ATmdNb2R1bGUoe1xuICBpbXBvcnRzOiBbXG4gICAgQmlkaU1vZHVsZSxcbiAgICBQbGF0Zm9ybU1vZHVsZSxcbiAgICBDZGtTY3JvbGxhYmxlTW9kdWxlXG4gIF0sXG4gIGV4cG9ydHM6IFtcbiAgICBCaWRpTW9kdWxlLFxuICAgIENka1Njcm9sbGFibGVNb2R1bGUsXG4gICAgQ2RrRml4ZWRTaXplVmlydHVhbFNjcm9sbCxcbiAgICBDZGtWaXJ0dWFsRm9yT2YsXG4gICAgQ2RrVmlydHVhbFNjcm9sbFZpZXdwb3J0LFxuICBdLFxuICBkZWNsYXJhdGlvbnM6IFtcbiAgICBDZGtGaXhlZFNpemVWaXJ0dWFsU2Nyb2xsLFxuICAgIENka1ZpcnR1YWxGb3JPZixcbiAgICBDZGtWaXJ0dWFsU2Nyb2xsVmlld3BvcnQsXG4gIF0sXG59KVxuZXhwb3J0IGNsYXNzIFNjcm9sbGluZ01vZHVsZSB7fVxuIl19