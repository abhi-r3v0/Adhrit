/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/testing/src/test_bed_common.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { InjectionToken } from '@angular/core';
/**
 * An abstract class for inserting the root test component element in a platform independent way.
 *
 * \@publicApi
 */
export class TestComponentRenderer {
    /**
     * @param {?} rootElementId
     * @return {?}
     */
    insertRootElement(rootElementId) { }
}
/**
 * \@publicApi
 * @type {?}
 */
export const ComponentFixtureAutoDetect = new InjectionToken('ComponentFixtureAutoDetect');
/**
 * \@publicApi
 * @type {?}
 */
export const ComponentFixtureNoNgZone = new InjectionToken('ComponentFixtureNoNgZone');
/**
 * Static methods implemented by the `TestBedViewEngine` and `TestBedRender3`
 *
 * \@publicApi
 * @record
 */
export function TestBedStatic() { }
if (false) {
    /* Skipping unhandled member: new (...args: any[]): TestBed;*/
    /**
     * @param {?} ngModule
     * @param {?} platform
     * @param {?=} aotSummaries
     * @return {?}
     */
    TestBedStatic.prototype.initTestEnvironment = function (ngModule, platform, aotSummaries) { };
    /**
     * Reset the providers for the test injector.
     * @return {?}
     */
    TestBedStatic.prototype.resetTestEnvironment = function () { };
    /**
     * @return {?}
     */
    TestBedStatic.prototype.resetTestingModule = function () { };
    /**
     * Allows overriding default compiler providers and settings
     * which are defined in test_injector.js
     * @param {?} config
     * @return {?}
     */
    TestBedStatic.prototype.configureCompiler = function (config) { };
    /**
     * Allows overriding default providers, directives, pipes, modules of the test injector,
     * which are defined in test_injector.js
     * @param {?} moduleDef
     * @return {?}
     */
    TestBedStatic.prototype.configureTestingModule = function (moduleDef) { };
    /**
     * Compile components with a `templateUrl` for the test's NgModule.
     * It is necessary to call this function
     * as fetching urls is asynchronous.
     * @return {?}
     */
    TestBedStatic.prototype.compileComponents = function () { };
    /**
     * @param {?} ngModule
     * @param {?} override
     * @return {?}
     */
    TestBedStatic.prototype.overrideModule = function (ngModule, override) { };
    /**
     * @param {?} component
     * @param {?} override
     * @return {?}
     */
    TestBedStatic.prototype.overrideComponent = function (component, override) { };
    /**
     * @param {?} directive
     * @param {?} override
     * @return {?}
     */
    TestBedStatic.prototype.overrideDirective = function (directive, override) { };
    /**
     * @param {?} pipe
     * @param {?} override
     * @return {?}
     */
    TestBedStatic.prototype.overridePipe = function (pipe, override) { };
    /**
     * @param {?} component
     * @param {?} template
     * @return {?}
     */
    TestBedStatic.prototype.overrideTemplate = function (component, template) { };
    /**
     * Overrides the template of the given component, compiling the template
     * in the context of the TestingModule.
     *
     * Note: This works for JIT and AOTed components as well.
     * @param {?} component
     * @param {?} template
     * @return {?}
     */
    TestBedStatic.prototype.overrideTemplateUsingTestingModule = function (component, template) { };
    /**
     * Overwrites all providers for the given token with the given provider definition.
     *
     * Note: This works for JIT and AOTed components as well.
     * @param {?} token
     * @param {?} provider
     * @return {?}
     */
    TestBedStatic.prototype.overrideProvider = function (token, provider) { };
    /**
     * @param {?} token
     * @param {?} provider
     * @return {?}
     */
    TestBedStatic.prototype.overrideProvider = function (token, provider) { };
    /**
     * @param {?} token
     * @param {?} provider
     * @return {?}
     */
    TestBedStatic.prototype.overrideProvider = function (token, provider) { };
    /**
     * @template T
     * @param {?} token
     * @param {?=} notFoundValue
     * @param {?=} flags
     * @return {?}
     */
    TestBedStatic.prototype.inject = function (token, notFoundValue, flags) { };
    /**
     * @template T
     * @param {?} token
     * @param {?} notFoundValue
     * @param {?=} flags
     * @return {?}
     */
    TestBedStatic.prototype.inject = function (token, notFoundValue, flags) { };
    /**
     * @deprecated from v9.0.0 use TestBed.inject
     * @template T
     * @param {?} token
     * @param {?=} notFoundValue
     * @param {?=} flags
     * @return {?}
     */
    TestBedStatic.prototype.get = function (token, notFoundValue, flags) { };
    /**
     * @deprecated from v9.0.0 use TestBed.inject
     * @param {?} token
     * @param {?=} notFoundValue
     * @return {?}
     */
    TestBedStatic.prototype.get = function (token, notFoundValue) { };
    /**
     * @template T
     * @param {?} component
     * @return {?}
     */
    TestBedStatic.prototype.createComponent = function (component) { };
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidGVzdF9iZWRfY29tbW9uLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS90ZXN0aW5nL3NyYy90ZXN0X2JlZF9jb21tb24udHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBUUEsT0FBTyxFQUFrRCxjQUFjLEVBQW9ELE1BQU0sZUFBZSxDQUFDOzs7Ozs7QUFXakosTUFBTSxPQUFPLHFCQUFxQjs7Ozs7SUFDaEMsaUJBQWlCLENBQUMsYUFBcUIsSUFBRyxDQUFDO0NBQzVDOzs7OztBQUtELE1BQU0sT0FBTywwQkFBMEIsR0FDbkMsSUFBSSxjQUFjLENBQVksNEJBQTRCLENBQUM7Ozs7O0FBSy9ELE1BQU0sT0FBTyx3QkFBd0IsR0FBRyxJQUFJLGNBQWMsQ0FBWSwwQkFBMEIsQ0FBQzs7Ozs7OztBQWtCakcsbUNBOEVDOzs7Ozs7Ozs7SUEzRUMsOEZBQ2lHOzs7OztJQUtqRywrREFBNkI7Ozs7SUFFN0IsNkRBQW9DOzs7Ozs7O0lBTXBDLGtFQUFpRjs7Ozs7OztJQU1qRiwwRUFBcUU7Ozs7Ozs7SUFPckUsNERBQWtDOzs7Ozs7SUFFbEMsMkVBQXlGOzs7Ozs7SUFFekYsK0VBQThGOzs7Ozs7SUFFOUYsK0VBQThGOzs7Ozs7SUFFOUYscUVBQStFOzs7Ozs7SUFFL0UsOEVBQXdFOzs7Ozs7Ozs7O0lBUXhFLGdHQUEwRjs7Ozs7Ozs7O0lBTzFGLDBFQUdrQjs7Ozs7O0lBQ2xCLDBFQUF3RTs7Ozs7O0lBQ3hFLDBFQUlrQjs7Ozs7Ozs7SUFFbEIsNEVBQ2lHOzs7Ozs7OztJQUNqRyw0RUFFVTs7Ozs7Ozs7O0lBR1YseUVBQXNGOzs7Ozs7O0lBRXRGLGtFQUEwQzs7Ozs7O0lBRTFDLG1FQUE0RCIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtBYnN0cmFjdFR5cGUsIENvbXBvbmVudCwgRGlyZWN0aXZlLCBJbmplY3RGbGFncywgSW5qZWN0aW9uVG9rZW4sIE5nTW9kdWxlLCBQaXBlLCBQbGF0Zm9ybVJlZiwgU2NoZW1hTWV0YWRhdGEsIFR5cGV9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG5pbXBvcnQge0NvbXBvbmVudEZpeHR1cmV9IGZyb20gJy4vY29tcG9uZW50X2ZpeHR1cmUnO1xuaW1wb3J0IHtNZXRhZGF0YU92ZXJyaWRlfSBmcm9tICcuL21ldGFkYXRhX292ZXJyaWRlJztcbmltcG9ydCB7VGVzdEJlZH0gZnJvbSAnLi90ZXN0X2JlZCc7XG5cbi8qKlxuICogQW4gYWJzdHJhY3QgY2xhc3MgZm9yIGluc2VydGluZyB0aGUgcm9vdCB0ZXN0IGNvbXBvbmVudCBlbGVtZW50IGluIGEgcGxhdGZvcm0gaW5kZXBlbmRlbnQgd2F5LlxuICpcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGNsYXNzIFRlc3RDb21wb25lbnRSZW5kZXJlciB7XG4gIGluc2VydFJvb3RFbGVtZW50KHJvb3RFbGVtZW50SWQ6IHN0cmluZykge31cbn1cblxuLyoqXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBjb25zdCBDb21wb25lbnRGaXh0dXJlQXV0b0RldGVjdCA9XG4gICAgbmV3IEluamVjdGlvblRva2VuPGJvb2xlYW5bXT4oJ0NvbXBvbmVudEZpeHR1cmVBdXRvRGV0ZWN0Jyk7XG5cbi8qKlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgY29uc3QgQ29tcG9uZW50Rml4dHVyZU5vTmdab25lID0gbmV3IEluamVjdGlvblRva2VuPGJvb2xlYW5bXT4oJ0NvbXBvbmVudEZpeHR1cmVOb05nWm9uZScpO1xuXG4vKipcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IHR5cGUgVGVzdE1vZHVsZU1ldGFkYXRhID0ge1xuICBwcm92aWRlcnM/OiBhbnlbXSxcbiAgZGVjbGFyYXRpb25zPzogYW55W10sXG4gIGltcG9ydHM/OiBhbnlbXSxcbiAgc2NoZW1hcz86IEFycmF5PFNjaGVtYU1ldGFkYXRhfGFueVtdPixcbiAgYW90U3VtbWFyaWVzPzogKCkgPT4gYW55W10sXG59O1xuXG4vKipcbiAqIFN0YXRpYyBtZXRob2RzIGltcGxlbWVudGVkIGJ5IHRoZSBgVGVzdEJlZFZpZXdFbmdpbmVgIGFuZCBgVGVzdEJlZFJlbmRlcjNgXG4gKlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgaW50ZXJmYWNlIFRlc3RCZWRTdGF0aWMge1xuICBuZXcgKC4uLmFyZ3M6IGFueVtdKTogVGVzdEJlZDtcblxuICBpbml0VGVzdEVudmlyb25tZW50KFxuICAgICAgbmdNb2R1bGU6IFR5cGU8YW55PnxUeXBlPGFueT5bXSwgcGxhdGZvcm06IFBsYXRmb3JtUmVmLCBhb3RTdW1tYXJpZXM/OiAoKSA9PiBhbnlbXSk6IFRlc3RCZWQ7XG5cbiAgLyoqXG4gICAqIFJlc2V0IHRoZSBwcm92aWRlcnMgZm9yIHRoZSB0ZXN0IGluamVjdG9yLlxuICAgKi9cbiAgcmVzZXRUZXN0RW52aXJvbm1lbnQoKTogdm9pZDtcblxuICByZXNldFRlc3RpbmdNb2R1bGUoKTogVGVzdEJlZFN0YXRpYztcblxuICAvKipcbiAgICogQWxsb3dzIG92ZXJyaWRpbmcgZGVmYXVsdCBjb21waWxlciBwcm92aWRlcnMgYW5kIHNldHRpbmdzXG4gICAqIHdoaWNoIGFyZSBkZWZpbmVkIGluIHRlc3RfaW5qZWN0b3IuanNcbiAgICovXG4gIGNvbmZpZ3VyZUNvbXBpbGVyKGNvbmZpZzoge3Byb3ZpZGVycz86IGFueVtdOyB1c2VKaXQ/OiBib29sZWFuO30pOiBUZXN0QmVkU3RhdGljO1xuXG4gIC8qKlxuICAgKiBBbGxvd3Mgb3ZlcnJpZGluZyBkZWZhdWx0IHByb3ZpZGVycywgZGlyZWN0aXZlcywgcGlwZXMsIG1vZHVsZXMgb2YgdGhlIHRlc3QgaW5qZWN0b3IsXG4gICAqIHdoaWNoIGFyZSBkZWZpbmVkIGluIHRlc3RfaW5qZWN0b3IuanNcbiAgICovXG4gIGNvbmZpZ3VyZVRlc3RpbmdNb2R1bGUobW9kdWxlRGVmOiBUZXN0TW9kdWxlTWV0YWRhdGEpOiBUZXN0QmVkU3RhdGljO1xuXG4gIC8qKlxuICAgKiBDb21waWxlIGNvbXBvbmVudHMgd2l0aCBhIGB0ZW1wbGF0ZVVybGAgZm9yIHRoZSB0ZXN0J3MgTmdNb2R1bGUuXG4gICAqIEl0IGlzIG5lY2Vzc2FyeSB0byBjYWxsIHRoaXMgZnVuY3Rpb25cbiAgICogYXMgZmV0Y2hpbmcgdXJscyBpcyBhc3luY2hyb25vdXMuXG4gICAqL1xuICBjb21waWxlQ29tcG9uZW50cygpOiBQcm9taXNlPGFueT47XG5cbiAgb3ZlcnJpZGVNb2R1bGUobmdNb2R1bGU6IFR5cGU8YW55Piwgb3ZlcnJpZGU6IE1ldGFkYXRhT3ZlcnJpZGU8TmdNb2R1bGU+KTogVGVzdEJlZFN0YXRpYztcblxuICBvdmVycmlkZUNvbXBvbmVudChjb21wb25lbnQ6IFR5cGU8YW55Piwgb3ZlcnJpZGU6IE1ldGFkYXRhT3ZlcnJpZGU8Q29tcG9uZW50Pik6IFRlc3RCZWRTdGF0aWM7XG5cbiAgb3ZlcnJpZGVEaXJlY3RpdmUoZGlyZWN0aXZlOiBUeXBlPGFueT4sIG92ZXJyaWRlOiBNZXRhZGF0YU92ZXJyaWRlPERpcmVjdGl2ZT4pOiBUZXN0QmVkU3RhdGljO1xuXG4gIG92ZXJyaWRlUGlwZShwaXBlOiBUeXBlPGFueT4sIG92ZXJyaWRlOiBNZXRhZGF0YU92ZXJyaWRlPFBpcGU+KTogVGVzdEJlZFN0YXRpYztcblxuICBvdmVycmlkZVRlbXBsYXRlKGNvbXBvbmVudDogVHlwZTxhbnk+LCB0ZW1wbGF0ZTogc3RyaW5nKTogVGVzdEJlZFN0YXRpYztcblxuICAvKipcbiAgICogT3ZlcnJpZGVzIHRoZSB0ZW1wbGF0ZSBvZiB0aGUgZ2l2ZW4gY29tcG9uZW50LCBjb21waWxpbmcgdGhlIHRlbXBsYXRlXG4gICAqIGluIHRoZSBjb250ZXh0IG9mIHRoZSBUZXN0aW5nTW9kdWxlLlxuICAgKlxuICAgKiBOb3RlOiBUaGlzIHdvcmtzIGZvciBKSVQgYW5kIEFPVGVkIGNvbXBvbmVudHMgYXMgd2VsbC5cbiAgICovXG4gIG92ZXJyaWRlVGVtcGxhdGVVc2luZ1Rlc3RpbmdNb2R1bGUoY29tcG9uZW50OiBUeXBlPGFueT4sIHRlbXBsYXRlOiBzdHJpbmcpOiBUZXN0QmVkU3RhdGljO1xuXG4gIC8qKlxuICAgKiBPdmVyd3JpdGVzIGFsbCBwcm92aWRlcnMgZm9yIHRoZSBnaXZlbiB0b2tlbiB3aXRoIHRoZSBnaXZlbiBwcm92aWRlciBkZWZpbml0aW9uLlxuICAgKlxuICAgKiBOb3RlOiBUaGlzIHdvcmtzIGZvciBKSVQgYW5kIEFPVGVkIGNvbXBvbmVudHMgYXMgd2VsbC5cbiAgICovXG4gIG92ZXJyaWRlUHJvdmlkZXIodG9rZW46IGFueSwgcHJvdmlkZXI6IHtcbiAgICB1c2VGYWN0b3J5OiBGdW5jdGlvbixcbiAgICBkZXBzOiBhbnlbXSxcbiAgfSk6IFRlc3RCZWRTdGF0aWM7XG4gIG92ZXJyaWRlUHJvdmlkZXIodG9rZW46IGFueSwgcHJvdmlkZXI6IHt1c2VWYWx1ZTogYW55O30pOiBUZXN0QmVkU3RhdGljO1xuICBvdmVycmlkZVByb3ZpZGVyKHRva2VuOiBhbnksIHByb3ZpZGVyOiB7XG4gICAgdXNlRmFjdG9yeT86IEZ1bmN0aW9uLFxuICAgIHVzZVZhbHVlPzogYW55LFxuICAgIGRlcHM/OiBhbnlbXSxcbiAgfSk6IFRlc3RCZWRTdGF0aWM7XG5cbiAgaW5qZWN0PFQ+KFxuICAgICAgdG9rZW46IFR5cGU8VD58SW5qZWN0aW9uVG9rZW48VD58QWJzdHJhY3RUeXBlPFQ+LCBub3RGb3VuZFZhbHVlPzogVCwgZmxhZ3M/OiBJbmplY3RGbGFncyk6IFQ7XG4gIGluamVjdDxUPihcbiAgICAgIHRva2VuOiBUeXBlPFQ+fEluamVjdGlvblRva2VuPFQ+fEFic3RyYWN0VHlwZTxUPiwgbm90Rm91bmRWYWx1ZTogbnVsbCwgZmxhZ3M/OiBJbmplY3RGbGFncyk6IFRcbiAgICAgIHxudWxsO1xuXG4gIC8qKiBAZGVwcmVjYXRlZCBmcm9tIHY5LjAuMCB1c2UgVGVzdEJlZC5pbmplY3QgKi9cbiAgZ2V0PFQ+KHRva2VuOiBUeXBlPFQ+fEluamVjdGlvblRva2VuPFQ+LCBub3RGb3VuZFZhbHVlPzogVCwgZmxhZ3M/OiBJbmplY3RGbGFncyk6IGFueTtcbiAgLyoqIEBkZXByZWNhdGVkIGZyb20gdjkuMC4wIHVzZSBUZXN0QmVkLmluamVjdCAqL1xuICBnZXQodG9rZW46IGFueSwgbm90Rm91bmRWYWx1ZT86IGFueSk6IGFueTtcblxuICBjcmVhdGVDb21wb25lbnQ8VD4oY29tcG9uZW50OiBUeXBlPFQ+KTogQ29tcG9uZW50Rml4dHVyZTxUPjtcbn1cbiJdfQ==