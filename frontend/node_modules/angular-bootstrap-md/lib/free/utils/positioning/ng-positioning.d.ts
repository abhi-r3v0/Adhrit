/**
 * @copyright Valor Software
 * @copyright Federico Zivolo and contributors
 */
import { Renderer2 } from '@angular/core';
import { Data, Offsets, Options } from './models/index';
export declare class Positioning {
    position(hostElement: HTMLElement, targetElement: HTMLElement): Offsets;
    offset(hostElement: HTMLElement, targetElement: HTMLElement): Offsets;
    positionElements(hostElement: HTMLElement, targetElement: HTMLElement, position: string, _appendToBody?: boolean, options?: any): Data;
}
export declare function positionElements(hostElement: HTMLElement, targetElement: HTMLElement, placement: string, appendToBody?: boolean, options?: Options, renderer?: Renderer2): void;
