/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/testability/testability.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Injectable } from '../di';
import { scheduleMicroTask } from '../util/microtask';
import { NgZone } from '../zone/ng_zone';
/**
 * @record
 */
export function PendingMacrotask() { }
if (false) {
    /** @type {?} */
    PendingMacrotask.prototype.source;
    /** @type {?} */
    PendingMacrotask.prototype.creationLocation;
    /** @type {?|undefined} */
    PendingMacrotask.prototype.runCount;
    /** @type {?|undefined} */
    PendingMacrotask.prototype.data;
}
/**
 * @record
 */
export function TaskData() { }
if (false) {
    /** @type {?|undefined} */
    TaskData.prototype.target;
    /** @type {?|undefined} */
    TaskData.prototype.delay;
    /** @type {?|undefined} */
    TaskData.prototype.isPeriodic;
}
/**
 * @record
 */
function WaitCallback() { }
if (false) {
    /** @type {?} */
    WaitCallback.prototype.timeoutId;
    /** @type {?} */
    WaitCallback.prototype.doneCb;
    /** @type {?|undefined} */
    WaitCallback.prototype.updateCb;
}
/**
 * The Testability service provides testing hooks that can be accessed from
 * the browser and by services such as Protractor. Each bootstrapped Angular
 * application on the page will have an instance of Testability.
 * \@publicApi
 */
export class Testability {
    /**
     * @param {?} _ngZone
     */
    constructor(_ngZone) {
        this._ngZone = _ngZone;
        this._pendingCount = 0;
        this._isZoneStable = true;
        /**
         * Whether any work was done since the last 'whenStable' callback. This is
         * useful to detect if this could have potentially destabilized another
         * component while it is stabilizing.
         * \@internal
         */
        this._didWork = false;
        this._callbacks = [];
        this.taskTrackingZone = null;
        this._watchAngularEvents();
        _ngZone.run((/**
         * @return {?}
         */
        () => {
            this.taskTrackingZone =
                typeof Zone == 'undefined' ? null : Zone.current.get('TaskTrackingZone');
        }));
    }
    /**
     * @private
     * @return {?}
     */
    _watchAngularEvents() {
        this._ngZone.onUnstable.subscribe({
            next: (/**
             * @return {?}
             */
            () => {
                this._didWork = true;
                this._isZoneStable = false;
            })
        });
        this._ngZone.runOutsideAngular((/**
         * @return {?}
         */
        () => {
            this._ngZone.onStable.subscribe({
                next: (/**
                 * @return {?}
                 */
                () => {
                    NgZone.assertNotInAngularZone();
                    scheduleMicroTask((/**
                     * @return {?}
                     */
                    () => {
                        this._isZoneStable = true;
                        this._runCallbacksIfReady();
                    }));
                })
            });
        }));
    }
    /**
     * Increases the number of pending request
     * @deprecated pending requests are now tracked with zones.
     * @return {?}
     */
    increasePendingRequestCount() {
        this._pendingCount += 1;
        this._didWork = true;
        return this._pendingCount;
    }
    /**
     * Decreases the number of pending request
     * @deprecated pending requests are now tracked with zones
     * @return {?}
     */
    decreasePendingRequestCount() {
        this._pendingCount -= 1;
        if (this._pendingCount < 0) {
            throw new Error('pending async requests below zero');
        }
        this._runCallbacksIfReady();
        return this._pendingCount;
    }
    /**
     * Whether an associated application is stable
     * @return {?}
     */
    isStable() {
        return this._isZoneStable && this._pendingCount === 0 && !this._ngZone.hasPendingMacrotasks;
    }
    /**
     * @private
     * @return {?}
     */
    _runCallbacksIfReady() {
        if (this.isStable()) {
            // Schedules the call backs in a new frame so that it is always async.
            scheduleMicroTask((/**
             * @return {?}
             */
            () => {
                while (this._callbacks.length !== 0) {
                    /** @type {?} */
                    let cb = (/** @type {?} */ (this._callbacks.pop()));
                    clearTimeout(cb.timeoutId);
                    cb.doneCb(this._didWork);
                }
                this._didWork = false;
            }));
        }
        else {
            // Still not stable, send updates.
            /** @type {?} */
            let pending = this.getPendingTasks();
            this._callbacks = this._callbacks.filter((/**
             * @param {?} cb
             * @return {?}
             */
            (cb) => {
                if (cb.updateCb && cb.updateCb(pending)) {
                    clearTimeout(cb.timeoutId);
                    return false;
                }
                return true;
            }));
            this._didWork = true;
        }
    }
    /**
     * @private
     * @return {?}
     */
    getPendingTasks() {
        if (!this.taskTrackingZone) {
            return [];
        }
        // Copy the tasks data so that we don't leak tasks.
        return this.taskTrackingZone.macroTasks.map((/**
         * @param {?} t
         * @return {?}
         */
        (t) => {
            return {
                source: t.source,
                // From TaskTrackingZone:
                // https://github.com/angular/zone.js/blob/master/lib/zone-spec/task-tracking.ts#L40
                creationLocation: (/** @type {?} */ (((/** @type {?} */ (t))).creationLocation)),
                data: t.data
            };
        }));
    }
    /**
     * @private
     * @param {?} cb
     * @param {?=} timeout
     * @param {?=} updateCb
     * @return {?}
     */
    addCallback(cb, timeout, updateCb) {
        /** @type {?} */
        let timeoutId = -1;
        if (timeout && timeout > 0) {
            timeoutId = setTimeout((/**
             * @return {?}
             */
            () => {
                this._callbacks = this._callbacks.filter((/**
                 * @param {?} cb
                 * @return {?}
                 */
                (cb) => cb.timeoutId !== timeoutId));
                cb(this._didWork, this.getPendingTasks());
            }), timeout);
        }
        this._callbacks.push((/** @type {?} */ ({ doneCb: cb, timeoutId: timeoutId, updateCb: updateCb })));
    }
    /**
     * Wait for the application to be stable with a timeout. If the timeout is reached before that
     * happens, the callback receives a list of the macro tasks that were pending, otherwise null.
     *
     * @param {?} doneCb The callback to invoke when Angular is stable or the timeout expires
     *    whichever comes first.
     * @param {?=} timeout Optional. The maximum time to wait for Angular to become stable. If not
     *    specified, whenStable() will wait forever.
     * @param {?=} updateCb Optional. If specified, this callback will be invoked whenever the set of
     *    pending macrotasks changes. If this callback returns true doneCb will not be invoked
     *    and no further updates will be issued.
     * @return {?}
     */
    whenStable(doneCb, timeout, updateCb) {
        if (updateCb && !this.taskTrackingZone) {
            throw new Error('Task tracking zone is required when passing an update callback to ' +
                'whenStable(). Is "zone.js/dist/task-tracking.js" loaded?');
        }
        // These arguments are 'Function' above to keep the public API simple.
        this.addCallback((/** @type {?} */ (doneCb)), timeout, (/** @type {?} */ (updateCb)));
        this._runCallbacksIfReady();
    }
    /**
     * Get the number of pending requests
     * @deprecated pending requests are now tracked with zones
     * @return {?}
     */
    getPendingRequestCount() { return this._pendingCount; }
    /**
     * Find providers by name
     * @param {?} using The root element to search from
     * @param {?} provider The name of binding variable
     * @param {?} exactMatch Whether using exactMatch
     * @return {?}
     */
    findProviders(using, provider, exactMatch) {
        // TODO(juliemr): implement.
        return [];
    }
}
Testability.decorators = [
    { type: Injectable }
];
/** @nocollapse */
Testability.ctorParameters = () => [
    { type: NgZone }
];
if (false) {
    /**
     * @type {?}
     * @private
     */
    Testability.prototype._pendingCount;
    /**
     * @type {?}
     * @private
     */
    Testability.prototype._isZoneStable;
    /**
     * Whether any work was done since the last 'whenStable' callback. This is
     * useful to detect if this could have potentially destabilized another
     * component while it is stabilizing.
     * \@internal
     * @type {?}
     * @private
     */
    Testability.prototype._didWork;
    /**
     * @type {?}
     * @private
     */
    Testability.prototype._callbacks;
    /**
     * @type {?}
     * @private
     */
    Testability.prototype.taskTrackingZone;
    /**
     * @type {?}
     * @private
     */
    Testability.prototype._ngZone;
}
/**
 * A global registry of {\@link Testability} instances for specific elements.
 * \@publicApi
 */
export class TestabilityRegistry {
    constructor() {
        /**
         * \@internal
         */
        this._applications = new Map();
        _testabilityGetter.addToWindow(this);
    }
    /**
     * Registers an application with a testability hook so that it can be tracked
     * @param {?} token token of application, root element
     * @param {?} testability Testability hook
     * @return {?}
     */
    registerApplication(token, testability) {
        this._applications.set(token, testability);
    }
    /**
     * Unregisters an application.
     * @param {?} token token of application, root element
     * @return {?}
     */
    unregisterApplication(token) { this._applications.delete(token); }
    /**
     * Unregisters all applications
     * @return {?}
     */
    unregisterAllApplications() { this._applications.clear(); }
    /**
     * Get a testability hook associated with the application
     * @param {?} elem root element
     * @return {?}
     */
    getTestability(elem) { return this._applications.get(elem) || null; }
    /**
     * Get all registered testabilities
     * @return {?}
     */
    getAllTestabilities() { return Array.from(this._applications.values()); }
    /**
     * Get all registered applications(root elements)
     * @return {?}
     */
    getAllRootElements() { return Array.from(this._applications.keys()); }
    /**
     * Find testability of a node in the Tree
     * @param {?} elem node
     * @param {?=} findInAncestors whether finding testability in ancestors if testability was not found in
     * current node
     * @return {?}
     */
    findTestabilityInTree(elem, findInAncestors = true) {
        return _testabilityGetter.findTestabilityInTree(this, elem, findInAncestors);
    }
}
TestabilityRegistry.decorators = [
    { type: Injectable }
];
/** @nocollapse */
TestabilityRegistry.ctorParameters = () => [];
if (false) {
    /**
     * \@internal
     * @type {?}
     */
    TestabilityRegistry.prototype._applications;
}
/**
 * Adapter interface for retrieving the `Testability` service associated for a
 * particular context.
 *
 * \@publicApi
 * @record
 */
export function GetTestability() { }
if (false) {
    /**
     * @param {?} registry
     * @return {?}
     */
    GetTestability.prototype.addToWindow = function (registry) { };
    /**
     * @param {?} registry
     * @param {?} elem
     * @param {?} findInAncestors
     * @return {?}
     */
    GetTestability.prototype.findTestabilityInTree = function (registry, elem, findInAncestors) { };
}
class _NoopGetTestability {
    /**
     * @param {?} registry
     * @return {?}
     */
    addToWindow(registry) { }
    /**
     * @param {?} registry
     * @param {?} elem
     * @param {?} findInAncestors
     * @return {?}
     */
    findTestabilityInTree(registry, elem, findInAncestors) {
        return null;
    }
}
/**
 * Set the {\@link GetTestability} implementation used by the Angular testing framework.
 * \@publicApi
 * @param {?} getter
 * @return {?}
 */
export function setTestabilityGetter(getter) {
    _testabilityGetter = getter;
}
/** @type {?} */
let _testabilityGetter = new _NoopGetTestability();
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidGVzdGFiaWxpdHkuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy90ZXN0YWJpbGl0eS90ZXN0YWJpbGl0eS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7QUFRQSxPQUFPLEVBQUMsVUFBVSxFQUFDLE1BQU0sT0FBTyxDQUFDO0FBQ2pDLE9BQU8sRUFBQyxpQkFBaUIsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBQ3BELE9BQU8sRUFBQyxNQUFNLEVBQUMsTUFBTSxpQkFBaUIsQ0FBQzs7OztBQWV2QyxzQ0FLQzs7O0lBSkMsa0NBQWU7O0lBQ2YsNENBQXdCOztJQUN4QixvQ0FBa0I7O0lBQ2xCLGdDQUFnQjs7Ozs7QUFHbEIsOEJBSUM7OztJQUhDLDBCQUF3Qjs7SUFDeEIseUJBQWU7O0lBQ2YsOEJBQXFCOzs7OztBQU92QiwyQkFNQzs7O0lBSEMsaUNBQWU7O0lBQ2YsOEJBQXFCOztJQUNyQixnQ0FBMEI7Ozs7Ozs7O0FBVTVCLE1BQU0sT0FBTyxXQUFXOzs7O0lBY3RCLFlBQW9CLE9BQWU7UUFBZixZQUFPLEdBQVAsT0FBTyxDQUFRO1FBYjNCLGtCQUFhLEdBQVcsQ0FBQyxDQUFDO1FBQzFCLGtCQUFhLEdBQVksSUFBSSxDQUFDOzs7Ozs7O1FBTzlCLGFBQVEsR0FBWSxLQUFLLENBQUM7UUFDMUIsZUFBVSxHQUFtQixFQUFFLENBQUM7UUFFaEMscUJBQWdCLEdBQThCLElBQUksQ0FBQztRQUd6RCxJQUFJLENBQUMsbUJBQW1CLEVBQUUsQ0FBQztRQUMzQixPQUFPLENBQUMsR0FBRzs7O1FBQUMsR0FBRyxFQUFFO1lBQ2YsSUFBSSxDQUFDLGdCQUFnQjtnQkFDakIsT0FBTyxJQUFJLElBQUksV0FBVyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsR0FBRyxDQUFDLGtCQUFrQixDQUFDLENBQUM7UUFDL0UsQ0FBQyxFQUFDLENBQUM7SUFDTCxDQUFDOzs7OztJQUVPLG1CQUFtQjtRQUN6QixJQUFJLENBQUMsT0FBTyxDQUFDLFVBQVUsQ0FBQyxTQUFTLENBQUM7WUFDaEMsSUFBSTs7O1lBQUUsR0FBRyxFQUFFO2dCQUNULElBQUksQ0FBQyxRQUFRLEdBQUcsSUFBSSxDQUFDO2dCQUNyQixJQUFJLENBQUMsYUFBYSxHQUFHLEtBQUssQ0FBQztZQUM3QixDQUFDLENBQUE7U0FDRixDQUFDLENBQUM7UUFFSCxJQUFJLENBQUMsT0FBTyxDQUFDLGlCQUFpQjs7O1FBQUMsR0FBRyxFQUFFO1lBQ2xDLElBQUksQ0FBQyxPQUFPLENBQUMsUUFBUSxDQUFDLFNBQVMsQ0FBQztnQkFDOUIsSUFBSTs7O2dCQUFFLEdBQUcsRUFBRTtvQkFDVCxNQUFNLENBQUMsc0JBQXNCLEVBQUUsQ0FBQztvQkFDaEMsaUJBQWlCOzs7b0JBQUMsR0FBRyxFQUFFO3dCQUNyQixJQUFJLENBQUMsYUFBYSxHQUFHLElBQUksQ0FBQzt3QkFDMUIsSUFBSSxDQUFDLG9CQUFvQixFQUFFLENBQUM7b0JBQzlCLENBQUMsRUFBQyxDQUFDO2dCQUNMLENBQUMsQ0FBQTthQUNGLENBQUMsQ0FBQztRQUNMLENBQUMsRUFBQyxDQUFDO0lBQ0wsQ0FBQzs7Ozs7O0lBTUQsMkJBQTJCO1FBQ3pCLElBQUksQ0FBQyxhQUFhLElBQUksQ0FBQyxDQUFDO1FBQ3hCLElBQUksQ0FBQyxRQUFRLEdBQUcsSUFBSSxDQUFDO1FBQ3JCLE9BQU8sSUFBSSxDQUFDLGFBQWEsQ0FBQztJQUM1QixDQUFDOzs7Ozs7SUFNRCwyQkFBMkI7UUFDekIsSUFBSSxDQUFDLGFBQWEsSUFBSSxDQUFDLENBQUM7UUFDeEIsSUFBSSxJQUFJLENBQUMsYUFBYSxHQUFHLENBQUMsRUFBRTtZQUMxQixNQUFNLElBQUksS0FBSyxDQUFDLG1DQUFtQyxDQUFDLENBQUM7U0FDdEQ7UUFDRCxJQUFJLENBQUMsb0JBQW9CLEVBQUUsQ0FBQztRQUM1QixPQUFPLElBQUksQ0FBQyxhQUFhLENBQUM7SUFDNUIsQ0FBQzs7Ozs7SUFLRCxRQUFRO1FBQ04sT0FBTyxJQUFJLENBQUMsYUFBYSxJQUFJLElBQUksQ0FBQyxhQUFhLEtBQUssQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLE9BQU8sQ0FBQyxvQkFBb0IsQ0FBQztJQUM5RixDQUFDOzs7OztJQUVPLG9CQUFvQjtRQUMxQixJQUFJLElBQUksQ0FBQyxRQUFRLEVBQUUsRUFBRTtZQUNuQixzRUFBc0U7WUFDdEUsaUJBQWlCOzs7WUFBQyxHQUFHLEVBQUU7Z0JBQ3JCLE9BQU8sSUFBSSxDQUFDLFVBQVUsQ0FBQyxNQUFNLEtBQUssQ0FBQyxFQUFFOzt3QkFDL0IsRUFBRSxHQUFHLG1CQUFBLElBQUksQ0FBQyxVQUFVLENBQUMsR0FBRyxFQUFFLEVBQUU7b0JBQ2hDLFlBQVksQ0FBQyxFQUFFLENBQUMsU0FBUyxDQUFDLENBQUM7b0JBQzNCLEVBQUUsQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxDQUFDO2lCQUMxQjtnQkFDRCxJQUFJLENBQUMsUUFBUSxHQUFHLEtBQUssQ0FBQztZQUN4QixDQUFDLEVBQUMsQ0FBQztTQUNKO2FBQU07OztnQkFFRCxPQUFPLEdBQUcsSUFBSSxDQUFDLGVBQWUsRUFBRTtZQUNwQyxJQUFJLENBQUMsVUFBVSxHQUFHLElBQUksQ0FBQyxVQUFVLENBQUMsTUFBTTs7OztZQUFDLENBQUMsRUFBRSxFQUFFLEVBQUU7Z0JBQzlDLElBQUksRUFBRSxDQUFDLFFBQVEsSUFBSSxFQUFFLENBQUMsUUFBUSxDQUFDLE9BQU8sQ0FBQyxFQUFFO29CQUN2QyxZQUFZLENBQUMsRUFBRSxDQUFDLFNBQVMsQ0FBQyxDQUFDO29CQUMzQixPQUFPLEtBQUssQ0FBQztpQkFDZDtnQkFFRCxPQUFPLElBQUksQ0FBQztZQUNkLENBQUMsRUFBQyxDQUFDO1lBRUgsSUFBSSxDQUFDLFFBQVEsR0FBRyxJQUFJLENBQUM7U0FDdEI7SUFDSCxDQUFDOzs7OztJQUVPLGVBQWU7UUFDckIsSUFBSSxDQUFDLElBQUksQ0FBQyxnQkFBZ0IsRUFBRTtZQUMxQixPQUFPLEVBQUUsQ0FBQztTQUNYO1FBRUQsbURBQW1EO1FBQ25ELE9BQU8sSUFBSSxDQUFDLGdCQUFnQixDQUFDLFVBQVUsQ0FBQyxHQUFHOzs7O1FBQUMsQ0FBQyxDQUFPLEVBQUUsRUFBRTtZQUN0RCxPQUFPO2dCQUNMLE1BQU0sRUFBRSxDQUFDLENBQUMsTUFBTTs7O2dCQUdoQixnQkFBZ0IsRUFBRSxtQkFBQSxDQUFDLG1CQUFBLENBQUMsRUFBTyxDQUFDLENBQUMsZ0JBQWdCLEVBQVM7Z0JBQ3RELElBQUksRUFBRSxDQUFDLENBQUMsSUFBSTthQUNiLENBQUM7UUFDSixDQUFDLEVBQUMsQ0FBQztJQUNMLENBQUM7Ozs7Ozs7O0lBRU8sV0FBVyxDQUFDLEVBQWdCLEVBQUUsT0FBZ0IsRUFBRSxRQUF5Qjs7WUFDM0UsU0FBUyxHQUFRLENBQUMsQ0FBQztRQUN2QixJQUFJLE9BQU8sSUFBSSxPQUFPLEdBQUcsQ0FBQyxFQUFFO1lBQzFCLFNBQVMsR0FBRyxVQUFVOzs7WUFBQyxHQUFHLEVBQUU7Z0JBQzFCLElBQUksQ0FBQyxVQUFVLEdBQUcsSUFBSSxDQUFDLFVBQVUsQ0FBQyxNQUFNOzs7O2dCQUFDLENBQUMsRUFBRSxFQUFFLEVBQUUsQ0FBQyxFQUFFLENBQUMsU0FBUyxLQUFLLFNBQVMsRUFBQyxDQUFDO2dCQUM3RSxFQUFFLENBQUMsSUFBSSxDQUFDLFFBQVEsRUFBRSxJQUFJLENBQUMsZUFBZSxFQUFFLENBQUMsQ0FBQztZQUM1QyxDQUFDLEdBQUUsT0FBTyxDQUFDLENBQUM7U0FDYjtRQUNELElBQUksQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLG1CQUFjLEVBQUMsTUFBTSxFQUFFLEVBQUUsRUFBRSxTQUFTLEVBQUUsU0FBUyxFQUFFLFFBQVEsRUFBRSxRQUFRLEVBQUMsRUFBQSxDQUFDLENBQUM7SUFDN0YsQ0FBQzs7Ozs7Ozs7Ozs7Ozs7SUFjRCxVQUFVLENBQUMsTUFBZ0IsRUFBRSxPQUFnQixFQUFFLFFBQW1CO1FBQ2hFLElBQUksUUFBUSxJQUFJLENBQUMsSUFBSSxDQUFDLGdCQUFnQixFQUFFO1lBQ3RDLE1BQU0sSUFBSSxLQUFLLENBQ1gsb0VBQW9FO2dCQUNwRSwwREFBMEQsQ0FBQyxDQUFDO1NBQ2pFO1FBQ0Qsc0VBQXNFO1FBQ3RFLElBQUksQ0FBQyxXQUFXLENBQUMsbUJBQUEsTUFBTSxFQUFnQixFQUFFLE9BQU8sRUFBRSxtQkFBQSxRQUFRLEVBQWtCLENBQUMsQ0FBQztRQUM5RSxJQUFJLENBQUMsb0JBQW9CLEVBQUUsQ0FBQztJQUM5QixDQUFDOzs7Ozs7SUFNRCxzQkFBc0IsS0FBYSxPQUFPLElBQUksQ0FBQyxhQUFhLENBQUMsQ0FBQyxDQUFDOzs7Ozs7OztJQVEvRCxhQUFhLENBQUMsS0FBVSxFQUFFLFFBQWdCLEVBQUUsVUFBbUI7UUFDN0QsNEJBQTRCO1FBQzVCLE9BQU8sRUFBRSxDQUFDO0lBQ1osQ0FBQzs7O1lBdktGLFVBQVU7Ozs7WUE5Q0gsTUFBTTs7Ozs7OztJQWdEWixvQ0FBa0M7Ozs7O0lBQ2xDLG9DQUFzQzs7Ozs7Ozs7O0lBT3RDLCtCQUFrQzs7Ozs7SUFDbEMsaUNBQXdDOzs7OztJQUV4Qyx1Q0FBMkQ7Ozs7O0lBRS9DLDhCQUF1Qjs7Ozs7O0FBZ0tyQyxNQUFNLE9BQU8sbUJBQW1CO0lBSTlCOzs7O1FBRkEsa0JBQWEsR0FBRyxJQUFJLEdBQUcsRUFBb0IsQ0FBQztRQUU1QixrQkFBa0IsQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUFDLENBQUM7SUFBQyxDQUFDOzs7Ozs7O0lBT3ZELG1CQUFtQixDQUFDLEtBQVUsRUFBRSxXQUF3QjtRQUN0RCxJQUFJLENBQUMsYUFBYSxDQUFDLEdBQUcsQ0FBQyxLQUFLLEVBQUUsV0FBVyxDQUFDLENBQUM7SUFDN0MsQ0FBQzs7Ozs7O0lBTUQscUJBQXFCLENBQUMsS0FBVSxJQUFJLElBQUksQ0FBQyxhQUFhLENBQUMsTUFBTSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQzs7Ozs7SUFLdkUseUJBQXlCLEtBQUssSUFBSSxDQUFDLGFBQWEsQ0FBQyxLQUFLLEVBQUUsQ0FBQyxDQUFDLENBQUM7Ozs7OztJQU0zRCxjQUFjLENBQUMsSUFBUyxJQUFzQixPQUFPLElBQUksQ0FBQyxhQUFhLENBQUMsR0FBRyxDQUFDLElBQUksQ0FBQyxJQUFJLElBQUksQ0FBQyxDQUFDLENBQUM7Ozs7O0lBSzVGLG1CQUFtQixLQUFvQixPQUFPLEtBQUssQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLGFBQWEsQ0FBQyxNQUFNLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQzs7Ozs7SUFLeEYsa0JBQWtCLEtBQVksT0FBTyxLQUFLLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxhQUFhLENBQUMsSUFBSSxFQUFFLENBQUMsQ0FBQyxDQUFDLENBQUM7Ozs7Ozs7O0lBUTdFLHFCQUFxQixDQUFDLElBQVUsRUFBRSxrQkFBMkIsSUFBSTtRQUMvRCxPQUFPLGtCQUFrQixDQUFDLHFCQUFxQixDQUFDLElBQUksRUFBRSxJQUFJLEVBQUUsZUFBZSxDQUFDLENBQUM7SUFDL0UsQ0FBQzs7O1lBbkRGLFVBQVU7Ozs7Ozs7OztJQUdULDRDQUE0Qzs7Ozs7Ozs7O0FBeUQ5QyxvQ0FJQzs7Ozs7O0lBSEMsK0RBQWlEOzs7Ozs7O0lBQ2pELGdHQUNxQjs7QUFHdkIsTUFBTSxtQkFBbUI7Ozs7O0lBQ3ZCLFdBQVcsQ0FBQyxRQUE2QixJQUFTLENBQUM7Ozs7Ozs7SUFDbkQscUJBQXFCLENBQUMsUUFBNkIsRUFBRSxJQUFTLEVBQUUsZUFBd0I7UUFFdEYsT0FBTyxJQUFJLENBQUM7SUFDZCxDQUFDO0NBQ0Y7Ozs7Ozs7QUFNRCxNQUFNLFVBQVUsb0JBQW9CLENBQUMsTUFBc0I7SUFDekQsa0JBQWtCLEdBQUcsTUFBTSxDQUFDO0FBQzlCLENBQUM7O0lBRUcsa0JBQWtCLEdBQW1CLElBQUksbUJBQW1CLEVBQUUiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7SW5qZWN0YWJsZX0gZnJvbSAnLi4vZGknO1xuaW1wb3J0IHtzY2hlZHVsZU1pY3JvVGFza30gZnJvbSAnLi4vdXRpbC9taWNyb3Rhc2snO1xuaW1wb3J0IHtOZ1pvbmV9IGZyb20gJy4uL3pvbmUvbmdfem9uZSc7XG5cbi8qKlxuICogVGVzdGFiaWxpdHkgQVBJLlxuICogYGRlY2xhcmVgIGtleXdvcmQgY2F1c2VzIHRzaWNrbGUgdG8gZ2VuZXJhdGUgZXh0ZXJucywgc28gdGhlc2UgbWV0aG9kcyBhcmVcbiAqIG5vdCByZW5hbWVkIGJ5IENsb3N1cmUgQ29tcGlsZXIuXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBkZWNsYXJlIGludGVyZmFjZSBQdWJsaWNUZXN0YWJpbGl0eSB7XG4gIGlzU3RhYmxlKCk6IGJvb2xlYW47XG4gIHdoZW5TdGFibGUoY2FsbGJhY2s6IEZ1bmN0aW9uLCB0aW1lb3V0PzogbnVtYmVyLCB1cGRhdGVDYWxsYmFjaz86IEZ1bmN0aW9uKTogdm9pZDtcbiAgZmluZFByb3ZpZGVycyh1c2luZzogYW55LCBwcm92aWRlcjogc3RyaW5nLCBleGFjdE1hdGNoOiBib29sZWFuKTogYW55W107XG59XG5cbi8vIEFuZ3VsYXIgaW50ZXJuYWwsIG5vdCBpbnRlbmRlZCBmb3IgcHVibGljIEFQSS5cbmV4cG9ydCBpbnRlcmZhY2UgUGVuZGluZ01hY3JvdGFzayB7XG4gIHNvdXJjZTogc3RyaW5nO1xuICBjcmVhdGlvbkxvY2F0aW9uOiBFcnJvcjtcbiAgcnVuQ291bnQ/OiBudW1iZXI7XG4gIGRhdGE/OiBUYXNrRGF0YTtcbn1cblxuZXhwb3J0IGludGVyZmFjZSBUYXNrRGF0YSB7XG4gIHRhcmdldD86IFhNTEh0dHBSZXF1ZXN0O1xuICBkZWxheT86IG51bWJlcjtcbiAgaXNQZXJpb2RpYz86IGJvb2xlYW47XG59XG5cbi8vIEFuZ3VsYXIgaW50ZXJuYWwsIG5vdCBpbnRlbmRlZCBmb3IgcHVibGljIEFQSS5cbmV4cG9ydCB0eXBlIERvbmVDYWxsYmFjayA9IChkaWRXb3JrOiBib29sZWFuLCB0YXNrcz86IFBlbmRpbmdNYWNyb3Rhc2tbXSkgPT4gdm9pZDtcbmV4cG9ydCB0eXBlIFVwZGF0ZUNhbGxiYWNrID0gKHRhc2tzOiBQZW5kaW5nTWFjcm90YXNrW10pID0+IGJvb2xlYW47XG5cbmludGVyZmFjZSBXYWl0Q2FsbGJhY2sge1xuICAvLyBOZWVkcyB0byBiZSAnYW55JyAtIHNldFRpbWVvdXQgcmV0dXJucyBhIG51bWJlciBhY2NvcmRpbmcgdG8gRVM2LCBidXRcbiAgLy8gb24gTm9kZUpTIGl0IHJldHVybnMgYSBUaW1lci5cbiAgdGltZW91dElkOiBhbnk7XG4gIGRvbmVDYjogRG9uZUNhbGxiYWNrO1xuICB1cGRhdGVDYj86IFVwZGF0ZUNhbGxiYWNrO1xufVxuXG4vKipcbiAqIFRoZSBUZXN0YWJpbGl0eSBzZXJ2aWNlIHByb3ZpZGVzIHRlc3RpbmcgaG9va3MgdGhhdCBjYW4gYmUgYWNjZXNzZWQgZnJvbVxuICogdGhlIGJyb3dzZXIgYW5kIGJ5IHNlcnZpY2VzIHN1Y2ggYXMgUHJvdHJhY3Rvci4gRWFjaCBib290c3RyYXBwZWQgQW5ndWxhclxuICogYXBwbGljYXRpb24gb24gdGhlIHBhZ2Ugd2lsbCBoYXZlIGFuIGluc3RhbmNlIG9mIFRlc3RhYmlsaXR5LlxuICogQHB1YmxpY0FwaVxuICovXG5ASW5qZWN0YWJsZSgpXG5leHBvcnQgY2xhc3MgVGVzdGFiaWxpdHkgaW1wbGVtZW50cyBQdWJsaWNUZXN0YWJpbGl0eSB7XG4gIHByaXZhdGUgX3BlbmRpbmdDb3VudDogbnVtYmVyID0gMDtcbiAgcHJpdmF0ZSBfaXNab25lU3RhYmxlOiBib29sZWFuID0gdHJ1ZTtcbiAgLyoqXG4gICAqIFdoZXRoZXIgYW55IHdvcmsgd2FzIGRvbmUgc2luY2UgdGhlIGxhc3QgJ3doZW5TdGFibGUnIGNhbGxiYWNrLiBUaGlzIGlzXG4gICAqIHVzZWZ1bCB0byBkZXRlY3QgaWYgdGhpcyBjb3VsZCBoYXZlIHBvdGVudGlhbGx5IGRlc3RhYmlsaXplZCBhbm90aGVyXG4gICAqIGNvbXBvbmVudCB3aGlsZSBpdCBpcyBzdGFiaWxpemluZy5cbiAgICogQGludGVybmFsXG4gICAqL1xuICBwcml2YXRlIF9kaWRXb3JrOiBib29sZWFuID0gZmFsc2U7XG4gIHByaXZhdGUgX2NhbGxiYWNrczogV2FpdENhbGxiYWNrW10gPSBbXTtcblxuICBwcml2YXRlIHRhc2tUcmFja2luZ1pvbmU6IHttYWNyb1Rhc2tzOiBUYXNrW119fG51bGwgPSBudWxsO1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgX25nWm9uZTogTmdab25lKSB7XG4gICAgdGhpcy5fd2F0Y2hBbmd1bGFyRXZlbnRzKCk7XG4gICAgX25nWm9uZS5ydW4oKCkgPT4ge1xuICAgICAgdGhpcy50YXNrVHJhY2tpbmdab25lID1cbiAgICAgICAgICB0eXBlb2YgWm9uZSA9PSAndW5kZWZpbmVkJyA/IG51bGwgOiBab25lLmN1cnJlbnQuZ2V0KCdUYXNrVHJhY2tpbmdab25lJyk7XG4gICAgfSk7XG4gIH1cblxuICBwcml2YXRlIF93YXRjaEFuZ3VsYXJFdmVudHMoKTogdm9pZCB7XG4gICAgdGhpcy5fbmdab25lLm9uVW5zdGFibGUuc3Vic2NyaWJlKHtcbiAgICAgIG5leHQ6ICgpID0+IHtcbiAgICAgICAgdGhpcy5fZGlkV29yayA9IHRydWU7XG4gICAgICAgIHRoaXMuX2lzWm9uZVN0YWJsZSA9IGZhbHNlO1xuICAgICAgfVxuICAgIH0pO1xuXG4gICAgdGhpcy5fbmdab25lLnJ1bk91dHNpZGVBbmd1bGFyKCgpID0+IHtcbiAgICAgIHRoaXMuX25nWm9uZS5vblN0YWJsZS5zdWJzY3JpYmUoe1xuICAgICAgICBuZXh0OiAoKSA9PiB7XG4gICAgICAgICAgTmdab25lLmFzc2VydE5vdEluQW5ndWxhclpvbmUoKTtcbiAgICAgICAgICBzY2hlZHVsZU1pY3JvVGFzaygoKSA9PiB7XG4gICAgICAgICAgICB0aGlzLl9pc1pvbmVTdGFibGUgPSB0cnVlO1xuICAgICAgICAgICAgdGhpcy5fcnVuQ2FsbGJhY2tzSWZSZWFkeSgpO1xuICAgICAgICAgIH0pO1xuICAgICAgICB9XG4gICAgICB9KTtcbiAgICB9KTtcbiAgfVxuXG4gIC8qKlxuICAgKiBJbmNyZWFzZXMgdGhlIG51bWJlciBvZiBwZW5kaW5nIHJlcXVlc3RcbiAgICogQGRlcHJlY2F0ZWQgcGVuZGluZyByZXF1ZXN0cyBhcmUgbm93IHRyYWNrZWQgd2l0aCB6b25lcy5cbiAgICovXG4gIGluY3JlYXNlUGVuZGluZ1JlcXVlc3RDb3VudCgpOiBudW1iZXIge1xuICAgIHRoaXMuX3BlbmRpbmdDb3VudCArPSAxO1xuICAgIHRoaXMuX2RpZFdvcmsgPSB0cnVlO1xuICAgIHJldHVybiB0aGlzLl9wZW5kaW5nQ291bnQ7XG4gIH1cblxuICAvKipcbiAgICogRGVjcmVhc2VzIHRoZSBudW1iZXIgb2YgcGVuZGluZyByZXF1ZXN0XG4gICAqIEBkZXByZWNhdGVkIHBlbmRpbmcgcmVxdWVzdHMgYXJlIG5vdyB0cmFja2VkIHdpdGggem9uZXNcbiAgICovXG4gIGRlY3JlYXNlUGVuZGluZ1JlcXVlc3RDb3VudCgpOiBudW1iZXIge1xuICAgIHRoaXMuX3BlbmRpbmdDb3VudCAtPSAxO1xuICAgIGlmICh0aGlzLl9wZW5kaW5nQ291bnQgPCAwKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoJ3BlbmRpbmcgYXN5bmMgcmVxdWVzdHMgYmVsb3cgemVybycpO1xuICAgIH1cbiAgICB0aGlzLl9ydW5DYWxsYmFja3NJZlJlYWR5KCk7XG4gICAgcmV0dXJuIHRoaXMuX3BlbmRpbmdDb3VudDtcbiAgfVxuXG4gIC8qKlxuICAgKiBXaGV0aGVyIGFuIGFzc29jaWF0ZWQgYXBwbGljYXRpb24gaXMgc3RhYmxlXG4gICAqL1xuICBpc1N0YWJsZSgpOiBib29sZWFuIHtcbiAgICByZXR1cm4gdGhpcy5faXNab25lU3RhYmxlICYmIHRoaXMuX3BlbmRpbmdDb3VudCA9PT0gMCAmJiAhdGhpcy5fbmdab25lLmhhc1BlbmRpbmdNYWNyb3Rhc2tzO1xuICB9XG5cbiAgcHJpdmF0ZSBfcnVuQ2FsbGJhY2tzSWZSZWFkeSgpOiB2b2lkIHtcbiAgICBpZiAodGhpcy5pc1N0YWJsZSgpKSB7XG4gICAgICAvLyBTY2hlZHVsZXMgdGhlIGNhbGwgYmFja3MgaW4gYSBuZXcgZnJhbWUgc28gdGhhdCBpdCBpcyBhbHdheXMgYXN5bmMuXG4gICAgICBzY2hlZHVsZU1pY3JvVGFzaygoKSA9PiB7XG4gICAgICAgIHdoaWxlICh0aGlzLl9jYWxsYmFja3MubGVuZ3RoICE9PSAwKSB7XG4gICAgICAgICAgbGV0IGNiID0gdGhpcy5fY2FsbGJhY2tzLnBvcCgpICE7XG4gICAgICAgICAgY2xlYXJUaW1lb3V0KGNiLnRpbWVvdXRJZCk7XG4gICAgICAgICAgY2IuZG9uZUNiKHRoaXMuX2RpZFdvcmspO1xuICAgICAgICB9XG4gICAgICAgIHRoaXMuX2RpZFdvcmsgPSBmYWxzZTtcbiAgICAgIH0pO1xuICAgIH0gZWxzZSB7XG4gICAgICAvLyBTdGlsbCBub3Qgc3RhYmxlLCBzZW5kIHVwZGF0ZXMuXG4gICAgICBsZXQgcGVuZGluZyA9IHRoaXMuZ2V0UGVuZGluZ1Rhc2tzKCk7XG4gICAgICB0aGlzLl9jYWxsYmFja3MgPSB0aGlzLl9jYWxsYmFja3MuZmlsdGVyKChjYikgPT4ge1xuICAgICAgICBpZiAoY2IudXBkYXRlQ2IgJiYgY2IudXBkYXRlQ2IocGVuZGluZykpIHtcbiAgICAgICAgICBjbGVhclRpbWVvdXQoY2IudGltZW91dElkKTtcbiAgICAgICAgICByZXR1cm4gZmFsc2U7XG4gICAgICAgIH1cblxuICAgICAgICByZXR1cm4gdHJ1ZTtcbiAgICAgIH0pO1xuXG4gICAgICB0aGlzLl9kaWRXb3JrID0gdHJ1ZTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIGdldFBlbmRpbmdUYXNrcygpOiBQZW5kaW5nTWFjcm90YXNrW10ge1xuICAgIGlmICghdGhpcy50YXNrVHJhY2tpbmdab25lKSB7XG4gICAgICByZXR1cm4gW107XG4gICAgfVxuXG4gICAgLy8gQ29weSB0aGUgdGFza3MgZGF0YSBzbyB0aGF0IHdlIGRvbid0IGxlYWsgdGFza3MuXG4gICAgcmV0dXJuIHRoaXMudGFza1RyYWNraW5nWm9uZS5tYWNyb1Rhc2tzLm1hcCgodDogVGFzaykgPT4ge1xuICAgICAgcmV0dXJuIHtcbiAgICAgICAgc291cmNlOiB0LnNvdXJjZSxcbiAgICAgICAgLy8gRnJvbSBUYXNrVHJhY2tpbmdab25lOlxuICAgICAgICAvLyBodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci96b25lLmpzL2Jsb2IvbWFzdGVyL2xpYi96b25lLXNwZWMvdGFzay10cmFja2luZy50cyNMNDBcbiAgICAgICAgY3JlYXRpb25Mb2NhdGlvbjogKHQgYXMgYW55KS5jcmVhdGlvbkxvY2F0aW9uIGFzIEVycm9yLFxuICAgICAgICBkYXRhOiB0LmRhdGFcbiAgICAgIH07XG4gICAgfSk7XG4gIH1cblxuICBwcml2YXRlIGFkZENhbGxiYWNrKGNiOiBEb25lQ2FsbGJhY2ssIHRpbWVvdXQ/OiBudW1iZXIsIHVwZGF0ZUNiPzogVXBkYXRlQ2FsbGJhY2spIHtcbiAgICBsZXQgdGltZW91dElkOiBhbnkgPSAtMTtcbiAgICBpZiAodGltZW91dCAmJiB0aW1lb3V0ID4gMCkge1xuICAgICAgdGltZW91dElkID0gc2V0VGltZW91dCgoKSA9PiB7XG4gICAgICAgIHRoaXMuX2NhbGxiYWNrcyA9IHRoaXMuX2NhbGxiYWNrcy5maWx0ZXIoKGNiKSA9PiBjYi50aW1lb3V0SWQgIT09IHRpbWVvdXRJZCk7XG4gICAgICAgIGNiKHRoaXMuX2RpZFdvcmssIHRoaXMuZ2V0UGVuZGluZ1Rhc2tzKCkpO1xuICAgICAgfSwgdGltZW91dCk7XG4gICAgfVxuICAgIHRoaXMuX2NhbGxiYWNrcy5wdXNoKDxXYWl0Q2FsbGJhY2s+e2RvbmVDYjogY2IsIHRpbWVvdXRJZDogdGltZW91dElkLCB1cGRhdGVDYjogdXBkYXRlQ2J9KTtcbiAgfVxuXG4gIC8qKlxuICAgKiBXYWl0IGZvciB0aGUgYXBwbGljYXRpb24gdG8gYmUgc3RhYmxlIHdpdGggYSB0aW1lb3V0LiBJZiB0aGUgdGltZW91dCBpcyByZWFjaGVkIGJlZm9yZSB0aGF0XG4gICAqIGhhcHBlbnMsIHRoZSBjYWxsYmFjayByZWNlaXZlcyBhIGxpc3Qgb2YgdGhlIG1hY3JvIHRhc2tzIHRoYXQgd2VyZSBwZW5kaW5nLCBvdGhlcndpc2UgbnVsbC5cbiAgICpcbiAgICogQHBhcmFtIGRvbmVDYiBUaGUgY2FsbGJhY2sgdG8gaW52b2tlIHdoZW4gQW5ndWxhciBpcyBzdGFibGUgb3IgdGhlIHRpbWVvdXQgZXhwaXJlc1xuICAgKiAgICB3aGljaGV2ZXIgY29tZXMgZmlyc3QuXG4gICAqIEBwYXJhbSB0aW1lb3V0IE9wdGlvbmFsLiBUaGUgbWF4aW11bSB0aW1lIHRvIHdhaXQgZm9yIEFuZ3VsYXIgdG8gYmVjb21lIHN0YWJsZS4gSWYgbm90XG4gICAqICAgIHNwZWNpZmllZCwgd2hlblN0YWJsZSgpIHdpbGwgd2FpdCBmb3JldmVyLlxuICAgKiBAcGFyYW0gdXBkYXRlQ2IgT3B0aW9uYWwuIElmIHNwZWNpZmllZCwgdGhpcyBjYWxsYmFjayB3aWxsIGJlIGludm9rZWQgd2hlbmV2ZXIgdGhlIHNldCBvZlxuICAgKiAgICBwZW5kaW5nIG1hY3JvdGFza3MgY2hhbmdlcy4gSWYgdGhpcyBjYWxsYmFjayByZXR1cm5zIHRydWUgZG9uZUNiIHdpbGwgbm90IGJlIGludm9rZWRcbiAgICogICAgYW5kIG5vIGZ1cnRoZXIgdXBkYXRlcyB3aWxsIGJlIGlzc3VlZC5cbiAgICovXG4gIHdoZW5TdGFibGUoZG9uZUNiOiBGdW5jdGlvbiwgdGltZW91dD86IG51bWJlciwgdXBkYXRlQ2I/OiBGdW5jdGlvbik6IHZvaWQge1xuICAgIGlmICh1cGRhdGVDYiAmJiAhdGhpcy50YXNrVHJhY2tpbmdab25lKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoXG4gICAgICAgICAgJ1Rhc2sgdHJhY2tpbmcgem9uZSBpcyByZXF1aXJlZCB3aGVuIHBhc3NpbmcgYW4gdXBkYXRlIGNhbGxiYWNrIHRvICcgK1xuICAgICAgICAgICd3aGVuU3RhYmxlKCkuIElzIFwiem9uZS5qcy9kaXN0L3Rhc2stdHJhY2tpbmcuanNcIiBsb2FkZWQ/Jyk7XG4gICAgfVxuICAgIC8vIFRoZXNlIGFyZ3VtZW50cyBhcmUgJ0Z1bmN0aW9uJyBhYm92ZSB0byBrZWVwIHRoZSBwdWJsaWMgQVBJIHNpbXBsZS5cbiAgICB0aGlzLmFkZENhbGxiYWNrKGRvbmVDYiBhcyBEb25lQ2FsbGJhY2ssIHRpbWVvdXQsIHVwZGF0ZUNiIGFzIFVwZGF0ZUNhbGxiYWNrKTtcbiAgICB0aGlzLl9ydW5DYWxsYmFja3NJZlJlYWR5KCk7XG4gIH1cblxuICAvKipcbiAgICogR2V0IHRoZSBudW1iZXIgb2YgcGVuZGluZyByZXF1ZXN0c1xuICAgKiBAZGVwcmVjYXRlZCBwZW5kaW5nIHJlcXVlc3RzIGFyZSBub3cgdHJhY2tlZCB3aXRoIHpvbmVzXG4gICAqL1xuICBnZXRQZW5kaW5nUmVxdWVzdENvdW50KCk6IG51bWJlciB7IHJldHVybiB0aGlzLl9wZW5kaW5nQ291bnQ7IH1cblxuICAvKipcbiAgICogRmluZCBwcm92aWRlcnMgYnkgbmFtZVxuICAgKiBAcGFyYW0gdXNpbmcgVGhlIHJvb3QgZWxlbWVudCB0byBzZWFyY2ggZnJvbVxuICAgKiBAcGFyYW0gcHJvdmlkZXIgVGhlIG5hbWUgb2YgYmluZGluZyB2YXJpYWJsZVxuICAgKiBAcGFyYW0gZXhhY3RNYXRjaCBXaGV0aGVyIHVzaW5nIGV4YWN0TWF0Y2hcbiAgICovXG4gIGZpbmRQcm92aWRlcnModXNpbmc6IGFueSwgcHJvdmlkZXI6IHN0cmluZywgZXhhY3RNYXRjaDogYm9vbGVhbik6IGFueVtdIHtcbiAgICAvLyBUT0RPKGp1bGllbXIpOiBpbXBsZW1lbnQuXG4gICAgcmV0dXJuIFtdO1xuICB9XG59XG5cbi8qKlxuICogQSBnbG9iYWwgcmVnaXN0cnkgb2Yge0BsaW5rIFRlc3RhYmlsaXR5fSBpbnN0YW5jZXMgZm9yIHNwZWNpZmljIGVsZW1lbnRzLlxuICogQHB1YmxpY0FwaVxuICovXG5ASW5qZWN0YWJsZSgpXG5leHBvcnQgY2xhc3MgVGVzdGFiaWxpdHlSZWdpc3RyeSB7XG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX2FwcGxpY2F0aW9ucyA9IG5ldyBNYXA8YW55LCBUZXN0YWJpbGl0eT4oKTtcblxuICBjb25zdHJ1Y3RvcigpIHsgX3Rlc3RhYmlsaXR5R2V0dGVyLmFkZFRvV2luZG93KHRoaXMpOyB9XG5cbiAgLyoqXG4gICAqIFJlZ2lzdGVycyBhbiBhcHBsaWNhdGlvbiB3aXRoIGEgdGVzdGFiaWxpdHkgaG9vayBzbyB0aGF0IGl0IGNhbiBiZSB0cmFja2VkXG4gICAqIEBwYXJhbSB0b2tlbiB0b2tlbiBvZiBhcHBsaWNhdGlvbiwgcm9vdCBlbGVtZW50XG4gICAqIEBwYXJhbSB0ZXN0YWJpbGl0eSBUZXN0YWJpbGl0eSBob29rXG4gICAqL1xuICByZWdpc3RlckFwcGxpY2F0aW9uKHRva2VuOiBhbnksIHRlc3RhYmlsaXR5OiBUZXN0YWJpbGl0eSkge1xuICAgIHRoaXMuX2FwcGxpY2F0aW9ucy5zZXQodG9rZW4sIHRlc3RhYmlsaXR5KTtcbiAgfVxuXG4gIC8qKlxuICAgKiBVbnJlZ2lzdGVycyBhbiBhcHBsaWNhdGlvbi5cbiAgICogQHBhcmFtIHRva2VuIHRva2VuIG9mIGFwcGxpY2F0aW9uLCByb290IGVsZW1lbnRcbiAgICovXG4gIHVucmVnaXN0ZXJBcHBsaWNhdGlvbih0b2tlbjogYW55KSB7IHRoaXMuX2FwcGxpY2F0aW9ucy5kZWxldGUodG9rZW4pOyB9XG5cbiAgLyoqXG4gICAqIFVucmVnaXN0ZXJzIGFsbCBhcHBsaWNhdGlvbnNcbiAgICovXG4gIHVucmVnaXN0ZXJBbGxBcHBsaWNhdGlvbnMoKSB7IHRoaXMuX2FwcGxpY2F0aW9ucy5jbGVhcigpOyB9XG5cbiAgLyoqXG4gICAqIEdldCBhIHRlc3RhYmlsaXR5IGhvb2sgYXNzb2NpYXRlZCB3aXRoIHRoZSBhcHBsaWNhdGlvblxuICAgKiBAcGFyYW0gZWxlbSByb290IGVsZW1lbnRcbiAgICovXG4gIGdldFRlc3RhYmlsaXR5KGVsZW06IGFueSk6IFRlc3RhYmlsaXR5fG51bGwgeyByZXR1cm4gdGhpcy5fYXBwbGljYXRpb25zLmdldChlbGVtKSB8fCBudWxsOyB9XG5cbiAgLyoqXG4gICAqIEdldCBhbGwgcmVnaXN0ZXJlZCB0ZXN0YWJpbGl0aWVzXG4gICAqL1xuICBnZXRBbGxUZXN0YWJpbGl0aWVzKCk6IFRlc3RhYmlsaXR5W10geyByZXR1cm4gQXJyYXkuZnJvbSh0aGlzLl9hcHBsaWNhdGlvbnMudmFsdWVzKCkpOyB9XG5cbiAgLyoqXG4gICAqIEdldCBhbGwgcmVnaXN0ZXJlZCBhcHBsaWNhdGlvbnMocm9vdCBlbGVtZW50cylcbiAgICovXG4gIGdldEFsbFJvb3RFbGVtZW50cygpOiBhbnlbXSB7IHJldHVybiBBcnJheS5mcm9tKHRoaXMuX2FwcGxpY2F0aW9ucy5rZXlzKCkpOyB9XG5cbiAgLyoqXG4gICAqIEZpbmQgdGVzdGFiaWxpdHkgb2YgYSBub2RlIGluIHRoZSBUcmVlXG4gICAqIEBwYXJhbSBlbGVtIG5vZGVcbiAgICogQHBhcmFtIGZpbmRJbkFuY2VzdG9ycyB3aGV0aGVyIGZpbmRpbmcgdGVzdGFiaWxpdHkgaW4gYW5jZXN0b3JzIGlmIHRlc3RhYmlsaXR5IHdhcyBub3QgZm91bmQgaW5cbiAgICogY3VycmVudCBub2RlXG4gICAqL1xuICBmaW5kVGVzdGFiaWxpdHlJblRyZWUoZWxlbTogTm9kZSwgZmluZEluQW5jZXN0b3JzOiBib29sZWFuID0gdHJ1ZSk6IFRlc3RhYmlsaXR5fG51bGwge1xuICAgIHJldHVybiBfdGVzdGFiaWxpdHlHZXR0ZXIuZmluZFRlc3RhYmlsaXR5SW5UcmVlKHRoaXMsIGVsZW0sIGZpbmRJbkFuY2VzdG9ycyk7XG4gIH1cbn1cblxuLyoqXG4gKiBBZGFwdGVyIGludGVyZmFjZSBmb3IgcmV0cmlldmluZyB0aGUgYFRlc3RhYmlsaXR5YCBzZXJ2aWNlIGFzc29jaWF0ZWQgZm9yIGFcbiAqIHBhcnRpY3VsYXIgY29udGV4dC5cbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgR2V0VGVzdGFiaWxpdHkge1xuICBhZGRUb1dpbmRvdyhyZWdpc3RyeTogVGVzdGFiaWxpdHlSZWdpc3RyeSk6IHZvaWQ7XG4gIGZpbmRUZXN0YWJpbGl0eUluVHJlZShyZWdpc3RyeTogVGVzdGFiaWxpdHlSZWdpc3RyeSwgZWxlbTogYW55LCBmaW5kSW5BbmNlc3RvcnM6IGJvb2xlYW4pOlxuICAgICAgVGVzdGFiaWxpdHl8bnVsbDtcbn1cblxuY2xhc3MgX05vb3BHZXRUZXN0YWJpbGl0eSBpbXBsZW1lbnRzIEdldFRlc3RhYmlsaXR5IHtcbiAgYWRkVG9XaW5kb3cocmVnaXN0cnk6IFRlc3RhYmlsaXR5UmVnaXN0cnkpOiB2b2lkIHt9XG4gIGZpbmRUZXN0YWJpbGl0eUluVHJlZShyZWdpc3RyeTogVGVzdGFiaWxpdHlSZWdpc3RyeSwgZWxlbTogYW55LCBmaW5kSW5BbmNlc3RvcnM6IGJvb2xlYW4pOlxuICAgICAgVGVzdGFiaWxpdHl8bnVsbCB7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbn1cblxuLyoqXG4gKiBTZXQgdGhlIHtAbGluayBHZXRUZXN0YWJpbGl0eX0gaW1wbGVtZW50YXRpb24gdXNlZCBieSB0aGUgQW5ndWxhciB0ZXN0aW5nIGZyYW1ld29yay5cbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHNldFRlc3RhYmlsaXR5R2V0dGVyKGdldHRlcjogR2V0VGVzdGFiaWxpdHkpOiB2b2lkIHtcbiAgX3Rlc3RhYmlsaXR5R2V0dGVyID0gZ2V0dGVyO1xufVxuXG5sZXQgX3Rlc3RhYmlsaXR5R2V0dGVyOiBHZXRUZXN0YWJpbGl0eSA9IG5ldyBfTm9vcEdldFRlc3RhYmlsaXR5KCk7XG4iXX0=