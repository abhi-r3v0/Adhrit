import { __decorate, __metadata, __param } from "tslib";
import { Directive, forwardRef, Attribute } from '@angular/core';
import { NG_VALIDATORS } from '@angular/forms';
var EqualValidatorDirective = /** @class */ (function () {
    function EqualValidatorDirective(validateEqual, reverse) {
        this.validateEqual = validateEqual;
        this.reverse = reverse;
    }
    EqualValidatorDirective_1 = EqualValidatorDirective;
    Object.defineProperty(EqualValidatorDirective.prototype, "isReverse", {
        get: function () {
            if (!this.reverse) {
                return false;
            }
            return this.reverse === 'true' ? true : false;
        },
        enumerable: true,
        configurable: true
    });
    EqualValidatorDirective.prototype.validate = function (c) {
        // self value (e.g. retype password)
        var v = c.value;
        // control value (e.g. password)
        var e = c.root.get(this.validateEqual);
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
    };
    var EqualValidatorDirective_1;
    EqualValidatorDirective.ctorParameters = function () { return [
        { type: String, decorators: [{ type: Attribute, args: ['validateEqual',] }] },
        { type: String, decorators: [{ type: Attribute, args: ['reverse',] }] }
    ]; };
    EqualValidatorDirective = EqualValidatorDirective_1 = __decorate([
        Directive({
            selector: '[mdb-validateEqual][formControlName],[validateEqual][formControl],[validateEqual][ngModel]',
            providers: [
                { provide: NG_VALIDATORS, useExisting: forwardRef(function () { return EqualValidatorDirective_1; }), multi: true },
            ],
        }),
        __param(0, Attribute('validateEqual')),
        __param(1, Attribute('reverse')),
        __metadata("design:paramtypes", [String, String])
    ], EqualValidatorDirective);
    return EqualValidatorDirective;
}());
export { EqualValidatorDirective };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZXF1YWwtdmFsaWRhdG9yLmRpcmVjdGl2ZS5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvaW5wdXRzL2VxdWFsLXZhbGlkYXRvci5kaXJlY3RpdmUudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IjtBQUFBLE9BQU8sRUFBRSxTQUFTLEVBQUUsVUFBVSxFQUFFLFNBQVMsRUFBRSxNQUFNLGVBQWUsQ0FBQztBQUNqRSxPQUFPLEVBQThCLGFBQWEsRUFBRSxNQUFNLGdCQUFnQixDQUFDO0FBUzNFO0lBQ0UsaUNBQ3FDLGFBQXFCLEVBQzNCLE9BQWU7UUFEVCxrQkFBYSxHQUFiLGFBQWEsQ0FBUTtRQUMzQixZQUFPLEdBQVAsT0FBTyxDQUFRO0lBQzNDLENBQUM7Z0NBSk8sdUJBQXVCO0lBTWxDLHNCQUFZLDhDQUFTO2FBQXJCO1lBQ0UsSUFBSSxDQUFDLElBQUksQ0FBQyxPQUFPLEVBQUU7Z0JBQ2pCLE9BQU8sS0FBSyxDQUFDO2FBQ2Q7WUFDRCxPQUFPLElBQUksQ0FBQyxPQUFPLEtBQUssTUFBTSxDQUFDLENBQUMsQ0FBQyxJQUFJLENBQUMsQ0FBQyxDQUFDLEtBQUssQ0FBQztRQUNoRCxDQUFDOzs7T0FBQTtJQUVELDBDQUFRLEdBQVIsVUFBUyxDQUFrQjtRQUN6QixvQ0FBb0M7UUFDcEMsSUFBTSxDQUFDLEdBQUcsQ0FBQyxDQUFDLEtBQUssQ0FBQztRQUVsQixnQ0FBZ0M7UUFDaEMsSUFBTSxDQUFDLEdBQVEsQ0FBQyxDQUFDLElBQUksQ0FBQyxHQUFHLENBQUMsSUFBSSxDQUFDLGFBQWEsQ0FBQyxDQUFDO1FBRTlDLGtCQUFrQjtRQUNsQixJQUFJLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDLEtBQUssRUFBRTtZQUN0QixPQUFPLEVBQUUsYUFBYSxFQUFFLEtBQUssRUFBRSxDQUFDO1NBQ2pDO1FBRUQsMEJBQTBCO1FBQzFCLElBQUksQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUMsS0FBSyxJQUFJLElBQUksQ0FBQyxTQUFTLEVBQUU7WUFDeEMsT0FBTyxDQUFDLENBQUMsTUFBTSxDQUFDLGVBQWUsQ0FBQyxDQUFDO1lBQ2pDLElBQUksQ0FBQyxNQUFNLENBQUMsSUFBSSxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsQ0FBQyxNQUFNLEVBQUU7Z0JBQ2pDLENBQUMsQ0FBQyxTQUFTLENBQUMsSUFBSSxDQUFDLENBQUM7YUFDbkI7U0FDRjtRQUVELDhCQUE4QjtRQUM5QixJQUFJLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDLEtBQUssSUFBSSxJQUFJLENBQUMsU0FBUyxFQUFFO1lBQ3hDLENBQUMsQ0FBQyxTQUFTLENBQUM7Z0JBQ1YsYUFBYSxFQUFFLEtBQUs7YUFDckIsQ0FBQyxDQUFDO1NBQ0o7UUFFRCxlQUFlO1FBQ2YsT0FBTyxJQUFJLENBQUM7SUFDZCxDQUFDOzs7NkNBeENFLFNBQVMsU0FBQyxlQUFlOzZDQUN6QixTQUFTLFNBQUMsU0FBUzs7SUFIWCx1QkFBdUI7UUFQbkMsU0FBUyxDQUFDO1lBQ1QsUUFBUSxFQUNOLDRGQUE0RjtZQUM5RixTQUFTLEVBQUU7Z0JBQ1QsRUFBRSxPQUFPLEVBQUUsYUFBYSxFQUFFLFdBQVcsRUFBRSxVQUFVLENBQUMsY0FBTSxPQUFBLHlCQUF1QixFQUF2QixDQUF1QixDQUFDLEVBQUUsS0FBSyxFQUFFLElBQUksRUFBRTthQUNoRztTQUNGLENBQUM7UUFHRyxXQUFBLFNBQVMsQ0FBQyxlQUFlLENBQUMsQ0FBQTtRQUMxQixXQUFBLFNBQVMsQ0FBQyxTQUFTLENBQUMsQ0FBQTs7T0FIWix1QkFBdUIsQ0EyQ25DO0lBQUQsOEJBQUM7Q0FBQSxBQTNDRCxJQTJDQztTQTNDWSx1QkFBdUIiLCJzb3VyY2VzQ29udGVudCI6WyJpbXBvcnQgeyBEaXJlY3RpdmUsIGZvcndhcmRSZWYsIEF0dHJpYnV0ZSB9IGZyb20gJ0Bhbmd1bGFyL2NvcmUnO1xuaW1wb3J0IHsgVmFsaWRhdG9yLCBBYnN0cmFjdENvbnRyb2wsIE5HX1ZBTElEQVRPUlMgfSBmcm9tICdAYW5ndWxhci9mb3Jtcyc7XG5cbkBEaXJlY3RpdmUoe1xuICBzZWxlY3RvcjpcbiAgICAnW21kYi12YWxpZGF0ZUVxdWFsXVtmb3JtQ29udHJvbE5hbWVdLFt2YWxpZGF0ZUVxdWFsXVtmb3JtQ29udHJvbF0sW3ZhbGlkYXRlRXF1YWxdW25nTW9kZWxdJyxcbiAgcHJvdmlkZXJzOiBbXG4gICAgeyBwcm92aWRlOiBOR19WQUxJREFUT1JTLCB1c2VFeGlzdGluZzogZm9yd2FyZFJlZigoKSA9PiBFcXVhbFZhbGlkYXRvckRpcmVjdGl2ZSksIG11bHRpOiB0cnVlIH0sXG4gIF0sXG59KVxuZXhwb3J0IGNsYXNzIEVxdWFsVmFsaWRhdG9yRGlyZWN0aXZlIGltcGxlbWVudHMgVmFsaWRhdG9yIHtcbiAgY29uc3RydWN0b3IoXG4gICAgQEF0dHJpYnV0ZSgndmFsaWRhdGVFcXVhbCcpIHB1YmxpYyB2YWxpZGF0ZUVxdWFsOiBzdHJpbmcsXG4gICAgQEF0dHJpYnV0ZSgncmV2ZXJzZScpIHB1YmxpYyByZXZlcnNlOiBzdHJpbmdcbiAgKSB7fVxuXG4gIHByaXZhdGUgZ2V0IGlzUmV2ZXJzZSgpIHtcbiAgICBpZiAoIXRoaXMucmV2ZXJzZSkge1xuICAgICAgcmV0dXJuIGZhbHNlO1xuICAgIH1cbiAgICByZXR1cm4gdGhpcy5yZXZlcnNlID09PSAndHJ1ZScgPyB0cnVlIDogZmFsc2U7XG4gIH1cblxuICB2YWxpZGF0ZShjOiBBYnN0cmFjdENvbnRyb2wpOiB7IFtrZXk6IHN0cmluZ106IGFueSB9IHwgbnVsbCB7XG4gICAgLy8gc2VsZiB2YWx1ZSAoZS5nLiByZXR5cGUgcGFzc3dvcmQpXG4gICAgY29uc3QgdiA9IGMudmFsdWU7XG5cbiAgICAvLyBjb250cm9sIHZhbHVlIChlLmcuIHBhc3N3b3JkKVxuICAgIGNvbnN0IGU6IGFueSA9IGMucm9vdC5nZXQodGhpcy52YWxpZGF0ZUVxdWFsKTtcblxuICAgIC8vIHZhbHVlIG5vdCBlcXVhbFxuICAgIGlmIChlICYmIHYgIT09IGUudmFsdWUpIHtcbiAgICAgIHJldHVybiB7IHZhbGlkYXRlRXF1YWw6IGZhbHNlIH07XG4gICAgfVxuXG4gICAgLy8gdmFsdWUgZXF1YWwgYW5kIHJldmVyc2VcbiAgICBpZiAoZSAmJiB2ID09PSBlLnZhbHVlICYmIHRoaXMuaXNSZXZlcnNlKSB7XG4gICAgICBkZWxldGUgZS5lcnJvcnNbJ3ZhbGlkYXRlRXF1YWwnXTtcbiAgICAgIGlmICghT2JqZWN0LmtleXMoZS5lcnJvcnMpLmxlbmd0aCkge1xuICAgICAgICBlLnNldEVycm9ycyhudWxsKTtcbiAgICAgIH1cbiAgICB9XG5cbiAgICAvLyB2YWx1ZSBub3QgZXF1YWwgYW5kIHJldmVyc2VcbiAgICBpZiAoZSAmJiB2ICE9PSBlLnZhbHVlICYmIHRoaXMuaXNSZXZlcnNlKSB7XG4gICAgICBlLnNldEVycm9ycyh7XG4gICAgICAgIHZhbGlkYXRlRXF1YWw6IGZhbHNlLFxuICAgICAgfSk7XG4gICAgfVxuXG4gICAgLy8gcmV0dXJuIG51bGw7XG4gICAgcmV0dXJuIG51bGw7XG4gIH1cbn1cbiJdfQ==