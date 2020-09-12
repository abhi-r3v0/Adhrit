/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/di/reflective_key.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { stringify } from '../util/stringify';
import { resolveForwardRef } from './forward_ref';
/**
 * A unique object used for retrieving items from the {\@link ReflectiveInjector}.
 *
 * Keys have:
 * - a system-wide unique `id`.
 * - a `token`.
 *
 * `Key` is used internally by {\@link ReflectiveInjector} because its system-wide unique `id` allows
 * the
 * injector to store created objects in a more efficient way.
 *
 * `Key` should not be created directly. {\@link ReflectiveInjector} creates keys automatically when
 * resolving
 * providers.
 *
 * @deprecated No replacement
 * \@publicApi
 */
export class ReflectiveKey {
    /**
     * Private
     * @param {?} token
     * @param {?} id
     */
    constructor(token, id) {
        this.token = token;
        this.id = id;
        if (!token) {
            throw new Error('Token must be defined!');
        }
        this.displayName = stringify(this.token);
    }
    /**
     * Retrieves a `Key` for a token.
     * @param {?} token
     * @return {?}
     */
    static get(token) {
        return _globalKeyRegistry.get(resolveForwardRef(token));
    }
    /**
     * @return {?} the number of keys registered in the system.
     */
    static get numberOfKeys() { return _globalKeyRegistry.numberOfKeys; }
}
if (false) {
    /** @type {?} */
    ReflectiveKey.prototype.displayName;
    /** @type {?} */
    ReflectiveKey.prototype.token;
    /** @type {?} */
    ReflectiveKey.prototype.id;
}
export class KeyRegistry {
    constructor() {
        this._allKeys = new Map();
    }
    /**
     * @param {?} token
     * @return {?}
     */
    get(token) {
        if (token instanceof ReflectiveKey)
            return token;
        if (this._allKeys.has(token)) {
            return (/** @type {?} */ (this._allKeys.get(token)));
        }
        /** @type {?} */
        const newKey = new ReflectiveKey(token, ReflectiveKey.numberOfKeys);
        this._allKeys.set(token, newKey);
        return newKey;
    }
    /**
     * @return {?}
     */
    get numberOfKeys() { return this._allKeys.size; }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    KeyRegistry.prototype._allKeys;
}
/** @type {?} */
const _globalKeyRegistry = new KeyRegistry();
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicmVmbGVjdGl2ZV9rZXkuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9kaS9yZWZsZWN0aXZlX2tleS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7QUFRQSxPQUFPLEVBQUMsU0FBUyxFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFDNUMsT0FBTyxFQUFDLGlCQUFpQixFQUFDLE1BQU0sZUFBZSxDQUFDOzs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBcUJoRCxNQUFNLE9BQU8sYUFBYTs7Ozs7O0lBS3hCLFlBQW1CLEtBQWEsRUFBUyxFQUFVO1FBQWhDLFVBQUssR0FBTCxLQUFLLENBQVE7UUFBUyxPQUFFLEdBQUYsRUFBRSxDQUFRO1FBQ2pELElBQUksQ0FBQyxLQUFLLEVBQUU7WUFDVixNQUFNLElBQUksS0FBSyxDQUFDLHdCQUF3QixDQUFDLENBQUM7U0FDM0M7UUFDRCxJQUFJLENBQUMsV0FBVyxHQUFHLFNBQVMsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUM7SUFDM0MsQ0FBQzs7Ozs7O0lBS0QsTUFBTSxDQUFDLEdBQUcsQ0FBQyxLQUFhO1FBQ3RCLE9BQU8sa0JBQWtCLENBQUMsR0FBRyxDQUFDLGlCQUFpQixDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUM7SUFDMUQsQ0FBQzs7OztJQUtELE1BQU0sS0FBSyxZQUFZLEtBQWEsT0FBTyxrQkFBa0IsQ0FBQyxZQUFZLENBQUMsQ0FBQyxDQUFDO0NBQzlFOzs7SUF0QkMsb0NBQW9DOztJQUl4Qiw4QkFBb0I7O0lBQUUsMkJBQWlCOztBQW9CckQsTUFBTSxPQUFPLFdBQVc7SUFBeEI7UUFDVSxhQUFRLEdBQUcsSUFBSSxHQUFHLEVBQXlCLENBQUM7SUFldEQsQ0FBQzs7Ozs7SUFiQyxHQUFHLENBQUMsS0FBYTtRQUNmLElBQUksS0FBSyxZQUFZLGFBQWE7WUFBRSxPQUFPLEtBQUssQ0FBQztRQUVqRCxJQUFJLElBQUksQ0FBQyxRQUFRLENBQUMsR0FBRyxDQUFDLEtBQUssQ0FBQyxFQUFFO1lBQzVCLE9BQU8sbUJBQUEsSUFBSSxDQUFDLFFBQVEsQ0FBQyxHQUFHLENBQUMsS0FBSyxDQUFDLEVBQUUsQ0FBQztTQUNuQzs7Y0FFSyxNQUFNLEdBQUcsSUFBSSxhQUFhLENBQUMsS0FBSyxFQUFFLGFBQWEsQ0FBQyxZQUFZLENBQUM7UUFDbkUsSUFBSSxDQUFDLFFBQVEsQ0FBQyxHQUFHLENBQUMsS0FBSyxFQUFFLE1BQU0sQ0FBQyxDQUFDO1FBQ2pDLE9BQU8sTUFBTSxDQUFDO0lBQ2hCLENBQUM7Ozs7SUFFRCxJQUFJLFlBQVksS0FBYSxPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQztDQUMxRDs7Ozs7O0lBZkMsK0JBQW9EOzs7TUFpQmhELGtCQUFrQixHQUFHLElBQUksV0FBVyxFQUFFIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge3N0cmluZ2lmeX0gZnJvbSAnLi4vdXRpbC9zdHJpbmdpZnknO1xuaW1wb3J0IHtyZXNvbHZlRm9yd2FyZFJlZn0gZnJvbSAnLi9mb3J3YXJkX3JlZic7XG5cblxuLyoqXG4gKiBBIHVuaXF1ZSBvYmplY3QgdXNlZCBmb3IgcmV0cmlldmluZyBpdGVtcyBmcm9tIHRoZSB7QGxpbmsgUmVmbGVjdGl2ZUluamVjdG9yfS5cbiAqXG4gKiBLZXlzIGhhdmU6XG4gKiAtIGEgc3lzdGVtLXdpZGUgdW5pcXVlIGBpZGAuXG4gKiAtIGEgYHRva2VuYC5cbiAqXG4gKiBgS2V5YCBpcyB1c2VkIGludGVybmFsbHkgYnkge0BsaW5rIFJlZmxlY3RpdmVJbmplY3Rvcn0gYmVjYXVzZSBpdHMgc3lzdGVtLXdpZGUgdW5pcXVlIGBpZGAgYWxsb3dzXG4gKiB0aGVcbiAqIGluamVjdG9yIHRvIHN0b3JlIGNyZWF0ZWQgb2JqZWN0cyBpbiBhIG1vcmUgZWZmaWNpZW50IHdheS5cbiAqXG4gKiBgS2V5YCBzaG91bGQgbm90IGJlIGNyZWF0ZWQgZGlyZWN0bHkuIHtAbGluayBSZWZsZWN0aXZlSW5qZWN0b3J9IGNyZWF0ZXMga2V5cyBhdXRvbWF0aWNhbGx5IHdoZW5cbiAqIHJlc29sdmluZ1xuICogcHJvdmlkZXJzLlxuICpcbiAqIEBkZXByZWNhdGVkIE5vIHJlcGxhY2VtZW50XG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBjbGFzcyBSZWZsZWN0aXZlS2V5IHtcbiAgcHVibGljIHJlYWRvbmx5IGRpc3BsYXlOYW1lOiBzdHJpbmc7XG4gIC8qKlxuICAgKiBQcml2YXRlXG4gICAqL1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgdG9rZW46IE9iamVjdCwgcHVibGljIGlkOiBudW1iZXIpIHtcbiAgICBpZiAoIXRva2VuKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoJ1Rva2VuIG11c3QgYmUgZGVmaW5lZCEnKTtcbiAgICB9XG4gICAgdGhpcy5kaXNwbGF5TmFtZSA9IHN0cmluZ2lmeSh0aGlzLnRva2VuKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBSZXRyaWV2ZXMgYSBgS2V5YCBmb3IgYSB0b2tlbi5cbiAgICovXG4gIHN0YXRpYyBnZXQodG9rZW46IE9iamVjdCk6IFJlZmxlY3RpdmVLZXkge1xuICAgIHJldHVybiBfZ2xvYmFsS2V5UmVnaXN0cnkuZ2V0KHJlc29sdmVGb3J3YXJkUmVmKHRva2VuKSk7XG4gIH1cblxuICAvKipcbiAgICogQHJldHVybnMgdGhlIG51bWJlciBvZiBrZXlzIHJlZ2lzdGVyZWQgaW4gdGhlIHN5c3RlbS5cbiAgICovXG4gIHN0YXRpYyBnZXQgbnVtYmVyT2ZLZXlzKCk6IG51bWJlciB7IHJldHVybiBfZ2xvYmFsS2V5UmVnaXN0cnkubnVtYmVyT2ZLZXlzOyB9XG59XG5cbmV4cG9ydCBjbGFzcyBLZXlSZWdpc3RyeSB7XG4gIHByaXZhdGUgX2FsbEtleXMgPSBuZXcgTWFwPE9iamVjdCwgUmVmbGVjdGl2ZUtleT4oKTtcblxuICBnZXQodG9rZW46IE9iamVjdCk6IFJlZmxlY3RpdmVLZXkge1xuICAgIGlmICh0b2tlbiBpbnN0YW5jZW9mIFJlZmxlY3RpdmVLZXkpIHJldHVybiB0b2tlbjtcblxuICAgIGlmICh0aGlzLl9hbGxLZXlzLmhhcyh0b2tlbikpIHtcbiAgICAgIHJldHVybiB0aGlzLl9hbGxLZXlzLmdldCh0b2tlbikgITtcbiAgICB9XG5cbiAgICBjb25zdCBuZXdLZXkgPSBuZXcgUmVmbGVjdGl2ZUtleSh0b2tlbiwgUmVmbGVjdGl2ZUtleS5udW1iZXJPZktleXMpO1xuICAgIHRoaXMuX2FsbEtleXMuc2V0KHRva2VuLCBuZXdLZXkpO1xuICAgIHJldHVybiBuZXdLZXk7XG4gIH1cblxuICBnZXQgbnVtYmVyT2ZLZXlzKCk6IG51bWJlciB7IHJldHVybiB0aGlzLl9hbGxLZXlzLnNpemU7IH1cbn1cblxuY29uc3QgX2dsb2JhbEtleVJlZ2lzdHJ5ID0gbmV3IEtleVJlZ2lzdHJ5KCk7XG4iXX0=