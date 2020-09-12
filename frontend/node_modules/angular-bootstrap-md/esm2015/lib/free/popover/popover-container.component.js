import { __decorate, __metadata } from "tslib";
import { ChangeDetectionStrategy, Component, HostBinding, Input, ViewEncapsulation, } from '@angular/core';
import { PopoverConfig } from './popover.config';
import { isBs3 } from '../utils/ng2-bootstrap-config';
let PopoverContainerComponent = class PopoverContainerComponent {
    constructor(config) {
        this.show = '!isBs3';
        this.role = 'tooltip';
        Object.assign(this, config);
    }
    get isBs3() {
        return isBs3();
    }
    ngOnInit() {
        this.class =
            'popover-fadeIn popover in popover-' +
                this.placement +
                ' ' +
                this.placement +
                ' bs-popover-' +
                this.placement +
                ' ' +
                this.containerClass;
    }
};
PopoverContainerComponent.ctorParameters = () => [
    { type: PopoverConfig }
];
__decorate([
    Input(),
    __metadata("design:type", String)
], PopoverContainerComponent.prototype, "placement", void 0);
__decorate([
    Input(),
    __metadata("design:type", String)
], PopoverContainerComponent.prototype, "title", void 0);
__decorate([
    HostBinding('class.show'),
    __metadata("design:type", Object)
], PopoverContainerComponent.prototype, "show", void 0);
__decorate([
    HostBinding('attr.role'),
    __metadata("design:type", Object)
], PopoverContainerComponent.prototype, "role", void 0);
__decorate([
    HostBinding('class'),
    __metadata("design:type", Object)
], PopoverContainerComponent.prototype, "class", void 0);
PopoverContainerComponent = __decorate([
    Component({
        selector: 'mdb-popover-container',
        changeDetection: ChangeDetectionStrategy.OnPush,
        template: `
    <h3 class="popover-header" [ngClass]="headerClass" *ngIf="title">{{ title }}</h3>
    <div class="popover-body" [ngClass]="bodyClass">
      <ng-content></ng-content>
    </div>
  `,
        encapsulation: ViewEncapsulation.None,
        styles: [".popover.bs-tether-element-attached-bottom,.popover.popover-top{margin-top:-10px}.popover.bs-tether-element-attached-bottom::after,.popover.bs-tether-element-attached-bottom::before,.popover.popover-top::after,.popover.popover-top::before{left:50%;border-bottom-width:0}.popover.bs-tether-element-attached-bottom::before,.popover.popover-top::before{bottom:-11px;margin-left:-11px;border-top-color:rgba(0,0,0,.25)}.popover.bs-tether-element-attached-bottom::after,.popover.popover-top::after{bottom:-10px;margin-left:-10px;border-top-color:#fff}.popover.bs-tether-element-attached-left,.popover.popover-right{margin-left:10px}.popover.bs-tether-element-attached-left::after,.popover.bs-tether-element-attached-left::before,.popover.popover-right::after,.popover.popover-right::before{top:50%;border-left-width:0}.popover.bs-tether-element-attached-left::before,.popover.popover-right::before{left:-11px;margin-top:-11px;border-right-color:rgba(0,0,0,.25)}.popover.bs-tether-element-attached-left::after,.popover.popover-right::after{left:-10px;margin-top:-10px;border-right-color:#fff}.popover.bs-tether-element-attached-top,.popover.popover-bottom{margin-top:10px}.popover.bs-tether-element-attached-top::after,.popover.bs-tether-element-attached-top::before,.popover.popover-bottom::after,.popover.popover-bottom::before{left:50%;border-top-width:0}.popover.bs-tether-element-attached-top::before,.popover.popover-bottom::before{top:-11px;margin-left:-11px;border-bottom-color:rgba(0,0,0,.25)}.popover.bs-tether-element-attached-top::after,.popover.popover-bottom::after{top:-10px;margin-left:-10px;border-bottom-color:#f7f7f7}.popover.bs-tether-element-attached-top .popover-title::before,.popover.popover-bottom .popover-title::before{position:absolute;top:0;left:50%;display:block;width:20px;margin-left:-10px;content:\"\";border-bottom:1px solid #f7f7f7}.popover.bs-tether-element-attached-right,.popover.popover-left{margin-left:-10px}.popover.bs-tether-element-attached-right::after,.popover.bs-tether-element-attached-right::before,.popover.popover-left::after,.popover.popover-left::before{top:50%;border-right-width:0}.popover.bs-tether-element-attached-right::before,.popover.popover-left::before{right:-11px;margin-top:-11px;border-left-color:rgba(0,0,0,.25)}.popover.bs-tether-element-attached-right::after,.popover.popover-left::after{right:-10px;margin-top:-10px;border-left-color:#fff}.popover::after,.popover::before{position:absolute;display:block;width:0;height:0;border-color:transparent;border-style:solid}.popover::before{content:\"\";border-width:11px}.popover::after{content:\"\";border-width:10px}@-webkit-keyframes fadeInPopover{from{opacity:0}to{opacity:1}}@keyframes fadeInPopover{from{opacity:0}to{opacity:1}}.popover-fadeIn{-webkit-animation-name:fadeInPopover;animation-name:fadeInPopover;-webkit-animation-delay:.2s;animation-delay:.2s;-webkit-animation-duration:.2s;animation-duration:.2s;-webkit-animation-fill-mode:both;animation-fill-mode:both}"]
    }),
    __metadata("design:paramtypes", [PopoverConfig])
], PopoverContainerComponent);
export { PopoverContainerComponent };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicG9wb3Zlci1jb250YWluZXIuY29tcG9uZW50LmpzIiwic291cmNlUm9vdCI6Im5nOi8vYW5ndWxhci1ib290c3RyYXAtbWQvIiwic291cmNlcyI6WyJsaWIvZnJlZS9wb3BvdmVyL3BvcG92ZXItY29udGFpbmVyLmNvbXBvbmVudC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiO0FBQUEsT0FBTyxFQUNMLHVCQUF1QixFQUN2QixTQUFTLEVBQ1QsV0FBVyxFQUNYLEtBQUssRUFFTCxpQkFBaUIsR0FDbEIsTUFBTSxlQUFlLENBQUM7QUFDdkIsT0FBTyxFQUFFLGFBQWEsRUFBRSxNQUFNLGtCQUFrQixDQUFDO0FBQ2pELE9BQU8sRUFBRSxLQUFLLEVBQUUsTUFBTSwrQkFBK0IsQ0FBQztBQWN0RCxJQUFhLHlCQUF5QixHQUF0QyxNQUFhLHlCQUF5QjtJQWNwQyxZQUFtQixNQUFxQjtRQVJiLFNBQUksR0FBRyxRQUFRLENBQUM7UUFDakIsU0FBSSxHQUFHLFNBQVMsQ0FBQztRQVF6QyxNQUFNLENBQUMsTUFBTSxDQUFDLElBQUksRUFBRSxNQUFNLENBQUMsQ0FBQztJQUM5QixDQUFDO0lBTkQsSUFBVyxLQUFLO1FBQ2QsT0FBTyxLQUFLLEVBQUUsQ0FBQztJQUNqQixDQUFDO0lBTUQsUUFBUTtRQUNOLElBQUksQ0FBQyxLQUFLO1lBQ1Isb0NBQW9DO2dCQUNwQyxJQUFJLENBQUMsU0FBUztnQkFDZCxHQUFHO2dCQUNILElBQUksQ0FBQyxTQUFTO2dCQUNkLGNBQWM7Z0JBQ2QsSUFBSSxDQUFDLFNBQVM7Z0JBQ2QsR0FBRztnQkFDSCxJQUFJLENBQUMsY0FBYyxDQUFDO0lBQ3hCLENBQUM7Q0FDRixDQUFBOztZQWY0QixhQUFhOztBQWIvQjtJQUFSLEtBQUssRUFBRTs7NERBQTBCO0FBQ3pCO0lBQVIsS0FBSyxFQUFFOzt3REFBc0I7QUFJSDtJQUExQixXQUFXLENBQUMsWUFBWSxDQUFDOzt1REFBaUI7QUFDakI7SUFBekIsV0FBVyxDQUFDLFdBQVcsQ0FBQzs7dURBQWtCO0FBRXJCO0lBQXJCLFdBQVcsQ0FBQyxPQUFPLENBQUM7O3dEQUFZO0FBVHRCLHlCQUF5QjtJQVpyQyxTQUFTLENBQUM7UUFDVCxRQUFRLEVBQUUsdUJBQXVCO1FBQ2pDLGVBQWUsRUFBRSx1QkFBdUIsQ0FBQyxNQUFNO1FBQy9DLFFBQVEsRUFBRTs7Ozs7R0FLVDtRQUVELGFBQWEsRUFBRSxpQkFBaUIsQ0FBQyxJQUFJOztLQUN0QyxDQUFDO3FDQWUyQixhQUFhO0dBZDdCLHlCQUF5QixDQTZCckM7U0E3QlkseUJBQXlCIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtcbiAgQ2hhbmdlRGV0ZWN0aW9uU3RyYXRlZ3ksXG4gIENvbXBvbmVudCxcbiAgSG9zdEJpbmRpbmcsXG4gIElucHV0LFxuICBPbkluaXQsXG4gIFZpZXdFbmNhcHN1bGF0aW9uLFxufSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7IFBvcG92ZXJDb25maWcgfSBmcm9tICcuL3BvcG92ZXIuY29uZmlnJztcbmltcG9ydCB7IGlzQnMzIH0gZnJvbSAnLi4vdXRpbHMvbmcyLWJvb3RzdHJhcC1jb25maWcnO1xuXG5AQ29tcG9uZW50KHtcbiAgc2VsZWN0b3I6ICdtZGItcG9wb3Zlci1jb250YWluZXInLFxuICBjaGFuZ2VEZXRlY3Rpb246IENoYW5nZURldGVjdGlvblN0cmF0ZWd5Lk9uUHVzaCxcbiAgdGVtcGxhdGU6IGBcbiAgICA8aDMgY2xhc3M9XCJwb3BvdmVyLWhlYWRlclwiIFtuZ0NsYXNzXT1cImhlYWRlckNsYXNzXCIgKm5nSWY9XCJ0aXRsZVwiPnt7IHRpdGxlIH19PC9oMz5cbiAgICA8ZGl2IGNsYXNzPVwicG9wb3Zlci1ib2R5XCIgW25nQ2xhc3NdPVwiYm9keUNsYXNzXCI+XG4gICAgICA8bmctY29udGVudD48L25nLWNvbnRlbnQ+XG4gICAgPC9kaXY+XG4gIGAsXG4gIHN0eWxlVXJsczogWycuL3BvcG92ZXItbW9kdWxlLnNjc3MnXSxcbiAgZW5jYXBzdWxhdGlvbjogVmlld0VuY2Fwc3VsYXRpb24uTm9uZSxcbn0pXG5leHBvcnQgY2xhc3MgUG9wb3ZlckNvbnRhaW5lckNvbXBvbmVudCBpbXBsZW1lbnRzIE9uSW5pdCB7XG4gIEBJbnB1dCgpIHB1YmxpYyBwbGFjZW1lbnQ6IHN0cmluZztcbiAgQElucHV0KCkgcHVibGljIHRpdGxlOiBzdHJpbmc7XG4gIHB1YmxpYyBjb250YWluZXJDbGFzczogc3RyaW5nO1xuICBwdWJsaWMgYm9keUNsYXNzOiBzdHJpbmc7XG4gIHB1YmxpYyBoZWFkZXJDbGFzczogc3RyaW5nO1xuICBASG9zdEJpbmRpbmcoJ2NsYXNzLnNob3cnKSBzaG93ID0gJyFpc0JzMyc7XG4gIEBIb3N0QmluZGluZygnYXR0ci5yb2xlJykgcm9sZSA9ICd0b29sdGlwJztcblxuICBASG9zdEJpbmRpbmcoJ2NsYXNzJykgY2xhc3M6IGFueTtcbiAgcHVibGljIGdldCBpc0JzMygpOiBib29sZWFuIHtcbiAgICByZXR1cm4gaXNCczMoKTtcbiAgfVxuXG4gIHB1YmxpYyBjb25zdHJ1Y3Rvcihjb25maWc6IFBvcG92ZXJDb25maWcpIHtcbiAgICBPYmplY3QuYXNzaWduKHRoaXMsIGNvbmZpZyk7XG4gIH1cblxuICBuZ09uSW5pdCgpIHtcbiAgICB0aGlzLmNsYXNzID1cbiAgICAgICdwb3BvdmVyLWZhZGVJbiBwb3BvdmVyIGluIHBvcG92ZXItJyArXG4gICAgICB0aGlzLnBsYWNlbWVudCArXG4gICAgICAnICcgK1xuICAgICAgdGhpcy5wbGFjZW1lbnQgK1xuICAgICAgJyBicy1wb3BvdmVyLScgK1xuICAgICAgdGhpcy5wbGFjZW1lbnQgK1xuICAgICAgJyAnICtcbiAgICAgIHRoaXMuY29udGFpbmVyQ2xhc3M7XG4gIH1cbn1cbiJdfQ==