import { __decorate, __metadata } from "tslib";
import { NavbarService } from './navbar.service';
import { AfterContentInit, Component, ContentChildren, ElementRef, QueryList, EventEmitter, Output, Renderer2, } from '@angular/core';
import { RouterLinkWithHref } from '@angular/router';
let LinksComponent = class LinksComponent {
    constructor(_navbarService, renderer) {
        this._navbarService = _navbarService;
        this.renderer = renderer;
        this.linkClick = new EventEmitter();
    }
    ngAfterContentInit() {
        setTimeout(() => {
            this.links.forEach((link) => {
                this.renderer.listen(link.nativeElement, 'click', () => {
                    this._navbarService.setNavbarLinkClicks();
                });
            });
        }, 0);
    }
};
LinksComponent.ctorParameters = () => [
    { type: NavbarService },
    { type: Renderer2 }
];
__decorate([
    ContentChildren(RouterLinkWithHref, { read: ElementRef, descendants: true }),
    __metadata("design:type", QueryList)
], LinksComponent.prototype, "links", void 0);
__decorate([
    Output(),
    __metadata("design:type", Object)
], LinksComponent.prototype, "linkClick", void 0);
LinksComponent = __decorate([
    Component({
        // tslint:disable-next-line:component-selector
        selector: 'links',
        template: `
    <ng-content></ng-content>
  `
    }),
    __metadata("design:paramtypes", [NavbarService, Renderer2])
], LinksComponent);
export { LinksComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibGlua3MuY29tcG9uZW50LmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9uYXZiYXJzL2xpbmtzLmNvbXBvbmVudC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUEsT0FBTyxFQUFFLGFBQWEsRUFBRSxNQUFNLGtCQUFrQixDQUFDO0FBQ2pELE9BQU8sRUFDTCxnQkFBZ0IsRUFDaEIsU0FBUyxFQUNULGVBQWUsRUFDZixVQUFVLEVBQ1YsU0FBUyxFQUNULFlBQVksRUFDWixNQUFNLEVBQ04sU0FBUyxHQUNWLE1BQU0sZUFBZSxDQUFDO0FBQ3ZCLE9BQU8sRUFBRSxrQkFBa0IsRUFBRSxNQUFNLGlCQUFpQixDQUFDO0FBU3JELElBQWEsY0FBYyxHQUEzQixNQUFhLGNBQWM7SUFNekIsWUFBb0IsY0FBNkIsRUFBVSxRQUFtQjtRQUExRCxtQkFBYyxHQUFkLGNBQWMsQ0FBZTtRQUFVLGFBQVEsR0FBUixRQUFRLENBQVc7UUFGcEUsY0FBUyxHQUFHLElBQUksWUFBWSxFQUFPLENBQUM7SUFFbUMsQ0FBQztJQUVsRixrQkFBa0I7UUFDaEIsVUFBVSxDQUFDLEdBQUcsRUFBRTtZQUNkLElBQUksQ0FBQyxLQUFLLENBQUMsT0FBTyxDQUFDLENBQUMsSUFBNkIsRUFBRSxFQUFFO2dCQUNuRCxJQUFJLENBQUMsUUFBUSxDQUFDLE1BQU0sQ0FBQyxJQUFJLENBQUMsYUFBYSxFQUFFLE9BQU8sRUFBRSxHQUFHLEVBQUU7b0JBQ3JELElBQUksQ0FBQyxjQUFjLENBQUMsbUJBQW1CLEVBQUUsQ0FBQztnQkFDNUMsQ0FBQyxDQUFDLENBQUM7WUFDTCxDQUFDLENBQUMsQ0FBQztRQUNMLENBQUMsRUFBRSxDQUFDLENBQUMsQ0FBQztJQUNSLENBQUM7Q0FDRixDQUFBOztZQVhxQyxhQUFhO1lBQW9CLFNBQVM7O0FBSjlFO0lBREMsZUFBZSxDQUFDLGtCQUFrQixFQUFFLEVBQUUsSUFBSSxFQUFFLFVBQVUsRUFBRSxXQUFXLEVBQUUsSUFBSSxFQUFFLENBQUM7OEJBQ3RFLFNBQVM7NkNBQWE7QUFFbkI7SUFBVCxNQUFNLEVBQUU7O2lEQUFxQztBQUpuQyxjQUFjO0lBUDFCLFNBQVMsQ0FBQztRQUNULDhDQUE4QztRQUM5QyxRQUFRLEVBQUUsT0FBTztRQUNqQixRQUFRLEVBQUU7O0dBRVQ7S0FDRixDQUFDO3FDQU9vQyxhQUFhLEVBQW9CLFNBQVM7R0FObkUsY0FBYyxDQWlCMUI7U0FqQlksY0FBYyIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IE5hdmJhclNlcnZpY2UgfSBmcm9tICcuL25hdmJhci5zZXJ2aWNlJztcbmltcG9ydCB7XG4gIEFmdGVyQ29udGVudEluaXQsXG4gIENvbXBvbmVudCxcbiAgQ29udGVudENoaWxkcmVuLFxuICBFbGVtZW50UmVmLFxuICBRdWVyeUxpc3QsXG4gIEV2ZW50RW1pdHRlcixcbiAgT3V0cHV0LFxuICBSZW5kZXJlcjIsXG59IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgUm91dGVyTGlua1dpdGhIcmVmIH0gZnJvbSAnQGFuZ3VsYXIvcm91dGVyJztcblxuQENvbXBvbmVudCh7XG4gIC8vIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTpjb21wb25lbnQtc2VsZWN0b3JcbiAgc2VsZWN0b3I6ICdsaW5rcycsXG4gIHRlbXBsYXRlOiBgXG4gICAgPG5nLWNvbnRlbnQ+PC9uZy1jb250ZW50PlxuICBgLFxufSlcbmV4cG9ydCBjbGFzcyBMaW5rc0NvbXBvbmVudCBpbXBsZW1lbnRzIEFmdGVyQ29udGVudEluaXQge1xuICBAQ29udGVudENoaWxkcmVuKFJvdXRlckxpbmtXaXRoSHJlZiwgeyByZWFkOiBFbGVtZW50UmVmLCBkZXNjZW5kYW50czogdHJ1ZSB9KVxuICBsaW5rczogUXVlcnlMaXN0PEVsZW1lbnRSZWY+O1xuXG4gIEBPdXRwdXQoKSBsaW5rQ2xpY2sgPSBuZXcgRXZlbnRFbWl0dGVyPGFueT4oKTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9uYXZiYXJTZXJ2aWNlOiBOYXZiYXJTZXJ2aWNlLCBwcml2YXRlIHJlbmRlcmVyOiBSZW5kZXJlcjIpIHt9XG5cbiAgbmdBZnRlckNvbnRlbnRJbml0KCkge1xuICAgIHNldFRpbWVvdXQoKCkgPT4ge1xuICAgICAgdGhpcy5saW5rcy5mb3JFYWNoKChsaW5rOiBFbGVtZW50UmVmPEhUTUxFbGVtZW50PikgPT4ge1xuICAgICAgICB0aGlzLnJlbmRlcmVyLmxpc3RlbihsaW5rLm5hdGl2ZUVsZW1lbnQsICdjbGljaycsICgpID0+IHtcbiAgICAgICAgICB0aGlzLl9uYXZiYXJTZXJ2aWNlLnNldE5hdmJhckxpbmtDbGlja3MoKTtcbiAgICAgICAgfSk7XG4gICAgICB9KTtcbiAgICB9LCAwKTtcbiAgfVxufVxuIl19