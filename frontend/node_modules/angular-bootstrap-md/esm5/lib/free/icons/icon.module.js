import { __decorate } from "tslib";
import { MdbIconComponent } from './icon.component';
import { NgModule } from '@angular/core';
import { FabDirective } from './directives/fab.directive';
import { FarDirective } from './directives/far.directive';
import { FasDirective } from './directives/fas.directive';
import { FalDirective } from './directives/fal.directive';
import { CommonModule } from '@angular/common';
import { FadDirective } from './directives/fad.directive';
var IconsModule = /** @class */ (function () {
    function IconsModule() {
    }
    IconsModule = __decorate([
        NgModule({
            declarations: [
                MdbIconComponent,
                FabDirective,
                FarDirective,
                FasDirective,
                FalDirective,
                FadDirective,
            ],
            imports: [CommonModule],
            exports: [MdbIconComponent, FabDirective, FarDirective, FasDirective, FalDirective, FadDirective],
        })
    ], IconsModule);
    return IconsModule;
}());
export { IconsModule };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaWNvbi5tb2R1bGUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL2ljb25zL2ljb24ubW9kdWxlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsZ0JBQWdCLEVBQUUsTUFBTSxrQkFBa0IsQ0FBQztBQUNwRCxPQUFPLEVBQUUsUUFBUSxFQUFFLE1BQU0sZUFBZSxDQUFDO0FBQ3pDLE9BQU8sRUFBRSxZQUFZLEVBQUUsTUFBTSw0QkFBNEIsQ0FBQztBQUMxRCxPQUFPLEVBQUUsWUFBWSxFQUFFLE1BQU0sNEJBQTRCLENBQUM7QUFDMUQsT0FBTyxFQUFFLFlBQVksRUFBRSxNQUFNLDRCQUE0QixDQUFDO0FBQzFELE9BQU8sRUFBRSxZQUFZLEVBQUUsTUFBTSw0QkFBNEIsQ0FBQztBQUMxRCxPQUFPLEVBQUUsWUFBWSxFQUFFLE1BQU0saUJBQWlCLENBQUM7QUFDL0MsT0FBTyxFQUFFLFlBQVksRUFBRSxNQUFNLDRCQUE0QixDQUFDO0FBYzFEO0lBQUE7SUFBMEIsQ0FBQztJQUFkLFdBQVc7UUFadkIsUUFBUSxDQUFDO1lBQ1IsWUFBWSxFQUFFO2dCQUNaLGdCQUFnQjtnQkFDaEIsWUFBWTtnQkFDWixZQUFZO2dCQUNaLFlBQVk7Z0JBQ1osWUFBWTtnQkFDWixZQUFZO2FBQ2I7WUFDRCxPQUFPLEVBQUUsQ0FBQyxZQUFZLENBQUM7WUFDdkIsT0FBTyxFQUFFLENBQUMsZ0JBQWdCLEVBQUUsWUFBWSxFQUFFLFlBQVksRUFBRSxZQUFZLEVBQUUsWUFBWSxFQUFFLFlBQVksQ0FBQztTQUNsRyxDQUFDO09BQ1csV0FBVyxDQUFHO0lBQUQsa0JBQUM7Q0FBQSxBQUEzQixJQUEyQjtTQUFkLFdBQVciLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBNZGJJY29uQ29tcG9uZW50IH0gZnJvbSAnLi9pY29uLmNvbXBvbmVudCc7XG5pbXBvcnQgeyBOZ01vZHVsZSB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgRmFiRGlyZWN0aXZlIH0gZnJvbSAnLi9kaXJlY3RpdmVzL2ZhYi5kaXJlY3RpdmUnO1xuaW1wb3J0IHsgRmFyRGlyZWN0aXZlIH0gZnJvbSAnLi9kaXJlY3RpdmVzL2Zhci5kaXJlY3RpdmUnO1xuaW1wb3J0IHsgRmFzRGlyZWN0aXZlIH0gZnJvbSAnLi9kaXJlY3RpdmVzL2Zhcy5kaXJlY3RpdmUnO1xuaW1wb3J0IHsgRmFsRGlyZWN0aXZlIH0gZnJvbSAnLi9kaXJlY3RpdmVzL2ZhbC5kaXJlY3RpdmUnO1xuaW1wb3J0IHsgQ29tbW9uTW9kdWxlIH0gZnJvbSAnQGFuZ3VsYXIvY29tbW9uJztcbmltcG9ydCB7IEZhZERpcmVjdGl2ZSB9IGZyb20gJy4vZGlyZWN0aXZlcy9mYWQuZGlyZWN0aXZlJztcblxuQE5nTW9kdWxlKHtcbiAgZGVjbGFyYXRpb25zOiBbXG4gICAgTWRiSWNvbkNvbXBvbmVudCxcbiAgICBGYWJEaXJlY3RpdmUsXG4gICAgRmFyRGlyZWN0aXZlLFxuICAgIEZhc0RpcmVjdGl2ZSxcbiAgICBGYWxEaXJlY3RpdmUsXG4gICAgRmFkRGlyZWN0aXZlLFxuICBdLFxuICBpbXBvcnRzOiBbQ29tbW9uTW9kdWxlXSxcbiAgZXhwb3J0czogW01kYkljb25Db21wb25lbnQsIEZhYkRpcmVjdGl2ZSwgRmFyRGlyZWN0aXZlLCBGYXNEaXJlY3RpdmUsIEZhbERpcmVjdGl2ZSwgRmFkRGlyZWN0aXZlXSxcbn0pXG5leHBvcnQgY2xhc3MgSWNvbnNNb2R1bGUge31cbiJdfQ==