/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { coerceBooleanProperty } from '@angular/cdk/coercion';
import { Directive, InjectionToken, Input } from '@angular/core';
import { Subject } from 'rxjs';
/** Used to generate unique ID for each accordion. */
let nextId = 0;
/**
 * Injection token that can be used to reference instances of `CdkAccordion`. It serves
 * as alternative token to the actual `CdkAccordion` class which could cause unnecessary
 * retention of the class and its directive metadata.
 */
export const CDK_ACCORDION = new InjectionToken('CdkAccordion');
/**
 * Directive whose purpose is to manage the expanded state of CdkAccordionItem children.
 */
export class CdkAccordion {
    constructor() {
        /** Emits when the state of the accordion changes */
        this._stateChanges = new Subject();
        /** Stream that emits true/false when openAll/closeAll is triggered. */
        this._openCloseAllActions = new Subject();
        /** A readonly id value to use for unique selection coordination. */
        this.id = `cdk-accordion-${nextId++}`;
        this._multi = false;
    }
    /** Whether the accordion should allow multiple expanded accordion items simultaneously. */
    get multi() { return this._multi; }
    set multi(multi) { this._multi = coerceBooleanProperty(multi); }
    /** Opens all enabled accordion items in an accordion where multi is enabled. */
    openAll() {
        this._openCloseAll(true);
    }
    /** Closes all enabled accordion items in an accordion where multi is enabled. */
    closeAll() {
        this._openCloseAll(false);
    }
    ngOnChanges(changes) {
        this._stateChanges.next(changes);
    }
    ngOnDestroy() {
        this._stateChanges.complete();
    }
    _openCloseAll(expanded) {
        if (this.multi) {
            this._openCloseAllActions.next(expanded);
        }
    }
}
CdkAccordion.decorators = [
    { type: Directive, args: [{
                selector: 'cdk-accordion, [cdkAccordion]',
                exportAs: 'cdkAccordion',
                providers: [{ provide: CDK_ACCORDION, useExisting: CdkAccordion }],
            },] }
];
CdkAccordion.propDecorators = {
    multi: [{ type: Input }]
};
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiYWNjb3JkaW9uLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vc3JjL2Nkay9hY2NvcmRpb24vYWNjb3JkaW9uLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBZSxxQkFBcUIsRUFBQyxNQUFNLHVCQUF1QixDQUFDO0FBQzFFLE9BQU8sRUFBQyxTQUFTLEVBQUUsY0FBYyxFQUFFLEtBQUssRUFBc0MsTUFBTSxlQUFlLENBQUM7QUFDcEcsT0FBTyxFQUFDLE9BQU8sRUFBQyxNQUFNLE1BQU0sQ0FBQztBQUU3QixxREFBcUQ7QUFDckQsSUFBSSxNQUFNLEdBQUcsQ0FBQyxDQUFDO0FBRWY7Ozs7R0FJRztBQUNILE1BQU0sQ0FBQyxNQUFNLGFBQWEsR0FBRyxJQUFJLGNBQWMsQ0FBZSxjQUFjLENBQUMsQ0FBQztBQUU5RTs7R0FFRztBQU1ILE1BQU0sT0FBTyxZQUFZO0lBTHpCO1FBTUUsb0RBQW9EO1FBQzNDLGtCQUFhLEdBQUcsSUFBSSxPQUFPLEVBQWlCLENBQUM7UUFFdEQsdUVBQXVFO1FBQzlELHlCQUFvQixHQUFxQixJQUFJLE9BQU8sRUFBVyxDQUFDO1FBRXpFLG9FQUFvRTtRQUMzRCxPQUFFLEdBQUcsaUJBQWlCLE1BQU0sRUFBRSxFQUFFLENBQUM7UUFNbEMsV0FBTSxHQUFZLEtBQUssQ0FBQztJQTJCbEMsQ0FBQztJQS9CQywyRkFBMkY7SUFDM0YsSUFDSSxLQUFLLEtBQWMsT0FBTyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQztJQUM1QyxJQUFJLEtBQUssQ0FBQyxLQUFjLElBQUksSUFBSSxDQUFDLE1BQU0sR0FBRyxxQkFBcUIsQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUM7SUFHekUsZ0ZBQWdGO0lBQ2hGLE9BQU87UUFDTCxJQUFJLENBQUMsYUFBYSxDQUFDLElBQUksQ0FBQyxDQUFDO0lBQzNCLENBQUM7SUFFRCxpRkFBaUY7SUFDakYsUUFBUTtRQUNOLElBQUksQ0FBQyxhQUFhLENBQUMsS0FBSyxDQUFDLENBQUM7SUFDNUIsQ0FBQztJQUVELFdBQVcsQ0FBQyxPQUFzQjtRQUNoQyxJQUFJLENBQUMsYUFBYSxDQUFDLElBQUksQ0FBQyxPQUFPLENBQUMsQ0FBQztJQUNuQyxDQUFDO0lBRUQsV0FBVztRQUNULElBQUksQ0FBQyxhQUFhLENBQUMsUUFBUSxFQUFFLENBQUM7SUFDaEMsQ0FBQztJQUVPLGFBQWEsQ0FBQyxRQUFpQjtRQUNyQyxJQUFJLElBQUksQ0FBQyxLQUFLLEVBQUU7WUFDZCxJQUFJLENBQUMsb0JBQW9CLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxDQUFDO1NBQzFDO0lBQ0gsQ0FBQzs7O1lBM0NGLFNBQVMsU0FBQztnQkFDVCxRQUFRLEVBQUUsK0JBQStCO2dCQUN6QyxRQUFRLEVBQUUsY0FBYztnQkFDeEIsU0FBUyxFQUFFLENBQUMsRUFBQyxPQUFPLEVBQUUsYUFBYSxFQUFFLFdBQVcsRUFBRSxZQUFZLEVBQUMsQ0FBQzthQUNqRTs7O29CQVlFLEtBQUsiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtCb29sZWFuSW5wdXQsIGNvZXJjZUJvb2xlYW5Qcm9wZXJ0eX0gZnJvbSAnQGFuZ3VsYXIvY2RrL2NvZXJjaW9uJztcbmltcG9ydCB7RGlyZWN0aXZlLCBJbmplY3Rpb25Ub2tlbiwgSW5wdXQsIE9uQ2hhbmdlcywgT25EZXN0cm95LCBTaW1wbGVDaGFuZ2VzfSBmcm9tICdAYW5ndWxhci9jb3JlJztcbmltcG9ydCB7U3ViamVjdH0gZnJvbSAncnhqcyc7XG5cbi8qKiBVc2VkIHRvIGdlbmVyYXRlIHVuaXF1ZSBJRCBmb3IgZWFjaCBhY2NvcmRpb24uICovXG5sZXQgbmV4dElkID0gMDtcblxuLyoqXG4gKiBJbmplY3Rpb24gdG9rZW4gdGhhdCBjYW4gYmUgdXNlZCB0byByZWZlcmVuY2UgaW5zdGFuY2VzIG9mIGBDZGtBY2NvcmRpb25gLiBJdCBzZXJ2ZXNcbiAqIGFzIGFsdGVybmF0aXZlIHRva2VuIHRvIHRoZSBhY3R1YWwgYENka0FjY29yZGlvbmAgY2xhc3Mgd2hpY2ggY291bGQgY2F1c2UgdW5uZWNlc3NhcnlcbiAqIHJldGVudGlvbiBvZiB0aGUgY2xhc3MgYW5kIGl0cyBkaXJlY3RpdmUgbWV0YWRhdGEuXG4gKi9cbmV4cG9ydCBjb25zdCBDREtfQUNDT1JESU9OID0gbmV3IEluamVjdGlvblRva2VuPENka0FjY29yZGlvbj4oJ0Nka0FjY29yZGlvbicpO1xuXG4vKipcbiAqIERpcmVjdGl2ZSB3aG9zZSBwdXJwb3NlIGlzIHRvIG1hbmFnZSB0aGUgZXhwYW5kZWQgc3RhdGUgb2YgQ2RrQWNjb3JkaW9uSXRlbSBjaGlsZHJlbi5cbiAqL1xuQERpcmVjdGl2ZSh7XG4gIHNlbGVjdG9yOiAnY2RrLWFjY29yZGlvbiwgW2Nka0FjY29yZGlvbl0nLFxuICBleHBvcnRBczogJ2Nka0FjY29yZGlvbicsXG4gIHByb3ZpZGVyczogW3twcm92aWRlOiBDREtfQUNDT1JESU9OLCB1c2VFeGlzdGluZzogQ2RrQWNjb3JkaW9ufV0sXG59KVxuZXhwb3J0IGNsYXNzIENka0FjY29yZGlvbiBpbXBsZW1lbnRzIE9uRGVzdHJveSwgT25DaGFuZ2VzIHtcbiAgLyoqIEVtaXRzIHdoZW4gdGhlIHN0YXRlIG9mIHRoZSBhY2NvcmRpb24gY2hhbmdlcyAqL1xuICByZWFkb25seSBfc3RhdGVDaGFuZ2VzID0gbmV3IFN1YmplY3Q8U2ltcGxlQ2hhbmdlcz4oKTtcblxuICAvKiogU3RyZWFtIHRoYXQgZW1pdHMgdHJ1ZS9mYWxzZSB3aGVuIG9wZW5BbGwvY2xvc2VBbGwgaXMgdHJpZ2dlcmVkLiAqL1xuICByZWFkb25seSBfb3BlbkNsb3NlQWxsQWN0aW9uczogU3ViamVjdDxib29sZWFuPiA9IG5ldyBTdWJqZWN0PGJvb2xlYW4+KCk7XG5cbiAgLyoqIEEgcmVhZG9ubHkgaWQgdmFsdWUgdG8gdXNlIGZvciB1bmlxdWUgc2VsZWN0aW9uIGNvb3JkaW5hdGlvbi4gKi9cbiAgcmVhZG9ubHkgaWQgPSBgY2RrLWFjY29yZGlvbi0ke25leHRJZCsrfWA7XG5cbiAgLyoqIFdoZXRoZXIgdGhlIGFjY29yZGlvbiBzaG91bGQgYWxsb3cgbXVsdGlwbGUgZXhwYW5kZWQgYWNjb3JkaW9uIGl0ZW1zIHNpbXVsdGFuZW91c2x5LiAqL1xuICBASW5wdXQoKVxuICBnZXQgbXVsdGkoKTogYm9vbGVhbiB7IHJldHVybiB0aGlzLl9tdWx0aTsgfVxuICBzZXQgbXVsdGkobXVsdGk6IGJvb2xlYW4pIHsgdGhpcy5fbXVsdGkgPSBjb2VyY2VCb29sZWFuUHJvcGVydHkobXVsdGkpOyB9XG4gIHByaXZhdGUgX211bHRpOiBib29sZWFuID0gZmFsc2U7XG5cbiAgLyoqIE9wZW5zIGFsbCBlbmFibGVkIGFjY29yZGlvbiBpdGVtcyBpbiBhbiBhY2NvcmRpb24gd2hlcmUgbXVsdGkgaXMgZW5hYmxlZC4gKi9cbiAgb3BlbkFsbCgpOiB2b2lkIHtcbiAgICB0aGlzLl9vcGVuQ2xvc2VBbGwodHJ1ZSk7XG4gIH1cblxuICAvKiogQ2xvc2VzIGFsbCBlbmFibGVkIGFjY29yZGlvbiBpdGVtcyBpbiBhbiBhY2NvcmRpb24gd2hlcmUgbXVsdGkgaXMgZW5hYmxlZC4gKi9cbiAgY2xvc2VBbGwoKTogdm9pZCB7XG4gICAgdGhpcy5fb3BlbkNsb3NlQWxsKGZhbHNlKTtcbiAgfVxuXG4gIG5nT25DaGFuZ2VzKGNoYW5nZXM6IFNpbXBsZUNoYW5nZXMpIHtcbiAgICB0aGlzLl9zdGF0ZUNoYW5nZXMubmV4dChjaGFuZ2VzKTtcbiAgfVxuXG4gIG5nT25EZXN0cm95KCkge1xuICAgIHRoaXMuX3N0YXRlQ2hhbmdlcy5jb21wbGV0ZSgpO1xuICB9XG5cbiAgcHJpdmF0ZSBfb3BlbkNsb3NlQWxsKGV4cGFuZGVkOiBib29sZWFuKTogdm9pZCB7XG4gICAgaWYgKHRoaXMubXVsdGkpIHtcbiAgICAgIHRoaXMuX29wZW5DbG9zZUFsbEFjdGlvbnMubmV4dChleHBhbmRlZCk7XG4gICAgfVxuICB9XG5cbiAgc3RhdGljIG5nQWNjZXB0SW5wdXRUeXBlX211bHRpOiBCb29sZWFuSW5wdXQ7XG59XG4iXX0=