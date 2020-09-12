import { __decorate } from "tslib";
import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
let NavbarService = class NavbarService {
    constructor() {
        this.navbarLinkClicks = new Subject();
    }
    getNavbarLinkClicks() {
        return this.navbarLinkClicks.asObservable();
    }
    setNavbarLinkClicks() {
        this.navbarLinkClicks.next();
    }
};
NavbarService = __decorate([
    Injectable()
], NavbarService);
export { NavbarService };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmF2YmFyLnNlcnZpY2UuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL25hdmJhcnMvbmF2YmFyLnNlcnZpY2UudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxVQUFVLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFDM0MsT0FBTyxFQUFFLE9BQU8sRUFBYyxNQUFNLE1BQU0sQ0FBQztBQUczQyxJQUFhLGFBQWEsR0FBMUIsTUFBYSxhQUFhO0lBQTFCO1FBQ1UscUJBQWdCLEdBQUcsSUFBSSxPQUFPLEVBQU8sQ0FBQztJQVNoRCxDQUFDO0lBUEMsbUJBQW1CO1FBQ2pCLE9BQU8sSUFBSSxDQUFDLGdCQUFnQixDQUFDLFlBQVksRUFBRSxDQUFDO0lBQzlDLENBQUM7SUFFRCxtQkFBbUI7UUFDakIsSUFBSSxDQUFDLGdCQUFnQixDQUFDLElBQUksRUFBRSxDQUFDO0lBQy9CLENBQUM7Q0FDRixDQUFBO0FBVlksYUFBYTtJQUR6QixVQUFVLEVBQUU7R0FDQSxhQUFhLENBVXpCO1NBVlksYUFBYSIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IEluamVjdGFibGUgfSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7IFN1YmplY3QsIE9ic2VydmFibGUgfSBmcm9tICdyeGpzJztcblxuQEluamVjdGFibGUoKVxuZXhwb3J0IGNsYXNzIE5hdmJhclNlcnZpY2Uge1xuICBwcml2YXRlIG5hdmJhckxpbmtDbGlja3MgPSBuZXcgU3ViamVjdDxhbnk+KCk7XG5cbiAgZ2V0TmF2YmFyTGlua0NsaWNrcygpOiBPYnNlcnZhYmxlPGFueT4ge1xuICAgIHJldHVybiB0aGlzLm5hdmJhckxpbmtDbGlja3MuYXNPYnNlcnZhYmxlKCk7XG4gIH1cblxuICBzZXROYXZiYXJMaW5rQ2xpY2tzKCkge1xuICAgIHRoaXMubmF2YmFyTGlua0NsaWNrcy5uZXh0KCk7XG4gIH1cbn1cbiJdfQ==