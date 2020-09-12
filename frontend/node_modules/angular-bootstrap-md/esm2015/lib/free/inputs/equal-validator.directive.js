var EqualValidatorDirective_1;
import { __decorate, __metadata, __param } from "tslib";
import { Directive, forwardRef, Attribute } from '@angular/core';
import { NG_VALIDATORS } from '@angular/forms';
let EqualValidatorDirective = EqualValidatorDirective_1 = class EqualValidatorDirective {
    constructor(validateEqual, reverse) {
        this.validateEqual = validateEqual;
        this.reverse = reverse;
    }
    get isReverse() {
        if (!this.reverse) {
            return false;
        }
        return this.reverse === 'true' ? true : false;
    }
    validate(c) {
        // self value (e.g. retype password)
        const v = c.value;
        // control value (e.g. password)
        const e = c.root.get(this.validateEqual);
        // value not equal
        if (e && v !== e.value) {
            return { validateEqual: false };
        }
        // value equal and reverse
        if (e && v === e.value && this.isReverse) {
            delete e.errors['validateEqual'];
            if (!Object.keys(e.errors).length) {
                e.setErrors(null);
            }
        }
        // value not equal and reverse
        if (e && v !== e.value && this.isReverse) {
            e.setErrors({
                validateEqual: false,
            });
        }
        // return null;
        return null;
    }
};
EqualValidatorDirective.ctorParameters = () => [
    { type: String, decorators: [{ type: Attribute, args: ['validateEqual',] }] },
    { type: String, decorators: [{ type: Attribute, args: ['reverse',] }] }
];
EqualValidatorDirective = EqualValidatorDirective_1 = __decorate([
    Directive({
        selector: '[mdb-validateEqual][formControlName],[validateEqual][formControl],[validateEqual][ngModel]',
        providers: [
            { provide: NG_VALIDATORS, useExisting: forwardRef(() => EqualValidatorDirective_1), multi: true },
        ],
    }),
    __param(0, Attribute('validateEqual')),
    __param(1, Attribute('reverse')),
    __metadata("design:paramtypes", [String, String])
], EqualValidatorDirective);
export { EqualValidatorDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXF1YWwtdmFsaWRhdG9yLmRpcmVjdGl2ZS5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvaW5wdXRzL2VxdWFsLXZhbGlkYXRvci5kaXJlY3RpdmUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7QUFBQSxPQUFPLEVBQUUsU0FBUyxFQUFFLFVBQVUsRUFBRSxTQUFTLEVBQUUsTUFBTSxlQUFlLENBQUM7QUFDakUsT0FBTyxFQUE4QixhQUFhLEVBQUUsTUFBTSxnQkFBZ0IsQ0FBQztBQVMzRSxJQUFhLHVCQUF1QiwrQkFBcEMsTUFBYSx1QkFBdUI7SUFDbEMsWUFDcUMsYUFBcUIsRUFDM0IsT0FBZTtRQURULGtCQUFhLEdBQWIsYUFBYSxDQUFRO1FBQzNCLFlBQU8sR0FBUCxPQUFPLENBQVE7SUFDM0MsQ0FBQztJQUVKLElBQVksU0FBUztRQUNuQixJQUFJLENBQUMsSUFBSSxDQUFDLE9BQU8sRUFBRTtZQUNqQixPQUFPLEtBQUssQ0FBQztTQUNkO1FBQ0QsT0FBTyxJQUFJLENBQUMsT0FBTyxLQUFLLE1BQU0sQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxLQUFLLENBQUM7SUFDaEQsQ0FBQztJQUVELFFBQVEsQ0FBQyxDQUFrQjtRQUN6QixvQ0FBb0M7UUFDcEMsTUFBTSxDQUFDLEdBQUcsQ0FBQyxDQUFDLEtBQUssQ0FBQztRQUVsQixnQ0FBZ0M7UUFDaEMsTUFBTSxDQUFDLEdBQVEsQ0FBQyxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLGFBQWEsQ0FBQyxDQUFDO1FBRTlDLGtCQUFrQjtRQUNsQixJQUFJLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDLEtBQUssRUFBRTtZQUN0QixPQUFPLEVBQUUsYUFBYSxFQUFFLEtBQUssRUFBRSxDQUFDO1NBQ2pDO1FBRUQsMEJBQTBCO1FBQzFCLElBQUksQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUMsS0FBSyxJQUFJLElBQUksQ0FBQyxTQUFTLEVBQUU7WUFDeEMsT0FBTyxDQUFDLENBQUMsTUFBTSxDQUFDLGVBQWUsQ0FBQyxDQUFDO1lBQ2pDLElBQUksQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsQ0FBQyxNQUFNLEVBQUU7Z0JBQ2pDLENBQUMsQ0FBQyxTQUFTLENBQUMsSUFBSSxDQUFDLENBQUM7YUFDbkI7U0FDRjtRQUVELDhCQUE4QjtRQUM5QixJQUFJLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDLEtBQUssSUFBSSxJQUFJLENBQUMsU0FBUyxFQUFFO1lBQ3hDLENBQUMsQ0FBQyxTQUFTLENBQUM7Z0JBQ1YsYUFBYSxFQUFFLEtBQUs7YUFDckIsQ0FBQyxDQUFDO1NBQ0o7UUFFRCxlQUFlO1FBQ2YsT0FBTyxJQUFJLENBQUM7SUFDZCxDQUFDO0NBQ0YsQ0FBQTs7eUNBekNJLFNBQVMsU0FBQyxlQUFlO3lDQUN6QixTQUFTLFNBQUMsU0FBUzs7QUFIWCx1QkFBdUI7SUFQbkMsU0FBUyxDQUFDO1FBQ1QsUUFBUSxFQUNOLDRGQUE0RjtRQUM5RixTQUFTLEVBQUU7WUFDVCxFQUFFLE9BQU8sRUFBRSxhQUFhLEVBQUUsV0FBVyxFQUFFLFVBQVUsQ0FBQyxHQUFHLEVBQUUsQ0FBQyx5QkFBdUIsQ0FBQyxFQUFFLEtBQUssRUFBRSxJQUFJLEVBQUU7U0FDaEc7S0FDRixDQUFDO0lBR0csV0FBQSxTQUFTLENBQUMsZUFBZSxDQUFDLENBQUE7SUFDMUIsV0FBQSxTQUFTLENBQUMsU0FBUyxDQUFDLENBQUE7O0dBSFosdUJBQXVCLENBMkNuQztTQTNDWSx1QkFBdUIiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBEaXJlY3RpdmUsIGZvcndhcmRSZWYsIEF0dHJpYnV0ZSB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgVmFsaWRhdG9yLCBBYnN0cmFjdENvbnRyb2wsIE5HX1ZBTElEQVRPUlMgfSBmcm9tICdAYW5ndWxhci9mb3Jtcyc7XG5cbkBEaXJlY3RpdmUoe1xuICBzZWxlY3RvcjpcbiAgICAnW21kYi12YWxpZGF0ZUVxdWFsXVtmb3JtQ29udHJvbE5hbWVdLFt2YWxpZGF0ZUVxdWFsXVtmb3JtQ29udHJvbF0sW3ZhbGlkYXRlRXF1YWxdW25nTW9kZWxdJyxcbiAgcHJvdmlkZXJzOiBbXG4gICAgeyBwcm92aWRlOiBOR19WQUxJREFUT1JTLCB1c2VFeGlzdGluZzogZm9yd2FyZFJlZigoKSA9PiBFcXVhbFZhbGlkYXRvckRpcmVjdGl2ZSksIG11bHRpOiB0cnVlIH0sXG4gIF0sXG59KVxuZXhwb3J0IGNsYXNzIEVxdWFsVmFsaWRhdG9yRGlyZWN0aXZlIGltcGxlbWVudHMgVmFsaWRhdG9yIHtcbiAgY29uc3RydWN0b3IoXG4gICAgQEF0dHJpYnV0ZSgndmFsaWRhdGVFcXVhbCcpIHB1YmxpYyB2YWxpZGF0ZUVxdWFsOiBzdHJpbmcsXG4gICAgQEF0dHJpYnV0ZSgncmV2ZXJzZScpIHB1YmxpYyByZXZlcnNlOiBzdHJpbmdcbiAgKSB7fVxuXG4gIHByaXZhdGUgZ2V0IGlzUmV2ZXJzZSgpIHtcbiAgICBpZiAoIXRoaXMucmV2ZXJzZSkge1xuICAgICAgcmV0dXJuIGZhbHNlO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5yZXZlcnNlID09PSAndHJ1ZScgPyB0cnVlIDogZmFsc2U7XG4gIH1cblxuICB2YWxpZGF0ZShjOiBBYnN0cmFjdENvbnRyb2wpOiB7IFtrZXk6IHN0cmluZ106IGFueSB9IHwgbnVsbCB7XG4gICAgLy8gc2VsZiB2YWx1ZSAoZS5nLiByZXR5cGUgcGFzc3dvcmQpXG4gICAgY29uc3QgdiA9IGMudmFsdWU7XG5cbiAgICAvLyBjb250cm9sIHZhbHVlIChlLmcuIHBhc3N3b3JkKVxuICAgIGNvbnN0IGU6IGFueSA9IGMucm9vdC5nZXQodGhpcy52YWxpZGF0ZUVxdWFsKTtcblxuICAgIC8vIHZhbHVlIG5vdCBlcXVhbFxuICAgIGlmIChlICYmIHYgIT09IGUudmFsdWUpIHtcbiAgICAgIHJldHVybiB7IHZhbGlkYXRlRXF1YWw6IGZhbHNlIH07XG4gICAgfVxuXG4gICAgLy8gdmFsdWUgZXF1YWwgYW5kIHJldmVyc2VcbiAgICBpZiAoZSAmJiB2ID09PSBlLnZhbHVlICYmIHRoaXMuaXNSZXZlcnNlKSB7XG4gICAgICBkZWxldGUgZS5lcnJvcnNbJ3ZhbGlkYXRlRXF1YWwnXTtcbiAgICAgIGlmICghT2JqZWN0LmtleXMoZS5lcnJvcnMpLmxlbmd0aCkge1xuICAgICAgICBlLnNldEVycm9ycyhudWxsKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyB2YWx1ZSBub3QgZXF1YWwgYW5kIHJldmVyc2VcbiAgICBpZiAoZSAmJiB2ICE9PSBlLnZhbHVlICYmIHRoaXMuaXNSZXZlcnNlKSB7XG4gICAgICBlLnNldEVycm9ycyh7XG4gICAgICAgIHZhbGlkYXRlRXF1YWw6IGZhbHNlLFxuICAgICAgfSk7XG4gICAgfVxuXG4gICAgLy8gcmV0dXJuIG51bGw7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbn1cbiJdfQ==