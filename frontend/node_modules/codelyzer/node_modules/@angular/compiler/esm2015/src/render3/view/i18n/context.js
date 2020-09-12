/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
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
export class I18nContext {
    constructor(index, ref, level = 0, templateIndex = null, meta, registry) {
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
    appendTag(type, node, index, closed) {
        if (node.isVoid && closed) {
            return; // ignore "close" for void tags
        }
        const ph = node.isVoid || !closed ? node.startName : node.closeName;
        const content = { type, index, ctx: this.id, isVoid: node.isVoid, closed };
        updatePlaceholderMap(this.placeholders, ph, content);
    }
    get icus() { return this._registry.icus; }
    get isRoot() { return this.level === 0; }
    get isResolved() { return this._unresolvedCtxCount === 0; }
    getSerializedPlaceholders() {
        const result = new Map();
        this.placeholders.forEach((values, key) => result.set(key, values.map(serializePlaceholderValue)));
        return result;
    }
    // public API to accumulate i18n-related content
    appendBinding(binding) { this.bindings.add(binding); }
    appendIcu(name, ref) {
        updatePlaceholderMap(this._registry.icus, name, ref);
    }
    appendBoundText(node) {
        const phs = assembleBoundTextPlaceholders(node, this.bindings.size, this.id);
        phs.forEach((values, key) => updatePlaceholderMap(this.placeholders, key, ...values));
    }
    appendTemplate(node, index) {
        // add open and close tags at the same time,
        // since we process nested templates separately
        this.appendTag(TagType.TEMPLATE, node, index, false);
        this.appendTag(TagType.TEMPLATE, node, index, true);
        this._unresolvedCtxCount++;
    }
    appendElement(node, index, closed) {
        this.appendTag(TagType.ELEMENT, node, index, closed);
    }
    appendProjection(node, index) {
        // add open and close tags at the same time,
        // since we process projected content separately
        this.appendTag(TagType.PROJECTION, node, index, false);
        this.appendTag(TagType.PROJECTION, node, index, true);
    }
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
    forkChildContext(index, templateIndex, meta) {
        return new I18nContext(index, this.ref, this.level + 1, templateIndex, meta, this._registry);
    }
    /**
     * Reconciles child context into parent one once the end of the i18n block is reached (i18nEnd).
     *
     * @param context Child I18nContext instance to be reconciled with parent context.
     */
    reconcileChildContext(context) {
        // set the right context id for open and close
        // template tags, so we can use it as sub-block ids
        ['start', 'close'].forEach((op) => {
            const key = context.meta[`${op}Name`];
            const phs = this.placeholders.get(key) || [];
            const tag = phs.find(findTemplateFn(this.id, context.templateIndex));
            if (tag) {
                tag.ctx = context.id;
            }
        });
        // reconcile placeholders
        const childPhs = context.placeholders;
        childPhs.forEach((values, key) => {
            const phs = this.placeholders.get(key);
            if (!phs) {
                this.placeholders.set(key, values);
                return;
            }
            // try to find matching template...
            const tmplIdx = phs.findIndex(findTemplateFn(context.id, context.templateIndex));
            if (tmplIdx >= 0) {
                // ... if found - replace it with nested template content
                const isCloseTag = key.startsWith('CLOSE');
                const isTemplateTag = key.endsWith('NG-TEMPLATE');
                if (isTemplateTag) {
                    // current template's content is placed before or after
                    // parent template tag, depending on the open/close atrribute
                    phs.splice(tmplIdx + (isCloseTag ? 0 : 1), 0, ...values);
                }
                else {
                    const idx = isCloseTag ? values.length - 1 : 0;
                    values[idx].tmpl = phs[tmplIdx];
                    phs.splice(tmplIdx, 1, ...values);
                }
            }
            else {
                // ... otherwise just append content to placeholder value
                phs.push(...values);
            }
            this.placeholders.set(key, phs);
        });
        this._unresolvedCtxCount--;
    }
}
//
// Helper methods
//
function wrap(symbol, index, contextId, closed) {
    const state = closed ? '/' : '';
    return wrapI18nPlaceholder(`${state}${symbol}${index}`, contextId);
}
function wrapTag(symbol, { index, ctx, isVoid }, closed) {
    return isVoid ? wrap(symbol, index, ctx) + wrap(symbol, index, ctx, true) :
        wrap(symbol, index, ctx, closed);
}
function findTemplateFn(ctx, templateIndex) {
    return (token) => typeof token === 'object' && token.type === TagType.TEMPLATE &&
        token.index === templateIndex && token.ctx === ctx;
}
function serializePlaceholderValue(value) {
    const element = (data, closed) => wrapTag('#', data, closed);
    const template = (data, closed) => wrapTag('*', data, closed);
    const projection = (data, closed) => wrapTag('!', data, closed);
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiY29udGV4dC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvbXBpbGVyL3NyYy9yZW5kZXIzL3ZpZXcvaTE4bi9jb250ZXh0LnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQU1ILE9BQU8sRUFBQyw2QkFBNkIsRUFBRSxxQkFBcUIsRUFBRSxvQkFBb0IsRUFBRSxtQkFBbUIsRUFBQyxNQUFNLFFBQVEsQ0FBQztBQUV2SCxJQUFLLE9BSUo7QUFKRCxXQUFLLE9BQU87SUFDViwyQ0FBTyxDQUFBO0lBQ1AsNkNBQVEsQ0FBQTtJQUNSLGlEQUFVLENBQUE7QUFDWixDQUFDLEVBSkksT0FBTyxLQUFQLE9BQU8sUUFJWDtBQUVEOztHQUVHO0FBQ0gsU0FBUyxhQUFhO0lBQ3BCLE9BQU8sRUFBQyxXQUFXLEVBQUUscUJBQXFCLEVBQUUsRUFBRSxJQUFJLEVBQUUsSUFBSSxHQUFHLEVBQWlCLEVBQUMsQ0FBQztBQUNoRixDQUFDO0FBRUQ7Ozs7Ozs7Ozs7Ozs7O0dBY0c7QUFDSCxNQUFNLE9BQU8sV0FBVztJQVN0QixZQUNhLEtBQWEsRUFBVyxHQUFrQixFQUFXLFFBQWdCLENBQUMsRUFDdEUsZ0JBQTZCLElBQUksRUFBVyxJQUFtQixFQUNoRSxRQUFjO1FBRmIsVUFBSyxHQUFMLEtBQUssQ0FBUTtRQUFXLFFBQUcsR0FBSCxHQUFHLENBQWU7UUFBVyxVQUFLLEdBQUwsS0FBSyxDQUFZO1FBQ3RFLGtCQUFhLEdBQWIsYUFBYSxDQUFvQjtRQUFXLFNBQUksR0FBSixJQUFJLENBQWU7UUFDaEUsYUFBUSxHQUFSLFFBQVEsQ0FBTTtRQVZuQixhQUFRLEdBQUcsSUFBSSxHQUFHLEVBQU8sQ0FBQztRQUMxQixpQkFBWSxHQUFHLElBQUksR0FBRyxFQUFpQixDQUFDO1FBQ3hDLGNBQVMsR0FBWSxLQUFLLENBQUM7UUFHMUIsd0JBQW1CLEdBQVcsQ0FBQyxDQUFDO1FBTXRD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QUFNLENBQUMsQ0FBQyxDQUFDLFFBQVEsQ0FBQyxLQUFLLENBQUMsSUFBSSxFQUFFLElBQUksQ0FBQyxDQUFDLENBQUMsQ0FBQyxFQUFFLENBQUMsQ0FBQzthQUN0RDtZQUNELE9BQU8sT0FBTyxDQUFDLEtBQUssQ0FBQyxDQUFDO1FBRXhCLEtBQUssT0FBTyxDQUFDLFFBQVE7WUFDbkIsT0FBTyxRQUFRLENBQUMsS0FBSyxFQUFFLEtBQUssQ0FBQyxNQUFNLENBQUMsQ0FBQztRQUV2QyxLQUFLLE9BQU8sQ0FBQyxVQUFVO1lBQ3JCLE9BQU8sVUFBVSxDQUFDLEtBQUssRUFBRSxLQUFLLENBQUMsTUFBTSxDQUFDLENBQUM7UUFFekM7WUFDRSxPQUFPLEtBQUssQ0FBQztLQUNoQjtBQUNILENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7QVNUfSBmcm9tICcuLi8uLi8uLi9leHByZXNzaW9uX3BhcnNlci9hc3QnO1xuaW1wb3J0ICogYXMgaTE4biBmcm9tICcuLi8uLi8uLi9pMThuL2kxOG5fYXN0JztcbmltcG9ydCAqIGFzIG8gZnJvbSAnLi4vLi4vLi4vb3V0cHV0L291dHB1dF9hc3QnO1xuXG5pbXBvcnQge2Fzc2VtYmxlQm91bmRUZXh0UGxhY2Vob2xkZXJzLCBnZXRTZXFOdW1iZXJHZW5lcmF0b3IsIHVwZGF0ZVBsYWNlaG9sZGVyTWFwLCB3cmFwSTE4blBsYWNlaG9sZGVyfSBmcm9tICcuL3V0aWwnO1xuXG5lbnVtIFRhZ1R5cGUge1xuICBFTEVNRU5ULFxuICBURU1QTEFURSxcbiAgUFJPSkVDVElPTlxufVxuXG4vKipcbiAqIEdlbmVyYXRlcyBhbiBvYmplY3QgdGhhdCBpcyB1c2VkIGFzIGEgc2hhcmVkIHN0YXRlIGJldHdlZW4gcGFyZW50IGFuZCBhbGwgY2hpbGQgY29udGV4dHMuXG4gKi9cbmZ1bmN0aW9uIHNldHVwUmVnaXN0cnkoKSB7XG4gIHJldHVybiB7Z2V0VW5pcXVlSWQ6IGdldFNlcU51bWJlckdlbmVyYXRvcigpLCBpY3VzOiBuZXcgTWFwPHN0cmluZywgYW55W10+KCl9O1xufVxuXG4vKipcbiAqIEkxOG5Db250ZXh0IGlzIGEgaGVscGVyIGNsYXNzIHdoaWNoIGtlZXBzIHRyYWNrIG9mIGFsbCBpMThuLXJlbGF0ZWQgYXNwZWN0c1xuICogKGFjY3VtdWxhdGVzIHBsYWNlaG9sZGVycywgYmluZGluZ3MsIGV0YykgYmV0d2VlbiBpMThuU3RhcnQgYW5kIGkxOG5FbmQgaW5zdHJ1Y3Rpb25zLlxuICpcbiAqIFdoZW4gd2UgZW50ZXIgYSBuZXN0ZWQgdGVtcGxhdGUsIHRoZSB0b3AtbGV2ZWwgY29udGV4dCBpcyBiZWluZyBwYXNzZWQgZG93blxuICogdG8gdGhlIG5lc3RlZCBjb21wb25lbnQsIHdoaWNoIHVzZXMgdGhpcyBjb250ZXh0IHRvIGdlbmVyYXRlIGEgY2hpbGQgaW5zdGFuY2VcbiAqIG9mIEkxOG5Db250ZXh0IGNsYXNzICh0byBoYW5kbGUgbmVzdGVkIHRlbXBsYXRlKSBhbmQgYXQgdGhlIGVuZCwgcmVjb25jaWxlcyBpdCBiYWNrXG4gKiB3aXRoIHRoZSBwYXJlbnQgY29udGV4dC5cbiAqXG4gKiBAcGFyYW0gaW5kZXggSW5zdHJ1Y3Rpb24gaW5kZXggb2YgaTE4blN0YXJ0LCB3aGljaCBpbml0aWF0ZXMgdGhpcyBjb250ZXh0XG4gKiBAcGFyYW0gcmVmIFJlZmVyZW5jZSB0byBhIHRyYW5zbGF0aW9uIGNvbnN0IHRoYXQgcmVwcmVzZW50cyB0aGUgY29udGVudCBpZiB0aHVzIGNvbnRleHRcbiAqIEBwYXJhbSBsZXZlbCBOZXN0bmcgbGV2ZWwgZGVmaW5lZCBmb3IgY2hpbGQgY29udGV4dHNcbiAqIEBwYXJhbSB0ZW1wbGF0ZUluZGV4IEluc3RydWN0aW9uIGluZGV4IG9mIGEgdGVtcGxhdGUgd2hpY2ggdGhpcyBjb250ZXh0IGJlbG9uZ3MgdG9cbiAqIEBwYXJhbSBtZXRhIE1ldGEgaW5mb3JtYXRpb24gKGlkLCBtZWFuaW5nLCBkZXNjcmlwdGlvbiwgZXRjKSBhc3NvY2lhdGVkIHdpdGggdGhpcyBjb250ZXh0XG4gKi9cbmV4cG9ydCBjbGFzcyBJMThuQ29udGV4dCB7XG4gIHB1YmxpYyByZWFkb25seSBpZDogbnVtYmVyO1xuICBwdWJsaWMgYmluZGluZ3MgPSBuZXcgU2V0PEFTVD4oKTtcbiAgcHVibGljIHBsYWNlaG9sZGVycyA9IG5ldyBNYXA8c3RyaW5nLCBhbnlbXT4oKTtcbiAgcHVibGljIGlzRW1pdHRlZDogYm9vbGVhbiA9IGZhbHNlO1xuXG4gIHByaXZhdGUgX3JlZ2lzdHJ5ICE6IGFueTtcbiAgcHJpdmF0ZSBfdW5yZXNvbHZlZEN0eENvdW50OiBudW1iZXIgPSAwO1xuXG4gIGNvbnN0cnVjdG9yKFxuICAgICAgcmVhZG9ubHkgaW5kZXg6IG51bWJlciwgcmVhZG9ubHkgcmVmOiBvLlJlYWRWYXJFeHByLCByZWFkb25seSBsZXZlbDogbnVtYmVyID0gMCxcbiAgICAgIHJlYWRvbmx5IHRlbXBsYXRlSW5kZXg6IG51bWJlcnxudWxsID0gbnVsbCwgcmVhZG9ubHkgbWV0YTogaTE4bi5JMThuTWV0YSxcbiAgICAgIHByaXZhdGUgcmVnaXN0cnk/OiBhbnkpIHtcbiAgICB0aGlzLl9yZWdpc3RyeSA9IHJlZ2lzdHJ5IHx8IHNldHVwUmVnaXN0cnkoKTtcbiAgICB0aGlzLmlkID0gdGhpcy5fcmVnaXN0cnkuZ2V0VW5pcXVlSWQoKTtcbiAgfVxuXG4gIHByaXZhdGUgYXBwZW5kVGFnKHR5cGU6IFRhZ1R5cGUsIG5vZGU6IGkxOG4uVGFnUGxhY2Vob2xkZXIsIGluZGV4OiBudW1iZXIsIGNsb3NlZD86IGJvb2xlYW4pIHtcbiAgICBpZiAobm9kZS5pc1ZvaWQgJiYgY2xvc2VkKSB7XG4gICAgICByZXR1cm47ICAvLyBpZ25vcmUgXCJjbG9zZVwiIGZvciB2b2lkIHRhZ3NcbiAgICB9XG4gICAgY29uc3QgcGggPSBub2RlLmlzVm9pZCB8fCAhY2xvc2VkID8gbm9kZS5zdGFydE5hbWUgOiBub2RlLmNsb3NlTmFtZTtcbiAgICBjb25zdCBjb250ZW50ID0ge3R5cGUsIGluZGV4LCBjdHg6IHRoaXMuaWQsIGlzVm9pZDogbm9kZS5pc1ZvaWQsIGNsb3NlZH07XG4gICAgdXBkYXRlUGxhY2Vob2xkZXJNYXAodGhpcy5wbGFjZWhvbGRlcnMsIHBoLCBjb250ZW50KTtcbiAgfVxuXG4gIGdldCBpY3VzKCkgeyByZXR1cm4gdGhpcy5fcmVnaXN0cnkuaWN1czsgfVxuICBnZXQgaXNSb290KCkgeyByZXR1cm4gdGhpcy5sZXZlbCA9PT0gMDsgfVxuICBnZXQgaXNSZXNvbHZlZCgpIHsgcmV0dXJuIHRoaXMuX3VucmVzb2x2ZWRDdHhDb3VudCA9PT0gMDsgfVxuXG4gIGdldFNlcmlhbGl6ZWRQbGFjZWhvbGRlcnMoKSB7XG4gICAgY29uc3QgcmVzdWx0ID0gbmV3IE1hcDxzdHJpbmcsIGFueVtdPigpO1xuICAgIHRoaXMucGxhY2Vob2xkZXJzLmZvckVhY2goXG4gICAgICAgICh2YWx1ZXMsIGtleSkgPT4gcmVzdWx0LnNldChrZXksIHZhbHVlcy5tYXAoc2VyaWFsaXplUGxhY2Vob2xkZXJWYWx1ZSkpKTtcbiAgICByZXR1cm4gcmVzdWx0O1xuICB9XG5cbiAgLy8gcHVibGljIEFQSSB0byBhY2N1bXVsYXRlIGkxOG4tcmVsYXRlZCBjb250ZW50XG4gIGFwcGVuZEJpbmRpbmcoYmluZGluZzogQVNUKSB7IHRoaXMuYmluZGluZ3MuYWRkKGJpbmRpbmcpOyB9XG4gIGFwcGVuZEljdShuYW1lOiBzdHJpbmcsIHJlZjogby5FeHByZXNzaW9uKSB7XG4gICAgdXBkYXRlUGxhY2Vob2xkZXJNYXAodGhpcy5fcmVnaXN0cnkuaWN1cywgbmFtZSwgcmVmKTtcbiAgfVxuICBhcHBlbmRCb3VuZFRleHQobm9kZTogaTE4bi5JMThuTWV0YSkge1xuICAgIGNvbnN0IHBocyA9IGFzc2VtYmxlQm91bmRUZXh0UGxhY2Vob2xkZXJzKG5vZGUsIHRoaXMuYmluZGluZ3Muc2l6ZSwgdGhpcy5pZCk7XG4gICAgcGhzLmZvckVhY2goKHZhbHVlcywga2V5KSA9PiB1cGRhdGVQbGFjZWhvbGRlck1hcCh0aGlzLnBsYWNlaG9sZGVycywga2V5LCAuLi52YWx1ZXMpKTtcbiAgfVxuICBhcHBlbmRUZW1wbGF0ZShub2RlOiBpMThuLkkxOG5NZXRhLCBpbmRleDogbnVtYmVyKSB7XG4gICAgLy8gYWRkIG9wZW4gYW5kIGNsb3NlIHRhZ3MgYXQgdGhlIHNhbWUgdGltZSxcbiAgICAvLyBzaW5jZSB3ZSBwcm9jZXNzIG5lc3RlZCB0ZW1wbGF0ZXMgc2VwYXJhdGVseVxuICAgIHRoaXMuYXBwZW5kVGFnKFRhZ1R5cGUuVEVNUExBVEUsIG5vZGUgYXMgaTE4bi5UYWdQbGFjZWhvbGRlciwgaW5kZXgsIGZhbHNlKTtcbiAgICB0aGlzLmFwcGVuZFRhZyhUYWdUeXBlLlRFTVBMQVRFLCBub2RlIGFzIGkxOG4uVGFnUGxhY2Vob2xkZXIsIGluZGV4LCB0cnVlKTtcbiAgICB0aGlzLl91bnJlc29sdmVkQ3R4Q291bnQrKztcbiAgfVxuICBhcHBlbmRFbGVtZW50KG5vZGU6IGkxOG4uSTE4bk1ldGEsIGluZGV4OiBudW1iZXIsIGNsb3NlZD86IGJvb2xlYW4pIHtcbiAgICB0aGlzLmFwcGVuZFRhZyhUYWdUeXBlLkVMRU1FTlQsIG5vZGUgYXMgaTE4bi5UYWdQbGFjZWhvbGRlciwgaW5kZXgsIGNsb3NlZCk7XG4gIH1cbiAgYXBwZW5kUHJvamVjdGlvbihub2RlOiBpMThuLkkxOG5NZXRhLCBpbmRleDogbnVtYmVyKSB7XG4gICAgLy8gYWRkIG9wZW4gYW5kIGNsb3NlIHRhZ3MgYXQgdGhlIHNhbWUgdGltZSxcbiAgICAvLyBzaW5jZSB3ZSBwcm9jZXNzIHByb2plY3RlZCBjb250ZW50IHNlcGFyYXRlbHlcbiAgICB0aGlzLmFwcGVuZFRhZyhUYWdUeXBlLlBST0pFQ1RJT04sIG5vZGUgYXMgaTE4bi5UYWdQbGFjZWhvbGRlciwgaW5kZXgsIGZhbHNlKTtcbiAgICB0aGlzLmFwcGVuZFRhZyhUYWdUeXBlLlBST0pFQ1RJT04sIG5vZGUgYXMgaTE4bi5UYWdQbGFjZWhvbGRlciwgaW5kZXgsIHRydWUpO1xuICB9XG5cbiAgLyoqXG4gICAqIEdlbmVyYXRlcyBhbiBpbnN0YW5jZSBvZiBhIGNoaWxkIGNvbnRleHQgYmFzZWQgb24gdGhlIHJvb3Qgb25lLFxuICAgKiB3aGVuIHdlIGVudGVyIGEgbmVzdGVkIHRlbXBsYXRlIHdpdGhpbiBJMThuIHNlY3Rpb24uXG4gICAqXG4gICAqIEBwYXJhbSBpbmRleCBJbnN0cnVjdGlvbiBpbmRleCBvZiBjb3JyZXNwb25kaW5nIGkxOG5TdGFydCwgd2hpY2ggaW5pdGlhdGVzIHRoaXMgY29udGV4dFxuICAgKiBAcGFyYW0gdGVtcGxhdGVJbmRleCBJbnN0cnVjdGlvbiBpbmRleCBvZiBhIHRlbXBsYXRlIHdoaWNoIHRoaXMgY29udGV4dCBiZWxvbmdzIHRvXG4gICAqIEBwYXJhbSBtZXRhIE1ldGEgaW5mb3JtYXRpb24gKGlkLCBtZWFuaW5nLCBkZXNjcmlwdGlvbiwgZXRjKSBhc3NvY2lhdGVkIHdpdGggdGhpcyBjb250ZXh0XG4gICAqXG4gICAqIEByZXR1cm5zIEkxOG5Db250ZXh0IGluc3RhbmNlXG4gICAqL1xuICBmb3JrQ2hpbGRDb250ZXh0KGluZGV4OiBudW1iZXIsIHRlbXBsYXRlSW5kZXg6IG51bWJlciwgbWV0YTogaTE4bi5JMThuTWV0YSkge1xuICAgIHJldHVybiBuZXcgSTE4bkNvbnRleHQoaW5kZXgsIHRoaXMucmVmLCB0aGlzLmxldmVsICsgMSwgdGVtcGxhdGVJbmRleCwgbWV0YSwgdGhpcy5fcmVnaXN0cnkpO1xuICB9XG5cbiAgLyoqXG4gICAqIFJlY29uY2lsZXMgY2hpbGQgY29udGV4dCBpbnRvIHBhcmVudCBvbmUgb25jZSB0aGUgZW5kIG9mIHRoZSBpMThuIGJsb2NrIGlzIHJlYWNoZWQgKGkxOG5FbmQpLlxuICAgKlxuICAgKiBAcGFyYW0gY29udGV4dCBDaGlsZCBJMThuQ29udGV4dCBpbnN0YW5jZSB0byBiZSByZWNvbmNpbGVkIHdpdGggcGFyZW50IGNvbnRleHQuXG4gICAqL1xuICByZWNvbmNpbGVDaGlsZENvbnRleHQoY29udGV4dDogSTE4bkNvbnRleHQpIHtcbiAgICAvLyBzZXQgdGhlIHJpZ2h0IGNvbnRleHQgaWQgZm9yIG9wZW4gYW5kIGNsb3NlXG4gICAgLy8gdGVtcGxhdGUgdGFncywgc28gd2UgY2FuIHVzZSBpdCBhcyBzdWItYmxvY2sgaWRzXG4gICAgWydzdGFydCcsICdjbG9zZSddLmZvckVhY2goKG9wOiBzdHJpbmcpID0+IHtcbiAgICAgIGNvbnN0IGtleSA9IChjb250ZXh0Lm1ldGEgYXMgYW55KVtgJHtvcH1OYW1lYF07XG4gICAgICBjb25zdCBwaHMgPSB0aGlzLnBsYWNlaG9sZGVycy5nZXQoa2V5KSB8fCBbXTtcbiAgICAgIGNvbnN0IHRhZyA9IHBocy5maW5kKGZpbmRUZW1wbGF0ZUZuKHRoaXMuaWQsIGNvbnRleHQudGVtcGxhdGVJbmRleCkpO1xuICAgICAgaWYgKHRhZykge1xuICAgICAgICB0YWcuY3R4ID0gY29udGV4dC5pZDtcbiAgICAgIH1cbiAgICB9KTtcblxuICAgIC8vIHJlY29uY2lsZSBwbGFjZWhvbGRlcnNcbiAgICBjb25zdCBjaGlsZFBocyA9IGNvbnRleHQucGxhY2Vob2xkZXJzO1xuICAgIGNoaWxkUGhzLmZvckVhY2goKHZhbHVlczogYW55W10sIGtleTogc3RyaW5nKSA9PiB7XG4gICAgICBjb25zdCBwaHMgPSB0aGlzLnBsYWNlaG9sZGVycy5nZXQoa2V5KTtcbiAgICAgIGlmICghcGhzKSB7XG4gICAgICAgIHRoaXMucGxhY2Vob2xkZXJzLnNldChrZXksIHZhbHVlcyk7XG4gICAgICAgIHJldHVybjtcbiAgICAgIH1cbiAgICAgIC8vIHRyeSB0byBmaW5kIG1hdGNoaW5nIHRlbXBsYXRlLi4uXG4gICAgICBjb25zdCB0bXBsSWR4ID0gcGhzLmZpbmRJbmRleChmaW5kVGVtcGxhdGVGbihjb250ZXh0LmlkLCBjb250ZXh0LnRlbXBsYXRlSW5kZXgpKTtcbiAgICAgIGlmICh0bXBsSWR4ID49IDApIHtcbiAgICAgICAgLy8gLi4uIGlmIGZvdW5kIC0gcmVwbGFjZSBpdCB3aXRoIG5lc3RlZCB0ZW1wbGF0ZSBjb250ZW50XG4gICAgICAgIGNvbnN0IGlzQ2xvc2VUYWcgPSBrZXkuc3RhcnRzV2l0aCgnQ0xPU0UnKTtcbiAgICAgICAgY29uc3QgaXNUZW1wbGF0ZVRhZyA9IGtleS5lbmRzV2l0aCgnTkctVEVNUExBVEUnKTtcbiAgICAgICAgaWYgKGlzVGVtcGxhdGVUYWcpIHtcbiAgICAgICAgICAvLyBjdXJyZW50IHRlbXBsYXRlJ3MgY29udGVudCBpcyBwbGFjZWQgYmVmb3JlIG9yIGFmdGVyXG4gICAgICAgICAgLy8gcGFyZW50IHRlbXBsYXRlIHRhZywgZGVwZW5kaW5nIG9uIHRoZSBvcGVuL2Nsb3NlIGF0cnJpYnV0ZVxuICAgICAgICAgIHBocy5zcGxpY2UodG1wbElkeCArIChpc0Nsb3NlVGFnID8gMCA6IDEpLCAwLCAuLi52YWx1ZXMpO1xuICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgIGNvbnN0IGlkeCA9IGlzQ2xvc2VUYWcgPyB2YWx1ZXMubGVuZ3RoIC0gMSA6IDA7XG4gICAgICAgICAgdmFsdWVzW2lkeF0udG1wbCA9IHBoc1t0bXBsSWR4XTtcbiAgICAgICAgICBwaHMuc3BsaWNlKHRtcGxJZHgsIDEsIC4uLnZhbHVlcyk7XG4gICAgICAgIH1cbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIC8vIC4uLiBvdGhlcndpc2UganVzdCBhcHBlbmQgY29udGVudCB0byBwbGFjZWhvbGRlciB2YWx1ZVxuICAgICAgICBwaHMucHVzaCguLi52YWx1ZXMpO1xuICAgICAgfVxuICAgICAgdGhpcy5wbGFjZWhvbGRlcnMuc2V0KGtleSwgcGhzKTtcbiAgICB9KTtcbiAgICB0aGlzLl91bnJlc29sdmVkQ3R4Q291bnQtLTtcbiAgfVxufVxuXG4vL1xuLy8gSGVscGVyIG1ldGhvZHNcbi8vXG5cbmZ1bmN0aW9uIHdyYXAoc3ltYm9sOiBzdHJpbmcsIGluZGV4OiBudW1iZXIsIGNvbnRleHRJZDogbnVtYmVyLCBjbG9zZWQ/OiBib29sZWFuKTogc3RyaW5nIHtcbiAgY29uc3Qgc3RhdGUgPSBjbG9zZWQgPyAnLycgOiAnJztcbiAgcmV0dXJuIHdyYXBJMThuUGxhY2Vob2xkZXIoYCR7c3RhdGV9JHtzeW1ib2x9JHtpbmRleH1gLCBjb250ZXh0SWQpO1xufVxuXG5mdW5jdGlvbiB3cmFwVGFnKHN5bWJvbDogc3RyaW5nLCB7aW5kZXgsIGN0eCwgaXNWb2lkfTogYW55LCBjbG9zZWQ/OiBib29sZWFuKTogc3RyaW5nIHtcbiAgcmV0dXJuIGlzVm9pZCA/IHdyYXAoc3ltYm9sLCBpbmRleCwgY3R4KSArIHdyYXAoc3ltYm9sLCBpbmRleCwgY3R4LCB0cnVlKSA6XG4gICAgICAgICAgICAgICAgICB3cmFwKHN5bWJvbCwgaW5kZXgsIGN0eCwgY2xvc2VkKTtcbn1cblxuZnVuY3Rpb24gZmluZFRlbXBsYXRlRm4oY3R4OiBudW1iZXIsIHRlbXBsYXRlSW5kZXg6IG51bWJlciB8IG51bGwpIHtcbiAgcmV0dXJuICh0b2tlbjogYW55KSA9PiB0eXBlb2YgdG9rZW4gPT09ICdvYmplY3QnICYmIHRva2VuLnR5cGUgPT09IFRhZ1R5cGUuVEVNUExBVEUgJiZcbiAgICAgIHRva2VuLmluZGV4ID09PSB0ZW1wbGF0ZUluZGV4ICYmIHRva2VuLmN0eCA9PT0gY3R4O1xufVxuXG5mdW5jdGlvbiBzZXJpYWxpemVQbGFjZWhvbGRlclZhbHVlKHZhbHVlOiBhbnkpOiBzdHJpbmcge1xuICBjb25zdCBlbGVtZW50ID0gKGRhdGE6IGFueSwgY2xvc2VkPzogYm9vbGVhbikgPT4gd3JhcFRhZygnIycsIGRhdGEsIGNsb3NlZCk7XG4gIGNvbnN0IHRlbXBsYXRlID0gKGRhdGE6IGFueSwgY2xvc2VkPzogYm9vbGVhbikgPT4gd3JhcFRhZygnKicsIGRhdGEsIGNsb3NlZCk7XG4gIGNvbnN0IHByb2plY3Rpb24gPSAoZGF0YTogYW55LCBjbG9zZWQ/OiBib29sZWFuKSA9PiB3cmFwVGFnKCchJywgZGF0YSwgY2xvc2VkKTtcblxuICBzd2l0Y2ggKHZhbHVlLnR5cGUpIHtcbiAgICBjYXNlIFRhZ1R5cGUuRUxFTUVOVDpcbiAgICAgIC8vIGNsb3NlIGVsZW1lbnQgdGFnXG4gICAgICBpZiAodmFsdWUuY2xvc2VkKSB7XG4gICAgICAgIHJldHVybiBlbGVtZW50KHZhbHVlLCB0cnVlKSArICh2YWx1ZS50bXBsID8gdGVtcGxhdGUodmFsdWUudG1wbCwgdHJ1ZSkgOiAnJyk7XG4gICAgICB9XG4gICAgICAvLyBvcGVuIGVsZW1lbnQgdGFnIHRoYXQgYWxzbyBpbml0aWF0ZXMgYSB0ZW1wbGF0ZVxuICAgICAgaWYgKHZhbHVlLnRtcGwpIHtcbiAgICAgICAgcmV0dXJuIHRlbXBsYXRlKHZhbHVlLnRtcGwpICsgZWxlbWVudCh2YWx1ZSkgK1xuICAgICAgICAgICAgKHZhbHVlLmlzVm9pZCA/IHRlbXBsYXRlKHZhbHVlLnRtcGwsIHRydWUpIDogJycpO1xuICAgICAgfVxuICAgICAgcmV0dXJuIGVsZW1lbnQodmFsdWUpO1xuXG4gICAgY2FzZSBUYWdUeXBlLlRFTVBMQVRFOlxuICAgICAgcmV0dXJuIHRlbXBsYXRlKHZhbHVlLCB2YWx1ZS5jbG9zZWQpO1xuXG4gICAgY2FzZSBUYWdUeXBlLlBST0pFQ1RJT046XG4gICAgICByZXR1cm4gcHJvamVjdGlvbih2YWx1ZSwgdmFsdWUuY2xvc2VkKTtcblxuICAgIGRlZmF1bHQ6XG4gICAgICByZXR1cm4gdmFsdWU7XG4gIH1cbn1cbiJdfQ==