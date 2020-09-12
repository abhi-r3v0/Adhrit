/**
 * @fileoverview added by tsickle
 * Generated from: packages/core/src/di/jit/util.ts
 * @suppress {checkTypes,constantProperty,extraRequire,missingOverride,missingReturn,unusedPrivateMembers,uselessCode} checked by tsc
 */
/**
 * @license
 * Copyright Google Inc. All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { ChangeDetectorRef } from '../../change_detection/change_detector_ref';
import { R3ResolvedDependencyType, getCompilerFacade } from '../../compiler/compiler_facade';
import { ReflectionCapabilities } from '../../reflection/reflection_capabilities';
import { Attribute, Host, Inject, Optional, Self, SkipSelf } from '../metadata';
/** @type {?} */
let _reflect = null;
/**
 * @return {?}
 */
export function getReflect() {
    return (_reflect = _reflect || new ReflectionCapabilities());
}
/**
 * @param {?} type
 * @return {?}
 */
export function reflectDependencies(type) {
    return convertDependencies(getReflect().parameters(type));
}
/**
 * @param {?} deps
 * @return {?}
 */
export function convertDependencies(deps) {
    /** @type {?} */
    const compiler = getCompilerFacade();
    return deps.map((/**
     * @param {?} dep
     * @return {?}
     */
    dep => reflectDependency(compiler, dep)));
}
/**
 * @param {?} compiler
 * @param {?} dep
 * @return {?}
 */
function reflectDependency(compiler, dep) {
    /** @type {?} */
    const meta = {
        token: null,
        host: false,
        optional: false,
        resolved: compiler.R3ResolvedDependencyType.Token,
        self: false,
        skipSelf: false,
    };
    /**
     * @param {?} token
     * @return {?}
     */
    function setTokenAndResolvedType(token) {
        meta.resolved = compiler.R3ResolvedDependencyType.Token;
        meta.token = token;
    }
    if (Array.isArray(dep) && dep.length > 0) {
        for (let j = 0; j < dep.length; j++) {
            /** @type {?} */
            const param = dep[j];
            if (param === undefined) {
                // param may be undefined if type of dep is not set by ngtsc
                continue;
            }
            /** @type {?} */
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
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoidXRpbC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL2RpL2ppdC91dGlsLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7OztBQVFBLE9BQU8sRUFBQyxpQkFBaUIsRUFBQyxNQUFNLDRDQUE0QyxDQUFDO0FBQzdFLE9BQU8sRUFBNkMsd0JBQXdCLEVBQUUsaUJBQWlCLEVBQUMsTUFBTSxnQ0FBZ0MsQ0FBQztBQUV2SSxPQUFPLEVBQUMsc0JBQXNCLEVBQUMsTUFBTSwwQ0FBMEMsQ0FBQztBQUNoRixPQUFPLEVBQUMsU0FBUyxFQUFFLElBQUksRUFBRSxNQUFNLEVBQUUsUUFBUSxFQUFFLElBQUksRUFBRSxRQUFRLEVBQUMsTUFBTSxhQUFhLENBQUM7O0lBRTFFLFFBQVEsR0FBZ0MsSUFBSTs7OztBQUVoRCxNQUFNLFVBQVUsVUFBVTtJQUN4QixPQUFPLENBQUMsUUFBUSxHQUFHLFFBQVEsSUFBSSxJQUFJLHNCQUFzQixFQUFFLENBQUMsQ0FBQztBQUMvRCxDQUFDOzs7OztBQUVELE1BQU0sVUFBVSxtQkFBbUIsQ0FBQyxJQUFlO0lBQ2pELE9BQU8sbUJBQW1CLENBQUMsVUFBVSxFQUFFLENBQUMsVUFBVSxDQUFDLElBQUksQ0FBQyxDQUFDLENBQUM7QUFDNUQsQ0FBQzs7Ozs7QUFFRCxNQUFNLFVBQVUsbUJBQW1CLENBQUMsSUFBVzs7VUFDdkMsUUFBUSxHQUFHLGlCQUFpQixFQUFFO0lBQ3BDLE9BQU8sSUFBSSxDQUFDLEdBQUc7Ozs7SUFBQyxHQUFHLENBQUMsRUFBRSxDQUFDLGlCQUFpQixDQUFDLFFBQVEsRUFBRSxHQUFHLENBQUMsRUFBQyxDQUFDO0FBQzNELENBQUM7Ozs7OztBQUVELFNBQVMsaUJBQWlCLENBQUMsUUFBd0IsRUFBRSxHQUFnQjs7VUFDN0QsSUFBSSxHQUErQjtRQUN2QyxLQUFLLEVBQUUsSUFBSTtRQUNYLElBQUksRUFBRSxLQUFL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ZSBJbmMuIEFsbCBSaWdodHMgUmVzZXJ2ZWQuXG4gKlxuICogVXNlIG9mIHRoaXMgc291cmNlIGNvZGUgaXMgZ292ZXJuZWQgYnkgYW4gTUlULXN0eWxlIGxpY2Vuc2UgdGhhdCBjYW4gYmVcbiAqIGZvdW5kIGluIHRoZSBMSUNFTlNFIGZpbGUgYXQgaHR0cHM6Ly9hbmd1bGFyLmlvL2xpY2Vuc2VcbiAqL1xuXG5pbXBvcnQge0NoYW5nZURldGVjdG9yUmVmfSBmcm9tICcuLi8uLi9jaGFuZ2VfZGV0ZWN0aW9uL2NoYW5nZV9kZXRlY3Rvcl9yZWYnO1xuaW1wb3J0IHtDb21waWxlckZhY2FkZSwgUjNEZXBlbmRlbmN5TWV0YWRhdGFGYWNhZGUsIFIzUmVzb2x2ZWREZXBlbmRlbmN5VHlwZSwgZ2V0Q29tcGlsZXJGYWNhZGV9IGZyb20gJy4uLy4uL2NvbXBpbGVyL2NvbXBpbGVyX2ZhY2FkZSc7XG5pbXBvcnQge1R5cGV9IGZyb20gJy4uLy4uL2ludGVyZmFjZS90eXBlJztcbmltcG9ydCB7UmVmbGVjdGlvbkNhcGFiaWxpdGllc30gZnJvbSAnLi4vLi4vcmVmbGVjdGlvbi9yZWZsZWN0aW9uX2NhcGFiaWxpdGllcyc7XG5pbXBvcnQge0F0dHJpYnV0ZSwgSG9zdCwgSW5qZWN0LCBPcHRpb25hbCwgU2VsZiwgU2tpcFNlbGZ9IGZyb20gJy4uL21ldGFkYXRhJztcblxubGV0IF9yZWZsZWN0OiBSZWZsZWN0aW9uQ2FwYWJpbGl0aWVzfG51bGwgPSBudWxsO1xuXG5leHBvcnQgZnVuY3Rpb24gZ2V0UmVmbGVjdCgpOiBSZWZsZWN0aW9uQ2FwYWJpbGl0aWVzIHtcbiAgcmV0dXJuIChfcmVmbGVjdCA9IF9yZWZsZWN0IHx8IG5ldyBSZWZsZWN0aW9uQ2FwYWJpbGl0aWVzKCkpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gcmVmbGVjdERlcGVuZGVuY2llcyh0eXBlOiBUeXBlPGFueT4pOiBSM0RlcGVuZGVuY3lNZXRhZGF0YUZhY2FkZVtdIHtcbiAgcmV0dXJuIGNvbnZlcnREZXBlbmRlbmNpZXMoZ2V0UmVmbGVjdCgpLnBhcmFtZXRlcnModHlwZSkpO1xufVxuXG5leHBvcnQgZnVuY3Rpb24gY29udmVydERlcGVuZGVuY2llcyhkZXBzOiBhbnlbXSk6IFIzRGVwZW5kZW5jeU1ldGFkYXRhRmFjYWRlW10ge1xuICBjb25zdCBjb21waWxlciA9IGdldENvbXBpbGVyRmFjYWRlKCk7XG4gIHJldHVybiBkZXBzLm1hcChkZXAgPT4gcmVmbGVjdERlcGVuZGVuY3koY29tcGlsZXIsIGRlcCkpO1xufVxuXG5mdW5jdGlvbiByZWZsZWN0RGVwZW5kZW5jeShjb21waWxlcjogQ29tcGlsZXJGYWNhZGUsIGRlcDogYW55IHwgYW55W10pOiBSM0RlcGVuZGVuY3lNZXRhZGF0YUZhY2FkZSB7XG4gIGNvbnN0IG1ldGE6IFIzRGVwZW5kZW5jeU1ldGFkYXRhRmFjYWRlID0ge1xuICAgIHRva2VuOiBudWxsLFxuICAgIGhvc3Q6IGZhbHNlLFxuICAgIG9wdGlvbmFsOiBmYWxzZSxcbiAgICByZXNvbHZlZDogY29tcGlsZXIuUjNSZXNvbHZlZERlcGVuZGVuY3lUeXBlLlRva2VuLFxuICAgIHNlbGY6IGZhbHNlLFxuICAgIHNraXBTZWxmOiBmYWxzZSxcbiAgfTtcblxuICBmdW5jdGlvbiBzZXRUb2tlbkFuZFJlc29sdmVkVHlwZSh0b2tlbjogYW55KTogdm9pZCB7XG4gICAgbWV0YS5yZXNvbHZlZCA9IGNvbXBpbGVyLlIzUmVzb2x2ZWREZXBlbmRlbmN5VHlwZS5Ub2tlbjtcbiAgICBtZXRhLnRva2VuID0gdG9rZW47XG4gIH1cblxuICBpZiAoQXJyYXkuaXNBcnJheShkZXApICYmIGRlcC5sZW5ndGggPiAwKSB7XG4gICAgZm9yIChsZXQgaiA9IDA7IGogPCBkZXAubGVuZ3RoOyBqKyspIHtcbiAgICAgIGNvbnN0IHBhcmFtID0gZGVwW2pdO1xuICAgICAgaWYgKHBhcmFtID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgLy8gcGFyYW0gbWF5IGJlIHVuZGVmaW5lZCBpZiB0eXBlIG9mIGRlcCBpcyBub3Qgc2V0IGJ5IG5ndHNjXG4gICAgICAgIGNvbnRpbnVlO1xuICAgICAgfVxuXG4gICAgICBjb25zdCBwcm90byA9IE9iamVjdC5nZXRQcm90b3R5cGVPZihwYXJhbSk7XG5cbiAgICAgIGlmIChwYXJhbSBpbnN0YW5jZW9mIE9wdGlvbmFsIHx8IHByb3RvLm5nTWV0YWRhdGFOYW1lID09PSAnT3B0aW9uYWwnKSB7XG4gICAgICAgIG1ldGEub3B0aW9uYWwgPSB0cnVlO1xuICAgICAgfSBlbHNlIGlmIChwYXJhbSBpbnN0YW5jZW9mIFNraXBTZWxmIHx8IHByb3RvLm5nTWV0YWRhdGFOYW1lID09PSAnU2tpcFNlbGYnKSB7XG4gICAgICAgIG1ldGEuc2tpcFNlbGYgPSB0cnVlO1xuICAgICAgfSBlbHNlIGlmIChwYXJhbSBpbnN0YW5jZW9mIFNlbGYgfHwgcHJvdG8ubmdNZXRhZGF0YU5hbWUgPT09ICdTZWxmJykge1xuICAgICAgICBtZXRhLnNlbGYgPSB0cnVlO1xuICAgICAgfSBlbHNlIGlmIChwYXJhbSBpbnN0YW5jZW9mIEhvc3QgfHwgcHJvdG8ubmdNZXRhZGF0YU5hbWUgPT09ICdIb3N0Jykge1xuICAgICAgICBtZXRhLmhvc3QgPSB0cnVlO1xuICAgICAgfSBlbHNlIGlmIChwYXJhbSBpbnN0YW5jZW9mIEluamVjdCkge1xuICAgICAgICBtZXRhLnRva2VuID0gcGFyYW0udG9rZW47XG4gICAgICB9IGVsc2UgaWYgKHBhcmFtIGluc3RhbmNlb2YgQXR0cmlidXRlKSB7XG4gICAgICAgIGlmIChwYXJhbS5hdHRyaWJ1dGVOYW1lID09PSB1bmRlZmluZWQpIHtcbiAgICAgICAgICB0aHJvdyBuZXcgRXJyb3IoYEF0dHJpYnV0ZSBuYW1lIG11c3QgYmUgZGVmaW5lZC5gKTtcbiAgICAgICAgfVxuICAgICAgICBtZXRhLnRva2VuID0gcGFyYW0uYXR0cmlidXRlTmFtZTtcbiAgICAgICAgbWV0YS5yZXNvbHZlZCA9IGNvbXBpbGVyLlIzUmVzb2x2ZWREZXBlbmRlbmN5VHlwZS5BdHRyaWJ1dGU7XG4gICAgICB9IGVsc2UgaWYgKHBhcmFtID09PSBDaGFuZ2VEZXRlY3RvclJlZikge1xuICAgICAgICBtZXRhLnRva2VuID0gcGFyYW07XG4gICAgICAgIG1ldGEucmVzb2x2ZWQgPSBjb21waWxlci5SM1Jlc29sdmVkRGVwZW5kZW5jeVR5cGUuQ2hhbmdlRGV0ZWN0b3JSZWY7XG4gICAgICB9IGVsc2Uge1xuICAgICAgICBzZXRUb2tlbkFuZFJlc29sdmVkVHlwZShwYXJhbSk7XG4gICAgICB9XG4gICAgfVxuICB9IGVsc2UgaWYgKGRlcCA9PT0gdW5kZWZpbmVkIHx8IChBcnJheS5pc0FycmF5KGRlcCkgJiYgZGVwLmxlbmd0aCA9PT0gMCkpIHtcbiAgICBtZXRhLnRva2VuID0gdW5kZWZpbmVkO1xuICAgIG1ldGEucmVzb2x2ZWQgPSBSM1Jlc29sdmVkRGVwZW5kZW5jeVR5cGUuSW52YWxpZDtcbiAgfSBlbHNlIHtcbiAgICBzZXRUb2tlbkFuZFJlc29sdmVkVHlwZShkZXApO1xuICB9XG4gIHJldHVybiBtZXRhO1xufVxuIl19