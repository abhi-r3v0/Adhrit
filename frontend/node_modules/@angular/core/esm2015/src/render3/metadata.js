/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { noSideEffects } from '../util/closure';
/**
 * Adds decorator, constructor, and property metadata to a given type via static metadata fields
 * on the type.
 *
 * These metadata fields can later be read with Angular's `ReflectionCapabilities` API.
 *
 * Calls to `setClassMetadata` can be marked as pure, resulting in the metadata assignments being
 * tree-shaken away during production builds.
 */
export function setClassMetadata(type, decorators, ctorParameters, propDecorators) {
    return noSideEffects(() => {
        const clazz = type;
        // We determine whether a class has its own metadata by taking the metadata from the
        // parent constructor and checking whether it's the same as the subclass metadata below.
        // We can't use `hasOwnProperty` here because it doesn't work correctly in IE10 for
        // static fields that are defined by TS. See
        // https://github.com/angular/angular/pull/28439#issuecomment-459349218.
        const parentPrototype = clazz.prototype ? Object.getPrototypeOf(clazz.prototype) : null;
        const parentConstructor = parentPrototype && parentPrototype.constructor;
        if (decorators !== null) {
            if (clazz.decorators !== undefined &&
                (!parentConstructor || parentConstructor.decorators !== clazz.decorators)) {
                clazz.decorators.push(...decorators);
            }
            else {
                clazz.decorators = decorators;
            }
        }
        if (ctorParameters !== null) {
            // Rather than merging, clobber the existing parameters. If other projects exist which
            // use tsickle-style annotations and reflect over them in the same way, this could
            // cause issues, but that is vanishingly unlikely.
            clazz.ctorParameters = ctorParameters;
        }
        if (propDecorators !== null) {
            // The property decorator objects are merged as it is possible different fields have
            // different decorator types. Decorators on individual fields are not merged, as it's
            // also incredibly unlikely that a field will be decorated both with an Angular
            // decorator and a non-Angular decorator that's also been downleveled.
            if (clazz.propDecorators !== undefined &&
                (!parentConstructor ||
                    parentConstructor.propDecorators !== clazz.propDecorators)) {
                clazz.propDecorators = Object.assign(Object.assign({}, clazz.propDecorators), propDecorators);
            }
            else {
                clazz.propDecorators = propDecorators;
            }
        }
    });
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoibWV0YWRhdGEuanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi8uLi8uLi8uLi8uLi8uLi9wYWNrYWdlcy9jb3JlL3NyYy9yZW5kZXIzL21ldGFkYXRhLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUdILE9BQU8sRUFBQyxhQUFhLEVBQUMsTUFBTSxpQkFBaUIsQ0FBQztBQVE5Qzs7Ozs7Ozs7R0FRRztBQUNILE1BQU0sVUFBVSxnQkFBZ0IsQ0FDNUIsSUFBZSxFQUFFLFVBQXNCLEVBQUUsY0FBa0MsRUFDM0UsY0FBMkM7SUFDN0MsT0FBTyxhQUFhLENBQUMsR0FBRyxFQUFFO1FBQ2pCLE1BQU0sS0FBSyxHQUFHLElBQXdCLENBQUM7UUFFdkMsb0ZBQW9GO1FBQ3BGLHdGQUF3RjtRQUN4RixtRkFBbUY7UUFDbkYsNENBQTRDO1FBQzVDLHdFQUF3RTtRQUN4RSxNQUFNLGVBQWUsR0FBRyxLQUFLLENBQUMsU0FBUyxDQUFDLENBQUMsQ0FBQyxNQUFNLENBQUMsY0FBYyxDQUFDLEtBQUssQ0FBQyxTQUFTLENBQUMsQ0FBQyxDQUFDLENBQUMsSUFBSSxDQUFDO1FBQ3hGLE1BQU0saUJBQWlCLEdBQ25CLGVBQWUsSUFBSSxlQUFlLENBQUMsV0FBVyxDQUFDO1FBRW5ELElBQUksVUFBVSxLQUFLLElBQUksRUFBRTtZQUN2QixJQUFJLEtBQUssQ0FBQyxVQUFVLEtBQUssU0FBUztnQkFDOUIsQ0FBQyxDQUFDLGlCQUFpQixJQUFJLGlCQUFpQixDQUFDLFVBQVUsS0FBSyxLQUFLLENBQUMsVUFBVSxDQUFDLEVBQUU7Z0JBQzdFLEtBQUssQ0FBQyxVQUFVLENBQUMsSUFBSSxDQUFDLEdBQUcsVUFBVSxDQUFDLENBQUM7YUFDdEM7aUJBQU07Z0JBQ0wsS0FBSyxDQUFDLFVBQVUsR0FBRyxVQUFVLENBQUM7YUFDL0I7U0FDRjtRQUNELElBQUksY0FBYyxLQUFLLElBQUksRUFBRTtZQUMzQixzRkFBc0Y7WUFDdEYsa0ZBQWtGO1lBQ2xGLGtEQUFrRDtZQUNsRCxLQUFLLENBQUMsY0FBYyxHQUFHLGNBQWMsQ0FBQztTQUN2QztRQUNELElBQUksY0FBYyxLQUFLLElBQUksRUFBRTtZQUMzQixvRkFBb0Y7WUFDcEYscUZBQXFGO1lBQ3JGLCtFQUErRTtZQUMvRSxzRUFBc0U7WUFDdEUsSUFBSSxLQUFLLENBQUMsY0FBYyxLQUFLLFNBQVM7Z0JBQ2xDLENBQUMsQ0FBQyxpQkFBaUI7b0JBQ2xCLGlCQUFpQixDQUFDLGNBQWMsS0FBSyxLQUFLLENBQUMsY0FBYyxDQUFDLEVBQUU7Z0JBQy9ELEtBQUssQ0FBQyxjQUFjLG1DQUFPLEtBQUssQ0FBQyxjQUFjLEdBQUssY0FBYyxDQUFDLENBQUM7YUFDckU7aUJBQU07Z0JBQ0wsS0FBSyxDQUFDLGNBQWMsR0FBRyxjQUFjLENBQUM7YUFDdkM7U0FDRjtJQUNILENBQUMsQ0FBVSxDQUFDO0FBQ3JCLENBQUMiLCJzb3VyY2VzQ29udGVudCI6WyIvKipcbiAqIEBsaWNlbnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtUeXBlfSBmcm9tICcuLi9pbnRlcmZhY2UvdHlwZSc7XG5pbXBvcnQge25vU2lkZUVmZmVjdHN9IGZyb20gJy4uL3V0aWwvY2xvc3VyZSc7XG5cbmludGVyZmFjZSBUeXBlV2l0aE1ldGFkYXRhIGV4dGVuZHMgVHlwZTxhbnk+IHtcbiAgZGVjb3JhdG9ycz86IGFueVtdO1xuICBjdG9yUGFyYW1ldGVycz86ICgpID0+IGFueVtdO1xuICBwcm9wRGVjb3JhdG9ycz86IHtbZmllbGQ6IHN0cmluZ106IGFueX07XG59XG5cbi8qKlxuICogQWRkcyBkZWNvcmF0b3IsIGNvbnN0cnVjdG9yLCBhbmQgcHJvcGVydHkgbWV0YWRhdGEgdG8gYSBnaXZlbiB0eXBlIHZpYSBzdGF0aWMgbWV0YWRhdGEgZmllbGRzXG4gKiBvbiB0aGUgdHlwZS5cbiAqXG4gKiBUaGVzZSBtZXRhZGF0YSBmaWVsZHMgY2FuIGxhdGVyIGJlIHJlYWQgd2l0aCBBbmd1bGFyJ3MgYFJlZmxlY3Rpb25DYXBhYmlsaXRpZXNgIEFQSS5cbiAqXG4gKiBDYWxscyB0byBgc2V0Q2xhc3NNZXRhZGF0YWAgY2FuIGJlIG1hcmtlZCBhcyBwdXJlLCByZXN1bHRpbmcgaW4gdGhlIG1ldGFkYXRhIGFzc2lnbm1lbnRzIGJlaW5nXG4gKiB0cmVlLXNoYWtlbiBhd2F5IGR1cmluZyBwcm9kdWN0aW9uIGJ1aWxkcy5cbiAqL1xuZXhwb3J0IGZ1bmN0aW9uIHNldENsYXNzTWV0YWRhdGEoXG4gICAgdHlwZTogVHlwZTxhbnk+LCBkZWNvcmF0b3JzOiBhbnlbXXxudWxsLCBjdG9yUGFyYW1ldGVyczogKCgpID0+IGFueVtdKXxudWxsLFxuICAgIHByb3BEZWNvcmF0b3JzOiB7W2ZpZWxkOiBzdHJpbmddOiBhbnl9fG51bGwpOiB2b2lkIHtcbiAgcmV0dXJuIG5vU2lkZUVmZmVjdHMoKCkgPT4ge1xuICAgICAgICAgICBjb25zdCBjbGF6eiA9IHR5cGUgYXMgVHlwZVdpdGhNZXRhZGF0YTtcblxuICAgICAgICAgICAvLyBXZSBkZXRlcm1pbmUgd2hldGhlciBhIGNsYXNzIGhhcyBpdHMgb3duIG1ldGFkYXRhIGJ5IHRha2luZyB0aGUgbWV0YWRhdGEgZnJvbSB0aGVcbiAgICAgICAgICAgLy8gcGFyZW50IGNvbnN0cnVjdG9yIGFuZCBjaGVja2luZyB3aGV0aGVyIGl0J3MgdGhlIHNhbWUgYXMgdGhlIHN1YmNsYXNzIG1ldGFkYXRhIGJlbG93LlxuICAgICAgICAgICAvLyBXZSBjYW4ndCB1c2UgYGhhc093blByb3BlcnR5YCBoZXJlIGJlY2F1c2UgaXQgZG9lc24ndCB3b3JrIGNvcnJlY3RseSBpbiBJRTEwIGZvclxuICAgICAgICAgICAvLyBzdGF0aWMgZmllbGRzIHRoYXQgYXJlIGRlZmluZWQgYnkgVFMuIFNlZVxuICAgICAgICAgICAvLyBodHRwczovL2dpdGh1Yi5jb20vYW5ndWxhci9hbmd1bGFyL3B1bGwvMjg0MzkjaXNzdWVjb21tZW50LTQ1OTM0OTIxOC5cbiAgICAgICAgICAgY29uc3QgcGFyZW50UHJvdG90eXBlID0gY2xhenoucHJvdG90eXBlID8gT2JqZWN0LmdldFByb3RvdHlwZU9mKGNsYXp6LnByb3RvdHlwZSkgOiBudWxsO1xuICAgICAgICAgICBjb25zdCBwYXJlbnRDb25zdHJ1Y3RvcjogVHlwZVdpdGhNZXRhZGF0YXxudWxsID1cbiAgICAgICAgICAgICAgIHBhcmVudFByb3RvdHlwZSAmJiBwYXJlbnRQcm90b3R5cGUuY29uc3RydWN0b3I7XG5cbiAgICAgICAgICAgaWYgKGRlY29yYXRvcnMgIT09IG51bGwpIHtcbiAgICAgICAgICAgICBpZiAoY2xhenouZGVjb3JhdG9ycyAhPT0gdW5kZWZpbmVkICYmXG4gICAgICAgICAgICAgICAgICghcGFyZW50Q29uc3RydWN0b3IgfHwgcGFyZW50Q29uc3RydWN0b3IuZGVjb3JhdG9ycyAhPT0gY2xhenouZGVjb3JhdG9ycykpIHtcbiAgICAgICAgICAgICAgIGNsYXp6LmRlY29yYXRvcnMucHVzaCguLi5kZWNvcmF0b3JzKTtcbiAgICAgICAgICAgICB9IGVsc2Uge1xuICAgICAgICAgICAgICAgY2xhenouZGVjb3JhdG9ycyA9IGRlY29yYXRvcnM7XG4gICAgICAgICAgICAgfVxuICAgICAgICAgICB9XG4gICAgICAgICAgIGlmIChjdG9yUGFyYW1ldGVycyAhPT0gbnVsbCkge1xuICAgICAgICAgICAgIC8vIFJhdGhlciB0aGFuIG1lcmdpbmcsIGNsb2JiZXIgdGhlIGV4aXN0aW5nIHBhcmFtZXRlcnMuIElmIG90aGVyIHByb2plY3RzIGV4aXN0IHdoaWNoXG4gICAgICAgICAgICAgLy8gdXNlIHRzaWNrbGUtc3R5bGUgYW5ub3RhdGlvbnMgYW5kIHJlZmxlY3Qgb3ZlciB0aGVtIGluIHRoZSBzYW1lIHdheSwgdGhpcyBjb3VsZFxuICAgICAgICAgICAgIC8vIGNhdXNlIGlzc3VlcywgYnV0IHRoYXQgaXMgdmFuaXNoaW5nbHkgdW5saWtlbHkuXG4gICAgICAgICAgICAgY2xhenouY3RvclBhcmFtZXRlcnMgPSBjdG9yUGFyYW1ldGVycztcbiAgICAgICAgICAgfVxuICAgICAgICAgICBpZiAocHJvcERlY29yYXRvcnMgIT09IG51bGwpIHtcbiAgICAgICAgICAgICAvLyBUaGUgcHJvcGVydHkgZGVjb3JhdG9yIG9iamVjdHMgYXJlIG1lcmdlZCBhcyBpdCBpcyBwb3NzaWJsZSBkaWZmZXJlbnQgZmllbGRzIGhhdmVcbiAgICAgICAgICAgICAvLyBkaWZmZXJlbnQgZGVjb3JhdG9yIHR5cGVzLiBEZWNvcmF0b3JzIG9uIGluZGl2aWR1YWwgZmllbGRzIGFyZSBub3QgbWVyZ2VkLCBhcyBpdCdzXG4gICAgICAgICAgICAgLy8gYWxzbyBpbmNyZWRpYmx5IHVubGlrZWx5IHRoYXQgYSBmaWVsZCB3aWxsIGJlIGRlY29yYXRlZCBib3RoIHdpdGggYW4gQW5ndWxhclxuICAgICAgICAgICAgIC8vIGRlY29yYXRvciBhbmQgYSBub24tQW5ndWxhciBkZWNvcmF0b3IgdGhhdCdzIGFsc28gYmVlbiBkb3dubGV2ZWxlZC5cbiAgICAgICAgICAgICBpZiAoY2xhenoucHJvcERlY29yYXRvcnMgIT09IHVuZGVmaW5lZCAmJlxuICAgICAgICAgICAgICAgICAoIXBhcmVudENvbnN0cnVjdG9yIHx8XG4gICAgICAgICAgICAgICAgICBwYXJlbnRDb25zdHJ1Y3Rvci5wcm9wRGVjb3JhdG9ycyAhPT0gY2xhenoucHJvcERlY29yYXRvcnMpKSB7XG4gICAgICAgICAgICAgICBjbGF6ei5wcm9wRGVjb3JhdG9ycyA9IHsuLi5jbGF6ei5wcm9wRGVjb3JhdG9ycywgLi4ucHJvcERlY29yYXRvcnN9O1xuICAgICAgICAgICAgIH0gZWxzZSB7XG4gICAgICAgICAgICAgICBjbGF6ei5wcm9wRGVjb3JhdG9ycyA9IHByb3BEZWNvcmF0b3JzO1xuICAgICAgICAgICAgIH1cbiAgICAgICAgICAgfVxuICAgICAgICAgfSkgYXMgbmV2ZXI7XG59XG4iXX0=