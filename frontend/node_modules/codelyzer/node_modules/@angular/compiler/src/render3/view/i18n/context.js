/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
(function (factory) {
    if (typeof module === "object" && typeof module.exports === "object") {
        var v = factory(require, exports);
        if (v !== undefined) module.exports = v;
    }
    else if (typeof define === "function" && define.amd) {
        define("@angular/compiler/src/render3/view/i18n/context", ["require", "exports", "tslib", "@angular/compiler/src/render3/view/i18n/util"], factory);
    }
})(function (require, exports) {
    "use strict";
    Object.defineProperty(exports, "__esModule", { value: true });
    var tslib_1 = require("tslib");
    var util_1 = require("@angular/compiler/src/render3/view/i18n/util");
    var TagType;
    (function (TagType) {
        TagType[TagType["ELEMENT"] = 0] = "ELEMENT";
        TagType[TagType["TEMPLATE"] = 1] = "TEMPLATE";
        TagType[TagType["PROJECTION"] = 2] = "PROJECTION";
    })(TagType || (TagType = {}));
    /**
     * Generates an object that is used as a shared state between parent and all child contexts.
     */
    function setupRegistry() {
        return { getUniqueId: util_1.getSeqNumberGenerator(), icus: new Map() };
    }
    /**
     * I18nContext is a helper class which keeps track of all i18n-related aspects
     * (accumulates placeholders, bindings, etc) between i18nStart and i18nEnd instructions.
     *
     * When we enter a nested template, the top-level context is being passed down
     * to the nested component, which uses this context to generate a child instance
     * of I18nContext class (to handle nested template) and at the end, reconciles it back
     * with the parent context.
     *
     * @param index Instruction index of i18nStart, which initiates this context
     * @param ref Reference to a translation const that represents the content if thus context
     * @param level Nestng level defined for child contexts
     * @param templateIndex Instruction index of a template which this context belongs to
     * @param meta Meta information (id, meaning, description, etc) associated with this context
     */
    var I18nContext = /** @class */ (function () {
        function I18nContext(index, ref, level, templateIndex, meta, registry) {
            if (level === void 0) { level = 0; }
            if (templateIndex === void 0) { templateIndex = null; }
            this.index = index;
            this.ref = ref;
            this.level = level;
            this.templateIndex = templateIndex;
            this.meta = meta;
            this.registry = registry;
            this.bindings = new Set();
            this.placeholders = new Map();
            this.isEmitted = false;
            this._unresolvedCtxCount = 0;
            this._registry = registry || setupRegistry();
            this.id = this._registry.getUniqueId();
        }
        I18nContext.prototype.appendTag = function (type, node, index, closed) {
            if (node.isVoid && closed) {
                return; // ignore "close" for void tags
            }
            var ph = node.isVoid || !closed ? node.startName : node.closeName;
            var content = { type: type, index: index, ctx: this.id, isVoid: node.isVoid, closed: closed };
            util_1.updatePlaceholderMap(this.placeholders, ph, content);
        };
        Object.defineProperty(I18nContext.prototype, "icus", {
            get: function () { return this._registry.icus; },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(I18nContext.prototype, "isRoot", {
            get: function () { return this.level === 0; },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(I18nContext.prototype, "isResolved", {
            get: function () { return this._unresolvedCtxCount === 0; },
            enumerable: true,
            configurable: true
        });
        I18nContext.prototype.getSerializedPlaceholders = function () {
            var result = new Map();
            this.placeholders.forEach(function (values, key) { return result.set(key, values.map(serializePlaceholderValue)); });
            return result;
        };
        // public API to accumulate i18n-related content
        I18nContext.prototype.appendBinding = function (binding) { this.bindings.add(binding); };
        I18nContext.prototype.appendIcu = function (name, ref) {
            util_1.updatePlaceholderMap(this._registry.icus, name, ref);
        };
        I18nContext.prototype.appendBoundText = function (node) {
            var _this = this;
            var phs = util_1.assembleBoundTextPlaceholders(node, this.bindings.size, this.id);
            phs.forEach(function (values, key) { return util_1.updatePlaceholderMap.apply(void 0, tslib_1.__spread([_this.placeholders, key], values)); });
        };
        I18nContext.prototype.appendTemplate = function (node, index) {
            // add open and close tags at the same time,
            // since we process nested templates separately
            this.appendTag(TagType.TEMPLATE, node, index, false);
            this.appendTag(TagType.TEMPLATE, node, index, true);
            this._unresolvedCtxCount++;
        };
        I18nContext.prototype.appendElement = function (node, index, closed) {
            this.appendTag(TagType.ELEMENT, node, index, closed);
        };
        I18nContext.prototype.appendProjection = function (node, index) {
            // add open and close tags at the same time,
            // since we process projected content separately
            this.appendTag(TagType.PROJECTION, node, index, false);
            this.appendTag(TagType.PROJECTION, node, index, true);
        };
        /**
         * Generates an instance of a child context based on the root one,
         * when we enter a nested template within I18n section.
         *
         * @param index Instruction index of corresponding i18nStart, which initiates this context
         * @param templateIndex Instruction index of a template which this context belongs to
         * @param meta Meta information (id, meaning, description, etc) associated with this context
         *
         * @returns I18nContext instance
         */
        I18nContext.prototype.forkChildContext = function (index, templateIndex, meta) {
            return new I18nContext(index, this.ref, this.level + 1, templateIndex, meta, this._registry);
        };
        /**
         * Reconciles child context into parent one once the end of the i18n block is reached (i18nEnd).
         *
         * @param context Child I18nContext instance to be reconciled with parent context.
         */
        I18nContext.prototype.reconcileChildContext = function (context) {
            var _this = this;
            // set the right context id for open and close
            // template tags, so we can use it as sub-block ids
            ['start', 'close'].forEach(function (op) {
                var key = context.meta[op + "Name"];
                var phs = _this.placeholders.get(key) || [];
                var tag = phs.find(findTemplateFn(_this.id, context.templateIndex));
                if (tag) {
                    tag.ctx = context.id;
                }
            });
            // reconcile placeholders
            var childPhs = context.placeholders;
            childPhs.forEach(function (values, key) {
                var phs = _this.placeholders.get(key);
                if (!phs) {
                    _this.placeholders.set(key, values);
                    return;
                }
                // try to find matching template...
                var tmplIdx = phs.findIndex(findTemplateFn(context.id, context.templateIndex));
                if (tmplIdx >= 0) {
                    // ... if found - replace it with nested template content
                    var isCloseTag = key.startsWith('CLOSE');
                    var isTemplateTag = key.endsWith('NG-TEMPLATE');
                    if (isTemplateTag) {
                        // current template's content is placed before or after
                        // parent template tag, depending on the open/close atrribute
                        phs.splice.apply(phs, tslib_1.__spread([tmplIdx + (isCloseTag ? 0 : 1), 0], values));
                    }
                    else {
                        var idx = isCloseTag ? values.length - 1 : 0;
                        values[idx].tmpl = phs[tmplIdx];
                        phs.splice.apply(phs, tslib_1.__spread([tmplIdx, 1], values));
                    }
                }
                else {
                    // ... otherwise just append content to placeholder value
                    phs.push.apply(phs, tslib_1.__spread(values));
                }
                _this.placeholders.set(key, phs);
            });
            this._unresolvedCtxCount--;
        };
        return I18nContext;
    }());
    exports.I18nContext = I18nContext;
    //
    // Helper methods
    //
    function wrap(symbol, index, contextId, closed) {
        var state = closed ? '/' : '';
        return util_1.wrapI18nPlaceholder("" + state + symbol + index, contextId);
    }
    function wrapTag(symbol, _a, closed) {
        var index = _a.index, ctx = _a.ctx, isVoid = _a.isVoid;
        return isVoid ? wrap(symbol, index, ctx) + wrap(symbol, index, ctx, true) :
            wrap(symbol, index, ctx, closed);
    }
    function findTemplateFn(ctx, templateIndex) {
        return function (token) { return typeof token === 'object' && token.type === TagType.TEMPLATE &&
            token.index === templateIndex && token.ctx === ctx; };
    }
    function serializePlaceholderValue(value) {
        var element = function (data, closed) { return wrapTag('#', data, closed); };
        var template = function (data, closed) { return wrapTag('*', data, closed); };
        var projection = function (data, closed) { return wrapTag('!', data, closed); };
        switch (value.type) {
            case TagType.ELEMENT:
                // close element tag
                if (value.closed) {
                    return element(value, true) + (value.tmpl ? template(value.tmpl, true) : '');
                }
                // open element tag that also initiates a template
                if (value.tmpl) {
                    return template(value.tmpl) + element(value) +
                        (value.isVoid ? template(value.tmpl, true) : '');
                }
                return element(value);
            case TagType.TEMPLATE:
                return template(value, value.closed);
            case TagType.PROJECTION:
                return projection(value, value.closed);
            default:
                return value;
        }
    }
});
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29udGV4dC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9yZW5kZXIzL3ZpZXcvaTE4bi9jb250ZXh0LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7Ozs7Ozs7Ozs7OztJQU1ILHFFQUF1SDtJQUV2SCxJQUFLLE9BSUo7SUFKRCxXQUFLLE9BQU87UUFDViwyQ0FBTyxDQUFBO1FBQ1AsNkNBQVEsQ0FBQTtRQUNSLGlEQUFVLENBQUE7SUFDWixDQUFDLEVBSkksT0FBTyxLQUFQLE9BQU8sUUFJWDtJQUVEOztPQUVHO0lBQ0gsU0FBUyxhQUFhO1FBQ3BCLE9BQU8sRUFBQyxXQUFXLEVBQUUsNEJBQXFCLEVBQUUsRUFBRSxJQUFJLEVBQUUsSUFBSSxHQUFHLEVBQWlCLEVBQUMsQ0FBQztJQUNoRixDQUFDO0lBRUQ7Ozs7Ozs7Ozs7Ozs7O09BY0c7SUFDSDtRQVNFLHFCQUNhLEtBQWEsRUFBVyxHQUFrQixFQUFXLEtBQWlCLEVBQ3RFLGFBQWlDLEVBQVcsSUFBbUIsRUFDaEUsUUFBYztZQUZ3QyxzQkFBQSxFQUFBLFNBQWlCO1lBQ3RFLDhCQUFBLEVBQUEsb0JBQWlDO1lBRGpDLFVBQUssR0FBTCxLQUFLLENBQVE7WUFBVyxRQUFHLEdBQUgsR0FBRyxDQUFlO1lBQVcsVUFBSyxHQUFMLEtBQUssQ0FBWTtZQUN0RSxrQkFBYSxHQUFiLGFBQWEsQ0FBb0I7WUFBVyxTQUFJLEdBQUosSUFBSSxDQUFlO1lBQ2hFLGFBQVEsR0FBUixRQUFRLENBQU07WUFWbkIsYUFBUSxHQUFHLElBQUksR0FBRyxFQUFPLENBQUM7WUFDMUIsaUJBQVksR0FBRyxJQUFJLEdBQUcsRUFBaUIsQ0FBQztZQUN4QyxjQUFTLEdBQVksS0FBSyxDQUFDO1lBRzFCLHdCQUFtQixHQUFXLENBQUMsQ0FBQztZQU10QyxJQUFJLENBQUMsU0FBUyxHQUFHLFFBQVEsSUFBSSxh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QUFJLEVBQUUsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDO2lCQUM5RTtnQkFDRCxrREFBa0Q7Z0JBQ2xELElBQUksS0FBSyxDQUFDLElBQUksRUFBRTtvQkFDZCxPQUFPLFFBQVEsQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLEdBQUcsT0FBTyxDQUFDLEtBQUssQ0FBQzt3QkFDeEMsQ0FBQyxLQUFLLENBQUMsTUFBTSxDQUFDLENBQUMsQ0FBQyxRQUFRLENBQUMsS0FBSyxDQUFDLElBQUksRUFBRSxJQUFJLENBQUMsQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLENBQUM7aUJBQ3REO2dCQUNELE9BQU8sT0FBTyxDQUFDLEtBQUssQ0FBQyxDQUFDO1lBRXhCLEtBQUssT0FBTyxDQUFDLFFBQVE7Z0JBQ25CLE9BQU8sUUFBUSxDQUFDLEtBQUssRUFBRSxLQUFLLENBQUMsTUFBTSxDQUFDLENBQUM7WUFFdkMsS0FBSyxPQUFPLENBQUMsVUFBVTtnQkFDckIsT0FBTyxVQUFVLENBQUMsS0FBSyxFQUFFLEtBQUssQ0FBQyxNQUFNLENBQUMsQ0FBQztZQUV6QztnQkFDRSxPQUFPLEtBQUssQ0FBQztTQUNoQjtJQUNILENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7QVNUfSBmcm9tICcuLi8uLi8uLi9leHByZXNzaW9uX3BhcnNlci9hc3QnO1xuaW1wb3J0ICogYXMgaTE4biBmcm9tICcuLi8uLi8uLi9pMThuL2kxOG5fYXN0JztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi4vLi4vLi4vb3V0cHV0L291dHB1dF9hc3QnO1xuXG5pbXBvcnQge2Fzc2VtYmxlQm91bmRUZXh0UGxhY2Vob2xkZXJzLCBnZXRTZXFOdW1iZXJHZW5lcmF0b3IsIHVwZGF0ZVBsYWNlaG9sZGVyTWFwLCB3cmFwSTE4blBsYWNlaG9sZGVyfSBmcm9tICcuL3V0aWwnO1xuXG5lbnVtIFRhZ1R5cGUge1xuICBFTEVNRU5ULFxuICBURU1QTEFURSxcbiAgUFJPSkVDVElPTlxufVxuXG4vKipcbiAqIEdlbmVyYXRlcyBhbiBvYmplY3QgdGhhdCBpcyB1c2VkIGFzIGEgc2hhcmVkIHN0YXRlIGJldHdlZW4gcGFyZW50IGFuZCBhbGwgY2hpbGQgY29udGV4dHMuXG4gKi9cbmZ1bmN0aW9uIHNldHVwUmVnaXN0cnkoKSB7XG4gIHJldHVybiB7Z2V0VW5pcXVlSWQ6IGdldFNlcU51bWJlckdlbmVyYXRvcigpLCBpY3VzOiBuZXcgTWFwPHN0cmluZywgYW55W10+KCl9O1xufVxuXG4vKipcbiAqIEkxOG5Db250ZXh0IGlzIGEgaGVscGVyIGNsYXNzIHdoaWNoIGtlZXBzIHRyYWNrIG9mIGFsbCBpMThuLXJlbGF0ZWQgYXNwZWN0c1xuICogKGFjY3VtdWxhdGVzIHBsYWNlaG9sZGVycywgYmluZGluZ3MsIGV0YykgYmV0d2VlbiBpMThuU3RhcnQgYW5kIGkxOG5FbmQgaW5zdHJ1Y3Rpb25zLlxuICpcbiAqIFdoZW4gd2UgZW50ZXIgYSBuZXN0ZWQgdGVtcGxhdGUsIHRoZSB0b3AtbGV2ZWwgY29udGV4dCBpcyBiZWluZyBwYXNzZWQgZG93blxuICogdG8gdGhlIG5lc3RlZCBjb21wb25lbnQsIHdoaWNoIHVzZXMgdGhpcyBjb250ZXh0IHRvIGdlbmVyYXRlIGEgY2hpbGQgaW5zdGFuY2VcbiAqIG9mIEkxOG5Db250ZXh0IGNsYXNzICh0byBoYW5kbGUgbmVzdGVkIHRlbXBsYXRlKSBhbmQgYXQgdGhlIGVuZCwgcmVjb25jaWxlcyBpdCBiYWNrXG4gKiB3aXRoIHRoZSBwYXJlbnQgY29udGV4dC5cbiAqXG4gKiBAcGFyYW0gaW5kZXggSW5zdHJ1Y3Rpb24gaW5kZXggb2YgaTE4blN0YXJ0LCB3aGljaCBpbml0aWF0ZXMgdGhpcyBjb250ZXh0XG4gKiBAcGFyYW0gcmVmIFJlZmVyZW5jZSB0byBhIHRyYW5zbGF0aW9uIGNvbnN0IHRoYXQgcmVwcmVzZW50cyB0aGUgY29udGVudCBpZiB0aHVzIGNvbnRleHRcbiAqIEBwYXJhbSBsZXZlbCBOZXN0bmcgbGV2ZWwgZGVmaW5lZCBmb3IgY2hpbGQgY29udGV4dHNcbiAqIEBwYXJhbSB0ZW1wbGF0ZUluZGV4IEluc3RydWN0aW9uIGluZGV4IG9mIGEgdGVtcGxhdGUgd2hpY2ggdGhpcyBjb250ZXh0IGJlbG9uZ3MgdG9cbiAqIEBwYXJhbSBtZXRhIE1ldGEgaW5mb3JtYXRpb24gKGlkLCBtZWFuaW5nLCBkZXNjcmlwdGlvbiwgZXRjKSBhc3NvY2lhdGVkIHdpdGggdGhpcyBjb250ZXh0XG4gKi9cbmV4cG9ydCBjbGFzcyBJMThuQ29udGV4dCB7XG4gIHB1YmxpYyByZWFkb25seSBpZDogbnVtYmVyO1xuICBwdWJsaWMgYmluZGluZ3MgPSBuZXcgU2V0PEFTVD4oKTtcbiAgcHVibGljIHBsYWNlaG9sZGVycyA9IG5ldyBNYXA8c3RyaW5nLCBhbnlbXT4oKTtcbiAgcHVibGljIGlzRW1pdHRlZDogYm9vbGVhbiA9IGZhbHNlO1xuXG4gIHByaXZhdGUgX3JlZ2lzdHJ5ICE6IGFueTtcbiAgcHJpdmF0ZSBfdW5yZXNvbHZlZEN0eENvdW50OiBudW1iZXIgPSAwO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcmVhZG9ubHkgaW5kZXg6IG51bWJlciwgcmVhZG9ubHkgcmVmOiBvLlJlYWRWYXJFeHByLCByZWFkb25seSBsZXZlbDogbnVtYmVyID0gMCxcbiAgICAgIHJlYWRvbmx5IHRlbXBsYXRlSW5kZXg6IG51bWJlcnxudWxsID0gbnVsbCwgcmVhZG9ubHkgbWV0YTogaTE4bi5JMThuTWV0YSxcbiAgICAgIHByaXZhdGUgcmVnaXN0cnk/OiBhbnkpIHtcbiAgICB0aGlzLl9yZWdpc3RyeSA9IHJlZ2lzdHJ5IHx8IHNldHVwUmVnaXN0cnkoKTtcbiAgICB0aGlzLmlkID0gdGhpcy5fcmVnaXN0cnkuZ2V0VW5pcXVlSWQoKTtcbiAgfVxuXG4gIHByaXZhdGUgYXBwZW5kVGFnKHR5cGU6IFRhZ1R5cGUsIG5vZGU6IGkxOG4uVGFnUGxhY2Vob2xkZXIsIGluZGV4OiBudW1iZXIsIGNsb3NlZD86IGJvb2xlYW4pIHtcbiAgICBpZiAobm9kZS5pc1ZvaWQgJiYgY2xvc2VkKSB7XG4gICAgICByZXR1cm47ICAvLyBpZ25vcmUgXCJjbG9zZVwiIGZvciB2b2lkIHRhZ3NcbiAgICB9XG4gICAgY29uc3QgcGggPSBub2RlLmlzVm9pZCB8fCAhY2xvc2VkID8gbm9kZS5zdGFydE5hbWUgOiBub2RlLmNsb3NlTmFtZTtcbiAgICBjb25zdCBjb250ZW50ID0ge3R5cGUsIGluZGV4LCBjdHg6IHRoaXMuaWQsIGlzVm9pZDogbm9kZS5pc1ZvaWQsIGNsb3NlZH07XG4gICAgdXBkYXRlUGxhY2Vob2xkZXJNYXAodGhpcy5wbGFjZWhvbGRlcnMsIHBoLCBjb250ZW50KTtcbiAgfVxuXG4gIGdldCBpY3VzKCkgeyByZXR1cm4gdGhpcy5fcmVnaXN0cnkuaWN1czsgfVxuICBnZXQgaXNSb290KCkgeyByZXR1cm4gdGhpcy5sZXZlbCA9PT0gMDsgfVxuICBnZXQgaXNSZXNvbHZlZCgpIHsgcmV0dXJuIHRoaXMuX3VucmVzb2x2ZWRDdHhDb3VudCA9PT0gMDsgfVxuXG4gIGdldFNlcmlhbGl6ZWRQbGFjZWhvbGRlcnMoKSB7XG4gICAgY29uc3QgcmVzdWx0ID0gbmV3IE1hcDxzdHJpbmcsIGFueVtdPigpO1xuICAgIHRoaXMucGxhY2Vob2xkZXJzLmZvckVhY2goXG4gICAgICAgICh2YWx1ZXMsIGtleSkgPT4gcmVzdWx0LnNldChrZXksIHZhbHVlcy5tYXAoc2VyaWFsaXplUGxhY2Vob2xkZXJWYWx1ZSkpKTtcbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgLy8gcHVibGljIEFQSSB0byBhY2N1bXVsYXRlIGkxOG4tcmVsYXRlZCBjb250ZW50XG4gIGFwcGVuZEJpbmRpbmcoYmluZGluZzogQVNUKSB7IHRoaXMuYmluZGluZ3MuYWRkKGJpbmRpbmcpOyB9XG4gIGFwcGVuZEljdShuYW1lOiBzdHJpbmcsIHJlZjogby5FeHByZXNzaW9uKSB7XG4gICAgdXBkYXRlUGxhY2Vob2xkZXJNYXAodGhpcy5fcmVnaXN0cnkuaWN1cywgbmFtZSwgcmVmKTtcbiAgfVxuICBhcHBlbmRCb3VuZFRleHQobm9kZTogaTE4bi5JMThuTWV0YSkge1xuICAgIGNvbnN0IHBocyA9IGFzc2VtYmxlQm91bmRUZXh0UGxhY2Vob2xkZXJzKG5vZGUsIHRoaXMuYmluZGluZ3Muc2l6ZSwgdGhpcy5pZCk7XG4gICAgcGhzLmZvckVhY2goKHZhbHVlcywga2V5KSA9PiB1cGRhdGVQbGFjZWhvbGRlck1hcCh0aGlzLnBsYWNlaG9sZGVycywga2V5LCAuLi52YWx1ZXMpKTtcbiAgfVxuICBhcHBlbmRUZW1wbGF0ZShub2RlOiBpMThuLkkxOG5NZXRhLCBpbmRleDogbnVtYmVyKSB7XG4gICAgLy8gYWRkIG9wZW4gYW5kIGNsb3NlIHRhZ3MgYXQgdGhlIHNhbWUgdGltZSxcbiAgICAvLyBzaW5jZSB3ZSBwcm9jZXNzIG5lc3RlZCB0ZW1wbGF0ZXMgc2VwYXJhdGVseVxuICAgIHRoaXMuYXBwZW5kVGFnKFRhZ1R5cGUuVEVNUExBVEUsIG5vZGUgYXMgaTE4bi5UYWdQbGFjZWhvbGRlciwgaW5kZXgsIGZhbHNlKTtcbiAgICB0aGlzLmFwcGVuZFRhZyhUYWdUeXBlLlRFTVBMQVRFLCBub2RlIGFzIGkxOG4uVGFnUGxhY2Vob2xkZXIsIGluZGV4LCB0cnVlKTtcbiAgICB0aGlzLl91bnJlc29sdmVkQ3R4Q291bnQrKztcbiAgfVxuICBhcHBlbmRFbGVtZW50KG5vZGU6IGkxOG4uSTE4bk1ldGEsIGluZGV4OiBudW1iZXIsIGNsb3NlZD86IGJvb2xlYW4pIHtcbiAgICB0aGlzLmFwcGVuZFRhZyhUYWdUeXBlLkVMRU1FTlQsIG5vZGUgYXMgaTE4bi5UYWdQbGFjZWhvbGRlciwgaW5kZXgsIGNsb3NlZCk7XG4gIH1cbiAgYXBwZW5kUHJvamVjdGlvbihub2RlOiBpMThuLkkxOG5NZXRhLCBpbmRleDogbnVtYmVyKSB7XG4gICAgLy8gYWRkIG9wZW4gYW5kIGNsb3NlIHRhZ3MgYXQgdGhlIHNhbWUgdGltZSxcbiAgICAvLyBzaW5jZSB3ZSBwcm9jZXNzIHByb2plY3RlZCBjb250ZW50IHNlcGFyYXRlbHlcbiAgICB0aGlzLmFwcGVuZFRhZyhUYWdUeXBlLlBST0pFQ1RJT04sIG5vZGUgYXMgaTE4bi5UYWdQbGFjZWhvbGRlciwgaW5kZXgsIGZhbHNlKTtcbiAgICB0aGlzLmFwcGVuZFRhZyhUYWdUeXBlLlBST0pFQ1RJT04sIG5vZGUgYXMgaTE4bi5UYWdQbGFjZWhvbGRlciwgaW5kZXgsIHRydWUpO1xuICB9XG5cbiAgLyoqXG4gICAqIEdlbmVyYXRlcyBhbiBpbnN0YW5jZSBvZiBhIGNoaWxkIGNvbnRleHQgYmFzZWQgb24gdGhlIHJvb3Qgb25lLFxuICAgKiB3aGVuIHdlIGVudGVyIGEgbmVzdGVkIHRlbXBsYXRlIHdpdGhpbiBJMThuIHNlY3Rpb24uXG4gICAqXG4gICAqIEBwYXJhbSBpbmRleCBJbnN0cnVjdGlvbiBpbmRleCBvZiBjb3JyZXNwb25kaW5nIGkxOG5TdGFydCwgd2hpY2ggaW5pdGlhdGVzIHRoaXMgY29udGV4dFxuICAgKiBAcGFyYW0gdGVtcGxhdGVJbmRleCBJbnN0cnVjdGlvbiBpbmRleCBvZiBhIHRlbXBsYXRlIHdoaWNoIHRoaXMgY29udGV4dCBiZWxvbmdzIHRvXG4gICAqIEBwYXJhbSBtZXRhIE1ldGEgaW5mb3JtYXRpb24gKGlkLCBtZWFuaW5nLCBkZXNjcmlwdGlvbiwgZXRjKSBhc3NvY2lhdGVkIHdpdGggdGhpcyBjb250ZXh0XG4gICAqXG4gICAqIEByZXR1cm5zIEkxOG5Db250ZXh0IGluc3RhbmNlXG4gICAqL1xuICBmb3JrQ2hpbGRDb250ZXh0KGluZGV4OiBudW1iZXIsIHRlbXBsYXRlSW5kZXg6IG51bWJlciwgbWV0YTogaTE4bi5JMThuTWV0YSkge1xuICAgIHJldHVybiBuZXcgSTE4bkNvbnRleHQoaW5kZXgsIHRoaXMucmVmLCB0aGlzLmxldmVsICsgMSwgdGVtcGxhdGVJbmRleCwgbWV0YSwgdGhpcy5fcmVnaXN0cnkpO1xuICB9XG5cbiAgLyoqXG4gICAqIFJlY29uY2lsZXMgY2hpbGQgY29udGV4dCBpbnRvIHBhcmVudCBvbmUgb25jZSB0aGUgZW5kIG9mIHRoZSBpMThuIGJsb2NrIGlzIHJlYWNoZWQgKGkxOG5FbmQpLlxuICAgKlxuICAgKiBAcGFyYW0gY29udGV4dCBDaGlsZCBJMThuQ29udGV4dCBpbnN0YW5jZSB0byBiZSByZWNvbmNpbGVkIHdpdGggcGFyZW50IGNvbnRleHQuXG4gICAqL1xuICByZWNvbmNpbGVDaGlsZENvbnRleHQoY29udGV4dDogSTE4bkNvbnRleHQpIHtcbiAgICAvLyBzZXQgdGhlIHJpZ2h0IGNvbnRleHQgaWQgZm9yIG9wZW4gYW5kIGNsb3NlXG4gICAgLy8gdGVtcGxhdGUgdGFncywgc28gd2UgY2FuIHVzZSBpdCBhcyBzdWItYmxvY2sgaWRzXG4gICAgWydzdGFydCcsICdjbG9zZSddLmZvckVhY2goKG9wOiBzdHJpbmcpID0+IHtcbiAgICAgIGNvbnN0IGtleSA9IChjb250ZXh0Lm1ldGEgYXMgYW55KVtgJHtvcH1OYW1lYF07XG4gICAgICBjb25zdCBwaHMgPSB0aGlzLnBsYWNlaG9sZGVycy5nZXQoa2V5KSB8fCBbXTtcbiAgICAgIGNvbnN0IHRhZyA9IHBocy5maW5kKGZpbmRUZW1wbGF0ZUZuKHRoaXMuaWQsIGNvbnRleHQudGVtcGxhdGVJbmRleCkpO1xuICAgICAgaWYgKHRhZykge1xuICAgICAgICB0YWcuY3R4ID0gY29udGV4dC5pZDtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIC8vIHJlY29uY2lsZSBwbGFjZWhvbGRlcnNcbiAgICBjb25zdCBjaGlsZFBocyA9IGNvbnRleHQucGxhY2Vob2xkZXJzO1xuICAgIGNoaWxkUGhzLmZvckVhY2goKHZhbHVlczogYW55W10sIGtleTogc3RyaW5nKSA9PiB7XG4gICAgICBjb25zdCBwaHMgPSB0aGlzLnBsYWNlaG9sZGVycy5nZXQoa2V5KTtcbiAgICAgIGlmICghcGhzKSB7XG4gICAgICAgIHRoaXMucGxhY2Vob2xkZXJzLnNldChrZXksIHZhbHVlcyk7XG4gICAgICAgIHJldHVybjtcbiAgICAgIH1cbiAgICAgIC8vIHRyeSB0byBmaW5kIG1hdGNoaW5nIHRlbXBsYXRlLi4uXG4gICAgICBjb25zdCB0bXBsSWR4ID0gcGhzLmZpbmRJbmRleChmaW5kVGVtcGxhdGVGbihjb250ZXh0LmlkLCBjb250ZXh0LnRlbXBsYXRlSW5kZXgpKTtcbiAgICAgIGlmICh0bXBsSWR4ID49IDApIHtcbiAgICAgICAgLy8gLi4uIGlmIGZvdW5kIC0gcmVwbGFjZSBpdCB3aXRoIG5lc3RlZCB0ZW1wbGF0ZSBjb250ZW50XG4gICAgICAgIGNvbnN0IGlzQ2xvc2VUYWcgPSBrZXkuc3RhcnRzV2l0aCgnQ0xPU0UnKTtcbiAgICAgICAgY29uc3QgaXNUZW1wbGF0ZVRhZyA9IGtleS5lbmRzV2l0aCgnTkctVEVNUExBVEUnKTtcbiAgICAgICAgaWYgKGlzVGVtcGxhdGVUYWcpIHtcbiAgICAgICAgICAvLyBjdXJyZW50IHRlbXBsYXRlJ3MgY29udGVudCBpcyBwbGFjZWQgYmVmb3JlIG9yIGFmdGVyXG4gICAgICAgICAgLy8gcGFyZW50IHRlbXBsYXRlIHRhZywgZGVwZW5kaW5nIG9uIHRoZSBvcGVuL2Nsb3NlIGF0cnJpYnV0ZVxuICAgICAgICAgIHBocy5zcGxpY2UodG1wbElkeCArIChpc0Nsb3NlVGFnID8gMCA6IDEpLCAwLCAuLi52YWx1ZXMpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIGNvbnN0IGlkeCA9IGlzQ2xvc2VUYWcgPyB2YWx1ZXMubGVuZ3RoIC0gMSA6IDA7XG4gICAgICAgICAgdmFsdWVzW2lkeF0udG1wbCA9IHBoc1t0bXBsSWR4XTtcbiAgICAgICAgICBwaHMuc3BsaWNlKHRtcGxJZHgsIDEsIC4uLnZhbHVlcyk7XG4gICAgICAgIH1cbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIC8vIC4uLiBvdGhlcndpc2UganVzdCBhcHBlbmQgY29udGVudCB0byBwbGFjZWhvbGRlciB2YWx1ZVxuICAgICAgICBwaHMucHVzaCguLi52YWx1ZXMpO1xuICAgICAgfVxuICAgICAgdGhpcy5wbGFjZWhvbGRlcnMuc2V0KGtleSwgcGhzKTtcbiAgICB9KTtcbiAgICB0aGlzLl91bnJlc29sdmVkQ3R4Q291bnQtLTtcbiAgfVxufVxuXG4vL1xuLy8gSGVscGVyIG1ldGhvZHNcbi8vXG5cbmZ1bmN0aW9uIHdyYXAoc3ltYm9sOiBzdHJpbmcsIGluZGV4OiBudW1iZXIsIGNvbnRleHRJZDogbnVtYmVyLCBjbG9zZWQ/OiBib29sZWFuKTogc3RyaW5nIHtcbiAgY29uc3Qgc3RhdGUgPSBjbG9zZWQgPyAnLycgOiAnJztcbiAgcmV0dXJuIHdyYXBJMThuUGxhY2Vob2xkZXIoYCR7c3RhdGV9JHtzeW1ib2x9JHtpbmRleH1gLCBjb250ZXh0SWQpO1xufVxuXG5mdW5jdGlvbiB3cmFwVGFnKHN5bWJvbDogc3RyaW5nLCB7aW5kZXgsIGN0eCwgaXNWb2lkfTogYW55LCBjbG9zZWQ/OiBib29sZWFuKTogc3RyaW5nIHtcbiAgcmV0dXJuIGlzVm9pZCA/IHdyYXAoc3ltYm9sLCBpbmRleCwgY3R4KSArIHdyYXAoc3ltYm9sLCBpbmRleCwgY3R4LCB0cnVlKSA6XG4gICAgICAgICAgICAgICAgICB3cmFwKHN5bWJvbCwgaW5kZXgsIGN0eCwgY2xvc2VkKTtcbn1cblxuZnVuY3Rpb24gZmluZFRlbXBsYXRlRm4oY3R4OiBudW1iZXIsIHRlbXBsYXRlSW5kZXg6IG51bWJlciB8IG51bGwpIHtcbiAgcmV0dXJuICh0b2tlbjogYW55KSA9PiB0eXBlb2YgdG9rZW4gPT09ICdvYmplY3QnICYmIHRva2VuLnR5cGUgPT09IFRhZ1R5cGUuVEVNUExBVEUgJiZcbiAgICAgIHRva2VuLmluZGV4ID09PSB0ZW1wbGF0ZUluZGV4ICYmIHRva2VuLmN0eCA9PT0gY3R4O1xufVxuXG5mdW5jdGlvbiBzZXJpYWxpemVQbGFjZWhvbGRlclZhbHVlKHZhbHVlOiBhbnkpOiBzdHJpbmcge1xuICBjb25zdCBlbGVtZW50ID0gKGRhdGE6IGFueSwgY2xvc2VkPzogYm9vbGVhbikgPT4gd3JhcFRhZygnIycsIGRhdGEsIGNsb3NlZCk7XG4gIGNvbnN0IHRlbXBsYXRlID0gKGRhdGE6IGFueSwgY2xvc2VkPzogYm9vbGVhbikgPT4gd3JhcFRhZygnKicsIGRhdGEsIGNsb3NlZCk7XG4gIGNvbnN0IHByb2plY3Rpb24gPSAoZGF0YTogYW55LCBjbG9zZWQ/OiBib29sZWFuKSA9PiB3cmFwVGFnKCchJywgZGF0YSwgY2xvc2VkKTtcblxuICBzd2l0Y2ggKHZhbHVlLnR5cGUpIHtcbiAgICBjYXNlIFRhZ1R5cGUuRUxFTUVOVDpcbiAgICAgIC8vIGNsb3NlIGVsZW1lbnQgdGFnXG4gICAgICBpZiAodmFsdWUuY2xvc2VkKSB7XG4gICAgICAgIHJldHVybiBlbGVtZW50KHZhbHVlLCB0cnVlKSArICh2YWx1ZS50bXBsID8gdGVtcGxhdGUodmFsdWUudG1wbCwgdHJ1ZSkgOiAnJyk7XG4gICAgICB9XG4gICAgICAvLyBvcGVuIGVsZW1lbnQgdGFnIHRoYXQgYWxzbyBpbml0aWF0ZXMgYSB0ZW1wbGF0ZVxuICAgICAgaWYgKHZhbHVlLnRtcGwpIHtcbiAgICAgICAgcmV0dXJuIHRlbXBsYXRlKHZhbHVlLnRtcGwpICsgZWxlbWVudCh2YWx1ZSkgK1xuICAgICAgICAgICAgKHZhbHVlLmlzVm9pZCA/IHRlbXBsYXRlKHZhbHVlLnRtcGwsIHRydWUpIDogJycpO1xuICAgICAgfVxuICAgICAgcmV0dXJuIGVsZW1lbnQodmFsdWUpO1xuXG4gICAgY2FzZSBUYWdUeXBlLlRFTVBMQVRFOlxuICAgICAgcmV0dXJuIHRlbXBsYXRlKHZhbHVlLCB2YWx1ZS5jbG9zZWQpO1xuXG4gICAgY2FzZSBUYWdUeXBlLlBST0pFQ1RJT046XG4gICAgICByZXR1cm4gcHJvamVjdGlvbih2YWx1ZSwgdmFsdWUuY2xvc2VkKTtcblxuICAgIGRlZmF1bHQ6XG4gICAgICByZXR1cm4gdmFsdWU7XG4gIH1cbn1cbiJdfQ==