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
 */
var LOCALE_DATA = {};
/**
 * Register locale data to be used internally by Angular. See the
 * ["I18n guide"](guide/i18n#i18n-pipes) to know how to import additional locale data.
 *
 * The signature `registerLocaleData(data: any, extraData?: any)` is deprecated since v5.1
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
 * @param locale The locale code.
 * @returns The locale data.
 * @see [Internationalization (i18n) Guide](https://angular.io/guide/i18n)
 */
export function findLocaleData(locale) {
    var normalizedLocale = normalizeLocale(locale);
    var match = getLocaleData(normalizedLocale);
    if (match) {
        return match;
    }
    // let's try to find a parent locale
    var parentLocale = normalizedLocale.split('-')[0];
    match = getLocaleData(parentLocale);
    if (match) {
        return match;
    }
    if (parentLocale === 'en') {
        return localeEn;
    }
    throw new Error("Missing locale data for the locale \"" + locale + "\".");
}
/**
 * Retrieves the default currency code for the given locale.
 *
 * The default is defined as the first currency which is still in use.
 *
 * @param locale The code of the locale whose currency code we want.
 * @returns The code of the default currency for the given locale.
 *
 */
export function getLocaleCurrencyCode(locale) {
    var data = findLocaleData(locale);
    return data[LocaleDataIndex.CurrencyCode] || null;
}
/**
 * Retrieves the plural function used by ICU expressions to determine the plural case to use
 * for a given locale.
 * @param locale A locale code for the locale format rules to use.
 * @returns The plural function for the locale.
 * @see `NgPlural`
 * @see [Internationalization (i18n) Guide](https://angular.io/guide/i18n)
 */
export function getLocalePluralCase(locale) {
    var data = findLocaleData(locale);
    return data[LocaleDataIndex.PluralCase];
}
/**
 * Helper function to get the given `normalizedLocale` from `LOCALE_DATA`
 * or from the global `ng.common.locale`.
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
 */
export function unregisterAllLocaleData() {
    LOCALE_DATA = {};
}
/**
 * Index of each type of locale data from the locale data array
 */
export var LocaleDataIndex;
(function (LocaleDataIndex) {
    LocaleDataIndex[LocaleDataIndex["LocaleId"] = 0] = "LocaleId";
    LocaleDataIndex[LocaleDataIndex["DayPeriodsFormat"] = 1] = "DayPeriodsFormat";
    LocaleDataIndex[LocaleDataIndex["DayPeriodsStandalone"] = 2] = "DayPeriodsStandalone";
    LocaleDataIndex[LocaleDataIndex["DaysFormat"] = 3] = "DaysFormat";
    LocaleDataIndex[LocaleDataIndex["DaysStandalone"] = 4] = "DaysStandalone";
    LocaleDataIndex[LocaleDataIndex["MonthsFormat"] = 5] = "MonthsFormat";
    LocaleDataIndex[LocaleDataIndex["MonthsStandalone"] = 6] = "MonthsStandalone";
    LocaleDataIndex[LocaleDataIndex["Eras"] = 7] = "Eras";
    LocaleDataIndex[LocaleDataIndex["FirstDayOfWeek"] = 8] = "FirstDayOfWeek";
    LocaleDataIndex[LocaleDataIndex["WeekendRange"] = 9] = "WeekendRange";
    LocaleDataIndex[LocaleDataIndex["DateFormat"] = 10] = "DateFormat";
    LocaleDataIndex[LocaleDataIndex["TimeFormat"] = 11] = "TimeFormat";
    LocaleDataIndex[LocaleDataIndex["DateTimeFormat"] = 12] = "DateTimeFormat";
    LocaleDataIndex[LocaleDataIndex["NumberSymbols"] = 13] = "NumberSymbols";
    LocaleDataIndex[LocaleDataIndex["NumberFormats"] = 14] = "NumberFormats";
    LocaleDataIndex[LocaleDataIndex["CurrencyCode"] = 15] = "CurrencyCode";
    LocaleDataIndex[LocaleDataIndex["CurrencySymbol"] = 16] = "CurrencySymbol";
    LocaleDataIndex[LocaleDataIndex["CurrencyName"] = 17] = "CurrencyName";
    LocaleDataIndex[LocaleDataIndex["Currencies"] = 18] = "Currencies";
    LocaleDataIndex[LocaleDataIndex["PluralCase"] = 19] = "PluralCase";
    LocaleDataIndex[LocaleDataIndex["ExtraData"] = 20] = "ExtraData";
})(LocaleDataIndex || (LocaleDataIndex = {}));
/**
 * Returns the canonical form of a locale name - lowercase with `_` replaced with `-`.
 */
function normalizeLocale(locale) {
    return locale.toLowerCase().replace(/_/g, '-');
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibG9jYWxlX2RhdGFfYXBpLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvaTE4bi9sb2NhbGVfZGF0YV9hcGkudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBQ0gsT0FBTyxRQUFRLE1BQU0sYUFBYSxDQUFDO0FBQ25DLE9BQU8sRUFBQyxNQUFNLEVBQUMsTUFBTSxnQkFBZ0IsQ0FBQztBQUV0Qzs7R0FFRztBQUNILElBQUksV0FBVyxHQUE4QixFQUFFLENBQUM7QUFFaEQ7Ozs7O0dBS0c7QUFDSCxNQUFNLFVBQVUsa0JBQWtCLENBQUMsSUFBUyxFQUFFLFFBQXVCLEVBQUUsU0FBZTtJQUNwRixJQUFJLE9BQU8sUUFBUSxLQUFLLFFBQVEsRUFBRTtRQUNoQyxTQUFTLEdBQUcsUUFBUSxDQUFDO1FBQ3JCLFFBQVEsR0FBRyxJQUFJLENBQUMsZUFBZSxDQUFDLFFBQVEsQ0FBQyxDQUFDO0tBQzNDO0lBRUQsUUFBUSxHQUFHLFFBQVEsQ0FBQyxXQUFXLEVBQUUsQ0FBQyxPQUFPLENBQUMsSUFBSSxFQUFFLEdBQUcsQ0FBQyxDQUFDO0lBRXJELFdBQVcsQ0FBQyxRQUFRLENBQUMsR0FBRyxJQUFJLENBQUM7SUFFN0IsSUFBSSxTQUFTLEVBQUU7UUFDYixXQUFXLENBQUMsUUFBUSxDQUFDLENBQUMsZUFBZSxDQUFDLFNBQVMsQ0FBQyxHQUFHLFNBQVMsQ0FBQztLQUM5RDtBQUNILENBQUM7QUFFRDs7Ozs7O0dBTUc7QUFDSCxNQUFNLFVBQVUsY0FBYyxDQUFDLE1BQWM7SUFDM0MsSUFBTSxnQkFBZ0IsR0FBRyxlQUFlLENBQUMsTUFBTSxDQUFDLENBQUM7SUFFakQsSUFBSSxLQUFLLEdBQUcsYUFBYSxDQUFDLGdCQUFnQixDQUFDLENBQUM7SUFDNUMsSUFBSSxLQUFLLEVBQUU7UUFDVCxPQUFPLEtBQUssQ0FBQztLQUNkO0lBRUQsb0NBQW9DO0lBQ3BDLElBQU0sWUFBWSxHQUFHLGdCQUFnQixDQUFDLEtBQUssQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUNwRCxLQUFLLEdBQUcsYUFBYSxDQUFDLFlBQVksQ0FBQyxDQUFDO0lBQ3BDLElBQUksS0FBSyxFQUFFO1FBQ1QsT0FBTyxLQUFLLENBQUM7S0FDZDtJQUVELElBQUksWUFBWSxLQUFLLElBQUksRUFBRTtRQUN6QixPQUFPLFFBQVEsQ0FBQztLQUNqQjtJQUVELE1BQU0sSUFBSSxLQUFLLENBQUMsMENBQXVDLE1BQU0sUUFBSSxDQUFDLENBQUM7QUFDckUsQ0FBQztBQUVEOzs7Ozs7OztHQVFHO0FBQ0gsTUFBTSxVQUFVLHFCQUFxQixDQUFDLE1BQWM7SUFDbEQsSUFBTSxJQUFJLEdBQUcsY0FBYyxDQUFDLE1BQU0sQ0FBQyxDQUFDO0lBQ3BDLE9BQU8sSUFBSSxDQUFDLGVBQWUsQ0FBQyxZQUFZLENBQUMsSUFBSSxJQUFJLENBQUM7QUFDcEQsQ0FBQztBQUVEOzs7Ozs7O0dBT0c7QUFDSCxNQUFNLFVBQVUsbUJBQW1CLENBQUMsTUFBYztJQUNoRCxJQUFNLElBQUksR0FBRyxjQUFjLENBQUMsTUFBTSxDQUFDLENBQUM7SUFDcEMsT0FBTyxJQUFJLENBQUMsZUFBZSxDQUFDLFVBQVUsQ0FBQyxDQUFDO0FBQzFDLENBQUM7QUFJRDs7O0dBR0c7QUFDSCxNQUFNLFVBQVUsYUFBYSxDQUFDLGdCQUF3QjtJQUNwRCxJQUFJLENBQUMsQ0FBQyxnQkFBZ0IsSUFBSSxXQUFXLENBQUMsRUFBRTtRQUN0QyxXQUFXLENBQUMsZ0JBQWdCLENBQUMsR0FBRyxNQUFNLENBQUMsRUFBRSxJQUFJLE1BQU0sQ0FBQyxFQUFFLENBQUMsTUFBTSxJQUFJLE1BQU0sQ0FBQyxFQUFFLENBQUMsTUFBTSxDQUFDLE9BQU87WUFDckYsTUFBTSxDQUFDLEVBQUUsQ0FBQyxNQUFNLENBQUMsT0FBTyxDQUFDLGdCQUFnQixDQUFDLENBQUM7S0FDaEQ7SUFDRCxPQUFPLFdBQVcsQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDO0FBQ3ZDLENBQUM7QUFFRDs7R0FFRztBQUNILE1BQU0sVUFBVSx1QkFBdUI7SUFDckMsV0FBVyxHQUFHLEVBQUUsQ0FBQztBQUNuQixDQUFDO0FBRUQ7O0dBRUc7QUFDSCxNQUFNLENBQU4sSUFBWSxlQXNCWDtBQXRCRCxXQUFZLGVBQWU7SUFDekIsNkRBQVksQ0FBQTtJQUNaLDZFQUFnQixDQUFBO0lBQ2hCLHFGQUFvQixDQUFBO0lBQ3BCLGlFQUFVLENBQUE7SUFDVix5RUFBYyxDQUFBO0lBQ2QscUVBQVksQ0FBQTtJQUNaLDZFQUFnQixDQUFBO0lBQ2hCLHFEQUFJLENBQUE7SUFDSix5RUFBYyxDQUFBO0lBQ2QscUVBQVksQ0FBQTtJQUNaLGtFQUFVLENBQUE7SUFDVixrRUFBVSxDQUFBO0lBQ1YsMEVBQWMsQ0FBQTtJQUNkLHdFQUFhLENBQUE7SUFDYix3RUFBYSxDQUFBO0lBQ2Isc0VBQVksQ0FBQTtJQUNaLDBFQUFjLENBQUE7SUFDZCxzRUFBWSxDQUFBO0lBQ1osa0VBQVUsQ0FBQTtJQUNWLGtFQUFVLENBQUE7SUFDVixnRUFBUyxDQUFBO0FBQ1gsQ0FBQyxFQXRCVyxlQUFlLEtBQWYsZUFBZSxRQXNCMUI7QUFnQkQ7O0dBRUc7QUFDSCxTQUFTLGVBQWUsQ0FBQyxNQUFjO0lBQ3JDLE9BQU8sTUFBTSxDQUFDLFdBQVcsRUFBRSxDQUFDLE9BQU8sQ0FBQyxJQUFJLEVBQUUsR0FBRyxDQUFDLENBQUM7QUFDakQsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cbmltcG9ydCBsb2NhbGVFbiBmcm9tICcuL2xvY2FsZV9lbic7XG5pbXBvcnQge2dsb2JhbH0gZnJvbSAnLi4vdXRpbC9nbG9iYWwnO1xuXG4vKipcbiAqIFRoaXMgY29uc3QgaXMgdXNlZCB0byBzdG9yZSB0aGUgbG9jYWxlIGRhdGEgcmVnaXN0ZXJlZCB3aXRoIGByZWdpc3RlckxvY2FsZURhdGFgXG4gKi9cbmxldCBMT0NBTEVfREFUQToge1tsb2NhbGVJZDogc3RyaW5nXTogYW55fSA9IHt9O1xuXG4vKipcbiAqIFJlZ2lzdGVyIGxvY2FsZSBkYXRhIHRvIGJlIHVzZWQgaW50ZXJuYWxseSBieSBBbmd1bGFyLiBTZWUgdGhlXG4gKiBbXCJJMThuIGd1aWRlXCJdKGd1aWRlL2kxOG4jaTE4bi1waXBlcykgdG8ga25vdyBob3cgdG8gaW1wb3J0IGFkZGl0aW9uYWwgbG9jYWxlIGRhdGEuXG4gKlxuICogVGhlIHNpZ25hdHVyZSBgcmVnaXN0ZXJMb2NhbGVEYXRhKGRhdGE6IGFueSwgZXh0cmFEYXRhPzogYW55KWAgaXMgZGVwcmVjYXRlZCBzaW5jZSB2NS4xXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiByZWdpc3RlckxvY2FsZURhdGEoZGF0YTogYW55LCBsb2NhbGVJZD86IHN0cmluZyB8IGFueSwgZXh0cmFEYXRhPzogYW55KTogdm9pZCB7XG4gIGlmICh0eXBlb2YgbG9jYWxlSWQgIT09ICdzdHJpbmcnKSB7XG4gICAgZXh0cmFEYXRhID0gbG9jYWxlSWQ7XG4gICAgbG9jYWxlSWQgPSBkYXRhW0xvY2FsZURhdGFJbmRleC5Mb2NhbGVJZF07XG4gIH1cblxuICBsb2NhbGVJZCA9IGxvY2FsZUlkLnRvTG93ZXJDYXNlKCkucmVwbGFjZSgvXy9nLCAnLScpO1xuXG4gIExPQ0FMRV9EQVRBW2xvY2FsZUlkXSA9IGRhdGE7XG5cbiAgaWYgKGV4dHJhRGF0YSkge1xuICAgIExPQ0FMRV9EQVRBW2xvY2FsZUlkXVtMb2NhbGVEYXRhSW5kZXguRXh0cmFEYXRhXSA9IGV4dHJhRGF0YTtcbiAgfVxufVxuXG4vKipcbiAqIEZpbmRzIHRoZSBsb2NhbGUgZGF0YSBmb3IgYSBnaXZlbiBsb2NhbGUuXG4gKlxuICogQHBhcmFtIGxvY2FsZSBUaGUgbG9jYWxlIGNvZGUuXG4gKiBAcmV0dXJucyBUaGUgbG9jYWxlIGRhdGEuXG4gKiBAc2VlIFtJbnRlcm5hdGlvbmFsaXphdGlvbiAoaTE4bikgR3VpZGVdKGh0dHBzOi8vYW5ndWxhci5pby9ndWlkZS9pMThuKVxuICovXG5leHBvcnQgZnVuY3Rpb24gZmluZExvY2FsZURhdGEobG9jYWxlOiBzdHJpbmcpOiBhbnkge1xuICBjb25zdCBub3JtYWxpemVkTG9jYWxlID0gbm9ybWFsaXplTG9jYWxlKGxvY2FsZSk7XG5cbiAgbGV0IG1hdGNoID0gZ2V0TG9jYWxlRGF0YShub3JtYWxpemVkTG9jYWxlKTtcbiAgaWYgKG1hdGNoKSB7XG4gICAgcmV0dXJuIG1hdGNoO1xuICB9XG5cbiAgLy8gbGV0J3MgdHJ5IHRvIGZpbmQgYSBwYXJlbnQgbG9jYWxlXG4gIGNvbnN0IHBhcmVudExvY2FsZSA9IG5vcm1hbGl6ZWRMb2NhbGUuc3BsaXQoJy0nKVswXTtcbiAgbWF0Y2ggPSBnZXRMb2NhbGVEYXRhKHBhcmVudExvY2FsZSk7XG4gIGlmIChtYXRjaCkge1xuICAgIHJldHVybiBtYXRjaDtcbiAgfVxuXG4gIGlmIChwYXJlbnRMb2NhbGUgPT09ICdlbicpIHtcbiAgICByZXR1cm4gbG9jYWxlRW47XG4gIH1cblxuICB0aHJvdyBuZXcgRXJyb3IoYE1pc3NpbmcgbG9jYWxlIGRhdGEgZm9yIHRoZSBsb2NhbGUgXCIke2xvY2FsZX1cIi5gKTtcbn1cblxuLyoqXG4gKiBSZXRyaWV2ZXMgdGhlIGRlZmF1bHQgY3VycmVuY3kgY29kZSBmb3IgdGhlIGdpdmVuIGxvY2FsZS5cbiAqXG4gKiBUaGUgZGVmYXVsdCBpcyBkZWZpbmVkIGFzIHRoZSBmaXJzdCBjdXJyZW5jeSB3aGljaCBpcyBzdGlsbCBpbiB1c2UuXG4gKlxuICogQHBhcmFtIGxvY2FsZSBUaGUgY29kZSBvZiB0aGUgbG9jYWxlIHdob3NlIGN1cnJlbmN5IGNvZGUgd2Ugd2FudC5cbiAqIEByZXR1cm5zIFRoZSBjb2RlIG9mIHRoZSBkZWZhdWx0IGN1cnJlbmN5IGZvciB0aGUgZ2l2ZW4gbG9jYWxlLlxuICpcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldExvY2FsZUN1cnJlbmN5Q29kZShsb2NhbGU6IHN0cmluZyk6IHN0cmluZ3xudWxsIHtcbiAgY29uc3QgZGF0YSA9IGZpbmRMb2NhbGVEYXRhKGxvY2FsZSk7XG4gIHJldHVybiBkYXRhW0xvY2FsZURhdGFJbmRleC5DdXJyZW5jeUNvZGVdIHx8IG51bGw7XG59XG5cbi8qKlxuICogUmV0cmlldmVzIHRoZSBwbHVyYWwgZnVuY3Rpb24gdXNlZCBieSBJQ1UgZXhwcmVzc2lvbnMgdG8gZGV0ZXJtaW5lIHRoZSBwbHVyYWwgY2FzZSB0byB1c2VcbiAqIGZvciBhIGdpdmVuIGxvY2FsZS5cbiAqIEBwYXJhbSBsb2NhbGUgQSBsb2NhbGUgY29kZSBmb3IgdGhlIGxvY2FsZSBmb3JtYXQgcnVsZXMgdG8gdXNlLlxuICogQHJldHVybnMgVGhlIHBsdXJhbCBmdW5jdGlvbiBmb3IgdGhlIGxvY2FsZS5cbiAqIEBzZWUgYE5nUGx1cmFsYFxuICogQHNlZSBbSW50ZXJuYXRpb25hbGl6YXRpb24gKGkxOG4pIEd1aWRlXShodHRwczovL2FuZ3VsYXIuaW8vZ3VpZGUvaTE4bilcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldExvY2FsZVBsdXJhbENhc2UobG9jYWxlOiBzdHJpbmcpOiAodmFsdWU6IG51bWJlcikgPT4gbnVtYmVyIHtcbiAgY29uc3QgZGF0YSA9IGZpbmRMb2NhbGVEYXRhKGxvY2FsZSk7XG4gIHJldHVybiBkYXRhW0xvY2FsZURhdGFJbmRleC5QbHVyYWxDYXNlXTtcbn1cblxuXG5cbi8qKlxuICogSGVscGVyIGZ1bmN0aW9uIHRvIGdldCB0aGUgZ2l2ZW4gYG5vcm1hbGl6ZWRMb2NhbGVgIGZyb20gYExPQ0FMRV9EQVRBYFxuICogb3IgZnJvbSB0aGUgZ2xvYmFsIGBuZy5jb21tb24ubG9jYWxlYC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldExvY2FsZURhdGEobm9ybWFsaXplZExvY2FsZTogc3RyaW5nKTogYW55IHtcbiAgaWYgKCEobm9ybWFsaXplZExvY2FsZSBpbiBMT0NBTEVfREFUQSkpIHtcbiAgICBMT0NBTEVfREFUQVtub3JtYWxpemVkTG9jYWxlXSA9IGdsb2JhbC5uZyAmJiBnbG9iYWwubmcuY29tbW9uICYmIGdsb2JhbC5uZy5jb21tb24ubG9jYWxlcyAmJlxuICAgICAgICBnbG9iYWwubmcuY29tbW9uLmxvY2FsZXNbbm9ybWFsaXplZExvY2FsZV07XG4gIH1cbiAgcmV0dXJuIExPQ0FMRV9EQVRBW25vcm1hbGl6ZWRMb2NhbGVdO1xufVxuXG4vKipcbiAqIEhlbHBlciBmdW5jdGlvbiB0byByZW1vdmUgYWxsIHRoZSBsb2NhbGUgZGF0YSBmcm9tIGBMT0NBTEVfREFUQWAuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiB1bnJlZ2lzdGVyQWxsTG9jYWxlRGF0YSgpIHtcbiAgTE9DQUxFX0RBVEEgPSB7fTtcbn1cblxuLyoqXG4gKiBJbmRleCBvZiBlYWNoIHR5cGUgb2YgbG9jYWxlIGRhdGEgZnJvbSB0aGUgbG9jYWxlIGRhdGEgYXJyYXlcbiAqL1xuZXhwb3J0IGVudW0gTG9jYWxlRGF0YUluZGV4IHtcbiAgTG9jYWxlSWQgPSAwLFxuICBEYXlQZXJpb2RzRm9ybWF0LFxuICBEYXlQZXJpb2RzU3RhbmRhbG9uZSxcbiAgRGF5c0Zvcm1hdCxcbiAgRGF5c1N0YW5kYWxvbmUsXG4gIE1vbnRoc0Zvcm1hdCxcbiAgTW9udGhzU3RhbmRhbG9uZSxcbiAgRXJhcyxcbiAgRmlyc3REYXlPZldlZWssXG4gIFdlZWtlbmRSYW5nZSxcbiAgRGF0ZUZvcm1hdCxcbiAgVGltZUZvcm1hdCxcbiAgRGF0ZVRpbWVGb3JtYXQsXG4gIE51bWJlclN5bWJvbHMsXG4gIE51bWJlckZvcm1hdHMsXG4gIEN1cnJlbmN5Q29kZSxcbiAgQ3VycmVuY3lTeW1ib2wsXG4gIEN1cnJlbmN5TmFtZSxcbiAgQ3VycmVuY2llcyxcbiAgUGx1cmFsQ2FzZSxcbiAgRXh0cmFEYXRhXG59XG5cbi8qKlxuICogSW5kZXggb2YgZWFjaCB0eXBlIG9mIGxvY2FsZSBkYXRhIGZyb20gdGhlIGV4dHJhIGxvY2FsZSBkYXRhIGFycmF5XG4gKi9cbmV4cG9ydCBjb25zdCBlbnVtIEV4dHJhTG9jYWxlRGF0YUluZGV4IHtcbiAgRXh0cmFEYXlQZXJpb2RGb3JtYXRzID0gMCxcbiAgRXh0cmFEYXlQZXJpb2RTdGFuZGFsb25lLFxuICBFeHRyYURheVBlcmlvZHNSdWxlc1xufVxuXG4vKipcbiAqIEluZGV4IG9mIGVhY2ggdmFsdWUgaW4gY3VycmVuY3kgZGF0YSAodXNlZCB0byBkZXNjcmliZSBDVVJSRU5DSUVTX0VOIGluIGN1cnJlbmNpZXMudHMpXG4gKi9cbmV4cG9ydCBjb25zdCBlbnVtIEN1cnJlbmN5SW5kZXgge1N5bWJvbCA9IDAsIFN5bWJvbE5hcnJvdywgTmJPZkRpZ2l0c31cblxuLyoqXG4gKiBSZXR1cm5zIHRoZSBjYW5vbmljYWwgZm9ybSBvZiBhIGxvY2FsZSBuYW1lIC0gbG93ZXJjYXNlIHdpdGggYF9gIHJlcGxhY2VkIHdpdGggYC1gLlxuICovXG5mdW5jdGlvbiBub3JtYWxpemVMb2NhbGUobG9jYWxlOiBzdHJpbmcpOiBzdHJpbmcge1xuICByZXR1cm4gbG9jYWxlLnRvTG93ZXJDYXNlKCkucmVwbGFjZSgvXy9nLCAnLScpO1xufSJdfQ==