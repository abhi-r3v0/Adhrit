/*tslint:disable:no-invalid-this */
/* tslint:disable-next-line: no-any */
export function OnChange() {
    var sufix = 'Change';
    /* tslint:disable-next-line: no-any */
    return function OnChangeHandler(target, propertyKey) {
        var _key = " __" + propertyKey + "Value";
        Object.defineProperty(target, propertyKey, {
            /* tslint:disable-next-line: no-any */
            get: function () {
                return this[_key];
            },
            /* tslint:disable-next-line: no-any */
            set: function (value) {
                var prevValue = this[_key];
                this[_key] = value;
                if (prevValue !== value && this[propertyKey + sufix]) {
                    this[propertyKey + sufix].emit(value);
                }
            }
        });
    };
}
/* tslint:enable */
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGVjb3JhdG9ycy5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvdXRpbGl0aWVzL2RlY29yYXRvcnMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUEsbUNBQW1DO0FBQ25DLHNDQUFzQztBQUN0QyxNQUFNLFVBQVUsUUFBUTtJQUN0QixJQUFNLEtBQUssR0FBRyxRQUFRLENBQUM7SUFFdkIsc0NBQXNDO0lBQ3RDLE9BQU8sU0FBUyxlQUFlLENBQUMsTUFBVyxFQUFFLFdBQW1CO1FBQzlELElBQU0sSUFBSSxHQUFHLFFBQU0sV0FBVyxVQUFPLENBQUM7UUFDdEMsTUFBTSxDQUFDLGNBQWMsQ0FBQyxNQUFNLEVBQUUsV0FBVyxFQUFFO1lBQ3pDLHNDQUFzQztZQUN0QyxHQUFHLEVBQUg7Z0JBQ0UsT0FBTyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7WUFDcEIsQ0FBQztZQUNELHNDQUFzQztZQUN0QyxHQUFHLEVBQUgsVUFBSSxLQUFVO2dCQUNaLElBQU0sU0FBUyxHQUFHLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztnQkFDN0IsSUFBSSxDQUFDLElBQUksQ0FBQyxHQUFHLEtBQUssQ0FBQztnQkFDbkIsSUFBSSxTQUFTLEtBQUssS0FBSyxJQUFJLElBQUksQ0FBQyxXQUFXLEdBQUcsS0FBSyxDQUFDLEVBQUU7b0JBQ3BELElBQUksQ0FBQyxXQUFXLEdBQUcsS0FBSyxDQUFDLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDO2lCQUN2QztZQUNILENBQUM7U0FDRixDQUFDLENBQUM7SUFDTCxDQUFDLENBQUM7QUFDSixDQUFDO0FBQ0QsbUJBQW1CIiwic291cmNlc0NvbnRlbnQiOlsiLyp0c2xpbnQ6ZGlzYWJsZTpuby1pbnZhbGlkLXRoaXMgKi9cbi8qIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTogbm8tYW55ICovXG5leHBvcnQgZnVuY3Rpb24gT25DaGFuZ2UoKTogYW55IHtcbiAgY29uc3Qgc3VmaXggPSAnQ2hhbmdlJztcblxuICAvKiB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6IG5vLWFueSAqL1xuICByZXR1cm4gZnVuY3Rpb24gT25DaGFuZ2VIYW5kbGVyKHRhcmdldDogYW55LCBwcm9wZXJ0eUtleTogc3RyaW5nKTogdm9pZCB7XG4gICAgY29uc3QgX2tleSA9IGAgX18ke3Byb3BlcnR5S2V5fVZhbHVlYDtcbiAgICBPYmplY3QuZGVmaW5lUHJvcGVydHkodGFyZ2V0LCBwcm9wZXJ0eUtleSwge1xuICAgICAgLyogdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOiBuby1hbnkgKi9cbiAgICAgIGdldCgpOiBhbnkge1xuICAgICAgICByZXR1cm4gdGhpc1tfa2V5XTtcbiAgICAgIH0sXG4gICAgICAvKiB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6IG5vLWFueSAqL1xuICAgICAgc2V0KHZhbHVlOiBhbnkpOiB2b2lkIHtcbiAgICAgICAgY29uc3QgcHJldlZhbHVlID0gdGhpc1tfa2V5XTtcbiAgICAgICAgdGhpc1tfa2V5XSA9IHZhbHVlO1xuICAgICAgICBpZiAocHJldlZhbHVlICE9PSB2YWx1ZSAmJiB0aGlzW3Byb3BlcnR5S2V5ICsgc3VmaXhdKSB7XG4gICAgICAgICAgdGhpc1twcm9wZXJ0eUtleSArIHN1Zml4XS5lbWl0KHZhbHVlKTtcbiAgICAgICAgfVxuICAgICAgfVxuICAgIH0pO1xuICB9O1xufVxuLyogdHNsaW50OmVuYWJsZSAqL1xuIl19