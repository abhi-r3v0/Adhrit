"use strict";
/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.inputNames = void 0;
const target_version_1 = require("../../update-tool/target-version");
exports.inputNames = {
    [target_version_1.TargetVersion.V6]: [
        {
            pr: 'https://github.com/angular/components/pull/10161',
            changes: [
                {
                    replace: 'origin',
                    replaceWith: 'cdkConnectedOverlayOrigin',
                    whitelist: { attributes: ['cdk-connected-overlay', 'connected-overlay', 'cdkConnectedOverlay'] }
                },
                {
                    replace: 'positions',
                    replaceWith: 'cdkConnectedOverlayPositions',
                    whitelist: { attributes: ['cdk-connected-overlay', 'connected-overlay', 'cdkConnectedOverlay'] }
                },
                {
                    replace: 'offsetX',
                    replaceWith: 'cdkConnectedOverlayOffsetX',
                    whitelist: { attributes: ['cdk-connected-overlay', 'connected-overlay', 'cdkConnectedOverlay'] }
                },
                {
                    replace: 'offsetY',
                    replaceWith: 'cdkConnectedOverlayOffsetY',
                    whitelist: { attributes: ['cdk-connected-overlay', 'connected-overlay', 'cdkConnectedOverlay'] }
                },
                {
                    replace: 'width',
                    replaceWith: 'cdkConnectedOverlayWidth',
                    whitelist: { attributes: ['cdk-connected-overlay', 'connected-overlay', 'cdkConnectedOverlay'] }
                },
                {
                    replace: 'height',
                    replaceWith: 'cdkConnectedOverlayHeight',
                    whitelist: { attributes: ['cdk-connected-overlay', 'connected-overlay', 'cdkConnectedOverlay'] }
                },
                {
                    replace: 'minWidth',
                    replaceWith: 'cdkConnectedOverlayMinWidth',
                    whitelist: { attributes: ['cdk-connected-overlay', 'connected-overlay', 'cdkConnectedOverlay'] }
                },
                {
                    replace: 'minHeight',
                    replaceWith: 'cdkConnectedOverlayMinHeight',
                    whitelist: { attributes: ['cdk-connected-overlay', 'connected-overlay', 'cdkConnectedOverlay'] }
                },
                {
                    replace: 'backdropClass',
                    replaceWith: 'cdkConnectedOverlayBackdropClass',
                    whitelist: { attributes: ['cdk-connected-overlay', 'connected-overlay', 'cdkConnectedOverlay'] }
                },
                {
                    replace: 'scrollStrategy',
                    replaceWith: 'cdkConnectedOverlayScrollStrategy',
                    whitelist: { attributes: ['cdk-connected-overlay', 'connected-overlay', 'cdkConnectedOverlay'] }
                },
                {
                    replace: 'open',
                    replaceWith: 'cdkConnectedOverlayOpen',
                    whitelist: { attributes: ['cdk-connected-overlay', 'connected-overlay', 'cdkConnectedOverlay'] }
                },
                {
                    replace: 'hasBackdrop',
                    replaceWith: 'cdkConnectedOverlayHasBackdrop',
                    whitelist: { attributes: ['cdk-connected-overlay', 'connected-overlay', 'cdkConnectedOverlay'] }
                }
            ]
        },
    ]
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5wdXQtbmFtZXMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL3NjaGVtYXRpY3MvbmctdXBkYXRlL2RhdGEvaW5wdXQtbmFtZXMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBOzs7Ozs7R0FNRzs7O0FBRUgscUVBQStEO0FBaUJsRCxRQUFBLFVBQVUsR0FBeUM7SUFDOUQsQ0FBQyw4QkFBYSxDQUFDLEVBQUUsQ0FBQyxFQUFFO1FBQ2xCO1lBQ0UsRUFBRSxFQUFFLGtEQUFrRDtZQUN0RCxPQUFPLEVBQUU7Z0JBQ1A7b0JBQ0UsT0FBTyxFQUFFLFFBQVE7b0JBQ2pCLFdBQVcsRUFBRSwyQkFBMkI7b0JBQ3hDLFNBQVMsRUFDTCxFQUFDLFVBQVUsRUFBRSxDQUFDLHVCQUF1QixFQUFFLG1CQUFtQixFQUFFLHFCQUFxQixDQUFDLEVBQUM7aUJBQ3hGO2dCQUNEO29CQUNFLE9BQU8sRUFBRSxXQUFXO29CQUNwQixXQUFXLEVBQUUsOEJBQThCO29CQUMzQyxTQUFTLEVBQ0wsRUFBQyxVQUFVLEVBQUUsQ0FBQyx1QkFBdUIsRUFBRSxtQkFBbUIsRUFBRSxxQkFBcUIsQ0FBQyxFQUFDO2lCQUN4RjtnQkFDRDtvQkFDRSxPQUFPLEVBQUUsU0FBUztvQkFDbEIsV0FBVyxFQUFFLDRCQUE0QjtvQkFDekMsU0FBUyxFQUNMLEVBQUMsVUFBVSxFQUFFLENBQUMsdUJBQXVCLEVBQUUsbUJBQW1CLEVBQUUscUJBQXFCLENBQUMsRUFBQztpQkFDeEY7Z0JBQ0Q7b0JBQ0UsT0FBTyxFQUFFLFNBQVM7b0JBQ2xCLFdBQVcsRUFBRSw0QkFBNEI7b0JBQ3pDLFNBQVMsRUFDTCxFQUFDLFVBQVUsRUFBRSxDQUFDLHVCQUF1QixFQUFFLG1CQUFtQixFQUFFLHFCQUFxQixDQUFDLEVBQUM7aUJBQ3hGO2dCQUNEO29CQUNFLE9BQU8sRUFBRSxPQUFPO29CQUNoQixXQUFXLEVBQUUsMEJBQTBCO29CQUN2QyxTQUFTLEVBQ0wsRUFBQyxVQUFVLEVBQUUsQ0FBQyx1QkFBdUIsRUFBRSxtQkFBbUIsRUFBRSxxQkFBcUIsQ0FBQyxFQUFDO2lCQUN4RjtnQkFDRDtvQkFDRSxPQUFPLEVBQUUsUUFBUTtvQkFDakIsV0FBVyxFQUFFLDJCQUEyQjtvQkFDeEMsU0FBUyxFQUNMLEVBQUMsVUFBVSxFQUFFLENBQUMsdUJBQXVCLEVBQUUsbUJBQW1CLEVBQUUscUJBQXFCLENBQUMsRUFBQztpQkFDeEY7Z0JBQ0Q7b0JBQ0UsT0FBTyxFQUFFLFVBQVU7b0JBQ25CLFdBQVcsRUFBRSw2QkFBNkI7b0JBQzFDLFNBQVMsRUFDTCxFQUFDLFVBQVUsRUFBRSxDQUFDLHVCQUF1QixFQUFFLG1CQUFtQixFQUFFLHFCQUFxQixDQUFDLEVBQUM7aUJBQ3hGO2dCQUNEO29CQUNFLE9BQU8sRUFBRSxXQUFXO29CQUNwQixXQUFXLEVBQUUsOEJBQThCO29CQUMzQyxTQUFTLEVBQ0wsRUFBQyxVQUFVLEVBQUUsQ0FBQyx1QkFBdUIsRUFBRSxtQkFBbUIsRUFBRSxxQkFBcUIsQ0FBQyxFQUFDO2lCQUN4RjtnQkFDRDtvQkFDRSxPQUFPLEVBQUUsZUFBZTtvQkFDeEIsV0FBVyxFQUFFLGtDQUFrQztvQkFDL0MsU0FBUyxFQUNMLEVBQUMsVUFBVSxFQUFFLENBQUMsdUJBQXVCLEVBQUUsbUJBQW1CLEVBQUUscUJBQXFCLENBQUMsRUFBQztpQkFDeEY7Z0JBQ0Q7b0JBQ0UsT0FBTyxFQUFFLGdCQUFnQjtvQkFDekIsV0FBVyxFQUFFLG1DQUFtQztvQkFDaEQsU0FBUyxFQUNMLEVBQUMsVUFBVSxFQUFFLENBQUMsdUJBQXVCLEVBQUUsbUJBQW1CLEVBQUUscUJBQXFCLENBQUMsRUFBQztpQkFDeEY7Z0JBQ0Q7b0JBQ0UsT0FBTyxFQUFFLE1BQU07b0JBQ2YsV0FBVyxFQUFFLHlCQUF5QjtvQkFDdEMsU0FBUyxFQUNMLEVBQUMsVUFBVSxFQUFFLENBQUMsdUJBQXVCLEVBQUUsbUJBQW1CLEVBQUUscUJBQXFCLENBQUMsRUFBQztpQkFDeEY7Z0JBQ0Q7b0JBQ0UsT0FBTyxFQUFFLGFBQWE7b0JBQ3RCLFdBQVcsRUFBRSxnQ0FBZ0M7b0JBQzdDLFNBQVMsRUFDTCxFQUFDLFVBQVUsRUFBRSxDQUFDLHVCQUF1QixFQUFFLG1CQUFtQixFQUFFLHFCQUFxQixDQUFDLEVBQUM7aUJBQ3hGO2FBQ0Y7U0FDRjtLQUNGO0NBQ0YsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1RhcmdldFZlcnNpb259IGZyb20gJy4uLy4uL3VwZGF0ZS10b29sL3RhcmdldC12ZXJzaW9uJztcbmltcG9ydCB7VmVyc2lvbkNoYW5nZXN9IGZyb20gJy4uLy4uL3VwZGF0ZS10b29sL3ZlcnNpb24tY2hhbmdlcyc7XG5cbmV4cG9ydCBpbnRlcmZhY2UgSW5wdXROYW1lVXBncmFkZURhdGEge1xuICAvKiogVGhlIEBJbnB1dCgpIG5hbWUgdG8gcmVwbGFjZS4gKi9cbiAgcmVwbGFjZTogc3RyaW5nO1xuICAvKiogVGhlIG5ldyBuYW1lIGZvciB0aGUgQElucHV0KCkuICovXG4gIHJlcGxhY2VXaXRoOiBzdHJpbmc7XG4gIC8qKiBXaGl0ZWxpc3Qgd2hlcmUgdGhpcyByZXBsYWNlbWVudCBpcyBtYWRlLiBJZiBvbWl0dGVkIGl0IGlzIG1hZGUgaW4gYWxsIEhUTUwgJiBDU1MgKi9cbiAgd2hpdGVsaXN0OiB7XG4gICAgLyoqIExpbWl0IHRvIGVsZW1lbnRzIHdpdGggYW55IG9mIHRoZXNlIGVsZW1lbnQgdGFncy4gKi9cbiAgICBlbGVtZW50cz86IHN0cmluZ1tdLFxuICAgIC8qKiBMaW1pdCB0byBlbGVtZW50cyB3aXRoIGFueSBvZiB0aGVzZSBhdHRyaWJ1dGVzLiAqL1xuICAgIGF0dHJpYnV0ZXM/OiBzdHJpbmdbXSxcbiAgfTtcbn1cblxuZXhwb3J0IGNvbnN0IGlucHV0TmFtZXM6IFZlcnNpb25DaGFuZ2VzPElucHV0TmFtZVVwZ3JhZGVEYXRhPiA9IHtcbiAgW1RhcmdldFZlcnNpb24uVjZdOiBbXG4gICAge1xuICAgICAgcHI6ICdodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9jb21wb25lbnRzL3B1bGwvMTAxNjEnLFxuICAgICAgY2hhbmdlczogW1xuICAgICAgICB7XG4gICAgICAgICAgcmVwbGFjZTogJ29yaWdpbicsXG4gICAgICAgICAgcmVwbGFjZVdpdGg6ICdjZGtDb25uZWN0ZWRPdmVybGF5T3JpZ2luJyxcbiAgICAgICAgICB3aGl0ZWxpc3Q6XG4gICAgICAgICAgICAgIHthdHRyaWJ1dGVzOiBbJ2Nkay1jb25uZWN0ZWQtb3ZlcmxheScsICdjb25uZWN0ZWQtb3ZlcmxheScsICdjZGtDb25uZWN0ZWRPdmVybGF5J119XG4gICAgICAgIH0sXG4gICAgICAgIHtcbiAgICAgICAgICByZXBsYWNlOiAncG9zaXRpb25zJyxcbiAgICAgICAgICByZXBsYWNlV2l0aDogJ2Nka0Nvbm5lY3RlZE92ZXJsYXlQb3NpdGlvbnMnLFxuICAgICAgICAgIHdoaXRlbGlzdDpcbiAgICAgICAgICAgICAge2F0dHJpYnV0ZXM6IFsnY2RrLWNvbm5lY3RlZC1vdmVybGF5JywgJ2Nvbm5lY3RlZC1vdmVybGF5JywgJ2Nka0Nvbm5lY3RlZE92ZXJsYXknXX1cbiAgICAgICAgfSxcbiAgICAgICAge1xuICAgICAgICAgIHJlcGxhY2U6ICdvZmZzZXRYJyxcbiAgICAgICAgICByZXBsYWNlV2l0aDogJ2Nka0Nvbm5lY3RlZE92ZXJsYXlPZmZzZXRYJyxcbiAgICAgICAgICB3aGl0ZWxpc3Q6XG4gICAgICAgICAgICAgIHthdHRyaWJ1dGVzOiBbJ2Nkay1jb25uZWN0ZWQtb3ZlcmxheScsICdjb25uZWN0ZWQtb3ZlcmxheScsICdjZGtDb25uZWN0ZWRPdmVybGF5J119XG4gICAgICAgIH0sXG4gICAgICAgIHtcbiAgICAgICAgICByZXBsYWNlOiAnb2Zmc2V0WScsXG4gICAgICAgICAgcmVwbGFjZVdpdGg6ICdjZGtDb25uZWN0ZWRPdmVybGF5T2Zmc2V0WScsXG4gICAgICAgICAgd2hpdGVsaXN0OlxuICAgICAgICAgICAgICB7YXR0cmlidXRlczogWydjZGstY29ubmVjdGVkLW92ZXJsYXknLCAnY29ubmVjdGVkLW92ZXJsYXknLCAnY2RrQ29ubmVjdGVkT3ZlcmxheSddfVxuICAgICAgICB9LFxuICAgICAgICB7XG4gICAgICAgICAgcmVwbGFjZTogJ3dpZHRoJyxcbiAgICAgICAgICByZXBsYWNlV2l0aDogJ2Nka0Nvbm5lY3RlZE92ZXJsYXlXaWR0aCcsXG4gICAgICAgICAgd2hpdGVsaXN0OlxuICAgICAgICAgICAgICB7YXR0cmlidXRlczogWydjZGstY29ubmVjdGVkLW92ZXJsYXknLCAnY29ubmVjdGVkLW92ZXJsYXknLCAnY2RrQ29ubmVjdGVkT3ZlcmxheSddfVxuICAgICAgICB9LFxuICAgICAgICB7XG4gICAgICAgICAgcmVwbGFjZTogJ2hlaWdodCcsXG4gICAgICAgICAgcmVwbGFjZVdpdGg6ICdjZGtDb25uZWN0ZWRPdmVybGF5SGVpZ2h0JyxcbiAgICAgICAgICB3aGl0ZWxpc3Q6XG4gICAgICAgICAgICAgIHthdHRyaWJ1dGVzOiBbJ2Nkay1jb25uZWN0ZWQtb3ZlcmxheScsICdjb25uZWN0ZWQtb3ZlcmxheScsICdjZGtDb25uZWN0ZWRPdmVybGF5J119XG4gICAgICAgIH0sXG4gICAgICAgIHtcbiAgICAgICAgICByZXBsYWNlOiAnbWluV2lkdGgnLFxuICAgICAgICAgIHJlcGxhY2VXaXRoOiAnY2RrQ29ubmVjdGVkT3ZlcmxheU1pbldpZHRoJyxcbiAgICAgICAgICB3aGl0ZWxpc3Q6XG4gICAgICAgICAgICAgIHthdHRyaWJ1dGVzOiBbJ2Nkay1jb25uZWN0ZWQtb3ZlcmxheScsICdjb25uZWN0ZWQtb3ZlcmxheScsICdjZGtDb25uZWN0ZWRPdmVybGF5J119XG4gICAgICAgIH0sXG4gICAgICAgIHtcbiAgICAgICAgICByZXBsYWNlOiAnbWluSGVpZ2h0JyxcbiAgICAgICAgICByZXBsYWNlV2l0aDogJ2Nka0Nvbm5lY3RlZE92ZXJsYXlNaW5IZWlnaHQnLFxuICAgICAgICAgIHdoaXRlbGlzdDpcbiAgICAgICAgICAgICAge2F0dHJpYnV0ZXM6IFsnY2RrLWNvbm5lY3RlZC1vdmVybGF5JywgJ2Nvbm5lY3RlZC1vdmVybGF5JywgJ2Nka0Nvbm5lY3RlZE92ZXJsYXknXX1cbiAgICAgICAgfSxcbiAgICAgICAge1xuICAgICAgICAgIHJlcGxhY2U6ICdiYWNrZHJvcENsYXNzJyxcbiAgICAgICAgICByZXBsYWNlV2l0aDogJ2Nka0Nvbm5lY3RlZE92ZXJsYXlCYWNrZHJvcENsYXNzJyxcbiAgICAgICAgICB3aGl0ZWxpc3Q6XG4gICAgICAgICAgICAgIHthdHRyaWJ1dGVzOiBbJ2Nkay1jb25uZWN0ZWQtb3ZlcmxheScsICdjb25uZWN0ZWQtb3ZlcmxheScsICdjZGtDb25uZWN0ZWRPdmVybGF5J119XG4gICAgICAgIH0sXG4gICAgICAgIHtcbiAgICAgICAgICByZXBsYWNlOiAnc2Nyb2xsU3RyYXRlZ3knLFxuICAgICAgICAgIHJlcGxhY2VXaXRoOiAnY2RrQ29ubmVjdGVkT3ZlcmxheVNjcm9sbFN0cmF0ZWd5JyxcbiAgICAgICAgICB3aGl0ZWxpc3Q6XG4gICAgICAgICAgICAgIHthdHRyaWJ1dGVzOiBbJ2Nkay1jb25uZWN0ZWQtb3ZlcmxheScsICdjb25uZWN0ZWQtb3ZlcmxheScsICdjZGtDb25uZWN0ZWRPdmVybGF5J119XG4gICAgICAgIH0sXG4gICAgICAgIHtcbiAgICAgICAgICByZXBsYWNlOiAnb3BlbicsXG4gICAgICAgICAgcmVwbGFjZVdpdGg6ICdjZGtDb25uZWN0ZWRPdmVybGF5T3BlbicsXG4gICAgICAgICAgd2hpdGVsaXN0OlxuICAgICAgICAgICAgICB7YXR0cmlidXRlczogWydjZGstY29ubmVjdGVkLW92ZXJsYXknLCAnY29ubmVjdGVkLW92ZXJsYXknLCAnY2RrQ29ubmVjdGVkT3ZlcmxheSddfVxuICAgICAgICB9LFxuICAgICAgICB7XG4gICAgICAgICAgcmVwbGFjZTogJ2hhc0JhY2tkcm9wJyxcbiAgICAgICAgICByZXBsYWNlV2l0aDogJ2Nka0Nvbm5lY3RlZE92ZXJsYXlIYXNCYWNrZHJvcCcsXG4gICAgICAgICAgd2hpdGVsaXN0OlxuICAgICAgICAgICAgICB7YXR0cmlidXRlczogWydjZGstY29ubmVjdGVkLW92ZXJsYXknLCAnY29ubmVjdGVkLW92ZXJsYXknLCAnY2RrQ29ubmVjdGVkT3ZlcmxheSddfVxuICAgICAgICB9XG4gICAgICBdXG4gICAgfSxcbiAgXVxufTtcbiJdfQ==