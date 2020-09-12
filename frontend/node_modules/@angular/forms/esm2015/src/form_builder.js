/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Injectable } from '@angular/core';
import { FormArray, FormControl, FormGroup } from './model';
function isAbstractControlOptions(options) {
    return options.asyncValidators !== undefined ||
        options.validators !== undefined ||
        options.updateOn !== undefined;
}
/**
 * @description
 * Creates an `AbstractControl` from a user-specified configuration.
 *
 * The `FormBuilder` provides syntactic sugar that shortens creating instances of a `FormControl`,
 * `FormGroup`, or `FormArray`. It reduces the amount of boilerplate needed to build complex
 * forms.
 *
 * @see [Reactive Forms Guide](/guide/reactive-forms)
 *
 * @publicApi
 */
export class FormBuilder {
    /**
     * @description
     * Construct a new `FormGroup` instance.
     *
     * @param controlsConfig A collection of child controls. The key for each child is the name
     * under which it is registered.
     *
     * @param options Configuration options object for the `FormGroup`. The object can
     * have two shapes:
     *
     * 1) `AbstractControlOptions` object (preferred), which consists of:
     * * `validators`: A synchronous validator function, or an array of validator functions
     * * `asyncValidators`: A single async validator or array of async validator functions
     * * `updateOn`: The event upon which the control should be updated (options: 'change' | 'blur' |
     * submit')
     *
     * 2) Legacy configuration object, which consists of:
     * * `validator`: A synchronous validator function, or an array of validator functions
     * * `asyncValidator`: A single async validator or array of async validator functions
     *
     */
    group(controlsConfig, options = null) {
        const controls = this._reduceControls(controlsConfig);
        let validators = null;
        let asyncValidators = null;
        let updateOn = undefined;
        if (options != null) {
            if (isAbstractControlOptions(options)) {
                // `options` are `AbstractControlOptions`
                validators = options.validators != null ? options.validators : null;
                asyncValidators = options.asyncValidators != null ? options.asyncValidators : null;
                updateOn = options.updateOn != null ? options.updateOn : undefined;
            }
            else {
                // `options` are legacy form group options
                validators = options['validator'] != null ? options['validator'] : null;
                asyncValidators = options['asyncValidator'] != null ? options['asyncValidator'] : null;
            }
        }
        return new FormGroup(controls, { asyncValidators, updateOn, validators });
    }
    /**
     * @description
     * Construct a new `FormControl` with the given state, validators and options.
     *
     * @param formState Initializes the control with an initial state value, or
     * with an object that contains both a value and a disabled status.
     *
     * @param validatorOrOpts A synchronous validator function, or an array of
     * such functions, or an `AbstractControlOptions` object that contains
     * validation functions and a validation trigger.
     *
     * @param asyncValidator A single async validator or array of async validator
     * functions.
     *
     * @usageNotes
     *
     * ### Initialize a control as disabled
     *
     * The following example returns a control with an initial value in a disabled state.
     *
     * <code-example path="forms/ts/formBuilder/form_builder_example.ts" region="disabled-control">
     * </code-example>
     */
    control(formState, validatorOrOpts, asyncValidator) {
        return new FormControl(formState, validatorOrOpts, asyncValidator);
    }
    /**
     * Constructs a new `FormArray` from the given array of configurations,
     * validators and options.
     *
     * @param controlsConfig An array of child controls or control configs. Each
     * child control is given an index when it is registered.
     *
     * @param validatorOrOpts A synchronous validator function, or an array of
     * such functions, or an `AbstractControlOptions` object that contains
     * validation functions and a validation trigger.
     *
     * @param asyncValidator A single async validator or array of async validator
     * functions.
     */
    array(controlsConfig, validatorOrOpts, asyncValidator) {
        const controls = controlsConfig.map(c => this._createControl(c));
        return new FormArray(controls, validatorOrOpts, asyncValidator);
    }
    /** @internal */
    _reduceControls(controlsConfig) {
        const controls = {};
        Object.keys(controlsConfig).forEach(controlName => {
            controls[controlName] = this._createControl(controlsConfig[controlName]);
        });
        return controls;
    }
    /** @internal */
    _createControl(controlConfig) {
        if (controlConfig instanceof FormControl || controlConfig instanceof FormGroup ||
            controlConfig instanceof FormArray) {
            return controlConfig;
        }
        else if (Array.isArray(controlConfig)) {
            const value = controlConfig[0];
            const validator = controlConfig.length > 1 ? controlConfig[1] : null;
            const asyncValidator = controlConfig.length > 2 ? controlConfig[2] : null;
            return this.control(value, validator, asyncValidator);
        }
        else {
            return this.control(controlConfig);
        }
    }
}
FormBuilder.decorators = [
    { type: Injectable }
];
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZm9ybV9idWlsZGVyLmpzIiwic291cmNlUm9vdCI6IiIsInNvdXJjZXMiOlsiLi4vLi4vLi4vLi4vLi4vLi4vcGFja2FnZXMvZm9ybXMvc3JjL2Zvcm1fYnVpbGRlci50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsVUFBVSxFQUFDLE1BQU0sZUFBZSxDQUFDO0FBR3pDLE9BQU8sRUFBMEMsU0FBUyxFQUFFLFdBQVcsRUFBRSxTQUFTLEVBQVksTUFBTSxTQUFTLENBQUM7QUFFOUcsU0FBUyx3QkFBd0IsQ0FBQyxPQUNvQjtJQUNwRCxPQUFnQyxPQUFRLENBQUMsZUFBZSxLQUFLLFNBQVM7UUFDekMsT0FBUSxDQUFDLFVBQVUsS0FBSyxTQUFTO1FBQ2pDLE9BQVEsQ0FBQyxRQUFRLEtBQUssU0FBUyxDQUFDO0FBQy9ELENBQUM7QUFFRDs7Ozs7Ozs7Ozs7R0FXRztBQUVILE1BQU0sT0FBTyxXQUFXO0lBQ3RCOzs7Ozs7Ozs7Ozs7Ozs7Ozs7OztPQW9CRztJQUNILEtBQUssQ0FDRCxjQUFvQyxFQUNwQyxVQUE0RCxJQUFJO1FBQ2xFLE1BQU0sUUFBUSxHQUFHLElBQUksQ0FBQyxlQUFlLENBQUMsY0FBYyxDQUFDLENBQUM7UUFFdEQsSUFBSSxVQUFVLEdBQW1DLElBQUksQ0FBQztRQUN0RCxJQUFJLGVBQWUsR0FBNkMsSUFBSSxDQUFDO1FBQ3JFLElBQUksUUFBUSxHQUF3QixTQUFTLENBQUM7UUFFOUMsSUFBSSxPQUFPLElBQUksSUFBSSxFQUFFO1lBQ25CLElBQUksd0JBQXdCLENBQUMsT0FBTyxDQUFDLEVBQUU7Z0JBQ3JDLHlDQUF5QztnQkFDekMsVUFBVSxHQUFHLE9BQU8sQ0FBQyxVQUFVLElBQUksSUFBSSxDQUFDLENBQUMsQ0FBQyxPQUFPLENBQUMsVUFBVSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUM7Z0JBQ3BFLGVBQWUsR0FBRyxPQUFPLENBQUMsZUFBZSxJQUFJLElBQUksQ0FBQyxDQUFDLENBQUMsT0FBTyxDQUFDLGVBQWUsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDO2dCQUNuRixRQUFRLEdBQUcsT0FBTyxDQUFDLFFBQVEsSUFBSSxJQUFJLENBQUMsQ0FBQyxDQUFDLE9BQU8sQ0FBQyxRQUFRLENBQUMsQ0FBQyxDQUFDLFNBQVMsQ0FBQzthQUNwRTtpQkFBTTtnQkFDTCwwQ0FBMEM7Z0JBQzFDLFVBQVUsR0FBRyxPQUFPLENBQUMsV0FBVyxDQUFDLElBQUksSUFBSSxDQUFDLENBQUMsQ0FBQyxPQUFPLENBQUMsV0FBVyxDQUFDLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQztnQkFDeEUsZUFBZSxHQUFHLE9BQU8sQ0FBQyxnQkFBZ0IsQ0FBQyxJQUFJLElBQUksQ0FBQyxDQUFDLENBQUMsT0FBTyxDQUFDLGdCQUFnQixDQUFDLENBQUMsQ0FBQyxDQUFDLElBQUksQ0FBQzthQUN4RjtTQUNGO1FBRUQsT0FBTyxJQUFJLFNBQVMsQ0FBQyxRQUFRLEVBQUUsRUFBQyxlQUFlLEVBQUUsUUFBUSxFQUFFLFVBQVUsRUFBQyxDQUFDLENBQUM7SUFDMUUsQ0FBQztJQUVEOzs7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7O09Bc0JHO0lBQ0gsT0FBTyxDQUNILFNBQWMsRUFBRSxlQUF1RSxFQUN2RixjQUF5RDtRQUMzRCxPQUFPLElBQUksV0FBVyxDQUFDLFNBQVMsRUFBRSxlQUFlLEVBQUUsY0FBYyxDQUFDLENBQUM7SUFDckUsQ0FBQztJQUVEOzs7Ozs7Ozs7Ozs7O09BYUc7SUFDSCxLQUFLLENBQ0QsY0FBcUIsRUFDckIsZUFBdUUsRUFDdkUsY0FBeUQ7UUFDM0QsTUFBTSxRQUFRLEdBQUcsY0FBYyxDQUFDLEdBQUcsQ0FBQyxDQUFDLENBQUMsRUFBRSxDQUFDLElBQUksQ0FBQyxjQUFjLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQztRQUNqRSxPQUFPLElBQUksU0FBUyxDQUFDLFFBQVEsRUFBRSxlQUFlLEVBQUUsY0FBYyxDQUFDLENBQUM7SUFDbEUsQ0FBQztJQUVELGdCQUFnQjtJQUNoQixlQUFlLENBQUMsY0FBa0M7UUFDaEQsTUFBTSxRQUFRLEdBQXFDLEVBQUUsQ0FBQztRQUN0RCxNQUFNLENBQUMsSUFBSSxDQUFDLGNBQWMsQ0FBQyxDQUFDLE9BQU8sQ0FBQyxXQUFXLENBQUMsRUFBRTtZQUNoRCxRQUFRLENBQUMsV0FBVyxDQUFDLEdBQUcsSUFBSSxDQUFDLGNBQWMsQ0FBQyxjQUFjLENBQUMsV0FBVyxDQUFDLENBQUMsQ0FBQztRQUMzRSxDQUFDLENBQUMsQ0FBQztRQUNILE9BQU8sUUFBUSxDQUFDO0lBQ2xCLENBQUM7SUFFRCxnQkFBZ0I7SUFDaEIsY0FBYyxDQUFDLGFBQWtCO1FBQy9CLElBQUksYUFBYSxZQUFZLFdBQVcsSUFBSSxhQUFhLFlBQVksU0FBUztZQUMxRSxhQUFhLFlBQVksU0FBUyxFQUFFO1lBQ3RDLE9BQU8sYUFBYSxDQUFDO1NBRXRCO2FBQU0sSUFBSSxLQUFLLENBQUMsT0FBTyxDQUFDLGFBQWEsQ0FBQyxFQUFFO1lBQ3ZDLE1BQU0sS0FBSyxHQUFHLGFBQWEsQ0FBQyxDQUFDLENBQUMsQ0FBQztZQUMvQixNQUFNLFNBQVMsR0FBZ0IsYUFBYSxDQUFDLE1BQU0sR0FBRyxDQUFDLENBQUMsQ0FBQyxDQUFDLGFBQWEsQ0FBQyxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDO1lBQ2xGLE1BQU0sY0FBYyxHQUFxQixhQUFhLENBQUMsTUFBTSxHQUFHLENBQUMsQ0FBQyxDQUFDLENBQUMsYUFBYSxDQUFDLENBQUMsQ0FBQyxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUM7WUFDNUYsT0FBTyxJQUFJLENBQUMsT0FBTyxDQUFDLEtBQUssRUFBRSxTQUFTLEVBQUUsY0FBYyxDQUFDLENBQUM7U0FFdkQ7YUFBTTtZQUNMLE9BQU8sSUFBSSxDQUFDLE9BQU8sQ0FBQyxhQUFhLENBQUMsQ0FBQztTQUNwQztJQUNILENBQUM7OztZQTNIRixVQUFVIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7SW5qZWN0YWJsZX0gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbmltcG9ydCB7QXN5bmNWYWxpZGF0b3JGbiwgVmFsaWRhdG9yRm59IGZyb20gJy4vZGlyZWN0aXZlcy92YWxpZGF0b3JzJztcbmltcG9ydCB7QWJzdHJhY3RDb250cm9sLCBBYnN0cmFjdENvbnRyb2xPcHRpb25zLCBGb3JtQXJyYXksIEZvcm1Db250cm9sLCBGb3JtR3JvdXAsIEZvcm1Ib29rc30gZnJvbSAnLi9tb2RlbCc7XG5cbmZ1bmN0aW9uIGlzQWJzdHJhY3RDb250cm9sT3B0aW9ucyhvcHRpb25zOiBBYnN0cmFjdENvbnRyb2xPcHRpb25zfFxuICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHtba2V5OiBzdHJpbmddOiBhbnl9KTogb3B0aW9ucyBpcyBBYnN0cmFjdENvbnRyb2xPcHRpb25zIHtcbiAgcmV0dXJuICg8QWJzdHJhY3RDb250cm9sT3B0aW9ucz5vcHRpb25zKS5hc3luY1ZhbGlkYXRvcnMgIT09IHVuZGVmaW5lZCB8fFxuICAgICAgKDxBYnN0cmFjdENvbnRyb2xPcHRpb25zPm9wdGlvbnMpLnZhbGlkYXRvcnMgIT09IHVuZGVmaW5lZCB8fFxuICAgICAgKDxBYnN0cmFjdENvbnRyb2xPcHRpb25zPm9wdGlvbnMpLnVwZGF0ZU9uICE9PSB1bmRlZmluZWQ7XG59XG5cbi8qKlxuICogQGRlc2NyaXB0aW9uXG4gKiBDcmVhdGVzIGFuIGBBYnN0cmFjdENvbnRyb2xgIGZyb20gYSB1c2VyLXNwZWNpZmllZCBjb25maWd1cmF0aW9uLlxuICpcbiAqIFRoZSBgRm9ybUJ1aWxkZXJgIHByb3ZpZGVzIHN5bnRhY3RpYyBzdWdhciB0aGF0IHNob3J0ZW5zIGNyZWF0aW5nIGluc3RhbmNlcyBvZiBhIGBGb3JtQ29udHJvbGAsXG4gKiBgRm9ybUdyb3VwYCwgb3IgYEZvcm1BcnJheWAuIEl0IHJlZHVjZXMgdGhlIGFtb3VudCBvZiBib2lsZXJwbGF0ZSBuZWVkZWQgdG8gYnVpbGQgY29tcGxleFxuICogZm9ybXMuXG4gKlxuICogQHNlZSBbUmVhY3RpdmUgRm9ybXMgR3VpZGVdKC9ndWlkZS9yZWFjdGl2ZS1mb3JtcylcbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbkBJbmplY3RhYmxlKClcbmV4cG9ydCBjbGFzcyBGb3JtQnVpbGRlciB7XG4gIC8qKlxuICAgKiBAZGVzY3JpcHRpb25cbiAgICogQ29uc3RydWN0IGEgbmV3IGBGb3JtR3JvdXBgIGluc3RhbmNlLlxuICAgKlxuICAgKiBAcGFyYW0gY29udHJvbHNDb25maWcgQSBjb2xsZWN0aW9uIG9mIGNoaWxkIGNvbnRyb2xzLiBUaGUga2V5IGZvciBlYWNoIGNoaWxkIGlzIHRoZSBuYW1lXG4gICAqIHVuZGVyIHdoaWNoIGl0IGlzIHJlZ2lzdGVyZWQuXG4gICAqXG4gICAqIEBwYXJhbSBvcHRpb25zIENvbmZpZ3VyYXRpb24gb3B0aW9ucyBvYmplY3QgZm9yIHRoZSBgRm9ybUdyb3VwYC4gVGhlIG9iamVjdCBjYW5cbiAgICogaGF2ZSB0d28gc2hhcGVzOlxuICAgKlxuICAgKiAxKSBgQWJzdHJhY3RDb250cm9sT3B0aW9uc2Agb2JqZWN0IChwcmVmZXJyZWQpLCB3aGljaCBjb25zaXN0cyBvZjpcbiAgICogKiBgdmFsaWRhdG9yc2A6IEEgc3luY2hyb25vdXMgdmFsaWRhdG9yIGZ1bmN0aW9uLCBvciBhbiBhcnJheSBvZiB2YWxpZGF0b3IgZnVuY3Rpb25zXG4gICAqICogYGFzeW5jVmFsaWRhdG9yc2A6IEEgc2luZ2xlIGFzeW5jIHZhbGlkYXRvciBvciBhcnJheSBvZiBhc3luYyB2YWxpZGF0b3IgZnVuY3Rpb25zXG4gICAqICogYHVwZGF0ZU9uYDogVGhlIGV2ZW50IHVwb24gd2hpY2ggdGhlIGNvbnRyb2wgc2hvdWxkIGJlIHVwZGF0ZWQgKG9wdGlvbnM6ICdjaGFuZ2UnIHwgJ2JsdXInIHxcbiAgICogc3VibWl0JylcbiAgICpcbiAgICogMikgTGVnYWN5IGNvbmZpZ3VyYXRpb24gb2JqZWN0LCB3aGljaCBjb25zaXN0cyBvZjpcbiAgICogKiBgdmFsaWRhdG9yYDogQSBzeW5jaHJvbm91cyB2YWxpZGF0b3IgZnVuY3Rpb24sIG9yIGFuIGFycmF5IG9mIHZhbGlkYXRvciBmdW5jdGlvbnNcbiAgICogKiBgYXN5bmNWYWxpZGF0b3JgOiBBIHNpbmdsZSBhc3luYyB2YWxpZGF0b3Igb3IgYXJyYXkgb2YgYXN5bmMgdmFsaWRhdG9yIGZ1bmN0aW9uc1xuICAgKlxuICAgKi9cbiAgZ3JvdXAoXG4gICAgICBjb250cm9sc0NvbmZpZzoge1trZXk6IHN0cmluZ106IGFueX0sXG4gICAgICBvcHRpb25zOiBBYnN0cmFjdENvbnRyb2xPcHRpb25zfHtba2V5OiBzdHJpbmddOiBhbnl9fG51bGwgPSBudWxsKTogRm9ybUdyb3VwIHtcbiAgICBjb25zdCBjb250cm9scyA9IHRoaXMuX3JlZHVjZUNvbnRyb2xzKGNvbnRyb2xzQ29uZmlnKTtcblxuICAgIGxldCB2YWxpZGF0b3JzOiBWYWxpZGF0b3JGbnxWYWxpZGF0b3JGbltdfG51bGwgPSBudWxsO1xuICAgIGxldCBhc3luY1ZhbGlkYXRvcnM6IEFzeW5jVmFsaWRhdG9yRm58QXN5bmNWYWxpZGF0b3JGbltdfG51bGwgPSBudWxsO1xuICAgIGxldCB1cGRhdGVPbjogRm9ybUhvb2tzfHVuZGVmaW5lZCA9IHVuZGVmaW5lZDtcblxuICAgIGlmIChvcHRpb25zICE9IG51bGwpIHtcbiAgICAgIGlmIChpc0Fic3RyYWN0Q29udHJvbE9wdGlvbnMob3B0aW9ucykpIHtcbiAgICAgICAgLy8gYG9wdGlvbnNgIGFyZSBgQWJzdHJhY3RDb250cm9sT3B0aW9uc2BcbiAgICAgICAgdmFsaWRhdG9ycyA9IG9wdGlvbnMudmFsaWRhdG9ycyAhPSBudWxsID8gb3B0aW9ucy52YWxpZGF0b3JzIDogbnVsbDtcbiAgICAgICAgYXN5bmNWYWxpZGF0b3JzID0gb3B0aW9ucy5hc3luY1ZhbGlkYXRvcnMgIT0gbnVsbCA/IG9wdGlvbnMuYXN5bmNWYWxpZGF0b3JzIDogbnVsbDtcbiAgICAgICAgdXBkYXRlT24gPSBvcHRpb25zLnVwZGF0ZU9uICE9IG51bGwgPyBvcHRpb25zLnVwZGF0ZU9uIDogdW5kZWZpbmVkO1xuICAgICAgfSBlbHNlIHtcbiAgICAgICAgLy8gYG9wdGlvbnNgIGFyZSBsZWdhY3kgZm9ybSBncm91cCBvcHRpb25zXG4gICAgICAgIHZhbGlkYXRvcnMgPSBvcHRpb25zWyd2YWxpZGF0b3InXSAhPSBudWxsID8gb3B0aW9uc1sndmFsaWRhdG9yJ10gOiBudWxsO1xuICAgICAgICBhc3luY1ZhbGlkYXRvcnMgPSBvcHRpb25zWydhc3luY1ZhbGlkYXRvciddICE9IG51bGwgPyBvcHRpb25zWydhc3luY1ZhbGlkYXRvciddIDogbnVsbDtcbiAgICAgIH1cbiAgICB9XG5cbiAgICByZXR1cm4gbmV3IEZvcm1Hcm91cChjb250cm9scywge2FzeW5jVmFsaWRhdG9ycywgdXBkYXRlT24sIHZhbGlkYXRvcnN9KTtcbiAgfVxuXG4gIC8qKlxuICAgKiBAZGVzY3JpcHRpb25cbiAgICogQ29uc3RydWN0IGEgbmV3IGBGb3JtQ29udHJvbGAgd2l0aCB0aGUgZ2l2ZW4gc3RhdGUsIHZhbGlkYXRvcnMgYW5kIG9wdGlvbnMuXG4gICAqXG4gICAqIEBwYXJhbSBmb3JtU3RhdGUgSW5pdGlhbGl6ZXMgdGhlIGNvbnRyb2wgd2l0aCBhbiBpbml0aWFsIHN0YXRlIHZhbHVlLCBvclxuICAgKiB3aXRoIGFuIG9iamVjdCB0aGF0IGNvbnRhaW5zIGJvdGggYSB2YWx1ZSBhbmQgYSBkaXNhYmxlZCBzdGF0dXMuXG4gICAqXG4gICAqIEBwYXJhbSB2YWxpZGF0b3JPck9wdHMgQSBzeW5jaHJvbm91cyB2YWxpZGF0b3IgZnVuY3Rpb24sIG9yIGFuIGFycmF5IG9mXG4gICAqIHN1Y2ggZnVuY3Rpb25zLCBvciBhbiBgQWJzdHJhY3RDb250cm9sT3B0aW9uc2Agb2JqZWN0IHRoYXQgY29udGFpbnNcbiAgICogdmFsaWRhdGlvbiBmdW5jdGlvbnMgYW5kIGEgdmFsaWRhdGlvbiB0cmlnZ2VyLlxuICAgKlxuICAgKiBAcGFyYW0gYXN5bmNWYWxpZGF0b3IgQSBzaW5nbGUgYXN5bmMgdmFsaWRhdG9yIG9yIGFycmF5IG9mIGFzeW5jIHZhbGlkYXRvclxuICAgKiBmdW5jdGlvbnMuXG4gICAqXG4gICAqIEB1c2FnZU5vdGVzXG4gICAqXG4gICAqICMjIyBJbml0aWFsaXplIGEgY29udHJvbCBhcyBkaXNhYmxlZFxuICAgKlxuICAgKiBUaGUgZm9sbG93aW5nIGV4YW1wbGUgcmV0dXJucyBhIGNvbnRyb2wgd2l0aCBhbiBpbml0aWFsIHZhbHVlIGluIGEgZGlzYWJsZWQgc3RhdGUuXG4gICAqXG4gICAqIDxjb2RlLWV4YW1wbGUgcGF0aD1cImZvcm1zL3RzL2Zvcm1CdWlsZGVyL2Zvcm1fYnVpbGRlcl9leGFtcGxlLnRzXCIgcmVnaW9uPVwiZGlzYWJsZWQtY29udHJvbFwiPlxuICAgKiA8L2NvZGUtZXhhbXBsZT5cbiAgICovXG4gIGNvbnRyb2woXG4gICAgICBmb3JtU3RhdGU6IGFueSwgdmFsaWRhdG9yT3JPcHRzPzogVmFsaWRhdG9yRm58VmFsaWRhdG9yRm5bXXxBYnN0cmFjdENvbnRyb2xPcHRpb25zfG51bGwsXG4gICAgICBhc3luY1ZhbGlkYXRvcj86IEFzeW5jVmFsaWRhdG9yRm58QXN5bmNWYWxpZGF0b3JGbltdfG51bGwpOiBGb3JtQ29udHJvbCB7XG4gICAgcmV0dXJuIG5ldyBGb3JtQ29udHJvbChmb3JtU3RhdGUsIHZhbGlkYXRvck9yT3B0cywgYXN5bmNWYWxpZGF0b3IpO1xuICB9XG5cbiAgLyoqXG4gICAqIENvbnN0cnVjdHMgYSBuZXcgYEZvcm1BcnJheWAgZnJvbSB0aGUgZ2l2ZW4gYXJyYXkgb2YgY29uZmlndXJhdGlvbnMsXG4gICAqIHZhbGlkYXRvcnMgYW5kIG9wdGlvbnMuXG4gICAqXG4gICAqIEBwYXJhbSBjb250cm9sc0NvbmZpZyBBbiBhcnJheSBvZiBjaGlsZCBjb250cm9scyBvciBjb250cm9sIGNvbmZpZ3MuIEVhY2hcbiAgICogY2hpbGQgY29udHJvbCBpcyBnaXZlbiBhbiBpbmRleCB3aGVuIGl0IGlzIHJlZ2lzdGVyZWQuXG4gICAqXG4gICAqIEBwYXJhbSB2YWxpZGF0b3JPck9wdHMgQSBzeW5jaHJvbm91cyB2YWxpZGF0b3IgZnVuY3Rpb24sIG9yIGFuIGFycmF5IG9mXG4gICAqIHN1Y2ggZnVuY3Rpb25zLCBvciBhbiBgQWJzdHJhY3RDb250cm9sT3B0aW9uc2Agb2JqZWN0IHRoYXQgY29udGFpbnNcbiAgICogdmFsaWRhdGlvbiBmdW5jdGlvbnMgYW5kIGEgdmFsaWRhdGlvbiB0cmlnZ2VyLlxuICAgKlxuICAgKiBAcGFyYW0gYXN5bmNWYWxpZGF0b3IgQSBzaW5nbGUgYXN5bmMgdmFsaWRhdG9yIG9yIGFycmF5IG9mIGFzeW5jIHZhbGlkYXRvclxuICAgKiBmdW5jdGlvbnMuXG4gICAqL1xuICBhcnJheShcbiAgICAgIGNvbnRyb2xzQ29uZmlnOiBhbnlbXSxcbiAgICAgIHZhbGlkYXRvck9yT3B0cz86IFZhbGlkYXRvckZufFZhbGlkYXRvckZuW118QWJzdHJhY3RDb250cm9sT3B0aW9uc3xudWxsLFxuICAgICAgYXN5bmNWYWxpZGF0b3I/OiBBc3luY1ZhbGlkYXRvckZufEFzeW5jVmFsaWRhdG9yRm5bXXxudWxsKTogRm9ybUFycmF5IHtcbiAgICBjb25zdCBjb250cm9scyA9IGNvbnRyb2xzQ29uZmlnLm1hcChjID0+IHRoaXMuX2NyZWF0ZUNvbnRyb2woYykpO1xuICAgIHJldHVybiBuZXcgRm9ybUFycmF5KGNvbnRyb2xzLCB2YWxpZGF0b3JPck9wdHMsIGFzeW5jVmFsaWRhdG9yKTtcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX3JlZHVjZUNvbnRyb2xzKGNvbnRyb2xzQ29uZmlnOiB7W2s6IHN0cmluZ106IGFueX0pOiB7W2tleTogc3RyaW5nXTogQWJzdHJhY3RDb250cm9sfSB7XG4gICAgY29uc3QgY29udHJvbHM6IHtba2V5OiBzdHJpbmddOiBBYnN0cmFjdENvbnRyb2x9ID0ge307XG4gICAgT2JqZWN0LmtleXMoY29udHJvbHNDb25maWcpLmZvckVhY2goY29udHJvbE5hbWUgPT4ge1xuICAgICAgY29udHJvbHNbY29udHJvbE5hbWVdID0gdGhpcy5fY3JlYXRlQ29udHJvbChjb250cm9sc0NvbmZpZ1tjb250cm9sTmFtZV0pO1xuICAgIH0pO1xuICAgIHJldHVybiBjb250cm9scztcbiAgfVxuXG4gIC8qKiBAaW50ZXJuYWwgKi9cbiAgX2NyZWF0ZUNvbnRyb2woY29udHJvbENvbmZpZzogYW55KTogQWJzdHJhY3RDb250cm9sIHtcbiAgICBpZiAoY29udHJvbENvbmZpZyBpbnN0YW5jZW9mIEZvcm1Db250cm9sIHx8IGNvbnRyb2xDb25maWcgaW5zdGFuY2VvZiBGb3JtR3JvdXAgfHxcbiAgICAgICAgY29udHJvbENvbmZpZyBpbnN0YW5jZW9mIEZvcm1BcnJheSkge1xuICAgICAgcmV0dXJuIGNvbnRyb2xDb25maWc7XG5cbiAgICB9IGVsc2UgaWYgKEFycmF5LmlzQXJyYXkoY29udHJvbENvbmZpZykpIHtcbiAgICAgIGNvbnN0IHZhbHVlID0gY29udHJvbENvbmZpZ1swXTtcbiAgICAgIGNvbnN0IHZhbGlkYXRvcjogVmFsaWRhdG9yRm4gPSBjb250cm9sQ29uZmlnLmxlbmd0aCA+IDEgPyBjb250cm9sQ29uZmlnWzFdIDogbnVsbDtcbiAgICAgIGNvbnN0IGFzeW5jVmFsaWRhdG9yOiBBc3luY1ZhbGlkYXRvckZuID0gY29udHJvbENvbmZpZy5sZW5ndGggPiAyID8gY29udHJvbENvbmZpZ1syXSA6IG51bGw7XG4gICAgICByZXR1cm4gdGhpcy5jb250cm9sKHZhbHVlLCB2YWxpZGF0b3IsIGFzeW5jVmFsaWRhdG9yKTtcblxuICAgIH0gZWxzZSB7XG4gICAgICByZXR1cm4gdGhpcy5jb250cm9sKGNvbnRyb2xDb25maWcpO1xuICAgIH1cbiAgfVxufVxuIl19