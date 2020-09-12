/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/event_emitter.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/// <reference types="rxjs" />
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
/// <reference types="rxjs" />
import { Subject, Subscription } from 'rxjs';
/**
 * Use in components with the `\@Output` directive to emit custom events
 * synchronously or asynchronously, and register handlers for those events
 * by subscribing to an instance.
 *
 * \@usageNotes
 *
 * Extends
 * [RxJS `Subject`](https://rxjs.dev/api/index/class/Subject)
 * for Angular by adding the `emit()` method.
 *
 * In the following example, a component defines two output properties
 * that create event emitters. When the title is clicked, the emitter
 * emits an open or close event to toggle the current visibility state.
 *
 * ```html
 * \@Component({
 *   selector: 'zippy',
 *   template: `
 *   <div class="zippy">
 *     <div (click)="toggle()">Toggle</div>
 *     <div [hidden]="!visible">
 *       <ng-content></ng-content>
 *     </div>
 *  </div>`})
 * export class Zippy {
 *   visible: boolean = true;
 * \@Output() open: EventEmitter<any> = new EventEmitter();
 * \@Output() close: EventEmitter<any> = new EventEmitter();
 *
 *   toggle() {
 *     this.visible = !this.visible;
 *     if (this.visible) {
 *       this.open.emit(null);
 *     } else {
 *       this.close.emit(null);
 *     }
 *   }
 * }
 * ```
 *
 * Access the event object with the `$event` argument passed to the output event
 * handler:
 *
 * ```html
 * <zippy (open)="onOpen($event)" (close)="onClose($event)"></zippy>
 * ```
 *
 * @see [Observables in Angular](guide/observables-in-angular)
 * \@publicApi
 * @template T
 */
export class EventEmitter extends Subject {
    // tslint:disable-line
    /**
     * Creates an instance of this class that can
     * deliver events synchronously or asynchronously.
     *
     * @param {?=} isAsync When true, deliver events asynchronously.
     *
     */
    constructor(isAsync = false) {
        super();
        this.__isAsync = isAsync;
    }
    /**
     * Emits an event containing a given value.
     * @param {?=} value The value to emit.
     * @return {?}
     */
    emit(value) { super.next(value); }
    /**
     * Registers handlers for events emitted by this instance.
     * @param {?=} generatorOrNext When supplied, a custom handler for emitted events.
     * @param {?=} error When supplied, a custom handler for an error notification
     * from this emitter.
     * @param {?=} complete When supplied, a custom handler for a completion
     * notification from this emitter.
     * @return {?}
     */
    subscribe(generatorOrNext, error, complete) {
        /** @type {?} */
        let schedulerFn;
        /** @type {?} */
        let errorFn = (/**
         * @param {?} err
         * @return {?}
         */
        (err) => null);
        /** @type {?} */
        let completeFn = (/**
         * @return {?}
         */
        () => null);
        if (generatorOrNext && typeof generatorOrNext === 'object') {
            schedulerFn = this.__isAsync ? (/**
             * @param {?} value
             * @return {?}
             */
            (value) => {
                setTimeout((/**
                 * @return {?}
                 */
                () => generatorOrNext.next(value)));
            }) : (/**
             * @param {?} value
             * @return {?}
             */
            (value) => { generatorOrNext.next(value); });
            if (generatorOrNext.error) {
                errorFn = this.__isAsync ? (/**
                 * @param {?} err
                 * @return {?}
                 */
                (err) => { setTimeout((/**
                 * @return {?}
                 */
                () => generatorOrNext.error(err))); }) :
                    (/**
                     * @param {?} err
                     * @return {?}
                     */
                    (err) => { generatorOrNext.error(err); });
            }
            if (generatorOrNext.complete) {
                completeFn = this.__isAsync ? (/**
                 * @return {?}
                 */
                () => { setTimeout((/**
                 * @return {?}
                 */
                () => generatorOrNext.complete())); }) :
                    (/**
                     * @return {?}
                     */
                    () => { generatorOrNext.complete(); });
            }
        }
        else {
            schedulerFn = this.__isAsync ? (/**
             * @param {?} value
             * @return {?}
             */
            (value) => { setTimeout((/**
             * @return {?}
             */
            () => generatorOrNext(value))); }) :
                (/**
                 * @param {?} value
                 * @return {?}
                 */
                (value) => { generatorOrNext(value); });
            if (error) {
                errorFn =
                    this.__isAsync ? (/**
                     * @param {?} err
                     * @return {?}
                     */
                    (err) => { setTimeout((/**
                     * @return {?}
                     */
                    () => error(err))); }) : (/**
                     * @param {?} err
                     * @return {?}
                     */
                    (err) => { error(err); });
            }
            if (complete) {
                completeFn =
                    this.__isAsync ? (/**
                     * @return {?}
                     */
                    () => { setTimeout((/**
                     * @return {?}
                     */
                    () => complete())); }) : (/**
                     * @return {?}
                     */
                    () => { complete(); });
            }
        }
        /** @type {?} */
        const sink = super.subscribe(schedulerFn, errorFn, completeFn);
        if (generatorOrNext instanceof Subscription) {
            generatorOrNext.add(sink);
        }
        return sink;
    }
}
if (false) {
    /**
     * \@internal
     * @type {?}
     */
    EventEmitter.prototype.__isAsync;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXZlbnRfZW1pdHRlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL2V2ZW50X2VtaXR0ZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7QUFRQSw4QkFBOEI7Ozs7Ozs7OztBQUU5QixPQUFPLEVBQUMsT0FBTyxFQUFFLFlBQVksRUFBQyxNQUFNLE1BQU0sQ0FBQzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFxRDNDLE1BQU0sT0FBTyxZQUE0QixTQUFRLE9BQVU7Ozs7Ozs7OztJQWF6RCxZQUFZLFVBQW1CLEtBQUs7UUFDbEMsS0FBSyxFQUFFLENBQUM7UUFDUixJQUFJLENBQUMsU0FBUyxHQUFHLE9BQU8sQ0FBQztJQUMzQixDQUFDOzs7Ozs7SUFNRCxJQUFJLENBQUMsS0FBUyxJQUFJLEtBQUssQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUMsQ0FBQyxDQUFDOzs7Ozs7Ozs7O0lBVXRDLFNBQVMsQ0FBQyxlQUFxQixFQUFFLEtBQVcsRUFBRSxRQUFjOztZQUN0RCxXQUE0Qjs7WUFDNUIsT0FBTzs7OztRQUFHLENBQUMsR0FBUSxFQUFPLEVBQUUsQ0FBQyxJQUFJLENBQUE7O1lBQ2pDLFVBQVU7OztRQUFHLEdBQVEsRUFBRSxDQUFDLElBQUksQ0FBQTtRQUVoQyxJQUFJLGVBQWUsSUFBSSxPQUFPLGVBQWUsS0FBSyxRQUFRLEVBQUU7WUFDMUQsV0FBVyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQzs7OztZQUFDLENBQUMsS0FBVSxFQUFFLEVBQUU7Z0JBQzVDLFVBQVU7OztnQkFBQyxHQUFHLEVBQUUsQ0FBQyxlQUFlLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxFQUFDLENBQUM7WUFDaEQsQ0FBQyxFQUFDLENBQUM7Ozs7WUFBQyxDQUFDLEtBQVUsRUFBRSxFQUFFLEdBQUcsZUFBZSxDQUFDLElBQUksQ0FBQyxLQUFLLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQSxDQUFDO1lBRXJELElBQUksZUFBZSxDQUFDLEtBQUssRUFBRTtnQkFDekIsT0FBTyxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQzs7OztnQkFBQyxDQUFDLEdBQUcsRUFBRSxFQUFFLEdBQUcsVUFBVTs7O2dCQUFDLEdBQUcsRUFBRSxDQUFDLGVBQWUsQ0FBQyxLQUFLLENBQUMsR0FBRyxDQUFDLEVBQUMsQ0FBQyxDQUFDLENBQUMsRUFBQyxDQUFDOzs7OztvQkFDNUQsQ0FBQyxHQUFHLEVBQUUsRUFBRSxHQUFHLGVBQWUsQ0FBQyxLQUFLLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUEsQ0FBQzthQUNyRTtZQUVELElBQUksZUFBZSxDQUFDLFFBQVEsRUFBRTtnQkFDNUIsVUFBVSxHQUFHLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQzs7O2dCQUFDLEdBQUcsRUFBRSxHQUFHLFVBQVU7OztnQkFBQyxHQUFHLEVBQUUsQ0FBQyxlQUFlLENBQUMsUUFBUSxFQUFFLEVBQUMsQ0FBQyxDQUFDLENBQUMsRUFBQyxDQUFDOzs7O29CQUN6RCxHQUFHLEVBQUUsR0FBRyxlQUFlLENBQUMsUUFBUSxFQUFFLENBQUMsQ0FBQyxDQUFDLENBQUEsQ0FBQzthQUNyRTtTQUNGO2FBQU07WUFDTCxXQUFXLEdBQUcsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDOzs7O1lBQUMsQ0FBQyxLQUFVLEVBQUUsRUFBRSxHQUFHLFVBQVU7OztZQUFDLEdBQUcsRUFBRSxDQUFDLGVBQWUsQ0FBQyxLQUFLLENBQUMsRUFBQyxDQUFDLENBQUMsQ0FBQyxFQUFDLENBQUM7Ozs7O2dCQUMvRCxDQUFDLEtBQVUsRUFBRSxFQUFFLEdBQUcsZUFBZSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFBLENBQUM7WUFFM0UsSUFBSSxLQUFLLEVBQUU7Z0JBQ1QsT0FBTztvQkFDSCxJQUFJLENBQUMsU0FBUyxDQUFDLENBQUM7Ozs7b0JBQUMsQ0FBQyxHQUFHLEVBQUUsRUFBRSxHQUFHLFVBQVU7OztvQkFBQyxHQUFHLEVBQUUsQ0FBQyxLQUFLLENBQUMsR0FBRyxDQUFDLEVBQUMsQ0FBQyxDQUFDLENBQUMsRUFBQyxDQUFDOzs7O29CQUFDLENBQUMsR0FBRyxFQUFFLEVBQUUsR0FBRyxLQUFLLENBQUMsR0FBRyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUEsQ0FBQzthQUM1RjtZQUVELElBQUksUUFBUSxFQUFFO2dCQUNaLFVBQVU7b0JBQ04sSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDOzs7b0JBQUMsR0FBRyxFQUFFLEdBQUcsVUFBVTs7O29CQUFDLEdBQUcsRUFBRSxDQUFDLFFBQVEsRUFBRSxFQUFDLENBQUMsQ0FBQyxDQUFDLEVBQUMsQ0FBQzs7O29CQUFDLEdBQUcsRUFBRSxHQUFHLFFBQVEsRUFBRSxDQUFDLENBQUMsQ0FBQyxDQUFBLENBQUM7YUFDdEY7U0FDRjs7Y0FFSyxJQUFJLEdBQUcsS0FBSyxDQUFDLFNBQVMsQ0FBQyxXQUFXLEVBQUUsT0FBTyxFQUFFLFVBQVUsQ0FBQztRQUU5RCxJQUFJLGVBQWUsWUFBWSxZQUFZLEVBQUU7WUFDM0MsZUFBZSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsQ0FBQztTQUMzQjtRQUVELE9BQU8sSUFBSSxDQUFDO0lBQ2QsQ0FBQztDQUNGOzs7Ozs7SUF0RUMsaUNBQW1CIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG4vLy8gPHJlZmVyZW5jZSB0eXBlcz1cInJ4anNcIiAvPlxuXG5pbXBvcnQge1N1YmplY3QsIFN1YnNjcmlwdGlvbn0gZnJvbSAncnhqcyc7XG5cbi8qKlxuICogVXNlIGluIGNvbXBvbmVudHMgd2l0aCB0aGUgYEBPdXRwdXRgIGRpcmVjdGl2ZSB0byBlbWl0IGN1c3RvbSBldmVudHNcbiAqIHN5bmNocm9ub3VzbHkgb3IgYXN5bmNocm9ub3VzbHksIGFuZCByZWdpc3RlciBoYW5kbGVycyBmb3IgdGhvc2UgZXZlbnRzXG4gKiBieSBzdWJzY3JpYmluZyB0byBhbiBpbnN0YW5jZS5cbiAqXG4gKiBAdXNhZ2VOb3Rlc1xuICpcbiAqIEV4dGVuZHNcbiAqIFtSeEpTIGBTdWJqZWN0YF0oaHR0cHM6Ly9yeGpzLmRldi9hcGkvaW5kZXgvY2xhc3MvU3ViamVjdClcbiAqIGZvciBBbmd1bGFyIGJ5IGFkZGluZyB0aGUgYGVtaXQoKWAgbWV0aG9kLlxuICpcbiAqIEluIHRoZSBmb2xsb3dpbmcgZXhhbXBsZSwgYSBjb21wb25lbnQgZGVmaW5lcyB0d28gb3V0cHV0IHByb3BlcnRpZXNcbiAqIHRoYXQgY3JlYXRlIGV2ZW50IGVtaXR0ZXJzLiBXaGVuIHRoZSB0aXRsZSBpcyBjbGlja2VkLCB0aGUgZW1pdHRlclxuICogZW1pdHMgYW4gb3BlbiBvciBjbG9zZSBldmVudCB0byB0b2dnbGUgdGhlIGN1cnJlbnQgdmlzaWJpbGl0eSBzdGF0ZS5cbiAqXG4gKiBgYGBodG1sXG4gKiBAQ29tcG9uZW50KHtcbiAqICAgc2VsZWN0b3I6ICd6aXBweScsXG4gKiAgIHRlbXBsYXRlOiBgXG4gKiAgIDxkaXYgY2xhc3M9XCJ6aXBweVwiPlxuICogICAgIDxkaXYgKGNsaWNrKT1cInRvZ2dsZSgpXCI+VG9nZ2xlPC9kaXY+XG4gKiAgICAgPGRpdiBbaGlkZGVuXT1cIiF2aXNpYmxlXCI+XG4gKiAgICAgICA8bmctY29udGVudD48L25nLWNvbnRlbnQ+XG4gKiAgICAgPC9kaXY+XG4gKiAgPC9kaXY+YH0pXG4gKiBleHBvcnQgY2xhc3MgWmlwcHkge1xuICogICB2aXNpYmxlOiBib29sZWFuID0gdHJ1ZTtcbiAqICAgQE91dHB1dCgpIG9wZW46IEV2ZW50RW1pdHRlcjxhbnk+ID0gbmV3IEV2ZW50RW1pdHRlcigpO1xuICogICBAT3V0cHV0KCkgY2xvc2U6IEV2ZW50RW1pdHRlcjxhbnk+ID0gbmV3IEV2ZW50RW1pdHRlcigpO1xuICpcbiAqICAgdG9nZ2xlKCkge1xuICogICAgIHRoaXMudmlzaWJsZSA9ICF0aGlzLnZpc2libGU7XG4gKiAgICAgaWYgKHRoaXMudmlzaWJsZSkge1xuICogICAgICAgdGhpcy5vcGVuLmVtaXQobnVsbCk7XG4gKiAgICAgfSBlbHNlIHtcbiAqICAgICAgIHRoaXMuY2xvc2UuZW1pdChudWxsKTtcbiAqICAgICB9XG4gKiAgIH1cbiAqIH1cbiAqIGBgYFxuICpcbiAqIEFjY2VzcyB0aGUgZXZlbnQgb2JqZWN0IHdpdGggdGhlIGAkZXZlbnRgIGFyZ3VtZW50IHBhc3NlZCB0byB0aGUgb3V0cHV0IGV2ZW50XG4gKiBoYW5kbGVyOlxuICpcbiAqIGBgYGh0bWxcbiAqIDx6aXBweSAob3Blbik9XCJvbk9wZW4oJGV2ZW50KVwiIChjbG9zZSk9XCJvbkNsb3NlKCRldmVudClcIj48L3ppcHB5PlxuICogYGBgXG4gKlxuICogQHNlZSBbT2JzZXJ2YWJsZXMgaW4gQW5ndWxhcl0oZ3VpZGUvb2JzZXJ2YWJsZXMtaW4tYW5ndWxhcilcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGNsYXNzIEV2ZW50RW1pdHRlcjxUIGV4dGVuZHMgYW55PiBleHRlbmRzIFN1YmplY3Q8VD4ge1xuICAvKipcbiAgICogQGludGVybmFsXG4gICAqL1xuICBfX2lzQXN5bmM6IGJvb2xlYW47ICAvLyB0c2xpbnQ6ZGlzYWJsZS1saW5lXG5cbiAgLyoqXG4gICAqIENyZWF0ZXMgYW4gaW5zdGFuY2Ugb2YgdGhpcyBjbGFzcyB0aGF0IGNhblxuICAgKiBkZWxpdmVyIGV2ZW50cyBzeW5jaHJvbm91c2x5IG9yIGFzeW5jaHJvbm91c2x5LlxuICAgKlxuICAgKiBAcGFyYW0gaXNBc3luYyBXaGVuIHRydWUsIGRlbGl2ZXIgZXZlbnRzIGFzeW5jaHJvbm91c2x5LlxuICAgKlxuICAgKi9cbiAgY29uc3RydWN0b3IoaXNBc3luYzogYm9vbGVhbiA9IGZhbHNlKSB7XG4gICAgc3VwZXIoKTtcbiAgICB0aGlzLl9faXNBc3luYyA9IGlzQXN5bmM7XG4gIH1cblxuICAvKipcbiAgICogRW1pdHMgYW4gZXZlbnQgY29udGFpbmluZyBhIGdpdmVuIHZhbHVlLlxuICAgKiBAcGFyYW0gdmFsdWUgVGhlIHZhbHVlIHRvIGVtaXQuXG4gICAqL1xuICBlbWl0KHZhbHVlPzogVCkgeyBzdXBlci5uZXh0KHZhbHVlKTsgfVxuXG4gIC8qKlxuICAgKiBSZWdpc3RlcnMgaGFuZGxlcnMgZm9yIGV2ZW50cyBlbWl0dGVkIGJ5IHRoaXMgaW5zdGFuY2UuXG4gICAqIEBwYXJhbSBnZW5lcmF0b3JPck5leHQgV2hlbiBzdXBwbGllZCwgYSBjdXN0b20gaGFuZGxlciBmb3IgZW1pdHRlZCBldmVudHMuXG4gICAqIEBwYXJhbSBlcnJvciBXaGVuIHN1cHBsaWVkLCBhIGN1c3RvbSBoYW5kbGVyIGZvciBhbiBlcnJvciBub3RpZmljYXRpb25cbiAgICogZnJvbSB0aGlzIGVtaXR0ZXIuXG4gICAqIEBwYXJhbSBjb21wbGV0ZSBXaGVuIHN1cHBsaWVkLCBhIGN1c3RvbSBoYW5kbGVyIGZvciBhIGNvbXBsZXRpb25cbiAgICogbm90aWZpY2F0aW9uIGZyb20gdGhpcyBlbWl0dGVyLlxuICAgKi9cbiAgc3Vic2NyaWJlKGdlbmVyYXRvck9yTmV4dD86IGFueSwgZXJyb3I/OiBhbnksIGNvbXBsZXRlPzogYW55KTogU3Vic2NyaXB0aW9uIHtcbiAgICBsZXQgc2NoZWR1bGVyRm46ICh0OiBhbnkpID0+IGFueTtcbiAgICBsZXQgZXJyb3JGbiA9IChlcnI6IGFueSk6IGFueSA9PiBudWxsO1xuICAgIGxldCBjb21wbGV0ZUZuID0gKCk6IGFueSA9PiBudWxsO1xuXG4gICAgaWYgKGdlbmVyYXRvck9yTmV4dCAmJiB0eXBlb2YgZ2VuZXJhdG9yT3JOZXh0ID09PSAnb2JqZWN0Jykge1xuICAgICAgc2NoZWR1bGVyRm4gPSB0aGlzLl9faXNBc3luYyA/ICh2YWx1ZTogYW55KSA9PiB7XG4gICAgICAgIHNldFRpbWVvdXQoKCkgPT4gZ2VuZXJhdG9yT3JOZXh0Lm5leHQodmFsdWUpKTtcbiAgICAgIH0gOiAodmFsdWU6IGFueSkgPT4geyBnZW5lcmF0b3JPck5leHQubmV4dCh2YWx1ZSk7IH07XG5cbiAgICAgIGlmIChnZW5lcmF0b3JPck5leHQuZXJyb3IpIHtcbiAgICAgICAgZXJyb3JGbiA9IHRoaXMuX19pc0FzeW5jID8gKGVycikgPT4geyBzZXRUaW1lb3V0KCgpID0+IGdlbmVyYXRvck9yTmV4dC5lcnJvcihlcnIpKTsgfSA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIChlcnIpID0+IHsgZ2VuZXJhdG9yT3JOZXh0LmVycm9yKGVycik7IH07XG4gICAgICB9XG5cbiAgICAgIGlmIChnZW5lcmF0b3JPck5leHQuY29tcGxldGUpIHtcbiAgICAgICAgY29tcGxldGVGbiA9IHRoaXMuX19pc0FzeW5jID8gKCkgPT4geyBzZXRUaW1lb3V0KCgpID0+IGdlbmVyYXRvck9yTmV4dC5jb21wbGV0ZSgpKTsgfSA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICgpID0+IHsgZ2VuZXJhdG9yT3JOZXh0LmNvbXBsZXRlKCk7IH07XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIHNjaGVkdWxlckZuID0gdGhpcy5fX2lzQXN5bmMgPyAodmFsdWU6IGFueSkgPT4geyBzZXRUaW1lb3V0KCgpID0+IGdlbmVyYXRvck9yTmV4dCh2YWx1ZSkpOyB9IDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAodmFsdWU6IGFueSkgPT4geyBnZW5lcmF0b3JPck5leHQodmFsdWUpOyB9O1xuXG4gICAgICBpZiAoZXJyb3IpIHtcbiAgICAgICAgZXJyb3JGbiA9XG4gICAgICAgICAgICB0aGlzLl9faXNBc3luYyA/IChlcnIpID0+IHsgc2V0VGltZW91dCgoKSA9PiBlcnJvcihlcnIpKTsgfSA6IChlcnIpID0+IHsgZXJyb3IoZXJyKTsgfTtcbiAgICAgIH1cblxuICAgICAgaWYgKGNvbXBsZXRlKSB7XG4gICAgICAgIGNvbXBsZXRlRm4gPVxuICAgICAgICAgICAgdGhpcy5fX2lzQXN5bmMgPyAoKSA9PiB7IHNldFRpbWVvdXQoKCkgPT4gY29tcGxldGUoKSk7IH0gOiAoKSA9PiB7IGNvbXBsZXRlKCk7IH07XG4gICAgICB9XG4gICAgfVxuXG4gICAgY29uc3Qgc2luayA9IHN1cGVyLnN1YnNjcmliZShzY2hlZHVsZXJGbiwgZXJyb3JGbiwgY29tcGxldGVGbik7XG5cbiAgICBpZiAoZ2VuZXJhdG9yT3JOZXh0IGluc3RhbmNlb2YgU3Vic2NyaXB0aW9uKSB7XG4gICAgICBnZW5lcmF0b3JPck5leHQuYWRkKHNpbmspO1xuICAgIH1cblxuICAgIHJldHVybiBzaW5rO1xuICB9XG59XG4iXX0=