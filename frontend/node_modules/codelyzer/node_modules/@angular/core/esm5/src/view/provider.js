/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __read, __spread } from "tslib";
import { ChangeDetectorRef, SimpleChange, WrappedValue } from '../change_detection/change_detection';
import { INJECTOR, Injector, resolveForwardRef } from '../di';
import { ElementRef } from '../linker/element_ref';
import { TemplateRef } from '../linker/template_ref';
import { ViewContainerRef } from '../linker/view_container_ref';
import { Renderer2 } from '../render/api';
import { isObservable } from '../util/lang';
import { stringify } from '../util/stringify';
import { createChangeDetectorRef, createInjector } from './refs';
import { Services, asElementData, asProviderData, shouldCallLifecycleInitHook } from './types';
import { calcBindingFlags, checkBinding, dispatchEvent, isComponentView, splitDepsDsl, splitMatchedQueriesDsl, tokenKey, viewParentEl } from './util';
var Renderer2TokenKey = tokenKey(Renderer2);
var ElementRefTokenKey = tokenKey(ElementRef);
var ViewContainerRefTokenKey = tokenKey(ViewContainerRef);
var TemplateRefTokenKey = tokenKey(TemplateRef);
var ChangeDetectorRefTokenKey = tokenKey(ChangeDetectorRef);
var InjectorRefTokenKey = tokenKey(Injector);
var INJECTORRefTokenKey = tokenKey(INJECTOR);
export function directiveDef(checkIndex, flags, matchedQueries, childCount, ctor, deps, props, outputs) {
    var bindings = [];
    if (props) {
        for (var prop in props) {
            var _a = __read(props[prop], 2), bindingIndex = _a[0], nonMinifiedName = _a[1];
            bindings[bindingIndex] = {
                flags: 8 /* TypeProperty */,
                name: prop, nonMinifiedName: nonMinifiedName,
                ns: null,
                securityContext: null,
                suffix: null
            };
        }
    }
    var outputDefs = [];
    if (outputs) {
        for (var propName in outputs) {
            outputDefs.push({ type: 1 /* DirectiveOutput */, propName: propName, target: null, eventName: outputs[propName] });
        }
    }
    flags |= 16384 /* TypeDirective */;
    return _def(checkIndex, flags, matchedQueries, childCount, ctor, ctor, deps, bindings, outputDefs);
}
export function pipeDef(flags, ctor, deps) {
    flags |= 16 /* TypePipe */;
    return _def(-1, flags, null, 0, ctor, ctor, deps);
}
export function providerDef(flags, matchedQueries, token, value, deps) {
    return _def(-1, flags, matchedQueries, 0, token, value, deps);
}
export function _def(checkIndex, flags, matchedQueriesDsl, childCount, token, value, deps, bindings, outputs) {
    var _a = splitMatchedQueriesDsl(matchedQueriesDsl), matchedQueries = _a.matchedQueries, references = _a.references, matchedQueryIds = _a.matchedQueryIds;
    if (!outputs) {
        outputs = [];
    }
    if (!bindings) {
        bindings = [];
    }
    // Need to resolve forwardRefs as e.g. for `useValue` we
    // lowered the expression and then stopped evaluating it,
    // i.e. also didn't unwrap it.
    value = resolveForwardRef(value);
    var depDefs = splitDepsDsl(deps, stringify(token));
    return {
        // will bet set by the view definition
        nodeIndex: -1,
        parent: null,
        renderParent: null,
        bindingIndex: -1,
        outputIndex: -1,
        // regular values
        checkIndex: checkIndex,
        flags: flags,
        childFlags: 0,
        directChildFlags: 0,
        childMatchedQueries: 0, matchedQueries: matchedQueries, matchedQueryIds: matchedQueryIds, references: references,
        ngContentIndex: -1, childCount: childCount, bindings: bindings,
        bindingFlags: calcBindingFlags(bindings), outputs: outputs,
        element: null,
        provider: { token: token, value: value, deps: depDefs },
        text: null,
        query: null,
        ngContent: null
    };
}
export function createProviderInstance(view, def) {
    return _createProviderInstance(view, def);
}
export function createPipeInstance(view, def) {
    // deps are looked up from component.
    var compView = view;
    while (compView.parent && !isComponentView(compView)) {
        compView = compView.parent;
    }
    // pipes can see the private services of the component
    var allowPrivateServices = true;
    // pipes are always eager and classes!
    return createClass(compView.parent, viewParentEl(compView), allowPrivateServices, def.provider.value, def.provider.deps);
}
export function createDirectiveInstance(view, def) {
    // components can see other private services, other directives can't.
    var allowPrivateServices = (def.flags & 32768 /* Component */) > 0;
    // directives are always eager and classes!
    var instance = createClass(view, def.parent, allowPrivateServices, def.provider.value, def.provider.deps);
    if (def.outputs.length) {
        for (var i = 0; i < def.outputs.length; i++) {
            var output = def.outputs[i];
            var outputObservable = instance[output.propName];
            if (isObservable(outputObservable)) {
                var subscription = outputObservable.subscribe(eventHandlerClosure(view, def.parent.nodeIndex, output.eventName));
                view.disposables[def.outputIndex + i] = subscription.unsubscribe.bind(subscription);
            }
            else {
                throw new Error("@Output " + output.propName + " not initialized in '" + instance.constructor.name + "'.");
            }
        }
    }
    return instance;
}
function eventHandlerClosure(view, index, eventName) {
    return function (event) { return dispatchEvent(view, index, eventName, event); };
}
export function checkAndUpdateDirectiveInline(view, def, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9) {
    var providerData = asProviderData(view, def.nodeIndex);
    var directive = providerData.instance;
    var changed = false;
    var changes = undefined;
    var bindLen = def.bindings.length;
    if (bindLen > 0 && checkBinding(view, def, 0, v0)) {
        changed = true;
        changes = updateProp(view, providerData, def, 0, v0, changes);
    }
    if (bindLen > 1 && checkBinding(view, def, 1, v1)) {
        changed = true;
        changes = updateProp(view, providerData, def, 1, v1, changes);
    }
    if (bindLen > 2 && checkBinding(view, def, 2, v2)) {
        changed = true;
        changes = updateProp(view, providerData, def, 2, v2, changes);
    }
    if (bindLen > 3 && checkBinding(view, def, 3, v3)) {
        changed = true;
        changes = updateProp(view, providerData, def, 3, v3, changes);
    }
    if (bindLen > 4 && checkBinding(view, def, 4, v4)) {
        changed = true;
        changes = updateProp(view, providerData, def, 4, v4, changes);
    }
    if (bindLen > 5 && checkBinding(view, def, 5, v5)) {
        changed = true;
        changes = updateProp(view, providerData, def, 5, v5, changes);
    }
    if (bindLen > 6 && checkBinding(view, def, 6, v6)) {
        changed = true;
        changes = updateProp(view, providerData, def, 6, v6, changes);
    }
    if (bindLen > 7 && checkBinding(view, def, 7, v7)) {
        changed = true;
        changes = updateProp(view, providerData, def, 7, v7, changes);
    }
    if (bindLen > 8 && checkBinding(view, def, 8, v8)) {
        changed = true;
        changes = updateProp(view, providerData, def, 8, v8, changes);
    }
    if (bindLen > 9 && checkBinding(view, def, 9, v9)) {
        changed = true;
        changes = updateProp(view, providerData, def, 9, v9, changes);
    }
    if (changes) {
        directive.ngOnChanges(changes);
    }
    if ((def.flags & 65536 /* OnInit */) &&
        shouldCallLifecycleInitHook(view, 256 /* InitState_CallingOnInit */, def.nodeIndex)) {
        directive.ngOnInit();
    }
    if (def.flags & 262144 /* DoCheck */) {
        directive.ngDoCheck();
    }
    return changed;
}
export function checkAndUpdateDirectiveDynamic(view, def, values) {
    var providerData = asProviderData(view, def.nodeIndex);
    var directive = providerData.instance;
    var changed = false;
    var changes = undefined;
    for (var i = 0; i < values.length; i++) {
        if (checkBinding(view, def, i, values[i])) {
            changed = true;
            changes = updateProp(view, providerData, def, i, values[i], changes);
        }
    }
    if (changes) {
        directive.ngOnChanges(changes);
    }
    if ((def.flags & 65536 /* OnInit */) &&
        shouldCallLifecycleInitHook(view, 256 /* InitState_CallingOnInit */, def.nodeIndex)) {
        directive.ngOnInit();
    }
    if (def.flags & 262144 /* DoCheck */) {
        directive.ngDoCheck();
    }
    return changed;
}
function _createProviderInstance(view, def) {
    // private services can see other private services
    var allowPrivateServices = (def.flags & 8192 /* PrivateProvider */) > 0;
    var providerDef = def.provider;
    switch (def.flags & 201347067 /* Types */) {
        case 512 /* TypeClassProvider */:
            return createClass(view, def.parent, allowPrivateServices, providerDef.value, providerDef.deps);
        case 1024 /* TypeFactoryProvider */:
            return callFactory(view, def.parent, allowPrivateServices, providerDef.value, providerDef.deps);
        case 2048 /* TypeUseExistingProvider */:
            return resolveDep(view, def.parent, allowPrivateServices, providerDef.deps[0]);
        case 256 /* TypeValueProvider */:
            return providerDef.value;
    }
}
function createClass(view, elDef, allowPrivateServices, ctor, deps) {
    var len = deps.length;
    switch (len) {
        case 0:
            return new ctor();
        case 1:
            return new ctor(resolveDep(view, elDef, allowPrivateServices, deps[0]));
        case 2:
            return new ctor(resolveDep(view, elDef, allowPrivateServices, deps[0]), resolveDep(view, elDef, allowPrivateServices, deps[1]));
        case 3:
            return new ctor(resolveDep(view, elDef, allowPrivateServices, deps[0]), resolveDep(view, elDef, allowPrivateServices, deps[1]), resolveDep(view, elDef, allowPrivateServices, deps[2]));
        default:
            var depValues = [];
            for (var i = 0; i < len; i++) {
                depValues.push(resolveDep(view, elDef, allowPrivateServices, deps[i]));
            }
            return new (ctor.bind.apply(ctor, __spread([void 0], depValues)))();
    }
}
function callFactory(view, elDef, allowPrivateServices, factory, deps) {
    var len = deps.length;
    switch (len) {
        case 0:
            return factory();
        case 1:
            return factory(resolveDep(view, elDef, allowPrivateServices, deps[0]));
        case 2:
            return factory(resolveDep(view, elDef, allowPrivateServices, deps[0]), resolveDep(view, elDef, allowPrivateServices, deps[1]));
        case 3:
            return factory(resolveDep(view, elDef, allowPrivateServices, deps[0]), resolveDep(view, elDef, allowPrivateServices, deps[1]), resolveDep(view, elDef, allowPrivateServices, deps[2]));
        default:
            var depValues = [];
            for (var i = 0; i < len; i++) {
                depValues.push(resolveDep(view, elDef, allowPrivateServices, deps[i]));
            }
            return factory.apply(void 0, __spread(depValues));
    }
}
// This default value is when checking the hierarchy for a token.
//
// It means both:
// - the token is not provided by the current injector,
// - only the element injectors should be checked (ie do not check module injectors
//
//          mod1
//         /
//       el1   mod2
//         \  /
//         el2
//
// When requesting el2.injector.get(token), we should check in the following order and return the
// first found value:
// - el2.injector.get(token, default)
// - el1.injector.get(token, NOT_FOUND_CHECK_ONLY_ELEMENT_INJECTOR) -> do not check the module
// - mod2.injector.get(token, default)
export var NOT_FOUND_CHECK_ONLY_ELEMENT_INJECTOR = {};
export function resolveDep(view, elDef, allowPrivateServices, depDef, notFoundValue) {
    if (notFoundValue === void 0) { notFoundValue = Injector.THROW_IF_NOT_FOUND; }
    if (depDef.flags & 8 /* Value */) {
        return depDef.token;
    }
    var startView = view;
    if (depDef.flags & 2 /* Optional */) {
        notFoundValue = null;
    }
    var tokenKey = depDef.tokenKey;
    if (tokenKey === ChangeDetectorRefTokenKey) {
        // directives on the same element as a component should be able to control the change detector
        // of that component as well.
        allowPrivateServices = !!(elDef && elDef.element.componentView);
    }
    if (elDef && (depDef.flags & 1 /* SkipSelf */)) {
        allowPrivateServices = false;
        elDef = elDef.parent;
    }
    var searchView = view;
    while (searchView) {
        if (elDef) {
            switch (tokenKey) {
                case Renderer2TokenKey: {
                    var compView = findCompView(searchView, elDef, allowPrivateServices);
                    return compView.renderer;
                }
                case ElementRefTokenKey:
                    return new ElementRef(asElementData(searchView, elDef.nodeIndex).renderElement);
                case ViewContainerRefTokenKey:
                    return asElementData(searchView, elDef.nodeIndex).viewContainer;
                case TemplateRefTokenKey: {
                    if (elDef.element.template) {
                        return asElementData(searchView, elDef.nodeIndex).template;
                    }
                    break;
                }
                case ChangeDetectorRefTokenKey: {
                    var cdView = findCompView(searchView, elDef, allowPrivateServices);
                    return createChangeDetectorRef(cdView);
                }
                case InjectorRefTokenKey:
                case INJECTORRefTokenKey:
                    return createInjector(searchView, elDef);
                default:
                    var providerDef_1 = (allowPrivateServices ? elDef.element.allProviders :
                        elDef.element.publicProviders)[tokenKey];
                    if (providerDef_1) {
                        var providerData = asProviderData(searchView, providerDef_1.nodeIndex);
                        if (!providerData) {
                            providerData = { instance: _createProviderInstance(searchView, providerDef_1) };
                            searchView.nodes[providerDef_1.nodeIndex] = providerData;
                        }
                        return providerData.instance;
                    }
            }
        }
        allowPrivateServices = isComponentView(searchView);
        elDef = viewParentEl(searchView);
        searchView = searchView.parent;
        if (depDef.flags & 4 /* Self */) {
            searchView = null;
        }
    }
    var value = startView.root.injector.get(depDef.token, NOT_FOUND_CHECK_ONLY_ELEMENT_INJECTOR);
    if (value !== NOT_FOUND_CHECK_ONLY_ELEMENT_INJECTOR ||
        notFoundValue === NOT_FOUND_CHECK_ONLY_ELEMENT_INJECTOR) {
        // Return the value from the root element injector when
        // - it provides it
        //   (value !== NOT_FOUND_CHECK_ONLY_ELEMENT_INJECTOR)
        // - the module injector should not be checked
        //   (notFoundValue === NOT_FOUND_CHECK_ONLY_ELEMENT_INJECTOR)
        return value;
    }
    return startView.root.ngModule.injector.get(depDef.token, notFoundValue);
}
function findCompView(view, elDef, allowPrivateServices) {
    var compView;
    if (allowPrivateServices) {
        compView = asElementData(view, elDef.nodeIndex).componentView;
    }
    else {
        compView = view;
        while (compView.parent && !isComponentView(compView)) {
            compView = compView.parent;
        }
    }
    return compView;
}
function updateProp(view, providerData, def, bindingIdx, value, changes) {
    if (def.flags & 32768 /* Component */) {
        var compView = asElementData(view, def.parent.nodeIndex).componentView;
        if (compView.def.flags & 2 /* OnPush */) {
            compView.state |= 8 /* ChecksEnabled */;
        }
    }
    var binding = def.bindings[bindingIdx];
    var propName = binding.name;
    // Note: This is still safe with Closure Compiler as
    // the user passed in the property name as an object has to `providerDef`,
    // so Closure Compiler will have renamed the property correctly already.
    providerData.instance[propName] = value;
    if (def.flags & 524288 /* OnChanges */) {
        changes = changes || {};
        var oldValue = WrappedValue.unwrap(view.oldValues[def.bindingIndex + bindingIdx]);
        var binding_1 = def.bindings[bindingIdx];
        changes[binding_1.nonMinifiedName] =
            new SimpleChange(oldValue, value, (view.state & 2 /* FirstCheck */) !== 0);
    }
    view.oldValues[def.bindingIndex + bindingIdx] = value;
    return changes;
}
// This function calls the ngAfterContentCheck, ngAfterContentInit,
// ngAfterViewCheck, and ngAfterViewInit lifecycle hooks (depending on the node
// flags in lifecycle). Unlike ngDoCheck, ngOnChanges and ngOnInit, which are
// called during a pre-order traversal of the view tree (that is calling the
// parent hooks before the child hooks) these events are sent in using a
// post-order traversal of the tree (children before parents). This changes the
// meaning of initIndex in the view state. For ngOnInit, initIndex tracks the
// expected nodeIndex which a ngOnInit should be called. When sending
// ngAfterContentInit and ngAfterViewInit it is the expected count of
// ngAfterContentInit or ngAfterViewInit methods that have been called. This
// ensure that despite being called recursively or after picking up after an
// exception, the ngAfterContentInit or ngAfterViewInit will be called on the
// correct nodes. Consider for example, the following (where E is an element
// and D is a directive)
//  Tree:       pre-order index  post-order index
//    E1        0                6
//      E2      1                1
//       D3     2                0
//      E4      3                5
//       E5     4                4
//        E6    5                2
//        E7    6                3
// As can be seen, the post-order index has an unclear relationship to the
// pre-order index (postOrderIndex === preOrderIndex - parentCount +
// childCount). Since number of calls to ngAfterContentInit and ngAfterViewInit
// are stable (will be the same for the same view regardless of exceptions or
// recursion) we just need to count them which will roughly correspond to the
// post-order index (it skips elements and directives that do not have
// lifecycle hooks).
//
// For example, if an exception is raised in the E6.onAfterViewInit() the
// initIndex is left at 3 (by shouldCallLifecycleInitHook() which set it to
// initIndex + 1). When checkAndUpdateView() is called again D3, E2 and E6 will
// not have their ngAfterViewInit() called but, starting with E7, the rest of
// the view will begin getting ngAfterViewInit() called until a check and
// pass is complete.
//
// This algorthim also handles recursion. Consider if E4's ngAfterViewInit()
// indirectly calls E1's ChangeDetectorRef.detectChanges(). The expected
// initIndex is set to 6, the recusive checkAndUpdateView() starts walk again.
// D3, E2, E6, E7, E5 and E4 are skipped, ngAfterViewInit() is called on E1.
// When the recursion returns the initIndex will be 7 so E1 is skipped as it
// has already been called in the recursively called checkAnUpdateView().
export function callLifecycleHooksChildrenFirst(view, lifecycles) {
    if (!(view.def.nodeFlags & lifecycles)) {
        return;
    }
    var nodes = view.def.nodes;
    var initIndex = 0;
    for (var i = 0; i < nodes.length; i++) {
        var nodeDef = nodes[i];
        var parent_1 = nodeDef.parent;
        if (!parent_1 && nodeDef.flags & lifecycles) {
            // matching root node (e.g. a pipe)
            callProviderLifecycles(view, i, nodeDef.flags & lifecycles, initIndex++);
        }
        if ((nodeDef.childFlags & lifecycles) === 0) {
            // no child matches one of the lifecycles
            i += nodeDef.childCount;
        }
        while (parent_1 && (parent_1.flags & 1 /* TypeElement */) &&
            i === parent_1.nodeIndex + parent_1.childCount) {
            // last child of an element
            if (parent_1.directChildFlags & lifecycles) {
                initIndex = callElementProvidersLifecycles(view, parent_1, lifecycles, initIndex);
            }
            parent_1 = parent_1.parent;
        }
    }
}
function callElementProvidersLifecycles(view, elDef, lifecycles, initIndex) {
    for (var i = elDef.nodeIndex + 1; i <= elDef.nodeIndex + elDef.childCount; i++) {
        var nodeDef = view.def.nodes[i];
        if (nodeDef.flags & lifecycles) {
            callProviderLifecycles(view, i, nodeDef.flags & lifecycles, initIndex++);
        }
        // only visit direct children
        i += nodeDef.childCount;
    }
    return initIndex;
}
function callProviderLifecycles(view, index, lifecycles, initIndex) {
    var providerData = asProviderData(view, index);
    if (!providerData) {
        return;
    }
    var provider = providerData.instance;
    if (!provider) {
        return;
    }
    Services.setCurrentNode(view, index);
    if (lifecycles & 1048576 /* AfterContentInit */ &&
        shouldCallLifecycleInitHook(view, 512 /* InitState_CallingAfterContentInit */, initIndex)) {
        provider.ngAfterContentInit();
    }
    if (lifecycles & 2097152 /* AfterContentChecked */) {
        provider.ngAfterContentChecked();
    }
    if (lifecycles & 4194304 /* AfterViewInit */ &&
        shouldCallLifecycleInitHook(view, 768 /* InitState_CallingAfterViewInit */, initIndex)) {
        provider.ngAfterViewInit();
    }
    if (lifecycles & 8388608 /* AfterViewChecked */) {
        provider.ngAfterViewChecked();
    }
    if (lifecycles & 131072 /* OnDestroy */) {
        provider.ngOnDestroy();
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicHJvdmlkZXIuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy92aWV3L3Byb3ZpZGVyLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7QUFFSCxPQUFPLEVBQUMsaUJBQWlCLEVBQUUsWUFBWSxFQUFpQixZQUFZLEVBQUMsTUFBTSxzQ0FBc0MsQ0FBQztBQUNsSCxPQUFPLEVBQUMsUUFBUSxFQUFFLFFBQVEsRUFBRSxpQkFBaUIsRUFBQyxNQUFNLE9BQU8sQ0FBQztBQUM1RCxPQUFPLEVBQUMsVUFBVSxFQUFDLE1BQU0sdUJBQXVCLENBQUM7QUFDakQsT0FBTyxFQUFDLFdBQVcsRUFBQyxNQUFNLHdCQUF3QixDQUFDO0FBQ25ELE9BQU8sRUFBQyxnQkFBZ0IsRUFBQyxNQUFNLDhCQUE4QixDQUFDO0FBQzlELE9BQU8sRUFBQyxTQUFTLEVBQUMsTUFBTSxlQUFlLENBQUM7QUFDeEMsT0FBTyxFQUFDLFlBQVksRUFBQyxNQUFNLGNBQWMsQ0FBQztBQUMxQyxPQUFPLEVBQUMsU0FBUyxFQUFDLE1BQU0sbUJBQW1CLENBQUM7QUFFNUMsT0FBTyxFQUFDLHVCQUF1QixFQUFFLGNBQWMsRUFBQyxNQUFNLFFBQVEsQ0FBQztBQUMvRCxPQUFPLEVBQXNILFFBQVEsRUFBa0MsYUFBYSxFQUFFLGNBQWMsRUFBRSwyQkFBMkIsRUFBQyxNQUFNLFNBQVMsQ0FBQztBQUNsUCxPQUFPLEVBQUMsZ0JBQWdCLEVBQUUsWUFBWSxFQUFFLGFBQWEsRUFBRSxlQUFlLEVBQUUsWUFBWSxFQUFFLHNCQUFzQixFQUFFLFFBQVEsRUFBRSxZQUFZLEVBQUMsTUFBTSxRQUFRLENBQUM7QUFFcEosSUFBTSxpQkFBaUIsR0FBRyxRQUFRLENBQUMsU0FBUyxDQUFDLENBQUM7QUFDOUMsSUFBTSxrQkFBa0IsR0FBRyxRQUFRLENBQUMsVUFBVSxDQUFDLENBQUM7QUFDaEQsSUFB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QUFJLENBQUM7UUFDZixPQUFPLEdBQUcsVUFBVSxDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsR0FBRyxFQUFFLENBQUMsRUFBRSxFQUFFLEVBQUUsT0FBTyxDQUFDLENBQUM7S0FDL0Q7SUFDRCxJQUFJLE9BQU8sR0FBRyxDQUFDLElBQUksWUFBWSxDQUFDLElBQUksRUFBRSxHQUFHLEVBQUUsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxFQUFFO1FBQ2pELE9BQU8sR0FBRyxJQUFJLENBQUM7UUFDZixPQUFPLEdBQUcsVUFBVSxDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsR0FBRyxFQUFFLENBQUMsRUFBRSxFQUFFLEVBQUUsT0FBTyxDQUFDLENBQUM7S0FDL0Q7SUFDRCxJQUFJLE9BQU8sR0FBRyxDQUFDLElBQUksWUFBWSxDQUFDLElBQUksRUFBRSxHQUFHLEVBQUUsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxFQUFFO1FBQ2pELE9BQU8sR0FBRyxJQUFJLENBQUM7UUFDZixPQUFPLEdBQUcsVUFBVSxDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsR0FBRyxFQUFFLENBQUMsRUFBRSxFQUFFLEVBQUUsT0FBTyxDQUFDLENBQUM7S0FDL0Q7SUFDRCxJQUFJLE9BQU8sR0FBRyxDQUFDLElBQUksWUFBWSxDQUFDLElBQUksRUFBRSxHQUFHLEVBQUUsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxFQUFFO1FBQ2pELE9BQU8sR0FBRyxJQUFJLENBQUM7UUFDZixPQUFPLEdBQUcsVUFBVSxDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsR0FBRyxFQUFFLENBQUMsRUFBRSxFQUFFLEVBQUUsT0FBTyxDQUFDLENBQUM7S0FDL0Q7SUFDRCxJQUFJLE9BQU8sR0FBRyxDQUFDLElBQUksWUFBWSxDQUFDLElBQUksRUFBRSxHQUFHLEVBQUUsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxFQUFFO1FBQ2pELE9BQU8sR0FBRyxJQUFJLENBQUM7UUFDZixPQUFPLEdBQUcsVUFBVSxDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsR0FBRyxFQUFFLENBQUMsRUFBRSxFQUFFLEVBQUUsT0FBTyxDQUFDLENBQUM7S0FDL0Q7SUFDRCxJQUFJLE9BQU8sR0FBRyxDQUFDLElBQUksWUFBWSxDQUFDLElBQUksRUFBRSxHQUFHLEVBQUUsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxFQUFFO1FBQ2pELE9BQU8sR0FBRyxJQUFJLENBQUM7UUFDZixPQUFPLEdBQUcsVUFBVSxDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsR0FBRyxFQUFFLENBQUMsRUFBRSxFQUFFLEVBQUUsT0FBTyxDQUFDLENBQUM7S0FDL0Q7SUFDRCxJQUFJLE9BQU8sR0FBRyxDQUFDLElBQUksWUFBWSxDQUFDLElBQUksRUFBRSxHQUFHLEVBQUUsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxFQUFFO1FBQ2pELE9BQU8sR0FBRyxJQUFJLENBQUM7UUFDZixPQUFPLEdBQUcsVUFBVSxDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsR0FBRyxFQUFFLENBQUMsRUFBRSxFQUFFLEVBQUUsT0FBTyxDQUFDLENBQUM7S0FDL0Q7SUFDRCxJQUFJLE9BQU8sR0FBRyxDQUFDLElBQUksWUFBWSxDQUFDLElBQUksRUFBRSxHQUFHLEVBQUUsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxFQUFFO1FBQ2pELE9BQU8sR0FBRyxJQUFJLENBQUM7UUFDZixPQUFPLEdBQUcsVUFBVSxDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsR0FBRyxFQUFFLENBQUMsRUFBRSxFQUFFLEVBQUUsT0FBTyxDQUFDLENBQUM7S0FDL0Q7SUFDRCxJQUFJLE9BQU8sR0FBRyxDQUFDLElBQUksWUFBWSxDQUFDLElBQUksRUFBRSxHQUFHLEVBQUUsQ0FBQyxFQUFFLEVBQUUsQ0FBQyxFQUFFO1FBQ2pELE9BQU8sR0FBRyxJQUFJLENBQUM7UUFDZixPQUFPLEdBQUcsVUFBVSxDQUFDLElBQUksRUFBRSxZQUFZLEVBQUUsR0FBRyxFQUFFLENBQUMsRUFBRSxFQUFFLEVBQUUsT0FBTyxDQUFDLENBQUM7S0FDL0Q7SUFDRCxJQUFJLE9BQU8sR0FBRyxDQUFDLElBQUksWUFBWSxDQUFD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R0FBRyxjQUFjLENBQUMsSUFBSSxFQUFFLEtBQUssQ0FBQyxDQUFDO0lBQ2pELElBQUksQ0FBQyxZQUFZLEVBQUU7UUFDakIsT0FBTztLQUNSO0lBQ0QsSUFBTSxRQUFRLEdBQUcsWUFBWSxDQUFDLFFBQVEsQ0FBQztJQUN2QyxJQUFJLENBQUMsUUFBUSxFQUFFO1FBQ2IsT0FBTztLQUNSO0lBQ0QsUUFBUSxDQUFDLGNBQWMsQ0FBQyxJQUFJLEVBQUUsS0FBSyxDQUFDLENBQUM7SUFDckMsSUFBSSxVQUFVLGlDQUE2QjtRQUN2QywyQkFBMkIsQ0FBQyxJQUFJLCtDQUErQyxTQUFTLENBQUMsRUFBRTtRQUM3RixRQUFRLENBQUMsa0JBQWtCLEVBQUUsQ0FBQztLQUMvQjtJQUNELElBQUksVUFBVSxvQ0FBZ0MsRUFBRTtRQUM5QyxRQUFRLENBQUMscUJBQXFCLEVBQUUsQ0FBQztLQUNsQztJQUNELElBQUksVUFBVSw4QkFBMEI7UUFDcEMsMkJBQTJCLENBQUMsSUFBSSw0Q0FBNEMsU0FBUyxDQUFDLEVBQUU7UUFDMUYsUUFBUSxDQUFDLGVBQWUsRUFBRSxDQUFDO0tBQzVCO0lBQ0QsSUFBSSxVQUFVLGlDQUE2QixFQUFFO1FBQzNDLFFBQVEsQ0FBQyxrQkFBa0IsRUFBRSxDQUFDO0tBQy9CO0lBQ0QsSUFBSSxVQUFVLHlCQUFzQixFQUFFO1FBQ3BDLFFBQVEsQ0FBQyxXQUFXLEVBQUUsQ0FBQztLQUN4QjtBQUNILENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Q2hhbmdlRGV0ZWN0b3JSZWYsIFNpbXBsZUNoYW5nZSwgU2ltcGxlQ2hhbmdlcywgV3JhcHBlZFZhbHVlfSBmcm9tICcuLi9jaGFuZ2VfZGV0ZWN0aW9uL2NoYW5nZV9kZXRlY3Rpb24nO1xuaW1wb3J0IHtJTkpFQ1RPUiwgSW5qZWN0b3IsIHJlc29sdmVGb3J3YXJkUmVmfSBmcm9tICcuLi9kaSc7XG5pbXBvcnQge0VsZW1lbnRSZWZ9IGZyb20gJy4uL2xpbmtlci9lbGVtZW50X3JlZic7XG5pbXBvcnQge1RlbXBsYXRlUmVmfSBmcm9tICcuLi9saW5rZXIvdGVtcGxhdGVfcmVmJztcbmltcG9ydCB7Vmlld0NvbnRhaW5lclJlZn0gZnJvbSAnLi4vbGlua2VyL3ZpZXdfY29udGFpbmVyX3JlZic7XG5pbXBvcnQge1JlbmRlcmVyMn0gZnJvbSAnLi4vcmVuZGVyL2FwaSc7XG5pbXBvcnQge2lzT2JzZXJ2YWJsZX0gZnJvbSAnLi4vdXRpbC9sYW5nJztcbmltcG9ydCB7c3RyaW5naWZ5fSBmcm9tICcuLi91dGlsL3N0cmluZ2lmeSc7XG5cbmltcG9ydCB7Y3JlYXRlQ2hhbmdlRGV0ZWN0b3JSZWYsIGNyZWF0ZUluamVjdG9yfSBmcm9tICcuL3JlZnMnO1xuaW1wb3J0IHtCaW5kaW5nRGVmLCBCaW5kaW5nRmxhZ3MsIERlcERlZiwgRGVwRmxhZ3MsIE5vZGVEZWYsIE5vZGVGbGFncywgT3V0cHV0RGVmLCBPdXRwdXRUeXBlLCBQcm92aWRlckRhdGEsIFF1ZXJ5VmFsdWVUeXBlLCBTZXJ2aWNlcywgVmlld0RhdGEsIFZpZXdGbGFncywgVmlld1N0YXRlLCBhc0VsZW1lbnREYXRhLCBhc1Byb3ZpZGVyRGF0YSwgc2hvdWxkQ2FsbExpZmVjeWNsZUluaXRIb29rfSBmcm9tICcuL3R5cGVzJztcbmltcG9ydCB7Y2FsY0JpbmRpbmdGbGFncywgY2hlY2tCaW5kaW5nLCBkaXNwYXRjaEV2ZW50LCBpc0NvbXBvbmVudFZpZXcsIHNwbGl0RGVwc0RzbCwgc3BsaXRNYXRjaGVkUXVlcmllc0RzbCwgdG9rZW5LZXksIHZpZXdQYXJlbnRFbH0gZnJvbSAnLi91dGlsJztcblxuY29uc3QgUmVuZGVyZXIyVG9rZW5LZXkgPSB0b2tlbktleShSZW5kZXJlcjIpO1xuY29uc3QgRWxlbWVudFJlZlRva2VuS2V5ID0gdG9rZW5LZXkoRWxlbWVudFJlZik7XG5jb25zdCBWaWV3Q29udGFpbmVyUmVmVG9rZW5LZXkgPSB0b2tlbktleShWaWV3Q29udGFpbmVyUmVmKTtcbmNvbnN0IFRlbXBsYXRlUmVmVG9rZW5LZXkgPSB0b2tlbktleShUZW1wbGF0ZVJlZik7XG5jb25zdCBDaGFuZ2VEZXRlY3RvclJlZlRva2VuS2V5ID0gdG9rZW5LZXkoQ2hhbmdlRGV0ZWN0b3JSZWYpO1xuY29uc3QgSW5qZWN0b3JSZWZUb2tlbktleSA9IHRva2VuS2V5KEluamVjdG9yKTtcbmNvbnN0IElOSkVDVE9SUmVmVG9rZW5LZXkgPSB0b2tlbktleShJTkpFQ1RPUik7XG5cbmV4cG9ydCBmdW5jdGlvbiBkaXJlY3RpdmVEZWYoXG4gICAgY2hlY2tJbmRleDogbnVtYmVyLCBmbGFnczogTm9kZUZsYWdzLFxuICAgIG1hdGNoZWRRdWVyaWVzOiBudWxsIHwgW3N0cmluZyB8IG51bWJlciwgUXVlcnlWYWx1ZVR5cGVdW10sIGNoaWxkQ291bnQ6IG51bWJlciwgY3RvcjogYW55LFxuICAgIGRlcHM6IChbRGVwRmxhZ3MsIGFueV0gfCBhbnkpW10sIHByb3BzPzogbnVsbCB8IHtbbmFtZTogc3RyaW5nXTogW251bWJlciwgc3RyaW5nXX0sXG4gICAgb3V0cHV0cz86IG51bGwgfCB7W25hbWU6IHN0cmluZ106IHN0cmluZ30pOiBOb2RlRGVmIHtcbiAgY29uc3QgYmluZGluZ3M6IEJpbmRpbmdEZWZbXSA9IFtdO1xuICBpZiAocHJvcHMpIHtcbiAgICBmb3IgKGxldCBwcm9wIGluIHByb3BzKSB7XG4gICAgICBjb25zdCBbYmluZGluZ0luZGV4LCBub25NaW5pZmllZE5hbWVdID0gcHJvcHNbcHJvcF07XG4gICAgICBiaW5kaW5nc1tiaW5kaW5nSW5kZXhdID0ge1xuICAgICAgICBmbGFnczogQmluZGluZ0ZsYWdzLlR5cGVQcm9wZXJ0eSxcbiAgICAgICAgbmFtZTogcHJvcCwgbm9uTWluaWZpZWROYW1lLFxuICAgICAgICBuczogbnVsbCxcbiAgICAgICAgc2VjdXJpdHlDb250ZXh0OiBudWxsLFxuICAgICAgICBzdWZmaXg6IG51bGxcbiAgICAgIH07XG4gICAgfVxuICB9XG4gIGNvbnN0IG91dHB1dERlZnM6IE91dHB1dERlZltdID0gW107XG4gIGlmIChvdXRwdXRzKSB7XG4gICAgZm9yIChsZXQgcHJvcE5hbWUgaW4gb3V0cHV0cykge1xuICAgICAgb3V0cHV0RGVmcy5wdXNoKFxuICAgICAgICAgIHt0eXBlOiBPdXRwdXRUeXBlLkRpcmVjdGl2ZU91dHB1dCwgcHJvcE5hbWUsIHRhcmdldDogbnVsbCwgZXZlbnROYW1lOiBvdXRwdXRzW3Byb3BOYW1lXX0pO1xuICAgIH1cbiAgfVxuICBmbGFncyB8PSBOb2RlRmxhZ3MuVHlwZURpcmVjdGl2ZTtcbiAgcmV0dXJuIF9kZWYoXG4gICAgICBjaGVja0luZGV4LCBmbGFncywgbWF0Y2hlZFF1ZXJpZXMsIGNoaWxkQ291bnQsIGN0b3IsIGN0b3IsIGRlcHMsIGJpbmRpbmdzLCBvdXRwdXREZWZzKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHBpcGVEZWYoZmxhZ3M6IE5vZGVGbGFncywgY3RvcjogYW55LCBkZXBzOiAoW0RlcEZsYWdzLCBhbnldIHwgYW55KVtdKTogTm9kZURlZiB7XG4gIGZsYWdzIHw9IE5vZGVGbGFncy5UeXBlUGlwZTtcbiAgcmV0dXJuIF9kZWYoLTEsIGZsYWdzLCBudWxsLCAwLCBjdG9yLCBjdG9yLCBkZXBzKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHByb3ZpZGVyRGVmKFxuICAgIGZsYWdzOiBOb2RlRmxhZ3MsIG1hdGNoZWRRdWVyaWVzOiBudWxsIHwgW3N0cmluZyB8IG51bWJlciwgUXVlcnlWYWx1ZVR5cGVdW10sIHRva2VuOiBhbnksXG4gICAgdmFsdWU6IGFueSwgZGVwczogKFtEZXBGbGFncywgYW55XSB8IGFueSlbXSk6IE5vZGVEZWYge1xuICByZXR1cm4gX2RlZigtMSwgZmxhZ3MsIG1hdGNoZWRRdWVyaWVzLCAwLCB0b2tlbiwgdmFsdWUsIGRlcHMpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gX2RlZihcbiAgICBjaGVja0luZGV4OiBudW1iZXIsIGZsYWdzOiBOb2RlRmxhZ3MsXG4gICAgbWF0Y2hlZFF1ZXJpZXNEc2w6IFtzdHJpbmcgfCBudW1iZXIsIFF1ZXJ5VmFsdWVUeXBlXVtdIHwgbnVsbCwgY2hpbGRDb3VudDogbnVtYmVyLCB0b2tlbjogYW55LFxuICAgIHZhbHVlOiBhbnksIGRlcHM6IChbRGVwRmxhZ3MsIGFueV0gfCBhbnkpW10sIGJpbmRpbmdzPzogQmluZGluZ0RlZltdLFxuICAgIG91dHB1dHM/OiBPdXRwdXREZWZbXSk6IE5vZGVEZWYge1xuICBjb25zdCB7bWF0Y2hlZFF1ZXJpZXMsIHJlZmVyZW5jZXMsIG1hdGNoZWRRdWVyeUlkc30gPSBzcGxpdE1hdGNoZWRRdWVyaWVzRHNsKG1hdGNoZWRRdWVyaWVzRHNsKTtcbiAgaWYgKCFvdXRwdXRzKSB7XG4gICAgb3V0cHV0cyA9IFtdO1xuICB9XG4gIGlmICghYmluZGluZ3MpIHtcbiAgICBiaW5kaW5ncyA9IFtdO1xuICB9XG4gIC8vIE5lZWQgdG8gcmVzb2x2ZSBmb3J3YXJkUmVmcyBhcyBlLmcuIGZvciBgdXNlVmFsdWVgIHdlXG4gIC8vIGxvd2VyZWQgdGhlIGV4cHJlc3Npb24gYW5kIHRoZW4gc3RvcHBlZCBldmFsdWF0aW5nIGl0LFxuICAvLyBpLmUuIGFsc28gZGlkbid0IHVud3JhcCBpdC5cbiAgdmFsdWUgPSByZXNvbHZlRm9yd2FyZFJlZih2YWx1ZSk7XG5cbiAgY29uc3QgZGVwRGVmcyA9IHNwbGl0RGVwc0RzbChkZXBzLCBzdHJpbmdpZnkodG9rZW4pKTtcblxuICByZXR1cm4ge1xuICAgIC8vIHdpbGwgYmV0IHNldCBieSB0aGUgdmlldyBkZWZpbml0aW9uXG4gICAgbm9kZUluZGV4OiAtMSxcbiAgICBwYXJlbnQ6IG51bGwsXG4gICAgcmVuZGVyUGFyZW50OiBudWxsLFxuICAgIGJpbmRpbmdJbmRleDogLTEsXG4gICAgb3V0cHV0SW5kZXg6IC0xLFxuICAgIC8vIHJlZ3VsYXIgdmFsdWVzXG4gICAgY2hlY2tJbmRleCxcbiAgICBmbGFncyxcbiAgICBjaGlsZEZsYWdzOiAwLFxuICAgIGRpcmVjdENoaWxkRmxhZ3M6IDAsXG4gICAgY2hpbGRNYXRjaGVkUXVlcmllczogMCwgbWF0Y2hlZFF1ZXJpZXMsIG1hdGNoZWRRdWVyeUlkcywgcmVmZXJlbmNlcyxcbiAgICBuZ0NvbnRlbnRJbmRleDogLTEsIGNoaWxkQ291bnQsIGJpbmRpbmdzLFxuICAgIGJpbmRpbmdGbGFnczogY2FsY0JpbmRpbmdGbGFncyhiaW5kaW5ncyksIG91dHB1dHMsXG4gICAgZWxlbWVudDogbnVsbCxcbiAgICBwcm92aWRlcjoge3Rva2VuLCB2YWx1ZSwgZGVwczogZGVwRGVmc30sXG4gICAgdGV4dDogbnVsbCxcbiAgICBxdWVyeTogbnVsbCxcbiAgICBuZ0NvbnRlbnQ6IG51bGxcbiAgfTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGNyZWF0ZVByb3ZpZGVySW5zdGFuY2UodmlldzogVmlld0RhdGEsIGRlZjogTm9kZURlZik6IGFueSB7XG4gIHJldHVybiBfY3JlYXRlUHJvdmlkZXJJbnN0YW5jZSh2aWV3LCBkZWYpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gY3JlYXRlUGlwZUluc3RhbmNlKHZpZXc6IFZpZXdEYXRhLCBkZWY6IE5vZGVEZWYpOiBhbnkge1xuICAvLyBkZXBzIGFyZSBsb29rZWQgdXAgZnJvbSBjb21wb25lbnQuXG4gIGxldCBjb21wVmlldyA9IHZpZXc7XG4gIHdoaWxlIChjb21wVmlldy5wYXJlbnQgJiYgIWlzQ29tcG9uZW50Vmlldyhjb21wVmlldykpIHtcbiAgICBjb21wVmlldyA9IGNvbXBWaWV3LnBhcmVudDtcbiAgfVxuICAvLyBwaXBlcyBjYW4gc2VlIHRoZSBwcml2YXRlIHNlcnZpY2VzIG9mIHRoZSBjb21wb25lbnRcbiAgY29uc3QgYWxsb3dQcml2YXRlU2VydmljZXMgPSB0cnVlO1xuICAvLyBwaXBlcyBhcmUgYWx3YXlzIGVhZ2VyIGFuZCBjbGFzc2VzIVxuICByZXR1cm4gY3JlYXRlQ2xhc3MoXG4gICAgICBjb21wVmlldy5wYXJlbnQgISwgdmlld1BhcmVudEVsKGNvbXBWaWV3KSAhLCBhbGxvd1ByaXZhdGVTZXJ2aWNlcywgZGVmLnByb3ZpZGVyICEudmFsdWUsXG4gICAgICBkZWYucHJvdmlkZXIgIS5kZXBzKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGNyZWF0ZURpcmVjdGl2ZUluc3RhbmNlKHZpZXc6IFZpZXdEYXRhLCBkZWY6IE5vZGVEZWYpOiBhbnkge1xuICAvLyBjb21wb25lbnRzIGNhbiBzZWUgb3RoZXIgcHJpdmF0ZSBzZXJ2aWNlcywgb3RoZXIgZGlyZWN0aXZlcyBjYW4ndC5cbiAgY29uc3QgYWxsb3dQcml2YXRlU2VydmljZXMgPSAoZGVmLmZsYWdzICYgTm9kZUZsYWdzLkNvbXBvbmVudCkgPiAwO1xuICAvLyBkaXJlY3RpdmVzIGFyZSBhbHdheXMgZWFnZXIgYW5kIGNsYXNzZXMhXG4gIGNvbnN0IGluc3RhbmNlID0gY3JlYXRlQ2xhc3MoXG4gICAgICB2aWV3LCBkZWYucGFyZW50ICEsIGFsbG93UHJpdmF0ZVNlcnZpY2VzLCBkZWYucHJvdmlkZXIgIS52YWx1ZSwgZGVmLnByb3ZpZGVyICEuZGVwcyk7XG4gIGlmIChkZWYub3V0cHV0cy5sZW5ndGgpIHtcbiAgICBmb3IgKGxldCBpID0gMDsgaSA8IGRlZi5vdXRwdXRzLmxlbmd0aDsgaSsrKSB7XG4gICAgICBjb25zdCBvdXRwdXQgPSBkZWYub3V0cHV0c1tpXTtcbiAgICAgIGNvbnN0IG91dHB1dE9ic2VydmFibGUgPSBpbnN0YW5jZVtvdXRwdXQucHJvcE5hbWUgIV07XG4gICAgICBpZiAoaXNPYnNlcnZhYmxlKG91dHB1dE9ic2VydmFibGUpKSB7XG4gICAgICAgIGNvbnN0IHN1YnNjcmlwdGlvbiA9IG91dHB1dE9ic2VydmFibGUuc3Vic2NyaWJlKFxuICAgICAgICAgICAgZXZlbnRIYW5kbGVyQ2xvc3VyZSh2aWV3LCBkZWYucGFyZW50ICEubm9kZUluZGV4LCBvdXRwdXQuZXZlbnROYW1lKSk7XG4gICAgICAgIHZpZXcuZGlzcG9zYWJsZXMgIVtkZWYub3V0cHV0SW5kZXggKyBpXSA9IHN1YnNjcmlwdGlvbi51bnN1YnNjcmliZS5iaW5kKHN1YnNjcmlwdGlvbik7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICB0aHJvdyBuZXcgRXJyb3IoXG4gICAgICAgICAgICBgQE91dHB1dCAke291dHB1dC5wcm9wTmFtZX0gbm90IGluaXRpYWxpemVkIGluICcke2luc3RhbmNlLmNvbnN0cnVjdG9yLm5hbWV9Jy5gKTtcbiAgICAgIH1cbiAgICB9XG4gIH1cbiAgcmV0dXJuIGluc3RhbmNlO1xufVxuXG5mdW5jdGlvbiBldmVudEhhbmRsZXJDbG9zdXJlKHZpZXc6IFZpZXdEYXRhLCBpbmRleDogbnVtYmVyLCBldmVudE5hbWU6IHN0cmluZykge1xuICByZXR1cm4gKGV2ZW50OiBhbnkpID0+IGRpc3BhdGNoRXZlbnQodmlldywgaW5kZXgsIGV2ZW50TmFtZSwgZXZlbnQpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gY2hlY2tBbmRVcGRhdGVEaXJlY3RpdmVJbmxpbmUoXG4gICAgdmlldzogVmlld0RhdGEsIGRlZjogTm9kZURlZiwgdjA6IGFueSwgdjE6IGFueSwgdjI6IGFueSwgdjM6IGFueSwgdjQ6IGFueSwgdjU6IGFueSwgdjY6IGFueSxcbiAgICB2NzogYW55LCB2ODogYW55LCB2OTogYW55KTogYm9vbGVhbiB7XG4gIGNvbnN0IHByb3ZpZGVyRGF0YSA9IGFzUHJvdmlkZXJEYXRhKHZpZXcsIGRlZi5ub2RlSW5kZXgpO1xuICBjb25zdCBkaXJlY3RpdmUgPSBwcm92aWRlckRhdGEuaW5zdGFuY2U7XG4gIGxldCBjaGFuZ2VkID0gZmFsc2U7XG4gIGxldCBjaGFuZ2VzOiBTaW1wbGVDaGFuZ2VzID0gdW5kZWZpbmVkICE7XG4gIGNvbnN0IGJpbmRMZW4gPSBkZWYuYmluZGluZ3MubGVuZ3RoO1xuICBpZiAoYmluZExlbiA+IDAgJiYgY2hlY2tCaW5kaW5nKHZpZXcsIGRlZiwgMCwgdjApKSB7XG4gICAgY2hhbmdlZCA9IHRydWU7XG4gICAgY2hhbmdlcyA9IHVwZGF0ZVByb3AodmlldywgcHJvdmlkZXJEYXRhLCBkZWYsIDAsIHYwLCBjaGFuZ2VzKTtcbiAgfVxuICBpZiAoYmluZExlbiA+IDEgJiYgY2hlY2tCaW5kaW5nKHZpZXcsIGRlZiwgMSwgdjEpKSB7XG4gICAgY2hhbmdlZCA9IHRydWU7XG4gICAgY2hhbmdlcyA9IHVwZGF0ZVByb3AodmlldywgcHJvdmlkZXJEYXRhLCBkZWYsIDEsIHYxLCBjaGFuZ2VzKTtcbiAgfVxuICBpZiAoYmluZExlbiA+IDIgJiYgY2hlY2tCaW5kaW5nKHZpZXcsIGRlZiwgMiwgdjIpKSB7XG4gICAgY2hhbmdlZCA9IHRydWU7XG4gICAgY2hhbmdlcyA9IHVwZGF0ZVByb3AodmlldywgcHJvdmlkZXJEYXRhLCBkZWYsIDIsIHYyLCBjaGFuZ2VzKTtcbiAgfVxuICBpZiAoYmluZExlbiA+IDMgJiYgY2hlY2tCaW5kaW5nKHZpZXcsIGRlZiwgMywgdjMpKSB7XG4gICAgY2hhbmdlZCA9IHRydWU7XG4gICAgY2hhbmdlcyA9IHVwZGF0ZVByb3AodmlldywgcHJvdmlkZXJEYXRhLCBkZWYsIDMsIHYzLCBjaGFuZ2VzKTtcbiAgfVxuICBpZiAoYmluZExlbiA+IDQgJiYgY2hlY2tCaW5kaW5nKHZpZXcsIGRlZiwgNCwgdjQpKSB7XG4gICAgY2hhbmdlZCA9IHRydWU7XG4gICAgY2hhbmdlcyA9IHVwZGF0ZVByb3AodmlldywgcHJvdmlkZXJEYXRhLCBkZWYsIDQsIHY0LCBjaGFuZ2VzKTtcbiAgfVxuICBpZiAoYmluZExlbiA+IDUgJiYgY2hlY2tCaW5kaW5nKHZpZXcsIGRlZiwgNSwgdjUpKSB7XG4gICAgY2hhbmdlZCA9IHRydWU7XG4gICAgY2hhbmdlcyA9IHVwZGF0ZVByb3AodmlldywgcHJvdmlkZXJEYXRhLCBkZWYsIDUsIHY1LCBjaGFuZ2VzKTtcbiAgfVxuICBpZiAoYmluZExlbiA+IDYgJiYgY2hlY2tCaW5kaW5nKHZpZXcsIGRlZiwgNiwgdjYpKSB7XG4gICAgY2hhbmdlZCA9IHRydWU7XG4gICAgY2hhbmdlcyA9IHVwZGF0ZVByb3AodmlldywgcHJvdmlkZXJEYXRhLCBkZWYsIDYsIHY2LCBjaGFuZ2VzKTtcbiAgfVxuICBpZiAoYmluZExlbiA+IDcgJiYgY2hlY2tCaW5kaW5nKHZpZXcsIGRlZiwgNywgdjcpKSB7XG4gICAgY2hhbmdlZCA9IHRydWU7XG4gICAgY2hhbmdlcyA9IHVwZGF0ZVByb3AodmlldywgcHJvdmlkZXJEYXRhLCBkZWYsIDcsIHY3LCBjaGFuZ2VzKTtcbiAgfVxuICBpZiAoYmluZExlbiA+IDggJiYgY2hlY2tCaW5kaW5nKHZpZXcsIGRlZiwgOCwgdjgpKSB7XG4gICAgY2hhbmdlZCA9IHRydWU7XG4gICAgY2hhbmdlcyA9IHVwZGF0ZVByb3AodmlldywgcHJvdmlkZXJEYXRhLCBkZWYsIDgsIHY4LCBjaGFuZ2VzKTtcbiAgfVxuICBpZiAoYmluZExlbiA+IDkgJiYgY2hlY2tCaW5kaW5nKHZpZXcsIGRlZiwgOSwgdjkpKSB7XG4gICAgY2hhbmdlZCA9IHRydWU7XG4gICAgY2hhbmdlcyA9IHVwZGF0ZVByb3AodmlldywgcHJvdmlkZXJEYXRhLCBkZWYsIDksIHY5LCBjaGFuZ2VzKTtcbiAgfVxuICBpZiAoY2hhbmdlcykge1xuICAgIGRpcmVjdGl2ZS5uZ09uQ2hhbmdlcyhjaGFuZ2VzKTtcbiAgfVxuICBpZiAoKGRlZi5mbGFncyAmIE5vZGVGbGFncy5PbkluaXQpICYmXG4gICAgICBzaG91bGRDYWxsTGlmZWN5Y2xlSW5pdEhvb2sodmlldywgVmlld1N0YXRlLkluaXRTdGF0ZV9DYWxsaW5nT25Jbml0LCBkZWYubm9kZUluZGV4KSkge1xuICAgIGRpcmVjdGl2ZS5uZ09uSW5pdCgpO1xuICB9XG4gIGlmIChkZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuRG9DaGVjaykge1xuICAgIGRpcmVjdGl2ZS5uZ0RvQ2hlY2soKTtcbiAgfVxuICByZXR1cm4gY2hhbmdlZDtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGNoZWNrQW5kVXBkYXRlRGlyZWN0aXZlRHluYW1pYyhcbiAgICB2aWV3OiBWaWV3RGF0YSwgZGVmOiBOb2RlRGVmLCB2YWx1ZXM6IGFueVtdKTogYm9vbGVhbiB7XG4gIGNvbnN0IHByb3ZpZGVyRGF0YSA9IGFzUHJvdmlkZXJEYXRhKHZpZXcsIGRlZi5ub2RlSW5kZXgpO1xuICBjb25zdCBkaXJlY3RpdmUgPSBwcm92aWRlckRhdGEuaW5zdGFuY2U7XG4gIGxldCBjaGFuZ2VkID0gZmFsc2U7XG4gIGxldCBjaGFuZ2VzOiBTaW1wbGVDaGFuZ2VzID0gdW5kZWZpbmVkICE7XG4gIGZvciAobGV0IGkgPSAwOyBpIDwgdmFsdWVzLmxlbmd0aDsgaSsrKSB7XG4gICAgaWYgKGNoZWNrQmluZGluZyh2aWV3LCBkZWYsIGksIHZhbHVlc1tpXSkpIHtcbiAgICAgIGNoYW5nZWQgPSB0cnVlO1xuICAgICAgY2hhbmdlcyA9IHVwZGF0ZVByb3AodmlldywgcHJvdmlkZXJEYXRhLCBkZWYsIGksIHZhbHVlc1tpXSwgY2hhbmdlcyk7XG4gICAgfVxuICB9XG4gIGlmIChjaGFuZ2VzKSB7XG4gICAgZGlyZWN0aXZlLm5nT25DaGFuZ2VzKGNoYW5nZXMpO1xuICB9XG4gIGlmICgoZGVmLmZsYWdzICYgTm9kZUZsYWdzLk9uSW5pdCkgJiZcbiAgICAgIHNob3VsZENhbGxMaWZlY3ljbGVJbml0SG9vayh2aWV3LCBWaWV3U3RhdGUuSW5pdFN0YXRlX0NhbGxpbmdPbkluaXQsIGRlZi5ub2RlSW5kZXgpKSB7XG4gICAgZGlyZWN0aXZlLm5nT25Jbml0KCk7XG4gIH1cbiAgaWYgKGRlZi5mbGFncyAmIE5vZGVGbGFncy5Eb0NoZWNrKSB7XG4gICAgZGlyZWN0aXZlLm5nRG9DaGVjaygpO1xuICB9XG4gIHJldHVybiBjaGFuZ2VkO1xufVxuXG5mdW5jdGlvbiBfY3JlYXRlUHJvdmlkZXJJbnN0YW5jZSh2aWV3OiBWaWV3RGF0YSwgZGVmOiBOb2RlRGVmKTogYW55IHtcbiAgLy8gcHJpdmF0ZSBzZXJ2aWNlcyBjYW4gc2VlIG90aGVyIHByaXZhdGUgc2VydmljZXNcbiAgY29uc3QgYWxsb3dQcml2YXRlU2VydmljZXMgPSAoZGVmLmZsYWdzICYgTm9kZUZsYWdzLlByaXZhdGVQcm92aWRlcikgPiAwO1xuICBjb25zdCBwcm92aWRlckRlZiA9IGRlZi5wcm92aWRlcjtcbiAgc3dpdGNoIChkZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuVHlwZXMpIHtcbiAgICBjYXNlIE5vZGVGbGFncy5UeXBlQ2xhc3NQcm92aWRlcjpcbiAgICAgIHJldHVybiBjcmVhdGVDbGFzcyhcbiAgICAgICAgICB2aWV3LCBkZWYucGFyZW50ICEsIGFsbG93UHJpdmF0ZVNlcnZpY2VzLCBwcm92aWRlckRlZiAhLnZhbHVlLCBwcm92aWRlckRlZiAhLmRlcHMpO1xuICAgIGNhc2UgTm9kZUZsYWdzLlR5cGVGYWN0b3J5UHJvdmlkZXI6XG4gICAgICByZXR1cm4gY2FsbEZhY3RvcnkoXG4gICAgICAgICAgdmlldywgZGVmLnBhcmVudCAhLCBhbGxvd1ByaXZhdGVTZXJ2aWNlcywgcHJvdmlkZXJEZWYgIS52YWx1ZSwgcHJvdmlkZXJEZWYgIS5kZXBzKTtcbiAgICBjYXNlIE5vZGVGbGFncy5UeXBlVXNlRXhpc3RpbmdQcm92aWRlcjpcbiAgICAgIHJldHVybiByZXNvbHZlRGVwKHZpZXcsIGRlZi5wYXJlbnQgISwgYWxsb3dQcml2YXRlU2VydmljZXMsIHByb3ZpZGVyRGVmICEuZGVwc1swXSk7XG4gICAgY2FzZSBOb2RlRmxhZ3MuVHlwZVZhbHVlUHJvdmlkZXI6XG4gICAgICByZXR1cm4gcHJvdmlkZXJEZWYgIS52YWx1ZTtcbiAgfVxufVxuXG5mdW5jdGlvbiBjcmVhdGVDbGFzcyhcbiAgICB2aWV3OiBWaWV3RGF0YSwgZWxEZWY6IE5vZGVEZWYsIGFsbG93UHJpdmF0ZVNlcnZpY2VzOiBib29sZWFuLCBjdG9yOiBhbnksIGRlcHM6IERlcERlZltdKTogYW55IHtcbiAgY29uc3QgbGVuID0gZGVwcy5sZW5ndGg7XG4gIHN3aXRjaCAobGVuKSB7XG4gICAgY2FzZSAwOlxuICAgICAgcmV0dXJuIG5ldyBjdG9yKCk7XG4gICAgY2FzZSAxOlxuICAgICAgcmV0dXJuIG5ldyBjdG9yKHJlc29sdmVEZXAodmlldywgZWxEZWYsIGFsbG93UHJpdmF0ZVNlcnZpY2VzLCBkZXBzWzBdKSk7XG4gICAgY2FzZSAyOlxuICAgICAgcmV0dXJuIG5ldyBjdG9yKFxuICAgICAgICAgIHJlc29sdmVEZXAodmlldywgZWxEZWYsIGFsbG93UHJpdmF0ZVNlcnZpY2VzLCBkZXBzWzBdKSxcbiAgICAgICAgICByZXNvbHZlRGVwKHZpZXcsIGVsRGVmLCBhbGxvd1ByaXZhdGVTZXJ2aWNlcywgZGVwc1sxXSkpO1xuICAgIGNhc2UgMzpcbiAgICAgIHJldHVybiBuZXcgY3RvcihcbiAgICAgICAgICByZXNvbHZlRGVwKHZpZXcsIGVsRGVmLCBhbGxvd1ByaXZhdGVTZXJ2aWNlcywgZGVwc1swXSksXG4gICAgICAgICAgcmVzb2x2ZURlcCh2aWV3LCBlbERlZiwgYWxsb3dQcml2YXRlU2VydmljZXMsIGRlcHNbMV0pLFxuICAgICAgICAgIHJlc29sdmVEZXAodmlldywgZWxEZWYsIGFsbG93UHJpdmF0ZVNlcnZpY2VzLCBkZXBzWzJdKSk7XG4gICAgZGVmYXVsdDpcbiAgICAgIGNvbnN0IGRlcFZhbHVlcyA9IFtdO1xuICAgICAgZm9yIChsZXQgaSA9IDA7IGkgPCBsZW47IGkrKykge1xuICAgICAgICBkZXBWYWx1ZXMucHVzaChyZXNvbHZlRGVwKHZpZXcsIGVsRGVmLCBhbGxvd1ByaXZhdGVTZXJ2aWNlcywgZGVwc1tpXSkpO1xuICAgICAgfVxuICAgICAgcmV0dXJuIG5ldyBjdG9yKC4uLmRlcFZhbHVlcyk7XG4gIH1cbn1cblxuZnVuY3Rpb24gY2FsbEZhY3RvcnkoXG4gICAgdmlldzogVmlld0RhdGEsIGVsRGVmOiBOb2RlRGVmLCBhbGxvd1ByaXZhdGVTZXJ2aWNlczogYm9vbGVhbiwgZmFjdG9yeTogYW55LFxuICAgIGRlcHM6IERlcERlZltdKTogYW55IHtcbiAgY29uc3QgbGVuID0gZGVwcy5sZW5ndGg7XG4gIHN3aXRjaCAobGVuKSB7XG4gICAgY2FzZSAwOlxuICAgICAgcmV0dXJuIGZhY3RvcnkoKTtcbiAgICBjYXNlIDE6XG4gICAgICByZXR1cm4gZmFjdG9yeShyZXNvbHZlRGVwKHZpZXcsIGVsRGVmLCBhbGxvd1ByaXZhdGVTZXJ2aWNlcywgZGVwc1swXSkpO1xuICAgIGNhc2UgMjpcbiAgICAgIHJldHVybiBmYWN0b3J5KFxuICAgICAgICAgIHJlc29sdmVEZXAodmlldywgZWxEZWYsIGFsbG93UHJpdmF0ZVNlcnZpY2VzLCBkZXBzWzBdKSxcbiAgICAgICAgICByZXNvbHZlRGVwKHZpZXcsIGVsRGVmLCBhbGxvd1ByaXZhdGVTZXJ2aWNlcywgZGVwc1sxXSkpO1xuICAgIGNhc2UgMzpcbiAgICAgIHJldHVybiBmYWN0b3J5KFxuICAgICAgICAgIHJlc29sdmVEZXAodmlldywgZWxEZWYsIGFsbG93UHJpdmF0ZVNlcnZpY2VzLCBkZXBzWzBdKSxcbiAgICAgICAgICByZXNvbHZlRGVwKHZpZXcsIGVsRGVmLCBhbGxvd1ByaXZhdGVTZXJ2aWNlcywgZGVwc1sxXSksXG4gICAgICAgICAgcmVzb2x2ZURlcCh2aWV3LCBlbERlZiwgYWxsb3dQcml2YXRlU2VydmljZXMsIGRlcHNbMl0pKTtcbiAgICBkZWZhdWx0OlxuICAgICAgY29uc3QgZGVwVmFsdWVzID0gW107XG4gICAgICBmb3IgKGxldCBpID0gMDsgaSA8IGxlbjsgaSsrKSB7XG4gICAgICAgIGRlcFZhbHVlcy5wdXNoKHJlc29sdmVEZXAodmlldywgZWxEZWYsIGFsbG93UHJpdmF0ZVNlcnZpY2VzLCBkZXBzW2ldKSk7XG4gICAgICB9XG4gICAgICByZXR1cm4gZmFjdG9yeSguLi5kZXBWYWx1ZXMpO1xuICB9XG59XG5cbi8vIFRoaXMgZGVmYXVsdCB2YWx1ZSBpcyB3aGVuIGNoZWNraW5nIHRoZSBoaWVyYXJjaHkgZm9yIGEgdG9rZW4uXG4vL1xuLy8gSXQgbWVhbnMgYm90aDpcbi8vIC0gdGhlIHRva2VuIGlzIG5vdCBwcm92aWRlZCBieSB0aGUgY3VycmVudCBpbmplY3Rvcixcbi8vIC0gb25seSB0aGUgZWxlbWVudCBpbmplY3RvcnMgc2hvdWxkIGJlIGNoZWNrZWQgKGllIGRvIG5vdCBjaGVjayBtb2R1bGUgaW5qZWN0b3JzXG4vL1xuLy8gICAgICAgICAgbW9kMVxuLy8gICAgICAgICAvXG4vLyAgICAgICBlbDEgICBtb2QyXG4vLyAgICAgICAgIFxcICAvXG4vLyAgICAgICAgIGVsMlxuLy9cbi8vIFdoZW4gcmVxdWVzdGluZyBlbDIuaW5qZWN0b3IuZ2V0KHRva2VuKSwgd2Ugc2hvdWxkIGNoZWNrIGluIHRoZSBmb2xsb3dpbmcgb3JkZXIgYW5kIHJldHVybiB0aGVcbi8vIGZpcnN0IGZvdW5kIHZhbHVlOlxuLy8gLSBlbDIuaW5qZWN0b3IuZ2V0KHRva2VuLCBkZWZhdWx0KVxuLy8gLSBlbDEuaW5qZWN0b3IuZ2V0KHRva2VuLCBOT1RfRk9VTkRfQ0hFQ0tfT05MWV9FTEVNRU5UX0lOSkVDVE9SKSAtPiBkbyBub3QgY2hlY2sgdGhlIG1vZHVsZVxuLy8gLSBtb2QyLmluamVjdG9yLmdldCh0b2tlbiwgZGVmYXVsdClcbmV4cG9ydCBjb25zdCBOT1RfRk9VTkRfQ0hFQ0tfT05MWV9FTEVNRU5UX0lOSkVDVE9SID0ge307XG5cbmV4cG9ydCBmdW5jdGlvbiByZXNvbHZlRGVwKFxuICAgIHZpZXc6IFZpZXdEYXRhLCBlbERlZjogTm9kZURlZiwgYWxsb3dQcml2YXRlU2VydmljZXM6IGJvb2xlYW4sIGRlcERlZjogRGVwRGVmLFxuICAgIG5vdEZvdW5kVmFsdWU6IGFueSA9IEluamVjdG9yLlRIUk9XX0lGX05PVF9GT1VORCk6IGFueSB7XG4gIGlmIChkZXBEZWYuZmxhZ3MgJiBEZXBGbGFncy5WYWx1ZSkge1xuICAgIHJldHVybiBkZXBEZWYudG9rZW47XG4gIH1cbiAgY29uc3Qgc3RhcnRWaWV3ID0gdmlldztcbiAgaWYgKGRlcERlZi5mbGFncyAmIERlcEZsYWdzLk9wdGlvbmFsKSB7XG4gICAgbm90Rm91bmRWYWx1ZSA9IG51bGw7XG4gIH1cbiAgY29uc3QgdG9rZW5LZXkgPSBkZXBEZWYudG9rZW5LZXk7XG5cbiAgaWYgKHRva2VuS2V5ID09PSBDaGFuZ2VEZXRlY3RvclJlZlRva2VuS2V5KSB7XG4gICAgLy8gZGlyZWN0aXZlcyBvbiB0aGUgc2FtZSBlbGVtZW50IGFzIGEgY29tcG9uZW50IHNob3VsZCBiZSBhYmxlIHRvIGNvbnRyb2wgdGhlIGNoYW5nZSBkZXRlY3RvclxuICAgIC8vIG9mIHRoYXQgY29tcG9uZW50IGFzIHdlbGwuXG4gICAgYWxsb3dQcml2YXRlU2VydmljZXMgPSAhIShlbERlZiAmJiBlbERlZi5lbGVtZW50ICEuY29tcG9uZW50Vmlldyk7XG4gIH1cblxuICBpZiAoZWxEZWYgJiYgKGRlcERlZi5mbGFncyAmIERlcEZsYWdzLlNraXBTZWxmKSkge1xuICAgIGFsbG93UHJpdmF0ZVNlcnZpY2VzID0gZmFsc2U7XG4gICAgZWxEZWYgPSBlbERlZi5wYXJlbnQgITtcbiAgfVxuXG4gIGxldCBzZWFyY2hWaWV3OiBWaWV3RGF0YXxudWxsID0gdmlldztcbiAgd2hpbGUgKHNlYXJjaFZpZXcpIHtcbiAgICBpZiAoZWxEZWYpIHtcbiAgICAgIHN3aXRjaCAodG9rZW5LZXkpIHtcbiAgICAgICAgY2FzZSBSZW5kZXJlcjJUb2tlbktleToge1xuICAgICAgICAgIGNvbnN0IGNvbXBWaWV3ID0gZmluZENvbXBWaWV3KHNlYXJjaFZpZXcsIGVsRGVmLCBhbGxvd1ByaXZhdGVTZXJ2aWNlcyk7XG4gICAgICAgICAgcmV0dXJuIGNvbXBWaWV3LnJlbmRlcmVyO1xuICAgICAgICB9XG4gICAgICAgIGNhc2UgRWxlbWVudFJlZlRva2VuS2V5OlxuICAgICAgICAgIHJldHVybiBuZXcgRWxlbWVudFJlZihhc0VsZW1lbnREYXRhKHNlYXJjaFZpZXcsIGVsRGVmLm5vZGVJbmRleCkucmVuZGVyRWxlbWVudCk7XG4gICAgICAgIGNhc2UgVmlld0NvbnRhaW5lclJlZlRva2VuS2V5OlxuICAgICAgICAgIHJldHVybiBhc0VsZW1lbnREYXRhKHNlYXJjaFZpZXcsIGVsRGVmLm5vZGVJbmRleCkudmlld0NvbnRhaW5lcjtcbiAgICAgICAgY2FzZSBUZW1wbGF0ZVJlZlRva2VuS2V5OiB7XG4gICAgICAgICAgaWYgKGVsRGVmLmVsZW1lbnQgIS50ZW1wbGF0ZSkge1xuICAgICAgICAgICAgcmV0dXJuIGFzRWxlbWVudERhdGEoc2VhcmNoVmlldywgZWxEZWYubm9kZUluZGV4KS50ZW1wbGF0ZTtcbiAgICAgICAgICB9XG4gICAgICAgICAgYnJlYWs7XG4gICAgICAgIH1cbiAgICAgICAgY2FzZSBDaGFuZ2VEZXRlY3RvclJlZlRva2VuS2V5OiB7XG4gICAgICAgICAgbGV0IGNkVmlldyA9IGZpbmRDb21wVmlldyhzZWFyY2hWaWV3LCBlbERlZiwgYWxsb3dQcml2YXRlU2VydmljZXMpO1xuICAgICAgICAgIHJldHVybiBjcmVhdGVDaGFuZ2VEZXRlY3RvclJlZihjZFZpZXcpO1xuICAgICAgICB9XG4gICAgICAgIGNhc2UgSW5qZWN0b3JSZWZUb2tlbktleTpcbiAgICAgICAgY2FzZSBJTkpFQ1RPUlJlZlRva2VuS2V5OlxuICAgICAgICAgIHJldHVybiBjcmVhdGVJbmplY3RvcihzZWFyY2hWaWV3LCBlbERlZik7XG4gICAgICAgIGRlZmF1bHQ6XG4gICAgICAgICAgY29uc3QgcHJvdmlkZXJEZWYgPVxuICAgICAgICAgICAgICAoYWxsb3dQcml2YXRlU2VydmljZXMgPyBlbERlZi5lbGVtZW50ICEuYWxsUHJvdmlkZXJzIDpcbiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZWxEZWYuZWxlbWVudCAhLnB1YmxpY1Byb3ZpZGVycykgIVt0b2tlbktleV07XG4gICAgICAgICAgaWYgKHByb3ZpZGVyRGVmKSB7XG4gICAgICAgICAgICBsZXQgcHJvdmlkZXJEYXRhID0gYXNQcm92aWRlckRhdGEoc2VhcmNoVmlldywgcHJvdmlkZXJEZWYubm9kZUluZGV4KTtcbiAgICAgICAgICAgIGlmICghcHJvdmlkZXJEYXRhKSB7XG4gICAgICAgICAgICAgIHByb3ZpZGVyRGF0YSA9IHtpbnN0YW5jZTogX2NyZWF0ZVByb3ZpZGVySW5zdGFuY2Uoc2VhcmNoVmlldywgcHJvdmlkZXJEZWYpfTtcbiAgICAgICAgICAgICAgc2VhcmNoVmlldy5ub2Rlc1twcm92aWRlckRlZi5ub2RlSW5kZXhdID0gcHJvdmlkZXJEYXRhIGFzIGFueTtcbiAgICAgICAgICAgIH1cbiAgICAgICAgICAgIHJldHVybiBwcm92aWRlckRhdGEuaW5zdGFuY2U7XG4gICAgICAgICAgfVxuICAgICAgfVxuICAgIH1cblxuICAgIGFsbG93UHJpdmF0ZVNlcnZpY2VzID0gaXNDb21wb25lbnRWaWV3KHNlYXJjaFZpZXcpO1xuICAgIGVsRGVmID0gdmlld1BhcmVudEVsKHNlYXJjaFZpZXcpICE7XG4gICAgc2VhcmNoVmlldyA9IHNlYXJjaFZpZXcucGFyZW50ICE7XG5cbiAgICBpZiAoZGVwRGVmLmZsYWdzICYgRGVwRmxhZ3MuU2VsZikge1xuICAgICAgc2VhcmNoVmlldyA9IG51bGw7XG4gICAgfVxuICB9XG5cbiAgY29uc3QgdmFsdWUgPSBzdGFydFZpZXcucm9vdC5pbmplY3Rvci5nZXQoZGVwRGVmLnRva2VuLCBOT1RfRk9VTkRfQ0hFQ0tfT05MWV9FTEVNRU5UX0lOSkVDVE9SKTtcblxuICBpZiAodmFsdWUgIT09IE5PVF9GT1VORF9DSEVDS19PTkxZX0VMRU1FTlRfSU5KRUNUT1IgfHxcbiAgICAgIG5vdEZvdW5kVmFsdWUgPT09IE5PVF9GT1VORF9DSEVDS19PTkxZX0VMRU1FTlRfSU5KRUNUT1IpIHtcbiAgICAvLyBSZXR1cm4gdGhlIHZhbHVlIGZyb20gdGhlIHJvb3QgZWxlbWVudCBpbmplY3RvciB3aGVuXG4gICAgLy8gLSBpdCBwcm92aWRlcyBpdFxuICAgIC8vICAgKHZhbHVlICE9PSBOT1RfRk9VTkRfQ0hFQ0tfT05MWV9FTEVNRU5UX0lOSkVDVE9SKVxuICAgIC8vIC0gdGhlIG1vZHVsZSBpbmplY3RvciBzaG91bGQgbm90IGJlIGNoZWNrZWRcbiAgICAvLyAgIChub3RGb3VuZFZhbHVlID09PSBOT1RfRk9VTkRfQ0hFQ0tfT05MWV9FTEVNRU5UX0lOSkVDVE9SKVxuICAgIHJldHVybiB2YWx1ZTtcbiAgfVxuXG4gIHJldHVybiBzdGFydFZpZXcucm9vdC5uZ01vZHVsZS5pbmplY3Rvci5nZXQoZGVwRGVmLnRva2VuLCBub3RGb3VuZFZhbHVlKTtcbn1cblxuZnVuY3Rpb24gZmluZENvbXBWaWV3KHZpZXc6IFZpZXdEYXRhLCBlbERlZjogTm9kZURlZiwgYWxsb3dQcml2YXRlU2VydmljZXM6IGJvb2xlYW4pIHtcbiAgbGV0IGNvbXBWaWV3OiBWaWV3RGF0YTtcbiAgaWYgKGFsbG93UHJpdmF0ZVNlcnZpY2VzKSB7XG4gICAgY29tcFZpZXcgPSBhc0VsZW1lbnREYXRhKHZpZXcsIGVsRGVmLm5vZGVJbmRleCkuY29tcG9uZW50VmlldztcbiAgfSBlbHNlIHtcbiAgICBjb21wVmlldyA9IHZpZXc7XG4gICAgd2hpbGUgKGNvbXBWaWV3LnBhcmVudCAmJiAhaXNDb21wb25lbnRWaWV3KGNvbXBWaWV3KSkge1xuICAgICAgY29tcFZpZXcgPSBjb21wVmlldy5wYXJlbnQ7XG4gICAgfVxuICB9XG4gIHJldHVybiBjb21wVmlldztcbn1cblxuZnVuY3Rpb24gdXBkYXRlUHJvcChcbiAgICB2aWV3OiBWaWV3RGF0YSwgcHJvdmlkZXJEYXRhOiBQcm92aWRlckRhdGEsIGRlZjogTm9kZURlZiwgYmluZGluZ0lkeDogbnVtYmVyLCB2YWx1ZTogYW55LFxuICAgIGNoYW5nZXM6IFNpbXBsZUNoYW5nZXMpOiBTaW1wbGVDaGFuZ2VzIHtcbiAgaWYgKGRlZi5mbGFncyAmIE5vZGVGbGFncy5Db21wb25lbnQpIHtcbiAgICBjb25zdCBjb21wVmlldyA9IGFzRWxlbWVudERhdGEodmlldywgZGVmLnBhcmVudCAhLm5vZGVJbmRleCkuY29tcG9uZW50VmlldztcbiAgICBpZiAoY29tcFZpZXcuZGVmLmZsYWdzICYgVmlld0ZsYWdzLk9uUHVzaCkge1xuICAgICAgY29tcFZpZXcuc3RhdGUgfD0gVmlld1N0YXRlLkNoZWNrc0VuYWJsZWQ7XG4gICAgfVxuICB9XG4gIGNvbnN0IGJpbmRpbmcgPSBkZWYuYmluZGluZ3NbYmluZGluZ0lkeF07XG4gIGNvbnN0IHByb3BOYW1lID0gYmluZGluZy5uYW1lICE7XG4gIC8vIE5vdGU6IFRoaXMgaXMgc3RpbGwgc2FmZSB3aXRoIENsb3N1cmUgQ29tcGlsZXIgYXNcbiAgLy8gdGhlIHVzZXIgcGFzc2VkIGluIHRoZSBwcm9wZXJ0eSBuYW1lIGFzIGFuIG9iamVjdCBoYXMgdG8gYHByb3ZpZGVyRGVmYCxcbiAgLy8gc28gQ2xvc3VyZSBDb21waWxlciB3aWxsIGhhdmUgcmVuYW1lZCB0aGUgcHJvcGVydHkgY29ycmVjdGx5IGFscmVhZHkuXG4gIHByb3ZpZGVyRGF0YS5pbnN0YW5jZVtwcm9wTmFtZV0gPSB2YWx1ZTtcbiAgaWYgKGRlZi5mbGFncyAmIE5vZGVGbGFncy5PbkNoYW5nZXMpIHtcbiAgICBjaGFuZ2VzID0gY2hhbmdlcyB8fCB7fTtcbiAgICBjb25zdCBvbGRWYWx1ZSA9IFdyYXBwZWRWYWx1ZS51bndyYXAodmlldy5vbGRWYWx1ZXNbZGVmLmJpbmRpbmdJbmRleCArIGJpbmRpbmdJZHhdKTtcbiAgICBjb25zdCBiaW5kaW5nID0gZGVmLmJpbmRpbmdzW2JpbmRpbmdJZHhdO1xuICAgIGNoYW5nZXNbYmluZGluZy5ub25NaW5pZmllZE5hbWUgIV0gPVxuICAgICAgICBuZXcgU2ltcGxlQ2hhbmdlKG9sZFZhbHVlLCB2YWx1ZSwgKHZpZXcuc3RhdGUgJiBWaWV3U3RhdGUuRmlyc3RDaGVjaykgIT09IDApO1xuICB9XG4gIHZpZXcub2xkVmFsdWVzW2RlZi5iaW5kaW5nSW5kZXggKyBiaW5kaW5nSWR4XSA9IHZhbHVlO1xuICByZXR1cm4gY2hhbmdlcztcbn1cblxuLy8gVGhpcyBmdW5jdGlvbiBjYWxscyB0aGUgbmdBZnRlckNvbnRlbnRDaGVjaywgbmdBZnRlckNvbnRlbnRJbml0LFxuLy8gbmdBZnRlclZpZXdDaGVjaywgYW5kIG5nQWZ0ZXJWaWV3SW5pdCBsaWZlY3ljbGUgaG9va3MgKGRlcGVuZGluZyBvbiB0aGUgbm9kZVxuLy8gZmxhZ3MgaW4gbGlmZWN5Y2xlKS4gVW5saWtlIG5nRG9DaGVjaywgbmdPbkNoYW5nZXMgYW5kIG5nT25Jbml0LCB3aGljaCBhcmVcbi8vIGNhbGxlZCBkdXJpbmcgYSBwcmUtb3JkZXIgdHJhdmVyc2FsIG9mIHRoZSB2aWV3IHRyZWUgKHRoYXQgaXMgY2FsbGluZyB0aGVcbi8vIHBhcmVudCBob29rcyBiZWZvcmUgdGhlIGNoaWxkIGhvb2tzKSB0aGVzZSBldmVudHMgYXJlIHNlbnQgaW4gdXNpbmcgYVxuLy8gcG9zdC1vcmRlciB0cmF2ZXJzYWwgb2YgdGhlIHRyZWUgKGNoaWxkcmVuIGJlZm9yZSBwYXJlbnRzKS4gVGhpcyBjaGFuZ2VzIHRoZVxuLy8gbWVhbmluZyBvZiBpbml0SW5kZXggaW4gdGhlIHZpZXcgc3RhdGUuIEZvciBuZ09uSW5pdCwgaW5pdEluZGV4IHRyYWNrcyB0aGVcbi8vIGV4cGVjdGVkIG5vZGVJbmRleCB3aGljaCBhIG5nT25Jbml0IHNob3VsZCBiZSBjYWxsZWQuIFdoZW4gc2VuZGluZ1xuLy8gbmdBZnRlckNvbnRlbnRJbml0IGFuZCBuZ0FmdGVyVmlld0luaXQgaXQgaXMgdGhlIGV4cGVjdGVkIGNvdW50IG9mXG4vLyBuZ0FmdGVyQ29udGVudEluaXQgb3IgbmdBZnRlclZpZXdJbml0IG1ldGhvZHMgdGhhdCBoYXZlIGJlZW4gY2FsbGVkLiBUaGlzXG4vLyBlbnN1cmUgdGhhdCBkZXNwaXRlIGJlaW5nIGNhbGxlZCByZWN1cnNpdmVseSBvciBhZnRlciBwaWNraW5nIHVwIGFmdGVyIGFuXG4vLyBleGNlcHRpb24sIHRoZSBuZ0FmdGVyQ29udGVudEluaXQgb3IgbmdBZnRlclZpZXdJbml0IHdpbGwgYmUgY2FsbGVkIG9uIHRoZVxuLy8gY29ycmVjdCBub2Rlcy4gQ29uc2lkZXIgZm9yIGV4YW1wbGUsIHRoZSBmb2xsb3dpbmcgKHdoZXJlIEUgaXMgYW4gZWxlbWVudFxuLy8gYW5kIEQgaXMgYSBkaXJlY3RpdmUpXG4vLyAgVHJlZTogICAgICAgcHJlLW9yZGVyIGluZGV4ICBwb3N0LW9yZGVyIGluZGV4XG4vLyAgICBFMSAgICAgICAgMCAgICAgICAgICAgICAgICA2XG4vLyAgICAgIEUyICAgICAgMSAgICAgICAgICAgICAgICAxXG4vLyAgICAgICBEMyAgICAgMiAgICAgICAgICAgICAgICAwXG4vLyAgICAgIEU0ICAgICAgMyAgICAgICAgICAgICAgICA1XG4vLyAgICAgICBFNSAgICAgNCAgICAgICAgICAgICAgICA0XG4vLyAgICAgICAgRTYgICAgNSAgICAgICAgICAgICAgICAyXG4vLyAgICAgICAgRTcgICAgNiAgICAgICAgICAgICAgICAzXG4vLyBBcyBjYW4gYmUgc2VlbiwgdGhlIHBvc3Qtb3JkZXIgaW5kZXggaGFzIGFuIHVuY2xlYXIgcmVsYXRpb25zaGlwIHRvIHRoZVxuLy8gcHJlLW9yZGVyIGluZGV4IChwb3N0T3JkZXJJbmRleCA9PT0gcHJlT3JkZXJJbmRleCAtIHBhcmVudENvdW50ICtcbi8vIGNoaWxkQ291bnQpLiBTaW5jZSBudW1iZXIgb2YgY2FsbHMgdG8gbmdBZnRlckNvbnRlbnRJbml0IGFuZCBuZ0FmdGVyVmlld0luaXRcbi8vIGFyZSBzdGFibGUgKHdpbGwgYmUgdGhlIHNhbWUgZm9yIHRoZSBzYW1lIHZpZXcgcmVnYXJkbGVzcyBvZiBleGNlcHRpb25zIG9yXG4vLyByZWN1cnNpb24pIHdlIGp1c3QgbmVlZCB0byBjb3VudCB0aGVtIHdoaWNoIHdpbGwgcm91Z2hseSBjb3JyZXNwb25kIHRvIHRoZVxuLy8gcG9zdC1vcmRlciBpbmRleCAoaXQgc2tpcHMgZWxlbWVudHMgYW5kIGRpcmVjdGl2ZXMgdGhhdCBkbyBub3QgaGF2ZVxuLy8gbGlmZWN5Y2xlIGhvb2tzKS5cbi8vXG4vLyBGb3IgZXhhbXBsZSwgaWYgYW4gZXhjZXB0aW9uIGlzIHJhaXNlZCBpbiB0aGUgRTYub25BZnRlclZpZXdJbml0KCkgdGhlXG4vLyBpbml0SW5kZXggaXMgbGVmdCBhdCAzIChieSBzaG91bGRDYWxsTGlmZWN5Y2xlSW5pdEhvb2soKSB3aGljaCBzZXQgaXQgdG9cbi8vIGluaXRJbmRleCArIDEpLiBXaGVuIGNoZWNrQW5kVXBkYXRlVmlldygpIGlzIGNhbGxlZCBhZ2FpbiBEMywgRTIgYW5kIEU2IHdpbGxcbi8vIG5vdCBoYXZlIHRoZWlyIG5nQWZ0ZXJWaWV3SW5pdCgpIGNhbGxlZCBidXQsIHN0YXJ0aW5nIHdpdGggRTcsIHRoZSByZXN0IG9mXG4vLyB0aGUgdmlldyB3aWxsIGJlZ2luIGdldHRpbmcgbmdBZnRlclZpZXdJbml0KCkgY2FsbGVkIHVudGlsIGEgY2hlY2sgYW5kXG4vLyBwYXNzIGlzIGNvbXBsZXRlLlxuLy9cbi8vIFRoaXMgYWxnb3J0aGltIGFsc28gaGFuZGxlcyByZWN1cnNpb24uIENvbnNpZGVyIGlmIEU0J3MgbmdBZnRlclZpZXdJbml0KClcbi8vIGluZGlyZWN0bHkgY2FsbHMgRTEncyBDaGFuZ2VEZXRlY3RvclJlZi5kZXRlY3RDaGFuZ2VzKCkuIFRoZSBleHBlY3RlZFxuLy8gaW5pdEluZGV4IGlzIHNldCB0byA2LCB0aGUgcmVjdXNpdmUgY2hlY2tBbmRVcGRhdGVWaWV3KCkgc3RhcnRzIHdhbGsgYWdhaW4uXG4vLyBEMywgRTIsIEU2LCBFNywgRTUgYW5kIEU0IGFyZSBza2lwcGVkLCBuZ0FmdGVyVmlld0luaXQoKSBpcyBjYWxsZWQgb24gRTEuXG4vLyBXaGVuIHRoZSByZWN1cnNpb24gcmV0dXJucyB0aGUgaW5pdEluZGV4IHdpbGwgYmUgNyBzbyBFMSBpcyBza2lwcGVkIGFzIGl0XG4vLyBoYXMgYWxyZWFkeSBiZWVuIGNhbGxlZCBpbiB0aGUgcmVjdXJzaXZlbHkgY2FsbGVkIGNoZWNrQW5VcGRhdGVWaWV3KCkuXG5leHBvcnQgZnVuY3Rpb24gY2FsbExpZmVjeWNsZUhvb2tzQ2hpbGRyZW5GaXJzdCh2aWV3OiBWaWV3RGF0YSwgbGlmZWN5Y2xlczogTm9kZUZsYWdzKSB7XG4gIGlmICghKHZpZXcuZGVmLm5vZGVGbGFncyAmIGxpZmVjeWNsZXMpKSB7XG4gICAgcmV0dXJuO1xuICB9XG4gIGNvbnN0IG5vZGVzID0gdmlldy5kZWYubm9kZXM7XG4gIGxldCBpbml0SW5kZXggPSAwO1xuICBmb3IgKGxldCBpID0gMDsgaSA8IG5vZGVzLmxlbmd0aDsgaSsrKSB7XG4gICAgY29uc3Qgbm9kZURlZiA9IG5vZGVzW2ldO1xuICAgIGxldCBwYXJlbnQgPSBub2RlRGVmLnBhcmVudDtcbiAgICBpZiAoIXBhcmVudCAmJiBub2RlRGVmLmZsYWdzICYgbGlmZWN5Y2xlcykge1xuICAgICAgLy8gbWF0Y2hpbmcgcm9vdCBub2RlIChlLmcuIGEgcGlwZSlcbiAgICAgIGNhbGxQcm92aWRlckxpZmVjeWNsZXModmlldywgaSwgbm9kZURlZi5mbGFncyAmIGxpZmVjeWNsZXMsIGluaXRJbmRleCsrKTtcbiAgICB9XG4gICAgaWYgKChub2RlRGVmLmNoaWxkRmxhZ3MgJiBsaWZlY3ljbGVzKSA9PT0gMCkge1xuICAgICAgLy8gbm8gY2hpbGQgbWF0Y2hlcyBvbmUgb2YgdGhlIGxpZmVjeWNsZXNcbiAgICAgIGkgKz0gbm9kZURlZi5jaGlsZENvdW50O1xuICAgIH1cbiAgICB3aGlsZSAocGFyZW50ICYmIChwYXJlbnQuZmxhZ3MgJiBOb2RlRmxhZ3MuVHlwZUVsZW1lbnQpICYmXG4gICAgICAgICAgIGkgPT09IHBhcmVudC5ub2RlSW5kZXggKyBwYXJlbnQuY2hpbGRDb3VudCkge1xuICAgICAgLy8gbGFzdCBjaGlsZCBvZiBhbiBlbGVtZW50XG4gICAgICBpZiAocGFyZW50LmRpcmVjdENoaWxkRmxhZ3MgJiBsaWZlY3ljbGVzKSB7XG4gICAgICAgIGluaXRJbmRleCA9IGNhbGxFbGVtZW50UHJvdmlkZXJzTGlmZWN5Y2xlcyh2aWV3LCBwYXJlbnQsIGxpZmVjeWNsZXMsIGluaXRJbmRleCk7XG4gICAgICB9XG4gICAgICBwYXJlbnQgPSBwYXJlbnQucGFyZW50O1xuICAgIH1cbiAgfVxufVxuXG5mdW5jdGlvbiBjYWxsRWxlbWVudFByb3ZpZGVyc0xpZmVjeWNsZXMoXG4gICAgdmlldzogVmlld0RhdGEsIGVsRGVmOiBOb2RlRGVmLCBsaWZlY3ljbGVzOiBOb2RlRmxhZ3MsIGluaXRJbmRleDogbnVtYmVyKTogbnVtYmVyIHtcbiAgZm9yIChsZXQgaSA9IGVsRGVmLm5vZGVJbmRleCArIDE7IGkgPD0gZWxEZWYubm9kZUluZGV4ICsgZWxEZWYuY2hpbGRDb3VudDsgaSsrKSB7XG4gICAgY29uc3Qgbm9kZURlZiA9IHZpZXcuZGVmLm5vZGVzW2ldO1xuICAgIGlmIChub2RlRGVmLmZsYWdzICYgbGlmZWN5Y2xlcykge1xuICAgICAgY2FsbFByb3ZpZGVyTGlmZWN5Y2xlcyh2aWV3LCBpLCBub2RlRGVmLmZsYWdzICYgbGlmZWN5Y2xlcywgaW5pdEluZGV4KyspO1xuICAgIH1cbiAgICAvLyBvbmx5IHZpc2l0IGRpcmVjdCBjaGlsZHJlblxuICAgIGkgKz0gbm9kZURlZi5jaGlsZENvdW50O1xuICB9XG4gIHJldHVybiBpbml0SW5kZXg7XG59XG5cbmZ1bmN0aW9uIGNhbGxQcm92aWRlckxpZmVjeWNsZXMoXG4gICAgdmlldzogVmlld0RhdGEsIGluZGV4OiBudW1iZXIsIGxpZmVjeWNsZXM6IE5vZGVGbGFncywgaW5pdEluZGV4OiBudW1iZXIpIHtcbiAgY29uc3QgcHJvdmlkZXJEYXRhID0gYXNQcm92aWRlckRhdGEodmlldywgaW5kZXgpO1xuICBpZiAoIXByb3ZpZGVyRGF0YSkge1xuICAgIHJldHVybjtcbiAgfVxuICBjb25zdCBwcm92aWRlciA9IHByb3ZpZGVyRGF0YS5pbnN0YW5jZTtcbiAgaWYgKCFwcm92aWRlcikge1xuICAgIHJldHVybjtcbiAgfVxuICBTZXJ2aWNlcy5zZXRDdXJyZW50Tm9kZSh2aWV3LCBpbmRleCk7XG4gIGlmIChsaWZlY3ljbGVzICYgTm9kZUZsYWdzLkFmdGVyQ29udGVudEluaXQgJiZcbiAgICAgIHNob3VsZENhbGxMaWZlY3ljbGVJbml0SG9vayh2aWV3LCBWaWV3U3RhdGUuSW5pdFN0YXRlX0NhbGxpbmdBZnRlckNvbnRlbnRJbml0LCBpbml0SW5kZXgpKSB7XG4gICAgcHJvdmlkZXIubmdBZnRlckNvbnRlbnRJbml0KCk7XG4gIH1cbiAgaWYgKGxpZmVjeWNsZXMgJiBOb2RlRmxhZ3MuQWZ0ZXJDb250ZW50Q2hlY2tlZCkge1xuICAgIHByb3ZpZGVyLm5nQWZ0ZXJDb250ZW50Q2hlY2tlZCgpO1xuICB9XG4gIGlmIChsaWZlY3ljbGVzICYgTm9kZUZsYWdzLkFmdGVyVmlld0luaXQgJiZcbiAgICAgIHNob3VsZENhbGxMaWZlY3ljbGVJbml0SG9vayh2aWV3LCBWaWV3U3RhdGUuSW5pdFN0YXRlX0NhbGxpbmdBZnRlclZpZXdJbml0LCBpbml0SW5kZXgpKSB7XG4gICAgcHJvdmlkZXIubmdBZnRlclZpZXdJbml0KCk7XG4gIH1cbiAgaWYgKGxpZmVjeWNsZXMgJiBOb2RlRmxhZ3MuQWZ0ZXJWaWV3Q2hlY2tlZCkge1xuICAgIHByb3ZpZGVyLm5nQWZ0ZXJWaWV3Q2hlY2tlZCgpO1xuICB9XG4gIGlmIChsaWZlY3ljbGVzICYgTm9kZUZsYWdzLk9uRGVzdHJveSkge1xuICAgIHByb3ZpZGVyLm5nT25EZXN0cm95KCk7XG4gIH1cbn1cbiJdfQ==