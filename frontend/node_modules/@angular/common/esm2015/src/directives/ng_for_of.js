/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Directive, Input, isDevMode, IterableDiffers, TemplateRef, ViewContainerRef } from '@angular/core';
/**
 * @publicApi
 */
export class NgForOfContext {
    constructor($implicit, ngForOf, index, count) {
        this.$implicit = $implicit;
        this.ngForOf = ngForOf;
        this.index = index;
        this.count = count;
    }
    get first() {
        return this.index === 0;
    }
    get last() {
        return this.index === this.count - 1;
    }
    get even() {
        return this.index % 2 === 0;
    }
    get odd() {
        return !this.even;
    }
}
/**
 * A [structural directive](guide/structural-directives) that renders
 * a template for each item in a collection.
 * The directive is placed on an element, which becomes the parent
 * of the cloned templates.
 *
 * The `ngForOf` directive is generally used in the
 * [shorthand form](guide/structural-directives#the-asterisk--prefix) `*ngFor`.
 * In this form, the template to be rendered for each iteration is the content
 * of an anchor element containing the directive.
 *
 * The following example shows the shorthand syntax with some options,
 * contained in an `<li>` element.
 *
 * ```
 * <li *ngFor="let item of items; index as i; trackBy: trackByFn">...</li>
 * ```
 *
 * The shorthand form expands into a long form that uses the `ngForOf` selector
 * on an `<ng-template>` element.
 * The content of the `<ng-template>` element is the `<li>` element that held the
 * short-form directive.
 *
 * Here is the expanded version of the short-form example.
 *
 * ```
 * <ng-template ngFor let-item [ngForOf]="items" let-i="index" [ngForTrackBy]="trackByFn">
 *   <li>...</li>
 * </ng-template>
 * ```
 *
 * Angular automatically expands the shorthand syntax as it compiles the template.
 * The context for each embedded view is logically merged to the current component
 * context according to its lexical position.
 *
 * When using the shorthand syntax, Angular allows only [one structural directive
 * on an element](guide/structural-directives#one-structural-directive-per-host-element).
 * If you want to iterate conditionally, for example,
 * put the `*ngIf` on a container element that wraps the `*ngFor` element.
 * For futher discussion, see
 * [Structural Directives](guide/structural-directives#one-per-element).
 *
 * @usageNotes
 *
 * ### Local variables
 *
 * `NgForOf` provides exported values that can be aliased to local variables.
 * For example:
 *
 *  ```
 * <li *ngFor="let user of users; index as i; first as isFirst">
 *    {{i}}/{{users.length}}. {{user}} <span *ngIf="isFirst">default</span>
 * </li>
 * ```
 *
 * The following exported values can be aliased to local variables:
 *
 * - `$implicit: T`: The value of the individual items in the iterable (`ngForOf`).
 * - `ngForOf: NgIterable<T>`: The value of the iterable expression. Useful when the expression is
 * more complex then a property access, for example when using the async pipe (`userStreams |
 * async`).
 * - `index: number`: The index of the current item in the iterable.
 * - `count: number`: The length of the iterable.
 * - `first: boolean`: True when the item is the first item in the iterable.
 * - `last: boolean`: True when the item is the last item in the iterable.
 * - `even: boolean`: True when the item has an even index in the iterable.
 * - `odd: boolean`: True when the item has an odd index in the iterable.
 *
 * ### Change propagation
 *
 * When the contents of the iterator changes, `NgForOf` makes the corresponding changes to the DOM:
 *
 * * When an item is added, a new instance of the template is added to the DOM.
 * * When an item is removed, its template instance is removed from the DOM.
 * * When items are reordered, their respective templates are reordered in the DOM.
 *
 * Angular uses object identity to track insertions and deletions within the iterator and reproduce
 * those changes in the DOM. This has important implications for animations and any stateful
 * controls that are present, such as `<input>` elements that accept user input. Inserted rows can
 * be animated in, deleted rows can be animated out, and unchanged rows retain any unsaved state
 * such as user input.
 * For more on animations, see [Transitions and Triggers](guide/transition-and-triggers).
 *
 * The identities of elements in the iterator can change while the data does not.
 * This can happen, for example, if the iterator is produced from an RPC to the server, and that
 * RPC is re-run. Even if the data hasn't changed, the second response produces objects with
 * different identities, and Angular must tear down the entire DOM and rebuild it (as if all old
 * elements were deleted and all new elements inserted).
 *
 * To avoid this expensive operation, you can customize the default tracking algorithm.
 * by supplying the `trackBy` option to `NgForOf`.
 * `trackBy` takes a function that has two arguments: `index` and `item`.
 * If `trackBy` is given, Angular tracks changes by the return value of the function.
 *
 * @see [Structural Directives](guide/structural-directives)
 * @ngModule CommonModule
 * @publicApi
 */
export class NgForOf {
    constructor(_viewContainer, _template, _differs) {
        this._viewContainer = _viewContainer;
        this._template = _template;
        this._differs = _differs;
        this._ngForOf = null;
        this._ngForOfDirty = true;
        this._differ = null;
    }
    /**
     * The value of the iterable expression, which can be used as a
     * [template input variable](guide/structural-directives#template-input-variable).
     */
    set ngForOf(ngForOf) {
        this._ngForOf = ngForOf;
        this._ngForOfDirty = true;
    }
    /**
     * A function that defines how to track changes for items in the iterable.
     *
     * When items are added, moved, or removed in the iterable,
     * the directive must re-render the appropriate DOM nodes.
     * To minimize churn in the DOM, only nodes that have changed
     * are re-rendered.
     *
     * By default, the change detector assumes that
     * the object instance identifies the node in the iterable.
     * When this function is supplied, the directive uses
     * the result of calling this function to identify the item node,
     * rather than the identity of the object itself.
     *
     * The function receives two inputs,
     * the iteration index and the associated node data.
     */
    set ngForTrackBy(fn) {
        if (isDevMode() && fn != null && typeof fn !== 'function') {
            // TODO(vicb): use a log service once there is a public one available
            if (console && console.warn) {
                console.warn(`trackBy must be a function, but received ${JSON.stringify(fn)}. ` +
                    `See https://angular.io/api/common/NgForOf#change-propagation for more information.`);
            }
        }
        this._trackByFn = fn;
    }
    get ngForTrackBy() {
        return this._trackByFn;
    }
    /**
     * A reference to the template that is stamped out for each item in the iterable.
     * @see [template reference variable](guide/template-reference-variables)
     */
    set ngForTemplate(value) {
        // TODO(TS2.1): make TemplateRef<Partial<NgForRowOf<T>>> once we move to TS v2.1
        // The current type is too restrictive; a template that just uses index, for example,
        // should be acceptable.
        if (value) {
            this._template = value;
        }
    }
    /**
     * Applies the changes when needed.
     */
    ngDoCheck() {
        if (this._ngForOfDirty) {
            this._ngForOfDirty = false;
            // React on ngForOf changes only once all inputs have been initialized
            const value = this._ngForOf;
            if (!this._differ && value) {
                try {
                    this._differ = this._differs.find(value).create(this.ngForTrackBy);
                }
                catch (_a) {
                    throw new Error(`Cannot find a differ supporting object '${value}' of type '${getTypeName(value)}'. NgFor only supports binding to Iterables such as Arrays.`);
                }
            }
        }
        if (this._differ) {
            const changes = this._differ.diff(this._ngForOf);
            if (changes)
                this._applyChanges(changes);
        }
    }
    _applyChanges(changes) {
        const insertTuples = [];
        changes.forEachOperation((item, adjustedPreviousIndex, currentIndex) => {
            if (item.previousIndex == null) {
                // NgForOf is never "null" or "undefined" here because the differ detected
                // that a new item needs to be inserted from the iterable. This implies that
                // there is an iterable value for "_ngForOf".
                const view = this._viewContainer.createEmbeddedView(this._template, new NgForOfContext(null, this._ngForOf, -1, -1), currentIndex === null ? undefined : currentIndex);
                const tuple = new RecordViewTuple(item, view);
                insertTuples.push(tuple);
            }
            else if (currentIndex == null) {
                this._viewContainer.remove(adjustedPreviousIndex === null ? undefined : adjustedPreviousIndex);
            }
            else if (adjustedPreviousIndex !== null) {
                const view = this._viewContainer.get(adjustedPreviousIndex);
                this._viewContainer.move(view, currentIndex);
                const tuple = new RecordViewTuple(item, view);
                insertTuples.push(tuple);
            }
        });
        for (let i = 0; i < insertTuples.length; i++) {
            this._perViewChange(insertTuples[i].view, insertTuples[i].record);
        }
        for (let i = 0, ilen = this._viewContainer.length; i < ilen; i++) {
            const viewRef = this._viewContainer.get(i);
            viewRef.context.index = i;
            viewRef.context.count = ilen;
            viewRef.context.ngForOf = this._ngForOf;
        }
        changes.forEachIdentityChange((record) => {
            const viewRef = this._viewContainer.get(record.currentIndex);
            viewRef.context.$implicit = record.item;
        });
    }
    _perViewChange(view, record) {
        view.context.$implicit = record.item;
    }
    /**
     * Asserts the correct type of the context for the template that `NgForOf` will render.
     *
     * The presence of this method is a signal to the Ivy template type-check compiler that the
     * `NgForOf` structural directive renders its template with a specific context type.
     */
    static ngTemplateContextGuard(dir, ctx) {
        return true;
    }
}
NgForOf.decorators = [
    { type: Directive, args: [{ selector: '[ngFor][ngForOf]' },] }
];
NgForOf.ctorParameters = () => [
    { type: ViewContainerRef },
    { type: TemplateRef },
    { type: IterableDiffers }
];
NgForOf.propDecorators = {
    ngForOf: [{ type: Input }],
    ngForTrackBy: [{ type: Input }],
    ngForTemplate: [{ type: Input }]
};
class RecordViewTuple {
    constructor(record, view) {
        this.record = record;
        this.view = view;
    }
}
function getTypeName(type) {
    return type['name'] || typeof type;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmdfZm9yX29mLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29tbW9uL3NyYy9kaXJlY3RpdmVzL25nX2Zvcl9vZi50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsU0FBUyxFQUE0QixLQUFLLEVBQUUsU0FBUyxFQUF5RCxlQUFlLEVBQWMsV0FBVyxFQUFtQixnQkFBZ0IsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUV4Tjs7R0FFRztBQUNILE1BQU0sT0FBTyxjQUFjO0lBQ3pCLFlBQW1CLFNBQVksRUFBUyxPQUFVLEVBQVMsS0FBYSxFQUFTLEtBQWE7UUFBM0UsY0FBUyxHQUFULFNBQVMsQ0FBRztRQUFTLFlBQU8sR0FBUCxPQUFPLENBQUc7UUFBUyxVQUFLLEdBQUwsS0FBSyxDQUFRO1FBQVMsVUFBSyxHQUFMLEtBQUssQ0FBUTtJQUFHLENBQUM7SUFFbEcsSUFBSSxLQUFLO1FBQ1AsT0FBTyxJQUFJLENBQUMsS0FBSyxLQUFLLENBQUMsQ0FBQztJQUMxQixDQUFDO0lBRUQsSUFBSSxJQUFJO1FBQ04sT0FBTyxJQUFJLENBQUMsS0FBSyxLQUFLLElBQUksQ0FBQyxLQUFLLEdBQUcsQ0FBQyxDQUFDO0lBQ3ZDLENBQUM7SUFFRCxJQUFJLElBQUk7UUFDTixPQUFPLElBQUksQ0FBQyxLQUFLLEdBQUcsQ0FBQyxLQUFLLENBQUMsQ0FBQztJQUM5QixDQUFDO0lBRUQsSUFBSSxHQUFHO1FBQ0wsT0FBTyxDQUFDLElBQUksQ0FBQyxJQUFJLENBQUM7SUFDcEIsQ0FBQztDQUNGO0FBRUQ7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7R0FpR0c7QUFFSCxNQUFNLE9BQU8sT0FBTztJQWtEbEIsWUFDWSxjQUFnQyxFQUNoQyxT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UztJQUM1QixPQUFPLElBQUksQ0FBQyxNQUFNLENBQUMsSUFBSSxPQUFPLElBQUksQ0FBQztBQUNyQyxDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7RGlyZWN0aXZlLCBEb0NoZWNrLCBFbWJlZGRlZFZpZXdSZWYsIElucHV0LCBpc0Rldk1vZGUsIEl0ZXJhYmxlQ2hhbmdlUmVjb3JkLCBJdGVyYWJsZUNoYW5nZXMsIEl0ZXJhYmxlRGlmZmVyLCBJdGVyYWJsZURpZmZlcnMsIE5nSXRlcmFibGUsIFRlbXBsYXRlUmVmLCBUcmFja0J5RnVuY3Rpb24sIFZpZXdDb250YWluZXJSZWZ9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuXG4vKipcbiAqIEBwdWJsaWNBcGlcbiAqL1xuZXhwb3J0IGNsYXNzIE5nRm9yT2ZDb250ZXh0PFQsIFUgZXh0ZW5kcyBOZ0l0ZXJhYmxlPFQ+ID0gTmdJdGVyYWJsZTxUPj4ge1xuICBjb25zdHJ1Y3RvcihwdWJsaWMgJGltcGxpY2l0OiBULCBwdWJsaWMgbmdGb3JPZjogVSwgcHVibGljIGluZGV4OiBudW1iZXIsIHB1YmxpYyBjb3VudDogbnVtYmVyKSB7fVxuXG4gIGdldCBmaXJzdCgpOiBib29sZWFuIHtcbiAgICByZXR1cm4gdGhpcy5pbmRleCA9PT0gMDtcbiAgfVxuXG4gIGdldCBsYXN0KCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiB0aGlzLmluZGV4ID09PSB0aGlzLmNvdW50IC0gMTtcbiAgfVxuXG4gIGdldCBldmVuKCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiB0aGlzLmluZGV4ICUgMiA9PT0gMDtcbiAgfVxuXG4gIGdldCBvZGQoKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuICF0aGlzLmV2ZW47XG4gIH1cbn1cblxuLyoqXG4gKiBBIFtzdHJ1Y3R1cmFsIGRpcmVjdGl2ZV0oZ3VpZGUvc3RydWN0dXJhbC1kaXJlY3RpdmVzKSB0aGF0IHJlbmRlcnNcbiAqIGEgdGVtcGxhdGUgZm9yIGVhY2ggaXRlbSBpbiBhIGNvbGxlY3Rpb24uXG4gKiBUaGUgZGlyZWN0aXZlIGlzIHBsYWNlZCBvbiBhbiBlbGVtZW50LCB3aGljaCBiZWNvbWVzIHRoZSBwYXJlbnRcbiAqIG9mIHRoZSBjbG9uZWQgdGVtcGxhdGVzLlxuICpcbiAqIFRoZSBgbmdGb3JPZmAgZGlyZWN0aXZlIGlzIGdlbmVyYWxseSB1c2VkIGluIHRoZVxuICogW3Nob3J0aGFuZCBmb3JtXShndWlkZS9zdHJ1Y3R1cmFsLWRpcmVjdGl2ZXMjdGhlLWFzdGVyaXNrLS1wcmVmaXgpIGAqbmdGb3JgLlxuICogSW4gdGhpcyBmb3JtLCB0aGUgdGVtcGxhdGUgdG8gYmUgcmVuZGVyZWQgZm9yIGVhY2ggaXRlcmF0aW9uIGlzIHRoZSBjb250ZW50XG4gKiBvZiBhbiBhbmNob3IgZWxlbWVudCBjb250YWluaW5nIHRoZSBkaXJlY3RpdmUuXG4gKlxuICogVGhlIGZvbGxvd2luZyBleGFtcGxlIHNob3dzIHRoZSBzaG9ydGhhbmQgc3ludGF4IHdpdGggc29tZSBvcHRpb25zLFxuICogY29udGFpbmVkIGluIGFuIGA8bGk+YCBlbGVtZW50LlxuICpcbiAqIGBgYFxuICogPGxpICpuZ0Zvcj1cImxldCBpdGVtIG9mIGl0ZW1zOyBpbmRleCBhcyBpOyB0cmFja0J5OiB0cmFja0J5Rm5cIj4uLi48L2xpPlxuICogYGBgXG4gKlxuICogVGhlIHNob3J0aGFuZCBmb3JtIGV4cGFuZHMgaW50byBhIGxvbmcgZm9ybSB0aGF0IHVzZXMgdGhlIGBuZ0Zvck9mYCBzZWxlY3RvclxuICogb24gYW4gYDxuZy10ZW1wbGF0ZT5gIGVsZW1lbnQuXG4gKiBUaGUgY29udGVudCBvZiB0aGUgYDxuZy10ZW1wbGF0ZT5gIGVsZW1lbnQgaXMgdGhlIGA8bGk+YCBlbGVtZW50IHRoYXQgaGVsZCB0aGVcbiAqIHNob3J0LWZvcm0gZGlyZWN0aXZlLlxuICpcbiAqIEhlcmUgaXMgdGhlIGV4cGFuZGVkIHZlcnNpb24gb2YgdGhlIHNob3J0LWZvcm0gZXhhbXBsZS5cbiAqXG4gKiBgYGBcbiAqIDxuZy10ZW1wbGF0ZSBuZ0ZvciBsZXQtaXRlbSBbbmdGb3JPZl09XCJpdGVtc1wiIGxldC1pPVwiaW5kZXhcIiBbbmdGb3JUcmFja0J5XT1cInRyYWNrQnlGblwiPlxuICogICA8bGk+Li4uPC9saT5cbiAqIDwvbmctdGVtcGxhdGU+XG4gKiBgYGBcbiAqXG4gKiBBbmd1bGFyIGF1dG9tYXRpY2FsbHkgZXhwYW5kcyB0aGUgc2hvcnRoYW5kIHN5bnRheCBhcyBpdCBjb21waWxlcyB0aGUgdGVtcGxhdGUuXG4gKiBUaGUgY29udGV4dCBmb3IgZWFjaCBlbWJlZGRlZCB2aWV3IGlzIGxvZ2ljYWxseSBtZXJnZWQgdG8gdGhlIGN1cnJlbnQgY29tcG9uZW50XG4gKiBjb250ZXh0IGFjY29yZGluZyB0byBpdHMgbGV4aWNhbCBwb3NpdGlvbi5cbiAqXG4gKiBXaGVuIHVzaW5nIHRoZSBzaG9ydGhhbmQgc3ludGF4LCBBbmd1bGFyIGFsbG93cyBvbmx5IFtvbmUgc3RydWN0dXJhbCBkaXJlY3RpdmVcbiAqIG9uIGFuIGVsZW1lbnRdKGd1aWRlL3N0cnVjdHVyYWwtZGlyZWN0aXZlcyNvbmUtc3RydWN0dXJhbC1kaXJlY3RpdmUtcGVyLWhvc3QtZWxlbWVudCkuXG4gKiBJZiB5b3Ugd2FudCB0byBpdGVyYXRlIGNvbmRpdGlvbmFsbHksIGZvciBleGFtcGxlLFxuICogcHV0IHRoZSBgKm5nSWZgIG9uIGEgY29udGFpbmVyIGVsZW1lbnQgdGhhdCB3cmFwcyB0aGUgYCpuZ0ZvcmAgZWxlbWVudC5cbiAqIEZvciBmdXRoZXIgZGlzY3Vzc2lvbiwgc2VlXG4gKiBbU3RydWN0dXJhbCBEaXJlY3RpdmVzXShndWlkZS9zdHJ1Y3R1cmFsLWRpcmVjdGl2ZXMjb25lLXBlci1lbGVtZW50KS5cbiAqXG4gKiBAdXNhZ2VOb3Rlc1xuICpcbiAqICMjIyBMb2NhbCB2YXJpYWJsZXNcbiAqXG4gKiBgTmdGb3JPZmAgcHJvdmlkZXMgZXhwb3J0ZWQgdmFsdWVzIHRoYXQgY2FuIGJlIGFsaWFzZWQgdG8gbG9jYWwgdmFyaWFibGVzLlxuICogRm9yIGV4YW1wbGU6XG4gKlxuICogIGBgYFxuICogPGxpICpuZ0Zvcj1cImxldCB1c2VyIG9mIHVzZXJzOyBpbmRleCBhcyBpOyBmaXJzdCBhcyBpc0ZpcnN0XCI+XG4gKiAgICB7e2l9fS97e3VzZXJzLmxlbmd0aH19LiB7e3VzZXJ9fSA8c3BhbiAqbmdJZj1cImlzRmlyc3RcIj5kZWZhdWx0PC9zcGFuPlxuICogPC9saT5cbiAqIGBgYFxuICpcbiAqIFRoZSBmb2xsb3dpbmcgZXhwb3J0ZWQgdmFsdWVzIGNhbiBiZSBhbGlhc2VkIHRvIGxvY2FsIHZhcmlhYmxlczpcbiAqXG4gKiAtIGAkaW1wbGljaXQ6IFRgOiBUaGUgdmFsdWUgb2YgdGhlIGluZGl2aWR1YWwgaXRlbXMgaW4gdGhlIGl0ZXJhYmxlIChgbmdGb3JPZmApLlxuICogLSBgbmdGb3JPZjogTmdJdGVyYWJsZTxUPmA6IFRoZSB2YWx1ZSBvZiB0aGUgaXRlcmFibGUgZXhwcmVzc2lvbi4gVXNlZnVsIHdoZW4gdGhlIGV4cHJlc3Npb24gaXNcbiAqIG1vcmUgY29tcGxleCB0aGVuIGEgcHJvcGVydHkgYWNjZXNzLCBmb3IgZXhhbXBsZSB3aGVuIHVzaW5nIHRoZSBhc3luYyBwaXBlIChgdXNlclN0cmVhbXMgfFxuICogYXN5bmNgKS5cbiAqIC0gYGluZGV4OiBudW1iZXJgOiBUaGUgaW5kZXggb2YgdGhlIGN1cnJlbnQgaXRlbSBpbiB0aGUgaXRlcmFibGUuXG4gKiAtIGBjb3VudDogbnVtYmVyYDogVGhlIGxlbmd0aCBvZiB0aGUgaXRlcmFibGUuXG4gKiAtIGBmaXJzdDogYm9vbGVhbmA6IFRydWUgd2hlbiB0aGUgaXRlbSBpcyB0aGUgZmlyc3QgaXRlbSBpbiB0aGUgaXRlcmFibGUuXG4gKiAtIGBsYXN0OiBib29sZWFuYDogVHJ1ZSB3aGVuIHRoZSBpdGVtIGlzIHRoZSBsYXN0IGl0ZW0gaW4gdGhlIGl0ZXJhYmxlLlxuICogLSBgZXZlbjogYm9vbGVhbmA6IFRydWUgd2hlbiB0aGUgaXRlbSBoYXMgYW4gZXZlbiBpbmRleCBpbiB0aGUgaXRlcmFibGUuXG4gKiAtIGBvZGQ6IGJvb2xlYW5gOiBUcnVlIHdoZW4gdGhlIGl0ZW0gaGFzIGFuIG9kZCBpbmRleCBpbiB0aGUgaXRlcmFibGUuXG4gKlxuICogIyMjIENoYW5nZSBwcm9wYWdhdGlvblxuICpcbiAqIFdoZW4gdGhlIGNvbnRlbnRzIG9mIHRoZSBpdGVyYXRvciBjaGFuZ2VzLCBgTmdGb3JPZmAgbWFrZXMgdGhlIGNvcnJlc3BvbmRpbmcgY2hhbmdlcyB0byB0aGUgRE9NOlxuICpcbiAqICogV2hlbiBhbiBpdGVtIGlzIGFkZGVkLCBhIG5ldyBpbnN0YW5jZSBvZiB0aGUgdGVtcGxhdGUgaXMgYWRkZWQgdG8gdGhlIERPTS5cbiAqICogV2hlbiBhbiBpdGVtIGlzIHJlbW92ZWQsIGl0cyB0ZW1wbGF0ZSBpbnN0YW5jZSBpcyByZW1vdmVkIGZyb20gdGhlIERPTS5cbiAqICogV2hlbiBpdGVtcyBhcmUgcmVvcmRlcmVkLCB0aGVpciByZXNwZWN0aXZlIHRlbXBsYXRlcyBhcmUgcmVvcmRlcmVkIGluIHRoZSBET00uXG4gKlxuICogQW5ndWxhciB1c2VzIG9iamVjdCBpZGVudGl0eSB0byB0cmFjayBpbnNlcnRpb25zIGFuZCBkZWxldGlvbnMgd2l0aGluIHRoZSBpdGVyYXRvciBhbmQgcmVwcm9kdWNlXG4gKiB0aG9zZSBjaGFuZ2VzIGluIHRoZSBET00uIFRoaXMgaGFzIGltcG9ydGFudCBpbXBsaWNhdGlvbnMgZm9yIGFuaW1hdGlvbnMgYW5kIGFueSBzdGF0ZWZ1bFxuICogY29udHJvbHMgdGhhdCBhcmUgcHJlc2VudCwgc3VjaCBhcyBgPGlucHV0PmAgZWxlbWVudHMgdGhhdCBhY2NlcHQgdXNlciBpbnB1dC4gSW5zZXJ0ZWQgcm93cyBjYW5cbiAqIGJlIGFuaW1hdGVkIGluLCBkZWxldGVkIHJvd3MgY2FuIGJlIGFuaW1hdGVkIG91dCwgYW5kIHVuY2hhbmdlZCByb3dzIHJldGFpbiBhbnkgdW5zYXZlZCBzdGF0ZVxuICogc3VjaCBhcyB1c2VyIGlucHV0LlxuICogRm9yIG1vcmUgb24gYW5pbWF0aW9ucywgc2VlIFtUcmFuc2l0aW9ucyBhbmQgVHJpZ2dlcnNdKGd1aWRlL3RyYW5zaXRpb24tYW5kLXRyaWdnZXJzKS5cbiAqXG4gKiBUaGUgaWRlbnRpdGllcyBvZiBlbGVtZW50cyBpbiB0aGUgaXRlcmF0b3IgY2FuIGNoYW5nZSB3aGlsZSB0aGUgZGF0YSBkb2VzIG5vdC5cbiAqIFRoaXMgY2FuIGhhcHBlbiwgZm9yIGV4YW1wbGUsIGlmIHRoZSBpdGVyYXRvciBpcyBwcm9kdWNlZCBmcm9tIGFuIFJQQyB0byB0aGUgc2VydmVyLCBhbmQgdGhhdFxuICogUlBDIGlzIHJlLXJ1bi4gRXZlbiBpZiB0aGUgZGF0YSBoYXNuJ3QgY2hhbmdlZCwgdGhlIHNlY29uZCByZXNwb25zZSBwcm9kdWNlcyBvYmplY3RzIHdpdGhcbiAqIGRpZmZlcmVudCBpZGVudGl0aWVzLCBhbmQgQW5ndWxhciBtdXN0IHRlYXIgZG93biB0aGUgZW50aXJlIERPTSBhbmQgcmVidWlsZCBpdCAoYXMgaWYgYWxsIG9sZFxuICogZWxlbWVudHMgd2VyZSBkZWxldGVkIGFuZCBhbGwgbmV3IGVsZW1lbnRzIGluc2VydGVkKS5cbiAqXG4gKiBUbyBhdm9pZCB0aGlzIGV4cGVuc2l2ZSBvcGVyYXRpb24sIHlvdSBjYW4gY3VzdG9taXplIHRoZSBkZWZhdWx0IHRyYWNraW5nIGFsZ29yaXRobS5cbiAqIGJ5IHN1cHBseWluZyB0aGUgYHRyYWNrQnlgIG9wdGlvbiB0byBgTmdGb3JPZmAuXG4gKiBgdHJhY2tCeWAgdGFrZXMgYSBmdW5jdGlvbiB0aGF0IGhhcyB0d28gYXJndW1lbnRzOiBgaW5kZXhgIGFuZCBgaXRlbWAuXG4gKiBJZiBgdHJhY2tCeWAgaXMgZ2l2ZW4sIEFuZ3VsYXIgdHJhY2tzIGNoYW5nZXMgYnkgdGhlIHJldHVybiB2YWx1ZSBvZiB0aGUgZnVuY3Rpb24uXG4gKlxuICogQHNlZSBbU3RydWN0dXJhbCBEaXJlY3RpdmVzXShndWlkZS9zdHJ1Y3R1cmFsLWRpcmVjdGl2ZXMpXG4gKiBAbmdNb2R1bGUgQ29tbW9uTW9kdWxlXG4gKiBAcHVibGljQXBpXG4gKi9cbkBEaXJlY3RpdmUoe3NlbGVjdG9yOiAnW25nRm9yXVtuZ0Zvck9mXSd9KVxuZXhwb3J0IGNsYXNzIE5nRm9yT2Y8VCwgVSBleHRlbmRzIE5nSXRlcmFibGU8VD4gPSBOZ0l0ZXJhYmxlPFQ+PiBpbXBsZW1lbnRzIERvQ2hlY2sge1xuICAvKipcbiAgICogVGhlIHZhbHVlIG9mIHRoZSBpdGVyYWJsZSBleHByZXNzaW9uLCB3aGljaCBjYW4gYmUgdXNlZCBhcyBhXG4gICAqIFt0ZW1wbGF0ZSBpbnB1dCB2YXJpYWJsZV0oZ3VpZGUvc3RydWN0dXJhbC1kaXJlY3RpdmVzI3RlbXBsYXRlLWlucHV0LXZhcmlhYmxlKS5cbiAgICovXG4gIEBJbnB1dCgpXG4gIHNldCBuZ0Zvck9mKG5nRm9yT2Y6IFUmTmdJdGVyYWJsZTxUPnx1bmRlZmluZWR8bnVsbCkge1xuICAgIHRoaXMuX25nRm9yT2YgPSBuZ0Zvck9mO1xuICAgIHRoaXMuX25nRm9yT2ZEaXJ0eSA9IHRydWU7XG4gIH1cbiAgLyoqXG4gICAqIEEgZnVuY3Rpb24gdGhhdCBkZWZpbmVzIGhvdyB0byB0cmFjayBjaGFuZ2VzIGZvciBpdGVtcyBpbiB0aGUgaXRlcmFibGUuXG4gICAqXG4gICAqIFdoZW4gaXRlbXMgYXJlIGFkZGVkLCBtb3ZlZCwgb3IgcmVtb3ZlZCBpbiB0aGUgaXRlcmFibGUsXG4gICAqIHRoZSBkaXJlY3RpdmUgbXVzdCByZS1yZW5kZXIgdGhlIGFwcHJvcHJpYXRlIERPTSBub2Rlcy5cbiAgICogVG8gbWluaW1pemUgY2h1cm4gaW4gdGhlIERPTSwgb25seSBub2RlcyB0aGF0IGhhdmUgY2hhbmdlZFxuICAgKiBhcmUgcmUtcmVuZGVyZWQuXG4gICAqXG4gICAqIEJ5IGRlZmF1bHQsIHRoZSBjaGFuZ2UgZGV0ZWN0b3IgYXNzdW1lcyB0aGF0XG4gICAqIHRoZSBvYmplY3QgaW5zdGFuY2UgaWRlbnRpZmllcyB0aGUgbm9kZSBpbiB0aGUgaXRlcmFibGUuXG4gICAqIFdoZW4gdGhpcyBmdW5jdGlvbiBpcyBzdXBwbGllZCwgdGhlIGRpcmVjdGl2ZSB1c2VzXG4gICAqIHRoZSByZXN1bHQgb2YgY2FsbGluZyB0aGlzIGZ1bmN0aW9uIHRvIGlkZW50aWZ5IHRoZSBpdGVtIG5vZGUsXG4gICAqIHJhdGhlciB0aGFuIHRoZSBpZGVudGl0eSBvZiB0aGUgb2JqZWN0IGl0c2VsZi5cbiAgICpcbiAgICogVGhlIGZ1bmN0aW9uIHJlY2VpdmVzIHR3byBpbnB1dHMsXG4gICAqIHRoZSBpdGVyYXRpb24gaW5kZXggYW5kIHRoZSBhc3NvY2lhdGVkIG5vZGUgZGF0YS5cbiAgICovXG4gIEBJbnB1dCgpXG4gIHNldCBuZ0ZvclRyYWNrQnkoZm46IFRyYWNrQnlGdW5jdGlvbjxUPikge1xuICAgIGlmIChpc0Rldk1vZGUoKSAmJiBmbiAhPSBudWxsICYmIHR5cGVvZiBmbiAhPT0gJ2Z1bmN0aW9uJykge1xuICAgICAgLy8gVE9ETyh2aWNiKTogdXNlIGEgbG9nIHNlcnZpY2Ugb25jZSB0aGVyZSBpcyBhIHB1YmxpYyBvbmUgYXZhaWxhYmxlXG4gICAgICBpZiAoPGFueT5jb25zb2xlICYmIDxhbnk+Y29uc29sZS53YXJuKSB7XG4gICAgICAgIGNvbnNvbGUud2FybihcbiAgICAgICAgICAgIGB0cmFja0J5IG11c3QgYmUgYSBmdW5jdGlvbiwgYnV0IHJlY2VpdmVkICR7SlNPTi5zdHJpbmdpZnkoZm4pfS4gYCArXG4gICAgICAgICAgICBgU2VlIGh0dHBzOi8vYW5ndWxhci5pby9hcGkvY29tbW9uL05nRm9yT2YjY2hhbmdlLXByb3BhZ2F0aW9uIGZvciBtb3JlIGluZm9ybWF0aW9uLmApO1xuICAgICAgfVxuICAgIH1cbiAgICB0aGlzLl90cmFja0J5Rm4gPSBmbjtcbiAgfVxuXG4gIGdldCBuZ0ZvclRyYWNrQnkoKTogVHJhY2tCeUZ1bmN0aW9uPFQ+IHtcbiAgICByZXR1cm4gdGhpcy5fdHJhY2tCeUZuO1xuICB9XG5cbiAgcHJpdmF0ZSBfbmdGb3JPZjogVXx1bmRlZmluZWR8bnVsbCA9IG51bGw7XG4gIHByaXZhdGUgX25nRm9yT2ZEaXJ0eTogYm9vbGVhbiA9IHRydWU7XG4gIHByaXZhdGUgX2RpZmZlcjogSXRlcmFibGVEaWZmZXI8VD58bnVsbCA9IG51bGw7XG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBwcml2YXRlIF90cmFja0J5Rm4hOiBUcmFja0J5RnVuY3Rpb248VD47XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBwcml2YXRlIF92aWV3Q29udGFpbmVyOiBWaWV3Q29udGFpbmVyUmVmLFxuICAgICAgcHJpdmF0ZSBfdGVtcGxhdGU6IFRlbXBsYXRlUmVmPE5nRm9yT2ZDb250ZXh0PFQsIFU+PiwgcHJpdmF0ZSBfZGlmZmVyczogSXRlcmFibGVEaWZmZXJzKSB7fVxuXG4gIC8qKlxuICAgKiBBIHJlZmVyZW5jZSB0byB0aGUgdGVtcGxhdGUgdGhhdCBpcyBzdGFtcGVkIG91dCBmb3IgZWFjaCBpdGVtIGluIHRoZSBpdGVyYWJsZS5cbiAgICogQHNlZSBbdGVtcGxhdGUgcmVmZXJlbmNlIHZhcmlhYmxlXShndWlkZS90ZW1wbGF0ZS1yZWZlcmVuY2UtdmFyaWFibGVzKVxuICAgKi9cbiAgQElucHV0KClcbiAgc2V0IG5nRm9yVGVtcGxhdGUodmFsdWU6IFRlbXBsYXRlUmVmPE5nRm9yT2ZDb250ZXh0PFQsIFU+Pikge1xuICAgIC8vIFRPRE8oVFMyLjEpOiBtYWtlIFRlbXBsYXRlUmVmPFBhcnRpYWw8TmdGb3JSb3dPZjxUPj4+IG9uY2Ugd2UgbW92ZSB0byBUUyB2Mi4xXG4gICAgLy8gVGhlIGN1cnJlbnQgdHlwZSBpcyB0b28gcmVzdHJpY3RpdmU7IGEgdGVtcGxhdGUgdGhhdCBqdXN0IHVzZXMgaW5kZXgsIGZvciBleGFtcGxlLFxuICAgIC8vIHNob3VsZCBiZSBhY2NlcHRhYmxlLlxuICAgIGlmICh2YWx1ZSkge1xuICAgICAgdGhpcy5fdGVtcGxhdGUgPSB2YWx1ZTtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogQXBwbGllcyB0aGUgY2hhbmdlcyB3aGVuIG5lZWRlZC5cbiAgICovXG4gIG5nRG9DaGVjaygpOiB2b2lkIHtcbiAgICBpZiAodGhpcy5fbmdGb3JPZkRpcnR5KSB7XG4gICAgICB0aGlzLl9uZ0Zvck9mRGlydHkgPSBmYWxzZTtcbiAgICAgIC8vIFJlYWN0IG9uIG5nRm9yT2YgY2hhbmdlcyBvbmx5IG9uY2UgYWxsIGlucHV0cyBoYXZlIGJlZW4gaW5pdGlhbGl6ZWRcbiAgICAgIGNvbnN0IHZhbHVlID0gdGhpcy5fbmdGb3JPZjtcbiAgICAgIGlmICghdGhpcy5fZGlmZmVyICYmIHZhbHVlKSB7XG4gICAgICAgIHRyeSB7XG4gICAgICAgICAgdGhpcy5fZGlmZmVyID0gdGhpcy5fZGlmZmVycy5maW5kKHZhbHVlKS5jcmVhdGUodGhpcy5uZ0ZvclRyYWNrQnkpO1xuICAgICAgICB9IGNhdGNoIHtcbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoYENhbm5vdCBmaW5kIGEgZGlmZmVyIHN1cHBvcnRpbmcgb2JqZWN0ICcke3ZhbHVlfScgb2YgdHlwZSAnJHtcbiAgICAgICAgICAgICAgZ2V0VHlwZU5hbWUodmFsdWUpfScuIE5nRm9yIG9ubHkgc3VwcG9ydHMgYmluZGluZyB0byBJdGVyYWJsZXMgc3VjaCBhcyBBcnJheXMuYCk7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gICAgaWYgKHRoaXMuX2RpZmZlcikge1xuICAgICAgY29uc3QgY2hhbmdlcyA9IHRoaXMuX2RpZmZlci5kaWZmKHRoaXMuX25nRm9yT2YpO1xuICAgICAgaWYgKGNoYW5nZXMpIHRoaXMuX2FwcGx5Q2hhbmdlcyhjaGFuZ2VzKTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIF9hcHBseUNoYW5nZXMoY2hhbmdlczogSXRlcmFibGVDaGFuZ2VzPFQ+KSB7XG4gICAgY29uc3QgaW5zZXJ0VHVwbGVzOiBSZWNvcmRWaWV3VHVwbGU8VCwgVT5bXSA9IFtdO1xuICAgIGNoYW5nZXMuZm9yRWFjaE9wZXJhdGlvbihcbiAgICAgICAgKGl0ZW06IEl0ZXJhYmxlQ2hhbmdlUmVjb3JkPGFueT4sIGFkanVzdGVkUHJldmlvdXNJbmRleDogbnVtYmVyfG51bGwsXG4gICAgICAgICBjdXJyZW50SW5kZXg6IG51bWJlcnxudWxsKSA9PiB7XG4gICAgICAgICAgaWYgKGl0ZW0ucHJldmlvdXNJbmRleCA9PSBudWxsKSB7XG4gICAgICAgICAgICAvLyBOZ0Zvck9mIGlzIG5ldmVyIFwibnVsbFwiIG9yIFwidW5kZWZpbmVkXCIgaGVyZSBiZWNhdXNlIHRoZSBkaWZmZXIgZGV0ZWN0ZWRcbiAgICAgICAgICAgIC8vIHRoYXQgYSBuZXcgaXRlbSBuZWVkcyB0byBiZSBpbnNlcnRlZCBmcm9tIHRoZSBpdGVyYWJsZS4gVGhpcyBpbXBsaWVzIHRoYXRcbiAgICAgICAgICAgIC8vIHRoZXJlIGlzIGFuIGl0ZXJhYmxlIHZhbHVlIGZvciBcIl9uZ0Zvck9mXCIuXG4gICAgICAgICAgICBjb25zdCB2aWV3ID0gdGhpcy5fdmlld0NvbnRhaW5lci5jcmVhdGVFbWJlZGRlZFZpZXcoXG4gICAgICAgICAgICAgICAgdGhpcy5fdGVtcGxhdGUsIG5ldyBOZ0Zvck9mQ29udGV4dDxULCBVPihudWxsISwgdGhpcy5fbmdGb3JPZiEsIC0xLCAtMSksXG4gICAgICAgICAgICAgICAgY3VycmVudEluZGV4ID09PSBudWxsID8gdW5kZWZpbmVkIDogY3VycmVudEluZGV4KTtcbiAgICAgICAgICAgIGNvbnN0IHR1cGxlID0gbmV3IFJlY29yZFZpZXdUdXBsZTxULCBVPihpdGVtLCB2aWV3KTtcbiAgICAgICAgICAgIGluc2VydFR1cGxlcy5wdXNoKHR1cGxlKTtcbiAgICAgICAgICB9IGVsc2UgaWYgKGN1cnJlbnRJbmRleCA9PSBudWxsKSB7XG4gICAgICAgICAgICB0aGlzLl92aWV3Q29udGFpbmVyLnJlbW92ZShcbiAgICAgICAgICAgICAgICBhZGp1c3RlZFByZXZpb3VzSW5kZXggPT09IG51bGwgPyB1bmRlZmluZWQgOiBhZGp1c3RlZFByZXZpb3VzSW5kZXgpO1xuICAgICAgICAgIH0gZWxzZSBpZiAoYWRqdXN0ZWRQcmV2aW91c0luZGV4ICE9PSBudWxsKSB7XG4gICAgICAgICAgICBjb25zdCB2aWV3ID0gdGhpcy5fdmlld0NvbnRhaW5lci5nZXQoYWRqdXN0ZWRQcmV2aW91c0luZGV4KSE7XG4gICAgICAgICAgICB0aGlzLl92aWV3Q29udGFpbmVyLm1vdmUodmlldywgY3VycmVudEluZGV4KTtcbiAgICAgICAgICAgIGNvbnN0IHR1cGxlID0gbmV3IFJlY29yZFZpZXdUdXBsZShpdGVtLCA8RW1iZWRkZWRWaWV3UmVmPE5nRm9yT2ZDb250ZXh0PFQsIFU+Pj52aWV3KTtcbiAgICAgICAgICAgIGluc2VydFR1cGxlcy5wdXNoKHR1cGxlKTtcbiAgICAgICAgICB9XG4gICAgICAgIH0pO1xuXG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCBpbnNlcnRUdXBsZXMubGVuZ3RoOyBpKyspIHtcbiAgICAgIHRoaXMuX3BlclZpZXdDaGFuZ2UoaW5zZXJ0VHVwbGVzW2ldLnZpZXcsIGluc2VydFR1cGxlc1tpXS5yZWNvcmQpO1xuICAgIH1cblxuICAgIGZvciAobGV0IGkgPSAwLCBpbGVuID0gdGhpcy5fdmlld0NvbnRhaW5lci5sZW5ndGg7IGkgPCBpbGVuOyBpKyspIHtcbiAgICAgIGNvbnN0IHZpZXdSZWYgPSA8RW1iZWRkZWRWaWV3UmVmPE5nRm9yT2ZDb250ZXh0PFQsIFU+Pj50aGlzLl92aWV3Q29udGFpbmVyLmdldChpKTtcbiAgICAgIHZpZXdSZWYuY29udGV4dC5pbmRleCA9IGk7XG4gICAgICB2aWV3UmVmLmNvbnRleHQuY291bnQgPSBpbGVuO1xuICAgICAgdmlld1JlZi5jb250ZXh0Lm5nRm9yT2YgPSB0aGlzLl9uZ0Zvck9mITtcbiAgICB9XG5cbiAgICBjaGFuZ2VzLmZvckVhY2hJZGVudGl0eUNoYW5nZSgocmVjb3JkOiBhbnkpID0+IHtcbiAgICAgIGNvbnN0IHZpZXdSZWYgPVxuICAgICAgICAgIDxFbWJlZGRlZFZpZXdSZWY8TmdGb3JPZkNvbnRleHQ8VCwgVT4+PnRoaXMuX3ZpZXdDb250YWluZXIuZ2V0KHJlY29yZC5jdXJyZW50SW5kZXgpO1xuICAgICAgdmlld1JlZi5jb250ZXh0LiRpbXBsaWNpdCA9IHJlY29yZC5pdGVtO1xuICAgIH0pO1xuICB9XG5cbiAgcHJpdmF0ZSBfcGVyVmlld0NoYW5nZShcbiAgICAgIHZpZXc6IEVtYmVkZGVkVmlld1JlZjxOZ0Zvck9mQ29udGV4dDxULCBVPj4sIHJlY29yZDogSXRlcmFibGVDaGFuZ2VSZWNvcmQ8YW55Pikge1xuICAgIHZpZXcuY29udGV4dC4kaW1wbGljaXQgPSByZWNvcmQuaXRlbTtcbiAgfVxuXG4gIC8qKlxuICAgKiBBc3NlcnRzIHRoZSBjb3JyZWN0IHR5cGUgb2YgdGhlIGNvbnRleHQgZm9yIHRoZSB0ZW1wbGF0ZSB0aGF0IGBOZ0Zvck9mYCB3aWxsIHJlbmRlci5cbiAgICpcbiAgICogVGhlIHByZXNlbmNlIG9mIHRoaXMgbWV0aG9kIGlzIGEgc2lnbmFsIHRvIHRoZSBJdnkgdGVtcGxhdGUgdHlwZS1jaGVjayBjb21waWxlciB0aGF0IHRoZVxuICAgKiBgTmdGb3JPZmAgc3RydWN0dXJhbCBkaXJlY3RpdmUgcmVuZGVycyBpdHMgdGVtcGxhdGUgd2l0aCBhIHNwZWNpZmljIGNvbnRleHQgdHlwZS5cbiAgICovXG4gIHN0YXRpYyBuZ1RlbXBsYXRlQ29udGV4dEd1YXJkPFQsIFUgZXh0ZW5kcyBOZ0l0ZXJhYmxlPFQ+PihkaXI6IE5nRm9yT2Y8VCwgVT4sIGN0eDogYW55KTpcbiAgICAgIGN0eCBpcyBOZ0Zvck9mQ29udGV4dDxULCBVPiB7XG4gICAgcmV0dXJuIHRydWU7XG4gIH1cbn1cblxuY2xhc3MgUmVjb3JkVmlld1R1cGxlPFQsIFUgZXh0ZW5kcyBOZ0l0ZXJhYmxlPFQ+PiB7XG4gIGNvbnN0cnVjdG9yKHB1YmxpYyByZWNvcmQ6IGFueSwgcHVibGljIHZpZXc6IEVtYmVkZGVkVmlld1JlZjxOZ0Zvck9mQ29udGV4dDxULCBVPj4pIHt9XG59XG5cbmZ1bmN0aW9uIGdldFR5cGVOYW1lKHR5cGU6IGFueSk6IHN0cmluZyB7XG4gIHJldHVybiB0eXBlWyduYW1lJ10gfHwgdHlwZW9mIHR5cGU7XG59XG4iXX0=