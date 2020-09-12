/**
 * @license Angular v10.0.14
 * (c) 2010-2020 Google LLC. https://angular.io/
 * License: MIT
 */

import { CompilerFactory } from '@angular/core';
import { CompilerOptions } from '@angular/core';
import { Injector } from '@angular/core';
import { PlatformRef } from '@angular/core';
import { StaticProvider } from '@angular/core';
import { TestComponentRenderer } from '@angular/core/testing';
import { ɵTestingCompiler } from '@angular/core/testing';
import { ɵTestingCompilerFactory } from '@angular/core/testing';

/**
 * NgModule for testing.
 *
 * @publicApi
 */
import * as ɵngcc0 from '@angular/core';
import * as ɵngcc1 from '@angular/platform-browser/testing';
export declare class BrowserDynamicTestingModule {
    static ɵmod: ɵngcc0.ɵɵNgModuleDefWithMeta<BrowserDynamicTestingModule, never, never, [typeof ɵngcc1.BrowserTestingModule]>;
    static ɵinj: ɵngcc0.ɵɵInjectorDef<BrowserDynamicTestingModule>;
}

/**
 * @publicApi
 */
export declare const platformBrowserDynamicTesting: (extraProviders?: StaticProvider[] | undefined) => PlatformRef;

export declare const ɵangular_packages_platform_browser_dynamic_testing_testing_a: StaticProvider[];

export declare class ɵangular_packages_platform_browser_dynamic_testing_testing_b implements ɵTestingCompilerFactory {
    private _injector;
    private _compilerFactory;
    constructor(_injector: Injector, _compilerFactory: CompilerFactory);
    createTestingCompiler(options: CompilerOptions[]): ɵTestingCompiler;
}

/**
 * A DOM based implementation of the TestComponentRenderer.
 */
export declare class ɵDOMTestComponentRenderer extends TestComponentRenderer {
    private _doc;
    constructor(_doc: any);
    insertRootElement(rootElId: string): void;
    static ɵfac: ɵngcc0.ɵɵFactoryDef<ɵDOMTestComponentRenderer, never>;
    static ɵprov: ɵngcc0.ɵɵInjectableDef<ɵDOMTestComponentRenderer>;
}

/**
 * Platform for dynamic tests
 *
 * @publicApi
 */
export declare const ɵplatformCoreDynamicTesting: (extraProviders?: any[]) => PlatformRef;

export { }

//# sourceMappingURL=testing.d.ts.map