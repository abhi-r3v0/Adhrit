import { ComponentRef, TemplateRef, EventEmitter, RendererFactory2 } from '@angular/core';
import { ComponentLoaderFactory } from '../utils/component-loader/component-loader.factory';
import { ModalBackdropComponent } from './modalBackdrop.component';
import { MDBModalRef, ModalOptions } from './modal.options';
export declare class MDBModalService {
    private clf;
    config: ModalOptions;
    private renderer;
    private vcr;
    private el;
    open: EventEmitter<any>;
    opened: EventEmitter<any>;
    close: EventEmitter<any>;
    closed: EventEmitter<any>;
    protected isBodyOverflowing: boolean;
    protected originalBodyPadding: number;
    protected scrollbarWidth: number;
    protected backdropRef: ComponentRef<ModalBackdropComponent> | any;
    private _backdropLoader;
    private modalsCount;
    private lastDismissReason;
    private loaders;
    constructor(rendererFactory: RendererFactory2, clf: ComponentLoaderFactory);
    /** Shows a modal */
    show(content: string | TemplateRef<any> | any, config?: any): MDBModalRef;
    hide(level: number): void;
    _showBackdrop(): void;
    _hideBackdrop(): void;
    _showModal(content: any): MDBModalRef;
    _hideModal(level: number): void;
    getModalsCount(): number;
    setDismissReason(reason: string): void;
    protected removeBackdrop(): void;
    /** AFTER PR MERGE MODAL.COMPONENT WILL BE USING THIS CODE*/
    /** Scroll bar tricks */
    /** @internal */
    checkScrollbar(): void;
    setScrollbar(): void;
    private resetScrollbar;
    private getScrollbarWidth;
    private _createLoaders;
    private removeLoaders;
    private copyEvent;
}
