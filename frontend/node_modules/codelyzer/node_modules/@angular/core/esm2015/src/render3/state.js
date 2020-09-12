/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/state.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { assertDefined } from '../util/assert';
import { assertLViewOrUndefined } from './assert';
import { CONTEXT, DECLARATION_VIEW, TVIEW } from './interfaces/view';
/**
 *
 * @record
 */
function LFrame() { }
if (false) {
    /**
     * Parent LFrame.
     *
     * This is needed when `leaveView` is called to restore the previous state.
     * @type {?}
     */
    LFrame.prototype.parent;
    /**
     * Child LFrame.
     *
     * This is used to cache existing LFrames to relieve the memory pressure.
     * @type {?}
     */
    LFrame.prototype.child;
    /**
     * State of the current view being processed.
     *
     * An array of nodes (text, element, container, etc), pipes, their bindings, and
     * any local variables that need to be stored between invocations.
     * @type {?}
     */
    LFrame.prototype.lView;
    /**
     * Current `TView` associated with the `LFrame.lView`.
     *
     * One can get `TView` from `lFrame[TVIEW]` however because it is so common it makes sense to
     * store it in `LFrame` for perf reasons.
     * @type {?}
     */
    LFrame.prototype.tView;
    /**
     * Used to set the parent property when nodes are created and track query results.
     *
     * This is used in conjunction with `isParent`.
     * @type {?}
     */
    LFrame.prototype.previousOrParentTNode;
    /**
     * If `isParent` is:
     *  - `true`: then `previousOrParentTNode` points to a parent node.
     *  - `false`: then `previousOrParentTNode` points to previous node (sibling).
     * @type {?}
     */
    LFrame.prototype.isParent;
    /**
     * Index of currently selected element in LView.
     *
     * Used by binding instructions. Updated as part of advance instruction.
     * @type {?}
     */
    LFrame.prototype.selectedIndex;
    /**
     * Current pointer to the binding index.
     * @type {?}
     */
    LFrame.prototype.bindingIndex;
    /**
     * The last viewData retrieved by nextContext().
     * Allows building nextContext() and reference() calls.
     *
     * e.g. const inner = x().$implicit; const outer = x().$implicit;
     * @type {?}
     */
    LFrame.prototype.contextLView;
    /**
     * Store the element depth count. This is used to identify the root elements of the template
     * so that we can then attach patch data `LView` to only those elements. We know that those
     * are the only places where the patch data could change, this way we will save on number
     * of places where tha patching occurs.
     * @type {?}
     */
    LFrame.prototype.elementDepthCount;
    /**
     * Current namespace to be used when creating elements
     * @type {?}
     */
    LFrame.prototype.currentNamespace;
    /**
     * Current sanitizer
     * @type {?}
     */
    LFrame.prototype.currentSanitizer;
    /**
     * The root index from which pure function instructions should calculate their binding
     * indices. In component views, this is TView.bindingStartIndex. In a host binding
     * context, this is the TView.expandoStartIndex + any dirs/hostVars before the given dir.
     * @type {?}
     */
    LFrame.prototype.bindingRootIndex;
    /**
     * Current index of a View or Content Query which needs to be processed next.
     * We iterate over the list of Queries and increment current query index at every step.
     * @type {?}
     */
    LFrame.prototype.currentQueryIndex;
    /**
     * When host binding is executing this points to the directive index.
     * `TView.data[currentDirectiveIndex]` is `DirectiveDef`
     * `LView[currentDirectiveIndex]` is directive instance.
     * @type {?}
     */
    LFrame.prototype.currentDirectiveIndex;
}
/**
 * All implicit instruction state is stored here.
 *
 * It is useful to have a single object where all of the state is stored as a mental model
 * (rather it being spread across many different variables.)
 *
 * PERF NOTE: Turns out that writing to a true global variable is slower than
 * having an intermediate object with properties.
 * @record
 */
function InstructionState() { }
if (false) {
    /**
     * Current `LFrame`
     *
     * `null` if we have not called `enterView`
     * @type {?}
     */
    InstructionState.prototype.lFrame;
    /**
     * Stores whether directives should be matched to elements.
     *
     * When template contains `ngNonBindable` then we need to prevent the runtime from matching
     * directives on children of that element.
     *
     * Example:
     * ```
     * <my-comp my-directive>
     *   Should match component / directive.
     * </my-comp>
     * <div ngNonBindable>
     *   <my-comp my-directive>
     *     Should not match component / directive because we are in ngNonBindable.
     *   </my-comp>
     * </div>
     * ```
     * @type {?}
     */
    InstructionState.prototype.bindingsEnabled;
    /**
     * In this mode, any changes in bindings will throw an ExpressionChangedAfterChecked error.
     *
     * Necessary to support ChangeDetectorRef.checkNoChanges().
     * @type {?}
     */
    InstructionState.prototype.checkNoChangesMode;
}
/** @type {?} */
export const instructionState = {
    lFrame: createLFrame(null),
    bindingsEnabled: true,
    checkNoChangesMode: false,
};
/**
 * @return {?}
 */
export function getElementDepthCount() {
    return instructionState.lFrame.elementDepthCount;
}
/**
 * @return {?}
 */
export function increaseElementDepthCount() {
    instructionState.lFrame.elementDepthCount++;
}
/**
 * @return {?}
 */
export function decreaseElementDepthCount() {
    instructionState.lFrame.elementDepthCount--;
}
/**
 * @return {?}
 */
export function getBindingsEnabled() {
    return instructionState.bindingsEnabled;
}
/**
 * Enables directive matching on elements.
 *
 *  * Example:
 * ```
 * <my-comp my-directive>
 *   Should match component / directive.
 * </my-comp>
 * <div ngNonBindable>
 *   <!-- ɵɵdisableBindings() -->
 *   <my-comp my-directive>
 *     Should not match component / directive because we are in ngNonBindable.
 *   </my-comp>
 *   <!-- ɵɵenableBindings() -->
 * </div>
 * ```
 *
 * \@codeGenApi
 * @return {?}
 */
export function ɵɵenableBindings() {
    instructionState.bindingsEnabled = true;
}
/**
 * Disables directive matching on element.
 *
 *  * Example:
 * ```
 * <my-comp my-directive>
 *   Should match component / directive.
 * </my-comp>
 * <div ngNonBindable>
 *   <!-- ɵɵdisableBindings() -->
 *   <my-comp my-directive>
 *     Should not match component / directive because we are in ngNonBindable.
 *   </my-comp>
 *   <!-- ɵɵenableBindings() -->
 * </div>
 * ```
 *
 * \@codeGenApi
 * @return {?}
 */
export function ɵɵdisableBindings() {
    instructionState.bindingsEnabled = false;
}
/**
 * Return the current `LView`.
 * @return {?}
 */
export function getLView() {
    return instructionState.lFrame.lView;
}
/**
 * Return the current `TView`.
 * @return {?}
 */
export function getTView() {
    return instructionState.lFrame.tView;
}
/**
 * Restores `contextViewData` to the given OpaqueViewState instance.
 *
 * Used in conjunction with the getCurrentView() instruction to save a snapshot
 * of the current view and restore it when listeners are invoked. This allows
 * walking the declaration view tree in listeners to get vars from parent views.
 *
 * \@codeGenApi
 * @param {?} viewToRestore The OpaqueViewState instance to restore.
 *
 * @return {?}
 */
export function ɵɵrestoreView(viewToRestore) {
    instructionState.lFrame.contextLView = (/** @type {?} */ ((/** @type {?} */ (viewToRestore))));
}
/**
 * @return {?}
 */
export function getPreviousOrParentTNode() {
    return instructionState.lFrame.previousOrParentTNode;
}
/**
 * @param {?} tNode
 * @param {?} _isParent
 * @return {?}
 */
export function setPreviousOrParentTNode(tNode, _isParent) {
    instructionState.lFrame.previousOrParentTNode = tNode;
    instructionState.lFrame.isParent = _isParent;
}
/**
 * @return {?}
 */
export function getIsParent() {
    return instructionState.lFrame.isParent;
}
/**
 * @return {?}
 */
export function setIsNotParent() {
    instructionState.lFrame.isParent = false;
}
/**
 * @return {?}
 */
export function setIsParent() {
    instructionState.lFrame.isParent = true;
}
/**
 * @return {?}
 */
export function getContextLView() {
    return instructionState.lFrame.contextLView;
}
/**
 * @return {?}
 */
export function getCheckNoChangesMode() {
    // TODO(misko): remove this from the LView since it is ngDevMode=true mode only.
    return instructionState.checkNoChangesMode;
}
/**
 * @param {?} mode
 * @return {?}
 */
export function setCheckNoChangesMode(mode) {
    instructionState.checkNoChangesMode = mode;
}
// top level variables should not be exported for performance reasons (PERF_NOTES.md)
/**
 * @return {?}
 */
export function getBindingRoot() {
    /** @type {?} */
    const lFrame = instructionState.lFrame;
    /** @type {?} */
    let index = lFrame.bindingRootIndex;
    if (index === -1) {
        index = lFrame.bindingRootIndex = lFrame.tView.bindingStartIndex;
    }
    return index;
}
/**
 * @return {?}
 */
export function getBindingIndex() {
    return instructionState.lFrame.bindingIndex;
}
/**
 * @param {?} value
 * @return {?}
 */
export function setBindingIndex(value) {
    return instructionState.lFrame.bindingIndex = value;
}
/**
 * @return {?}
 */
export function nextBindingIndex() {
    return instructionState.lFrame.bindingIndex++;
}
/**
 * @param {?} count
 * @return {?}
 */
export function incrementBindingIndex(count) {
    /** @type {?} */
    const lFrame = instructionState.lFrame;
    /** @type {?} */
    const index = lFrame.bindingIndex;
    lFrame.bindingIndex = lFrame.bindingIndex + count;
    return index;
}
/**
 * Set a new binding root index so that host template functions can execute.
 *
 * Bindings inside the host template are 0 index. But because we don't know ahead of time
 * how many host bindings we have we can't pre-compute them. For this reason they are all
 * 0 index and we just shift the root so that they match next available location in the LView.
 *
 * @param {?} bindingRootIndex Root index for `hostBindings`
 * @param {?} currentDirectiveIndex `TData[currentDirectiveIndex]` will point to the current directive
 *        whose `hostBindings` are being processed.
 * @return {?}
 */
export function setBindingRootForHostBindings(bindingRootIndex, currentDirectiveIndex) {
    /** @type {?} */
    const lFrame = instructionState.lFrame;
    lFrame.bindingIndex = lFrame.bindingRootIndex = bindingRootIndex;
    lFrame.currentDirectiveIndex = currentDirectiveIndex;
}
/**
 * When host binding is executing this points to the directive index.
 * `TView.data[getCurrentDirectiveIndex()]` is `DirectiveDef`
 * `LView[getCurrentDirectiveIndex()]` is directive instance.
 * @return {?}
 */
export function getCurrentDirectiveIndex() {
    return instructionState.lFrame.currentDirectiveIndex;
}
/**
 * @return {?}
 */
export function getCurrentQueryIndex() {
    return instructionState.lFrame.currentQueryIndex;
}
/**
 * @param {?} value
 * @return {?}
 */
export function setCurrentQueryIndex(value) {
    instructionState.lFrame.currentQueryIndex = value;
}
/**
 * This is a light weight version of the `enterView` which is needed by the DI system.
 * @param {?} newView
 * @param {?} tNode
 * @return {?}
 */
export function enterDI(newView, tNode) {
    ngDevMode && assertLViewOrUndefined(newView);
    /** @type {?} */
    const newLFrame = allocLFrame();
    instructionState.lFrame = newLFrame;
    newLFrame.previousOrParentTNode = (/** @type {?} */ (tNode));
    newLFrame.lView = newView;
    if (ngDevMode) {
        // resetting for safety in dev mode only.
        newLFrame.isParent = DEV_MODE_VALUE;
        newLFrame.selectedIndex = DEV_MODE_VALUE;
        newLFrame.contextLView = DEV_MODE_VALUE;
        newLFrame.elementDepthCount = DEV_MODE_VALUE;
        newLFrame.currentNamespace = DEV_MODE_VALUE;
        newLFrame.currentSanitizer = DEV_MODE_VALUE;
        newLFrame.bindingRootIndex = DEV_MODE_VALUE;
        newLFrame.currentQueryIndex = DEV_MODE_VALUE;
    }
}
/** @type {?} */
const DEV_MODE_VALUE = 'Value indicating that DI is trying to read value which it should not need to know about.';
/**
 * This is a light weight version of the `leaveView` which is needed by the DI system.
 *
 * Because the implementation is same it is only an alias
 * @type {?}
 */
export const leaveDI = leaveView;
/**
 * Swap the current lView with a new lView.
 *
 * For performance reasons we store the lView in the top level of the module.
 * This way we minimize the number of properties to read. Whenever a new view
 * is entered we have to store the lView for later, and when the view is
 * exited the state has to be restored
 *
 * @param {?} newView New lView to become active
 * @param {?} tNode Element to which the View is a child of
 * @return {?} the previously active lView;
 */
export function enterView(newView, tNode) {
    ngDevMode && assertLViewOrUndefined(newView);
    /** @type {?} */
    const newLFrame = allocLFrame();
    /** @type {?} */
    const tView = newView[TVIEW];
    instructionState.lFrame = newLFrame;
    newLFrame.previousOrParentTNode = (/** @type {?} */ (tNode));
    newLFrame.isParent = true;
    newLFrame.lView = newView;
    newLFrame.tView = tView;
    newLFrame.selectedIndex = 0;
    newLFrame.contextLView = (/** @type {?} */ (newView));
    newLFrame.elementDepthCount = 0;
    newLFrame.currentDirectiveIndex = -1;
    newLFrame.currentNamespace = null;
    newLFrame.currentSanitizer = null;
    newLFrame.bindingRootIndex = -1;
    newLFrame.bindingIndex = tView.bindingStartIndex;
    newLFrame.currentQueryIndex = 0;
}
/**
 * Allocates next free LFrame. This function tries to reuse the `LFrame`s to lower memory pressure.
 * @return {?}
 */
function allocLFrame() {
    /** @type {?} */
    const currentLFrame = instructionState.lFrame;
    /** @type {?} */
    const childLFrame = currentLFrame === null ? null : currentLFrame.child;
    /** @type {?} */
    const newLFrame = childLFrame === null ? createLFrame(currentLFrame) : childLFrame;
    return newLFrame;
}
/**
 * @param {?} parent
 * @return {?}
 */
function createLFrame(parent) {
    /** @type {?} */
    const lFrame = {
        previousOrParentTNode: (/** @type {?} */ (null)),
        //
        isParent: true,
        //
        lView: (/** @type {?} */ (null)),
        //
        tView: (/** @type {?} */ (null)),
        //
        selectedIndex: 0,
        //
        contextLView: (/** @type {?} */ (null)),
        //
        elementDepthCount: 0,
        //
        currentNamespace: null,
        //
        currentSanitizer: null,
        //
        currentDirectiveIndex: -1,
        //
        bindingRootIndex: -1,
        //
        bindingIndex: -1,
        //
        currentQueryIndex: 0,
        //
        parent: (/** @type {?} */ (parent)),
        //
        child: null,
    };
    parent !== null && (parent.child = lFrame); // link the new LFrame for reuse.
    return lFrame;
}
/**
 * @return {?}
 */
export function leaveView() {
    instructionState.lFrame = instructionState.lFrame.parent;
}
/**
 * @template T
 * @param {?} level
 * @return {?}
 */
export function nextContextImpl(level) {
    /** @type {?} */
    const contextLView = instructionState.lFrame.contextLView =
        walkUpViews(level, (/** @type {?} */ (instructionState.lFrame.contextLView)));
    return (/** @type {?} */ (contextLView[CONTEXT]));
}
/**
 * @param {?} nestingLevel
 * @param {?} currentView
 * @return {?}
 */
function walkUpViews(nestingLevel, currentView) {
    while (nestingLevel > 0) {
        ngDevMode && assertDefined(currentView[DECLARATION_VIEW], 'Declaration view should be defined if nesting level is greater than 0.');
        currentView = (/** @type {?} */ (currentView[DECLARATION_VIEW]));
        nestingLevel--;
    }
    return currentView;
}
/**
 * Gets the currently selected element index.
 *
 * Used with {\@link property} instruction (and more in the future) to identify the index in the
 * current `LView` to act on.
 * @return {?}
 */
export function getSelectedIndex() {
    return instructionState.lFrame.selectedIndex;
}
/**
 * Sets the most recent index passed to {\@link select}
 *
 * Used with {\@link property} instruction (and more in the future) to identify the index in the
 * current `LView` to act on.
 *
 * (Note that if an "exit function" was set earlier (via `setElementExitFn()`) then that will be
 * run if and when the provided `index` value is different from the current selected index value.)
 * @param {?} index
 * @return {?}
 */
export function setSelectedIndex(index) {
    instructionState.lFrame.selectedIndex = index;
}
/**
 * Sets the namespace used to create elements to `'http://www.w3.org/2000/svg'` in global state.
 *
 * \@codeGenApi
 * @return {?}
 */
export function ɵɵnamespaceSVG() {
    instructionState.lFrame.currentNamespace = 'http://www.w3.org/2000/svg';
}
/**
 * Sets the namespace used to create elements to `'http://www.w3.org/1998/MathML/'` in global state.
 *
 * \@codeGenApi
 * @return {?}
 */
export function ɵɵnamespaceMathML() {
    instructionState.lFrame.currentNamespace = 'http://www.w3.org/1998/MathML/';
}
/**
 * Sets the namespace used to create elements to `null`, which forces element creation to use
 * `createElement` rather than `createElementNS`.
 *
 * \@codeGenApi
 * @return {?}
 */
export function ɵɵnamespaceHTML() {
    namespaceHTMLInternal();
}
/**
 * Sets the namespace used to create elements to `null`, which forces element creation to use
 * `createElement` rather than `createElementNS`.
 * @return {?}
 */
export function namespaceHTMLInternal() {
    instructionState.lFrame.currentNamespace = null;
}
/**
 * @return {?}
 */
export function getNamespace() {
    return instructionState.lFrame.currentNamespace;
}
/**
 * @param {?} sanitizer
 * @return {?}
 */
export function setCurrentStyleSanitizer(sanitizer) {
    instructionState.lFrame.currentSanitizer = sanitizer;
}
/**
 * @return {?}
 */
export function resetCurrentStyleSanitizer() {
    setCurrentStyleSanitizer(null);
}
/**
 * @return {?}
 */
export function getCurrentStyleSanitizer() {
    // TODO(misko): This should throw when there is no LView, but it turns out we can get here from
    // `NodeStyleDebug` hence we return `null`. This should be fixed
    /** @type {?} */
    const lFrame = instructionState.lFrame;
    return lFrame === null ? null : lFrame.currentSanitizer;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic3RhdGUuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL3N0YXRlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQVNBLE9BQU8sRUFBQyxhQUFhLEVBQUMsTUFBTSxnQkFBZ0IsQ0FBQztBQUM3QyxPQUFPLEVBQUMsc0JBQXNCLEVBQUMsTUFBTSxVQUFVLENBQUM7QUFFaEQsT0FBTyxFQUFDLE9BQU8sRUFBRSxnQkFBZ0IsRUFBMEIsS0FBSyxFQUFRLE1BQU0sbUJBQW1CLENBQUM7Ozs7O0FBTWxHLHFCQXVHQzs7Ozs7Ozs7SUFqR0Msd0JBQWU7Ozs7Ozs7SUFPZix1QkFBbUI7Ozs7Ozs7O0lBUW5CLHVCQUFhOzs7Ozs7OztJQVFiLHVCQUFhOzs7Ozs7O0lBT2IsdUNBQTZCOzs7Ozs7O0lBTzdCLDBCQUFrQjs7Ozs7OztJQU9sQiwrQkFBc0I7Ozs7O0lBS3RCLDhCQUFxQjs7Ozs7Ozs7SUFRckIsOEJBQW9COzs7Ozs7OztJQVFwQixtQ0FBMEI7Ozs7O0lBSzFCLGtDQUE4Qjs7Ozs7SUFLOUIsa0NBQXVDOzs7Ozs7O0lBUXZDLGtDQUF5Qjs7Ozs7O0lBTXpCLG1DQUEwQjs7Ozs7OztJQU8xQix1Q0FBOEI7Ozs7Ozs7Ozs7OztBQVloQywrQkFrQ0M7Ozs7Ozs7O0lBNUJDLGtDQUFlOzs7Ozs7Ozs7Ozs7Ozs7Ozs7OztJQW9CZiwyQ0FBeUI7Ozs7Ozs7SUFPekIsOENBQTRCOzs7QUFHOUIsTUFBTSxPQUFPLGdCQUFnQixHQUFxQjtJQUNoRCxNQUFNLEVBQUUsWUFBWSxDQUFDLElBQUksQ0FBQztJQUMxQixlQUFlLEVBQUUsSUFBSTtJQUNyQixrQkFBa0IsRUFBRSxLQUFLO0NBQzFCOzs7O0FBR0QsTUFBTSxVQUFVLG9CQUFvQjtJQUNsQyxPQUFPLGdCQUFnQixDQUFDLE1BQU0sQ0FBQyxpQkFBaUIsQ0FBQztBQUNuRCxDQUFDOzs7O0FBRUQsTUFB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QWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7U3R5bGVTYW5pdGl6ZUZufSBmcm9tICcuLi9zYW5pdGl6YXRpb24vc3R5bGVfc2FuaXRpemVyJztcbmltcG9ydCB7YXNzZXJ0RGVmaW5lZH0gZnJvbSAnLi4vdXRpbC9hc3NlcnQnO1xuaW1wb3J0IHthc3NlcnRMVmlld09yVW5kZWZpbmVkfSBmcm9tICcuL2Fzc2VydCc7XG5pbXBvcnQge1ROb2RlfSBmcm9tICcuL2ludGVyZmFjZXMvbm9kZSc7XG5pbXBvcnQge0NPTlRFWFQsIERFQ0xBUkFUSU9OX1ZJRVcsIExWaWV3LCBPcGFxdWVWaWV3U3RhdGUsIFRWSUVXLCBUVmlld30gZnJvbSAnLi9pbnRlcmZhY2VzL3ZpZXcnO1xuXG5cbi8qKlxuICpcbiAqL1xuaW50ZXJmYWNlIExGcmFtZSB7XG4gIC8qKlxuICAgKiBQYXJlbnQgTEZyYW1lLlxuICAgKlxuICAgKiBUaGlzIGlzIG5lZWRlZCB3aGVuIGBsZWF2ZVZpZXdgIGlzIGNhbGxlZCB0byByZXN0b3JlIHRoZSBwcmV2aW91cyBzdGF0ZS5cbiAgICovXG4gIHBhcmVudDogTEZyYW1lO1xuXG4gIC8qKlxuICAgKiBDaGlsZCBMRnJhbWUuXG4gICAqXG4gICAqIFRoaXMgaXMgdXNlZCB0byBjYWNoZSBleGlzdGluZyBMRnJhbWVzIHRvIHJlbGlldmUgdGhlIG1lbW9yeSBwcmVzc3VyZS5cbiAgICovXG4gIGNoaWxkOiBMRnJhbWV8bnVsbDtcblxuICAvKipcbiAgICogU3RhdGUgb2YgdGhlIGN1cnJlbnQgdmlldyBiZWluZyBwcm9jZXNzZWQuXG4gICAqXG4gICAqIEFuIGFycmF5IG9mIG5vZGVzICh0ZXh0LCBlbGVtZW50LCBjb250YWluZXIsIGV0YyksIHBpcGVzLCB0aGVpciBiaW5kaW5ncywgYW5kXG4gICAqIGFueSBsb2NhbCB2YXJpYWJsZXMgdGhhdCBuZWVkIHRvIGJlIHN0b3JlZCBiZXR3ZWVuIGludm9jYXRpb25zLlxuICAgKi9cbiAgbFZpZXc6IExWaWV3O1xuXG4gIC8qKlxuICAgKiBDdXJyZW50IGBUVmlld2AgYXNzb2NpYXRlZCB3aXRoIHRoZSBgTEZyYW1lLmxWaWV3YC5cbiAgICpcbiAgICogT25lIGNhbiBnZXQgYFRWaWV3YCBmcm9tIGBsRnJhbWVbVFZJRVddYCBob3dldmVyIGJlY2F1c2UgaXQgaXMgc28gY29tbW9uIGl0IG1ha2VzIHNlbnNlIHRvXG4gICAqIHN0b3JlIGl0IGluIGBMRnJhbWVgIGZvciBwZXJmIHJlYXNvbnMuXG4gICAqL1xuICB0VmlldzogVFZpZXc7XG5cbiAgLyoqXG4gICAqIFVzZWQgdG8gc2V0IHRoZSBwYXJlbnQgcHJvcGVydHkgd2hlbiBub2RlcyBhcmUgY3JlYXRlZCBhbmQgdHJhY2sgcXVlcnkgcmVzdWx0cy5cbiAgICpcbiAgICogVGhpcyBpcyB1c2VkIGluIGNvbmp1bmN0aW9uIHdpdGggYGlzUGFyZW50YC5cbiAgICovXG4gIHByZXZpb3VzT3JQYXJlbnRUTm9kZTogVE5vZGU7XG5cbiAgLyoqXG4gICAqIElmIGBpc1BhcmVudGAgaXM6XG4gICAqICAtIGB0cnVlYDogdGhlbiBgcHJldmlvdXNPclBhcmVudFROb2RlYCBwb2ludHMgdG8gYSBwYXJlbnQgbm9kZS5cbiAgICogIC0gYGZhbHNlYDogdGhlbiBgcHJldmlvdXNPclBhcmVudFROb2RlYCBwb2ludHMgdG8gcHJldmlvdXMgbm9kZSAoc2libGluZykuXG4gICAqL1xuICBpc1BhcmVudDogYm9vbGVhbjtcblxuICAvKipcbiAgICogSW5kZXggb2YgY3VycmVudGx5IHNlbGVjdGVkIGVsZW1lbnQgaW4gTFZpZXcuXG4gICAqXG4gICAqIFVzZWQgYnkgYmluZGluZyBpbnN0cnVjdGlvbnMuIFVwZGF0ZWQgYXMgcGFydCBvZiBhZHZhbmNlIGluc3RydWN0aW9uLlxuICAgKi9cbiAgc2VsZWN0ZWRJbmRleDogbnVtYmVyO1xuXG4gIC8qKlxuICAgKiBDdXJyZW50IHBvaW50ZXIgdG8gdGhlIGJpbmRpbmcgaW5kZXguXG4gICAqL1xuICBiaW5kaW5nSW5kZXg6IG51bWJlcjtcblxuICAvKipcbiAgICogVGhlIGxhc3Qgdmlld0RhdGEgcmV0cmlldmVkIGJ5IG5leHRDb250ZXh0KCkuXG4gICAqIEFsbG93cyBidWlsZGluZyBuZXh0Q29udGV4dCgpIGFuZCByZWZlcmVuY2UoKSBjYWxscy5cbiAgICpcbiAgICogZS5nLiBjb25zdCBpbm5lciA9IHgoKS4kaW1wbGljaXQ7IGNvbnN0IG91dGVyID0geCgpLiRpbXBsaWNpdDtcbiAgICovXG4gIGNvbnRleHRMVmlldzogTFZpZXc7XG5cbiAgLyoqXG4gICAqIFN0b3JlIHRoZSBlbGVtZW50IGRlcHRoIGNvdW50LiBUaGlzIGlzIHVzZWQgdG8gaWRlbnRpZnkgdGhlIHJvb3QgZWxlbWVudHMgb2YgdGhlIHRlbXBsYXRlXG4gICAqIHNvIHRoYXQgd2UgY2FuIHRoZW4gYXR0YWNoIHBhdGNoIGRhdGEgYExWaWV3YCB0byBvbmx5IHRob3NlIGVsZW1lbnRzLiBXZSBrbm93IHRoYXQgdGhvc2VcbiAgICogYXJlIHRoZSBvbmx5IHBsYWNlcyB3aGVyZSB0aGUgcGF0Y2ggZGF0YSBjb3VsZCBjaGFuZ2UsIHRoaXMgd2F5IHdlIHdpbGwgc2F2ZSBvbiBudW1iZXJcbiAgICogb2YgcGxhY2VzIHdoZXJlIHRoYSBwYXRjaGluZyBvY2N1cnMuXG4gICAqL1xuICBlbGVtZW50RGVwdGhDb3VudDogbnVtYmVyO1xuXG4gIC8qKlxuICAgKiBDdXJyZW50IG5hbWVzcGFjZSB0byBiZSB1c2VkIHdoZW4gY3JlYXRpbmcgZWxlbWVudHNcbiAgICovXG4gIGN1cnJlbnROYW1lc3BhY2U6IHN0cmluZ3xudWxsO1xuXG4gIC8qKlxuICAgKiBDdXJyZW50IHNhbml0aXplclxuICAgKi9cbiAgY3VycmVudFNhbml0aXplcjogU3R5bGVTYW5pdGl6ZUZufG51bGw7XG5cblxuICAvKipcbiAgICogVGhlIHJvb3QgaW5kZXggZnJvbSB3aGljaCBwdXJlIGZ1bmN0aW9uIGluc3RydWN0aW9ucyBzaG91bGQgY2FsY3VsYXRlIHRoZWlyIGJpbmRpbmdcbiAgICogaW5kaWNlcy4gSW4gY29tcG9uZW50IHZpZXdzLCB0aGlzIGlzIFRWaWV3LmJpbmRpbmdTdGFydEluZGV4LiBJbiBhIGhvc3QgYmluZGluZ1xuICAgKiBjb250ZXh0LCB0aGlzIGlzIHRoZSBUVmlldy5leHBhbmRvU3RhcnRJbmRleCArIGFueSBkaXJzL2hvc3RWYXJzIGJlZm9yZSB0aGUgZ2l2ZW4gZGlyLlxuICAgKi9cbiAgYmluZGluZ1Jvb3RJbmRleDogbnVtYmVyO1xuXG4gIC8qKlxuICAgKiBDdXJyZW50IGluZGV4IG9mIGEgVmlldyBvciBDb250ZW50IFF1ZXJ5IHdoaWNoIG5lZWRzIHRvIGJlIHByb2Nlc3NlZCBuZXh0LlxuICAgKiBXZSBpdGVyYXRlIG92ZXIgdGhlIGxpc3Qgb2YgUXVlcmllcyBhbmQgaW5jcmVtZW50IGN1cnJlbnQgcXVlcnkgaW5kZXggYXQgZXZlcnkgc3RlcC5cbiAgICovXG4gIGN1cnJlbnRRdWVyeUluZGV4OiBudW1iZXI7XG5cbiAgLyoqXG4gICAqIFdoZW4gaG9zdCBiaW5kaW5nIGlzIGV4ZWN1dGluZyB0aGlzIHBvaW50cyB0byB0aGUgZGlyZWN0aXZlIGluZGV4LlxuICAgKiBgVFZpZXcuZGF0YVtjdXJyZW50RGlyZWN0aXZlSW5kZXhdYCBpcyBgRGlyZWN0aXZlRGVmYFxuICAgKiBgTFZpZXdbY3VycmVudERpcmVjdGl2ZUluZGV4XWAgaXMgZGlyZWN0aXZlIGluc3RhbmNlLlxuICAgKi9cbiAgY3VycmVudERpcmVjdGl2ZUluZGV4OiBudW1iZXI7XG59XG5cbi8qKlxuICogQWxsIGltcGxpY2l0IGluc3RydWN0aW9uIHN0YXRlIGlzIHN0b3JlZCBoZXJlLlxuICpcbiAqIEl0IGlzIHVzZWZ1bCB0byBoYXZlIGEgc2luZ2xlIG9iamVjdCB3aGVyZSBhbGwgb2YgdGhlIHN0YXRlIGlzIHN0b3JlZCBhcyBhIG1lbnRhbCBtb2RlbFxuICogKHJhdGhlciBpdCBiZWluZyBzcHJlYWQgYWNyb3NzIG1hbnkgZGlmZmVyZW50IHZhcmlhYmxlcy4pXG4gKlxuICogUEVSRiBOT1RFOiBUdXJucyBvdXQgdGhhdCB3cml0aW5nIHRvIGEgdHJ1ZSBnbG9iYWwgdmFyaWFibGUgaXMgc2xvd2VyIHRoYW5cbiAqIGhhdmluZyBhbiBpbnRlcm1lZGlhdGUgb2JqZWN0IHdpdGggcHJvcGVydGllcy5cbiAqL1xuaW50ZXJmYWNlIEluc3RydWN0aW9uU3RhdGUge1xuICAvKipcbiAgICogQ3VycmVudCBgTEZyYW1lYFxuICAgKlxuICAgKiBgbnVsbGAgaWYgd2UgaGF2ZSBub3QgY2FsbGVkIGBlbnRlclZpZXdgXG4gICAqL1xuICBsRnJhbWU6IExGcmFtZTtcblxuICAvKipcbiAgICogU3RvcmVzIHdoZXRoZXIgZGlyZWN0aXZlcyBzaG91bGQgYmUgbWF0Y2hlZCB0byBlbGVtZW50cy5cbiAgICpcbiAgICogV2hlbiB0ZW1wbGF0ZSBjb250YWlucyBgbmdOb25CaW5kYWJsZWAgdGhlbiB3ZSBuZWVkIHRvIHByZXZlbnQgdGhlIHJ1bnRpbWUgZnJvbSBtYXRjaGluZ1xuICAgKiBkaXJlY3RpdmVzIG9uIGNoaWxkcmVuIG9mIHRoYXQgZWxlbWVudC5cbiAgICpcbiAgICogRXhhbXBsZTpcbiAgICogYGBgXG4gICAqIDxteS1jb21wIG15LWRpcmVjdGl2ZT5cbiAgICogICBTaG91bGQgbWF0Y2ggY29tcG9uZW50IC8gZGlyZWN0aXZlLlxuICAgKiA8L215LWNvbXA+XG4gICAqIDxkaXYgbmdOb25CaW5kYWJsZT5cbiAgICogICA8bXktY29tcCBteS1kaXJlY3RpdmU+XG4gICAqICAgICBTaG91bGQgbm90IG1hdGNoIGNvbXBvbmVudCAvIGRpcmVjdGl2ZSBiZWNhdXNlIHdlIGFyZSBpbiBuZ05vbkJpbmRhYmxlLlxuICAgKiAgIDwvbXktY29tcD5cbiAgICogPC9kaXY+XG4gICAqIGBgYFxuICAgKi9cbiAgYmluZGluZ3NFbmFibGVkOiBib29sZWFuO1xuXG4gIC8qKlxuICAgKiBJbiB0aGlzIG1vZGUsIGFueSBjaGFuZ2VzIGluIGJpbmRpbmdzIHdpbGwgdGhyb3cgYW4gRXhwcmVzc2lvbkNoYW5nZWRBZnRlckNoZWNrZWQgZXJyb3IuXG4gICAqXG4gICAqIE5lY2Vzc2FyeSB0byBzdXBwb3J0IENoYW5nZURldGVjdG9yUmVmLmNoZWNrTm9DaGFuZ2VzKCkuXG4gICAqL1xuICBjaGVja05vQ2hhbmdlc01vZGU6IGJvb2xlYW47XG59XG5cbmV4cG9ydCBjb25zdCBpbnN0cnVjdGlvblN0YXRlOiBJbnN0cnVjdGlvblN0YXRlID0ge1xuICBsRnJhbWU6IGNyZWF0ZUxGcmFtZShudWxsKSxcbiAgYmluZGluZ3NFbmFibGVkOiB0cnVlLFxuICBjaGVja05vQ2hhbmdlc01vZGU6IGZhbHNlLFxufTtcblxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0RWxlbWVudERlcHRoQ291bnQoKSB7XG4gIHJldHVybiBpbnN0cnVjdGlvblN0YXRlLmxGcmFtZS5lbGVtZW50RGVwdGhDb3VudDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGluY3JlYXNlRWxlbWVudERlcHRoQ291bnQoKSB7XG4gIGluc3RydWN0aW9uU3RhdGUubEZyYW1lLmVsZW1lbnREZXB0aENvdW50Kys7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBkZWNyZWFzZUVsZW1lbnREZXB0aENvdW50KCkge1xuICBpbnN0cnVjdGlvblN0YXRlLmxGcmFtZS5lbGVtZW50RGVwdGhDb3VudC0tO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0QmluZGluZ3NFbmFibGVkKCk6IGJvb2xlYW4ge1xuICByZXR1cm4gaW5zdHJ1Y3Rpb25TdGF0ZS5iaW5kaW5nc0VuYWJsZWQ7XG59XG5cblxuLyoqXG4gKiBFbmFibGVzIGRpcmVjdGl2ZSBtYXRjaGluZyBvbiBlbGVtZW50cy5cbiAqXG4gKiAgKiBFeGFtcGxlOlxuICogYGBgXG4gKiA8bXktY29tcCBteS1kaXJlY3RpdmU+XG4gKiAgIFNob3VsZCBtYXRjaCBjb21wb25lbnQgLyBkaXJlY3RpdmUuXG4gKiA8L215LWNvbXA+XG4gKiA8ZGl2IG5nTm9uQmluZGFibGU+XG4gKiAgIDwhLS0gybXJtWRpc2FibGVCaW5kaW5ncygpIC0tPlxuICogICA8bXktY29tcCBteS1kaXJlY3RpdmU+XG4gKiAgICAgU2hvdWxkIG5vdCBtYXRjaCBjb21wb25lbnQgLyBkaXJlY3RpdmUgYmVjYXVzZSB3ZSBhcmUgaW4gbmdOb25CaW5kYWJsZS5cbiAqICAgPC9teS1jb21wPlxuICogICA8IS0tIMm1ybVlbmFibGVCaW5kaW5ncygpIC0tPlxuICogPC9kaXY+XG4gKiBgYGBcbiAqXG4gKiBAY29kZUdlbkFwaVxuICovXG5leHBvcnQgZnVuY3Rpb24gybXJtWVuYWJsZUJpbmRpbmdzKCk6IHZvaWQge1xuICBpbnN0cnVjdGlvblN0YXRlLmJpbmRpbmdzRW5hYmxlZCA9IHRydWU7XG59XG5cbi8qKlxuICogRGlzYWJsZXMgZGlyZWN0aXZlIG1hdGNoaW5nIG9uIGVsZW1lbnQuXG4gKlxuICogICogRXhhbXBsZTpcbiAqIGBgYFxuICogPG15LWNvbXAgbXktZGlyZWN0aXZlPlxuICogICBTaG91bGQgbWF0Y2ggY29tcG9uZW50IC8gZGlyZWN0aXZlLlxuICogPC9teS1jb21wPlxuICogPGRpdiBuZ05vbkJpbmRhYmxlPlxuICogICA8IS0tIMm1ybVkaXNhYmxlQmluZGluZ3MoKSAtLT5cbiAqICAgPG15LWNvbXAgbXktZGlyZWN0aXZlPlxuICogICAgIFNob3VsZCBub3QgbWF0Y2ggY29tcG9uZW50IC8gZGlyZWN0aXZlIGJlY2F1c2Ugd2UgYXJlIGluIG5nTm9uQmluZGFibGUuXG4gKiAgIDwvbXktY29tcD5cbiAqICAgPCEtLSDJtcm1ZW5hYmxlQmluZGluZ3MoKSAtLT5cbiAqIDwvZGl2PlxuICogYGBgXG4gKlxuICogQGNvZGVHZW5BcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIMm1ybVkaXNhYmxlQmluZGluZ3MoKTogdm9pZCB7XG4gIGluc3RydWN0aW9uU3RhdGUuYmluZGluZ3NFbmFibGVkID0gZmFsc2U7XG59XG5cbi8qKlxuICogUmV0dXJuIHRoZSBjdXJyZW50IGBMVmlld2AuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBnZXRMVmlldygpOiBMVmlldyB7XG4gIHJldHVybiBpbnN0cnVjdGlvblN0YXRlLmxGcmFtZS5sVmlldztcbn1cblxuLyoqXG4gKiBSZXR1cm4gdGhlIGN1cnJlbnQgYFRWaWV3YC5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldFRWaWV3KCk6IFRWaWV3IHtcbiAgcmV0dXJuIGluc3RydWN0aW9uU3RhdGUubEZyYW1lLnRWaWV3O1xufVxuXG4vKipcbiAqIFJlc3RvcmVzIGBjb250ZXh0Vmlld0RhdGFgIHRvIHRoZSBnaXZlbiBPcGFxdWVWaWV3U3RhdGUgaW5zdGFuY2UuXG4gKlxuICogVXNlZCBpbiBjb25qdW5jdGlvbiB3aXRoIHRoZSBnZXRDdXJyZW50VmlldygpIGluc3RydWN0aW9uIHRvIHNhdmUgYSBzbmFwc2hvdFxuICogb2YgdGhlIGN1cnJlbnQgdmlldyBhbmQgcmVzdG9yZSBpdCB3aGVuIGxpc3RlbmVycyBhcmUgaW52b2tlZC4gVGhpcyBhbGxvd3NcbiAqIHdhbGtpbmcgdGhlIGRlY2xhcmF0aW9uIHZpZXcgdHJlZSBpbiBsaXN0ZW5lcnMgdG8gZ2V0IHZhcnMgZnJvbSBwYXJlbnQgdmlld3MuXG4gKlxuICogQHBhcmFtIHZpZXdUb1Jlc3RvcmUgVGhlIE9wYXF1ZVZpZXdTdGF0ZSBpbnN0YW5jZSB0byByZXN0b3JlLlxuICpcbiAqIEBjb2RlR2VuQXBpXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiDJtcm1cmVzdG9yZVZpZXcodmlld1RvUmVzdG9yZTogT3BhcXVlVmlld1N0YXRlKSB7XG4gIGluc3RydWN0aW9uU3RhdGUubEZyYW1lLmNvbnRleHRMVmlldyA9IHZpZXdUb1Jlc3RvcmUgYXMgYW55IGFzIExWaWV3O1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0UHJldmlvdXNPclBhcmVudFROb2RlKCk6IFROb2RlIHtcbiAgcmV0dXJuIGluc3RydWN0aW9uU3RhdGUubEZyYW1lLnByZXZpb3VzT3JQYXJlbnRUTm9kZTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHNldFByZXZpb3VzT3JQYXJlbnRUTm9kZSh0Tm9kZTogVE5vZGUsIF9pc1BhcmVudDogYm9vbGVhbikge1xuICBpbnN0cnVjdGlvblN0YXRlLmxGcmFtZS5wcmV2aW91c09yUGFyZW50VE5vZGUgPSB0Tm9kZTtcbiAgaW5zdHJ1Y3Rpb25TdGF0ZS5sRnJhbWUuaXNQYXJlbnQgPSBfaXNQYXJlbnQ7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRJc1BhcmVudCgpOiBib29sZWFuIHtcbiAgcmV0dXJuIGluc3RydWN0aW9uU3RhdGUubEZyYW1lLmlzUGFyZW50O1xufVxuXG5leHBvcnQgZnVuY3Rpb24gc2V0SXNOb3RQYXJlbnQoKTogdm9pZCB7XG4gIGluc3RydWN0aW9uU3RhdGUubEZyYW1lLmlzUGFyZW50ID0gZmFsc2U7XG59XG5leHBvcnQgZnVuY3Rpb24gc2V0SXNQYXJlbnQoKTogdm9pZCB7XG4gIGluc3RydWN0aW9uU3RhdGUubEZyYW1lLmlzUGFyZW50ID0gdHJ1ZTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdldENvbnRleHRMVmlldygpOiBMVmlldyB7XG4gIHJldHVybiBpbnN0cnVjdGlvblN0YXRlLmxGcmFtZS5jb250ZXh0TFZpZXc7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRDaGVja05vQ2hhbmdlc01vZGUoKTogYm9vbGVhbiB7XG4gIC8vIFRPRE8obWlza28pOiByZW1vdmUgdGhpcyBmcm9tIHRoZSBMVmlldyBzaW5jZSBpdCBpcyBuZ0Rldk1vZGU9dHJ1ZSBtb2RlIG9ubHkuXG4gIHJldHVybiBpbnN0cnVjdGlvblN0YXRlLmNoZWNrTm9DaGFuZ2VzTW9kZTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHNldENoZWNrTm9DaGFuZ2VzTW9kZShtb2RlOiBib29sZWFuKTogdm9pZCB7XG4gIGluc3RydWN0aW9uU3RhdGUuY2hlY2tOb0NoYW5nZXNNb2RlID0gbW9kZTtcbn1cblxuLy8gdG9wIGxldmVsIHZhcmlhYmxlcyBzaG91bGQgbm90IGJlIGV4cG9ydGVkIGZvciBwZXJmb3JtYW5jZSByZWFzb25zIChQRVJGX05PVEVTLm1kKVxuZXhwb3J0IGZ1bmN0aW9uIGdldEJpbmRpbmdSb290KCkge1xuICBjb25zdCBsRnJhbWUgPSBpbnN0cnVjdGlvblN0YXRlLmxGcmFtZTtcbiAgbGV0IGluZGV4ID0gbEZyYW1lLmJpbmRpbmdSb290SW5kZXg7XG4gIGlmIChpbmRleCA9PT0gLTEpIHtcbiAgICBpbmRleCA9IGxGcmFtZS5iaW5kaW5nUm9vdEluZGV4ID0gbEZyYW1lLnRWaWV3LmJpbmRpbmdTdGFydEluZGV4O1xuICB9XG4gIHJldHVybiBpbmRleDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGdldEJpbmRpbmdJbmRleCgpOiBudW1iZXIge1xuICByZXR1cm4gaW5zdHJ1Y3Rpb25TdGF0ZS5sRnJhbWUuYmluZGluZ0luZGV4O1xufVxuXG5leHBvcnQgZnVuY3Rpb24gc2V0QmluZGluZ0luZGV4KHZhbHVlOiBudW1iZXIpOiBudW1iZXIge1xuICByZXR1cm4gaW5zdHJ1Y3Rpb25TdGF0ZS5sRnJhbWUuYmluZGluZ0luZGV4ID0gdmFsdWU7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBuZXh0QmluZGluZ0luZGV4KCk6IG51bWJlciB7XG4gIHJldHVybiBpbnN0cnVjdGlvblN0YXRlLmxGcmFtZS5iaW5kaW5nSW5kZXgrKztcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGluY3JlbWVudEJpbmRpbmdJbmRleChjb3VudDogbnVtYmVyKTogbnVtYmVyIHtcbiAgY29uc3QgbEZyYW1lID0gaW5zdHJ1Y3Rpb25TdGF0ZS5sRnJhbWU7XG4gIGNvbnN0IGluZGV4ID0gbEZyYW1lLmJpbmRpbmdJbmRleDtcbiAgbEZyYW1lLmJpbmRpbmdJbmRleCA9IGxGcmFtZS5iaW5kaW5nSW5kZXggKyBjb3VudDtcbiAgcmV0dXJuIGluZGV4O1xufVxuXG4vKipcbiAqIFNldCBhIG5ldyBiaW5kaW5nIHJvb3QgaW5kZXggc28gdGhhdCBob3N0IHRlbXBsYXRlIGZ1bmN0aW9ucyBjYW4gZXhlY3V0ZS5cbiAqXG4gKiBCaW5kaW5ncyBpbnNpZGUgdGhlIGhvc3QgdGVtcGxhdGUgYXJlIDAgaW5kZXguIEJ1dCBiZWNhdXNlIHdlIGRvbid0IGtub3cgYWhlYWQgb2YgdGltZVxuICogaG93IG1hbnkgaG9zdCBiaW5kaW5ncyB3ZSBoYXZlIHdlIGNhbid0IHByZS1jb21wdXRlIHRoZW0uIEZvciB0aGlzIHJlYXNvbiB0aGV5IGFyZSBhbGxcbiAqIDAgaW5kZXggYW5kIHdlIGp1c3Qgc2hpZnQgdGhlIHJvb3Qgc28gdGhhdCB0aGV5IG1hdGNoIG5leHQgYXZhaWxhYmxlIGxvY2F0aW9uIGluIHRoZSBMVmlldy5cbiAqXG4gKiBAcGFyYW0gYmluZGluZ1Jvb3RJbmRleCBSb290IGluZGV4IGZvciBgaG9zdEJpbmRpbmdzYFxuICogQHBhcmFtIGN1cnJlbnREaXJlY3RpdmVJbmRleCBgVERhdGFbY3VycmVudERpcmVjdGl2ZUluZGV4XWAgd2lsbCBwb2ludCB0byB0aGUgY3VycmVudCBkaXJlY3RpdmVcbiAqICAgICAgICB3aG9zZSBgaG9zdEJpbmRpbmdzYCBhcmUgYmVpbmcgcHJvY2Vzc2VkLlxuICovXG5leHBvcnQgZnVuY3Rpb24gc2V0QmluZGluZ1Jvb3RGb3JIb3N0QmluZGluZ3MoXG4gICAgYmluZGluZ1Jvb3RJbmRleDogbnVtYmVyLCBjdXJyZW50RGlyZWN0aXZlSW5kZXg6IG51bWJlcikge1xuICBjb25zdCBsRnJhbWUgPSBpbnN0cnVjdGlvblN0YXRlLmxGcmFtZTtcbiAgbEZyYW1lLmJpbmRpbmdJbmRleCA9IGxGcmFtZS5iaW5kaW5nUm9vdEluZGV4ID0gYmluZGluZ1Jvb3RJbmRleDtcbiAgbEZyYW1lLmN1cnJlbnREaXJlY3RpdmVJbmRleCA9IGN1cnJlbnREaXJlY3RpdmVJbmRleDtcbn1cblxuLyoqXG4gKiBXaGVuIGhvc3QgYmluZGluZyBpcyBleGVjdXRpbmcgdGhpcyBwb2ludHMgdG8gdGhlIGRpcmVjdGl2ZSBpbmRleC5cbiAqIGBUVmlldy5kYXRhW2dldEN1cnJlbnREaXJlY3RpdmVJbmRleCgpXWAgaXMgYERpcmVjdGl2ZURlZmBcbiAqIGBMVmlld1tnZXRDdXJyZW50RGlyZWN0aXZlSW5kZXgoKV1gIGlzIGRpcmVjdGl2ZSBpbnN0YW5jZS5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGdldEN1cnJlbnREaXJlY3RpdmVJbmRleCgpOiBudW1iZXIge1xuICByZXR1cm4gaW5zdHJ1Y3Rpb25TdGF0ZS5sRnJhbWUuY3VycmVudERpcmVjdGl2ZUluZGV4O1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0Q3VycmVudFF1ZXJ5SW5kZXgoKTogbnVtYmVyIHtcbiAgcmV0dXJuIGluc3RydWN0aW9uU3RhdGUubEZyYW1lLmN1cnJlbnRRdWVyeUluZGV4O1xufVxuXG5leHBvcnQgZnVuY3Rpb24gc2V0Q3VycmVudFF1ZXJ5SW5kZXgodmFsdWU6IG51bWJlcik6IHZvaWQge1xuICBpbnN0cnVjdGlvblN0YXRlLmxGcmFtZS5jdXJyZW50UXVlcnlJbmRleCA9IHZhbHVlO1xufVxuXG4vKipcbiAqIFRoaXMgaXMgYSBsaWdodCB3ZWlnaHQgdmVyc2lvbiBvZiB0aGUgYGVudGVyVmlld2Agd2hpY2ggaXMgbmVlZGVkIGJ5IHRoZSBESSBzeXN0ZW0uXG4gKiBAcGFyYW0gbmV3Vmlld1xuICogQHBhcmFtIHROb2RlXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBlbnRlckRJKG5ld1ZpZXc6IExWaWV3LCB0Tm9kZTogVE5vZGUpIHtcbiAgbmdEZXZNb2RlICYmIGFzc2VydExWaWV3T3JVbmRlZmluZWQobmV3Vmlldyk7XG4gIGNvbnN0IG5ld0xGcmFtZSA9IGFsbG9jTEZyYW1lKCk7XG4gIGluc3RydWN0aW9uU3RhdGUubEZyYW1lID0gbmV3TEZyYW1lO1xuICBuZXdMRnJhbWUucHJldmlvdXNPclBhcmVudFROb2RlID0gdE5vZGUgITtcbiAgbmV3TEZyYW1lLmxWaWV3ID0gbmV3VmlldztcbiAgaWYgKG5nRGV2TW9kZSkge1xuICAgIC8vIHJlc2V0dGluZyBmb3Igc2FmZXR5IGluIGRldiBtb2RlIG9ubHkuXG4gICAgbmV3TEZyYW1lLmlzUGFyZW50ID0gREVWX01PREVfVkFMVUU7XG4gICAgbmV3TEZyYW1lLnNlbGVjdGVkSW5kZXggPSBERVZfTU9ERV9WQUxVRTtcbiAgICBuZXdMRnJhbWUuY29udGV4dExWaWV3ID0gREVWX01PREVfVkFMVUU7XG4gICAgbmV3TEZyYW1lLmVsZW1lbnREZXB0aENvdW50ID0gREVWX01PREVfVkFMVUU7XG4gICAgbmV3TEZyYW1lLmN1cnJlbnROYW1lc3BhY2UgPSBERVZfTU9ERV9WQUxVRTtcbiAgICBuZXdMRnJhbWUuY3VycmVudFNhbml0aXplciA9IERFVl9NT0RFX1ZBTFVFO1xuICAgIG5ld0xGcmFtZS5iaW5kaW5nUm9vdEluZGV4ID0gREVWX01PREVfVkFMVUU7XG4gICAgbmV3TEZyYW1lLmN1cnJlbnRRdWVyeUluZGV4ID0gREVWX01PREVfVkFMVUU7XG4gIH1cbn1cblxuY29uc3QgREVWX01PREVfVkFMVUU6IGFueSA9XG4gICAgJ1ZhbHVlIGluZGljYXRpbmcgdGhhdCBESSBpcyB0cnlpbmcgdG8gcmVhZCB2YWx1ZSB3aGljaCBpdCBzaG91bGQgbm90IG5lZWQgdG8ga25vdyBhYm91dC4nO1xuXG4vKipcbiAqIFRoaXMgaXMgYSBsaWdodCB3ZWlnaHQgdmVyc2lvbiBvZiB0aGUgYGxlYXZlVmlld2Agd2hpY2ggaXMgbmVlZGVkIGJ5IHRoZSBESSBzeXN0ZW0uXG4gKlxuICogQmVjYXVzZSB0aGUgaW1wbGVtZW50YXRpb24gaXMgc2FtZSBpdCBpcyBvbmx5IGFuIGFsaWFzXG4gKi9cbmV4cG9ydCBjb25zdCBsZWF2ZURJID0gbGVhdmVWaWV3O1xuXG4vKipcbiAqIFN3YXAgdGhlIGN1cnJlbnQgbFZpZXcgd2l0aCBhIG5ldyBsVmlldy5cbiAqXG4gKiBGb3IgcGVyZm9ybWFuY2UgcmVhc29ucyB3ZSBzdG9yZSB0aGUgbFZpZXcgaW4gdGhlIHRvcCBsZXZlbCBvZiB0aGUgbW9kdWxlLlxuICogVGhpcyB3YXkgd2UgbWluaW1pemUgdGhlIG51bWJlciBvZiBwcm9wZXJ0aWVzIHRvIHJlYWQuIFdoZW5ldmVyIGEgbmV3IHZpZXdcbiAqIGlzIGVudGVyZWQgd2UgaGF2ZSB0byBzdG9yZSB0aGUgbFZpZXcgZm9yIGxhdGVyLCBhbmQgd2hlbiB0aGUgdmlldyBpc1xuICogZXhpdGVkIHRoZSBzdGF0ZSBoYXMgdG8gYmUgcmVzdG9yZWRcbiAqXG4gKiBAcGFyYW0gbmV3VmlldyBOZXcgbFZpZXcgdG8gYmVjb21lIGFjdGl2ZVxuICogQHBhcmFtIHROb2RlIEVsZW1lbnQgdG8gd2hpY2ggdGhlIFZpZXcgaXMgYSBjaGlsZCBvZlxuICogQHJldHVybnMgdGhlIHByZXZpb3VzbHkgYWN0aXZlIGxWaWV3O1xuICovXG5leHBvcnQgZnVuY3Rpb24gZW50ZXJWaWV3KG5ld1ZpZXc6IExWaWV3LCB0Tm9kZTogVE5vZGUgfCBudWxsKTogdm9pZCB7XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnRMVmlld09yVW5kZWZpbmVkKG5ld1ZpZXcpO1xuICBjb25zdCBuZXdMRnJhbWUgPSBhbGxvY0xGcmFtZSgpO1xuICBjb25zdCB0VmlldyA9IG5ld1ZpZXdbVFZJRVddO1xuICBpbnN0cnVjdGlvblN0YXRlLmxGcmFtZSA9IG5ld0xGcmFtZTtcbiAgbmV3TEZyYW1lLnByZXZpb3VzT3JQYXJlbnRUTm9kZSA9IHROb2RlICE7XG4gIG5ld0xGcmFtZS5pc1BhcmVudCA9IHRydWU7XG4gIG5ld0xGcmFtZS5sVmlldyA9IG5ld1ZpZXc7XG4gIG5ld0xGcmFtZS50VmlldyA9IHRWaWV3O1xuICBuZXdMRnJhbWUuc2VsZWN0ZWRJbmRleCA9IDA7XG4gIG5ld0xGcmFtZS5jb250ZXh0TFZpZXcgPSBuZXdWaWV3ICE7XG4gIG5ld0xGcmFtZS5lbGVtZW50RGVwdGhDb3VudCA9IDA7XG4gIG5ld0xGcmFtZS5jdXJyZW50RGlyZWN0aXZlSW5kZXggPSAtMTtcbiAgbmV3TEZyYW1lLmN1cnJlbnROYW1lc3BhY2UgPSBudWxsO1xuICBuZXdMRnJhbWUuY3VycmVudFNhbml0aXplciA9IG51bGw7XG4gIG5ld0xGcmFtZS5iaW5kaW5nUm9vdEluZGV4ID0gLTE7XG4gIG5ld0xGcmFtZS5iaW5kaW5nSW5kZXggPSB0Vmlldy5iaW5kaW5nU3RhcnRJbmRleDtcbiAgbmV3TEZyYW1lLmN1cnJlbnRRdWVyeUluZGV4ID0gMDtcbn1cblxuLyoqXG4gKiBBbGxvY2F0ZXMgbmV4dCBmcmVlIExGcmFtZS4gVGhpcyBmdW5jdGlvbiB0cmllcyB0byByZXVzZSB0aGUgYExGcmFtZWBzIHRvIGxvd2VyIG1lbW9yeSBwcmVzc3VyZS5cbiAqL1xuZnVuY3Rpb24gYWxsb2NMRnJhbWUoKSB7XG4gIGNvbnN0IGN1cnJlbnRMRnJhbWUgPSBpbnN0cnVjdGlvblN0YXRlLmxGcmFtZTtcbiAgY29uc3QgY2hpbGRMRnJhbWUgPSBjdXJyZW50TEZyYW1lID09PSBudWxsID8gbnVsbCA6IGN1cnJlbnRMRnJhbWUuY2hpbGQ7XG4gIGNvbnN0IG5ld0xGcmFtZSA9IGNoaWxkTEZyYW1lID09PSBudWxsID8gY3JlYXRlTEZyYW1lKGN1cnJlbnRMRnJhbWUpIDogY2hpbGRMRnJhbWU7XG4gIHJldHVybiBuZXdMRnJhbWU7XG59XG5cbmZ1bmN0aW9uIGNyZWF0ZUxGcmFtZShwYXJlbnQ6IExGcmFtZSB8IG51bGwpOiBMRnJhbWUge1xuICBjb25zdCBsRnJhbWU6IExGcmFtZSA9IHtcbiAgICBwcmV2aW91c09yUGFyZW50VE5vZGU6IG51bGwgISwgIC8vXG4gICAgaXNQYXJlbnQ6IHRydWUsICAgICAgICAgICAgICAgICAvL1xuICAgIGxWaWV3OiBudWxsICEsICAgICAgICAgICAgICAgICAgLy9cbiAgICB0VmlldzogbnVsbCAhLCAgICAgICAgICAgICAgICAgIC8vXG4gICAgc2VsZWN0ZWRJbmRleDogMCwgICAgICAgICAgICAgICAvL1xuICAgIGNvbnRleHRMVmlldzogbnVsbCAhLCAgICAgICAgICAgLy9cbiAgICBlbGVtZW50RGVwdGhDb3VudDogMCwgICAgICAgICAgIC8vXG4gICAgY3VycmVudE5hbWVzcGFjZTogbnVsbCwgICAgICAgICAvL1xuICAgIGN1cnJlbnRTYW5pdGl6ZXI6IG51bGwsICAgICAgICAgLy9cbiAgICBjdXJyZW50RGlyZWN0aXZlSW5kZXg6IC0xLCAgICAgIC8vXG4gICAgYmluZGluZ1Jvb3RJbmRleDogLTEsICAgICAgICAgICAvL1xuICAgIGJpbmRpbmdJbmRleDogLTEsICAgICAgICAgICAgICAgLy9cbiAgICBjdXJyZW50UXVlcnlJbmRleDogMCwgICAgICAgICAgIC8vXG4gICAgcGFyZW50OiBwYXJlbnQgISwgICAgICAgICAgICAgICAvL1xuICAgIGNoaWxkOiBudWxsLCAgICAgICAgICAgICAgICAgICAgLy9cbiAgfTtcbiAgcGFyZW50ICE9PSBudWxsICYmIChwYXJlbnQuY2hpbGQgPSBsRnJhbWUpOyAgLy8gbGluayB0aGUgbmV3IExGcmFtZSBmb3IgcmV1c2UuXG4gIHJldHVybiBsRnJhbWU7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBsZWF2ZVZpZXcoKSB7XG4gIGluc3RydWN0aW9uU3RhdGUubEZyYW1lID0gaW5zdHJ1Y3Rpb25TdGF0ZS5sRnJhbWUucGFyZW50O1xufVxuXG5leHBvcnQgZnVuY3Rpb24gbmV4dENvbnRleHRJbXBsPFQgPSBhbnk+KGxldmVsOiBudW1iZXIpOiBUIHtcbiAgY29uc3QgY29udGV4dExWaWV3ID0gaW5zdHJ1Y3Rpb25TdGF0ZS5sRnJhbWUuY29udGV4dExWaWV3ID1cbiAgICAgIHdhbGtVcFZpZXdzKGxldmVsLCBpbnN0cnVjdGlvblN0YXRlLmxGcmFtZS5jb250ZXh0TFZpZXcgISk7XG4gIHJldHVybiBjb250ZXh0TFZpZXdbQ09OVEVYVF0gYXMgVDtcbn1cblxuZnVuY3Rpb24gd2Fsa1VwVmlld3MobmVzdGluZ0xldmVsOiBudW1iZXIsIGN1cnJlbnRWaWV3OiBMVmlldyk6IExWaWV3IHtcbiAgd2hpbGUgKG5lc3RpbmdMZXZlbCA+IDApIHtcbiAgICBuZ0Rldk1vZGUgJiYgYXNzZXJ0RGVmaW5lZChcbiAgICAgICAgICAgICAgICAgICAgIGN1cnJlbnRWaWV3W0RFQ0xBUkFUSU9OX1ZJRVddLFxuICAgICAgICAgICAgICAgICAgICAgJ0RlY2xhcmF0aW9uIHZpZXcgc2hvdWxkIGJlIGRlZmluZWQgaWYgbmVzdGluZyBsZXZlbCBpcyBncmVhdGVyIHRoYW4gMC4nKTtcbiAgICBjdXJyZW50VmlldyA9IGN1cnJlbnRWaWV3W0RFQ0xBUkFUSU9OX1ZJRVddICE7XG4gICAgbmVzdGluZ0xldmVsLS07XG4gIH1cbiAgcmV0dXJuIGN1cnJlbnRWaWV3O1xufVxuXG4vKipcbiAqIEdldHMgdGhlIGN1cnJlbnRseSBzZWxlY3RlZCBlbGVtZW50IGluZGV4LlxuICpcbiAqIFVzZWQgd2l0aCB7QGxpbmsgcHJvcGVydHl9IGluc3RydWN0aW9uIChhbmQgbW9yZSBpbiB0aGUgZnV0dXJlKSB0byBpZGVudGlmeSB0aGUgaW5kZXggaW4gdGhlXG4gKiBjdXJyZW50IGBMVmlld2AgdG8gYWN0IG9uLlxuICovXG5leHBvcnQgZnVuY3Rpb24gZ2V0U2VsZWN0ZWRJbmRleCgpIHtcbiAgcmV0dXJuIGluc3RydWN0aW9uU3RhdGUubEZyYW1lLnNlbGVjdGVkSW5kZXg7XG59XG5cbi8qKlxuICogU2V0cyB0aGUgbW9zdCByZWNlbnQgaW5kZXggcGFzc2VkIHRvIHtAbGluayBzZWxlY3R9XG4gKlxuICogVXNlZCB3aXRoIHtAbGluayBwcm9wZXJ0eX0gaW5zdHJ1Y3Rpb24gKGFuZCBtb3JlIGluIHRoZSBmdXR1cmUpIHRvIGlkZW50aWZ5IHRoZSBpbmRleCBpbiB0aGVcbiAqIGN1cnJlbnQgYExWaWV3YCB0byBhY3Qgb24uXG4gKlxuICogKE5vdGUgdGhhdCBpZiBhbiBcImV4aXQgZnVuY3Rpb25cIiB3YXMgc2V0IGVhcmxpZXIgKHZpYSBgc2V0RWxlbWVudEV4aXRGbigpYCkgdGhlbiB0aGF0IHdpbGwgYmVcbiAqIHJ1biBpZiBhbmQgd2hlbiB0aGUgcHJvdmlkZWQgYGluZGV4YCB2YWx1ZSBpcyBkaWZmZXJlbnQgZnJvbSB0aGUgY3VycmVudCBzZWxlY3RlZCBpbmRleCB2YWx1ZS4pXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBzZXRTZWxlY3RlZEluZGV4KGluZGV4OiBudW1iZXIpIHtcbiAgaW5zdHJ1Y3Rpb25TdGF0ZS5sRnJhbWUuc2VsZWN0ZWRJbmRleCA9IGluZGV4O1xufVxuXG5cbi8qKlxuICogU2V0cyB0aGUgbmFtZXNwYWNlIHVzZWQgdG8gY3JlYXRlIGVsZW1lbnRzIHRvIGAnaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmcnYCBpbiBnbG9iYWwgc3RhdGUuXG4gKlxuICogQGNvZGVHZW5BcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIMm1ybVuYW1lc3BhY2VTVkcoKSB7XG4gIGluc3RydWN0aW9uU3RhdGUubEZyYW1lLmN1cnJlbnROYW1lc3BhY2UgPSAnaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmcnO1xufVxuXG4vKipcbiAqIFNldHMgdGhlIG5hbWVzcGFjZSB1c2VkIHRvIGNyZWF0ZSBlbGVtZW50cyB0byBgJ2h0dHA6Ly93d3cudzMub3JnLzE5OTgvTWF0aE1MLydgIGluIGdsb2JhbCBzdGF0ZS5cbiAqXG4gKiBAY29kZUdlbkFwaVxuICovXG5leHBvcnQgZnVuY3Rpb24gybXJtW5hbWVzcGFjZU1hdGhNTCgpIHtcbiAgaW5zdHJ1Y3Rpb25TdGF0ZS5sRnJhbWUuY3VycmVudE5hbWVzcGFjZSA9ICdodHRwOi8vd3d3LnczLm9yZy8xOTk4L01hdGhNTC8nO1xufVxuXG4vKipcbiAqIFNldHMgdGhlIG5hbWVzcGFjZSB1c2VkIHRvIGNyZWF0ZSBlbGVtZW50cyB0byBgbnVsbGAsIHdoaWNoIGZvcmNlcyBlbGVtZW50IGNyZWF0aW9uIHRvIHVzZVxuICogYGNyZWF0ZUVsZW1lbnRgIHJhdGhlciB0aGFuIGBjcmVhdGVFbGVtZW50TlNgLlxuICpcbiAqIEBjb2RlR2VuQXBpXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiDJtcm1bmFtZXNwYWNlSFRNTCgpIHtcbiAgbmFtZXNwYWNlSFRNTEludGVybmFsKCk7XG59XG5cbi8qKlxuICogU2V0cyB0aGUgbmFtZXNwYWNlIHVzZWQgdG8gY3JlYXRlIGVsZW1lbnRzIHRvIGBudWxsYCwgd2hpY2ggZm9yY2VzIGVsZW1lbnQgY3JlYXRpb24gdG8gdXNlXG4gKiBgY3JlYXRlRWxlbWVudGAgcmF0aGVyIHRoYW4gYGNyZWF0ZUVsZW1lbnROU2AuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBuYW1lc3BhY2VIVE1MSW50ZXJuYWwoKSB7XG4gIGluc3RydWN0aW9uU3RhdGUubEZyYW1lLmN1cnJlbnROYW1lc3BhY2UgPSBudWxsO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0TmFtZXNwYWNlKCk6IHN0cmluZ3xudWxsIHtcbiAgcmV0dXJuIGluc3RydWN0aW9uU3RhdGUubEZyYW1lLmN1cnJlbnROYW1lc3BhY2U7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBzZXRDdXJyZW50U3R5bGVTYW5pdGl6ZXIoc2FuaXRpemVyOiBTdHlsZVNhbml0aXplRm4gfCBudWxsKSB7XG4gIGluc3RydWN0aW9uU3RhdGUubEZyYW1lLmN1cnJlbnRTYW5pdGl6ZXIgPSBzYW5pdGl6ZXI7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiByZXNldEN1cnJlbnRTdHlsZVNhbml0aXplcigpIHtcbiAgc2V0Q3VycmVudFN0eWxlU2FuaXRpemVyKG51bGwpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gZ2V0Q3VycmVudFN0eWxlU2FuaXRpemVyKCkge1xuICAvLyBUT0RPKG1pc2tvKTogVGhpcyBzaG91bGQgdGhyb3cgd2hlbiB0aGVyZSBpcyBubyBMVmlldywgYnV0IGl0IHR1cm5zIG91dCB3ZSBjYW4gZ2V0IGhlcmUgZnJvbVxuICAvLyBgTm9kZVN0eWxlRGVidWdgIGhlbmNlIHdlIHJldHVybiBgbnVsbGAuIFRoaXMgc2hvdWxkIGJlIGZpeGVkXG4gIGNvbnN0IGxGcmFtZSA9IGluc3RydWN0aW9uU3RhdGUubEZyYW1lO1xuICByZXR1cm4gbEZyYW1lID09PSBudWxsID8gbnVsbCA6IGxGcmFtZS5jdXJyZW50U2FuaXRpemVyO1xufVxuIl19