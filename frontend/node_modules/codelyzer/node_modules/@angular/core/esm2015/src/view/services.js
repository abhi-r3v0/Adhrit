/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/view/services.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { DebugElement__PRE_R3__, DebugEventListener, DebugNode__PRE_R3__, getDebugNode, indexDebugNode, removeDebugNodeFromIndex } from '../debug/debug_node';
import { getInjectableDef } from '../di/interface/defs';
import { ErrorHandler } from '../error_handler';
import { RendererFactory2 } from '../render/api';
import { Sanitizer } from '../sanitization/sanitizer';
import { isDevMode } from '../util/is_dev_mode';
import { normalizeDebugBindingName, normalizeDebugBindingValue } from '../util/ng_reflect';
import { isViewDebugError, viewDestroyedError, viewWrappedDebugError } from './errors';
import { resolveDep } from './provider';
import { dirtyParentQueries, getQueryValue } from './query';
import { createInjector, createNgModuleRef, getComponentViewDefinitionFactory } from './refs';
import { Services, asElementData, asPureExpressionData } from './types';
import { NOOP, isComponentView, renderNode, resolveDefinition, splitDepsDsl, tokenKey, viewParentEl } from './util';
import { checkAndUpdateNode, checkAndUpdateView, checkNoChangesNode, checkNoChangesView, createComponentView, createEmbeddedView, createRootView, destroyView } from './view';
/** @type {?} */
let initialized = false;
/**
 * @return {?}
 */
export function initServicesIfNeeded() {
    if (initialized) {
        return;
    }
    initialized = true;
    /** @type {?} */
    const services = isDevMode() ? createDebugServices() : createProdServices();
    Services.setCurrentNode = services.setCurrentNode;
    Services.createRootView = services.createRootView;
    Services.createEmbeddedView = services.createEmbeddedView;
    Services.createComponentView = services.createComponentView;
    Services.createNgModuleRef = services.createNgModuleRef;
    Services.overrideProvider = services.overrideProvider;
    Services.overrideComponentView = services.overrideComponentView;
    Services.clearOverrides = services.clearOverrides;
    Services.checkAndUpdateView = services.checkAndUpdateView;
    Services.checkNoChangesView = services.checkNoChangesView;
    Services.destroyView = services.destroyView;
    Services.resolveDep = resolveDep;
    Services.createDebugContext = services.createDebugContext;
    Services.handleEvent = services.handleEvent;
    Services.updateDirectives = services.updateDirectives;
    Services.updateRenderer = services.updateRenderer;
    Services.dirtyParentQueries = dirtyParentQueries;
}
/**
 * @return {?}
 */
function createProdServices() {
    return {
        setCurrentNode: (/**
         * @return {?}
         */
        () => { }),
        createRootView: createProdRootView,
        createEmbeddedView: createEmbeddedView,
        createComponentView: createComponentView,
        createNgModuleRef: createNgModuleRef,
        overrideProvider: NOOP,
        overrideComponentView: NOOP,
        clearOverrides: NOOP,
        checkAndUpdateView: checkAndUpdateView,
        checkNoChangesView: checkNoChangesView,
        destroyView: destroyView,
        createDebugContext: (/**
         * @param {?} view
         * @param {?} nodeIndex
         * @return {?}
         */
        (view, nodeIndex) => new DebugContext_(view, nodeIndex)),
        handleEvent: (/**
         * @param {?} view
         * @param {?} nodeIndex
         * @param {?} eventName
         * @param {?} event
         * @return {?}
         */
        (view, nodeIndex, eventName, event) => view.def.handleEvent(view, nodeIndex, eventName, event)),
        updateDirectives: (/**
         * @param {?} view
         * @param {?} checkType
         * @return {?}
         */
        (view, checkType) => view.def.updateDirectives(checkType === 0 /* CheckAndUpdate */ ? prodCheckAndUpdateNode :
            prodCheckNoChangesNode, view)),
        updateRenderer: (/**
         * @param {?} view
         * @param {?} checkType
         * @return {?}
         */
        (view, checkType) => view.def.updateRenderer(checkType === 0 /* CheckAndUpdate */ ? prodCheckAndUpdateNode :
            prodCheckNoChangesNode, view)),
    };
}
/**
 * @return {?}
 */
function createDebugServices() {
    return {
        setCurrentNode: debugSetCurrentNode,
        createRootView: debugCreateRootView,
        createEmbeddedView: debugCreateEmbeddedView,
        createComponentView: debugCreateComponentView,
        createNgModuleRef: debugCreateNgModuleRef,
        overrideProvider: debugOverrideProvider,
        overrideComponentView: debugOverrideComponentView,
        clearOverrides: debugClearOverrides,
        checkAndUpdateView: debugCheckAndUpdateView,
        checkNoChangesView: debugCheckNoChangesView,
        destroyView: debugDestroyView,
        createDebugContext: (/**
         * @param {?} view
         * @param {?} nodeIndex
         * @return {?}
         */
        (view, nodeIndex) => new DebugContext_(view, nodeIndex)),
        handleEvent: debugHandleEvent,
        updateDirectives: debugUpdateDirectives,
        updateRenderer: debugUpdateRenderer,
    };
}
/**
 * @param {?} elInjector
 * @param {?} projectableNodes
 * @param {?} rootSelectorOrNode
 * @param {?} def
 * @param {?} ngModule
 * @param {?=} context
 * @return {?}
 */
function createProdRootView(elInjector, projectableNodes, rootSelectorOrNode, def, ngModule, context) {
    /** @type {?} */
    const rendererFactory = ngModule.injector.get(RendererFactory2);
    return createRootView(createRootData(elInjector, ngModule, rendererFactory, projectableNodes, rootSelectorOrNode), def, context);
}
/**
 * @param {?} elInjector
 * @param {?} projectableNodes
 * @param {?} rootSelectorOrNode
 * @param {?} def
 * @param {?} ngModule
 * @param {?=} context
 * @return {?}
 */
function debugCreateRootView(elInjector, projectableNodes, rootSelectorOrNode, def, ngModule, context) {
    /** @type {?} */
    const rendererFactory = ngModule.injector.get(RendererFactory2);
    /** @type {?} */
    const root = createRootData(elInjector, ngModule, new DebugRendererFactory2(rendererFactory), projectableNodes, rootSelectorOrNode);
    /** @type {?} */
    const defWithOverride = applyProviderOverridesToView(def);
    return callWithDebugContext(DebugAction.create, createRootView, null, [root, defWithOverride, context]);
}
/**
 * @param {?} elInjector
 * @param {?} ngModule
 * @param {?} rendererFactory
 * @param {?} projectableNodes
 * @param {?} rootSelectorOrNode
 * @return {?}
 */
function createRootData(elInjector, ngModule, rendererFactory, projectableNodes, rootSelectorOrNode) {
    /** @type {?} */
    const sanitizer = ngModule.injector.get(Sanitizer);
    /** @type {?} */
    const errorHandler = ngModule.injector.get(ErrorHandler);
    /** @type {?} */
    const renderer = rendererFactory.createRenderer(null, null);
    return {
        ngModule,
        injector: elInjector, projectableNodes,
        selectorOrNode: rootSelectorOrNode, sanitizer, rendererFactory, renderer, errorHandler
    };
}
/**
 * @param {?} parentView
 * @param {?} anchorDef
 * @param {?} viewDef
 * @param {?=} context
 * @return {?}
 */
function debugCreateEmbeddedView(parentView, anchorDef, viewDef, context) {
    /** @type {?} */
    const defWithOverride = applyProviderOverridesToView(viewDef);
    return callWithDebugContext(DebugAction.create, createEmbeddedView, null, [parentView, anchorDef, defWithOverride, context]);
}
/**
 * @param {?} parentView
 * @param {?} nodeDef
 * @param {?} viewDef
 * @param {?} hostElement
 * @return {?}
 */
function debugCreateComponentView(parentView, nodeDef, viewDef, hostElement) {
    /** @type {?} */
    const overrideComponentView = viewDefOverrides.get((/** @type {?} */ ((/** @type {?} */ ((/** @type {?} */ (nodeDef.element)).componentProvider)).provider)).token);
    if (overrideComponentView) {
        viewDef = overrideComponentView;
    }
    else {
        viewDef = applyProviderOverridesToView(viewDef);
    }
    return callWithDebugContext(DebugAction.create, createComponentView, null, [parentView, nodeDef, viewDef, hostElement]);
}
/**
 * @param {?} moduleType
 * @param {?} parentInjector
 * @param {?} bootstrapComponents
 * @param {?} def
 * @return {?}
 */
function debugCreateNgModuleRef(moduleType, parentInjector, bootstrapComponents, def) {
    /** @type {?} */
    const defWithOverride = applyProviderOverridesToNgModule(def);
    return createNgModuleRef(moduleType, parentInjector, bootstrapComponents, defWithOverride);
}
/** @type {?} */
const providerOverrides = new Map();
/** @type {?} */
const providerOverridesWithScope = new Map();
/** @type {?} */
const viewDefOverrides = new Map();
/**
 * @param {?} override
 * @return {?}
 */
function debugOverrideProvider(override) {
    providerOverrides.set(override.token, override);
    /** @type {?} */
    let injectableDef;
    if (typeof override.token === 'function' && (injectableDef = getInjectableDef(override.token)) &&
        typeof injectableDef.providedIn === 'function') {
        providerOverridesWithScope.set((/** @type {?} */ (override.token)), override);
    }
}
/**
 * @param {?} comp
 * @param {?} compFactory
 * @return {?}
 */
function debugOverrideComponentView(comp, compFactory) {
    /** @type {?} */
    const hostViewDef = resolveDefinition(getComponentViewDefinitionFactory(compFactory));
    /** @type {?} */
    const compViewDef = resolveDefinition((/** @type {?} */ ((/** @type {?} */ (hostViewDef.nodes[0].element)).componentView)));
    viewDefOverrides.set(comp, compViewDef);
}
/**
 * @return {?}
 */
function debugClearOverrides() {
    providerOverrides.clear();
    providerOverridesWithScope.clear();
    viewDefOverrides.clear();
}
// Notes about the algorithm:
// 1) Locate the providers of an element and check if one of them was overwritten
// 2) Change the providers of that element
//
// We only create new datastructures if we need to, to keep perf impact
// reasonable.
/**
 * @param {?} def
 * @return {?}
 */
function applyProviderOverridesToView(def) {
    if (providerOverrides.size === 0) {
        return def;
    }
    /** @type {?} */
    const elementIndicesWithOverwrittenProviders = findElementIndicesWithOverwrittenProviders(def);
    if (elementIndicesWithOverwrittenProviders.length === 0) {
        return def;
    }
    // clone the whole view definition,
    // as it maintains references between the nodes that are hard to update.
    def = (/** @type {?} */ (def.factory))((/**
     * @return {?}
     */
    () => NOOP));
    for (let i = 0; i < elementIndicesWithOverwrittenProviders.length; i++) {
        applyProviderOverridesToElement(def, elementIndicesWithOverwrittenProviders[i]);
    }
    return def;
    /**
     * @param {?} def
     * @return {?}
     */
    function findElementIndicesWithOverwrittenProviders(def) {
        /** @type {?} */
        const elIndicesWithOverwrittenProviders = [];
        /** @type {?} */
        let lastElementDef = null;
        for (let i = 0; i < def.nodes.length; i++) {
            /** @type {?} */
            const nodeDef = def.nodes[i];
            if (nodeDef.flags & 1 /* TypeElement */) {
                lastElementDef = nodeDef;
            }
            if (lastElementDef && nodeDef.flags & 3840 /* CatProviderNoDirective */ &&
                providerOverrides.has((/** @type {?} */ (nodeDef.provider)).token)) {
                elIndicesWithOverwrittenProviders.push((/** @type {?} */ (lastElementDef)).nodeIndex);
                lastElementDef = null;
            }
        }
        return elIndicesWithOverwrittenProviders;
    }
    /**
     * @param {?} viewDef
     * @param {?} elIndex
     * @return {?}
     */
    function applyProviderOverridesToElement(viewDef, elIndex) {
        for (let i = elIndex + 1; i < viewDef.nodes.length; i++) {
            /** @type {?} */
            const nodeDef = viewDef.nodes[i];
            if (nodeDef.flags & 1 /* TypeElement */) {
                // stop at the next element
                return;
            }
            if (nodeDef.flags & 3840 /* CatProviderNoDirective */) {
                /** @type {?} */
                const provider = (/** @type {?} */ (nodeDef.provider));
                /** @type {?} */
                const override = providerOverrides.get(provider.token);
                if (override) {
                    nodeDef.flags = (nodeDef.flags & ~3840 /* CatProviderNoDirective */) | override.flags;
                    provider.deps = splitDepsDsl(override.deps);
                    provider.value = override.value;
                }
            }
        }
    }
}
// Notes about the algorithm:
// We only create new datastructures if we need to, to keep perf impact
// reasonable.
/**
 * @param {?} def
 * @return {?}
 */
function applyProviderOverridesToNgModule(def) {
    const { hasOverrides, hasDeprecatedOverrides } = calcHasOverrides(def);
    if (!hasOverrides) {
        return def;
    }
    // clone the whole view definition,
    // as it maintains references between the nodes that are hard to update.
    def = (/** @type {?} */ (def.factory))((/**
     * @return {?}
     */
    () => NOOP));
    applyProviderOverrides(def);
    return def;
    /**
     * @param {?} def
     * @return {?}
     */
    function calcHasOverrides(def) {
        /** @type {?} */
        let hasOverrides = false;
        /** @type {?} */
        let hasDeprecatedOverrides = false;
        if (providerOverrides.size === 0) {
            return { hasOverrides, hasDeprecatedOverrides };
        }
        def.providers.forEach((/**
         * @param {?} node
         * @return {?}
         */
        node => {
            /** @type {?} */
            const override = providerOverrides.get(node.token);
            if ((node.flags & 3840 /* CatProviderNoDirective */) && override) {
                hasOverrides = true;
                hasDeprecatedOverrides = hasDeprecatedOverrides || override.deprecatedBehavior;
            }
        }));
        def.modules.forEach((/**
         * @param {?} module
         * @return {?}
         */
        module => {
            providerOverridesWithScope.forEach((/**
             * @param {?} override
             * @param {?} token
             * @return {?}
             */
            (override, token) => {
                if ((/** @type {?} */ (getInjectableDef(token))).providedIn === module) {
                    hasOverrides = true;
                    hasDeprecatedOverrides = hasDeprecatedOverrides || override.deprecatedBehavior;
                }
            }));
        }));
        return { hasOverrides, hasDeprecatedOverrides };
    }
    /**
     * @param {?} def
     * @return {?}
     */
    function applyProviderOverrides(def) {
        for (let i = 0; i < def.providers.length; i++) {
            /** @type {?} */
            const provider = def.providers[i];
            if (hasDeprecatedOverrides) {
                // We had a bug where me made
                // all providers lazy. Keep this logic behind a flag
                // for migrating existing users.
                provider.flags |= 4096 /* LazyProvider */;
            }
            /** @type {?} */
            const override = providerOverrides.get(provider.token);
            if (override) {
                provider.flags = (provider.flags & ~3840 /* CatProviderNoDirective */) | override.flags;
                provider.deps = splitDepsDsl(override.deps);
                provider.value = override.value;
            }
        }
        if (providerOverridesWithScope.size > 0) {
            /** @type {?} */
            let moduleSet = new Set(def.modules);
            providerOverridesWithScope.forEach((/**
             * @param {?} override
             * @param {?} token
             * @return {?}
             */
            (override, token) => {
                if (moduleSet.has((/** @type {?} */ (getInjectableDef(token))).providedIn)) {
                    /** @type {?} */
                    let provider = {
                        token: token,
                        flags: override.flags | (hasDeprecatedOverrides ? 4096 /* LazyProvider */ : 0 /* None */),
                        deps: splitDepsDsl(override.deps),
                        value: override.value,
                        index: def.providers.length,
                    };
                    def.providers.push(provider);
                    def.providersByKey[tokenKey(token)] = provider;
                }
            }));
        }
    }
}
/**
 * @param {?} view
 * @param {?} checkIndex
 * @param {?} argStyle
 * @param {?=} v0
 * @param {?=} v1
 * @param {?=} v2
 * @param {?=} v3
 * @param {?=} v4
 * @param {?=} v5
 * @param {?=} v6
 * @param {?=} v7
 * @param {?=} v8
 * @param {?=} v9
 * @return {?}
 */
function prodCheckAndUpdateNode(view, checkIndex, argStyle, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9) {
    /** @type {?} */
    const nodeDef = view.def.nodes[checkIndex];
    checkAndUpdateNode(view, nodeDef, argStyle, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
    return (nodeDef.flags & 224 /* CatPureExpression */) ?
        asPureExpressionData(view, checkIndex).value :
        undefined;
}
/**
 * @param {?} view
 * @param {?} checkIndex
 * @param {?} argStyle
 * @param {?=} v0
 * @param {?=} v1
 * @param {?=} v2
 * @param {?=} v3
 * @param {?=} v4
 * @param {?=} v5
 * @param {?=} v6
 * @param {?=} v7
 * @param {?=} v8
 * @param {?=} v9
 * @return {?}
 */
function prodCheckNoChangesNode(view, checkIndex, argStyle, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9) {
    /** @type {?} */
    const nodeDef = view.def.nodes[checkIndex];
    checkNoChangesNode(view, nodeDef, argStyle, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
    return (nodeDef.flags & 224 /* CatPureExpression */) ?
        asPureExpressionData(view, checkIndex).value :
        undefined;
}
/**
 * @param {?} view
 * @return {?}
 */
function debugCheckAndUpdateView(view) {
    return callWithDebugContext(DebugAction.detectChanges, checkAndUpdateView, null, [view]);
}
/**
 * @param {?} view
 * @return {?}
 */
function debugCheckNoChangesView(view) {
    return callWithDebugContext(DebugAction.checkNoChanges, checkNoChangesView, null, [view]);
}
/**
 * @param {?} view
 * @return {?}
 */
function debugDestroyView(view) {
    return callWithDebugContext(DebugAction.destroy, destroyView, null, [view]);
}
/** @enum {number} */
const DebugAction = {
    create: 0,
    detectChanges: 1,
    checkNoChanges: 2,
    destroy: 3,
    handleEvent: 4,
};
DebugAction[DebugAction.create] = 'create';
DebugAction[DebugAction.detectChanges] = 'detectChanges';
DebugAction[DebugAction.checkNoChanges] = 'checkNoChanges';
DebugAction[DebugAction.destroy] = 'destroy';
DebugAction[DebugAction.handleEvent] = 'handleEvent';
/** @type {?} */
let _currentAction;
/** @type {?} */
let _currentView;
/** @type {?} */
let _currentNodeIndex;
/**
 * @param {?} view
 * @param {?} nodeIndex
 * @return {?}
 */
function debugSetCurrentNode(view, nodeIndex) {
    _currentView = view;
    _currentNodeIndex = nodeIndex;
}
/**
 * @param {?} view
 * @param {?} nodeIndex
 * @param {?} eventName
 * @param {?} event
 * @return {?}
 */
function debugHandleEvent(view, nodeIndex, eventName, event) {
    debugSetCurrentNode(view, nodeIndex);
    return callWithDebugContext(DebugAction.handleEvent, view.def.handleEvent, null, [view, nodeIndex, eventName, event]);
}
/**
 * @param {?} view
 * @param {?} checkType
 * @return {?}
 */
function debugUpdateDirectives(view, checkType) {
    if (view.state & 128 /* Destroyed */) {
        throw viewDestroyedError(DebugAction[_currentAction]);
    }
    debugSetCurrentNode(view, nextDirectiveWithBinding(view, 0));
    return view.def.updateDirectives(debugCheckDirectivesFn, view);
    /**
     * @param {?} view
     * @param {?} nodeIndex
     * @param {?} argStyle
     * @param {...?} values
     * @return {?}
     */
    function debugCheckDirectivesFn(view, nodeIndex, argStyle, ...values) {
        /** @type {?} */
        const nodeDef = view.def.nodes[nodeIndex];
        if (checkType === 0 /* CheckAndUpdate */) {
            debugCheckAndUpdateNode(view, nodeDef, argStyle, values);
        }
        else {
            debugCheckNoChangesNode(view, nodeDef, argStyle, values);
        }
        if (nodeDef.flags & 16384 /* TypeDirective */) {
            debugSetCurrentNode(view, nextDirectiveWithBinding(view, nodeIndex));
        }
        return (nodeDef.flags & 224 /* CatPureExpression */) ?
            asPureExpressionData(view, nodeDef.nodeIndex).value :
            undefined;
    }
}
/**
 * @param {?} view
 * @param {?} checkType
 * @return {?}
 */
function debugUpdateRenderer(view, checkType) {
    if (view.state & 128 /* Destroyed */) {
        throw viewDestroyedError(DebugAction[_currentAction]);
    }
    debugSetCurrentNode(view, nextRenderNodeWithBinding(view, 0));
    return view.def.updateRenderer(debugCheckRenderNodeFn, view);
    /**
     * @param {?} view
     * @param {?} nodeIndex
     * @param {?} argStyle
     * @param {...?} values
     * @return {?}
     */
    function debugCheckRenderNodeFn(view, nodeIndex, argStyle, ...values) {
        /** @type {?} */
        const nodeDef = view.def.nodes[nodeIndex];
        if (checkType === 0 /* CheckAndUpdate */) {
            debugCheckAndUpdateNode(view, nodeDef, argStyle, values);
        }
        else {
            debugCheckNoChangesNode(view, nodeDef, argStyle, values);
        }
        if (nodeDef.flags & 3 /* CatRenderNode */) {
            debugSetCurrentNode(view, nextRenderNodeWithBinding(view, nodeIndex));
        }
        return (nodeDef.flags & 224 /* CatPureExpression */) ?
            asPureExpressionData(view, nodeDef.nodeIndex).value :
            undefined;
    }
}
/**
 * @param {?} view
 * @param {?} nodeDef
 * @param {?} argStyle
 * @param {?} givenValues
 * @return {?}
 */
function debugCheckAndUpdateNode(view, nodeDef, argStyle, givenValues) {
    /** @type {?} */
    const changed = ((/** @type {?} */ (checkAndUpdateNode)))(view, nodeDef, argStyle, ...givenValues);
    if (changed) {
        /** @type {?} */
        const values = argStyle === 1 /* Dynamic */ ? givenValues[0] : givenValues;
        if (nodeDef.flags & 16384 /* TypeDirective */) {
            /** @type {?} */
            const bindingValues = {};
            for (let i = 0; i < nodeDef.bindings.length; i++) {
                /** @type {?} */
                const binding = nodeDef.bindings[i];
                /** @type {?} */
                const value = values[i];
                if (binding.flags & 8 /* TypeProperty */) {
                    bindingValues[normalizeDebugBindingName((/** @type {?} */ (binding.nonMinifiedName)))] =
                        normalizeDebugBindingValue(value);
                }
            }
            /** @type {?} */
            const elDef = (/** @type {?} */ (nodeDef.parent));
            /** @type {?} */
            const el = asElementData(view, elDef.nodeIndex).renderElement;
            if (!(/** @type {?} */ (elDef.element)).name) {
                // a comment.
                view.renderer.setValue(el, `bindings=${JSON.stringify(bindingValues, null, 2)}`);
            }
            else {
                // a regular element.
                for (let attr in bindingValues) {
                    /** @type {?} */
                    const value = bindingValues[attr];
                    if (value != null) {
                        view.renderer.setAttribute(el, attr, value);
                    }
                    else {
                        view.renderer.removeAttribute(el, attr);
                    }
                }
            }
        }
    }
}
/**
 * @param {?} view
 * @param {?} nodeDef
 * @param {?} argStyle
 * @param {?} values
 * @return {?}
 */
function debugCheckNoChangesNode(view, nodeDef, argStyle, values) {
    ((/** @type {?} */ (checkNoChangesNode)))(view, nodeDef, argStyle, ...values);
}
/**
 * @param {?} view
 * @param {?} nodeIndex
 * @return {?}
 */
function nextDirectiveWithBinding(view, nodeIndex) {
    for (let i = nodeIndex; i < view.def.nodes.length; i++) {
        /** @type {?} */
        const nodeDef = view.def.nodes[i];
        if (nodeDef.flags & 16384 /* TypeDirective */ && nodeDef.bindings && nodeDef.bindings.length) {
            return i;
        }
    }
    return null;
}
/**
 * @param {?} view
 * @param {?} nodeIndex
 * @return {?}
 */
function nextRenderNodeWithBinding(view, nodeIndex) {
    for (let i = nodeIndex; i < view.def.nodes.length; i++) {
        /** @type {?} */
        const nodeDef = view.def.nodes[i];
        if ((nodeDef.flags & 3 /* CatRenderNode */) && nodeDef.bindings && nodeDef.bindings.length) {
            return i;
        }
    }
    return null;
}
class DebugContext_ {
    /**
     * @param {?} view
     * @param {?} nodeIndex
     */
    constructor(view, nodeIndex) {
        this.view = view;
        this.nodeIndex = nodeIndex;
        if (nodeIndex == null) {
            this.nodeIndex = nodeIndex = 0;
        }
        this.nodeDef = view.def.nodes[nodeIndex];
        /** @type {?} */
        let elDef = this.nodeDef;
        /** @type {?} */
        let elView = view;
        while (elDef && (elDef.flags & 1 /* TypeElement */) === 0) {
            elDef = (/** @type {?} */ (elDef.parent));
        }
        if (!elDef) {
            while (!elDef && elView) {
                elDef = (/** @type {?} */ (viewParentEl(elView)));
                elView = (/** @type {?} */ (elView.parent));
            }
        }
        this.elDef = elDef;
        this.elView = elView;
    }
    /**
     * @private
     * @return {?}
     */
    get elOrCompView() {
        // Has to be done lazily as we use the DebugContext also during creation of elements...
        return asElementData(this.elView, this.elDef.nodeIndex).componentView || this.view;
    }
    /**
     * @return {?}
     */
    get injector() { return createInjector(this.elView, this.elDef); }
    /**
     * @return {?}
     */
    get component() { return this.elOrCompView.component; }
    /**
     * @return {?}
     */
    get context() { return this.elOrCompView.context; }
    /**
     * @return {?}
     */
    get providerTokens() {
        /** @type {?} */
        const tokens = [];
        if (this.elDef) {
            for (let i = this.elDef.nodeIndex + 1; i <= this.elDef.nodeIndex + this.elDef.childCount; i++) {
                /** @type {?} */
                const childDef = this.elView.def.nodes[i];
                if (childDef.flags & 20224 /* CatProvider */) {
                    tokens.push((/** @type {?} */ (childDef.provider)).token);
                }
                i += childDef.childCount;
            }
        }
        return tokens;
    }
    /**
     * @return {?}
     */
    get references() {
        /** @type {?} */
        const references = {};
        if (this.elDef) {
            collectReferences(this.elView, this.elDef, references);
            for (let i = this.elDef.nodeIndex + 1; i <= this.elDef.nodeIndex + this.elDef.childCount; i++) {
                /** @type {?} */
                const childDef = this.elView.def.nodes[i];
                if (childDef.flags & 20224 /* CatProvider */) {
                    collectReferences(this.elView, childDef, references);
                }
                i += childDef.childCount;
            }
        }
        return references;
    }
    /**
     * @return {?}
     */
    get componentRenderElement() {
        /** @type {?} */
        const elData = findHostElement(this.elOrCompView);
        return elData ? elData.renderElement : undefined;
    }
    /**
     * @return {?}
     */
    get renderNode() {
        return this.nodeDef.flags & 2 /* TypeText */ ? renderNode(this.view, this.nodeDef) :
            renderNode(this.elView, this.elDef);
    }
    /**
     * @param {?} console
     * @param {...?} values
     * @return {?}
     */
    logError(console, ...values) {
        /** @type {?} */
        let logViewDef;
        /** @type {?} */
        let logNodeIndex;
        if (this.nodeDef.flags & 2 /* TypeText */) {
            logViewDef = this.view.def;
            logNodeIndex = this.nodeDef.nodeIndex;
        }
        else {
            logViewDef = this.elView.def;
            logNodeIndex = this.elDef.nodeIndex;
        }
        // Note: we only generate a log function for text and element nodes
        // to make the generated code as small as possible.
        /** @type {?} */
        const renderNodeIndex = getRenderNodeIndex(logViewDef, logNodeIndex);
        /** @type {?} */
        let currRenderNodeIndex = -1;
        /** @type {?} */
        let nodeLogger = (/**
         * @return {?}
         */
        () => {
            currRenderNodeIndex++;
            if (currRenderNodeIndex === renderNodeIndex) {
                return console.error.bind(console, ...values);
            }
            else {
                return NOOP;
            }
        });
        (/** @type {?} */ (logViewDef.factory))(nodeLogger);
        if (currRenderNodeIndex < renderNodeIndex) {
            console.error('Illegal state: the ViewDefinitionFactory did not call the logger!');
            ((/** @type {?} */ (console.error)))(...values);
        }
    }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    DebugContext_.prototype.nodeDef;
    /**
     * @type {?}
     * @private
     */
    DebugContext_.prototype.elView;
    /**
     * @type {?}
     * @private
     */
    DebugContext_.prototype.elDef;
    /** @type {?} */
    DebugContext_.prototype.view;
    /** @type {?} */
    DebugContext_.prototype.nodeIndex;
}
/**
 * @param {?} viewDef
 * @param {?} nodeIndex
 * @return {?}
 */
function getRenderNodeIndex(viewDef, nodeIndex) {
    /** @type {?} */
    let renderNodeIndex = -1;
    for (let i = 0; i <= nodeIndex; i++) {
        /** @type {?} */
        const nodeDef = viewDef.nodes[i];
        if (nodeDef.flags & 3 /* CatRenderNode */) {
            renderNodeIndex++;
        }
    }
    return renderNodeIndex;
}
/**
 * @param {?} view
 * @return {?}
 */
function findHostElement(view) {
    while (view && !isComponentView(view)) {
        view = (/** @type {?} */ (view.parent));
    }
    if (view.parent) {
        return asElementData(view.parent, (/** @type {?} */ (viewParentEl(view))).nodeIndex);
    }
    return null;
}
/**
 * @param {?} view
 * @param {?} nodeDef
 * @param {?} references
 * @return {?}
 */
function collectReferences(view, nodeDef, references) {
    for (let refName in nodeDef.references) {
        references[refName] = getQueryValue(view, nodeDef, nodeDef.references[refName]);
    }
}
/**
 * @param {?} action
 * @param {?} fn
 * @param {?} self
 * @param {?} args
 * @return {?}
 */
function callWithDebugContext(action, fn, self, args) {
    /** @type {?} */
    const oldAction = _currentAction;
    /** @type {?} */
    const oldView = _currentView;
    /** @type {?} */
    const oldNodeIndex = _currentNodeIndex;
    try {
        _currentAction = action;
        /** @type {?} */
        const result = fn.apply(self, args);
        _currentView = oldView;
        _currentNodeIndex = oldNodeIndex;
        _currentAction = oldAction;
        return result;
    }
    catch (e) {
        if (isViewDebugError(e) || !_currentView) {
            throw e;
        }
        throw viewWrappedDebugError(e, (/** @type {?} */ (getCurrentDebugContext())));
    }
}
/**
 * @return {?}
 */
export function getCurrentDebugContext() {
    return _currentView ? new DebugContext_(_currentView, _currentNodeIndex) : null;
}
export class DebugRendererFactory2 {
    /**
     * @param {?} delegate
     */
    constructor(delegate) {
        this.delegate = delegate;
    }
    /**
     * @param {?} element
     * @param {?} renderData
     * @return {?}
     */
    createRenderer(element, renderData) {
        return new DebugRenderer2(this.delegate.createRenderer(element, renderData));
    }
    /**
     * @return {?}
     */
    begin() {
        if (this.delegate.begin) {
            this.delegate.begin();
        }
    }
    /**
     * @return {?}
     */
    end() {
        if (this.delegate.end) {
            this.delegate.end();
        }
    }
    /**
     * @return {?}
     */
    whenRenderingDone() {
        if (this.delegate.whenRenderingDone) {
            return this.delegate.whenRenderingDone();
        }
        return Promise.resolve(null);
    }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    DebugRendererFactory2.prototype.delegate;
}
export class DebugRenderer2 {
    /**
     * @param {?} delegate
     */
    constructor(delegate) {
        this.delegate = delegate;
        /**
         * Factory function used to create a `DebugContext` when a node is created.
         *
         * The `DebugContext` allows to retrieve information about the nodes that are useful in tests.
         *
         * The factory is configurable so that the `DebugRenderer2` could instantiate either a View Engine
         * or a Render context.
         */
        this.debugContextFactory = getCurrentDebugContext;
        this.data = this.delegate.data;
    }
    /**
     * @private
     * @param {?} nativeElement
     * @return {?}
     */
    createDebugContext(nativeElement) { return this.debugContextFactory(nativeElement); }
    /**
     * @param {?} node
     * @return {?}
     */
    destroyNode(node) {
        /** @type {?} */
        const debugNode = (/** @type {?} */ (getDebugNode(node)));
        removeDebugNodeFromIndex(debugNode);
        if (debugNode instanceof DebugNode__PRE_R3__) {
            debugNode.listeners.length = 0;
        }
        if (this.delegate.destroyNode) {
            this.delegate.destroyNode(node);
        }
    }
    /**
     * @return {?}
     */
    destroy() { this.delegate.destroy(); }
    /**
     * @param {?} name
     * @param {?=} namespace
     * @return {?}
     */
    createElement(name, namespace) {
        /** @type {?} */
        const el = this.delegate.createElement(name, namespace);
        /** @type {?} */
        const debugCtx = this.createDebugContext(el);
        if (debugCtx) {
            /** @type {?} */
            const debugEl = new DebugElement__PRE_R3__(el, null, debugCtx);
            ((/** @type {?} */ (debugEl))).name = name;
            indexDebugNode(debugEl);
        }
        return el;
    }
    /**
     * @param {?} value
     * @return {?}
     */
    createComment(value) {
        /** @type {?} */
        const comment = this.delegate.createComment(value);
        /** @type {?} */
        const debugCtx = this.createDebugContext(comment);
        if (debugCtx) {
            indexDebugNode(new DebugNode__PRE_R3__(comment, null, debugCtx));
        }
        return comment;
    }
    /**
     * @param {?} value
     * @return {?}
     */
    createText(value) {
        /** @type {?} */
        const text = this.delegate.createText(value);
        /** @type {?} */
        const debugCtx = this.createDebugContext(text);
        if (debugCtx) {
            indexDebugNode(new DebugNode__PRE_R3__(text, null, debugCtx));
        }
        return text;
    }
    /**
     * @param {?} parent
     * @param {?} newChild
     * @return {?}
     */
    appendChild(parent, newChild) {
        /** @type {?} */
        const debugEl = getDebugNode(parent);
        /** @type {?} */
        const debugChildEl = getDebugNode(newChild);
        if (debugEl && debugChildEl && debugEl instanceof DebugElement__PRE_R3__) {
            debugEl.addChild(debugChildEl);
        }
        this.delegate.appendChild(parent, newChild);
    }
    /**
     * @param {?} parent
     * @param {?} newChild
     * @param {?} refChild
     * @return {?}
     */
    insertBefore(parent, newChild, refChild) {
        /** @type {?} */
        const debugEl = getDebugNode(parent);
        /** @type {?} */
        const debugChildEl = getDebugNode(newChild);
        /** @type {?} */
        const debugRefEl = (/** @type {?} */ (getDebugNode(refChild)));
        if (debugEl && debugChildEl && debugEl instanceof DebugElement__PRE_R3__) {
            debugEl.insertBefore(debugRefEl, debugChildEl);
        }
        this.delegate.insertBefore(parent, newChild, refChild);
    }
    /**
     * @param {?} parent
     * @param {?} oldChild
     * @return {?}
     */
    removeChild(parent, oldChild) {
        /** @type {?} */
        const debugEl = getDebugNode(parent);
        /** @type {?} */
        const debugChildEl = getDebugNode(oldChild);
        if (debugEl && debugChildEl && debugEl instanceof DebugElement__PRE_R3__) {
            debugEl.removeChild(debugChildEl);
        }
        this.delegate.removeChild(parent, oldChild);
    }
    /**
     * @param {?} selectorOrNode
     * @param {?=} preserveContent
     * @return {?}
     */
    selectRootElement(selectorOrNode, preserveContent) {
        /** @type {?} */
        const el = this.delegate.selectRootElement(selectorOrNode, preserveContent);
        /** @type {?} */
        const debugCtx = getCurrentDebugContext();
        if (debugCtx) {
            indexDebugNode(new DebugElement__PRE_R3__(el, null, debugCtx));
        }
        return el;
    }
    /**
     * @param {?} el
     * @param {?} name
     * @param {?} value
     * @param {?=} namespace
     * @return {?}
     */
    setAttribute(el, name, value, namespace) {
        /** @type {?} */
        const debugEl = getDebugNode(el);
        if (debugEl && debugEl instanceof DebugElement__PRE_R3__) {
            /** @type {?} */
            const fullName = namespace ? namespace + ':' + name : name;
            debugEl.attributes[fullName] = value;
        }
        this.delegate.setAttribute(el, name, value, namespace);
    }
    /**
     * @param {?} el
     * @param {?} name
     * @param {?=} namespace
     * @return {?}
     */
    removeAttribute(el, name, namespace) {
        /** @type {?} */
        const debugEl = getDebugNode(el);
        if (debugEl && debugEl instanceof DebugElement__PRE_R3__) {
            /** @type {?} */
            const fullName = namespace ? namespace + ':' + name : name;
            debugEl.attributes[fullName] = null;
        }
        this.delegate.removeAttribute(el, name, namespace);
    }
    /**
     * @param {?} el
     * @param {?} name
     * @return {?}
     */
    addClass(el, name) {
        /** @type {?} */
        const debugEl = getDebugNode(el);
        if (debugEl && debugEl instanceof DebugElement__PRE_R3__) {
            debugEl.classes[name] = true;
        }
        this.delegate.addClass(el, name);
    }
    /**
     * @param {?} el
     * @param {?} name
     * @return {?}
     */
    removeClass(el, name) {
        /** @type {?} */
        const debugEl = getDebugNode(el);
        if (debugEl && debugEl instanceof DebugElement__PRE_R3__) {
            debugEl.classes[name] = false;
        }
        this.delegate.removeClass(el, name);
    }
    /**
     * @param {?} el
     * @param {?} style
     * @param {?} value
     * @param {?} flags
     * @return {?}
     */
    setStyle(el, style, value, flags) {
        /** @type {?} */
        const debugEl = getDebugNode(el);
        if (debugEl && debugEl instanceof DebugElement__PRE_R3__) {
            debugEl.styles[style] = value;
        }
        this.delegate.setStyle(el, style, value, flags);
    }
    /**
     * @param {?} el
     * @param {?} style
     * @param {?} flags
     * @return {?}
     */
    removeStyle(el, style, flags) {
        /** @type {?} */
        const debugEl = getDebugNode(el);
        if (debugEl && debugEl instanceof DebugElement__PRE_R3__) {
            debugEl.styles[style] = null;
        }
        this.delegate.removeStyle(el, style, flags);
    }
    /**
     * @param {?} el
     * @param {?} name
     * @param {?} value
     * @return {?}
     */
    setProperty(el, name, value) {
        /** @type {?} */
        const debugEl = getDebugNode(el);
        if (debugEl && debugEl instanceof DebugElement__PRE_R3__) {
            debugEl.properties[name] = value;
        }
        this.delegate.setProperty(el, name, value);
    }
    /**
     * @param {?} target
     * @param {?} eventName
     * @param {?} callback
     * @return {?}
     */
    listen(target, eventName, callback) {
        if (typeof target !== 'string') {
            /** @type {?} */
            const debugEl = getDebugNode(target);
            if (debugEl) {
                debugEl.listeners.push(new DebugEventListener(eventName, callback));
            }
        }
        return this.delegate.listen(target, eventName, callback);
    }
    /**
     * @param {?} node
     * @return {?}
     */
    parentNode(node) { return this.delegate.parentNode(node); }
    /**
     * @param {?} node
     * @return {?}
     */
    nextSibling(node) { return this.delegate.nextSibling(node); }
    /**
     * @param {?} node
     * @param {?} value
     * @return {?}
     */
    setValue(node, value) { return this.delegate.setValue(node, value); }
}
if (false) {
    /** @type {?} */
    DebugRenderer2.prototype.data;
    /**
     * Factory function used to create a `DebugContext` when a node is created.
     *
     * The `DebugContext` allows to retrieve information about the nodes that are useful in tests.
     *
     * The factory is configurable so that the `DebugRenderer2` could instantiate either a View Engine
     * or a Render context.
     * @type {?}
     */
    DebugRenderer2.prototype.debugContextFactory;
    /**
     * @type {?}
     * @private
     */
    DebugRenderer2.prototype.delegate;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoic2VydmljZXMuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy92aWV3L3NlcnZpY2VzLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQVFBLE9BQU8sRUFBQyxzQkFBc0IsRUFBRSxrQkFBa0IsRUFBRSxtQkFBbUIsRUFBRSxZQUFZLEVBQUUsY0FBYyxFQUFFLHdCQUF3QixFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFFNUosT0FBTyxFQUFpQixnQkFBZ0IsRUFBa0IsTUFBTSxzQkFBc0IsQ0FBQztBQUN2RixPQUFPLEVBQUMsWUFBWSxFQUFDLE1BQU0sa0JBQWtCLENBQUM7QUFJOUMsT0FBTyxFQUFZLGdCQUFnQixFQUFxQyxNQUFNLGVBQWUsQ0FBQztBQUM5RixPQUFPLEVBQUMsU0FBUyxFQUFDLE1BQU0sMkJBQTJCLENBQUM7QUFDcEQsT0FBTyxFQUFDLFNBQVMsRUFBQyxNQUFNLHFCQUFxQixDQUFDO0FBQzlDLE9BQU8sRUFBQyx5QkFBeUIsRUFBRSwwQkFBMEIsRUFBQyxNQUFNLG9CQUFvQixDQUFDO0FBRXpGLE9BQU8sRUFBQyxnQkFBZ0IsRUFBRSxrQkFBa0IsRUFBRSxxQkFBcUIsRUFBQyxNQUFNLFVBQVUsQ0FBQztBQUNyRixPQUFPLEVBQUMsVUFBVSxFQUFDLE1BQU0sWUFBWSxDQUFDO0FBQ3RDLE9BQU8sRUFBQyxrQkFBa0IsRUFBRSxhQUFhLEVBQUMsTUFBTSxTQUFTLENBQUM7QUFDMUQsT0FBTyxFQUFDLGNBQWMsRUFBRSxpQkFBaUIsRUFBRSxpQ0FBaUMsRUFBQyxNQUFNLFFBQVEsQ0FBQztBQUM1RixPQUFPLEVBQW1KLFFBQVEsRUFBdUMsYUFBYSxFQUFFLG9CQUFvQixFQUFDLE1BQU0sU0FBUyxDQUFDO0FBQzdQLE9BQU8sRUFBQyxJQUFJLEVBQUUsZUFBZSxFQUFFLFVBQVUsRUFBRSxpQkFBaUIsRUFBRSxZQUFZLEVBQUUsUUFBUSxFQUFF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Q0QsSUFBSSxDQUFDLFFBQVEsQ0FBQyxXQUFXLENBQUMsRUFBRSxFQUFFLElBQUksRUFBRSxLQUFLLENBQUMsQ0FBQztJQUM3QyxDQUFDOzs7Ozs7O0lBRUQsTUFBTSxDQUNGLE1BQXVDLEVBQUUsU0FBaUIsRUFDMUQsUUFBaUM7UUFDbkMsSUFBSSxPQUFPLE1BQU0sS0FBSyxRQUFRLEVBQUU7O2tCQUN4QixPQUFPLEdBQUcsWUFBWSxDQUFDLE1BQU0sQ0FBQztZQUNwQyxJQUFJLE9BQU8sRUFBRTtnQkFDWCxPQUFPLENBQUMsU0FBUyxDQUFDLElBQUksQ0FBQyxJQUFJLGtCQUFrQixDQUFDLFNBQVMsRUFBRSxRQUFRLENBQUMsQ0FBQyxDQUFDO2FBQ3JFO1NBQ0Y7UUFFRCxPQUFPLElBQUksQ0FBQyxRQUFRLENBQUMsTUFBTSxDQUFDLE1BQU0sRUFBRSxTQUFTLEVBQUUsUUFBUSxDQUFDLENBQUM7SUFDM0QsQ0FBQzs7Ozs7SUFFRCxVQUFVLENBQUMsSUFBUyxJQUFTLE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDOzs7OztJQUNyRSxXQUFXLENBQUMsSUFBUyxJQUFTLE9BQU8sSUFBSSxDQUFDLFFBQVEsQ0FBQyxXQUFXLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDOzs7Ozs7SUFDdkUsUUFBUSxDQUFDLElBQVMsRUFBRSxLQUFhLElBQVUsT0FBTyxJQUFJLENBQUMsUUFBUSxDQUFDLFFBQVEsQ0FBQyxJQUFJLEVBQUUsS0FBSyxDQUFDLENBQUMsQ0FBQyxDQUFDO0NBQ3pGOzs7SUExS0MsOEJBQW9DOzs7Ozs7Ozs7O0lBWXBDLDZDQUEyRjs7Ozs7SUFFL0Usa0NBQTJCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0RlYnVnRWxlbWVudF9fUFJFX1IzX18sIERlYnVnRXZlbnRMaXN0ZW5lciwgRGVidWdOb2RlX19QUkVfUjNfXywgZ2V0RGVidWdOb2RlLCBpbmRleERlYnVnTm9kZSwgcmVtb3ZlRGVidWdOb2RlRnJvbUluZGV4fSBmcm9tICcuLi9kZWJ1Zy9kZWJ1Z19ub2RlJztcbmltcG9ydCB7SW5qZWN0b3J9IGZyb20gJy4uL2RpJztcbmltcG9ydCB7SW5qZWN0YWJsZVR5cGUsIGdldEluamVjdGFibGVEZWYsIMm1ybVJbmplY3RhYmxlRGVmfSBmcm9tICcuLi9kaS9pbnRlcmZhY2UvZGVmcyc7XG5pbXBvcnQge0Vycm9ySGFuZGxlcn0gZnJvbSAnLi4vZXJyb3JfaGFuZGxlcic7XG5pbXBvcnQge1R5cGV9IGZyb20gJy4uL2ludGVyZmFjZS90eXBlJztcbmltcG9ydCB7Q29tcG9uZW50RmFjdG9yeX0gZnJvbSAnLi4vbGlua2VyL2NvbXBvbmVudF9mYWN0b3J5JztcbmltcG9ydCB7TmdNb2R1bGVSZWZ9IGZyb20gJy4uL2xpbmtlci9uZ19tb2R1bGVfZmFjdG9yeSc7XG5pbXBvcnQge1JlbmRlcmVyMiwgUmVuZGVyZXJGYWN0b3J5MiwgUmVuZGVyZXJTdHlsZUZsYWdzMiwgUmVuZGVyZXJUeXBlMn0gZnJvbSAnLi4vcmVuZGVyL2FwaSc7XG5pbXBvcnQge1Nhbml0aXplcn0gZnJvbSAnLi4vc2FuaXRpemF0aW9uL3Nhbml0aXplcic7XG5pbXBvcnQge2lzRGV2TW9kZX0gZnJvbSAnLi4vdXRpbC9pc19kZXZfbW9kZSc7XG5pbXBvcnQge25vcm1hbGl6ZURlYnVnQmluZGluZ05hbWUsIG5vcm1hbGl6ZURlYnVnQmluZGluZ1ZhbHVlfSBmcm9tICcuLi91dGlsL25nX3JlZmxlY3QnO1xuXG5pbXBvcnQge2lzVmlld0RlYnVnRXJyb3IsIHZpZXdEZXN0cm95ZWRFcnJvciwgdmlld1dyYXBwZWREZWJ1Z0Vycm9yfSBmcm9tICcuL2Vycm9ycyc7XG5pbXBvcnQge3Jlc29sdmVEZXB9IGZyb20gJy4vcHJvdmlkZXInO1xuaW1wb3J0IHtkaXJ0eVBhcmVudFF1ZXJpZXMsIGdldFF1ZXJ5VmFsdWV9IGZyb20gJy4vcXVlcnknO1xuaW1wb3J0IHtjcmVhdGVJbmplY3RvciwgY3JlYXRlTmdNb2R1bGVSZWYsIGdldENvbXBvbmVudFZpZXdEZWZpbml0aW9uRmFjdG9yeX0gZnJvbSAnLi9yZWZzJztcbmltcG9ydCB7QXJndW1lbnRUeXBlLCBCaW5kaW5nRmxhZ3MsIENoZWNrVHlwZSwgRGVidWdDb250ZXh0LCBFbGVtZW50RGF0YSwgTmdNb2R1bGVEZWZpbml0aW9uLCBOb2RlRGVmLCBOb2RlRmxhZ3MsIE5vZGVMb2dnZXIsIFByb3ZpZGVyT3ZlcnJpZGUsIFJvb3REYXRhLCBTZXJ2aWNlcywgVmlld0RhdGEsIFZpZXdEZWZpbml0aW9uLCBWaWV3U3RhdGUsIGFzRWxlbWVudERhdGEsIGFzUHVyZUV4cHJlc3Npb25EYXRhfSBmcm9tICcuL3R5cGVzJztcbmltcG9ydCB7Tk9PUCwgaXNDb21wb25lbnRWaWV3LCByZW5kZXJOb2RlLCByZXNvbHZlRGVmaW5pdGlvbiwgc3BsaXREZXBzRHNsLCB0b2tlbktleSwgdmlld1BhcmVudEVsfSBmcm9tICcuL3V0aWwnO1xuaW1wb3J0IHtjaGVja0FuZFVwZGF0ZU5vZGUsIGNoZWNrQW5kVXBkYXRlVmlldywgY2hlY2tOb0NoYW5nZXNOb2RlLCBjaGVja05vQ2hhbmdlc1ZpZXcsIGNyZWF0ZUNvbXBvbmVudFZpZXcsIGNyZWF0ZUVtYmVkZGVkVmlldywgY3JlYXRlUm9vdFZpZXcsIGRlc3Ryb3lWaWV3fSBmcm9tICcuL3ZpZXcnO1xuXG5cbmxldCBpbml0aWFsaXplZCA9IGZhbHNlO1xuXG5leHBvcnQgZnVuY3Rpb24gaW5pdFNlcnZpY2VzSWZOZWVkZWQoKSB7XG4gIGlmIChpbml0aWFsaXplZCkge1xuICAgIHJldHVybjtcbiAgfVxuICBpbml0aWFsaXplZCA9IHRydWU7XG4gIGNvbnN0IHNlcnZpY2VzID0gaXNEZXZNb2RlKCkgPyBjcmVhdGVEZWJ1Z1NlcnZpY2VzKCkgOiBjcmVhdGVQcm9kU2VydmljZXMoKTtcbiAgU2VydmljZXMuc2V0Q3VycmVudE5vZGUgPSBzZXJ2aWNlcy5zZXRDdXJyZW50Tm9kZTtcbiAgU2VydmljZXMuY3JlYXRlUm9vdFZpZXcgPSBzZXJ2aWNlcy5jcmVhdGVSb290VmlldztcbiAgU2VydmljZXMuY3JlYXRlRW1iZWRkZWRWaWV3ID0gc2VydmljZXMuY3JlYXRlRW1iZWRkZWRWaWV3O1xuICBTZXJ2aWNlcy5jcmVhdGVDb21wb25lbnRWaWV3ID0gc2VydmljZXMuY3JlYXRlQ29tcG9uZW50VmlldztcbiAgU2VydmljZXMuY3JlYXRlTmdNb2R1bGVSZWYgPSBzZXJ2aWNlcy5jcmVhdGVOZ01vZHVsZVJlZjtcbiAgU2VydmljZXMub3ZlcnJpZGVQcm92aWRlciA9IHNlcnZpY2VzLm92ZXJyaWRlUHJvdmlkZXI7XG4gIFNlcnZpY2VzLm92ZXJyaWRlQ29tcG9uZW50VmlldyA9IHNlcnZpY2VzLm92ZXJyaWRlQ29tcG9uZW50VmlldztcbiAgU2VydmljZXMuY2xlYXJPdmVycmlkZXMgPSBzZXJ2aWNlcy5jbGVhck92ZXJyaWRlcztcbiAgU2VydmljZXMuY2hlY2tBbmRVcGRhdGVWaWV3ID0gc2VydmljZXMuY2hlY2tBbmRVcGRhdGVWaWV3O1xuICBTZXJ2aWNlcy5jaGVja05vQ2hhbmdlc1ZpZXcgPSBzZXJ2aWNlcy5jaGVja05vQ2hhbmdlc1ZpZXc7XG4gIFNlcnZpY2VzLmRlc3Ryb3lWaWV3ID0gc2VydmljZXMuZGVzdHJveVZpZXc7XG4gIFNlcnZpY2VzLnJlc29sdmVEZXAgPSByZXNvbHZlRGVwO1xuICBTZXJ2aWNlcy5jcmVhdGVEZWJ1Z0NvbnRleHQgPSBzZXJ2aWNlcy5jcmVhdGVEZWJ1Z0NvbnRleHQ7XG4gIFNlcnZpY2VzLmhhbmRsZUV2ZW50ID0gc2VydmljZXMuaGFuZGxlRXZlbnQ7XG4gIFNlcnZpY2VzLnVwZGF0ZURpcmVjdGl2ZXMgPSBzZXJ2aWNlcy51cGRhdGVEaXJlY3RpdmVzO1xuICBTZXJ2aWNlcy51cGRhdGVSZW5kZXJlciA9IHNlcnZpY2VzLnVwZGF0ZVJlbmRlcmVyO1xuICBTZXJ2aWNlcy5kaXJ0eVBhcmVudFF1ZXJpZXMgPSBkaXJ0eVBhcmVudFF1ZXJpZXM7XG59XG5cbmZ1bmN0aW9uIGNyZWF0ZVByb2RTZXJ2aWNlcygpIHtcbiAgcmV0dXJuIHtcbiAgICBzZXRDdXJyZW50Tm9kZTogKCkgPT4ge30sXG4gICAgY3JlYXRlUm9vdFZpZXc6IGNyZWF0ZVByb2RSb290VmlldyxcbiAgICBjcmVhdGVFbWJlZGRlZFZpZXc6IGNyZWF0ZUVtYmVkZGVkVmlldyxcbiAgICBjcmVhdGVDb21wb25lbnRWaWV3OiBjcmVhdGVDb21wb25lbnRWaWV3LFxuICAgIGNyZWF0ZU5nTW9kdWxlUmVmOiBjcmVhdGVOZ01vZHVsZVJlZixcbiAgICBvdmVycmlkZVByb3ZpZGVyOiBOT09QLFxuICAgIG92ZXJyaWRlQ29tcG9uZW50VmlldzogTk9PUCxcbiAgICBjbGVhck92ZXJyaWRlczogTk9PUCxcbiAgICBjaGVja0FuZFVwZGF0ZVZpZXc6IGNoZWNrQW5kVXBkYXRlVmlldyxcbiAgICBjaGVja05vQ2hhbmdlc1ZpZXc6IGNoZWNrTm9DaGFuZ2VzVmlldyxcbiAgICBkZXN0cm95VmlldzogZGVzdHJveVZpZXcsXG4gICAgY3JlYXRlRGVidWdDb250ZXh0OiAodmlldzogVmlld0RhdGEsIG5vZGVJbmRleDogbnVtYmVyKSA9PiBuZXcgRGVidWdDb250ZXh0Xyh2aWV3LCBub2RlSW5kZXgpLFxuICAgIGhhbmRsZUV2ZW50OiAodmlldzogVmlld0RhdGEsIG5vZGVJbmRleDogbnVtYmVyLCBldmVudE5hbWU6IHN0cmluZywgZXZlbnQ6IGFueSkgPT5cbiAgICAgICAgICAgICAgICAgICAgIHZpZXcuZGVmLmhhbmRsZUV2ZW50KHZpZXcsIG5vZGVJbmRleCwgZXZlbnROYW1lLCBldmVudCksXG4gICAgdXBkYXRlRGlyZWN0aXZlczogKHZpZXc6IFZpZXdEYXRhLCBjaGVja1R5cGU6IENoZWNrVHlwZSkgPT4gdmlldy5kZWYudXBkYXRlRGlyZWN0aXZlcyhcbiAgICAgICAgICAgICAgICAgICAgICAgICAgY2hlY2tUeXBlID09PSBDaGVja1R5cGUuQ2hlY2tBbmRVcGRhdGUgPyBwcm9kQ2hlY2tBbmRVcGRhdGVOb2RlIDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwcm9kQ2hlY2tOb0NoYW5nZXNOb2RlLFxuICAgICAgICAgICAgICAgICAgICAgICAgICB2aWV3KSxcbiAgICB1cGRhdGVSZW5kZXJlcjogKHZpZXc6IFZpZXdEYXRhLCBjaGVja1R5cGU6IENoZWNrVHlwZSkgPT4gdmlldy5kZWYudXBkYXRlUmVuZGVyZXIoXG4gICAgICAgICAgICAgICAgICAgICAgICBjaGVja1R5cGUgPT09IENoZWNrVHlwZS5DaGVja0FuZFVwZGF0ZSA/IHByb2RDaGVja0FuZFVwZGF0ZU5vZGUgOlxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwcm9kQ2hlY2tOb0NoYW5nZXNOb2RlLFxuICAgICAgICAgICAgICAgICAgICAgICAgdmlldyksXG4gIH07XG59XG5cbmZ1bmN0aW9uIGNyZWF0ZURlYnVnU2VydmljZXMoKSB7XG4gIHJldHVybiB7XG4gICAgc2V0Q3VycmVudE5vZGU6IGRlYnVnU2V0Q3VycmVudE5vZGUsXG4gICAgY3JlYXRlUm9vdFZpZXc6IGRlYnVnQ3JlYXRlUm9vdFZpZXcsXG4gICAgY3JlYXRlRW1iZWRkZWRWaWV3OiBkZWJ1Z0NyZWF0ZUVtYmVkZGVkVmlldyxcbiAgICBjcmVhdGVDb21wb25lbnRWaWV3OiBkZWJ1Z0NyZWF0ZUNvbXBvbmVudFZpZXcsXG4gICAgY3JlYXRlTmdNb2R1bGVSZWY6IGRlYnVnQ3JlYXRlTmdNb2R1bGVSZWYsXG4gICAgb3ZlcnJpZGVQcm92aWRlcjogZGVidWdPdmVycmlkZVByb3ZpZGVyLFxuICAgIG92ZXJyaWRlQ29tcG9uZW50VmlldzogZGVidWdPdmVycmlkZUNvbXBvbmVudFZpZXcsXG4gICAgY2xlYXJPdmVycmlkZXM6IGRlYnVnQ2xlYXJPdmVycmlkZXMsXG4gICAgY2hlY2tBbmRVcGRhdGVWaWV3OiBkZWJ1Z0NoZWNrQW5kVXBkYXRlVmlldyxcbiAgICBjaGVja05vQ2hhbmdlc1ZpZXc6IGRlYnVnQ2hlY2tOb0NoYW5nZXNWaWV3LFxuICAgIGRlc3Ryb3lWaWV3OiBkZWJ1Z0Rlc3Ryb3lWaWV3LFxuICAgIGNyZWF0ZURlYnVnQ29udGV4dDogKHZpZXc6IFZpZXdEYXRhLCBub2RlSW5kZXg6IG51bWJlcikgPT4gbmV3IERlYnVnQ29udGV4dF8odmlldywgbm9kZUluZGV4KSxcbiAgICBoYW5kbGVFdmVudDogZGVidWdIYW5kbGVFdmVudCxcbiAgICB1cGRhdGVEaXJlY3RpdmVzOiBkZWJ1Z1VwZGF0ZURpcmVjdGl2ZXMsXG4gICAgdXBkYXRlUmVuZGVyZXI6IGRlYnVnVXBkYXRlUmVuZGVyZXIsXG4gIH07XG59XG5cbmZ1bmN0aW9uIGNyZWF0ZVByb2RSb290VmlldyhcbiAgICBlbEluamVjdG9yOiBJbmplY3RvciwgcHJvamVjdGFibGVOb2RlczogYW55W11bXSwgcm9vdFNlbGVjdG9yT3JOb2RlOiBzdHJpbmcgfCBhbnksXG4gICAgZGVmOiBWaWV3RGVmaW5pdGlvbiwgbmdNb2R1bGU6IE5nTW9kdWxlUmVmPGFueT4sIGNvbnRleHQ/OiBhbnkpOiBWaWV3RGF0YSB7XG4gIGNvbnN0IHJlbmRlcmVyRmFjdG9yeTogUmVuZGVyZXJGYWN0b3J5MiA9IG5nTW9kdWxlLmluamVjdG9yLmdldChSZW5kZXJlckZhY3RvcnkyKTtcbiAgcmV0dXJuIGNyZWF0ZVJvb3RWaWV3KFxuICAgICAgY3JlYXRlUm9vdERhdGEoZWxJbmplY3RvciwgbmdNb2R1bGUsIHJlbmRlcmVyRmFjdG9yeSwgcHJvamVjdGFibGVOb2Rlcywgcm9vdFNlbGVjdG9yT3JOb2RlKSxcbiAgICAgIGRlZiwgY29udGV4dCk7XG59XG5cbmZ1bmN0aW9uIGRlYnVnQ3JlYXRlUm9vdFZpZXcoXG4gICAgZWxJbmplY3RvcjogSW5qZWN0b3IsIHByb2plY3RhYmxlTm9kZXM6IGFueVtdW10sIHJvb3RTZWxlY3Rvck9yTm9kZTogc3RyaW5nIHwgYW55LFxuICAgIGRlZjogVmlld0RlZmluaXRpb24sIG5nTW9kdWxlOiBOZ01vZHVsZVJlZjxhbnk+LCBjb250ZXh0PzogYW55KTogVmlld0RhdGEge1xuICBjb25zdCByZW5kZXJlckZhY3Rvcnk6IFJlbmRlcmVyRmFjdG9yeTIgPSBuZ01vZHVsZS5pbmplY3Rvci5nZXQoUmVuZGVyZXJGYWN0b3J5Mik7XG4gIGNvbnN0IHJvb3QgPSBjcmVhdGVSb290RGF0YShcbiAgICAgIGVsSW5qZWN0b3IsIG5nTW9kdWxlLCBuZXcgRGVidWdSZW5kZXJlckZhY3RvcnkyKHJlbmRlcmVyRmFjdG9yeSksIHByb2plY3RhYmxlTm9kZXMsXG4gICAgICByb290U2VsZWN0b3JPck5vZGUpO1xuICBjb25zdCBkZWZXaXRoT3ZlcnJpZGUgPSBhcHBseVByb3ZpZGVyT3ZlcnJpZGVzVG9WaWV3KGRlZik7XG4gIHJldHVybiBjYWxsV2l0aERlYnVnQ29udGV4dChcbiAgICAgIERlYnVnQWN0aW9uLmNyZWF0ZSwgY3JlYXRlUm9vdFZpZXcsIG51bGwsIFtyb290LCBkZWZXaXRoT3ZlcnJpZGUsIGNvbnRleHRdKTtcbn1cblxuZnVuY3Rpb24gY3JlYXRlUm9vdERhdGEoXG4gICAgZWxJbmplY3RvcjogSW5qZWN0b3IsIG5nTW9kdWxlOiBOZ01vZHVsZVJlZjxhbnk+LCByZW5kZXJlckZhY3Rvcnk6IFJlbmRlcmVyRmFjdG9yeTIsXG4gICAgcHJvamVjdGFibGVOb2RlczogYW55W11bXSwgcm9vdFNlbGVjdG9yT3JOb2RlOiBhbnkpOiBSb290RGF0YSB7XG4gIGNvbnN0IHNhbml0aXplciA9IG5nTW9kdWxlLmluamVjdG9yLmdldChTYW5pdGl6ZXIpO1xuICBjb25zdCBlcnJvckhhbmRsZXIgPSBuZ01vZHVsZS5pbmplY3Rvci5nZXQoRXJyb3JIYW5kbGVyKTtcbiAgY29uc3QgcmVuZGVyZXIgPSByZW5kZXJlckZhY3RvcnkuY3JlYXRlUmVuZGVyZXIobnVsbCwgbnVsbCk7XG4gIHJldHVybiB7XG4gICAgbmdNb2R1bGUsXG4gICAgaW5qZWN0b3I6IGVsSW5qZWN0b3IsIHByb2plY3RhYmxlTm9kZXMsXG4gICAgc2VsZWN0b3JPck5vZGU6IHJvb3RTZWxlY3Rvck9yTm9kZSwgc2FuaXRpemVyLCByZW5kZXJlckZhY3RvcnksIHJlbmRlcmVyLCBlcnJvckhhbmRsZXJcbiAgfTtcbn1cblxuZnVuY3Rpb24gZGVidWdDcmVhdGVFbWJlZGRlZFZpZXcoXG4gICAgcGFyZW50VmlldzogVmlld0RhdGEsIGFuY2hvckRlZjogTm9kZURlZiwgdmlld0RlZjogVmlld0RlZmluaXRpb24sIGNvbnRleHQ/OiBhbnkpOiBWaWV3RGF0YSB7XG4gIGNvbnN0IGRlZldpdGhPdmVycmlkZSA9IGFwcGx5UHJvdmlkZXJPdmVycmlkZXNUb1ZpZXcodmlld0RlZik7XG4gIHJldHVybiBjYWxsV2l0aERlYnVnQ29udGV4dChcbiAgICAgIERlYnVnQWN0aW9uLmNyZWF0ZSwgY3JlYXRlRW1iZWRkZWRWaWV3LCBudWxsLFxuICAgICAgW3BhcmVudFZpZXcsIGFuY2hvckRlZiwgZGVmV2l0aE92ZXJyaWRlLCBjb250ZXh0XSk7XG59XG5cbmZ1bmN0aW9uIGRlYnVnQ3JlYXRlQ29tcG9uZW50VmlldyhcbiAgICBwYXJlbnRWaWV3OiBWaWV3RGF0YSwgbm9kZURlZjogTm9kZURlZiwgdmlld0RlZjogVmlld0RlZmluaXRpb24sIGhvc3RFbGVtZW50OiBhbnkpOiBWaWV3RGF0YSB7XG4gIGNvbnN0IG92ZXJyaWRlQ29tcG9uZW50VmlldyA9XG4gICAgICB2aWV3RGVmT3ZlcnJpZGVzLmdldChub2RlRGVmLmVsZW1lbnQgIS5jb21wb25lbnRQcm92aWRlciAhLnByb3ZpZGVyICEudG9rZW4pO1xuICBpZiAob3ZlcnJpZGVDb21wb25lbnRWaWV3KSB7XG4gICAgdmlld0RlZiA9IG92ZXJyaWRlQ29tcG9uZW50VmlldztcbiAgfSBlbHNlIHtcbiAgICB2aWV3RGVmID0gYXBwbHlQcm92aWRlck92ZXJyaWRlc1RvVmlldyh2aWV3RGVmKTtcbiAgfVxuICByZXR1cm4gY2FsbFdpdGhEZWJ1Z0NvbnRleHQoXG4gICAgICBEZWJ1Z0FjdGlvbi5jcmVhdGUsIGNyZWF0ZUNvbXBvbmVudFZpZXcsIG51bGwsIFtwYXJlbnRWaWV3LCBub2RlRGVmLCB2aWV3RGVmLCBob3N0RWxlbWVudF0pO1xufVxuXG5mdW5jdGlvbiBkZWJ1Z0NyZWF0ZU5nTW9kdWxlUmVmKFxuICAgIG1vZHVsZVR5cGU6IFR5cGU8YW55PiwgcGFyZW50SW5qZWN0b3I6IEluamVjdG9yLCBib290c3RyYXBDb21wb25lbnRzOiBUeXBlPGFueT5bXSxcbiAgICBkZWY6IE5nTW9kdWxlRGVmaW5pdGlvbik6IE5nTW9kdWxlUmVmPGFueT4ge1xuICBjb25zdCBkZWZXaXRoT3ZlcnJpZGUgPSBhcHBseVByb3ZpZGVyT3ZlcnJpZGVzVG9OZ01vZHVsZShkZWYpO1xuICByZXR1cm4gY3JlYXRlTmdNb2R1bGVSZWYobW9kdWxlVHlwZSwgcGFyZW50SW5qZWN0b3IsIGJvb3RzdHJhcENvbXBvbmVudHMsIGRlZldpdGhPdmVycmlkZSk7XG59XG5cbmNvbnN0IHByb3ZpZGVyT3ZlcnJpZGVzID0gbmV3IE1hcDxhbnksIFByb3ZpZGVyT3ZlcnJpZGU+KCk7XG5jb25zdCBwcm92aWRlck92ZXJyaWRlc1dpdGhTY29wZSA9IG5ldyBNYXA8SW5qZWN0YWJsZVR5cGU8YW55PiwgUHJvdmlkZXJPdmVycmlkZT4oKTtcbmNvbnN0IHZpZXdEZWZPdmVycmlkZXMgPSBuZXcgTWFwPGFueSwgVmlld0RlZmluaXRpb24+KCk7XG5cbmZ1bmN0aW9uIGRlYnVnT3ZlcnJpZGVQcm92aWRlcihvdmVycmlkZTogUHJvdmlkZXJPdmVycmlkZSkge1xuICBwcm92aWRlck92ZXJyaWRlcy5zZXQob3ZlcnJpZGUudG9rZW4sIG92ZXJyaWRlKTtcbiAgbGV0IGluamVjdGFibGVEZWY6IMm1ybVJbmplY3RhYmxlRGVmPGFueT58bnVsbDtcbiAgaWYgKHR5cGVvZiBvdmVycmlkZS50b2tlbiA9PT0gJ2Z1bmN0aW9uJyAmJiAoaW5qZWN0YWJsZURlZiA9IGdldEluamVjdGFibGVEZWYob3ZlcnJpZGUudG9rZW4pKSAmJlxuICAgICAgdHlwZW9mIGluamVjdGFibGVEZWYucHJvdmlkZWRJbiA9PT0gJ2Z1bmN0aW9uJykge1xuICAgIHByb3ZpZGVyT3ZlcnJpZGVzV2l0aFNjb3BlLnNldChvdmVycmlkZS50b2tlbiBhcyBJbmplY3RhYmxlVHlwZTxhbnk+LCBvdmVycmlkZSk7XG4gIH1cbn1cblxuZnVuY3Rpb24gZGVidWdPdmVycmlkZUNvbXBvbmVudFZpZXcoY29tcDogYW55LCBjb21wRmFjdG9yeTogQ29tcG9uZW50RmFjdG9yeTxhbnk+KSB7XG4gIGNvbnN0IGhvc3RWaWV3RGVmID0gcmVzb2x2ZURlZmluaXRpb24oZ2V0Q29tcG9uZW50Vmlld0RlZmluaXRpb25GYWN0b3J5KGNvbXBGYWN0b3J5KSk7XG4gIGNvbnN0IGNvbXBWaWV3RGVmID0gcmVzb2x2ZURlZmluaXRpb24oaG9zdFZpZXdEZWYubm9kZXNbMF0uZWxlbWVudCAhLmNvbXBvbmVudFZpZXcgISk7XG4gIHZpZXdEZWZPdmVycmlkZXMuc2V0KGNvbXAsIGNvbXBWaWV3RGVmKTtcbn1cblxuZnVuY3Rpb24gZGVidWdDbGVhck92ZXJyaWRlcygpIHtcbiAgcHJvdmlkZXJPdmVycmlkZXMuY2xlYXIoKTtcbiAgcHJvdmlkZXJPdmVycmlkZXNXaXRoU2NvcGUuY2xlYXIoKTtcbiAgdmlld0RlZk92ZXJyaWRlcy5jbGVhcigpO1xufVxuXG4vLyBOb3RlcyBhYm91dCB0aGUgYWxnb3JpdGhtOlxuLy8gMSkgTG9jYXRlIHRoZSBwcm92aWRlcnMgb2YgYW4gZWxlbWVudCBhbmQgY2hlY2sgaWYgb25lIG9mIHRoZW0gd2FzIG92ZXJ3cml0dGVuXG4vLyAyKSBDaGFuZ2UgdGhlIHByb3ZpZGVycyBvZiB0aGF0IGVsZW1lbnRcbi8vXG4vLyBXZSBvbmx5IGNyZWF0ZSBuZXcgZGF0YXN0cnVjdHVyZXMgaWYgd2UgbmVlZCB0bywgdG8ga2VlcCBwZXJmIGltcGFjdFxuLy8gcmVhc29uYWJsZS5cbmZ1bmN0aW9uIGFwcGx5UHJvdmlkZXJPdmVycmlkZXNUb1ZpZXcoZGVmOiBWaWV3RGVmaW5pdGlvbik6IFZpZXdEZWZpbml0aW9uIHtcbiAgaWYgKHByb3ZpZGVyT3ZlcnJpZGVzLnNpemUgPT09IDApIHtcbiAgICByZXR1cm4gZGVmO1xuICB9XG4gIGNvbnN0IGVsZW1lbnRJbmRpY2VzV2l0aE92ZXJ3cml0dGVuUHJvdmlkZXJzID0gZmluZEVsZW1lbnRJbmRpY2VzV2l0aE92ZXJ3cml0dGVuUHJvdmlkZXJzKGRlZik7XG4gIGlmIChlbGVtZW50SW5kaWNlc1dpdGhPdmVyd3JpdHRlblByb3ZpZGVycy5sZW5ndGggPT09IDApIHtcbiAgICByZXR1cm4gZGVmO1xuICB9XG4gIC8vIGNsb25lIHRoZSB3aG9sZSB2aWV3IGRlZmluaXRpb24sXG4gIC8vIGFzIGl0IG1haW50YWlucyByZWZlcmVuY2VzIGJldHdlZW4gdGhlIG5vZGVzIHRoYXQgYXJlIGhhcmQgdG8gdXBkYXRlLlxuICBkZWYgPSBkZWYuZmFjdG9yeSAhKCgpID0+IE5PT1ApO1xuICBmb3IgKGxldCBpID0gMDsgaSA8IGVsZW1lbnRJbmRpY2VzV2l0aE92ZXJ3cml0dGVuUHJvdmlkZXJzLmxlbmd0aDsgaSsrKSB7XG4gICAgYXBwbHlQcm92aWRlck92ZXJyaWRlc1RvRWxlbWVudChkZWYsIGVsZW1lbnRJbmRpY2VzV2l0aE92ZXJ3cml0dGVuUHJvdmlkZXJzW2ldKTtcbiAgfVxuICByZXR1cm4gZGVmO1xuXG4gIGZ1bmN0aW9uIGZpbmRFbGVtZW50SW5kaWNlc1dpdGhPdmVyd3JpdHRlblByb3ZpZGVycyhkZWY6IFZpZXdEZWZpbml0aW9uKTogbnVtYmVyW10ge1xuICAgIGNvbnN0IGVsSW5kaWNlc1dpdGhPdmVyd3JpdHRlblByb3ZpZGVyczogbnVtYmVyW10gPSBbXTtcbiAgICBsZXQgbGFzdEVsZW1lbnREZWY6IE5vZGVEZWZ8bnVsbCA9IG51bGw7XG4gICAgZm9yIChsZXQgaSA9IDA7IGkgPCBkZWYubm9kZXMubGVuZ3RoOyBpKyspIHtcbiAgICAgIGNvbnN0IG5vZGVEZWYgPSBkZWYubm9kZXNbaV07XG4gICAgICBpZiAobm9kZURlZi5mbGFncyAmIE5vZGVGbGFncy5UeXBlRWxlbWVudCkge1xuICAgICAgICBsYXN0RWxlbWVudERlZiA9IG5vZGVEZWY7XG4gICAgICB9XG4gICAgICBpZiAobGFzdEVsZW1lbnREZWYgJiYgbm9kZURlZi5mbGFncyAmIE5vZGVGbGFncy5DYXRQcm92aWRlck5vRGlyZWN0aXZlICYmXG4gICAgICAgICAgcHJvdmlkZXJPdmVycmlkZXMuaGFzKG5vZGVEZWYucHJvdmlkZXIgIS50b2tlbikpIHtcbiAgICAgICAgZWxJbmRpY2VzV2l0aE92ZXJ3cml0dGVuUHJvdmlkZXJzLnB1c2gobGFzdEVsZW1lbnREZWYgIS5ub2RlSW5kZXgpO1xuICAgICAgICBsYXN0RWxlbWVudERlZiA9IG51bGw7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiBlbEluZGljZXNXaXRoT3ZlcndyaXR0ZW5Qcm92aWRlcnM7XG4gIH1cblxuICBmdW5jdGlvbiBhcHBseVByb3ZpZGVyT3ZlcnJpZGVzVG9FbGVtZW50KHZpZXdEZWY6IFZpZXdEZWZpbml0aW9uLCBlbEluZGV4OiBudW1iZXIpIHtcbiAgICBmb3IgKGxldCBpID0gZWxJbmRleCArIDE7IGkgPCB2aWV3RGVmLm5vZGVzLmxlbmd0aDsgaSsrKSB7XG4gICAgICBjb25zdCBub2RlRGVmID0gdmlld0RlZi5ub2Rlc1tpXTtcbiAgICAgIGlmIChub2RlRGVmLmZsYWdzICYgTm9kZUZsYWdzLlR5cGVFbGVtZW50KSB7XG4gICAgICAgIC8vIHN0b3AgYXQgdGhlIG5leHQgZWxlbWVudFxuICAgICAgICByZXR1cm47XG4gICAgICB9XG4gICAgICBpZiAobm9kZURlZi5mbGFncyAmIE5vZGVGbGFncy5DYXRQcm92aWRlck5vRGlyZWN0aXZlKSB7XG4gICAgICAgIGNvbnN0IHByb3ZpZGVyID0gbm9kZURlZi5wcm92aWRlciAhO1xuICAgICAgICBjb25zdCBvdmVycmlkZSA9IHByb3ZpZGVyT3ZlcnJpZGVzLmdldChwcm92aWRlci50b2tlbik7XG4gICAgICAgIGlmIChvdmVycmlkZSkge1xuICAgICAgICAgIG5vZGVEZWYuZmxhZ3MgPSAobm9kZURlZi5mbGFncyAmIH5Ob2RlRmxhZ3MuQ2F0UHJvdmlkZXJOb0RpcmVjdGl2ZSkgfCBvdmVycmlkZS5mbGFncztcbiAgICAgICAgICBwcm92aWRlci5kZXBzID0gc3BsaXREZXBzRHNsKG92ZXJyaWRlLmRlcHMpO1xuICAgICAgICAgIHByb3ZpZGVyLnZhbHVlID0gb3ZlcnJpZGUudmFsdWU7XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG4gIH1cbn1cblxuLy8gTm90ZXMgYWJvdXQgdGhlIGFsZ29yaXRobTpcbi8vIFdlIG9ubHkgY3JlYXRlIG5ldyBkYXRhc3RydWN0dXJlcyBpZiB3ZSBuZWVkIHRvLCB0byBrZWVwIHBlcmYgaW1wYWN0XG4vLyByZWFzb25hYmxlLlxuZnVuY3Rpb24gYXBwbHlQcm92aWRlck92ZXJyaWRlc1RvTmdNb2R1bGUoZGVmOiBOZ01vZHVsZURlZmluaXRpb24pOiBOZ01vZHVsZURlZmluaXRpb24ge1xuICBjb25zdCB7aGFzT3ZlcnJpZGVzLCBoYXNEZXByZWNhdGVkT3ZlcnJpZGVzfSA9IGNhbGNIYXNPdmVycmlkZXMoZGVmKTtcbiAgaWYgKCFoYXNPdmVycmlkZXMpIHtcbiAgICByZXR1cm4gZGVmO1xuICB9XG4gIC8vIGNsb25lIHRoZSB3aG9sZSB2aWV3IGRlZmluaXRpb24sXG4gIC8vIGFzIGl0IG1haW50YWlucyByZWZlcmVuY2VzIGJldHdlZW4gdGhlIG5vZGVzIHRoYXQgYXJlIGhhcmQgdG8gdXBkYXRlLlxuICBkZWYgPSBkZWYuZmFjdG9yeSAhKCgpID0+IE5PT1ApO1xuICBhcHBseVByb3ZpZGVyT3ZlcnJpZGVzKGRlZik7XG4gIHJldHVybiBkZWY7XG5cbiAgZnVuY3Rpb24gY2FsY0hhc092ZXJyaWRlcyhkZWY6IE5nTW9kdWxlRGVmaW5pdGlvbik6XG4gICAgICB7aGFzT3ZlcnJpZGVzOiBib29sZWFuLCBoYXNEZXByZWNhdGVkT3ZlcnJpZGVzOiBib29sZWFufSB7XG4gICAgbGV0IGhhc092ZXJyaWRlcyA9IGZhbHNlO1xuICAgIGxldCBoYXNEZXByZWNhdGVkT3ZlcnJpZGVzID0gZmFsc2U7XG4gICAgaWYgKHByb3ZpZGVyT3ZlcnJpZGVzLnNpemUgPT09IDApIHtcbiAgICAgIHJldHVybiB7aGFzT3ZlcnJpZGVzLCBoYXNEZXByZWNhdGVkT3ZlcnJpZGVzfTtcbiAgICB9XG4gICAgZGVmLnByb3ZpZGVycy5mb3JFYWNoKG5vZGUgPT4ge1xuICAgICAgY29uc3Qgb3ZlcnJpZGUgPSBwcm92aWRlck92ZXJyaWRlcy5nZXQobm9kZS50b2tlbik7XG4gICAgICBpZiAoKG5vZGUuZmxhZ3MgJiBOb2RlRmxhZ3MuQ2F0UHJvdmlkZXJOb0RpcmVjdGl2ZSkgJiYgb3ZlcnJpZGUpIHtcbiAgICAgICAgaGFzT3ZlcnJpZGVzID0gdHJ1ZTtcbiAgICAgICAgaGFzRGVwcmVjYXRlZE92ZXJyaWRlcyA9IGhhc0RlcHJlY2F0ZWRPdmVycmlkZXMgfHwgb3ZlcnJpZGUuZGVwcmVjYXRlZEJlaGF2aW9yO1xuICAgICAgfVxuICAgIH0pO1xuICAgIGRlZi5tb2R1bGVzLmZvckVhY2gobW9kdWxlID0+IHtcbiAgICAgIHByb3ZpZGVyT3ZlcnJpZGVzV2l0aFNjb3BlLmZvckVhY2goKG92ZXJyaWRlLCB0b2tlbikgPT4ge1xuICAgICAgICBpZiAoZ2V0SW5qZWN0YWJsZURlZih0b2tlbikgIS5wcm92aWRlZEluID09PSBtb2R1bGUpIHtcbiAgICAgICAgICBoYXNPdmVycmlkZXMgPSB0cnVlO1xuICAgICAgICAgIGhhc0RlcHJlY2F0ZWRPdmVycmlkZXMgPSBoYXNEZXByZWNhdGVkT3ZlcnJpZGVzIHx8IG92ZXJyaWRlLmRlcHJlY2F0ZWRCZWhhdmlvcjtcbiAgICAgICAgfVxuICAgICAgfSk7XG4gICAgfSk7XG4gICAgcmV0dXJuIHtoYXNPdmVycmlkZXMsIGhhc0RlcHJlY2F0ZWRPdmVycmlkZXN9O1xuICB9XG5cbiAgZnVuY3Rpb24gYXBwbHlQcm92aWRlck92ZXJyaWRlcyhkZWY6IE5nTW9kdWxlRGVmaW5pdGlvbikge1xuICAgIGZvciAobGV0IGkgPSAwOyBpIDwgZGVmLnByb3ZpZGVycy5sZW5ndGg7IGkrKykge1xuICAgICAgY29uc3QgcHJvdmlkZXIgPSBkZWYucHJvdmlkZXJzW2ldO1xuICAgICAgaWYgKGhhc0RlcHJlY2F0ZWRPdmVycmlkZXMpIHtcbiAgICAgICAgLy8gV2UgaGFkIGEgYnVnIHdoZXJlIG1lIG1hZGVcbiAgICAgICAgLy8gYWxsIHByb3ZpZGVycyBsYXp5LiBLZWVwIHRoaXMgbG9naWMgYmVoaW5kIGEgZmxhZ1xuICAgICAgICAvLyBmb3IgbWlncmF0aW5nIGV4aXN0aW5nIHVzZXJzLlxuICAgICAgICBwcm92aWRlci5mbGFncyB8PSBOb2RlRmxhZ3MuTGF6eVByb3ZpZGVyO1xuICAgICAgfVxuICAgICAgY29uc3Qgb3ZlcnJpZGUgPSBwcm92aWRlck92ZXJyaWRlcy5nZXQocHJvdmlkZXIudG9rZW4pO1xuICAgICAgaWYgKG92ZXJyaWRlKSB7XG4gICAgICAgIHByb3ZpZGVyLmZsYWdzID0gKHByb3ZpZGVyLmZsYWdzICYgfk5vZGVGbGFncy5DYXRQcm92aWRlck5vRGlyZWN0aXZlKSB8IG92ZXJyaWRlLmZsYWdzO1xuICAgICAgICBwcm92aWRlci5kZXBzID0gc3BsaXREZXBzRHNsKG92ZXJyaWRlLmRlcHMpO1xuICAgICAgICBwcm92aWRlci52YWx1ZSA9IG92ZXJyaWRlLnZhbHVlO1xuICAgICAgfVxuICAgIH1cbiAgICBpZiAocHJvdmlkZXJPdmVycmlkZXNXaXRoU2NvcGUuc2l6ZSA+IDApIHtcbiAgICAgIGxldCBtb2R1bGVTZXQgPSBuZXcgU2V0PGFueT4oZGVmLm1vZHVsZXMpO1xuICAgICAgcHJvdmlkZXJPdmVycmlkZXNXaXRoU2NvcGUuZm9yRWFjaCgob3ZlcnJpZGUsIHRva2VuKSA9PiB7XG4gICAgICAgIGlmIChtb2R1bGVTZXQuaGFzKGdldEluamVjdGFibGVEZWYodG9rZW4pICEucHJvdmlkZWRJbikpIHtcbiAgICAgICAgICBsZXQgcHJvdmlkZXIgPSB7XG4gICAgICAgICAgICB0b2tlbjogdG9rZW4sXG4gICAgICAgICAgICBmbGFnczpcbiAgICAgICAgICAgICAgICBvdmVycmlkZS5mbGFncyB8IChoYXNEZXByZWNhdGVkT3ZlcnJpZGVzID8gTm9kZUZsYWdzLkxhenlQcm92aWRlciA6IE5vZGVGbGFncy5Ob25lKSxcbiAgICAgICAgICAgIGRlcHM6IHNwbGl0RGVwc0RzbChvdmVycmlkZS5kZXBzKSxcbiAgICAgICAgICAgIHZhbHVlOiBvdmVycmlkZS52YWx1ZSxcbiAgICAgICAgICAgIGluZGV4OiBkZWYucHJvdmlkZXJzLmxlbmd0aCxcbiAgICAgICAgICB9O1xuICAgICAgICAgIGRlZi5wcm92aWRlcnMucHVzaChwcm92aWRlcik7XG4gICAgICAgICAgZGVmLnByb3ZpZGVyc0J5S2V5W3Rva2VuS2V5KHRva2VuKV0gPSBwcm92aWRlcjtcbiAgICAgICAgfVxuICAgICAgfSk7XG4gICAgfVxuICB9XG59XG5cbmZ1bmN0aW9uIHByb2RDaGVja0FuZFVwZGF0ZU5vZGUoXG4gICAgdmlldzogVmlld0RhdGEsIGNoZWNrSW5kZXg6IG51bWJlciwgYXJnU3R5bGU6IEFyZ3VtZW50VHlwZSwgdjA/OiBhbnksIHYxPzogYW55LCB2Mj86IGFueSxcbiAgICB2Mz86IGFueSwgdjQ/OiBhbnksIHY1PzogYW55LCB2Nj86IGFueSwgdjc/OiBhbnksIHY4PzogYW55LCB2OT86IGFueSk6IGFueSB7XG4gIGNvbnN0IG5vZGVEZWYgPSB2aWV3LmRlZi5ub2Rlc1tjaGVja0luZGV4XTtcbiAgY2hlY2tBbmRVcGRhdGVOb2RlKHZpZXcsIG5vZGVEZWYsIGFyZ1N0eWxlLCB2MCwgdjEsIHYyLCB2MywgdjQsIHY1LCB2NiwgdjcsIHY4LCB2OSk7XG4gIHJldHVybiAobm9kZURlZi5mbGFncyAmIE5vZGVGbGFncy5DYXRQdXJlRXhwcmVzc2lvbikgP1xuICAgICAgYXNQdXJlRXhwcmVzc2lvbkRhdGEodmlldywgY2hlY2tJbmRleCkudmFsdWUgOlxuICAgICAgdW5kZWZpbmVkO1xufVxuXG5mdW5jdGlvbiBwcm9kQ2hlY2tOb0NoYW5nZXNOb2RlKFxuICAgIHZpZXc6IFZpZXdEYXRhLCBjaGVja0luZGV4OiBudW1iZXIsIGFyZ1N0eWxlOiBBcmd1bWVudFR5cGUsIHYwPzogYW55LCB2MT86IGFueSwgdjI/OiBhbnksXG4gICAgdjM/OiBhbnksIHY0PzogYW55LCB2NT86IGFueSwgdjY/OiBhbnksIHY3PzogYW55LCB2OD86IGFueSwgdjk/OiBhbnkpOiBhbnkge1xuICBjb25zdCBub2RlRGVmID0gdmlldy5kZWYubm9kZXNbY2hlY2tJbmRleF07XG4gIGNoZWNrTm9DaGFuZ2VzTm9kZSh2aWV3LCBub2RlRGVmLCBhcmdTdHlsZSwgdjAsIHYxLCB2MiwgdjMsIHY0LCB2NSwgdjYsIHY3LCB2OCwgdjkpO1xuICByZXR1cm4gKG5vZGVEZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuQ2F0UHVyZUV4cHJlc3Npb24pID9cbiAgICAgIGFzUHVyZUV4cHJlc3Npb25EYXRhKHZpZXcsIGNoZWNrSW5kZXgpLnZhbHVlIDpcbiAgICAgIHVuZGVmaW5lZDtcbn1cblxuZnVuY3Rpb24gZGVidWdDaGVja0FuZFVwZGF0ZVZpZXcodmlldzogVmlld0RhdGEpIHtcbiAgcmV0dXJuIGNhbGxXaXRoRGVidWdDb250ZXh0KERlYnVnQWN0aW9uLmRldGVjdENoYW5nZXMsIGNoZWNrQW5kVXBkYXRlVmlldywgbnVsbCwgW3ZpZXddKTtcbn1cblxuZnVuY3Rpb24gZGVidWdDaGVja05vQ2hhbmdlc1ZpZXcodmlldzogVmlld0RhdGEpIHtcbiAgcmV0dXJuIGNhbGxXaXRoRGVidWdDb250ZXh0KERlYnVnQWN0aW9uLmNoZWNrTm9DaGFuZ2VzLCBjaGVja05vQ2hhbmdlc1ZpZXcsIG51bGwsIFt2aWV3XSk7XG59XG5cbmZ1bmN0aW9uIGRlYnVnRGVzdHJveVZpZXcodmlldzogVmlld0RhdGEpIHtcbiAgcmV0dXJuIGNhbGxXaXRoRGVidWdDb250ZXh0KERlYnVnQWN0aW9uLmRlc3Ryb3ksIGRlc3Ryb3lWaWV3LCBudWxsLCBbdmlld10pO1xufVxuXG5lbnVtIERlYnVnQWN0aW9uIHtcbiAgY3JlYXRlLFxuICBkZXRlY3RDaGFuZ2VzLFxuICBjaGVja05vQ2hhbmdlcyxcbiAgZGVzdHJveSxcbiAgaGFuZGxlRXZlbnRcbn1cblxubGV0IF9jdXJyZW50QWN0aW9uOiBEZWJ1Z0FjdGlvbjtcbmxldCBfY3VycmVudFZpZXc6IFZpZXdEYXRhO1xubGV0IF9jdXJyZW50Tm9kZUluZGV4OiBudW1iZXJ8bnVsbDtcblxuZnVuY3Rpb24gZGVidWdTZXRDdXJyZW50Tm9kZSh2aWV3OiBWaWV3RGF0YSwgbm9kZUluZGV4OiBudW1iZXIgfCBudWxsKSB7XG4gIF9jdXJyZW50VmlldyA9IHZpZXc7XG4gIF9jdXJyZW50Tm9kZUluZGV4ID0gbm9kZUluZGV4O1xufVxuXG5mdW5jdGlvbiBkZWJ1Z0hhbmRsZUV2ZW50KHZpZXc6IFZpZXdEYXRhLCBub2RlSW5kZXg6IG51bWJlciwgZXZlbnROYW1lOiBzdHJpbmcsIGV2ZW50OiBhbnkpIHtcbiAgZGVidWdTZXRDdXJyZW50Tm9kZSh2aWV3LCBub2RlSW5kZXgpO1xuICByZXR1cm4gY2FsbFdpdGhEZWJ1Z0NvbnRleHQoXG4gICAgICBEZWJ1Z0FjdGlvbi5oYW5kbGVFdmVudCwgdmlldy5kZWYuaGFuZGxlRXZlbnQsIG51bGwsIFt2aWV3LCBub2RlSW5kZXgsIGV2ZW50TmFtZSwgZXZlbnRdKTtcbn1cblxuZnVuY3Rpb24gZGVidWdVcGRhdGVEaXJlY3RpdmVzKHZpZXc6IFZpZXdEYXRhLCBjaGVja1R5cGU6IENoZWNrVHlwZSkge1xuICBpZiAodmlldy5zdGF0ZSAmIFZpZXdTdGF0ZS5EZXN0cm95ZWQpIHtcbiAgICB0aHJvdyB2aWV3RGVzdHJveWVkRXJyb3IoRGVidWdBY3Rpb25bX2N1cnJlbnRBY3Rpb25dKTtcbiAgfVxuICBkZWJ1Z1NldEN1cnJlbnROb2RlKHZpZXcsIG5leHREaXJlY3RpdmVXaXRoQmluZGluZyh2aWV3LCAwKSk7XG4gIHJldHVybiB2aWV3LmRlZi51cGRhdGVEaXJlY3RpdmVzKGRlYnVnQ2hlY2tEaXJlY3RpdmVzRm4sIHZpZXcpO1xuXG4gIGZ1bmN0aW9uIGRlYnVnQ2hlY2tEaXJlY3RpdmVzRm4oXG4gICAgICB2aWV3OiBWaWV3RGF0YSwgbm9kZUluZGV4OiBudW1iZXIsIGFyZ1N0eWxlOiBBcmd1bWVudFR5cGUsIC4uLnZhbHVlczogYW55W10pIHtcbiAgICBjb25zdCBub2RlRGVmID0gdmlldy5kZWYubm9kZXNbbm9kZUluZGV4XTtcbiAgICBpZiAoY2hlY2tUeXBlID09PSBDaGVja1R5cGUuQ2hlY2tBbmRVcGRhdGUpIHtcbiAgICAgIGRlYnVnQ2hlY2tBbmRVcGRhdGVOb2RlKHZpZXcsIG5vZGVEZWYsIGFyZ1N0eWxlLCB2YWx1ZXMpO1xuICAgIH0gZWxzZSB7XG4gICAgICBkZWJ1Z0NoZWNrTm9DaGFuZ2VzTm9kZSh2aWV3LCBub2RlRGVmLCBhcmdTdHlsZSwgdmFsdWVzKTtcbiAgICB9XG4gICAgaWYgKG5vZGVEZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuVHlwZURpcmVjdGl2ZSkge1xuICAgICAgZGVidWdTZXRDdXJyZW50Tm9kZSh2aWV3LCBuZXh0RGlyZWN0aXZlV2l0aEJpbmRpbmcodmlldywgbm9kZUluZGV4KSk7XG4gICAgfVxuICAgIHJldHVybiAobm9kZURlZi5mbGFncyAmIE5vZGVGbGFncy5DYXRQdXJlRXhwcmVzc2lvbikgP1xuICAgICAgICBhc1B1cmVFeHByZXNzaW9uRGF0YSh2aWV3LCBub2RlRGVmLm5vZGVJbmRleCkudmFsdWUgOlxuICAgICAgICB1bmRlZmluZWQ7XG4gIH1cbn1cblxuZnVuY3Rpb24gZGVidWdVcGRhdGVSZW5kZXJlcih2aWV3OiBWaWV3RGF0YSwgY2hlY2tUeXBlOiBDaGVja1R5cGUpIHtcbiAgaWYgKHZpZXcuc3RhdGUgJiBWaWV3U3RhdGUuRGVzdHJveWVkKSB7XG4gICAgdGhyb3cgdmlld0Rlc3Ryb3llZEVycm9yKERlYnVnQWN0aW9uW19jdXJyZW50QWN0aW9uXSk7XG4gIH1cbiAgZGVidWdTZXRDdXJyZW50Tm9kZSh2aWV3LCBuZXh0UmVuZGVyTm9kZVdpdGhCaW5kaW5nKHZpZXcsIDApKTtcbiAgcmV0dXJuIHZpZXcuZGVmLnVwZGF0ZVJlbmRlcmVyKGRlYnVnQ2hlY2tSZW5kZXJOb2RlRm4sIHZpZXcpO1xuXG4gIGZ1bmN0aW9uIGRlYnVnQ2hlY2tSZW5kZXJOb2RlRm4oXG4gICAgICB2aWV3OiBWaWV3RGF0YSwgbm9kZUluZGV4OiBudW1iZXIsIGFyZ1N0eWxlOiBBcmd1bWVudFR5cGUsIC4uLnZhbHVlczogYW55W10pIHtcbiAgICBjb25zdCBub2RlRGVmID0gdmlldy5kZWYubm9kZXNbbm9kZUluZGV4XTtcbiAgICBpZiAoY2hlY2tUeXBlID09PSBDaGVja1R5cGUuQ2hlY2tBbmRVcGRhdGUpIHtcbiAgICAgIGRlYnVnQ2hlY2tBbmRVcGRhdGVOb2RlKHZpZXcsIG5vZGVEZWYsIGFyZ1N0eWxlLCB2YWx1ZXMpO1xuICAgIH0gZWxzZSB7XG4gICAgICBkZWJ1Z0NoZWNrTm9DaGFuZ2VzTm9kZSh2aWV3LCBub2RlRGVmLCBhcmdTdHlsZSwgdmFsdWVzKTtcbiAgICB9XG4gICAgaWYgKG5vZGVEZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuQ2F0UmVuZGVyTm9kZSkge1xuICAgICAgZGVidWdTZXRDdXJyZW50Tm9kZSh2aWV3LCBuZXh0UmVuZGVyTm9kZVdpdGhCaW5kaW5nKHZpZXcsIG5vZGVJbmRleCkpO1xuICAgIH1cbiAgICByZXR1cm4gKG5vZGVEZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuQ2F0UHVyZUV4cHJlc3Npb24pID9cbiAgICAgICAgYXNQdXJlRXhwcmVzc2lvbkRhdGEodmlldywgbm9kZURlZi5ub2RlSW5kZXgpLnZhbHVlIDpcbiAgICAgICAgdW5kZWZpbmVkO1xuICB9XG59XG5cbmZ1bmN0aW9uIGRlYnVnQ2hlY2tBbmRVcGRhdGVOb2RlKFxuICAgIHZpZXc6IFZpZXdEYXRhLCBub2RlRGVmOiBOb2RlRGVmLCBhcmdTdHlsZTogQXJndW1lbnRUeXBlLCBnaXZlblZhbHVlczogYW55W10pOiB2b2lkIHtcbiAgY29uc3QgY2hhbmdlZCA9ICg8YW55PmNoZWNrQW5kVXBkYXRlTm9kZSkodmlldywgbm9kZURlZiwgYXJnU3R5bGUsIC4uLmdpdmVuVmFsdWVzKTtcbiAgaWYgKGNoYW5nZWQpIHtcbiAgICBjb25zdCB2YWx1ZXMgPSBhcmdTdHlsZSA9PT0gQXJndW1lbnRUeXBlLkR5bmFtaWMgPyBnaXZlblZhbHVlc1swXSA6IGdpdmVuVmFsdWVzO1xuICAgIGlmIChub2RlRGVmLmZsYWdzICYgTm9kZUZsYWdzLlR5cGVEaXJlY3RpdmUpIHtcbiAgICAgIGNvbnN0IGJpbmRpbmdWYWx1ZXM6IHtba2V5OiBzdHJpbmddOiBzdHJpbmd9ID0ge307XG4gICAgICBmb3IgKGxldCBpID0gMDsgaSA8IG5vZGVEZWYuYmluZGluZ3MubGVuZ3RoOyBpKyspIHtcbiAgICAgICAgY29uc3QgYmluZGluZyA9IG5vZGVEZWYuYmluZGluZ3NbaV07XG4gICAgICAgIGNvbnN0IHZhbHVlID0gdmFsdWVzW2ldO1xuICAgICAgICBpZiAoYmluZGluZy5mbGFncyAmIEJpbmRpbmdGbGFncy5UeXBlUHJvcGVydHkpIHtcbiAgICAgICAgICBiaW5kaW5nVmFsdWVzW25vcm1hbGl6ZURlYnVnQmluZGluZ05hbWUoYmluZGluZy5ub25NaW5pZmllZE5hbWUgISldID1cbiAgICAgICAgICAgICAgbm9ybWFsaXplRGVidWdCaW5kaW5nVmFsdWUodmFsdWUpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgICBjb25zdCBlbERlZiA9IG5vZGVEZWYucGFyZW50ICE7XG4gICAgICBjb25zdCBlbCA9IGFzRWxlbWVudERhdGEodmlldywgZWxEZWYubm9kZUluZGV4KS5yZW5kZXJFbGVtZW50O1xuICAgICAgaWYgKCFlbERlZi5lbGVtZW50ICEubmFtZSkge1xuICAgICAgICAvLyBhIGNvbW1lbnQuXG4gICAgICAgIHZpZXcucmVuZGVyZXIuc2V0VmFsdWUoZWwsIGBiaW5kaW5ncz0ke0pTT04uc3RyaW5naWZ5KGJpbmRpbmdWYWx1ZXMsIG51bGwsIDIpfWApO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgLy8gYSByZWd1bGFyIGVsZW1lbnQuXG4gICAgICAgIGZvciAobGV0IGF0dHIgaW4gYmluZGluZ1ZhbHVlcykge1xuICAgICAgICAgIGNvbnN0IHZhbHVlID0gYmluZGluZ1ZhbHVlc1thdHRyXTtcbiAgICAgICAgICBpZiAodmFsdWUgIT0gbnVsbCkge1xuICAgICAgICAgICAgdmlldy5yZW5kZXJlci5zZXRBdHRyaWJ1dGUoZWwsIGF0dHIsIHZhbHVlKTtcbiAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgdmlldy5yZW5kZXJlci5yZW1vdmVBdHRyaWJ1dGUoZWwsIGF0dHIpO1xuICAgICAgICAgIH1cbiAgICAgICAgfVxuICAgICAgfVxuICAgIH1cbiAgfVxufVxuXG5mdW5jdGlvbiBkZWJ1Z0NoZWNrTm9DaGFuZ2VzTm9kZShcbiAgICB2aWV3OiBWaWV3RGF0YSwgbm9kZURlZjogTm9kZURlZiwgYXJnU3R5bGU6IEFyZ3VtZW50VHlwZSwgdmFsdWVzOiBhbnlbXSk6IHZvaWQge1xuICAoPGFueT5jaGVja05vQ2hhbmdlc05vZGUpKHZpZXcsIG5vZGVEZWYsIGFyZ1N0eWxlLCAuLi52YWx1ZXMpO1xufVxuXG5mdW5jdGlvbiBuZXh0RGlyZWN0aXZlV2l0aEJpbmRpbmcodmlldzogVmlld0RhdGEsIG5vZGVJbmRleDogbnVtYmVyKTogbnVtYmVyfG51bGwge1xuICBmb3IgKGxldCBpID0gbm9kZUluZGV4OyBpIDwgdmlldy5kZWYubm9kZXMubGVuZ3RoOyBpKyspIHtcbiAgICBjb25zdCBub2RlRGVmID0gdmlldy5kZWYubm9kZXNbaV07XG4gICAgaWYgKG5vZGVEZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuVHlwZURpcmVjdGl2ZSAmJiBub2RlRGVmLmJpbmRpbmdzICYmIG5vZGVEZWYuYmluZGluZ3MubGVuZ3RoKSB7XG4gICAgICByZXR1cm4gaTtcbiAgICB9XG4gIH1cbiAgcmV0dXJuIG51bGw7XG59XG5cbmZ1bmN0aW9uIG5leHRSZW5kZXJOb2RlV2l0aEJpbmRpbmcodmlldzogVmlld0RhdGEsIG5vZGVJbmRleDogbnVtYmVyKTogbnVtYmVyfG51bGwge1xuICBmb3IgKGxldCBpID0gbm9kZUluZGV4OyBpIDwgdmlldy5kZWYubm9kZXMubGVuZ3RoOyBpKyspIHtcbiAgICBjb25zdCBub2RlRGVmID0gdmlldy5kZWYubm9kZXNbaV07XG4gICAgaWYgKChub2RlRGVmLmZsYWdzICYgTm9kZUZsYWdzLkNhdFJlbmRlck5vZGUpICYmIG5vZGVEZWYuYmluZGluZ3MgJiYgbm9kZURlZi5iaW5kaW5ncy5sZW5ndGgpIHtcbiAgICAgIHJldHVybiBpO1xuICAgIH1cbiAgfVxuICByZXR1cm4gbnVsbDtcbn1cblxuY2xhc3MgRGVidWdDb250ZXh0XyBpbXBsZW1lbnRzIERlYnVnQ29udGV4dCB7XG4gIHByaXZhdGUgbm9kZURlZjogTm9kZURlZjtcbiAgcHJpdmF0ZSBlbFZpZXc6IFZpZXdEYXRhO1xuICBwcml2YXRlIGVsRGVmOiBOb2RlRGVmO1xuXG4gIGNvbnN0cnVjdG9yKHB1YmxpYyB2aWV3OiBWaWV3RGF0YSwgcHVibGljIG5vZGVJbmRleDogbnVtYmVyfG51bGwpIHtcbiAgICBpZiAobm9kZUluZGV4ID09IG51bGwpIHtcbiAgICAgIHRoaXMubm9kZUluZGV4ID0gbm9kZUluZGV4ID0gMDtcbiAgICB9XG4gICAgdGhpcy5ub2RlRGVmID0gdmlldy5kZWYubm9kZXNbbm9kZUluZGV4XTtcbiAgICBsZXQgZWxEZWYgPSB0aGlzLm5vZGVEZWY7XG4gICAgbGV0IGVsVmlldyA9IHZpZXc7XG4gICAgd2hpbGUgKGVsRGVmICYmIChlbERlZi5mbGFncyAmIE5vZGVGbGFncy5UeXBlRWxlbWVudCkgPT09IDApIHtcbiAgICAgIGVsRGVmID0gZWxEZWYucGFyZW50ICE7XG4gICAgfVxuICAgIGlmICghZWxEZWYpIHtcbiAgICAgIHdoaWxlICghZWxEZWYgJiYgZWxWaWV3KSB7XG4gICAgICAgIGVsRGVmID0gdmlld1BhcmVudEVsKGVsVmlldykgITtcbiAgICAgICAgZWxWaWV3ID0gZWxWaWV3LnBhcmVudCAhO1xuICAgICAgfVxuICAgIH1cbiAgICB0aGlzLmVsRGVmID0gZWxEZWY7XG4gICAgdGhpcy5lbFZpZXcgPSBlbFZpZXc7XG4gIH1cblxuICBwcml2YXRlIGdldCBlbE9yQ29tcFZpZXcoKSB7XG4gICAgLy8gSGFzIHRvIGJlIGRvbmUgbGF6aWx5IGFzIHdlIHVzZSB0aGUgRGVidWdDb250ZXh0IGFsc28gZHVyaW5nIGNyZWF0aW9uIG9mIGVsZW1lbnRzLi4uXG4gICAgcmV0dXJuIGFzRWxlbWVudERhdGEodGhpcy5lbFZpZXcsIHRoaXMuZWxEZWYubm9kZUluZGV4KS5jb21wb25lbnRWaWV3IHx8IHRoaXMudmlldztcbiAgfVxuXG4gIGdldCBpbmplY3RvcigpOiBJbmplY3RvciB7IHJldHVybiBjcmVhdGVJbmplY3Rvcih0aGlzLmVsVmlldywgdGhpcy5lbERlZik7IH1cblxuICBnZXQgY29tcG9uZW50KCk6IGFueSB7IHJldHVybiB0aGlzLmVsT3JDb21wVmlldy5jb21wb25lbnQ7IH1cblxuICBnZXQgY29udGV4dCgpOiBhbnkgeyByZXR1cm4gdGhpcy5lbE9yQ29tcFZpZXcuY29udGV4dDsgfVxuXG4gIGdldCBwcm92aWRlclRva2VucygpOiBhbnlbXSB7XG4gICAgY29uc3QgdG9rZW5zOiBhbnlbXSA9IFtdO1xuICAgIGlmICh0aGlzLmVsRGVmKSB7XG4gICAgICBmb3IgKGxldCBpID0gdGhpcy5lbERlZi5ub2RlSW5kZXggKyAxOyBpIDw9IHRoaXMuZWxEZWYubm9kZUluZGV4ICsgdGhpcy5lbERlZi5jaGlsZENvdW50O1xuICAgICAgICAgICBpKyspIHtcbiAgICAgICAgY29uc3QgY2hpbGREZWYgPSB0aGlzLmVsVmlldy5kZWYubm9kZXNbaV07XG4gICAgICAgIGlmIChjaGlsZERlZi5mbGFncyAmIE5vZGVGbGFncy5DYXRQcm92aWRlcikge1xuICAgICAgICAgIHRva2Vucy5wdXNoKGNoaWxkRGVmLnByb3ZpZGVyICEudG9rZW4pO1xuICAgICAgICB9XG4gICAgICAgIGkgKz0gY2hpbGREZWYuY2hpbGRDb3VudDtcbiAgICAgIH1cbiAgICB9XG4gICAgcmV0dXJuIHRva2VucztcbiAgfVxuXG4gIGdldCByZWZlcmVuY2VzKCk6IHtba2V5OiBzdHJpbmddOiBhbnl9IHtcbiAgICBjb25zdCByZWZlcmVuY2VzOiB7W2tleTogc3RyaW5nXTogYW55fSA9IHt9O1xuICAgIGlmICh0aGlzLmVsRGVmKSB7XG4gICAgICBjb2xsZWN0UmVmZXJlbmNlcyh0aGlzLmVsVmlldywgdGhpcy5lbERlZiwgcmVmZXJlbmNlcyk7XG5cbiAgICAgIGZvciAobGV0IGkgPSB0aGlzLmVsRGVmLm5vZGVJbmRleCArIDE7IGkgPD0gdGhpcy5lbERlZi5ub2RlSW5kZXggKyB0aGlzLmVsRGVmLmNoaWxkQ291bnQ7XG4gICAgICAgICAgIGkrKykge1xuICAgICAgICBjb25zdCBjaGlsZERlZiA9IHRoaXMuZWxWaWV3LmRlZi5ub2Rlc1tpXTtcbiAgICAgICAgaWYgKGNoaWxkRGVmLmZsYWdzICYgTm9kZUZsYWdzLkNhdFByb3ZpZGVyKSB7XG4gICAgICAgICAgY29sbGVjdFJlZmVyZW5jZXModGhpcy5lbFZpZXcsIGNoaWxkRGVmLCByZWZlcmVuY2VzKTtcbiAgICAgICAgfVxuICAgICAgICBpICs9IGNoaWxkRGVmLmNoaWxkQ291bnQ7XG4gICAgICB9XG4gICAgfVxuICAgIHJldHVybiByZWZlcmVuY2VzO1xuICB9XG5cbiAgZ2V0IGNvbXBvbmVudFJlbmRlckVsZW1lbnQoKSB7XG4gICAgY29uc3QgZWxEYXRhID0gZmluZEhvc3RFbGVtZW50KHRoaXMuZWxPckNvbXBWaWV3KTtcbiAgICByZXR1cm4gZWxEYXRhID8gZWxEYXRhLnJlbmRlckVsZW1lbnQgOiB1bmRlZmluZWQ7XG4gIH1cblxuICBnZXQgcmVuZGVyTm9kZSgpOiBhbnkge1xuICAgIHJldHVybiB0aGlzLm5vZGVEZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuVHlwZVRleHQgPyByZW5kZXJOb2RlKHRoaXMudmlldywgdGhpcy5ub2RlRGVmKSA6XG4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJlbmRlck5vZGUodGhpcy5lbFZpZXcsIHRoaXMuZWxEZWYpO1xuICB9XG5cbiAgbG9nRXJyb3IoY29uc29sZTogQ29uc29sZSwgLi4udmFsdWVzOiBhbnlbXSkge1xuICAgIGxldCBsb2dWaWV3RGVmOiBWaWV3RGVmaW5pdGlvbjtcbiAgICBsZXQgbG9nTm9kZUluZGV4OiBudW1iZXI7XG4gICAgaWYgKHRoaXMubm9kZURlZi5mbGFncyAmIE5vZGVGbGFncy5UeXBlVGV4dCkge1xuICAgICAgbG9nVmlld0RlZiA9IHRoaXMudmlldy5kZWY7XG4gICAgICBsb2dOb2RlSW5kZXggPSB0aGlzLm5vZGVEZWYubm9kZUluZGV4O1xuICAgIH0gZWxzZSB7XG4gICAgICBsb2dWaWV3RGVmID0gdGhpcy5lbFZpZXcuZGVmO1xuICAgICAgbG9nTm9kZUluZGV4ID0gdGhpcy5lbERlZi5ub2RlSW5kZXg7XG4gICAgfVxuICAgIC8vIE5vdGU6IHdlIG9ubHkgZ2VuZXJhdGUgYSBsb2cgZnVuY3Rpb24gZm9yIHRleHQgYW5kIGVsZW1lbnQgbm9kZXNcbiAgICAvLyB0byBtYWtlIHRoZSBnZW5lcmF0ZWQgY29kZSBhcyBzbWFsbCBhcyBwb3NzaWJsZS5cbiAgICBjb25zdCByZW5kZXJOb2RlSW5kZXggPSBnZXRSZW5kZXJOb2RlSW5kZXgobG9nVmlld0RlZiwgbG9nTm9kZUluZGV4KTtcbiAgICBsZXQgY3VyclJlbmRlck5vZGVJbmRleCA9IC0xO1xuICAgIGxldCBub2RlTG9nZ2VyOiBOb2RlTG9nZ2VyID0gKCkgPT4ge1xuICAgICAgY3VyclJlbmRlck5vZGVJbmRleCsrO1xuICAgICAgaWYgKGN1cnJSZW5kZXJOb2RlSW5kZXggPT09IHJlbmRlck5vZGVJbmRleCkge1xuICAgICAgICByZXR1cm4gY29uc29sZS5lcnJvci5iaW5kKGNvbnNvbGUsIC4uLnZhbHVlcyk7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICByZXR1cm4gTk9PUDtcbiAgICAgIH1cbiAgICB9O1xuICAgIGxvZ1ZpZXdEZWYuZmFjdG9yeSAhKG5vZGVMb2dnZXIpO1xuICAgIGlmIChjdXJyUmVuZGVyTm9kZUluZGV4IDwgcmVuZGVyTm9kZUluZGV4KSB7XG4gICAgICBjb25zb2xlLmVycm9yKCdJbGxlZ2FsIHN0YXRlOiB0aGUgVmlld0RlZmluaXRpb25GYWN0b3J5IGRpZCBub3QgY2FsbCB0aGUgbG9nZ2VyIScpO1xuICAgICAgKDxhbnk+Y29uc29sZS5lcnJvcikoLi4udmFsdWVzKTtcbiAgICB9XG4gIH1cbn1cblxuZnVuY3Rpb24gZ2V0UmVuZGVyTm9kZUluZGV4KHZpZXdEZWY6IFZpZXdEZWZpbml0aW9uLCBub2RlSW5kZXg6IG51bWJlcik6IG51bWJlciB7XG4gIGxldCByZW5kZXJOb2RlSW5kZXggPSAtMTtcbiAgZm9yIChsZXQgaSA9IDA7IGkgPD0gbm9kZUluZGV4OyBpKyspIHtcbiAgICBjb25zdCBub2RlRGVmID0gdmlld0RlZi5ub2Rlc1tpXTtcbiAgICBpZiAobm9kZURlZi5mbGFncyAmIE5vZGVGbGFncy5DYXRSZW5kZXJOb2RlKSB7XG4gICAgICByZW5kZXJOb2RlSW5kZXgrKztcbiAgICB9XG4gIH1cbiAgcmV0dXJuIHJlbmRlck5vZGVJbmRleDtcbn1cblxuZnVuY3Rpb24gZmluZEhvc3RFbGVtZW50KHZpZXc6IFZpZXdEYXRhKTogRWxlbWVudERhdGF8bnVsbCB7XG4gIHdoaWxlICh2aWV3ICYmICFpc0NvbXBvbmVudFZpZXcodmlldykpIHtcbiAgICB2aWV3ID0gdmlldy5wYXJlbnQgITtcbiAgfVxuICBpZiAodmlldy5wYXJlbnQpIHtcbiAgICByZXR1cm4gYXNFbGVtZW50RGF0YSh2aWV3LnBhcmVudCwgdmlld1BhcmVudEVsKHZpZXcpICEubm9kZUluZGV4KTtcbiAgfVxuICByZXR1cm4gbnVsbDtcbn1cblxuZnVuY3Rpb24gY29sbGVjdFJlZmVyZW5jZXModmlldzogVmlld0RhdGEsIG5vZGVEZWY6IE5vZGVEZWYsIHJlZmVyZW5jZXM6IHtba2V5OiBzdHJpbmddOiBhbnl9KSB7XG4gIGZvciAobGV0IHJlZk5hbWUgaW4gbm9kZURlZi5yZWZlcmVuY2VzKSB7XG4gICAgcmVmZXJlbmNlc1tyZWZOYW1lXSA9IGdldFF1ZXJ5VmFsdWUodmlldywgbm9kZURlZiwgbm9kZURlZi5yZWZlcmVuY2VzW3JlZk5hbWVdKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBjYWxsV2l0aERlYnVnQ29udGV4dChhY3Rpb246IERlYnVnQWN0aW9uLCBmbjogYW55LCBzZWxmOiBhbnksIGFyZ3M6IGFueVtdKSB7XG4gIGNvbnN0IG9sZEFjdGlvbiA9IF9jdXJyZW50QWN0aW9uO1xuICBjb25zdCBvbGRWaWV3ID0gX2N1cnJlbnRWaWV3O1xuICBjb25zdCBvbGROb2RlSW5kZXggPSBfY3VycmVudE5vZGVJbmRleDtcbiAgdHJ5IHtcbiAgICBfY3VycmVudEFjdGlvbiA9IGFjdGlvbjtcbiAgICBjb25zdCByZXN1bHQgPSBmbi5hcHBseShzZWxmLCBhcmdzKTtcbiAgICBfY3VycmVudFZpZXcgPSBvbGRWaWV3O1xuICAgIF9jdXJyZW50Tm9kZUluZGV4ID0gb2xkTm9kZUluZGV4O1xuICAgIF9jdXJyZW50QWN0aW9uID0gb2xkQWN0aW9uO1xuICAgIHJldHVybiByZXN1bHQ7XG4gIH0gY2F0Y2ggKGUpIHtcbiAgICBpZiAoaXNWaWV3RGVidWdFcnJvcihlKSB8fCAhX2N1cnJlbnRWaWV3KSB7XG4gICAgICB0aHJvdyBlO1xuICAgIH1cbiAgICB0aHJvdyB2aWV3V3JhcHBlZERlYnVnRXJyb3IoZSwgZ2V0Q3VycmVudERlYnVnQ29udGV4dCgpICEpO1xuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRDdXJyZW50RGVidWdDb250ZXh0KCk6IERlYnVnQ29udGV4dHxudWxsIHtcbiAgcmV0dXJuIF9jdXJyZW50VmlldyA/IG5ldyBEZWJ1Z0NvbnRleHRfKF9jdXJyZW50VmlldywgX2N1cnJlbnROb2RlSW5kZXgpIDogbnVsbDtcbn1cblxuZXhwb3J0IGNsYXNzIERlYnVnUmVuZGVyZXJGYWN0b3J5MiBpbXBsZW1lbnRzIFJlbmRlcmVyRmFjdG9yeTIge1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIGRlbGVnYXRlOiBSZW5kZXJlckZhY3RvcnkyKSB7fVxuXG4gIGNyZWF0ZVJlbmRlcmVyKGVsZW1lbnQ6IGFueSwgcmVuZGVyRGF0YTogUmVuZGVyZXJUeXBlMnxudWxsKTogUmVuZGVyZXIyIHtcbiAgICByZXR1cm4gbmV3IERlYnVnUmVuZGVyZXIyKHRoaXMuZGVsZWdhdGUuY3JlYXRlUmVuZGVyZXIoZWxlbWVudCwgcmVuZGVyRGF0YSkpO1xuICB9XG5cbiAgYmVnaW4oKSB7XG4gICAgaWYgKHRoaXMuZGVsZWdhdGUuYmVnaW4pIHtcbiAgICAgIHRoaXMuZGVsZWdhdGUuYmVnaW4oKTtcbiAgICB9XG4gIH1cbiAgZW5kKCkge1xuICAgIGlmICh0aGlzLmRlbGVnYXRlLmVuZCkge1xuICAgICAgdGhpcy5kZWxlZ2F0ZS5lbmQoKTtcbiAgICB9XG4gIH1cblxuICB3aGVuUmVuZGVyaW5nRG9uZSgpOiBQcm9taXNlPGFueT4ge1xuICAgIGlmICh0aGlzLmRlbGVnYXRlLndoZW5SZW5kZXJpbmdEb25lKSB7XG4gICAgICByZXR1cm4gdGhpcy5kZWxlZ2F0ZS53aGVuUmVuZGVyaW5nRG9uZSgpO1xuICAgIH1cbiAgICByZXR1cm4gUHJvbWlzZS5yZXNvbHZlKG51bGwpO1xuICB9XG59XG5cbmV4cG9ydCBjbGFzcyBEZWJ1Z1JlbmRlcmVyMiBpbXBsZW1lbnRzIFJlbmRlcmVyMiB7XG4gIHJlYWRvbmx5IGRhdGE6IHtba2V5OiBzdHJpbmddOiBhbnl9O1xuXG4gIHByaXZhdGUgY3JlYXRlRGVidWdDb250ZXh0KG5hdGl2ZUVsZW1lbnQ6IGFueSkgeyByZXR1cm4gdGhpcy5kZWJ1Z0NvbnRleHRGYWN0b3J5KG5hdGl2ZUVsZW1lbnQpOyB9XG5cbiAgLyoqXG4gICAqIEZhY3RvcnkgZnVuY3Rpb24gdXNlZCB0byBjcmVhdGUgYSBgRGVidWdDb250ZXh0YCB3aGVuIGEgbm9kZSBpcyBjcmVhdGVkLlxuICAgKlxuICAgKiBUaGUgYERlYnVnQ29udGV4dGAgYWxsb3dzIHRvIHJldHJpZXZlIGluZm9ybWF0aW9uIGFib3V0IHRoZSBub2RlcyB0aGF0IGFyZSB1c2VmdWwgaW4gdGVzdHMuXG4gICAqXG4gICAqIFRoZSBmYWN0b3J5IGlzIGNvbmZpZ3VyYWJsZSBzbyB0aGF0IHRoZSBgRGVidWdSZW5kZXJlcjJgIGNvdWxkIGluc3RhbnRpYXRlIGVpdGhlciBhIFZpZXcgRW5naW5lXG4gICAqIG9yIGEgUmVuZGVyIGNvbnRleHQuXG4gICAqL1xuICBkZWJ1Z0NvbnRleHRGYWN0b3J5OiAobmF0aXZlRWxlbWVudD86IGFueSkgPT4gRGVidWdDb250ZXh0IHwgbnVsbCA9IGdldEN1cnJlbnREZWJ1Z0NvbnRleHQ7XG5cbiAgY29uc3RydWN0b3IocHJpdmF0ZSBkZWxlZ2F0ZTogUmVuZGVyZXIyKSB7IHRoaXMuZGF0YSA9IHRoaXMuZGVsZWdhdGUuZGF0YTsgfVxuXG4gIGRlc3Ryb3lOb2RlKG5vZGU6IGFueSkge1xuICAgIGNvbnN0IGRlYnVnTm9kZSA9IGdldERlYnVnTm9kZShub2RlKSAhO1xuICAgIHJlbW92ZURlYnVnTm9kZUZyb21JbmRleChkZWJ1Z05vZGUpO1xuICAgIGlmIChkZWJ1Z05vZGUgaW5zdGFuY2VvZiBEZWJ1Z05vZGVfX1BSRV9SM19fKSB7XG4gICAgICBkZWJ1Z05vZGUubGlzdGVuZXJzLmxlbmd0aCA9IDA7XG4gICAgfVxuICAgIGlmICh0aGlzLmRlbGVnYXRlLmRlc3Ryb3lOb2RlKSB7XG4gICAgICB0aGlzLmRlbGVnYXRlLmRlc3Ryb3lOb2RlKG5vZGUpO1xuICAgIH1cbiAgfVxuXG4gIGRlc3Ryb3koKSB7IHRoaXMuZGVsZWdhdGUuZGVzdHJveSgpOyB9XG5cbiAgY3JlYXRlRWxlbWVudChuYW1lOiBzdHJpbmcsIG5hbWVzcGFjZT86IHN0cmluZyk6IGFueSB7XG4gICAgY29uc3QgZWwgPSB0aGlzLmRlbGVnYXRlLmNyZWF0ZUVsZW1lbnQobmFtZSwgbmFtZXNwYWNlKTtcbiAgICBjb25zdCBkZWJ1Z0N0eCA9IHRoaXMuY3JlYXRlRGVidWdDb250ZXh0KGVsKTtcbiAgICBpZiAoZGVidWdDdHgpIHtcbiAgICAgIGNvbnN0IGRlYnVnRWwgPSBuZXcgRGVidWdFbGVtZW50X19QUkVfUjNfXyhlbCwgbnVsbCwgZGVidWdDdHgpO1xuICAgICAgKGRlYnVnRWwgYXN7bmFtZTogc3RyaW5nfSkubmFtZSA9IG5hbWU7XG4gICAgICBpbmRleERlYnVnTm9kZShkZWJ1Z0VsKTtcbiAgICB9XG4gICAgcmV0dXJuIGVsO1xuICB9XG5cbiAgY3JlYXRlQ29tbWVudCh2YWx1ZTogc3RyaW5nKTogYW55IHtcbiAgICBjb25zdCBjb21tZW50ID0gdGhpcy5kZWxlZ2F0ZS5jcmVhdGVDb21tZW50KHZhbHVlKTtcbiAgICBjb25zdCBkZWJ1Z0N0eCA9IHRoaXMuY3JlYXRlRGVidWdDb250ZXh0KGNvbW1lbnQpO1xuICAgIGlmIChkZWJ1Z0N0eCkge1xuICAgICAgaW5kZXhEZWJ1Z05vZGUobmV3IERlYnVnTm9kZV9fUFJFX1IzX18oY29tbWVudCwgbnVsbCwgZGVidWdDdHgpKTtcbiAgICB9XG4gICAgcmV0dXJuIGNvbW1lbnQ7XG4gIH1cblxuICBjcmVhdGVUZXh0KHZhbHVlOiBzdHJpbmcpOiBhbnkge1xuICAgIGNvbnN0IHRleHQgPSB0aGlzLmRlbGVnYXRlLmNyZWF0ZVRleHQodmFsdWUpO1xuICAgIGNvbnN0IGRlYnVnQ3R4ID0gdGhpcy5jcmVhdGVEZWJ1Z0NvbnRleHQodGV4dCk7XG4gICAgaWYgKGRlYnVnQ3R4KSB7XG4gICAgICBpbmRleERlYnVnTm9kZShuZXcgRGVidWdOb2RlX19QUkVfUjNfXyh0ZXh0LCBudWxsLCBkZWJ1Z0N0eCkpO1xuICAgIH1cbiAgICByZXR1cm4gdGV4dDtcbiAgfVxuXG4gIGFwcGVuZENoaWxkKHBhcmVudDogYW55LCBuZXdDaGlsZDogYW55KTogdm9pZCB7XG4gICAgY29uc3QgZGVidWdFbCA9IGdldERlYnVnTm9kZShwYXJlbnQpO1xuICAgIGNvbnN0IGRlYnVnQ2hpbGRFbCA9IGdldERlYnVnTm9kZShuZXdDaGlsZCk7XG4gICAgaWYgKGRlYnVnRWwgJiYgZGVidWdDaGlsZEVsICYmIGRlYnVnRWwgaW5zdGFuY2VvZiBEZWJ1Z0VsZW1lbnRfX1BSRV9SM19fKSB7XG4gICAgICBkZWJ1Z0VsLmFkZENoaWxkKGRlYnVnQ2hpbGRFbCk7XG4gICAgfVxuICAgIHRoaXMuZGVsZWdhdGUuYXBwZW5kQ2hpbGQocGFyZW50LCBuZXdDaGlsZCk7XG4gIH1cblxuICBpbnNlcnRCZWZvcmUocGFyZW50OiBhbnksIG5ld0NoaWxkOiBhbnksIHJlZkNoaWxkOiBhbnkpOiB2b2lkIHtcbiAgICBjb25zdCBkZWJ1Z0VsID0gZ2V0RGVidWdOb2RlKHBhcmVudCk7XG4gICAgY29uc3QgZGVidWdDaGlsZEVsID0gZ2V0RGVidWdOb2RlKG5ld0NoaWxkKTtcbiAgICBjb25zdCBkZWJ1Z1JlZkVsID0gZ2V0RGVidWdOb2RlKHJlZkNoaWxkKSAhO1xuICAgIGlmIChkZWJ1Z0VsICYmIGRlYnVnQ2hpbGRFbCAmJiBkZWJ1Z0VsIGluc3RhbmNlb2YgRGVidWdFbGVtZW50X19QUkVfUjNfXykge1xuICAgICAgZGVidWdFbC5pbnNlcnRCZWZvcmUoZGVidWdSZWZFbCwgZGVidWdDaGlsZEVsKTtcbiAgICB9XG5cbiAgICB0aGlzLmRlbGVnYXRlLmluc2VydEJlZm9yZShwYXJlbnQsIG5ld0NoaWxkLCByZWZDaGlsZCk7XG4gIH1cblxuICByZW1vdmVDaGlsZChwYXJlbnQ6IGFueSwgb2xkQ2hpbGQ6IGFueSk6IHZvaWQge1xuICAgIGNvbnN0IGRlYnVnRWwgPSBnZXREZWJ1Z05vZGUocGFyZW50KTtcbiAgICBjb25zdCBkZWJ1Z0NoaWxkRWwgPSBnZXREZWJ1Z05vZGUob2xkQ2hpbGQpO1xuICAgIGlmIChkZWJ1Z0VsICYmIGRlYnVnQ2hpbGRFbCAmJiBkZWJ1Z0VsIGluc3RhbmNlb2YgRGVidWdFbGVtZW50X19QUkVfUjNfXykge1xuICAgICAgZGVidWdFbC5yZW1vdmVDaGlsZChkZWJ1Z0NoaWxkRWwpO1xuICAgIH1cbiAgICB0aGlzLmRlbGVnYXRlLnJlbW92ZUNoaWxkKHBhcmVudCwgb2xkQ2hpbGQpO1xuICB9XG5cbiAgc2VsZWN0Um9vdEVsZW1lbnQoc2VsZWN0b3JPck5vZGU6IHN0cmluZ3xhbnksIHByZXNlcnZlQ29udGVudD86IGJvb2xlYW4pOiBhbnkge1xuICAgIGNvbnN0IGVsID0gdGhpcy5kZWxlZ2F0ZS5zZWxlY3RSb290RWxlbWVudChzZWxlY3Rvck9yTm9kZSwgcHJlc2VydmVDb250ZW50KTtcbiAgICBjb25zdCBkZWJ1Z0N0eCA9IGdldEN1cnJlbnREZWJ1Z0NvbnRleHQoKTtcbiAgICBpZiAoZGVidWdDdHgpIHtcbiAgICAgIGluZGV4RGVidWdOb2RlKG5ldyBEZWJ1Z0VsZW1lbnRfX1BSRV9SM19fKGVsLCBudWxsLCBkZWJ1Z0N0eCkpO1xuICAgIH1cbiAgICByZXR1cm4gZWw7XG4gIH1cblxuICBzZXRBdHRyaWJ1dGUoZWw6IGFueSwgbmFtZTogc3RyaW5nLCB2YWx1ZTogc3RyaW5nLCBuYW1lc3BhY2U/OiBzdHJpbmcpOiB2b2lkIHtcbiAgICBjb25zdCBkZWJ1Z0VsID0gZ2V0RGVidWdOb2RlKGVsKTtcbiAgICBpZiAoZGVidWdFbCAmJiBkZWJ1Z0VsIGluc3RhbmNlb2YgRGVidWdFbGVtZW50X19QUkVfUjNfXykge1xuICAgICAgY29uc3QgZnVsbE5hbWUgPSBuYW1lc3BhY2UgPyBuYW1lc3BhY2UgKyAnOicgKyBuYW1lIDogbmFtZTtcbiAgICAgIGRlYnVnRWwuYXR0cmlidXRlc1tmdWxsTmFtZV0gPSB2YWx1ZTtcbiAgICB9XG4gICAgdGhpcy5kZWxlZ2F0ZS5zZXRBdHRyaWJ1dGUoZWwsIG5hbWUsIHZhbHVlLCBuYW1lc3BhY2UpO1xuICB9XG5cbiAgcmVtb3ZlQXR0cmlidXRlKGVsOiBhbnksIG5hbWU6IHN0cmluZywgbmFtZXNwYWNlPzogc3RyaW5nKTogdm9pZCB7XG4gICAgY29uc3QgZGVidWdFbCA9IGdldERlYnVnTm9kZShlbCk7XG4gICAgaWYgKGRlYnVnRWwgJiYgZGVidWdFbCBpbnN0YW5jZW9mIERlYnVnRWxlbWVudF9fUFJFX1IzX18pIHtcbiAgICAgIGNvbnN0IGZ1bGxOYW1lID0gbmFtZXNwYWNlID8gbmFtZXNwYWNlICsgJzonICsgbmFtZSA6IG5hbWU7XG4gICAgICBkZWJ1Z0VsLmF0dHJpYnV0ZXNbZnVsbE5hbWVdID0gbnVsbDtcbiAgICB9XG4gICAgdGhpcy5kZWxlZ2F0ZS5yZW1vdmVBdHRyaWJ1dGUoZWwsIG5hbWUsIG5hbWVzcGFjZSk7XG4gIH1cblxuICBhZGRDbGFzcyhlbDogYW55LCBuYW1lOiBzdHJpbmcpOiB2b2lkIHtcbiAgICBjb25zdCBkZWJ1Z0VsID0gZ2V0RGVidWdOb2RlKGVsKTtcbiAgICBpZiAoZGVidWdFbCAmJiBkZWJ1Z0VsIGluc3RhbmNlb2YgRGVidWdFbGVtZW50X19QUkVfUjNfXykge1xuICAgICAgZGVidWdFbC5jbGFzc2VzW25hbWVdID0gdHJ1ZTtcbiAgICB9XG4gICAgdGhpcy5kZWxlZ2F0ZS5hZGRDbGFzcyhlbCwgbmFtZSk7XG4gIH1cblxuICByZW1vdmVDbGFzcyhlbDogYW55LCBuYW1lOiBzdHJpbmcpOiB2b2lkIHtcbiAgICBjb25zdCBkZWJ1Z0VsID0gZ2V0RGVidWdOb2RlKGVsKTtcbiAgICBpZiAoZGVidWdFbCAmJiBkZWJ1Z0VsIGluc3RhbmNlb2YgRGVidWdFbGVtZW50X19QUkVfUjNfXykge1xuICAgICAgZGVidWdFbC5jbGFzc2VzW25hbWVdID0gZmFsc2U7XG4gICAgfVxuICAgIHRoaXMuZGVsZWdhdGUucmVtb3ZlQ2xhc3MoZWwsIG5hbWUpO1xuICB9XG5cbiAgc2V0U3R5bGUoZWw6IGFueSwgc3R5bGU6IHN0cmluZywgdmFsdWU6IGFueSwgZmxhZ3M6IFJlbmRlcmVyU3R5bGVGbGFnczIpOiB2b2lkIHtcbiAgICBjb25zdCBkZWJ1Z0VsID0gZ2V0RGVidWdOb2RlKGVsKTtcbiAgICBpZiAoZGVidWdFbCAmJiBkZWJ1Z0VsIGluc3RhbmNlb2YgRGVidWdFbGVtZW50X19QUkVfUjNfXykge1xuICAgICAgZGVidWdFbC5zdHlsZXNbc3R5bGVdID0gdmFsdWU7XG4gICAgfVxuICAgIHRoaXMuZGVsZWdhdGUuc2V0U3R5bGUoZWwsIHN0eWxlLCB2YWx1ZSwgZmxhZ3MpO1xuICB9XG5cbiAgcmVtb3ZlU3R5bGUoZWw6IGFueSwgc3R5bGU6IHN0cmluZywgZmxhZ3M6IFJlbmRlcmVyU3R5bGVGbGFnczIpOiB2b2lkIHtcbiAgICBjb25zdCBkZWJ1Z0VsID0gZ2V0RGVidWdOb2RlKGVsKTtcbiAgICBpZiAoZGVidWdFbCAmJiBkZWJ1Z0VsIGluc3RhbmNlb2YgRGVidWdFbGVtZW50X19QUkVfUjNfXykge1xuICAgICAgZGVidWdFbC5zdHlsZXNbc3R5bGVdID0gbnVsbDtcbiAgICB9XG4gICAgdGhpcy5kZWxlZ2F0ZS5yZW1vdmVTdHlsZShlbCwgc3R5bGUsIGZsYWdzKTtcbiAgfVxuXG4gIHNldFByb3BlcnR5KGVsOiBhbnksIG5hbWU6IHN0cmluZywgdmFsdWU6IGFueSk6IHZvaWQge1xuICAgIGNvbnN0IGRlYnVnRWwgPSBnZXREZWJ1Z05vZGUoZWwpO1xuICAgIGlmIChkZWJ1Z0VsICYmIGRlYnVnRWwgaW5zdGFuY2VvZiBEZWJ1Z0VsZW1lbnRfX1BSRV9SM19fKSB7XG4gICAgICBkZWJ1Z0VsLnByb3BlcnRpZXNbbmFtZV0gPSB2YWx1ZTtcbiAgICB9XG4gICAgdGhpcy5kZWxlZ2F0ZS5zZXRQcm9wZXJ0eShlbCwgbmFtZSwgdmFsdWUpO1xuICB9XG5cbiAgbGlzdGVuKFxuICAgICAgdGFyZ2V0OiAnZG9jdW1lbnQnfCd3aW5kb3dzJ3wnYm9keSd8YW55LCBldmVudE5hbWU6IHN0cmluZyxcbiAgICAgIGNhbGxiYWNrOiAoZXZlbnQ6IGFueSkgPT4gYm9vbGVhbik6ICgpID0+IHZvaWQge1xuICAgIGlmICh0eXBlb2YgdGFyZ2V0ICE9PSAnc3RyaW5nJykge1xuICAgICAgY29uc3QgZGVidWdFbCA9IGdldERlYnVnTm9kZSh0YXJnZXQpO1xuICAgICAgaWYgKGRlYnVnRWwpIHtcbiAgICAgICAgZGVidWdFbC5saXN0ZW5lcnMucHVzaChuZXcgRGVidWdFdmVudExpc3RlbmVyKGV2ZW50TmFtZSwgY2FsbGJhY2spKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gdGhpcy5kZWxlZ2F0ZS5saXN0ZW4odGFyZ2V0LCBldmVudE5hbWUsIGNhbGxiYWNrKTtcbiAgfVxuXG4gIHBhcmVudE5vZGUobm9kZTogYW55KTogYW55IHsgcmV0dXJuIHRoaXMuZGVsZWdhdGUucGFyZW50Tm9kZShub2RlKTsgfVxuICBuZXh0U2libGluZyhub2RlOiBhbnkpOiBhbnkgeyByZXR1cm4gdGhpcy5kZWxlZ2F0ZS5uZXh0U2libGluZyhub2RlKTsgfVxuICBzZXRWYWx1ZShub2RlOiBhbnksIHZhbHVlOiBzdHJpbmcpOiB2b2lkIHsgcmV0dXJuIHRoaXMuZGVsZWdhdGUuc2V0VmFsdWUobm9kZSwgdmFsdWUpOyB9XG59XG4iXX0=