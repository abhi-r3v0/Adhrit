import { __decorate, __metadata } from "tslib";
import { ChangeDetectionStrategy, Component, HostBinding } from '@angular/core';
import { BsDropdownState } from './dropdown.state';
let BsDropdownContainerComponent = class BsDropdownContainerComponent {
    constructor(_state) {
        this._state = _state;
        this.isOpen = false;
        this.display = 'block';
        this.position = 'absolute';
        this._subscription = _state.isOpenChange.subscribe((value) => {
            this.isOpen = value;
        });
    }
    get direction() {
        return this._state.direction;
    }
    ngOnDestroy() {
        this._subscription.unsubscribe();
    }
};
BsDropdownContainerComponent.ctorParameters = () => [
    { type: BsDropdownState }
];
__decorate([
    HostBinding('style.display'),
    __metadata("design:type", Object)
], BsDropdownContainerComponent.prototype, "display", void 0);
__decorate([
    HostBinding('style.position'),
    __metadata("design:type", Object)
], BsDropdownContainerComponent.prototype, "position", void 0);
BsDropdownContainerComponent = __decorate([
    Component({
        selector: 'mdb-dropdown-container',
        changeDetection: ChangeDetectionStrategy.OnPush,
        template: `
    <div
      [class.dropup]="direction === 'up'"
      [class.dropdown]="direction === 'down'"
      [class.show]="isOpen"
      [class.open]="isOpen"
    >
      <ng-content></ng-content>
    </div>
  `
    }),
    __metadata("design:paramtypes", [BsDropdownState])
], BsDropdownContainerComponent);
export { BsDropdownContainerComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZHJvcGRvd24tY29udGFpbmVyLmNvbXBvbmVudC5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvZHJvcGRvd24vZHJvcGRvd24tY29udGFpbmVyLmNvbXBvbmVudC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUEsT0FBTyxFQUFFLHVCQUF1QixFQUFFLFNBQVMsRUFBYSxXQUFXLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFDM0YsT0FBTyxFQUFFLGVBQWUsRUFBRSxNQUFNLGtCQUFrQixDQUFDO0FBZ0JuRCxJQUFhLDRCQUE0QixHQUF6QyxNQUFhLDRCQUE0QjtJQVl2QyxZQUFvQixNQUF1QjtRQUF2QixXQUFNLEdBQU4sTUFBTSxDQUFpQjtRQVgzQyxXQUFNLEdBQUcsS0FBSyxDQUFDO1FBRWUsWUFBTyxHQUFHLE9BQU8sQ0FBQztRQUNqQixhQUFRLEdBQUcsVUFBVSxDQUFDO1FBU25ELElBQUksQ0FBQyxhQUFhLEdBQUcsTUFBTSxDQUFDLFlBQVksQ0FBQyxTQUFTLENBQUMsQ0FBQyxLQUFjLEVBQUUsRUFBRTtZQUNwRSxJQUFJLENBQUMsTUFBTSxHQUFHLEtBQUssQ0FBQztRQUN0QixDQUFDLENBQUMsQ0FBQztJQUNMLENBQUM7SUFWRCxJQUFJLFNBQVM7UUFDWCxPQUFPLElBQUksQ0FBQyxNQUFNLENBQUMsU0FBUyxDQUFDO0lBQy9CLENBQUM7SUFVRCxXQUFXO1FBQ1QsSUFBSSxDQUFDLGFBQWEsQ0FBQyxXQUFXLEVBQUUsQ0FBQztJQUNuQyxDQUFDO0NBQ0YsQ0FBQTs7WUFUNkIsZUFBZTs7QUFUYjtJQUE3QixXQUFXLENBQUMsZUFBZSxDQUFDOzs2REFBbUI7QUFDakI7SUFBOUIsV0FBVyxDQUFDLGdCQUFnQixDQUFDOzs4REFBdUI7QUFKMUMsNEJBQTRCO0lBZHhDLFNBQVMsQ0FBQztRQUNULFFBQVEsRUFBRSx3QkFBd0I7UUFDbEMsZUFBZSxFQUFFLHVCQUF1QixDQUFDLE1BQU07UUFDL0MsUUFBUSxFQUFFOzs7Ozs7Ozs7R0FTVDtLQUNGLENBQUM7cUNBYTRCLGVBQWU7R0FaaEMsNEJBQTRCLENBcUJ4QztTQXJCWSw0QkFBNEIiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBDaGFuZ2VEZXRlY3Rpb25TdHJhdGVneSwgQ29tcG9uZW50LCBPbkRlc3Ryb3ksIEhvc3RCaW5kaW5nIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQgeyBCc0Ryb3Bkb3duU3RhdGUgfSBmcm9tICcuL2Ryb3Bkb3duLnN0YXRlJztcblxuQENvbXBvbmVudCh7XG4gIHNlbGVjdG9yOiAnbWRiLWRyb3Bkb3duLWNvbnRhaW5lcicsXG4gIGNoYW5nZURldGVjdGlvbjogQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kuT25QdXNoLFxuICB0ZW1wbGF0ZTogYFxuICAgIDxkaXZcbiAgICAgIFtjbGFzcy5kcm9wdXBdPVwiZGlyZWN0aW9uID09PSAndXAnXCJcbiAgICAgIFtjbGFzcy5kcm9wZG93bl09XCJkaXJlY3Rpb24gPT09ICdkb3duJ1wiXG4gICAgICBbY2xhc3Muc2hvd109XCJpc09wZW5cIlxuICAgICAgW2NsYXNzLm9wZW5dPVwiaXNPcGVuXCJcbiAgICA+XG4gICAgICA8bmctY29udGVudD48L25nLWNvbnRlbnQ+XG4gICAgPC9kaXY+XG4gIGAsXG59KVxuZXhwb3J0IGNsYXNzIEJzRHJvcGRvd25Db250YWluZXJDb21wb25lbnQgaW1wbGVtZW50cyBPbkRlc3Ryb3kge1xuICBpc09wZW4gPSBmYWxzZTtcblxuICBASG9zdEJpbmRpbmcoJ3N0eWxlLmRpc3BsYXknKSBkaXNwbGF5ID0gJ2Jsb2NrJztcbiAgQEhvc3RCaW5kaW5nKCdzdHlsZS5wb3NpdGlvbicpIHBvc2l0aW9uID0gJ2Fic29sdXRlJztcblxuICBnZXQgZGlyZWN0aW9uKCk6ICdkb3duJyB8ICd1cCcge1xuICAgIHJldHVybiB0aGlzLl9zdGF0ZS5kaXJlY3Rpb247XG4gIH1cblxuICBwcml2YXRlIF9zdWJzY3JpcHRpb246IGFueTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9zdGF0ZTogQnNEcm9wZG93blN0YXRlKSB7XG4gICAgdGhpcy5fc3Vic2NyaXB0aW9uID0gX3N0YXRlLmlzT3BlbkNoYW5nZS5zdWJzY3JpYmUoKHZhbHVlOiBib29sZWFuKSA9PiB7XG4gICAgICB0aGlzLmlzT3BlbiA9IHZhbHVlO1xuICAgIH0pO1xuICB9XG5cbiAgbmdPbkRlc3Ryb3koKTogdm9pZCB7XG4gICAgdGhpcy5fc3Vic2NyaXB0aW9uLnVuc3Vic2NyaWJlKCk7XG4gIH1cbn1cbiJdfQ==