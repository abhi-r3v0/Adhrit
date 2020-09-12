/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { Directive, EventEmitter, forwardRef, Host, Inject, Input, Optional, Output, Self } from '@angular/core';
import { FormControl } from '../model';
import { NG_ASYNC_VALIDATORS, NG_VALIDATORS } from '../validators';
import { AbstractFormGroupDirective } from './abstract_form_group_directive';
import { ControlContainer } from './control_container';
import { NG_VALUE_ACCESSOR } from './control_value_accessor';
import { NgControl } from './ng_control';
import { NgForm } from './ng_form';
import { NgModelGroup } from './ng_model_group';
import { composeAsyncValidators, composeValidators, controlPath, isPropertyUpdated, selectValueAccessor, setUpControl } from './shared';
import { TemplateDrivenErrors } from './template_driven_errors';
export const formControlBinding = {
    provide: NgControl,
    useExisting: forwardRef(() => NgModel)
};
const ɵ0 = () => Promise.resolve(null);
/**
 * `ngModel` forces an additional change detection run when its inputs change:
 * E.g.:
 * ```
 * <div>{{myModel.valid}}</div>
 * <input [(ngModel)]="myValue" #myModel="ngModel">
 * ```
 * I.e. `ngModel` can export itself on the element and then be used in the template.
 * Normally, this would result in expressions before the `input` that use the exported directive
 * to have and old value as they have been
 * dirty checked before. As this is a very common case for `ngModel`, we added this second change
 * detection run.
 *
 * Notes:
 * - this is just one extra run no matter how many `ngModel` have been changed.
 * - this is a general problem when using `exportAs` for directives!
 */
const resolvedPromise = (ɵ0)();
/**
 * @description
 * Creates a `FormControl` instance from a domain model and binds it
 * to a form control element.
 *
 * The `FormControl` instance tracks the value, user interaction, and
 * validation status of the control and keeps the view synced with the model. If used
 * within a parent form, the directive also registers itself with the form as a child
 * control.
 *
 * This directive is used by itself or as part of a larger form. Use the
 * `ngModel` selector to activate it.
 *
 * It accepts a domain model as an optional `Input`. If you have a one-way binding
 * to `ngModel` with `[]` syntax, changing the value of the domain model in the component
 * class sets the value in the view. If you have a two-way binding with `[()]` syntax
 * (also known as 'banana-box syntax'), the value in the UI always syncs back to
 * the domain model in your class.
 *
 * To inspect the properties of the associated `FormControl` (like validity state),
 * export the directive into a local template variable using `ngModel` as the key (ex:
 * `#myVar="ngModel"`). You then access the control using the directive's `control` property, but
 * most properties used (like `valid` and `dirty`) fall through to the control anyway for direct
 * access. See a full list of properties directly available in `AbstractControlDirective`.
 *
 * @see `RadioControlValueAccessor`
 * @see `SelectControlValueAccessor`
 *
 * @usageNotes
 *
 * ### Using ngModel on a standalone control
 *
 * The following examples show a simple standalone control using `ngModel`:
 *
 * {@example forms/ts/simpleNgModel/simple_ng_model_example.ts region='Component'}
 *
 * When using the `ngModel` within `<form>` tags, you'll also need to supply a `name` attribute
 * so that the control can be registered with the parent form under that name.
 *
 * In the context of a parent form, it's often unnecessary to include one-way or two-way binding,
 * as the parent form syncs the value for you. You access its properties by exporting it into a
 * local template variable using `ngForm` such as (`#f="ngForm"`). Use the variable where
 * needed on form submission.
 *
 * If you do need to populate initial values into your form, using a one-way binding for
 * `ngModel` tends to be sufficient as long as you use the exported form's value rather
 * than the domain model's value on submit.
 *
 * ### Using ngModel within a form
 *
 * The following example shows controls using `ngModel` within a form:
 *
 * {@example forms/ts/simpleForm/simple_form_example.ts region='Component'}
 *
 * ### Using a standalone ngModel within a group
 *
 * The following example shows you how to use a standalone ngModel control
 * within a form. This controls the display of the form, but doesn't contain form data.
 *
 * ```html
 * <form>
 *   <input name="login" ngModel placeholder="Login">
 *   <input type="checkbox" ngModel [ngModelOptions]="{standalone: true}"> Show more options?
 * </form>
 * <!-- form value: {login: ''} -->
 * ```
 *
 * ### Setting the ngModel name attribute through options
 *
 * The following example shows you an alternate way to set the name attribute. The name attribute is
 * used within a custom form component, and the name `@Input` property serves a different purpose.
 *
 * ```html
 * <form>
 *   <my-person-control name="Nancy" ngModel [ngModelOptions]="{name: 'user'}">
 *   </my-person-control>
 * </form>
 * <!-- form value: {user: ''} -->
 * ```
 *
 * @ngModule FormsModule
 * @publicApi
 */
export class NgModel extends NgControl {
    constructor(parent, validators, asyncValidators, valueAccessors) {
        super();
        this.control = new FormControl();
        /** @internal */
        this._registered = false;
        /**
         * @description
         * Event emitter for producing the `ngModelChange` event after
         * the view model updates.
         */
        this.update = new EventEmitter();
        this._parent = parent;
        this._rawValidators = validators || [];
        this._rawAsyncValidators = asyncValidators || [];
        this.valueAccessor = selectValueAccessor(this, valueAccessors);
    }
    /**
     * @description
     * A lifecycle method called when the directive's inputs change. For internal use
     * only.
     *
     * @param changes A object of key/value pairs for the set of changed inputs.
     */
    ngOnChanges(changes) {
        this._checkForErrors();
        if (!this._registered)
            this._setUpControl();
        if ('isDisabled' in changes) {
            this._updateDisabled(changes);
        }
        if (isPropertyUpdated(changes, this.viewModel)) {
            this._updateValue(this.model);
            this.viewModel = this.model;
        }
    }
    /**
     * @description
     * Lifecycle method called before the directive's instance is destroyed. For internal
     * use only.
     */
    ngOnDestroy() {
        this.formDirective && this.formDirective.removeControl(this);
    }
    /**
     * @description
     * Returns an array that represents the path from the top-level form to this control.
     * Each index is the string name of the control on that level.
     */
    get path() {
        return this._parent ? controlPath(this.name, this._parent) : [this.name];
    }
    /**
     * @description
     * The top-level directive for this control if present, otherwise null.
     */
    get formDirective() {
        return this._parent ? this._parent.formDirective : null;
    }
    /**
     * @description
     * Synchronous validator function composed of all the synchronous validators
     * registered with this directive.
     */
    get validator() {
        return composeValidators(this._rawValidators);
    }
    /**
     * @description
     * Async validator function composed of all the async validators registered with this
     * directive.
     */
    get asyncValidator() {
        return composeAsyncValidators(this._rawAsyncValidators);
    }
    /**
     * @description
     * Sets the new value for the view model and emits an `ngModelChange` event.
     *
     * @param newValue The new value emitted by `ngModelChange`.
     */
    viewToModelUpdate(newValue) {
        this.viewModel = newValue;
        this.update.emit(newValue);
    }
    _setUpControl() {
        this._setUpdateStrategy();
        this._isStandalone() ? this._setUpStandalone() : this.formDirective.addControl(this);
        this._registered = true;
    }
    _setUpdateStrategy() {
        if (this.options && this.options.updateOn != null) {
            this.control._updateOn = this.options.updateOn;
        }
    }
    _isStandalone() {
        return !this._parent || !!(this.options && this.options.standalone);
    }
    _setUpStandalone() {
        setUpControl(this.control, this);
        this.control.updateValueAndValidity({ emitEvent: false });
    }
    _checkForErrors() {
        if (!this._isStandalone()) {
            this._checkParentType();
        }
        this._checkName();
    }
    _checkParentType() {
        if (!(this._parent instanceof NgModelGroup) &&
            this._parent instanceof AbstractFormGroupDirective) {
            TemplateDrivenErrors.formGroupNameException();
        }
        else if (!(this._parent instanceof NgModelGroup) && !(this._parent instanceof NgForm)) {
            TemplateDrivenErrors.modelParentException();
        }
    }
    _checkName() {
        if (this.options && this.options.name)
            this.name = this.options.name;
        if (!this._isStandalone() && !this.name) {
            TemplateDrivenErrors.missingNameException();
        }
    }
    _updateValue(value) {
        resolvedPromise.then(() => {
            this.control.setValue(value, { emitViewToModelChange: false });
        });
    }
    _updateDisabled(changes) {
        const disabledValue = changes['isDisabled'].currentValue;
        const isDisabled = disabledValue === '' || (disabledValue && disabledValue !== 'false');
        resolvedPromise.then(() => {
            if (isDisabled && !this.control.disabled) {
                this.control.disable();
            }
            else if (!isDisabled && this.control.disabled) {
                this.control.enable();
            }
        });
    }
}
NgModel.decorators = [
    { type: Directive, args: [{
                selector: '[ngModel]:not([formControlName]):not([formControl])',
                providers: [formControlBinding],
                exportAs: 'ngModel'
            },] }
];
NgModel.ctorParameters = () => [
    { type: ControlContainer, decorators: [{ type: Optional }, { type: Host }] },
    { type: Array, decorators: [{ type: Optional }, { type: Self }, { type: Inject, args: [NG_VALIDATORS,] }] },
    { type: Array, decorators: [{ type: Optional }, { type: Self }, { type: Inject, args: [NG_ASYNC_VALIDATORS,] }] },
    { type: Array, decorators: [{ type: Optional }, { type: Self }, { type: Inject, args: [NG_VALUE_ACCESSOR,] }] }
];
NgModel.propDecorators = {
    name: [{ type: Input }],
    isDisabled: [{ type: Input, args: ['disabled',] }],
    model: [{ type: Input, args: ['ngModel',] }],
    options: [{ type: Input, args: ['ngModelOptions',] }],
    update: [{ type: Output, args: ['ngModelChange',] }]
};
export { ɵ0 };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibmdfbW9kZWwuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9mb3Jtcy9zcmMvZGlyZWN0aXZlcy9uZ19tb2RlbC50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7QUFFSCxPQUFPLEVBQUMsU0FBUyxFQUFFLFlBQVksRUFBRSxVQUFVLEVBQUUsSUFBSSxFQUFFLE1BQU0sRUFBRSxLQUFLLEVBQXdCLFFBQVEsRUFBRSxNQUFNLEVBQUUsSUFBSSxFQUFnQixNQUFNLGVBQWUsQ0FBQztBQUVwSixPQUFPLEVBQUMsV0FBVyxFQUFZLE1BQU0sVUFBVSxDQUFDO0FBQ2hELE9BQU8sRUFBQyxtQkFBbUIsRUFBRSxhQUFhLEVBQUMsTUFBTSxlQUFlLENBQUM7QUFFakUsT0FBTyxFQUFDLDBCQUEwQixFQUFDLE1BQU0saUNBQWlDLENBQUM7QUFDM0UsT0FBTyxFQUFDLGdCQUFnQixFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFDckQsT0FBTyxFQUF1QixpQkFBaUIsRUFBQyxNQUFNLDBCQUEwQixDQUFDO0FBQ2pGLE9BQU8sRUFBQyxTQUFTLEVBQUMsTUFBTSxjQUFjLENBQUM7QUFDdkMsT0FBTyxFQUFDLE1BQU0sRUFBQyxNQUFNLFdBQVcsQ0FBQztBQUNqQyxPQUFPLEVBQUMsWUFBWSxFQUFDLE1BQU0sa0JBQWtCLENBQUM7QUFDOUMsT0FBTyxFQUFDLHNCQUFzQixFQUFFLGlCQUFpQixFQUFFLFdBQVcsRUFBRSxpQkFBaUIsRUFBRSxtQkFBbUIsRUFBRSxZQUFZLEVBQUMsTUFBTSxVQUFVLENBQUM7QUFDdEksT0FBTyxFQUFDLG9CQUFvQixFQUFDLE1BQU0sMEJBQTBCLENBQUM7QUFHOUQsTUFBTSxDQUFDLE1BQU0sa0JBQWtCLEdBQVE7SUFDckMsT0FBTyxFQUFFLFNBQVM7SUFDbEIsV0FBVyxFQUFFLFVBQVUsQ0FBQyxHQUFHLEVBQUUsQ0FBQyxPQUFPLENBQUM7Q0FDdkMsQ0FB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QyxNQUFNLEVBQUUsQ0FBQzthQUN2QjtRQUNILENBQUMsQ0FBQyxDQUFDO0lBQ0wsQ0FBQzs7O1lBL05GLFNBQVMsU0FBQztnQkFDVCxRQUFRLEVBQUUscURBQXFEO2dCQUMvRCxTQUFTLEVBQUUsQ0FBQyxrQkFBa0IsQ0FBQztnQkFDL0IsUUFBUSxFQUFFLFNBQVM7YUFDcEI7OztZQXhITyxnQkFBZ0IsdUJBNkxqQixRQUFRLFlBQUksSUFBSTtZQUNzQyxLQUFLLHVCQUEzRCxRQUFRLFlBQUksSUFBSSxZQUFJLE1BQU0sU0FBQyxhQUFhO1lBRXJDLEtBQUssdUJBRFIsUUFBUSxZQUFJLElBQUksWUFBSSxNQUFNLFNBQUMsbUJBQW1CO3dDQUU5QyxRQUFRLFlBQUksSUFBSSxZQUFJLE1BQU0sU0FBQyxpQkFBaUI7OzttQkE3Q2hELEtBQUs7eUJBT0wsS0FBSyxTQUFDLFVBQVU7b0JBTWhCLEtBQUssU0FBQyxTQUFTO3NCQWtCZixLQUFLLFNBQUMsZ0JBQWdCO3FCQU90QixNQUFNLFNBQUMsZUFBZSIsInNvdXJjZXNDb250ZW50IjpbIi8qKlxuICogQGxpY2Vuc2VcbiAqIENvcHlyaWdodCBHb29nbGUgTExDIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0RpcmVjdGl2ZSwgRXZlbnRFbWl0dGVyLCBmb3J3YXJkUmVmLCBIb3N0LCBJbmplY3QsIElucHV0LCBPbkNoYW5nZXMsIE9uRGVzdHJveSwgT3B0aW9uYWwsIE91dHB1dCwgU2VsZiwgU2ltcGxlQ2hhbmdlc30gZnJvbSAnQGFuZ3VsYXIvY29yZSc7XG5cbmltcG9ydCB7Rm9ybUNvbnRyb2wsIEZvcm1Ib29rc30gZnJvbSAnLi4vbW9kZWwnO1xuaW1wb3J0IHtOR19BU1lOQ19WQUxJREFUT1JTLCBOR19WQUxJREFUT1JTfSBmcm9tICcuLi92YWxpZGF0b3JzJztcblxuaW1wb3J0IHtBYnN0cmFjdEZvcm1Hcm91cERpcmVjdGl2ZX0gZnJvbSAnLi9hYnN0cmFjdF9mb3JtX2dyb3VwX2RpcmVjdGl2ZSc7XG5pbXBvcnQge0NvbnRyb2xDb250YWluZXJ9IGZyb20gJy4vY29udHJvbF9jb250YWluZXInO1xuaW1wb3J0IHtDb250cm9sVmFsdWVBY2Nlc3NvciwgTkdfVkFMVUVfQUNDRVNTT1J9IGZyb20gJy4vY29udHJvbF92YWx1ZV9hY2Nlc3Nvcic7XG5pbXBvcnQge05nQ29udHJvbH0gZnJvbSAnLi9uZ19jb250cm9sJztcbmltcG9ydCB7TmdGb3JtfSBmcm9tICcuL25nX2Zvcm0nO1xuaW1wb3J0IHtOZ01vZGVsR3JvdXB9IGZyb20gJy4vbmdfbW9kZWxfZ3JvdXAnO1xuaW1wb3J0IHtjb21wb3NlQXN5bmNWYWxpZGF0b3JzLCBjb21wb3NlVmFsaWRhdG9ycywgY29udHJvbFBhdGgsIGlzUHJvcGVydHlVcGRhdGVkLCBzZWxlY3RWYWx1ZUFjY2Vzc29yLCBzZXRVcENvbnRyb2x9IGZyb20gJy4vc2hhcmVkJztcbmltcG9ydCB7VGVtcGxhdGVEcml2ZW5FcnJvcnN9IGZyb20gJy4vdGVtcGxhdGVfZHJpdmVuX2Vycm9ycyc7XG5pbXBvcnQge0FzeW5jVmFsaWRhdG9yLCBBc3luY1ZhbGlkYXRvckZuLCBWYWxpZGF0b3IsIFZhbGlkYXRvckZufSBmcm9tICcuL3ZhbGlkYXRvcnMnO1xuXG5leHBvcnQgY29uc3QgZm9ybUNvbnRyb2xCaW5kaW5nOiBhbnkgPSB7XG4gIHByb3ZpZGU6IE5nQ29udHJvbCxcbiAgdXNlRXhpc3Rpbmc6IGZvcndhcmRSZWYoKCkgPT4gTmdNb2RlbClcbn07XG5cbi8qKlxuICogYG5nTW9kZWxgIGZvcmNlcyBhbiBhZGRpdGlvbmFsIGNoYW5nZSBkZXRlY3Rpb24gcnVuIHdoZW4gaXRzIGlucHV0cyBjaGFuZ2U6XG4gKiBFLmcuOlxuICogYGBgXG4gKiA8ZGl2Pnt7bXlNb2RlbC52YWxpZH19PC9kaXY+XG4gKiA8aW5wdXQgWyhuZ01vZGVsKV09XCJteVZhbHVlXCIgI215TW9kZWw9XCJuZ01vZGVsXCI+XG4gKiBgYGBcbiAqIEkuZS4gYG5nTW9kZWxgIGNhbiBleHBvcnQgaXRzZWxmIG9uIHRoZSBlbGVtZW50IGFuZCB0aGVuIGJlIHVzZWQgaW4gdGhlIHRlbXBsYXRlLlxuICogTm9ybWFsbHksIHRoaXMgd291bGQgcmVzdWx0IGluIGV4cHJlc3Npb25zIGJlZm9yZSB0aGUgYGlucHV0YCB0aGF0IHVzZSB0aGUgZXhwb3J0ZWQgZGlyZWN0aXZlXG4gKiB0byBoYXZlIGFuZCBvbGQgdmFsdWUgYXMgdGhleSBoYXZlIGJlZW5cbiAqIGRpcnR5IGNoZWNrZWQgYmVmb3JlLiBBcyB0aGlzIGlzIGEgdmVyeSBjb21tb24gY2FzZSBmb3IgYG5nTW9kZWxgLCB3ZSBhZGRlZCB0aGlzIHNlY29uZCBjaGFuZ2VcbiAqIGRldGVjdGlvbiBydW4uXG4gKlxuICogTm90ZXM6XG4gKiAtIHRoaXMgaXMganVzdCBvbmUgZXh0cmEgcnVuIG5vIG1hdHRlciBob3cgbWFueSBgbmdNb2RlbGAgaGF2ZSBiZWVuIGNoYW5nZWQuXG4gKiAtIHRoaXMgaXMgYSBnZW5lcmFsIHByb2JsZW0gd2hlbiB1c2luZyBgZXhwb3J0QXNgIGZvciBkaXJlY3RpdmVzIVxuICovXG5jb25zdCByZXNvbHZlZFByb21pc2UgPSAoKCkgPT4gUHJvbWlzZS5yZXNvbHZlKG51bGwpKSgpO1xuXG4vKipcbiAqIEBkZXNjcmlwdGlvblxuICogQ3JlYXRlcyBhIGBGb3JtQ29udHJvbGAgaW5zdGFuY2UgZnJvbSBhIGRvbWFpbiBtb2RlbCBhbmQgYmluZHMgaXRcbiAqIHRvIGEgZm9ybSBjb250cm9sIGVsZW1lbnQuXG4gKlxuICogVGhlIGBGb3JtQ29udHJvbGAgaW5zdGFuY2UgdHJhY2tzIHRoZSB2YWx1ZSwgdXNlciBpbnRlcmFjdGlvbiwgYW5kXG4gKiB2YWxpZGF0aW9uIHN0YXR1cyBvZiB0aGUgY29udHJvbCBhbmQga2VlcHMgdGhlIHZpZXcgc3luY2VkIHdpdGggdGhlIG1vZGVsLiBJZiB1c2VkXG4gKiB3aXRoaW4gYSBwYXJlbnQgZm9ybSwgdGhlIGRpcmVjdGl2ZSBhbHNvIHJlZ2lzdGVycyBpdHNlbGYgd2l0aCB0aGUgZm9ybSBhcyBhIGNoaWxkXG4gKiBjb250cm9sLlxuICpcbiAqIFRoaXMgZGlyZWN0aXZlIGlzIHVzZWQgYnkgaXRzZWxmIG9yIGFzIHBhcnQgb2YgYSBsYXJnZXIgZm9ybS4gVXNlIHRoZVxuICogYG5nTW9kZWxgIHNlbGVjdG9yIHRvIGFjdGl2YXRlIGl0LlxuICpcbiAqIEl0IGFjY2VwdHMgYSBkb21haW4gbW9kZWwgYXMgYW4gb3B0aW9uYWwgYElucHV0YC4gSWYgeW91IGhhdmUgYSBvbmUtd2F5IGJpbmRpbmdcbiAqIHRvIGBuZ01vZGVsYCB3aXRoIGBbXWAgc3ludGF4LCBjaGFuZ2luZyB0aGUgdmFsdWUgb2YgdGhlIGRvbWFpbiBtb2RlbCBpbiB0aGUgY29tcG9uZW50XG4gKiBjbGFzcyBzZXRzIHRoZSB2YWx1ZSBpbiB0aGUgdmlldy4gSWYgeW91IGhhdmUgYSB0d28td2F5IGJpbmRpbmcgd2l0aCBgWygpXWAgc3ludGF4XG4gKiAoYWxzbyBrbm93biBhcyAnYmFuYW5hLWJveCBzeW50YXgnKSwgdGhlIHZhbHVlIGluIHRoZSBVSSBhbHdheXMgc3luY3MgYmFjayB0b1xuICogdGhlIGRvbWFpbiBtb2RlbCBpbiB5b3VyIGNsYXNzLlxuICpcbiAqIFRvIGluc3BlY3QgdGhlIHByb3BlcnRpZXMgb2YgdGhlIGFzc29jaWF0ZWQgYEZvcm1Db250cm9sYCAobGlrZSB2YWxpZGl0eSBzdGF0ZSksXG4gKiBleHBvcnQgdGhlIGRpcmVjdGl2ZSBpbnRvIGEgbG9jYWwgdGVtcGxhdGUgdmFyaWFibGUgdXNpbmcgYG5nTW9kZWxgIGFzIHRoZSBrZXkgKGV4OlxuICogYCNteVZhcj1cIm5nTW9kZWxcImApLiBZb3UgdGhlbiBhY2Nlc3MgdGhlIGNvbnRyb2wgdXNpbmcgdGhlIGRpcmVjdGl2ZSdzIGBjb250cm9sYCBwcm9wZXJ0eSwgYnV0XG4gKiBtb3N0IHByb3BlcnRpZXMgdXNlZCAobGlrZSBgdmFsaWRgIGFuZCBgZGlydHlgKSBmYWxsIHRocm91Z2ggdG8gdGhlIGNvbnRyb2wgYW55d2F5IGZvciBkaXJlY3RcbiAqIGFjY2Vzcy4gU2VlIGEgZnVsbCBsaXN0IG9mIHByb3BlcnRpZXMgZGlyZWN0bHkgYXZhaWxhYmxlIGluIGBBYnN0cmFjdENvbnRyb2xEaXJlY3RpdmVgLlxuICpcbiAqIEBzZWUgYFJhZGlvQ29udHJvbFZhbHVlQWNjZXNzb3JgXG4gKiBAc2VlIGBTZWxlY3RDb250cm9sVmFsdWVBY2Nlc3NvcmBcbiAqXG4gKiBAdXNhZ2VOb3Rlc1xuICpcbiAqICMjIyBVc2luZyBuZ01vZGVsIG9uIGEgc3RhbmRhbG9uZSBjb250cm9sXG4gKlxuICogVGhlIGZvbGxvd2luZyBleGFtcGxlcyBzaG93IGEgc2ltcGxlIHN0YW5kYWxvbmUgY29udHJvbCB1c2luZyBgbmdNb2RlbGA6XG4gKlxuICoge0BleGFtcGxlIGZvcm1zL3RzL3NpbXBsZU5nTW9kZWwvc2ltcGxlX25nX21vZGVsX2V4YW1wbGUudHMgcmVnaW9uPSdDb21wb25lbnQnfVxuICpcbiAqIFdoZW4gdXNpbmcgdGhlIGBuZ01vZGVsYCB3aXRoaW4gYDxmb3JtPmAgdGFncywgeW91J2xsIGFsc28gbmVlZCB0byBzdXBwbHkgYSBgbmFtZWAgYXR0cmlidXRlXG4gKiBzbyB0aGF0IHRoZSBjb250cm9sIGNhbiBiZSByZWdpc3RlcmVkIHdpdGggdGhlIHBhcmVudCBmb3JtIHVuZGVyIHRoYXQgbmFtZS5cbiAqXG4gKiBJbiB0aGUgY29udGV4dCBvZiBhIHBhcmVudCBmb3JtLCBpdCdzIG9mdGVuIHVubmVjZXNzYXJ5IHRvIGluY2x1ZGUgb25lLXdheSBvciB0d28td2F5IGJpbmRpbmcsXG4gKiBhcyB0aGUgcGFyZW50IGZvcm0gc3luY3MgdGhlIHZhbHVlIGZvciB5b3UuIFlvdSBhY2Nlc3MgaXRzIHByb3BlcnRpZXMgYnkgZXhwb3J0aW5nIGl0IGludG8gYVxuICogbG9jYWwgdGVtcGxhdGUgdmFyaWFibGUgdXNpbmcgYG5nRm9ybWAgc3VjaCBhcyAoYCNmPVwibmdGb3JtXCJgKS4gVXNlIHRoZSB2YXJpYWJsZSB3aGVyZVxuICogbmVlZGVkIG9uIGZvcm0gc3VibWlzc2lvbi5cbiAqXG4gKiBJZiB5b3UgZG8gbmVlZCB0byBwb3B1bGF0ZSBpbml0aWFsIHZhbHVlcyBpbnRvIHlvdXIgZm9ybSwgdXNpbmcgYSBvbmUtd2F5IGJpbmRpbmcgZm9yXG4gKiBgbmdNb2RlbGAgdGVuZHMgdG8gYmUgc3VmZmljaWVudCBhcyBsb25nIGFzIHlvdSB1c2UgdGhlIGV4cG9ydGVkIGZvcm0ncyB2YWx1ZSByYXRoZXJcbiAqIHRoYW4gdGhlIGRvbWFpbiBtb2RlbCdzIHZhbHVlIG9uIHN1Ym1pdC5cbiAqXG4gKiAjIyMgVXNpbmcgbmdNb2RlbCB3aXRoaW4gYSBmb3JtXG4gKlxuICogVGhlIGZvbGxvd2luZyBleGFtcGxlIHNob3dzIGNvbnRyb2xzIHVzaW5nIGBuZ01vZGVsYCB3aXRoaW4gYSBmb3JtOlxuICpcbiAqIHtAZXhhbXBsZSBmb3Jtcy90cy9zaW1wbGVGb3JtL3NpbXBsZV9mb3JtX2V4YW1wbGUudHMgcmVnaW9uPSdDb21wb25lbnQnfVxuICpcbiAqICMjIyBVc2luZyBhIHN0YW5kYWxvbmUgbmdNb2RlbCB3aXRoaW4gYSBncm91cFxuICpcbiAqIFRoZSBmb2xsb3dpbmcgZXhhbXBsZSBzaG93cyB5b3UgaG93IHRvIHVzZSBhIHN0YW5kYWxvbmUgbmdNb2RlbCBjb250cm9sXG4gKiB3aXRoaW4gYSBmb3JtLiBUaGlzIGNvbnRyb2xzIHRoZSBkaXNwbGF5IG9mIHRoZSBmb3JtLCBidXQgZG9lc24ndCBjb250YWluIGZvcm0gZGF0YS5cbiAqXG4gKiBgYGBodG1sXG4gKiA8Zm9ybT5cbiAqICAgPGlucHV0IG5hbWU9XCJsb2dpblwiIG5nTW9kZWwgcGxhY2Vob2xkZXI9XCJMb2dpblwiPlxuICogICA8aW5wdXQgdHlwZT1cImNoZWNrYm94XCIgbmdNb2RlbCBbbmdNb2RlbE9wdGlvbnNdPVwie3N0YW5kYWxvbmU6IHRydWV9XCI+IFNob3cgbW9yZSBvcHRpb25zP1xuICogPC9mb3JtPlxuICogPCEtLSBmb3JtIHZhbHVlOiB7bG9naW46ICcnfSAtLT5cbiAqIGBgYFxuICpcbiAqICMjIyBTZXR0aW5nIHRoZSBuZ01vZGVsIG5hbWUgYXR0cmlidXRlIHRocm91Z2ggb3B0aW9uc1xuICpcbiAqIFRoZSBmb2xsb3dpbmcgZXhhbXBsZSBzaG93cyB5b3UgYW4gYWx0ZXJuYXRlIHdheSB0byBzZXQgdGhlIG5hbWUgYXR0cmlidXRlLiBUaGUgbmFtZSBhdHRyaWJ1dGUgaXNcbiAqIHVzZWQgd2l0aGluIGEgY3VzdG9tIGZvcm0gY29tcG9uZW50LCBhbmQgdGhlIG5hbWUgYEBJbnB1dGAgcHJvcGVydHkgc2VydmVzIGEgZGlmZmVyZW50IHB1cnBvc2UuXG4gKlxuICogYGBgaHRtbFxuICogPGZvcm0+XG4gKiAgIDxteS1wZXJzb24tY29udHJvbCBuYW1lPVwiTmFuY3lcIiBuZ01vZGVsIFtuZ01vZGVsT3B0aW9uc109XCJ7bmFtZTogJ3VzZXInfVwiPlxuICogICA8L215LXBlcnNvbi1jb250cm9sPlxuICogPC9mb3JtPlxuICogPCEtLSBmb3JtIHZhbHVlOiB7dXNlcjogJyd9IC0tPlxuICogYGBgXG4gKlxuICogQG5nTW9kdWxlIEZvcm1zTW9kdWxlXG4gKiBAcHVibGljQXBpXG4gKi9cbkBEaXJlY3RpdmUoe1xuICBzZWxlY3RvcjogJ1tuZ01vZGVsXTpub3QoW2Zvcm1Db250cm9sTmFtZV0pOm5vdChbZm9ybUNvbnRyb2xdKScsXG4gIHByb3ZpZGVyczogW2Zvcm1Db250cm9sQmluZGluZ10sXG4gIGV4cG9ydEFzOiAnbmdNb2RlbCdcbn0pXG5leHBvcnQgY2xhc3MgTmdNb2RlbCBleHRlbmRzIE5nQ29udHJvbCBpbXBsZW1lbnRzIE9uQ2hhbmdlcywgT25EZXN0cm95IHtcbiAgcHVibGljIHJlYWRvbmx5IGNvbnRyb2w6IEZvcm1Db250cm9sID0gbmV3IEZvcm1Db250cm9sKCk7XG5cbiAgLy8gQXQgcnVudGltZSB3ZSBjb2VyY2UgYXJiaXRyYXJ5IHZhbHVlcyBhc3NpZ25lZCB0byB0aGUgXCJkaXNhYmxlZFwiIGlucHV0IHRvIGEgXCJib29sZWFuXCIuXG4gIC8vIFRoaXMgaXMgbm90IHJlZmxlY3RlZCBpbiB0aGUgdHlwZSBvZiB0aGUgcHJvcGVydHkgYmVjYXVzZSBvdXRzaWRlIG9mIHRlbXBsYXRlcywgY29uc3VtZXJzXG4gIC8vIHNob3VsZCBvbmx5IGRlYWwgd2l0aCBib29sZWFucy4gSW4gdGVtcGxhdGVzLCBhIHN0cmluZyBpcyBhbGxvd2VkIGZvciBjb252ZW5pZW5jZSBhbmQgdG9cbiAgLy8gbWF0Y2ggdGhlIG5hdGl2ZSBcImRpc2FibGVkIGF0dHJpYnV0ZVwiIHNlbWFudGljcyB3aGljaCBjYW4gYmUgb2JzZXJ2ZWQgb24gaW5wdXQgZWxlbWVudHMuXG4gIC8vIFRoaXMgc3RhdGljIG1lbWJlciB0ZWxscyB0aGUgY29tcGlsZXIgdGhhdCB2YWx1ZXMgb2YgdHlwZSBcInN0cmluZ1wiIGNhbiBhbHNvIGJlIGFzc2lnbmVkXG4gIC8vIHRvIHRoZSBpbnB1dCBpbiBhIHRlbXBsYXRlLlxuICAvKiogQG5vZG9jICovXG4gIHN0YXRpYyBuZ0FjY2VwdElucHV0VHlwZV9pc0Rpc2FibGVkOiBib29sZWFufHN0cmluZztcblxuICAvKiogQGludGVybmFsICovXG4gIF9yZWdpc3RlcmVkID0gZmFsc2U7XG5cbiAgLyoqXG4gICAqIEBkZXNjcmlwdGlvblxuICAgKiBJbnRlcm5hbCByZWZlcmVuY2UgdG8gdGhlIHZpZXcgbW9kZWwgdmFsdWUuXG4gICAqL1xuICB2aWV3TW9kZWw6IGFueTtcblxuICAvKipcbiAgICogQGRlc2NyaXB0aW9uXG4gICAqIFRyYWNrcyB0aGUgbmFtZSBib3VuZCB0byB0aGUgZGlyZWN0aXZlLiBUaGUgcGFyZW50IGZvcm1cbiAgICogdXNlcyB0aGlzIG5hbWUgYXMgYSBrZXkgdG8gcmV0cmlldmUgdGhpcyBjb250cm9sJ3MgdmFsdWUuXG4gICAqL1xuICAvLyBUT0RPKGlzc3VlLzI0NTcxKTogcmVtb3ZlICchJy5cbiAgQElucHV0KCkgbmFtZSE6IHN0cmluZztcblxuICAvKipcbiAgICogQGRlc2NyaXB0aW9uXG4gICAqIFRyYWNrcyB3aGV0aGVyIHRoZSBjb250cm9sIGlzIGRpc2FibGVkLlxuICAgKi9cbiAgLy8gVE9ETyhpc3N1ZS8yNDU3MSk6IHJlbW92ZSAnIScuXG4gIEBJbnB1dCgnZGlzYWJsZWQnKSBpc0Rpc2FibGVkITogYm9vbGVhbjtcblxuICAvKipcbiAgICogQGRlc2NyaXB0aW9uXG4gICAqIFRyYWNrcyB0aGUgdmFsdWUgYm91bmQgdG8gdGhpcyBkaXJlY3RpdmUuXG4gICAqL1xuICBASW5wdXQoJ25nTW9kZWwnKSBtb2RlbDogYW55O1xuXG4gIC8qKlxuICAgKiBAZGVzY3JpcHRpb25cbiAgICogVHJhY2tzIHRoZSBjb25maWd1cmF0aW9uIG9wdGlvbnMgZm9yIHRoaXMgYG5nTW9kZWxgIGluc3RhbmNlLlxuICAgKlxuICAgKiAqKm5hbWUqKjogQW4gYWx0ZXJuYXRpdmUgdG8gc2V0dGluZyB0aGUgbmFtZSBhdHRyaWJ1dGUgb24gdGhlIGZvcm0gY29udHJvbCBlbGVtZW50LiBTZWVcbiAgICogdGhlIFtleGFtcGxlXShhcGkvZm9ybXMvTmdNb2RlbCN1c2luZy1uZ21vZGVsLW9uLWEtc3RhbmRhbG9uZS1jb250cm9sKSBmb3IgdXNpbmcgYE5nTW9kZWxgXG4gICAqIGFzIGEgc3RhbmRhbG9uZSBjb250cm9sLlxuICAgKlxuICAgKiAqKnN0YW5kYWxvbmUqKjogV2hlbiBzZXQgdG8gdHJ1ZSwgdGhlIGBuZ01vZGVsYCB3aWxsIG5vdCByZWdpc3RlciBpdHNlbGYgd2l0aCBpdHMgcGFyZW50IGZvcm0sXG4gICAqIGFuZCBhY3RzIGFzIGlmIGl0J3Mgbm90IGluIHRoZSBmb3JtLiBEZWZhdWx0cyB0byBmYWxzZS5cbiAgICpcbiAgICogKip1cGRhdGVPbioqOiBEZWZpbmVzIHRoZSBldmVudCB1cG9uIHdoaWNoIHRoZSBmb3JtIGNvbnRyb2wgdmFsdWUgYW5kIHZhbGlkaXR5IHVwZGF0ZS5cbiAgICogRGVmYXVsdHMgdG8gJ2NoYW5nZScuIFBvc3NpYmxlIHZhbHVlczogYCdjaGFuZ2UnYCB8IGAnYmx1cidgIHwgYCdzdWJtaXQnYC5cbiAgICpcbiAgICovXG4gIC8vIFRPRE8oaXNzdWUvMjQ1NzEpOiByZW1vdmUgJyEnLlxuICBASW5wdXQoJ25nTW9kZWxPcHRpb25zJykgb3B0aW9ucyE6IHtuYW1lPzogc3RyaW5nLCBzdGFuZGFsb25lPzogYm9vbGVhbiwgdXBkYXRlT24/OiBGb3JtSG9va3N9O1xuXG4gIC8qKlxuICAgKiBAZGVzY3JpcHRpb25cbiAgICogRXZlbnQgZW1pdHRlciBmb3IgcHJvZHVjaW5nIHRoZSBgbmdNb2RlbENoYW5nZWAgZXZlbnQgYWZ0ZXJcbiAgICogdGhlIHZpZXcgbW9kZWwgdXBkYXRlcy5cbiAgICovXG4gIEBPdXRwdXQoJ25nTW9kZWxDaGFuZ2UnKSB1cGRhdGUgPSBuZXcgRXZlbnRFbWl0dGVyKCk7XG5cbiAgY29uc3RydWN0b3IoXG4gICAgICBAT3B0aW9uYWwoKSBASG9zdCgpIHBhcmVudDogQ29udHJvbENvbnRhaW5lcixcbiAgICAgIEBPcHRpb25hbCgpIEBTZWxmKCkgQEluamVjdChOR19WQUxJREFUT1JTKSB2YWxpZGF0b3JzOiBBcnJheTxWYWxpZGF0b3J8VmFsaWRhdG9yRm4+LFxuICAgICAgQE9wdGlvbmFsKCkgQFNlbGYoKSBASW5qZWN0KE5HX0FTWU5DX1ZBTElEQVRPUlMpIGFzeW5jVmFsaWRhdG9yczpcbiAgICAgICAgICBBcnJheTxBc3luY1ZhbGlkYXRvcnxBc3luY1ZhbGlkYXRvckZuPixcbiAgICAgIEBPcHRpb25hbCgpIEBTZWxmKCkgQEluamVjdChOR19WQUxVRV9BQ0NFU1NPUikgdmFsdWVBY2Nlc3NvcnM6IENvbnRyb2xWYWx1ZUFjY2Vzc29yW10pIHtcbiAgICBzdXBlcigpO1xuICAgIHRoaXMuX3BhcmVudCA9IHBhcmVudDtcbiAgICB0aGlzLl9yYXdWYWxpZGF0b3JzID0gdmFsaWRhdG9ycyB8fCBbXTtcbiAgICB0aGlzLl9yYXdBc3luY1ZhbGlkYXRvcnMgPSBhc3luY1ZhbGlkYXRvcnMgfHwgW107XG4gICAgdGhpcy52YWx1ZUFjY2Vzc29yID0gc2VsZWN0VmFsdWVBY2Nlc3Nvcih0aGlzLCB2YWx1ZUFjY2Vzc29ycyk7XG4gIH1cblxuICAvKipcbiAgICogQGRlc2NyaXB0aW9uXG4gICAqIEEgbGlmZWN5Y2xlIG1ldGhvZCBjYWxsZWQgd2hlbiB0aGUgZGlyZWN0aXZlJ3MgaW5wdXRzIGNoYW5nZS4gRm9yIGludGVybmFsIHVzZVxuICAgKiBvbmx5LlxuICAgKlxuICAgKiBAcGFyYW0gY2hhbmdlcyBBIG9iamVjdCBvZiBrZXkvdmFsdWUgcGFpcnMgZm9yIHRoZSBzZXQgb2YgY2hhbmdlZCBpbnB1dHMuXG4gICAqL1xuICBuZ09uQ2hhbmdlcyhjaGFuZ2VzOiBTaW1wbGVDaGFuZ2VzKSB7XG4gICAgdGhpcy5fY2hlY2tGb3JFcnJvcnMoKTtcbiAgICBpZiAoIXRoaXMuX3JlZ2lzdGVyZWQpIHRoaXMuX3NldFVwQ29udHJvbCgpO1xuICAgIGlmICgnaXNEaXNhYmxlZCcgaW4gY2hhbmdlcykge1xuICAgICAgdGhpcy5fdXBkYXRlRGlzYWJsZWQoY2hhbmdlcyk7XG4gICAgfVxuXG4gICAgaWYgKGlzUHJvcGVydHlVcGRhdGVkKGNoYW5nZXMsIHRoaXMudmlld01vZGVsKSkge1xuICAgICAgdGhpcy5fdXBkYXRlVmFsdWUodGhpcy5tb2RlbCk7XG4gICAgICB0aGlzLnZpZXdNb2RlbCA9IHRoaXMubW9kZWw7XG4gICAgfVxuICB9XG5cbiAgLyoqXG4gICAqIEBkZXNjcmlwdGlvblxuICAgKiBMaWZlY3ljbGUgbWV0aG9kIGNhbGxlZCBiZWZvcmUgdGhlIGRpcmVjdGl2ZSdzIGluc3RhbmNlIGlzIGRlc3Ryb3llZC4gRm9yIGludGVybmFsXG4gICAqIHVzZSBvbmx5LlxuICAgKi9cbiAgbmdPbkRlc3Ryb3koKTogdm9pZCB7XG4gICAgdGhpcy5mb3JtRGlyZWN0aXZlICYmIHRoaXMuZm9ybURpcmVjdGl2ZS5yZW1vdmVDb250cm9sKHRoaXMpO1xuICB9XG5cbiAgLyoqXG4gICAqIEBkZXNjcmlwdGlvblxuICAgKiBSZXR1cm5zIGFuIGFycmF5IHRoYXQgcmVwcmVzZW50cyB0aGUgcGF0aCBmcm9tIHRoZSB0b3AtbGV2ZWwgZm9ybSB0byB0aGlzIGNvbnRyb2wuXG4gICAqIEVhY2ggaW5kZXggaXMgdGhlIHN0cmluZyBuYW1lIG9mIHRoZSBjb250cm9sIG9uIHRoYXQgbGV2ZWwuXG4gICAqL1xuICBnZXQgcGF0aCgpOiBzdHJpbmdbXSB7XG4gICAgcmV0dXJuIHRoaXMuX3BhcmVudCA/IGNvbnRyb2xQYXRoKHRoaXMubmFtZSwgdGhpcy5fcGFyZW50KSA6IFt0aGlzLm5hbWVdO1xuICB9XG5cbiAgLyoqXG4gICAqIEBkZXNjcmlwdGlvblxuICAgKiBUaGUgdG9wLWxldmVsIGRpcmVjdGl2ZSBmb3IgdGhpcyBjb250cm9sIGlmIHByZXNlbnQsIG90aGVyd2lzZSBudWxsLlxuICAgKi9cbiAgZ2V0IGZvcm1EaXJlY3RpdmUoKTogYW55IHtcbiAgICByZXR1cm4gdGhpcy5fcGFyZW50ID8gdGhpcy5fcGFyZW50LmZvcm1EaXJlY3RpdmUgOiBudWxsO1xuICB9XG5cbiAgLyoqXG4gICAqIEBkZXNjcmlwdGlvblxuICAgKiBTeW5jaHJvbm91cyB2YWxpZGF0b3IgZnVuY3Rpb24gY29tcG9zZWQgb2YgYWxsIHRoZSBzeW5jaHJvbm91cyB2YWxpZGF0b3JzXG4gICAqIHJlZ2lzdGVyZWQgd2l0aCB0aGlzIGRpcmVjdGl2ZS5cbiAgICovXG4gIGdldCB2YWxpZGF0b3IoKTogVmFsaWRhdG9yRm58bnVsbCB7XG4gICAgcmV0dXJuIGNvbXBvc2VWYWxpZGF0b3JzKHRoaXMuX3Jhd1ZhbGlkYXRvcnMpO1xuICB9XG5cbiAgLyoqXG4gICAqIEBkZXNjcmlwdGlvblxuICAgKiBBc3luYyB2YWxpZGF0b3IgZnVuY3Rpb24gY29tcG9zZWQgb2YgYWxsIHRoZSBhc3luYyB2YWxpZGF0b3JzIHJlZ2lzdGVyZWQgd2l0aCB0aGlzXG4gICAqIGRpcmVjdGl2ZS5cbiAgICovXG4gIGdldCBhc3luY1ZhbGlkYXRvcigpOiBBc3luY1ZhbGlkYXRvckZufG51bGwge1xuICAgIHJldHVybiBjb21wb3NlQXN5bmNWYWxpZGF0b3JzKHRoaXMuX3Jhd0FzeW5jVmFsaWRhdG9ycyk7XG4gIH1cblxuICAvKipcbiAgICogQGRlc2NyaXB0aW9uXG4gICAqIFNldHMgdGhlIG5ldyB2YWx1ZSBmb3IgdGhlIHZpZXcgbW9kZWwgYW5kIGVtaXRzIGFuIGBuZ01vZGVsQ2hhbmdlYCBldmVudC5cbiAgICpcbiAgICogQHBhcmFtIG5ld1ZhbHVlIFRoZSBuZXcgdmFsdWUgZW1pdHRlZCBieSBgbmdNb2RlbENoYW5nZWAuXG4gICAqL1xuICB2aWV3VG9Nb2RlbFVwZGF0ZShuZXdWYWx1ZTogYW55KTogdm9pZCB7XG4gICAgdGhpcy52aWV3TW9kZWwgPSBuZXdWYWx1ZTtcbiAgICB0aGlzLnVwZGF0ZS5lbWl0KG5ld1ZhbHVlKTtcbiAgfVxuXG4gIHByaXZhdGUgX3NldFVwQ29udHJvbCgpOiB2b2lkIHtcbiAgICB0aGlzLl9zZXRVcGRhdGVTdHJhdGVneSgpO1xuICAgIHRoaXMuX2lzU3RhbmRhbG9uZSgpID8gdGhpcy5fc2V0VXBTdGFuZGFsb25lKCkgOiB0aGlzLmZvcm1EaXJlY3RpdmUuYWRkQ29udHJvbCh0aGlzKTtcbiAgICB0aGlzLl9yZWdpc3RlcmVkID0gdHJ1ZTtcbiAgfVxuXG4gIHByaXZhdGUgX3NldFVwZGF0ZVN0cmF0ZWd5KCk6IHZvaWQge1xuICAgIGlmICh0aGlzLm9wdGlvbnMgJiYgdGhpcy5vcHRpb25zLnVwZGF0ZU9uICE9IG51bGwpIHtcbiAgICAgIHRoaXMuY29udHJvbC5fdXBkYXRlT24gPSB0aGlzLm9wdGlvbnMudXBkYXRlT247XG4gICAgfVxuICB9XG5cbiAgcHJpdmF0ZSBfaXNTdGFuZGFsb25lKCk6IGJvb2xlYW4ge1xuICAgIHJldHVybiAhdGhpcy5fcGFyZW50IHx8ICEhKHRoaXMub3B0aW9ucyAmJiB0aGlzLm9wdGlvbnMuc3RhbmRhbG9uZSk7XG4gIH1cblxuICBwcml2YXRlIF9zZXRVcFN0YW5kYWxvbmUoKTogdm9pZCB7XG4gICAgc2V0VXBDb250cm9sKHRoaXMuY29udHJvbCwgdGhpcyk7XG4gICAgdGhpcy5jb250cm9sLnVwZGF0ZVZhbHVlQW5kVmFsaWRpdHkoe2VtaXRFdmVudDogZmFsc2V9KTtcbiAgfVxuXG4gIHByaXZhdGUgX2NoZWNrRm9yRXJyb3JzKCk6IHZvaWQge1xuICAgIGlmICghdGhpcy5faXNTdGFuZGFsb25lKCkpIHtcbiAgICAgIHRoaXMuX2NoZWNrUGFyZW50VHlwZSgpO1xuICAgIH1cbiAgICB0aGlzLl9jaGVja05hbWUoKTtcbiAgfVxuXG4gIHByaXZhdGUgX2NoZWNrUGFyZW50VHlwZSgpOiB2b2lkIHtcbiAgICBpZiAoISh0aGlzLl9wYXJlbnQgaW5zdGFuY2VvZiBOZ01vZGVsR3JvdXApICYmXG4gICAgICAgIHRoaXMuX3BhcmVudCBpbnN0YW5jZW9mIEFic3RyYWN0Rm9ybUdyb3VwRGlyZWN0aXZlKSB7XG4gICAgICBUZW1wbGF0ZURyaXZlbkVycm9ycy5mb3JtR3JvdXBOYW1lRXhjZXB0aW9uKCk7XG4gICAgfSBlbHNlIGlmICghKHRoaXMuX3BhcmVudCBpbnN0YW5jZW9mIE5nTW9kZWxHcm91cCkgJiYgISh0aGlzLl9wYXJlbnQgaW5zdGFuY2VvZiBOZ0Zvcm0pKSB7XG4gICAgICBUZW1wbGF0ZURyaXZlbkVycm9ycy5tb2RlbFBhcmVudEV4Y2VwdGlvbigpO1xuICAgIH1cbiAgfVxuXG4gIHByaXZhdGUgX2NoZWNrTmFtZSgpOiB2b2lkIHtcbiAgICBpZiAodGhpcy5vcHRpb25zICYmIHRoaXMub3B0aW9ucy5uYW1lKSB0aGlzLm5hbWUgPSB0aGlzLm9wdGlvbnMubmFtZTtcblxuICAgIGlmICghdGhpcy5faXNTdGFuZGFsb25lKCkgJiYgIXRoaXMubmFtZSkge1xuICAgICAgVGVtcGxhdGVEcml2ZW5FcnJvcnMubWlzc2luZ05hbWVFeGNlcHRpb24oKTtcbiAgICB9XG4gIH1cblxuICBwcml2YXRlIF91cGRhdGVWYWx1ZSh2YWx1ZTogYW55KTogdm9pZCB7XG4gICAgcmVzb2x2ZWRQcm9taXNlLnRoZW4oKCkgPT4ge1xuICAgICAgdGhpcy5jb250cm9sLnNldFZhbHVlKHZhbHVlLCB7ZW1pdFZpZXdUb01vZGVsQ2hhbmdlOiBmYWxzZX0pO1xuICAgIH0pO1xuICB9XG5cbiAgcHJpdmF0ZSBfdXBkYXRlRGlzYWJsZWQoY2hhbmdlczogU2ltcGxlQ2hhbmdlcykge1xuICAgIGNvbnN0IGRpc2FibGVkVmFsdWUgPSBjaGFuZ2VzWydpc0Rpc2FibGVkJ10uY3VycmVudFZhbHVlO1xuXG4gICAgY29uc3QgaXNEaXNhYmxlZCA9IGRpc2FibGVkVmFsdWUgPT09ICcnIHx8IChkaXNhYmxlZFZhbHVlICYmIGRpc2FibGVkVmFsdWUgIT09ICdmYWxzZScpO1xuXG4gICAgcmVzb2x2ZWRQcm9taXNlLnRoZW4oKCkgPT4ge1xuICAgICAgaWYgKGlzRGlzYWJsZWQgJiYgIXRoaXMuY29udHJvbC5kaXNhYmxlZCkge1xuICAgICAgICB0aGlzLmNvbnRyb2wuZGlzYWJsZSgpO1xuICAgICAgfSBlbHNlIGlmICghaXNEaXNhYmxlZCAmJiB0aGlzLmNvbnRyb2wuZGlzYWJsZWQpIHtcbiAgICAgICAgdGhpcy5jb250cm9sLmVuYWJsZSgpO1xuICAgICAgfVxuICAgIH0pO1xuICB9XG59XG4iXX0=