/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { QueryList } from '@angular/core';
import { Subject, Subscription } from 'rxjs';
import { UP_ARROW, DOWN_ARROW, LEFT_ARROW, RIGHT_ARROW, TAB, A, Z, ZERO, NINE, hasModifierKey, HOME, END, } from '@angular/cdk/keycodes';
import { debounceTime, filter, map, tap } from 'rxjs/operators';
/**
 * This class manages keyboard events for selectable lists. If you pass it a query list
 * of items, it will set the active item correctly when arrow events occur.
 */
export class ListKeyManager {
    constructor(_items) {
        this._items = _items;
        this._activeItemIndex = -1;
        this._activeItem = null;
        this._wrap = false;
        this._letterKeyStream = new Subject();
        this._typeaheadSubscription = Subscription.EMPTY;
        this._vertical = true;
        this._allowedModifierKeys = [];
        this._homeAndEnd = false;
        /**
         * Predicate function that can be used to check whether an item should be skipped
         * by the key manager. By default, disabled items are skipped.
         */
        this._skipPredicateFn = (item) => item.disabled;
        // Buffer for the letters that the user has pressed when the typeahead option is turned on.
        this._pressedLetters = [];
        /**
         * Stream that emits any time the TAB key is pressed, so components can react
         * when focus is shifted off of the list.
         */
        this.tabOut = new Subject();
        /** Stream that emits whenever the active item of the list manager changes. */
        this.change = new Subject();
        // We allow for the items to be an array because, in some cases, the consumer may
        // not have access to a QueryList of the items they want to manage (e.g. when the
        // items aren't being collected via `ViewChildren` or `ContentChildren`).
        if (_items instanceof QueryList) {
            _items.changes.subscribe((newItems) => {
                if (this._activeItem) {
                    const itemArray = newItems.toArray();
                    const newIndex = itemArray.indexOf(this._activeItem);
                    if (newIndex > -1 && newIndex !== this._activeItemIndex) {
                        this._activeItemIndex = newIndex;
                    }
                }
            });
        }
    }
    /**
     * Sets the predicate function that determines which items should be skipped by the
     * list key manager.
     * @param predicate Function that determines whether the given item should be skipped.
     */
    skipPredicate(predicate) {
        this._skipPredicateFn = predicate;
        return this;
    }
    /**
     * Configures wrapping mode, which determines whether the active item will wrap to
     * the other end of list when there are no more items in the given direction.
     * @param shouldWrap Whether the list should wrap when reaching the end.
     */
    withWrap(shouldWrap = true) {
        this._wrap = shouldWrap;
        return this;
    }
    /**
     * Configures whether the key manager should be able to move the selection vertically.
     * @param enabled Whether vertical selection should be enabled.
     */
    withVerticalOrientation(enabled = true) {
        this._vertical = enabled;
        return this;
    }
    /**
     * Configures the key manager to move the selection horizontally.
     * Passing in `null` will disable horizontal movement.
     * @param direction Direction in which the selection can be moved.
     */
    withHorizontalOrientation(direction) {
        this._horizontal = direction;
        return this;
    }
    /**
     * Modifier keys which are allowed to be held down and whose default actions will be prevented
     * as the user is pressing the arrow keys. Defaults to not allowing any modifier keys.
     */
    withAllowedModifierKeys(keys) {
        this._allowedModifierKeys = keys;
        return this;
    }
    /**
     * Turns on typeahead mode which allows users to set the active item by typing.
     * @param debounceInterval Time to wait after the last keystroke before setting the active item.
     */
    withTypeAhead(debounceInterval = 200) {
        if ((typeof ngDevMode === 'undefined' || ngDevMode) && (this._items.length &&
            this._items.some(item => typeof item.getLabel !== 'function'))) {
            throw Error('ListKeyManager items in typeahead mode must implement the `getLabel` method.');
        }
        this._typeaheadSubscription.unsubscribe();
        // Debounce the presses of non-navigational keys, collect the ones that correspond to letters
        // and convert those letters back into a string. Afterwards find the first item that starts
        // with that string and select it.
        this._typeaheadSubscription = this._letterKeyStream.pipe(tap(letter => this._pressedLetters.push(letter)), debounceTime(debounceInterval), filter(() => this._pressedLetters.length > 0), map(() => this._pressedLetters.join(''))).subscribe(inputString => {
            const items = this._getItemsArray();
            // Start at 1 because we want to start searching at the item immediately
            // following the current active item.
            for (let i = 1; i < items.length + 1; i++) {
                const index = (this._activeItemIndex + i) % items.length;
                const item = items[index];
                if (!this._skipPredicateFn(item) &&
                    item.getLabel().toUpperCase().trim().indexOf(inputString) === 0) {
                    this.setActiveItem(index);
                    break;
                }
            }
            this._pressedLetters = [];
        });
        return this;
    }
    /**
     * Configures the key manager to activate the first and last items
     * respectively when the Home or End key is pressed.
     * @param enabled Whether pressing the Home or End key activates the first/last item.
     */
    withHomeAndEnd(enabled = true) {
        this._homeAndEnd = enabled;
        return this;
    }
    setActiveItem(item) {
        const previousActiveItem = this._activeItem;
        this.updateActiveItem(item);
        if (this._activeItem !== previousActiveItem) {
            this.change.next(this._activeItemIndex);
        }
    }
    /**
     * Sets the active item depending on the key event passed in.
     * @param event Keyboard event to be used for determining which element should be active.
     */
    onKeydown(event) {
        const keyCode = event.keyCode;
        const modifiers = ['altKey', 'ctrlKey', 'metaKey', 'shiftKey'];
        const isModifierAllowed = modifiers.every(modifier => {
            return !event[modifier] || this._allowedModifierKeys.indexOf(modifier) > -1;
        });
        switch (keyCode) {
            case TAB:
                this.tabOut.next();
                return;
            case DOWN_ARROW:
                if (this._vertical && isModifierAllowed) {
                    this.setNextItemActive();
                    break;
                }
                else {
                    return;
                }
            case UP_ARROW:
                if (this._vertical && isModifierAllowed) {
                    this.setPreviousItemActive();
                    break;
                }
                else {
                    return;
                }
            case RIGHT_ARROW:
                if (this._horizontal && isModifierAllowed) {
                    this._horizontal === 'rtl' ? this.setPreviousItemActive() : this.setNextItemActive();
                    break;
                }
                else {
                    return;
                }
            case LEFT_ARROW:
                if (this._horizontal && isModifierAllowed) {
                    this._horizontal === 'rtl' ? this.setNextItemActive() : this.setPreviousItemActive();
                    break;
                }
                else {
                    return;
                }
            case HOME:
                if (this._homeAndEnd && isModifierAllowed) {
                    this.setFirstItemActive();
                    break;
                }
                else {
                    return;
                }
            case END:
                if (this._homeAndEnd && isModifierAllowed) {
                    this.setLastItemActive();
                    break;
                }
                else {
                    return;
                }
            default:
                if (isModifierAllowed || hasModifierKey(event, 'shiftKey')) {
                    // Attempt to use the `event.key` which also maps it to the user's keyboard language,
                    // otherwise fall back to resolving alphanumeric characters via the keyCode.
                    if (event.key && event.key.length === 1) {
                        this._letterKeyStream.next(event.key.toLocaleUpperCase());
                    }
                    else if ((keyCode >= A && keyCode <= Z) || (keyCode >= ZERO && keyCode <= NINE)) {
                        this._letterKeyStream.next(String.fromCharCode(keyCode));
                    }
                }
                // Note that we return here, in order to avoid preventing
                // the default action of non-navigational keys.
                return;
        }
        this._pressedLetters = [];
        event.preventDefault();
    }
    /** Index of the currently active item. */
    get activeItemIndex() {
        return this._activeItemIndex;
    }
    /** The active item. */
    get activeItem() {
        return this._activeItem;
    }
    /** Gets whether the user is currently typing into the manager using the typeahead feature. */
    isTyping() {
        return this._pressedLetters.length > 0;
    }
    /** Sets the active item to the first enabled item in the list. */
    setFirstItemActive() {
        this._setActiveItemByIndex(0, 1);
    }
    /** Sets the active item to the last enabled item in the list. */
    setLastItemActive() {
        this._setActiveItemByIndex(this._items.length - 1, -1);
    }
    /** Sets the active item to the next enabled item in the list. */
    setNextItemActive() {
        this._activeItemIndex < 0 ? this.setFirstItemActive() : this._setActiveItemByDelta(1);
    }
    /** Sets the active item to a previous enabled item in the list. */
    setPreviousItemActive() {
        this._activeItemIndex < 0 && this._wrap ? this.setLastItemActive()
            : this._setActiveItemByDelta(-1);
    }
    updateActiveItem(item) {
        const itemArray = this._getItemsArray();
        const index = typeof item === 'number' ? item : itemArray.indexOf(item);
        const activeItem = itemArray[index];
        // Explicitly check for `null` and `undefined` because other falsy values are valid.
        this._activeItem = activeItem == null ? null : activeItem;
        this._activeItemIndex = index;
    }
    /**
     * This method sets the active item, given a list of items and the delta between the
     * currently active item and the new active item. It will calculate differently
     * depending on whether wrap mode is turned on.
     */
    _setActiveItemByDelta(delta) {
        this._wrap ? this._setActiveInWrapMode(delta) : this._setActiveInDefaultMode(delta);
    }
    /**
     * Sets the active item properly given "wrap" mode. In other words, it will continue to move
     * down the list until it finds an item that is not disabled, and it will wrap if it
     * encounters either end of the list.
     */
    _setActiveInWrapMode(delta) {
        const items = this._getItemsArray();
        for (let i = 1; i <= items.length; i++) {
            const index = (this._activeItemIndex + (delta * i) + items.length) % items.length;
            const item = items[index];
            if (!this._skipPredicateFn(item)) {
                this.setActiveItem(index);
                return;
            }
        }
    }
    /**
     * Sets the active item properly given the default mode. In other words, it will
     * continue to move down the list until it finds an item that is not disabled. If
     * it encounters either end of the list, it will stop and not wrap.
     */
    _setActiveInDefaultMode(delta) {
        this._setActiveItemByIndex(this._activeItemIndex + delta, delta);
    }
    /**
     * Sets the active item to the first enabled item starting at the index specified. If the
     * item is disabled, it will move in the fallbackDelta direction until it either
     * finds an enabled item or encounters the end of the list.
     */
    _setActiveItemByIndex(index, fallbackDelta) {
        const items = this._getItemsArray();
        if (!items[index]) {
            return;
        }
        while (this._skipPredicateFn(items[index])) {
            index += fallbackDelta;
            if (!items[index]) {
                return;
            }
        }
        this.setActiveItem(index);
    }
    /** Returns the items as an array. */
    _getItemsArray() {
        return this._items instanceof QueryList ? this._items.toArray() : this._items;
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibGlzdC1rZXktbWFuYWdlci5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uL3NyYy9jZGsvYTExeS9rZXktbWFuYWdlci9saXN0LWtleS1tYW5hZ2VyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBQyxTQUFTLEVBQUMsTUFBTSxlQUFlLENBQUM7QUFDeEMsT0FBTyxFQUFDLE9BQU8sRUFBRSxZQUFZLEVBQUMsTUFBTSxNQUFNLENBQUM7QUFDM0MsT0FBTyxFQUNMLFFBQVEsRUFDUixVQUFVLEVBQ1YsVUFBVSxFQUNWLFdBQVcsRUFDWCxHQUFHLEVBQ0gsQ0FBQyxFQUNELENBQUMsRUFDRCxJQUFJLEVBQ0osSUFBSSxFQUNKLGNBQWMsRUFDZCxJQUFJLEVBQ0osR0FBRyxHQUNKLE1BQU0sdUJBQXVCLENBQUM7QUFDL0IsT0FBTyxFQUFDLFlBQVksRUFBRSxNQUFNLEVBQUUsR0FBRyxFQUFFLEdBQUcsRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBYzlEOzs7R0FHRztBQUNILE1BQU0sT0FBTyxjQUFjO0lBb0J6QixZQUFvQixNQUEwQjtRQUExQixXQUFNLEdBQU4sTUFBTSxDQUFvQjtRQW5CdEMscUJBQWdCLEdBQUcsQ0FBQyxDQUFDLENBQUM7UUFDdEIsZ0JBQVcsR0FBYSxJQUFJLENBQUM7UUFDN0IsVUFBSyxHQUFHLEtBQUssQ0FBQztRQUNkLHFCQUFnQixHQUFHLElBQUksT0FBTyxFQUFVLENBQUM7UUFDekMsMkJBQXNCLEdBQUcsWUFBWSxDQUFDLEtBQUssQ0FBQztRQUM1QyxjQUFTLEdBQUcsSUFBSSxDQUFDO1FBRWpCLHlCQUFvQixHQUFnQyxFQUFFLENBQUM7UUFDdkQsZ0JBQVcsR0FBRyxLQUFLLENBQUM7UUFFNUI7OztXQUdHO1FBQ0sscUJBQWdCLEdBQUcsQ0FBQyxJQUFPLEVBQUUsRUFBRSxDQUFDLElBQUksQ0FBQyxRQUFRLENBQUM7UUFFdEQsMkZB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O1lBRTFCLElBQUksQ0FBQyxJQUFJLENBQUMsZ0JBQWdCLENBQUMsSUFBSSxDQUFDLEVBQUU7Z0JBQ2hDLElBQUksQ0FBQyxhQUFhLENBQUMsS0FBSyxDQUFDLENBQUM7Z0JBQzFCLE9BQU87YUFDUjtTQUNGO0lBQ0gsQ0FBQztJQUVEOzs7O09BSUc7SUFDSyx1QkFBdUIsQ0FBQyxLQUFhO1FBQzNDLElBQUksQ0FBQyxxQkFBcUIsQ0FBQyxJQUFJLENBQUMsZ0JBQWdCLEdBQUcsS0FBSyxFQUFFLEtBQUssQ0FBQyxDQUFDO0lBQ25FLENBQUM7SUFFRDs7OztPQUlHO0lBQ0sscUJBQXFCLENBQUMsS0FBYSxFQUFFLGFBQXFCO1FBQ2hFLE1BQU0sS0FBSyxHQUFHLElBQUksQ0FBQyxjQUFjLEVBQUUsQ0FBQztRQUVwQyxJQUFJLENBQUMsS0FBSyxDQUFDLEtBQUssQ0FBQyxFQUFFO1lBQ2pCLE9BQU87U0FDUjtRQUVELE9BQU8sSUFBSSxDQUFDLGdCQUFnQixDQUFDLEtBQUssQ0FBQyxLQUFLLENBQUMsQ0FBQyxFQUFFO1lBQzFDLEtBQUssSUFBSSxhQUFhLENBQUM7WUFFdkIsSUFBSSxDQUFDLEtBQUssQ0FBQyxLQUFLLENBQUMsRUFBRTtnQkFDakIsT0FBTzthQUNSO1NBQ0Y7UUFFRCxJQUFJLENBQUMsYUFBYSxDQUFDLEtBQUssQ0FBQyxDQUFDO0lBQzVCLENBQUM7SUFFRCxxQ0FBcUM7SUFDN0IsY0FBYztRQUNwQixPQUFPLElBQUksQ0FBQyxNQUFNLFlBQVksU0FBUyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLE9BQU8sRUFBRSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDO0lBQ2hGLENBQUM7Q0FDRiIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge1F1ZXJ5TGlzdH0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5pbXBvcnQge1N1YmplY3QsIFN1YnNjcmlwdGlvbn0gZnJvbSAncnhqcyc7XG5pbXBvcnQge1xuICBVUF9BUlJPVyxcbiAgRE9XTl9BUlJPVyxcbiAgTEVGVF9BUlJPVyxcbiAgUklHSFRfQVJST1csXG4gIFRBQixcbiAgQSxcbiAgWixcbiAgWkVSTyxcbiAgTklORSxcbiAgaGFzTW9kaWZpZXJLZXksXG4gIEhPTUUsXG4gIEVORCxcbn0gZnJvbSAnQGFuZ3VsYXIvY2RrL2tleWNvZGVzJztcbmltcG9ydCB7ZGVib3VuY2VUaW1lLCBmaWx0ZXIsIG1hcCwgdGFwfSBmcm9tICdyeGpzL29wZXJhdG9ycyc7XG5cbi8qKiBUaGlzIGludGVyZmFjZSBpcyBmb3IgaXRlbXMgdGhhdCBjYW4gYmUgcGFzc2VkIHRvIGEgTGlzdEtleU1hbmFnZXIuICovXG5leHBvcnQgaW50ZXJmYWNlIExpc3RLZXlNYW5hZ2VyT3B0aW9uIHtcbiAgLyoqIFdoZXRoZXIgdGhlIG9wdGlvbiBpcyBkaXNhYmxlZC4gKi9cbiAgZGlzYWJsZWQ/OiBib29sZWFuO1xuXG4gIC8qKiBHZXRzIHRoZSBsYWJlbCBmb3IgdGhpcyBvcHRpb24uICovXG4gIGdldExhYmVsPygpOiBzdHJpbmc7XG59XG5cbi8qKiBNb2RpZmllciBrZXlzIGhhbmRsZWQgYnkgdGhlIExpc3RLZXlNYW5hZ2VyLiAqL1xuZXhwb3J0IHR5cGUgTGlzdEtleU1hbmFnZXJNb2RpZmllcktleSA9ICdhbHRLZXknIHwgJ2N0cmxLZXknIHwgJ21ldGFLZXknIHwgJ3NoaWZ0S2V5JztcblxuLyoqXG4gKiBUaGlzIGNsYXNzIG1hbmFnZXMga2V5Ym9hcmQgZXZlbnRzIGZvciBzZWxlY3RhYmxlIGxpc3RzLiBJZiB5b3UgcGFzcyBpdCBhIHF1ZXJ5IGxpc3RcbiAqIG9mIGl0ZW1zLCBpdCB3aWxsIHNldCB0aGUgYWN0aXZlIGl0ZW0gY29ycmVjdGx5IHdoZW4gYXJyb3cgZXZlbnRzIG9jY3VyLlxuICovXG5leHBvcnQgY2xhc3MgTGlzdEtleU1hbmFnZXI8VCBleHRlbmRzIExpc3RLZXlNYW5hZ2VyT3B0aW9uPiB7XG4gIHByaXZhdGUgX2FjdGl2ZUl0ZW1JbmRleCA9IC0xO1xuICBwcml2YXRlIF9hY3RpdmVJdGVtOiBUIHwgbnVsbCA9IG51bGw7XG4gIHByaXZhdGUgX3dyYXAgPSBmYWxzZTtcbiAgcHJpdmF0ZSBfbGV0dGVyS2V5U3RyZWFtID0gbmV3IFN1YmplY3Q8c3RyaW5nPigpO1xuICBwcml2YXRlIF90eXBlYWhlYWRTdWJzY3JpcHRpb24gPSBTdWJzY3JpcHRpb24uRU1QVFk7XG4gIHByaXZhdGUgX3ZlcnRpY2FsID0gdHJ1ZTtcbiAgcHJpdmF0ZSBfaG9yaXpvbnRhbDogJ2x0cicgfCAncnRsJyB8IG51bGw7XG4gIHByaXZhdGUgX2FsbG93ZWRNb2RpZmllcktleXM6IExpc3RLZXlNYW5hZ2VyTW9kaWZpZXJLZXlbXSA9IFtdO1xuICBwcml2YXRlIF9ob21lQW5kRW5kID0gZmFsc2U7XG5cbiAgLyoqXG4gICAqIFByZWRpY2F0ZSBmdW5jdGlvbiB0aGF0IGNhbiBiZSB1c2VkIHRvIGNoZWNrIHdoZXRoZXIgYW4gaXRlbSBzaG91bGQgYmUgc2tpcHBlZFxuICAgKiBieSB0aGUga2V5IG1hbmFnZXIuIEJ5IGRlZmF1bHQsIGRpc2FibGVkIGl0ZW1zIGFyZSBza2lwcGVkLlxuICAgKi9cbiAgcHJpdmF0ZSBfc2tpcFByZWRpY2F0ZUZuID0gKGl0ZW06IFQpID0+IGl0ZW0uZGlzYWJsZWQ7XG5cbiAgLy8gQnVmZmVyIGZvciB0aGUgbGV0dGVycyB0aGF0IHRoZSB1c2VyIGhhcyBwcmVzc2VkIHdoZW4gdGhlIHR5cGVhaGVhZCBvcHRpb24gaXMgdHVybmVkIG9uLlxuICBwcml2YXRlIF9wcmVzc2VkTGV0dGVyczogc3RyaW5nW10gPSBbXTtcblxuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF9pdGVtczogUXVlcnlMaXN0PFQ+IHwgVFtdKSB7XG4gICAgLy8gV2UgYWxsb3cgZm9yIHRoZSBpdGVtcyB0byBiZSBhbiBhcnJheSBiZWNhdXNlLCBpbiBzb21lIGNhc2VzLCB0aGUgY29uc3VtZXIgbWF5XG4gICAgLy8gbm90IGhhdmUgYWNjZXNzIHRvIGEgUXVlcnlMaXN0IG9mIHRoZSBpdGVtcyB0aGV5IHdhbnQgdG8gbWFuYWdlIChlLmcuIHdoZW4gdGhlXG4gICAgLy8gaXRlbXMgYXJlbid0IGJlaW5nIGNvbGxlY3RlZCB2aWEgYFZpZXdDaGlsZHJlbmAgb3IgYENvbnRlbnRDaGlsZHJlbmApLlxuICAgIGlmIChfaXRlbXMgaW5zdGFuY2VvZiBRdWVyeUxpc3QpIHtcbiAgICAgIF9pdGVtcy5jaGFuZ2VzLnN1YnNjcmliZSgobmV3SXRlbXM6IFF1ZXJ5TGlzdDxUPikgPT4ge1xuICAgICAgICBpZiAodGhpcy5fYWN0aXZlSXRlbSkge1xuICAgICAgICAgIGNvbnN0IGl0ZW1BcnJheSA9IG5ld0l0ZW1zLnRvQXJyYXkoKTtcbiAgICAgICAgICBjb25zdCBuZXdJbmRleCA9IGl0ZW1BcnJheS5pbmRleE9mKHRoaXMuX2FjdGl2ZUl0ZW0pO1xuXG4gICAgICAgICAgaWYgKG5ld0luZGV4ID4gLTEgJiYgbmV3SW5kZXggIT09IHRoaXMuX2FjdGl2ZUl0ZW1JbmRleCkge1xuICAgICAgICAgICAgdGhpcy5fYWN0aXZlSXRlbUluZGV4ID0gbmV3SW5kZXg7XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9KTtcbiAgICB9XG4gIH1cblxuICAvKipcbiAgICogU3RyZWFtIHRoYXQgZW1pdHMgYW55IHRpbWUgdGhlIFRBQiBrZXkgaXMgcHJlc3NlZCwgc28gY29tcG9uZW50cyBjYW4gcmVhY3RcbiAgICogd2hlbiBmb2N1cyBpcyBzaGlmdGVkIG9mZiBvZiB0aGUgbGlzdC5cbiAgICovXG4gIHRhYk91dDogU3ViamVjdDx2b2lkPiA9IG5ldyBTdWJqZWN0PHZvaWQ+KCk7XG5cbiAgLyoqIFN0cmVhbSB0aGF0IGVtaXRzIHdoZW5ldmVyIHRoZSBhY3RpdmUgaXRlbSBvZiB0aGUgbGlzdCBtYW5hZ2VyIGNoYW5nZXMuICovXG4gIGNoYW5nZSA9IG5ldyBTdWJqZWN0PG51bWJlcj4oKTtcblxuICAvKipcbiAgICogU2V0cyB0aGUgcHJlZGljYXRlIGZ1bmN0aW9uIHRoYXQgZGV0ZXJtaW5lcyB3aGljaCBpdGVtcyBzaG91bGQgYmUgc2tpcHBlZCBieSB0aGVcbiAgICogbGlzdCBrZXkgbWFuYWdlci5cbiAgICogQHBhcmFtIHByZWRpY2F0ZSBGdW5jdGlvbiB0aGF0IGRldGVybWluZXMgd2hldGhlciB0aGUgZ2l2ZW4gaXRlbSBzaG91bGQgYmUgc2tpcHBlZC5cbiAgICovXG4gIHNraXBQcmVkaWNhdGUocHJlZGljYXRlOiAoaXRlbTogVCkgPT4gYm9vbGVhbik6IHRoaXMge1xuICAgIHRoaXMuX3NraXBQcmVkaWNhdGVGbiA9IHByZWRpY2F0ZTtcbiAgICByZXR1cm4gdGhpcztcbiAgfVxuXG4gIC8qKlxuICAgKiBDb25maWd1cmVzIHdyYXBwaW5nIG1vZGUsIHdoaWNoIGRldGVybWluZXMgd2hldGhlciB0aGUgYWN0aXZlIGl0ZW0gd2lsbCB3cmFwIHRvXG4gICAqIHRoZSBvdGhlciBlbmQgb2YgbGlzdCB3aGVuIHRoZXJlIGFyZSBubyBtb3JlIGl0ZW1zIGluIHRoZSBnaXZlbiBkaXJlY3Rpb24uXG4gICAqIEBwYXJhbSBzaG91bGRXcmFwIFdoZXRoZXIgdGhlIGxpc3Qgc2hvdWxkIHdyYXAgd2hlbiByZWFjaGluZyB0aGUgZW5kLlxuICAgKi9cbiAgd2l0aFdyYXAoc2hvdWxkV3JhcCA9IHRydWUpOiB0aGlzIHtcbiAgICB0aGlzLl93cmFwID0gc2hvdWxkV3JhcDtcbiAgICByZXR1cm4gdGhpcztcbiAgfVxuXG4gIC8qKlxuICAgKiBDb25maWd1cmVzIHdoZXRoZXIgdGhlIGtleSBtYW5hZ2VyIHNob3VsZCBiZSBhYmxlIHRvIG1vdmUgdGhlIHNlbGVjdGlvbiB2ZXJ0aWNhbGx5LlxuICAgKiBAcGFyYW0gZW5hYmxlZCBXaGV0aGVyIHZlcnRpY2FsIHNlbGVjdGlvbiBzaG91bGQgYmUgZW5hYmxlZC5cbiAgICovXG4gIHdpdGhWZXJ0aWNhbE9yaWVudGF0aW9uKGVuYWJsZWQ6IGJvb2xlYW4gPSB0cnVlKTogdGhpcyB7XG4gICAgdGhpcy5fdmVydGljYWwgPSBlbmFibGVkO1xuICAgIHJldHVybiB0aGlzO1xuICB9XG5cbiAgLyoqXG4gICAqIENvbmZpZ3VyZXMgdGhlIGtleSBtYW5hZ2VyIHRvIG1vdmUgdGhlIHNlbGVjdGlvbiBob3Jpem9udGFsbHkuXG4gICAqIFBhc3NpbmcgaW4gYG51bGxgIHdpbGwgZGlzYWJsZSBob3Jpem9udGFsIG1vdmVtZW50LlxuICAgKiBAcGFyYW0gZGlyZWN0aW9uIERpcmVjdGlvbiBpbiB3aGljaCB0aGUgc2VsZWN0aW9uIGNhbiBiZSBtb3ZlZC5cbiAgICovXG4gIHdpdGhIb3Jpem9udGFsT3JpZW50YXRpb24oZGlyZWN0aW9uOiAnbHRyJyB8ICdydGwnIHwgbnVsbCk6IHRoaXMge1xuICAgIHRoaXMuX2hvcml6b250YWwgPSBkaXJlY3Rpb247XG4gICAgcmV0dXJuIHRoaXM7XG4gIH1cblxuICAvKipcbiAgICogTW9kaWZpZXIga2V5cyB3aGljaCBhcmUgYWxsb3dlZCB0byBiZSBoZWxkIGRvd24gYW5kIHdob3NlIGRlZmF1bHQgYWN0aW9ucyB3aWxsIGJlIHByZXZlbnRlZFxuICAgKiBhcyB0aGUgdXNlciBpcyBwcmVzc2luZyB0aGUgYXJyb3cga2V5cy4gRGVmYXVsdHMgdG8gbm90IGFsbG93aW5nIGFueSBtb2RpZmllciBrZXlzLlxuICAgKi9cbiAgd2l0aEFsbG93ZWRNb2RpZmllcktleXMoa2V5czogTGlzdEtleU1hbmFnZXJNb2RpZmllcktleVtdKTogdGhpcyB7XG4gICAgdGhpcy5fYWxsb3dlZE1vZGlmaWVyS2V5cyA9IGtleXM7XG4gICAgcmV0dXJuIHRoaXM7XG4gIH1cblxuICAvKipcbiAgICogVHVybnMgb24gdHlwZWFoZWFkIG1vZGUgd2hpY2ggYWxsb3dzIHVzZXJzIHRvIHNldCB0aGUgYWN0aXZlIGl0ZW0gYnkgdHlwaW5nLlxuICAgKiBAcGFyYW0gZGVib3VuY2VJbnRlcnZhbCBUaW1lIHRvIHdhaXQgYWZ0ZXIgdGhlIGxhc3Qga2V5c3Ryb2tlIGJlZm9yZSBzZXR0aW5nIHRoZSBhY3RpdmUgaXRlbS5cbiAgICovXG4gIHdpdGhUeXBlQWhlYWQoZGVib3VuY2VJbnRlcnZhbDogbnVtYmVyID0gMjAwKTogdGhpcyB7XG4gICAgaWYgKCh0eXBlb2YgbmdEZXZNb2RlID09PSAndW5kZWZpbmVkJyB8fCBuZ0Rldk1vZGUpICYmICh0aGlzLl9pdGVtcy5sZW5ndGggJiZcbiAgICAgICAgdGhpcy5faXRlbXMuc29tZShpdGVtID0+IHR5cGVvZiBpdGVtLmdldExhYmVsICE9PSAnZnVuY3Rpb24nKSkpIHtcbiAgICAgIHRocm93IEVycm9yKCdMaXN0S2V5TWFuYWdlciBpdGVtcyBpbiB0eXBlYWhlYWQgbW9kZSBtdXN0IGltcGxlbWVudCB0aGUgYGdldExhYmVsYCBtZXRob2QuJyk7XG4gICAgfVxuXG4gICAgdGhpcy5fdHlwZWFoZWFkU3Vic2NyaXB0aW9uLnVuc3Vic2NyaWJlKCk7XG5cbiAgICAvLyBEZWJvdW5jZSB0aGUgcHJlc3NlcyBvZiBub24tbmF2aWdhdGlvbmFsIGtleXMsIGNvbGxlY3QgdGhlIG9uZXMgdGhhdCBjb3JyZXNwb25kIHRvIGxldHRlcnNcbiAgICAvLyBhbmQgY29udmVydCB0aG9zZSBsZXR0ZXJzIGJhY2sgaW50byBhIHN0cmluZy4gQWZ0ZXJ3YXJkcyBmaW5kIHRoZSBmaXJzdCBpdGVtIHRoYXQgc3RhcnRzXG4gICAgLy8gd2l0aCB0aGF0IHN0cmluZyBhbmQgc2VsZWN0IGl0LlxuICAgIHRoaXMuX3R5cGVhaGVhZFN1YnNjcmlwdGlvbiA9IHRoaXMuX2xldHRlcktleVN0cmVhbS5waXBlKFxuICAgICAgdGFwKGxldHRlciA9PiB0aGlzLl9wcmVzc2VkTGV0dGVycy5wdXNoKGxldHRlcikpLFxuICAgICAgZGVib3VuY2VUaW1lKGRlYm91bmNlSW50ZXJ2YWwpLFxuICAgICAgZmlsdGVyKCgpID0+IHRoaXMuX3ByZXNzZWRMZXR0ZXJzLmxlbmd0aCA+IDApLFxuICAgICAgbWFwKCgpID0+IHRoaXMuX3ByZXNzZWRMZXR0ZXJzLmpvaW4oJycpKVxuICAgICkuc3Vic2NyaWJlKGlucHV0U3RyaW5nID0+IHtcbiAgICAgIGNvbnN0IGl0ZW1zID0gdGhpcy5fZ2V0SXRlbXNBcnJheSgpO1xuXG4gICAgICAvLyBTdGFydCBhdCAxIGJlY2F1c2Ugd2Ugd2FudCB0byBzdGFydCBzZWFyY2hpbmcgYXQgdGhlIGl0ZW0gaW1tZWRpYXRlbHlcbiAgICAgIC8vIGZvbGxvd2luZyB0aGUgY3VycmVudCBhY3RpdmUgaXRlbS5cbiAgICAgIGZvciAobGV0IGkgPSAxOyBpIDwgaXRlbXMubGVuZ3RoICsgMTsgaSsrKSB7XG4gICAgICAgIGNvbnN0IGluZGV4ID0gKHRoaXMuX2FjdGl2ZUl0ZW1JbmRleCArIGkpICUgaXRlbXMubGVuZ3RoO1xuICAgICAgICBjb25zdCBpdGVtID0gaXRlbXNbaW5kZXhdO1xuXG4gICAgICAgIGlmICghdGhpcy5fc2tpcFByZWRpY2F0ZUZuKGl0ZW0pICYmXG4gICAgICAgICAgICBpdGVtLmdldExhYmVsISgpLnRvVXBwZXJDYXNlKCkudHJpbSgpLmluZGV4T2YoaW5wdXRTdHJpbmcpID09PSAwKSB7XG5cbiAgICAgICAgICB0aGlzLnNldEFjdGl2ZUl0ZW0oaW5kZXgpO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIHRoaXMuX3ByZXNzZWRMZXR0ZXJzID0gW107XG4gICAgfSk7XG5cbiAgICByZXR1cm4gdGhpcztcbiAgfVxuXG4gIC8qKlxuICAgKiBDb25maWd1cmVzIHRoZSBrZXkgbWFuYWdlciB0byBhY3RpdmF0ZSB0aGUgZmlyc3QgYW5kIGxhc3QgaXRlbXNcbiAgICogcmVzcGVjdGl2ZWx5IHdoZW4gdGhlIEhvbWUgb3IgRW5kIGtleSBpcyBwcmVzc2VkLlxuICAgKiBAcGFyYW0gZW5hYmxlZCBXaGV0aGVyIHByZXNzaW5nIHRoZSBIb21lIG9yIEVuZCBrZXkgYWN0aXZhdGVzIHRoZSBmaXJzdC9sYXN0IGl0ZW0uXG4gICAqL1xuICB3aXRoSG9tZUFuZEVuZChlbmFibGVkOiBib29sZWFuID0gdHJ1ZSk6IHRoaXMge1xuICAgIHRoaXMuX2hvbWVBbmRFbmQgPSBlbmFibGVkO1xuICAgIHJldHVybiB0aGlzO1xuICB9XG5cbiAgLyoqXG4gICAqIFNldHMgdGhlIGFjdGl2ZSBpdGVtIHRvIHRoZSBpdGVtIGF0IHRoZSBpbmRleCBzcGVjaWZpZWQuXG4gICAqIEBwYXJhbSBpbmRleCBUaGUgaW5kZXggb2YgdGhlIGl0ZW0gdG8gYmUgc2V0IGFzIGFjdGl2ZS5cbiAgICovXG4gIHNldEFjdGl2ZUl0ZW0oaW5kZXg6IG51bWJlcik6IHZvaWQ7XG5cbiAgLyoqXG4gICAqIFNldHMgdGhlIGFjdGl2ZSBpdGVtIHRvIHRoZSBzcGVjaWZpZWQgaXRlbS5cbiAgICogQHBhcmFtIGl0ZW0gVGhlIGl0ZW0gdG8gYmUgc2V0IGFzIGFjdGl2ZS5cbiAgICovXG4gIHNldEFjdGl2ZUl0ZW0oaXRlbTogVCk6IHZvaWQ7XG5cbiAgc2V0QWN0aXZlSXRlbShpdGVtOiBhbnkpOiB2b2lkIHtcbiAgICBjb25zdCBwcmV2aW91c0FjdGl2ZUl0ZW0gPSB0aGlzLl9hY3RpdmVJdGVtO1xuXG4gICAgdGhpcy51cGRhdGVBY3RpdmVJdGVtKGl0ZW0pO1xuXG4gICAgaWYgKHRoaXMuX2FjdGl2ZUl0ZW0gIT09IHByZXZpb3VzQWN0aXZlSXRlbSkge1xuICAgICAgdGhpcy5jaGFuZ2UubmV4dCh0aGlzLl9hY3RpdmVJdGVtSW5kZXgpO1xuICAgIH1cbiAgfVxuXG4gIC8qKlxuICAgKiBTZXRzIHRoZSBhY3RpdmUgaXRlbSBkZXBlbmRpbmcgb24gdGhlIGtleSBldmVudCBwYXNzZWQgaW4uXG4gICAqIEBwYXJhbSBldmVudCBLZXlib2FyZCBldmVudCB0byBiZSB1c2VkIGZvciBkZXRlcm1pbmluZyB3aGljaCBlbGVtZW50IHNob3VsZCBiZSBhY3RpdmUuXG4gICAqL1xuICBvbktleWRvd24oZXZlbnQ6IEtleWJvYXJkRXZlbnQpOiB2b2lkIHtcbiAgICBjb25zdCBrZXlDb2RlID0gZXZlbnQua2V5Q29kZTtcbiAgICBjb25zdCBtb2RpZmllcnM6IExpc3RLZXlNYW5hZ2VyTW9kaWZpZXJLZXlbXSA9IFsnYWx0S2V5JywgJ2N0cmxLZXknLCAnbWV0YUtleScsICdzaGlmdEtleSddO1xuICAgIGNvbnN0IGlzTW9kaWZpZXJBbGxvd2VkID0gbW9kaWZpZXJzLmV2ZXJ5KG1vZGlmaWVyID0+IHtcbiAgICAgIHJldHVybiAhZXZlbnRbbW9kaWZpZXJdIHx8IHRoaXMuX2FsbG93ZWRNb2RpZmllcktleXMuaW5kZXhPZihtb2RpZmllcikgPiAtMTtcbiAgICB9KTtcblxuICAgIHN3aXRjaCAoa2V5Q29kZSkge1xuICAgICAgY2FzZSBUQUI6XG4gICAgICAgIHRoaXMudGFiT3V0Lm5leHQoKTtcbiAgICAgICAgcmV0dXJuO1xuXG4gICAgICBjYXNlIERPV05fQVJST1c6XG4gICAgICAgIGlmICh0aGlzLl92ZXJ0aWNhbCAmJiBpc01vZGlmaWVyQWxsb3dlZCkge1xuICAgICAgICAgIHRoaXMuc2V0TmV4dEl0ZW1BY3RpdmUoKTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cblxuICAgICAgY2FzZSBVUF9BUlJPVzpcbiAgICAgICAgaWYgKHRoaXMuX3ZlcnRpY2FsICYmIGlzTW9kaWZpZXJBbGxvd2VkKSB7XG4gICAgICAgICAgdGhpcy5zZXRQcmV2aW91c0l0ZW1BY3RpdmUoKTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICByZXR1cm47XG4gICAgICAgIH1cblxuICAgICAgY2FzZSBSSUdIVF9BUlJPVzpcbiAgICAgICAgaWYgKHRoaXMuX2hvcml6b250YWwgJiYgaXNNb2RpZmllckFsbG93ZWQpIHtcbiAgICAgICAgICB0aGlzLl9ob3Jpem9udGFsID09PSAncnRsJyA/IHRoaXMuc2V0UHJldmlvdXNJdGVtQWN0aXZlKCkgOiB0aGlzLnNldE5leHRJdGVtQWN0aXZlKCk7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9XG5cbiAgICAgIGNhc2UgTEVGVF9BUlJPVzpcbiAgICAgICAgaWYgKHRoaXMuX2hvcml6b250YWwgJiYgaXNNb2RpZmllckFsbG93ZWQpIHtcbiAgICAgICAgICB0aGlzLl9ob3Jpem9udGFsID09PSAncnRsJyA/IHRoaXMuc2V0TmV4dEl0ZW1BY3RpdmUoKSA6IHRoaXMuc2V0UHJldmlvdXNJdGVtQWN0aXZlKCk7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9XG5cbiAgICAgIGNhc2UgSE9NRTpcbiAgICAgICAgaWYgKHRoaXMuX2hvbWVBbmRFbmQgJiYgaXNNb2RpZmllckFsbG93ZWQpIHtcbiAgICAgICAgICB0aGlzLnNldEZpcnN0SXRlbUFjdGl2ZSgpO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIHJldHVybjtcbiAgICAgICAgfVxuXG4gICAgICBjYXNlIEVORDpcbiAgICAgICAgaWYgKHRoaXMuX2hvbWVBbmRFbmQgJiYgaXNNb2RpZmllckFsbG93ZWQpIHtcbiAgICAgICAgICB0aGlzLnNldExhc3RJdGVtQWN0aXZlKCk7XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgcmV0dXJuO1xuICAgICAgICB9XG5cbiAgICAgIGRlZmF1bHQ6XG4gICAgICBpZiAoaXNNb2RpZmllckFsbG93ZWQgfHwgaGFzTW9kaWZpZXJLZXkoZXZlbnQsICdzaGlmdEtleScpKSB7XG4gICAgICAgICAgLy8gQXR0ZW1wdCB0byB1c2UgdGhlIGBldmVudC5rZXlgIHdoaWNoIGFsc28gbWFwcyBpdCB0byB0aGUgdXNlcidzIGtleWJvYXJkIGxhbmd1YWdlLFxuICAgICAgICAgIC8vIG90aGVyd2lzZSBmYWxsIGJhY2sgdG8gcmVzb2x2aW5nIGFscGhhbnVtZXJpYyBjaGFyYWN0ZXJzIHZpYSB0aGUga2V5Q29kZS5cbiAgICAgICAgICBpZiAoZXZlbnQua2V5ICYmIGV2ZW50LmtleS5sZW5ndGggPT09IDEpIHtcbiAgICAgICAgICAgIHRoaXMuX2xldHRlcktleVN0cmVhbS5uZXh0KGV2ZW50LmtleS50b0xvY2FsZVVwcGVyQ2FzZSgpKTtcbiAgICAgICAgICB9IGVsc2UgaWYgKChrZXlDb2RlID49IEEgJiYga2V5Q29kZSA8PSBaKSB8fCAoa2V5Q29kZSA+PSBaRVJPICYmIGtleUNvZGUgPD0gTklORSkpIHtcbiAgICAgICAgICAgIHRoaXMuX2xldHRlcktleVN0cmVhbS5uZXh0KFN0cmluZy5mcm9tQ2hhckNvZGUoa2V5Q29kZSkpO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuXG4gICAgICAgIC8vIE5vdGUgdGhhdCB3ZSByZXR1cm4gaGVyZSwgaW4gb3JkZXIgdG8gYXZvaWQgcHJldmVudGluZ1xuICAgICAgICAvLyB0aGUgZGVmYXVsdCBhY3Rpb24gb2Ygbm9uLW5hdmlnYXRpb25hbCBrZXlzLlxuICAgICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgdGhpcy5fcHJlc3NlZExldHRlcnMgPSBbXTtcbiAgICBldmVudC5wcmV2ZW50RGVmYXVsdCgpO1xuICB9XG5cbiAgLyoqIEluZGV4IG9mIHRoZSBjdXJyZW50bHkgYWN0aXZlIGl0ZW0uICovXG4gIGdldCBhY3RpdmVJdGVtSW5kZXgoKTogbnVtYmVyIHwgbnVsbCB7XG4gICAgcmV0dXJuIHRoaXMuX2FjdGl2ZUl0ZW1JbmRleDtcbiAgfVxuXG4gIC8qKiBUaGUgYWN0aXZlIGl0ZW0uICovXG4gIGdldCBhY3RpdmVJdGVtKCk6IFQgfCBudWxsIHtcbiAgICByZXR1cm4gdGhpcy5fYWN0aXZlSXRlbTtcbiAgfVxuXG4gIC8qKiBHZXRzIHdoZXRoZXIgdGhlIHVzZXIgaXMgY3VycmVudGx5IHR5cGluZyBpbnRvIHRoZSBtYW5hZ2VyIHVzaW5nIHRoZSB0eXBlYWhlYWQgZmVhdHVyZS4gKi9cbiAgaXNUeXBpbmcoKTogYm9vbGVhbiB7XG4gICAgcmV0dXJuIHRoaXMuX3ByZXNzZWRMZXR0ZXJzLmxlbmd0aCA+IDA7XG4gIH1cblxuICAvKiogU2V0cyB0aGUgYWN0aXZlIGl0ZW0gdG8gdGhlIGZpcnN0IGVuYWJsZWQgaXRlbSBpbiB0aGUgbGlzdC4gKi9cbiAgc2V0Rmlyc3RJdGVtQWN0aXZlKCk6IHZvaWQge1xuICAgIHRoaXMuX3NldEFjdGl2ZUl0ZW1CeUluZGV4KDAsIDEpO1xuICB9XG5cbiAgLyoqIFNldHMgdGhlIGFjdGl2ZSBpdGVtIHRvIHRoZSBsYXN0IGVuYWJsZWQgaXRlbSBpbiB0aGUgbGlzdC4gKi9cbiAgc2V0TGFzdEl0ZW1BY3RpdmUoKTogdm9pZCB7XG4gICAgdGhpcy5fc2V0QWN0aXZlSXRlbUJ5SW5kZXgodGhpcy5faXRlbXMubGVuZ3RoIC0gMSwgLTEpO1xuICB9XG5cbiAgLyoqIFNldHMgdGhlIGFjdGl2ZSBpdGVtIHRvIHRoZSBuZXh0IGVuYWJsZWQgaXRlbSBpbiB0aGUgbGlzdC4gKi9cbiAgc2V0TmV4dEl0ZW1BY3RpdmUoKTogdm9pZCB7XG4gICAgdGhpcy5fYWN0aXZlSXRlbUluZGV4IDwgMCA/IHRoaXMuc2V0Rmlyc3RJdGVtQWN0aXZlKCkgOiB0aGlzLl9zZXRBY3RpdmVJdGVtQnlEZWx0YSgxKTtcbiAgfVxuXG4gIC8qKiBTZXRzIHRoZSBhY3RpdmUgaXRlbSB0byBhIHByZXZpb3VzIGVuYWJsZWQgaXRlbSBpbiB0aGUgbGlzdC4gKi9cbiAgc2V0UHJldmlvdXNJdGVtQWN0aXZlKCk6IHZvaWQge1xuICAgIHRoaXMuX2FjdGl2ZUl0ZW1JbmRleCA8IDAgJiYgdGhpcy5fd3JhcCA/IHRoaXMuc2V0TGFzdEl0ZW1BY3RpdmUoKVxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA6IHRoaXMuX3NldEFjdGl2ZUl0ZW1CeURlbHRhKC0xKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBBbGxvd3Mgc2V0dGluZyB0aGUgYWN0aXZlIHdpdGhvdXQgYW55IG90aGVyIGVmZmVjdHMuXG4gICAqIEBwYXJhbSBpbmRleCBJbmRleCBvZiB0aGUgaXRlbSB0byBiZSBzZXQgYXMgYWN0aXZlLlxuICAgKi9cbiAgdXBkYXRlQWN0aXZlSXRlbShpbmRleDogbnVtYmVyKTogdm9pZDtcblxuICAvKipcbiAgICogQWxsb3dzIHNldHRpbmcgdGhlIGFjdGl2ZSBpdGVtIHdpdGhvdXQgYW55IG90aGVyIGVmZmVjdHMuXG4gICAqIEBwYXJhbSBpdGVtIEl0ZW0gdG8gYmUgc2V0IGFzIGFjdGl2ZS5cbiAgICovXG4gIHVwZGF0ZUFjdGl2ZUl0ZW0oaXRlbTogVCk6IHZvaWQ7XG5cbiAgdXBkYXRlQWN0aXZlSXRlbShpdGVtOiBhbnkpOiB2b2lkIHtcbiAgICBjb25zdCBpdGVtQXJyYXkgPSB0aGlzLl9nZXRJdGVtc0FycmF5KCk7XG4gICAgY29uc3QgaW5kZXggPSB0eXBlb2YgaXRlbSA9PT0gJ251bWJlcicgPyBpdGVtIDogaXRlbUFycmF5LmluZGV4T2YoaXRlbSk7XG4gICAgY29uc3QgYWN0aXZlSXRlbSA9IGl0ZW1BcnJheVtpbmRleF07XG5cbiAgICAvLyBFeHBsaWNpdGx5IGNoZWNrIGZvciBgbnVsbGAgYW5kIGB1bmRlZmluZWRgIGJlY2F1c2Ugb3RoZXIgZmFsc3kgdmFsdWVzIGFyZSB2YWxpZC5cbiAgICB0aGlzLl9hY3RpdmVJdGVtID0gYWN0aXZlSXRlbSA9PSBudWxsID8gbnVsbCA6IGFjdGl2ZUl0ZW07XG4gICAgdGhpcy5fYWN0aXZlSXRlbUluZGV4ID0gaW5kZXg7XG4gIH1cblxuICAvKipcbiAgICogVGhpcyBtZXRob2Qgc2V0cyB0aGUgYWN0aXZlIGl0ZW0sIGdpdmVuIGEgbGlzdCBvZiBpdGVtcyBhbmQgdGhlIGRlbHRhIGJldHdlZW4gdGhlXG4gICAqIGN1cnJlbnRseSBhY3RpdmUgaXRlbSBhbmQgdGhlIG5ldyBhY3RpdmUgaXRlbS4gSXQgd2lsbCBjYWxjdWxhdGUgZGlmZmVyZW50bHlcbiAgICogZGVwZW5kaW5nIG9uIHdoZXRoZXIgd3JhcCBtb2RlIGlzIHR1cm5lZCBvbi5cbiAgICovXG4gIHByaXZhdGUgX3NldEFjdGl2ZUl0ZW1CeURlbHRhKGRlbHRhOiAtMSB8IDEpOiB2b2lkIHtcbiAgICB0aGlzLl93cmFwID8gdGhpcy5fc2V0QWN0aXZlSW5XcmFwTW9kZShkZWx0YSkgOiB0aGlzLl9zZXRBY3RpdmVJbkRlZmF1bHRNb2RlKGRlbHRhKTtcbiAgfVxuXG4gIC8qKlxuICAgKiBTZXRzIHRoZSBhY3RpdmUgaXRlbSBwcm9wZXJseSBnaXZlbiBcIndyYXBcIiBtb2RlLiBJbiBvdGhlciB3b3JkcywgaXQgd2lsbCBjb250aW51ZSB0byBtb3ZlXG4gICAqIGRvd24gdGhlIGxpc3QgdW50aWwgaXQgZmluZHMgYW4gaXRlbSB0aGF0IGlzIG5vdCBkaXNhYmxlZCwgYW5kIGl0IHdpbGwgd3JhcCBpZiBpdFxuICAgKiBlbmNvdW50ZXJzIGVpdGhlciBlbmQgb2YgdGhlIGxpc3QuXG4gICAqL1xuICBwcml2YXRlIF9zZXRBY3RpdmVJbldyYXBNb2RlKGRlbHRhOiAtMSB8IDEpOiB2b2lkIHtcbiAgICBjb25zdCBpdGVtcyA9IHRoaXMuX2dldEl0ZW1zQXJyYXkoKTtcblxuICAgIGZvciAobGV0IGkgPSAxOyBpIDw9IGl0ZW1zLmxlbmd0aDsgaSsrKSB7XG4gICAgICBjb25zdCBpbmRleCA9ICh0aGlzLl9hY3RpdmVJdGVtSW5kZXggKyAoZGVsdGEgKiBpKSArIGl0ZW1zLmxlbmd0aCkgJSBpdGVtcy5sZW5ndGg7XG4gICAgICBjb25zdCBpdGVtID0gaXRlbXNbaW5kZXhdO1xuXG4gICAgICBpZiAoIXRoaXMuX3NraXBQcmVkaWNhdGVGbihpdGVtKSkge1xuICAgICAgICB0aGlzLnNldEFjdGl2ZUl0ZW0oaW5kZXgpO1xuICAgICAgICByZXR1cm47XG4gICAgICB9XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIFNldHMgdGhlIGFjdGl2ZSBpdGVtIHByb3Blcmx5IGdpdmVuIHRoZSBkZWZhdWx0IG1vZGUuIEluIG90aGVyIHdvcmRzLCBpdCB3aWxsXG4gICAqIGNvbnRpbnVlIHRvIG1vdmUgZG93biB0aGUgbGlzdCB1bnRpbCBpdCBmaW5kcyBhbiBpdGVtIHRoYXQgaXMgbm90IGRpc2FibGVkLiBJZlxuICAgKiBpdCBlbmNvdW50ZXJzIGVpdGhlciBlbmQgb2YgdGhlIGxpc3QsIGl0IHdpbGwgc3RvcCBhbmQgbm90IHdyYXAuXG4gICAqL1xuICBwcml2YXRlIF9zZXRBY3RpdmVJbkRlZmF1bHRNb2RlKGRlbHRhOiAtMSB8IDEpOiB2b2lkIHtcbiAgICB0aGlzLl9zZXRBY3RpdmVJdGVtQnlJbmRleCh0aGlzLl9hY3RpdmVJdGVtSW5kZXggKyBkZWx0YSwgZGVsdGEpO1xuICB9XG5cbiAgLyoqXG4gICAqIFNldHMgdGhlIGFjdGl2ZSBpdGVtIHRvIHRoZSBmaXJzdCBlbmFibGVkIGl0ZW0gc3RhcnRpbmcgYXQgdGhlIGluZGV4IHNwZWNpZmllZC4gSWYgdGhlXG4gICAqIGl0ZW0gaXMgZGlzYWJsZWQsIGl0IHdpbGwgbW92ZSBpbiB0aGUgZmFsbGJhY2tEZWx0YSBkaXJlY3Rpb24gdW50aWwgaXQgZWl0aGVyXG4gICAqIGZpbmRzIGFuIGVuYWJsZWQgaXRlbSBvciBlbmNvdW50ZXJzIHRoZSBlbmQgb2YgdGhlIGxpc3QuXG4gICAqL1xuICBwcml2YXRlIF9zZXRBY3RpdmVJdGVtQnlJbmRleChpbmRleDogbnVtYmVyLCBmYWxsYmFja0RlbHRhOiAtMSB8IDEpOiB2b2lkIHtcbiAgICBjb25zdCBpdGVtcyA9IHRoaXMuX2dldEl0ZW1zQXJyYXkoKTtcblxuICAgIGlmICghaXRlbXNbaW5kZXhdKSB7XG4gICAgICByZXR1cm47XG4gICAgfVxuXG4gICAgd2hpbGUgKHRoaXMuX3NraXBQcmVkaWNhdGVGbihpdGVtc1tpbmRleF0pKSB7XG4gICAgICBpbmRleCArPSBmYWxsYmFja0RlbHRhO1xuXG4gICAgICBpZiAoIWl0ZW1zW2luZGV4XSkge1xuICAgICAgICByZXR1cm47XG4gICAgICB9XG4gICAgfVxuXG4gICAgdGhpcy5zZXRBY3RpdmVJdGVtKGluZGV4KTtcbiAgfVxuXG4gIC8qKiBSZXR1cm5zIHRoZSBpdGVtcyBhcyBhbiBhcnJheS4gKi9cbiAgcHJpdmF0ZSBfZ2V0SXRlbXNBcnJheSgpOiBUW10ge1xuICAgIHJldHVybiB0aGlzLl9pdGVtcyBpbnN0YW5jZW9mIFF1ZXJ5TGlzdCA/IHRoaXMuX2l0ZW1zLnRvQXJyYXkoKSA6IHRoaXMuX2l0ZW1zO1xuICB9XG59XG4iXX0=