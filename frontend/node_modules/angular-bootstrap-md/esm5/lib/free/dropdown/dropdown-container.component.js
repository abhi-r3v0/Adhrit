import { __decorate, __metadata } from "tslib";
import { ChangeDetectionStrategy, Component, HostBinding } from '@angular/core';
import { BsDropdownState } from './dropdown.state';
var BsDropdownContainerComponent = /** @class */ (function () {
    function BsDropdownContainerComponent(_state) {
        var _this = this;
        this._state = _state;
        this.isOpen = false;
        this.display = 'block';
        this.position = 'absolute';
        this._subscription = _state.isOpenChange.subscribe(function (value) {
            _this.isOpen = value;
        });
    }
    Object.defineProperty(BsDropdownContainerComponent.prototype, "direction", {
        get: function () {
            return this._state.direction;
        },
        enumerable: true,
        configurable: true
    });
    BsDropdownContainerComponent.prototype.ngOnDestroy = function () {
        this._subscription.unsubscribe();
    };
    BsDropdownContainerComponent.ctorParameters = function () { return [
        { type: BsDropdownState }
    ]; };
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
            template: "\n    <div\n      [class.dropup]=\"direction === 'up'\"\n      [class.dropdown]=\"direction === 'down'\"\n      [class.show]=\"isOpen\"\n      [class.open]=\"isOpen\"\n    >\n      <ng-content></ng-content>\n    </div>\n  "
        }),
        __metadata("design:paramtypes", [BsDropdownState])
    ], BsDropdownContainerComponent);
    return BsDropdownContainerComponent;
}());
export { BsDropdownContainerComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZHJvcGRvd24tY29udGFpbmVyLmNvbXBvbmVudC5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvZHJvcGRvd24vZHJvcGRvd24tY29udGFpbmVyLmNvbXBvbmVudC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUEsT0FBTyxFQUFFLHVCQUF1QixFQUFFLFNBQVMsRUFBYSxXQUFXLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFDM0YsT0FBTyxFQUFFLGVBQWUsRUFBRSxNQUFNLGtCQUFrQixDQUFDO0FBZ0JuRDtJQVlFLHNDQUFvQixNQUF1QjtRQUEzQyxpQkFJQztRQUptQixXQUFNLEdBQU4sTUFBTSxDQUFpQjtRQVgzQyxXQUFNLEdBQUcsS0FBSyxDQUFDO1FBRWUsWUFBTyxHQUFHLE9BQU8sQ0FBQztRQUNqQixhQUFRLEdBQUcsVUFBVSxDQUFDO1FBU25ELElBQUksQ0FBQyxhQUFhLEdBQUcsTUFBTSxDQUFDLFlBQVksQ0FBQyxTQUFTLENBQUMsVUFBQyxLQUFjO1lBQ2hFLEtBQUksQ0FBQyxNQUFNLEdBQUcsS0FBSyxDQUFDO1FBQ3RCLENBQUMsQ0FBQyxDQUFDO0lBQ0wsQ0FBQztJQVZELHNCQUFJLG1EQUFTO2FBQWI7WUFDRSxPQUFPLElBQUksQ0FBQyxNQUFNLENBQUMsU0FBUyxDQUFDO1FBQy9CLENBQUM7OztPQUFBO0lBVUQsa0RBQVcsR0FBWDtRQUNFLElBQUksQ0FBQyxhQUFhLENBQUMsV0FBVyxFQUFFLENBQUM7SUFDbkMsQ0FBQzs7Z0JBUjJCLGVBQWU7O0lBVGI7UUFBN0IsV0FBVyxDQUFDLGVBQWUsQ0FBQzs7aUVBQW1CO0lBQ2pCO1FBQTlCLFdBQVcsQ0FBQyxnQkFBZ0IsQ0FBQzs7a0VBQXVCO0lBSjFDLDRCQUE0QjtRQWR4QyxTQUFTLENBQUM7WUFDVCxRQUFRLEVBQUUsd0JBQXdCO1lBQ2xDLGVBQWUsRUFBRSx1QkFBdUIsQ0FBQyxNQUFNO1lBQy9DLFFBQVEsRUFBRSxnT0FTVDtTQUNGLENBQUM7eUNBYTRCLGVBQWU7T0FaaEMsNEJBQTRCLENBcUJ4QztJQUFELG1DQUFDO0NBQUEsQUFyQkQsSUFxQkM7U0FyQlksNEJBQTRCIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHsgQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3ksIENvbXBvbmVudCwgT25EZXN0cm95LCBIb3N0QmluZGluZyB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgQnNEcm9wZG93blN0YXRlIH0gZnJvbSAnLi9kcm9wZG93bi5zdGF0ZSc7XG5cbkBDb21wb25lbnQoe1xuICBzZWxlY3RvcjogJ21kYi1kcm9wZG93bi1jb250YWluZXInLFxuICBjaGFuZ2VEZXRlY3Rpb246IENoYW5nZURldGVjdGlvblN0cmF0ZWd5Lk9uUHVzaCxcbiAgdGVtcGxhdGU6IGBcbiAgICA8ZGl2XG4gICAgICBbY2xhc3MuZHJvcHVwXT1cImRpcmVjdGlvbiA9PT0gJ3VwJ1wiXG4gICAgICBbY2xhc3MuZHJvcGRvd25dPVwiZGlyZWN0aW9uID09PSAnZG93bidcIlxuICAgICAgW2NsYXNzLnNob3ddPVwiaXNPcGVuXCJcbiAgICAgIFtjbGFzcy5vcGVuXT1cImlzT3BlblwiXG4gICAgPlxuICAgICAgPG5nLWNvbnRlbnQ+PC9uZy1jb250ZW50PlxuICAgIDwvZGl2PlxuICBgLFxufSlcbmV4cG9ydCBjbGFzcyBCc0Ryb3Bkb3duQ29udGFpbmVyQ29tcG9uZW50IGltcGxlbWVudHMgT25EZXN0cm95IHtcbiAgaXNPcGVuID0gZmFsc2U7XG5cbiAgQEhvc3RCaW5kaW5nKCdzdHlsZS5kaXNwbGF5JykgZGlzcGxheSA9ICdibG9jayc7XG4gIEBIb3N0QmluZGluZygnc3R5bGUucG9zaXRpb24nKSBwb3NpdGlvbiA9ICdhYnNvbHV0ZSc7XG5cbiAgZ2V0IGRpcmVjdGlvbigpOiAnZG93bicgfCAndXAnIHtcbiAgICByZXR1cm4gdGhpcy5fc3RhdGUuZGlyZWN0aW9uO1xuICB9XG5cbiAgcHJpdmF0ZSBfc3Vic2NyaXB0aW9uOiBhbnk7XG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSBfc3RhdGU6IEJzRHJvcGRvd25TdGF0ZSkge1xuICAgIHRoaXMuX3N1YnNjcmlwdGlvbiA9IF9zdGF0ZS5pc09wZW5DaGFuZ2Uuc3Vic2NyaWJlKCh2YWx1ZTogYm9vbGVhbikgPT4ge1xuICAgICAgdGhpcy5pc09wZW4gPSB2YWx1ZTtcbiAgICB9KTtcbiAgfVxuXG4gIG5nT25EZXN0cm95KCk6IHZvaWQge1xuICAgIHRoaXMuX3N1YnNjcmlwdGlvbi51bnN1YnNjcmliZSgpO1xuICB9XG59XG4iXX0=