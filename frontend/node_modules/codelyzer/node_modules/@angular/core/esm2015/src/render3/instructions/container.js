/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/instructions/container.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { assertDataInRange, assertEqual } from '../../util/assert';
import { assertFirstCreatePass, assertHasParent } from '../assert';
import { attachPatchData } from '../context_discovery';
import { executeCheckHooks, executeInitAndCheckHooks, incrementInitPhaseFlags, registerPostOrderHooks } from '../hooks';
import { ACTIVE_INDEX, CONTAINER_HEADER_OFFSET } from '../interfaces/container';
import { isDirectiveHost } from '../interfaces/type_checks';
import { FLAGS, HEADER_OFFSET, RENDERER, T_HOST } from '../interfaces/view';
import { assertNodeType } from '../node_assert';
import { appendChild, removeView } from '../node_manipulation';
import { getBindingIndex, getCheckNoChangesMode, getIsParent, getLView, getPreviousOrParentTNode, getTView, setIsNotParent, setPreviousOrParentTNode } from '../state';
import { getConstant, getLContainerActiveIndex, load } from '../util/view_utils';
import { addToViewTree, createDirectivesInstances, createLContainer, createTNode, createTView, getOrCreateTNode, resolveDirectives, saveResolvedLocalsInData } from './shared';
/**
 * Creates an LContainer for inline views, e.g.
 *
 * % if (showing) {
 *   <div></div>
 * % }
 *
 * \@codeGenApi
 * @param {?} index The index of the container in the data array
 *
 * @return {?}
 */
export function ɵɵcontainer(index) {
    /** @type {?} */
    const lView = getLView();
    /** @type {?} */
    const tView = getTView();
    /** @type {?} */
    const tNode = containerInternal(tView, lView, index, null, null);
    if (tView.firstCreatePass) {
        tNode.tViews = [];
    }
    setIsNotParent();
}
/**
 * @param {?} index
 * @param {?} tView
 * @param {?} lView
 * @param {?} templateFn
 * @param {?} decls
 * @param {?} vars
 * @param {?=} tagName
 * @param {?=} attrsIndex
 * @param {?=} localRefsIndex
 * @return {?}
 */
function templateFirstCreatePass(index, tView, lView, templateFn, decls, vars, tagName, attrsIndex, localRefsIndex) {
    ngDevMode && assertFirstCreatePass(tView);
    ngDevMode && ngDevMode.firstCreatePass++;
    /** @type {?} */
    const tViewConsts = tView.consts;
    // TODO(pk): refactor getOrCreateTNode to have the "create" only version
    /** @type {?} */
    const tNode = getOrCreateTNode(tView, lView[T_HOST], index, 0 /* Container */, tagName || null, getConstant(tViewConsts, attrsIndex));
    resolveDirectives(tView, lView, tNode, getConstant(tViewConsts, localRefsIndex));
    registerPostOrderHooks(tView, tNode);
    /** @type {?} */
    const embeddedTView = tNode.tViews = createTView(2 /* Embedded */, -1, templateFn, decls, vars, tView.directiveRegistry, tView.pipeRegistry, null, tView.schemas, tViewConsts);
    /** @type {?} */
    const embeddedTViewNode = (/** @type {?} */ (createTNode(tView, null, 2 /* View */, -1, null, null)));
    embeddedTViewNode.injectorIndex = tNode.injectorIndex;
    embeddedTView.node = embeddedTViewNode;
    if (tView.queries !== null) {
        tView.queries.template(tView, tNode);
        embeddedTView.queries = tView.queries.embeddedTView(tNode);
    }
    return tNode;
}
/**
 * Creates an LContainer for an ng-template (dynamically-inserted view), e.g.
 *
 * <ng-template #foo>
 *    <div></div>
 * </ng-template>
 *
 * \@codeGenApi
 * @param {?} index The index of the container in the data array
 * @param {?} templateFn Inline template
 * @param {?} decls The number of nodes, local refs, and pipes for this template
 * @param {?} vars The number of bindings for this template
 * @param {?=} tagName The name of the container element, if applicable
 * @param {?=} attrsIndex Index of template attributes in the `consts` array.
 * @param {?=} localRefsIndex
 * @param {?=} localRefExtractor A function which extracts local-refs values from the template.
 *        Defaults to the current element associated with the local-ref.
 *
 * @return {?}
 */
export function ɵɵtemplate(index, templateFn, decls, vars, tagName, attrsIndex, localRefsIndex, localRefExtractor) {
    /** @type {?} */
    const lView = getLView();
    /** @type {?} */
    const tView = getTView();
    /** @type {?} */
    const adjustedIndex = index + HEADER_OFFSET;
    /** @type {?} */
    const tNode = tView.firstCreatePass ?
        templateFirstCreatePass(index, tView, lView, templateFn, decls, vars, tagName, attrsIndex, localRefsIndex) :
        (/** @type {?} */ (tView.data[adjustedIndex]));
    setPreviousOrParentTNode(tNode, false);
    /** @type {?} */
    const comment = lView[RENDERER].createComment(ngDevMode ? 'container' : '');
    appendChild(tView, lView, comment, tNode);
    attachPatchData(comment, lView);
    addToViewTree(lView, lView[adjustedIndex] = createLContainer(comment, lView, comment, tNode));
    if (isDirectiveHost(tNode)) {
        createDirectivesInstances(tView, lView, tNode);
    }
    if (localRefsIndex != null) {
        saveResolvedLocalsInData(lView, tNode, localRefExtractor);
    }
}
/**
 * Sets a container up to receive views.
 *
 * \@codeGenApi
 * @param {?} index The index of the container in the data array
 *
 * @return {?}
 */
export function ɵɵcontainerRefreshStart(index) {
    /** @type {?} */
    const lView = getLView();
    /** @type {?} */
    const tView = getTView();
    /** @type {?} */
    let previousOrParentTNode = (/** @type {?} */ (load(tView.data, index)));
    ngDevMode && assertNodeType(previousOrParentTNode, 0 /* Container */);
    setPreviousOrParentTNode(previousOrParentTNode, true);
    lView[index + HEADER_OFFSET][ACTIVE_INDEX] = 0;
    // We need to execute init hooks here so ngOnInit hooks are called in top level views
    // before they are called in embedded views (for backwards compatibility).
    if (!getCheckNoChangesMode()) {
        /** @type {?} */
        const hooksInitPhaseCompleted = (lView[FLAGS] & 3 /* InitPhaseStateMask */) === 3 /* InitPhaseCompleted */;
        if (hooksInitPhaseCompleted) {
            /** @type {?} */
            const preOrderCheckHooks = tView.preOrderCheckHooks;
            if (preOrderCheckHooks !== null) {
                executeCheckHooks(lView, preOrderCheckHooks, null);
            }
        }
        else {
            /** @type {?} */
            const preOrderHooks = tView.preOrderHooks;
            if (preOrderHooks !== null) {
                executeInitAndCheckHooks(lView, preOrderHooks, 0 /* OnInitHooksToBeRun */, null);
            }
            incrementInitPhaseFlags(lView, 0 /* OnInitHooksToBeRun */);
        }
    }
}
/**
 * Marks the end of the LContainer.
 *
 * Marking the end of LContainer is the time when to child views get inserted or removed.
 *
 * \@codeGenApi
 * @return {?}
 */
export function ɵɵcontainerRefreshEnd() {
    /** @type {?} */
    let previousOrParentTNode = getPreviousOrParentTNode();
    if (getIsParent()) {
        setIsNotParent();
    }
    else {
        ngDevMode && assertNodeType(previousOrParentTNode, 2 /* View */);
        ngDevMode && assertHasParent(previousOrParentTNode);
        previousOrParentTNode = (/** @type {?} */ (previousOrParentTNode.parent));
        setPreviousOrParentTNode(previousOrParentTNode, false);
    }
    ngDevMode && assertNodeType(previousOrParentTNode, 0 /* Container */);
    /** @type {?} */
    const lContainer = getLView()[previousOrParentTNode.index];
    /** @type {?} */
    const nextIndex = getLContainerActiveIndex(lContainer);
    // remove extra views at the end of the container
    while (nextIndex < lContainer.length - CONTAINER_HEADER_OFFSET) {
        removeView(lContainer, nextIndex);
    }
}
/**
 * @param {?} tView
 * @param {?} lView
 * @param {?} nodeIndex
 * @param {?} tagName
 * @param {?} attrs
 * @return {?}
 */
function containerInternal(tView, lView, nodeIndex, tagName, attrs) {
    ngDevMode && assertEqual(getBindingIndex(), tView.bindingStartIndex, 'container nodes should be created before any bindings');
    /** @type {?} */
    const adjustedIndex = nodeIndex + HEADER_OFFSET;
    ngDevMode && assertDataInRange(lView, nodeIndex + HEADER_OFFSET);
    ngDevMode && ngDevMode.rendererCreateComment++;
    /** @type {?} */
    const comment = lView[adjustedIndex] =
        lView[RENDERER].createComment(ngDevMode ? 'container' : '');
    /** @type {?} */
    const tNode = getOrCreateTNode(tView, lView[T_HOST], nodeIndex, 0 /* Container */, tagName, attrs);
    /** @type {?} */
    const lContainer = lView[adjustedIndex] = createLContainer(comment, lView, comment, tNode);
    appendChild(tView, lView, comment, tNode);
    attachPatchData(comment, lView);
    // Containers are added to the current view tree instead of their embedded views
    // because views can be removed and re-inserted.
    addToViewTree(lView, lContainer);
    ngDevMode && assertNodeType(getPreviousOrParentTNode(), 0 /* Container */);
    return tNode;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29udGFpbmVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS9zcmMvcmVuZGVyMy9pbnN0cnVjdGlvbnMvY29udGFpbmVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQU9BLE9BQU8sRUFBQyxpQkFBaUIsRUFBRSxXQUFXLEVBQUMsTUFBTSxtQkFBbUIsQ0FBQztBQUNqRSxPQUFPLEVBQUMscUJBQXFCLEVBQUUsZUFBZSxFQUFDLE1BQU0sV0FBVyxDQUFDO0FBQ2pFLE9BQU8sRUFBQyxlQUFlLEVBQUMsTUFBTSxzQkFBc0IsQ0FBQztBQUNyRCxPQUFPLEVBQUMsaUJBQWlCLEVBQUUsd0JBQXdCLEVBQUUsdUJBQXVCLEVBQUUsc0JBQXNCLEVBQUMsTUFBTSxVQUFVLENBQUM7QUFDdEgsT0FBTyxFQUFDLFlBQVksRUFBRSx1QkFBdUIsRUFBYSxNQUFNLHlCQUF5QixDQUFDO0FBRzFGLE9BQU8sRUFBQyxlQUFlLEVBQUMsTUFBTSwyQkFBMkIsQ0FBQztBQUMxRCxPQUFPLEVBQUMsS0FBSyxFQUFFLGFBQWEsRUFBcUMsUUFBUSxFQUFvQixNQUFNLEVBQUMsTUFBTSxvQkFBb0IsQ0FBQztBQUMvSCxPQUFPLEVBQUMsY0FBYyxFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFDOUMsT0FBTyxFQUFDLFdBQVcsRUFBRSxVQUFVLEVBQUMsTUFBTSxzQkFBc0IsQ0FBQztBQUM3RCxPQUFPLEVBQUMsZUFBZSxFQUFFLHFCQUFxQixFQUFFLFdBQVcsRUFBRSxRQUFRLEVBQUUsd0JBQXdCLEVBQUUsUUFBUSxFQUFFLGNBQWMsRUFBRSx3QkFBd0IsRUFBQyxNQUFNLFVBQVUsQ0FBQztBQUNySyxPQUFPLEVBQUMsV0FBVyxFQUFFLHdCQUF3QixFQUFFLElBQUksRUFBQyxNQUFNLG9CQUFvQixDQUFDO0FBQy9FLE9BQU8sRUFBQyxhQUFhLEVBQUUseUJBQXlCLEVBQUUsZ0JBQWdC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O0lBQ2hGLGdEQUFnRDtJQUNoRCxhQUFhLENBQUMsS0FBSyxFQUFFLFVBQVUsQ0FBQyxDQUFDO0lBRWpDLFNBQVMsSUFBSSxjQUFjLENBQUMsd0JBQXdCLEVBQUUsb0JBQXNCLENBQUM7SUFDN0UsT0FBTyxLQUFLLENBQUM7QUFDZixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuaW1wb3J0IHthc3NlcnREYXRhSW5SYW5nZSwgYXNzZXJ0RXF1YWx9IGZyb20gJy4uLy4uL3V0aWwvYXNzZXJ0JztcbmltcG9ydCB7YXNzZXJ0Rmlyc3RDcmVhdGVQYXNzLCBhc3NlcnRIYXNQYXJlbnR9IGZyb20gJy4uL2Fzc2VydCc7XG5pbXBvcnQge2F0dGFjaFBhdGNoRGF0YX0gZnJvbSAnLi4vY29udGV4dF9kaXNjb3ZlcnknO1xuaW1wb3J0IHtleGVjdXRlQ2hlY2tIb29rcywgZXhlY3V0ZUluaXRBbmRDaGVja0hvb2tzLCBpbmNyZW1lbnRJbml0UGhhc2VGbGFncywgcmVnaXN0ZXJQb3N0T3JkZXJIb29rc30gZnJvbSAnLi4vaG9va3MnO1xuaW1wb3J0IHtBQ1RJVkVfSU5ERVgsIENPTlRBSU5FUl9IRUFERVJfT0ZGU0VULCBMQ29udGFpbmVyfSBmcm9tICcuLi9pbnRlcmZhY2VzL2NvbnRhaW5lcic7XG5pbXBvcnQge0NvbXBvbmVudFRlbXBsYXRlfSBmcm9tICcuLi9pbnRlcmZhY2VzL2RlZmluaXRpb24nO1xuaW1wb3J0IHtMb2NhbFJlZkV4dHJhY3RvciwgVEF0dHJpYnV0ZXMsIFRDb250YWluZXJOb2RlLCBUTm9kZSwgVE5vZGVUeXBlLCBUVmlld05vZGV9IGZyb20gJy4uL2ludGVyZmFjZXMvbm9kZSc7XG5pbXBvcnQge2lzRGlyZWN0aXZlSG9zdH0gZnJvbSAnLi4vaW50ZXJmYWNlcy90eXBlX2NoZWNrcyc7XG5pbXBvcnQge0ZMQUdTLCBIRUFERVJfT0ZGU0VULCBJbml0UGhhc2VTdGF0ZSwgTFZpZXcsIExWaWV3RmxhZ3MsIFJFTkRFUkVSLCBUVmlldywgVFZpZXdUeXBlLCBUX0hPU1R9IGZyb20gJy4uL2ludGVyZmFjZXMvdmlldyc7XG5pbXBvcnQge2Fzc2VydE5vZGVUeXBlfSBmcm9tICcuLi9ub2RlX2Fzc2VydCc7XG5pbXBvcnQge2FwcGVuZENoaWxkLCByZW1vdmVWaWV3fSBmcm9tICcuLi9ub2RlX21hbmlwdWxhdGlvbic7XG5pbXBvcnQge2dldEJpbmRpbmdJbmRleCwgZ2V0Q2hlY2tOb0NoYW5nZXNNb2RlLCBnZXRJc1BhcmVudCwgZ2V0TFZpZXcsIGdldFByZXZpb3VzT3JQYXJlbnRUTm9kZSwgZ2V0VFZpZXcsIHNldElzTm90UGFyZW50LCBzZXRQcmV2aW91c09yUGFyZW50VE5vZGV9IGZyb20gJy4uL3N0YXRlJztcbmltcG9ydCB7Z2V0Q29uc3RhbnQsIGdldExDb250YWluZXJBY3RpdmVJbmRleCwgbG9hZH0gZnJvbSAnLi4vdXRpbC92aWV3X3V0aWxzJztcbmltcG9ydCB7YWRkVG9WaWV3VHJlZSwgY3JlYXRlRGlyZWN0aXZlc0luc3RhbmNlcywgY3JlYXRlTENvbnRhaW5lciwgY3JlYXRlVE5vZGUsIGNyZWF0ZVRWaWV3LCBnZXRPckNyZWF0ZVROb2RlLCByZXNvbHZlRGlyZWN0aXZlcywgc2F2ZVJlc29sdmVkTG9jYWxzSW5EYXRhfSBmcm9tICcuL3NoYXJlZCc7XG5cblxuXG4vKipcbiAqIENyZWF0ZXMgYW4gTENvbnRhaW5lciBmb3IgaW5saW5lIHZpZXdzLCBlLmcuXG4gKlxuICogJSBpZiAoc2hvd2luZykge1xuICogICA8ZGl2PjwvZGl2PlxuICogJSB9XG4gKlxuICogQHBhcmFtIGluZGV4IFRoZSBpbmRleCBvZiB0aGUgY29udGFpbmVyIGluIHRoZSBkYXRhIGFycmF5XG4gKlxuICogQGNvZGVHZW5BcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIMm1ybVjb250YWluZXIoaW5kZXg6IG51bWJlcik6IHZvaWQge1xuICBjb25zdCBsVmlldyA9IGdldExWaWV3KCk7XG4gIGNvbnN0IHRWaWV3ID0gZ2V0VFZpZXcoKTtcbiAgY29uc3QgdE5vZGUgPSBjb250YWluZXJJbnRlcm5hbCh0VmlldywgbFZpZXcsIGluZGV4LCBudWxsLCBudWxsKTtcblxuICBpZiAodFZpZXcuZmlyc3RDcmVhdGVQYXNzKSB7XG4gICAgdE5vZGUudFZpZXdzID0gW107XG4gIH1cbiAgc2V0SXNOb3RQYXJlbnQoKTtcbn1cblxuZnVuY3Rpb24gdGVtcGxhdGVGaXJzdENyZWF0ZVBhc3MoXG4gICAgaW5kZXg6IG51bWJlciwgdFZpZXc6IFRWaWV3LCBsVmlldzogTFZpZXcsIHRlbXBsYXRlRm46IENvbXBvbmVudFRlbXBsYXRlPGFueT58IG51bGwsXG4gICAgZGVjbHM6IG51bWJlciwgdmFyczogbnVtYmVyLCB0YWdOYW1lPzogc3RyaW5nIHwgbnVsbCwgYXR0cnNJbmRleD86IG51bWJlciB8IG51bGwsXG4gICAgbG9jYWxSZWZzSW5kZXg/OiBudW1iZXIgfCBudWxsKTogVENvbnRhaW5lck5vZGUge1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0Rmlyc3RDcmVhdGVQYXNzKHRWaWV3KTtcbiAgbmdEZXZNb2RlICYmIG5nRGV2TW9kZS5maXJzdENyZWF0ZVBhc3MrKztcbiAgY29uc3QgdFZpZXdDb25zdHMgPSB0Vmlldy5jb25zdHM7XG4gIC8vIFRPRE8ocGspOiByZWZhY3RvciBnZXRPckNyZWF0ZVROb2RlIHRvIGhhdmUgdGhlIFwiY3JlYXRlXCIgb25seSB2ZXJzaW9uXG4gIGNvbnN0IHROb2RlID0gZ2V0T3JDcmVhdGVUTm9kZShcbiAgICAgIHRWaWV3LCBsVmlld1tUX0hPU1RdLCBpbmRleCwgVE5vZGVUeXBlLkNvbnRhaW5lciwgdGFnTmFtZSB8fCBudWxsLFxuICAgICAgZ2V0Q29uc3RhbnQ8VEF0dHJpYnV0ZXM+KHRWaWV3Q29uc3RzLCBhdHRyc0luZGV4KSk7XG5cbiAgcmVzb2x2ZURpcmVjdGl2ZXModFZpZXcsIGxWaWV3LCB0Tm9kZSwgZ2V0Q29uc3RhbnQ8c3RyaW5nW10+KHRWaWV3Q29uc3RzLCBsb2NhbFJlZnNJbmRleCkpO1xuICByZWdpc3RlclBvc3RPcmRlckhvb2tzKHRWaWV3LCB0Tm9kZSk7XG5cbiAgY29uc3QgZW1iZWRkZWRUVmlldyA9IHROb2RlLnRWaWV3cyA9IGNyZWF0ZVRWaWV3KFxuICAgICAgVFZpZXdUeXBlLkVtYmVkZGVkLCAtMSwgdGVtcGxhdGVGbiwgZGVjbHMsIHZhcnMsIHRWaWV3LmRpcmVjdGl2ZVJlZ2lzdHJ5LCB0Vmlldy5waXBlUmVnaXN0cnksXG4gICAgICBudWxsLCB0Vmlldy5zY2hlbWFzLCB0Vmlld0NvbnN0cyk7XG4gIGNvbnN0IGVtYmVkZGVkVFZpZXdOb2RlID0gY3JlYXRlVE5vZGUodFZpZXcsIG51bGwsIFROb2RlVHlwZS5WaWV3LCAtMSwgbnVsbCwgbnVsbCkgYXMgVFZpZXdOb2RlO1xuICBlbWJlZGRlZFRWaWV3Tm9kZS5pbmplY3RvckluZGV4ID0gdE5vZGUuaW5qZWN0b3JJbmRleDtcbiAgZW1iZWRkZWRUVmlldy5ub2RlID0gZW1iZWRkZWRUVmlld05vZGU7XG5cbiAgaWYgKHRWaWV3LnF1ZXJpZXMgIT09IG51bGwpIHtcbiAgICB0Vmlldy5xdWVyaWVzLnRlbXBsYXRlKHRWaWV3LCB0Tm9kZSk7XG4gICAgZW1iZWRkZWRUVmlldy5xdWVyaWVzID0gdFZpZXcucXVlcmllcy5lbWJlZGRlZFRWaWV3KHROb2RlKTtcbiAgfVxuXG4gIHJldHVybiB0Tm9kZTtcbn1cblxuLyoqXG4gKiBDcmVhdGVzIGFuIExDb250YWluZXIgZm9yIGFuIG5nLXRlbXBsYXRlIChkeW5hbWljYWxseS1pbnNlcnRlZCB2aWV3KSwgZS5nLlxuICpcbiAqIDxuZy10ZW1wbGF0ZSAjZm9vPlxuICogICAgPGRpdj48L2Rpdj5cbiAqIDwvbmctdGVtcGxhdGU+XG4gKlxuICogQHBhcmFtIGluZGV4IFRoZSBpbmRleCBvZiB0aGUgY29udGFpbmVyIGluIHRoZSBkYXRhIGFycmF5XG4gKiBAcGFyYW0gdGVtcGxhdGVGbiBJbmxpbmUgdGVtcGxhdGVcbiAqIEBwYXJhbSBkZWNscyBUaGUgbnVtYmVyIG9mIG5vZGVzLCBsb2NhbCByZWZzLCBhbmQgcGlwZXMgZm9yIHRoaXMgdGVtcGxhdGVcbiAqIEBwYXJhbSB2YXJzIFRoZSBudW1iZXIgb2YgYmluZGluZ3MgZm9yIHRoaXMgdGVtcGxhdGVcbiAqIEBwYXJhbSB0YWdOYW1lIFRoZSBuYW1lIG9mIHRoZSBjb250YWluZXIgZWxlbWVudCwgaWYgYXBwbGljYWJsZVxuICogQHBhcmFtIGF0dHJzSW5kZXggSW5kZXggb2YgdGVtcGxhdGUgYXR0cmlidXRlcyBpbiB0aGUgYGNvbnN0c2AgYXJyYXkuXG4gKiBAcGFyYW0gbG9jYWxSZWZzIEluZGV4IG9mIHRoZSBsb2NhbCByZWZlcmVuY2VzIGluIHRoZSBgY29uc3RzYCBhcnJheS5cbiAqIEBwYXJhbSBsb2NhbFJlZkV4dHJhY3RvciBBIGZ1bmN0aW9uIHdoaWNoIGV4dHJhY3RzIGxvY2FsLXJlZnMgdmFsdWVzIGZyb20gdGhlIHRlbXBsYXRlLlxuICogICAgICAgIERlZmF1bHRzIHRvIHRoZSBjdXJyZW50IGVsZW1lbnQgYXNzb2NpYXRlZCB3aXRoIHRoZSBsb2NhbC1yZWYuXG4gKlxuICogQGNvZGVHZW5BcGlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIMm1ybV0ZW1wbGF0ZShcbiAgICBpbmRleDogbnVtYmVyLCB0ZW1wbGF0ZUZuOiBDb21wb25lbnRUZW1wbGF0ZTxhbnk+fCBudWxsLCBkZWNsczogbnVtYmVyLCB2YXJzOiBudW1iZXIsXG4gICAgdGFnTmFtZT86IHN0cmluZyB8IG51bGwsIGF0dHJzSW5kZXg/OiBudW1iZXIgfCBudWxsLCBsb2NhbFJlZnNJbmRleD86IG51bWJlciB8IG51bGwsXG4gICAgbG9jYWxSZWZFeHRyYWN0b3I/OiBMb2NhbFJlZkV4dHJhY3Rvcikge1xuICBjb25zdCBsVmlldyA9IGdldExWaWV3KCk7XG4gIGNvbnN0IHRWaWV3ID0gZ2V0VFZpZXcoKTtcbiAgY29uc3QgYWRqdXN0ZWRJbmRleCA9IGluZGV4ICsgSEVBREVSX09GRlNFVDtcblxuICBjb25zdCB0Tm9kZSA9IHRWaWV3LmZpcnN0Q3JlYXRlUGFzcyA/XG4gICAgICB0ZW1wbGF0ZUZpcnN0Q3JlYXRlUGFzcyhcbiAgICAgICAgICBpbmRleCwgdFZpZXcsIGxWaWV3LCB0ZW1wbGF0ZUZuLCBkZWNscywgdmFycywgdGFnTmFtZSwgYXR0cnNJbmRleCwgbG9jYWxSZWZzSW5kZXgpIDpcbiAgICAgIHRWaWV3LmRhdGFbYWRqdXN0ZWRJbmRleF0gYXMgVENvbnRhaW5lck5vZGU7XG4gIHNldFByZXZpb3VzT3JQYXJlbnRUTm9kZSh0Tm9kZSwgZmFsc2UpO1xuXG4gIGNvbnN0IGNvbW1lbnQgPSBsVmlld1tSRU5ERVJFUl0uY3JlYXRlQ29tbWVudChuZ0Rldk1vZGUgPyAnY29udGFpbmVyJyA6ICcnKTtcbiAgYXBwZW5kQ2hpbGQodFZpZXcsIGxWaWV3LCBjb21tZW50LCB0Tm9kZSk7XG4gIGF0dGFjaFBhdGNoRGF0YShjb21tZW50LCBsVmlldyk7XG5cbiAgYWRkVG9WaWV3VHJlZShsVmlldywgbFZpZXdbYWRqdXN0ZWRJbmRleF0gPSBjcmVhdGVMQ29udGFpbmVyKGNvbW1lbnQsIGxWaWV3LCBjb21tZW50LCB0Tm9kZSkpO1xuXG4gIGlmIChpc0RpcmVjdGl2ZUhvc3QodE5vZGUpKSB7XG4gICAgY3JlYXRlRGlyZWN0aXZlc0luc3RhbmNlcyh0VmlldywgbFZpZXcsIHROb2RlKTtcbiAgfVxuXG4gIGlmIChsb2NhbFJlZnNJbmRleCAhPSBudWxsKSB7XG4gICAgc2F2ZVJlc29sdmVkTG9jYWxzSW5EYXRhKGxWaWV3LCB0Tm9kZSwgbG9jYWxSZWZFeHRyYWN0b3IpO1xuICB9XG59XG5cbi8qKlxuICogU2V0cyBhIGNvbnRhaW5lciB1cCB0byByZWNlaXZlIHZpZXdzLlxuICpcbiAqIEBwYXJhbSBpbmRleCBUaGUgaW5kZXggb2YgdGhlIGNvbnRhaW5lciBpbiB0aGUgZGF0YSBhcnJheVxuICpcbiAqIEBjb2RlR2VuQXBpXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiDJtcm1Y29udGFpbmVyUmVmcmVzaFN0YXJ0KGluZGV4OiBudW1iZXIpOiB2b2lkIHtcbiAgY29uc3QgbFZpZXcgPSBnZXRMVmlldygpO1xuICBjb25zdCB0VmlldyA9IGdldFRWaWV3KCk7XG4gIGxldCBwcmV2aW91c09yUGFyZW50VE5vZGUgPSBsb2FkKHRWaWV3LmRhdGEsIGluZGV4KSBhcyBUTm9kZTtcbiAgbmdEZXZNb2RlICYmIGFzc2VydE5vZGVUeXBlKHByZXZpb3VzT3JQYXJlbnRUTm9kZSwgVE5vZGVUeXBlLkNvbnRhaW5lcik7XG4gIHNldFByZXZpb3VzT3JQYXJlbnRUTm9kZShwcmV2aW91c09yUGFyZW50VE5vZGUsIHRydWUpO1xuXG4gIGxWaWV3W2luZGV4ICsgSEVBREVSX09GRlNFVF1bQUNUSVZFX0lOREVYXSA9IDA7XG5cbiAgLy8gV2UgbmVlZCB0byBleGVjdXRlIGluaXQgaG9va3MgaGVyZSBzbyBuZ09uSW5pdCBob29rcyBhcmUgY2FsbGVkIGluIHRvcCBsZXZlbCB2aWV3c1xuICAvLyBiZWZvcmUgdGhleSBhcmUgY2FsbGVkIGluIGVtYmVkZGVkIHZpZXdzIChmb3IgYmFja3dhcmRzIGNvbXBhdGliaWxpdHkpLlxuICBpZiAoIWdldENoZWNrTm9DaGFuZ2VzTW9kZSgpKSB7XG4gICAgY29uc3QgaG9va3NJbml0UGhhc2VDb21wbGV0ZWQgPVxuICAgICAgICAobFZpZXdbRkxBR1NdICYgTFZpZXdGbGFncy5Jbml0UGhhc2VTdGF0ZU1hc2spID09PSBJbml0UGhhc2VTdGF0ZS5Jbml0UGhhc2VDb21wbGV0ZWQ7XG4gICAgaWYgKGhvb2tzSW5pdFBoYXNlQ29tcGxldGVkKSB7XG4gICAgICBjb25zdCBwcmVPcmRlckNoZWNrSG9va3MgPSB0Vmlldy5wcmVPcmRlckNoZWNrSG9va3M7XG4gICAgICBpZiAocHJlT3JkZXJDaGVja0hvb2tzICE9PSBudWxsKSB7XG4gICAgICAgIGV4ZWN1dGVDaGVja0hvb2tzKGxWaWV3LCBwcmVPcmRlckNoZWNrSG9va3MsIG51bGwpO1xuICAgICAgfVxuICAgIH0gZWxzZSB7XG4gICAgICBjb25zdCBwcmVPcmRlckhvb2tzID0gdFZpZXcucHJlT3JkZXJIb29rcztcbiAgICAgIGlmIChwcmVPcmRlckhvb2tzICE9PSBudWxsKSB7XG4gICAgICAgIGV4ZWN1dGVJbml0QW5kQ2hlY2tIb29rcyhsVmlldywgcHJlT3JkZXJIb29rcywgSW5pdFBoYXNlU3RhdGUuT25Jbml0SG9va3NUb0JlUnVuLCBudWxsKTtcbiAgICAgIH1cbiAgICAgIGluY3JlbWVudEluaXRQaGFzZUZsYWdzKGxWaWV3LCBJbml0UGhhc2VTdGF0ZS5PbkluaXRIb29rc1RvQmVSdW4pO1xuICAgIH1cbiAgfVxufVxuXG4vKipcbiAqIE1hcmtzIHRoZSBlbmQgb2YgdGhlIExDb250YWluZXIuXG4gKlxuICogTWFya2luZyB0aGUgZW5kIG9mIExDb250YWluZXIgaXMgdGhlIHRpbWUgd2hlbiB0byBjaGlsZCB2aWV3cyBnZXQgaW5zZXJ0ZWQgb3IgcmVtb3ZlZC5cbiAqXG4gKiBAY29kZUdlbkFwaVxuICovXG5leHBvcnQgZnVuY3Rpb24gybXJtWNvbnRhaW5lclJlZnJlc2hFbmQoKTogdm9pZCB7XG4gIGxldCBwcmV2aW91c09yUGFyZW50VE5vZGUgPSBnZXRQcmV2aW91c09yUGFyZW50VE5vZGUoKTtcbiAgaWYgKGdldElzUGFyZW50KCkpIHtcbiAgICBzZXRJc05vdFBhcmVudCgpO1xuICB9IGVsc2Uge1xuICAgIG5nRGV2TW9kZSAmJiBhc3NlcnROb2RlVHlwZShwcmV2aW91c09yUGFyZW50VE5vZGUsIFROb2RlVHlwZS5WaWV3KTtcbiAgICBuZ0Rldk1vZGUgJiYgYXNzZXJ0SGFzUGFyZW50KHByZXZpb3VzT3JQYXJlbnRUTm9kZSk7XG4gICAgcHJldmlvdXNPclBhcmVudFROb2RlID0gcHJldmlvdXNPclBhcmVudFROb2RlLnBhcmVudCAhO1xuICAgIHNldFByZXZpb3VzT3JQYXJlbnRUTm9kZShwcmV2aW91c09yUGFyZW50VE5vZGUsIGZhbHNlKTtcbiAgfVxuXG4gIG5nRGV2TW9kZSAmJiBhc3NlcnROb2RlVHlwZShwcmV2aW91c09yUGFyZW50VE5vZGUsIFROb2RlVHlwZS5Db250YWluZXIpO1xuXG4gIGNvbnN0IGxDb250YWluZXI6IExDb250YWluZXIgPSBnZXRMVmlldygpW3ByZXZpb3VzT3JQYXJlbnRUTm9kZS5pbmRleF07XG4gIGNvbnN0IG5leHRJbmRleCA9IGdldExDb250YWluZXJBY3RpdmVJbmRleChsQ29udGFpbmVyKTtcblxuICAvLyByZW1vdmUgZXh0cmEgdmlld3MgYXQgdGhlIGVuZCBvZiB0aGUgY29udGFpbmVyXG4gIHdoaWxlIChuZXh0SW5kZXggPCBsQ29udGFpbmVyLmxlbmd0aCAtIENPTlRBSU5FUl9IRUFERVJfT0ZGU0VUKSB7XG4gICAgcmVtb3ZlVmlldyhsQ29udGFpbmVyLCBuZXh0SW5kZXgpO1xuICB9XG59XG5cbmZ1bmN0aW9uIGNvbnRhaW5lckludGVybmFsKFxuICAgIHRWaWV3OiBUVmlldywgbFZpZXc6IExWaWV3LCBub2RlSW5kZXg6IG51bWJlciwgdGFnTmFtZTogc3RyaW5nIHwgbnVsbCxcbiAgICBhdHRyczogVEF0dHJpYnV0ZXMgfCBudWxsKTogVENvbnRhaW5lck5vZGUge1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0RXF1YWwoXG4gICAgICAgICAgICAgICAgICAgZ2V0QmluZGluZ0luZGV4KCksIHRWaWV3LmJpbmRpbmdTdGFydEluZGV4LFxuICAgICAgICAgICAgICAgICAgICdjb250YWluZXIgbm9kZXMgc2hvdWxkIGJlIGNyZWF0ZWQgYmVmb3JlIGFueSBiaW5kaW5ncycpO1xuXG4gIGNvbnN0IGFkanVzdGVkSW5kZXggPSBub2RlSW5kZXggKyBIRUFERVJfT0ZGU0VUO1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0RGF0YUluUmFuZ2UobFZpZXcsIG5vZGVJbmRleCArIEhFQURFUl9PRkZTRVQpO1xuICBuZ0Rldk1vZGUgJiYgbmdEZXZNb2RlLnJlbmRlcmVyQ3JlYXRlQ29tbWVudCsrO1xuICBjb25zdCBjb21tZW50ID0gbFZpZXdbYWRqdXN0ZWRJbmRleF0gPVxuICAgICAgbFZpZXdbUkVOREVSRVJdLmNyZWF0ZUNvbW1lbnQobmdEZXZNb2RlID8gJ2NvbnRhaW5lcicgOiAnJyk7XG4gIGNvbnN0IHROb2RlID1cbiAgICAgIGdldE9yQ3JlYXRlVE5vZGUodFZpZXcsIGxWaWV3W1RfSE9TVF0sIG5vZGVJbmRleCwgVE5vZGVUeXBlLkNvbnRhaW5lciwgdGFnTmFtZSwgYXR0cnMpO1xuICBjb25zdCBsQ29udGFpbmVyID0gbFZpZXdbYWRqdXN0ZWRJbmRleF0gPSBjcmVhdGVMQ29udGFpbmVyKGNvbW1lbnQsIGxWaWV3LCBjb21tZW50LCB0Tm9kZSk7XG5cbiAgYXBwZW5kQ2hpbGQodFZpZXcsIGxWaWV3LCBjb21tZW50LCB0Tm9kZSk7XG4gIGF0dGFjaFBhdGNoRGF0YShjb21tZW50LCBsVmlldyk7XG5cbiAgLy8gQ29udGFpbmVycyBhcmUgYWRkZWQgdG8gdGhlIGN1cnJlbnQgdmlldyB0cmVlIGluc3RlYWQgb2YgdGhlaXIgZW1iZWRkZWQgdmlld3NcbiAgLy8gYmVjYXVzZSB2aWV3cyBjYW4gYmUgcmVtb3ZlZCBhbmQgcmUtaW5zZXJ0ZWQuXG4gIGFkZFRvVmlld1RyZWUobFZpZXcsIGxDb250YWluZXIpO1xuXG4gIG5nRGV2TW9kZSAmJiBhc3NlcnROb2RlVHlwZShnZXRQcmV2aW91c09yUGFyZW50VE5vZGUoKSwgVE5vZGVUeXBlLkNvbnRhaW5lcik7XG4gIHJldHVybiB0Tm9kZTtcbn0iXX0=