/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/testing/src/metadata_overrider.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ɵstringify as stringify } from '@angular/core';
/** @type {?} */
let _nextReferenceId = 0;
export class MetadataOverrider {
    constructor() {
        this._references = new Map();
    }
    /**
     * Creates a new instance for the given metadata class
     * based on an old instance and overrides.
     * @template C, T
     * @param {?} metadataClass
     * @param {?} oldMetadata
     * @param {?} override
     * @return {?}
     */
    overrideMetadata(metadataClass, oldMetadata, override) {
        /** @type {?} */
        const props = {};
        if (oldMetadata) {
            _valueProps(oldMetadata).forEach((/**
             * @param {?} prop
             * @return {?}
             */
            (prop) => props[prop] = ((/** @type {?} */ (oldMetadata)))[prop]));
        }
        if (override.set) {
            if (override.remove || override.add) {
                throw new Error(`Cannot set and add/remove ${stringify(metadataClass)} at the same time!`);
            }
            setMetadata(props, override.set);
        }
        if (override.remove) {
            removeMetadata(props, override.remove, this._references);
        }
        if (override.add) {
            addMetadata(props, override.add);
        }
        return new metadataClass((/** @type {?} */ (props)));
    }
}
if (false) {
    /**
     * @type {?}
     * @private
     */
    MetadataOverrider.prototype._references;
}
/**
 * @param {?} metadata
 * @param {?} remove
 * @param {?} references
 * @return {?}
 */
function removeMetadata(metadata, remove, references) {
    /** @type {?} */
    const removeObjects = new Set();
    for (const prop in remove) {
        /** @type {?} */
        const removeValue = remove[prop];
        if (Array.isArray(removeValue)) {
            removeValue.forEach((/**
             * @param {?} value
             * @return {?}
             */
            (value) => { removeObjects.add(_propHashKey(prop, value, references)); }));
        }
        else {
            removeObjects.add(_propHashKey(prop, removeValue, references));
        }
    }
    for (const prop in metadata) {
        /** @type {?} */
        const propValue = metadata[prop];
        if (Array.isArray(propValue)) {
            metadata[prop] = propValue.filter((/**
             * @param {?} value
             * @return {?}
             */
            (value) => !removeObjects.has(_propHashKey(prop, value, references))));
        }
        else {
            if (removeObjects.has(_propHashKey(prop, propValue, references))) {
                metadata[prop] = undefined;
            }
        }
    }
}
/**
 * @param {?} metadata
 * @param {?} add
 * @return {?}
 */
function addMetadata(metadata, add) {
    for (const prop in add) {
        /** @type {?} */
        const addValue = add[prop];
        /** @type {?} */
        const propValue = metadata[prop];
        if (propValue != null && Array.isArray(propValue)) {
            metadata[prop] = propValue.concat(addValue);
        }
        else {
            metadata[prop] = addValue;
        }
    }
}
/**
 * @param {?} metadata
 * @param {?} set
 * @return {?}
 */
function setMetadata(metadata, set) {
    for (const prop in set) {
        metadata[prop] = set[prop];
    }
}
/**
 * @param {?} propName
 * @param {?} propValue
 * @param {?} references
 * @return {?}
 */
function _propHashKey(propName, propValue, references) {
    /** @type {?} */
    const replacer = (/**
     * @param {?} key
     * @param {?} value
     * @return {?}
     */
    (key, value) => {
        if (typeof value === 'function') {
            value = _serializeReference(value, references);
        }
        return value;
    });
    return `${propName}:${JSON.stringify(propValue, replacer)}`;
}
/**
 * @param {?} ref
 * @param {?} references
 * @return {?}
 */
function _serializeReference(ref, references) {
    /** @type {?} */
    let id = references.get(ref);
    if (!id) {
        id = `${stringify(ref)}${_nextReferenceId++}`;
        references.set(ref, id);
    }
    return id;
}
/**
 * @param {?} obj
 * @return {?}
 */
function _valueProps(obj) {
    /** @type {?} */
    const props = [];
    // regular public props
    Object.keys(obj).forEach((/**
     * @param {?} prop
     * @return {?}
     */
    (prop) => {
        if (!prop.startsWith('_')) {
            props.push(prop);
        }
    }));
    // getters
    /** @type {?} */
    let proto = obj;
    while (proto = Object.getPrototypeOf(proto)) {
        Object.keys(proto).forEach((/**
         * @param {?} protoProp
         * @return {?}
         */
        (protoProp) => {
            /** @type {?} */
            const desc = Object.getOwnPropertyDescriptor(proto, protoProp);
            if (!protoProp.startsWith('_') && desc && 'get' in desc) {
                props.push(protoProp);
            }
        }));
    }
    return props;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWV0YWRhdGFfb3ZlcnJpZGVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvY29yZS90ZXN0aW5nL3NyYy9tZXRhZGF0YV9vdmVycmlkZXIudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7O0FBUUEsT0FBTyxFQUFDLFVBQVUsSUFBSSxTQUFTLEVBQUMsTUFBTSxlQUFlLENBQUM7O0lBT2xELGdCQUFnQixHQUFHLENBQUM7QUFFeEIsTUFBTSxPQUFPLGlCQUFpQjtJQUE5QjtRQUNVLGdCQUFXLEdBQUcsSUFBSSxHQUFHLEVBQWUsQ0FBQztJQTBCL0MsQ0FBQzs7Ozs7Ozs7OztJQXJCQyxnQkFBZ0IsQ0FDWixhQUFxQyxFQUFFLFdBQWMsRUFBRSxRQUE2Qjs7Y0FDaEYsS0FBSyxHQUFjLEVBQUU7UUFDM0IsSUFBSSxXQUFXLEVBQUU7WUFDZixXQUFXLENBQUMsV0FBVyxDQUFDLENBQUMsT0FBTzs7OztZQUFDLENBQUMsSUFBSSxFQUFFLEVBQUUsQ0FBQyxLQUFLLENBQUMsSUFBSSxDQUFDLEdBQUcsQ0FBQyxtQkFBSyxXQUFXLEVBQUEsQ0FBQyxDQUFDLElBQUksQ0FBQyxFQUFDLENBQUM7U0FDcEY7UUFFRCxJQUFJLFFBQVEsQ0FBQyxHQUFHLEVBQUU7WUFDaEIsSUFBSSxRQUFRLENBQUMsTUFBTSxJQUFJLFFBQVEsQ0FBQyxHQUFHLEVBQUU7Z0JBQ25DLE1BQU0sSUFBSSxLQUFLLENBQUMsNkJBQTZCLFNBQVMsQ0FBQyxhQUFhLENBQUMsb0JBQW9CLENBQUMsQ0FBQzthQUM1RjtZQUNELFdBQVcsQ0FBQyxLQUFLLEVBQUUsUUFBUSxDQUFDLEdBQUcsQ0FBQyxDQUFDO1NBQ2xDO1FBQ0QsSUFBSSxRQUFRLENBQUMsTUFBTSxFQUFFO1lBQ25CLGNBQWMsQ0FBQyxLQUFLLEVBQUUsUUFBUSxDQUFDLE1BQU0sRUFBRSxJQUFJLENBQUMsV0FBVyxDQUFDLENBQUM7U0FDMUQ7UUFD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RCxLQUFLLENBQUMsSUFBSSxDQUFDLFNBQVMsQ0FBQyxDQUFDO2FBQ3ZCO1FBQ0gsQ0FBQyxFQUFDLENBQUM7S0FDSjtJQUNELE9BQU8sS0FBSyxDQUFDO0FBQ2YsQ0FBQyIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgSW5jLiBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHvJtXN0cmluZ2lmeSBhcyBzdHJpbmdpZnl9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHtNZXRhZGF0YU92ZXJyaWRlfSBmcm9tICcuL21ldGFkYXRhX292ZXJyaWRlJztcblxudHlwZSBTdHJpbmdNYXAgPSB7XG4gIFtrZXk6IHN0cmluZ106IGFueVxufTtcblxubGV0IF9uZXh0UmVmZXJlbmNlSWQgPSAwO1xuXG5leHBvcnQgY2xhc3MgTWV0YWRhdGFPdmVycmlkZXIge1xuICBwcml2YXRlIF9yZWZlcmVuY2VzID0gbmV3IE1hcDxhbnksIHN0cmluZz4oKTtcbiAgLyoqXG4gICAqIENyZWF0ZXMgYSBuZXcgaW5zdGFuY2UgZm9yIHRoZSBnaXZlbiBtZXRhZGF0YSBjbGFzc1xuICAgKiBiYXNlZCBvbiBhbiBvbGQgaW5zdGFuY2UgYW5kIG92ZXJyaWRlcy5cbiAgICovXG4gIG92ZXJyaWRlTWV0YWRhdGE8QyBleHRlbmRzIFQsIFQ+KFxuICAgICAgbWV0YWRhdGFDbGFzczoge25ldyAob3B0aW9uczogVCk6IEM7fSwgb2xkTWV0YWRhdGE6IEMsIG92ZXJyaWRlOiBNZXRhZGF0YU92ZXJyaWRlPFQ+KTogQyB7XG4gICAgY29uc3QgcHJvcHM6IFN0cmluZ01hcCA9IHt9O1xuICAgIGlmIChvbGRNZXRhZGF0YSkge1xuICAgICAgX3ZhbHVlUHJvcHMob2xkTWV0YWRhdGEpLmZvckVhY2goKHByb3ApID0+IHByb3BzW3Byb3BdID0gKDxhbnk+b2xkTWV0YWRhdGEpW3Byb3BdKTtcbiAgICB9XG5cbiAgICBpZiAob3ZlcnJpZGUuc2V0KSB7XG4gICAgICBpZiAob3ZlcnJpZGUucmVtb3ZlIHx8IG92ZXJyaWRlLmFkZCkge1xuICAgICAgICB0aHJvdyBuZXcgRXJyb3IoYENhbm5vdCBzZXQgYW5kIGFkZC9yZW1vdmUgJHtzdHJpbmdpZnkobWV0YWRhdGFDbGFzcyl9IGF0IHRoZSBzYW1lIHRpbWUhYCk7XG4gICAgICB9XG4gICAgICBzZXRNZXRhZGF0YShwcm9wcywgb3ZlcnJpZGUuc2V0KTtcbiAgICB9XG4gICAgaWYgKG92ZXJyaWRlLnJlbW92ZSkge1xuICAgICAgcmVtb3ZlTWV0YWRhdGEocHJvcHMsIG92ZXJyaWRlLnJlbW92ZSwgdGhpcy5fcmVmZXJlbmNlcyk7XG4gICAgfVxuICAgIGlmIChvdmVycmlkZS5hZGQpIHtcbiAgICAgIGFkZE1ldGFkYXRhKHByb3BzLCBvdmVycmlkZS5hZGQpO1xuICAgIH1cbiAgICByZXR1cm4gbmV3IG1ldGFkYXRhQ2xhc3MoPGFueT5wcm9wcyk7XG4gIH1cbn1cblxuZnVuY3Rpb24gcmVtb3ZlTWV0YWRhdGEobWV0YWRhdGE6IFN0cmluZ01hcCwgcmVtb3ZlOiBhbnksIHJlZmVyZW5jZXM6IE1hcDxhbnksIHN0cmluZz4pIHtcbiAgY29uc3QgcmVtb3ZlT2JqZWN0cyA9IG5ldyBTZXQ8c3RyaW5nPigpO1xuICBmb3IgKGNvbnN0IHByb3AgaW4gcmVtb3ZlKSB7XG4gICAgY29uc3QgcmVtb3ZlVmFsdWUgPSByZW1vdmVbcHJvcF07XG4gICAgaWYgKEFycmF5LmlzQXJyYXkocmVtb3ZlVmFsdWUpKSB7XG4gICAgICByZW1vdmVWYWx1ZS5mb3JFYWNoKFxuICAgICAgICAgICh2YWx1ZTogYW55KSA9PiB7IHJlbW92ZU9iamVjdHMuYWRkKF9wcm9wSGFzaEtleShwcm9wLCB2YWx1ZSwgcmVmZXJlbmNlcykpOyB9KTtcbiAgICB9IGVsc2Uge1xuICAgICAgcmVtb3ZlT2JqZWN0cy5hZGQoX3Byb3BIYXNoS2V5KHByb3AsIHJlbW92ZVZhbHVlLCByZWZlcmVuY2VzKSk7XG4gICAgfVxuICB9XG5cbiAgZm9yIChjb25zdCBwcm9wIGluIG1ldGFkYXRhKSB7XG4gICAgY29uc3QgcHJvcFZhbHVlID0gbWV0YWRhdGFbcHJvcF07XG4gICAgaWYgKEFycmF5LmlzQXJyYXkocHJvcFZhbHVlKSkge1xuICAgICAgbWV0YWRhdGFbcHJvcF0gPSBwcm9wVmFsdWUuZmlsdGVyKFxuICAgICAgICAgICh2YWx1ZTogYW55KSA9PiAhcmVtb3ZlT2JqZWN0cy5oYXMoX3Byb3BIYXNoS2V5KHByb3AsIHZhbHVlLCByZWZlcmVuY2VzKSkpO1xuICAgIH0gZWxzZSB7XG4gICAgICBpZiAocmVtb3ZlT2JqZWN0cy5oYXMoX3Byb3BIYXNoS2V5KHByb3AsIHByb3BWYWx1ZSwgcmVmZXJlbmNlcykpKSB7XG4gICAgICAgIG1ldGFkYXRhW3Byb3BdID0gdW5kZWZpbmVkO1xuICAgICAgfVxuICAgIH1cbiAgfVxufVxuXG5mdW5jdGlvbiBhZGRNZXRhZGF0YShtZXRhZGF0YTogU3RyaW5nTWFwLCBhZGQ6IGFueSkge1xuICBmb3IgKGNvbnN0IHByb3AgaW4gYWRkKSB7XG4gICAgY29uc3QgYWRkVmFsdWUgPSBhZGRbcHJvcF07XG4gICAgY29uc3QgcHJvcFZhbHVlID0gbWV0YWRhdGFbcHJvcF07XG4gICAgaWYgKHByb3BWYWx1ZSAhPSBudWxsICYmIEFycmF5LmlzQXJyYXkocHJvcFZhbHVlKSkge1xuICAgICAgbWV0YWRhdGFbcHJvcF0gPSBwcm9wVmFsdWUuY29uY2F0KGFkZFZhbHVlKTtcbiAgICB9IGVsc2Uge1xuICAgICAgbWV0YWRhdGFbcHJvcF0gPSBhZGRWYWx1ZTtcbiAgICB9XG4gIH1cbn1cblxuZnVuY3Rpb24gc2V0TWV0YWRhdGEobWV0YWRhdGE6IFN0cmluZ01hcCwgc2V0OiBhbnkpIHtcbiAgZm9yIChjb25zdCBwcm9wIGluIHNldCkge1xuICAgIG1ldGFkYXRhW3Byb3BdID0gc2V0W3Byb3BdO1xuICB9XG59XG5cbmZ1bmN0aW9uIF9wcm9wSGFzaEtleShwcm9wTmFtZTogYW55LCBwcm9wVmFsdWU6IGFueSwgcmVmZXJlbmNlczogTWFwPGFueSwgc3RyaW5nPik6IHN0cmluZyB7XG4gIGNvbnN0IHJlcGxhY2VyID0gKGtleTogYW55LCB2YWx1ZTogYW55KSA9PiB7XG4gICAgaWYgKHR5cGVvZiB2YWx1ZSA9PT0gJ2Z1bmN0aW9uJykge1xuICAgICAgdmFsdWUgPSBfc2VyaWFsaXplUmVmZXJlbmNlKHZhbHVlLCByZWZlcmVuY2VzKTtcbiAgICB9XG4gICAgcmV0dXJuIHZhbHVlO1xuICB9O1xuXG4gIHJldHVybiBgJHtwcm9wTmFtZX06JHtKU09OLnN0cmluZ2lmeShwcm9wVmFsdWUsIHJlcGxhY2VyKX1gO1xufVxuXG5mdW5jdGlvbiBfc2VyaWFsaXplUmVmZXJlbmNlKHJlZjogYW55LCByZWZlcmVuY2VzOiBNYXA8YW55LCBzdHJpbmc+KTogc3RyaW5nIHtcbiAgbGV0IGlkID0gcmVmZXJlbmNlcy5nZXQocmVmKTtcbiAgaWYgKCFpZCkge1xuICAgIGlkID0gYCR7c3RyaW5naWZ5KHJlZil9JHtfbmV4dFJlZmVyZW5jZUlkKyt9YDtcbiAgICByZWZlcmVuY2VzLnNldChyZWYsIGlkKTtcbiAgfVxuICByZXR1cm4gaWQ7XG59XG5cblxuZnVuY3Rpb24gX3ZhbHVlUHJvcHMob2JqOiBhbnkpOiBzdHJpbmdbXSB7XG4gIGNvbnN0IHByb3BzOiBzdHJpbmdbXSA9IFtdO1xuICAvLyByZWd1bGFyIHB1YmxpYyBwcm9wc1xuICBPYmplY3Qua2V5cyhvYmopLmZvckVhY2goKHByb3ApID0+IHtcbiAgICBpZiAoIXByb3Auc3RhcnRzV2l0aCgnXycpKSB7XG4gICAgICBwcm9wcy5wdXNoKHByb3ApO1xuICAgIH1cbiAgfSk7XG5cbiAgLy8gZ2V0dGVyc1xuICBsZXQgcHJvdG8gPSBvYmo7XG4gIHdoaWxlIChwcm90byA9IE9iamVjdC5nZXRQcm90b3R5cGVPZihwcm90bykpIHtcbiAgICBPYmplY3Qua2V5cyhwcm90bykuZm9yRWFjaCgocHJvdG9Qcm9wKSA9PiB7XG4gICAgICBjb25zdCBkZXNjID0gT2JqZWN0LmdldE93blByb3BlcnR5RGVzY3JpcHRvcihwcm90bywgcHJvdG9Qcm9wKTtcbiAgICAgIGlmICghcHJvdG9Qcm9wLnN0YXJ0c1dpdGgoJ18nKSAmJiBkZXNjICYmICdnZXQnIGluIGRlc2MpIHtcbiAgICAgICAgcHJvcHMucHVzaChwcm90b1Byb3ApO1xuICAgICAgfVxuICAgIH0pO1xuICB9XG4gIHJldHVybiBwcm9wcztcbn1cbiJdfQ==