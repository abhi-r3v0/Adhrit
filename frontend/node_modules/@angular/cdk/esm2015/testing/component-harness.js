/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __awaiter } from "tslib";
/**
 * Base class for component harnesses that all component harness authors should extend. This base
 * component harness provides the basic ability to locate element and sub-component harness. It
 * should be inherited when defining user's own harness.
 */
export class ComponentHarness {
    constructor(locatorFactory) {
        this.locatorFactory = locatorFactory;
    }
    /** Gets a `Promise` for the `TestElement` representing the host element of the component. */
    host() {
        return __awaiter(this, void 0, void 0, function* () {
            return this.locatorFactory.rootElement;
        });
    }
    /**
     * Gets a `LocatorFactory` for the document root element. This factory can be used to create
     * locators for elements that a component creates outside of its own root element. (e.g. by
     * appending to document.body).
     */
    documentRootLocatorFactory() {
        return this.locatorFactory.documentRootLocatorFactory();
    }
    /**
     * Creates an asynchronous locator function that can be used to find a `ComponentHarness` instance
     * or element under the host element of this `ComponentHarness`.
     * @param queries A list of queries specifying which harnesses and elements to search for:
     *   - A `string` searches for elements matching the CSS selector specified by the string.
     *   - A `ComponentHarness` constructor searches for `ComponentHarness` instances matching the
     *     given class.
     *   - A `HarnessPredicate` searches for `ComponentHarness` instances matching the given
     *     predicate.
     * @return An asynchronous locator function that searches for and returns a `Promise` for the
     *   first element or harness matching the given search criteria. Matches are ordered first by
     *   order in the DOM, and second by order in the queries list. If no matches are found, the
     *   `Promise` rejects. The type that the `Promise` resolves to is a union of all result types for
     *   each query.
     *
     * e.g. Given the following DOM: `<div id="d1" /><div id="d2" />`, and assuming
     * `DivHarness.hostSelector === 'div'`:
     * - `await ch.locatorFor(DivHarness, 'div')()` gets a `DivHarness` instance for `#d1`
     * - `await ch.locatorFor('div', DivHarness)()` gets a `TestElement` instance for `#d1`
     * - `await ch.locatorFor('span')()` throws because the `Promise` rejects.
     */
    locatorFor(...queries) {
        return this.locatorFactory.locatorFor(...queries);
    }
    /**
     * Creates an asynchronous locator function that can be used to find a `ComponentHarness` instance
     * or element under the host element of this `ComponentHarness`.
     * @param queries A list of queries specifying which harnesses and elements to search for:
     *   - A `string` searches for elements matching the CSS selector specified by the string.
     *   - A `ComponentHarness` constructor searches for `ComponentHarness` instances matching the
     *     given class.
     *   - A `HarnessPredicate` searches for `ComponentHarness` instances matching the given
     *     predicate.
     * @return An asynchronous locator function that searches for and returns a `Promise` for the
     *   first element or harness matching the given search criteria. Matches are ordered first by
     *   order in the DOM, and second by order in the queries list. If no matches are found, the
     *   `Promise` is resolved with `null`. The type that the `Promise` resolves to is a union of all
     *   result types for each query or null.
     *
     * e.g. Given the following DOM: `<div id="d1" /><div id="d2" />`, and assuming
     * `DivHarness.hostSelector === 'div'`:
     * - `await ch.locatorForOptional(DivHarness, 'div')()` gets a `DivHarness` instance for `#d1`
     * - `await ch.locatorForOptional('div', DivHarness)()` gets a `TestElement` instance for `#d1`
     * - `await ch.locatorForOptional('span')()` gets `null`.
     */
    locatorForOptional(...queries) {
        return this.locatorFactory.locatorForOptional(...queries);
    }
    /**
     * Creates an asynchronous locator function that can be used to find `ComponentHarness` instances
     * or elements under the host element of this `ComponentHarness`.
     * @param queries A list of queries specifying which harnesses and elements to search for:
     *   - A `string` searches for elements matching the CSS selector specified by the string.
     *   - A `ComponentHarness` constructor searches for `ComponentHarness` instances matching the
     *     given class.
     *   - A `HarnessPredicate` searches for `ComponentHarness` instances matching the given
     *     predicate.
     * @return An asynchronous locator function that searches for and returns a `Promise` for all
     *   elements and harnesses matching the given search criteria. Matches are ordered first by
     *   order in the DOM, and second by order in the queries list. If an element matches more than
     *   one `ComponentHarness` class, the locator gets an instance of each for the same element. If
     *   an element matches multiple `string` selectors, only one `TestElement` instance is returned
     *   for that element. The type that the `Promise` resolves to is an array where each element is
     *   the union of all result types for each query.
     *
     * e.g. Given the following DOM: `<div id="d1" /><div id="d2" />`, and assuming
     * `DivHarness.hostSelector === 'div'` and `IdIsD1Harness.hostSelector === '#d1'`:
     * - `await ch.locatorForAll(DivHarness, 'div')()` gets `[
     *     DivHarness, // for #d1
     *     TestElement, // for #d1
     *     DivHarness, // for #d2
     *     TestElement // for #d2
     *   ]`
     * - `await ch.locatorForAll('div', '#d1')()` gets `[
     *     TestElement, // for #d1
     *     TestElement // for #d2
     *   ]`
     * - `await ch.locatorForAll(DivHarness, IdIsD1Harness)()` gets `[
     *     DivHarness, // for #d1
     *     IdIsD1Harness, // for #d1
     *     DivHarness // for #d2
     *   ]`
     * - `await ch.locatorForAll('span')()` gets `[]`.
     */
    locatorForAll(...queries) {
        return this.locatorFactory.locatorForAll(...queries);
    }
    /**
     * Flushes change detection and async tasks in the Angular zone.
     * In most cases it should not be necessary to call this manually. However, there may be some edge
     * cases where it is needed to fully flush animation events.
     */
    forceStabilize() {
        return __awaiter(this, void 0, void 0, function* () {
            return this.locatorFactory.forceStabilize();
        });
    }
    /**
     * Waits for all scheduled or running async tasks to complete. This allows harness
     * authors to wait for async tasks outside of the Angular zone.
     */
    waitForTasksOutsideAngular() {
        return __awaiter(this, void 0, void 0, function* () {
            return this.locatorFactory.waitForTasksOutsideAngular();
        });
    }
}
/**
 * Base class for component harnesses that authors should extend if they anticipate that consumers
 * of the harness may want to access other harnesses within the `<ng-content>` of the component.
 */
export class ContentContainerComponentHarness extends ComponentHarness {
    getChildLoader(selector) {
        return this.locatorFactory.harnessLoaderFor(selector);
    }
    getAllChildLoaders(selector) {
        return this.locatorFactory.harnessLoaderForAll(selector);
    }
    getHarness(query) {
        return this.locatorFor(query)();
    }
    getAllHarnesses(query) {
        return this.locatorForAll(query)();
    }
}
/**
 * A class used to associate a ComponentHarness class with predicates functions that can be used to
 * filter instances of the class.
 */
export class HarnessPredicate {
    constructor(harnessType, options) {
        this.harnessType = harnessType;
        this._predicates = [];
        this._descriptions = [];
        this._addBaseOptions(options);
    }
    /**
     * Checks if the specified nullable string value matches the given pattern.
     * @param value The nullable string value to check, or a Promise resolving to the
     *   nullable string value.
     * @param pattern The pattern the value is expected to match. If `pattern` is a string,
     *   `value` is expected to match exactly. If `pattern` is a regex, a partial match is
     *   allowed. If `pattern` is `null`, the value is expected to be `null`.
     * @return Whether the value matches the pattern.
     */
    static stringMatches(value, pattern) {
        return __awaiter(this, void 0, void 0, function* () {
            value = yield value;
            if (pattern === null) {
                return value === null;
            }
            else if (value === null) {
                return false;
            }
            return typeof pattern === 'string' ? value === pattern : pattern.test(value);
        });
    }
    /**
     * Adds a predicate function to be run against candidate harnesses.
     * @param description A description of this predicate that may be used in error messages.
     * @param predicate An async predicate function.
     * @return this (for method chaining).
     */
    add(description, predicate) {
        this._descriptions.push(description);
        this._predicates.push(predicate);
        return this;
    }
    /**
     * Adds a predicate function that depends on an option value to be run against candidate
     * harnesses. If the option value is undefined, the predicate will be ignored.
     * @param name The name of the option (may be used in error messages).
     * @param option The option value.
     * @param predicate The predicate function to run if the option value is not undefined.
     * @return this (for method chaining).
     */
    addOption(name, option, predicate) {
        if (option !== undefined) {
            this.add(`${name} = ${_valueAsString(option)}`, item => predicate(item, option));
        }
        return this;
    }
    /**
     * Filters a list of harnesses on this predicate.
     * @param harnesses The list of harnesses to filter.
     * @return A list of harnesses that satisfy this predicate.
     */
    filter(harnesses) {
        return __awaiter(this, void 0, void 0, function* () {
            const results = yield Promise.all(harnesses.map(h => this.evaluate(h)));
            return harnesses.filter((_, i) => results[i]);
        });
    }
    /**
     * Evaluates whether the given harness satisfies this predicate.
     * @param harness The harness to check
     * @return A promise that resolves to true if the harness satisfies this predicate,
     *   and resolves to false otherwise.
     */
    evaluate(harness) {
        return __awaiter(this, void 0, void 0, function* () {
            const results = yield Promise.all(this._predicates.map(p => p(harness)));
            return results.reduce((combined, current) => combined && current, true);
        });
    }
    /** Gets a description of this predicate for use in error messages. */
    getDescription() {
        return this._descriptions.join(', ');
    }
    /** Gets the selector used to find candidate elements. */
    getSelector() {
        return this._ancestor.split(',')
            .map(part => `${part.trim()} ${this.harnessType.hostSelector}`.trim())
            .join(',');
    }
    /** Adds base options common to all harness types. */
    _addBaseOptions(options) {
        this._ancestor = options.ancestor || '';
        if (this._ancestor) {
            this._descriptions.push(`has ancestor matching selector "${this._ancestor}"`);
        }
        const selector = options.selector;
        if (selector !== undefined) {
            this.add(`host matches selector "${selector}"`, (item) => __awaiter(this, void 0, void 0, function* () {
                return (yield item.host()).matchesSelector(selector);
            }));
        }
    }
}
/** Represent a value as a string for the purpose of logging. */
function _valueAsString(value) {
    if (value === undefined) {
        return 'undefined';
    }
    // `JSON.stringify` doesn't handle RegExp properly, so we need a custom replacer.
    try {
        return JSON.stringify(value, (_, v) => {
            if (v instanceof RegExp) {
                return `/${v.toString()}/`;
            }
            return typeof v === 'string' ? v.replace('/\//g', '\\/') : v;
        }).replace(/"\/\//g, '\\/').replace(/\/\/"/g, '\\/').replace(/\\\//g, '/');
    }
    catch (_a) {
        // `JSON.stringify` will throw if the object is cyclical,
        // in this case the best we can do is report the value as `{...}`.
        return '{...}';
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29tcG9uZW50LWhhcm5lc3MuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi9zcmMvY2RrL3Rlc3RpbmcvY29tcG9uZW50LWhhcm5lc3MudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HOztBQThPSDs7OztHQUlHO0FBQ0gsTUFBTSxPQUFnQixnQkFBZ0I7SUFDcEMsWUFBK0IsY0FBOEI7UUFBOUIsbUJBQWMsR0FBZCxjQUFjLENBQWdCO0lBQUcsQ0FBQztJQUVqRSw2RkFBNkY7SUFDdkYsSUFBSTs7WUFDUixPQUFPLElBQUksQ0FBQyxjQUFjLENBQUMsV0FBVyxDQUFDO1FBQ3pDLENBQUM7S0FBQTtJQUVEOzs7O09BSUc7SUFDTywwQkFBMEI7UUFDbEMsT0FBTyxJQUFJLENBQUMsY0FBYyxDQUFDLDBCQUEwQixFQUFFLENBQUM7SUFDMUQsQ0FBQztJQUVEOzs7Ozs7Ozs7Ozs7Ozs7Ozs7OztPQW9CRztJQUNPLFVBQVUsQ0FBMkMsR0FBRyxPQUFVO1FBRTFFLE9BQU8sSUFBSSxDQUFDLGNBQWMsQ0FBQyxVQUFVLENBQUMsR0FBRyxPQUFPLENBQUMsQ0FBQztJQUNwRCxDQUFDO0lBRUQ7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O09Bb0JHO0lBQ08sa0JBQWtCLENBQTJDLEdBQUcsT0FBVTtRQUVsRixPQUFPLElBQUksQ0FBQyxjQUFjLENBQUMsa0JBQWtCLENBQUMsR0FBRyxPQUFPLENBQUMsQ0FBQztJQUM1RCxDQUFDO0lBRUQ7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O09BbUNHO0lBQ08sYUFBYSxDQUEyQyxHQUFHLE9BQVU7UUFFN0UsT0FBTyxJQUFJLENBQUMsY0FBYyxDQUFDLGFBQWEsQ0FBQyxHQUFHLE9BQU8sQ0FBQyxDQUFDO0lBQ3ZELENBQUM7SUFFRDs7OztPQUlHO0lBQ2EsY0FBYzs7WUFDNUIsT0FBTyxJQUFJLENBQUMsY0FBYyxDQUFDLGNBQWMsRUFBRSxDQUFDO1FB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QyxFQUFFO2dCQUMzRCxPQUFPLENBQUMsTUFBTSxJQUFJLENBQUMsSUFBSSxFQUFFLENBQUMsQ0FBQyxlQUFlLENBQUMsUUFBUSxDQUFDLENBQUM7WUFDdkQsQ0FBQyxDQUFBLENBQUMsQ0FBQztTQUNKO0lBQ0gsQ0FBQztDQUNGO0FBRUQsZ0VBQWdFO0FBQ2hFLFNBQVMsY0FBYyxDQUFDLEtBQWM7SUFDcEMsSUFBSSxLQUFLLEtBQUssU0FBUyxFQUFFO1FBQ3ZCLE9BQU8sV0FBVyxDQUFDO0tBQ3BCO0lBQ0QsaUZBQWlGO0lBQ2pGLElBQUk7UUFDRixPQUFPLElBQUksQ0FBQyxTQUFTLENBQUMsS0FBSyxFQUFFLENBQUMsQ0FBQyxFQUFFLENBQUMsRUFBRSxFQUFFO1lBQ3BDLElBQUksQ0FBQyxZQUFZLE1BQU0sRUFBRTtnQkFDdkIsT0FBTyxJQUFJLENBQUMsQ0FBQyxRQUFRLEVBQUUsR0FBRyxDQUFDO2FBQzVCO1lBRUQsT0FBTyxPQUFPLENBQUMsS0FBSyxRQUFRLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxPQUFPLENBQUMsT0FBTyxFQUFFLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUM7UUFDL0QsQ0FBQyxDQUFDLENBQUMsT0FBTyxDQUFDLFFBQVEsRUFBRSxLQUFLLENBQUMsQ0FBQyxPQUFPLENBQUMsUUFBUSxFQUFFLEtBQUssQ0FBQyxDQUFDLE9BQU8sQ0FBQyxPQUFPLEVBQUUsR0FBRyxDQUFDLENBQUM7S0FDNUU7SUFBQyxXQUFNO1FBQ04seURBQXlEO1FBQ3pELGtFQUFrRTtRQUNsRSxPQUFPLE9BQU8sQ0FBQztLQUNoQjtBQUNILENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtUZXN0RWxlbWVudH0gZnJvbSAnLi90ZXN0LWVsZW1lbnQnO1xuXG4vKiogQW4gYXN5bmMgZnVuY3Rpb24gdGhhdCByZXR1cm5zIGEgcHJvbWlzZSB3aGVuIGNhbGxlZC4gKi9cbmV4cG9ydCB0eXBlIEFzeW5jRmFjdG9yeUZuPFQ+ID0gKCkgPT4gUHJvbWlzZTxUPjtcblxuLyoqIEFuIGFzeW5jIGZ1bmN0aW9uIHRoYXQgdGFrZXMgYW4gaXRlbSBhbmQgcmV0dXJucyBhIGJvb2xlYW4gcHJvbWlzZSAqL1xuZXhwb3J0IHR5cGUgQXN5bmNQcmVkaWNhdGU8VD4gPSAoaXRlbTogVCkgPT4gUHJvbWlzZTxib29sZWFuPjtcblxuLyoqIEFuIGFzeW5jIGZ1bmN0aW9uIHRoYXQgdGFrZXMgYW4gaXRlbSBhbmQgYW4gb3B0aW9uIHZhbHVlIGFuZCByZXR1cm5zIGEgYm9vbGVhbiBwcm9taXNlLiAqL1xuZXhwb3J0IHR5cGUgQXN5bmNPcHRpb25QcmVkaWNhdGU8VCwgTz4gPSAoaXRlbTogVCwgb3B0aW9uOiBPKSA9PiBQcm9taXNlPGJvb2xlYW4+O1xuXG4vKipcbiAqIEEgcXVlcnkgZm9yIGEgYENvbXBvbmVudEhhcm5lc3NgLCB3aGljaCBpcyBleHByZXNzZWQgYXMgZWl0aGVyIGEgYENvbXBvbmVudEhhcm5lc3NDb25zdHJ1Y3RvcmAgb3JcbiAqIGEgYEhhcm5lc3NQcmVkaWNhdGVgLlxuICovXG5leHBvcnQgdHlwZSBIYXJuZXNzUXVlcnk8VCBleHRlbmRzIENvbXBvbmVudEhhcm5lc3M+ID1cbiAgICBDb21wb25lbnRIYXJuZXNzQ29uc3RydWN0b3I8VD4gfCBIYXJuZXNzUHJlZGljYXRlPFQ+O1xuXG4vKipcbiAqIFRoZSByZXN1bHQgdHlwZSBvYnRhaW5lZCB3aGVuIHNlYXJjaGluZyB1c2luZyBhIHBhcnRpY3VsYXIgbGlzdCBvZiBxdWVyaWVzLiBUaGlzIHR5cGUgZGVwZW5kcyBvblxuICogdGhlIHBhcnRpY3VsYXIgaXRlbXMgYmVpbmcgcXVlcmllZC5cbiAqIC0gSWYgb25lIG9mIHRoZSBxdWVyaWVzIGlzIGZvciBhIGBDb21wb25lbnRIYXJuZXNzQ29uc3RydWN0b3I8QzE+YCwgaXQgbWVhbnMgdGhhdCB0aGUgcmVzdWx0XG4gKiAgIG1pZ2h0IGJlIGEgaGFybmVzcyBvZiB0eXBlIGBDMWBcbiAqIC0gSWYgb25lIG9mIHRoZSBxdWVyaWVzIGlzIGZvciBhIGBIYXJuZXNzUHJlZGljYXRlPEMyPmAsIGl0IG1lYW5zIHRoYXQgdGhlIHJlc3VsdCBtaWdodCBiZSBhXG4gKiAgIGhhcm5lc3Mgb2YgdHlwZSBgQzJgXG4gKiAtIElmIG9uZSBvZiB0aGUgcXVlcmllcyBpcyBmb3IgYSBgc3RyaW5nYCwgaXQgbWVhbnMgdGhhdCB0aGUgcmVzdWx0IG1pZ2h0IGJlIGEgYFRlc3RFbGVtZW50YC5cbiAqXG4gKiBTaW5jZSB3ZSBkb24ndCBrbm93IGZvciBzdXJlIHdoaWNoIHF1ZXJ5IHdpbGwgbWF0Y2gsIHRoZSByZXN1bHQgdHlwZSBpZiB0aGUgdW5pb24gb2YgdGhlIHR5cGVzXG4gKiBmb3IgYWxsIHBvc3NpYmxlIHJlc3VsdHMuXG4gKlxuICogZS5nLlxuICogVGhlIHR5cGU6XG4gKiBgTG9jYXRvckZuUmVzdWx0Jmx0O1tcbiAqICAgQ29tcG9uZW50SGFybmVzc0NvbnN0cnVjdG9yJmx0O015SGFybmVzcyZndDssXG4gKiAgIEhhcm5lc3NQcmVkaWNhdGUmbHQ7TXlPdGhlckhhcm5lc3MmZ3Q7LFxuICogICBzdHJpbmdcbiAqIF0mZ3Q7YFxuICogaXMgZXF1aXZhbGVudCB0bzpcbiAqIGBNeUhhcm5lc3MgfCBNeU90aGVySGFybmVzcyB8IFRlc3RFbGVtZW50YC5cbiAqL1xuZXhwb3J0IHR5cGUgTG9jYXRvckZuUmVzdWx0PFQgZXh0ZW5kcyAoSGFybmVzc1F1ZXJ5PGFueT4gfCBzdHJpbmcpW10+ID0ge1xuICBbSSBpbiBrZXlvZiBUXTpcbiAgICAgIC8vIE1hcCBgQ29tcG9uZW50SGFybmVzc0NvbnN0cnVjdG9yPEM+YCB0byBgQ2AuXG4gICAgICBUW0ldIGV4dGVuZHMgbmV3ICguLi5hcmdzOiBhbnlbXSkgPT4gaW5mZXIgQyA/IEMgOlxuICAgICAgLy8gTWFwIGBIYXJuZXNzUHJlZGljYXRlPEM+YCB0byBgQ2AuXG4gICAgICBUW0ldIGV4dGVuZHMgeyBoYXJuZXNzVHlwZTogbmV3ICguLi5hcmdzOiBhbnlbXSkgPT4gaW5mZXIgQyB9ID8gQyA6XG4gICAgICAvLyBNYXAgYHN0cmluZ2AgdG8gYFRlc3RFbGVtZW50YC5cbiAgICAgIFRbSV0gZXh0ZW5kcyBzdHJpbmcgPyBUZXN0RWxlbWVudCA6XG4gICAgICAvLyBNYXAgZXZlcnl0aGluZyBlbHNlIHRvIGBuZXZlcmAgKHNob3VsZCBub3QgaGFwcGVuIGR1ZSB0byB0aGUgdHlwZSBjb25zdHJhaW50IG9uIGBUYCkuXG4gICAgICBuZXZlcjtcbn1bbnVtYmVyXTtcblxuXG4vKipcbiAqIEludGVyZmFjZSB1c2VkIHRvIGxvYWQgQ29tcG9uZW50SGFybmVzcyBvYmplY3RzLiBUaGlzIGludGVyZmFjZSBpcyB1c2VkIGJ5IHRlc3QgYXV0aG9ycyB0b1xuICogaW5zdGFudGlhdGUgYENvbXBvbmVudEhhcm5lc3NgZXMuXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgSGFybmVzc0xvYWRlciB7XG4gIC8qKlxuICAgKiBTZWFyY2hlcyBmb3IgYW4gZWxlbWVudCB3aXRoIHRoZSBnaXZlbiBzZWxlY3RvciB1bmRlciB0aGUgY3VycmVudCBpbnN0YW5jZXMncyByb290IGVsZW1lbnQsXG4gICAqIGFuZCByZXR1cm5zIGEgYEhhcm5lc3NMb2FkZXJgIHJvb3RlZCBhdCB0aGUgbWF0Y2hpbmcgZWxlbWVudC4gSWYgbXVsdGlwbGUgZWxlbWVudHMgbWF0Y2ggdGhlXG4gICAqIHNlbGVjdG9yLCB0aGUgZmlyc3QgaXMgdXNlZC4gSWYgbm8gZWxlbWVudHMgbWF0Y2gsIGFuIGVycm9yIGlzIHRocm93bi5cbiAgICogQHBhcmFtIHNlbGVjdG9yIFRoZSBzZWxlY3RvciBmb3IgdGhlIHJvb3QgZWxlbWVudCBvZiB0aGUgbmV3IGBIYXJuZXNzTG9hZGVyYFxuICAgKiBAcmV0dXJuIEEgYEhhcm5lc3NMb2FkZXJgIHJvb3RlZCBhdCB0aGUgZWxlbWVudCBtYXRjaGluZyB0aGUgZ2l2ZW4gc2VsZWN0b3IuXG4gICAqIEB0aHJvd3MgSWYgYSBtYXRjaGluZyBlbGVtZW50IGNhbid0IGJlIGZvdW5kLlxuICAgKi9cbiAgZ2V0Q2hpbGRMb2FkZXIoc2VsZWN0b3I6IHN0cmluZyk6IFByb21pc2U8SGFybmVzc0xvYWRlcj47XG5cbiAgLyoqXG4gICAqIFNlYXJjaGVzIGZvciBhbGwgZWxlbWVudHMgd2l0aCB0aGUgZ2l2ZW4gc2VsZWN0b3IgdW5kZXIgdGhlIGN1cnJlbnQgaW5zdGFuY2VzJ3Mgcm9vdCBlbGVtZW50LFxuICAgKiBhbmQgcmV0dXJucyBhbiBhcnJheSBvZiBgSGFybmVzc0xvYWRlcmBzLCBvbmUgZm9yIGVhY2ggbWF0Y2hpbmcgZWxlbWVudCwgcm9vdGVkIGF0IHRoYXRcbiAgICogZWxlbWVudC5cbiAgICogQHBhcmFtIHNlbGVjdG9yIFRoZSBzZWxlY3RvciBmb3IgdGhlIHJvb3QgZWxlbWVudCBvZiB0aGUgbmV3IGBIYXJuZXNzTG9hZGVyYFxuICAgKiBAcmV0dXJuIEEgbGlzdCBvZiBgSGFybmVzc0xvYWRlcmBzLCBvbmUgZm9yIGVhY2ggbWF0Y2hpbmcgZWxlbWVudCwgcm9vdGVkIGF0IHRoYXQgZWxlbWVudC5cbiAgICovXG4gIGdldEFsbENoaWxkTG9hZGVycyhzZWxlY3Rvcjogc3RyaW5nKTogUHJvbWlzZTxIYXJuZXNzTG9hZGVyW10+O1xuXG4gIC8qKlxuICAgKiBTZWFyY2hlcyBmb3IgYW4gaW5zdGFuY2Ugb2YgdGhlIGNvbXBvbmVudCBjb3JyZXNwb25kaW5nIHRvIHRoZSBnaXZlbiBoYXJuZXNzIHR5cGUgdW5kZXIgdGhlXG4gICAqIGBIYXJuZXNzTG9hZGVyYCdzIHJvb3QgZWxlbWVudCwgYW5kIHJldHVybnMgYSBgQ29tcG9uZW50SGFybmVzc2AgZm9yIHRoYXQgaW5zdGFuY2UuIElmIG11bHRpcGxlXG4gICAqIG1hdGNoaW5nIGNvbXBvbmVudHMgYXJlIGZvdW5kLCBhIGhhcm5lc3MgZm9yIHRoZSBmaXJzdCBvbmUgaXMgcmV0dXJuZWQuIElmIG5vIG1hdGNoaW5nXG4gICAqIGNvbXBvbmVudCBpcyBmb3VuZCwgYW4gZXJyb3IgaXMgdGhyb3duLlxuICAgKiBAcGFyYW0gcXVlcnkgQSBxdWVyeSBmb3IgYSBoYXJuZXNzIHRvIGNyZWF0ZVxuICAgKiBAcmV0dXJuIEFuIGluc3RhbmNlIG9mIHRoZSBnaXZlbiBoYXJuZXNzIHR5cGVcbiAgICogQHRocm93cyBJZiBhIG1hdGNoaW5nIGNvbXBvbmVudCBpbnN0YW5jZSBjYW4ndCBiZSBmb3VuZC5cbiAgICovXG4gIGdldEhhcm5lc3M8VCBleHRlbmRzIENvbXBvbmVudEhhcm5lc3M+KHF1ZXJ5OiBIYXJuZXNzUXVlcnk8VD4pOiBQcm9taXNlPFQ+O1xuXG4gIC8qKlxuICAgKiBTZWFyY2hlcyBmb3IgYWxsIGluc3RhbmNlcyBvZiB0aGUgY29tcG9uZW50IGNvcnJlc3BvbmRpbmcgdG8gdGhlIGdpdmVuIGhhcm5lc3MgdHlwZSB1bmRlciB0aGVcbiAgICogYEhhcm5lc3NMb2FkZXJgJ3Mgcm9vdCBlbGVtZW50LCBhbmQgcmV0dXJucyBhIGxpc3QgYENvbXBvbmVudEhhcm5lc3NgIGZvciBlYWNoIGluc3RhbmNlLlxuICAgKiBAcGFyYW0gcXVlcnkgQSBxdWVyeSBmb3IgYSBoYXJuZXNzIHRvIGNyZWF0ZVxuICAgKiBAcmV0dXJuIEEgbGlzdCBpbnN0YW5jZXMgb2YgdGhlIGdpdmVuIGhhcm5lc3MgdHlwZS5cbiAgICovXG4gIGdldEFsbEhhcm5lc3NlczxUIGV4dGVuZHMgQ29tcG9uZW50SGFybmVzcz4ocXVlcnk6IEhhcm5lc3NRdWVyeTxUPik6IFByb21pc2U8VFtdPjtcbn1cblxuLyoqXG4gKiBJbnRlcmZhY2UgdXNlZCB0byBjcmVhdGUgYXN5bmNocm9ub3VzIGxvY2F0b3IgZnVuY3Rpb25zIHVzZWQgZmluZCBlbGVtZW50cyBhbmQgY29tcG9uZW50XG4gKiBoYXJuZXNzZXMuIFRoaXMgaW50ZXJmYWNlIGlzIHVzZWQgYnkgYENvbXBvbmVudEhhcm5lc3NgIGF1dGhvcnMgdG8gY3JlYXRlIGxvY2F0b3IgZnVuY3Rpb25zIGZvclxuICogdGhlaXIgYENvbXBvbmVudEhhcm5lc3NgIHN1YmNsYXNzLlxuICovXG5leHBvcnQgaW50ZXJmYWNlIExvY2F0b3JGYWN0b3J5IHtcbiAgLyoqIEdldHMgYSBsb2NhdG9yIGZhY3Rvcnkgcm9vdGVkIGF0IHRoZSBkb2N1bWVudCByb290LiAqL1xuICBkb2N1bWVudFJvb3RMb2NhdG9yRmFjdG9yeSgpOiBMb2NhdG9yRmFjdG9yeTtcblxuICAvKiogVGhlIHJvb3QgZWxlbWVudCBvZiB0aGlzIGBMb2NhdG9yRmFjdG9yeWAgYXMgYSBgVGVzdEVsZW1lbnRgLiAqL1xuICByb290RWxlbWVudDogVGVzdEVsZW1lbnQ7XG5cbiAgLyoqXG4gICAqIENyZWF0ZXMgYW4gYXN5bmNocm9ub3VzIGxvY2F0b3IgZnVuY3Rpb24gdGhhdCBjYW4gYmUgdXNlZCB0byBmaW5kIGEgYENvbXBvbmVudEhhcm5lc3NgIGluc3RhbmNlXG4gICAqIG9yIGVsZW1lbnQgdW5kZXIgdGhlIHJvb3QgZWxlbWVudCBvZiB0aGlzIGBMb2NhdG9yRmFjdG9yeWAuXG4gICAqIEBwYXJhbSBxdWVyaWVzIEEgbGlzdCBvZiBxdWVyaWVzIHNwZWNpZnlpbmcgd2hpY2ggaGFybmVzc2VzIGFuZCBlbGVtZW50cyB0byBzZWFyY2ggZm9yOlxuICAgKiAgIC0gQSBgc3RyaW5nYCBzZWFyY2hlcyBmb3IgZWxlbWVudHMgbWF0Y2hpbmcgdGhlIENTUyBzZWxlY3RvciBzcGVjaWZpZWQgYnkgdGhlIHN0cmluZy5cbiAgICogICAtIEEgYENvbXBvbmVudEhhcm5lc3NgIGNvbnN0cnVjdG9yIHNlYXJjaGVzIGZvciBgQ29tcG9uZW50SGFybmVzc2AgaW5zdGFuY2VzIG1hdGNoaW5nIHRoZVxuICAgKiAgICAgZ2l2ZW4gY2xhc3MuXG4gICAqICAgLSBBIGBIYXJuZXNzUHJlZGljYXRlYCBzZWFyY2hlcyBmb3IgYENvbXBvbmVudEhhcm5lc3NgIGluc3RhbmNlcyBtYXRjaGluZyB0aGUgZ2l2ZW5cbiAgICogICAgIHByZWRpY2F0ZS5cbiAgICogQHJldHVybiBBbiBhc3luY2hyb25vdXMgbG9jYXRvciBmdW5jdGlvbiB0aGF0IHNlYXJjaGVzIGZvciBhbmQgcmV0dXJucyBhIGBQcm9taXNlYCBmb3IgdGhlXG4gICAqICAgZmlyc3QgZWxlbWVudCBvciBoYXJuZXNzIG1hdGNoaW5nIHRoZSBnaXZlbiBzZWFyY2ggY3JpdGVyaWEuIE1hdGNoZXMgYXJlIG9yZGVyZWQgZmlyc3QgYnlcbiAgICogICBvcmRlciBpbiB0aGUgRE9NLCBhbmQgc2Vjb25kIGJ5IG9yZGVyIGluIHRoZSBxdWVyaWVzIGxpc3QuIElmIG5vIG1hdGNoZXMgYXJlIGZvdW5kLCB0aGVcbiAgICogICBgUHJvbWlzZWAgcmVqZWN0cy4gVGhlIHR5cGUgdGhhdCB0aGUgYFByb21pc2VgIHJlc29sdmVzIHRvIGlzIGEgdW5pb24gb2YgYWxsIHJlc3VsdCB0eXBlcyBmb3JcbiAgICogICBlYWNoIHF1ZXJ5LlxuICAgKlxuICAgKiBlLmcuIEdpdmVuIHRoZSBmb2xsb3dpbmcgRE9NOiBgPGRpdiBpZD1cImQxXCIgLz48ZGl2IGlkPVwiZDJcIiAvPmAsIGFuZCBhc3N1bWluZ1xuICAgKiBgRGl2SGFybmVzcy5ob3N0U2VsZWN0b3IgPT09ICdkaXYnYDpcbiAgICogLSBgYXdhaXQgbGYubG9jYXRvckZvcihEaXZIYXJuZXNzLCAnZGl2JykoKWAgZ2V0cyBhIGBEaXZIYXJuZXNzYCBpbnN0YW5jZSBmb3IgYCNkMWBcbiAgICogLSBgYXdhaXQgbGYubG9jYXRvckZvcignZGl2JywgRGl2SGFybmVzcykoKWAgZ2V0cyBhIGBUZXN0RWxlbWVudGAgaW5zdGFuY2UgZm9yIGAjZDFgXG4gICAqIC0gYGF3YWl0IGxmLmxvY2F0b3JGb3IoJ3NwYW4nKSgpYCB0aHJvd3MgYmVjYXVzZSB0aGUgYFByb21pc2VgIHJlamVjdHMuXG4gICAqL1xuICBsb2NhdG9yRm9yPFQgZXh0ZW5kcyAoSGFybmVzc1F1ZXJ5PGFueT4gfCBzdHJpbmcpW10+KC4uLnF1ZXJpZXM6IFQpOlxuICAgICAgQXN5bmNGYWN0b3J5Rm48TG9jYXRvckZuUmVzdWx0PFQ+PjtcblxuICAvKipcbiAgICogQ3JlYXRlcyBhbiBhc3luY2hyb25vdXMgbG9jYXRvciBmdW5jdGlvbiB0aGF0IGNhbiBiZSB1c2VkIHRvIGZpbmQgYSBgQ29tcG9uZW50SGFybmVzc2AgaW5zdGFuY2VcbiAgICogb3IgZWxlbWVudCB1bmRlciB0aGUgcm9vdCBlbGVtZW50IG9mIHRoaXMgYExvY2F0b3JGYWN0b3J5YC5cbiAgICogQHBhcmFtIHF1ZXJpZXMgQSBsaXN0IG9mIHF1ZXJpZXMgc3BlY2lmeWluZyB3aGljaCBoYXJuZXNzZXMgYW5kIGVsZW1lbnRzIHRvIHNlYXJjaCBmb3I6XG4gICAqICAgLSBBIGBzdHJpbmdgIHNlYXJjaGVzIGZvciBlbGVtZW50cyBtYXRjaGluZyB0aGUgQ1NTIHNlbGVjdG9yIHNwZWNpZmllZCBieSB0aGUgc3RyaW5nLlxuICAgKiAgIC0gQSBgQ29tcG9uZW50SGFybmVzc2AgY29uc3RydWN0b3Igc2VhcmNoZXMgZm9yIGBDb21wb25lbnRIYXJuZXNzYCBpbnN0YW5jZXMgbWF0Y2hpbmcgdGhlXG4gICAqICAgICBnaXZlbiBjbGFzcy5cbiAgICogICAtIEEgYEhhcm5lc3NQcmVkaWNhdGVgIHNlYXJjaGVzIGZvciBgQ29tcG9uZW50SGFybmVzc2AgaW5zdGFuY2VzIG1hdGNoaW5nIHRoZSBnaXZlblxuICAgKiAgICAgcHJlZGljYXRlLlxuICAgKiBAcmV0dXJuIEFuIGFzeW5jaHJvbm91cyBsb2NhdG9yIGZ1bmN0aW9uIHRoYXQgc2VhcmNoZXMgZm9yIGFuZCByZXR1cm5zIGEgYFByb21pc2VgIGZvciB0aGVcbiAgICogICBmaXJzdCBlbGVtZW50IG9yIGhhcm5lc3MgbWF0Y2hpbmcgdGhlIGdpdmVuIHNlYXJjaCBjcml0ZXJpYS4gTWF0Y2hlcyBhcmUgb3JkZXJlZCBmaXJzdCBieVxuICAgKiAgIG9yZGVyIGluIHRoZSBET00sIGFuZCBzZWNvbmQgYnkgb3JkZXIgaW4gdGhlIHF1ZXJpZXMgbGlzdC4gSWYgbm8gbWF0Y2hlcyBhcmUgZm91bmQsIHRoZVxuICAgKiAgIGBQcm9taXNlYCBpcyByZXNvbHZlZCB3aXRoIGBudWxsYC4gVGhlIHR5cGUgdGhhdCB0aGUgYFByb21pc2VgIHJlc29sdmVzIHRvIGlzIGEgdW5pb24gb2YgYWxsXG4gICAqICAgcmVzdWx0IHR5cGVzIGZvciBlYWNoIHF1ZXJ5IG9yIG51bGwuXG4gICAqXG4gICAqIGUuZy4gR2l2ZW4gdGhlIGZvbGxvd2luZyBET006IGA8ZGl2IGlkPVwiZDFcIiAvPjxkaXYgaWQ9XCJkMlwiIC8+YCwgYW5kIGFzc3VtaW5nXG4gICAqIGBEaXZIYXJuZXNzLmhvc3RTZWxlY3RvciA9PT0gJ2RpdidgOlxuICAgKiAtIGBhd2FpdCBsZi5sb2NhdG9yRm9yT3B0aW9uYWwoRGl2SGFybmVzcywgJ2RpdicpKClgIGdldHMgYSBgRGl2SGFybmVzc2AgaW5zdGFuY2UgZm9yIGAjZDFgXG4gICAqIC0gYGF3YWl0IGxmLmxvY2F0b3JGb3JPcHRpb25hbCgnZGl2JywgRGl2SGFybmVzcykoKWAgZ2V0cyBhIGBUZXN0RWxlbWVudGAgaW5zdGFuY2UgZm9yIGAjZDFgXG4gICAqIC0gYGF3YWl0IGxmLmxvY2F0b3JGb3JPcHRpb25hbCgnc3BhbicpKClgIGdldHMgYG51bGxgLlxuICAgKi9cbiAgbG9jYXRvckZvck9wdGlvbmFsPFQgZXh0ZW5kcyAoSGFybmVzc1F1ZXJ5PGFueT4gfCBzdHJpbmcpW10+KC4uLnF1ZXJpZXM6IFQpOlxuICAgICAgQXN5bmNGYWN0b3J5Rm48TG9jYXRvckZuUmVzdWx0PFQ+IHwgbnVsbD47XG5cbiAgLyoqXG4gICAqIENyZWF0ZXMgYW4gYXN5bmNocm9ub3VzIGxvY2F0b3IgZnVuY3Rpb24gdGhhdCBjYW4gYmUgdXNlZCB0byBmaW5kIGBDb21wb25lbnRIYXJuZXNzYCBpbnN0YW5jZXNcbiAgICogb3IgZWxlbWVudHMgdW5kZXIgdGhlIHJvb3QgZWxlbWVudCBvZiB0aGlzIGBMb2NhdG9yRmFjdG9yeWAuXG4gICAqIEBwYXJhbSBxdWVyaWVzIEEgbGlzdCBvZiBxdWVyaWVzIHNwZWNpZnlpbmcgd2hpY2ggaGFybmVzc2VzIGFuZCBlbGVtZW50cyB0byBzZWFyY2ggZm9yOlxuICAgKiAgIC0gQSBgc3RyaW5nYCBzZWFyY2hlcyBmb3IgZWxlbWVudHMgbWF0Y2hpbmcgdGhlIENTUyBzZWxlY3RvciBzcGVjaWZpZWQgYnkgdGhlIHN0cmluZy5cbiAgICogICAtIEEgYENvbXBvbmVudEhhcm5lc3NgIGNvbnN0cnVjdG9yIHNlYXJjaGVzIGZvciBgQ29tcG9uZW50SGFybmVzc2AgaW5zdGFuY2VzIG1hdGNoaW5nIHRoZVxuICAgKiAgICAgZ2l2ZW4gY2xhc3MuXG4gICAqICAgLSBBIGBIYXJuZXNzUHJlZGljYXRlYCBzZWFyY2hlcyBmb3IgYENvbXBvbmVudEhhcm5lc3NgIGluc3RhbmNlcyBtYXRjaGluZyB0aGUgZ2l2ZW5cbiAgICogICAgIHByZWRpY2F0ZS5cbiAgICogQHJldHVybiBBbiBhc3luY2hyb25vdXMgbG9jYXRvciBmdW5jdGlvbiB0aGF0IHNlYXJjaGVzIGZvciBhbmQgcmV0dXJucyBhIGBQcm9taXNlYCBmb3IgYWxsXG4gICAqICAgZWxlbWVudHMgYW5kIGhhcm5lc3NlcyBtYXRjaGluZyB0aGUgZ2l2ZW4gc2VhcmNoIGNyaXRlcmlhLiBNYXRjaGVzIGFyZSBvcmRlcmVkIGZpcnN0IGJ5XG4gICAqICAgb3JkZXIgaW4gdGhlIERPTSwgYW5kIHNlY29uZCBieSBvcmRlciBpbiB0aGUgcXVlcmllcyBsaXN0LiBJZiBhbiBlbGVtZW50IG1hdGNoZXMgbW9yZSB0aGFuXG4gICAqICAgb25lIGBDb21wb25lbnRIYXJuZXNzYCBjbGFzcywgdGhlIGxvY2F0b3IgZ2V0cyBhbiBpbnN0YW5jZSBvZiBlYWNoIGZvciB0aGUgc2FtZSBlbGVtZW50LiBJZlxuICAgKiAgIGFuIGVsZW1lbnQgbWF0Y2hlcyBtdWx0aXBsZSBgc3RyaW5nYCBzZWxlY3RvcnMsIG9ubHkgb25lIGBUZXN0RWxlbWVudGAgaW5zdGFuY2UgaXMgcmV0dXJuZWRcbiAgICogICBmb3IgdGhhdCBlbGVtZW50LiBUaGUgdHlwZSB0aGF0IHRoZSBgUHJvbWlzZWAgcmVzb2x2ZXMgdG8gaXMgYW4gYXJyYXkgd2hlcmUgZWFjaCBlbGVtZW50IGlzXG4gICAqICAgdGhlIHVuaW9uIG9mIGFsbCByZXN1bHQgdHlwZXMgZm9yIGVhY2ggcXVlcnkuXG4gICAqXG4gICAqIGUuZy4gR2l2ZW4gdGhlIGZvbGxvd2luZyBET006IGA8ZGl2IGlkPVwiZDFcIiAvPjxkaXYgaWQ9XCJkMlwiIC8+YCwgYW5kIGFzc3VtaW5nXG4gICAqIGBEaXZIYXJuZXNzLmhvc3RTZWxlY3RvciA9PT0gJ2RpdidgIGFuZCBgSWRJc0QxSGFybmVzcy5ob3N0U2VsZWN0b3IgPT09ICcjZDEnYDpcbiAgICogLSBgYXdhaXQgbGYubG9jYXRvckZvckFsbChEaXZIYXJuZXNzLCAnZGl2JykoKWAgZ2V0cyBgW1xuICAgKiAgICAgRGl2SGFybmVzcywgLy8gZm9yICNkMVxuICAgKiAgICAgVGVzdEVsZW1lbnQsIC8vIGZvciAjZDFcbiAgICogICAgIERpdkhhcm5lc3MsIC8vIGZvciAjZDJcbiAgICogICAgIFRlc3RFbGVtZW50IC8vIGZvciAjZDJcbiAgICogICBdYFxuICAgKiAtIGBhd2FpdCBsZi5sb2NhdG9yRm9yQWxsKCdkaXYnLCAnI2QxJykoKWAgZ2V0cyBgW1xuICAgKiAgICAgVGVzdEVsZW1lbnQsIC8vIGZvciAjZDFcbiAgICogICAgIFRlc3RFbGVtZW50IC8vIGZvciAjZDJcbiAgICogICBdYFxuICAgKiAtIGBhd2FpdCBsZi5sb2NhdG9yRm9yQWxsKERpdkhhcm5lc3MsIElkSXNEMUhhcm5lc3MpKClgIGdldHMgYFtcbiAgICogICAgIERpdkhhcm5lc3MsIC8vIGZvciAjZDFcbiAgICogICAgIElkSXNEMUhhcm5lc3MsIC8vIGZvciAjZDFcbiAgICogICAgIERpdkhhcm5lc3MgLy8gZm9yICNkMlxuICAgKiAgIF1gXG4gICAqIC0gYGF3YWl0IGxmLmxvY2F0b3JGb3JBbGwoJ3NwYW4nKSgpYCBnZXRzIGBbXWAuXG4gICAqL1xuICBsb2NhdG9yRm9yQWxsPFQgZXh0ZW5kcyAoSGFybmVzc1F1ZXJ5PGFueT4gfCBzdHJpbmcpW10+KC4uLnF1ZXJpZXM6IFQpOlxuICAgICAgQXN5bmNGYWN0b3J5Rm48TG9jYXRvckZuUmVzdWx0PFQ+W10+O1xuXG4gIC8qKiBAcmV0dXJuIEEgYEhhcm5lc3NMb2FkZXJgIHJvb3RlZCBhdCB0aGUgcm9vdCBlbGVtZW50IG9mIHRoaXMgYExvY2F0b3JGYWN0b3J5YC4gKi9cbiAgcm9vdEhhcm5lc3NMb2FkZXIoKTogUHJvbWlzZTxIYXJuZXNzTG9hZGVyPjtcblxuICAvKipcbiAgICogR2V0cyBhIGBIYXJuZXNzTG9hZGVyYCBpbnN0YW5jZSBmb3IgYW4gZWxlbWVudCB1bmRlciB0aGUgcm9vdCBvZiB0aGlzIGBMb2NhdG9yRmFjdG9yeWAuXG4gICAqIEBwYXJhbSBzZWxlY3RvciBUaGUgc2VsZWN0b3IgZm9yIHRoZSByb290IGVsZW1lbnQuXG4gICAqIEByZXR1cm4gQSBgSGFybmVzc0xvYWRlcmAgcm9vdGVkIGF0IHRoZSBmaXJzdCBlbGVtZW50IG1hdGNoaW5nIHRoZSBnaXZlbiBzZWxlY3Rvci5cbiAgICogQHRocm93cyBJZiBubyBtYXRjaGluZyBlbGVtZW50IGlzIGZvdW5kIGZvciB0aGUgZ2l2ZW4gc2VsZWN0b3IuXG4gICAqL1xuICBoYXJuZXNzTG9hZGVyRm9yKHNlbGVjdG9yOiBzdHJpbmcpOiBQcm9taXNlPEhhcm5lc3NMb2FkZXI+O1xuXG4gIC8qKlxuICAgKiBHZXRzIGEgYEhhcm5lc3NMb2FkZXJgIGluc3RhbmNlIGZvciBhbiBlbGVtZW50IHVuZGVyIHRoZSByb290IG9mIHRoaXMgYExvY2F0b3JGYWN0b3J5YFxuICAgKiBAcGFyYW0gc2VsZWN0b3IgVGhlIHNlbGVjdG9yIGZvciB0aGUgcm9vdCBlbGVtZW50LlxuICAgKiBAcmV0dXJuIEEgYEhhcm5lc3NMb2FkZXJgIHJvb3RlZCBhdCB0aGUgZmlyc3QgZWxlbWVudCBtYXRjaGluZyB0aGUgZ2l2ZW4gc2VsZWN0b3IsIG9yIG51bGwgaWZcbiAgICogICAgIG5vIG1hdGNoaW5nIGVsZW1lbnQgaXMgZm91bmQuXG4gICAqL1xuICBoYXJuZXNzTG9hZGVyRm9yT3B0aW9uYWwoc2VsZWN0b3I6IHN0cmluZyk6IFByb21pc2U8SGFybmVzc0xvYWRlciB8IG51bGw+O1xuXG4gIC8qKlxuICAgKiBHZXRzIGEgbGlzdCBvZiBgSGFybmVzc0xvYWRlcmAgaW5zdGFuY2VzLCBvbmUgZm9yIGVhY2ggbWF0Y2hpbmcgZWxlbWVudC5cbiAgICogQHBhcmFtIHNlbGVjdG9yIFRoZSBzZWxlY3RvciBmb3IgdGhlIHJvb3QgZWxlbWVudC5cbiAgICogQHJldHVybiBBIGxpc3Qgb2YgYEhhcm5lc3NMb2FkZXJgLCBvbmUgcm9vdGVkIGF0IGVhY2ggZWxlbWVudCBtYXRjaGluZyB0aGUgZ2l2ZW4gc2VsZWN0b3IuXG4gICAqL1xuICBoYXJuZXNzTG9hZGVyRm9yQWxsKHNlbGVjdG9yOiBzdHJpbmcpOiBQcm9taXNlPEhhcm5lc3NMb2FkZXJbXT47XG5cbiAgLyoqXG4gICAqIEZsdXNoZXMgY2hhbmdlIGRldGVjdGlvbiBhbmQgYXN5bmMgdGFza3MgY2FwdHVyZWQgaW4gdGhlIEFuZ3VsYXIgem9uZS5cbiAgICogSW4gbW9zdCBjYXNlcyBpdCBzaG91bGQgbm90IGJlIG5lY2Vzc2FyeSB0byBjYWxsIHRoaXMgbWFudWFsbHkuIEhvd2V2ZXIsIHRoZXJlIG1heSBiZSBzb21lIGVkZ2VcbiAgICogY2FzZXMgd2hlcmUgaXQgaXMgbmVlZGVkIHRvIGZ1bGx5IGZsdXNoIGFuaW1hdGlvbiBldmVudHMuXG4gICAqL1xuICBmb3JjZVN0YWJpbGl6ZSgpOiBQcm9taXNlPHZvaWQ+O1xuXG4gIC8qKlxuICAgKiBXYWl0cyBmb3IgYWxsIHNjaGVkdWxlZCBvciBydW5uaW5nIGFzeW5jIHRhc2tzIHRvIGNvbXBsZXRlLiBUaGlzIGFsbG93cyBoYXJuZXNzXG4gICAqIGF1dGhvcnMgdG8gd2FpdCBmb3IgYXN5bmMgdGFza3Mgb3V0c2lkZSBvZiB0aGUgQW5ndWxhciB6b25lLlxuICAgKi9cbiAgd2FpdEZvclRhc2tzT3V0c2lkZUFuZ3VsYXIoKTogUHJvbWlzZTx2b2lkPjtcbn1cblxuLyoqXG4gKiBCYXNlIGNsYXNzIGZvciBjb21wb25lbnQgaGFybmVzc2VzIHRoYXQgYWxsIGNvbXBvbmVudCBoYXJuZXNzIGF1dGhvcnMgc2hvdWxkIGV4dGVuZC4gVGhpcyBiYXNlXG4gKiBjb21wb25lbnQgaGFybmVzcyBwcm92aWRlcyB0aGUgYmFzaWMgYWJpbGl0eSB0byBsb2NhdGUgZWxlbWVudCBhbmQgc3ViLWNvbXBvbmVudCBoYXJuZXNzLiBJdFxuICogc2hvdWxkIGJlIGluaGVyaXRlZCB3aGVuIGRlZmluaW5nIHVzZXIncyBvd24gaGFybmVzcy5cbiAqL1xuZXhwb3J0IGFic3RyYWN0IGNsYXNzIENvbXBvbmVudEhhcm5lc3Mge1xuICBjb25zdHJ1Y3Rvcihwcm90ZWN0ZWQgcmVhZG9ubHkgbG9jYXRvckZhY3Rvcnk6IExvY2F0b3JGYWN0b3J5KSB7fVxuXG4gIC8qKiBHZXRzIGEgYFByb21pc2VgIGZvciB0aGUgYFRlc3RFbGVtZW50YCByZXByZXNlbnRpbmcgdGhlIGhvc3QgZWxlbWVudCBvZiB0aGUgY29tcG9uZW50LiAqL1xuICBhc3luYyBob3N0KCk6IFByb21pc2U8VGVzdEVsZW1lbnQ+IHtcbiAgICByZXR1cm4gdGhpcy5sb2NhdG9yRmFjdG9yeS5yb290RWxlbWVudDtcbiAgfVxuXG4gIC8qKlxuICAgKiBHZXRzIGEgYExvY2F0b3JGYWN0b3J5YCBmb3IgdGhlIGRvY3VtZW50IHJvb3QgZWxlbWVudC4gVGhpcyBmYWN0b3J5IGNhbiBiZSB1c2VkIHRvIGNyZWF0ZVxuICAgKiBsb2NhdG9ycyBmb3IgZWxlbWVudHMgdGhhdCBhIGNvbXBvbmVudCBjcmVhdGVzIG91dHNpZGUgb2YgaXRzIG93biByb290IGVsZW1lbnQuIChlLmcuIGJ5XG4gICAqIGFwcGVuZGluZyB0byBkb2N1bWVudC5ib2R5KS5cbiAgICovXG4gIHByb3RlY3RlZCBkb2N1bWVudFJvb3RMb2NhdG9yRmFjdG9yeSgpOiBMb2NhdG9yRmFjdG9yeSB7XG4gICAgcmV0dXJuIHRoaXMubG9jYXRvckZhY3RvcnkuZG9jdW1lbnRSb290TG9jYXRvckZhY3RvcnkoKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBDcmVhdGVzIGFuIGFzeW5jaHJvbm91cyBsb2NhdG9yIGZ1bmN0aW9uIHRoYXQgY2FuIGJlIHVzZWQgdG8gZmluZCBhIGBDb21wb25lbnRIYXJuZXNzYCBpbnN0YW5jZVxuICAgKiBvciBlbGVtZW50IHVuZGVyIHRoZSBob3N0IGVsZW1lbnQgb2YgdGhpcyBgQ29tcG9uZW50SGFybmVzc2AuXG4gICAqIEBwYXJhbSBxdWVyaWVzIEEgbGlzdCBvZiBxdWVyaWVzIHNwZWNpZnlpbmcgd2hpY2ggaGFybmVzc2VzIGFuZCBlbGVtZW50cyB0byBzZWFyY2ggZm9yOlxuICAgKiAgIC0gQSBgc3RyaW5nYCBzZWFyY2hlcyBmb3IgZWxlbWVudHMgbWF0Y2hpbmcgdGhlIENTUyBzZWxlY3RvciBzcGVjaWZpZWQgYnkgdGhlIHN0cmluZy5cbiAgICogICAtIEEgYENvbXBvbmVudEhhcm5lc3NgIGNvbnN0cnVjdG9yIHNlYXJjaGVzIGZvciBgQ29tcG9uZW50SGFybmVzc2AgaW5zdGFuY2VzIG1hdGNoaW5nIHRoZVxuICAgKiAgICAgZ2l2ZW4gY2xhc3MuXG4gICAqICAgLSBBIGBIYXJuZXNzUHJlZGljYXRlYCBzZWFyY2hlcyBmb3IgYENvbXBvbmVudEhhcm5lc3NgIGluc3RhbmNlcyBtYXRjaGluZyB0aGUgZ2l2ZW5cbiAgICogICAgIHByZWRpY2F0ZS5cbiAgICogQHJldHVybiBBbiBhc3luY2hyb25vdXMgbG9jYXRvciBmdW5jdGlvbiB0aGF0IHNlYXJjaGVzIGZvciBhbmQgcmV0dXJucyBhIGBQcm9taXNlYCBmb3IgdGhlXG4gICAqICAgZmlyc3QgZWxlbWVudCBvciBoYXJuZXNzIG1hdGNoaW5nIHRoZSBnaXZlbiBzZWFyY2ggY3JpdGVyaWEuIE1hdGNoZXMgYXJlIG9yZGVyZWQgZmlyc3QgYnlcbiAgICogICBvcmRlciBpbiB0aGUgRE9NLCBhbmQgc2Vjb25kIGJ5IG9yZGVyIGluIHRoZSBxdWVyaWVzIGxpc3QuIElmIG5vIG1hdGNoZXMgYXJlIGZvdW5kLCB0aGVcbiAgICogICBgUHJvbWlzZWAgcmVqZWN0cy4gVGhlIHR5cGUgdGhhdCB0aGUgYFByb21pc2VgIHJlc29sdmVzIHRvIGlzIGEgdW5pb24gb2YgYWxsIHJlc3VsdCB0eXBlcyBmb3JcbiAgICogICBlYWNoIHF1ZXJ5LlxuICAgKlxuICAgKiBlLmcuIEdpdmVuIHRoZSBmb2xsb3dpbmcgRE9NOiBgPGRpdiBpZD1cImQxXCIgLz48ZGl2IGlkPVwiZDJcIiAvPmAsIGFuZCBhc3N1bWluZ1xuICAgKiBgRGl2SGFybmVzcy5ob3N0U2VsZWN0b3IgPT09ICdkaXYnYDpcbiAgICogLSBgYXdhaXQgY2gubG9jYXRvckZvcihEaXZIYXJuZXNzLCAnZGl2JykoKWAgZ2V0cyBhIGBEaXZIYXJuZXNzYCBpbnN0YW5jZSBmb3IgYCNkMWBcbiAgICogLSBgYXdhaXQgY2gubG9jYXRvckZvcignZGl2JywgRGl2SGFybmVzcykoKWAgZ2V0cyBhIGBUZXN0RWxlbWVudGAgaW5zdGFuY2UgZm9yIGAjZDFgXG4gICAqIC0gYGF3YWl0IGNoLmxvY2F0b3JGb3IoJ3NwYW4nKSgpYCB0aHJvd3MgYmVjYXVzZSB0aGUgYFByb21pc2VgIHJlamVjdHMuXG4gICAqL1xuICBwcm90ZWN0ZWQgbG9jYXRvckZvcjxUIGV4dGVuZHMgKEhhcm5lc3NRdWVyeTxhbnk+IHwgc3RyaW5nKVtdPiguLi5xdWVyaWVzOiBUKTpcbiAgICAgIEFzeW5jRmFjdG9yeUZuPExvY2F0b3JGblJlc3VsdDxUPj4ge1xuICAgIHJldHVybiB0aGlzLmxvY2F0b3JGYWN0b3J5LmxvY2F0b3JGb3IoLi4ucXVlcmllcyk7XG4gIH1cblxuICAvKipcbiAgICogQ3JlYXRlcyBhbiBhc3luY2hyb25vdXMgbG9jYXRvciBmdW5jdGlvbiB0aGF0IGNhbiBiZSB1c2VkIHRvIGZpbmQgYSBgQ29tcG9uZW50SGFybmVzc2AgaW5zdGFuY2VcbiAgICogb3IgZWxlbWVudCB1bmRlciB0aGUgaG9zdCBlbGVtZW50IG9mIHRoaXMgYENvbXBvbmVudEhhcm5lc3NgLlxuICAgKiBAcGFyYW0gcXVlcmllcyBBIGxpc3Qgb2YgcXVlcmllcyBzcGVjaWZ5aW5nIHdoaWNoIGhhcm5lc3NlcyBhbmQgZWxlbWVudHMgdG8gc2VhcmNoIGZvcjpcbiAgICogICAtIEEgYHN0cmluZ2Agc2VhcmNoZXMgZm9yIGVsZW1lbnRzIG1hdGNoaW5nIHRoZSBDU1Mgc2VsZWN0b3Igc3BlY2lmaWVkIGJ5IHRoZSBzdHJpbmcuXG4gICAqICAgLSBBIGBDb21wb25lbnRIYXJuZXNzYCBjb25zdHJ1Y3RvciBzZWFyY2hlcyBmb3IgYENvbXBvbmVudEhhcm5lc3NgIGluc3RhbmNlcyBtYXRjaGluZyB0aGVcbiAgICogICAgIGdpdmVuIGNsYXNzLlxuICAgKiAgIC0gQSBgSGFybmVzc1ByZWRpY2F0ZWAgc2VhcmNoZXMgZm9yIGBDb21wb25lbnRIYXJuZXNzYCBpbnN0YW5jZXMgbWF0Y2hpbmcgdGhlIGdpdmVuXG4gICAqICAgICBwcmVkaWNhdGUuXG4gICAqIEByZXR1cm4gQW4gYXN5bmNocm9ub3VzIGxvY2F0b3IgZnVuY3Rpb24gdGhhdCBzZWFyY2hlcyBmb3IgYW5kIHJldHVybnMgYSBgUHJvbWlzZWAgZm9yIHRoZVxuICAgKiAgIGZpcnN0IGVsZW1lbnQgb3IgaGFybmVzcyBtYXRjaGluZyB0aGUgZ2l2ZW4gc2VhcmNoIGNyaXRlcmlhLiBNYXRjaGVzIGFyZSBvcmRlcmVkIGZpcnN0IGJ5XG4gICAqICAgb3JkZXIgaW4gdGhlIERPTSwgYW5kIHNlY29uZCBieSBvcmRlciBpbiB0aGUgcXVlcmllcyBsaXN0LiBJZiBubyBtYXRjaGVzIGFyZSBmb3VuZCwgdGhlXG4gICAqICAgYFByb21pc2VgIGlzIHJlc29sdmVkIHdpdGggYG51bGxgLiBUaGUgdHlwZSB0aGF0IHRoZSBgUHJvbWlzZWAgcmVzb2x2ZXMgdG8gaXMgYSB1bmlvbiBvZiBhbGxcbiAgICogICByZXN1bHQgdHlwZXMgZm9yIGVhY2ggcXVlcnkgb3IgbnVsbC5cbiAgICpcbiAgICogZS5nLiBHaXZlbiB0aGUgZm9sbG93aW5nIERPTTogYDxkaXYgaWQ9XCJkMVwiIC8+PGRpdiBpZD1cImQyXCIgLz5gLCBhbmQgYXNzdW1pbmdcbiAgICogYERpdkhhcm5lc3MuaG9zdFNlbGVjdG9yID09PSAnZGl2J2A6XG4gICAqIC0gYGF3YWl0IGNoLmxvY2F0b3JGb3JPcHRpb25hbChEaXZIYXJuZXNzLCAnZGl2JykoKWAgZ2V0cyBhIGBEaXZIYXJuZXNzYCBpbnN0YW5jZSBmb3IgYCNkMWBcbiAgICogLSBgYXdhaXQgY2gubG9jYXRvckZvck9wdGlvbmFsKCdkaXYnLCBEaXZIYXJuZXNzKSgpYCBnZXRzIGEgYFRlc3RFbGVtZW50YCBpbnN0YW5jZSBmb3IgYCNkMWBcbiAgICogLSBgYXdhaXQgY2gubG9jYXRvckZvck9wdGlvbmFsKCdzcGFuJykoKWAgZ2V0cyBgbnVsbGAuXG4gICAqL1xuICBwcm90ZWN0ZWQgbG9jYXRvckZvck9wdGlvbmFsPFQgZXh0ZW5kcyAoSGFybmVzc1F1ZXJ5PGFueT4gfCBzdHJpbmcpW10+KC4uLnF1ZXJpZXM6IFQpOlxuICAgICAgQXN5bmNGYWN0b3J5Rm48TG9jYXRvckZuUmVzdWx0PFQ+IHwgbnVsbD4ge1xuICAgIHJldHVybiB0aGlzLmxvY2F0b3JGYWN0b3J5LmxvY2F0b3JGb3JPcHRpb25hbCguLi5xdWVyaWVzKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBDcmVhdGVzIGFuIGFzeW5jaHJvbm91cyBsb2NhdG9yIGZ1bmN0aW9uIHRoYXQgY2FuIGJlIHVzZWQgdG8gZmluZCBgQ29tcG9uZW50SGFybmVzc2AgaW5zdGFuY2VzXG4gICAqIG9yIGVsZW1lbnRzIHVuZGVyIHRoZSBob3N0IGVsZW1lbnQgb2YgdGhpcyBgQ29tcG9uZW50SGFybmVzc2AuXG4gICAqIEBwYXJhbSBxdWVyaWVzIEEgbGlzdCBvZiBxdWVyaWVzIHNwZWNpZnlpbmcgd2hpY2ggaGFybmVzc2VzIGFuZCBlbGVtZW50cyB0byBzZWFyY2ggZm9yOlxuICAgKiAgIC0gQSBgc3RyaW5nYCBzZWFyY2hlcyBmb3IgZWxlbWVudHMgbWF0Y2hpbmcgdGhlIENTUyBzZWxlY3RvciBzcGVjaWZpZWQgYnkgdGhlIHN0cmluZy5cbiAgICogICAtIEEgYENvbXBvbmVudEhhcm5lc3NgIGNvbnN0cnVjdG9yIHNlYXJjaGVzIGZvciBgQ29tcG9uZW50SGFybmVzc2AgaW5zdGFuY2VzIG1hdGNoaW5nIHRoZVxuICAgKiAgICAgZ2l2ZW4gY2xhc3MuXG4gICAqICAgLSBBIGBIYXJuZXNzUHJlZGljYXRlYCBzZWFyY2hlcyBmb3IgYENvbXBvbmVudEhhcm5lc3NgIGluc3RhbmNlcyBtYXRjaGluZyB0aGUgZ2l2ZW5cbiAgICogICAgIHByZWRpY2F0ZS5cbiAgICogQHJldHVybiBBbiBhc3luY2hyb25vdXMgbG9jYXRvciBmdW5jdGlvbiB0aGF0IHNlYXJjaGVzIGZvciBhbmQgcmV0dXJucyBhIGBQcm9taXNlYCBmb3IgYWxsXG4gICAqICAgZWxlbWVudHMgYW5kIGhhcm5lc3NlcyBtYXRjaGluZyB0aGUgZ2l2ZW4gc2VhcmNoIGNyaXRlcmlhLiBNYXRjaGVzIGFyZSBvcmRlcmVkIGZpcnN0IGJ5XG4gICAqICAgb3JkZXIgaW4gdGhlIERPTSwgYW5kIHNlY29uZCBieSBvcmRlciBpbiB0aGUgcXVlcmllcyBsaXN0LiBJZiBhbiBlbGVtZW50IG1hdGNoZXMgbW9yZSB0aGFuXG4gICAqICAgb25lIGBDb21wb25lbnRIYXJuZXNzYCBjbGFzcywgdGhlIGxvY2F0b3IgZ2V0cyBhbiBpbnN0YW5jZSBvZiBlYWNoIGZvciB0aGUgc2FtZSBlbGVtZW50LiBJZlxuICAgKiAgIGFuIGVsZW1lbnQgbWF0Y2hlcyBtdWx0aXBsZSBgc3RyaW5nYCBzZWxlY3RvcnMsIG9ubHkgb25lIGBUZXN0RWxlbWVudGAgaW5zdGFuY2UgaXMgcmV0dXJuZWRcbiAgICogICBmb3IgdGhhdCBlbGVtZW50LiBUaGUgdHlwZSB0aGF0IHRoZSBgUHJvbWlzZWAgcmVzb2x2ZXMgdG8gaXMgYW4gYXJyYXkgd2hlcmUgZWFjaCBlbGVtZW50IGlzXG4gICAqICAgdGhlIHVuaW9uIG9mIGFsbCByZXN1bHQgdHlwZXMgZm9yIGVhY2ggcXVlcnkuXG4gICAqXG4gICAqIGUuZy4gR2l2ZW4gdGhlIGZvbGxvd2luZyBET006IGA8ZGl2IGlkPVwiZDFcIiAvPjxkaXYgaWQ9XCJkMlwiIC8+YCwgYW5kIGFzc3VtaW5nXG4gICAqIGBEaXZIYXJuZXNzLmhvc3RTZWxlY3RvciA9PT0gJ2RpdidgIGFuZCBgSWRJc0QxSGFybmVzcy5ob3N0U2VsZWN0b3IgPT09ICcjZDEnYDpcbiAgICogLSBgYXdhaXQgY2gubG9jYXRvckZvckFsbChEaXZIYXJuZXNzLCAnZGl2JykoKWAgZ2V0cyBgW1xuICAgKiAgICAgRGl2SGFybmVzcywgLy8gZm9yICNkMVxuICAgKiAgICAgVGVzdEVsZW1lbnQsIC8vIGZvciAjZDFcbiAgICogICAgIERpdkhhcm5lc3MsIC8vIGZvciAjZDJcbiAgICogICAgIFRlc3RFbGVtZW50IC8vIGZvciAjZDJcbiAgICogICBdYFxuICAgKiAtIGBhd2FpdCBjaC5sb2NhdG9yRm9yQWxsKCdkaXYnLCAnI2QxJykoKWAgZ2V0cyBgW1xuICAgKiAgICAgVGVzdEVsZW1lbnQsIC8vIGZvciAjZDFcbiAgICogICAgIFRlc3RFbGVtZW50IC8vIGZvciAjZDJcbiAgICogICBdYFxuICAgKiAtIGBhd2FpdCBjaC5sb2NhdG9yRm9yQWxsKERpdkhhcm5lc3MsIElkSXNEMUhhcm5lc3MpKClgIGdldHMgYFtcbiAgICogICAgIERpdkhhcm5lc3MsIC8vIGZvciAjZDFcbiAgICogICAgIElkSXNEMUhhcm5lc3MsIC8vIGZvciAjZDFcbiAgICogICAgIERpdkhhcm5lc3MgLy8gZm9yICNkMlxuICAgKiAgIF1gXG4gICAqIC0gYGF3YWl0IGNoLmxvY2F0b3JGb3JBbGwoJ3NwYW4nKSgpYCBnZXRzIGBbXWAuXG4gICAqL1xuICBwcm90ZWN0ZWQgbG9jYXRvckZvckFsbDxUIGV4dGVuZHMgKEhhcm5lc3NRdWVyeTxhbnk+IHwgc3RyaW5nKVtdPiguLi5xdWVyaWVzOiBUKTpcbiAgICAgIEFzeW5jRmFjdG9yeUZuPExvY2F0b3JGblJlc3VsdDxUPltdPiB7XG4gICAgcmV0dXJuIHRoaXMubG9jYXRvckZhY3RvcnkubG9jYXRvckZvckFsbCguLi5xdWVyaWVzKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBGbHVzaGVzIGNoYW5nZSBkZXRlY3Rpb24gYW5kIGFzeW5jIHRhc2tzIGluIHRoZSBBbmd1bGFyIHpvbmUuXG4gICAqIEluIG1vc3QgY2FzZXMgaXQgc2hvdWxkIG5vdCBiZSBuZWNlc3NhcnkgdG8gY2FsbCB0aGlzIG1hbnVhbGx5LiBIb3dldmVyLCB0aGVyZSBtYXkgYmUgc29tZSBlZGdlXG4gICAqIGNhc2VzIHdoZXJlIGl0IGlzIG5lZWRlZCB0byBmdWxseSBmbHVzaCBhbmltYXRpb24gZXZlbnRzLlxuICAgKi9cbiAgcHJvdGVjdGVkIGFzeW5jIGZvcmNlU3RhYmlsaXplKCkge1xuICAgIHJldHVybiB0aGlzLmxvY2F0b3JGYWN0b3J5LmZvcmNlU3RhYmlsaXplKCk7XG4gIH1cblxuICAvKipcbiAgICogV2FpdHMgZm9yIGFsbCBzY2hlZHVsZWQgb3IgcnVubmluZyBhc3luYyB0YXNrcyB0byBjb21wbGV0ZS4gVGhpcyBhbGxvd3MgaGFybmVzc1xuICAgKiBhdXRob3JzIHRvIHdhaXQgZm9yIGFzeW5jIHRhc2tzIG91dHNpZGUgb2YgdGhlIEFuZ3VsYXIgem9uZS5cbiAgICovXG4gIHByb3RlY3RlZCBhc3luYyB3YWl0Rm9yVGFza3NPdXRzaWRlQW5ndWxhcigpIHtcbiAgICByZXR1cm4gdGhpcy5sb2NhdG9yRmFjdG9yeS53YWl0Rm9yVGFza3NPdXRzaWRlQW5ndWxhcigpO1xuICB9XG59XG5cblxuLyoqXG4gKiBCYXNlIGNsYXNzIGZvciBjb21wb25lbnQgaGFybmVzc2VzIHRoYXQgYXV0aG9ycyBzaG91bGQgZXh0ZW5kIGlmIHRoZXkgYW50aWNpcGF0ZSB0aGF0IGNvbnN1bWVyc1xuICogb2YgdGhlIGhhcm5lc3MgbWF5IHdhbnQgdG8gYWNjZXNzIG90aGVyIGhhcm5lc3NlcyB3aXRoaW4gdGhlIGA8bmctY29udGVudD5gIG9mIHRoZSBjb21wb25lbnQuXG4gKi9cbmV4cG9ydCBhYnN0cmFjdCBjbGFzcyBDb250ZW50Q29udGFpbmVyQ29tcG9uZW50SGFybmVzczxTIGV4dGVuZHMgc3RyaW5nID0gc3RyaW5nPlxuICBleHRlbmRzIENvbXBvbmVudEhhcm5lc3MgaW1wbGVtZW50cyBIYXJuZXNzTG9hZGVyIHtcblxuICBnZXRDaGlsZExvYWRlcihzZWxlY3RvcjogUyk6IFByb21pc2U8SGFybmVzc0xvYWRlcj4ge1xuICAgIHJldHVybiB0aGlzLmxvY2F0b3JGYWN0b3J5Lmhhcm5lc3NMb2FkZXJGb3Ioc2VsZWN0b3IpO1xuICB9XG5cbiAgZ2V0QWxsQ2hpbGRMb2FkZXJzKHNlbGVjdG9yOiBTKTogUHJvbWlzZTxIYXJuZXNzTG9hZGVyW10+IHtcbiAgICByZXR1cm4gdGhpcy5sb2NhdG9yRmFjdG9yeS5oYXJuZXNzTG9hZGVyRm9yQWxsKHNlbGVjdG9yKTtcbiAgfVxuXG4gIGdldEhhcm5lc3M8VCBleHRlbmRzIENvbXBvbmVudEhhcm5lc3M+KHF1ZXJ5OiBIYXJuZXNzUXVlcnk8VD4pOiBQcm9taXNlPFQ+IHtcbiAgICByZXR1cm4gdGhpcy5sb2NhdG9yRm9yKHF1ZXJ5KSgpO1xuICB9XG5cbiAgZ2V0QWxsSGFybmVzc2VzPFQgZXh0ZW5kcyBDb21wb25lbnRIYXJuZXNzPihxdWVyeTogSGFybmVzc1F1ZXJ5PFQ+KTogUHJvbWlzZTxUW10+IHtcbiAgICByZXR1cm4gdGhpcy5sb2NhdG9yRm9yQWxsKHF1ZXJ5KSgpO1xuICB9XG59XG5cbi8qKiBDb25zdHJ1Y3RvciBmb3IgYSBDb21wb25lbnRIYXJuZXNzIHN1YmNsYXNzLiAqL1xuZXhwb3J0IGludGVyZmFjZSBDb21wb25lbnRIYXJuZXNzQ29uc3RydWN0b3I8VCBleHRlbmRzIENvbXBvbmVudEhhcm5lc3M+IHtcbiAgbmV3KGxvY2F0b3JGYWN0b3J5OiBMb2NhdG9yRmFjdG9yeSk6IFQ7XG5cbiAgLyoqXG4gICAqIGBDb21wb25lbnRIYXJuZXNzYCBzdWJjbGFzc2VzIG11c3Qgc3BlY2lmeSBhIHN0YXRpYyBgaG9zdFNlbGVjdG9yYCBwcm9wZXJ0eSB0aGF0IGlzIHVzZWQgdG9cbiAgICogZmluZCB0aGUgaG9zdCBlbGVtZW50IGZvciB0aGUgY29ycmVzcG9uZGluZyBjb21wb25lbnQuIFRoaXMgcHJvcGVydHkgc2hvdWxkIG1hdGNoIHRoZSBzZWxlY3RvclxuICAgKiBmb3IgdGhlIEFuZ3VsYXIgY29tcG9uZW50LlxuICAgKi9cbiAgaG9zdFNlbGVjdG9yOiBzdHJpbmc7XG59XG5cbi8qKiBBIHNldCBvZiBjcml0ZXJpYSB0aGF0IGNhbiBiZSB1c2VkIHRvIGZpbHRlciBhIGxpc3Qgb2YgYENvbXBvbmVudEhhcm5lc3NgIGluc3RhbmNlcy4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgQmFzZUhhcm5lc3NGaWx0ZXJzIHtcbiAgLyoqIE9ubHkgZmluZCBpbnN0YW5jZXMgd2hvc2UgaG9zdCBlbGVtZW50IG1hdGNoZXMgdGhlIGdpdmVuIHNlbGVjdG9yLiAqL1xuICBzZWxlY3Rvcj86IHN0cmluZztcbiAgLyoqIE9ubHkgZmluZCBpbnN0YW5jZXMgdGhhdCBhcmUgbmVzdGVkIHVuZGVyIGFuIGVsZW1lbnQgd2l0aCB0aGUgZ2l2ZW4gc2VsZWN0b3IuICovXG4gIGFuY2VzdG9yPzogc3RyaW5nO1xufVxuXG4vKipcbiAqIEEgY2xhc3MgdXNlZCB0byBhc3NvY2lhdGUgYSBDb21wb25lbnRIYXJuZXNzIGNsYXNzIHdpdGggcHJlZGljYXRlcyBmdW5jdGlvbnMgdGhhdCBjYW4gYmUgdXNlZCB0b1xuICogZmlsdGVyIGluc3RhbmNlcyBvZiB0aGUgY2xhc3MuXG4gKi9cbmV4cG9ydCBjbGFzcyBIYXJuZXNzUHJlZGljYXRlPFQgZXh0ZW5kcyBDb21wb25lbnRIYXJuZXNzPiB7XG4gIHByaXZhdGUgX3ByZWRpY2F0ZXM6IEFzeW5jUHJlZGljYXRlPFQ+W10gPSBbXTtcbiAgcHJpdmF0ZSBfZGVzY3JpcHRpb25zOiBzdHJpbmdbXSA9IFtdO1xuICBwcml2YXRlIF9hbmNlc3Rvcjogc3RyaW5nO1xuXG4gIGNvbnN0cnVjdG9yKHB1YmxpYyBoYXJuZXNzVHlwZTogQ29tcG9uZW50SGFybmVzc0NvbnN0cnVjdG9yPFQ+LCBvcHRpb25zOiBCYXNlSGFybmVzc0ZpbHRlcnMpIHtcbiAgICB0aGlzLl9hZGRCYXNlT3B0aW9ucyhvcHRpb25zKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBDaGVja3MgaWYgdGhlIHNwZWNpZmllZCBudWxsYWJsZSBzdHJpbmcgdmFsdWUgbWF0Y2hlcyB0aGUgZ2l2ZW4gcGF0dGVybi5cbiAgICogQHBhcmFtIHZhbHVlIFRoZSBudWxsYWJsZSBzdHJpbmcgdmFsdWUgdG8gY2hlY2ssIG9yIGEgUHJvbWlzZSByZXNvbHZpbmcgdG8gdGhlXG4gICAqICAgbnVsbGFibGUgc3RyaW5nIHZhbHVlLlxuICAgKiBAcGFyYW0gcGF0dGVybiBUaGUgcGF0dGVybiB0aGUgdmFsdWUgaXMgZXhwZWN0ZWQgdG8gbWF0Y2guIElmIGBwYXR0ZXJuYCBpcyBhIHN0cmluZyxcbiAgICogICBgdmFsdWVgIGlzIGV4cGVjdGVkIHRvIG1hdGNoIGV4YWN0bHkuIElmIGBwYXR0ZXJuYCBpcyBhIHJlZ2V4LCBhIHBhcnRpYWwgbWF0Y2ggaXNcbiAgICogICBhbGxvd2VkLiBJZiBgcGF0dGVybmAgaXMgYG51bGxgLCB0aGUgdmFsdWUgaXMgZXhwZWN0ZWQgdG8gYmUgYG51bGxgLlxuICAgKiBAcmV0dXJuIFdoZXRoZXIgdGhlIHZhbHVlIG1hdGNoZXMgdGhlIHBhdHRlcm4uXG4gICAqL1xuICBzdGF0aWMgYXN5bmMgc3RyaW5nTWF0Y2hlcyh2YWx1ZTogc3RyaW5nIHwgbnVsbCB8IFByb21pc2U8c3RyaW5nIHwgbnVsbD4sXG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBhdHRlcm46IHN0cmluZyB8IFJlZ0V4cCB8IG51bGwpOiBQcm9taXNlPGJvb2xlYW4+IHtcbiAgICB2YWx1ZSA9IGF3YWl0IHZhbHVlO1xuICAgIGlmIChwYXR0ZXJuID09PSBudWxsKSB7XG4gICAgICByZXR1cm4gdmFsdWUgPT09IG51bGw7XG4gICAgfSBlbHNlIGlmICh2YWx1ZSA9PT0gbnVsbCkge1xuICAgICAgcmV0dXJuIGZhbHNlO1xuICAgIH1cbiAgICByZXR1cm4gdHlwZW9mIHBhdHRlcm4gPT09ICdzdHJpbmcnID8gdmFsdWUgPT09IHBhdHRlcm4gOiBwYXR0ZXJuLnRlc3QodmFsdWUpO1xuICB9XG5cbiAgLyoqXG4gICAqIEFkZHMgYSBwcmVkaWNhdGUgZnVuY3Rpb24gdG8gYmUgcnVuIGFnYWluc3QgY2FuZGlkYXRlIGhhcm5lc3Nlcy5cbiAgICogQHBhcmFtIGRlc2NyaXB0aW9uIEEgZGVzY3JpcHRpb24gb2YgdGhpcyBwcmVkaWNhdGUgdGhhdCBtYXkgYmUgdXNlZCBpbiBlcnJvciBtZXNzYWdlcy5cbiAgICogQHBhcmFtIHByZWRpY2F0ZSBBbiBhc3luYyBwcmVkaWNhdGUgZnVuY3Rpb24uXG4gICAqIEByZXR1cm4gdGhpcyAoZm9yIG1ldGhvZCBjaGFpbmluZykuXG4gICAqL1xuICBhZGQoZGVzY3JpcHRpb246IHN0cmluZywgcHJlZGljYXRlOiBBc3luY1ByZWRpY2F0ZTxUPikge1xuICAgIHRoaXMuX2Rlc2NyaXB0aW9ucy5wdXNoKGRlc2NyaXB0aW9uKTtcbiAgICB0aGlzLl9wcmVkaWNhdGVzLnB1c2gocHJlZGljYXRlKTtcbiAgICByZXR1cm4gdGhpcztcbiAgfVxuXG4gIC8qKlxuICAgKiBBZGRzIGEgcHJlZGljYXRlIGZ1bmN0aW9uIHRoYXQgZGVwZW5kcyBvbiBhbiBvcHRpb24gdmFsdWUgdG8gYmUgcnVuIGFnYWluc3QgY2FuZGlkYXRlXG4gICAqIGhhcm5lc3Nlcy4gSWYgdGhlIG9wdGlvbiB2YWx1ZSBpcyB1bmRlZmluZWQsIHRoZSBwcmVkaWNhdGUgd2lsbCBiZSBpZ25vcmVkLlxuICAgKiBAcGFyYW0gbmFtZSBUaGUgbmFtZSBvZiB0aGUgb3B0aW9uIChtYXkgYmUgdXNlZCBpbiBlcnJvciBtZXNzYWdlcykuXG4gICAqIEBwYXJhbSBvcHRpb24gVGhlIG9wdGlvbiB2YWx1ZS5cbiAgICogQHBhcmFtIHByZWRpY2F0ZSBUaGUgcHJlZGljYXRlIGZ1bmN0aW9uIHRvIHJ1biBpZiB0aGUgb3B0aW9uIHZhbHVlIGlzIG5vdCB1bmRlZmluZWQuXG4gICAqIEByZXR1cm4gdGhpcyAoZm9yIG1ldGhvZCBjaGFpbmluZykuXG4gICAqL1xuICBhZGRPcHRpb248Tz4obmFtZTogc3RyaW5nLCBvcHRpb246IE8gfCB1bmRlZmluZWQsIHByZWRpY2F0ZTogQXN5bmNPcHRpb25QcmVkaWNhdGU8VCwgTz4pIHtcbiAgICBpZiAob3B0aW9uICE9PSB1bmRlZmluZWQpIHtcbiAgICAgIHRoaXMuYWRkKGAke25hbWV9ID0gJHtfdmFsdWVBc1N0cmluZyhvcHRpb24pfWAsIGl0ZW0gPT4gcHJlZGljYXRlKGl0ZW0sIG9wdGlvbikpO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcztcbiAgfVxuXG4gIC8qKlxuICAgKiBGaWx0ZXJzIGEgbGlzdCBvZiBoYXJuZXNzZXMgb24gdGhpcyBwcmVkaWNhdGUuXG4gICAqIEBwYXJhbSBoYXJuZXNzZXMgVGhlIGxpc3Qgb2YgaGFybmVzc2VzIHRvIGZpbHRlci5cbiAgICogQHJldHVybiBBIGxpc3Qgb2YgaGFybmVzc2VzIHRoYXQgc2F0aXNmeSB0aGlzIHByZWRpY2F0ZS5cbiAgICovXG4gIGFzeW5jIGZpbHRlcihoYXJuZXNzZXM6IFRbXSk6IFByb21pc2U8VFtdPiB7XG4gICAgY29uc3QgcmVzdWx0cyA9IGF3YWl0IFByb21pc2UuYWxsKGhhcm5lc3Nlcy5tYXAoaCA9PiB0aGlzLmV2YWx1YXRlKGgpKSk7XG4gICAgcmV0dXJuIGhhcm5lc3Nlcy5maWx0ZXIoKF8sIGkpID0+IHJlc3VsdHNbaV0pO1xuICB9XG5cbiAgLyoqXG4gICAqIEV2YWx1YXRlcyB3aGV0aGVyIHRoZSBnaXZlbiBoYXJuZXNzIHNhdGlzZmllcyB0aGlzIHByZWRpY2F0ZS5cbiAgICogQHBhcmFtIGhhcm5lc3MgVGhlIGhhcm5lc3MgdG8gY2hlY2tcbiAgICogQHJldHVybiBBIHByb21pc2UgdGhhdCByZXNvbHZlcyB0byB0cnVlIGlmIHRoZSBoYXJuZXNzIHNhdGlzZmllcyB0aGlzIHByZWRpY2F0ZSxcbiAgICogICBhbmQgcmVzb2x2ZXMgdG8gZmFsc2Ugb3RoZXJ3aXNlLlxuICAgKi9cbiAgYXN5bmMgZXZhbHVhdGUoaGFybmVzczogVCk6IFByb21pc2U8Ym9vbGVhbj4ge1xuICAgIGNvbnN0IHJlc3VsdHMgPSBhd2FpdCBQcm9taXNlLmFsbCh0aGlzLl9wcmVkaWNhdGVzLm1hcChwID0+IHAoaGFybmVzcykpKTtcbiAgICByZXR1cm4gcmVzdWx0cy5yZWR1Y2UoKGNvbWJpbmVkLCBjdXJyZW50KSA9PiBjb21iaW5lZCAmJiBjdXJyZW50LCB0cnVlKTtcbiAgfVxuXG4gIC8qKiBHZXRzIGEgZGVzY3JpcHRpb24gb2YgdGhpcyBwcmVkaWNhdGUgZm9yIHVzZSBpbiBlcnJvciBtZXNzYWdlcy4gKi9cbiAgZ2V0RGVzY3JpcHRpb24oKSB7XG4gICAgcmV0dXJuIHRoaXMuX2Rlc2NyaXB0aW9ucy5qb2luKCcsICcpO1xuICB9XG5cbiAgLyoqIEdldHMgdGhlIHNlbGVjdG9yIHVzZWQgdG8gZmluZCBjYW5kaWRhdGUgZWxlbWVudHMuICovXG4gIGdldFNlbGVjdG9yKCkge1xuICAgIHJldHVybiB0aGlzLl9hbmNlc3Rvci5zcGxpdCgnLCcpXG4gICAgICAgIC5tYXAocGFydCA9PiBgJHtwYXJ0LnRyaW0oKX0gJHt0aGlzLmhhcm5lc3NUeXBlLmhvc3RTZWxlY3Rvcn1gLnRyaW0oKSlcbiAgICAgICAgLmpvaW4oJywnKTtcbiAgfVxuXG4gIC8qKiBBZGRzIGJhc2Ugb3B0aW9ucyBjb21tb24gdG8gYWxsIGhhcm5lc3MgdHlwZXMuICovXG4gIHByaXZhdGUgX2FkZEJhc2VPcHRpb25zKG9wdGlvbnM6IEJhc2VIYXJuZXNzRmlsdGVycykge1xuICAgIHRoaXMuX2FuY2VzdG9yID0gb3B0aW9ucy5hbmNlc3RvciB8fCAnJztcbiAgICBpZiAodGhpcy5fYW5jZXN0b3IpIHtcbiAgICAgIHRoaXMuX2Rlc2NyaXB0aW9ucy5wdXNoKGBoYXMgYW5jZXN0b3IgbWF0Y2hpbmcgc2VsZWN0b3IgXCIke3RoaXMuX2FuY2VzdG9yfVwiYCk7XG4gICAgfVxuICAgIGNvbnN0IHNlbGVjdG9yID0gb3B0aW9ucy5zZWxlY3RvcjtcbiAgICBpZiAoc2VsZWN0b3IgIT09IHVuZGVmaW5lZCkge1xuICAgICAgdGhpcy5hZGQoYGhvc3QgbWF0Y2hlcyBzZWxlY3RvciBcIiR7c2VsZWN0b3J9XCJgLCBhc3luYyBpdGVtID0+IHtcbiAgICAgICAgcmV0dXJuIChhd2FpdCBpdGVtLmhvc3QoKSkubWF0Y2hlc1NlbGVjdG9yKHNlbGVjdG9yKTtcbiAgICAgIH0pO1xuICAgIH1cbiAgfVxufVxuXG4vKiogUmVwcmVzZW50IGEgdmFsdWUgYXMgYSBzdHJpbmcgZm9yIHRoZSBwdXJwb3NlIG9mIGxvZ2dpbmcuICovXG5mdW5jdGlvbiBfdmFsdWVBc1N0cmluZyh2YWx1ZTogdW5rbm93bikge1xuICBpZiAodmFsdWUgPT09IHVuZGVmaW5lZCkge1xuICAgIHJldHVybiAndW5kZWZpbmVkJztcbiAgfVxuICAvLyBgSlNPTi5zdHJpbmdpZnlgIGRvZXNuJ3QgaGFuZGxlIFJlZ0V4cCBwcm9wZXJseSwgc28gd2UgbmVlZCBhIGN1c3RvbSByZXBsYWNlci5cbiAgdHJ5IHtcbiAgICByZXR1cm4gSlNPTi5zdHJpbmdpZnkodmFsdWUsIChfLCB2KSA9PiB7XG4gICAgICBpZiAodiBpbnN0YW5jZW9mIFJlZ0V4cCkge1xuICAgICAgICByZXR1cm4gYC8ke3YudG9TdHJpbmcoKX0vYDtcbiAgICAgIH1cblxuICAgICAgcmV0dXJuIHR5cGVvZiB2ID09PSAnc3RyaW5nJyA/IHYucmVwbGFjZSgnL1xcLy9nJywgJ1xcXFwvJykgOiB2O1xuICAgIH0pLnJlcGxhY2UoL1wiXFwvXFwvL2csICdcXFxcLycpLnJlcGxhY2UoL1xcL1xcL1wiL2csICdcXFxcLycpLnJlcGxhY2UoL1xcXFxcXC8vZywgJy8nKTtcbiAgfSBjYXRjaCB7XG4gICAgLy8gYEpTT04uc3RyaW5naWZ5YCB3aWxsIHRocm93IGlmIHRoZSBvYmplY3QgaXMgY3ljbGljYWwsXG4gICAgLy8gaW4gdGhpcyBjYXNlIHRoZSBiZXN0IHdlIGNhbiBkbyBpcyByZXBvcnQgdGhlIHZhbHVlIGFzIGB7Li4ufWAuXG4gICAgcmV0dXJuICd7Li4ufSc7XG4gIH1cbn1cbiJdfQ==