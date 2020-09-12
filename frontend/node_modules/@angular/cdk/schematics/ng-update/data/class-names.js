"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.classNames = void 0;
const target_version_1 = require("../../update-tool/target-version");
exports.classNames = {
    [target_version_1.TargetVersion.V9]: [{
            pr: 'https://github.com/angular/components/pull/17084',
            changes: [
                { replace: 'CDK_DROP_LIST_CONTAINER', replaceWith: 'CDK_DROP_LIST' },
                { replace: 'CdkDragConfig', replaceWith: 'DragRefConfig' }
            ]
        }],
    [target_version_1.TargetVersion.V8]: [],
    [target_version_1.TargetVersion.V7]: [],
    [target_version_1.TargetVersion.V6]: [
        {
            pr: 'https://github.com/angular/components/pull/10161',
            changes: [
                { replace: 'ConnectedOverlayDirective', replaceWith: 'CdkConnectedOverlay' },
                { replace: 'OverlayOrigin', replaceWith: 'CdkOverlayOrigin' }
            ]
        },
        {
            pr: 'https://github.com/angular/components/pull/10267',
            changes: [{ replace: 'ObserveContent', replaceWith: 'CdkObserveContent' }]
        },
        {
            pr: 'https://github.com/angular/components/pull/10325',
            changes: [{ replace: 'FocusTrapDirective', replaceWith: 'CdkTrapFocus' }]
        }
    ]
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY2xhc3MtbmFtZXMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL3NjaGVtYXRpY3MvbmctdXBkYXRlL2RhdGEvY2xhc3MtbmFtZXMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBOzs7Ozs7R0FNRzs7O0FBRUgscUVBQStEO0FBVWxELFFBQUEsVUFBVSxHQUF5QztJQUM5RCxDQUFDLDhCQUFhLENBQUMsRUFBRSxDQUFDLEVBQUUsQ0FBQztZQUNuQixFQUFFLEVBQUUsa0RBQWtEO1lBQ3RELE9BQU8sRUFBRTtnQkFDUCxFQUFDLE9BQU8sRUFBRSx5QkFBeUIsRUFBRSxXQUFXLEVBQUUsZUFBZSxFQUFDO2dCQUNsRSxFQUFDLE9BQU8sRUFBRSxlQUFlLEVBQUUsV0FBVyxFQUFFLGVBQWUsRUFBQzthQUN6RDtTQUNGLENBQUM7SUFDRixDQUFDLDhCQUFhLENBQUMsRUFBRSxDQUFDLEVBQUUsRUFBRTtJQUN0QixDQUFDLDhCQUFhLENBQUMsRUFBRSxDQUFDLEVBQUUsRUFBRTtJQUN0QixDQUFDLDhCQUFhLENBQUMsRUFBRSxDQUFDLEVBQUU7UUFDbEI7WUFDRSxFQUFFLEVBQUUsa0RBQWtEO1lBQ3RELE9BQU8sRUFBRTtnQkFDUCxFQUFDLE9BQU8sRUFBRSwyQkFBMkIsRUFBRSxXQUFXLEVBQUUscUJBQXFCLEVBQUM7Z0JBQzFFLEVBQUMsT0FBTyxFQUFFLGVBQWUsRUFBRSxXQUFXLEVBQUUsa0JBQWtCLEVBQUM7YUFDNUQ7U0FDRjtRQUVEO1lBQ0UsRUFBRSxFQUFFLGtEQUFrRDtZQUN0RCxPQUFPLEVBQUUsQ0FBQyxFQUFDLE9BQU8sRUFBRSxnQkFBZ0IsRUFBRSxXQUFXLEVBQUUsbUJBQW1CLEVBQUMsQ0FBQztTQUN6RTtRQUVEO1lBQ0UsRUFBRSxFQUFFLGtEQUFrRDtZQUN0RCxPQUFPLEVBQUUsQ0FBQyxFQUFDLE9BQU8sRUFBRSxvQkFBb0IsRUFBRSxXQUFXLEVBQUUsY0FBYyxFQUFDLENBQUM7U0FDeEU7S0FDRjtDQUNGLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtUYXJnZXRWZXJzaW9ufSBmcm9tICcuLi8uLi91cGRhdGUtdG9vbC90YXJnZXQtdmVyc2lvbic7XG5pbXBvcnQge1ZlcnNpb25DaGFuZ2VzfSBmcm9tICcuLi8uLi91cGRhdGUtdG9vbC92ZXJzaW9uLWNoYW5nZXMnO1xuXG5leHBvcnQgaW50ZXJmYWNlIENsYXNzTmFtZVVwZ3JhZGVEYXRhIHtcbiAgLyoqIFRoZSBDbGFzcyBuYW1lIHRvIHJlcGxhY2UuICovXG4gIHJlcGxhY2U6IHN0cmluZztcbiAgLyoqIFRoZSBuZXcgbmFtZSBmb3IgdGhlIENsYXNzLiAqL1xuICByZXBsYWNlV2l0aDogc3RyaW5nO1xufVxuXG5leHBvcnQgY29uc3QgY2xhc3NOYW1lczogVmVyc2lvbkNoYW5nZXM8Q2xhc3NOYW1lVXBncmFkZURhdGE+ID0ge1xuICBbVGFyZ2V0VmVyc2lvbi5WOV06IFt7XG4gICAgcHI6ICdodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9jb21wb25lbnRzL3B1bGwvMTcwODQnLFxuICAgIGNoYW5nZXM6IFtcbiAgICAgIHtyZXBsYWNlOiAnQ0RLX0RST1BfTElTVF9DT05UQUlORVInLCByZXBsYWNlV2l0aDogJ0NES19EUk9QX0xJU1QnfSxcbiAgICAgIHtyZXBsYWNlOiAnQ2RrRHJhZ0NvbmZpZycsIHJlcGxhY2VXaXRoOiAnRHJhZ1JlZkNvbmZpZyd9XG4gICAgXVxuICB9XSxcbiAgW1RhcmdldFZlcnNpb24uVjhdOiBbXSxcbiAgW1RhcmdldFZlcnNpb24uVjddOiBbXSxcbiAgW1RhcmdldFZlcnNpb24uVjZdOiBbXG4gICAge1xuICAgICAgcHI6ICdodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9jb21wb25lbnRzL3B1bGwvMTAxNjEnLFxuICAgICAgY2hhbmdlczogW1xuICAgICAgICB7cmVwbGFjZTogJ0Nvbm5lY3RlZE92ZXJsYXlEaXJlY3RpdmUnLCByZXBsYWNlV2l0aDogJ0Nka0Nvbm5lY3RlZE92ZXJsYXknfSxcbiAgICAgICAge3JlcGxhY2U6ICdPdmVybGF5T3JpZ2luJywgcmVwbGFjZVdpdGg6ICdDZGtPdmVybGF5T3JpZ2luJ31cbiAgICAgIF1cbiAgICB9LFxuXG4gICAge1xuICAgICAgcHI6ICdodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9jb21wb25lbnRzL3B1bGwvMTAyNjcnLFxuICAgICAgY2hhbmdlczogW3tyZXBsYWNlOiAnT2JzZXJ2ZUNvbnRlbnQnLCByZXBsYWNlV2l0aDogJ0Nka09ic2VydmVDb250ZW50J31dXG4gICAgfSxcblxuICAgIHtcbiAgICAgIHByOiAnaHR0cHM6Ly9naXRodWIuY29tL2FuZ3VsYXIvY29tcG9uZW50cy9wdWxsLzEwMzI1JyxcbiAgICAgIGNoYW5nZXM6IFt7cmVwbGFjZTogJ0ZvY3VzVHJhcERpcmVjdGl2ZScsIHJlcGxhY2VXaXRoOiAnQ2RrVHJhcEZvY3VzJ31dXG4gICAgfVxuICBdXG59O1xuIl19