/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/instructions/lview_debug.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { assertDefined } from '../../util/assert';
import { createNamedArrayType } from '../../util/named_array_type';
import { initNgDevMode } from '../../util/ng_dev_mode';
import { ACTIVE_INDEX, CONTAINER_HEADER_OFFSET, MOVED_VIEWS, NATIVE } from '../interfaces/container';
import { COMMENT_MARKER, ELEMENT_MARKER } from '../interfaces/i18n';
import { getTStylingRangeNext, getTStylingRangeNextDuplicate, getTStylingRangePrev, getTStylingRangePrevDuplicate } from '../interfaces/styling';
import { CHILD_HEAD, CHILD_TAIL, CLEANUP, CONTEXT, DECLARATION_VIEW, FLAGS, HEADER_OFFSET, HOST, INJECTOR, NEXT, PARENT, QUERIES, RENDERER, RENDERER_FACTORY, SANITIZER, TVIEW, T_HOST } from '../interfaces/view';
import { attachDebugObject } from '../util/debug_utils';
import { getLContainerActiveIndex, getTNode, unwrapRNode } from '../util/view_utils';
/** @type {?} */
const NG_DEV_MODE = ((typeof ngDevMode === 'undefined' || !!ngDevMode) && initNgDevMode());
/*
 * This file contains conditionally attached classes which provide human readable (debug) level
 * information for `LView`, `LContainer` and other internal data structures. These data structures
 * are stored internally as array which makes it very difficult during debugging to reason about the
 * current state of the system.
 *
 * Patching the array with extra property does change the array's hidden class' but it does not
 * change the cost of access, therefore this patching should not have significant if any impact in
 * `ngDevMode` mode. (see: https://jsperf.com/array-vs-monkey-patch-array)
 *
 * So instead of seeing:
 * ```
 * Array(30) [Object, 659, null, …]
 * ```
 *
 * You get to see:
 * ```
 * LViewDebug {
 *   views: [...],
 *   flags: {attached: true, ...}
 *   nodes: [
 *     {html: '<div id="123">', ..., nodes: [
 *       {html: '<span>', ..., nodes: null}
 *     ]}
 *   ]
 * }
 * ```
 */
/** @type {?} */
let LVIEW_COMPONENT_CACHE;
/** @type {?} */
let LVIEW_EMBEDDED_CACHE;
/** @type {?} */
let LVIEW_ROOT;
/**
 * @record
 */
function TViewDebug() { }
if (false) {
    /** @type {?} */
    TViewDebug.prototype.type;
}
/**
 * This function clones a blueprint and creates LView.
 *
 * Simple slice will keep the same type, and we need it to be LView
 * @param {?} tView
 * @return {?}
 */
export function cloneToLViewFromTViewBlueprint(tView) {
    /** @type {?} */
    const debugTView = (/** @type {?} */ (tView));
    /** @type {?} */
    const lView = getLViewToClone(debugTView.type, tView.template && tView.template.name);
    return (/** @type {?} */ (lView.concat(tView.blueprint)));
}
/**
 * @param {?} type
 * @param {?} name
 * @return {?}
 */
function getLViewToClone(type, name) {
    switch (type) {
        case 0 /* Root */:
            if (LVIEW_ROOT === undefined)
                LVIEW_ROOT = new (createNamedArrayType('LRootView'))();
            return LVIEW_ROOT;
        case 1 /* Component */:
            if (LVIEW_COMPONENT_CACHE === undefined)
                LVIEW_COMPONENT_CACHE = new Map();
            /** @type {?} */
            let componentArray = LVIEW_COMPONENT_CACHE.get(name);
            if (componentArray === undefined) {
                componentArray = new (createNamedArrayType('LComponentView' + nameSuffix(name)))();
                LVIEW_COMPONENT_CACHE.set(name, componentArray);
            }
            return componentArray;
        case 2 /* Embedded */:
            if (LVIEW_EMBEDDED_CACHE === undefined)
                LVIEW_EMBEDDED_CACHE = new Map();
            /** @type {?} */
            let embeddedArray = LVIEW_EMBEDDED_CACHE.get(name);
            if (embeddedArray === undefined) {
                embeddedArray = new (createNamedArrayType('LEmbeddedView' + nameSuffix(name)))();
                LVIEW_EMBEDDED_CACHE.set(name, embeddedArray);
            }
            return embeddedArray;
    }
    throw new Error('unreachable code');
}
/**
 * @param {?} text
 * @return {?}
 */
function nameSuffix(text) {
    if (text == null)
        return '';
    /** @type {?} */
    const index = text.lastIndexOf('_Template');
    return '_' + (index === -1 ? text : text.substr(0, index));
}
/**
 * This class is a debug version of Object literal so that we can have constructor name show up
 * in
 * debug tools in ngDevMode.
 * @type {?}
 */
export const TViewConstructor = class TView {
    /**
     * @param {?} type
     * @param {?} id
     * @param {?} blueprint
     * @param {?} template
     * @param {?} queries
     * @param {?} viewQuery
     * @param {?} node
     * @param {?} data
     * @param {?} bindingStartIndex
     * @param {?} expandoStartIndex
     * @param {?} expandoInstructions
     * @param {?} firstCreatePass
     * @param {?} firstUpdatePass
     * @param {?} staticViewQueries
     * @param {?} staticContentQueries
     * @param {?} preOrderHooks
     * @param {?} preOrderCheckHooks
     * @param {?} contentHooks
     * @param {?} contentCheckHooks
     * @param {?} viewHooks
     * @param {?} viewCheckHooks
     * @param {?} destroyHooks
     * @param {?} cleanup
     * @param {?} contentQueries
     * @param {?} components
     * @param {?} directiveRegistry
     * @param {?} pipeRegistry
     * @param {?} firstChild
     * @param {?} schemas
     * @param {?} consts
     */
    constructor(type, //
    id, //
    blueprint, //
    template, //
    queries, //
    viewQuery, //
    node, //
    data, //
    bindingStartIndex, //
    expandoStartIndex, //
    expandoInstructions, //
    firstCreatePass, //
    firstUpdatePass, //
    staticViewQueries, //
    staticContentQueries, //
    preOrderHooks, //
    preOrderCheckHooks, //
    contentHooks, //
    contentCheckHooks, //
    viewHooks, //
    viewCheckHooks, //
    destroyHooks, //
    cleanup, //
    contentQueries, //
    components, //
    directiveRegistry, //
    pipeRegistry, //
    firstChild, //
    schemas, //
    consts) {
        this.type = type;
        this.id = id;
        this.blueprint = blueprint;
        this.template = template;
        this.queries = queries;
        this.viewQuery = viewQuery;
        this.node = node;
        this.data = data;
        this.bindingStartIndex = bindingStartIndex;
        this.expandoStartIndex = expandoStartIndex;
        this.expandoInstructions = expandoInstructions;
        this.firstCreatePass = firstCreatePass;
        this.firstUpdatePass = firstUpdatePass;
        this.staticViewQueries = staticViewQueries;
        this.staticContentQueries = staticContentQueries;
        this.preOrderHooks = preOrderHooks;
        this.preOrderCheckHooks = preOrderCheckHooks;
        this.contentHooks = contentHooks;
        this.contentCheckHooks = contentCheckHooks;
        this.viewHooks = viewHooks;
        this.viewCheckHooks = viewCheckHooks;
        this.destroyHooks = destroyHooks;
        this.cleanup = cleanup;
        this.contentQueries = contentQueries;
        this.components = components;
        this.directiveRegistry = directiveRegistry;
        this.pipeRegistry = pipeRegistry;
        this.firstChild = firstChild;
        this.schemas = schemas;
        this.consts = consts;
    }
    /**
     * @return {?}
     */
    get template_() {
        /** @type {?} */
        const buf = [];
        processTNodeChildren(this.firstChild, buf);
        return buf.join('');
    }
};
class TNode {
    /**
     * @param {?} tView_
     * @param {?} type
     * @param {?} index
     * @param {?} injectorIndex
     * @param {?} directiveStart
     * @param {?} directiveEnd
     * @param {?} directiveStylingLast
     * @param {?} propertyBindings
     * @param {?} flags
     * @param {?} providerIndexes
     * @param {?} tagName
     * @param {?} attrs
     * @param {?} mergedAttrs
     * @param {?} localNames
     * @param {?} initialInputs
     * @param {?} inputs
     * @param {?} outputs
     * @param {?} tViews
     * @param {?} next
     * @param {?} projectionNext
     * @param {?} child
     * @param {?} parent
     * @param {?} projection
     * @param {?} styles
     * @param {?} residualStyles
     * @param {?} classes
     * @param {?} residualClasses
     * @param {?} classBindings
     * @param {?} styleBindings
     */
    constructor(tView_, //
    type, //
    index, //
    injectorIndex, //
    directiveStart, //
    directiveEnd, //
    directiveStylingLast, //
    propertyBindings, //
    flags, //
    providerIndexes, //
    tagName, //
    attrs, //
    mergedAttrs, //
    localNames, //
    initialInputs, //
    inputs, //
    outputs, //
    tViews, //
    next, //
    projectionNext, //
    child, //
    parent, //
    projection, //
    styles, //
    residualStyles, //
    classes, //
    residualClasses, //
    classBindings, //
    styleBindings) {
        this.tView_ = tView_;
        this.type = type;
        this.index = index;
        this.injectorIndex = injectorIndex;
        this.directiveStart = directiveStart;
        this.directiveEnd = directiveEnd;
        this.directiveStylingLast = directiveStylingLast;
        this.propertyBindings = propertyBindings;
        this.flags = flags;
        this.providerIndexes = providerIndexes;
        this.tagName = tagName;
        this.attrs = attrs;
        this.mergedAttrs = mergedAttrs;
        this.localNames = localNames;
        this.initialInputs = initialInputs;
        this.inputs = inputs;
        this.outputs = outputs;
        this.tViews = tViews;
        this.next = next;
        this.projectionNext = projectionNext;
        this.child = child;
        this.parent = parent;
        this.projection = projection;
        this.styles = styles;
        this.residualStyles = residualStyles;
        this.classes = classes;
        this.residualClasses = residualClasses;
        this.classBindings = classBindings;
        this.styleBindings = styleBindings;
    }
    /**
     * @return {?}
     */
    get type_() {
        switch (this.type) {
            case 0 /* Container */:
                return 'TNodeType.Container';
            case 3 /* Element */:
                return 'TNodeType.Element';
            case 4 /* ElementContainer */:
                return 'TNodeType.ElementContainer';
            case 5 /* IcuContainer */:
                return 'TNodeType.IcuContainer';
            case 1 /* Projection */:
                return 'TNodeType.Projection';
            case 2 /* View */:
                return 'TNodeType.View';
            default:
                return 'TNodeType.???';
        }
    }
    /**
     * @return {?}
     */
    get flags_() {
        /** @type {?} */
        const flags = [];
        if (this.flags & 16 /* hasClassInput */)
            flags.push('TNodeFlags.hasClassInput');
        if (this.flags & 8 /* hasContentQuery */)
            flags.push('TNodeFlags.hasContentQuery');
        if (this.flags & 32 /* hasStyleInput */)
            flags.push('TNodeFlags.hasStyleInput');
        if (this.flags & 128 /* hasHostBindings */)
            flags.push('TNodeFlags.hasHostBindings');
        if (this.flags & 2 /* isComponentHost */)
            flags.push('TNodeFlags.isComponentHost');
        if (this.flags & 1 /* isDirectiveHost */)
            flags.push('TNodeFlags.isDirectiveHost');
        if (this.flags & 64 /* isDetached */)
            flags.push('TNodeFlags.isDetached');
        if (this.flags & 4 /* isProjected */)
            flags.push('TNodeFlags.isProjected');
        return flags.join('|');
    }
    /**
     * @return {?}
     */
    get template_() {
        /** @type {?} */
        const buf = [];
        buf.push('<', this.tagName || this.type_);
        if (this.attrs) {
            for (let i = 0; i < this.attrs.length;) {
                /** @type {?} */
                const attrName = this.attrs[i++];
                if (typeof attrName == 'number') {
                    break;
                }
                /** @type {?} */
                const attrValue = this.attrs[i++];
                buf.push(' ', (/** @type {?} */ (attrName)), '="', (/** @type {?} */ (attrValue)), '"');
            }
        }
        buf.push('>');
        processTNodeChildren(this.child, buf);
        buf.push('</', this.tagName || this.type_, '>');
        return buf.join('');
    }
    /**
     * @return {?}
     */
    get styleBindings_() { return toDebugStyleBinding(this, false); }
    /**
     * @return {?}
     */
    get classBindings_() { return toDebugStyleBinding(this, true); }
}
if (false) {
    /** @type {?} */
    TNode.prototype.tView_;
    /** @type {?} */
    TNode.prototype.type;
    /** @type {?} */
    TNode.prototype.index;
    /** @type {?} */
    TNode.prototype.injectorIndex;
    /** @type {?} */
    TNode.prototype.directiveStart;
    /** @type {?} */
    TNode.prototype.directiveEnd;
    /** @type {?} */
    TNode.prototype.directiveStylingLast;
    /** @type {?} */
    TNode.prototype.propertyBindings;
    /** @type {?} */
    TNode.prototype.flags;
    /** @type {?} */
    TNode.prototype.providerIndexes;
    /** @type {?} */
    TNode.prototype.tagName;
    /** @type {?} */
    TNode.prototype.attrs;
    /** @type {?} */
    TNode.prototype.mergedAttrs;
    /** @type {?} */
    TNode.prototype.localNames;
    /** @type {?} */
    TNode.prototype.initialInputs;
    /** @type {?} */
    TNode.prototype.inputs;
    /** @type {?} */
    TNode.prototype.outputs;
    /** @type {?} */
    TNode.prototype.tViews;
    /** @type {?} */
    TNode.prototype.next;
    /** @type {?} */
    TNode.prototype.projectionNext;
    /** @type {?} */
    TNode.prototype.child;
    /** @type {?} */
    TNode.prototype.parent;
    /** @type {?} */
    TNode.prototype.projection;
    /** @type {?} */
    TNode.prototype.styles;
    /** @type {?} */
    TNode.prototype.residualStyles;
    /** @type {?} */
    TNode.prototype.classes;
    /** @type {?} */
    TNode.prototype.residualClasses;
    /** @type {?} */
    TNode.prototype.classBindings;
    /** @type {?} */
    TNode.prototype.styleBindings;
}
/** @type {?} */
export const TNodeDebug = TNode;
/**
 * @record
 */
export function DebugStyleBindings() { }
/**
 * @record
 */
export function DebugStyleBinding() { }
if (false) {
    /** @type {?} */
    DebugStyleBinding.prototype.key;
    /** @type {?} */
    DebugStyleBinding.prototype.index;
    /** @type {?} */
    DebugStyleBinding.prototype.isTemplate;
    /** @type {?} */
    DebugStyleBinding.prototype.prevDuplicate;
    /** @type {?} */
    DebugStyleBinding.prototype.nextDuplicate;
    /** @type {?} */
    DebugStyleBinding.prototype.prevIndex;
    /** @type {?} */
    DebugStyleBinding.prototype.nextIndex;
}
/**
 * @param {?} tNode
 * @param {?} isClassBased
 * @return {?}
 */
function toDebugStyleBinding(tNode, isClassBased) {
    /** @type {?} */
    const tData = tNode.tView_.data;
    /** @type {?} */
    const bindings = (/** @type {?} */ ([]));
    /** @type {?} */
    const range = isClassBased ? tNode.classBindings : tNode.styleBindings;
    /** @type {?} */
    const prev = getTStylingRangePrev(range);
    /** @type {?} */
    const next = getTStylingRangeNext(range);
    /** @type {?} */
    let isTemplate = next !== 0;
    /** @type {?} */
    let cursor = isTemplate ? next : prev;
    while (cursor !== 0) {
        /** @type {?} */
        const itemKey = (/** @type {?} */ (tData[cursor]));
        /** @type {?} */
        const itemRange = (/** @type {?} */ (tData[cursor + 1]));
        bindings.unshift({
            key: itemKey,
            index: cursor,
            isTemplate: isTemplate,
            prevDuplicate: getTStylingRangePrevDuplicate(itemRange),
            nextDuplicate: getTStylingRangeNextDuplicate(itemRange),
            nextIndex: getTStylingRangeNext(itemRange),
            prevIndex: getTStylingRangePrev(itemRange),
        });
        if (cursor === prev)
            isTemplate = false;
        cursor = getTStylingRangePrev(itemRange);
    }
    bindings.push((isClassBased ? tNode.residualClasses : tNode.residualStyles) || null);
    return bindings;
}
/**
 * @param {?} tNode
 * @param {?} buf
 * @return {?}
 */
function processTNodeChildren(tNode, buf) {
    while (tNode) {
        buf.push(((/** @type {?} */ ((/** @type {?} */ (tNode))))).template_);
        tNode = tNode.next;
    }
}
/** @type {?} */
const TViewData = NG_DEV_MODE && createNamedArrayType('TViewData') || (/** @type {?} */ ((/** @type {?} */ (null))));
/** @type {?} */
let TVIEWDATA_EMPTY;
// can't initialize here or it will not be tree shaken, because `LView`
// constructor could have side-effects.
/**
 * This function clones a blueprint and creates TData.
 *
 * Simple slice will keep the same type, and we need it to be TData
 * @param {?} list
 * @return {?}
 */
export function cloneToTViewData(list) {
    if (TVIEWDATA_EMPTY === undefined)
        TVIEWDATA_EMPTY = new TViewData();
    return (/** @type {?} */ (TVIEWDATA_EMPTY.concat(list)));
}
/** @type {?} */
export const LViewBlueprint = NG_DEV_MODE && createNamedArrayType('LViewBlueprint') || (/** @type {?} */ ((/** @type {?} */ (null))));
/** @type {?} */
export const MatchesArray = NG_DEV_MODE && createNamedArrayType('MatchesArray') || (/** @type {?} */ ((/** @type {?} */ (null))));
/** @type {?} */
export const TViewComponents = NG_DEV_MODE && createNamedArrayType('TViewComponents') || (/** @type {?} */ ((/** @type {?} */ (null))));
/** @type {?} */
export const TNodeLocalNames = NG_DEV_MODE && createNamedArrayType('TNodeLocalNames') || (/** @type {?} */ ((/** @type {?} */ (null))));
/** @type {?} */
export const TNodeInitialInputs = NG_DEV_MODE && createNamedArrayType('TNodeInitialInputs') || (/** @type {?} */ ((/** @type {?} */ (null))));
/** @type {?} */
export const TNodeInitialData = NG_DEV_MODE && createNamedArrayType('TNodeInitialData') || (/** @type {?} */ ((/** @type {?} */ (null))));
/** @type {?} */
export const LCleanup = NG_DEV_MODE && createNamedArrayType('LCleanup') || (/** @type {?} */ ((/** @type {?} */ (null))));
/** @type {?} */
export const TCleanup = NG_DEV_MODE && createNamedArrayType('TCleanup') || (/** @type {?} */ ((/** @type {?} */ (null))));
/**
 * @param {?} lView
 * @return {?}
 */
export function attachLViewDebug(lView) {
    attachDebugObject(lView, new LViewDebug(lView));
}
/**
 * @param {?} lContainer
 * @return {?}
 */
export function attachLContainerDebug(lContainer) {
    attachDebugObject(lContainer, new LContainerDebug(lContainer));
}
/**
 * @param {?} obj
 * @return {?}
 */
export function toDebug(obj) {
    if (obj) {
        /** @type {?} */
        const debug = ((/** @type {?} */ (obj))).debug;
        assertDefined(debug, 'Object does not have a debug representation.');
        return debug;
    }
    else {
        return obj;
    }
}
/**
 * Use this method to unwrap a native element in `LView` and convert it into HTML for easier
 * reading.
 *
 * @param {?} value possibly wrapped native DOM node.
 * @param {?=} includeChildren If `true` then the serialized HTML form will include child elements
 * (same
 * as `outerHTML`). If `false` then the serialized HTML form will only contain the element
 * itself
 * (will not serialize child elements).
 * @return {?}
 */
function toHtml(value, includeChildren = false) {
    /** @type {?} */
    const node = (/** @type {?} */ (unwrapRNode(value)));
    if (node) {
        /** @type {?} */
        const isTextNode = node.nodeType === Node.TEXT_NODE;
        /** @type {?} */
        const outerHTML = (isTextNode ? node.textContent : node.outerHTML) || '';
        if (includeChildren || isTextNode) {
            return outerHTML;
        }
        else {
            /** @type {?} */
            const innerHTML = '>' + node.innerHTML + '<';
            return (outerHTML.split(innerHTML)[0]) + '>';
        }
    }
    else {
        return null;
    }
}
export class LViewDebug {
    /**
     * @param {?} _raw_lView
     */
    constructor(_raw_lView) {
        this._raw_lView = _raw_lView;
    }
    /**
     * Flags associated with the `LView` unpacked into a more readable state.
     * @return {?}
     */
    get flags() {
        /** @type {?} */
        const flags = this._raw_lView[FLAGS];
        return {
            __raw__flags__: flags,
            initPhaseState: flags & 3 /* InitPhaseStateMask */,
            creationMode: !!(flags & 4 /* CreationMode */),
            firstViewPass: !!(flags & 8 /* FirstLViewPass */),
            checkAlways: !!(flags & 16 /* CheckAlways */),
            dirty: !!(flags & 64 /* Dirty */),
            attached: !!(flags & 128 /* Attached */),
            destroyed: !!(flags & 256 /* Destroyed */),
            isRoot: !!(flags & 512 /* IsRoot */),
            indexWithinInitPhase: flags >> 10 /* IndexWithinInitPhaseShift */,
        };
    }
    /**
     * @return {?}
     */
    get parent() { return toDebug(this._raw_lView[PARENT]); }
    /**
     * @return {?}
     */
    get host() { return toHtml(this._raw_lView[HOST], true); }
    /**
     * @return {?}
     */
    get html() { return (this.nodes || []).map((/**
     * @param {?} node
     * @return {?}
     */
    node => toHtml(node.native, true))).join(''); }
    /**
     * @return {?}
     */
    get context() { return this._raw_lView[CONTEXT]; }
    /**
     * The tree of nodes associated with the current `LView`. The nodes have been normalized into
     * a
     * tree structure with relevant details pulled out for readability.
     * @return {?}
     */
    get nodes() {
        /** @type {?} */
        const lView = this._raw_lView;
        /** @type {?} */
        const tNode = lView[TVIEW].firstChild;
        return toDebugNodes(tNode, lView);
    }
    /**
     * @return {?}
     */
    get tView() { return this._raw_lView[TVIEW]; }
    /**
     * @return {?}
     */
    get cleanup() { return this._raw_lView[CLEANUP]; }
    /**
     * @return {?}
     */
    get injector() { return this._raw_lView[INJECTOR]; }
    /**
     * @return {?}
     */
    get rendererFactory() { return this._raw_lView[RENDERER_FACTORY]; }
    /**
     * @return {?}
     */
    get renderer() { return this._raw_lView[RENDERER]; }
    /**
     * @return {?}
     */
    get sanitizer() { return this._raw_lView[SANITIZER]; }
    /**
     * @return {?}
     */
    get childHead() { return toDebug(this._raw_lView[CHILD_HEAD]); }
    /**
     * @return {?}
     */
    get next() { return toDebug(this._raw_lView[NEXT]); }
    /**
     * @return {?}
     */
    get childTail() { return toDebug(this._raw_lView[CHILD_TAIL]); }
    /**
     * @return {?}
     */
    get declarationView() { return toDebug(this._raw_lView[DECLARATION_VIEW]); }
    /**
     * @return {?}
     */
    get queries() { return this._raw_lView[QUERIES]; }
    /**
     * @return {?}
     */
    get tHost() { return this._raw_lView[T_HOST]; }
    /**
     * Normalized view of child views (and containers) attached at this location.
     * @return {?}
     */
    get childViews() {
        /** @type {?} */
        const childViews = [];
        /** @type {?} */
        let child = this.childHead;
        while (child) {
            childViews.push(child);
            child = child.next;
        }
        return childViews;
    }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    LViewDebug.prototype._raw_lView;
}
/**
 * @record
 */
export function DebugNode() { }
if (false) {
    /** @type {?} */
    DebugNode.prototype.html;
    /** @type {?} */
    DebugNode.prototype.native;
    /** @type {?} */
    DebugNode.prototype.nodes;
    /** @type {?} */
    DebugNode.prototype.component;
}
/**
 * Turns a flat list of nodes into a tree by walking the associated `TNode` tree.
 *
 * @param {?} tNode
 * @param {?} lView
 * @return {?}
 */
export function toDebugNodes(tNode, lView) {
    if (tNode) {
        /** @type {?} */
        const debugNodes = [];
        /** @type {?} */
        let tNodeCursor = tNode;
        while (tNodeCursor) {
            debugNodes.push(buildDebugNode(tNodeCursor, lView, tNodeCursor.index));
            tNodeCursor = tNodeCursor.next;
        }
        return debugNodes;
    }
    else {
        return null;
    }
}
/**
 * @param {?} tNode
 * @param {?} lView
 * @param {?} nodeIndex
 * @return {?}
 */
export function buildDebugNode(tNode, lView, nodeIndex) {
    /** @type {?} */
    const rawValue = lView[nodeIndex];
    /** @type {?} */
    const native = unwrapRNode(rawValue);
    /** @type {?} */
    const componentLViewDebug = toDebug(readLViewValue(rawValue));
    return {
        html: toHtml(native),
        native: (/** @type {?} */ (native)),
        nodes: toDebugNodes(tNode.child, lView),
        component: componentLViewDebug,
    };
}
export class LContainerDebug {
    /**
     * @param {?} _raw_lContainer
     */
    constructor(_raw_lContainer) {
        this._raw_lContainer = _raw_lContainer;
    }
    /**
     * @return {?}
     */
    get activeIndex() { return getLContainerActiveIndex(this._raw_lContainer); }
    /**
     * @return {?}
     */
    get hasTransplantedViews() {
        return (this._raw_lContainer[ACTIVE_INDEX] & 1 /* HAS_TRANSPLANTED_VIEWS */) ===
            1 /* HAS_TRANSPLANTED_VIEWS */;
    }
    /**
     * @return {?}
     */
    get views() {
        return this._raw_lContainer.slice(CONTAINER_HEADER_OFFSET)
            .map((/** @type {?} */ (toDebug)));
    }
    /**
     * @return {?}
     */
    get parent() { return toDebug(this._raw_lContainer[PARENT]); }
    /**
     * @return {?}
     */
    get movedViews() { return this._raw_lContainer[MOVED_VIEWS]; }
    /**
     * @return {?}
     */
    get host() { return this._raw_lContainer[HOST]; }
    /**
     * @return {?}
     */
    get native() { return this._raw_lContainer[NATIVE]; }
    /**
     * @return {?}
     */
    get next() { return toDebug(this._raw_lContainer[NEXT]); }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    LContainerDebug.prototype._raw_lContainer;
}
/**
 * Return an `LView` value if found.
 *
 * @param {?} value `LView` if any
 * @return {?}
 */
export function readLViewValue(value) {
    while (Array.isArray(value)) {
        // This check is not quite right, as it does not take into account `StylingContext`
        // This is why it is in debug, not in util.ts
        if (value.length >= HEADER_OFFSET - 1)
            return (/** @type {?} */ (value));
        value = value[HOST];
    }
    return null;
}
export class I18NDebugItem {
    /**
     * @param {?} __raw_opCode
     * @param {?} _lView
     * @param {?} nodeIndex
     * @param {?} type
     */
    constructor(__raw_opCode, _lView, nodeIndex, type) {
        this.__raw_opCode = __raw_opCode;
        this._lView = _lView;
        this.nodeIndex = nodeIndex;
        this.type = type;
    }
    /**
     * @return {?}
     */
    get tNode() { return getTNode(this._lView[TVIEW], this.nodeIndex); }
}
if (false) {
    /** @type {?} */
    I18NDebugItem.prototype.__raw_opCode;
    /**
     * @type {?}
     * @private
     */
    I18NDebugItem.prototype._lView;
    /** @type {?} */
    I18NDebugItem.prototype.nodeIndex;
    /** @type {?} */
    I18NDebugItem.prototype.type;
    /* Skipping unhandled member: [key: string]: any;*/
}
/**
 * Turns a list of "Create" & "Update" OpCodes into a human-readable list of operations for
 * debugging purposes.
 * @param {?} mutateOpCodes mutation opCodes to read
 * @param {?} updateOpCodes update opCodes to read
 * @param {?} icus list of ICU expressions
 * @param {?} lView The view the opCodes are acting on
 * @return {?}
 */
export function attachI18nOpCodesDebug(mutateOpCodes, updateOpCodes, icus, lView) {
    attachDebugObject(mutateOpCodes, new I18nMutateOpCodesDebug(mutateOpCodes, lView));
    attachDebugObject(updateOpCodes, new I18nUpdateOpCodesDebug(updateOpCodes, icus, lView));
    if (icus) {
        icus.forEach((/**
         * @param {?} icu
         * @return {?}
         */
        icu => {
            icu.create.forEach((/**
             * @param {?} icuCase
             * @return {?}
             */
            icuCase => { attachDebugObject(icuCase, new I18nMutateOpCodesDebug(icuCase, lView)); }));
            icu.update.forEach((/**
             * @param {?} icuCase
             * @return {?}
             */
            icuCase => {
                attachDebugObject(icuCase, new I18nUpdateOpCodesDebug(icuCase, icus, lView));
            }));
        }));
    }
}
export class I18nMutateOpCodesDebug {
    /**
     * @param {?} __raw_opCodes
     * @param {?} __lView
     */
    constructor(__raw_opCodes, __lView) {
        this.__raw_opCodes = __raw_opCodes;
        this.__lView = __lView;
    }
    /**
     * A list of operation information about how the OpCodes will act on the view.
     * @return {?}
     */
    get operations() {
        const { __lView, __raw_opCodes } = this;
        /** @type {?} */
        const results = [];
        for (let i = 0; i < __raw_opCodes.length; i++) {
            /** @type {?} */
            const opCode = __raw_opCodes[i];
            /** @type {?} */
            let result;
            if (typeof opCode === 'string') {
                result = {
                    __raw_opCode: opCode,
                    type: 'Create Text Node',
                    nodeIndex: __raw_opCodes[++i],
                    text: opCode,
                };
            }
            if (typeof opCode === 'number') {
                switch (opCode & 7 /* MASK_OPCODE */) {
                    case 1 /* AppendChild */:
                        /** @type {?} */
                        const destinationNodeIndex = opCode >>> 17 /* SHIFT_PARENT */;
                        result = new I18NDebugItem(opCode, __lView, destinationNodeIndex, 'AppendChild');
                        break;
                    case 0 /* Select */:
                        /** @type {?} */
                        const nodeIndex = opCode >>> 3 /* SHIFT_REF */;
                        result = new I18NDebugItem(opCode, __lView, nodeIndex, 'Select');
                        break;
                    case 5 /* ElementEnd */:
                        /** @type {?} */
                        let elementIndex = opCode >>> 3 /* SHIFT_REF */;
                        result = new I18NDebugItem(opCode, __lView, elementIndex, 'ElementEnd');
                        break;
                    case 4 /* Attr */:
                        elementIndex = opCode >>> 3 /* SHIFT_REF */;
                        result = new I18NDebugItem(opCode, __lView, elementIndex, 'Attr');
                        result['attrName'] = __raw_opCodes[++i];
                        result['attrValue'] = __raw_opCodes[++i];
                        break;
                }
            }
            if (!result) {
                switch (opCode) {
                    case COMMENT_MARKER:
                        result = {
                            __raw_opCode: opCode,
                            type: 'COMMENT_MARKER',
                            commentValue: __raw_opCodes[++i],
                            nodeIndex: __raw_opCodes[++i],
                        };
                        break;
                    case ELEMENT_MARKER:
                        result = {
                            __raw_opCode: opCode,
                            type: 'ELEMENT_MARKER',
                        };
                        break;
                }
            }
            if (!result) {
                result = {
                    __raw_opCode: opCode,
                    type: 'Unknown Op Code',
                    code: opCode,
                };
            }
            results.push(result);
        }
        return results;
    }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    I18nMutateOpCodesDebug.prototype.__raw_opCodes;
    /**
     * @type {?}
     * @private
     */
    I18nMutateOpCodesDebug.prototype.__lView;
}
export class I18nUpdateOpCodesDebug {
    /**
     * @param {?} __raw_opCodes
     * @param {?} icus
     * @param {?} __lView
     */
    constructor(__raw_opCodes, icus, __lView) {
        this.__raw_opCodes = __raw_opCodes;
        this.icus = icus;
        this.__lView = __lView;
    }
    /**
     * A list of operation information about how the OpCodes will act on the view.
     * @return {?}
     */
    get operations() {
        const { __lView, __raw_opCodes, icus } = this;
        /** @type {?} */
        const results = [];
        for (let i = 0; i < __raw_opCodes.length; i++) {
            // bit code to check if we should apply the next update
            /** @type {?} */
            const checkBit = (/** @type {?} */ (__raw_opCodes[i]));
            // Number of opCodes to skip until next set of update codes
            /** @type {?} */
            const skipCodes = (/** @type {?} */ (__raw_opCodes[++i]));
            /** @type {?} */
            let value = '';
            for (let j = i + 1; j <= (i + skipCodes); j++) {
                /** @type {?} */
                const opCode = __raw_opCodes[j];
                if (typeof opCode === 'string') {
                    value += opCode;
                }
                else if (typeof opCode == 'number') {
                    if (opCode < 0) {
                        // It's a binding index whose value is negative
                        // We cannot know the value of the binding so we only show the index
                        value += `�${-opCode - 1}�`;
                    }
                    else {
                        /** @type {?} */
                        const nodeIndex = opCode >>> 2 /* SHIFT_REF */;
                        /** @type {?} */
                        let tIcuIndex;
                        /** @type {?} */
                        let tIcu;
                        switch (opCode & 3 /* MASK_OPCODE */) {
                            case 1 /* Attr */:
                                /** @type {?} */
                                const attrName = (/** @type {?} */ (__raw_opCodes[++j]));
                                /** @type {?} */
                                const sanitizeFn = __raw_opCodes[++j];
                                results.push({
                                    __raw_opCode: opCode,
                                    checkBit,
                                    type: 'Attr',
                                    attrValue: value, attrName, sanitizeFn,
                                });
                                break;
                            case 0 /* Text */:
                                results.push({
                                    __raw_opCode: opCode,
                                    checkBit,
                                    type: 'Text', nodeIndex,
                                    text: value,
                                });
                                break;
                            case 2 /* IcuSwitch */:
                                tIcuIndex = (/** @type {?} */ (__raw_opCodes[++j]));
                                tIcu = (/** @type {?} */ (icus))[tIcuIndex];
                                /** @type {?} */
                                let result = new I18NDebugItem(opCode, __lView, nodeIndex, 'IcuSwitch');
                                result['tIcuIndex'] = tIcuIndex;
                                result['checkBit'] = checkBit;
                                result['mainBinding'] = value;
                                result['tIcu'] = tIcu;
                                results.push(result);
                                break;
                            case 3 /* IcuUpdate */:
                                tIcuIndex = (/** @type {?} */ (__raw_opCodes[++j]));
                                tIcu = (/** @type {?} */ (icus))[tIcuIndex];
                                result = new I18NDebugItem(opCode, __lView, nodeIndex, 'IcuUpdate');
                                result['tIcuIndex'] = tIcuIndex;
                                result['checkBit'] = checkBit;
                                result['tIcu'] = tIcu;
                                results.push(result);
                                break;
                        }
                    }
                }
            }
            i += skipCodes;
        }
        return results;
    }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    I18nUpdateOpCodesDebug.prototype.__raw_opCodes;
    /**
     * @type {?}
     * @private
     */
    I18nUpdateOpCodesDebug.prototype.icus;
    /**
     * @type {?}
     * @private
     */
    I18nUpdateOpCodesDebug.prototype.__lView;
}
/**
 * @record
 */
export function I18nOpCodesDebug() { }
if (false) {
    /** @type {?} */
    I18nOpCodesDebug.prototype.operations;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibHZpZXdfZGVidWcuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL2luc3RydWN0aW9ucy9sdmlld19kZWJ1Zy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7QUFXQSxPQUFPLEVBQUMsYUFBYSxFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFDaEQsT0FBTyxFQUFDLG9CQUFvQixFQUFDLE1BQU0sNkJBQTZCLENBQUM7QUFDakUsT0FBTyxFQUFDLGFBQWEsRUFBQyxNQUFNLHdCQUF3QixDQUFDO0FBQ3JELE9BQU8sRUFBQyxZQUFZLEVBQW1CLHVCQUF1QixFQUFjLFdBQVcsRUFBRSxNQUFNLEVBQUMsTUFBTSx5QkFBeUIsQ0FBQztBQUVoSSxPQUFPLEVBQUMsY0FBYyxFQUFFLGNBQWMsRUFBaUYsTUFBTSxvQkFBb0IsQ0FBQztBQUtsSixPQUFPLEVBQTZCLG9CQUFvQixFQUFFLDZCQUE2QixFQUFFLG9CQUFvQixFQUFFLDZCQUE2QixFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFDM0ssT0FBTyxFQUFDLFVBQVUsRUFBRSxVQUFVLEVBQUUsT0FBTyxFQUFFLE9BQU8sRUFBRSxnQkFBZ0IsRUFBdUIsS0FBSyxFQUFFLGFBQWEsRUFBRSxJQUFJLEVBQVksUUFBUSxFQUFxQixJQUFJLEVBQUUsTUFBTSxFQUFFLE9BQU8sRUFBRSxRQUFRLEVBQUUsZ0JBQWdCLEVBQUUsU0FBUyxFQUFTLEtBQUssRUFBcUMsTUFBTSxFQUFDLE1BQU0sb0JBQW9CLENBQUM7QUFDN1MsT0FBTyxFQUFDLGlCQUFpQixFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFDdEQsT0FBTyxFQUFDLHdCQUF3QixFQUFFLFFBQVEsRUFBRSxXQUFXLEVBQUMsTUFBTSxvQkFBb0IsQ0FBQzs7TUFFN0UsV0FBVyxHQUFHLENBQUMsQ0FBQyxPQUFPLFNBQVMsS0FBSyxXQUFXLElBQUksQ0FBQyxD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LEVBQUUsU0FBUyxFQUFFLFdBQVcsQ0FBQztnQ0FDdkUsTUFBTSxDQUFDLFdBQVcsQ0FBQyxHQUFHLFNBQVMsQ0FBQztnQ0FDaEMsTUFBTSxDQUFDLFVBQVUsQ0FBQyxHQUFHLFFBQVEsQ0FBQztnQ0FDOUIsTUFBTSxDQUFDLGFBQWEsQ0FBQyxHQUFHLEtBQUssQ0FBQztnQ0FDOUIsTUFBTSxDQUFDLE1BQU0sQ0FBQyxHQUFHLElBQUksQ0FBQztnQ0FDdEIsT0FBTyxDQUFDLElBQUksQ0FBQyxNQUFNLENBQUMsQ0FBQztnQ0FDckIsTUFBTTs0QkFDUjtnQ0FDRSxTQUFTLEdBQUcsbUJBQUEsYUFBYSxDQUFDLEVBQUUsQ0FBQyxDQUFDLEVBQVUsQ0FBQztnQ0FDekMsSUFBSSxHQUFHLG1CQUFBLElBQUksRUFBRSxDQUFDLFNBQVMsQ0FBQyxDQUFDO2dDQUN6QixNQUFNLEdBQUcsSUFBSSxhQUFhLENBQUMsTUFBTSxFQUFFLE9BQU8sRUFBRSxTQUFTLEVBQUUsV0FBVyxDQUFDLENBQUM7Z0NBQ3BFLE1BQU0sQ0FBQyxXQUFXLENBQUMsR0FBRyxTQUFTLENBQUM7Z0NBQ2hDLE1BQU0sQ0FBQyxVQUFVLENBQUMsR0FBRyxRQUFRLENBQUM7Z0NBQzlCLE1BQU0sQ0FBQyxNQUFNLENBQUMsR0FBRyxJQUFJLENBQUM7Z0NBQ3RCLE9BQU8sQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLENBQUM7Z0NBQ3JCLE1BQU07eUJBQ1Q7cUJBQ0Y7aUJBQ0Y7YUFDRjtZQUNELENBQUMsSUFBSSxTQUFTLENBQUM7U0FDaEI7UUFDRCxPQUFPLE9BQU8sQ0FBQztJQUNqQixDQUFDO0NBQ0Y7Ozs7OztJQTNFSywrQ0FBaUQ7Ozs7O0lBQUUsc0NBQWtDOzs7OztJQUNyRix5Q0FBK0I7Ozs7O0FBNEVyQyxzQ0FBd0Q7OztJQUFwQixzQ0FBa0IiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7QXR0cmlidXRlTWFya2VyLCBDb21wb25lbnRUZW1wbGF0ZX0gZnJvbSAnLi4nO1xuaW1wb3J0IHtTY2hlbWFNZXRhZGF0YX0gZnJvbSAnLi4vLi4vY29yZSc7XG5pbXBvcnQge0tleVZhbHVlQXJyYXl9IGZyb20gJy4uLy4uL3V0aWwvYXJyYXlfdXRpbHMnO1xuaW1wb3J0IHthc3NlcnREZWZpbmVkfSBmcm9tICcuLi8uLi91dGlsL2Fzc2VydCc7XG5pbXBvcnQge2NyZWF0ZU5hbWVkQXJyYXlUeXBlfSBmcm9tICcuLi8uLi91dGlsL25hbWVkX2FycmF5X3R5cGUnO1xuaW1wb3J0IHtpbml0TmdEZXZNb2RlfSBmcm9tICcuLi8uLi91dGlsL25nX2Rldl9tb2RlJztcbmltcG9ydCB7QUNUSVZFX0lOREVYLCBBY3RpdmVJbmRleEZsYWcsIENPTlRBSU5FUl9IRUFERVJfT0ZGU0VULCBMQ29udGFpbmVyLCBNT1ZFRF9WSUVXUywgTkFUSVZFfSBmcm9tICcuLi9pbnRlcmZhY2VzL2NvbnRhaW5lcic7XG5pbXBvcnQge0RpcmVjdGl2ZURlZkxpc3QsIFBpcGVEZWZMaXN0LCBWaWV3UXVlcmllc0Z1bmN0aW9ufSBmcm9tICcuLi9pbnRlcmZhY2VzL2RlZmluaXRpb24nO1xuaW1wb3J0IHtDT01NRU5UX01BUktFUiwgRUxFTUVOVF9NQVJLRVIsIEkxOG5NdXRhdGVPcENvZGUsIEkxOG5NdXRhdGVPcENvZGVzLCBJMThuVXBkYXRlT3BDb2RlLCBJMThuVXBkYXRlT3BDb2RlcywgVEljdX0gZnJvbSAnLi4vaW50ZXJmYWNlcy9pMThuJztcbmltcG9ydCB7UHJvcGVydHlBbGlhc2VzLCBUQ29uc3RhbnRzLCBUQ29udGFpbmVyTm9kZSwgVEVsZW1lbnROb2RlLCBUTm9kZSBhcyBJVE5vZGUsIFROb2RlRmxhZ3MsIFROb2RlUHJvdmlkZXJJbmRleGVzLCBUTm9kZVR5cGUsIFRWaWV3Tm9kZX0gZnJvbSAnLi4vaW50ZXJmYWNlcy9ub2RlJztcbmltcG9ydCB7U2VsZWN0b3JGbGFnc30gZnJvbSAnLi4vaW50ZXJmYWNlcy9wcm9qZWN0aW9uJztcbmltcG9ydCB7VFF1ZXJpZXN9IGZyb20gJy4uL2ludGVyZmFjZXMvcXVlcnknO1xuaW1wb3J0IHtSQ29tbWVudCwgUkVsZW1lbnQsIFJOb2RlfSBmcm9tICcuLi9pbnRlcmZhY2VzL3JlbmRlcmVyJztcbmltcG9ydCB7VFN0eWxpbmdLZXksIFRTdHlsaW5nUmFuZ2UsIGdldFRTdHlsaW5nUmFuZ2VOZXh0LCBnZXRUU3R5bGluZ1JhbmdlTmV4dER1cGxpY2F0ZSwgZ2V0VFN0eWxpbmdSYW5nZVByZXYsIGdldFRTdHlsaW5nUmFuZ2VQcmV2RHVwbGljYXRlfSBmcm9tICcuLi9pbnRlcmZhY2VzL3N0eWxpbmcnO1xuaW1wb3J0IHtDSElMRF9IRUFELCBDSElMRF9UQUlMLCBDTEVBTlVQLCBDT05URVhULCBERUNMQVJBVElPTl9WSUVXLCBFeHBhbmRvSW5zdHJ1Y3Rpb25zLCBGTEFHUywgSEVBREVSX09GRlNFVCwgSE9TVCwgSG9va0RhdGEsIElOSkVDVE9SLCBMVmlldywgTFZpZXdGbGFncywgTkVYVCwgUEFSRU5ULCBRVUVSSUVTLCBSRU5ERVJFUiwgUkVOREVSRVJfRkFDVE9SWSwgU0FOSVRJWkVSLCBURGF0YSwgVFZJRVcsIFRWaWV3IGFzIElUVmlldywgVFZpZXcsIFRWaWV3VHlwZSwgVF9IT1NUfSBmcm9tICcuLi9pbnRlcmZhY2VzL3ZpZXcnO1xuaW1wb3J0IHthdHRhY2hEZWJ1Z09iamVjdH0gZnJvbSAnLi4vdXRpbC9kZWJ1Z191dGlscyc7XG5pbXBvcnQge2dldExDb250YWluZXJBY3RpdmVJbmRleCwgZ2V0VE5vZGUsIHVud3JhcFJOb2RlfSBmcm9tICcuLi91dGlsL3ZpZXdfdXRpbHMnO1xuXG5jb25zdCBOR19ERVZfTU9ERSA9ICgodHlwZW9mIG5nRGV2TW9kZSA9PT0gJ3VuZGVmaW5lZCcgfHwgISFuZ0Rldk1vZGUpICYmIGluaXROZ0Rldk1vZGUoKSk7XG5cbi8qXG4gKiBUaGlzIGZpbGUgY29udGFpbnMgY29uZGl0aW9uYWxseSBhdHRhY2hlZCBjbGFzc2VzIHdoaWNoIHByb3ZpZGUgaHVtYW4gcmVhZGFibGUgKGRlYnVnKSBsZXZlbFxuICogaW5mb3JtYXRpb24gZm9yIGBMVmlld2AsIGBMQ29udGFpbmVyYCBhbmQgb3RoZXIgaW50ZXJuYWwgZGF0YSBzdHJ1Y3R1cmVzLiBUaGVzZSBkYXRhIHN0cnVjdHVyZXNcbiAqIGFyZSBzdG9yZWQgaW50ZXJuYWxseSBhcyBhcnJheSB3aGljaCBtYWtlcyBpdCB2ZXJ5IGRpZmZpY3VsdCBkdXJpbmcgZGVidWdnaW5nIHRvIHJlYXNvbiBhYm91dCB0aGVcbiAqIGN1cnJlbnQgc3RhdGUgb2YgdGhlIHN5c3RlbS5cbiAqXG4gKiBQYXRjaGluZyB0aGUgYXJyYXkgd2l0aCBleHRyYSBwcm9wZXJ0eSBkb2VzIGNoYW5nZSB0aGUgYXJyYXkncyBoaWRkZW4gY2xhc3MnIGJ1dCBpdCBkb2VzIG5vdFxuICogY2hhbmdlIHRoZSBjb3N0IG9mIGFjY2VzcywgdGhlcmVmb3JlIHRoaXMgcGF0Y2hpbmcgc2hvdWxkIG5vdCBoYXZlIHNpZ25pZmljYW50IGlmIGFueSBpbXBhY3QgaW5cbiAqIGBuZ0Rldk1vZGVgIG1vZGUuIChzZWU6IGh0dHBzOi8vanNwZXJmLmNvbS9hcnJheS12cy1tb25rZXktcGF0Y2gtYXJyYXkpXG4gKlxuICogU28gaW5zdGVhZCBvZiBzZWVpbmc6XG4gKiBgYGBcbiAqIEFycmF5KDMwKSBbT2JqZWN0LCA2NTksIG51bGwsIOKApl1cbiAqIGBgYFxuICpcbiAqIFlvdSBnZXQgdG8gc2VlOlxuICogYGBgXG4gKiBMVmlld0RlYnVnIHtcbiAqICAgdmlld3M6IFsuLi5dLFxuICogICBmbGFnczoge2F0dGFjaGVkOiB0cnVlLCAuLi59XG4gKiAgIG5vZGVzOiBbXG4gKiAgICAge2h0bWw6ICc8ZGl2IGlkPVwiMTIzXCI+JywgLi4uLCBub2RlczogW1xuICogICAgICAge2h0bWw6ICc8c3Bhbj4nLCAuLi4sIG5vZGVzOiBudWxsfVxuICogICAgIF19XG4gKiAgIF1cbiAqIH1cbiAqIGBgYFxuICovXG5cbmxldCBMVklFV19DT01QT05FTlRfQ0FDSEUgITogTWFwPHN0cmluZ3xudWxsLCBBcnJheTxhbnk+PjtcbmxldCBMVklFV19FTUJFRERFRF9DQUNIRSAhOiBNYXA8c3RyaW5nfG51bGwsIEFycmF5PGFueT4+O1xubGV0IExWSUVXX1JPT1QgITogQXJyYXk8YW55PjtcblxuaW50ZXJmYWNlIFRWaWV3RGVidWcgZXh0ZW5kcyBJVFZpZXcge1xuICB0eXBlOiBUVmlld1R5cGU7XG59XG5cbi8qKlxuICogVGhpcyBmdW5jdGlvbiBjbG9uZXMgYSBibHVlcHJpbnQgYW5kIGNyZWF0ZXMgTFZpZXcuXG4gKlxuICogU2ltcGxlIHNsaWNlIHdpbGwga2VlcCB0aGUgc2FtZSB0eXBlLCBhbmQgd2UgbmVlZCBpdCB0byBiZSBMVmlld1xuICovXG5leHBvcnQgZnVuY3Rpb24gY2xvbmVUb0xWaWV3RnJvbVRWaWV3Qmx1ZXByaW50KHRWaWV3OiBUVmlldyk6IExWaWV3IHtcbiAgY29uc3QgZGVidWdUVmlldyA9IHRWaWV3IGFzIFRWaWV3RGVidWc7XG4gIGNvbnN0IGxWaWV3ID0gZ2V0TFZpZXdUb0Nsb25lKGRlYnVnVFZpZXcudHlwZSwgdFZpZXcudGVtcGxhdGUgJiYgdFZpZXcudGVtcGxhdGUubmFtZSk7XG4gIHJldHVybiBsVmlldy5jb25jYXQodFZpZXcuYmx1ZXByaW50KSBhcyBhbnk7XG59XG5cbmZ1bmN0aW9uIGdldExWaWV3VG9DbG9uZSh0eXBlOiBUVmlld1R5cGUsIG5hbWU6IHN0cmluZyB8IG51bGwpOiBBcnJheTxhbnk+IHtcbiAgc3dpdGNoICh0eXBlKSB7XG4gICAgY2FzZSBUVmlld1R5cGUuUm9vdDpcbiAgICAgIGlmIChMVklFV19ST09UID09PSB1bmRlZmluZWQpIExWSUVXX1JPT1QgPSBuZXcgKGNyZWF0ZU5hbWVkQXJyYXlUeXBlKCdMUm9vdFZpZXcnKSkoKTtcbiAgICAgIHJldHVybiBMVklFV19ST09UO1xuICAgIGNhc2UgVFZpZXdUeXBlLkNvbXBvbmVudDpcbiAgICAgIGlmIChMVklFV19DT01QT05FTlRfQ0FDSEUgPT09IHVuZGVmaW5lZCkgTFZJRVdfQ09NUE9ORU5UX0NBQ0hFID0gbmV3IE1hcCgpO1xuICAgICAgbGV0IGNvbXBvbmVudEFycmF5ID0gTFZJRVdfQ09NUE9ORU5UX0NBQ0hFLmdldChuYW1lKTtcbiAgICAgIGlmIChjb21wb25lbnRBcnJheSA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICAgIGNvbXBvbmVudEFycmF5ID0gbmV3IChjcmVhdGVOYW1lZEFycmF5VHlwZSgnTENvbXBvbmVudFZpZXcnICsgbmFtZVN1ZmZpeChuYW1lKSkpKCk7XG4gICAgICAgIExWSUVXX0NPTVBPTkVOVF9DQUNIRS5zZXQobmFtZSwgY29tcG9uZW50QXJyYXkpO1xuICAgICAgfVxuICAgICAgcmV0dXJuIGNvbXBvbmVudEFycmF5O1xuICAgIGNhc2UgVFZpZXdUeXBlLkVtYmVkZGVkOlxuICAgICAgaWYgKExWSUVXX0VNQkVEREVEX0NBQ0hFID09PSB1bmRlZmluZWQpIExWSUVXX0VNQkVEREVEX0NBQ0hFID0gbmV3IE1hcCgpO1xuICAgICAgbGV0IGVtYmVkZGVkQXJyYXkgPSBMVklFV19FTUJFRERFRF9DQUNIRS5nZXQobmFtZSk7XG4gICAgICBpZiAoZW1iZWRkZWRBcnJheSA9PT0gdW5kZWZpbmVkKSB7XG4gICAgICAgIGVtYmVkZGVkQXJyYXkgPSBuZXcgKGNyZWF0ZU5hbWVkQXJyYXlUeXBlKCdMRW1iZWRkZWRWaWV3JyArIG5hbWVTdWZmaXgobmFtZSkpKSgpO1xuICAgICAgICBMVklFV19FTUJFRERFRF9DQUNIRS5zZXQobmFtZSwgZW1iZWRkZWRBcnJheSk7XG4gICAgICB9XG4gICAgICByZXR1cm4gZW1iZWRkZWRBcnJheTtcbiAgfVxuICB0aHJvdyBuZXcgRXJyb3IoJ3VucmVhY2hhYmxlIGNvZGUnKTtcbn1cblxuZnVuY3Rpb24gbmFtZVN1ZmZpeCh0ZXh0OiBzdHJpbmcgfCBudWxsIHwgdW5kZWZpbmVkKTogc3RyaW5nIHtcbiAgaWYgKHRleHQgPT0gbnVsbCkgcmV0dXJuICcnO1xuICBjb25zdCBpbmRleCA9IHRleHQubGFzdEluZGV4T2YoJ19UZW1wbGF0ZScpO1xuICByZXR1cm4gJ18nICsgKGluZGV4ID09PSAtMSA/IHRleHQgOiB0ZXh0LnN1YnN0cigwLCBpbmRleCkpO1xufVxuXG4vKipcbiAqIFRoaXMgY2xhc3MgaXMgYSBkZWJ1ZyB2ZXJzaW9uIG9mIE9iamVjdCBsaXRlcmFsIHNvIHRoYXQgd2UgY2FuIGhhdmUgY29uc3RydWN0b3IgbmFtZSBzaG93IHVwXG4gKiBpblxuICogZGVidWcgdG9vbHMgaW4gbmdEZXZNb2RlLlxuICovXG5leHBvcnQgY29uc3QgVFZpZXdDb25zdHJ1Y3RvciA9IGNsYXNzIFRWaWV3IGltcGxlbWVudHMgSVRWaWV3IHtcbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgdHlwZTogVFZpZXdUeXBlLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBpZDogbnVtYmVyLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIGJsdWVwcmludDogTFZpZXcsICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgdGVtcGxhdGU6IENvbXBvbmVudFRlbXBsYXRlPHt9PnxudWxsLCAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBxdWVyaWVzOiBUUXVlcmllc3xudWxsLCAgICAgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIHZpZXdRdWVyeTogVmlld1F1ZXJpZXNGdW5jdGlvbjx7fT58bnVsbCwgICAgICAgIC8vXG4gICAgICBwdWJsaWMgbm9kZTogVFZpZXdOb2RlfFRFbGVtZW50Tm9kZXxudWxsLCAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBkYXRhOiBURGF0YSwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIGJpbmRpbmdTdGFydEluZGV4OiBudW1iZXIsICAgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgZXhwYW5kb1N0YXJ0SW5kZXg6IG51bWJlciwgICAgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBleHBhbmRvSW5zdHJ1Y3Rpb25zOiBFeHBhbmRvSW5zdHJ1Y3Rpb25zfG51bGwsICAvL1xuICAgICAgcHVibGljIGZpcnN0Q3JlYXRlUGFzczogYm9vbGVhbiwgICAgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgZmlyc3RVcGRhdGVQYXNzOiBib29sZWFuLCAgICAgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBzdGF0aWNWaWV3UXVlcmllczogYm9vbGVhbiwgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIHN0YXRpY0NvbnRlbnRRdWVyaWVzOiBib29sZWFuLCAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgcHJlT3JkZXJIb29rczogSG9va0RhdGF8bnVsbCwgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBwcmVPcmRlckNoZWNrSG9va3M6IEhvb2tEYXRhfG51bGwsICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIGNvbnRlbnRIb29rczogSG9va0RhdGF8bnVsbCwgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgY29udGVudENoZWNrSG9va3M6IEhvb2tEYXRhfG51bGwsICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyB2aWV3SG9va3M6IEhvb2tEYXRhfG51bGwsICAgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIHZpZXdDaGVja0hvb2tzOiBIb29rRGF0YXxudWxsLCAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgZGVzdHJveUhvb2tzOiBIb29rRGF0YXxudWxsLCAgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBjbGVhbnVwOiBhbnlbXXxudWxsLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIGNvbnRlbnRRdWVyaWVzOiBudW1iZXJbXXxudWxsLCAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgY29tcG9uZW50czogbnVtYmVyW118bnVsbCwgICAgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBkaXJlY3RpdmVSZWdpc3RyeTogRGlyZWN0aXZlRGVmTGlzdHxudWxsLCAgICAgICAvL1xuICAgICAgcHVibGljIHBpcGVSZWdpc3RyeTogUGlwZURlZkxpc3R8bnVsbCwgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgZmlyc3RDaGlsZDogSVROb2RlfG51bGwsICAgICAgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBzY2hlbWFzOiBTY2hlbWFNZXRhZGF0YVtdfG51bGwsICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIGNvbnN0czogVENvbnN0YW50c3xudWxsLCAgICAgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICApIHt9XG5cbiAgZ2V0IHRlbXBsYXRlXygpOiBzdHJpbmcge1xuICAgIGNvbnN0IGJ1Zjogc3RyaW5nW10gPSBbXTtcbiAgICBwcm9jZXNzVE5vZGVDaGlsZHJlbih0aGlzLmZpcnN0Q2hpbGQsIGJ1Zik7XG4gICAgcmV0dXJuIGJ1Zi5qb2luKCcnKTtcbiAgfVxufTtcblxuY2xhc3MgVE5vZGUgaW1wbGVtZW50cyBJVE5vZGUge1xuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyB0Vmlld186IFRWaWV3LCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIHR5cGU6IFROb2RlVHlwZSwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgaW5kZXg6IG51bWJlciwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBpbmplY3RvckluZGV4OiBudW1iZXIsICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIGRpcmVjdGl2ZVN0YXJ0OiBudW1iZXIsICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgZGlyZWN0aXZlRW5kOiBudW1iZXIsICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBkaXJlY3RpdmVTdHlsaW5nTGFzdDogbnVtYmVyLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIHByb3BlcnR5QmluZGluZ3M6IG51bWJlcltdfG51bGwsICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgZmxhZ3M6IFROb2RlRmxhZ3MsICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBwcm92aWRlckluZGV4ZXM6IFROb2RlUHJvdmlkZXJJbmRleGVzLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIHRhZ05hbWU6IHN0cmluZ3xudWxsLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgYXR0cnM6IChzdHJpbmd8QXR0cmlidXRlTWFya2VyfChzdHJpbmd8U2VsZWN0b3JGbGFncylbXSlbXXxudWxsLCAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBtZXJnZWRBdHRyczogKHN0cmluZ3xBdHRyaWJ1dGVNYXJrZXJ8KHN0cmluZ3xTZWxlY3RvckZsYWdzKVtdKVtdfG51bGwsICAvL1xuICAgICAgcHVibGljIGxvY2FsTmFtZXM6IChzdHJpbmd8bnVtYmVyKVtdfG51bGwsICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgaW5pdGlhbElucHV0czogKHN0cmluZ1tdfG51bGwpW118bnVsbHx1bmRlZmluZWQsICAgICAgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBpbnB1dHM6IFByb3BlcnR5QWxpYXNlc3xudWxsLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIG91dHB1dHM6IFByb3BlcnR5QWxpYXNlc3xudWxsLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgdFZpZXdzOiBJVFZpZXd8SVRWaWV3W118bnVsbCwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBuZXh0OiBJVE5vZGV8bnVsbCwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIHByb2plY3Rpb25OZXh0OiBJVE5vZGV8bnVsbCwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgY2hpbGQ6IElUTm9kZXxudWxsLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBwYXJlbnQ6IFRFbGVtZW50Tm9kZXxUQ29udGFpbmVyTm9kZXxudWxsLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIHByb2plY3Rpb246IG51bWJlcnwoSVROb2RlfFJOb2RlW10pW118bnVsbCwgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgc3R5bGVzOiBzdHJpbmd8bnVsbCwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyByZXNpZHVhbFN0eWxlczogS2V5VmFsdWVBcnJheTxhbnk+fHVuZGVmaW5lZHxudWxsLCAgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIGNsYXNzZXM6IHN0cmluZ3xudWxsLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICBwdWJsaWMgcmVzaWR1YWxDbGFzc2VzOiBLZXlWYWx1ZUFycmF5PGFueT58dW5kZWZpbmVkfG51bGwsICAgICAgICAgICAgICAgICAgICAgLy9cbiAgICAgIHB1YmxpYyBjbGFzc0JpbmRpbmdzOiBUU3R5bGluZ1JhbmdlLCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvL1xuICAgICAgcHVibGljIHN0eWxlQmluZGluZ3M6IFRTdHlsaW5nUmFuZ2UsICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vXG4gICAgICApIHt9XG5cbiAgZ2V0IHR5cGVfKCk6IHN0cmluZyB7XG4gICAgc3dpdGNoICh0aGlzLnR5cGUpIHtcbiAgICAgIGNhc2UgVE5vZGVUeXBlLkNvbnRhaW5lcjpcbiAgICAgICAgcmV0dXJuICdUTm9kZVR5cGUuQ29udGFpbmVyJztcbiAgICAgIGNhc2UgVE5vZGVUeXBlLkVsZW1lbnQ6XG4gICAgICAgIHJldHVybiAnVE5vZGVUeXBlLkVsZW1lbnQnO1xuICAgICAgY2FzZSBUTm9kZVR5cGUuRWxlbWVudENvbnRhaW5lcjpcbiAgICAgICAgcmV0dXJuICdUTm9kZVR5cGUuRWxlbWVudENvbnRhaW5lcic7XG4gICAgICBjYXNlIFROb2RlVHlwZS5JY3VDb250YWluZXI6XG4gICAgICAgIHJldHVybiAnVE5vZGVUeXBlLkljdUNvbnRhaW5lcic7XG4gICAgICBjYXNlIFROb2RlVHlwZS5Qcm9qZWN0aW9uOlxuICAgICAgICByZXR1cm4gJ1ROb2RlVHlwZS5Qcm9qZWN0aW9uJztcbiAgICAgIGNhc2UgVE5vZGVUeXBlLlZpZXc6XG4gICAgICAgIHJldHVybiAnVE5vZGVUeXBlLlZpZXcnO1xuICAgICAgZGVmYXVsdDpcbiAgICAgICAgcmV0dXJuICdUTm9kZVR5cGUuPz8/JztcbiAgICB9XG4gIH1cblxuICBnZXQgZmxhZ3NfKCk6IHN0cmluZyB7XG4gICAgY29uc3QgZmxhZ3M6IHN0cmluZ1tdID0gW107XG4gICAgaWYgKHRoaXMuZmxhZ3MgJiBUTm9kZUZsYWdzLmhhc0NsYXNzSW5wdXQpIGZsYWdzLnB1c2goJ1ROb2RlRmxhZ3MuaGFzQ2xhc3NJbnB1dCcpO1xuICAgIGlmICh0aGlzLmZsYWdzICYgVE5vZGVGbGFncy5oYXNDb250ZW50UXVlcnkpIGZsYWdzLnB1c2goJ1ROb2RlRmxhZ3MuaGFzQ29udGVudFF1ZXJ5Jyk7XG4gICAgaWYgKHRoaXMuZmxhZ3MgJiBUTm9kZUZsYWdzLmhhc1N0eWxlSW5wdXQpIGZsYWdzLnB1c2goJ1ROb2RlRmxhZ3MuaGFzU3R5bGVJbnB1dCcpO1xuICAgIGlmICh0aGlzLmZsYWdzICYgVE5vZGVGbGFncy5oYXNIb3N0QmluZGluZ3MpIGZsYWdzLnB1c2goJ1ROb2RlRmxhZ3MuaGFzSG9zdEJpbmRpbmdzJyk7XG4gICAgaWYgKHRoaXMuZmxhZ3MgJiBUTm9kZUZsYWdzLmlzQ29tcG9uZW50SG9zdCkgZmxhZ3MucHVzaCgnVE5vZGVGbGFncy5pc0NvbXBvbmVudEhvc3QnKTtcbiAgICBpZiAodGhpcy5mbGFncyAmIFROb2RlRmxhZ3MuaXNEaXJlY3RpdmVIb3N0KSBmbGFncy5wdXNoKCdUTm9kZUZsYWdzLmlzRGlyZWN0aXZlSG9zdCcpO1xuICAgIGlmICh0aGlzLmZsYWdzICYgVE5vZGVGbGFncy5pc0RldGFjaGVkKSBmbGFncy5wdXNoKCdUTm9kZUZsYWdzLmlzRGV0YWNoZWQnKTtcbiAgICBpZiAodGhpcy5mbGFncyAmIFROb2RlRmxhZ3MuaXNQcm9qZWN0ZWQpIGZsYWdzLnB1c2goJ1ROb2RlRmxhZ3MuaXNQcm9qZWN0ZWQnKTtcbiAgICByZXR1cm4gZmxhZ3Muam9pbignfCcpO1xuICB9XG5cbiAgZ2V0IHRlbXBsYXRlXygpOiBzdHJpbmcge1xuICAgIGNvbnN0IGJ1Zjogc3RyaW5nW10gPSBbXTtcbiAgICBidWYucHVzaCgnPCcsIHRoaXMudGFnTmFtZSB8fCB0aGlzLnR5cGVfKTtcbiAgICBpZiAodGhpcy5hdHRycykge1xuICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCB0aGlzLmF0dHJzLmxlbmd0aDspIHtcbiAgICAgICAgY29uc3QgYXR0ck5hbWUgPSB0aGlzLmF0dHJzW2krK107XG4gICAgICAgIGlmICh0eXBlb2YgYXR0ck5hbWUgPT0gJ251bWJlcicpIHtcbiAgICAgICAgICBicmVhaztcbiAgICAgICAgfVxuICAgICAgICBjb25zdCBhdHRyVmFsdWUgPSB0aGlzLmF0dHJzW2krK107XG4gICAgICAgIGJ1Zi5wdXNoKCcgJywgYXR0ck5hbWUgYXMgc3RyaW5nLCAnPVwiJywgYXR0clZhbHVlIGFzIHN0cmluZywgJ1wiJyk7XG4gICAgICB9XG4gICAgfVxuICAgIGJ1Zi5wdXNoKCc+Jyk7XG4gICAgcHJvY2Vzc1ROb2RlQ2hpbGRyZW4odGhpcy5jaGlsZCwgYnVmKTtcbiAgICBidWYucHVzaCgnPC8nLCB0aGlzLnRhZ05hbWUgfHwgdGhpcy50eXBlXywgJz4nKTtcbiAgICByZXR1cm4gYnVmLmpvaW4oJycpO1xuICB9XG5cbiAgZ2V0IHN0eWxlQmluZGluZ3NfKCk6IERlYnVnU3R5bGVCaW5kaW5ncyB7IHJldHVybiB0b0RlYnVnU3R5bGVCaW5kaW5nKHRoaXMsIGZhbHNlKTsgfVxuICBnZXQgY2xhc3NCaW5kaW5nc18oKTogRGVidWdTdHlsZUJpbmRpbmdzIHsgcmV0dXJuIHRvRGVidWdTdHlsZUJpbmRpbmcodGhpcywgdHJ1ZSk7IH1cbn1cbmV4cG9ydCBjb25zdCBUTm9kZURlYnVnID0gVE5vZGU7XG5leHBvcnQgdHlwZSBUTm9kZURlYnVnID0gVE5vZGU7XG5cbmV4cG9ydCBpbnRlcmZhY2UgRGVidWdTdHlsZUJpbmRpbmdzIGV4dGVuZHNcbiAgICBBcnJheTxLZXlWYWx1ZUFycmF5PGFueT58RGVidWdTdHlsZUJpbmRpbmd8c3RyaW5nfG51bGw+IHt9XG5leHBvcnQgaW50ZXJmYWNlIERlYnVnU3R5bGVCaW5kaW5nIHtcbiAga2V5OiBUU3R5bGluZ0tleTtcbiAgaW5kZXg6IG51bWJlcjtcbiAgaXNUZW1wbGF0ZTogYm9vbGVhbjtcbiAgcHJldkR1cGxpY2F0ZTogYm9vbGVhbjtcbiAgbmV4dER1cGxpY2F0ZTogYm9vbGVhbjtcbiAgcHJldkluZGV4OiBudW1iZXI7XG4gIG5leHRJbmRleDogbnVtYmVyO1xufVxuXG5mdW5jdGlvbiB0b0RlYnVnU3R5bGVCaW5kaW5nKHROb2RlOiBUTm9kZSwgaXNDbGFzc0Jhc2VkOiBib29sZWFuKTogRGVidWdTdHlsZUJpbmRpbmdzIHtcbiAgY29uc3QgdERhdGEgPSB0Tm9kZS50Vmlld18uZGF0YTtcbiAgY29uc3QgYmluZGluZ3M6IERlYnVnU3R5bGVCaW5kaW5ncyA9IFtdIGFzIGFueTtcbiAgY29uc3QgcmFuZ2UgPSBpc0NsYXNzQmFzZWQgPyB0Tm9kZS5jbGFzc0JpbmRpbmdzIDogdE5vZGUuc3R5bGVCaW5kaW5ncztcbiAgY29uc3QgcHJldiA9IGdldFRTdHlsaW5nUmFuZ2VQcmV2KHJhbmdlKTtcbiAgY29uc3QgbmV4dCA9IGdldFRTdHlsaW5nUmFuZ2VOZXh0KHJhbmdlKTtcbiAgbGV0IGlzVGVtcGxhdGUgPSBuZXh0ICE9PSAwO1xuICBsZXQgY3Vyc29yID0gaXNUZW1wbGF0ZSA/IG5leHQgOiBwcmV2O1xuICB3aGlsZSAoY3Vyc29yICE9PSAwKSB7XG4gICAgY29uc3QgaXRlbUtleSA9IHREYXRhW2N1cnNvcl0gYXMgVFN0eWxpbmdLZXk7XG4gICAgY29uc3QgaXRlbVJhbmdlID0gdERhdGFbY3Vyc29yICsgMV0gYXMgVFN0eWxpbmdSYW5nZTtcbiAgICBiaW5kaW5ncy51bnNoaWZ0KHtcbiAgICAgIGtleTogaXRlbUtleSxcbiAgICAgIGluZGV4OiBjdXJzb3IsXG4gICAgICBpc1RlbXBsYXRlOiBpc1RlbXBsYXRlLFxuICAgICAgcHJldkR1cGxpY2F0ZTogZ2V0VFN0eWxpbmdSYW5nZVByZXZEdXBsaWNhdGUoaXRlbVJhbmdlKSxcbiAgICAgIG5leHREdXBsaWNhdGU6IGdldFRTdHlsaW5nUmFuZ2VOZXh0RHVwbGljYXRlKGl0ZW1SYW5nZSksXG4gICAgICBuZXh0SW5kZXg6IGdldFRTdHlsaW5nUmFuZ2VOZXh0KGl0ZW1SYW5nZSksXG4gICAgICBwcmV2SW5kZXg6IGdldFRTdHlsaW5nUmFuZ2VQcmV2KGl0ZW1SYW5nZSksXG4gICAgfSk7XG4gICAgaWYgKGN1cnNvciA9PT0gcHJldikgaXNUZW1wbGF0ZSA9IGZhbHNlO1xuICAgIGN1cnNvciA9IGdldFRTdHlsaW5nUmFuZ2VQcmV2KGl0ZW1SYW5nZSk7XG4gIH1cbiAgYmluZGluZ3MucHVzaCgoaXNDbGFzc0Jhc2VkID8gdE5vZGUucmVzaWR1YWxDbGFzc2VzIDogdE5vZGUucmVzaWR1YWxTdHlsZXMpIHx8IG51bGwpO1xuICByZXR1cm4gYmluZGluZ3M7XG59XG5cbmZ1bmN0aW9uIHByb2Nlc3NUTm9kZUNoaWxkcmVuKHROb2RlOiBJVE5vZGUgfCBudWxsLCBidWY6IHN0cmluZ1tdKSB7XG4gIHdoaWxlICh0Tm9kZSkge1xuICAgIGJ1Zi5wdXNoKCh0Tm9kZSBhcyBhbnkgYXN7dGVtcGxhdGVfOiBzdHJpbmd9KS50ZW1wbGF0ZV8pO1xuICAgIHROb2RlID0gdE5vZGUubmV4dDtcbiAgfVxufVxuXG5jb25zdCBUVmlld0RhdGEgPSBOR19ERVZfTU9ERSAmJiBjcmVhdGVOYW1lZEFycmF5VHlwZSgnVFZpZXdEYXRhJykgfHwgbnVsbCAhYXMgQXJyYXlDb25zdHJ1Y3RvcjtcbmxldCBUVklFV0RBVEFfRU1QVFk6XG4gICAgdW5rbm93bltdOyAgLy8gY2FuJ3QgaW5pdGlhbGl6ZSBoZXJlIG9yIGl0IHdpbGwgbm90IGJlIHRyZWUgc2hha2VuLCBiZWNhdXNlIGBMVmlld2BcbiAgICAgICAgICAgICAgICAvLyBjb25zdHJ1Y3RvciBjb3VsZCBoYXZlIHNpZGUtZWZmZWN0cy5cbi8qKlxuICogVGhpcyBmdW5jdGlvbiBjbG9uZXMgYSBibHVlcHJpbnQgYW5kIGNyZWF0ZXMgVERhdGEuXG4gKlxuICogU2ltcGxlIHNsaWNlIHdpbGwga2VlcCB0aGUgc2FtZSB0eXBlLCBhbmQgd2UgbmVlZCBpdCB0byBiZSBURGF0YVxuICovXG5leHBvcnQgZnVuY3Rpb24gY2xvbmVUb1RWaWV3RGF0YShsaXN0OiBhbnlbXSk6IFREYXRhIHtcbiAgaWYgKFRWSUVXREFUQV9FTVBUWSA9PT0gdW5kZWZpbmVkKSBUVklFV0RBVEFfRU1QVFkgPSBuZXcgVFZpZXdEYXRhKCk7XG4gIHJldHVybiBUVklFV0RBVEFfRU1QVFkuY29uY2F0KGxpc3QpIGFzIGFueTtcbn1cblxuZXhwb3J0IGNvbnN0IExWaWV3Qmx1ZXByaW50ID1cbiAgICBOR19ERVZfTU9ERSAmJiBjcmVhdGVOYW1lZEFycmF5VHlwZSgnTFZpZXdCbHVlcHJpbnQnKSB8fCBudWxsICFhcyBBcnJheUNvbnN0cnVjdG9yO1xuZXhwb3J0IGNvbnN0IE1hdGNoZXNBcnJheSA9XG4gICAgTkdfREVWX01PREUgJiYgY3JlYXRlTmFtZWRBcnJheVR5cGUoJ01hdGNoZXNBcnJheScpIHx8IG51bGwgIWFzIEFycmF5Q29uc3RydWN0b3I7XG5leHBvcnQgY29uc3QgVFZpZXdDb21wb25lbnRzID1cbiAgICBOR19ERVZfTU9ERSAmJiBjcmVhdGVOYW1lZEFycmF5VHlwZSgnVFZpZXdDb21wb25lbnRzJykgfHwgbnVsbCAhYXMgQXJyYXlDb25zdHJ1Y3RvcjtcbmV4cG9ydCBjb25zdCBUTm9kZUxvY2FsTmFtZXMgPVxuICAgIE5HX0RFVl9NT0RFICYmIGNyZWF0ZU5hbWVkQXJyYXlUeXBlKCdUTm9kZUxvY2FsTmFtZXMnKSB8fCBudWxsICFhcyBBcnJheUNvbnN0cnVjdG9yO1xuZXhwb3J0IGNvbnN0IFROb2RlSW5pdGlhbElucHV0cyA9XG4gICAgTkdfREVWX01PREUgJiYgY3JlYXRlTmFtZWRBcnJheVR5cGUoJ1ROb2RlSW5pdGlhbElucHV0cycpIHx8IG51bGwgIWFzIEFycmF5Q29uc3RydWN0b3I7XG5leHBvcnQgY29uc3QgVE5vZGVJbml0aWFsRGF0YSA9XG4gICAgTkdfREVWX01PREUgJiYgY3JlYXRlTmFtZWRBcnJheVR5cGUoJ1ROb2RlSW5pdGlhbERhdGEnKSB8fCBudWxsICFhcyBBcnJheUNvbnN0cnVjdG9yO1xuZXhwb3J0IGNvbnN0IExDbGVhbnVwID1cbiAgICBOR19ERVZfTU9ERSAmJiBjcmVhdGVOYW1lZEFycmF5VHlwZSgnTENsZWFudXAnKSB8fCBudWxsICFhcyBBcnJheUNvbnN0cnVjdG9yO1xuZXhwb3J0IGNvbnN0IFRDbGVhbnVwID1cbiAgICBOR19ERVZfTU9ERSAmJiBjcmVhdGVOYW1lZEFycmF5VHlwZSgnVENsZWFudXAnKSB8fCBudWxsICFhcyBBcnJheUNvbnN0cnVjdG9yO1xuXG5cblxuZXhwb3J0IGZ1bmN0aW9uIGF0dGFjaExWaWV3RGVidWcobFZpZXc6IExWaWV3KSB7XG4gIGF0dGFjaERlYnVnT2JqZWN0KGxWaWV3LCBuZXcgTFZpZXdEZWJ1ZyhsVmlldykpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gYXR0YWNoTENvbnRhaW5lckRlYnVnKGxDb250YWluZXI6IExDb250YWluZXIpIHtcbiAgYXR0YWNoRGVidWdPYmplY3QobENvbnRhaW5lciwgbmV3IExDb250YWluZXJEZWJ1ZyhsQ29udGFpbmVyKSk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiB0b0RlYnVnKG9iajogTFZpZXcpOiBMVmlld0RlYnVnO1xuZXhwb3J0IGZ1bmN0aW9uIHRvRGVidWcob2JqOiBMVmlldyB8IG51bGwpOiBMVmlld0RlYnVnfG51bGw7XG5leHBvcnQgZnVuY3Rpb24gdG9EZWJ1ZyhvYmo6IExWaWV3IHwgTENvbnRhaW5lciB8IG51bGwpOiBMVmlld0RlYnVnfExDb250YWluZXJEZWJ1Z3xudWxsO1xuZXhwb3J0IGZ1bmN0aW9uIHRvRGVidWcob2JqOiBhbnkpOiBhbnkge1xuICBpZiAob2JqKSB7XG4gICAgY29uc3QgZGVidWcgPSAob2JqIGFzIGFueSkuZGVidWc7XG4gICAgYXNzZXJ0RGVmaW5lZChkZWJ1ZywgJ09iamVjdCBkb2VzIG5vdCBoYXZlIGEgZGVidWcgcmVwcmVzZW50YXRpb24uJyk7XG4gICAgcmV0dXJuIGRlYnVnO1xuICB9IGVsc2Uge1xuICAgIHJldHVybiBvYmo7XG4gIH1cbn1cblxuLyoqXG4gKiBVc2UgdGhpcyBtZXRob2QgdG8gdW53cmFwIGEgbmF0aXZlIGVsZW1lbnQgaW4gYExWaWV3YCBhbmQgY29udmVydCBpdCBpbnRvIEhUTUwgZm9yIGVhc2llclxuICogcmVhZGluZy5cbiAqXG4gKiBAcGFyYW0gdmFsdWUgcG9zc2libHkgd3JhcHBlZCBuYXRpdmUgRE9NIG5vZGUuXG4gKiBAcGFyYW0gaW5jbHVkZUNoaWxkcmVuIElmIGB0cnVlYCB0aGVuIHRoZSBzZXJpYWxpemVkIEhUTUwgZm9ybSB3aWxsIGluY2x1ZGUgY2hpbGQgZWxlbWVudHNcbiAqIChzYW1lXG4gKiBhcyBgb3V0ZXJIVE1MYCkuIElmIGBmYWxzZWAgdGhlbiB0aGUgc2VyaWFsaXplZCBIVE1MIGZvcm0gd2lsbCBvbmx5IGNvbnRhaW4gdGhlIGVsZW1lbnRcbiAqIGl0c2VsZlxuICogKHdpbGwgbm90IHNlcmlhbGl6ZSBjaGlsZCBlbGVtZW50cykuXG4gKi9cbmZ1bmN0aW9uIHRvSHRtbCh2YWx1ZTogYW55LCBpbmNsdWRlQ2hpbGRyZW46IGJvb2xlYW4gPSBmYWxzZSk6IHN0cmluZ3xudWxsIHtcbiAgY29uc3Qgbm9kZTogSFRNTEVsZW1lbnR8bnVsbCA9IHVud3JhcFJOb2RlKHZhbHVlKSBhcyBhbnk7XG4gIGlmIChub2RlKSB7XG4gICAgY29uc3QgaXNUZXh0Tm9kZSA9IG5vZGUubm9kZVR5cGUgPT09IE5vZGUuVEVYVF9OT0RFO1xuICAgIGNvbnN0IG91dGVySFRNTCA9IChpc1RleHROb2RlID8gbm9kZS50ZXh0Q29udGVudCA6IG5vZGUub3V0ZXJIVE1MKSB8fCAnJztcbiAgICBpZiAoaW5jbHVkZUNoaWxkcmVuIHx8IGlzVGV4dE5vZGUpIHtcbiAgICAgIHJldHVybiBvdXRlckhUTUw7XG4gICAgfSBlbHNlIHtcbiAgICAgIGNvbnN0IGlubmVySFRNTCA9ICc+JyArIG5vZGUuaW5uZXJIVE1MICsgJzwnO1xuICAgICAgcmV0dXJuIChvdXRlckhUTUwuc3BsaXQoaW5uZXJIVE1MKVswXSkgKyAnPic7XG4gICAgfVxuICB9IGVsc2Uge1xuICAgIHJldHVybiBudWxsO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBMVmlld0RlYnVnIHtcbiAgY29uc3RydWN0b3IocHJpdmF0ZSByZWFkb25seSBfcmF3X2xWaWV3OiBMVmlldykge31cblxuICAvKipcbiAgICogRmxhZ3MgYXNzb2NpYXRlZCB3aXRoIHRoZSBgTFZpZXdgIHVucGFja2VkIGludG8gYSBtb3JlIHJlYWRhYmxlIHN0YXRlLlxuICAgKi9cbiAgZ2V0IGZsYWdzKCkge1xuICAgIGNvbnN0IGZsYWdzID0gdGhpcy5fcmF3X2xWaWV3W0ZMQUdTXTtcbiAgICByZXR1cm4ge1xuICAgICAgX19yYXdfX2ZsYWdzX186IGZsYWdzLFxuICAgICAgaW5pdFBoYXNlU3RhdGU6IGZsYWdzICYgTFZpZXdGbGFncy5Jbml0UGhhc2VTdGF0ZU1hc2ssXG4gICAgICBjcmVhdGlvbk1vZGU6ICEhKGZsYWdzICYgTFZpZXdGbGFncy5DcmVhdGlvbk1vZGUpLFxuICAgICAgZmlyc3RWaWV3UGFzczogISEoZmxhZ3MgJiBMVmlld0ZsYWdzLkZpcnN0TFZpZXdQYXNzKSxcbiAgICAgIGNoZWNrQWx3YXlzOiAhIShmbGFncyAmIExWaWV3RmxhZ3MuQ2hlY2tBbHdheXMpLFxuICAgICAgZGlydHk6ICEhKGZsYWdzICYgTFZpZXdGbGFncy5EaXJ0eSksXG4gICAgICBhdHRhY2hlZDogISEoZmxhZ3MgJiBMVmlld0ZsYWdzLkF0dGFjaGVkKSxcbiAgICAgIGRlc3Ryb3llZDogISEoZmxhZ3MgJiBMVmlld0ZsYWdzLkRlc3Ryb3llZCksXG4gICAgICBpc1Jvb3Q6ICEhKGZsYWdzICYgTFZpZXdGbGFncy5Jc1Jvb3QpLFxuICAgICAgaW5kZXhXaXRoaW5Jbml0UGhhc2U6IGZsYWdzID4+IExWaWV3RmxhZ3MuSW5kZXhXaXRoaW5Jbml0UGhhc2VTaGlmdCxcbiAgICB9O1xuICB9XG4gIGdldCBwYXJlbnQoKTogTFZpZXdEZWJ1Z3xMQ29udGFpbmVyRGVidWd8bnVsbCB7IHJldHVybiB0b0RlYnVnKHRoaXMuX3Jhd19sVmlld1tQQVJFTlRdKTsgfVxuICBnZXQgaG9zdCgpOiBzdHJpbmd8bnVsbCB7IHJldHVybiB0b0h0bWwodGhpcy5fcmF3X2xWaWV3W0hPU1RdLCB0cnVlKTsgfVxuICBnZXQgaHRtbCgpOiBzdHJpbmcgeyByZXR1cm4gKHRoaXMubm9kZXMgfHwgW10pLm1hcChub2RlID0+IHRvSHRtbChub2RlLm5hdGl2ZSwgdHJ1ZSkpLmpvaW4oJycpOyB9XG4gIGdldCBjb250ZXh0KCk6IHt9fG51bGwgeyByZXR1cm4gdGhpcy5fcmF3X2xWaWV3W0NPTlRFWFRdOyB9XG4gIC8qKlxuICAgKiBUaGUgdHJlZSBvZiBub2RlcyBhc3NvY2lhdGVkIHdpdGggdGhlIGN1cnJlbnQgYExWaWV3YC4gVGhlIG5vZGVzIGhhdmUgYmVlbiBub3JtYWxpemVkIGludG9cbiAgICogYVxuICAgKiB0cmVlIHN0cnVjdHVyZSB3aXRoIHJlbGV2YW50IGRldGFpbHMgcHVsbGVkIG91dCBmb3IgcmVhZGFiaWxpdHkuXG4gICAqL1xuICBnZXQgbm9kZXMoKTogRGVidWdOb2RlW118bnVsbCB7XG4gICAgY29uc3QgbFZpZXcgPSB0aGlzLl9yYXdfbFZpZXc7XG4gICAgY29uc3QgdE5vZGUgPSBsVmlld1tUVklFV10uZmlyc3RDaGlsZDtcbiAgICByZXR1cm4gdG9EZWJ1Z05vZGVzKHROb2RlLCBsVmlldyk7XG4gIH1cblxuICBnZXQgdFZpZXcoKSB7IHJldHVybiB0aGlzLl9yYXdfbFZpZXdbVFZJRVddOyB9XG4gIGdldCBjbGVhbnVwKCkgeyByZXR1cm4gdGhpcy5fcmF3X2xWaWV3W0NMRUFOVVBdOyB9XG4gIGdldCBpbmplY3RvcigpIHsgcmV0dXJuIHRoaXMuX3Jhd19sVmlld1tJTkpFQ1RPUl07IH1cbiAgZ2V0IHJlbmRlcmVyRmFjdG9yeSgpIHsgcmV0dXJuIHRoaXMuX3Jhd19sVmlld1tSRU5ERVJFUl9GQUNUT1JZXTsgfVxuICBnZXQgcmVuZGVyZXIoKSB7IHJldHVybiB0aGlzLl9yYXdfbFZpZXdbUkVOREVSRVJdOyB9XG4gIGdldCBzYW5pdGl6ZXIoKSB7IHJldHVybiB0aGlzLl9yYXdfbFZpZXdbU0FOSVRJWkVSXTsgfVxuICBnZXQgY2hpbGRIZWFkKCkgeyByZXR1cm4gdG9EZWJ1Zyh0aGlzLl9yYXdfbFZpZXdbQ0hJTERfSEVBRF0pOyB9XG4gIGdldCBuZXh0KCkgeyByZXR1cm4gdG9EZWJ1Zyh0aGlzLl9yYXdfbFZpZXdbTkVYVF0pOyB9XG4gIGdldCBjaGlsZFRhaWwoKSB7IHJldHVybiB0b0RlYnVnKHRoaXMuX3Jhd19sVmlld1tDSElMRF9UQUlMXSk7IH1cbiAgZ2V0IGRlY2xhcmF0aW9uVmlldygpIHsgcmV0dXJuIHRvRGVidWcodGhpcy5fcmF3X2xWaWV3W0RFQ0xBUkFUSU9OX1ZJRVddKTsgfVxuICBnZXQgcXVlcmllcygpIHsgcmV0dXJuIHRoaXMuX3Jhd19sVmlld1tRVUVSSUVTXTsgfVxuICBnZXQgdEhvc3QoKSB7IHJldHVybiB0aGlzLl9yYXdfbFZpZXdbVF9IT1NUXTsgfVxuXG4gIC8qKlxuICAgKiBOb3JtYWxpemVkIHZpZXcgb2YgY2hpbGQgdmlld3MgKGFuZCBjb250YWluZXJzKSBhdHRhY2hlZCBhdCB0aGlzIGxvY2F0aW9uLlxuICAgKi9cbiAgZ2V0IGNoaWxkVmlld3MoKTogQXJyYXk8TFZpZXdEZWJ1Z3xMQ29udGFpbmVyRGVidWc+IHtcbiAgICBjb25zdCBjaGlsZFZpZXdzOiBBcnJheTxMVmlld0RlYnVnfExDb250YWluZXJEZWJ1Zz4gPSBbXTtcbiAgICBsZXQgY2hpbGQgPSB0aGlzLmNoaWxkSGVhZDtcbiAgICB3aGlsZSAoY2hpbGQpIHtcbiAgICAgIGNoaWxkVmlld3MucHVzaChjaGlsZCk7XG4gICAgICBjaGlsZCA9IGNoaWxkLm5leHQ7XG4gICAgfVxuICAgIHJldHVybiBjaGlsZFZpZXdzO1xuICB9XG59XG5cbmV4cG9ydCBpbnRlcmZhY2UgRGVidWdOb2RlIHtcbiAgaHRtbDogc3RyaW5nfG51bGw7XG4gIG5hdGl2ZTogTm9kZTtcbiAgbm9kZXM6IERlYnVnTm9kZVtdfG51bGw7XG4gIGNvbXBvbmVudDogTFZpZXdEZWJ1Z3xudWxsO1xufVxuXG4vKipcbiAqIFR1cm5zIGEgZmxhdCBsaXN0IG9mIG5vZGVzIGludG8gYSB0cmVlIGJ5IHdhbGtpbmcgdGhlIGFzc29jaWF0ZWQgYFROb2RlYCB0cmVlLlxuICpcbiAqIEBwYXJhbSB0Tm9kZVxuICogQHBhcmFtIGxWaWV3XG4gKi9cbmV4cG9ydCBmdW5jdGlvbiB0b0RlYnVnTm9kZXModE5vZGU6IElUTm9kZSB8IG51bGwsIGxWaWV3OiBMVmlldyk6IERlYnVnTm9kZVtdfG51bGwge1xuICBpZiAodE5vZGUpIHtcbiAgICBjb25zdCBkZWJ1Z05vZGVzOiBEZWJ1Z05vZGVbXSA9IFtdO1xuICAgIGxldCB0Tm9kZUN1cnNvcjogSVROb2RlfG51bGwgPSB0Tm9kZTtcbiAgICB3aGlsZSAodE5vZGVDdXJzb3IpIHtcbiAgICAgIGRlYnVnTm9kZXMucHVzaChidWlsZERlYnVnTm9kZSh0Tm9kZUN1cnNvciwgbFZpZXcsIHROb2RlQ3Vyc29yLmluZGV4KSk7XG4gICAgICB0Tm9kZUN1cnNvciA9IHROb2RlQ3Vyc29yLm5leHQ7XG4gICAgfVxuICAgIHJldHVybiBkZWJ1Z05vZGVzO1xuICB9IGVsc2Uge1xuICAgIHJldHVybiBudWxsO1xuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBidWlsZERlYnVnTm9kZSh0Tm9kZTogSVROb2RlLCBsVmlldzogTFZpZXcsIG5vZGVJbmRleDogbnVtYmVyKTogRGVidWdOb2RlIHtcbiAgY29uc3QgcmF3VmFsdWUgPSBsVmlld1tub2RlSW5kZXhdO1xuICBjb25zdCBuYXRpdmUgPSB1bndyYXBSTm9kZShyYXdWYWx1ZSk7XG4gIGNvbnN0IGNvbXBvbmVudExWaWV3RGVidWcgPSB0b0RlYnVnKHJlYWRMVmlld1ZhbHVlKHJhd1ZhbHVlKSk7XG4gIHJldHVybiB7XG4gICAgaHRtbDogdG9IdG1sKG5hdGl2ZSksXG4gICAgbmF0aXZlOiBuYXRpdmUgYXMgYW55LFxuICAgIG5vZGVzOiB0b0RlYnVnTm9kZXModE5vZGUuY2hpbGQsIGxWaWV3KSxcbiAgICBjb21wb25lbnQ6IGNvbXBvbmVudExWaWV3RGVidWcsXG4gIH07XG59XG5cbmV4cG9ydCBjbGFzcyBMQ29udGFpbmVyRGVidWcge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIHJlYWRvbmx5IF9yYXdfbENvbnRhaW5lcjogTENvbnRhaW5lcikge31cblxuICBnZXQgYWN0aXZlSW5kZXgoKTogbnVtYmVyIHsgcmV0dXJuIGdldExDb250YWluZXJBY3RpdmVJbmRleCh0aGlzLl9yYXdfbENvbnRhaW5lcik7IH1cbiAgZ2V0IGhhc1RyYW5zcGxhbnRlZFZpZXdzKCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiAodGhpcy5fcmF3X2xDb250YWluZXJbQUNUSVZFX0lOREVYXSAmIEFjdGl2ZUluZGV4RmxhZy5IQVNfVFJBTlNQTEFOVEVEX1ZJRVdTKSA9PT1cbiAgICAgICAgQWN0aXZlSW5kZXhGbGFnLkhBU19UUkFOU1BMQU5URURfVklFV1M7XG4gIH1cbiAgZ2V0IHZpZXdzKCk6IExWaWV3RGVidWdbXSB7XG4gICAgcmV0dXJuIHRoaXMuX3Jhd19sQ29udGFpbmVyLnNsaWNlKENPTlRBSU5FUl9IRUFERVJfT0ZGU0VUKVxuICAgICAgICAubWFwKHRvRGVidWcgYXMobDogTFZpZXcpID0+IExWaWV3RGVidWcpO1xuICB9XG4gIGdldCBwYXJlbnQoKTogTFZpZXdEZWJ1Z3xMQ29udGFpbmVyRGVidWd8bnVsbCB7IHJldHVybiB0b0RlYnVnKHRoaXMuX3Jhd19sQ29udGFpbmVyW1BBUkVOVF0pOyB9XG4gIGdldCBtb3ZlZFZpZXdzKCk6IExWaWV3W118bnVsbCB7IHJldHVybiB0aGlzLl9yYXdfbENvbnRhaW5lcltNT1ZFRF9WSUVXU107IH1cbiAgZ2V0IGhvc3QoKTogUkVsZW1lbnR8UkNvbW1lbnR8TFZpZXcgeyByZXR1cm4gdGhpcy5fcmF3X2xDb250YWluZXJbSE9TVF07IH1cbiAgZ2V0IG5hdGl2ZSgpOiBSQ29tbWVudCB7IHJldHVybiB0aGlzLl9yYXdfbENvbnRhaW5lcltOQVRJVkVdOyB9XG4gIGdldCBuZXh0KCkgeyByZXR1cm4gdG9EZWJ1Zyh0aGlzLl9yYXdfbENvbnRhaW5lcltORVhUXSk7IH1cbn1cblxuLyoqXG4gKiBSZXR1cm4gYW4gYExWaWV3YCB2YWx1ZSBpZiBmb3VuZC5cbiAqXG4gKiBAcGFyYW0gdmFsdWUgYExWaWV3YCBpZiBhbnlcbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHJlYWRMVmlld1ZhbHVlKHZhbHVlOiBhbnkpOiBMVmlld3xudWxsIHtcbiAgd2hpbGUgKEFycmF5LmlzQXJyYXkodmFsdWUpKSB7XG4gICAgLy8gVGhpcyBjaGVjayBpcyBub3QgcXVpdGUgcmlnaHQsIGFzIGl0IGRvZXMgbm90IHRha2UgaW50byBhY2NvdW50IGBTdHlsaW5nQ29udGV4dGBcbiAgICAvLyBUaGlzIGlzIHdoeSBpdCBpcyBpbiBkZWJ1Zywgbm90IGluIHV0aWwudHNcbiAgICBpZiAodmFsdWUubGVuZ3RoID49IEhFQURFUl9PRkZTRVQgLSAxKSByZXR1cm4gdmFsdWUgYXMgTFZpZXc7XG4gICAgdmFsdWUgPSB2YWx1ZVtIT1NUXTtcbiAgfVxuICByZXR1cm4gbnVsbDtcbn1cblxuZXhwb3J0IGNsYXNzIEkxOE5EZWJ1Z0l0ZW0ge1xuICBba2V5OiBzdHJpbmddOiBhbnk7XG5cbiAgZ2V0IHROb2RlKCkgeyByZXR1cm4gZ2V0VE5vZGUodGhpcy5fbFZpZXdbVFZJRVddLCB0aGlzLm5vZGVJbmRleCk7IH1cblxuICBjb25zdHJ1Y3RvcihcbiAgICAgIHB1YmxpYyBfX3Jhd19vcENvZGU6IGFueSwgcHJpdmF0ZSBfbFZpZXc6IExWaWV3LCBwdWJsaWMgbm9kZUluZGV4OiBudW1iZXIsXG4gICAgICBwdWJsaWMgdHlwZTogc3RyaW5nKSB7fVxufVxuXG4vKipcbiAqIFR1cm5zIGEgbGlzdCBvZiBcIkNyZWF0ZVwiICYgXCJVcGRhdGVcIiBPcENvZGVzIGludG8gYSBodW1hbi1yZWFkYWJsZSBsaXN0IG9mIG9wZXJhdGlvbnMgZm9yXG4gKiBkZWJ1Z2dpbmcgcHVycG9zZXMuXG4gKiBAcGFyYW0gbXV0YXRlT3BDb2RlcyBtdXRhdGlvbiBvcENvZGVzIHRvIHJlYWRcbiAqIEBwYXJhbSB1cGRhdGVPcENvZGVzIHVwZGF0ZSBvcENvZGVzIHRvIHJlYWRcbiAqIEBwYXJhbSBpY3VzIGxpc3Qgb2YgSUNVIGV4cHJlc3Npb25zXG4gKiBAcGFyYW0gbFZpZXcgVGhlIHZpZXcgdGhlIG9wQ29kZXMgYXJlIGFjdGluZyBvblxuICovXG5leHBvcnQgZnVuY3Rpb24gYXR0YWNoSTE4bk9wQ29kZXNEZWJ1ZyhcbiAgICBtdXRhdGVPcENvZGVzOiBJMThuTXV0YXRlT3BDb2RlcywgdXBkYXRlT3BDb2RlczogSTE4blVwZGF0ZU9wQ29kZXMsIGljdXM6IFRJY3VbXSB8IG51bGwsXG4gICAgbFZpZXc6IExWaWV3KSB7XG4gIGF0dGFjaERlYnVnT2JqZWN0KG11dGF0ZU9wQ29kZXMsIG5ldyBJMThuTXV0YXRlT3BDb2Rlc0RlYnVnKG11dGF0ZU9wQ29kZXMsIGxWaWV3KSk7XG4gIGF0dGFjaERlYnVnT2JqZWN0KHVwZGF0ZU9wQ29kZXMsIG5ldyBJMThuVXBkYXRlT3BDb2Rlc0RlYnVnKHVwZGF0ZU9wQ29kZXMsIGljdXMsIGxWaWV3KSk7XG5cbiAgaWYgKGljdXMpIHtcbiAgICBpY3VzLmZvckVhY2goaWN1ID0+IHtcbiAgICAgIGljdS5jcmVhdGUuZm9yRWFjaChcbiAgICAgICAgICBpY3VDYXNlID0+IHsgYXR0YWNoRGVidWdPYmplY3QoaWN1Q2FzZSwgbmV3IEkxOG5NdXRhdGVPcENvZGVzRGVidWcoaWN1Q2FzZSwgbFZpZXcpKTsgfSk7XG4gICAgICBpY3UudXBkYXRlLmZvckVhY2goaWN1Q2FzZSA9PiB7XG4gICAgICAgIGF0dGFjaERlYnVnT2JqZWN0KGljdUNhc2UsIG5ldyBJMThuVXBkYXRlT3BDb2Rlc0RlYnVnKGljdUNhc2UsIGljdXMsIGxWaWV3KSk7XG4gICAgICB9KTtcbiAgICB9KTtcbiAgfVxufVxuXG5leHBvcnQgY2xhc3MgSTE4bk11dGF0ZU9wQ29kZXNEZWJ1ZyBpbXBsZW1lbnRzIEkxOG5PcENvZGVzRGVidWcge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIHJlYWRvbmx5IF9fcmF3X29wQ29kZXM6IEkxOG5NdXRhdGVPcENvZGVzLCBwcml2YXRlIHJlYWRvbmx5IF9fbFZpZXc6IExWaWV3KSB7fVxuXG4gIC8qKlxuICAgKiBBIGxpc3Qgb2Ygb3BlcmF0aW9uIGluZm9ybWF0aW9uIGFib3V0IGhvdyB0aGUgT3BDb2RlcyB3aWxsIGFjdCBvbiB0aGUgdmlldy5cbiAgICovXG4gIGdldCBvcGVyYXRpb25zKCkge1xuICAgIGNvbnN0IHtfX2xWaWV3LCBfX3Jhd19vcENvZGVzfSA9IHRoaXM7XG4gICAgY29uc3QgcmVzdWx0czogYW55W10gPSBbXTtcblxuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgX19yYXdfb3BDb2Rlcy5sZW5ndGg7IGkrKykge1xuICAgICAgY29uc3Qgb3BDb2RlID0gX19yYXdfb3BDb2Rlc1tpXTtcbiAgICAgIGxldCByZXN1bHQ6IGFueTtcbiAgICAgIGlmICh0eXBlb2Ygb3BDb2RlID09PSAnc3RyaW5nJykge1xuICAgICAgICByZXN1bHQgPSB7XG4gICAgICAgICAgX19yYXdfb3BDb2RlOiBvcENvZGUsXG4gICAgICAgICAgdHlwZTogJ0NyZWF0ZSBUZXh0IE5vZGUnLFxuICAgICAgICAgIG5vZGVJbmRleDogX19yYXdfb3BDb2Rlc1srK2ldLFxuICAgICAgICAgIHRleHQ6IG9wQ29kZSxcbiAgICAgICAgfTtcbiAgICAgIH1cblxuICAgICAgaWYgKHR5cGVvZiBvcENvZGUgPT09ICdudW1iZXInKSB7XG4gICAgICAgIHN3aXRjaCAob3BDb2RlICYgSTE4bk11dGF0ZU9wQ29kZS5NQVNLX09QQ09ERSkge1xuICAgICAgICAgIGNhc2UgSTE4bk11dGF0ZU9wQ29kZS5BcHBlbmRDaGlsZDpcbiAgICAgICAgICAgIGNvbnN0IGRlc3RpbmF0aW9uTm9kZUluZGV4ID0gb3BDb2RlID4+PiBJMThuTXV0YXRlT3BDb2RlLlNISUZUX1BBUkVOVDtcbiAgICAgICAgICAgIHJlc3VsdCA9IG5ldyBJMThORGVidWdJdGVtKG9wQ29kZSwgX19sVmlldywgZGVzdGluYXRpb25Ob2RlSW5kZXgsICdBcHBlbmRDaGlsZCcpO1xuICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgY2FzZSBJMThuTXV0YXRlT3BDb2RlLlNlbGVjdDpcbiAgICAgICAgICAgIGNvbnN0IG5vZGVJbmRleCA9IG9wQ29kZSA+Pj4gSTE4bk11dGF0ZU9wQ29kZS5TSElGVF9SRUY7XG4gICAgICAgICAgICByZXN1bHQgPSBuZXcgSTE4TkRlYnVnSXRlbShvcENvZGUsIF9fbFZpZXcsIG5vZGVJbmRleCwgJ1NlbGVjdCcpO1xuICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgY2FzZSBJMThuTXV0YXRlT3BDb2RlLkVsZW1lbnRFbmQ6XG4gICAgICAgICAgICBsZXQgZWxlbWVudEluZGV4ID0gb3BDb2RlID4+PiBJMThuTXV0YXRlT3BDb2RlLlNISUZUX1JFRjtcbiAgICAgICAgICAgIHJlc3VsdCA9IG5ldyBJMThORGVidWdJdGVtKG9wQ29kZSwgX19sVmlldywgZWxlbWVudEluZGV4LCAnRWxlbWVudEVuZCcpO1xuICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgY2FzZSBJMThuTXV0YXRlT3BDb2RlLkF0dHI6XG4gICAgICAgICAgICBlbGVtZW50SW5kZXggPSBvcENvZGUgPj4+IEkxOG5NdXRhdGVPcENvZGUuU0hJRlRfUkVGO1xuICAgICAgICAgICAgcmVzdWx0ID0gbmV3IEkxOE5EZWJ1Z0l0ZW0ob3BDb2RlLCBfX2xWaWV3LCBlbGVtZW50SW5kZXgsICdBdHRyJyk7XG4gICAgICAgICAgICByZXN1bHRbJ2F0dHJOYW1lJ10gPSBfX3Jhd19vcENvZGVzWysraV07XG4gICAgICAgICAgICByZXN1bHRbJ2F0dHJWYWx1ZSddID0gX19yYXdfb3BDb2Rlc1srK2ldO1xuICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICAgIH1cblxuICAgICAgaWYgKCFyZXN1bHQpIHtcbiAgICAgICAgc3dpdGNoIChvcENvZGUpIHtcbiAgICAgICAgICBjYXNlIENPTU1FTlRfTUFSS0VSOlxuICAgICAgICAgICAgcmVzdWx0ID0ge1xuICAgICAgICAgICAgICBfX3Jhd19vcENvZGU6IG9wQ29kZSxcbiAgICAgICAgICAgICAgdHlwZTogJ0NPTU1FTlRfTUFSS0VSJyxcbiAgICAgICAgICAgICAgY29tbWVudFZhbHVlOiBfX3Jhd19vcENvZGVzWysraV0sXG4gICAgICAgICAgICAgIG5vZGVJbmRleDogX19yYXdfb3BDb2Rlc1srK2ldLFxuICAgICAgICAgICAgfTtcbiAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgIGNhc2UgRUxFTUVOVF9NQVJLRVI6XG4gICAgICAgICAgICByZXN1bHQgPSB7XG4gICAgICAgICAgICAgIF9fcmF3X29wQ29kZTogb3BDb2RlLFxuICAgICAgICAgICAgICB0eXBlOiAnRUxFTUVOVF9NQVJLRVInLFxuICAgICAgICAgICAgfTtcbiAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICB9XG4gICAgICB9XG5cbiAgICAgIGlmICghcmVzdWx0KSB7XG4gICAgICAgIHJlc3VsdCA9IHtcbiAgICAgICAgICBfX3Jhd19vcENvZGU6IG9wQ29kZSxcbiAgICAgICAgICB0eXBlOiAnVW5rbm93biBPcCBDb2RlJyxcbiAgICAgICAgICBjb2RlOiBvcENvZGUsXG4gICAgICAgIH07XG4gICAgICB9XG5cbiAgICAgIHJlc3VsdHMucHVzaChyZXN1bHQpO1xuICAgIH1cblxuICAgIHJldHVybiByZXN1bHRzO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBJMThuVXBkYXRlT3BDb2Rlc0RlYnVnIGltcGxlbWVudHMgSTE4bk9wQ29kZXNEZWJ1ZyB7XG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSByZWFkb25seSBfX3Jhd19vcENvZGVzOiBJMThuVXBkYXRlT3BDb2RlcywgcHJpdmF0ZSByZWFkb25seSBpY3VzOiBUSWN1W118bnVsbCxcbiAgICAgIHByaXZhdGUgcmVhZG9ubHkgX19sVmlldzogTFZpZXcpIHt9XG5cbiAgLyoqXG4gICAqIEEgbGlzdCBvZiBvcGVyYXRpb24gaW5mb3JtYXRpb24gYWJvdXQgaG93IHRoZSBPcENvZGVzIHdpbGwgYWN0IG9uIHRoZSB2aWV3LlxuICAgKi9cbiAgZ2V0IG9wZXJhdGlvbnMoKSB7XG4gICAgY29uc3Qge19fbFZpZXcsIF9fcmF3X29wQ29kZXMsIGljdXN9ID0gdGhpcztcbiAgICBjb25zdCByZXN1bHRzOiBhbnlbXSA9IFtdO1xuXG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCBfX3Jhd19vcENvZGVzLmxlbmd0aDsgaSsrKSB7XG4gICAgICAvLyBiaXQgY29kZSB0byBjaGVjayBpZiB3ZSBzaG91bGQgYXBwbHkgdGhlIG5leHQgdXBkYXRlXG4gICAgICBjb25zdCBjaGVja0JpdCA9IF9fcmF3X29wQ29kZXNbaV0gYXMgbnVtYmVyO1xuICAgICAgLy8gTnVtYmVyIG9mIG9wQ29kZXMgdG8gc2tpcCB1bnRpbCBuZXh0IHNldCBvZiB1cGRhdGUgY29kZXNcbiAgICAgIGNvbnN0IHNraXBDb2RlcyA9IF9fcmF3X29wQ29kZXNbKytpXSBhcyBudW1iZXI7XG4gICAgICBsZXQgdmFsdWUgPSAnJztcbiAgICAgIGZvciAobGV0IGogPSBpICsgMTsgaiA8PSAoaSArIHNraXBDb2Rlcyk7IGorKykge1xuICAgICAgICBjb25zdCBvcENvZGUgPSBfX3Jhd19vcENvZGVzW2pdO1xuICAgICAgICBpZiAodHlwZW9mIG9wQ29kZSA9PT0gJ3N0cmluZycpIHtcbiAgICAgICAgICB2YWx1ZSArPSBvcENvZGU7XG4gICAgICAgIH0gZWxzZSBpZiAodHlwZW9mIG9wQ29kZSA9PSAnbnVtYmVyJykge1xuICAgICAgICAgIGlmIChvcENvZGUgPCAwKSB7XG4gICAgICAgICAgICAvLyBJdCdzIGEgYmluZGluZyBpbmRleCB3aG9zZSB2YWx1ZSBpcyBuZWdhdGl2ZVxuICAgICAgICAgICAgLy8gV2UgY2Fubm90IGtub3cgdGhlIHZhbHVlIG9mIHRoZSBiaW5kaW5nIHNvIHdlIG9ubHkgc2hvdyB0aGUgaW5kZXhcbiAgICAgICAgICAgIHZhbHVlICs9IGDvv70key1vcENvZGUgLSAxfe+/vWA7XG4gICAgICAgICAgfSBlbHNlIHtcbiAgICAgICAgICAgIGNvbnN0IG5vZGVJbmRleCA9IG9wQ29kZSA+Pj4gSTE4blVwZGF0ZU9wQ29kZS5TSElGVF9SRUY7XG4gICAgICAgICAgICBsZXQgdEljdUluZGV4OiBudW1iZXI7XG4gICAgICAgICAgICBsZXQgdEljdTogVEljdTtcbiAgICAgICAgICAgIHN3aXRjaCAob3BDb2RlICYgSTE4blVwZGF0ZU9wQ29kZS5NQVNLX09QQ09ERSkge1xuICAgICAgICAgICAgICBjYXNlIEkxOG5VcGRhdGVPcENvZGUuQXR0cjpcbiAgICAgICAgICAgICAgICBjb25zdCBhdHRyTmFtZSA9IF9fcmF3X29wQ29kZXNbKytqXSBhcyBzdHJpbmc7XG4gICAgICAgICAgICAgICAgY29uc3Qgc2FuaXRpemVGbiA9IF9fcmF3X29wQ29kZXNbKytqXTtcbiAgICAgICAgICAgICAgICByZXN1bHRzLnB1c2goe1xuICAgICAgICAgICAgICAgICAgX19yYXdfb3BDb2RlOiBvcENvZGUsXG4gICAgICAgICAgICAgICAgICBjaGVja0JpdCxcbiAgICAgICAgICAgICAgICAgIHR5cGU6ICdBdHRyJyxcbiAgICAgICAgICAgICAgICAgIGF0dHJWYWx1ZTogdmFsdWUsIGF0dHJOYW1lLCBzYW5pdGl6ZUZuLFxuICAgICAgICAgICAgICAgIH0pO1xuICAgICAgICAgICAgICAgIGJyZWFrO1xuICAgICAgICAgICAgICBjYXNlIEkxOG5VcGRhdGVPcENvZGUuVGV4dDpcbiAgICAgICAgICAgICAgICByZXN1bHRzLnB1c2goe1xuICAgICAgICAgICAgICAgICAgX19yYXdfb3BDb2RlOiBvcENvZGUsXG4gICAgICAgICAgICAgICAgICBjaGVja0JpdCxcbiAgICAgICAgICAgICAgICAgIHR5cGU6ICdUZXh0Jywgbm9kZUluZGV4LFxuICAgICAgICAgICAgICAgICAgdGV4dDogdmFsdWUsXG4gICAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICAgIGNhc2UgSTE4blVwZGF0ZU9wQ29kZS5JY3VTd2l0Y2g6XG4gICAgICAgICAgICAgICAgdEljdUluZGV4ID0gX19yYXdfb3BDb2Rlc1srK2pdIGFzIG51bWJlcjtcbiAgICAgICAgICAgICAgICB0SWN1ID0gaWN1cyAhW3RJY3VJbmRleF07XG4gICAgICAgICAgICAgICAgbGV0IHJlc3VsdCA9IG5ldyBJMThORGVidWdJdGVtKG9wQ29kZSwgX19sVmlldywgbm9kZUluZGV4LCAnSWN1U3dpdGNoJyk7XG4gICAgICAgICAgICAgICAgcmVzdWx0Wyd0SWN1SW5kZXgnXSA9IHRJY3VJbmRleDtcbiAgICAgICAgICAgICAgICByZXN1bHRbJ2NoZWNrQml0J10gPSBjaGVja0JpdDtcbiAgICAgICAgICAgICAgICByZXN1bHRbJ21haW5CaW5kaW5nJ10gPSB2YWx1ZTtcbiAgICAgICAgICAgICAgICByZXN1bHRbJ3RJY3UnXSA9IHRJY3U7XG4gICAgICAgICAgICAgICAgcmVzdWx0cy5wdXNoKHJlc3VsdCk7XG4gICAgICAgICAgICAgICAgYnJlYWs7XG4gICAgICAgICAgICAgIGNhc2UgSTE4blVwZGF0ZU9wQ29kZS5JY3VVcGRhdGU6XG4gICAgICAgICAgICAgICAgdEljdUluZGV4ID0gX19yYXdfb3BDb2Rlc1srK2pdIGFzIG51bWJlcjtcbiAgICAgICAgICAgICAgICB0SWN1ID0gaWN1cyAhW3RJY3VJbmRleF07XG4gICAgICAgICAgICAgICAgcmVzdWx0ID0gbmV3IEkxOE5EZWJ1Z0l0ZW0ob3BDb2RlLCBfX2xWaWV3LCBub2RlSW5kZXgsICdJY3VVcGRhdGUnKTtcbiAgICAgICAgICAgICAgICByZXN1bHRbJ3RJY3VJbmRleCddID0gdEljdUluZGV4O1xuICAgICAgICAgICAgICAgIHJlc3VsdFsnY2hlY2tCaXQnXSA9IGNoZWNrQml0O1xuICAgICAgICAgICAgICAgIHJlc3VsdFsndEljdSddID0gdEljdTtcbiAgICAgICAgICAgICAgICByZXN1bHRzLnB1c2gocmVzdWx0KTtcbiAgICAgICAgICAgICAgICBicmVhaztcbiAgICAgICAgICAgIH1cbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIGkgKz0gc2tpcENvZGVzO1xuICAgIH1cbiAgICByZXR1cm4gcmVzdWx0cztcbiAgfVxufVxuXG5leHBvcnQgaW50ZXJmYWNlIEkxOG5PcENvZGVzRGVidWcgeyBvcGVyYXRpb25zOiBhbnlbXTsgfVxuIl19