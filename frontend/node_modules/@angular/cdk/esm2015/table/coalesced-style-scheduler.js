/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Injectable, NgZone } from '@angular/core';
import { from, Subject } from 'rxjs';
import { take, takeUntil } from 'rxjs/operators';
/**
 * @docs-private
 */
export class _Schedule {
    constructor() {
        this.tasks = [];
        this.endTasks = [];
    }
}
/**
 * Allows grouping up CSSDom mutations after the current execution context.
 * This can significantly improve performance when separate consecutive functions are
 * reading from the CSSDom and then mutating it.
 *
 * @docs-private
 */
export class _CoalescedStyleScheduler {
    constructor(_ngZone) {
        this._ngZone = _ngZone;
        this._currentSchedule = null;
        this._destroyed = new Subject();
    }
    /**
     * Schedules the specified task to run at the end of the current VM turn.
     */
    schedule(task) {
        this._createScheduleIfNeeded();
        this._currentSchedule.tasks.push(task);
    }
    /**
     * Schedules the specified task to run after other scheduled tasks at the end of the current
     * VM turn.
     */
    scheduleEnd(task) {
        this._createScheduleIfNeeded();
        this._currentSchedule.endTasks.push(task);
    }
    /** Prevent any further tasks from running. */
    ngOnDestroy() {
        this._destroyed.next();
        this._destroyed.complete();
    }
    _createScheduleIfNeeded() {
        if (this._currentSchedule) {
            return;
        }
        this._currentSchedule = new _Schedule();
        this._getScheduleObservable().pipe(takeUntil(this._destroyed)).subscribe(() => {
            while (this._currentSchedule.tasks.length || this._currentSchedule.endTasks.length) {
                const schedule = this._currentSchedule;
                // Capture new tasks scheduled by the current set of tasks.
                this._currentSchedule = new _Schedule();
                for (const task of schedule.tasks) {
                    task();
                }
                for (const task of schedule.endTasks) {
                    task();
                }
            }
            this._currentSchedule = null;
        });
    }
    _getScheduleObservable() {
        // Use onStable when in the context of an ongoing change detection cycle so that we
        // do not accidentally trigger additional cycles.
        return this._ngZone.isStable ?
            from(Promise.resolve(undefined)) :
            this._ngZone.onStable.pipe(take(1));
    }
}
_CoalescedStyleScheduler.decorators = [
    { type: Injectable }
];
_CoalescedStyleScheduler.ctorParameters = () => [
    { type: NgZone }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29hbGVzY2VkLXN0eWxlLXNjaGVkdWxlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvdGFibGUvY29hbGVzY2VkLXN0eWxlLXNjaGVkdWxlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsVUFBVSxFQUFFLE1BQU0sRUFBWSxNQUFNLGVBQWUsQ0FBQztBQUM1RCxPQUFPLEVBQUMsSUFBSSxFQUFFLE9BQU8sRUFBQyxNQUFNLE1BQU0sQ0FBQztBQUNuQyxPQUFPLEVBQUMsSUFBSSxFQUFFLFNBQVMsRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBRS9DOztHQUVHO0FBQ0gsTUFBTSxPQUFPLFNBQVM7SUFBdEI7UUFDRSxVQUFLLEdBQXNCLEVBQUUsQ0FBQztRQUM5QixhQUFRLEdBQXNCLEVBQUUsQ0FBQztJQUNuQyxDQUFDO0NBQUE7QUFFRDs7Ozs7O0dBTUc7QUFFSCxNQUFNLE9BQU8sd0JBQXdCO0lBSW5DLFlBQTZCLE9BQWU7UUFBZixZQUFPLEdBQVAsT0FBTyxDQUFRO1FBSHBDLHFCQUFnQixHQUFtQixJQUFJLENBQUM7UUFDL0IsZUFBVSxHQUFHLElBQUksT0FBTyxFQUFRLENBQUM7SUFFSCxDQUFDO0lBRWhEOztPQUVHO0lBQ0gsUUFBUSxDQUFDLElBQW1CO1FBQzFCLElBQUksQ0FBQyx1QkFBdUIsRUFBRSxDQUFDO1FBRS9CLElBQUksQ0FBQyxnQkFBaUIsQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO0lBQzFDLENBQUM7SUFFRDs7O09BR0c7SUFDSCxXQUFXLENBQUMsSUFBbUI7UUFDN0IsSUFBSSxDQUFDLHVCQUF1QixFQUFFLENBQUM7UUFFL0IsSUFBSSxDQUFDLGdCQUFpQixDQUFDLFFBQVEsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7SUFDN0MsQ0FBQztJQUVELDhDQUE4QztJQUM5QyxXQUFXO1FBQ1QsSUFBSSxDQUFDLFVBQVUsQ0FBQyxJQUFJLEVBQUUsQ0FBQztRQUN2QixJQUFJLENBQUMsVUFBVSxDQUFDLFFBQVEsRUFBRSxDQUFDO0lBQzdCLENBQUM7SUFFTyx1QkFBdUI7UUFDN0IsSUFBSSxJQUFJLENBQUMsZ0JBQWdCLEVBQUU7WUFBRSxPQUFPO1NBQUU7UUFFdEMsSUFBSSxDQUFDLGdCQUFnQixHQUFHLElBQUksU0FBUyxFQUFFLENBQUM7UUFFeEMsSUFBSSxDQUFDLHNCQUFzQixFQUFFLENBQUMsSUFBSSxDQUM5QixTQUFTLENBQUMsSUFBSSxDQUFDLFVBQVUsQ0FBQyxDQUM3QixDQUFDLFNBQVMsQ0FBQyxHQUFHLEVBQUU7WUFDZixPQUFPLElBQUksQ0FBQyxnQkFBaUIsQ0FBQyxLQUFLLENBQUMsTUFBTSxJQUFJLElBQUksQ0FBQyxnQkFBaUIsQ0FBQyxRQUFRLENBQUMsTUFBTSxFQUFFO2dCQUNwRixNQUFNLFFBQVEsR0FBRyxJQUFJLENBQUMsZ0JBQWlCLENBQUM7Z0JBRXhDLDJEQUEyRDtnQkFDM0QsSUFBSSxDQUFDLGdCQUFnQixHQUFHLElBQUksU0FBUyxFQUFFLENBQUM7Z0JBRXhDLEtBQUssTUFBTSxJQUFJLElBQUksUUFBUSxDQUFDLEtBQUssRUFBRTtvQkFDakMsSUFBSSxFQUFFLENBQUM7aUJBQ1I7Z0JBRUQsS0FBSyxNQUFNLElBQUksSUFBSSxRQUFRLENBQUMsUUFBUSxFQUFFO29CQUNwQyxJQUFJLEVBQUUsQ0FBQztpQkFDUjthQUNGO1lBRUQsSUFBSSxDQUFDLGdCQUFnQixHQUFHLElBQUksQ0FBQztRQUMvQixDQUFDLENBQUMsQ0FBQztJQUNMLENBQUM7SUFFTyxzQkFBc0I7UUFDNUIsbUZBQW1GO1FBQ25GLGlEQUFpRDtRQUNqRCxPQUFPLElBQUksQ0FBQyxPQUFPLENBQUMsUUFBUSxDQUFDLENBQUM7WUFDMUIsSUFBSSxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsU0FBUyxDQUFDLENBQUMsQ0FBQyxDQUFDO1lBQ2xDLElBQUksQ0FBQyxPQUFPLENBQUMsUUFBUSxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztJQUMxQyxDQUFDOzs7WUFqRUYsVUFBVTs7O1lBbkJTLE1BQU0iLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtJbmplY3RhYmxlLCBOZ1pvbmUsIE9uRGVzdHJveX0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge2Zyb20sIFN1YmplY3R9IGZyb20gJ3J4anMnO1xuaW1wb3J0IHt0YWtlLCB0YWtlVW50aWx9IGZyb20gJ3J4anMvb3BlcmF0b3JzJztcblxuLyoqXG4gKiBAZG9jcy1wcml2YXRlXG4gKi9cbmV4cG9ydCBjbGFzcyBfU2NoZWR1bGUge1xuICB0YXNrczogKCgpID0+IHVua25vd24pW10gPSBbXTtcbiAgZW5kVGFza3M6ICgoKSA9PiB1bmtub3duKVtdID0gW107XG59XG5cbi8qKlxuICogQWxsb3dzIGdyb3VwaW5nIHVwIENTU0RvbSBtdXRhdGlvbnMgYWZ0ZXIgdGhlIGN1cnJlbnQgZXhlY3V0aW9uIGNvbnRleHQuXG4gKiBUaGlzIGNhbiBzaWduaWZpY2FudGx5IGltcHJvdmUgcGVyZm9ybWFuY2Ugd2hlbiBzZXBhcmF0ZSBjb25zZWN1dGl2ZSBmdW5jdGlvbnMgYXJlXG4gKiByZWFkaW5nIGZyb20gdGhlIENTU0RvbSBhbmQgdGhlbiBtdXRhdGluZyBpdC5cbiAqXG4gKiBAZG9jcy1wcml2YXRlXG4gKi9cbkBJbmplY3RhYmxlKClcbmV4cG9ydCBjbGFzcyBfQ29hbGVzY2VkU3R5bGVTY2hlZHVsZXIgaW1wbGVtZW50cyBPbkRlc3Ryb3kge1xuICBwcml2YXRlIF9jdXJyZW50U2NoZWR1bGU6IF9TY2hlZHVsZXxudWxsID0gbnVsbDtcbiAgcHJpdmF0ZSByZWFkb25seSBfZGVzdHJveWVkID0gbmV3IFN1YmplY3Q8dm9pZD4oKTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIHJlYWRvbmx5IF9uZ1pvbmU6IE5nWm9uZSkge31cblxuICAvKipcbiAgICogU2NoZWR1bGVzIHRoZSBzcGVjaWZpZWQgdGFzayB0byBydW4gYXQgdGhlIGVuZCBvZiB0aGUgY3VycmVudCBWTSB0dXJuLlxuICAgKi9cbiAgc2NoZWR1bGUodGFzazogKCkgPT4gdW5rbm93bik6IHZvaWQge1xuICAgIHRoaXMuX2NyZWF0ZVNjaGVkdWxlSWZOZWVkZWQoKTtcblxuICAgIHRoaXMuX2N1cnJlbnRTY2hlZHVsZSEudGFza3MucHVzaCh0YXNrKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBTY2hlZHVsZXMgdGhlIHNwZWNpZmllZCB0YXNrIHRvIHJ1biBhZnRlciBvdGhlciBzY2hlZHVsZWQgdGFza3MgYXQgdGhlIGVuZCBvZiB0aGUgY3VycmVudFxuICAgKiBWTSB0dXJuLlxuICAgKi9cbiAgc2NoZWR1bGVFbmQodGFzazogKCkgPT4gdW5rbm93bik6IHZvaWQge1xuICAgIHRoaXMuX2NyZWF0ZVNjaGVkdWxlSWZOZWVkZWQoKTtcblxuICAgIHRoaXMuX2N1cnJlbnRTY2hlZHVsZSEuZW5kVGFza3MucHVzaCh0YXNrKTtcbiAgfVxuXG4gIC8qKiBQcmV2ZW50IGFueSBmdXJ0aGVyIHRhc2tzIGZyb20gcnVubmluZy4gKi9cbiAgbmdPbkRlc3Ryb3koKSB7XG4gICAgdGhpcy5fZGVzdHJveWVkLm5leHQoKTtcbiAgICB0aGlzLl9kZXN0cm95ZWQuY29tcGxldGUoKTtcbiAgfVxuXG4gIHByaXZhdGUgX2NyZWF0ZVNjaGVkdWxlSWZOZWVkZWQoKSB7XG4gICAgaWYgKHRoaXMuX2N1cnJlbnRTY2hlZHVsZSkgeyByZXR1cm47IH1cblxuICAgIHRoaXMuX2N1cnJlbnRTY2hlZHVsZSA9IG5ldyBfU2NoZWR1bGUoKTtcblxuICAgIHRoaXMuX2dldFNjaGVkdWxlT2JzZXJ2YWJsZSgpLnBpcGUoXG4gICAgICAgIHRha2VVbnRpbCh0aGlzLl9kZXN0cm95ZWQpLFxuICAgICkuc3Vic2NyaWJlKCgpID0+IHtcbiAgICAgIHdoaWxlICh0aGlzLl9jdXJyZW50U2NoZWR1bGUhLnRhc2tzLmxlbmd0aCB8fCB0aGlzLl9jdXJyZW50U2NoZWR1bGUhLmVuZFRhc2tzLmxlbmd0aCkge1xuICAgICAgICBjb25zdCBzY2hlZHVsZSA9IHRoaXMuX2N1cnJlbnRTY2hlZHVsZSE7XG5cbiAgICAgICAgLy8gQ2FwdHVyZSBuZXcgdGFza3Mgc2NoZWR1bGVkIGJ5IHRoZSBjdXJyZW50IHNldCBvZiB0YXNrcy5cbiAgICAgICAgdGhpcy5fY3VycmVudFNjaGVkdWxlID0gbmV3IF9TY2hlZHVsZSgpO1xuXG4gICAgICAgIGZvciAoY29uc3QgdGFzayBvZiBzY2hlZHVsZS50YXNrcykge1xuICAgICAgICAgIHRhc2soKTtcbiAgICAgICAgfVxuXG4gICAgICAgIGZvciAoY29uc3QgdGFzayBvZiBzY2hlZHVsZS5lbmRUYXNrcykge1xuICAgICAgICAgIHRhc2soKTtcbiAgICAgICAgfVxuICAgICAgfVxuXG4gICAgICB0aGlzLl9jdXJyZW50U2NoZWR1bGUgPSBudWxsO1xuICAgIH0pO1xuICB9XG5cbiAgcHJpdmF0ZSBfZ2V0U2NoZWR1bGVPYnNlcnZhYmxlKCkge1xuICAgIC8vIFVzZSBvblN0YWJsZSB3aGVuIGluIHRoZSBjb250ZXh0IG9mIGFuIG9uZ29pbmcgY2hhbmdlIGRldGVjdGlvbiBjeWNsZSBzbyB0aGF0IHdlXG4gICAgLy8gZG8gbm90IGFjY2lkZW50YWxseSB0cmlnZ2VyIGFkZGl0aW9uYWwgY3ljbGVzLlxuICAgIHJldHVybiB0aGlzLl9uZ1pvbmUuaXNTdGFibGUgP1xuICAgICAgICBmcm9tKFByb21pc2UucmVzb2x2ZSh1bmRlZmluZWQpKSA6XG4gICAgICAgIHRoaXMuX25nWm9uZS5vblN0YWJsZS5waXBlKHRha2UoMSkpO1xuICB9XG59XG4iXX0=