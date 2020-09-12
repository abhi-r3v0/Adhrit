/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { from } from 'rxjs';
import { map, switchMap } from 'rxjs/operators';
/**
 * Perform a side effect through a switchMap for every emission on the source Observable,
 * but return an Observable that is identical to the source. It's essentially the same as
 * the `tap` operator, but if the side effectful `next` function returns an ObservableInput,
 * it will wait before continuing with the original value.
 */
export function switchTap(next) {
    return function (source) {
        return source.pipe(switchMap(v => {
            const nextResult = next(v);
            if (nextResult) {
                return from(nextResult).pipe(map(() => v));
            }
            return from([v]);
        }));
    };
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic3dpdGNoX3RhcC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL3JvdXRlci9zcmMvb3BlcmF0b3JzL3N3aXRjaF90YXAudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFDLElBQUksRUFBNEMsTUFBTSxNQUFNLENBQUM7QUFDckUsT0FBTyxFQUFDLEdBQUcsRUFBRSxTQUFTLEVBQUMsTUFBTSxnQkFBZ0IsQ0FBQztBQUU5Qzs7Ozs7R0FLRztBQUNILE1BQU0sVUFBVSxTQUFTLENBQUksSUFBeUM7SUFFcEUsT0FBTyxVQUFTLE1BQU07UUFDcEIsT0FBTyxNQUFNLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDLENBQUMsRUFBRTtZQUMvQixNQUFNLFVBQVUsR0FBRyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUM7WUFDM0IsSUFBSSxVQUFVLEVBQUU7Z0JBQ2QsT0FBTyxJQUFJLENBQUMsVUFBVSxDQUFDLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxHQUFHLEVBQUUsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO2FBQzVDO1lBQ0QsT0FBTyxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDO1FBQ25CLENBQUMsQ0FBQyxDQUFDLENBQUM7SUFDTixDQUFDLENBQUM7QUFDSixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7ZnJvbSwgTW9ub1R5cGVPcGVyYXRvckZ1bmN0aW9uLCBPYnNlcnZhYmxlSW5wdXR9IGZyb20gJ3J4anMnO1xuaW1wb3J0IHttYXAsIHN3aXRjaE1hcH0gZnJvbSAncnhqcy9vcGVyYXRvcnMnO1xuXG4vKipcbiAqIFBlcmZvcm0gYSBzaWRlIGVmZmVjdCB0aHJvdWdoIGEgc3dpdGNoTWFwIGZvciBldmVyeSBlbWlzc2lvbiBvbiB0aGUgc291cmNlIE9ic2VydmFibGUsXG4gKiBidXQgcmV0dXJuIGFuIE9ic2VydmFibGUgdGhhdCBpcyBpZGVudGljYWwgdG8gdGhlIHNvdXJjZS4gSXQncyBlc3NlbnRpYWxseSB0aGUgc2FtZSBhc1xuICogdGhlIGB0YXBgIG9wZXJhdG9yLCBidXQgaWYgdGhlIHNpZGUgZWZmZWN0ZnVsIGBuZXh0YCBmdW5jdGlvbiByZXR1cm5zIGFuIE9ic2VydmFibGVJbnB1dCxcbiAqIGl0IHdpbGwgd2FpdCBiZWZvcmUgY29udGludWluZyB3aXRoIHRoZSBvcmlnaW5hbCB2YWx1ZS5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHN3aXRjaFRhcDxUPihuZXh0OiAoeDogVCkgPT4gdm9pZHxPYnNlcnZhYmxlSW5wdXQ8YW55Pik6XG4gICAgTW9ub1R5cGVPcGVyYXRvckZ1bmN0aW9uPFQ+IHtcbiAgcmV0dXJuIGZ1bmN0aW9uKHNvdXJjZSkge1xuICAgIHJldHVybiBzb3VyY2UucGlwZShzd2l0Y2hNYXAodiA9PiB7XG4gICAgICBjb25zdCBuZXh0UmVzdWx0ID0gbmV4dCh2KTtcbiAgICAgIGlmIChuZXh0UmVzdWx0KSB7XG4gICAgICAgIHJldHVybiBmcm9tKG5leHRSZXN1bHQpLnBpcGUobWFwKCgpID0+IHYpKTtcbiAgICAgIH1cbiAgICAgIHJldHVybiBmcm9tKFt2XSk7XG4gICAgfSkpO1xuICB9O1xufVxuIl19