import { __decorate } from "tslib";
import { NgModule } from '@angular/core';
import { ComponentLoaderFactory } from '../utils/component-loader/component-loader.factory';
import { PositioningService } from '../utils/positioning/positioning.service';
import { BsDropdownContainerComponent } from './dropdown-container.component';
import { BsDropdownMenuDirective } from './dropdown-menu.directive';
import { BsDropdownToggleDirective } from './dropdown-toggle.directive';
import { BsDropdownConfig } from './dropdown.config';
import { BsDropdownDirective } from './dropdown.directive';
import { BsDropdownState } from './dropdown.state';
var DropdownModule = /** @class */ (function () {
    function DropdownModule() {
    }
    DropdownModule_1 = DropdownModule;
    DropdownModule.forRoot = function (config) {
        return {
            ngModule: DropdownModule_1,
            providers: [
                ComponentLoaderFactory,
                PositioningService,
                BsDropdownState,
                { provide: BsDropdownConfig, useValue: config ? config : { autoClose: true } },
            ],
        };
    };
    var DropdownModule_1;
    DropdownModule = DropdownModule_1 = __decorate([
        NgModule({
            declarations: [
                BsDropdownMenuDirective,
                BsDropdownToggleDirective,
                BsDropdownContainerComponent,
                BsDropdownDirective,
            ],
            exports: [BsDropdownMenuDirective, BsDropdownToggleDirective, BsDropdownDirective],
            entryComponents: [BsDropdownContainerComponent],
        })
    ], DropdownModule);
    return DropdownModule;
}());
export { DropdownModule };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZHJvcGRvd24ubW9kdWxlLmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9kcm9wZG93bi9kcm9wZG93bi5tb2R1bGUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBdUIsUUFBUSxFQUFFLE1BQU0sZUFBZSxDQUFDO0FBQzlELE9BQU8sRUFBRSxzQkFBc0IsRUFBRSxNQUFNLG9EQUFvRCxDQUFDO0FBRTVGLE9BQU8sRUFBRSxrQkFBa0IsRUFBRSxNQUFNLDBDQUEwQyxDQUFDO0FBQzlFLE9BQU8sRUFBRSw0QkFBNEIsRUFBRSxNQUFNLGdDQUFnQyxDQUFDO0FBQzlFLE9BQU8sRUFBRSx1QkFBdUIsRUFBRSxNQUFNLDJCQUEyQixDQUFDO0FBQ3BFLE9BQU8sRUFBRSx5QkFBeUIsRUFBRSxNQUFNLDZCQUE2QixDQUFDO0FBQ3hFLE9BQU8sRUFBRSxnQkFBZ0IsRUFBRSxNQUFNLG1CQUFtQixDQUFDO0FBRXJELE9BQU8sRUFBRSxtQkFBbUIsRUFBRSxNQUFNLHNCQUFzQixDQUFDO0FBQzNELE9BQU8sRUFBRSxlQUFlLEVBQUUsTUFBTSxrQkFBa0IsQ0FBQztBQVluRDtJQUFBO0lBWUEsQ0FBQzt1QkFaWSxjQUFjO0lBQ1gsc0JBQU8sR0FBckIsVUFBc0IsTUFBWTtRQUNoQyxPQUFPO1lBQ0wsUUFBUSxFQUFFLGdCQUFjO1lBQ3hCLFNBQVMsRUFBRTtnQkFDVCxzQkFBc0I7Z0JBQ3RCLGtCQUFrQjtnQkFDbEIsZUFBZTtnQkFDZixFQUFFLE9BQU8sRUFBRSxnQkFBZ0IsRUFBRSxRQUFRLEVBQUUsTUFBTSxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLEVBQUUsU0FBUyxFQUFFLElBQUksRUFBRSxFQUFFO2FBQy9FO1NBQ0YsQ0FBQztJQUNKLENBQUM7O0lBWFUsY0FBYztRQVYxQixRQUFRLENBQUM7WUFDUixZQUFZLEVBQUU7Z0JBQ1osdUJBQXVCO2dCQUN2Qix5QkFBeUI7Z0JBQ3pCLDRCQUE0QjtnQkFDNUIsbUJBQW1CO2FBQ3BCO1lBQ0QsT0FBTyxFQUFFLENBQUMsdUJBQXVCLEVBQUUseUJBQXlCLEVBQUUsbUJBQW1CLENBQUM7WUFDbEYsZUFBZSxFQUFFLENBQUMsNEJBQTRCLENBQUM7U0FDaEQsQ0FBQztPQUNXLGNBQWMsQ0FZMUI7SUFBRCxxQkFBQztDQUFBLEFBWkQsSUFZQztTQVpZLGNBQWMiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBNb2R1bGVXaXRoUHJvdmlkZXJzLCBOZ01vZHVsZSB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgQ29tcG9uZW50TG9hZGVyRmFjdG9yeSB9IGZyb20gJy4uL3V0aWxzL2NvbXBvbmVudC1sb2FkZXIvY29tcG9uZW50LWxvYWRlci5mYWN0b3J5JztcblxuaW1wb3J0IHsgUG9zaXRpb25pbmdTZXJ2aWNlIH0gZnJvbSAnLi4vdXRpbHMvcG9zaXRpb25pbmcvcG9zaXRpb25pbmcuc2VydmljZSc7XG5pbXBvcnQgeyBCc0Ryb3Bkb3duQ29udGFpbmVyQ29tcG9uZW50IH0gZnJvbSAnLi9kcm9wZG93bi1jb250YWluZXIuY29tcG9uZW50JztcbmltcG9ydCB7IEJzRHJvcGRvd25NZW51RGlyZWN0aXZlIH0gZnJvbSAnLi9kcm9wZG93bi1tZW51LmRpcmVjdGl2ZSc7XG5pbXBvcnQgeyBCc0Ryb3Bkb3duVG9nZ2xlRGlyZWN0aXZlIH0gZnJvbSAnLi9kcm9wZG93bi10b2dnbGUuZGlyZWN0aXZlJztcbmltcG9ydCB7IEJzRHJvcGRvd25Db25maWcgfSBmcm9tICcuL2Ryb3Bkb3duLmNvbmZpZyc7XG5cbmltcG9ydCB7IEJzRHJvcGRvd25EaXJlY3RpdmUgfSBmcm9tICcuL2Ryb3Bkb3duLmRpcmVjdGl2ZSc7XG5pbXBvcnQgeyBCc0Ryb3Bkb3duU3RhdGUgfSBmcm9tICcuL2Ryb3Bkb3duLnN0YXRlJztcblxuQE5nTW9kdWxlKHtcbiAgZGVjbGFyYXRpb25zOiBbXG4gICAgQnNEcm9wZG93bk1lbnVEaXJlY3RpdmUsXG4gICAgQnNEcm9wZG93blRvZ2dsZURpcmVjdGl2ZSxcbiAgICBCc0Ryb3Bkb3duQ29udGFpbmVyQ29tcG9uZW50LFxuICAgIEJzRHJvcGRvd25EaXJlY3RpdmUsXG4gIF0sXG4gIGV4cG9ydHM6IFtCc0Ryb3Bkb3duTWVudURpcmVjdGl2ZSwgQnNEcm9wZG93blRvZ2dsZURpcmVjdGl2ZSwgQnNEcm9wZG93bkRpcmVjdGl2ZV0sXG4gIGVudHJ5Q29tcG9uZW50czogW0JzRHJvcGRvd25Db250YWluZXJDb21wb25lbnRdLFxufSlcbmV4cG9ydCBjbGFzcyBEcm9wZG93bk1vZHVsZSB7XG4gIHB1YmxpYyBzdGF0aWMgZm9yUm9vdChjb25maWc/OiBhbnkpOiBNb2R1bGVXaXRoUHJvdmlkZXJzPERyb3Bkb3duTW9kdWxlPiB7XG4gICAgcmV0dXJuIHtcbiAgICAgIG5nTW9kdWxlOiBEcm9wZG93bk1vZHVsZSxcbiAgICAgIHByb3ZpZGVyczogW1xuICAgICAgICBDb21wb25lbnRMb2FkZXJGYWN0b3J5LFxuICAgICAgICBQb3NpdGlvbmluZ1NlcnZpY2UsXG4gICAgICAgIEJzRHJvcGRvd25TdGF0ZSxcbiAgICAgICAgeyBwcm92aWRlOiBCc0Ryb3Bkb3duQ29uZmlnLCB1c2VWYWx1ZTogY29uZmlnID8gY29uZmlnIDogeyBhdXRvQ2xvc2U6IHRydWUgfSB9LFxuICAgICAgXSxcbiAgICB9O1xuICB9XG59XG4iXX0=