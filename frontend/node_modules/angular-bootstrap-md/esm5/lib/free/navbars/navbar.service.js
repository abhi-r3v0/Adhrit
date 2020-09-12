import { __decorate } from "tslib";
import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
var NavbarService = /** @class */ (function () {
    function NavbarService() {
        this.navbarLinkClicks = new Subject();
    }
    NavbarService.prototype.getNavbarLinkClicks = function () {
        return this.navbarLinkClicks.asObservable();
    };
    NavbarService.prototype.setNavbarLinkClicks = function () {
        this.navbarLinkClicks.next();
    };
    NavbarService = __decorate([
        Injectable()
    ], NavbarService);
    return NavbarService;
}());
export { NavbarService };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmF2YmFyLnNlcnZpY2UuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL25hdmJhcnMvbmF2YmFyLnNlcnZpY2UudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxVQUFVLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFDM0MsT0FBTyxFQUFFLE9BQU8sRUFBYyxNQUFNLE1BQU0sQ0FBQztBQUczQztJQUFBO1FBQ1UscUJBQWdCLEdBQUcsSUFBSSxPQUFPLEVBQU8sQ0FBQztJQVNoRCxDQUFDO0lBUEMsMkNBQW1CLEdBQW5CO1FBQ0UsT0FBTyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsWUFBWSxFQUFFLENBQUM7SUFDOUMsQ0FBQztJQUVELDJDQUFtQixHQUFuQjtRQUNFLElBQUksQ0FBQyxnQkFBZ0IsQ0FBQyxJQUFJLEVBQUUsQ0FBQztJQUMvQixDQUFDO0lBVFUsYUFBYTtRQUR6QixVQUFVLEVBQUU7T0FDQSxhQUFhLENBVXpCO0lBQUQsb0JBQUM7Q0FBQSxBQVZELElBVUM7U0FWWSxhQUFhIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgSW5qZWN0YWJsZSB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgU3ViamVjdCwgT2JzZXJ2YWJsZSB9IGZyb20gJ3J4anMnO1xuXG5ASW5qZWN0YWJsZSgpXG5leHBvcnQgY2xhc3MgTmF2YmFyU2VydmljZSB7XG4gIHByaXZhdGUgbmF2YmFyTGlua0NsaWNrcyA9IG5ldyBTdWJqZWN0PGFueT4oKTtcblxuICBnZXROYXZiYXJMaW5rQ2xpY2tzKCk6IE9ic2VydmFibGU8YW55PiB7XG4gICAgcmV0dXJuIHRoaXMubmF2YmFyTGlua0NsaWNrcy5hc09ic2VydmFibGUoKTtcbiAgfVxuXG4gIHNldE5hdmJhckxpbmtDbGlja3MoKSB7XG4gICAgdGhpcy5uYXZiYXJMaW5rQ2xpY2tzLm5leHQoKTtcbiAgfVxufVxuIl19