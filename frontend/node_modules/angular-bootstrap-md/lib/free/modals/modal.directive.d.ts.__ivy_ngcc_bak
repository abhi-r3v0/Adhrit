import { AfterViewInit, ComponentRef, ElementRef, EventEmitter, OnDestroy, OnChanges, Renderer2, ViewContainerRef } from '@angular/core';
import { Utils } from '../utils/utils.class';
import { ModalBackdropComponent } from './modalBackdrop.component';
import { ModalOptions } from './modal.options';
import { ComponentLoaderFactory } from '../utils/component-loader/component-loader.factory';
import { ConfigurableFocusTrapFactory } from '@angular/cdk/a11y';
/** Mark any code with directive to show it's content in modal */
export declare class ModalDirective implements AfterViewInit, OnDestroy, OnChanges {
    protected _element: ElementRef;
    private _focusTrapFactory;
    protected _renderer: Renderer2;
    /** allows to set modal configuration via element property */
    set config(conf: ModalOptions | any);
    get config(): ModalOptions | any;
    /** This event fires immediately when the `show` instance method is called. */
    onShow: EventEmitter<ModalDirective>;
    open: EventEmitter<ModalDirective>;
    /** This event is fired when the modal has been made visible to the user (will wait for CSS transitions to complete) */
    onShown: EventEmitter<ModalDirective>;
    opened: EventEmitter<ModalDirective>;
    /** This event is fired immediately when the hide instance method has been called. */
    onHide: EventEmitter<ModalDirective>;
    close: EventEmitter<ModalDirective>;
    /** This event is fired when the modal has finished being hidden from the user (will wait for CSS transitions to complete). */
    onHidden: EventEmitter<ModalDirective>;
    closed: EventEmitter<ModalDirective>;
    isAnimated: boolean;
    /** This field contains last dismiss reason.
     Possible values: `backdrop-click`, `esc` and `null` (if modal was closed by direct call of `.hide()`). */
    dismissReason: string | any;
    get isShown(): boolean;
    protected _config: ModalOptions | any;
    protected _isShown: boolean;
    protected isBodyOverflowing: boolean;
    protected originalBodyPadding: number;
    protected scrollbarWidth: number;
    protected timerHideModal: any;
    protected timerRmBackDrop: any;
    protected backdrop: ComponentRef<ModalBackdropComponent> | undefined;
    private _backdrop;
    private _focusTrap;
    _dialog: any;
    isNested: boolean;
    utils: Utils;
    onClick(event: any): void;
    onEsc(): void;
    constructor(_element: ElementRef, _focusTrapFactory: ConfigurableFocusTrapFactory, _viewContainerRef: ViewContainerRef, _renderer: Renderer2, clf: ComponentLoaderFactory);
    ngOnDestroy(): any;
    ngAfterViewInit(): any;
    ngOnChanges(): any;
    /** Allows to manually toggle modal visibility */
    toggle(): void;
    /** Allows to manually open modal */
    show(): void;
    /** Allows to manually close modal */
    hide(event?: Event): void;
    /** Private methods @internal */
    protected getConfig(config?: ModalOptions): ModalOptions;
    /**
     *  Show dialog
     *  @internal
     */
    protected showElement(): void;
    private _createFocusTrap;
    /** @internal */
    protected hideModal(): void;
    /** @internal */
    protected showBackdrop(callback?: Function): void;
    /** @internal */
    protected removeBackdrop(): void;
    protected focusOtherModal(): void;
    /** @internal */
    protected resetAdjustments(): void;
    /** Scroll bar tricks */
    /** @internal */
    protected checkScrollbar(): void;
    protected setScrollbar(): void;
    protected getScrollbarWidth(): number;
}
