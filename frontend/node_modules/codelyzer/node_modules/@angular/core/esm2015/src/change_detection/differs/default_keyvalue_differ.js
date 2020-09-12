/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/change_detection/differs/default_keyvalue_differ.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { looseIdentical } from '../../util/comparison';
import { stringify } from '../../util/stringify';
import { isJsObject } from '../change_detection_util';
/**
 * @template K, V
 */
export class DefaultKeyValueDifferFactory {
    constructor() { }
    /**
     * @param {?} obj
     * @return {?}
     */
    supports(obj) { return obj instanceof Map || isJsObject(obj); }
    /**
     * @template K, V
     * @return {?}
     */
    create() { return new DefaultKeyValueDiffer(); }
}
/**
 * @template K, V
 */
export class DefaultKeyValueDiffer {
    constructor() {
        this._records = new Map();
        this._mapHead = null;
        // _appendAfter is used in the check loop
        this._appendAfter = null;
        this._previousMapHead = null;
        this._changesHead = null;
        this._changesTail = null;
        this._additionsHead = null;
        this._additionsTail = null;
        this._removalsHead = null;
        this._removalsTail = null;
    }
    /**
     * @return {?}
     */
    get isDirty() {
        return this._additionsHead !== null || this._changesHead !== null ||
            this._removalsHead !== null;
    }
    /**
     * @param {?} fn
     * @return {?}
     */
    forEachItem(fn) {
        /** @type {?} */
        let record;
        for (record = this._mapHead; record !== null; record = record._next) {
            fn(record);
        }
    }
    /**
     * @param {?} fn
     * @return {?}
     */
    forEachPreviousItem(fn) {
        /** @type {?} */
        let record;
        for (record = this._previousMapHead; record !== null; record = record._nextPrevious) {
            fn(record);
        }
    }
    /**
     * @param {?} fn
     * @return {?}
     */
    forEachChangedItem(fn) {
        /** @type {?} */
        let record;
        for (record = this._changesHead; record !== null; record = record._nextChanged) {
            fn(record);
        }
    }
    /**
     * @param {?} fn
     * @return {?}
     */
    forEachAddedItem(fn) {
        /** @type {?} */
        let record;
        for (record = this._additionsHead; record !== null; record = record._nextAdded) {
            fn(record);
        }
    }
    /**
     * @param {?} fn
     * @return {?}
     */
    forEachRemovedItem(fn) {
        /** @type {?} */
        let record;
        for (record = this._removalsHead; record !== null; record = record._nextRemoved) {
            fn(record);
        }
    }
    /**
     * @param {?=} map
     * @return {?}
     */
    diff(map) {
        if (!map) {
            map = new Map();
        }
        else if (!(map instanceof Map || isJsObject(map))) {
            throw new Error(`Error trying to diff '${stringify(map)}'. Only maps and objects are allowed`);
        }
        return this.check(map) ? this : null;
    }
    /**
     * @return {?}
     */
    onDestroy() { }
    /**
     * Check the current state of the map vs the previous.
     * The algorithm is optimised for when the keys do no change.
     * @param {?} map
     * @return {?}
     */
    check(map) {
        this._reset();
        /** @type {?} */
        let insertBefore = this._mapHead;
        this._appendAfter = null;
        this._forEach(map, (/**
         * @param {?} value
         * @param {?} key
         * @return {?}
         */
        (value, key) => {
            if (insertBefore && insertBefore.key === key) {
                this._maybeAddToChanges(insertBefore, value);
                this._appendAfter = insertBefore;
                insertBefore = insertBefore._next;
            }
            else {
                /** @type {?} */
                const record = this._getOrCreateRecordForKey(key, value);
                insertBefore = this._insertBeforeOrAppend(insertBefore, record);
            }
        }));
        // Items remaining at the end of the list have been deleted
        if (insertBefore) {
            if (insertBefore._prev) {
                insertBefore._prev._next = null;
            }
            this._removalsHead = insertBefore;
            for (let record = insertBefore; record !== null; record = record._nextRemoved) {
                if (record === this._mapHead) {
                    this._mapHead = null;
                }
                this._records.delete(record.key);
                record._nextRemoved = record._next;
                record.previousValue = record.currentValue;
                record.currentValue = null;
                record._prev = null;
                record._next = null;
            }
        }
        // Make sure tails have no next records from previous runs
        if (this._changesTail)
            this._changesTail._nextChanged = null;
        if (this._additionsTail)
            this._additionsTail._nextAdded = null;
        return this.isDirty;
    }
    /**
     * Inserts a record before `before` or append at the end of the list when `before` is null.
     *
     * Notes:
     * - This method appends at `this._appendAfter`,
     * - This method updates `this._appendAfter`,
     * - The return value is the new value for the insertion pointer.
     * @private
     * @param {?} before
     * @param {?} record
     * @return {?}
     */
    _insertBeforeOrAppend(before, record) {
        if (before) {
            /** @type {?} */
            const prev = before._prev;
            record._next = before;
            record._prev = prev;
            before._prev = record;
            if (prev) {
                prev._next = record;
            }
            if (before === this._mapHead) {
                this._mapHead = record;
            }
            this._appendAfter = before;
            return before;
        }
        if (this._appendAfter) {
            this._appendAfter._next = record;
            record._prev = this._appendAfter;
        }
        else {
            this._mapHead = record;
        }
        this._appendAfter = record;
        return null;
    }
    /**
     * @private
     * @param {?} key
     * @param {?} value
     * @return {?}
     */
    _getOrCreateRecordForKey(key, value) {
        if (this._records.has(key)) {
            /** @type {?} */
            const record = (/** @type {?} */ (this._records.get(key)));
            this._maybeAddToChanges(record, value);
            /** @type {?} */
            const prev = record._prev;
            /** @type {?} */
            const next = record._next;
            if (prev) {
                prev._next = next;
            }
            if (next) {
                next._prev = prev;
            }
            record._next = null;
            record._prev = null;
            return record;
        }
        /** @type {?} */
        const record = new KeyValueChangeRecord_(key);
        this._records.set(key, record);
        record.currentValue = value;
        this._addToAdditions(record);
        return record;
    }
    /**
     * \@internal
     * @return {?}
     */
    _reset() {
        if (this.isDirty) {
            /** @type {?} */
            let record;
            // let `_previousMapHead` contain the state of the map before the changes
            this._previousMapHead = this._mapHead;
            for (record = this._previousMapHead; record !== null; record = record._next) {
                record._nextPrevious = record._next;
            }
            // Update `record.previousValue` with the value of the item before the changes
            // We need to update all changed items (that's those which have been added and changed)
            for (record = this._changesHead; record !== null; record = record._nextChanged) {
                record.previousValue = record.currentValue;
            }
            for (record = this._additionsHead; record != null; record = record._nextAdded) {
                record.previousValue = record.currentValue;
            }
            this._changesHead = this._changesTail = null;
            this._additionsHead = this._additionsTail = null;
            this._removalsHead = null;
        }
    }
    // Add the record or a given key to the list of changes only when the value has actually changed
    /**
     * @private
     * @param {?} record
     * @param {?} newValue
     * @return {?}
     */
    _maybeAddToChanges(record, newValue) {
        if (!looseIdentical(newValue, record.currentValue)) {
            record.previousValue = record.currentValue;
            record.currentValue = newValue;
            this._addToChanges(record);
        }
    }
    /**
     * @private
     * @param {?} record
     * @return {?}
     */
    _addToAdditions(record) {
        if (this._additionsHead === null) {
            this._additionsHead = this._additionsTail = record;
        }
        else {
            (/** @type {?} */ (this._additionsTail))._nextAdded = record;
            this._additionsTail = record;
        }
    }
    /**
     * @private
     * @param {?} record
     * @return {?}
     */
    _addToChanges(record) {
        if (this._changesHead === null) {
            this._changesHead = this._changesTail = record;
        }
        else {
            (/** @type {?} */ (this._changesTail))._nextChanged = record;
            this._changesTail = record;
        }
    }
    /**
     * \@internal
     * @private
     * @template K, V
     * @param {?} obj
     * @param {?} fn
     * @return {?}
     */
    _forEach(obj, fn) {
        if (obj instanceof Map) {
            obj.forEach(fn);
        }
        else {
            Object.keys(obj).forEach((/**
             * @param {?} k
             * @return {?}
             */
            k => fn(obj[k], k)));
        }
    }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    DefaultKeyValueDiffer.prototype._records;
    /**
     * @type {?}
     * @private
     */
    DefaultKeyValueDiffer.prototype._mapHead;
    /**
     * @type {?}
     * @private
     */
    DefaultKeyValueDiffer.prototype._appendAfter;
    /**
     * @type {?}
     * @private
     */
    DefaultKeyValueDiffer.prototype._previousMapHead;
    /**
     * @type {?}
     * @private
     */
    DefaultKeyValueDiffer.prototype._changesHead;
    /**
     * @type {?}
     * @private
     */
    DefaultKeyValueDiffer.prototype._changesTail;
    /**
     * @type {?}
     * @private
     */
    DefaultKeyValueDiffer.prototype._additionsHead;
    /**
     * @type {?}
     * @private
     */
    DefaultKeyValueDiffer.prototype._additionsTail;
    /**
     * @type {?}
     * @private
     */
    DefaultKeyValueDiffer.prototype._removalsHead;
    /**
     * @type {?}
     * @private
     */
    DefaultKeyValueDiffer.prototype._removalsTail;
}
/**
 * @template K, V
 */
class KeyValueChangeRecord_ {
    /**
     * @param {?} key
     */
    constructor(key) {
        this.key = key;
        this.previousValue = null;
        this.currentValue = null;
        /**
         * \@internal
         */
        this._nextPrevious = null;
        /**
         * \@internal
         */
        this._next = null;
        /**
         * \@internal
         */
        this._prev = null;
        /**
         * \@internal
         */
        this._nextAdded = null;
        /**
         * \@internal
         */
        this._nextRemoved = null;
        /**
         * \@internal
         */
        this._nextChanged = null;
    }
}
if (false) {
    /** @type {?} */
    KeyValueChangeRecord_.prototype.previousValue;
    /** @type {?} */
    KeyValueChangeRecord_.prototype.currentValue;
    /**
     * \@internal
     * @type {?}
     */
    KeyValueChangeRecord_.prototype._nextPrevious;
    /**
     * \@internal
     * @type {?}
     */
    KeyValueChangeRecord_.prototype._next;
    /**
     * \@internal
     * @type {?}
     */
    KeyValueChangeRecord_.prototype._prev;
    /**
     * \@internal
     * @type {?}
     */
    KeyValueChangeRecord_.prototype._nextAdded;
    /**
     * \@internal
     * @type {?}
     */
    KeyValueChangeRecord_.prototype._nextRemoved;
    /**
     * \@internal
     * @type {?}
     */
    KeyValueChangeRecord_.prototype._nextChanged;
    /** @type {?} */
    KeyValueChangeRecord_.prototype.key;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGVmYXVsdF9rZXl2YWx1ZV9kaWZmZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9jaGFuZ2VfZGV0ZWN0aW9uL2RpZmZlcnMvZGVmYXVsdF9rZXl2YWx1ZV9kaWZmZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBUUEsT0FBTyxFQUFDLGNBQWMsRUFBQyxNQUFNLHVCQUF1QixDQUFDO0FBQ3JELE9BQU8sRUFBQyxTQUFTLEVBQUMsTUFBTSxzQkFBc0IsQ0FBQztBQUMvQyxPQUFPLEVBQUMsVUFBVSxFQUFDLE1BQU0sMEJBQTBCLENBQUM7Ozs7QUFJcEQsTUFBTSxPQUFPLDRCQUE0QjtJQUN2QyxnQkFBZSxDQUFDOzs7OztJQUNoQixRQUFRLENBQUMsR0FBUSxJQUFhLE9BQU8sR0FBRyxZQUFZLEdBQUcsSUFBSSxVQUFVLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxDQUFDOzs7OztJQUU3RSxNQUFNLEtBQWlDLE9BQU8sSUFBSSxxQkFBcUIsRUFBUSxDQUFDLENBQUMsQ0FBQztDQUNuRjs7OztBQUVELE1BQU0sT0FBTyxxQkFBcUI7SUFBbEM7UUFDVSxhQUFRLEdBQUcsSUFBSSxHQUFHLEVBQWtDLENBQUM7UUFDckQsYUFBUSxHQUFxQyxJQUFJLENBQUM7O1FBRWxELGlCQUFZLEdBQXFDLElBQUksQ0FBQztRQUN0RCxxQkFBZ0IsR0FBcUMsSUFBSSxDQUFDO1FBQzFELGlCQUFZLEdBQXFDLElBQUksQ0FBQztRQUN0RCxpQkFBWSxHQUFxQyxJQUFJLENBQUM7UUFDdEQsbUJBQWMsR0FBcUMsSUFBSSxDQUFDO1FBQ3hELG1CQUFjLEdBQXFDLElBQUksQ0FBQztRQUN4RCxrQkFBYSxHQUFxQyxJQUFJLENBQUM7UUFDdkQsa0JBQWEsR0FBcUMsSUFBSSxDQUFDO0lBb09qRSxDQUFDOzs7O0lBbE9DLElBQUksT0FBTztRQUNULE9BQU8sSUFBSSxD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QTRCOzs7OztJQUc1Qiw4Q0FBdUQ7Ozs7O0lBRXZELHNDQUErQzs7Ozs7SUFFL0Msc0NBQStDOzs7OztJQUUvQywyQ0FBb0Q7Ozs7O0lBRXBELDZDQUFzRDs7Ozs7SUFFdEQsNkNBQXNEOztJQUUxQyxvQ0FBYSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtsb29zZUlkZW50aWNhbH0gZnJvbSAnLi4vLi4vdXRpbC9jb21wYXJpc29uJztcbmltcG9ydCB7c3RyaW5naWZ5fSBmcm9tICcuLi8uLi91dGlsL3N0cmluZ2lmeSc7XG5pbXBvcnQge2lzSnNPYmplY3R9IGZyb20gJy4uL2NoYW5nZV9kZXRlY3Rpb25fdXRpbCc7XG5pbXBvcnQge0tleVZhbHVlQ2hhbmdlUmVjb3JkLCBLZXlWYWx1ZUNoYW5nZXMsIEtleVZhbHVlRGlmZmVyLCBLZXlWYWx1ZURpZmZlckZhY3Rvcnl9IGZyb20gJy4va2V5dmFsdWVfZGlmZmVycyc7XG5cblxuZXhwb3J0IGNsYXNzIERlZmF1bHRLZXlWYWx1ZURpZmZlckZhY3Rvcnk8SywgVj4gaW1wbGVtZW50cyBLZXlWYWx1ZURpZmZlckZhY3Rvcnkge1xuICBjb25zdHJ1Y3RvcigpIHt9XG4gIHN1cHBvcnRzKG9iajogYW55KTogYm9vbGVhbiB7IHJldHVybiBvYmogaW5zdGFuY2VvZiBNYXAgfHwgaXNKc09iamVjdChvYmopOyB9XG5cbiAgY3JlYXRlPEssIFY+KCk6IEtleVZhbHVlRGlmZmVyPEssIFY+IHsgcmV0dXJuIG5ldyBEZWZhdWx0S2V5VmFsdWVEaWZmZXI8SywgVj4oKTsgfVxufVxuXG5leHBvcnQgY2xhc3MgRGVmYXVsdEtleVZhbHVlRGlmZmVyPEssIFY+IGltcGxlbWVudHMgS2V5VmFsdWVEaWZmZXI8SywgVj4sIEtleVZhbHVlQ2hhbmdlczxLLCBWPiB7XG4gIHByaXZhdGUgX3JlY29yZHMgPSBuZXcgTWFwPEssIEtleVZhbHVlQ2hhbmdlUmVjb3JkXzxLLCBWPj4oKTtcbiAgcHJpdmF0ZSBfbWFwSGVhZDogS2V5VmFsdWVDaGFuZ2VSZWNvcmRfPEssIFY+fG51bGwgPSBudWxsO1xuICAvLyBfYXBwZW5kQWZ0ZXIgaXMgdXNlZCBpbiB0aGUgY2hlY2sgbG9vcFxuICBwcml2YXRlIF9hcHBlbmRBZnRlcjogS2V5VmFsdWVDaGFuZ2VSZWNvcmRfPEssIFY+fG51bGwgPSBudWxsO1xuICBwcml2YXRlIF9wcmV2aW91c01hcEhlYWQ6IEtleVZhbHVlQ2hhbmdlUmVjb3JkXzxLLCBWPnxudWxsID0gbnVsbDtcbiAgcHJpdmF0ZSBfY2hhbmdlc0hlYWQ6IEtleVZhbHVlQ2hhbmdlUmVjb3JkXzxLLCBWPnxudWxsID0gbnVsbDtcbiAgcHJpdmF0ZSBfY2hhbmdlc1RhaWw6IEtleVZhbHVlQ2hhbmdlUmVjb3JkXzxLLCBWPnxudWxsID0gbnVsbDtcbiAgcHJpdmF0ZSBfYWRkaXRpb25zSGVhZDogS2V5VmFsdWVDaGFuZ2VSZWNvcmRfPEssIFY+fG51bGwgPSBudWxsO1xuICBwcml2YXRlIF9hZGRpdGlvbnNUYWlsOiBLZXlWYWx1ZUNoYW5nZVJlY29yZF88SywgVj58bnVsbCA9IG51bGw7XG4gIHByaXZhdGUgX3JlbW92YWxzSGVhZDogS2V5VmFsdWVDaGFuZ2VSZWNvcmRfPEssIFY+fG51bGwgPSBudWxsO1xuICBwcml2YXRlIF9yZW1vdmFsc1RhaWw6IEtleVZhbHVlQ2hhbmdlUmVjb3JkXzxLLCBWPnxudWxsID0gbnVsbDtcblxuICBnZXQgaXNEaXJ0eSgpOiBib29sZWFuIHtcbiAgICByZXR1cm4gdGhpcy5fYWRkaXRpb25zSGVhZCAhPT0gbnVsbCB8fCB0aGlzLl9jaGFuZ2VzSGVhZCAhPT0gbnVsbCB8fFxuICAgICAgICB0aGlzLl9yZW1vdmFsc0hlYWQgIT09IG51bGw7XG4gIH1cblxuICBmb3JFYWNoSXRlbShmbjogKHI6IEtleVZhbHVlQ2hhbmdlUmVjb3JkPEssIFY+KSA9PiB2b2lkKSB7XG4gICAgbGV0IHJlY29yZDogS2V5VmFsdWVDaGFuZ2VSZWNvcmRfPEssIFY+fG51bGw7XG4gICAgZm9yIChyZWNvcmQgPSB0aGlzLl9tYXBIZWFkOyByZWNvcmQgIT09IG51bGw7IHJlY29yZCA9IHJlY29yZC5fbmV4dCkge1xuICAgICAgZm4ocmVjb3JkKTtcbiAgICB9XG4gIH1cblxuICBmb3JFYWNoUHJldmlvdXNJdGVtKGZuOiAocjogS2V5VmFsdWVDaGFuZ2VSZWNvcmQ8SywgVj4pID0+IHZvaWQpIHtcbiAgICBsZXQgcmVjb3JkOiBLZXlWYWx1ZUNoYW5nZVJlY29yZF88SywgVj58bnVsbDtcbiAgICBmb3IgKHJlY29yZCA9IHRoaXMuX3ByZXZpb3VzTWFwSGVhZDsgcmVjb3JkICE9PSBudWxsOyByZWNvcmQgPSByZWNvcmQuX25leHRQcmV2aW91cykge1xuICAgICAgZm4ocmVjb3JkKTtcbiAgICB9XG4gIH1cblxuICBmb3JFYWNoQ2hhbmdlZEl0ZW0oZm46IChyOiBLZXlWYWx1ZUNoYW5nZVJlY29yZDxLLCBWPikgPT4gdm9pZCkge1xuICAgIGxldCByZWNvcmQ6IEtleVZhbHVlQ2hhbmdlUmVjb3JkXzxLLCBWPnxudWxsO1xuICAgIGZvciAocmVjb3JkID0gdGhpcy5fY2hhbmdlc0hlYWQ7IHJlY29yZCAhPT0gbnVsbDsgcmVjb3JkID0gcmVjb3JkLl9uZXh0Q2hhbmdlZCkge1xuICAgICAgZm4ocmVjb3JkKTtcbiAgICB9XG4gIH1cblxuICBmb3JFYWNoQWRkZWRJdGVtKGZuOiAocjogS2V5VmFsdWVDaGFuZ2VSZWNvcmQ8SywgVj4pID0+IHZvaWQpIHtcbiAgICBsZXQgcmVjb3JkOiBLZXlWYWx1ZUNoYW5nZVJlY29yZF88SywgVj58bnVsbDtcbiAgICBmb3IgKHJlY29yZCA9IHRoaXMuX2FkZGl0aW9uc0hlYWQ7IHJlY29yZCAhPT0gbnVsbDsgcmVjb3JkID0gcmVjb3JkLl9uZXh0QWRkZWQpIHtcbiAgICAgIGZuKHJlY29yZCk7XG4gICAgfVxuICB9XG5cbiAgZm9yRWFjaFJlbW92ZWRJdGVtKGZuOiAocjogS2V5VmFsdWVDaGFuZ2VSZWNvcmQ8SywgVj4pID0+IHZvaWQpIHtcbiAgICBsZXQgcmVjb3JkOiBLZXlWYWx1ZUNoYW5nZVJlY29yZF88SywgVj58bnVsbDtcbiAgICBmb3IgKHJlY29yZCA9IHRoaXMuX3JlbW92YWxzSGVhZDsgcmVjb3JkICE9PSBudWxsOyByZWNvcmQgPSByZWNvcmQuX25leHRSZW1vdmVkKSB7XG4gICAgICBmbihyZWNvcmQpO1xuICAgIH1cbiAgfVxuXG4gIGRpZmYobWFwPzogTWFwPGFueSwgYW55Pnx7W2s6IHN0cmluZ106IGFueX18bnVsbCk6IGFueSB7XG4gICAgaWYgKCFtYXApIHtcbiAgICAgIG1hcCA9IG5ldyBNYXAoKTtcbiAgICB9IGVsc2UgaWYgKCEobWFwIGluc3RhbmNlb2YgTWFwIHx8IGlzSnNPYmplY3QobWFwKSkpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICBgRXJyb3IgdHJ5aW5nIHRvIGRpZmYgJyR7c3RyaW5naWZ5KG1hcCl9Jy4gT25seSBtYXBzIGFuZCBvYmplY3RzIGFyZSBhbGxvd2VkYCk7XG4gICAgfVxuXG4gICAgcmV0dXJuIHRoaXMuY2hlY2sobWFwKSA/IHRoaXMgOiBudWxsO1xuICB9XG5cbiAgb25EZXN0cm95KCkge31cblxuICAvKipcbiAgICogQ2hlY2sgdGhlIGN1cnJlbnQgc3RhdGUgb2YgdGhlIG1hcCB2cyB0aGUgcHJldmlvdXMuXG4gICAqIFRoZSBhbGdvcml0aG0gaXMgb3B0aW1pc2VkIGZvciB3aGVuIHRoZSBrZXlzIGRvIG5vIGNoYW5nZS5cbiAgICovXG4gIGNoZWNrKG1hcDogTWFwPGFueSwgYW55Pnx7W2s6IHN0cmluZ106IGFueX0pOiBib29sZWFuIHtcbiAgICB0aGlzLl9yZXNldCgpO1xuXG4gICAgbGV0IGluc2VydEJlZm9yZSA9IHRoaXMuX21hcEhlYWQ7XG4gICAgdGhpcy5fYXBwZW5kQWZ0ZXIgPSBudWxsO1xuXG4gICAgdGhpcy5fZm9yRWFjaChtYXAsICh2YWx1ZTogYW55LCBrZXk6IGFueSkgPT4ge1xuICAgICAgaWYgKGluc2VydEJlZm9yZSAmJiBpbnNlcnRCZWZvcmUua2V5ID09PSBrZXkpIHtcbiAgICAgICAgdGhpcy5fbWF5YmVBZGRUb0NoYW5nZXMoaW5zZXJ0QmVmb3JlLCB2YWx1ZSk7XG4gICAgICAgIHRoaXMuX2FwcGVuZEFmdGVyID0gaW5zZXJ0QmVmb3JlO1xuICAgICAgICBpbnNlcnRCZWZvcmUgPSBpbnNlcnRCZWZvcmUuX25leHQ7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBjb25zdCByZWNvcmQgPSB0aGlzLl9nZXRPckNyZWF0ZVJlY29yZEZvcktleShrZXksIHZhbHVlKTtcbiAgICAgICAgaW5zZXJ0QmVmb3JlID0gdGhpcy5faW5zZXJ0QmVmb3JlT3JBcHBlbmQoaW5zZXJ0QmVmb3JlLCByZWNvcmQpO1xuICAgICAgfVxuICAgIH0pO1xuXG4gICAgLy8gSXRlbXMgcmVtYWluaW5nIGF0IHRoZSBlbmQgb2YgdGhlIGxpc3QgaGF2ZSBiZWVuIGRlbGV0ZWRcbiAgICBpZiAoaW5zZXJ0QmVmb3JlKSB7XG4gICAgICBpZiAoaW5zZXJ0QmVmb3JlLl9wcmV2KSB7XG4gICAgICAgIGluc2VydEJlZm9yZS5fcHJldi5fbmV4dCA9IG51bGw7XG4gICAgICB9XG5cbiAgICAgIHRoaXMuX3JlbW92YWxzSGVhZCA9IGluc2VydEJlZm9yZTtcblxuICAgICAgZm9yIChsZXQgcmVjb3JkOiBLZXlWYWx1ZUNoYW5nZVJlY29yZF88SywgVj58bnVsbCA9IGluc2VydEJlZm9yZTsgcmVjb3JkICE9PSBudWxsO1xuICAgICAgICAgICByZWNvcmQgPSByZWNvcmQuX25leHRSZW1vdmVkKSB7XG4gICAgICAgIGlmIChyZWNvcmQgPT09IHRoaXMuX21hcEhlYWQpIHtcbiAgICAgICAgICB0aGlzLl9tYXBIZWFkID0gbnVsbDtcbiAgICAgICAgfVxuICAgICAgICB0aGlzLl9yZWNvcmRzLmRlbGV0ZShyZWNvcmQua2V5KTtcbiAgICAgICAgcmVjb3JkLl9uZXh0UmVtb3ZlZCA9IHJlY29yZC5fbmV4dDtcbiAgICAgICAgcmVjb3JkLnByZXZpb3VzVmFsdWUgPSByZWNvcmQuY3VycmVudFZhbHVlO1xuICAgICAgICByZWNvcmQuY3VycmVudFZhbHVlID0gbnVsbDtcbiAgICAgICAgcmVjb3JkLl9wcmV2ID0gbnVsbDtcbiAgICAgICAgcmVjb3JkLl9uZXh0ID0gbnVsbDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyBNYWtlIHN1cmUgdGFpbHMgaGF2ZSBubyBuZXh0IHJlY29yZHMgZnJvbSBwcmV2aW91cyBydW5zXG4gICAgaWYgKHRoaXMuX2NoYW5nZXNUYWlsKSB0aGlzLl9jaGFuZ2VzVGFpbC5fbmV4dENoYW5nZWQgPSBudWxsO1xuICAgIGlmICh0aGlzLl9hZGRpdGlvbnNUYWlsKSB0aGlzLl9hZGRpdGlvbnNUYWlsLl9uZXh0QWRkZWQgPSBudWxsO1xuXG4gICAgcmV0dXJuIHRoaXMuaXNEaXJ0eTtcbiAgfVxuXG4gIC8qKlxuICAgKiBJbnNlcnRzIGEgcmVjb3JkIGJlZm9yZSBgYmVmb3JlYCBvciBhcHBlbmQgYXQgdGhlIGVuZCBvZiB0aGUgbGlzdCB3aGVuIGBiZWZvcmVgIGlzIG51bGwuXG4gICAqXG4gICAqIE5vdGVzOlxuICAgKiAtIFRoaXMgbWV0aG9kIGFwcGVuZHMgYXQgYHRoaXMuX2FwcGVuZEFmdGVyYCxcbiAgICogLSBUaGlzIG1ldGhvZCB1cGRhdGVzIGB0aGlzLl9hcHBlbmRBZnRlcmAsXG4gICAqIC0gVGhlIHJldHVybiB2YWx1ZSBpcyB0aGUgbmV3IHZhbHVlIGZvciB0aGUgaW5zZXJ0aW9uIHBvaW50ZXIuXG4gICAqL1xuICBwcml2YXRlIF9pbnNlcnRCZWZvcmVPckFwcGVuZChcbiAgICAgIGJlZm9yZTogS2V5VmFsdWVDaGFuZ2VSZWNvcmRfPEssIFY+fG51bGwsXG4gICAgICByZWNvcmQ6IEtleVZhbHVlQ2hhbmdlUmVjb3JkXzxLLCBWPik6IEtleVZhbHVlQ2hhbmdlUmVjb3JkXzxLLCBWPnxudWxsIHtcbiAgICBpZiAoYmVmb3JlKSB7XG4gICAgICBjb25zdCBwcmV2ID0gYmVmb3JlLl9wcmV2O1xuICAgICAgcmVjb3JkLl9uZXh0ID0gYmVmb3JlO1xuICAgICAgcmVjb3JkLl9wcmV2ID0gcHJldjtcbiAgICAgIGJlZm9yZS5fcHJldiA9IHJlY29yZDtcbiAgICAgIGlmIChwcmV2KSB7XG4gICAgICAgIHByZXYuX25leHQgPSByZWNvcmQ7XG4gICAgICB9XG4gICAgICBpZiAoYmVmb3JlID09PSB0aGlzLl9tYXBIZWFkKSB7XG4gICAgICAgIHRoaXMuX21hcEhlYWQgPSByZWNvcmQ7XG4gICAgICB9XG5cbiAgICAgIHRoaXMuX2FwcGVuZEFmdGVyID0gYmVmb3JlO1xuICAgICAgcmV0dXJuIGJlZm9yZTtcbiAgICB9XG5cbiAgICBpZiAodGhpcy5fYXBwZW5kQWZ0ZXIpIHtcbiAgICAgIHRoaXMuX2FwcGVuZEFmdGVyLl9uZXh0ID0gcmVjb3JkO1xuICAgICAgcmVjb3JkLl9wcmV2ID0gdGhpcy5fYXBwZW5kQWZ0ZXI7XG4gICAgfSBlbHNlIHtcbiAgICAgIHRoaXMuX21hcEhlYWQgPSByZWNvcmQ7XG4gICAgfVxuXG4gICAgdGhpcy5fYXBwZW5kQWZ0ZXIgPSByZWNvcmQ7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBwcml2YXRlIF9nZXRPckNyZWF0ZVJlY29yZEZvcktleShrZXk6IEssIHZhbHVlOiBWKTogS2V5VmFsdWVDaGFuZ2VSZWNvcmRfPEssIFY+IHtcbiAgICBpZiAodGhpcy5fcmVjb3Jkcy5oYXMoa2V5KSkge1xuICAgICAgY29uc3QgcmVjb3JkID0gdGhpcy5fcmVjb3Jkcy5nZXQoa2V5KSAhO1xuICAgICAgdGhpcy5fbWF5YmVBZGRUb0NoYW5nZXMocmVjb3JkLCB2YWx1ZSk7XG4gICAgICBjb25zdCBwcmV2ID0gcmVjb3JkLl9wcmV2O1xuICAgICAgY29uc3QgbmV4dCA9IHJlY29yZC5fbmV4dDtcbiAgICAgIGlmIChwcmV2KSB7XG4gICAgICAgIHByZXYuX25leHQgPSBuZXh0O1xuICAgICAgfVxuICAgICAgaWYgKG5leHQpIHtcbiAgICAgICAgbmV4dC5fcHJldiA9IHByZXY7XG4gICAgICB9XG4gICAgICByZWNvcmQuX25leHQgPSBudWxsO1xuICAgICAgcmVjb3JkLl9wcmV2ID0gbnVsbDtcblxuICAgICAgcmV0dXJuIHJlY29yZDtcbiAgICB9XG5cbiAgICBjb25zdCByZWNvcmQgPSBuZXcgS2V5VmFsdWVDaGFuZ2VSZWNvcmRfPEssIFY+KGtleSk7XG4gICAgdGhpcy5fcmVjb3Jkcy5zZXQoa2V5LCByZWNvcmQpO1xuICAgIHJlY29yZC5jdXJyZW50VmFsdWUgPSB2YWx1ZTtcbiAgICB0aGlzLl9hZGRUb0FkZGl0aW9ucyhyZWNvcmQpO1xuICAgIHJldHVybiByZWNvcmQ7XG4gIH1cblxuICAvKiogQGludGVybmFsICovXG4gIF9yZXNldCgpIHtcbiAgICBpZiAodGhpcy5pc0RpcnR5KSB7XG4gICAgICBsZXQgcmVjb3JkOiBLZXlWYWx1ZUNoYW5nZVJlY29yZF88SywgVj58bnVsbDtcbiAgICAgIC8vIGxldCBgX3ByZXZpb3VzTWFwSGVhZGAgY29udGFpbiB0aGUgc3RhdGUgb2YgdGhlIG1hcCBiZWZvcmUgdGhlIGNoYW5nZXNcbiAgICAgIHRoaXMuX3ByZXZpb3VzTWFwSGVhZCA9IHRoaXMuX21hcEhlYWQ7XG4gICAgICBmb3IgKHJlY29yZCA9IHRoaXMuX3ByZXZpb3VzTWFwSGVhZDsgcmVjb3JkICE9PSBudWxsOyByZWNvcmQgPSByZWNvcmQuX25leHQpIHtcbiAgICAgICAgcmVjb3JkLl9uZXh0UHJldmlvdXMgPSByZWNvcmQuX25leHQ7XG4gICAgICB9XG5cbiAgICAgIC8vIFVwZGF0ZSBgcmVjb3JkLnByZXZpb3VzVmFsdWVgIHdpdGggdGhlIHZhbHVlIG9mIHRoZSBpdGVtIGJlZm9yZSB0aGUgY2hhbmdlc1xuICAgICAgLy8gV2UgbmVlZCB0byB1cGRhdGUgYWxsIGNoYW5nZWQgaXRlbXMgKHRoYXQncyB0aG9zZSB3aGljaCBoYXZlIGJlZW4gYWRkZWQgYW5kIGNoYW5nZWQpXG4gICAgICBmb3IgKHJlY29yZCA9IHRoaXMuX2NoYW5nZXNIZWFkOyByZWNvcmQgIT09IG51bGw7IHJlY29yZCA9IHJlY29yZC5fbmV4dENoYW5nZWQpIHtcbiAgICAgICAgcmVjb3JkLnByZXZpb3VzVmFsdWUgPSByZWNvcmQuY3VycmVudFZhbHVlO1xuICAgICAgfVxuICAgICAgZm9yIChyZWNvcmQgPSB0aGlzLl9hZGRpdGlvbnNIZWFkOyByZWNvcmQgIT0gbnVsbDsgcmVjb3JkID0gcmVjb3JkLl9uZXh0QWRkZWQpIHtcbiAgICAgICAgcmVjb3JkLnByZXZpb3VzVmFsdWUgPSByZWNvcmQuY3VycmVudFZhbHVlO1xuICAgICAgfVxuXG4gICAgICB0aGlzLl9jaGFuZ2VzSGVhZCA9IHRoaXMuX2NoYW5nZXNUYWlsID0gbnVsbDtcbiAgICAgIHRoaXMuX2FkZGl0aW9uc0hlYWQgPSB0aGlzLl9hZGRpdGlvbnNUYWlsID0gbnVsbDtcbiAgICAgIHRoaXMuX3JlbW92YWxzSGVhZCA9IG51bGw7XG4gICAgfVxuICB9XG5cbiAgLy8gQWRkIHRoZSByZWNvcmQgb3IgYSBnaXZlbiBrZXkgdG8gdGhlIGxpc3Qgb2YgY2hhbmdlcyBvbmx5IHdoZW4gdGhlIHZhbHVlIGhhcyBhY3R1YWxseSBjaGFuZ2VkXG4gIHByaXZhdGUgX21heWJlQWRkVG9DaGFuZ2VzKHJlY29yZDogS2V5VmFsdWVDaGFuZ2VSZWNvcmRfPEssIFY+LCBuZXdWYWx1ZTogYW55KTogdm9pZCB7XG4gICAgaWYgKCFsb29zZUlkZW50aWNhbChuZXdWYWx1ZSwgcmVjb3JkLmN1cnJlbnRWYWx1ZSkpIHtcbiAgICAgIHJlY29yZC5wcmV2aW91c1ZhbHVlID0gcmVjb3JkLmN1cnJlbnRWYWx1ZTtcbiAgICAgIHJlY29yZC5jdXJyZW50VmFsdWUgPSBuZXdWYWx1ZTtcbiAgICAgIHRoaXMuX2FkZFRvQ2hhbmdlcyhyZWNvcmQpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX2FkZFRvQWRkaXRpb25zKHJlY29yZDogS2V5VmFsdWVDaGFuZ2VSZWNvcmRfPEssIFY+KSB7XG4gICAgaWYgKHRoaXMuX2FkZGl0aW9uc0hlYWQgPT09IG51bGwpIHtcbiAgICAgIHRoaXMuX2FkZGl0aW9uc0hlYWQgPSB0aGlzLl9hZGRpdGlvbnNUYWlsID0gcmVjb3JkO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLl9hZGRpdGlvbnNUYWlsICEuX25leHRBZGRlZCA9IHJlY29yZDtcbiAgICAgIHRoaXMuX2FkZGl0aW9uc1RhaWwgPSByZWNvcmQ7XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBfYWRkVG9DaGFuZ2VzKHJlY29yZDogS2V5VmFsdWVDaGFuZ2VSZWNvcmRfPEssIFY+KSB7XG4gICAgaWYgKHRoaXMuX2NoYW5nZXNIZWFkID09PSBudWxsKSB7XG4gICAgICB0aGlzLl9jaGFuZ2VzSGVhZCA9IHRoaXMuX2NoYW5nZXNUYWlsID0gcmVjb3JkO1xuICAgIH0gZWxzZSB7XG4gICAgICB0aGlzLl9jaGFuZ2VzVGFpbCAhLl9uZXh0Q2hhbmdlZCA9IHJlY29yZDtcbiAgICAgIHRoaXMuX2NoYW5nZXNUYWlsID0gcmVjb3JkO1xuICAgIH1cbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgcHJpdmF0ZSBfZm9yRWFjaDxLLCBWPihvYmo6IE1hcDxLLCBWPnx7W2s6IHN0cmluZ106IFZ9LCBmbjogKHY6IFYsIGs6IGFueSkgPT4gdm9pZCkge1xuICAgIGlmIChvYmogaW5zdGFuY2VvZiBNYXApIHtcbiAgICAgIG9iai5mb3JFYWNoKGZuKTtcbiAgICB9IGVsc2Uge1xuICAgICAgT2JqZWN0LmtleXMob2JqKS5mb3JFYWNoKGsgPT4gZm4ob2JqW2tdLCBrKSk7XG4gICAgfVxuICB9XG59XG5cbmNsYXNzIEtleVZhbHVlQ2hhbmdlUmVjb3JkXzxLLCBWPiBpbXBsZW1lbnRzIEtleVZhbHVlQ2hhbmdlUmVjb3JkPEssIFY+IHtcbiAgcHJldmlvdXNWYWx1ZTogVnxudWxsID0gbnVsbDtcbiAgY3VycmVudFZhbHVlOiBWfG51bGwgPSBudWxsO1xuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX25leHRQcmV2aW91czogS2V5VmFsdWVDaGFuZ2VSZWNvcmRfPEssIFY+fG51bGwgPSBudWxsO1xuICAvKiogQGludGVybmFsICovXG4gIF9uZXh0OiBLZXlWYWx1ZUNoYW5nZVJlY29yZF88SywgVj58bnVsbCA9IG51bGw7XG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX3ByZXY6IEtleVZhbHVlQ2hhbmdlUmVjb3JkXzxLLCBWPnxudWxsID0gbnVsbDtcbiAgLyoqIEBpbnRlcm5hbCAqL1xuICBfbmV4dEFkZGVkOiBLZXlWYWx1ZUNoYW5nZVJlY29yZF88SywgVj58bnVsbCA9IG51bGw7XG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX25leHRSZW1vdmVkOiBLZXlWYWx1ZUNoYW5nZVJlY29yZF88SywgVj58bnVsbCA9IG51bGw7XG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX25leHRDaGFuZ2VkOiBLZXlWYWx1ZUNoYW5nZVJlY29yZF88SywgVj58bnVsbCA9IG51bGw7XG5cbiAgY29uc3RydWN0b3IocHVibGljIGtleTogSykge31cbn1cbiJdfQ==