/*tslint:disable:no-invalid-this */
/* tslint:disable-next-line: no-any */
export function OnChange() {
    const sufix = 'Change';
    /* tslint:disable-next-line: no-any */
    return function OnChangeHandler(target, propertyKey) {
        const _key = ` __${propertyKey}Value`;
        Object.defineProperty(target, propertyKey, {
            /* tslint:disable-next-line: no-any */
            get() {
                return this[_key];
            },
            /* tslint:disable-next-line: no-any */
            set(value) {
                const prevValue = this[_key];
                this[_key] = value;
                if (prevValue !== value && this[propertyKey + sufix]) {
                    this[propertyKey + sufix].emit(value);
                }
            }
        });
    };
}
/* tslint:enable */
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGVjb3JhdG9ycy5qcyIsInNvdXJjZVJvb3QiOiJuZzovL2FuZ3VsYXItYm9vdHN0cmFwLW1kLyIsInNvdXJjZXMiOlsibGliL2ZyZWUvdXRpbGl0aWVzL2RlY29yYXRvcnMudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUEsbUNBQW1DO0FBQ25DLHNDQUFzQztBQUN0QyxNQUFNLFVBQVUsUUFBUTtJQUN0QixNQUFNLEtBQUssR0FBRyxRQUFRLENBQUM7SUFFdkIsc0NBQXNDO0lBQ3RDLE9BQU8sU0FBUyxlQUFlLENBQUMsTUFBVyxFQUFFLFdBQW1CO1FBQzlELE1BQU0sSUFBSSxHQUFHLE1BQU0sV0FBVyxPQUFPLENBQUM7UUFDdEMsTUFBTSxDQUFDLGNBQWMsQ0FBQyxNQUFNLEVBQUUsV0FBVyxFQUFFO1lBQ3pDLHNDQUFzQztZQUN0QyxHQUFHO2dCQUNELE9BQU8sSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO1lBQ3BCLENBQUM7WUFDRCxzQ0FBc0M7WUFDdEMsR0FBRyxDQUFDLEtBQVU7Z0JBQ1osTUFBTSxTQUFTLEdBQUcsSUFBSSxDQUFDLElBQUksQ0FBQyxDQUFDO2dCQUM3QixJQUFJLENBQUMsSUFBSSxDQUFDLEdBQUcsS0FBSyxDQUFDO2dCQUNuQixJQUFJLFNBQVMsS0FBSyxLQUFLLElBQUksSUFBSSxDQUFDLFdBQVcsR0FBRyxLQUFLLENBQUMsRUFBRTtvQkFDcEQsSUFBSSxDQUFDLFdBQVcsR0FBRyxLQUFLLENBQUMsQ0FBQyxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUM7aUJBQ3ZDO1lBQ0gsQ0FBQztTQUNGLENBQUMsQ0FBQztJQUNMLENBQUMsQ0FBQztBQUNKLENBQUM7QUFDRCxtQkFBbUIiLCJzb3VyY2VzQ29udGVudCI6WyIvKnRzbGludDpkaXNhYmxlOm5vLWludmFsaWQtdGhpcyAqL1xuLyogdHNsaW50OmRpc2FibGUtbmV4dC1saW5lOiBuby1hbnkgKi9cbmV4cG9ydCBmdW5jdGlvbiBPbkNoYW5nZSgpOiBhbnkge1xuICBjb25zdCBzdWZpeCA9ICdDaGFuZ2UnO1xuXG4gIC8qIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTogbm8tYW55ICovXG4gIHJldHVybiBmdW5jdGlvbiBPbkNoYW5nZUhhbmRsZXIodGFyZ2V0OiBhbnksIHByb3BlcnR5S2V5OiBzdHJpbmcpOiB2b2lkIHtcbiAgICBjb25zdCBfa2V5ID0gYCBfXyR7cHJvcGVydHlLZXl9VmFsdWVgO1xuICAgIE9iamVjdC5kZWZpbmVQcm9wZXJ0eSh0YXJnZXQsIHByb3BlcnR5S2V5LCB7XG4gICAgICAvKiB0c2xpbnQ6ZGlzYWJsZS1uZXh0LWxpbmU6IG5vLWFueSAqL1xuICAgICAgZ2V0KCk6IGFueSB7XG4gICAgICAgIHJldHVybiB0aGlzW19rZXldO1xuICAgICAgfSxcbiAgICAgIC8qIHRzbGludDpkaXNhYmxlLW5leHQtbGluZTogbm8tYW55ICovXG4gICAgICBzZXQodmFsdWU6IGFueSk6IHZvaWQge1xuICAgICAgICBjb25zdCBwcmV2VmFsdWUgPSB0aGlzW19rZXldO1xuICAgICAgICB0aGlzW19rZXldID0gdmFsdWU7XG4gICAgICAgIGlmIChwcmV2VmFsdWUgIT09IHZhbHVlICYmIHRoaXNbcHJvcGVydHlLZXkgKyBzdWZpeF0pIHtcbiAgICAgICAgICB0aGlzW3Byb3BlcnR5S2V5ICsgc3VmaXhdLmVtaXQodmFsdWUpO1xuICAgICAgICB9XG4gICAgICB9XG4gICAgfSk7XG4gIH07XG59XG4vKiB0c2xpbnQ6ZW5hYmxlICovXG4iXX0=