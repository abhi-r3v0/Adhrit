/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/hooks.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { assertEqual, assertNotEqual } from '../util/assert';
import { assertFirstCreatePass } from './assert';
import { FLAGS, PREORDER_HOOK_FLAGS } from './interfaces/view';
import { getCheckNoChangesMode } from './state';
/**
 * Adds all directive lifecycle hooks from the given `DirectiveDef` to the given `TView`.
 *
 * Must be run *only* on the first template pass.
 *
 * Sets up the pre-order hooks on the provided `tView`,
 * see {\@link HookData} for details about the data structure.
 *
 * @param {?} directiveIndex The index of the directive in LView
 * @param {?} directiveDef The definition containing the hooks to setup in tView
 * @param {?} tView The current TView
 * @return {?}
 */
export function registerPreOrderHooks(directiveIndex, directiveDef, tView) {
    ngDevMode && assertFirstCreatePass(tView);
    const { onChanges, onInit, doCheck } = directiveDef;
    if (onChanges) {
        (tView.preOrderHooks || (tView.preOrderHooks = [])).push(directiveIndex, onChanges);
        (tView.preOrderCheckHooks || (tView.preOrderCheckHooks = [])).push(directiveIndex, onChanges);
    }
    if (onInit) {
        (tView.preOrderHooks || (tView.preOrderHooks = [])).push(-directiveIndex, onInit);
    }
    if (doCheck) {
        (tView.preOrderHooks || (tView.preOrderHooks = [])).push(directiveIndex, doCheck);
        (tView.preOrderCheckHooks || (tView.preOrderCheckHooks = [])).push(directiveIndex, doCheck);
    }
}
/**
 *
 * Loops through the directives on the provided `tNode` and queues hooks to be
 * run that are not initialization hooks.
 *
 * Should be executed during `elementEnd()` and similar to
 * preserve hook execution order. Content, view, and destroy hooks for projected
 * components and directives must be called *before* their hosts.
 *
 * Sets up the content, view, and destroy hooks on the provided `tView`,
 * see {\@link HookData} for details about the data structure.
 *
 * NOTE: This does not set up `onChanges`, `onInit` or `doCheck`, those are set up
 * separately at `elementStart`.
 *
 * @param {?} tView The current TView
 * @param {?} tNode The TNode whose directives are to be searched for hooks to queue
 * @return {?}
 */
export function registerPostOrderHooks(tView, tNode) {
    ngDevMode && assertFirstCreatePass(tView);
    // It's necessary to loop through the directives at elementEnd() (rather than processing in
    // directiveCreate) so we can preserve the current hook order. Content, view, and destroy
    // hooks for projected components and directives must be called *before* their hosts.
    for (let i = tNode.directiveStart, end = tNode.directiveEnd; i < end; i++) {
        /** @type {?} */
        const directiveDef = (/** @type {?} */ (tView.data[i]));
        if (directiveDef.afterContentInit) {
            (tView.contentHooks || (tView.contentHooks = [])).push(-i, directiveDef.afterContentInit);
        }
        if (directiveDef.afterContentChecked) {
            (tView.contentHooks || (tView.contentHooks = [])).push(i, directiveDef.afterContentChecked);
            (tView.contentCheckHooks || (tView.contentCheckHooks = [])).push(i, directiveDef.afterContentChecked);
        }
        if (directiveDef.afterViewInit) {
            (tView.viewHooks || (tView.viewHooks = [])).push(-i, directiveDef.afterViewInit);
        }
        if (directiveDef.afterViewChecked) {
            (tView.viewHooks || (tView.viewHooks = [])).push(i, directiveDef.afterViewChecked);
            (tView.viewCheckHooks || (tView.viewCheckHooks = [])).push(i, directiveDef.afterViewChecked);
        }
        if (directiveDef.onDestroy != null) {
            (tView.destroyHooks || (tView.destroyHooks = [])).push(i, directiveDef.onDestroy);
        }
    }
}
/**
 * Executing hooks requires complex logic as we need to deal with 2 constraints.
 *
 * 1. Init hooks (ngOnInit, ngAfterContentInit, ngAfterViewInit) must all be executed once and only
 * once, across many change detection cycles. This must be true even if some hooks throw, or if
 * some recursively trigger a change detection cycle.
 * To solve that, it is required to track the state of the execution of these init hooks.
 * This is done by storing and maintaining flags in the view: the {@link InitPhaseState},
 * and the index within that phase. They can be seen as a cursor in the following structure:
 * [[onInit1, onInit2], [afterContentInit1], [afterViewInit1, afterViewInit2, afterViewInit3]]
 * They are are stored as flags in LView[FLAGS].
 *
 * 2. Pre-order hooks can be executed in batches, because of the select instruction.
 * To be able to pause and resume their execution, we also need some state about the hook's array
 * that is being processed:
 * - the index of the next hook to be executed
 * - the number of init hooks already found in the processed part of the  array
 * They are are stored as flags in LView[PREORDER_HOOK_FLAGS].
 */
/**
 * Executes pre-order check hooks ( OnChanges, DoChanges) given a view where all the init hooks were
 * executed once. This is a light version of executeInitAndCheckPreOrderHooks where we can skip read
 * / write of the init-hooks related flags.
 * @param {?} lView The LView where hooks are defined
 * @param {?} hooks Hooks to be run
 * @param {?=} nodeIndex 3 cases depending on the value:
 * - undefined: all hooks from the array should be executed (post-order case)
 * - null: execute hooks only from the saved index until the end of the array (pre-order case, when
 * flushing the remaining hooks)
 * - number: execute hooks only from the saved index until that node index exclusive (pre-order
 * case, when executing select(number))
 * @return {?}
 */
export function executeCheckHooks(lView, hooks, nodeIndex) {
    callHooks(lView, hooks, 3 /* InitPhaseCompleted */, nodeIndex);
}
/**
 * Executes post-order init and check hooks (one of AfterContentInit, AfterContentChecked,
 * AfterViewInit, AfterViewChecked) given a view where there are pending init hooks to be executed.
 * @param {?} lView The LView where hooks are defined
 * @param {?} hooks Hooks to be run
 * @param {?} initPhase A phase for which hooks should be run
 * @param {?=} nodeIndex 3 cases depending on the value:
 * - undefined: all hooks from the array should be executed (post-order case)
 * - null: execute hooks only from the saved index until the end of the array (pre-order case, when
 * flushing the remaining hooks)
 * - number: execute hooks only from the saved index until that node index exclusive (pre-order
 * case, when executing select(number))
 * @return {?}
 */
export function executeInitAndCheckHooks(lView, hooks, initPhase, nodeIndex) {
    ngDevMode && assertNotEqual(initPhase, 3 /* InitPhaseCompleted */, 'Init pre-order hooks should not be called more than once');
    if ((lView[FLAGS] & 3 /* InitPhaseStateMask */) === initPhase) {
        callHooks(lView, hooks, initPhase, nodeIndex);
    }
}
/**
 * @param {?} lView
 * @param {?} initPhase
 * @return {?}
 */
export function incrementInitPhaseFlags(lView, initPhase) {
    ngDevMode &&
        assertNotEqual(initPhase, 3 /* InitPhaseCompleted */, 'Init hooks phase should not be incremented after all init hooks have been run.');
    /** @type {?} */
    let flags = lView[FLAGS];
    if ((flags & 3 /* InitPhaseStateMask */) === initPhase) {
        flags &= 1023 /* IndexWithinInitPhaseReset */;
        flags += 1 /* InitPhaseStateIncrementer */;
        lView[FLAGS] = flags;
    }
}
/**
 * Calls lifecycle hooks with their contexts, skipping init hooks if it's not
 * the first LView pass
 *
 * @param {?} currentView The current view
 * @param {?} arr The array in which the hooks are found
 * @param {?} initPhase
 * @param {?} currentNodeIndex 3 cases depending on the value:
 * - undefined: all hooks from the array should be executed (post-order case)
 * - null: execute hooks only from the saved index until the end of the array (pre-order case, when
 * flushing the remaining hooks)
 * - number: execute hooks only from the saved index until that node index exclusive (pre-order
 * case, when executing select(number))
 * @return {?}
 */
function callHooks(currentView, arr, initPhase, currentNodeIndex) {
    ngDevMode && assertEqual(getCheckNoChangesMode(), false, 'Hooks should never be run in the check no changes mode.');
    /** @type {?} */
    const startIndex = currentNodeIndex !== undefined ?
        (currentView[PREORDER_HOOK_FLAGS] & 65535 /* IndexOfTheNextPreOrderHookMaskMask */) :
        0;
    /** @type {?} */
    const nodeIndexLimit = currentNodeIndex != null ? currentNodeIndex : -1;
    /** @type {?} */
    let lastNodeIndexFound = 0;
    for (let i = startIndex; i < arr.length; i++) {
        /** @type {?} */
        const hook = (/** @type {?} */ (arr[i + 1]));
        if (typeof hook === 'number') {
            lastNodeIndexFound = (/** @type {?} */ (arr[i]));
            if (currentNodeIndex != null && lastNodeIndexFound >= currentNodeIndex) {
                break;
            }
        }
        else {
            /** @type {?} */
            const isInitHook = arr[i] < 0;
            if (isInitHook)
                currentView[PREORDER_HOOK_FLAGS] += 65536 /* NumberOfInitHooksCalledIncrementer */;
            if (lastNodeIndexFound < nodeIndexLimit || nodeIndexLimit == -1) {
                callHook(currentView, initPhase, arr, i);
                currentView[PREORDER_HOOK_FLAGS] =
                    (currentView[PREORDER_HOOK_FLAGS] & 4294901760 /* NumberOfInitHooksCalledMask */) + i +
                        2;
            }
            i++;
        }
    }
}
/**
 * Execute one hook against the current `LView`.
 *
 * @param {?} currentView The current view
 * @param {?} initPhase
 * @param {?} arr The array in which the hooks are found
 * @param {?} i The current index within the hook data array
 * @return {?}
 */
function callHook(currentView, initPhase, arr, i) {
    /** @type {?} */
    const isInitHook = arr[i] < 0;
    /** @type {?} */
    const hook = (/** @type {?} */ (arr[i + 1]));
    /** @type {?} */
    const directiveIndex = isInitHook ? -arr[i] : (/** @type {?} */ (arr[i]));
    /** @type {?} */
    const directive = currentView[directiveIndex];
    if (isInitHook) {
        /** @type {?} */
        const indexWithintInitPhase = currentView[FLAGS] >> 10 /* IndexWithinInitPhaseShift */;
        // The init phase state must be always checked here as it may have been recursively
        // updated
        if (indexWithintInitPhase <
            (currentView[PREORDER_HOOK_FLAGS] >> 16 /* NumberOfInitHooksCalledShift */) &&
            (currentView[FLAGS] & 3 /* InitPhaseStateMask */) === initPhase) {
            currentView[FLAGS] += 1024 /* IndexWithinInitPhaseIncrementer */;
            hook.call(directive);
        }
    }
    else {
        hook.call(directive);
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaG9va3MuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL2hvb2tzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQVFBLE9BQU8sRUFBQyxXQUFXLEVBQUUsY0FBYyxFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFFM0QsT0FBTyxFQUFDLHFCQUFxQixFQUFDLE1BQU0sVUFBVSxDQUFDO0FBRy9DLE9BQU8sRUFBQyxLQUFLLEVBQStDLG1CQUFtQixFQUEyQixNQUFNLG1CQUFtQixDQUFDO0FBQ3BJLE9BQU8sRUFBQyxxQkFBcUIsRUFBQyxNQUFNLFNBQVMsQ0FBQzs7Ozs7Ozs7Ozs7Ozs7QUFnQjlDLE1BQU0sVUFBVSxxQkFBcUIsQ0FDakMsY0FBc0IsRUFBRSxZQUErQixFQUFFLEtBQVk7SUFDdkUsU0FBUyxJQUFJLHFCQUFxQixDQUFDLEtBQUssQ0FBQyxDQUFDO1VBQ3BDLEVBQUMsU0FBUyxFQUFFLE1BQU0sRUFBRSxPQUFPLEVBQUMsR0FBRyxZQUFZO0lBRWpELElBQUksU0FBUyxFQUFFO1FBQ2IsQ0FBQyxLQUFLLENBQUMsYUFBYSxJQUFJLENBQUMsS0FBSyxDQUFDLGFBQWEsR0FBRyxFQUFFLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQyxjQUFjLEVBQUUsU0FBUyxDQUFDLENBQUM7UUFDcEYsQ0FBQyxLQUFLLENBQUMsa0JBQWtCLElBQUksQ0FBQyxLQUFLLENBQUMsa0JBQWtCLEdBQUcsRUFBRSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsY0FBYyxFQUFFLFNBQVMsQ0FBQyxDQUFDO0tBQy9GO0lBRUQsSUFBSSxNQUFNLEVBQUU7UUFDVixDQUFDLEtBQUssQ0FBQyxhQUFhLElBQUksQ0FBQyxLQUFLLENBQUMsYUFBYSxHQUFHLEVBQUUsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDLENBQUMsY0FBYyxFQUFFLE1BQU0sQ0FBQyxDQUFDO0tB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QUFjLEdBQUcsVUFBVSxDQUFDLENBQUMsQ0FBQyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsbUJBQUEsR0FBRyxDQUFDLENBQUMsQ0FBQyxFQUFVOztVQUN4RCxTQUFTLEdBQUcsV0FBVyxDQUFDLGNBQWMsQ0FBQztJQUM3QyxJQUFJLFVBQVUsRUFBRTs7Y0FDUixxQkFBcUIsR0FBRyxXQUFXLENBQUMsS0FBSyxDQUFDLHNDQUF3QztRQUN4RixtRkFBbUY7UUFDbkYsVUFBVTtRQUNWLElBQUkscUJBQXFCO1lBQ2pCLENBQUMsV0FBVyxDQUFDLG1CQUFtQixDQUFDLHlDQUFrRCxDQUFDO1lBQ3hGLENBQUMsV0FBVyxDQUFDLEtBQUssQ0FBQyw2QkFBZ0MsQ0FBQyxLQUFLLFNBQVMsRUFBRTtZQUN0RSxXQUFXLENBQUMsS0FBSyxDQUFDLDhDQUE4QyxDQUFDO1lBQ2pFLElBQUksQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLENBQUM7U0FDdEI7S0FDRjtTQUFNO1FBQ0wsSUFBSSxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQztLQUN0QjtBQUNILENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7YXNzZXJ0RXF1YWwsIGFzc2VydE5vdEVxdWFsfSBmcm9tICcuLi91dGlsL2Fzc2VydCc7XG5cbmltcG9ydCB7YXNzZXJ0Rmlyc3RDcmVhdGVQYXNzfSBmcm9tICcuL2Fzc2VydCc7XG5pbXBvcnQge0RpcmVjdGl2ZURlZn0gZnJvbSAnLi9pbnRlcmZhY2VzL2RlZmluaXRpb24nO1xuaW1wb3J0IHtUTm9kZX0gZnJvbSAnLi9pbnRlcmZhY2VzL25vZGUnO1xuaW1wb3J0IHtGTEFHUywgSG9va0RhdGEsIEluaXRQaGFzZVN0YXRlLCBMVmlldywgTFZpZXdGbGFncywgUFJFT1JERVJfSE9PS19GTEFHUywgUHJlT3JkZXJIb29rRmxhZ3MsIFRWaWV3fSBmcm9tICcuL2ludGVyZmFjZXMvdmlldyc7XG5pbXBvcnQge2dldENoZWNrTm9DaGFuZ2VzTW9kZX0gZnJvbSAnLi9zdGF0ZSc7XG5cblxuXG4vKipcbiAqIEFkZHMgYWxsIGRpcmVjdGl2ZSBsaWZlY3ljbGUgaG9va3MgZnJvbSB0aGUgZ2l2ZW4gYERpcmVjdGl2ZURlZmAgdG8gdGhlIGdpdmVuIGBUVmlld2AuXG4gKlxuICogTXVzdCBiZSBydW4gKm9ubHkqIG9uIHRoZSBmaXJzdCB0ZW1wbGF0ZSBwYXNzLlxuICpcbiAqIFNldHMgdXAgdGhlIHByZS1vcmRlciBob29rcyBvbiB0aGUgcHJvdmlkZWQgYHRWaWV3YCxcbiAqIHNlZSB7QGxpbmsgSG9va0RhdGF9IGZvciBkZXRhaWxzIGFib3V0IHRoZSBkYXRhIHN0cnVjdHVyZS5cbiAqXG4gKiBAcGFyYW0gZGlyZWN0aXZlSW5kZXggVGhlIGluZGV4IG9mIHRoZSBkaXJlY3RpdmUgaW4gTFZpZXdcbiAqIEBwYXJhbSBkaXJlY3RpdmVEZWYgVGhlIGRlZmluaXRpb24gY29udGFpbmluZyB0aGUgaG9va3MgdG8gc2V0dXAgaW4gdFZpZXdcbiAqIEBwYXJhbSB0VmlldyBUaGUgY3VycmVudCBUVmlld1xuICovXG5leHBvcnQgZnVuY3Rpb24gcmVnaXN0ZXJQcmVPcmRlckhvb2tzKFxuICAgIGRpcmVjdGl2ZUluZGV4OiBudW1iZXIsIGRpcmVjdGl2ZURlZjogRGlyZWN0aXZlRGVmPGFueT4sIHRWaWV3OiBUVmlldyk6IHZvaWQge1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0Rmlyc3RDcmVhdGVQYXNzKHRWaWV3KTtcbiAgY29uc3Qge29uQ2hhbmdlcywgb25Jbml0LCBkb0NoZWNrfSA9IGRpcmVjdGl2ZURlZjtcblxuICBpZiAob25DaGFuZ2VzKSB7XG4gICAgKHRWaWV3LnByZU9yZGVySG9va3MgfHwgKHRWaWV3LnByZU9yZGVySG9va3MgPSBbXSkpLnB1c2goZGlyZWN0aXZlSW5kZXgsIG9uQ2hhbmdlcyk7XG4gICAgKHRWaWV3LnByZU9yZGVyQ2hlY2tIb29rcyB8fCAodFZpZXcucHJlT3JkZXJDaGVja0hvb2tzID0gW10pKS5wdXNoKGRpcmVjdGl2ZUluZGV4LCBvbkNoYW5nZXMpO1xuICB9XG5cbiAgaWYgKG9uSW5pdCkge1xuICAgICh0Vmlldy5wcmVPcmRlckhvb2tzIHx8ICh0Vmlldy5wcmVPcmRlckhvb2tzID0gW10pKS5wdXNoKC1kaXJlY3RpdmVJbmRleCwgb25Jbml0KTtcbiAgfVxuXG4gIGlmIChkb0NoZWNrKSB7XG4gICAgKHRWaWV3LnByZU9yZGVySG9va3MgfHwgKHRWaWV3LnByZU9yZGVySG9va3MgPSBbXSkpLnB1c2goZGlyZWN0aXZlSW5kZXgsIGRvQ2hlY2spO1xuICAgICh0Vmlldy5wcmVPcmRlckNoZWNrSG9va3MgfHwgKHRWaWV3LnByZU9yZGVyQ2hlY2tIb29rcyA9IFtdKSkucHVzaChkaXJlY3RpdmVJbmRleCwgZG9DaGVjayk7XG4gIH1cbn1cblxuLyoqXG4gKlxuICogTG9vcHMgdGhyb3VnaCB0aGUgZGlyZWN0aXZlcyBvbiB0aGUgcHJvdmlkZWQgYHROb2RlYCBhbmQgcXVldWVzIGhvb2tzIHRvIGJlXG4gKiBydW4gdGhhdCBhcmUgbm90IGluaXRpYWxpemF0aW9uIGhvb2tzLlxuICpcbiAqIFNob3VsZCBiZSBleGVjdXRlZCBkdXJpbmcgYGVsZW1lbnRFbmQoKWAgYW5kIHNpbWlsYXIgdG9cbiAqIHByZXNlcnZlIGhvb2sgZXhlY3V0aW9uIG9yZGVyLiBDb250ZW50LCB2aWV3LCBhbmQgZGVzdHJveSBob29rcyBmb3IgcHJvamVjdGVkXG4gKiBjb21wb25lbnRzIGFuZCBkaXJlY3RpdmVzIG11c3QgYmUgY2FsbGVkICpiZWZvcmUqIHRoZWlyIGhvc3RzLlxuICpcbiAqIFNldHMgdXAgdGhlIGNvbnRlbnQsIHZpZXcsIGFuZCBkZXN0cm95IGhvb2tzIG9uIHRoZSBwcm92aWRlZCBgdFZpZXdgLFxuICogc2VlIHtAbGluayBIb29rRGF0YX0gZm9yIGRldGFpbHMgYWJvdXQgdGhlIGRhdGEgc3RydWN0dXJlLlxuICpcbiAqIE5PVEU6IFRoaXMgZG9lcyBub3Qgc2V0IHVwIGBvbkNoYW5nZXNgLCBgb25Jbml0YCBvciBgZG9DaGVja2AsIHRob3NlIGFyZSBzZXQgdXBcbiAqIHNlcGFyYXRlbHkgYXQgYGVsZW1lbnRTdGFydGAuXG4gKlxuICogQHBhcmFtIHRWaWV3IFRoZSBjdXJyZW50IFRWaWV3XG4gKiBAcGFyYW0gdE5vZGUgVGhlIFROb2RlIHdob3NlIGRpcmVjdGl2ZXMgYXJlIHRvIGJlIHNlYXJjaGVkIGZvciBob29rcyB0byBxdWV1ZVxuICovXG5leHBvcnQgZnVuY3Rpb24gcmVnaXN0ZXJQb3N0T3JkZXJIb29rcyh0VmlldzogVFZpZXcsIHROb2RlOiBUTm9kZSk6IHZvaWQge1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0Rmlyc3RDcmVhdGVQYXNzKHRWaWV3KTtcbiAgLy8gSXQncyBuZWNlc3NhcnkgdG8gbG9vcCB0aHJvdWdoIHRoZSBkaXJlY3RpdmVzIGF0IGVsZW1lbnRFbmQoKSAocmF0aGVyIHRoYW4gcHJvY2Vzc2luZyBpblxuICAvLyBkaXJlY3RpdmVDcmVhdGUpIHNvIHdlIGNhbiBwcmVzZXJ2ZSB0aGUgY3VycmVudCBob29rIG9yZGVyLiBDb250ZW50LCB2aWV3LCBhbmQgZGVzdHJveVxuICAvLyBob29rcyBmb3IgcHJvamVjdGVkIGNvbXBvbmVudHMgYW5kIGRpcmVjdGl2ZXMgbXVzdCBiZSBjYWxsZWQgKmJlZm9yZSogdGhlaXIgaG9zdHMuXG4gIGZvciAobGV0IGkgPSB0Tm9kZS5kaXJlY3RpdmVTdGFydCwgZW5kID0gdE5vZGUuZGlyZWN0aXZlRW5kOyBpIDwgZW5kOyBpKyspIHtcbiAgICBjb25zdCBkaXJlY3RpdmVEZWYgPSB0Vmlldy5kYXRhW2ldIGFzIERpcmVjdGl2ZURlZjxhbnk+O1xuICAgIGlmIChkaXJlY3RpdmVEZWYuYWZ0ZXJDb250ZW50SW5pdCkge1xuICAgICAgKHRWaWV3LmNvbnRlbnRIb29rcyB8fCAodFZpZXcuY29udGVudEhvb2tzID0gW10pKS5wdXNoKC1pLCBkaXJlY3RpdmVEZWYuYWZ0ZXJDb250ZW50SW5pdCk7XG4gICAgfVxuXG4gICAgaWYgKGRpcmVjdGl2ZURlZi5hZnRlckNvbnRlbnRDaGVja2VkKSB7XG4gICAgICAodFZpZXcuY29udGVudEhvb2tzIHx8ICh0Vmlldy5jb250ZW50SG9va3MgPSBbXSkpLnB1c2goaSwgZGlyZWN0aXZlRGVmLmFmdGVyQ29udGVudENoZWNrZWQpO1xuICAgICAgKHRWaWV3LmNvbnRlbnRDaGVja0hvb2tzIHx8ICh0Vmlldy5jb250ZW50Q2hlY2tIb29rcyA9IFtcbiAgICAgICBdKSkucHVzaChpLCBkaXJlY3RpdmVEZWYuYWZ0ZXJDb250ZW50Q2hlY2tlZCk7XG4gICAgfVxuXG4gICAgaWYgKGRpcmVjdGl2ZURlZi5hZnRlclZpZXdJbml0KSB7XG4gICAgICAodFZpZXcudmlld0hvb2tzIHx8ICh0Vmlldy52aWV3SG9va3MgPSBbXSkpLnB1c2goLWksIGRpcmVjdGl2ZURlZi5hZnRlclZpZXdJbml0KTtcbiAgICB9XG5cbiAgICBpZiAoZGlyZWN0aXZlRGVmLmFmdGVyVmlld0NoZWNrZWQpIHtcbiAgICAgICh0Vmlldy52aWV3SG9va3MgfHwgKHRWaWV3LnZpZXdIb29rcyA9IFtdKSkucHVzaChpLCBkaXJlY3RpdmVEZWYuYWZ0ZXJWaWV3Q2hlY2tlZCk7XG4gICAgICAodFZpZXcudmlld0NoZWNrSG9va3MgfHwgKHRWaWV3LnZpZXdDaGVja0hvb2tzID0gW10pKS5wdXNoKGksIGRpcmVjdGl2ZURlZi5hZnRlclZpZXdDaGVja2VkKTtcbiAgICB9XG5cbiAgICBpZiAoZGlyZWN0aXZlRGVmLm9uRGVzdHJveSAhPSBudWxsKSB7XG4gICAgICAodFZpZXcuZGVzdHJveUhvb2tzIHx8ICh0Vmlldy5kZXN0cm95SG9va3MgPSBbXSkpLnB1c2goaSwgZGlyZWN0aXZlRGVmLm9uRGVzdHJveSk7XG4gICAgfVxuICB9XG59XG5cbi8qKlxuICogRXhlY3V0aW5nIGhvb2tzIHJlcXVpcmVzIGNvbXBsZXggbG9naWMgYXMgd2UgbmVlZCB0byBkZWFsIHdpdGggMiBjb25zdHJhaW50cy5cbiAqXG4gKiAxLiBJbml0IGhvb2tzIChuZ09uSW5pdCwgbmdBZnRlckNvbnRlbnRJbml0LCBuZ0FmdGVyVmlld0luaXQpIG11c3QgYWxsIGJlIGV4ZWN1dGVkIG9uY2UgYW5kIG9ubHlcbiAqIG9uY2UsIGFjcm9zcyBtYW55IGNoYW5nZSBkZXRlY3Rpb24gY3ljbGVzLiBUaGlzIG11c3QgYmUgdHJ1ZSBldmVuIGlmIHNvbWUgaG9va3MgdGhyb3csIG9yIGlmXG4gKiBzb21lIHJlY3Vyc2l2ZWx5IHRyaWdnZXIgYSBjaGFuZ2UgZGV0ZWN0aW9uIGN5Y2xlLlxuICogVG8gc29sdmUgdGhhdCwgaXQgaXMgcmVxdWlyZWQgdG8gdHJhY2sgdGhlIHN0YXRlIG9mIHRoZSBleGVjdXRpb24gb2YgdGhlc2UgaW5pdCBob29rcy5cbiAqIFRoaXMgaXMgZG9uZSBieSBzdG9yaW5nIGFuZCBtYWludGFpbmluZyBmbGFncyBpbiB0aGUgdmlldzogdGhlIHtAbGluayBJbml0UGhhc2VTdGF0ZX0sXG4gKiBhbmQgdGhlIGluZGV4IHdpdGhpbiB0aGF0IHBoYXNlLiBUaGV5IGNhbiBiZSBzZWVuIGFzIGEgY3Vyc29yIGluIHRoZSBmb2xsb3dpbmcgc3RydWN0dXJlOlxuICogW1tvbkluaXQxLCBvbkluaXQyXSwgW2FmdGVyQ29udGVudEluaXQxXSwgW2FmdGVyVmlld0luaXQxLCBhZnRlclZpZXdJbml0MiwgYWZ0ZXJWaWV3SW5pdDNdXVxuICogVGhleSBhcmUgYXJlIHN0b3JlZCBhcyBmbGFncyBpbiBMVmlld1tGTEFHU10uXG4gKlxuICogMi4gUHJlLW9yZGVyIGhvb2tzIGNhbiBiZSBleGVjdXRlZCBpbiBiYXRjaGVzLCBiZWNhdXNlIG9mIHRoZSBzZWxlY3QgaW5zdHJ1Y3Rpb24uXG4gKiBUbyBiZSBhYmxlIHRvIHBhdXNlIGFuZCByZXN1bWUgdGhlaXIgZXhlY3V0aW9uLCB3ZSBhbHNvIG5lZWQgc29tZSBzdGF0ZSBhYm91dCB0aGUgaG9vaydzIGFycmF5XG4gKiB0aGF0IGlzIGJlaW5nIHByb2Nlc3NlZDpcbiAqIC0gdGhlIGluZGV4IG9mIHRoZSBuZXh0IGhvb2sgdG8gYmUgZXhlY3V0ZWRcbiAqIC0gdGhlIG51bWJlciBvZiBpbml0IGhvb2tzIGFscmVhZHkgZm91bmQgaW4gdGhlIHByb2Nlc3NlZCBwYXJ0IG9mIHRoZSAgYXJyYXlcbiAqIFRoZXkgYXJlIGFyZSBzdG9yZWQgYXMgZmxhZ3MgaW4gTFZpZXdbUFJFT1JERVJfSE9PS19GTEFHU10uXG4gKi9cblxuXG4vKipcbiAqIEV4ZWN1dGVzIHByZS1vcmRlciBjaGVjayBob29rcyAoIE9uQ2hhbmdlcywgRG9DaGFuZ2VzKSBnaXZlbiBhIHZpZXcgd2hlcmUgYWxsIHRoZSBpbml0IGhvb2tzIHdlcmVcbiAqIGV4ZWN1dGVkIG9uY2UuIFRoaXMgaXMgYSBsaWdodCB2ZXJzaW9uIG9mIGV4ZWN1dGVJbml0QW5kQ2hlY2tQcmVPcmRlckhvb2tzIHdoZXJlIHdlIGNhbiBza2lwIHJlYWRcbiAqIC8gd3JpdGUgb2YgdGhlIGluaXQtaG9va3MgcmVsYXRlZCBmbGFncy5cbiAqIEBwYXJhbSBsVmlldyBUaGUgTFZpZXcgd2hlcmUgaG9va3MgYXJlIGRlZmluZWRcbiAqIEBwYXJhbSBob29rcyBIb29rcyB0byBiZSBydW5cbiAqIEBwYXJhbSBub2RlSW5kZXggMyBjYXNlcyBkZXBlbmRpbmcgb24gdGhlIHZhbHVlOlxuICogLSB1bmRlZmluZWQ6IGFsbCBob29rcyBmcm9tIHRoZSBhcnJheSBzaG91bGQgYmUgZXhlY3V0ZWQgKHBvc3Qtb3JkZXIgY2FzZSlcbiAqIC0gbnVsbDogZXhlY3V0ZSBob29rcyBvbmx5IGZyb20gdGhlIHNhdmVkIGluZGV4IHVudGlsIHRoZSBlbmQgb2YgdGhlIGFycmF5IChwcmUtb3JkZXIgY2FzZSwgd2hlblxuICogZmx1c2hpbmcgdGhlIHJlbWFpbmluZyBob29rcylcbiAqIC0gbnVtYmVyOiBleGVjdXRlIGhvb2tzIG9ubHkgZnJvbSB0aGUgc2F2ZWQgaW5kZXggdW50aWwgdGhhdCBub2RlIGluZGV4IGV4Y2x1c2l2ZSAocHJlLW9yZGVyXG4gKiBjYXNlLCB3aGVuIGV4ZWN1dGluZyBzZWxlY3QobnVtYmVyKSlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIGV4ZWN1dGVDaGVja0hvb2tzKGxWaWV3OiBMVmlldywgaG9va3M6IEhvb2tEYXRhLCBub2RlSW5kZXg/OiBudW1iZXIgfCBudWxsKSB7XG4gIGNhbGxIb29rcyhsVmlldywgaG9va3MsIEluaXRQaGFzZVN0YXRlLkluaXRQaGFzZUNvbXBsZXRlZCwgbm9kZUluZGV4KTtcbn1cblxuLyoqXG4gKiBFeGVjdXRlcyBwb3N0LW9yZGVyIGluaXQgYW5kIGNoZWNrIGhvb2tzIChvbmUgb2YgQWZ0ZXJDb250ZW50SW5pdCwgQWZ0ZXJDb250ZW50Q2hlY2tlZCxcbiAqIEFmdGVyVmlld0luaXQsIEFmdGVyVmlld0NoZWNrZWQpIGdpdmVuIGEgdmlldyB3aGVyZSB0aGVyZSBhcmUgcGVuZGluZyBpbml0IGhvb2tzIHRvIGJlIGV4ZWN1dGVkLlxuICogQHBhcmFtIGxWaWV3IFRoZSBMVmlldyB3aGVyZSBob29rcyBhcmUgZGVmaW5lZFxuICogQHBhcmFtIGhvb2tzIEhvb2tzIHRvIGJlIHJ1blxuICogQHBhcmFtIGluaXRQaGFzZSBBIHBoYXNlIGZvciB3aGljaCBob29rcyBzaG91bGQgYmUgcnVuXG4gKiBAcGFyYW0gbm9kZUluZGV4IDMgY2FzZXMgZGVwZW5kaW5nIG9uIHRoZSB2YWx1ZTpcbiAqIC0gdW5kZWZpbmVkOiBhbGwgaG9va3MgZnJvbSB0aGUgYXJyYXkgc2hvdWxkIGJlIGV4ZWN1dGVkIChwb3N0LW9yZGVyIGNhc2UpXG4gKiAtIG51bGw6IGV4ZWN1dGUgaG9va3Mgb25seSBmcm9tIHRoZSBzYXZlZCBpbmRleCB1bnRpbCB0aGUgZW5kIG9mIHRoZSBhcnJheSAocHJlLW9yZGVyIGNhc2UsIHdoZW5cbiAqIGZsdXNoaW5nIHRoZSByZW1haW5pbmcgaG9va3MpXG4gKiAtIG51bWJlcjogZXhlY3V0ZSBob29rcyBvbmx5IGZyb20gdGhlIHNhdmVkIGluZGV4IHVudGlsIHRoYXQgbm9kZSBpbmRleCBleGNsdXNpdmUgKHByZS1vcmRlclxuICogY2FzZSwgd2hlbiBleGVjdXRpbmcgc2VsZWN0KG51bWJlcikpXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBleGVjdXRlSW5pdEFuZENoZWNrSG9va3MoXG4gICAgbFZpZXc6IExWaWV3LCBob29rczogSG9va0RhdGEsIGluaXRQaGFzZTogSW5pdFBoYXNlU3RhdGUsIG5vZGVJbmRleD86IG51bWJlciB8IG51bGwpIHtcbiAgbmdEZXZNb2RlICYmIGFzc2VydE5vdEVxdWFsKFxuICAgICAgICAgICAgICAgICAgIGluaXRQaGFzZSwgSW5pdFBoYXNlU3RhdGUuSW5pdFBoYXNlQ29tcGxldGVkLFxuICAgICAgICAgICAgICAgICAgICdJbml0IHByZS1vcmRlciBob29rcyBzaG91bGQgbm90IGJlIGNhbGxlZCBtb3JlIHRoYW4gb25jZScpO1xuICBpZiAoKGxWaWV3W0ZMQUdTXSAmIExWaWV3RmxhZ3MuSW5pdFBoYXNlU3RhdGVNYXNrKSA9PT0gaW5pdFBoYXNlKSB7XG4gICAgY2FsbEhvb2tzKGxWaWV3LCBob29rcywgaW5pdFBoYXNlLCBub2RlSW5kZXgpO1xuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBpbmNyZW1lbnRJbml0UGhhc2VGbGFncyhsVmlldzogTFZpZXcsIGluaXRQaGFzZTogSW5pdFBoYXNlU3RhdGUpOiB2b2lkIHtcbiAgbmdEZXZNb2RlICYmXG4gICAgICBhc3NlcnROb3RFcXVhbChcbiAgICAgICAgICBpbml0UGhhc2UsIEluaXRQaGFzZVN0YXRlLkluaXRQaGFzZUNvbXBsZXRlZCxcbiAgICAgICAgICAnSW5pdCBob29rcyBwaGFzZSBzaG91bGQgbm90IGJlIGluY3JlbWVudGVkIGFmdGVyIGFsbCBpbml0IGhvb2tzIGhhdmUgYmVlbiBydW4uJyk7XG4gIGxldCBmbGFncyA9IGxWaWV3W0ZMQUdTXTtcbiAgaWYgKChmbGFncyAmIExWaWV3RmxhZ3MuSW5pdFBoYXNlU3RhdGVNYXNrKSA9PT0gaW5pdFBoYXNlKSB7XG4gICAgZmxhZ3MgJj0gTFZpZXdGbGFncy5JbmRleFdpdGhpbkluaXRQaGFzZVJlc2V0O1xuICAgIGZsYWdzICs9IExWaWV3RmxhZ3MuSW5pdFBoYXNlU3RhdGVJbmNyZW1lbnRlcjtcbiAgICBsVmlld1tGTEFHU10gPSBmbGFncztcbiAgfVxufVxuXG4vKipcbiAqIENhbGxzIGxpZmVjeWNsZSBob29rcyB3aXRoIHRoZWlyIGNvbnRleHRzLCBza2lwcGluZyBpbml0IGhvb2tzIGlmIGl0J3Mgbm90XG4gKiB0aGUgZmlyc3QgTFZpZXcgcGFzc1xuICpcbiAqIEBwYXJhbSBjdXJyZW50VmlldyBUaGUgY3VycmVudCB2aWV3XG4gKiBAcGFyYW0gYXJyIFRoZSBhcnJheSBpbiB3aGljaCB0aGUgaG9va3MgYXJlIGZvdW5kXG4gKiBAcGFyYW0gaW5pdFBoYXNlU3RhdGUgdGhlIGN1cnJlbnQgc3RhdGUgb2YgdGhlIGluaXQgcGhhc2VcbiAqIEBwYXJhbSBjdXJyZW50Tm9kZUluZGV4IDMgY2FzZXMgZGVwZW5kaW5nIG9uIHRoZSB2YWx1ZTpcbiAqIC0gdW5kZWZpbmVkOiBhbGwgaG9va3MgZnJvbSB0aGUgYXJyYXkgc2hvdWxkIGJlIGV4ZWN1dGVkIChwb3N0LW9yZGVyIGNhc2UpXG4gKiAtIG51bGw6IGV4ZWN1dGUgaG9va3Mgb25seSBmcm9tIHRoZSBzYXZlZCBpbmRleCB1bnRpbCB0aGUgZW5kIG9mIHRoZSBhcnJheSAocHJlLW9yZGVyIGNhc2UsIHdoZW5cbiAqIGZsdXNoaW5nIHRoZSByZW1haW5pbmcgaG9va3MpXG4gKiAtIG51bWJlcjogZXhlY3V0ZSBob29rcyBvbmx5IGZyb20gdGhlIHNhdmVkIGluZGV4IHVudGlsIHRoYXQgbm9kZSBpbmRleCBleGNsdXNpdmUgKHByZS1vcmRlclxuICogY2FzZSwgd2hlbiBleGVjdXRpbmcgc2VsZWN0KG51bWJlcikpXG4gKi9cbmZ1bmN0aW9uIGNhbGxIb29rcyhcbiAgICBjdXJyZW50VmlldzogTFZpZXcsIGFycjogSG9va0RhdGEsIGluaXRQaGFzZTogSW5pdFBoYXNlU3RhdGUsXG4gICAgY3VycmVudE5vZGVJbmRleDogbnVtYmVyIHwgbnVsbCB8IHVuZGVmaW5lZCk6IHZvaWQge1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0RXF1YWwoXG4gICAgICAgICAgICAgICAgICAgZ2V0Q2hlY2tOb0NoYW5nZXNNb2RlKCksIGZhbHNlLFxuICAgICAgICAgICAgICAgICAgICdIb29rcyBzaG91bGQgbmV2ZXIgYmUgcnVuIGluIHRoZSBjaGVjayBubyBjaGFuZ2VzIG1vZGUuJyk7XG4gIGNvbnN0IHN0YXJ0SW5kZXggPSBjdXJyZW50Tm9kZUluZGV4ICE9PSB1bmRlZmluZWQgP1xuICAgICAgKGN1cnJlbnRWaWV3W1BSRU9SREVSX0hPT0tfRkxBR1NdICYgUHJlT3JkZXJIb29rRmxhZ3MuSW5kZXhPZlRoZU5leHRQcmVPcmRlckhvb2tNYXNrTWFzaykgOlxuICAgICAgMDtcbiAgY29uc3Qgbm9kZUluZGV4TGltaXQgPSBjdXJyZW50Tm9kZUluZGV4ICE9IG51bGwgPyBjdXJyZW50Tm9kZUluZGV4IDogLTE7XG4gIGxldCBsYXN0Tm9kZUluZGV4Rm91bmQgPSAwO1xuICBmb3IgKGxldCBpID0gc3RhcnRJbmRleDsgaSA8IGFyci5sZW5ndGg7IGkrKykge1xuICAgIGNvbnN0IGhvb2sgPSBhcnJbaSArIDFdIGFzKCkgPT4gdm9pZDtcbiAgICBpZiAodHlwZW9mIGhvb2sgPT09ICdudW1iZXInKSB7XG4gICAgICBsYXN0Tm9kZUluZGV4Rm91bmQgPSBhcnJbaV0gYXMgbnVtYmVyO1xuICAgICAgaWYgKGN1cnJlbnROb2RlSW5kZXggIT0gbnVsbCAmJiBsYXN0Tm9kZUluZGV4Rm91bmQgPj0gY3VycmVudE5vZGVJbmRleCkge1xuICAgICAgICBicmVhaztcbiAgICAgIH1cbiAgICB9IGVsc2Uge1xuICAgICAgY29uc3QgaXNJbml0SG9vayA9IGFycltpXSA8IDA7XG4gICAgICBpZiAoaXNJbml0SG9vaylcbiAgICAgICAgY3VycmVudFZpZXdbUFJFT1JERVJfSE9PS19GTEFHU10gKz0gUHJlT3JkZXJIb29rRmxhZ3MuTnVtYmVyT2ZJbml0SG9va3NDYWxsZWRJbmNyZW1lbnRlcjtcbiAgICAgIGlmIChsYXN0Tm9kZUluZGV4Rm91bmQgPCBub2RlSW5kZXhMaW1pdCB8fCBub2RlSW5kZXhMaW1pdCA9PSAtMSkge1xuICAgICAgICBjYWxsSG9vayhjdXJyZW50VmlldywgaW5pdFBoYXNlLCBhcnIsIGkpO1xuICAgICAgICBjdXJyZW50Vmlld1tQUkVPUkRFUl9IT09LX0ZMQUdTXSA9XG4gICAgICAgICAgICAoY3VycmVudFZpZXdbUFJFT1JERVJfSE9PS19GTEFHU10gJiBQcmVPcmRlckhvb2tGbGFncy5OdW1iZXJPZkluaXRIb29rc0NhbGxlZE1hc2spICsgaSArXG4gICAgICAgICAgICAyO1xuICAgICAgfVxuICAgICAgaSsrO1xuICAgIH1cbiAgfVxufVxuXG4vKipcbiAqIEV4ZWN1dGUgb25lIGhvb2sgYWdhaW5zdCB0aGUgY3VycmVudCBgTFZpZXdgLlxuICpcbiAqIEBwYXJhbSBjdXJyZW50VmlldyBUaGUgY3VycmVudCB2aWV3XG4gKiBAcGFyYW0gaW5pdFBoYXNlU3RhdGUgdGhlIGN1cnJlbnQgc3RhdGUgb2YgdGhlIGluaXQgcGhhc2VcbiAqIEBwYXJhbSBhcnIgVGhlIGFycmF5IGluIHdoaWNoIHRoZSBob29rcyBhcmUgZm91bmRcbiAqIEBwYXJhbSBpIFRoZSBjdXJyZW50IGluZGV4IHdpdGhpbiB0aGUgaG9vayBkYXRhIGFycmF5XG4gKi9cbmZ1bmN0aW9uIGNhbGxIb29rKGN1cnJlbnRWaWV3OiBMVmlldywgaW5pdFBoYXNlOiBJbml0UGhhc2VTdGF0ZSwgYXJyOiBIb29rRGF0YSwgaTogbnVtYmVyKSB7XG4gIGNvbnN0IGlzSW5pdEhvb2sgPSBhcnJbaV0gPCAwO1xuICBjb25zdCBob29rID0gYXJyW2kgKyAxXSBhcygpID0+IHZvaWQ7XG4gIGNvbnN0IGRpcmVjdGl2ZUluZGV4ID0gaXNJbml0SG9vayA/IC1hcnJbaV0gOiBhcnJbaV0gYXMgbnVtYmVyO1xuICBjb25zdCBkaXJlY3RpdmUgPSBjdXJyZW50Vmlld1tkaXJlY3RpdmVJbmRleF07XG4gIGlmIChpc0luaXRIb29rKSB7XG4gICAgY29uc3QgaW5kZXhXaXRoaW50SW5pdFBoYXNlID0gY3VycmVudFZpZXdbRkxBR1NdID4+IExWaWV3RmxhZ3MuSW5kZXhXaXRoaW5Jbml0UGhhc2VTaGlmdDtcbiAgICAvLyBUaGUgaW5pdCBwaGFzZSBzdGF0ZSBtdXN0IGJlIGFsd2F5cyBjaGVja2VkIGhlcmUgYXMgaXQgbWF5IGhhdmUgYmVlbiByZWN1cnNpdmVseVxuICAgIC8vIHVwZGF0ZWRcbiAgICBpZiAoaW5kZXhXaXRoaW50SW5pdFBoYXNlIDxcbiAgICAgICAgICAgIChjdXJyZW50Vmlld1tQUkVPUkRFUl9IT09LX0ZMQUdTXSA+PiBQcmVPcmRlckhvb2tGbGFncy5OdW1iZXJPZkluaXRIb29rc0NhbGxlZFNoaWZ0KSAmJlxuICAgICAgICAoY3VycmVudFZpZXdbRkxBR1NdICYgTFZpZXdGbGFncy5Jbml0UGhhc2VTdGF0ZU1hc2spID09PSBpbml0UGhhc2UpIHtcbiAgICAgIGN1cnJlbnRWaWV3W0ZMQUdTXSArPSBMVmlld0ZsYWdzLkluZGV4V2l0aGluSW5pdFBoYXNlSW5jcmVtZW50ZXI7XG4gICAgICBob29rLmNhbGwoZGlyZWN0aXZlKTtcbiAgICB9XG4gIH0gZWxzZSB7XG4gICAgaG9vay5jYWxsKGRpcmVjdGl2ZSk7XG4gIH1cbn1cbiJdfQ==