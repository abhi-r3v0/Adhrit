import { __decorate } from "tslib";
import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { CarouselComponent } from './carousel.component';
import { SlideComponent } from './slide.component';
import { CarouselConfig } from './carousel.config';
import { ButtonsModule } from '../buttons/buttons.module';
var CarouselModule = /** @class */ (function () {
    function CarouselModule() {
    }
    CarouselModule_1 = CarouselModule;
    CarouselModule.forRoot = function () {
        return { ngModule: CarouselModule_1, providers: [] };
    };
    var CarouselModule_1;
    CarouselModule = CarouselModule_1 = __decorate([
        NgModule({
            imports: [CommonModule, ButtonsModule],
            declarations: [SlideComponent, CarouselComponent],
            exports: [SlideComponent, CarouselComponent],
            providers: [CarouselConfig],
        })
    ], CarouselModule);
    return CarouselModule;
}());
export { CarouselModule };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY2Fyb3VzZWwubW9kdWxlLmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9jYXJvdXNlbC9jYXJvdXNlbC5tb2R1bGUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxZQUFZLEVBQUUsTUFBTSxpQkFBaUIsQ0FBQztBQUMvQyxPQUFPLEVBQUUsUUFBUSxFQUF1QixNQUFNLGVBQWUsQ0FBQztBQUU5RCxPQUFPLEVBQUUsaUJBQWlCLEVBQUUsTUFBTSxzQkFBc0IsQ0FBQztBQUN6RCxPQUFPLEVBQUUsY0FBYyxFQUFFLE1BQU0sbUJBQW1CLENBQUM7QUFDbkQsT0FBTyxFQUFFLGNBQWMsRUFBRSxNQUFNLG1CQUFtQixDQUFDO0FBQ25ELE9BQU8sRUFBRSxhQUFhLEVBQUUsTUFBTSwyQkFBMkIsQ0FBQztBQVExRDtJQUFBO0lBSUEsQ0FBQzt1QkFKWSxjQUFjO0lBQ1gsc0JBQU8sR0FBckI7UUFDRSxPQUFPLEVBQUUsUUFBUSxFQUFFLGdCQUFjLEVBQUUsU0FBUyxFQUFFLEVBQUUsRUFBRSxDQUFDO0lBQ3JELENBQUM7O0lBSFUsY0FBYztRQU4xQixRQUFRLENBQUM7WUFDUixPQUFPLEVBQUUsQ0FBQyxZQUFZLEVBQUUsYUFBYSxDQUFDO1lBQ3RDLFlBQVksRUFBRSxDQUFDLGNBQWMsRUFBRSxpQkFBaUIsQ0FBQztZQUNqRCxPQUFPLEVBQUUsQ0FBQyxjQUFjLEVBQUUsaUJBQWlCLENBQUM7WUFDNUMsU0FBUyxFQUFFLENBQUMsY0FBYyxDQUFDO1NBQzVCLENBQUM7T0FDVyxjQUFjLENBSTFCO0lBQUQscUJBQUM7Q0FBQSxBQUpELElBSUM7U0FKWSxjQUFjIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgQ29tbW9uTW9kdWxlIH0gZnJvbSAnQGFuZ3VsYXIvY29tbW9uJztcbmltcG9ydCB7IE5nTW9kdWxlLCBNb2R1bGVXaXRoUHJvdmlkZXJzIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbmltcG9ydCB7IENhcm91c2VsQ29tcG9uZW50IH0gZnJvbSAnLi9jYXJvdXNlbC5jb21wb25lbnQnO1xuaW1wb3J0IHsgU2xpZGVDb21wb25lbnQgfSBmcm9tICcuL3NsaWRlLmNvbXBvbmVudCc7XG5pbXBvcnQgeyBDYXJvdXNlbENvbmZpZyB9IGZyb20gJy4vY2Fyb3VzZWwuY29uZmlnJztcbmltcG9ydCB7IEJ1dHRvbnNNb2R1bGUgfSBmcm9tICcuLi9idXR0b25zL2J1dHRvbnMubW9kdWxlJztcblxuQE5nTW9kdWxlKHtcbiAgaW1wb3J0czogW0NvbW1vbk1vZHVsZSwgQnV0dG9uc01vZHVsZV0sXG4gIGRlY2xhcmF0aW9uczogW1NsaWRlQ29tcG9uZW50LCBDYXJvdXNlbENvbXBvbmVudF0sXG4gIGV4cG9ydHM6IFtTbGlkZUNvbXBvbmVudCwgQ2Fyb3VzZWxDb21wb25lbnRdLFxuICBwcm92aWRlcnM6IFtDYXJvdXNlbENvbmZpZ10sXG59KVxuZXhwb3J0IGNsYXNzIENhcm91c2VsTW9kdWxlIHtcbiAgcHVibGljIHN0YXRpYyBmb3JSb290KCk6IE1vZHVsZVdpdGhQcm92aWRlcnM8Q2Fyb3VzZWxNb2R1bGU+IHtcbiAgICByZXR1cm4geyBuZ01vZHVsZTogQ2Fyb3VzZWxNb2R1bGUsIHByb3ZpZGVyczogW10gfTtcbiAgfVxufVxuIl19