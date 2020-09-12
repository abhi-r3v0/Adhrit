import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { NgxSpinnerComponent } from './ngx-spinner.component';
import { SafeHtmlPipe } from './safe-html.pipe';
export class NgxSpinnerModule {
}
NgxSpinnerModule.decorators = [
    { type: NgModule, args: [{
                imports: [
                    CommonModule
                ],
                declarations: [NgxSpinnerComponent, SafeHtmlPipe],
                exports: [NgxSpinnerComponent]
            },] }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmd4LXNwaW5uZXIubW9kdWxlLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vcHJvamVjdHMvbmd4LXNwaW5uZXIvc3JjL2xpYi9uZ3gtc3Bpbm5lci5tb2R1bGUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUEsT0FBTyxFQUFFLFFBQVEsRUFBRSxNQUFNLGVBQWUsQ0FBQztBQUN6QyxPQUFPLEVBQUUsWUFBWSxFQUFFLE1BQU0saUJBQWlCLENBQUM7QUFDL0MsT0FBTyxFQUFFLG1CQUFtQixFQUFFLE1BQU0seUJBQXlCLENBQUM7QUFDOUQsT0FBTyxFQUFFLFlBQVksRUFBRSxNQUFNLGtCQUFrQixDQUFDO0FBU2hELE1BQU0sT0FBTyxnQkFBZ0I7OztZQVA1QixRQUFRLFNBQUM7Z0JBQ1IsT0FBTyxFQUFFO29CQUNQLFlBQVk7aUJBQ2I7Z0JBQ0QsWUFBWSxFQUFFLENBQUMsbUJBQW1CLEVBQUUsWUFBWSxDQUFDO2dCQUNqRCxPQUFPLEVBQUUsQ0FBQyxtQkFBbUIsQ0FBQzthQUMvQiIsInNvdXJjZXNDb250ZW50IjpbImltcG9ydCB7IE5nTW9kdWxlIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQgeyBDb21tb25Nb2R1bGUgfSBmcm9tICdAYW5ndWxhci9jb21tb24nO1xuaW1wb3J0IHsgTmd4U3Bpbm5lckNvbXBvbmVudCB9IGZyb20gJy4vbmd4LXNwaW5uZXIuY29tcG9uZW50JztcbmltcG9ydCB7IFNhZmVIdG1sUGlwZSB9IGZyb20gJy4vc2FmZS1odG1sLnBpcGUnO1xuXG5ATmdNb2R1bGUoe1xuICBpbXBvcnRzOiBbXG4gICAgQ29tbW9uTW9kdWxlXG4gIF0sXG4gIGRlY2xhcmF0aW9uczogW05neFNwaW5uZXJDb21wb25lbnQsIFNhZmVIdG1sUGlwZV0sXG4gIGV4cG9ydHM6IFtOZ3hTcGlubmVyQ29tcG9uZW50XVxufSlcbmV4cG9ydCBjbGFzcyBOZ3hTcGlubmVyTW9kdWxlIHsgfVxuIl19