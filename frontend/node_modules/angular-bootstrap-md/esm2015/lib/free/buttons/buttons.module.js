var ButtonsModule_1;
import { __decorate } from "tslib";
import { MdbBtnDirective } from './buttons.directive';
import { NgModule } from '@angular/core';
import { ButtonCheckboxDirective } from './checkbox.directive';
import { ButtonRadioDirective } from './radio.directive';
import { FixedButtonCaptionDirective } from './fixed-caption.directive';
let ButtonsModule = ButtonsModule_1 = class ButtonsModule {
    static forRoot() {
        return { ngModule: ButtonsModule_1, providers: [] };
    }
};
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
export { ButtonsModule };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYnV0dG9ucy5tb2R1bGUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL2J1dHRvbnMvYnV0dG9ucy5tb2R1bGUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7QUFBQSxPQUFPLEVBQUUsZUFBZSxFQUFFLE1BQU0scUJBQXFCLENBQUM7QUFDdEQsT0FBTyxFQUFFLFFBQVEsRUFBdUIsTUFBTSxlQUFlLENBQUM7QUFFOUQsT0FBTyxFQUFFLHVCQUF1QixFQUFFLE1BQU0sc0JBQXNCLENBQUM7QUFDL0QsT0FBTyxFQUFFLG9CQUFvQixFQUFFLE1BQU0sbUJBQW1CLENBQUM7QUFDekQsT0FBTyxFQUFFLDJCQUEyQixFQUFFLE1BQU0sMkJBQTJCLENBQUM7QUFnQnhFLElBQWEsYUFBYSxxQkFBMUIsTUFBYSxhQUFhO0lBQ2pCLE1BQU0sQ0FBQyxPQUFPO1FBQ25CLE9BQU8sRUFBRSxRQUFRLEVBQUUsZUFBYSxFQUFFLFNBQVMsRUFBRSxFQUFFLEVBQUUsQ0FBQztJQUNwRCxDQUFDO0NBQ0YsQ0FBQTtBQUpZLGFBQWE7SUFkekIsUUFBUSxDQUFDO1FBQ1IsWUFBWSxFQUFFO1lBQ1osdUJBQXVCO1lBQ3ZCLG9CQUFvQjtZQUNwQixlQUFlO1lBQ2YsMkJBQTJCO1NBQzVCO1FBQ0QsT0FBTyxFQUFFO1lBQ1AsdUJBQXVCO1lBQ3ZCLG9CQUFvQjtZQUNwQixlQUFlO1lBQ2YsMkJBQTJCO1NBQzVCO0tBQ0YsQ0FBQztHQUNXLGFBQWEsQ0FJekI7U0FKWSxhQUFhIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgTWRiQnRuRGlyZWN0aXZlIH0gZnJvbSAnLi9idXR0b25zLmRpcmVjdGl2ZSc7XG5pbXBvcnQgeyBOZ01vZHVsZSwgTW9kdWxlV2l0aFByb3ZpZGVycyB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG5pbXBvcnQgeyBCdXR0b25DaGVja2JveERpcmVjdGl2ZSB9IGZyb20gJy4vY2hlY2tib3guZGlyZWN0aXZlJztcbmltcG9ydCB7IEJ1dHRvblJhZGlvRGlyZWN0aXZlIH0gZnJvbSAnLi9yYWRpby5kaXJlY3RpdmUnO1xuaW1wb3J0IHsgRml4ZWRCdXR0b25DYXB0aW9uRGlyZWN0aXZlIH0gZnJvbSAnLi9maXhlZC1jYXB0aW9uLmRpcmVjdGl2ZSc7XG5cbkBOZ01vZHVsZSh7XG4gIGRlY2xhcmF0aW9uczogW1xuICAgIEJ1dHRvbkNoZWNrYm94RGlyZWN0aXZlLFxuICAgIEJ1dHRvblJhZGlvRGlyZWN0aXZlLFxuICAgIE1kYkJ0bkRpcmVjdGl2ZSxcbiAgICBGaXhlZEJ1dHRvbkNhcHRpb25EaXJlY3RpdmUsXG4gIF0sXG4gIGV4cG9ydHM6IFtcbiAgICBCdXR0b25DaGVja2JveERpcmVjdGl2ZSxcbiAgICBCdXR0b25SYWRpb0RpcmVjdGl2ZSxcbiAgICBNZGJCdG5EaXJlY3RpdmUsXG4gICAgRml4ZWRCdXR0b25DYXB0aW9uRGlyZWN0aXZlLFxuICBdLFxufSlcbmV4cG9ydCBjbGFzcyBCdXR0b25zTW9kdWxlIHtcbiAgcHVibGljIHN0YXRpYyBmb3JSb290KCk6IE1vZHVsZVdpdGhQcm92aWRlcnM8QnV0dG9uc01vZHVsZT4ge1xuICAgIHJldHVybiB7IG5nTW9kdWxlOiBCdXR0b25zTW9kdWxlLCBwcm92aWRlcnM6IFtdIH07XG4gIH1cbn1cbiJdfQ==