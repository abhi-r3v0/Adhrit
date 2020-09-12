import { __decorate } from "tslib";
import { MdbCardFooterComponent } from './mdb-card-footer.component';
import { MdbCardTitleComponent } from './mdb-card-title.component';
import { MdbCardTextComponent } from './mdb-card-text.component';
import { MdbCardBodyComponent } from './mdb-card-body.component';
import { MdbCardComponent } from './mdb-card.component';
import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { MdbCardImageComponent } from './mdb-card-image.component';
import { MdbCardHeaderComponent } from './mdb-card-header.component';
var CardsModule = /** @class */ (function () {
    function CardsModule() {
    }
    CardsModule_1 = CardsModule;
    CardsModule.forRoot = function () {
        return { ngModule: CardsModule_1, providers: [] };
    };
    var CardsModule_1;
    CardsModule = CardsModule_1 = __decorate([
        NgModule({
            imports: [CommonModule],
            declarations: [
                MdbCardComponent,
                MdbCardBodyComponent,
                MdbCardImageComponent,
                MdbCardTextComponent,
                MdbCardTitleComponent,
                MdbCardFooterComponent,
                MdbCardHeaderComponent,
            ],
            exports: [
                MdbCardComponent,
                MdbCardBodyComponent,
                MdbCardImageComponent,
                MdbCardTextComponent,
                MdbCardTitleComponent,
                MdbCardFooterComponent,
                MdbCardHeaderComponent,
            ],
        })
    ], CardsModule);
    return CardsModule;
}());
export { CardsModule };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY2FyZHMubW9kdWxlLmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9jYXJkcy9jYXJkcy5tb2R1bGUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxzQkFBc0IsRUFBRSxNQUFNLDZCQUE2QixDQUFDO0FBQ3JFLE9BQU8sRUFBRSxxQkFBcUIsRUFBRSxNQUFNLDRCQUE0QixDQUFDO0FBQ25FLE9BQU8sRUFBRSxvQkFBb0IsRUFBRSxNQUFNLDJCQUEyQixDQUFDO0FBQ2pFLE9BQU8sRUFBRSxvQkFBb0IsRUFBRSxNQUFNLDJCQUEyQixDQUFDO0FBQ2pFLE9BQU8sRUFBRSxnQkFBZ0IsRUFBRSxNQUFNLHNCQUFzQixDQUFDO0FBQ3hELE9BQU8sRUFBRSxZQUFZLEVBQUUsTUFBTSxpQkFBaUIsQ0FBQztBQUMvQyxPQUFPLEVBQUUsUUFBUSxFQUF1QixNQUFNLGVBQWUsQ0FBQztBQUM5RCxPQUFPLEVBQUUscUJBQXFCLEVBQUUsTUFBTSw0QkFBNEIsQ0FBQztBQUNuRSxPQUFPLEVBQUUsc0JBQXNCLEVBQUUsTUFBTSw2QkFBNkIsQ0FBQztBQXVCckU7SUFBQTtJQUlBLENBQUM7b0JBSlksV0FBVztJQUNSLG1CQUFPLEdBQXJCO1FBQ0UsT0FBTyxFQUFFLFFBQVEsRUFBRSxhQUFXLEVBQUUsU0FBUyxFQUFFLEVBQUUsRUFBRSxDQUFDO0lBQ2xELENBQUM7O0lBSFUsV0FBVztRQXJCdkIsUUFBUSxDQUFDO1lBQ1IsT0FBTyxFQUFFLENBQUMsWUFBWSxDQUFDO1lBQ3ZCLFlBQVksRUFBRTtnQkFDWixnQkFBZ0I7Z0JBQ2hCLG9CQUFvQjtnQkFDcEIscUJBQXFCO2dCQUNyQixvQkFBb0I7Z0JBQ3BCLHFCQUFxQjtnQkFDckIsc0JBQXNCO2dCQUN0QixzQkFBc0I7YUFDdkI7WUFDRCxPQUFPLEVBQUU7Z0JBQ1AsZ0JBQWdCO2dCQUNoQixvQkFBb0I7Z0JBQ3BCLHFCQUFxQjtnQkFDckIsb0JBQW9CO2dCQUNwQixxQkFBcUI7Z0JBQ3JCLHNCQUFzQjtnQkFDdEIsc0JBQXNCO2FBQ3ZCO1NBQ0YsQ0FBQztPQUNXLFdBQVcsQ0FJdkI7SUFBRCxrQkFBQztDQUFBLEFBSkQsSUFJQztTQUpZLFdBQVciLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBNZGJDYXJkRm9vdGVyQ29tcG9uZW50IH0gZnJvbSAnLi9tZGItY2FyZC1mb290ZXIuY29tcG9uZW50JztcbmltcG9ydCB7IE1kYkNhcmRUaXRsZUNvbXBvbmVudCB9IGZyb20gJy4vbWRiLWNhcmQtdGl0bGUuY29tcG9uZW50JztcbmltcG9ydCB7IE1kYkNhcmRUZXh0Q29tcG9uZW50IH0gZnJvbSAnLi9tZGItY2FyZC10ZXh0LmNvbXBvbmVudCc7XG5pbXBvcnQgeyBNZGJDYXJkQm9keUNvbXBvbmVudCB9IGZyb20gJy4vbWRiLWNhcmQtYm9keS5jb21wb25lbnQnO1xuaW1wb3J0IHsgTWRiQ2FyZENvbXBvbmVudCB9IGZyb20gJy4vbWRiLWNhcmQuY29tcG9uZW50JztcbmltcG9ydCB7IENvbW1vbk1vZHVsZSB9IGZyb20gJ0Bhbmd1bGFyL2NvbW1vbic7XG5pbXBvcnQgeyBOZ01vZHVsZSwgTW9kdWxlV2l0aFByb3ZpZGVycyB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgTWRiQ2FyZEltYWdlQ29tcG9uZW50IH0gZnJvbSAnLi9tZGItY2FyZC1pbWFnZS5jb21wb25lbnQnO1xuaW1wb3J0IHsgTWRiQ2FyZEhlYWRlckNvbXBvbmVudCB9IGZyb20gJy4vbWRiLWNhcmQtaGVhZGVyLmNvbXBvbmVudCc7XG5cbkBOZ01vZHVsZSh7XG4gIGltcG9ydHM6IFtDb21tb25Nb2R1bGVdLFxuICBkZWNsYXJhdGlvbnM6IFtcbiAgICBNZGJDYXJkQ29tcG9uZW50LFxuICAgIE1kYkNhcmRCb2R5Q29tcG9uZW50LFxuICAgIE1kYkNhcmRJbWFnZUNvbXBvbmVudCxcbiAgICBNZGJDYXJkVGV4dENvbXBvbmVudCxcbiAgICBNZGJDYXJkVGl0bGVDb21wb25lbnQsXG4gICAgTWRiQ2FyZEZvb3RlckNvbXBvbmVudCxcbiAgICBNZGJDYXJkSGVhZGVyQ29tcG9uZW50LFxuICBdLFxuICBleHBvcnRzOiBbXG4gICAgTWRiQ2FyZENvbXBvbmVudCxcbiAgICBNZGJDYXJkQm9keUNvbXBvbmVudCxcbiAgICBNZGJDYXJkSW1hZ2VDb21wb25lbnQsXG4gICAgTWRiQ2FyZFRleHRDb21wb25lbnQsXG4gICAgTWRiQ2FyZFRpdGxlQ29tcG9uZW50LFxuICAgIE1kYkNhcmRGb290ZXJDb21wb25lbnQsXG4gICAgTWRiQ2FyZEhlYWRlckNvbXBvbmVudCxcbiAgXSxcbn0pXG5leHBvcnQgY2xhc3MgQ2FyZHNNb2R1bGUge1xuICBwdWJsaWMgc3RhdGljIGZvclJvb3QoKTogTW9kdWxlV2l0aFByb3ZpZGVyczxDYXJkc01vZHVsZT4ge1xuICAgIHJldHVybiB7IG5nTW9kdWxlOiBDYXJkc01vZHVsZSwgcHJvdmlkZXJzOiBbXSB9O1xuICB9XG59XG4iXX0=