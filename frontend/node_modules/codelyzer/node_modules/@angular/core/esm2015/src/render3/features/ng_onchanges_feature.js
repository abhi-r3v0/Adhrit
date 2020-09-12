/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/render3/features/ng_onchanges_feature.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { SimpleChange } from '../../interface/simple_change';
import { EMPTY_OBJ } from '../empty';
/** @type {?} */
const PRIVATE_PREFIX = '__ngOnChanges_';
/**
 * The NgOnChangesFeature decorates a component with support for the ngOnChanges
 * lifecycle hook, so it should be included in any component that implements
 * that hook.
 *
 * If the component or directive uses inheritance, the NgOnChangesFeature MUST
 * be included as a feature AFTER {\@link InheritDefinitionFeature}, otherwise
 * inherited properties will not be propagated to the ngOnChanges lifecycle
 * hook.
 *
 * Example usage:
 *
 * ```
 * static ɵcmp = defineComponent({
 *   ...
 *   inputs: {name: 'publicName'},
 *   features: [NgOnChangesFeature()]
 * });
 * ```
 *
 * \@codeGenApi
 * @template T
 * @return {?}
 */
export function ɵɵNgOnChangesFeature() {
    // This option ensures that the ngOnChanges lifecycle hook will be inherited
    // from superclasses (in InheritDefinitionFeature).
    ((/** @type {?} */ (NgOnChangesFeatureImpl))).ngInherit = true;
    return NgOnChangesFeatureImpl;
}
/**
 * @template T
 * @param {?} definition
 * @return {?}
 */
function NgOnChangesFeatureImpl(definition) {
    if (definition.type.prototype.ngOnChanges) {
        definition.setInput = ngOnChangesSetInput;
        ((/** @type {?} */ (definition))).onChanges = wrapOnChanges();
    }
}
/**
 * @return {?}
 */
function wrapOnChanges() {
    return (/**
     * @this {?}
     * @return {?}
     */
    function wrapOnChangesHook_inPreviousChangesStorage() {
        /** @type {?} */
        const simpleChangesStore = getSimpleChangesStore(this);
        /** @type {?} */
        const current = simpleChangesStore && simpleChangesStore.current;
        if (current) {
            /** @type {?} */
            const previous = (/** @type {?} */ (simpleChangesStore)).previous;
            if (previous === EMPTY_OBJ) {
                (/** @type {?} */ (simpleChangesStore)).previous = current;
            }
            else {
                // New changes are copied to the previous store, so that we don't lose history for inputs
                // which were not changed this time
                for (let key in current) {
                    previous[key] = current[key];
                }
            }
            (/** @type {?} */ (simpleChangesStore)).current = null;
            this.ngOnChanges(current);
        }
    });
}
/**
 * @template T
 * @this {?}
 * @param {?} instance
 * @param {?} value
 * @param {?} publicName
 * @param {?} privateName
 * @return {?}
 */
function ngOnChangesSetInput(instance, value, publicName, privateName) {
    /** @type {?} */
    const simpleChangesStore = getSimpleChangesStore(instance) ||
        setSimpleChangesStore(instance, { previous: EMPTY_OBJ, current: null });
    /** @type {?} */
    const current = simpleChangesStore.current || (simpleChangesStore.current = {});
    /** @type {?} */
    const previous = simpleChangesStore.previous;
    /** @type {?} */
    const declaredName = ((/** @type {?} */ (this.declaredInputs)))[publicName];
    /** @type {?} */
    const previousChange = previous[declaredName];
    current[declaredName] = new SimpleChange(previousChange && previousChange.currentValue, value, previous === EMPTY_OBJ);
    ((/** @type {?} */ (instance)))[privateName] = value;
}
/** @type {?} */
const SIMPLE_CHANGES_STORE = '__ngSimpleChanges__';
/**
 * @param {?} instance
 * @return {?}
 */
function getSimpleChangesStore(instance) {
    return instance[SIMPLE_CHANGES_STORE] || null;
}
/**
 * @param {?} instance
 * @param {?} store
 * @return {?}
 */
function setSimpleChangesStore(instance, store) {
    return instance[SIMPLE_CHANGES_STORE] = store;
}
/**
 * @record
 */
function NgSimpleChangesStore() { }
if (false) {
    /** @type {?} */
    NgSimpleChangesStore.prototype.previous;
    /** @type {?} */
    NgSimpleChangesStore.prototype.current;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmdfb25jaGFuZ2VzX2ZlYXR1cmUuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL2ZlYXR1cmVzL25nX29uY2hhbmdlc19mZWF0dXJlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQVNBLE9BQU8sRUFBQyxZQUFZLEVBQWdCLE1BQU0sK0JBQStCLENBQUM7QUFDMUUsT0FBTyxFQUFDLFNBQVMsRUFBQyxNQUFNLFVBQVUsQ0FBQzs7TUFHN0IsY0FBYyxHQUFHLGdCQUFnQjs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQThCdkMsTUFBTSxVQUFVLG9CQUFvQjtJQUNsQyw0RUFBNEU7SUFDNUUsbURBQW1EO0lBQ25ELENBQUMsbUJBQUEsc0JBQXNCLEVBQXVCLENBQUMsQ0FBQyxTQUFTLEdBQUcsSUFBSSxDQUFDO0lBQ2pFLE9BQU8sc0JBQXNCLENBQUM7QUFDaEMsQ0FBQzs7Ozs7O0FBRUQsU0FBUyxzQkFBc0IsQ0FBSSxVQUEyQjtJQUM1RCxJQUFJLFVBQVUsQ0FBQyxJQUFJLENBQUMsU0FBUyxDQUFDLFdBQVcsRUFBRTtRQUN6QyxVQUFVLENBQUMsUUFBUSxHQUFHLG1CQUFtQixDQUFDO1FBQzFDLENBQUMsbUJBQUEsVUFBVSxFQUF3QixDQUFDLENBQUMsU0FBUyxHQUFHLGFBQWEsRUFBRSxDQUFDO0tBQ2xFO0FBQ0gsQ0FBQzs7OztBQUVELFNBQVMsYUFBYTtJQUNwQjs7OztJQUFPLFNBQVMsMENBQTBDOztjQUNsRCxrQkFBa0IsR0FBRyxxQkFBcUIsQ0FBQyxJQUFJLENBQUM7O2NBQ2hELE9BQU8sR0FBRyxrQkFBa0IsSUFBSSxrQkFBa0IsQ0FBQyxPQUFPO1FBRWhFLElBQUksT0FBTyxFQUFFOztrQkFDTCxRQUFRLEdBQUcsbUJBQUEsa0JBQWtCLEVBQUUsQ0FBQyxRQUFRO1lBQzlDLElBQUksUUFBUSxLQUFLLFNBQVMsRUFBRTtnQkFDMUIsbUJBQUEsa0JBQWtCLEVBQUUsQ0FBQyxRQUFRLEdBQUcsT0FBTyxDQUFDO2FBQ3pDO2lCQUFNO2dCQUNMLHlGQUF5RjtnQkFDekYsbUNBQW1DO2dCQUNuQyxLQUFLLElBQUksR0FBRyxJQUFJLE9BQU8sRUFBRTtvQkFDdkIsUUFBUSxDQUFDLEdBQUcsQ0FBQyxHQUFHLE9BQU8sQ0FBQyxHQUFHLENBQUMsQ0FBQztpQkFDOUI7YUFDRjtZQUNELG1CQUFBLGtCQUFrQixFQUFFLENBQUMsT0FBTyxHQUFHLElBQUksQ0FBQztZQUNwQyxJQUFJLENBQUMsV0FBVyxDQUFDLE9BQU8sQ0FBQyxDQUFDO1NBQzNCO0lBQ0gsQ0FBQyxFQUFDO0FBQ0osQ0FBQzs7Ozs7Ozs7OztBQUVELFNBQVMsbUJBQW1CLENBQ0QsUUFBVyxFQUFFLEtBQVUsRUFBRSxVQUFrQixFQUFFLFdBQW1COztVQUNuRixrQkFBa0IsR0FBRyxxQkFBcUIsQ0FBQyxRQUFRLENBQUM7UUFDdEQscUJBQXFCLENBQUMsUUFBUSxFQUFFLEVBQUMsUUFBUSxFQUFFLFNBQVMsRUFBRSxPQUFPLEVBQUUsSUFBSSxFQUFDLENBQUM7O1VBQ25FLE9BQU8sR0FBRyxrQkFBa0IsQ0FBQyxPQUFPLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxPQUFPLEdBQUcsRUFBRSxDQUFDOztVQUN6RSxRQUFRLEdBQUcsa0JBQWtCLENBQUMsUUFBUTs7VUFFdEMsWUFBWSxHQUFHLENBQUMsbUJBQUEsSUFBSSxDQUFDLGNBQWMsRUFBMEIsQ0FBQyxDQUFDLFVBQVUsQ0FBQzs7VUFDMUUsY0FBYyxHQUFHLFFBQVEsQ0FBQyxZQUFZLENBQUM7SUFDN0MsT0FBTyxDQUFDLFlBQVksQ0FBQyxHQUFHLElBQUksWUFBWSxDQUNwQyxjQUFjLElBQUksY0FBYyxDQUFDLFlBQVksRUFBRSxLQUFLLEVBQUUsUUFBUSxLQUFLLFNBQVMsQ0FBQyxDQUFDO0lBRWxGLENBQUMsbUJBQUEsUUFBUSxFQUFPLENBQUMsQ0FBQyxXQUFXLENBQUMsR0FBRyxLQUFLLENBQUM7QUFDekMsQ0FBQzs7TUFFSyxvQkFBb0IsR0FBRyxxQkFBcUI7Ozs7O0FBRWxELFNBQVMscUJBQXFCLENBQUMsUUFBYTtJQUMxQyxPQUFPLFFBQVEsQ0FBQyxvQkFBb0IsQ0FBQyxJQUFJLElBQUksQ0FBQztBQUNoRCxDQUFDOzs7Ozs7QUFFRCxTQUFTLHFCQUFxQixDQUFDLFFBQWEsRUFBRSxLQUEyQjtJQUN2RSxPQUFPLFFBQVEsQ0FBQyxvQkFBb0IsQ0FBQyxHQUFHLEtBQUssQ0FBQztBQUNoRCxDQUFDOzs7O0FBRUQsbUNBR0M7OztJQUZDLHdDQUF3Qjs7SUFDeEIsdUNBQTRCIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge09uQ2hhbmdlc30gZnJvbSAnLi4vLi4vaW50ZXJmYWNlL2xpZmVjeWNsZV9ob29rcyc7XG5pbXBvcnQge1NpbXBsZUNoYW5nZSwgU2ltcGxlQ2hhbmdlc30gZnJvbSAnLi4vLi4vaW50ZXJmYWNlL3NpbXBsZV9jaGFuZ2UnO1xuaW1wb3J0IHtFTVBUWV9PQkp9IGZyb20gJy4uL2VtcHR5JztcbmltcG9ydCB7RGlyZWN0aXZlRGVmLCBEaXJlY3RpdmVEZWZGZWF0dXJlfSBmcm9tICcuLi9pbnRlcmZhY2VzL2RlZmluaXRpb24nO1xuXG5jb25zdCBQUklWQVRFX1BSRUZJWCA9ICdfX25nT25DaGFuZ2VzXyc7XG5cbnR5cGUgT25DaGFuZ2VzRXhwYW5kbyA9IE9uQ2hhbmdlcyAmIHtcbiAgX19uZ09uQ2hhbmdlc186IFNpbXBsZUNoYW5nZXN8bnVsbHx1bmRlZmluZWQ7XG4gIC8vIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTpuby1hbnkgQ2FuIGhvbGQgYW55IHZhbHVlXG4gIFtrZXk6IHN0cmluZ106IGFueTtcbn07XG5cbi8qKlxuICogVGhlIE5nT25DaGFuZ2VzRmVhdHVyZSBkZWNvcmF0ZXMgYSBjb21wb25lbnQgd2l0aCBzdXBwb3J0IGZvciB0aGUgbmdPbkNoYW5nZXNcbiAqIGxpZmVjeWNsZSBob29rLCBzbyBpdCBzaG91bGQgYmUgaW5jbHVkZWQgaW4gYW55IGNvbXBvbmVudCB0aGF0IGltcGxlbWVudHNcbiAqIHRoYXQgaG9vay5cbiAqXG4gKiBJZiB0aGUgY29tcG9uZW50IG9yIGRpcmVjdGl2ZSB1c2VzIGluaGVyaXRhbmNlLCB0aGUgTmdPbkNoYW5nZXNGZWF0dXJlIE1VU1RcbiAqIGJlIGluY2x1ZGVkIGFzIGEgZmVhdHVyZSBBRlRFUiB7QGxpbmsgSW5oZXJpdERlZmluaXRpb25GZWF0dXJlfSwgb3RoZXJ3aXNlXG4gKiBpbmhlcml0ZWQgcHJvcGVydGllcyB3aWxsIG5vdCBiZSBwcm9wYWdhdGVkIHRvIHRoZSBuZ09uQ2hhbmdlcyBsaWZlY3ljbGVcbiAqIGhvb2suXG4gKlxuICogRXhhbXBsZSB1c2FnZTpcbiAqXG4gKiBgYGBcbiAqIHN0YXRpYyDJtWNtcCA9IGRlZmluZUNvbXBvbmVudCh7XG4gKiAgIC4uLlxuICogICBpbnB1dHM6IHtuYW1lOiAncHVibGljTmFtZSd9LFxuICogICBmZWF0dXJlczogW05nT25DaGFuZ2VzRmVhdHVyZSgpXVxuICogfSk7XG4gKiBgYGBcbiAqXG4gKiBAY29kZUdlbkFwaVxuICovXG5leHBvcnQgZnVuY3Rpb24gybXJtU5nT25DaGFuZ2VzRmVhdHVyZTxUPigpOiBEaXJlY3RpdmVEZWZGZWF0dXJlIHtcbiAgLy8gVGhpcyBvcHRpb24gZW5zdXJlcyB0aGF0IHRoZSBuZ09uQ2hhbmdlcyBsaWZlY3ljbGUgaG9vayB3aWxsIGJlIGluaGVyaXRlZFxuICAvLyBmcm9tIHN1cGVyY2xhc3NlcyAoaW4gSW5oZXJpdERlZmluaXRpb25GZWF0dXJlKS5cbiAgKE5nT25DaGFuZ2VzRmVhdHVyZUltcGwgYXMgRGlyZWN0aXZlRGVmRmVhdHVyZSkubmdJbmhlcml0ID0gdHJ1ZTtcbiAgcmV0dXJuIE5nT25DaGFuZ2VzRmVhdHVyZUltcGw7XG59XG5cbmZ1bmN0aW9uIE5nT25DaGFuZ2VzRmVhdHVyZUltcGw8VD4oZGVmaW5pdGlvbjogRGlyZWN0aXZlRGVmPFQ+KTogdm9pZCB7XG4gIGlmIChkZWZpbml0aW9uLnR5cGUucHJvdG90eXBlLm5nT25DaGFuZ2VzKSB7XG4gICAgZGVmaW5pdGlvbi5zZXRJbnB1dCA9IG5nT25DaGFuZ2VzU2V0SW5wdXQ7XG4gICAgKGRlZmluaXRpb24gYXN7b25DaGFuZ2VzOiBGdW5jdGlvbn0pLm9uQ2hhbmdlcyA9IHdyYXBPbkNoYW5nZXMoKTtcbiAgfVxufVxuXG5mdW5jdGlvbiB3cmFwT25DaGFuZ2VzKCkge1xuICByZXR1cm4gZnVuY3Rpb24gd3JhcE9uQ2hhbmdlc0hvb2tfaW5QcmV2aW91c0NoYW5nZXNTdG9yYWdlKHRoaXM6IE9uQ2hhbmdlcykge1xuICAgIGNvbnN0IHNpbXBsZUNoYW5nZXNTdG9yZSA9IGdldFNpbXBsZUNoYW5nZXNTdG9yZSh0aGlzKTtcbiAgICBjb25zdCBjdXJyZW50ID0gc2ltcGxlQ2hhbmdlc1N0b3JlICYmIHNpbXBsZUNoYW5nZXNTdG9yZS5jdXJyZW50O1xuXG4gICAgaWYgKGN1cnJlbnQpIHtcbiAgICAgIGNvbnN0IHByZXZpb3VzID0gc2ltcGxlQ2hhbmdlc1N0b3JlICEucHJldmlvdXM7XG4gICAgICBpZiAocHJldmlvdXMgPT09IEVNUFRZX09CSikge1xuICAgICAgICBzaW1wbGVDaGFuZ2VzU3RvcmUgIS5wcmV2aW91cyA9IGN1cnJlbnQ7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICAvLyBOZXcgY2hhbmdlcyBhcmUgY29waWVkIHRvIHRoZSBwcmV2aW91cyBzdG9yZSwgc28gdGhhdCB3ZSBkb24ndCBsb3NlIGhpc3RvcnkgZm9yIGlucHV0c1xuICAgICAgICAvLyB3aGljaCB3ZXJlIG5vdCBjaGFuZ2VkIHRoaXMgdGltZVxuICAgICAgICBmb3IgKGxldCBrZXkgaW4gY3VycmVudCkge1xuICAgICAgICAgIHByZXZpb3VzW2tleV0gPSBjdXJyZW50W2tleV07XG4gICAgICAgIH1cbiAgICAgIH1cbiAgICAgIHNpbXBsZUNoYW5nZXNTdG9yZSAhLmN1cnJlbnQgPSBudWxsO1xuICAgICAgdGhpcy5uZ09uQ2hhbmdlcyhjdXJyZW50KTtcbiAgICB9XG4gIH07XG59XG5cbmZ1bmN0aW9uIG5nT25DaGFuZ2VzU2V0SW5wdXQ8VD4oXG4gICAgdGhpczogRGlyZWN0aXZlRGVmPFQ+LCBpbnN0YW5jZTogVCwgdmFsdWU6IGFueSwgcHVibGljTmFtZTogc3RyaW5nLCBwcml2YXRlTmFtZTogc3RyaW5nKTogdm9pZCB7XG4gIGNvbnN0IHNpbXBsZUNoYW5nZXNTdG9yZSA9IGdldFNpbXBsZUNoYW5nZXNTdG9yZShpbnN0YW5jZSkgfHxcbiAgICAgIHNldFNpbXBsZUNoYW5nZXNTdG9yZShpbnN0YW5jZSwge3ByZXZpb3VzOiBFTVBUWV9PQkosIGN1cnJlbnQ6IG51bGx9KTtcbiAgY29uc3QgY3VycmVudCA9IHNpbXBsZUNoYW5nZXNTdG9yZS5jdXJyZW50IHx8IChzaW1wbGVDaGFuZ2VzU3RvcmUuY3VycmVudCA9IHt9KTtcbiAgY29uc3QgcHJldmlvdXMgPSBzaW1wbGVDaGFuZ2VzU3RvcmUucHJldmlvdXM7XG5cbiAgY29uc3QgZGVjbGFyZWROYW1lID0gKHRoaXMuZGVjbGFyZWRJbnB1dHMgYXN7W2tleTogc3RyaW5nXTogc3RyaW5nfSlbcHVibGljTmFtZV07XG4gIGNvbnN0IHByZXZpb3VzQ2hhbmdlID0gcHJldmlvdXNbZGVjbGFyZWROYW1lXTtcbiAgY3VycmVudFtkZWNsYXJlZE5hbWVdID0gbmV3IFNpbXBsZUNoYW5nZShcbiAgICAgIHByZXZpb3VzQ2hhbmdlICYmIHByZXZpb3VzQ2hhbmdlLmN1cnJlbnRWYWx1ZSwgdmFsdWUsIHByZXZpb3VzID09PSBFTVBUWV9PQkopO1xuXG4gIChpbnN0YW5jZSBhcyBhbnkpW3ByaXZhdGVOYW1lXSA9IHZhbHVlO1xufVxuXG5jb25zdCBTSU1QTEVfQ0hBTkdFU19TVE9SRSA9ICdfX25nU2ltcGxlQ2hhbmdlc19fJztcblxuZnVuY3Rpb24gZ2V0U2ltcGxlQ2hhbmdlc1N0b3JlKGluc3RhbmNlOiBhbnkpOiBudWxsfE5nU2ltcGxlQ2hhbmdlc1N0b3JlIHtcbiAgcmV0dXJuIGluc3RhbmNlW1NJTVBMRV9DSEFOR0VTX1NUT1JFXSB8fCBudWxsO1xufVxuXG5mdW5jdGlvbiBzZXRTaW1wbGVDaGFuZ2VzU3RvcmUoaW5zdGFuY2U6IGFueSwgc3RvcmU6IE5nU2ltcGxlQ2hhbmdlc1N0b3JlKTogTmdTaW1wbGVDaGFuZ2VzU3RvcmUge1xuICByZXR1cm4gaW5zdGFuY2VbU0lNUExFX0NIQU5HRVNfU1RPUkVdID0gc3RvcmU7XG59XG5cbmludGVyZmFjZSBOZ1NpbXBsZUNoYW5nZXNTdG9yZSB7XG4gIHByZXZpb3VzOiBTaW1wbGVDaGFuZ2VzO1xuICBjdXJyZW50OiBTaW1wbGVDaGFuZ2VzfG51bGw7XG59XG4iXX0=