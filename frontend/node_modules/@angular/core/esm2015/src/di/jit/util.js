/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ChangeDetectorRef } from '../../change_detection/change_detector_ref';
import { getCompilerFacade, R3ResolvedDependencyType } from '../../compiler/compiler_facade';
import { ReflectionCapabilities } from '../../reflection/reflection_capabilities';
import { Attribute, Host, Inject, Optional, Self, SkipSelf } from '../metadata';
let _reflect = null;
export function getReflect() {
    return (_reflect = _reflect || new ReflectionCapabilities());
}
export function reflectDependencies(type) {
    return convertDependencies(getReflect().parameters(type));
}
export function convertDependencies(deps) {
    const compiler = getCompilerFacade();
    return deps.map(dep => reflectDependency(compiler, dep));
}
function reflectDependency(compiler, dep) {
    const meta = {
        token: null,
        host: false,
        optional: false,
        resolved: compiler.R3ResolvedDependencyType.Token,
        self: false,
        skipSelf: false,
    };
    function setTokenAndResolvedType(token) {
        meta.resolved = compiler.R3ResolvedDependencyType.Token;
        meta.token = token;
    }
    if (Array.isArray(dep) && dep.length > 0) {
        for (let j = 0; j < dep.length; j++) {
            const param = dep[j];
            if (param === undefined) {
                // param may be undefined if type of dep is not set by ngtsc
                continue;
            }
            const proto = Object.getPrototypeOf(param);
            if (param instanceof Optional || proto.ngMetadataName === 'Optional') {
                meta.optional = true;
            }
            else if (param instanceof SkipSelf || proto.ngMetadataName === 'SkipSelf') {
                meta.skipSelf = true;
            }
            else if (param instanceof Self || proto.ngMetadataName === 'Self') {
                meta.self = true;
            }
            else if (param instanceof Host || proto.ngMetadataName === 'Host') {
                meta.host = true;
            }
            else if (param instanceof Inject) {
                meta.token = param.token;
            }
            else if (param instanceof Attribute) {
                if (param.attributeName === undefined) {
                    throw new Error(`Attribute name must be defined.`);
                }
                meta.token = param.attributeName;
                meta.resolved = compiler.R3ResolvedDependencyType.Attribute;
            }
            else if (param === ChangeDetectorRef) {
                meta.token = param;
                meta.resolved = compiler.R3ResolvedDependencyType.ChangeDetectorRef;
            }
            else {
                setTokenAndResolvedType(param);
            }
        }
    }
    else if (dep === undefined || (Array.isArray(dep) && dep.length === 0)) {
        meta.token = undefined;
        meta.resolved = R3ResolvedDependencyType.Invalid;
    }
    else {
        setTokenAndResolvedType(dep);
    }
    return meta;
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL2RpL2ppdC91dGlsLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBQyxpQkFBaUIsRUFBQyxNQUFNLDRDQUE0QyxDQUFDO0FBQzdFLE9BQU8sRUFBaUIsaUJBQWlCLEVBQThCLHdCQUF3QixFQUFDLE1BQU0sZ0NBQWdDLENBQUM7QUFFdkksT0FBTyxFQUFDLHNCQUFzQixFQUFDLE1BQU0sMENBQTBDLENBQUM7QUFDaEYsT0FBTyxFQUFDLFNBQVMsRUFBRSxJQUFJLEVBQUUsTUFBTSxFQUFFLFFBQVEsRUFBRSxJQUFJLEVBQUUsUUFBUSxFQUFDLE1BQU0sYUFBYSxDQUFDO0FBRTlFLElBQUksUUFBUSxHQUFnQyxJQUFJLENBQUM7QUFFakQsTUFBTSxVQUFVLFVBQVU7SUFDeEIsT0FBTyxDQUFDLFFBQVEsR0FBRyxRQUFRLElBQUksSUFBSSxzQkFBc0IsRUFBRSxDQUFDLENBQUM7QUFDL0QsQ0FBQztBQUVELE1BQU0sVUFBVSxtQkFBbUIsQ0FBQyxJQUFlO0lBQ2pELE9BQU8sbUJBQW1CLENBQUMsVUFBVSxFQUFFLENBQUMsVUFBVSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7QUFDNUQsQ0FBQztBQUVELE1BQU0sVUFBVSxtQkFBbUIsQ0FBQyxJQUFXO0lBQzdDLE1BQU0sUUFBUSxHQUFHLGlCQUFpQixFQUFFLENBQUM7SUFDckMsT0FBTyxJQUFJLENBQUMsR0FBRyxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsaUJBQWlCLENBQUMsUUFBUSxFQUFFLEdBQUcsQ0FBQyxDQUFDLENBQUM7QUFDM0QsQ0FBQztBQUVELFNBQVMsaUJBQWlCLENBQUMsUUFBd0IsRUFBRSxHQUFjO0lBQ2pFLE1BQU0sSUFBSSxHQUErQjtRQUN2QyxLQUFLLEVBQUUsSUFBSTtRQUNYLElBQUksRUFB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bnNlXG4gKiBDb3B5cmlnaHQgR29vZ2xlIExMQyBBbGwgUmlnaHRzIFJlc2VydmVkLlxuICpcbiAqIFVzZSBvZiB0aGlzIHNvdXJjZSBjb2RlIGlzIGdvdmVybmVkIGJ5IGFuIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4gKiBmb3VuZCBpbiB0aGUgTElDRU5TRSBmaWxlIGF0IGh0dHBzOi8vYW5ndWxhci5pby9saWNlbnNlXG4gKi9cblxuaW1wb3J0IHtDaGFuZ2VEZXRlY3RvclJlZn0gZnJvbSAnLi4vLi4vY2hhbmdlX2RldGVjdGlvbi9jaGFuZ2VfZGV0ZWN0b3JfcmVmJztcbmltcG9ydCB7Q29tcGlsZXJGYWNhZGUsIGdldENvbXBpbGVyRmFjYWRlLCBSM0RlcGVuZGVuY3lNZXRhZGF0YUZhY2FkZSwgUjNSZXNvbHZlZERlcGVuZGVuY3lUeXBlfSBmcm9tICcuLi8uLi9jb21waWxlci9jb21waWxlcl9mYWNhZGUnO1xuaW1wb3J0IHtUeXBlfSBmcm9tICcuLi8uLi9pbnRlcmZhY2UvdHlwZSc7XG5pbXBvcnQge1JlZmxlY3Rpb25DYXBhYmlsaXRpZXN9IGZyb20gJy4uLy4uL3JlZmxlY3Rpb24vcmVmbGVjdGlvbl9jYXBhYmlsaXRpZXMnO1xuaW1wb3J0IHtBdHRyaWJ1dGUsIEhvc3QsIEluamVjdCwgT3B0aW9uYWwsIFNlbGYsIFNraXBTZWxmfSBmcm9tICcuLi9tZXRhZGF0YSc7XG5cbmxldCBfcmVmbGVjdDogUmVmbGVjdGlvbkNhcGFiaWxpdGllc3xudWxsID0gbnVsbDtcblxuZXhwb3J0IGZ1bmN0aW9uIGdldFJlZmxlY3QoKTogUmVmbGVjdGlvbkNhcGFiaWxpdGllcyB7XG4gIHJldHVybiAoX3JlZmxlY3QgPSBfcmVmbGVjdCB8fCBuZXcgUmVmbGVjdGlvbkNhcGFiaWxpdGllcygpKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIHJlZmxlY3REZXBlbmRlbmNpZXModHlwZTogVHlwZTxhbnk+KTogUjNEZXBlbmRlbmN5TWV0YWRhdGFGYWNhZGVbXSB7XG4gIHJldHVybiBjb252ZXJ0RGVwZW5kZW5jaWVzKGdldFJlZmxlY3QoKS5wYXJhbWV0ZXJzKHR5cGUpKTtcbn1cblxuZXhwb3J0IGZ1bmN0aW9uIGNvbnZlcnREZXBlbmRlbmNpZXMoZGVwczogYW55W10pOiBSM0RlcGVuZGVuY3lNZXRhZGF0YUZhY2FkZVtdIHtcbiAgY29uc3QgY29tcGlsZXIgPSBnZXRDb21waWxlckZhY2FkZSgpO1xuICByZXR1cm4gZGVwcy5tYXAoZGVwID0+IHJlZmxlY3REZXBlbmRlbmN5KGNvbXBpbGVyLCBkZXApKTtcbn1cblxuZnVuY3Rpb24gcmVmbGVjdERlcGVuZGVuY3koY29tcGlsZXI6IENvbXBpbGVyRmFjYWRlLCBkZXA6IGFueXxhbnlbXSk6IFIzRGVwZW5kZW5jeU1ldGFkYXRhRmFjYWRlIHtcbiAgY29uc3QgbWV0YTogUjNEZXBlbmRlbmN5TWV0YWRhdGFGYWNhZGUgPSB7XG4gICAgdG9rZW46IG51bGwsXG4gICAgaG9zdDogZmFsc2UsXG4gICAgb3B0aW9uYWw6IGZhbHNlLFxuICAgIHJlc29sdmVkOiBjb21waWxlci5SM1Jlc29sdmVkRGVwZW5kZW5jeVR5cGUuVG9rZW4sXG4gICAgc2VsZjogZmFsc2UsXG4gICAgc2tpcFNlbGY6IGZhbHNlLFxuICB9O1xuXG4gIGZ1bmN0aW9uIHNldFRva2VuQW5kUmVzb2x2ZWRUeXBlKHRva2VuOiBhbnkpOiB2b2lkIHtcbiAgICBtZXRhLnJlc29sdmVkID0gY29tcGlsZXIuUjNSZXNvbHZlZERlcGVuZGVuY3lUeXBlLlRva2VuO1xuICAgIG1ldGEudG9rZW4gPSB0b2tlbjtcbiAgfVxuXG4gIGlmIChBcnJheS5pc0FycmF5KGRlcCkgJiYgZGVwLmxlbmd0aCA+IDApIHtcbiAgICBmb3IgKGxldCBqID0gMDsgaiA8IGRlcC5sZW5ndGg7IGorKykge1xuICAgICAgY29uc3QgcGFyYW0gPSBkZXBbal07XG4gICAgICBpZiAocGFyYW0gPT09IHVuZGVmaW5lZCkge1xuICAgICAgICAvLyBwYXJhbSBtYXkgYmUgdW5kZWZpbmVkIGlmIHR5cGUgb2YgZGVwIGlzIG5vdCBzZXQgYnkgbmd0c2NcbiAgICAgICAgY29udGludWU7XG4gICAgICB9XG5cbiAgICAgIGNvbnN0IHByb3RvID0gT2JqZWN0LmdldFByb3RvdHlwZU9mKHBhcmFtKTtcblxuICAgICAgaWYgKHBhcmFtIGluc3RhbmNlb2YgT3B0aW9uYWwgfHwgcHJvdG8ubmdNZXRhZGF0YU5hbWUgPT09ICdPcHRpb25hbCcpIHtcbiAgICAgICAgbWV0YS5vcHRpb25hbCA9IHRydWU7XG4gICAgICB9IGVsc2UgaWYgKHBhcmFtIGluc3RhbmNlb2YgU2tpcFNlbGYgfHwgcHJvdG8ubmdNZXRhZGF0YU5hbWUgPT09ICdTa2lwU2VsZicpIHtcbiAgICAgICAgbWV0YS5za2lwU2VsZiA9IHRydWU7XG4gICAgICB9IGVsc2UgaWYgKHBhcmFtIGluc3RhbmNlb2YgU2VsZiB8fCBwcm90by5uZ01ldGFkYXRhTmFtZSA9PT0gJ1NlbGYnKSB7XG4gICAgICAgIG1ldGEuc2VsZiA9IHRydWU7XG4gICAgICB9IGVsc2UgaWYgKHBhcmFtIGluc3RhbmNlb2YgSG9zdCB8fCBwcm90by5uZ01ldGFkYXRhTmFtZSA9PT0gJ0hvc3QnKSB7XG4gICAgICAgIG1ldGEuaG9zdCA9IHRydWU7XG4gICAgICB9IGVsc2UgaWYgKHBhcmFtIGluc3RhbmNlb2YgSW5qZWN0KSB7XG4gICAgICAgIG1ldGEudG9rZW4gPSBwYXJhbS50b2tlbjtcbiAgICAgIH0gZWxzZSBpZiAocGFyYW0gaW5zdGFuY2VvZiBBdHRyaWJ1dGUpIHtcbiAgICAgICAgaWYgKHBhcmFtLmF0dHJpYnV0ZU5hbWUgPT09IHVuZGVmaW5lZCkge1xuICAgICAgICAgIHRocm93IG5ldyBFcnJvcihgQXR0cmlidXRlIG5hbWUgbXVzdCBiZSBkZWZpbmVkLmApO1xuICAgICAgICB9XG4gICAgICAgIG1ldGEudG9rZW4gPSBwYXJhbS5hdHRyaWJ1dGVOYW1lO1xuICAgICAgICBtZXRhLnJlc29sdmVkID0gY29tcGlsZXIuUjNSZXNvbHZlZERlcGVuZGVuY3lUeXBlLkF0dHJpYnV0ZTtcbiAgICAgIH0gZWxzZSBpZiAocGFyYW0gPT09IENoYW5nZURldGVjdG9yUmVmKSB7XG4gICAgICAgIG1ldGEudG9rZW4gPSBwYXJhbTtcbiAgICAgICAgbWV0YS5yZXNvbHZlZCA9IGNvbXBpbGVyLlIzUmVzb2x2ZWREZXBlbmRlbmN5VHlwZS5DaGFuZ2VEZXRlY3RvclJlZjtcbiAgICAgIH0gZWxzZSB7XG4gICAgICAgIHNldFRva2VuQW5kUmVzb2x2ZWRUeXBlKHBhcmFtKTtcbiAgICAgIH1cbiAgICB9XG4gIH0gZWxzZSBpZiAoZGVwID09PSB1bmRlZmluZWQgfHwgKEFycmF5LmlzQXJyYXkoZGVwKSAmJiBkZXAubGVuZ3RoID09PSAwKSkge1xuICAgIG1ldGEudG9rZW4gPSB1bmRlZmluZWQ7XG4gICAgbWV0YS5yZXNvbHZlZCA9IFIzUmVzb2x2ZWREZXBlbmRlbmN5VHlwZS5JbnZhbGlkO1xuICB9IGVsc2Uge1xuICAgIHNldFRva2VuQW5kUmVzb2x2ZWRUeXBlKGRlcCk7XG4gIH1cbiAgcmV0dXJuIG1ldGE7XG59XG4iXX0=