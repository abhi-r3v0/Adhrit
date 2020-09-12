import { __decorate } from "tslib";
import { NgModule } from '@angular/core';
import { WavesDirective } from './waves-effect.directive';
var WavesModule = /** @class */ (function () {
    function WavesModule() {
    }
    WavesModule_1 = WavesModule;
    WavesModule.forRoot = function () {
        return { ngModule: WavesModule_1, providers: [] };
    };
    var WavesModule_1;
    WavesModule = WavesModule_1 = __decorate([
        NgModule({
            declarations: [WavesDirective],
            exports: [WavesDirective],
        })
    ], WavesModule);
    return WavesModule;
}());
export { WavesModule };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoid2F2ZXMubW9kdWxlLmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS93YXZlcy93YXZlcy5tb2R1bGUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxRQUFRLEVBQXVCLE1BQU0sZUFBZSxDQUFDO0FBQzlELE9BQU8sRUFBRSxjQUFjLEVBQUUsTUFBTSwwQkFBMEIsQ0FBQztBQU0xRDtJQUFBO0lBSUEsQ0FBQztvQkFKWSxXQUFXO0lBQ1IsbUJBQU8sR0FBckI7UUFDRSxPQUFPLEVBQUUsUUFBUSxFQUFFLGFBQVcsRUFBRSxTQUFTLEVBQUUsRUFBRSxFQUFFLENBQUM7SUFDbEQsQ0FBQzs7SUFIVSxXQUFXO1FBSnZCLFFBQVEsQ0FBQztZQUNSLFlBQVksRUFBRSxDQUFDLGNBQWMsQ0FBQztZQUM5QixPQUFPLEVBQUUsQ0FBQyxjQUFjLENBQUM7U0FDMUIsQ0FBQztPQUNXLFdBQVcsQ0FJdkI7SUFBRCxrQkFBQztDQUFBLEFBSkQsSUFJQztTQUpZLFdBQVciLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBOZ01vZHVsZSwgTW9kdWxlV2l0aFByb3ZpZGVycyB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgV2F2ZXNEaXJlY3RpdmUgfSBmcm9tICcuL3dhdmVzLWVmZmVjdC5kaXJlY3RpdmUnO1xuXG5ATmdNb2R1bGUoe1xuICBkZWNsYXJhdGlvbnM6IFtXYXZlc0RpcmVjdGl2ZV0sXG4gIGV4cG9ydHM6IFtXYXZlc0RpcmVjdGl2ZV0sXG59KVxuZXhwb3J0IGNsYXNzIFdhdmVzTW9kdWxlIHtcbiAgcHVibGljIHN0YXRpYyBmb3JSb290KCk6IE1vZHVsZVdpdGhQcm92aWRlcnM8V2F2ZXNNb2R1bGU+IHtcbiAgICByZXR1cm4geyBuZ01vZHVsZTogV2F2ZXNNb2R1bGUsIHByb3ZpZGVyczogW10gfTtcbiAgfVxufVxuIl19