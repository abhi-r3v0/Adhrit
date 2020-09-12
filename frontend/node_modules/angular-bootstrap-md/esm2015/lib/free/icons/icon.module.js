import { __decorate } from "tslib";
import { MdbIconComponent } from './icon.component';
import { NgModule } from '@angular/core';
import { FabDirective } from './directives/fab.directive';
import { FarDirective } from './directives/far.directive';
import { FasDirective } from './directives/fas.directive';
import { FalDirective } from './directives/fal.directive';
import { CommonModule } from '@angular/common';
import { FadDirective } from './directives/fad.directive';
let IconsModule = class IconsModule {
};
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
export { IconsModule };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaWNvbi5tb2R1bGUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL2ljb25zL2ljb24ubW9kdWxlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7QUFBQSxPQUFPLEVBQUUsZ0JBQWdCLEVBQUUsTUFBTSxrQkFBa0IsQ0FBQztBQUNwRCxPQUFPLEVBQUUsUUFBUSxFQUFFLE1BQU0sZUFBZSxDQUFDO0FBQ3pDLE9BQU8sRUFBRSxZQUFZLEVBQUUsTUFBTSw0QkFBNEIsQ0FBQztBQUMxRCxPQUFPLEVBQUUsWUFBWSxFQUFFLE1BQU0sNEJBQTRCLENBQUM7QUFDMUQsT0FBTyxFQUFFLFlBQVksRUFBRSxNQUFNLDRCQUE0QixDQUFDO0FBQzFELE9BQU8sRUFBRSxZQUFZLEVBQUUsTUFBTSw0QkFBNEIsQ0FBQztBQUMxRCxPQUFPLEVBQUUsWUFBWSxFQUFFLE1BQU0saUJBQWlCLENBQUM7QUFDL0MsT0FBTyxFQUFFLFlBQVksRUFBRSxNQUFNLDRCQUE0QixDQUFDO0FBYzFELElBQWEsV0FBVyxHQUF4QixNQUFhLFdBQVc7Q0FBRyxDQUFBO0FBQWQsV0FBVztJQVp2QixRQUFRLENBQUM7UUFDUixZQUFZLEVBQUU7WUFDWixnQkFBZ0I7WUFDaEIsWUFBWTtZQUNaLFlBQVk7WUFDWixZQUFZO1lBQ1osWUFBWTtZQUNaLFlBQVk7U0FDYjtRQUNELE9BQU8sRUFBRSxDQUFDLFlBQVksQ0FBQztRQUN2QixPQUFPLEVBQUUsQ0FBQyxnQkFBZ0IsRUFBRSxZQUFZLEVBQUUsWUFBWSxFQUFFLFlBQVksRUFBRSxZQUFZLEVBQUUsWUFBWSxDQUFDO0tBQ2xHLENBQUM7R0FDVyxXQUFXLENBQUc7U0FBZCxXQUFXIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgTWRiSWNvbkNvbXBvbmVudCB9IGZyb20gJy4vaWNvbi5jb21wb25lbnQnO1xuaW1wb3J0IHsgTmdNb2R1bGUgfSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7IEZhYkRpcmVjdGl2ZSB9IGZyb20gJy4vZGlyZWN0aXZlcy9mYWIuZGlyZWN0aXZlJztcbmltcG9ydCB7IEZhckRpcmVjdGl2ZSB9IGZyb20gJy4vZGlyZWN0aXZlcy9mYXIuZGlyZWN0aXZlJztcbmltcG9ydCB7IEZhc0RpcmVjdGl2ZSB9IGZyb20gJy4vZGlyZWN0aXZlcy9mYXMuZGlyZWN0aXZlJztcbmltcG9ydCB7IEZhbERpcmVjdGl2ZSB9IGZyb20gJy4vZGlyZWN0aXZlcy9mYWwuZGlyZWN0aXZlJztcbmltcG9ydCB7IENvbW1vbk1vZHVsZSB9IGZyb20gJ0Bhbmd1bGFyL2NvbW1vbic7XG5pbXBvcnQgeyBGYWREaXJlY3RpdmUgfSBmcm9tICcuL2RpcmVjdGl2ZXMvZmFkLmRpcmVjdGl2ZSc7XG5cbkBOZ01vZHVsZSh7XG4gIGRlY2xhcmF0aW9uczogW1xuICAgIE1kYkljb25Db21wb25lbnQsXG4gICAgRmFiRGlyZWN0aXZlLFxuICAgIEZhckRpcmVjdGl2ZSxcbiAgICBGYXNEaXJlY3RpdmUsXG4gICAgRmFsRGlyZWN0aXZlLFxuICAgIEZhZERpcmVjdGl2ZSxcbiAgXSxcbiAgaW1wb3J0czogW0NvbW1vbk1vZHVsZV0sXG4gIGV4cG9ydHM6IFtNZGJJY29uQ29tcG9uZW50LCBGYWJEaXJlY3RpdmUsIEZhckRpcmVjdGl2ZSwgRmFzRGlyZWN0aXZlLCBGYWxEaXJlY3RpdmUsIEZhZERpcmVjdGl2ZV0sXG59KVxuZXhwb3J0IGNsYXNzIEljb25zTW9kdWxlIHt9XG4iXX0=