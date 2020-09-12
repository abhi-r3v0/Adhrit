/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Directionality } from '@angular/cdk/bidi';
import { coerceBooleanProperty } from '@angular/cdk/coercion';
import { ESCAPE, hasModifierKey } from '@angular/cdk/keycodes';
import { TemplatePortal } from '@angular/cdk/portal';
import { Directive, ElementRef, EventEmitter, Inject, InjectionToken, Input, Optional, Output, TemplateRef, ViewContainerRef, } from '@angular/core';
import { Subscription } from 'rxjs';
import { takeWhile } from 'rxjs/operators';
import { Overlay } from './overlay';
import { OverlayConfig } from './overlay-config';
import { FlexibleConnectedPositionStrategy, } from './position/flexible-connected-position-strategy';
/** Default set of positions for the overlay. Follows the behavior of a dropdown. */
const defaultPositionList = [
    {
        originX: 'start',
        originY: 'bottom',
        overlayX: 'start',
        overlayY: 'top'
    },
    {
        originX: 'start',
        originY: 'top',
        overlayX: 'start',
        overlayY: 'bottom'
    },
    {
        originX: 'end',
        originY: 'top',
        overlayX: 'end',
        overlayY: 'bottom'
    },
    {
        originX: 'end',
        originY: 'bottom',
        overlayX: 'end',
        overlayY: 'top'
    }
];
/** Injection token that determines the scroll handling while the connected overlay is open. */
export const CDK_CONNECTED_OVERLAY_SCROLL_STRATEGY = new InjectionToken('cdk-connected-overlay-scroll-strategy');
/** @docs-private @deprecated @breaking-change 8.0.0 */
export function CDK_CONNECTED_OVERLAY_SCROLL_STRATEGY_FACTORY(overlay) {
    return (config) => overlay.scrollStrategies.reposition(config);
}
/**
 * Directive applied to an element to make it usable as an origin for an Overlay using a
 * ConnectedPositionStrategy.
 */
export class CdkOverlayOrigin {
    constructor(
    /** Reference to the element on which the directive is applied. */
    elementRef) {
        this.elementRef = elementRef;
    }
}
CdkOverlayOrigin.decorators = [
    { type: Directive, args: [{
                selector: '[cdk-overlay-origin], [overlay-origin], [cdkOverlayOrigin]',
                exportAs: 'cdkOverlayOrigin',
            },] }
];
CdkOverlayOrigin.ctorParameters = () => [
    { type: ElementRef }
];
/**
 * Directive to facilitate declarative creation of an
 * Overlay using a FlexibleConnectedPositionStrategy.
 */
export class CdkConnectedOverlay {
    // TODO(jelbourn): inputs for size, scroll behavior, animation, etc.
    constructor(_overlay, templateRef, viewContainerRef, scrollStrategyFactory, _dir) {
        this._overlay = _overlay;
        this._dir = _dir;
        this._hasBackdrop = false;
        this._lockPosition = false;
        this._growAfterOpen = false;
        this._flexibleDimensions = false;
        this._push = false;
        this._backdropSubscription = Subscription.EMPTY;
        this._attachSubscription = Subscription.EMPTY;
        this._detachSubscription = Subscription.EMPTY;
        this._positionSubscription = Subscription.EMPTY;
        /** Margin between the overlay and the viewport edges. */
        this.viewportMargin = 0;
        /** Whether the overlay is open. */
        this.open = false;
        /** Event emitted when the backdrop is clicked. */
        this.backdropClick = new EventEmitter();
        /** Event emitted when the position has changed. */
        this.positionChange = new EventEmitter();
        /** Event emitted when the overlay has been attached. */
        this.attach = new EventEmitter();
        /** Event emitted when the overlay has been detached. */
        this.detach = new EventEmitter();
        /** Emits when there are keyboard events that are targeted at the overlay. */
        this.overlayKeydown = new EventEmitter();
        /** Emits when there are mouse outside click events that are targeted at the overlay. */
        this.overlayOutsideClick = new EventEmitter();
        this._templatePortal = new TemplatePortal(templateRef, viewContainerRef);
        this._scrollStrategyFactory = scrollStrategyFactory;
        this.scrollStrategy = this._scrollStrategyFactory();
    }
    /** The offset in pixels for the overlay connection point on the x-axis */
    get offsetX() { return this._offsetX; }
    set offsetX(offsetX) {
        this._offsetX = offsetX;
        if (this._position) {
            this._updatePositionStrategy(this._position);
        }
    }
    /** The offset in pixels for the overlay connection point on the y-axis */
    get offsetY() { return this._offsetY; }
    set offsetY(offsetY) {
        this._offsetY = offsetY;
        if (this._position) {
            this._updatePositionStrategy(this._position);
        }
    }
    /** Whether or not the overlay should attach a backdrop. */
    get hasBackdrop() { return this._hasBackdrop; }
    set hasBackdrop(value) { this._hasBackdrop = coerceBooleanProperty(value); }
    /** Whether or not the overlay should be locked when scrolling. */
    get lockPosition() { return this._lockPosition; }
    set lockPosition(value) { this._lockPosition = coerceBooleanProperty(value); }
    /** Whether the overlay's width and height can be constrained to fit within the viewport. */
    get flexibleDimensions() { return this._flexibleDimensions; }
    set flexibleDimensions(value) {
        this._flexibleDimensions = coerceBooleanProperty(value);
    }
    /** Whether the overlay can grow after the initial open when flexible positioning is turned on. */
    get growAfterOpen() { return this._growAfterOpen; }
    set growAfterOpen(value) { this._growAfterOpen = coerceBooleanProperty(value); }
    /** Whether the overlay can be pushed on-screen if none of the provided positions fit. */
    get push() { return this._push; }
    set push(value) { this._push = coerceBooleanProperty(value); }
    /** The associated overlay reference. */
    get overlayRef() {
        return this._overlayRef;
    }
    /** The element's layout direction. */
    get dir() {
        return this._dir ? this._dir.value : 'ltr';
    }
    ngOnDestroy() {
        this._attachSubscription.unsubscribe();
        this._detachSubscription.unsubscribe();
        this._backdropSubscription.unsubscribe();
        this._positionSubscription.unsubscribe();
        if (this._overlayRef) {
            this._overlayRef.dispose();
        }
    }
    ngOnChanges(changes) {
        if (this._position) {
            this._updatePositionStrategy(this._position);
            this._overlayRef.updateSize({
                width: this.width,
                minWidth: this.minWidth,
                height: this.height,
                minHeight: this.minHeight,
            });
            if (changes['origin'] && this.open) {
                this._position.apply();
            }
        }
        if (changes['open']) {
            this.open ? this._attachOverlay() : this._detachOverlay();
        }
    }
    /** Creates an overlay */
    _createOverlay() {
        if (!this.positions || !this.positions.length) {
            this.positions = defaultPositionList;
        }
        const overlayRef = this._overlayRef = this._overlay.create(this._buildConfig());
        this._attachSubscription = overlayRef.attachments().subscribe(() => this.attach.emit());
        this._detachSubscription = overlayRef.detachments().subscribe(() => this.detach.emit());
        overlayRef.keydownEvents().subscribe((event) => {
            this.overlayKeydown.next(event);
            if (event.keyCode === ESCAPE && !hasModifierKey(event)) {
                event.preventDefault();
                this._detachOverlay();
            }
        });
        this._overlayRef.outsidePointerEvents().subscribe((event) => {
            this.overlayOutsideClick.next(event);
        });
    }
    /** Builds the overlay config based on the directive's inputs */
    _buildConfig() {
        const positionStrategy = this._position =
            this.positionStrategy || this._createPositionStrategy();
        const overlayConfig = new OverlayConfig({
            direction: this._dir,
            positionStrategy,
            scrollStrategy: this.scrollStrategy,
            hasBackdrop: this.hasBackdrop
        });
        if (this.width || this.width === 0) {
            overlayConfig.width = this.width;
        }
        if (this.height || this.height === 0) {
            overlayConfig.height = this.height;
        }
        if (this.minWidth || this.minWidth === 0) {
            overlayConfig.minWidth = this.minWidth;
        }
        if (this.minHeight || this.minHeight === 0) {
            overlayConfig.minHeight = this.minHeight;
        }
        if (this.backdropClass) {
            overlayConfig.backdropClass = this.backdropClass;
        }
        if (this.panelClass) {
            overlayConfig.panelClass = this.panelClass;
        }
        return overlayConfig;
    }
    /** Updates the state of a position strategy, based on the values of the directive inputs. */
    _updatePositionStrategy(positionStrategy) {
        const positions = this.positions.map(currentPosition => ({
            originX: currentPosition.originX,
            originY: currentPosition.originY,
            overlayX: currentPosition.overlayX,
            overlayY: currentPosition.overlayY,
            offsetX: currentPosition.offsetX || this.offsetX,
            offsetY: currentPosition.offsetY || this.offsetY,
            panelClass: currentPosition.panelClass || undefined,
        }));
        return positionStrategy
            .setOrigin(this.origin.elementRef)
            .withPositions(positions)
            .withFlexibleDimensions(this.flexibleDimensions)
            .withPush(this.push)
            .withGrowAfterOpen(this.growAfterOpen)
            .withViewportMargin(this.viewportMargin)
            .withLockedPosition(this.lockPosition)
            .withTransformOriginOn(this.transformOriginSelector);
    }
    /** Returns the position strategy of the overlay to be set on the overlay config */
    _createPositionStrategy() {
        const strategy = this._overlay.position().flexibleConnectedTo(this.origin.elementRef);
        this._updatePositionStrategy(strategy);
        return strategy;
    }
    /** Attaches the overlay and subscribes to backdrop clicks if backdrop exists */
    _attachOverlay() {
        if (!this._overlayRef) {
            this._createOverlay();
        }
        else {
            // Update the overlay size, in case the directive's inputs have changed
            this._overlayRef.getConfig().hasBackdrop = this.hasBackdrop;
        }
        if (!this._overlayRef.hasAttached()) {
            this._overlayRef.attach(this._templatePortal);
        }
        if (this.hasBackdrop) {
            this._backdropSubscription = this._overlayRef.backdropClick().subscribe(event => {
                this.backdropClick.emit(event);
            });
        }
        else {
            this._backdropSubscription.unsubscribe();
        }
        this._positionSubscription.unsubscribe();
        // Only subscribe to `positionChanges` if requested, because putting
        // together all the information for it can be expensive.
        if (this.positionChange.observers.length > 0) {
            this._positionSubscription = this._position.positionChanges
                .pipe(takeWhile(() => this.positionChange.observers.length > 0))
                .subscribe(position => {
                this.positionChange.emit(position);
                if (this.positionChange.observers.length === 0) {
                    this._positionSubscription.unsubscribe();
                }
            });
        }
    }
    /** Detaches the overlay and unsubscribes to backdrop clicks if backdrop exists */
    _detachOverlay() {
        if (this._overlayRef) {
            this._overlayRef.detach();
        }
        this._backdropSubscription.unsubscribe();
        this._positionSubscription.unsubscribe();
    }
}
CdkConnectedOverlay.decorators = [
    { type: Directive, args: [{
                selector: '[cdk-connected-overlay], [connected-overlay], [cdkConnectedOverlay]',
                exportAs: 'cdkConnectedOverlay'
            },] }
];
CdkConnectedOverlay.ctorParameters = () => [
    { type: Overlay },
    { type: TemplateRef },
    { type: ViewContainerRef },
    { type: undefined, decorators: [{ type: Inject, args: [CDK_CONNECTED_OVERLAY_SCROLL_STRATEGY,] }] },
    { type: Directionality, decorators: [{ type: Optional }] }
];
CdkConnectedOverlay.propDecorators = {
    origin: [{ type: Input, args: ['cdkConnectedOverlayOrigin',] }],
    positions: [{ type: Input, args: ['cdkConnectedOverlayPositions',] }],
    positionStrategy: [{ type: Input, args: ['cdkConnectedOverlayPositionStrategy',] }],
    offsetX: [{ type: Input, args: ['cdkConnectedOverlayOffsetX',] }],
    offsetY: [{ type: Input, args: ['cdkConnectedOverlayOffsetY',] }],
    width: [{ type: Input, args: ['cdkConnectedOverlayWidth',] }],
    height: [{ type: Input, args: ['cdkConnectedOverlayHeight',] }],
    minWidth: [{ type: Input, args: ['cdkConnectedOverlayMinWidth',] }],
    minHeight: [{ type: Input, args: ['cdkConnectedOverlayMinHeight',] }],
    backdropClass: [{ type: Input, args: ['cdkConnectedOverlayBackdropClass',] }],
    panelClass: [{ type: Input, args: ['cdkConnectedOverlayPanelClass',] }],
    viewportMargin: [{ type: Input, args: ['cdkConnectedOverlayViewportMargin',] }],
    scrollStrategy: [{ type: Input, args: ['cdkConnectedOverlayScrollStrategy',] }],
    open: [{ type: Input, args: ['cdkConnectedOverlayOpen',] }],
    transformOriginSelector: [{ type: Input, args: ['cdkConnectedOverlayTransformOriginOn',] }],
    hasBackdrop: [{ type: Input, args: ['cdkConnectedOverlayHasBackdrop',] }],
    lockPosition: [{ type: Input, args: ['cdkConnectedOverlayLockPosition',] }],
    flexibleDimensions: [{ type: Input, args: ['cdkConnectedOverlayFlexibleDimensions',] }],
    growAfterOpen: [{ type: Input, args: ['cdkConnectedOverlayGrowAfterOpen',] }],
    push: [{ type: Input, args: ['cdkConnectedOverlayPush',] }],
    backdropClick: [{ type: Output }],
    positionChange: [{ type: Output }],
    attach: [{ type: Output }],
    detach: [{ type: Output }],
    overlayKeydown: [{ type: Output }],
    overlayOutsideClick: [{ type: Output }]
};
/** @docs-private */
export function CDK_CONNECTED_OVERLAY_SCROLL_STRATEGY_PROVIDER_FACTORY(overlay) {
    return () => overlay.scrollStrategies.reposition();
}
/** @docs-private */
export const CDK_CONNECTED_OVERLAY_SCROLL_STRATEGY_PROVIDER = {
    provide: CDK_CONNECTED_OVERLAY_SCROLL_STRATEGY,
    deps: [Overlay],
    useFactory: CDK_CONNECTED_OVERLAY_SCROLL_STRATEGY_PROVIDER_FACTORY,
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoib3ZlcmxheS1kaXJlY3RpdmVzLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9vdmVybGF5L292ZXJsYXktZGlyZWN0aXZlcy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQVksY0FBYyxFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFDNUQsT0FBTyxFQUFlLHFCQUFxQixFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFDMUUsT0FBTyxFQUFDLE1BQU0sRUFBRSxjQUFjLEVBQUMsTUFBTSx1QkFBdUIsQ0FBQztBQUM3RCxPQUFPLEVBQUMsY0FBYyxFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFDbkQsT0FBTyxFQUNMLFNBQVMsRUFDVCxVQUFVLEVBQ1YsWUFBWSxFQUNaLE1BQU0sRUFDTixjQUFjLEVBQ2QsS0FBSyxFQUdMLFFBQVEsRUFDUixNQUFNLEVBRU4sV0FBVyxFQUNYLGdCQUFnQixHQUNqQixNQUFNLGVBQWUsQ0FBQztBQUN2QixPQUFPLEVBQUMsWUFBWSxFQUFDLE1BQU0sTUFBTSxDQUFDO0FBQ2xDLE9BQU8sRUFBQyxTQUFTLEVBQUMsTUFBTSxnQkFBZ0IsQ0FBQztBQUN6QyxPQUFPLEVBQUMsT0FBTyxFQUFDLE1BQU0sV0FBVyxDQUFDO0FBQ2xDLE9BQU8sRUFBQyxhQUFhLEVBQUMsTUFBTSxrQkFBa0IsQ0FBQztBQUcvQyxPQUFPLEVBRUwsaUNBQWlDLEdBQ2xDLE1BQU0saURBQWlELENBQUM7QUFRekQsb0ZBQW9GO0FBQ3BGLE1BQU0sbUJBQW1CLEdBQXdCO0lBQy9DO1FBQ0UsT0FBTyxFQUFFLE9BQU87UUFDaEIsT0FBTyxFQUFFLFFBQVE7UUFDakIsUUFBUSxFQUFFLE9BQU87UUFDakIsUUFBUSxFQUFFLEtBQUs7S0FDaEI7SUFDRDtRQUNFLE9BQU8sRUFBRSxPQUFPO1FBQ2hCLE9BQU8sRUFBRSxLQUFLO1FBQ2QsUUFBUSxFQUFFLE9BQU87UUFD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d0JBR2pDLEtBQUssU0FBQyw4QkFBOEI7K0JBTXBDLEtBQUssU0FBQyxxQ0FBcUM7c0JBRzNDLEtBQUssU0FBQyw0QkFBNEI7c0JBV2xDLEtBQUssU0FBQyw0QkFBNEI7b0JBV2xDLEtBQUssU0FBQywwQkFBMEI7cUJBR2hDLEtBQUssU0FBQywyQkFBMkI7dUJBR2pDLEtBQUssU0FBQyw2QkFBNkI7d0JBR25DLEtBQUssU0FBQyw4QkFBOEI7NEJBR3BDLEtBQUssU0FBQyxrQ0FBa0M7eUJBR3hDLEtBQUssU0FBQywrQkFBK0I7NkJBR3JDLEtBQUssU0FBQyxtQ0FBbUM7NkJBR3pDLEtBQUssU0FBQyxtQ0FBbUM7bUJBR3pDLEtBQUssU0FBQyx5QkFBeUI7c0NBRy9CLEtBQUssU0FBQyxzQ0FBc0M7MEJBRzVDLEtBQUssU0FBQyxnQ0FBZ0M7MkJBS3RDLEtBQUssU0FBQyxpQ0FBaUM7aUNBS3ZDLEtBQUssU0FBQyx1Q0FBdUM7NEJBTzdDLEtBQUssU0FBQyxrQ0FBa0M7bUJBS3hDLEtBQUssU0FBQyx5QkFBeUI7NEJBSy9CLE1BQU07NkJBR04sTUFBTTtxQkFHTixNQUFNO3FCQUdOLE1BQU07NkJBR04sTUFBTTtrQ0FHTixNQUFNOztBQTJNVCxvQkFBb0I7QUFDcEIsTUFBTSxVQUFVLHNEQUFzRCxDQUFDLE9BQWdCO0lBRXJGLE9BQU8sR0FBRyxFQUFFLENBQUMsT0FBTyxDQUFDLGdCQUFnQixDQUFDLFVBQVUsRUFBRSxDQUFDO0FBQ3JELENBQUM7QUFFRCxvQkFBb0I7QUFDcEIsTUFBTSxDQUFDLE1BQU0sOENBQThDLEdBQUc7SUFDNUQsT0FBTyxFQUFFLHFDQUFxQztJQUM5QyxJQUFJLEVBQUUsQ0FBQyxPQUFPLENBQUM7SUFDZixVQUFVLEVBQUUsc0RBQXNEO0NBQ25FLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtEaXJlY3Rpb24sIERpcmVjdGlvbmFsaXR5fSBmcm9tICdAYW5ndWxhci9jZGsvYmlkaSc7XG5pbXBvcnQge0Jvb2xlYW5JbnB1dCwgY29lcmNlQm9vbGVhblByb3BlcnR5fSBmcm9tICdAYW5ndWxhci9jZGsvY29lcmNpb24nO1xuaW1wb3J0IHtFU0NBUEUsIGhhc01vZGlmaWVyS2V5fSBmcm9tICdAYW5ndWxhci9jZGsva2V5Y29kZXMnO1xuaW1wb3J0IHtUZW1wbGF0ZVBvcnRhbH0gZnJvbSAnQGFuZ3VsYXIvY2RrL3BvcnRhbCc7XG5pbXBvcnQge1xuICBEaXJlY3RpdmUsXG4gIEVsZW1lbnRSZWYsXG4gIEV2ZW50RW1pdHRlcixcbiAgSW5qZWN0LFxuICBJbmplY3Rpb25Ub2tlbixcbiAgSW5wdXQsXG4gIE9uQ2hhbmdlcyxcbiAgT25EZXN0cm95LFxuICBPcHRpb25hbCxcbiAgT3V0cHV0LFxuICBTaW1wbGVDaGFuZ2VzLFxuICBUZW1wbGF0ZVJlZixcbiAgVmlld0NvbnRhaW5lclJlZixcbn0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge1N1YnNjcmlwdGlvbn0gZnJvbSAncnhqcyc7XG5pbXBvcnQge3Rha2VXaGlsZX0gZnJvbSAncnhqcy9vcGVyYXRvcnMnO1xuaW1wb3J0IHtPdmVybGF5fSBmcm9tICcuL292ZXJsYXknO1xuaW1wb3J0IHtPdmVybGF5Q29uZmlnfSBmcm9tICcuL292ZXJsYXktY29uZmlnJztcbmltcG9ydCB7T3ZlcmxheVJlZn0gZnJvbSAnLi9vdmVybGF5LXJlZic7XG5pbXBvcnQge0Nvbm5lY3RlZE92ZXJsYXlQb3NpdGlvbkNoYW5nZX0gZnJvbSAnLi9wb3NpdGlvbi9jb25uZWN0ZWQtcG9zaXRpb24nO1xuaW1wb3J0IHtcbiAgQ29ubmVjdGVkUG9zaXRpb24sXG4gIEZsZXhpYmxlQ29ubmVjdGVkUG9zaXRpb25TdHJhdGVneSxcbn0gZnJvbSAnLi9wb3NpdGlvbi9mbGV4aWJsZS1jb25uZWN0ZWQtcG9zaXRpb24tc3RyYXRlZ3knO1xuaW1wb3J0IHtcbiAgUmVwb3NpdGlvblNjcm9sbFN0cmF0ZWd5LFxuICBSZXBvc2l0aW9uU2Nyb2xsU3RyYXRlZ3lDb25maWcsXG4gIFNjcm9sbFN0cmF0ZWd5LFxufSBmcm9tICcuL3Njcm9sbC9pbmRleCc7XG5cblxuLyoqIERlZmF1bHQgc2V0IG9mIHBvc2l0aW9ucyBmb3IgdGhlIG92ZXJsYXkuIEZvbGxvd3MgdGhlIGJlaGF2aW9yIG9mIGEgZHJvcGRvd24uICovXG5jb25zdCBkZWZhdWx0UG9zaXRpb25MaXN0OiBDb25uZWN0ZWRQb3NpdGlvbltdID0gW1xuICB7XG4gICAgb3JpZ2luWDogJ3N0YXJ0JyxcbiAgICBvcmlnaW5ZOiAnYm90dG9tJyxcbiAgICBvdmVybGF5WDogJ3N0YXJ0JyxcbiAgICBvdmVybGF5WTogJ3RvcCdcbiAgfSxcbiAge1xuICAgIG9yaWdpblg6ICdzdGFydCcsXG4gICAgb3JpZ2luWTogJ3RvcCcsXG4gICAgb3ZlcmxheVg6ICdzdGFydCcsXG4gICAgb3ZlcmxheVk6ICdib3R0b20nXG4gIH0sXG4gIHtcbiAgICBvcmlnaW5YOiAnZW5kJyxcbiAgICBvcmlnaW5ZOiAndG9wJyxcbiAgICBvdmVybGF5WDogJ2VuZCcsXG4gICAgb3ZlcmxheVk6ICdib3R0b20nXG4gIH0sXG4gIHtcbiAgICBvcmlnaW5YOiAnZW5kJyxcbiAgICBvcmlnaW5ZOiAnYm90dG9tJyxcbiAgICBvdmVybGF5WDogJ2VuZCcsXG4gICAgb3ZlcmxheVk6ICd0b3AnXG4gIH1cbl07XG5cbi8qKiBJbmplY3Rpb24gdG9rZW4gdGhhdCBkZXRlcm1pbmVzIHRoZSBzY3JvbGwgaGFuZGxpbmcgd2hpbGUgdGhlIGNvbm5lY3RlZCBvdmVybGF5IGlzIG9wZW4uICovXG5leHBvcnQgY29uc3QgQ0RLX0NPTk5FQ1RFRF9PVkVSTEFZX1NDUk9MTF9TVFJBVEVHWSA9XG4gICAgbmV3IEluamVjdGlvblRva2VuPCgpID0+IFNjcm9sbFN0cmF0ZWd5PignY2RrLWNvbm5lY3RlZC1vdmVybGF5LXNjcm9sbC1zdHJhdGVneScpO1xuXG4vKiogQGRvY3MtcHJpdmF0ZSBAZGVwcmVjYXRlZCBAYnJlYWtpbmctY2hhbmdlIDguMC4wICovXG5leHBvcnQgZnVuY3Rpb24gQ0RLX0NPTk5FQ1RFRF9PVkVSTEFZX1NDUk9MTF9TVFJBVEVHWV9GQUNUT1JZKG92ZXJsYXk6IE92ZXJsYXkpOlxuICAoKSA9PiBTY3JvbGxTdHJhdGVneSB7XG4gIHJldHVybiAoY29uZmlnPzogUmVwb3NpdGlvblNjcm9sbFN0cmF0ZWd5Q29uZmlnKSA9PiBvdmVybGF5LnNjcm9sbFN0cmF0ZWdpZXMucmVwb3NpdGlvbihjb25maWcpO1xufVxuXG4vKipcbiAqIERpcmVjdGl2ZSBhcHBsaWVkIHRvIGFuIGVsZW1lbnQgdG8gbWFrZSBpdCB1c2FibGUgYXMgYW4gb3JpZ2luIGZvciBhbiBPdmVybGF5IHVzaW5nIGFcbiAqIENvbm5lY3RlZFBvc2l0aW9uU3RyYXRlZ3kuXG4gKi9cbkBEaXJlY3RpdmUoe1xuICBzZWxlY3RvcjogJ1tjZGstb3ZlcmxheS1vcmlnaW5dLCBbb3ZlcmxheS1vcmlnaW5dLCBbY2RrT3ZlcmxheU9yaWdpbl0nLFxuICBleHBvcnRBczogJ2Nka092ZXJsYXlPcmlnaW4nLFxufSlcbmV4cG9ydCBjbGFzcyBDZGtPdmVybGF5T3JpZ2luIHtcbiAgY29uc3RydWN0b3IoXG4gICAgICAvKiogUmVmZXJlbmNlIHRvIHRoZSBlbGVtZW50IG9uIHdoaWNoIHRoZSBkaXJlY3RpdmUgaXMgYXBwbGllZC4gKi9cbiAgICAgIHB1YmxpYyBlbGVtZW50UmVmOiBFbGVtZW50UmVmKSB7IH1cbn1cblxuXG4vKipcbiAqIERpcmVjdGl2ZSB0byBmYWNpbGl0YXRlIGRlY2xhcmF0aXZlIGNyZWF0aW9uIG9mIGFuXG4gKiBPdmVybGF5IHVzaW5nIGEgRmxleGlibGVDb25uZWN0ZWRQb3NpdGlvblN0cmF0ZWd5LlxuICovXG5ARGlyZWN0aXZlKHtcbiAgc2VsZWN0b3I6ICdbY2RrLWNvbm5lY3RlZC1vdmVybGF5XSwgW2Nvbm5lY3RlZC1vdmVybGF5XSwgW2Nka0Nvbm5lY3RlZE92ZXJsYXldJyxcbiAgZXhwb3J0QXM6ICdjZGtDb25uZWN0ZWRPdmVybGF5J1xufSlcbmV4cG9ydCBjbGFzcyBDZGtDb25uZWN0ZWRPdmVybGF5IGltcGxlbWVudHMgT25EZXN0cm95LCBPbkNoYW5nZXMge1xuICBwcml2YXRlIF9vdmVybGF5UmVmOiBPdmVybGF5UmVmO1xuICBwcml2YXRlIF90ZW1wbGF0ZVBvcnRhbDogVGVtcGxhdGVQb3J0YWw7XG4gIHByaXZhdGUgX2hhc0JhY2tkcm9wID0gZmFsc2U7XG4gIHByaXZhdGUgX2xvY2tQb3NpdGlvbiA9IGZhbHNlO1xuICBwcml2YXRlIF9ncm93QWZ0ZXJPcGVuID0gZmFsc2U7XG4gIHByaXZhdGUgX2ZsZXhpYmxlRGltZW5zaW9ucyA9IGZhbHNlO1xuICBwcml2YXRlIF9wdXNoID0gZmFsc2U7XG4gIHByaXZhdGUgX2JhY2tkcm9wU3Vic2NyaXB0aW9uID0gU3Vic2NyaXB0aW9uLkVNUFRZO1xuICBwcml2YXRlIF9hdHRhY2hTdWJzY3JpcHRpb24gPSBTdWJzY3JpcHRpb24uRU1QVFk7XG4gIHByaXZhdGUgX2RldGFjaFN1YnNjcmlwdGlvbiA9IFN1YnNjcmlwdGlvbi5FTVBUWTtcbiAgcHJpdmF0ZSBfcG9zaXRpb25TdWJzY3JpcHRpb24gPSBTdWJzY3JpcHRpb24uRU1QVFk7XG4gIHByaXZhdGUgX29mZnNldFg6IG51bWJlcjtcbiAgcHJpdmF0ZSBfb2Zmc2V0WTogbnVtYmVyO1xuICBwcml2YXRlIF9wb3NpdGlvbjogRmxleGlibGVDb25uZWN0ZWRQb3NpdGlvblN0cmF0ZWd5O1xuICBwcml2YXRlIF9zY3JvbGxTdHJhdGVneUZhY3Rvcnk6ICgpID0+IFNjcm9sbFN0cmF0ZWd5O1xuXG4gIC8qKiBPcmlnaW4gZm9yIHRoZSBjb25uZWN0ZWQgb3ZlcmxheS4gKi9cbiAgQElucHV0KCdjZGtDb25uZWN0ZWRPdmVybGF5T3JpZ2luJykgb3JpZ2luOiBDZGtPdmVybGF5T3JpZ2luO1xuXG4gIC8qKiBSZWdpc3RlcmVkIGNvbm5lY3RlZCBwb3NpdGlvbiBwYWlycy4gKi9cbiAgQElucHV0KCdjZGtDb25uZWN0ZWRPdmVybGF5UG9zaXRpb25zJykgcG9zaXRpb25zOiBDb25uZWN0ZWRQb3NpdGlvbltdO1xuXG4gIC8qKlxuICAgKiBUaGlzIGlucHV0IG92ZXJyaWRlcyB0aGUgcG9zaXRpb25zIGlucHV0IGlmIHNwZWNpZmllZC4gSXQgbGV0cyB1c2VycyBwYXNzXG4gICAqIGluIGFyYml0cmFyeSBwb3NpdGlvbmluZyBzdHJhdGVnaWVzLlxuICAgKi9cbiAgQElucHV0KCdjZGtDb25uZWN0ZWRPdmVybGF5UG9zaXRpb25TdHJhdGVneScpIHBvc2l0aW9uU3RyYXRlZ3k6IEZsZXhpYmxlQ29ubmVjdGVkUG9zaXRpb25TdHJhdGVneTtcblxuICAvKiogVGhlIG9mZnNldCBpbiBwaXhlbHMgZm9yIHRoZSBvdmVybGF5IGNvbm5lY3Rpb24gcG9pbnQgb24gdGhlIHgtYXhpcyAqL1xuICBASW5wdXQoJ2Nka0Nvbm5lY3RlZE92ZXJsYXlPZmZzZXRYJylcbiAgZ2V0IG9mZnNldFgoKTogbnVtYmVyIHsgcmV0dXJuIHRoaXMuX29mZnNldFg7IH1cbiAgc2V0IG9mZnNldFgob2Zmc2V0WDogbnVtYmVyKSB7XG4gICAgdGhpcy5fb2Zmc2V0WCA9IG9mZnNldFg7XG5cbiAgICBpZiAodGhpcy5fcG9zaXRpb24pIHtcbiAgICAgIHRoaXMuX3VwZGF0ZVBvc2l0aW9uU3RyYXRlZ3kodGhpcy5fcG9zaXRpb24pO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBUaGUgb2Zmc2V0IGluIHBpeGVscyBmb3IgdGhlIG92ZXJsYXkgY29ubmVjdGlvbiBwb2ludCBvbiB0aGUgeS1heGlzICovXG4gIEBJbnB1dCgnY2RrQ29ubmVjdGVkT3ZlcmxheU9mZnNldFknKVxuICBnZXQgb2Zmc2V0WSgpIHsgcmV0dXJuIHRoaXMuX29mZnNldFk7IH1cbiAgc2V0IG9mZnNldFkob2Zmc2V0WTogbnVtYmVyKSB7XG4gICAgdGhpcy5fb2Zmc2V0WSA9IG9mZnNldFk7XG5cbiAgICBpZiAodGhpcy5fcG9zaXRpb24pIHtcbiAgICAgIHRoaXMuX3VwZGF0ZVBvc2l0aW9uU3RyYXRlZ3kodGhpcy5fcG9zaXRpb24pO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBUaGUgd2lkdGggb2YgdGhlIG92ZXJsYXkgcGFuZWwuICovXG4gIEBJbnB1dCgnY2RrQ29ubmVjdGVkT3ZlcmxheVdpZHRoJykgd2lkdGg6IG51bWJlciB8IHN0cmluZztcblxuICAvKiogVGhlIGhlaWdodCBvZiB0aGUgb3ZlcmxheSBwYW5lbC4gKi9cbiAgQElucHV0KCdjZGtDb25uZWN0ZWRPdmVybGF5SGVpZ2h0JykgaGVpZ2h0OiBudW1iZXIgfCBzdHJpbmc7XG5cbiAgLyoqIFRoZSBtaW4gd2lkdGggb2YgdGhlIG92ZXJsYXkgcGFuZWwuICovXG4gIEBJbnB1dCgnY2RrQ29ubmVjdGVkT3ZlcmxheU1pbldpZHRoJykgbWluV2lkdGg6IG51bWJlciB8IHN0cmluZztcblxuICAvKiogVGhlIG1pbiBoZWlnaHQgb2YgdGhlIG92ZXJsYXkgcGFuZWwuICovXG4gIEBJbnB1dCgnY2RrQ29ubmVjdGVkT3ZlcmxheU1pbkhlaWdodCcpIG1pbkhlaWdodDogbnVtYmVyIHwgc3RyaW5nO1xuXG4gIC8qKiBUaGUgY3VzdG9tIGNsYXNzIHRvIGJlIHNldCBvbiB0aGUgYmFja2Ryb3AgZWxlbWVudC4gKi9cbiAgQElucHV0KCdjZGtDb25uZWN0ZWRPdmVybGF5QmFja2Ryb3BDbGFzcycpIGJhY2tkcm9wQ2xhc3M6IHN0cmluZztcblxuICAvKiogVGhlIGN1c3RvbSBjbGFzcyB0byBhZGQgdG8gdGhlIG92ZXJsYXkgcGFuZSBlbGVtZW50LiAqL1xuICBASW5wdXQoJ2Nka0Nvbm5lY3RlZE92ZXJsYXlQYW5lbENsYXNzJykgcGFuZWxDbGFzczogc3RyaW5nIHwgc3RyaW5nW107XG5cbiAgLyoqIE1hcmdpbiBiZXR3ZWVuIHRoZSBvdmVybGF5IGFuZCB0aGUgdmlld3BvcnQgZWRnZXMuICovXG4gIEBJbnB1dCgnY2RrQ29ubmVjdGVkT3ZlcmxheVZpZXdwb3J0TWFyZ2luJykgdmlld3BvcnRNYXJnaW46IG51bWJlciA9IDA7XG5cbiAgLyoqIFN0cmF0ZWd5IHRvIGJlIHVzZWQgd2hlbiBoYW5kbGluZyBzY3JvbGwgZXZlbnRzIHdoaWxlIHRoZSBvdmVybGF5IGlzIG9wZW4uICovXG4gIEBJbnB1dCgnY2RrQ29ubmVjdGVkT3ZlcmxheVNjcm9sbFN0cmF0ZWd5Jykgc2Nyb2xsU3RyYXRlZ3k6IFNjcm9sbFN0cmF0ZWd5O1xuXG4gIC8qKiBXaGV0aGVyIHRoZSBvdmVybGF5IGlzIG9wZW4uICovXG4gIEBJbnB1dCgnY2RrQ29ubmVjdGVkT3ZlcmxheU9wZW4nKSBvcGVuOiBib29sZWFuID0gZmFsc2U7XG5cbiAgLyoqIENTUyBzZWxlY3RvciB3aGljaCB0byBzZXQgdGhlIHRyYW5zZm9ybSBvcmlnaW4uICovXG4gIEBJbnB1dCgnY2RrQ29ubmVjdGVkT3ZlcmxheVRyYW5zZm9ybU9yaWdpbk9uJykgdHJhbnNmb3JtT3JpZ2luU2VsZWN0b3I6IHN0cmluZztcblxuICAvKiogV2hldGhlciBvciBub3QgdGhlIG92ZXJsYXkgc2hvdWxkIGF0dGFjaCBhIGJhY2tkcm9wLiAqL1xuICBASW5wdXQoJ2Nka0Nvbm5lY3RlZE92ZXJsYXlIYXNCYWNrZHJvcCcpXG4gIGdldCBoYXNCYWNrZHJvcCgpIHsgcmV0dXJuIHRoaXMuX2hhc0JhY2tkcm9wOyB9XG4gIHNldCBoYXNCYWNrZHJvcCh2YWx1ZTogYW55KSB7IHRoaXMuX2hhc0JhY2tkcm9wID0gY29lcmNlQm9vbGVhblByb3BlcnR5KHZhbHVlKTsgfVxuXG4gIC8qKiBXaGV0aGVyIG9yIG5vdCB0aGUgb3ZlcmxheSBzaG91bGQgYmUgbG9ja2VkIHdoZW4gc2Nyb2xsaW5nLiAqL1xuICBASW5wdXQoJ2Nka0Nvbm5lY3RlZE92ZXJsYXlMb2NrUG9zaXRpb24nKVxuICBnZXQgbG9ja1Bvc2l0aW9uKCkgeyByZXR1cm4gdGhpcy5fbG9ja1Bvc2l0aW9uOyB9XG4gIHNldCBsb2NrUG9zaXRpb24odmFsdWU6IGFueSkgeyB0aGlzLl9sb2NrUG9zaXRpb24gPSBjb2VyY2VCb29sZWFuUHJvcGVydHkodmFsdWUpOyB9XG5cbiAgLyoqIFdoZXRoZXIgdGhlIG92ZXJsYXkncyB3aWR0aCBhbmQgaGVpZ2h0IGNhbiBiZSBjb25zdHJhaW5lZCB0byBmaXQgd2l0aGluIHRoZSB2aWV3cG9ydC4gKi9cbiAgQElucHV0KCdjZGtDb25uZWN0ZWRPdmVybGF5RmxleGlibGVEaW1lbnNpb25zJylcbiAgZ2V0IGZsZXhpYmxlRGltZW5zaW9ucygpIHsgcmV0dXJuIHRoaXMuX2ZsZXhpYmxlRGltZW5zaW9uczsgfVxuICBzZXQgZmxleGlibGVEaW1lbnNpb25zKHZhbHVlOiBib29sZWFuKSB7XG4gICAgdGhpcy5fZmxleGlibGVEaW1lbnNpb25zID0gY29lcmNlQm9vbGVhblByb3BlcnR5KHZhbHVlKTtcbiAgfVxuXG4gIC8qKiBXaGV0aGVyIHRoZSBvdmVybGF5IGNhbiBncm93IGFmdGVyIHRoZSBpbml0aWFsIG9wZW4gd2hlbiBmbGV4aWJsZSBwb3NpdGlvbmluZyBpcyB0dXJuZWQgb24uICovXG4gIEBJbnB1dCgnY2RrQ29ubmVjdGVkT3ZlcmxheUdyb3dBZnRlck9wZW4nKVxuICBnZXQgZ3Jvd0FmdGVyT3BlbigpIHsgcmV0dXJuIHRoaXMuX2dyb3dBZnRlck9wZW47IH1cbiAgc2V0IGdyb3dBZnRlck9wZW4odmFsdWU6IGJvb2xlYW4pIHsgdGhpcy5fZ3Jvd0FmdGVyT3BlbiA9IGNvZXJjZUJvb2xlYW5Qcm9wZXJ0eSh2YWx1ZSk7IH1cblxuICAvKiogV2hldGhlciB0aGUgb3ZlcmxheSBjYW4gYmUgcHVzaGVkIG9uLXNjcmVlbiBpZiBub25lIG9mIHRoZSBwcm92aWRlZCBwb3NpdGlvbnMgZml0LiAqL1xuICBASW5wdXQoJ2Nka0Nvbm5lY3RlZE92ZXJsYXlQdXNoJylcbiAgZ2V0IHB1c2goKSB7IHJldHVybiB0aGlzLl9wdXNoOyB9XG4gIHNldCBwdXNoKHZhbHVlOiBib29sZWFuKSB7IHRoaXMuX3B1c2ggPSBjb2VyY2VCb29sZWFuUHJvcGVydHkodmFsdWUpOyB9XG5cbiAgLyoqIEV2ZW50IGVtaXR0ZWQgd2hlbiB0aGUgYmFja2Ryb3AgaXMgY2xpY2tlZC4gKi9cbiAgQE91dHB1dCgpIGJhY2tkcm9wQ2xpY2sgPSBuZXcgRXZlbnRFbWl0dGVyPE1vdXNlRXZlbnQ+KCk7XG5cbiAgLyoqIEV2ZW50IGVtaXR0ZWQgd2hlbiB0aGUgcG9zaXRpb24gaGFzIGNoYW5nZWQuICovXG4gIEBPdXRwdXQoKSBwb3NpdGlvbkNoYW5nZSA9IG5ldyBFdmVudEVtaXR0ZXI8Q29ubmVjdGVkT3ZlcmxheVBvc2l0aW9uQ2hhbmdlPigpO1xuXG4gIC8qKiBFdmVudCBlbWl0dGVkIHdoZW4gdGhlIG92ZXJsYXkgaGFzIGJlZW4gYXR0YWNoZWQuICovXG4gIEBPdXRwdXQoKSBhdHRhY2ggPSBuZXcgRXZlbnRFbWl0dGVyPHZvaWQ+KCk7XG5cbiAgLyoqIEV2ZW50IGVtaXR0ZWQgd2hlbiB0aGUgb3ZlcmxheSBoYXMgYmVlbiBkZXRhY2hlZC4gKi9cbiAgQE91dHB1dCgpIGRldGFjaCA9IG5ldyBFdmVudEVtaXR0ZXI8dm9pZD4oKTtcblxuICAvKiogRW1pdHMgd2hlbiB0aGVyZSBhcmUga2V5Ym9hcmQgZXZlbnRzIHRoYXQgYXJlIHRhcmdldGVkIGF0IHRoZSBvdmVybGF5LiAqL1xuICBAT3V0cHV0KCkgb3ZlcmxheUtleWRvd24gPSBuZXcgRXZlbnRFbWl0dGVyPEtleWJvYXJkRXZlbnQ+KCk7XG5cbiAgLyoqIEVtaXRzIHdoZW4gdGhlcmUgYXJlIG1vdXNlIG91dHNpZGUgY2xpY2sgZXZlbnRzIHRoYXQgYXJlIHRhcmdldGVkIGF0IHRoZSBvdmVybGF5LiAqL1xuICBAT3V0cHV0KCkgb3ZlcmxheU91dHNpZGVDbGljayA9IG5ldyBFdmVudEVtaXR0ZXI8TW91c2VFdmVudD4oKTtcblxuICAvLyBUT0RPKGplbGJvdXJuKTogaW5wdXRzIGZvciBzaXplLCBzY3JvbGwgYmVoYXZpb3IsIGFuaW1hdGlvbiwgZXRjLlxuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSBfb3ZlcmxheTogT3ZlcmxheSxcbiAgICAgIHRlbXBsYXRlUmVmOiBUZW1wbGF0ZVJlZjxhbnk+LFxuICAgICAgdmlld0NvbnRhaW5lclJlZjogVmlld0NvbnRhaW5lclJlZixcbiAgICAgIEBJbmplY3QoQ0RLX0NPTk5FQ1RFRF9PVkVSTEFZX1NDUk9MTF9TVFJBVEVHWSkgc2Nyb2xsU3RyYXRlZ3lGYWN0b3J5OiBhbnksXG4gICAgICBAT3B0aW9uYWwoKSBwcml2YXRlIF9kaXI6IERpcmVjdGlvbmFsaXR5KSB7XG4gICAgdGhpcy5fdGVtcGxhdGVQb3J0YWwgPSBuZXcgVGVtcGxhdGVQb3J0YWwodGVtcGxhdGVSZWYsIHZpZXdDb250YWluZXJSZWYpO1xuICAgIHRoaXMuX3Njcm9sbFN0cmF0ZWd5RmFjdG9yeSA9IHNjcm9sbFN0cmF0ZWd5RmFjdG9yeTtcbiAgICB0aGlzLnNjcm9sbFN0cmF0ZWd5ID0gdGhpcy5fc2Nyb2xsU3RyYXRlZ3lGYWN0b3J5KCk7XG4gIH1cblxuICAvKiogVGhlIGFzc29jaWF0ZWQgb3ZlcmxheSByZWZlcmVuY2UuICovXG4gIGdldCBvdmVybGF5UmVmKCk6IE92ZXJsYXlSZWYge1xuICAgIHJldHVybiB0aGlzLl9vdmVybGF5UmVmO1xuICB9XG5cbiAgLyoqIFRoZSBlbGVtZW50J3MgbGF5b3V0IGRpcmVjdGlvbi4gKi9cbiAgZ2V0IGRpcigpOiBEaXJlY3Rpb24ge1xuICAgIHJldHVybiB0aGlzLl9kaXIgPyB0aGlzLl9kaXIudmFsdWUgOiAnbHRyJztcbiAgfVxuXG4gIG5nT25EZXN0cm95KCkge1xuICAgIHRoaXMuX2F0dGFjaFN1YnNjcmlwdGlvbi51bnN1YnNjcmliZSgpO1xuICAgIHRoaXMuX2RldGFjaFN1YnNjcmlwdGlvbi51bnN1YnNjcmliZSgpO1xuICAgIHRoaXMuX2JhY2tkcm9wU3Vic2NyaXB0aW9uLnVuc3Vic2NyaWJlKCk7XG4gICAgdGhpcy5fcG9zaXRpb25TdWJzY3JpcHRpb24udW5zdWJzY3JpYmUoKTtcblxuICAgIGlmICh0aGlzLl9vdmVybGF5UmVmKSB7XG4gICAgICB0aGlzLl9vdmVybGF5UmVmLmRpc3Bvc2UoKTtcbiAgICB9XG4gIH1cblxuICBuZ09uQ2hhbmdlcyhjaGFuZ2VzOiBTaW1wbGVDaGFuZ2VzKSB7XG4gICAgaWYgKHRoaXMuX3Bvc2l0aW9uKSB7XG4gICAgICB0aGlzLl91cGRhdGVQb3NpdGlvblN0cmF0ZWd5KHRoaXMuX3Bvc2l0aW9uKTtcbiAgICAgIHRoaXMuX292ZXJsYXlSZWYudXBkYXRlU2l6ZSh7XG4gICAgICAgIHdpZHRoOiB0aGlzLndpZHRoLFxuICAgICAgICBtaW5XaWR0aDogdGhpcy5taW5XaWR0aCxcbiAgICAgICAgaGVpZ2h0OiB0aGlzLmhlaWdodCxcbiAgICAgICAgbWluSGVpZ2h0OiB0aGlzLm1pbkhlaWdodCxcbiAgICAgIH0pO1xuXG4gICAgICBpZiAoY2hhbmdlc1snb3JpZ2luJ10gJiYgdGhpcy5vcGVuKSB7XG4gICAgICAgIHRoaXMuX3Bvc2l0aW9uLmFwcGx5KCk7XG4gICAgICB9XG4gICAgfVxuXG4gICAgaWYgKGNoYW5nZXNbJ29wZW4nXSkge1xuICAgICAgdGhpcy5vcGVuID8gdGhpcy5fYXR0YWNoT3ZlcmxheSgpIDogdGhpcy5fZGV0YWNoT3ZlcmxheSgpO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBDcmVhdGVzIGFuIG92ZXJsYXkgKi9cbiAgcHJpdmF0ZSBfY3JlYXRlT3ZlcmxheSgpIHtcbiAgICBpZiAoIXRoaXMucG9zaXRpb25zIHx8ICF0aGlzLnBvc2l0aW9ucy5sZW5ndGgpIHtcbiAgICAgIHRoaXMucG9zaXRpb25zID0gZGVmYXVsdFBvc2l0aW9uTGlzdDtcbiAgICB9XG5cbiAgICBjb25zdCBvdmVybGF5UmVmID0gdGhpcy5fb3ZlcmxheVJlZiA9IHRoaXMuX292ZXJsYXkuY3JlYXRlKHRoaXMuX2J1aWxkQ29uZmlnKCkpO1xuICAgIHRoaXMuX2F0dGFjaFN1YnNjcmlwdGlvbiA9IG92ZXJsYXlSZWYuYXR0YWNobWVudHMoKS5zdWJzY3JpYmUoKCkgPT4gdGhpcy5hdHRhY2guZW1pdCgpKTtcbiAgICB0aGlzLl9kZXRhY2hTdWJzY3JpcHRpb24gPSBvdmVybGF5UmVmLmRldGFjaG1lbnRzKCkuc3Vic2NyaWJlKCgpID0+IHRoaXMuZGV0YWNoLmVtaXQoKSk7XG4gICAgb3ZlcmxheVJlZi5rZXlkb3duRXZlbnRzKCkuc3Vic2NyaWJlKChldmVudDogS2V5Ym9hcmRFdmVudCkgPT4ge1xuICAgICAgdGhpcy5vdmVybGF5S2V5ZG93bi5uZXh0KGV2ZW50KTtcblxuICAgICAgaWYgKGV2ZW50LmtleUNvZGUgPT09IEVTQ0FQRSAmJiAhaGFzTW9kaWZpZXJLZXkoZXZlbnQpKSB7XG4gICAgICAgIGV2ZW50LnByZXZlbnREZWZhdWx0KCk7XG4gICAgICAgIHRoaXMuX2RldGFjaE92ZXJsYXkoKTtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIHRoaXMuX292ZXJsYXlSZWYub3V0c2lkZVBvaW50ZXJFdmVudHMoKS5zdWJzY3JpYmUoKGV2ZW50OiBNb3VzZUV2ZW50KSA9PiB7XG4gICAgICB0aGlzLm92ZXJsYXlPdXRzaWRlQ2xpY2submV4dChldmVudCk7XG4gICAgfSk7XG4gIH1cblxuICAvKiogQnVpbGRzIHRoZSBvdmVybGF5IGNvbmZpZyBiYXNlZCBvbiB0aGUgZGlyZWN0aXZlJ3MgaW5wdXRzICovXG4gIHByaXZhdGUgX2J1aWxkQ29uZmlnKCk6IE92ZXJsYXlDb25maWcge1xuICAgIGNvbnN0IHBvc2l0aW9uU3RyYXRlZ3kgPSB0aGlzLl9wb3NpdGlvbiA9XG4gICAgICB0aGlzLnBvc2l0aW9uU3RyYXRlZ3kgfHwgdGhpcy5fY3JlYXRlUG9zaXRpb25TdHJhdGVneSgpO1xuICAgIGNvbnN0IG92ZXJsYXlDb25maWcgPSBuZXcgT3ZlcmxheUNvbmZpZyh7XG4gICAgICBkaXJlY3Rpb246IHRoaXMuX2RpcixcbiAgICAgIHBvc2l0aW9uU3RyYXRlZ3ksXG4gICAgICBzY3JvbGxTdHJhdGVneTogdGhpcy5zY3JvbGxTdHJhdGVneSxcbiAgICAgIGhhc0JhY2tkcm9wOiB0aGlzLmhhc0JhY2tkcm9wXG4gICAgfSk7XG5cbiAgICBpZiAodGhpcy53aWR0aCB8fCB0aGlzLndpZHRoID09PSAwKSB7XG4gICAgICBvdmVybGF5Q29uZmlnLndpZHRoID0gdGhpcy53aWR0aDtcbiAgICB9XG5cbiAgICBpZiAodGhpcy5oZWlnaHQgfHwgdGhpcy5oZWlnaHQgPT09IDApIHtcbiAgICAgIG92ZXJsYXlDb25maWcuaGVpZ2h0ID0gdGhpcy5oZWlnaHQ7XG4gICAgfVxuXG4gICAgaWYgKHRoaXMubWluV2lkdGggfHwgdGhpcy5taW5XaWR0aCA9PT0gMCkge1xuICAgICAgb3ZlcmxheUNvbmZpZy5taW5XaWR0aCA9IHRoaXMubWluV2lkdGg7XG4gICAgfVxuXG4gICAgaWYgKHRoaXMubWluSGVpZ2h0IHx8IHRoaXMubWluSGVpZ2h0ID09PSAwKSB7XG4gICAgICBvdmVybGF5Q29uZmlnLm1pbkhlaWdodCA9IHRoaXMubWluSGVpZ2h0O1xuICAgIH1cblxuICAgIGlmICh0aGlzLmJhY2tkcm9wQ2xhc3MpIHtcbiAgICAgIG92ZXJsYXlDb25maWcuYmFja2Ryb3BDbGFzcyA9IHRoaXMuYmFja2Ryb3BDbGFzcztcbiAgICB9XG5cbiAgICBpZiAodGhpcy5wYW5lbENsYXNzKSB7XG4gICAgICBvdmVybGF5Q29uZmlnLnBhbmVsQ2xhc3MgPSB0aGlzLnBhbmVsQ2xhc3M7XG4gICAgfVxuXG4gICAgcmV0dXJuIG92ZXJsYXlDb25maWc7XG4gIH1cblxuICAvKiogVXBkYXRlcyB0aGUgc3RhdGUgb2YgYSBwb3NpdGlvbiBzdHJhdGVneSwgYmFzZWQgb24gdGhlIHZhbHVlcyBvZiB0aGUgZGlyZWN0aXZlIGlucHV0cy4gKi9cbiAgcHJpdmF0ZSBfdXBkYXRlUG9zaXRpb25TdHJhdGVneShwb3NpdGlvblN0cmF0ZWd5OiBGbGV4aWJsZUNvbm5lY3RlZFBvc2l0aW9uU3RyYXRlZ3kpIHtcbiAgICBjb25zdCBwb3NpdGlvbnM6IENvbm5lY3RlZFBvc2l0aW9uW10gPSB0aGlzLnBvc2l0aW9ucy5tYXAoY3VycmVudFBvc2l0aW9uID0+ICh7XG4gICAgICBvcmlnaW5YOiBjdXJyZW50UG9zaXRpb24ub3JpZ2luWCxcbiAgICAgIG9yaWdpblk6IGN1cnJlbnRQb3NpdGlvbi5vcmlnaW5ZLFxuICAgICAgb3ZlcmxheVg6IGN1cnJlbnRQb3NpdGlvbi5vdmVybGF5WCxcbiAgICAgIG92ZXJsYXlZOiBjdXJyZW50UG9zaXRpb24ub3ZlcmxheVksXG4gICAgICBvZmZzZXRYOiBjdXJyZW50UG9zaXRpb24ub2Zmc2V0WCB8fCB0aGlzLm9mZnNldFgsXG4gICAgICBvZmZzZXRZOiBjdXJyZW50UG9zaXRpb24ub2Zmc2V0WSB8fCB0aGlzLm9mZnNldFksXG4gICAgICBwYW5lbENsYXNzOiBjdXJyZW50UG9zaXRpb24ucGFuZWxDbGFzcyB8fCB1bmRlZmluZWQsXG4gICAgfSkpO1xuXG4gICAgcmV0dXJuIHBvc2l0aW9uU3RyYXRlZ3lcbiAgICAgIC5zZXRPcmlnaW4odGhpcy5vcmlnaW4uZWxlbWVudFJlZilcbiAgICAgIC53aXRoUG9zaXRpb25zKHBvc2l0aW9ucylcbiAgICAgIC53aXRoRmxleGlibGVEaW1lbnNpb25zKHRoaXMuZmxleGlibGVEaW1lbnNpb25zKVxuICAgICAgLndpdGhQdXNoKHRoaXMucHVzaClcbiAgICAgIC53aXRoR3Jvd0FmdGVyT3Blbih0aGlzLmdyb3dBZnRlck9wZW4pXG4gICAgICAud2l0aFZpZXdwb3J0TWFyZ2luKHRoaXMudmlld3BvcnRNYXJnaW4pXG4gICAgICAud2l0aExvY2tlZFBvc2l0aW9uKHRoaXMubG9ja1Bvc2l0aW9uKVxuICAgICAgLndpdGhUcmFuc2Zvcm1PcmlnaW5Pbih0aGlzLnRyYW5zZm9ybU9yaWdpblNlbGVjdG9yKTtcbiAgfVxuXG4gIC8qKiBSZXR1cm5zIHRoZSBwb3NpdGlvbiBzdHJhdGVneSBvZiB0aGUgb3ZlcmxheSB0byBiZSBzZXQgb24gdGhlIG92ZXJsYXkgY29uZmlnICovXG4gIHByaXZhdGUgX2NyZWF0ZVBvc2l0aW9uU3RyYXRlZ3koKTogRmxleGlibGVDb25uZWN0ZWRQb3NpdGlvblN0cmF0ZWd5IHtcbiAgICBjb25zdCBzdHJhdGVneSA9IHRoaXMuX292ZXJsYXkucG9zaXRpb24oKS5mbGV4aWJsZUNvbm5lY3RlZFRvKHRoaXMub3JpZ2luLmVsZW1lbnRSZWYpO1xuICAgIHRoaXMuX3VwZGF0ZVBvc2l0aW9uU3RyYXRlZ3koc3RyYXRlZ3kpO1xuICAgIHJldHVybiBzdHJhdGVneTtcbiAgfVxuXG4gIC8qKiBBdHRhY2hlcyB0aGUgb3ZlcmxheSBhbmQgc3Vic2NyaWJlcyB0byBiYWNrZHJvcCBjbGlja3MgaWYgYmFja2Ryb3AgZXhpc3RzICovXG4gIHByaXZhdGUgX2F0dGFjaE92ZXJsYXkoKSB7XG4gICAgaWYgKCF0aGlzLl9vdmVybGF5UmVmKSB7XG4gICAgICB0aGlzLl9jcmVhdGVPdmVybGF5KCk7XG4gICAgfSBlbHNlIHtcbiAgICAgIC8vIFVwZGF0ZSB0aGUgb3ZlcmxheSBzaXplLCBpbiBjYXNlIHRoZSBkaXJlY3RpdmUncyBpbnB1dHMgaGF2ZSBjaGFuZ2VkXG4gICAgICB0aGlzLl9vdmVybGF5UmVmLmdldENvbmZpZygpLmhhc0JhY2tkcm9wID0gdGhpcy5oYXNCYWNrZHJvcDtcbiAgICB9XG5cbiAgICBpZiAoIXRoaXMuX292ZXJsYXlSZWYuaGFzQXR0YWNoZWQoKSkge1xuICAgICAgdGhpcy5fb3ZlcmxheVJlZi5hdHRhY2godGhpcy5fdGVtcGxhdGVQb3J0YWwpO1xuICAgIH1cblxuICAgIGlmICh0aGlzLmhhc0JhY2tkcm9wKSB7XG4gICAgICB0aGlzLl9iYWNrZHJvcFN1YnNjcmlwdGlvbiA9IHRoaXMuX292ZXJsYXlSZWYuYmFja2Ryb3BDbGljaygpLnN1YnNjcmliZShldmVudCA9PiB7XG4gICAgICAgIHRoaXMuYmFja2Ryb3BDbGljay5lbWl0KGV2ZW50KTtcbiAgICAgIH0pO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLl9iYWNrZHJvcFN1YnNjcmlwdGlvbi51bnN1YnNjcmliZSgpO1xuICAgIH1cblxuICAgIHRoaXMuX3Bvc2l0aW9uU3Vic2NyaXB0aW9uLnVuc3Vic2NyaWJlKCk7XG5cbiAgICAvLyBPbmx5IHN1YnNjcmliZSB0byBgcG9zaXRpb25DaGFuZ2VzYCBpZiByZXF1ZXN0ZWQsIGJlY2F1c2UgcHV0dGluZ1xuICAgIC8vIHRvZ2V0aGVyIGFsbCB0aGUgaW5mb3JtYXRpb24gZm9yIGl0IGNhbiBiZSBleHBlbnNpdmUuXG4gICAgaWYgKHRoaXMucG9zaXRpb25DaGFuZ2Uub2JzZXJ2ZXJzLmxlbmd0aCA+IDApIHtcbiAgICAgIHRoaXMuX3Bvc2l0aW9uU3Vic2NyaXB0aW9uID0gdGhpcy5fcG9zaXRpb24ucG9zaXRpb25DaGFuZ2VzXG4gICAgICAgIC5waXBlKHRha2VXaGlsZSgoKSA9PiB0aGlzLnBvc2l0aW9uQ2hhbmdlLm9ic2VydmVycy5sZW5ndGggPiAwKSlcbiAgICAgICAgLnN1YnNjcmliZShwb3NpdGlvbiA9PiB7XG4gICAgICAgICAgdGhpcy5wb3NpdGlvbkNoYW5nZS5lbWl0KHBvc2l0aW9uKTtcblxuICAgICAgICAgIGlmICh0aGlzLnBvc2l0aW9uQ2hhbmdlLm9ic2VydmVycy5sZW5ndGggPT09IDApIHtcbiAgICAgICAgICAgIHRoaXMuX3Bvc2l0aW9uU3Vic2NyaXB0aW9uLnVuc3Vic2NyaWJlKCk7XG4gICAgICAgICAgfVxuICAgICAgICB9KTtcbiAgICB9XG4gIH1cblxuICAvKiogRGV0YWNoZXMgdGhlIG92ZXJsYXkgYW5kIHVuc3Vic2NyaWJlcyB0byBiYWNrZHJvcCBjbGlja3MgaWYgYmFja2Ryb3AgZXhpc3RzICovXG4gIHByaXZhdGUgX2RldGFjaE92ZXJsYXkoKSB7XG4gICAgaWYgKHRoaXMuX292ZXJsYXlSZWYpIHtcbiAgICAgIHRoaXMuX292ZXJsYXlSZWYuZGV0YWNoKCk7XG4gICAgfVxuXG4gICAgdGhpcy5fYmFja2Ryb3BTdWJzY3JpcHRpb24udW5zdWJzY3JpYmUoKTtcbiAgICB0aGlzLl9wb3NpdGlvblN1YnNjcmlwdGlvbi51bnN1YnNjcmliZSgpO1xuICB9XG5cbiAgc3RhdGljIG5nQWNjZXB0SW5wdXRUeXBlX2hhc0JhY2tkcm9wOiBCb29sZWFuSW5wdXQ7XG4gIHN0YXRpYyBuZ0FjY2VwdElucHV0VHlwZV9sb2NrUG9zaXRpb246IEJvb2xlYW5JbnB1dDtcbiAgc3RhdGljIG5nQWNjZXB0SW5wdXRUeXBlX2ZsZXhpYmxlRGltZW5zaW9uczogQm9vbGVhbklucHV0O1xuICBzdGF0aWMgbmdBY2NlcHRJbnB1dFR5cGVfZ3Jvd0FmdGVyT3BlbjogQm9vbGVhbklucHV0O1xuICBzdGF0aWMgbmdBY2NlcHRJbnB1dFR5cGVfcHVzaDogQm9vbGVhbklucHV0O1xufVxuXG5cbi8qKiBAZG9jcy1wcml2YXRlICovXG5leHBvcnQgZnVuY3Rpb24gQ0RLX0NPTk5FQ1RFRF9PVkVSTEFZX1NDUk9MTF9TVFJBVEVHWV9QUk9WSURFUl9GQUNUT1JZKG92ZXJsYXk6IE92ZXJsYXkpOlxuICAgICgpID0+IFJlcG9zaXRpb25TY3JvbGxTdHJhdGVneSB7XG4gIHJldHVybiAoKSA9PiBvdmVybGF5LnNjcm9sbFN0cmF0ZWdpZXMucmVwb3NpdGlvbigpO1xufVxuXG4vKiogQGRvY3MtcHJpdmF0ZSAqL1xuZXhwb3J0IGNvbnN0IENES19DT05ORUNURURfT1ZFUkxBWV9TQ1JPTExfU1RSQVRFR1lfUFJPVklERVIgPSB7XG4gIHByb3ZpZGU6IENES19DT05ORUNURURfT1ZFUkxBWV9TQ1JPTExfU1RSQVRFR1ksXG4gIGRlcHM6IFtPdmVybGF5XSxcbiAgdXNlRmFjdG9yeTogQ0RLX0NPTk5FQ1RFRF9PVkVSTEFZX1NDUk9MTF9TVFJBVEVHWV9QUk9WSURFUl9GQUNUT1JZLFxufTtcbiJdfQ==