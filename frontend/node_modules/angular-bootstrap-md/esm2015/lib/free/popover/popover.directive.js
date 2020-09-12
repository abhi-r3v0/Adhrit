import { __decorate, __metadata } from "tslib";
import { Directive, Input, Output, EventEmitter, OnInit, OnDestroy, Renderer2, ElementRef, TemplateRef, ViewContainerRef, HostListener, } from '@angular/core';
import { PopoverConfig } from './popover.config';
import { ComponentLoaderFactory } from '../utils/component-loader/component-loader.factory';
import { PopoverContainerComponent } from './popover-container.component';
import { PositioningService } from '../utils/positioning/positioning.service';
/**
 * A lightweight, extensible directive for fancy popover creation.
 */
let PopoverDirective = class PopoverDirective {
    constructor(_elementRef, _renderer, _viewContainerRef, _config, cis, _positionService) {
        this._positionService = _positionService;
        this.dynamicPosition = true;
        this.outsideClick = false;
        this._popover = cis
            .createLoader(_elementRef, _viewContainerRef, _renderer)
            .provide({ provide: PopoverConfig, useValue: _config });
        Object.assign(this, _config);
        this.onShown = this._popover.onShown;
        this.shown = this._popover.onShown;
        this.onHidden = this._popover.onHidden;
        this.hidden = this._popover.onHidden;
    }
    /**
     * Returns whether or not the popover is currently being shown
     */
    get isOpen() {
        return this._popover.isShown;
    }
    set isOpen(value) {
        if (value) {
            this.show();
        }
        else {
            this.hide();
        }
    }
    /**
     * Opens an element’s popover. This is considered a “manual” triggering of
     * the popover.
     */
    show() {
        if (this._popover.isShown) {
            return;
        }
        this._positionService.setOptions({
            modifiers: {
                flip: {
                    enabled: this.dynamicPosition,
                },
                preventOverflow: {
                    enabled: this.dynamicPosition,
                },
            },
        });
        this._popover
            .attach(PopoverContainerComponent)
            .to(this.container)
            .position({ attachment: this.placement })
            .show({
            content: this.mdbPopover,
            placement: this.placement,
            title: this.mdbPopoverHeader || this.popoverTitle,
            containerClass: this.containerClass ? this.containerClass : '',
            bodyClass: this.bodyClass ? this.bodyClass : '',
            headerClass: this.headerClass ? this.headerClass : '',
        });
        this.isOpen = true;
        if (!this.dynamicPosition) {
            this._positionService.calcPosition();
            this._positionService.deletePositionElement(this._popover._componentRef.location);
        }
    }
    /**
     * Closes an element’s popover. This is considered a “manual” triggering of
     * the popover.
     */
    hide() {
        if (this.isOpen) {
            this._popover.hide();
            this.isOpen = false;
        }
    }
    /**
     * Toggles an element’s popover. This is considered a “manual” triggering of
     * the popover.
     */
    toggle() {
        if (this.isOpen) {
            return this.hide();
        }
        this.show();
    }
    onclick(event) {
        if (this.triggers.toString().includes('focus')) {
            event.stopPropagation();
            this.show();
        }
    }
    onblur() {
        if (this.triggers.toString().includes('focus') && this.isOpen) {
            this.hide();
        }
    }
    // fix(popover): popover with outsideClick='true' will now close after clicking in document on iPad Safari
    onTouchStart(event) {
        if (this.outsideClick && !event.target.classList.contains('popover-body')) {
            this.hide();
        }
    }
    ngOnInit() {
        this._popover.listen({
            triggers: this.triggers,
            outsideClick: this.outsideClick,
            show: () => this.show(),
        });
    }
    dispose() {
        this._popover.dispose();
    }
    ngOnDestroy() {
        this._popover.dispose();
    }
};
PopoverDirective.ctorParameters = () => [
    { type: ElementRef },
    { type: Renderer2 },
    { type: ViewContainerRef },
    { type: PopoverConfig },
    { type: ComponentLoaderFactory },
    { type: PositioningService }
];
__decorate([
    Input(),
    __metadata("design:type", String)
], PopoverDirective.prototype, "containerClass", void 0);
__decorate([
    Input(),
    __metadata("design:type", String)
], PopoverDirective.prototype, "bodyClass", void 0);
__decorate([
    Input(),
    __metadata("design:type", String)
], PopoverDirective.prototype, "headerClass", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], PopoverDirective.prototype, "mdbPopover", void 0);
__decorate([
    Input(),
    __metadata("design:type", String)
], PopoverDirective.prototype, "mdbPopoverHeader", void 0);
__decorate([
    Input(),
    __metadata("design:type", String)
], PopoverDirective.prototype, "popoverTitle", void 0);
__decorate([
    Input(),
    __metadata("design:type", String)
], PopoverDirective.prototype, "placement", void 0);
__decorate([
    Input(),
    __metadata("design:type", String)
], PopoverDirective.prototype, "triggers", void 0);
__decorate([
    Input(),
    __metadata("design:type", String)
], PopoverDirective.prototype, "container", void 0);
__decorate([
    Input(),
    __metadata("design:type", Boolean),
    __metadata("design:paramtypes", [Boolean])
], PopoverDirective.prototype, "isOpen", null);
__decorate([
    Input(),
    __metadata("design:type", Object)
], PopoverDirective.prototype, "dynamicPosition", void 0);
__decorate([
    Input(),
    __metadata("design:type", Object)
], PopoverDirective.prototype, "outsideClick", void 0);
__decorate([
    Output(),
    __metadata("design:type", EventEmitter)
], PopoverDirective.prototype, "onShown", void 0);
__decorate([
    Output(),
    __metadata("design:type", EventEmitter)
], PopoverDirective.prototype, "shown", void 0);
__decorate([
    Output(),
    __metadata("design:type", EventEmitter)
], PopoverDirective.prototype, "onHidden", void 0);
__decorate([
    Output(),
    __metadata("design:type", EventEmitter)
], PopoverDirective.prototype, "hidden", void 0);
__decorate([
    HostListener('click', ['$event']),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", void 0)
], PopoverDirective.prototype, "onclick", null);
__decorate([
    HostListener('window:click'),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", []),
    __metadata("design:returntype", void 0)
], PopoverDirective.prototype, "onblur", null);
__decorate([
    HostListener('document:touchstart', ['$event']),
    __metadata("design:type", Function),
    __metadata("design:paramtypes", [Object]),
    __metadata("design:returntype", void 0)
], PopoverDirective.prototype, "onTouchStart", null);
PopoverDirective = __decorate([
    Directive({ selector: '[mdbPopover]', exportAs: 'bs-mdbPopover' }),
    __metadata("design:paramtypes", [ElementRef,
        Renderer2,
        ViewContainerRef,
        PopoverConfig,
        ComponentLoaderFactory,
        PositioningService])
], PopoverDirective);
export { PopoverDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicG9wb3Zlci5kaXJlY3RpdmUuanMiLCJzb3VyY2VSb290Ijoibmc6Ly9hbmd1bGFyLWJvb3RzdHJhcC1tZC8iLCJzb3VyY2VzIjpbImxpYi9mcmVlL3BvcG92ZXIvcG9wb3Zlci5kaXJlY3RpdmUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFDTCxTQUFTLEVBQ1QsS0FBSyxFQUNMLE1BQU0sRUFDTixZQUFZLEVBQ1osTUFBTSxFQUNOLFNBQVMsRUFDVCxTQUFTLEVBQ1QsVUFBVSxFQUNWLFdBQVcsRUFDWCxnQkFBZ0IsRUFDaEIsWUFBWSxHQUNiLE1BQU0sZUFBZSxDQUFDO0FBQ3ZCLE9BQU8sRUFBRSxhQUFhLEVBQUUsTUFBTSxrQkFBa0IsQ0FBQztBQUNqRCxPQUFPLEVBQUUsc0JBQXNCLEVBQUUsTUFBTSxvREFBb0QsQ0FBQztBQUU1RixPQUFPLEVBQUUseUJBQXlCLEVBQUUsTUFBTSwrQkFBK0IsQ0FBQztBQUMxRSxPQUFPLEVBQUUsa0JBQWtCLEVBQUUsTUFBTSwwQ0FBMEMsQ0FBQztBQUU5RTs7R0FFRztBQUVILElBQWEsZ0JBQWdCLEdBQTdCLE1BQWEsZ0JBQWdCO0lBNkQzQixZQUNFLFdBQXVCLEVBQ3ZCLFNBQW9CLEVBQ3BCLGlCQUFtQyxFQUNuQyxPQUFzQixFQUN0QixHQUEyQixFQUNuQixnQkFBb0M7UUFBcEMscUJBQWdCLEdBQWhCLGdCQUFnQixDQUFvQjtRQXZCckMsb0JBQWUsR0FBRyxJQUFJLENBQUM7UUFDdkIsaUJBQVksR0FBRyxLQUFLLENBQUM7UUF3QjVCLElBQUksQ0FBQyxRQUFRLEdBQUcsR0FBRzthQUNoQixZQUFZLENBQTRCLFdBQVcsRUFBRSxpQkFBaUIsRUFBRSxTQUFTLENBQUM7YUFDbEYsT0FBTyxDQUFDLEVBQUUsT0FBTyxFQUFFLGFBQWEsRUFBRSxRQUFRLEVBQUUsT0FBTyxFQUFFLENBQUMsQ0FBQztRQUMxRCxNQUFNLENBQUMsTUFBTSxDQUFDLElBQUksRUFBRSxPQUFPLENBQUMsQ0FBQztR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QUssRUFBRTs7b0RBQThDO0FBSTdDO0lBQVIsS0FBSyxFQUFFOzswREFBaUM7QUFDaEM7SUFBUixLQUFLLEVBQUU7O3NEQUE2QjtBQUk1QjtJQUFSLEtBQUssRUFBRTs7bURBQXVEO0FBS3REO0lBQVIsS0FBSyxFQUFFOztrREFBeUI7QUFLeEI7SUFBUixLQUFLLEVBQUU7O21EQUEwQjtBQU1sQztJQURDLEtBQUssRUFBRTs7OzhDQUdQO0FBVVE7SUFBUixLQUFLLEVBQUU7O3lEQUF3QjtBQUN2QjtJQUFSLEtBQUssRUFBRTs7c0RBQXNCO0FBS3BCO0lBQVQsTUFBTSxFQUFFOzhCQUFpQixZQUFZO2lEQUFNO0FBQ2xDO0lBQVQsTUFBTSxFQUFFOzhCQUFlLFlBQVk7K0NBQU07QUFLaEM7SUFBVCxNQUFNLEVBQUU7OEJBQWtCLFlBQVk7a0RBQU07QUFDbkM7SUFBVCxNQUFNLEVBQUU7OEJBQWdCLFlBQVk7Z0RBQU07QUFxRlI7SUFBbEMsWUFBWSxDQUFDLE9BQU8sRUFBRSxDQUFDLFFBQVEsQ0FBQyxDQUFDOzs7OytDQUtqQztBQUU2QjtJQUE3QixZQUFZLENBQUMsY0FBYyxDQUFDOzs7OzhDQUk1QjtBQUdnRDtJQUFoRCxZQUFZLENBQUMscUJBQXFCLEVBQUUsQ0FBQyxRQUFRLENBQUMsQ0FBQzs7OztvREFJL0M7QUFoS1UsZ0JBQWdCO0lBRDVCLFNBQVMsQ0FBQyxFQUFFLFFBQVEsRUFBRSxjQUFjLEVBQUUsUUFBUSxFQUFFLGVBQWUsRUFBRSxDQUFDO3FDQStEbEQsVUFBVTtRQUNaLFNBQVM7UUFDRCxnQkFBZ0I7UUFDMUIsYUFBYTtRQUNqQixzQkFBc0I7UUFDRCxrQkFBa0I7R0FuRW5DLGdCQUFnQixDQWlMNUI7U0FqTFksZ0JBQWdCIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IHtcbiAgRGlyZWN0aXZlLFxuICBJbnB1dCxcbiAgT3V0cHV0LFxuICBFdmVudEVtaXR0ZXIsXG4gIE9uSW5pdCxcbiAgT25EZXN0cm95LFxuICBSZW5kZXJlcjIsXG4gIEVsZW1lbnRSZWYsXG4gIFRlbXBsYXRlUmVmLFxuICBWaWV3Q29udGFpbmVyUmVmLFxuICBIb3N0TGlzdGVuZXIsXG59IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgUG9wb3ZlckNvbmZpZyB9IGZyb20gJy4vcG9wb3Zlci5jb25maWcnO1xuaW1wb3J0IHsgQ29tcG9uZW50TG9hZGVyRmFjdG9yeSB9IGZyb20gJy4uL3V0aWxzL2NvbXBvbmVudC1sb2FkZXIvY29tcG9uZW50LWxvYWRlci5mYWN0b3J5JztcbmltcG9ydCB7IENvbXBvbmVudExvYWRlciB9IGZyb20gJy4uL3V0aWxzL2NvbXBvbmVudC1sb2FkZXIvY29tcG9uZW50LWxvYWRlci5jbGFzcyc7XG5pbXBvcnQgeyBQb3BvdmVyQ29udGFpbmVyQ29tcG9uZW50IH0gZnJvbSAnLi9wb3BvdmVyLWNvbnRhaW5lci5jb21wb25lbnQnO1xuaW1wb3J0IHsgUG9zaXRpb25pbmdTZXJ2aWNlIH0gZnJvbSAnLi4vdXRpbHMvcG9zaXRpb25pbmcvcG9zaXRpb25pbmcuc2VydmljZSc7XG5cbi8qKlxuICogQSBsaWdodHdlaWdodCwgZXh0ZW5zaWJsZSBkaXJlY3RpdmUgZm9yIGZhbmN5IHBvcG92ZXIgY3JlYXRpb24uXG4gKi9cbkBEaXJlY3RpdmUoeyBzZWxlY3RvcjogJ1ttZGJQb3BvdmVyXScsIGV4cG9ydEFzOiAnYnMtbWRiUG9wb3ZlcicgfSlcbmV4cG9ydCBjbGFzcyBQb3BvdmVyRGlyZWN0aXZlIGltcGxlbWVudHMgT25Jbml0LCBPbkRlc3Ryb3kge1xuICBASW5wdXQoKSBwdWJsaWMgY29udGFpbmVyQ2xhc3M6IHN0cmluZztcbiAgQElucHV0KCkgcHVibGljIGJvZHlDbGFzczogc3RyaW5nO1xuICBASW5wdXQoKSBwdWJsaWMgaGVhZGVyQ2xhc3M6IHN0cmluZztcbiAgLyoqXG4gICAqIENvbnRlbnQgdG8gYmUgZGlzcGxheWVkIGFzIHBvcG92ZXIuXG4gICAqL1xuICBASW5wdXQoKSBwdWJsaWMgbWRiUG9wb3Zlcjogc3RyaW5nIHwgVGVtcGxhdGVSZWY8YW55PjtcbiAgLyoqXG4gICAqIFRpdGxlIG9mIGEgcG9wb3Zlci5cbiAgICovXG4gIEBJbnB1dCgpIHB1YmxpYyBtZGJQb3BvdmVySGVhZGVyOiBzdHJpbmc7XG4gIEBJbnB1dCgpIHB1YmxpYyBwb3BvdmVyVGl0bGU6IHN0cmluZztcbiAgLyoqXG4gICAqIFBsYWNlbWVudCBvZiBhIHBvcG92ZXIuIEFjY2VwdHM6IFwidG9wXCIsIFwiYm90dG9tXCIsIFwibGVmdFwiLCBcInJpZ2h0XCJcbiAgICovXG4gIEBJbnB1dCgpIHB1YmxpYyBwbGFjZW1lbnQ6ICd0b3AnIHwgJ2JvdHRvbScgfCAnbGVmdCcgfCAncmlnaHQnO1xuICAvKipcbiAgICogU3BlY2lmaWVzIGV2ZW50cyB0aGF0IHNob3VsZCB0cmlnZ2VyLiBTdXBwb3J0cyBhIHNwYWNlIHNlcGFyYXRlZCBsaXN0IG9mXG4gICAqIGV2ZW50IG5hbWVzLlxuICAgKi9cbiAgQElucHV0KCkgcHVibGljIHRyaWdnZXJzOiBzdHJpbmc7XG4gIC8qKlxuICAgKiBBIHNlbGVjdG9yIHNwZWNpZnlpbmcgdGhlIGVsZW1lbnQgdGhlIHBvcG92ZXIgc2hvdWxkIGJlIGFwcGVuZGVkIHRvLlxuICAgKiBDdXJyZW50bHkgb25seSBzdXBwb3J0cyBcImJvZHlcIi5cbiAgICovXG4gIEBJbnB1dCgpIHB1YmxpYyBjb250YWluZXI6IHN0cmluZztcblxuICAvKipcbiAgICogUmV0dXJucyB3aGV0aGVyIG9yIG5vdCB0aGUgcG9wb3ZlciBpcyBjdXJyZW50bHkgYmVpbmcgc2hvd25cbiAgICovXG4gIEBJbnB1dCgpXG4gIHB1YmxpYyBnZXQgaXNPcGVuKCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiB0aGlzLl9wb3BvdmVyLmlzU2hvd247XG4gIH1cblxuICBwdWJsaWMgc2V0IGlzT3Blbih2YWx1ZTogYm9vbGVhbikge1xuICAgIGlmICh2YWx1ZSkge1xuICAgICAgdGhpcy5zaG93KCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMuaGlkZSgpO1xuICAgIH1cbiAgfVxuXG4gIEBJbnB1dCgpIGR5bmFtaWNQb3NpdGlvbiA9IHRydWU7XG4gIEBJbnB1dCgpIG91dHNpZGVDbGljayA9IGZhbHNlO1xuICAvKipcbiAgICogRW1pdHMgYW4gZXZlbnQgd2hlbiB0aGUgcG9wb3ZlciBpcyBzaG93blxuICAgKi9cbiAgLy8gdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOm5vLW91dHB1dC1vbi1wcmVmaXhcbiAgQE91dHB1dCgpIHB1YmxpYyBvblNob3duOiBFdmVudEVtaXR0ZXI8YW55PjtcbiAgQE91dHB1dCgpIHB1YmxpYyBzaG93bjogRXZlbnRFbWl0dGVyPGFueT47XG4gIC8qKlxuICAgKiBFbWl0cyBhbiBldmVudCB3aGVuIHRoZSBwb3BvdmVyIGlzIGhpZGRlblxuICAgKi9cbiAgLy8gdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOm5vLW91dHB1dC1vbi1wcmVmaXhcbiAgQE91dHB1dCgpIHB1YmxpYyBvbkhpZGRlbjogRXZlbnRFbWl0dGVyPGFueT47XG4gIEBPdXRwdXQoKSBwdWJsaWMgaGlkZGVuOiBFdmVudEVtaXR0ZXI8YW55PjtcblxuICBwcml2YXRlIF9wb3BvdmVyOiBDb21wb25lbnRMb2FkZXI8UG9wb3ZlckNvbnRhaW5lckNvbXBvbmVudD47XG5cbiAgcHVibGljIGNvbnN0cnVjdG9yKFxuICAgIF9lbGVtZW50UmVmOiBFbGVtZW50UmVmLFxuICAgIF9yZW5kZXJlcjogUmVuZGVyZXIyLFxuICAgIF92aWV3Q29udGFpbmVyUmVmOiBWaWV3Q29udGFpbmVyUmVmLFxuICAgIF9jb25maWc6IFBvcG92ZXJDb25maWcsXG4gICAgY2lzOiBDb21wb25lbnRMb2FkZXJGYWN0b3J5LFxuICAgIHByaXZhdGUgX3Bvc2l0aW9uU2VydmljZTogUG9zaXRpb25pbmdTZXJ2aWNlXG4gICkge1xuICAgIHRoaXMuX3BvcG92ZXIgPSBjaXNcbiAgICAgIC5jcmVhdGVMb2FkZXI8UG9wb3ZlckNvbnRhaW5lckNvbXBvbmVudD4oX2VsZW1lbnRSZWYsIF92aWV3Q29udGFpbmVyUmVmLCBfcmVuZGVyZXIpXG4gICAgICAucHJvdmlkZSh7IHByb3ZpZGU6IFBvcG92ZXJDb25maWcsIHVzZVZhbHVlOiBfY29uZmlnIH0pO1xuICAgIE9iamVjdC5hc3NpZ24odGhpcywgX2NvbmZpZyk7XG4gICAgdGhpcy5vblNob3duID0gdGhpcy5fcG9wb3Zlci5vblNob3duO1xuICAgIHRoaXMuc2hvd24gPSB0aGlzLl9wb3BvdmVyLm9uU2hvd247XG4gICAgdGhpcy5vbkhpZGRlbiA9IHRoaXMuX3BvcG92ZXIub25IaWRkZW47XG4gICAgdGhpcy5oaWRkZW4gPSB0aGlzLl9wb3BvdmVyLm9uSGlkZGVuO1xuICB9XG5cbiAgLyoqXG4gICAqIE9wZW5zIGFuIGVsZW1lbnTigJlzIHBvcG92ZXIuIFRoaXMgaXMgY29uc2lkZXJlZCBhIOKAnG1hbnVhbOKAnSB0cmlnZ2VyaW5nIG9mXG4gICAqIHRoZSBwb3BvdmVyLlxuICAgKi9cbiAgcHVibGljIHNob3coKTogdm9pZCB8IGFueSB7XG4gICAgaWYgKHRoaXMuX3BvcG92ZXIuaXNTaG93bikge1xuICAgICAgcmV0dXJuO1xuICAgIH1cblxuICAgIHRoaXMuX3Bvc2l0aW9uU2VydmljZS5zZXRPcHRpb25zKHtcbiAgICAgIG1vZGlmaWVyczoge1xuICAgICAgICBmbGlwOiB7XG4gICAgICAgICAgZW5hYmxlZDogdGhpcy5keW5hbWljUG9zaXRpb24sXG4gICAgICAgIH0sXG4gICAgICAgIHByZXZlbnRPdmVyZmxvdzoge1xuICAgICAgICAgIGVuYWJsZWQ6IHRoaXMuZHluYW1pY1Bvc2l0aW9uLFxuICAgICAgICB9LFxuICAgICAgfSxcbiAgICB9KTtcblxuICAgIHRoaXMuX3BvcG92ZXJcbiAgICAgIC5hdHRhY2goUG9wb3ZlckNvbnRhaW5lckNvbXBvbmVudClcbiAgICAgIC50byh0aGlzLmNvbnRhaW5lcilcbiAgICAgIC5wb3NpdGlvbih7IGF0dGFjaG1lbnQ6IHRoaXMucGxhY2VtZW50IH0pXG4gICAgICAuc2hvdyh7XG4gICAgICAgIGNvbnRlbnQ6IHRoaXMubWRiUG9wb3ZlcixcbiAgICAgICAgcGxhY2VtZW50OiB0aGlzLnBsYWNlbWVudCxcbiAgICAgICAgdGl0bGU6IHRoaXMubWRiUG9wb3ZlckhlYWRlciB8fCB0aGlzLnBvcG92ZXJUaXRsZSxcbiAgICAgICAgY29udGFpbmVyQ2xhc3M6IHRoaXMuY29udGFpbmVyQ2xhc3MgPyB0aGlzLmNvbnRhaW5lckNsYXNzIDogJycsXG4gICAgICAgIGJvZHlDbGFzczogdGhpcy5ib2R5Q2xhc3MgPyB0aGlzLmJvZHlDbGFzcyA6ICcnLFxuICAgICAgICBoZWFkZXJDbGFzczogdGhpcy5oZWFkZXJDbGFzcyA/IHRoaXMuaGVhZGVyQ2xhc3MgOiAnJyxcbiAgICAgIH0pO1xuICAgIHRoaXMuaXNPcGVuID0gdHJ1ZTtcblxuICAgIGlmICghdGhpcy5keW5hbWljUG9zaXRpb24pIHtcbiAgICAgIHRoaXMuX3Bvc2l0aW9uU2VydmljZS5jYWxjUG9zaXRpb24oKTtcbiAgICAgIHRoaXMuX3Bvc2l0aW9uU2VydmljZS5kZWxldGVQb3NpdGlvbkVsZW1lbnQodGhpcy5fcG9wb3Zlci5fY29tcG9uZW50UmVmLmxvY2F0aW9uKTtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogQ2xvc2VzIGFuIGVsZW1lbnTigJlzIHBvcG92ZXIuIFRoaXMgaXMgY29uc2lkZXJlZCBhIOKAnG1hbnVhbOKAnSB0cmlnZ2VyaW5nIG9mXG4gICAqIHRoZSBwb3BvdmVyLlxuICAgKi9cbiAgcHVibGljIGhpZGUoKTogdm9pZCB7XG4gICAgaWYgKHRoaXMuaXNPcGVuKSB7XG4gICAgICB0aGlzLl9wb3BvdmVyLmhpZGUoKTtcbiAgICAgIHRoaXMuaXNPcGVuID0gZmFsc2U7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIFRvZ2dsZXMgYW4gZWxlbWVudOKAmXMgcG9wb3Zlci4gVGhpcyBpcyBjb25zaWRlcmVkIGEg4oCcbWFudWFs4oCdIHRyaWdnZXJpbmcgb2ZcbiAgICogdGhlIHBvcG92ZXIuXG4gICAqL1xuICBwdWJsaWMgdG9nZ2xlKCk6IHZvaWQge1xuICAgIGlmICh0aGlzLmlzT3Blbikge1xuICAgICAgcmV0dXJuIHRoaXMuaGlkZSgpO1xuICAgIH1cblxuICAgIHRoaXMuc2hvdygpO1xuICB9XG5cbiAgQEhvc3RMaXN0ZW5lcignY2xpY2snLCBbJyRldmVudCddKSBvbmNsaWNrKGV2ZW50OiBhbnkpIHtcbiAgICBpZiAodGhpcy50cmlnZ2Vycy50b1N0cmluZygpLmluY2x1ZGVzKCdmb2N1cycpKSB7XG4gICAgICBldmVudC5zdG9wUHJvcGFnYXRpb24oKTtcbiAgICAgIHRoaXMuc2hvdygpO1xuICAgIH1cbiAgfVxuXG4gIEBIb3N0TGlzdGVuZXIoJ3dpbmRvdzpjbGljaycpIG9uYmx1cigpIHtcbiAgICBpZiAodGhpcy50cmlnZ2Vycy50b1N0cmluZygpLmluY2x1ZGVzKCdmb2N1cycpICYmIHRoaXMuaXNPcGVuKSB7XG4gICAgICB0aGlzLmhpZGUoKTtcbiAgICB9XG4gIH1cblxuICAvLyBmaXgocG9wb3Zlcik6IHBvcG92ZXIgd2l0aCBvdXRzaWRlQ2xpY2s9J3RydWUnIHdpbGwgbm93IGNsb3NlIGFmdGVyIGNsaWNraW5nIGluIGRvY3VtZW50IG9uIGlQYWQgU2FmYXJpXG4gIEBIb3N0TGlzdGVuZXIoJ2RvY3VtZW50OnRvdWNoc3RhcnQnLCBbJyRldmVudCddKSBvblRvdWNoU3RhcnQoZXZlbnQ6IGFueSkge1xuICAgIGlmICh0aGlzLm91dHNpZGVDbGljayAmJiAhZXZlbnQudGFyZ2V0LmNsYXNzTGlzdC5jb250YWlucygncG9wb3Zlci1ib2R5JykpIHtcbiAgICAgIHRoaXMuaGlkZSgpO1xuICAgIH1cbiAgfVxuXG4gIHB1YmxpYyBuZ09uSW5pdCgpOiBhbnkge1xuICAgIHRoaXMuX3BvcG92ZXIubGlzdGVuKHtcbiAgICAgIHRyaWdnZXJzOiB0aGlzLnRyaWdnZXJzLFxuICAgICAgb3V0c2lkZUNsaWNrOiB0aGlzLm91dHNpZGVDbGljayxcbiAgICAgIHNob3c6ICgpID0+IHRoaXMuc2hvdygpLFxuICAgIH0pO1xuICB9XG5cbiAgcHVibGljIGRpc3Bvc2UoKSB7XG4gICAgdGhpcy5fcG9wb3Zlci5kaXNwb3NlKCk7XG4gIH1cblxuICBwdWJsaWMgbmdPbkRlc3Ryb3koKTogYW55IHtcbiAgICB0aGlzLl9wb3BvdmVyLmRpc3Bvc2UoKTtcbiAgfVxufVxuIl19