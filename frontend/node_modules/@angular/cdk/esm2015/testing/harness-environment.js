/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __awaiter } from "tslib";
import { ComponentHarness, HarnessPredicate, } from './component-harness';
/**
 * Base harness environment class that can be extended to allow `ComponentHarness`es to be used in
 * different test environments (e.g. testbed, protractor, etc.). This class implements the
 * functionality of both a `HarnessLoader` and `LocatorFactory`. This class is generic on the raw
 * element type, `E`, used by the particular test environment.
 */
export class HarnessEnvironment {
    constructor(rawRootElement) {
        this.rawRootElement = rawRootElement;
        this.rootElement = this.createTestElement(rawRootElement);
    }
    // Implemented as part of the `LocatorFactory` interface.
    documentRootLocatorFactory() {
        return this.createEnvironment(this.getDocumentRoot());
    }
    // Implemented as part of the `LocatorFactory` interface.
    locatorFor(...queries) {
        return () => _assertResultFound(this._getAllHarnessesAndTestElements(queries), _getDescriptionForLocatorForQueries(queries));
    }
    // Implemented as part of the `LocatorFactory` interface.
    locatorForOptional(...queries) {
        return () => __awaiter(this, void 0, void 0, function* () { return (yield this._getAllHarnessesAndTestElements(queries))[0] || null; });
    }
    // Implemented as part of the `LocatorFactory` interface.
    locatorForAll(...queries) {
        return () => this._getAllHarnessesAndTestElements(queries);
    }
    // Implemented as part of the `LocatorFactory` interface.
    rootHarnessLoader() {
        return __awaiter(this, void 0, void 0, function* () {
            return this;
        });
    }
    // Implemented as part of the `LocatorFactory` interface.
    harnessLoaderFor(selector) {
        return __awaiter(this, void 0, void 0, function* () {
            return this.createEnvironment(yield _assertResultFound(this.getAllRawElements(selector), [_getDescriptionForHarnessLoaderQuery(selector)]));
        });
    }
    // Implemented as part of the `LocatorFactory` interface.
    harnessLoaderForOptional(selector) {
        return __awaiter(this, void 0, void 0, function* () {
            const elements = yield this.getAllRawElements(selector);
            return elements[0] ? this.createEnvironment(elements[0]) : null;
        });
    }
    // Implemented as part of the `LocatorFactory` interface.
    harnessLoaderForAll(selector) {
        return __awaiter(this, void 0, void 0, function* () {
            const elements = yield this.getAllRawElements(selector);
            return elements.map(element => this.createEnvironment(element));
        });
    }
    // Implemented as part of the `HarnessLoader` interface.
    getHarness(query) {
        return this.locatorFor(query)();
    }
    // Implemented as part of the `HarnessLoader` interface.
    getAllHarnesses(query) {
        return this.locatorForAll(query)();
    }
    // Implemented as part of the `HarnessLoader` interface.
    getChildLoader(selector) {
        return __awaiter(this, void 0, void 0, function* () {
            return this.createEnvironment(yield _assertResultFound(this.getAllRawElements(selector), [_getDescriptionForHarnessLoaderQuery(selector)]));
        });
    }
    // Implemented as part of the `HarnessLoader` interface.
    getAllChildLoaders(selector) {
        return __awaiter(this, void 0, void 0, function* () {
            return (yield this.getAllRawElements(selector)).map(e => this.createEnvironment(e));
        });
    }
    /** Creates a `ComponentHarness` for the given harness type with the given raw host element. */
    createComponentHarness(harnessType, element) {
        return new harnessType(this.createEnvironment(element));
    }
    /**
     * Matches the given raw elements with the given list of element and harness queries to produce a
     * list of matched harnesses and test elements.
     */
    _getAllHarnessesAndTestElements(queries) {
        return __awaiter(this, void 0, void 0, function* () {
            const { allQueries, harnessQueries, elementQueries, harnessTypes } = _parseQueries(queries);
            // Combine all of the queries into one large comma-delimited selector and use it to get all raw
            // elements matching any of the individual queries.
            const rawElements = yield this.getAllRawElements([...elementQueries, ...harnessQueries.map(predicate => predicate.getSelector())].join(','));
            // If every query is searching for the same harness subclass, we know every result corresponds
            // to an instance of that subclass. Likewise, if every query is for a `TestElement`, we know
            // every result corresponds to a `TestElement`. Otherwise we need to verify which result was
            // found by which selector so it can be matched to the appropriate instance.
            const skipSelectorCheck = (elementQueries.length === 0 && harnessTypes.size === 1) ||
                harnessQueries.length === 0;
            const perElementMatches = yield Promise.all(rawElements.map((rawElement) => __awaiter(this, void 0, void 0, function* () {
                const testElement = this.createTestElement(rawElement);
                const allResultsForElement = yield Promise.all(
                // For each query, get `null` if it doesn't match, or a `TestElement` or
                // `ComponentHarness` as appropriate if it does match. This gives us everything that
                // matches the current raw element, but it may contain duplicate entries (e.g. multiple
                // `TestElement` or multiple `ComponentHarness` of the same type.
                allQueries.map(query => this._getQueryResultForElement(query, rawElement, testElement, skipSelectorCheck)));
                return _removeDuplicateQueryResults(allResultsForElement);
            })));
            return [].concat(...perElementMatches);
        });
    }
    /**
     * Check whether the given query matches the given element, if it does return the matched
     * `TestElement` or `ComponentHarness`, if it does not, return null. In cases where the caller
     * knows for sure that the query matches the element's selector, `skipSelectorCheck` can be used
     * to skip verification and optimize performance.
     */
    _getQueryResultForElement(query, rawElement, testElement, skipSelectorCheck = false) {
        return __awaiter(this, void 0, void 0, function* () {
            if (typeof query === 'string') {
                return ((skipSelectorCheck || (yield testElement.matchesSelector(query))) ? testElement : null);
            }
            if (skipSelectorCheck || (yield testElement.matchesSelector(query.getSelector()))) {
                const harness = this.createComponentHarness(query.harnessType, rawElement);
                return (yield query.evaluate(harness)) ? harness : null;
            }
            return null;
        });
    }
}
/**
 * Parses a list of queries in the format accepted by the `locatorFor*` methods into an easier to
 * work with format.
 */
function _parseQueries(queries) {
    const allQueries = [];
    const harnessQueries = [];
    const elementQueries = [];
    const harnessTypes = new Set();
    for (const query of queries) {
        if (typeof query === 'string') {
            allQueries.push(query);
            elementQueries.push(query);
        }
        else {
            const predicate = query instanceof HarnessPredicate ? query : new HarnessPredicate(query, {});
            allQueries.push(predicate);
            harnessQueries.push(predicate);
            harnessTypes.add(predicate.harnessType);
        }
    }
    return { allQueries, harnessQueries, elementQueries, harnessTypes };
}
/**
 * Removes duplicate query results for a particular element. (e.g. multiple `TestElement`
 * instances or multiple instances of the same `ComponentHarness` class.
 */
function _removeDuplicateQueryResults(results) {
    return __awaiter(this, void 0, void 0, function* () {
        let testElementMatched = false;
        let matchedHarnessTypes = new Set();
        const dedupedMatches = [];
        for (const result of results) {
            if (!result) {
                continue;
            }
            if (result instanceof ComponentHarness) {
                if (!matchedHarnessTypes.has(result.constructor)) {
                    matchedHarnessTypes.add(result.constructor);
                    dedupedMatches.push(result);
                }
            }
            else if (!testElementMatched) {
                testElementMatched = true;
                dedupedMatches.push(result);
            }
        }
        return dedupedMatches;
    });
}
/** Verifies that there is at least one result in an array. */
function _assertResultFound(results, queryDescriptions) {
    return __awaiter(this, void 0, void 0, function* () {
        const result = (yield results)[0];
        if (result == undefined) {
            throw Error(`Failed to find element matching one of the following queries:\n` +
                queryDescriptions.map(desc => `(${desc})`).join(',\n'));
        }
        return result;
    });
}
/** Gets a list of description strings from a list of queries. */
function _getDescriptionForLocatorForQueries(queries) {
    return queries.map(query => typeof query === 'string' ?
        _getDescriptionForTestElementQuery(query) : _getDescriptionForComponentHarnessQuery(query));
}
/** Gets a description string for a `ComponentHarness` query. */
function _getDescriptionForComponentHarnessQuery(query) {
    const harnessPredicate = query instanceof HarnessPredicate ? query : new HarnessPredicate(query, {});
    const { name, hostSelector } = harnessPredicate.harnessType;
    const description = `${name} with host element matching selector: "${hostSelector}"`;
    const constraints = harnessPredicate.getDescription();
    return description + (constraints ?
        ` satisfying the constraints: ${harnessPredicate.getDescription()}` : '');
}
/** Gets a description string for a `TestElement` query. */
function _getDescriptionForTestElementQuery(selector) {
    return `TestElement for element matching selector: "${selector}"`;
}
/** Gets a description string for a `HarnessLoader` query. */
function _getDescriptionForHarnessLoaderQuery(selector) {
    return `HarnessLoader for element matching selector: "${selector}"`;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaGFybmVzcy1lbnZpcm9ubWVudC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvdGVzdGluZy9oYXJuZXNzLWVudmlyb25tZW50LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7QUFFSCxPQUFPLEVBRUwsZ0JBQWdCLEVBR2hCLGdCQUFnQixHQUlqQixNQUFNLHFCQUFxQixDQUFDO0FBcUI3Qjs7Ozs7R0FLRztBQUNILE1BQU0sT0FBZ0Isa0JBQWtCO0lBSXRDLFlBQWdDLGNBQWlCO1FBQWpCLG1CQUFjLEdBQWQsY0FBYyxDQUFHO1FBQy9DLElBQUksQ0FBQyxXQUFXLEdBQUcsSUFBSSxDQUFDLGlCQUFpQixDQUFDLGNBQWMsQ0FBQyxDQUFDO0lBQzVELENBQUM7SUFFRCx5REFBeUQ7SUFDekQsMEJBQTBCO1FBQ3hCLE9BQU8sSUFBSSxDQUFDLGlCQUFpQixDQUFDLElBQUksQ0FBQyxlQUFlLEVBQUUsQ0FBQyxDQUFDO0lBQ3hELENBQUM7SUFFRCx5REFBeUQ7SUFDekQsVUFBVSxDQUEyQyxHQUFHLE9BQVU7UUFFaEUsT0FBTyxHQUFHLEVBQUUsQ0FBQyxrQkFBa0IsQ0FDM0IsSUFBSSxDQUFDLCtCQUErQixDQUFDLE9BQU8sQ0FBQyxFQUM3QyxtQ0FBbUMsQ0FBQyxPQUFPLENBQUMsQ0FBQyxDQUFDO0lBQ3BELENBQUM7SUFFRCx5REFBeUQ7SUFDekQsa0JBQWtCLENBQTJDLEdBQUcsT0FBVTtRQUV4RSxPQUFPLEdBQVMsRUFBRSxnREFBQyxPQUFBLENBQUMsTUFBTSxJQUFJLENBQUMsK0JBQStCLENBQUMsT0FBTyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsSUFBSSxJQUFJLENBQUEsR0FBQSxDQUFDO0lBQ3RGLENBQUM7SUFFRCx5REFBeUQ7SUFDekQsYUFBYSxDQUEyQyxHQUFHLE9BQVU7UUFFbkUsT0FBTyxHQUFHLEVBQUUsQ0FBQyxJQUFJLENBQUMsK0JBQStCLENB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KlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1xuICBBc3luY0ZhY3RvcnlGbixcbiAgQ29tcG9uZW50SGFybmVzcyxcbiAgQ29tcG9uZW50SGFybmVzc0NvbnN0cnVjdG9yLFxuICBIYXJuZXNzTG9hZGVyLFxuICBIYXJuZXNzUHJlZGljYXRlLFxuICBIYXJuZXNzUXVlcnksXG4gIExvY2F0b3JGYWN0b3J5LFxuICBMb2NhdG9yRm5SZXN1bHQsXG59IGZyb20gJy4vY29tcG9uZW50LWhhcm5lc3MnO1xuaW1wb3J0IHtUZXN0RWxlbWVudH0gZnJvbSAnLi90ZXN0LWVsZW1lbnQnO1xuXG4vKiogUGFyc2VkIGZvcm0gb2YgdGhlIHF1ZXJpZXMgcGFzc2VkIHRvIHRoZSBgbG9jYXRvckZvcipgIG1ldGhvZHMuICovXG50eXBlIFBhcnNlZFF1ZXJpZXM8VCBleHRlbmRzIENvbXBvbmVudEhhcm5lc3M+ID0ge1xuICAvKiogVGhlIGZ1bGwgbGlzdCBvZiBxdWVyaWVzLCBpbiB0aGVpciBvcmlnaW5hbCBvcmRlci4gKi9cbiAgYWxsUXVlcmllczogKHN0cmluZyB8IEhhcm5lc3NQcmVkaWNhdGU8VD4pW10sXG4gIC8qKlxuICAgKiBBIGZpbHRlcmVkIHZpZXcgb2YgYGFsbFF1ZXJpZXNgIGNvbnRhaW5pbmcgb25seSB0aGUgcXVlcmllcyB0aGF0IGFyZSBsb29raW5nIGZvciBhXG4gICAqIGBDb21wb25lbnRIYXJuZXNzYFxuICAgKi9cbiAgaGFybmVzc1F1ZXJpZXM6IEhhcm5lc3NQcmVkaWNhdGU8VD5bXSxcbiAgLyoqXG4gICAqIEEgZmlsdGVyZWQgdmlldyBvZiBgYWxsUXVlcmllc2AgY29udGFpbmluZyBvbmx5IHRoZSBxdWVyaWVzIHRoYXQgYXJlIGxvb2tpbmcgZm9yIGFcbiAgICogYFRlc3RFbGVtZW50YFxuICAgKi9cbiAgZWxlbWVudFF1ZXJpZXM6IHN0cmluZ1tdLFxuICAvKiogVGhlIHNldCBvZiBhbGwgYENvbXBvbmVudEhhcm5lc3NgIHN1YmNsYXNzZXMgcmVwcmVzZW50ZWQgaW4gdGhlIG9yaWdpbmFsIHF1ZXJ5IGxpc3QuICovXG4gIGhhcm5lc3NUeXBlczogU2V0PENvbXBvbmVudEhhcm5lc3NDb25zdHJ1Y3RvcjxUPj4sXG59O1xuXG4vKipcbiAqIEJhc2UgaGFybmVzcyBlbnZpcm9ubWVudCBjbGFzcyB0aGF0IGNhbiBiZSBleHRlbmRlZCB0byBhbGxvdyBgQ29tcG9uZW50SGFybmVzc2BlcyB0byBiZSB1c2VkIGluXG4gKiBkaWZmZXJlbnQgdGVzdCBlbnZpcm9ubWVudHMgKGUuZy4gdGVzdGJlZCwgcHJvdHJhY3RvciwgZXRjLikuIFRoaXMgY2xhc3MgaW1wbGVtZW50cyB0aGVcbiAqIGZ1bmN0aW9uYWxpdHkgb2YgYm90aCBhIGBIYXJuZXNzTG9hZGVyYCBhbmQgYExvY2F0b3JGYWN0b3J5YC4gVGhpcyBjbGFzcyBpcyBnZW5lcmljIG9uIHRoZSByYXdcbiAqIGVsZW1lbnQgdHlwZSwgYEVgLCB1c2VkIGJ5IHRoZSBwYXJ0aWN1bGFyIHRlc3QgZW52aXJvbm1lbnQuXG4gKi9cbmV4cG9ydCBhYnN0cmFjdCBjbGFzcyBIYXJuZXNzRW52aXJvbm1lbnQ8RT4gaW1wbGVtZW50cyBIYXJuZXNzTG9hZGVyLCBMb2NhdG9yRmFjdG9yeSB7XG4gIC8vIEltcGxlbWVudGVkIGFzIHBhcnQgb2YgdGhlIGBMb2NhdG9yRmFjdG9yeWAgaW50ZXJmYWNlLlxuICByb290RWxlbWVudDogVGVzdEVsZW1lbnQ7XG5cbiAgcHJvdGVjdGVkIGNvbnN0cnVjdG9yKHByb3RlY3RlZCByYXdSb290RWxlbWVudDogRSkge1xuICAgIHRoaXMucm9vdEVsZW1lbnQgPSB0aGlzLmNyZWF0ZVRlc3RFbGVtZW50KHJhd1Jvb3RFbGVtZW50KTtcbiAgfVxuXG4gIC8vIEltcGxlbWVudGVkIGFzIHBhcnQgb2YgdGhlIGBMb2NhdG9yRmFjdG9yeWAgaW50ZXJmYWNlLlxuICBkb2N1bWVudFJvb3RMb2NhdG9yRmFjdG9yeSgpOiBMb2NhdG9yRmFjdG9yeSB7XG4gICAgcmV0dXJuIHRoaXMuY3JlYXRlRW52aXJvbm1lbnQodGhpcy5nZXREb2N1bWVudFJvb3QoKSk7XG4gIH1cblxuICAvLyBJbXBsZW1lbnRlZCBhcyBwYXJ0IG9mIHRoZSBgTG9jYXRvckZhY3RvcnlgIGludGVyZmFjZS5cbiAgbG9jYXRvckZvcjxUIGV4dGVuZHMgKEhhcm5lc3NRdWVyeTxhbnk+IHwgc3RyaW5nKVtdPiguLi5xdWVyaWVzOiBUKTpcbiAgICAgIEFzeW5jRmFjdG9yeUZuPExvY2F0b3JGblJlc3VsdDxUPj4ge1xuICAgIHJldHVybiAoKSA9PiBfYXNzZXJ0UmVzdWx0Rm91bmQoXG4gICAgICAgIHRoaXMuX2dldEFsbEhhcm5lc3Nlc0FuZFRlc3RFbGVtZW50cyhxdWVyaWVzKSxcbiAgICAgICAgX2dldERlc2NyaXB0aW9uRm9yTG9jYXRvckZvclF1ZXJpZXMocXVlcmllcykpO1xuICB9XG5cbiAgLy8gSW1wbGVtZW50ZWQgYXMgcGFydCBvZiB0aGUgYExvY2F0b3JGYWN0b3J5YCBpbnRlcmZhY2UuXG4gIGxvY2F0b3JGb3JPcHRpb25hbDxUIGV4dGVuZHMgKEhhcm5lc3NRdWVyeTxhbnk+IHwgc3RyaW5nKVtdPiguLi5xdWVyaWVzOiBUKTpcbiAgICAgIEFzeW5jRmFjdG9yeUZuPExvY2F0b3JGblJlc3VsdDxUPiB8IG51bGw+IHtcbiAgICByZXR1cm4gYXN5bmMgKCkgPT4gKGF3YWl0IHRoaXMuX2dldEFsbEhhcm5lc3Nlc0FuZFRlc3RFbGVtZW50cyhxdWVyaWVzKSlbMF0gfHwgbnVsbDtcbiAgfVxuXG4gIC8vIEltcGxlbWVudGVkIGFzIHBhcnQgb2YgdGhlIGBMb2NhdG9yRmFjdG9yeWAgaW50ZXJmYWNlLlxuICBsb2NhdG9yRm9yQWxsPFQgZXh0ZW5kcyAoSGFybmVzc1F1ZXJ5PGFueT4gfCBzdHJpbmcpW10+KC4uLnF1ZXJpZXM6IFQpOlxuICAgICAgQXN5bmNGYWN0b3J5Rm48TG9jYXRvckZuUmVzdWx0PFQ+W10+IHtcbiAgICByZXR1cm4gKCkgPT4gdGhpcy5fZ2V0QWxsSGFybmVzc2VzQW5kVGVzdEVsZW1lbnRzKHF1ZXJpZXMpO1xuICB9XG5cbiAgLy8gSW1wbGVtZW50ZWQgYXMgcGFydCBvZiB0aGUgYExvY2F0b3JGYWN0b3J5YCBpbnRlcmZhY2UuXG4gIGFzeW5jIHJvb3RIYXJuZXNzTG9hZGVyKCk6IFByb21pc2U8SGFybmVzc0xvYWRlcj4ge1xuICAgIHJldHVybiB0aGlzO1xuICB9XG5cbiAgLy8gSW1wbGVtZW50ZWQgYXMgcGFydCBvZiB0aGUgYExvY2F0b3JGYWN0b3J5YCBpbnRlcmZhY2UuXG4gIGFzeW5jIGhhcm5lc3NMb2FkZXJGb3Ioc2VsZWN0b3I6IHN0cmluZyk6IFByb21pc2U8SGFybmVzc0xvYWRlcj4ge1xuICAgIHJldHVybiB0aGlzLmNyZWF0ZUVudmlyb25tZW50KGF3YWl0IF9hc3NlcnRSZXN1bHRGb3VuZCh0aGlzLmdldEFsbFJhd0VsZW1lbnRzKHNlbGVjdG9yKSxcbiAgICAgICAgW19nZXREZXNjcmlwdGlvbkZvckhhcm5lc3NMb2FkZXJRdWVyeShzZWxlY3RvcildKSk7XG4gIH1cblxuICAvLyBJbXBsZW1lbnRlZCBhcyBwYXJ0IG9mIHRoZSBgTG9jYXRvckZhY3RvcnlgIGludGVyZmFjZS5cbiAgYXN5bmMgaGFybmVzc0xvYWRlckZvck9wdGlvbmFsKHNlbGVjdG9yOiBzdHJpbmcpOiBQcm9taXNlPEhhcm5lc3NMb2FkZXIgfCBudWxsPiB7XG4gICAgY29uc3QgZWxlbWVudHMgPSBhd2FpdCB0aGlzLmdldEFsbFJhd0VsZW1lbnRzKHNlbGVjdG9yKTtcbiAgICByZXR1cm4gZWxlbWVudHNbMF0gPyB0aGlzLmNyZWF0ZUVudmlyb25tZW50KGVsZW1lbnRzWzBdKSA6IG51bGw7XG4gIH1cblxuICAvLyBJbXBsZW1lbnRlZCBhcyBwYXJ0IG9mIHRoZSBgTG9jYXRvckZhY3RvcnlgIGludGVyZmFjZS5cbiAgYXN5bmMgaGFybmVzc0xvYWRlckZvckFsbChzZWxlY3Rvcjogc3RyaW5nKTogUHJvbWlzZTxIYXJuZXNzTG9hZGVyW10+IHtcbiAgICBjb25zdCBlbGVtZW50cyA9IGF3YWl0IHRoaXMuZ2V0QWxsUmF3RWxlbWVudHMoc2VsZWN0b3IpO1xuICAgIHJldHVybiBlbGVtZW50cy5tYXAoZWxlbWVudCA9PiB0aGlzLmNyZWF0ZUVudmlyb25tZW50KGVsZW1lbnQpKTtcbiAgfVxuXG4gIC8vIEltcGxlbWVudGVkIGFzIHBhcnQgb2YgdGhlIGBIYXJuZXNzTG9hZGVyYCBpbnRlcmZhY2UuXG4gIGdldEhhcm5lc3M8VCBleHRlbmRzIENvbXBvbmVudEhhcm5lc3M+KHF1ZXJ5OiBIYXJuZXNzUXVlcnk8VD4pOiBQcm9taXNlPFQ+IHtcbiAgICByZXR1cm4gdGhpcy5sb2NhdG9yRm9yKHF1ZXJ5KSgpO1xuICB9XG5cbiAgLy8gSW1wbGVtZW50ZWQgYXMgcGFydCBvZiB0aGUgYEhhcm5lc3NMb2FkZXJgIGludGVyZmFjZS5cbiAgZ2V0QWxsSGFybmVzc2VzPFQgZXh0ZW5kcyBDb21wb25lbnRIYXJuZXNzPihxdWVyeTogSGFybmVzc1F1ZXJ5PFQ+KTogUHJvbWlzZTxUW10+IHtcbiAgICByZXR1cm4gdGhpcy5sb2NhdG9yRm9yQWxsKHF1ZXJ5KSgpO1xuICB9XG5cbiAgLy8gSW1wbGVtZW50ZWQgYXMgcGFydCBvZiB0aGUgYEhhcm5lc3NMb2FkZXJgIGludGVyZmFjZS5cbiAgYXN5bmMgZ2V0Q2hpbGRMb2FkZXIoc2VsZWN0b3I6IHN0cmluZyk6IFByb21pc2U8SGFybmVzc0xvYWRlcj4ge1xuICAgIHJldHVybiB0aGlzLmNyZWF0ZUVudmlyb25tZW50KGF3YWl0IF9hc3NlcnRSZXN1bHRGb3VuZCh0aGlzLmdldEFsbFJhd0VsZW1lbnRzKHNlbGVjdG9yKSxcbiAgICAgICAgW19nZXREZXNjcmlwdGlvbkZvckhhcm5lc3NMb2FkZXJRdWVyeShzZWxlY3RvcildKSk7XG4gIH1cblxuICAvLyBJbXBsZW1lbnRlZCBhcyBwYXJ0IG9mIHRoZSBgSGFybmVzc0xvYWRlcmAgaW50ZXJmYWNlLlxuICBhc3luYyBnZXRBbGxDaGlsZExvYWRlcnMoc2VsZWN0b3I6IHN0cmluZyk6IFByb21pc2U8SGFybmVzc0xvYWRlcltdPiB7XG4gICAgcmV0dXJuIChhd2FpdCB0aGlzLmdldEFsbFJhd0VsZW1lbnRzKHNlbGVjdG9yKSkubWFwKGUgPT4gdGhpcy5jcmVhdGVFbnZpcm9ubWVudChlKSk7XG4gIH1cblxuICAvKiogQ3JlYXRlcyBhIGBDb21wb25lbnRIYXJuZXNzYCBmb3IgdGhlIGdpdmVuIGhhcm5lc3MgdHlwZSB3aXRoIHRoZSBnaXZlbiByYXcgaG9zdCBlbGVtZW50LiAqL1xuICBwcm90ZWN0ZWQgY3JlYXRlQ29tcG9uZW50SGFybmVzczxUIGV4dGVuZHMgQ29tcG9uZW50SGFybmVzcz4oXG4gICAgICBoYXJuZXNzVHlwZTogQ29tcG9uZW50SGFybmVzc0NvbnN0cnVjdG9yPFQ+LCBlbGVtZW50OiBFKTogVCB7XG4gICAgcmV0dXJuIG5ldyBoYXJuZXNzVHlwZSh0aGlzLmNyZWF0ZUVudmlyb25tZW50KGVsZW1lbnQpKTtcbiAgfVxuXG4gIC8vIFBhcnQgb2YgTG9jYXRvckZhY3RvcnkgaW50ZXJmYWNlLCBzdWJjbGFzc2VzIHdpbGwgaW1wbGVtZW50LlxuICBhYnN0cmFjdCBmb3JjZVN0YWJpbGl6ZSgpOiBQcm9taXNlPHZvaWQ+O1xuXG4gIC8vIFBhcnQgb2YgTG9jYXRvckZhY3RvcnkgaW50ZXJmYWNlLCBzdWJjbGFzc2VzIHdpbGwgaW1wbGVtZW50LlxuICBhYnN0cmFjdCB3YWl0Rm9yVGFza3NPdXRzaWRlQW5ndWxhcigpOiBQcm9taXNlPHZvaWQ+O1xuXG4gIC8qKiBHZXRzIHRoZSByb290IGVsZW1lbnQgZm9yIHRoZSBkb2N1bWVudC4gKi9cbiAgcHJvdGVjdGVkIGFic3RyYWN0IGdldERvY3VtZW50Um9vdCgpOiBFO1xuXG4gIC8qKiBDcmVhdGVzIGEgYFRlc3RFbGVtZW50YCBmcm9tIGEgcmF3IGVsZW1lbnQuICovXG4gIHByb3RlY3RlZCBhYnN0cmFjdCBjcmVhdGVUZXN0RWxlbWVudChlbGVtZW50OiBFKTogVGVzdEVsZW1lbnQ7XG5cbiAgLyoqIENyZWF0ZXMgYSBgSGFybmVzc0xvYWRlcmAgcm9vdGVkIGF0IHRoZSBnaXZlbiByYXcgZWxlbWVudC4gKi9cbiAgcHJvdGVjdGVkIGFic3RyYWN0IGNyZWF0ZUVudmlyb25tZW50KGVsZW1lbnQ6IEUpOiBIYXJuZXNzRW52aXJvbm1lbnQ8RT47XG5cbiAgLyoqXG4gICAqIEdldHMgYSBsaXN0IG9mIGFsbCBlbGVtZW50cyBtYXRjaGluZyB0aGUgZ2l2ZW4gc2VsZWN0b3IgdW5kZXIgdGhpcyBlbnZpcm9ubWVudCdzIHJvb3QgZWxlbWVudC5cbiAgICovXG4gIHByb3RlY3RlZCBhYnN0cmFjdCBnZXRBbGxSYXdFbGVtZW50cyhzZWxlY3Rvcjogc3RyaW5nKTogUHJvbWlzZTxFW10+O1xuXG4gIC8qKlxuICAgKiBNYXRjaGVzIHRoZSBnaXZlbiByYXcgZWxlbWVudHMgd2l0aCB0aGUgZ2l2ZW4gbGlzdCBvZiBlbGVtZW50IGFuZCBoYXJuZXNzIHF1ZXJpZXMgdG8gcHJvZHVjZSBhXG4gICAqIGxpc3Qgb2YgbWF0Y2hlZCBoYXJuZXNzZXMgYW5kIHRlc3QgZWxlbWVudHMuXG4gICAqL1xuICBwcml2YXRlIGFzeW5jIF9nZXRBbGxIYXJuZXNzZXNBbmRUZXN0RWxlbWVudHM8VCBleHRlbmRzIChIYXJuZXNzUXVlcnk8YW55PiB8IHN0cmluZylbXT4oXG4gICAgICBxdWVyaWVzOiBUKTogUHJvbWlzZTxMb2NhdG9yRm5SZXN1bHQ8VD5bXT4ge1xuICAgIGNvbnN0IHthbGxRdWVyaWVzLCBoYXJuZXNzUXVlcmllcywgZWxlbWVudFF1ZXJpZXMsIGhhcm5lc3NUeXBlc30gPSBfcGFyc2VRdWVyaWVzKHF1ZXJpZXMpO1xuXG4gICAgLy8gQ29tYmluZSBhbGwgb2YgdGhlIHF1ZXJpZXMgaW50byBvbmUgbGFyZ2UgY29tbWEtZGVsaW1pdGVkIHNlbGVjdG9yIGFuZCB1c2UgaXQgdG8gZ2V0IGFsbCByYXdcbiAgICAvLyBlbGVtZW50cyBtYXRjaGluZyBhbnkgb2YgdGhlIGluZGl2aWR1YWwgcXVlcmllcy5cbiAgICBjb25zdCByYXdFbGVtZW50cyA9IGF3YWl0IHRoaXMuZ2V0QWxsUmF3RWxlbWVudHMoXG4gICAgICAgIFsuLi5lbGVtZW50UXVlcmllcywgLi4uaGFybmVzc1F1ZXJpZXMubWFwKHByZWRpY2F0ZSA9PiBwcmVkaWNhdGUuZ2V0U2VsZWN0b3IoKSldLmpvaW4oJywnKSk7XG5cbiAgICAvLyBJZiBldmVyeSBxdWVyeSBpcyBzZWFyY2hpbmcgZm9yIHRoZSBzYW1lIGhhcm5lc3Mgc3ViY2xhc3MsIHdlIGtub3cgZXZlcnkgcmVzdWx0IGNvcnJlc3BvbmRzXG4gICAgLy8gdG8gYW4gaW5zdGFuY2Ugb2YgdGhhdCBzdWJjbGFzcy4gTGlrZXdpc2UsIGlmIGV2ZXJ5IHF1ZXJ5IGlzIGZvciBhIGBUZXN0RWxlbWVudGAsIHdlIGtub3dcbiAgICAvLyBldmVyeSByZXN1bHQgY29ycmVzcG9uZHMgdG8gYSBgVGVzdEVsZW1lbnRgLiBPdGhlcndpc2Ugd2UgbmVlZCB0byB2ZXJpZnkgd2hpY2ggcmVzdWx0IHdhc1xuICAgIC8vIGZvdW5kIGJ5IHdoaWNoIHNlbGVjdG9yIHNvIGl0IGNhbiBiZSBtYXRjaGVkIHRvIHRoZSBhcHByb3ByaWF0ZSBpbnN0YW5jZS5cbiAgICBjb25zdCBza2lwU2VsZWN0b3JDaGVjayA9IChlbGVtZW50UXVlcmllcy5sZW5ndGggPT09IDAgJiYgaGFybmVzc1R5cGVzLnNpemUgPT09IDEpIHx8XG4gICAgICAgIGhhcm5lc3NRdWVyaWVzLmxlbmd0aCA9PT0gMDtcblxuICAgIGNvbnN0IHBlckVsZW1lbnRNYXRjaGVzID0gYXdhaXQgUHJvbWlzZS5hbGwocmF3RWxlbWVudHMubWFwKGFzeW5jIHJhd0VsZW1lbnQgPT4ge1xuICAgICAgY29uc3QgdGVzdEVsZW1lbnQgPSB0aGlzLmNyZWF0ZVRlc3RFbGVtZW50KHJhd0VsZW1lbnQpO1xuICAgICAgY29uc3QgYWxsUmVzdWx0c0ZvckVsZW1lbnQgPSBhd2FpdCBQcm9taXNlLmFsbChcbiAgICAgICAgICAvLyBGb3IgZWFjaCBxdWVyeSwgZ2V0IGBudWxsYCBpZiBpdCBkb2Vzbid0IG1hdGNoLCBvciBhIGBUZXN0RWxlbWVudGAgb3JcbiAgICAgICAgICAvLyBgQ29tcG9uZW50SGFybmVzc2AgYXMgYXBwcm9wcmlhdGUgaWYgaXQgZG9lcyBtYXRjaC4gVGhpcyBnaXZlcyB1cyBldmVyeXRoaW5nIHRoYXRcbiAgICAgICAgICAvLyBtYXRjaGVzIHRoZSBjdXJyZW50IHJhdyBlbGVtZW50LCBidXQgaXQgbWF5IGNvbnRhaW4gZHVwbGljYXRlIGVudHJpZXMgKGUuZy4gbXVsdGlwbGVcbiAgICAgICAgICAvLyBgVGVzdEVsZW1lbnRgIG9yIG11bHRpcGxlIGBDb21wb25lbnRIYXJuZXNzYCBvZiB0aGUgc2FtZSB0eXBlLlxuICAgICAgICAgIGFsbFF1ZXJpZXMubWFwKHF1ZXJ5ID0+XG4gICAgICAgICAgICAgIHRoaXMuX2dldFF1ZXJ5UmVzdWx0Rm9yRWxlbWVudChxdWVyeSwgcmF3RWxlbWVudCwgdGVzdEVsZW1lbnQsIHNraXBTZWxlY3RvckNoZWNrKSkpO1xuICAgICAgcmV0dXJuIF9yZW1vdmVEdXBsaWNhdGVRdWVyeVJlc3VsdHMoYWxsUmVzdWx0c0ZvckVsZW1lbnQpO1xuICAgIH0pKTtcbiAgICByZXR1cm4gKFtdIGFzIGFueSkuY29uY2F0KC4uLnBlckVsZW1lbnRNYXRjaGVzKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBDaGVjayB3aGV0aGVyIHRoZSBnaXZlbiBxdWVyeSBtYXRjaGVzIHRoZSBnaXZlbiBlbGVtZW50LCBpZiBpdCBkb2VzIHJldHVybiB0aGUgbWF0Y2hlZFxuICAgKiBgVGVzdEVsZW1lbnRgIG9yIGBDb21wb25lbnRIYXJuZXNzYCwgaWYgaXQgZG9lcyBub3QsIHJldHVybiBudWxsLiBJbiBjYXNlcyB3aGVyZSB0aGUgY2FsbGVyXG4gICAqIGtub3dzIGZvciBzdXJlIHRoYXQgdGhlIHF1ZXJ5IG1hdGNoZXMgdGhlIGVsZW1lbnQncyBzZWxlY3RvciwgYHNraXBTZWxlY3RvckNoZWNrYCBjYW4gYmUgdXNlZFxuICAgKiB0byBza2lwIHZlcmlmaWNhdGlvbiBhbmQgb3B0aW1pemUgcGVyZm9ybWFuY2UuXG4gICAqL1xuICBwcml2YXRlIGFzeW5jIF9nZXRRdWVyeVJlc3VsdEZvckVsZW1lbnQ8VCBleHRlbmRzIENvbXBvbmVudEhhcm5lc3M+KFxuICAgICAgcXVlcnk6IHN0cmluZyB8IEhhcm5lc3NQcmVkaWNhdGU8VD4sIHJhd0VsZW1lbnQ6IEUsIHRlc3RFbGVtZW50OiBUZXN0RWxlbWVudCxcbiAgICAgIHNraXBTZWxlY3RvckNoZWNrOiBib29sZWFuID0gZmFsc2UpOiBQcm9taXNlPFQgfCBUZXN0RWxlbWVudCB8IG51bGw+IHtcbiAgICBpZiAodHlwZW9mIHF1ZXJ5ID09PSAnc3RyaW5nJykge1xuICAgICAgcmV0dXJuICgoc2tpcFNlbGVjdG9yQ2hlY2sgfHwgYXdhaXQgdGVzdEVsZW1lbnQubWF0Y2hlc1NlbGVjdG9yKHF1ZXJ5KSkgPyB0ZXN0RWxlbWVudCA6IG51bGwpO1xuICAgIH1cbiAgICBpZiAoc2tpcFNlbGVjdG9yQ2hlY2sgfHwgYXdhaXQgdGVzdEVsZW1lbnQubWF0Y2hlc1NlbGVjdG9yKHF1ZXJ5LmdldFNlbGVjdG9yKCkpKSB7XG4gICAgICBjb25zdCBoYXJuZXNzID0gdGhpcy5jcmVhdGVDb21wb25lbnRIYXJuZXNzKHF1ZXJ5Lmhhcm5lc3NUeXBlLCByYXdFbGVtZW50KTtcbiAgICAgIHJldHVybiAoYXdhaXQgcXVlcnkuZXZhbHVhdGUoaGFybmVzcykpID8gaGFybmVzcyA6IG51bGw7XG4gICAgfVxuICAgIHJldHVybiBudWxsO1xuICB9XG59XG5cbi8qKlxuICogUGFyc2VzIGEgbGlzdCBvZiBxdWVyaWVzIGluIHRoZSBmb3JtYXQgYWNjZXB0ZWQgYnkgdGhlIGBsb2NhdG9yRm9yKmAgbWV0aG9kcyBpbnRvIGFuIGVhc2llciB0b1xuICogd29yayB3aXRoIGZvcm1hdC5cbiAqL1xuZnVuY3Rpb24gX3BhcnNlUXVlcmllczxUIGV4dGVuZHMgKEhhcm5lc3NRdWVyeTxhbnk+IHwgc3RyaW5nKVtdPihxdWVyaWVzOiBUKTpcbiAgICBQYXJzZWRRdWVyaWVzPExvY2F0b3JGblJlc3VsdDxUPiAmIENvbXBvbmVudEhhcm5lc3M+IHtcbiAgY29uc3QgYWxsUXVlcmllcyA9IFtdO1xuICBjb25zdCBoYXJuZXNzUXVlcmllcyA9IFtdO1xuICBjb25zdCBlbGVtZW50UXVlcmllcyA9IFtdO1xuICBjb25zdCBoYXJuZXNzVHlwZXMgPVxuICAgICAgbmV3IFNldDxDb21wb25lbnRIYXJuZXNzQ29uc3RydWN0b3I8TG9jYXRvckZuUmVzdWx0PFQ+ICYgQ29tcG9uZW50SGFybmVzcz4+KCk7XG5cbiAgZm9yIChjb25zdCBxdWVyeSBvZiBxdWVyaWVzKSB7XG4gICAgaWYgKHR5cGVvZiBxdWVyeSA9PT0gJ3N0cmluZycpIHtcbiAgICAgIGFsbFF1ZXJpZXMucHVzaChxdWVyeSk7XG4gICAgICBlbGVtZW50UXVlcmllcy5wdXNoKHF1ZXJ5KTtcbiAgICB9IGVsc2Uge1xuICAgICAgY29uc3QgcHJlZGljYXRlID0gcXVlcnkgaW5zdGFuY2VvZiBIYXJuZXNzUHJlZGljYXRlID8gcXVlcnkgOiBuZXcgSGFybmVzc1ByZWRpY2F0ZShxdWVyeSwge30pO1xuICAgICAgYWxsUXVlcmllcy5wdXNoKHByZWRpY2F0ZSk7XG4gICAgICBoYXJuZXNzUXVlcmllcy5wdXNoKHByZWRpY2F0ZSk7XG4gICAgICBoYXJuZXNzVHlwZXMuYWRkKHByZWRpY2F0ZS5oYXJuZXNzVHlwZSk7XG4gICAgfVxuICB9XG5cbiAgcmV0dXJuIHthbGxRdWVyaWVzLCBoYXJuZXNzUXVlcmllcywgZWxlbWVudFF1ZXJpZXMsIGhhcm5lc3NUeXBlc307XG59XG5cbi8qKlxuICogUmVtb3ZlcyBkdXBsaWNhdGUgcXVlcnkgcmVzdWx0cyBmb3IgYSBwYXJ0aWN1bGFyIGVsZW1lbnQuIChlLmcuIG11bHRpcGxlIGBUZXN0RWxlbWVudGBcbiAqIGluc3RhbmNlcyBvciBtdWx0aXBsZSBpbnN0YW5jZXMgb2YgdGhlIHNhbWUgYENvbXBvbmVudEhhcm5lc3NgIGNsYXNzLlxuICovXG5hc3luYyBmdW5jdGlvbiBfcmVtb3ZlRHVwbGljYXRlUXVlcnlSZXN1bHRzPFQgZXh0ZW5kcyAoQ29tcG9uZW50SGFybmVzcyB8IFRlc3RFbGVtZW50IHwgbnVsbClbXT4oXG4gICAgcmVzdWx0czogVCk6IFByb21pc2U8VD4ge1xuICBsZXQgdGVzdEVsZW1lbnRNYXRjaGVkID0gZmFsc2U7XG4gIGxldCBtYXRjaGVkSGFybmVzc1R5cGVzID0gbmV3IFNldCgpO1xuICBjb25zdCBkZWR1cGVkTWF0Y2hlcyA9IFtdO1xuICBmb3IgKGNvbnN0IHJlc3VsdCBvZiByZXN1bHRzKSB7XG4gICAgaWYgKCFyZXN1bHQpIHtcbiAgICAgIGNvbnRpbnVlO1xuICAgIH1cbiAgICBpZiAocmVzdWx0IGluc3RhbmNlb2YgQ29tcG9uZW50SGFybmVzcykge1xuICAgICAgaWYgKCFtYXRjaGVkSGFybmVzc1R5cGVzLmhhcyhyZXN1bHQuY29uc3RydWN0b3IpKSB7XG4gICAgICAgIG1hdGNoZWRIYXJuZXNzVHlwZXMuYWRkKHJlc3VsdC5jb25zdHJ1Y3Rvcik7XG4gICAgICAgIGRlZHVwZWRNYXRjaGVzLnB1c2gocmVzdWx0KTtcbiAgICAgIH1cbiAgICB9IGVsc2UgaWYgKCF0ZXN0RWxlbWVudE1hdGNoZWQpIHtcbiAgICAgIHRlc3RFbGVtZW50TWF0Y2hlZCA9IHRydWU7XG4gICAgICBkZWR1cGVkTWF0Y2hlcy5wdXNoKHJlc3VsdCk7XG4gICAgfVxuICB9XG4gIHJldHVybiBkZWR1cGVkTWF0Y2hlcyBhcyBUO1xufVxuXG4vKiogVmVyaWZpZXMgdGhhdCB0aGVyZSBpcyBhdCBsZWFzdCBvbmUgcmVzdWx0IGluIGFuIGFycmF5LiAqL1xuYXN5bmMgZnVuY3Rpb24gX2Fzc2VydFJlc3VsdEZvdW5kPFQ+KHJlc3VsdHM6IFByb21pc2U8VFtdPiwgcXVlcnlEZXNjcmlwdGlvbnM6IHN0cmluZ1tdKTpcbiAgICBQcm9taXNlPFQ+IHtcbiAgY29uc3QgcmVzdWx0ID0gKGF3YWl0IHJlc3VsdHMpWzBdO1xuICBpZiAocmVzdWx0ID09IHVuZGVmaW5lZCkge1xuICAgIHRocm93IEVycm9yKGBGYWlsZWQgdG8gZmluZCBlbGVtZW50IG1hdGNoaW5nIG9uZSBvZiB0aGUgZm9sbG93aW5nIHF1ZXJpZXM6XFxuYCArXG4gICAgICAgIHF1ZXJ5RGVzY3JpcHRpb25zLm1hcChkZXNjID0+IGAoJHtkZXNjfSlgKS5qb2luKCcsXFxuJykpO1xuICB9XG4gIHJldHVybiByZXN1bHQ7XG59XG5cbi8qKiBHZXRzIGEgbGlzdCBvZiBkZXNjcmlwdGlvbiBzdHJpbmdzIGZyb20gYSBsaXN0IG9mIHF1ZXJpZXMuICovXG5mdW5jdGlvbiBfZ2V0RGVzY3JpcHRpb25Gb3JMb2NhdG9yRm9yUXVlcmllcyhxdWVyaWVzOiAoc3RyaW5nIHwgSGFybmVzc1F1ZXJ5PGFueT4pW10pIHtcbiAgcmV0dXJuIHF1ZXJpZXMubWFwKHF1ZXJ5ID0+IHR5cGVvZiBxdWVyeSA9PT0gJ3N0cmluZycgP1xuICAgICAgX2dldERlc2NyaXB0aW9uRm9yVGVzdEVsZW1lbnRRdWVyeShxdWVyeSkgOiBfZ2V0RGVzY3JpcHRpb25Gb3JDb21wb25lbnRIYXJuZXNzUXVlcnkocXVlcnkpKTtcbn1cblxuLyoqIEdldHMgYSBkZXNjcmlwdGlvbiBzdHJpbmcgZm9yIGEgYENvbXBvbmVudEhhcm5lc3NgIHF1ZXJ5LiAqL1xuZnVuY3Rpb24gX2dldERlc2NyaXB0aW9uRm9yQ29tcG9uZW50SGFybmVzc1F1ZXJ5KHF1ZXJ5OiBIYXJuZXNzUXVlcnk8YW55Pikge1xuICBjb25zdCBoYXJuZXNzUHJlZGljYXRlID1cbiAgICAgIHF1ZXJ5IGluc3RhbmNlb2YgSGFybmVzc1ByZWRpY2F0ZSA/IHF1ZXJ5IDogbmV3IEhhcm5lc3NQcmVkaWNhdGUocXVlcnksIHt9KTtcbiAgY29uc3Qge25hbWUsIGhvc3RTZWxlY3Rvcn0gPSBoYXJuZXNzUHJlZGljYXRlLmhhcm5lc3NUeXBlO1xuICBjb25zdCBkZXNjcmlwdGlvbiA9IGAke25hbWV9IHdpdGggaG9zdCBlbGVtZW50IG1hdGNoaW5nIHNlbGVjdG9yOiBcIiR7aG9zdFNlbGVjdG9yfVwiYDtcbiAgY29uc3QgY29uc3RyYWludHMgPSBoYXJuZXNzUHJlZGljYXRlLmdldERlc2NyaXB0aW9uKCk7XG4gIHJldHVybiBkZXNjcmlwdGlvbiArIChjb25zdHJhaW50cyA/XG4gICAgICBgIHNhdGlzZnlpbmcgdGhlIGNvbnN0cmFpbnRzOiAke2hhcm5lc3NQcmVkaWNhdGUuZ2V0RGVzY3JpcHRpb24oKX1gIDogJycpO1xufVxuXG4vKiogR2V0cyBhIGRlc2NyaXB0aW9uIHN0cmluZyBmb3IgYSBgVGVzdEVsZW1lbnRgIHF1ZXJ5LiAqL1xuZnVuY3Rpb24gX2dldERlc2NyaXB0aW9uRm9yVGVzdEVsZW1lbnRRdWVyeShzZWxlY3Rvcjogc3RyaW5nKSB7XG4gIHJldHVybiBgVGVzdEVsZW1lbnQgZm9yIGVsZW1lbnQgbWF0Y2hpbmcgc2VsZWN0b3I6IFwiJHtzZWxlY3Rvcn1cImA7XG59XG5cbi8qKiBHZXRzIGEgZGVzY3JpcHRpb24gc3RyaW5nIGZvciBhIGBIYXJuZXNzTG9hZGVyYCBxdWVyeS4gKi9cbmZ1bmN0aW9uIF9nZXREZXNjcmlwdGlvbkZvckhhcm5lc3NMb2FkZXJRdWVyeShzZWxlY3Rvcjogc3RyaW5nKSB7XG4gIHJldHVybiBgSGFybmVzc0xvYWRlciBmb3IgZWxlbWVudCBtYXRjaGluZyBzZWxlY3RvcjogXCIke3NlbGVjdG9yfVwiYDtcbn1cbiJdfQ==