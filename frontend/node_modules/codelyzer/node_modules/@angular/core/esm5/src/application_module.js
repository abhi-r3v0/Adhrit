/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __decorate, __metadata } from "tslib";
import { APP_INITIALIZER, ApplicationInitStatus } from './application_init';
import { ApplicationRef } from './application_ref';
import { APP_ID_RANDOM_PROVIDER } from './application_tokens';
import { IterableDiffers, KeyValueDiffers, defaultIterableDiffers, defaultKeyValueDiffers } from './change_detection/change_detection';
import { Console } from './console';
import { Injector } from './di';
import { Inject, Optional, SkipSelf } from './di/metadata';
import { ErrorHandler } from './error_handler';
import { DEFAULT_LOCALE_ID, USD_CURRENCY_CODE } from './i18n/localization';
import { DEFAULT_CURRENCY_CODE, LOCALE_ID } from './i18n/tokens';
import { ivyEnabled } from './ivy_switch';
import { ComponentFactoryResolver } from './linker';
import { Compiler } from './linker/compiler';
import { NgModule } from './metadata';
import { SCHEDULER } from './render3/component_ref';
import { setLocaleId } from './render3/i18n';
import { NgZone } from './zone';
export function _iterableDiffersFactory() {
    return defaultIterableDiffers;
}
export function _keyValueDiffersFactory() {
    return defaultKeyValueDiffers;
}
export function _localeFactory(locale) {
    locale = locale || getGlobalLocale();
    if (ivyEnabled) {
        setLocaleId(locale);
    }
    return locale;
}
/**
 * Work out the locale from the potential global properties.
 *
 * * Closure Compiler: use `goog.LOCALE`.
 * * Ivy enabled: use `$localize.locale`
 */
export function getGlobalLocale() {
    if (typeof ngI18nClosureMode !== 'undefined' && ngI18nClosureMode &&
        typeof goog !== 'undefined' && goog.LOCALE !== 'en') {
        // * The default `goog.LOCALE` value is `en`, while Angular used `en-US`.
        // * In order to preserve backwards compatibility, we use Angular default value over
        //   Closure Compiler's one.
        return goog.LOCALE;
    }
    else {
        // KEEP `typeof $localize !== 'undefined' && $localize.locale` IN SYNC WITH THE LOCALIZE
        // COMPILE-TIME INLINER.
        //
        // * During compile time inlining of translations the expression will be replaced
        //   with a string literal that is the current locale. Other forms of this expression are not
        //   guaranteed to be replaced.
        //
        // * During runtime translation evaluation, the developer is required to set `$localize.locale`
        //   if required, or just to provide their own `LOCALE_ID` provider.
        return (ivyEnabled && typeof $localize !== 'undefined' && $localize.locale) ||
            DEFAULT_LOCALE_ID;
    }
}
var ɵ0 = USD_CURRENCY_CODE;
/**
 * A built-in [dependency injection token](guide/glossary#di-token)
 * that is used to configure the root injector for bootstrapping.
 */
export var APPLICATION_MODULE_PROVIDERS = [
    {
        provide: ApplicationRef,
        useClass: ApplicationRef,
        deps: [NgZone, Console, Injector, ErrorHandler, ComponentFactoryResolver, ApplicationInitStatus]
    },
    { provide: SCHEDULER, deps: [NgZone], useFactory: zoneSchedulerFactory },
    {
        provide: ApplicationInitStatus,
        useClass: ApplicationInitStatus,
        deps: [[new Optional(), APP_INITIALIZER]]
    },
    { provide: Compiler, useClass: Compiler, deps: [] },
    APP_ID_RANDOM_PROVIDER,
    { provide: IterableDiffers, useFactory: _iterableDiffersFactory, deps: [] },
    { provide: KeyValueDiffers, useFactory: _keyValueDiffersFactory, deps: [] },
    {
        provide: LOCALE_ID,
        useFactory: _localeFactory,
        deps: [[new Inject(LOCALE_ID), new Optional(), new SkipSelf()]]
    },
    { provide: DEFAULT_CURRENCY_CODE, useValue: ɵ0 },
];
/**
 * Schedule work at next available slot.
 *
 * In Ivy this is just `requestAnimationFrame`. For compatibility reasons when bootstrapped
 * using `platformRef.bootstrap` we need to use `NgZone.onStable` as the scheduling mechanism.
 * This overrides the scheduling mechanism in Ivy to `NgZone.onStable`.
 *
 * @param ngZone NgZone to use for scheduling.
 */
export function zoneSchedulerFactory(ngZone) {
    var queue = [];
    ngZone.onStable.subscribe(function () {
        while (queue.length) {
            queue.pop()();
        }
    });
    return function (fn) { queue.push(fn); };
}
/**
 * Configures the root injector for an app with
 * providers of `@angular/core` dependencies that `ApplicationRef` needs
 * to bootstrap components.
 *
 * Re-exported by `BrowserModule`, which is included automatically in the root
 * `AppModule` when you create a new app with the CLI `new` command.
 *
 * @publicApi
 */
var ApplicationModule = /** @class */ (function () {
    // Inject ApplicationRef to make it eager...
    function ApplicationModule(appRef) {
    }
    ApplicationModule = __decorate([
        NgModule({ providers: APPLICATION_MODULE_PROVIDERS }),
        __metadata("design:paramtypes", [ApplicationRef])
    ], ApplicationModule);
    return ApplicationModule;
}());
export { ApplicationModule };
export { ɵ0 };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYXBwbGljYXRpb25fbW9kdWxlLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvYXBwbGljYXRpb25fbW9kdWxlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7QUFFSCxPQUFPLEVBQUMsZUFBZSxFQUFFLHFCQUFxQixFQUFDLE1BQU0sb0JBQW9CLENBQUM7QUFDMUUsT0FBTyxFQUFDLGNBQWMsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBQ2pELE9BQU8sRUFBQyxzQkFBc0IsRUFBQyxNQUFNLHNCQUFzQixDQUFDO0FBQzVELE9BQU8sRUFBQyxlQUFlLEVBQUUsZUFBZSxFQUFFLHNCQUFzQixFQUFFLHNCQUFzQixFQUFDLE1BQU0scUNBQXFDLENBQUM7QUFDckksT0FBTyxFQUFDLE9BQU8sRUFBQyxNQUFNLFdBQVcsQ0FBQztBQUNsQyxPQUFPLEVBQUMsUUFBUSxFQUFpQixNQUFNLE1BQU0sQ0FBQztBQUM5QyxPQUFPLEVBQUMsTUFBTSxFQUFFLFFBQVEsRUFBRSxRQUFRLEVBQUMsTUFBTSxlQUFlLENBQUM7QUFDekQsT0FBTyxFQUFDLFlBQVksRUFBQyxNQUFNLGlCQUFpQixDQUFDO0FBQzdDLE9BQU8sRUFBQyxpQkFBaUIsRUFBRSxpQkFBaUIsRUFBQyxNQUFNLHFCQUFxQixDQUFDO0FBQ3pFLE9BQU8sRUFBQyxxQkFBcUIsRUFBRSxTQUFTLEVBQUMsTUFBTSxlQUFlLENBQUM7QUFDL0QsT0FBTyxFQUFDLFVBQVUsRUFBQyxNQUFNLGNBQWMsQ0FBQztBQUN4QyxPQUFPLEVBQUMsd0JBQXdCLEVBQUMsTUFBTSxVQUFVLENBQUM7QUFDbEQsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBQzNDLE9BQU8sRUFBQyxRQUFRLEVBQUMsTUFBTSxZQUFZLENBQUM7QUFDcEMsT0FBTyxFQUFDLFNBQVMsRUFBQyxNQUFNLHlCQUF5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QUFDLEdBQUcsRUFBSSxFQUFFLENBQUM7U0FDakI7SUFDSCxDQUFDLENBQUMsQ0FBQztJQUNILE9BQU8sVUFBUyxFQUFjLElBQUksS0FBSyxDQUFDLElBQUksQ0FBQyxFQUFFLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztBQUN0RCxDQUFDO0FBRUQ7Ozs7Ozs7OztHQVNHO0FBRUg7SUFDRSw0Q0FBNEM7SUFDNUMsMkJBQVksTUFBc0I7SUFBRyxDQUFDO0lBRjNCLGlCQUFpQjtRQUQ3QixRQUFRLENBQUMsRUFBQyxTQUFTLEVBQUUsNEJBQTRCLEVBQUMsQ0FBQzt5Q0FHOUIsY0FBYztPQUZ2QixpQkFBaUIsQ0FHN0I7SUFBRCx3QkFBQztDQUFBLEFBSEQsSUFHQztTQUhZLGlCQUFpQiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtBUFBfSU5JVElBTElaRVIsIEFwcGxpY2F0aW9uSW5pdFN0YXR1c30gZnJvbSAnLi9hcHBsaWNhdGlvbl9pbml0JztcbmltcG9ydCB7QXBwbGljYXRpb25SZWZ9IGZyb20gJy4vYXBwbGljYXRpb25fcmVmJztcbmltcG9ydCB7QVBQX0lEX1JBTkRPTV9QUk9WSURFUn0gZnJvbSAnLi9hcHBsaWNhdGlvbl90b2tlbnMnO1xuaW1wb3J0IHtJdGVyYWJsZURpZmZlcnMsIEtleVZhbHVlRGlmZmVycywgZGVmYXVsdEl0ZXJhYmxlRGlmZmVycywgZGVmYXVsdEtleVZhbHVlRGlmZmVyc30gZnJvbSAnLi9jaGFuZ2VfZGV0ZWN0aW9uL2NoYW5nZV9kZXRlY3Rpb24nO1xuaW1wb3J0IHtDb25zb2xlfSBmcm9tICcuL2NvbnNvbGUnO1xuaW1wb3J0IHtJbmplY3RvciwgU3RhdGljUHJvdmlkZXJ9IGZyb20gJy4vZGknO1xuaW1wb3J0IHtJbmplY3QsIE9wdGlvbmFsLCBTa2lwU2VsZn0gZnJvbSAnLi9kaS9tZXRhZGF0YSc7XG5pbXBvcnQge0Vycm9ySGFuZGxlcn0gZnJvbSAnLi9lcnJvcl9oYW5kbGVyJztcbmltcG9ydCB7REVGQVVMVF9MT0NBTEVfSUQsIFVTRF9DVVJSRU5DWV9DT0RFfSBmcm9tICcuL2kxOG4vbG9jYWxpemF0aW9uJztcbmltcG9ydCB7REVGQVVMVF9DVVJSRU5DWV9DT0RFLCBMT0NBTEVfSUR9IGZyb20gJy4vaTE4bi90b2tlbnMnO1xuaW1wb3J0IHtpdnlFbmFibGVkfSBmcm9tICcuL2l2eV9zd2l0Y2gnO1xuaW1wb3J0IHtDb21wb25lbnRGYWN0b3J5UmVzb2x2ZXJ9IGZyb20gJy4vbGlua2VyJztcbmltcG9ydCB7Q29tcGlsZXJ9IGZyb20gJy4vbGlua2VyL2NvbXBpbGVyJztcbmltcG9ydCB7TmdNb2R1bGV9IGZyb20gJy4vbWV0YWRhdGEnO1xuaW1wb3J0IHtTQ0hFRFVMRVJ9IGZyb20gJy4vcmVuZGVyMy9jb21wb25lbnRfcmVmJztcbmltcG9ydCB7c2V0TG9jYWxlSWR9IGZyb20gJy4vcmVuZGVyMy9pMThuJztcbmltcG9ydCB7Tmdab25lfSBmcm9tICcuL3pvbmUnO1xuXG5kZWNsYXJlIGNvbnN0ICRsb2NhbGl6ZToge2xvY2FsZT86IHN0cmluZ307XG5cbmV4cG9ydCBmdW5jdGlvbiBfaXRlcmFibGVEaWZmZXJzRmFjdG9yeSgpIHtcbiAgcmV0dXJuIGRlZmF1bHRJdGVyYWJsZURpZmZlcnM7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBfa2V5VmFsdWVEaWZmZXJzRmFjdG9yeSgpIHtcbiAgcmV0dXJuIGRlZmF1bHRLZXlWYWx1ZURpZmZlcnM7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBfbG9jYWxlRmFjdG9yeShsb2NhbGU/OiBzdHJpbmcpOiBzdHJpbmcge1xuICBsb2NhbGUgPSBsb2NhbGUgfHwgZ2V0R2xvYmFsTG9jYWxlKCk7XG4gIGlmIChpdnlFbmFibGVkKSB7XG4gICAgc2V0TG9jYWxlSWQobG9jYWxlKTtcbiAgfVxuICByZXR1cm4gbG9jYWxlO1xufVxuXG4vKipcbiAqIFdvcmsgb3V0IHRoZSBsb2NhbGUgZnJvbSB0aGUgcG90ZW50aWFsIGdsb2JhbCBwcm9wZXJ0aWVzLlxuICpcbiAqICogQ2xvc3VyZSBDb21waWxlcjogdXNlIGBnb29nLkxPQ0FMRWAuXG4gKiAqIEl2eSBlbmFibGVkOiB1c2UgYCRsb2NhbGl6ZS5sb2NhbGVgXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRHbG9iYWxMb2NhbGUoKTogc3RyaW5nIHtcbiAgaWYgKHR5cGVvZiBuZ0kxOG5DbG9zdXJlTW9kZSAhPT0gJ3VuZGVmaW5lZCcgJiYgbmdJMThuQ2xvc3VyZU1vZGUgJiZcbiAgICAgIHR5cGVvZiBnb29nICE9PSAndW5kZWZpbmVkJyAmJiBnb29nLkxPQ0FMRSAhPT0gJ2VuJykge1xuICAgIC8vICogVGhlIGRlZmF1bHQgYGdvb2cuTE9DQUxFYCB2YWx1ZSBpcyBgZW5gLCB3aGlsZSBBbmd1bGFyIHVzZWQgYGVuLVVTYC5cbiAgICAvLyAqIEluIG9yZGVyIHRvIHByZXNlcnZlIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5LCB3ZSB1c2UgQW5ndWxhciBkZWZhdWx0IHZhbHVlIG92ZXJcbiAgICAvLyAgIENsb3N1cmUgQ29tcGlsZXIncyBvbmUuXG4gICAgcmV0dXJuIGdvb2cuTE9DQUxFO1xuICB9IGVsc2Uge1xuICAgIC8vIEtFRVAgYHR5cGVvZiAkbG9jYWxpemUgIT09ICd1bmRlZmluZWQnICYmICRsb2NhbGl6ZS5sb2NhbGVgIElOIFNZTkMgV0lUSCBUSEUgTE9DQUxJWkVcbiAgICAvLyBDT01QSUxFLVRJTUUgSU5MSU5FUi5cbiAgICAvL1xuICAgIC8vICogRHVyaW5nIGNvbXBpbGUgdGltZSBpbmxpbmluZyBvZiB0cmFuc2xhdGlvbnMgdGhlIGV4cHJlc3Npb24gd2lsbCBiZSByZXBsYWNlZFxuICAgIC8vICAgd2l0aCBhIHN0cmluZyBsaXRlcmFsIHRoYXQgaXMgdGhlIGN1cnJlbnQgbG9jYWxlLiBPdGhlciBmb3JtcyBvZiB0aGlzIGV4cHJlc3Npb24gYXJlIG5vdFxuICAgIC8vICAgZ3VhcmFudGVlZCB0byBiZSByZXBsYWNlZC5cbiAgICAvL1xuICAgIC8vICogRHVyaW5nIHJ1bnRpbWUgdHJhbnNsYXRpb24gZXZhbHVhdGlvbiwgdGhlIGRldmVsb3BlciBpcyByZXF1aXJlZCB0byBzZXQgYCRsb2NhbGl6ZS5sb2NhbGVgXG4gICAgLy8gICBpZiByZXF1aXJlZCwgb3IganVzdCB0byBwcm92aWRlIHRoZWlyIG93biBgTE9DQUxFX0lEYCBwcm92aWRlci5cbiAgICByZXR1cm4gKGl2eUVuYWJsZWQgJiYgdHlwZW9mICRsb2NhbGl6ZSAhPT0gJ3VuZGVmaW5lZCcgJiYgJGxvY2FsaXplLmxvY2FsZSkgfHxcbiAgICAgICAgREVGQVVMVF9MT0NBTEVfSUQ7XG4gIH1cbn1cblxuLyoqXG4gKiBBIGJ1aWx0LWluIFtkZXBlbmRlbmN5IGluamVjdGlvbiB0b2tlbl0oZ3VpZGUvZ2xvc3NhcnkjZGktdG9rZW4pXG4gKiB0aGF0IGlzIHVzZWQgdG8gY29uZmlndXJlIHRoZSByb290IGluamVjdG9yIGZvciBib290c3RyYXBwaW5nLlxuICovXG5leHBvcnQgY29uc3QgQVBQTElDQVRJT05fTU9EVUxFX1BST1ZJREVSUzogU3RhdGljUHJvdmlkZXJbXSA9IFtcbiAge1xuICAgIHByb3ZpZGU6IEFwcGxpY2F0aW9uUmVmLFxuICAgIHVzZUNsYXNzOiBBcHBsaWNhdGlvblJlZixcbiAgICBkZXBzOlxuICAgICAgICBbTmdab25lLCBDb25zb2xlLCBJbmplY3RvciwgRXJyb3JIYW5kbGVyLCBDb21wb25lbnRGYWN0b3J5UmVzb2x2ZXIsIEFwcGxpY2F0aW9uSW5pdFN0YXR1c11cbiAgfSxcbiAge3Byb3ZpZGU6IFNDSEVEVUxFUiwgZGVwczogW05nWm9uZV0sIHVzZUZhY3Rvcnk6IHpvbmVTY2hlZHVsZXJGYWN0b3J5fSxcbiAge1xuICAgIHByb3ZpZGU6IEFwcGxpY2F0aW9uSW5pdFN0YXR1cyxcbiAgICB1c2VDbGFzczogQXBwbGljYXRpb25Jbml0U3RhdHVzLFxuICAgIGRlcHM6IFtbbmV3IE9wdGlvbmFsKCksIEFQUF9JTklUSUFMSVpFUl1dXG4gIH0sXG4gIHtwcm92aWRlOiBDb21waWxlciwgdXNlQ2xhc3M6IENvbXBpbGVyLCBkZXBzOiBbXX0sXG4gIEFQUF9JRF9SQU5ET01fUFJPVklERVIsXG4gIHtwcm92aWRlOiBJdGVyYWJsZURpZmZlcnMsIHVzZUZhY3Rvcnk6IF9pdGVyYWJsZURpZmZlcnNGYWN0b3J5LCBkZXBzOiBbXX0sXG4gIHtwcm92aWRlOiBLZXlWYWx1ZURpZmZlcnMsIHVzZUZhY3Rvcnk6IF9rZXlWYWx1ZURpZmZlcnNGYWN0b3J5LCBkZXBzOiBbXX0sXG4gIHtcbiAgICBwcm92aWRlOiBMT0NBTEVfSUQsXG4gICAgdXNlRmFjdG9yeTogX2xvY2FsZUZhY3RvcnksXG4gICAgZGVwczogW1tuZXcgSW5qZWN0KExPQ0FMRV9JRCksIG5ldyBPcHRpb25hbCgpLCBuZXcgU2tpcFNlbGYoKV1dXG4gIH0sXG4gIHtwcm92aWRlOiBERUZBVUxUX0NVUlJFTkNZX0NPREUsIHVzZVZhbHVlOiBVU0RfQ1VSUkVOQ1lfQ09ERX0sXG5dO1xuXG4vKipcbiAqIFNjaGVkdWxlIHdvcmsgYXQgbmV4dCBhdmFpbGFibGUgc2xvdC5cbiAqXG4gKiBJbiBJdnkgdGhpcyBpcyBqdXN0IGByZXF1ZXN0QW5pbWF0aW9uRnJhbWVgLiBGb3IgY29tcGF0aWJpbGl0eSByZWFzb25zIHdoZW4gYm9vdHN0cmFwcGVkXG4gKiB1c2luZyBgcGxhdGZvcm1SZWYuYm9vdHN0cmFwYCB3ZSBuZWVkIHRvIHVzZSBgTmdab25lLm9uU3RhYmxlYCBhcyB0aGUgc2NoZWR1bGluZyBtZWNoYW5pc20uXG4gKiBUaGlzIG92ZXJyaWRlcyB0aGUgc2NoZWR1bGluZyBtZWNoYW5pc20gaW4gSXZ5IHRvIGBOZ1pvbmUub25TdGFibGVgLlxuICpcbiAqIEBwYXJhbSBuZ1pvbmUgTmdab25lIHRvIHVzZSBmb3Igc2NoZWR1bGluZy5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHpvbmVTY2hlZHVsZXJGYWN0b3J5KG5nWm9uZTogTmdab25lKTogKGZuOiAoKSA9PiB2b2lkKSA9PiB2b2lkIHtcbiAgbGV0IHF1ZXVlOiAoKCkgPT4gdm9pZClbXSA9IFtdO1xuICBuZ1pvbmUub25TdGFibGUuc3Vic2NyaWJlKCgpID0+IHtcbiAgICB3aGlsZSAocXVldWUubGVuZ3RoKSB7XG4gICAgICBxdWV1ZS5wb3AoKSAhKCk7XG4gICAgfVxuICB9KTtcbiAgcmV0dXJuIGZ1bmN0aW9uKGZuOiAoKSA9PiB2b2lkKSB7IHF1ZXVlLnB1c2goZm4pOyB9O1xufVxuXG4vKipcbiAqIENvbmZpZ3VyZXMgdGhlIHJvb3QgaW5qZWN0b3IgZm9yIGFuIGFwcCB3aXRoXG4gKiBwcm92aWRlcnMgb2YgYEBhbmd1bGFyL2NvcmVgIGRlcGVuZGVuY2llcyB0aGF0IGBBcHBsaWNhdGlvblJlZmAgbmVlZHNcbiAqIHRvIGJvb3RzdHJhcCBjb21wb25lbnRzLlxuICpcbiAqIFJlLWV4cG9ydGVkIGJ5IGBCcm93c2VyTW9kdWxlYCwgd2hpY2ggaXMgaW5jbHVkZWQgYXV0b21hdGljYWxseSBpbiB0aGUgcm9vdFxuICogYEFwcE1vZHVsZWAgd2hlbiB5b3UgY3JlYXRlIGEgbmV3IGFwcCB3aXRoIHRoZSBDTEkgYG5ld2AgY29tbWFuZC5cbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbkBOZ01vZHVsZSh7cHJvdmlkZXJzOiBBUFBMSUNBVElPTl9NT0RVTEVfUFJPVklERVJTfSlcbmV4cG9ydCBjbGFzcyBBcHBsaWNhdGlvbk1vZHVsZSB7XG4gIC8vIEluamVjdCBBcHBsaWNhdGlvblJlZiB0byBtYWtlIGl0IGVhZ2VyLi4uXG4gIGNvbnN0cnVjdG9yKGFwcFJlZjogQXBwbGljYXRpb25SZWYpIHt9XG59XG4iXX0=