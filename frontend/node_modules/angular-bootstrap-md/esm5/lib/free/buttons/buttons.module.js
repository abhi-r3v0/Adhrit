import { __decorate } from "tslib";
import { MdbBtnDirective } from './buttons.directive';
import { NgModule } from '@angular/core';
import { ButtonCheckboxDirective } from './checkbox.directive';
import { ButtonRadioDirective } from './radio.directive';
import { FixedButtonCaptionDirective } from './fixed-caption.directive';
var ButtonsModule = /** @class */ (function () {
    function ButtonsModule() {
    }
    ButtonsModule_1 = ButtonsModule;
    ButtonsModule.forRoot = function () {
        return { ngModule: ButtonsModule_1, providers: [] };
    };
    var ButtonsModule_1;
    ButtonsModule = ButtonsModule_1 = __decorate([
        NgModule({
            declarations: [
                ButtonCheckboxDirective,
                ButtonRadioDirective,
                MdbBtnDirective,
                FixedButtonCaptionDirective,
            ],
            exports: [
                ButtonCheckboxDirective,
                ButtonRadioDirective,
                MdbBtnDirective,
                FixedButtonCaptionDirective,
            ],
        })
    ], ButtonsModule);
    return ButtonsModule;
}());
export { ButtonsModule };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYnV0dG9ucy5tb2R1bGUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL2J1dHRvbnMvYnV0dG9ucy5tb2R1bGUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxlQUFlLEVBQUUsTUFBTSxxQkFBcUIsQ0FBQztBQUN0RCxPQUFPLEVBQUUsUUFBUSxFQUF1QixNQUFNLGVBQWUsQ0FBQztBQUU5RCxPQUFPLEVBQUUsdUJBQXVCLEVBQUUsTUFBTSxzQkFBc0IsQ0FBQztBQUMvRCxPQUFPLEVBQUUsb0JBQW9CLEVBQUUsTUFBTSxtQkFBbUIsQ0FBQztBQUN6RCxPQUFPLEVBQUUsMkJBQTJCLEVBQUUsTUFBTSwyQkFBMkIsQ0FBQztBQWdCeEU7SUFBQTtJQUlBLENBQUM7c0JBSlksYUFBYTtJQUNWLHFCQUFPLEdBQXJCO1FBQ0UsT0FBTyxFQUFFLFFBQVEsRUFBRSxlQUFhLEVBQUUsU0FBUyxFQUFFLEVBQUUsRUFBRSxDQUFDO0lBQ3BELENBQUM7O0lBSFUsYUFBYTtRQWR6QixRQUFRLENBQUM7WUFDUixZQUFZLEVBQUU7Z0JBQ1osdUJBQXVCO2dCQUN2QixvQkFBb0I7Z0JBQ3BCLGVBQWU7Z0JBQ2YsMkJBQTJCO2FBQzVCO1lBQ0QsT0FBTyxFQUFFO2dCQUNQLHVCQUF1QjtnQkFDdkIsb0JBQW9CO2dCQUNwQixlQUFlO2dCQUNmLDJCQUEyQjthQUM1QjtTQUNGLENBQUM7T0FDVyxhQUFhLENBSXpCO0lBQUQsb0JBQUM7Q0FBQSxBQUpELElBSUM7U0FKWSxhQUFhIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgTWRiQnRuRGlyZWN0aXZlIH0gZnJvbSAnLi9idXR0b25zLmRpcmVjdGl2ZSc7XG5pbXBvcnQgeyBOZ01vZHVsZSwgTW9kdWxlV2l0aFByb3ZpZGVycyB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG5pbXBvcnQgeyBCdXR0b25DaGVja2JveERpcmVjdGl2ZSB9IGZyb20gJy4vY2hlY2tib3guZGlyZWN0aXZlJztcbmltcG9ydCB7IEJ1dHRvblJhZGlvRGlyZWN0aXZlIH0gZnJvbSAnLi9yYWRpby5kaXJlY3RpdmUnO1xuaW1wb3J0IHsgRml4ZWRCdXR0b25DYXB0aW9uRGlyZWN0aXZlIH0gZnJvbSAnLi9maXhlZC1jYXB0aW9uLmRpcmVjdGl2ZSc7XG5cbkBOZ01vZHVsZSh7XG4gIGRlY2xhcmF0aW9uczogW1xuICAgIEJ1dHRvbkNoZWNrYm94RGlyZWN0aXZlLFxuICAgIEJ1dHRvblJhZGlvRGlyZWN0aXZlLFxuICAgIE1kYkJ0bkRpcmVjdGl2ZSxcbiAgICBGaXhlZEJ1dHRvbkNhcHRpb25EaXJlY3RpdmUsXG4gIF0sXG4gIGV4cG9ydHM6IFtcbiAgICBCdXR0b25DaGVja2JveERpcmVjdGl2ZSxcbiAgICBCdXR0b25SYWRpb0RpcmVjdGl2ZSxcbiAgICBNZGJCdG5EaXJlY3RpdmUsXG4gICAgRml4ZWRCdXR0b25DYXB0aW9uRGlyZWN0aXZlLFxuICBdLFxufSlcbmV4cG9ydCBjbGFzcyBCdXR0b25zTW9kdWxlIHtcbiAgcHVibGljIHN0YXRpYyBmb3JSb290KCk6IE1vZHVsZVdpdGhQcm92aWRlcnM8QnV0dG9uc01vZHVsZT4ge1xuICAgIHJldHVybiB7IG5nTW9kdWxlOiBCdXR0b25zTW9kdWxlLCBwcm92aWRlcnM6IFtdIH07XG4gIH1cbn1cbiJdfQ==