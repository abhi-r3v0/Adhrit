/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/testing/src/testing_internal.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ɵisPromise as isPromise } from '@angular/core';
import { global } from '@angular/core/src/util/global';
import { AsyncTestCompleter } from './async_test_completer';
import { getTestBed } from './test_bed';
export { AsyncTestCompleter } from './async_test_completer';
export { inject } from './test_bed';
export { Log } from './logger';
export { MockNgZone } from './ng_zone_mock';
/** @type {?} */
export const proxy = (/**
 * @param {?} t
 * @return {?}
 */
(t) => t);
/** @type {?} */
const _global = (/** @type {?} */ ((typeof window === 'undefined' ? global : window)));
/** @type {?} */
export const afterEach = _global.afterEach;
/** @type {?} */
export const expect = _global.expect;
/** @type {?} */
const jsmBeforeEach = _global.beforeEach;
/** @type {?} */
const jsmDescribe = _global.describe;
/** @type {?} */
const jsmDDescribe = _global.fdescribe;
/** @type {?} */
const jsmXDescribe = _global.xdescribe;
/** @type {?} */
const jsmIt = _global.it;
/** @type {?} */
const jsmFIt = _global.fit;
/** @type {?} */
const jsmXIt = _global.xit;
/** @type {?} */
const runnerStack = [];
jasmine.DEFAULT_TIMEOUT_INTERVAL = 3000;
/** @type {?} */
const globalTimeOut = jasmine.DEFAULT_TIMEOUT_INTERVAL;
/** @type {?} */
const testBed = getTestBed();
/**
 * Mechanism to run `beforeEach()` functions of Angular tests.
 *
 * Note: Jasmine own `beforeEach` is used by this library to handle DI providers.
 */
class BeforeEachRunner {
    /**
     * @param {?} _parent
     */
    constructor(_parent) {
        this._parent = _parent;
        this._fns = [];
    }
    /**
     * @param {?} fn
     * @return {?}
     */
    beforeEach(fn) { this._fns.push(fn); }
    /**
     * @return {?}
     */
    run() {
        if (this._parent)
            this._parent.run();
        this._fns.forEach((/**
         * @param {?} fn
         * @return {?}
         */
        (fn) => { fn(); }));
    }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    BeforeEachRunner.prototype._fns;
    /**
     * @type {?}
     * @private
     */
    BeforeEachRunner.prototype._parent;
}
// Reset the test providers before each test
jsmBeforeEach((/**
 * @return {?}
 */
() => { testBed.resetTestingModule(); }));
/**
 * @param {?} jsmFn
 * @param {...?} args
 * @return {?}
 */
function _describe(jsmFn, ...args) {
    /** @type {?} */
    const parentRunner = runnerStack.length === 0 ? null : runnerStack[runnerStack.length - 1];
    /** @type {?} */
    const runner = new BeforeEachRunner((/** @type {?} */ (parentRunner)));
    runnerStack.push(runner);
    /** @type {?} */
    const suite = jsmFn(...args);
    runnerStack.pop();
    return suite;
}
/**
 * @param {...?} args
 * @return {?}
 */
export function describe(...args) {
    return _describe(jsmDescribe, ...args);
}
/**
 * @param {...?} args
 * @return {?}
 */
export function ddescribe(...args) {
    return _describe(jsmDDescribe, ...args);
}
/**
 * @param {...?} args
 * @return {?}
 */
export function xdescribe(...args) {
    return _describe(jsmXDescribe, ...args);
}
/**
 * @param {?} fn
 * @return {?}
 */
export function beforeEach(fn) {
    if (runnerStack.length > 0) {
        // Inside a describe block, beforeEach() uses a BeforeEachRunner
        runnerStack[runnerStack.length - 1].beforeEach(fn);
    }
    else {
        // Top level beforeEach() are delegated to jasmine
        jsmBeforeEach(fn);
    }
}
/**
 * Allows overriding default providers defined in test_injector.js.
 *
 * The given function must return a list of DI providers.
 *
 * Example:
 *
 *   beforeEachProviders(() => [
 *     {provide: Compiler, useClass: MockCompiler},
 *     {provide: SomeToken, useValue: myValue},
 *   ]);
 * @param {?} fn
 * @return {?}
 */
export function beforeEachProviders(fn) {
    jsmBeforeEach((/**
     * @return {?}
     */
    () => {
        /** @type {?} */
        const providers = fn();
        if (!providers)
            return;
        testBed.configureTestingModule({ providers: providers });
    }));
}
/**
 * @param {?} jsmFn
 * @param {?} testName
 * @param {?} testFn
 * @param {?=} testTimeout
 * @return {?}
 */
function _it(jsmFn, testName, testFn, testTimeout = 0) {
    if (runnerStack.length == 0) {
        // This left here intentionally, as we should never get here, and it aids debugging.
        // tslint:disable-next-line
        debugger;
        throw new Error('Empty Stack!');
    }
    /** @type {?} */
    const runner = runnerStack[runnerStack.length - 1];
    /** @type {?} */
    const timeout = Math.max(globalTimeOut, testTimeout);
    jsmFn(testName, (/**
     * @param {?} done
     * @return {?}
     */
    (done) => {
        /** @type {?} */
        const completerProvider = {
            provide: AsyncTestCompleter,
            useFactory: (/**
             * @return {?}
             */
            () => {
                // Mark the test as async when an AsyncTestCompleter is injected in an it()
                return new AsyncTestCompleter();
            })
        };
        testBed.configureTestingModule({ providers: [completerProvider] });
        runner.run();
        if (testFn.length === 0) {
            // TypeScript doesn't infer the TestFn type without parameters here, so we
            // need to manually cast it.
            /** @type {?} */
            const retVal = ((/** @type {?} */ (testFn)))();
            if (isPromise(retVal)) {
                // Asynchronous test function that returns a Promise - wait for completion.
                retVal.then(done, done.fail);
            }
            else {
                // Synchronous test function - complete immediately.
                done();
            }
        }
        else {
            // Asynchronous test function that takes in 'done' parameter.
            testFn(done);
        }
    }), timeout);
}
/**
 * @param {?} expectation
 * @param {?} assertion
 * @param {?=} timeout
 * @return {?}
 */
export function it(expectation, assertion, timeout) {
    return _it(jsmIt, expectation, assertion, timeout);
}
/**
 * @param {?} expectation
 * @param {?} assertion
 * @param {?=} timeout
 * @return {?}
 */
export function fit(expectation, assertion, timeout) {
    return _it(jsmFIt, expectation, assertion, timeout);
}
/**
 * @param {?} expectation
 * @param {?} assertion
 * @param {?=} timeout
 * @return {?}
 */
export function xit(expectation, assertion, timeout) {
    return _it(jsmXIt, expectation, assertion, timeout);
}
export class SpyObject {
    /**
     * @param {?=} type
     */
    constructor(type) {
        if (type) {
            for (const prop in type.prototype) {
                /** @type {?} */
                let m = null;
                try {
                    m = type.prototype[prop];
                }
                catch (_a) {
                    // As we are creating spys for abstract classes,
                    // these classes might have getters that throw when they are accessed.
                    // As we are only auto creating spys for methods, this
                    // should not matter.
                }
                if (typeof m === 'function') {
                    this.spy(prop);
                }
            }
        }
    }
    /**
     * @param {?} name
     * @return {?}
     */
    spy(name) {
        if (!((/** @type {?} */ (this)))[name]) {
            ((/** @type {?} */ (this)))[name] = jasmine.createSpy(name);
        }
        return ((/** @type {?} */ (this)))[name];
    }
    /**
     * @param {?} name
     * @param {?} value
     * @return {?}
     */
    prop(name, value) { ((/** @type {?} */ (this)))[name] = value; }
    /**
     * @param {?=} object
     * @param {?=} config
     * @param {?=} overrides
     * @return {?}
     */
    static stub(object = null, config = null, overrides = null) {
        if (!(object instanceof SpyObject)) {
            overrides = config;
            config = object;
            object = new SpyObject();
        }
        /** @type {?} */
        const m = Object.assign(Object.assign({}, config), overrides);
        Object.keys(m).forEach((/**
         * @param {?} key
         * @return {?}
         */
        key => { object.spy(key).and.returnValue(m[key]); }));
        return object;
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidGVzdGluZ19pbnRlcm5hbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvdGVzdGluZy9zcmMvdGVzdGluZ19pbnRlcm5hbC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7QUFRQSxPQUFPLEVBQUMsVUFBVSxJQUFJLFNBQVMsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUN0RCxPQUFPLEVBQUMsTUFBTSxFQUFDLE1BQU0sK0JBQStCLENBQUM7QUFFckQsT0FBTyxFQUFDLGtCQUFrQixFQUFDLE1BQU0sd0JBQXdCLENBQUM7QUFDMUQsT0FBTyxFQUFDLFVBQVUsRUFBUyxNQUFNLFlBQVksQ0FBQztBQUU5QyxPQUFPLEVBQUMsa0JBQWtCLEVBQUMsTUFBTSx3QkFBd0IsQ0FBQztBQUMxRCxPQUFPLEVBQUMsTUFBTSxFQUFDLE1BQU0sWUFBWSxDQUFDO0FBRWxDLG9CQUFjLFVBQVUsQ0FBQztBQUN6QiwyQkFBYyxnQkFBZ0IsQ0FBQzs7QUFFL0IsTUFBTSxPQUFPLEtBQUs7Ozs7QUFBbUIsQ0FBQyxDQUFNLEVBQUUsRUFBRSxDQUFDLENBQUMsQ0FBQTs7TUFFNUMsT0FBTyxHQUFHLG1CQUFLLENBQUMsT0FBTyxNQUFNLEtBQUssV0FBVyxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsQ0FBQyxDQUFDLE1BQU0sQ0FBQyxFQUFBOztBQUV0RSxNQUFNLE9BQU8sU0FBUyxHQUFhLE9BQU8sQ0FBQyxTQUFTOztBQUNwRCxNQUFNLE9BQU8sTUFBTSxHQUEwQyxPQUFPLENBQUMsTUFBTTs7TUFFckUsYUFBYSxHQUFHLE9BQU8sQ0FBQyxVQUFVOztNQUNsQyxXQUFXLEdBQUcsT0FBTyxDQUFDLFFBQVE7O01BQzlCLFlBQVksR0FBRyxPQUFPLENBQUMsU0FBUzs7TUFDaEMsWUFBWSxHQUFHLE9BQU8sQ0FBQyxTQUFTOztNQUNoQyxLQUFLLEdBQUcsT0FBTyxDQUFDLEVBQUU7O01BQ2xC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QSxJQUFJLEVBQU8sQ0FBQyxDQUFDLElBQUksQ0FBQyxFQUFFO1lBQ3hCLENBQUMsbUJBQUEsSUFBSSxFQUFPLENBQUMsQ0FBQyxJQUFJLENBQUMsR0FBRyxPQUFPLENBQUMsU0FBUyxDQUFDLElBQUksQ0FBQyxDQUFDO1NBQy9DO1FBQ0QsT0FBTyxDQUFDLG1CQUFBLElBQUksRUFBTyxDQUFDLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDN0IsQ0FBQzs7Ozs7O0lBRUQsSUFBSSxDQUFDLElBQVksRUFBRSxLQUFVLElBQUksQ0FBQyxtQkFBQSxJQUFJLEVBQU8sQ0FBQyxDQUFDLElBQUksQ0FBQyxHQUFHLEtBQUssQ0FBQyxDQUFDLENBQUM7Ozs7Ozs7SUFFL0QsTUFBTSxDQUFDLElBQUksQ0FBQyxTQUFjLElBQUksRUFBRSxTQUFjLElBQUksRUFBRSxZQUFpQixJQUFJO1FBQ3ZFLElBQUksQ0FBQyxDQUFDLE1BQU0sWUFBWSxTQUFTLENBQUMsRUFBRTtZQUNsQyxTQUFTLEdBQUcsTUFBTSxDQUFDO1lBQ25CLE1BQU0sR0FBRyxNQUFNLENBQUM7WUFDaEIsTUFBTSxHQUFHLElBQUksU0FBUyxFQUFFLENBQUM7U0FDMUI7O2NBRUssQ0FBQyxtQ0FBTyxNQUFNLEdBQUssU0FBUyxDQUFDO1FBQ25DLE1BQU0sQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsT0FBTzs7OztRQUFDLEdBQUcsQ0FBQyxFQUFFLEdBQUcsTUFBTSxDQUFDLEdBQUcsQ0FBQyxHQUFHLENBQUMsQ0FBQyxHQUFHLENBQUMsV0FBVyxDQUFDLENBQUMsQ0FBQyxHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFDLENBQUM7UUFDNUUsT0FBTyxNQUFNLENBQUM7SUFDaEIsQ0FBQztDQUNGIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge8m1aXNQcm9taXNlIGFzIGlzUHJvbWlzZX0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge2dsb2JhbH0gZnJvbSAnQGFuZ3VsYXIvY29yZS9zcmMvdXRpbC9nbG9iYWwnO1xuXG5pbXBvcnQge0FzeW5jVGVzdENvbXBsZXRlcn0gZnJvbSAnLi9hc3luY190ZXN0X2NvbXBsZXRlcic7XG5pbXBvcnQge2dldFRlc3RCZWQsIGluamVjdH0gZnJvbSAnLi90ZXN0X2JlZCc7XG5cbmV4cG9ydCB7QXN5bmNUZXN0Q29tcGxldGVyfSBmcm9tICcuL2FzeW5jX3Rlc3RfY29tcGxldGVyJztcbmV4cG9ydCB7aW5qZWN0fSBmcm9tICcuL3Rlc3RfYmVkJztcblxuZXhwb3J0ICogZnJvbSAnLi9sb2dnZXInO1xuZXhwb3J0ICogZnJvbSAnLi9uZ196b25lX21vY2snO1xuXG5leHBvcnQgY29uc3QgcHJveHk6IENsYXNzRGVjb3JhdG9yID0gKHQ6IGFueSkgPT4gdDtcblxuY29uc3QgX2dsb2JhbCA9IDxhbnk+KHR5cGVvZiB3aW5kb3cgPT09ICd1bmRlZmluZWQnID8gZ2xvYmFsIDogd2luZG93KTtcblxuZXhwb3J0IGNvbnN0IGFmdGVyRWFjaDogRnVuY3Rpb24gPSBfZ2xvYmFsLmFmdGVyRWFjaDtcbmV4cG9ydCBjb25zdCBleHBlY3Q6IDxUPihhY3R1YWw6IFQpID0+IGphc21pbmUuTWF0Y2hlcnM8VD4gPSBfZ2xvYmFsLmV4cGVjdDtcblxuY29uc3QganNtQmVmb3JlRWFjaCA9IF9nbG9iYWwuYmVmb3JlRWFjaDtcbmNvbnN0IGpzbURlc2NyaWJlID0gX2dsb2JhbC5kZXNjcmliZTtcbmNvbnN0IGpzbUREZXNjcmliZSA9IF9nbG9iYWwuZmRlc2NyaWJlO1xuY29uc3QganNtWERlc2NyaWJlID0gX2dsb2JhbC54ZGVzY3JpYmU7XG5jb25zdCBqc21JdCA9IF9nbG9iYWwuaXQ7XG5jb25zdCBqc21GSXQgPSBfZ2xvYmFsLmZpdDtcbmNvbnN0IGpzbVhJdCA9IF9nbG9iYWwueGl0O1xuXG5jb25zdCBydW5uZXJTdGFjazogQmVmb3JlRWFjaFJ1bm5lcltdID0gW107XG5qYXNtaW5lLkRFRkFVTFRfVElNRU9VVF9JTlRFUlZBTCA9IDMwMDA7XG5jb25zdCBnbG9iYWxUaW1lT3V0ID0gamFzbWluZS5ERUZBVUxUX1RJTUVPVVRfSU5URVJWQUw7XG5cbmNvbnN0IHRlc3RCZWQgPSBnZXRUZXN0QmVkKCk7XG5cbmV4cG9ydCB0eXBlIFRlc3RGbiA9ICgoZG9uZTogRG9uZUZuKSA9PiBhbnkpIHwgKCgpID0+IGFueSk7XG5cbi8qKlxuICogTWVjaGFuaXNtIHRvIHJ1biBgYmVmb3JlRWFjaCgpYCBmdW5jdGlvbnMgb2YgQW5ndWxhciB0ZXN0cy5cbiAqXG4gKiBOb3RlOiBKYXNtaW5lIG93biBgYmVmb3JlRWFjaGAgaXMgdXNlZCBieSB0aGlzIGxpYnJhcnkgdG8gaGFuZGxlIERJIHByb3ZpZGVycy5cbiAqL1xuY2xhc3MgQmVmb3JlRWFjaFJ1bm5lciB7XG4gIHByaXZhdGUgX2ZuczogQXJyYXk8RnVuY3Rpb24+ID0gW107XG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSBfcGFyZW50OiBCZWZvcmVFYWNoUnVubmVyKSB7fVxuXG4gIGJlZm9yZUVhY2goZm46IEZ1bmN0aW9uKTogdm9pZCB7IHRoaXMuX2Zucy5wdXNoKGZuKTsgfVxuXG4gIHJ1bigpOiB2b2lkIHtcbiAgICBpZiAodGhpcy5fcGFyZW50KSB0aGlzLl9wYXJlbnQucnVuKCk7XG4gICAgdGhpcy5fZm5zLmZvckVhY2goKGZuKSA9PiB7IGZuKCk7IH0pO1xuICB9XG59XG5cbi8vIFJlc2V0IHRoZSB0ZXN0IHByb3ZpZGVycyBiZWZvcmUgZWFjaCB0ZXN0XG5qc21CZWZvcmVFYWNoKCgpID0+IHsgdGVzdEJlZC5yZXNldFRlc3RpbmdNb2R1bGUoKTsgfSk7XG5cbmZ1bmN0aW9uIF9kZXNjcmliZShqc21GbjogRnVuY3Rpb24sIC4uLmFyZ3M6IGFueVtdKSB7XG4gIGNvbnN0IHBhcmVudFJ1bm5lciA9IHJ1bm5lclN0YWNrLmxlbmd0aCA9PT0gMCA/IG51bGwgOiBydW5uZXJTdGFja1tydW5uZXJTdGFjay5sZW5ndGggLSAxXTtcbiAgY29uc3QgcnVubmVyID0gbmV3IEJlZm9yZUVhY2hSdW5uZXIocGFyZW50UnVubmVyICEpO1xuICBydW5uZXJTdGFjay5wdXNoKHJ1bm5lcik7XG4gIGNvbnN0IHN1aXRlID0ganNtRm4oLi4uYXJncyk7XG4gIHJ1bm5lclN0YWNrLnBvcCgpO1xuICByZXR1cm4gc3VpdGU7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBkZXNjcmliZSguLi5hcmdzOiBhbnlbXSk6IHZvaWQge1xuICByZXR1cm4gX2Rlc2NyaWJlKGpzbURlc2NyaWJlLCAuLi5hcmdzKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGRkZXNjcmliZSguLi5hcmdzOiBhbnlbXSk6IHZvaWQge1xuICByZXR1cm4gX2Rlc2NyaWJlKGpzbUREZXNjcmliZSwgLi4uYXJncyk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiB4ZGVzY3JpYmUoLi4uYXJnczogYW55W10pOiB2b2lkIHtcbiAgcmV0dXJuIF9kZXNjcmliZShqc21YRGVzY3JpYmUsIC4uLmFyZ3MpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gYmVmb3JlRWFjaChmbjogRnVuY3Rpb24pOiB2b2lkIHtcbiAgaWYgKHJ1bm5lclN0YWNrLmxlbmd0aCA+IDApIHtcbiAgICAvLyBJbnNpZGUgYSBkZXNjcmliZSBibG9jaywgYmVmb3JlRWFjaCgpIHVzZXMgYSBCZWZvcmVFYWNoUnVubmVyXG4gICAgcnVubmVyU3RhY2tbcnVubmVyU3RhY2subGVuZ3RoIC0gMV0uYmVmb3JlRWFjaChmbik7XG4gIH0gZWxzZSB7XG4gICAgLy8gVG9wIGxldmVsIGJlZm9yZUVhY2goKSBhcmUgZGVsZWdhdGVkIHRvIGphc21pbmVcbiAgICBqc21CZWZvcmVFYWNoKGZuKTtcbiAgfVxufVxuXG4vKipcbiAqIEFsbG93cyBvdmVycmlkaW5nIGRlZmF1bHQgcHJvdmlkZXJzIGRlZmluZWQgaW4gdGVzdF9pbmplY3Rvci5qcy5cbiAqXG4gKiBUaGUgZ2l2ZW4gZnVuY3Rpb24gbXVzdCByZXR1cm4gYSBsaXN0IG9mIERJIHByb3ZpZGVycy5cbiAqXG4gKiBFeGFtcGxlOlxuICpcbiAqICAgYmVmb3JlRWFjaFByb3ZpZGVycygoKSA9PiBbXG4gKiAgICAge3Byb3ZpZGU6IENvbXBpbGVyLCB1c2VDbGFzczogTW9ja0NvbXBpbGVyfSxcbiAqICAgICB7cHJvdmlkZTogU29tZVRva2VuLCB1c2VWYWx1ZTogbXlWYWx1ZX0sXG4gKiAgIF0pO1xuICovXG5leHBvcnQgZnVuY3Rpb24gYmVmb3JlRWFjaFByb3ZpZGVycyhmbjogRnVuY3Rpb24pOiB2b2lkIHtcbiAganNtQmVmb3JlRWFjaCgoKSA9PiB7XG4gICAgY29uc3QgcHJvdmlkZXJzID0gZm4oKTtcbiAgICBpZiAoIXByb3ZpZGVycykgcmV0dXJuO1xuICAgIHRlc3RCZWQuY29uZmlndXJlVGVzdGluZ01vZHVsZSh7cHJvdmlkZXJzOiBwcm92aWRlcnN9KTtcbiAgfSk7XG59XG5cblxuZnVuY3Rpb24gX2l0KGpzbUZuOiBGdW5jdGlvbiwgdGVzdE5hbWU6IHN0cmluZywgdGVzdEZuOiBUZXN0Rm4sIHRlc3RUaW1lb3V0ID0gMCk6IHZvaWQge1xuICBpZiAocnVubmVyU3RhY2subGVuZ3RoID09IDApIHtcbiAgICAvLyBUaGlzIGxlZnQgaGVyZSBpbnRlbnRpb25hbGx5LCBhcyB3ZSBzaG91bGQgbmV2ZXIgZ2V0IGhlcmUsIGFuZCBpdCBhaWRzIGRlYnVnZ2luZy5cbiAgICAvLyB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmVcbiAgICBkZWJ1Z2dlcjtcbiAgICB0aHJvdyBuZXcgRXJyb3IoJ0VtcHR5IFN0YWNrIScpO1xuICB9XG4gIGNvbnN0IHJ1bm5lciA9IHJ1bm5lclN0YWNrW3J1bm5lclN0YWNrLmxlbmd0aCAtIDFdO1xuICBjb25zdCB0aW1lb3V0ID0gTWF0aC5tYXgoZ2xvYmFsVGltZU91dCwgdGVzdFRpbWVvdXQpO1xuXG4gIGpzbUZuKHRlc3ROYW1lLCAoZG9uZTogRG9uZUZuKSA9PiB7XG4gICAgY29uc3QgY29tcGxldGVyUHJvdmlkZXIgPSB7XG4gICAgICBwcm92aWRlOiBBc3luY1Rlc3RDb21wbGV0ZXIsXG4gICAgICB1c2VGYWN0b3J5OiAoKSA9PiB7XG4gICAgICAgIC8vIE1hcmsgdGhlIHRlc3QgYXMgYXN5bmMgd2hlbiBhbiBBc3luY1Rlc3RDb21wbGV0ZXIgaXMgaW5qZWN0ZWQgaW4gYW4gaXQoKVxuICAgICAgICByZXR1cm4gbmV3IEFzeW5jVGVzdENvbXBsZXRlcigpO1xuICAgICAgfVxuICAgIH07XG4gICAgdGVzdEJlZC5jb25maWd1cmVUZXN0aW5nTW9kdWxlKHtwcm92aWRlcnM6IFtjb21wbGV0ZXJQcm92aWRlcl19KTtcbiAgICBydW5uZXIucnVuKCk7XG5cbiAgICBpZiAodGVzdEZuLmxlbmd0aCA9PT0gMCkge1xuICAgICAgLy8gVHlwZVNjcmlwdCBkb2Vzbid0IGluZmVyIHRoZSBUZXN0Rm4gdHlwZSB3aXRob3V0IHBhcmFtZXRlcnMgaGVyZSwgc28gd2VcbiAgICAgIC8vIG5lZWQgdG8gbWFudWFsbHkgY2FzdCBpdC5cbiAgICAgIGNvbnN0IHJldFZhbCA9ICh0ZXN0Rm4gYXMoKSA9PiBhbnkpKCk7XG4gICAgICBpZiAoaXNQcm9taXNlKHJldFZhbCkpIHtcbiAgICAgICAgLy8gQXN5bmNocm9ub3VzIHRlc3QgZnVuY3Rpb24gdGhhdCByZXR1cm5zIGEgUHJvbWlzZSAtIHdhaXQgZm9yIGNvbXBsZXRpb24uXG4gICAgICAgIHJldFZhbC50aGVuKGRvbmUsIGRvbmUuZmFpbCk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICAvLyBTeW5jaHJvbm91cyB0ZXN0IGZ1bmN0aW9uIC0gY29tcGxldGUgaW1tZWRpYXRlbHkuXG4gICAgICAgIGRvbmUoKTtcbiAgICAgIH1cbiAgICB9IGVsc2Uge1xuICAgICAgLy8gQXN5bmNocm9ub3VzIHRlc3QgZnVuY3Rpb24gdGhhdCB0YWtlcyBpbiAnZG9uZScgcGFyYW1ldGVyLlxuICAgICAgdGVzdEZuKGRvbmUpO1xuICAgIH1cbiAgfSwgdGltZW91dCk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpdChleHBlY3RhdGlvbjogc3RyaW5nLCBhc3NlcnRpb246IFRlc3RGbiwgdGltZW91dD86IG51bWJlcik6IHZvaWQge1xuICByZXR1cm4gX2l0KGpzbUl0LCBleHBlY3RhdGlvbiwgYXNzZXJ0aW9uLCB0aW1lb3V0KTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGZpdChleHBlY3RhdGlvbjogc3RyaW5nLCBhc3NlcnRpb246IFRlc3RGbiwgdGltZW91dD86IG51bWJlcik6IHZvaWQge1xuICByZXR1cm4gX2l0KGpzbUZJdCwgZXhwZWN0YXRpb24sIGFzc2VydGlvbiwgdGltZW91dCk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiB4aXQoZXhwZWN0YXRpb246IHN0cmluZywgYXNzZXJ0aW9uOiBUZXN0Rm4sIHRpbWVvdXQ/OiBudW1iZXIpOiB2b2lkIHtcbiAgcmV0dXJuIF9pdChqc21YSXQsIGV4cGVjdGF0aW9uLCBhc3NlcnRpb24sIHRpbWVvdXQpO1xufVxuXG5leHBvcnQgY2xhc3MgU3B5T2JqZWN0IHtcbiAgY29uc3RydWN0b3IodHlwZT86IGFueSkge1xuICAgIGlmICh0eXBlKSB7XG4gICAgICBmb3IgKGNvbnN0IHByb3AgaW4gdHlwZS5wcm90b3R5cGUpIHtcbiAgICAgICAgbGV0IG06IGFueSA9IG51bGw7XG4gICAgICAgIHRyeSB7XG4gICAgICAgICAgbSA9IHR5cGUucHJvdG90eXBlW3Byb3BdO1xuICAgICAgICB9IGNhdGNoIHtcbiAgICAgICAgICAvLyBBcyB3ZSBhcmUgY3JlYXRpbmcgc3B5cyBmb3IgYWJzdHJhY3QgY2xhc3NlcyxcbiAgICAgICAgICAvLyB0aGVzZSBjbGFzc2VzIG1pZ2h0IGhhdmUgZ2V0dGVycyB0aGF0IHRocm93IHdoZW4gdGhleSBhcmUgYWNjZXNzZWQuXG4gICAgICAgICAgLy8gQXMgd2UgYXJlIG9ubHkgYXV0byBjcmVhdGluZyBzcHlzIGZvciBtZXRob2RzLCB0aGlzXG4gICAgICAgICAgLy8gc2hvdWxkIG5vdCBtYXR0ZXIuXG4gICAgICAgIH1cbiAgICAgICAgaWYgKHR5cGVvZiBtID09PSAnZnVuY3Rpb24nKSB7XG4gICAgICAgICAgdGhpcy5zcHkocHJvcCk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cblxuICBzcHkobmFtZTogc3RyaW5nKSB7XG4gICAgaWYgKCEodGhpcyBhcyBhbnkpW25hbWVdKSB7XG4gICAgICAodGhpcyBhcyBhbnkpW25hbWVdID0gamFzbWluZS5jcmVhdGVTcHkobmFtZSk7XG4gICAgfVxuICAgIHJldHVybiAodGhpcyBhcyBhbnkpW25hbWVdO1xuICB9XG5cbiAgcHJvcChuYW1lOiBzdHJpbmcsIHZhbHVlOiBhbnkpIHsgKHRoaXMgYXMgYW55KVtuYW1lXSA9IHZhbHVlOyB9XG5cbiAgc3RhdGljIHN0dWIob2JqZWN0OiBhbnkgPSBudWxsLCBjb25maWc6IGFueSA9IG51bGwsIG92ZXJyaWRlczogYW55ID0gbnVsbCkge1xuICAgIGlmICghKG9iamVjdCBpbnN0YW5jZW9mIFNweU9iamVjdCkpIHtcbiAgICAgIG92ZXJyaWRlcyA9IGNvbmZpZztcbiAgICAgIGNvbmZpZyA9IG9iamVjdDtcbiAgICAgIG9iamVjdCA9IG5ldyBTcHlPYmplY3QoKTtcbiAgICB9XG5cbiAgICBjb25zdCBtID0gey4uLmNvbmZpZywgLi4ub3ZlcnJpZGVzfTtcbiAgICBPYmplY3Qua2V5cyhtKS5mb3JFYWNoKGtleSA9PiB7IG9iamVjdC5zcHkoa2V5KS5hbmQucmV0dXJuVmFsdWUobVtrZXldKTsgfSk7XG4gICAgcmV0dXJuIG9iamVjdDtcbiAgfVxufVxuIl19