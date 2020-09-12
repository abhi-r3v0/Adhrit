/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ObserversModule } from '@angular/cdk/observers';
import { PlatformModule } from '@angular/cdk/platform';
import { NgModule } from '@angular/core';
import { CdkMonitorFocus } from './focus-monitor/focus-monitor';
import { CdkTrapFocus } from './focus-trap/focus-trap';
import { HighContrastModeDetector } from './high-contrast-mode/high-contrast-mode-detector';
import { CdkAriaLive } from './live-announcer/live-announcer';
export class A11yModule {
    constructor(highContrastModeDetector) {
        highContrastModeDetector._applyBodyHighContrastModeCssClasses();
    }
}
A11yModule.decorators = [
    { type: NgModule, args: [{
                imports: [PlatformModule, ObserversModule],
                declarations: [CdkAriaLive, CdkTrapFocus, CdkMonitorFocus],
                exports: [CdkAriaLive, CdkTrapFocus, CdkMonitorFocus],
            },] }
];
A11yModule.ctorParameters = () => [
    { type: HighContrastModeDetector }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYTExeS1tb2R1bGUuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL2ExMXkvYTExeS1tb2R1bGUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFDLGVBQWUsRUFBQyxNQUFNLHdCQUF3QixDQUFDO0FBQ3ZELE9BQU8sRUFBQyxjQUFjLEVBQUMsTUFBTSx1QkFBdUIsQ0FBQztBQUNyRCxPQUFPLEVBQUMsUUFBUSxFQUFDLE1BQU0sZUFBZSxDQUFDO0FBQ3ZDLE9BQU8sRUFBQyxlQUFlLEVBQUMsTUFBTSwrQkFBK0IsQ0FBQztBQUM5RCxPQUFPLEVBQUMsWUFBWSxFQUFDLE1BQU0seUJBQXlCLENBQUM7QUFDckQsT0FBTyxFQUFDLHdCQUF3QixFQUFDLE1BQU0sa0RBQWtELENBQUM7QUFDMUYsT0FBTyxFQUFDLFdBQVcsRUFBQyxNQUFNLGlDQUFpQyxDQUFDO0FBUTVELE1BQU0sT0FBTyxVQUFVO0lBQ3JCLFlBQVksd0JBQWtEO1FBQzVELHdCQUF3QixDQUFDLG9DQUFvQyxFQUFFLENBQUM7SUFDbEUsQ0FBQzs7O1lBUkYsUUFBUSxTQUFDO2dCQUNSLE9BQU8sRUFBRSxDQUFDLGNBQWMsRUFBRSxlQUFlLENBQUM7Z0JBQzFDLFlBQVksRUFBRSxDQUFDLFdBQVcsRUFBRSxZQUFZLEVBQUUsZUFBZSxDQUFDO2dCQUMxRCxPQUFPLEVBQUUsQ0FBQyxXQUFXLEVBQUUsWUFBWSxFQUFFLGVBQWUsQ0FBQzthQUN0RDs7O1lBUk8sd0JBQXdCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7T2JzZXJ2ZXJzTW9kdWxlfSBmcm9tICdAYW5ndWxhci9jZGsvb2JzZXJ2ZXJzJztcbmltcG9ydCB7UGxhdGZvcm1Nb2R1bGV9IGZyb20gJ0Bhbmd1bGFyL2Nkay9wbGF0Zm9ybSc7XG5pbXBvcnQge05nTW9kdWxlfSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7Q2RrTW9uaXRvckZvY3VzfSBmcm9tICcuL2ZvY3VzLW1vbml0b3IvZm9jdXMtbW9uaXRvcic7XG5pbXBvcnQge0Nka1RyYXBGb2N1c30gZnJvbSAnLi9mb2N1cy10cmFwL2ZvY3VzLXRyYXAnO1xuaW1wb3J0IHtIaWdoQ29udHJhc3RNb2RlRGV0ZWN0b3J9IGZyb20gJy4vaGlnaC1jb250cmFzdC1tb2RlL2hpZ2gtY29udHJhc3QtbW9kZS1kZXRlY3Rvcic7XG5pbXBvcnQge0Nka0FyaWFMaXZlfSBmcm9tICcuL2xpdmUtYW5ub3VuY2VyL2xpdmUtYW5ub3VuY2VyJztcblxuXG5ATmdNb2R1bGUoe1xuICBpbXBvcnRzOiBbUGxhdGZvcm1Nb2R1bGUsIE9ic2VydmVyc01vZHVsZV0sXG4gIGRlY2xhcmF0aW9uczogW0Nka0FyaWFMaXZlLCBDZGtUcmFwRm9jdXMsIENka01vbml0b3JGb2N1c10sXG4gIGV4cG9ydHM6IFtDZGtBcmlhTGl2ZSwgQ2RrVHJhcEZvY3VzLCBDZGtNb25pdG9yRm9jdXNdLFxufSlcbmV4cG9ydCBjbGFzcyBBMTF5TW9kdWxlIHtcbiAgY29uc3RydWN0b3IoaGlnaENvbnRyYXN0TW9kZURldGVjdG9yOiBIaWdoQ29udHJhc3RNb2RlRGV0ZWN0b3IpIHtcbiAgICBoaWdoQ29udHJhc3RNb2RlRGV0ZWN0b3IuX2FwcGx5Qm9keUhpZ2hDb250cmFzdE1vZGVDc3NDbGFzc2VzKCk7XG4gIH1cbn1cbiJdfQ==