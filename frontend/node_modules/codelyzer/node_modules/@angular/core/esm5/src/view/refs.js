/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __extends } from "tslib";
import { Injector } from '../di/injector';
import { InjectFlags } from '../di/interface/injector';
import { ComponentFactory, ComponentRef } from '../linker/component_factory';
import { ComponentFactoryBoundToModule, ComponentFactoryResolver } from '../linker/component_factory_resolver';
import { ElementRef } from '../linker/element_ref';
import { NgModuleRef } from '../linker/ng_module_factory';
import { TemplateRef } from '../linker/template_ref';
import { stringify } from '../util/stringify';
import { VERSION } from '../version';
import { callNgModuleLifecycle, initNgModule, resolveNgModuleDep } from './ng_module';
import { Services, asElementData, asProviderData, asTextData } from './types';
import { markParentViewsForCheck, resolveDefinition, rootRenderNodes, tokenKey, viewParentEl } from './util';
import { attachEmbeddedView, detachEmbeddedView, moveEmbeddedView, renderDetachView } from './view_attach';
var EMPTY_CONTEXT = {};
// Attention: this function is called as top level function.
// Putting any logic in here will destroy closure tree shaking!
export function createComponentFactory(selector, componentType, viewDefFactory, inputs, outputs, ngContentSelectors) {
    return new ComponentFactory_(selector, componentType, viewDefFactory, inputs, outputs, ngContentSelectors);
}
export function getComponentViewDefinitionFactory(componentFactory) {
    return componentFactory.viewDefFactory;
}
var ComponentFactory_ = /** @class */ (function (_super) {
    __extends(ComponentFactory_, _super);
    function ComponentFactory_(selector, componentType, viewDefFactory, _inputs, _outputs, ngContentSelectors) {
        var _this = 
        // Attention: this ctor is called as top level function.
        // Putting any logic in here will destroy closure tree shaking!
        _super.call(this) || this;
        _this.selector = selector;
        _this.componentType = componentType;
        _this._inputs = _inputs;
        _this._outputs = _outputs;
        _this.ngContentSelectors = ngContentSelectors;
        _this.viewDefFactory = viewDefFactory;
        return _this;
    }
    Object.defineProperty(ComponentFactory_.prototype, "inputs", {
        get: function () {
            var inputsArr = [];
            var inputs = this._inputs;
            for (var propName in inputs) {
                var templateName = inputs[propName];
                inputsArr.push({ propName: propName, templateName: templateName });
            }
            return inputsArr;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(ComponentFactory_.prototype, "outputs", {
        get: function () {
            var outputsArr = [];
            for (var propName in this._outputs) {
                var templateName = this._outputs[propName];
                outputsArr.push({ propName: propName, templateName: templateName });
            }
            return outputsArr;
        },
        enumerable: true,
        configurable: true
    });
    /**
     * Creates a new component.
     */
    ComponentFactory_.prototype.create = function (injector, projectableNodes, rootSelectorOrNode, ngModule) {
        if (!ngModule) {
            throw new Error('ngModule should be provided');
        }
        var viewDef = resolveDefinition(this.viewDefFactory);
        var componentNodeIndex = viewDef.nodes[0].element.componentProvider.nodeIndex;
        var view = Services.createRootView(injector, projectableNodes || [], rootSelectorOrNode, viewDef, ngModule, EMPTY_CONTEXT);
        var component = asProviderData(view, componentNodeIndex).instance;
        if (rootSelectorOrNode) {
            view.renderer.setAttribute(asElementData(view, 0).renderElement, 'ng-version', VERSION.full);
        }
        return new ComponentRef_(view, new ViewRef_(view), component);
    };
    return ComponentFactory_;
}(ComponentFactory));
var ComponentRef_ = /** @class */ (function (_super) {
    __extends(ComponentRef_, _super);
    function ComponentRef_(_view, _viewRef, _component) {
        var _this = _super.call(this) || this;
        _this._view = _view;
        _this._viewRef = _viewRef;
        _this._component = _component;
        _this._elDef = _this._view.def.nodes[0];
        _this.hostView = _viewRef;
        _this.changeDetectorRef = _viewRef;
        _this.instance = _component;
        return _this;
    }
    Object.defineProperty(ComponentRef_.prototype, "location", {
        get: function () {
            return new ElementRef(asElementData(this._view, this._elDef.nodeIndex).renderElement);
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(ComponentRef_.prototype, "injector", {
        get: function () { return new Injector_(this._view, this._elDef); },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(ComponentRef_.prototype, "componentType", {
        get: function () { return this._component.constructor; },
        enumerable: true,
        configurable: true
    });
    ComponentRef_.prototype.destroy = function () { this._viewRef.destroy(); };
    ComponentRef_.prototype.onDestroy = function (callback) { this._viewRef.onDestroy(callback); };
    return ComponentRef_;
}(ComponentRef));
export function createViewContainerData(view, elDef, elData) {
    return new ViewContainerRef_(view, elDef, elData);
}
var ViewContainerRef_ = /** @class */ (function () {
    function ViewContainerRef_(_view, _elDef, _data) {
        this._view = _view;
        this._elDef = _elDef;
        this._data = _data;
        /**
         * @internal
         */
        this._embeddedViews = [];
    }
    Object.defineProperty(ViewContainerRef_.prototype, "element", {
        get: function () { return new ElementRef(this._data.renderElement); },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(ViewContainerRef_.prototype, "injector", {
        get: function () { return new Injector_(this._view, this._elDef); },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(ViewContainerRef_.prototype, "parentInjector", {
        /** @deprecated No replacement */
        get: function () {
            var view = this._view;
            var elDef = this._elDef.parent;
            while (!elDef && view) {
                elDef = viewParentEl(view);
                view = view.parent;
            }
            return view ? new Injector_(view, elDef) : new Injector_(this._view, null);
        },
        enumerable: true,
        configurable: true
    });
    ViewContainerRef_.prototype.clear = function () {
        var len = this._embeddedViews.length;
        for (var i = len - 1; i >= 0; i--) {
            var view = detachEmbeddedView(this._data, i);
            Services.destroyView(view);
        }
    };
    ViewContainerRef_.prototype.get = function (index) {
        var view = this._embeddedViews[index];
        if (view) {
            var ref = new ViewRef_(view);
            ref.attachToViewContainerRef(this);
            return ref;
        }
        return null;
    };
    Object.defineProperty(ViewContainerRef_.prototype, "length", {
        get: function () { return this._embeddedViews.length; },
        enumerable: true,
        configurable: true
    });
    ViewContainerRef_.prototype.createEmbeddedView = function (templateRef, context, index) {
        var viewRef = templateRef.createEmbeddedView(context || {});
        this.insert(viewRef, index);
        return viewRef;
    };
    ViewContainerRef_.prototype.createComponent = function (componentFactory, index, injector, projectableNodes, ngModuleRef) {
        var contextInjector = injector || this.parentInjector;
        if (!ngModuleRef && !(componentFactory instanceof ComponentFactoryBoundToModule)) {
            ngModuleRef = contextInjector.get(NgModuleRef);
        }
        var componentRef = componentFactory.create(contextInjector, projectableNodes, undefined, ngModuleRef);
        this.insert(componentRef.hostView, index);
        return componentRef;
    };
    ViewContainerRef_.prototype.insert = function (viewRef, index) {
        if (viewRef.destroyed) {
            throw new Error('Cannot insert a destroyed View in a ViewContainer!');
        }
        var viewRef_ = viewRef;
        var viewData = viewRef_._view;
        attachEmbeddedView(this._view, this._data, index, viewData);
        viewRef_.attachToViewContainerRef(this);
        return viewRef;
    };
    ViewContainerRef_.prototype.move = function (viewRef, currentIndex) {
        if (viewRef.destroyed) {
            throw new Error('Cannot move a destroyed View in a ViewContainer!');
        }
        var previousIndex = this._embeddedViews.indexOf(viewRef._view);
        moveEmbeddedView(this._data, previousIndex, currentIndex);
        return viewRef;
    };
    ViewContainerRef_.prototype.indexOf = function (viewRef) {
        return this._embeddedViews.indexOf(viewRef._view);
    };
    ViewContainerRef_.prototype.remove = function (index) {
        var viewData = detachEmbeddedView(this._data, index);
        if (viewData) {
            Services.destroyView(viewData);
        }
    };
    ViewContainerRef_.prototype.detach = function (index) {
        var view = detachEmbeddedView(this._data, index);
        return view ? new ViewRef_(view) : null;
    };
    return ViewContainerRef_;
}());
export function createChangeDetectorRef(view) {
    return new ViewRef_(view);
}
var ViewRef_ = /** @class */ (function () {
    function ViewRef_(_view) {
        this._view = _view;
        this._viewContainerRef = null;
        this._appRef = null;
    }
    Object.defineProperty(ViewRef_.prototype, "rootNodes", {
        get: function () { return rootRenderNodes(this._view); },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(ViewRef_.prototype, "context", {
        get: function () { return this._view.context; },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(ViewRef_.prototype, "destroyed", {
        get: function () { return (this._view.state & 128 /* Destroyed */) !== 0; },
        enumerable: true,
        configurable: true
    });
    ViewRef_.prototype.markForCheck = function () { markParentViewsForCheck(this._view); };
    ViewRef_.prototype.detach = function () { this._view.state &= ~4 /* Attached */; };
    ViewRef_.prototype.detectChanges = function () {
        var fs = this._view.root.rendererFactory;
        if (fs.begin) {
            fs.begin();
        }
        try {
            Services.checkAndUpdateView(this._view);
        }
        finally {
            if (fs.end) {
                fs.end();
            }
        }
    };
    ViewRef_.prototype.checkNoChanges = function () { Services.checkNoChangesView(this._view); };
    ViewRef_.prototype.reattach = function () { this._view.state |= 4 /* Attached */; };
    ViewRef_.prototype.onDestroy = function (callback) {
        if (!this._view.disposables) {
            this._view.disposables = [];
        }
        this._view.disposables.push(callback);
    };
    ViewRef_.prototype.destroy = function () {
        if (this._appRef) {
            this._appRef.detachView(this);
        }
        else if (this._viewContainerRef) {
            this._viewContainerRef.detach(this._viewContainerRef.indexOf(this));
        }
        Services.destroyView(this._view);
    };
    ViewRef_.prototype.detachFromAppRef = function () {
        this._appRef = null;
        renderDetachView(this._view);
        Services.dirtyParentQueries(this._view);
    };
    ViewRef_.prototype.attachToAppRef = function (appRef) {
        if (this._viewContainerRef) {
            throw new Error('This view is already attached to a ViewContainer!');
        }
        this._appRef = appRef;
    };
    ViewRef_.prototype.attachToViewContainerRef = function (vcRef) {
        if (this._appRef) {
            throw new Error('This view is already attached directly to the ApplicationRef!');
        }
        this._viewContainerRef = vcRef;
    };
    return ViewRef_;
}());
export { ViewRef_ };
export function createTemplateData(view, def) {
    return new TemplateRef_(view, def);
}
var TemplateRef_ = /** @class */ (function (_super) {
    __extends(TemplateRef_, _super);
    function TemplateRef_(_parentView, _def) {
        var _this = _super.call(this) || this;
        _this._parentView = _parentView;
        _this._def = _def;
        return _this;
    }
    TemplateRef_.prototype.createEmbeddedView = function (context) {
        return new ViewRef_(Services.createEmbeddedView(this._parentView, this._def, this._def.element.template, context));
    };
    Object.defineProperty(TemplateRef_.prototype, "elementRef", {
        get: function () {
            return new ElementRef(asElementData(this._parentView, this._def.nodeIndex).renderElement);
        },
        enumerable: true,
        configurable: true
    });
    return TemplateRef_;
}(TemplateRef));
export function createInjector(view, elDef) {
    return new Injector_(view, elDef);
}
var Injector_ = /** @class */ (function () {
    function Injector_(view, elDef) {
        this.view = view;
        this.elDef = elDef;
    }
    Injector_.prototype.get = function (token, notFoundValue) {
        if (notFoundValue === void 0) { notFoundValue = Injector.THROW_IF_NOT_FOUND; }
        var allowPrivateServices = this.elDef ? (this.elDef.flags & 33554432 /* ComponentView */) !== 0 : false;
        return Services.resolveDep(this.view, this.elDef, allowPrivateServices, { flags: 0 /* None */, token: token, tokenKey: tokenKey(token) }, notFoundValue);
    };
    return Injector_;
}());
export function nodeValue(view, index) {
    var def = view.def.nodes[index];
    if (def.flags & 1 /* TypeElement */) {
        var elData = asElementData(view, def.nodeIndex);
        return def.element.template ? elData.template : elData.renderElement;
    }
    else if (def.flags & 2 /* TypeText */) {
        return asTextData(view, def.nodeIndex).renderText;
    }
    else if (def.flags & (20224 /* CatProvider */ | 16 /* TypePipe */)) {
        return asProviderData(view, def.nodeIndex).instance;
    }
    throw new Error("Illegal state: read nodeValue for node index " + index);
}
export function createNgModuleRef(moduleType, parent, bootstrapComponents, def) {
    return new NgModuleRef_(moduleType, parent, bootstrapComponents, def);
}
var NgModuleRef_ = /** @class */ (function () {
    function NgModuleRef_(_moduleType, _parent, _bootstrapComponents, _def) {
        this._moduleType = _moduleType;
        this._parent = _parent;
        this._bootstrapComponents = _bootstrapComponents;
        this._def = _def;
        this._destroyListeners = [];
        this._destroyed = false;
        this.injector = this;
        initNgModule(this);
    }
    NgModuleRef_.prototype.get = function (token, notFoundValue, injectFlags) {
        if (notFoundValue === void 0) { notFoundValue = Injector.THROW_IF_NOT_FOUND; }
        if (injectFlags === void 0) { injectFlags = InjectFlags.Default; }
        var flags = 0 /* None */;
        if (injectFlags & InjectFlags.SkipSelf) {
            flags |= 1 /* SkipSelf */;
        }
        else if (injectFlags & InjectFlags.Self) {
            flags |= 4 /* Self */;
        }
        return resolveNgModuleDep(this, { token: token, tokenKey: tokenKey(token), flags: flags }, notFoundValue);
    };
    Object.defineProperty(NgModuleRef_.prototype, "instance", {
        get: function () { return this.get(this._moduleType); },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(NgModuleRef_.prototype, "componentFactoryResolver", {
        get: function () { return this.get(ComponentFactoryResolver); },
        enumerable: true,
        configurable: true
    });
    NgModuleRef_.prototype.destroy = function () {
        if (this._destroyed) {
            throw new Error("The ng module " + stringify(this.instance.constructor) + " has already been destroyed.");
        }
        this._destroyed = true;
        callNgModuleLifecycle(this, 131072 /* OnDestroy */);
        this._destroyListeners.forEach(function (listener) { return listener(); });
    };
    NgModuleRef_.prototype.onDestroy = function (callback) { this._destroyListeners.push(callback); };
    return NgModuleRef_;
}());
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoicmVmcy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3ZpZXcvcmVmcy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7O0FBSUgsT0FBTyxFQUFDLFFBQVEsRUFBQyxNQUFNLGdCQUFnQixDQUFDO0FBQ3hDLE9BQU8sRUFBQyxXQUFXLEVBQUMsTUFBTSwwQkFBMEIsQ0FBQztBQUVyRCxPQUFPLEVBQUMsZ0JBQWdCLEVBQUUsWUFBWSxFQUFDLE1BQU0sNkJBQTZCLENBQUM7QUFDM0UsT0FBTyxFQUFDLDZCQUE2QixFQUFFLHdCQUF3QixFQUFDLE1BQU0sc0NBQXNDLENBQUM7QUFDN0csT0FBTyxFQUFDLFVBQVUsRUFBQyxNQUFNLHVCQUF1QixDQUFDO0FBQ2pELE9BQU8sRUFBc0IsV0FBVyxFQUFDLE1BQU0sNkJBQTZCLENBQUM7QUFDN0UsT0FBTyxFQUFDLFdBQVcsRUFBQyxNQUFNLHdCQUF3QixDQUFDO0FBR25ELE9BQU8sRUFBQyxTQUFTLEVBQUMsTUFBTSxtQkFBbUIsQ0FBQztBQUM1QyxPQUFPLEVBQUMsT0FBTyxFQUFDLE1BQU0sWUFBWSxDQUFDO0FBRW5DLE9BQU8sRUFBQyxxQkFBcUIsRUFBRSxZQUFZLEVBQUUsa0JBQWtCLEVBQUMsTUFBTSxhQUFhLENBQUM7QUFDcEYsT0FBTyxFQUE4RSxRQUFRLEVBQStFLGFBQWEsRUFBRSxjQUFjLEVBQUUsVUFBVSxFQUFDLE1BQU0sU0FBUyxDQUFDO0FBQ3RPLE9BQU8sRUFBQyx1QkFBdUIsRUFBRSxpQkFBaUIsRUFBRSxlQUFlLEVBQWtCLFFBQVEsRUFBRSxZQUFZLEVBQUMsTUFBTSxRQUFRLENBQUM7QUFDM0gsT0FBTyxFQUFDLGtCQUFrQixFQUFFLGtCQUFrQixFQUFFLGdCQUFnQixFQUFFLGdCQUFnQixFQUFDLE1BQU0sZUFBZSxDQUFDO0FBRXpHLElBQU0sYUFBYSxHQUFHLEVBQUUs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UUFDRCxPQUFPLGtCQUFrQixDQUNyQixJQUFJLEVBQUUsRUFBQyxLQUFLLEVBQUUsS0FBSyxFQUFFLFFBQVEsRUFBRSxRQUFRLENBQUMsS0FBSyxDQUFDLEVBQUUsS0FBSyxFQUFFLEtBQUssRUFBQyxFQUFFLGFBQWEsQ0FBQyxDQUFDO0lBQ3BGLENBQUM7SUFFRCxzQkFBSSxrQ0FBUTthQUFaLGNBQWlCLE9BQU8sSUFBSSxDQUFDLEdBQUcsQ0FBQyxJQUFJLENBQUMsV0FBVyxDQUFDLENBQUMsQ0FBQyxDQUFDOzs7T0FBQTtJQUVyRCxzQkFBSSxrREFBd0I7YUFBNUIsY0FBaUMsT0FBTyxJQUFJLENBQUMsR0FBRyxDQUFDLHdCQUF3QixDQUFDLENBQUMsQ0FBQyxDQUFDOzs7T0FBQTtJQUU3RSw4QkFBTyxHQUFQO1FBQ0UsSUFBSSxJQUFJLENBQUMsVUFBVSxFQUFFO1lBQ25CLE1BQU0sSUFBSSxLQUFLLENBQ1gsbUJBQWlCLFNBQVMsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLFdBQVcsQ0FBQyxpQ0FBOEIsQ0FBQyxDQUFDO1NBQzFGO1FBQ0QsSUFBSSxDQUFDLFVBQVUsR0FBRyxJQUFJLENBQUM7UUFDdkIscUJBQXFCLENBQUMsSUFBSSx5QkFBc0IsQ0FBQztRQUNqRCxJQUFJLENBQUMsaUJBQWlCLENBQUMsT0FBTyxDQUFDLFVBQUMsUUFBUSxJQUFLLE9BQUEsUUFBUSxFQUFFLEVBQVYsQ0FBVSxDQUFDLENBQUM7SUFDM0QsQ0FBQztJQUVELGdDQUFTLEdBQVQsVUFBVSxRQUFvQixJQUFVLElBQUksQ0FBQyxpQkFBaUIsQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLENBQUMsQ0FBQyxDQUFDO0lBQ2xGLG1CQUFDO0FBQUQsQ0FBQyxBQTdDRCxJQTZDQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtBcHBsaWNhdGlvblJlZn0gZnJvbSAnLi4vYXBwbGljYXRpb25fcmVmJztcbmltcG9ydCB7Q2hhbmdlRGV0ZWN0b3JSZWZ9IGZyb20gJy4uL2NoYW5nZV9kZXRlY3Rpb24vY2hhbmdlX2RldGVjdGlvbic7XG5pbXBvcnQge0luamVjdG9yfSBmcm9tICcuLi9kaS9pbmplY3Rvcic7XG5pbXBvcnQge0luamVjdEZsYWdzfSBmcm9tICcuLi9kaS9pbnRlcmZhY2UvaW5qZWN0b3InO1xuaW1wb3J0IHtUeXBlfSBmcm9tICcuLi9pbnRlcmZhY2UvdHlwZSc7XG5pbXBvcnQge0NvbXBvbmVudEZhY3RvcnksIENvbXBvbmVudFJlZn0gZnJvbSAnLi4vbGlua2VyL2NvbXBvbmVudF9mYWN0b3J5JztcbmltcG9ydCB7Q29tcG9uZW50RmFjdG9yeUJvdW5kVG9Nb2R1bGUsIENvbXBvbmVudEZhY3RvcnlSZXNvbHZlcn0gZnJvbSAnLi4vbGlua2VyL2NvbXBvbmVudF9mYWN0b3J5X3Jlc29sdmVyJztcbmltcG9ydCB7RWxlbWVudFJlZn0gZnJvbSAnLi4vbGlua2VyL2VsZW1lbnRfcmVmJztcbmltcG9ydCB7SW50ZXJuYWxOZ01vZHVsZVJlZiwgTmdNb2R1bGVSZWZ9IGZyb20gJy4uL2xpbmtlci9uZ19tb2R1bGVfZmFjdG9yeSc7XG5pbXBvcnQge1RlbXBsYXRlUmVmfSBmcm9tICcuLi9saW5rZXIvdGVtcGxhdGVfcmVmJztcbmltcG9ydCB7Vmlld0NvbnRhaW5lclJlZn0gZnJvbSAnLi4vbGlua2VyL3ZpZXdfY29udGFpbmVyX3JlZic7XG5pbXBvcnQge0VtYmVkZGVkVmlld1JlZiwgSW50ZXJuYWxWaWV3UmVmLCBWaWV3UmVmfSBmcm9tICcuLi9saW5rZXIvdmlld19yZWYnO1xuaW1wb3J0IHtzdHJpbmdpZnl9IGZyb20gJy4uL3V0aWwvc3RyaW5naWZ5JztcbmltcG9ydCB7VkVSU0lPTn0gZnJvbSAnLi4vdmVyc2lvbic7XG5cbmltcG9ydCB7Y2FsbE5nTW9kdWxlTGlmZWN5Y2xlLCBpbml0TmdNb2R1bGUsIHJlc29sdmVOZ01vZHVsZURlcH0gZnJvbSAnLi9uZ19tb2R1bGUnO1xuaW1wb3J0IHtEZXBGbGFncywgRWxlbWVudERhdGEsIE5nTW9kdWxlRGF0YSwgTmdNb2R1bGVEZWZpbml0aW9uLCBOb2RlRGVmLCBOb2RlRmxhZ3MsIFNlcnZpY2VzLCBUZW1wbGF0ZURhdGEsIFZpZXdDb250YWluZXJEYXRhLCBWaWV3RGF0YSwgVmlld0RlZmluaXRpb25GYWN0b3J5LCBWaWV3U3RhdGUsIGFzRWxlbWVudERhdGEsIGFzUHJvdmlkZXJEYXRhLCBhc1RleHREYXRhfSBmcm9tICcuL3R5cGVzJztcbmltcG9ydCB7bWFya1BhcmVudFZpZXdzRm9yQ2hlY2ssIHJlc29sdmVEZWZpbml0aW9uLCByb290UmVuZGVyTm9kZXMsIHNwbGl0TmFtZXNwYWNlLCB0b2tlbktleSwgdmlld1BhcmVudEVsfSBmcm9tICcuL3V0aWwnO1xuaW1wb3J0IHthdHRhY2hFbWJlZGRlZFZpZXcsIGRldGFjaEVtYmVkZGVkVmlldywgbW92ZUVtYmVkZGVkVmlldywgcmVuZGVyRGV0YWNoVmlld30gZnJvbSAnLi92aWV3X2F0dGFjaCc7XG5cbmNvbnN0IEVNUFRZX0NPTlRFWFQgPSB7fTtcblxuLy8gQXR0ZW50aW9uOiB0aGlzIGZ1bmN0aW9uIGlzIGNhbGxlZCBhcyB0b3AgbGV2ZWwgZnVuY3Rpb24uXG4vLyBQdXR0aW5nIGFueSBsb2dpYyBpbiBoZXJlIHdpbGwgZGVzdHJveSBjbG9zdXJlIHRyZWUgc2hha2luZyFcbmV4cG9ydCBmdW5jdGlvbiBjcmVhdGVDb21wb25lbnRGYWN0b3J5KFxuICAgIHNlbGVjdG9yOiBzdHJpbmcsIGNvbXBvbmVudFR5cGU6IFR5cGU8YW55Piwgdmlld0RlZkZhY3Rvcnk6IFZpZXdEZWZpbml0aW9uRmFjdG9yeSxcbiAgICBpbnB1dHM6IHtbcHJvcE5hbWU6IHN0cmluZ106IHN0cmluZ30gfCBudWxsLCBvdXRwdXRzOiB7W3Byb3BOYW1lOiBzdHJpbmddOiBzdHJpbmd9LFxuICAgIG5nQ29udGVudFNlbGVjdG9yczogc3RyaW5nW10pOiBDb21wb25lbnRGYWN0b3J5PGFueT4ge1xuICByZXR1cm4gbmV3IENvbXBvbmVudEZhY3RvcnlfKFxuICAgICAgc2VsZWN0b3IsIGNvbXBvbmVudFR5cGUsIHZpZXdEZWZGYWN0b3J5LCBpbnB1dHMsIG91dHB1dHMsIG5nQ29udGVudFNlbGVjdG9ycyk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBnZXRDb21wb25lbnRWaWV3RGVmaW5pdGlvbkZhY3RvcnkoY29tcG9uZW50RmFjdG9yeTogQ29tcG9uZW50RmFjdG9yeTxhbnk+KTpcbiAgICBWaWV3RGVmaW5pdGlvbkZhY3Rvcnkge1xuICByZXR1cm4gKGNvbXBvbmVudEZhY3RvcnkgYXMgQ29tcG9uZW50RmFjdG9yeV8pLnZpZXdEZWZGYWN0b3J5O1xufVxuXG5jbGFzcyBDb21wb25lbnRGYWN0b3J5XyBleHRlbmRzIENvbXBvbmVudEZhY3Rvcnk8YW55PiB7XG4gIC8qKlxuICAgKiBAaW50ZXJuYWxcbiAgICovXG4gIHZpZXdEZWZGYWN0b3J5OiBWaWV3RGVmaW5pdGlvbkZhY3Rvcnk7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBwdWJsaWMgc2VsZWN0b3I6IHN0cmluZywgcHVibGljIGNvbXBvbmVudFR5cGU6IFR5cGU8YW55PixcbiAgICAgIHZpZXdEZWZGYWN0b3J5OiBWaWV3RGVmaW5pdGlvbkZhY3RvcnksIHByaXZhdGUgX2lucHV0czoge1twcm9wTmFtZTogc3RyaW5nXTogc3RyaW5nfXxudWxsLFxuICAgICAgcHJpdmF0ZSBfb3V0cHV0czoge1twcm9wTmFtZTogc3RyaW5nXTogc3RyaW5nfSwgcHVibGljIG5nQ29udGVudFNlbGVjdG9yczogc3RyaW5nW10pIHtcbiAgICAvLyBBdHRlbnRpb246IHRoaXMgY3RvciBpcyBjYWxsZWQgYXMgdG9wIGxldmVsIGZ1bmN0aW9uLlxuICAgIC8vIFB1dHRpbmcgYW55IGxvZ2ljIGluIGhlcmUgd2lsbCBkZXN0cm95IGNsb3N1cmUgdHJlZSBzaGFraW5nIVxuICAgIHN1cGVyKCk7XG4gICAgdGhpcy52aWV3RGVmRmFjdG9yeSA9IHZpZXdEZWZGYWN0b3J5O1xuICB9XG5cbiAgZ2V0IGlucHV0cygpIHtcbiAgICBjb25zdCBpbnB1dHNBcnI6IHtwcm9wTmFtZTogc3RyaW5nLCB0ZW1wbGF0ZU5hbWU6IHN0cmluZ31bXSA9IFtdO1xuICAgIGNvbnN0IGlucHV0cyA9IHRoaXMuX2lucHV0cyAhO1xuICAgIGZvciAobGV0IHByb3BOYW1lIGluIGlucHV0cykge1xuICAgICAgY29uc3QgdGVtcGxhdGVOYW1lID0gaW5wdXRzW3Byb3BOYW1lXTtcbiAgICAgIGlucHV0c0Fyci5wdXNoKHtwcm9wTmFtZSwgdGVtcGxhdGVOYW1lfSk7XG4gICAgfVxuICAgIHJldHVybiBpbnB1dHNBcnI7XG4gIH1cblxuICBnZXQgb3V0cHV0cygpIHtcbiAgICBjb25zdCBvdXRwdXRzQXJyOiB7cHJvcE5hbWU6IHN0cmluZywgdGVtcGxhdGVOYW1lOiBzdHJpbmd9W10gPSBbXTtcbiAgICBmb3IgKGxldCBwcm9wTmFtZSBpbiB0aGlzLl9vdXRwdXRzKSB7XG4gICAgICBjb25zdCB0ZW1wbGF0ZU5hbWUgPSB0aGlzLl9vdXRwdXRzW3Byb3BOYW1lXTtcbiAgICAgIG91dHB1dHNBcnIucHVzaCh7cHJvcE5hbWUsIHRlbXBsYXRlTmFtZX0pO1xuICAgIH1cbiAgICByZXR1cm4gb3V0cHV0c0FycjtcbiAgfVxuXG4gIC8qKlxuICAgKiBDcmVhdGVzIGEgbmV3IGNvbXBvbmVudC5cbiAgICovXG4gIGNyZWF0ZShcbiAgICAgIGluamVjdG9yOiBJbmplY3RvciwgcHJvamVjdGFibGVOb2Rlcz86IGFueVtdW10sIHJvb3RTZWxlY3Rvck9yTm9kZT86IHN0cmluZ3xhbnksXG4gICAgICBuZ01vZHVsZT86IE5nTW9kdWxlUmVmPGFueT4pOiBDb21wb25lbnRSZWY8YW55PiB7XG4gICAgaWYgKCFuZ01vZHVsZSkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKCduZ01vZHVsZSBzaG91bGQgYmUgcHJvdmlkZWQnKTtcbiAgICB9XG4gICAgY29uc3Qgdmlld0RlZiA9IHJlc29sdmVEZWZpbml0aW9uKHRoaXMudmlld0RlZkZhY3RvcnkpO1xuICAgIGNvbnN0IGNvbXBvbmVudE5vZGVJbmRleCA9IHZpZXdEZWYubm9kZXNbMF0uZWxlbWVudCAhLmNvbXBvbmVudFByb3ZpZGVyICEubm9kZUluZGV4O1xuICAgIGNvbnN0IHZpZXcgPSBTZXJ2aWNlcy5jcmVhdGVSb290VmlldyhcbiAgICAgICAgaW5qZWN0b3IsIHByb2plY3RhYmxlTm9kZXMgfHwgW10sIHJvb3RTZWxlY3Rvck9yTm9kZSwgdmlld0RlZiwgbmdNb2R1bGUsIEVNUFRZX0NPTlRFWFQpO1xuICAgIGNvbnN0IGNvbXBvbmVudCA9IGFzUHJvdmlkZXJEYXRhKHZpZXcsIGNvbXBvbmVudE5vZGVJbmRleCkuaW5zdGFuY2U7XG4gICAgaWYgKHJvb3RTZWxlY3Rvck9yTm9kZSkge1xuICAgICAgdmlldy5yZW5kZXJlci5zZXRBdHRyaWJ1dGUoYXNFbGVtZW50RGF0YSh2aWV3LCAwKS5yZW5kZXJFbGVtZW50LCAnbmctdmVyc2lvbicsIFZFUlNJT04uZnVsbCk7XG4gICAgfVxuXG4gICAgcmV0dXJuIG5ldyBDb21wb25lbnRSZWZfKHZpZXcsIG5ldyBWaWV3UmVmXyh2aWV3KSwgY29tcG9uZW50KTtcbiAgfVxufVxuXG5jbGFzcyBDb21wb25lbnRSZWZfIGV4dGVuZHMgQ29tcG9uZW50UmVmPGFueT4ge1xuICBwdWJsaWMgcmVhZG9ubHkgaG9zdFZpZXc6IFZpZXdSZWY7XG4gIHB1YmxpYyByZWFkb25seSBpbnN0YW5jZTogYW55O1xuICBwdWJsaWMgcmVhZG9ubHkgY2hhbmdlRGV0ZWN0b3JSZWY6IENoYW5nZURldGVjdG9yUmVmO1xuICBwcml2YXRlIF9lbERlZjogTm9kZURlZjtcbiAgY29uc3RydWN0b3IocHJpdmF0ZSBfdmlldzogVmlld0RhdGEsIHByaXZhdGUgX3ZpZXdSZWY6IFZpZXdSZWYsIHByaXZhdGUgX2NvbXBvbmVudDogYW55KSB7XG4gICAgc3VwZXIoKTtcbiAgICB0aGlzLl9lbERlZiA9IHRoaXMuX3ZpZXcuZGVmLm5vZGVzWzBdO1xuICAgIHRoaXMuaG9zdFZpZXcgPSBfdmlld1JlZjtcbiAgICB0aGlzLmNoYW5nZURldGVjdG9yUmVmID0gX3ZpZXdSZWY7XG4gICAgdGhpcy5pbnN0YW5jZSA9IF9jb21wb25lbnQ7XG4gIH1cbiAgZ2V0IGxvY2F0aW9uKCk6IEVsZW1lbnRSZWYge1xuICAgIHJldHVybiBuZXcgRWxlbWVudFJlZihhc0VsZW1lbnREYXRhKHRoaXMuX3ZpZXcsIHRoaXMuX2VsRGVmLm5vZGVJbmRleCkucmVuZGVyRWxlbWVudCk7XG4gIH1cbiAgZ2V0IGluamVjdG9yKCk6IEluamVjdG9yIHsgcmV0dXJuIG5ldyBJbmplY3Rvcl8odGhpcy5fdmlldywgdGhpcy5fZWxEZWYpOyB9XG4gIGdldCBjb21wb25lbnRUeXBlKCk6IFR5cGU8YW55PiB7IHJldHVybiA8YW55PnRoaXMuX2NvbXBvbmVudC5jb25zdHJ1Y3RvcjsgfVxuXG4gIGRlc3Ryb3koKTogdm9pZCB7IHRoaXMuX3ZpZXdSZWYuZGVzdHJveSgpOyB9XG4gIG9uRGVzdHJveShjYWxsYmFjazogRnVuY3Rpb24pOiB2b2lkIHsgdGhpcy5fdmlld1JlZi5vbkRlc3Ryb3koY2FsbGJhY2spOyB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBjcmVhdGVWaWV3Q29udGFpbmVyRGF0YShcbiAgICB2aWV3OiBWaWV3RGF0YSwgZWxEZWY6IE5vZGVEZWYsIGVsRGF0YTogRWxlbWVudERhdGEpOiBWaWV3Q29udGFpbmVyRGF0YSB7XG4gIHJldHVybiBuZXcgVmlld0NvbnRhaW5lclJlZl8odmlldywgZWxEZWYsIGVsRGF0YSk7XG59XG5cbmNsYXNzIFZpZXdDb250YWluZXJSZWZfIGltcGxlbWVudHMgVmlld0NvbnRhaW5lckRhdGEge1xuICAvKipcbiAgICogQGludGVybmFsXG4gICAqL1xuICBfZW1iZWRkZWRWaWV3czogVmlld0RhdGFbXSA9IFtdO1xuICBjb25zdHJ1Y3Rvcihwcml2YXRlIF92aWV3OiBWaWV3RGF0YSwgcHJpdmF0ZSBfZWxEZWY6IE5vZGVEZWYsIHByaXZhdGUgX2RhdGE6IEVsZW1lbnREYXRhKSB7fVxuXG4gIGdldCBlbGVtZW50KCk6IEVsZW1lbnRSZWYgeyByZXR1cm4gbmV3IEVsZW1lbnRSZWYodGhpcy5fZGF0YS5yZW5kZXJFbGVtZW50KTsgfVxuXG4gIGdldCBpbmplY3RvcigpOiBJbmplY3RvciB7IHJldHVybiBuZXcgSW5qZWN0b3JfKHRoaXMuX3ZpZXcsIHRoaXMuX2VsRGVmKTsgfVxuXG4gIC8qKiBAZGVwcmVjYXRlZCBObyByZXBsYWNlbWVudCAqL1xuICBnZXQgcGFyZW50SW5qZWN0b3IoKTogSW5qZWN0b3Ige1xuICAgIGxldCB2aWV3ID0gdGhpcy5fdmlldztcbiAgICBsZXQgZWxEZWYgPSB0aGlzLl9lbERlZi5wYXJlbnQ7XG4gICAgd2hpbGUgKCFlbERlZiAmJiB2aWV3KSB7XG4gICAgICBlbERlZiA9IHZpZXdQYXJlbnRFbCh2aWV3KTtcbiAgICAgIHZpZXcgPSB2aWV3LnBhcmVudCAhO1xuICAgIH1cblxuICAgIHJldHVybiB2aWV3ID8gbmV3IEluamVjdG9yXyh2aWV3LCBlbERlZikgOiBuZXcgSW5qZWN0b3JfKHRoaXMuX3ZpZXcsIG51bGwpO1xuICB9XG5cbiAgY2xlYXIoKTogdm9pZCB7XG4gICAgY29uc3QgbGVuID0gdGhpcy5fZW1iZWRkZWRWaWV3cy5sZW5ndGg7XG4gICAgZm9yIChsZXQgaSA9IGxlbiAtIDE7IGkgPj0gMDsgaS0tKSB7XG4gICAgICBjb25zdCB2aWV3ID0gZGV0YWNoRW1iZWRkZWRWaWV3KHRoaXMuX2RhdGEsIGkpICE7XG4gICAgICBTZXJ2aWNlcy5kZXN0cm95Vmlldyh2aWV3KTtcbiAgICB9XG4gIH1cblxuICBnZXQoaW5kZXg6IG51bWJlcik6IFZpZXdSZWZ8bnVsbCB7XG4gICAgY29uc3QgdmlldyA9IHRoaXMuX2VtYmVkZGVkVmlld3NbaW5kZXhdO1xuICAgIGlmICh2aWV3KSB7XG4gICAgICBjb25zdCByZWYgPSBuZXcgVmlld1JlZl8odmlldyk7XG4gICAgICByZWYuYXR0YWNoVG9WaWV3Q29udGFpbmVyUmVmKHRoaXMpO1xuICAgICAgcmV0dXJuIHJlZjtcbiAgICB9XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cblxuICBnZXQgbGVuZ3RoKCk6IG51bWJlciB7IHJldHVybiB0aGlzLl9lbWJlZGRlZFZpZXdzLmxlbmd0aDsgfVxuXG4gIGNyZWF0ZUVtYmVkZGVkVmlldzxDPih0ZW1wbGF0ZVJlZjogVGVtcGxhdGVSZWY8Qz4sIGNvbnRleHQ/OiBDLCBpbmRleD86IG51bWJlcik6XG4gICAgICBFbWJlZGRlZFZpZXdSZWY8Qz4ge1xuICAgIGNvbnN0IHZpZXdSZWYgPSB0ZW1wbGF0ZVJlZi5jcmVhdGVFbWJlZGRlZFZpZXcoY29udGV4dCB8fCA8YW55Pnt9KTtcbiAgICB0aGlzLmluc2VydCh2aWV3UmVmLCBpbmRleCk7XG4gICAgcmV0dXJuIHZpZXdSZWY7XG4gIH1cblxuICBjcmVhdGVDb21wb25lbnQ8Qz4oXG4gICAgICBjb21wb25lbnRGYWN0b3J5OiBDb21wb25lbnRGYWN0b3J5PEM+LCBpbmRleD86IG51bWJlciwgaW5qZWN0b3I/OiBJbmplY3RvcixcbiAgICAgIHByb2plY3RhYmxlTm9kZXM/OiBhbnlbXVtdLCBuZ01vZHVsZVJlZj86IE5nTW9kdWxlUmVmPGFueT4pOiBDb21wb25lbnRSZWY8Qz4ge1xuICAgIGNvbnN0IGNvbnRleHRJbmplY3RvciA9IGluamVjdG9yIHx8IHRoaXMucGFyZW50SW5qZWN0b3I7XG4gICAgaWYgKCFuZ01vZHVsZVJlZiAmJiAhKGNvbXBvbmVudEZhY3RvcnkgaW5zdGFuY2VvZiBDb21wb25lbnRGYWN0b3J5Qm91bmRUb01vZHVsZSkpIHtcbiAgICAgIG5nTW9kdWxlUmVmID0gY29udGV4dEluamVjdG9yLmdldChOZ01vZHVsZVJlZik7XG4gICAgfVxuICAgIGNvbnN0IGNvbXBvbmVudFJlZiA9XG4gICAgICAgIGNvbXBvbmVudEZhY3RvcnkuY3JlYXRlKGNvbnRleHRJbmplY3RvciwgcHJvamVjdGFibGVOb2RlcywgdW5kZWZpbmVkLCBuZ01vZHVsZVJlZik7XG4gICAgdGhpcy5pbnNlcnQoY29tcG9uZW50UmVmLmhvc3RWaWV3LCBpbmRleCk7XG4gICAgcmV0dXJuIGNvbXBvbmVudFJlZjtcbiAgfVxuXG4gIGluc2VydCh2aWV3UmVmOiBWaWV3UmVmLCBpbmRleD86IG51bWJlcik6IFZpZXdSZWYge1xuICAgIGlmICh2aWV3UmVmLmRlc3Ryb3llZCkge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKCdDYW5ub3QgaW5zZXJ0IGEgZGVzdHJveWVkIFZpZXcgaW4gYSBWaWV3Q29udGFpbmVyIScpO1xuICAgIH1cbiAgICBjb25zdCB2aWV3UmVmXyA9IDxWaWV3UmVmXz52aWV3UmVmO1xuICAgIGNvbnN0IHZpZXdEYXRhID0gdmlld1JlZl8uX3ZpZXc7XG4gICAgYXR0YWNoRW1iZWRkZWRWaWV3KHRoaXMuX3ZpZXcsIHRoaXMuX2RhdGEsIGluZGV4LCB2aWV3RGF0YSk7XG4gICAgdmlld1JlZl8uYXR0YWNoVG9WaWV3Q29udGFpbmVyUmVmKHRoaXMpO1xuICAgIHJldHVybiB2aWV3UmVmO1xuICB9XG5cbiAgbW92ZSh2aWV3UmVmOiBWaWV3UmVmXywgY3VycmVudEluZGV4OiBudW1iZXIpOiBWaWV3UmVmIHtcbiAgICBpZiAodmlld1JlZi5kZXN0cm95ZWQpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcignQ2Fubm90IG1vdmUgYSBkZXN0cm95ZWQgVmlldyBpbiBhIFZpZXdDb250YWluZXIhJyk7XG4gICAgfVxuICAgIGNvbnN0IHByZXZpb3VzSW5kZXggPSB0aGlzLl9lbWJlZGRlZFZpZXdzLmluZGV4T2Yodmlld1JlZi5fdmlldyk7XG4gICAgbW92ZUVtYmVkZGVkVmlldyh0aGlzLl9kYXRhLCBwcmV2aW91c0luZGV4LCBjdXJyZW50SW5kZXgpO1xuICAgIHJldHVybiB2aWV3UmVmO1xuICB9XG5cbiAgaW5kZXhPZih2aWV3UmVmOiBWaWV3UmVmKTogbnVtYmVyIHtcbiAgICByZXR1cm4gdGhpcy5fZW1iZWRkZWRWaWV3cy5pbmRleE9mKCg8Vmlld1JlZl8+dmlld1JlZikuX3ZpZXcpO1xuICB9XG5cbiAgcmVtb3ZlKGluZGV4PzogbnVtYmVyKTogdm9pZCB7XG4gICAgY29uc3Qgdmlld0RhdGEgPSBkZXRhY2hFbWJlZGRlZFZpZXcodGhpcy5fZGF0YSwgaW5kZXgpO1xuICAgIGlmICh2aWV3RGF0YSkge1xuICAgICAgU2VydmljZXMuZGVzdHJveVZpZXcodmlld0RhdGEpO1xuICAgIH1cbiAgfVxuXG4gIGRldGFjaChpbmRleD86IG51bWJlcik6IFZpZXdSZWZ8bnVsbCB7XG4gICAgY29uc3QgdmlldyA9IGRldGFjaEVtYmVkZGVkVmlldyh0aGlzLl9kYXRhLCBpbmRleCk7XG4gICAgcmV0dXJuIHZpZXcgPyBuZXcgVmlld1JlZl8odmlldykgOiBudWxsO1xuICB9XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBjcmVhdGVDaGFuZ2VEZXRlY3RvclJlZih2aWV3OiBWaWV3RGF0YSk6IENoYW5nZURldGVjdG9yUmVmIHtcbiAgcmV0dXJuIG5ldyBWaWV3UmVmXyh2aWV3KTtcbn1cblxuZXhwb3J0IGNsYXNzIFZpZXdSZWZfIGltcGxlbWVudHMgRW1iZWRkZWRWaWV3UmVmPGFueT4sIEludGVybmFsVmlld1JlZiB7XG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX3ZpZXc6IFZpZXdEYXRhO1xuICBwcml2YXRlIF92aWV3Q29udGFpbmVyUmVmOiBWaWV3Q29udGFpbmVyUmVmfG51bGw7XG4gIHByaXZhdGUgX2FwcFJlZjogQXBwbGljYXRpb25SZWZ8bnVsbDtcblxuICBjb25zdHJ1Y3RvcihfdmlldzogVmlld0RhdGEpIHtcbiAgICB0aGlzLl92aWV3ID0gX3ZpZXc7XG4gICAgdGhpcy5fdmlld0NvbnRhaW5lclJlZiA9IG51bGw7XG4gICAgdGhpcy5fYXBwUmVmID0gbnVsbDtcbiAgfVxuXG4gIGdldCByb290Tm9kZXMoKTogYW55W10geyByZXR1cm4gcm9vdFJlbmRlck5vZGVzKHRoaXMuX3ZpZXcpOyB9XG5cbiAgZ2V0IGNvbnRleHQoKSB7IHJldHVybiB0aGlzLl92aWV3LmNvbnRleHQ7IH1cblxuICBnZXQgZGVzdHJveWVkKCk6IGJvb2xlYW4geyByZXR1cm4gKHRoaXMuX3ZpZXcuc3RhdGUgJiBWaWV3U3RhdGUuRGVzdHJveWVkKSAhPT0gMDsgfVxuXG4gIG1hcmtGb3JDaGVjaygpOiB2b2lkIHsgbWFya1BhcmVudFZpZXdzRm9yQ2hlY2sodGhpcy5fdmlldyk7IH1cbiAgZGV0YWNoKCk6IHZvaWQgeyB0aGlzLl92aWV3LnN0YXRlICY9IH5WaWV3U3RhdGUuQXR0YWNoZWQ7IH1cbiAgZGV0ZWN0Q2hhbmdlcygpOiB2b2lkIHtcbiAgICBjb25zdCBmcyA9IHRoaXMuX3ZpZXcucm9vdC5yZW5kZXJlckZhY3Rvcnk7XG4gICAgaWYgKGZzLmJlZ2luKSB7XG4gICAgICBmcy5iZWdpbigpO1xuICAgIH1cbiAgICB0cnkge1xuICAgICAgU2VydmljZXMuY2hlY2tBbmRVcGRhdGVWaWV3KHRoaXMuX3ZpZXcpO1xuICAgIH0gZmluYWxseSB7XG4gICAgICBpZiAoZnMuZW5kKSB7XG4gICAgICAgIGZzLmVuZCgpO1xuICAgICAgfVxuICAgIH1cbiAgfVxuICBjaGVja05vQ2hhbmdlcygpOiB2b2lkIHsgU2VydmljZXMuY2hlY2tOb0NoYW5nZXNWaWV3KHRoaXMuX3ZpZXcpOyB9XG5cbiAgcmVhdHRhY2goKTogdm9pZCB7IHRoaXMuX3ZpZXcuc3RhdGUgfD0gVmlld1N0YXRlLkF0dGFjaGVkOyB9XG4gIG9uRGVzdHJveShjYWxsYmFjazogRnVuY3Rpb24pIHtcbiAgICBpZiAoIXRoaXMuX3ZpZXcuZGlzcG9zYWJsZXMpIHtcbiAgICAgIHRoaXMuX3ZpZXcuZGlzcG9zYWJsZXMgPSBbXTtcbiAgICB9XG4gICAgdGhpcy5fdmlldy5kaXNwb3NhYmxlcy5wdXNoKDxhbnk+Y2FsbGJhY2spO1xuICB9XG5cbiAgZGVzdHJveSgpIHtcbiAgICBpZiAodGhpcy5fYXBwUmVmKSB7XG4gICAgICB0aGlzLl9hcHBSZWYuZGV0YWNoVmlldyh0aGlzKTtcbiAgICB9IGVsc2UgaWYgKHRoaXMuX3ZpZXdDb250YWluZXJSZWYpIHtcbiAgICAgIHRoaXMuX3ZpZXdDb250YWluZXJSZWYuZGV0YWNoKHRoaXMuX3ZpZXdDb250YWluZXJSZWYuaW5kZXhPZih0aGlzKSk7XG4gICAgfVxuICAgIFNlcnZpY2VzLmRlc3Ryb3lWaWV3KHRoaXMuX3ZpZXcpO1xuICB9XG5cbiAgZGV0YWNoRnJvbUFwcFJlZigpIHtcbiAgICB0aGlzLl9hcHBSZWYgPSBudWxsO1xuICAgIHJlbmRlckRldGFjaFZpZXcodGhpcy5fdmlldyk7XG4gICAgU2VydmljZXMuZGlydHlQYXJlbnRRdWVyaWVzKHRoaXMuX3ZpZXcpO1xuICB9XG5cbiAgYXR0YWNoVG9BcHBSZWYoYXBwUmVmOiBBcHBsaWNhdGlvblJlZikge1xuICAgIGlmICh0aGlzLl92aWV3Q29udGFpbmVyUmVmKSB7XG4gICAgICB0aHJvdyBuZXcgRXJyb3IoJ1RoaXMgdmlldyBpcyBhbHJlYWR5IGF0dGFjaGVkIHRvIGEgVmlld0NvbnRhaW5lciEnKTtcbiAgICB9XG4gICAgdGhpcy5fYXBwUmVmID0gYXBwUmVmO1xuICB9XG5cbiAgYXR0YWNoVG9WaWV3Q29udGFpbmVyUmVmKHZjUmVmOiBWaWV3Q29udGFpbmVyUmVmKSB7XG4gICAgaWYgKHRoaXMuX2FwcFJlZikge1xuICAgICAgdGhyb3cgbmV3IEVycm9yKCdUaGlzIHZpZXcgaXMgYWxyZWFkeSBhdHRhY2hlZCBkaXJlY3RseSB0byB0aGUgQXBwbGljYXRpb25SZWYhJyk7XG4gICAgfVxuICAgIHRoaXMuX3ZpZXdDb250YWluZXJSZWYgPSB2Y1JlZjtcbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gY3JlYXRlVGVtcGxhdGVEYXRhKHZpZXc6IFZpZXdEYXRhLCBkZWY6IE5vZGVEZWYpOiBUZW1wbGF0ZURhdGEge1xuICByZXR1cm4gbmV3IFRlbXBsYXRlUmVmXyh2aWV3LCBkZWYpO1xufVxuXG5jbGFzcyBUZW1wbGF0ZVJlZl8gZXh0ZW5kcyBUZW1wbGF0ZVJlZjxhbnk+IGltcGxlbWVudHMgVGVtcGxhdGVEYXRhIHtcbiAgLyoqXG4gICAqIEBpbnRlcm5hbFxuICAgKi9cbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIF9wcm9qZWN0ZWRWaWV3cyAhOiBWaWV3RGF0YVtdO1xuXG4gIGNvbnN0cnVjdG9yKHByaXZhdGUgX3BhcmVudFZpZXc6IFZpZXdEYXRhLCBwcml2YXRlIF9kZWY6IE5vZGVEZWYpIHsgc3VwZXIoKTsgfVxuXG4gIGNyZWF0ZUVtYmVkZGVkVmlldyhjb250ZXh0OiBhbnkpOiBFbWJlZGRlZFZpZXdSZWY8YW55PiB7XG4gICAgcmV0dXJuIG5ldyBWaWV3UmVmXyhTZXJ2aWNlcy5jcmVhdGVFbWJlZGRlZFZpZXcoXG4gICAgICAgIHRoaXMuX3BhcmVudFZpZXcsIHRoaXMuX2RlZiwgdGhpcy5fZGVmLmVsZW1lbnQgIS50ZW1wbGF0ZSAhLCBjb250ZXh0KSk7XG4gIH1cblxuICBnZXQgZWxlbWVudFJlZigpOiBFbGVtZW50UmVmIHtcbiAgICByZXR1cm4gbmV3IEVsZW1lbnRSZWYoYXNFbGVtZW50RGF0YSh0aGlzLl9wYXJlbnRWaWV3LCB0aGlzLl9kZWYubm9kZUluZGV4KS5yZW5kZXJFbGVtZW50KTtcbiAgfVxufVxuXG5leHBvcnQgZnVuY3Rpb24gY3JlYXRlSW5qZWN0b3IodmlldzogVmlld0RhdGEsIGVsRGVmOiBOb2RlRGVmKTogSW5qZWN0b3Ige1xuICByZXR1cm4gbmV3IEluamVjdG9yXyh2aWV3LCBlbERlZik7XG59XG5cbmNsYXNzIEluamVjdG9yXyBpbXBsZW1lbnRzIEluamVjdG9yIHtcbiAgY29uc3RydWN0b3IocHJpdmF0ZSB2aWV3OiBWaWV3RGF0YSwgcHJpdmF0ZSBlbERlZjogTm9kZURlZnxudWxsKSB7fVxuICBnZXQodG9rZW46IGFueSwgbm90Rm91bmRWYWx1ZTogYW55ID0gSW5qZWN0b3IuVEhST1dfSUZfTk9UX0ZPVU5EKTogYW55IHtcbiAgICBjb25zdCBhbGxvd1ByaXZhdGVTZXJ2aWNlcyA9XG4gICAgICAgIHRoaXMuZWxEZWYgPyAodGhpcy5lbERlZi5mbGFncyAmIE5vZGVGbGFncy5Db21wb25lbnRWaWV3KSAhPT0gMCA6IGZhbHNlO1xuICAgIHJldHVybiBTZXJ2aWNlcy5yZXNvbHZlRGVwKFxuICAgICAgICB0aGlzLnZpZXcsIHRoaXMuZWxEZWYsIGFsbG93UHJpdmF0ZVNlcnZpY2VzLFxuICAgICAgICB7ZmxhZ3M6IERlcEZsYWdzLk5vbmUsIHRva2VuLCB0b2tlbktleTogdG9rZW5LZXkodG9rZW4pfSwgbm90Rm91bmRWYWx1ZSk7XG4gIH1cbn1cblxuZXhwb3J0IGZ1bmN0aW9uIG5vZGVWYWx1ZSh2aWV3OiBWaWV3RGF0YSwgaW5kZXg6IG51bWJlcik6IGFueSB7XG4gIGNvbnN0IGRlZiA9IHZpZXcuZGVmLm5vZGVzW2luZGV4XTtcbiAgaWYgKGRlZi5mbGFncyAmIE5vZGVGbGFncy5UeXBlRWxlbWVudCkge1xuICAgIGNvbnN0IGVsRGF0YSA9IGFzRWxlbWVudERhdGEodmlldywgZGVmLm5vZGVJbmRleCk7XG4gICAgcmV0dXJuIGRlZi5lbGVtZW50ICEudGVtcGxhdGUgPyBlbERhdGEudGVtcGxhdGUgOiBlbERhdGEucmVuZGVyRWxlbWVudDtcbiAgfSBlbHNlIGlmIChkZWYuZmxhZ3MgJiBOb2RlRmxhZ3MuVHlwZVRleHQpIHtcbiAgICByZXR1cm4gYXNUZXh0RGF0YSh2aWV3LCBkZWYubm9kZUluZGV4KS5yZW5kZXJUZXh0O1xuICB9IGVsc2UgaWYgKGRlZi5mbGFncyAmIChOb2RlRmxhZ3MuQ2F0UHJvdmlkZXIgfCBOb2RlRmxhZ3MuVHlwZVBpcGUpKSB7XG4gICAgcmV0dXJuIGFzUHJvdmlkZXJEYXRhKHZpZXcsIGRlZi5ub2RlSW5kZXgpLmluc3RhbmNlO1xuICB9XG4gIHRocm93IG5ldyBFcnJvcihgSWxsZWdhbCBzdGF0ZTogcmVhZCBub2RlVmFsdWUgZm9yIG5vZGUgaW5kZXggJHtpbmRleH1gKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGNyZWF0ZU5nTW9kdWxlUmVmKFxuICAgIG1vZHVsZVR5cGU6IFR5cGU8YW55PiwgcGFyZW50OiBJbmplY3RvciwgYm9vdHN0cmFwQ29tcG9uZW50czogVHlwZTxhbnk+W10sXG4gICAgZGVmOiBOZ01vZHVsZURlZmluaXRpb24pOiBOZ01vZHVsZVJlZjxhbnk+IHtcbiAgcmV0dXJuIG5ldyBOZ01vZHVsZVJlZl8obW9kdWxlVHlwZSwgcGFyZW50LCBib290c3RyYXBDb21wb25lbnRzLCBkZWYpO1xufVxuXG5jbGFzcyBOZ01vZHVsZVJlZl8gaW1wbGVtZW50cyBOZ01vZHVsZURhdGEsIEludGVybmFsTmdNb2R1bGVSZWY8YW55PiB7XG4gIHByaXZhdGUgX2Rlc3Ryb3lMaXN0ZW5lcnM6ICgoKSA9PiB2b2lkKVtdID0gW107XG4gIHByaXZhdGUgX2Rlc3Ryb3llZDogYm9vbGVhbiA9IGZhbHNlO1xuICAvKiogQGludGVybmFsICovXG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBfcHJvdmlkZXJzICE6IGFueVtdO1xuICAvKiogQGludGVybmFsICovXG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBfbW9kdWxlcyAhOiBhbnlbXTtcblxuICByZWFkb25seSBpbmplY3RvcjogSW5qZWN0b3IgPSB0aGlzO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcHJpdmF0ZSBfbW9kdWxlVHlwZTogVHlwZTxhbnk+LCBwdWJsaWMgX3BhcmVudDogSW5qZWN0b3IsXG4gICAgICBwdWJsaWMgX2Jvb3RzdHJhcENvbXBvbmVudHM6IFR5cGU8YW55PltdLCBwdWJsaWMgX2RlZjogTmdNb2R1bGVEZWZpbml0aW9uKSB7XG4gICAgaW5pdE5nTW9kdWxlKHRoaXMpO1xuICB9XG5cbiAgZ2V0KHRva2VuOiBhbnksIG5vdEZvdW5kVmFsdWU6IGFueSA9IEluamVjdG9yLlRIUk9XX0lGX05PVF9GT1VORCxcbiAgICAgIGluamVjdEZsYWdzOiBJbmplY3RGbGFncyA9IEluamVjdEZsYWdzLkRlZmF1bHQpOiBhbnkge1xuICAgIGxldCBmbGFncyA9IERlcEZsYWdzLk5vbmU7XG4gICAgaWYgKGluamVjdEZsYWdzICYgSW5qZWN0RmxhZ3MuU2tpcFNlbGYpIHtcbiAgICAgIGZsYWdzIHw9IERlcEZsYWdzLlNraXBTZWxmO1xuICAgIH0gZWxzZSBpZiAoaW5qZWN0RmxhZ3MgJiBJbmplY3RGbGFncy5TZWxmKSB7XG4gICAgICBmbGFncyB8PSBEZXBGbGFncy5TZWxmO1xuICAgIH1cbiAgICByZXR1cm4gcmVzb2x2ZU5nTW9kdWxlRGVwKFxuICAgICAgICB0aGlzLCB7dG9rZW46IHRva2VuLCB0b2tlbktleTogdG9rZW5LZXkodG9rZW4pLCBmbGFnczogZmxhZ3N9LCBub3RGb3VuZFZhbHVlKTtcbiAgfVxuXG4gIGdldCBpbnN0YW5jZSgpIHsgcmV0dXJuIHRoaXMuZ2V0KHRoaXMuX21vZHVsZVR5cGUpOyB9XG5cbiAgZ2V0IGNvbXBvbmVudEZhY3RvcnlSZXNvbHZlcigpIHsgcmV0dXJuIHRoaXMuZ2V0KENvbXBvbmVudEZhY3RvcnlSZXNvbHZlcik7IH1cblxuICBkZXN0cm95KCk6IHZvaWQge1xuICAgIGlmICh0aGlzLl9kZXN0cm95ZWQpIHtcbiAgICAgIHRocm93IG5ldyBFcnJvcihcbiAgICAgICAgICBgVGhlIG5nIG1vZHVsZSAke3N0cmluZ2lmeSh0aGlzLmluc3RhbmNlLmNvbnN0cnVjdG9yKX0gaGFzIGFscmVhZHkgYmVlbiBkZXN0cm95ZWQuYCk7XG4gICAgfVxuICAgIHRoaXMuX2Rlc3Ryb3llZCA9IHRydWU7XG4gICAgY2FsbE5nTW9kdWxlTGlmZWN5Y2xlKHRoaXMsIE5vZGVGbGFncy5PbkRlc3Ryb3kpO1xuICAgIHRoaXMuX2Rlc3Ryb3lMaXN0ZW5lcnMuZm9yRWFjaCgobGlzdGVuZXIpID0+IGxpc3RlbmVyKCkpO1xuICB9XG5cbiAgb25EZXN0cm95KGNhbGxiYWNrOiAoKSA9PiB2b2lkKTogdm9pZCB7IHRoaXMuX2Rlc3Ryb3lMaXN0ZW5lcnMucHVzaChjYWxsYmFjayk7IH1cbn1cbiJdfQ==