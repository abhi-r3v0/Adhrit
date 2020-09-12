import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
import { filter } from 'rxjs/operators';
import { NgxSpinner, PRIMARY_SPINNER } from './ngx-spinner.enum';
import * as i0 from "@angular/core";
export class NgxSpinnerService {
    /**
     * Creates an instance of NgxSpinnerService.
     * @memberof NgxSpinnerService
     */
    constructor() {
        /**
         * Spinner observable
         *
         * @memberof NgxSpinnerService
         */
        // private spinnerObservable = new ReplaySubject<NgxSpinner>(1);
        this.spinnerObservable = new BehaviorSubject(null);
    }
    /**
    * Get subscription of desired spinner
    * @memberof NgxSpinnerService
    **/
    getSpinner(name) {
        return this.spinnerObservable.asObservable().pipe(filter((x) => x && x.name === name));
    }
    /**
     * To show spinner
     *
     * @memberof NgxSpinnerService
     */
    show(name = PRIMARY_SPINNER, spinner) {
        setTimeout(() => {
            const showPromise = new Promise((resolve, _reject) => {
                if (spinner && Object.keys(spinner).length) {
                    spinner['name'] = name;
                    this.spinnerObservable.next(new NgxSpinner(Object.assign(Object.assign({}, spinner), { show: true })));
                    resolve(true);
                }
                else {
                    this.spinnerObservable.next(new NgxSpinner({ name, show: true }));
                    resolve(true);
                }
            });
            return showPromise;
        }, 10);
    }
    /**
    * To hide spinner
    *
    * @memberof NgxSpinnerService
    */
    hide(name = PRIMARY_SPINNER, debounce = 10) {
        setTimeout(() => {
            const hidePromise = new Promise((resolve, _reject) => {
                this.spinnerObservable.next(new NgxSpinner({ name, show: false }));
                resolve(true);
            });
            return hidePromise;
        }, debounce);
    }
}
NgxSpinnerService.ɵprov = i0.ɵɵdefineInjectable({ factory: function NgxSpinnerService_Factory() { return new NgxSpinnerService(); }, token: NgxSpinnerService, providedIn: "root" });
NgxSpinnerService.decorators = [
    { type: Injectable, args: [{
                providedIn: 'root'
            },] }
];
NgxSpinnerService.ctorParameters = () => [];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmd4LXNwaW5uZXIuc2VydmljZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uL3Byb2plY3RzL25neC1zcGlubmVyL3NyYy9saWIvbmd4LXNwaW5uZXIuc2VydmljZS50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQSxPQUFPLEVBQUUsVUFBVSxFQUFFLE1BQU0sZUFBZSxDQUFDO0FBQzNDLE9BQU8sRUFBYyxlQUFlLEVBQUUsTUFBTSxNQUFNLENBQUM7QUFDbkQsT0FBTyxFQUFFLE1BQU0sRUFBRSxNQUFNLGdCQUFnQixDQUFDO0FBQ3hDLE9BQU8sRUFBRSxVQUFVLEVBQUUsZUFBZSxFQUFXLE1BQU0sb0JBQW9CLENBQUM7O0FBSzFFLE1BQU0sT0FBTyxpQkFBaUI7SUFRNUI7OztPQUdHO0lBQ0g7UUFYQTs7OztXQUlHO1FBQ0gsZ0VBQWdFO1FBQ3hELHNCQUFpQixHQUFHLElBQUksZUFBZSxDQUFhLElBQUksQ0FBQyxDQUFDO0lBS2xELENBQUM7SUFDakI7OztPQUdHO0lBQ0gsVUFBVSxDQUFDLElBQVk7UUFDckIsT0FBTyxJQUFJLENBQUMsaUJBQWlCLENBQUMsWUFBWSxFQUFFLENBQUMsSUFBSSxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQWEsRUFBRSxFQUFFLENBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQyxJQUFJLEtBQUssSUFBSSxDQUFDLENBQUMsQ0FBQztJQUNyRyxDQUFDO0lBQ0Q7Ozs7T0FJRztJQUNILElBQUksQ0FBQyxPQUFlLGVBQWUsRUFBRSxPQUFpQjtRQUNwRCxVQUFVLENBQUMsR0FBRyxFQUFFO1lBQ2QsTUFBTSxXQUFXLEdBQUcsSUFBSSxPQUFPLENBQUMsQ0FBQyxPQUFPLEVBQUUsT0FBTyxFQUFFLEVBQUU7Z0JBQ25ELElBQUksT0FBTyxJQUFJLE1BQU0sQ0FBQyxJQUFJLENBQUMsT0FBTyxDQUFDLENBQUMsTUFBTSxFQUFFO29CQUMxQyxPQUFPLENBQUMsTUFBTSxDQUFDLEdBQUcsSUFBSSxDQUFDO29CQUN2QixJQUFJLENBQUMsaUJBQWlCLENBQUMsSUFBSSxDQUFDLElBQUksVUFBVSxpQ0FBTSxPQUFPLEtBQUUsSUFBSSxFQUFFLElBQUksSUFBRyxDQUFDLENBQUM7b0JBQ3hFLE9BQU8sQ0FBQyxJQUFJLENBQUMsQ0FBQztpQkFDZjtxQkFBTTtvQkFDTCxJQUFJLENBQUMsaUJBQWlCLENBQUMsSUFBSSxDQUFDLElBQUksVUFBVSxDQUFDLEVBQUUsSUFBSSxFQUFFLElBQUksRUFBRSxJQUFJLEVBQUUsQ0FBQyxDQUFDLENBQUM7b0JBQ2xFLE9BQU8sQ0FBQyxJQUFJLENBQUMsQ0FBQztpQkFDZjtZQUNILENBQUMsQ0FBQyxDQUFDO1lBQ0gsT0FBTyxXQUFXLENBQUM7UUFDckIsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxDQUFDO0lBQ1QsQ0FBQztJQUNEOzs7O01BSUU7SUFDRixJQUFJLENBQUMsT0FBZSxlQUFlLEVBQUUsV0FBbUIsRUFBRTtRQUN4RCxVQUFVLENBQUMsR0FBRyxFQUFFO1lBQ2QsTUFBTSxXQUFXLEdBQUcsSUFBSSxPQUFPLENBQUMsQ0FBQyxPQUFPLEVBQUUsT0FBTyxFQUFFLEVBQUU7Z0JBQ25ELElBQUksQ0FBQyxpQkFBaUIsQ0FBQyxJQUFJLENBQUMsSUFBSSxVQUFVLENBQUMsRUFBRSxJQUFJLEVBQUUsSUFBSSxFQUFFLEtBQUssRUFBRSxDQUFDLENBQUMsQ0FBQztnQkFDbkUsT0FBTyxDQUFDLElBQUksQ0FBQyxDQUFDO1lBQ2hCLENBQUMsQ0FBQyxDQUFDO1lBQ0gsT0FBTyxXQUFXLENBQUM7UUFDckIsQ0FBQyxFQUFFLFFBQVEsQ0FBQyxDQUFDO0lBQ2YsQ0FBQzs7OztZQXhERixVQUFVLFNBQUM7Z0JBQ1YsVUFBVSxFQUFFLE1BQU07YUFDbkIiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBJbmplY3RhYmxlIH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQgeyBPYnNlcnZhYmxlLCBCZWhhdmlvclN1YmplY3QgfSBmcm9tICdyeGpzJztcbmltcG9ydCB7IGZpbHRlciB9IGZyb20gJ3J4anMvb3BlcmF0b3JzJztcbmltcG9ydCB7IE5neFNwaW5uZXIsIFBSSU1BUllfU1BJTk5FUiwgU3Bpbm5lciB9IGZyb20gJy4vbmd4LXNwaW5uZXIuZW51bSc7XG5cbkBJbmplY3RhYmxlKHtcbiAgcHJvdmlkZWRJbjogJ3Jvb3QnXG59KVxuZXhwb3J0IGNsYXNzIE5neFNwaW5uZXJTZXJ2aWNlIHtcbiAgLyoqXG4gICAqIFNwaW5uZXIgb2JzZXJ2YWJsZVxuICAgKlxuICAgKiBAbWVtYmVyb2YgTmd4U3Bpbm5lclNlcnZpY2VcbiAgICovXG4gIC8vIHByaXZhdGUgc3Bpbm5lck9ic2VydmFibGUgPSBuZXcgUmVwbGF5U3ViamVjdDxOZ3hTcGlubmVyPigxKTtcbiAgcHJpdmF0ZSBzcGlubmVyT2JzZXJ2YWJsZSA9IG5ldyBCZWhhdmlvclN1YmplY3Q8Tmd4U3Bpbm5lcj4obnVsbCk7XG4gIC8qKlxuICAgKiBDcmVhdGVzIGFuIGluc3RhbmNlIG9mIE5neFNwaW5uZXJTZXJ2aWNlLlxuICAgKiBAbWVtYmVyb2YgTmd4U3Bpbm5lclNlcnZpY2VcbiAgICovXG4gIGNvbnN0cnVjdG9yKCkgeyB9XG4gIC8qKlxuICAqIEdldCBzdWJzY3JpcHRpb24gb2YgZGVzaXJlZCBzcGlubmVyXG4gICogQG1lbWJlcm9mIE5neFNwaW5uZXJTZXJ2aWNlXG4gICoqL1xuICBnZXRTcGlubmVyKG5hbWU6IHN0cmluZyk6IE9ic2VydmFibGU8Tmd4U3Bpbm5lcj4ge1xuICAgIHJldHVybiB0aGlzLnNwaW5uZXJPYnNlcnZhYmxlLmFzT2JzZXJ2YWJsZSgpLnBpcGUoZmlsdGVyKCh4OiBOZ3hTcGlubmVyKSA9PiB4ICYmIHgubmFtZSA9PT0gbmFtZSkpO1xuICB9XG4gIC8qKlxuICAgKiBUbyBzaG93IHNwaW5uZXJcbiAgICpcbiAgICogQG1lbWJlcm9mIE5neFNwaW5uZXJTZXJ2aWNlXG4gICAqL1xuICBzaG93KG5hbWU6IHN0cmluZyA9IFBSSU1BUllfU1BJTk5FUiwgc3Bpbm5lcj86IFNwaW5uZXIpIHtcbiAgICBzZXRUaW1lb3V0KCgpID0+IHtcbiAgICAgIGNvbnN0IHNob3dQcm9taXNlID0gbmV3IFByb21pc2UoKHJlc29sdmUsIF9yZWplY3QpID0+IHtcbiAgICAgICAgaWYgKHNwaW5uZXIgJiYgT2JqZWN0LmtleXMoc3Bpbm5lcikubGVuZ3RoKSB7XG4gICAgICAgICAgc3Bpbm5lclsnbmFtZSddID0gbmFtZTtcbiAgICAgICAgICB0aGlzLnNwaW5uZXJPYnNlcnZhYmxlLm5leHQobmV3IE5neFNwaW5uZXIoeyAuLi5zcGlubmVyLCBzaG93OiB0cnVlIH0pKTtcbiAgICAgICAgICByZXNvbHZlKHRydWUpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIHRoaXMuc3Bpbm5lck9ic2VydmFibGUubmV4dChuZXcgTmd4U3Bpbm5lcih7IG5hbWUsIHNob3c6IHRydWUgfSkpO1xuICAgICAgICAgIHJlc29sdmUodHJ1ZSk7XG4gICAgICAgIH1cbiAgICAgIH0pO1xuICAgICAgcmV0dXJuIHNob3dQcm9taXNlO1xuICAgIH0sIDEwKTtcbiAgfVxuICAvKipcbiAgKiBUbyBoaWRlIHNwaW5uZXJcbiAgKlxuICAqIEBtZW1iZXJvZiBOZ3hTcGlubmVyU2VydmljZVxuICAqL1xuICBoaWRlKG5hbWU6IHN0cmluZyA9IFBSSU1BUllfU1BJTk5FUiwgZGVib3VuY2U6IG51bWJlciA9IDEwKSB7XG4gICAgc2V0VGltZW91dCgoKSA9PiB7XG4gICAgICBjb25zdCBoaWRlUHJvbWlzZSA9IG5ldyBQcm9taXNlKChyZXNvbHZlLCBfcmVqZWN0KSA9PiB7XG4gICAgICAgIHRoaXMuc3Bpbm5lck9ic2VydmFibGUubmV4dChuZXcgTmd4U3Bpbm5lcih7IG5hbWUsIHNob3c6IGZhbHNlIH0pKTtcbiAgICAgICAgcmVzb2x2ZSh0cnVlKTtcbiAgICAgIH0pO1xuICAgICAgcmV0dXJuIGhpZGVQcm9taXNlO1xuICAgIH0sIGRlYm91bmNlKTtcbiAgfVxufVxuIl19