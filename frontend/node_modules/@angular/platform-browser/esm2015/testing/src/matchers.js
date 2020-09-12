/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ɵgetDOM as getDOM } from '@angular/common';
import { ɵglobal as global } from '@angular/core';
import { ComponentFixture } from '@angular/core/testing';
import { By } from '@angular/platform-browser';
import { childNodesAsList, hasClass, hasStyle, isCommentNode } from './browser_util';
const _global = (typeof window === 'undefined' ? global : window);
/**
 * Jasmine matching function with Angular matchers mixed in.
 *
 * ## Example
 *
 * {@example testing/ts/matchers.ts region='toHaveText'}
 */
export const expect = _global.expect;
// Some Map polyfills don't polyfill Map.toString correctly, which
// gives us bad error messages in tests.
// The only way to do this in Jasmine is to monkey patch a method
// to the object :-(
Map.prototype['jasmineToString'] = function () {
    const m = this;
    if (!m) {
        return '' + m;
    }
    const res = [];
    m.forEach((v, k) => {
        res.push(`${String(k)}:${String(v)}`);
    });
    return `{ ${res.join(',')} }`;
};
_global.beforeEach(function () {
    // Custom handler for Map as we use Jasmine 2.4, and support for maps is not
    // added until Jasmine 2.6.
    jasmine.addCustomEqualityTester(function compareMap(actual, expected) {
        if (actual instanceof Map) {
            let pass = actual.size === expected.size;
            if (pass) {
                actual.forEach((v, k) => {
                    pass = pass && jasmine.matchersUtil.equals(v, expected.get(k));
                });
            }
            return pass;
        }
        else {
            // TODO(misko): we should change the return, but jasmine.d.ts is not null safe
            return undefined;
        }
    });
    jasmine.addMatchers({
        toBePromise: function () {
            return {
                compare: function (actual) {
                    const pass = typeof actual === 'object' && typeof actual.then === 'function';
                    return {
                        pass: pass,
                        get message() {
                            return 'Expected ' + actual + ' to be a promise';
                        }
                    };
                }
            };
        },
        toBeAnInstanceOf: function () {
            return {
                compare: function (actual, expectedClass) {
                    const pass = typeof actual === 'object' && actual instanceof expectedClass;
                    return {
                        pass: pass,
                        get message() {
                            return 'Expected ' + actual + ' to be an instance of ' + expectedClass;
                        }
                    };
                }
            };
        },
        toHaveText: function () {
            return {
                compare: function (actual, expectedText) {
                    const actualText = elementText(actual);
                    return {
                        pass: actualText == expectedText,
                        get message() {
                            return 'Expected ' + actualText + ' to be equal to ' + expectedText;
                        }
                    };
                }
            };
        },
        toHaveCssClass: function () {
            return { compare: buildError(false), negativeCompare: buildError(true) };
            function buildError(isNot) {
                return function (actual, className) {
                    return {
                        pass: hasClass(actual, className) == !isNot,
                        get message() {
                            return `Expected ${actual.outerHTML} ${isNot ? 'not ' : ''}to contain the CSS class "${className}"`;
                        }
                    };
                };
            }
        },
        toHaveCssStyle: function () {
            return {
                compare: function (actual, styles) {
                    let allPassed;
                    if (typeof styles === 'string') {
                        allPassed = hasStyle(actual, styles);
                    }
                    else {
                        allPassed = Object.keys(styles).length !== 0;
                        Object.keys(styles).forEach(prop => {
                            allPassed = allPassed && hasStyle(actual, prop, styles[prop]);
                        });
                    }
                    return {
                        pass: allPassed,
                        get message() {
                            const expectedValueStr = typeof styles === 'string' ? styles : JSON.stringify(styles);
                            return `Expected ${actual.outerHTML} ${!allPassed ? ' ' : 'not '}to contain the
                      CSS ${typeof styles === 'string' ? 'property' : 'styles'} "${expectedValueStr}"`;
                        }
                    };
                }
            };
        },
        toContainError: function () {
            return {
                compare: function (actual, expectedText) {
                    const errorMessage = actual.toString();
                    return {
                        pass: errorMessage.indexOf(expectedText) > -1,
                        get message() {
                            return 'Expected ' + errorMessage + ' to contain ' + expectedText;
                        }
                    };
                }
            };
        },
        toImplement: function () {
            return {
                compare: function (actualObject, expectedInterface) {
                    const intProps = Object.keys(expectedInterface.prototype);
                    const missedMethods = [];
                    intProps.forEach((k) => {
                        if (!actualObject.constructor.prototype[k])
                            missedMethods.push(k);
                    });
                    return {
                        pass: missedMethods.length == 0,
                        get message() {
                            return 'Expected ' + actualObject +
                                ' to have the following methods: ' + missedMethods.join(', ');
                        }
                    };
                }
            };
        },
        toContainComponent: function () {
            return {
                compare: function (actualFixture, expectedComponentType) {
                    const failOutput = arguments[2];
                    const msgFn = (msg) => [msg, failOutput].filter(Boolean).join(', ');
                    // verify correct actual type
                    if (!(actualFixture instanceof ComponentFixture)) {
                        return {
                            pass: false,
                            message: msgFn(`Expected actual to be of type \'ComponentFixture\' [actual=${actualFixture.constructor.name}]`)
                        };
                    }
                    const found = !!actualFixture.debugElement.query(By.directive(expectedComponentType));
                    return found ?
                        { pass: true } :
                        { pass: false, message: msgFn(`Expected ${expectedComponentType.name} to show`) };
                }
            };
        }
    });
});
function elementText(n) {
    const hasNodes = (n) => {
        const children = n.childNodes;
        return children && children.length > 0;
    };
    if (n instanceof Array) {
        return n.map(elementText).join('');
    }
    if (isCommentNode(n)) {
        return '';
    }
    if (getDOM().isElementNode(n) && n.tagName == 'CONTENT') {
        return elementText(Array.prototype.slice.apply(n.getDistributedNodes()));
    }
    if (hasShadowRoot(n)) {
        return elementText(childNodesAsList(n.shadowRoot));
    }
    if (hasNodes(n)) {
        return elementText(childNodesAsList(n));
    }
    return n.textContent;
}
function hasShadowRoot(node) {
    return node.shadowRoot != null && node instanceof HTMLElement;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWF0Y2hlcnMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9wbGF0Zm9ybS1icm93c2VyL3Rlc3Rpbmcvc3JjL21hdGNoZXJzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUdILE9BQU8sRUFBQyxPQUFPLElBQUksTUFBTSxFQUFDLE1BQU0saUJBQWlCLENBQUM7QUFDbEQsT0FBTyxFQUFPLE9BQU8sSUFBSSxNQUFNLEVBQUMsTUFBTSxlQUFlLENBQUM7QUFDdEQsT0FBTyxFQUFDLGdCQUFnQixFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFDdkQsT0FBTyxFQUFDLEVBQUUsRUFBQyxNQUFNLDJCQUEyQixDQUFDO0FBQzdDLE9BQU8sRUFBQyxnQkFBZ0IsRUFBRSxRQUFRLEVBQUUsUUFBUSxFQUFFLGFBQWEsRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBMEZuRixNQUFNLE9BQU8sR0FBUSxDQUFDLE9BQU8sTUFBTSxLQUFLLFdBQVcsQ0FBQyxDQUFDLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsQ0FBQztBQUV2RTs7Ozs7O0dBTUc7QUFDSCxNQUFNLENBQUMsTUFBTSxNQUFNLEdBQTBDLE9BQU8sQ0FBQyxNQUFNLENBQUM7QUFHNUUsa0VBQWtFO0FBQ2xFLHdDQUF3QztBQUN4QyxpRUFBaUU7QUFDakUsb0JBQW9CO0FBQ25CLEdBQVcsQ0FBQyxTQUFTLENBQUMsaUJBQWlCLENBQUMsR0FBRztJQUMxQyxNQUFNLENBQUMsR0FBRyxJQUFJLENBQUM7SUFDZixJQUFJLENBQUMsQ0FBQyxFQUFFO1FBQ04sT0FBTyxFQUFFLEdBQUcsQ0FBQyxDQUFDO0tBQ2Y7SUFDRCxNQUFNLEdBQUcsR0FBVSxFQUFFLENBQUM7SUFDdEIsQ0FBQyxDQUFDLE9BQU8sQ0FBQyxDQUFDLENBQU0sRUFBRSxDQUFNLEVBQUUsRUFBRTtRQUMzQixHQUFHLENBQUMsSUFBSSxDQUFD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USxDQUFDLE1BQU0sR0FBRyxDQUFDLENBQUM7SUFDekMsQ0FBQyxDQUFDO0lBRUYsSUFBSSxDQUFDLFlBQVksS0FBSyxFQUFFO1FBQ3RCLE9BQU8sQ0FBQyxDQUFDLEdBQUcsQ0FBQyxXQUFXLENBQUMsQ0FBQyxJQUFJLENBQUMsRUFBRSxDQUFDLENBQUM7S0FDcEM7SUFFRCxJQUFJLGFBQWEsQ0FBQyxDQUFDLENBQUMsRUFBRTtRQUNwQixPQUFPLEVBQUUsQ0FBQztLQUNYO0lBRUQsSUFBSSxNQUFNLEVBQUUsQ0FBQyxhQUFhLENBQUMsQ0FBQyxDQUFDLElBQUssQ0FBYSxDQUFDLE9BQU8sSUFBSSxTQUFTLEVBQUU7UUFDcEUsT0FBTyxXQUFXLENBQUMsS0FBSyxDQUFDLFNBQVMsQ0FBQyxLQUFLLENBQUMsS0FBSyxDQUFPLENBQUUsQ0FBQyxtQkFBbUIsRUFBRSxDQUFDLENBQUMsQ0FBQztLQUNqRjtJQUVELElBQUksYUFBYSxDQUFDLENBQUMsQ0FBQyxFQUFFO1FBQ3BCLE9BQU8sV0FBVyxDQUFDLGdCQUFnQixDQUFPLENBQUUsQ0FBQyxVQUFVLENBQUMsQ0FBQyxDQUFDO0tBQzNEO0lBRUQsSUFBSSxRQUFRLENBQUMsQ0FBQyxDQUFDLEVBQUU7UUFDZixPQUFPLFdBQVcsQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO0tBQ3pDO0lBRUQsT0FBUSxDQUFTLENBQUMsV0FBVyxDQUFDO0FBQ2hDLENBQUM7QUFFRCxTQUFTLGFBQWEsQ0FBQyxJQUFTO0lBQzlCLE9BQU8sSUFBSSxDQUFDLFVBQVUsSUFBSSxJQUFJLElBQUksSUFBSSxZQUFZLFdBQVcsQ0FBQztBQUNoRSxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cblxuaW1wb3J0IHvJtWdldERPTSBhcyBnZXRET019IGZyb20gJ0Bhbmd1bGFyL2NvbW1vbic7XG5pbXBvcnQge1R5cGUsIMm1Z2xvYmFsIGFzIGdsb2JhbH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge0NvbXBvbmVudEZpeHR1cmV9IGZyb20gJ0Bhbmd1bGFyL2NvcmUvdGVzdGluZyc7XG5pbXBvcnQge0J5fSBmcm9tICdAYW5ndWxhci9wbGF0Zm9ybS1icm93c2VyJztcbmltcG9ydCB7Y2hpbGROb2Rlc0FzTGlzdCwgaGFzQ2xhc3MsIGhhc1N0eWxlLCBpc0NvbW1lbnROb2RlfSBmcm9tICcuL2Jyb3dzZXJfdXRpbCc7XG5cblxuLyoqXG4gKiBKYXNtaW5lIG1hdGNoZXJzIHRoYXQgY2hlY2sgQW5ndWxhciBzcGVjaWZpYyBjb25kaXRpb25zLlxuICpcbiAqIE5vdGU6IFRoZXNlIG1hdGNoZXJzIHdpbGwgb25seSB3b3JrIGluIGEgYnJvd3NlciBlbnZpcm9ubWVudC5cbiAqL1xuZXhwb3J0IGludGVyZmFjZSBOZ01hdGNoZXJzPFQgPSBhbnk+IGV4dGVuZHMgamFzbWluZS5NYXRjaGVyczxUPiB7XG4gIC8qKlxuICAgKiBFeHBlY3QgdGhlIHZhbHVlIHRvIGJlIGEgYFByb21pc2VgLlxuICAgKlxuICAgKiBAdXNhZ2VOb3Rlc1xuICAgKiAjIyMgRXhhbXBsZVxuICAgKlxuICAgKiB7QGV4YW1wbGUgdGVzdGluZy90cy9tYXRjaGVycy50cyByZWdpb249J3RvQmVQcm9taXNlJ31cbiAgICovXG4gIHRvQmVQcm9taXNlKCk6IGJvb2xlYW47XG5cbiAgLyoqXG4gICAqIEV4cGVjdCB0aGUgdmFsdWUgdG8gYmUgYW4gaW5zdGFuY2Ugb2YgYSBjbGFzcy5cbiAgICpcbiAgICogQHVzYWdlTm90ZXNcbiAgICogIyMjIEV4YW1wbGVcbiAgICpcbiAgICoge0BleGFtcGxlIHRlc3RpbmcvdHMvbWF0Y2hlcnMudHMgcmVnaW9uPSd0b0JlQW5JbnN0YW5jZU9mJ31cbiAgICovXG4gIHRvQmVBbkluc3RhbmNlT2YoZXhwZWN0ZWQ6IGFueSk6IGJvb2xlYW47XG5cbiAgLyoqXG4gICAqIEV4cGVjdCB0aGUgZWxlbWVudCB0byBoYXZlIGV4YWN0bHkgdGhlIGdpdmVuIHRleHQuXG4gICAqXG4gICAqIEB1c2FnZU5vdGVzXG4gICAqICMjIyBFeGFtcGxlXG4gICAqXG4gICAqIHtAZXhhbXBsZSB0ZXN0aW5nL3RzL21hdGNoZXJzLnRzIHJlZ2lvbj0ndG9IYXZlVGV4dCd9XG4gICAqL1xuICB0b0hhdmVUZXh0KGV4cGVjdGVkOiBzdHJpbmcpOiBib29sZWFuO1xuXG4gIC8qKlxuICAgKiBFeHBlY3QgdGhlIGVsZW1lbnQgdG8gaGF2ZSB0aGUgZ2l2ZW4gQ1NTIGNsYXNzLlxuICAgKlxuICAgKiBAdXNhZ2VOb3Rlc1xuICAgKiAjIyMgRXhhbXBsZVxuICAgKlxuICAgKiB7QGV4YW1wbGUgdGVzdGluZy90cy9tYXRjaGVycy50cyByZWdpb249J3RvSGF2ZUNzc0NsYXNzJ31cbiAgICovXG4gIHRvSGF2ZUNzc0NsYXNzKGV4cGVjdGVkOiBzdHJpbmcpOiBib29sZWFuO1xuXG4gIC8qKlxuICAgKiBFeHBlY3QgdGhlIGVsZW1lbnQgdG8gaGF2ZSB0aGUgZ2l2ZW4gQ1NTIHN0eWxlcy5cbiAgICpcbiAgICogQHVzYWdlTm90ZXNcbiAgICogIyMjIEV4YW1wbGVcbiAgICpcbiAgICoge0BleGFtcGxlIHRlc3RpbmcvdHMvbWF0Y2hlcnMudHMgcmVnaW9uPSd0b0hhdmVDc3NTdHlsZSd9XG4gICAqL1xuICB0b0hhdmVDc3NTdHlsZShleHBlY3RlZDoge1trOiBzdHJpbmddOiBzdHJpbmd9fHN0cmluZyk6IGJvb2xlYW47XG5cbiAgLyoqXG4gICAqIEV4cGVjdCBhIGNsYXNzIHRvIGltcGxlbWVudCB0aGUgaW50ZXJmYWNlIG9mIHRoZSBnaXZlbiBjbGFzcy5cbiAgICpcbiAgICogQHVzYWdlTm90ZXNcbiAgICogIyMjIEV4YW1wbGVcbiAgICpcbiAgICoge0BleGFtcGxlIHRlc3RpbmcvdHMvbWF0Y2hlcnMudHMgcmVnaW9uPSd0b0ltcGxlbWVudCd9XG4gICAqL1xuICB0b0ltcGxlbWVudChleHBlY3RlZDogYW55KTogYm9vbGVhbjtcblxuICAvKipcbiAgICogRXhwZWN0IGFuIGV4Y2VwdGlvbiB0byBjb250YWluIHRoZSBnaXZlbiBlcnJvciB0ZXh0LlxuICAgKlxuICAgKiBAdXNhZ2VOb3Rlc1xuICAgKiAjIyMgRXhhbXBsZVxuICAgKlxuICAgKiB7QGV4YW1wbGUgdGVzdGluZy90cy9tYXRjaGVycy50cyByZWdpb249J3RvQ29udGFpbkVycm9yJ31cbiAgICovXG4gIHRvQ29udGFpbkVycm9yKGV4cGVjdGVkOiBhbnkpOiBib29sZWFuO1xuXG4gIC8qKlxuICAgKiBFeHBlY3QgYSBjb21wb25lbnQgb2YgdGhlIGdpdmVuIHR5cGUgdG8gc2hvdy5cbiAgICovXG4gIHRvQ29udGFpbkNvbXBvbmVudChleHBlY3RlZENvbXBvbmVudFR5cGU6IFR5cGU8YW55PiwgZXhwZWN0YXRpb25GYWlsT3V0cHV0PzogYW55KTogYm9vbGVhbjtcblxuICAvKipcbiAgICogSW52ZXJ0IHRoZSBtYXRjaGVycy5cbiAgICovXG4gIG5vdDogTmdNYXRjaGVyczxUPjtcbn1cblxuY29uc3QgX2dsb2JhbCA9IDxhbnk+KHR5cGVvZiB3aW5kb3cgPT09ICd1bmRlZmluZWQnID8gZ2xvYmFsIDogd2luZG93KTtcblxuLyoqXG4gKiBKYXNtaW5lIG1hdGNoaW5nIGZ1bmN0aW9uIHdpdGggQW5ndWxhciBtYXRjaGVycyBtaXhlZCBpbi5cbiAqXG4gKiAjIyBFeGFtcGxlXG4gKlxuICoge0BleGFtcGxlIHRlc3RpbmcvdHMvbWF0Y2hlcnMudHMgcmVnaW9uPSd0b0hhdmVUZXh0J31cbiAqL1xuZXhwb3J0IGNvbnN0IGV4cGVjdDogPFQgPSBhbnk+KGFjdHVhbDogVCkgPT4gTmdNYXRjaGVyczxUPiA9IF9nbG9iYWwuZXhwZWN0O1xuXG5cbi8vIFNvbWUgTWFwIHBvbHlmaWxscyBkb24ndCBwb2x5ZmlsbCBNYXAudG9TdHJpbmcgY29ycmVjdGx5LCB3aGljaFxuLy8gZ2l2ZXMgdXMgYmFkIGVycm9yIG1lc3NhZ2VzIGluIHRlc3RzLlxuLy8gVGhlIG9ubHkgd2F5IHRvIGRvIHRoaXMgaW4gSmFzbWluZSBpcyB0byBtb25rZXkgcGF0Y2ggYSBtZXRob2Rcbi8vIHRvIHRoZSBvYmplY3QgOi0oXG4oTWFwIGFzIGFueSkucHJvdG90eXBlWydqYXNtaW5lVG9TdHJpbmcnXSA9IGZ1bmN0aW9uKCkge1xuICBjb25zdCBtID0gdGhpcztcbiAgaWYgKCFtKSB7XG4gICAgcmV0dXJuICcnICsgbTtcbiAgfVxuICBjb25zdCByZXM6IGFueVtdID0gW107XG4gIG0uZm9yRWFjaCgodjogYW55LCBrOiBhbnkpID0+IHtcbiAgICByZXMucHVzaChgJHtTdHJpbmcoayl9OiR7U3RyaW5nKHYpfWApO1xuICB9KTtcbiAgcmV0dXJuIGB7ICR7cmVzLmpvaW4oJywnKX0gfWA7XG59O1xuXG5fZ2xvYmFsLmJlZm9yZUVhY2goZnVuY3Rpb24oKSB7XG4gIC8vIEN1c3RvbSBoYW5kbGVyIGZvciBNYXAgYXMgd2UgdXNlIEphc21pbmUgMi40LCBhbmQgc3VwcG9ydCBmb3IgbWFwcyBpcyBub3RcbiAgLy8gYWRkZWQgdW50aWwgSmFzbWluZSAyLjYuXG4gIGphc21pbmUuYWRkQ3VzdG9tRXF1YWxpdHlUZXN0ZXIoZnVuY3Rpb24gY29tcGFyZU1hcChhY3R1YWw6IGFueSwgZXhwZWN0ZWQ6IGFueSk6IGJvb2xlYW4ge1xuICAgIGlmIChhY3R1YWwgaW5zdGFuY2VvZiBNYXApIHtcbiAgICAgIGxldCBwYXNzID0gYWN0dWFsLnNpemUgPT09IGV4cGVjdGVkLnNpemU7XG4gICAgICBpZiAocGFzcykge1xuICAgICAgICBhY3R1YWwuZm9yRWFjaCgodjogYW55LCBrOiBhbnkpID0+IHtcbiAgICAgICAgICBwYXNzID0gcGFzcyAmJiBqYXNtaW5lLm1hdGNoZXJzVXRpbC5lcXVhbHModiwgZXhwZWN0ZWQuZ2V0KGspKTtcbiAgICAgICAgfSk7XG4gICAgICB9XG4gICAgICByZXR1cm4gcGFzcztcbiAgICB9IGVsc2Uge1xuICAgICAgLy8gVE9ETyhtaXNrbyk6IHdlIHNob3VsZCBjaGFuZ2UgdGhlIHJldHVybiwgYnV0IGphc21pbmUuZC50cyBpcyBub3QgbnVsbCBzYWZlXG4gICAgICByZXR1cm4gdW5kZWZpbmVkITtcbiAgICB9XG4gIH0pO1xuICBqYXNtaW5lLmFkZE1hdGNoZXJzKHtcbiAgICB0b0JlUHJvbWlzZTogZnVuY3Rpb24oKSB7XG4gICAgICByZXR1cm4ge1xuICAgICAgICBjb21wYXJlOiBmdW5jdGlvbihhY3R1YWw6IGFueSkge1xuICAgICAgICAgIGNvbnN0IHBhc3MgPSB0eXBlb2YgYWN0dWFsID09PSAnb2JqZWN0JyAmJiB0eXBlb2YgYWN0dWFsLnRoZW4gPT09ICdmdW5jdGlvbic7XG4gICAgICAgICAgcmV0dXJuIHtcbiAgICAgICAgICAgIHBhc3M6IHBhc3MsXG4gICAgICAgICAgICBnZXQgbWVzc2FnZSgpIHtcbiAgICAgICAgICAgICAgcmV0dXJuICdFeHBlY3RlZCAnICsgYWN0dWFsICsgJyB0byBiZSBhIHByb21pc2UnO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH07XG4gICAgICAgIH1cbiAgICAgIH07XG4gICAgfSxcblxuICAgIHRvQmVBbkluc3RhbmNlT2Y6IGZ1bmN0aW9uKCkge1xuICAgICAgcmV0dXJuIHtcbiAgICAgICAgY29tcGFyZTogZnVuY3Rpb24oYWN0dWFsOiBhbnksIGV4cGVjdGVkQ2xhc3M6IGFueSkge1xuICAgICAgICAgIGNvbnN0IHBhc3MgPSB0eXBlb2YgYWN0dWFsID09PSAnb2JqZWN0JyAmJiBhY3R1YWwgaW5zdGFuY2VvZiBleHBlY3RlZENsYXNzO1xuICAgICAgICAgIHJldHVybiB7XG4gICAgICAgICAgICBwYXNzOiBwYXNzLFxuICAgICAgICAgICAgZ2V0IG1lc3NhZ2UoKSB7XG4gICAgICAgICAgICAgIHJldHVybiAnRXhwZWN0ZWQgJyArIGFjdHVhbCArICcgdG8gYmUgYW4gaW5zdGFuY2Ugb2YgJyArIGV4cGVjdGVkQ2xhc3M7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfTtcbiAgICAgICAgfVxuICAgICAgfTtcbiAgICB9LFxuXG4gICAgdG9IYXZlVGV4dDogZnVuY3Rpb24oKSB7XG4gICAgICByZXR1cm4ge1xuICAgICAgICBjb21wYXJlOiBmdW5jdGlvbihhY3R1YWw6IGFueSwgZXhwZWN0ZWRUZXh0OiBzdHJpbmcpIHtcbiAgICAgICAgICBjb25zdCBhY3R1YWxUZXh0ID0gZWxlbWVudFRleHQoYWN0dWFsKTtcbiAgICAgICAgICByZXR1cm4ge1xuICAgICAgICAgICAgcGFzczogYWN0dWFsVGV4dCA9PSBleHBlY3RlZFRleHQsXG4gICAgICAgICAgICBnZXQgbWVzc2FnZSgpIHtcbiAgICAgICAgICAgICAgcmV0dXJuICdFeHBlY3RlZCAnICsgYWN0dWFsVGV4dCArICcgdG8gYmUgZXF1YWwgdG8gJyArIGV4cGVjdGVkVGV4dDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9O1xuICAgICAgICB9XG4gICAgICB9O1xuICAgIH0sXG5cbiAgICB0b0hhdmVDc3NDbGFzczogZnVuY3Rpb24oKSB7XG4gICAgICByZXR1cm4ge2NvbXBhcmU6IGJ1aWxkRXJyb3IoZmFsc2UpLCBuZWdhdGl2ZUNvbXBhcmU6IGJ1aWxkRXJyb3IodHJ1ZSl9O1xuXG4gICAgICBmdW5jdGlvbiBidWlsZEVycm9yKGlzTm90OiBib29sZWFuKSB7XG4gICAgICAgIHJldHVybiBmdW5jdGlvbihhY3R1YWw6IGFueSwgY2xhc3NOYW1lOiBzdHJpbmcpIHtcbiAgICAgICAgICByZXR1cm4ge1xuICAgICAgICAgICAgcGFzczogaGFzQ2xhc3MoYWN0dWFsLCBjbGFzc05hbWUpID09ICFpc05vdCxcbiAgICAgICAgICAgIGdldCBtZXNzYWdlKCkge1xuICAgICAgICAgICAgICByZXR1cm4gYEV4cGVjdGVkICR7YWN0dWFsLm91dGVySFRNTH0gJHtcbiAgICAgICAgICAgICAgICAgIGlzTm90ID8gJ25vdCAnIDogJyd9dG8gY29udGFpbiB0aGUgQ1NTIGNsYXNzIFwiJHtjbGFzc05hbWV9XCJgO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH07XG4gICAgICAgIH07XG4gICAgICB9XG4gICAgfSxcblxuICAgIHRvSGF2ZUNzc1N0eWxlOiBmdW5jdGlvbigpIHtcbiAgICAgIHJldHVybiB7XG4gICAgICAgIGNvbXBhcmU6IGZ1bmN0aW9uKGFjdHVhbDogYW55LCBzdHlsZXM6IHtbazogc3RyaW5nXTogc3RyaW5nfXxzdHJpbmcpIHtcbiAgICAgICAgICBsZXQgYWxsUGFzc2VkOiBib29sZWFuO1xuICAgICAgICAgIGlmICh0eXBlb2Ygc3R5bGVzID09PSAnc3RyaW5nJykge1xuICAgICAgICAgICAgYWxsUGFzc2VkID0gaGFzU3R5bGUoYWN0dWFsLCBzdHlsZXMpO1xuICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICBhbGxQYXNzZWQgPSBPYmplY3Qua2V5cyhzdHlsZXMpLmxlbmd0aCAhPT0gMDtcbiAgICAgICAgICAgIE9iamVjdC5rZXlzKHN0eWxlcykuZm9yRWFjaChwcm9wID0+IHtcbiAgICAgICAgICAgICAgYWxsUGFzc2VkID0gYWxsUGFzc2VkICYmIGhhc1N0eWxlKGFjdHVhbCwgcHJvcCwgc3R5bGVzW3Byb3BdKTtcbiAgICAgICAgICAgIH0pO1xuICAgICAgICAgIH1cblxuICAgICAgICAgIHJldHVybiB7XG4gICAgICAgICAgICBwYXNzOiBhbGxQYXNzZWQsXG4gICAgICAgICAgICBnZXQgbWVzc2FnZSgpIHtcbiAgICAgICAgICAgICAgY29uc3QgZXhwZWN0ZWRWYWx1ZVN0ciA9IHR5cGVvZiBzdHlsZXMgPT09ICdzdHJpbmcnID8gc3R5bGVzIDogSlNPTi5zdHJpbmdpZnkoc3R5bGVzKTtcbiAgICAgICAgICAgICAgcmV0dXJuIGBFeHBlY3RlZCAke2FjdHVhbC5vdXRlckhUTUx9ICR7IWFsbFBhc3NlZCA/ICcgJyA6ICdub3QgJ310byBjb250YWluIHRoZVxuICAgICAgICAgICAgICAgICAgICAgIENTUyAke3R5cGVvZiBzdHlsZXMgPT09ICdzdHJpbmcnID8gJ3Byb3BlcnR5JyA6ICdzdHlsZXMnfSBcIiR7XG4gICAgICAgICAgICAgICAgICBleHBlY3RlZFZhbHVlU3RyfVwiYDtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9O1xuICAgICAgICB9XG4gICAgICB9O1xuICAgIH0sXG5cbiAgICB0b0NvbnRhaW5FcnJvcjogZnVuY3Rpb24oKSB7XG4gICAgICByZXR1cm4ge1xuICAgICAgICBjb21wYXJlOiBmdW5jdGlvbihhY3R1YWw6IGFueSwgZXhwZWN0ZWRUZXh0OiBhbnkpIHtcbiAgICAgICAgICBjb25zdCBlcnJvck1lc3NhZ2UgPSBhY3R1YWwudG9TdHJpbmcoKTtcbiAgICAgICAgICByZXR1cm4ge1xuICAgICAgICAgICAgcGFzczogZXJyb3JNZXNzYWdlLmluZGV4T2YoZXhwZWN0ZWRUZXh0KSA+IC0xLFxuICAgICAgICAgICAgZ2V0IG1lc3NhZ2UoKSB7XG4gICAgICAgICAgICAgIHJldHVybiAnRXhwZWN0ZWQgJyArIGVycm9yTWVzc2FnZSArICcgdG8gY29udGFpbiAnICsgZXhwZWN0ZWRUZXh0O1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH07XG4gICAgICAgIH1cbiAgICAgIH07XG4gICAgfSxcblxuICAgIHRvSW1wbGVtZW50OiBmdW5jdGlvbigpIHtcbiAgICAgIHJldHVybiB7XG4gICAgICAgIGNvbXBhcmU6IGZ1bmN0aW9uKGFjdHVhbE9iamVjdDogYW55LCBleHBlY3RlZEludGVyZmFjZTogYW55KSB7XG4gICAgICAgICAgY29uc3QgaW50UHJvcHMgPSBPYmplY3Qua2V5cyhleHBlY3RlZEludGVyZmFjZS5wcm90b3R5cGUpO1xuXG4gICAgICAgICAgY29uc3QgbWlzc2VkTWV0aG9kczogYW55W10gPSBbXTtcbiAgICAgICAgICBpbnRQcm9wcy5mb3JFYWNoKChrKSA9PiB7XG4gICAgICAgICAgICBpZiAoIWFjdHVhbE9iamVjdC5jb25zdHJ1Y3Rvci5wcm90b3R5cGVba10pIG1pc3NlZE1ldGhvZHMucHVzaChrKTtcbiAgICAgICAgICB9KTtcblxuICAgICAgICAgIHJldHVybiB7XG4gICAgICAgICAgICBwYXNzOiBtaXNzZWRNZXRob2RzLmxlbmd0aCA9PSAwLFxuICAgICAgICAgICAgZ2V0IG1lc3NhZ2UoKSB7XG4gICAgICAgICAgICAgIHJldHVybiAnRXhwZWN0ZWQgJyArIGFjdHVhbE9iamVjdCArXG4gICAgICAgICAgICAgICAgICAnIHRvIGhhdmUgdGhlIGZvbGxvd2luZyBtZXRob2RzOiAnICsgbWlzc2VkTWV0aG9kcy5qb2luKCcsICcpO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH07XG4gICAgICAgIH1cbiAgICAgIH07XG4gICAgfSxcblxuICAgIHRvQ29udGFpbkNvbXBvbmVudDogZnVuY3Rpb24oKSB7XG4gICAgICByZXR1cm4ge1xuICAgICAgICBjb21wYXJlOiBmdW5jdGlvbihhY3R1YWxGaXh0dXJlOiBhbnksIGV4cGVjdGVkQ29tcG9uZW50VHlwZTogVHlwZTxhbnk+KSB7XG4gICAgICAgICAgY29uc3QgZmFpbE91dHB1dCA9IGFyZ3VtZW50c1syXTtcbiAgICAgICAgICBjb25zdCBtc2dGbiA9IChtc2c6IHN0cmluZyk6IHN0cmluZyA9PiBbbXNnLCBmYWlsT3V0cHV0XS5maWx0ZXIoQm9vbGVhbikuam9pbignLCAnKTtcblxuICAgICAgICAgIC8vIHZlcmlmeSBjb3JyZWN0IGFjdHVhbCB0eXBlXG4gICAgICAgICAgaWYgKCEoYWN0dWFsRml4dHVyZSBpbnN0YW5jZW9mIENvbXBvbmVudEZpeHR1cmUpKSB7XG4gICAgICAgICAgICByZXR1cm4ge1xuICAgICAgICAgICAgICBwYXNzOiBmYWxzZSxcbiAgICAgICAgICAgICAgbWVzc2FnZTogbXNnRm4oYEV4cGVjdGVkIGFjdHVhbCB0byBiZSBvZiB0eXBlIFxcJ0NvbXBvbmVudEZpeHR1cmVcXCcgW2FjdHVhbD0ke1xuICAgICAgICAgICAgICAgICAgYWN0dWFsRml4dHVyZS5jb25zdHJ1Y3Rvci5uYW1lfV1gKVxuICAgICAgICAgICAgfTtcbiAgICAgICAgICB9XG5cbiAgICAgICAgICBjb25zdCBmb3VuZCA9ICEhYWN0dWFsRml4dHVyZS5kZWJ1Z0VsZW1lbnQucXVlcnkoQnkuZGlyZWN0aXZlKGV4cGVjdGVkQ29tcG9uZW50VHlwZSkpO1xuICAgICAgICAgIHJldHVybiBmb3VuZCA/XG4gICAgICAgICAgICAgIHtwYXNzOiB0cnVlfSA6XG4gICAgICAgICAgICAgIHtwYXNzOiBmYWxzZSwgbWVzc2FnZTogbXNnRm4oYEV4cGVjdGVkICR7ZXhwZWN0ZWRDb21wb25lbnRUeXBlLm5hbWV9IHRvIHNob3dgKX07XG4gICAgICAgIH1cbiAgICAgIH07XG4gICAgfVxuICB9KTtcbn0pO1xuXG5mdW5jdGlvbiBlbGVtZW50VGV4dChuOiBhbnkpOiBzdHJpbmcge1xuICBjb25zdCBoYXNOb2RlcyA9IChuOiBhbnkpID0+IHtcbiAgICBjb25zdCBjaGlsZHJlbiA9IG4uY2hpbGROb2RlcztcbiAgICByZXR1cm4gY2hpbGRyZW4gJiYgY2hpbGRyZW4ubGVuZ3RoID4gMDtcbiAgfTtcblxuICBpZiAobiBpbnN0YW5jZW9mIEFycmF5KSB7XG4gICAgcmV0dXJuIG4ubWFwKGVsZW1lbnRUZXh0KS5qb2luKCcnKTtcbiAgfVxuXG4gIGlmIChpc0NvbW1lbnROb2RlKG4pKSB7XG4gICAgcmV0dXJuICcnO1xuICB9XG5cbiAgaWYgKGdldERPTSgpLmlzRWxlbWVudE5vZGUobikgJiYgKG4gYXMgRWxlbWVudCkudGFnTmFtZSA9PSAnQ09OVEVOVCcpIHtcbiAgICByZXR1cm4gZWxlbWVudFRleHQoQXJyYXkucHJvdG90eXBlLnNsaWNlLmFwcGx5KCg8YW55Pm4pLmdldERpc3RyaWJ1dGVkTm9kZXMoKSkpO1xuICB9XG5cbiAgaWYgKGhhc1NoYWRvd1Jvb3QobikpIHtcbiAgICByZXR1cm4gZWxlbWVudFRleHQoY2hpbGROb2Rlc0FzTGlzdCgoPGFueT5uKS5zaGFkb3dSb290KSk7XG4gIH1cblxuICBpZiAoaGFzTm9kZXMobikpIHtcbiAgICByZXR1cm4gZWxlbWVudFRleHQoY2hpbGROb2Rlc0FzTGlzdChuKSk7XG4gIH1cblxuICByZXR1cm4gKG4gYXMgYW55KS50ZXh0Q29udGVudDtcbn1cblxuZnVuY3Rpb24gaGFzU2hhZG93Um9vdChub2RlOiBhbnkpOiBib29sZWFuIHtcbiAgcmV0dXJuIG5vZGUuc2hhZG93Um9vdCAhPSBudWxsICYmIG5vZGUgaW5zdGFuY2VvZiBIVE1MRWxlbWVudDtcbn1cbiJdfQ==