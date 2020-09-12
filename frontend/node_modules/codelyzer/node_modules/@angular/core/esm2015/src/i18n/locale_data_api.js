/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/i18n/locale_data_api.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import localeEn from './locale_en';
import { global } from '../util/global';
/**
 * This const is used to store the locale data registered with `registerLocaleData`
 * @type {?}
 */
let LOCALE_DATA = {};
/**
 * Register locale data to be used internally by Angular. See the
 * ["I18n guide"](guide/i18n#i18n-pipes) to know how to import additional locale data.
 *
 * The signature `registerLocaleData(data: any, extraData?: any)` is deprecated since v5.1
 * @param {?} data
 * @param {?=} localeId
 * @param {?=} extraData
 * @return {?}
 */
export function registerLocaleData(data, localeId, extraData) {
    if (typeof localeId !== 'string') {
        extraData = localeId;
        localeId = data[LocaleDataIndex.LocaleId];
    }
    localeId = localeId.toLowerCase().replace(/_/g, '-');
    LOCALE_DATA[localeId] = data;
    if (extraData) {
        LOCALE_DATA[localeId][LocaleDataIndex.ExtraData] = extraData;
    }
}
/**
 * Finds the locale data for a given locale.
 *
 * @see [Internationalization (i18n) Guide](https://angular.io/guide/i18n)
 * @param {?} locale The locale code.
 * @return {?} The locale data.
 */
export function findLocaleData(locale) {
    /** @type {?} */
    const normalizedLocale = normalizeLocale(locale);
    /** @type {?} */
    let match = getLocaleData(normalizedLocale);
    if (match) {
        return match;
    }
    // let's try to find a parent locale
    /** @type {?} */
    const parentLocale = normalizedLocale.split('-')[0];
    match = getLocaleData(parentLocale);
    if (match) {
        return match;
    }
    if (parentLocale === 'en') {
        return localeEn;
    }
    throw new Error(`Missing locale data for the locale "${locale}".`);
}
/**
 * Retrieves the default currency code for the given locale.
 *
 * The default is defined as the first currency which is still in use.
 *
 * @param {?} locale The code of the locale whose currency code we want.
 * @return {?} The code of the default currency for the given locale.
 *
 */
export function getLocaleCurrencyCode(locale) {
    /** @type {?} */
    const data = findLocaleData(locale);
    return data[LocaleDataIndex.CurrencyCode] || null;
}
/**
 * Retrieves the plural function used by ICU expressions to determine the plural case to use
 * for a given locale.
 * @see `NgPlural` / [Internationalization (i18n) Guide](https://angular.io/guide/i18n)
 * @param {?} locale A locale code for the locale format rules to use.
 * @return {?} The plural function for the locale.
 */
export function getLocalePluralCase(locale) {
    /** @type {?} */
    const data = findLocaleData(locale);
    return data[LocaleDataIndex.PluralCase];
}
/**
 * Helper function to get the given `normalizedLocale` from `LOCALE_DATA`
 * or from the global `ng.common.locale`.
 * @param {?} normalizedLocale
 * @return {?}
 */
export function getLocaleData(normalizedLocale) {
    if (!(normalizedLocale in LOCALE_DATA)) {
        LOCALE_DATA[normalizedLocale] = global.ng && global.ng.common && global.ng.common.locales &&
            global.ng.common.locales[normalizedLocale];
    }
    return LOCALE_DATA[normalizedLocale];
}
/**
 * Helper function to remove all the locale data from `LOCALE_DATA`.
 * @return {?}
 */
export function unregisterAllLocaleData() {
    LOCALE_DATA = {};
}
/** @enum {number} */
const LocaleDataIndex = {
    LocaleId: 0,
    DayPeriodsFormat: 1,
    DayPeriodsStandalone: 2,
    DaysFormat: 3,
    DaysStandalone: 4,
    MonthsFormat: 5,
    MonthsStandalone: 6,
    Eras: 7,
    FirstDayOfWeek: 8,
    WeekendRange: 9,
    DateFormat: 10,
    TimeFormat: 11,
    DateTimeFormat: 12,
    NumberSymbols: 13,
    NumberFormats: 14,
    CurrencyCode: 15,
    CurrencySymbol: 16,
    CurrencyName: 17,
    Currencies: 18,
    PluralCase: 19,
    ExtraData: 20,
};
export { LocaleDataIndex };
LocaleDataIndex[LocaleDataIndex.LocaleId] = 'LocaleId';
LocaleDataIndex[LocaleDataIndex.DayPeriodsFormat] = 'DayPeriodsFormat';
LocaleDataIndex[LocaleDataIndex.DayPeriodsStandalone] = 'DayPeriodsStandalone';
LocaleDataIndex[LocaleDataIndex.DaysFormat] = 'DaysFormat';
LocaleDataIndex[LocaleDataIndex.DaysStandalone] = 'DaysStandalone';
LocaleDataIndex[LocaleDataIndex.MonthsFormat] = 'MonthsFormat';
LocaleDataIndex[LocaleDataIndex.MonthsStandalone] = 'MonthsStandalone';
LocaleDataIndex[LocaleDataIndex.Eras] = 'Eras';
LocaleDataIndex[LocaleDataIndex.FirstDayOfWeek] = 'FirstDayOfWeek';
LocaleDataIndex[LocaleDataIndex.WeekendRange] = 'WeekendRange';
LocaleDataIndex[LocaleDataIndex.DateFormat] = 'DateFormat';
LocaleDataIndex[LocaleDataIndex.TimeFormat] = 'TimeFormat';
LocaleDataIndex[LocaleDataIndex.DateTimeFormat] = 'DateTimeFormat';
LocaleDataIndex[LocaleDataIndex.NumberSymbols] = 'NumberSymbols';
LocaleDataIndex[LocaleDataIndex.NumberFormats] = 'NumberFormats';
LocaleDataIndex[LocaleDataIndex.CurrencyCode] = 'CurrencyCode';
LocaleDataIndex[LocaleDataIndex.CurrencySymbol] = 'CurrencySymbol';
LocaleDataIndex[LocaleDataIndex.CurrencyName] = 'CurrencyName';
LocaleDataIndex[LocaleDataIndex.Currencies] = 'Currencies';
LocaleDataIndex[LocaleDataIndex.PluralCase] = 'PluralCase';
LocaleDataIndex[LocaleDataIndex.ExtraData] = 'ExtraData';
/** @enum {number} */
const ExtraLocaleDataIndex = {
    ExtraDayPeriodFormats: 0,
    ExtraDayPeriodStandalone: 1,
    ExtraDayPeriodsRules: 2,
};
export { ExtraLocaleDataIndex };
/** @enum {number} */
const CurrencyIndex = {
    Symbol: 0, SymbolNarrow: 1, NbOfDigits: 2,
};
export { CurrencyIndex };
/**
 * Returns the canonical form of a locale name - lowercase with `_` replaced with `-`.
 * @param {?} locale
 * @return {?}
 */
function normalizeLocale(locale) {
    return locale.toLowerCase().replace(/_/g, '-');
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibG9jYWxlX2RhdGFfYXBpLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvaTE4bi9sb2NhbGVfZGF0YV9hcGkudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBT0EsT0FBTyxRQUFRLE1BQU0sYUFBYSxDQUFDO0FBQ25DLE9BQU8sRUFBQyxNQUFNLEVBQUMsTUFBTSxnQkFBZ0IsQ0FBQzs7Ozs7SUFLbEMsV0FBVyxHQUE4QixFQUFFOzs7Ozs7Ozs7OztBQVEvQyxNQUFNLFVBQVUsa0JBQWtCLENBQUMsSUFBUyxFQUFFLFFBQXVCLEVBQUUsU0FBZTtJQUNwRixJQUFJLE9BQU8sUUFBUSxLQUFLLFFBQVEsRUFBRTtRQUNoQyxTQUFTLEdBQUcsUUFBUSxDQUFDO1FBQ3JCLFFBQVEsR0FBRyxJQUFJLENBQUMsZUFBZSxDQUFDLFFBQVEsQ0FBQyxDQUFDO0tBQzNDO0lBRUQsUUFBUSxHQUFHLFFBQVEsQ0FBQyxXQUFXLEVBQUUsQ0FBQyxPQUFPLENBQUMsSUFBSSxFQUFFLEdBQUcsQ0FBQyxDQUFDO0lBRXJELFdBQVcsQ0FBQyxRQUFRLENBQUMsR0FBRyxJQUFJLENBQUM7SUFFN0IsSUFBSSxTQUFTLEVBQUU7UUFDYixXQUFXLENBQUMsUUFBUSxDQUFDLENBQUMsZUFBZSxDQUFDLFNBQVMsQ0FBQyxHQUFHLFNBQVMsQ0FBQztLQUM5RDtBQUNILENBQUM7Ozs7Ozs7O0FBU0QsTUFBTSxVQUFVLGNBQWMsQ0FBQyxNQUFjOztVQUNyQyxnQkFBZ0IsR0FBRyxlQUFlLENBQUMsTUFBTSxDQUFDOztRQUU1QyxLQUFLLEdBQUcsYUFBYSxDQUFDLGdCQUFnQixDQUFDO0lBQzNDLElBQUksS0FBSyxFQUFFO1FBQ1QsT0FBTyxLQUFLLENBQUM7S0FDZDs7O1VBR0ssWUFBWSxHQUFHLGdCQUFnQixDQUFDLEtBQUssQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUM7SUFDbkQsS0FBSyxHQUFHLGFBQWEsQ0FBQyxZQUFZLENBQUMsQ0FBQztJQUNwQyxJQUFJLEtBQUssRUFBRTtRQUNULE9BQU8sS0FBSyxDQUFDO0tBQ2Q7SUFFRCxJQUFJLFlBQVksS0FBSyxJQUFJLEVBQUU7UUFDekIsT0FBTyxRQUFRLENBQUM7S0FDakI7SUFFRCxNQUFNLElBQUksS0FBSyxDQUFDLHVDQUF1QyxNQUFNLElBQUksQ0FBQyxDQUFDO0FBQ3JFLENBQUM7Ozs7Ozs7Ozs7QUFXRCxNQUFNLFVBQVUscUJBQXFCLENBQUMsTUFBYzs7VUFDNUMsSUFBSSxHQUFHLGNBQWMsQ0FBQyxNQUFNLENBQUM7SUFDbkMsT0FBTyxJQUFJLENBQUMsZUFBZSxDQUFDLFlBQVksQ0FBQyxJQUFJLElBQUksQ0FBQztBQUNwRCxDQUFDOzs7Ozs7OztBQVVELE1BQU0sVUFBVSxtQkFBbUIsQ0FBQyxNQUFjOztVQUMxQyxJQUFJLEdBQUcsY0FBYyxDQUFDLE1BQU0sQ0FBQztJQUNuQyxPQUFPLElBQUksQ0FBQyxlQUFlLENBQUMsVUFBVSxDQUFDLENBQUM7QUFDMUMsQ0FBQzs7Ozs7OztBQVFELE1BQU0sVUFBVSxhQUFhLENBQUMsZ0JBQXdCO0lBQ3BELElBQUksQ0FBQyxDQUFDLGdCQUFnQixJQUFJLFdBQVcsQ0FBQyxFQUFFO1FBQ3RDLFdBQVcsQ0FBQyxnQkFBZ0IsQ0FBQyxHQUFHLE1BQU0sQ0FBQyxFQUFFLElBQUksTUFBTSxDQUFDLEVBQUUsQ0FBQyxNQUFNLElBQUksTUFBTSxDQUFDLEVBQUUsQ0FBQyxNQUFNLENBQUMsT0FBTztZQUNyRixNQUFNLENBQUMsRUFBRSxDQUFDLE1BQU0sQ0FBQyxPQUFPLENBQUMsZ0JBQWdCLENBQUMsQ0FBQztLQUNoRDtJQUNELE9BQU8sV0FBVyxDQUFDLGdCQUFnQixDQUFDLENBQUM7QUFDdkMsQ0FBQzs7Ozs7QUFLRCxNQUFNLFVBQVUsdUJBQXVCO0lBQ3JDLFdBQVcsR0FBRyxFQUFFLENBQUM7QUFDbkIsQ0FBQzs7QUFLRCxNQUFZLGVBQWU7SUFDekIsUUFBUSxHQUFJO0lBQ1osZ0JBQWdCLEdBQUE7SUFDaEIsb0JBQW9CLEdBQUE7SUFDcEIsVUFBVSxHQUFBO0lBQ1YsY0FBYyxHQUFBO0lBQ2QsWUFBWSxHQUFBO0lBQ1osZ0JBQWdCLEdBQUE7SUFDaEIsSUFBSSxHQUFBO0lBQ0osY0FBYyxHQUFBO0lBQ2QsWUFBWSxHQUFBO0lBQ1osVUFBVSxJQUFBO0lBQ1YsVUFBVSxJQUFBO0lBQ1YsY0FBYyxJQUFBO0lBQ2QsYUFBYSxJQUFBO0lBQ2IsYUFBYSxJQUFBO0lBQ2IsWUFBWSxJQUFBO0lBQ1osY0FBYyxJQUFBO0lBQ2QsWUFBWSxJQUFBO0lBQ1osVUFBVSxJQUFBO0lBQ1YsVUFBVSxJQUFBO0lBQ1YsU0FBUyxJQUFBO0VBQ1Y7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUtELE1BQWtCLG9CQUFvQjtJQUNwQyxxQkFBcUIsR0FBSTtJQUN6Qix3QkFBd0IsR0FBQTtJQUN4QixvQkFBb0IsR0FBQTtFQUNyQjs7O0FBS0QsTUFBa0IsYUFBYTtJQUFFLE1BQU0sR0FBSSxFQUFFLFlBQVksR0FBQSxFQUFFLFVBQVUsR0FBQTtFQUFDOzs7Ozs7O0FBS3RFLFNBQVMsZUFBZSxDQUFDLE1BQWM7SUFDckMsT0FBTyxNQUFNLENBQUMsV0FBVyxFQUFFLENBQUMsT0FBTyxDQUFDLElBQUksRUFBRSxHQUFHLENBQUMsQ0FBQztBQUNqRCxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IGxvY2FsZUVuIGZyb20gJy4vbG9jYWxlX2VuJztcbmltcG9ydCB7Z2xvYmFsfSBmcm9tICcuLi91dGlsL2dsb2JhbCc7XG5cbi8qKlxuICogVGhpcyBjb25zdCBpcyB1c2VkIHRvIHN0b3JlIHRoZSBsb2NhbGUgZGF0YSByZWdpc3RlcmVkIHdpdGggYHJlZ2lzdGVyTG9jYWxlRGF0YWBcbiAqL1xubGV0IExPQ0FMRV9EQVRBOiB7W2xvY2FsZUlkOiBzdHJpbmddOiBhbnl9ID0ge307XG5cbi8qKlxuICogUmVnaXN0ZXIgbG9jYWxlIGRhdGEgdG8gYmUgdXNlZCBpbnRlcm5hbGx5IGJ5IEFuZ3VsYXIuIFNlZSB0aGVcbiAqIFtcIkkxOG4gZ3VpZGVcIl0oZ3VpZGUvaTE4biNpMThuLXBpcGVzKSB0byBrbm93IGhvdyB0byBpbXBvcnQgYWRkaXRpb25hbCBsb2NhbGUgZGF0YS5cbiAqXG4gKiBUaGUgc2lnbmF0dXJlIGByZWdpc3RlckxvY2FsZURhdGEoZGF0YTogYW55LCBleHRyYURhdGE/OiBhbnkpYCBpcyBkZXByZWNhdGVkIHNpbmNlIHY1LjFcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHJlZ2lzdGVyTG9jYWxlRGF0YShkYXRhOiBhbnksIGxvY2FsZUlkPzogc3RyaW5nIHwgYW55LCBleHRyYURhdGE/OiBhbnkpOiB2b2lkIHtcbiAgaWYgKHR5cGVvZiBsb2NhbGVJZCAhPT0gJ3N0cmluZycpIHtcbiAgICBleHRyYURhdGEgPSBsb2NhbGVJZDtcbiAgICBsb2NhbGVJZCA9IGRhdGFbTG9jYWxlRGF0YUluZGV4LkxvY2FsZUlkXTtcbiAgfVxuXG4gIGxvY2FsZUlkID0gbG9jYWxlSWQudG9Mb3dlckNhc2UoKS5yZXBsYWNlKC9fL2csICctJyk7XG5cbiAgTE9DQUxFX0RBVEFbbG9jYWxlSWRdID0gZGF0YTtcblxuICBpZiAoZXh0cmFEYXRhKSB7XG4gICAgTE9DQUxFX0RBVEFbbG9jYWxlSWRdW0xvY2FsZURhdGFJbmRleC5FeHRyYURhdGFdID0gZXh0cmFEYXRhO1xuICB9XG59XG5cbi8qKlxuICogRmluZHMgdGhlIGxvY2FsZSBkYXRhIGZvciBhIGdpdmVuIGxvY2FsZS5cbiAqXG4gKiBAcGFyYW0gbG9jYWxlIFRoZSBsb2NhbGUgY29kZS5cbiAqIEByZXR1cm5zIFRoZSBsb2NhbGUgZGF0YS5cbiAqIEBzZWUgW0ludGVybmF0aW9uYWxpemF0aW9uIChpMThuKSBHdWlkZV0oaHR0cHM6Ly9hbmd1bGFyLmlvL2d1aWRlL2kxOG4pXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBmaW5kTG9jYWxlRGF0YShsb2NhbGU6IHN0cmluZyk6IGFueSB7XG4gIGNvbnN0IG5vcm1hbGl6ZWRMb2NhbGUgPSBub3JtYWxpemVMb2NhbGUobG9jYWxlKTtcblxuICBsZXQgbWF0Y2ggPSBnZXRMb2NhbGVEYXRhKG5vcm1hbGl6ZWRMb2NhbGUpO1xuICBpZiAobWF0Y2gpIHtcbiAgICByZXR1cm4gbWF0Y2g7XG4gIH1cblxuICAvLyBsZXQncyB0cnkgdG8gZmluZCBhIHBhcmVudCBsb2NhbGVcbiAgY29uc3QgcGFyZW50TG9jYWxlID0gbm9ybWFsaXplZExvY2FsZS5zcGxpdCgnLScpWzBdO1xuICBtYXRjaCA9IGdldExvY2FsZURhdGEocGFyZW50TG9jYWxlKTtcbiAgaWYgKG1hdGNoKSB7XG4gICAgcmV0dXJuIG1hdGNoO1xuICB9XG5cbiAgaWYgKHBhcmVudExvY2FsZSA9PT0gJ2VuJykge1xuICAgIHJldHVybiBsb2NhbGVFbjtcbiAgfVxuXG4gIHRocm93IG5ldyBFcnJvcihgTWlzc2luZyBsb2NhbGUgZGF0YSBmb3IgdGhlIGxvY2FsZSBcIiR7bG9jYWxlfVwiLmApO1xufVxuXG4vKipcbiAqIFJldHJpZXZlcyB0aGUgZGVmYXVsdCBjdXJyZW5jeSBjb2RlIGZvciB0aGUgZ2l2ZW4gbG9jYWxlLlxuICpcbiAqIFRoZSBkZWZhdWx0IGlzIGRlZmluZWQgYXMgdGhlIGZpcnN0IGN1cnJlbmN5IHdoaWNoIGlzIHN0aWxsIGluIHVzZS5cbiAqXG4gKiBAcGFyYW0gbG9jYWxlIFRoZSBjb2RlIG9mIHRoZSBsb2NhbGUgd2hvc2UgY3VycmVuY3kgY29kZSB3ZSB3YW50LlxuICogQHJldHVybnMgVGhlIGNvZGUgb2YgdGhlIGRlZmF1bHQgY3VycmVuY3kgZm9yIHRoZSBnaXZlbiBsb2NhbGUuXG4gKlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0TG9jYWxlQ3VycmVuY3lDb2RlKGxvY2FsZTogc3RyaW5nKTogc3RyaW5nfG51bGwge1xuICBjb25zdCBkYXRhID0gZmluZExvY2FsZURhdGEobG9jYWxlKTtcbiAgcmV0dXJuIGRhdGFbTG9jYWxlRGF0YUluZGV4LkN1cnJlbmN5Q29kZV0gfHwgbnVsbDtcbn1cblxuLyoqXG4gKiBSZXRyaWV2ZXMgdGhlIHBsdXJhbCBmdW5jdGlvbiB1c2VkIGJ5IElDVSBleHByZXNzaW9ucyB0byBkZXRlcm1pbmUgdGhlIHBsdXJhbCBjYXNlIHRvIHVzZVxuICogZm9yIGEgZ2l2ZW4gbG9jYWxlLlxuICogQHBhcmFtIGxvY2FsZSBBIGxvY2FsZSBjb2RlIGZvciB0aGUgbG9jYWxlIGZvcm1hdCBydWxlcyB0byB1c2UuXG4gKiBAcmV0dXJucyBUaGUgcGx1cmFsIGZ1bmN0aW9uIGZvciB0aGUgbG9jYWxlLlxuICogQHNlZSBgTmdQbHVyYWxgXG4gKiBAc2VlIFtJbnRlcm5hdGlvbmFsaXphdGlvbiAoaTE4bikgR3VpZGVdKGh0dHBzOi8vYW5ndWxhci5pby9ndWlkZS9pMThuKVxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0TG9jYWxlUGx1cmFsQ2FzZShsb2NhbGU6IHN0cmluZyk6ICh2YWx1ZTogbnVtYmVyKSA9PiBudW1iZXIge1xuICBjb25zdCBkYXRhID0gZmluZExvY2FsZURhdGEobG9jYWxlKTtcbiAgcmV0dXJuIGRhdGFbTG9jYWxlRGF0YUluZGV4LlBsdXJhbENhc2VdO1xufVxuXG5cblxuLyoqXG4gKiBIZWxwZXIgZnVuY3Rpb24gdG8gZ2V0IHRoZSBnaXZlbiBgbm9ybWFsaXplZExvY2FsZWAgZnJvbSBgTE9DQUxFX0RBVEFgXG4gKiBvciBmcm9tIHRoZSBnbG9iYWwgYG5nLmNvbW1vbi5sb2NhbGVgLlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0TG9jYWxlRGF0YShub3JtYWxpemVkTG9jYWxlOiBzdHJpbmcpOiBhbnkge1xuICBpZiAoIShub3JtYWxpemVkTG9jYWxlIGluIExPQ0FMRV9EQVRBKSkge1xuICAgIExPQ0FMRV9EQVRBW25vcm1hbGl6ZWRMb2NhbGVdID0gZ2xvYmFsLm5nICYmIGdsb2JhbC5uZy5jb21tb24gJiYgZ2xvYmFsLm5nLmNvbW1vbi5sb2NhbGVzICYmXG4gICAgICAgIGdsb2JhbC5uZy5jb21tb24ubG9jYWxlc1tub3JtYWxpemVkTG9jYWxlXTtcbiAgfVxuICByZXR1cm4gTE9DQUxFX0RBVEFbbm9ybWFsaXplZExvY2FsZV07XG59XG5cbi8qKlxuICogSGVscGVyIGZ1bmN0aW9uIHRvIHJlbW92ZSBhbGwgdGhlIGxvY2FsZSBkYXRhIGZyb20gYExPQ0FMRV9EQVRBYC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHVucmVnaXN0ZXJBbGxMb2NhbGVEYXRhKCkge1xuICBMT0NBTEVfREFUQSA9IHt9O1xufVxuXG4vKipcbiAqIEluZGV4IG9mIGVhY2ggdHlwZSBvZiBsb2NhbGUgZGF0YSBmcm9tIHRoZSBsb2NhbGUgZGF0YSBhcnJheVxuICovXG5leHBvcnQgZW51bSBMb2NhbGVEYXRhSW5kZXgge1xuICBMb2NhbGVJZCA9IDAsXG4gIERheVBlcmlvZHNGb3JtYXQsXG4gIERheVBlcmlvZHNTdGFuZGFsb25lLFxuICBEYXlzRm9ybWF0LFxuICBEYXlzU3RhbmRhbG9uZSxcbiAgTW9udGhzRm9ybWF0LFxuICBNb250aHNTdGFuZGFsb25lLFxuICBFcmFzLFxuICBGaXJzdERheU9mV2VlayxcbiAgV2Vla2VuZFJhbmdlLFxuICBEYXRlRm9ybWF0LFxuICBUaW1lRm9ybWF0LFxuICBEYXRlVGltZUZvcm1hdCxcbiAgTnVtYmVyU3ltYm9scyxcbiAgTnVtYmVyRm9ybWF0cyxcbiAgQ3VycmVuY3lDb2RlLFxuICBDdXJyZW5jeVN5bWJvbCxcbiAgQ3VycmVuY3lOYW1lLFxuICBDdXJyZW5jaWVzLFxuICBQbHVyYWxDYXNlLFxuICBFeHRyYURhdGFcbn1cblxuLyoqXG4gKiBJbmRleCBvZiBlYWNoIHR5cGUgb2YgbG9jYWxlIGRhdGEgZnJvbSB0aGUgZXh0cmEgbG9jYWxlIGRhdGEgYXJyYXlcbiAqL1xuZXhwb3J0IGNvbnN0IGVudW0gRXh0cmFMb2NhbGVEYXRhSW5kZXgge1xuICBFeHRyYURheVBlcmlvZEZvcm1hdHMgPSAwLFxuICBFeHRyYURheVBlcmlvZFN0YW5kYWxvbmUsXG4gIEV4dHJhRGF5UGVyaW9kc1J1bGVzXG59XG5cbi8qKlxuICogSW5kZXggb2YgZWFjaCB2YWx1ZSBpbiBjdXJyZW5jeSBkYXRhICh1c2VkIHRvIGRlc2NyaWJlIENVUlJFTkNJRVNfRU4gaW4gY3VycmVuY2llcy50cylcbiAqL1xuZXhwb3J0IGNvbnN0IGVudW0gQ3VycmVuY3lJbmRleCB7U3ltYm9sID0gMCwgU3ltYm9sTmFycm93LCBOYk9mRGlnaXRzfVxuXG4vKipcbiAqIFJldHVybnMgdGhlIGNhbm9uaWNhbCBmb3JtIG9mIGEgbG9jYWxlIG5hbWUgLSBsb3dlcmNhc2Ugd2l0aCBgX2AgcmVwbGFjZWQgd2l0aCBgLWAuXG4gKi9cbmZ1bmN0aW9uIG5vcm1hbGl6ZUxvY2FsZShsb2NhbGU6IHN0cmluZyk6IHN0cmluZyB7XG4gIHJldHVybiBsb2NhbGUudG9Mb3dlckNhc2UoKS5yZXBsYWNlKC9fL2csICctJyk7XG59Il19