(function (global, factory) {
    typeof exports === 'object' && typeof module !== 'undefined' ? factory(exports, require('rxjs'), require('@angular/core')) :
    typeof define === 'function' && define.amd ? define('@angular/cdk/collections', ['exports', 'rxjs', '@angular/core'], factory) :
    (global = global || self, factory((global.ng = global.ng || {}, global.ng.cdk = global.ng.cdk || {}, global.ng.cdk.collections = {}), global.rxjs, global.ng.core));
}(this, (function (exports, rxjs, i0) { 'use strict';

    /*! *****************************************************************************
    Copyright (c) Microsoft Corporation.

    Permission to use, copy, modify, and/or distribute this software for any
    purpose with or without fee is hereby granted.

    THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
    REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
    AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
    INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
    LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
    OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
    PERFORMANCE OF THIS SOFTWARE.
    ***************************************************************************** */
    /* global Reflect, Promise */
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b)
                if (b.hasOwnProperty(p))
                    d[p] = b[p]; };
        return extendStatics(d, b);
    };
    function __extends(d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    }
    var __assign = function () {
        __assign = Object.assign || function __assign(t) {
            for (var s, i = 1, n = arguments.length; i < n; i++) {
                s = arguments[i];
                for (var p in s)
                    if (Object.prototype.hasOwnProperty.call(s, p))
                        t[p] = s[p];
            }
            return t;
        };
        return __assign.apply(this, arguments);
    };
    function __rest(s, e) {
        var t = {};
        for (var p in s)
            if (Object.prototype.hasOwnProperty.call(s, p) && e.indexOf(p) < 0)
                t[p] = s[p];
        if (s != null && typeof Object.getOwnPropertySymbols === "function")
            for (var i = 0, p = Object.getOwnPropertySymbols(s); i < p.length; i++) {
                if (e.indexOf(p[i]) < 0 && Object.prototype.propertyIsEnumerable.call(s, p[i]))
                    t[p[i]] = s[p[i]];
            }
        return t;
    }
    function __decorate(decorators, target, key, desc) {
        var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
        if (typeof Reflect === "object" && typeof Reflect.decorate === "function")
            r = Reflect.decorate(decorators, target, key, desc);
        else
            for (var i = decorators.length - 1; i >= 0; i--)
                if (d = decorators[i])
                    r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
        return c > 3 && r && Object.defineProperty(target, key, r), r;
    }
    function __param(paramIndex, decorator) {
        return function (target, key) { decorator(target, key, paramIndex); };
    }
    function __metadata(metadataKey, metadataValue) {
        if (typeof Reflect === "object" && typeof Reflect.metadata === "function")
            return Reflect.metadata(metadataKey, metadataValue);
    }
    function __awaiter(thisArg, _arguments, P, generator) {
        function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
        return new (P || (P = Promise))(function (resolve, reject) {
            function fulfilled(value) { try {
                step(generator.next(value));
            }
            catch (e) {
                reject(e);
            } }
            function rejected(value) { try {
                step(generator["throw"](value));
            }
            catch (e) {
                reject(e);
            } }
            function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
            step((generator = generator.apply(thisArg, _arguments || [])).next());
        });
    }
    function __generator(thisArg, body) {
        var _ = { label: 0, sent: function () { if (t[0] & 1)
                throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
        return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function () { return this; }), g;
        function verb(n) { return function (v) { return step([n, v]); }; }
        function step(op) {
            if (f)
                throw new TypeError("Generator is already executing.");
            while (_)
                try {
                    if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done)
                        return t;
                    if (y = 0, t)
                        op = [op[0] & 2, t.value];
                    switch (op[0]) {
                        case 0:
                        case 1:
                            t = op;
                            break;
                        case 4:
                            _.label++;
                            return { value: op[1], done: false };
                        case 5:
                            _.label++;
                            y = op[1];
                            op = [0];
                            continue;
                        case 7:
                            op = _.ops.pop();
                            _.trys.pop();
                            continue;
                        default:
                            if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) {
                                _ = 0;
                                continue;
                            }
                            if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) {
                                _.label = op[1];
                                break;
                            }
                            if (op[0] === 6 && _.label < t[1]) {
                                _.label = t[1];
                                t = op;
                                break;
                            }
                            if (t && _.label < t[2]) {
                                _.label = t[2];
                                _.ops.push(op);
                                break;
                            }
                            if (t[2])
                                _.ops.pop();
                            _.trys.pop();
                            continue;
                    }
                    op = body.call(thisArg, _);
                }
                catch (e) {
                    op = [6, e];
                    y = 0;
                }
                finally {
                    f = t = 0;
                }
            if (op[0] & 5)
                throw op[1];
            return { value: op[0] ? op[1] : void 0, done: true };
        }
    }
    var __createBinding = Object.create ? (function (o, m, k, k2) {
        if (k2 === undefined)
            k2 = k;
        Object.defineProperty(o, k2, { enumerable: true, get: function () { return m[k]; } });
    }) : (function (o, m, k, k2) {
        if (k2 === undefined)
            k2 = k;
        o[k2] = m[k];
    });
    function __exportStar(m, exports) {
        for (var p in m)
            if (p !== "default" && !exports.hasOwnProperty(p))
                __createBinding(exports, m, p);
    }
    function __values(o) {
        var s = typeof Symbol === "function" && Symbol.iterator, m = s && o[s], i = 0;
        if (m)
            return m.call(o);
        if (o && typeof o.length === "number")
            return {
                next: function () {
                    if (o && i >= o.length)
                        o = void 0;
                    return { value: o && o[i++], done: !o };
                }
            };
        throw new TypeError(s ? "Object is not iterable." : "Symbol.iterator is not defined.");
    }
    function __read(o, n) {
        var m = typeof Symbol === "function" && o[Symbol.iterator];
        if (!m)
            return o;
        var i = m.call(o), r, ar = [], e;
        try {
            while ((n === void 0 || n-- > 0) && !(r = i.next()).done)
                ar.push(r.value);
        }
        catch (error) {
            e = { error: error };
        }
        finally {
            try {
                if (r && !r.done && (m = i["return"]))
                    m.call(i);
            }
            finally {
                if (e)
                    throw e.error;
            }
        }
        return ar;
    }
    function __spread() {
        for (var ar = [], i = 0; i < arguments.length; i++)
            ar = ar.concat(__read(arguments[i]));
        return ar;
    }
    function __spreadArrays() {
        for (var s = 0, i = 0, il = arguments.length; i < il; i++)
            s += arguments[i].length;
        for (var r = Array(s), k = 0, i = 0; i < il; i++)
            for (var a = arguments[i], j = 0, jl = a.length; j < jl; j++, k++)
                r[k] = a[j];
        return r;
    }
    ;
    function __await(v) {
        return this instanceof __await ? (this.v = v, this) : new __await(v);
    }
    function __asyncGenerator(thisArg, _arguments, generator) {
        if (!Symbol.asyncIterator)
            throw new TypeError("Symbol.asyncIterator is not defined.");
        var g = generator.apply(thisArg, _arguments || []), i, q = [];
        return i = {}, verb("next"), verb("throw"), verb("return"), i[Symbol.asyncIterator] = function () { return this; }, i;
        function verb(n) { if (g[n])
            i[n] = function (v) { return new Promise(function (a, b) { q.push([n, v, a, b]) > 1 || resume(n, v); }); }; }
        function resume(n, v) { try {
            step(g[n](v));
        }
        catch (e) {
            settle(q[0][3], e);
        } }
        function step(r) { r.value instanceof __await ? Promise.resolve(r.value.v).then(fulfill, reject) : settle(q[0][2], r); }
        function fulfill(value) { resume("next", value); }
        function reject(value) { resume("throw", value); }
        function settle(f, v) { if (f(v), q.shift(), q.length)
            resume(q[0][0], q[0][1]); }
    }
    function __asyncDelegator(o) {
        var i, p;
        return i = {}, verb("next"), verb("throw", function (e) { throw e; }), verb("return"), i[Symbol.iterator] = function () { return this; }, i;
        function verb(n, f) { i[n] = o[n] ? function (v) { return (p = !p) ? { value: __await(o[n](v)), done: n === "return" } : f ? f(v) : v; } : f; }
    }
    function __asyncValues(o) {
        if (!Symbol.asyncIterator)
            throw new TypeError("Symbol.asyncIterator is not defined.");
        var m = o[Symbol.asyncIterator], i;
        return m ? m.call(o) : (o = typeof __values === "function" ? __values(o) : o[Symbol.iterator](), i = {}, verb("next"), verb("throw"), verb("return"), i[Symbol.asyncIterator] = function () { return this; }, i);
        function verb(n) { i[n] = o[n] && function (v) { return new Promise(function (resolve, reject) { v = o[n](v), settle(resolve, reject, v.done, v.value); }); }; }
        function settle(resolve, reject, d, v) { Promise.resolve(v).then(function (v) { resolve({ value: v, done: d }); }, reject); }
    }
    function __makeTemplateObject(cooked, raw) {
        if (Object.defineProperty) {
            Object.defineProperty(cooked, "raw", { value: raw });
        }
        else {
            cooked.raw = raw;
        }
        return cooked;
    }
    ;
    var __setModuleDefault = Object.create ? (function (o, v) {
        Object.defineProperty(o, "default", { enumerable: true, value: v });
    }) : function (o, v) {
        o["default"] = v;
    };
    function __importStar(mod) {
        if (mod && mod.__esModule)
            return mod;
        var result = {};
        if (mod != null)
            for (var k in mod)
                if (Object.hasOwnProperty.call(mod, k))
                    __createBinding(result, mod, k);
        __setModuleDefault(result, mod);
        return result;
    }
    function __importDefault(mod) {
        return (mod && mod.__esModule) ? mod : { default: mod };
    }
    function __classPrivateFieldGet(receiver, privateMap) {
        if (!privateMap.has(receiver)) {
            throw new TypeError("attempted to get private field on non-instance");
        }
        return privateMap.get(receiver);
    }
    function __classPrivateFieldSet(receiver, privateMap, value) {
        if (!privateMap.has(receiver)) {
            throw new TypeError("attempted to set private field on non-instance");
        }
        privateMap.set(receiver, value);
        return value;
    }

    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    var DataSource = /** @class */ (function () {
        function DataSource() {
        }
        return DataSource;
    }());
    /** Checks whether an object is a data source. */
    function isDataSource(value) {
        // Check if the value is a DataSource by observing if it has a connect function. Cannot
        // be checked as an `instanceof DataSource` since people could create their own sources
        // that match the interface, but don't extend DataSource.
        return value && typeof value.connect === 'function';
    }

    /** DataSource wrapper for a native array. */
    var ArrayDataSource = /** @class */ (function (_super) {
        __extends(ArrayDataSource, _super);
        function ArrayDataSource(_data) {
            var _this = _super.call(this) || this;
            _this._data = _data;
            return _this;
        }
        ArrayDataSource.prototype.connect = function () {
            return rxjs.isObservable(this._data) ? this._data : rxjs.of(this._data);
        };
        ArrayDataSource.prototype.disconnect = function () { };
        return ArrayDataSource;
    }(DataSource));

    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    /**
     * A repeater that destroys views when they are removed from a
     * {@link ViewContainerRef}. When new items are inserted into the container,
     * the repeater will always construct a new embedded view for each item.
     *
     * @template T The type for the embedded view's $implicit property.
     * @template R The type for the item in each IterableDiffer change record.
     * @template C The type for the context passed to each embedded view.
     */
    var _DisposeViewRepeaterStrategy = /** @class */ (function () {
        function _DisposeViewRepeaterStrategy() {
        }
        _DisposeViewRepeaterStrategy.prototype.applyChanges = function (changes, viewContainerRef, itemContextFactory, itemValueResolver, itemViewChanged) {
            changes.forEachOperation(function (record, adjustedPreviousIndex, currentIndex) {
                var view;
                var operation;
                if (record.previousIndex == null) {
                    var insertContext = itemContextFactory(record, adjustedPreviousIndex, currentIndex);
                    view = viewContainerRef.createEmbeddedView(insertContext.templateRef, insertContext.context, insertContext.index);
                    operation = 1 /* INSERTED */;
                }
                else if (currentIndex == null) {
                    viewContainerRef.remove(adjustedPreviousIndex);
                    operation = 3 /* REMOVED */;
                }
                else {
                    view = viewContainerRef.get(adjustedPreviousIndex);
                    viewContainerRef.move(view, currentIndex);
                    operation = 2 /* MOVED */;
                }
                if (itemViewChanged) {
                    itemViewChanged({
                        context: view === null || view === void 0 ? void 0 : view.context,
                        operation: operation,
                        record: record,
                    });
                }
            });
        };
        _DisposeViewRepeaterStrategy.prototype.detach = function () {
        };
        return _DisposeViewRepeaterStrategy;
    }());

    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    /**
     * A repeater that caches views when they are removed from a
     * {@link ViewContainerRef}. When new items are inserted into the container,
     * the repeater will reuse one of the cached views instead of creating a new
     * embedded view. Recycling cached views reduces the quantity of expensive DOM
     * inserts.
     *
     * @template T The type for the embedded view's $implicit property.
     * @template R The type for the item in each IterableDiffer change record.
     * @template C The type for the context passed to each embedded view.
     */
    var _RecycleViewRepeaterStrategy = /** @class */ (function () {
        function _RecycleViewRepeaterStrategy() {
            /**
             * The size of the cache used to store unused views.
             * Setting the cache size to `0` will disable caching. Defaults to 20 views.
             */
            this.viewCacheSize = 20;
            /**
             * View cache that stores embedded view instances that have been previously stamped out,
             * but don't are not currently rendered. The view repeater will reuse these views rather than
             * creating brand new ones.
             *
             * TODO(michaeljamesparsons) Investigate whether using a linked list would improve performance.
             */
            this._viewCache = [];
        }
        /** Apply changes to the DOM. */
        _RecycleViewRepeaterStrategy.prototype.applyChanges = function (changes, viewContainerRef, itemContextFactory, itemValueResolver, itemViewChanged) {
            var _this = this;
            // Rearrange the views to put them in the right location.
            changes.forEachOperation(function (record, adjustedPreviousIndex, currentIndex) {
                var view;
                var operation;
                if (record.previousIndex == null) { // Item added.
                    var viewArgsFactory = function () { return itemContextFactory(record, adjustedPreviousIndex, currentIndex); };
                    view = _this._insertView(viewArgsFactory, currentIndex, viewContainerRef, itemValueResolver(record));
                    operation = view ? 1 /* INSERTED */ : 0 /* REPLACED */;
                }
                else if (currentIndex == null) { // Item removed.
                    _this._detachAndCacheView(adjustedPreviousIndex, viewContainerRef);
                    operation = 3 /* REMOVED */;
                }
                else { // Item moved.
                    view = _this._moveView(adjustedPreviousIndex, currentIndex, viewContainerRef, itemValueResolver(record));
                    operation = 2 /* MOVED */;
                }
                if (itemViewChanged) {
                    itemViewChanged({
                        context: view === null || view === void 0 ? void 0 : view.context,
                        operation: operation,
                        record: record,
                    });
                }
            });
        };
        _RecycleViewRepeaterStrategy.prototype.detach = function () {
            var e_1, _a;
            try {
                for (var _b = __values(this._viewCache), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var view = _c.value;
                    view.destroy();
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
        };
        /**
         * Inserts a view for a new item, either from the cache or by creating a new
         * one. Returns `undefined` if the item was inserted into a cached view.
         */
        _RecycleViewRepeaterStrategy.prototype._insertView = function (viewArgsFactory, currentIndex, viewContainerRef, value) {
            var cachedView = this._insertViewFromCache(currentIndex, viewContainerRef);
            if (cachedView) {
                cachedView.context.$implicit = value;
                return undefined;
            }
            var viewArgs = viewArgsFactory();
            return viewContainerRef.createEmbeddedView(viewArgs.templateRef, viewArgs.context, viewArgs.index);
        };
        /** Detaches the view at the given index and inserts into the view cache. */
        _RecycleViewRepeaterStrategy.prototype._detachAndCacheView = function (index, viewContainerRef) {
            var detachedView = this._detachView(index, viewContainerRef);
            this._maybeCacheView(detachedView, viewContainerRef);
        };
        /** Moves view at the previous index to the current index. */
        _RecycleViewRepeaterStrategy.prototype._moveView = function (adjustedPreviousIndex, currentIndex, viewContainerRef, value) {
            var view = viewContainerRef.get(adjustedPreviousIndex);
            viewContainerRef.move(view, currentIndex);
            view.context.$implicit = value;
            return view;
        };
        /**
         * Cache the given detached view. If the cache is full, the view will be
         * destroyed.
         */
        _RecycleViewRepeaterStrategy.prototype._maybeCacheView = function (view, viewContainerRef) {
            if (this._viewCache.length < this.viewCacheSize) {
                this._viewCache.push(view);
            }
            else {
                var index = viewContainerRef.indexOf(view);
                // The host component could remove views from the container outside of
                // the view repeater. It's unlikely this will occur, but just in case,
                // destroy the view on its own, otherwise destroy it through the
                // container to ensure that all the references are removed.
                if (index === -1) {
                    view.destroy();
                }
                else {
                    viewContainerRef.remove(index);
                }
            }
        };
        /** Inserts a recycled view from the cache at the given index. */
        _RecycleViewRepeaterStrategy.prototype._insertViewFromCache = function (index, viewContainerRef) {
            var cachedView = this._viewCache.pop();
            if (cachedView) {
                viewContainerRef.insert(cachedView, index);
            }
            return cachedView || null;
        };
        /** Detaches the embedded view at the given index. */
        _RecycleViewRepeaterStrategy.prototype._detachView = function (index, viewContainerRef) {
            return viewContainerRef.detach(index);
        };
        return _RecycleViewRepeaterStrategy;
    }());

    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    /**
     * Class to be used to power selecting one or more options from a list.
     */
    var SelectionModel = /** @class */ (function () {
        function SelectionModel(_multiple, initiallySelectedValues, _emitChanges) {
            var _this = this;
            if (_multiple === void 0) { _multiple = false; }
            if (_emitChanges === void 0) { _emitChanges = true; }
            this._multiple = _multiple;
            this._emitChanges = _emitChanges;
            /** Currently-selected values. */
            this._selection = new Set();
            /** Keeps track of the deselected options that haven't been emitted by the change event. */
            this._deselectedToEmit = [];
            /** Keeps track of the selected options that haven't been emitted by the change event. */
            this._selectedToEmit = [];
            /** Event emitted when the value has changed. */
            this.changed = new rxjs.Subject();
            if (initiallySelectedValues && initiallySelectedValues.length) {
                if (_multiple) {
                    initiallySelectedValues.forEach(function (value) { return _this._markSelected(value); });
                }
                else {
                    this._markSelected(initiallySelectedValues[0]);
                }
                // Clear the array in order to avoid firing the change event for preselected values.
                this._selectedToEmit.length = 0;
            }
        }
        Object.defineProperty(SelectionModel.prototype, "selected", {
            /** Selected values. */
            get: function () {
                if (!this._selected) {
                    this._selected = Array.from(this._selection.values());
                }
                return this._selected;
            },
            enumerable: false,
            configurable: true
        });
        /**
         * Selects a value or an array of values.
         */
        SelectionModel.prototype.select = function () {
            var _this = this;
            var values = [];
            for (var _i = 0; _i < arguments.length; _i++) {
                values[_i] = arguments[_i];
            }
            this._verifyValueAssignment(values);
            values.forEach(function (value) { return _this._markSelected(value); });
            this._emitChangeEvent();
        };
        /**
         * Deselects a value or an array of values.
         */
        SelectionModel.prototype.deselect = function () {
            var _this = this;
            var values = [];
            for (var _i = 0; _i < arguments.length; _i++) {
                values[_i] = arguments[_i];
            }
            this._verifyValueAssignment(values);
            values.forEach(function (value) { return _this._unmarkSelected(value); });
            this._emitChangeEvent();
        };
        /**
         * Toggles a value between selected and deselected.
         */
        SelectionModel.prototype.toggle = function (value) {
            this.isSelected(value) ? this.deselect(value) : this.select(value);
        };
        /**
         * Clears all of the selected values.
         */
        SelectionModel.prototype.clear = function () {
            this._unmarkAll();
            this._emitChangeEvent();
        };
        /**
         * Determines whether a value is selected.
         */
        SelectionModel.prototype.isSelected = function (value) {
            return this._selection.has(value);
        };
        /**
         * Determines whether the model does not have a value.
         */
        SelectionModel.prototype.isEmpty = function () {
            return this._selection.size === 0;
        };
        /**
         * Determines whether the model has a value.
         */
        SelectionModel.prototype.hasValue = function () {
            return !this.isEmpty();
        };
        /**
         * Sorts the selected values based on a predicate function.
         */
        SelectionModel.prototype.sort = function (predicate) {
            if (this._multiple && this.selected) {
                this._selected.sort(predicate);
            }
        };
        /**
         * Gets whether multiple values can be selected.
         */
        SelectionModel.prototype.isMultipleSelection = function () {
            return this._multiple;
        };
        /** Emits a change event and clears the records of selected and deselected values. */
        SelectionModel.prototype._emitChangeEvent = function () {
            // Clear the selected values so they can be re-cached.
            this._selected = null;
            if (this._selectedToEmit.length || this._deselectedToEmit.length) {
                this.changed.next({
                    source: this,
                    added: this._selectedToEmit,
                    removed: this._deselectedToEmit
                });
                this._deselectedToEmit = [];
                this._selectedToEmit = [];
            }
        };
        /** Selects a value. */
        SelectionModel.prototype._markSelected = function (value) {
            if (!this.isSelected(value)) {
                if (!this._multiple) {
                    this._unmarkAll();
                }
                this._selection.add(value);
                if (this._emitChanges) {
                    this._selectedToEmit.push(value);
                }
            }
        };
        /** Deselects a value. */
        SelectionModel.prototype._unmarkSelected = function (value) {
            if (this.isSelected(value)) {
                this._selection.delete(value);
                if (this._emitChanges) {
                    this._deselectedToEmit.push(value);
                }
            }
        };
        /** Clears out the selected values. */
        SelectionModel.prototype._unmarkAll = function () {
            var _this = this;
            if (!this.isEmpty()) {
                this._selection.forEach(function (value) { return _this._unmarkSelected(value); });
            }
        };
        /**
         * Verifies the value assignment and throws an error if the specified value array is
         * including multiple values while the selection model is not supporting multiple values.
         */
        SelectionModel.prototype._verifyValueAssignment = function (values) {
            if (values.length > 1 && !this._multiple && (typeof ngDevMode === 'undefined' || ngDevMode)) {
                throw getMultipleValuesInSingleSelectionError();
            }
        };
        return SelectionModel;
    }());
    /**
     * Returns an error that reports that multiple values are passed into a selection model
     * with a single value.
     * @docs-private
     */
    function getMultipleValuesInSingleSelectionError() {
        return Error('Cannot pass multiple values into SelectionModel with single-value mode.');
    }

    /**
     * Class to coordinate unique selection based on name.
     * Intended to be consumed as an Angular service.
     * This service is needed because native radio change events are only fired on the item currently
     * being selected, and we still need to uncheck the previous selection.
     *
     * This service does not *store* any IDs and names because they may change at any time, so it is
     * less error-prone if they are simply passed through when the events occur.
     */
    var UniqueSelectionDispatcher = /** @class */ (function () {
        function UniqueSelectionDispatcher() {
            this._listeners = [];
        }
        /**
         * Notify other items that selection for the given name has been set.
         * @param id ID of the item.
         * @param name Name of the item.
         */
        UniqueSelectionDispatcher.prototype.notify = function (id, name) {
            var e_1, _a;
            try {
                for (var _b = __values(this._listeners), _c = _b.next(); !_c.done; _c = _b.next()) {
                    var listener = _c.value;
                    listener(id, name);
                }
            }
            catch (e_1_1) { e_1 = { error: e_1_1 }; }
            finally {
                try {
                    if (_c && !_c.done && (_a = _b.return)) _a.call(_b);
                }
                finally { if (e_1) throw e_1.error; }
            }
        };
        /**
         * Listen for future changes to item selection.
         * @return Function used to deregister listener
         */
        UniqueSelectionDispatcher.prototype.listen = function (listener) {
            var _this = this;
            this._listeners.push(listener);
            return function () {
                _this._listeners = _this._listeners.filter(function (registered) {
                    return listener !== registered;
                });
            };
        };
        UniqueSelectionDispatcher.prototype.ngOnDestroy = function () {
            this._listeners = [];
        };
        return UniqueSelectionDispatcher;
    }());
    UniqueSelectionDispatcher.ɵprov = i0.ɵɵdefineInjectable({ factory: function UniqueSelectionDispatcher_Factory() { return new UniqueSelectionDispatcher(); }, token: UniqueSelectionDispatcher, providedIn: "root" });
    UniqueSelectionDispatcher.decorators = [
        { type: i0.Injectable, args: [{ providedIn: 'root' },] }
    ];

    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */
    /**
     * Injection token for {@link _ViewRepeater}.
     *
     * INTERNAL ONLY - not for public consumption.
     * @docs-private
     */
    var _VIEW_REPEATER_STRATEGY = new i0.InjectionToken('_ViewRepeater');

    /**
     * @license
     * Copyright Google LLC All Rights Reserved.
     *
     * Use of this source code is governed by an MIT-style license that can be
     * found in the LICENSE file at https://angular.io/license
     */

    /**
     * Generated bundle index. Do not edit.
     */

    exports.ArrayDataSource = ArrayDataSource;
    exports.DataSource = DataSource;
    exports.SelectionModel = SelectionModel;
    exports.UniqueSelectionDispatcher = UniqueSelectionDispatcher;
    exports._DisposeViewRepeaterStrategy = _DisposeViewRepeaterStrategy;
    exports._RecycleViewRepeaterStrategy = _RecycleViewRepeaterStrategy;
    exports._VIEW_REPEATER_STRATEGY = _VIEW_REPEATER_STRATEGY;
    exports.getMultipleValuesInSingleSelectionError = getMultipleValuesInSingleSelectionError;
    exports.isDataSource = isDataSource;

    Object.defineProperty(exports, '__esModule', { value: true });

})));
//# sourceMappingURL=cdk-collections.umd.js.map
