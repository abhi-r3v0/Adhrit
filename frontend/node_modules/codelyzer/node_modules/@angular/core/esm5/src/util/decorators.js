/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { __read, __spread } from "tslib";
export var ANNOTATIONS = '__annotations__';
export var PARAMETERS = '__parameters__';
export var PROP_METADATA = '__prop__metadata__';
/**
 * @suppress {globalThis}
 */
export function makeDecorator(name, props, parentClass, additionalProcessing, typeFn) {
    var metaCtor = makeMetadataCtor(props);
    function DecoratorFactory() {
        var _a;
        var args = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            args[_i] = arguments[_i];
        }
        if (this instanceof DecoratorFactory) {
            metaCtor.call.apply(metaCtor, __spread([this], args));
            return this;
        }
        var annotationInstance = new ((_a = DecoratorFactory).bind.apply(_a, __spread([void 0], args)))();
        return function TypeDecorator(cls) {
            if (typeFn)
                typeFn.apply(void 0, __spread([cls], args));
            // Use of Object.defineProperty is important since it creates non-enumerable property which
            // prevents the property is copied during subclassing.
            var annotations = cls.hasOwnProperty(ANNOTATIONS) ?
                cls[ANNOTATIONS] :
                Object.defineProperty(cls, ANNOTATIONS, { value: [] })[ANNOTATIONS];
            annotations.push(annotationInstance);
            if (additionalProcessing)
                additionalProcessing(cls);
            return cls;
        };
    }
    if (parentClass) {
        DecoratorFactory.prototype = Object.create(parentClass.prototype);
    }
    DecoratorFactory.prototype.ngMetadataName = name;
    DecoratorFactory.annotationCls = DecoratorFactory;
    return DecoratorFactory;
}
function makeMetadataCtor(props) {
    return function ctor() {
        var args = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            args[_i] = arguments[_i];
        }
        if (props) {
            var values = props.apply(void 0, __spread(args));
            for (var propName in values) {
                this[propName] = values[propName];
            }
        }
    };
}
export function makeParamDecorator(name, props, parentClass) {
    var metaCtor = makeMetadataCtor(props);
    function ParamDecoratorFactory() {
        var _a;
        var args = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            args[_i] = arguments[_i];
        }
        if (this instanceof ParamDecoratorFactory) {
            metaCtor.apply(this, args);
            return this;
        }
        var annotationInstance = new ((_a = ParamDecoratorFactory).bind.apply(_a, __spread([void 0], args)))();
        ParamDecorator.annotation = annotationInstance;
        return ParamDecorator;
        function ParamDecorator(cls, unusedKey, index) {
            // Use of Object.defineProperty is important since it creates non-enumerable property which
            // prevents the property is copied during subclassing.
            var parameters = cls.hasOwnProperty(PARAMETERS) ?
                cls[PARAMETERS] :
                Object.defineProperty(cls, PARAMETERS, { value: [] })[PARAMETERS];
            // there might be gaps if some in between parameters do not have annotations.
            // we pad with nulls.
            while (parameters.length <= index) {
                parameters.push(null);
            }
            (parameters[index] = parameters[index] || []).push(annotationInstance);
            return cls;
        }
    }
    if (parentClass) {
        ParamDecoratorFactory.prototype = Object.create(parentClass.prototype);
    }
    ParamDecoratorFactory.prototype.ngMetadataName = name;
    ParamDecoratorFactory.annotationCls = ParamDecoratorFactory;
    return ParamDecoratorFactory;
}
export function makePropDecorator(name, props, parentClass, additionalProcessing) {
    var metaCtor = makeMetadataCtor(props);
    function PropDecoratorFactory() {
        var _a;
        var args = [];
        for (var _i = 0; _i < arguments.length; _i++) {
            args[_i] = arguments[_i];
        }
        if (this instanceof PropDecoratorFactory) {
            metaCtor.apply(this, args);
            return this;
        }
        var decoratorInstance = new ((_a = PropDecoratorFactory).bind.apply(_a, __spread([void 0], args)))();
        function PropDecorator(target, name) {
            var constructor = target.constructor;
            // Use of Object.defineProperty is important since it creates non-enumerable property which
            // prevents the property is copied during subclassing.
            var meta = constructor.hasOwnProperty(PROP_METADATA) ?
                constructor[PROP_METADATA] :
                Object.defineProperty(constructor, PROP_METADATA, { value: {} })[PROP_METADATA];
            meta[name] = meta.hasOwnProperty(name) && meta[name] || [];
            meta[name].unshift(decoratorInstance);
            if (additionalProcessing)
                additionalProcessing.apply(void 0, __spread([target, name], args));
        }
        return PropDecorator;
    }
    if (parentClass) {
        PropDecoratorFactory.prototype = Object.create(parentClass.prototype);
    }
    PropDecoratorFactory.prototype.ngMetadataName = name;
    PropDecoratorFactory.annotationCls = PropDecoratorFactory;
    return PropDecoratorFactory;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiZGVjb3JhdG9ycy5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL3V0aWwvZGVjb3JhdG9ycy50cyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTs7Ozs7O0dBTUc7O0FBNEJILE1BQU0sQ0FBQyxJQUFNLFdBQVcsR0FBRyxpQkFBaUIsQ0FBQztBQUM3QyxNQUFNLENBQUMsSUFBTSxVQUFVLEdBQUcsZ0JBQWdCLENBQUM7QUFDM0MsTUFBTSxDQUFDLElBQU0sYUFBYSxHQUFHLG9CQUFvQixDQUFDO0FBRWxEOztHQUVHO0FBQ0gsTUFBTSxVQUFVLGFBQWEsQ0FDekIsSUFBWSxFQUFFLEtBQStCLEVBQUUsV0FBaUIsRUFDaEUsb0JBQThDLEVBQzlDLE1BQWdEO0lBRWxELElBQU0sUUFBUSxHQUFHLGdCQUFnQixDQUFDLEtBQUssQ0FBQyxDQUFDO0lBRXpDLFNBQVMsZ0JBQWdCOztRQUNvQixjQUFjO2FBQWQsVUFBYyxFQUFkLHFCQUFjLEVBQWQsSUFBYztZQUFkLHlCQUFjOztRQUN6RCxJQUFJLElBQUksWUFBWSxnQkFBZ0IsRUFBRTtZQUNwQyxRQUFRLENBQUMsSUFBSSxPQUFiLFFBQVEsWUFBTSxJQUFJLEdBQUssSUFBSSxHQUFFO1lBQzdCLE9BQU8sSUFBK0IsQ0FBQztTQUN4QztRQUVELElBQU0sa0JBQWtCLFFBQU8sQ0FBQSxLQUFDLGdCQUF3QixDQUFBLG1DQUFJLElBQUksS0FBQyxDQUFDO1FBQ2xFLE9BQU8sU0FBUyxhQUFhLENBQUMsR0FBWTtZQUN4QyxJQUFJLE1BQU07Z0JBQUUsTUFBTSx5QkFBQyxHQUFHLEdBQUssSUFBSSxHQUFFO1lBQ2pDLDJGQUEyRjtZQUMzRixzREFBc0Q7WUFDdEQsSUFBTSxXQUFXLEdBQUcsR0FBRyxDQUFDLGNBQWMsQ0FBQyxXQUFXLENBQUMsQ0FBQyxDQUFDO2dCQUNoRCxHQUFXLENBQUMsV0FBVyxDQUFDLENBQUMsQ0FBQztnQkFDM0IsTUFBTSxDQUFDLGNBQWMsQ0FBQyxHQUFHLEVBQUUsV0FBVyxFQUFFLEVBQUMsS0FBSyxFQUFFLEVBQUUsRUFBQyxDQUFDLENBQUMsV0FBVyxDQUFDLENBQUM7WUFDdEUsV0FBVyxDQUFDLElBQUksQ0FBQyxrQkFBa0IsQ0FBQyxDQUFDO1lBR3JDLElBQUksb0JBQW9CO2dCQUFFLG9CQUFvQixDQUFDLEdBQUcsQ0FBQyxDQUFDO1lBRXBELE9BQU8sR0FBRyxDQUFDO1FBQ2IsQ0FBQyxDQUFDO0lBQ0osQ0FBQztJQUVELElBQUksV0FBVyxFQUFFO1FBQ2YsZ0JBQWdCLENBQUMsU0FBUyxHQUFHLE1BQU0sQ0FBQyxNQUFNLENBQUMsV0FBVyxDQUFDLFNBQVMsQ0FBQyxDQUFDO0tBQ25FO0lBRUQsZ0JBQWdCLENBQUMsU0FBUyxDQUFDLGNBQWMsR0FBRyxJQUFJLENBQUM7SUFDaEQsZ0JBQXdCLENBQUMsYUFBYSxHQUFHLGdCQUFnQixDQUFDO0lBQzNELE9BQU8sZ0JBQXVCLENBQUM7QUFDakMsQ0FBQztBQUVELFNBQVMsZ0JBQWdCLENBQUMsS0FBK0I7SUFDdkQsT0FBTyxTQUFTLElBQUk7UUFBWSxjQUFjO2FBQWQsVUFBYyxFQUFkLHFCQUFjLEVBQWQsSUFBYztZQUFkLHlCQUFjOztRQUM1QyxJQUFJLEtBQUssRUFBRTtZQUNULElBQU0sTUFBTSxHQUFHLEtBQUssd0JBQUksSUFBSSxFQUFDLENBQUM7WUFDOUIsS0FBSyxJQUFNLFFBQVEsSUFBSSxNQUFNLEVBQUU7Z0JBQzdCLElBQUksQ0FBQyxRQUFRLENBQUMsR0FBRyxNQUFNLENBQUMsUUFBUSxDQUFDLENBQUM7YUFDbkM7U0FDRjtJQUNILENBQUMsQ0FBQztBQUNKLENBQUM7QUFFRCxNQUFNLFVBQVUsa0JBQWtCLENBQzlCLElBQVksRUFBRSxLQUErQixFQUFFLFdBQWlCO0lBQ2xFLElBQU0sUUFBUSxHQUFHLGdCQUFnQixDQUFDLEtBQUssQ0FBQyxDQUFDO0lBQ3pDLFNBQVMscUJBQXFCOztRQUNvQixjQUFjO2FBQWQsVUFBYyxFQUFkLHFCQUFjLEVBQWQsSUFBYztZQUFkLHlCQUFjOztRQUM5RCxJQUFJLElBQUksWUFBWSxxQkFBcUIsRUFBRTtZQUN6QyxRQUFRLENBQUMsS0FBSyxDQUFDLElBQUksRUFBRSxJQUFJLENBQUMsQ0FBQztZQUMzQixPQUFPLElBQUksQ0FBQztTQUNiO1FBQ0QsSUFBTSxrQkFBa0IsUUFBTyxDQUFBLEtBQU0scUJBQXNCLENBQUEsbUNBQUksSUFBSSxLQUFDLENBQUM7UUFFL0QsY0FBZSxDQUFDLFVBQVUsR0FBRyxrQkFBa0IsQ0FBQztRQUN0RCxPQUFPLGNBQWMsQ0FBQztRQUV0QixTQUFTLGNBQWMsQ0FBQyxHQUFRLEVBQUUsU0FBYyxFQUFFLEtBQWE7WUFDN0QsMkZBQTJGO1lBQzNGLHNEQUFzRDtZQUN0RCxJQUFNLFVBQVUsR0FBRyxHQUFHLENBQUMsY0FBYyxDQUFDLFVBQVUsQ0FBQyxDQUFDLENBQUM7Z0JBQzlDLEdBQVcsQ0FBQyxVQUFVLENBQUMsQ0FBQyxDQUFDO2dCQUMxQixNQUFNLENBQUMsY0FBYyxDQUFDLEdBQUcsRUFBRSxVQUFVLEVBQUUsRUFBQyxLQUFLLEVBQUUsRUFBRSxFQUFDLENBQUMsQ0FBQyxVQUFVLENBQUMsQ0FBQztZQUVwRSw2RUFBNkU7WUFDN0UscUJBQXFCO1lBQ3JCLE9BQU8sVUFBVSxDQUFDLE1BQU0sSUFBSSxLQUFLLEVBQUU7Z0JBQ2pDLFVBQVUsQ0FBQyxJQUFJLENBQUMsSUFBSSxDQUFDLENBQUM7YUFDdkI7WUFFRCxDQUFDLFVBQVUsQ0FBQyxLQUFLLENBQUMsR0FBRyxVQUFVLENBQUMsS0FBSyxDQUFDLElBQUksRUFBRSxDQUFDLENBQUMsSUFBSSxDQUFDLGtCQUFrQixDQUFDLENBQUM7WUFDdkUsT0FBTyxHQUFHLENBQUM7UUFDYixDQUFDO0lBQ0gsQ0FBQztJQUNELElBQUksV0FBVyxFQUFFO1FBQ2YscUJBQXFCLENBQUMsU0FBUyxHQUFHLE1BQU0sQ0FBQyxNQUFNLENBQUMsV0FBVyxDQUFDLFNBQVMsQ0FBQyxDQUFDO0tBQ3hFO0lBQ0QscUJBQXFCLENBQUMsU0FBUyxDQUFDLGNBQWMsR0FBRyxJQUFJLENBQUM7SUFDaEQscUJBQXNCLENBQUMsYUFBYSxHQUFHLHFCQUFxQixDQUFDO0lBQ25FLE9BQU8scUJBQXFCLENBQUM7QUFDL0IsQ0FBQztBQUVELE1BQU0sVUFBVSxpQkFBaUIsQ0FDN0IsSUFBWSxFQUFFLEtBQStCLEVBQUUsV0FBaUIsRUFDaEUsb0JBQTBFO0lBQzVFLElBQU0sUUFBUSxHQUFHLGdCQUFnQixDQUFDLEtBQUssQ0FBQyxDQUFDO0lBRXpDLFNBQVMsb0JBQW9COztRQUE4QyxjQUFjO2FBQWQsVUFBYyxFQUFkLHFCQUFjLEVBQWQsSUFBYztZQUFkLHlCQUFjOztRQUN2RixJQUFJLElBQUksWUFBWSxvQkFBb0IsRUFBRTtZQUN4QyxRQUFRLENBQUMsS0FBSyxDQUFDLElBQUksRUFBRSxJQUFJLENBQUMsQ0FBQztZQUMzQixPQUFPLElBQUksQ0FBQztTQUNiO1FBRUQsSUFBTSxpQkFBaUIsUUFBTyxDQUFBLEtBQU0sb0JBQXFCLENBQUEsbUNBQUksSUFBSSxLQUFDLENBQUM7UUFFbkUsU0FBUyxhQUFhLENBQUMsTUFBVyxFQUFFLElBQVk7WUFDOUMsSUFBTSxXQUFXLEdBQUcsTUFBTSxDQUFDLFdBQVcsQ0FBQztZQUN2QywyRkFBMkY7WUFDM0Ysc0RBQXNEO1lBQ3RELElBQU0sSUFBSSxHQUFHLFdBQVcsQ0FBQyxjQUFjLENBQUMsYUFBYSxDQUFDLENBQUMsQ0FBQztnQkFDbkQsV0FBbUIsQ0FBQyxhQUFhLENBQUMsQ0FBQyxDQUFDO2dCQUNyQyxNQUFNLENBQUMsY0FBYyxDQUFDLFdBQVcsRUFBRSxhQUFhLEVBQUUsRUFBQyxLQUFLLEVBQUUsRUFBRSxFQUFDLENBQUMsQ0FBQyxhQUFhLENBQUMsQ0FBQztZQUNsRixJQUFJLENBQUMsSUFBSSxDQUFDLEdBQUcsSUFBSSxDQUFDLGNBQWMsQ0FBQyxJQUFJLENBQUMsSUFBSSxJQUFJLENBQUMsSUFBSSxDQUFDLElBQUksRUFBRSxDQUFDO1lBQzNELElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQyxPQUFPLENBQUMsaUJBQWlCLENBQUMsQ0FBQztZQUV0QyxJQUFJLG9CQUFvQjtnQkFBRSxvQkFBb0IseUJBQUMsTUFBTSxFQUFFLElBQUksR0FBSyxJQUFJLEdBQUU7UUFDeEUsQ0FBQztRQUVELE9BQU8sYUFBYSxDQUFDO0lBQ3ZCLENBQUM7SUFFRCxJQUFJLFdBQVcsRUFBRTtRQUNmLG9CQUFvQixDQUFDLFNBQVMsR0FBRyxNQUFNLENBQUMsTUFBTSxDQUFDLFdBQVcsQ0FBQyxTQUFTLENBQUMsQ0FBQztLQUN2RTtJQUVELG9CQUFvQixDQUFDLFNBQVMsQ0FBQyxjQUFjLEdBQUcsSUFBSSxDQUFDO0lBQy9DLG9CQUFxQixDQUFDLGFBQWEsR0FBRyxvQkFBb0IsQ0FBQztJQUNqRSxPQUFPLG9CQUFvQixDQUFDO0FBQzlCLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIEluYy4gQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7VHlwZX0gZnJvbSAnLi4vaW50ZXJmYWNlL3R5cGUnO1xuXG4vKipcbiAqIEFuIGludGVyZmFjZSBpbXBsZW1lbnRlZCBieSBhbGwgQW5ndWxhciB0eXBlIGRlY29yYXRvcnMsIHdoaWNoIGFsbG93cyB0aGVtIHRvIGJlIHVzZWQgYXNcbiAqIGRlY29yYXRvcnMgYXMgd2VsbCBhcyBBbmd1bGFyIHN5bnRheC5cbiAqXG4gKiBgYGBcbiAqIEBuZy5Db21wb25lbnQoey4uLn0pXG4gKiBjbGFzcyBNeUNsYXNzIHsuLi59XG4gKiBgYGBcbiAqXG4gKiBAcHVibGljQXBpXG4gKi9cbmV4cG9ydCBpbnRlcmZhY2UgVHlwZURlY29yYXRvciB7XG4gIC8qKlxuICAgKiBJbnZva2UgYXMgZGVjb3JhdG9yLlxuICAgKi9cbiAgPFQgZXh0ZW5kcyBUeXBlPGFueT4+KHR5cGU6IFQpOiBUO1xuXG4gIC8vIE1ha2UgVHlwZURlY29yYXRvciBhc3NpZ25hYmxlIHRvIGJ1aWx0LWluIFBhcmFtZXRlckRlY29yYXRvciB0eXBlLlxuICAvLyBQYXJhbWV0ZXJEZWNvcmF0b3IgaXMgZGVjbGFyZWQgaW4gbGliLmQudHMgYXMgYSBgZGVjbGFyZSB0eXBlYFxuICAvLyBzbyB3ZSBjYW5ub3QgZGVjbGFyZSB0aGlzIGludGVyZmFjZSBhcyBhIHN1YnR5cGUuXG4gIC8vIHNlZSBodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9hbmd1bGFyL2lzc3Vlcy8zMzc5I2lzc3VlY29tbWVudC0xMjYxNjk0MTdcbiAgKHRhcmdldDogT2JqZWN0LCBwcm9wZXJ0eUtleT86IHN0cmluZ3xzeW1ib2wsIHBhcmFtZXRlckluZGV4PzogbnVtYmVyKTogdm9pZDtcbn1cblxuZXhwb3J0IGNvbnN0IEFOTk9UQVRJT05TID0gJ19fYW5ub3RhdGlvbnNfXyc7XG5leHBvcnQgY29uc3QgUEFSQU1FVEVSUyA9ICdfX3BhcmFtZXRlcnNfXyc7XG5leHBvcnQgY29uc3QgUFJPUF9NRVRBREFUQSA9ICdfX3Byb3BfX21ldGFkYXRhX18nO1xuXG4vKipcbiAqIEBzdXBwcmVzcyB7Z2xvYmFsVGhpc31cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIG1ha2VEZWNvcmF0b3I8VD4oXG4gICAgbmFtZTogc3RyaW5nLCBwcm9wcz86ICguLi5hcmdzOiBhbnlbXSkgPT4gYW55LCBwYXJlbnRDbGFzcz86IGFueSxcbiAgICBhZGRpdGlvbmFsUHJvY2Vzc2luZz86ICh0eXBlOiBUeXBlPFQ+KSA9PiB2b2lkLFxuICAgIHR5cGVGbj86ICh0eXBlOiBUeXBlPFQ+LCAuLi5hcmdzOiBhbnlbXSkgPT4gdm9pZCk6XG4gICAge25ldyAoLi4uYXJnczogYW55W10pOiBhbnk7ICguLi5hcmdzOiBhbnlbXSk6IGFueTsgKC4uLmFyZ3M6IGFueVtdKTogKGNsczogYW55KSA9PiBhbnk7fSB7XG4gIGNvbnN0IG1ldGFDdG9yID0gbWFrZU1ldGFkYXRhQ3Rvcihwcm9wcyk7XG5cbiAgZnVuY3Rpb24gRGVjb3JhdG9yRmFjdG9yeShcbiAgICAgIHRoaXM6IHVua25vd24gfCB0eXBlb2YgRGVjb3JhdG9yRmFjdG9yeSwgLi4uYXJnczogYW55W10pOiAoY2xzOiBUeXBlPFQ+KSA9PiBhbnkge1xuICAgIGlmICh0aGlzIGluc3RhbmNlb2YgRGVjb3JhdG9yRmFjdG9yeSkge1xuICAgICAgbWV0YUN0b3IuY2FsbCh0aGlzLCAuLi5hcmdzKTtcbiAgICAgIHJldHVybiB0aGlzIGFzIHR5cGVvZiBEZWNvcmF0b3JGYWN0b3J5O1xuICAgIH1cblxuICAgIGNvbnN0IGFubm90YXRpb25JbnN0YW5jZSA9IG5ldyAoRGVjb3JhdG9yRmFjdG9yeSBhcyBhbnkpKC4uLmFyZ3MpO1xuICAgIHJldHVybiBmdW5jdGlvbiBUeXBlRGVjb3JhdG9yKGNsczogVHlwZTxUPikge1xuICAgICAgaWYgKHR5cGVGbikgdHlwZUZuKGNscywgLi4uYXJncyk7XG4gICAgICAvLyBVc2Ugb2YgT2JqZWN0LmRlZmluZVByb3BlcnR5IGlzIGltcG9ydGFudCBzaW5jZSBpdCBjcmVhdGVzIG5vbi1lbnVtZXJhYmxlIHByb3BlcnR5IHdoaWNoXG4gICAgICAvLyBwcmV2ZW50cyB0aGUgcHJvcGVydHkgaXMgY29waWVkIGR1cmluZyBzdWJjbGFzc2luZy5cbiAgICAgIGNvbnN0IGFubm90YXRpb25zID0gY2xzLmhhc093blByb3BlcnR5KEFOTk9UQVRJT05TKSA/XG4gICAgICAgICAgKGNscyBhcyBhbnkpW0FOTk9UQVRJT05TXSA6XG4gICAgICAgICAgT2JqZWN0LmRlZmluZVByb3BlcnR5KGNscywgQU5OT1RBVElPTlMsIHt2YWx1ZTogW119KVtBTk5PVEFUSU9OU107XG4gICAgICBhbm5vdGF0aW9ucy5wdXNoKGFubm90YXRpb25JbnN0YW5jZSk7XG5cblxuICAgICAgaWYgKGFkZGl0aW9uYWxQcm9jZXNzaW5nKSBhZGRpdGlvbmFsUHJvY2Vzc2luZyhjbHMpO1xuXG4gICAgICByZXR1cm4gY2xzO1xuICAgIH07XG4gIH1cblxuICBpZiAocGFyZW50Q2xhc3MpIHtcbiAgICBEZWNvcmF0b3JGYWN0b3J5LnByb3RvdHlwZSA9IE9iamVjdC5jcmVhdGUocGFyZW50Q2xhc3MucHJvdG90eXBlKTtcbiAgfVxuXG4gIERlY29yYXRvckZhY3RvcnkucHJvdG90eXBlLm5nTWV0YWRhdGFOYW1lID0gbmFtZTtcbiAgKERlY29yYXRvckZhY3RvcnkgYXMgYW55KS5hbm5vdGF0aW9uQ2xzID0gRGVjb3JhdG9yRmFjdG9yeTtcbiAgcmV0dXJuIERlY29yYXRvckZhY3RvcnkgYXMgYW55O1xufVxuXG5mdW5jdGlvbiBtYWtlTWV0YWRhdGFDdG9yKHByb3BzPzogKC4uLmFyZ3M6IGFueVtdKSA9PiBhbnkpOiBhbnkge1xuICByZXR1cm4gZnVuY3Rpb24gY3Rvcih0aGlzOiBhbnksIC4uLmFyZ3M6IGFueVtdKSB7XG4gICAgaWYgKHByb3BzKSB7XG4gICAgICBjb25zdCB2YWx1ZXMgPSBwcm9wcyguLi5hcmdzKTtcbiAgICAgIGZvciAoY29uc3QgcHJvcE5hbWUgaW4gdmFsdWVzKSB7XG4gICAgICAgIHRoaXNbcHJvcE5hbWVdID0gdmFsdWVzW3Byb3BOYW1lXTtcbiAgICAgIH1cbiAgICB9XG4gIH07XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBtYWtlUGFyYW1EZWNvcmF0b3IoXG4gICAgbmFtZTogc3RyaW5nLCBwcm9wcz86ICguLi5hcmdzOiBhbnlbXSkgPT4gYW55LCBwYXJlbnRDbGFzcz86IGFueSk6IGFueSB7XG4gIGNvbnN0IG1ldGFDdG9yID0gbWFrZU1ldGFkYXRhQ3Rvcihwcm9wcyk7XG4gIGZ1bmN0aW9uIFBhcmFtRGVjb3JhdG9yRmFjdG9yeShcbiAgICAgIHRoaXM6IHVua25vd24gfCB0eXBlb2YgUGFyYW1EZWNvcmF0b3JGYWN0b3J5LCAuLi5hcmdzOiBhbnlbXSk6IGFueSB7XG4gICAgaWYgKHRoaXMgaW5zdGFuY2VvZiBQYXJhbURlY29yYXRvckZhY3RvcnkpIHtcbiAgICAgIG1ldGFDdG9yLmFwcGx5KHRoaXMsIGFyZ3MpO1xuICAgICAgcmV0dXJuIHRoaXM7XG4gICAgfVxuICAgIGNvbnN0IGFubm90YXRpb25JbnN0YW5jZSA9IG5ldyAoPGFueT5QYXJhbURlY29yYXRvckZhY3RvcnkpKC4uLmFyZ3MpO1xuXG4gICAgKDxhbnk+UGFyYW1EZWNvcmF0b3IpLmFubm90YXRpb24gPSBhbm5vdGF0aW9uSW5zdGFuY2U7XG4gICAgcmV0dXJuIFBhcmFtRGVjb3JhdG9yO1xuXG4gICAgZnVuY3Rpb24gUGFyYW1EZWNvcmF0b3IoY2xzOiBhbnksIHVudXNlZEtleTogYW55LCBpbmRleDogbnVtYmVyKTogYW55IHtcbiAgICAgIC8vIFVzZSBvZiBPYmplY3QuZGVmaW5lUHJvcGVydHkgaXMgaW1wb3J0YW50IHNpbmNlIGl0IGNyZWF0ZXMgbm9uLWVudW1lcmFibGUgcHJvcGVydHkgd2hpY2hcbiAgICAgIC8vIHByZXZlbnRzIHRoZSBwcm9wZXJ0eSBpcyBjb3BpZWQgZHVyaW5nIHN1YmNsYXNzaW5nLlxuICAgICAgY29uc3QgcGFyYW1ldGVycyA9IGNscy5oYXNPd25Qcm9wZXJ0eShQQVJBTUVURVJTKSA/XG4gICAgICAgICAgKGNscyBhcyBhbnkpW1BBUkFNRVRFUlNdIDpcbiAgICAgICAgICBPYmplY3QuZGVmaW5lUHJvcGVydHkoY2xzLCBQQVJBTUVURVJTLCB7dmFsdWU6IFtdfSlbUEFSQU1FVEVSU107XG5cbiAgICAgIC8vIHRoZXJlIG1pZ2h0IGJlIGdhcHMgaWYgc29tZSBpbiBiZXR3ZWVuIHBhcmFtZXRlcnMgZG8gbm90IGhhdmUgYW5ub3RhdGlvbnMuXG4gICAgICAvLyB3ZSBwYWQgd2l0aCBudWxscy5cbiAgICAgIHdoaWxlIChwYXJhbWV0ZXJzLmxlbmd0aCA8PSBpbmRleCkge1xuICAgICAgICBwYXJhbWV0ZXJzLnB1c2gobnVsbCk7XG4gICAgICB9XG5cbiAgICAgIChwYXJhbWV0ZXJzW2luZGV4XSA9IHBhcmFtZXRlcnNbaW5kZXhdIHx8IFtdKS5wdXNoKGFubm90YXRpb25JbnN0YW5jZSk7XG4gICAgICByZXR1cm4gY2xzO1xuICAgIH1cbiAgfVxuICBpZiAocGFyZW50Q2xhc3MpIHtcbiAgICBQYXJhbURlY29yYXRvckZhY3RvcnkucHJvdG90eXBlID0gT2JqZWN0LmNyZWF0ZShwYXJlbnRDbGFzcy5wcm90b3R5cGUpO1xuICB9XG4gIFBhcmFtRGVjb3JhdG9yRmFjdG9yeS5wcm90b3R5cGUubmdNZXRhZGF0YU5hbWUgPSBuYW1lO1xuICAoPGFueT5QYXJhbURlY29yYXRvckZhY3RvcnkpLmFubm90YXRpb25DbHMgPSBQYXJhbURlY29yYXRvckZhY3Rvcnk7XG4gIHJldHVybiBQYXJhbURlY29yYXRvckZhY3Rvcnk7XG59XG5cbmV4cG9ydCBmdW5jdGlvbiBtYWtlUHJvcERlY29yYXRvcihcbiAgICBuYW1lOiBzdHJpbmcsIHByb3BzPzogKC4uLmFyZ3M6IGFueVtdKSA9PiBhbnksIHBhcmVudENsYXNzPzogYW55LFxuICAgIGFkZGl0aW9uYWxQcm9jZXNzaW5nPzogKHRhcmdldDogYW55LCBuYW1lOiBzdHJpbmcsIC4uLmFyZ3M6IGFueVtdKSA9PiB2b2lkKTogYW55IHtcbiAgY29uc3QgbWV0YUN0b3IgPSBtYWtlTWV0YWRhdGFDdG9yKHByb3BzKTtcblxuICBmdW5jdGlvbiBQcm9wRGVjb3JhdG9yRmFjdG9yeSh0aGlzOiB1bmtub3duIHwgdHlwZW9mIFByb3BEZWNvcmF0b3JGYWN0b3J5LCAuLi5hcmdzOiBhbnlbXSk6IGFueSB7XG4gICAgaWYgKHRoaXMgaW5zdGFuY2VvZiBQcm9wRGVjb3JhdG9yRmFjdG9yeSkge1xuICAgICAgbWV0YUN0b3IuYXBwbHkodGhpcywgYXJncyk7XG4gICAgICByZXR1cm4gdGhpcztcbiAgICB9XG5cbiAgICBjb25zdCBkZWNvcmF0b3JJbnN0YW5jZSA9IG5ldyAoPGFueT5Qcm9wRGVjb3JhdG9yRmFjdG9yeSkoLi4uYXJncyk7XG5cbiAgICBmdW5jdGlvbiBQcm9wRGVjb3JhdG9yKHRhcmdldDogYW55LCBuYW1lOiBzdHJpbmcpIHtcbiAgICAgIGNvbnN0IGNvbnN0cnVjdG9yID0gdGFyZ2V0LmNvbnN0cnVjdG9yO1xuICAgICAgLy8gVXNlIG9mIE9iamVjdC5kZWZpbmVQcm9wZXJ0eSBpcyBpbXBvcnRhbnQgc2luY2UgaXQgY3JlYXRlcyBub24tZW51bWVyYWJsZSBwcm9wZXJ0eSB3aGljaFxuICAgICAgLy8gcHJldmVudHMgdGhlIHByb3BlcnR5IGlzIGNvcGllZCBkdXJpbmcgc3ViY2xhc3NpbmcuXG4gICAgICBjb25zdCBtZXRhID0gY29uc3RydWN0b3IuaGFzT3duUHJvcGVydHkoUFJPUF9NRVRBREFUQSkgP1xuICAgICAgICAgIChjb25zdHJ1Y3RvciBhcyBhbnkpW1BST1BfTUVUQURBVEFdIDpcbiAgICAgICAgICBPYmplY3QuZGVmaW5lUHJvcGVydHkoY29uc3RydWN0b3IsIFBST1BfTUVUQURBVEEsIHt2YWx1ZToge319KVtQUk9QX01FVEFEQVRBXTtcbiAgICAgIG1ldGFbbmFtZV0gPSBtZXRhLmhhc093blByb3BlcnR5KG5hbWUpICYmIG1ldGFbbmFtZV0gfHwgW107XG4gICAgICBtZXRhW25hbWVdLnVuc2hpZnQoZGVjb3JhdG9ySW5zdGFuY2UpO1xuXG4gICAgICBpZiAoYWRkaXRpb25hbFByb2Nlc3NpbmcpIGFkZGl0aW9uYWxQcm9jZXNzaW5nKHRhcmdldCwgbmFtZSwgLi4uYXJncyk7XG4gICAgfVxuXG4gICAgcmV0dXJuIFByb3BEZWNvcmF0b3I7XG4gIH1cblxuICBpZiAocGFyZW50Q2xhc3MpIHtcbiAgICBQcm9wRGVjb3JhdG9yRmFjdG9yeS5wcm90b3R5cGUgPSBPYmplY3QuY3JlYXRlKHBhcmVudENsYXNzLnByb3RvdHlwZSk7XG4gIH1cblxuICBQcm9wRGVjb3JhdG9yRmFjdG9yeS5wcm90b3R5cGUubmdNZXRhZGF0YU5hbWUgPSBuYW1lO1xuICAoPGFueT5Qcm9wRGVjb3JhdG9yRmFjdG9yeSkuYW5ub3RhdGlvbkNscyA9IFByb3BEZWNvcmF0b3JGYWN0b3J5O1xuICByZXR1cm4gUHJvcERlY29yYXRvckZhY3Rvcnk7XG59XG4iXX0=