import { ElementRef } from '@angular/core';
export declare class Utils {
    constructor();
    static reflow(element: any): void;
    static getStyles(elem: any): any;
    focusTrapModal(event: KeyboardEvent | any, el: ElementRef): void;
    getClosestEl(el: any, selector: string): any;
    getCoords(elem: any): any;
}
