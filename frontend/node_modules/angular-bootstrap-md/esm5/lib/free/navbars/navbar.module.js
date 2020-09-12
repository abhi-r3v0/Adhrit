import { __decorate } from "tslib";
import { LinksComponent } from './links.component';
import { LogoComponent } from './logo.component';
import { NavbarService } from './navbar.service';
import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { NavbarComponent } from './navbar.component';
import { NavlinksComponent } from './navlinks.component';
var NavbarModule = /** @class */ (function () {
    function NavbarModule() {
    }
    NavbarModule = __decorate([
        NgModule({
            imports: [CommonModule],
            declarations: [NavbarComponent, LinksComponent, LogoComponent, NavlinksComponent],
            exports: [NavbarComponent, LinksComponent, LogoComponent, NavlinksComponent],
            providers: [NavbarService]
        })
    ], NavbarModule);
    return NavbarModule;
}());
export { NavbarModule };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmF2YmFyLm1vZHVsZS5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvbmF2YmFycy9uYXZiYXIubW9kdWxlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsY0FBYyxFQUFFLE1BQU0sbUJBQW1CLENBQUM7QUFDbkQsT0FBTyxFQUFFLGFBQWEsRUFBRSxNQUFNLGtCQUFrQixDQUFDO0FBQ2pELE9BQU8sRUFBRSxhQUFhLEVBQUUsTUFBTSxrQkFBa0IsQ0FBQztBQUNqRCxPQUFPLEVBQUMsWUFBWSxFQUFDLE1BQU0saUJBQWlCLENBQUM7QUFDN0MsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUN2QyxPQUFPLEVBQUMsZUFBZSxFQUFDLE1BQU0sb0JBQW9CLENBQUM7QUFDbkQsT0FBTyxFQUFFLGlCQUFpQixFQUFFLE1BQU0sc0JBQXNCLENBQUM7QUFPekQ7SUFBQTtJQUEyQixDQUFDO0lBQWYsWUFBWTtRQU54QixRQUFRLENBQUM7WUFDUixPQUFPLEVBQUUsQ0FBQyxZQUFZLENBQUM7WUFDdkIsWUFBWSxFQUFFLENBQUMsZUFBZSxFQUFFLGNBQWMsRUFBRSxhQUFhLEVBQUUsaUJBQWlCLENBQUM7WUFDakYsT0FBTyxFQUFFLENBQUMsZUFBZSxFQUFFLGNBQWMsRUFBRyxhQUFhLEVBQUUsaUJBQWlCLENBQUM7WUFDN0UsU0FBUyxFQUFFLENBQUMsYUFBYSxDQUFDO1NBQzNCLENBQUM7T0FDVyxZQUFZLENBQUc7SUFBRCxtQkFBQztDQUFBLEFBQTVCLElBQTRCO1NBQWYsWUFBWSIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IExpbmtzQ29tcG9uZW50IH0gZnJvbSAnLi9saW5rcy5jb21wb25lbnQnO1xuaW1wb3J0IHsgTG9nb0NvbXBvbmVudCB9IGZyb20gJy4vbG9nby5jb21wb25lbnQnO1xuaW1wb3J0IHsgTmF2YmFyU2VydmljZSB9IGZyb20gJy4vbmF2YmFyLnNlcnZpY2UnO1xuaW1wb3J0IHtDb21tb25Nb2R1bGV9IGZyb20gJ0Bhbmd1bGFyL2NvbW1vbic7XG5pbXBvcnQge05nTW9kdWxlfSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7TmF2YmFyQ29tcG9uZW50fSBmcm9tICcuL25hdmJhci5jb21wb25lbnQnO1xuaW1wb3J0IHsgTmF2bGlua3NDb21wb25lbnQgfSBmcm9tICcuL25hdmxpbmtzLmNvbXBvbmVudCc7XG5ATmdNb2R1bGUoe1xuICBpbXBvcnRzOiBbQ29tbW9uTW9kdWxlXSxcbiAgZGVjbGFyYXRpb25zOiBbTmF2YmFyQ29tcG9uZW50LCBMaW5rc0NvbXBvbmVudCwgTG9nb0NvbXBvbmVudCwgTmF2bGlua3NDb21wb25lbnRdLFxuICBleHBvcnRzOiBbTmF2YmFyQ29tcG9uZW50LCBMaW5rc0NvbXBvbmVudCAsIExvZ29Db21wb25lbnQsIE5hdmxpbmtzQ29tcG9uZW50XSxcbiAgcHJvdmlkZXJzOiBbTmF2YmFyU2VydmljZV1cbn0pXG5leHBvcnQgY2xhc3MgTmF2YmFyTW9kdWxlIHt9XG4iXX0=