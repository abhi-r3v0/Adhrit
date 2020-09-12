/**
 * @license
 * Copyright Google LLC All Rights Reserved.
 *
 * Use of this source code is governed by an MIT-style license that can be
 * found in the LICENSE file at https://angular.io/license
 */
import { getCompilerFacade } from '../../compiler/compiler_facade';
import { NG_FACTORY_DEF } from '../../render3/fields';
import { getClosureSafeProperty } from '../../util/property';
import { resolveForwardRef } from '../forward_ref';
import { NG_PROV_DEF, NG_PROV_DEF_FALLBACK } from '../interface/defs';
import { angularCoreDiEnv } from './environment';
import { convertDependencies, reflectDependencies } from './util';
/**
 * Compile an Angular injectable according to its `Injectable` metadata, and patch the resulting
 * injectable def (`ɵprov`) onto the injectable type.
 */
export function compileInjectable(type, srcMeta) {
    let ngInjectableDef = null;
    let ngFactoryDef = null;
    // if NG_PROV_DEF is already defined on this class then don't overwrite it
    if (!type.hasOwnProperty(NG_PROV_DEF)) {
        Object.defineProperty(type, NG_PROV_DEF, {
            get: () => {
                if (ngInjectableDef === null) {
                    ngInjectableDef = getCompilerFacade().compileInjectable(angularCoreDiEnv, `ng:///${type.name}/ɵprov.js`, getInjectableMetadata(type, srcMeta));
                }
                return ngInjectableDef;
            },
        });
        // On IE10 properties defined via `defineProperty` won't be inherited by child classes,
        // which will break inheriting the injectable definition from a grandparent through an
        // undecorated parent class. We work around it by defining a method which should be used
        // as a fallback. This should only be a problem in JIT mode, because in AOT TypeScript
        // seems to have a workaround for static properties. When inheriting from an undecorated
        // parent is no longer supported (v11 or later), this can safely be removed.
        if (!type.hasOwnProperty(NG_PROV_DEF_FALLBACK)) {
            type[NG_PROV_DEF_FALLBACK] = () => type[NG_PROV_DEF];
        }
    }
    // if NG_FACTORY_DEF is already defined on this class then don't overwrite it
    if (!type.hasOwnProperty(NG_FACTORY_DEF)) {
        Object.defineProperty(type, NG_FACTORY_DEF, {
            get: () => {
                if (ngFactoryDef === null) {
                    const metadata = getInjectableMetadata(type, srcMeta);
                    const compiler = getCompilerFacade();
                    ngFactoryDef = compiler.compileFactory(angularCoreDiEnv, `ng:///${type.name}/ɵfac.js`, {
                        name: metadata.name,
                        type: metadata.type,
                        typeArgumentCount: metadata.typeArgumentCount,
                        deps: reflectDependencies(type),
                        injectFn: 'inject',
                        target: compiler.R3FactoryTarget.Injectable
                    });
                }
                return ngFactoryDef;
            },
            // Leave this configurable so that the factories from directives or pipes can take precedence.
            configurable: true
        });
    }
}
const ɵ0 = getClosureSafeProperty;
const USE_VALUE = getClosureSafeProperty({ provide: String, useValue: ɵ0 });
function isUseClassProvider(meta) {
    return meta.useClass !== undefined;
}
function isUseValueProvider(meta) {
    return USE_VALUE in meta;
}
function isUseFactoryProvider(meta) {
    return meta.useFactory !== undefined;
}
function isUseExistingProvider(meta) {
    return meta.useExisting !== undefined;
}
function getInjectableMetadata(type, srcMeta) {
    // Allow the compilation of a class with a `@Injectable()` decorator without parameters
    const meta = srcMeta || { providedIn: null };
    const compilerMeta = {
        name: type.name,
        type: type,
        typeArgumentCount: 0,
        providedIn: meta.providedIn,
        userDeps: undefined,
    };
    if ((isUseClassProvider(meta) || isUseFactoryProvider(meta)) && meta.deps !== undefined) {
        compilerMeta.userDeps = convertDependencies(meta.deps);
    }
    if (isUseClassProvider(meta)) {
        // The user explicitly specified useClass, and may or may not have provided deps.
        compilerMeta.useClass = resolveForwardRef(meta.useClass);
    }
    else if (isUseValueProvider(meta)) {
        // The user explicitly specified useValue.
        compilerMeta.useValue = resolveForwardRef(meta.useValue);
    }
    else if (isUseFactoryProvider(meta)) {
        // The user explicitly specified useFactory.
        compilerMeta.useFactory = meta.useFactory;
    }
    else if (isUseExistingProvider(meta)) {
        // The user explicitly specified useExisting.
        compilerMeta.useExisting = resolveForwardRef(meta.useExisting);
    }
    return compilerMeta;
}
export { ɵ0 };
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5qZWN0YWJsZS5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzIjpbIi4uLy4uLy4uLy4uLy4uLy4uLy4uLy4uL3BhY2thZ2VzL2NvcmUvc3JjL2RpL2ppdC9pbmplY3RhYmxlLnRzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBOzs7Ozs7R0FNRztBQUVILE9BQU8sRUFBQyxpQkFBaUIsRUFBNkIsTUFBTSxnQ0FBZ0MsQ0FBQztBQUU3RixPQUFPLEVBQUMsY0FBYyxFQUFDLE1BQU0sc0JBQXNCLENBQUM7QUFDcEQsT0FBTyxFQUFDLHNCQUFzQixFQUFDLE1BQU0scUJBQXFCLENBQUM7QUFDM0QsT0FBTyxFQUFDLGlCQUFpQixFQUFDLE1BQU0sZ0JBQWdCLENBQUM7QUFFakQsT0FBTyxFQUFDLFdBQVcsRUFBRSxvQkFBb0IsRUFBQyxNQUFNLG1CQUFtQixDQUFDO0FBR3BFLE9BQU8sRUFBQyxnQkFBZ0IsRUFBQyxNQUFNLGVBQWUsQ0FBQztBQUMvQyxPQUFPLEVBQUMsbUJBQW1CLEVBQUUsbUJBQW1CLEVBQUMsTUFBTSxRQUFRLENBQUM7QUFJaEU7OztHQUdHO0FBQ0gsTUFBTSxVQUFVLGlCQUFpQixDQUFDLElBQWUsRUFBRSxPQUFvQjtJQUNyRSxJQUFJLGVBQWUsR0FBUSxJQUFJLENBQUM7SUFDaEMsSUFBSSxZQUFZLEdBQVEsSUFBSSxDQUFDO0lBRTdCLDBFQUEwRTtJQUMxRSxJQUFJLENBQUMsSUFBSSxDQUFDLGNBQWMsQ0FBQyxXQUFXLENBQUMsRUFBRTtRQUNyQyxNQUFNLENBQUMsY0FBYyxDQUFDLElBQUksRUFBRSxXQUFXLEVBQUU7WUFDdkMsR0FBRyxFQUFFLEdBQUcsRUFBRTtnQkFDUixJQUFJLGVBQWUsS0FBSyxJQUFJLEVBQUU7b0JBQzVCLGVBQWUsR0FBRyxpQkFBaUIsRUFBRSxDQUFDLGlCQUFpQixDQUNuRCxnQkFBZ0IsRUFBRSxTQUFTLElBQUksQ0FBQyxJQUFJLFdBQVcsRUFDL0MscUJBQXFCLENBQUMsSUFBSSxFQUFFLE9BQU8s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eEQ7SUFDRCxJQUFJLGtCQUFrQixDQUFDLElBQUksQ0FBQyxFQUFFO1FBQzVCLGlGQUFpRjtRQUNqRixZQUFZLENBQUMsUUFBUSxHQUFHLGlCQUFpQixDQUFDLElBQUksQ0FBQyxRQUFRLENBQUMsQ0FBQztLQUMxRDtTQUFNLElBQUksa0JBQWtCLENBQUMsSUFBSSxDQUFDLEVBQUU7UUFDbkMsMENBQTBDO1FBQzFDLFlBQVksQ0FBQyxRQUFRLEdBQUcsaUJBQWlCLENBQUMsSUFBSSxDQUFDLFFBQVEsQ0FBQyxDQUFDO0tBQzFEO1NBQU0sSUFBSSxvQkFBb0IsQ0FBQyxJQUFJLENBQUMsRUFBRTtRQUNyQyw0Q0FBNEM7UUFDNUMsWUFBWSxDQUFDLFVBQVUsR0FBRyxJQUFJLENBQUMsVUFBVSxDQUFDO0tBQzNDO1NBQU0sSUFBSSxxQkFBcUIsQ0FBQyxJQUFJLENBQUMsRUFBRTtRQUN0Qyw2Q0FBNkM7UUFDN0MsWUFBWSxDQUFDLFdBQVcsR0FBRyxpQkFBaUIsQ0FBQyxJQUFJLENBQUMsV0FBVyxDQUFDLENBQUM7S0FDaEU7SUFDRCxPQUFPLFlBQVksQ0FBQztBQUN0QixDQUFDIiwic291cmNlc0NvbnRlbnQiOlsiLyoqXG4gKiBAbGljZW5zZVxuICogQ29weXJpZ2h0IEdvb2dsZSBMTEMgQWxsIFJpZ2h0cyBSZXNlcnZlZC5cbiAqXG4gKiBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhbiBNSVQtc3R5bGUgbGljZW5zZSB0aGF0IGNhbiBiZVxuICogZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZSBhdCBodHRwczovL2FuZ3VsYXIuaW8vbGljZW5zZVxuICovXG5cbmltcG9ydCB7Z2V0Q29tcGlsZXJGYWNhZGUsIFIzSW5qZWN0YWJsZU1ldGFkYXRhRmFjYWRlfSBmcm9tICcuLi8uLi9jb21waWxlci9jb21waWxlcl9mYWNhZGUnO1xuaW1wb3J0IHtUeXBlfSBmcm9tICcuLi8uLi9pbnRlcmZhY2UvdHlwZSc7XG5pbXBvcnQge05HX0ZBQ1RPUllfREVGfSBmcm9tICcuLi8uLi9yZW5kZXIzL2ZpZWxkcyc7XG5pbXBvcnQge2dldENsb3N1cmVTYWZlUHJvcGVydHl9IGZyb20gJy4uLy4uL3V0aWwvcHJvcGVydHknO1xuaW1wb3J0IHtyZXNvbHZlRm9yd2FyZFJlZn0gZnJvbSAnLi4vZm9yd2FyZF9yZWYnO1xuaW1wb3J0IHtJbmplY3RhYmxlfSBmcm9tICcuLi9pbmplY3RhYmxlJztcbmltcG9ydCB7TkdfUFJPVl9ERUYsIE5HX1BST1ZfREVGX0ZBTExCQUNLfSBmcm9tICcuLi9pbnRlcmZhY2UvZGVmcyc7XG5pbXBvcnQge0NsYXNzU2Fuc1Byb3ZpZGVyLCBFeGlzdGluZ1NhbnNQcm92aWRlciwgRmFjdG9yeVNhbnNQcm92aWRlciwgVmFsdWVQcm92aWRlciwgVmFsdWVTYW5zUHJvdmlkZXJ9IGZyb20gJy4uL2ludGVyZmFjZS9wcm92aWRlcic7XG5cbmltcG9ydCB7YW5ndWxhckNvcmVEaUVudn0gZnJvbSAnLi9lbnZpcm9ubWVudCc7XG5pbXBvcnQge2NvbnZlcnREZXBlbmRlbmNpZXMsIHJlZmxlY3REZXBlbmRlbmNpZXN9IGZyb20gJy4vdXRpbCc7XG5cblxuXG4vKipcbiAqIENvbXBpbGUgYW4gQW5ndWxhciBpbmplY3RhYmxlIGFjY29yZGluZyB0byBpdHMgYEluamVjdGFibGVgIG1ldGFkYXRhLCBhbmQgcGF0Y2ggdGhlIHJlc3VsdGluZ1xuICogaW5qZWN0YWJsZSBkZWYgKGDJtXByb3ZgKSBvbnRvIHRoZSBpbmplY3RhYmxlIHR5cGUuXG4gKi9cbmV4cG9ydCBmdW5jdGlvbiBjb21waWxlSW5qZWN0YWJsZSh0eXBlOiBUeXBlPGFueT4sIHNyY01ldGE/OiBJbmplY3RhYmxlKTogdm9pZCB7XG4gIGxldCBuZ0luamVjdGFibGVEZWY6IGFueSA9IG51bGw7XG4gIGxldCBuZ0ZhY3RvcnlEZWY6IGFueSA9IG51bGw7XG5cbiAgLy8gaWYgTkdfUFJPVl9ERUYgaXMgYWxyZWFkeSBkZWZpbmVkIG9uIHRoaXMgY2xhc3MgdGhlbiBkb24ndCBvdmVyd3JpdGUgaXRcbiAgaWYgKCF0eXBlLmhhc093blByb3BlcnR5KE5HX1BST1ZfREVGKSkge1xuICAgIE9iamVjdC5kZWZpbmVQcm9wZXJ0eSh0eXBlLCBOR19QUk9WX0RFRiwge1xuICAgICAgZ2V0OiAoKSA9PiB7XG4gICAgICAgIGlmIChuZ0luamVjdGFibGVEZWYgPT09IG51bGwpIHtcbiAgICAgICAgICBuZ0luamVjdGFibGVEZWYgPSBnZXRDb21waWxlckZhY2FkZSgpLmNvbXBpbGVJbmplY3RhYmxlKFxuICAgICAgICAgICAgICBhbmd1bGFyQ29yZURpRW52LCBgbmc6Ly8vJHt0eXBlLm5hbWV9L8m1cHJvdi5qc2AsXG4gICAgICAgICAgICAgIGdldEluamVjdGFibGVNZXRhZGF0YSh0eXBlLCBzcmNNZXRhKSk7XG4gICAgICAgIH1cbiAgICAgICAgcmV0dXJuIG5nSW5qZWN0YWJsZURlZjtcbiAgICAgIH0sXG4gICAgfSk7XG5cbiAgICAvLyBPbiBJRTEwIHByb3BlcnRpZXMgZGVmaW5lZCB2aWEgYGRlZmluZVByb3BlcnR5YCB3b24ndCBiZSBpbmhlcml0ZWQgYnkgY2hpbGQgY2xhc3NlcyxcbiAgICAvLyB3aGljaCB3aWxsIGJyZWFrIGluaGVyaXRpbmcgdGhlIGluamVjdGFibGUgZGVmaW5pdGlvbiBmcm9tIGEgZ3JhbmRwYXJlbnQgdGhyb3VnaCBhblxuICAgIC8vIHVuZGVjb3JhdGVkIHBhcmVudCBjbGFzcy4gV2Ugd29yayBhcm91bmQgaXQgYnkgZGVmaW5pbmcgYSBtZXRob2Qgd2hpY2ggc2hvdWxkIGJlIHVzZWRcbiAgICAvLyBhcyBhIGZhbGxiYWNrLiBUaGlzIHNob3VsZCBvbmx5IGJlIGEgcHJvYmxlbSBpbiBKSVQgbW9kZSwgYmVjYXVzZSBpbiBBT1QgVHlwZVNjcmlwdFxuICAgIC8vIHNlZW1zIHRvIGhhdmUgYSB3b3JrYXJvdW5kIGZvciBzdGF0aWMgcHJvcGVydGllcy4gV2hlbiBpbmhlcml0aW5nIGZyb20gYW4gdW5kZWNvcmF0ZWRcbiAgICAvLyBwYXJlbnQgaXMgbm8gbG9uZ2VyIHN1cHBvcnRlZCAodjExIG9yIGxhdGVyKSwgdGhpcyBjYW4gc2FmZWx5IGJlIHJlbW92ZWQuXG4gICAgaWYgKCF0eXBlLmhhc093blByb3BlcnR5KE5HX1BST1ZfREVGX0ZBTExCQUNLKSkge1xuICAgICAgKHR5cGUgYXMgYW55KVtOR19QUk9WX0RFRl9GQUxMQkFDS10gPSAoKSA9PiAodHlwZSBhcyBhbnkpW05HX1BST1ZfREVGXTtcbiAgICB9XG4gIH1cblxuICAvLyBpZiBOR19GQUNUT1JZX0RFRiBpcyBhbHJlYWR5IGRlZmluZWQgb24gdGhpcyBjbGFzcyB0aGVuIGRvbid0IG92ZXJ3cml0ZSBpdFxuICBpZiAoIXR5cGUuaGFzT3duUHJvcGVydHkoTkdfRkFDVE9SWV9ERUYpKSB7XG4gICAgT2JqZWN0LmRlZmluZVByb3BlcnR5KHR5cGUsIE5HX0ZBQ1RPUllfREVGLCB7XG4gICAgICBnZXQ6ICgpID0+IHtcbiAgICAgICAgaWYgKG5nRmFjdG9yeURlZiA9PT0gbnVsbCkge1xuICAgICAgICAgIGNvbnN0IG1ldGFkYXRhID0gZ2V0SW5qZWN0YWJsZU1ldGFkYXRhKHR5cGUsIHNyY01ldGEpO1xuICAgICAgICAgIGNvbnN0IGNvbXBpbGVyID0gZ2V0Q29tcGlsZXJGYWNhZGUoKTtcbiAgICAgICAgICBuZ0ZhY3RvcnlEZWYgPSBjb21waWxlci5jb21waWxlRmFjdG9yeShhbmd1bGFyQ29yZURpRW52LCBgbmc6Ly8vJHt0eXBlLm5hbWV9L8m1ZmFjLmpzYCwge1xuICAgICAgICAgICAgbmFtZTogbWV0YWRhdGEubmFtZSxcbiAgICAgICAgICAgIHR5cGU6IG1ldGFkYXRhLnR5cGUsXG4gICAgICAgICAgICB0eXBlQXJndW1lbnRDb3VudDogbWV0YWRhdGEudHlwZUFyZ3VtZW50Q291bnQsXG4gICAgICAgICAgICBkZXBzOiByZWZsZWN0RGVwZW5kZW5jaWVzKHR5cGUpLFxuICAgICAgICAgICAgaW5qZWN0Rm46ICdpbmplY3QnLFxuICAgICAgICAgICAgdGFyZ2V0OiBjb21waWxlci5SM0ZhY3RvcnlUYXJnZXQuSW5qZWN0YWJsZVxuICAgICAgICAgIH0pO1xuICAgICAgICB9XG4gICAgICAgIHJldHVybiBuZ0ZhY3RvcnlEZWY7XG4gICAgICB9LFxuICAgICAgLy8gTGVhdmUgdGhpcyBjb25maWd1cmFibGUgc28gdGhhdCB0aGUgZmFjdG9yaWVzIGZyb20gZGlyZWN0aXZlcyBvciBwaXBlcyBjYW4gdGFrZSBwcmVjZWRlbmNlLlxuICAgICAgY29uZmlndXJhYmxlOiB0cnVlXG4gICAgfSk7XG4gIH1cbn1cblxudHlwZSBVc2VDbGFzc1Byb3ZpZGVyID0gSW5qZWN0YWJsZSZDbGFzc1NhbnNQcm92aWRlciZ7ZGVwcz86IGFueVtdfTtcblxuY29uc3QgVVNFX1ZBTFVFID1cbiAgICBnZXRDbG9zdXJlU2FmZVByb3BlcnR5PFZhbHVlUHJvdmlkZXI+KHtwcm92aWRlOiBTdHJpbmcsIHVzZVZhbHVlOiBnZXRDbG9zdXJlU2FmZVByb3BlcnR5fSk7XG5cbmZ1bmN0aW9uIGlzVXNlQ2xhc3NQcm92aWRlcihtZXRhOiBJbmplY3RhYmxlKTogbWV0YSBpcyBVc2VDbGFzc1Byb3ZpZGVyIHtcbiAgcmV0dXJuIChtZXRhIGFzIFVzZUNsYXNzUHJvdmlkZXIpLnVzZUNsYXNzICE9PSB1bmRlZmluZWQ7XG59XG5cbmZ1bmN0aW9uIGlzVXNlVmFsdWVQcm92aWRlcihtZXRhOiBJbmplY3RhYmxlKTogbWV0YSBpcyBJbmplY3RhYmxlJlZhbHVlU2Fuc1Byb3ZpZGVyIHtcbiAgcmV0dXJuIFVTRV9WQUxVRSBpbiBtZXRhO1xufVxuXG5mdW5jdGlvbiBpc1VzZUZhY3RvcnlQcm92aWRlcihtZXRhOiBJbmplY3RhYmxlKTogbWV0YSBpcyBJbmplY3RhYmxlJkZhY3RvcnlTYW5zUHJvdmlkZXIge1xuICByZXR1cm4gKG1ldGEgYXMgRmFjdG9yeVNhbnNQcm92aWRlcikudXNlRmFjdG9yeSAhPT0gdW5kZWZpbmVkO1xufVxuXG5mdW5jdGlvbiBpc1VzZUV4aXN0aW5nUHJvdmlkZXIobWV0YTogSW5qZWN0YWJsZSk6IG1ldGEgaXMgSW5qZWN0YWJsZSZFeGlzdGluZ1NhbnNQcm92aWRlciB7XG4gIHJldHVybiAobWV0YSBhcyBFeGlzdGluZ1NhbnNQcm92aWRlcikudXNlRXhpc3RpbmcgIT09IHVuZGVmaW5lZDtcbn1cblxuZnVuY3Rpb24gZ2V0SW5qZWN0YWJsZU1ldGFkYXRhKHR5cGU6IFR5cGU8YW55Piwgc3JjTWV0YT86IEluamVjdGFibGUpOiBSM0luamVjdGFibGVNZXRhZGF0YUZhY2FkZSB7XG4gIC8vIEFsbG93IHRoZSBjb21waWxhdGlvbiBvZiBhIGNsYXNzIHdpdGggYSBgQEluamVjdGFibGUoKWAgZGVjb3JhdG9yIHdpdGhvdXQgcGFyYW1ldGVyc1xuICBjb25zdCBtZXRhOiBJbmplY3RhYmxlID0gc3JjTWV0YSB8fCB7cHJvdmlkZWRJbjogbnVsbH07XG4gIGNvbnN0IGNvbXBpbGVyTWV0YTogUjNJbmplY3RhYmxlTWV0YWRhdGFGYWNhZGUgPSB7XG4gICAgbmFtZTogdHlwZS5uYW1lLFxuICAgIHR5cGU6IHR5cGUsXG4gICAgdHlwZUFyZ3VtZW50Q291bnQ6IDAsXG4gICAgcHJvdmlkZWRJbjogbWV0YS5wcm92aWRlZEluLFxuICAgIHVzZXJEZXBzOiB1bmRlZmluZWQsXG4gIH07XG4gIGlmICgoaXNVc2VDbGFzc1Byb3ZpZGVyKG1ldGEpIHx8IGlzVXNlRmFjdG9yeVByb3ZpZGVyKG1ldGEpKSAmJiBtZXRhLmRlcHMgIT09IHVuZGVmaW5lZCkge1xuICAgIGNvbXBpbGVyTWV0YS51c2VyRGVwcyA9IGNvbnZlcnREZXBlbmRlbmNpZXMobWV0YS5kZXBzKTtcbiAgfVxuICBpZiAoaXNVc2VDbGFzc1Byb3ZpZGVyKG1ldGEpKSB7XG4gICAgLy8gVGhlIHVzZXIgZXhwbGljaXRseSBzcGVjaWZpZWQgdXNlQ2xhc3MsIGFuZCBtYXkgb3IgbWF5IG5vdCBoYXZlIHByb3ZpZGVkIGRlcHMuXG4gICAgY29tcGlsZXJNZXRhLnVzZUNsYXNzID0gcmVzb2x2ZUZvcndhcmRSZWYobWV0YS51c2VDbGFzcyk7XG4gIH0gZWxzZSBpZiAoaXNVc2VWYWx1ZVByb3ZpZGVyKG1ldGEpKSB7XG4gICAgLy8gVGhlIHVzZXIgZXhwbGljaXRseSBzcGVjaWZpZWQgdXNlVmFsdWUuXG4gICAgY29tcGlsZXJNZXRhLnVzZVZhbHVlID0gcmVzb2x2ZUZvcndhcmRSZWYobWV0YS51c2VWYWx1ZSk7XG4gIH0gZWxzZSBpZiAoaXNVc2VGYWN0b3J5UHJvdmlkZXIobWV0YSkpIHtcbiAgICAvLyBUaGUgdXNlciBleHBsaWNpdGx5IHNwZWNpZmllZCB1c2VGYWN0b3J5LlxuICAgIGNvbXBpbGVyTWV0YS51c2VGYWN0b3J5ID0gbWV0YS51c2VGYWN0b3J5O1xuICB9IGVsc2UgaWYgKGlzVXNlRXhpc3RpbmdQcm92aWRlcihtZXRhKSkge1xuICAgIC8vIFRoZSB1c2VyIGV4cGxpY2l0bHkgc3BlY2lmaWVkIHVzZUV4aXN0aW5nLlxuICAgIGNvbXBpbGVyTWV0YS51c2VFeGlzdGluZyA9IHJlc29sdmVGb3J3YXJkUmVmKG1ldGEudXNlRXhpc3RpbmcpO1xuICB9XG4gIHJldHVybiBjb21waWxlck1ldGE7XG59XG4iXX0=