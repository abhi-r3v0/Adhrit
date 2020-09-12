/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/**
 * Service to detect the current platform by comparing the userAgent strings and
 * checking browser-specific global properties.
 */
import * as ɵngcc0 from '@angular/core';
export declare class Platform {
    private _platformId;
    /** Whether the Angular application is being rendered in the browser. */
    isBrowser: boolean;
    /** Whether the current browser is Microsoft Edge. */
    EDGE: boolean;
    /** Whether the current rendering engine is Microsoft Trident. */
    TRIDENT: boolean;
    /** Whether the current rendering engine is Blink. */
    BLINK: boolean;
    /** Whether the current rendering engine is WebKit. */
    WEBKIT: boolean;
    /** Whether the current platform is Apple iOS. */
    IOS: boolean;
    /** Whether the current browser is Firefox. */
    FIREFOX: boolean;
    /** Whether the current platform is Android. */
    ANDROID: boolean;
    /** Whether the current browser is Safari. */
    SAFARI: boolean;
    constructor(_platformId: Object);
    static ɵfac: ɵngcc0.ɵɵFactoryDef<Platform, never>;
}

//# sourceMappingURL=platform.d.ts.map