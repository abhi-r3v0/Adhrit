/**
 * @copyright Valor Software
 * @copyright Angular ng-bootstrap team
 */
import { Renderer2 } from '@angular/core';
import { Trigger } from './trigger.class';
export declare type BsEventCallback = (event?: any) => boolean | void;
export interface ListenOptions {
    target?: HTMLElement;
    targets?: HTMLElement[];
    triggers?: any;
    outsideClick?: boolean;
    outsideEsc?: boolean;
    show?: any;
    hide?: any;
    toggle?: BsEventCallback;
}
export declare function parseTriggers(triggers: string, aliases?: any): Trigger[];
export declare function listenToTriggers(renderer: Renderer2, target: any, triggers: string, showFn: BsEventCallback, hideFn: BsEventCallback, toggleFn: BsEventCallback): Function;
export declare function listenToTriggersV2(renderer: Renderer2, options: ListenOptions): Function;
export declare function registerOutsideClick(renderer: Renderer2, options: ListenOptions): Function;
export declare function registerEscClick(renderer: Renderer2, options: ListenOptions): Function;
