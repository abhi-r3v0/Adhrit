/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __read, __spread } from "tslib";
import { assembleBoundTextPlaceholders, getSeqNumberGenerator, updatePlaceholderMap, wrapI18nPlaceholder } from './util';
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
    return { getUniqueId: getSeqNumberGenerator(), icus: new Map() };
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
        updatePlaceholderMap(this.placeholders, ph, content);
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
        updatePlaceholderMap(this._registry.icus, name, ref);
    };
    I18nContext.prototype.appendBoundText = function (node) {
        var _this = this;
        var phs = assembleBoundTextPlaceholders(node, this.bindings.size, this.id);
        phs.forEach(function (values, key) { return updatePlaceholderMap.apply(void 0, __spread([_this.placeholders, key], values)); });
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
                    phs.splice.apply(phs, __spread([tmplIdx + (isCloseTag ? 0 : 1), 0], values));
                }
                else {
                    var idx = isCloseTag ? values.length - 1 : 0;
                    values[idx].tmpl = phs[tmplIdx];
                    phs.splice.apply(phs, __spread([tmplIdx, 1], values));
                }
            }
            else {
                // ... otherwise just append content to placeholder value
                phs.push.apply(phs, __spread(values));
            }
            _this.placeholders.set(key, phs);
        });
        this._unresolvedCtxCount--;
    };
    return I18nContext;
}());
export { I18nContext };
//
// Helper methods
//
function wrap(symbol, index, contextId, closed) {
    var state = closed ? '/' : '';
    return wrapI18nPlaceholder("" + state + symbol + index, contextId);
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29udGV4dC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9yZW5kZXIzL3ZpZXcvaTE4bi9jb250ZXh0LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRzs7QUFNSCxPQUFPLEVBQUMsNkJBQTZCLEVBQUUscUJBQXFCLEVBQUUsb0JBQW9CLEVBQUUsbUJBQW1CLEVBQUMsTUFBTSxRQUFRLENBQUM7QUFFdkgsSUFBSyxPQUlKO0FBSkQsV0FBSyxPQUFPO0lBQ1YsMkNBQU8sQ0FBQTtJQUNQLDZDQUFRLENBQUE7SUFDUixpREFBVSxDQUFBO0FBQ1osQ0FBQyxFQUpJLE9BQU8sS0FBUCxPQUFPLFFBSVg7QUFFRDs7R0FFRztBQUNILFNBQVMsYUFBYTtJQUNwQixPQUFPLEVBQUMsV0FBVyxFQUFFLHFCQUFxQixFQUFFLEVBQUUsSUFBSSxFQUFFLElBQUksR0FBRyxFQUFpQixFQUFDLENBQUM7QUFDaEYsQ0FBQztBQUVEOzs7Ozs7Ozs7Ozs7OztHQWNHO0FBQ0g7SUFTRSxxQkFDYSxLQUFhLEVBQVcsR0FBa0IsRUFBVyxLQUFpQixFQUN0RSxhQUFpQyxFQUFXLElBQW1CLEVBQ2hFLFFBQWM7UUFGd0Msc0JBQUEsRUFBQSxTQUFpQjtRQUN0RSw4QkFBQSxFQUFBLG9CQUFpQztRQURqQyxVQUFLLEdBQUwsS0FBSyxDQUFRO1FBQVcsUUFBRyxHQUFILEdBQUcsQ0FBZTtRQUFXLFVBQUssR0FBTCxLQUFLLENBQVk7UUFDdEUsa0JBQWEsR0FBYixhQUFhLENBQW9CO1FBQVcsU0FBSSxHQUFKLElBQUksQ0FBZTtRQUNoRSxhQUFRLEdBQVIsUUFBUSxDQUFNO1FBVm5CLGFBQVEsR0FBRyxJQUFJLEdBQUcsRUFBTyxDQUFDO1FBQzFCLGlCQUFZLEdBQUcsSUFBSSxHQUFHLEVBQWlCLENBQUM7UUFDeEMsY0FBUyxHQUFZLEtBQUssQ0FBQztR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QyxDQUFDLFFBQVEsQ0FBQyxLQUFLLENBQUMsSUFBSSxFQUFFLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQzthQUM5RTtZQUNELGtEQUFrRDtZQUNsRCxJQUFJLEtBQUssQ0FBQyxJQUFJLEVBQUU7Z0JBQ2QsT0FBTyxRQUFRLENBQUMsS0FBSyxDQUFDLElBQUksQ0FBQyxHQUFHLE9BQU8sQ0FBQyxLQUFLLENBQUM7b0JBQ3hDLENBQUMsS0FBSyxDQUFDLE1BQU0sQ0FBQyxDQUFDLENBQUMsUUFBUSxDQUFDLEtBQUssQ0FBQyxJQUFJLEVBQUUsSUFBSSxDQUFDLENBQUMsQ0FBQyxDQUFDLEVBQUUsQ0FBQyxDQUFDO2FBQ3REO1lBQ0QsT0FBTyxPQUFPLENBQUMsS0FBSyxDQUFDLENBQUM7UUFFeEIsS0FBSyxPQUFPLENBQUMsUUFBUTtZQUNuQixPQUFPLFFBQVEsQ0FBQyxLQUFLLEVBQUUsS0FBSyxDQUFDLE1BQU0sQ0FBQyxDQUFDO1FBRXZDLEtBQUssT0FBTyxDQUFDLFVBQVU7WUFDckIsT0FBTyxVQUFVLENBQUMsS0FBSyxFQUFFLEtBQUssQ0FBQyxNQUFNLENBQUMsQ0FBQztRQUV6QztZQUNFLE9BQU8sS0FBSyxDQUFDO0tBQ2hCO0FBQ0gsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtBU1R9IGZyb20gJy4uLy4uLy4uL2V4cHJlc3Npb25fcGFyc2VyL2FzdCc7XG5pbXBvcnQgKiBhcyBpMThuIGZyb20gJy4uLy4uLy4uL2kxOG4vaTE4bl9hc3QnO1xuaW1wb3J0ICogYXMgbyBmcm9tICcuLi8uLi8uLi9vdXRwdXQvb3V0cHV0X2FzdCc7XG5cbmltcG9ydCB7YXNzZW1ibGVCb3VuZFRleHRQbGFjZWhvbGRlcnMsIGdldFNlcU51bWJlckdlbmVyYXRvciwgdXBkYXRlUGxhY2Vob2xkZXJNYXAsIHdyYXBJMThuUGxhY2Vob2xkZXJ9IGZyb20gJy4vdXRpbCc7XG5cbmVudW0gVGFnVHlwZSB7XG4gIEVMRU1FTlQsXG4gIFRFTVBMQVRFLFxuICBQUk9KRUNUSU9OXG59XG5cbi8qKlxuICogR2VuZXJhdGVzIGFuIG9iamVjdCB0aGF0IGlzIHVzZWQgYXMgYSBzaGFyZWQgc3RhdGUgYmV0d2VlbiBwYXJlbnQgYW5kIGFsbCBjaGlsZCBjb250ZXh0cy5cbiAqL1xuZnVuY3Rpb24gc2V0dXBSZWdpc3RyeSgpIHtcbiAgcmV0dXJuIHtnZXRVbmlxdWVJZDogZ2V0U2VxTnVtYmVyR2VuZXJhdG9yKCksIGljdXM6IG5ldyBNYXA8c3RyaW5nLCBhbnlbXT4oKX07XG59XG5cbi8qKlxuICogSTE4bkNvbnRleHQgaXMgYSBoZWxwZXIgY2xhc3Mgd2hpY2gga2VlcHMgdHJhY2sgb2YgYWxsIGkxOG4tcmVsYXRlZCBhc3BlY3RzXG4gKiAoYWNjdW11bGF0ZXMgcGxhY2Vob2xkZXJzLCBiaW5kaW5ncywgZXRjKSBiZXR3ZWVuIGkxOG5TdGFydCBhbmQgaTE4bkVuZCBpbnN0cnVjdGlvbnMuXG4gKlxuICogV2hlbiB3ZSBlbnRlciBhIG5lc3RlZCB0ZW1wbGF0ZSwgdGhlIHRvcC1sZXZlbCBjb250ZXh0IGlzIGJlaW5nIHBhc3NlZCBkb3duXG4gKiB0byB0aGUgbmVzdGVkIGNvbXBvbmVudCwgd2hpY2ggdXNlcyB0aGlzIGNvbnRleHQgdG8gZ2VuZXJhdGUgYSBjaGlsZCBpbnN0YW5jZVxuICogb2YgSTE4bkNvbnRleHQgY2xhc3MgKHRvIGhhbmRsZSBuZXN0ZWQgdGVtcGxhdGUpIGFuZCBhdCB0aGUgZW5kLCByZWNvbmNpbGVzIGl0IGJhY2tcbiAqIHdpdGggdGhlIHBhcmVudCBjb250ZXh0LlxuICpcbiAqIEBwYXJhbSBpbmRleCBJbnN0cnVjdGlvbiBpbmRleCBvZiBpMThuU3RhcnQsIHdoaWNoIGluaXRpYXRlcyB0aGlzIGNvbnRleHRcbiAqIEBwYXJhbSByZWYgUmVmZXJlbmNlIHRvIGEgdHJhbnNsYXRpb24gY29uc3QgdGhhdCByZXByZXNlbnRzIHRoZSBjb250ZW50IGlmIHRodXMgY29udGV4dFxuICogQHBhcmFtIGxldmVsIE5lc3RuZyBsZXZlbCBkZWZpbmVkIGZvciBjaGlsZCBjb250ZXh0c1xuICogQHBhcmFtIHRlbXBsYXRlSW5kZXggSW5zdHJ1Y3Rpb24gaW5kZXggb2YgYSB0ZW1wbGF0ZSB3aGljaCB0aGlzIGNvbnRleHQgYmVsb25ncyB0b1xuICogQHBhcmFtIG1ldGEgTWV0YSBpbmZvcm1hdGlvbiAoaWQsIG1lYW5pbmcsIGRlc2NyaXB0aW9uLCBldGMpIGFzc29jaWF0ZWQgd2l0aCB0aGlzIGNvbnRleHRcbiAqL1xuZXhwb3J0IGNsYXNzIEkxOG5Db250ZXh0IHtcbiAgcHVibGljIHJlYWRvbmx5IGlkOiBudW1iZXI7XG4gIHB1YmxpYyBiaW5kaW5ncyA9IG5ldyBTZXQ8QVNUPigpO1xuICBwdWJsaWMgcGxhY2Vob2xkZXJzID0gbmV3IE1hcDxzdHJpbmcsIGFueVtdPigpO1xuICBwdWJsaWMgaXNFbWl0dGVkOiBib29sZWFuID0gZmFsc2U7XG5cbiAgcHJpdmF0ZSBfcmVnaXN0cnkgITogYW55O1xuICBwcml2YXRlIF91bnJlc29sdmVkQ3R4Q291bnQ6IG51bWJlciA9IDA7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICByZWFkb25seSBpbmRleDogbnVtYmVyLCByZWFkb25seSByZWY6IG8uUmVhZFZhckV4cHIsIHJlYWRvbmx5IGxldmVsOiBudW1iZXIgPSAwLFxuICAgICAgcmVhZG9ubHkgdGVtcGxhdGVJbmRleDogbnVtYmVyfG51bGwgPSBudWxsLCByZWFkb25seSBtZXRhOiBpMThuLkkxOG5NZXRhLFxuICAgICAgcHJpdmF0ZSByZWdpc3RyeT86IGFueSkge1xuICAgIHRoaXMuX3JlZ2lzdHJ5ID0gcmVnaXN0cnkgfHwgc2V0dXBSZWdpc3RyeSgpO1xuICAgIHRoaXMuaWQgPSB0aGlzLl9yZWdpc3RyeS5nZXRVbmlxdWVJZCgpO1xuICB9XG5cbiAgcHJpdmF0ZSBhcHBlbmRUYWcodHlwZTogVGFnVHlwZSwgbm9kZTogaTE4bi5UYWdQbGFjZWhvbGRlciwgaW5kZXg6IG51bWJlciwgY2xvc2VkPzogYm9vbGVhbikge1xuICAgIGlmIChub2RlLmlzVm9pZCAmJiBjbG9zZWQpIHtcbiAgICAgIHJldHVybjsgIC8vIGlnbm9yZSBcImNsb3NlXCIgZm9yIHZvaWQgdGFnc1xuICAgIH1cbiAgICBjb25zdCBwaCA9IG5vZGUuaXNWb2lkIHx8ICFjbG9zZWQgPyBub2RlLnN0YXJ0TmFtZSA6IG5vZGUuY2xvc2VOYW1lO1xuICAgIGNvbnN0IGNvbnRlbnQgPSB7dHlwZSwgaW5kZXgsIGN0eDogdGhpcy5pZCwgaXNWb2lkOiBub2RlLmlzVm9pZCwgY2xvc2VkfTtcbiAgICB1cGRhdGVQbGFjZWhvbGRlck1hcCh0aGlzLnBsYWNlaG9sZGVycywgcGgsIGNvbnRlbnQpO1xuICB9XG5cbiAgZ2V0IGljdXMoKSB7IHJldHVybiB0aGlzLl9yZWdpc3RyeS5pY3VzOyB9XG4gIGdldCBpc1Jvb3QoKSB7IHJldHVybiB0aGlzLmxldmVsID09PSAwOyB9XG4gIGdldCBpc1Jlc29sdmVkKCkgeyByZXR1cm4gdGhpcy5fdW5yZXNvbHZlZEN0eENvdW50ID09PSAwOyB9XG5cbiAgZ2V0U2VyaWFsaXplZFBsYWNlaG9sZGVycygpIHtcbiAgICBjb25zdCByZXN1bHQgPSBuZXcgTWFwPHN0cmluZywgYW55W10+KCk7XG4gICAgdGhpcy5wbGFjZWhvbGRlcnMuZm9yRWFjaChcbiAgICAgICAgKHZhbHVlcywga2V5KSA9PiByZXN1bHQuc2V0KGtleSwgdmFsdWVzLm1hcChzZXJpYWxpemVQbGFjZWhvbGRlclZhbHVlKSkpO1xuICAgIHJldHVybiByZXN1bHQ7XG4gIH1cblxuICAvLyBwdWJsaWMgQVBJIHRvIGFjY3VtdWxhdGUgaTE4bi1yZWxhdGVkIGNvbnRlbnRcbiAgYXBwZW5kQmluZGluZyhiaW5kaW5nOiBBU1QpIHsgdGhpcy5iaW5kaW5ncy5hZGQoYmluZGluZyk7IH1cbiAgYXBwZW5kSWN1KG5hbWU6IHN0cmluZywgcmVmOiBvLkV4cHJlc3Npb24pIHtcbiAgICB1cGRhdGVQbGFjZWhvbGRlck1hcCh0aGlzLl9yZWdpc3RyeS5pY3VzLCBuYW1lLCByZWYpO1xuICB9XG4gIGFwcGVuZEJvdW5kVGV4dChub2RlOiBpMThuLkkxOG5NZXRhKSB7XG4gICAgY29uc3QgcGhzID0gYXNzZW1ibGVCb3VuZFRleHRQbGFjZWhvbGRlcnMobm9kZSwgdGhpcy5iaW5kaW5ncy5zaXplLCB0aGlzLmlkKTtcbiAgICBwaHMuZm9yRWFjaCgodmFsdWVzLCBrZXkpID0+IHVwZGF0ZVBsYWNlaG9sZGVyTWFwKHRoaXMucGxhY2Vob2xkZXJzLCBrZXksIC4uLnZhbHVlcykpO1xuICB9XG4gIGFwcGVuZFRlbXBsYXRlKG5vZGU6IGkxOG4uSTE4bk1ldGEsIGluZGV4OiBudW1iZXIpIHtcbiAgICAvLyBhZGQgb3BlbiBhbmQgY2xvc2UgdGFncyBhdCB0aGUgc2FtZSB0aW1lLFxuICAgIC8vIHNpbmNlIHdlIHByb2Nlc3MgbmVzdGVkIHRlbXBsYXRlcyBzZXBhcmF0ZWx5XG4gICAgdGhpcy5hcHBlbmRUYWcoVGFnVHlwZS5URU1QTEFURSwgbm9kZSBhcyBpMThuLlRhZ1BsYWNlaG9sZGVyLCBpbmRleCwgZmFsc2UpO1xuICAgIHRoaXMuYXBwZW5kVGFnKFRhZ1R5cGUuVEVNUExBVEUsIG5vZGUgYXMgaTE4bi5UYWdQbGFjZWhvbGRlciwgaW5kZXgsIHRydWUpO1xuICAgIHRoaXMuX3VucmVzb2x2ZWRDdHhDb3VudCsrO1xuICB9XG4gIGFwcGVuZEVsZW1lbnQobm9kZTogaTE4bi5JMThuTWV0YSwgaW5kZXg6IG51bWJlciwgY2xvc2VkPzogYm9vbGVhbikge1xuICAgIHRoaXMuYXBwZW5kVGFnKFRhZ1R5cGUuRUxFTUVOVCwgbm9kZSBhcyBpMThuLlRhZ1BsYWNlaG9sZGVyLCBpbmRleCwgY2xvc2VkKTtcbiAgfVxuICBhcHBlbmRQcm9qZWN0aW9uKG5vZGU6IGkxOG4uSTE4bk1ldGEsIGluZGV4OiBudW1iZXIpIHtcbiAgICAvLyBhZGQgb3BlbiBhbmQgY2xvc2UgdGFncyBhdCB0aGUgc2FtZSB0aW1lLFxuICAgIC8vIHNpbmNlIHdlIHByb2Nlc3MgcHJvamVjdGVkIGNvbnRlbnQgc2VwYXJhdGVseVxuICAgIHRoaXMuYXBwZW5kVGFnKFRhZ1R5cGUuUFJPSkVDVElPTiwgbm9kZSBhcyBpMThuLlRhZ1BsYWNlaG9sZGVyLCBpbmRleCwgZmFsc2UpO1xuICAgIHRoaXMuYXBwZW5kVGFnKFRhZ1R5cGUuUFJPSkVDVElPTiwgbm9kZSBhcyBpMThuLlRhZ1BsYWNlaG9sZGVyLCBpbmRleCwgdHJ1ZSk7XG4gIH1cblxuICAvKipcbiAgICogR2VuZXJhdGVzIGFuIGluc3RhbmNlIG9mIGEgY2hpbGQgY29udGV4dCBiYXNlZCBvbiB0aGUgcm9vdCBvbmUsXG4gICAqIHdoZW4gd2UgZW50ZXIgYSBuZXN0ZWQgdGVtcGxhdGUgd2l0aGluIEkxOG4gc2VjdGlvbi5cbiAgICpcbiAgICogQHBhcmFtIGluZGV4IEluc3RydWN0aW9uIGluZGV4IG9mIGNvcnJlc3BvbmRpbmcgaTE4blN0YXJ0LCB3aGljaCBpbml0aWF0ZXMgdGhpcyBjb250ZXh0XG4gICAqIEBwYXJhbSB0ZW1wbGF0ZUluZGV4IEluc3RydWN0aW9uIGluZGV4IG9mIGEgdGVtcGxhdGUgd2hpY2ggdGhpcyBjb250ZXh0IGJlbG9uZ3MgdG9cbiAgICogQHBhcmFtIG1ldGEgTWV0YSBpbmZvcm1hdGlvbiAoaWQsIG1lYW5pbmcsIGRlc2NyaXB0aW9uLCBldGMpIGFzc29jaWF0ZWQgd2l0aCB0aGlzIGNvbnRleHRcbiAgICpcbiAgICogQHJldHVybnMgSTE4bkNvbnRleHQgaW5zdGFuY2VcbiAgICovXG4gIGZvcmtDaGlsZENvbnRleHQoaW5kZXg6IG51bWJlciwgdGVtcGxhdGVJbmRleDogbnVtYmVyLCBtZXRhOiBpMThuLkkxOG5NZXRhKSB7XG4gICAgcmV0dXJuIG5ldyBJMThuQ29udGV4dChpbmRleCwgdGhpcy5yZWYsIHRoaXMubGV2ZWwgKyAxLCB0ZW1wbGF0ZUluZGV4LCBtZXRhLCB0aGlzLl9yZWdpc3RyeSk7XG4gIH1cblxuICAvKipcbiAgICogUmVjb25jaWxlcyBjaGlsZCBjb250ZXh0IGludG8gcGFyZW50IG9uZSBvbmNlIHRoZSBlbmQgb2YgdGhlIGkxOG4gYmxvY2sgaXMgcmVhY2hlZCAoaTE4bkVuZCkuXG4gICAqXG4gICAqIEBwYXJhbSBjb250ZXh0IENoaWxkIEkxOG5Db250ZXh0IGluc3RhbmNlIHRvIGJlIHJlY29uY2lsZWQgd2l0aCBwYXJlbnQgY29udGV4dC5cbiAgICovXG4gIHJlY29uY2lsZUNoaWxkQ29udGV4dChjb250ZXh0OiBJMThuQ29udGV4dCkge1xuICAgIC8vIHNldCB0aGUgcmlnaHQgY29udGV4dCBpZCBmb3Igb3BlbiBhbmQgY2xvc2VcbiAgICAvLyB0ZW1wbGF0ZSB0YWdzLCBzbyB3ZSBjYW4gdXNlIGl0IGFzIHN1Yi1ibG9jayBpZHNcbiAgICBbJ3N0YXJ0JywgJ2Nsb3NlJ10uZm9yRWFjaCgob3A6IHN0cmluZykgPT4ge1xuICAgICAgY29uc3Qga2V5ID0gKGNvbnRleHQubWV0YSBhcyBhbnkpW2Ake29wfU5hbWVgXTtcbiAgICAgIGNvbnN0IHBocyA9IHRoaXMucGxhY2Vob2xkZXJzLmdldChrZXkpIHx8IFtdO1xuICAgICAgY29uc3QgdGFnID0gcGhzLmZpbmQoZmluZFRlbXBsYXRlRm4odGhpcy5pZCwgY29udGV4dC50ZW1wbGF0ZUluZGV4KSk7XG4gICAgICBpZiAodGFnKSB7XG4gICAgICAgIHRhZy5jdHggPSBjb250ZXh0LmlkO1xuICAgICAgfVxuICAgIH0pO1xuXG4gICAgLy8gcmVjb25jaWxlIHBsYWNlaG9sZGVyc1xuICAgIGNvbnN0IGNoaWxkUGhzID0gY29udGV4dC5wbGFjZWhvbGRlcnM7XG4gICAgY2hpbGRQaHMuZm9yRWFjaCgodmFsdWVzOiBhbnlbXSwga2V5OiBzdHJpbmcpID0+IHtcbiAgICAgIGNvbnN0IHBocyA9IHRoaXMucGxhY2Vob2xkZXJzLmdldChrZXkpO1xuICAgICAgaWYgKCFwaHMpIHtcbiAgICAgICAgdGhpcy5wbGFjZWhvbGRlcnMuc2V0KGtleSwgdmFsdWVzKTtcbiAgICAgICAgcmV0dXJuO1xuICAgICAgfVxuICAgICAgLy8gdHJ5IHRvIGZpbmQgbWF0Y2hpbmcgdGVtcGxhdGUuLi5cbiAgICAgIGNvbnN0IHRtcGxJZHggPSBwaHMuZmluZEluZGV4KGZpbmRUZW1wbGF0ZUZuKGNvbnRleHQuaWQsIGNvbnRleHQudGVtcGxhdGVJbmRleCkpO1xuICAgICAgaWYgKHRtcGxJZHggPj0gMCkge1xuICAgICAgICAvLyAuLi4gaWYgZm91bmQgLSByZXBsYWNlIGl0IHdpdGggbmVzdGVkIHRlbXBsYXRlIGNvbnRlbnRcbiAgICAgICAgY29uc3QgaXNDbG9zZVRhZyA9IGtleS5zdGFydHNXaXRoKCdDTE9TRScpO1xuICAgICAgICBjb25zdCBpc1RlbXBsYXRlVGFnID0ga2V5LmVuZHNXaXRoKCdORy1URU1QTEFURScpO1xuICAgICAgICBpZiAoaXNUZW1wbGF0ZVRhZykge1xuICAgICAgICAgIC8vIGN1cnJlbnQgdGVtcGxhdGUncyBjb250ZW50IGlzIHBsYWNlZCBiZWZvcmUgb3IgYWZ0ZXJcbiAgICAgICAgICAvLyBwYXJlbnQgdGVtcGxhdGUgdGFnLCBkZXBlbmRpbmcgb24gdGhlIG9wZW4vY2xvc2UgYXRycmlidXRlXG4gICAgICAgICAgcGhzLnNwbGljZSh0bXBsSWR4ICsgKGlzQ2xvc2VUYWcgPyAwIDogMSksIDAsIC4uLnZhbHVlcyk7XG4gICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgY29uc3QgaWR4ID0gaXNDbG9zZVRhZyA/IHZhbHVlcy5sZW5ndGggLSAxIDogMDtcbiAgICAgICAgICB2YWx1ZXNbaWR4XS50bXBsID0gcGhzW3RtcGxJZHhdO1xuICAgICAgICAgIHBocy5zcGxpY2UodG1wbElkeCwgMSwgLi4udmFsdWVzKTtcbiAgICAgICAgfVxuICAgICAgfSBlbHNlIHtcbiAgICAgICAgLy8gLi4uIG90aGVyd2lzZSBqdXN0IGFwcGVuZCBjb250ZW50IHRvIHBsYWNlaG9sZGVyIHZhbHVlXG4gICAgICAgIHBocy5wdXNoKC4uLnZhbHVlcyk7XG4gICAgICB9XG4gICAgICB0aGlzLnBsYWNlaG9sZGVycy5zZXQoa2V5LCBwaHMpO1xuICAgIH0pO1xuICAgIHRoaXMuX3VucmVzb2x2ZWRDdHhDb3VudC0tO1xuICB9XG59XG5cbi8vXG4vLyBIZWxwZXIgbWV0aG9kc1xuLy9cblxuZnVuY3Rpb24gd3JhcChzeW1ib2w6IHN0cmluZywgaW5kZXg6IG51bWJlciwgY29udGV4dElkOiBudW1iZXIsIGNsb3NlZD86IGJvb2xlYW4pOiBzdHJpbmcge1xuICBjb25zdCBzdGF0ZSA9IGNsb3NlZCA/ICcvJyA6ICcnO1xuICByZXR1cm4gd3JhcEkxOG5QbGFjZWhvbGRlcihgJHtzdGF0ZX0ke3N5bWJvbH0ke2luZGV4fWAsIGNvbnRleHRJZCk7XG59XG5cbmZ1bmN0aW9uIHdyYXBUYWcoc3ltYm9sOiBzdHJpbmcsIHtpbmRleCwgY3R4LCBpc1ZvaWR9OiBhbnksIGNsb3NlZD86IGJvb2xlYW4pOiBzdHJpbmcge1xuICByZXR1cm4gaXNWb2lkID8gd3JhcChzeW1ib2wsIGluZGV4LCBjdHgpICsgd3JhcChzeW1ib2wsIGluZGV4LCBjdHgsIHRydWUpIDpcbiAgICAgICAgICAgICAgICAgIHdyYXAoc3ltYm9sLCBpbmRleCwgY3R4LCBjbG9zZWQpO1xufVxuXG5mdW5jdGlvbiBmaW5kVGVtcGxhdGVGbihjdHg6IG51bWJlciwgdGVtcGxhdGVJbmRleDogbnVtYmVyIHwgbnVsbCkge1xuICByZXR1cm4gKHRva2VuOiBhbnkpID0+IHR5cGVvZiB0b2tlbiA9PT0gJ29iamVjdCcgJiYgdG9rZW4udHlwZSA9PT0gVGFnVHlwZS5URU1QTEFURSAmJlxuICAgICAgdG9rZW4uaW5kZXggPT09IHRlbXBsYXRlSW5kZXggJiYgdG9rZW4uY3R4ID09PSBjdHg7XG59XG5cbmZ1bmN0aW9uIHNlcmlhbGl6ZVBsYWNlaG9sZGVyVmFsdWUodmFsdWU6IGFueSk6IHN0cmluZyB7XG4gIGNvbnN0IGVsZW1lbnQgPSAoZGF0YTogYW55LCBjbG9zZWQ/OiBib29sZWFuKSA9PiB3cmFwVGFnKCcjJywgZGF0YSwgY2xvc2VkKTtcbiAgY29uc3QgdGVtcGxhdGUgPSAoZGF0YTogYW55LCBjbG9zZWQ/OiBib29sZWFuKSA9PiB3cmFwVGFnKCcqJywgZGF0YSwgY2xvc2VkKTtcbiAgY29uc3QgcHJvamVjdGlvbiA9IChkYXRhOiBhbnksIGNsb3NlZD86IGJvb2xlYW4pID0+IHdyYXBUYWcoJyEnLCBkYXRhLCBjbG9zZWQpO1xuXG4gIHN3aXRjaCAodmFsdWUudHlwZSkge1xuICAgIGNhc2UgVGFnVHlwZS5FTEVNRU5UOlxuICAgICAgLy8gY2xvc2UgZWxlbWVudCB0YWdcbiAgICAgIGlmICh2YWx1ZS5jbG9zZWQpIHtcbiAgICAgICAgcmV0dXJuIGVsZW1lbnQodmFsdWUsIHRydWUpICsgKHZhbHVlLnRtcGwgPyB0ZW1wbGF0ZSh2YWx1ZS50bXBsLCB0cnVlKSA6ICcnKTtcbiAgICAgIH1cbiAgICAgIC8vIG9wZW4gZWxlbWVudCB0YWcgdGhhdCBhbHNvIGluaXRpYXRlcyBhIHRlbXBsYXRlXG4gICAgICBpZiAodmFsdWUudG1wbCkge1xuICAgICAgICByZXR1cm4gdGVtcGxhdGUodmFsdWUudG1wbCkgKyBlbGVtZW50KHZhbHVlKSArXG4gICAgICAgICAgICAodmFsdWUuaXNWb2lkID8gdGVtcGxhdGUodmFsdWUudG1wbCwgdHJ1ZSkgOiAnJyk7XG4gICAgICB9XG4gICAgICByZXR1cm4gZWxlbWVudCh2YWx1ZSk7XG5cbiAgICBjYXNlIFRhZ1R5cGUuVEVNUExBVEU6XG4gICAgICByZXR1cm4gdGVtcGxhdGUodmFsdWUsIHZhbHVlLmNsb3NlZCk7XG5cbiAgICBjYXNlIFRhZ1R5cGUuUFJPSkVDVElPTjpcbiAgICAgIHJldHVybiBwcm9qZWN0aW9uKHZhbHVlLCB2YWx1ZS5jbG9zZWQpO1xuXG4gICAgZGVmYXVsdDpcbiAgICAgIHJldHVybiB2YWx1ZTtcbiAgfVxufVxuIl19