import { __decorate, __metadata } from "tslib";
import { Component, OnInit, HostBinding, Input, Output, EventEmitter, HostListener, ContentChildren, QueryList, ChangeDetectionStrategy, ChangeDetectorRef, } from '@angular/core';
import { state, style, trigger, transition, animate } from '@angular/animations';
import { FixedButtonCaptionDirective } from '../buttons/fixed-caption.directive';
let CollapseComponent = class CollapseComponent {
    constructor(_cdRef) {
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
    onExpandBodyDone(event) {
        setTimeout(() => {
            if (event.toState === 'expanded') {
                this.shownBsCollapse.emit(this);
                this.expanded.emit(this);
                this.overflow = 'visible';
                this.showCaptions();
            }
            else {
                this.hiddenBsCollapse.emit(this);
                this.collapsed.emit(this);
            }
        }, 0);
    }
    showCaptions() {
        this.captions.forEach((caption) => caption.showCaption());
    }
    toggle() {
        this.isCollapsed ? this.show() : this.hide();
    }
    show() {
        this.expandAnimationState = 'expanded';
        this.isCollapsed = false;
        this.showBsCollapse.emit(this);
        this._cdRef.markForCheck();
    }
    hide() {
        this.overflow = 'hidden';
        this.expandAnimationState = 'collapsed';
        this.isCollapsed = true;
        this.hideBsCollapse.emit(this);
        this._cdRef.markForCheck();
    }
    initializeCollapseState() {
        this.isCollapsed ? this.hide() : this.show();
    }
    ngOnInit() {
        this.initializeCollapseState();
    }
};
CollapseComponent.ctorParameters = () => [
    { type: ChangeDetectorRef }
];
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
export { CollapseComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29sbGFwc2UuY29tcG9uZW50LmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9jb2xsYXBzZS9jb2xsYXBzZS5jb21wb25lbnQudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFDTCxTQUFTLEVBQ1QsTUFBTSxFQUNOLFdBQVcsRUFDWCxLQUFLLEVBQ0wsTUFBTSxFQUNOLFlBQVksRUFDWixZQUFZLEVBQ1osZUFBZSxFQUNmLFNBQVMsRUFDVCx1QkFBdUIsRUFDdkIsaUJBQWlCLEdBQ2xCLE1BQU0sZUFBZSxDQUFDO0FBQ3ZCLE9BQU8sRUFBRSxLQUFLLEVBQUUsS0FBSyxFQUFFLE9BQU8sRUFBRSxVQUFVLEVBQUUsT0FBTyxFQUFFLE1BQU0scUJBQXFCLENBQUM7QUFDakYsT0FBTyxFQUFFLDJCQUEyQixFQUFFLE1BQU0sb0NBQW9DLENBQUM7QUFnQmpGLElBQWEsaUJBQWlCLEdBQTlCLE1BQWEsaUJBQWlCO0lBVzVCLFlBQW9CLE1BQXlCO1FBQXpCLFdBQU0sR0FBTixNQUFNLENBQW1CO1FBVHBDLGdCQUFXLEdBQUcsSUFBSSxDQUFDO1FBRWxCLG1CQUFjLEdBQXNCLElBQUksWUFBWSxFQUFFLENBQUM7UUFDdkQsb0JBQWUsR0FBc0IsSUFBSSxZQUFZLEVBQUUsQ0FBQztRQUN4RCxtQkFBYyxHQUFzQixJQUFJLFlBQVksRUFBRSxDQUFDO1FBQ3ZELHFCQUFnQixHQUFzQixJQUFJLFlBQVksRUFBRSxDQUFDO1FBQ3pELGNBQVMsR0FBc0IsSUFBSSxZQUFZLEVBQUUsQ0FBQztRQUNsRCxhQUFRLEdBQXNCLElBQUksWUFBWSxFQUFFLENBQUM7UUFLNUIsYUFBUSxHQUFHLFFBQVEsQ0FBQztJQUhILENBQUM7SUFNakQsZ0JBQWdCLENBQUMsS0FBVTtRQUN6QixVQUFVLENBQUMsR0FBRyxFQUFFO1lBQ2QsSUFBSSxLQUFLLENBQUMsT0FBTyxLQUFLLFVBQVUsRUFBRTtnQkFDaEMsSUFBSSxDQUFDLGVBQWUsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7Z0JBQ2hDLElBQUksQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO2dCQUN6QixJQUFJLENBQUMsUUFBUSxHQUFHLFNBQVMsQ0FBQztnQkFDMUIsSUFBSSxDQUFDLFlBQVksRUFBRSxDQUFDO2FBQ3JCO2lCQUFNO2dCQUNMLElBQUksQ0FBQyxnQkFBZ0IsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7Z0JBQ2pDLElBQUksQ0FBQyxTQUFTLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO2FBQzNCO1FBQ0gsQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDO0lBQ1IsQ0FBQztJQUVELFlBQVk7UUFDVixJQUFJLENBQUMsUUFBUSxDQUFDLE9BQU8sQ0FBQyxDQUFDLE9BQW9DLEVBQUUsRUFBRSxDQUFDLE9BQU8sQ0FBQyxXQUFXLEVBQUUsQ0FBQyxDQUFDO0lBQ3pGLENBQUM7SUFFRCxNQUFNO1FBQ0osSUFBSSxDQUFDLFdBQVcsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDLElBQUksRUFBRSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsSUFBSSxFQUFFLENBQUM7SUFDL0MsQ0FBQztJQUVELElBQUk7UUFDRixJQUFJLENBQUMsb0JBQW9CLEdBQUcsVUFBVSxDQUFDO1FBQ3ZDLElBQUksQ0FBQyxXQUFXLEdBQUcsS0FBSyxDQUFDO1FBRXpCLElBQUksQ0FBQyxjQUFjLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQy9CLElBQUksQ0FBQyxNQUFNLENBQUMsWUFBWSxFQUFFLENBQUM7SUFDN0IsQ0FBQztJQUVELElBQUk7UUFDRixJQUFJLENBQUMsUUFBUSxHQUFHLFFBQVEsQ0FBQztRQUN6QixJQUFJLENBQUMsb0JBQW9CLEdBQUcsV0FBVyxDQUFDO1FBQ3hDLElBQUksQ0FBQyxXQUFXLEdBQUcsSUFBSSxDQUFDO1FBRXhCLElBQUksQ0FBQyxjQUFjLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO1FBQy9CLElBQUksQ0FBQyxNQUFNLENBQUMsWUFBWSxFQUFFLENBQUM7SUFDN0IsQ0FBQztJQUVELHVCQUF1QjtRQUNyQixJQUFJLENBQUMsV0FBVyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsSUFBSSxFQUFFLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxJQUFJLEVBQUUsQ0FBQztJQUMvQyxDQUFDO0lBRUQsUUFBUTtRQUNOLElBQUksQ0FBQyx1QkFBdUIsRUFBRSxDQUFDO0lBQ2pDLENBQUM7Q0FDRixDQUFBOztZQXBENkIsaUJBQWlCOztBQVZDO0lBQTdDLGVBQWUsQ0FBQywyQkFBMkIsQ0FBQzs4QkFBVyxTQUFTO21EQUE4QjtBQUN0RjtJQUFSLEtBQUssRUFBRTs7c0RBQW9CO0FBRWxCO0lBQVQsTUFBTSxFQUFFOzhCQUFpQixZQUFZO3lEQUEyQjtBQUN2RDtJQUFULE1BQU0sRUFBRTs4QkFBa0IsWUFBWTswREFBMkI7QUFDeEQ7SUFBVCxNQUFNLEVBQUU7OEJBQWlCLFlBQVk7eURBQTJCO0FBQ3ZEO0lBQVQsTUFBTSxFQUFFOzhCQUFtQixZQUFZOzJEQUEyQjtBQUN6RDtJQUFULE1BQU0sRUFBRTs4QkFBWSxZQUFZO29EQUEyQjtBQUNsRDtJQUFULE1BQU0sRUFBRTs4QkFBVyxZQUFZO21EQUEyQjtBQUkvQjtJQUEzQixXQUFXLENBQUMsYUFBYSxDQUFDOzsrREFBOEI7QUFDMUI7SUFBOUIsV0FBVyxDQUFDLGdCQUFnQixDQUFDOzttREFBcUI7QUFHbkQ7SUFEQyxZQUFZLENBQUMsa0JBQWtCLEVBQUUsQ0FBQyxRQUFRLENBQUMsQ0FBQzs7Ozt5REFhNUM7QUE3QlUsaUJBQWlCO0lBZDdCLFNBQVMsQ0FBQztRQUNULDhDQUE4QztRQUM5QyxRQUFRLEVBQUUsZUFBZTtRQUN6QixRQUFRLEVBQUUsYUFBYTtRQUN2QixRQUFRLEVBQUUsMkJBQTJCO1FBQ3JDLFVBQVUsRUFBRTtZQUNWLE9BQU8sQ0FBQyxZQUFZLEVBQUU7Z0JBQ3BCLEtBQUssQ0FBQyxXQUFXLEVBQUUsS0FBSyxDQUFDLEVBQUUsTUFBTSxFQUFFLEtBQUssRUFBRSxDQUFDLENBQUM7Z0JBQzVDLEtBQUssQ0FBQyxVQUFVLEVBQUUsS0FBSyxDQUFDLEVBQUUsTUFBTSxFQUFFLEdBQUcsRUFBRSxDQUFDLENBQUM7Z0JBQ3pDLFVBQVUsQ0FBQyx3QkFBd0IsRUFBRSxPQUFPLENBQUMsWUFBWSxDQUFDLENBQUM7YUFDNUQsQ0FBQztTQUNIO1FBQ0QsZUFBZSxFQUFFLHVCQUF1QixDQUFDLE1BQU07S0FDaEQsQ0FBQztxQ0FZNEIsaUJBQWlCO0dBWGxDLGlCQUFpQixDQStEN0I7U0EvRFksaUJBQWlCIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtcbiAgQ29tcG9uZW50LFxuICBPbkluaXQsXG4gIEhvc3RCaW5kaW5nLFxuICBJbnB1dCxcbiAgT3V0cHV0LFxuICBFdmVudEVtaXR0ZXIsXG4gIEhvc3RMaXN0ZW5lcixcbiAgQ29udGVudENoaWxkcmVuLFxuICBRdWVyeUxpc3QsXG4gIENoYW5nZURldGVjdGlvblN0cmF0ZWd5LFxuICBDaGFuZ2VEZXRlY3RvclJlZixcbn0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQgeyBzdGF0ZSwgc3R5bGUsIHRyaWdnZXIsIHRyYW5zaXRpb24sIGFuaW1hdGUgfSBmcm9tICdAYW5ndWxhci9hbmltYXRpb25zJztcbmltcG9ydCB7IEZpeGVkQnV0dG9uQ2FwdGlvbkRpcmVjdGl2ZSB9IGZyb20gJy4uL2J1dHRvbnMvZml4ZWQtY2FwdGlvbi5kaXJlY3RpdmUnO1xuXG5AQ29tcG9uZW50KHtcbiAgLy8gdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOmNvbXBvbmVudC1zZWxlY3RvclxuICBzZWxlY3RvcjogJ1ttZGJDb2xsYXBzZV0nLFxuICBleHBvcnRBczogJ2JzLWNvbGxhcHNlJyxcbiAgdGVtcGxhdGU6ICc8bmctY29udGVudD48L25nLWNvbnRlbnQ+JyxcbiAgYW5pbWF0aW9uczogW1xuICAgIHRyaWdnZXIoJ2V4cGFuZEJvZHknLCBbXG4gICAgICBzdGF0ZSgnY29sbGFwc2VkJywgc3R5bGUoeyBoZWlnaHQ6ICcwcHgnIH0pKSxcbiAgICAgIHN0YXRlKCdleHBhbmRlZCcsIHN0eWxlKHsgaGVpZ2h0OiAnKicgfSkpLFxuICAgICAgdHJhbnNpdGlvbignZXhwYW5kZWQgPD0+IGNvbGxhcHNlZCcsIGFuaW1hdGUoJzUwMG1zIGVhc2UnKSksXG4gICAgXSksXG4gIF0sXG4gIGNoYW5nZURldGVjdGlvbjogQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3kuT25QdXNoLFxufSlcbmV4cG9ydCBjbGFzcyBDb2xsYXBzZUNvbXBvbmVudCBpbXBsZW1lbnRzIE9uSW5pdCB7XG4gIEBDb250ZW50Q2hpbGRyZW4oRml4ZWRCdXR0b25DYXB0aW9uRGlyZWN0aXZlKSBjYXB0aW9uczogUXVlcnlMaXN0PEZpeGVkQnV0dG9uQ2FwdGlvbkRpcmVjdGl2ZT47XG4gIEBJbnB1dCgpIGlzQ29sbGFwc2VkID0gdHJ1ZTtcblxuICBAT3V0cHV0KCkgc2hvd0JzQ29sbGFwc2U6IEV2ZW50RW1pdHRlcjxhbnk+ID0gbmV3IEV2ZW50RW1pdHRlcigpO1xuICBAT3V0cHV0KCkgc2hvd25Cc0NvbGxhcHNlOiBFdmVudEVtaXR0ZXI8YW55PiA9IG5ldyBFdmVudEVtaXR0ZXIoKTtcbiAgQE91dHB1dCgpIGhpZGVCc0NvbGxhcHNlOiBFdmVudEVtaXR0ZXI8YW55PiA9IG5ldyBFdmVudEVtaXR0ZXIoKTtcbiAgQE91dHB1dCgpIGhpZGRlbkJzQ29sbGFwc2U6IEV2ZW50RW1pdHRlcjxhbnk+ID0gbmV3IEV2ZW50RW1pdHRlcigpO1xuICBAT3V0cHV0KCkgY29sbGFwc2VkOiBFdmVudEVtaXR0ZXI8YW55PiA9IG5ldyBFdmVudEVtaXR0ZXIoKTtcbiAgQE91dHB1dCgpIGV4cGFuZGVkOiBFdmVudEVtaXR0ZXI8YW55PiA9IG5ldyBFdmVudEVtaXR0ZXIoKTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9jZFJlZjogQ2hhbmdlRGV0ZWN0b3JSZWYpIHt9XG5cbiAgQEhvc3RCaW5kaW5nKCdAZXhwYW5kQm9keScpIGV4cGFuZEFuaW1hdGlvblN0YXRlOiBzdHJpbmc7XG4gIEBIb3N0QmluZGluZygnc3R5bGUub3ZlcmZsb3cnKSBvdmVyZmxvdyA9ICdoaWRkZW4nO1xuXG4gIEBIb3N0TGlzdGVuZXIoJ0BleHBhbmRCb2R5LmRvbmUnLCBbJyRldmVudCddKVxuICBvbkV4cGFuZEJvZHlEb25lKGV2ZW50OiBhbnkpIHtcbiAgICBzZXRUaW1lb3V0KCgpID0+IHtcbiAgICAgIGlmIChldmVudC50b1N0YXRlID09PSAnZXhwYW5kZWQnKSB7XG4gICAgICAgIHRoaXMuc2hvd25Cc0NvbGxhcHNlLmVtaXQodGhpcyk7XG4gICAgICAgIHRoaXMuZXhwYW5kZWQuZW1pdCh0aGlzKTtcbiAgICAgICAgdGhpcy5vdmVyZmxvdyA9ICd2aXNpYmxlJztcbiAgICAgICAgdGhpcy5zaG93Q2FwdGlvbnMoKTtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHRoaXMuaGlkZGVuQnNDb2xsYXBzZS5lbWl0KHRoaXMpO1xuICAgICAgICB0aGlzLmNvbGxhcHNlZC5lbWl0KHRoaXMpO1xuICAgICAgfVxuICAgIH0sIDApO1xuICB9XG5cbiAgc2hvd0NhcHRpb25zKCkge1xuICAgIHRoaXMuY2FwdGlvbnMuZm9yRWFjaCgoY2FwdGlvbjogRml4ZWRCdXR0b25DYXB0aW9uRGlyZWN0aXZlKSA9PiBjYXB0aW9uLnNob3dDYXB0aW9uKCkpO1xuICB9XG5cbiAgdG9nZ2xlKCkge1xuICAgIHRoaXMuaXNDb2xsYXBzZWQgPyB0aGlzLnNob3coKSA6IHRoaXMuaGlkZSgpO1xuICB9XG5cbiAgc2hvdygpIHtcbiAgICB0aGlzLmV4cGFuZEFuaW1hdGlvblN0YXRlID0gJ2V4cGFuZGVkJztcbiAgICB0aGlzLmlzQ29sbGFwc2VkID0gZmFsc2U7XG5cbiAgICB0aGlzLnNob3dCc0NvbGxhcHNlLmVtaXQodGhpcyk7XG4gICAgdGhpcy5fY2RSZWYubWFya0ZvckNoZWNrKCk7XG4gIH1cblxuICBoaWRlKCkge1xuICAgIHRoaXMub3ZlcmZsb3cgPSAnaGlkZGVuJztcbiAgICB0aGlzLmV4cGFuZEFuaW1hdGlvblN0YXRlID0gJ2NvbGxhcHNlZCc7XG4gICAgdGhpcy5pc0NvbGxhcHNlZCA9IHRydWU7XG5cbiAgICB0aGlzLmhpZGVCc0NvbGxhcHNlLmVtaXQodGhpcyk7XG4gICAgdGhpcy5fY2RSZWYubWFya0ZvckNoZWNrKCk7XG4gIH1cblxuICBpbml0aWFsaXplQ29sbGFwc2VTdGF0ZSgpIHtcbiAgICB0aGlzLmlzQ29sbGFwc2VkID8gdGhpcy5oaWRlKCkgOiB0aGlzLnNob3coKTtcbiAgfVxuXG4gIG5nT25Jbml0KCkge1xuICAgIHRoaXMuaW5pdGlhbGl6ZUNvbGxhcHNlU3RhdGUoKTtcbiAgfVxufVxuIl19