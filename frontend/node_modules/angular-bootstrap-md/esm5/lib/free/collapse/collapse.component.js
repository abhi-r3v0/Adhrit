import { __decorate, __metadata } from "tslib";
import { Component, OnInit, HostBinding, Input, Output, EventEmitter, HostListener, ContentChildren, QueryList, ChangeDetectionStrategy, ChangeDetectorRef, } from '@angular/core';
import { state, style, trigger, transition, animate } from '@angular/animations';
import { FixedButtonCaptionDirective } from '../buttons/fixed-caption.directive';
var CollapseComponent = /** @class */ (function () {
    function CollapseComponent(_cdRef) {
        this._cdRef = _cdRef;
        this.isCollapsed = true;
        this.showBsCollapse = new EventEmitter();
        this.shownBsCollapse = new EventEmitter();
        this.hideBsCollapse = new EventEmitter();
        this.hiddenBsCollapse = new EventEmitter();
        this.collapsed = new EventEmitter();
        this.expanded = new EventEmitter();
        this.overflow = 'hidden';
    }
    CollapseComponent.prototype.onExpandBodyDone = function (event) {
        var _this = this;
        setTimeout(function () {
            if (event.toState === 'expanded') {
                _this.shownBsCollapse.emit(_this);
                _this.expanded.emit(_this);
                _this.overflow = 'visible';
                _this.showCaptions();
            }
            else {
                _this.hiddenBsCollapse.emit(_this);
                _this.collapsed.emit(_this);
            }
        }, 0);
    };
    CollapseComponent.prototype.showCaptions = function () {
        this.captions.forEach(function (caption) { return caption.showCaption(); });
    };
    CollapseComponent.prototype.toggle = function () {
        this.isCollapsed ? this.show() : this.hide();
    };
    CollapseComponent.prototype.show = function () {
        this.expandAnimationState = 'expanded';
        this.isCollapsed = false;
        this.showBsCollapse.emit(this);
        this._cdRef.markForCheck();
    };
    CollapseComponent.prototype.hide = function () {
        this.overflow = 'hidden';
        this.expandAnimationState = 'collapsed';
        this.isCollapsed = true;
        this.hideBsCollapse.emit(this);
        this._cdRef.markForCheck();
    };
    CollapseComponent.prototype.initializeCollapseState = function () {
        this.isCollapsed ? this.hide() : this.show();
    };
    CollapseComponent.prototype.ngOnInit = function () {
        this.initializeCollapseState();
    };
    CollapseComponent.ctorParameters = function () { return [
        { type: ChangeDetectorRef }
    ]; };
    __decorate([
        ContentChildren(FixedButtonCaptionDirective),
        __metadata("design:type", QueryList)
    ], CollapseComponent.prototype, "captions", void 0);
    __decorate([
        Input(),
        __metadata("design:type", Object)
    ], CollapseComponent.prototype, "isCollapsed", void 0);
    __decorate([
        Output(),
        __metadata("design:type", EventEmitter)
    ], CollapseComponent.prototype, "showBsCollapse", void 0);
    __decorate([
        Output(),
        __metadata("design:type", EventEmitter)
    ], CollapseComponent.prototype, "shownBsCollapse", void 0);
    __decorate([
        Output(),
        __metadata("design:type", EventEmitter)
    ], CollapseComponent.prototype, "hideBsCollapse", void 0);
    __decorate([
        Output(),
        __metadata("design:type", EventEmitter)
    ], CollapseComponent.prototype, "hiddenBsCollapse", void 0);
    __decorate([
        Output(),
        __metadata("design:type", EventEmitter)
    ], CollapseComponent.prototype, "collapsed", void 0);
    __decorate([
        Output(),
        __metadata("design:type", EventEmitter)
    ], CollapseComponent.prototype, "expanded", void 0);
    __decorate([
        HostBinding('@expandBody'),
        __metadata("design:type", String)
    ], CollapseComponent.prototype, "expandAnimationState", void 0);
    __decorate([
        HostBinding('style.overflow'),
        __metadata("design:type", Object)
    ], CollapseComponent.prototype, "overflow", void 0);
    __decorate([
        HostListener('@expandBody.done', ['$event']),
        __metadata("design:type", Function),
        __metadata("design:paramtypes", [Object]),
        __metadata("design:returntype", void 0)
    ], CollapseComponent.prototype, "onExpandBodyDone", null);
    CollapseComponent = __decorate([
        Component({
            // tslint:disable-next-line:component-selector
            selector: '[mdbCollapse]',
            exportAs: 'bs-collapse',
            template: '<ng-content></ng-content>',
            animations: [
                trigger('expandBody', [
                    state('collapsed', style({ height: '0px' })),
                    state('expanded', style({ height: '*' })),
                    transition('expanded <=> collapsed', animate('500ms ease')),
                ]),
            ],
            changeDetection: ChangeDetectionStrategy.OnPush
        }),
        __metadata("design:paramtypes", [ChangeDetectorRef])
    ], CollapseComponent);
    return CollapseComponent;
}());
export { CollapseComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29sbGFwc2UuY29tcG9uZW50LmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9jb2xsYXBzZS9jb2xsYXBzZS5jb21wb25lbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFDTCxTQUFTLEVBQ1QsTUFBTSxFQUNOLFdBQVcsRUFDWCxLQUFLLEVBQ0wsTUFBTSxFQUNOLFlBQVksRUFDWixZQUFZLEVBQ1osZUFBZSxFQUNmLFNBQVMsRUFDVCx1QkFBdUIsRUFDdkIsaUJBQWlCLEdBQ2xCLE1BQU0sZUFBZSxDQUFDO0FBQ3ZCLE9BQU8sRUFBRSxLQUFLLEVBQUUsS0FBSyxFQUFFLE9BQU8sRUFBRSxVQUFVLEVBQUUsT0FBTyxFQUFFLE1BQU0scUJBQXFCLENBQUM7QUFDakYsT0FBTyxFQUFFLDJCQUEyQixFQUFFLE1BQU0sb0NBQW9DLENBQUM7QUFnQmpGO0lBV0UsMkJBQW9CLE1BQXlCO1FBQXpCLFdBQU0sR0FBTixNQUFNLENBQW1CO1FBVHBDLGdCQUFXLEdBQUcsSUFBSSxDQUFDO1FBRWxCLG1CQUFjLEdBQXNCLElBQUksWUFBWSxFQUFFLENBQUM7UUFDdkQsb0JBQWUsR0FBc0IsSUFBSSxZQUFZLEVBQUUsQ0FBQztRQUN4RCxtQkFBYyxHQUFzQixJQUFJLFlBQVksRUFBRSxDQUFDO1FBQ3ZELHFCQUFnQixHQUFzQixJQUFJLFlBQVksRUFBRSxDQUFDO1FBQ3pELGNBQVMsR0FBc0IsSUFBSSxZQUFZLEVBQUUsQ0FBQztRQUNsRCxhQUFRLEdBQXNCLElBQUksWUFBWSxFQUFFLENBQUM7UUFLNUIsYUFBUSxHQUFHLFFBQVEsQ0FBQztJQUhILENBQUM7SUFNakQsNENBQWdCLEdBQWhCLFVBQWlCLEtBQVU7UUFEM0IsaUJBYUM7UUFYQyxVQUFVLENBQUM7WUFDVCxJQUFJLEtBQUssQ0FBQyxPQUFPLEtBQUssVUFBVSxFQUFFO2dCQUNoQyxLQUFJLENBQUMsZUFBZSxD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QUssQ0FBQyxXQUFXLEVBQUUsS0FBSyxDQUFDLEVBQUUsTUFBTSxFQUFFLEtBQUssRUFBRSxDQUFDLENBQUM7b0JBQzVDLEtBQUssQ0FBQyxVQUFVLEVBQUUsS0FBSyxDQUFDLEVBQUUsTUFBTSxFQUFFLEdBQUcsRUFBRSxDQUFDLENBQUM7b0JBQ3pDLFVBQVUsQ0FBQyx3QkFBd0IsRUFBRSxPQUFPLENBQUMsWUFBWSxDQUFDLENBQUM7aUJBQzVELENBQUM7YUFDSDtZQUNELGVBQWUsRUFBRSx1QkFBdUIsQ0FBQyxNQUFNO1NBQ2hELENBQUM7eUNBWTRCLGlCQUFpQjtPQVhsQyxpQkFBaUIsQ0ErRDdCO0lBQUQsd0JBQUM7Q0FBQSxBQS9ERCxJQStEQztTQS9EWSxpQkFBaUIiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQge1xuICBDb21wb25lbnQsXG4gIE9uSW5pdCxcbiAgSG9zdEJpbmRpbmcsXG4gIElucHV0LFxuICBPdXRwdXQsXG4gIEV2ZW50RW1pdHRlcixcbiAgSG9zdExpc3RlbmVyLFxuICBDb250ZW50Q2hpbGRyZW4sXG4gIFF1ZXJ5TGlzdCxcbiAgQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3ksXG4gIENoYW5nZURldGVjdG9yUmVmLFxufSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7IHN0YXRlLCBzdHlsZSwgdHJpZ2dlciwgdHJhbnNpdGlvbiwgYW5pbWF0ZSB9IGZyb20gJ0Bhbmd1bGFyL2FuaW1hdGlvbnMnO1xuaW1wb3J0IHsgRml4ZWRCdXR0b25DYXB0aW9uRGlyZWN0aXZlIH0gZnJvbSAnLi4vYnV0dG9ucy9maXhlZC1jYXB0aW9uLmRpcmVjdGl2ZSc7XG5cbkBDb21wb25lbnQoe1xuICAvLyB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6Y29tcG9uZW50LXNlbGVjdG9yXG4gIHNlbGVjdG9yOiAnW21kYkNvbGxhcHNlXScsXG4gIGV4cG9ydEFzOiAnYnMtY29sbGFwc2UnLFxuICB0ZW1wbGF0ZTogJzxuZy1jb250ZW50PjwvbmctY29udGVudD4nLFxuICBhbmltYXRpb25zOiBbXG4gICAgdHJpZ2dlcignZXhwYW5kQm9keScsIFtcbiAgICAgIHN0YXRlKCdjb2xsYXBzZWQnLCBzdHlsZSh7IGhlaWdodDogJzBweCcgfSkpLFxuICAgICAgc3RhdGUoJ2V4cGFuZGVkJywgc3R5bGUoeyBoZWlnaHQ6ICcqJyB9KSksXG4gICAgICB0cmFuc2l0aW9uKCdleHBhbmRlZCA8PT4gY29sbGFwc2VkJywgYW5pbWF0ZSgnNTAwbXMgZWFzZScpKSxcbiAgICBdKSxcbiAgXSxcbiAgY2hhbmdlRGV0ZWN0aW9uOiBDaGFuZ2VEZXRlY3Rpb25TdHJhdGVneS5PblB1c2gsXG59KVxuZXhwb3J0IGNsYXNzIENvbGxhcHNlQ29tcG9uZW50IGltcGxlbWVudHMgT25Jbml0IHtcbiAgQENvbnRlbnRDaGlsZHJlbihGaXhlZEJ1dHRvbkNhcHRpb25EaXJlY3RpdmUpIGNhcHRpb25zOiBRdWVyeUxpc3Q8Rml4ZWRCdXR0b25DYXB0aW9uRGlyZWN0aXZlPjtcbiAgQElucHV0KCkgaXNDb2xsYXBzZWQgPSB0cnVlO1xuXG4gIEBPdXRwdXQoKSBzaG93QnNDb2xsYXBzZTogRXZlbnRFbWl0dGVyPGFueT4gPSBuZXcgRXZlbnRFbWl0dGVyKCk7XG4gIEBPdXRwdXQoKSBzaG93bkJzQ29sbGFwc2U6IEV2ZW50RW1pdHRlcjxhbnk+ID0gbmV3IEV2ZW50RW1pdHRlcigpO1xuICBAT3V0cHV0KCkgaGlkZUJzQ29sbGFwc2U6IEV2ZW50RW1pdHRlcjxhbnk+ID0gbmV3IEV2ZW50RW1pdHRlcigpO1xuICBAT3V0cHV0KCkgaGlkZGVuQnNDb2xsYXBzZTogRXZlbnRFbWl0dGVyPGFueT4gPSBuZXcgRXZlbnRFbWl0dGVyKCk7XG4gIEBPdXRwdXQoKSBjb2xsYXBzZWQ6IEV2ZW50RW1pdHRlcjxhbnk+ID0gbmV3IEV2ZW50RW1pdHRlcigpO1xuICBAT3V0cHV0KCkgZXhwYW5kZWQ6IEV2ZW50RW1pdHRlcjxhbnk+ID0gbmV3IEV2ZW50RW1pdHRlcigpO1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgX2NkUmVmOiBDaGFuZ2VEZXRlY3RvclJlZikge31cblxuICBASG9zdEJpbmRpbmcoJ0BleHBhbmRCb2R5JykgZXhwYW5kQW5pbWF0aW9uU3RhdGU6IHN0cmluZztcbiAgQEhvc3RCaW5kaW5nKCdzdHlsZS5vdmVyZmxvdycpIG92ZXJmbG93ID0gJ2hpZGRlbic7XG5cbiAgQEhvc3RMaXN0ZW5lcignQGV4cGFuZEJvZHkuZG9uZScsIFsnJGV2ZW50J10pXG4gIG9uRXhwYW5kQm9keURvbmUoZXZlbnQ6IGFueSkge1xuICAgIHNldFRpbWVvdXQoKCkgPT4ge1xuICAgICAgaWYgKGV2ZW50LnRvU3RhdGUgPT09ICdleHBhbmRlZCcpIHtcbiAgICAgICAgdGhpcy5zaG93bkJzQ29sbGFwc2UuZW1pdCh0aGlzKTtcbiAgICAgICAgdGhpcy5leHBhbmRlZC5lbWl0KHRoaXMpO1xuICAgICAgICB0aGlzLm92ZXJmbG93ID0gJ3Zpc2libGUnO1xuICAgICAgICB0aGlzLnNob3dDYXB0aW9ucygpO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgdGhpcy5oaWRkZW5Cc0NvbGxhcHNlLmVtaXQodGhpcyk7XG4gICAgICAgIHRoaXMuY29sbGFwc2VkLmVtaXQodGhpcyk7XG4gICAgICB9XG4gICAgfSwgMCk7XG4gIH1cblxuICBzaG93Q2FwdGlvbnMoKSB7XG4gICAgdGhpcy5jYXB0aW9ucy5mb3JFYWNoKChjYXB0aW9uOiBGaXhlZEJ1dHRvbkNhcHRpb25EaXJlY3RpdmUpID0+IGNhcHRpb24uc2hvd0NhcHRpb24oKSk7XG4gIH1cblxuICB0b2dnbGUoKSB7XG4gICAgdGhpcy5pc0NvbGxhcHNlZCA/IHRoaXMuc2hvdygpIDogdGhpcy5oaWRlKCk7XG4gIH1cblxuICBzaG93KCkge1xuICAgIHRoaXMuZXhwYW5kQW5pbWF0aW9uU3RhdGUgPSAnZXhwYW5kZWQnO1xuICAgIHRoaXMuaXNDb2xsYXBzZWQgPSBmYWxzZTtcblxuICAgIHRoaXMuc2hvd0JzQ29sbGFwc2UuZW1pdCh0aGlzKTtcbiAgICB0aGlzLl9jZFJlZi5tYXJrRm9yQ2hlY2soKTtcbiAgfVxuXG4gIGhpZGUoKSB7XG4gICAgdGhpcy5vdmVyZmxvdyA9ICdoaWRkZW4nO1xuICAgIHRoaXMuZXhwYW5kQW5pbWF0aW9uU3RhdGUgPSAnY29sbGFwc2VkJztcbiAgICB0aGlzLmlzQ29sbGFwc2VkID0gdHJ1ZTtcblxuICAgIHRoaXMuaGlkZUJzQ29sbGFwc2UuZW1pdCh0aGlzKTtcbiAgICB0aGlzLl9jZFJlZi5tYXJrRm9yQ2hlY2soKTtcbiAgfVxuXG4gIGluaXRpYWxpemVDb2xsYXBzZVN0YXRlKCkge1xuICAgIHRoaXMuaXNDb2xsYXBzZWQgPyB0aGlzLmhpZGUoKSA6IHRoaXMuc2hvdygpO1xuICB9XG5cbiAgbmdPbkluaXQoKSB7XG4gICAgdGhpcy5pbml0aWFsaXplQ29sbGFwc2VTdGF0ZSgpO1xuICB9XG59XG4iXX0=