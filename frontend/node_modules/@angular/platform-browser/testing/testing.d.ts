/**
 * @license Angular v10.0.14
 * (c) 2010-2020 Google LLC. https://angular.io/
 * License: MIT
 */

import { NgZone } from '@angular/core';
import { PlatformRef } from '@angular/core';
import { StaticProvider } from '@angular/core';

/**
 * NgModule for testing.
 *
 * @publicApi
 */
import * as ɵngcc0 from '@angular/core';
import * as ɵngcc1 from '@angular/platform-browser';
export declare class BrowserTestingModule {
    static ɵmod: ɵngcc0.ɵɵNgModuleDefWithMeta<BrowserTestingModule, never, never, [typeof ɵngcc1.BrowserModule]>;
    static ɵinj: ɵngcc0.ɵɵInjectorDef<BrowserTestingModule>;
}

/**
 * Platform for testing
 *
 * @publicApi
 */
export declare const platformBrowserTesting: (extraProviders?: StaticProvider[] | undefined) => PlatformRef;

export declare function ɵangular_packages_platform_browser_testing_testing_a(): NgZone;

export { }

//# sourceMappingURL=testing.d.ts.map