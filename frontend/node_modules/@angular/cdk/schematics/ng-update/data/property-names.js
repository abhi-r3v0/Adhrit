"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.propertyNames = void 0;
const target_version_1 = require("../../update-tool/target-version");
exports.propertyNames = {
    [target_version_1.TargetVersion.V9]: [
        {
            pr: 'https://github.com/angular/components/pull/17084',
            changes: [{
                    replace: 'boundaryElementSelector',
                    replaceWith: 'boundaryElement',
                    whitelist: { classes: ['CdkDrag'] }
                }]
        },
        {
            pr: 'https://github.com/angular/components/pull/17302',
            changes: [{
                    replace: 'onChange',
                    replaceWith: 'changed',
                    whitelist: { classes: ['SelectionModel'] }
                }]
        }
    ],
    [target_version_1.TargetVersion.V8]: [],
    [target_version_1.TargetVersion.V7]: [
        {
            pr: 'https://github.com/angular/components/pull/8286',
            changes: [{ replace: 'onChange', replaceWith: 'changed', whitelist: { classes: ['SelectionModel'] } }]
        },
        {
            pr: 'https://github.com/angular/components/pull/12927',
            changes: [{
                    replace: 'flexibleDiemsions',
                    replaceWith: 'flexibleDimensions',
                    whitelist: { classes: ['CdkConnectedOverlay'] }
                }]
        }
    ],
    [target_version_1.TargetVersion.V6]: [
        {
            pr: 'https://github.com/angular/components/pull/10161',
            changes: [
                {
                    replace: '_deprecatedOrigin',
                    replaceWith: 'origin',
                    whitelist: { classes: ['CdkConnectedOverlay', 'ConnectedOverlayDirective'] }
                },
                {
                    replace: '_deprecatedPositions',
                    replaceWith: 'positions',
                    whitelist: { classes: ['CdkConnectedOverlay', 'ConnectedOverlayDirective'] }
                },
                {
                    replace: '_deprecatedOffsetX',
                    replaceWith: 'offsetX',
                    whitelist: { classes: ['CdkConnectedOverlay', 'ConnectedOverlayDirective'] }
                },
                {
                    replace: '_deprecatedOffsetY',
                    replaceWith: 'offsetY',
                    whitelist: { classes: ['CdkConnectedOverlay', 'ConnectedOverlayDirective'] }
                },
                {
                    replace: '_deprecatedWidth',
                    replaceWith: 'width',
                    whitelist: { classes: ['CdkConnectedOverlay', 'ConnectedOverlayDirective'] }
                },
                {
                    replace: '_deprecatedHeight',
                    replaceWith: 'height',
                    whitelist: { classes: ['CdkConnectedOverlay', 'ConnectedOverlayDirective'] }
                },
                {
                    replace: '_deprecatedMinWidth',
                    replaceWith: 'minWidth',
                    whitelist: { classes: ['CdkConnectedOverlay', 'ConnectedOverlayDirective'] }
                },
                {
                    replace: '_deprecatedMinHeight',
                    replaceWith: 'minHeight',
                    whitelist: { classes: ['CdkConnectedOverlay', 'ConnectedOverlayDirective'] }
                },
                {
                    replace: '_deprecatedBackdropClass',
                    replaceWith: 'backdropClass',
                    whitelist: { classes: ['CdkConnectedOverlay', 'ConnectedOverlayDirective'] }
                },
                {
                    replace: '_deprecatedScrollStrategy',
                    replaceWith: 'scrollStrategy',
                    whitelist: { classes: ['CdkConnectedOverlay', 'ConnectedOverlayDirective'] }
                },
                {
                    replace: '_deprecatedOpen',
                    replaceWith: 'open',
                    whitelist: { classes: ['CdkConnectedOverlay', 'ConnectedOverlayDirective'] }
                },
                {
                    replace: '_deprecatedHasBackdrop',
                    replaceWith: 'hasBackdrop',
                    whitelist: { classes: ['CdkConnectedOverlay', 'ConnectedOverlayDirective'] }
                }
            ]
        },
        {
            pr: 'https://github.com/angular/components/pull/10257',
            changes: [
                {
                    replace: '_deprecatedPortal',
                    replaceWith: 'portal',
                    whitelist: { classes: ['CdkPortalOutlet'] }
                },
                {
                    replace: '_deprecatedPortalHost',
                    replaceWith: 'portal',
                    whitelist: { classes: ['CdkPortalOutlet'] }
                }
            ]
        },
    ]
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicHJvcGVydHktbmFtZXMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL3NjaGVtYXRpY3MvbmctdXBkYXRlL2RhdGEvcHJvcGVydHktbmFtZXMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBOzs7Ozs7R0FNRzs7O0FBRUgscUVBQStEO0FBZWxELFFBQUEsYUFBYSxHQUE0QztJQUNwRSxDQUFDLDhCQUFhLENBQUMsRUFBRSxDQUFDLEVBQUU7UUFDbEI7WUFDRSxFQUFFLEVBQUUsa0RBQWtEO1lBQ3RELE9BQU8sRUFBRSxDQUFDO29CQUNSLE9BQU8sRUFBRSx5QkFBeUI7b0JBQ2xDLFdBQVcsRUFBRSxpQkFBaUI7b0JBQzlCLFNBQVMsRUFBRSxFQUFDLE9BQU8sRUFBRSxDQUFDLFNBQVMsQ0FBQyxFQUFDO2lCQUNsQyxDQUFDO1NBQ0g7UUFDRDtZQUNFLEVBQUUsRUFBRSxrREFBa0Q7WUFDdEQsT0FBTyxFQUFFLENBQUM7b0JBQ1IsT0FBTyxFQUFFLFVBQVU7b0JBQ25CLFdBQVcsRUFBRSxTQUFTO29CQUN0QixTQUFTLEVBQUUsRUFBQyxPQUFPLEVBQUUsQ0FBQyxnQkFBZ0IsQ0FBQyxFQUFDO2lCQUN6QyxDQUFDO1NBQ0g7S0FDRjtJQUNELENBQUMsOEJBQWEsQ0FBQyxFQUFFLENBQUMsRUFBRSxFQUFFO0lBQ3RCLENBQUMsOEJBQWEsQ0FBQyxFQUFFLENBQUMsRUFBRTtRQUNsQjtZQUNFLEVBQUUsRUFBRSxpREFBaUQ7WUFDckQsT0FBTyxFQUNILENBQUMsRUFBQyxPQUFPLEVBQUUsVUFBVSxFQUFFLFdBQVcsRUFBRSxTQUFTLEVBQUUsU0FBUyxFQUFFLEVBQUMsT0FBTyxFQUFFLENBQUMsZ0JBQWdCLENBQUMsRUFBQyxFQUFDLENBQUM7U0FDOUY7UUFFRDtZQUNFLEVBQUUsRUFBRSxrREFBa0Q7WUFDdEQsT0FBTyxFQUFFLENBQUM7b0JBQ1IsT0FBTyxFQUFFLG1CQUFtQjtvQkFD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RSxDQUFDLGlCQUFpQixDQUFDLEVBQUM7aUJBQzFDO2dCQUNEO29CQUNFLE9BQU8sRUFBRSx1QkFBdUI7b0JBQ2hDLFdBQVcsRUFBRSxRQUFRO29CQUNyQixTQUFTLEVBQUUsRUFBQyxPQUFPLEVBQUUsQ0FBQyxpQkFBaUIsQ0FBQyxFQUFDO2lCQUMxQzthQUNGO1NBQ0Y7S0FDRjtDQUNGLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtUYXJnZXRWZXJzaW9ufSBmcm9tICcuLi8uLi91cGRhdGUtdG9vbC90YXJnZXQtdmVyc2lvbic7XG5pbXBvcnQge1ZlcnNpb25DaGFuZ2VzfSBmcm9tICcuLi8uLi91cGRhdGUtdG9vbC92ZXJzaW9uLWNoYW5nZXMnO1xuXG5leHBvcnQgaW50ZXJmYWNlIFByb3BlcnR5TmFtZVVwZ3JhZGVEYXRhIHtcbiAgLyoqIFRoZSBwcm9wZXJ0eSBuYW1lIHRvIHJlcGxhY2UuICovXG4gIHJlcGxhY2U6IHN0cmluZztcbiAgLyoqIFRoZSBuZXcgbmFtZSBmb3IgdGhlIHByb3BlcnR5LiAqL1xuICByZXBsYWNlV2l0aDogc3RyaW5nO1xuICAvKiogV2hpdGVsaXN0IHdoZXJlIHRoaXMgcmVwbGFjZW1lbnQgaXMgbWFkZS4gSWYgb21pdHRlZCBpdCBpcyBtYWRlIGZvciBhbGwgQ2xhc3Nlcy4gKi9cbiAgd2hpdGVsaXN0OiB7XG4gICAgLyoqIFJlcGxhY2UgdGhlIHByb3BlcnR5IG9ubHkgd2hlbiBpdHMgdHlwZSBpcyBvbmUgb2YgdGhlIGdpdmVuIENsYXNzZXMuICovXG4gICAgY2xhc3Nlczogc3RyaW5nW107XG4gIH07XG59XG5cbmV4cG9ydCBjb25zdCBwcm9wZXJ0eU5hbWVzOiBWZXJzaW9uQ2hhbmdlczxQcm9wZXJ0eU5hbWVVcGdyYWRlRGF0YT4gPSB7XG4gIFtUYXJnZXRWZXJzaW9uLlY5XTogW1xuICAgIHtcbiAgICAgIHByOiAnaHR0cHM6Ly9naXRodWIuY29tL2FuZ3VsYXIvY29tcG9uZW50cy9wdWxsLzE3MDg0JyxcbiAgICAgIGNoYW5nZXM6IFt7XG4gICAgICAgIHJlcGxhY2U6ICdib3VuZGFyeUVsZW1lbnRTZWxlY3RvcicsXG4gICAgICAgIHJlcGxhY2VXaXRoOiAnYm91bmRhcnlFbGVtZW50JyxcbiAgICAgICAgd2hpdGVsaXN0OiB7Y2xhc3NlczogWydDZGtEcmFnJ119XG4gICAgICB9XVxuICAgIH0sXG4gICAge1xuICAgICAgcHI6ICdodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9jb21wb25lbnRzL3B1bGwvMTczMDInLFxuICAgICAgY2hhbmdlczogW3tcbiAgICAgICAgcmVwbGFjZTogJ29uQ2hhbmdlJyxcbiAgICAgICAgcmVwbGFjZVdpdGg6ICdjaGFuZ2VkJyxcbiAgICAgICAgd2hpdGVsaXN0OiB7Y2xhc3NlczogWydTZWxlY3Rpb25Nb2RlbCddfVxuICAgICAgfV1cbiAgICB9XG4gIF0sXG4gIFtUYXJnZXRWZXJzaW9uLlY4XTogW10sXG4gIFtUYXJnZXRWZXJzaW9uLlY3XTogW1xuICAgIHtcbiAgICAgIHByOiAnaHR0cHM6Ly9naXRodWIuY29tL2FuZ3VsYXIvY29tcG9uZW50cy9wdWxsLzgyODYnLFxuICAgICAgY2hhbmdlczpcbiAgICAgICAgICBbe3JlcGxhY2U6ICdvbkNoYW5nZScsIHJlcGxhY2VXaXRoOiAnY2hhbmdlZCcsIHdoaXRlbGlzdDoge2NsYXNzZXM6IFsnU2VsZWN0aW9uTW9kZWwnXX19XVxuICAgIH0sXG5cbiAgICB7XG4gICAgICBwcjogJ2h0dHBzOi8vZ2l0aHViLmNvbS9hbmd1bGFyL2NvbXBvbmVudHMvcHVsbC8xMjkyNycsXG4gICAgICBjaGFuZ2VzOiBbe1xuICAgICAgICByZXBsYWNlOiAnZmxleGlibGVEaWVtc2lvbnMnLFxuICAgICAgICByZXBsYWNlV2l0aDogJ2ZsZXhpYmxlRGltZW5zaW9ucycsXG4gICAgICAgIHdoaXRlbGlzdDoge2NsYXNzZXM6IFsnQ2RrQ29ubmVjdGVkT3ZlcmxheSddfVxuICAgICAgfV1cbiAgICB9XG4gIF0sXG5cbiAgW1RhcmdldFZlcnNpb24uVjZdOiBbXG4gICAge1xuICAgICAgcHI6ICdodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9jb21wb25lbnRzL3B1bGwvMTAxNjEnLFxuICAgICAgY2hhbmdlczogW1xuICAgICAgICB7XG4gICAgICAgICAgcmVwbGFjZTogJ19kZXByZWNhdGVkT3JpZ2luJyxcbiAgICAgICAgICByZXBsYWNlV2l0aDogJ29yaWdpbicsXG4gICAgICAgICAgd2hpdGVsaXN0OiB7Y2xhc3NlczogWydDZGtDb25uZWN0ZWRPdmVybGF5JywgJ0Nvbm5lY3RlZE92ZXJsYXlEaXJlY3RpdmUnXX1cbiAgICAgICAgfSxcbiAgICAgICAge1xuICAgICAgICAgIHJlcGxhY2U6ICdfZGVwcmVjYXRlZFBvc2l0aW9ucycsXG4gICAgICAgICAgcmVwbGFjZVdpdGg6ICdwb3NpdGlvbnMnLFxuICAgICAgICAgIHdoaXRlbGlzdDoge2NsYXNzZXM6IFsnQ2RrQ29ubmVjdGVkT3ZlcmxheScsICdDb25uZWN0ZWRPdmVybGF5RGlyZWN0aXZlJ119XG4gICAgICAgIH0sXG4gICAgICAgIHtcbiAgICAgICAgICByZXBsYWNlOiAnX2RlcHJlY2F0ZWRPZmZzZXRYJyxcbiAgICAgICAgICByZXBsYWNlV2l0aDogJ29mZnNldFgnLFxuICAgICAgICAgIHdoaXRlbGlzdDoge2NsYXNzZXM6IFsnQ2RrQ29ubmVjdGVkT3ZlcmxheScsICdDb25uZWN0ZWRPdmVybGF5RGlyZWN0aXZlJ119XG4gICAgICAgIH0sXG4gICAgICAgIHtcbiAgICAgICAgICByZXBsYWNlOiAnX2RlcHJlY2F0ZWRPZmZzZXRZJyxcbiAgICAgICAgICByZXBsYWNlV2l0aDogJ29mZnNldFknLFxuICAgICAgICAgIHdoaXRlbGlzdDoge2NsYXNzZXM6IFsnQ2RrQ29ubmVjdGVkT3ZlcmxheScsICdDb25uZWN0ZWRPdmVybGF5RGlyZWN0aXZlJ119XG4gICAgICAgIH0sXG4gICAgICAgIHtcbiAgICAgICAgICByZXBsYWNlOiAnX2RlcHJlY2F0ZWRXaWR0aCcsXG4gICAgICAgICAgcmVwbGFjZVdpdGg6ICd3aWR0aCcsXG4gICAgICAgICAgd2hpdGVsaXN0OiB7Y2xhc3NlczogWydDZGtDb25uZWN0ZWRPdmVybGF5JywgJ0Nvbm5lY3RlZE92ZXJsYXlEaXJlY3RpdmUnXX1cbiAgICAgICAgfSxcbiAgICAgICAge1xuICAgICAgICAgIHJlcGxhY2U6ICdfZGVwcmVjYXRlZEhlaWdodCcsXG4gICAgICAgICAgcmVwbGFjZVdpdGg6ICdoZWlnaHQnLFxuICAgICAgICAgIHdoaXRlbGlzdDoge2NsYXNzZXM6IFsnQ2RrQ29ubmVjdGVkT3ZlcmxheScsICdDb25uZWN0ZWRPdmVybGF5RGlyZWN0aXZlJ119XG4gICAgICAgIH0sXG4gICAgICAgIHtcbiAgICAgICAgICByZXBsYWNlOiAnX2RlcHJlY2F0ZWRNaW5XaWR0aCcsXG4gICAgICAgICAgcmVwbGFjZVdpdGg6ICdtaW5XaWR0aCcsXG4gICAgICAgICAgd2hpdGVsaXN0OiB7Y2xhc3NlczogWydDZGtDb25uZWN0ZWRPdmVybGF5JywgJ0Nvbm5lY3RlZE92ZXJsYXlEaXJlY3RpdmUnXX1cbiAgICAgICAgfSxcbiAgICAgICAge1xuICAgICAgICAgIHJlcGxhY2U6ICdfZGVwcmVjYXRlZE1pbkhlaWdodCcsXG4gICAgICAgICAgcmVwbGFjZVdpdGg6ICdtaW5IZWlnaHQnLFxuICAgICAgICAgIHdoaXRlbGlzdDoge2NsYXNzZXM6IFsnQ2RrQ29ubmVjdGVkT3ZlcmxheScsICdDb25uZWN0ZWRPdmVybGF5RGlyZWN0aXZlJ119XG4gICAgICAgIH0sXG4gICAgICAgIHtcbiAgICAgICAgICByZXBsYWNlOiAnX2RlcHJlY2F0ZWRCYWNrZHJvcENsYXNzJyxcbiAgICAgICAgICByZXBsYWNlV2l0aDogJ2JhY2tkcm9wQ2xhc3MnLFxuICAgICAgICAgIHdoaXRlbGlzdDoge2NsYXNzZXM6IFsnQ2RrQ29ubmVjdGVkT3ZlcmxheScsICdDb25uZWN0ZWRPdmVybGF5RGlyZWN0aXZlJ119XG4gICAgICAgIH0sXG4gICAgICAgIHtcbiAgICAgICAgICByZXBsYWNlOiAnX2RlcHJlY2F0ZWRTY3JvbGxTdHJhdGVneScsXG4gICAgICAgICAgcmVwbGFjZVdpdGg6ICdzY3JvbGxTdHJhdGVneScsXG4gICAgICAgICAgd2hpdGVsaXN0OiB7Y2xhc3NlczogWydDZGtDb25uZWN0ZWRPdmVybGF5JywgJ0Nvbm5lY3RlZE92ZXJsYXlEaXJlY3RpdmUnXX1cbiAgICAgICAgfSxcbiAgICAgICAge1xuICAgICAgICAgIHJlcGxhY2U6ICdfZGVwcmVjYXRlZE9wZW4nLFxuICAgICAgICAgIHJlcGxhY2VXaXRoOiAnb3BlbicsXG4gICAgICAgICAgd2hpdGVsaXN0OiB7Y2xhc3NlczogWydDZGtDb25uZWN0ZWRPdmVybGF5JywgJ0Nvbm5lY3RlZE92ZXJsYXlEaXJlY3RpdmUnXX1cbiAgICAgICAgfSxcbiAgICAgICAge1xuICAgICAgICAgIHJlcGxhY2U6ICdfZGVwcmVjYXRlZEhhc0JhY2tkcm9wJyxcbiAgICAgICAgICByZXBsYWNlV2l0aDogJ2hhc0JhY2tkcm9wJyxcbiAgICAgICAgICB3aGl0ZWxpc3Q6IHtjbGFzc2VzOiBbJ0Nka0Nvbm5lY3RlZE92ZXJsYXknLCAnQ29ubmVjdGVkT3ZlcmxheURpcmVjdGl2ZSddfVxuICAgICAgICB9XG4gICAgICBdXG4gICAgfSxcblxuICAgIHtcbiAgICAgIHByOiAnaHR0cHM6Ly9naXRodWIuY29tL2FuZ3VsYXIvY29tcG9uZW50cy9wdWxsLzEwMjU3JyxcbiAgICAgIGNoYW5nZXM6IFtcbiAgICAgICAge1xuICAgICAgICAgIHJlcGxhY2U6ICdfZGVwcmVjYXRlZFBvcnRhbCcsXG4gICAgICAgICAgcmVwbGFjZVdpdGg6ICdwb3J0YWwnLFxuICAgICAgICAgIHdoaXRlbGlzdDoge2NsYXNzZXM6IFsnQ2RrUG9ydGFsT3V0bGV0J119XG4gICAgICAgIH0sXG4gICAgICAgIHtcbiAgICAgICAgICByZXBsYWNlOiAnX2RlcHJlY2F0ZWRQb3J0YWxIb3N0JyxcbiAgICAgICAgICByZXBsYWNlV2l0aDogJ3BvcnRhbCcsXG4gICAgICAgICAgd2hpdGVsaXN0OiB7Y2xhc3NlczogWydDZGtQb3J0YWxPdXRsZXQnXX1cbiAgICAgICAgfVxuICAgICAgXVxuICAgIH0sXG4gIF1cbn07XG4iXX0=