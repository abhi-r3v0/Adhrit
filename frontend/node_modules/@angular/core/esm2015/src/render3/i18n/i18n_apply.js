/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { getPluralCase } from '../../i18n/localization';
import { assertDefined, assertEqual, assertIndexInRange } from '../../util/assert';
import { attachPatchData } from '../context_discovery';
import { elementAttributeInternal, elementPropertyInternal, getOrCreateTNode, textBindingInternal } from '../instructions/shared';
import { NATIVE } from '../interfaces/container';
import { COMMENT_MARKER, ELEMENT_MARKER } from '../interfaces/i18n';
import { isLContainer } from '../interfaces/type_checks';
import { HEADER_OFFSET, RENDERER, T_HOST } from '../interfaces/view';
import { appendChild, applyProjection, createTextNode, nativeRemoveNode } from '../node_manipulation';
import { getBindingIndex, getPreviousOrParentTNode, setIsNotParent, setPreviousOrParentTNode } from '../state';
import { renderStringify } from '../util/misc_utils';
import { getNativeByIndex, getNativeByTNode, getTNode, load } from '../util/view_utils';
import { getLocaleId } from './i18n_locale_id';
const i18nIndexStack = [];
let i18nIndexStackPointer = -1;
function popI18nIndex() {
    return i18nIndexStack[i18nIndexStackPointer--];
}
export function pushI18nIndex(index) {
    i18nIndexStack[++i18nIndexStackPointer] = index;
}
let changeMask = 0b0;
let shiftsCounter = 0;
export function setMaskBit(bit) {
    if (bit) {
        changeMask = changeMask | (1 << shiftsCounter);
    }
    shiftsCounter++;
}
export function applyI18n(tView, lView, index) {
    if (shiftsCounter > 0) {
        ngDevMode && assertDefined(tView, `tView should be defined`);
        const tI18n = tView.data[index + HEADER_OFFSET];
        let updateOpCodes;
        let tIcus = null;
        if (Array.isArray(tI18n)) {
            updateOpCodes = tI18n;
        }
        else {
            updateOpCodes = tI18n.update;
            tIcus = tI18n.icus;
        }
        const bindingsStartIndex = getBindingIndex() - shiftsCounter - 1;
        applyUpdateOpCodes(tView, tIcus, lView, updateOpCodes, bindingsStartIndex, changeMask);
        // Reset changeMask & maskBit to default for the next update cycle
        changeMask = 0b0;
        shiftsCounter = 0;
    }
}
/**
 * Apply `I18nMutateOpCodes` OpCodes.
 *
 * @param tView Current `TView`
 * @param rootIndex Pointer to the root (parent) tNode for the i18n.
 * @param createOpCodes OpCodes to process
 * @param lView Current `LView`
 */
export function applyCreateOpCodes(tView, rootindex, createOpCodes, lView) {
    const renderer = lView[RENDERER];
    let currentTNode = null;
    let previousTNode = null;
    const visitedNodes = [];
    for (let i = 0; i < createOpCodes.length; i++) {
        const opCode = createOpCodes[i];
        if (typeof opCode == 'string') {
            const textRNode = createTextNode(opCode, renderer);
            const textNodeIndex = createOpCodes[++i];
            ngDevMode && ngDevMode.rendererCreateTextNode++;
            previousTNode = currentTNode;
            currentTNode =
                createDynamicNodeAtIndex(tView, lView, textNodeIndex, 3 /* Element */, textRNode, null);
            visitedNodes.push(textNodeIndex);
            setIsNotParent();
        }
        else if (typeof opCode == 'number') {
            switch (opCode & 7 /* MASK_INSTRUCTION */) {
                case 1 /* AppendChild */:
                    const destinationNodeIndex = opCode >>> 17 /* SHIFT_PARENT */;
                    let destinationTNode;
                    if (destinationNodeIndex === rootindex) {
                        // If the destination node is `i18nStart`, we don't have a
                        // top-level node and we should use the host node instead
                        destinationTNode = lView[T_HOST];
                    }
                    else {
                        destinationTNode = getTNode(tView, destinationNodeIndex);
                    }
                    ngDevMode &&
                        assertDefined(currentTNode, `You need to create or select a node before you can insert it into the DOM`);
                    previousTNode =
                        appendI18nNode(tView, currentTNode, destinationTNode, previousTNode, lView);
                    break;
                case 0 /* Select */:
                    // Negative indices indicate that a given TNode is a sibling node, not a parent node
                    // (see `i18nStartFirstPass` for additional information).
                    const isParent = opCode >= 0;
                    // FIXME(misko): This SHIFT_REF looks suspect as it does not have mask.
                    const nodeIndex = (isParent ? opCode : ~opCode) >>> 3 /* SHIFT_REF */;
                    visitedNodes.push(nodeIndex);
                    previousTNode = currentTNode;
                    currentTNode = getTNode(tView, nodeIndex);
                    if (currentTNode) {
                        setPreviousOrParentTNode(currentTNode, isParent);
                    }
                    break;
                case 5 /* ElementEnd */:
                    const elementIndex = opCode >>> 3 /* SHIFT_REF */;
                    previousTNode = currentTNode = getTNode(tView, elementIndex);
                    setPreviousOrParentTNode(currentTNode, false);
                    break;
                case 4 /* Attr */:
                    const elementNodeIndex = opCode >>> 3 /* SHIFT_REF */;
                    const attrName = createOpCodes[++i];
                    const attrValue = createOpCodes[++i];
                    // This code is used for ICU expressions only, since we don't support
                    // directives/components in ICUs, we don't need to worry about inputs here
                    elementAttributeInternal(getTNode(tView, elementNodeIndex), lView, attrName, attrValue, null, null);
                    break;
                default:
                    throw new Error(`Unable to determine the type of mutate operation for "${opCode}"`);
            }
        }
        else {
            switch (opCode) {
                case COMMENT_MARKER:
                    const commentValue = createOpCodes[++i];
                    const commentNodeIndex = createOpCodes[++i];
                    ngDevMode &&
                        assertEqual(typeof commentValue, 'string', `Expected "${commentValue}" to be a comment node value`);
                    const commentRNode = renderer.createComment(commentValue);
                    ngDevMode && ngDevMode.rendererCreateComment++;
                    previousTNode = currentTNode;
                    currentTNode = createDynamicNodeAtIndex(tView, lView, commentNodeIndex, 5 /* IcuContainer */, commentRNode, null);
                    visitedNodes.push(commentNodeIndex);
                    attachPatchData(commentRNode, lView);
                    // We will add the case nodes later, during the update phase
                    setIsNotParent();
                    break;
                case ELEMENT_MARKER:
                    const tagNameValue = createOpCodes[++i];
                    const elementNodeIndex = createOpCodes[++i];
                    ngDevMode &&
                        assertEqual(typeof tagNameValue, 'string', `Expected "${tagNameValue}" to be an element node tag name`);
                    const elementRNode = renderer.createElement(tagNameValue);
                    ngDevMode && ngDevMode.rendererCreateElement++;
                    previousTNode = currentTNode;
                    currentTNode = createDynamicNodeAtIndex(tView, lView, elementNodeIndex, 3 /* Element */, elementRNode, tagNameValue);
                    visitedNodes.push(elementNodeIndex);
                    break;
                default:
                    throw new Error(`Unable to determine the type of mutate operation for "${opCode}"`);
            }
        }
    }
    setIsNotParent();
    return visitedNodes;
}
/**
 * Apply `I18nUpdateOpCodes` OpCodes
 *
 * @param tView Current `TView`
 * @param tIcus If ICUs present than this contains them.
 * @param lView Current `LView`
 * @param updateOpCodes OpCodes to process
 * @param bindingsStartIndex Location of the first `ɵɵi18nApply`
 * @param changeMask Each bit corresponds to a `ɵɵi18nExp` (Counting backwards from
 *     `bindingsStartIndex`)
 */
export function applyUpdateOpCodes(tView, tIcus, lView, updateOpCodes, bindingsStartIndex, changeMask) {
    let caseCreated = false;
    for (let i = 0; i < updateOpCodes.length; i++) {
        // bit code to check if we should apply the next update
        const checkBit = updateOpCodes[i];
        // Number of opCodes to skip until next set of update codes
        const skipCodes = updateOpCodes[++i];
        if (checkBit & changeMask) {
            // The value has been updated since last checked
            let value = '';
            for (let j = i + 1; j <= (i + skipCodes); j++) {
                const opCode = updateOpCodes[j];
                if (typeof opCode == 'string') {
                    value += opCode;
                }
                else if (typeof opCode == 'number') {
                    if (opCode < 0) {
                        // Negative opCode represent `i18nExp` values offset.
                        value += renderStringify(lView[bindingsStartIndex - opCode]);
                    }
                    else {
                        const nodeIndex = opCode >>> 2 /* SHIFT_REF */;
                        switch (opCode & 3 /* MASK_OPCODE */) {
                            case 1 /* Attr */:
                                const propName = updateOpCodes[++j];
                                const sanitizeFn = updateOpCodes[++j];
                                elementPropertyInternal(tView, getTNode(tView, nodeIndex), lView, propName, value, lView[RENDERER], sanitizeFn, false);
                                break;
                            case 0 /* Text */:
                                textBindingInternal(lView, nodeIndex, value);
                                break;
                            case 2 /* IcuSwitch */:
                                caseCreated =
                                    applyIcuSwitchCase(tView, tIcus, updateOpCodes[++j], lView, value);
                                break;
                            case 3 /* IcuUpdate */:
                                applyIcuUpdateCase(tView, tIcus, updateOpCodes[++j], bindingsStartIndex, lView, caseCreated);
                                break;
                        }
                    }
                }
            }
        }
        i += skipCodes;
    }
}
/**
 * Apply OpCodes associated with updating an existing ICU.
 *
 * @param tView Current `TView`
 * @param tIcus ICUs active at this location.
 * @param tIcuIndex Index into `tIcus` to process.
 * @param bindingsStartIndex Location of the first `ɵɵi18nApply`
 * @param lView Current `LView`
 * @param changeMask Each bit corresponds to a `ɵɵi18nExp` (Counting backwards from
 *     `bindingsStartIndex`)
 */
function applyIcuUpdateCase(tView, tIcus, tIcuIndex, bindingsStartIndex, lView, caseCreated) {
    ngDevMode && assertIndexInRange(tIcus, tIcuIndex);
    const tIcu = tIcus[tIcuIndex];
    ngDevMode && assertIndexInRange(lView, tIcu.currentCaseLViewIndex);
    const activeCaseIndex = lView[tIcu.currentCaseLViewIndex];
    if (activeCaseIndex !== null) {
        const mask = caseCreated ?
            -1 : // -1 is same as all bits on, which simulates creation since it marks all bits dirty
            changeMask;
        applyUpdateOpCodes(tView, tIcus, lView, tIcu.update[activeCaseIndex], bindingsStartIndex, mask);
    }
}
/**
 * Apply OpCodes associated with switching a case on ICU.
 *
 * This involves tearing down existing case and than building up a new case.
 *
 * @param tView Current `TView`
 * @param tIcus ICUs active at this location.
 * @param tICuIndex Index into `tIcus` to process.
 * @param lView Current `LView`
 * @param value Value of the case to update to.
 * @returns true if a new case was created (needed so that the update executes regardless of the
 *     bitmask)
 */
function applyIcuSwitchCase(tView, tIcus, tICuIndex, lView, value) {
    applyIcuSwitchCaseRemove(tView, tIcus, tICuIndex, lView);
    // Rebuild a new case for this ICU
    let caseCreated = false;
    const tIcu = tIcus[tICuIndex];
    const caseIndex = getCaseIndex(tIcu, value);
    lView[tIcu.currentCaseLViewIndex] = caseIndex !== -1 ? caseIndex : null;
    if (caseIndex > -1) {
        // Add the nodes for the new case
        applyCreateOpCodes(tView, -1, // -1 means we don't have parent node
        tIcu.create[caseIndex], lView);
        caseCreated = true;
    }
    return caseCreated;
}
/**
 * Apply OpCodes associated with tearing down of DOM.
 *
 * This involves tearing down existing case and than building up a new case.
 *
 * @param tView Current `TView`
 * @param tIcus ICUs active at this location.
 * @param tIcuIndex Index into `tIcus` to process.
 * @param lView Current `LView`
 * @returns true if a new case was created (needed so that the update executes regardless of the
 *     bitmask)
 */
function applyIcuSwitchCaseRemove(tView, tIcus, tIcuIndex, lView) {
    ngDevMode && assertIndexInRange(tIcus, tIcuIndex);
    const tIcu = tIcus[tIcuIndex];
    const activeCaseIndex = lView[tIcu.currentCaseLViewIndex];
    if (activeCaseIndex !== null) {
        const removeCodes = tIcu.remove[activeCaseIndex];
        for (let k = 0; k < removeCodes.length; k++) {
            const removeOpCode = removeCodes[k];
            const nodeOrIcuIndex = removeOpCode >>> 3 /* SHIFT_REF */;
            switch (removeOpCode & 7 /* MASK_INSTRUCTION */) {
                case 3 /* Remove */:
                    // FIXME(misko): this comment is wrong!
                    // Remove DOM element, but do *not* mark TNode as detached, since we are
                    // just switching ICU cases (while keeping the same TNode), so a DOM element
                    // representing a new ICU case will be re-created.
                    removeNode(tView, lView, nodeOrIcuIndex, /* markAsDetached */ false);
                    break;
                case 6 /* RemoveNestedIcu */:
                    applyIcuSwitchCaseRemove(tView, tIcus, nodeOrIcuIndex, lView);
                    break;
            }
        }
    }
}
function appendI18nNode(tView, tNode, parentTNode, previousTNode, lView) {
    ngDevMode && ngDevMode.rendererMoveNode++;
    const nextNode = tNode.next;
    if (!previousTNode) {
        previousTNode = parentTNode;
    }
    // Re-organize node tree to put this node in the correct position.
    if (previousTNode === parentTNode && tNode !== parentTNode.child) {
        tNode.next = parentTNode.child;
        parentTNode.child = tNode;
    }
    else if (previousTNode !== parentTNode && tNode !== previousTNode.next) {
        tNode.next = previousTNode.next;
        previousTNode.next = tNode;
    }
    else {
        tNode.next = null;
    }
    if (parentTNode !== lView[T_HOST]) {
        tNode.parent = parentTNode;
    }
    // If tNode was moved around, we might need to fix a broken link.
    let cursor = tNode.next;
    while (cursor) {
        if (cursor.next === tNode) {
            cursor.next = nextNode;
        }
        cursor = cursor.next;
    }
    // If the placeholder to append is a projection, we need to move the projected nodes instead
    if (tNode.type === 1 /* Projection */) {
        applyProjection(tView, lView, tNode);
        return tNode;
    }
    appendChild(tView, lView, getNativeByTNode(tNode, lView), tNode);
    const slotValue = lView[tNode.index];
    if (tNode.type !== 0 /* Container */ && isLContainer(slotValue)) {
        // Nodes that inject ViewContainerRef also have a comment node that should be moved
        appendChild(tView, lView, slotValue[NATIVE], tNode);
    }
    return tNode;
}
/**
 * See `i18nEnd` above.
 */
export function i18nEndFirstPass(tView, lView) {
    ngDevMode &&
        assertEqual(getBindingIndex(), tView.bindingStartIndex, 'i18nEnd should be called before any binding');
    const rootIndex = popI18nIndex();
    const tI18n = tView.data[rootIndex + HEADER_OFFSET];
    ngDevMode && assertDefined(tI18n, `You should call i18nStart before i18nEnd`);
    // Find the last node that was added before `i18nEnd`
    const lastCreatedNode = getPreviousOrParentTNode();
    // Read the instructions to insert/move/remove DOM elements
    const visitedNodes = applyCreateOpCodes(tView, rootIndex, tI18n.create, lView);
    // Remove deleted nodes
    let index = rootIndex + 1;
    while (index <= lastCreatedNode.index - HEADER_OFFSET) {
        if (visitedNodes.indexOf(index) === -1) {
            removeNode(tView, lView, index, /* markAsDetached */ true);
        }
        // Check if an element has any local refs and skip them
        const tNode = getTNode(tView, index);
        if (tNode &&
            (tNode.type === 0 /* Container */ || tNode.type === 3 /* Element */ ||
                tNode.type === 4 /* ElementContainer */) &&
            tNode.localNames !== null) {
            // Divide by 2 to get the number of local refs,
            // since they are stored as an array that also includes directive indexes,
            // i.e. ["localRef", directiveIndex, ...]
            index += tNode.localNames.length >> 1;
        }
        index++;
    }
}
function removeNode(tView, lView, index, markAsDetached) {
    const removedPhTNode = getTNode(tView, index);
    const removedPhRNode = getNativeByIndex(index, lView);
    if (removedPhRNode) {
        nativeRemoveNode(lView[RENDERER], removedPhRNode);
    }
    const slotValue = load(lView, index);
    if (isLContainer(slotValue)) {
        const lContainer = slotValue;
        if (removedPhTNode.type !== 0 /* Container */) {
            nativeRemoveNode(lView[RENDERER], lContainer[NATIVE]);
        }
    }
    if (markAsDetached) {
        // Define this node as detached to avoid projecting it later
        removedPhTNode.flags |= 64 /* isDetached */;
    }
    ngDevMode && ngDevMode.rendererRemoveNode++;
}
/**
 * Creates and stores the dynamic TNode, and unhooks it from the tree for now.
 */
function createDynamicNodeAtIndex(tView, lView, index, type, native, name) {
    const previousOrParentTNode = getPreviousOrParentTNode();
    ngDevMode && assertIndexInRange(lView, index + HEADER_OFFSET);
    lView[index + HEADER_OFFSET] = native;
    // FIXME(misko): Why does this create A TNode??? I would not expect this to be here.
    const tNode = getOrCreateTNode(tView, lView[T_HOST], index, type, name, null);
    // We are creating a dynamic node, the previous tNode might not be pointing at this node.
    // We will link ourselves into the tree later with `appendI18nNode`.
    if (previousOrParentTNode && previousOrParentTNode.next === tNode) {
        previousOrParentTNode.next = null;
    }
    return tNode;
}
/**
 * Returns the index of the current case of an ICU expression depending on the main binding value
 *
 * @param icuExpression
 * @param bindingValue The value of the main binding used by this ICU expression
 */
function getCaseIndex(icuExpression, bindingValue) {
    let index = icuExpression.cases.indexOf(bindingValue);
    if (index === -1) {
        switch (icuExpression.type) {
            case 1 /* plural */: {
                const resolvedCase = getPluralCase(bindingValue, getLocaleId());
                index = icuExpression.cases.indexOf(resolvedCase);
                if (index === -1 && resolvedCase !== 'other') {
                    index = icuExpression.cases.indexOf('other');
                }
                break;
            }
            case 0 /* select */: {
                index = icuExpression.cases.indexOf('other');
                break;
            }
        }
    }
    return index;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaTE4bl9hcHBseS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3JlbmRlcjMvaTE4bi9pMThuX2FwcGx5LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBQyxhQUFhLEVBQUMsTUFBTSx5QkFBeUIsQ0FBQztBQUN0RCxPQUFPLEVBQUMsYUFBYSxFQUFFLFdBQVcsRUFBRSxrQkFBa0IsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBQ2pGLE9BQU8sRUFBQyxlQUFlLEVBQUMsTUFBTSxzQkFBc0IsQ0FBQztBQUNyRCxPQUFPLEVBQUMsd0JBQXdCLEVBQUUsdUJBQXVCLEVBQUUsZ0JBQWdCLEVBQUUsbUJBQW1CLEVBQUMsTUFBTSx3QkFBd0IsQ0FBQztBQUNoSSxPQUFPLEVBQWEsTUFBTSxFQUFDLE1BQU0seUJBQXlCLENBQUM7QUFDM0QsT0FBTyxFQUFDLGNBQWMsRUFBRSxjQUFjLEVBQWlHLE1BQU0sb0JBQW9CLENBQUM7QUFJbEssT0FBTyxFQUFDLFlBQVksRUFBQyxNQUFNLDJCQUEyQixDQUFDO0FBQ3ZELE9BQU8sRUFBQyxhQUFhLEVBQVMsUUFBUSxFQUFFLE1BQU0sRUFBUSxNQUFNLG9CQUFvQixDQUFDO0FBQ2pGLE9BQU8sRUFBQyxXQUFXLEVBQUUsZUFBZSxFQUFFLGNBQWMsRUFBRSxnQkFBZ0IsRUFBQyxNQUFNLHNCQUFzQixDQUFDO0FBQ3BHLE9BQU8sRUFBQyxlQUFlLEVBQVksd0JBQXdCLEVBQVksY0FBYyxFQUFFLHdCQUF3QixFQUFDLE1BQU0sVUFBVSxDQUFDO0FBQ2pJLE9BQU8sRUFBQyxlQUFlLEVBQUMsTUFBTSxvQkFBb0IsQ0FBQztBQUNuRCxPQUFPLEVBQUMsZ0JBQWdCLEVBQUUsZ0JBQWdCLEVBQUUsUUFBUSxFQUFFLElBQUksRUFBQyxNQUFNLG9CQUFvQixDQUFDO0FBQ3RGLE9BQU8sRUFBQyxXQUFXLEVBQUMsTUFBTSxrQkFBa0IsQ0FBQztBQUc3QyxNQUFNLGNBQWMsR0FBYSxFQUFFLENBQUM7QUFDcEMsSUFBSSxxQkFBcUIsR0FBRyxDQUFDLENBQUMsQ0FBQztBQUUvQixTQUFTLFlBQVk7SUFDbkIsT0FBTyxjQUFjLENBQUMscUJBQXFCLEVBQUUsQ0FBQyxDQUFDO0FBQ2pELENBQUM7QUFFRCxNQUFNLFVBQVUsYUFBYSxDQUFDLEtBQWE7SUFDekMsY0FBYyxDQUFDLEVBQUUscUJBQXFCLENBQUMsR0FBRyxLQUFLLENBQUM7QUFDbEQsQ0FBQztBQUVELElBQUksVUFBVSxHQUFHLEdBQUcsQ0FBQztBQUNyQixJQUFJLGFBQWEsR0FBRyxDQUFDLENBQUM7QUFFdEIsTUFBTSxVQUFVLFVBQVUsQ0FBQyxHQUFZO0lBQ3JDLElBQUksR0FBRyxFQUFFO1FBQ1AsVUFBVSxHQUFHLFVBQVUsR0FBRyxDQUFDLENBQUMsSUFBSSxhQUFhLENBQUMsQ0FBQztLQUNoRDtJQUNELGFBQWEsRUFBRSxDQUFDO0FBQ2xCLENBQUM7QUFFRCxNQUFNLFVBQVUsU0FBUyxDQUFDLEtBQVksRUFBRSxLQUFZLEVBQUUsS0FBYTtJQUNqRSxJQUFJLGFBQWEsR0FBRyxDQUFDLEVBQUU7UUFDckIsU0FBUyxJQUFJLGFBQWEsQ0FBQyxLQUFLLEVBQUUseUJBQXlCLENBQUMsQ0FBQztRQUM3RCxNQUFNLEtBQUssR0FBRyxLQUFLLENBQUMsSUFBSSxDQUFDLEtBQUssR0FBRyxhQUFhLENBQThCLENBQUM7UUFDN0UsSUFBSSxhQUFnQyxDQUFDO1FBQ3JDLElBQUksS0FBSyxHQUFnQixJQUFJLENBQUM7UUFDOUIsSUFBSSxLQUFLLENBQUMsT0FBTyxDQUFDLEtBQUssQ0FBQyxFQUFFO1lBQ3hCLGFBQWEsR0FBRyxLQUEwQixDQUFDO1NBQzVDO2FBQU07WUFDTCxhQUFhLEdBQUksS0FBZSxDQUFDLE1BQU0sQ0FBQztZQUN4QyxLQUFLLEdBQUksS0FBZSxDQUFDLElBQUksQ0FBQztTQUMvQjtRQUNELE1BQU0sa0JBQWtCLEdBQUcsZUFBZSxFQUFFLEdBQUcsYUFBYSxHQUFHLENBQUMsQ0FBQztRQUNqRSxrQkFBa0IsQ0FBQyxLQUFLLEVBQUUsS0FBSyxFQUFFLEtBQUssRUFBRSxhQUFhLEVBQUUsa0JBQWtCLEVBQUUsVUFBVSxDQUFDLENBQUM7UUFFdkYsa0VBQWtFO1FBQ2xFLFVBQVUsR0FBRyxHQUFHLENBQUM7UUFDakIsYUFBYSxHQUFHLENBQUMsQ0FBQztLQUNuQjtBQUNILENBQUM7QUFFRDs7Ozs7OztHQU9HO0FBQ0gsTUFBTSxVQUFVLGtCQUFrQixDQUM5QixLQUFZLEVBQUUsU0FBaUIsRUFBRSxhQUFnQyxFQUFFLEtBQVk7SUFDakYsTUFBTSxRQUFRLEdBQUcsS0FBSyxDQUFDLFFBQVEsQ0FBQyxDQUFDO0lBQ2pDLElBQUksWUFBWSxHQUFlLElBQUksQ0FBQztJQUNwQyxJQUFJLGFBQWEsR0FBZSxJQUFJLENBQUM7SUFDckMsTUFBTSxZQUFZLEdBQWEsRUFBRSxDQUFDO0lBQ2xDLEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxhQUFhLENBQUMsTUFBTSxFQUFFLENBQUMsRUFBRSxFQUFFO1FBQzdDLE1BQU0sTUFBTSxHQUFHLGFBQWEsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNoQyxJQUFJLE9BQU8sTUFBTSxJQUFJLFFBQVEsRUFBRTtZQUM3QixNQUFNLFNBQVMsR0FBRyxjQUFjLENBQUMsTUFBTSxFQUFFLFFBQVEsQ0FBQyxDQUFDO1lBQ25ELE1BQU0sYUFBYSxHQUFHLGFBQWEsQ0FBQyxFQUFFLENBQUMsQ0FBVyxDQUFDO1lBQ25ELFNBQVMsSUFBSSxTQUFTLENBQUMsc0JBQXNCLEVBQUUsQ0FBQztZQUNoRCxhQUFhLEdBQUcsWUFBWSxDQUFDO1lBQzdCLFlBQVk7Z0JBQ1Isd0JBQXdCLENBQUMsS0FBSyxFQUFFLEtBQUssRUFBRSxhQUFhLG1CQUFxQixTQUFTLEVBQUUsSUFBSSxDQUFDLENBQUM7WUFDOUYsWUFBWSxDQUFDLElBQUksQ0FBQyxhQUFhLENBQUMsQ0FBQztZQUNqQyxjQUFjLEVBQUUsQ0FBQztTQUNsQjthQUFNLElBQUksT0FBTyxNQUFNLElBQUksUUFBUSxFQUFFO1lBQ3BDLFFBQVEsTUFBTSwyQkFBb0MsRUFBRTtnQkFDbEQ7b0JBQ0UsTUFBTSxvQkFBb0IsR0FBRyxNQUFNLDBCQUFrQyxDQUFDO29CQUN0RSxJQUFJLGdCQUF1QixDQUFDO29CQUM1QixJQUFJLG9CQUFvQixLQUFLLFNBQVMsRUFBRTt3QkFDdEMsMERBQTBEO3dCQUMxRCx5REFBeUQ7d0JBQ3pELGdCQUFnQixHQUFHLEtBQUssQ0FBQyxNQUFNLENBQUUsQ0FBQztxQkFDbkM7eUJBQU07d0JBQ0wsZ0JBQWdCLEdBQUcsUUFBUSxDQUFDLEtBQUssRUFBRSxvQkFBb0IsQ0FBQyxDQUFDO3FCQUMxRDtvQkFDRCxTQUFTO3dCQUNMLGFBQWEsQ0FDVCxZQUFhLEVBQ2IsMkVBQTJFLENBQUMsQ0FBQztvQkFDckYsYUFBYTt3QkFDVCxjQUFjLENBQUMsS0FBSyxFQUFFLFlBQWEsRUFBRSxnQkFBZ0IsRUFBRSxhQUFhLEVBQUUsS0FBSyxDQUFDLENBQUM7b0JBQ2pGLE1BQU07Z0JBQ1I7b0JBQ0Usb0ZBQW9GO29CQUNwRix5REFBeUQ7b0JBQ3pELE1BQU0sUUFBUSxHQUFHLE1BQU0sSUFBSSxDQUFDLENBQUM7b0JBQzdCLHVFQUF1RTtvQkFDdkUsTUFBTSxTQUFTLEdBQUcsQ0FBQyxRQUFRLENBQUMsQ0FBQyxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsc0JBQStCLENBQUM7b0JBQy9FLFlBQVksQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLENBQUM7b0JBQzdCLGFBQWEsR0FBRyxZQUFZLENBQUM7b0JBQzdCLFlBQVksR0FBRyxRQUFRLENBQUMsS0FBSyxFQUFFLFNBQVMsQ0FBQyxDQUFDO29CQUMxQyxJQUFJLFlBQVksRUFBRTt3QkFDaEIsd0JBQXdCLENBQUMsWUFBWSxFQUFFLFFBQVEsQ0FBQyxDQUFDO3FCQUNsRDtvQkFDRCxNQUFNO2dCQUNSO29CQUNFLE1BQU0sWUFBWSxHQUFHLE1BQU0sc0JBQStCLENBQUM7b0JBQzNELGFBQWEsR0FBRyxZQUFZLEdBQUcsUUFBUSxDQUFDLEtBQUssRUFBRSxZQUFZLENBQUMsQ0FBQztvQkFDN0Qsd0JBQXdCLENBQUMsWUFBWSxFQUFFLEtBQUssQ0FBQyxDQUFDO29CQUM5QyxNQUFNO2dCQUNSO29CQUNFLE1BQU0sZ0JBQWdCLEdBQUcsTUFBTSxzQkFBK0IsQ0FBQztvQkFDL0QsTUFBTSxRQUFRLEdBQUcsYUFBYSxDQUFDLEVBQUUsQ0FBQyxDQUFXLENBQUM7b0JBQzlDLE1BQU0sU0FBUyxHQUFHLGFBQWEsQ0FBQyxFQUFFLENBQUMsQ0FBVyxDQUFDO29CQUMvQyxxRUFBcUU7b0JBQ3JFLDBFQUEwRTtvQkFDMUUsd0JBQXdCLENBQ3BCLFFBQVEsQ0FBQyxLQUFLLEVBQUUsZ0JBQWdCLENBQUMsRUFBRSxLQUFLLEVBQUUsUUFBUSxFQUFFLFNBQVMsRUFBRSxJQUFJLEVBQUUsSUFBSSxDQUFDLENBQUM7b0JBQy9FLE1BQU07Z0JBQ1I7b0JBQ0UsTUFBTSxJQUFJLEtBQUssQ0FBQyx5REFBeUQsTUFBTSxHQUFHLENBQUMsQ0FBQzthQUN2RjtTQUNGO2FBQU07WUFDTCxRQUFRLE1BQU0sRUFBRTtnQkFDZCxLQUFLLGNBQWM7b0JBQ2pCLE1BQU0sWUFBWSxHQUFHLGFBQWEsQ0FBQyxFQUFFLENBQUMsQ0FBVyxDQUFDO29CQUNsRCxNQUFNLGdCQUFnQixHQUFHLGFBQWEsQ0FBQyxFQUFFLENBQUMsQ0FBVyxDQUFDO29CQUN0RCxTQUFTO3dCQUNMLFdBQVcsQ0FDUCxPQUFPLFlBQVksRUFBRSxRQUFRLEVBQzdCLGFBQWEsWUFBWSw4QkFBOEIsQ0FBQyxDQUFDO29CQUNqRSxNQUFNLFlBQVksR0FBRyxRQUFRLENBQUMsYUFBYSxDQUFDLFlBQVksQ0FBQyxDQUFDO29CQUMxRCxTQUFTLElBQUksU0FBUyxDQUFDLHFCQUFxQixFQUFFLENBQUM7b0JBQy9DLGFBQWEsR0FBRyxZQUFZLENBQUM7b0JBQzdCLFlBQVksR0FBRyx3QkFBd0IsQ0FDbkMsS0FBSyxFQUFFLEtBQUssRUFBRSxnQkFBZ0Isd0JBQTBCLFlBQVksRUFBRSxJQUFJLENBQUMsQ0FBQztvQkFDaEYsWUFBWSxDQUFDLElBQUksQ0FBQyxnQkFBZ0IsQ0FBQyxDQUFDO29CQUNwQyxlQUFlLENBQUMsWUFBWSxFQUFFLEtBQUssQ0FBQyxDQUFDO29CQUNyQyw0REFBNEQ7b0JBQzVELGNBQWMsRUFBRSxDQUFDO29CQUNqQixNQUFNO2dCQUNSLEtBQUssY0FBYztvQkFDakIsTUFBTSxZQUFZLEdBQUcsYUFBYSxDQUFDLEVBQUUsQ0FBQyxDQUFXLENBQUM7b0JBQ2xELE1BQU0sZ0JBQWdCLEdBQUcsYUFBYSxDQUFDLEVBQUUsQ0FBQyxDQUFXLENBQUM7b0JBQ3RELFNBQVM7d0JBQ0wsV0FBVyxDQUNQLE9BQU8sWUFBWSxFQUFFLFFBQVEsRUFDN0IsYUFBYSxZQUFZLGtDQUFrQyxDQUFDLENBQUM7b0JBQ3JFLE1BQU0sWUFBWSxHQUFHLFFBQVEsQ0FBQyxhQUFhLENBQUMsWUFBWSxDQUFDLENBQUM7b0JBQzFELFNBQVMsSUFBSSxTQUFTLENBQUMscUJBQXFCLEVBQUUsQ0FBQztvQkFDL0MsYUFBYSxHQUFHLFlBQVksQ0FBQztvQkFDN0IsWUFBWSxHQUFHLHdCQUF3QixDQUNuQyxLQUFLLEVBQUUsS0FBSyxFQUFFLGdCQUFnQixtQkFBcUIsWUFBWSxFQUFFLFlBQVksQ0FBQyxDQUFDO29CQUNuRixZQUFZLENBQUMsSUFBSSxDQUFDLGdCQUFnQixDQUFDLENBQUM7b0JBQ3BDLE1BQU07Z0JBQ1I7b0JBQ0UsTUFBTSxJQUFJLEtBQUssQ0FBQyx5REFBeUQsTUFBTSxHQUFHLENBQUMsQ0FBQzthQUN2RjtTQUNGO0tBQ0Y7SUFFRCxjQUFjLEVBQUUsQ0FBQztJQUVqQixPQUFPLFlBQVksQ0FBQztBQUN0QixDQUFDO0FBR0Q7Ozs7Ozs7Ozs7R0FVRztBQUNILE1BQU0sVUFBVSxrQkFBa0IsQ0FDOUIsS0FBWSxFQUFFLEtBQWtCLEVBQUUsS0FBWSxFQUFFLGFBQWdDLEVBQ2hGLGtCQUEwQixFQUFFLFVBQWtCO0lBQ2hELElBQUksV0FBVyxHQUFHLEtBQUssQ0FBQztJQUN4QixLQUFLLElBQUksQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLEdBQUcsYUFBYSxDQUFDLE1BQU0sRUFBRSxDQUFDLEVBQUUsRUFBRTtRQUM3Qyx1REFBdUQ7UUFDdkQsTUFBTSxRQUFRLEdBQUcsYUFBYSxDQUFDLENBQUMsQ0FBVyxDQUFDO1FBQzVDLDJEQUEyRDtRQUMzRCxNQUFNLFNBQVMsR0FBRyxhQUFhLENBQUMsRUFBRSxDQUFDLENBQVcsQ0FBQztRQUMvQyxJQUFJLFFBQVEsR0FBRyxVQUFVLEVBQUU7WUFDekIsZ0RBQWdEO1lBQ2hELElBQUksS0FBSyxHQUFHLEVBQUUsQ0FBQztZQUNmLEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxHQUFHLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxDQUFDLEdBQUcsU0FBUyxDQUFDLEVBQUUsQ0FBQyxFQUFFLEVBQUU7Z0JBQzdDLE1BQU0sTUFBTSxHQUFHLGFBQWEsQ0FBQyxDQUFDLENBQUMsQ0FBQztnQkFDaEMsSUFBSSxPQUFPLE1BQU0sSUFBSSxRQUFRLEVBQUU7b0JBQzdCLEtBQUssSUFBSSxNQUFNLENBQUM7aUJBQ2pCO3FCQUFNLElBQUksT0FBTyxNQUFNLElBQUksUUFBUSxFQUFFO29CQUNwQyxJQUFJLE1BQU0sR0FBRyxDQUFDLEVBQUU7d0JBQ2QscURBQXFEO3dCQUNyRCxLQUFLLElBQUksZUFBZSxDQUFDLEtBQUssQ0FBQyxrQkFBa0IsR0FBRyxNQUFNLENBQUMsQ0FBQyxDQUFDO3FCQUM5RDt5QkFBTTt3QkFDTCxNQUFNLFNBQVMsR0FBRyxNQUFNLHNCQUErQixDQUFDO3dCQUN4RCxRQUFRLE1BQU0sc0JBQStCLEVBQUU7NEJBQzdDO2dDQUNFLE1BQU0sUUFBUSxHQUFHLGFBQWEsQ0FBQyxFQUFFLENBQUMsQ0FBVyxDQUFDO2dDQUM5QyxNQUFNLFVBQVUsR0FBRyxhQUFhLENBQUMsRUFBRSxDQUFDLENBQXVCLENBQUM7Z0NBQzVELHVCQUF1QixDQUNuQixLQUFLLEVBQUUsUUFBUSxDQUFDLEtBQUssRUFBRSxTQUFTLENBQUMsRUFBRSxLQUFLLEVBQUUsUUFBUSxFQUFFLEtBQUssRUFBRSxLQUFLLENBQUMsUUFBUSxDQUFDLEVBQzFFLFVBQVUsRUFBRSxLQUFLLENBQUMsQ0FBQztnQ0FDdkIsTUFBTTs0QkFDUjtnQ0FDRSxtQkFBbUIsQ0FBQyxLQUFLLEVBQUUsU0FBUyxFQUFFLEtBQUssQ0FBQyxDQUFDO2dDQUM3QyxNQUFNOzRCQUNSO2dDQUNFLFdBQVc7b0NBQ1Asa0JBQWtCLENBQUMsS0FBSyxFQUFFLEtBQU0sRUFBRSxhQUFhLENBQUMsRUFBRSxDQUFDLENBQVcsRUFBRSxLQUFLLEVBQUUsS0FBSyxDQUFDLENBQUM7Z0NBQ2xGLE1BQU07NEJBQ1I7Z0NBQ0Usa0JBQWtCLENBQ2QsS0FBSyxFQUFFLEtBQU0sRUFBRSxhQUFhLENBQUMsRUFBRSxDQUFDLENBQVcsRUFBRSxrQkFBa0IsRUFBRSxLQUFLLEVBQ3RFLFdBQVcsQ0FBQyxDQUFDO2dDQUNqQixNQUFNO3lCQUNUO3FCQUNGO2lCQUNGO2FBQ0Y7U0FDRjtRQUNELENBQUMsSUFBSSxTQUFTLENBQUM7S0FDaEI7QUFDSCxDQUFDO0FBRUQ7Ozs7Ozs7Ozs7R0FVRztBQUNILFNBQVMsa0JBQWtCLENBQ3ZCLEtBQVksRUFBRSxLQUFhLEVBQUUsU0FBaUIsRUFBRSxrQkFBMEIsRUFBRSxLQUFZLEVBQ3hGLFdBQW9CO0lBQ3RCLFNBQVMsSUFBSSxrQkFBa0IsQ0FBQyxLQUFLLEVBQUUsU0FBUyxDQUFDLENBQUM7SUFDbEQsTUFBTSxJQUFJLEdBQUcsS0FBSyxDQUFDLFNBQVMsQ0FBQyxDQUFDO0lBQzlCLFNBQVMsSUFBSSxrQkFBa0IsQ0FBQyxLQUFLLEVBQUUsSUFBSSxDQUFDLHFCQUFxQixDQUFDLENBQUM7SUFDbkUsTUFBTSxlQUFlLEdBQUcsS0FBSyxDQUFDLElBQUksQ0FBQyxxQkFBcUIsQ0FBQyxDQUFDO0lBQzFELElBQUksZUFBZSxLQUFLLElBQUksRUFBRTtRQUM1QixNQUFNLElBQUksR0FBRyxXQUFXLENBQUMsQ0FBQztZQUN0QixDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUUsb0ZBQW9GO1lBQzFGLFVBQVUsQ0FBQztRQUNmLGtCQUFrQixDQUFDLEtBQUssRUFBRSxLQUFLLEVBQUUsS0FBSyxFQUFFLElBQUksQ0FBQyxNQUFNLENBQUMsZUFBZSxDQUFDLEVBQUUsa0JBQWtCLEVBQUUsSUFBSSxDQUFDLENBQUM7S0FDakc7QUFDSCxDQUFDO0FBRUQ7Ozs7Ozs7Ozs7OztHQVlHO0FBQ0gsU0FBUyxrQkFBa0IsQ0FDdkIsS0FBWSxFQUFFLEtBQWEsRUFBRSxTQUFpQixFQUFFLEtBQVksRUFBRSxLQUFhO0lBQzdFLHdCQUF3QixDQUFDLEtBQUssRUFBRSxLQUFLLEVBQUUsU0FBUyxFQUFFLEtBQUssQ0FBQyxDQUFDO0lBRXpELGtDQUFrQztJQUNsQyxJQUFJLFdBQVcsR0FBRyxLQUFLLENBQUM7SUFDeEIsTUFBTSxJQUFJLEdBQUcsS0FBSyxDQUFDLFNBQVMsQ0FBQyxDQUFDO0lBQzlCLE1BQU0sU0FBUyxHQUFHLFlBQVksQ0FBQyxJQUFJLEVBQUUsS0FBSyxDQUFDLENBQUM7SUFDNUMsS0FBSyxDQUFDLElBQUksQ0FBQyxxQkFBcUIsQ0FBQyxHQUFHLFNBQVMsS0FBSyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsU0FBUyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUM7SUFDeEUsSUFBSSxTQUFTLEdBQUcsQ0FBQyxDQUFDLEVBQUU7UUFDbEIsaUNBQWlDO1FBQ2pDLGtCQUFrQixDQUNkLEtBQUssRUFBRSxDQUFDLENBQUMsRUFBRyxxQ0FBcUM7UUFDakQsSUFBSSxDQUFDLE1BQU0sQ0FBQyxTQUFTLENBQUMsRUFBRSxLQUFLLENBQUMsQ0FBQztRQUNuQyxXQUFXLEdBQUcsSUFBSSxDQUFDO0tBQ3BCO0lBQ0QsT0FBTyxXQUFXLENBQUM7QUFDckIsQ0FBQztBQUVEOzs7Ozs7Ozs7OztHQVdHO0FBQ0gsU0FBUyx3QkFBd0IsQ0FBQyxLQUFZLEVBQUUsS0FBYSxFQUFFLFNBQWlCLEVBQUUsS0FBWTtJQUM1RixTQUFTLElBQUksa0JBQWtCLENBQUMsS0FBSyxFQUFFLFNBQVMsQ0FBQyxDQUFDO0lBQ2xELE1BQU0sSUFBSSxHQUFHLEtBQUssQ0FBQyxTQUFTLENBQUMsQ0FBQztJQUM5QixNQUFNLGVBQWUsR0FBRyxLQUFLLENBQUMsSUFBSSxDQUFDLHFCQUFxQixDQUFDLENBQUM7SUFDMUQsSUFBSSxlQUFlLEtBQUssSUFBSSxFQUFFO1FBQzVCLE1BQU0sV0FBVyxHQUFHLElBQUksQ0FBQyxNQUFNLENBQUMsZUFBZSxDQUFDLENBQUM7UUFDakQsS0FBSyxJQUFJLENBQUMsR0FBRyxDQUFDLEVBQUUsQ0FBQyxHQUFHLFdBQVcsQ0FBQyxNQUFNLEVBQUUsQ0FBQyxFQUFFLEVBQUU7WUFDM0MsTUFBTSxZQUFZLEdBQUcsV0FBVyxDQUFDLENBQUMsQ0FBVyxDQUFDO1lBQzlDLE1BQU0sY0FBYyxHQUFHLFlBQVksc0JBQStCLENBQUM7WUFDbkUsUUFBUSxZQUFZLDJCQUFvQyxFQUFFO2dCQUN4RDtvQkFDRSx1Q0FBdUM7b0JBQ3ZDLHdFQUF3RTtvQkFDeEUsNEVBQTRFO29CQUM1RSxrREFBa0Q7b0JBQ2xELFVBQVUsQ0FBQyxLQUFLLEVBQUUsS0FBSyxFQUFFLGNBQWMsRUFBRSxvQkFBb0IsQ0FBQyxLQUFLLENBQUMsQ0FBQztvQkFDckUsTUFBTTtnQkFDUjtvQkFDRSx3QkFBd0IsQ0FBQyxLQUFLLEVBQUUsS0FBSyxFQUFFLGNBQWMsRUFBRSxLQUFLLENBQUMsQ0FBQztvQkFDOUQsTUFBTTthQUNUO1NBQ0Y7S0FDRjtBQUNILENBQUM7QUFFRCxTQUFTLGNBQWMsQ0FDbkIsS0FBWSxFQUFFLEtBQVksRUFBRSxXQUFrQixFQUFFLGFBQXlCLEVBQ3pFLEtBQVk7SUFDZCxTQUFTLElBQUksU0FBUyxDQUFDLGdCQUFnQixFQUFFLENBQUM7SUFDMUMsTUFBTSxRQUFRLEdBQUcsS0FBSyxDQUFDLElBQUksQ0FBQztJQUM1QixJQUFJLENBQUMsYUFBYSxFQUFFO1FBQ2xCLGFBQWEsR0FBRyxXQUFXLENBQUM7S0FDN0I7SUFFRCxrRUFBa0U7SUFDbEUsSUFBSSxhQUFhLEtBQUssV0FBVyxJQUFJLEtBQUssS0FBSyxXQUFXLENBQUMsS0FBSyxFQUFFO1FBQ2hFLEtBQUssQ0FBQyxJQUFJLEdBQUcsV0FBVyxDQUFDLEtBQUssQ0FBQztRQUMvQixXQUFXLENBQUMsS0FBSyxHQUFHLEtBQUssQ0FBQztLQUMzQjtTQUFNLElBQUksYUFBYSxLQUFLLFdBQVcsSUFBSSxLQUFLLEtBQUssYUFBYSxDQUFDLElBQUksRUFBRTtRQUN4RSxLQUFLLENBQUMsSUFBSSxHQUFHLGFBQWEsQ0FBQyxJQUFJLENBQUM7UUFDaEMsYUFBYSxDQUFDLElBQUksR0FBRyxLQUFLLENBQUM7S0FDNUI7U0FBTTtRQUNMLEtBQUssQ0FBQyxJQUFJLEdBQUcsSUFBSSxDQUFDO0tBQ25CO0lBRUQsSUFBSSxXQUFXLEtBQUssS0FBSyxDQUFDLE1BQU0sQ0FBQyxFQUFFO1FBQ2pDLEtBQUssQ0FBQyxNQUFNLEdBQUcsV0FBMkIsQ0FBQztLQUM1QztJQUVELGlFQUFpRTtJQUNqRSxJQUFJLE1BQU0sR0FBZSxLQUFLLENBQUMsSUFBSSxDQUFDO0lBQ3BDLE9BQU8sTUFBTSxFQUFFO1FBQ2IsSUFBSSxNQUFNLENBQUMsSUFBSSxLQUFLLEtBQUssRUFBRTtZQUN6QixNQUFNLENBQUMsSUFBSSxHQUFHLFFBQVEsQ0FBQztTQUN4QjtRQUNELE1BQU0sR0FBRyxNQUFNLENBQUMsSUFBSSxDQUFDO0tBQ3RCO0lBRUQsNEZBQTRGO0lBQzVGLElBQUksS0FBSyxDQUFDLElBQUksdUJBQXlCLEVBQUU7UUFDdkMsZUFBZSxDQUFDLEtBQUssRUFBRSxLQUFLLEVBQUUsS0FBd0IsQ0FBQyxDQUFDO1FBQ3hELE9BQU8sS0FBSyxDQUFDO0tBQ2Q7SUFFRCxXQUFXLENBQUMsS0FBSyxFQUFFLEtBQUssRUFBRSxnQkFBZ0IsQ0FBQyxLQUFLLEVBQUUsS0FBSyxDQUFDLEVBQUUsS0FBSyxDQUFDLENBQUM7SUFFakUsTUFBTSxTQUFTLEdBQUcsS0FBSyxDQUFDLEtBQUssQ0FBQyxLQUFLLENBQUMsQ0FBQztJQUNyQyxJQUFJLEtBQUssQ0FBQyxJQUFJLHNCQUF3QixJQUFJLFlBQVksQ0FBQyxTQUFTLENBQUMsRUFBRTtRQUNqRSxtRkFBbUY7UUFDbkYsV0FBVyxDQUFDLEtBQUssRUFBRSxLQUFLLEVBQUUsU0FBUyxDQUFDLE1BQU0sQ0FBQyxFQUFFLEtBQUssQ0FBQyxDQUFDO0tBQ3JEO0lBQ0QsT0FBTyxLQUFLLENBQUM7QUFDZixDQUFDO0FBRUQ7O0dBRUc7QUFDSCxNQUFNLFVBQVUsZ0JBQWdCLENBQUMsS0FBWSxFQUFFLEtBQVk7SUFDekQsU0FBUztRQUNMLFdBQVcsQ0FDUCxlQUFlLEVBQUUsRUFBRSxLQUFLLENBQUMsaUJBQWlCLEVBQzFDLDZDQUE2QyxDQUFDLENBQUM7SUFFdkQsTUFBTSxTQUFTLEdBQUcsWUFBWSxFQUFFLENBQUM7SUFDakMsTUFBTSxLQUFLLEdBQUcsS0FBSyxDQUFDLElBQUksQ0FBQyxTQUFTLEdBQUcsYUFBYSxDQUFVLENBQUM7SUFDN0QsU0FBUyxJQUFJLGFBQWEsQ0FBQyxLQUFLLEVBQUUsMENBQTBDLENBQUMsQ0FBQztJQUU5RSxxREFBcUQ7SUFDckQsTUFBTSxlQUFlLEdBQUcsd0JBQXdCLEVBQUUsQ0FBQztJQUVuRCwyREFBMkQ7SUFDM0QsTUFBTSxZQUFZLEdBQUcsa0JBQWtCLENBQUMsS0FBSyxFQUFFLFNBQVMsRUFBRSxLQUFLLENBQUMsTUFBTSxFQUFFLEtBQUssQ0FBQyxDQUFDO0lBRS9FLHVCQUF1QjtJQUN2QixJQUFJLEtBQUssR0FBRyxTQUFTLEdBQUcsQ0FBQyxDQUFDO0lBQzFCLE9BQU8sS0FBSyxJQUFJLGVBQWUsQ0FBQyxLQUFLLEdBQUcsYUFBYSxFQUFFO1FBQ3JELElBQUksWUFBWSxDQUFDLE9BQU8sQ0FBQyxLQUFLLENBQUMsS0FBSyxDQUFDLENBQUMsRUFBRTtZQUN0QyxVQUFVLENBQUMsS0FBSyxFQUFFLEtBQUssRUFBRSxLQUFLLEVBQUUsb0JBQW9CLENBQUMsSUFBSSxDQUFDLENBQUM7U0FDNUQ7UUFDRCx1REFBdUQ7UUFDdkQsTUFBTSxLQUFLLEdBQUcsUUFBUSxDQUFDLEtBQUssRUFBRSxLQUFLLENBQUMsQ0FBQztRQUNyQyxJQUFJLEtBQUs7WUFDTCxDQUFDLEtBQUssQ0FBQyxJQUFJLHNCQUF3QixJQUFJLEtBQUssQ0FBQyxJQUFJLG9CQUFzQjtnQkFDdEUsS0FBSyxDQUFDLElBQUksNkJBQStCLENBQUM7WUFDM0MsS0FBSyxDQUFDLFVBQVUsS0FBSyxJQUFJLEVBQUU7WUFDN0IsK0NBQStDO1lBQy9DLDBFQUEwRTtZQUMxRSx5Q0FBeUM7WUFDekMsS0FBSyxJQUFJLEtBQUssQ0FBQyxVQUFVLENBQUMsTUFBTSxJQUFJLENBQUMsQ0FBQztTQUN2QztRQUNELEtBQUssRUFBRSxDQUFDO0tBQ1Q7QUFDSCxDQUFDO0FBRUQsU0FBUyxVQUFVLENBQUMsS0FBWSxFQUFFLEtBQVksRUFBRSxLQUFhLEVBQUUsY0FBdUI7SUFDcEYsTUFBTSxjQUFjLEdBQUcsUUFBUSxDQUFDLEtBQUssRUFBRSxLQUFLLENBQUMsQ0FBQztJQUM5QyxNQUFNLGNBQWMsR0FBRyxnQkFBZ0IsQ0FBQyxLQUFLLEVBQUUsS0FBSyxDQUFDLENBQUM7SUFDdEQsSUFBSSxjQUFjLEVBQUU7UUFDbEIsZ0JBQWdCLENBQUMsS0FBSyxDQUFDLFFBQVEsQ0FBQyxFQUFFLGNBQWMsQ0FBQyxDQUFDO0tBQ25EO0lBRUQsTUFBTSxTQUFTLEdBQUcsSUFBSSxDQUFDLEtBQUssRUFBRSxLQUFLLENBQXFDLENBQUM7SUFDekUsSUFBSSxZQUFZLENBQUMsU0FBUyxDQUFDLEVBQUU7UUFDM0IsTUFBTSxVQUFVLEdBQUcsU0FBdUIsQ0FBQztRQUMzQyxJQUFJLGNBQWMsQ0FBQyxJQUFJLHNCQUF3QixFQUFFO1lBQy9DLGdCQUFnQixDQUFDLEtBQUssQ0FBQyxRQUFRLENBQUMsRUFBRSxVQUFVLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQztTQUN2RDtLQUNGO0lBRUQsSUFBSSxjQUFjLEVBQUU7UUFDbEIsNERBQTREO1FBQzVELGNBQWMsQ0FBQyxLQUFLLHVCQUF5QixDQUFDO0tBQy9DO0lBQ0QsU0FBUyxJQUFJLFNBQVMsQ0FBQyxrQkFBa0IsRUFBRSxDQUFDO0FBQzlDLENBQUM7QUFFRDs7R0FFRztBQUNILFNBQVMsd0JBQXdCLENBQzdCLEtBQVksRUFBRSxLQUFZLEVBQUUsS0FBYSxFQUFFLElBQWUsRUFBRSxNQUEyQixFQUN2RixJQUFpQjtJQUNuQixNQUFNLHFCQUFxQixHQUFHLHdCQUF3QixFQUFFLENBQUM7SUFDekQsU0FBUyxJQUFJLGtCQUFrQixDQUFDLEtBQUssRUFBRSxLQUFLLEdBQUcsYUFBYSxDQUFDLENBQUM7SUFDOUQsS0FBSyxDQUFDLEtBQUssR0FBRyxhQUFhLENBQUMsR0FBRyxNQUFNLENBQUM7SUFDdEMsb0ZBQW9GO0lBQ3BGLE1BQU0sS0FBSyxHQUFHLGdCQUFnQixDQUFDLEtBQUssRUFBRSxLQUFLLENBQUMsTUFBTSxDQUFDLEVBQUUsS0FBSyxFQUFFLElBQVcsRUFBRSxJQUFJLEVBQUUsSUFBSSxDQUFDLENBQUM7SUFFckYseUZBQXlGO0lBQ3pGLG9FQUFvRTtJQUNwRSxJQUFJLHFCQUFxQixJQUFJLHFCQUFxQixDQUFDLElBQUksS0FBSyxLQUFLLEVBQUU7UUFDakUscUJBQXFCLENBQUMsSUFBSSxHQUFHLElBQUksQ0FBQztLQUNuQztJQUVELE9BQU8sS0FBSyxDQUFDO0FBQ2YsQ0FBQztBQUdEOzs7OztHQUtHO0FBQ0gsU0FBUyxZQUFZLENBQUMsYUFBbUIsRUFBRSxZQUFvQjtJQUM3RCxJQUFJLEtBQUssR0FBRyxhQUFhLENBQUMsS0FBSyxDQUFDLE9BQU8sQ0FBQyxZQUFZLENBQUMsQ0FBQztJQUN0RCxJQUFJLEtBQUssS0FBSyxDQUFDLENBQUMsRUFBRTtRQUNoQixRQUFRLGFBQWEsQ0FBQyxJQUFJLEVBQUU7WUFDMUIsbUJBQW1CLENBQUMsQ0FBQztnQkFDbkIsTUFBTSxZQUFZLEdBQUcsYUFBYSxDQUFDLFlBQVksRUFBRSxXQUFXLEVBQUUsQ0FBQyxDQUFDO2dCQUNoRSxLQUFLLEdBQUcsYUFBYSxDQUFDLEtBQUssQ0FBQyxPQUFPLENBQUMsWUFBWSxDQUFDLENBQUM7Z0JBQ2xELElBQUksS0FBSyxLQUFLLENBQUMsQ0FBQyxJQUFJLFlBQVksS0FBSyxPQUFPLEVBQUU7b0JBQzVDLEtBQUssR0FBRyxhQUFhLENBQUMsS0FBSyxDQUFDLE9BQU8sQ0FBQyxPQUFPLENBQUMsQ0FBQztpQkFDOUM7Z0JBQ0QsTUFBTTthQUNQO1lBQ0QsbUJBQW1CLENBQUMsQ0FBQztnQkFDbkIsS0FBSyxHQUFHLGFBQWEsQ0FBQyxLQUFLLENBQUMsT0FBTyxDQUFDLE9BQU8sQ0FBQyxDQUFDO2dCQUM3QyxNQUFNO2FBQ1A7U0FDRjtLQUNGO0lBQ0QsT0FBTyxLQUFLLENBQUM7QUFDZixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Z2V0UGx1cmFsQ2FzZX0gZnJvbSAnLi4vLi4vaTE4bi9sb2NhbGl6YXRpb24nO1xuaW1wb3J0IHthc3NlcnREZWZpbmVkLCBhc3NlcnRFcXVhbCwgYXNzZXJ0SW5kZXhJblJhbmdlfSBmcm9tICcuLi8uLi91dGlsL2Fzc2VydCc7XG5pbXBvcnQge2F0dGFjaFBhdGNoRGF0YX0gZnJvbSAnLi4vY29udGV4dF9kaXNjb3ZlcnknO1xuaW1wb3J0IHtlbGVtZW50QXR0cmlidXRlSW50ZXJuYWwsIGVsZW1lbnRQcm9wZXJ0eUludGVybmFsLCBnZXRPckNyZWF0ZVROb2RlLCB0ZXh0QmluZGluZ0ludGVybmFsfSBmcm9tICcuLi9pbnN0cnVjdGlvbnMvc2hhcmVkJztcbmltcG9ydCB7TENvbnRhaW5lciwgTkFUSVZFfSBmcm9tICcuLi9pbnRlcmZhY2VzL2NvbnRhaW5lcic7XG5pbXBvcnQge0NPTU1FTlRfTUFSS0VSLCBFTEVNRU5UX01BUktFUiwgSTE4bk11dGF0ZU9wQ29kZSwgSTE4bk11dGF0ZU9wQ29kZXMsIEkxOG5VcGRhdGVPcENvZGUsIEkxOG5VcGRhdGVPcENvZGVzLCBJY3VUeXBlLCBUSTE4biwgVEljdX0gZnJvbSAnLi4vaW50ZXJmYWNlcy9pMThuJztcbmltcG9ydCB7VEVsZW1lbnROb2RlLCBUSWN1Q29udGFpbmVyTm9kZSwgVE5vZGUsIFROb2RlRmxhZ3MsIFROb2RlVHlwZSwgVFByb2plY3Rpb25Ob2RlfSBmcm9tICcuLi9pbnRlcmZhY2VzL25vZGUnO1xuaW1wb3J0IHtSQ29tbWVudCwgUkVsZW1lbnQsIFJUZXh0fSBmcm9tICcuLi9pbnRlcmZhY2VzL3JlbmRlcmVyJztcbmltcG9ydCB7U2FuaXRpemVyRm59IGZyb20gJy4uL2ludGVyZmFjZXMvc2FuaXRpemF0aW9uJztcbmltcG9ydCB7aXNMQ29udGFpbmVyfSBmcm9tICcuLi9pbnRlcmZhY2VzL3R5cGVfY2hlY2tzJztcbmltcG9ydCB7SEVBREVSX09GRlNFVCwgTFZpZXcsIFJFTkRFUkVSLCBUX0hPU1QsIFRWaWV3fSBmcm9tICcuLi9pbnRlcmZhY2VzL3ZpZXcnO1xuaW1wb3J0IHthcHBlbmRDaGlsZCwgYXBwbHlQcm9qZWN0aW9uLCBjcmVhdGVUZXh0Tm9kZSwgbmF0aXZlUmVtb3ZlTm9kZX0gZnJvbSAnLi4vbm9kZV9tYW5pcHVsYXRpb24nO1xuaW1wb3J0IHtnZXRCaW5kaW5nSW5kZXgsIGdldExWaWV3LCBnZXRQcmV2aW91c09yUGFyZW50VE5vZGUsIGdldFRWaWV3LCBzZXRJc05vdFBhcmVudCwgc2V0UHJldmlvdXNPclBhcmVudFROb2RlfSBmcm9tICcuLi9zdGF0ZSc7XG5pbXBvcnQge3JlbmRlclN0cmluZ2lmeX0gZnJvbSAnLi4vdXRpbC9taXNjX3V0aWxzJztcbmltcG9ydCB7Z2V0TmF0aXZlQnlJbmRleCwgZ2V0TmF0aXZlQnlUTm9kZSwgZ2V0VE5vZGUsIGxvYWR9IGZyb20gJy4uL3V0aWwvdmlld191dGlscyc7XG5pbXBvcnQge2dldExvY2FsZUlkfSBmcm9tICcuL2kxOG5fbG9jYWxlX2lkJztcblxuXG5jb25zdCBpMThuSW5kZXhTdGFjazogbnVtYmVyW10gPSBbXTtcbmxldCBpMThuSW5kZXhTdGFja1BvaW50ZXIgPSAtMTtcblxuZnVuY3Rpb24gcG9wSTE4bkluZGV4KCkge1xuICByZXR1cm4gaTE4bkluZGV4U3RhY2tbaTE4bkluZGV4U3RhY2tQb2ludGVyLS1dO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gcHVzaEkxOG5JbmRleChpbmRleDogbnVtYmVyKSB7XG4gIGkxOG5JbmRleFN0YWNrWysraTE4bkluZGV4U3RhY2tQb2ludGVyXSA9IGluZGV4O1xufVxuXG5sZXQgY2hhbmdlTWFzayA9IDBiMDtcbmxldCBzaGlmdHNDb3VudGVyID0gMDtcblxuZXhwb3J0IGZ1bmN0aW9uIHNldE1hc2tCaXQoYml0OiBib29sZWFuKSB7XG4gIGlmIChiaXQpIHtcbiAgICBjaGFuZ2VNYXNrID0gY2hhbmdlTWFzayB8ICgxIDw8IHNoaWZ0c0NvdW50ZXIpO1xuICB9XG4gIHNoaWZ0c0NvdW50ZXIrKztcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGFwcGx5STE4bih0VmlldzogVFZpZXcsIGxWaWV3OiBMVmlldywgaW5kZXg6IG51bWJlcikge1xuICBpZiAoc2hpZnRzQ291bnRlciA+IDApIHtcbiAgICBuZ0Rldk1vZGUgJiYgYXNzZXJ0RGVmaW5lZCh0VmlldywgYHRWaWV3IHNob3VsZCBiZSBkZWZpbmVkYCk7XG4gICAgY29uc3QgdEkxOG4gPSB0Vmlldy5kYXRhW2luZGV4ICsgSEVBREVSX09GRlNFVF0gYXMgVEkxOG4gfCBJMThuVXBkYXRlT3BDb2RlcztcbiAgICBsZXQgdXBkYXRlT3BDb2RlczogSTE4blVwZGF0ZU9wQ29kZXM7XG4gICAgbGV0IHRJY3VzOiBUSWN1W118bnVsbCA9IG51bGw7XG4gICAgaWYgKEFycmF5LmlzQXJyYXkodEkxOG4pKSB7XG4gICAgICB1cGRhdGVPcENvZGVzID0gdEkxOG4gYXMgSTE4blVwZGF0ZU9wQ29kZXM7XG4gICAgfSBlbHNlIHtcbiAgICAgIHVwZGF0ZU9wQ29kZXMgPSAodEkxOG4gYXMgVEkxOG4pLnVwZGF0ZTtcbiAgICAgIHRJY3VzID0gKHRJMThuIGFzIFRJMThuKS5pY3VzO1xuICAgIH1cbiAgICBjb25zdCBiaW5kaW5nc1N0YXJ0SW5kZXggPSBnZXRCaW5kaW5nSW5kZXgoKSAtIHNoaWZ0c0NvdW50ZXIgLSAxO1xuICAgIGFwcGx5VXBkYXRlT3BDb2Rlcyh0VmlldywgdEljdXMsIGxWaWV3LCB1cGRhdGVPcENvZGVzLCBiaW5kaW5nc1N0YXJ0SW5kZXgsIGNoYW5nZU1hc2spO1xuXG4gICAgLy8gUmVzZXQgY2hhbmdlTWFzayAmIG1hc2tCaXQgdG8gZGVmYXVsdCBmb3IgdGhlIG5leHQgdXBkYXRlIGN5Y2xlXG4gICAgY2hhbmdlTWFzayA9IDBiMDtcbiAgICBzaGlmdHNDb3VudGVyID0gMDtcbiAgfVxufVxuXG4vKipcbiAqIEFwcGx5IGBJMThuTXV0YXRlT3BDb2Rlc2AgT3BDb2Rlcy5cbiAqXG4gKiBAcGFyYW0gdFZpZXcgQ3VycmVudCBgVFZpZXdgXG4gKiBAcGFyYW0gcm9vdEluZGV4IFBvaW50ZXIgdG8gdGhlIHJvb3QgKHBhcmVudCkgdE5vZGUgZm9yIHRoZSBpMThuLlxuICogQHBhcmFtIGNyZWF0ZU9wQ29kZXMgT3BDb2RlcyB0byBwcm9jZXNzXG4gKiBAcGFyYW0gbFZpZXcgQ3VycmVudCBgTFZpZXdgXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBhcHBseUNyZWF0ZU9wQ29kZXMoXG4gICAgdFZpZXc6IFRWaWV3LCByb290aW5kZXg6IG51bWJlciwgY3JlYXRlT3BDb2RlczogSTE4bk11dGF0ZU9wQ29kZXMsIGxWaWV3OiBMVmlldyk6IG51bWJlcltdIHtcbiAgY29uc3QgcmVuZGVyZXIgPSBsVmlld1tSRU5ERVJFUl07XG4gIGxldCBjdXJyZW50VE5vZGU6IFROb2RlfG51bGwgPSBudWxsO1xuICBsZXQgcHJldmlvdXNUTm9kZTogVE5vZGV8bnVsbCA9IG51bGw7XG4gIGNvbnN0IHZpc2l0ZWROb2RlczogbnVtYmVyW10gPSBbXTtcbiAgZm9yIChsZXQgaSA9IDA7IGkgPCBjcmVhdGVPcENvZGVzLmxlbmd0aDsgaSsrKSB7XG4gICAgY29uc3Qgb3BDb2RlID0gY3JlYXRlT3BDb2Rlc1tpXTtcbiAgICBpZiAodHlwZW9mIG9wQ29kZSA9PSAnc3RyaW5nJykge1xuICAgICAgY29uc3QgdGV4dFJOb2RlID0gY3JlYXRlVGV4dE5vZGUob3BDb2RlLCByZW5kZXJlcik7XG4gICAgICBjb25zdCB0ZXh0Tm9kZUluZGV4ID0gY3JlYXRlT3BDb2Rlc1srK2ldIGFzIG51bWJlcjtcbiAgICAgIG5nRGV2TW9kZSAmJiBuZ0Rldk1vZGUucmVuZGVyZXJDcmVhdGVUZXh0Tm9kZSsrO1xuICAgICAgcHJldmlvdXNUTm9kZSA9IGN1cnJlbnRUTm9kZTtcbiAgICAgIGN1cnJlbnRUTm9kZSA9XG4gICAgICAgICAgY3JlYXRlRHluYW1pY05vZGVBdEluZGV4KHRWaWV3LCBsVmlldywgdGV4dE5vZGVJbmRleCwgVE5vZGVUeXBlLkVsZW1lbnQsIHRleHRSTm9kZSwgbnVsbCk7XG4gICAgICB2aXNpdGVkTm9kZXMucHVzaCh0ZXh0Tm9kZUluZGV4KTtcbiAgICAgIHNldElzTm90UGFyZW50KCk7XG4gICAgfSBlbHNlIGlmICh0eXBlb2Ygb3BDb2RlID09ICdudW1iZXInKSB7XG4gICAgICBzd2l0Y2ggKG9wQ29kZSAmIEkxOG5NdXRhdGVPcENvZGUuTUFTS19JTlNUUlVDVElPTikge1xuICAgICAgICBjYXNlIEkxOG5NdXRhdGVPcENvZGUuQXBwZW5kQ2hpbGQ6XG4gICAgICAgICAgY29uc3QgZGVzdGluYXRpb25Ob2RlSW5kZXggPSBvcENvZGUgPj4+IEkxOG5NdXRhdGVPcENvZGUuU0hJRlRfUEFSRU5UO1xuICAgICAgICAgIGxldCBkZXN0aW5hdGlvblROb2RlOiBUTm9kZTtcbiAgICAgICAgICBpZiAoZGVzdGluYXRpb25Ob2RlSW5kZXggPT09IHJvb3RpbmRleCkge1xuICAgICAgICAgICAgLy8gSWYgdGhlIGRlc3RpbmF0aW9uIG5vZGUgaXMgYGkxOG5TdGFydGAsIHdlIGRvbid0IGhhdmUgYVxuICAgICAgICAgICAgLy8gdG9wLWxldmVsIG5vZGUgYW5kIHdlIHNob3VsZCB1c2UgdGhlIGhvc3Qgbm9kZSBpbnN0ZWFkXG4gICAgICAgICAgICBkZXN0aW5hdGlvblROb2RlID0gbFZpZXdbVF9IT1NUXSE7XG4gICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIGRlc3RpbmF0aW9uVE5vZGUgPSBnZXRUTm9kZSh0VmlldywgZGVzdGluYXRpb25Ob2RlSW5kZXgpO1xuICAgICAgICAgIH1cbiAgICAgICAgICBuZ0Rldk1vZGUgJiZcbiAgICAgICAgICAgICAgYXNzZXJ0RGVmaW5lZChcbiAgICAgICAgICAgICAgICAgIGN1cnJlbnRUTm9kZSEsXG4gICAgICAgICAgICAgICAgICBgWW91IG5lZWQgdG8gY3JlYXRlIG9yIHNlbGVjdCBhIG5vZGUgYmVmb3JlIHlvdSBjYW4gaW5zZXJ0IGl0IGludG8gdGhlIERPTWApO1xuICAgICAgICAgIHByZXZpb3VzVE5vZGUgPVxuICAgICAgICAgICAgICBhcHBlbmRJMThuTm9kZSh0VmlldywgY3VycmVudFROb2RlISwgZGVzdGluYXRpb25UTm9kZSwgcHJldmlvdXNUTm9kZSwgbFZpZXcpO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICBjYXNlIEkxOG5NdXRhdGVPcENvZGUuU2VsZWN0OlxuICAgICAgICAgIC8vIE5lZ2F0aXZlIGluZGljZXMgaW5kaWNhdGUgdGhhdCBhIGdpdmVuIFROb2RlIGlzIGEgc2libGluZyBub2RlLCBub3QgYSBwYXJlbnQgbm9kZVxuICAgICAgICAgIC8vIChzZWUgYGkxOG5TdGFydEZpcnN0UGFzc2AgZm9yIGFkZGl0aW9uYWwgaW5mb3JtYXRpb24pLlxuICAgICAgICAgIGNvbnN0IGlzUGFyZW50ID0gb3BDb2RlID49IDA7XG4gICAgICAgICAgLy8gRklYTUUobWlza28pOiBUaGlzIFNISUZUX1JFRiBsb29rcyBzdXNwZWN0IGFzIGl0IGRvZXMgbm90IGhhdmUgbWFzay5cbiAgICAgICAgICBjb25zdCBub2RlSW5kZXggPSAoaXNQYXJlbnQgPyBvcENvZGUgOiB+b3BDb2RlKSA+Pj4gSTE4bk11dGF0ZU9wQ29kZS5TSElGVF9SRUY7XG4gICAgICAgICAgdmlzaXRlZE5vZGVzLnB1c2gobm9kZUluZGV4KTtcbiAgICAgICAgICBwcmV2aW91c1ROb2RlID0gY3VycmVudFROb2RlO1xuICAgICAgICAgIGN1cnJlbnRUTm9kZSA9IGdldFROb2RlKHRWaWV3LCBub2RlSW5kZXgpO1xuICAgICAgICAgIGlmIChjdXJyZW50VE5vZGUpIHtcbiAgICAgICAgICAgIHNldFByZXZpb3VzT3JQYXJlbnRUTm9kZShjdXJyZW50VE5vZGUsIGlzUGFyZW50KTtcbiAgICAgICAgICB9XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIGNhc2UgSTE4bk11dGF0ZU9wQ29kZS5FbGVtZW50RW5kOlxuICAgICAgICAgIGNvbnN0IGVsZW1lbnRJbmRleCA9IG9wQ29kZSA+Pj4gSTE4bk11dGF0ZU9wQ29kZS5TSElGVF9SRUY7XG4gICAgICAgICAgcHJldmlvdXNUTm9kZSA9IGN1cnJlbnRUTm9kZSA9IGdldFROb2RlKHRWaWV3LCBlbGVtZW50SW5kZXgpO1xuICAgICAgICAgIHNldFByZXZpb3VzT3JQYXJlbnRUTm9kZShjdXJyZW50VE5vZGUsIGZhbHNlKTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgY2FzZSBJMThuTXV0YXRlT3BDb2RlLkF0dHI6XG4gICAgICAgICAgY29uc3QgZWxlbWVudE5vZGVJbmRleCA9IG9wQ29kZSA+Pj4gSTE4bk11dGF0ZU9wQ29kZS5TSElGVF9SRUY7XG4gICAgICAgICAgY29uc3QgYXR0ck5hbWUgPSBjcmVhdGVPcENvZGVzWysraV0gYXMgc3RyaW5nO1xuICAgICAgICAgIGNvbnN0IGF0dHJWYWx1ZSA9IGNyZWF0ZU9wQ29kZXNbKytpXSBhcyBzdHJpbmc7XG4gICAgICAgICAgLy8gVGhpcyBjb2RlIGlzIHVzZWQgZm9yIElDVSBleHByZXNzaW9ucyBvbmx5LCBzaW5jZSB3ZSBkb24ndCBzdXBwb3J0XG4gICAgICAgICAgLy8gZGlyZWN0aXZlcy9jb21wb25lbnRzIGluIElDVXMsIHdlIGRvbid0IG5lZWQgdG8gd29ycnkgYWJvdXQgaW5wdXRzIGhlcmVcbiAgICAgICAgICBlbGVtZW50QXR0cmlidXRlSW50ZXJuYWwoXG4gICAgICAgICAgICAgIGdldFROb2RlKHRWaWV3LCBlbGVtZW50Tm9kZUluZGV4KSwgbFZpZXcsIGF0dHJOYW1lLCBhdHRyVmFsdWUsIG51bGwsIG51bGwpO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgICBkZWZhdWx0OlxuICAgICAgICAgIHRocm93IG5ldyBFcnJvcihgVW5hYmxlIHRvIGRldGVybWluZSB0aGUgdHlwZSBvZiBtdXRhdGUgb3BlcmF0aW9uIGZvciBcIiR7b3BDb2RlfVwiYCk7XG4gICAgICB9XG4gICAgfSBlbHNlIHtcbiAgICAgIHN3aXRjaCAob3BDb2RlKSB7XG4gICAgICAgIGNhc2UgQ09NTUVOVF9NQVJLRVI6XG4gICAgICAgICAgY29uc3QgY29tbWVudFZhbHVlID0gY3JlYXRlT3BDb2Rlc1srK2ldIGFzIHN0cmluZztcbiAgICAgICAgICBjb25zdCBjb21tZW50Tm9kZUluZGV4ID0gY3JlYXRlT3BDb2Rlc1srK2ldIGFzIG51bWJlcjtcbiAgICAgICAgICBuZ0Rldk1vZGUgJiZcbiAgICAgICAgICAgICAgYXNzZXJ0RXF1YWwoXG4gICAgICAgICAgICAgICAgICB0eXBlb2YgY29tbWVudFZhbHVlLCAnc3RyaW5nJyxcbiAgICAgICAgICAgICAgICAgIGBFeHBlY3RlZCBcIiR7Y29tbWVudFZhbHVlfVwiIHRvIGJlIGEgY29tbWVudCBub2RlIHZhbHVlYCk7XG4gICAgICAgICAgY29uc3QgY29tbWVudFJOb2RlID0gcmVuZGVyZXIuY3JlYXRlQ29tbWVudChjb21tZW50VmFsdWUpO1xuICAgICAgICAgIG5nRGV2TW9kZSAmJiBuZ0Rldk1vZGUucmVuZGVyZXJDcmVhdGVDb21tZW50Kys7XG4gICAgICAgICAgcHJldmlvdXNUTm9kZSA9IGN1cnJlbnRUTm9kZTtcbiAgICAgICAgICBjdXJyZW50VE5vZGUgPSBjcmVhdGVEeW5hbWljTm9kZUF0SW5kZXgoXG4gICAgICAgICAgICAgIHRWaWV3LCBsVmlldywgY29tbWVudE5vZGVJbmRleCwgVE5vZGVUeXBlLkljdUNvbnRhaW5lciwgY29tbWVudFJOb2RlLCBudWxsKTtcbiAgICAgICAgICB2aXNpdGVkTm9kZXMucHVzaChjb21tZW50Tm9kZUluZGV4KTtcbiAgICAgICAgICBhdHRhY2hQYXRjaERhdGEoY29tbWVudFJOb2RlLCBsVmlldyk7XG4gICAgICAgICAgLy8gV2Ugd2lsbCBhZGQgdGhlIGNhc2Ugbm9kZXMgbGF0ZXIsIGR1cmluZyB0aGUgdXBkYXRlIHBoYXNlXG4gICAgICAgICAgc2V0SXNOb3RQYXJlbnQoKTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgY2FzZSBFTEVNRU5UX01BUktFUjpcbiAgICAgICAgICBjb25zdCB0YWdOYW1lVmFsdWUgPSBjcmVhdGVPcENvZGVzWysraV0gYXMgc3RyaW5nO1xuICAgICAgICAgIGNvbnN0IGVsZW1lbnROb2RlSW5kZXggPSBjcmVhdGVPcENvZGVzWysraV0gYXMgbnVtYmVyO1xuICAgICAgICAgIG5nRGV2TW9kZSAmJlxuICAgICAgICAgICAgICBhc3NlcnRFcXVhbChcbiAgICAgICAgICAgICAgICAgIHR5cGVvZiB0YWdOYW1lVmFsdWUsICdzdHJpbmcnLFxuICAgICAgICAgICAgICAgICAgYEV4cGVjdGVkIFwiJHt0YWdOYW1lVmFsdWV9XCIgdG8gYmUgYW4gZWxlbWVudCBub2RlIHRhZyBuYW1lYCk7XG4gICAgICAgICAgY29uc3QgZWxlbWVudFJOb2RlID0gcmVuZGVyZXIuY3JlYXRlRWxlbWVudCh0YWdOYW1lVmFsdWUpO1xuICAgICAgICAgIG5nRGV2TW9kZSAmJiBuZ0Rldk1vZGUucmVuZGVyZXJDcmVhdGVFbGVtZW50Kys7XG4gICAgICAgICAgcHJldmlvdXNUTm9kZSA9IGN1cnJlbnRUTm9kZTtcbiAgICAgICAgICBjdXJyZW50VE5vZGUgPSBjcmVhdGVEeW5hbWljTm9kZUF0SW5kZXgoXG4gICAgICAgICAgICAgIHRWaWV3LCBsVmlldywgZWxlbWVudE5vZGVJbmRleCwgVE5vZGVUeXBlLkVsZW1lbnQsIGVsZW1lbnRSTm9kZSwgdGFnTmFtZVZhbHVlKTtcbiAgICAgICAgICB2aXNpdGVkTm9kZXMucHVzaChlbGVtZW50Tm9kZUluZGV4KTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgZGVmYXVsdDpcbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoYFVuYWJsZSB0byBkZXRlcm1pbmUgdGhlIHR5cGUgb2YgbXV0YXRlIG9wZXJhdGlvbiBmb3IgXCIke29wQ29kZX1cImApO1xuICAgICAgfVxuICAgIH1cbiAgfVxuXG4gIHNldElzTm90UGFyZW50KCk7XG5cbiAgcmV0dXJuIHZpc2l0ZWROb2Rlcztcbn1cblxuXG4vKipcbiAqIEFwcGx5IGBJMThuVXBkYXRlT3BDb2Rlc2AgT3BDb2Rlc1xuICpcbiAqIEBwYXJhbSB0VmlldyBDdXJyZW50IGBUVmlld2BcbiAqIEBwYXJhbSB0SWN1cyBJZiBJQ1VzIHByZXNlbnQgdGhhbiB0aGlzIGNvbnRhaW5zIHRoZW0uXG4gKiBAcGFyYW0gbFZpZXcgQ3VycmVudCBgTFZpZXdgXG4gKiBAcGFyYW0gdXBkYXRlT3BDb2RlcyBPcENvZGVzIHRvIHByb2Nlc3NcbiAqIEBwYXJhbSBiaW5kaW5nc1N0YXJ0SW5kZXggTG9jYXRpb24gb2YgdGhlIGZpcnN0IGDJtcm1aTE4bkFwcGx5YFxuICogQHBhcmFtIGNoYW5nZU1hc2sgRWFjaCBiaXQgY29ycmVzcG9uZHMgdG8gYSBgybXJtWkxOG5FeHBgIChDb3VudGluZyBiYWNrd2FyZHMgZnJvbVxuICogICAgIGBiaW5kaW5nc1N0YXJ0SW5kZXhgKVxuICovXG5leHBvcnQgZnVuY3Rpb24gYXBwbHlVcGRhdGVPcENvZGVzKFxuICAgIHRWaWV3OiBUVmlldywgdEljdXM6IFRJY3VbXXxudWxsLCBsVmlldzogTFZpZXcsIHVwZGF0ZU9wQ29kZXM6IEkxOG5VcGRhdGVPcENvZGVzLFxuICAgIGJpbmRpbmdzU3RhcnRJbmRleDogbnVtYmVyLCBjaGFuZ2VNYXNrOiBudW1iZXIpIHtcbiAgbGV0IGNhc2VDcmVhdGVkID0gZmFsc2U7XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgdXBkYXRlT3BDb2Rlcy5sZW5ndGg7IGkrKykge1xuICAgIC8vIGJpdCBjb2RlIHRvIGNoZWNrIGlmIHdlIHNob3VsZCBhcHBseSB0aGUgbmV4dCB1cGRhdGVcbiAgICBjb25zdCBjaGVja0JpdCA9IHVwZGF0ZU9wQ29kZXNbaV0gYXMgbnVtYmVyO1xuICAgIC8vIE51bWJlciBvZiBvcENvZGVzIHRvIHNraXAgdW50aWwgbmV4dCBzZXQgb2YgdXBkYXRlIGNvZGVzXG4gICAgY29uc3Qgc2tpcENvZGVzID0gdXBkYXRlT3BDb2Rlc1srK2ldIGFzIG51bWJlcjtcbiAgICBpZiAoY2hlY2tCaXQgJiBjaGFuZ2VNYXNrKSB7XG4gICAgICAvLyBUaGUgdmFsdWUgaGFzIGJlZW4gdXBkYXRlZCBzaW5jZSBsYXN0IGNoZWNrZWRcbiAgICAgIGxldCB2YWx1ZSA9ICcnO1xuICAgICAgZm9yIChsZXQgaiA9IGkgKyAxOyBqIDw9IChpICsgc2tpcENvZGVzKTsgaisrKSB7XG4gICAgICAgIGNvbnN0IG9wQ29kZSA9IHVwZGF0ZU9wQ29kZXNbal07XG4gICAgICAgIGlmICh0eXBlb2Ygb3BDb2RlID09ICdzdHJpbmcnKSB7XG4gICAgICAgICAgdmFsdWUgKz0gb3BDb2RlO1xuICAgICAgICB9IGVsc2UgaWYgKHR5cGVvZiBvcENvZGUgPT0gJ251bWJlcicpIHtcbiAgICAgICAgICBpZiAob3BDb2RlIDwgMCkge1xuICAgICAgICAgICAgLy8gTmVnYXRpdmUgb3BDb2RlIHJlcHJlc2VudCBgaTE4bkV4cGAgdmFsdWVzIG9mZnNldC5cbiAgICAgICAgICAgIHZhbHVlICs9IHJlbmRlclN0cmluZ2lmeShsVmlld1tiaW5kaW5nc1N0YXJ0SW5kZXggLSBvcENvZGVdKTtcbiAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgY29uc3Qgbm9kZUluZGV4ID0gb3BDb2RlID4+PiBJMThuVXBkYXRlT3BDb2RlLlNISUZUX1JFRjtcbiAgICAgICAgICAgIHN3aXRjaCAob3BDb2RlICYgSTE4blVwZGF0ZU9wQ29kZS5NQVNLX09QQ09ERSkge1xuICAgICAgICAgICAgICBjYXNlIEkxOG5VcGRhdGVPcENvZGUuQXR0cjpcbiAgICAgICAgICAgICAgICBjb25zdCBwcm9wTmFtZSA9IHVwZGF0ZU9wQ29kZXNbKytqXSBhcyBzdHJpbmc7XG4gICAgICAgICAgICAgICAgY29uc3Qgc2FuaXRpemVGbiA9IHVwZGF0ZU9wQ29kZXNbKytqXSBhcyBTYW5pdGl6ZXJGbiB8IG51bGw7XG4gICAgICAgICAgICAgICAgZWxlbWVudFByb3BlcnR5SW50ZXJuYWwoXG4gICAgICAgICAgICAgICAgICAgIHRWaWV3LCBnZXRUTm9kZSh0Vmlldywgbm9kZUluZGV4KSwgbFZpZXcsIHByb3BOYW1lLCB2YWx1ZSwgbFZpZXdbUkVOREVSRVJdLFxuICAgICAgICAgICAgICAgICAgICBzYW5pdGl6ZUZuLCBmYWxzZSk7XG4gICAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICAgIGNhc2UgSTE4blVwZGF0ZU9wQ29kZS5UZXh0OlxuICAgICAgICAgICAgICAgIHRleHRCaW5kaW5nSW50ZXJuYWwobFZpZXcsIG5vZGVJbmRleCwgdmFsdWUpO1xuICAgICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgICAgICBjYXNlIEkxOG5VcGRhdGVPcENvZGUuSWN1U3dpdGNoOlxuICAgICAgICAgICAgICAgIGNhc2VDcmVhdGVkID1cbiAgICAgICAgICAgICAgICAgICAgYXBwbHlJY3VTd2l0Y2hDYXNlKHRWaWV3LCB0SWN1cyEsIHVwZGF0ZU9wQ29kZXNbKytqXSBhcyBudW1iZXIsIGxWaWV3LCB2YWx1ZSk7XG4gICAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICAgIGNhc2UgSTE4blVwZGF0ZU9wQ29kZS5JY3VVcGRhdGU6XG4gICAgICAgICAgICAgICAgYXBwbHlJY3VVcGRhdGVDYXNlKFxuICAgICAgICAgICAgICAgICAgICB0VmlldywgdEljdXMhLCB1cGRhdGVPcENvZGVzWysral0gYXMgbnVtYmVyLCBiaW5kaW5nc1N0YXJ0SW5kZXgsIGxWaWV3LFxuICAgICAgICAgICAgICAgICAgICBjYXNlQ3JlYXRlZCk7XG4gICAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfVxuICAgICAgICB9XG4gICAgICB9XG4gICAgfVxuICAgIGkgKz0gc2tpcENvZGVzO1xuICB9XG59XG5cbi8qKlxuICogQXBwbHkgT3BDb2RlcyBhc3NvY2lhdGVkIHdpdGggdXBkYXRpbmcgYW4gZXhpc3RpbmcgSUNVLlxuICpcbiAqIEBwYXJhbSB0VmlldyBDdXJyZW50IGBUVmlld2BcbiAqIEBwYXJhbSB0SWN1cyBJQ1VzIGFjdGl2ZSBhdCB0aGlzIGxvY2F0aW9uLlxuICogQHBhcmFtIHRJY3VJbmRleCBJbmRleCBpbnRvIGB0SWN1c2AgdG8gcHJvY2Vzcy5cbiAqIEBwYXJhbSBiaW5kaW5nc1N0YXJ0SW5kZXggTG9jYXRpb24gb2YgdGhlIGZpcnN0IGDJtcm1aTE4bkFwcGx5YFxuICogQHBhcmFtIGxWaWV3IEN1cnJlbnQgYExWaWV3YFxuICogQHBhcmFtIGNoYW5nZU1hc2sgRWFjaCBiaXQgY29ycmVzcG9uZHMgdG8gYSBgybXJtWkxOG5FeHBgIChDb3VudGluZyBiYWNrd2FyZHMgZnJvbVxuICogICAgIGBiaW5kaW5nc1N0YXJ0SW5kZXhgKVxuICovXG5mdW5jdGlvbiBhcHBseUljdVVwZGF0ZUNhc2UoXG4gICAgdFZpZXc6IFRWaWV3LCB0SWN1czogVEljdVtdLCB0SWN1SW5kZXg6IG51bWJlciwgYmluZGluZ3NTdGFydEluZGV4OiBudW1iZXIsIGxWaWV3OiBMVmlldyxcbiAgICBjYXNlQ3JlYXRlZDogYm9vbGVhbikge1xuICBuZ0Rldk1vZGUgJiYgYXNzZXJ0SW5kZXhJblJhbmdlKHRJY3VzLCB0SWN1SW5kZXgpO1xuICBjb25zdCB0SWN1ID0gdEljdXNbdEljdUluZGV4XTtcbiAgbmdEZXZNb2RlICYmIGFzc2VydEluZGV4SW5SYW5nZShsVmlldywgdEljdS5jdXJyZW50Q2FzZUxWaWV3SW5kZXgpO1xuICBjb25zdCBhY3RpdmVDYXNlSW5kZXggPSBsVmlld1t0SWN1LmN1cnJlbnRDYXNlTFZpZXdJbmRleF07XG4gIGlmIChhY3RpdmVDYXNlSW5kZXggIT09IG51bGwpIHtcbiAgICBjb25zdCBtYXNrID0gY2FzZUNyZWF0ZWQgP1xuICAgICAgICAtMSA6ICAvLyAtMSBpcyBzYW1lIGFzIGFsbCBiaXRzIG9uLCB3aGljaCBzaW11bGF0ZXMgY3JlYXRpb24gc2luY2UgaXQgbWFya3MgYWxsIGJpdHMgZGlydHlcbiAgICAgICAgY2hhbmdlTWFzaztcbiAgICBhcHBseVVwZGF0ZU9wQ29kZXModFZpZXcsIHRJY3VzLCBsVmlldywgdEljdS51cGRhdGVbYWN0aXZlQ2FzZUluZGV4XSwgYmluZGluZ3NTdGFydEluZGV4LCBtYXNrKTtcbiAgfVxufVxuXG4vKipcbiAqIEFwcGx5IE9wQ29kZXMgYXNzb2NpYXRlZCB3aXRoIHN3aXRjaGluZyBhIGNhc2Ugb24gSUNVLlxuICpcbiAqIFRoaXMgaW52b2x2ZXMgdGVhcmluZyBkb3duIGV4aXN0aW5nIGNhc2UgYW5kIHRoYW4gYnVpbGRpbmcgdXAgYSBuZXcgY2FzZS5cbiAqXG4gKiBAcGFyYW0gdFZpZXcgQ3VycmVudCBgVFZpZXdgXG4gKiBAcGFyYW0gdEljdXMgSUNVcyBhY3RpdmUgYXQgdGhpcyBsb2NhdGlvbi5cbiAqIEBwYXJhbSB0SUN1SW5kZXggSW5kZXggaW50byBgdEljdXNgIHRvIHByb2Nlc3MuXG4gKiBAcGFyYW0gbFZpZXcgQ3VycmVudCBgTFZpZXdgXG4gKiBAcGFyYW0gdmFsdWUgVmFsdWUgb2YgdGhlIGNhc2UgdG8gdXBkYXRlIHRvLlxuICogQHJldHVybnMgdHJ1ZSBpZiBhIG5ldyBjYXNlIHdhcyBjcmVhdGVkIChuZWVkZWQgc28gdGhhdCB0aGUgdXBkYXRlIGV4ZWN1dGVzIHJlZ2FyZGxlc3Mgb2YgdGhlXG4gKiAgICAgYml0bWFzaylcbiAqL1xuZnVuY3Rpb24gYXBwbHlJY3VTd2l0Y2hDYXNlKFxuICAgIHRWaWV3OiBUVmlldywgdEljdXM6IFRJY3VbXSwgdElDdUluZGV4OiBudW1iZXIsIGxWaWV3OiBMVmlldywgdmFsdWU6IHN0cmluZyk6IGJvb2xlYW4ge1xuICBhcHBseUljdVN3aXRjaENhc2VSZW1vdmUodFZpZXcsIHRJY3VzLCB0SUN1SW5kZXgsIGxWaWV3KTtcblxuICAvLyBSZWJ1aWxkIGEgbmV3IGNhc2UgZm9yIHRoaXMgSUNVXG4gIGxldCBjYXNlQ3JlYXRlZCA9IGZhbHNlO1xuICBjb25zdCB0SWN1ID0gdEljdXNbdElDdUluZGV4XTtcbiAgY29uc3QgY2FzZUluZGV4ID0gZ2V0Q2FzZUluZGV4KHRJY3UsIHZhbHVlKTtcbiAgbFZpZXdbdEljdS5jdXJyZW50Q2FzZUxWaWV3SW5kZXhdID0gY2FzZUluZGV4ICE9PSAtMSA/IGNhc2VJbmRleCA6IG51bGw7XG4gIGlmIChjYXNlSW5kZXggPiAtMSkge1xuICAgIC8vIEFkZCB0aGUgbm9kZXMgZm9yIHRoZSBuZXcgY2FzZVxuICAgIGFwcGx5Q3JlYXRlT3BDb2RlcyhcbiAgICAgICAgdFZpZXcsIC0xLCAgLy8gLTEgbWVhbnMgd2UgZG9uJ3QgaGF2ZSBwYXJlbnQgbm9kZVxuICAgICAgICB0SWN1LmNyZWF0ZVtjYXNlSW5kZXhdLCBsVmlldyk7XG4gICAgY2FzZUNyZWF0ZWQgPSB0cnVlO1xuICB9XG4gIHJldHVybiBjYXNlQ3JlYXRlZDtcbn1cblxuLyoqXG4gKiBBcHBseSBPcENvZGVzIGFzc29jaWF0ZWQgd2l0aCB0ZWFyaW5nIGRvd24gb2YgRE9NLlxuICpcbiAqIFRoaXMgaW52b2x2ZXMgdGVhcmluZyBkb3duIGV4aXN0aW5nIGNhc2UgYW5kIHRoYW4gYnVpbGRpbmcgdXAgYSBuZXcgY2FzZS5cbiAqXG4gKiBAcGFyYW0gdFZpZXcgQ3VycmVudCBgVFZpZXdgXG4gKiBAcGFyYW0gdEljdXMgSUNVcyBhY3RpdmUgYXQgdGhpcyBsb2NhdGlvbi5cbiAqIEBwYXJhbSB0SWN1SW5kZXggSW5kZXggaW50byBgdEljdXNgIHRvIHByb2Nlc3MuXG4gKiBAcGFyYW0gbFZpZXcgQ3VycmVudCBgTFZpZXdgXG4gKiBAcmV0dXJucyB0cnVlIGlmIGEgbmV3IGNhc2Ugd2FzIGNyZWF0ZWQgKG5lZWRlZCBzbyB0aGF0IHRoZSB1cGRhdGUgZXhlY3V0ZXMgcmVnYXJkbGVzcyBvZiB0aGVcbiAqICAgICBiaXRtYXNrKVxuICovXG5mdW5jdGlvbiBhcHBseUljdVN3aXRjaENhc2VSZW1vdmUodFZpZXc6IFRWaWV3LCB0SWN1czogVEljdVtdLCB0SWN1SW5kZXg6IG51bWJlciwgbFZpZXc6IExWaWV3KSB7XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnRJbmRleEluUmFuZ2UodEljdXMsIHRJY3VJbmRleCk7XG4gIGNvbnN0IHRJY3UgPSB0SWN1c1t0SWN1SW5kZXhdO1xuICBjb25zdCBhY3RpdmVDYXNlSW5kZXggPSBsVmlld1t0SWN1LmN1cnJlbnRDYXNlTFZpZXdJbmRleF07XG4gIGlmIChhY3RpdmVDYXNlSW5kZXggIT09IG51bGwpIHtcbiAgICBjb25zdCByZW1vdmVDb2RlcyA9IHRJY3UucmVtb3ZlW2FjdGl2ZUNhc2VJbmRleF07XG4gICAgZm9yIChsZXQgayA9IDA7IGsgPCByZW1vdmVDb2Rlcy5sZW5ndGg7IGsrKykge1xuICAgICAgY29uc3QgcmVtb3ZlT3BDb2RlID0gcmVtb3ZlQ29kZXNba10gYXMgbnVtYmVyO1xuICAgICAgY29uc3Qgbm9kZU9ySWN1SW5kZXggPSByZW1vdmVPcENvZGUgPj4+IEkxOG5NdXRhdGVPcENvZGUuU0hJRlRfUkVGO1xuICAgICAgc3dpdGNoIChyZW1vdmVPcENvZGUgJiBJMThuTXV0YXRlT3BDb2RlLk1BU0tfSU5TVFJVQ1RJT04pIHtcbiAgICAgICAgY2FzZSBJMThuTXV0YXRlT3BDb2RlLlJlbW92ZTpcbiAgICAgICAgICAvLyBGSVhNRShtaXNrbyk6IHRoaXMgY29tbWVudCBpcyB3cm9uZyFcbiAgICAgICAgICAvLyBSZW1vdmUgRE9NIGVsZW1lbnQsIGJ1dCBkbyAqbm90KiBtYXJrIFROb2RlIGFzIGRldGFjaGVkLCBzaW5jZSB3ZSBhcmVcbiAgICAgICAgICAvLyBqdXN0IHN3aXRjaGluZyBJQ1UgY2FzZXMgKHdoaWxlIGtlZXBpbmcgdGhlIHNhbWUgVE5vZGUpLCBzbyBhIERPTSBlbGVtZW50XG4gICAgICAgICAgLy8gcmVwcmVzZW50aW5nIGEgbmV3IElDVSBjYXNlIHdpbGwgYmUgcmUtY3JlYXRlZC5cbiAgICAgICAgICByZW1vdmVOb2RlKHRWaWV3LCBsVmlldywgbm9kZU9ySWN1SW5kZXgsIC8qIG1hcmtBc0RldGFjaGVkICovIGZhbHNlKTtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgY2FzZSBJMThuTXV0YXRlT3BDb2RlLlJlbW92ZU5lc3RlZEljdTpcbiAgICAgICAgICBhcHBseUljdVN3aXRjaENhc2VSZW1vdmUodFZpZXcsIHRJY3VzLCBub2RlT3JJY3VJbmRleCwgbFZpZXcpO1xuICAgICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgIH1cbiAgfVxufVxuXG5mdW5jdGlvbiBhcHBlbmRJMThuTm9kZShcbiAgICB0VmlldzogVFZpZXcsIHROb2RlOiBUTm9kZSwgcGFyZW50VE5vZGU6IFROb2RlLCBwcmV2aW91c1ROb2RlOiBUTm9kZXxudWxsLFxuICAgIGxWaWV3OiBMVmlldyk6IFROb2RlIHtcbiAgbmdEZXZNb2RlICYmIG5nRGV2TW9kZS5yZW5kZXJlck1vdmVOb2RlKys7XG4gIGNvbnN0IG5leHROb2RlID0gdE5vZGUubmV4dDtcbiAgaWYgKCFwcmV2aW91c1ROb2RlKSB7XG4gICAgcHJldmlvdXNUTm9kZSA9IHBhcmVudFROb2RlO1xuICB9XG5cbiAgLy8gUmUtb3JnYW5pemUgbm9kZSB0cmVlIHRvIHB1dCB0aGlzIG5vZGUgaW4gdGhlIGNvcnJlY3QgcG9zaXRpb24uXG4gIGlmIChwcmV2aW91c1ROb2RlID09PSBwYXJlbnRUTm9kZSAmJiB0Tm9kZSAhPT0gcGFyZW50VE5vZGUuY2hpbGQpIHtcbiAgICB0Tm9kZS5uZXh0ID0gcGFyZW50VE5vZGUuY2hpbGQ7XG4gICAgcGFyZW50VE5vZGUuY2hpbGQgPSB0Tm9kZTtcbiAgfSBlbHNlIGlmIChwcmV2aW91c1ROb2RlICE9PSBwYXJlbnRUTm9kZSAmJiB0Tm9kZSAhPT0gcHJldmlvdXNUTm9kZS5uZXh0KSB7XG4gICAgdE5vZGUubmV4dCA9IHByZXZpb3VzVE5vZGUubmV4dDtcbiAgICBwcmV2aW91c1ROb2RlLm5leHQgPSB0Tm9kZTtcbiAgfSBlbHNlIHtcbiAgICB0Tm9kZS5uZXh0ID0gbnVsbDtcbiAgfVxuXG4gIGlmIChwYXJlbnRUTm9kZSAhPT0gbFZpZXdbVF9IT1NUXSkge1xuICAgIHROb2RlLnBhcmVudCA9IHBhcmVudFROb2RlIGFzIFRFbGVtZW50Tm9kZTtcbiAgfVxuXG4gIC8vIElmIHROb2RlIHdhcyBtb3ZlZCBhcm91bmQsIHdlIG1pZ2h0IG5lZWQgdG8gZml4IGEgYnJva2VuIGxpbmsuXG4gIGxldCBjdXJzb3I6IFROb2RlfG51bGwgPSB0Tm9kZS5uZXh0O1xuICB3aGlsZSAoY3Vyc29yKSB7XG4gICAgaWYgKGN1cnNvci5uZXh0ID09PSB0Tm9kZSkge1xuICAgICAgY3Vyc29yLm5leHQgPSBuZXh0Tm9kZTtcbiAgICB9XG4gICAgY3Vyc29yID0gY3Vyc29yLm5leHQ7XG4gIH1cblxuICAvLyBJZiB0aGUgcGxhY2Vob2xkZXIgdG8gYXBwZW5kIGlzIGEgcHJvamVjdGlvbiwgd2UgbmVlZCB0byBtb3ZlIHRoZSBwcm9qZWN0ZWQgbm9kZXMgaW5zdGVhZFxuICBpZiAodE5vZGUudHlwZSA9PT0gVE5vZGVUeXBlLlByb2plY3Rpb24pIHtcbiAgICBhcHBseVByb2plY3Rpb24odFZpZXcsIGxWaWV3LCB0Tm9kZSBhcyBUUHJvamVjdGlvbk5vZGUpO1xuICAgIHJldHVybiB0Tm9kZTtcbiAgfVxuXG4gIGFwcGVuZENoaWxkKHRWaWV3LCBsVmlldywgZ2V0TmF0aXZlQnlUTm9kZSh0Tm9kZSwgbFZpZXcpLCB0Tm9kZSk7XG5cbiAgY29uc3Qgc2xvdFZhbHVlID0gbFZpZXdbdE5vZGUuaW5kZXhdO1xuICBpZiAodE5vZGUudHlwZSAhPT0gVE5vZGVUeXBlLkNvbnRhaW5lciAmJiBpc0xDb250YWluZXIoc2xvdFZhbHVlKSkge1xuICAgIC8vIE5vZGVzIHRoYXQgaW5qZWN0IFZpZXdDb250YWluZXJSZWYgYWxzbyBoYXZlIGEgY29tbWVudCBub2RlIHRoYXQgc2hvdWxkIGJlIG1vdmVkXG4gICAgYXBwZW5kQ2hpbGQodFZpZXcsIGxWaWV3LCBzbG90VmFsdWVbTkFUSVZFXSwgdE5vZGUpO1xuICB9XG4gIHJldHVybiB0Tm9kZTtcbn1cblxuLyoqXG4gKiBTZWUgYGkxOG5FbmRgIGFib3ZlLlxuICovXG5leHBvcnQgZnVuY3Rpb24gaTE4bkVuZEZpcnN0UGFzcyh0VmlldzogVFZpZXcsIGxWaWV3OiBMVmlldykge1xuICBuZ0Rldk1vZGUgJiZcbiAgICAgIGFzc2VydEVxdWFsKFxuICAgICAgICAgIGdldEJpbmRpbmdJbmRleCgpLCB0Vmlldy5iaW5kaW5nU3RhcnRJbmRleCxcbiAgICAgICAgICAnaTE4bkVuZCBzaG91bGQgYmUgY2FsbGVkIGJlZm9yZSBhbnkgYmluZGluZycpO1xuXG4gIGNvbnN0IHJvb3RJbmRleCA9IHBvcEkxOG5JbmRleCgpO1xuICBjb25zdCB0STE4biA9IHRWaWV3LmRhdGFbcm9vdEluZGV4ICsgSEVBREVSX09GRlNFVF0gYXMgVEkxOG47XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnREZWZpbmVkKHRJMThuLCBgWW91IHNob3VsZCBjYWxsIGkxOG5TdGFydCBiZWZvcmUgaTE4bkVuZGApO1xuXG4gIC8vIEZpbmQgdGhlIGxhc3Qgbm9kZSB0aGF0IHdhcyBhZGRlZCBiZWZvcmUgYGkxOG5FbmRgXG4gIGNvbnN0IGxhc3RDcmVhdGVkTm9kZSA9IGdldFByZXZpb3VzT3JQYXJlbnRUTm9kZSgpO1xuXG4gIC8vIFJlYWQgdGhlIGluc3RydWN0aW9ucyB0byBpbnNlcnQvbW92ZS9yZW1vdmUgRE9NIGVsZW1lbnRzXG4gIGNvbnN0IHZpc2l0ZWROb2RlcyA9IGFwcGx5Q3JlYXRlT3BDb2Rlcyh0Vmlldywgcm9vdEluZGV4LCB0STE4bi5jcmVhdGUsIGxWaWV3KTtcblxuICAvLyBSZW1vdmUgZGVsZXRlZCBub2Rlc1xuICBsZXQgaW5kZXggPSByb290SW5kZXggKyAxO1xuICB3aGlsZSAoaW5kZXggPD0gbGFzdENyZWF0ZWROb2RlLmluZGV4IC0gSEVBREVSX09GRlNFVCkge1xuICAgIGlmICh2aXNpdGVkTm9kZXMuaW5kZXhPZihpbmRleCkgPT09IC0xKSB7XG4gICAgICByZW1vdmVOb2RlKHRWaWV3LCBsVmlldywgaW5kZXgsIC8qIG1hcmtBc0RldGFjaGVkICovIHRydWUpO1xuICAgIH1cbiAgICAvLyBDaGVjayBpZiBhbiBlbGVtZW50IGhhcyBhbnkgbG9jYWwgcmVmcyBhbmQgc2tpcCB0aGVtXG4gICAgY29uc3QgdE5vZGUgPSBnZXRUTm9kZSh0VmlldywgaW5kZXgpO1xuICAgIGlmICh0Tm9kZSAmJlxuICAgICAgICAodE5vZGUudHlwZSA9PT0gVE5vZGVUeXBlLkNvbnRhaW5lciB8fCB0Tm9kZS50eXBlID09PSBUTm9kZVR5cGUuRWxlbWVudCB8fFxuICAgICAgICAgdE5vZGUudHlwZSA9PT0gVE5vZGVUeXBlLkVsZW1lbnRDb250YWluZXIpICYmXG4gICAgICAgIHROb2RlLmxvY2FsTmFtZXMgIT09IG51bGwpIHtcbiAgICAgIC8vIERpdmlkZSBieSAyIHRvIGdldCB0aGUgbnVtYmVyIG9mIGxvY2FsIHJlZnMsXG4gICAgICAvLyBzaW5jZSB0aGV5IGFyZSBzdG9yZWQgYXMgYW4gYXJyYXkgdGhhdCBhbHNvIGluY2x1ZGVzIGRpcmVjdGl2ZSBpbmRleGVzLFxuICAgICAgLy8gaS5lLiBbXCJsb2NhbFJlZlwiLCBkaXJlY3RpdmVJbmRleCwgLi4uXVxuICAgICAgaW5kZXggKz0gdE5vZGUubG9jYWxOYW1lcy5sZW5ndGggPj4gMTtcbiAgICB9XG4gICAgaW5kZXgrKztcbiAgfVxufVxuXG5mdW5jdGlvbiByZW1vdmVOb2RlKHRWaWV3OiBUVmlldywgbFZpZXc6IExWaWV3LCBpbmRleDogbnVtYmVyLCBtYXJrQXNEZXRhY2hlZDogYm9vbGVhbikge1xuICBjb25zdCByZW1vdmVkUGhUTm9kZSA9IGdldFROb2RlKHRWaWV3LCBpbmRleCk7XG4gIGNvbnN0IHJlbW92ZWRQaFJOb2RlID0gZ2V0TmF0aXZlQnlJbmRleChpbmRleCwgbFZpZXcpO1xuICBpZiAocmVtb3ZlZFBoUk5vZGUpIHtcbiAgICBuYXRpdmVSZW1vdmVOb2RlKGxWaWV3W1JFTkRFUkVSXSwgcmVtb3ZlZFBoUk5vZGUpO1xuICB9XG5cbiAgY29uc3Qgc2xvdFZhbHVlID0gbG9hZChsVmlldywgaW5kZXgpIGFzIFJFbGVtZW50IHwgUkNvbW1lbnQgfCBMQ29udGFpbmVyO1xuICBpZiAoaXNMQ29udGFpbmVyKHNsb3RWYWx1ZSkpIHtcbiAgICBjb25zdCBsQ29udGFpbmVyID0gc2xvdFZhbHVlIGFzIExDb250YWluZXI7XG4gICAgaWYgKHJlbW92ZWRQaFROb2RlLnR5cGUgIT09IFROb2RlVHlwZS5Db250YWluZXIpIHtcbiAgICAgIG5hdGl2ZVJlbW92ZU5vZGUobFZpZXdbUkVOREVSRVJdLCBsQ29udGFpbmVyW05BVElWRV0pO1xuICAgIH1cbiAgfVxuXG4gIGlmIChtYXJrQXNEZXRhY2hlZCkge1xuICAgIC8vIERlZmluZSB0aGlzIG5vZGUgYXMgZGV0YWNoZWQgdG8gYXZvaWQgcHJvamVjdGluZyBpdCBsYXRlclxuICAgIHJlbW92ZWRQaFROb2RlLmZsYWdzIHw9IFROb2RlRmxhZ3MuaXNEZXRhY2hlZDtcbiAgfVxuICBuZ0Rldk1vZGUgJiYgbmdEZXZNb2RlLnJlbmRlcmVyUmVtb3ZlTm9kZSsrO1xufVxuXG4vKipcbiAqIENyZWF0ZXMgYW5kIHN0b3JlcyB0aGUgZHluYW1pYyBUTm9kZSwgYW5kIHVuaG9va3MgaXQgZnJvbSB0aGUgdHJlZSBmb3Igbm93LlxuICovXG5mdW5jdGlvbiBjcmVhdGVEeW5hbWljTm9kZUF0SW5kZXgoXG4gICAgdFZpZXc6IFRWaWV3LCBsVmlldzogTFZpZXcsIGluZGV4OiBudW1iZXIsIHR5cGU6IFROb2RlVHlwZSwgbmF0aXZlOiBSRWxlbWVudHxSVGV4dHxudWxsLFxuICAgIG5hbWU6IHN0cmluZ3xudWxsKTogVEVsZW1lbnROb2RlfFRJY3VDb250YWluZXJOb2RlIHtcbiAgY29uc3QgcHJldmlvdXNPclBhcmVudFROb2RlID0gZ2V0UHJldmlvdXNPclBhcmVudFROb2RlKCk7XG4gIG5nRGV2TW9kZSAmJiBhc3NlcnRJbmRleEluUmFuZ2UobFZpZXcsIGluZGV4ICsgSEVBREVSX09GRlNFVCk7XG4gIGxWaWV3W2luZGV4ICsgSEVBREVSX09GRlNFVF0gPSBuYXRpdmU7XG4gIC8vIEZJWE1FKG1pc2tvKTogV2h5IGRvZXMgdGhpcyBjcmVhdGUgQSBUTm9kZT8/PyBJIHdvdWxkIG5vdCBleHBlY3QgdGhpcyB0byBiZSBoZXJlLlxuICBjb25zdCB0Tm9kZSA9IGdldE9yQ3JlYXRlVE5vZGUodFZpZXcsIGxWaWV3W1RfSE9TVF0sIGluZGV4LCB0eXBlIGFzIGFueSwgbmFtZSwgbnVsbCk7XG5cbiAgLy8gV2UgYXJlIGNyZWF0aW5nIGEgZHluYW1pYyBub2RlLCB0aGUgcHJldmlvdXMgdE5vZGUgbWlnaHQgbm90IGJlIHBvaW50aW5nIGF0IHRoaXMgbm9kZS5cbiAgLy8gV2Ugd2lsbCBsaW5rIG91cnNlbHZlcyBpbnRvIHRoZSB0cmVlIGxhdGVyIHdpdGggYGFwcGVuZEkxOG5Ob2RlYC5cbiAgaWYgKHByZXZpb3VzT3JQYXJlbnRUTm9kZSAmJiBwcmV2aW91c09yUGFyZW50VE5vZGUubmV4dCA9PT0gdE5vZGUpIHtcbiAgICBwcmV2aW91c09yUGFyZW50VE5vZGUubmV4dCA9IG51bGw7XG4gIH1cblxuICByZXR1cm4gdE5vZGU7XG59XG5cblxuLyoqXG4gKiBSZXR1cm5zIHRoZSBpbmRleCBvZiB0aGUgY3VycmVudCBjYXNlIG9mIGFuIElDVSBleHByZXNzaW9uIGRlcGVuZGluZyBvbiB0aGUgbWFpbiBiaW5kaW5nIHZhbHVlXG4gKlxuICogQHBhcmFtIGljdUV4cHJlc3Npb25cbiAqIEBwYXJhbSBiaW5kaW5nVmFsdWUgVGhlIHZhbHVlIG9mIHRoZSBtYWluIGJpbmRpbmcgdXNlZCBieSB0aGlzIElDVSBleHByZXNzaW9uXG4gKi9cbmZ1bmN0aW9uIGdldENhc2VJbmRleChpY3VFeHByZXNzaW9uOiBUSWN1LCBiaW5kaW5nVmFsdWU6IHN0cmluZyk6IG51bWJlciB7XG4gIGxldCBpbmRleCA9IGljdUV4cHJlc3Npb24uY2FzZXMuaW5kZXhPZihiaW5kaW5nVmFsdWUpO1xuICBpZiAoaW5kZXggPT09IC0xKSB7XG4gICAgc3dpdGNoIChpY3VFeHByZXNzaW9uLnR5cGUpIHtcbiAgICAgIGNhc2UgSWN1VHlwZS5wbHVyYWw6IHtcbiAgICAgICAgY29uc3QgcmVzb2x2ZWRDYXNlID0gZ2V0UGx1cmFsQ2FzZShiaW5kaW5nVmFsdWUsIGdldExvY2FsZUlkKCkpO1xuICAgICAgICBpbmRleCA9IGljdUV4cHJlc3Npb24uY2FzZXMuaW5kZXhPZihyZXNvbHZlZENhc2UpO1xuICAgICAgICBpZiAoaW5kZXggPT09IC0xICYmIHJlc29sdmVkQ2FzZSAhPT0gJ290aGVyJykge1xuICAgICAgICAgIGluZGV4ID0gaWN1RXhwcmVzc2lvbi5jYXNlcy5pbmRleE9mKCdvdGhlcicpO1xuICAgICAgICB9XG4gICAgICAgIGJyZWFrO1xuICAgICAgfVxuICAgICAgY2FzZSBJY3VUeXBlLnNlbGVjdDoge1xuICAgICAgICBpbmRleCA9IGljdUV4cHJlc3Npb24uY2FzZXMuaW5kZXhPZignb3RoZXInKTtcbiAgICAgICAgYnJlYWs7XG4gICAgICB9XG4gICAgfVxuICB9XG4gIHJldHVybiBpbmRleDtcbn1cbiJdfQ==