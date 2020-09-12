/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { AbstractControlDirective } from './abstract_control_directive';
function unimplemented() {
    throw new Error('unimplemented');
}
/**
 * @description
 * A base class that all `FormControl`-based directives extend. It binds a `FormControl`
 * object to a DOM element.
 *
 * @publicApi
 */
export class NgControl extends AbstractControlDirective {
    constructor() {
        super(...arguments);
        /**
         * @description
         * The parent form for the control.
         *
         * @internal
         */
        this._parent = null;
        /**
         * @description
         * The name for the control
         */
        this.name = null;
        /**
         * @description
         * The value accessor for the control
         */
        this.valueAccessor = null;
        /**
         * @description
         * The uncomposed array of synchronous validators for the control
         *
         * @internal
         */
        this._rawValidators = [];
        /**
         * @description
         * The uncomposed array of async validators for the control
         *
         * @internal
         */
        this._rawAsyncValidators = [];
    }
    /**
     * @description
     * The registered synchronous validator function for the control
     *
     * @throws An exception that this method is not implemented
     */
    get validator() {
        return unimplemented();
    }
    /**
     * @description
     * The registered async validator function for the control
     *
     * @throws An exception that this method is not implemented
     */
    get asyncValidator() {
        return unimplemented();
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmdfY29udHJvbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2Zvcm1zL3NyYy9kaXJlY3RpdmVzL25nX2NvbnRyb2wudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBR0gsT0FBTyxFQUFDLHdCQUF3QixFQUFDLE1BQU0sOEJBQThCLENBQUM7QUFLdEUsU0FBUyxhQUFhO0lBQ3BCLE1BQU0sSUFBSSxLQUFLLENBQUMsZUFBZSxDQUFDLENBQUM7QUFDbkMsQ0FBQztBQUVEOzs7Ozs7R0FNRztBQUNILE1BQU0sT0FBZ0IsU0FBVSxTQUFRLHdCQUF3QjtJQUFoRTs7UUFDRTs7Ozs7V0FLRztRQUNILFlBQU8sR0FBMEIsSUFBSSxDQUFDO1FBRXRDOzs7V0FHRztRQUNILFNBQUksR0FBdUIsSUFBSSxDQUFDO1FBRWhDOzs7V0FHRztRQUNILGtCQUFhLEdBQThCLElBQUksQ0FBQztRQUVoRDs7Ozs7V0FLRztRQUNILG1CQUFjLEdBQWlDLEVBQUUsQ0FBQztRQUVsRDs7Ozs7V0FLRztRQUNILHdCQUFtQixHQUEyQyxFQUFFLENBQUM7SUE2Qm5FLENBQUM7SUEzQkM7Ozs7O09BS0c7SUFDSCxJQUFJLFNBQVM7UUFDWCxPQUFvQixhQUFhLEVBQUUsQ0FBQztJQUN0QyxDQUFDO0lBRUQ7Ozs7O09BS0c7SUFDSCxJQUFJLGNBQWM7UUFDaEIsT0FBeUIsYUFBYSxFQUFFLENBQUM7SUFDM0MsQ0FBQztDQVNGIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cblxuaW1wb3J0IHtBYnN0cmFjdENvbnRyb2xEaXJlY3RpdmV9IGZyb20gJy4vYWJzdHJhY3RfY29udHJvbF9kaXJlY3RpdmUnO1xuaW1wb3J0IHtDb250cm9sQ29udGFpbmVyfSBmcm9tICcuL2NvbnRyb2xfY29udGFpbmVyJztcbmltcG9ydCB7Q29udHJvbFZhbHVlQWNjZXNzb3J9IGZyb20gJy4vY29udHJvbF92YWx1ZV9hY2Nlc3Nvcic7XG5pbXBvcnQge0FzeW5jVmFsaWRhdG9yLCBBc3luY1ZhbGlkYXRvckZuLCBWYWxpZGF0b3IsIFZhbGlkYXRvckZufSBmcm9tICcuL3ZhbGlkYXRvcnMnO1xuXG5mdW5jdGlvbiB1bmltcGxlbWVudGVkKCk6IGFueSB7XG4gIHRocm93IG5ldyBFcnJvcigndW5pbXBsZW1lbnRlZCcpO1xufVxuXG4vKipcbiAqIEBkZXNjcmlwdGlvblxuICogQSBiYXNlIGNsYXNzIHRoYXQgYWxsIGBGb3JtQ29udHJvbGAtYmFzZWQgZGlyZWN0aXZlcyBleHRlbmQuIEl0IGJpbmRzIGEgYEZvcm1Db250cm9sYFxuICogb2JqZWN0IHRvIGEgRE9NIGVsZW1lbnQuXG4gKlxuICogQHB1YmxpY0FwaVxuICovXG5leHBvcnQgYWJzdHJhY3QgY2xhc3MgTmdDb250cm9sIGV4dGVuZHMgQWJzdHJhY3RDb250cm9sRGlyZWN0aXZlIHtcbiAgLyoqXG4gICAqIEBkZXNjcmlwdGlvblxuICAgKiBUaGUgcGFyZW50IGZvcm0gZm9yIHRoZSBjb250cm9sLlxuICAgKlxuICAgKiBAaW50ZXJuYWxcbiAgICovXG4gIF9wYXJlbnQ6IENvbnRyb2xDb250YWluZXJ8bnVsbCA9IG51bGw7XG5cbiAgLyoqXG4gICAqIEBkZXNjcmlwdGlvblxuICAgKiBUaGUgbmFtZSBmb3IgdGhlIGNvbnRyb2xcbiAgICovXG4gIG5hbWU6IHN0cmluZ3xudW1iZXJ8bnVsbCA9IG51bGw7XG5cbiAgLyoqXG4gICAqIEBkZXNjcmlwdGlvblxuICAgKiBUaGUgdmFsdWUgYWNjZXNzb3IgZm9yIHRoZSBjb250cm9sXG4gICAqL1xuICB2YWx1ZUFjY2Vzc29yOiBDb250cm9sVmFsdWVBY2Nlc3NvcnxudWxsID0gbnVsbDtcblxuICAvKipcbiAgICogQGRlc2NyaXB0aW9uXG4gICAqIFRoZSB1bmNvbXBvc2VkIGFycmF5IG9mIHN5bmNocm9ub3VzIHZhbGlkYXRvcnMgZm9yIHRoZSBjb250cm9sXG4gICAqXG4gICAqIEBpbnRlcm5hbFxuICAgKi9cbiAgX3Jhd1ZhbGlkYXRvcnM6IEFycmF5PFZhbGlkYXRvcnxWYWxpZGF0b3JGbj4gPSBbXTtcblxuICAvKipcbiAgICogQGRlc2NyaXB0aW9uXG4gICAqIFRoZSB1bmNvbXBvc2VkIGFycmF5IG9mIGFzeW5jIHZhbGlkYXRvcnMgZm9yIHRoZSBjb250cm9sXG4gICAqXG4gICAqIEBpbnRlcm5hbFxuICAgKi9cbiAgX3Jhd0FzeW5jVmFsaWRhdG9yczogQXJyYXk8QXN5bmNWYWxpZGF0b3J8QXN5bmNWYWxpZGF0b3JGbj4gPSBbXTtcblxuICAvKipcbiAgICogQGRlc2NyaXB0aW9uXG4gICAqIFRoZSByZWdpc3RlcmVkIHN5bmNocm9ub3VzIHZhbGlkYXRvciBmdW5jdGlvbiBmb3IgdGhlIGNvbnRyb2xcbiAgICpcbiAgICogQHRocm93cyBBbiBleGNlcHRpb24gdGhhdCB0aGlzIG1ldGhvZCBpcyBub3QgaW1wbGVtZW50ZWRcbiAgICovXG4gIGdldCB2YWxpZGF0b3IoKTogVmFsaWRhdG9yRm58bnVsbCB7XG4gICAgcmV0dXJuIDxWYWxpZGF0b3JGbj51bmltcGxlbWVudGVkKCk7XG4gIH1cblxuICAvKipcbiAgICogQGRlc2NyaXB0aW9uXG4gICAqIFRoZSByZWdpc3RlcmVkIGFzeW5jIHZhbGlkYXRvciBmdW5jdGlvbiBmb3IgdGhlIGNvbnRyb2xcbiAgICpcbiAgICogQHRocm93cyBBbiBleGNlcHRpb24gdGhhdCB0aGlzIG1ldGhvZCBpcyBub3QgaW1wbGVtZW50ZWRcbiAgICovXG4gIGdldCBhc3luY1ZhbGlkYXRvcigpOiBBc3luY1ZhbGlkYXRvckZufG51bGwge1xuICAgIHJldHVybiA8QXN5bmNWYWxpZGF0b3JGbj51bmltcGxlbWVudGVkKCk7XG4gIH1cblxuICAvKipcbiAgICogQGRlc2NyaXB0aW9uXG4gICAqIFRoZSBjYWxsYmFjayBtZXRob2QgdG8gdXBkYXRlIHRoZSBtb2RlbCBmcm9tIHRoZSB2aWV3IHdoZW4gcmVxdWVzdGVkXG4gICAqXG4gICAqIEBwYXJhbSBuZXdWYWx1ZSBUaGUgbmV3IHZhbHVlIGZvciB0aGUgdmlld1xuICAgKi9cbiAgYWJzdHJhY3Qgdmlld1RvTW9kZWxVcGRhdGUobmV3VmFsdWU6IGFueSk6IHZvaWQ7XG59XG4iXX0=