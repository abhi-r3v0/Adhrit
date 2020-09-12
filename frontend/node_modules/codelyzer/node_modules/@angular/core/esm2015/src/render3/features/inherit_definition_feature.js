/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/features/inherit_definition_feature.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { fillProperties } from '../../util/property';
import { EMPTY_ARRAY, EMPTY_OBJ } from '../empty';
import { isComponentDef } from '../interfaces/type_checks';
import { mergeHostAttrs } from '../util/attrs_utils';
/**
 * @param {?} type
 * @return {?}
 */
export function getSuperType(type) {
    return Object.getPrototypeOf(type.prototype).constructor;
}
/**
 * Merges the definition from a super class to a sub class.
 * \@codeGenApi
 * @param {?} definition The definition that is a SubClass of another directive of component
 *
 * @return {?}
 */
export function ɵɵInheritDefinitionFeature(definition) {
    /** @type {?} */
    let superType = getSuperType(definition.type);
    /** @type {?} */
    let shouldInheritFields = true;
    /** @type {?} */
    const inheritanceChain = [definition];
    while (superType) {
        /** @type {?} */
        let superDef = undefined;
        if (isComponentDef(definition)) {
            // Don't use getComponentDef/getDirectiveDef. This logic relies on inheritance.
            superDef = superType.ɵcmp || superType.ɵdir;
        }
        else {
            if (superType.ɵcmp) {
                throw new Error('Directives cannot inherit Components');
            }
            // Don't use getComponentDef/getDirectiveDef. This logic relies on inheritance.
            superDef = superType.ɵdir;
        }
        if (superDef) {
            if (shouldInheritFields) {
                inheritanceChain.push(superDef);
                // Some fields in the definition may be empty, if there were no values to put in them that
                // would've justified object creation. Unwrap them if necessary.
                /** @type {?} */
                const writeableDef = (/** @type {?} */ (definition));
                writeableDef.inputs = maybeUnwrapEmpty(definition.inputs);
                writeableDef.declaredInputs = maybeUnwrapEmpty(definition.declaredInputs);
                writeableDef.outputs = maybeUnwrapEmpty(definition.outputs);
                // Merge hostBindings
                /** @type {?} */
                const superHostBindings = superDef.hostBindings;
                superHostBindings && inheritHostBindings(definition, superHostBindings);
                // Merge queries
                /** @type {?} */
                const superViewQuery = superDef.viewQuery;
                /** @type {?} */
                const superContentQueries = superDef.contentQueries;
                superViewQuery && inheritViewQuery(definition, superViewQuery);
                superContentQueries && inheritContentQueries(definition, superContentQueries);
                // Merge inputs and outputs
                fillProperties(definition.inputs, superDef.inputs);
                fillProperties(definition.declaredInputs, superDef.declaredInputs);
                fillProperties(definition.outputs, superDef.outputs);
                // Inherit hooks
                // Assume super class inheritance feature has already run.
                writeableDef.afterContentChecked =
                    writeableDef.afterContentChecked || superDef.afterContentChecked;
                writeableDef.afterContentInit = definition.afterContentInit || superDef.afterContentInit;
                writeableDef.afterViewChecked = definition.afterViewChecked || superDef.afterViewChecked;
                writeableDef.afterViewInit = definition.afterViewInit || superDef.afterViewInit;
                writeableDef.doCheck = definition.doCheck || superDef.doCheck;
                writeableDef.onDestroy = definition.onDestroy || superDef.onDestroy;
                writeableDef.onInit = definition.onInit || superDef.onInit;
            }
            // Run parent features
            /** @type {?} */
            const features = superDef.features;
            if (features) {
                for (let i = 0; i < features.length; i++) {
                    /** @type {?} */
                    const feature = features[i];
                    if (feature && feature.ngInherit) {
                        ((/** @type {?} */ (feature)))(definition);
                    }
                    // If `InheritDefinitionFeature` is a part of the current `superDef`, it means that this
                    // def already has all the necessary information inherited from its super class(es), so we
                    // can stop merging fields from super classes. However we need to iterate through the
                    // prototype chain to look for classes that might contain other "features" (like
                    // NgOnChanges), which we should invoke for the original `definition`. We set the
                    // `shouldInheritFields` flag to indicate that, essentially skipping fields inheritance
                    // logic and only invoking functions from the "features" list.
                    if (feature === ɵɵInheritDefinitionFeature) {
                        shouldInheritFields = false;
                    }
                }
            }
        }
        superType = Object.getPrototypeOf(superType);
    }
    mergeHostAttrsAcrossInheritance(inheritanceChain);
}
/**
 * Merge the `hostAttrs` and `hostVars` from the inherited parent to the base class.
 *
 * @param {?} inheritanceChain A list of `WritableDefs` starting at the top most type and listing
 * sub-types in order. For each type take the `hostAttrs` and `hostVars` and merge it with the child
 * type.
 * @return {?}
 */
function mergeHostAttrsAcrossInheritance(inheritanceChain) {
    /** @type {?} */
    let hostVars = 0;
    /** @type {?} */
    let hostAttrs = null;
    // We process the inheritance order from the base to the leaves here.
    for (let i = inheritanceChain.length - 1; i >= 0; i--) {
        /** @type {?} */
        const def = inheritanceChain[i];
        // For each `hostVars`, we need to add the superclass amount.
        def.hostVars = (hostVars += def.hostVars);
        // for each `hostAttrs` we need to merge it with superclass.
        def.hostAttrs =
            mergeHostAttrs(def.hostAttrs, hostAttrs = mergeHostAttrs(hostAttrs, def.hostAttrs));
    }
}
/**
 * @param {?} value
 * @return {?}
 */
function maybeUnwrapEmpty(value) {
    if (value === EMPTY_OBJ) {
        return {};
    }
    else if (value === EMPTY_ARRAY) {
        return [];
    }
    else {
        return value;
    }
}
/**
 * @param {?} definition
 * @param {?} superViewQuery
 * @return {?}
 */
function inheritViewQuery(definition, superViewQuery) {
    /** @type {?} */
    const prevViewQuery = definition.viewQuery;
    if (prevViewQuery) {
        definition.viewQuery = (/**
         * @param {?} rf
         * @param {?} ctx
         * @return {?}
         */
        (rf, ctx) => {
            superViewQuery(rf, ctx);
            prevViewQuery(rf, ctx);
        });
    }
    else {
        definition.viewQuery = superViewQuery;
    }
}
/**
 * @param {?} definition
 * @param {?} superContentQueries
 * @return {?}
 */
function inheritContentQueries(definition, superContentQueries) {
    /** @type {?} */
    const prevContentQueries = definition.contentQueries;
    if (prevContentQueries) {
        definition.contentQueries = (/**
         * @param {?} rf
         * @param {?} ctx
         * @param {?} directiveIndex
         * @return {?}
         */
        (rf, ctx, directiveIndex) => {
            superContentQueries(rf, ctx, directiveIndex);
            prevContentQueries(rf, ctx, directiveIndex);
        });
    }
    else {
        definition.contentQueries = superContentQueries;
    }
}
/**
 * @param {?} definition
 * @param {?} superHostBindings
 * @return {?}
 */
function inheritHostBindings(definition, superHostBindings) {
    /** @type {?} */
    const prevHostBindings = definition.hostBindings;
    if (prevHostBindings) {
        definition.hostBindings = (/**
         * @param {?} rf
         * @param {?} ctx
         * @return {?}
         */
        (rf, ctx) => {
            superHostBindings(rf, ctx);
            prevHostBindings(rf, ctx);
        });
    }
    else {
        definition.hostBindings = superHostBindings;
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5oZXJpdF9kZWZpbml0aW9uX2ZlYXR1cmUuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL2ZlYXR1cmVzL2luaGVyaXRfZGVmaW5pdGlvbl9mZWF0dXJlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQVVBLE9BQU8sRUFBQyxjQUFjLEVBQUMsTUFBTSxxQkFBcUIsQ0FBQztBQUNuRCxPQUFPLEVBQUMsV0FBVyxFQUFFLFNBQVMsRUFBQyxNQUFNLFVBQVUsQ0FBQztBQUdoRCxPQUFPLEVBQUMsY0FBYyxFQUFDLE1BQU0sMkJBQTJCLENBQUM7QUFDekQsT0FBTyxFQUFDLGNBQWMsRUFBQyxNQUFNLHFCQUFxQixDQUFDOzs7OztBQUVuRCxNQUFNLFVBQVUsWUFBWSxDQUFDLElBQWU7SUFFMUMsT0FBTyxNQUFNLENBQUMsY0FBYyxDQUFDLElBQUksQ0FBQyxTQUFTLENBQUMsQ0FBQyxXQUFXLENBQUM7QUFDM0QsQ0FBQzs7Ozs7Ozs7QUFVRCxNQUFNLFVBQVUsMEJBQTBCLENBQUMsVUFBZ0Q7O1FBQ3JGLFNBQVMsR0FBRyxZQUFZLENBQUMsVUFBVSxDQUFDLElBQUksQ0FBQzs7UUFDekMsbUJBQW1CLEdBQUcsSUFBSTs7VUFDeEIsZ0JBQWdCLEdBQWtCLENBQUMsVUFBVSxDQUFDO0lBRXBELE9BQU8sU0FBUyxFQUFFOztZQUNaLFFBQVEsR0FBa0QsU0FBUztRQUN2RSxJQUFJLGNBQWMsQ0FBQyxVQUFVLENBQUMsRUFBRTtZQUM5QiwrRUFBK0U7WUFDL0UsUUFBUSxHQUFHLFNBQVMsQ0FBQyxJQUFJLElBQUksU0FBUyxDQUFDLElBQUksQ0FBQztTQUM3QzthQUFNO1lBQ0wsSUFBSSxTQUFTLENBQUMsSUFBSSxFQUFFO2dCQUNsQixNQUFNLElBQUksS0FBSyxDQUFDLHNDQUFzQyxDQUFDLENBQUM7YUFDekQ7WUFDRCwrRUFBK0U7WUFDL0Us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KiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7VHlwZSwgV3JpdGFibGV9IGZyb20gJy4uLy4uL2ludGVyZmFjZS90eXBlJztcbmltcG9ydCB7YXNzZXJ0RXF1YWx9IGZyb20gJy4uLy4uL3V0aWwvYXNzZXJ0JztcbmltcG9ydCB7ZmlsbFByb3BlcnRpZXN9IGZyb20gJy4uLy4uL3V0aWwvcHJvcGVydHknO1xuaW1wb3J0IHtFTVBUWV9BUlJBWSwgRU1QVFlfT0JKfSBmcm9tICcuLi9lbXB0eSc7XG5pbXBvcnQge0NvbXBvbmVudERlZiwgQ29udGVudFF1ZXJpZXNGdW5jdGlvbiwgRGlyZWN0aXZlRGVmLCBEaXJlY3RpdmVEZWZGZWF0dXJlLCBIb3N0QmluZGluZ3NGdW5jdGlvbiwgUmVuZGVyRmxhZ3MsIFZpZXdRdWVyaWVzRnVuY3Rpb259IGZyb20gJy4uL2ludGVyZmFjZXMvZGVmaW5pdGlvbic7XG5pbXBvcnQge0F0dHJpYnV0ZU1hcmtlciwgVEF0dHJpYnV0ZXN9IGZyb20gJy4uL2ludGVyZmFjZXMvbm9kZSc7XG5pbXBvcnQge2lzQ29tcG9uZW50RGVmfSBmcm9tICcuLi9pbnRlcmZhY2VzL3R5cGVfY2hlY2tzJztcbmltcG9ydCB7bWVyZ2VIb3N0QXR0cnN9IGZyb20gJy4uL3V0aWwvYXR0cnNfdXRpbHMnO1xuXG5leHBvcnQgZnVuY3Rpb24gZ2V0U3VwZXJUeXBlKHR5cGU6IFR5cGU8YW55Pik6IFR5cGU8YW55PiZcbiAgICB7ybVjbXA/OiBDb21wb25lbnREZWY8YW55PiwgybVkaXI/OiBEaXJlY3RpdmVEZWY8YW55Pn0ge1xuICByZXR1cm4gT2JqZWN0LmdldFByb3RvdHlwZU9mKHR5cGUucHJvdG90eXBlKS5jb25zdHJ1Y3Rvcjtcbn1cblxudHlwZSBXcml0YWJsZURlZiA9IFdyaXRhYmxlPERpcmVjdGl2ZURlZjxhbnk+fENvbXBvbmVudERlZjxhbnk+PjtcblxuLyoqXG4gKiBNZXJnZXMgdGhlIGRlZmluaXRpb24gZnJvbSBhIHN1cGVyIGNsYXNzIHRvIGEgc3ViIGNsYXNzLlxuICogQHBhcmFtIGRlZmluaXRpb24gVGhlIGRlZmluaXRpb24gdGhhdCBpcyBhIFN1YkNsYXNzIG9mIGFub3RoZXIgZGlyZWN0aXZlIG9mIGNvbXBvbmVudFxuICpcbiAqIEBjb2RlR2VuQXBpXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiDJtcm1SW5oZXJpdERlZmluaXRpb25GZWF0dXJlKGRlZmluaXRpb246IERpcmVjdGl2ZURlZjxhbnk+fCBDb21wb25lbnREZWY8YW55Pik6IHZvaWQge1xuICBsZXQgc3VwZXJUeXBlID0gZ2V0U3VwZXJUeXBlKGRlZmluaXRpb24udHlwZSk7XG4gIGxldCBzaG91bGRJbmhlcml0RmllbGRzID0gdHJ1ZTtcbiAgY29uc3QgaW5oZXJpdGFuY2VDaGFpbjogV3JpdGFibGVEZWZbXSA9IFtkZWZpbml0aW9uXTtcblxuICB3aGlsZSAoc3VwZXJUeXBlKSB7XG4gICAgbGV0IHN1cGVyRGVmOiBEaXJlY3RpdmVEZWY8YW55PnxDb21wb25lbnREZWY8YW55Pnx1bmRlZmluZWQgPSB1bmRlZmluZWQ7XG4gICAgaWYgKGlzQ29tcG9uZW50RGVmKGRlZmluaXRpb24pKSB7XG4gICAgICAvLyBEb24ndCB1c2UgZ2V0Q29tcG9uZW50RGVmL2dldERpcmVjdGl2ZURlZi4gVGhpcyBsb2dpYyByZWxpZXMgb24gaW5oZXJpdGFuY2UuXG4gICAgICBzdXBlckRlZiA9IHN1cGVyVHlwZS7JtWNtcCB8fCBzdXBlclR5cGUuybVkaXI7XG4gICAgfSBlbHNlIHtcbiAgICAgIGlmIChzdXBlclR5cGUuybVjbXApIHtcbiAgICAgICAgdGhyb3cgbmV3IEVycm9yKCdEaXJlY3RpdmVzIGNhbm5vdCBpbmhlcml0IENvbXBvbmVudHMnKTtcbiAgICAgIH1cbiAgICAgIC8vIERvbid0IHVzZSBnZXRDb21wb25lbnREZWYvZ2V0RGlyZWN0aXZlRGVmLiBUaGlzIGxvZ2ljIHJlbGllcyBvbiBpbmhlcml0YW5jZS5cbiAgICAgIHN1cGVyRGVmID0gc3VwZXJUeXBlLsm1ZGlyO1xuICAgIH1cblxuICAgIGlmIChzdXBlckRlZikge1xuICAgICAgaWYgKHNob3VsZEluaGVyaXRGaWVsZHMpIHtcbiAgICAgICAgaW5oZXJpdGFuY2VDaGFpbi5wdXNoKHN1cGVyRGVmKTtcbiAgICAgICAgLy8gU29tZSBmaWVsZHMgaW4gdGhlIGRlZmluaXRpb24gbWF5IGJlIGVtcHR5LCBpZiB0aGVyZSB3ZXJlIG5vIHZhbHVlcyB0byBwdXQgaW4gdGhlbSB0aGF0XG4gICAgICAgIC8vIHdvdWxkJ3ZlIGp1c3RpZmllZCBvYmplY3QgY3JlYXRpb24uIFVud3JhcCB0aGVtIGlmIG5lY2Vzc2FyeS5cbiAgICAgICAgY29uc3Qgd3JpdGVhYmxlRGVmID0gZGVmaW5pdGlvbiBhcyBXcml0YWJsZURlZjtcbiAgICAgICAgd3JpdGVhYmxlRGVmLmlucHV0cyA9IG1heWJlVW53cmFwRW1wdHkoZGVmaW5pdGlvbi5pbnB1dHMpO1xuICAgICAgICB3cml0ZWFibGVEZWYuZGVjbGFyZWRJbnB1dHMgPSBtYXliZVVud3JhcEVtcHR5KGRlZmluaXRpb24uZGVjbGFyZWRJbnB1dHMpO1xuICAgICAgICB3cml0ZWFibGVEZWYub3V0cHV0cyA9IG1heWJlVW53cmFwRW1wdHkoZGVmaW5pdGlvbi5vdXRwdXRzKTtcblxuICAgICAgICAvLyBNZXJnZSBob3N0QmluZGluZ3NcbiAgICAgICAgY29uc3Qgc3VwZXJIb3N0QmluZGluZ3MgPSBzdXBlckRlZi5ob3N0QmluZGluZ3M7XG4gICAgICAgIHN1cGVySG9zdEJpbmRpbmdzICYmIGluaGVyaXRIb3N0QmluZGluZ3MoZGVmaW5pdGlvbiwgc3VwZXJIb3N0QmluZGluZ3MpO1xuXG4gICAgICAgIC8vIE1lcmdlIHF1ZXJpZXNcbiAgICAgICAgY29uc3Qgc3VwZXJWaWV3UXVlcnkgPSBzdXBlckRlZi52aWV3UXVlcnk7XG4gICAgICAgIGNvbnN0IHN1cGVyQ29udGVudFF1ZXJpZXMgPSBzdXBlckRlZi5jb250ZW50UXVlcmllcztcbiAgICAgICAgc3VwZXJWaWV3UXVlcnkgJiYgaW5oZXJpdFZpZXdRdWVyeShkZWZpbml0aW9uLCBzdXBlclZpZXdRdWVyeSk7XG4gICAgICAgIHN1cGVyQ29udGVudFF1ZXJpZXMgJiYgaW5oZXJpdENvbnRlbnRRdWVyaWVzKGRlZmluaXRpb24sIHN1cGVyQ29udGVudFF1ZXJpZXMpO1xuXG4gICAgICAgIC8vIE1lcmdlIGlucHV0cyBhbmQgb3V0cHV0c1xuICAgICAgICBmaWxsUHJvcGVydGllcyhkZWZpbml0aW9uLmlucHV0cywgc3VwZXJEZWYuaW5wdXRzKTtcbiAgICAgICAgZmlsbFByb3BlcnRpZXMoZGVmaW5pdGlvbi5kZWNsYXJlZElucHV0cywgc3VwZXJEZWYuZGVjbGFyZWRJbnB1dHMpO1xuICAgICAgICBmaWxsUHJvcGVydGllcyhkZWZpbml0aW9uLm91dHB1dHMsIHN1cGVyRGVmLm91dHB1dHMpO1xuXG4gICAgICAgIC8vIEluaGVyaXQgaG9va3NcbiAgICAgICAgLy8gQXNzdW1lIHN1cGVyIGNsYXNzIGluaGVyaXRhbmNlIGZlYXR1cmUgaGFzIGFscmVhZHkgcnVuLlxuICAgICAgICB3cml0ZWFibGVEZWYuYWZ0ZXJDb250ZW50Q2hlY2tlZCA9XG4gICAgICAgICAgICB3cml0ZWFibGVEZWYuYWZ0ZXJDb250ZW50Q2hlY2tlZCB8fCBzdXBlckRlZi5hZnRlckNvbnRlbnRDaGVja2VkO1xuICAgICAgICB3cml0ZWFibGVEZWYuYWZ0ZXJDb250ZW50SW5pdCA9IGRlZmluaXRpb24uYWZ0ZXJDb250ZW50SW5pdCB8fCBzdXBlckRlZi5hZnRlckNvbnRlbnRJbml0O1xuICAgICAgICB3cml0ZWFibGVEZWYuYWZ0ZXJWaWV3Q2hlY2tlZCA9IGRlZmluaXRpb24uYWZ0ZXJWaWV3Q2hlY2tlZCB8fCBzdXBlckRlZi5hZnRlclZpZXdDaGVja2VkO1xuICAgICAgICB3cml0ZWFibGVEZWYuYWZ0ZXJWaWV3SW5pdCA9IGRlZmluaXRpb24uYWZ0ZXJWaWV3SW5pdCB8fCBzdXBlckRlZi5hZnRlclZpZXdJbml0O1xuICAgICAgICB3cml0ZWFibGVEZWYuZG9DaGVjayA9IGRlZmluaXRpb24uZG9DaGVjayB8fCBzdXBlckRlZi5kb0NoZWNrO1xuICAgICAgICB3cml0ZWFibGVEZWYub25EZXN0cm95ID0gZGVmaW5pdGlvbi5vbkRlc3Ryb3kgfHwgc3VwZXJEZWYub25EZXN0cm95O1xuICAgICAgICB3cml0ZWFibGVEZWYub25Jbml0ID0gZGVmaW5pdGlvbi5vbkluaXQgfHwgc3VwZXJEZWYub25Jbml0O1xuICAgICAgfVxuXG4gICAgICAvLyBSdW4gcGFyZW50IGZlYXR1cmVzXG4gICAgICBjb25zdCBmZWF0dXJlcyA9IHN1cGVyRGVmLmZlYXR1cmVzO1xuICAgICAgaWYgKGZlYXR1cmVzKSB7XG4gICAgICAgIGZvciAobGV0IGkgPSAwOyBpIDwgZmVhdHVyZXMubGVuZ3RoOyBpKyspIHtcbiAgICAgICAgICBjb25zdCBmZWF0dXJlID0gZmVhdHVyZXNbaV07XG4gICAgICAgICAgaWYgKGZlYXR1cmUgJiYgZmVhdHVyZS5uZ0luaGVyaXQpIHtcbiAgICAgICAgICAgIChmZWF0dXJlIGFzIERpcmVjdGl2ZURlZkZlYXR1cmUpKGRlZmluaXRpb24pO1xuICAgICAgICAgIH1cbiAgICAgICAgICAvLyBJZiBgSW5oZXJpdERlZmluaXRpb25GZWF0dXJlYCBpcyBhIHBhcnQgb2YgdGhlIGN1cnJlbnQgYHN1cGVyRGVmYCwgaXQgbWVhbnMgdGhhdCB0aGlzXG4gICAgICAgICAgLy8gZGVmIGFscmVhZHkgaGFzIGFsbCB0aGUgbmVjZXNzYXJ5IGluZm9ybWF0aW9uIGluaGVyaXRlZCBmcm9tIGl0cyBzdXBlciBjbGFzcyhlcyksIHNvIHdlXG4gICAgICAgICAgLy8gY2FuIHN0b3AgbWVyZ2luZyBmaWVsZHMgZnJvbSBzdXBlciBjbGFzc2VzLiBIb3dldmVyIHdlIG5lZWQgdG8gaXRlcmF0ZSB0aHJvdWdoIHRoZVxuICAgICAgICAgIC8vIHByb3RvdHlwZSBjaGFpbiB0byBsb29rIGZvciBjbGFzc2VzIHRoYXQgbWlnaHQgY29udGFpbiBvdGhlciBcImZlYXR1cmVzXCIgKGxpa2VcbiAgICAgICAgICAvLyBOZ09uQ2hhbmdlcyksIHdoaWNoIHdlIHNob3VsZCBpbnZva2UgZm9yIHRoZSBvcmlnaW5hbCBgZGVmaW5pdGlvbmAuIFdlIHNldCB0aGVcbiAgICAgICAgICAvLyBgc2hvdWxkSW5oZXJpdEZpZWxkc2AgZmxhZyB0byBpbmRpY2F0ZSB0aGF0LCBlc3NlbnRpYWxseSBza2lwcGluZyBmaWVsZHMgaW5oZXJpdGFuY2VcbiAgICAgICAgICAvLyBsb2dpYyBhbmQgb25seSBpbnZva2luZyBmdW5jdGlvbnMgZnJvbSB0aGUgXCJmZWF0dXJlc1wiIGxpc3QuXG4gICAgICAgICAgaWYgKGZlYXR1cmUgPT09IMm1ybVJbmhlcml0RGVmaW5pdGlvbkZlYXR1cmUpIHtcbiAgICAgICAgICAgIHNob3VsZEluaGVyaXRGaWVsZHMgPSBmYWxzZTtcbiAgICAgICAgICB9XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICB9XG5cbiAgICBzdXBlclR5cGUgPSBPYmplY3QuZ2V0UHJvdG90eXBlT2Yoc3VwZXJUeXBlKTtcbiAgfVxuICBtZXJnZUhvc3RBdHRyc0Fjcm9zc0luaGVyaXRhbmNlKGluaGVyaXRhbmNlQ2hhaW4pO1xufVxuXG4vKipcbiAqIE1lcmdlIHRoZSBgaG9zdEF0dHJzYCBhbmQgYGhvc3RWYXJzYCBmcm9tIHRoZSBpbmhlcml0ZWQgcGFyZW50IHRvIHRoZSBiYXNlIGNsYXNzLlxuICpcbiAqIEBwYXJhbSBpbmhlcml0YW5jZUNoYWluIEEgbGlzdCBvZiBgV3JpdGFibGVEZWZzYCBzdGFydGluZyBhdCB0aGUgdG9wIG1vc3QgdHlwZSBhbmQgbGlzdGluZ1xuICogc3ViLXR5cGVzIGluIG9yZGVyLiBGb3IgZWFjaCB0eXBlIHRha2UgdGhlIGBob3N0QXR0cnNgIGFuZCBgaG9zdFZhcnNgIGFuZCBtZXJnZSBpdCB3aXRoIHRoZSBjaGlsZFxuICogdHlwZS5cbiAqL1xuZnVuY3Rpb24gbWVyZ2VIb3N0QXR0cnNBY3Jvc3NJbmhlcml0YW5jZShpbmhlcml0YW5jZUNoYWluOiBXcml0YWJsZURlZltdKSB7XG4gIGxldCBob3N0VmFyczogbnVtYmVyID0gMDtcbiAgbGV0IGhvc3RBdHRyczogVEF0dHJpYnV0ZXN8bnVsbCA9IG51bGw7XG4gIC8vIFdlIHByb2Nlc3MgdGhlIGluaGVyaXRhbmNlIG9yZGVyIGZyb20gdGhlIGJhc2UgdG8gdGhlIGxlYXZlcyBoZXJlLlxuICBmb3IgKGxldCBpID0gaW5oZXJpdGFuY2VDaGFpbi5sZW5ndGggLSAxOyBpID49IDA7IGktLSkge1xuICAgIGNvbnN0IGRlZiA9IGluaGVyaXRhbmNlQ2hhaW5baV07XG4gICAgLy8gRm9yIGVhY2ggYGhvc3RWYXJzYCwgd2UgbmVlZCB0byBhZGQgdGhlIHN1cGVyY2xhc3MgYW1vdW50LlxuICAgIGRlZi5ob3N0VmFycyA9IChob3N0VmFycyArPSBkZWYuaG9zdFZhcnMpO1xuICAgIC8vIGZvciBlYWNoIGBob3N0QXR0cnNgIHdlIG5lZWQgdG8gbWVyZ2UgaXQgd2l0aCBzdXBlcmNsYXNzLlxuICAgIGRlZi5ob3N0QXR0cnMgPVxuICAgICAgICBtZXJnZUhvc3RBdHRycyhkZWYuaG9zdEF0dHJzLCBob3N0QXR0cnMgPSBtZXJnZUhvc3RBdHRycyhob3N0QXR0cnMsIGRlZi5ob3N0QXR0cnMpKTtcbiAgfVxufVxuXG5mdW5jdGlvbiBtYXliZVVud3JhcEVtcHR5PFQ+KHZhbHVlOiBUW10pOiBUW107XG5mdW5jdGlvbiBtYXliZVVud3JhcEVtcHR5PFQ+KHZhbHVlOiBUKTogVDtcbmZ1bmN0aW9uIG1heWJlVW53cmFwRW1wdHkodmFsdWU6IGFueSk6IGFueSB7XG4gIGlmICh2YWx1ZSA9PT0gRU1QVFlfT0JKKSB7XG4gICAgcmV0dXJuIHt9O1xuICB9IGVsc2UgaWYgKHZhbHVlID09PSBFTVBUWV9BUlJBWSkge1xuICAgIHJldHVybiBbXTtcbiAgfSBlbHNlIHtcbiAgICByZXR1cm4gdmFsdWU7XG4gIH1cbn1cblxuZnVuY3Rpb24gaW5oZXJpdFZpZXdRdWVyeShkZWZpbml0aW9uOiBXcml0YWJsZURlZiwgc3VwZXJWaWV3UXVlcnk6IFZpZXdRdWVyaWVzRnVuY3Rpb248YW55Pikge1xuICBjb25zdCBwcmV2Vmlld1F1ZXJ5ID0gZGVmaW5pdGlvbi52aWV3UXVlcnk7XG4gIGlmIChwcmV2Vmlld1F1ZXJ5KSB7XG4gICAgZGVmaW5pdGlvbi52aWV3UXVlcnkgPSAocmYsIGN0eCkgPT4ge1xuICAgICAgc3VwZXJWaWV3UXVlcnkocmYsIGN0eCk7XG4gICAgICBwcmV2Vmlld1F1ZXJ5KHJmLCBjdHgpO1xuICAgIH07XG4gIH0gZWxzZSB7XG4gICAgZGVmaW5pdGlvbi52aWV3UXVlcnkgPSBzdXBlclZpZXdRdWVyeTtcbiAgfVxufVxuXG5mdW5jdGlvbiBpbmhlcml0Q29udGVudFF1ZXJpZXMoXG4gICAgZGVmaW5pdGlvbjogV3JpdGFibGVEZWYsIHN1cGVyQ29udGVudFF1ZXJpZXM6IENvbnRlbnRRdWVyaWVzRnVuY3Rpb248YW55Pikge1xuICBjb25zdCBwcmV2Q29udGVudFF1ZXJpZXMgPSBkZWZpbml0aW9uLmNvbnRlbnRRdWVyaWVzO1xuICBpZiAocHJldkNvbnRlbnRRdWVyaWVzKSB7XG4gICAgZGVmaW5pdGlvbi5jb250ZW50UXVlcmllcyA9IChyZiwgY3R4LCBkaXJlY3RpdmVJbmRleCkgPT4ge1xuICAgICAgc3VwZXJDb250ZW50UXVlcmllcyhyZiwgY3R4LCBkaXJlY3RpdmVJbmRleCk7XG4gICAgICBwcmV2Q29udGVudFF1ZXJpZXMocmYsIGN0eCwgZGlyZWN0aXZlSW5kZXgpO1xuICAgIH07XG4gIH0gZWxzZSB7XG4gICAgZGVmaW5pdGlvbi5jb250ZW50UXVlcmllcyA9IHN1cGVyQ29udGVudFF1ZXJpZXM7XG4gIH1cbn1cblxuZnVuY3Rpb24gaW5oZXJpdEhvc3RCaW5kaW5ncyhcbiAgICBkZWZpbml0aW9uOiBXcml0YWJsZURlZiwgc3VwZXJIb3N0QmluZGluZ3M6IEhvc3RCaW5kaW5nc0Z1bmN0aW9uPGFueT4pIHtcbiAgY29uc3QgcHJldkhvc3RCaW5kaW5ncyA9IGRlZmluaXRpb24uaG9zdEJpbmRpbmdzO1xuICBpZiAocHJldkhvc3RCaW5kaW5ncykge1xuICAgIGRlZmluaXRpb24uaG9zdEJpbmRpbmdzID0gKHJmOiBSZW5kZXJGbGFncywgY3R4OiBhbnkpID0+IHtcbiAgICAgIHN1cGVySG9zdEJpbmRpbmdzKHJmLCBjdHgpO1xuICAgICAgcHJldkhvc3RCaW5kaW5ncyhyZiwgY3R4KTtcbiAgICB9O1xuICB9IGVsc2Uge1xuICAgIGRlZmluaXRpb24uaG9zdEJpbmRpbmdzID0gc3VwZXJIb3N0QmluZGluZ3M7XG4gIH1cbn1cbiJdfQ==