import { ApplicationRef, ComponentFactoryResolver, ComponentRef, ElementRef, EmbeddedViewRef, EventEmitter, Injector, NgZone, Renderer2, StaticProvider, TemplateRef, Type, ViewContainerRef } from '@angular/core';
import { PositioningOptions, PositioningService } from './../positioning/positioning.service';
import { ListenOptions } from './listen-options.model';
export declare class ComponentLoader<T> {
    private _viewContainerRef;
    private _renderer;
    private _elementRef;
    private _injector;
    private _componentFactoryResolver;
    private _ngZone;
    private _applicationRef;
    private _posService;
    onBeforeShow: EventEmitter<void>;
    onShown: EventEmitter<any>;
    onBeforeHide: EventEmitter<any>;
    onHidden: EventEmitter<boolean>;
    shown: EventEmitter<any>;
    hidden: EventEmitter<any>;
    instance: T;
    _componentRef: ComponentRef<T> | any;
    _inlineViewRef: EmbeddedViewRef<T>;
    private _providers;
    private _componentFactory;
    private _zoneSubscription;
    private _contentRef;
    private _innerComponent;
    private _unregisterListenersFn;
    get isShown(): boolean;
    private _isHiding;
    /**
     * Placement of a component. Accepts: "top", "bottom", "left", "right"
     */
    private attachment;
    /**
     * A selector specifying the element the popover should be appended to.
     */
    private container;
    /**
     * A selector used if container element was not found
     */
    private containerDefaultSelector;
    /**
     * Specifies events that should trigger. Supports a space separated list of
     * event names.
     */
    private triggers;
    private _listenOpts;
    private _globalListener;
    /**
     * Do not use this directly, it should be instanced via
     * `ComponentLoadFactory.attach`
     * @internal
     */
    constructor(_viewContainerRef: ViewContainerRef, _renderer: Renderer2, _elementRef: ElementRef, _injector: Injector, _componentFactoryResolver: ComponentFactoryResolver, _ngZone: NgZone, _applicationRef: ApplicationRef, _posService: PositioningService);
    attach(compType: Type<T>): ComponentLoader<T>;
    to(container?: string | ElementRef): ComponentLoader<T>;
    position(opts?: PositioningOptions | any): ComponentLoader<T>;
    provide(provider: StaticProvider): ComponentLoader<T>;
    show(opts?: {
        content?: string | TemplateRef<any>;
        data?: any;
        [key: string]: any;
    }): ComponentRef<T>;
    hide(): ComponentLoader<T>;
    toggle(): void;
    dispose(): void;
    listen(listenOpts: ListenOptions | any): ComponentLoader<T>;
    _removeGlobalListener(): void;
    attachInline(vRef: ViewContainerRef, template: TemplateRef<any>): ComponentLoader<T>;
    _registerOutsideClick(): void;
    getInnerComponent(): ComponentRef<T>;
    private _subscribePositioning;
    private _unsubscribePositioning;
    private _getContentRef;
}
