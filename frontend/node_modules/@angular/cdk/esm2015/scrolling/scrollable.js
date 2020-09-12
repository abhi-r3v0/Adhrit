/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Directionality } from '@angular/cdk/bidi';
import { getRtlScrollAxisType, supportsScrollBehavior } from '@angular/cdk/platform';
import { Directive, ElementRef, NgZone, Optional } from '@angular/core';
import { fromEvent, Observable, Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';
import { ScrollDispatcher } from './scroll-dispatcher';
/**
 * Sends an event when the directive's element is scrolled. Registers itself with the
 * ScrollDispatcher service to include itself as part of its collection of scrolling events that it
 * can be listened to through the service.
 */
export class CdkScrollable {
    constructor(elementRef, scrollDispatcher, ngZone, dir) {
        this.elementRef = elementRef;
        this.scrollDispatcher = scrollDispatcher;
        this.ngZone = ngZone;
        this.dir = dir;
        this._destroyed = new Subject();
        this._elementScrolled = new Observable((observer) => this.ngZone.runOutsideAngular(() => fromEvent(this.elementRef.nativeElement, 'scroll').pipe(takeUntil(this._destroyed))
            .subscribe(observer)));
    }
    ngOnInit() {
        this.scrollDispatcher.register(this);
    }
    ngOnDestroy() {
        this.scrollDispatcher.deregister(this);
        this._destroyed.next();
        this._destroyed.complete();
    }
    /** Returns observable that emits when a scroll event is fired on the host element. */
    elementScrolled() {
        return this._elementScrolled;
    }
    /** Gets the ElementRef for the viewport. */
    getElementRef() {
        return this.elementRef;
    }
    /**
     * Scrolls to the specified offsets. This is a normalized version of the browser's native scrollTo
     * method, since browsers are not consistent about what scrollLeft means in RTL. For this method
     * left and right always refer to the left and right side of the scrolling container irrespective
     * of the layout direction. start and end refer to left and right in an LTR context and vice-versa
     * in an RTL context.
     * @param options specified the offsets to scroll to.
     */
    scrollTo(options) {
        const el = this.elementRef.nativeElement;
        const isRtl = this.dir && this.dir.value == 'rtl';
        // Rewrite start & end offsets as right or left offsets.
        if (options.left == null) {
            options.left = isRtl ? options.end : options.start;
        }
        if (options.right == null) {
            options.right = isRtl ? options.start : options.end;
        }
        // Rewrite the bottom offset as a top offset.
        if (options.bottom != null) {
            options.top =
                el.scrollHeight - el.clientHeight - options.bottom;
        }
        // Rewrite the right offset as a left offset.
        if (isRtl && getRtlScrollAxisType() != 0 /* NORMAL */) {
            if (options.left != null) {
                options.right =
                    el.scrollWidth - el.clientWidth - options.left;
            }
            if (getRtlScrollAxisType() == 2 /* INVERTED */) {
                options.left = options.right;
            }
            else if (getRtlScrollAxisType() == 1 /* NEGATED */) {
                options.left = options.right ? -options.right : options.right;
            }
        }
        else {
            if (options.right != null) {
                options.left =
                    el.scrollWidth - el.clientWidth - options.right;
            }
        }
        this._applyScrollToOptions(options);
    }
    _applyScrollToOptions(options) {
        const el = this.elementRef.nativeElement;
        if (supportsScrollBehavior()) {
            el.scrollTo(options);
        }
        else {
            if (options.top != null) {
                el.scrollTop = options.top;
            }
            if (options.left != null) {
                el.scrollLeft = options.left;
            }
        }
    }
    /**
     * Measures the scroll offset relative to the specified edge of the viewport. This method can be
     * used instead of directly checking scrollLeft or scrollTop, since browsers are not consistent
     * about what scrollLeft means in RTL. The values returned by this method are normalized such that
     * left and right always refer to the left and right side of the scrolling container irrespective
     * of the layout direction. start and end refer to left and right in an LTR context and vice-versa
     * in an RTL context.
     * @param from The edge to measure from.
     */
    measureScrollOffset(from) {
        const LEFT = 'left';
        const RIGHT = 'right';
        const el = this.elementRef.nativeElement;
        if (from == 'top') {
            return el.scrollTop;
        }
        if (from == 'bottom') {
            return el.scrollHeight - el.clientHeight - el.scrollTop;
        }
        // Rewrite start & end as left or right offsets.
        const isRtl = this.dir && this.dir.value == 'rtl';
        if (from == 'start') {
            from = isRtl ? RIGHT : LEFT;
        }
        else if (from == 'end') {
            from = isRtl ? LEFT : RIGHT;
        }
        if (isRtl && getRtlScrollAxisType() == 2 /* INVERTED */) {
            // For INVERTED, scrollLeft is (scrollWidth - clientWidth) when scrolled all the way left and
            // 0 when scrolled all the way right.
            if (from == LEFT) {
                return el.scrollWidth - el.clientWidth - el.scrollLeft;
            }
            else {
                return el.scrollLeft;
            }
        }
        else if (isRtl && getRtlScrollAxisType() == 1 /* NEGATED */) {
            // For NEGATED, scrollLeft is -(scrollWidth - clientWidth) when scrolled all the way left and
            // 0 when scrolled all the way right.
            if (from == LEFT) {
                return el.scrollLeft + el.scrollWidth - el.clientWidth;
            }
            else {
                return -el.scrollLeft;
            }
        }
        else {
            // For NORMAL, as well as non-RTL contexts, scrollLeft is 0 when scrolled all the way left and
            // (scrollWidth - clientWidth) when scrolled all the way right.
            if (from == LEFT) {
                return el.scrollLeft;
            }
            else {
                return el.scrollWidth - el.clientWidth - el.scrollLeft;
            }
        }
    }
}
CdkScrollable.decorators = [
    { type: Directive, args: [{
                selector: '[cdk-scrollable], [cdkScrollable]'
            },] }
];
CdkScrollable.ctorParameters = () => [
    { type: ElementRef },
    { type: ScrollDispatcher },
    { type: NgZone },
    { type: Directionality, decorators: [{ type: Optional }] }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic2Nyb2xsYWJsZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvc2Nyb2xsaW5nL3Njcm9sbGFibGUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7OztHQU1HO0FBRUgsT0FBTyxFQUFDLGNBQWMsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBQ2pELE9BQU8sRUFDTCxvQkFBb0IsRUFFcEIsc0JBQXNCLEVBQ3ZCLE1BQU0sdUJBQXVCLENBQUM7QUFDL0IsT0FBTyxFQUFDLFNBQVMsRUFBRSxVQUFVLEVBQUUsTUFBTSxFQUFxQixRQUFRLEVBQUMsTUFBTSxlQUFlLENBQUM7QUFDekYsT0FBTyxFQUFDLFNBQVMsRUFBRSxVQUFVLEVBQUUsT0FBTyxFQUFXLE1BQU0sTUFBTSxDQUFDO0FBQzlELE9BQU8sRUFBQyxTQUFTLEVBQUMsTUFBTSxnQkFBZ0IsQ0FBQztBQUN6QyxPQUFPLEVBQUMsZ0JBQWdCLEVBQUMsTUFBTSxxQkFBcUIsQ0FBQztBQXFCckQ7Ozs7R0FJRztBQUlILE1BQU0sT0FBTyxhQUFhO0lBUXhCLFlBQXNCLFVBQW1DLEVBQ25DLGdCQUFrQyxFQUNsQyxNQUFjLEVBQ0YsR0FBb0I7UUFIaEMsZUFBVSxHQUFWLFVBQVUsQ0FBeUI7UUFDbkMscUJBQWdCLEdBQWhCLGdCQUFnQixDQUFrQjtRQUNsQyxXQUFNLEdBQU4sTUFBTSxDQUFRO1FBQ0YsUUFBRyxHQUFILEdBQUcsQ0FBaUI7UUFWOUMsZUFBVSxHQUFHLElBQUksT0FBTyxFQUFRLENBQUM7UUFFakMscUJBQWdCLEdBQXNCLElBQUksVUFBVSxDQUFDLENBQUMsUUFBeUIsRUFBRSxFQUFFLENBQ3ZGLElBQUksQ0FBQyxNQUFNLENBQUMsaUJBQWlCLENBQUMsR0FBRyxFQUFFLENBQy9CLFNBQVMsQ0FBQyxJQUFJLENBQUMsVUFBVSxDQUFDLGFBQWEsRUFBRSxRQUFRLENBQUMsQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLElBQUks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QThCLEVBQUU7WUFDakUsNkZBQTZGO1lBQzdGLHFDQUFxQztZQUNyQyxJQUFJLElBQUksSUFBSSxJQUFJLEVBQUU7Z0JBQ2hCLE9BQU8sRUFBRSxDQUFDLFdBQVcsR0FBRyxFQUFFLENBQUMsV0FBVyxHQUFHLEVBQUUsQ0FBQyxVQUFVLENBQUM7YUFDeEQ7aUJBQU07Z0JBQ0wsT0FBTyxFQUFFLENBQUMsVUFBVSxDQUFDO2FBQ3RCO1NBQ0Y7YUFBTSxJQUFJLEtBQUssSUFBSSxvQkFBb0IsRUFBRSxtQkFBNkIsRUFBRTtZQUN2RSw2RkFBNkY7WUFDN0YscUNBQXFDO1lBQ3JDLElBQUksSUFBSSxJQUFJLElBQUksRUFBRTtnQkFDaEIsT0FBTyxFQUFFLENBQUMsVUFBVSxHQUFHLEVBQUUsQ0FBQyxXQUFXLEdBQUcsRUFBRSxDQUFDLFdBQVcsQ0FBQzthQUN4RDtpQkFBTTtnQkFDTCxPQUFPLENBQUMsRUFBRSxDQUFDLFVBQVUsQ0FBQzthQUN2QjtTQUNGO2FBQU07WUFDTCw4RkFBOEY7WUFDOUYsK0RBQStEO1lBQy9ELElBQUksSUFBSSxJQUFJLElBQUksRUFBRTtnQkFDaEIsT0FBTyxFQUFFLENBQUMsVUFBVSxDQUFDO2FBQ3RCO2lCQUFNO2dCQUNMLE9BQU8sRUFBRSxDQUFDLFdBQVcsR0FBRyxFQUFFLENBQUMsV0FBVyxHQUFHLEVBQUUsQ0FBQyxVQUFVLENBQUM7YUFDeEQ7U0FDRjtJQUNILENBQUM7OztZQXpKRixTQUFTLFNBQUM7Z0JBQ1QsUUFBUSxFQUFFLG1DQUFtQzthQUM5Qzs7O1lBL0JrQixVQUFVO1lBR3JCLGdCQUFnQjtZQUhPLE1BQU07WUFON0IsY0FBYyx1QkFpRFAsUUFBUSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0RpcmVjdGlvbmFsaXR5fSBmcm9tICdAYW5ndWxhci9jZGsvYmlkaSc7XG5pbXBvcnQge1xuICBnZXRSdGxTY3JvbGxBeGlzVHlwZSxcbiAgUnRsU2Nyb2xsQXhpc1R5cGUsXG4gIHN1cHBvcnRzU2Nyb2xsQmVoYXZpb3Jcbn0gZnJvbSAnQGFuZ3VsYXIvY2RrL3BsYXRmb3JtJztcbmltcG9ydCB7RGlyZWN0aXZlLCBFbGVtZW50UmVmLCBOZ1pvbmUsIE9uRGVzdHJveSwgT25Jbml0LCBPcHRpb25hbH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge2Zyb21FdmVudCwgT2JzZXJ2YWJsZSwgU3ViamVjdCwgT2JzZXJ2ZXJ9IGZyb20gJ3J4anMnO1xuaW1wb3J0IHt0YWtlVW50aWx9IGZyb20gJ3J4anMvb3BlcmF0b3JzJztcbmltcG9ydCB7U2Nyb2xsRGlzcGF0Y2hlcn0gZnJvbSAnLi9zY3JvbGwtZGlzcGF0Y2hlcic7XG5cbmV4cG9ydCB0eXBlIF9XaXRob3V0PFQ+ID0ge1tQIGluIGtleW9mIFRdPzogbmV2ZXJ9O1xuZXhwb3J0IHR5cGUgX1hPUjxULCBVPiA9IChfV2l0aG91dDxUPiAmIFUpIHwgKF9XaXRob3V0PFU+ICYgVCk7XG5leHBvcnQgdHlwZSBfVG9wID0ge3RvcD86IG51bWJlcn07XG5leHBvcnQgdHlwZSBfQm90dG9tID0ge2JvdHRvbT86IG51bWJlcn07XG5leHBvcnQgdHlwZSBfTGVmdCA9IHtsZWZ0PzogbnVtYmVyfTtcbmV4cG9ydCB0eXBlIF9SaWdodCA9IHtyaWdodD86IG51bWJlcn07XG5leHBvcnQgdHlwZSBfU3RhcnQgPSB7c3RhcnQ/OiBudW1iZXJ9O1xuZXhwb3J0IHR5cGUgX0VuZCA9IHtlbmQ/OiBudW1iZXJ9O1xuZXhwb3J0IHR5cGUgX1hBeGlzID0gX1hPUjxfWE9SPF9MZWZ0LCBfUmlnaHQ+LCBfWE9SPF9TdGFydCwgX0VuZD4+O1xuZXhwb3J0IHR5cGUgX1lBeGlzID0gX1hPUjxfVG9wLCBfQm90dG9tPjtcblxuLyoqXG4gKiBBbiBleHRlbmRlZCB2ZXJzaW9uIG9mIFNjcm9sbFRvT3B0aW9ucyB0aGF0IGFsbG93cyBleHByZXNzaW5nIHNjcm9sbCBvZmZzZXRzIHJlbGF0aXZlIHRvIHRoZVxuICogdG9wLCBib3R0b20sIGxlZnQsIHJpZ2h0LCBzdGFydCwgb3IgZW5kIG9mIHRoZSB2aWV3cG9ydCByYXRoZXIgdGhhbiBqdXN0IHRoZSB0b3AgYW5kIGxlZnQuXG4gKiBQbGVhc2Ugbm90ZTogdGhlIHRvcCBhbmQgYm90dG9tIHByb3BlcnRpZXMgYXJlIG11dHVhbGx5IGV4Y2x1c2l2ZSwgYXMgYXJlIHRoZSBsZWZ0LCByaWdodCxcbiAqIHN0YXJ0LCBhbmQgZW5kIHByb3BlcnRpZXMuXG4gKi9cbmV4cG9ydCB0eXBlIEV4dGVuZGVkU2Nyb2xsVG9PcHRpb25zID0gX1hBeGlzICYgX1lBeGlzICYgU2Nyb2xsT3B0aW9ucztcblxuLyoqXG4gKiBTZW5kcyBhbiBldmVudCB3aGVuIHRoZSBkaXJlY3RpdmUncyBlbGVtZW50IGlzIHNjcm9sbGVkLiBSZWdpc3RlcnMgaXRzZWxmIHdpdGggdGhlXG4gKiBTY3JvbGxEaXNwYXRjaGVyIHNlcnZpY2UgdG8gaW5jbHVkZSBpdHNlbGYgYXMgcGFydCBvZiBpdHMgY29sbGVjdGlvbiBvZiBzY3JvbGxpbmcgZXZlbnRzIHRoYXQgaXRcbiAqIGNhbiBiZSBsaXN0ZW5lZCB0byB0aHJvdWdoIHRoZSBzZXJ2aWNlLlxuICovXG5ARGlyZWN0aXZlKHtcbiAgc2VsZWN0b3I6ICdbY2RrLXNjcm9sbGFibGVdLCBbY2RrU2Nyb2xsYWJsZV0nXG59KVxuZXhwb3J0IGNsYXNzIENka1Njcm9sbGFibGUgaW1wbGVtZW50cyBPbkluaXQsIE9uRGVzdHJveSB7XG4gIHByaXZhdGUgX2Rlc3Ryb3llZCA9IG5ldyBTdWJqZWN0PHZvaWQ+KCk7XG5cbiAgcHJpdmF0ZSBfZWxlbWVudFNjcm9sbGVkOiBPYnNlcnZhYmxlPEV2ZW50PiA9IG5ldyBPYnNlcnZhYmxlKChvYnNlcnZlcjogT2JzZXJ2ZXI8RXZlbnQ+KSA9PlxuICAgICAgdGhpcy5uZ1pvbmUucnVuT3V0c2lkZUFuZ3VsYXIoKCkgPT5cbiAgICAgICAgICBmcm9tRXZlbnQodGhpcy5lbGVtZW50UmVmLm5hdGl2ZUVsZW1lbnQsICdzY3JvbGwnKS5waXBlKHRha2VVbnRpbCh0aGlzLl9kZXN0cm95ZWQpKVxuICAgICAgICAgICAgICAuc3Vic2NyaWJlKG9ic2VydmVyKSkpO1xuXG4gIGNvbnN0cnVjdG9yKHByb3RlY3RlZCBlbGVtZW50UmVmOiBFbGVtZW50UmVmPEhUTUxFbGVtZW50PixcbiAgICAgICAgICAgICAgcHJvdGVjdGVkIHNjcm9sbERpc3BhdGNoZXI6IFNjcm9sbERpc3BhdGNoZXIsXG4gICAgICAgICAgICAgIHByb3RlY3RlZCBuZ1pvbmU6IE5nWm9uZSxcbiAgICAgICAgICAgICAgQE9wdGlvbmFsKCkgcHJvdGVjdGVkIGRpcj86IERpcmVjdGlvbmFsaXR5KSB7fVxuXG4gIG5nT25Jbml0KCkge1xuICAgIHRoaXMuc2Nyb2xsRGlzcGF0Y2hlci5yZWdpc3Rlcih0aGlzKTtcbiAgfVxuXG4gIG5nT25EZXN0cm95KCkge1xuICAgIHRoaXMuc2Nyb2xsRGlzcGF0Y2hlci5kZXJlZ2lzdGVyKHRoaXMpO1xuICAgIHRoaXMuX2Rlc3Ryb3llZC5uZXh0KCk7XG4gICAgdGhpcy5fZGVzdHJveWVkLmNvbXBsZXRlKCk7XG4gIH1cblxuICAvKiogUmV0dXJucyBvYnNlcnZhYmxlIHRoYXQgZW1pdHMgd2hlbiBhIHNjcm9sbCBldmVudCBpcyBmaXJlZCBvbiB0aGUgaG9zdCBlbGVtZW50LiAqL1xuICBlbGVtZW50U2Nyb2xsZWQoKTogT2JzZXJ2YWJsZTxFdmVudD4ge1xuICAgIHJldHVybiB0aGlzLl9lbGVtZW50U2Nyb2xsZWQ7XG4gIH1cblxuICAvKiogR2V0cyB0aGUgRWxlbWVudFJlZiBmb3IgdGhlIHZpZXdwb3J0LiAqL1xuICBnZXRFbGVtZW50UmVmKCk6IEVsZW1lbnRSZWY8SFRNTEVsZW1lbnQ+IHtcbiAgICByZXR1cm4gdGhpcy5lbGVtZW50UmVmO1xuICB9XG5cbiAgLyoqXG4gICAqIFNjcm9sbHMgdG8gdGhlIHNwZWNpZmllZCBvZmZzZXRzLiBUaGlzIGlzIGEgbm9ybWFsaXplZCB2ZXJzaW9uIG9mIHRoZSBicm93c2VyJ3MgbmF0aXZlIHNjcm9sbFRvXG4gICAqIG1ldGhvZCwgc2luY2UgYnJvd3NlcnMgYXJlIG5vdCBjb25zaXN0ZW50IGFib3V0IHdoYXQgc2Nyb2xsTGVmdCBtZWFucyBpbiBSVEwuIEZvciB0aGlzIG1ldGhvZFxuICAgKiBsZWZ0IGFuZCByaWdodCBhbHdheXMgcmVmZXIgdG8gdGhlIGxlZnQgYW5kIHJpZ2h0IHNpZGUgb2YgdGhlIHNjcm9sbGluZyBjb250YWluZXIgaXJyZXNwZWN0aXZlXG4gICAqIG9mIHRoZSBsYXlvdXQgZGlyZWN0aW9uLiBzdGFydCBhbmQgZW5kIHJlZmVyIHRvIGxlZnQgYW5kIHJpZ2h0IGluIGFuIExUUiBjb250ZXh0IGFuZCB2aWNlLXZlcnNhXG4gICAqIGluIGFuIFJUTCBjb250ZXh0LlxuICAgKiBAcGFyYW0gb3B0aW9ucyBzcGVjaWZpZWQgdGhlIG9mZnNldHMgdG8gc2Nyb2xsIHRvLlxuICAgKi9cbiAgc2Nyb2xsVG8ob3B0aW9uczogRXh0ZW5kZWRTY3JvbGxUb09wdGlvbnMpOiB2b2lkIHtcbiAgICBjb25zdCBlbCA9IHRoaXMuZWxlbWVudFJlZi5uYXRpdmVFbGVtZW50O1xuICAgIGNvbnN0IGlzUnRsID0gdGhpcy5kaXIgJiYgdGhpcy5kaXIudmFsdWUgPT0gJ3J0bCc7XG5cbiAgICAvLyBSZXdyaXRlIHN0YXJ0ICYgZW5kIG9mZnNldHMgYXMgcmlnaHQgb3IgbGVmdCBvZmZzZXRzLlxuICAgIGlmIChvcHRpb25zLmxlZnQgPT0gbnVsbCkge1xuICAgICAgb3B0aW9ucy5sZWZ0ID0gaXNSdGwgPyBvcHRpb25zLmVuZCA6IG9wdGlvbnMuc3RhcnQ7XG4gICAgfVxuXG4gICAgaWYgKG9wdGlvbnMucmlnaHQgPT0gbnVsbCkge1xuICAgICAgb3B0aW9ucy5yaWdodCA9IGlzUnRsID8gb3B0aW9ucy5zdGFydCA6IG9wdGlvbnMuZW5kO1xuICAgIH1cblxuICAgIC8vIFJld3JpdGUgdGhlIGJvdHRvbSBvZmZzZXQgYXMgYSB0b3Agb2Zmc2V0LlxuICAgIGlmIChvcHRpb25zLmJvdHRvbSAhPSBudWxsKSB7XG4gICAgICAob3B0aW9ucyBhcyBfV2l0aG91dDxfQm90dG9tPiAmIF9Ub3ApLnRvcCA9XG4gICAgICAgICAgZWwuc2Nyb2xsSGVpZ2h0IC0gZWwuY2xpZW50SGVpZ2h0IC0gb3B0aW9ucy5ib3R0b207XG4gICAgfVxuXG4gICAgLy8gUmV3cml0ZSB0aGUgcmlnaHQgb2Zmc2V0IGFzIGEgbGVmdCBvZmZzZXQuXG4gICAgaWYgKGlzUnRsICYmIGdldFJ0bFNjcm9sbEF4aXNUeXBlKCkgIT0gUnRsU2Nyb2xsQXhpc1R5cGUuTk9STUFMKSB7XG4gICAgICBpZiAob3B0aW9ucy5sZWZ0ICE9IG51bGwpIHtcbiAgICAgICAgKG9wdGlvbnMgYXMgX1dpdGhvdXQ8X0xlZnQ+ICYgX1JpZ2h0KS5yaWdodCA9XG4gICAgICAgICAgICBlbC5zY3JvbGxXaWR0aCAtIGVsLmNsaWVudFdpZHRoIC0gb3B0aW9ucy5sZWZ0O1xuICAgICAgfVxuXG4gICAgICBpZiAoZ2V0UnRsU2Nyb2xsQXhpc1R5cGUoKSA9PSBSdGxTY3JvbGxBeGlzVHlwZS5JTlZFUlRFRCkge1xuICAgICAgICBvcHRpb25zLmxlZnQgPSBvcHRpb25zLnJpZ2h0O1xuICAgICAgfSBlbHNlIGlmIChnZXRSdGxTY3JvbGxBeGlzVHlwZSgpID09IFJ0bFNjcm9sbEF4aXNUeXBlLk5FR0FURUQpIHtcbiAgICAgICAgb3B0aW9ucy5sZWZ0ID0gb3B0aW9ucy5yaWdodCA/IC1vcHRpb25zLnJpZ2h0IDogb3B0aW9ucy5yaWdodDtcbiAgICAgIH1cbiAgICB9IGVsc2Uge1xuICAgICAgaWYgKG9wdGlvbnMucmlnaHQgIT0gbnVsbCkge1xuICAgICAgICAob3B0aW9ucyBhcyBfV2l0aG91dDxfUmlnaHQ+ICYgX0xlZnQpLmxlZnQgPVxuICAgICAgICAgICAgZWwuc2Nyb2xsV2lkdGggLSBlbC5jbGllbnRXaWR0aCAtIG9wdGlvbnMucmlnaHQ7XG4gICAgICB9XG4gICAgfVxuXG4gICAgdGhpcy5fYXBwbHlTY3JvbGxUb09wdGlvbnMob3B0aW9ucyk7XG4gIH1cblxuICBwcml2YXRlIF9hcHBseVNjcm9sbFRvT3B0aW9ucyhvcHRpb25zOiBTY3JvbGxUb09wdGlvbnMpOiB2b2lkIHtcbiAgICBjb25zdCBlbCA9IHRoaXMuZWxlbWVudFJlZi5uYXRpdmVFbGVtZW50O1xuXG4gICAgaWYgKHN1cHBvcnRzU2Nyb2xsQmVoYXZpb3IoKSkge1xuICAgICAgZWwuc2Nyb2xsVG8ob3B0aW9ucyk7XG4gICAgfSBlbHNlIHtcbiAgICAgIGlmIChvcHRpb25zLnRvcCAhPSBudWxsKSB7XG4gICAgICAgIGVsLnNjcm9sbFRvcCA9IG9wdGlvbnMudG9wO1xuICAgICAgfVxuICAgICAgaWYgKG9wdGlvbnMubGVmdCAhPSBudWxsKSB7XG4gICAgICAgIGVsLnNjcm9sbExlZnQgPSBvcHRpb25zLmxlZnQ7XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIE1lYXN1cmVzIHRoZSBzY3JvbGwgb2Zmc2V0IHJlbGF0aXZlIHRvIHRoZSBzcGVjaWZpZWQgZWRnZSBvZiB0aGUgdmlld3BvcnQuIFRoaXMgbWV0aG9kIGNhbiBiZVxuICAgKiB1c2VkIGluc3RlYWQgb2YgZGlyZWN0bHkgY2hlY2tpbmcgc2Nyb2xsTGVmdCBvciBzY3JvbGxUb3AsIHNpbmNlIGJyb3dzZXJzIGFyZSBub3QgY29uc2lzdGVudFxuICAgKiBhYm91dCB3aGF0IHNjcm9sbExlZnQgbWVhbnMgaW4gUlRMLiBUaGUgdmFsdWVzIHJldHVybmVkIGJ5IHRoaXMgbWV0aG9kIGFyZSBub3JtYWxpemVkIHN1Y2ggdGhhdFxuICAgKiBsZWZ0IGFuZCByaWdodCBhbHdheXMgcmVmZXIgdG8gdGhlIGxlZnQgYW5kIHJpZ2h0IHNpZGUgb2YgdGhlIHNjcm9sbGluZyBjb250YWluZXIgaXJyZXNwZWN0aXZlXG4gICAqIG9mIHRoZSBsYXlvdXQgZGlyZWN0aW9uLiBzdGFydCBhbmQgZW5kIHJlZmVyIHRvIGxlZnQgYW5kIHJpZ2h0IGluIGFuIExUUiBjb250ZXh0IGFuZCB2aWNlLXZlcnNhXG4gICAqIGluIGFuIFJUTCBjb250ZXh0LlxuICAgKiBAcGFyYW0gZnJvbSBUaGUgZWRnZSB0byBtZWFzdXJlIGZyb20uXG4gICAqL1xuICBtZWFzdXJlU2Nyb2xsT2Zmc2V0KGZyb206ICd0b3AnIHwgJ2xlZnQnIHwgJ3JpZ2h0JyB8ICdib3R0b20nIHwgJ3N0YXJ0JyB8ICdlbmQnKTogbnVtYmVyIHtcbiAgICBjb25zdCBMRUZUID0gJ2xlZnQnO1xuICAgIGNvbnN0IFJJR0hUID0gJ3JpZ2h0JztcbiAgICBjb25zdCBlbCA9IHRoaXMuZWxlbWVudFJlZi5uYXRpdmVFbGVtZW50O1xuICAgIGlmIChmcm9tID09ICd0b3AnKSB7XG4gICAgICByZXR1cm4gZWwuc2Nyb2xsVG9wO1xuICAgIH1cbiAgICBpZiAoZnJvbSA9PSAnYm90dG9tJykge1xuICAgICAgcmV0dXJuIGVsLnNjcm9sbEhlaWdodCAtIGVsLmNsaWVudEhlaWdodCAtIGVsLnNjcm9sbFRvcDtcbiAgICB9XG5cbiAgICAvLyBSZXdyaXRlIHN0YXJ0ICYgZW5kIGFzIGxlZnQgb3IgcmlnaHQgb2Zmc2V0cy5cbiAgICBjb25zdCBpc1J0bCA9IHRoaXMuZGlyICYmIHRoaXMuZGlyLnZhbHVlID09ICdydGwnO1xuICAgIGlmIChmcm9tID09ICdzdGFydCcpIHtcbiAgICAgIGZyb20gPSBpc1J0bCA/IFJJR0hUIDogTEVGVDtcbiAgICB9IGVsc2UgaWYgKGZyb20gPT0gJ2VuZCcpIHtcbiAgICAgIGZyb20gPSBpc1J0bCA/IExFRlQgOiBSSUdIVDtcbiAgICB9XG5cbiAgICBpZiAoaXNSdGwgJiYgZ2V0UnRsU2Nyb2xsQXhpc1R5cGUoKSA9PSBSdGxTY3JvbGxBeGlzVHlwZS5JTlZFUlRFRCkge1xuICAgICAgLy8gRm9yIElOVkVSVEVELCBzY3JvbGxMZWZ0IGlzIChzY3JvbGxXaWR0aCAtIGNsaWVudFdpZHRoKSB3aGVuIHNjcm9sbGVkIGFsbCB0aGUgd2F5IGxlZnQgYW5kXG4gICAgICAvLyAwIHdoZW4gc2Nyb2xsZWQgYWxsIHRoZSB3YXkgcmlnaHQuXG4gICAgICBpZiAoZnJvbSA9PSBMRUZUKSB7XG4gICAgICAgIHJldHVybiBlbC5zY3JvbGxXaWR0aCAtIGVsLmNsaWVudFdpZHRoIC0gZWwuc2Nyb2xsTGVmdDtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHJldHVybiBlbC5zY3JvbGxMZWZ0O1xuICAgICAgfVxuICAgIH0gZWxzZSBpZiAoaXNSdGwgJiYgZ2V0UnRsU2Nyb2xsQXhpc1R5cGUoKSA9PSBSdGxTY3JvbGxBeGlzVHlwZS5ORUdBVEVEKSB7XG4gICAgICAvLyBGb3IgTkVHQVRFRCwgc2Nyb2xsTGVmdCBpcyAtKHNjcm9sbFdpZHRoIC0gY2xpZW50V2lkdGgpIHdoZW4gc2Nyb2xsZWQgYWxsIHRoZSB3YXkgbGVmdCBhbmRcbiAgICAgIC8vIDAgd2hlbiBzY3JvbGxlZCBhbGwgdGhlIHdheSByaWdodC5cbiAgICAgIGlmIChmcm9tID09IExFRlQpIHtcbiAgICAgICAgcmV0dXJuIGVsLnNjcm9sbExlZnQgKyBlbC5zY3JvbGxXaWR0aCAtIGVsLmNsaWVudFdpZHRoO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgcmV0dXJuIC1lbC5zY3JvbGxMZWZ0O1xuICAgICAgfVxuICAgIH0gZWxzZSB7XG4gICAgICAvLyBGb3IgTk9STUFMLCBhcyB3ZWxsIGFzIG5vbi1SVEwgY29udGV4dHMsIHNjcm9sbExlZnQgaXMgMCB3aGVuIHNjcm9sbGVkIGFsbCB0aGUgd2F5IGxlZnQgYW5kXG4gICAgICAvLyAoc2Nyb2xsV2lkdGggLSBjbGllbnRXaWR0aCkgd2hlbiBzY3JvbGxlZCBhbGwgdGhlIHdheSByaWdodC5cbiAgICAgIGlmIChmcm9tID09IExFRlQpIHtcbiAgICAgICAgcmV0dXJuIGVsLnNjcm9sbExlZnQ7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICByZXR1cm4gZWwuc2Nyb2xsV2lkdGggLSBlbC5jbGllbnRXaWR0aCAtIGVsLnNjcm9sbExlZnQ7XG4gICAgICB9XG4gICAgfVxuICB9XG59XG4iXX0=